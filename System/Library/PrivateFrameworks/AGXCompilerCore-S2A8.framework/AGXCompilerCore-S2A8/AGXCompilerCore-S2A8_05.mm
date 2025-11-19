uint64_t sub_23C4FF150(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[1];
  v4 = *(a1 + 832);
  if (v4)
  {
    sub_23C4B1570(*(v4 + 8));
    MEMORY[0x23EED50C0](v4, 0x1020C4062D53EE8);
  }

  v5 = *(a1 + 2304);
  if (v5 != (a1 + 2320))
  {
    free(v5);
  }

  sub_23C4ED8D0(a1 + 2232);
  v6 = *(a1 + 2224);
  v7 = *(a1 + 2208);
  if (v6)
  {
    v48 = 2;
    v49 = 0;
    v50 = -4096;
    v51 = 0;
    v46 = 0;
    v47 = &unk_284F1B7B0;
    v43 = 2;
    v44 = 0;
    v45 = -8192;
    v8 = (v7 + 24);
    v9 = 48 * v6;
    do
    {
      v10 = *v8;
      if (*v8 != -8192 && v10 != -4096 && v10 != 0)
      {
        llvm::ValueHandleBase::RemoveFromUseList((v8 - 2));
      }

      v8 += 6;
      v9 -= 48;
    }

    while (v9);
    v7 = *(a1 + 2208);
    v12 = 48 * *(a1 + 2224);
  }

  else
  {
    v12 = 0;
  }

  llvm::deallocate_buffer(v7, v12);
  sub_23C4B1570(*(a1 + 2192));
  v13 = *(a1 + 2152);
  v14 = *(a1 + 2160);
  if (v14)
  {
    v15 = -8 * v14;
    v16 = &v13[8 * v14 - 8];
    do
    {
      v16 = sub_23C4FF644(v16) - 1;
      v15 += 8;
    }

    while (v15);
    v13 = *(a1 + 2152);
  }

  if (v13 != (a1 + 2168))
  {
    free(v13);
  }

  sub_23C4F0F88(a1 + 2112);
  sub_23C4F0F88(a1 + 2064);
  sub_23C4F0F88(a1 + 2016);
  sub_23C4F0F88(a1 + 1968);
  for (i = 0; i != -72; i -= 24)
  {
    v18 = *(a1 + i + 1952);
    if (v18 != -8192 && v18 != -4096 && v18 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList((a1 + i + 1936));
    }
  }

  for (j = 0; j != -168; j -= 56)
  {
    v21 = *(a1 + j + 1840);
    if (v21 != -8192 && v21 != -4096 && v21 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList((a1 + j + 1824));
    }
  }

  for (k = 0; k != -168; k -= 56)
  {
    v24 = *(a1 + k + 1672);
    if (v24 != -8192 && v24 != -4096 && v24 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList((a1 + k + 1656));
    }
  }

  for (m = 0; m != -560; m -= 56)
  {
    v27 = *(a1 + m + 1504);
    if (v27 != -8192 && v27 != -4096 && v27 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList((a1 + m + 1488));
    }
  }

  v29 = *(a1 + 896);
  if (v29 != *(a1 + 888))
  {
    free(v29);
  }

  sub_23C4B1570(*(a1 + 872));
  sub_23C4B1570(*(a1 + 848));
  v30 = *(a1 + 808);
  if (v30)
  {
    *(a1 + 816) = v30;
    operator delete(v30);
  }

  v31 = *(a1 + 784);
  if (v31)
  {
    *(a1 + 792) = v31;
    operator delete(v31);
  }

  sub_23C4ED864(*(a1 + 768));
  sub_23C4ED8D0(a1 + 720);
  sub_23C4EE154(a1 + 696);
  llvm::deallocate_buffer(*(a1 + 696), (48 * *(a1 + 712)));
  sub_23C4ED8D0(a1 + 656);
  v32 = *(a1 + 648);
  v33 = *(a1 + 632);
  if (v32)
  {
    v48 = 2;
    v49 = 0;
    v50 = -4096;
    v51 = 0;
    v46 = 0;
    v47 = &unk_284F1B800;
    v43 = 2;
    v44 = 0;
    v45 = -8192;
    v34 = (v33 + 24);
    v35 = 48 * v32;
    do
    {
      v36 = *v34;
      if (*v34 != -8192 && v36 != -4096 && v36 != 0)
      {
        llvm::ValueHandleBase::RemoveFromUseList((v34 - 2));
      }

      v34 += 6;
      v35 -= 48;
    }

    while (v35);
    if (v45 != -8192 && v45 != -4096 && v45 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(&v43);
    }

    if (v50 != -8192 && v50 != -4096 && v50)
    {
      llvm::ValueHandleBase::RemoveFromUseList(&v48);
    }

    v33 = *(a1 + 632);
    v39 = 48 * *(a1 + 648);
  }

  else
  {
    v39 = 0;
  }

  llvm::deallocate_buffer(v33, v39);
  v40 = *(a1 + 600);
  if (v40 != (a1 + 616))
  {
    free(v40);
  }

  MEMORY[0x23EED3B70](a1 + 168);
  v41 = *(a1 + 72);
  if (v41 != (a1 + 88))
  {
    free(v41);
  }

  return a1;
}

uint64_t *sub_23C4FF644(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 80);
    if (v3)
    {
      do
      {
        v4 = *v3;
        v5 = v3[4];
        v6 = *(v3 + 10);
        if (v6)
        {
          v7 = 8 * v6;
          v8 = (v5 - 1);
          do
          {
            v9 = *&v8[v7];
            *&v8[v7] = 0;
            if (v9)
            {
              MEMORY[0x23EED50C0](v9, 0x1000C4052888210);
            }

            v7 -= 8;
          }

          while (v7);
          v5 = v3[4];
        }

        if (v5 != v3 + 6)
        {
          free(v5);
        }

        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    v10 = *(v2 + 64);
    *(v2 + 64) = 0;
    if (v10)
    {
      operator delete(v10);
    }

    MEMORY[0x23EED50C0](v2, 0x10A0C40DDA12C90);
  }

  return a1;
}

uint64_t sub_23C4FF724(uint64_t a1, uint64_t *a2, unsigned int a3, uint64_t a4, unsigned int a5)
{
  v56[5] = *MEMORY[0x277D85DE8];
  v48 = 1;
  v49 = a3;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v8 = *(*a2 + 8);
  if ((v8 & 0xFE) == 0x12)
  {
    v8 = *(**(*a2 + 16) + 8);
  }

  sub_23C5075AC(a4, v8 >> 8, &v49, &v48, &v47 + 1, &v47, &v45, &v46, &v44);
  v9 = v46;
  *(a1 + 2384) |= v46;
  if (a5 != -1)
  {
    v49 = a5;
  }

  if (v44 == 1)
  {
    v26 = **(*a2 + 16);
    v27 = ((*(a1 + 2272) >> v49) & 1) == 0;
    operator new();
  }

  v10 = **(*a2 + 16);
  if (*(v10 + 8) == 15)
  {
    v11 = v48;
    v12 = llvm::ArrayType::get(v10, v48);
    v13 = v49;
    __p[0] = "agc.buffer_pointers_array.";
    *&v51 = v49;
    LOWORD(v52) = 2051;
    result = sub_23C4ED494(a1, v12, __p, v49, 0);
    v15 = result;
    v16 = *(a1 + 832);
    if (!v16)
    {
      operator new();
    }

    v17 = *(v16 + 8);
    if (!v17)
    {
LABEL_26:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v18 = v17;
        v19 = *(v17 + 7);
        if (v13 >= v19)
        {
          break;
        }

        v17 = *v18;
        if (!*v18)
        {
          goto LABEL_26;
        }
      }

      if (v19 >= v13)
      {
        break;
      }

      v17 = v18[1];
      if (!v17)
      {
        goto LABEL_26;
      }
    }

    *(v18 + 8) = v11;
    v28 = a2[1];
    if (v28)
    {
      v29 = a1 + 8;
      do
      {
        while (1)
        {
          v30 = *(v28 + 24);
          v28 = *(v28 + 8);
          sub_23C4C30FC(v29 + *(*a1 - 24), v30);
          if (*(v30 + 16) != 60)
          {
            break;
          }

          v32 = v29 + *(*a1 - 24);
          v55 = 257;
          llvm::Type::getInt32Ty(*(v32 + 64), v31);
          v56[0] = llvm::ConstantInt::get();
          llvm::Type::getInt32Ty(*(v32 + 64), v33);
          v56[1] = llvm::ConstantInt::get();
          v34 = (*(**(v32 + 72) + 48))(*(v32 + 72), 0, v15, v56, 2, 0);
          if (!v34)
          {
            LOWORD(v52) = 257;
            v34 = sub_23C49AFDC(0, v15, v56, 2);
            sub_23C49B15C(v32, v34, &v53);
          }

          v35 = *(*a1 - 24);
          LOWORD(v52) = 257;
          sub_23C497C88((v29 + v35), **(*v34 + 16), v34, 0, __p);
          llvm::Value::replaceAllUsesWith();
          result = llvm::Instruction::eraseFromParent(v30);
          if (!v28)
          {
            goto LABEL_37;
          }
        }

        v54 = 0;
        v53 = 0;
        v36 = *(a1 + 192 + *(*a1 - 24));
        v53 = llvm::ConstantInt::get();
        v54 = *(v30 - 32 * (*(v30 + 20) & 0x7FFFFFF) + 32);
        v37 = *(*a1 - 24);
        LOWORD(v52) = 257;
        v38 = sub_23C4ED3A0(a1 + v37, v15, &v53, 2, __p);
        v39 = *(*a1 - 24);
        LOWORD(v52) = 257;
        sub_23C497C88((v29 + v39), **(*v38 + 16), v38, 0, __p);
        v40 = *(v30 + 8);
        if (v40)
        {
          do
          {
            v41 = *(v40 + 8);
            v42 = *(v40 + 24);
            llvm::Value::replaceAllUsesWith();
            llvm::Instruction::eraseFromParent(v42);
            v40 = v41;
          }

          while (v41);
        }

        result = llvm::Instruction::eraseFromParent(v30);
      }

      while (v28);
    }

LABEL_37:
    v43 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v20 = v49;
    (*(*a1 + 216))(a1, a2, v49, 0xFFFFFFFFLL);
    v21 = *(*(a1 + 160) + 80);
    if (v21)
    {
      v22 = v21 - 24;
    }

    else
    {
      v22 = 0;
    }

    v23 = *(v22 + 40);
    if (v23)
    {
      v24 = v23 - 24;
    }

    else
    {
      v24 = 0;
    }

    sub_23C4C30FC(a1 + *(*a1 - 24) + 8, v24);
    sub_23C4FA868(a1, *a2, v20, 0xFFFFFFFF, SHIDWORD(v47), -(v9 ^ 1));
    v25 = *MEMORY[0x277D85DE8];

    return llvm::Value::replaceAllUsesWith();
  }

  return result;
}

uint64_t sub_23C500DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v12 = *(a4 + 8);
  if (v12)
  {
    v13 = 8 * v12;
    v14 = *a4;
    while (*v14 != a3)
    {
      ++v14;
      v13 -= 8;
      if (!v13)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v14 = *a4;
  }

  if (v14 != (*a4 + 8 * v12))
  {
    return 0;
  }

LABEL_9:
  sub_23C49B500(a4, a3);
  v16 = *(a3 + 8);
  if (!v16)
  {
LABEL_41:
    result = 0;
    goto LABEL_42;
  }

  v17 = 0;
  do
  {
    v18 = *(v16 + 24);
    v19 = v18[16];
    if (v18 && v19 == 61)
    {
      v20 = *(v18 - 8);
      if (*(*v20 + 8) != 15 && (a5 & 1) == 0 && v20[16] != 75)
      {
        LOBYTE(v19) = 61;
LABEL_29:
        v22 = (((v19 - 75) >> 1) | ((v19 - 75) << 7));
        v23 = v22 > 5;
        v24 = (1 << v22) & 0x33;
        if (v23 || v24 == 0)
        {
          *a6 |= a5 ^ 1;
        }

        else
        {
          v17 = sub_23C500DF8(a1, a2, v18, a4, a5, a6);
        }

        goto LABEL_34;
      }
    }

    else
    {
      if (!v18 || v19 != 60)
      {
        goto LABEL_29;
      }

      if (*(*v18 + 8) != 15 && a5 == 0)
      {
        LOBYTE(v19) = 60;
        goto LABEL_29;
      }

      if ((sub_23C500DF8(a1, a2, *(v16 + 24), a4, a5, a6) & 1) == 0)
      {
        LOBYTE(v19) = v18[16];
        goto LABEL_29;
      }
    }

    if ((a5 & 1) == 0)
    {
      *sub_23C501008(a1 + 2208, v18) = a2;
    }

    v17 = 1;
LABEL_34:
    v16 = *(v16 + 8);
  }

  while (v16);
  if ((v17 & 1) == 0)
  {
    goto LABEL_41;
  }

  if (*(a3 + 16) == 62)
  {
    *sub_23C501008(a1 + 2208, a3) = a2;
  }

  result = 1;
LABEL_42:
  --*(a4 + 8);
  return result;
}

void *sub_23C501008(uint64_t a1, uint64_t a2)
{
  sub_23C4EDC2C(&v7, a2);
  v7 = &unk_284F1B7B0;
  v10 = a1;
  v11 = 0;
  v3 = sub_23C4FB49C(*a1, *(a1 + 16), v9, &v11);
  v4 = v11;
  if ((v3 & 1) == 0)
  {
    v4 = sub_23C4FB534(a1, &v7, v11);
    sub_23C4DDEAC((v4 + 1), v8);
    v4[4] = v10;
    v4[5] = 0;
  }

  if (v9 != -8192 && v9 != -4096 && v9 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  return v4 + 5;
}

uint64_t sub_23C5010D0(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v3);
  }

  sub_23C4F3D38();
  return sub_23C501120();
}

void sub_23C501120(uint64_t a1, int **a2)
{
  v49[8] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(a1 + 16);
  v5 = **a2;
  if ((v5 - 3) >= 0xFFFFFFFE)
  {
    sub_23C49B500(*(a1 + 8), 0);
    v8 = v3[4];
    if (v8)
    {
      for (i = 0; i < v8; ++i)
      {
        if (*(*(v3 + 1) + 8 * i))
        {
          v10 = *(v4 + *(*v4 - 24) + 192);
          *(**(a1 + 8) + 8 * *(*(a1 + 8) + 8) - 8) = llvm::ConstantInt::get();
          sub_23C5010D0(*(*(a1 + 24) + 24), *(*(v3 + 1) + 8 * i));
          v8 = v3[4];
        }
      }
    }

LABEL_22:
    --*(*(a1 + 8) + 8);
    goto LABEL_23;
  }

  if (v5 <= 3)
  {
    if (v5)
    {
      if (v5 != 3)
      {
        goto LABEL_23;
      }

      sub_23C49B500(*(a1 + 8), 0);
      if (v3[4])
      {
        v6 = 0;
        do
        {
          v7 = *(v4 + *(*v4 - 24) + 192);
          *(**(a1 + 8) + 8 * *(*(a1 + 8) + 8) - 8) = llvm::ConstantInt::get();
          sub_23C5010D0(*(*(a1 + 24) + 24), *(v3 + 1));
          ++v6;
        }

        while (v6 < v3[4]);
      }
    }

    else
    {
      v19 = *(a1 + 8);
      v20 = *(v4 + *(*v4 - 24) + 192);
      v21 = llvm::ConstantInt::get();
      sub_23C49B500(v19, v21);
      sub_23C5010D0(*(*(a1 + 24) + 24), *(v3 + 1));
    }

    goto LABEL_22;
  }

  if (v5 != 4)
  {
    if (v5 != 5 || *(v3 + 244) != 1)
    {
      goto LABEL_23;
    }

    v11 = v3[60];
    v12 = *(**(a1 + 32) + 72);
    v13 = *(a1 + 8);
    v14 = *v13;
    v15 = *(v13 + 2);
    IndexedOffsetInType = llvm::DataLayout::getIndexedOffsetInType();
    v17 = *(a1 + 40);
    v18 = *MEMORY[0x277D85DE8];

    sub_23C49786C(v17, v11 | (IndexedOffsetInType << 32), 8);
    return;
  }

  v23 = *(**(a1 + 32) + 72);
  v24 = *(a1 + 8);
  v25 = *v24;
  v26 = *(v24 + 2);
  v27 = llvm::DataLayout::getIndexedOffsetInType() << 32;
  if (*(v3 + 268) == 1)
  {
    v27 |= v3[66];
    sub_23C49786C(*(a1 + 40), v27, 8);
  }

  v28 = *(v3 + 30);
  if (!v28)
  {
    v38 = 0;
    v39 = 0u;
    *__p = 0u;
    v41 = 1065353216;
    goto LABEL_63;
  }

  v47 = v49;
  v48 = 0x800000000;
  v42 = v46;
  v43 = v46;
  v44 = 8;
  v45 = 0;
  v39 = 0u;
  *__p = 0u;
  v41 = 1065353216;
LABEL_28:
  sub_23C49B500(&v47, v28);
  while (v48)
  {
    v29 = *(v47 + v48 - 1);
    LODWORD(v48) = v48 - 1;
    v30 = *v29;
    if (*v29 == 2)
    {
      sub_23C4F493C(&v42, v29);
      if (v31)
      {
        v30 = *v29;
        goto LABEL_33;
      }
    }

    else
    {
LABEL_33:
      if ((v30 - 3) >= 0xFFFFFFFE)
      {
        v32 = v29[4];
        if (v32)
        {
          v33 = *(v29 + 1);
          v34 = 8 * v32;
          do
          {
            if (*v33)
            {
              sub_23C49B500(&v47, *v33);
            }

            ++v33;
            v34 -= 8;
          }

          while (v34);
        }
      }

      else if (v30 > 3)
      {
        if (v30 == 4)
        {
          if (*(v29 + 268) == 1)
          {
            sub_23C5015B8(&v39, v29[66]);
          }

          v28 = *(v29 + 30);
          if (v28)
          {
            goto LABEL_28;
          }
        }

        else if (v30 == 5 && *(v29 + 244) == 1)
        {
          sub_23C5015B8(&v39, v29[60]);
        }
      }

      else if (!v30 || v30 == 3)
      {
        v28 = *(v29 + 1);
        goto LABEL_28;
      }
    }
  }

  if (v43 != v42)
  {
    free(v43);
  }

  if (v47 != v49)
  {
    free(v47);
  }

  v35 = __p[0];
  if (__p[0])
  {
    do
    {
      v27 = v27 & 0xFFFFFFFF00000000 | *(v35 + 4);
      sub_23C49786C(*(a1 + 40), v27, 0x100000008);
      v35 = *v35;
    }

    while (v35);
    v36 = __p[0];
    if (__p[0])
    {
      do
      {
        v37 = *v36;
        operator delete(v36);
        v36 = v37;
      }

      while (v37);
    }
  }

  v38 = v39;
LABEL_63:
  *&v39 = 0;
  if (v38)
  {
    operator delete(v38);
  }

LABEL_23:
  v22 = *MEMORY[0x277D85DE8];
}

void *sub_23C5015B8(void *result, unsigned int a2)
{
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
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
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
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

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

__n128 sub_23C5019A8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1B898;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t *sub_23C501A64(uint64_t *result, unint64_t a2, uint64_t a3)
{
  if (*(result + 3) < a2)
  {
    *(result + 2) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v3 = *(result + 2);
  if (v3 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = *(result + 2);
  }

  if (v4)
  {
    v5 = 0;
    v6 = *result;
    v7 = vdupq_n_s64(v4 - 1);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v5), xmmword_23C5324B0)));
      if (v8.i8[0])
      {
        *(v6 + 8 * v5) = a3;
      }

      if (v8.i8[4])
      {
        *(v6 + 8 * v5 + 8) = a3;
      }

      v5 += 2;
    }

    while (((v4 + 1) & 0x1FFFFFFFELL) != v5);
  }

  v9 = a2 - v3;
  if (a2 > v3)
  {
    v10 = 0;
    v11 = *result + 8 * v3;
    v12 = vdupq_n_s64(v9 - 1);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_23C5324B0)));
      if (v13.i8[0])
      {
        *(v11 + 8 * v10) = a3;
      }

      if (v13.i8[4])
      {
        *(v11 + 8 * v10 + 8) = a3;
      }

      v10 += 2;
    }

    while (((v9 + 1) & 0xFFFFFFFFFFFFFFFELL) != v10);
  }

  *(result + 2) = a2;
  return result;
}

void *sub_23C501BE0(void *result, llvm::Instruction *this)
{
  v3 = result;
  v4 = **(*this + 16);
  if (*(v4 + 8) == 15 || (result = llvm::Type::isIntegerTy(**(*this + 16)), result))
  {
    v5 = *(this + 1);
    if (!v5)
    {
      return llvm::Instruction::eraseFromParent(this);
    }

    v6 = 0;
    v7 = *(this - 4);
    v8 = v3 + 1;
    do
    {
      v9 = *(v5 + 24);
      v5 = *(v5 + 8);
      if (v9 && *(v9 + 16) == 60)
      {
        if (!v6)
        {
          v10 = *(*v3 - 24);
          v16 = 257;
          v11 = sub_23C497C88((v8 + v10), **(*v7 + 16), v7, 0, v15);
          v12 = *(*v3 - 24);
          if (*(v4 + 8) == 15)
          {
            v16 = 257;
            v13 = v8 + v12;
            v14 = 49;
          }

          else
          {
            v16 = 257;
            v13 = v8 + v12;
            v14 = 47;
          }

          v6 = sub_23C49ACF8(v13, v14, v11, v4, v15);
        }

        llvm::Value::replaceAllUsesWith();
        result = llvm::Instruction::eraseFromParent(v9);
      }
    }

    while (v5);
    if (!*(this + 1))
    {
      return llvm::Instruction::eraseFromParent(this);
    }
  }

  return result;
}

void *sub_23C501D3C(void *result, void *a2)
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

  v9 = result[4];
  v8 = result[5];
  v10 = v8 + v9;
  if (v7 == v8 + v9)
  {
    if (v9 < 0x200)
    {
      v11 = result[3];
      v12 = v11 - *result;
      if (v5 - v6 < v12)
      {
        operator new();
      }

      v13 = v12 >> 2;
      if (v11 == *result)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13;
      }

      sub_23C5023F4(v14);
    }

    result[4] = v9 - 512;
    v15 = *v6;
    result[1] = v6 + 8;
    result = sub_23C5022F0(result, &v15);
    v6 = v3[1];
    v8 = v3[5];
    v10 = v3[4] + v8;
  }

  *(*&v6[(v10 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v10 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

uint64_t sub_23C5021EC(uint64_t a1)
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

uint64_t sub_23C50226C(uint64_t result, char *a2, char *a3)
{
  v3 = a2;
  v4 = *(result + 8);
  if (v4 + ((a3 - a2) >> 3) > *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a3 != a2)
  {
    v5 = (*result + 8 * v4);
    do
    {
      v6 = *v3;
      v3 += 8;
      *v5++ = v6;
    }

    while (v3 != a3);
  }

  *(result + 8) = v4 + ((a3 - a2) >> 3);
  return result;
}

void *sub_23C5022F0(void *result, void *a2)
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

      sub_23C5023F4(v11);
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

void sub_23C5023F4(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_23C496CE8();
}

uint64_t sub_23C5024E8(void *a1, unint64_t *a2, unsigned int a3, unsigned int a4, char a5, unsigned __int8 ***a6)
{
  v8 = a2;
  v111[32] = *MEMORY[0x277D85DE8];
  v10 = *a2;
  if ((a5 & 1) == 0)
  {
    v13 = *(a1[20] + 80);
    if (v13)
    {
      v14 = v13 - 24;
    }

    else
    {
      v14 = 0;
    }

    v15 = *(v14 + 40);
    if (v15)
    {
      v16 = v15 - 24;
    }

    else
    {
      v16 = 0;
    }

    sub_23C4C30FC(a1 + *(*a1 - 24) + 8, v16);
    LODWORD(v109) = a3;
    HIDWORD(v109) = a3;
    v17 = *(a1 + *(*a1 - 24) + 192);
    v18 = llvm::ConstantInt::get();
    sub_23C502C58(a1, a6, v10, v18, &v109);
    llvm::Value::replaceAllUsesWith();
LABEL_109:
    result = 1;
    goto LABEL_110;
  }

  if (*(v10 + 8) == 15)
  {
    v84 = **(v10 + 16);
    v11 = **(v84 + 2);
    v99 = v11;
    if (*(v11 + 8) == 16)
    {
      v99 = **(v11 + 16);
    }

    v91 = **(v84 + 2);
    __src = a2;
    v109 = v111;
    v110 = 0x2000000000;
    sub_23C49BA18(&v109, &__src, &v107);
    v85 = v8;
    while (1)
    {
      v8 = v8[1];
      if (!v8)
      {
        break;
      }

      v12 = v8[3];
      if (*(v12 + 16) == 77)
      {
        sub_23C49B500(&v109, v12);
      }
    }

    v20 = a3;
    __src = v108;
    v107 = 0x2000000000;
    if (v110)
    {
      v21 = v109;
      v22 = (v109 + 8 * v110);
      v23 = a4;
      v95 = a1 + 1;
      v96 = a6;
      v89 = a3 | ((a3 + a4 - 1) << 32);
      v86 = v22;
      v87 = a3;
      v90 = a3;
      while (1)
      {
        v24 = *(**v21 + 16);
        v25 = *v24;
        v26 = *(*v24 + 8);
        if (*v24)
        {
          v27 = v26 == 16;
        }

        else
        {
          v27 = 0;
        }

        if (v27)
        {
          if (*(v25 + 12) != 1)
          {
            goto LABEL_87;
          }

          v29 = *(**(v25 + 16) + 8);
          v27 = v29 == 15;
          v28 = v29 != 15;
          if (!v27)
          {
            v25 = **(v25 + 16);
          }

          v26 = *(v25 + 8);
        }

        else
        {
          v28 = 0;
        }

        if (v26 == 17)
        {
          v30 = v25;
        }

        else
        {
          v30 = 0;
        }

        if (v30)
        {
          if (*(v30 + 32) > v23)
          {
            goto LABEL_87;
          }

          v25 = **(v30 + 16);
          ++v28;
          v26 = *(v25 + 8);
        }

        if (v26 == 16)
        {
          v31 = v25;
        }

        else
        {
          v31 = 0;
        }

        if (!v31)
        {
          v32 = v28 + 1;
LABEL_41:
          if (v30 | v31)
          {
            v33 = v25 == v99;
          }

          else
          {
            v33 = 0;
          }

          if (v33)
          {
            v97 = v31;
            v92 = *v21;
            v34 = *(*v21 + 8);
            if (v34)
            {
              v93 = 32 * (v28 + 1);
              v94 = v28;
              v98 = v32;
              do
              {
                v35 = *(v34 + 24);
                if (v35 && *(v35 + 16) == 62)
                {
                  v36 = *(v35 + 20) & 0x7FFFFFF;
                  v37 = (v36 - 1);
                  v38 = **(*v35 + 16);
                  if ((v38 != v99 || v37 == v32) && (v38 != v97 || v36 == v32))
                  {
                    if (v36 == 1)
                    {
LABEL_69:
                      sub_23C4C30FC(v95 + *(*a1 - 24), v35);
                      v47 = *(v35 - 32 * (*(v35 + 20) & 0x7FFFFFF) + v93);
                      v48 = a1 + *(*a1 - 24);
                      v49 = *(v48 + 24);
                      v103 = 257;
                      v50 = sub_23C49B1E4((v48 + 8), v47, v49, 0, __p);
                      if (v50)
                      {
                        v51 = *(v50 + 16) == 16;
                      }

                      else
                      {
                        v51 = 0;
                      }

                      v52 = v89;
                      if (v51)
                      {
                        v53 = (v50 + 24);
                        if (*(v50 + 32) >= 0x41u)
                        {
                          v53 = *v53;
                        }

                        v52 = ((*v53 + v90) | ((*v53 + v90) << 32));
                      }

                      Name = v52;
                      v54 = sub_23C502C58(a1, v96, v91, v50, &Name);
                      if (v38 == v97)
                      {
                        v55 = *(*a1 - 24);
                        v56 = llvm::UndefValue::get();
                        v100[0] = 0;
                        v103 = 257;
                        sub_23C49A744(v95 + v55, v56, v54, v100, 1, __p);
                      }

                      for (i = *(v35 + 8); i; i = *(i + 8))
                      {
                        v58 = *(i + 24);
                        if (*(v58 + 16) == 60)
                        {
                          v59 = *(i + 24);
                          llvm::Value::replaceAllUsesWith();
                          sub_23C49B500(&__src, v58);
                        }
                      }

                      sub_23C49B500(&__src, v35);
                      v32 = v98;
                    }

                    else
                    {
                      v41 = v35 - 32 * v36 + 32;
                      v42 = v94;
                      while (1)
                      {
                        if (v42)
                        {
                          v43 = *v41;
                          if (*(*v41 + 16) != 16)
                          {
                            break;
                          }

                          v44 = (v43 + 24);
                          v45 = *(v43 + 32);
                          if (v45 >= 0x41)
                          {
                            v46 = llvm::APInt::countLeadingZerosSlowCase((v43 + 24));
                            v32 = v98;
                            if (v45 - v46 > 0x40)
                            {
                              break;
                            }

                            v44 = *v44;
                          }

                          if (*v44)
                          {
                            break;
                          }
                        }

                        v41 += 32;
                        --v42;
                        if (!--v37)
                        {
                          goto LABEL_69;
                        }
                      }
                    }
                  }
                }

                v34 = *(v34 + 8);
              }

              while (v34);
            }

            a6 = v96;
            v22 = v86;
            v20 = v87;
            v23 = a4;
            if (*(v92 + 16) > 0x1Bu)
            {
              sub_23C49B500(&__src, v92);
            }
          }

          goto LABEL_87;
        }

        if (*(v31 + 12) == 1)
        {
          v25 = **(v31 + 16);
          v32 = v28 + 2;
          goto LABEL_41;
        }

LABEL_87:
        if (++v21 == v22)
        {
          if (v107)
          {
            v60 = __src;
            v61 = 8 * v107;
            do
            {
              if (!*(*v60 + 1))
              {
                llvm::Instruction::eraseFromParent(*v60);
              }

              ++v60;
              v61 -= 8;
            }

            while (v61);
          }

          break;
        }
      }
    }

    if (*(v85 + 1))
    {
      Name = llvm::Value::getName(v85);
      v105 = v62;
      v63 = sub_23C4AE5DC(__p, &Name);
      if (v102 >= 0)
      {
        v70 = __p;
      }

      else
      {
        LOBYTE(v70) = __p[0];
      }

      sub_23C4AA240(v63, "!!!! Perf: Argument %s: failed to patten match the array of texture/sampler, spilling!!", v64, v65, v66, v67, v68, v69, v70);
      if (v102 < 0)
      {
        operator delete(__p[0]);
      }

      v71 = sub_23C506824(a1 + *(*a1 - 24), v84);
      v72 = a1 + 1;
      v73 = v71 + 3;
      if (!v71)
      {
        v73 = 0;
      }

      sub_23C497720(v72 + *(*a1 - 24), v71[5], v73[1]);
      if (a4)
      {
        v74 = 0;
        v75 = a1 + 24;
        do
        {
          v100[0] = v20 + v74;
          v100[1] = v20 + v74;
          v76 = a1 + *(*a1 - 24);
          v77 = *(v76 + 192);
          Name = llvm::ConstantInt::get();
          v78 = *(v75 + *(*a1 - 24));
          v105 = llvm::ConstantInt::get();
          v103 = 257;
          v79 = sub_23C4ED3A0(v76, v71, &Name, 2, __p);
          v80 = *(v75 + *(*a1 - 24));
          v81 = llvm::ConstantInt::get();
          v82 = sub_23C502C58(a1, a6, v91, v81, v100);
          sub_23C4BA8C0((v72 + *(*a1 - 24)), v82, v79, 0);
          ++v74;
        }

        while (a4 != v74);
      }

      llvm::Value::replaceAllUsesWith();
    }

    if (__src != v108)
    {
      free(__src);
    }

    if (v109 != v111)
    {
      free(v109);
    }

    goto LABEL_109;
  }

  result = 0;
LABEL_110:
  v83 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *sub_23C502C58(void *a1, unsigned __int8 ***a2, unint64_t a3, uint64_t a4, unsigned int *a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = (a1 + *(*a1 - 24));
  v9 = v8[30];
  v17 = v8[24];
  v18 = v9;
  v19 = v17;
  v10 = sub_23C4FA2D8(a2, v8[40], a3);
  v11 = (a1 + *(*a1 - 24));
  v16[0] = a4;
  v16[1] = sub_23C4A6D9C(a5, v11 + 1);
  v12 = *(a1 + *(*a1 - 24) + 192);
  v16[2] = llvm::ConstantInt::get();
  v15[16] = 257;
  result = sub_23C497A7C((v11 + 1), *(v10 + 24), v10, v16, 3, v15);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C502D88(void *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v159[16] = *MEMORY[0x277D85DE8];
  v157 = v159;
  v158 = 0x1000000000;
  v4 = *(a2 + 8);
  if (v4)
  {
    v6 = 0;
    do
    {
      if (v6 >= HIDWORD(v158))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *&v157[8 * v6] = *(v4 + 24);
      v6 = v158 + 1;
      LODWORD(v158) = v158 + 1;
      v4 = *(v4 + 8);
    }

    while (v4);
    v7 = v157;
    if (v6)
    {
      v8 = &v157[8 * v6];
      v142 = a1 + 1;
      v140 = a3;
      v9 = 32 * a3;
      v10 = a4;
      v137 = v8;
      v139 = v9;
      while (1)
      {
        v11 = *v7;
        v12 = *v7 - 32 * (*(*v7 + 20) & 0x7FFFFFF);
        if (v10)
        {
          v13 = *(v12 + 32 * a4);
        }

        else
        {
          v13 = 0;
        }

        v14 = *(v12 + v9);
        if (*(v14 + 16) != 83)
        {
          goto LABEL_64;
        }

        v15 = *(v11 + 5);
        v16 = *(v15 + 1);
        if (v16)
        {
          break;
        }

LABEL_62:
        v40 = *v11;
        llvm::UndefValue::get();
        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v11);
LABEL_63:
        v9 = v139;
LABEL_64:
        v7 += 8;
        if (v7 == v8)
        {
          v7 = v157;
          goto LABEL_240;
        }
      }

      v17 = *(v15 + 1);
      while (1)
      {
        v18 = *(v17 + 24);
        v19 = *(v18 + 16);
        v20 = v18 && v19 >= 0x1C;
        if (v20 && v19 - 29 <= 0xA)
        {
          break;
        }

        v17 = *(v17 + 8);
        if (!v17)
        {
LABEL_54:
          while (1)
          {
            v36 = *(v16 + 24);
            v37 = *(v36 + 16);
            v38 = v36 && v37 >= 0x1C;
            if (v38 && v37 - 40 > 0xFFFFFFF4)
            {
              break;
            }

            v16 = *(v16 + 8);
            if (!v16)
            {
              goto LABEL_62;
            }
          }

          v41 = *(v14 + 20);
          if ((v41 & 0x7FFFFFF) != 1)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23C496000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "All predecessors of the indirect sampler call have an unconditional branch, may need more code changes to handle this", buf, 2u);
            }

            abort();
          }

          v9 = v139;
          if ((v41 & 0x40000000) != 0)
          {
            v42 = *(v14 - 8);
          }

          else
          {
            v42 = (v14 - 32);
          }

          v43 = *v42;
          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v14);
          if (v13)
          {
            if (*(v13 + 16) == 83)
            {
              v44 = v13;
            }

            else
            {
              v44 = 0;
            }

            v45 = v44[5];
            if ((v45 & 0x40000000) != 0)
            {
              v46 = *(v44 - 1);
            }

            else
            {
              v46 = &v44[-8 * (v45 & 0x7FFFFFF)];
            }

            v49 = *v46;
            llvm::Value::replaceAllUsesWith();
            llvm::Instruction::eraseFromParent(v44);
          }

          goto LABEL_64;
        }
      }

      v22 = 0;
LABEL_25:
      v23 = *(v18 + 40);
      v24 = *(v23 + 40);
      v25 = v24 - 24;
      if (v24)
      {
        v26 = v24 - 24;
      }

      else
      {
        v26 = 0;
      }

      v27 = *(v26 + 16) - 40;
      if (v27 < 0xFFFFFFF5)
      {
        v25 = 0;
      }

      v28 = *(v25 + 16) == 30 && v27 >= 0xFFFFFFF5;
      if (!v28 || (*(v24 - 4) & 0x7FFFFFF) != 1)
      {
        v22 = v23;
      }

      while (1)
      {
        v17 = *(v17 + 8);
        if (!v17)
        {
          break;
        }

        v18 = *(v17 + 24);
        v29 = *(v18 + 16);
        if (v18)
        {
          v30 = v29 >= 0x1C;
        }

        else
        {
          v30 = 0;
        }

        if (v30 && v29 - 29 < 0xB)
        {
          goto LABEL_25;
        }
      }

      if (!v22)
      {
        goto LABEL_54;
      }

      v33 = (v22 + 40);
      v32 = *(v22 + 40);
      if (v32 == (v22 + 40))
      {
        v34 = 0;
      }

      else
      {
        v34 = v32 - 3;
        if (v32)
        {
          v35 = v32 - 3;
        }

        else
        {
          v35 = 0;
        }

        if (*(v35 + 16) - 29 >= 0xB)
        {
          v34 = 0;
        }
      }

      v47 = *(v34 + 5);
      if ((v47 & 0x7FFFFFF) != 0)
      {
        v48 = (v47 & 0x40000000) != 0 ? *(v34 - 1) : &v34[-4 * (v47 & 0x7FFFFFF)];
        v50 = *v48;
        if (*(*v48 + 16) == 60)
        {
          v51 = *(v50 - 4);
          v52 = *(*v51 + 8);
          if ((v52 & 0xFE) == 0x12)
          {
            v52 = *(**(*v51 + 16) + 8);
          }

          if (v52 <= 0xFF && v51[16] == 59)
          {
            while (1)
            {
              v53 = (v32 - 3);
              if (!v32)
              {
                v53 = 0;
              }

              if (v53 == v50)
              {
                break;
              }

              v32 = *v32;
            }

            while (v32 != v33)
            {
              if (v32 && *(v32 - 8) == 61)
              {
                v54 = *(v32 - 7);
                if (v54 == v51)
                {
                  v56 = *(v32 - 11);
                  llvm::Value::replaceAllUsesWith();
                  llvm::Instruction::eraseFromParent(v50);
                  llvm::ConstantFoldTerminator();
                  v16 = *(v15 + 1);
                  break;
                }

                v55 = *(*v54 + 8);
                if ((v55 & 0xFE) == 0x12)
                {
                  v55 = *(**(*v54 + 16) + 8);
                }

                if (v55 <= 0xFF && v54[16] != 59)
                {
                  break;
                }
              }

              v32 = *v32;
            }
          }
        }
      }

      if (v16)
      {
        while (1)
        {
          v57 = *(v16 + 24);
          v58 = *(v57 + 16);
          v59 = v57 && v58 >= 0x1C;
          if (v59 && v58 - 29 <= 0xA)
          {
            break;
          }

          v16 = *(v16 + 8);
          if (!v16)
          {
            goto LABEL_139;
          }
        }

        do
        {
          v61 = v16;
          do
          {
            v16 = *(v16 + 8);
            if (!v16)
            {
              break;
            }

            v62 = *(v16 + 24);
            v63 = *(v62 + 16);
            v64 = v62 && v63 >= 0x1C;
          }

          while (!v64 || v63 - 29 >= 0xB);
          v66 = *(*(v61 + 24) + 40);
          v67 = *(v66 + 1);
          if (v67)
          {
            while (1)
            {
              v68 = *(v67 + 24);
              v69 = *(v68 + 16);
              v70 = v68 && v69 >= 0x1C;
              if (v70 && v69 - 40 > 0xFFFFFFF4)
              {
                break;
              }

              v67 = *(v67 + 8);
              if (!v67)
              {
                goto LABEL_132;
              }
            }
          }

          else
          {
LABEL_132:
            v72 = *(*(v66 + 7) + 80);
            if (v72)
            {
              v73 = (v72 - 24);
            }

            else
            {
              v73 = 0;
            }

            if (v66 != v73)
            {
              llvm::BasicBlock::removePredecessor(v15, v66);
              if (!*(v66 + 1))
              {
                llvm::BasicBlock::eraseFromParent(v66);
              }
            }
          }
        }

        while (v16);
      }

LABEL_139:
      v74 = (v11 - 32 * (*(v11 + 5) & 0x7FFFFFF));
      v9 = v139;
      v75 = *(v74 + v139);
      if (v10)
      {
        if (*(v75 + 16) != 83 || v75 == 0)
        {
          goto LABEL_64;
        }

        v77 = v74[4 * a4];
        if (v77)
        {
          if (*(v77 + 16) == 83)
          {
            v78 = v74[4 * a4];
          }

          else
          {
            v78 = 0;
          }

LABEL_154:
          v80 = 0;
          v151 = 0u;
          v152 = 0u;
          *__p = 0u;
          v145 = v149;
          v146 = v149;
          v147 = 4;
          v81 = v11;
          v148 = 0;
          while (1)
          {
            v82 = sub_23C4B88A0(v11);
            v83 = *(v11 + 5) & 0x7FFFFFF;
            if (v80 >= ((v82 - (v11 + 32 * -v83)) >> 5))
            {
              break;
            }

            v84 = *(v81 - 4 * v83);
            if (*(v84 + 16) <= 0x1Bu)
            {
              v85 = 0;
            }

            else
            {
              v85 = v84;
            }

            v143[0] = v85;
            if (v85)
            {
              v86 = v85 == v75;
            }

            else
            {
              v86 = 1;
            }

            if (!v86 && v85 != v77 && v85[5] == v15)
            {
              sub_23C4FB9F8(buf, &v145, v85);
              if (v155[0] == 1)
              {
                sub_23C501D3C(__p, v143);
              }
            }

            ++v80;
            v81 = (v81 + 32);
          }

          v88 = *(&v152 + 1);
          if (*(&v152 + 1))
          {
            v89 = v152;
            do
            {
              v90 = *(*(__p[1] + ((v89 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v89 & 0x1FF));
              v91 = *(v90 + 20) & 0x7FFFFFF;
              if (v91)
              {
                v92 = 0;
                v93 = 32 * v91;
                do
                {
                  v94 = *(v90 + 20);
                  if ((v94 & 0x40000000) != 0)
                  {
                    v95 = *(v90 - 8);
                  }

                  else
                  {
                    v95 = v90 - 32 * (v94 & 0x7FFFFFF);
                  }

                  v96 = *(v95 + v92);
                  if (*(v96 + 16) <= 0x1Bu)
                  {
                    v97 = 0;
                  }

                  else
                  {
                    v97 = v96;
                  }

                  v143[0] = v97;
                  if (v97)
                  {
                    if (v97[5] == v15)
                    {
                      sub_23C4FB9F8(buf, &v145, v97);
                      if (v155[0] == 1)
                      {
                        sub_23C501D3C(__p, v143);
                      }
                    }
                  }

                  v92 += 32;
                }

                while (v93 != v92);
                v88 = *(&v152 + 1);
                v89 = v152;
              }

              --v88;
              v98 = v89 + 1;
              *&v152 = v89 + 1;
              *(&v152 + 1) = v88;
              if (v89 + 1 >= 0x400)
              {
                v99 = __p[1] + 8;
                operator delete(*__p[1]);
                v98 = v89 - 511;
                __p[1] = v99;
                *&v152 = v89 - 511;
              }

              v89 = v98;
            }

            while (v88);
          }

          v100 = *v33;
          if (*v33 != v33)
          {
            if (v100)
            {
              v101 = v100 - 3;
            }

            else
            {
              v101 = 0;
            }

            *(v101 + 16);
          }

          v102 = *(v15 + 6);
          if (v102 != (v15 + 40))
          {
            do
            {
              if (HIDWORD(v147) == v148)
              {
                break;
              }

              v103 = v102[1];
              if (v102)
              {
                v104 = v102 - 3;
              }

              else
              {
                v104 = 0;
              }

              if (sub_23C4F3988(&v145, v104))
              {
                llvm::Instruction::moveBefore();
              }

              v102 = v103;
            }

            while (v103 != (v15 + 40));
          }

          v105 = *(*a1 - 24);
          FirstNonPHI = llvm::BasicBlock::getFirstNonPHI(*(v11 + 5));
          sub_23C4C30FC(v142 + v105, FirstNonPHI);
          v107 = *(*a1 - 24);
          v108 = *v11;
          v109 = *(v75 + 20);
          v156 = 257;
          v110 = sub_23C4BC404(v142 + v107, v108, v109 & 0x7FFFFFF, buf);
          v111 = 0;
          *buf = v155;
          v154 = 0x1000000000;
          for (i = v11; ; i = (i + 32))
          {
            v113 = sub_23C4B88A0(v11);
            v114 = *(v11 + 5) & 0x7FFFFFF;
            if (v111 >= ((v113 - (v11 + 32 * -v114)) >> 5))
            {
              break;
            }

            sub_23C49B500(buf, *(i - 4 * v114));
            ++v111;
          }

          v115 = *(v75 + 20);
          if ((v115 & 0x40000000) != 0)
          {
            v117 = *(v75 - 8);
            v118 = *(v75 + 60);
            v119 = (v117 + 32 * v118);
            v116 = v115 & 0x7FFFFFF;
          }

          else
          {
            v116 = v115 & 0x7FFFFFF;
            v117 = v75 - 32 * v116;
            v118 = *(v75 + 60);
            v119 = (v117 + 32 * v118);
          }

          v120 = v117 + 32 * v118 + 8 * v116;
          while (v119 != v120)
          {
            v121 = *v119;
            v122 = *(*v119 + 40);
            if (v122 == *v119 + 40)
            {
              v125 = 0;
            }

            else
            {
              v123 = v122 - 24;
              if (v122)
              {
                v124 = v122 - 24;
              }

              else
              {
                v124 = 0;
              }

              if (*(v124 + 16) - 29 >= 0xB)
              {
                v125 = 0;
              }

              else
              {
                v125 = v123;
              }
            }

            sub_23C4C30FC(v142 + *(*a1 - 24), v125);
            v126 = sub_23C503808(v75, v121);
            v127 = v126;
            if (v78)
            {
              v128 = sub_23C503808(v78, v121);
              *(*buf + 8 * v140) = v127;
              if (v128)
              {
                *(*buf + 8 * a4) = v128;
              }
            }

            else
            {
              *(*buf + 8 * v140) = v126;
            }

            v129 = *(*a1 - 24);
            v144 = 257;
            v130 = sub_23C497A7C(v142 + v129, *(a2 + 24), a2, *buf, v154, v143);
            sub_23C4BC510(v110, v130, v121);
            ++v119;
          }

          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v11);
          if (!*(v75 + 8))
          {
            llvm::Instruction::eraseFromParent(v75);
          }

          if (v78 && !*(v78 + 1))
          {
            llvm::Instruction::eraseFromParent(v78);
          }

          if (*buf != v155)
          {
            free(*buf);
          }

          if (v146 != v145)
          {
            free(v146);
          }

          v131 = __p[1];
          v132 = v151;
          v133 = v151 - __p[1];
          if (v151 - __p[1] >= 0x11)
          {
            do
            {
              v134 = *v131++;
              operator delete(v134);
              v133 -= 8;
            }

            while (v133 > 0x10);
          }

          while (v131 != v132)
          {
            v135 = *v131++;
            operator delete(v135);
          }

          v8 = v137;
          if (__p[0])
          {
            operator delete(__p[0]);
          }

          v10 = a4;
          goto LABEL_63;
        }
      }

      else
      {
        if (*(v75 + 16) != 83 || v75 == 0)
        {
          goto LABEL_64;
        }

        v77 = 0;
      }

      v78 = 0;
      goto LABEL_154;
    }

LABEL_240:
    if (v7 != v159)
    {
      free(v7);
    }
  }

  v136 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23C503808(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 20);
  v3 = v2 & 0x7FFFFFF;
  if ((v2 & 0x7FFFFFF) != 0)
  {
    v4 = 0;
    while (1)
    {
      v5 = a1 - 32 * v3;
      if ((v2 & 0x40000000) != 0)
      {
        v5 = *(a1 - 8);
      }

      if (*(v5 + 32 * *(a1 + 60) + 8 * v4) == a2)
      {
        break;
      }

      if (v3 == ++v4)
      {
        LODWORD(v4) = -1;
        break;
      }
    }

    v4 = v4;
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_11:
    v6 = *(a1 - 8);
    return *(v6 + 32 * v4);
  }

  v4 = 0xFFFFFFFFLL;
  if ((v2 & 0x40000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v6 = a1 - 32 * v3;
  return *(v6 + 32 * v4);
}

void sub_23C50387C(void *a1)
{
  sub_23C4B8970();
  sub_23C4E8E90();
  v2 = *(a1 + *(*a1 - 24) + 320);
  v3 = *(v2 + 32);
  v4 = v2 + 24;
  while (v3 != v4)
  {
    v5 = (v3 - 56);
    v8 = v3 == 0;
    v3 = *(v3 + 8);
    if (v8)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }

    llvm::Value::getName(v6);
    Key = llvm::StringMapImpl::FindKey();
    v8 = Key == -1 || Key == dword_27E1F7458;
    if (v8)
    {
      llvm::Value::getName(v5);
      v9 = llvm::StringMapImpl::FindKey();
      if (v9 == -1 || v9 == dword_27E1F7360)
      {
        continue;
      }

      v13 = a1;
      v14 = v5;
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v10 = *(qword_27E1F7450 + 8 * Key);
      v11 = *(v10 + 30);
      v12 = *(v10 + 31);
      v13 = a1;
      v14 = v5;
    }

    sub_23C502D88(v13, v14, v11, v12);
  }
}

void sub_23C5039AC(uint64_t a1)
{
  if (*(a1 + 10) == 1)
  {

    sub_23C50387C(a1);
  }

  else
  {
    v2 = a1 + *(*a1 - 24);
    v3 = *(v2 + 400);
    v4 = *(v2 + 320);
    sub_23C4AEA64(v3);
    v5 = *(v3 + 336);

    llvm::legacy::PassManager::run(v5, v4);
  }
}

void sub_23C503A24(uint64_t a1, _OWORD *a2)
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
      sub_23C496CE8();
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

      sub_23C496CE8();
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
}

uint64_t sub_23C503B2C(uint64_t a1)
{
  v2 = *(a1 + 792);
  v3 = *(a1 + 808);
  v4 = *(a1 + 816);
  v18 = *(a1 + 784);
  if (v18 != v2)
  {
    v16 = *(a1 + 816);
    v17 = *(a1 + 808);
    v19 = **(a1 + 784);
    sub_23C4B2C10(&v19, a1 + 704 + *(*a1 - 24));
    sub_23C4B1830(1uLL);
  }

  if (v3 == v4)
  {
    v10 = 0;
  }

  else
  {
    v5 = a1 + *(*a1 - 24);
    v6 = *(a1 + 808);
    v7 = *(a1 + 816);
    v8 = v7 - v6;
    if (v7 == v6)
    {
      v9 = &unk_27E1F7449;
    }

    else
    {
      v9 = *(a1 + 808);
    }

    *(v5 + 774) = 1;
    sub_23C4B0AD0(v5 + 704, v8, 4uLL);
    sub_23C4B0AD0(v5 + 704, v8, 8uLL);
    sub_23C4B0B08((v5 + 704), v9, v8);
    *(v5 + 774) = 0;
    v10 = sub_23C4B0A6C(v5 + 704, v8 >> 3);
  }

  v11 = sub_23C4B1878(a1 + *(*a1 - 24));
  v12 = v11;
  v14 = v13;
  if (v18 != v2)
  {
    sub_23C4C6A98(v11, 0);
  }

  if (v3 != v4 && v10)
  {
    sub_23C4B08D8(v12, 4uLL);
    sub_23C4B0A04(v12, 12, *(v12 + 32) - *(v12 + 48) + *(v12 + 40) - v10 + 4);
  }

  sub_23C4B2DFC(v12, 20, *(a1 + 37));
  if (*(a1 + 2385) == 1)
  {
    sub_23C4B0328(v12, 22, *(a1 + 2392));
    sub_23C4B0328(v12, 24, *(a1 + 2400));
    sub_23C4B0328(v12, 26, *(a1 + 2408));
    sub_23C4B0328(v12, 28, *(a1 + 2416));
  }

  sub_23C4B0A04(v12, 30, *(a1 + 2424));

  return sub_23C4B03D4(v12, v14);
}

void sub_23C503E5C(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 160);
  if (*(v4 + 18))
  {
    llvm::Function::BuildLazyArguments(*(a1 + 160));
    v6 = *(a1 + 160);
    v5 = *(v4 + 88);
    if (*(v6 + 18))
    {
      llvm::Function::BuildLazyArguments(*(a1 + 160));
    }

    v4 = v6;
  }

  else
  {
    v5 = *(v4 + 88);
  }

  v7 = *(v4 + 88) + 40 * *(v4 + 96);
  if (v5 == v7)
  {
    return;
  }

  v68 = *(v4 + 88) + 40 * *(v4 + 96);
  v69 = a1 + 8;
  do
  {
    v8 = *(*(a1 + 72) + 8 * *(v5 + 32));
    if (*(v5 + 8))
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_97;
    }

    v10 = *(*(a1 + 160) + 80);
    v11 = v10 ? v10 - 24 : 0;
    v12 = *a1;
    v13 = *(v11 + 40);
    v14 = v13 ? v13 - 24 : 0;
    sub_23C4C30FC(v69 + *(*a1 - 24), v14);
    if (!sub_23C4A57A0(*(v8 - 8 * *(v8 + 8) + 8), "air.buffer") && !sub_23C4A57A0(*(v8 - 8 * *(v8 + 8) + 8), "air.indirect_buffer"))
    {
      goto LABEL_97;
    }

    String = 0;
    v77 = 0;
    LODWORD(v15) = *(v8 + 8);
    if (v15 < 3)
    {
      goto LABEL_27;
    }

    v16 = 2;
    while (1)
    {
      v17 = sub_23C4A57A0(*(v8 - 8 * v15 + 8 * v16), "air.arg_name");
      v15 = *(v8 + 8);
      if (v17)
      {
        break;
      }

LABEL_26:
      if (++v16 >= v15)
      {
        goto LABEL_27;
      }
    }

    v18 = *(v8 - 8 * v15 + 8 * (v16 + 1));
    if (!v18 || *v18)
    {
      v16 += 2;
      goto LABEL_26;
    }

    String = llvm::MDString::getString(v18);
    v77 = v66;
LABEL_27:
    Key = llvm::StringMapImpl::FindKey();
    v20 = *a2;
    if (Key == -1)
    {
      v21 = *(a2 + 2);
    }

    else
    {
      v21 = Key;
    }

    v22 = *(v20 + 8 * v21);
    v23 = *(v22 + 12);
    if (v23 <= 1)
    {
      if (v23)
      {
        if (v23 == 1)
        {
          sub_23C49F8D0(&v70, "agc.");
          sub_23C4AE5DC(__p, &String);
          if ((v73 & 0x80u) == 0)
          {
            v24 = __p;
          }

          else
          {
            v24 = __p[0];
          }

          if ((v73 & 0x80u) == 0)
          {
            v25 = v73;
          }

          else
          {
            v25 = __p[1];
          }

          v26 = std::string::append(&v70, v24, v25);
          v27 = v26->__r_.__value_.__r.__words[2];
          *v74 = *&v26->__r_.__value_.__l.__data_;
          v75 = v27;
          v26->__r_.__value_.__l.__size_ = 0;
          v26->__r_.__value_.__r.__words[2] = 0;
          v26->__r_.__value_.__r.__words[0] = 0;
          if (v73 < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v70.__r_.__value_.__l.__data_);
          }

          v28 = 1;
          v29 = llvm::User::operator new(0x58);
          v30 = *a1;
          v31 = *(a1 + 320 + *(*a1 - 24));
          v32 = **(*v5 + 16);
          v33 = v74;
          if (v75 < 0)
          {
            v33 = v74[0];
          }

          v71 = 257;
          if (*v33)
          {
            v70.__r_.__value_.__r.__words[0] = v33;
            v28 = 3;
          }

          LOBYTE(v71) = v28;
          v67 = *(*(a1 + 344 + *(v30 - 24)) + 836) | 0x100000000;
          llvm::GlobalVariable::GlobalVariable();
          v29[80] |= 1u;
          llvm::GlobalObject::setSection();
          v34 = *(v20 + 8 * v21);
          v35 = *(v34 + 20);
          v36 = *(v34 + 24);
          sub_23C506A1C((a1 + *(*a1 - 24)));
          v37 = *(*a1 - 24);
          v71 = 257;
          sub_23C497C88((v69 + v37), **(*v29 + 16), v29, 0, &v70);
          v38 = *(v5 + 8);
          if (v38)
          {
            do
            {
              v39 = *(v38 + 8);
              v40 = *(v38 + 24);
              llvm::Value::replaceAllUsesWith();
              llvm::Instruction::eraseFromParent(v40);
              v38 = v39;
            }

            while (v39);
          }

          if (SHIBYTE(v75) < 0)
          {
            operator delete(v74[0]);
          }
        }
      }

      else
      {
        sub_23C4FF724(a1, v5, *(v5 + 32), v8, *(v22 + 16));
      }

      goto LABEL_96;
    }

    if (v23 == 2)
    {
      v61 = *(v22 + 16);
      v62 = *(a1 + 192 + *(*a1 - 24));
      llvm::ConstantInt::get();
      v63 = *(v5 + 8);
      if (v63)
      {
        do
        {
          v64 = *(v63 + 8);
          v65 = *(v63 + 24);
          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v65);
          v63 = v64;
        }

        while (v64);
      }

      goto LABEL_96;
    }

    if (v23 != 3)
    {
      goto LABEL_96;
    }

    *&v70.__r_.__value_.__r.__words[1] = 0uLL;
    v70.__r_.__value_.__r.__words[0] = &v70.__r_.__value_.__l.__size_;
    v74[0] = 0;
    v74[1] = 0;
    v75 = 0;
    __p[0] = v5;
    sub_23C4FC844(v74, __p);
LABEL_54:
    v42 = v74[0];
    v41 = v74[1];
    while (v74[0] != v41)
    {
      v43 = *(v41 - 1);
      v41 -= 8;
      v74[1] = v41;
      v44 = *(v43 + 8);
      if (v44)
      {
        do
        {
          __p[0] = *(v44 + 24);
          sub_23C4FC844(v74, __p);
          v45 = *(v44 + 24);
          size = v70.__r_.__value_.__l.__size_;
          if (!v70.__r_.__value_.__l.__size_)
          {
LABEL_63:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v47 = size;
              v48 = *(size + 32);
              if (v45 >= v48)
              {
                break;
              }

              size = *v47;
              if (!*v47)
              {
                goto LABEL_63;
              }
            }

            if (v48 >= v45)
            {
              break;
            }

            size = v47[1];
            if (!size)
            {
              goto LABEL_63;
            }
          }

          v44 = *(v44 + 8);
        }

        while (v44);
        goto LABEL_54;
      }
    }

    v49 = v70.__r_.__value_.__r.__words[0];
    if (v70.__r_.__value_.__l.__data_ == &v70.__r_.__value_.__r.__words[1])
    {
      goto LABEL_83;
    }

    while (2)
    {
      v50 = *(v49 + 32);
      v51 = *(v50 + 20);
      if ((v51 & 0x40000000) != 0)
      {
        v53 = *(v50 - 8);
        v52 = v51 & 0x7FFFFFF;
        if (!v52)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v52 = v51 & 0x7FFFFFF;
        v53 = v50 - 32 * v52;
        if (!v52)
        {
          goto LABEL_76;
        }
      }

      v54 = 32 * v52;
      v55 = (v53 + 16);
      do
      {
        if (*(v55 - 2))
        {
          v56 = *(v55 - 1);
          **v55 = v56;
          if (v56)
          {
            *(v56 + 16) = *v55;
          }
        }

        *(v55 - 2) = 0;
        v55 += 4;
        v54 -= 32;
      }

      while (v54);
LABEL_76:
      v57 = *(v49 + 8);
      if (v57)
      {
        do
        {
          v58 = v57;
          v57 = v57->__r_.__value_.__r.__words[0];
        }

        while (v57);
      }

      else
      {
        do
        {
          v58 = *(v49 + 16);
          v9 = v58->__r_.__value_.__r.__words[0] == v49;
          v49 = v58;
        }

        while (!v9);
      }

      v49 = v58;
      if (v58 != &v70.__r_.__value_.__r.__words[1])
      {
        continue;
      }

      break;
    }

    v49 = v70.__r_.__value_.__r.__words[0];
LABEL_83:
    if (v49 != &v70.__r_.__value_.__r.__words[1])
    {
      do
      {
        llvm::Instruction::eraseFromParent(*(v49 + 32));
        v59 = *(v49 + 8);
        if (v59)
        {
          do
          {
            v60 = v59;
            v59 = v59->__r_.__value_.__r.__words[0];
          }

          while (v59);
        }

        else
        {
          do
          {
            v60 = *(v49 + 16);
            v9 = v60->__r_.__value_.__r.__words[0] == v49;
            v49 = v60;
          }

          while (!v9);
        }

        v49 = v60;
      }

      while (v60 != &v70.__r_.__value_.__r.__words[1]);
    }

    if (v42)
    {
      v74[1] = v42;
      operator delete(v42);
    }

    sub_23C4B1570(v70.__r_.__value_.__l.__size_);
LABEL_96:
    v7 = v68;
LABEL_97:
    v5 += 40;
  }

  while (v5 != v7);
}

BOOL sub_23C504518(uint64_t a1)
{
  v2 = sub_23C4B1B90(a1, *(*(a1 + 400) + 128));
  if (v2)
  {
    v3 = sub_23C4B1878(a1);
    v5 = sub_23C4B03D4(v3, v4);
    *(a1 + 774) = 1;
    v6 = *(a1 + 744);
    v7 = *(a1 + 736) - *(a1 + 752);
    sub_23C4B5F88((a1 + 704), v5);
    v8 = sub_23C4B03D4(a1 + 704, v7 + v6);
    sub_23C4B1AD8(a1 + 704, v8);
  }

  return v2;
}

void sub_23C5045A0(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_23C49F8D0(v26, &unk_23C53F34D);
  sub_23C49F8D0(v23, "token");
  std::to_string(&v36, *(a1 + 992));
  if ((v24 & 0x80u) == 0)
  {
    v4 = v24;
  }

  else
  {
    v4 = v23[1];
  }

  v5 = &v37;
  sub_23C4ADD34(&v37, v4 + 3);
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = v37.__r_.__value_.__r.__words[0];
  }

  if (v4)
  {
    if ((v24 & 0x80u) == 0)
    {
      v6 = v23;
    }

    else
    {
      v6 = v23[0];
    }

    memmove(v5, v6, v4);
  }

  *(&v5->__r_.__value_.__l.__data_ + v4) = 2112032;
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v36;
  }

  else
  {
    v7 = v36.__r_.__value_.__r.__words[0];
  }

  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v36.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v36.__r_.__value_.__l.__size_;
  }

  v9 = std::string::append(&v37, v7, size);
  v10 = v9->__r_.__value_.__r.__words[0];
  v11 = v9->__r_.__value_.__l.__size_;
  v25[0] = v9->__r_.__value_.__r.__words[2];
  *(v25 + 3) = *(&v9->__r_.__value_.__r.__words[2] + 3);
  v12 = SHIBYTE(v9->__r_.__value_.__r.__words[2]);
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27) < 0)
  {
    sub_23C49F988(&__dst, v26[0], v26[1]);
  }

  else
  {
    __dst = *v26;
    v35 = v27;
  }

  sub_23C4B7B84(&v36.__r_.__value_.__l.__data_, &__dst, 0);
  sub_23C49F8D0(v29, "{");
  sub_23C4B7B84(&__p, v29, 0);
  if ((v33 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v33 & 0x80u) == 0)
  {
    v14 = v33;
  }

  else
  {
    v14 = v32;
  }

  v15 = std::string::append(&v36, p_p, v14);
  v16 = v15->__r_.__value_.__r.__words[2];
  *&v37.__r_.__value_.__l.__data_ = *&v15->__r_.__value_.__l.__data_;
  v37.__r_.__value_.__r.__words[2] = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (v33 < 0)
  {
    operator delete(__p);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(__dst);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }
  }

  else if ((v12 & 0x80000000) == 0)
  {
LABEL_38:
    v36.__r_.__value_.__r.__words[0] = v10;
    v36.__r_.__value_.__l.__size_ = v11;
    LODWORD(v36.__r_.__value_.__r.__words[2]) = v25[0];
    *(&v36.__r_.__value_.__r.__words[2] + 3) = *(v25 + 3);
    *(&v36.__r_.__value_.__s + 23) = v12;
LABEL_41:
    v17 = 0;
    v28 = v36;
    goto LABEL_42;
  }

  sub_23C49F988(&v36, v10, v11);
  if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_41;
  }

  sub_23C49F988(&v28, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
  v17 = 1;
LABEL_42:
  sub_23C4B7B84(&__p, &v28, 1);
  if ((v33 & 0x80u) == 0)
  {
    v18 = &__p;
  }

  else
  {
    v18 = __p;
  }

  if ((v33 & 0x80u) == 0)
  {
    v19 = v33;
  }

  else
  {
    v19 = v32;
  }

  std::string::append(&v37, v18, v19);
  if (v33 < 0)
  {
    operator delete(__p);
  }

  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!v17)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  operator delete(v28.__r_.__value_.__l.__data_);
  if (v17)
  {
LABEL_52:
    operator delete(v36.__r_.__value_.__l.__data_);
  }

LABEL_53:
  sub_23C49F8D0(&__p, "}");
  sub_23C4B7B84(&v36.__r_.__value_.__l.__data_, &__p, 0);
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v37;
  }

  else
  {
    v20 = v37.__r_.__value_.__r.__words[0];
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v37.__r_.__value_.__l.__size_;
  }

  v22 = std::string::insert(&v36, 0, v20, v21);
  *a2 = *v22;
  v22->__r_.__value_.__r.__words[0] = 0;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (v33 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_65;
    }
  }

  else if ((v12 & 0x80000000) == 0)
  {
    goto LABEL_65;
  }

  operator delete(v10);
LABEL_65:
  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }
}

uint64_t sub_23C504940(uint64_t a1)
{
  if (*(a1 + 992) == 31)
  {
    v2 = *(a1 + 320);
    if (llvm::Module::getGlobalVariable())
    {
      llvm::GlobalObject::setSection();
      sub_23C506A1C(a1);
    }

    v3 = *(a1 + 320);
    if (llvm::Module::getGlobalVariable())
    {
      sub_23C506A1C(a1);
    }

    v4 = *(a1 + 320);
    if (llvm::Module::getGlobalVariable())
    {
      sub_23C506A1C(a1);
    }
  }

  v5 = *(a1 + 320);
  v11 = "agx.compute_driver_bindings";
  v12 = 259;
  if (!llvm::Module::getNamedMetadata(v5, &v11))
  {
    v7 = *(a1 + 320);
    v8 = v7 + 24;
    for (i = *(v7 + 32); i != v8; i = *(i + 8))
    {
      if (i)
      {
        v10 = (i - 56);
      }

      else
      {
        v10 = 0;
      }

      if ((llvm::GlobalValue::isDeclaration(v10) & 1) == 0)
      {
        sub_23C4B22E0(a1, v10);
        break;
      }
    }
  }

  result = sub_23C4AF8FC(*(a1 + 400), a1, *(a1 + 320), 1, 3);
  if (result)
  {
    result = (*(*a1 + 80))(a1);
    if (result)
    {
      sub_23C4C420C(a1);
      return 1;
    }
  }

  return result;
}

void sub_23C504AF4(uint64_t a1)
{
  sub_23C4B130C(a1);

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C504B30(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      v12 = 152;
      if ((*(*a2 + 8) & 0xFE) == 0x12)
      {
        v12 = 264;
      }

      v13 = *(a1 + v12);
      v15 = 257;
      return sub_23C49FEB4(a1 + 8, a2, v13, v14);
    }

    if (a3 != 3)
    {
      return v3;
    }

LABEL_8:
    v7 = *(a1 + 296);
    v15 = 257;
    v8 = a1 + 8;
    v9 = 49;
    v6 = v3;
    return sub_23C49ACF8(v8, v9, v6, v7, v14);
  }

  switch(a3)
  {
    case 4:
LABEL_5:
      v5 = *(a1 + 296);
      v15 = 257;
      v6 = sub_23C49ACF8(a1 + 8, 49, a2, v5, v14);
      v7 = *(a1 + 288);
      v15 = 257;
      v8 = a1 + 8;
      v9 = 38;
      return sub_23C49ACF8(v8, v9, v6, v7, v14);
    case 6:
      goto LABEL_8;
    case 7:
      goto LABEL_5;
  }

  return v3;
}

uint64_t sub_23C504C2C(uint64_t a1, llvm::Type *this)
{
  *(a1 + 8) = a1 + 24;
  *(a1 + 16) = 0x200000000;
  *(a1 + 72) = this;
  *(a1 + 80) = a1 + 128;
  *(a1 + 88) = a1 + 136;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 108) = 512;
  *(a1 + 110) = 7;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v4 = MEMORY[0x277D821C8] + 16;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = v4;
  *(a1 + 136) = MEMORY[0x277D82210] + 16;
  *a1 = &unk_284F1C7F0;
  *(a1 + 144) = llvm::Type::getVoidTy(this, this);
  *(a1 + 152) = llvm::Type::getHalfTy(*(a1 + 72), v5);
  *(a1 + 160) = llvm::Type::getFloatTy(*(a1 + 72), v6);
  *(a1 + 168) = llvm::Type::getInt1Ty(*(a1 + 72), v7);
  *(a1 + 176) = llvm::Type::getInt8Ty(*(a1 + 72), v8);
  *(a1 + 184) = llvm::Type::getInt16Ty(*(a1 + 72), v9);
  *(a1 + 192) = llvm::Type::getInt32Ty(*(a1 + 72), v10);
  *(a1 + 200) = llvm::Type::getInt64Ty(*(a1 + 72), v11);
  v12 = *(a1 + 152);
  *(a1 + 208) = llvm::FixedVectorType::get();
  v13 = *(a1 + 160);
  *(a1 + 216) = llvm::FixedVectorType::get();
  v14 = *(a1 + 176);
  *(a1 + 224) = llvm::FixedVectorType::get();
  v15 = *(a1 + 184);
  *(a1 + 232) = llvm::FixedVectorType::get();
  v16 = *(a1 + 192);
  *(a1 + 240) = llvm::FixedVectorType::get();
  v17 = *(a1 + 152);
  *(a1 + 248) = llvm::FixedVectorType::get();
  v18 = *(a1 + 160);
  *(a1 + 256) = llvm::FixedVectorType::get();
  v19 = *(a1 + 152);
  *(a1 + 264) = llvm::FixedVectorType::get();
  v20 = *(a1 + 160);
  *(a1 + 272) = llvm::FixedVectorType::get();
  v21 = *(a1 + 176);
  *(a1 + 280) = llvm::FixedVectorType::get();
  v22 = *(a1 + 184);
  *(a1 + 288) = llvm::FixedVectorType::get();
  v23 = *(a1 + 192);
  *(a1 + 296) = llvm::FixedVectorType::get();
  v24 = *(a1 + 160);
  *(a1 + 304) = llvm::FixedVectorType::get();
  v25 = *(a1 + 72);
  *(a1 + 312) = llvm::IntegerType::get();
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = this;
  return a1;
}

uint64_t sub_23C504E2C(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = a2;
  v5 = *a2;
  v6 = *(a1 + 160);
  if (*a2 != v6)
  {
    if ((*(v5 + 8) & 0xFE) == 0x12)
    {
      v8 = *(v5 + 32);
      v9 = *(a1 + 160);
      v6 = llvm::FixedVectorType::get();
      v10 = *(v5 + 8);
    }

    else
    {
      v10 = *(v5 + 8);
    }

    if ((v10 & 0xFE) == 0x12)
    {
      v10 = *(**(v5 + 16) + 8);
    }

    if (v10 > 6)
    {
      v14 = 257;
      if (a3)
      {
        return sub_23C49EF30(a1 + 8, v4, v6, v13);
      }

      else
      {
        return sub_23C49EF94(a1 + 8, v4, v6, v13);
      }
    }

    else
    {
      v14 = 257;
      return sub_23C4B284C(a1 + 8, v4, v6, v13);
    }
  }

  return v4;
}

uint64_t sub_23C504F18(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  *a3 = 1;
  if ((*(a2 + 8) & 0xFE) == 0x12)
  {
    *a3 = *(a2 + 32);
    a2 = **(a2 + 16);
  }

  result = 0;
  v7 = vextq_s8(*(a1 + 152), *(a1 + 152), 8uLL);
  v5 = *(a1 + 176);
  v8 = *(a1 + 168);
  v9 = vextq_s8(*(a1 + 184), *(a1 + 184), 8uLL);
  v10 = v5;
  while (a2 != v7.i64[result])
  {
    if (++result == 6)
    {
      result = 9;
      break;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *sub_23C504FD4(void *a1, uint64_t *a2, uint64_t a3, int a4, int a5)
{
  v7 = a2;
  v29 = *MEMORY[0x277D85DE8];
  v24 = a2;
  v9 = *a2;
  if (a1[19] == a3)
  {
    v10 = 20;
  }

  else
  {
    if (a1[23] != a3 && a1[22] != a3 && a1[21] != a3)
    {
      goto LABEL_22;
    }

    v10 = 24;
  }

  v11 = a1[v10];
  if ((*(v9 + 8) & 0xFE) == 0x12)
  {
    v12 = *(v9 + 32);
    v11 = llvm::FixedVectorType::get();
  }

  v13 = *(v11 + 8) & 0xFE;
  if (v13 == 18)
  {
    v14 = *(**(v11 + 16) + 8);
  }

  else
  {
    v14 = *(v11 + 8);
  }

  if (v14 > 6)
  {
    v28 = 257;
    if (a4)
    {
      v16 = 40;
    }

    else
    {
      v16 = 39;
    }

    v17 = sub_23C49ACF8((a1 + 1), v16, v7, v11, &v25);
    goto LABEL_21;
  }

  if (!a5)
  {
    v28 = 257;
    v17 = sub_23C4B284C((a1 + 1), v7, v11, &v25);
LABEL_21:
    v7 = v17;
    goto LABEL_22;
  }

  if (v13 == 18)
  {
    v15 = (*(v11 + 32) - 1);
  }

  else
  {
    v15 = 0;
  }

  v25 = &v27;
  v26 = xmmword_23C532570;
  sub_23C4B01BC(&v25, "llvm.agx2.unopt.convert", "");
  v20 = strlen(off_278BBFE80[v15]);
  sub_23C4B01BC(&v25, off_278BBFE80[v15], &off_278BBFE80[v15][v20]);
  v21 = strlen(off_278BBFE60[v15]);
  sub_23C4B01BC(&v25, off_278BBFE60[v15], &off_278BBFE60[v15][v21]);
  v22 = sub_23C505220(a1, v25, v26, v11, v9);
  v23[16] = 257;
  v7 = sub_23C497A7C((a1 + 1), *(v22 + 24), v22, &v24, 1, v23);
  if (v25 != &v27)
  {
    free(v25);
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t sub_23C505220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[2] = *MEMORY[0x277D85DE8];
  __src[0] = a5;
  __src[1] = 0;
  v12[0] = v13;
  v12[1] = 0x200000000;
  sub_23C49BA18(v12, __src, v12);
  llvm::FunctionType::get();
  v6 = *(a1 + 320);
  llvm::Module::getOrInsertFunction();
  v8 = v7;
  if (v12[0] != v13)
  {
    free(v12[0]);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_23C505300(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2;
  v5 = *a2;
  v6 = a1[19];
  if (v6 == a3 || (v6 = a1[23], v6 == a3) || (v6 = a1[22], v6 == a3))
  {
    if ((*(v5 + 8) & 0xFE) == 0x12)
    {
      v7 = *(v5 + 32);
      v6 = llvm::FixedVectorType::get();
    }

    if ((*(v6 + 8) & 0xFE) == 0x12)
    {
      v8 = *(**(v6 + 16) + 8);
    }

    else
    {
      v8 = *(v6 + 8);
    }

    v12 = 257;
    if (v8 > 6)
    {
      return sub_23C49ACF8((a1 + 1), 38, v3, v6, v11);
    }

    else
    {
      return sub_23C49FEB4((a1 + 1), v3, v6, v11);
    }
  }

  return v3;
}

llvm::Value *sub_23C5053E8(uint64_t a1, llvm::Value *a2, int a3, int a4)
{
  v4 = a2;
  v26 = *MEMORY[0x277D85DE8];
  v21 = a2;
  v5 = a3 - 1;
  if ((a3 - 1) > 7 || ((0xDBu >> v5) & 1) == 0)
  {
    goto LABEL_15;
  }

  v8 = *a2;
  v9 = *(a1 + qword_23C532D70[v5]);
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v10 = *(v8 + 32);
    v9 = llvm::FixedVectorType::get();
  }

  v11 = *(v9 + 8) & 0xFE;
  if (v11 == 18)
  {
    v12 = *(**(v9 + 16) + 8);
  }

  else
  {
    v12 = *(v9 + 8);
  }

  if (v12 > 6)
  {
    v25 = 257;
    v14 = sub_23C49ACF8(a1 + 8, 38, v4, v9, &v22);
LABEL_14:
    v4 = v14;
    goto LABEL_15;
  }

  if (!a4)
  {
    v25 = 257;
    v14 = sub_23C49FEB4(a1 + 8, v4, v9, &v22);
    goto LABEL_14;
  }

  if (v11 == 18)
  {
    v13 = (*(v9 + 32) - 1);
  }

  else
  {
    v13 = 0;
  }

  v22 = &v24;
  v23 = xmmword_23C532570;
  sub_23C4B01BC(&v22, "llvm.agx2.unopt.convert", "");
  v17 = strlen(off_278BBFE60[v13]);
  sub_23C4B01BC(&v22, off_278BBFE60[v13], &off_278BBFE60[v13][v17]);
  v18 = strlen(off_278BBFE80[v13]);
  sub_23C4B01BC(&v22, off_278BBFE80[v13], &off_278BBFE80[v13][v18]);
  v19 = sub_23C505220(a1, v22, v23, v9, v8);
  v20[16] = 257;
  v4 = sub_23C497A7C(a1 + 8, *(v19 + 24), v19, &v21, 1, v20);
  if (v22 != &v24)
  {
    free(v22);
  }

LABEL_15:
  v15 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t sub_23C505600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v6 = *(*a2 + 32);
    a3 = llvm::FixedVectorType::get();
  }

  v9 = 257;
  return sub_23C49ACF8(a1 + 8, 49, a2, a3, v8);
}

uint64_t sub_23C505670(uint64_t a1, uint64_t *a2, int a3, int a4)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a3 == 1 && a4)
  {
    LOWORD(v23) = 257;
    v6 = *(a1 + 192);
    v7 = llvm::ConstantInt::get();
    result = sub_23C5057E8(a1 + 8, a2, v7, v22);
  }

  else
  {
    v9 = *(a1 + 192);
    v22[0] = llvm::ConstantInt::get();
    v10 = *(a1 + 192);
    v22[1] = llvm::ConstantInt::get();
    v11 = *(a1 + 192);
    v22[2] = llvm::ConstantInt::get();
    v12 = *(a1 + 192);
    v22[3] = llvm::ConstantInt::get();
    v13 = *(a1 + 192);
    v23 = llvm::ConstantInt::get();
    v14 = *(a1 + 192);
    v24 = llvm::ConstantInt::get();
    v15 = *(a1 + 192);
    v25 = llvm::ConstantInt::get();
    v16 = *(a1 + 192);
    v26 = llvm::ConstantInt::get();
    v17 = llvm::ConstantVector::get();
    v18 = *a2;
    v19 = llvm::UndefValue::get();
    v21[16] = 257;
    result = sub_23C49A3AC(a1 + 8, a2, v19, v17, v21);
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C5057E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    v6 = (*(**(a1 + 72) + 320))(*(a1 + 72), a2, a3);
    if (v6)
    {
      v7 = *(v6 + 16) >= 0x1Cu;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      sub_23C49B15C(a1, v6, a4);
    }
  }

  else
  {
    v6 = llvm::User::operator new(0x40);
    llvm::ExtractElementInst::ExtractElementInst();
    (*(**(a1 + 80) + 16))(*(a1 + 80), v6, a4, *(a1 + 48), *(a1 + 56));
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = *a1;
      v10 = &v9[4 * v8];
      do
      {
        v11 = *v9;
        v12 = *(v9 + 1);
        llvm::Instruction::setMetadata();
        v9 += 4;
      }

      while (v9 != v10);
    }
  }

  return v6;
}

uint64_t *sub_23C50593C(uint64_t a1, uint64_t *a2, int a3)
{
  v3 = a2;
  v24 = *MEMORY[0x277D85DE8];
  if ((*(*a2 + 8) & 0xFE) != 0x12)
  {
    llvm::FixedVectorType::get();
    v13 = llvm::UndefValue::get();
    v19 = 257;
    v14 = *(a1 + 192);
    v15 = llvm::ConstantInt::get();
    v12 = sub_23C505AA8(a1 + 8, v13, v3, v15, v18);
    goto LABEL_5;
  }

  if (*(*a2 + 32) != a3)
  {
    v5 = *(a1 + 192);
    v20 = llvm::ConstantInt::get();
    v6 = *(a1 + 192);
    v21 = llvm::ConstantInt::get();
    v7 = *(a1 + 192);
    v22 = llvm::ConstantInt::get();
    v8 = *(a1 + 192);
    v23 = llvm::ConstantInt::get();
    v9 = llvm::ConstantVector::get();
    v10 = *v3;
    v11 = llvm::UndefValue::get();
    v19 = 257;
    v12 = sub_23C49A3AC(a1 + 8, v3, v11, v9, v18);
LABEL_5:
    v3 = v12;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_23C505AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u && a4 && *(a4 + 16) <= 0x14u)
  {
    v10 = (*(**(a1 + 72) + 328))(*(a1 + 72), a2, a3, a4);
    if (v10)
    {
      v11 = *(v10 + 16) >= 0x1Cu;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      sub_23C49B15C(a1, v10, a5);
    }
  }

  else
  {
    v19 = 257;
    v10 = llvm::User::operator new(0x40);
    MEMORY[0x23EED4250](v10, a2, a3, a4, v18, 0);
    (*(**(a1 + 80) + 16))(*(a1 + 80), v10, a5, *(a1 + 48), *(a1 + 56));
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = *a1;
      v14 = &v13[4 * v12];
      do
      {
        v15 = *v13;
        v16 = *(v13 + 1);
        llvm::Instruction::setMetadata();
        v13 += 4;
      }

      while (v13 != v14);
    }
  }

  return v10;
}

uint64_t sub_23C505C18(uint64_t a1, llvm::Type *a2, int a3)
{
  LODWORD(v3) = a3;
  v4 = a2;
  v6 = *a2;
  v7 = *a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v7 = **(v6 + 2);
  }

  NullValue = llvm::Constant::getNullValue(v7, a2);
  v9 = *(v7 + 2);
  if (v9 > 6u)
  {
    v10 = llvm::ConstantInt::get();
  }

  else
  {
    v10 = llvm::ConstantFP::get();
  }

  v11 = v10;
  v12 = *(v6 + 8);
  v13 = v12 - v3;
  if (v12 > v3)
  {
    v3 = v3;
    do
    {
      if (v3 == 3)
      {
        v14 = v11;
      }

      else
      {
        v14 = NullValue;
      }

      v19 = 257;
      v15 = *(a1 + 192);
      v16 = llvm::ConstantInt::get();
      v4 = sub_23C505AA8(a1 + 8, v4, v14, v16, v18);
      ++v3;
      --v13;
    }

    while (v13);
  }

  return v4;
}

uint64_t sub_23C505D44(uint64_t a1, llvm::Constant *a2, llvm::Constant **a3)
{
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    sub_23C505E0C(a2, a3, 0);
    v6 = *(*a2 + 32);
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        if (!a3[i])
        {
          v12 = 257;
          v8 = *(a1 + 192);
          v9 = llvm::ConstantInt::get();
          a3[i] = sub_23C5057E8(a1 + 8, a2, v9, v11);
        }
      }
    }
  }

  else
  {
    *a3 = a2;
    return 1;
  }

  return v6;
}

void sub_23C505E0C(llvm::Constant *a1, void *a2, unsigned int a3)
{
  v24 = *MEMORY[0x277D85DE8];
  bzero(a2, 0x20uLL);
  if (a1 && a3 <= 5)
  {
    while (1)
    {
      v6 = *(a1 + 16);
      if (v6 != 90)
      {
        break;
      }

      v7 = *(a1 - 4);
      if (v7)
      {
        v8 = *(v7 + 16) == 16;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        v9 = (v7 + 24);
        if (*(v7 + 32) >= 0x41u)
        {
          v9 = *v9;
        }

        v10 = *v9;
        if (!*(a2 + v10))
        {
          *(a2 + v10) = *(a1 - 8);
        }

        a1 = *(a1 - 12);
        if (a1)
        {
          continue;
        }
      }

      goto LABEL_33;
    }

    if (v6 == 91)
    {
      memset(v23, 0, sizeof(v23));
      memset(v22, 0, sizeof(v22));
      sub_23C505E0C(*(a1 - 8), v23, a3 + 1);
      sub_23C505E0C(*(a1 - 4), v22, a3 + 1);
      v11 = *(*a1 + 32);
      if (v11)
      {
        v12 = 0;
        v13 = *(a1 - 8);
        v14 = *v13;
        v15 = *(*v13 + 32);
        do
        {
          if (!*(a2 + v12))
          {
            v16 = *(*(a1 + 8) + 4 * v12);
            if (v16 == -1)
            {
              v18 = **(v14 + 16);
              v17 = llvm::UndefValue::get();
            }

            else if (v16 >= v15)
            {
              v17 = *(v22 + v16 - v15);
            }

            else
            {
              v17 = *(v23 + v16);
            }

            *(a2 + v12) = v17;
          }

          ++v12;
        }

        while (v11 != v12);
      }
    }

    else if (v6 <= 0x14)
    {
      v19 = *(*a1 + 32);
      if (v19)
      {
        for (i = 0; i != v19; ++i)
        {
          if (!*(a2 + i))
          {
            *(a2 + i) = llvm::Constant::getAggregateElement(a1);
          }
        }
      }
    }
  }

LABEL_33:
  v21 = *MEMORY[0x277D85DE8];
}

void sub_23C505FD4(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = *(*a2 + 12);
  bzero(a3, 8 * v6);
  if (*(a2 + 16) == 93)
  {
    v7 = a2;
    do
    {
      if (*(v7 + 18) != 1)
      {
        break;
      }

      v8 = *v7[8];
      if (!*(a3 + v8))
      {
        *(a3 + v8) = *(v7 - 4);
      }

      v7 = *(v7 - 8);
    }

    while (*(v7 + 16) == 93 && v7 != 0);
  }

  v13 = 0;
  if (v6)
  {
    v10 = 0;
    do
    {
      if (!*(a3 + v10))
      {
        v12[16] = 257;
        v11 = sub_23C49B32C(a1 + 8, a2, &v13, 1, v12);
        v10 = v13;
        *(a3 + v13) = v11;
      }

      v13 = ++v10;
    }

    while (v10 < v6);
  }
}

uint64_t sub_23C5060BC(uint64_t a1, int a2, uint64_t *a3)
{
  if (a2 != 1)
  {
    v5 = *(a1 + 192);
    llvm::ConstantInt::get();
    Splat = llvm::ConstantDataVector::getSplat();
    v7 = *a3;
    llvm::FixedVectorType::get();
    v8 = llvm::UndefValue::get();
    v16 = 257;
    v9 = *(a1 + 192);
    v10 = llvm::ConstantInt::get();
    v11 = sub_23C505AA8(a1 + 8, v8, a3, v10, v15);
    v12 = *v11;
    v13 = llvm::UndefValue::get();
    v16 = 257;
    return sub_23C49A3AC(a1 + 8, v11, v13, Splat, v15);
  }

  return a3;
}

uint64_t sub_23C506198(uint64_t a1, llvm::Type **a2, int a3)
{
  v4 = a2;
  v6 = *a2;
  if (llvm::Type::getScalarSizeInBits(*a2) != 32)
  {
    v7 = *(a1 + 192);
    if ((*(v6 + 2) & 0xFE) == 0x12)
    {
      v8 = *(v6 + 8);
      v9 = *(a1 + 192);
      v7 = llvm::FixedVectorType::get();
    }

    v13 = 257;
    if (a3)
    {
      v10 = 40;
    }

    else
    {
      v10 = 39;
    }

    return sub_23C49ACF8(a1 + 8, v10, v4, v7, v12);
  }

  return v4;
}

uint64_t sub_23C506244(uint64_t a1, uint64_t a2, llvm::Constant *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = a3;
  if ((*(*a3 + 8) & 0xFE) == 0x12)
  {
    v6 = **(*(a2 + 24) + 16);
    v7 = *(*a3 + 32);
    llvm::FixedVectorType::get();
    v8 = llvm::UndefValue::get();
    memset(v20, 0, sizeof(v20));
    sub_23C505D44(a1, a3, v20);
    v9 = *(*a3 + 32);
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        v16 = *(v20 + i);
        v18 = 257;
        v11 = sub_23C497A7C(a1 + 8, *(a2 + 24), a2, &v16, 1, v17);
        v16 = v11;
        v18 = 257;
        v12 = *(a1 + 192);
        v13 = llvm::ConstantInt::get();
        v8 = sub_23C505AA8(a1 + 8, v8, v11, v13, v17);
      }
    }
  }

  else
  {
    v18 = 257;
    v8 = sub_23C497A7C(a1 + 8, *(a2 + 24), a2, &v19, 1, v17);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_23C5063B8(uint64_t a1, llvm::Constant *a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    memset(v21, 0, sizeof(v21));
    sub_23C505D44(a1, a2, v21);
    v6 = *(*a2 + 32);
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = (*(a3 + 16))(a3, *(v21 + v7));
        v10 = v9;
        if (!v8)
        {
          v11 = *v9;
          v12 = *(*a2 + 32);
          llvm::FixedVectorType::get();
          v8 = llvm::UndefValue::get();
        }

        v20 = 257;
        v13 = *(a1 + 192);
        v14 = llvm::ConstantInt::get();
        v8 = sub_23C505AA8(a1 + 8, v8, v10, v14, v19);
        ++v7;
      }

      while (v6 != v7);
    }

    else
    {
      v8 = 0;
    }

    v18 = *MEMORY[0x277D85DE8];
    return v8;
  }

  else
  {
    v15 = *(a3 + 16);
    v16 = *MEMORY[0x277D85DE8];

    return v15(a3);
  }
}

uint64_t sub_23C50654C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = 257;
  v4 = sub_23C49EA2C(a1 + 8, a2, a3, v14);
  v15 = 257;
  v5 = *(a1 + 192);
  v6 = llvm::ConstantInt::get();
  v7 = sub_23C5057E8(a1 + 8, v4, v6, v14);
  v8 = *(*v4 + 32);
  if (v8 >= 2)
  {
    for (i = 1; i != v8; ++i)
    {
      v15 = 257;
      v10 = *(a1 + 192);
      v11 = llvm::ConstantInt::get();
      v12 = sub_23C5057E8(a1 + 8, v4, v11, v14);
      v15 = 257;
      v7 = sub_23C4A0BD4(a1 + 8, v7, v12, v14);
    }
  }

  return v7;
}

uint64_t sub_23C506630(uint64_t a1, llvm::Type ***a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  if (*a2 != *a3)
  {
    v5 = sub_23C5060BC(a1, *(*a2 + 8), a3);
  }

  v10 = 257;
  sub_23C497D84((a1 + 8), a4, a2, v5, v9);
  v10 = 257;
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t sub_23C5066D8(uint64_t a1, llvm::Type ***a2, uint64_t a3, int a4)
{
  if (((*a2)[1] & 0xFE) == 0x12)
  {
    v6 = *(*a2)[2];
  }

  if (a4)
  {
    v7 = llvm::ConstantInt::get();
    v8 = sub_23C506630(a1, a2, v7, 40);
    v9 = llvm::ConstantInt::get();
    v10 = a1;
    v11 = v8;
    v12 = 38;
  }

  else
  {
    v9 = llvm::ConstantInt::get();
    v10 = a1;
    v11 = a2;
    v12 = 36;
  }

  return sub_23C506630(v10, v11, v9, v12);
}

uint64_t sub_23C5067B4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_23C50593C(a1, a2, 4);
  v10 = 257;
  v6 = *(a1 + 192);
  v7 = llvm::ConstantInt::get();
  return sub_23C505AA8(a1 + 8, v5, a3, v7, v9);
}

uint64_t sub_23C506824(uint64_t a1, llvm::Type *a2)
{
  v15 = *(a1 + 56);
  v4 = *(*(v15 + 56) + 80);
  if (v4)
  {
    v5 = (v4 - 24);
  }

  else
  {
    v5 = 0;
  }

  llvm::IRBuilderBase::getCurrentDebugLocation(&v16, (a1 + 8));
  v17 = *(a1 + 104);
  FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v5);
  if (FirstInsertionPt)
  {
    v7 = FirstInsertionPt - 24;
  }

  else
  {
    v7 = 0;
  }

  sub_23C4C30FC(a1 + 8, v7);
  v14 = 257;
  v8 = sub_23C506924((a1 + 8), a2, v13);
  v10 = v15;
  v11 = v16;
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v12 = v17;
  sub_23C49769C(&v10, a1 + 8);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t sub_23C506924(unsigned int **a1, llvm::Type *a2, uint64_t a3)
{
  Module = llvm::BasicBlock::getModule(a1[6]);
  DataLayout = llvm::Module::getDataLayout(Module);
  llvm::DataLayout::getPrefTypeAlign(DataLayout, a2);
  v8 = DataLayout[1];
  v9 = llvm::User::operator new(0x48);
  llvm::AllocaInst::AllocaInst();
  (*(*a1[10] + 16))(a1[10], v9, a3, a1[6], a1[7]);
  v10 = *(a1 + 2);
  if (v10)
  {
    v11 = *a1;
    v12 = &v11[4 * v10];
    do
    {
      v13 = *v11;
      v14 = *(v11 + 1);
      llvm::Instruction::setMetadata();
      v11 += 4;
    }

    while (v11 != v12);
  }

  return v9;
}

uint64_t sub_23C506A1C(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a1[41];
  llvm::ValueAsMetadata::get();
  v3 = a1[24];
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  v4 = a1[24];
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  v5 = a1[42];
  Impl = llvm::MDTuple::getImpl();
  v7 = *MEMORY[0x277D85DE8];

  return sub_23C49B500(v2, Impl);
}

uint64_t sub_23C506AF0(const char *a1, uint64_t a2, unsigned int *a3, _DWORD *a4)
{
  result = *(a2 - 8 * *(a2 + 8) + 8 * *a3);
  if (a1)
  {
    result = sub_23C4A57A0(result, a1);
    if (!result)
    {
      return result;
    }

    v9 = *a3;
    v10 = *a3 + 1;
    *a3 = v10;
    result = *(a2 - 8 * *(a2 + 8) + 8 * v10);
    if (!result || *result - 1 >= 2)
    {
      result = 0;
      *a3 = v9 + 2;
      return result;
    }

    *a3 = v9 + 2;
  }

  else
  {
    if (!result)
    {
      return result;
    }

    if (*result - 1 >= 2)
    {
      return 0;
    }
  }

  v11 = *(result + 128);
  if (v11)
  {
    v12 = *(v11 + 16) == 16;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    return 0;
  }

  v13 = (v11 + 24);
  if (*(v11 + 32) >= 0x41u)
  {
    v13 = *v13;
  }

  *a4 = *v13;
  return 1;
}

uint64_t sub_23C506BD8(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  result = sub_23C4A57A0(*(a1 - 8 * *(a1 + 8) + 8 * *a2), "air.location_index");
  if (result)
  {
    v9 = *a2 + 1;
    result = sub_23C506AF0(0, a1, &v9, a3);
    if (result)
    {
      v10 = *a2 + 2;
      result = sub_23C506AF0(0, a1, &v10, a4);
      if (result)
      {
        *a2 += 3;
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_23C506C8C(uint64_t a1, _DWORD *a2, _DWORD *a3, BOOL *a4)
{
  String = llvm::MDString::getString(*(a1 - 8 * *(a1 + 8) + 8));
  if (v9 != 11)
  {
    return 0;
  }

  if (*String != 0x706D61732E726961 || *(String + 3) != 0x72656C706D61732ELL)
  {
    return 0;
  }

  *a4 = 0;
  *a3 = 1;
  v12 = *(a1 + 8);
  v21 = 2;
  if (v12 >= 3)
  {
    do
    {
      if (sub_23C506BD8(a1, &v21, a2, a3))
      {
        v13 = v21;
      }

      else
      {
        v14 = sub_23C506AF0("air.binding", a1, &v21, a2);
        v15 = v21;
        v13 = v21;
        if ((v14 & 1) == 0)
        {
          v13 = ++v21;
          if (sub_23C4A57A0(*(a1 - 8 * *(a1 + 8) + 8 * v15), "air.arg_type_name"))
          {
            v16 = v15 + 2;
            v21 = v16;
            v17 = llvm::MDString::getString(*(a1 - 8 * *(a1 + 8) + 8 * v13));
            v19 = v18 >= 5 && *v17 == 1634890337 && *(v17 + 4) == 121;
            *a4 = v19;
            v13 = v16;
          }
        }
      }
    }

    while (v13 < v12);
  }

  return 1;
}

BOOL sub_23C506E20(uint64_t a1, _DWORD *a2, _DWORD *a3, _BYTE *a4, _BYTE *a5, BOOL *a6, _BYTE *a7)
{
  v14 = sub_23C4A57A0(*(a1 - 8 * *(a1 + 8) + 8), "air.texture");
  if (v14)
  {
    *a4 = 1;
    v30 = a6;
    v31 = a5;
    *a5 = 0;
    *a6 = 0;
    *a7 = 0;
    v15 = *(a1 + 8);
    v32 = 2;
    if (v15 >= 3)
    {
      do
      {
        if ((sub_23C506BD8(a1, &v32, a2, a3) & 1) == 0)
        {
          if (sub_23C506AF0("air.binding", a1, &v32, a2))
          {
            *a3 = 1;
          }

          else
          {
            v16 = v32;
            v17 = ++v32;
            v18 = *(a1 - 8 * *(a1 + 8) + 8 * v16);
            if (!*v18)
            {
              String = llvm::MDString::getString(v18);
              if (v20 == 9)
              {
                if (*String != 0x746972772E726961 || *(String + 8) != 101)
                {
                  continue;
                }

                *a4 = 0;
                goto LABEL_34;
              }

              if (v20 == 17)
              {
                if (*String == 0x5F6772612E726961 && *(String + 8) == 0x6D616E5F65707974 && *(String + 16) == 101)
                {
                  v32 = v16 + 2;
                  v24 = llvm::MDString::getString(*(a1 - 8 * *(a1 + 8) + 8 * v17));
                  v26 = v25 >= 5 && *v24 == 1634890337 && *(v24 + 4) == 121;
                  *v30 = v26;
                }

                continue;
              }

              if (v20 == 14 && *String == 0x646165722E726961 && *(String + 6) == 0x65746972775F6461)
              {
                *a4 = 1;
LABEL_34:
                *v31 = 1;
              }
            }
          }
        }
      }

      while (v32 < v15);
    }
  }

  return v14;
}

void *sub_23C507060(void *result, void *a2)
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

  v9 = result[4];
  v8 = result[5];
  v10 = v8 + v9;
  if (v7 == v8 + v9)
  {
    if (v9 < 0x200)
    {
      v11 = result[3];
      v12 = v11 - *result;
      if (v5 - v6 < v12)
      {
        operator new();
      }

      v13 = v12 >> 2;
      if (v11 == *result)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13;
      }

      sub_23C5023F4(v14);
    }

    result[4] = v9 - 512;
    v15 = *v6;
    result[1] = v6 + 8;
    result = sub_23C5022F0(result, &v15);
    v6 = v3[1];
    v8 = v3[5];
    v10 = v3[4] + v8;
  }

  *(*&v6[(v10 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v10 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

BOOL sub_23C507510(uint64_t a1, _DWORD *a2, void *a3)
{
  result = sub_23C4A57A0(*(a1 - 8 * *(a1 + 8) + 8 * *a2), "air.struct_type_info");
  if (result)
  {
    v7 = (*a2)++;
    v8 = *(a1 - 8 * *(a1 + 8) + 8 * (v7 + 1));
    if (v8)
    {
      if (((*v8 < 0x23uLL) & (0x7FFFFFFF0uLL >> *v8)) == 0)
      {
        v8 = 0;
      }
    }

    *a3 = v8;
    *a2 = v7 + 2;
    return v8 != 0;
  }

  return result;
}

BOOL sub_23C5075AC(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, unsigned int *a5, _DWORD *a6, uint64_t *a7, _BYTE *a8, char *a9)
{
  if (!sub_23C4A57A0(*(a1 - 8 * *(a1 + 8) + 8), "air.buffer"))
  {
    result = sub_23C4A57A0(*(a1 - 8 * *(a1 + 8) + 8), "air.indirect_buffer");
    if (!result)
    {
      return result;
    }
  }

  *a8 = 0;
  v18 = *(a1 + 8);
  LODWORD(v47) = 2;
  if (v18 >= 3)
  {
    do
    {
      if ((sub_23C506BD8(a1, &v47, a3, a4) & 1) == 0 && (sub_23C506AF0("air.buffer_size", a1, &v47, a5) & 1) == 0 && (sub_23C506AF0("air.arg_type_size", a1, &v47, a6) & 1) == 0 && !sub_23C507510(a1, &v47, a7))
      {
        LODWORD(v47) = v47 + 1;
      }
    }

    while (v47 < v18);
  }

  v19 = *a5;
  if (*a5)
  {
    if (v19 <= 0xFFFFFFFC && a2 == 2)
    {
      v19 = (v19 + 3) & 0xFFFFFFFC;
    }

    *a5 = v19;
  }

  if (!*a7)
  {
    v35 = 0;
    goto LABEL_58;
  }

  v52 = *a7;
  v47 = v51;
  v48 = v51;
  v49 = 4;
  v50 = 0;
  v45 = 0u;
  v46 = 0u;
  *__p = 0u;
  sub_23C507060(__p, &v52);
  v21 = *(&v46 + 1);
  if (!*(&v46 + 1))
  {
LABEL_46:
    v35 = 0;
    goto LABEL_49;
  }

  while (1)
  {
    v22 = __p[1];
    v23 = v46;
    v24 = *(*(__p[1] + ((v46 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v46 & 0x1FF));
    --v21;
    *&v46 = v46 + 1;
    *(&v46 + 1) = v21;
    if (v46 >= 0x400)
    {
      operator delete(*__p[1]);
      __p[1] = v22 + 8;
      *&v46 = v23 - 511;
    }

    sub_23C4F493C(&v47, v24);
    if (v25)
    {
      v43 = 0;
      v26 = v24[2];
      if (v26)
      {
        break;
      }
    }

LABEL_45:
    if (!v21)
    {
      goto LABEL_46;
    }
  }

  while (1)
  {
    v42 = 0;
    if (!sub_23C507510(v24, &v43, &v42))
    {
      break;
    }

    sub_23C507060(__p, &v42);
    v27 = v43;
LABEL_43:
    if (v27 >= v26)
    {
      v21 = *(&v46 + 1);
      goto LABEL_45;
    }
  }

  v28 = v43;
  if (!sub_23C4A57A0(*&v24[2 * v43 + -2 * v24[2]], "air.indirect_argument"))
  {
    v27 = v28 + 1;
    goto LABEL_42;
  }

  v27 = v28 + 1;
  v53[0] = v28 + 1;
  if (sub_23C506AF0(0, v24, v53, &v41))
  {
    goto LABEL_40;
  }

  v29 = *&v24[2 * v27 + -2 * v24[2]];
  if (!v29)
  {
    goto LABEL_42;
  }

  v30 = *v29;
  if (v30 > 0x22 || ((0x7FFFFFFF0uLL >> v30) & 1) == 0)
  {
    goto LABEL_42;
  }

  String = llvm::MDString::getString(*&v29[-8 * *(v29 + 2) + 8]);
  if (v32 == 21)
  {
    v33 = *String == 0x69646E692E726961 && String[1] == 0x6E6F635F74636572;
    if (v33 && *(String + 13) == 0x746E6174736E6F63)
    {
LABEL_40:
      v27 = v28 + 2;
LABEL_42:
      v43 = v27;
      goto LABEL_43;
    }
  }

  v35 = 1;
LABEL_49:
  v36 = __p[1];
  v37 = v45;
  v38 = v45 - __p[1];
  if (v45 - __p[1] >= 0x11)
  {
    do
    {
      v39 = *v36++;
      operator delete(v39);
      v38 -= 8;
    }

    while (v38 > 0x10);
  }

  while (v36 != v37)
  {
    v40 = *v36++;
    operator delete(v40);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v48 != v47)
  {
    free(v48);
  }

LABEL_58:
  *a9 = v35;
  return 1;
}

BOOL sub_23C507938(uint64_t a1)
{
  v2 = sub_23C4B1B90(a1, *(*(a1 + 400) + 128));
  if (v2)
  {
    v3 = sub_23C4B1878(a1);
    sub_23C4B03D4(v3, v4);
    *(a1 + 774) = 1;
    v5 = *(a1 + 744);
    v6 = *(a1 + 736) - *(a1 + 752);
    sub_23C4B0A04((a1 + 704), 4, 0);
    sub_23C4B2DFC((a1 + 704), 6, unk_23C532DCC);
    sub_23C4B03D4(a1 + 704, v6 + v5);
    sub_23C4B1830(1uLL);
  }

  return v2;
}

void sub_23C507B50(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  sub_23C49F8D0(v24, &unk_23C53F34D);
  sub_23C49F8D0(v22, "save");
  if (*(a1 + 992))
  {
    v4 = "true";
  }

  else
  {
    v4 = "false";
  }

  sub_23C507EC8(&v36, v22, v4);
  sub_23C49F8D0(v20, "toggle");
  if (*(a1 + 993))
  {
    v5 = "true";
  }

  else
  {
    v5 = "false";
  }

  sub_23C507EC8(&v37, v20, v5);
  if (SHIBYTE(v25) < 0)
  {
    sub_23C49F988(&__dst, v24[0], v24[1]);
  }

  else
  {
    __dst = *v24;
    v33 = v25;
  }

  sub_23C4B7B84(&v34.__r_.__value_.__l.__data_, &__dst, 0);
  sub_23C49F8D0(v27, "{");
  sub_23C4B7B84(&__p, v27, 0);
  if ((v31 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v31 & 0x80u) == 0)
  {
    v7 = v31;
  }

  else
  {
    v7 = v30;
  }

  v8 = std::string::append(&v34, p_p, v7);
  v9 = v8->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (v31 < 0)
  {
    operator delete(__p);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(__dst);
  }

  for (i = 0; i != 6; i += 3)
  {
    v11 = (&v36 + i * 8);
    if (SHIBYTE(v36.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      sub_23C49F988(&v34, v11->__r_.__value_.__l.__data_, v11->__r_.__value_.__l.__size_);
    }

    else
    {
      v34 = *v11;
    }

    v12 = SHIBYTE(v34.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_23C49F988(&v26, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
    }

    else
    {
      v26 = v34;
    }

    sub_23C4B7B84(&__p, &v26, 1);
    if ((v31 & 0x80u) == 0)
    {
      v13 = &__p;
    }

    else
    {
      v13 = __p;
    }

    if ((v31 & 0x80u) == 0)
    {
      v14 = v31;
    }

    else
    {
      v14 = v30;
    }

    std::string::append(&v35, v13, v14);
    if (v31 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
      if ((v12 & 0x80000000) == 0)
      {
        continue;
      }
    }

    else if ((v12 & 0x80000000) == 0)
    {
      continue;
    }

    operator delete(v34.__r_.__value_.__l.__data_);
  }

  sub_23C49F8D0(&__p, "}");
  sub_23C4B7B84(&v34.__r_.__value_.__l.__data_, &__p, 0);
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v35;
  }

  else
  {
    v15 = v35.__r_.__value_.__r.__words[0];
  }

  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v35.__r_.__value_.__l.__size_;
  }

  v17 = std::string::insert(&v34, 0, v15, size);
  *a2 = *v17;
  v17->__r_.__value_.__r.__words[0] = 0;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (v31 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  for (j = 0; j != -6; j -= 3)
  {
    if (SHIBYTE(v37.__r_.__value_.__r.__words[j + 2]) < 0)
    {
      operator delete(*(&v36 + j * 8 + 24));
    }
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24[0]);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_23C507EC8(std::string *a1, const void **a2, char *__s)
{
  sub_23C49F8D0(__p, __s);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = &v13;
  sub_23C4ADD34(&v13, v5 + 3);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v13.__r_.__value_.__r.__words[0];
  }

  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    memmove(v6, v7, v5);
  }

  *(&v6->__r_.__value_.__l.__data_ + v5) = 2112032;
  if ((v12 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::string::append(&v13, v8, v9);
  *a1 = *v10;
  v10->__r_.__value_.__r.__words[0] = 0;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_23C507FCC(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 992);
  v3 = *(a1 + 320);
  Function = llvm::Module::getFunction();
  *(Function + 112) = 0;
  *(Function + 18) = *(Function + 18) & 0xC00F | 0x6A0;
  if (*(a1 + 992) == 1)
  {
    v5 = *(a1 + 320);
    v6 = llvm::Module::getFunction();
    v7 = *(a1 + 344);
    if (*(v7 + 1552))
    {
      v8 = strlen(*(v7 + 1552));
    }

    v9 = *(a1 + 192);
    sub_23C4A0414(a1);
    llvm::Value::replaceAllUsesWith();
    llvm::Function::eraseFromParent(v6);
    (*(**(a1 + 344) + 272))();
  }

  v10 = *(a1 + 320);
  v11 = llvm::Module::getFunction();
  if (v11)
  {
    v12 = v11;
    v13 = *(a1 + 344);
    if (*(v13 + 1560))
    {
      v14 = strlen(*(v13 + 1560));
    }

    v15 = *(v12 + 3);
    v16 = *(a1 + 320);
    llvm::Module::getOrInsertFunction();
    llvm::Value::replaceAllUsesWith();
    llvm::Function::eraseFromParent(v12);
  }

  v17 = *(a1 + 320);
  llvm::Module::getOrInsertNamedMetadata();
  if (*(a1 + 993) == 1)
  {
    operator new();
  }

  llvm::Value::setName();
  v18 = *(a1 + 320);
  if (llvm::Module::getGlobalVariable())
  {
    llvm::GlobalObject::setSection();
    sub_23C506A1C(a1);
  }

  v19 = *(a1 + 320);
  v20 = llvm::Module::getFunction();
  sub_23C4B22E0(a1, v20);
  result = sub_23C4AF8FC(*(a1 + 400), a1, *(a1 + 320), 1, 3);
  if (result)
  {
    result = (*(*a1 + 80))(a1);
    if (result)
    {
      sub_23C4C420C(a1);
      result = 1;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C50887C(uint64_t a1)
{
  if (*(a1 + 992))
  {
    return 4;
  }

  else
  {
    return 5;
  }
}

const char *sub_23C508890(uint64_t a1)
{
  if (*(a1 + 993))
  {
    v1 = "context_save_toggle";
  }

  else
  {
    v1 = "context_save";
  }

  v2 = "context_restore";
  if (*(a1 + 993))
  {
    v2 = "context_restore_toggle";
  }

  if (*(a1 + 992))
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void sub_23C5088D0(uint64_t a1)
{
  sub_23C4B130C(a1);

  JUMPOUT(0x23EED50C0);
}

BOOL sub_23C508B8C(uint64_t a1)
{
  v115 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + *(*a1 - 24) + 320);
  Function = llvm::Module::getFunction();
  v3 = *(*(Function + 1) + 24);
  v4 = sub_23C4B88A0(v3);
  v5 = (v3 - 32 * (*(v3 + 5) & 0x7FFFFFF));
  if (((v4 - v5) & 0x1FFFFFFFE0) != 0)
  {
    v106 = *v5;
    v6 = *v106;
    v7 = *(*(a1 + 56) + 8);
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v106 = 0;
  }

  v8 = sub_23C4C30FC(a1 + *(*a1 - 24) + 8, v3);
  MEMORY[0x28223BE20](v8);
  if (v9 >= 0x200)
  {
    v11 = 512;
  }

  else
  {
    v11 = v9;
  }

  v107 = (&v99 - v10);
  bzero(&v99 - v10, v11);
  if (v7)
  {
    if (*(v6 + 8) == 16)
    {
      sub_23C505FD4(a1 + *(*a1 - 24), v106, v107);
    }

    else
    {
      *v107 = v106;
    }

    v12 = 0;
    v13 = 0;
    v104 = a1 + 8;
    v102 = a1 + 3016;
    v101 = a1 + 3272;
    v100 = a1 + 2440;
    v103 = a1 + 192;
    do
    {
      v14 = *(*(a1 + 56) - 8 * *(*(a1 + 56) + 8) + 8 * v12);
      if (!v14)
      {
        goto LABEL_66;
      }

      v15 = *v14;
      if (v15 > 0x22)
      {
        goto LABEL_66;
      }

      if (((0x7FFFFFFF0uLL >> v15) & 1) == 0)
      {
        goto LABEL_66;
      }

      v16 = *&v14[-8 * *(v14 + 2)];
      if (!v16 || *v16)
      {
        goto LABEL_66;
      }

      String = llvm::MDString::getString(v16);
      v19 = String;
      v20 = v18;
      v21 = v107[v12];
      if (v18 > 11)
      {
        if (v18 == 12)
        {
          if (*String == 0x65766F632E726961 && *(String + 8) == 1701273970)
          {
            goto LABEL_66;
          }
        }

        else if (v18 == 17)
        {
          v28 = *String == 0x646E65722E726961 && *(String + 8) == 0x65677261745F7265;
          if (v28 && *(String + 16) == 116)
          {
            *v108 = 0;
            LODWORD(v111) = 1;
            if (!sub_23C506AF0(0, v14, &v111, &v108[4]))
            {
              goto LABEL_116;
            }

            LODWORD(v111) = 2;
            if (!sub_23C506AF0(0, v14, &v111, v108))
            {
              goto LABEL_116;
            }

            v30 = sub_23C50593C(a1 + *(*a1 - 24), v21, 4);
            if (*v108)
            {
              v34 = v101 + 32 * *&v108[4];
            }

            else
            {
              v34 = v102 + 32 * *&v108[4];
            }

            if (*(v34 + 24))
            {
              v35 = sub_23C4B245C(a1 + *(*a1 - 24), v30, *v34, *(v100 + (*&v108[4] << 6) + 34), *(v100 + (*&v108[4] << 6) + 33), v31, v32, v33);
              v36 = *(*a1 - 24);
              v37 = *(v34 + 24);
              goto LABEL_64;
            }

            goto LABEL_66;
          }
        }
      }

      else if (v18 == 9)
      {
        if (*String == 0x747065642E726961 && *(String + 8) == 104)
        {
          v39 = *(*a1 - 24);
          v37 = *(a1 + 3552);
          goto LABEL_61;
        }
      }

      else if (v18 == 11 && *String == 0x6E6574732E726961 && *(String + 3) == 0x6C69636E6574732ELL)
      {
        ScalarSizeInBits = llvm::Type::getScalarSizeInBits(*v21);
        v24 = a1 + *(*a1 - 24);
        v25 = *(v24 + 184);
        v114 = 257;
        if (ScalarSizeInBits > 0x10)
        {
          v26 = v24 + 8;
          v27 = 38;
        }

        else
        {
          v26 = v24 + 8;
          v27 = 39;
        }

        v35 = sub_23C49ACF8(v26, v27, v21, v25, &v111);
        v36 = *(*a1 - 24);
        v37 = *(a1 + 3576);
LABEL_64:
        v59 = (v104 + v36);
        goto LABEL_65;
      }

      if (sub_23C509554(String, v18))
      {
        if (sub_23C50965C(*(a1 + 3860), v19, v20))
        {
          v41 = a1 + *(*a1 - 24);
          v42 = *(v41 + 192);
          if (*(*(a1 + 2960) + 32) >> 12 == 1)
          {
            v43 = llvm::ConstantInt::get();
            v114 = 257;
            v44 = sub_23C49A8E0(v41 + 8, v21, v43, &v111);
            v45 = a1 + *(*a1 - 24);
            v46 = *(v45 + 192);
            v47 = llvm::ConstantInt::get();
            v114 = 257;
            sub_23C497D84((v45 + 8), 32, v44, v47, &v111);
            v48 = *(a1 + *(*a1 - 24) + 192);
            llvm::ConstantInt::get();
            v49 = *(v103 + *(*a1 - 24));
            llvm::ConstantInt::get();
            v114 = 257;
            Select = llvm::IRBuilderBase::CreateSelect();
          }

          else
          {
            v51 = llvm::ConstantInt::get();
            v114 = 257;
            v52 = sub_23C49A8E0(v41 + 8, v21, v51, &v111);
            v53 = a1 + *(*a1 - 24);
            v54 = *(*(a1 + 2960) + 32);
            v55 = *(v53 + 192);
            v56 = llvm::ConstantInt::get();
            v114 = 257;
            v57 = sub_23C49A668(v53 + 8, v52, v56, &v111);
            v58 = *(*a1 - 24);
            v114 = 257;
            Select = sub_23C49A98C(v104 + v58, v57, v52, &v111);
          }

          v21 = Select;
        }

        v39 = *(*a1 - 24);
        v37 = *(a1 + 3600);
LABEL_61:
        v59 = (v104 + v39);
        v35 = v21;
LABEL_65:
        sub_23C4BA8C0(v59, v35, v37, 0);
      }

LABEL_66:
      v13 = ++v12 >= v7;
    }

    while (v7 != v12);
  }

  if (v106)
  {
    sub_23C4D9264(v106);
  }

  llvm::Instruction::eraseFromParent(v3);
  llvm::Function::eraseFromParent(Function);
  v60 = *(a1 + *(*a1 - 24) + 320);
  v61 = llvm::Module::getFunction();
  if (v61)
  {
    v62 = v61;
    v111 = v113;
    v112 = 0x400000000;
    v63 = *(v61 + 8);
    while (v63)
    {
      v64 = *(v63 + 24);
      v63 = *(v63 + 8);
      sub_23C4C30FC(a1 + 8 + *(*a1 - 24), v64);
      v65 = a1 + *(*a1 - 24);
      v67 = *(v65 + 56);
      v66 = *(v65 + 64);
      v110[8] = 257;
      v68 = llvm::BasicBlock::splitBasicBlock();
      sub_23C49B500(&v111, v68);
      v69 = *(v67 + 40);
      if (v69 == v67 + 40)
      {
        v72 = 0;
      }

      else
      {
        v70 = v69 - 24;
        if (v69)
        {
          v71 = v69 - 24;
        }

        else
        {
          v71 = 0;
        }

        if (*(v71 + 16) - 29 >= 0xB)
        {
          v72 = 0;
        }

        else
        {
          v72 = v70;
        }
      }

      v73 = *(a1 + 3680);
      v74 = (v72 - 32);
      if (*(v72 - 32))
      {
        v75 = *(v72 - 24);
        **(v72 - 16) = v75;
        if (v75)
        {
          *(v75 + 16) = *(v72 - 16);
        }
      }

      *v74 = v73;
      if (v73)
      {
        v78 = *(v73 + 8);
        v76 = (v73 + 8);
        v77 = v78;
        *(v72 - 24) = v78;
        if (v78)
        {
          *(v77 + 16) = v72 - 24;
        }

        *(v72 - 16) = v76;
        *v76 = v74;
      }

      llvm::Instruction::eraseFromParent(v64);
    }

    llvm::Function::eraseFromParent(v62);
    *&v108[4] = v110;
    v109 = 0x400000000;
    v79 = v112;
    if (v112)
    {
      do
      {
        v80 = v111[v79 - 1];
        LODWORD(v112) = v79 - 1;
        sub_23C49B500(&v108[4], v80);
        v81 = v80 + 5;
        for (i = v80[6]; i != v81; i = i[1])
        {
          if (i)
          {
            v83 = i - 3;
          }

          else
          {
            v83 = 0;
          }

          v84 = *v83;
          llvm::UndefValue::get();
          llvm::Value::replaceAllUsesWith();
        }

        v85 = *v81;
        if (*v81 != v81)
        {
          v86 = (v85 - 3);
          v87 = v85 ? (v85 - 3) : 0;
          v88 = *(v87 + 16) - 29;
          v89 = v88 >= 0xB ? 0 : v86;
          if (v88 <= 0xA)
          {
            NumSuccessors = llvm::Instruction::getNumSuccessors(v86);
            if (NumSuccessors)
            {
              v91 = NumSuccessors;
              for (j = 0; j != v91; ++j)
              {
                Successor = llvm::Instruction::getSuccessor(v89);
                if (llvm::BasicBlock::getSinglePredecessor(Successor))
                {
                  v94 = llvm::Instruction::getSuccessor(v89);
                  sub_23C49B500(&v111, v94);
                }

                v95 = llvm::Instruction::getSuccessor(v89);
                llvm::BasicBlock::removePredecessor(v95, v80);
              }
            }
          }
        }

        llvm::BasicBlock::dropAllReferences(v80);
        v79 = v112;
      }

      while (v112);
      while (v109)
      {
        v96 = *(*&v108[4] + 8 * v109 - 8);
        LODWORD(v109) = v109 - 1;
        llvm::BasicBlock::eraseFromParent(v96);
      }
    }

    if (*&v108[4] != v110)
    {
      free(*&v108[4]);
    }

    if (v111 != v113)
    {
      free(v111);
    }
  }

  v13 = 1;
LABEL_116:
  v97 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL sub_23C509554(uint64_t *a1, uint64_t a2)
{
  result = 0;
  if (a2 > 20)
  {
    if (a2 == 21)
    {
      v16 = *a1;
      v10 = a1[1];
      v11 = *(a1 + 13);
      v12 = v16 == 0x6F6C6F632E726961;
      v13 = 0x656C706D61735F72;
    }

    else
    {
      if (a2 != 22)
      {
        return result;
      }

      v9 = *a1;
      v10 = a1[1];
      v11 = *(a1 + 14);
      v12 = v9 == 0x747361722E726961;
      v13 = 0x6C706D61735F7265;
    }

    v15 = v12 && v10 == v13;
  }

  else
  {
    if (a2 != 15)
    {
      if (a2 != 18)
      {
        return result;
      }

      v4 = *a1;
      v5 = a1[1];
      v6 = *(a1 + 8);
      return v4 == 0x706D61732E726961 && v5 == 0x5F6B73616D5F656CLL && v6 == 28265;
    }

    v14 = *a1;
    v11 = *(a1 + 7);
    v15 = v14 == 0x706D61732E726961;
  }

  return v15 && v11 == 0x6B73616D5F656C70;
}

BOOL sub_23C50965C(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 1 && a3 == 18)
  {
    return *a2 == 0x706D61732E726961 && *(a2 + 8) == 0x5F6B73616D5F656CLL && *(a2 + 16) == 28265;
  }

  else
  {
    if (a3 != 21)
    {
      return 0;
    }

    v5 = 0x6169722E636F6C6FLL;
    v6 = bswap64(*a2);
    if (v6 == 0x6169722E636F6C6FLL && (v5 = 0x725F73616D706C65, v6 = bswap64(*(a2 + 8)), v6 == 0x725F73616D706C65) && (v5 = 0x706C655F6D61736BLL, v6 = bswap64(*(a2 + 13)), v6 == 0x706C655F6D61736BLL))
    {
      v7 = 0;
    }

    else if (v5 < v6)
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }

    return v7 == 0;
  }
}

uint64_t sub_23C509738(uint64_t *a1)
{
  v272 = *MEMORY[0x277D85DE8];
  v2 = *(a1[20] + 80);
  if (v2)
  {
    v3 = v2 - 24;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v3 + 40);
  if (v4)
  {
    v5 = v4 - 24;
  }

  else
  {
    v5 = 0;
  }

  sub_23C4C30FC(a1 + *(*a1 - 24) + 8, v5);
  if ((*(a1 + 3839) & 1) != 0 || (a1[441] & 4) != 0)
  {
    v6 = sub_23C50B2E8(a1, 6, 0, 1);
    if (*(a1 + 3839) == 1)
    {
      v7 = a1 + *(*a1 - 24);
      v8 = *(v7 + 344);
      v268 = *(v7 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v269, (v7 + 8));
      v270 = *(v7 + 104);
      v9 = (*(*v8 + 240))(v8, &v268, 1, 0, v6, 0);
      sub_23C4D56F8((a1 + 461), v9);
      if (v269)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    if ((a1[441] & 4) != 0)
    {
      v10 = a1 + *(*a1 - 24);
      v11 = *(v10 + 344);
      v265 = *(v10 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v266, (v10 + 8));
      v267 = *(v10 + 104);
      v12 = (*(*v11 + 240))(v11, &v265, 1, *(a1 + 962), v6, 0);
      sub_23C4D56F8((a1 + 464), v12);
      if (v266)
      {
        llvm::MetadataTracking::untrack();
      }

      if (*(a1 + 962) == 1 && *(a1 + 738) <= 1)
      {
        *(a1 + 738) = 2;
      }
    }
  }

  if (*(a1 + 3839) == 1)
  {
    v13 = a1 + *(*a1 - 24);
    v14 = *(v13 + 344);
    if (*(v14 + 1456))
    {
      v15 = strlen(*(v14 + 1456));
    }

    v16 = *(v13 + 160);
    v17 = sub_23C4A0414(v13);
    v18 = a1 + *(*a1 - 24);
    v19 = *(v18 + 344);
    if (*(v19 + 1464))
    {
      v20 = strlen(*(v19 + 1464));
    }

    v21 = *(v18 + 160);
    v22 = sub_23C4A0414(v18);
    v23 = a1 + *(*a1 - 24);
    v24 = *(v23 + 272);
    v25 = llvm::UndefValue::get();
    v26 = a1 + *(*a1 - 24);
    v264 = 257;
    v27 = sub_23C497A7C(v26 + 8, **(*v17 + 16), v17, 0, 0, &v262);
    v261 = 257;
    v28 = *(v23 + 192);
    v29 = llvm::ConstantInt::get();
    v30 = sub_23C505AA8(v23 + 8, v25, v27, v29, v260);
    v31 = a1 + *(*a1 - 24);
    v264 = 257;
    v32 = sub_23C497A7C(v31 + 8, **(*v22 + 16), v22, 0, 0, &v262);
    v33 = (*(*a1 + 376))(a1, v32);
    v34 = a1 + *(*a1 - 24);
    v264 = 257;
    v35 = *(v34 + 192);
    v36 = llvm::ConstantInt::get();
    v37 = sub_23C505AA8(v34 + 8, v30, v33, v36, &v262);
    v38 = sub_23C50B2E8(a1, 0, 0, 1);
    sub_23C4D56F8((a1 + 467), v38);
    v39 = a1 + *(*a1 - 24);
    v40 = *(v39 + 344);
    v257 = *(v39 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v258, (v39 + 8));
    v259 = *(v39 + 104);
    v41 = (*(*v40 + 240))(v40, &v257, 1, 0, a1[469], 0);
    if (v258)
    {
      llvm::MetadataTracking::untrack();
    }

    v42 = a1 + *(*a1 - 24);
    v43 = a1[463];
    v264 = 257;
    v44 = *(v42 + 192);
    v45 = llvm::ConstantInt::get();
    v46 = sub_23C505AA8(v42 + 8, v37, v43, v45, &v262);
    v47 = a1 + *(*a1 - 24);
    v264 = 257;
    v48 = *(v47 + 192);
    v49 = llvm::ConstantInt::get();
    v247 = sub_23C505AA8(v47 + 8, v46, v41, v49, &v262);
  }

  else
  {
    v247 = 0;
  }

  if (*(a1 + 3840) == 1)
  {
    v50 = llvm::User::operator new(0x58);
    v51 = *a1;
    v52 = a1 + *(*a1 - 24);
    v53 = *(v52 + 320);
    v54 = *(v52 + 192);
    *&v262 = "agc.front_direction";
    v264 = 259;
    v242 = *(*(a1 + *(v51 - 24) + 344) + 836) | 0x100000000;
    llvm::GlobalVariable::GlobalVariable();
    llvm::GlobalObject::setSection();
    sub_23C506A1C((a1 + *(*a1 - 24)));
    v55 = a1 + *(*a1 - 24);
    v56 = *(v55 + 344);
    v254 = *(v55 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v255, (v55 + 8));
    v256 = *(v55 + 104);
    v246 = (*(*v56 + 368))(v56, &v254, v50);
    if (v255)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    v246 = 0;
  }

  v57 = *(a1 + *(*a1 - 24) + 272);
  v58 = llvm::PointerType::get();
  if ((*(a1 + 3841) & 1) != 0 || *(a1 + 3842) == 1 && (*(a1[370] + 33) & 0xE) == 0)
  {
    v59 = sub_23C50B2E8(a1, 5, 0, 2);
    v60 = a1 + *(*a1 - 24);
    v61 = *(v60 + 344);
    v251 = *(v60 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v252, (v60 + 8));
    v253 = *(v60 + 104);
    v62 = a1 + *(*a1 - 24);
    v264 = 257;
    v63 = sub_23C49ACF8(v62 + 8, 49, v59, v58, &v262);
    v64 = (*(*v61 + 240))(v61, &v251, 2, 0, v63, 0);
    sub_23C4D56F8((a1 + 470), v64);
    if (v252)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  if (*(a1 + 3842) == 1 && (*(a1[370] + 33) & 0xE) != 0)
  {
    v65 = sub_23C50B2E8(a1, 5, 0, 2);
    v66 = a1 + *(*a1 - 24);
    v67 = *(v66 + 344);
    v248 = *(v66 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v249, (v66 + 8));
    v250 = *(v66 + 104);
    v68 = a1 + *(*a1 - 24);
    v264 = 257;
    v69 = sub_23C49ACF8(v68 + 8, 49, v65, v58, &v262);
    v70 = (*(*v67 + 240))(v67, &v248, 2, 1, v69, 0);
    sub_23C4D56F8((a1 + 473), v70);
    if (v249)
    {
      llvm::MetadataTracking::untrack();
    }

    if (*(a1 + 738) <= 1)
    {
      *(a1 + 738) = 2;
    }
  }

  v71 = a1[20];
  if (*(v71 + 18))
  {
    llvm::Function::BuildLazyArguments(a1[20]);
    v73 = a1[20];
    v72 = *(v71 + 88);
    if (*(v73 + 18))
    {
      llvm::Function::BuildLazyArguments(a1[20]);
    }

    v71 = v73;
  }

  else
  {
    v72 = *(v71 + 88);
  }

  v74 = *(v71 + 88) + 40 * *(v71 + 96);
  v75 = a1 + 1;
  if (v72 == v74)
  {
LABEL_188:
    v187 = *(a1 + *(*a1 - 24) + 320);
    Function = llvm::Module::getFunction();
    v189 = a1 + 27;
    if (Function)
    {
      v190 = Function;
      v191 = *(a1[370] + 32);
      v192 = *(a1 + *(*a1 - 24) + 192);
      llvm::ConstantInt::get();
      v193 = *(a1[370] + 32);
      v194 = *(a1 + *(*a1 - 24) + 192);
      llvm::ConstantInt::get();
      v195 = *(v190 + 8);
      while (v195)
      {
        v196 = *(v195 + 24);
        v195 = *(v195 + 8);
        v197 = sub_23C4B88A0(v196);
        v198 = (v196 - 32 * (*(v196 + 5) & 0x7FFFFFF));
        if (((v197 - v198) & 0x1FFFFFFFE0) == 0x20)
        {
          v199 = *v198;
          v200 = (*v198 + 24);
          if (*(v199 + 32) >= 0x41u)
          {
            v200 = *v200;
          }

          *v200;
        }

        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v196);
      }
    }

    v201 = *(a1 + *(*a1 - 24) + 320);
    v202 = llvm::Module::getFunction();
    if (v202)
    {
      v203 = v202;
      llvm::ArrayType::get(*(a1 + *(*a1 - 24) + 160), ((*(a1[370] + 32) >> 7) & 0x1E));
      v204 = 1;
      v205 = llvm::User::operator new(0x58);
      v206 = a1 + *(*a1 - 24);
      v207 = *(v206 + 320);
      *&v262 = "agc.sample_positions";
      v264 = 259;
      v243 = *(*(v206 + 344) + 836) | 0x100000000;
      llvm::GlobalVariable::GlobalVariable();
      llvm::GlobalObject::setSection();
      sub_23C506A1C((a1 + *(*a1 - 24)));
      v208 = *(v203 + 8);
      if (v208)
      {
        do
        {
          v209 = *(v208 + 8);
          v210 = *(v208 + 24);
          sub_23C4C30FC(a1 + *(*a1 - 24) + 8, v210);
          v211 = *(v189 + *(*a1 - 24));
          v212 = llvm::UndefValue::get();
          v213 = a1 + *(*a1 - 24);
          v214 = *(v210 - 4 * (*(v210 + 5) & 0x7FFFFFF));
          v215 = *(v213 + 192);
          v216 = llvm::ConstantInt::get();
          v264 = 257;
          v217 = sub_23C49ADDC(v213 + 8, v214, v216, &v262);
          v218 = a1 + *(*a1 - 24);
          v219 = *(v218 + 192);
          *&v271[0] = llvm::ConstantInt::get();
          *(&v271[0] + 1) = v217;
          v264 = 257;
          v220 = sub_23C4ED3A0(v218, v205, v271, 2, &v262);
          v261 = 257;
          v221 = sub_23C497C88((v218 + 8), **(*v220 + 16), v220, 0, v260);
          v222 = a1 + *(*a1 - 24);
          v264 = 257;
          v223 = *(v222 + 192);
          v224 = llvm::ConstantInt::get();
          v225 = sub_23C505AA8(v222 + 8, v212, v221, v224, &v262);
          v226 = a1 + *(*a1 - 24);
          v227 = *(v226 + 192);
          v204 = 1;
          v228 = llvm::ConstantInt::get();
          v264 = 257;
          v229 = sub_23C49A474(v226 + 8, v217, v228, &v262);
          v230 = a1 + *(*a1 - 24);
          v231 = *(v230 + 192);
          *&v271[0] = llvm::ConstantInt::get();
          *(&v271[0] + 1) = v229;
          v264 = 257;
          v232 = sub_23C4ED3A0(v230, v205, v271, 2, &v262);
          v261 = 257;
          v233 = sub_23C497C88((v230 + 8), **(*v232 + 16), v232, 0, v260);
          v234 = a1 + *(*a1 - 24);
          v264 = 257;
          v235 = *(v234 + 192);
          v236 = llvm::ConstantInt::get();
          v237 = v234 + 8;
          v189 = a1 + 27;
          sub_23C505AA8(v237, v225, v233, v236, &v262);
          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v210);
          v208 = v209;
        }

        while (v209);
      }
    }

    else
    {
      v204 = 1;
    }

    goto LABEL_200;
  }

  v245 = a1 + 43;
  v76 = v3;
  while (1)
  {
    if (v72[1])
    {
      v77 = *(a1[9] + 8 * *(v72 + 8));
      v78 = *(v3 + 40);
      v79 = v78 ? v78 - 24 : 0;
      sub_23C4DB1C0(a1 + *(*a1 - 24), v79, a1[5]);
      if ((sub_23C52EDE4(a1, v72, *(v72 + 8), v77) & 1) == 0)
      {
        break;
      }
    }

LABEL_183:
    v72 += 5;
    if (v72 == v74)
    {
      goto LABEL_188;
    }
  }

  String = llvm::MDString::getString(*(v77 - 8 * *(v77 + 8) + 8));
  v82 = String;
  v83 = v81;
  if (v81 <= 16)
  {
    if (v81 <= 14)
    {
      if (v81 != 12)
      {
        if (v81 == 13)
        {
          v84 = *String == 0x706D61732E726961 && *(String + 5) == 0x64695F656C706D61;
          if (v84)
          {
            v85 = a1 + *(*a1 - 24);
            v86 = *(v85 + 344);
            if (*(v86 + 1472))
            {
              v87 = strlen(*(v86 + 1472));
            }

            v155 = *(v85 + 192);
            v156 = sub_23C4A0414(v85);
            v157 = *(*a1 - 24);
            v264 = 257;
            v158 = sub_23C497A7C(v75 + v157, **(*v156 + 16), v156, 0, 0, &v262);
            v159 = *v72;
            v261 = 257;
            v115 = sub_23C49ACF8(v75 + v157, 38, v158, v159, v260);
            if (*(a1 + 738) <= 1)
            {
              *(a1 + 738) = 2;
            }

            goto LABEL_179;
          }
        }

        goto LABEL_136;
      }

      if (*String != 0x69736F702E726961 || *(String + 8) != 1852795252)
      {
        goto LABEL_136;
      }

      if ((*(*v72 + 8) & 0xFE) == 0x12)
      {
        v103 = *(**(*v72 + 16) + 8);
      }

      else
      {
        v103 = *(*v72 + 8);
      }

      v143 = *(*a1 - 24);
      v84 = v103 == 0;
      v144 = 34;
      if (v84)
      {
        v144 = 33;
      }

      v145 = *(&a1[v144] + v143);
      v264 = 257;
      v146 = v75 + v143;
      v147 = v247;
LABEL_175:
      v117 = sub_23C49FEB4(v146, v147, v145, &v262);
      goto LABEL_178;
    }

    if (v81 == 15)
    {
      if (*String != 0x6E696F702E726961 || *(String + 7) != 0x64726F6F635F746ELL)
      {
        goto LABEL_136;
      }

      if ((*(*v72 + 8) & 0xFE) == 0x12)
      {
        v119 = *(**(*v72 + 16) + 8);
      }

      else
      {
        v119 = *(*v72 + 8);
      }

      v148 = *(*a1 - 24);
      v84 = v119 == 0;
      v149 = a1 + 26;
      if (!v84)
      {
        v149 = a1 + 27;
      }

      v145 = *(v149 + v148);
      v147 = a1[472];
      v264 = 257;
      v146 = v75 + v148;
      goto LABEL_175;
    }

    if (*String != 0x6E6F72662E726961 || *(String + 8) != 0x676E696361665F74)
    {
      goto LABEL_136;
    }

    v92 = *(*a1 - 24);
    v93 = *v72;
    v264 = 257;
    v94 = v75 + v92;
    v95 = 39;
    v96 = v246;
LABEL_177:
    v117 = sub_23C49ACF8(v94, v95, v96, v93, &v262);
    goto LABEL_178;
  }

  if (v81 > 23)
  {
    if (v81 != 24)
    {
      if (v81 != 29)
      {
        goto LABEL_136;
      }

      v97 = *String == 0x646E65722E726961 && *(String + 8) == 0x65677261745F7265;
      v98 = v97 && *(String + 16) == 0x5F79617272615F74;
      if (!v98 || *(String + 21) != 0x7865646E695F7961)
      {
        goto LABEL_136;
      }

      *(a1 + 3857) = 1;
      v100 = *a1;
      v101 = a1 + *(*a1 - 24);
      if (*(*(v101 + 344) + 1670))
      {
        v262 = 0u;
        v263 = 0u;
        (*(v100 + 336))(&v262, a1, *v72, v77, "air.render_target_array_index", 29);
LABEL_160:
        v117 = sub_23C50B828(a1, &v262);
LABEL_178:
        v115 = v117;
LABEL_179:
        if ((*(*v72 + 8) & 0xFE) == 0x12 && *(*v72 + 32) == 1)
        {
          v151 = a1 + *(*a1 - 24);
          v152 = llvm::UndefValue::get();
          v264 = 257;
          v153 = *(v151 + 192);
          v154 = llvm::ConstantInt::get();
          sub_23C505AA8(v151 + 8, v152, v115, v154, &v262);
        }

        llvm::Value::replaceAllUsesWith();
        goto LABEL_183;
      }

      v150 = *(v101 + 192);
      v96 = llvm::ConstantInt::get();
      v93 = *v72;
      v264 = 257;
      v94 = v101 + 8;
      v95 = 38;
      goto LABEL_177;
    }

    if (*String == 0x776569762E726961 && *(String + 8) == 0x7272615F74726F70 && *(String + 16) == 0x7865646E695F7961)
    {
      *(a1 + 3856) = 1;
      v262 = 0u;
      v263 = 0u;
      (*(*a1 + 336))(&v262, a1, *v72, v77, "air.viewport_array_index", 24);
      goto LABEL_160;
    }
  }

  else if (v81 == 17)
  {
    if (*String == 0x646E65722E726961 && *(String + 8) == 0x65677261745F7265 && *(String + 16) == 116)
    {
      v260[0] = 0;
      LODWORD(v262) = 2;
      if (!sub_23C506AF0(0, v77, &v262, v260))
      {
        goto LABEL_204;
      }

      v106 = v260[0];
      v107 = sub_23C50B55C((a1 + 304), v260[0], 0, 0);
      v108 = *v72;
      if ((*(*v72 + 8) & 0xFE) == 0x12)
      {
        v109 = **(v108 + 16);
      }

      v110 = llvm::FixedVectorType::get();
      v114 = sub_23C4B245C(a1 + *(*a1 - 24), v107, v110, BYTE2(a1[8 * v106 + 309]), BYTE1(a1[8 * v106 + 309]), v111, v112, v113);
      v115 = v114;
      if ((*(v108 + 8) & 0xFE) == 0x12)
      {
        v116 = *(v108 + 32);
        if (v116 == *(*v114 + 32))
        {
          goto LABEL_179;
        }

        v117 = sub_23C505670(a1 + *(*a1 - 24), v114, v116, 1);
        goto LABEL_178;
      }

LABEL_166:
      v140 = a1 + *(*a1 - 24);
      v264 = 257;
      v141 = *(v140 + 192);
      v142 = llvm::ConstantInt::get();
      v117 = sub_23C5057E8(v140 + 8, v115, v142, &v262);
      goto LABEL_178;
    }
  }

  else if (v81 == 18)
  {
    v88 = *String == 0x676172662E726961 && *(String + 8) == 0x706E695F746E656DLL;
    if (v88 && *(String + 16) == 29813)
    {
      *(a1 + 3836) = 1;
      v262 = 0u;
      v263 = 0u;
      (*(*a1 + 328))(&v262, a1, *v72, v77);
      if (!DWORD1(v262) && !a1[469])
      {
        v90 = sub_23C50B2E8(a1, 0, 0, 1);
        sub_23C4D56F8((a1 + 467), v90);
      }

      goto LABEL_160;
    }
  }

LABEL_136:
  if (sub_23C509554(String, v81))
  {
    v122 = a1 + *(*a1 - 24);
    v123 = *(v122 + 344);
    if (*(v123 + 1504))
    {
      v124 = strlen(*(v123 + 1504));
    }

    v127 = *(v122 + 192);
    v128 = sub_23C4A0414(v122);
    v129 = *(*a1 - 24);
    v264 = 257;
    v130 = sub_23C497A7C(v75 + v129, **(*v128 + 16), v128, 0, 0, &v262);
    v131 = *v72;
    v261 = 257;
    v115 = sub_23C49ACF8(v75 + v129, 38, v130, v131, v260);
    if (sub_23C50965C(*(a1 + 965), v82, v83))
    {
      v132 = ~(-1 << (*(a1[370] + 32) >> 12));
      v133 = a1 + *(*a1 - 24);
      v134 = *(v133 + 192);
      v135 = llvm::ConstantInt::get();
      v264 = 257;
      v115 = sub_23C49A8E0(v133 + 8, v115, v135, &v262);
    }

    v3 = v76;
    *(a1 + 3838) = 1;
    goto LABEL_179;
  }

  if (v83 == 21)
  {
    if (*v82 != 0x797261622E726961 || v82[1] != 0x5F636972746E6563 || *(v82 + 13) != 0x64726F6F635F6369)
    {
      goto LABEL_158;
    }

    v138 = *(v245 + *(*a1 - 24));
    if (((*(*v138 + 536))(v138) & 1) == 0)
    {
      v240 = (a1 + *(*a1 - 24));
      v241 = "barycentric_coords not supported for this device";
      goto LABEL_203;
    }

    memset(v271, 0, sizeof(v271));
    (*(*a1 + 352))(v271, a1, *v72, v77);
    v115 = sub_23C50B828(a1, v271);
    if ((*(*v72 + 8) & 0xFE) == 0x12)
    {
      v139 = *(*v72 + 32);
      if (v139 == 3)
      {
        v160 = a1 + *(*a1 - 24);
        v264 = 257;
        v161 = *(v160 + 192);
        v162 = llvm::ConstantInt::get();
        v163 = sub_23C5057E8(v160 + 8, v115, v162, &v262);
        v164 = a1 + *(*a1 - 24);
        v264 = 257;
        v165 = *(v164 + 192);
        v166 = llvm::ConstantInt::get();
        v167 = sub_23C5057E8(v164 + 8, v115, v166, &v262);
        v168 = a1 + *(*a1 - 24);
        v169 = *(v168 + 160);
        v170 = llvm::ConstantFP::get();
        v171 = *(*a1 - 24);
        v264 = 257;
        v172 = sub_23C4A0BD4(v75 + v171, v163, v167, &v262);
        v261 = 257;
        v244 = sub_23C4A0EC4(v168 + 8, v170, v172, v260);
        v173 = a1 + *(*a1 - 24);
        v174 = *(v173 + 256);
        v175 = llvm::UndefValue::get();
        v264 = 257;
        v176 = *(v173 + 192);
        v177 = llvm::ConstantInt::get();
        v178 = v175;
        v3 = v76;
        v179 = sub_23C505AA8(v173 + 8, v178, v163, v177, &v262);
        v180 = a1 + *(*a1 - 24);
        v264 = 257;
        v181 = *(v180 + 192);
        v182 = llvm::ConstantInt::get();
        v183 = sub_23C505AA8(v180 + 8, v179, v167, v182, &v262);
        v184 = a1 + *(*a1 - 24);
        v264 = 257;
        v185 = *(v184 + 192);
        v186 = llvm::ConstantInt::get();
        v117 = sub_23C505AA8(v184 + 8, v183, v244, v186, &v262);
        goto LABEL_178;
      }

      if (v139 == 2)
      {
        goto LABEL_179;
      }

      if (v139 != 1)
      {
LABEL_158:
        v115 = 0;
        goto LABEL_179;
      }
    }

    goto LABEL_166;
  }

  if (v83 != 16)
  {
    goto LABEL_158;
  }

  if (*v82 != 0x6D6972702E726961 || v82[1] != 0x64695F6576697469)
  {
    goto LABEL_158;
  }

  v126 = *(v245 + *(*a1 - 24));
  if ((*(*v126 + 528))(v126))
  {
    v262 = 0u;
    v263 = 0u;
    (*(*a1 + 344))(&v262, a1, *v72);
    goto LABEL_160;
  }

  v240 = (a1 + *(*a1 - 24));
  v241 = "primitive_id not supported for this device";
LABEL_203:
  std::string::append(v240 + 17, v241);
LABEL_204:
  v204 = 0;
LABEL_200:
  v238 = *MEMORY[0x277D85DE8];
  return v204;
}

uint64_t sub_23C50B2E8(void *a1, int a2, int a3, llvm::Type *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + *(*a1 - 24) + 272);
  v6 = off_278BBFEA0[a2];
  if (a4 >= 2)
  {
    llvm::ArrayType::get(*(a1 + *(*a1 - 24) + 272), a4);
  }

  v7 = llvm::User::operator new(0x58);
  v8 = *(a1 + *(*a1 - 24) + 320);
  *v6;
  llvm::GlobalVariable::GlobalVariable();
  *(v7 + 80) |= 1u;
  llvm::GlobalObject::setAlignment();
  llvm::ValueAsMetadata::get();
  v9 = *(a1 + *(*a1 - 24) + 192);
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  v10 = *(a1 + *(*a1 - 24) + 192);
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  v11 = *(a1 + *(*a1 - 24) + 192);
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  v12 = a1[375];
  v13 = *(a1 + *(*a1 - 24) + 336);
  llvm::MDTuple::getImpl();
  llvm::NamedMDNode::addOperand();
  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t *sub_23C50B55C(uint64_t a1, unsigned int a2, char a3, char a4)
{
  v7 = a2;
  v8 = *(a1 + 528) + 4 * a2;
  if ((a4 & 1) == 0)
  {
    *(a1 + 544) |= 15 << (4 * a2);
  }

  if (*(a1 + 520) <= 0)
  {
    *(a1 + 520) = 1;
  }

  v9 = a1 + *(*a1 - 24);
  v10 = *(v9 + 344);
  v31 = *(v9 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v32, (v9 + 8));
  v33 = *(v9 + 104);
  v11 = a1 + (v7 << 6);
  v13 = *(v11 + 8);
  v12 = v11 + 8;
  v14 = (*(*v10 + 200))(v10, &v31, *(*(a1 + 528) + 32) >> 12, BYTE2(*(*(a1 + 528) + 32)), v8, v13);
  if (v32)
  {
    llvm::MetadataTracking::untrack();
  }

  v15 = sub_23C4B28B0(a1 + *(*a1 - 24), v14, *(v12 + 16), *(v12 + 28));
  v16 = sub_23C50BD14(a1, v15, 0, a2);
  if ((a3 & 1) == 0)
  {
    if (*(v12 + 52) == 1 && *(v12 + 32) == 1)
    {
      v17 = a1 + *(*a1 - 24);
      v18 = *(v17 + 344);
      if (*(v18 + 1642) == 1 && (*(v12 + 56) & 1) == 0)
      {
        v28 = *(v17 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v29, (v17 + 8));
        v30 = *(v17 + 104);
        v16 = sub_23C4A28C8(v18, &v28, v16, v12 + 36, 1);
        if (v29)
        {
          llvm::MetadataTracking::untrack();
        }
      }
    }

    v19 = *(v12 + 33);
    v20 = *(v12 + 34);
    v21 = sub_23C505C18(a1 + *(*a1 - 24), v16, *(*(a1 + 528) + 4 * v7) >> 5);
    v22 = a1 + *(*a1 - 24);
    v23 = *(v22 + 344);
    v25 = *(v22 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v26, (v22 + 8));
    v27 = *(v22 + 104);
    v16 = (*(*v23 + 400))(v23, &v25, v21, v8);
    if (v26)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  return v16;
}

llvm::Value *sub_23C50B828(uint64_t *a1, unsigned int *a2)
{
  v4 = a2[3];
  v5 = *a2;
  if (a2[1] == 1)
  {
    *(a1 + 3837) = 1;
    v6 = 3;
  }

  else
  {
    v6 = a2[2];
    if (v6 == 1)
    {
      if (*(a1 + 738) <= 1)
      {
        *(a1 + 738) = 2;
      }

      v6 = 1;
    }
  }

  v7 = *(a1 + *(*a1 - 24) + 272);
  v8 = llvm::PointerType::get();
  v9 = a1 + *(*a1 - 24);
  v10 = *(a2 + 3);
  v49 = 257;
  v11 = sub_23C49ACF8(v9 + 8, 49, v10, v8, v48);
  if (v6 != 3)
  {
    v32 = a2[1];
    v33 = a1 + *(*a1 - 24);
    v34 = *(v33 + 344);
    if (v32)
    {
      v40 = *(v33 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v41, (v33 + 8));
      v42 = *(v33 + 104);
      v14 = (*(*v34 + 240))(v34, &v40, v5, v6, v11, 0);
      if (!v41)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v43 = *(v33 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v44, (v33 + 8));
      v45 = *(v33 + 104);
      v14 = (*(*v34 + 240))(v34, &v43, v5, v6, v11, a1[469]);
      if (!v44)
      {
        goto LABEL_21;
      }
    }

    llvm::MetadataTracking::untrack();
    goto LABEL_21;
  }

  v12 = *(a1 + *(*a1 - 24) + 160);
  llvm::FixedVectorType::get();
  v14 = llvm::UndefValue::get();
  if (!v5)
  {
    if (v4 >= 2)
    {
      goto LABEL_25;
    }

    return sub_23C5053E8(a1 + *(*a1 - 24), v14, v4, *(*(a1 + *(*a1 - 24) + 344) + 1640));
  }

  for (i = 0; i != v5; ++i)
  {
    v16 = *a1;
    v17 = *v11;
    if ((*(*v11 + 8) & 0xFE) == 0x12)
    {
      v17 = **(v17 + 16);
    }

    v18 = a1 + *(*a1 - 24);
    v19 = **(v17 + 16);
    v47 = 257;
    llvm::Type::getInt32Ty(*(v18 + 72), v13);
    v50[0] = llvm::ConstantInt::get();
    v20 = (*(**(v18 + 80) + 48))(*(v18 + 80), v19, v11, v50, 1, 1);
    if (!v20)
    {
      v49 = 257;
      v20 = sub_23C49AFDC(v19, v11, v50, 1);
      llvm::GetElementPtrInst::setIsInBounds(v20);
      sub_23C49B15C((v18 + 8), v20, v46);
    }

    v49 = 257;
    v21 = sub_23C497C88((v18 + 8), **(*v20 + 16), v20, 0, v48);
    v22 = a1 + *(*a1 - 24);
    v49 = 257;
    v23 = *(v22 + 192);
    v24 = llvm::ConstantInt::get();
    v25 = sub_23C5057E8(v22 + 8, v21, v24, v48);
    v26 = a1 + *(*a1 - 24);
    v49 = 257;
    v27 = *(v26 + 192);
    v28 = llvm::ConstantInt::get();
    v14 = sub_23C505AA8(v26 + 8, v14, v25, v28, v48);
  }

  if (v5 == 1)
  {
    v29 = a1 + *(*a1 - 24);
    v49 = 257;
    v30 = *(v29 + 192);
    v31 = llvm::ConstantInt::get();
    v14 = sub_23C5057E8(v29 + 8, v14, v31, v48);
    if (v4 < 2)
    {
      return sub_23C5053E8(a1 + *(*a1 - 24), v14, v4, *(*(a1 + *(*a1 - 24) + 344) + 1640));
    }

    goto LABEL_23;
  }

LABEL_21:
  if (v4 >= 2)
  {
    if (v5 == 1)
    {
LABEL_23:
      v35 = *a1;
      v36 = *(a1 + *(*a1 - 24) + 192);
LABEL_26:
      v38 = a1 + *(v35 - 24);
      v49 = 257;
      v14 = sub_23C49ACF8(v38 + 8, 49, v14, v36, v48);
      return sub_23C5053E8(a1 + *(*a1 - 24), v14, v4, *(*(a1 + *(*a1 - 24) + 344) + 1640));
    }

LABEL_25:
    v37 = *(a1 + *(*a1 - 24) + 192);
    v36 = llvm::FixedVectorType::get();
    v35 = *a1;
    goto LABEL_26;
  }

  return sub_23C5053E8(a1 + *(*a1 - 24), v14, v4, *(*(a1 + *(*a1 - 24) + 344) + 1640));
}

uint64_t sub_23C50BD14(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if ((*(a1[66] + 4 * a4) >> 12) & 7)
  {
    *(a1[66] + 4 * a4);
    v7 = *(a1 + *(*a1 - 24) + 192);
    v16 = llvm::ConstantInt::get();
    v8 = *(a1 + *(*a1 - 24) + 192);
    v17 = llvm::ConstantInt::get();
    v9 = *(a1 + *(*a1 - 24) + 192);
    v18 = llvm::ConstantInt::get();
    v10 = *(a1 + *(*a1 - 24) + 192);
    v19 = llvm::ConstantInt::get();
    v11 = a1 + *(*a1 - 24);
    v12 = llvm::ConstantVector::get();
    v15[16] = 257;
    a2 = sub_23C49A3AC((v11 + 8), a2, a2, v12, v15);
  }

  v13 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t sub_23C50BFF0(uint64_t a1)
{
  if ((*(*(a1 + 2960) + 33) & 0xE) != 0 && *(a1 + 2952) > 0)
  {
    return 103;
  }

  else
  {
    return 101;
  }
}

uint64_t sub_23C50C040(uint64_t a1)
{
  v258 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + *(*a1 - 24) + 320);
  Function = llvm::Module::getFunction();
  if (Function && *(Function + 8))
  {
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 56);
    v6 = *(v4 + 336);
    *&v253[0] = "feedback_output";
    LOWORD(v254) = 259;
    v7 = *(v5 + 56);
    operator new();
  }

  v8 = 0;
  v9 = **(a1 + 3808);
  if (v9)
  {
    v10 = *(a1 + 3016);
    v11 = a1 + *(*a1 - 24);
    if (v10 == *(v11 + 272) || v10 == *(v11 + 264))
    {
      v12 = *(v11 + 344);
      v248 = *(v11 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v249, (v11 + 8));
      v250 = *(v11 + 104);
      v13 = a1 + *(*a1 - 24);
      v14 = *(a1 + 3040);
      v257 = 257;
      v15 = sub_23C497C88((v13 + 8), **(*v14 + 16), v14, 0, v256);
      LOWORD(v254) = 257;
      v16 = *(v13 + 192);
      v17 = llvm::ConstantInt::get();
      v18 = sub_23C5057E8(v13 + 8, v15, v17, v253);
      v19 = (*(*v12 + 32))(v12, &v248, v18, (*(*(a1 + 2960) + 32) >> 8) & 0xF);
      if (v249)
      {
        llvm::MetadataTracking::untrack();
      }

      v20 = a1 + *(*a1 - 24);
      v21 = *(a1 + 3600);
      LOWORD(v254) = 257;
      v22 = sub_23C497C88((v20 + 8), **(*v21 + 16), v21, 0, v253);
      v23 = a1 + *(*a1 - 24);
      LOWORD(v254) = 257;
      v24 = sub_23C49A8E0(v23 + 8, v22, v19, v253);
      sub_23C4BA8C0((a1 + *(*a1 - 24) + 8), v24, *(a1 + 3600), 0);
      v9 = **(a1 + 3808);
    }
  }

  if ((v9 & 2) != 0)
  {
    v25 = *(a1 + 3016);
    v26 = a1 + *(*a1 - 24);
    if (v25 == *(v26 + 272) || v25 == *(v26 + 264))
    {
      v27 = *(a1 + 3040);
      LOWORD(v254) = 257;
      v28 = sub_23C497C88((v26 + 8), **(*v27 + 16), v27, 0, v253);
      v29 = a1 + *(*a1 - 24);
      v30 = 152;
      if (*(a1 + 3016) == *(v29 + 272))
      {
        v30 = 160;
      }

      v31 = *(v29 + v30);
      v32 = llvm::ConstantFP::get();
      v33 = a1 + *(*a1 - 24);
      LOWORD(v254) = 257;
      v34 = *(v33 + 192);
      v35 = llvm::ConstantInt::get();
      v36 = sub_23C505AA8(v33 + 8, v28, v32, v35, v253);
      sub_23C4BA8C0((a1 + *(*a1 - 24) + 8), v36, *(a1 + 3040), 0);
      v9 = **(a1 + 3808);
    }
  }

  if ((v9 & 4) != 0)
  {
    v37 = a1 + *(*a1 - 24);
    v38 = *(v37 + 160);
    v39 = *(v37 + 192);
    v40 = *v38;
    *&v253[0] = v38;
    *(&v253[0] + 1) = v39;
    llvm::StructType::get();
    v41 = llvm::User::operator new(0x58);
    v42 = *a1;
    v43 = *(a1 + *(*a1 - 24) + 320);
    *&v253[0] = "agc.coverage";
    LOWORD(v254) = 259;
    v226 = *(*(a1 + *(v42 - 24) + 344) + 836) | 0x100000000;
    llvm::GlobalVariable::GlobalVariable();
    llvm::GlobalObject::setSection();
    sub_23C506A1C((a1 + *(*a1 - 24)));
    v44 = sub_23C49ABAC(a1 + *(*a1 - 24), v41);
    v45 = sub_23C49ABAC(a1 + *(*a1 - 24), v41);
    v46 = a1 + *(*a1 - 24);
    LOWORD(v254) = 257;
    v47 = sub_23C497C88((v46 + 8), **(*v44 + 16), v44, 0, v253);
    v48 = a1 + *(*a1 - 24);
    LOWORD(v254) = 257;
    v49 = sub_23C497C88((v48 + 8), **(*v45 + 16), v45, 0, v253);
    v50 = a1 + *(*a1 - 24);
    v51 = *(v50 + 344);
    v245 = *(v50 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v246, (v50 + 8));
    v247 = *(v50 + 104);
    v52 = (*(*v51 + 32))(v51, &v245, v47, (*(*(a1 + 2960) + 32) >> 8) & 0xF);
    if (v246)
    {
      llvm::MetadataTracking::untrack();
    }

    if (*(a1 + 10) == 1 && (**(a1 + 3808) & 8) != 0)
    {
      v53 = a1 + *(*a1 - 24);
      LOWORD(v254) = 257;
      v52 = sub_23C4BFF4C(v53 + 8, v52, v253);
    }

    v54 = a1 + *(*a1 - 24);
    LOWORD(v254) = 257;
    v55 = sub_23C49A8E0(v54 + 8, v52, v49, v253);
    v56 = a1 + *(*a1 - 24);
    v57 = *(a1 + 3600);
    LOWORD(v254) = 257;
    v58 = sub_23C497C88((v56 + 8), **(*v57 + 16), v57, 0, v253);
    v59 = a1 + *(*a1 - 24);
    LOWORD(v254) = 257;
    v60 = sub_23C49A8E0(v59 + 8, v58, v55, v253);
    sub_23C4BA8C0((a1 + *(*a1 - 24) + 8), v60, *(a1 + 3600), 0);
  }

  if (*(a1 + 3842) == 1)
  {
    v61 = 3784;
    if ((*(*(a1 + 2960) + 32) & 0xE00) == 0)
    {
      v61 = 3760;
    }

    v62 = *(a1 + v61 + 16);
    v63 = a1 + *(*a1 - 24);
    v64 = *(v63 + 160);
    llvm::ConstantFP::get();
    Splat = llvm::ConstantDataVector::getSplat();
    LOWORD(v254) = 257;
    v66 = sub_23C4A0EC4(v63 + 8, v62, Splat, v253);
    v67 = sub_23C50654C(a1 + *(*a1 - 24), v66, v66);
    v68 = *(a1 + *(*a1 - 24) + 160);
    v69 = llvm::ConstantFP::get();
    v70 = a1 + *(*a1 - 24);
    LOWORD(v254) = 257;
    v71 = sub_23C4A0EC4(v70 + 8, v69, v67, v253);
    if (*(a1 + 3528))
    {
      if (*(a1 + 3528))
      {
        v86 = *(a1 + *(*a1 - 24) + 160);
        llvm::ConstantFP::get();
        LOWORD(v254) = 257;
        FCmpHelper = llvm::IRBuilderBase::CreateFCmpHelper();
      }

      else
      {
        if ((*(a1 + 3528) & 2) != 0)
        {
          v72 = a1 + *(*a1 - 24);
          v73 = *(a1 + 3600);
          LOWORD(v254) = 257;
          v74 = sub_23C497C88((v72 + 8), **(*v73 + 16), v73, 0, v253);
          v75 = *(a1 + *(*a1 - 24) + 160);
          llvm::ConstantFP::get();
          LOWORD(v254) = 257;
          llvm::IRBuilderBase::CreateFCmpHelper();
          v76 = *(a1 + *(*a1 - 24) + 192);
          llvm::ConstantInt::get();
          v77 = *(a1 + *(*a1 - 24) + 192);
          llvm::ConstantInt::get();
          LOWORD(v254) = 257;
          Select = llvm::IRBuilderBase::CreateSelect();
          v79 = a1 + *(*a1 - 24);
          LOWORD(v254) = 257;
          v80 = sub_23C49A8E0(v79 + 8, v74, Select, v253);
          sub_23C4BA8C0((a1 + *(*a1 - 24) + 8), v80, *(a1 + 3600), 0);
        }

        FCmpHelper = 0;
      }
    }

    else
    {
      v82 = a1 + *(*a1 - 24);
      v83 = *(v82 + 344);
      v242 = *(v82 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v243, (v82 + 8));
      v244 = *(v82 + 104);
      v84 = *(a1 + *(*a1 - 24) + 160);
      v85 = llvm::ConstantFP::get();
      (*(*v83 + 24))(v83, &v242, v85, v71, 2, *(a1 + 3832));
      if (v243)
      {
        llvm::MetadataTracking::untrack();
      }

      FCmpHelper = 0;
      *(a1 + 3532) = 1;
    }

    if ((*(*(a1 + 2960) + 33) & 0xE) == 0)
    {
      v87 = a1 + *(*a1 - 24);
      v88 = *(v87 + 344);
      v89 = *(v88 + 1416);
      if (v89)
      {
        v90 = strlen(*(v88 + 1416));
      }

      else
      {
        v90 = 0;
      }

      v91 = sub_23C49EB10(v87, v89, v90, *(v87 + 160), *(v87 + 160));
      v92 = a1 + *(*a1 - 24);
      v93 = *(a1 + 3776);
      LOWORD(v254) = 257;
      v94 = *(v92 + 192);
      v95 = llvm::ConstantInt::get();
      v251[0] = sub_23C5057E8(v92 + 8, v93, v95, v253);
      v257 = 257;
      v96 = sub_23C497A7C(v92 + 8, *(v91 + 24), v91, v251, 1, v256);
      v97 = a1 + *(*a1 - 24);
      v98 = *(v97 + 160);
      v99 = llvm::ConstantFP::get();
      LOWORD(v254) = 257;
      v100 = sub_23C4A0EC4(v97 + 8, v99, v96, v253);
      v101 = a1 + *(*a1 - 24);
      LOWORD(v254) = 257;
      v102 = sub_23C49EA2C(v101 + 8, v96, v100, v253);
      v257 = 257;
      v103 = sub_23C4BBCA0(v101 + 8, v71, v102, v256);
      v104 = a1 + *(*a1 - 24);
      v105 = *(v104 + 344);
      v239 = *(v104 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v240, (v104 + 8));
      v241 = *(v104 + 104);
      FPCast = (*(*v105 + 40))(v105, &v239, v103, 0);
      if (v240)
      {
        llvm::MetadataTracking::untrack();
      }

      v107 = a1 + *(*a1 - 24);
      v108 = *(a1 + 3040);
      LOWORD(v254) = 257;
      v109 = sub_23C497C88((v107 + 8), **(*v108 + 16), v108, 0, v253);
      v110 = *v109;
      v111 = a1 + *(*a1 - 24);
      v257 = 257;
      v112 = *(v111 + 192);
      v113 = llvm::ConstantInt::get();
      v114 = sub_23C5057E8(v111 + 8, v109, v113, v256);
      v115 = *(*a1 - 24);
      v116 = **(v110 + 16);
      v252 = 257;
      if (*FPCast != v116)
      {
        v117 = a1 + v115;
        if (*(FPCast + 16) > 0x14u)
        {
          LOWORD(v254) = 257;
          FPCast = llvm::CastInst::CreateFPCast();
          sub_23C49B15C((v117 + 8), FPCast, v251);
        }

        else
        {
          v118 = (*(**(v117 + 80) + 256))(*(v117 + 80), FPCast, v116);
          FPCast = v118;
          if (v118 && *(v118 + 16) >= 0x1Cu)
          {
            sub_23C49B15C((v117 + 8), v118, v251);
          }
        }
      }

      LOWORD(v254) = 257;
      v119 = sub_23C49EA2C(v111 + 8, v114, FPCast, v253);
      v120 = a1 + *(*a1 - 24);
      LOWORD(v254) = 257;
      v121 = *(v120 + 192);
      v122 = llvm::ConstantInt::get();
      v123 = sub_23C505AA8(v120 + 8, v109, v119, v122, v253);
      sub_23C4BA8C0((a1 + *(*a1 - 24) + 8), v123, *(a1 + 3040), 0);
    }
  }

  else
  {
    FCmpHelper = 0;
  }

  v124 = *(a1 + 3528);
  if (v124)
  {
    v129 = a1 + *(*a1 - 24);
    if ((*(*(a1 + 3808) + 1) & 8) != 0)
    {
      v132 = *(a1 + 3040);
      v257 = 257;
      v133 = sub_23C497C88((v129 + 8), **(*v132 + 16), v132, 0, v256);
      LOWORD(v254) = 257;
      v134 = *(v129 + 192);
      v135 = llvm::ConstantInt::get();
      v136 = sub_23C5057E8(v129 + 8, v133, v135, v253);
      v137 = sub_23C504E2C(v129, v136, 1);
      v131 = sub_23C50DD20(a1, v137);
    }

    else
    {
      v130 = *(a1 + 3624);
      LOWORD(v254) = 257;
      v131 = sub_23C497C88((v129 + 8), **(*v130 + 16), v130, 0, v253);
    }

    v138 = v131;
    v139 = a1 + *(*a1 - 24);
    if (*(a1 + 3842) == 1)
    {
      v140 = *(a1 + 3656) - 2;
      if (v140 <= 6)
      {
        v141 = dword_23C532DB0[v140];
      }

      v157 = *(a1 + 3648);
      LOWORD(v254) = 257;
      v158 = llvm::IRBuilderBase::CreateFCmpHelper();
      v159 = a1 + *(*a1 - 24);
      LOWORD(v254) = 257;
      sub_23C49A8E0(v159 + 8, v158, FCmpHelper, v253);
      v160 = *(a1 + *(*a1 - 24) + 160);
      llvm::ConstantFP::get();
      v161 = *(a1 + *(*a1 - 24) + 160);
      llvm::ConstantFP::get();
      LOWORD(v254) = 257;
      v162 = llvm::IRBuilderBase::CreateSelect();
      v163 = a1 + *(*a1 - 24);
      v164 = *(v163 + 344);
      v236 = *(v163 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v237, (v163 + 8));
      v238 = *(v163 + 104);
      v165 = *(a1 + *(*a1 - 24) + 160);
      v166 = llvm::ConstantFP::get();
      (*(*v164 + 24))(v164, &v236, v162, v166, 4, *(a1 + 3832));
      if (!v237)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v142 = *(v139 + 344);
      v233 = *(v139 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v234, (v139 + 8));
      v235 = *(v139 + 104);
      (*(*v142 + 24))(v142, &v233, v138, *(a1 + 3648), *(a1 + 3656), *(a1 + 3832));
      if (!v234)
      {
        goto LABEL_83;
      }
    }

    goto LABEL_82;
  }

  if ((*(a1 + 3528) & 0xC) != 0)
  {
    if ((*(a1 + 3528) & 4) != 0)
    {
      v149 = a1 + *(*a1 - 24);
      v150 = *(a1 + 3552);
      LOWORD(v254) = 257;
      v125 = sub_23C497C88((v149 + 8), **(*v150 + 16), v150, 0, v253);
      v124 = *(a1 + 3528);
      if ((v124 & 8) != 0)
      {
LABEL_53:
        v126 = a1 + *(*a1 - 24);
        v127 = *(a1 + 3576);
        LOWORD(v254) = 257;
        v128 = sub_23C497C88((v126 + 8), **(*v127 + 16), v127, 0, v253);
        if ((*(a1 + 3528) & 2) == 0)
        {
          goto LABEL_81;
        }

        goto LABEL_71;
      }
    }

    else
    {
      v125 = 0;
      if ((*(a1 + 3528) & 8) != 0)
      {
        goto LABEL_53;
      }
    }

    v128 = 0;
    if ((v124 & 2) == 0)
    {
      goto LABEL_81;
    }

LABEL_71:
    v151 = a1 + *(*a1 - 24);
    v152 = *(a1 + 3600);
    LOWORD(v254) = 257;
    v153 = sub_23C497C88((v151 + 8), **(*v152 + 16), v152, 0, v253);
    if (*(a1 + 3852) == 1)
    {
      v154 = a1 + *(*a1 - 24);
      v155 = *(v154 + 344);
      if (*(v155 + 1472))
      {
        v156 = strlen(*(v155 + 1472));
      }

      v169 = *(v154 + 192);
      v170 = sub_23C4A0414(v154);
      v171 = a1 + *(*a1 - 24);
      LOWORD(v254) = 257;
      v172 = sub_23C497A7C(v171 + 8, **(*v170 + 16), v170, 0, 0, v253);
      v173 = a1 + *(*a1 - 24);
      v174 = *(v173 + 192);
      v175 = llvm::ConstantInt::get();
      LOWORD(v254) = 257;
      v176 = sub_23C49A668(v173 + 8, v175, v172, v253);
      v177 = a1 + *(*a1 - 24);
      LOWORD(v254) = 257;
      v153 = sub_23C49A8E0(v177 + 8, v153, v176, v253);
    }

    v178 = a1 + *(*a1 - 24);
    v179 = *(v178 + 192);
    v180 = llvm::ConstantInt::get();
    LOWORD(v254) = 257;
    sub_23C497D84((v178 + 8), 33, v153, v180, v253);
    v181 = *(a1 + *(*a1 - 24) + 160);
    llvm::ConstantFP::get();
    LOWORD(v254) = 257;
    v125 = llvm::IRBuilderBase::CreateSelect();
    if (*(a1 + 2952) <= 1)
    {
      *(a1 + 2952) = 2;
    }

LABEL_81:
    v182 = a1 + *(*a1 - 24);
    v183 = *(v182 + 344);
    v230 = *(v182 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v231, (v182 + 8));
    v232 = *(v182 + 104);
    (*(*v183 + 416))(v183, &v230, v125, v128);
    if (!v231)
    {
LABEL_83:
      *(a1 + 3532) = 1;
      goto LABEL_84;
    }

LABEL_82:
    llvm::MetadataTracking::untrack();
    goto LABEL_83;
  }

  if ((*(a1 + 3528) & 2) == 0)
  {
    goto LABEL_84;
  }

  v143 = a1 + *(*a1 - 24);
  v144 = *(a1 + 3600);
  LOWORD(v254) = 257;
  v145 = sub_23C497C88((v143 + 8), **(*v144 + 16), v144, 0, v253);
  if ((*(a1 + 3532) & 1) == 0)
  {
    v167 = a1 + *(*a1 - 24);
    v168 = *(v167 + 344);
    v227 = *(v167 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v228, (v167 + 8));
    v229 = *(v167 + 104);
    (*(*v168 + 424))(v168, &v227, v145);
    if (!v228)
    {
      goto LABEL_83;
    }

    goto LABEL_82;
  }

  if (*(a1 + 3852) == 1 && (*(*(a1 + 2960) + 33) & 0xE) != 0)
  {
    v146 = a1 + *(*a1 - 24);
    v147 = *(v146 + 344);
    if (*(v147 + 1472))
    {
      v148 = strlen(*(v147 + 1472));
    }

    v213 = *(v146 + 192);
    v214 = sub_23C4A0414(v146);
    v215 = a1 + *(*a1 - 24);
    LOWORD(v254) = 257;
    v216 = sub_23C497A7C(v215 + 8, **(*v214 + 16), v214, 0, 0, v253);
    v217 = a1 + *(*a1 - 24);
    v218 = *(v217 + 192);
    v219 = llvm::ConstantInt::get();
    LOWORD(v254) = 257;
    v220 = sub_23C49A668(v217 + 8, v219, v216, v253);
    v221 = a1 + *(*a1 - 24);
    LOWORD(v254) = 257;
    v145 = sub_23C49A8E0(v221 + 8, v145, v220, v253);
  }

  v222 = a1 + *(*a1 - 24);
  v223 = *(v222 + 192);
  v224 = llvm::ConstantInt::get();
  LOWORD(v254) = 257;
  v225 = sub_23C497D84((v222 + 8), 32, v145, v224, v253);
  v8 = sub_23C5060BC(v222, 4, v225);
LABEL_84:
  v184 = *(*(a1 + 2960) + 32);
  result = sub_23C50DE78(a1);
  v186 = result;
  if (*(*(a1 + *(*a1 - 24) + 344) + 1632))
  {
    v254 = 0u;
    v255 = 0u;
    memset(v253, 0, sizeof(v253));
    memset(v256, 0, sizeof(v256));
    if (v184)
    {
      do
      {
        v187 = __clz(v184);
        v188 = v187 ^ 0x1F;
        v189 = 0x80000000 >> v187;
        v190 = *(a1 + 3008);
        v191 = *(*(a1 + 3808) + 8);
        if (((0x80000000 >> v187) & v186) != 0)
        {
          v192 = sub_23C50E0EC(a1, v188);
        }

        else
        {
          v192 = 15;
        }

        v193 = vand_s8(vshl_u32(vshl_u32(vand_s8(vshl_u32(vdup_n_s32(v191), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL), vneg_s32(vdup_n_s32(v188))), 0x200000001), 0x400000002);
        if ((v189 & v190) != 0)
        {
          v194 = 15;
        }

        else
        {
          v194 = 0;
        }

        *(v256 + v188) = v194 & v192 & ((v191 >> v188) & 1 | (8 * ((HIBYTE(v191) >> v188) & 1)) | v193.i32[0] | v193.i32[1]);
        if ((v189 & v190) != 0)
        {
          result = sub_23C50E1A4(a1, v188);
        }

        else
        {
          v195 = *(a1 + 2440 + (v188 << 6));
          result = llvm::UndefValue::get();
        }

        *(v253 + v188) = result;
        v196 = v189 == v184;
        v184 ^= v189;
      }

      while (!v196);
    }

    v197 = *(a1 + 2960);
    v198 = *(v197 + 32);
    if (*(v197 + 32))
    {
      do
      {
        v199 = __clz(v198);
        v200 = 0x80000000 >> v199;
        result = sub_23C50EAC0((a1 + 2432), *(v253 + (v199 ^ 0x1F)), v199 ^ 0x1F, *(v256 + (v199 ^ 0x1F)), v8);
        v196 = v200 == v198;
        v198 ^= v200;
      }

      while (!v196);
    }
  }

  else if (v184)
  {
    do
    {
      v201 = __clz(v184);
      v202 = v201 ^ 0x1F;
      v203 = 0x80000000 >> v201;
      v204 = *(a1 + 3008);
      v205 = *(*(a1 + 3808) + 8);
      if (((0x80000000 >> v201) & v186) != 0)
      {
        v206 = sub_23C50E0EC(a1, v202);
      }

      else
      {
        v206 = 15;
      }

      v207 = v203 & v204;
      if ((v203 & v204) != 0)
      {
        v208 = 15;
      }

      else
      {
        v208 = 0;
      }

      if (v207)
      {
        v209 = sub_23C50E1A4(a1, v202);
      }

      else
      {
        v210 = *(a1 + 2440 + (v202 << 6));
        v209 = llvm::UndefValue::get();
      }

      v211 = vand_s8(vshl_u32(vshl_u32(vand_s8(vshl_u32(vdup_n_s32(v205), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL), vneg_s32(vdup_n_s32(v202))), 0x200000001), 0x400000002);
      result = sub_23C50EAC0((a1 + 2432), v209, v202, v208 & v206 & ((v205 >> v202) & 1 | (8 * ((HIBYTE(v205) >> v202) & 1)) | v211.i32[0] | v211.i32[1]), v8);
      v196 = v203 == v184;
      v184 ^= v203;
    }

    while (!v196);
  }

  v212 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C50DD20(void *a1, uint64_t a2)
{
  v4 = a1 + *(*a1 - 24);
  v5 = *(v4 + 43);
  v14 = *(v4 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v15, (v4 + 8));
  v16 = *(v4 + 26);
  v6 = (*(*v5 + 80))(v5, &v14, a2, 8, 0, 1);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  v7 = a1 + *(*a1 - 24);
  v8 = *(v7 + 43);
  v11 = *(v7 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (v7 + 8));
  v13 = *(v7 + 26);
  v9 = (*(*v8 + 88))(v8, &v11, v6, 8, 0, 32);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

uint64_t sub_23C50DE78(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = **(*(a1[20] + 24) + 16);
  v2 = a1 + *(*a1 - 24);
  if (v1 == *(v2 + 18) || (v4 = *(a1[7] + 8), v5 = *(v2 + 40), v6 = *(*(llvm::Module::getFunction() + 8) + 24), v7 = sub_23C4B88A0(v6), ((v7 - (v6 - 32 * (*(v6 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) == 0))
  {
    v11 = 0;
  }

  else
  {
    MEMORY[0x28223BE20](v7);
    v9 = &v19[-((v8 + 15) & 0xFFFFFFFF0)];
    if (v8 >= 0x200)
    {
      v10 = 512;
    }

    else
    {
      v10 = v8;
    }

    bzero(&v19[-((v8 + 15) & 0xFFFFFFFF0)], v10);
    if (v4)
    {
      if (*(v1 + 8) == 16)
      {
        sub_23C505FD4(a1 + *(*a1 - 24), *(v6 - 4 * (*(v6 + 5) & 0x7FFFFFF)), v9);
      }

      else
      {
        *v9 = *(v6 - 4 * (*(v6 + 5) & 0x7FFFFFF));
      }

      v12 = 0;
      v11 = 0;
      do
      {
        v13 = *(a1[7] - 8 * *(a1[7] + 8) + 8 * v12);
        if (sub_23C4A57A0(*(v13 - 8 * *(v13 + 8)), "air.render_target"))
        {
          v14 = v9[v12];
          if (v14)
          {
            if (*(v14 + 16) == 21)
            {
              v15 = *(a1[9] + 8 * *(v14 + 32));
              if (v15)
              {
                if (sub_23C4A57A0(*(v15 - 8 * *(v15 + 8) + 8), "air.render_target"))
                {
                  v20 = 0;
                  v21 = 2;
                  sub_23C506AF0(0, v15, &v21, &v20 + 1);
                  v21 = 1;
                  sub_23C506AF0(0, v13, &v21, &v20);
                  if (HIDWORD(v20) == v20)
                  {
                    v16 = 1 << SBYTE4(v20);
                  }

                  else
                  {
                    LOBYTE(v16) = 0;
                  }

                  v11 |= v16;
                }
              }
            }
          }
        }

        ++v12;
      }

      while (v4 != v12);
    }

    else
    {
      v11 = 0;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t sub_23C50E0EC(uint64_t a1, unsigned int a2)
{
  v2 = **(a1 + 3808);
  if ((v2 & 0x20) != 0)
  {
    v5 = (v2 >> 6) & 0x1F;
    v6 = v5 > 0x10;
    v7 = (1 << v5) & 0x10014;
    if (v6 || v7 == 0)
    {
      return 15;
    }

    return 0;
  }

  v3 = *(a1 + 3824);
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      goto LABEL_11;
    }

    return 0;
  }

  v4 = *(*(a1 + 3816) + 4 * a2 + 24);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  if (sub_23C50FEEC((v4 >> 21) & 7, (v4 >> 1) & 0x1F, (v4 >> 6) & 0x1F))
  {
    v10 = 0;
  }

  else
  {
    v10 = 7;
  }

  if (sub_23C50FEEC(HIBYTE(v4) & 7, v4 >> 11, HIWORD(v4) & 0x1F))
  {
    return v10;
  }

  else
  {
    return v10 | 8;
  }
}

uint64_t *sub_23C50E1A4(uint64_t a1, unsigned int a2)
{
  v4 = a1 + *(*a1 - 24);
  v5 = a2;
  v6 = a1 + 32 * a2;
  v7 = *(v6 + 3040);
  v103 = 257;
  v11 = sub_23C497C88((v4 + 8), **(*v7 + 16), v7, 0, v102);
  v12 = *(v6 + 3296);
  if (v12)
  {
    v13 = a1 + *(*a1 - 24);
    v103 = 257;
    v14 = sub_23C497C88((v13 + 8), **(*v12 + 16), v12, 0, v102);
  }

  else
  {
    v14 = 0;
  }

  v15 = **(a1 + 3808);
  v16 = *(a1 + 3824);
  if (v16)
  {
    v17 = (v16 + 16);
  }

  else
  {
    v17 = (*(a1 + 3816) + 4 * v5 + 24);
  }

  v18 = *v17;
  if (!(**(a1 + 3808) & 0x20 | *v17 & 1))
  {
    goto LABEL_50;
  }

  v19 = a1 + 2440 + (v5 << 6);
  if (*(v19 + 52) == 1)
  {
    v20 = a1 + 2440 + (v5 << 6);
    v90 = v5;
    if (*(a1 + 10))
    {
      v21 = 1;
    }

    else
    {
      v21 = *(a1 + 24) ^ 1;
    }

    v22 = a1 + *(*a1 - 24);
    v23 = *(v22 + 344);
    v97 = *(v22 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v98, (v22 + 8));
    v99 = *(v22 + 104);
    v19 = v20;
    v88 = sub_23C4A28C8(v23, &v97, v11, v20 + 36, v21 & 1);
    if (v98)
    {
      llvm::MetadataTracking::untrack();
    }

    if (v14)
    {
      v24 = a1 + *(*a1 - 24);
      v25 = *(v24 + 344);
      v94 = *(v24 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v95, (v24 + 8));
      v26 = *(v24 + 104);
      v19 = v20;
      v96 = v26;
      v14 = sub_23C4A28C8(v25, &v94, v14, v20 + 36, v21 & 1);
      if (v95)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    v11 = v88;
    v5 = v90;
  }

  if ((v15 & 0x20) != 0)
  {
    v27 = sub_23C50B55C(a1 + 2432, a2, 0, 0);
    v11 = sub_23C4B245C(a1 + *(*a1 - 24), v11, *(a1 + *(*a1 - 24) + 280), 0, 1, v28, v29, v30);
    v34 = sub_23C4B245C(a1 + *(*a1 - 24), v27, *(a1 + *(*a1 - 24) + 280), 0, 1, v31, v32, v33);
    v36 = v34;
    v37 = 0;
    switch((**(a1 + 3808) >> 6) & 0x1F)
    {
      case 1:
        v38 = *(a1 + *(*a1 - 24) + 280);
        AllOnesValue = llvm::ConstantInt::get();
        goto LABEL_49;
      case 2:
        v59 = a1 + *(*a1 - 24);
        v103 = 257;
        v52 = v59 + 8;
        v53 = v102;
        v51 = v11;
        goto LABEL_35;
      case 3:
        v61 = a1 + *(*a1 - 24);
        v103 = 257;
        v60 = sub_23C4BFF4C(v61 + 8, v34, v102);
        v101 = 257;
        v52 = v61 + 8;
        v53 = v100;
        v51 = v11;
        goto LABEL_38;
      case 4:
        goto LABEL_51;
      case 5:
        v50 = a1 + *(*a1 - 24);
        v103 = 257;
        v51 = sub_23C4BFF4C(v50 + 8, v11, v102);
        v101 = 257;
        v52 = v50 + 8;
        v53 = v100;
LABEL_35:
        v60 = v36;
LABEL_38:
        AllOnesValue = sub_23C49A8E0(v52, v51, v60, v53);
        goto LABEL_49;
      case 6:
        v64 = a1 + *(*a1 - 24);
        v103 = 257;
        AllOnesValue = sub_23C4D5948((v64 + 8), v11, v34, v102);
        goto LABEL_49;
      case 7:
        v65 = a1 + *(*a1 - 24);
        v103 = 257;
        v56 = v65 + 8;
        v57 = v102;
        v55 = v11;
        goto LABEL_43;
      case 8:
        v62 = a1 + *(*a1 - 24);
        v103 = 257;
        v63 = sub_23C49A98C(v62 + 8, v11, v34, v102);
        goto LABEL_47;
      case 9:
        v62 = a1 + *(*a1 - 24);
        v103 = 257;
        v63 = sub_23C4D5948((v62 + 8), v11, v34, v102);
        goto LABEL_47;
      case 0xA:
        v58 = a1 + *(*a1 - 24);
        v103 = 257;
        v47 = v58 + 8;
        v48 = v102;
        v49 = v36;
        goto LABEL_48;
      case 0xB:
        v67 = a1 + *(*a1 - 24);
        v103 = 257;
        v66 = sub_23C4BFF4C(v67 + 8, v34, v102);
        v101 = 257;
        v56 = v67 + 8;
        v57 = v100;
        v55 = v11;
        goto LABEL_45;
      case 0xC:
        v46 = a1 + *(*a1 - 24);
        v103 = 257;
        v47 = v46 + 8;
        v48 = v102;
        v49 = v11;
        goto LABEL_48;
      case 0xD:
        v54 = a1 + *(*a1 - 24);
        v103 = 257;
        v55 = sub_23C4BFF4C(v54 + 8, v11, v102);
        v101 = 257;
        v56 = v54 + 8;
        v57 = v100;
LABEL_43:
        v66 = v36;
LABEL_45:
        AllOnesValue = sub_23C49A98C(v56, v55, v66, v57);
        goto LABEL_49;
      case 0xE:
        v62 = a1 + *(*a1 - 24);
        v103 = 257;
        v63 = sub_23C49A8E0(v62 + 8, v11, v34, v102);
LABEL_47:
        v49 = v63;
        v101 = 257;
        v47 = v62 + 8;
        v48 = v100;
LABEL_48:
        AllOnesValue = sub_23C4BFF4C(v47, v49, v48);
        goto LABEL_49;
      case 0xF:
        AllOnesValue = llvm::Constant::getAllOnesValue(*(a1 + *(*a1 - 24) + 280), v35);
LABEL_49:
        v11 = AllOnesValue;
        goto LABEL_50;
      case 0x10:
        v37 = 0;
        v11 = v34;
        goto LABEL_51;
      default:
        v37 = 0;
        v11 = 0;
        goto LABEL_51;
    }
  }

  if ((v18 & 1) != 0 && ((v40 = *(*(a1 + 2960) + 4 * v5) & 0x1F, v41 = v40 > 0x13, v42 = (1 << v40) & 0x81B30, !v41) ? (v43 = v42 == 0) : (v43 = 1), v43))
  {
    v44 = *(a1 + 3824);
    if (v44)
    {
      v45 = (v44 + 16);
    }

    else
    {
      v45 = (*(a1 + 3816) + 4 * v5 + 24);
    }

    v72 = (*v45 >> 21) & 7;
    v73 = (*v45 >> 1) & 0x1F;
    v74 = (*v45 >> 6) & 0x1F;
    v87 = *v45 >> 11;
    v89 = HIBYTE(*v45) & 7;
    v86 = HIWORD(*v45) & 0x1F;
    v78 = sub_23C4B245C(a1 + *(*a1 - 24), v11, *(v19 + 8), 0, 1, v8, v9, v10);
    if (v14)
    {
      v14 = sub_23C4B245C(a1 + *(*a1 - 24), v14, *(v19 + 8), 0, 1, v75, v76, v77);
    }

    v79 = sub_23C50B55C(a1 + 2432, a2, 0, 0);
    v83 = sub_23C4B245C(a1 + *(*a1 - 24), v79, *(v19 + 8), *(v19 + 34), *(v19 + 33), v80, v81, v82);
    v37 = *(v19 + 52) == 1 && ((*v45 >> 21) & 7u) - 1 <= 1 && (HIBYTE(*v45) & 7u) - 1 < 2;
    v84 = sub_23C50F180(a1, v78, v14, v83, v72, v73, v74, v19 + 36, *(v19 + 34), 1u);
    v85 = sub_23C50F180(a1, v78, v14, v83, v89, v87, v86, v19 + 36, *(v19 + 34), 0);
    v11 = sub_23C5067B4(a1 + *(*a1 - 24), v84, v85);
  }

  else
  {
LABEL_50:
    v37 = 0;
  }

LABEL_51:
  v68 = (a1 + 2440 + (v5 << 6));
  if (v68[52] == 1 && v68[32] == 1)
  {
    if (*(*(a1 + 2432 + *(*(a1 + 2432) - 24) + 344) + 1642) == 1)
    {
      if (v37 || (v68[56] & 1) == 0)
      {
        return v11;
      }
    }

    else if (v37)
    {
      return v11;
    }

    v69 = a1 + *(*a1 - 24);
    v70 = *(v69 + 344);
    v91 = *(v69 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v92, (v69 + 8));
    v93 = *(v69 + 104);
    v11 = sub_23C4A28C8(v70, &v91, v11, (v68 + 36), 0);
    if (v92)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  return v11;
}

uint64_t sub_23C50EAC0(uint64_t *a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5)
{
  v72 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = (a1[66] + 4 * a3);
  v9 = *v8 >> 5;
  v10 = *v8 & 0x1F;
  v11 = *a1;
  v12 = *(*(a1 + *(*a1 - 24) + 344) + 828);
  if (v10 <= 0x16)
  {
    if (((1 << v10) & 0x3E3C0) != 0)
    {
      v12 = ((v12 + 2 * v9 - 1) & -v12) >> 1;
      goto LABEL_10;
    }

    if (((1 << v10) & 0x41C00) != 0)
    {
      v12 = (((4 * v9) + v12 - 1) & -v12) >> 2;
      goto LABEL_10;
    }

    if (((1 << v10) & 0x780000) != 0)
    {
      LOBYTE(v12) = 4;
      goto LABEL_10;
    }
  }

  LODWORD(v12) = (v12 + v9 - 1) & -v12;
  if (v10 - 2 >= 4)
  {
    LOBYTE(v12) = 0;
  }

LABEL_10:
  v13 = -1 << v12;
  v14 = (-1 << v9) & 0xF;
  if (((1 << (v9 - 1)) & a4) == 0)
  {
    v14 = 0;
  }

  v15 = (v14 | a4) & ~v13;
  a1[69] |= (v15 << (4 * a3));
  v16 = *(a1 + *(v11 - 24) + 344);
  v17 = *v8;
  v18 = (*(*v16 + 384))();
  v19 = a1 + *(*a1 - 24);
  v20 = *(v19 + 43);
  v67 = *(v19 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v68, (v19 + 8));
  v69 = *(v19 + 26);
  v21 = &a1[8 * v7];
  v22 = *v20;
  v23 = v20;
  v24 = v8;
  v28 = (*(v22 + 408))(v23, &v67, a2, v8, v21 + 44);
  if (v68)
  {
    llvm::MetadataTracking::untrack();
  }

  v29 = sub_23C4B245C(a1 + *(*a1 - 24), v28, v21[3], *(v21 + 42), *(v21 + 41), v25, v26, v27);
  v30 = *(v21 + 41);
  v31 = *(v21 + 42);
  Select = sub_23C505C18(a1 + *(*a1 - 24), v29, *(a1[66] + 4 * v7) >> 5);
  if ((v18 | v13) == 0xFFFFFFFF)
  {
    v37 = a3;
  }

  else
  {
    v33 = *(a1 + *(*a1 - 24) + 168);
    *&v70 = llvm::ConstantInt::get();
    v34 = *(a1 + *(*a1 - 24) + 168);
    *(&v70 + 1) = llvm::ConstantInt::get();
    v35 = *(a1 + *(*a1 - 24) + 168);
    *&v71 = llvm::ConstantInt::get();
    v36 = *(a1 + *(*a1 - 24) + 168);
    *(&v71 + 1) = llvm::ConstantInt::get();
    llvm::ConstantVector::get();
    v37 = a3;
    sub_23C50B55C(a1, a3, 1, 1);
    v38 = a1 + *(*a1 - 24);
    v66 = 257;
    Select = llvm::IRBuilderBase::CreateSelect();
    v15 = 15;
  }

  if (a5)
  {
    if (v9 <= 3)
    {
      v70 = 0u;
      v71 = 0u;
      v39 = v9;
      if (v9)
      {
        v40 = 0;
        do
        {
          v41 = *(a1 + *(*a1 - 24) + 192);
          *(&v70 + v40++) = llvm::ConstantInt::get();
        }

        while (v9 != v40);
      }

      do
      {
        v42 = *(a1 + *(*a1 - 24) + 192);
        *(&v70 + v39++) = llvm::ConstantInt::get();
      }

      while (v39 != 4);
      v43 = a1 + *(*a1 - 24);
      v44 = *(v43 + 168);
      v45 = llvm::ConstantInt::get();
      v46 = sub_23C5060BC(v43, 4, v45);
      v47 = llvm::ConstantVector::get();
      v66 = 257;
      sub_23C49A3AC(v43 + 8, a5, v46, v47, v65);
      v24 = v8;
      v37 = a3;
    }

    sub_23C50B55C(a1, v37, 1, 0);
    sub_23C4B245C(a1 + *(*a1 - 24), Select, v21[3], *(v21 + 42), *(v21 + 41), v48, v49, v50);
    v51 = a1 + *(*a1 - 24);
    v66 = 257;
    v37 = a3;
    Select = llvm::IRBuilderBase::CreateSelect();
  }

  v52 = sub_23C50BD14(a1, Select, v15, v37);
  v54 = v53;
  v55 = sub_23C4B28B0(a1 + *(*a1 - 24), v52, v21[1], *(v21 + 8));
  v56 = a1 + *(*a1 - 24);
  v57 = *(v56 + 43);
  v62 = *(v56 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v63, (v56 + 8));
  v64 = *(v56 + 26);
  result = (*(*v57 + 192))(v57, &v62, *(a1[66] + 32) >> 12, BYTE2(*(a1[66] + 32)), v24, v21[1], v55, v54);
  if (v63)
  {
    result = llvm::MetadataTracking::untrack();
  }

  v59 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C50F180(uint64_t *a1, uint64_t *a2, llvm::Type **a3, uint64_t *a4, int a5, int a6, int a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10)
{
  v15 = *(*a1 - 24);
  v16 = a1 + v15;
  if (a10)
  {
    v17 = sub_23C505670(a1 + v15, a2, 3, 1);
    v18 = sub_23C505670(a1 + *(*a1 - 24), a4, 3, 1);
  }

  else
  {
    v53 = 257;
    v19 = *(v16 + 24);
    v20 = llvm::ConstantInt::get();
    v17 = sub_23C5057E8((v16 + 8), a2, v20, v52);
    v21 = a1 + *(*a1 - 24);
    v53 = 257;
    v22 = *(v21 + 24);
    v23 = llvm::ConstantInt::get();
    v18 = sub_23C5057E8((v21 + 8), a4, v23, v52);
  }

  v24 = v18;
  if (a5 == 6)
  {
    v25 = **(*a2 + 16);
    v17 = llvm::ConstantFP::get();
    if (a10)
    {
      v17 = sub_23C5060BC(a1 + *(*a1 - 24), 3, v17);
    }
  }

  else if ((a5 - 1) < 2)
  {
    goto LABEL_9;
  }

  v26 = a1 + *(*a1 - 24);
  v27 = sub_23C50F5E0(a1, a2, a3, a4, a6, a8, a9, a10);
  v53 = 257;
  v17 = sub_23C49EA2C((v26 + 8), v17, v27, v52);
  v28 = a1 + *(*a1 - 24);
  v29 = sub_23C50F5E0(a1, a2, a3, a4, a7, a8, a9, a10);
  v53 = 257;
  v24 = sub_23C49EA2C((v28 + 8), v24, v29, v52);
LABEL_9:
  v30 = 0;
  if (a5 > 3)
  {
    switch(a5)
    {
      case 4:
        v35 = a1 + *(*a1 - 24);
        v53 = 257;
        v36 = (v35 + 8);
        v37 = v17;
        v38 = v24;
        break;
      case 5:
        v41 = a1 + *(*a1 - 24);
        v53 = 257;
        v36 = (v41 + 8);
        v37 = v24;
        v38 = v17;
        break;
      case 6:
LABEL_17:
        v31 = a1 + *(*a1 - 24);
        v53 = 257;
        return sub_23C4A0BD4((v31 + 8), v17, v24, v52);
      default:
        return v30;
    }

    return sub_23C4A0EC4(v36, v37, v38, v52);
  }

  if (a5 == 1)
  {
    v33 = a1 + *(*a1 - 24);
    v34 = *(v33 + 43);
    v49 = *(v33 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v50, (v33 + 8));
    v51 = *(v33 + 26);
    v30 = (*(*v34 + 48))(v34, &v49, v17, v24, 0);
    if (!v50)
    {
      return v30;
    }

LABEL_22:
    llvm::MetadataTracking::untrack();
    return v30;
  }

  if (a5 != 2)
  {
    if (a5 != 3)
    {
      return v30;
    }

    goto LABEL_17;
  }

  v39 = a1 + *(*a1 - 24);
  v40 = *(v39 + 43);
  v46 = *(v39 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v47, (v39 + 8));
  v48 = *(v39 + 26);
  v30 = (*(*v40 + 56))(v40, &v46, v17, v24, 0);
  if (v47)
  {
    goto LABEL_22;
  }

  return v30;
}

uint64_t sub_23C50F5E0(uint64_t *a1, llvm::Type **a2, llvm::Type **a3, llvm::Type **a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = a8;
  v10 = a4;
  v11 = a3;
  if ((a5 & 0xFFFFFFFC) == 0xC)
  {
    v17 = *(a1 + *(*a1 - 24) + 320);
    GlobalVariable = llvm::Module::getGlobalVariable();
    if (!GlobalVariable)
    {
      GlobalVariable = llvm::User::operator new(0x58);
      v19 = *a1;
      v20 = a1 + *(*a1 - 24);
      v21 = *(v20 + 40);
      v22 = *(v20 + 34);
      v105[0] = "agc.blend_color";
      v106 = 259;
      v96 = *(*(a1 + *(v19 - 24) + 344) + 836) | 0x100000000;
      llvm::GlobalVariable::GlobalVariable();
      llvm::GlobalObject::setSection();
      sub_23C506A1C((a1 + *(*a1 - 24)));
    }

    v23 = (a1 + *(*a1 - 24));
    v106 = 257;
    v24 = sub_23C497C88(v23 + 1, **(*GlobalVariable + 16), GlobalVariable, 0, v105);
    v25 = a1 + *(*a1 - 24);
    v26 = *(v25 + 43);
    v102 = *(v25 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v103, (v25 + 8));
    v104 = *(v25 + 26);
    v30 = sub_23C4A28C8(v26, &v102, v24, a6, 0);
    if (v103)
    {
      llvm::MetadataTracking::untrack();
    }

    v31 = sub_23C4B245C(a1 + *(*a1 - 24), v30, *a2, a7, 1, v27, v28, v29);
    v8 = a8;
    v11 = a3;
    v10 = a4;
  }

  else
  {
    v31 = 0;
  }

  switch(a5)
  {
    case 1:
      v32 = **(*a2 + 2);
      goto LABEL_26;
    case 2:
      v57 = **(*a2 + 2);
LABEL_26:
      v58 = llvm::ConstantFP::get();
      goto LABEL_40;
    case 3:
      goto LABEL_23;
    case 4:
      v52 = a1 + *(*a1 - 24);
      v53 = *a2;
      v35 = llvm::ConstantFP::get();
      v106 = 257;
      v36 = (v52 + 8);
      v37 = a2;
      goto LABEL_21;
    case 5:
      v44 = a1 + *(*a1 - 24);
      v106 = 257;
      v45 = *(v44 + 24);
      v46 = llvm::ConstantInt::get();
      v47 = (v44 + 8);
      v48 = a2;
      goto LABEL_39;
    case 6:
      v38 = a1 + *(*a1 - 24);
      v106 = 257;
      v61 = *(v38 + 24);
      v40 = llvm::ConstantInt::get();
      v41 = (v38 + 8);
      v42 = a2;
      goto LABEL_34;
    case 7:
      v43 = 1;
      a2 = v10;
      if (!v8)
      {
        goto LABEL_31;
      }

      goto LABEL_42;
    case 8:
      v54 = a1 + *(*a1 - 24);
      v55 = *v10;
      v35 = llvm::ConstantFP::get();
      v106 = 257;
      v36 = (v54 + 8);
      v37 = v10;
      goto LABEL_21;
    case 9:
      v92 = a1 + *(*a1 - 24);
      v106 = 257;
      v93 = *(v92 + 24);
      v46 = llvm::ConstantInt::get();
      v47 = (v92 + 8);
      v48 = v10;
      goto LABEL_39;
    case 10:
      v38 = a1 + *(*a1 - 24);
      v106 = 257;
      v51 = *(v38 + 24);
      v40 = llvm::ConstantInt::get();
      v41 = (v38 + 8);
      v42 = v10;
      goto LABEL_34;
    case 11:
      v72 = a1 + *(*a1 - 24);
      v106 = 257;
      v73 = *(v72 + 24);
      v74 = llvm::ConstantInt::get();
      v75 = sub_23C5057E8((v72 + 8), a2, v74, v105);
      v76 = a1 + *(*a1 - 24);
      v106 = 257;
      v77 = *(v76 + 24);
      v78 = llvm::ConstantInt::get();
      v79 = sub_23C5057E8((v76 + 8), v10, v78, v105);
      v80 = *v79;
      v81 = llvm::ConstantFP::get();
      v106 = 257;
      v82 = sub_23C4A0EC4((v76 + 8), v81, v79, v105);
      v83 = a1 + *(*a1 - 24);
      v84 = *(v83 + 43);
      v99 = *(v83 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v100, (v83 + 8));
      v101 = *(v83 + 26);
      v85 = (*(*v84 + 48))(v84, &v99, v75, v82, 0);
      if (v100)
      {
        llvm::MetadataTracking::untrack();
      }

      v86 = sub_23C5060BC(a1 + *(*a1 - 24), 4, v85);
      v87 = a1 + *(*a1 - 24);
      v88 = **(*a2 + 2);
      v89 = llvm::ConstantFP::get();
      v106 = 257;
      v90 = *(v87 + 24);
      v91 = llvm::ConstantInt::get();
      v56 = sub_23C505AA8((v87 + 8), v86, v89, v91, v105);
      goto LABEL_22;
    case 12:
      v43 = 1;
      a2 = v31;
      if (v8)
      {
        goto LABEL_42;
      }

      goto LABEL_31;
    case 13:
      v49 = a1 + *(*a1 - 24);
      v50 = *v31;
      v35 = llvm::ConstantFP::get();
      v106 = 257;
      v36 = (v49 + 8);
      v37 = v31;
      goto LABEL_21;
    case 14:
      v62 = a1 + *(*a1 - 24);
      v106 = 257;
      v63 = *(v62 + 24);
      v46 = llvm::ConstantInt::get();
      v47 = (v62 + 8);
      v48 = v31;
      goto LABEL_39;
    case 15:
      v38 = a1 + *(*a1 - 24);
      v106 = 257;
      v39 = *(v38 + 24);
      v40 = llvm::ConstantInt::get();
      v41 = (v38 + 8);
      v42 = v31;
      goto LABEL_34;
    case 16:
      v43 = 1;
      a2 = v11;
      if (v8)
      {
        goto LABEL_42;
      }

      goto LABEL_31;
    case 17:
      v33 = a1 + *(*a1 - 24);
      v34 = *v11;
      v35 = llvm::ConstantFP::get();
      v106 = 257;
      v36 = (v33 + 8);
      v37 = v11;
LABEL_21:
      v56 = sub_23C4A0EC4(v36, v35, v37, v105);
LABEL_22:
      a2 = v56;
LABEL_23:
      v43 = 1;
      if (v8)
      {
        goto LABEL_42;
      }

      goto LABEL_31;
    case 18:
      v59 = a1 + *(*a1 - 24);
      v106 = 257;
      v60 = *(v59 + 24);
      v46 = llvm::ConstantInt::get();
      v47 = (v59 + 8);
      v48 = v11;
LABEL_39:
      v58 = sub_23C5057E8(v47, v48, v46, v105);
      goto LABEL_40;
    case 19:
      v38 = a1 + *(*a1 - 24);
      v106 = 257;
      v68 = *(v38 + 24);
      v40 = llvm::ConstantInt::get();
      v41 = (v38 + 8);
      v42 = v11;
LABEL_34:
      v69 = sub_23C5057E8(v41, v42, v40, v105);
      v70 = *v69;
      v71 = llvm::ConstantFP::get();
      v106 = 257;
      v58 = sub_23C4A0EC4((v38 + 8), v71, v69, v105);
LABEL_40:
      a2 = v58;
      break;
    default:
      a2 = 0;
      break;
  }

  v43 = 0;
  if (v8)
  {
LABEL_42:
    v94 = a1 + *(*a1 - 24);
    if (v43)
    {
      return sub_23C505670(v94, a2, 3, 1);
    }

    else
    {
      return sub_23C5060BC(v94, 3, a2);
    }
  }

LABEL_31:
  if (v43)
  {
    v64 = a1 + *(*a1 - 24);
    v106 = 257;
    v65 = *(v64 + 24);
    v66 = llvm::ConstantInt::get();
    return sub_23C5057E8((v64 + 8), a2, v66, v105);
  }

  return a2;
}

BOOL sub_23C50FEEC(int a1, int a2, int a3)
{
  if (a1 <= 3)
  {
    if ((a1 - 1) < 2)
    {
      return 1;
    }

    if (a1 == 3)
    {
      if (a2 == 2 && a3 == 1)
      {
        return 1;
      }

      if (a2 == 4 && a3 == 3)
      {
        return 1;
      }

      if (a2 == 4 && a3 == 7)
      {
        return 1;
      }

      v5 = a3 == 3 || a3 == 7;
      v6 = v5;
      if (a2 == 8 && v6)
      {
        return 1;
      }

      if (a2 == 6 && a3 == 5)
      {
        return 1;
      }

      if (a2 == 6 && a3 == 9)
      {
        return 1;
      }

      v7 = a3 == 5 || a3 == 9;
      v8 = v7;
      if (a2 == 10 && v8)
      {
        return 1;
      }

      if (a2 == 1 && a3 == 2)
      {
        return 1;
      }

      if (a2 == 3 && a3 == 4)
      {
        return 1;
      }

      if (a2 == 7 && a3 == 4)
      {
        return 1;
      }

      v9 = a2 == 3 || a2 == 7;
      v10 = v9;
      if (a3 == 8 && v10 || a2 == 5 && a3 == 6 || a2 == 9 && a3 == 6)
      {
        return 1;
      }

      return (a2 == 5 || a2 == 9) && a3 == 10;
    }

    return 0;
  }

  if (a1 == 4)
  {
    return a2 == 2 && a3 == 1;
  }

  else
  {
    if (a1 != 5 && a1 != 6)
    {
      return 0;
    }

    return a2 == 1 && a3 == 2;
  }
}

uint64_t sub_23C510044(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 8;
  do
  {
    v4 = a1 + v2;
    v5 = *(a1 + v2 + 3016);
    if (v5)
    {
      v6 = *(*a1 - 24);
      v54 = 257;
      v7 = sub_23C506924((v3 + v6), v5, v53);
      sub_23C4D56F8((v4 + 3024), v7);
    }

    v8 = *(v4 + 3272);
    if (v8)
    {
      v9 = *(*a1 - 24);
      v54 = 257;
      v10 = sub_23C506924((v3 + v9), v8, v53);
      sub_23C4D56F8((a1 + v2 + 3280), v10);
    }

    v2 += 32;
  }

  while (v2 != 256);
  v11 = *(a1 + 3528);
  if ((v11 & 4) != 0)
  {
    v12 = a1 + *(*a1 - 24);
    v50 = *(v12 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v51, (v12 + 8));
    v52 = *(v12 + 104);
    sub_23C497720(a1 + *(*a1 - 24) + 8, *(*(a1 + 3728) + 40), *(*(a1 + 3728) + 32));
    v13 = a1 + *(*a1 - 24);
    v14 = *(v13 + 160);
    v54 = 257;
    v15 = sub_23C506924((v13 + 8), v14, v53);
    sub_23C4D56F8((a1 + 3536), v15);
    sub_23C4BA8C0((a1 + *(*a1 - 24) + 8), *(a1 + 3728), *(a1 + 3552), 0);
    v16 = a1 + *(*a1 - 24);
    v47 = v50;
    v48 = v51;
    if (v51)
    {
      llvm::MetadataTracking::track();
    }

    v49 = v52;
    sub_23C49769C(&v47, v16 + 8);
    if (v48)
    {
      llvm::MetadataTracking::untrack();
    }

    if (v51)
    {
      llvm::MetadataTracking::untrack();
    }

    v11 = *(a1 + 3528);
    if ((v11 & 8) == 0)
    {
LABEL_9:
      if ((v11 & 2) == 0)
      {
        goto LABEL_10;
      }

LABEL_20:
      v23 = a1 + *(*a1 - 24);
      v24 = *(v23 + 192);
      v54 = 257;
      v25 = sub_23C506924((v23 + 8), v24, v53);
      sub_23C4D56F8((a1 + 3584), v25);
      v26 = a1 + *(*a1 - 24);
      v27 = *(a1 + 3832);
      v28 = *(v26 + 192);
      v29 = llvm::ConstantInt::get();
      sub_23C4BA8C0((v26 + 8), v29, *(a1 + 3600), 0);
      if ((*(a1 + 3528) & 1) == 0)
      {
        return 1;
      }

      goto LABEL_21;
    }
  }

  else if ((*(a1 + 3528) & 8) == 0)
  {
    goto LABEL_9;
  }

  v17 = a1 + *(*a1 - 24);
  v18 = *(v17 + 184);
  v54 = 257;
  v19 = sub_23C506924((v17 + 8), v18, v53);
  sub_23C4D56F8((a1 + 3560), v19);
  v20 = a1 + *(*a1 - 24);
  v21 = *(v20 + 184);
  v22 = llvm::ConstantInt::get();
  sub_23C4BA8C0((v20 + 8), v22, *(a1 + 3576), 0);
  v11 = *(a1 + 3528);
  if ((v11 & 2) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v11 & 1) == 0)
  {
    return 1;
  }

LABEL_21:
  if ((*(*(a1 + 3808) + 1) & 8) != 0)
  {
    v38 = llvm::User::operator new(0x58);
    v39 = (a1 + *(*a1 - 24));
    v40 = v39[40];
    v41 = v39[20];
    v53[0] = "agc.alpha_test_ref";
    v54 = 259;
    v46 = *(v39[43] + 836) | 0x100000000;
    llvm::GlobalVariable::GlobalVariable();
    llvm::GlobalObject::setSection();
    sub_23C506A1C((a1 + *(*a1 - 24)));
    v42 = a1 + *(*a1 - 24);
    v54 = 257;
    v43 = sub_23C497C88((v42 + 8), **(*v38 + 16), v38, 0, v53);
    v44 = sub_23C50DD20(a1, v43);
    sub_23C4D56F8((a1 + 3632), v44);
  }

  else
  {
    v30 = *(a1 + *(*a1 - 24) + 160);
    v31 = llvm::ConstantFP::get();
    sub_23C4D56F8((a1 + 3632), v31);
    *(a1 + 3656) = 6;
    v32 = a1 + *(*a1 - 24);
    v33 = *(v32 + 160);
    v54 = 257;
    v34 = sub_23C506924((v32 + 8), v33, v53);
    sub_23C4D56F8((a1 + 3608), v34);
    v35 = a1 + *(*a1 - 24);
    v36 = *(v35 + 160);
    v37 = llvm::ConstantFP::get();
    sub_23C4BA8C0((v35 + 8), v37, *(a1 + 3624), 0);
  }

  return 1;
}

uint64_t sub_23C510528(uint64_t a1)
{
  sub_23C4FE97C(a1);
  v2 = sub_23C510D18((a1 + 2432));
  v3 = **(*(*(a1 + 160) + 24) + 16);
  v4 = *a1;
  if (v3 == *(a1 + *(*a1 - 24) + 144))
  {
    goto LABEL_39;
  }

  v5 = *(*(a1 + 56) + 8);
  if (!v5)
  {
    goto LABEL_39;
  }

  v6 = 0;
  v7 = 8 * v5;
  do
  {
    v8 = *(v3 + 8);
    v9 = v3;
    if (v8 == 16)
    {
      v9 = *(*(v3 + 16) + v6);
      v8 = *(v9 + 8);
    }

    if ((v8 & 0xFE) == 0x12)
    {
      v9 = **(v9 + 16);
    }

    v10 = *(*(a1 + 56) - 8 * *(*(a1 + 56) + 8) + v6);
    if (sub_23C4A57A0(*(v10 - 8 * *(v10 + 8)), "air.render_target"))
    {
      v62 = 0;
      LODWORD(v61) = 1;
      if (!sub_23C506AF0(0, v10, &v61, &v62 + 1))
      {
        return 0;
      }

      LODWORD(v61) = 2;
      if (!sub_23C506AF0(0, v10, &v61, &v62))
      {
        return 0;
      }

      v12 = v62;
      v11 = BYTE4(v62);
      if (v62 != 1 || ((v13 = *(a1 + 3824)) == 0 ? (v14 = (*(a1 + 3816) + 4 * HIDWORD(v62) + 24)) : (v14 = (v13 + 16)), (v15 = *v14, (v15 & 1) != 0) && (v2 = vceqq_s32(vandq_s8(vdupq_n_s32(v15), xmmword_23C532580), xmmword_23C532590), v2.n128_u64[0] = vmovn_s32(v2), v2.n128_u16[0] = vmaxv_u16(v2.n128_u64[0]), (v2.n128_u8[0] & 1) != 0)))
      {
        v16 = (a1 + 3272 + 32 * HIDWORD(v62));
        if (!v62)
        {
          v16 = (a1 + 3016 + 32 * HIDWORD(v62));
        }

        v17 = *a1;
        if (*(a1 + 2440 + (HIDWORD(v62) << 6) + 33) == 1)
        {
          v18 = *a1;
          v19 = a1 + *(v17 - 24);
          if (v9 != *(v19 + 160) && v9 != *(v19 + 152))
          {
            v9 = *(v19 + 160);
          }
        }

        v20 = *a1;
        v21 = (a1 + *(v17 - 24));
        if (v9 != v21[20])
        {
          if (v9 == v21[19])
          {
            if (*v16 != v21[34])
            {
              v22 = 33;
              goto LABEL_33;
            }
          }

          else
          {
            if (v9 == v21[24])
            {
              v22 = 37;
              goto LABEL_33;
            }

            if (v9 == v21[23] && *v16 != v21[37])
            {
              v22 = 36;
LABEL_33:
              *v16 = v21[v22];
            }
          }

          if (!v12 && ((1 << v11) & *(*(a1 + 2960) + 32)) != 0)
          {
            *(a1 + 3008) |= 1 << v11;
          }

          goto LABEL_37;
        }

        v22 = 34;
        goto LABEL_33;
      }
    }

LABEL_37:
    v6 += 8;
  }

  while (v7 != v6);
  v4 = *a1;
LABEL_39:
  v23 = v4;
  v24 = *(*(a1 + *(v4 - 24) + 344) + 1360);
  v25 = **(a1 + 3808);
  if ((v25 & 4) != 0)
  {
    v26 = 1;
  }

  else
  {
    v26 = v25 & 1;
  }

  if (*(a1 + 3852))
  {
    v27 = 1;
  }

  else
  {
    v27 = v26;
  }

  *(a1 + 3852) = v27;
  result = (*(v23 + 360))(a1, v2);
  if (!result)
  {
    return result;
  }

  if ((v25 & 0x800) != 0)
  {
    v31 = *(a1 + 3528);
    goto LABEL_53;
  }

  v29 = *(a1 + 3843);
  if ((v29 & 1) == 0 && *(a1 + 3855) != 1)
  {
    if (*(a1 + 3852) == 1)
    {
      v31 = *(a1 + 3528);
LABEL_57:
      v32 = v31 | 2;
      goto LABEL_54;
    }

    if (*(a1 + 3853) != 1 || (**(a1 + 3808) & 0x10) != 0)
    {
      goto LABEL_63;
    }

    v31 = *(a1 + 3528);
    if (!v24)
    {
      goto LABEL_57;
    }

LABEL_53:
    v32 = v31 | 1;
LABEL_54:
    *(a1 + 3528) = v32;
    goto LABEL_63;
  }

  if (*(a1 + 3853) & 1) != 0 || (*(a1 + 3852))
  {
    v30 = *(a1 + 3528) | 2;
  }

  else
  {
    v30 = *(a1 + 3528);
  }

  v33 = *(a1 + 3855);
  *(a1 + 3528) = v30 & 0xF3 | (4 * v29) | (8 * v33);
  if ((v29 & 1) == 0 && v33 && (v30 & 2) != 0)
  {
    *(a1 + 3528) = v30 & 0xF3 | (4 * v29) | (8 * v33) | 4;
    *(a1 + 3843) = 1;
    *(a1 + 3844) = 0x100000000;
  }

LABEL_63:
  if ((*(*(a1 + 2960) + 33) & 0xEE) != 0)
  {
    v34 = *(a1 + *(*a1 - 24) + 320);
    llvm::Module::getOrInsertNamedMetadata();
    v35 = a1 + *(*a1 - 24);
    v36 = *(v35 + 336);
    v37 = *(*(a1 + 2960) + 32);
    v38 = *(v35 + 192);
    llvm::ConstantInt::get();
    v61 = llvm::ValueAsMetadata::get();
    llvm::MDTuple::getImpl();
    llvm::NamedMDNode::addOperand();
    v39 = *(a1 + 2960);
    *(a1 + 3832) = ~(-1 << (BYTE1(*(v39 + 32)) & 0xF));
    if ((((*(v39 + 32) >> 8) ^ (*(v39 + 32) >> 12)) & 0xF) != 0)
    {
      v40 = *(a1 + *(*a1 - 24) + 320);
      llvm::Module::getOrInsertNamedMetadata();
      v41 = a1 + *(*a1 - 24);
      v42 = *(v41 + 336);
      v43 = *(*(a1 + 2960) + 32);
      v44 = *(v41 + 192);
      llvm::ConstantInt::get();
      v61 = llvm::ValueAsMetadata::get();
      llvm::MDTuple::getImpl();
      llvm::NamedMDNode::addOperand();
      v45 = *(a1 + *(*a1 - 24) + 320);
      llvm::Module::getOrInsertNamedMetadata();
      if (*(a1 + 3860) > 1u)
      {
        v47 = 0;
      }

      else
      {
        v46 = *(a1 + *(*a1 - 24) + 72);
        v47 = llvm::MDString::get();
      }

      v48 = *(a1 + *(*a1 - 24) + 336);
      v61 = v47;
      llvm::MDTuple::getImpl();
      llvm::NamedMDNode::addOperand();
      if (*(a1 + 3860) == 1)
      {
        v49 = *(a1 + *(*a1 - 24) + 320);
        llvm::Module::getOrInsertNamedMetadata();
        *(*(a1 + 2960) + 32);
        v50 = a1 + *(*a1 - 24);
        v51 = *(v50 + 336);
        v52 = *(v50 + 192);
        llvm::ConstantInt::get();
        v61 = llvm::ValueAsMetadata::get();
        llvm::MDTuple::getImpl();
        llvm::NamedMDNode::addOperand();
      }
    }
  }

  else
  {
    *(a1 + 3832) = 1;
  }

  v53 = *(a1 + *(*a1 - 24) + 320);
  *(a1 + 3000) = llvm::Module::getOrInsertNamedMetadata();
  v54 = (a1 + *(*a1 - 24));
  size = v54[13].__r_.__value_.__l.__size_;
  v56 = size + 8;
  for (i = *(size + 16); ; i = *(i + 8))
  {
    if (i == v56)
    {
      return 1;
    }

    v58 = (i - 56);
    if (!i)
    {
      v58 = 0;
    }

    v59 = *v58;
    if (*v58)
    {
      v60 = *(v59 + 8);
      if ((v60 & 0xFE) == 0x12)
      {
        v60 = *(**(v59 + 16) + 8);
      }

      if ((v60 & 0xFFFFFF00) == 0x300 && v58[1])
      {
        break;
      }
    }
  }

  std::string::append(v54 + 17, "Fragment shaders do not support shader declared threadgroup variables");
  return 0;
}

__n128 sub_23C510D18(uint64_t *a1)
{
  v1 = a1[66];
  v2 = *(v1 + 32);
  if (*(v1 + 32))
  {
    v4 = a1 + 43;
    v5 = a1 + 1;
    do
    {
      v6 = __clz(v2);
      v7 = v6 ^ 0x1F;
      v8 = *a1;
      v9 = *(v4 + *(*a1 - 24));
      v10 = a1[66];
      if (v9[1638] == 1 && *(v10 + 34) <= (*(v10 + 4 * v7) >> 15))
      {
        *(a1 + 134) = 1;
        v9 = *(v4 + *(v8 - 24));
      }

      v11 = 0x80000000 >> v6;
      v12 = *(v10 + 4 * v7);
      (*(*v9 + 376))(v17);
      v13 = &v5[8 * v7];
      v14 = v17[1];
      *v13 = v17[0];
      *(v13 + 1) = v14;
      *(v13 + 2) = v18[0];
      result = *(v18 + 9);
      *(v13 + 41) = *(v18 + 9);
      v16 = v11 == v2;
      v2 ^= v11;
    }

    while (!v16);
  }

  return result;
}

uint64_t sub_23C510E64(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v5 = 0;
  v6 = *a2;
  *a1 = *a2;
  *(a1 + *(v6 - 24)) = a2[1];
  *(a1 + 8) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  do
  {
    v7 = a1 + v5;
    *(v7 + 60) = 0;
    *(v7 + 64) = 0;
    v5 += 64;
  }

  while (v5 != 512);
  *(a1 + 520) = 0;
  *(a1 + 528) = a3;
  *(a1 + 536) = *(a3 + 34);
  *(a1 + 560) = 0;
  *(a1 + 544) = 0u;
  if (a4)
  {
    sub_23C510D18(a1);
  }

  return a1;
}

uint64_t sub_23C510F9C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1 + *(*a1 - 24);
  v4 = *(v3 + 560);
  v5 = (v4 - *v4);
  if (*v5 >= 9u && (v6 = v5[4]) != 0)
  {
    v7 = (v4 + v6 + *(v4 + v6));
  }

  else
  {
    v7 = 0;
  }

  *(v3 + 774) = 1;
  v8 = *(v3 + 736);
  v9 = *(v3 + 752);
  v10 = *(v3 + 744);
  v11 = (v7 - *v7);
  v12 = *v11;
  if (v12 < 0x15)
  {
    v13 = 0;
    v14 = 0;
    if (v12 < 0x11)
    {
      goto LABEL_14;
    }
  }

  else if (v11[10])
  {
    v13 = *(v7 + v11[10]);
  }

  else
  {
    v13 = 0;
  }

  v15 = v11[8];
  if (v15)
  {
    v14 = *(v7 + v15);
  }

  else
  {
    v14 = 0;
  }

LABEL_14:
  v16 = *(a1 + *(v2 - 24) + 344);
  v17 = (*(*v16 + 392))(v16, a1[66], v14, v13);
  sub_23C4B0328((v3 + 704), 8, a1[69] & v17);
  if (*(a1 + 560) != 1)
  {
    v23 = (v7 - *v7);
    v24 = *v23;
    if (v24 < 0x13)
    {
      v25 = 0;
      v26 = 0;
      if (v24 < 0xF)
      {
LABEL_30:
        v28 = *(a1 + *(*a1 - 24) + 344);
        v19 = a1[68] & (*(*v28 + 392))(v28, a1[66], v26, v25);
        goto LABEL_31;
      }
    }

    else if (v23[9])
    {
      v25 = *(v7 + v23[9]);
    }

    else
    {
      v25 = 0;
    }

    v27 = v23[7];
    if (v27)
    {
      v26 = *(v7 + v27);
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_30;
  }

  v18 = *(a1[66] + 32);
  if (*(a1[66] + 32))
  {
    v19 = 0;
    do
    {
      v20 = __clz(v18);
      v19 |= 15 << (124 - 4 * v20);
      v21 = 0x80000000 >> v20;
      v22 = v21 == v18;
      v18 ^= v21;
    }

    while (!v22);
  }

  else
  {
    v19 = 0;
  }

LABEL_31:
  sub_23C4B0328((v3 + 704), 6, v19);
  return v3 + 704;
}

uint64_t sub_23C511214(uint64_t a1, uint64_t *a2, llvm::Module *a3, uint64_t *a4, uint64_t a5, char a6)
{
  v11 = sub_23C52DD68(a1, a2 + 1, a3, "air.fragment", *a4, a6);
  sub_23C510E64((v11 + 304), a2 + 5, a5, 0);
  v12 = 0;
  v13 = *a2;
  *a1 = *a2;
  *(a1 + *(v13 - 24)) = a2[7];
  *(a1 + 2432) = a2[8];
  *(a1 + 3008) = 0;
  *(a1 + 3016) = 0u;
  *(a1 + 3032) = 0u;
  *(a1 + 3048) = 0u;
  *(a1 + 3064) = 0u;
  *(a1 + 3080) = 0u;
  *(a1 + 3096) = 0u;
  *(a1 + 3112) = 0u;
  *(a1 + 3128) = 0u;
  *(a1 + 3144) = 0u;
  *(a1 + 3160) = 0u;
  *(a1 + 3176) = 0u;
  *(a1 + 3192) = 0u;
  *(a1 + 3208) = 0u;
  *(a1 + 3224) = 0u;
  *(a1 + 3240) = 0u;
  *(a1 + 3256) = 0u;
  do
  {
    *(a1 + v12 + 3024) = 4;
    *(a1 + v12 + 3032) = 0uLL;
    v12 += 32;
  }

  while (v12 != 256);
  v14 = 0;
  *(a1 + 3496) = 0u;
  *(a1 + 3512) = 0u;
  *(a1 + 3464) = 0u;
  *(a1 + 3480) = 0u;
  *(a1 + 3432) = 0u;
  *(a1 + 3448) = 0u;
  *(a1 + 3400) = 0u;
  *(a1 + 3416) = 0u;
  *(a1 + 3368) = 0u;
  *(a1 + 3384) = 0u;
  *(a1 + 3336) = 0u;
  *(a1 + 3352) = 0u;
  *(a1 + 3304) = 0u;
  *(a1 + 3320) = 0u;
  *(a1 + 3272) = 0u;
  *(a1 + 3288) = 0u;
  do
  {
    *(a1 + v14 + 3280) = 4;
    *(a1 + v14 + 3288) = 0uLL;
    v14 += 32;
  }

  while (v14 != 256);
  *(a1 + 3528) = 0;
  *(a1 + 3532) = 0;
  *(a1 + 3536) = 4;
  *(a1 + 3544) = 0u;
  *(a1 + 3560) = 4;
  *(a1 + 3568) = 0u;
  *(a1 + 3584) = 4;
  *(a1 + 3592) = 0u;
  *(a1 + 3608) = 4;
  *(a1 + 3616) = 0u;
  *(a1 + 3632) = 4;
  *(a1 + 3640) = 0u;
  *(a1 + 3656) = **a4 >> 12;
  *(a1 + 3664) = 4;
  *(a1 + 3672) = 0u;
  *(a1 + 3688) = 4;
  *(a1 + 3696) = 0u;
  *(a1 + 3712) = 4;
  *(a1 + 3720) = 0u;
  *(a1 + 3736) = 4;
  *(a1 + 3744) = 0u;
  *(a1 + 3760) = 4;
  *(a1 + 3768) = 0u;
  *(a1 + 3784) = 4;
  *(a1 + 3792) = 0u;
  v15 = *a4;
  *(a1 + 3824) = a4[2];
  *(a1 + 3808) = v15;
  *(a1 + 3843) = 0;
  *(a1 + 3832) = 0;
  *(a1 + 3840) = 0;
  v79 = "air.fragment";
  *(a1 + 3844) = 0x400000000;
  *(a1 + 3852) = 0;
  *(a1 + 3860) = 0;
  v80 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(a3, &v79);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v18 = *(Operand + 8);
  if (v18 >= 4)
  {
    v19 = Operand;
    for (i = 3; i < v18; ++i)
    {
      v21 = *(v19 - 8 * v18 + 8 * i);
      v22 = *v21;
      if (v22 <= 0x22 && ((0x7FFFFFFF0uLL >> v22) & 1) != 0)
      {
        v23 = *(v21 + 2);
        if (v23)
        {
          for (j = 0; j < v23; ++j)
          {
            if (sub_23C4A57A0(*&v21[8 * j + -8 * v23], "air.fragment_rate"))
            {
              String = llvm::MDString::getString(*&v21[8 * j + 8 + -8 * *(v21 + 2)]);
              if (v26 == 5)
              {
                v27 = *String == 1869377379 && *(String + 4) == 114;
                v28 = v27;
              }

              else
              {
                v28 = 0;
              }

              *(a1 + 3860) = v28;
              if ((((*(*(a1 + 2960) + 32) >> 12) ^ (*(*(a1 + 2960) + 32) >> 8)) & 0xF) == 0)
              {
                *(a1 + 3860) = 0;
              }
            }

            v23 = *(v21 + 2);
          }

          v18 = *(v19 + 8);
        }
      }
    }
  }

  v29 = *(a1 + 80);
  if (v29)
  {
    v30 = 0;
    v31 = 0x69736F702E726961;
    do
    {
      v32 = *(*(a1 + 72) + 8 * v30);
      if (v32)
      {
        v33 = llvm::MDString::getString(*(v32 - 8 * *(v32 + 8) + 8));
        if (v34 > 15)
        {
          if (v34 == 16)
          {
            if (*v33 == 0x6E6F72662E726961 && *(v33 + 8) == 0x676E696361665F74)
            {
              *(a1 + 3840) = 1;
            }
          }

          else if (v34 == 18)
          {
            v36 = *v33 == 0x706D61732E726961 && *(v33 + 8) == 0x5F6B73616D5F656CLL;
            if (v36 && *(v33 + 16) == 28265)
            {
              v38 = v31;
              v39 = *(v32 + 8);
              if (v32 - 8 * v39 + 16 == v32)
              {
                v42 = 0;
              }

              else
              {
                v40 = -8 * v39;
                v41 = v32 + 16;
                do
                {
                  v42 = sub_23C4A57A0(*(v41 + v40), "air.post_depth_coverage");
                  if (v42)
                  {
                    break;
                  }

                  v27 = v40 == -24;
                  v40 += 8;
                }

                while (!v27);
              }

              *(a1 + 3854) = v42;
              v31 = v38;
            }
          }
        }

        else if (v34 == 12)
        {
          if (*v33 == v31 && *(v33 + 8) == 1852795252)
          {
            *(a1 + 3839) = 1;
          }
        }

        else if (v34 == 15 && *v33 == 0x6E696F702E726961 && *(v33 + 7) == 0x64726F6F635F746ELL)
        {
          *(a1 + 3841) = 1;
        }
      }

      ++v30;
    }

    while (v30 != v29);
  }

  v45 = **(a1 + 3808);
  v46 = (v45 & 0x60000) == 0x40000 && ((v45 & 0x10000) != 0 || (*(*(a1 + 2960) + 33) & 0xE) != 0);
  *(a1 + 3842) = v46;
  v47 = *(a1 + 56);
  if (v47)
  {
    v48 = *(v47 + 8);
    if (v48)
    {
      v49 = 0;
      while (1)
      {
        v50 = *(*(a1 + 56) - 8 * *(*(a1 + 56) + 8) + 8 * v49);
        v51 = llvm::MDString::getString(*(v50 - 8 * *(v50 + 8)));
        v53 = v51;
        v54 = v52;
        if (v52 == 12)
        {
          break;
        }

        if (v52 != 9)
        {
          goto LABEL_92;
        }

        if (*v51 != 0x747065642E726961 || *(v51 + 8) != 104)
        {
          goto LABEL_92;
        }

        *(a1 + 3843) = 1;
        *(a1 + 3848) = 0;
        v56 = *(v50 + 8);
        if (v56 >= 2)
        {
          v58 = 1;
          while (1)
          {
            v57 = v50 - 8 * v56;
            v59 = *(v57 + 8 * v58);
            if (!*v59)
            {
              break;
            }

            if (v56 == ++v58)
            {
              goto LABEL_129;
            }
          }

          v62 = llvm::MDString::getString(*(v57 + 8 * v58));
          if (v63 == 19)
          {
            v64 = *v62 == 0x747065642E726961 && v62[1] == 0x66696C6175715F68;
            if (v64 && *(v62 + 11) == 0x72656966696C6175)
            {
              v59 = *(v50 - 8 * *(v50 + 8) + 8 * (v58 + 1));
            }
          }

          v66 = llvm::MDString::getString(v59);
          switch(v67)
          {
            case 11:
              if (*v66 == 0x616572672E726961 && *(v66 + 3) == 0x726574616572672ELL)
              {
                v68 = 1;
                goto LABEL_127;
              }

              break;
            case 8:
              v69 = 2 * (*v66 == 0x7373656C2E726961);
              goto LABEL_128;
            case 7:
              v68 = 0;
              v69 = 0;
              if (*v66 != 779250017 || *(v66 + 3) != 2037276974)
              {
                goto LABEL_128;
              }

LABEL_127:
              v69 = v68;
LABEL_128:
              *(a1 + 3844) = v69;
              goto LABEL_129;
          }

          v69 = 0;
          goto LABEL_128;
        }

LABEL_129:
        if (++v49 == v48)
        {
          goto LABEL_130;
        }
      }

      if (*v51 != 0x65766F632E726961 || *(v51 + 8) != 1701273970)
      {
LABEL_92:
        if (!sub_23C509554(v51, v52))
        {
          if (v54 == 11 && *v53 == 0x6E6574732E726961 && *(v53 + 3) == 0x6C69636E6574732ELL)
          {
            *(a1 + 3855) = 1;
          }

          goto LABEL_129;
        }
      }

      *(a1 + 3852) = 1;
      goto LABEL_129;
    }
  }

LABEL_130:
  v72 = *(a1 + *(*a1 - 24) + 320);
  Function = llvm::Module::getFunction();
  if (Function)
  {
    v74 = *(Function + 8) != 0;
  }

  else
  {
    v74 = 0;
  }

  *(a1 + 3853) = v74;
  v75 = *(a1 + *(*a1 - 24) + 320);
  v76 = llvm::Module::getFunction();
  if (v76)
  {
    v77 = *(v76 + 8) != 0;
  }

  else
  {
    v77 = 0;
  }

  *(a1 + 11) = v77;
  return a1;
}
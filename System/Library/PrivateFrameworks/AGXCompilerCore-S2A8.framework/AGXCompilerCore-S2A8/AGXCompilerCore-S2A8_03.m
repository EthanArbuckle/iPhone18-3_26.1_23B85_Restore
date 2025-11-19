uint64_t sub_23C4D8DAC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = *(result + 8);
  if (!v4)
  {
    goto LABEL_67;
  }

  v6 = result;
  v41 = **(*result + 16);
  if ((*(v41 + 8) & 0xFE) != 0x10)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = (a3 + 8);
    v21 = 1;
    do
    {
      v22 = *(v4 + 24);
      v23 = *(v22 + 16);
      if (v22)
      {
        v24 = v23 >= 0x1C;
      }

      else
      {
        v24 = 0;
      }

      if (!v24)
      {
        goto LABEL_67;
      }

      if (v23 == 84)
      {
        v25 = *v20;
        if (!*v20)
        {
LABEL_49:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v26 = v25;
            v27 = v25[4];
            if (v22 >= v27)
            {
              break;
            }

            v25 = *v26;
            if (!*v26)
            {
              goto LABEL_49;
            }
          }

          if (v27 >= v22)
          {
            break;
          }

          v25 = v26[1];
          if (!v25)
          {
            goto LABEL_49;
          }
        }

        v19 = 1;
      }

      else if (v23 == 61)
      {
        if (*(v22 - 32) != result || (*(v22 + 18) & 1) != 0)
        {
          goto LABEL_67;
        }
      }

      else
      {
        if (v23 != 60 || *(v22 - 32) != result || (*(v22 + 18) & 1) != 0)
        {
          goto LABEL_67;
        }

        ++v17;
      }

      if (v18)
      {
        v21 &= v18 == *(v22 + 40);
      }

      else
      {
        v18 = *(v22 + 40);
      }

      v4 = *(v4 + 8);
    }

    while (v4);
    v28 = *(result + 16);
    if (v28 == 62)
    {
      v28 = *(*(result - 32 * (*(result + 20) & 0x7FFFFFF)) + 16);
    }

    if (v28 == 59)
    {
      v29 = llvm::UndefValue::get();
      v30 = (v19 & 1) == 0;
      v31 = v21 & 1;
    }

    else
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
    }

    *&v42[0] = 0;
    result = sub_23C4D92F8(*a2, *(a2 + 16), v6, v42);
    v32 = *&v42[0];
    if (result)
    {
LABEL_66:
      *(v32 + 8) = v29;
      *(v32 + 16) = 0;
      *(v32 + 20) = v30;
      *(v32 + 21) = v31;
      *(v32 + 24) = v17;
      goto LABEL_67;
    }

    v33 = *(a2 + 8);
    v34 = *(a2 + 16);
    if (4 * v33 + 4 >= 3 * v34)
    {
      v34 *= 2;
    }

    else if (v34 + ~v33 - *(a2 + 12) > v34 >> 3)
    {
LABEL_63:
      ++*(a2 + 8);
      if (*v32 != -4096)
      {
        --*(a2 + 12);
      }

      *(v32 + 24) = 0;
      *v32 = v6;
      *(v32 + 8) = 0;
      *(v32 + 14) = 0;
      goto LABEL_66;
    }

    sub_23C4D938C(a2, v34);
    *&v42[0] = 0;
    result = sub_23C4D92F8(*a2, *(a2 + 16), v6, v42);
    v32 = *&v42[0];
    goto LABEL_63;
  }

  if ((~*(v41 + 8) & 0x11) == 0 && (*(**(v41 + 16) + 8) & 0xFE) != 0x10 && *(v41 + 32) <= 4uLL)
  {
    memset(v42, 0, sizeof(v42));
    while (1)
    {
      v8 = *(v4 + 24);
      if (!v8)
      {
        break;
      }

      if (*(v8 + 16) != 62)
      {
        break;
      }

      v4 = *(v4 + 8);
      result = llvm::GetElementPtrInst::hasAllConstantIndices(v8);
      if (!result || (*(v8 + 20) & 0x7FFFFFF) != 3)
      {
        break;
      }

      v9 = *(v8 - 64);
      v10 = *(v9 + 32);
      if (v10 > 0x40)
      {
        result = llvm::APInt::countLeadingZerosSlowCase((v9 + 24));
        if (result != v10)
        {
          break;
        }
      }

      else if (*(v9 + 24))
      {
        break;
      }

      v11 = *(v8 - 32);
      v12 = (v11 + 24);
      if (*(v11 + 32) >= 0x41u)
      {
        v12 = *v12;
      }

      v13 = *v12;
      if (v13 >= *(v41 + 32))
      {
        break;
      }

      if (!*(v42 + v13))
      {
        *(v42 + v13) = llvm::Instruction::clone(v8);
        --*(a4 + 16);
        v14 = *(v6 + 16);
        if (v14 == 21)
        {
          v15 = *(*(v6 + 24) + 80);
          if (v15)
          {
            v16 = (v15 - 24);
          }

          else
          {
            v16 = 0;
          }

          llvm::BasicBlock::getFirstInsertionPt(v16);
          llvm::Instruction::insertBefore();
        }

        else if (v14 == 59)
        {
          llvm::Instruction::insertAfter();
        }
      }

      ++*(a4 + 16);
      llvm::Value::replaceAllUsesWith();
      result = llvm::Instruction::eraseFromParent(v8);
      if (!v4)
      {
        v36 = *(v41 + 32);
        if (v36)
        {
          v37 = 0;
          v38 = 1;
          do
          {
            result = *(v42 + v37);
            if (result)
            {
              result = sub_23C4D8DAC(result, a2, a3, a4);
              v36 = *(v41 + 32);
            }

            v37 = v38;
          }

          while (v36 > v38++);
        }

        break;
      }
    }
  }

LABEL_67:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4D9264(uint64_t a1)
{
  v1 = 0;
  if (a1 && *(a1 + 16) >= 0x1Cu)
  {
    if (*(a1 + 8))
    {
      return 0;
    }

    else
    {
      LODWORD(v1) = 0;
      while (1)
      {
        v2 = *(a1 + 20);
        if ((v2 & 0x7FFFFFF) == 0)
        {
          break;
        }

        v3 = (v2 & 0x40000000) != 0 ? *(a1 - 8) : (a1 - 32 * (v2 & 0x7FFFFFF));
        v4 = *v3;
        if (*(*v3 + 16) <= 0x1Bu)
        {
          break;
        }

        llvm::Instruction::eraseFromParent(a1);
        v1 = (v1 + 1);
        a1 = v4;
        if (*(v4 + 8))
        {
          return v1;
        }
      }

      llvm::Instruction::eraseFromParent(a1);
      return (v1 + 1);
    }
  }

  return v1;
}

uint64_t sub_23C4D92F8(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v5 = (a1 + 32 * v4);
    v6 = *v5;
    if (*v5 == a3)
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
        v5 = (a1 + 32 * v4);
        v6 = *v5;
        v7 = 1;
        if (*v5 == a3)
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

uint64_t sub_23C4D938C(uint64_t a1, int a2)
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
  result = MEMORY[0x23EED4160](32 * v8, 8);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x7FFFFFFFFFFFFFFLL;
      v13 = v12 & 0x7FFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x7FFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = (result + 32);
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_23C5324B0)));
        if (v17.i8[0])
        {
          *(v16 - 4) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 8;
      }

      while (v14 != v11);
    }

    v18 = (32 * v3);
    if (v3)
    {
      v19 = 32 * v3;
      v20 = v4;
      do
      {
        v21 = *v20;
        if ((*v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v32 = 0;
          sub_23C4D92F8(*a1, *(a1 + 16), v21, &v32);
          v22 = v32;
          *v32 = *v20;
          v23 = *(v20 + 8);
          v22[3] = *(v20 + 3);
          *(v22 + 1) = v23;
          ++*(a1 + 8);
        }

        v20 = (v20 + 32);
        v19 -= 32;
      }

      while (v19);
    }

    return llvm::deallocate_buffer(v4, v18);
  }

  else
  {
    *(a1 + 8) = 0;
    v24 = *(a1 + 16);
    if (v24)
    {
      v25 = 0;
      v26 = v24 + 0x7FFFFFFFFFFFFFFLL;
      v27 = v26 & 0x7FFFFFFFFFFFFFFLL;
      v28 = (v26 & 0x7FFFFFFFFFFFFFFLL) - (v26 & 1) + 2;
      v29 = vdupq_n_s64(v27);
      v30 = (result + 32);
      do
      {
        v31 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(vdupq_n_s64(v25), xmmword_23C5324B0)));
        if (v31.i8[0])
        {
          *(v30 - 4) = -4096;
        }

        if (v31.i8[4])
        {
          *v30 = -4096;
        }

        v25 += 2;
        v30 += 8;
      }

      while (v28 != v25);
    }
  }

  return result;
}

uint64_t sub_23C4D9594(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
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
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t *sub_23C4D9654(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_23C4A6968(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void *sub_23C4D96AC(void *result, unint64_t a2)
{
  if (*(a2 + 16) <= 0x1Bu)
  {
    v2 = 0;
  }

  else
  {
    v2 = a2;
  }

  if (v2)
  {
    v3 = result;
    v5 = result + 4;
    v4 = result[4];
    if (!v4)
    {
      goto LABEL_13;
    }

    v6 = result + 4;
    do
    {
      v7 = v4[4];
      v8 = v7 >= v2;
      v9 = v7 < v2;
      if (v8)
      {
        v6 = v4;
      }

      v4 = v4[v9];
    }

    while (v4);
    if (v6 == v5 || v2 < v6[4])
    {
LABEL_13:
      v11 = result[1];
      v10 = result[2];
      if (v11 >= v10)
      {
        v13 = (v11 - *result) >> 3;
        if ((v13 + 1) >> 61)
        {
          sub_23C496CE8();
        }

        v14 = v10 - *result;
        v15 = v14 >> 2;
        if (v14 >> 2 <= (v13 + 1))
        {
          v15 = v13 + 1;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        if (v16)
        {
          sub_23C4D97E0(v16);
        }

        *(8 * v13) = v2;
        v12 = 8 * v13 + 8;
        v17 = v3[1] - *v3;
        v18 = (8 * v13 - v17);
        memcpy(v18, *v3, v17);
        v19 = *v3;
        *v3 = v18;
        v3[1] = v12;
        v3[2] = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v11 = v2;
        v12 = (v11 + 1);
      }

      v3[1] = v12;
      return sub_23C4D9594((v5 - 1), v2);
    }
  }

  return result;
}

void sub_23C4D97E0(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_23C496CE8();
}

unint64_t sub_23C4D9834(uint64_t a1)
{
  if (qword_27E1F70B8 != -1)
  {
    dispatch_once(&qword_27E1F70B8, &unk_284F16130);
  }

  return (*algn_27E1F70B4 + dword_27E1F70B0 * a1 - 1) / *algn_27E1F70B4;
}

uint64_t sub_23C4D98B0(uint64_t a1, unsigned int *a2)
{
  v4 = (a1 + *(*a1 - 24));
  *a2 = *(v4[43] + 840);
  result = (*(*v4 + 64))(v4);
  if (result)
  {
    *a2 = result;
    result = result != *(v4[43] + 840);
  }

  v6 = *(a1 + 2732);
  if (v6)
  {
    v7 = 0;
    v8 = a1 + *(*a1 - 24);
    v9 = *(v8 + 400);
    v10 = *(*(v8 + 344) + 840);
    v11 = *(v9 + 416);
    v12 = v11 - 1;
    v13 = *(v9 + 408);
    do
    {
      v14 = (v12 + v7) >> 1;
      if (*(v13 + 4 * v14) < v6)
      {
        v12 = v14 - 1;
      }

      else
      {
        v7 = v14 + 1;
      }
    }

    while (v7 <= v12);
    v15 = v10 / v11 * v12;
    if (v15 >= *a2)
    {
      v15 = *a2;
    }

    *a2 = v15;
    return 1;
  }

  return result;
}

uint64_t sub_23C4D99D8(uint64_t a1)
{
  if (!sub_23C4B1B90(a1 + *(*a1 - 24), *(*(a1 + *(*a1 - 24) + 400) + 128)))
  {
    return 0;
  }

  v38 = sub_23C503B2C(a1);
  if (*(a1 + 2792))
  {
    v2 = a1 + *(*a1 - 24);
    *(v2 + 774) = 1;
    v3 = *(v2 + 744);
    v4 = *(v2 + 736) - *(v2 + 752);
    sub_23C4B0A04((v2 + 704), 4, 0);
    sub_23C4B2DFC((v2 + 704), 6, **(a1 + 2784));
    sub_23C4B03D4(v2 + 704, v4 + v3);
    sub_23C4B1830(1uLL);
  }

  v6 = sub_23C4B5EC0(a1 + *(*a1 - 24) + 704, &unk_27E1F744A, 0);
  v7 = a1 + *(*a1 - 24);
  *(v7 + 774) = 1;
  v8 = *(v7 + 744);
  v9 = *(v7 + 736) - *(v7 + 752);
  sub_23C4B5F88((v7 + 704), v6);
  sub_23C4B2DFC((v7 + 704), 6, *(a1 + 8));
  sub_23C4B2DFC((v7 + 704), 8, *(a1 + 9));
  sub_23C4B2DFC((v7 + 704), 10, *(a1 + 2728));
  sub_23C4B0A04((v7 + 704), 12, *(a1 + 2732));
  v10 = sub_23C4B03D4(v7 + 704, v9 + v8);
  v11 = a1 + *(*a1 - 24);
  *(v11 + 774) = 1;
  v12 = *(v11 + 744);
  v13 = *(v11 + 736) - *(v11 + 752);
  sub_23C4B5F88((v11 + 704), v38);
  sub_23C4C6A98((v11 + 704), v10);
  v14 = a1 + *(*a1 - 24);
  v15 = sub_23C4B03D4(v11 + 704, v13 + v12);
  sub_23C4B1AD8(v14 + 704, v15);
  v16 = (a1 + *(*a1 - 24));
  v17 = (v16[23].__r_.__value_.__l.__size_ + *(v16[23].__r_.__value_.__l.__size_ - *v16[23].__r_.__value_.__l.__size_ + 4));
  v18 = (v17 + *v17);
  v19 = (v18 - *v18);
  if (*(v18 + v19[4] + *(v18 + v19[4])) <= 0x20)
  {
    if (*v19 < 0x3Du)
    {
      return 1;
    }

    v20 = v19[30];
    if (!v20)
    {
      return 1;
    }

    v21 = *(v18 + v20);
    v22 = *(v16[14].__r_.__value_.__l.__size_ + 820);
    if (v21 <= v22)
    {
      return 1;
    }

    std::to_string(&v40, v21);
    v23 = std::string::insert(&v40, 0, "Threadgroup memory size (");
    v24 = v23->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = *&v23->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v25 = std::string::append(&v41, ") ");
    v26 = v25->__r_.__value_.__r.__words[2];
    *&v42.__r_.__value_.__l.__data_ = *&v25->__r_.__value_.__l.__data_;
    v42.__r_.__value_.__r.__words[2] = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v27 = std::string::append(&v42, "exceeds the maximum threadgroup memory allowed (");
    v28 = v27->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = *&v27->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v39, v22);
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &v39;
    }

    else
    {
      v29 = v39.__r_.__value_.__r.__words[0];
    }

    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v39.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v39.__r_.__value_.__l.__size_;
    }

    v31 = std::string::append(&v43, v29, size);
    v32 = v31->__r_.__value_.__r.__words[2];
    *&v44.__r_.__value_.__l.__data_ = *&v31->__r_.__value_.__l.__data_;
    v44.__r_.__value_.__r.__words[2] = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    v33 = std::string::append(&v44, ")");
    v34 = v33->__r_.__value_.__r.__words[2];
    v45 = *&v33->__r_.__value_.__l.__data_;
    v46 = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    if (v46 >= 0)
    {
      v35 = &v45;
    }

    else
    {
      v35 = v45;
    }

    if (v46 >= 0)
    {
      v36 = HIBYTE(v46);
    }

    else
    {
      v36 = *(&v45 + 1);
    }

    std::string::append(v16 + 17, v35, v36);
    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }
  }

  return 0;
}

void sub_23C4D9EFC(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 2720);
  sub_23C49F8D0(v37, "AGCComputeStateAGP");
  sub_23C49F8D0(v35, "mutableBuffers");
  v4 = *v3;
  sub_23C4B0E40(&v39);
  v5 = sub_23C4AA520(&v39.__r_.__value_.__r.__words[2], "0x", 2);
  *(&v39.__r_.__value_.__r + *(v39.__r_.__value_.__r.__words[2] - 24) + 24) = *(&v39.__r_.__value_.__r + *(v39.__r_.__value_.__r.__words[2] - 24) + 24) & 0xFFFFFFB5 | 8;
  MEMORY[0x23EED4FC0](v5, v4);
  std::stringbuf::str();
  sub_23C4B733C(&v53, v35, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v39.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 72);
  *(v39.__r_.__value_.__r.__words + *(v39.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v39.__r_.__value_.__r.__words[2] = v6;
  v40 = MEMORY[0x277D82878] + 16;
  if (v42 < 0)
  {
    operator delete(v41[7].__locale_);
  }

  v40 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v41);
  std::iostream::~basic_iostream();
  MEMORY[0x23EED5050](&v43);
  sub_23C49F8D0(v33, "maxTotalThreadsPerThreadgroup");
  sub_23C4B7004(&v54, v33, *(v3 + 2));
  sub_23C49F8D0(v31, "wgSizeMultipleOfSIMDWidth");
  sub_23C4B7004(&v55, v31, *(v3 + 3) & 1);
  sub_23C49F8D0(v29, "genCompilerStatistics");
  sub_23C4B7004(&v56, v29, (*(v3 + 3) >> 1) & 1);
  sub_23C49F8D0(v27, "genTelemetryStatistics");
  sub_23C4B7004(&v57, v27, (*(v3 + 3) >> 2) & 1);
  sub_23C49F8D0(v25, "disableTextureRWBoundsCheck");
  sub_23C4B7004(&v58, v25, (*(v3 + 3) >> 4) & 1);
  sub_23C49F8D0(v23, "debugInstrumentationEnabled");
  sub_23C4B7004(&v59, v23, (*(v3 + 3) >> 5) & 1);
  sub_23C49F8D0(v21, "unused");
  sub_23C4B7004(&v60, v21, *(v3 + 3) >> 6);
  if (SHIBYTE(v38) < 0)
  {
    sub_23C49F988(&__dst, v37[0], v37[1]);
  }

  else
  {
    __dst = *v37;
    v51 = v38;
  }

  sub_23C4B7B84(&__p.__r_.__value_.__l.__data_, &__dst, 0);
  sub_23C49F8D0(v45, "{");
  sub_23C4B7B84(&v47, v45, 0);
  if ((v49 & 0x80u) == 0)
  {
    v7 = &v47;
  }

  else
  {
    v7 = v47;
  }

  if ((v49 & 0x80u) == 0)
  {
    v8 = v49;
  }

  else
  {
    v8 = v48;
  }

  v9 = std::string::append(&__p, v7, v8);
  v10 = v9->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v49 < 0)
  {
    operator delete(v47);
  }

  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51) < 0)
  {
    operator delete(__dst);
  }

  for (i = 0; i != 24; i += 3)
  {
    v12 = &v53 + i * 8;
    if (SHIBYTE(v53.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      sub_23C49F988(&__p, *v12, *(v12 + 1));
    }

    else
    {
      __p = *v12;
    }

    v13 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_23C49F988(&v44, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v44 = __p;
    }

    sub_23C4B7B84(&v47, &v44, 1);
    if ((v49 & 0x80u) == 0)
    {
      v14 = &v47;
    }

    else
    {
      v14 = v47;
    }

    if ((v49 & 0x80u) == 0)
    {
      v15 = v49;
    }

    else
    {
      v15 = v48;
    }

    std::string::append(&v39, v14, v15);
    if (v49 < 0)
    {
      operator delete(v47);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
      if ((v13 & 0x80000000) == 0)
      {
        continue;
      }
    }

    else if ((v13 & 0x80000000) == 0)
    {
      continue;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_23C49F8D0(&v47, "}");
  sub_23C4B7B84(&__p.__r_.__value_.__l.__data_, &v47, 0);
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v39;
  }

  else
  {
    v16 = v39.__r_.__value_.__r.__words[0];
  }

  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v39.__r_.__value_.__l.__size_;
  }

  v18 = std::string::insert(&__p, 0, v16, size);
  *a2 = *v18;
  v18->__r_.__value_.__r.__words[0] = 0;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v49 < 0)
  {
    operator delete(v47);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  for (j = 0; j != -24; j -= 3)
  {
    if (SHIBYTE(v60.__r_.__value_.__r.__words[j + 2]) < 0)
    {
      operator delete(*(&v60.__r_.__value_.__l.__data_ + j * 8));
    }
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37[0]);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_23C4DA548(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  sub_23C4DA5B8(v1, &off_284F16398);
  sub_23C4B130C((v1 + 396));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C4DA5B8(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[7];
  v5 = a1[394];
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 392));
  }

  v7 = a1[391];
  if (v7 != -8192 && v7 != -4096 && v7 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 389));
  }

  v9 = a1[388];
  if (v9 != -8192 && v9 != -4096 && v9)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 386));
  }

  for (i = 0; i != -9; i -= 3)
  {
    v11 = a1[i + 385];
    if (v11 != -8192 && v11 != -4096 && v11 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(&a1[i + 383]);
    }
  }

  v13 = a1[376];
  if (v13 != -8192 && v13 != -4096 && v13 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 374));
  }

  v15 = a1[373];
  if (v15 != -8192 && v15 != -4096 && v15)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 371));
  }

  v16 = a1[370];
  if (v16 != -8192 && v16 != -4096 && v16)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 368));
  }

  v17 = a1[367];
  if (v17 != -8192 && v17 != -4096 && v17)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 365));
  }

  v18 = a1[364];
  if (v18 != -8192 && v18 != -4096 && v18)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 362));
  }

  for (j = 0; j != -9; j -= 3)
  {
    v20 = a1[j + 361];
    if (v20 != -8192 && v20 != -4096 && v20 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(&a1[j + 359]);
    }
  }

  v22 = a1[348];
  if (v22 != a1 + 350)
  {
    free(v22);
  }

  v23 = a1[347];
  if (v23 != -8192 && v23 != -4096 && v23)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 345));
  }

  v24 = a2[1];
  *a1 = v24;
  *(a1 + *(v24 - 24)) = a2[6];
  v25 = a1[344];
  if (v25 != -8192 && v25 != -4096 && v25)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 342));
  }

  for (k = 0; k != -36; k -= 3)
  {
    v27 = a1[k + 339];
    if (v27 != -8192 && v27 != -4096 && v27 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(&a1[k + 337]);
    }
  }

  return sub_23C4FF150(a1, a2 + 3);
}

uint64_t sub_23C4DA8F4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!a1[344])
  {
    v8 = *(a1 + *(*a1 - 24) + 192);
    v9 = llvm::PointerType::get();
    v10 = (*(**(*(a1 + *(*a1 - 24) + 344) + 792) + 288))();
    v55[0] = "agc.stagein_buffer_pointer.";
    v55[2] = v10;
    v56 = 2051;
    v11 = (*(**(*(a1 + *(*a1 - 24) + 344) + 792) + 288))();
    v12 = sub_23C4ED494(a1, v9, v55, v11, 24);
    sub_23C4D56F8((a1 + 342), v12);
  }

  v13 = *(a1 + *(*a1 - 24) + 192);
  llvm::FixedVectorType::get();
  v14 = llvm::UndefValue::get();
  v15 = (a1 + *(*a1 - 24));
  v16 = a1[344];
  v56 = 257;
  v17 = sub_23C497C88(v15 + 1, **(*v16 + 16), v16, 0, v55);
  if (a3 == 22)
  {
    if (*a2 != 0x676174732E726961 || a2[1] != 0x6972675F6E695F65 || *(a2 + 14) != 0x657A69735F646972)
    {
      return 0;
    }
  }

  else
  {
    if (a3 != 24)
    {
      return 0;
    }

    v18 = *a2 == 0x676174732E726961 && a2[1] == 0x6972675F6E695F65;
    if (!v18 || a2[2] != 0x6E696769726F5F64)
    {
      return 0;
    }
  }

  v23 = a1 + *(*a1 - 24);
  v24 = *(v23 + 192);
  v25 = llvm::ConstantInt::get();
  v56 = 257;
  v26 = sub_23C49AEB8(v23, v17, v25, v55);
  v27 = (a1 + *(*a1 - 24));
  v56 = 257;
  v28 = sub_23C497C88(v27 + 1, **(*v26 + 16), v26, 0, v55);
  v29 = a1 + *(*a1 - 24);
  v56 = 257;
  v30 = *(v29 + 24);
  v31 = llvm::ConstantInt::get();
  v32 = sub_23C505AA8((v29 + 8), v14, v28, v31, v55);
  v33 = a1 + *(*a1 - 24);
  v34 = *(v33 + 192);
  v35 = llvm::ConstantInt::get();
  v56 = 257;
  v36 = sub_23C49AEB8(v33, v17, v35, v55);
  v37 = (a1 + *(*a1 - 24));
  v56 = 257;
  v38 = sub_23C497C88(v37 + 1, **(*v36 + 16), v36, 0, v55);
  v39 = a1 + *(*a1 - 24);
  v56 = 257;
  v40 = *(v39 + 24);
  v41 = llvm::ConstantInt::get();
  v42 = sub_23C505AA8((v39 + 8), v32, v38, v41, v55);
  v43 = a1 + *(*a1 - 24);
  v44 = *(v43 + 192);
  v45 = llvm::ConstantInt::get();
  v56 = 257;
  v46 = sub_23C49AEB8(v43, v17, v45, v55);
  v47 = (a1 + *(*a1 - 24));
  v56 = 257;
  v48 = sub_23C497C88(v47 + 1, **(*v46 + 16), v46, 0, v55);
  v49 = a1 + *(*a1 - 24);
  v56 = 257;
  v50 = *(v49 + 24);
  v51 = llvm::ConstantInt::get();
  v52 = sub_23C505AA8((v49 + 8), v42, v48, v51, v55);
  if ((*(a4 + 8) & 0xFE) == 0x12)
  {
    v53 = *(a4 + 32);
  }

  else
  {
    v53 = 1;
  }

  v54 = sub_23C505670(a1 + *(*a1 - 24), v52, v53, 1);
  if ((*(a4 + 8) & 0xFE) == 0x12)
  {
    a4 = **(a4 + 16);
  }

  return sub_23C505300((a1 + *(*a1 - 24)), v54, a4);
}

uint64_t sub_23C4DAFFC(void *a1)
{
  v1 = *(a1 + *(*a1 - 24) + 320);
  Function = llvm::Module::getFunction();
  llvm::Instruction::eraseFromParent(*(*(Function + 1) + 24));
  llvm::Function::eraseFromParent(Function);
  return 1;
}

uint64_t sub_23C4DB060(void *a1)
{
  v2 = a1[20];
  v3 = *(v2 + 80);
  if (v3)
  {
    v4 = v3 - 24;
  }

  else
  {
    v4 = 0;
  }

  if (*(v2 + 18))
  {
    llvm::Function::BuildLazyArguments(a1[20]);
    v6 = a1[20];
    v5 = *(v2 + 88);
    if (*(v6 + 18))
    {
      llvm::Function::BuildLazyArguments(a1[20]);
    }

    v2 = v6;
  }

  else
  {
    v5 = *(v2 + 88);
  }

  v7 = *(v2 + 88) + 40 * *(v2 + 96);
  while (v5 != v7)
  {
    if (v5[1])
    {
      v8 = *(v4 + 40);
      v9 = v8 ? v8 - 24 : 0;
      sub_23C4DB1C0(a1 + *(*a1 - 24), v9, a1[5]);
      v10 = *(v5 + 8);
      v11 = *(a1[9] + 8 * v10);
      if ((sub_23C52EDE4(a1, v5, v10, v11) & 1) == 0)
      {
        String = llvm::MDString::getString(*(v11 - 8 * *(v11 + 8) + 8));
        result = (*(*a1 + 344))(a1, String, v13, *v5);
        if (!result)
        {
          return result;
        }

        llvm::Value::replaceAllUsesWith();
      }
    }

    v5 += 5;
  }

  return 1;
}

uint64_t sub_23C4DB1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    llvm::DebugLoc::DebugLoc();
    v5 = (a2 + 48);
    if (&v8 == (a2 + 48))
    {
      if (v8)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    else
    {
      if (*v5)
      {
        llvm::MetadataTracking::untrack();
      }

      v6 = v8;
      *v5 = v8;
      if (v6)
      {
        llvm::MetadataTracking::retrack();
        v8 = 0;
      }
    }
  }

  return sub_23C4C30FC(a1 + 8, a2);
}

uint64_t sub_23C4DB268(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 2732);
  v3 = *(*(a1 + 2720) + 8);
  v4 = (a1 + *(*a1 - 24));
  if (v3)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v2 != 0)
  {
    std::to_string(&v44, v2);
    v14 = std::string::insert(&v44, 0, ": Kernel specified max total threads per threadgroup (");
    v15 = v14->__r_.__value_.__r.__words[2];
    *&v45.__r_.__value_.__l.__data_ = *&v14->__r_.__value_.__l.__data_;
    v45.__r_.__value_.__r.__words[2] = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = std::string::append(&v45, ") ");
    v17 = v16->__r_.__value_.__r.__words[2];
    *&v46.__r_.__value_.__l.__data_ = *&v16->__r_.__value_.__l.__data_;
    v46.__r_.__value_.__r.__words[2] = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v46, "must match compute pipeline specified max total threads per threadgroup (");
    v19 = v18->__r_.__value_.__r.__words[2];
    *&v47.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
    v47.__r_.__value_.__r.__words[2] = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = v3;
LABEL_13:
    std::to_string(&__p, v20);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v23 = std::string::append(&v47, p_p, size);
    v24 = v23->__r_.__value_.__r.__words[2];
    *&v48.__r_.__value_.__l.__data_ = *&v23->__r_.__value_.__l.__data_;
    v48.__r_.__value_.__r.__words[2] = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v25 = std::string::append(&v48, ")");
    v26 = v25->__r_.__value_.__r.__words[2];
    v49 = *&v25->__r_.__value_.__l.__data_;
    v50 = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    if (v50 >= 0)
    {
      v27 = &v49;
    }

    else
    {
      v27 = v49;
    }

    if (v50 >= 0)
    {
      v28 = HIBYTE(v50);
    }

    else
    {
      v28 = *(&v49 + 1);
    }

    std::string::append(v4 + 17, v27, v28);
    if (SHIBYTE(v50) < 0)
    {
      operator delete(v49);
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    result = 0;
    goto LABEL_53;
  }

  v7 = *(v4[14].__r_.__value_.__l.__size_ + 824);
  if (!v2)
  {
    v2 = *(*(a1 + 2720) + 8);
  }

  if (v2 > v7)
  {
    std::to_string(&v44, v2);
    v8 = std::string::insert(&v44, 0, ": Specified total max threads per threadgroup (");
    v9 = v8->__r_.__value_.__r.__words[2];
    *&v45.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
    v45.__r_.__value_.__r.__words[2] = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v45, ") ");
    v11 = v10->__r_.__value_.__r.__words[2];
    *&v46.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
    v46.__r_.__value_.__r.__words[2] = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v46, "exceeds the maximum total threads per threadgroup supported (");
    v13 = v12->__r_.__value_.__r.__words[2];
    *&v47.__r_.__value_.__l.__data_ = *&v12->__r_.__value_.__l.__data_;
    v47.__r_.__value_.__r.__words[2] = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v20 = v7;
    goto LABEL_13;
  }

  *(a1 + 2732) = v2;
  sub_23C4FE97C(a1);
  v30 = *(a1 + *(*a1 - 24) + 320);
  llvm::Module::getOrInsertNamedMetadata();
  v31 = *(a1 + *(*a1 - 24) + 336);
  *&v49 = llvm::MDString::get();
  v32 = a1 + *(*a1 - 24);
  v33 = *(*(v32 + 344) + 816);
  v34 = *(v32 + 192);
  llvm::ConstantInt::get();
  *(&v49 + 1) = llvm::ValueAsMetadata::get();
  v35 = *(a1 + *(*a1 - 24) + 336);
  llvm::MDTuple::getImpl();
  llvm::NamedMDNode::addOperand();
  if (*(a1 + 32) >= 2u)
  {
    llvm::legacy::PassManager::run(*(*(a1 + *(*a1 - 24) + 400) + 312), *(a1 + *(*a1 - 24) + 320));
  }

  v36 = *(a1 + *(*a1 - 24) + 320);
  v37 = v36 + 8;
  v38 = *(v36 + 16);
  if (v38 != v36 + 8)
  {
    do
    {
      if (v38)
      {
        v39 = (v38 - 56);
      }

      else
      {
        v39 = 0;
      }

      v40 = *v39;
      if (*v39)
      {
        v41 = *(v40 + 8);
        if ((v41 & 0xFE) == 0x12)
        {
          v41 = *(**(v40 + 16) + 8);
        }

        if ((v41 & 0xFFFFFF00) == 0x300)
        {
          llvm::GlobalObject::setSection();
        }
      }

      v38 = *(v38 + 8);
    }

    while (v38 != v37);
  }

  result = 1;
LABEL_53:
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4DB6E0(void *a1)
{
  v1 = sub_23C4DA5B8((a1 + *(*a1 - 32)), &off_284F16398) + 3168;

  return sub_23C4B130C(v1);
}

uint64_t sub_23C4DB72C(uint64_t a1)
{
  v171 = *MEMORY[0x277D85DE8];
  v138 = sub_23C4FDC38(a1);
  if (v138)
  {
    v1 = *(*(a1 + 152) + 80);
    if (v1)
    {
      v2 = (v1 - 24);
    }

    else
    {
      v2 = 0;
    }

    if (*(a1 + 2728) == 1)
    {
      *&v152 = llvm::BasicBlock::getFirstInsertionPt(v2);
      sub_23C4FE424(v2, &v152);
      v158 = "kernel_entry";
      v162 = 259;
      llvm::BasicBlock::splitBasicBlock();
      v3 = *(a1 + *(*a1 - 24) + 336);
      v158 = "early_out_block";
      v162 = 259;
      v4 = *(v2 + 7);
      operator new();
    }

    v5 = a1 + *(*a1 - 24);
    FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v2);
    sub_23C497720(v5 + 8, v2, FirstInsertionPt);
    v7 = 0;
    v8 = (a1 + 2824);
    v9 = 1;
    do
    {
      v10 = sub_23C4DD868(a1, *(a1 + 192 + *(*a1 - 24)), v7);
      sub_23C4D56F8(v8, v10);
      v9 &= *(v8 + 2) != 0;
      ++v7;
      v8 = (v8 + 24);
    }

    while (v7 != 3);
    if (v9)
    {
      v11 = a1 + *(*a1 - 24);
      v12 = *(a1 + 2888);
      v13 = sub_23C4DD658(a1, *(v11 + 192), 1u);
      v162 = 257;
      v14 = sub_23C49ADDC(v11 + 8, v12, v13, &v158);
      sub_23C4D56F8((a1 + 2896), v14);
      v15 = a1 + *(*a1 - 24);
      v16 = *(a1 + 2912);
      v17 = *(a1 + 2864);
      v162 = 257;
      v18 = sub_23C49A474(v15 + 8, v16, v17, &v158);
      sub_23C4D56F8((a1 + 2896), v18);
      v19 = a1 + *(*a1 - 24);
      v20 = *(a1 + 2912);
      v21 = sub_23C4DD658(a1, *(v19 + 192), 0);
      v162 = 257;
      v22 = sub_23C49ADDC(v19 + 8, v20, v21, &v158);
      sub_23C4D56F8((a1 + 2896), v22);
      v23 = a1 + *(*a1 - 24);
      v24 = *(a1 + 2912);
      v25 = *(a1 + 2840);
      v162 = 257;
      v26 = sub_23C49A474(v23 + 8, v24, v25, &v158);
      sub_23C4D56F8((a1 + 2896), v26);
    }

    v27 = *(a1 + *(*a1 - 24) + 320);
    sub_23C504C2C(&v158, *v27);
    v167 = a1;
    v158 = &unk_284F1B798;
    v166[23] = v27;
    if ((atomic_load_explicit(&qword_27E1F72C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F72C8))
    {
      qword_27E1F70C8[0] = "air.get_global_size.i32";
      unk_27E1F70D0 = sub_23C4DD5CC;
      qword_27E1F70D8 = 0;
      dword_27E1F70E0 = 4;
      word_27E1F70E4 = 0;
      qword_27E1F70E8 = "air.get_global_size.i16";
      unk_27E1F70F0 = sub_23C4DD5CC;
      qword_27E1F70F8 = 0;
      dword_27E1F7100 = 4;
      word_27E1F7104 = 0;
      qword_27E1F7108 = "air.get_global_id.i32";
      unk_27E1F7110 = sub_23C4DD4E8;
      qword_27E1F7118 = 0;
      dword_27E1F7120 = 4;
      word_27E1F7124 = 0;
      qword_27E1F7128 = "air.get_global_id.i16";
      unk_27E1F7130 = sub_23C4DD4E8;
      qword_27E1F7138 = 0;
      dword_27E1F7140 = 4;
      word_27E1F7144 = 0;
      qword_27E1F7148 = "air.get_local_size.i32";
      unk_27E1F7150 = sub_23C4DD864;
      qword_27E1F7158 = 0;
      dword_27E1F7160 = 4;
      word_27E1F7164 = 0;
      qword_27E1F7168 = "air.get_local_size.i16";
      unk_27E1F7170 = sub_23C4DD864;
      qword_27E1F7178 = 0;
      dword_27E1F7180 = 4;
      word_27E1F7184 = 0;
      qword_27E1F7188 = "air.get_local_id.i32";
      unk_27E1F7190 = sub_23C4DD808;
      qword_27E1F7198 = 0;
      dword_27E1F71A0 = 4;
      word_27E1F71A4 = 0;
      qword_27E1F71A8 = "air.get_local_id.i16";
      unk_27E1F71B0 = sub_23C4DD808;
      qword_27E1F71B8 = 0;
      dword_27E1F71C0 = 4;
      word_27E1F71C4 = 0;
      qword_27E1F71C8 = "air.get_local_linear_id.i32";
      unk_27E1F71D0 = sub_23C4DD7B4;
      qword_27E1F71D8 = 0;
      dword_27E1F71E0 = 2;
      word_27E1F71E4 = 0;
      qword_27E1F71E8 = "air.get_local_linear_id.i16";
      unk_27E1F71F0 = sub_23C4DD7B4;
      qword_27E1F71F8 = 0;
      dword_27E1F7200 = 2;
      word_27E1F7204 = 0;
      qword_27E1F7208 = "air.get_global_linear_id.i32";
      unk_27E1F7210 = sub_23C4DD390;
      qword_27E1F7218 = 0;
      dword_27E1F7220 = 2;
      word_27E1F7224 = 0;
      qword_27E1F7228 = "air.get_global_linear_id.i16";
      unk_27E1F7230 = sub_23C4DD390;
      qword_27E1F7238 = 0;
      dword_27E1F7240 = 2;
      word_27E1F7244 = 0;
      qword_27E1F7248 = "air.get_num_groups.i32";
      unk_27E1F7250 = sub_23C4DD174;
      qword_27E1F7258 = 0;
      dword_27E1F7260 = 4;
      word_27E1F7264 = 0;
      qword_27E1F7268 = "air.get_num_groups.i16";
      unk_27E1F7270 = sub_23C4DD174;
      qword_27E1F7278 = 0;
      dword_27E1F7280 = 4;
      word_27E1F7284 = 0;
      qword_27E1F7288 = "air.get_group_id.i32";
      unk_27E1F7290 = sub_23C4DCF90;
      qword_27E1F7298 = 0;
      dword_27E1F72A0 = 4;
      word_27E1F72A4 = 0;
      qword_27E1F72A8 = "air.get_group_id.i16";
      unk_27E1F72B0 = sub_23C4DCF90;
      qword_27E1F72B8 = 0;
      dword_27E1F72C0 = 4;
      word_27E1F72C4 = 0;
      __cxa_guard_release(&qword_27E1F72C8);
    }

    for (i = 0; i != 16; ++i)
    {
      v29 = &qword_27E1F70C8[4 * i];
      if (*v29)
      {
        v30 = strlen(*v29);
      }

      Function = llvm::Module::getFunction();
      if (Function)
      {
        v32 = *(v29 + 6);
        v142 = Function;
        if (v32 == 9)
        {
          v35 = *(Function + 8);
          while (v35)
          {
            v36 = *(v35 + 24);
            v35 = *(v35 + 8);
            v37 = v29[1];
            v38 = v29[2];
            v39 = (v167 + (v38 >> 1));
            if (v38)
            {
              v37 = *(*v39 + v37);
            }

            v37(v39, v36);
          }
        }

        else if (v32 == 8)
        {
          v33 = v29[1];
          if (v33)
          {
            v34 = strlen(v29[1]);
            *&v168[0] = &v168[1] + 8;
            *(v168 + 8) = xmmword_23C532530;
            sub_23C4B01BC(v168, v33, &v33[v34]);
          }

          else
          {
            *&v168[1] = 64;
            v168[0] = &v168[1] + 8;
          }

          sub_23C4B01BC(v168, ".", "");
          if (*&v168[1] < *(&v168[0] + 1))
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          v92 = *(v142 + 3);
          llvm::Module::getOrInsertFunction();
          llvm::Value::replaceAllUsesWith();
          if (*&v168[0] != (&v168[1] + 8))
          {
            free(*&v168[0]);
          }
        }

        else
        {
          v140 = i;
          v40 = **(*(Function + 24) + 16);
          v41 = ((*(v40 + 8) & 0xFE) == 18) & *(v29 + 29);
          if (v41 == 1)
          {
            v42 = *(v40 + 32);
          }

          else
          {
            v42 = 1;
          }

          v147 = v42;
          v139 = v164;
          v43 = *(Function + 8);
          if (v43)
          {
            v146 = v29;
            v143 = **(*(Function + 24) + 16);
            while (1)
            {
              v44 = *(v43 + 24);
              v145 = *(v43 + 8);
              FastMathFlags = sub_23C497EEC(v44);
              if (FastMathFlags)
              {
                FastMathFlags = llvm::Instruction::getFastMathFlags(v44);
              }

              v164 = FastMathFlags;
              sub_23C4C30FC(&v159, v44);
              v46 = llvm::UndefValue::get();
              if (v147)
              {
                break;
              }

LABEL_101:
              if (*v44 != v166[1])
              {
                llvm::Value::replaceAllUsesWith();
              }

              llvm::Instruction::eraseFromParent(v44);
              v43 = v145;
              if (!v145)
              {
                goto LABEL_104;
              }
            }

            v47 = 0;
            while (2)
            {
              v170 = 0;
              v169 = 0u;
              memset(v168, 0, sizeof(v168));
              v48 = sub_23C4B88A0(v44) - v44 + 32 * (*(v44 + 5) & 0x7FFFFFF);
              if ((v48 & 0x1FFFFFFFE0) != 0)
              {
                v49 = (v48 >> 5);
                v50 = v168;
                v51 = v44;
                do
                {
                  v52 = (v51 - 32 * (*(v44 + 5) & 0x7FFFFFF));
                  v53 = *v52;
                  *v50 = *v52;
                  if (v41 && (*(*v53 + 8) & 0xFE) == 0x12)
                  {
                    v157 = 257;
                    v54 = llvm::ConstantInt::get();
                    *v50 = sub_23C5057E8(&v159, v53, v54, &PrimitiveSizeInBits);
                  }

                  ++v50;
                  v51 = (v51 + 32);
                  --v49;
                }

                while (v49);
              }

              if (*(v146 + 28))
              {
                v55 = **&v168[0];
                if ((*(**&v168[0] + 8) & 0xFE) == 0x12)
                {
                  v55 = **(v55 + 2);
                }

                PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v55);
                LODWORD(v156) = v56;
                if (llvm::TypeSize::operator unsigned long long() == 32)
                {
                  v57 = 0;
                }

                else
                {
                  v58 = v166[3];
                  if ((*(**&v168[0] + 8) & 0xFE) == 0x12)
                  {
                    v59 = *(**&v168[0] + 32);
                    v58 = llvm::FixedVectorType::get();
                  }

                  if ((v48 & 0x1FFFFFFFE0) != 0)
                  {
                    v60 = (v48 >> 5);
                    v61 = v168;
                    do
                    {
                      v62 = *v61;
                      if (*(**v61 + 8) != 15)
                      {
                        v157 = 257;
                        *v61 = sub_23C4B284C(&v159, v62, v58, &PrimitiveSizeInBits);
                      }

                      v61 = (v61 + 8);
                      --v60;
                    }

                    while (v60);
                  }

                  v57 = 1;
                }
              }

              else
              {
                v57 = 0;
              }

              v63 = v167 + *(*v167 - 24);
              v152 = v163;
              llvm::IRBuilderBase::getCurrentDebugLocation(&v153, &v159);
              v154 = v164;
              sub_23C49769C(&v152, (v63 + 8));
              if (v153)
              {
                llvm::MetadataTracking::untrack();
              }

              v64 = 0;
              v65 = *(v146 + 6);
              if (v65 > 3)
              {
                if (v65 <= 5)
                {
                  if (v65 == 4)
                  {
                    v81 = (*&v168[0] + 24);
                    if (*(*&v168[0] + 32) >= 0x41u)
                    {
                      v81 = *v81;
                    }

                    v69 = *v81;
                    v66 = v146[1];
                    v82 = v146[2];
                    v68 = *v44;
                    v70 = (v167 + (v82 >> 1));
                    if (v82)
                    {
                      v66 = *(*v70 + v66);
                    }
                  }

                  else
                  {
                    v66 = v146[1];
                    v67 = v146[2];
                    v69 = *(&v168[0] + 1);
                    v68 = *&v168[0];
                    v70 = (v167 + (v67 >> 1));
                    if (v67)
                    {
                      v66 = *(*v70 + v66);
                    }
                  }

                  v88 = v66(v70, v68, v69);
                  goto LABEL_90;
                }

                if (v65 == 6)
                {
                  v75 = v146[1];
                  v83 = v146[2];
                  v85 = *(&v168[0] + 1);
                  v84 = *&v168[0];
                  v86 = *&v168[1];
                  v77 = (v167 + (v83 >> 1));
                  if (v83)
                  {
                    v88 = (*(*v77 + v75))(v77, *&v168[0], *(&v168[0] + 1), *&v168[1]);
                    goto LABEL_90;
                  }

                  goto LABEL_89;
                }

                if (v65 == 7)
                {
                  v75 = v146[1];
                  v76 = v146[2];
                  v77 = (v167 + (v76 >> 1));
                  if (v76)
                  {
                    v75 = *(*v77 + v75);
                  }

                  v84 = v168;
                  v85 = &unk_23C53F34D;
                  v86 = 0;
LABEL_89:
                  v88 = v75(v77, v84, v85, v86);
                  goto LABEL_90;
                }

LABEL_91:
                v89 = v167 + *(*v167 - 24);
                v149 = *(v89 + 56);
                llvm::IRBuilderBase::getCurrentDebugLocation(&v150, (v89 + 8));
                v151 = *(v89 + 26);
                sub_23C49769C(&v149, &v159);
                if (v150)
                {
                  llvm::MetadataTracking::untrack();
                }

                if (v57)
                {
                  v90 = *v44;
                  if (v41 && (*(v90 + 8) & 0xFE) == 0x12)
                  {
                    v90 = **(v90 + 16);
                  }

                  v157 = 257;
                  v64 = sub_23C49FEB4(&v159, v64, v90, &PrimitiveSizeInBits);
                }

                if (v41)
                {
                  v157 = 257;
                  v91 = llvm::ConstantInt::get();
                  v64 = sub_23C505AA8(&v159, v46, v64, v91, &PrimitiveSizeInBits);
                }

                ++v47;
                v46 = v64;
                if (v47 == v147)
                {
                  goto LABEL_101;
                }

                continue;
              }

              break;
            }

            switch(v65)
            {
              case 1:
                v78 = v146[1];
                v79 = v146[2];
                v80 = (v167 + (v79 >> 1));
                if (v79)
                {
                  v78 = *(*v80 + v78);
                }

                v88 = v78(v80);
LABEL_90:
                v64 = v88;
                goto LABEL_91;
              case 2:
                v71 = v146[1];
                v87 = v146[2];
                v73 = *v44;
                v74 = (v167 + (v87 >> 1));
                if ((v87 & 1) == 0)
                {
                  goto LABEL_80;
                }

                break;
              case 3:
                v71 = v146[1];
                v72 = v146[2];
                v73 = *&v168[0];
                v74 = (v167 + (v72 >> 1));
                if ((v72 & 1) == 0)
                {
LABEL_80:
                  v88 = v71(v74, v73);
                  goto LABEL_90;
                }

                break;
              default:
                goto LABEL_91;
            }

            v71 = *(*v74 + v71);
            goto LABEL_80;
          }

LABEL_104:
          v164 = v139;
          i = v140;
        }

        llvm::Function::eraseFromParent(v142);
      }
    }

    llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v166);
    llvm::IRBuilderFolder::~IRBuilderFolder(&v165);
    if (v159 != &v161)
    {
      free(v159);
    }

    v93 = *(a1 + *(*a1 - 24) + 320);
    v94 = llvm::Module::getFunction();
    if (v94)
    {
      v95 = v94;
      if (!*(a1 + 2960))
      {
        v158 = "agc.barrier_target_count";
        v162 = 259;
        v96 = *(a1 + *(*a1 - 24) + 192);
        v97 = sub_23C4DCE88(a1);
        sub_23C4D56F8((a1 + 2944), v97);
      }

      if (!*(a1 + 2984))
      {
        v98 = llvm::User::operator new(0x58);
        v99 = a1 + *(*a1 - 24);
        v100 = *(v99 + 320);
        v101 = *(v99 + 192);
        v158 = "agc.barrier_counter";
        v162 = 259;
        llvm::GlobalVariable::GlobalVariable();
        llvm::GlobalObject::setSection();
        llvm::GlobalObject::setAlignment();
        sub_23C4D56F8((a1 + 2968), v98);
      }

      v102 = *(v95 + 8);
      if (v102)
      {
        v103 = 0;
        v104 = a1 + 192;
        v148 = a1 + 344;
        v144 = a1 + 8;
        do
        {
          v105 = *(v102 + 24);
          v106 = *(v105 - 4 * (*(v105 + 5) & 0x7FFFFFF));
          v107 = (v106 + 24);
          if (*(v106 + 32) >= 0x41u)
          {
            v107 = *v107;
          }

          v102 = *(v102 + 8);
          v108 = *v107;
          v158 = &v160;
          v159 = 0x400000000;
          v109 = *(v104 + *(*a1 - 24));
          v110 = llvm::PointerType::get();
          sub_23C49B500(&v158, v110);
          v111 = *(v104 + *(*a1 - 24));
          v112 = llvm::PointerType::get();
          sub_23C49B500(&v158, v112);
          sub_23C49B500(&v158, *(v104 + *(*a1 - 24)));
          v113 = *(*a1 - 24);
          v114 = *(a1 + v113 + 344);
          if (*(v114 + 880))
          {
            v115 = (v108 & 1) == 0;
          }

          else
          {
            v115 = 1;
          }

          if (v115)
          {
            v118 = (v114 + 872);
          }

          else
          {
            v116 = *(a1 + v113 + 176);
            v117 = llvm::PointerType::get();
            sub_23C49B500(&v158, v117);
            v113 = *(*a1 - 24);
            v118 = (*(v148 + v113) + 880);
          }

          v119 = *v118;
          v120 = *(a1 + 144 + v113);
          llvm::FunctionType::get();
          if (v119)
          {
            strlen(v119);
          }

          v121 = *(a1 + 320 + *(*a1 - 24));
          llvm::Module::getOrInsertFunction();
          v123 = v122;
          if (v158 != &v160)
          {
            free(v158);
          }

          sub_23C4C30FC(v144 + *(*a1 - 24), v105);
          v158 = &v160;
          v159 = 0x400000000;
          sub_23C49B500(&v158, *(a1 + 2984));
          sub_23C49B500(&v158, *(a1 + 2960));
          v124 = *(v104 + *(*a1 - 24));
          v125 = llvm::ConstantInt::get();
          sub_23C49B500(&v158, v125);
          v126 = *a1;
          v127 = *a1;
          v128 = *(v148 + *(*a1 - 24));
          v129 = *(v128 + 1636);
          if (*(v128 + 880) && (v108 & 1) != 0)
          {
            if (!*(a1 + 3008))
            {
              *&v168[0] = "agc.mem_fence_addr";
              LOWORD(v169) = 259;
              v130 = *(a1 + 176 + *(v127 - 24));
              llvm::PointerType::get();
              v131 = sub_23C4DCE88(a1);
              sub_23C4D56F8((a1 + 2992), v131);
              v126 = *a1;
            }

            v132 = *(v126 - 24);
            v133 = *(a1 + 3008);
            LOWORD(v169) = 257;
            v134 = sub_23C497C88((v144 + v132), **(*v133 + 16), v133, 0, v168);
            sub_23C49B500(&v158, v134);
            v126 = *a1;
          }

          v135 = *(v126 - 24);
          LOWORD(v169) = 257;
          sub_23C497A7C(v144 + v135, *(v123 + 24), v123, v158, v159, v168);
          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v105);
          if (v158 != &v160)
          {
            free(v158);
          }

          v103 += v129 ^ 1;
        }

        while (v102);
      }
    }
  }

  v136 = *MEMORY[0x277D85DE8];
  return v138;
}

uint64_t sub_23C4DCE88(void *a1)
{
  v2 = llvm::User::operator new(0x58);
  v3 = a1 + *(*a1 - 24);
  v4 = *(v3 + 40);
  v7 = *(*(v3 + 43) + 836) | 0x100000000;
  v5 = llvm::GlobalVariable::GlobalVariable();
  *(v5 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  llvm::GlobalObject::setAlignment();
  sub_23C506A1C((a1 + *(*a1 - 24)));
  return v2;
}

uint64_t sub_23C4DCF90(void *a1, uint64_t a2, unsigned int a3)
{
  v5 = &a1[3 * a3];
  v6 = (v5 + 377);
  if (!v5[379])
  {
    v8 = 1;
    v9 = llvm::User::operator new(0x58);
    v10 = a1 + *(*a1 - 24);
    v11 = *(v10 + 40);
    v12 = *(v10 + 24);
    v13 = off_278BBFA50[a3];
    if (*v13)
    {
      v23 = off_278BBFA50[a3];
      v8 = 3;
    }

    v22[0] = "agx.group_id_";
    LOBYTE(v24) = 3;
    HIBYTE(v24) = v8;
    v14 = 1;
    llvm::GlobalVariable::GlobalVariable();
    if (*v13)
    {
      v23 = v13;
      v14 = 3;
    }

    v22[0] = "cl_group_id_";
    LOBYTE(v24) = 3;
    HIBYTE(v24) = v14;
    llvm::Twine::str(&__p, v22);
    llvm::GlobalObject::setSection();
    if (v20 < 0)
    {
      operator delete(__p);
    }

    llvm::GlobalObject::setAlignment();
    sub_23C4D56F8(v6, v9);
  }

  v15 = (a1 + *(*a1 - 24));
  v16 = *(v6 + 2);
  v24 = 257;
  v17 = sub_23C497C88(v15 + 1, **(*v16 + 16), v16, 0, v22);
  v21 = 257;
  return sub_23C49ACF8((v15 + 1), 38, v17, a2, &__p);
}

uint64_t sub_23C4DD174(void *a1, uint64_t a2)
{
  if (!a1[347])
  {
    v4 = *(a1 + *(*a1 - 24) + 192);
    v5 = llvm::PointerType::get();
    v6 = *(*(a1 + *(*a1 - 24) + 344) + 792);
    v7 = (*(*v6 + 232))(v6);
    v22[0] = "agc.indirect_wg_count_buffer_pointer.";
    v22[2] = v7;
    v23 = 2051;
    v8 = *(*(a1 + *(*a1 - 24) + 344) + 792);
    v9 = (*(*v8 + 232))(v8);
    v10 = sub_23C4ED494(a1, v5, v22, v9, 12);
    sub_23C4D56F8((a1 + 345), v10);
  }

  v11 = (a1 + *(*a1 - 24));
  v12 = a1[347];
  v23 = 257;
  v13 = sub_23C497C88(v11 + 1, **(*v12 + 16), v12, 0, v22);
  v14 = a1 + *(*a1 - 24);
  v15 = *(v14 + 192);
  v16 = llvm::ConstantInt::get();
  v23 = 257;
  v17 = sub_23C49AEB8(v14, v13, v16, v22);
  v18 = (a1 + *(*a1 - 24));
  v23 = 257;
  v19 = sub_23C497C88(v18 + 1, **(*v17 + 16), v17, 0, v22);
  v21[16] = 257;
  return sub_23C49ACF8((v18 + 1), 38, v19, a2, v21);
}

uint64_t sub_23C4DD390(void *a1, uint64_t a2)
{
  v4 = a1 + *(*a1 - 24);
  v5 = sub_23C4DD4E8(a1, a2, 2u);
  v6 = sub_23C4DD5CC(a1, a2, 1u);
  v18 = 257;
  v7 = sub_23C49ADDC((v4 + 8), v5, v6, v17);
  v8 = a1 + *(*a1 - 24);
  v9 = sub_23C4DD4E8(a1, a2, 1u);
  v18 = 257;
  v10 = sub_23C49A474((v8 + 8), v7, v9, v17);
  v11 = a1 + *(*a1 - 24);
  v12 = sub_23C4DD5CC(a1, a2, 0);
  v18 = 257;
  v13 = sub_23C49ADDC((v11 + 8), v10, v12, v17);
  v14 = a1 + *(*a1 - 24);
  v15 = sub_23C4DD4E8(a1, a2, 0);
  v18 = 257;
  return sub_23C49A474((v14 + 8), v13, v15, v17);
}

uint64_t sub_23C4DD4E8(void *a1, uint64_t a2, unsigned int a3)
{
  v6 = a1 + *(*a1 - 24);
  v7 = sub_23C4DD658(a1, a2, a3);
  v8 = sub_23C4DCF90(a1, a2, a3);
  v15 = 257;
  v9 = sub_23C49ADDC((v6 + 8), v7, v8, v14);
  v10 = a1 + *(*a1 - 24);
  v11 = a1[3 * a3 + 355];
  v15 = 257;
  v12 = sub_23C49ACF8((v10 + 8), 38, v11, a2, v14);
  v15 = 257;
  return sub_23C49A474((v10 + 8), v9, v12, v14);
}

uint64_t sub_23C4DD5CC(void *a1, uint64_t a2, unsigned int a3)
{
  v5 = a1 + *(*a1 - 24);
  v6 = sub_23C4DD658(a1, a2, a3);
  v7 = sub_23C4DD174(a1, a2);
  v10 = 257;
  return sub_23C49ADDC((v5 + 8), v6, v7, v9);
}

uint64_t sub_23C4DD658(void *a1, uint64_t a2, unsigned int a3)
{
  v5 = &a1[3 * a3];
  v6 = (v5 + 322);
  if (!v5[324])
  {
    v7 = a3;
    *&v17 = "local_size";
    *&v16 = "agc.";
    LOWORD(v18) = 771;
    v8 = off_278BBF9F8[a3];
    if (*v8)
    {
      *&v19 = &v16;
      *&v20 = v8;
      LOWORD(v21) = 770;
    }

    else
    {
      v19 = v16;
      v20 = v17;
      v21 = v18;
    }

    v9 = *(a1 + *(*a1 - 24) + 192);
    v10 = dword_23C532B88[v7 + 6];
    v11 = sub_23C4DCE88(a1);
    sub_23C4D56F8(v6, v11);
  }

  v12 = (a1 + *(*a1 - 24));
  v13 = *(v6 + 2);
  LOWORD(v21) = 257;
  v14 = sub_23C497C88(v12 + 1, **(*v13 + 16), v13, 0, &v19);
  LOWORD(v18) = 257;
  return sub_23C49ACF8((v12 + 1), 38, v14, a2, &v16);
}

uint64_t sub_23C4DD7B4(void *a1, uint64_t a2)
{
  v2 = a1 + *(*a1 - 24);
  v3 = a1[364];
  v6 = 257;
  return sub_23C49ACF8((v2 + 8), 38, v3, a2, v5);
}

uint64_t sub_23C4DD808(void *a1, uint64_t a2, unsigned int a3)
{
  v3 = a1 + *(*a1 - 24);
  v4 = a1[3 * a3 + 355];
  v7 = 257;
  return sub_23C49ACF8((v3 + 8), 38, v4, a2, v6);
}

uint64_t sub_23C4DD868(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 4 * a3 + 2808);
  if (v3 == -1)
  {
    return 0;
  }

  v7 = *(a1 + 152);
  if (*(v7 + 18))
  {
    llvm::Function::BuildLazyArguments(*(a1 + 152));
  }

  if (v3)
  {
    v8 = *(v7 + 88) + 40 * (v3 - 1) + 40;
  }

  else
  {
    v8 = *(v7 + 88);
  }

  if (a3)
  {
    v9 = a1 + *(*a1 - 24);
    v10 = *(v9 + 232);
    v20 = 257;
    v11 = sub_23C49ACF8(v9 + 8, 49, v8, v10, v19);
    v12 = a1 + *(*a1 - 24);
    v20 = 257;
    v13 = *(v12 + 192);
    v14 = llvm::ConstantInt::get();
    v15 = sub_23C5057E8(v12 + 8, v11, v14, v19);
    v16 = a1 + *(*a1 - 24);
    v20 = 257;
    v8 = sub_23C49ACF8(v16 + 8, 39, v15, a2, v19);
  }

  v18 = a1 + *(*a1 - 24);
  v20 = 257;
  return sub_23C49ACF8(v18 + 8, 38, v8, a2, v19);
}

uint64_t sub_23C4DD9EC(uint64_t *a1, int a2)
{
  if (a2 == 2)
  {
    v3 = a1[394];
    if (!v3)
    {
      v4 = a1 + 394;
      v12 = "agc.local_xdim_mul_and_shift";
      v13 = 259;
      v8 = *(a1 + *(*a1 - 24) + 232);
      v6 = sub_23C4DCE88(a1);
      v7 = (a1 + 392);
      goto LABEL_9;
    }
  }

  else if (a2 == 1)
  {
    v3 = a1[391];
    if (!v3)
    {
      v4 = a1 + 391;
      v12 = "agc.local_slice_mul_and_shift";
      v13 = 259;
      v5 = *(a1 + *(*a1 - 24) + 232);
      v6 = sub_23C4DCE88(a1);
      v7 = (a1 + 389);
LABEL_9:
      sub_23C4D56F8(v7, v6);
      v3 = *v4;
    }
  }

  else
  {
    v3 = a1[388];
    if (!v3)
    {
      v4 = a1 + 388;
      v12 = "agc.local_slice_and_linear_size";
      v13 = 259;
      v9 = *(a1 + *(*a1 - 24) + 192);
      v6 = sub_23C4DCE88(a1);
      v7 = (a1 + 386);
      goto LABEL_9;
    }
  }

  v10 = (a1 + *(*a1 - 24));
  v13 = 257;
  return sub_23C497C88(v10 + 1, **(*v3 + 16), v3, 0, &v12);
}

uint64_t sub_23C4DDB78(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v49 = *MEMORY[0x277D85DE8];
  v10 = a1 + *(*a1 - 24);
  v46 = 257;
  v11 = *(v10 + 24);
  v12 = llvm::ConstantInt::get();
  v13 = sub_23C5057E8((v10 + 8), a4, v12, v45);
  v14 = a1 + *(*a1 - 24);
  v46 = 257;
  v15 = *(v14 + 24);
  v16 = llvm::ConstantInt::get();
  v17 = sub_23C5057E8((v14 + 8), a4, v16, v45);
  v18 = (a1 + *(*a1 - 24));
  v19 = v18[43];
  v20 = *(v19 + 936);
  if (v20)
  {
    v21 = strlen(*(v19 + 936));
    v22 = sub_23C49B858(v18, v20, v21, v18[23], v18[23], v18[23], v18[23]);
    v47[0] = a2;
    v47[1] = v13;
    v47[2] = a2;
    v23 = a1 + *(*a1 - 24);
    v46 = 257;
    v24 = sub_23C497A7C((v23 + 8), *(v22 + 24), v22, v47, 3, v45);
  }

  else
  {
    v25 = v18[24];
    v46 = 257;
    v26 = sub_23C49ACF8((v18 + 1), 39, v13, v25, v45);
    v48 = 257;
    v27 = sub_23C49ADDC((v18 + 1), a2, v26, v47);
    v28 = a1 + *(*a1 - 24);
    v46 = 257;
    v29 = sub_23C49A474((v28 + 8), v27, a2, v45);
    v30 = a1 + *(*a1 - 24);
    v31 = *(v30 + 29);
    v46 = 257;
    v32 = sub_23C49ACF8((v30 + 8), 49, v29, v31, v45);
    v33 = a1 + *(*a1 - 24);
    v46 = 257;
    v34 = *(v33 + 24);
    v35 = llvm::ConstantInt::get();
    v24 = sub_23C5057E8((v33 + 8), v32, v35, v45);
  }

  v36 = a1 + *(*a1 - 24);
  v46 = 257;
  v37 = sub_23C49B560((v36 + 8), v24, v17, v45);
  v38 = *a2;
  v48 = 257;
  v39 = sub_23C49ACF8((v36 + 8), 39, v37, v38, v47);
  if (a5)
  {
    *a5 = v39;
  }

  v40 = a1 + *(*a1 - 24);
  v46 = 257;
  v41 = sub_23C49ADDC((v40 + 8), v39, a3, v45);
  v42 = a1 + *(*a1 - 24);
  v46 = 257;
  result = sub_23C4BF7D4((v42 + 8), a2, v41, v45);
  v44 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::ValueHandleBase *sub_23C4DDEAC(llvm::ValueHandleBase *this, void *a2)
{
  v2 = *(this + 2);
  v3 = a2[2];
  if (v2 != v3)
  {
    v5 = this;
    if (v2 != -8192 && v2 != -4096 && v2 != 0)
    {
      this = llvm::ValueHandleBase::RemoveFromUseList(this);
      v3 = a2[2];
    }

    *(v5 + 2) = v3;
    if (v3 != -8192 && v3 != -4096 && v3 != 0)
    {
      v8 = (*a2 & 0xFFFFFFFFFFFFFFF8);

      return llvm::ValueHandleBase::AddToExistingUseList(v5, v8);
    }
  }

  return this;
}

uint64_t sub_23C4DDF40(uint64_t a1)
{
  if (*(a1 + 2792))
  {
    v1 = a1 + *(*a1 - 24);
    operator new();
  }

  v2 = *(a1 + *(*a1 - 24) + 144);
  return llvm::FunctionType::get();
}

uint64_t sub_23C4DE07C(uint64_t a1)
{
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

  v5 = *(v2 + 88) + 40 * *(v2 + 96);
  if (v3 != v5)
  {
    while (1)
    {
      v6 = *(*(a1 + 72) + 8 * *(v3 + 32));
      if (!v6 || !*(v3 + 8))
      {
        goto LABEL_38;
      }

      String = llvm::MDString::getString(*(v6 - 8 * *(v6 + 8) + 8));
      if (v8 == 34)
      {
        break;
      }

      if (v8 != 31)
      {
        if (v8 != 27)
        {
          goto LABEL_38;
        }

        v9 = *String == 0x657268742E726961 && String[1] == 0x7469736F705F6461;
        v10 = v9 && String[2] == 0x675F6E695F6E6F69;
        if (!v10 || *(String + 19) != 0x646972675F6E695FLL)
        {
          goto LABEL_38;
        }

LABEL_37:
        if ((*(*v3 + 8) & 0xFE) == 0x12)
        {
          goto LABEL_74;
        }

        goto LABEL_38;
      }

      if (*String == 0x657268742E726961 && String[1] == 0x7865646E695F6461 && String[2] == 0x657268745F6E695FLL && *(String + 23) == 0x70756F7267646165)
      {
LABEL_74:
        *(a1 + 3160) = 1;
        goto LABEL_39;
      }

LABEL_38:
      v3 += 40;
      if (v3 == v5)
      {
        goto LABEL_39;
      }
    }

    if (memcmp(String, "air.thread_position_in_threadgroup", 0x22uLL))
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_39:
  v15 = sub_23C4DB268(a1);
  if (v15)
  {
    LOBYTE(v16) = 1;
    if (*(a1 + 2728))
    {
LABEL_58:
      *(a1 + 2808) = -1;
      *(a1 + 2816) = -1;
LABEL_59:
      sub_23C4A72DC(a1 + 2784, 0);
      *(a1 + 2808) = 0;
    }

    else
    {
      v17 = 0;
      v16 = 0;
      do
      {
        v18 = *(a1 + 320 + *(*a1 - 24));
        strlen(off_278BBFA10[v17]);
        Function = llvm::Module::getFunction();
        if (Function)
        {
          if (!*(Function + 96))
          {
            goto LABEL_57;
          }

          v20 = *(Function + 8);
          if (v20)
          {
            while (1)
            {
              v21 = *(*(v20 + 24) - 32 * (*(*(v20 + 24) + 20) & 0x7FFFFFF));
              if (!v21 || *(v21 + 16) != 16)
              {
                break;
              }

              v23 = (v21 + 24);
              if (*(v21 + 32) >= 0x41u)
              {
                v23 = *v23;
              }

              v16 |= 1 << *v23;
              v20 = *(v20 + 8);
              if (!v20)
              {
                goto LABEL_53;
              }
            }

LABEL_57:
            LOBYTE(v16) = 7;
            goto LABEL_58;
          }
        }

LABEL_53:
        if (v17 > 6)
        {
          break;
        }

        ++v17;
      }

      while (v16 != 7);
      *(a1 + 2808) = -1;
      *(a1 + 2816) = -1;
      if (v16)
      {
        goto LABEL_59;
      }
    }

    if ((v16 & 6) != 0)
    {
      sub_23C4A72DC(a1 + 2784, 3);
      if ((v16 & 2) != 0)
      {
        *(a1 + 2812) = *(a1 + 2792) - 1;
      }

      if ((v16 & 4) != 0)
      {
        *(a1 + 2816) = *(a1 + 2792) - 1;
      }
    }

    v24 = *(a1 + *(*a1 - 24) + 320);
    llvm::Module::getOrInsertNamedMetadata();
    if (MGGetBoolAnswer() && (v25 = sub_23C4A2690("AGC_DISABLE_ATOMIC_OPTIMIZATIONS")) != 0 && *v25 != 48 && atoi(v25))
    {
      v26 = *(a1 + *(*a1 - 24) + 336);
    }

    else
    {
      v27 = a1 + *(*a1 - 24);
      v28 = *(v27 + 336);
      if (*(*(v27 + 344) + 1677))
      {
        *(a1 + 2728);
        *(a1 + 2728);
      }
    }

    llvm::MDString::get();
    v29 = *(a1 + *(*a1 - 24) + 336);
    llvm::MDTuple::getImpl();
    llvm::NamedMDNode::addOperand();
  }

  return v15;
}

void sub_23C4DE4B4(uint64_t *a1)
{
  v1 = sub_23C4DA5B8(a1, &off_284F16398);
  sub_23C4B130C(v1 + 3168);

  JUMPOUT(0x23EED50C0);
}

uint64_t *sub_23C4DE50C(uint64_t *a1)
{
  v2 = sub_23C4DA5B8(a1, &off_284F16398);
  sub_23C4B130C(v2 + 3168);
  return a1;
}

void sub_23C4DE544(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  sub_23C4DA5B8(v1, &off_284F16628);
  sub_23C4B130C((v1 + 396));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C4DE5B4(void *a1)
{
  v1 = sub_23C4DA5B8((a1 + *(*a1 - 32)), &off_284F16628) + 3168;

  return sub_23C4B130C(v1);
}

uint64_t sub_23C4DE600(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a3 == 22)
  {
    if (*a2 != 0x676174732E726961 || a2[1] != 0x6972675F6E695F65 || *(a2 + 14) != 0x657A69735F646972)
    {
      return 0;
    }

    v8 = "agc.stage_in_grid_size";
  }

  else
  {
    if (a3 != 24)
    {
      return 0;
    }

    v6 = *a2 == 0x676174732E726961 && a2[1] == 0x6972675F6E695F65;
    if (!v6 || a2[2] != 0x6E696769726F5F64)
    {
      return 0;
    }

    v8 = "agc.stage_in_grid_origin";
  }

  v12 = *(a4 + 8) & 0xFE;
  v20 = 261;
  v19[0] = v8;
  v19[1] = a3;
  v13 = *(a1 + *(*a1 - 24) + 192);
  llvm::FixedVectorType::get();
  v14 = sub_23C4DCE88(a1);
  v15 = (a1 + *(*a1 - 24));
  v20 = 257;
  v16 = sub_23C497C88(v15 + 1, **(*v14 + 16), v14, 0, v19);
  if (v12 == 18)
  {
    v17 = *(v4 + 32);
  }

  else
  {
    v17 = 1;
  }

  v18 = sub_23C505670(a1 + *(*a1 - 24), v16, v17, 1);
  if (v12 == 18)
  {
    v4 = **(v4 + 16);
  }

  return sub_23C505300((a1 + *(*a1 - 24)), v18, v4);
}

void sub_23C4DE7F4(uint64_t *a1)
{
  v1 = sub_23C4DA5B8(a1, &off_284F16628);
  sub_23C4B130C(v1 + 3168);

  JUMPOUT(0x23EED50C0);
}

uint64_t *sub_23C4DE84C(uint64_t *a1)
{
  v2 = sub_23C4DA5B8(a1, &off_284F16628);
  sub_23C4B130C(v2 + 3168);
  return a1;
}

void sub_23C4DE898(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = &unk_284F16920;
  v1[400] = &unk_284F16AF0;
  sub_23C4DE94C((v1 + 396));
  sub_23C4DA5B8(v1, &off_284F16B60);
  sub_23C4B130C((v1 + 400));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C4DE94C(uint64_t a1)
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
          llvm::deallocate_buffer(v5, (*v5 + 33));
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

void sub_23C4DE9C8(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  sub_23C4DA5B8(v1, &off_284F168C0);
  sub_23C4B130C((v1 + 396));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C4DEA38(void *a1)
{
  v1 = sub_23C4DA5B8((a1 + *(*a1 - 32)), &off_284F168C0) + 3168;

  return sub_23C4B130C(v1);
}

void sub_23C4DEA8C(uint64_t *a1)
{
  v1 = sub_23C4DA5B8(a1, &off_284F168C0);
  sub_23C4B130C(v1 + 3168);

  JUMPOUT(0x23EED50C0);
}

uint64_t *sub_23C4DEAE4(uint64_t *a1)
{
  v2 = sub_23C4DA5B8(a1, &off_284F168C0);
  sub_23C4B130C(v2 + 3168);
  return a1;
}

uint64_t sub_23C4DEB1C(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = &unk_284F16920;
  v1[400] = &unk_284F16AF0;
  sub_23C4DE94C((v1 + 396));
  sub_23C4DA5B8(v1, &off_284F16B60);

  return sub_23C4B130C((v1 + 400));
}

uint64_t sub_23C4DEBC4(void *a1)
{
  sub_23C503E5C(a1, a1 + 396);

  return sub_23C4DB060(a1);
}

void sub_23C4DEC00(uint64_t *a1)
{
  *a1 = &unk_284F16920;
  v2 = (a1 + 400);
  a1[400] = &unk_284F16AF0;
  sub_23C4DE94C((a1 + 396));
  sub_23C4DA5B8(a1, &off_284F16B60);
  sub_23C4B130C(v2);

  JUMPOUT(0x23EED50C0);
}

uint64_t *sub_23C4DECA0(uint64_t *a1)
{
  *a1 = &unk_284F16920;
  v2 = (a1 + 400);
  a1[400] = &unk_284F16AF0;
  sub_23C4DE94C((a1 + 396));
  sub_23C4DA5B8(a1, &off_284F16B60);
  sub_23C4B130C(v2);
  return a1;
}

void sub_23C4DED2C(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = &unk_284F16BC8;
  v1[400] = &unk_284F16D98;
  sub_23C4DE94C((v1 + 396));
  sub_23C4DA5B8(v1, &off_284F16E08);
  sub_23C4B130C((v1 + 400));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C4DEDE0(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = &unk_284F16BC8;
  v1[400] = &unk_284F16D98;
  sub_23C4DE94C((v1 + 396));
  sub_23C4DA5B8(v1, &off_284F16E08);

  return sub_23C4B130C((v1 + 400));
}

uint64_t sub_23C4DEE88(void *a1)
{
  sub_23C503E5C(a1, a1 + 396);

  return sub_23C4DB060(a1);
}

void sub_23C4DEEC4(uint64_t *a1)
{
  *a1 = &unk_284F16BC8;
  v2 = (a1 + 400);
  a1[400] = &unk_284F16D98;
  sub_23C4DE94C((a1 + 396));
  sub_23C4DA5B8(a1, &off_284F16E08);
  sub_23C4B130C(v2);

  JUMPOUT(0x23EED50C0);
}

uint64_t *sub_23C4DEF64(uint64_t *a1)
{
  *a1 = &unk_284F16BC8;
  v2 = (a1 + 400);
  a1[400] = &unk_284F16D98;
  sub_23C4DE94C((a1 + 396));
  sub_23C4DA5B8(a1, &off_284F16E08);
  sub_23C4B130C(v2);
  return a1;
}

uint64_t sub_23C4DEFE4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_23C52DD68(a1, a2 + 1, a3, "air.kernel", &unk_27E1F70C0, 0);
  v8 = 0;
  v9 = *a2;
  *v7 = *a2;
  *(a1 + *(v9 - 24)) = a2[5];
  do
  {
    *(a1 + v8 + 2432) = 4;
    *(a1 + v8 + 2440) = 0uLL;
    v8 += 24;
  }

  while (v8 != 288);
  *(a1 + 2720) = a4;
  *(a1 + 2728) = (*(a4 + 12) & 1) == 0;
  *(a1 + 2736) = 4;
  *(a1 + 2744) = 0u;
  sub_23C52FD10(a1, (*(a4 + 12) >> 1) & 1, (*(a4 + 12) >> 2) & 1);
  *(a1 + 14) = (*(a4 + 12) & 0x20) != 0;
  *(a1 + 2272) = *a4;
  v10 = *(a1 + *(*a1 - 24) + 320);
  *v21 = "air.kernel";
  v22 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v10, v21);
  if (NamedMetadata && (Operand = llvm::NamedMDNode::getOperand(NamedMetadata), v13 = *(Operand + 8), v13 >= 4))
  {
    v14 = Operand;
    v15 = 3;
    while (1)
    {
      v16 = *(v14 - 8 * v13 + 8 * v15);
      v17 = *v16;
      if (v17 <= 0x22 && ((0x7FFFFFFF0uLL >> v17) & 1) != 0)
      {
        v21[0] = 0;
        if (*(v16 + 2))
        {
          break;
        }
      }

LABEL_12:
      if (++v15 >= v13)
      {
        goto LABEL_13;
      }
    }

    while (1)
    {
      v20 = 0;
      if (sub_23C506AF0("air.max_work_group_size", v16, v21, &v20))
      {
        break;
      }

      if (++v21[0] >= *(v16 + 2))
      {
        v13 = *(v14 + 8);
        goto LABEL_12;
      }
    }

    v18 = v20;
  }

  else
  {
LABEL_13:
    v18 = 0;
  }

  *(a1 + 2732) = v18;
  *(a1 + 15) = (*(a4 + 12) & 0x10) != 0;
  return a1;
}

double sub_23C4DF230(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23C4DEFE4(a1, a2 + 1, a3, a4);
  v6 = 0;
  v7 = *a2;
  *v5 = *a2;
  *(v5 + *(v7 - 24)) = a2[7];
  *(v5 + 2760) = 4;
  *(v5 + 2768) = 0u;
  *(v5 + 2784) = v5 + 2800;
  *(v5 + 2792) = 0x200000000;
  do
  {
    v8 = v5 + v6;
    *(v8 + 2824) = 4;
    *(v8 + 2832) = 0uLL;
    v6 += 24;
  }

  while (v6 != 72);
  v9 = 0;
  *(v5 + 2904) = 0u;
  *(v5 + 2952) = 0u;
  *(v5 + 3000) = 0u;
  *(v5 + 2896) = 4;
  *(v5 + 2920) = 4;
  *(v5 + 2928) = 0u;
  *(v5 + 2944) = 4;
  *(v5 + 2968) = 4;
  *(v5 + 2976) = 0u;
  *(v5 + 2992) = 4;
  do
  {
    v10 = v5 + v9;
    *(v10 + 3016) = 4;
    *(v10 + 3024) = 0uLL;
    v9 += 24;
  }

  while (v9 != 72);
  *(v5 + 3088) = 4;
  result = 0.0;
  *(v5 + 3096) = 0u;
  *(v5 + 3112) = 4;
  *(v5 + 3120) = 0u;
  *(v5 + 3136) = 4;
  *(v5 + 3160) = 0;
  *(v5 + 3144) = 0u;
  return result;
}

uint64_t *sub_23C4DF3A0(llvm::StringMapImpl *a1, const void *a2, size_t a3)
{
  i = (*a1 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v7 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v7)
  {
    while (!v7 || v7 == -8)
    {
      v8 = i[1];
      ++i;
      v7 = v8;
    }

    return i;
  }

  v10 = MEMORY[0x23EED4160](a3 + 33, 8);
  v11 = v10;
  v12 = v10 + 32;
  if (a3)
  {
    memcpy((v10 + 32), a2, a3);
  }

  *(v12 + a3) = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *v11 = a3;
  *(v11 + 24) = 0;
  *i = v11;
  ++*(a1 + 3);
    ;
  }

  return i;
}

void sub_23C4DF4A4(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  sub_23C4DA5B8(v1, &off_284F170B0);
  sub_23C4B130C((v1 + 396));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C4DF514(void *a1)
{
  v1 = sub_23C4DA5B8((a1 + *(*a1 - 32)), &off_284F170B0) + 3168;

  return sub_23C4B130C(v1);
}

void sub_23C4DF56C(uint64_t *a1)
{
  v1 = sub_23C4DA5B8(a1, &off_284F170B0);
  sub_23C4B130C(v1 + 3168);

  JUMPOUT(0x23EED50C0);
}

uint64_t *sub_23C4DF5C4(uint64_t *a1)
{
  v2 = sub_23C4DA5B8(a1, &off_284F170B0);
  sub_23C4B130C(v2 + 3168);
  return a1;
}

void sub_23C4DF608(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  sub_23C4DA5B8(v1, &off_284F17358);
  sub_23C4B130C((v1 + 396));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C4DF678(void *a1)
{
  v1 = sub_23C4DA5B8((a1 + *(*a1 - 32)), &off_284F17358) + 3168;

  return sub_23C4B130C(v1);
}

void sub_23C4DF6D0(uint64_t *a1)
{
  v1 = sub_23C4DA5B8(a1, &off_284F17358);
  sub_23C4B130C(v1 + 3168);

  JUMPOUT(0x23EED50C0);
}

uint64_t *sub_23C4DF728(uint64_t *a1)
{
  v2 = sub_23C4DA5B8(a1, &off_284F17358);
  sub_23C4B130C(v2 + 3168);
  return a1;
}

uint64_t sub_23C4DF77C(_BYTE *a1)
{
  v489 = *MEMORY[0x277D85DE8];
  if (a1[29] != 1)
  {
    v22 = 0;
    goto LABEL_535;
  }

  v1 = a1;
  v449 = MGGetBoolAnswer() && (v2 = sub_23C4A2690("AGC_DEBUG_LLVM_IR")) != 0 && *v2 != 48 && atoi(v2) != 0;
  v3 = *&v1[*(*v1 - 24) + 320];
  *&__str = "air.shaderSource";
  LOWORD(v481) = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v3, &__str);
  if (NamedMetadata)
  {
    v5 = NamedMetadata;
    Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
    String = llvm::MDString::getString(*(Operand - 8 * *(Operand + 8)));
    v8 = *(*v1 - 24);
    if (String)
    {
      v9 = String;
      v10 = &v1[v8];
      v11 = (*(*&v1[v8] + 24))(&v1[v8]);
      if (sub_23C4B00BC(v11))
      {
        v12 = (*(*v10 + 24))(v10);
        snprintf(&__str, 0x80uLL, "%s shader %u (shader source)", v12, v10[174]);
        v13 = (*(*v10 + 24))(v10);
        v14 = strcmp(v13, "compute");
        if (v14 && (v14 = strcmp(v13, "compute-program"), v14))
        {
          v21 = "Graphics";
        }

        else
        {
          v21 = "Compute";
        }

        sub_23C4AA240(v14, "------ Start %s %s -------\n", v15, v16, v17, v18, v19, v20, v21);
        sub_23C4AA240(v23, "%s\n", v24, v25, v26, v27, v28, v29, v9);
        sub_23C4AA240(v30, "------ End %s %s -------\n", v31, v32, v33, v34, v35, v36, v21);
      }
    }

    llvm::NamedMDNode::eraseFromParent(v5);
  }

  sub_23C4B20A8(&v1[*(*v1 - 24)], "generic");
  v37 = (*(*&v1[*(*v1 - 24)] + 24))(&v1[*(*v1 - 24)]);
  v439 = *&v1[*(*v1 - 24) + 696];
  sub_23C4AA240(v37, "------ Compilation flags for %s shader %u ------", v38, v39, v40, v41, v42, v43, v37);
  sub_23C4AA240(v44, "Object fast-math flags: {nonan=%d, noinf=%d, nosignedzero=%d, allowrcp=%d, unsafealgebra=%d}", v45, v46, v47, v48, v49, v50, (*&v1[*(*v1 - 24) + 104] & 2) != 0);
  sub_23C4AA240(v51, "Target fast-math flags: {nonan=%d, noinf=%d, nosignedzero=%d, allowrcp=%d, unsafealgebra=%d}", v52, v53, v54, v55, v56, v57, (*(*&v1[*(*v1 - 24) + 344] + 104) & 2) != 0);
  v440 = v1[25];
  v445 = v1[28];
  sub_23C4AA240(v58, "Codegen fast-math options: { finite-math=%d, unsafe-fp-math=%d, less_pecise_fmad=%d}", v59, v60, v61, v62, v63, v64, v1[26]);
  v65 = (*(*&v1[*(*v1 - 24)] + 24))(&v1[*(*v1 - 24)]);
  v441 = *&v1[*(*v1 - 24) + 696];
  sub_23C4AA240(v65, "------ End compilation flags for %s shader %u ------", v66, v67, v68, v69, v70, v71, v65);
  v72 = (*(*&v1[*(*v1 - 24)] + 24))(&v1[*(*v1 - 24)]);
  v442 = *&v1[*(*v1 - 24) + 696];
  sub_23C4AA240(v72, "------ Start compilation key description for %s shader %u  ------", v73, v74, v75, v76, v77, v78, v72);
  v79 = (*(*&v1[*(*v1 - 24)] + 72))(&__str);
  if (SHIBYTE(v479) >= 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str;
  }

  sub_23C4AA240(v79, p_str, v80, v81, v82, v83, v84, v85, v438);
  if (SHIBYTE(v479) < 0)
  {
    operator delete(__str);
  }

  v87 = (*(*&v1[*(*v1 - 24)] + 24))(&v1[*(*v1 - 24)]);
  v443 = *&v1[*(*v1 - 24) + 696];
  sub_23C4AA240(v87, "------ End compilation key description for %s shader %u  ------", v88, v89, v90, v91, v92, v93, v87);
  v94 = *&v1[*(*v1 - 24) + 320];
  GlobalVariable = llvm::Module::getGlobalVariable();
  v103 = v449;
  if (GlobalVariable)
  {
    GlobalVariable = llvm::GlobalVariable::eraseFromParent(GlobalVariable);
  }

  v459 = v1;
  if (v1[37] == 1)
  {
    v104 = *&v1[*(*v1 - 24) + 320];
    v105 = *(v104 + 32);
    v450 = v104 + 24;
    if (v105 == v104 + 24)
    {
      LOBYTE(v106) = 0;
    }

    else
    {
      v106 = 0;
      do
      {
        v452 = v105;
        if (v105)
        {
          v107 = (v105 - 56);
        }

        else
        {
          v107 = 0;
        }

        GlobalVariable = llvm::GlobalValue::isDeclaration(v107);
        if ((GlobalVariable & 1) == 0)
        {
          v447 = v106;
          *&__str = &v479;
          *(&__str + 1) = 0x1000000000;
          v108 = *(v107 + 10);
          if (v108)
          {
            v109 = v108 - 24;
          }

          else
          {
            v109 = 0;
          }

          v110 = v109 + 40;
          v111 = *(v109 + 48);
          if (v111 == v109 + 40)
          {
            v103 = v449;
            v106 = v447;
          }

          else
          {
            do
            {
              if (v111)
              {
                v112 = v111 - 24;
              }

              else
              {
                v112 = 0;
              }

              if (v111 && *(v112 + 16) == 59)
              {
                GlobalVariable = sub_23C49B500(&__str, v111 - 24);
              }

              v111 = *(v111 + 8);
            }

            while (v111 != v110);
            if (DWORD2(__str))
            {
              v113 = *__str;
              v475 = v477;
              v477[0] = v113;
              v476 = 0x400000001;
              v473 = 0;
              v474[0] = 0;
              v472 = &v473;
              operator new();
            }

            v106 = v447;
            v103 = v449;
            if (__str != &v479)
            {
              free(__str);
            }
          }
        }

        v105 = *(v452 + 8);
      }

      while (v105 != v450);
    }

    sub_23C4AA240(GlobalVariable, "RemoveAndForwardAllocaStores: removed %u instructions", v97, v98, v99, v100, v101, v102, v106);
    if (!v103)
    {
      sub_23C4E31E8(v1, v114, v115, v116, v117, v118, v119, v120);
      (*(*v1 + 40))(v1);
      goto LABEL_55;
    }

    sub_23C4B20A8(&v1[*(*v1 - 24)], "after RemoveAndForwardAllocaStores");
  }

  sub_23C4E31E8(v1, v96, v97, v98, v99, v100, v101, v102);
  (*(*v1 + 40))(v1);
  if (v103)
  {
    sub_23C4B20A8(&v1[*(*v1 - 24)], "after simplifyGenericIR");
  }

LABEL_55:
  v121 = (*(*v1 + 48))(v1);
  v122 = v121;
  if (v103)
  {
    sub_23C4B20A8(&v1[*(*v1 - 24)], "after initCompile");
    if (!v122)
    {
LABEL_57:
      if (!v103)
      {
        goto LABEL_58;
      }

      goto LABEL_126;
    }
  }

  else if (!v121)
  {
    goto LABEL_57;
  }

  v122 = (*(*v1 + 104))(v1);
  if (!v103)
  {
LABEL_58:
    if (!v122)
    {
      goto LABEL_59;
    }

    goto LABEL_127;
  }

LABEL_126:
  sub_23C4B20A8(&v1[*(*v1 - 24)], "after setupShaderInputs");
  if (!v122)
  {
LABEL_59:
    if (!v103)
    {
      goto LABEL_60;
    }

    goto LABEL_128;
  }

LABEL_127:
  v122 = sub_23C4E3C14(v1);
  if (!v103)
  {
LABEL_60:
    if (!v122)
    {
      goto LABEL_61;
    }

    goto LABEL_129;
  }

LABEL_128:
  sub_23C4B20A8(&v1[*(*v1 - 24)], "after setupArgumentBuffers");
  if (!v122)
  {
LABEL_61:
    if (!v103)
    {
      goto LABEL_62;
    }

    goto LABEL_130;
  }

LABEL_129:
  v122 = (*(*v1 + 96))(v1);
  if (!v103)
  {
LABEL_62:
    if (!v122)
    {
      goto LABEL_63;
    }

    goto LABEL_131;
  }

LABEL_130:
  sub_23C4B20A8(&v1[*(*v1 - 24)], "after setupShaderWrapper");
  if (!v122)
  {
LABEL_63:
    if (!v103)
    {
      goto LABEL_64;
    }

    goto LABEL_132;
  }

LABEL_131:
  v122 = (*(*v1 + 112))(v1);
  if (!v103)
  {
LABEL_64:
    if (!v122)
    {
      goto LABEL_65;
    }

    goto LABEL_133;
  }

LABEL_132:
  sub_23C4B20A8(&v1[*(*v1 - 24)], "after setupShaderOutputs");
  if (!v122)
  {
LABEL_65:
    if (!v103)
    {
      goto LABEL_66;
    }

    goto LABEL_138;
  }

LABEL_133:
  v156 = *(*(v1 + 19) + 72);
  v157 = *(*(v1 + 19) + 80);
  if (v156 != v157)
  {
    do
    {
      v158 = *v156;
      llvm::MergeBlockIntoPredecessor();
      v156 = v158;
    }

    while (v158 != v157);
  }

  llvm::legacy::PassManager::run(*(*&v1[*(*v1 - 24) + 400] + 328), *&v1[*(*v1 - 24) + 320]);
  llvm::NamedMDNode::eraseFromParent(*(v1 + 6));
  if ((*(*&v1[*(*v1 - 24)] + 48))(&v1[*(*v1 - 24)]))
  {
    v159 = *(v1 + 19);
    llvm::Function::getSubprogram(*(v1 + 20));
    llvm::Function::setSubprogram();
  }

  llvm::Function::eraseFromParent(*(v1 + 20));
  *(v1 + 20) = 0;
  *(v1 + 6) = 0;
  *(v1 + 7) = 0;
  v103 = v449;
  if (!v449)
  {
LABEL_66:
    if (!v122)
    {
      goto LABEL_67;
    }

    goto LABEL_139;
  }

LABEL_138:
  sub_23C4B20A8(&v1[*(*v1 - 24)], "after cleanupShaderIR");
  if (!v122)
  {
LABEL_67:
    if (!v103)
    {
      goto LABEL_68;
    }

    goto LABEL_140;
  }

LABEL_139:
  v122 = (*(*v1 + 120))(v1);
  if (!v103)
  {
LABEL_68:
    if (!v122)
    {
      goto LABEL_69;
    }

    goto LABEL_141;
  }

LABEL_140:
  sub_23C4B20A8(&v1[*(*v1 - 24)], "after setupImageBlocks");
  if (!v122)
  {
LABEL_69:
    if (!v103)
    {
      goto LABEL_70;
    }

    goto LABEL_142;
  }

LABEL_141:
  (*(*v1 + 128))(v1);
  if (!v103)
  {
LABEL_70:
    if (!v122)
    {
      goto LABEL_71;
    }

    goto LABEL_143;
  }

LABEL_142:
  sub_23C4B20A8(&v1[*(*v1 - 24)], "After setupIndirectSamplers");
  if (!v122)
  {
LABEL_71:
    if (!v103)
    {
      goto LABEL_72;
    }

LABEL_144:
    sub_23C4B20A8(&v1[*(*v1 - 24)], "After allocateTexturesAndSamplers");
    if (v122)
    {
      goto LABEL_73;
    }

LABEL_145:
    v160 = 0;
    goto LABEL_434;
  }

LABEL_143:
  v122 = sub_23C4E63A0(v1);
  if (v103)
  {
    goto LABEL_144;
  }

LABEL_72:
  if (!v122)
  {
    goto LABEL_145;
  }

LABEL_73:
  sub_23C4B8970();
  sub_23C4E8E90();
  sub_23C4E8F14();
  sub_23C4E8F98();
  sub_23C4E901C();
  v475 = v477;
  v476 = 0x800000000;
  sub_23C4E90A0(v1, &v475);
  v472 = v474;
  v473 = 0x800000000;
  v469 = v471;
  v470 = 0x800000000;
  if (!v476)
  {
    goto LABEL_158;
  }

  v123 = v475;
  v465 = (v475 + 8 * v476);
  do
  {
    v124 = *v123;
    v486.__r_.__value_.__r.__words[0] = 0;
    sub_23C4E9178(v124, &v486);
    v125 = *(v1 + 102);
    v126 = *(v1 + 103);
    if (v125 >= v126)
    {
      v129 = *(v1 + 101);
      v130 = v125 - v129;
      v131 = (v125 - v129) >> 3;
      v132 = v131 + 1;
      if ((v131 + 1) >> 61)
      {
        sub_23C496CE8();
      }

      v133 = v126 - v129;
      if (v133 >> 2 > v132)
      {
        v132 = v133 >> 2;
      }

      if (v133 >= 0x7FFFFFFFFFFFFFF8)
      {
        v134 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v134 = v132;
      }

      if (v134)
      {
        if (!(v134 >> 61))
        {
          operator new();
        }

        sub_23C496CE8();
      }

      v135 = (v125 - v129) >> 3;
      v136 = (8 * v131);
      v127 = v486.__r_.__value_.__r.__words[0];
      v137 = (8 * v131 - 8 * v135);
      *v136 = v486.__r_.__value_.__r.__words[0];
      v128 = v136 + 1;
      memcpy(v137, v129, v130);
      *(v1 + 101) = v137;
      *(v1 + 102) = v128;
      *(v1 + 103) = 0;
      if (v129)
      {
        operator delete(v129);
      }
    }

    else
    {
      v127 = v486.__r_.__value_.__r.__words[0];
      *v125 = v486.__r_.__value_.__r.__words[0];
      v128 = v125 + 8;
    }

    *(v1 + 102) = v128;
    sub_23C4B8970();
    sub_23C4E901C();
    *&__str = &v479;
    *(&__str + 1) = 0x2000000000;
    sub_23C49B500(&__str, v124);
    v138 = DWORD2(__str);
    if (!DWORD2(__str))
    {
LABEL_111:
      v147 = 0;
      goto LABEL_113;
    }

    while (1)
    {
      v139 = *(__str + 8 * v138-- - 8);
      DWORD2(__str) = v138;
      v140 = *(v139 + 8);
      if (v140)
      {
        break;
      }

LABEL_110:
      if (!v138)
      {
        goto LABEL_111;
      }
    }

    while (1)
    {
      v141 = *(v140 + 24);
      v142 = *(v141 + 16);
      if (v142 <= 0x1B)
      {
        if (v142 != 5 || *(v141 + 18) != 49)
        {
          goto LABEL_112;
        }

        goto LABEL_96;
      }

      if (v142 == 84)
      {
        break;
      }

      if (v142 != 77)
      {
        goto LABEL_112;
      }

LABEL_96:
      sub_23C49B500(&__str, v141);
LABEL_97:
      v140 = *(v140 + 8);
      if (!v140)
      {
        v138 = DWORD2(__str);
        goto LABEL_110;
      }
    }

    v143 = *(v141 - 32);
    if (v143 && !*(v143 + 16) && *(v143 + 24) == *(v141 + 72))
    {
      llvm::Value::getName(v143);
      Key = llvm::StringMapImpl::FindKey();
      if (Key != -1 && Key != dword_27E1F7458)
      {
        goto LABEL_97;
      }

      v145 = llvm::StringMapImpl::FindKey();
      v146 = v145 == -1 || v145 == dword_27E1F7400;
      if (!v146)
      {
        goto LABEL_97;
      }
    }

LABEL_112:
    v147 = 1;
LABEL_113:
    if (__str != &v479)
    {
      free(__str);
    }

    if (v147)
    {
      if ((*(*v1 + 288))(v1))
      {
        v468.__r_.__value_.__r.__words[0] = v127;
        v148 = *(v1 + 99);
        v149 = *(v1 + 98);
        sub_23C4E9244((v1 + 784), &v468);
        if (v473 >= HIDWORD(v473))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v472 + v473) = ((v148 - v149) >> 3) | 0x100000000;
        LODWORD(v473) = v473 + 1;
        v150 = *&v1[*(*v1 - 24) + 200];
        v151 = llvm::ConstantInt::get();
        if (v470 >= HIDWORD(v470))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v469 + v470) = v151;
        LODWORD(v470) = v470 + 1;
        v152 = &v1[*(*v1 - 24)];
        v153 = *(v152 + 25);
        v154 = llvm::ConstantInt::get();
        v155 = *v124;
        LOWORD(v481) = 257;
        sub_23C49ACF8((v152 + 8), 48, v154, v155, &__str);
        llvm::Value::replaceAllUsesWith();
        goto LABEL_120;
      }

      v167 = &v1[*(*v1 - 24)];
      v168 = "Indirect samplers are not supported";
LABEL_287:
      std::string::append(v167 + 17, v168);
LABEL_288:
      v160 = 0;
      goto LABEL_428;
    }

LABEL_120:
    ++v123;
  }

  while (v123 != v465);
  if (v473)
  {
    v161 = 1;
    v162 = llvm::User::operator new(0x58);
    v163 = *&v1[*(*v1 - 24) + 320];
    llvm::ArrayType::get(*(v1 + 218), v473);
    v164 = *(v1 + 217);
    v165 = "_indirect";
    if (*v164)
    {
      v479 = "_indirect";
      v161 = 3;
      v165 = v164;
    }

    *&__str = v165;
    LOBYTE(v481) = 3;
    BYTE1(v481) = v161;
    v444 = *(v1 + 440) | 0x100000000;
    llvm::GlobalVariable::GlobalVariable();
    if (*(v1 + 219))
    {
      v166 = strlen(*(v1 + 219));
    }

    llvm::GlobalObject::setSection();
    *&__str = &v479;
    *(&__str + 1) = 0x2000000000;
    v169 = llvm::ValueAsMetadata::get();
    sub_23C49B500(&__str, v169);
    v170 = *(v1 + 441);
    v171 = *&v1[*(*v1 - 24) + 192];
    llvm::ConstantInt::get();
    v172 = llvm::ValueAsMetadata::get();
    if (v473)
    {
      v173 = v172;
      v174 = v472;
      v175 = 8 * v473;
      do
      {
        *&v486.__r_.__value_.__l.__data_ = v173;
        v176 = *v174;
        v174 += 2;
        v177 = *&v1[*(*v1 - 24) + 192];
        llvm::ConstantInt::get();
        v486.__r_.__value_.__l.__size_ = llvm::ValueAsMetadata::get();
        v178 = *&v1[*(*v1 - 24) + 336];
        Impl = llvm::MDTuple::getImpl();
        sub_23C49B500(&__str, Impl);
        v175 -= 8;
      }

      while (v175);
    }

    v180 = &v1[*(*v1 - 24)];
    v182 = *(v180 + 41);
    v181 = *(v180 + 42);
    v183 = llvm::MDTuple::getImpl();
    sub_23C49B500(v182, v183);
    sub_23C4D56F8((v1 + 1712), v162);
    if (__str != &v479)
    {
      free(__str);
    }

    llvm::ArrayType::get(*&v1[*(*v1 - 24) + 200], v473);
    v184 = llvm::User::operator new(0x58);
    v185 = &v1[*(*v1 - 24)];
    v186 = *(v185 + 40);
    llvm::ArrayType::get(*(v185 + 25), v473);
    *&__str = "agc.constant_sampler_unique_id";
    LOWORD(v481) = 259;
    llvm::GlobalVariable::GlobalVariable();
    *(v184 + 80) |= 1u;
    llvm::ConstantArray::get();
    llvm::GlobalVariable::setInitializer();
    sub_23C4D56F8((v1 + 1824), v184);
  }

LABEL_158:
  sub_23C4F0968();
  v187 = *v1;
  v188 = *&v1[*(*v1 - 24) + 320];
  v189 = *(v188 + 32);
  v190 = v188 + 24;
  if (v189 == v188 + 24)
  {
    goto LABEL_204;
  }

  v460 = v188 + 24;
  v463 = (v1 + 168);
  v191 = &byte_27E1F6A20[1504];
  while (2)
  {
    v192 = *(v189 + 8);
    if (v189)
    {
      v193 = (v189 - 56);
    }

    else
    {
      v193 = 0;
    }

    llvm::Value::getName(v193);
    v194 = llvm::StringMapImpl::FindKey();
    if (v194 != -1 && v194 != *(v191 + 246))
    {
      sub_23C4B8970();
      sub_23C4E8E90();
      sub_23C4E8F98();
      sub_23C4E901C();
      v196 = &v1[*(*v1 - 24)];
      v466 = (v189 - 56);
      if (*(*(v196 + 43) + 1678) == 1)
      {
        v197 = *(v1 + 470);
        v198 = *(v196 + 24);
        llvm::ConstantInt::get();
        llvm::ConstantExpr::getIntToPtr();
      }

      else
      {
        llvm::Constant::getNullValue(**(*(v189 - 32) + 16), v195);
      }

      v199 = *(v189 - 48);
      if (!v199)
      {
        goto LABEL_201;
      }

      while (1)
      {
        v200 = *(v199 + 24);
        v199 = *(v199 + 8);
        v201 = *(v200 + 1);
        if (!v201)
        {
          goto LABEL_200;
        }

        do
        {
          v202 = *(v201 + 24);
          v201 = *(v201 + 8);
          if (v202)
          {
            if (*(v202 + 16) == 84)
            {
              v203 = *(v202 - 32);
              if (v203)
              {
                if (!*(v203 + 16) && *(v203 + 24) == *(v202 + 72))
                {
                  llvm::Value::getName(*(v202 - 32));
                  v204 = llvm::StringMapImpl::FindKey();
                  v205 = v204;
                  if (v204 == -1)
                  {
                    v205 = dword_27E1F7458;
                  }

                  v206 = qword_27E1F7450 + 8 * v205;
                  llvm::Value::getName(v203);
                  v207 = llvm::StringMapImpl::FindKey();
                  v209 = v207 != -1 && v207 != dword_27E1F7360;
                  if (v206 != qword_27E1F7450 + 8 * dword_27E1F7458 || v209)
                  {
                    v211 = *v202;
                    llvm::UndefValue::get();
                    goto LABEL_191;
                  }

                  llvm::Value::getName(v203);
                  v212 = llvm::StringMapImpl::FindKey();
                  if (v212 != -1 && v212 != dword_27E1F7400)
                  {
                    llvm::Constant::getNullValue(*v202, v213);
LABEL_191:
                    v1 = v459;
LABEL_192:
                    llvm::Value::replaceAllUsesWith();
                    llvm::Instruction::eraseFromParent(v202);
                    continue;
                  }

                  llvm::Value::getName(v203);
                  v214 = llvm::StringMapImpl::FindKey();
                  v1 = v459;
                  if (v214 != -1 && v214 != dword_27E1F73B0)
                  {
                    v215 = *(v463 + *(*v459 - 24));
                    llvm::ConstantInt::get();
                    goto LABEL_192;
                  }
                }
              }
            }
          }
        }

        while (v201);
        if (*(v200 + 1))
        {
          llvm::Value::replaceAllUsesWith();
        }

LABEL_200:
        llvm::Instruction::eraseFromParent(v200);
        if (!v199)
        {
LABEL_201:
          llvm::Function::eraseFromParent(v466);
          v190 = v460;
          v191 = byte_27E1F6A20 + 1504;
          break;
        }
      }
    }

    v189 = v192;
    if (v192 != v190)
    {
      continue;
    }

    break;
  }

  v187 = *v1;
LABEL_204:
  v216 = *&v1[*(*&v187 - 24) + 320];
  v217 = *(v216 + 32);
  v218 = v216 + 24;
  if (v217 != v216 + 24)
  {
    v458 = 0;
    v219 = (v1 + 8);
    v456 = v1 + 200;
    v457 = v1 + 192;
    v467 = (v1 + 8);
    v455 = v216 + 24;
    while (1)
    {
      v220 = *(v217 + 8);
      if (v217)
      {
        v221 = (v217 - 56);
      }

      else
      {
        v221 = 0;
      }

      llvm::Value::getName(v221);
      v222 = llvm::StringMapImpl::FindKey();
      if (v222 != -1 && v222 != dword_27E1F7458)
      {
        if (!sub_23C4E9344(v1, v217 - 56, (*(qword_27E1F7450 + 8 * v222) + 8)))
        {
          goto LABEL_288;
        }

LABEL_242:
        if (!*(v217 - 48))
        {
          goto LABEL_280;
        }

        goto LABEL_258;
      }

      llvm::Value::getName((v217 - 56));
      v224 = llvm::StringMapImpl::FindKey();
      if (v224 != -1 && v224 != dword_27E1F7360)
      {
        break;
      }

      llvm::Value::getName((v217 - 56));
      v263 = llvm::StringMapImpl::FindKey();
      if (v263 == -1 || v263 == dword_27E1F7400)
      {
        llvm::Value::getName((v217 - 56));
        v276 = llvm::StringMapImpl::FindKey();
        if (v276 == -1 || v276 == dword_27E1F7388)
        {
          llvm::Value::getName((v217 - 56));
          v287 = llvm::StringMapImpl::FindKey();
          if (v287 == -1 || v287 == dword_27E1F73B0)
          {
            goto LABEL_281;
          }

          v288 = *(v217 - 48);
          if (!v288)
          {
            goto LABEL_280;
          }

          do
          {
            v289 = *(v288 + 24);
            v288 = *(v288 + 8);
            v290 = *(v289 - 4 * (*(v289 + 5) & 0x7FFFFFF));
            if (v290[16] - 11 > 1)
            {
              sub_23C4C30FC(v219 + *(*v1 - 24), v289);
              v292 = sub_23C4ED304(v1, v290);
              v293 = *(*v1 - 24);
              LOWORD(v481) = 257;
              NullValue = llvm::Constant::getNullValue(*v292, v294);
              v296 = (v219 + v293);
              v1 = v459;
              sub_23C497D84(v296, 32, v292, NullValue, &__str);
            }

            else
            {
              v291 = *v289;
              llvm::UndefValue::get();
            }

            llvm::Value::replaceAllUsesWith();
            llvm::Instruction::eraseFromParent(v289);
          }

          while (v288);
          goto LABEL_242;
        }

        v277 = *(v217 - 48);
        if (v277)
        {
          while (2)
          {
            v278 = *(v277 + 24);
            v277 = *(v277 + 8);
            v279 = *(v278 - 4 * (*(v278 + 5) & 0x7FFFFFF));
            if (v279[16] - 11 <= 1)
            {
              v280 = *v278;
              llvm::UndefValue::get();
              goto LABEL_269;
            }

            if (((*(*v1 + 272))(v1) & 1) != 0 || *(llvm::Value::stripPointerCasts(v279) + 16) <= 0x14u)
            {
              sub_23C4C30FC(v219 + *(*v1 - 24), v278);
              v281 = &v1[*(*v1 - 24)];
              v282 = *(v281 + 344);
              if (*(v282 + 904))
              {
                v283 = strlen(*(v282 + 904));
              }

              v284 = *(v281 + 144);
              v285 = sub_23C4A0414(v281);
              v286 = *(*v1 - 24);
              LOWORD(v481) = 257;
              sub_23C497A7C(v219 + v286, **(*v285 + 16), v285, 0, 0, &__str);
LABEL_269:
              llvm::Value::replaceAllUsesWith();
              llvm::Instruction::eraseFromParent(v278);
            }

            if (!v277)
            {
              goto LABEL_242;
            }

            continue;
          }
        }

LABEL_280:
        llvm::Function::eraseFromParent((v217 - 56));
        goto LABEL_281;
      }

      *&__str = llvm::Value::getName((v217 - 56));
      *(&__str + 1) = v264;
      v265 = llvm::StringRef::find();
      v266 = *(v217 - 48);
      if (!v266)
      {
        goto LABEL_280;
      }

      v267 = v265;
      do
      {
        v268 = *(v266 + 24);
        v266 = *(v266 + 8);
        v269 = *(v268 - 4 * (*(v268 + 5) & 0x7FFFFFF));
        if (v269[16] - 11 > 1)
        {
          sub_23C4C30FC(v219 + *(*v1 - 24), v268);
          if (v267 == -1)
          {
            v272 = *(*v1 - 24);
            v273 = sub_23C4EC4B4(v459, v269, 9u);
            LOWORD(v481) = 257;
            v274 = (v219 + v272);
            v1 = v459;
            sub_23C497C88(v274, **(*v273 + 16), v273, 0, &__str);
          }

          else
          {
            *&__str = 0;
            if (sub_23C4E9178(v269, &__str))
            {
              v271 = *&v456[*(*v1 - 24)];
              llvm::ConstantInt::get();
            }

            else
            {
              sub_23C4EE264(v1, v269, 2u);
            }
          }
        }

        else
        {
          v270 = *v268;
          llvm::UndefValue::get();
        }

        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v268);
      }

      while (v266);
      v275 = *(v217 - 48);
LABEL_257:
      if (!v275)
      {
        goto LABEL_280;
      }

LABEL_258:
      v458 = 1;
LABEL_281:
      v217 = v220;
      if (v220 == v218)
      {
        v187 = *v1;
        if (v458)
        {
          if ((*(*&v187 + 272))(v1))
          {
            v168 = "Could not statically determine the target of a texture write";
          }

          else
          {
            v168 = "Could not resolve texture/sampler references";
          }

          v167 = &v1[*(*v1 - 24)];
          goto LABEL_287;
        }

        goto LABEL_289;
      }
    }

    v225 = *(v217 - 48);
    if (!v225)
    {
      goto LABEL_280;
    }

    v226 = *(qword_27E1F7358 + 8 * v224);
    v461 = v220;
    while (1)
    {
      v227 = *(v225 + 24);
      v225 = *(v225 + 8);
      v228 = *(v227 - 4 * (*(v227 + 5) & 0x7FFFFFF));
      if (v228[16] - 11 > 1)
      {
        if (((*(*v1 + 272))(v1) & 1) == 0 && *(llvm::Value::stripPointerCasts(v228) + 16) > 0x14u)
        {
          goto LABEL_221;
        }

        sub_23C4C30FC(v219 + *(*v1 - 24), v227);
        v230 = *(v226 + 12);
        if (v230 <= 2)
        {
          if (v230 < 3)
          {
            if (v230 || (*(v226 + 16) & 1) == 0)
            {
              v236 = *(*v1 - 24);
              v237 = sub_23C4EC4B4(v1, v228, 2u);
              LOWORD(v481) = 257;
              v238 = sub_23C497C88((v219 + v236), **(*v237 + 16), v237, 0, &__str);
              v239 = &v1[*(*v1 - 24)];
              v240 = *(v226 + 12);
              LOWORD(v481) = 257;
              v241 = *(v239 + 24);
              v242 = llvm::ConstantInt::get();
              v231 = sub_23C5057E8((v239 + 8), v238, v242, &__str);
            }

            else
            {
              v231 = sub_23C4EEE44(v1, v228);
            }

            v243 = v231;
            v244 = sub_23C4B88A0(v227);
            v245 = (v227 - 32 * (*(v227 + 5) & 0x7FFFFFF));
            if (((v244 - v245) & 0x1FFFFFFFE0) == 0x40)
            {
              v246 = sub_23C506198(&v1[*(*v1 - 24)], v245[4], 0);
              v247 = *(*v1 - 24);
              LOWORD(v481) = 257;
              v248 = sub_23C49B560(v467 + v247, v243, v246, &__str);
              v249 = *&v457[*(*v1 - 24)];
              v250 = llvm::ConstantInt::get();
              v251 = *&v457[*(*v1 - 24)];
              llvm::ConstantInt::get();
              v252 = *(*v1 - 24);
              LOWORD(v481) = 257;
              sub_23C497D84((v467 + v252), 32, v248, v250, &__str);
              v253 = *(*v1 - 24);
              LOWORD(v481) = 257;
              v219 = v467;
              llvm::IRBuilderBase::CreateSelect();
            }

            v220 = v461;
          }

          goto LABEL_220;
        }

        switch(v230)
        {
          case 3:
            v254 = *(*v1 - 24);
            v255 = sub_23C4EC4B4(v1, v228, 2u);
            LOWORD(v481) = 257;
            v256 = sub_23C497C88((v467 + v254), **(*v255 + 16), v255, 0, &__str);
            v257 = &v1[*(*v1 - 24)];
            v258 = *(v226 + 12);
            LOWORD(v481) = 257;
            v219 = v467;
            v259 = *(v257 + 24);
            v260 = llvm::ConstantInt::get();
            sub_23C5057E8((v257 + 8), v256, v260, &__str);
            break;
          case 4:
            v232 = *(*v1 - 24);
            v233 = v1;
            v234 = v228;
            v235 = 5;
            goto LABEL_240;
          case 5:
            v232 = *(*v1 - 24);
            v233 = v1;
            v234 = v228;
            v235 = 6;
LABEL_240:
            v261 = sub_23C4EC4B4(v233, v234, v235);
            LOWORD(v481) = 257;
            sub_23C497C88((v219 + v232), **(*v261 + 16), v261, 0, &__str);
            break;
        }
      }

      else
      {
        v229 = *v227;
        llvm::UndefValue::get();
      }

LABEL_220:
      llvm::Value::replaceAllUsesWith();
      llvm::Instruction::eraseFromParent(v227);
LABEL_221:
      if (!v225)
      {
        v275 = *(v217 - 48);
        v218 = v455;
        goto LABEL_257;
      }
    }
  }

LABEL_289:
  v297 = &v1[*(*&v187 - 24)];
  v298 = *(v297 + 50);
  v299 = *(v297 + 40);
  sub_23C4AEAD4(v298);
  llvm::legacy::PassManager::run(*(v298 + 344), v299);
  v300 = *(v1 + 95);
  v301 = v1 + 768;
  if (v300 != (v1 + 768))
  {
    do
    {
      v302 = v300[6];
      if (v302)
      {
        if (*(v302 + 8))
        {
          v486.__r_.__value_.__r.__words[0] = llvm::Value::getName(v300[6]);
          v486.__r_.__value_.__l.__size_ = v303;
          v304 = sub_23C4AE5DC(&__str, &v486);
          sub_23C4AA240(v304, "%s: image or sample GV %s still has references: \n", v305, v306, v307, v308, v309, v310, "void AGCLLVMUserObject::cleanupSamplerGlobalVariables()");
          if (SHIBYTE(v479) < 0)
          {
            operator delete(__str);
          }

          v311 = *(v302 + 8);
          if (v311)
          {
            v312 = MEMORY[0x277D821F8] + 16;
            do
            {
              memset(&v486, 0, sizeof(v486));
              DWORD2(__str) = 0;
              v482 = 0;
              v483 = 0;
              v484 = 1;
              v480 = 0;
              v481 = 0;
              v479 = 0;
              *&__str = v312;
              v485 = &v486;
              sub_23C4AE584(&__str);
              v313 = llvm::Value::print(*(v311 + 24), &__str);
              LOBYTE(v320) = v485;
              if (SHIBYTE(v485->__r_.__value_.__r.__words[2]) < 0)
              {
                v320 = v485->__r_.__value_.__r.__words[0];
              }

              sub_23C4AA240(v313, "\t%s\n", v314, v315, v316, v317, v318, v319, v320);
              llvm::raw_ostream::~raw_ostream(&__str);
              if (SHIBYTE(v486.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v486.__r_.__value_.__l.__data_);
              }

              v311 = *(v311 + 8);
            }

            while (v311);
          }
        }

        else
        {
          llvm::GlobalVariable::eraseFromParent(v300[6]);
        }
      }

      v321 = v300[1];
      if (v321)
      {
        do
        {
          v322 = v321;
          v321 = *v321;
        }

        while (v321);
      }

      else
      {
        do
        {
          v322 = v300[2];
          v146 = *v322 == v300;
          v300 = v322;
        }

        while (!v146);
      }

      v300 = v322;
    }

    while (v322 != v301);
  }

  v1 = v459;
  sub_23C4ED864(*(v459 + 768));
  *(v459 + 760) = v301;
  *(v459 + 768) = 0u;
  v323 = *(v459 + 704);
  if (v323 || *(v459 + 708))
  {
    v324 = (v459 + 696);
    v325 = *(v459 + 712);
    if (v325 <= 4 * v323 || v325 < 0x41)
    {
      *(&__str + 1) = 2;
      v479 = 0;
      v480 = -4096;
      v481 = 0;
      *&__str = &unk_284F1B7D8;
      *&v486.__r_.__value_.__r.__words[1] = 2uLL;
      v487 = -8192;
      v488 = 0;
      v486.__r_.__value_.__r.__words[0] = &unk_284F1B7D8;
      if (v325)
      {
        v330 = *v324;
        v331 = 48 * v325;
        v332 = (v330 + 32);
        do
        {
          sub_23C4DDEAC((v332 - 3), &__str + 1);
          *v332 = v481;
          v332 += 6;
          v331 -= 48;
        }

        while (v331);
        v333 = v487;
        *(v459 + 704) = 0;
        if (v333 != -8192 && v333 != -4096 && v333 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList(&v486.__r_.__value_.__r.__words[1]);
        }
      }

      else
      {
        *(v459 + 704) = 0;
      }

      if (v480 != -8192 && v480 != -4096 && v480)
      {
        llvm::ValueHandleBase::RemoveFromUseList((&__str + 8));
      }
    }

    else
    {
      sub_23C4EE154(v459 + 696);
      v326 = 1 << (33 - __clz(v323 - 1));
      if (v326 <= 64)
      {
        v326 = 64;
      }

      if (v323)
      {
        v327 = v326;
      }

      else
      {
        v327 = 0;
      }

      if (v327 != *(v459 + 712))
      {
        llvm::deallocate_buffer(*v324, (48 * v325));
        if (!v327)
        {
          *v324 = 0;
          *(v459 + 704) = 0;
          *(v459 + 712) = 0;
          goto LABEL_337;
        }

        v328 = (4 * v327 / 3u + 1) | ((4 * v327 / 3u + 1) >> 1);
        v329 = v328 | (v328 >> 2) | ((v328 | (v328 >> 2)) >> 4);
        LODWORD(v329) = (((v329 | (v329 >> 8)) >> 16) | v329 | (v329 >> 8)) + 1;
        *(v459 + 712) = v329;
        *(v459 + 696) = MEMORY[0x23EED4160](48 * v329, 8);
      }

      sub_23C4EDF58(v459 + 696);
    }
  }

LABEL_337:
  sub_23C4ED8D0(v459 + 720);
  if (*(v459 + 784) != *(v459 + 792))
  {
    v335 = *v459;
    v336 = *(v459 + *(*v459 - 24) + 320);
    v337 = v336 + 8;
    v338 = *(v336 + 16);
    if (v338 == v336 + 8)
    {
      v341 = 0;
      v340 = 0;
      v339 = 0;
      v1 = v459;
    }

    else
    {
      v339 = 0;
      v340 = 0;
      v341 = 0;
      do
      {
        if (v338)
        {
          v342 = v338 - 56;
        }

        else
        {
          v342 = 0;
        }

        if (*(v342 + 8))
        {
          if ((*(v342 + 34) & 0x40) != 0 && (v343 = llvm::GlobalObject::getSectionImpl(v342), v344 == 11) && (*v343 == 0x74735F6567616D69 ? (v345 = *(v343 + 3) == 0x65746174735F6567) : (v345 = 0), v345))
          {
            if (*(*v342 + 8) == 17)
            {
              v339 = (v339 + *(*v342 + 32));
            }

            else
            {
              v339 = (v339 + 1);
            }
          }

          else if ((*(v342 + 34) & 0x40) != 0 && (v346 = llvm::GlobalObject::getSectionImpl(v342), v347 == 13) && (*v346 == 0x5F72656C706D6173 ? (v348 = *(v346 + 5) == 0x65746174735F7265) : (v348 = 0), v348))
          {
            ++v340;
          }

          else if ((*(v342 + 34) & 0x40) != 0)
          {
            SectionImpl = llvm::GlobalObject::getSectionImpl(v342);
            if (v350 == 15)
            {
              v351 = bswap64(*SectionImpl);
              v352 = 0x636F6E7374616E74;
              if (v351 == 0x636F6E7374616E74 && (v351 = bswap64(*(SectionImpl + 7)), v352 = 0x745F647269766572, v351 == 0x745F647269766572))
              {
                v353 = 0;
              }

              else
              {
                v353 = v351 < v352 ? -1 : 1;
              }

              if (!v353)
              {
                ++v341;
              }
            }
          }
        }

        v338 = *(v338 + 8);
      }

      while (v338 != v337);
      v1 = v459;
      v335 = *v459;
    }

    v354 = *&v1[*(v335 - 24) + 344];
    if (((*(*v354 + 344))(v354, v339, (v340 + v341)) & 1) == 0)
    {
      std::to_string(&v468, v340 + v341 + v339);
      v432 = std::string::insert(&v468, 0, "Total number of textures and samplers (");
      v433 = v432->__r_.__value_.__r.__words[2];
      *&v486.__r_.__value_.__l.__data_ = *&v432->__r_.__value_.__l.__data_;
      v486.__r_.__value_.__r.__words[2] = v433;
      v432->__r_.__value_.__l.__size_ = 0;
      v432->__r_.__value_.__r.__words[2] = 0;
      v432->__r_.__value_.__r.__words[0] = 0;
      v434 = std::string::append(&v486, ") exceeds GPU allowance.");
      v435 = v434->__r_.__value_.__r.__words[2];
      __str = *&v434->__r_.__value_.__l.__data_;
      v479 = v435;
      v434->__r_.__value_.__l.__size_ = 0;
      v434->__r_.__value_.__r.__words[2] = 0;
      v434->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v479) >= 0)
      {
        v436 = &__str;
      }

      else
      {
        v436 = __str;
      }

      if (SHIBYTE(v479) >= 0)
      {
        v437 = HIBYTE(v479);
      }

      else
      {
        v437 = *(&__str + 1);
      }

      std::string::append(&v1[*(*v1 - 24) + 408], v436, v437);
      if (SHIBYTE(v479) < 0)
      {
        operator delete(__str);
      }

      if (SHIBYTE(v486.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v486.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v468.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v468.__r_.__value_.__l.__data_);
      }

      goto LABEL_288;
    }
  }

  if (((*(*v1 + 280))(v1) & 1) == 0)
  {
    v355 = *&v1[*(*v1 - 24) + 320];
    v356 = *(v355 + 32);
    v448 = v355 + 24;
    if (v356 != v355 + 24)
    {
      v446 = v1 + 344;
      v357 = v1 + 8;
      v454 = v1 + 336;
      do
      {
        v451 = *(v356 + 8);
        if (v356)
        {
          v358 = (v356 - 56);
        }

        else
        {
          v358 = 0;
        }

        v359 = *&v446[*(*v1 - 24)];
        Name = llvm::Value::getName(v358);
        if ((*(*v359 + 544))(v359, Name, v361))
        {
          v362 = *(v356 - 48);
          if (v362)
          {
            do
            {
              v363 = 0;
              v364 = *(v362 + 24);
              v365 = *(v362 + 8);
              *&__str = &v479;
              *(&__str + 1) = 0x1000000000;
              v453 = v365;
              while (1)
              {
                v366 = sub_23C4B88A0(v364);
                v367 = v364 - 32 * (*(v364 + 20) & 0x7FFFFFF);
                if (v363 >= ((v366 - v367) >> 5))
                {
                  v376 = 0;
                  LODWORD(v363) = 0;
                  goto LABEL_402;
                }

                v368 = *(v367 + 32 * v363);
                v369 = *v368;
                sub_23C49B500(&__str, v368);
                v370 = *(v368 + 16);
                do
                {
                  if (v370 != 77)
                  {
                    break;
                  }

                  v368 = *(v368 - 32);
                  v370 = *(v368 + 16);
                }

                while (v368);
                if (v370 == 84)
                {
                  v371 = *(v368 - 32);
                  if (v371)
                  {
                    if (!*(v371 + 16) && *(v371 + 24) == *(v368 + 72))
                    {
                      v372 = llvm::Value::getName(v371);
                      if (v373 == 21)
                      {
                        v374 = *v372 == 0x7867612E6D766C6CLL && v372[1] == 0x657275747865742ELL;
                        if (v374 && *(v372 + 13) == 0x6574617453657275)
                        {
                          break;
                        }
                      }
                    }
                  }
                }

                ++v363;
              }

              v376 = *(v368 - 32 * (*(v368 + 20) & 0x7FFFFFF) + 32);
LABEL_402:
              v377 = (v363 + 1);
              for (i = v364 + 32 * v377; ; i += 32)
              {
                v379 = sub_23C4B88A0(v364);
                v380 = *(v364 + 20) & 0x7FFFFFF;
                if (v377 >= ((v379 - (v364 + 32 * -v380)) >> 5))
                {
                  break;
                }

                sub_23C49B500(&__str, *(i - 32 * v380));
                LODWORD(v377) = v377 + 1;
              }

              if (v376 && *(v376 + 16) >= 0x15u)
              {
                v381 = *(v364 + 40);
                v486.__r_.__value_.__r.__words[0] = "indirect.switch.end";
                LOWORD(v488) = 259;
                v462 = llvm::BasicBlock::splitBasicBlock();
                v464 = v381;
                v382 = *(v381 + 5);
                if (v382 == (v381 + 40))
                {
                  v385 = 0;
                }

                else
                {
                  v383 = (v382 - 3);
                  if (v382)
                  {
                    v384 = v382 - 3;
                  }

                  else
                  {
                    v384 = 0;
                  }

                  if (*(v384 + 16) - 29 >= 0xB)
                  {
                    v385 = 0;
                  }

                  else
                  {
                    v385 = v383;
                  }
                }

                llvm::Instruction::eraseFromParent(v385);
                v386 = v459 + *(*v459 - 24);
                *(v386 + 56) = v381;
                *(v386 + 64) = v381 + 40;
                v387 = v459 + *(*v459 - 24);
                v388 = *(v387 + 184);
                LOWORD(v488) = 257;
                v389 = sub_23C49ACF8(v387 + 8, 38, v376, v388, &v486);
                v390 = *(v459 + 2284);
                v391 = &v357[*(*v459 - 24)];
                v392 = llvm::User::operator new(0x40);
                v393 = MEMORY[0x23EED3BF0](v392, v389, v462, v390, 0);
                LOWORD(v488) = 257;
                (*(*v391[10] + 16))(v391[10], v393, &v486, v391[6], v391[7]);
                v394 = *(v391 + 2);
                if (v394)
                {
                  v395 = *v391;
                  v396 = &v395[4 * v394];
                  do
                  {
                    v397 = *v395;
                    v398 = *(v395 + 1);
                    llvm::Instruction::setMetadata();
                    v395 += 4;
                  }

                  while (v395 != v396);
                }

                if (v390)
                {
                  v399 = *v389;
                  llvm::ConstantInt::get();
                  v400 = *&v454[*(*v459 - 24)];
                  v486.__r_.__value_.__r.__words[0] = "indirect.switch.case";
                  LOWORD(v488) = 259;
                  v401 = *(v464 + 7);
                  operator new();
                }

                llvm::Value::replaceAllUsesWith();
                llvm::Instruction::eraseFromParent(v364);
              }

              v362 = v453;
              if (__str != &v479)
              {
                free(__str);
              }
            }

            while (v453);
          }
        }

        v356 = v451;
        v1 = v459;
      }

      while (v451 != v448);
    }
  }

  v160 = 1;
LABEL_428:
  if (v469 != v471)
  {
    free(v469);
  }

  if (v472 != v474)
  {
    free(v472);
  }

  if (v475 != v477)
  {
    free(v475);
  }

LABEL_434:
  if (v449)
  {
    sub_23C4B20A8(&v1[*(*v1 - 24)], "after replaceTexturesAndSamplers");
    sub_23C4E8844(v1);
    sub_23C4B20A8(&v1[*(*v1 - 24)], "after simplifyTrigIdentities");
  }

  else
  {
    sub_23C4E8844(v1);
  }

  v402 = *(*(*&v1[*(*v1 - 24) + 344] + 784) + 43);
  if ((v160 & v402) == 1)
  {
    v403 = (*(*v1 + 184))(v1);
  }

  else
  {
    v403 = v160 & (v402 ^ 1);
  }

  v404 = v449;
  if ((v1[10] & 1) != 0 || !MGGetBoolAnswer())
  {
    goto LABEL_451;
  }

  v405 = sub_23C4A2690("AGC_ENABLE_F16_FASTMATH_BUILTINS");
  if (v405 && *v405 != 48)
  {
    if (atoi(v405))
    {
      if (v403)
      {
        v403 = (*(*v1 + 144))(v1);
      }

      if (v449)
      {
        sub_23C4B20A8(&v1[*(*v1 - 24)], "after replace f16 builtins");
        goto LABEL_449;
      }
    }

LABEL_451:
    if (!v403)
    {
      goto LABEL_453;
    }

LABEL_452:
    v403 = (*(*v1 + 176))(v1, 0);
    goto LABEL_453;
  }

LABEL_449:
  if (v403)
  {
    goto LABEL_452;
  }

  v403 = 0;
LABEL_453:
  if (MGGetBoolAnswer() && (v406 = sub_23C4A2690("AGC_ENABLE_PRECISE_MATH")) != 0 && *v406 != 48 && atoi(v406))
  {
    v407 = *(*(*&v1[*(*v1 - 24) + 344] + 784) + 32);
    v408 = (v407 == 0) & v403;
    if (v407 && ((v403 ^ 1) & 1) == 0)
    {
      v408 = (*(*v1 + 176))(v1, 1);
    }
  }

  else
  {
    v408 = v403;
  }

  if (v449)
  {
    sub_23C4B20A8(&v1[*(*v1 - 24)], "after linking runtime");
  }

  if (!v408)
  {
    v22 = 0;
    if (!v449)
    {
      goto LABEL_468;
    }

    goto LABEL_467;
  }

  v22 = (*(*v1 + 136))(v1);
  if (v449)
  {
LABEL_467:
    sub_23C4B20A8(&v1[*(*v1 - 24)], "after replaceBuiltins");
  }

LABEL_468:
  if (v22)
  {
    v22 = (*(*v1 + 192))(v1);
    if (!v449)
    {
LABEL_470:
      if (!v22)
      {
        goto LABEL_471;
      }

      goto LABEL_476;
    }
  }

  else if (!v449)
  {
    goto LABEL_470;
  }

  sub_23C4B20A8(&v1[*(*v1 - 24)], "after promoteGlobalConstants");
  if (!v22)
  {
LABEL_471:
    if (!v449)
    {
      goto LABEL_472;
    }

    goto LABEL_477;
  }

LABEL_476:
  v22 = (*(*v1 + 152))(v1);
  if (!v449)
  {
LABEL_472:
    if (!v22)
    {
      goto LABEL_496;
    }

    goto LABEL_478;
  }

LABEL_477:
  sub_23C4B20A8(&v1[*(*v1 - 24)], "after improveDMAPromotionOpportunity");
  if (!v22)
  {
    goto LABEL_496;
  }

LABEL_478:
  v409 = *(v1 + 19);
  *(v409 + 18) = *(v409 + 18) & 0xC00F | (16 * (*(*v1 + 88))(v1));
  v404 = v449;
  v410 = *&v1[*(*v1 - 24) + 320];
  inserted = llvm::Module::getOrInsertNamedMetadata();
  if (inserted)
  {
    v412 = inserted;
    NumOperands = llvm::NamedMDNode::getNumOperands(inserted);
    v414 = NumOperands;
    *&__str = &v479;
    *(&__str + 1) = 0x400000000;
    if (NumOperands)
    {
      v415 = (NumOperands - 1) + 1;
    }

    else
    {
      v415 = 0;
    }

    if (v415 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v416 = 0;
    if (NumOperands)
    {
      v417 = 0;
      v418 = __str;
      do
      {
        *(v418 + 8 * v417++) = llvm::NamedMDNode::getOperand(v412);
      }

      while (v414 != v417);
      v416 = DWORD2(__str);
      v404 = v449;
    }

    DWORD2(__str) = v416 + v415;
    v1 = v459;
    llvm::Module::eraseNamedMetadata(*(v459 + *(*v459 - 24) + 320), v412);
    v419 = *&v1[*(*v1 - 24) + 320];
    llvm::Module::getOrInsertNamedMetadata();
    v420 = __str;
    if (DWORD2(__str))
    {
      v421 = 8 * DWORD2(__str);
      do
      {
        if (*&(*v420)[-8 * *(*v420 + 2)])
        {
          llvm::NamedMDNode::addOperand();
        }

        ++v420;
        v421 -= 8;
      }

      while (v421);
      v420 = __str;
      v404 = v449;
    }

    if (v420 != &v479)
    {
      free(v420);
    }
  }

LABEL_496:
  if (v404)
  {
    sub_23C4B20A8(&v1[*(*v1 - 24)], "after prunePRIDsOfDeletedGlobals");
    if (!v22)
    {
LABEL_498:
      if (!v404)
      {
        goto LABEL_499;
      }

      goto LABEL_530;
    }
  }

  else if (!v22)
  {
    goto LABEL_498;
  }

  sub_23C4B22E0(&v1[*(*v1 - 24)], *(v1 + 19));
  if (!v404)
  {
LABEL_499:
    if (!v22)
    {
      goto LABEL_500;
    }

    goto LABEL_531;
  }

LABEL_530:
  sub_23C4B20A8(&v1[*(*v1 - 24)], "after finalizeDriverBindings");
  if (!v22)
  {
LABEL_500:
    if (!v404)
    {
      goto LABEL_502;
    }

    goto LABEL_501;
  }

LABEL_531:
  v22 = (*(*v1 + 160))(v1);
  if (v404)
  {
LABEL_501:
    sub_23C4B20A8(&v1[*(*v1 - 24)], "after markInvariantOutputs");
  }

LABEL_502:
  if (MGGetBoolAnswer())
  {
    v422 = sub_23C4A2690("AGX_FORCE_LATE_INLINING");
    if (v422)
    {
      if (*v422 != 48 && atoi(v422))
      {
        if (v22)
        {
          *(v1 + 8) = 0;
          v423 = *&v1[*(*v1 - 24) + 320];
          v424 = *(v423 + 32);
          v425 = v423 + 24;
          if (v424 != v423 + 24)
          {
            do
            {
              v426 = *(v424 + 8);
              if (v424)
              {
                v427 = (v424 - 56);
              }

              else
              {
                v427 = 0;
              }

              if ((llvm::GlobalValue::isDeclaration(v427) & 1) == 0)
              {
                ++*(v459 + 32);
                if (v424 - 56 != *(v459 + 152))
                {
                  llvm::Function::addFnAttr();
                  *(v424 - 24) = *(v424 - 24) & 0xFFFFBFC0 | 0x4007;
                }
              }

              v424 = v426;
            }

            while (v426 != v425);
            v1 = v459;
            if (*(v459 + 32) > 1u)
            {
              llvm::legacy::PassManager::run(*(*(v459 + *(*v459 - 24) + 400) + 304), *(v459 + *(*v459 - 24) + 320));
            }
          }
        }

        if (v449)
        {
          sub_23C4B20A8(&v1[*(*v1 - 24)], "after inlineFunctionsLate");
        }
      }
    }
  }

  if (v22)
  {
    if (!(*(*v1 + 168))(v1))
    {
      goto LABEL_533;
    }

    v428 = 1;
    if ((*(*&v1[*(*v1 - 24)] + 32))(&v1[*(*v1 - 24)]) != 2)
    {
      if ((*(*&v1[*(*v1 - 24)] + 32))(&v1[*(*v1 - 24)]) == 16)
      {
        v428 = 1;
      }

      else
      {
        v428 = 2;
      }
    }

    v429 = v1[36];
    if (sub_23C4AF8FC(*&v1[*(*v1 - 24) + 400], &v1[*(*v1 - 24)], *&v1[*(*v1 - 24) + 320], *(v1 + 25), v428) && (*(*&v1[*(*v1 - 24)] + 80))(&v1[*(*v1 - 24)]))
    {
      sub_23C4C420C(&v1[*(*v1 - 24)]);
      v22 = 1;
    }

    else
    {
LABEL_533:
      v22 = 0;
    }
  }

  *&v1[*(*v1 - 24) + 360] = mach_absolute_time() - *&v1[*(*v1 - 24) + 352];
LABEL_535:
  v430 = *MEMORY[0x277D85DE8];
  return v22;
}

void sub_23C4E31E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v121[8] = *MEMORY[0x277D85DE8];
  v9 = a1 + *(*a1 - 24);
  if (*(*(v9 + 344) + 1674) != 1 || (*(a1 + 37) & 1) != 0)
  {
    v10 = 0;
LABEL_4:
    v11 = 0;
    goto LABEL_5;
  }

  v27 = *(v9 + 320);
  v28 = (v27 + 168);
  v29 = *(v27 + 191);
  if (v29 < 0)
  {
    if (*(v27 + 176) != 20)
    {
      goto LABEL_82;
    }

    v28 = *v28;
  }

  else if (v29 != 20)
  {
    goto LABEL_82;
  }

  v43 = *v28;
  v44 = v28[1];
  v45 = *(v28 + 4);
  if (v43 == 0x535F786574726556 && v44 == 0x6F72505F65746174 && v45 == 1835102823)
  {
    v10 = 0;
    v94 = "Disabling non-inlined functions for ES1 vertex shader";
LABEL_198:
    sub_23C4AA240(a1, v94, a3, a4, a5, a6, a7, a8, v103);
    goto LABEL_4;
  }

LABEL_82:
  v48 = *(a1 + 160);
  if (*(v48 + 18))
  {
    llvm::Function::BuildLazyArguments(*(a1 + 160));
    v49 = *(v48 + 88);
    if (*(v48 + 18))
    {
      llvm::Function::BuildLazyArguments(v48);
      v50 = *(v48 + 88);
      goto LABEL_184;
    }
  }

  else
  {
    v49 = *(v48 + 88);
  }

  v50 = v49;
LABEL_184:
  v93 = v50 + 40 * *(v48 + 96);
  if (v49 == v93)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v94 = "Disabling non-inlined functions due to use of indirect argument buffer";
    do
    {
      if (*(v49 + 8))
      {
        v95 = *(v8[9] + 8 * *(v49 + 32));
        a1 = sub_23C4A57A0(*(v95 - 8 * *(v95 + 8) + 8), "air.indirect_buffer");
        if (a1)
        {
          goto LABEL_198;
        }

        if (sub_23C4A57A0(*(v95 - 8 * *(v95 + 8) + 8), "air.texture"))
        {
          LOBYTE(v119) = 0;
          LOBYTE(v116) = 0;
          v96 = sub_23C506E20(v95, &v109, &v104, &v119, &v116, v114, v114);
          if (v96 && v119 == 1 && v116 == 1)
          {
            sub_23C4AA240(v96, "Inlining all texture functions due to the use of a RW texture", v97, v98, v99, v100, v101, v102, v103);
            v10 = 1;
          }
        }
      }

      v49 += 40;
    }

    while (v49 != v93);
  }

  v11 = 1;
LABEL_5:
  *(v8 + 8) = 0;
  v12 = *(v8 + *(*v8 - 24) + 320);
  v13 = *(v12 + 32);
  v14 = v12 + 24;
  if (v13 != v12 + 24)
  {
    while (1)
    {
      v15 = *(v13 + 8);
      v16 = v13 ? (v13 - 56) : 0;
      llvm::Function::removeFnAttr();
      if (!llvm::GlobalValue::isDeclaration(v16))
      {
        break;
      }

      if (!*(v13 - 48))
      {
        goto LABEL_16;
      }

LABEL_23:
      v13 = v15;
      if (v15 == v14)
      {
        goto LABEL_24;
      }
    }

    v17 = v8[20];
    if ((v13 - 56) == v17)
    {
      v18 = *(v17 + 8);
      *(v17 + 8) = v18 & 0xFFFFFFF0;
      if ((v18 & 0x30) != 0 && (llvm::GlobalValue::hasExternalWeakLinkage(v17) & 1) == 0)
      {
        *(v17 + 8) |= 0x4000u;
      }

      if ((v11 & 1) == 0)
      {
        *(v8[20] + 112) = 0;
      }

      ++*(v8 + 8);
      goto LABEL_23;
    }

    if (*(v13 - 48))
    {
      ++*(v8 + 8);
      *(v13 - 24) = *(v13 - 24) & 0xFFFFBFC0 | 0x4007;
      if ((v11 & 1) == 0)
      {
        llvm::Function::addFnAttr();
      }

      goto LABEL_23;
    }

LABEL_16:
    llvm::Function::eraseFromParent((v13 - 56));
    goto LABEL_23;
  }

LABEL_24:
  if ((v11 & 1) == 0)
  {
    goto LABEL_182;
  }

  v19 = 0;
  v119 = v121;
  v120 = 0x800000000;
  v109 = v113;
  v110 = v113;
  v111 = 16;
  v112 = 0;
  v20 = v8 + 40;
  do
  {
    v21 = *(v20 + *(*v8 - 24));
    if (off_278BBFE50[v19])
    {
      v22 = strlen(off_278BBFE50[v19]);
    }

    Function = llvm::Module::getFunction();
    if (Function)
    {
      v24 = Function;
      if (*(Function + 8))
      {
        sub_23C49B500(&v119, Function);
        sub_23C4FB9F8(&v104, &v109, v24);
      }
    }

    ++v19;
  }

  while (v19 != 2);
  sub_23C4B8970();
  if (dword_27E1F7458)
  {
    for (i = qword_27E1F7450; ; ++i)
    {
      v26 = !*i || *i + 1 == 0;
      if (!v26)
      {
        break;
      }
    }
  }

  else
  {
    i = qword_27E1F7450;
  }

  v30 = qword_27E1F7450 + 8 * dword_27E1F7458;
  if (i != v30)
  {
    v31 = 0;
    v32 = 0;
    v33 = *i;
    do
    {
      v34 = *(v20 + *(*v8 - 24));
      v35 = *v33;
      v36 = llvm::Module::getFunction();
      if (v36)
      {
        v37 = v36;
        if (*(v36 + 8))
        {
          if (*(v33 + 31))
          {
            v32 = *(*(*(v36 + 24) + 16) + 8 * *(v33 + 31) + 8);
          }

          v38 = *(v33 + 2);
          if (v38 == 3 || v38 == 8 || (v10 & 1) != 0)
          {
            sub_23C49B500(&v119, v36);
            sub_23C4FB9F8(&v104, &v109, v37);
            v38 = *(v33 + 2);
          }

          if ((v38 | 4) == 5 && (*(*v8 + 248))(v8))
          {
            sub_23C49B500(&v119, v37);
            sub_23C4FB9F8(&v104, &v109, v37);
            v31 = 1;
          }
        }
      }

      do
      {
        v39 = i[1];
        ++i;
        v33 = v39;
        if (v39)
        {
          v40 = v33 + 1 == 0;
        }

        else
        {
          v40 = 1;
        }
      }

      while (v40);
    }

    while (i != v30);
    if ((v10 & 1) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_65;
  }

  v32 = 0;
  v31 = 0;
  if (v10)
  {
LABEL_65:
    sub_23C4E8E90();
    if (dword_27E1F7360)
    {
        ;
      }
    }

    else
    {
      j = qword_27E1F7358;
    }

    v51 = qword_27E1F7358 + 8 * dword_27E1F7360;
    if (j != v51)
    {
      v52 = *j;
      do
      {
        v53 = *(v20 + *(*v8 - 24));
        v54 = *v52;
        v55 = llvm::Module::getFunction();
        if (v55)
        {
          v56 = v55;
          if (*(v55 + 8))
          {
            sub_23C49B500(&v119, v55);
            sub_23C4FB9F8(&v104, &v109, v56);
          }
        }

        do
        {
          v57 = j[1];
          ++j;
          v52 = v57;
          if (v57)
          {
            v58 = v52 + 1 == 0;
          }

          else
          {
            v58 = 1;
          }
        }

        while (v58);
      }

      while (j != v51);
    }
  }

LABEL_97:
  if (((v32 != 0) & v31) == 1)
  {
    v59 = *(v8 + *(*v8 - 24) + 320);
    v60 = *(v59 + 32);
    v61 = (v59 + 24);
    if (v60 != (v59 + 24))
    {
      while (1)
      {
        v62 = v60[1];
        v63 = v60 ? (v60 - 7) : 0;
        if (v63 != v8[20])
        {
          break;
        }

LABEL_114:
        v60 = v62;
        if (v62 == v61)
        {
          goto LABEL_115;
        }
      }

      if (*(v60 - 19))
      {
        llvm::Function::BuildLazyArguments((v60 - 7));
        v64 = v60[4];
        if (*(v60 - 19))
        {
          llvm::Function::BuildLazyArguments((v60 - 7));
          v65 = v60[4];
LABEL_108:
          v66 = &v65[5 * v60[5]];
          while (v64 != v66)
          {
            if (*v64 == v32 && v64[1])
            {
              sub_23C49B500(&v119, v63);
              llvm::Function::addFnAttr();
              goto LABEL_114;
            }

            v64 += 5;
          }

          goto LABEL_114;
        }
      }

      else
      {
        v64 = v60[4];
      }

      v65 = v64;
      goto LABEL_108;
    }
  }

LABEL_115:
  v67 = v120;
  while (v67)
  {
    v68 = v119[--v67];
    LODWORD(v120) = v67;
    v69 = *(v68 + 8);
    if (v69)
    {
      do
      {
        v70 = *(*(*(v69 + 24) + 40) + 56);
        if (v70 != v8[20])
        {
          sub_23C4FB9F8(&v104, &v109, *(*(*(v69 + 24) + 40) + 56));
          if (v106 == 1)
          {
            llvm::Function::addFnAttr();
            sub_23C49B500(&v119, v70);
          }
        }

        v69 = *(v69 + 8);
      }

      while (v69);
      v67 = v120;
    }
  }

  v116 = v118;
  v117 = 0x800000000;
  sub_23C4E90A0(v8, &v116);
  v71 = v116;
  v104 = v108;
  v105 = v108;
  v106 = 16;
  v107 = 0;
  if (!v117)
  {
    goto LABEL_162;
  }

  v72 = 8 * v117;
  do
  {
    v73 = *v71++;
    sub_23C4FB9F8(v114, &v104, v73);
    v72 -= 8;
  }

  while (v72);
  v74 = v117;
  if (!v117)
  {
    goto LABEL_162;
  }

  do
  {
    v75 = *(v116 + --v74);
    LODWORD(v117) = v74;
    v76 = *(v75 + 8);
    if (!v76)
    {
      continue;
    }

    do
    {
      v77 = *(v76 + 24);
      v78 = *(v77 + 16);
      if (v77)
      {
        v79 = v78 >= 0x1C;
      }

      else
      {
        v79 = 0;
      }

      if (v79)
      {
        v81 = v78 - 28;
      }

      else
      {
        if (v77)
        {
          v80 = v78 == 5;
        }

        else
        {
          v80 = 0;
        }

        if (!v80)
        {
LABEL_142:
          if (!v77 || v78 != 84)
          {
            goto LABEL_159;
          }

          v82 = *(v77 - 32);
          if (!v82 || *(v82 + 16) || *(v82 + 24) != *(v77 + 72))
          {
            v82 = 0;
          }

          llvm::Function::addFnAttr();
          if (*(v82 + 18))
          {
            llvm::Function::BuildLazyArguments(v82);
            v83 = *(v82 + 88);
            if (*(v82 + 18))
            {
              llvm::Function::BuildLazyArguments(v82);
              v84 = *(v82 + 88);
LABEL_153:
              v85 = &v84[10 * *(v82 + 96)];
              while (v83 != v85)
              {
                if (*(v77 - 32 * (*(v77 + 20) & 0x7FFFFFF) + 32 * v83[8]) == v75)
                {
                  sub_23C4FB9F8(v114, &v104, v83);
                  if (v115 == 1)
                  {
                    sub_23C49B500(&v116, v83);
                  }
                }

                v83 += 10;
              }

              goto LABEL_159;
            }
          }

          else
          {
            v83 = *(v82 + 88);
          }

          v84 = v83;
          goto LABEL_153;
        }

        v81 = *(v77 + 18);
      }

      if (v81 != 49)
      {
        goto LABEL_142;
      }

      sub_23C4FB9F8(v114, &v104, *(v76 + 24));
      if (v115 == 1)
      {
        sub_23C49B500(&v116, v77);
      }

LABEL_159:
      v76 = *(v76 + 8);
    }

    while (v76);
    v74 = v117;
  }

  while (v74);
LABEL_162:
  if (MGGetBoolAnswer())
  {
    v86 = sub_23C4A2690("AGX_STRESS_NO_INLINING");
    if (v86)
    {
      if (*v86 != 48 && atoi(v86))
      {
        v87 = *(v8 + *(*v8 - 24) + 320);
        v88 = *(v87 + 32);
        v89 = v87 + 24;
        while (v88 != v89)
        {
          v90 = (v88 - 56);
          v26 = v88 == 0;
          v88 = *(v88 + 8);
          if (v26)
          {
            v91 = 0;
          }

          else
          {
            v91 = v90;
          }

          if ((llvm::GlobalValue::isDeclaration(v91) & 1) == 0 && (llvm::Function::hasFnAttribute() & 1) == 0)
          {
            llvm::Function::addFnAttr();
          }
        }
      }
    }
  }

  if (v105 != v104)
  {
    free(v105);
  }

  if (v116 != v118)
  {
    free(v116);
  }

  if (v110 != v109)
  {
    free(v110);
  }

  if (v119 != v121)
  {
    free(v119);
  }

LABEL_182:
  v92 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23C4E3C14(int32x2_t *a1)
{
  v341 = *MEMORY[0x277D85DE8];
  v2 = a1[285].u32[0];
  v3 = a1[285].u32[1];
  v4 = a1[286].u32[0];
  v5 = a1[286].u32[1];
  v6 = a1[287].u32[0];
  v7 = a1[287].u32[1];
  v8 = a1[1].u8[6];
  (*(**(&a1[43] + *(*a1 - 24)) + 504))(v335);
  *__p = *&v335[8];
  v318 = v336;
  v9 = (a1 + *(*a1 - 24));
  if (v335[0] == 1)
  {
    std::string::append(v9 + 17, "Total number of indirect argument buffer resources exceeded for");
    if (v318 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    if (v318 >= 0)
    {
      v11 = HIBYTE(v318);
    }

    else
    {
      v11 = __p[1];
    }

    std::string::append((&a1[51] + *(*a1 - 24)), v10, v11);
LABEL_9:
    v12 = 0;
    goto LABEL_370;
  }

  if (*(v9[14].__r_.__value_.__l.__size_ + 1678) == 1)
  {
    v13 = a1[270].u32[0];
    if (v13)
    {
      v14 = a1[269];
      v15 = 8 * v13;
      while (1)
      {
        v16 = **&v14;
        if (*(**&v14 + 1) == 1 && *(v16 + 2) == 1)
        {
          break;
        }

        *&v14 += 8;
        v15 -= 8;
        if (!v15)
        {
          goto LABEL_16;
        }
      }

      std::to_string(v327, *(v16 + 40));
      v294 = std::string::insert(v327, 0, "buffer(");
      v295 = v294->__r_.__value_.__r.__words[2];
      *&v332.__r_.__value_.__l.__data_ = *&v294->__r_.__value_.__l.__data_;
      v332.__r_.__value_.__r.__words[2] = v295;
      v294->__r_.__value_.__l.__size_ = 0;
      v294->__r_.__value_.__r.__words[2] = 0;
      v294->__r_.__value_.__r.__words[0] = 0;
      v296 = std::string::append(&v332, "): Argument buffer participates in modification as well as resource use");
      v297 = v296->__r_.__value_.__r.__words[2];
      *v335 = *&v296->__r_.__value_.__l.__data_;
      *&v335[16] = v297;
      v296->__r_.__value_.__l.__size_ = 0;
      v296->__r_.__value_.__r.__words[2] = 0;
      v296->__r_.__value_.__r.__words[0] = 0;
      if (v335[23] >= 0)
      {
        v298 = v335;
      }

      else
      {
        v298 = *v335;
      }

      if (v335[23] >= 0)
      {
        v299 = v335[23];
      }

      else
      {
        v299 = *&v335[8];
      }

      std::string::append((&a1[51] + *(*a1 - 24)), v298, v299);
      if ((v335[23] & 0x80000000) != 0)
      {
        operator delete(*v335);
      }

      if (SHIBYTE(v332.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v332.__r_.__value_.__l.__data_);
      }

      if ((v327[23] & 0x80000000) != 0)
      {
        operator delete(*v327);
      }

      goto LABEL_9;
    }
  }

LABEL_16:
  if (a1[277].i32[0])
  {
    v17 = a1 + 1;
    v307 = a1 + 24;
    v304 = a1 + 43;
    do
    {
      v18 = a1[276];
      v19 = a1[278].u32[0];
      v20 = v18 + 48 * v19;
      if (v19)
      {
        v21 = 48 * v19;
        while ((*(v18 + 24) | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          v18 += 48;
          v21 -= 48;
          if (!v21)
          {
            v18 = v20;
            break;
          }
        }
      }

      v22 = *(v18 + 24);
      v23 = *(v18 + 40);
      sub_23C4FAB6C(a1 + 276, v18);
      if ((*v23 & 0xFFFFFFFC) != 4)
      {
        goto LABEL_9;
      }

      v24 = *(v22 + 16);
      if (v24 == 62 && v22 != 0)
      {
        v28 = a1[274];
        if (!*&v28)
        {
LABEL_385:
          abort();
        }

        v29 = *(*(v22 - 32 * (*(v22 + 20) & 0x7FFFFFF)) + 32);
        while (1)
        {
          while (1)
          {
            v30 = *(*&v28 + 32);
            if (v29 >= v30)
            {
              break;
            }

            v28 = **&v28;
            if (!*&v28)
            {
              goto LABEL_385;
            }
          }

          if (v30 >= v29)
          {
            break;
          }

          v28 = *(*&v28 + 8);
          if (!*&v28)
          {
            goto LABEL_385;
          }
        }

        v31 = *(*&v28 + 40);
        sub_23C4C30FC(v17 + *(*a1 - 24), v22);
        if (*v23 == 7)
        {
          *&v338 = 0;
          sub_23C4A6BF8(*(v31 + 48), v22, &v338, v335);
          v32 = *(v22 + 20) & 0x7FFFFFF;
          v33 = v31;
          v34 = v22;
          v35 = v338;
          *v335 = &v335[16];
          *&v335[8] = 0x800000000;
          sub_23C4FA0E4(v335, &v34[-32 * v32 + 32], v338);
          sub_23C4A74A8(&v332, v23, v335);
          v36 = v35;
          v37 = v34;
          sub_23C4FA0E4(&v332, v36, v34);
          v38 = *(*a1 - 24);
          v39 = *(v33 + 104);
          LOWORD(v328) = 257;
          sub_23C4ED3A0(a1 + v38, v39, v332.__r_.__value_.__l.__data_, LODWORD(v332.__r_.__value_.__r.__words[1]), v327);
          if (v332.__r_.__value_.__l.__data_ != &v332.__r_.__value_.__r.__words[2])
          {
            free(v332.__r_.__value_.__l.__data_);
          }

          if (*v335 != &v335[16])
          {
            free(*v335);
          }

          v40 = "constant_gep";
        }

        else
        {
          *v327 = &v327[16];
          *&v327[8] = 0x400000000;
          v42 = v22 - 32 * (*(v22 + 20) & 0x7FFFFFF);
          *v335 = &v335[16];
          *&v335[8] = 0x800000000;
          sub_23C4FA0E4(v335, (v42 + 32), v22);
          v43 = *v23;
          v314 = v31;
          v309 = v22;
          if (*v23 == 6)
          {
            v82 = *(v304 + *(*a1 - 24));
            v329.__r_.__value_.__r.__words[0] = &v329.__r_.__value_.__r.__words[2];
            v329.__r_.__value_.__l.__size_ = 0x300000000;
            sub_23C4A72DC(&v329, 0);
            if (*(v82 + 1646) == 1)
            {
              sub_23C4A72DC(&v329, 1);
            }

            sub_23C4A72DC(&v329, 2);
            v84 = v329.__r_.__value_.__r.__words[0];
            if (LODWORD(v329.__r_.__value_.__r.__words[1]))
            {
              v85 = v329.__r_.__value_.__r.__words[0] + 4 * LODWORD(v329.__r_.__value_.__r.__words[1]);
              do
              {
                v86 = *(*a1 - 24);
                v87 = *(v31 + 104);
                v88 = LODWORD(v84->__r_.__value_.__l.__data_) == 1;
                if (LODWORD(v84->__r_.__value_.__l.__data_) == 2)
                {
                  v88 = 0;
                }

                if (LODWORD(v84->__r_.__value_.__l.__data_))
                {
                  v89 = v88;
                }

                else
                {
                  v89 = 1;
                }

                v332.__r_.__value_.__r.__words[0] = &v332.__r_.__value_.__r.__words[2];
                v332.__r_.__value_.__l.__size_ = 0x800000000;
                if (*(v23 + 104))
                {
                  sub_23C4A3D80(&v332, v23 + 96);
                }

                v90 = *(v23 + 184);
                if (v90)
                {
                  v91 = *(v23 + 176);
                  v92 = &v91[2 * v90];
                  do
                  {
                    v93 = *v91;
                    v94 = v91[1];
                    v91 += 2;
                    *(v332.__r_.__value_.__r.__words[0] + 8 * v94) = *(*v335 + 8 * v93);
                  }

                  while (v91 != v92);
                }

                v95 = (v17 + v86);
                llvm::Type::getInt32Ty(v95[8], v83);
                *(v332.__r_.__value_.__r.__words[0] + 8 * LODWORD(v332.__r_.__value_.__r.__words[1]) - 16) = llvm::ConstantInt::get();
                if (v89)
                {
                  llvm::Type::getInt32Ty(v95[8], v96);
                  *(v332.__r_.__value_.__r.__words[0] + 8 * LODWORD(v332.__r_.__value_.__r.__words[1]) - 8) = llvm::ConstantInt::get();
                  v97 = sub_23C4A7118(v23, v95, v335);
                  sub_23C49B500(&v332, v97);
                  v98 = LODWORD(v332.__r_.__value_.__r.__words[1]);
                }

                else
                {
                  v99 = sub_23C4A7118(v23, v95, v335);
                  v98 = LODWORD(v332.__r_.__value_.__r.__words[1]);
                  *(v332.__r_.__value_.__r.__words[0] + 8 * LODWORD(v332.__r_.__value_.__r.__words[1]) - 8) = v99;
                }

                LOWORD(v340) = 257;
                v100 = sub_23C4ED3A0(a1 + v86, v87, v332.__r_.__value_.__l.__data_, v98, &v338);
                sub_23C49B500(v327, v100);
                v17 = a1 + 1;
                if (v332.__r_.__value_.__l.__data_ != &v332.__r_.__value_.__r.__words[2])
                {
                  free(v332.__r_.__value_.__l.__data_);
                }

                v84 = (v84 + 4);
                v31 = v314;
              }

              while (v84 != v85);
              v84 = v329.__r_.__value_.__r.__words[0];
            }

            if (v84 != &v329.__r_.__value_.__r.__words[2])
            {
              free(v84);
            }

            v40 = "sampler_gep";
          }

          else if (v43 == 5)
          {
            v44 = *(v304 + *(*a1 - 24));
            v329.__r_.__value_.__r.__words[0] = &v329.__r_.__value_.__r.__words[2];
            v329.__r_.__value_.__l.__size_ = 0x400000000;
            sub_23C4A72DC(&v329, 0);
            if (*(v44 + 1645) == 1)
            {
              sub_23C4A72DC(&v329, 1);
            }

            sub_23C4A72DC(&v329, 2);
            sub_23C4A72DC(&v329, 3);
            v46 = v329.__r_.__value_.__r.__words[0];
            if (LODWORD(v329.__r_.__value_.__r.__words[1]))
            {
              v47 = v329.__r_.__value_.__r.__words[0] + 4 * LODWORD(v329.__r_.__value_.__r.__words[1]);
              do
              {
                v48 = *(*a1 - 24);
                v49 = *(v31 + 104);
                v50 = LODWORD(v46->__r_.__value_.__l.__data_) == 1;
                if (!LODWORD(v46->__r_.__value_.__l.__data_))
                {
                  v50 = 1;
                }

                v51 = SLODWORD(v46->__r_.__value_.__l.__data_) <= 1 && v50;
                v332.__r_.__value_.__r.__words[0] = &v332.__r_.__value_.__r.__words[2];
                v332.__r_.__value_.__l.__size_ = 0x800000000;
                if (*(v23 + 104))
                {
                  sub_23C4A3D80(&v332, v23 + 96);
                }

                v52 = *(v23 + 184);
                if (v52)
                {
                  v53 = *(v23 + 176);
                  v54 = &v53[2 * v52];
                  do
                  {
                    v55 = *v53;
                    v56 = v53[1];
                    v53 += 2;
                    *(v332.__r_.__value_.__r.__words[0] + 8 * v56) = *(*v335 + 8 * v55);
                  }

                  while (v53 != v54);
                }

                v57 = (v17 + v48);
                llvm::Type::getInt32Ty(v57[8], v45);
                *(v332.__r_.__value_.__r.__words[0] + 8 * LODWORD(v332.__r_.__value_.__r.__words[1]) - 16) = llvm::ConstantInt::get();
                if (v51)
                {
                  llvm::Type::getInt32Ty(v57[8], v58);
                  *(v332.__r_.__value_.__r.__words[0] + 8 * LODWORD(v332.__r_.__value_.__r.__words[1]) - 8) = llvm::ConstantInt::get();
                  v59 = sub_23C4A7118(v23, v57, v335);
                  sub_23C49B500(&v332, v59);
                  v60 = LODWORD(v332.__r_.__value_.__r.__words[1]);
                }

                else
                {
                  v61 = sub_23C4A7118(v23, v57, v335);
                  v60 = LODWORD(v332.__r_.__value_.__r.__words[1]);
                  *(v332.__r_.__value_.__r.__words[0] + 8 * LODWORD(v332.__r_.__value_.__r.__words[1]) - 8) = v61;
                }

                LOWORD(v340) = 257;
                v62 = sub_23C4ED3A0(a1 + v48, v49, v332.__r_.__value_.__l.__data_, v60, &v338);
                sub_23C49B500(v327, v62);
                v17 = a1 + 1;
                if (v332.__r_.__value_.__l.__data_ != &v332.__r_.__value_.__r.__words[2])
                {
                  free(v332.__r_.__value_.__l.__data_);
                }

                v46 = (v46 + 4);
                v31 = v314;
              }

              while (v46 != v47);
              v46 = v329.__r_.__value_.__r.__words[0];
            }

            if (v46 != &v329.__r_.__value_.__r.__words[2])
            {
              free(v46);
            }

            v40 = "texture_gep";
          }

          else
          {
            if (v43 == 4)
            {
              v101 = v23;
            }

            else
            {
              v101 = 0;
            }

            v102 = a1 + *(*a1 - 24);
            v103 = *(v31 + 104);
            sub_23C4A7234(&v332, v101, (v102 + 8), v335);
            LOWORD(v340) = 257;
            v104 = sub_23C4ED3A0(v102, v103, v332.__r_.__value_.__l.__data_, LODWORD(v332.__r_.__value_.__r.__words[1]), &v338);
            sub_23C49B500(v327, v104);
            if (v332.__r_.__value_.__l.__data_ != &v332.__r_.__value_.__r.__words[2])
            {
              free(v332.__r_.__value_.__l.__data_);
            }

            v40 = "buffer_gep";
          }

          v105 = (**v327 - 32 * (*(**v327 + 20) & 0x7FFFFFF));
          v106 = **(**v105 + 16);
          v107 = a1 + *(*a1 - 24);
          v108 = *(v314 + 104);
          *&v338 = v105[4];
          v109 = *(v106 + 12);
          v110 = *(v107 + 192);
          *(&v338 + 1) = llvm::ConstantInt::get();
          v111 = *(v307 + *(*a1 - 24));
          *&v339 = llvm::ConstantInt::get();
          v334 = 257;
          v112 = sub_23C4ED3A0(v107, v108, &v338, 3, &v332);
          v113 = *(v307 + *(*a1 - 24));
          v114 = *(v314 + 16);
          v115 = llvm::ConstantInt::get();
          sub_23C49B500(v327, v112);
          sub_23C49B500(v327, v115);
          v332.__r_.__value_.__r.__words[0] = &v332.__r_.__value_.__r.__words[2];
          v332.__r_.__value_.__l.__size_ = 0x400000000;
          if (*&v327[8])
          {
            v116 = *v327;
            v117 = 8 * *&v327[8];
            do
            {
              v118 = *v116++;
              sub_23C49B500(&v332, *v118);
              v117 -= 8;
            }

            while (v117);
          }

          v119 = *(&a1[42] + *(*a1 - 24));
          v120 = llvm::StructType::get();
          v121 = llvm::UndefValue::get();
          LODWORD(v329.__r_.__value_.__l.__data_) = 0;
          if (*&v327[8])
          {
            v122 = 0;
            do
            {
              v123 = *(*a1 - 24);
              v124 = *(*v327 + 8 * v122);
              LOWORD(v340) = 257;
              v121 = sub_23C49A744(v17 + v123, v121, v124, &v329, 1, &v338);
              v122 = LODWORD(v329.__r_.__value_.__l.__data_) + 1;
              LODWORD(v329.__r_.__value_.__l.__data_) = v122;
            }

            while (*&v327[8] > v122);
          }

          v125 = sub_23C506824(a1 + *(*a1 - 24), v120);
          sub_23C4BA8C0((v17 + *(*a1 - 24)), v121, v125, 0);
          v37 = v309;
          sub_23C4FAF94(a1, v125, *v309);
          if (v332.__r_.__value_.__l.__data_ != &v332.__r_.__value_.__r.__words[2])
          {
            free(v332.__r_.__value_.__l.__data_);
          }

          if (*v335 != &v335[16])
          {
            free(*v335);
          }

          if (*v327 != &v327[16])
          {
            free(*v327);
          }
        }

        v126 = 1;
        BYTE1(v337) = 1;
        if (*v40)
        {
          *v335 = v40;
          v126 = 3;
        }

        LOBYTE(v337) = v126;
        llvm::Value::setName();
        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v37);
        continue;
      }

      if (v24 != 60 || v22 == 0)
      {
        if (v24 != 61 || v22 == 0)
        {
          goto LABEL_9;
        }

        sub_23C4C30FC(v17 + *(*a1 - 24), v22);
        *v335 = &v335[16];
        *&v335[8] = 0x400000000;
        if (*v23 == 6)
        {
          sub_23C4A733C(&v332, *(&a1[43] + *(*a1 - 24)), *(&a1[42] + *(*a1 - 24)));
        }

        else
        {
          if (*v23 != 5)
          {
            v127 = a1 + *(*a1 - 24);
            v128 = *(v22 - 64);
            v129 = *(v127 + 25);
            v334 = 257;
            v130 = sub_23C49ACF8((v127 + 8), 47, v128, v129, &v332);
            v131 = v22;
            v132 = **(v22 - 32);
            if ((*(v132 + 8) & 0xFE) == 0x12)
            {
              v133 = *(**(v132 + 16) + 8);
            }

            v134 = a1 + *(*a1 - 24);
            v135 = *(v134 + 42);
            v136 = *(v134 + 25);
            v332.__r_.__value_.__r.__words[0] = llvm::PointerType::get();
            v137 = *(v307 + *(*a1 - 24));
            v332.__r_.__value_.__l.__size_ = llvm::PointerType::get();
            v332.__r_.__value_.__r.__words[2] = *(v307 + *(*a1 - 24));
            llvm::StructType::get();
            v138 = *(v22 - 32);
            v139 = llvm::PointerType::get();
            v140 = sub_23C4FAF94(a1, v138, v139);
            v141 = *(*a1 - 24);
            v334 = 257;
            v142 = sub_23C497C88((v17 + v141), **(*v140 + 16), v140, 0, &v332);
            v143 = *(*a1 - 24);
            *v327 = 0;
            v334 = 257;
            v144 = sub_23C49B32C(v17 + v143, v142, v327, 1, &v332);
            v145 = *(*a1 - 24);
            *v327 = 1;
            v334 = 257;
            v146 = sub_23C49B32C(v17 + v145, v142, v327, 1, &v332);
            v147 = *(*a1 - 24);
            *v327 = 2;
            v334 = 257;
            v148 = sub_23C49B32C(v17 + v147, v142, v327, 1, &v332);
            sub_23C4BA8C0((v17 + *(*a1 - 24)), v130, v144, 0);
            v149 = v148;
            v22 = v131;
            sub_23C4BA8C0((v17 + *(*a1 - 24)), v149, v146, 0);
            goto LABEL_147;
          }

          sub_23C4A73E4(&v332, *(&a1[43] + *(*a1 - 24)), *(&a1[42] + *(*a1 - 24)));
        }

        sub_23C4A3E4C(v335, &v332);
        if (v332.__r_.__value_.__l.__data_ != &v332.__r_.__value_.__r.__words[2])
        {
          free(v332.__r_.__value_.__l.__data_);
        }

        sub_23C4FAC14(a1, v22, v335);
      }

      else
      {
        sub_23C4C30FC(v17 + *(*a1 - 24), v22);
        *v335 = &v335[16];
        *&v335[8] = 0x400000000;
        if (*v23 == 6)
        {
          sub_23C4A733C(&v332, *(&a1[43] + *(*a1 - 24)), *(&a1[42] + *(*a1 - 24)));
          sub_23C4A3E4C(v335, &v332);
          if (v332.__r_.__value_.__l.__data_ != &v332.__r_.__value_.__r.__words[2])
          {
            free(v332.__r_.__value_.__l.__data_);
          }

          sub_23C4FB034(a1, v22, v335);
          v41 = "sampler_load";
        }

        else if (*v23 == 5)
        {
          sub_23C4A73E4(&v332, *(&a1[43] + *(*a1 - 24)), *(&a1[42] + *(*a1 - 24)));
          sub_23C4A3E4C(v335, &v332);
          if (v332.__r_.__value_.__l.__data_ != &v332.__r_.__value_.__r.__words[2])
          {
            free(v332.__r_.__value_.__l.__data_);
          }

          sub_23C4FB034(a1, v22, v335);
          v41 = "texture_load";
        }

        else
        {
          v63 = v22;
          v64 = *(v22 - 32);
          if ((*(*v64 + 8) & 0xFE) == 0x12)
          {
            v65 = *(**(*v64 + 16) + 8);
          }

          v66 = *(&a1[25] + *(*a1 - 24));
          v67 = llvm::PointerType::get();
          v68 = *v67;
          v332.__r_.__value_.__r.__words[0] = v67;
          llvm::StructType::get();
          v69 = llvm::PointerType::get();
          v70 = sub_23C4FAF94(a1, v64, v69);
          v71 = a1 + *(*a1 - 24);
          v72 = *(v71 + 192);
          *v327 = llvm::ConstantInt::get();
          v73 = *(v307 + *(*a1 - 24));
          *&v327[8] = llvm::ConstantInt::get();
          v334 = 257;
          v74 = sub_23C4ED3A0(v71, v70, v327, 2, &v332);
          v75 = *(*a1 - 24);
          v334 = 257;
          v76 = sub_23C497C88((v17 + v75), **(*v74 + 16), v74, 0, &v332);
          v77 = *(*a1 - 24);
          v334 = 257;
          v78 = sub_23C497C88((v17 + v77), **(*v76 + 16), v76, 0, &v332);
          v79 = *(*a1 - 24);
          v22 = v63;
          v80 = *v63;
          v334 = 257;
          sub_23C49ACF8(v17 + v79, 48, v78, v80, &v332);
          v41 = "buffer_load";
        }

        v81 = 1;
        HIBYTE(v334) = 1;
        if (*v41)
        {
          v332.__r_.__value_.__r.__words[0] = v41;
          v81 = 3;
        }

        LOBYTE(v334) = v81;
        llvm::Value::setName();
        llvm::Value::replaceAllUsesWith();
      }

LABEL_147:
      llvm::Instruction::eraseFromParent(v22);
      if (*v335 != &v335[16])
      {
        free(*v335);
      }
    }

    while (a1[277].i32[0]);
  }

  v150 = a1[270].u32[0];
  if (v150)
  {
    v151 = a1[269];
    v152 = &v151[v150];
    v153 = a1 + 51;
    v316 = a1 + 1;
    v308 = a1 + 24;
    LOBYTE(v12) = 1;
    v302 = v152;
    while (1)
    {
      if (v12)
      {
        v305 = v151;
        v154 = *v151;
        memset(v327, 0, sizeof(v327));
        v328 = 1065353216;
        v338 = 0u;
        v339 = 0u;
        v340 = 1065353216;
        __val = *(v154 + 40);
        v315 = *(*(&a1[43] + *(*a1 - 24)) + 1678);
        v325[0] = a1;
        v325[1] = v327;
        v325[2] = &__val;
        v155 = *(v154 + 8);
        v156 = v155[1];
        if (v156)
        {
          v312 = v154;
          v313 = *(v154 + 8);
          while (1)
          {
            v157 = *(v156 + 24);
            v156 = *(v156 + 8);
            v323[0] = 4;
            v323[1] = 0;
            v324 = v157;
            if (v157 != -8192 && v157 != -4096 && v157 != 0)
            {
              llvm::ValueHandleBase::AddToUseList(v323);
            }

            if (sub_23C4F9A00(a1[4].i8[5], v157, v155))
            {
              sub_23C4C30FC(v316 + *(*a1 - 24), v157);
              v159 = *(*a1 - 24);
              v160 = *(v154 + 104);
              v161 = *v155;
              LOWORD(v337) = 257;
              v162 = sub_23C49ACF8(v316 + v159, 49, v160, v161, v335);
              v163 = (v157 - 64);
              if (*(v157 - 8))
              {
                v164 = *(v157 - 7);
                **(v157 - 6) = v164;
                if (v164)
                {
                  *(v164 + 16) = *(v157 - 6);
                }
              }

              *v163 = v162;
              if (v162)
              {
                v167 = *(v162 + 8);
                v165 = (v162 + 8);
                v166 = v167;
                *(v157 - 7) = v167;
                if (v167)
                {
                  *(v166 + 16) = v157 - 56;
                }

                *(v157 - 6) = v165;
                *v165 = v163;
              }

              v168 = 3;
              goto LABEL_321;
            }

            v169 = v324;
            if (!v324 || *(v324 + 16) != 62)
            {
              break;
            }

            v322 = 0;
            v321 = 0;
            v170 = sub_23C4A6BF8(*(v154 + 48), v324, &v322, &v321);
            v171 = *v170;
            if ((*v170 & 0xFFFFFFFC) != 4)
            {
              if (!v315)
              {
                goto LABEL_320;
              }

              std::to_string(&v329, __val);
              v188 = std::string::insert(&v329, 0, "buffer(");
              v189 = v188->__r_.__value_.__r.__words[2];
              *&v332.__r_.__value_.__l.__data_ = *&v188->__r_.__value_.__l.__data_;
              v332.__r_.__value_.__r.__words[2] = v189;
              v188->__r_.__value_.__l.__size_ = 0;
              v188->__r_.__value_.__r.__words[2] = 0;
              v188->__r_.__value_.__r.__words[0] = 0;
              v190 = std::string::append(&v332, "): Unable to map argument buffer access to resource");
              v191 = v190->__r_.__value_.__r.__words[2];
              *v335 = *&v190->__r_.__value_.__l.__data_;
              *&v335[16] = v191;
              v190->__r_.__value_.__l.__size_ = 0;
              v190->__r_.__value_.__r.__words[2] = 0;
              v190->__r_.__value_.__r.__words[0] = 0;
              if (v335[23] >= 0)
              {
                v192 = v335;
              }

              else
              {
                v192 = *v335;
              }

              if (v335[23] >= 0)
              {
                v193 = v335[23];
              }

              else
              {
                v193 = *&v335[8];
              }

              std::string::append((v153 + *(*a1 - 24)), v192, v193);
              v187 = v335[23];
              v154 = v312;
LABEL_197:
              v155 = v313;
              if (v187 < 0)
              {
                goto LABEL_198;
              }

              goto LABEL_199;
            }

            v172 = v170;
            if (v315 && v321 == 1 && v322 == v169 && sub_23C4F9A5C(a1, v169))
            {
              sub_23C4C30FC(v316 + *(*a1 - 24), v169);
              v154 = v312;
              v173 = *(v312 + 104);
              v174 = *v173;
              if ((*(*v173 + 8) & 0xFE) == 0x12)
              {
                v174 = **(v174 + 16);
              }

              v175 = **(v174 + 16);
              v176 = *(*a1 - 24);
              v177 = *(v169 - 32 * (*(v169 + 20) & 0x7FFFFFF) + 32);
              LOWORD(v337) = 257;
              v178 = sub_23C49AEF0(v316 + v176, v175, v173, v177, v335);
              v179 = *(*a1 - 24);
              v180 = *v169;
              LOWORD(v337) = 257;
              sub_23C49ACF8(v316 + v179, 49, v178, v180, v335);
              llvm::Value::replaceAllUsesWith();
              llvm::Instruction::eraseFromParent(v169);
LABEL_188:
              v168 = 3;
              v155 = v313;
              goto LABEL_321;
            }

            sub_23C4A6FFC(v172, v169);
            v306 = v194;
            if (v194)
            {
              if (v171 == 7)
              {
LABEL_221:
                if (v315)
                {
                  v201 = v322;
                  v202 = v169 - 32 * (*(v169 + 20) & 0x7FFFFFF);
                  *v335 = &v335[16];
                  *&v335[8] = 0x800000000;
                  sub_23C4FA0E4(v335, (v202 + 32), v322);
                  sub_23C4A74A8(&v332, v172, v335);
                  sub_23C4FA0E4(&v332, v201, v169);
                  sub_23C4C30FC(v316 + *(*a1 - 24), v169);
                  v203 = *(*a1 - 24);
                  v204 = *(v312 + 104);
                  v331 = 257;
                  sub_23C4ED3A0(a1 + v203, v204, v332.__r_.__value_.__l.__data_, LODWORD(v332.__r_.__value_.__r.__words[1]), &v329);
                  llvm::Value::replaceAllUsesWith();
                  llvm::Value::takeName();
                  if (v332.__r_.__value_.__l.__data_ != &v332.__r_.__value_.__r.__words[2])
                  {
                    free(v332.__r_.__value_.__l.__data_);
                  }

                  if (*v335 != &v335[16])
                  {
                    free(*v335);
                  }

                  goto LABEL_349;
                }

                goto LABEL_320;
              }

              if (v171 != 4)
              {
                if (v171 == 5)
                {
                  v195 = v172;
                }

                else
                {
                  v195 = 0;
                }

                if (v171 == 6)
                {
                  v196 = v172;
                }

                else
                {
                  v196 = 0;
                }

                v197 = **(**(*v169 + 16) + 16);
                if ((v315 & 1) != 0 || *v312 == 1)
                {
                  v310 = **(*v169 + 16);
                  if (v195)
                  {
                    v335[9] = *(v195 + 236);
                    v335[8] = *(v195 + 237);
                    v198 = (v195 + 240);
                    if (!*(v195 + 244))
                    {
                      v198 = &unk_23C532CD4;
                    }

                    *&v335[12] = *v198;
                    v336 = v195;
                    v337 = v197;
                    sub_23C4FA168(&v332, *(v195 + 228), __val);
                    data = v332.__r_.__value_.__l.__data_;
                    v200 = *(v195 + 232);
                    *v335 = v332.__r_.__value_.__l.__data_;
                    *&v335[4] = v200;
                    sub_23C4F0AE4(&a1[105], v332.__r_.__value_.__l.__data_);
                  }

                  else
                  {
                    *&v335[8] = v196;
                    *&v335[16] = v197;
                    sub_23C4FA168(&v332, *(v196 + 228), __val);
                    data = v332.__r_.__value_.__l.__data_;
                    v273 = *(v196 + 232);
                    *v335 = v332.__r_.__value_.__l.__data_;
                    *&v335[4] = v273;
                    sub_23C4FA210(&a1[108], v332.__r_.__value_.__l.__data_);
                  }

                  sub_23C4C30FC(v316 + *(*a1 - 24), v169);
                  v274 = *v169;
                  v275 = sub_23C4A6E40(v172, (v316 + *(*a1 - 24)), v169);
                  v276 = v169;
                  if (v315)
                  {
                    v276 = llvm::UndefValue::get();
                  }

                  v319[0] = vadd_s32(vdup_n_s32(data), sub_23C4A6FFC(v172, v169));
                  v277 = 257;
                  if (!v195)
                  {
                    v277 = 263;
                  }

                  v278 = (a1 + *(*a1 - 24));
                  v279 = v278[30];
                  v332.__r_.__value_.__l.__data_ = v278[24];
                  v332.__r_.__value_.__l.__size_ = v279;
                  v332.__r_.__value_.__r.__words[2] = v332.__r_.__value_.__r.__words[0];
                  v333 = *v276;
                  v280 = sub_23C4FA2D8(&a1[v277], *&v278[40], v310);
                  v281 = *(*a1 - 24);
                  v329.__r_.__value_.__r.__words[0] = v275;
                  v329.__r_.__value_.__l.__size_ = sub_23C4A6D9C(v319, (v316 + v281));
                  v282 = *(v308 + *(*a1 - 24));
                  v329.__r_.__value_.__r.__words[2] = llvm::ConstantInt::get();
                  v330 = v276;
                  LOWORD(v337) = 257;
                  sub_23C497A7C(v316 + v281, *(v280 + 24), v280, &v329, 4, v335);
                  llvm::Value::takeName();
                  v283 = *(v169 + 8);
                  while (v283)
                  {
                    v284 = *(v283 + 24);
                    v283 = *(v283 + 8);
                    if (v284 && *(v284 + 16) == 60)
                    {
                      llvm::Value::replaceAllUsesWith();
                      llvm::Instruction::eraseFromParent(v284);
                    }
                  }

                  goto LABEL_349;
                }

                goto LABEL_320;
              }

LABEL_226:
              if (!v315)
              {
LABEL_320:
                v168 = 3;
                v154 = v312;
                v155 = v313;
                goto LABEL_321;
              }

              v205 = *(v169 + 8);
              if (!v205)
              {
                goto LABEL_349;
              }

              v303 = v169 + 32;
              v206 = 0x9DDFEA08EB382D69 * ((8 * (v172 & 0x1FFFFFFF) + 8) ^ HIDWORD(v172));
              v207 = 0x9DDFEA08EB382D69 * (HIDWORD(v172) ^ (v206 >> 47) ^ v206);
              v300 = 0x9DDFEA08EB382D69 * (v207 ^ (v207 >> 47));
LABEL_229:
              v208 = *(v205 + 24);
              v205 = *(v205 + 8);
              v319[0] = 4;
              v319[1] = 0;
              v320 = v208;
              v209 = v208;
              if (v208 != -8192)
              {
                v210 = v208 == -4096 || v208 == 0;
                v209 = v208;
                if (!v210)
                {
                  llvm::ValueHandleBase::AddToUseList(v319);
                  v209 = v320;
                }
              }

              v211 = *(v209 + 16);
              if (v211 == 61)
              {
                goto LABEL_310;
              }

              if (v211 != 60)
              {
                goto LABEL_308;
              }

              if ((v306 & 1) == 0)
              {
                goto LABEL_260;
              }

              if (llvm::GetElementPtrInst::hasAllConstantIndices(v169))
              {
                v212 = v205;
                v213 = *(v172 + 224);
                v214 = *(v172 + 16);
                if (v214)
                {
                  v215 = *(v172 + 8);
                  v216 = 16 * v214;
                  do
                  {
                    v217 = *(v303 - 32 * (*(v169 + 20) & 0x7FFFFFF) + 32 * *(*v215 + 24));
                    v218 = (v217 + 24);
                    if (*(v217 + 32) >= 0x41u)
                    {
                      v218 = *v218;
                    }

                    v213 = (v213 + *(*v215 + 20) * *v218);
                    v215 += 16;
                    v216 -= 16;
                  }

                  while (v216);
                }

                if (*v312 == 1)
                {
                  (*(*a1 + 216))(a1, v320, v213, __val);
                }

                v219 = *(*&a1[20] + 80);
                if (v219)
                {
                  v220 = v219 - 24;
                }

                else
                {
                  v220 = 0;
                }

                v221 = *(v220 + 40);
                if (v221)
                {
                  v222 = v221 - 24;
                }

                else
                {
                  v222 = 0;
                }

                sub_23C4C30FC(v316 + *(*a1 - 24), v222);
                if (v320)
                {
                  sub_23C4F9B04(v325, v213, v172);
                  llvm::Value::replaceAllUsesWith();
                  v205 = v212;
                  goto LABEL_308;
                }

                v209 = 0;
                v205 = v212;
                goto LABEL_310;
              }

              v223 = &unk_23C532CD4;
              if (*(v172 + 268))
              {
                v223 = (v172 + 264);
              }

              if (*v223 == -1)
              {
LABEL_260:
                v226 = v205;
                sub_23C4C30FC(v316 + *(*a1 - 24), v208);
                v227 = v322;
                v228 = (v303 - 32 * (*(v169 + 20) & 0x7FFFFFF));
                *v335 = &v335[16];
                *&v335[8] = 0x800000000;
                sub_23C4FA0E4(v335, v228, v322);
                sub_23C4A7234(&v332, v172, (v316 + *(*a1 - 24)), v335);
                sub_23C4FA0E4(&v332, v227, v169);
                v229 = *(*a1 - 24);
                v230 = *(v312 + 104);
                v331 = 257;
                v231 = sub_23C4ED3A0(a1 + v229, v230, v332.__r_.__value_.__l.__data_, LODWORD(v332.__r_.__value_.__r.__words[1]), &v329);
                v232 = *(*a1 - 24);
                v331 = 257;
                v233 = sub_23C497C88((v316 + v232), **(*v231 + 16), v231, 0, &v329);
                v234 = *(*a1 - 24);
                v235 = *v208;
                v331 = 257;
                sub_23C49ACF8(v316 + v234, 48, v233, v235, &v329);
                llvm::Value::replaceAllUsesWith();
                if (v332.__r_.__value_.__l.__data_ != &v332.__r_.__value_.__r.__words[2])
                {
                  free(v332.__r_.__value_.__l.__data_);
                }

                v205 = v226;
                if (*v335 != &v335[16])
                {
                  free(*v335);
                }

                goto LABEL_308;
              }

              v301 = v205;
              if (*(&v338 + 1))
              {
                v224 = vcnt_s8(*(&v338 + 8));
                v224.i16[0] = vaddlv_u8(v224);
                if (v224.u32[0] > 1uLL)
                {
                  v225 = v300;
                  if (v300 >= *(&v338 + 1))
                  {
                    v225 = v300 % *(&v338 + 1);
                  }
                }

                else
                {
                  v225 = v300 & (*(&v338 + 1) - 1);
                }

                v236 = *(v338 + 8 * v225);
                if (v236)
                {
                  v237 = *v236;
                  if (*v236)
                  {
                    do
                    {
                      v238 = v237[1];
                      if (v238 == v300)
                      {
                        if (v237[2] == v172)
                        {
                          goto LABEL_307;
                        }
                      }

                      else
                      {
                        if (v224.u32[0] > 1uLL)
                        {
                          if (v238 >= *(&v338 + 1))
                          {
                            v238 %= *(&v338 + 1);
                          }
                        }

                        else
                        {
                          v238 &= *(&v338 + 1) - 1;
                        }

                        if (v238 != v225)
                        {
                          break;
                        }
                      }

                      v237 = *v237;
                    }

                    while (v237);
                  }
                }
              }

              v239 = *(*&a1[20] + 80);
              if (v239)
              {
                v240 = v239 - 24;
              }

              else
              {
                v240 = 0;
              }

              v241 = *(v240 + 40);
              if (v241)
              {
                v242 = v241 - 24;
              }

              else
              {
                v242 = 0;
              }

              sub_23C4C30FC(v316 + *(*a1 - 24), v242);
              v243 = llvm::ArrayType::get(*(v172 + 256), *(v172 + 232));
              v311 = sub_23C506824(a1 + *(*a1 - 24), v243);
              if (!*(&v338 + 1))
              {
                goto LABEL_300;
              }

              v244 = vcnt_s8(*(&v338 + 8));
              v244.i16[0] = vaddlv_u8(v244);
              if (v244.u32[0] > 1uLL)
              {
                v245 = v300;
                if (v300 >= *(&v338 + 1))
                {
                  v245 = v300 % *(&v338 + 1);
                }
              }

              else
              {
                v245 = v300 & (*(&v338 + 1) - 1);
              }

              v246 = *(v338 + 8 * v245);
              if (!v246 || (v237 = *v246) == 0)
              {
LABEL_300:
                operator new();
              }

              while (1)
              {
                v247 = v237[1];
                if (v247 == v300)
                {
                  if (v237[2] == v172)
                  {
                    if (*(v172 + 232))
                    {
                      v248 = 0;
                      do
                      {
                        v249 = *(v172 + 224);
                        v250 = *(v172 + 16);
                        if (v250)
                        {
                          v251 = *(v172 + 8);
                          v252 = &v251[4 * v250];
                          v253 = v248;
                          do
                          {
                            v254 = v251[2];
                            v255 = v253 / v254;
                            v253 %= v254;
                            v249 += *(*v251 + 20) * v255;
                            v251 += 4;
                          }

                          while (v251 != v252);
                        }

                        v256 = a1 + *(*a1 - 24);
                        v257 = *(v256 + 192);
                        v332.__r_.__value_.__r.__words[0] = llvm::ConstantInt::get();
                        v258 = *(v308 + *(*a1 - 24));
                        v332.__r_.__value_.__l.__size_ = llvm::ConstantInt::get();
                        LOWORD(v337) = 257;
                        v259 = sub_23C4ED3A0(v256, v311, &v332, 2, v335);
                        v260 = sub_23C4F9B04(v325, v249, v172);
                        sub_23C4BA8C0((v316 + *(*a1 - 24)), v260, v259, 0);
                        ++v248;
                      }

                      while (v248 < *(v172 + 232));
                    }

LABEL_307:
                    sub_23C4C30FC(v316 + *(*a1 - 24), v208);
                    v261 = v237[3];
                    v262 = a1 + *(*a1 - 24);
                    v263 = *(v262 + 192);
                    v332.__r_.__value_.__r.__words[0] = llvm::ConstantInt::get();
                    v332.__r_.__value_.__l.__size_ = sub_23C4A6E40(v172, (v316 + *(*a1 - 24)), v169);
                    LOWORD(v337) = 257;
                    v264 = sub_23C4ED3A0(v262, v261, &v332, 2, v335);
                    v265 = *(*a1 - 24);
                    LOWORD(v337) = 257;
                    sub_23C497C88((v316 + v265), **(*v264 + 16), v264, 0, v335);
                    llvm::Value::replaceAllUsesWith();
                    v205 = v301;
LABEL_308:
                    v209 = v320;
                    if (v320)
                    {
                      llvm::Instruction::eraseFromParent(v208);
                      v209 = v320;
                    }

LABEL_310:
                    if (v209 == -8192 || (v209 != -4096 ? (v266 = v209 == 0) : (v266 = 1), v266))
                    {
                      if (!v205)
                      {
                        goto LABEL_349;
                      }

                      goto LABEL_229;
                    }

                    llvm::ValueHandleBase::RemoveFromUseList(v319);
                    if (!v205)
                    {
LABEL_349:
                      v168 = 0;
                      v155 = v313;
                      if (v315)
                      {
                        v153 = a1 + 51;
                        v154 = v312;
                        if (v324)
                        {
                          llvm::Instruction::eraseFromParent(v157);
                          v168 = 0;
                        }

                        goto LABEL_321;
                      }

                      v153 = a1 + 51;
LABEL_353:
                      v154 = v312;
                      goto LABEL_321;
                    }

                    goto LABEL_229;
                  }
                }

                else
                {
                  if (v244.u32[0] > 1uLL)
                  {
                    if (v247 >= *(&v338 + 1))
                    {
                      v247 %= *(&v338 + 1);
                    }
                  }

                  else
                  {
                    v247 &= *(&v338 + 1) - 1;
                  }

                  if (v247 != v245)
                  {
                    goto LABEL_300;
                  }
                }

                v237 = *v237;
                if (!v237)
                {
                  goto LABEL_300;
                }
              }
            }

            if (v171 == 4)
            {
              goto LABEL_226;
            }

            if (v171 == 7)
            {
              goto LABEL_221;
            }

            v155 = v313;
            if (!v315)
            {
              v168 = 3;
              goto LABEL_353;
            }

            std::to_string(&v329, __val);
            v267 = std::string::insert(&v329, 0, "buffer(");
            v268 = v267->__r_.__value_.__r.__words[2];
            *&v332.__r_.__value_.__l.__data_ = *&v267->__r_.__value_.__l.__data_;
            v332.__r_.__value_.__r.__words[2] = v268;
            v267->__r_.__value_.__l.__size_ = 0;
            v267->__r_.__value_.__r.__words[2] = 0;
            v267->__r_.__value_.__r.__words[0] = 0;
            v269 = std::string::append(&v332, "): Argument buffer accessed with non-zero array index");
            v270 = v269->__r_.__value_.__r.__words[2];
            *v335 = *&v269->__r_.__value_.__l.__data_;
            *&v335[16] = v270;
            v269->__r_.__value_.__l.__size_ = 0;
            v269->__r_.__value_.__r.__words[2] = 0;
            v269->__r_.__value_.__r.__words[0] = 0;
            if (v335[23] >= 0)
            {
              v271 = v335;
            }

            else
            {
              v271 = *v335;
            }

            if (v335[23] >= 0)
            {
              v272 = v335[23];
            }

            else
            {
              v272 = *&v335[8];
            }

            std::string::append((v153 + *(*a1 - 24)), v271, v272);
            v154 = v312;
            if ((v335[23] & 0x80000000) != 0)
            {
LABEL_198:
              operator delete(*v335);
            }

LABEL_199:
            if (SHIBYTE(v332.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v332.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v329.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v329.__r_.__value_.__l.__data_);
            }

            v168 = 1;
LABEL_321:
            if (v324 != -8192 && v324 != -4096 && v324)
            {
              llvm::ValueHandleBase::RemoveFromUseList(v323);
            }

            if (v168 != 3 && v168)
            {
              v12 = 0;
              goto LABEL_359;
            }

            if (!v156)
            {
              goto LABEL_355;
            }
          }

          if (!v315)
          {
            goto LABEL_188;
          }

          std::to_string(&v329, __val);
          v181 = std::string::insert(&v329, 0, "buffer(");
          v182 = v181->__r_.__value_.__r.__words[2];
          *&v332.__r_.__value_.__l.__data_ = *&v181->__r_.__value_.__l.__data_;
          v332.__r_.__value_.__r.__words[2] = v182;
          v181->__r_.__value_.__l.__size_ = 0;
          v181->__r_.__value_.__r.__words[2] = 0;
          v181->__r_.__value_.__r.__words[0] = 0;
          v183 = std::string::append(&v332, "): Unable to map argument buffer access to resource");
          v184 = v183->__r_.__value_.__r.__words[2];
          *v335 = *&v183->__r_.__value_.__l.__data_;
          *&v335[16] = v184;
          v183->__r_.__value_.__l.__size_ = 0;
          v183->__r_.__value_.__r.__words[2] = 0;
          v183->__r_.__value_.__r.__words[0] = 0;
          if (v335[23] >= 0)
          {
            v185 = v335;
          }

          else
          {
            v185 = *v335;
          }

          if (v335[23] >= 0)
          {
            v186 = v335[23];
          }

          else
          {
            v186 = *&v335[8];
          }

          std::string::append((v153 + *(*a1 - 24)), v185, v186);
          v187 = v335[23];
          goto LABEL_197;
        }

LABEL_355:
        if ((v315 & 1) == 0)
        {
          v285 = *(v154 + 104);
          llvm::Value::replaceAllUsesWith();
        }

        v12 = 1;
LABEL_359:
        v151 = v305;
        v286 = v339;
        if (v339)
        {
          do
          {
            v287 = *v286;
            operator delete(v286);
            v286 = v287;
          }

          while (v287);
        }

        v288 = v338;
        *&v338 = 0;
        v152 = v302;
        if (v288)
        {
          operator delete(v288);
        }

        v289 = *&v327[16];
        if (*&v327[16])
        {
          do
          {
            v290 = *v289;
            operator delete(v289);
            v289 = v290;
          }

          while (v290);
        }

        v291 = *v327;
        *v327 = 0;
        if (v291)
        {
          operator delete(v291);
        }
      }

      else
      {
        v12 = 0;
      }

      if (++v151 == v152)
      {
        goto LABEL_370;
      }
    }
  }

  v12 = 1;
LABEL_370:
  if (SHIBYTE(v318) < 0)
  {
    operator delete(__p[0]);
  }

  v292 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t sub_23C4E63A0(uint64_t a1)
{
  v236 = *MEMORY[0x277D85DE8];
  sub_23C4B8970();
  sub_23C4E8E90();
  sub_23C4E8F98();
  sub_23C4F0968();
  sub_23C4E901C();
  v189 = v193;
  v190 = v193;
  v191 = 8;
  v192 = 0;
  v3 = MGGetBoolAnswer() && (v2 = sub_23C4A2690("AGX_FORCE_CS_SAMPLERS")) != 0 && *v2 != 48 && atoi(v2) != 0;
  v5 = MGGetBoolAnswer() && (v4 = sub_23C4A2690("AGC_FORCE_BINDLESS")) != 0 && *v4 != 48 && atoi(v4) != 0;
  v7 = MGGetBoolAnswer() && (v6 = sub_23C4A2690("AGC_FORCE_BINDLESS_HEAP")) != 0 && *v6 != 48 && atoi(v6) != 0;
  v8 = *a1;
  v9 = *a1;
  if (*(*(a1 + *(*a1 - 24) + 344) + 1678))
  {
    v10 = 0;
LABEL_20:
    v173 = 0;
    v14 = 0;
    goto LABEL_21;
  }

  v11 = *(a1 + 2160);
  v12 = (*(a1 + 2296) + *(a1 + 2284)) > 0x30 || v11 != 0;
  v13 = v12 || v5 || v7;
  v10 = v11 != 0 || v3;
  if (!v13)
  {
    goto LABEL_20;
  }

  v14 = v11 == 0 && !v7;
  v173 = 1;
LABEL_21:
  *(a1 + 2385) = v14;
  v15 = *(a1 + *(v9 - 24) + 320);
  v16 = *(v15 + 32);
  v174 = v15 + 24;
  if (v16 == v15 + 24)
  {
    goto LABEL_73;
  }

  v171 = v10;
  v172 = v3;
  v17 = (a1 + 840);
  v18 = (a1 + 848);
  do
  {
    v19 = *(v16 + 8);
    if (v16)
    {
      v20 = (v16 - 56);
    }

    else
    {
      v20 = 0;
    }

    llvm::Value::getName(v20);
    Key = llvm::StringMapImpl::FindKey();
    v22 = Key == -1 || Key == dword_27E1F7458;
    if (v22)
    {
      llvm::Value::getName((v16 - 56));
      v23 = llvm::StringMapImpl::FindKey();
      if (v23 == -1 || v23 == dword_27E1F7360)
      {
        llvm::Value::getName((v16 - 56));
        v24 = llvm::StringMapImpl::FindKey();
        if (v24 == -1 || v24 == dword_27E1F73B0)
        {
          llvm::Value::getName((v16 - 56));
          v25 = llvm::StringMapImpl::FindKey();
          if (v25 == -1)
          {
            goto LABEL_71;
          }

          if (v25 == dword_27E1F7400)
          {
            goto LABEL_71;
          }

          *v218 = llvm::Value::getName((v16 - 56));
          *&v218[8] = v26;
          if (llvm::StringRef::find() != -1)
          {
            goto LABEL_71;
          }
        }
      }

      v30 = 0;
      v29 = 0;
    }

    else
    {
      v27 = *(qword_27E1F7450 + 8 * Key);
      v28 = *(v27 + 20);
      v29 = *(v27 + 30);
      v30 = v28 < 3;
    }

    v31 = *(v16 - 48);
    if (v31)
    {
      v32 = 32 * v29;
      do
      {
        v33 = *(*(v31 + 24) - 32 * (*(*(v31 + 24) + 20) & 0x7FFFFFF) + v32);
        sub_23C4FB9F8(v218, &v189, v33);
        if (v30 && *(*(a1 + 344 + *(*a1 - 24)) + 1647) == 1)
        {
          v34 = llvm::Value::stripPointerCasts(v33);
          if (!v34 || (v35 = v34, *(v34 + 16) != 84))
          {
            std::string::append((a1 + *(*a1 - 24) + 408), "Could not statically determine the target of a texture");
            v52 = 0;
            goto LABEL_265;
          }

          v36 = *(v34 - 32);
          if (!v36 || *(v36 + 16) || *(v36 + 24) != *(v35 + 72) || (llvm::Value::getName(v36), v50 = llvm::StringMapImpl::FindKey(), v50 == -1) || v50 == dword_27E1F73D8)
          {
            v37 = *(v35 - 32 * (*(v35 + 20) & 0x7FFFFFF) + 64);
            v38 = (v37 + 24);
            if (*(v37 + 32) >= 0x41u)
            {
              v38 = *v38;
            }

            v39 = *v18;
            if (!*v18)
            {
              goto LABEL_57;
            }

            v40 = *v38;
            v41 = a1 + 848;
            v42 = *v18;
            do
            {
              v43 = *(v42 + 9) + *(v42 + 8);
              v44 = v43 > v40;
              v45 = v43 <= v40;
              if (v44)
              {
                v41 = v42;
              }

              v42 = v42[v45];
            }

            while (v42);
            if (v41 == v18 || *(v41 + 32) > v40)
            {
LABEL_57:
              v41 = a1 + 848;
            }

            v46 = *(v41 + 48);
            *v218 = *(v41 + 32);
            *&v218[16] = v46;
            *&v218[32] = *(v41 + 64);
            v47 = *(v41 + 8);
            v48 = v41;
            if (v47)
            {
              do
              {
                v49 = v47;
                v47 = *v47;
              }

              while (v47);
            }

            else
            {
              do
              {
                v49 = v48[2];
                v22 = *v49 == v48;
                v48 = v49;
              }

              while (!v22);
            }

            if (*v17 == v41)
            {
              *v17 = v49;
            }

            --*(a1 + 856);
            sub_23C4F49F0(v39, v41);
            operator delete(v41);
            *&v218[16] = 1;
            sub_23C4F0AE4(a1 + 840, *v218);
          }
        }

        v31 = *(v31 + 8);
      }

      while (v31);
    }

LABEL_71:
    v16 = v19;
  }

  while (v19 != v174);
  v8 = *a1;
  v3 = v172;
  v10 = v171;
LABEL_73:
  v188 = 1;
  if ((*(v8 + 288))(a1))
  {
    if (v10)
    {
      if (v3)
      {
        v232 = 0uLL;
        v230 = &unk_284F1B880;
        v231 = &v232;
        *v218 = &v218[16];
        *&v218[8] = 0x400000000;
        v201[0] = &unk_284F1C0C0;
        v201[1] = &v230;
        v202 = v201;
        for (i = *(a1 + 2032); i; i = *i)
        {
          sub_23C4F0FC4(v202, i[5]);
        }

        sub_23C4F1014(v201);
        sub_23C4F1094(&v230, v218, a1 + 864);
        sub_23C4F11DC(a1, v218);
        v224 = a1;
        v200 = 0;
        operator new();
      }

      *v218 = &unk_23C53F34D;
      memset(&v218[8], 0, 32);
      v219 = 1065353216;
      if (v188 == 1)
      {
        v183[0] = 0;
        v183[1] = 0;
        v182 = v183;
        sub_23C4F0BAC(&v182, *(a1 + 864), (a1 + 872));
        sub_23C4F0D28(a1, a1 + 2008, v218, &v182);
      }

      v188 = 0;
      sub_23C4F2F50(0);
      *v218 = a1;
      v198[0] = &unk_284F1C1E0;
      v198[1] = &v188;
      v198[2] = v218;
      v199 = v198;
      for (j = *(a1 + 2128); j; j = *j)
      {
        sub_23C4F0FC4(v199, j[5]);
      }

      sub_23C4F1014(v198);
      goto LABEL_156;
    }

    if (v188 == 1)
    {
      v185[0] = 0;
      v185[1] = 0;
      v184 = v185;
      sub_23C4F0BAC(&v184, *(a1 + 864), (a1 + 872));
      sub_23C4F0D28(a1, a1 + 2008, a1 + 2104, &v184);
    }

LABEL_146:
    v188 = 0;
    goto LABEL_156;
  }

  if (v188 != 1)
  {
    goto LABEL_146;
  }

  v187[0] = 0;
  v187[1] = 0;
  v186 = v187;
  sub_23C4F0BAC(&v186, *(a1 + 864), (a1 + 872));
  *v218 = &v218[16];
  *&v218[8] = 0x400000000;
  v223 = 0;
  v222 = 0;
  v221 = &v222;
  v220 = &unk_284F1B880;
  v215 = &unk_284F1BCD0;
  v216 = &v220;
  v217 = &v215;
  for (k = *(a1 + 2032); k; k = *k)
  {
    sub_23C4F0FC4(v217, k[5]);
  }

  sub_23C4F1014(&v215);
  v211 = &unk_284F1BD60;
  v212 = &v220;
  v214 = &v211;
  for (m = *(a1 + 2128); m; m = *m)
  {
    sub_23C4F0FC4(v214, m[5]);
  }

  sub_23C4F1014(&v211);
  v203 = 0u;
  v204 = 0u;
  v205 = 1065353216;
  v55 = v221;
  if (v221 == &v222)
  {
LABEL_136:
    __src = &v203;
    LOBYTE(v194) = 1;
    v230 = &unk_284F1BDF0;
    v231 = &v194;
    *&v232 = &__src;
    *(&v232 + 1) = &v230;
    for (n = *(a1 + 2032); n; n = *n)
    {
      sub_23C4F0FC4(*(&v232 + 1), n[5]);
    }

    sub_23C4F1014(&v230);
    v224 = &unk_284F1BE80;
    p_p_src = &v194;
    p_src = &__src;
    v227 = &v224;
    for (ii = *(a1 + 2128); ii; ii = *ii)
    {
      sub_23C4F0FC4(v227, ii[5]);
    }

    sub_23C4F1014(&v224);
    v115 = v194;
  }

  else
  {
    v175 = a1 + 344;
    v170 = a1 + 160;
    while (1)
    {
      v56 = v187[0];
      if (!v187[0])
      {
        break;
      }

      v57 = *(v55 + 9);
      v58 = v187;
      do
      {
        v59 = v56;
        v60 = v58;
        v61 = *(v56 + 9) + *(v56 + 8);
        if (v61 > v57)
        {
          v58 = v56;
        }

        v56 = v56[v61 <= v57];
      }

      while (v56);
      if (v58 == v187)
      {
        break;
      }

      if (v61 > v57)
      {
        v62 = (v59 + 4);
      }

      else
      {
        v59 = v60;
        v62 = (v60 + 4);
      }

      if (v57 < *(v59 + 8))
      {
        break;
      }

      v63 = *(v55 + 7);
      if (*(v55 + 8) != v63)
      {
        break;
      }

      v64 = sub_23C4F7ED0(v62, v63);
      v66 = v65;
      v67 = llvm::User::operator new(0x58);
      v68 = *(*a1 - 24);
      if ((v64 & 0x80000000) != 0)
      {
        __src = HIWORD(v64) & 0x7FFF;
        v208 = ".";
        v210 = 776;
        v69 = 2;
        v70 = 8;
        v71 = &v224;
        v224 = &__src;
        p_src = v64;
      }

      else
      {
        LODWORD(v224) = v64;
        v69 = 8;
        v70 = 1;
        v71 = v224;
      }

      v72 = a1 + v68;
      v73 = *(v72 + 320);
      v74 = *(*(v72 + 344) + 1584);
      v228 = v69;
      v229 = v70;
      v230 = "agc.sampler_words";
      *&v232 = v71;
      LOBYTE(v233[0]) = 3;
      BYTE1(v233[0]) = v69;
      llvm::GlobalVariable::GlobalVariable();
      *(v67 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      v75 = __clz(*(*(v175 + *(*a1 - 24)) + 1604)) ^ 0x13F;
      llvm::GlobalObject::setAlignment();
      sub_23C506A1C((a1 + *(*a1 - 24)));
      v76 = (*(*a1 + 264))(a1);
      v77 = *a1;
      if (v76 && (v78 = *a1, *(*(v175 + *(v77 - 24)) + 1651) == 1))
      {
        NullValue = llvm::User::operator new(0x58);
        v80 = *(*a1 - 24);
        if ((v64 & 0x80000000) != 0)
        {
          __src = HIWORD(v64) & 0x7FFF;
          v208 = ".";
          v210 = 776;
          v81 = 2;
          v82 = 8;
          v83 = &v224;
          v224 = &__src;
          p_src = v64;
        }

        else
        {
          LODWORD(v224) = v64;
          v81 = 8;
          v82 = 1;
          v83 = v224;
        }

        v88 = a1 + v80;
        v89 = *(v88 + 320);
        v90 = *(v88 + 160);
        v228 = v81;
        v229 = v82;
        v230 = "agc.es1_sampler_lod_bias";
        *&v232 = v83;
        LOBYTE(v233[0]) = 3;
        BYTE1(v233[0]) = v81;
        llvm::GlobalVariable::GlobalVariable();
        *(NullValue + 80) |= 1u;
        llvm::GlobalObject::setSection();
        sub_23C506A1C((a1 + *(*a1 - 24)));
      }

      else
      {
        v84 = *a1;
        v85 = *(v170 + *(v77 - 24));
        v86 = llvm::PointerType::get();
        NullValue = llvm::Constant::getNullValue(v86, v87);
      }

      v91 = llvm::User::operator new(0x58);
      v92 = (a1 + *(*a1 - 24));
      v93 = v92[40];
      v94 = v92[25];
      if ((v64 & 0x80000000) != 0)
      {
        __src = HIWORD(v64) & 0x7FFF;
        v208 = ".";
        v210 = 776;
        v95 = 2;
        v96 = 8;
        v97 = &v224;
        v224 = &__src;
        p_src = v64;
      }

      else
      {
        LODWORD(v224) = v64;
        v95 = 8;
        v96 = 1;
        v97 = v224;
      }

      v228 = v95;
      v229 = v96;
      v230 = "agc.sampler_unique_id";
      *&v232 = v97;
      LOBYTE(v233[0]) = 3;
      BYTE1(v233[0]) = v95;
      v168 = *(v92[43] + 836) | 0x100000000;
      llvm::GlobalVariable::GlobalVariable();
      *(v91 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      sub_23C506A1C((a1 + *(*a1 - 24)));
      if ((*(v66 + 9) & 1) == 0)
      {
        v98 = *(*(v175 + *(*a1 - 24)) + 1584);
        v230 = llvm::PointerType::get();
        v99 = *(v170 + *(*a1 - 24));
        v231 = llvm::PointerType::get();
        v100 = a1 + *(*a1 - 24);
        v101 = *(v100 + 200);
        v102 = *(*(v100 + 344) + 836);
        *&v232 = llvm::PointerType::get();
        llvm::StructType::setBody();
      }

      v230 = v67;
      v231 = NullValue;
      *&v232 = v91;
      llvm::ConstantStruct::get();
      v103 = llvm::User::operator new(0x58);
      v104 = *(a1 + 320 + *(*a1 - 24));
      if ((v64 & 0x80000000) != 0)
      {
        __src = HIWORD(v64) & 0x7FFF;
        v208 = ".";
        v210 = 776;
        v105 = 2;
        v106 = 8;
        v107 = &v224;
        v224 = &__src;
        p_src = v64;
      }

      else
      {
        LODWORD(v224) = v64;
        v105 = 8;
        v106 = 1;
        v107 = v224;
      }

      v228 = v105;
      v229 = v106;
      v230 = "agc.sampler_state_struct_ptr";
      *&v232 = v107;
      LOBYTE(v233[0]) = 3;
      BYTE1(v233[0]) = v105;
      v167 = 0;
      llvm::GlobalVariable::GlobalVariable();
      *(v103 + 80) |= 1u;
      llvm::GlobalVariable::setInitializer();
      sub_23C4EDC2C(&v230, v103);
      v230 = &unk_284F1B800;
      v233[0] = (a1 + 632);
      v224 = 0;
      v108 = sub_23C4FB49C(*(a1 + 632), *(a1 + 648), *(&v232 + 1), &v224);
      v109 = v224;
      if ((v108 & 1) == 0)
      {
        v109 = sub_23C4F8E6C(a1 + 632, &v230, v224);
        sub_23C4DDEAC((v109 + 8), &v231);
        *(v109 + 32) = v233[0];
        *(v109 + 40) = 0;
      }

      if (*(&v232 + 1) != -8192 && *(&v232 + 1) != -4096 && *(&v232 + 1))
      {
        llvm::ValueHandleBase::RemoveFromUseList(&v231);
      }

      *(v109 + 40) = v64;
      v230 = 4;
      v231 = 0;
      v110 = v103;
      *&v232 = v103;
      if (v103 != -8192)
      {
        v110 = v103;
        if (v103 != -4096)
        {
          v110 = v103;
          if (v103)
          {
            llvm::ValueHandleBase::AddToUseList(&v230);
            v110 = v232;
          }
        }
      }

      sub_23C4EF514(a1 + 760, v110);
      if (v232 != -8192 && v232 != -4096 && v232)
      {
        llvm::ValueHandleBase::RemoveFromUseList(&v230);
      }

      v230 = v55 + 28;
      sub_23C4F6718(&v203, *(v55 + 7))[3] = v103;
      v111 = v55[1];
      if (v111)
      {
        do
        {
          v112 = v111;
          v111 = *v111;
        }

        while (v111);
      }

      else
      {
        do
        {
          v112 = v55[2];
          v22 = *v112 == v55;
          v55 = v112;
        }

        while (!v22);
      }

      v55 = v112;
      if (v112 == &v222)
      {
        goto LABEL_136;
      }
    }

    v115 = 0;
  }

  sub_23C4F6B10(&v203);
  sub_23C4B1570(v222);
  if (*v218 != &v218[16])
  {
    free(*v218);
  }

  v188 = v115 & 1;
  sub_23C4B1570(v187[0]);
LABEL_156:
  if (((*(*a1 + 272))(a1) & 1) == 0)
  {
    if (v188 == 1)
    {
      v181[0] = 0;
      v181[1] = 0;
      v180 = v181;
      sub_23C4F13BC(&v180, *(a1 + 840), (a1 + 848));
      v188 = sub_23C4F1538(a1, a1 + 1960, a1 + 2056, &v180);
      v119 = v181[0];
      goto LABEL_176;
    }

    goto LABEL_177;
  }

  if (v173)
  {
    if (*(a1 + 2385) == 1)
    {
      if (&v189 != (a1 + 888))
      {
        llvm::SmallPtrSetImplBase::CopyFrom((a1 + 888), &v189);
      }

      v227 = 0;
      p_src = 0;
      p_p_src = &p_src;
      v224 = &unk_284F1B880;
      *v218 = &v218[16];
      *&v218[8] = 0x400000000;
      v230 = &v232;
      v231 = 0x400000000;
      __src = sub_23C49BBA0((a1 + 168), *(*(a1 + *(*a1 - 24) + 344) + 1576));
      LODWORD(v207) = v117;
      LODWORD(v203) = llvm::TypeSize::operator unsigned long long();
      v196[0] = &unk_284F1C660;
      v196[1] = &v224;
      v197 = v196;
      for (jj = *(a1 + 1984); jj; jj = *jj)
      {
        sub_23C4F0FC4(v197, jj[5]);
      }

      sub_23C4F1014(v196);
      sub_23C4F2BF4(&v224, v218, a1 + 840);
      __src = a1;
      v207 = &v203;
      operator new();
    }

    if (v188 == 1)
    {
      if (v190 == v189)
      {
        v122 = (&v191 + 4);
      }

      else
      {
        v122 = &v191;
      }

      v123 = *v122;
      if (v123)
      {
        v124 = 8 * v123;
        v125 = v190;
        while (*v125 >= 0xFFFFFFFFFFFFFFFELL)
        {
          v125 += 8;
          v124 -= 8;
          if (!v124)
          {
            goto LABEL_196;
          }
        }
      }

      else
      {
        v125 = v190;
      }

      v126 = &v190[8 * v123];
      if (v125 != v126)
      {
        v127 = 0;
        v128 = v125;
        while (1)
        {
          v129 = v127++;
          do
          {
            v128 += 8;
            if (v128 == v126)
            {
              goto LABEL_194;
            }
          }

          while (*v128 >= 0xFFFFFFFFFFFFFFFELL);
          if (v128 == v126)
          {
LABEL_194:
            if (v129 < 0x1FFFFFFFFFFFFFFFLL)
            {
              sub_23C4D97E0(v127);
            }

            sub_23C496CE8();
          }
        }
      }

LABEL_196:
      v195 = 0;
      v232 = 0u;
      v230 = &unk_284F1B868;
      v231 = &v232;
      v233[0] = v234;
      v233[1] = 0x800000000;
      v235 = 0;
      llvm::IntEqClasses::grow(v233);
      *v218 = &v230;
      *&v218[8] = &v195;
      *&v203 = &unk_284F1B8E0;
      *(&v203 + 1) = v218;
      *(&v204 + 1) = &v203;
      for (kk = *(a1 + 2080); kk; kk = *kk)
      {
        sub_23C4F0FC4(*(&v204 + 1), kk[5]);
      }

      sub_23C4F1014(&v203);
      v220 = &unk_284F1B970;
      v221 = v218;
      v223 = &v220;
      for (mm = *(a1 + 1984); mm; mm = *mm)
      {
        sub_23C4F0FC4(v223, mm[5]);
      }

      sub_23C4F1014(&v220);
      llvm::IntEqClasses::compress(v233);
      if ((MGGetBoolAnswer() & 1) == 0 || (v132 = sub_23C4A2690("AGC_FORCE_BINDLESS")) == 0 || *v132 == 48 || !atoi(v132))
      {
        if (sub_23C4A2690("AGC_MAX_TEXTURE_REGISTERS"))
        {
          v133 = sub_23C4A2690("AGC_MAX_TEXTURE_REGISTERS");
          if (v133)
          {
            if (*v133 != 48)
            {
              atoi(v133);
            }
          }
        }
      }

      v134 = *(v233[0] + v195);
      if (v235)
      {
        operator new();
      }

      v135 = v231;
      if (v231 != &v232)
      {
        v136 = v233[0];
        do
        {
          v137 = *(v135 + 7);
          v138 = *(v135 + 8);
          v139 = *(v135 + 9);
          v140 = v136[v139];
          if ((*(12 * v140 + 4) & 1) == 0)
          {
            *(12 * v140 + 4) = 1;
          }

          *(12 * v140) = v139;
          *(12 * v140 + 8) += v138 - v137 + 1;
          v141 = *(v135 + 1);
          if (v141)
          {
            do
            {
              v142 = v141;
              v141 = *v141;
            }

            while (v141);
          }

          else
          {
            do
            {
              v142 = *(v135 + 2);
              v22 = *v142 == v135;
              v135 = v142;
            }

            while (!v22);
          }

          v135 = v142;
        }

        while (v142 != &v232);
      }

      llvm::IntEqClasses::uncompress(v233);
      llvm::IntEqClasses::compress(v233);
      v143 = MGGetBoolAnswer();
      if ((v143 & 1) != 0 && (v143 = sub_23C4A2690("AGC_DEBUG_LLVM_IR")) != 0 && *v143 != 48 && (v143 = atoi(v143), v143))
      {
        sub_23C4AA240(v143, "----- Texture allocations ------\n", v144, v145, v146, v147, v148, v149, v167);
        v150 = 1;
      }

      else
      {
        v150 = 0;
      }

      *v218 = &v218[16];
      *&v218[8] = 0x800000000;
      v151 = v231;
      if (v231 != &v232)
      {
        v152 = (a1 + 848);
        do
        {
          if (*(v233[0] + *(v151 + 9)) == *(v233[0] + 1))
          {
            v153 = *v152;
            v154 = *(v151 + 7);
            if (!*v152)
            {
              goto LABEL_238;
            }

            v155 = a1 + 848;
            do
            {
              v156 = *(v153 + 36) + *(v153 + 32);
              v44 = v156 > v154;
              v157 = v156 <= v154;
              if (v44)
              {
                v155 = v153;
              }

              v153 = *(v153 + 8 * v157);
            }

            while (v153);
            if (v155 == v152 || v154 < *(v155 + 32))
            {
LABEL_238:
              v155 = a1 + 848;
            }

            for (*(v151 + 9) = *&v218[8]; v154 <= *(v151 + 8); ++v154)
            {
              sub_23C4F3374(&v224, v155 + 32, v154);
              v143 = sub_23C4F33F4(v218, &v224);
              v158 = *v218 + 24 * *&v218[8];
              v159 = *v143;
              *(v158 + 16) = *(v143 + 16);
              *v158 = v159;
              ++*&v218[8];
            }

            if (v150)
            {
              sub_23C4AA240(v143, "[%08x - %08x] TS%d - TS%d", v144, v145, v146, v147, v148, v149, *(v151 + 7));
            }
          }

          else if (v150)
          {
            v169 = *(v151 + 8);
            sub_23C4AA240(v143, "[%08x - %08x] bindless", v144, v145, v146, v147, v148, v149, *(v151 + 7));
          }

          v160 = *(v151 + 1);
          if (v160)
          {
            do
            {
              v161 = v160;
              v160 = *v160;
            }

            while (v160);
          }

          else
          {
            do
            {
              v161 = *(v151 + 2);
              v22 = *v161 == v151;
              v151 = v161;
            }

            while (!v22);
          }

          v151 = v161;
        }

        while (v161 != &v232);
      }

      sub_23C4F3268(a1, v218);
      v224 = &v228;
      p_p_src = &v228;
      p_src = 4;
      LODWORD(v227) = 0;
      v215 = &unk_284F1BA00;
      v216 = a1;
      v217 = &v215;
      __src = &unk_284F1B9B8;
      v207 = &v230;
      v208 = &v215;
      v209 = &__src;
      sub_23C4F3474(&v224, &__src);
      sub_23C4F356C(&__src);
      sub_23C4F35EC(&v215);
      if (p_p_src != v224)
      {
        free(p_p_src);
      }

      v227 = 0;
      p_src = 0;
      p_p_src = &p_src;
      v224 = &unk_284F1B880;
      __src = &unk_284F1BA48;
      v207 = &v224;
      v209 = &__src;
      for (nn = *(a1 + 1984); nn; nn = *nn)
      {
        sub_23C4F0FC4(v209, nn[5]);
      }

      sub_23C4F1014(&__src);
      sub_23C4F2BF4(&v224, v218, a1 + 840);
      sub_23C4F2D2C(a1, v218);
      v194 = a1;
      v211 = &unk_284F1BAD8;
      v212 = &v224;
      v213 = &v194;
      v214 = &v211;
      for (i1 = *(a1 + 1984); i1; i1 = *i1)
      {
        sub_23C4F0FC4(v214, i1[5]);
      }

      sub_23C4F1014(&v211);
      sub_23C4B1570(p_src);
      v194 = a1;
      v224 = &unk_284F1BBB0;
      p_p_src = &v194;
      v227 = &v224;
      for (i2 = *(a1 + 2080); i2; i2 = *i2)
      {
        sub_23C4F0FC4(v227, i2[5]);
      }

      sub_23C4F1014(&v224);
      if (*v218 != &v218[16])
      {
        free(*v218);
      }

      v230 = &unk_284F1B868;
      if (v233[0] != v234)
      {
        free(v233[0]);
      }

      sub_23C4B1570(v232);
      v188 = 1;
    }

    goto LABEL_264;
  }

  if (!sub_23C4F2B4C(a1, *(a1 + 1984)) || !sub_23C4F2B4C(a1, *(a1 + 2080)))
  {
    if (v188 == 1)
    {
      v177[0] = 0;
      v177[1] = 0;
      v176 = v177;
      sub_23C4F13BC(&v176, *(a1 + 840), (a1 + 848));
      v232 = 0uLL;
      v230 = &unk_284F1B880;
      v231 = &v232;
      *v218 = &v218[16];
      *&v218[8] = 0x400000000;
      v224 = &unk_284F1C468;
      p_p_src = &v230;
      v227 = &v224;
      for (i3 = *(a1 + 1984); i3; i3 = *i3)
      {
        sub_23C4F0FC4(v227, i3[5]);
      }

      sub_23C4F1014(&v224);
      __src = &unk_284F1C4F8;
      v207 = &v230;
      v209 = &__src;
      for (i4 = *(a1 + 2080); i4; i4 = *i4)
      {
        sub_23C4F0FC4(v209, i4[5]);
      }

      sub_23C4F1014(&__src);
      sub_23C4F2BF4(&v230, v218, &v176);
      sub_23C4F3268(a1, v218);
      sub_23C4F2D2C(a1, v218);
      v215 = a1;
      LOBYTE(v211) = 1;
      operator new();
    }

    goto LABEL_177;
  }

  if (v188 != 1)
  {
LABEL_177:
    v188 = 0;
    goto LABEL_264;
  }

  v179[0] = 0;
  v179[1] = 0;
  v178 = v179;
  sub_23C4F13BC(&v178, *(a1 + 840), (a1 + 848));
  v188 = sub_23C4F1538(a1, a1 + 1960, a1 + 2056, &v178);
  v119 = v179[0];
LABEL_176:
  sub_23C4B1570(v119);
LABEL_264:
  sub_23C4F2EE0((a1 + 1960));
  sub_23C4F2EE0((a1 + 2008));
  sub_23C4F2EE0((a1 + 2056));
  sub_23C4F2EE0((a1 + 2104));
  v52 = v188;
LABEL_265:
  if (v190 != v189)
  {
    free(v190);
  }

  v165 = *MEMORY[0x277D85DE8];
  return v52 & 1;
}

void sub_23C4E8844(void *a1)
{
  v75 = *MEMORY[0x277D85DE8];
  v1 = a1 + *(*a1 - 24);
  v2 = *(v1 + 40);
  v3 = *(v1 + 43);
  sub_23C504C2C(&v62, *v2);
  v68 = v3;
  v62 = &unk_284F1B828;
  sub_23C504C2C(&v69, *v2);
  v74 = &v62;
  v73[23] = v2;
  v69 = &unk_284F13E08;
  v67 = v2;
  v64[20] = *(v3 + 104);
  if ((atomic_load_explicit(&qword_27E1F6A18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F6A18))
  {
    qword_27E1F69F8 = 0;
    *&dword_27E1F6A00 = 0;
    qword_27E1F6A08 = 0x2800000000;
    __cxa_atexit(sub_23C4C35C0, &qword_27E1F69F8, &dword_23C496000);
    __cxa_guard_release(&qword_27E1F6A18);
  }

  if (!dword_27E1F6A04)
  {
    v4 = sub_23C4C3164("fast_sin", 8uLL);
    v5 = *sub_23C4C3270((*v4 + 8), "fast_asin", 9uLL);
    *(v5 + 8) = sub_23C4C35B8;
    *(v5 + 16) = 0;
    v6 = sub_23C4C3164("fast_sin", 8uLL);
    v7 = *sub_23C4C3270((*v6 + 8), "fast_acos", 9uLL);
    *(v7 + 8) = sub_23C4C33B0;
    *(v7 + 16) = 0;
    v8 = sub_23C4C3164("fast_sin", 8uLL);
    v9 = *sub_23C4C3270((*v8 + 8), "fast_atan", 9uLL);
    *(v9 + 8) = sub_23C4C351C;
    *(v9 + 16) = 0;
    v10 = sub_23C4C3164("fast_cos", 8uLL);
    v11 = *sub_23C4C3270((*v10 + 8), "fast_asin", 9uLL);
    *(v11 + 8) = sub_23C4C33B0;
    *(v11 + 16) = 0;
    v12 = sub_23C4C3164("fast_cos", 8uLL);
    v13 = *sub_23C4C3270((*v12 + 8), "fast_acos", 9uLL);
    *(v13 + 8) = sub_23C4C35B8;
    *(v13 + 16) = 0;
    v14 = sub_23C4C3164("fast_cos", 8uLL);
    v15 = *sub_23C4C3270((*v14 + 8), "fast_atan", 9uLL);
    *(v15 + 8) = sub_23C4C3480;
    *(v15 + 16) = 0;
    v16 = sub_23C4C3164("fast_tan", 8uLL);
    v17 = *sub_23C4C3270((*v16 + 8), "fast_asin", 9uLL);
    *(v17 + 8) = sub_23C4C3434;
    *(v17 + 16) = 0;
    v18 = sub_23C4C3164("fast_tan", 8uLL);
    v19 = *sub_23C4C3270((*v18 + 8), "fast_acos", 9uLL);
    *(v19 + 8) = sub_23C4C3364;
    *(v19 + 16) = 0;
    v20 = sub_23C4C3164("fast_tan", 8uLL);
    v21 = *sub_23C4C3270((*v20 + 8), "fast_atan", 9uLL);
    *(v21 + 8) = sub_23C4C35B8;
    *(v21 + 16) = 0;
  }

  v22 = v67[4];
  v23 = v67 + 3;
  if (v22 != (v67 + 3))
  {
    do
    {
      if (v22)
      {
        v24 = (v22 - 56);
      }

      else
      {
        v24 = 0;
      }

      v25 = *(v22 + 1);
      Name = llvm::Value::getName(v24);
      v61[0] = 0;
      v61[1] = 0;
      if (sub_23C4C28BC(Name, v27, v61, &v60))
      {
        Key = llvm::StringMapImpl::FindKey();
        v29 = Key == -1 ? dword_27E1F6A00 : Key;
        if (v29 != dword_27E1F6A00)
        {
          v30 = *(v22 - 6);
          if (v30)
          {
            v31 = qword_27E1F69F8;
            do
            {
              while (1)
              {
                v32 = *(v30 + 24);
                v30 = *(v30 + 8);
                if (((sub_23C4B88A0(v32) - (v32 - 32 * (*(v32 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) == 0x20)
                {
                  sub_23C4C30FC(&v63, v32);
                  v33 = *(v32 - 4 * (*(v32 + 5) & 0x7FFFFFF));
                  if (v33)
                  {
                    if (*(v33 + 16) == 84 && ((sub_23C4B88A0(v33) - (v33 + 32 * -(*(v33 + 20) & 0x7FFFFFF))) & 0x1FFFFFFFE0) == 0x20)
                    {
                      v34 = *(v33 - 32);
                      if (v34)
                      {
                        if (!*(v34 + 16) && *(v34 + 24) == *(v33 + 72))
                        {
                          v35 = llvm::Value::getName(v34);
                          v59[0] = 0;
                          v59[1] = 0;
                          if (sub_23C4C28BC(v35, v36, v59, &v58))
                          {
                            v37 = *(v31 + 8 * v29);
                            v38 = llvm::StringMapImpl::FindKey();
                            v39 = v38 == -1 ? *(v37 + 16) : v38;
                            v40 = *(v37 + 8) + 8 * v39;
                            if (v40 != *(*(v31 + 8 * v29) + 8) + 8 * *(*(v31 + 8 * v29) + 16))
                            {
                              v53 = v31;
                              sub_23C4AE5DC(__dst, v61);
                              if (v57 >= 0)
                              {
                                v41 = __dst;
                              }

                              else
                              {
                                LOBYTE(v41) = __dst[0];
                              }

                              v42 = sub_23C4AE5DC(&__p, v59);
                              sub_23C4AA240(v42, "Simplify Identity: %s(%s)", v43, v44, v45, v46, v47, v48, v41);
                              if (v55 < 0)
                              {
                                operator delete(__p);
                              }

                              if (v57 < 0)
                              {
                                operator delete(__dst[0]);
                              }

                              v49 = *(*v40 + 8);
                              v50 = *(*v40 + 16);
                              v51 = (v74 + (v50 >> 1));
                              v31 = v53;
                              if (v50)
                              {
                                v49 = *(*v51 + v49);
                              }

                              v49(v51, *(v33 - 32 * (*(v33 + 20) & 0x7FFFFFF)));
                              llvm::Value::replaceAllUsesWith();
                              llvm::Instruction::eraseFromParent(v32);
                              if (!llvm::Value::getNumUses(v33))
                              {
                                break;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }

                if (!v30)
                {
                  goto LABEL_40;
                }
              }

              llvm::Instruction::eraseFromParent(v33);
            }

            while (v30);
          }
        }
      }

LABEL_40:
      v22 = v25;
    }

    while (v25 != v23);
  }

  v62 = &unk_284F1B828;
  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v73);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v72);
  if (v70 != &v71)
  {
    free(v70);
  }

  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v66);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v65);
  if (v63 != v64)
  {
    free(v63);
  }

  v52 = *MEMORY[0x277D85DE8];
}

void sub_23C4E8E90()
{
  if ((atomic_load_explicit(&qword_27E1F7378, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F7378))
  {
    qword_27E1F7358 = 0;
    *&dword_27E1F7360 = 0;
    qword_27E1F7368 = 0x1800000000;
    __cxa_atexit(sub_23C4F0A68, &qword_27E1F7358, &dword_23C496000);

    __cxa_guard_release(&qword_27E1F7378);
  }
}

void sub_23C4E8F14()
{
  if ((atomic_load_explicit(&qword_27E1F73A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F73A0))
  {
    qword_27E1F7380 = 0;
    *&dword_27E1F7388 = 0;
    qword_27E1F7390 = 0x800000000;
    __cxa_atexit(sub_23C4F09EC, &qword_27E1F7380, &dword_23C496000);

    __cxa_guard_release(&qword_27E1F73A0);
  }
}

void sub_23C4E8F98()
{
  if ((atomic_load_explicit(&qword_27E1F73C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F73C8))
  {
    qword_27E1F73A8 = 0;
    *&dword_27E1F73B0 = 0;
    qword_27E1F73B8 = 0x800000000;
    __cxa_atexit(sub_23C4F09EC, &qword_27E1F73A8, &dword_23C496000);

    __cxa_guard_release(&qword_27E1F73C8);
  }
}

void sub_23C4E901C()
{
  if ((atomic_load_explicit(&qword_27E1F7418, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F7418))
  {
    qword_27E1F73F8 = 0;
    *&dword_27E1F7400 = 0;
    qword_27E1F7408 = 0x800000000;
    __cxa_atexit(sub_23C4F09EC, &qword_27E1F73F8, &dword_23C496000);

    __cxa_guard_release(&qword_27E1F7418);
  }
}

uint64_t sub_23C4E90A0(void *a1, uint64_t a2)
{
  v3 = *(a1 + *(*a1 - 24) + 320);
  v11 = "air.sampler_states";
  v12 = 259;
  result = llvm::Module::getNamedMetadata(v3, &v11);
  if (result)
  {
    v5 = result;
    for (i = 0; ; ++i)
    {
      result = llvm::NamedMDNode::getNumOperands(v5);
      if (i >= result)
      {
        break;
      }

      Operand = llvm::NamedMDNode::getOperand(v5);
      v8 = *(Operand - 8 * *(Operand + 8) + 8);
      if (v8)
      {
        if (*v8 - 1 > 1)
        {
          v10 = 0;
        }

        else
        {
          v9 = *(v8 + 16);
          if (*(v9 + 16) == 3)
          {
            v10 = v9;
          }

          else
          {
            v10 = 0;
          }
        }

        sub_23C49B500(a2, v10);
      }
    }
  }

  return result;
}

uint64_t sub_23C4E9178(uint64_t result, unint64_t *a2)
{
  if (!result)
  {
    return result;
  }

  v2 = *(result + 16);
  v3 = v2 - 28;
  if (v2 >= 0x1C)
  {
    goto LABEL_8;
  }

  if (v2 == 5)
  {
LABEL_6:
    v3 = *(result + 18);
LABEL_8:
    while ((v3 & 0xFFFFFFFE) == 0x30)
    {
      v6 = *(result + 20);
      if ((v6 & 0x40000000) != 0)
      {
        v7 = *(result - 8);
      }

      else
      {
        v7 = (result - 32 * (v6 & 0x7FFFFFF));
      }

      result = *v7;
      v2 = *(*v7 + 16);
      if (result)
      {
        v8 = v2 >= 0x1C;
      }

      else
      {
        v8 = 0;
      }

      if (!v8)
      {
        if (result)
        {
          v9 = v2 == 5;
        }

        else
        {
          v9 = 0;
        }

        if (v9)
        {
          goto LABEL_6;
        }

        goto LABEL_4;
      }

      v3 = v2 - 28;
    }

    goto LABEL_21;
  }

LABEL_4:
  if (v2 != 16)
  {
LABEL_21:
    if (v2 != 3)
    {
      return 0;
    }

    v10 = *(result - 32);
    if (!v10 || *(v10 + 16) != 16)
    {
      return 0;
    }

    v4 = (v10 + 24);
    v5 = *(v10 + 32);
    goto LABEL_25;
  }

  v4 = (result + 24);
  v5 = *(result + 32);
LABEL_25:
  if (v5 >= 0x41)
  {
    v4 = *v4;
  }

  v11 = *v4;
  if ((v11 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  *a2 = v11;
  return 1;
}

void sub_23C4E9244(uint64_t a1, void *a2)
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

uint64_t sub_23C4E9344(void *a1, uint64_t a2, int *a3)
{
  v432 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = (a1 + *(*a1 - 24));
  size = v7[14].__r_.__value_.__l.__size_;
  v9 = *a3;
  if ((size[1673] & 1) != 0 || a3[1] != 2)
  {
    if (v9 == 3)
    {
      (*(*size + 288))(size, a1[19]);
      v6 = *a1;
      v9 = *a3;
    }
  }

  else if ((v9 & 0xFFFFFFFE) == 2)
  {
    v10 = "Read or write to cube texture not supported";
    v11 = v7 + 17;
LABEL_15:
    std::string::append(v11, v10);
    goto LABEL_16;
  }

  if (*(*(a1 + *(v6 - 24) + 344) + 1663) == 1 && v9 == 8)
  {
    v13 = (*(v6 + 304))(a1);
    if (v13)
    {
      v6 = *a1;
      if (*(v13 + 35))
      {
        v14 = *a1;
        v10 = "Large MRT not supported with image block write";
        v11 = (a1 + *(v6 - 24) + 408);
        goto LABEL_15;
      }
    }

    else
    {
      v6 = *a1;
    }
  }

  v16 = *(*(a1 + *(v6 - 24) + 344) + 1584);
  v17 = llvm::PointerType::get();
  v18 = *v17;
  v406 = v17;
  llvm::StructType::get();
  v19 = *a1;
  v373 = *(a3 + 32);
  if (*(a3 + 32))
  {
    v387 = *(*(a1 + *(v19 - 24) + 344) + 1644);
  }

  else
  {
    v387 = 0;
  }

  v20 = *(v19 - 24);
  v15 = 1;
  if (!*(a2 + 8))
  {
    goto LABEL_370;
  }

  v363 = *(*(a1 + v20 + 344) + 1661);
  v21 = a1 + 1;
  v371 = a1 + 43;
  v369 = a1 + 24;
  v370 = *a3 & 0xFFFFFFFE;
  v377 = *(**(*(a2 + 24) + 16) + 8);
  v365 = a1 + 40;
  v364 = a1 + 21;
  v22 = *(a2 + 8);
  v382 = a1 + 1;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v23 = *(v22 + 24);
        v22 = *(v22 + 8);
        sub_23C4C30FC(v21 + *(*a1 - 24), v23);
        v406 = *a3;
        v410 = 0;
        v411 = 0u;
        v412 = 0u;
        memset(v413, 0, 26);
        v417 = 0;
        v416 = 0u;
        v415 = 0u;
        v414 = 0u;
        v419 = 0u;
        memset(v420, 0, 28);
        v421 = 0;
        v422 = 0;
        v424 = 0;
        v423 = 0;
        v425 = 1;
        v426 = 0;
        v24 = a3[3];
        v418 = 4;
        v25 = *(v23 + 5) & 0x7FFFFFF;
        v409 = 0;
        v407 = v24;
        v26 = (v23 - 32 * v25);
        if (*(a3 + 23))
        {
          v27 = *&v26[8 * *(a3 + 23)];
        }

        else
        {
          v27 = 0;
        }

        v28 = *&v26[8 * *(a3 + 22)];
        if (v28 && v28[16] - 11 < 2)
        {
          goto LABEL_30;
        }

        if (!v27)
        {
          break;
        }

        if (*(v27 + 16) - 11 >= 2)
        {
          v405 = 0;
          v388 = v27;
          v30 = sub_23C4E9178(v27, &v405);
          if (!v28)
          {
            goto LABEL_37;
          }

          goto LABEL_35;
        }

LABEL_30:
        v29 = *v23;
        llvm::UndefValue::get();
        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v23);
        if (!v22)
        {
          goto LABEL_369;
        }
      }

      v388 = 0;
      v30 = 0;
      v405 = 0;
      if (!v28)
      {
        goto LABEL_37;
      }

LABEL_35:
      if (*(llvm::Value::stripPointerCasts(v28) + 16) >= 0x15u && !(*(*a1 + 272))(a1))
      {
        goto LABEL_46;
      }

LABEL_37:
      if (v30)
      {
        break;
      }

      v35 = (*(*a1 + 288))(a1);
      if (!v388 || (v35 & 1) != 0 || *(llvm::Value::stripPointerCasts(v388) + 16) <= 0x14u)
      {
        break;
      }

LABEL_46:
      if (!v22)
      {
        goto LABEL_369;
      }
    }

    if (((v30 | (*(*a1 + 232))(a1) & v387 ^ 1) & 1) == 0)
    {
      break;
    }

    v404 = 0;
    if (v30)
    {
      v32 = v405;
      if (v387)
      {
        v33 = ((v405 >> 16) & 0xF) - 1;
        if (v33 > 7)
        {
          LOWORD(v34) = 0;
        }

        else
        {
          v34 = dword_23C532B04[v33];
        }

        v404 = (32 * ((v405 & 0x6000) != 0)) | (((v405 & 0x6000) == 0x4000) << 6) | (((v405 & 0x1800) == 2048) << 7) | (((v405 & 0x600) == 512) << 8) | v34;
        v32 = v405 & 0xFFFFFFFFFFF0FFFFLL;
      }

      if (v370 == 4 && *(*(v371 + *(*a1 - 24)) + 1646) == 1)
      {
        v32 = v32 & 0xFFFFFFFFFFFF81FFLL | 0xA00;
      }

      v388 = sub_23C4EF198(a1, v32);
    }

    v381 = v22;
    v410 = (*a3 - 9) < 2;
    v386 = v28;
    v383 = v30;
    if (*(a3 + 27))
    {
      v36 = (v23 + 32 * *(a3 + 27) + -32 * (*(v23 + 5) & 0x7FFFFFF));
      v37 = (*v36 + 24);
      if (*(*v36 + 32) >= 0x41u)
      {
        v37 = *v37;
      }

      if (*v37)
      {
        v38 = v36[4];
        if (v38 && *(v38 + 16) <= 0x14u)
        {
          if (llvm::Constant::isZeroValue(v38))
          {
            goto LABEL_73;
          }

          if ((*(*v38 + 8) & 0xFE) == 0x12)
          {
            v39 = *(*v38 + 32);
            v40 = *(v369 + *(*a1 - 24));
            llvm::ConstantInt::get();
            Splat = llvm::ConstantDataVector::getSplat();
            if (v39)
            {
              for (i = 0; i != v39; ++i)
              {
                AggregateElement = llvm::Constant::getAggregateElement(v38);
                v44 = AggregateElement;
                v45 = *(AggregateElement + 32);
                if (v45 > 0x40)
                {
                  v46 = **(AggregateElement + 24);
                }

                else
                {
                  v46 = (*(AggregateElement + 24) << -v45) >> -v45;
                }

                if ((v46 - 8) <= 0xFFFFFFFFFFFFFFEFLL)
                {
                  v47 = *AggregateElement;
                  v44 = llvm::ConstantInt::get();
                }

                v48 = a1 + *(*a1 - 24);
                LOWORD(v431) = 257;
                v49 = *(v48 + 24);
                v50 = llvm::ConstantInt::get();
                Splat = sub_23C505AA8((v48 + 8), Splat, v44, v50, &v427);
              }
            }
          }

          else
          {
            v82 = *(v38 + 32);
            if (v82 > 0x40)
            {
              v83 = **(v38 + 24);
            }

            else
            {
              v83 = (*(v38 + 24) << -v82) >> -v82;
            }

            Splat = v38;
            if ((v83 - 8) <= 0xFFFFFFFFFFFFFFEFLL)
            {
              Splat = llvm::ConstantInt::get();
            }
          }
        }

        else
        {
          Splat = v36[4];
        }

        *(&v416 + 1) = Splat;
        v21 = a1 + 1;
        v28 = v386;
        v30 = v383;
      }
    }

LABEL_73:
    if (*(a3 + 31))
    {
      if (v410)
      {
        v51 = *(a1 + *(*a1 - 24) + 184);
        v52 = llvm::ConstantInt::get();
      }

      else
      {
        v52 = *(v23 + 4 * *(a3 + 31) + -4 * (*(v23 + 5) & 0x7FFFFFF));
      }

      v417 = v52;
    }

    if (v377 == 16)
    {
      if ((v387 & 1) == 0)
      {
        HIBYTE(v409) = 1;
      }

      if (*(a3 + 37))
      {
        v420[1] = *(v23 + 4 * *(a3 + 37) + -4 * (*(v23 + 5) & 0x7FFFFFF));
      }
    }

    v53 = *(a3 + 29);
    if (*(a3 + 29))
    {
      *(&v419 + 1) = *(v23 + 4 * v53 + -4 * (*(v23 + 5) & 0x7FFFFFF));
      v420[0] = *(v23 + 4 * v53 + -4 * (*(v23 + 5) & 0x7FFFFFF) + 4);
      v418 = 2;
      goto LABEL_85;
    }

    if (*(a3 + 28))
    {
      v57 = (v23 + 32 * *(a3 + 28) + -32 * (*(v23 + 5) & 0x7FFFFFF));
      v58 = *v57;
      *&v419 = v57[4];
      v59 = (v58 + 24);
      if (*(v58 + 32) >= 0x41u)
      {
        v59 = *v59;
      }

      v60 = *v59;
      v418 = v60 != 0;
      if (!HIDWORD(v406))
      {
LABEL_326:
        v418 = 3;
        *&v419 = 0;
        goto LABEL_85;
      }

      if (!v60 && ((*(*a1 + 224))(a1) & 1) == 0)
      {
        v418 = 1;
        v317 = *(a1 + *(*a1 - 24) + 160);
        NullValue = llvm::ConstantFP::get();
        goto LABEL_332;
      }

      if ((*(*a1 + 264))(a1))
      {
        v61 = *a1;
        if (*(*(v371 + *(*a1 - 24)) + 1651) == 1)
        {
          v418 = 0;
          v62 = *(v61 - 24);
          v63 = sub_23C4EE264(a1, v388, 1u);
          LOWORD(v431) = 257;
          NullValue = sub_23C497C88((v21 + v62), **(*v63 + 16), v63, 0, &v427);
LABEL_332:
          *&v419 = NullValue;
        }
      }
    }

    else
    {
      v72 = *(a3 + 30);
      if (!*(a3 + 30))
      {
        if (*(a3 + 39))
        {
          v418 = 1;
          v81 = *(v369 + *(*a1 - 24));
          NullValue = llvm::ConstantInt::get();
        }

        else
        {
          if (!v410)
          {
            goto LABEL_326;
          }

          v418 = 0;
          NullValue = llvm::Constant::getNullValue(*(a1 + *(*a1 - 24) + 152), v31);
        }

        goto LABEL_332;
      }

      if (HIDWORD(v406))
      {
        v418 = 1;
        v73 = *(v23 + 4 * v72 + -4 * (*(v23 + 5) & 0x7FFFFFF));
      }

      else if (v406 == 3)
      {
        v418 = 1;
        v89 = *(v369 + *(*a1 - 24));
        v73 = llvm::ConstantInt::get();
      }

      else
      {
        v73 = 0;
        v418 = 3;
      }

      *&v419 = v73;
      if (v363 && (*a3 == 8 || *a3 == 3))
      {
        v318 = *(*a1 - 24);
        v319 = sub_23C4EC4B4(a1, v28, 7u);
        LOWORD(v431) = 257;
        v320 = sub_23C497C88((v21 + v318), **(*v319 + 16), v319, 0, &v427);
        v321 = (a1 + *(*a1 - 24));
        v322 = v419;
        v323 = sub_23C505300(v321, v320, *v419);
        LOWORD(v431) = 257;
        v28 = v386;
        v324 = v322;
        v30 = v383;
        NullValue = sub_23C49A474((v321 + 1), v324, v323, &v427);
        goto LABEL_332;
      }
    }

LABEL_85:
    if (v373)
    {
      v420[2] = sub_23C504E2C(a1 + *(*a1 - 24), *(v23 + 4 * *(a3 + 32) + -4 * (*(v23 + 5) & 0x7FFFFFF)), 1);
    }

    if (*(a3 + 33))
    {
      v421 = *(v23 + 4 * *(a3 + 33) + -4 * (*(v23 + 5) & 0x7FFFFFF));
    }

    if (*(a3 + 34))
    {
      v422 = *(v23 + 4 * *(a3 + 34) + -4 * (*(v23 + 5) & 0x7FFFFFF));
    }

    if (*(a3 + 35))
    {
      v423 = *(v23 + 4 * *(a3 + 35) + -4 * (*(v23 + 5) & 0x7FFFFFF));
    }

    if (*(a3 + 36))
    {
      v54 = *(v23 + 4 * *(a3 + 36) + -4 * (*(v23 + 5) & 0x7FFFFFF));
      v55 = (v54 + 24);
      if (*(v54 + 32) >= 0x41u)
      {
        v55 = *v55;
      }

      v56 = *v55;
      goto LABEL_108;
    }

    if (v370 == 4)
    {
      v56 = 0;
LABEL_108:
      v424 = v56;
    }

    v65 = *a1;
    v378 = *a3;
    if (v388 || *a3 == 8)
    {
      v372 = 0;
      goto LABEL_167;
    }

    __p[0] = 4;
    __p[1] = 0;
    v402 = 0;
    if (!(*(v65 + 232))(a1))
    {
      if (HIDWORD(v406))
      {
        v68 = "agc.nnorm_sampler_wrapper_non_1d";
      }

      else
      {
        v68 = "agc.nnorm_sampler_wrapper_1d";
      }

      v69 = *(v365 + *(*a1 - 24));
      GlobalVariable = llvm::Module::getGlobalVariable();
      if (GlobalVariable)
      {
        v71 = GlobalVariable;
      }

      else
      {
        if (HIDWORD(v406))
        {
          v74 = "agc.nnorm_sampler_non_1d";
        }

        else
        {
          v74 = "agc.nnorm_sampler_1d";
        }

        v75 = 1;
        v76 = llvm::User::operator new(0x58);
        v77 = a1 + *(*a1 - 24);
        v78 = *(v77 + 40);
        v79 = *(*(v77 + 43) + 1584);
        BYTE1(v431) = 1;
        if (*v74)
        {
          v427 = v74;
          v80 = 3;
        }

        else
        {
          v80 = 1;
        }

        LOBYTE(v431) = v80;
        llvm::GlobalVariable::GlobalVariable();
        v76[80] |= 1u;
        v84 = *(*(v371 + *(*a1 - 24)) + 1604);
        v85 = __clz(v84) ^ 0x13F;
        if (v84)
        {
          v86 = v85;
        }

        else
        {
          v86 = 0;
        }

        v362 = v86 | v362 & 0xFFFFFFFFFFFF0000;
        llvm::GlobalObject::setAlignment();
        llvm::GlobalObject::setSection();
        sub_23C506A1C((a1 + *(*a1 - 24)));
        v427 = v76;
        llvm::ConstantStruct::get();
        v71 = llvm::User::operator new(0x58);
        v87 = *(v365 + *(*a1 - 24));
        BYTE1(v431) = 1;
        if (*v68)
        {
          v427 = v68;
          v75 = 3;
        }

        LOBYTE(v431) = v75;
        llvm::GlobalVariable::GlobalVariable();
        *(v71 + 80) |= 1u;
        llvm::GlobalVariable::setInitializer();
        v427 = 4;
        v428 = 0;
        v88 = v71;
        v429 = v71;
        if (v71 != -8192)
        {
          v88 = v71;
          if (v71 != -4096)
          {
            v88 = v71;
            if (v71)
            {
              llvm::ValueHandleBase::AddToUseList(&v427);
              v88 = v429;
            }
          }
        }

        sub_23C4EF514((a1 + 95), v88);
        v21 = a1 + 1;
        if (v429 != -8192 && v429 != -4096 && v429)
        {
          llvm::ValueHandleBase::RemoveFromUseList(&v427);
        }
      }

      sub_23C4D56F8(__p, v71);
      v30 = v383;
      goto LABEL_156;
    }

    if (*a3 == 3)
    {
      v67 = 0x807BFF0000002049;
      if (!a3[1])
      {
        goto LABEL_154;
      }

LABEL_132:
      v66 = v67 & 0xFFFFFFFFFFFFBFFFLL;
      goto LABEL_155;
    }

    v66 = 0x807BFF0000002049;
    if (*a3 == 2)
    {
      if (*(a3 + 39))
      {
        v67 = 0x807BFF0000002000;
      }

      else
      {
        v67 = ((8 * *(a1 + 10)) | (*(a1 + 10) << 6) | *(a1 + 10)) - 0x7F8400FFFFFFE000;
        if (!a3[1])
        {
LABEL_154:
          v66 = v67 & 0xFFFFFFFFFFFF9FFFLL;
          goto LABEL_155;
        }
      }

      goto LABEL_132;
    }

LABEL_155:
    v90 = sub_23C4EF198(a1, v66);
    sub_23C4D56F8(__p, v90);
LABEL_156:
    v91 = 0;
    v92 = v402;
    if (v402 && *(v402 + 16) == 3)
    {
      if ((*(v402 + 80) & 1) != 0 && (llvm::GlobalValue::isDeclaration(v402) & 1) == 0)
      {
        v91 = *(v92 - 4);
      }

      else
      {
        v91 = 0;
      }
    }

    v372 = v91;
    if (v402 != -8192 && v402 != -4096 && v402)
    {
      llvm::ValueHandleBase::RemoveFromUseList(__p);
    }

    v65 = *a1;
LABEL_167:
    sub_23C4C30FC(v21 + *(v65 - 24), v23);
    v93 = *(v23 + 4 * *(a3 + 26) + -4 * (*(v23 + 5) & 0x7FFFFFF));
    *&v416 = v93;
    if ((a3[1] & 0xFFFFFFFE) == 2)
    {
      v93 = sub_23C50593C(a1 + *(*a1 - 24), v93, 4);
      v375 = 0;
LABEL_201:
      *&v416 = v93;
      goto LABEL_202;
    }

    if (*(a3 + 39))
    {
      v94 = a3[2];
      v95 = *a1;
      v96 = 29;
      if (v94 == 1)
      {
        v96 = 30;
      }

      v368 = *(&a1[v96] + *(*a1 - 24));
      v97 = sub_23C4EEE44(a1, v28);
      v98 = *(v369 + *(*a1 - 24));
      v366 = llvm::ConstantInt::get();
      v99 = *(v369 + *(*a1 - 24));
      v100 = llvm::ConstantInt::get();
      v101 = *(*a1 - 24);
      v102 = v416;
      v367 = v100;
      if (v94 != 1)
      {
        v103 = a1 + v101;
        v104 = *(a1 + v101 + 192);
        if ((*(*v416 + 8) & 0xFE) == 0x12)
        {
          v105 = *(*v416 + 32);
          v104 = llvm::FixedVectorType::get();
        }

        if ((*(v104 + 8) & 0xFE) == 0x12)
        {
          v106 = *(**(v104 + 16) + 8);
        }

        else
        {
          v106 = *(v104 + 8);
        }

        LOWORD(v431) = 257;
        if (v106 > 6)
        {
          v107 = sub_23C49ACF8((v103 + 8), 39, v102, v104, &v427);
        }

        else
        {
          v107 = sub_23C4B284C((v103 + 8), v102, v104, &v427);
        }

        v102 = v107;
      }

      *&v416 = v102;
      v108 = *(*a1 - 24);
      LOWORD(v431) = 257;
      v375 = sub_23C497D84((v21 + v108), 36, v102, v97, &v427);
      v109 = *a3;
      if (*a3 == 3)
      {
        v110 = *(v371 + *(*a1 - 24));
        if ((*(*v110 + 520))(v110))
        {
          v111 = a1 + *(*a1 - 24);
          v113 = *(v111 + 7);
          v112 = *(v111 + 8);
          v427 = "skip_texture_buffer_write";
          LOWORD(v431) = 259;
          llvm::BasicBlock::splitBasicBlock();
          v114 = *(v113 + 40);
          if (v114 == v113 + 40)
          {
            v117 = 0;
          }

          else
          {
            v115 = (v114 - 24);
            if (v114)
            {
              v116 = v114 - 24;
            }

            else
            {
              v116 = 0;
            }

            if (*(v116 + 16) - 29 >= 0xB)
            {
              v117 = 0;
            }

            else
            {
              v117 = v115;
            }
          }

          llvm::Instruction::eraseFromParent(v117);
          v122 = *(a1 + *(*a1 - 24) + 336);
          v427 = "texture_buffer_write";
          LOWORD(v431) = 259;
          v123 = *(v113 + 56);
          operator new();
        }

        v109 = *a3;
      }

      if (v109 == 2 && (v118 = *(v371 + *(*a1 - 24)), (*(*v118 + 520))(v118)))
      {
        v119 = *(a1 + *(*a1 - 24) + 192);
        llvm::ConstantInt::get();
        LOWORD(v431) = 257;
      }

      else
      {
        v120 = *(v369 + *(*a1 - 24));
        llvm::ConstantInt::get();
        v121 = *(*a1 - 24);
        LOWORD(v431) = 257;
      }

      *&v416 = llvm::IRBuilderBase::CreateSelect();
      v124 = *(*a1 - 24);
      LOWORD(v431) = 257;
      v125 = sub_23C49A8E0(v21 + v124, v416, v366, &v427);
      v126 = *(*a1 - 24);
      LOWORD(v431) = 257;
      v127 = sub_23C49B560(v21 + v126, v416, v367, &v427);
      v128 = *(*a1 - 24);
      v129 = **(v368 + 16);
      LOWORD(v431) = 257;
      v130 = sub_23C4EF5F0(v21 + v128, v125, v129, &v427);
      v131 = *(*a1 - 24);
      v132 = **(v368 + 16);
      LOWORD(v431) = 257;
      v133 = sub_23C4EF5F0(v21 + v131, v127, v132, &v427);
      v134 = llvm::UndefValue::get();
      v135 = a1 + *(*a1 - 24);
      LOWORD(v431) = 257;
      v136 = *(v135 + 24);
      v137 = llvm::ConstantInt::get();
      v138 = (v135 + 8);
      v21 = a1 + 1;
      v139 = sub_23C505AA8(v138, v134, v130, v137, &v427);
      v140 = a1 + *(*a1 - 24);
      LOWORD(v431) = 257;
      v141 = *(v140 + 24);
      v142 = llvm::ConstantInt::get();
      v93 = sub_23C505AA8((v140 + 8), v139, v133, v142, &v427);
      v28 = v386;
      v30 = v383;
      goto LABEL_201;
    }

    v375 = 0;
LABEL_202:
    v143 = *a1;
    v144 = a1 + *(*a1 - 24);
    if (*(*(v144 + 344) + 1689) == 1 && (*(a1 + 15) & 1) == 0)
    {
      v145 = *a3;
      if (*a3 == 3)
      {
        if (a3[2] == 1)
        {
          *&v416 = sub_23C5066D8(v144, v93, 16, 0);
          v143 = *a1;
        }

        v146 = *(v364 + *(v143 - 24));
        v147 = llvm::ConstantInt::get();
        if (*(a3 + 31))
        {
          v148 = *(*a1 - 24);
          v149 = sub_23C4EC4B4(a1, *(v23 - 4 * (*(v23 + 5) & 0x7FFFFFF)), 2u);
          LOWORD(v431) = 257;
          v150 = sub_23C497C88((v21 + v148), **(*v149 + 16), v149, 0, &v427);
          v151 = a1 + *(*a1 - 24);
          LOWORD(v431) = 257;
          v152 = *(v151 + 24);
          v153 = llvm::ConstantInt::get();
          v154 = sub_23C5057E8((v151 + 8), v150, v153, &v427);
          v155 = *(*a1 - 24);
          v156 = v417;
          v157 = *v417;
          LOWORD(v431) = 257;
          v158 = sub_23C4A6F5C(v21 + v155, v154, v157, &v427);
          v403 = 257;
          v159 = sub_23C497D84((v21 + v155), 34, v156, v158, __p);
          v400 = 257;
          v147 = sub_23C49A98C(v21 + v155, v147, v159, &v399);
        }

        if (*(a3 + 35))
        {
          v160 = *(*a1 - 24);
          v161 = v423;
          v162 = *v423;
          v163 = llvm::ConstantInt::get();
          LOWORD(v431) = 257;
          v164 = sub_23C497D84((v21 + v160), 34, v161, v163, &v427);
          v403 = 257;
          sub_23C49A98C(v21 + v160, v147, v164, __p);
        }

        v28 = v386;
        v165 = v416;
        v166 = a1 + *(*a1 - 24);
        if ((*(*v416 + 8) & 0xFE) == 0x12)
        {
          LOWORD(v431) = 257;
          v167 = *(v166 + 24);
          v168 = llvm::ConstantInt::get();
          sub_23C5057E8((v166 + 8), v165, v168, &v427);
          v169 = *(*a1 - 24);
          v170 = v416;
          v171 = *v416;
          if ((*(*v416 + 8) & 0xFE) == 0x12)
          {
            v171 = **(v171 + 16);
          }

          v172 = a1 + v169;
          if (v171 != *(a1 + v169 + 192))
          {
            v173 = *(v172 + 23);
          }

          llvm::ConstantInt::get();
          LOWORD(v431) = 257;
          Select = llvm::IRBuilderBase::CreateSelect();
          v403 = 257;
          v175 = *(v172 + 24);
          v176 = llvm::ConstantInt::get();
          *&v416 = sub_23C505AA8((v172 + 8), v170, Select, v176, __p);
          v21 = a1 + 1;
          v28 = v386;
        }

        else
        {
          if (*v416 != *(v166 + 24))
          {
            v177 = *(v166 + 23);
          }

          llvm::ConstantInt::get();
          LOWORD(v431) = 257;
          *&v416 = llvm::IRBuilderBase::CreateSelect();
        }

        v145 = *a3;
        v30 = v383;
      }

      if (v145 == 2)
      {
        v178 = *(v364 + *(*a1 - 24));
        v179 = llvm::ConstantInt::get();
        if (v419)
        {
          v180 = *(*a1 - 24);
          v181 = sub_23C4EC4B4(a1, v28, 5u);
          LOWORD(v431) = 257;
          v182 = sub_23C497C88((v21 + v180), **(*v181 + 16), v181, 0, &v427);
          v183 = *(*a1 - 24);
          v184 = v419;
          v185 = *v419;
          LOWORD(v431) = 257;
          v186 = sub_23C4A6F5C(v21 + v183, v182, v185, &v427);
          v403 = 257;
          v187 = sub_23C497D84((v21 + v183), 34, v184, v186, __p);
          v400 = 257;
          v179 = sub_23C49A98C(v21 + v183, v179, v187, &v399);
        }

        if (*(a3 + 31))
        {
          v188 = *(*a1 - 24);
          v189 = sub_23C4EC4B4(a1, *(v23 - 4 * (*(v23 + 5) & 0x7FFFFFF)), 2u);
          LOWORD(v431) = 257;
          v190 = sub_23C497C88((v21 + v188), **(*v189 + 16), v189, 0, &v427);
          v191 = a1 + *(*a1 - 24);
          LOWORD(v431) = 257;
          v192 = *(v191 + 24);
          v193 = llvm::ConstantInt::get();
          v194 = sub_23C5057E8((v191 + 8), v190, v193, &v427);
          v195 = *(*a1 - 24);
          v196 = v417;
          v197 = *v417;
          LOWORD(v431) = 257;
          v198 = sub_23C4A6F5C(v21 + v195, v194, v197, &v427);
          v403 = 257;
          v199 = sub_23C497D84((v21 + v195), 34, v196, v198, __p);
          v400 = 257;
          v179 = sub_23C49A98C(v21 + v195, v179, v199, &v399);
        }

        if (*(a3 + 35))
        {
          v200 = *(*a1 - 24);
          v201 = v423;
          v202 = *v423;
          v203 = llvm::ConstantInt::get();
          LOWORD(v431) = 257;
          v204 = sub_23C497D84((v21 + v200), 34, v201, v203, &v427);
          v403 = 257;
          v179 = sub_23C49A98C(v21 + v200, v179, v204, __p);
        }

        if (*(a3 + 33))
        {
          v205 = *(*a1 - 24);
          v206 = sub_23C4EC4B4(a1, v386, 6u);
          LOWORD(v431) = 257;
          v207 = sub_23C497C88((v21 + v205), **(*v206 + 16), v206, 0, &v427);
          v208 = *(*a1 - 24);
          v209 = v421;
          v210 = *v421;
          LOWORD(v431) = 257;
          v211 = sub_23C4A6F5C(v21 + v208, v207, v210, &v427);
          v403 = 257;
          v212 = sub_23C497D84((v21 + v208), 34, v209, v211, __p);
          v400 = 257;
          sub_23C49A98C(v21 + v208, v179, v212, &v399);
        }

        v213 = v416;
        v214 = a1 + *(*a1 - 24);
        if ((*(*v416 + 8) & 0xFE) == 0x12)
        {
          LOWORD(v431) = 257;
          v215 = *(v214 + 24);
          v216 = llvm::ConstantInt::get();
          sub_23C5057E8((v214 + 8), v213, v216, &v427);
          v217 = *(*a1 - 24);
          v218 = v416;
          v219 = *v416;
          if ((*(*v416 + 8) & 0xFE) == 0x12)
          {
            v219 = **(v219 + 16);
          }

          v220 = a1 + v217;
          if (v219 != *(a1 + v217 + 192))
          {
            v221 = *(v220 + 23);
          }

          llvm::ConstantInt::get();
          LOWORD(v431) = 257;
          v222 = llvm::IRBuilderBase::CreateSelect();
          v403 = 257;
          v223 = *(v220 + 24);
          v224 = llvm::ConstantInt::get();
          *&v416 = sub_23C505AA8((v220 + 8), v218, v222, v224, __p);
          v21 = a1 + 1;
          v28 = v386;
        }

        else
        {
          v28 = v386;
          if (*v416 != *(v214 + 24))
          {
            v225 = *(v214 + 23);
          }

          llvm::ConstantInt::get();
          LOWORD(v431) = 257;
          *&v416 = llvm::IRBuilderBase::CreateSelect();
        }

        v30 = v383;
      }
    }

    BYTE1(v409) = (v387 & 1) == 0;
    LOBYTE(v409) = a3[5] & BYTE1(v409);
    *(&v412 + 1) = sub_23C4EC4B4(a1, v28, 2u);
    v413[0] = sub_23C4EC4B4(a1, v28, 3u);
    if (*a3 == 8 || *a3 == 3)
    {
      *&v411 = sub_23C4EF6D8(a1, v28);
      *&v412 = sub_23C4EC4B4(a1, v28, 1u);
      if ((*(*a1 + 280))(a1))
      {
        goto LABEL_246;
      }

      v226 = 4;
      v227 = &v413[1];
    }

    else
    {
      v228 = sub_23C4EF6D8(a1, v28);
      v226 = 0;
      *&v411 = v228;
      v227 = &v411 + 1;
    }

    *v227 = sub_23C4EC4B4(a1, v28, v226);
LABEL_246:
    if (v378 == 8)
    {
      v229 = 32 * *(a3 + 24);
      *&v414 = *(v23 + v229 + -32 * (*(v23 + 5) & 0x7FFFFFF));
      *(&v414 + 1) = *(v23 + v229 + -32 * (*(v23 + 5) & 0x7FFFFFF) + 32);
      *&v415 = *(v23 + v229 + -32 * (*(v23 + 5) & 0x7FFFFFF) + 64);
      *(&v415 + 1) = *(v23 + v229 + -32 * (*(v23 + 5) & 0x7FFFFFF) + 96);
      v408 = a3[4];
      v230 = *(v23 + 4 * *(a3 + 38) + -4 * (*(v23 + 5) & 0x7FFFFFF));
      v231 = (v230 + 24);
      if (*(v230 + 32) >= 0x41u)
      {
        v231 = *v231;
      }

      if (*v231)
      {
        v426 = (*(*a1 + 304))(a1);
      }

      goto LABEL_254;
    }

    v232 = v372;
    if (v372)
    {
      v233 = *(*a1 - 24);
      LODWORD(__p[0]) = 0;
      LOWORD(v431) = 257;
      v234 = v21 + v233;
LABEL_253:
      v413[2] = sub_23C49B32C(v234, v232, __p, 1, &v427);
      goto LABEL_254;
    }

    if (v370 == 4)
    {
      v242 = a1 + *(*a1 - 24);
      if (!(v30 & 1 | ((*(*(v242 + 43) + 1646) & 1) == 0)))
      {
        v293 = *(a1 + 178);
        if (v293)
        {
          v294 = a1[87];
          v295 = ((v388 >> 4) ^ (v388 >> 9)) & (v293 - 1);
          v296 = v294 + 48 * v295;
          v297 = *(v296 + 24);
          if (v388 == v297)
          {
LABEL_308:
            if (v296 != v294 + 48 * v293)
            {
              v298 = *(v296 + 40);
LABEL_359:
              if (v298)
              {
                v353 = v298[16] == 3;
              }

              else
              {
                v353 = 0;
              }

              if (v353 && (v298[80] & 1) != 0 && (llvm::GlobalValue::isDeclaration(v298) & 1) == 0)
              {
                v232 = *(v298 - 4);
              }

              else
              {
                v232 = 0;
              }

              LODWORD(__p[0]) = 0;
              LOWORD(v431) = 257;
              v234 = (v242 + 8);
              goto LABEL_253;
            }
          }

          else
          {
            v331 = 1;
            while (v297 != -4096)
            {
              v332 = v295 + v331++;
              v295 = v332 & (v293 - 1);
              v296 = v294 + 48 * v295;
              v297 = *(v296 + 24);
              if (v388 == v297)
              {
                goto LABEL_308;
              }
            }
          }
        }

        v380 = a1 + *(*a1 - 24);
        v333 = *(sub_23C4EF78C(a1[79], *(a1 + 162), v388) + 40);
        v334 = llvm::User::operator new(0x58);
        v335 = a1 + *(*a1 - 24);
        v336 = *(v335 + 40);
        v337 = *(*(v335 + 43) + 1584);
        v427 = "agc.gather_sampler_words";
        v429 = v333;
        LOWORD(v431) = 2051;
        v338 = llvm::GlobalVariable::GlobalVariable();
        *(v338 + 80) |= 1u;
        llvm::GlobalObject::setSection();
        v339 = __clz(*(*(v371 + *(*a1 - 24)) + 1604)) ^ 0x13F;
        llvm::GlobalObject::setAlignment();
        sub_23C506A1C((a1 + *(*a1 - 24)));
        v341 = llvm::Constant::getNullValue(*(*(**(*v388 + 16) + 16) + 8), v340);
        v342 = a1 + *(*a1 - 24);
        v343 = *(v342 + 25);
        v344 = *(*(v342 + 43) + 836);
        v345 = llvm::PointerType::get();
        v347 = llvm::Constant::getNullValue(v345, v346);
        v427 = v334;
        v428 = v341;
        v429 = v347;
        llvm::ConstantStruct::get();
        v298 = llvm::User::operator new(0x58);
        v348 = *(v365 + *(*a1 - 24));
        v427 = "agc.gather_sampler_state_struct_ptr";
        v429 = v333;
        LOWORD(v431) = 2051;
        v349 = llvm::GlobalVariable::GlobalVariable();
        *(v349 + 80) |= 1u;
        llvm::GlobalVariable::setInitializer();
        sub_23C4EDC2C(&v427, v388);
        v427 = &unk_284F1B7D8;
        v431 = a1 + 87;
        __p[0] = 0;
        v350 = sub_23C4FB49C(a1[87], *(a1 + 178), v430, __p);
        v351 = __p[0];
        if ((v350 & 1) == 0)
        {
          v351 = sub_23C4EDC90((a1 + 87), &v427, __p[0]);
          sub_23C4DDEAC((v351 + 1), &v428);
          v351[4] = v431;
          v351[5] = 0;
        }

        v21 = a1 + 1;
        v242 = v380;
        if (v430 != -8192 && v430 != -4096 && v430)
        {
          llvm::ValueHandleBase::RemoveFromUseList(&v428);
        }

        v351[5] = v298;
        v427 = 4;
        v428 = 0;
        v352 = v298;
        v429 = v298;
        if (v298 != -8192)
        {
          v352 = v298;
          if (v298 != -4096)
          {
            v352 = v298;
            if (v298)
            {
              llvm::ValueHandleBase::AddToUseList(&v427);
              v352 = v429;
            }
          }
        }

        sub_23C4EF514((a1 + 95), v352);
        v30 = v383;
        if (v429 != -8192 && v429 != -4096 && v429)
        {
          llvm::ValueHandleBase::RemoveFromUseList(&v427);
        }

        goto LABEL_359;
      }
    }

    v413[2] = sub_23C4EE264(a1, v388, 0);
    if (v30)
    {
      if (v387)
      {
        goto LABEL_257;
      }

      goto LABEL_271;
    }

    v257 = v388[16];
    if (v257 == 3)
    {
      v258 = (sub_23C4EF78C(a1[79], *(a1 + 162), v388) + 40);
LABEL_315:
      v235 = *v258;
      if (v235 != -1)
      {
        BYTE2(v409) = (*(*a1 + 256))(a1, v235) & 1;
      }

      goto LABEL_255;
    }

    if (v257 <= 0x14)
    {
      v302 = *(v369 + *(*a1 - 24));
      PtrToInt = llvm::ConstantExpr::getPtrToInt();
      v304 = (PtrToInt + 24);
      if (*(PtrToInt + 32) >= 0x41u)
      {
        v304 = *v304;
      }

      v258 = (a1[75] + 4 * *v304);
      goto LABEL_315;
    }

LABEL_254:
    v235 = 0xFFFFFFFFLL;
LABEL_255:
    if (v387)
    {
      if (v30)
      {
LABEL_257:
        v236 = &v404;
      }

      else
      {
        LOWORD(v427) = (*(*a1 + 240))(a1, v235);
        v236 = &v427;
      }

      v241 = sub_23C4EF7F0(a1, &v406, v236);
      goto LABEL_273;
    }

    if (v373)
    {
      v237 = v30;
    }

    else
    {
      v237 = 1;
    }

    if ((v237 & 1) == 0 && ((*(*a1 + 240))(a1, v235) & 0x10) != 0)
    {
      v238 = a1 + *(*a1 - 24);
      v239 = *(v238 + 43);
      v396 = *(v238 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v397, (v238 + 8));
      v398 = *(v238 + 26);
      v420[2] = (*(*v239 + 40))(v239, &v396, v420[2], 0);
      if (v397)
      {
        llvm::MetadataTracking::untrack();
      }
    }

LABEL_271:
    v243 = a1 + *(*a1 - 24);
    v244 = *(v243 + 43);
    v393 = *(v243 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v394, (v243 + 8));
    v395 = *(v243 + 26);
    v241 = (*(*v244 + 248))(v244, &v393, &v406);
    v240 = v394;
    if (v394)
    {
      llvm::MetadataTracking::untrack();
    }

LABEL_273:
    if (v241)
    {
      v245 = v241;
      if (v377 == 16)
      {
        v245 = v241;
        if ((v409 & 0x1000000) == 0)
        {
          v246 = a1 + *(*a1 - 24);
          v247 = *(v246 + 43);
          v390 = *(v246 + 56);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v391, (v246 + 8));
          v392 = *(v246 + 26);
          v245 = (*(*v247 + 264))(v247, &v390, v241);
          v240 = v391;
          if (v391)
          {
            llvm::MetadataTracking::untrack();
          }
        }
      }

      if (v375)
      {
        v248 = *(v371 + *(*a1 - 24));
        v249 = (*(*v248 + 520))(v248);
      }

      else
      {
        v249 = 0;
      }

      if (a3[1] == 2)
      {
        v250 = *(a1 + 15) ^ 1;
      }

      else
      {
        v250 = 0;
      }

      v251 = *a3;
      if (*a3 == 2 && ((v249 | v250) & 1) != 0)
      {
        v252 = v241;
        if (v377 == 16)
        {
          v253 = *(*a1 - 24);
          LODWORD(__p[0]) = 0;
          LOWORD(v431) = 257;
          v252 = sub_23C49B32C(v382 + v253, v241, __p, 1, &v427);
        }

        v389 = v252;
        v379 = llvm::Constant::getNullValue(*v252, v240);
        if ((*(*v252 + 2) & 0xFE) == 0x12)
        {
          v384 = **(*v252 + 2);
        }

        else
        {
          v384 = *v252;
        }

        v259 = *(*a1 - 24);
        v260 = sub_23C4EC4B4(a1, v386, 2u);
        LOWORD(v431) = 257;
        v261 = sub_23C497C88((v382 + v259), **(*v260 + 16), v260, 0, &v427);
        v262 = a1 + *(*a1 - 24);
        LOWORD(v431) = 257;
        v263 = *(v262 + 24);
        v264 = llvm::ConstantInt::get();
        v265 = sub_23C5057E8((v262 + 8), v261, v264, &v427);
        v266 = v265;
        if (v250)
        {
          v267 = v265;
          if (v419)
          {
            v268 = *(*a1 - 24);
            v269 = *v265;
            LOWORD(v431) = 257;
            v270 = sub_23C49ACF8(v382 + v268, 39, v419, v269, &v427);
            v271 = *(*a1 - 24);
            LOWORD(v431) = 257;
            v267 = sub_23C49B560(v382 + v271, v266, v270, &v427);
          }

          v272 = a1 + *(*a1 - 24);
          v273 = v416;
          LOWORD(v431) = 257;
          v274 = *(v272 + 24);
          v275 = llvm::ConstantInt::get();
          v276 = sub_23C5057E8((v272 + 8), v273, v275, &v427);
          v376 = v267;
          v277 = *v267;
          v403 = 257;
          v374 = sub_23C49ACF8((v272 + 8), 39, v276, v277, __p);
          v278 = *(*a1 - 24);
          v279 = sub_23C4EC4B4(a1, v386, 4u);
          v280 = **(*v279 + 16);
          v427 = "packedFormatAndAlpha";
          LOWORD(v431) = 259;
          v281 = sub_23C497C88((v382 + v278), v280, v279, 0, &v427);
          v282 = a1 + *(*a1 - 24);
          v283 = *(v282 + 24);
          v284 = llvm::ConstantInt::get();
          v427 = "alpha";
          LOWORD(v431) = 259;
          v285 = sub_23C49B560((v282 + 8), v281, v284, &v427);
          if (*(v384 + 8) <= 6u)
          {
            v286 = *(*a1 - 24);
            LOWORD(v431) = 257;
            v285 = sub_23C49EF94(v382 + v286, v285, v384, &v427);
          }

          v287 = sub_23C505300((a1 + *(*a1 - 24)), v285, v384);
          if ((*(*v389 + 8) & 0xFE) == 0x12)
          {
            v288 = a1 + *(*a1 - 24);
            LOWORD(v431) = 257;
            v289 = *(v288 + 24);
            v290 = llvm::ConstantInt::get();
            sub_23C505AA8((v288 + 8), v379, v287, v290, &v427);
          }

          v305 = *(*a1 - 24);
          LOWORD(v431) = 257;
          v306 = sub_23C497D84((v382 + v305), 35, v374, v376, &v427);
          v307 = v416;
          if ((*(*v416 + 8) & 0xFE) == 0x12)
          {
            v308 = a1 + *(*a1 - 24);
            LOWORD(v431) = 257;
            v309 = *(v308 + 24);
            v385 = v306;
            v310 = llvm::ConstantInt::get();
            v311 = sub_23C5057E8((v308 + 8), v307, v310, &v427);
            v312 = *v266;
            v403 = 257;
            v313 = sub_23C49ACF8((v308 + 8), 39, v311, v312, __p);
            v314 = *(*a1 - 24);
            LOWORD(v431) = 257;
            v315 = sub_23C497D84((v382 + v314), 35, v313, v376, &v427);
            v403 = 257;
            sub_23C49A98C(v382 + v314, v385, v315, __p);
          }

          v316 = *(*a1 - 24);
          LOWORD(v431) = 257;
          goto LABEL_334;
        }

        if (v249)
        {
          if (*(v384 + 8) <= 6u)
          {
            v291 = a1 + *(*a1 - 24);
            v292 = *(v291 + 20);
            LOWORD(v431) = 257;
            v266 = sub_23C49ACF8((v291 + 8), 49, v265, v292, &v427);
          }

          v325 = sub_23C505300((a1 + *(*a1 - 24)), v266, v384);
          v326 = a1 + *(*a1 - 24);
          LOWORD(v431) = 257;
          v327 = *(v326 + 24);
          v328 = llvm::ConstantInt::get();
          sub_23C505AA8((v326 + 8), v379, v325, v328, &v427);
          v329 = *(*a1 - 24);
          LOWORD(v431) = 257;
LABEL_334:
          v245 = llvm::IRBuilderBase::CreateSelect();
        }

        if (v377 == 16)
        {
          v330 = *(*a1 - 24);
          LODWORD(__p[0]) = 0;
          LOWORD(v431) = 257;
          v21 = a1 + 1;
          sub_23C49A744(v382 + v330, v241, v245, __p, 1, &v427);
        }

        else
        {
          v21 = a1 + 1;
        }
      }

      else if (v251 == 10)
      {
        v299 = a1 + *(*a1 - 24);
        LOWORD(v431) = 257;
        v300 = *(v299 + 24);
        v301 = llvm::ConstantInt::get();
        sub_23C5057E8((v299 + 8), v241, v301, &v427);
        v21 = a1 + 1;
      }

      else
      {
        v21 = a1 + 1;
        if (v251 == 9)
        {
          v254 = a1 + *(*a1 - 24);
          LOWORD(v431) = 257;
          v255 = *(v254 + 24);
          v256 = llvm::ConstantInt::get();
          sub_23C5057E8((v254 + 8), v241, v256, &v427);
        }
      }

      llvm::Value::replaceAllUsesWith();
    }

    llvm::Instruction::eraseFromParent(v23);
    v22 = v381;
    if (!v381)
    {
LABEL_369:
      v15 = 1;
      goto LABEL_370;
    }
  }

  v356 = sub_23C49F8D0(&v427, "sample");
  if (*a3 == 1)
  {
    v357 = "sample_compare";
LABEL_375:
    MEMORY[0x23EED4E90](v356, v357);
  }

  else if (*a3 == 5)
  {
    v357 = "gather_compare";
    goto LABEL_375;
  }

  std::operator+<char>();
  v358 = std::string::append(&v399, " must be known at compile time");
  v359 = v358->__r_.__value_.__r.__words[2];
  *__p = *&v358->__r_.__value_.__l.__data_;
  v402 = v359;
  v358->__r_.__value_.__l.__size_ = 0;
  v358->__r_.__value_.__r.__words[2] = 0;
  v358->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v402) >= 0)
  {
    v360 = __p;
  }

  else
  {
    v360 = __p[0];
  }

  if (SHIBYTE(v402) >= 0)
  {
    v361 = HIBYTE(v402);
  }

  else
  {
    v361 = __p[1];
  }

  std::string::append((a1 + *(*a1 - 24) + 408), v360, v361);
  if (SHIBYTE(v402) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v399.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v399.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v429) < 0)
  {
    operator delete(v427);
  }

LABEL_16:
  v15 = 0;
LABEL_370:
  v354 = *MEMORY[0x277D85DE8];
  return v15;
}
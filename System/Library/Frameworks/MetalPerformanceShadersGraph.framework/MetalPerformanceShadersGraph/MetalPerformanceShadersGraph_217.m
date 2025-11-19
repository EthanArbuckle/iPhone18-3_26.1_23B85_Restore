uint64_t llvm::APInt::countLeadingZerosSlowCase(llvm::APInt *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = ((v1 + 63) >> 6) + 1;
  while (1)
  {
    v4 = *(*this + 8 * (v3 - 2));
    if (v4)
    {
      break;
    }

    v2 += 64;
    if (--v3 <= 1)
    {
      if ((v1 & 0x3F) != 0)
      {
        v5 = v1 | 0xFFFFFFC0;
      }

      else
      {
        v5 = 0;
      }

      return (v2 + v5);
    }
  }

  v7 = __clz(v4) + v2;
  if ((v1 & 0x3F) != 0)
  {
    v8 = v1 | 0xFFFFFFC0;
  }

  else
  {
    v8 = 0;
  }

  return (v7 + v8);
}

unint64_t llvm::APInt::countLeadingOnesSlowCase(llvm::APInt *this)
{
  v1 = *(this + 2);
  if ((v1 & 0x3F) != 0)
  {
    v2 = *(this + 2) & 0x3F;
  }

  else
  {
    v2 = 64;
  }

  if ((v1 & 0x3F) != 0)
  {
    v3 = 64 - (v1 & 0x3F);
  }

  else
  {
    v3 = 0;
  }

  v4 = *this;
  result = __clz(~(*(*this + (((v1 + 63) >> 3) & 0x3FFFFFF8) - 8) << v3));
  if (v2 == result && v1 >= 0x41)
  {
    v6 = ((v1 + 63) >> 6) - 1;
    LODWORD(result) = v2;
    while (1)
    {
      v7 = *(v4 + 8 * --v6);
      if (v7 != -1)
      {
        break;
      }

      result = (result + 64);
      if (v6 <= 0)
      {
        return result;
      }
    }

    return __clz(~v7) + result;
  }

  return result;
}

uint64_t llvm::APInt::countTrailingZerosSlowCase(unint64_t **this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = (v1 + 63) >> 6;
  v4 = *this;
  v5 = v3 << 6;
  while (!*v4)
  {
    ++v4;
    v2 -= 64;
    if (!--v3)
    {
      if (v1 >= v5)
      {
        return v5;
      }

      else
      {
        return v1;
      }
    }
  }

  v7 = __clz(__rbit64(*v4)) - v2;
  if (v1 >= v7)
  {
    return v7;
  }

  else
  {
    return v1;
  }
}

uint64_t llvm::APInt::countTrailingOnesSlowCase(llvm::APInt *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = (v1 + 63) >> 6;
  v4 = *this;
  result = (v3 << 6);
  while (*v4 == -1)
  {
    ++v4;
    v2 -= 64;
    if (!--v3)
    {
      return result;
    }
  }

  return __clz(__rbit64(~*v4)) - v2;
}

char *llvm::APInt::trunc@<X0>(char *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = this;
  v5 = *(this + 2);
  if (a2 > 0x40)
  {
    if (v5 == a2)
    {
      *(a3 + 8) = a2;
      v8 = (a2 + 63) >> 3;
      v9 = operator new[](v8 & 0x3FFFFFF8);
      *a3 = v9;
      v10 = *v3;

      return memcpy(v9, v10, v8 & 0x3FFFFFF8);
    }

    else
    {
      this = operator new[](((a2 + 63) >> 3) & 0x3FFFFFF8);
      v12 = 0;
      *(a3 + 8) = a2;
      *a3 = this;
      v13 = a2 >> 6;
      v14 = *v3;
      if (a2 < 0x100)
      {
        goto LABEL_17;
      }

      if ((this - v14) < 0x20)
      {
        goto LABEL_17;
      }

      v12 = v13 & 0x3FFFFFC;
      v15 = (v14 + 16);
      v16 = this + 16;
      v17 = v12;
      do
      {
        v18 = *v15;
        *(v16 - 1) = *(v15 - 1);
        *v16 = v18;
        v15 += 2;
        v16 += 2;
        v17 -= 4;
      }

      while (v17);
      if (v12 != v13)
      {
LABEL_17:
        v19 = &v14[8 * v12];
        v20 = &this[8 * v12];
        v21 = v13 - v12;
        do
        {
          v22 = *v19;
          v19 += 8;
          *v20 = v22;
          v20 += 8;
          --v21;
        }

        while (v21);
      }

      v23 = -a2 & 0x3F;
      if (v23)
      {
        *&this[8 * v13] = *(*v3 + v13) & (0xFFFFFFFFFFFFFFFFLL >> v23);
      }
    }
  }

  else
  {
    if (v5 >= 0x41)
    {
      v3 = *this;
    }

    v6 = *v3;
    *(a3 + 8) = a2;
    v7 = 0xFFFFFFFFFFFFFFFFLL >> -a2;
    if (!a2)
    {
      v7 = 0;
    }

    *a3 = v6 & v7;
  }

  return this;
}

const void **llvm::APInt::sext@<X0>(const void **this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = this;
  if (a2 > 0x40)
  {
    v9 = *(this + 2);
    if (v9 == a2)
    {
      *(a3 + 8) = a2;
      v10 = (a2 + 63) >> 3;
      v11 = operator new[](v10 & 0x3FFFFFF8);
      *a3 = v11;
      v12 = *v4;

      return memcpy(v11, v12, v10 & 0x3FFFFFF8);
    }

    else
    {
      v13 = (a2 + 63) >> 6;
      v14 = operator new[](8 * v13);
      v15 = v14;
      *(a3 + 8) = a2;
      *a3 = v14;
      v16 = v4;
      if (v9 >= 0x41)
      {
        v16 = *v4;
      }

      v17 = (v9 + 63) >> 6;
      memcpy(v14, v16, 8 * v17);
      v15[(v17 - 1)] = (v15[(v17 - 1)] << -v9) >> -v9;
      v18 = v9 - 1;
      if (v9 >= 0x41)
      {
        v4 = (*v4 + 8 * (v18 >> 6));
      }

      if ((*v4 >> v18))
      {
        v19 = -1;
      }

      else
      {
        v19 = 0;
      }

      this = memset(&v15[v17], v19, (8 * (v13 - v17)));
      v15[(v13 - 1)] &= 0xFFFFFFFFFFFFFFFFLL >> -a2;
    }
  }

  else
  {
    v6 = *(this + 2);
    v7 = (*this << -v6) >> -v6;
    if (!v6)
    {
      v7 = 0;
    }

    *(a3 + 8) = a2;
    v8 = 0xFFFFFFFFFFFFFFFFLL >> -a2;
    if (!a2)
    {
      v8 = 0;
    }

    *a3 = v7 & v8;
  }

  return this;
}

void llvm::APInt::zextOrTrunc(const void **this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      *(a3 + 8) = v4;
      if (v4 > 0x40)
      {
        v12 = (v4 + 63) >> 3;
        v14 = operator new[](v12 & 0x3FFFFFF8);
        *a3 = v14;
        v15 = *v3;

        memcpy(v14, v15, v12 & 0x3FFFFFF8);
      }

      else
      {
        *a3 = *this;
      }
    }

    else
    {

      llvm::APInt::trunc(this, a2, a3);
    }
  }

  else if (a2 > 0x40)
  {
    v6 = (a2 + 63) >> 6;
    v9 = operator new[](8 * v6);
    v10 = v9;
    *(a3 + 8) = a2;
    *a3 = v9;
    if (v4 >= 0x41)
    {
      v3 = *v3;
    }

    v11 = (v4 + 63) >> 6;
    memcpy(v9, v3, 8 * v11);

    bzero(&v10[8 * v11], (8 * (v6 - v11)));
  }

  else
  {
    v5 = *this;
    *(a3 + 8) = a2;
    *a3 = v5 & (0xFFFFFFFFFFFFFFFFLL >> -a2);
  }
}

char *llvm::APInt::sextOrTrunc@<X0>(char *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(this + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      *(a3 + 8) = v4;
      if (v4 > 0x40)
      {
        v5 = (v4 + 63) >> 3;
        v6 = this;
        v8 = operator new[](v5 & 0x3FFFFFF8);
        *a3 = v8;
        v9 = *v6;

        return memcpy(v8, v9, v5 & 0x3FFFFFF8);
      }

      else
      {
        *a3 = *this;
      }
    }

    else
    {

      return llvm::APInt::trunc(this, a2, a3);
    }
  }

  else
  {

    return llvm::APInt::sext(this, a2, a3);
  }

  return this;
}

unsigned int *llvm::APInt::ashrInPlace(unsigned int *this, const llvm::APInt *a2)
{
  v3 = this[2];
  v4 = this[2];
  v5 = *(a2 + 2);
  if (v5 < 0x41)
  {
    goto LABEL_10;
  }

  v6 = 0;
  a2 = *a2;
  v7 = ((v5 + 63) >> 6) + 1;
  while (1)
  {
    v8 = *(a2 + (v7 - 2));
    if (v8)
    {
      break;
    }

    v6 += 64;
    if (--v7 <= 1)
    {
      goto LABEL_7;
    }
  }

  v6 += __clz(v8);
LABEL_7:
  v9 = v5 | 0xFFFFFFC0;
  if ((v5 & 0x3F) == 0)
  {
    v9 = 0;
  }

  if ((v5 - v9 - v6) <= 0x40)
  {
LABEL_10:
    v10 = *a2;
    if (v10 <= v3)
    {
      v4 = v10;
    }
  }

  if (v3 > 0x40)
  {
    return llvm::APInt::ashrSlowCase(this, v4);
  }

  v11 = (*this << -v3) >> -v3;
  if (v3 == v4)
  {
    v12 = 63;
  }

  else
  {
    v12 = v4;
  }

  v13 = v3 == 0;
  if (!v3)
  {
    v11 = 0;
  }

  v14 = v11 >> v12;
  v15 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
  if (v13)
  {
    v15 = 0;
  }

  *this = v14 & v15;
  return this;
}

void *llvm::APInt::ashrSlowCase(void *this, unsigned int a2)
{
  if (a2)
  {
    return llvm::APInt::ashrSlowCase(this, a2);
  }

  return this;
}

void llvm::APInt::lshrInPlace(llvm::APInt *this, unint64_t **a2)
{
  v2 = *(this + 2);
  v3 = *(this + 2);
  v4 = *(a2 + 2);
  if (v4 < 0x41)
  {
    v5 = *a2;
    if (*a2 > v2)
    {
      goto LABEL_14;
    }

LABEL_13:
    v3 = v5;
    goto LABEL_14;
  }

  v6 = 0;
  v7 = *a2;
  v8 = ((v4 + 63) >> 6) + 1;
  while (1)
  {
    v9 = v7[(v8 - 2)];
    if (v9)
    {
      break;
    }

    v6 += 64;
    if (--v8 <= 1)
    {
      goto LABEL_9;
    }
  }

  v6 += __clz(v9);
LABEL_9:
  v10 = v4 | 0xFFFFFFC0;
  if ((v4 & 0x3F) == 0)
  {
    v10 = 0;
  }

  if ((v4 - v10 - v6) <= 0x40)
  {
    v5 = *v7;
    if (*v7 <= v2)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v2 > 0x40)
  {
    if (v3)
    {
      v11 = *this;
      v12 = (v2 + 63) >> 6;
      v13 = v3 >> 6;
      if (v3 >> 6 >= v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = v3 >> 6;
      }

      v15 = (v12 - v14);
      v16 = v3 & 0x3F;
      if (v16)
      {
        if (v13 < v12)
        {
          v17 = v11[v14] >> v16;
          *v11 = v17;
          if (v15 != 1)
          {
            v18 = 1 - v15;
            v19 = v11 + 1;
            v20 = v14 + 1;
            do
            {
              *(v19 - 1) = (v11[v20] << (64 - v16)) | v17;
              v17 = v11[v20] >> v16;
              *v19++ = v17;
              ++v20;
            }

            while (!__CFADD__(v18++, 1));
          }
        }
      }

      else
      {
        memmove(*this, &v11[v14], (8 * v15));
      }

      bzero(&v11[v15], (8 * v14));
    }
  }

  else if (v2 == v3)
  {
    *this = 0;
  }

  else
  {
    *this >>= v3;
  }
}

void llvm::APInt::lshrSlowCase(void **this, unsigned int a2)
{
  if (a2)
  {
    v2 = *this;
    v3 = (*(this + 2) + 63) >> 6;
    if (a2 >> 6 >= v3)
    {
      v4 = (*(this + 2) + 63) >> 6;
    }

    else
    {
      v4 = a2 >> 6;
    }

    v5 = (v3 - v4);
    v6 = a2 & 0x3F;
    if ((a2 & 0x3F) != 0)
    {
      if (a2 >> 6 < v3)
      {
        v7 = v2[v4] >> v6;
        *v2 = v7;
        if (v5 != 1)
        {
          v8 = v4 + 1;
          v9 = v2 + 1;
          v10 = 1 - v5;
          do
          {
            *(v9 - 1) = (v2[v8] << (64 - v6)) | v7;
            v7 = v2[v8] >> v6;
            *v9++ = v7;
            ++v8;
          }

          while (!__CFADD__(v10++, 1));
        }
      }
    }

    else
    {
      memmove(*this, &v2[v4], (8 * v5));
    }

    bzero(&v2[v5], (8 * v4));
  }
}

void llvm::APInt::tcShiftRight(llvm::APInt *this, unint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    if (a3 >> 6 >= a2)
    {
      v3 = a2;
    }

    else
    {
      v3 = a3 >> 6;
    }

    v4 = a2 - v3;
    v5 = a3 & 0x3F;
    if ((a3 & 0x3F) != 0)
    {
      if (a3 >> 6 < a2)
      {
        v6 = *(this + v3) >> v5;
        *this = v6;
        if (v4 != 1)
        {
          v7 = 1 - v4;
          v8 = v3 + 1;
          v9 = (this + 8);
          do
          {
            *(v9 - 1) = (*(this + v8) << (64 - v5)) | v6;
            v6 = *(this + v8) >> v5;
            *v9++ = v6;
            ++v8;
          }

          while (!__CFADD__(v7++, 1));
        }
      }
    }

    else
    {
      v11 = this;
      memmove(this, this + 8 * v3, (8 * v4));
      this = v11;
    }

    v12 = this + 8 * v4;

    bzero(v12, 8 * v3);
  }
}

uint64_t llvm::APInt::operator<<=(uint64_t result, uint64_t *a2)
{
  v3 = *(result + 8);
  v4 = *(result + 8);
  v5 = *(a2 + 2);
  if (v5 < 0x41)
  {
    goto LABEL_10;
  }

  v6 = 0;
  a2 = *a2;
  v7 = ((v5 + 63) >> 6) + 1;
  while (1)
  {
    v8 = a2[(v7 - 2)];
    if (v8)
    {
      break;
    }

    v6 += 64;
    if (--v7 <= 1)
    {
      goto LABEL_7;
    }
  }

  v6 += __clz(v8);
LABEL_7:
  v9 = v5 | 0xFFFFFFC0;
  if ((v5 & 0x3F) == 0)
  {
    v9 = 0;
  }

  if ((v5 - v9 - v6) <= 0x40)
  {
LABEL_10:
    v10 = *a2;
    if (v10 <= v3)
    {
      v4 = v10;
    }
  }

  if (v3 > 0x40)
  {
    v13 = result;
    llvm::APInt::shlSlowCase(result, v4);
    return v13;
  }

  else
  {
    if (v3 == v4)
    {
      v11 = 0;
    }

    else
    {
      v11 = *result << v4;
    }

    if (v3)
    {
      v12 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
    }

    else
    {
      v12 = 0;
    }

    *result = v11 & v12;
  }

  return result;
}

void llvm::APInt::tcShiftLeft(llvm::APInt *this, unint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    if (a3 >> 6 >= a2)
    {
      v3 = a2;
    }

    else
    {
      v3 = a3 >> 6;
    }

    v4 = a3 & 0x3F;
    if ((a3 & 0x3F) != 0)
    {
      if (a3 >> 6 < a2)
      {
        v5 = a2 - 1;
        v6 = *(this + v5 - v3) << v4;
        v7 = (this + 8 * v5);
        *v7 = v6;
        if (v5 > v3)
        {
          v8 = a2 - 2 - v3;
          v9 = (this + 8 * (a2 - 2));
          do
          {
            *v7 = (*(this + v8) >> (64 - v4)) | v6;
            --v5;
            v6 = *(this + v8) << v4;
            v7 = (this + 8 * v5);
            *v9-- = v6;
            --v8;
          }

          while (v3 < v5);
        }
      }

      v10 = 8 * v3;
    }

    else
    {
      v11 = this;
      memmove(this + 8 * v3, this, 8 * (a2 - v3));
      this = v11;
      v10 = 8 * v3;
    }

    bzero(this, v10);
  }
}

void llvm::APInt::udiv(const void **this@<X0>, const llvm::APInt *a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = *(this + 2);
  if (v3 <= 0x40)
  {
    v4 = *this / *a2;
    a3[2] = v3;
    v5 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
    if (!v3)
    {
      v5 = 0;
    }

    *a3 = v4 & v5;
    return;
  }

  v6 = 0;
  v7 = v3 + 63;
  v8 = (v3 + 63) >> 6;
  v9 = *this;
  v10 = v8 + 1;
  while (1)
  {
    v11 = v9[(v10 - 2)];
    if (v11)
    {
      break;
    }

    v6 += 64;
    if (--v10 <= 1)
    {
      goto LABEL_10;
    }
  }

  v6 += __clz(v11);
LABEL_10:
  v12 = v3 | 0xFFFFFFC0;
  if ((v3 & 0x3F) == 0)
  {
    v12 = 0;
  }

  v13 = v6 + v12;
  v14 = *(a2 + 2);
  if (v14 > 0x40)
  {
    v17 = 0;
    v15 = *a2;
    v18 = ((v14 + 63) >> 6) + 1;
    while (1)
    {
      v19 = v15[(v18 - 2)];
      if (v19)
      {
        break;
      }

      v17 += 64;
      if (--v18 <= 1)
      {
        goto LABEL_20;
      }
    }

    v17 += __clz(v19);
LABEL_20:
    v20 = v14 | 0xFFFFFFC0;
    if ((v14 & 0x3F) == 0)
    {
      v20 = 0;
    }

    v16 = v17 + v20;
    if (v3 == v13)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v15 = *a2;
    v16 = v14 + __clz(*a2) - 64;
    if (v3 == v13)
    {
      goto LABEL_28;
    }
  }

  v21 = (v14 - v16);
  if (v21 == 1)
  {
    a3[2] = v3;
    v22 = v7 >> 3;
    v24 = operator new[]((v7 >> 3) & 0x3FFFFFF8);
    *a3 = v24;

    memcpy(v24, v9, v22 & 0x3FFFFFF8);
    return;
  }

  v25 = (((v3 - v13) + 63) >> 6);
  v26 = ((v21 + 63) >> 6);
  if (v25 < v26)
  {
LABEL_28:
    a3[2] = v3;
    v27 = v7 >> 3;
    v29 = operator new[]((v7 >> 3) & 0x3FFFFFF8);
    bzero(v29, v27 & 0x3FFFFFF8);
    *a3 = v29;
    *v29 = 0;
    return;
  }

  v30 = v8;
  while (v30 * 8)
  {
    v31 = v9[v30 - 1];
    v32 = v15[--v30];
    if (v31 != v32)
    {
      if (v31 <= v32)
      {
        goto LABEL_28;
      }

      break;
    }
  }

  if (!memcmp(*this, v15, (v7 >> 3) & 0x3FFFFFF8))
  {
    v37 = a3;
    v38 = v3;
    v36 = 1;
    goto LABEL_37;
  }

  if (v25 == 1)
  {
    v36 = *v9 / *v15;
    v37 = a3;
    v38 = v3;
LABEL_37:

    llvm::APInt::APInt(v37, v38, v36, 0, 1);
    return;
  }

  llvm::APInt::APInt(a3, v3, 0, 0, 1);
  v40 = *this;
  v41 = *a2;
  v42 = *a3;

  llvm::APInt::divide(v40, v25, v41, v26, v42, 0, v39);
}

void llvm::APInt::divide(llvm::APInt *this, const unint64_t *a2, int32x4_t *a3, const unint64_t *a4, int8x16_t *a5, unint64_t *a6, unint64_t *a7)
{
  v169 = a5;
  v166 = this;
  v167 = a3;
  v171 = *MEMORY[0x1E69E9840];
  v168 = a4;
  v8 = (2 * a4);
  v9 = (2 * a2);
  if (a6)
  {
    v10 = 4;
  }

  else
  {
    v10 = 3;
  }

  v11 = (v10 * v8 + 2 * (v9 - v8)) | 1;
  v12 = a2;
  v13 = (2 * a2) | 1u;
  v14 = 4 * v13;
  if (v11 > 0x80)
  {
    v15 = operator new[](4 * v13);
    v16 = operator new[](4 * v8);
    v18 = operator new[](4 * v9);
    v20 = a6;
    if (a6)
    {
      v21 = operator new[](4 * v8);
      bzero(v15, v14);
      v22 = v168;
      v23 = v12;
      if (!v12)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v21 = 0;
      bzero(v15, v14);
      v22 = v168;
      v23 = v12;
      if (!v12)
      {
        goto LABEL_18;
      }
    }

LABEL_14:
    if (v23 > 0xF)
    {
      v24 = 0;
      v49 = 8 * v23 - 8;
      if (v15->i64 + v49 + 4 >= v15->i64 + 4 && &v15->i8[v49] >= v15)
      {
        v50 = 0;
        v24 = v23 & 0xFFFFFFF8;
        v51 = (v166 + 32);
        do
        {
          v53 = v51[-2];
          v52 = v51[-1];
          v55 = *v51;
          v54 = v51[1];
          v51 += 4;
          v178.val[0] = vuzp1q_s32(v53, v52);
          v178.val[1] = vuzp2q_s32(v53, v52);
          v172.val[0] = vuzp1q_s32(v55, v54);
          v56 = (4 * v50) & 0x3FFFFFFC0;
          v57 = (v15->i32 + v56);
          vst2q_f32(v57, v178);
          v172.val[1] = vuzp2q_s32(v55, v54);
          v58 = (v15[2].i32 + v56);
          vst2q_f32(v58, v172);
          v50 += 16;
        }

        while (((2 * v23) & 0x1FFFFFFF0) != v50);
        if (v24 == v23)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v24 = 0;
    }

    v25 = 2 * v24;
    v26 = v23 - v24;
    v27 = (v166 + 8 * v24);
    do
    {
      v28 = *v27++;
      v15->i32[v25] = v28;
      v15->i32[v25 + 1] = HIDWORD(v28);
      v25 += 2;
      --v26;
    }

    while (v26);
    goto LABEL_18;
  }

  v15 = v170;
  v16 = &v170[v13];
  v17 = v8 + v13;
  v18 = &v170[v17];
  v19 = &v170[(v17 + v9)];
  v20 = a6;
  if (a6)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  bzero(v170, v14);
  v22 = v168;
  v23 = v12;
  if (v12)
  {
    goto LABEL_14;
  }

LABEL_18:
  v15->i32[v9] = 0;
  bzero(v16, 4 * v8);
  if (!v22)
  {
    goto LABEL_23;
  }

  if (v22 <= 0xF)
  {
    v29 = 0;
LABEL_21:
    v30 = 2 * v29;
    v31 = v22 - v29;
    v32 = &v167->i64[v29];
    do
    {
      v33 = *v32++;
      v16->i32[v30] = v33;
      v16->i32[v30 + 1] = HIDWORD(v33);
      v30 += 2;
      --v31;
    }

    while (v31);
    goto LABEL_23;
  }

  v29 = 0;
  v59 = 8 * v22 - 8;
  if (v16->i64 + v59 + 4 < v16->i64 + 4)
  {
    goto LABEL_21;
  }

  if (&v16->i8[v59] < v16)
  {
    goto LABEL_21;
  }

  v60 = 0;
  v29 = v22 & 0xFFFFFFF8;
  v61 = v167 + 2;
  do
  {
    v63 = v61[-2];
    v62 = v61[-1];
    v65 = *v61;
    v64 = v61[1];
    v61 += 4;
    v179.val[0] = vuzp1q_s32(v63, v62);
    v179.val[1] = vuzp2q_s32(v63, v62);
    v173.val[0] = vuzp1q_s32(v65, v64);
    v66 = (4 * v60) & 0x3FFFFFFC0;
    v67 = (v16->i32 + v66);
    vst2q_f32(v67, v179);
    v173.val[1] = vuzp2q_s32(v65, v64);
    v68 = (v16[2].i32 + v66);
    vst2q_f32(v68, v173);
    v60 += 16;
  }

  while (((2 * v22) & 0x1FFFFFFF0) != v60);
  if (v29 != v22)
  {
    goto LABEL_21;
  }

LABEL_23:
  bzero(v18, 4 * v9);
  if (v20)
  {
    bzero(v21, 4 * v8);
  }

  if (v8)
  {
    while (!v16[-1].i32[v8 + 3])
    {
      if (!--v8)
      {
        v34 = v9;
        if (v9)
        {
          goto LABEL_33;
        }

        goto LABEL_37;
      }
    }

    LODWORD(v9) = v9 - v8;
    v34 = v8 + v9;
    if (!(v8 + v9))
    {
      goto LABEL_37;
    }
  }

  else
  {
    v34 = v9 - v8;
    if (v9 == v8)
    {
      goto LABEL_37;
    }
  }

LABEL_33:
  v35 = v34;
  while (!v15[-1].i32[v35 + 3])
  {
    LODWORD(v9) = v9 - 1;
    if (!(--v35 * 4))
    {
      LODWORD(v9) = -v8;
      break;
    }
  }

LABEL_37:
  v36 = (v8 - 1);
  if (v8 != 1)
  {
    v44 = __clz(v16->u32[v36]);
    v45 = (v9 + v8);
    if (!v44)
    {
      v69 = 0;
      goto LABEL_83;
    }

    if (!v45)
    {
      v69 = 0;
      goto LABEL_74;
    }

    v46 = 32 - v44;
    if (v45 > 7)
    {
      v47 = v45 & 0xFFFFFFF8;
      v70 = vdupq_n_s32(v44);
      v71 = v15 + 1;
      v72 = 0uLL;
      v73 = vnegq_s32(vdupq_n_s32(v46));
      v74 = v47;
      do
      {
        v75 = v71[-1];
        v76 = vshlq_u32(v75, v73);
        v77 = vextq_s8(v72, v76, 0xCuLL);
        v72 = vshlq_u32(*v71, v73);
        v78 = vorrq_s8(vshlq_u32(*v71, v70), vextq_s8(v76, v72, 0xCuLL));
        v71[-1] = vorrq_s8(vshlq_u32(v75, v70), v77);
        *v71 = v78;
        v71 += 2;
        v74 -= 8;
      }

      while (v74);
      v48 = v72.i32[3];
      v69 = v72.i32[3];
      if (v47 == v45)
      {
LABEL_74:
        if (!v8)
        {
          goto LABEL_83;
        }

        v81 = 32 - v44;
        if (v8 > 7)
        {
          v82 = v8 & 0xFFFFFFF8;
          v84 = vdupq_n_s32(v44);
          v85 = v16 + 1;
          v86 = 0uLL;
          v87 = vnegq_s32(vdupq_n_s32(v81));
          v88 = v82;
          do
          {
            v89 = v85[-1];
            v90 = vshlq_u32(v89, v87);
            v91 = vextq_s8(v86, v90, 0xCuLL);
            v86 = vshlq_u32(*v85, v87);
            v92 = vorrq_s8(vshlq_u32(*v85, v84), vextq_s8(v90, v86, 0xCuLL));
            v85[-1] = vorrq_s8(vshlq_u32(v89, v84), v91);
            *v85 = v92;
            v85 += 2;
            v88 -= 8;
          }

          while (v88);
          if (v82 == v8)
          {
LABEL_83:
            v15->i32[v45] = v69;
            v96 = v8 - 2;
            v97 = v9;
            do
            {
              v99 = (v8 + v97);
              v100 = v15->u32[(v99 - 1)] | (v15->u32[v99] << 32);
              v101 = v16->u32[v36];
              v102 = v100 / v101;
              v103 = v100 % v101;
              if (v100 / v101 == 0x100000000 || (v104 = v100 / v101, v102 * v16->u32[v96] > (v15->u32[(v99 - 2)] | (v103 << 32))))
              {
                v104 = v102 - 1;
                v105 = v103 + v101;
                if (!HIDWORD(v105) && (v102 == 0x100000001 || v104 * v16->u32[v96] > (v15->u32[(v99 - 2)] | (v105 << 32))))
                {
                  v104 = v102 - 2;
                }
              }

              if (v8)
              {
                v106 = 0;
                v107 = v16;
                v108 = v97;
                v109 = v8;
                do
                {
                  v110 = v107->i32[0];
                  v107 = (v107 + 4);
                  v111 = v104 * v110;
                  v112 = v15->u32[v108] - (v106 + v111);
                  v15->i32[v108] = v112;
                  v113 = HIDWORD(v111) - HIDWORD(v112);
                  v106 = v113;
                  ++v108;
                  --v109;
                }

                while (v109);
                v114 = v15->u32[v99];
                v15->i32[v99] = v114 - v113;
                v18[v97] = v104;
                if (v113 > v114)
                {
                  LOBYTE(v115) = 0;
                  v18[v97] = v104 - 1;
                  v116 = v97;
                  v117 = v16;
                  v118 = v8;
                  do
                  {
                    while (1)
                    {
                      v120 = v117->i32[0];
                      v117 = (v117 + 4);
                      v119 = v120;
                      v121 = v15->u32[v116];
                      v122 = v120 >= v121 ? v15->i32[v116] : v119;
                      v123 = v119 + (v115 & 1) + v121;
                      v15->i32[v116] = v123;
                      if (v123 < v122)
                      {
                        break;
                      }

                      v115 = v115 & (v123 == v122);
                      ++v116;
                      if (!--v118)
                      {
                        goto LABEL_103;
                      }
                    }

                    v115 = 1;
                    ++v116;
                    --v118;
                  }

                  while (v118);
LABEL_103:
                  v15->i32[v99] += v115;
                }
              }

              else
              {
                v18[v97] = v104;
              }

              v98 = v97-- <= 0;
            }

            while (!v98);
            v40 = v169;
            if (v21)
            {
              if (v44)
              {
                if ((v36 & 0x80000000) == 0)
                {
                  v124 = 0;
                  do
                  {
                    v125 = v15->u32[v36];
                    v21[v36] = (v125 >> v44) | v124;
                    v124 = v125 << (32 - v44);
                    v98 = v36-- <= 0;
                  }

                  while (!v98);
                }
              }

              else if ((v36 & 0x80000000) == 0)
              {
                if (v36 <= 0x1A)
                {
                  goto LABEL_114;
                }

                v158 = 4 * v36;
                if (v21 > &v21[v36])
                {
                  goto LABEL_114;
                }

                if (v15 > &v15->i8[v158])
                {
                  goto LABEL_114;
                }

                if ((v15 - v21) < 0x20)
                {
                  goto LABEL_114;
                }

                v159 = v36 + 1;
                v160 = (v36 + 1) & 0xFFFFFFF8;
                v36 -= v160;
                v161 = v158 - 12;
                v162 = &v21[v158 / 4 - 3];
                v163 = &v15->i8[v161];
                v164 = v160;
                do
                {
                  v165 = *v163;
                  *(v162 - 1) = *(v163 - 1);
                  *v162 = v165;
                  v162 -= 2;
                  v163 -= 32;
                  v164 -= 8;
                }

                while (v164);
                if (v159 != v160)
                {
LABEL_114:
                  do
                  {
                    v21[v36] = v15->i32[v36];
                    v98 = v36-- <= 0;
                  }

                  while (!v98);
                }
              }
            }

            goto LABEL_115;
          }

          v83 = v86.i32[3];
        }

        else
        {
          v82 = 0;
          v83 = 0;
        }

        v93 = v8 - v82;
        v94 = &v16->i32[v82];
        do
        {
          v95 = *v94 >> v81;
          *v94 = (*v94 << v44) | v83;
          ++v94;
          v83 = v95;
          --v93;
        }

        while (v93);
        goto LABEL_83;
      }
    }

    else
    {
      v47 = 0;
      v48 = 0;
    }

    v79 = v45 - v47;
    v80 = &v15->i32[v47];
    do
    {
      v69 = *v80 >> v46;
      *v80 = (*v80 << v44) | v48;
      ++v80;
      v48 = v69;
      --v79;
    }

    while (v79);
    goto LABEL_74;
  }

  v37 = 0;
  if ((v9 & 0x80000000) == 0)
  {
    v38 = v16->u32[0];
    v39 = v9;
    v40 = v169;
    while (1)
    {
      v41 = v37;
      v37 = v15->u32[v39];
      v42 = v37 | (v41 << 32);
      if (v42)
      {
        if (v42 >= v38)
        {
          if (v42 == v38)
          {
            v37 = 0;
            v18[v39] = 1;
          }

          else
          {
            v43 = v42 / v38;
            v18[v39] = v43;
            v37 = (v37 - v38 * v43);
          }

          goto LABEL_42;
        }
      }

      else
      {
        v37 = 0;
      }

      v18[v39] = 0;
LABEL_42:
      if (--v39 == -1)
      {
        goto LABEL_65;
      }
    }
  }

  v40 = v169;
LABEL_65:
  if (v21)
  {
    *v21 = v37;
  }

LABEL_115:
  if (v40 && v23)
  {
    if (v23 < 8)
    {
      v126 = 0;
LABEL_122:
      v141 = 2 * v126;
      v142 = v23 - v126;
      v143 = v40 + v126;
      do
      {
        *v143++ = v18[v141] | (v18[v141 + 1] << 32);
        v141 += 2;
        --v142;
      }

      while (v142);
      goto LABEL_124;
    }

    v127 = 0;
    v126 = v23 & 0xFFFFFFF8;
    v128 = v40 + 2;
    do
    {
      v129 = (4 * v127) & 0x3FFFFFFC0;
      v130 = (v18 + v129);
      v174 = vld2q_f32(v130);
      v131 = (v18 + v129 + 32);
      v176 = vld2q_f32(v131);
      __asm { SHLL2           V4.2D, V1.4S, #0x20 ; ' ' }

      v137 = vshll_n_s32(*v174.val[1].f32, 0x20uLL);
      __asm { SHLL2           V6.2D, V3.4S, #0x20 ; ' ' }

      v139.i64[0] = v174.val[0].u32[2];
      v139.i64[1] = v174.val[0].u32[3];
      v140 = v139;
      v139.i64[0] = v174.val[0].u32[0];
      v139.i64[1] = v174.val[0].u32[1];
      v174.val[0] = v139;
      v139.i64[0] = v176.val[0].u32[2];
      v139.i64[1] = v176.val[0].u32[3];
      v174.val[1] = v139;
      v139.i64[0] = v176.val[0].u32[0];
      v139.i64[1] = v176.val[0].u32[1];
      v128[-2] = vorrq_s8(v137, v174.val[0]);
      v128[-1] = vorrq_s8(_Q4, v140);
      *v128 = vorrq_s8(vshll_n_s32(*v176.val[1].f32, 0x20uLL), v139);
      v128[1] = vorrq_s8(_Q6, v174.val[1]);
      v128 += 4;
      v127 += 16;
    }

    while (((2 * v23) & 0x1FFFFFFF0) != v127);
    if (v126 != v23)
    {
      goto LABEL_122;
    }
  }

LABEL_124:
  if (v20 && v22)
  {
    if (v22 < 8)
    {
      v144 = 0;
LABEL_131:
      v155 = 2 * v144;
      v156 = v22 - v144;
      v157 = &v20[v144];
      do
      {
        *v157++ = v21[v155] | (v21[v155 + 1] << 32);
        v155 += 2;
        --v156;
      }

      while (v156);
      goto LABEL_133;
    }

    v145 = 0;
    v144 = v22 & 0xFFFFFFF8;
    v146 = (v20 + 4);
    do
    {
      v147 = (4 * v145) & 0x3FFFFFFC0;
      v148 = (v21 + v147);
      v175 = vld2q_f32(v148);
      v149 = (v21 + v147 + 32);
      v177 = vld2q_f32(v149);
      __asm { SHLL2           V4.2D, V1.4S, #0x20 ; ' ' }

      v151 = vshll_n_s32(*v175.val[1].f32, 0x20uLL);
      __asm { SHLL2           V6.2D, V3.4S, #0x20 ; ' ' }

      v153.i64[0] = v175.val[0].u32[2];
      v153.i64[1] = v175.val[0].u32[3];
      v154 = v153;
      v153.i64[0] = v175.val[0].u32[0];
      v153.i64[1] = v175.val[0].u32[1];
      v175.val[0] = v153;
      v153.i64[0] = v177.val[0].u32[2];
      v153.i64[1] = v177.val[0].u32[3];
      v175.val[1] = v153;
      v153.i64[0] = v177.val[0].u32[0];
      v153.i64[1] = v177.val[0].u32[1];
      v146[-2] = vorrq_s8(v151, v175.val[0]);
      v146[-1] = vorrq_s8(_Q4, v154);
      *v146 = vorrq_s8(vshll_n_s32(*v177.val[1].f32, 0x20uLL), v153);
      v146[1] = vorrq_s8(_Q6, v175.val[1]);
      v146 += 4;
      v145 += 16;
    }

    while (((2 * v22) & 0x1FFFFFFF0) != v145);
    if (v144 != v22)
    {
      goto LABEL_131;
    }
  }

LABEL_133:
  if (v15 != v170)
  {
    operator delete[](v15);
    operator delete[](v16);
    operator delete[](v18);
    if (v21)
    {
      operator delete[](v21);
    }
  }
}

void llvm::APInt::sdiv(const void **this@<X0>, const llvm::APInt *a2@<X1>, _DWORD *a3@<X8>)
{
  v6 = *(this + 2);
  v7 = v6 - 1;
  v8 = this;
  if (v6 >= 0x41)
  {
    v8 = (*this + 8 * (v7 >> 6));
  }

  v9 = *v8;
  v10 = *(a2 + 2);
  v11 = v10 - 1;
  if (((v9 >> v7) & 1) == 0)
  {
    if (v10 > 0x40)
    {
      v24 = *a2;
      if ((*(*a2 + 8 * (v11 >> 6)) >> v11))
      {
        v32 = *(a2 + 2);
        v25 = (v10 + 63) >> 3;
        v31 = operator new[](v25 & 0x3FFFFFF8);
        memcpy(v31, v24, v25 & 0x3FFFFFF8);
        goto LABEL_33;
      }
    }

    else
    {
      v14 = *a2;
      if ((*a2 >> v11))
      {
        v32 = *(a2 + 2);
        v31 = v14;
LABEL_33:
        llvm::APInt::negate(&v31);
        v26 = v32;
        v46 = v32;
        v27 = v31;
        v45 = v31;
        v32 = 0;
        llvm::APInt::udiv(this, &v45, &v33);
        llvm::APInt::negate(&v33);
        a3[2] = v34;
        *a3 = v33;
        v34 = 0;
        if (v26 >= 0x41 && v27)
        {
          operator delete[](v27);
        }

        if (v32 >= 0x41)
        {
          v23 = v31;
          if (v31)
          {
            goto LABEL_48;
          }
        }

        return;
      }
    }

    llvm::APInt::udiv(this, a2, a3);
    return;
  }

  if (v10 >= 0x41)
  {
    v12 = (*a2 + 8 * (v11 >> 6));
  }

  else
  {
    v12 = a2;
  }

  if ((*v12 >> v11))
  {
    v44 = *(this + 2);
    if (v6 > 0x40)
    {
      v16 = (v6 + 63) >> 3;
      v13 = operator new[](v16 & 0x3FFFFFF8);
      memcpy(v13, *this, v16 & 0x3FFFFFF8);
    }

    else
    {
      v13 = *this;
    }

    v43 = v13;
    llvm::APInt::negate(&v43);
    v17 = v44;
    v46 = v44;
    v18 = v43;
    v45 = v43;
    v44 = 0;
    v19 = *(a2 + 2);
    v40 = v19;
    if (v19 > 0x40)
    {
      v20 = (v19 + 63) >> 3;
      __p = operator new[](v20 & 0x3FFFFFF8);
      memcpy(__p, *a2, v20 & 0x3FFFFFF8);
    }

    else
    {
      __p = *a2;
    }

    llvm::APInt::negate(&__p);
    v21 = v40;
    v42 = v40;
    v22 = __p;
    v41 = __p;
    v40 = 0;
    llvm::APInt::udiv(&v45, &v41, a3);
    if (v21 >= 0x41 && v22)
    {
      operator delete[](v22);
    }

    if (v40 >= 0x41 && __p)
    {
      operator delete[](__p);
    }

    if (v17 >= 0x41 && v18)
    {
      operator delete[](v18);
    }

    if (v44 < 0x41)
    {
      return;
    }

    v23 = v43;
    if (!v43)
    {
      return;
    }

LABEL_48:
    operator delete[](v23);
    return;
  }

  v36 = *(this + 2);
  if (v6 > 0x40)
  {
    v28 = (v6 + 63) >> 3;
    v15 = operator new[](v28 & 0x3FFFFFF8);
    memcpy(v15, *this, v28 & 0x3FFFFFF8);
  }

  else
  {
    v15 = *this;
  }

  v35 = v15;
  llvm::APInt::negate(&v35);
  v29 = v36;
  v46 = v36;
  v30 = v35;
  v45 = v35;
  v36 = 0;
  llvm::APInt::udiv(&v45, a2, &v37);
  llvm::APInt::negate(&v37);
  a3[2] = v38;
  *a3 = v37;
  v38 = 0;
  if (v29 >= 0x41 && v30)
  {
    operator delete[](v30);
  }

  if (v36 >= 0x41)
  {
    v23 = v35;
    if (v35)
    {
      goto LABEL_48;
    }
  }
}

void llvm::APInt::urem(const void **this@<X0>, const llvm::APInt *a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = *(this + 2);
  if (v3 <= 0x40)
  {
    v4 = *this % *a2;
    a3[2] = v3;
    v5 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
    if (!v3)
    {
      v5 = 0;
    }

    *a3 = v4 & v5;
    return;
  }

  v6 = 0;
  v7 = v3 + 63;
  v8 = (v3 + 63) >> 6;
  v9 = *this;
  v10 = v8 + 1;
  while (1)
  {
    v11 = v9[(v10 - 2)];
    if (v11)
    {
      break;
    }

    v6 += 64;
    if (--v10 <= 1)
    {
      goto LABEL_10;
    }
  }

  v6 += __clz(v11);
LABEL_10:
  v12 = v3 | 0xFFFFFFC0;
  if ((v3 & 0x3F) == 0)
  {
    v12 = 0;
  }

  v13 = v6 + v12;
  v14 = *(a2 + 2);
  if (v14 > 0x40)
  {
    v17 = 0;
    v15 = *a2;
    v18 = ((v14 + 63) >> 6) + 1;
    while (1)
    {
      v19 = v15[(v18 - 2)];
      if (v19)
      {
        break;
      }

      v17 += 64;
      if (--v18 <= 1)
      {
        goto LABEL_20;
      }
    }

    v17 += __clz(v19);
LABEL_20:
    v20 = v14 | 0xFFFFFFC0;
    if ((v14 & 0x3F) == 0)
    {
      v20 = 0;
    }

    v16 = v17 + v20;
    if (v3 == v13)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v15 = *a2;
    v16 = v14 + __clz(*a2) - 64;
    if (v3 == v13)
    {
      goto LABEL_24;
    }
  }

  v21 = (v14 - v16);
  if (v21 == 1)
  {
LABEL_24:
    a3[2] = v3;
    v22 = v7 >> 3;
    v24 = operator new[]((v7 >> 3) & 0x3FFFFFF8);
    bzero(v24, v22 & 0x3FFFFFF8);
    *a3 = v24;
    *v24 = 0;
    return;
  }

  v25 = (((v3 - v13) + 63) >> 6);
  v26 = ((v21 + 63) >> 6);
  if (v25 < v26)
  {
LABEL_26:
    a3[2] = v3;
    v27 = v7 >> 3;
    v29 = operator new[]((v7 >> 3) & 0x3FFFFFF8);
    *a3 = v29;

    memcpy(v29, v9, v27 & 0x3FFFFFF8);
    return;
  }

  v30 = v8;
  while (v30 * 8)
  {
    v31 = v9[v30 - 1];
    v32 = v15[--v30];
    if (v31 != v32)
    {
      if (v31 <= v32)
      {
        goto LABEL_26;
      }

      break;
    }
  }

  if (!memcmp(*this, v15, (v7 >> 3) & 0x3FFFFFF8))
  {
    v37 = a3;
    v38 = v3;
    v36 = 0;
    goto LABEL_37;
  }

  if (v25 == 1)
  {
    v36 = *v9 % *v15;
    v37 = a3;
    v38 = v3;
LABEL_37:

    llvm::APInt::APInt(v37, v38, v36, 0, 1);
    return;
  }

  llvm::APInt::APInt(a3, v3, 0, 0, 1);
  v40 = *this;
  v41 = *a2;
  v42 = *a3;

  llvm::APInt::divide(v40, v25, v41, v26, 0, v42, v39);
}

void llvm::APInt::srem(const void **this@<X0>, const llvm::APInt *a2@<X1>, _DWORD *a3@<X8>)
{
  v6 = *(this + 2);
  v7 = v6 - 1;
  v8 = this;
  if (v6 >= 0x41)
  {
    v8 = (*this + 8 * (v7 >> 6));
  }

  v9 = *v8;
  v10 = *(a2 + 2);
  v11 = v10 - 1;
  if (((v9 >> v7) & 1) == 0)
  {
    if (v10 > 0x40)
    {
      v24 = *a2;
      if ((*(*a2 + 8 * (v11 >> 6)) >> v11))
      {
        v32 = *(a2 + 2);
        v25 = (v10 + 63) >> 3;
        v31 = operator new[](v25 & 0x3FFFFFF8);
        memcpy(v31, v24, v25 & 0x3FFFFFF8);
        goto LABEL_33;
      }
    }

    else
    {
      v14 = *a2;
      if ((*a2 >> v11))
      {
        v32 = *(a2 + 2);
        v31 = v14;
LABEL_33:
        llvm::APInt::negate(&v31);
        v26 = v32;
        v44 = v32;
        v27 = v31;
        v43 = v31;
        v32 = 0;
        llvm::APInt::urem(this, &v43, a3);
        if (v26 >= 0x41 && v27)
        {
          operator delete[](v27);
        }

        if (v32 >= 0x41)
        {
          v23 = v31;
          if (v31)
          {
            goto LABEL_48;
          }
        }

        return;
      }
    }

    llvm::APInt::urem(this, a2, a3);
    return;
  }

  if (v10 >= 0x41)
  {
    v12 = (*a2 + 8 * (v11 >> 6));
  }

  else
  {
    v12 = a2;
  }

  if ((*v12 >> v11))
  {
    v42 = *(this + 2);
    if (v6 > 0x40)
    {
      v16 = (v6 + 63) >> 3;
      v13 = operator new[](v16 & 0x3FFFFFF8);
      memcpy(v13, *this, v16 & 0x3FFFFFF8);
    }

    else
    {
      v13 = *this;
    }

    v41 = v13;
    llvm::APInt::negate(&v41);
    v17 = v42;
    v44 = v42;
    v18 = v41;
    v43 = v41;
    v42 = 0;
    v19 = *(a2 + 2);
    v38 = v19;
    if (v19 > 0x40)
    {
      v20 = (v19 + 63) >> 3;
      __p = operator new[](v20 & 0x3FFFFFF8);
      memcpy(__p, *a2, v20 & 0x3FFFFFF8);
    }

    else
    {
      __p = *a2;
    }

    llvm::APInt::negate(&__p);
    v21 = v38;
    v40 = v38;
    v22 = __p;
    v39 = __p;
    v38 = 0;
    llvm::APInt::urem(&v43, &v39, &v45);
    llvm::APInt::negate(&v45);
    a3[2] = v46;
    *a3 = v45;
    v46 = 0;
    if (v21 >= 0x41 && v22)
    {
      operator delete[](v22);
    }

    if (v38 >= 0x41 && __p)
    {
      operator delete[](__p);
    }

    if (v17 >= 0x41 && v18)
    {
      operator delete[](v18);
    }

    if (v42 < 0x41)
    {
      return;
    }

    v23 = v41;
    if (!v41)
    {
      return;
    }

LABEL_48:
    operator delete[](v23);
    return;
  }

  v34 = *(this + 2);
  if (v6 > 0x40)
  {
    v28 = (v6 + 63) >> 3;
    v15 = operator new[](v28 & 0x3FFFFFF8);
    memcpy(v15, *this, v28 & 0x3FFFFFF8);
  }

  else
  {
    v15 = *this;
  }

  v33 = v15;
  llvm::APInt::negate(&v33);
  v29 = v34;
  v44 = v34;
  v30 = v33;
  v43 = v33;
  v34 = 0;
  llvm::APInt::urem(&v43, a2, &v35);
  llvm::APInt::negate(&v35);
  a3[2] = v36;
  *a3 = v35;
  v36 = 0;
  if (v29 >= 0x41 && v30)
  {
    operator delete[](v30);
  }

  if (v34 >= 0x41)
  {
    v23 = v33;
    if (v33)
    {
      goto LABEL_48;
    }
  }
}

void llvm::APInt::udivrem(llvm::APInt *this, const llvm::APInt *a2, void **a3, llvm::APInt *a4, llvm::APInt *a5, uint64_t a6, unint64_t *a7)
{
  v9 = *(this + 2);
  if (v9 <= 0x40)
  {
    v10 = *this % *a2;
    if (v9)
    {
      v11 = 0xFFFFFFFFFFFFFFFFLL >> -v9;
    }

    else
    {
      v11 = 0;
    }

    v12 = ((*this / *a2) & v11);
    if (*(a3 + 2) >= 0x41u && *a3)
    {
      operator delete[](*a3);
    }

    *a3 = v12;
    *(a3 + 2) = v9;
    v13 = (v10 & v11);
    if (*(a4 + 2) < 0x41u)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  v14 = 0;
  v15 = v9 + 63;
  v16 = (v9 + 63) >> 6;
  v17 = v16 + 1;
  while (1)
  {
    v18 = *(*this + 8 * (v17 - 2));
    if (v18)
    {
      break;
    }

    v14 += 64;
    if (--v17 <= 1)
    {
      goto LABEL_15;
    }
  }

  v14 += __clz(v18);
LABEL_15:
  v19 = v9 | 0xFFFFFFC0;
  if ((v9 & 0x3F) == 0)
  {
    v19 = 0;
  }

  v20 = v14 + v19;
  v21 = *(a2 + 2);
  if (v21 <= 0x40)
  {
    v22 = v21 + __clz(*a2) - 64;
    if (v9 != v20)
    {
      goto LABEL_19;
    }

LABEL_31:
    v35 = v15 >> 3;
    v36 = operator new[]((v15 >> 3) & 0x3FFFFFF8);
    bzero(v36, (v15 >> 3) & 0x3FFFFFF8);
    *v36 = 0;
    if (*(a3 + 2) < 0x41u)
    {
      goto LABEL_34;
    }

LABEL_32:
    if (*a3)
    {
      operator delete[](*a3);
    }

LABEL_34:
    *a3 = v36;
    *(a3 + 2) = v9;
    v13 = operator new[](v35 & 0x3FFFFFF8);
    bzero(v13, v35 & 0x3FFFFFF8);
    *v13 = 0;
    if (*(a4 + 2) < 0x41u)
    {
LABEL_37:
      *a4 = v13;
      *(a4 + 2) = v9;
      return;
    }

LABEL_35:
    if (*a4)
    {
      operator delete[](*a4);
    }

    goto LABEL_37;
  }

  v31 = 0;
  v32 = ((v21 + 63) >> 6) + 1;
  while (1)
  {
    v33 = *(*a2 + 8 * (v32 - 2));
    if (v33)
    {
      break;
    }

    v31 += 64;
    if (--v32 <= 1)
    {
      goto LABEL_28;
    }
  }

  v31 += __clz(v33);
LABEL_28:
  v34 = v21 | 0xFFFFFFC0;
  if ((v21 & 0x3F) == 0)
  {
    v34 = 0;
  }

  v22 = v31 + v34;
  if (v9 == v20)
  {
    goto LABEL_31;
  }

LABEL_19:
  v23 = ((v9 - v20) + 63) >> 6;
  v24 = (v21 - v22);
  v25 = (v24 + 63) >> 6;
  v26 = *(this + 2);
  if (v24 == 1)
  {
    v60 = ((v9 - v20) + 63) >> 6;
    v27 = (v24 + 63) >> 6;
    v28 = a2;
    if (a3 == this)
    {
      v37 = this;
      v38 = (v15 >> 3) & 0x3FFFFFF8;
    }

    else
    {
      v29 = *(a3 + 2);
      if (v16 == (v29 + 63) >> 6)
      {
        *(a3 + 2) = v9;
        v30 = *a3;
      }

      else
      {
        v39 = this;
        if (v29 >= 0x41 && *a3)
        {
          operator delete[](*a3);
        }

        *(a3 + 2) = v9;
        v30 = operator new[](8 * v16);
        *a3 = v30;
        this = v39;
      }

      v37 = this;
      v38 = (v15 >> 3) & 0x3FFFFFF8;
      memcpy(v30, *this, v38);
    }

    v40 = operator new[](v38);
    bzero(v40, v38);
    *v40 = 0;
    if (*(a4 + 2) >= 0x41u && *a4)
    {
      operator delete[](*a4);
    }

    *a4 = v40;
    *(a4 + 2) = v9;
    this = v37;
    v26 = *(v37 + 2);
    a2 = v28;
    v25 = v27;
    v23 = v60;
  }

  if (v23 < v25)
  {
LABEL_49:
    v41 = *(a4 + 2);
    if (v41 <= 0x40 && v26 <= 0x40)
    {
      *a4 = *this;
      *(a4 + 2) = *(this + 2);
      goto LABEL_90;
    }

    if (a4 == this)
    {
LABEL_90:
      v59 = operator new[]((v15 >> 3) & 0x3FFFFFF8);
      bzero(v59, (v15 >> 3) & 0x3FFFFFF8);
      *v59 = 0;
      if (*(a3 + 2) >= 0x41u && *a3)
      {
        operator delete[](*a3);
      }

      *a3 = v59;
      *(a3 + 2) = v9;
      return;
    }

    v44 = v26 + 63;
    if (v44 >> 6 == (v41 + 63) >> 6)
    {
      *(a4 + 2) = v26;
      if (v26 >= 0x41)
      {
        v45 = *a4;
LABEL_89:
        memcpy(v45, *this, (v44 >> 3) & 0x3FFFFFF8);
        goto LABEL_90;
      }
    }

    else
    {
      if (v41 >= 0x41 && *a4)
      {
        v54 = this;
        operator delete[](*a4);
        this = v54;
      }

      *(a4 + 2) = v26;
      if (v26 >= 0x41)
      {
        v58 = this;
        v45 = operator new[](8 * (v44 >> 6));
        this = v58;
        *a4 = v45;
        goto LABEL_89;
      }
    }

    *a4 = *this;
    goto LABEL_90;
  }

  if (v26 > 0x40)
  {
    v46 = (v26 + 63) >> 3;
    v47 = v46 & 0x3FFFFFF8;
    while (v47)
    {
      v48 = *(*this + v47 - 8);
      v49 = *(*a2 + v47 - 8);
      v47 -= 8;
      if (v48 != v49)
      {
        if (v48 <= v49)
        {
          goto LABEL_49;
        }

        break;
      }
    }

    v42 = a2;
    v43 = this;
    if (!memcmp(*this, *a2, v46 & 0x3FFFFFF8))
    {
      goto LABEL_55;
    }
  }

  else
  {
    if (*this < *a2)
    {
      goto LABEL_49;
    }

    v42 = a2;
    v43 = this;
    if (*this == *a2)
    {
LABEL_55:
      v35 = v15 >> 3;
      v36 = operator new[]((v15 >> 3) & 0x3FFFFFF8);
      bzero(v36, (v15 >> 3) & 0x3FFFFFF8);
      *v36 = 1;
      if (*(a3 + 2) < 0x41u)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }
  }

  v50 = *(a3 + 2);
  if (v16 == (v50 + 63) >> 6)
  {
    *(a3 + 2) = v9;
    v51 = *(a4 + 2);
    if (v16 != (v51 + 63) >> 6)
    {
      goto LABEL_68;
    }
  }

  else
  {
    if (v50 >= 0x41 && *a3)
    {
      operator delete[](*a3);
    }

    *(a3 + 2) = v9;
    *a3 = operator new[](8 * v16);
    v51 = *(a4 + 2);
    if (v16 != (v51 + 63) >> 6)
    {
LABEL_68:
      if (v51 >= 0x41 && *a4)
      {
        operator delete[](*a4);
      }

      *(a4 + 2) = v9;
      *a4 = operator new[](8 * v16);
      v52 = *v43;
      if (v23 != 1)
      {
        goto LABEL_72;
      }

      goto LABEL_85;
    }
  }

  *(a4 + 2) = v9;
  v52 = *v43;
  if (v23 != 1)
  {
LABEL_72:
    llvm::APInt::divide(v52, v23, *v42, v25, *a3, *a4, a7);
    bzero(*a3 + 8 * v23, (8 * (v16 - v23)));
    v53 = (*a4 + 8 * v25);

    bzero(v53, (8 * (v16 - v25)));
    return;
  }

LABEL_85:
  v55 = *v52;
  v56 = (*v42)->i64[0];
  v57 = *v52 / v56;
  llvm::APInt::operator=(a3, v57);

  llvm::APInt::operator=(a4, v55 - v57 * v56);
}

unsigned int *llvm::APInt::operator=(unsigned int *result, uint64_t a2)
{
  v2 = result[2];
  if (v2 > 0x40)
  {
    **result = a2;
    v4 = result;
    bzero((*result + 8), (((v2 + 63) >> 3) - 8) & 0xFFFFFFF8);
    return v4;
  }

  else
  {
    if (v2)
    {
      v3 = 0xFFFFFFFFFFFFFFFFLL >> -v2;
    }

    else
    {
      v3 = 0;
    }

    *result = v3 & a2;
  }

  return result;
}

void llvm::APInt::udivrem(const void **this, unint64_t a2, uint64_t a3, llvm::APInt *a4, unint64_t *a5, uint64_t a6, unint64_t *a7)
{
  v44.i64[0] = a2;
  v9 = *(this + 2);
  if (v9 <= 0x40)
  {
    v10 = *this / a2;
    *a4 = *this % a2;
    v11 = 0xFFFFFFFFFFFFFFFFLL >> -v9;
    if (!v9)
    {
      v11 = 0;
    }

    v12 = (v10 & v11);
    if (*(a3 + 8) < 0x41u)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v13 = 0;
  v14 = v9 + 63;
  v15 = (v9 + 63) >> 6;
  v16 = *this;
  v17 = v15 + 1;
  do
  {
    v18 = v16[(v17 - 2)];
    if (v18)
    {
      v23 = __clz(v18) + v13;
      v19 = v9 | 0xFFFFFFC0;
      if ((v9 & 0x3F) == 0)
      {
        v19 = 0;
      }

      v24 = v23 + v19;
      v21 = (v9 - v24);
      if (v9 == v24)
      {
        goto LABEL_14;
      }

LABEL_21:
      if (a2 == 1)
      {
        if (a3 != this)
        {
          v25 = *(a3 + 8);
          if (v15 == (v25 + 63) >> 6)
          {
            *(a3 + 8) = v9;
            v26 = *a3;
          }

          else
          {
            v37 = this;
            if (v25 >= 0x41 && *a3)
            {
              operator delete[](*a3);
            }

            *(a3 + 8) = v9;
            v26 = operator new[](8 * v15);
            *a3 = v26;
            this = v37;
          }

          memcpy(v26, *this, (v14 >> 3) & 0x3FFFFFF8);
        }

        *a4 = 0;
        return;
      }

      v27 = 0;
      v28 = (v21 + 63) >> 6;
      v29 = v15 + 1;
      while (1)
      {
        v30 = v16[(v29 - 2)];
        if (v30)
        {
          break;
        }

        v27 += 64;
        if (--v29 <= 1)
        {
          if ((v9 - v19 - v27) > 0x40)
          {
            goto LABEL_34;
          }

LABEL_31:
          if (*v16 < a2)
          {
            *a4 = *v16;
            v12 = operator new[]((v14 >> 3) & 0x3FFFFFF8);
            bzero(v12, (v14 >> 3) & 0x3FFFFFF8);
            *v12 = 0;
            if (*(a3 + 8) < 0x41u)
            {
LABEL_7:
              *a3 = v12;
              *(a3 + 8) = v9;
              return;
            }

LABEL_5:
            if (*a3)
            {
              operator delete[](*a3);
            }

            goto LABEL_7;
          }

LABEL_34:
          v31 = 0;
          v32 = v15 + 1;
          while (1)
          {
            v33 = v16[(v32 - 2)];
            if (v33)
            {
              break;
            }

            v31 += 64;
            if (--v32 <= 1)
            {
              if ((v9 - v19 - v31) > 0x40)
              {
LABEL_43:
                v34 = *(a3 + 8);
                if (v15 == (v34 + 63) >> 6)
                {
                  *(a3 + 8) = v9;
                  v35 = *this;
                  if (v28 != 1)
                  {
                    goto LABEL_45;
                  }

LABEL_58:
                  v40 = *v35;
                  v41 = *v35 / a2;
                  v42 = a3;
                  v43 = a2;
                  llvm::APInt::operator=(v42, v41);
                  *a4 = v40 - v41 * v43;
                  return;
                }

                v38 = a2;
                v39 = this;
                if (v34 >= 0x41 && *a3)
                {
                  operator delete[](*a3);
                }

                *(a3 + 8) = v9;
                *a3 = operator new[](8 * v15);
                a2 = v38;
                v35 = *v39;
                if (v28 == 1)
                {
                  goto LABEL_58;
                }

LABEL_45:
                llvm::APInt::divide(v35, v28, &v44, 1, *a3, a4, a7);
                v36 = (*a3 + 8 * v28);

                bzero(v36, (8 * (v15 - v28)));
                return;
              }

LABEL_40:
              if (*v16 != a2)
              {
                goto LABEL_43;
              }

              v22 = operator new[]((v14 >> 3) & 0x3FFFFFF8);
              bzero(v22, (v14 >> 3) & 0x3FFFFFF8);
              *v22 = 1;
              if (*(a3 + 8) >= 0x41u)
              {
                goto LABEL_15;
              }

              goto LABEL_17;
            }
          }

          if (v9 - v19 - (__clz(v33) + v31) > 0x40)
          {
            goto LABEL_43;
          }

          goto LABEL_40;
        }
      }

      if (v9 - v19 - (__clz(v30) + v27) <= 0x40)
      {
        goto LABEL_31;
      }

      goto LABEL_34;
    }

    v13 += 64;
    --v17;
  }

  while (v17 > 1);
  v19 = v9 | 0xFFFFFFC0;
  if ((v9 & 0x3F) == 0)
  {
    v19 = 0;
  }

  v20 = v13 + v19;
  v21 = (v9 - v20);
  if (v9 != v20)
  {
    goto LABEL_21;
  }

LABEL_14:
  v22 = operator new[]((v14 >> 3) & 0x3FFFFFF8);
  bzero(v22, (v14 >> 3) & 0x3FFFFFF8);
  *v22 = 0;
  if (*(a3 + 8) >= 0x41u)
  {
LABEL_15:
    if (*a3)
    {
      operator delete[](*a3);
    }
  }

LABEL_17:
  *a3 = v22;
  *(a3 + 8) = v9;
  *a4 = 0;
}

const void **llvm::APInt::sadd_ov@<X0>(const void **this@<X0>, const llvm::APInt *a2@<X1>, BOOL *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = this;
  v8 = *(this + 2);
  if (v8 >= 0x41)
  {
    v13 = operator new[](((v8 + 63) >> 3) & 0x3FFFFFF8);
    v9 = *v6;
    this = memcpy(v13, v9, ((v8 + 63) >> 3) & 0x3FFFFFF8);
    v16 = 0;
    v17 = 0;
    v10 = *a2;
    v18 = (v8 + 63) >> 6;
    do
    {
      v19 = *&v13[v16];
      v20 = *(v10 + v16);
      v21 = __CFADD__(v20, v19);
      v22 = v20 + v19;
      v23 = v21;
      v24 = v22 + 1 <= v19;
      if (v17)
      {
        ++v22;
        v17 = v24;
      }

      else
      {
        v17 = v23;
      }

      *&v13[v16] = v22;
      v16 += 8;
    }

    while (8 * v18 != v16);
    *&v13[8 * (v18 - 1)] &= 0xFFFFFFFFFFFFFFFFLL >> -v8;
    *(a4 + 8) = v8;
    *a4 = v13;
    v14 = v8 - 1;
    v15 = *(v9 + 8 * ((v8 - 1) >> 6));
  }

  else
  {
    v9 = *this;
    v10 = *a2;
    v11 = *this + *a2;
    v12 = 0xFFFFFFFFFFFFFFFFLL >> -v8;
    if (!v8)
    {
      v12 = 0;
    }

    v13 = (v12 & v11);
    *(a4 + 8) = v8;
    *a4 = v12 & v11;
    v14 = v8 - 1;
    v15 = v9;
  }

  v25 = 1 << v14;
  v26 = (v15 & (1 << v14)) == 0;
  v27 = *(a2 + 2);
  v28 = (v10 + 8 * ((v27 - 1) >> 6));
  if (v27 < 0x41)
  {
    v28 = a2;
  }

  if ((v26 ^ (((*v28 >> (v27 - 1)) & 1) == 0)))
  {
    v29 = 0;
  }

  else
  {
    v30 = v14 >> 6;
    v31 = &v13[8 * (v14 >> 6)];
    if (v8 < 0x41)
    {
      v31 = a4;
    }

    v32 = *v31 & v25;
    if (v8 >= 0x41)
    {
      v9 = *(v9 + 8 * v30);
    }

    v29 = (v32 == 0) ^ ((v9 & v25) == 0);
  }

  *a3 = v29;
  return this;
}

const void **llvm::APInt::uadd_ov@<X0>(const void **this@<X0>, uint64_t **a2@<X1>, BOOL *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = this;
  v8 = *(this + 2);
  if (v8 >= 0x41)
  {
    v12 = operator new[](((v8 + 63) >> 3) & 0x3FFFFFF8);
    this = memcpy(v12, *v6, ((v8 + 63) >> 3) & 0x3FFFFFF8);
    v13 = 0;
    v14 = *a2;
    v15 = (v8 + 63) >> 6;
    v16 = v12;
    v17 = *a2;
    v18 = v15;
    do
    {
      v19 = *v17++;
      v20 = v19 + *v16;
      v21 = __CFADD__(v19, *v16);
      v22 = (v20 + 1) <= *v16;
      if (v13)
      {
        ++v20;
        v13 = v22;
      }

      else
      {
        v13 = v21;
      }

      *v16++ = v20;
      --v18;
    }

    while (v18);
    *&v12[8 * (v15 - 1)] &= 0xFFFFFFFFFFFFFFFFLL >> -v8;
    *(a4 + 8) = v8;
    *a4 = v12;
    v23 = v14 - 1;
    v11 = 8 * v15;
    while (v11)
    {
      v24 = *&v12[v11 - 8];
      v25 = *(v23 + v11);
      v11 -= 8;
      if (v24 != v25)
      {
        LOBYTE(v11) = v24 <= v25;
        break;
      }
    }
  }

  else
  {
    v9 = *a2;
    v10 = 0xFFFFFFFFFFFFFFFFLL >> -v8;
    if (!v8)
    {
      v10 = 0;
    }

    v11 = (*this + *a2) & v10;
    *(a4 + 8) = v8;
    *a4 = v11;
    LOBYTE(v11) = v11 < v9;
  }

  *a3 = v11;
  return this;
}

const void **llvm::APInt::ssub_ov@<X0>(const void **this@<X0>, const llvm::APInt *a2@<X1>, BOOL *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = this;
  v8 = *(this + 2);
  if (v8 >= 0x41)
  {
    v13 = operator new[](((v8 + 63) >> 3) & 0x3FFFFFF8);
    v9 = *v6;
    this = memcpy(v13, v9, ((v8 + 63) >> 3) & 0x3FFFFFF8);
    v16 = 0;
    v17 = 0;
    v10 = *a2;
    v18 = (v8 + 63) >> 6;
    do
    {
      v19 = *&v13[v16];
      v20 = *(v10 + v16);
      v21 = v19 - v20;
      v22 = v19 < v20;
      v23 = v19 + ~v20;
      v24 = v23 >= v19;
      if (v17)
      {
        v17 = v24;
      }

      else
      {
        v23 = v21;
        v17 = v22;
      }

      *&v13[v16] = v23;
      v16 += 8;
    }

    while (8 * v18 != v16);
    *&v13[8 * (v18 - 1)] &= 0xFFFFFFFFFFFFFFFFLL >> -v8;
    *(a4 + 8) = v8;
    *a4 = v13;
    v14 = v8 - 1;
    v15 = *(v9 + 8 * ((v8 - 1) >> 6));
  }

  else
  {
    v9 = *this;
    v10 = *a2;
    v11 = *this - *a2;
    v12 = 0xFFFFFFFFFFFFFFFFLL >> -v8;
    if (!v8)
    {
      v12 = 0;
    }

    v13 = (v12 & v11);
    *(a4 + 8) = v8;
    *a4 = v12 & v11;
    v14 = v8 - 1;
    v15 = v9;
  }

  v25 = 1 << v14;
  v26 = (v15 & (1 << v14)) == 0;
  v27 = *(a2 + 2);
  v28 = (v10 + 8 * ((v27 - 1) >> 6));
  if (v27 < 0x41)
  {
    v28 = a2;
  }

  if (v26 == (((*v28 >> (v27 - 1)) & 1) == 0))
  {
    v32 = 0;
  }

  else
  {
    v29 = v14 >> 6;
    v30 = &v13[8 * (v14 >> 6)];
    if (v8 < 0x41)
    {
      v30 = a4;
    }

    v31 = *v30 & v25;
    if (v8 >= 0x41)
    {
      v9 = *(v9 + 8 * v29);
    }

    v32 = (v31 == 0) ^ ((v9 & v25) == 0);
  }

  *a3 = v32;
  return this;
}

const void **llvm::APInt::usub_ov@<X0>(const void **this@<X0>, unint64_t **a2@<X1>, BOOL *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = this;
  v8 = *(this + 2);
  if (v8 >= 0x41)
  {
    v13 = operator new[](((v8 + 63) >> 3) & 0x3FFFFFF8);
    v14 = *v6;
    this = memcpy(v13, v14, ((v8 + 63) >> 3) & 0x3FFFFFF8);
    v15 = 0;
    v16 = *a2;
    v17 = (v8 + 63) >> 6;
    v18 = v13;
    v19 = v17;
    do
    {
      v20 = *v16++;
      v21 = *v18 - v20;
      v22 = *v18 < v20;
      v23 = *v18 + ~v20;
      if (v15)
      {
        v15 = v23 >= *v18;
      }

      else
      {
        v23 = v21;
        v15 = v22;
      }

      *v18++ = v23;
      --v19;
    }

    while (v19);
    *&v13[8 * (v17 - 1)] &= 0xFFFFFFFFFFFFFFFFLL >> -v8;
    *(a4 + 8) = v8;
    *a4 = v13;
    v24 = 8 * v17;
    while (v24)
    {
      v25 = *&v13[v24 - 8];
      v26 = *&v14[v24 - 8];
      v24 -= 8;
      v12 = v25 > v26;
      if (v25 != v26)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v9 = *this;
    v10 = 0xFFFFFFFFFFFFFFFFLL >> -v8;
    if (!v8)
    {
      v10 = 0;
    }

    v11 = (*this - *a2) & v10;
    *(a4 + 8) = v8;
    *a4 = v11;
    v12 = v11 > v9;
LABEL_13:
    LOBYTE(v24) = v12;
  }

  *a3 = v24;
  return this;
}

void llvm::APInt::sdiv_ov(const void **this@<X0>, const llvm::APInt *a2@<X1>, BOOL *x2_0@<X2>, _DWORD *a3@<X8>)
{
  v4 = *(this + 2);
  if (v4 > 0x40)
  {
    v5 = v4 - 1;
    v6 = *this;
    if ((*(*this + ((v4 - 1) >> 6)) >> (v4 - 1)))
    {
      v7 = 0;
      v8 = (v4 + 63) >> 6;
      v9 = v8 << 6;
      while (!*v6)
      {
        ++v6;
        v7 -= 64;
        if (!--v8)
        {
          if (v4 >= v9)
          {
            LODWORD(v4) = v9;
          }

          if (v4 != v5)
          {
            goto LABEL_18;
          }

          goto LABEL_11;
        }
      }

      v11 = __clz(__rbit64(*v6)) - v7;
      if (v4 >= v11)
      {
        LODWORD(v4) = v11;
      }

      if (v4 == v5)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_18;
  }

  if (*this != (1 << (v4 - 1)))
  {
LABEL_18:
    *x2_0 = 0;
    goto LABEL_14;
  }

LABEL_11:
  v10 = *(a2 + 2);
  if (v10)
  {
    if (v10 > 0x40)
    {
      v12 = 0;
      v13 = (v10 + 63) >> 6;
      v14 = *a2;
      v15 = v13 << 6;
      while (*v14 == -1)
      {
        ++v14;
        v12 -= 64;
        if (!--v13)
        {
          *x2_0 = v15 == v10;
          goto LABEL_14;
        }
      }

      *x2_0 = __clz(__rbit64(~*v14)) - v12 == v10;
    }

    else
    {
      *x2_0 = *a2 == 0xFFFFFFFFFFFFFFFFLL >> -v10;
    }
  }

  else
  {
    *x2_0 = 1;
  }

LABEL_14:
  llvm::APInt::sdiv(this, a2, a3);
}

void llvm::APInt::smul_ov(const void **this@<X0>, const llvm::APInt *a2@<X1>, BOOL *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v5 = a2;
  v8 = *(this + 2);
  if (v8 <= 0x40)
  {
    v9 = *a2;
    v10 = *a2 * *this;
    *(a4 + 8) = v8;
    v11 = 0xFFFFFFFFFFFFFFFFLL >> -v8;
    if (!v8)
    {
      v11 = 0;
    }

    *a4 = v10 & v11;
    v12 = *(a2 + 2);
    if (v12 >= 0x41)
    {
      goto LABEL_5;
    }

LABEL_12:
    if (v9)
    {
      goto LABEL_19;
    }

LABEL_27:
    *v4 = 0;
    return;
  }

  v16 = (v8 + 63) >> 6;
  v17 = operator new[](8 * v16);
  v18 = 0;
  *(a4 + 8) = v8;
  *a4 = v17;
  v19 = *this;
  v39 = v5;
  v9 = *v5;
  v20 = v17;
  v21 = v16;
  do
  {
    llvm::APInt::tcMultiplyPart(v20, v19, v9[v18], 0, (v8 + 63) >> 6, v21, v18 != 0);
    ++v18;
    v20 = (v20 + 8);
    --v21;
  }

  while (v21);
  *(v17 + (v16 - 1)) &= 0xFFFFFFFFFFFFFFFFLL >> -v8;
  v5 = v39;
  v4 = a3;
  v12 = v39[2];
  if (v12 < 0x41)
  {
    goto LABEL_12;
  }

LABEL_5:
  v13 = 0;
  v14 = ((v12 + 63) >> 6) + 1;
  while (1)
  {
    v15 = v9[(v14 - 2)];
    if (v15)
    {
      break;
    }

    v13 += 64;
    if (--v14 <= 1)
    {
      goto LABEL_15;
    }
  }

  v13 += __clz(v15);
LABEL_15:
  v22 = v12 | 0xFFFFFFC0;
  if ((v12 & 0x3F) == 0)
  {
    v22 = 0;
  }

  if ((v12 - v22 - v13) <= 0x40 && !*v9)
  {
    goto LABEL_27;
  }

LABEL_19:
  llvm::APInt::sdiv(a4, v5, &__s1);
  v23 = v42;
  if (v42 <= 0x40)
  {
    v24 = __s1;
    v25 = *this;
    if (__s1 != *this)
    {
      *v4 = 1;
      return;
    }

LABEL_24:
    v26 = *(this + 2);
    v27 = v26 - 1;
    if (v26 > 0x40)
    {
      if ((v25[v27 >> 6] >> v27))
      {
        v28 = 0;
        v29 = (v26 + 63) >> 6;
        v30 = v29 << 6;
        while (!*v25)
        {
          ++v25;
          v28 -= 64;
          if (!--v29)
          {
            if (v26 >= v30)
            {
              LODWORD(v26) = v30;
            }

            if (v26 != v27)
            {
              goto LABEL_41;
            }

            goto LABEL_35;
          }
        }

        v33 = __clz(__rbit64(*v25)) - v28;
        if (v26 >= v33)
        {
          LODWORD(v26) = v33;
        }

        if (v26 == v27)
        {
          goto LABEL_35;
        }
      }
    }

    else if (v25 == (1 << v27))
    {
LABEL_35:
      v31 = v5[2];
      if (v31)
      {
        if (v31 > 0x40)
        {
          v35 = 0;
          v36 = (v31 + 63) >> 6;
          v37 = *v5;
          v38 = v36 << 6;
          while (*v37 == -1)
          {
            ++v37;
            v35 -= 64;
            if (!--v36)
            {
              goto LABEL_48;
            }
          }

          v38 = __clz(__rbit64(~*v37)) - v35;
LABEL_48:
          v32 = v38 == v31;
        }

        else
        {
          v32 = *v5 == 0xFFFFFFFFFFFFFFFFLL >> -v31;
        }

        v34 = v32;
      }

      else
      {
        v34 = 1;
      }

LABEL_52:
      *v4 = v34;
      if (v23 < 0x41)
      {
        return;
      }

      goto LABEL_53;
    }

LABEL_41:
    v34 = 0;
    goto LABEL_52;
  }

  v24 = __s1;
  v25 = *this;
  if (!memcmp(__s1, *this, ((v42 + 63) >> 3) & 0x3FFFFFF8))
  {
    goto LABEL_24;
  }

  *v4 = 1;
LABEL_53:
  if (v24)
  {
    operator delete[](v24);
  }
}

void llvm::APInt::umul_ov(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, BOOL *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = this;
  v7 = *(this + 2);
  if (v7 > 0x40)
  {
    v15 = 0;
    v8 = *this;
    v16 = ((v7 + 63) >> 6) + 1;
    while (1)
    {
      v17 = *(v8 + 8 * (v16 - 2));
      if (v17)
      {
        break;
      }

      v15 += 64;
      if (--v16 <= 1)
      {
        goto LABEL_21;
      }
    }

    v15 += __clz(v17);
LABEL_21:
    v21 = v7 | 0xFFFFFFC0;
    if ((v7 & 0x3F) == 0)
    {
      v21 = 0;
    }

    v9 = v15 + v21;
    v10 = *(a2 + 2);
    if (v10 > 0x40)
    {
LABEL_3:
      v11 = 0;
      v12 = *a2;
      v13 = ((v10 + 63) >> 6) + 1;
      while (1)
      {
        v14 = *(v12 + 8 * (v13 - 2));
        if (v14)
        {
          break;
        }

        v11 += 64;
        if (--v13 <= 1)
        {
          goto LABEL_12;
        }
      }

      v11 += __clz(v14);
LABEL_12:
      if ((v10 & 0x3F) != 0)
      {
        v18 = v10 | 0xFFFFFFC0;
      }

      else
      {
        v18 = 0;
      }

      if (v9 + v11 + v18 + 2 <= v7)
      {
        goto LABEL_16;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v8 = *this;
    v9 = v7 + __clz(*this) - 64;
    v10 = *(a2 + 2);
    if (v10 > 0x40)
    {
      goto LABEL_3;
    }
  }

  v12 = *a2;
  if (v9 + v10 + __clz(*a2) - 64 + 2 <= v7)
  {
LABEL_16:
    *a3 = 1;
    if (v7 > 0x40)
    {
      v26 = (v7 + 63) >> 6;
      v27 = operator new[](8 * v26);
      v28 = 0;
      *(a4 + 8) = v7;
      *a4 = v27;
      v29 = *v5;
      v30 = *a2;
      v31 = v27;
      v32 = v26;
      do
      {
        llvm::APInt::tcMultiplyPart(v31, v29, *(v30 + 8 * v28), 0, (v7 + 63) >> 6, v32, v28 != 0);
        ++v28;
        v31 = (v31 + 8);
        --v32;
      }

      while (v32);
      *(v27 + (v26 - 1)) &= 0xFFFFFFFFFFFFFFFFLL >> -v7;
    }

    else
    {
      v19 = *a2 * *this;
      *(a4 + 8) = v7;
      v20 = 0xFFFFFFFFFFFFFFFFLL >> -v7;
      if (!v7)
      {
        v20 = 0;
      }

      *a4 = v19 & v20;
    }

    return;
  }

LABEL_25:
  if (v7 > 0x40)
  {
    v66 = a3;
    v33 = operator new[](((v7 + 63) >> 3) & 0x3FFFFFF8);
    memcpy(v33, v8, ((v7 + 63) >> 3) & 0x3FFFFFF8);
    v34 = (v7 + 63) >> 6;
    v35 = *v33 >> 1;
    *v33 = v35;
    v36 = v33 + 1;
    v37 = v34 - 1;
    do
    {
      v38 = v35 | (*v36 << 63);
      v35 = *v36 >> 1;
      *(v36 - 1) = v38;
      *v36++ = v35;
      --v37;
    }

    while (v37);
    v25 = operator new[](8 * v34);
    v39 = 0;
    *(a4 + 8) = v7;
    *a4 = v25;
    v40 = (v7 + 63) >> 6;
    do
    {
      llvm::APInt::tcMultiplyPart((v25 + v39), v33, *(v12 + v39), 0, (v7 + 63) >> 6, v40, v39 != 0);
      v39 += 8;
      --v40;
    }

    while (v40);
    *(v25 + 8 * (v34 - 1)) &= 0xFFFFFFFFFFFFFFFFLL >> -v7;
    operator delete[](v33);
    a3 = v66;
  }

  else
  {
    v22 = v8 >> 1;
    if (v7 == 1)
    {
      v22 = 0;
    }

    v23 = v12 * v22;
    *(a4 + 8) = v7;
    v24 = 0xFFFFFFFFFFFFFFFFLL >> -v7;
    if (!v7)
    {
      v24 = 0;
    }

    v25 = v23 & v24;
    *a4 = v23 & v24;
  }

  v41 = (v25 + 8 * ((v7 - 1) >> 6));
  if (v7 < 0x41)
  {
    v41 = a4;
  }

  *a3 = (*v41 >> (v7 - 1)) & 1;
  if (v7 > 0x40)
  {
    v44 = (v7 + 63) >> 6;
    v45 = (v25 + 8 * v44);
    v47 = *(v45 - 1);
    v46 = (v45 - 8);
    v48 = 2 * v47;
    *v46 = 2 * v47;
    v49 = v44 - 2;
    do
    {
      *v46 = v48 | (*(v25 + 8 * v49) >> 63);
      v46 = (v25 + 8 * v49);
      v48 = 2 * *v46;
      *v46 = v48;
    }

    while (v49--);
    *(v25 + 8 * (v44 - 1)) &= 0xFFFFFFFFFFFFFFFFLL >> -v7;
    if (*(v5 + 2) < 0x41u)
    {
      goto LABEL_52;
    }

LABEL_51:
    v5 = *v5;
    goto LABEL_52;
  }

  v42 = 2 * v25;
  if (v7 == 1)
  {
    v42 = 0;
  }

  v43 = 0xFFFFFFFFFFFFFFFFLL >> -v7;
  if (!v7)
  {
    v43 = 0;
  }

  v25 = v42 & v43;
  *a4 = v42 & v43;
  if (*(v5 + 2) >= 0x41u)
  {
    goto LABEL_51;
  }

LABEL_52:
  if (*v5)
  {
    if (v7 >= 0x41)
    {
      v54 = 0;
      v55 = *a2;
      v56 = (v7 + 63) >> 6;
      v57 = v25;
      v58 = v56;
      do
      {
        v59 = *v55++;
        v60 = v59 + *v57;
        v61 = __CFADD__(v59, *v57);
        v62 = (v60 + 1) <= *v57;
        if (v54)
        {
          ++v60;
          v54 = v62;
        }

        else
        {
          v54 = v61;
        }

        *v57++ = v60;
        --v58;
      }

      while (v58);
      *(v25 + 8 * (v56 - 1)) &= 0xFFFFFFFFFFFFFFFFLL >> -v7;
      v63 = 8 * v56;
      while (v63)
      {
        v64 = *(*a4 - 8 + v63);
        v65 = *(*a2 - 8 + v63);
        v63 -= 8;
        if (v64 != v65)
        {
          if (v64 > v65)
          {
            return;
          }

          goto LABEL_70;
        }
      }
    }

    else
    {
      v51 = *a2;
      v52 = 0xFFFFFFFFFFFFFFFFLL >> -v7;
      if (!v7)
      {
        v52 = 0;
      }

      v53 = (v25 + *a2) & v52;
      *a4 = v53;
      if (v53 < v51)
      {
LABEL_70:
        *a3 = 1;
      }
    }
  }
}

void llvm::APInt::sshl_ov(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, BOOL *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(this + 2);
  v6 = *(a2 + 2);
  if (v6 < 0x41)
  {
    goto LABEL_10;
  }

  v7 = 0;
  a2 = *a2;
  v8 = ((v6 + 63) >> 6) + 1;
  while (1)
  {
    v9 = *(a2 + (v8 - 2));
    if (v9)
    {
      break;
    }

    v7 += 64;
    if (--v8 <= 1)
    {
      goto LABEL_7;
    }
  }

  v7 += __clz(v9);
LABEL_7:
  v10 = v6 | 0xFFFFFFC0;
  if ((v6 & 0x3F) == 0)
  {
    v10 = 0;
  }

  if ((v6 - v10 - v7) <= 0x40)
  {
LABEL_10:
    v11 = *a2;
    if (v11 <= v5)
    {
      LODWORD(v5) = v11;
    }
  }

  llvm::APInt::sshl_ov(this, a3, v5, a4);
}

void llvm::APInt::sshl_ov(llvm::APInt *this@<X0>, BOOL *a2@<X2>, unsigned int a3@<W1>, uint64_t a4@<X8>)
{
  v4 = *(this + 2);
  *a2 = v4 <= a3;
  if (v4 <= a3)
  {
    *(a4 + 8) = v4;
    if (v4 > 0x40)
    {
      v9 = (v4 + 63) >> 3;
      v11 = operator new[](v9 & 0x3FFFFFF8);
      bzero(v11, v9 & 0x3FFFFFF8);
      *a4 = v11;
      *v11 = 0;
    }

    else
    {
      *a4 = 0;
    }

    return;
  }

  v6 = v4 - 1;
  if (v4 <= 0x40)
  {
    v7 = v4 + __clz(*this) - 64;
    v8 = __clz(~(*this << -v4));
    if (((*this >> v6) & 1) == 0)
    {
      v8 = v7;
    }

    *a2 = v8 <= a3;
    *(a4 + 8) = v4;
    *a4 = (*this << a3) & (0xFFFFFFFFFFFFFFFFLL >> -v4);
    return;
  }

  v12 = *this;
  if (((*(*this + 8 * (v6 >> 6)) >> v6) & 1) == 0)
  {
    v13 = 0;
    v14 = ((v4 + 63) >> 6) + 1;
    while (1)
    {
      v15 = *(v12 + 8 * (v14 - 2));
      if (v15)
      {
        break;
      }

      v13 += 64;
      if (--v14 <= 1)
      {
        goto LABEL_22;
      }
    }

    v13 += __clz(v15);
LABEL_22:
    v22 = v4 | 0xFFFFFFC0;
    if ((v4 & 0x3F) == 0)
    {
      v22 = 0;
    }

    v17 = v13 + v22;
LABEL_27:
    v23 = this;
    *a2 = v17 <= a3;
    v24 = a4;
    *(a4 + 8) = v4;
    v18 = v4 + 63;
    goto LABEL_28;
  }

  v16 = 64 - (v4 & 0x3F);
  v17 = v4 & 0x3F;
  if ((v4 & 0x3F) == 0)
  {
    v17 = 64;
    v16 = 0;
  }

  v18 = v4 + 63;
  v19 = __clz(~(*(v12 + (((v4 + 63) >> 3) & 0x3FFFFFF8) - 8) << v16));
  if (v17 == v19)
  {
    v20 = (v18 >> 6) - 1;
    while (1)
    {
      v21 = *(v12 + 8 * --v20);
      if (v21 != -1)
      {
        break;
      }

      v17 += 64;
      if (v20 <= 0)
      {
        goto LABEL_27;
      }
    }

    v17 += __clz(~v21);
    goto LABEL_27;
  }

  v23 = this;
  *a2 = v19 <= a3;
  v24 = a4;
  *(a4 + 8) = v4;
LABEL_28:
  v25 = v18 >> 3;
  v26 = operator new[]((v18 >> 3) & 0x3FFFFFF8);
  *v24 = v26;
  memcpy(v26, *v23, v25 & 0x3FFFFFF8);

  llvm::APInt::shlSlowCase(v24, a3);
}

void llvm::APInt::ushl_ov(const void **this@<X0>, const llvm::APInt *a2@<X1>, BOOL *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(this + 2);
  v6 = *(a2 + 2);
  if (v6 < 0x41)
  {
    goto LABEL_10;
  }

  v7 = 0;
  a2 = *a2;
  v8 = ((v6 + 63) >> 6) + 1;
  while (1)
  {
    v9 = *(a2 + (v8 - 2));
    if (v9)
    {
      break;
    }

    v7 += 64;
    if (--v8 <= 1)
    {
      goto LABEL_7;
    }
  }

  v7 += __clz(v9);
LABEL_7:
  v10 = v6 | 0xFFFFFFC0;
  if ((v6 & 0x3F) == 0)
  {
    v10 = 0;
  }

  if ((v6 - v10 - v7) <= 0x40)
  {
LABEL_10:
    v11 = *a2;
    if (v11 <= v5)
    {
      LODWORD(v5) = v11;
    }
  }

  llvm::APInt::ushl_ov(this, a3, v5, a4);
}

void llvm::APInt::ushl_ov(const void **this@<X0>, BOOL *a2@<X2>, unsigned int a3@<W1>, uint64_t a4@<X8>)
{
  v4 = *(this + 2);
  *a2 = v4 <= a3;
  if (v4 > a3)
  {
    if (v4 > 0x40)
    {
      v9 = 0;
      v10 = v4 + 63;
      v12 = ((v4 + 63) >> 6) + 1;
      while (1)
      {
        v13 = *(*this + (v12 - 2));
        if (v13)
        {
          break;
        }

        v9 += 64;
        if (--v12 <= 1)
        {
          goto LABEL_12;
        }
      }

      v9 += __clz(v13);
LABEL_12:
      v14 = v4 | 0xFFFFFFC0;
      if ((v4 & 0x3F) == 0)
      {
        v14 = 0;
      }

      *a2 = v9 + v14 < a3;
      *(a4 + 8) = v4;
      v15 = v10 >> 3;
      v17 = operator new[]((v10 >> 3) & 0x3FFFFFF8);
      *a4 = v17;
      memcpy(v17, *this, v15 & 0x3FFFFFF8);

      llvm::APInt::shlSlowCase(a4, a3);
    }

    else
    {
      *a2 = v4 + __clz(*this) - 64 < a3;
      *(a4 + 8) = v4;
      *a4 = (*this << a3) & (0xFFFFFFFFFFFFFFFFLL >> -v4);
    }
  }

  else
  {
    *(a4 + 8) = v4;
    if (v4 > 0x40)
    {
      v6 = (v4 + 63) >> 3;
      v8 = operator new[](v6 & 0x3FFFFFF8);
      bzero(v8, v6 & 0x3FFFFFF8);
      *a4 = v8;
      *v8 = 0;
    }

    else
    {
      *a4 = 0;
    }
  }
}

void llvm::APInt::sfloordiv_ov(const void **this@<X0>, const llvm::APInt *a2@<X1>, BOOL *a3@<X2>, uint64_t a4@<X8>)
{
  llvm::APInt::sdiv_ov(this, a2, a3, &__src);
  v7 = v38;
  if (v38 > 0x40)
  {
    v36 = a4;
    v22 = v38 + 63;
    v11 = operator new[](8 * (v22 >> 6));
    v23 = 0;
    v24 = __src;
    v8 = *a2;
    v25 = (v7 + 63) >> 6;
    do
    {
      llvm::APInt::tcMultiplyPart(&v11[v23], v24, *(v8 + v23 * 8), 0, (v7 + 63) >> 6, v25, v23 != 0);
      ++v23;
      --v25;
    }

    while (v25);
    v11[(v22 >> 6) - 1] &= 0xFFFFFFFFFFFFFFFFLL >> -v7;
    v12 = *this;
    if (!memcmp(v11, *this, (v22 >> 3) & 0x3FFFFFF8))
    {
      operator delete[](v11);
      LODWORD(v7) = v38;
      a4 = v36;
LABEL_24:
      *(a4 + 8) = v7;
      v21 = __src;
LABEL_25:
      *a4 = v21;
      return;
    }

    a4 = v36;
    v26 = *(this + 2);
    v14 = v26 - 1;
    if (v26 >= 0x41)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = *a2;
    v9 = *a2 * __src;
    v10 = 0xFFFFFFFFFFFFFFFFLL >> -v38;
    if (!v38)
    {
      v10 = 0;
    }

    v11 = (v9 & v10);
    v12 = *this;
    if ((v9 & v10) == *this)
    {
      goto LABEL_24;
    }

    v13 = *(this + 2);
    v14 = v13 - 1;
    if (v13 >= 0x41)
    {
LABEL_6:
      v12 = *(v12 + 8 * (v14 >> 6));
    }
  }

  v15 = v12 >> v14;
  v16 = *(a2 + 2);
  v17 = v16 - 1;
  if (v16 >= 0x41)
  {
    v18 = (v8 + 8 * (v17 >> 6));
  }

  else
  {
    v18 = a2;
  }

  v19 = v15 ^ (*v18 >> v17);
  if (v7 >= 0x41 && v11)
  {
    operator delete[](v11);
    LODWORD(v7) = v38;
  }

  if ((v19 & 1) == 0)
  {
    goto LABEL_24;
  }

  if (v7 < 0x41)
  {
    v20 = 0xFFFFFFFFFFFFFFFFLL >> -v7;
    if (!v7)
    {
      v20 = 0;
    }

    v21 = v20 & (__src - 1);
    *(a4 + 8) = v7;
    goto LABEL_25;
  }

  v27 = v7 + 63;
  v28 = operator new[]((v27 >> 3) & 0x3FFFFFF8);
  v29 = __src;
  memcpy(v28, __src, (v27 >> 3) & 0x3FFFFFF8);
  v30 = v27 >> 6;
  if (!(*v28)--)
  {
    v32 = v30 - 2;
    v33 = v28 + 1;
    do
    {
      v34 = v32;
      if ((*v33++)-- != 0)
      {
        break;
      }

      --v32;
    }

    while (v34);
  }

  v28[(v30 - 1)] &= 0xFFFFFFFFFFFFFFFFLL >> -v7;
  *(a4 + 8) = v7;
  *a4 = v28;
  if (v29)
  {
    operator delete[](v29);
  }
}

void llvm::APInt::sadd_sat(const void **this@<X0>, const llvm::APInt *a2@<X1>, uint64_t a3@<X8>)
{
  v21 = 0;
  llvm::APInt::sadd_ov(this, a2, &v21, &__p);
  if (!v21)
  {
    *(a3 + 8) = v20;
    *a3 = __p;
    v20 = 0;
    return;
  }

  v5 = *(this + 2);
  v6 = v5 - 1;
  if (v5 > 0x40)
  {
    v10 = v6 >> 6;
    v7 = 1 << v6;
    v11 = *(*this + v10);
    *(a3 + 8) = v5;
    v12 = v5 + 63;
    if ((v11 & v7) != 0)
    {
      v13 = v12 >> 3;
      v8 = operator new[]((v12 >> 3) & 0x3FFFFFF8);
      bzero(v8, v13 & 0x3FFFFFF8);
      *v8 = 0;
      v9 = &v8[v10];
LABEL_8:
      *a3 = v8;
      *v9 |= v7;
      if (v20 < 0x41)
      {
        return;
      }

      goto LABEL_16;
    }

    v16 = v12 >> 6;
    v17 = 8 * (v12 >> 6);
    v14 = operator new[](v17);
    *v14 = -1;
    memset(v14 + 1, 255, (v17 - 8));
    v14[(v16 - 1)] &= 0xFFFFFFFFFFFFFFFFLL >> -v5;
    v15 = &v14[v10];
  }

  else
  {
    v7 = 1 << v6;
    if ((*this & (1 << v6)) != 0)
    {
      v8 = 0;
      *(a3 + 8) = v5;
      v9 = a3;
      goto LABEL_8;
    }

    *(a3 + 8) = v5;
    if (v5)
    {
      v14 = (0xFFFFFFFFFFFFFFFFLL >> -v5);
    }

    else
    {
      v14 = 0;
    }

    v15 = a3;
  }

  *a3 = v14;
  *v15 &= ~v7;
  if (v20 < 0x41)
  {
    return;
  }

LABEL_16:
  v18 = __p;
  if (__p)
  {

    operator delete[](v18);
  }
}

void llvm::APInt::uadd_sat(const void **this@<X0>, const llvm::APInt *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(this + 2);
  if (v6 >= 0x41)
  {
    v10 = operator new[](((v6 + 63) >> 3) & 0x3FFFFFF8);
    memcpy(v10, *this, ((v6 + 63) >> 3) & 0x3FFFFFF8);
    v11 = 0;
    v12 = 0;
    v13 = *a2;
    v14 = (v6 + 63) >> 6;
    v15 = 8 * v14;
    do
    {
      v16 = *&v10[v11];
      v17 = *(v13 + v11);
      v18 = __CFADD__(v17, v16);
      v19 = v17 + v16;
      v20 = v18;
      v21 = v19 + 1 <= v16;
      if (v12)
      {
        ++v19;
        v12 = v21;
      }

      else
      {
        v12 = v20;
      }

      *&v10[v11] = v19;
      v11 += 8;
    }

    while (v15 != v11);
    v22 = v14 - 1;
    v23 = 0xFFFFFFFFFFFFFFFFLL >> -v6;
    *&v10[8 * (v14 - 1)] &= v23;
    v24 = v13 - 8;
    v25 = 8 * v14;
    while (v25)
    {
      v26 = *&v10[v25 - 8];
      v27 = *(v24 + v25);
      v25 -= 8;
      if (v26 != v27)
      {
        if (v26 > v27)
        {
          goto LABEL_22;
        }

        *(a3 + 8) = v6;
        v28 = operator new[](v15);
        *v28 = -1;
        memset(v28 + 1, 255, (v15 - 8));
        v28[v22] &= v23;
        *a3 = v28;

        operator delete[](v10);
        return;
      }
    }

    goto LABEL_22;
  }

  v7 = *this + *a2;
  v8 = 0xFFFFFFFFFFFFFFFFLL >> -v6;
  if (v6)
  {
    v9 = 0xFFFFFFFFFFFFFFFFLL >> -v6;
  }

  else
  {
    v9 = 0;
  }

  v10 = (v7 & v9);
  if ((v7 & v9) >= *a2)
  {
LABEL_22:
    *(a3 + 8) = v6;
    *a3 = v10;
    return;
  }

  *(a3 + 8) = v6;
  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
}

void llvm::APInt::ssub_sat(const void **this@<X0>, const llvm::APInt *a2@<X1>, uint64_t a3@<X8>)
{
  v21 = 0;
  llvm::APInt::ssub_ov(this, a2, &v21, &__p);
  if (!v21)
  {
    *(a3 + 8) = v20;
    *a3 = __p;
    v20 = 0;
    return;
  }

  v5 = *(this + 2);
  v6 = v5 - 1;
  if (v5 > 0x40)
  {
    v10 = v6 >> 6;
    v7 = 1 << v6;
    v11 = *(*this + v10);
    *(a3 + 8) = v5;
    v12 = v5 + 63;
    if ((v11 & v7) != 0)
    {
      v13 = v12 >> 3;
      v8 = operator new[]((v12 >> 3) & 0x3FFFFFF8);
      bzero(v8, v13 & 0x3FFFFFF8);
      *v8 = 0;
      v9 = &v8[v10];
LABEL_8:
      *a3 = v8;
      *v9 |= v7;
      if (v20 < 0x41)
      {
        return;
      }

      goto LABEL_16;
    }

    v16 = v12 >> 6;
    v17 = 8 * (v12 >> 6);
    v14 = operator new[](v17);
    *v14 = -1;
    memset(v14 + 1, 255, (v17 - 8));
    v14[(v16 - 1)] &= 0xFFFFFFFFFFFFFFFFLL >> -v5;
    v15 = &v14[v10];
  }

  else
  {
    v7 = 1 << v6;
    if ((*this & (1 << v6)) != 0)
    {
      v8 = 0;
      *(a3 + 8) = v5;
      v9 = a3;
      goto LABEL_8;
    }

    *(a3 + 8) = v5;
    if (v5)
    {
      v14 = (0xFFFFFFFFFFFFFFFFLL >> -v5);
    }

    else
    {
      v14 = 0;
    }

    v15 = a3;
  }

  *a3 = v14;
  *v15 &= ~v7;
  if (v20 < 0x41)
  {
    return;
  }

LABEL_16:
  v18 = __p;
  if (__p)
  {

    operator delete[](v18);
  }
}

void llvm::APInt::usub_sat(char **this@<X0>, const llvm::APInt *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(this + 2);
  if (v6 >= 0x41)
  {
    v10 = (v6 + 63) >> 3;
    v9 = operator new[](v10 & 0x3FFFFFF8);
    v11 = *this;
    memcpy(v9, v11, v10 & 0x3FFFFFF8);
    v12 = 0;
    v13 = 0;
    v14 = *a2;
    v15 = (v6 + 63) >> 6;
    v16 = 8 * v15;
    do
    {
      v17 = *&v9[v12];
      v18 = *(v14 + v12);
      v19 = v17 - v18;
      v20 = v17 < v18;
      v21 = v17 + ~v18;
      v22 = v21 >= v17;
      if (v13)
      {
        v13 = v22;
      }

      else
      {
        v21 = v19;
        v13 = v20;
      }

      *&v9[v12] = v21;
      v12 += 8;
    }

    while (v16 != v12);
    *&v9[8 * (v15 - 1)] &= 0xFFFFFFFFFFFFFFFFLL >> -v6;
    while (v16)
    {
      v23 = *&v9[v16 - 8];
      v24 = *&v11[v16 - 8];
      v16 -= 8;
      if (v23 != v24)
      {
        if (v23 <= v24)
        {
          break;
        }

        *(a3 + 8) = v6;
        v25 = operator new[](v10 & 0x3FFFFFF8);
        bzero(v25, v10 & 0x3FFFFFF8);
        *a3 = v25;
        *v25 = 0;

        operator delete[](v9);
        return;
      }
    }
  }

  else
  {
    v7 = &(*this)[-*a2];
    v8 = 0xFFFFFFFFFFFFFFFFLL >> -v6;
    if (!v6)
    {
      v8 = 0;
    }

    v9 = (v7 & v8);
    if ((v7 & v8) > *this)
    {
      *(a3 + 8) = v6;
      *a3 = 0;
      return;
    }
  }

  *(a3 + 8) = v6;
  *a3 = v9;
}

void llvm::APInt::smul_sat(const void **this@<X0>, const llvm::APInt *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = this;
  v20 = 0;
  llvm::APInt::smul_ov(this, a2, &v20, &__p);
  if (!v20)
  {
    *(a3 + 8) = v19;
    *a3 = __p;
    v19 = 0;
    return;
  }

  v6 = *(v4 + 2);
  v7 = v6 - 1;
  if (v6 >= 0x41)
  {
    v4 = (*v4 + 8 * (v7 >> 6));
  }

  v8 = 1 << v7;
  v9 = *(a2 + 2);
  v10 = v9 - 1;
  if (v9 >= 0x41)
  {
    v11 = (*a2 + 8 * ((v9 - 1) >> 6));
  }

  else
  {
    v11 = a2;
  }

  if (((*v4 & (1 << v7)) != 0) != ((*v11 >> v10) & 1))
  {
    *(a3 + 8) = v6;
    if (v6 >= 0x41)
    {
      v12 = operator new[](((v6 + 63) >> 3) & 0x3FFFFFF8);
      bzero(v12, ((v6 + 63) >> 3) & 0x3FFFFFF8);
      *v12 = 0;
      v13 = &v12[v7 >> 6];
    }

    else
    {
      v12 = 0;
      v13 = a3;
    }

    *a3 = v12;
    *v13 |= v8;
    if (v19 < 0x41)
    {
      return;
    }

    goto LABEL_21;
  }

  *(a3 + 8) = v6;
  if (v6 > 0x40)
  {
    v16 = (v6 + 63) >> 6;
    v14 = operator new[](8 * v16);
    *v14 = -1;
    memset(v14 + 1, 255, (8 * v16 - 8));
    v14[(v16 - 1)] &= 0xFFFFFFFFFFFFFFFFLL >> -v6;
    v15 = &v14[v7 >> 6];
  }

  else
  {
    if (v6)
    {
      v14 = (0xFFFFFFFFFFFFFFFFLL >> -v6);
    }

    else
    {
      v14 = 0;
    }

    v15 = a3;
  }

  *a3 = v14;
  *v15 &= ~v8;
  if (v19 >= 0x41)
  {
LABEL_21:
    v17 = __p;
    if (__p)
    {

      operator delete[](v17);
    }
  }
}

void llvm::APInt::umul_sat(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, uint64_t a3@<X8>)
{
  v12 = 0;
  llvm::APInt::umul_ov(this, a2, &v12, &__p);
  if (!v12)
  {
    *(a3 + 8) = v11;
    *a3 = __p;
    return;
  }

  v5 = *(this + 2);
  *(a3 + 8) = v5;
  if (v5 > 0x40)
  {
    v7 = (v5 + 63) >> 6;
    v8 = operator new[](8 * v7);
    *v8 = -1;
    memset(v8 + 1, 255, (8 * v7 - 8));
    v8[(v7 - 1)] &= 0xFFFFFFFFFFFFFFFFLL >> -v5;
    *a3 = v8;
    if (v11 < 0x41)
    {
      return;
    }
  }

  else
  {
    if (v5)
    {
      v6 = 0xFFFFFFFFFFFFFFFFLL >> -v5;
    }

    else
    {
      v6 = 0;
    }

    *a3 = v6;
    if (v11 < 0x41)
    {
      return;
    }
  }

  v9 = __p;
  if (__p)
  {

    operator delete[](v9);
  }
}

void llvm::APInt::sshl_sat(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 2);
  v5 = *(a2 + 2);
  if (v5 < 0x41)
  {
    goto LABEL_10;
  }

  v6 = 0;
  a2 = *a2;
  v7 = ((v5 + 63) >> 6) + 1;
  while (1)
  {
    v8 = *(a2 + (v7 - 2));
    if (v8)
    {
      break;
    }

    v6 += 64;
    if (--v7 <= 1)
    {
      goto LABEL_7;
    }
  }

  v6 += __clz(v8);
LABEL_7:
  v9 = v5 | 0xFFFFFFC0;
  if ((v5 & 0x3F) == 0)
  {
    v9 = 0;
  }

  if ((v5 - v9 - v6) <= 0x40)
  {
LABEL_10:
    v10 = *a2;
    if (v10 <= v4)
    {
      LODWORD(v4) = v10;
    }
  }

  llvm::APInt::sshl_sat(this, v4, a3);
}

void llvm::APInt::sshl_sat(llvm::APInt *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v21 = 0;
  llvm::APInt::sshl_ov(this, &v21, a2, &__p);
  if (!v21)
  {
    *(a3 + 8) = v20;
    *a3 = __p;
    v20 = 0;
    return;
  }

  v5 = *(this + 2);
  v6 = v5 - 1;
  if (v5 > 0x40)
  {
    v10 = v6 >> 6;
    v7 = 1 << v6;
    v11 = *(*this + 8 * v10);
    *(a3 + 8) = v5;
    v12 = v5 + 63;
    if ((v11 & v7) != 0)
    {
      v13 = v12 >> 3;
      v8 = operator new[]((v12 >> 3) & 0x3FFFFFF8);
      bzero(v8, v13 & 0x3FFFFFF8);
      *v8 = 0;
      v9 = &v8[v10];
LABEL_8:
      *a3 = v8;
      *v9 |= v7;
      if (v20 < 0x41)
      {
        return;
      }

      goto LABEL_16;
    }

    v16 = v12 >> 6;
    v17 = 8 * (v12 >> 6);
    v14 = operator new[](v17);
    *v14 = -1;
    memset(v14 + 1, 255, (v17 - 8));
    v14[(v16 - 1)] &= 0xFFFFFFFFFFFFFFFFLL >> -v5;
    v15 = &v14[v10];
  }

  else
  {
    v7 = 1 << v6;
    if ((*this & (1 << v6)) != 0)
    {
      v8 = 0;
      *(a3 + 8) = v5;
      v9 = a3;
      goto LABEL_8;
    }

    *(a3 + 8) = v5;
    if (v5)
    {
      v14 = (0xFFFFFFFFFFFFFFFFLL >> -v5);
    }

    else
    {
      v14 = 0;
    }

    v15 = a3;
  }

  *a3 = v14;
  *v15 &= ~v7;
  if (v20 < 0x41)
  {
    return;
  }

LABEL_16:
  v18 = __p;
  if (__p)
  {

    operator delete[](v18);
  }
}

void llvm::APInt::ushl_sat(const void **this@<X0>, const llvm::APInt *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 2);
  v5 = *(a2 + 2);
  if (v5 < 0x41)
  {
    goto LABEL_10;
  }

  v6 = 0;
  a2 = *a2;
  v7 = ((v5 + 63) >> 6) + 1;
  while (1)
  {
    v8 = *(a2 + (v7 - 2));
    if (v8)
    {
      break;
    }

    v6 += 64;
    if (--v7 <= 1)
    {
      goto LABEL_7;
    }
  }

  v6 += __clz(v8);
LABEL_7:
  v9 = v5 | 0xFFFFFFC0;
  if ((v5 & 0x3F) == 0)
  {
    v9 = 0;
  }

  if ((v5 - v9 - v6) <= 0x40)
  {
LABEL_10:
    v10 = *a2;
    if (v10 <= v4)
    {
      LODWORD(v4) = v10;
    }
  }

  llvm::APInt::ushl_sat(this, v4, a3);
}

void llvm::APInt::ushl_sat(const void **this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v12 = 0;
  llvm::APInt::ushl_ov(this, &v12, a2, &__p);
  if (!v12)
  {
    *(a3 + 8) = v11;
    *a3 = __p;
    return;
  }

  v5 = *(this + 2);
  *(a3 + 8) = v5;
  if (v5 > 0x40)
  {
    v7 = (v5 + 63) >> 6;
    v8 = operator new[](8 * v7);
    *v8 = -1;
    memset(v8 + 1, 255, (8 * v7 - 8));
    v8[(v7 - 1)] &= 0xFFFFFFFFFFFFFFFFLL >> -v5;
    *a3 = v8;
    if (v11 < 0x41)
    {
      return;
    }
  }

  else
  {
    if (v5)
    {
      v6 = 0xFFFFFFFFFFFFFFFFLL >> -v5;
    }

    else
    {
      v6 = 0;
    }

    *a3 = v6;
    if (v11 < 0x41)
    {
      return;
    }
  }

  v9 = __p;
  if (__p)
  {

    operator delete[](v9);
  }
}

void llvm::APInt::toString(uint64_t a1, void *a2, uint64_t a3, char a4, int a5, int a6, int a7)
{
  v91 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    HIDWORD(v9) = a3 - 2;
    LODWORD(v9) = a3 - 2;
    v10 = off_1E86D3AF0[(v9 >> 1)];
  }

  else
  {
    v10 = "";
  }

  if (a3 == 10 || a3 == 8)
  {
    v12 = 3;
  }

  else
  {
    v12 = 4;
  }

  v13 = *(a1 + 8);
  if (v13 <= 0x40)
  {
    v14 = *a1;
    if (!*a1)
    {
      goto LABEL_35;
    }

    if (a6)
    {
      v15 = 36;
    }

    else
    {
      v15 = 0;
    }

    if (a4)
    {
      v14 = v13 ? (v14 << -v13) >> -v13 : 0;
      if ((v14 & 0x8000000000000000) != 0)
      {
        v16 = a2[1];
        if ((v16 + 1) > a2[2])
        {
          v86 = a3;
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v16 + 1, 1);
          a3 = v86;
          v16 = a2[1];
        }

        *(*a2 + v16) = 45;
        ++a2[1];
        v14 = -v14;
      }
    }

    v17 = *v10;
    if (*v10)
    {
      v18 = a2[1];
      v19 = (v10 + 1);
      do
      {
        if ((v18 + 1) > a2[2])
        {
          v21 = a3;
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v18 + 1, 1);
          a3 = v21;
          v18 = a2[1];
        }

        *(*a2 + v18) = v17;
        v18 = a2[1] + 1;
        a2[1] = v18;
        v20 = *v19++;
        v17 = v20;
      }

      while (v20);
    }

    if (v14)
    {
      v32 = &llvm::APInt::toString(llvm::SmallVectorImpl<char> &,unsigned int,BOOL,BOOL,BOOL,BOOL)const::BothDigits[v15];
      v90 = llvm::APInt::toString(llvm::SmallVectorImpl<char> &,unsigned int,BOOL,BOOL,BOOL,BOOL)const::BothDigits[v15 + v14 % a3];
      if (v14 >= a3)
      {
        v52 = 1;
        v33 = 64;
        do
        {
          if (a7 && !(v52 % v12))
          {
            --v33;
            *(&__p + v33) = 39;
          }

          v14 /= a3;
          --v33;
          *(&__p + v33) = v32[v14 % a3];
          ++v52;
        }

        while (v14 >= a3);
      }

      else
      {
        v33 = 64;
      }
    }

    else
    {
      v33 = 65;
    }

    v50 = a2[1];
    v51 = v50 + 65 - v33;
    if (a2[2] < v51)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v51, 1);
      v50 = a2[1];
    }

    if (v33 != 65)
    {
      memcpy((*a2 + v50), &__p + v33, 65 - v33);
      v50 = a2[1];
    }

    a2[1] = v50 + 65 - v33;
    return;
  }

  v22 = 0;
  v23 = v13 + 63;
  v24 = *a1;
  v25 = ((v13 + 63) >> 6) + 1;
  do
  {
    v26 = v24[(v25 - 2)];
    if (v26)
    {
      v34 = __clz(v26) + v22;
      v35 = v13 | 0xFFFFFFC0;
      if ((v13 & 0x3F) == 0)
      {
        v35 = 0;
      }

      if (v34 + v35 != v13)
      {
        goto LABEL_47;
      }

LABEL_35:
      v28 = *v10;
      if (*v10)
      {
        v29 = a2[1];
        v30 = (v10 + 1);
        do
        {
          if ((v29 + 1) > a2[2])
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v29 + 1, 1);
            v29 = a2[1];
          }

          *(*a2 + v29) = v28;
          v29 = a2[1] + 1;
          a2[1] = v29;
          v31 = *v30++;
          v28 = v31;
        }

        while (v31);
      }

      else
      {
        v29 = a2[1];
      }

      if ((v29 + 1) > a2[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v29 + 1, 1);
        v29 = a2[1];
      }

      *(*a2 + v29) = 48;
      ++a2[1];
      return;
    }

    v22 += 64;
    --v25;
  }

  while (v25 > 1);
  v27 = v13 | 0xFFFFFFC0;
  if ((v13 & 0x3F) == 0)
  {
    v27 = 0;
  }

  if (v22 + v27 == v13)
  {
    goto LABEL_35;
  }

LABEL_47:
  v36 = a3;
  if (a6)
  {
    v37 = 36;
  }

  else
  {
    v37 = 0;
  }

  v89 = *(a1 + 8);
  v38 = v23 >> 3;
  __p = operator new[]((v23 >> 3) & 0x3FFFFFF8);
  memcpy(__p, v24, v38 & 0x3FFFFFF8);
  if (a4 & 1) != 0 && ((v24[(v13 - 1) >> 6] >> (v13 - 1)))
  {
    llvm::APInt::negate(&__p);
    v43 = a2[1];
    if ((v43 + 1) > a2[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v43 + 1, 1);
      v43 = a2[1];
    }

    *(*a2 + v43) = 45;
    ++a2[1];
  }

  v44 = &llvm::APInt::toString(llvm::SmallVectorImpl<char> &,unsigned int,BOOL,BOOL,BOOL,BOOL)const::BothDigits[v37];
  v45 = *v10;
  v46 = v36;
  if (*v10)
  {
    v47 = a2[1];
    v48 = (v10 + 1);
    do
    {
      if ((v47 + 1) > a2[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v47 + 1, 1);
        v46 = v36;
        v47 = a2[1];
      }

      *(*a2 + v47) = v45;
      v47 = a2[1] + 1;
      a2[1] = v47;
      v49 = *v48++;
      v45 = v49;
    }

    while (v49);
  }

  else
  {
    v47 = a2[1];
  }

  if (v46 == 2 || v46 == 8)
  {
    if (v46 == 8)
    {
      v53 = 3;
    }

    else
    {
      v53 = 1;
    }

LABEL_84:
    v54 = 0;
    v55 = v46 - 1;
    v56 = v53;
    v57 = 64 - v53;
    LODWORD(v58) = v89;
    while (v58 < 0x41)
    {
      if (!__p)
      {
LABEL_115:
        v73 = a2[1];
        goto LABEL_116;
      }

      v59 = v55 & __p;
      if ((a7 & 1) == 0)
      {
        goto LABEL_105;
      }

LABEL_89:
      v60 = a2[1];
      if (v54 && !(v54 % v12))
      {
        if ((v60 + 1) > a2[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v60 + 1, 1);
          v60 = a2[1];
        }

        *(*a2 + v60) = 39;
        v60 = a2[1] + 1;
        a2[1] = v60;
      }

LABEL_106:
      v67 = v44[v59];
      if ((v60 + 1) > a2[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v60 + 1, 1);
        v60 = a2[1];
      }

      *(*a2 + v60) = v67;
      ++a2[1];
      v58 = v89;
      if (v89 > 0x40)
      {
        v68 = __p;
        v69 = *__p >> v56;
        *__p = v69;
        v70 = v68 + 8;
        v71 = ((v58 + 63) >> 6) - 1;
        do
        {
          v72 = (*v70 << v57) | v69;
          v69 = *v70 >> v56;
          *(v70 - 1) = v72;
          *v70++ = v69;
          --v71;
        }

        while (v71);
        ++v54;
      }

      else
      {
        if (v89 == v56)
        {
          __p = 0;
        }

        else
        {
          __p = (__p >> v56);
        }

        ++v54;
      }
    }

    v61 = 0;
    v62 = ((v58 + 63) >> 6) + 1;
    while (1)
    {
      v63 = *(__p + (v62 - 2));
      if (v63)
      {
        break;
      }

      v61 += 64;
      if (--v62 <= 1)
      {
        v64 = v58 | 0xFFFFFFC0;
        if ((v58 & 0x3F) == 0)
        {
          v64 = 0;
        }

        if (v61 + v64 == v58)
        {
          goto LABEL_115;
        }

        goto LABEL_104;
      }
    }

    v65 = __clz(v63) + v61;
    v66 = v58 | 0xFFFFFFC0;
    if ((v58 & 0x3F) == 0)
    {
      v66 = 0;
    }

    if (v65 + v66 == v58)
    {
      goto LABEL_115;
    }

LABEL_104:
    v59 = v55 & *__p;
    if (a7)
    {
      goto LABEL_89;
    }

LABEL_105:
    v60 = a2[1];
    goto LABEL_106;
  }

  if (v46 == 16)
  {
    v53 = 4;
    goto LABEL_84;
  }

  v78 = 0;
  v73 = v47;
  v79 = v46;
  v58 = v89;
  if (v89 > 0x40)
  {
    goto LABEL_129;
  }

LABEL_127:
  if (!__p)
  {
    goto LABEL_116;
  }

  do
  {
    v87 = 0;
    llvm::APInt::udivrem(&__p, v79, &__p, &v87, v40, v41, v42);
    if (a7)
    {
      v84 = a2[1];
      if (v78 && !(v78 % v12))
      {
        if ((v84 + 1) > a2[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v84 + 1, 1);
          v84 = a2[1];
        }

        *(*a2 + v84) = 39;
        v84 = a2[1] + 1;
        a2[1] = v84;
      }
    }

    else
    {
      v84 = a2[1];
    }

    v85 = v44[v87];
    if ((v84 + 1) > a2[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v84 + 1, 1);
      v84 = a2[1];
    }

    *(*a2 + v84) = v85;
    v73 = a2[1] + 1;
    a2[1] = v73;
    ++v78;
    v58 = v89;
    if (v89 <= 0x40)
    {
      goto LABEL_127;
    }

LABEL_129:
    v80 = 0;
    v81 = ((v58 + 63) >> 6) + 1;
    while (1)
    {
      v82 = *(__p + (v81 - 2));
      if (v82)
      {
        break;
      }

      v80 += 64;
      if (--v81 <= 1)
      {
        goto LABEL_134;
      }
    }

    v80 += __clz(v82);
LABEL_134:
    v83 = v58 | 0xFFFFFFC0;
    if ((v58 & 0x3F) == 0)
    {
      v83 = 0;
    }
  }

  while (v80 + v83 != v58);
LABEL_116:
  if (v47 != v73)
  {
    v74 = (*a2 + v73 - 1);
    if (v74 > *a2 + v47)
    {
      v75 = v47 + *a2 + 1;
      do
      {
        v76 = *(v75 - 1);
        *(v75 - 1) = *v74;
        *v74-- = v76;
      }

      while (v75++ < v74);
      LODWORD(v58) = v89;
    }
  }

  if (v58 >= 0x41 && __p)
  {
    operator delete[](__p);
  }
}

void llvm::APInt::print(llvm::APInt *this, llvm::raw_ostream *a2, char a3)
{
  v6[5] = *MEMORY[0x1E69E9840];
  v4 = v6;
  v5 = xmmword_1E09700D0;
  llvm::APInt::toString(this, &v4, 10, a3, 0, 1, 0);
  llvm::raw_ostream::write(a2, v4, v5);
  if (v4 != v6)
  {
    free(v4);
  }
}

void llvm::APInt::tcSet(llvm::APInt *this, unint64_t *a2, unsigned int a3)
{
  *this = a2;
  if (a3 >= 2)
  {
    bzero(this + 8, 8 * (a3 - 1));
  }
}

uint64_t llvm::APInt::tcAssign(uint64_t this, unint64_t *a2, const unint64_t *a3)
{
  if (a3)
  {
    v3 = 0;
    if (a3 < 4)
    {
      goto LABEL_7;
    }

    if ((this - a2) <= 0x1F)
    {
      goto LABEL_7;
    }

    v3 = a3 & 0xFFFFFFFC;
    v4 = a2 + 2;
    v5 = (this + 16);
    v6 = v3;
    do
    {
      v7 = *v4;
      *(v5 - 1) = *(v4 - 1);
      *v5 = v7;
      v4 += 4;
      v5 += 2;
      v6 -= 4;
    }

    while (v6);
    if (v3 != a3)
    {
LABEL_7:
      v8 = &a2[v3];
      v9 = (this + 8 * v3);
      v10 = a3 - v3;
      do
      {
        v11 = *v8++;
        *v9++ = v11;
        --v10;
      }

      while (v10);
    }
  }

  return this;
}

BOOL llvm::APInt::tcIsZero(llvm::APInt *this, const unint64_t *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (*this)
  {
    return 0;
  }

  v3 = 1;
  do
  {
    v4 = v3;
    if (a2 == v3)
    {
      break;
    }
  }

  while (!*(this + v3++));
  return v4 >= a2;
}

uint64_t llvm::APInt::tcLSB(llvm::APInt *this, const unint64_t *a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = 0;
  v3 = a2;
  while (1)
  {
    v5 = *this;
    this = (this + 8);
    v4 = v5;
    if (v5)
    {
      break;
    }

    v2 -= 64;
    if (!--v3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return __clz(__rbit64(v4)) - v2;
}

uint64_t llvm::APInt::tcMSB(llvm::APInt *this, const unint64_t *a2)
{
  v2 = 64 - (a2 << 6);
  v3 = a2 - 1;
  while (1)
  {
    v4 = *(this + v3);
    if (v4)
    {
      break;
    }

    v2 += 64;
    if (--v3 == -1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return (__clz(v4) - v2) ^ 0x3F;
}

void llvm::APInt::tcExtract(llvm::APInt *this, unint64_t *a2, uint64_t a3, const unint64_t *a4, unsigned int a5)
{
  v5 = a4 + 63;
  v6 = (a4 + 63) >> 6;
  v7 = a5 >> 6;
  if (a4 == 0 || a4 >= 0xFFFFFFC1)
  {
    v8 = a5 & 0x3F;
    goto LABEL_12;
  }

  if (v5 < 0x200 || (v9 = 8 * v7 + a3, this - v9 < 0x20))
  {
    v10 = 0;
LABEL_6:
    v11 = v6 - v10;
    v12 = 8 * v10;
    v13 = (this + 8 * v10);
    v14 = (a3 + v12 + 8 * v7);
    do
    {
      v15 = *v14++;
      *v13++ = v15;
      --v11;
    }

    while (v11);
    goto LABEL_8;
  }

  v10 = v6 & 0x3FFFFFC;
  v23 = (v9 + 16);
  v24 = (this + 16);
  v25 = v10;
  do
  {
    v26 = *v23;
    *(v24 - 1) = *(v23 - 1);
    *v24 = v26;
    v23 += 2;
    v24 += 2;
    v25 -= 4;
  }

  while (v25);
  if (v10 != v6)
  {
    goto LABEL_6;
  }

LABEL_8:
  v8 = a5 & 0x3F;
  if ((a5 & 0x3F) != 0)
  {
    v16 = *this >> v8;
    *this = v16;
    if (v6 != 1)
    {
      v17 = (this + 8);
      for (i = 1; i != v6; ++i)
      {
        *(v17 - 1) = (*(this + i) << (64 - v8)) | v16;
        v16 = *(this + i) >> v8;
        *v17++ = v16;
      }
    }
  }

LABEL_12:
  v19 = (v5 & 0xFFFFFFC0) - v8;
  if (v19 >= a4)
  {
    if (v19 <= a4 || (a4 & 0x3F) == 0)
    {
      goto LABEL_18;
    }

    v21 = v6 - 1;
    v22 = *(this + (v6 - 1)) & (0xFFFFFFFFFFFFFFFFLL >> -(a4 & 0x3F));
  }

  else
  {
    v20 = (*(a3 + 8 * (v7 + v6)) & (0xFFFFFFFFFFFFFFFFLL >> (v19 - a4))) << v19;
    v21 = v6 - 1;
    v22 = v20 | *(this + (v6 - 1));
  }

  *(this + v21) = v22;
LABEL_18:
  if (v6 < a2)
  {
    bzero(this + ((v5 >> 3) & 0x1FFFFFF8), 8 * (~v6 + a2) + 8);
  }
}

int8x16_t *llvm::APInt::tcNegate(int8x16_t *this, unint64_t *a2)
{
  if (!a2)
  {
    return this;
  }

  if (a2 < 4)
  {
    v2 = 0;
LABEL_7:
    v6 = a2 - v2;
    v7 = &this->i64[v2];
    do
    {
      *v7 = ~*v7;
      ++v7;
      --v6;
    }

    while (v6);
    goto LABEL_9;
  }

  v2 = a2 & 0xFFFFFFFC;
  v3 = this + 1;
  v4 = v2;
  do
  {
    v5 = vmvnq_s8(*v3);
    v3[-1] = vmvnq_s8(v3[-1]);
    *v3 = v5;
    v3 += 2;
    v4 -= 4;
  }

  while (v4);
  if (v2 != a2)
  {
    goto LABEL_7;
  }

LABEL_9:
  v8 = this->i64[0] + 1;
  this->i64[0] = v8;
  if (a2 != 1 && !v8)
  {
    v9 = this->i64[1];
    this->i64[1] = v9 + 1;
    if (v9 == -1)
    {
      v10 = this + 1;
      v11 = a2 - 2;
      do
      {
        if (!v11)
        {
          break;
        }

        --v11;
        v12 = __CFADD__(v10->i64[0]++, 1);
        v10 = (v10 + 8);
      }

      while (v12);
    }
  }

  return this;
}

llvm::APInt *llvm::APInt::tcFullMultiply(llvm::APInt *this, unint64_t *a2, unint64_t *a3, const unint64_t *a4, const unint64_t *a5)
{
  v6 = this;
  do
  {
    v7 = a5;
    a5 = a4;
    v8 = a3;
    a3 = a2;
    a2 = v8;
    a4 = v7;
  }

  while (a5 > v7);
  if (a5)
  {
    v9 = 0;
    v10 = a5;
    do
    {
      this = llvm::APInt::tcMultiplyPart(v6, v8, a3[v9], 0, v7, v7 + 1, v9 != 0);
      ++v9;
      v6 = (v6 + 8);
    }

    while (v10 != v9);
  }

  return this;
}

void *llvm::StoreIntToMemory(llvm **this, const llvm::APInt *__dst, size_t __n)
{
  if (*(this + 2) >= 0x41u)
  {
    v4 = *this;
  }

  else
  {
    v4 = this;
  }

  return memcpy(__dst, v4, __n);
}

void *llvm::LoadIntFromMemory(llvm *this, llvm::APInt *a2, size_t __n)
{
  if (*(this + 2) >= 0x41u)
  {
    this = *this;
  }

  return memcpy(this, a2, __n);
}

void llvm::APIntOps::mulhs(llvm::APIntOps *this@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  v7 = 2 * *(this + 2);
  llvm::APInt::sext(this, v7, &v20);
  llvm::APInt::sext(a2, v7, &v18);
  v8 = v21;
  if (v21 > 0x40)
  {
    v12 = (v21 + 63) >> 6;
    v13 = operator new[](8 * v12);
    v14 = 0;
    v17 = v8;
    v16 = v13;
    v9 = v20;
    v10 = v18;
    v15 = (v8 + 63) >> 6;
    do
    {
      llvm::APInt::tcMultiplyPart(&v13[v14], v9, *&v10[v14 * 8], 0, (v8 + 63) >> 6, v15, v14 != 0);
      ++v14;
      --v15;
    }

    while (v15);
    v13[(v12 - 1)] &= 0xFFFFFFFFFFFFFFFFLL >> -v8;
    llvm::APInt::extractBits(&v16, *(this + 2), *(this + 2), a3);
    operator delete[](v13);
    if (v19 < 0x41)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v9 = v20;
  v10 = v18;
  v17 = v21;
  v11 = 0xFFFFFFFFFFFFFFFFLL >> -v21;
  if (!v21)
  {
    v11 = 0;
  }

  v16 = ((v18 * v20) & v11);
  llvm::APInt::extractBits(&v16, *(this + 2), *(this + 2), a3);
  if (v19 >= 0x41)
  {
LABEL_9:
    if (v10)
    {
      operator delete[](v10);
    }
  }

LABEL_11:
  if (v8 >= 0x41 && v9)
  {

    operator delete[](v9);
  }
}

void llvm::APIntOps::mulhu(llvm::APIntOps **this@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(this + 2);
  v6 = (2 * v5);
  if (v6 < 0x41)
  {
    v7 = *this;
    v8 = 0xFFFFFFFFFFFFFFFFLL >> ((-2 * v5) & 0x3E);
    if (!v6)
    {
      v8 = 0;
    }

    v9 = *a2 & v8;
    v29 = 2 * v5;
    v28 = ((v9 * (v7 & v8)) & v8);
    llvm::APInt::extractBits(&v28, v5, v5, a3);
    return;
  }

  if (v5)
  {
    v11 = (v6 + 63) >> 6;
    v13 = operator new[](8 * v11);
    v14 = v13;
    if (v5 >= 0x41)
    {
      v15 = *this;
    }

    else
    {
      v15 = this;
    }

    v16 = (v5 + 63) >> 6;
    memcpy(v13, v15, 8 * v16);
    bzero(&v14[v16], (8 * (v11 - v16)));
    v17 = *(a2 + 2);
    v18 = v6 + 63;
    if (v17 == v6)
    {
      goto LABEL_10;
    }

LABEL_12:
    v20 = v18 >> 6;
    v21 = 8 * v20;
    v22 = operator new[](8 * v20);
    v19 = v22;
    if (v17 >= 0x41)
    {
      v23 = *a2;
    }

    else
    {
      v23 = a2;
    }

    v24 = (v17 + 63) >> 6;
    memcpy(v22, v23, 8 * v24);
    bzero(&v19[8 * v24], (8 * (v20 - v24)));
    goto LABEL_16;
  }

  v14 = operator new[](0);
  v17 = *(a2 + 2);
  v18 = v6 + 63;
  if (v17 != v6)
  {
    goto LABEL_12;
  }

LABEL_10:
  v19 = operator new[]((v18 >> 3) & 0x3FFFFFF8);
  memcpy(v19, *a2, (v18 >> 3) & 0x3FFFFFF8);
  v20 = v18 >> 6;
  v21 = 8 * v20;
LABEL_16:
  v25 = operator new[](v21);
  v26 = 0;
  v29 = 2 * v5;
  v28 = v25;
  v27 = v20;
  do
  {
    llvm::APInt::tcMultiplyPart(&v25[v26], v14, *&v19[v26 * 8], 0, v20, v27, v26 != 0);
    ++v26;
    --v27;
  }

  while (v27);
  v25[(v20 - 1)] &= 0xFFFFFFFFFFFFFFFFLL >> ((-2 * v5) & 0x3E);
  llvm::APInt::extractBits(&v28, v5, v5, a3);
  operator delete[](v25);
  operator delete[](v19);

  operator delete[](v14);
}

void llvm::decodeBase64(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = *a3;
  *(a3 + 8) = *a3;
  if (!a2)
  {
LABEL_87:
    *a4 = 0;
    return;
  }

  if ((a2 & 3) != 0)
  {
    v5 = a4;
    v6 = std::generic_category();
    v59 = operator new(0x40uLL);
    v60 = xmmword_1E0982940;
    strcpy(v59, "Base64 encoded strings must be a multiple of 4 bytes in length");
    llvm::createStringError(&v59, 92, v6, v5);
    if (SHIBYTE(v60) < 0)
    {
      v7 = v59;
      goto LABEL_93;
    }

    return;
  }

  v47 = a4;
  v9 = 0;
  v10 = a2 - 2;
  v53 = a2 - 2;
  v54 = a1 + 1;
  v48 = a2 - 5;
  v11 = a1 + 3;
  v49 = a2 - 4;
  v50 = a2 - 3;
  v51 = a1 + 3;
  while (1)
  {
    v12 = *(v11 + v9 - 3);
    if (v12 > 0x7A)
    {
LABEL_79:
      v14 = v9;
      goto LABEL_91;
    }

    v13 = decodeBase64Byte(unsigned char)::DecodeTable[*(v11 + v9 - 3)];
    if (v12 != 61 || v13 == 64)
    {
      if (v13 == 64)
      {
        goto LABEL_79;
      }
    }

    else
    {
      if (v9 < v10)
      {
        LOBYTE(v12) = 61;
        v14 = v9;
        goto LABEL_91;
      }

      if (v10 == v9 && *(v54 + v10) != 61)
      {
        goto LABEL_82;
      }
    }

    v14 = v9 | 1;
    v12 = *(v11 + v9 - 2);
    if (v12 > 0x7A)
    {
      goto LABEL_91;
    }

    v15 = decodeBase64Byte(unsigned char)::DecodeTable[*(v11 + v9 - 2)];
    if (v12 != 61 || v15 == 64)
    {
      if (v15 == 64)
      {
        v14 = v9 + 1;
        goto LABEL_91;
      }
    }

    else
    {
      if (v9 + 1 < v10)
      {
        goto LABEL_80;
      }

      if (v50 == v9 && *(v54 + v10) != 61)
      {
        goto LABEL_82;
      }
    }

    v12 = *(v11 + v9 - 1);
    if (v12 > 0x7A)
    {
      v14 = v9 + 2;
      goto LABEL_91;
    }

    v14 = v9 | 2;
    v16 = decodeBase64Byte(unsigned char)::DecodeTable[*(v11 + v9 - 1)];
    if (v12 != 61 || v16 == 64)
    {
      if (v16 == 64)
      {
        goto LABEL_91;
      }
    }

    else
    {
      if (v9 + 2 < v10)
      {
        goto LABEL_80;
      }

      if (v49 == v9 && *(v54 + v10) != 61)
      {
        goto LABEL_82;
      }
    }

    v14 = v9 | 3;
    v12 = *(v11 + v9);
    if (v12 > 0x7A)
    {
      goto LABEL_91;
    }

    v17 = decodeBase64Byte(unsigned char)::DecodeTable[*(v11 + v9)];
    if (v12 != 61 || v17 == 64)
    {
      break;
    }

    if (v9 + 3 < v10)
    {
LABEL_80:
      LOBYTE(v12) = 61;
      goto LABEL_91;
    }

    if (v48 == v9 && *(v54 + v10) != 61)
    {
LABEL_82:
      LOBYTE(v12) = 61;
      v14 = v10;
      goto LABEL_91;
    }

LABEL_40:
    v18 = (4 * v13) | (v15 >> 4) & 3;
    v19 = *(a3 + 16);
    v55 = decodeBase64Byte(unsigned char)::DecodeTable[*(v11 + v9)];
    if (v4 >= v19)
    {
      v26 = *a3;
      v27 = &v4[-*a3];
      v28 = v27 + 1;
      if ((v27 + 1) < 0)
      {
        goto LABEL_95;
      }

      v29 = v19 - v26;
      if (2 * v29 > v28)
      {
        v28 = 2 * v29;
      }

      if (v29 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v30 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v30 = v28;
      }

      if (v30)
      {
        v31 = operator new(v30);
      }

      else
      {
        v31 = 0;
      }

      v31[v27] = v18;
      v20 = &v31[v27 + 1];
      memcpy(v31, v26, v27);
      *a3 = v31;
      *(a3 + 8) = v20;
      *(a3 + 16) = &v31[v30];
      if (v26)
      {
        operator delete(v26);
      }

      LOBYTE(v17) = v55;
      *(a3 + 8) = v20;
      v21 = (16 * v15) | (v16 >> 2) & 0xF;
      v22 = *(a3 + 16);
      if (v20 < v22)
      {
LABEL_42:
        *v20 = v21;
        v23 = v20 + 1;
        *(a3 + 8) = v23;
        v24 = v17 & 0x3F | (v16 << 6);
        v25 = *(a3 + 16);
        if (v23 >= v25)
        {
          goto LABEL_68;
        }

        goto LABEL_6;
      }
    }

    else
    {
      *v4 = v18;
      v20 = v4 + 1;
      *(a3 + 8) = v20;
      v21 = (16 * v15) | (v16 >> 2) & 0xF;
      v22 = *(a3 + 16);
      if (v20 < v22)
      {
        goto LABEL_42;
      }
    }

    v32 = *a3;
    v33 = &v20[-*a3];
    v34 = v33 + 1;
    if ((v33 + 1) < 0)
    {
      goto LABEL_95;
    }

    v35 = v22 - v32;
    if (2 * v35 > v34)
    {
      v34 = 2 * v35;
    }

    if (v35 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v36 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v36 = v34;
    }

    if (v36)
    {
      v37 = operator new(v36);
    }

    else
    {
      v37 = 0;
    }

    v37[v33] = v21;
    v23 = &v37[v33 + 1];
    memcpy(v37, v32, v33);
    *a3 = v37;
    *(a3 + 8) = v23;
    *(a3 + 16) = &v37[v36];
    if (v32)
    {
      operator delete(v32);
    }

    *(a3 + 8) = v23;
    v24 = v55 & 0x3F | (v16 << 6);
    v25 = *(a3 + 16);
    if (v23 >= v25)
    {
LABEL_68:
      v38 = *a3;
      v39 = &v23[-*a3];
      v40 = v39 + 1;
      if ((v39 + 1) < 0)
      {
LABEL_95:
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v41 = v25 - v38;
      if (2 * v41 > v40)
      {
        v40 = 2 * v41;
      }

      if (v41 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v42 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v42 = v40;
      }

      if (v42)
      {
        v43 = operator new(v42);
      }

      else
      {
        v43 = 0;
      }

      v43[v39] = v24;
      v4 = &v43[v39 + 1];
      memcpy(v43, v38, v39);
      *a3 = v43;
      *(a3 + 8) = v4;
      *(a3 + 16) = &v43[v42];
      if (v38)
      {
        operator delete(v38);
      }

      goto LABEL_7;
    }

LABEL_6:
    *v23 = v24;
    v4 = v23 + 1;
LABEL_7:
    v10 = v53;
    v11 = v51;
    *(a3 + 8) = v4;
    v9 += 4;
    if (v9 >= a2)
    {
      if (*(a1 + a2 - 1) == 61)
      {
        *(a3 + 8) = v4 - 1;
        if (*(a1 + v53) == 61)
        {
          *(a3 + 8) = v4 - 2;
        }
      }

      a4 = v47;
      goto LABEL_87;
    }
  }

  if (v17 != 64)
  {
    goto LABEL_40;
  }

  v14 = v9 + 3;
LABEL_91:
  v44 = std::generic_category();
  v66[0] = 0;
  v66[1] = 0;
  v67 = 0;
  LODWORD(v60) = 0;
  v63 = 0;
  v64 = 1;
  v61 = 0;
  v62 = 0;
  *(&v60 + 1) = 0;
  v59 = &unk_1F5B3FB30;
  v65 = v66;
  llvm::raw_ostream::SetBufferAndMode(&v59, 0, 0, 0);
  v56[0] = &unk_1F5B3E1A0;
  v56[1] = "Invalid Base64 character %#2.2x at index %llu";
  v57 = v12;
  v58 = v14;
  llvm::raw_ostream::operator<<(&v59, v56);
  llvm::raw_ostream::~raw_ostream(&v59);
  v45 = operator new(0x38uLL);
  LOWORD(v62) = 260;
  v59 = v66;
  *v47 = llvm::StringError::StringError(v45, &v59, 92, v44);
  if ((SHIBYTE(v67) & 0x80000000) == 0)
  {
    return;
  }

  v7 = v66[0];
LABEL_93:
  operator delete(v7);
}

uint64_t llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16[0] = 0;
  AsUnsignedInteger = llvm::getAsUnsignedInteger(a5, a6, 0, v16);
  if ((AsUnsignedInteger & 1) != 0 || HIDWORD(v16[0]))
  {
    v15 = 1283;
    v14[0] = "'";
    v14[2] = a5;
    v14[3] = a6;
    v16[0] = v14;
    v16[2] = "' value invalid for uint argument!";
    v17 = 770;
    v13 = llvm::errs(AsUnsignedInteger);
    llvm::cl::Option::error(a1, v16, 0, 0, v13);
    return 1;
  }

  else
  {
    LODWORD(v14[0]) = v16[0];
    *(a1 + 128) = v16[0];
    *(a1 + 12) = a2;
    v11 = *(a1 + 184);
    if (v11)
    {
      (*(*v11 + 48))(v11, v14);
      return 0;
    }

    else
    {
      std::__throw_bad_function_call[abi:nn200100]();
      return llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::getValueExpectedFlagDefault();
    }
  }
}

uint64_t llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::getOptionWidth(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == 1)
  {
    v3 = 7;
  }

  else
  {
    v3 = v2 + 7;
  }

  (*(*(a1 + 152) + 16))();
  if (v4)
  {
    v5 = 6;
    if ((*(a1 + 10) & 0x400) == 0)
    {
      v5 = 3;
    }

    v6 = *(a1 + 56);
    if (!v6)
    {
      v6 = v4;
    }

    v3 += v5 + v6;
  }

  return v3;
}

uint64_t llvm::cl::basic_parser_impl::getOptionWidth(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3 == 1)
  {
    v4 = 7;
  }

  else
  {
    v4 = v3 + 7;
  }

  (*(*a1 + 16))(a1);
  if (v5)
  {
    v6 = 6;
    if ((*(a2 + 10) & 0x400) == 0)
    {
      v6 = 3;
    }

    v7 = *(a2 + 56);
    if (!v7)
    {
      v7 = v5;
    }

    v4 += v6 + v7;
  }

  return v4;
}

void *llvm::cl::basic_parser_impl::printOptionInfo(llvm::cl::basic_parser_impl *this, const llvm::cl::Option *a2, unsigned int a3)
{
  v6 = llvm::outs(this);
  v47 = *(a2 + 1);
  v48 = 2;
  v7 = (*(*this + 16))(this);
  if (!v8)
  {
    goto LABEL_48;
  }

  v9 = v7;
  v10 = v8;
  v11 = *(a2 + 5);
  if ((v11 & 0x400) != 0)
  {
    v16 = llvm::outs(v7);
    v17 = v16[4];
    if (v16[3] - v17 > 1uLL)
    {
      *v17 = 15392;
      v18 = (v16[4] + 2);
      v16[4] = v18;
    }

    else
    {
      v16 = llvm::raw_ostream::write(v16, " <", 2uLL);
      v18 = v16[4];
    }

    v19 = *(a2 + 7);
    if (v19)
    {
      v20 = *(a2 + 6);
    }

    else
    {
      v20 = v9;
    }

    if (v19)
    {
      v10 = *(a2 + 7);
    }

    if (v10 <= v16[3] - v18)
    {
      v23 = v16;
      memcpy(v18, v20, v10);
      v21 = v23;
      v22 = (v23[4] + v10);
      v23[4] = v22;
      if (v23[3] - v22 > 3uLL)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v21 = llvm::raw_ostream::write(v16, v20, v10);
      v22 = v21[4];
      if (v21[3] - v22 > 3uLL)
      {
LABEL_17:
        *v22 = 774778430;
        v21[4] += 4;
        goto LABEL_48;
      }
    }

    llvm::raw_ostream::write(v21, ">...", 4uLL);
    goto LABEL_48;
  }

  v12 = (v11 >> 3) & 3;
  if (!v12)
  {
    v24 = (*(*a2 + 8))(a2);
    v25 = v24;
    v13 = llvm::outs(v24);
    if (v25 == 1)
    {
      goto LABEL_5;
    }

LABEL_21:
    if (*(a2 + 3) == 1)
    {
      v26 = " <";
    }

    else
    {
      v26 = "=<";
    }

    v27 = *(v13 + 4);
    if (*(v13 + 3) - v27 > 1uLL)
    {
      *v27 = *v26;
      v28 = (*(v13 + 4) + 2);
      *(v13 + 4) = v28;
    }

    else
    {
      v13 = llvm::raw_ostream::write(v13, v26, 2uLL);
      v28 = *(v13 + 4);
    }

    v33 = *(a2 + 7);
    if (v33)
    {
      v34 = *(a2 + 6);
    }

    else
    {
      v34 = v9;
    }

    if (v33)
    {
      v10 = *(a2 + 7);
    }

    if (v10 <= *(v13 + 3) - v28)
    {
      v38 = v13;
      memcpy(v28, v34, v10);
      v35 = v38;
      v36 = (*(v38 + 4) + v10);
      *(v38 + 4) = v36;
      if (v36 >= *(v38 + 3))
      {
        goto LABEL_43;
      }
    }

    else
    {
      v35 = llvm::raw_ostream::write(v13, v34, v10);
      v36 = *(v35 + 4);
      if (v36 >= *(v35 + 3))
      {
LABEL_43:
        llvm::raw_ostream::write(v35, 62);
        goto LABEL_48;
      }
    }

    *(v35 + 4) = v36 + 1;
    *v36 = 62;
    goto LABEL_48;
  }

  v13 = llvm::outs(v7);
  if (v12 != 1)
  {
    goto LABEL_21;
  }

LABEL_5:
  v14 = *(v13 + 4);
  if ((*(v13 + 3) - v14) > 2)
  {
    *(v14 + 2) = 60;
    *v14 = 15707;
    v15 = (*(v13 + 4) + 3);
    *(v13 + 4) = v15;
  }

  else
  {
    v13 = llvm::raw_ostream::write(v13, "[=<", 3uLL);
    v15 = *(v13 + 4);
  }

  v29 = *(a2 + 7);
  if (v29)
  {
    v30 = *(a2 + 6);
  }

  else
  {
    v30 = v9;
  }

  if (v29)
  {
    v10 = *(a2 + 7);
  }

  if (v10 <= *(v13 + 3) - v15)
  {
    v37 = v13;
    memcpy(v15, v30, v10);
    v31 = v37;
    v32 = (*(v37 + 4) + v10);
    *(v37 + 4) = v32;
    if (*(v37 + 3) - v32 > 1uLL)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v31 = llvm::raw_ostream::write(v13, v30, v10);
    v32 = v31[4];
    if (v31[3] - v32 > 1uLL)
    {
LABEL_34:
      *v32 = 23870;
      v31[4] += 2;
      goto LABEL_48;
    }
  }

  llvm::raw_ostream::write(v31, ">]", 2uLL);
LABEL_48:
  v40 = *(a2 + 4);
  v39 = *(a2 + 5);
  v41 = *(a2 + 3);
  if (v41 == 1)
  {
    v42 = 7;
  }

  else
  {
    v42 = v41 + 7;
  }

  (*(*this + 16))(this);
  if (v43)
  {
    v44 = 6;
    if ((*(a2 + 5) & 0x400) == 0)
    {
      v44 = 3;
    }

    v45 = *(a2 + 7);
    if (!v45)
    {
      LODWORD(v45) = v43;
    }

    v42 += v44 + v45;
  }

  return llvm::cl::Option::printHelpStr(v40, v39, a3, v42);
}

void llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::printOptionValue(uint64_t a1, int a2, char a3)
{
  if ((a3 & 1) != 0 || *(a1 + 148) != 1 || *(a1 + 144) != *(a1 + 128))
  {
    v9 = v3;
    v10 = v4;
    v5 = *(a1 + 128);
    v7 = *(a1 + 144);
    v8 = *(a1 + 148);
    v6 = &unk_1F5AFEFE8;
    llvm::cl::parser<unsigned int>::printOptionDiff(a1, a1, v5, &v6, a2);
  }
}

uint64_t llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::setDefault(uint64_t result)
{
  if (*(result + 148) == 1)
  {
    *(result + 128) = *(result + 144);
  }

  else
  {
    *(result + 128) = 0;
  }

  return result;
}

uint64_t llvm::cl::Option::addArgument(llvm::cl::Option *this)
{
  if (atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
  {
    result = qword_1EE17CA68;
    v6 = this;
    if ((*(this + 5) & 0x2000) == 0)
    {
LABEL_3:
      v5[0] = result;
      v5[1] = &v6;
      goto LABEL_8;
    }
  }

  else
  {
    result = qword_1EE17CA68;
    v6 = this;
    if ((*(this + 5) & 0x2000) == 0)
    {
      goto LABEL_3;
    }
  }

  v3 = *(result + 72);
  if (v3 >= *(result + 76))
  {
    v4 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(result + 64, result + 80, v3 + 1, 8);
    result = v4;
    LODWORD(v3) = *(v4 + 72);
  }

  *(*(result + 64) + 8 * v3) = this;
  ++*(result + 72);
LABEL_8:
  *(this + 5) |= 0x4000u;
  return result;
}

uint64_t llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::handleOccurrence(uint64_t a1, __int16 a2, int a3, int a4, void *__src, size_t __len)
{
  memset(&__p, 0, sizeof(__p));
  if (!__src)
  {
    memset(&__dst, 0, sizeof(__dst));
    goto LABEL_14;
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_19;
  }

  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (__len | 7) + 1;
    }

    v11 = __src;
    v12 = operator new(v10);
    __src = v11;
    p_dst = v12;
    __dst.__r_.__value_.__l.__size_ = __len;
    __dst.__r_.__value_.__r.__words[2] = v10 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v12;
LABEL_12:
    memmove(p_dst, __src, __len);
    p_dst->__r_.__value_.__s.__data_[__len] = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  *(&__dst.__r_.__value_.__s + 23) = __len;
  p_dst = &__dst;
  if (__len)
  {
    goto LABEL_12;
  }

  __dst.__r_.__value_.__s.__data_[0] = 0;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_13:
  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_14:
  __p = __dst;
  std::string::operator=((a1 + 128), &__p);
  *(a1 + 12) = a2;
  v13 = *(a1 + 224);
  if (!v13)
  {
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_19:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  (*(*v13 + 48))(v13, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 0;
}

uint64_t llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::getOptionWidth(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == 1)
  {
    v3 = 7;
  }

  else
  {
    v3 = v2 + 7;
  }

  (*(*(a1 + 192) + 16))();
  if (v4)
  {
    v5 = 6;
    if ((*(a1 + 10) & 0x400) == 0)
    {
      v5 = 3;
    }

    v6 = *(a1 + 56);
    if (!v6)
    {
      v6 = v4;
    }

    v3 += v5 + v6;
  }

  return v3;
}

void *llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::printOptionValue(void *result, int a2, char a3)
{
  if ((a3 & 1) != 0 || *(result + 184) != 1)
  {
    goto LABEL_16;
  }

  v4 = *(result + 183);
  if (v4 >= 0)
  {
    v5 = *(result + 183);
  }

  else
  {
    v5 = result[21];
  }

  v6 = *(result + 151);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = result[17];
  }

  if (v5 != v6 || (v4 >= 0 ? (v8 = result + 20) : (v8 = result[20]), v7 >= 0 ? (v9 = result + 16) : (v9 = result[16]), v10 = result, v11 = memcmp(v8, v9, v5), result = v10, v11))
  {
LABEL_16:
    v12 = *(result + 151);
    if (v12 >= 0)
    {
      v13 = result + 16;
    }

    else
    {
      v13 = result[16];
    }

    if (v12 >= 0)
    {
      v14 = *(result + 151);
    }

    else
    {
      v14 = result[17];
    }

    return llvm::cl::parser<std::string>::printOptionDiff(result, result, v13, v14, (result + 19), a2);
  }

  return result;
}

void llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::setDefault(uint64_t a1)
{
  if (*(a1 + 184) == 1)
  {
    v4 = (a1 + 128);

    std::string::operator=(v4, (a1 + 160));
  }

  else
  {
    v6 = v1;
    v7 = v2;
    memset(&__str, 0, sizeof(__str));
    std::string::operator=((a1 + 128), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v18 = 0;
  result = llvm::cl::parser<BOOL>::parse(a1, a1, a3, a4, a5, a6, &v18);
  if ((result & 1) == 0)
  {
    v9 = result;
    *(a1 + 128) = v18;
    *(a1 + 12) = a2;
    v10 = *(a1 + 184);
    if (v10)
    {
      (*(*v10 + 48))(v10, &v18);
      return v9;
    }

    else
    {
      v11 = std::__throw_bad_function_call[abi:nn200100]();
      return llvm::cl::parser<BOOL>::parse(v11, v12, v13, v14, v15, v16, v17);
    }
  }

  return result;
}

uint64_t llvm::cl::parser<BOOL>::parse(llvm *a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, _BYTE *a7)
{
  if (a6 > 3)
  {
    if (a6 != 5)
    {
      if (a6 != 4 || *a5 != 1702195828 && *a5 != 1163219540 && *a5 != 1702195796)
      {
        goto LABEL_25;
      }

      goto LABEL_12;
    }

    if ((*a5 != 1936482662 || a5[4] != 101) && (*a5 != 1397506374 || a5[4] != 69) && (*a5 != 1936482630 || a5[4] != 101))
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (!a6)
    {
      goto LABEL_12;
    }

    if (a6 != 1)
    {
LABEL_25:
      v20 = v7;
      v21 = v8;
      v17 = 1283;
      v16[0] = "'";
      v16[2] = a5;
      v16[3] = a6;
      v18[0] = v16;
      v18[2] = "' is invalid value for BOOLean argument! Try 0 or 1";
      v19 = 770;
      v15 = llvm::errs(a1);
      llvm::cl::Option::error(a2, v18, 0, 0, v15);
      return 1;
    }

    v9 = *a5;
    if (v9 != 48)
    {
      if (v9 != 49)
      {
        goto LABEL_25;
      }

LABEL_12:
      result = 0;
      *a7 = 1;
      return result;
    }
  }

  result = 0;
  *a7 = 0;
  return result;
}

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::getOptionWidth(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == 1)
  {
    v3 = 7;
  }

  else
  {
    v3 = v2 + 7;
  }

  (*(*(a1 + 152) + 16))();
  if (v4)
  {
    v5 = 6;
    if ((*(a1 + 10) & 0x400) == 0)
    {
      v5 = 3;
    }

    v6 = *(a1 + 56);
    if (!v6)
    {
      v6 = v4;
    }

    v3 += v5 + v6;
  }

  return v3;
}

void llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::printOptionValue(uint64_t a1, int a2, char a3)
{
  if ((a3 & 1) != 0 || *(a1 + 145) != 1 || *(a1 + 144) != *(a1 + 128))
  {
    v8 = v3;
    v9 = v4;
    v5 = *(a1 + 128);
    v7 = *(a1 + 144);
    v6 = &unk_1F5AFB2B0;
    llvm::cl::parser<BOOL>::printOptionDiff(a1, a1, v5, &v6, a2);
  }
}

_BYTE *llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::setDefault(_BYTE *result)
{
  if (result[145] == 1)
  {
    result[128] = result[144];
  }

  else
  {
    result[128] = 0;
  }

  return result;
}

uint64_t llvm::cl::AddLiteralOption(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
  {
  }

  v8[0] = a2;
  v8[1] = a3;
  v7[0] = qword_1EE17CA68;
  v7[1] = a1;
  v7[2] = v8;
}

uint64_t llvm::cl::Option::setArgStr(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  if ((*(result + 10) & 0x4000) == 0)
  {
    *(result + 16) = a2;
    *(result + 24) = a3;
    if (a3 != 1)
    {
      return result;
    }

LABEL_7:
    *(v5 + 10) |= 0x1000u;
    return result;
  }

  if (!atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
  {
  }

  v8[0] = a2;
  v8[1] = a3;
  v6[0] = qword_1EE17CA68;
  v6[1] = &v7;
  v6[2] = v8;
  v7 = v5;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  if (a3 == 1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t llvm::cl::Option::addCategory(uint64_t this, llvm::cl::OptionCategory *a2)
{
  if ((atomic_load_explicit(&_MergedGlobals_50, memory_order_acquire) & 1) == 0)
  {
    v9 = this;
    v12 = a2;
    llvm::cl::Option::addCategory();
    a2 = v12;
    this = v9;
    if (v12 == &unk_1EE17CAC8)
    {
      goto LABEL_5;
    }

LABEL_3:
    v2 = **(this + 64);
    if (atomic_load_explicit(&_MergedGlobals_50, memory_order_acquire))
    {
      if (v2 != &unk_1EE17CAC8)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v10 = this;
      v13 = a2;
      v7 = v2;
      llvm::cl::Option::addCategory();
      this = v10;
      a2 = v13;
      if (v7 != &unk_1EE17CAC8)
      {
        goto LABEL_5;
      }
    }

    **(this + 64) = a2;
    return this;
  }

  if (a2 != &unk_1EE17CAC8)
  {
    goto LABEL_3;
  }

LABEL_5:
  v3 = *(this + 64);
  v4 = *(this + 72);
  v5 = v3;
  if (v4)
  {
    v6 = 8 * v4;
    v5 = *(this + 64);
    while (*v5 != a2)
    {
      ++v5;
      v6 -= 8;
      if (!v6)
      {
        goto LABEL_11;
      }
    }
  }

  if (v5 == &v3[v4])
  {
LABEL_11:
    if (v4 >= *(this + 76))
    {
      v11 = a2;
      v8 = this;
      llvm::SmallVectorBase<unsigned int>::grow_pod(this + 64, this + 80, v4 + 1, 8);
      a2 = v11;
      this = v8;
      v4 = *(v8 + 72);
      v3 = *(v8 + 64);
    }

    v3[v4] = a2;
    ++*(this + 72);
  }

  return this;
}

void *llvm::cl::getGeneralCategory(llvm::cl *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_50, memory_order_acquire) & 1) == 0)
  {
    llvm::cl::Option::addCategory();
  }

  return &unk_1EE17CAC8;
}

const void **llvm::cl::OptionCategory::registerCategory(llvm::cl::OptionCategory *this)
{
  if (!atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
  {
  }

  result = (qword_1EE17CA68 + 112);
  v3 = *(qword_1EE17CA68 + 112);
  if (*(qword_1EE17CA68 + 120) != v3)
  {
LABEL_4:

    return llvm::SmallPtrSetImplBase::insert_imp_big(result, this);
  }

  v4 = *(qword_1EE17CA68 + 132);
  if (!v4)
  {
LABEL_11:
    if (v4 < *(qword_1EE17CA68 + 128))
    {
      *(qword_1EE17CA68 + 132) = v4 + 1;
      *(v3 + 8 * v4) = this;
      return result;
    }

    goto LABEL_4;
  }

  v5 = 8 * v4;
  v6 = *(qword_1EE17CA68 + 112);
  while (*v6 != this)
  {
    ++v6;
    v5 -= 8;
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  return result;
}

void anonymous namespace::CommandLineParser::registerSubCommand(uint64_t a1, char *a2)
{
  v4 = *(a1 + 272);
  if (*(a1 + 280) != v4)
  {
    goto LABEL_2;
  }

  v13 = *(a1 + 292);
  if (v13)
  {
    v14 = 8 * v13;
    v15 = *(a1 + 272);
    while (*v15 != a2)
    {
      ++v15;
      v14 -= 8;
      if (!v14)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
LABEL_20:
    if (v13 >= *(a1 + 288))
    {
LABEL_2:
      llvm::SmallPtrSetImplBase::insert_imp_big((a1 + 272), a2);
      goto LABEL_3;
    }

    *(a1 + 292) = v13 + 1;
    *(v4 + 8 * v13) = a2;
  }

LABEL_3:
  if (atomic_load_explicit(qword_1EE17CA98, memory_order_acquire))
  {
    v5 = *(qword_1EE17CA98[0] + 128);
    v6 = *(qword_1EE17CA98[0] + 136);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_23:
    v7 = v5;
    v12 = &v5[v6];
    if (v5 == v12)
    {
      return;
    }

    goto LABEL_24;
  }

  llvm::ManagedStaticBase::RegisterManagedStatic(qword_1EE17CA98, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
  v5 = *(qword_1EE17CA98[0] + 128);
  v6 = *(qword_1EE17CA98[0] + 136);
  if (!v6)
  {
    goto LABEL_23;
  }

LABEL_5:
  v7 = v5;
  if (*v5)
  {
    v8 = *v5 == -8;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    do
    {
      v10 = v7[1];
      ++v7;
      v9 = v10;
      if (v10)
      {
        v11 = v9 == -8;
      }

      else
      {
        v11 = 1;
      }
    }

    while (v11);
  }

  v12 = &v5[v6];
  if (v7 != v12)
  {
LABEL_24:
    v16 = *v7;
    do
    {
      v17 = *(v16 + 8);
      v18 = *(v17 + 10);
      if ((v18 & 7) == 4 || ((v19 = v18 & 0x180, v20 = v18 & 0x800, v19 != 128) ? (v21 = v20 == 0) : (v21 = 0), !v21 || *(v17 + 24)))
      {
      }

      else
      {
      }

      do
      {
        v22 = v7[1];
        ++v7;
        v16 = v22;
        if (v22)
        {
          v23 = v16 == -8;
        }

        else
        {
          v23 = 1;
        }
      }

      while (v23);
    }

    while (v7 != v12);
  }
}

uint64_t ProvideOption(unsigned __int16 *a1, uint64_t a2, uint64_t a3, char *a4, size_t a5, int a6, uint64_t a7, unsigned int *a8)
{
  v16 = a1[7];
  result = (a1[5] >> 3) & 3;
  if (!result)
  {
    result = (*(*a1 + 8))(a1);
    if (result != 3)
    {
      goto LABEL_3;
    }

LABEL_11:
    if (!v16)
    {
      if (a4)
      {
        v34[0] = "does not allow a value! '";
        v34[2] = a4;
        v34[3] = a5;
        v35 = 1283;
        v36[0] = v34;
        v36[2] = "' specified.";
        v21 = 770;
LABEL_40:
        v37 = v21;
        v32 = llvm::errs(result);
        llvm::cl::Option::error(a1, v36, 0, 0, v32);
        return 1;
      }

      goto LABEL_44;
    }

    v19 = "multi-valued option specified with ValueDisallowed modifier!";
LABEL_39:
    v36[0] = v19;
    v21 = 259;
    goto LABEL_40;
  }

  if (result == 3)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (result != 2 || a4)
  {
    if (v16)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

  v20 = *a8 + 1;
  if (v20 >= a6 || (~a1[5] & 0x180) == 0)
  {
    v19 = "requires a value!";
    goto LABEL_39;
  }

  *a8 = v20;
  a4 = *(a7 + 8 * v20);
  if (a4)
  {
    result = strlen(*(a7 + 8 * v20));
    a5 = result;
    if (v16)
    {
LABEL_6:
      if (a4)
      {
        result = CommaSeparateAndAddOccurrence(a1, *a8, a2, a3, a4, a5, 0);
        if (result)
        {
          return 1;
        }

        --v16;
        v18 = 1;
        if (!v16)
        {
          return 0;
        }

        goto LABEL_23;
      }

LABEL_22:
      v18 = 0;
LABEL_23:
      v22 = *a8;
      v23 = v22 + 1;
      if (v22 + 1 < a6)
      {
        *a8 = v23;
        v24 = *(a7 + 8 * v23);
        if (v24)
        {
          v25 = strlen(*(a7 + 8 * v23));
        }

        else
        {
          v25 = 0;
        }

        result = CommaSeparateAndAddOccurrence(a1, v23, a2, a3, v24, v25, v18);
        if (result)
        {
          return 1;
        }

        if (v16 == 1)
        {
          return 0;
        }

        v26 = v16 - 2;
        while (1)
        {
          v27 = v26;
          v28 = *a8;
          v29 = v28 + 1;
          if (v28 + 1 >= a6)
          {
            break;
          }

          *a8 = v29;
          v30 = *(a7 + 8 * v29);
          if (v30)
          {
            v31 = strlen(*(a7 + 8 * v29));
          }

          else
          {
            v31 = 0;
          }

          result = CommaSeparateAndAddOccurrence(a1, v29, a2, a3, v30, v31, 1);
          if ((result & 1) == 0)
          {
            v26 = v27 - 1;
            if (v27)
            {
              continue;
            }
          }

          return result;
        }
      }

      v19 = "not enough values!";
      goto LABEL_39;
    }
  }

  else
  {
    if (v16)
    {
      goto LABEL_22;
    }

    a5 = 0;
    a4 = 0;
  }

LABEL_44:
  v33 = *a8;

  return CommaSeparateAndAddOccurrence(a1, v33, a2, a3, a4, a5, 0);
}

void llvm::cl::TokenizeGNUCommandLine(uint64_t a1, unint64_t a2, void ***a3, uint64_t a4, uint64_t a5)
{
  v55[16] = *MEMORY[0x1E69E9840];
  v53 = v55;
  v54 = xmmword_1E0971D70;
  if (!a2)
  {
    goto LABEL_63;
  }

  v6 = 0;
  do
  {
    if (v54)
    {
      v7 = *(a1 + v6);
    }

    else
    {
      if (v6 == a2)
      {
        goto LABEL_63;
      }

      if (a5)
      {
        while (1)
        {
          v7 = *(a1 + v6);
          if (v7 > 0xC)
          {
            if (v7 != 13 && v7 != 32)
            {
              goto LABEL_5;
            }
          }

          else if (v7 != 9)
          {
            if (v7 != 10)
            {
              goto LABEL_5;
            }

            v13 = *(a4 + 8);
            if (v13 >= *(a4 + 12))
            {
              v14 = a2;
              v15 = a3;
              v16 = a1;
              v17 = a5;
              llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v13 + 1, 8);
              a1 = v16;
              a2 = v14;
              a5 = v17;
              a3 = v15;
              v13 = *(a4 + 8);
            }

            *(*a4 + 8 * v13) = 0;
            ++*(a4 + 8);
          }

          if (a2 == ++v6)
          {
            goto LABEL_58;
          }
        }
      }

      while (1)
      {
        v7 = *(a1 + v6);
        if (v7 > 0x20 || ((1 << v7) & 0x100002600) == 0)
        {
          break;
        }

        if (a2 == ++v6)
        {
          goto LABEL_58;
        }
      }
    }

LABEL_5:
    v8 = v6 + 1;
    if (v6 + 1 < a2 && v7 == 92)
    {
      v9 = *(a1 + v8);
      v10 = v54;
      if ((v54 + 1) > *(&v54 + 1))
      {
        v35 = a1;
        v36 = a2;
        v37 = a3;
        v38 = a5;
        llvm::SmallVectorBase<unsigned long long>::grow_pod(&v53, v55, v54 + 1, 1);
        a1 = v35;
        a2 = v36;
        a5 = v38;
        a3 = v37;
        v10 = v54;
      }

      *(v53 + v10) = v9;
      v11 = v54 + 1;
      goto LABEL_56;
    }

    if (v7 > 0x27)
    {
      goto LABEL_52;
    }

    if (((1 << v7) & 0x100002600) != 0)
    {
      if (v54)
      {
        v18 = a1;
        v19 = a2;
        v20 = a5;
        v21 = a3;
        v22 = llvm::StringSaver::save(a3, v53, v54);
        v23 = *(a4 + 8);
        if (v23 >= *(a4 + 12))
        {
          v52 = v22;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v23 + 1, 8);
          v22 = v52;
          v23 = *(a4 + 8);
        }

        *(*a4 + 8 * v23) = v22;
        ++*(a4 + 8);
        a3 = v21;
        a5 = v20;
        a2 = v19;
        a1 = v18;
      }

      v11 = 0;
      if (a5 && v7 == 10)
      {
        v24 = *(a4 + 8);
        if (v24 >= *(a4 + 12))
        {
          v39 = a2;
          v40 = a3;
          v41 = a1;
          v42 = a5;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v24 + 1, 8);
          a1 = v41;
          a2 = v39;
          a5 = v42;
          a3 = v40;
          v24 = *(a4 + 8);
        }

        v11 = 0;
        *(*a4 + 8 * v24) = 0;
        ++*(a4 + 8);
      }

      goto LABEL_55;
    }

    if (((1 << v7) & 0x8400000000) == 0)
    {
LABEL_52:
      v34 = v54;
      if ((v54 + 1) > *(&v54 + 1))
      {
        v43 = a1;
        v44 = a2;
        v45 = a3;
        v46 = a5;
        llvm::SmallVectorBase<unsigned long long>::grow_pod(&v53, v55, v54 + 1, 1);
        a1 = v43;
        a2 = v44;
        a5 = v46;
        a3 = v45;
        v34 = v54;
      }

      *(v53 + v34) = v7;
      v11 = v54 + 1;
LABEL_55:
      v8 = v6;
LABEL_56:
      *&v54 = v11;
      goto LABEL_57;
    }

    if (v8 == a2)
    {
      break;
    }

    while (1)
    {
      v25 = *(a1 + v8);
      if (v25 == v7)
      {
        break;
      }

      if (v8 + 1 == a2)
      {
        v26 = v8;
      }

      else
      {
        v26 = v8 + 1;
      }

      if (v25 == 92)
      {
        v27 = v26;
      }

      else
      {
        v27 = v8;
      }

      v28 = *(a1 + v27);
      v29 = v54;
      if ((v54 + 1) > *(&v54 + 1))
      {
        v51 = a1;
        v31 = a2;
        v32 = a3;
        v33 = a5;
        llvm::SmallVectorBase<unsigned long long>::grow_pod(&v53, v55, v54 + 1, 1);
        a1 = v51;
        a2 = v31;
        a5 = v33;
        a3 = v32;
        v29 = v54;
      }

      *(v53 + v29) = v28;
      v30 = v54 + 1;
      *&v54 = v54 + 1;
      v8 = v27 + 1;
      if (v27 + 1 == a2)
      {
        goto LABEL_59;
      }
    }

LABEL_57:
    v6 = v8 + 1;
  }

  while (v8 + 1 != a2);
LABEL_58:
  v30 = v54;
LABEL_59:
  v47 = v53;
  if (v30)
  {
    v48 = llvm::StringSaver::save(a3, v53, v30);
    v49 = *(a4 + 8);
    if (v49 >= *(a4 + 12))
    {
      v50 = v48;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v49 + 1, 8);
      v48 = v50;
      LODWORD(v49) = *(a4 + 8);
    }

    *(*a4 + 8 * v49) = v48;
    ++*(a4 + 8);
LABEL_63:
    v47 = v53;
  }

  if (v47 != v55)
  {
    free(v47);
  }
}

void llvm::cl::ExpansionContext::expandResponseFile(uint64_t a1@<X0>, char *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v72 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 16);
  v71 = 261;
  v68 = a2;
  *&v69 = a3;
  llvm::vfs::FileSystem::getBufferForFile(v10, &v68, -1, 1, 0, 0, &v66);
  if (v67)
  {
    v11 = v66;
    *&v51.__r_.__value_.__l.__data_ = v66;
    v56[0] = "cannot not open file '";
    v57 = a2;
    v58 = a3;
    v59 = 1283;
    v62 = v56;
    *(&v63 + 1) = "': ";
    v65 = 770;
    std::error_code::message(&v52, &v51);
    v68 = &v62;
    *(&v69 + 1) = &v52;
    v71 = 1026;
    llvm::Twine::str(&v68, &__p);
    llvm::createStringError(&__p, v11, *(&v11 + 1), a5);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_96;
      }
    }

    else if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_96;
    }

    v45 = v52.__r_.__value_.__r.__words[0];
    goto LABEL_95;
  }

  v12 = *(v66 + 8);
  size = *(v66 + 16) - v12;
  memset(&v51, 0, sizeof(v51));
  if (llvm::hasUTF16ByteOrderMark(v12, size))
  {
    if (!llvm::convertUTF16ToUTF8String(v12, size, &v51))
    {
      v46 = std::generic_category();
      v68 = operator new(0x20uLL);
      v69 = xmmword_1E09828D0;
      strcpy(v68, "Could not convert UTF16 to UTF8");
      llvm::createStringError(&v68, 92, v46, a5);
      if (SHIBYTE(v69) < 0)
      {
        operator delete(v68);
      }

      goto LABEL_93;
    }

    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v51;
    }

    else
    {
      v12 = v51.__r_.__value_.__r.__words[0];
    }

    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(v51.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v51.__r_.__value_.__l.__size_;
    }
  }

  else if (size >= 3 && v12->__r_.__value_.__s.__data_[0] == 239 && v12->__r_.__value_.__s.__data_[1] == 187 && v12->__r_.__value_.__s.__data_[2] == 191)
  {
    v12 = (v12 + 3);
    size -= 3;
  }

  (*(a1 + 8))(v12, size, a1, a4, *(a1 + 57));
  if (*(a1 + 56) & 1) != 0 || (*(a1 + 58))
  {
    v49 = a5;
    v14 = llvm::sys::path::parent_path(a2, a3, 0);
    v16 = *(a4 + 8);
    if (v16)
    {
      v17 = v14;
      v18 = v15;
      v19 = *a4;
      v20 = *a4 + 8 * v16;
      v50 = v20;
      do
      {
        v21 = *v19;
        if (*v19)
        {
          if (*(a1 + 58) != 1)
          {
            goto LABEL_54;
          }

          v60 = *v19;
          v61 = strlen(v21);
          v68 = v70;
          v69 = xmmword_1E0971D70;
          v22 = llvm::StringRef::find(&v60, "<CFGDIR>", 8uLL, 0);
          if (v22 != -1)
          {
            v23 = v22;
            v24 = 0;
            while (1)
            {
              v25 = v61 >= v24 ? v24 : v61;
              v26 = (v60 + v25);
              v27 = v61 - v25 >= v23 - v24 ? v23 - v24 : v61 - v25;
              if (!v69)
              {
                break;
              }

              v65 = 261;
              v62 = (v60 + v25);
              *&v63 = v27;
              v59 = 257;
              v55 = 257;
              v53 = 257;
              llvm::sys::path::append(&v68, &v62, v56, &__p.__r_.__value_.__l.__data_, &v52);
              v28 = v69;
              v29 = v69 + v18;
              if (*(&v69 + 1) < v69 + v18)
              {
                goto LABEL_37;
              }

LABEL_38:
              if (v18)
              {
                memcpy(&v68[v28], v17, v18);
                v28 = v69;
              }

              *&v69 = v28 + v18;
              v24 = v23 + 8;
              v23 = llvm::StringRef::find(&v60, "<CFGDIR>", 8uLL, v23 + 8);
              if (v23 == -1)
              {
                goto LABEL_47;
              }
            }

            if (*(&v69 + 1) < v27)
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod(&v68, v70, v27, 1);
              v30 = v69;
              goto LABEL_43;
            }

            v30 = 0;
            v31 = 0;
            if (v27)
            {
LABEL_43:
              memcpy(&v68[v30], v26, v27);
              v31 = v69;
            }

            v28 = v31 + v27;
            *&v69 = v31 + v27;
            v29 = v31 + v27 + v18;
            if (*(&v69 + 1) >= v29)
            {
              goto LABEL_38;
            }

LABEL_37:
            llvm::SmallVectorBase<unsigned long long>::grow_pod(&v68, v70, v29, 1);
            v28 = v69;
            goto LABEL_38;
          }

          v24 = 0;
LABEL_47:
          v32 = v69;
          v20 = v50;
          if (v69)
          {
            if (v61 > v24)
            {
              v65 = 261;
              v62 = (v60 + v24);
              *&v63 = v61 - v24;
              v59 = 257;
              v55 = 257;
              v53 = 257;
              llvm::sys::path::append(&v68, &v62, v56, &__p.__r_.__value_.__l.__data_, &v52);
              v32 = v69;
            }

            *v19 = llvm::StringSaver::save(a1, v68, v32);
          }

          if (v68 != v70)
          {
            free(v68);
          }

          v21 = *v19;
          if (*v19)
          {
LABEL_54:
            v33 = strlen(v21);
            if (v33)
            {
              if (*v21 == 64)
              {
                v34 = (v21 + 1);
                v71 = 261;
                v35 = v33 - 1;
                v68 = v34;
                *&v69 = v33 - 1;
                if (llvm::sys::path::is_relative(&v68, 0))
                {
                  *(&v69 + 1) = 128;
                  v70[0] = 64;
                  v36 = 1;
                  v68 = v70;
                  *&v69 = 1;
                  v37 = v18 + 1;
                  if (v18 + 1 <= 0x80)
                  {
                    goto LABEL_59;
                  }

                  goto LABEL_58;
                }
              }

              else
              {
                v35 = v33 - 9;
                if (v33 >= 9 && *v21 == 0x6769666E6F632D2DLL && *(v21 + 8) == 61)
                {
                  v34 = (v21 + 9);
                  *(&v69 + 1) = 128;
                  v70[0] = 64;
                  v68 = v70;
                  *&v69 = 1;
                  v65 = 261;
                  v62 = v34;
                  *&v63 = v33 - 9;
                  if (llvm::sys::path::has_parent_path(&v62, 0))
                  {
                    v36 = v69;
                    v37 = v69 + v18;
                    if (*(&v69 + 1) >= v69 + v18)
                    {
LABEL_59:
                      if (v18)
                      {
                        memcpy(&v68[v36], v17, v18);
                        v36 = v69;
                      }

                      *&v69 = v36 + v18;
                      v65 = 261;
                      v62 = v34;
                      *&v63 = v35;
                      v59 = 257;
                      v55 = 257;
                      v53 = 257;
                      llvm::sys::path::append(&v68, &v62, v56, &__p.__r_.__value_.__l.__data_, &v52);
                      goto LABEL_62;
                    }

LABEL_58:
                    llvm::SmallVectorBase<unsigned long long>::grow_pod(&v68, v70, v37, 1);
                    v36 = v69;
                    goto LABEL_59;
                  }

                  v62 = &v64;
                  v63 = xmmword_1E0971D70;
                  ConfigFile = llvm::cl::ExpansionContext::findConfigFile(a1, v34, v35, &v62);
                  if (ConfigFile)
                  {
                    v42 = v62;
                    v41 = v63;
                    v43 = v69;
                    if (*(&v69 + 1) < v69 + v63)
                    {
                      llvm::SmallVectorBase<unsigned long long>::grow_pod(&v68, v70, v69 + v63, 1);
                      v43 = v69;
                    }

                    if (v41)
                    {
                      memcpy(&v68[v43], v42, v41);
                      v43 = v69;
                    }

                    *&v69 = v43 + v41;
                  }

                  else
                  {
                    v44 = std::generic_category();
                    v59 = 1283;
                    v56[0] = "cannot not find configuration file: ";
                    v57 = v34;
                    v58 = v35;
                    llvm::Twine::str(v56, &__p);
                    llvm::createStringError(&__p, 2, v44, v49);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    v20 = v50;
                  }

                  if (v62 != &v64)
                  {
                    free(v62);
                  }

                  if (ConfigFile)
                  {
LABEL_62:
                    *v19 = llvm::StringSaver::save(a1, v68, v69);
                    v38 = 1;
                    v39 = v68;
                    if (v68 == v70)
                    {
                      goto LABEL_22;
                    }
                  }

                  else
                  {
                    v38 = 0;
                    v39 = v68;
                    if (v68 == v70)
                    {
LABEL_22:
                      if (!v38)
                      {
                        goto LABEL_93;
                      }

                      goto LABEL_23;
                    }
                  }

                  free(v39);
                  goto LABEL_22;
                }
              }
            }
          }
        }

LABEL_23:
        ++v19;
      }

      while (v19 != v20);
    }

    *v49 = 0;
  }

  else
  {
    *a5 = 0;
  }

LABEL_93:
  if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_96;
  }

  v45 = v51.__r_.__value_.__r.__words[0];
LABEL_95:
  operator delete(v45);
LABEL_96:
  if ((v67 & 1) == 0)
  {
    v47 = v66;
    *&v66 = 0;
    if (v47)
    {
      (*(*v47 + 8))(v47);
    }
  }
}

uint64_t llvm::cl::ExpansionContext::findConfigFile(uint64_t a1, void *a2, unint64_t a3, void *a4)
{
  v63 = *MEMORY[0x1E69E9840];
  __src = v56;
  __n = xmmword_1E0971D70;
  v60 = 261;
  v57 = a2;
  v58 = a3;
  if (llvm::sys::path::has_parent_path(&v57, 0))
  {
    v8 = 0;
    *&__n = 0;
    if (*(&__n + 1) < a3)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&__src, v56, a3, 1);
      v8 = __n;
    }

    if (a3)
    {
      memcpy(__src + v8, a2, a3);
      v8 = __n;
    }

    *&__n = v8 + a3;
    v60 = 261;
    v57 = a2;
    v58 = a3;
    if (llvm::sys::path::is_relative(&v57, 0) && (*(**(a1 + 16) + 112))(*(a1 + 16), &__src))
    {
LABEL_42:
      v14 = 0;
      v34 = __src;
      if (__src == v56)
      {
        return v14;
      }

      goto LABEL_50;
    }

    v51 = v53;
    v52 = xmmword_1E0971D70;
    v9 = __n;
    if (!__n)
    {
      v26 = v53;
LABEL_36:
      v30 = *(a1 + 16);
      v47 = 261;
      v45 = v26;
      v46 = v9;
      (*(*v30 + 40))(&v57);
      v31 = v62;
      v32 = v61;
      if ((v62 & 1) == 0 && v59 < 0)
      {
        operator delete(v57);
      }

      v33 = v31 | (v32 != 2);
      if (v51 != v53)
      {
        free(v51);
      }

      if (v33)
      {
        goto LABEL_42;
      }

      v36 = __src;
      v35 = __n;
      a4[1] = 0;
      if (a4[2] >= v35)
      {
        v37 = 0;
        v38 = 0;
        if (!v35)
        {
LABEL_48:
          a4[1] = v38 + v35;
          v14 = 1;
LABEL_49:
          v34 = __src;
          if (__src == v56)
          {
            return v14;
          }

LABEL_50:
          free(v34);
          return v14;
        }
      }

      else
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a4, a4 + 3, v35, 1);
        v37 = a4[1];
      }

      memcpy((*a4 + v37), v36, v35);
      v38 = a4[1];
      goto LABEL_48;
    }

    if (__n < 0x81)
    {
      v11 = v53;
      v10 = __n;
    }

    else
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&v51, v53, __n, 1);
      v10 = __n;
      if (!__n)
      {
LABEL_35:
        *&v52 = v9;
        v26 = v51;
        goto LABEL_36;
      }

      v11 = v51;
    }

    memcpy(v11, __src, v10);
    goto LABEL_35;
  }

  v12 = *(a1 + 48);
  if (!v12)
  {
    goto LABEL_42;
  }

  v13 = (*(a1 + 40) + 8);
  v14 = 16 * v12;
  while (1)
  {
    v15 = *v13;
    if (*v13)
    {
      break;
    }

LABEL_15:
    v13 += 2;
    v14 -= 16;
    if (!v14)
    {
      goto LABEL_49;
    }
  }

  v16 = 0;
  v17 = *(v13 - 1);
  *&__n = 0;
  if (*(&__n + 1) < v15)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(&__src, v56, v15, 1);
    v16 = __n;
  }

  memcpy(__src + v16, v17, v15);
  *&__n = __n + v15;
  v60 = 261;
  v57 = a2;
  v58 = a3;
  v47 = 257;
  v44 = 257;
  v42 = 257;
  llvm::sys::path::append(&__src, &v57, &v45, &v43, &v41);
  llvm::sys::path::native(&__src, 0);
  __dst = v50;
  v49 = xmmword_1E0971D70;
  v18 = v50;
  v19 = __n;
  if (__n)
  {
    v20 = v50;
    v21 = __n;
    if (__n >= 0x81)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&__dst, v50, __n, 1);
      v21 = __n;
      if (!__n)
      {
LABEL_24:
        *&v49 = v19;
        v18 = __dst;
        goto LABEL_25;
      }

      v20 = __dst;
    }

    memcpy(v20, __src, v21);
    goto LABEL_24;
  }

LABEL_25:
  v22 = *(a1 + 16);
  v47 = 261;
  v45 = v18;
  v46 = v19;
  (*(*v22 + 40))(&v57);
  v23 = v62;
  v24 = v61;
  if ((v62 & 1) == 0 && v59 < 0)
  {
    operator delete(v57);
  }

  v25 = v24 != 2;
  if (__dst != v50)
  {
    free(__dst);
  }

  if ((v23 | v25))
  {
    goto LABEL_15;
  }

  v28 = __src;
  v27 = __n;
  a4[1] = 0;
  if (a4[2] < v27)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a4, a4 + 3, v27, 1);
    v29 = a4[1];
    goto LABEL_53;
  }

  v29 = 0;
  v40 = 0;
  if (v27)
  {
LABEL_53:
    memcpy((*a4 + v29), v28, v27);
    v40 = a4[1];
  }

  a4[1] = v40 + v27;
  v14 = 1;
  v34 = __src;
  if (__src != v56)
  {
    goto LABEL_50;
  }

  return v14;
}

void llvm::cl::ExpansionContext::expandResponseFiles(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v111 = *MEMORY[0x1E69E9840];
  v99 = &v101;
  v5 = *(a2 + 8);
  v101 = 0;
  *v102 = *v97;
  *&v102[14] = *&v97[14];
  v103 = 0;
  v104 = v5;
  v100 = 0x300000001;
  if (v5)
  {
    v8 = 0;
    v9 = 0;
    v79 = a3;
    while (1)
    {
      v10 = v99;
      LODWORD(v11) = v100;
      if (*(v99 + 4 * v100 - 1) == v8)
      {
        do
        {
          v11 = (v11 - 1);
          LODWORD(v100) = v11;
          v12 = &v10[4 * v11];
          if (*(v12 + 23) < 0)
          {
            operator delete(*v12);
            v10 = v99;
            v11 = v100;
          }
        }

        while (v10[4 * v11 - 1] == v8);
      }

      v13 = *(*a2 + 8 * v8);
      if (!v13 || *v13 != 64)
      {
        ++v9;
        goto LABEL_4;
      }

      *v97 = v98;
      *&v97[8] = xmmword_1E0971D70;
      v109 = 257;
      v15 = v13[1];
      v14 = (v13 + 1);
      if (v15)
      {
        __dst = v14;
        LOBYTE(v109) = 3;
        if (!llvm::sys::path::is_relative(&__dst, 0))
        {
          goto LABEL_14;
        }
      }

      else
      {
        LOBYTE(v109) = 1;
        if (!llvm::sys::path::is_relative(&__dst, 0))
        {
LABEL_14:
          v16 = *(a1 + 16);
          v109 = 257;
          if (!v14->__r_.__value_.__s.__data_[0])
          {
            goto LABEL_49;
          }

          goto LABEL_15;
        }
      }

      v18 = *(a1 + 32);
      if (v18)
      {
        v19 = 0;
        v20 = *(a1 + 24);
        *&v97[8] = 0;
        if (*&v97[16] < v18)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(v97, v98, v18, 1);
          v19 = *&v97[8];
        }

        memcpy((*v97 + v19), v20, v18);
        *&v97[8] += v18;
        goto LABEL_43;
      }

      (*(**(a1 + 16) + 72))(&v91);
      v21 = v92;
      if ((v92 & 1) == 0)
      {
        break;
      }

      if (v14->__r_.__value_.__s.__data_[0])
      {
        __dst = "cannot get absolute path for: ";
        v107 = v14;
        v22 = 3;
      }

      else
      {
        __dst = "cannot get absolute path for: ";
        v22 = 1;
      }

      v27 = *&v91.__r_.__value_.__l.__data_;
      LOBYTE(v109) = 3;
      HIBYTE(v109) = v22;
      llvm::Twine::str(&__dst, &__p);
      llvm::createStringError(&__p, v27, *(&v27 + 1), a3);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

LABEL_38:
      if ((v92 & 1) == 0 && SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v91.__r_.__value_.__l.__data_);
      }

      if (v21)
      {
        v28 = 1;
        goto LABEL_129;
      }

LABEL_43:
      v109 = 257;
      if (v14->__r_.__value_.__s.__data_[0])
      {
        __dst = v14;
        v29 = 3;
      }

      else
      {
        v29 = 1;
      }

      LOBYTE(v109) = v29;
      WORD4(v92) = 257;
      WORD4(v81) = 257;
      v89 = 257;
      llvm::sys::path::append(v97, &__dst, &v91, &__p.__r_.__value_.__l.__data_, &__src);
      v30 = *&v97[8];
      if ((*&v97[8] + 1) > *&v97[16])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(v97, v98, *&v97[8] + 1, 1);
        v30 = *&v97[8];
      }

      *(*v97 + v30) = 0;
      v14 = *v97;
      v16 = *(a1 + 16);
      v109 = 257;
      if (!**v97)
      {
LABEL_49:
        v17 = 1;
        goto LABEL_50;
      }

LABEL_15:
      __dst = v14;
      v17 = 3;
LABEL_50:
      LOBYTE(v109) = v17;
      (*(*v16 + 40))(&v91);
      if (v96)
      {
        goto LABEL_51;
      }

      if (llvm::vfs::Status::exists(&v91))
      {
        if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v91.__r_.__value_.__l.__data_, v91.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = v91;
        }

        v81 = v92;
        v82 = v93;
        v83 = v94;
        v84 = v95;
        v85 = a1;
        if (v100 != 1)
        {
          v40 = v99 + 32;
          v41 = 32 * v100 - 32;
          v42 = v99 + 32;
          while (1)
          {
            v43 = *(v85 + 16);
            v89 = 260;
            __src.__r_.__value_.__r.__words[0] = v42;
            (*(*v43 + 40))(&__dst);
            if (v110)
            {
              v3 = __dst;
              v57 = v106;
              __dst = "cannot open file: ";
              v107 = v40;
              v109 = 1027;
              llvm::Twine::str(&__dst, &__src);
              a3 = v79;
              llvm::createStringError(&__src, v3, v57, v79);
              if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_103;
              }

              v58 = __src.__r_.__value_.__r.__words[0];
              goto LABEL_102;
            }

            v44 = llvm::vfs::Status::equivalent(&__p, &__dst);
            if ((v110 & 1) == 0 && SHIBYTE(v107) < 0)
            {
              operator delete(__dst);
            }

            v3 = v3 & 0xFFFFFFFFFFFFFF00 | v44;
            if (v44)
            {
              break;
            }

            v42 += 32;
            v40 += 32;
            v41 -= 32;
            if (!v41)
            {
              goto LABEL_89;
            }
          }

          v59 = std::system_category();
          __src.__r_.__value_.__r.__words[0] = "recursive expansion of: '";
          __src.__r_.__value_.__r.__words[2] = v40;
          v89 = 1027;
          __dst = &__src;
          v107 = "'";
          v109 = 770;
          llvm::Twine::str(&__dst, &v90);
          a3 = v79;
          llvm::createStringError(&v90, 0, v59, v79);
          if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_103;
          }

          v58 = v90.__r_.__value_.__r.__words[0];
LABEL_102:
          operator delete(v58);
LABEL_103:
          v28 = 1;
          goto LABEL_124;
        }

LABEL_89:
        __src.__r_.__value_.__r.__words[0] = &__src.__r_.__value_.__r.__words[2];
        __src.__r_.__value_.__l.__size_ = 0;
        v45 = strlen(v14);
        a3 = v79;
        llvm::cl::ExpansionContext::expandResponseFile(a1, v14, v45, &__src, v79);
        if (*v79)
        {
          v28 = 1;
          v46 = __src.__r_.__value_.__r.__words[0];
          if (__src.__r_.__value_.__l.__data_ == &__src.__r_.__value_.__r.__words[2])
          {
LABEL_124:
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            goto LABEL_126;
          }

LABEL_123:
          free(v46);
          goto LABEL_124;
        }

        v47 = v100;
        if (v100)
        {
          v48 = v99;
          v49 = LODWORD(__src.__r_.__value_.__r.__words[1]) - 1;
          v50 = (v100 - 1) & 0x7FFFFFFFFFFFFFFLL;
          if (v50)
          {
            v51 = v50 + 1;
            v52 = (v50 + 1) & 0xFFFFFFFFFFFFFFELL;
            v53 = v99 + 32 * v52;
            v54 = (v99 + 56);
            v55 = v52;
            do
            {
              v56 = v49 + *v54;
              *(v54 - 4) += v49;
              *v54 = v56;
              v54 += 8;
              v55 -= 2;
            }

            while (v55);
            if (v51 == v52)
            {
              goto LABEL_107;
            }
          }

          else
          {
            v53 = v99;
          }

          v60 = &v48[32 * v47];
          do
          {
            *(v53 + 3) += v49;
            v53 += 32;
          }

          while (v53 != v60);
        }

LABEL_107:
        v61 = strlen(v14);
        if (v61 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        v62 = v61;
        if (v61 >= 0x17)
        {
          if ((v61 | 7) == 0x17)
          {
            v64 = 25;
          }

          else
          {
            v64 = (v61 | 7) + 1;
          }

          p_dst = operator new(v64);
          v106 = v62;
          v107 = (v64 | 0x8000000000000000);
          __dst = p_dst;
        }

        else
        {
          HIBYTE(v107) = v61;
          p_dst = &__dst;
          if (!v61)
          {
LABEL_116:
            *(p_dst + v62) = 0;
            v108 = v8 + LODWORD(__src.__r_.__value_.__r.__words[1]);
            v65 = v99;
            if (v100 >= HIDWORD(v100))
            {
              if (v99 <= &__dst && v99 + 32 * v100 > &__dst)
              {
                v73 = &__dst - v99;
                llvm::SmallVectorTemplateBase<llvm::cl::ExpansionContext::expandResponseFiles(llvm::SmallVectorImpl<char const*> &)::ResponseFileRecord,false>::grow(&v99, v100 + 1);
                v65 = v99;
                v66 = (v99 + v73);
                a3 = v79;
              }

              else
              {
                llvm::SmallVectorTemplateBase<llvm::cl::ExpansionContext::expandResponseFiles(llvm::SmallVectorImpl<char const*> &)::ResponseFileRecord,false>::grow(&v99, v100 + 1);
                v66 = &__dst;
                v65 = v99;
              }
            }

            else
            {
              v66 = &__dst;
            }

            v67 = &v65[32 * v100];
            v68 = *v66;
            *(v67 + 2) = v66[2];
            *v67 = v68;
            v66[1] = 0;
            v66[2] = 0;
            *v66 = 0;
            *(v67 + 3) = v66[3];
            LODWORD(v100) = v100 + 1;
            if (SHIBYTE(v107) < 0)
            {
              operator delete(__dst);
            }

            v69 = *a2;
            v70 = *a2 + 8 * v8;
            v71 = *(a2 + 8);
            v72 = *a2 + 8 * v71;
            if (v72 != v70 + 8)
            {
              memmove(v70, (v70 + 8), v72 - (v70 + 8));
              LODWORD(v71) = *(a2 + 8);
              v69 = *a2;
            }

            *(a2 + 8) = v71 - 1;
            llvm::SmallVectorImpl<long long>::insert<long long const*,void>(a2, v69 + 8 * v8, __src.__r_.__value_.__l.__data_, (__src.__r_.__value_.__r.__words[0] + 8 * LODWORD(__src.__r_.__value_.__r.__words[1])));
            v28 = 0;
            v46 = __src.__r_.__value_.__r.__words[0];
            if (__src.__r_.__value_.__l.__data_ == &__src.__r_.__value_.__r.__words[2])
            {
              goto LABEL_124;
            }

            goto LABEL_123;
          }
        }

        memmove(p_dst, v14, v62);
        goto LABEL_116;
      }

      if (v96)
      {
LABEL_51:
        size = v91.__r_.__value_.__l.__size_;
        v32 = v91.__r_.__value_.__r.__words[0];
        v87 = *&v91.__r_.__value_.__l.__data_;
        if (*(a1 + 58))
        {
          goto LABEL_52;
        }
      }

      else
      {
        size = std::system_category();
        v32 = 0;
        *&v87.__val_ = 0;
        v87.__cat_ = size;
        if (*(a1 + 58))
        {
LABEL_52:
          if (!v32)
          {
            size = std::generic_category();
            *&v87.__val_ = 2;
            v87.__cat_ = size;
            v32 = 2;
          }

LABEL_63:
          if (v14->__r_.__value_.__s.__data_[0])
          {
            p_src = &__src;
            __src.__r_.__value_.__r.__words[0] = "cannot not open file '";
            __src.__r_.__value_.__r.__words[2] = v14;
            v35 = 3;
            v36 = 2;
          }

          else
          {
            p_src = "cannot not open file '";
            __src.__r_.__value_.__r.__words[0] = "cannot not open file '";
            v35 = 1;
            v36 = 3;
          }

          LOBYTE(v89) = 3;
          HIBYTE(v89) = v35;
          __p.__r_.__value_.__r.__words[0] = p_src;
          __p.__r_.__value_.__r.__words[2] = "': ";
          BYTE8(v81) = v36;
          BYTE9(v81) = 3;
          std::error_code::message(&v86, &v87);
          v37 = BYTE8(v81);
          if (BYTE8(v81))
          {
            if (BYTE8(v81) == 1)
            {
              __dst = &v86;
              v38 = 1;
              v37 = 4;
            }

            else
            {
              if (BYTE9(v81) != 1)
              {
                v37 = 2;
              }

              p_p = &__p;
              if (BYTE9(v81) == 1)
              {
                p_p = __p.__r_.__value_.__r.__words[0];
              }

              __dst = p_p;
              v106 = __p.__r_.__value_.__l.__size_;
              v107 = &v86;
              v38 = 4;
            }
          }

          else
          {
            v38 = 1;
          }

          LOBYTE(v109) = v37;
          HIBYTE(v109) = v38;
          llvm::Twine::str(&__dst, &v90);
          llvm::createStringError(&v90, v32, size, a3);
          if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v90.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_77;
            }
          }

          else if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_77:
            v28 = 1;
            goto LABEL_126;
          }

          operator delete(v86.__r_.__value_.__l.__data_);
          goto LABEL_77;
        }
      }

      if (v32)
      {
        v33 = std::generic_category();
        if (v32 != 2 || size != v33)
        {
          goto LABEL_63;
        }
      }

      ++v9;
      v28 = 3;
LABEL_126:
      if ((v96 & 1) == 0 && SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v91.__r_.__value_.__l.__data_);
      }

LABEL_129:
      if (*v97 != v98)
      {
        free(*v97);
      }

      if (v28 && v28 != 3)
      {
        goto LABEL_139;
      }

LABEL_4:
      v8 = v9;
      if (*(a2 + 8) == v9)
      {
        goto LABEL_138;
      }
    }

    if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v91;
    }

    else
    {
      v23 = v91.__r_.__value_.__r.__words[0];
    }

    if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = SHIBYTE(v91.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v24 = v91.__r_.__value_.__l.__size_;
    }

    *&v97[8] = 0;
    if (*&v97[16] >= v24)
    {
      v25 = 0;
      v26 = 0;
      if (!v24)
      {
LABEL_34:
        *&v97[8] = v26 + v24;
        goto LABEL_38;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(v97, v98, v24, 1);
      v25 = *&v97[8];
    }

    memcpy((*v97 + v25), v23, v24);
    v26 = *&v97[8];
    goto LABEL_34;
  }

LABEL_138:
  *a3 = 0;
LABEL_139:
  v74 = v99;
  if (v100)
  {
    v75 = v99 + 32 * v100 - 9;
    v76 = -32 * v100;
    v77 = v75;
    do
    {
      v78 = *v77;
      v77 -= 32;
      if (v78 < 0)
      {
        operator delete(*(v75 - 23));
      }

      v75 = v77;
      v76 += 32;
    }

    while (v76);
    v74 = v99;
    if (v99 != &v101)
    {
      goto LABEL_145;
    }
  }

  else if (v99 != &v101)
  {
LABEL_145:
    free(v74);
  }
}

void *llvm::raw_ostream::operator<<(void *a1, const char *a2)
{
  v2 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return llvm::raw_ostream::write(a1, a2, v3);
}

uint64_t llvm::cl::ParseCommandLineOptions(llvm *a1, void *a2, uint64_t a3, uint64_t a4, llvm::raw_ostream *a5, const char *a6, int a7)
{
  v11 = a1;
  v344 = *MEMORY[0x1E69E9840];
  initCommonOptions(a1);
  v13 = v327;
  v325 = v327;
  v318[1] = 0;
  v318[0] = 0;
  v319 = v321;
  v320 = 0x400000000;
  v322 = v324;
  v323 = 0;
  v324[0] = 0;
  v324[1] = 1;
  v297 = v318;
  v327[0] = *a2;
  v326 = 0x1400000001;
  if (!a6)
  {
    v18 = 1;
    if (v11 < 2)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v14 = strlen(a6);
  llvm::sys::Process::GetEnv(a6, v14, &__p);
  v15 = v342;
  if (v342 == 1)
  {
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
      size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    llvm::cl::TokenizeGNUCommandLine(p_p, size, &v297, &v325, 0);
    v15 = v342;
  }

  if ((v15 & 1) != 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v18 = v326;
  if (v11 >= 2)
  {
LABEL_16:
    v19 = a2 + 1;
    v20 = v11 - 1;
    do
    {
      v21 = *v19;
      if (v18 >= HIDWORD(v326))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v325, v327, v18 + 1, 8);
        v18 = v326;
      }

      *(v325 + v18) = v21;
      v18 = v326 + 1;
      LODWORD(v326) = v326 + 1;
      ++v19;
      --v20;
    }

    while (v20);
  }

LABEL_20:
  if (!atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
  {
  }

  v22 = qword_1EE17CA68;
  v23 = v325;
  *(qword_1EE17CA68 + 24) = a3;
  *(v22 + 32) = a4;
  v24 = a5;
  if (!a5)
  {
    v24 = llvm::errs(v12);
  }

  v338 = v340;
  v339 = 0x1400000000;
  if (v18 < 0x15)
  {
    if (!v18)
    {
      v27 = 0;
      goto LABEL_29;
    }

    v25 = 0;
    v26 = v340;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v338, v340, v18, 8);
    v25 = v339;
    v26 = v338;
  }

  memcpy(&v26[8 * v25], v23, 8 * v18);
  v27 = v339;
LABEL_29:
  LODWORD(v339) = v27 + v18;
  v331[1] = 0;
  v331[0] = 0;
  v332 = v334;
  v333 = 0x400000000;
  v335 = v337;
  v336 = 0;
  v337[0] = 0;
  v337[1] = 1;
  v307[0] = v331;
  v307[1] = llvm::cl::TokenizeGNUCommandLine;
  llvm::vfs::getRealFileSystem(&__p);
  v28 = __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__r.__words[0] && atomic_fetch_add((__p.__r_.__value_.__r.__words[0] + 8), 0xFFFFFFFF) == 1)
  {
    (*(*v28 + 8))(v28);
  }

  v307[2] = v28;
  v308 = 0u;
  memset(v309, 0, sizeof(v309));
  llvm::cl::ExpansionContext::expandResponseFiles(v307, &v338, &v328);
  if (v328)
  {
    __dst.__r_.__value_.__r.__words[0] = v328;
    v328 = 0;
    llvm::toString(&__dst, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &__p;
    }

    else
    {
      v29 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v30 = __p.__r_.__value_.__l.__size_;
    }

    v31 = llvm::raw_ostream::write(v24, v29, v30);
    v32 = *(v31 + 4);
    if (v32 >= *(v31 + 3))
    {
      llvm::raw_ostream::write(v31, 10);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_45:
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *(v31 + 4) = v32 + 1;
      *v32 = 10;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_45;
      }
    }

    if (__dst.__r_.__value_.__r.__words[0])
    {
      (*(*__dst.__r_.__value_.__l.__data_ + 8))(__dst.__r_.__value_.__r.__words[0]);
    }

    if (v328)
    {
      (*(*v328 + 8))(v328);
    }

    v35 = 0;
    goto LABEL_463;
  }

  v284 = v24;
  v294 = v339;
  v33 = *v338;
  v287 = v338;
  if (*v338)
  {
    v34 = strlen(v33);
  }

  else
  {
    v34 = 0;
  }

  OptionPred = llvm::sys::path::filename(v33, v34, 0);
  if (v37 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_538:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v38 = OptionPred;
  v39 = v37;
  if (v37 >= 0x17)
  {
    if ((v37 | 7) == 0x17)
    {
      v48 = 25;
    }

    else
    {
      v48 = (v37 | 7) + 1;
    }

    v40 = operator new(v48);
    __p.__r_.__value_.__r.__words[2] = v48 | 0x8000000000000000;
    __p.__r_.__value_.__r.__words[0] = v40;
    __p.__r_.__value_.__l.__size_ = v39;
    v41 = v287;
LABEL_72:
    OptionPred = memmove(v40, v38, v39);
    v40->__r_.__value_.__s.__data_[v39] = 0;
    if ((*(v22 + 23) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

LABEL_73:
    operator delete(*v22);
    goto LABEL_57;
  }

  *(&__p.__r_.__value_.__s + 23) = v37;
  v40 = &__p;
  v41 = v287;
  if (v37)
  {
    goto LABEL_72;
  }

  __p.__r_.__value_.__s.__data_[0] = 0;
  if (*(v22 + 23) < 0)
  {
    goto LABEL_73;
  }

LABEL_57:
  *v22 = __p;
  if (!atomic_load_explicit(qword_1EE17CA80, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_1EE17CA80, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
  }

  v289 = qword_1EE17CA80[0];
  v304 = 0;
  v305 = 0;
  v306 = 0;
  v286 = v22;
  if (v294 >= 2)
  {
    v42 = v41[1];
    if (*v42 != 45)
    {
      v43 = *(v22 + 280);
      v44 = 16;
      if (v43 == *(v22 + 272))
      {
        v44 = 20;
      }

      v45 = *(v22 + 272 + v44);
      v46 = v43;
      if (v45)
      {
        v47 = 8 * v45;
        v46 = v43;
        while (*v46 >= 0xFFFFFFFFFFFFFFFELL)
        {
          ++v46;
          v47 -= 8;
          if (!v47)
          {
            goto LABEL_81;
          }
        }
      }

      v49 = &v43[v45];
      if (v46 != v49)
      {
        v50 = *v46;
LABEL_76:
        if (!*(v50 + 8))
        {
          while (1)
          {
            if (++v46 == v49)
            {
              goto LABEL_81;
            }

            v50 = *v46;
            if (*v46 < 0xFFFFFFFFFFFFFFFELL)
            {
              v281 = 1;
              v51 = 1;
              if (v46 != v49)
              {
                goto LABEL_76;
              }

              goto LABEL_82;
            }
          }
        }

        OptionPred = strlen(v42);
        if (OptionPred)
        {
          v271 = OptionPred;
          if (v45)
          {
            v272 = 8 * v45;
            while (*v43 >= 0xFFFFFFFFFFFFFFFELL)
            {
              ++v43;
              v272 -= 8;
              if (!v272)
              {
                goto LABEL_528;
              }
            }
          }

          if (v43 != v49)
          {
            v273 = 0;
            v274 = *v43;
LABEL_517:
            v289 = v274;
            v275 = *(v274 + 8);
            if (!v275)
            {
              goto LABEL_523;
            }

            if (v275 == v271)
            {
              OptionPred = memcmp(*v274, v42, v271);
              if (!OptionPred)
              {
LABEL_531:
                if (!atomic_load_explicit(qword_1EE17CA80, memory_order_acquire))
                {
                  llvm::ManagedStaticBase::RegisterManagedStatic(qword_1EE17CA80, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
                }

                v281 = 0;
                if (v289 == qword_1EE17CA80[0])
                {
                  v51 = 1;
                }

                else
                {
                  v51 = 2;
                }

                if (atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
                {
                  goto LABEL_84;
                }

                goto LABEL_83;
              }
            }

            if (!v273)
            {
              v273 = v289;
              __p.__r_.__value_.__r.__words[0] = *v289;
              __p.__r_.__value_.__l.__size_ = v275;
              OptionPred = llvm::StringRef::edit_distance(&__p, v42, v271, 1, 0);
              if (OptionPred >= 2)
              {
                v273 = 0;
              }
            }

LABEL_523:
            while (++v43 != v49)
            {
              v274 = *v43;
              if (*v43 < 0xFFFFFFFFFFFFFFFELL)
              {
                if (v43 != v49)
                {
                  goto LABEL_517;
                }

                break;
              }
            }

            if (v273)
            {
              OptionPred = MEMORY[0x1E12E55E0](&v304, *v273, v273[1]);
            }
          }
        }

LABEL_528:
        if (!atomic_load_explicit(qword_1EE17CA80, memory_order_acquire))
        {
          llvm::ManagedStaticBase::RegisterManagedStatic(qword_1EE17CA80, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
        }

        v289 = qword_1EE17CA80[0];
        goto LABEL_531;
      }
    }
  }

LABEL_81:
  v281 = 1;
  v51 = 1;
LABEL_82:
  if (atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
  {
    goto LABEL_84;
  }

LABEL_83:
LABEL_84:
  *(qword_1EE17CA68 + 336) = v289;
  v52 = v286;
  v53 = *(v286 + 72);
  if (v53)
  {
    v54 = *(v286 + 64);
    v55 = 8 * v53;
    do
    {
      v56 = *v54++;
      v328 = v56;
      __p.__r_.__value_.__r.__words[0] = v286;
      __p.__r_.__value_.__l.__size_ = &v328;
      v55 -= 8;
    }

    while (v55);
  }

  v57 = v289;
  v58 = *(v289 + 40);
  if (!v58)
  {
    __src = 0;
    v296 = 0;
    v82 = 1;
    goto LABEL_124;
  }

  v59 = 0;
  v296 = 0;
  v60 = 0;
  __src = 0;
  v61 = 8 * v58;
  v62 = "error - option can never match, because another positional argument will match an unbounded number of values, and this option does not require a value!";
  v63 = ": CommandLine Error: Option '";
  do
  {
    v64 = *(*(v57 + 32) + v59);
    if ((*(v64 + 10) & 6) == 2)
    {
      ++v296;
      goto LABEL_90;
    }

    if (*(v57 + 152))
    {
      v65 = *(v57 + 40);
      v66 = __src;
      if (v65 > 1)
      {
        v66 = 1;
      }

      __src = v66;
      if (!a5 && v65 >= 2)
      {
        __p.__r_.__value_.__r.__words[0] = "error - this positional option will never be matched, because it does not Require a value, and a cl::ConsumeAfter option is active!";
        v343 = 259;
        v67 = llvm::errs(OptionPred);
        OptionPred = llvm::cl::Option::error(v64, &__p, 0, 0, v67);
LABEL_98:
        __src = 1;
      }
    }

    else if ((v60 & 1) != 0 && !*(v64 + 24))
    {
      if (!a5)
      {
        __p.__r_.__value_.__r.__words[0] = v62;
        v343 = 259;
        v68 = llvm::errs(OptionPred);
        llvm::cl::Option::error(v64, &__p, 0, 0, v68);
      }

      v69 = *(v286 + 23);
      if (v69 >= 0)
      {
        v70 = v286;
      }

      else
      {
        v70 = *v286;
      }

      if (v69 >= 0)
      {
        v71 = *(v286 + 23);
      }

      else
      {
        v71 = *(v286 + 8);
      }

      v72 = llvm::raw_ostream::write(v284, v70, v71);
      v73 = v72[4];
      if (v72[3] - v73 > 0x1CuLL)
      {
        *v73 = *v63;
        *(v73 + 13) = *(v63 + 13);
        v81 = v72[3];
        v74 = (v72[4] + 29);
        v72[4] = v74;
        v75 = *(v64 + 16);
        v76 = *(v64 + 24);
        if (v76 > v81 - v74)
        {
          goto LABEL_116;
        }

LABEL_111:
        if (v76)
        {
          v77 = v72;
          v78 = v63;
          v79 = v62;
          v80 = v76;
          memcpy(v74, v75, v76);
          v72 = v77;
          v57 = v289;
          v74 = (v72[4] + v80);
          v62 = v79;
          v63 = v78;
          v72[4] = v74;
        }

        if (v72[3] - v74 <= 0x13uLL)
        {
          goto LABEL_114;
        }

LABEL_117:
        v74[4] = 169963637;
        *v74 = *"' is all messed up!\n";
        v72[4] += 20;
      }

      else
      {
        v72 = llvm::raw_ostream::write(v72, v63, 0x1DuLL);
        v74 = v72[4];
        v75 = *(v64 + 16);
        v76 = *(v64 + 24);
        if (v76 <= v72[3] - v74)
        {
          goto LABEL_111;
        }

LABEL_116:
        v72 = llvm::raw_ostream::write(v72, v75, v76);
        v74 = v72[4];
        if (v72[3] - v74 > 0x13uLL)
        {
          goto LABEL_117;
        }

LABEL_114:
        llvm::raw_ostream::write(v72, "' is all messed up!\n", 0x14uLL);
      }

      OptionPred = llvm::raw_ostream::operator<<(v284, *(v57 + 40));
      goto LABEL_98;
    }

LABEL_90:
    v60 |= (*(v64 + 10) & 5) == 1;
    v59 += 8;
  }

  while (v61 != v59);
  v41 = v287;
  v82 = (v60 & 1) == 0 && *(v57 + 152) == 0;
  v13 = v327;
  v52 = v286;
LABEL_124:
  v328 = v330;
  v329 = 0x400000000;
  v303 = v51;
  if (v51 >= v294)
  {
    v199 = 0;
    v200 = v296;
    v201 = __src;
    if (!v296)
    {
      goto LABEL_395;
    }

LABEL_379:
    v202 = *(v52 + 23);
    if (v202 >= 0)
    {
      v203 = v52;
    }

    else
    {
      v203 = *v52;
    }

    if (v202 >= 0)
    {
      v204 = *(v52 + 23);
    }

    else
    {
      v204 = *(v52 + 8);
    }

    v205 = llvm::raw_ostream::write(v284, v203, v204);
    v206 = *(v205 + 4);
    if (*(v205 + 3) - v206 > 0x39uLL)
    {
      qmemcpy(v206, ": Not enough positional command line arguments specified!\n", 58);
      v223 = *(v205 + 3);
      v207 = (*(v205 + 4) + 58);
      *(v205 + 4) = v207;
      if ((v223 - v207) > 0x15)
      {
LABEL_387:
        qmemcpy(v207, "Must specify at least ", 22);
        *(v205 + 4) += 22;
        OptionPred = llvm::raw_ostream::operator<<(v205, v200);
        v208 = *(OptionPred + 32);
        if ((*(OptionPred + 24) - v208) > 0x13)
        {
          goto LABEL_388;
        }

        goto LABEL_410;
      }
    }

    else
    {
      v205 = llvm::raw_ostream::write(v205, ": Not enough positional command line arguments specified!\n", 0x3AuLL);
      v207 = *(v205 + 4);
      if (*(v205 + 3) - v207 > 0x15uLL)
      {
        goto LABEL_387;
      }
    }

    v224 = llvm::raw_ostream::write(v205, "Must specify at least ", 0x16uLL);
    OptionPred = llvm::raw_ostream::operator<<(v224, v200);
    v208 = *(OptionPred + 32);
    if ((*(OptionPred + 24) - v208) > 0x13)
    {
LABEL_388:
      *(v208 + 16) = 1953391981;
      *v208 = *" positional argument";
      v209 = *(OptionPred + 24);
      v210 = (*(OptionPred + 32) + 20);
      *(OptionPred + 32) = v210;
      v211 = v200 > 1;
      if (v209 - v210 >= v211)
      {
        goto LABEL_389;
      }

      goto LABEL_411;
    }

LABEL_410:
    OptionPred = llvm::raw_ostream::write(OptionPred, " positional argument", 0x14uLL);
    v210 = *(OptionPred + 32);
    v211 = v200 > 1;
    if (*(OptionPred + 24) - v210 >= v211)
    {
LABEL_389:
      if (v200 >= 2)
      {
        v212 = OptionPred;
        v213 = v211;
        memcpy(v210, "s", v211);
        OptionPred = v212;
        v210 = (*(v212 + 32) + v213);
        *(v212 + 32) = v210;
      }

      if (*(OptionPred + 24) - v210 <= 6uLL)
      {
LABEL_392:
        OptionPred = llvm::raw_ostream::write(OptionPred, ": See: ", 7uLL);
        v214 = *v41;
        if (*v41)
        {
          goto LABEL_427;
        }

        goto LABEL_431;
      }

LABEL_415:
      *(v210 + 3) = 540697957;
      *v210 = 1699946554;
      *(OptionPred + 32) += 7;
      v214 = *v41;
      if (*v41)
      {
        goto LABEL_427;
      }

      goto LABEL_431;
    }

LABEL_411:
    if (v200 <= 1)
    {
      v225 = "";
    }

    else
    {
      v225 = "s";
    }

    OptionPred = llvm::raw_ostream::write(OptionPred, v225, v211);
    v210 = *(OptionPred + 32);
    if (*(OptionPred + 24) - v210 <= 6uLL)
    {
      goto LABEL_392;
    }

    goto LABEL_415;
  }

  v279 = v82;
  v83 = 0;
  v290 = 0;
  while (2)
  {
    v295 = v83;
    memset(&v302, 0, sizeof(v302));
    v300 = 0;
    v301 = 0;
    v298 = "";
    v299 = 0;
    v84 = v41[v51];
    if (*v84 != 45 || (v85 = v84[1], (v84[1] == 0) | v290 & 1))
    {
      v83 = v295;
      if (v295)
      {
        v86 = strlen(v41[v51]);
        LODWORD(__p.__r_.__value_.__l.__data_) = v51;
        OptionPred = ProvideOption(v295, *(v295 + 16), *(v295 + 24), v84, v86, 0, 0, &__p);
        v87 = 9;
        goto LABEL_368;
      }

      if (*(v57 + 40))
      {
        OptionPred = strlen(v41[v51]);
        __p.__r_.__value_.__r.__words[0] = v41[v51];
        __p.__r_.__value_.__l.__size_ = OptionPred;
        LODWORD(__p.__r_.__value_.__r.__words[2]) = v51;
        v88 = v328;
        if (v329 >= HIDWORD(v329))
        {
          if (v328 <= &__p && v328 + 24 * v329 > &__p)
          {
            v198 = &__p - v328;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v328, v330, v329 + 1, 24);
            v88 = v328;
            v89 = (v328 + v198);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v328, v330, v329 + 1, 24);
            v89 = &__p;
            v88 = v328;
          }
        }

        else
        {
          v89 = &__p;
        }

        v90 = &v88[24 * v329];
        v91 = *&v89->__r_.__value_.__l.__data_;
        *(v90 + 2) = *(&v89->__r_.__value_.__l + 2);
        *v90 = v91;
        v92 = v329 + 1;
        LODWORD(v329) = v92;
        if (v92 >= v296 && *(v289 + 152))
        {
          v93 = v51 + 1;
          v303 = v51 + 1;
          if (v51 + 1 >= v294)
          {
            v83 = 0;
          }

          else
          {
            v94 = &v41[v93];
            do
            {
              if (*v94)
              {
                OptionPred = strlen(*v94);
              }

              else
              {
                OptionPred = 0;
              }

              __p.__r_.__value_.__r.__words[0] = *v94;
              __p.__r_.__value_.__l.__size_ = OptionPred;
              LODWORD(__p.__r_.__value_.__r.__words[2]) = v93;
              v95 = v328;
              if (v92 >= HIDWORD(v329))
              {
                if (v328 <= &__p && v328 + 24 * v92 > &__p)
                {
                  v99 = &__p - v328;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v328, v330, v92 + 1, 24);
                  v95 = v328;
                  v96 = (v328 + v99);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v328, v330, v92 + 1, 24);
                  v96 = &__p;
                  v95 = v328;
                }
              }

              else
              {
                v96 = &__p;
              }

              v97 = &v95[24 * v329];
              v98 = *&v96->__r_.__value_.__l.__data_;
              *(v97 + 2) = *(&v96->__r_.__value_.__l + 2);
              *v97 = v98;
              v92 = v329 + 1;
              LODWORD(v329) = v329 + 1;
              ++v93;
              ++v94;
            }

            while (v93 < v294);
            v83 = 0;
            v303 = v93;
          }

          v87 = 7;
          v57 = v289;
        }

        else
        {
          v83 = 0;
          v87 = 9;
          v57 = v289;
        }

        goto LABEL_368;
      }

LABEL_293:
      v121 = *(v57 + 88);
      if (v121)
      {
        goto LABEL_294;
      }

      if (v51 > 1)
      {
        v164 = 1;
      }

      else
      {
        v164 = v281;
      }

      if (v164 == 1)
      {
        v165 = HIBYTE(v302.__r_.__value_.__r.__words[2]);
        v166 = (v302.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
        v167 = v302.__r_.__value_.__r.__words[0];
        if ((v302.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v167 = &v302;
        }

        __srca = v167;
        p_size = &v302.__r_.__value_.__l.__size_;
      }

      else
      {
        v165 = HIBYTE(v306);
        v166 = v306 < 0;
        v169 = v304;
        if (v306 >= 0)
        {
          v169 = &v304;
        }

        __srca = v169;
        p_size = &v305;
      }

      v170 = *p_size;
      if (v166)
      {
        v171 = v170;
      }

      else
      {
        v171 = v165;
      }

      v172 = *(v52 + 23);
      if (v172 >= 0)
      {
        v173 = v52;
      }

      else
      {
        v173 = *v52;
      }

      if (v172 >= 0)
      {
        v174 = *(v52 + 23);
      }

      else
      {
        v174 = *(v52 + 8);
      }

      v175 = llvm::raw_ostream::write(v284, v173, v174);
      v176 = v175[4];
      if ((v175[3] - v176) > 9)
      {
        *(v176 + 8) = 8302;
        *v176 = *": Unknown ";
        v177 = (v175[4] + 10);
        v175[4] = v177;
      }

      else
      {
        v175 = llvm::raw_ostream::write(v175, ": Unknown ", 0xAuLL);
        v177 = v175[4];
      }

      if (v164)
      {
        v178 = "command line argument";
      }

      else
      {
        v178 = "subcommand";
      }

      if (v164)
      {
        v179 = 21;
      }

      else
      {
        v179 = 10;
      }

      if (v179 <= v175[3] - v177)
      {
        v184 = v175;
        memcpy(v177, v178, v179);
        OptionPred = v184;
        v180 = (v184[4] + v179);
        v184[4] = v180;
        if (v184[3] - v180 <= 1uLL)
        {
          goto LABEL_334;
        }

LABEL_330:
        *v180 = 10016;
        *(OptionPred + 32) += 2;
        v181 = v41[v51];
        if (v181)
        {
          goto LABEL_331;
        }

LABEL_335:
        v185 = *(OptionPred + 32);
        if ((*(OptionPred + 24) - v185) <= 9)
        {
          goto LABEL_336;
        }

LABEL_342:
        *(v185 + 8) = 10016;
        *v185 = *"'.  Try: '";
        *(OptionPred + 32) += 10;
        v186 = *v41;
        if (!*v41)
        {
          goto LABEL_343;
        }

LABEL_337:
        v187 = OptionPred;
        v188 = strlen(v186);
        OptionPred = v187;
        if (v188 <= *(v187 + 24) - *(v187 + 32))
        {
          if (v188)
          {
            memcpy(*(v187 + 32), v186, v188);
            OptionPred = v187;
            *(v187 + 32) += v188;
          }
        }

        else
        {
          OptionPred = llvm::raw_ostream::write(v187, v186, v188);
        }

        v57 = v289;
        v189 = *(OptionPred + 32);
        v83 = v295;
        if ((*(OptionPred + 24) - v189) > 8)
        {
          goto LABEL_359;
        }

LABEL_344:
        OptionPred = llvm::raw_ostream::write(OptionPred, " --help'\n", 9uLL);
        if (!v171)
        {
LABEL_360:
          v87 = 9;
          __src = 1;
          goto LABEL_368;
        }
      }

      else
      {
        OptionPred = llvm::raw_ostream::write(v175, v178, v179);
        v180 = *(OptionPred + 32);
        if (*(OptionPred + 24) - v180 > 1uLL)
        {
          goto LABEL_330;
        }

LABEL_334:
        OptionPred = llvm::raw_ostream::write(OptionPred, " '", 2uLL);
        v181 = v41[v303];
        if (!v181)
        {
          goto LABEL_335;
        }

LABEL_331:
        v182 = OptionPred;
        v183 = strlen(v181);
        OptionPred = v182;
        if (v183 <= *(v182 + 24) - *(v182 + 32))
        {
          if (v183)
          {
            memcpy(*(v182 + 32), v181, v183);
            OptionPred = v182;
            *(v182 + 32) += v183;
          }
        }

        else
        {
          OptionPred = llvm::raw_ostream::write(v182, v181, v183);
        }

        v57 = v289;
        v185 = *(OptionPred + 32);
        if ((*(OptionPred + 24) - v185) > 9)
        {
          goto LABEL_342;
        }

LABEL_336:
        OptionPred = llvm::raw_ostream::write(OptionPred, "'.  Try: '", 0xAuLL);
        v186 = *v41;
        if (*v41)
        {
          goto LABEL_337;
        }

LABEL_343:
        v189 = *(OptionPred + 32);
        v83 = v295;
        if ((*(OptionPred + 24) - v189) <= 8)
        {
          goto LABEL_344;
        }

LABEL_359:
        *(v189 + 8) = 10;
        *v189 = *" --help'\n";
        *(OptionPred + 32) += 9;
        if (!v171)
        {
          goto LABEL_360;
        }
      }

      v190 = *(v52 + 23);
      if (v190 >= 0)
      {
        v191 = v52;
      }

      else
      {
        v191 = *v52;
      }

      if (v190 >= 0)
      {
        v192 = *(v52 + 23);
      }

      else
      {
        v192 = *(v52 + 8);
      }

      v193 = llvm::raw_ostream::write(v284, v191, v192);
      v194 = v193[4];
      if (v193[3] - v194 > 0xFuLL)
      {
        *v194 = *": Did you mean '";
        v193[4] += 16;
        if (v164)
        {
          goto LABEL_362;
        }

LABEL_353:
        v195 = v284;
        v196 = *(v284 + 4);
        if (v171 <= *(v284 + 3) - v196)
        {
          OptionPred = memcpy(v196, __srca, v171);
          *(v284 + 4) += v171;
          v197 = *(v284 + 4);
          if ((*(v284 + 3) - v197) <= 2)
          {
            goto LABEL_363;
          }
        }

        else
        {
          OptionPred = llvm::raw_ostream::write(v284, __srca, v171);
          v197 = *(v284 + 4);
          if ((*(v284 + 3) - v197) <= 2)
          {
            goto LABEL_363;
          }
        }
      }

      else
      {
        llvm::raw_ostream::write(v193, ": Did you mean '", 0x10uLL);
        if (!v164)
        {
          goto LABEL_353;
        }

LABEL_362:
        __p.__r_.__value_.__r.__words[0] = __srca;
        *&__p.__r_.__value_.__r.__words[1] = v171;
        v195 = v284;
        v197 = *(v284 + 4);
        if ((*(v284 + 3) - v197) <= 2)
        {
LABEL_363:
          OptionPred = llvm::raw_ostream::write(v195, "'?\n", 3uLL);
          goto LABEL_366;
        }
      }

      *(v197 + 2) = 10;
      *v197 = 16167;
      *(v195 + 4) += 3;
LABEL_366:
      v87 = 9;
      v104 = 1;
LABEL_367:
      __src = v104;
      goto LABEL_368;
    }

    if (v85 == 45 && !v84[2])
    {
      v87 = 9;
      v290 = 1;
      v83 = v295;
      goto LABEL_368;
    }

    if (v295 && (*(v295 + 10) & 0x400) != 0)
    {
      v105 = strlen(v84 + 1);
      v298 = (v84 + 1);
      v299 = v105;
      v106 = v85 != 45 || v105 == 0;
      v107 = v106;
      if (!v106)
      {
        v298 = (v84 + 2);
        v299 = v105 - 1;
      }

      v83 = v295;
      if (!OptionPred || (*(OptionPred + 10) & 0x180) != 0x80)
      {
        v108 = v41[v303];
        if (v108)
        {
          v109 = strlen(v41[v303]);
        }

        else
        {
          v109 = 0;
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = v303;
        OptionPred = ProvideOption(v295, *(v295 + 16), *(v295 + 24), v108, v109, 0, 0, &__p);
        v290 = 0;
        v87 = 9;
        goto LABEL_368;
      }

      goto LABEL_162;
    }

    v100 = strlen(v84 + 1);
    v298 = (v84 + 1);
    v299 = v100;
    v101 = v85 != 45 || v100 == 0;
    v102 = v101;
    if (!v101)
    {
      v298 = (v84 + 2);
      v299 = v100 - 1;
    }

    v103 = v102 ^ 1;
    v83 = v295;
    if (OptionPred)
    {
LABEL_162:
      if ((*(OptionPred + 10) & 0x180) == 0x80)
      {
        v290 = 0;
        if ((*(OptionPred + 10) & 0x400) != 0 && v301)
        {
          __p.__r_.__value_.__r.__words[0] = "This argument does not take a value.\n\tInstead, it consumes any positional arguments until the next recognized option.";
          v343 = 259;
          v83 = OptionPred;
          OptionPred = llvm::cl::Option::error(OptionPred, &__p, 0, 0, v284);
          v290 = 0;
          v87 = 0;
          __src = 1;
        }

        else
        {
          v83 = OptionPred;
          v87 = 0;
        }

        goto LABEL_368;
      }

      OptionPred = ProvideOption(OptionPred, v298, v299, v300, v301, v294, v41, &v303);
      v290 = 0;
      v87 = 0;
      v104 = __src | OptionPred;
      goto LABEL_367;
    }

    if (atomic_load_explicit(qword_1EE17CA80, memory_order_acquire))
    {
      if (v57 == qword_1EE17CA80[0])
      {
        goto LABEL_191;
      }

LABEL_188:
      if (!atomic_load_explicit(qword_1EE17CA80, memory_order_acquire))
      {
        llvm::ManagedStaticBase::RegisterManagedStatic(qword_1EE17CA80, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
      }

      if (OptionPred)
      {
        goto LABEL_162;
      }
    }

    else
    {
      llvm::ManagedStaticBase::RegisterManagedStatic(qword_1EE17CA80, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
      if (v57 != qword_1EE17CA80[0])
      {
        goto LABEL_188;
      }
    }

LABEL_191:
    if ((v103 & a7 & 1) != 0 || v299 == 1)
    {
      goto LABEL_217;
    }

    __dst.__r_.__value_.__r.__words[0] = 0;
    OptionPred = getOptionPred(v298, v299, &__dst, isPrefixedOrGrouping, v57 + 128);
    if (!OptionPred)
    {
      goto LABEL_216;
    }

    while (2)
    {
      v111 = v298;
      v110 = v299;
      if (v299 >= __dst.__r_.__value_.__r.__words[0])
      {
        v112 = v299 - __dst.__r_.__value_.__r.__words[0];
      }

      else
      {
        v112 = 0;
      }

      if (v299 >= __dst.__r_.__value_.__r.__words[0])
      {
        v113 = __dst.__r_.__value_.__r.__words[0];
      }

      else
      {
        v113 = v299;
      }

      v299 = v113;
      if (__dst.__r_.__value_.__r.__words[0] >= v110)
      {
        v114 = 0;
LABEL_214:
        v300 = v114;
        v301 = v112;
        v52 = v286;
        v83 = v295;
        goto LABEL_162;
      }

      v114 = v298 + __dst.__r_.__value_.__r.__words[0];
      v115 = *(OptionPred + 10);
      v116 = (v115 >> 7) & 3;
      if (v116 == 3)
      {
        goto LABEL_214;
      }

      if (v116 == 2)
      {
        if (*v114 == 61)
        {
LABEL_213:
          ++v114;
          --v112;
        }

        goto LABEL_214;
      }

      if (*v114 == 61)
      {
        goto LABEL_213;
      }

      v117 = (v115 >> 3) & 3;
      if (!v117)
      {
        v118 = OptionPred;
        v117 = (*(*OptionPred + 8))();
        OptionPred = v118;
      }

      if (v117 != 2)
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = 0;
        __src |= ProvideOption(OptionPred, v111, v113, 0, 0, 0, 0, &__p);
        v298 = v114;
        v299 = v112;
        OptionPred = getOptionPred(v114, v112, &__dst, isGrouping, v57 + 128);
        if (!OptionPred)
        {
          goto LABEL_216;
        }

        continue;
      }

      break;
    }

    __p.__r_.__value_.__r.__words[0] = "may not occur within a group!";
    v343 = 259;
    v119 = OptionPred;
    v120 = llvm::errs(OptionPred);
    llvm::cl::Option::error(v119, &__p, 0, 0, v120);
    __src = 1;
LABEL_216:
    v52 = v286;
LABEL_217:
    v121 = *(v57 + 88);
    if (!v121)
    {
      v280 = v13;
      v316 = v298;
      v317 = v299;
      if (!v299)
      {
        goto LABEL_292;
      }

      __p.__r_.__value_.__s.__data_[0] = 61;
      v122 = llvm::StringRef::find(&v316, &__p, 1uLL, 0);
      if (v122 == -1)
      {
        v282 = 0;
        v283 = 0;
        v276 = v317;
        v277 = v316;
      }

      else
      {
        v123 = v122 >= v317 ? v317 : v122;
        v276 = v123;
        v277 = v316;
        v124 = v317 >= v122 + 1 ? v122 + 1 : v317;
        v282 = v316 + v124;
        v283 = v317 - v124;
      }

      v125 = *(v57 + 128);
      v126 = *(v57 + 136);
      if (v126)
      {
        v127 = *(v57 + 128);
        if (*v125)
        {
          v128 = *v125 == -8;
        }

        else
        {
          v128 = 1;
        }

        if (v128)
        {
          do
          {
            v130 = v127[1];
            ++v127;
            v129 = v130;
            if (v130)
            {
              v131 = v129 == -8;
            }

            else
            {
              v131 = 1;
            }
          }

          while (v131);
        }
      }

      else
      {
        v127 = *(v57 + 128);
      }

      v132 = &v125[v126];
      if (v127 == v132)
      {
        goto LABEL_292;
      }

      v133 = 0;
      v134 = 0;
      v135 = *v127;
      v278 = v132;
      while (1)
      {
        v136 = *(v135 + 8);
        if ((*(v136 + 10) & 0x60) != 0x40)
        {
          break;
        }

        do
        {
LABEL_287:
          v157 = v127[1];
          ++v127;
          v135 = v157;
          if (v157)
          {
            v158 = v135 == -8;
          }

          else
          {
            v158 = 1;
          }
        }

        while (v158);
        if (v127 == v132)
        {
LABEL_292:
          v51 = v303;
          v13 = v280;
          goto LABEL_293;
        }
      }

      __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__r.__words[2];
      __p.__r_.__value_.__l.__size_ = 0x1000000000;
      (*(*v136 + 72))(v136, &__p);
      v137 = *(v136 + 24);
      if (v137)
      {
        v138 = *(v136 + 16);
        v139 = LODWORD(__p.__r_.__value_.__r.__words[1]);
        if (LODWORD(__p.__r_.__value_.__r.__words[1]) >= HIDWORD(__p.__r_.__value_.__r.__words[1]))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__p, &__p.__r_.__value_.__r.__words[2], LODWORD(__p.__r_.__value_.__r.__words[1]) + 1, 16);
          v139 = LODWORD(__p.__r_.__value_.__r.__words[1]);
        }

        v140 = (__p.__r_.__value_.__r.__words[0] + 16 * v139);
        *v140 = v138;
        v140[1] = v137;
        ++LODWORD(__p.__r_.__value_.__r.__words[1]);
      }

      v141 = (*(v136 + 10) >> 3) & 3;
      if (v141)
      {
        v142 = LODWORD(__p.__r_.__value_.__r.__words[1]);
        if (!LODWORD(__p.__r_.__value_.__r.__words[1]))
        {
          goto LABEL_284;
        }
      }

      else
      {
        v141 = (*(*v136 + 8))(v136);
        v142 = LODWORD(__p.__r_.__value_.__r.__words[1]);
        if (!LODWORD(__p.__r_.__value_.__r.__words[1]))
        {
LABEL_284:
          if (__p.__r_.__value_.__l.__data_ != &__p.__r_.__value_.__r.__words[2])
          {
            free(__p.__r_.__value_.__l.__data_);
          }

          v52 = v286;
          v57 = v289;
          v132 = v278;
          goto LABEL_287;
        }
      }

      v288 = v136;
      v143 = __p.__r_.__value_.__r.__words[0];
      if (v141 == 3)
      {
        v144 = v317;
      }

      else
      {
        v144 = v276;
      }

      if (v141 == 3)
      {
        v145 = v316;
      }

      else
      {
        v145 = v277;
      }

      v146 = 16 * v142;
      if (v141 != 3 && v283 != 0)
      {
        do
        {
          *&__dst.__r_.__value_.__l.__data_ = *v143;
          v148 = llvm::StringRef::edit_distance(&__dst, v145, v144, 1, v134);
          v149 = v148;
          if (!v133 || v148 < v134)
          {
            v150 = *(v143 + 8);
            v310[0] = *v143;
            v310[1] = v150;
            v310[2] = "=";
            v311 = 773;
            __dst.__r_.__value_.__r.__words[0] = v310;
            __dst.__r_.__value_.__r.__words[2] = v282;
            v313 = v283;
            v314 = 1282;
            llvm::Twine::str(&__dst, &v315);
            if (SHIBYTE(v302.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v302.__r_.__value_.__l.__data_);
            }

            v302 = v315;
            v134 = v149;
            v133 = v288;
          }

          v143 += 16;
          v146 -= 16;
        }

        while (v146);
        goto LABEL_284;
      }

      while (1)
      {
        *&__dst.__r_.__value_.__l.__data_ = *v143;
        v151 = llvm::StringRef::edit_distance(&__dst, v145, v144, 1, v134);
        v152 = v151;
        if (v133 && v151 >= v134)
        {
          goto LABEL_271;
        }

        v153 = *(v143 + 8);
        if (v153 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_538;
        }

        v154 = *v143;
        if (v153 >= 0x17)
        {
          if ((v153 | 7) == 0x17)
          {
            v156 = 25;
          }

          else
          {
            v156 = (v153 | 7) + 1;
          }

          p_dst = operator new(v156);
          __dst.__r_.__value_.__l.__size_ = v153;
          __dst.__r_.__value_.__r.__words[2] = v156 | 0x8000000000000000;
          __dst.__r_.__value_.__r.__words[0] = p_dst;
        }

        else
        {
          *(&__dst.__r_.__value_.__s + 23) = *(v143 + 8);
          p_dst = &__dst;
          if (!v153)
          {
            v41 = v287;
            __dst.__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(v302.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_283;
            }

            goto LABEL_270;
          }
        }

        memmove(p_dst, v154, v153);
        v41 = v287;
        p_dst->__r_.__value_.__s.__data_[v153] = 0;
        if (SHIBYTE(v302.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_283:
          operator delete(v302.__r_.__value_.__l.__data_);
        }

LABEL_270:
        v302 = __dst;
        v134 = v152;
        v133 = v288;
LABEL_271:
        v143 += 16;
        v146 -= 16;
        if (!v146)
        {
          goto LABEL_284;
        }
      }
    }

    v51 = v303;
LABEL_294:
    v159 = *(v57 + 80);
    v160 = v51;
    v161 = 8 * v121;
    do
    {
      v163 = v41[v160];
      if (v163)
      {
        v162 = strlen(v41[v160]);
      }

      else
      {
        v162 = 0;
      }

      OptionPred = (*(**v159 + 80))(*v159, v160, "", 0, v163, v162, 0);
      ++v159;
      v161 -= 8;
    }

    while (v161);
    v87 = 9;
    v57 = v289;
    v83 = v295;
LABEL_368:
    if (SHIBYTE(v302.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v302.__r_.__value_.__l.__data_);
      if (v87 == 9)
      {
        goto LABEL_126;
      }

LABEL_372:
      if (!v87)
      {
        goto LABEL_126;
      }

      break;
    }

    if (v87 != 9)
    {
      goto LABEL_372;
    }

LABEL_126:
    v51 = v303 + 1;
    v303 = v51;
    if (v51 < v294)
    {
      continue;
    }

    break;
  }

  v199 = v329;
  v82 = v279;
  v200 = v296;
  v201 = __src;
  if (v329 < v296)
  {
    goto LABEL_379;
  }

LABEL_395:
  v215 = *(v57 + 40);
  if (v199 <= v215)
  {
    v82 = 0;
  }

  if (v82)
  {
    v216 = *(v52 + 23);
    if (v216 >= 0)
    {
      v217 = v52;
    }

    else
    {
      v217 = *v52;
    }

    if (v216 >= 0)
    {
      v218 = *(v52 + 23);
    }

    else
    {
      v218 = *(v52 + 8);
    }

    v219 = llvm::raw_ostream::write(v284, v217, v218);
    v220 = *(v219 + 4);
    if (*(v219 + 3) - v220 > 0x2AuLL)
    {
      qmemcpy(v220, ": Too many positional arguments specified!\n", 43);
      v232 = *(v219 + 3);
      v221 = *(v219 + 4) + 43;
      *(v219 + 4) = v221;
      if ((v232 - v221) <= 0x13)
      {
        goto LABEL_424;
      }

LABEL_406:
      *(v221 + 16) = 544502639;
      *v221 = *"Can specify at most ";
      *(v219 + 4) += 20;
      OptionPred = llvm::raw_ostream::operator<<(v219, *(v57 + 40));
      v222 = *(OptionPred + 32);
      if (*(OptionPred + 24) - v222 > 0x1BuLL)
      {
        goto LABEL_407;
      }

LABEL_425:
      OptionPred = llvm::raw_ostream::write(OptionPred, " positional arguments: See: ", 0x1CuLL);
    }

    else
    {
      v219 = llvm::raw_ostream::write(v219, ": Too many positional arguments specified!\n", 0x2BuLL);
      v221 = *(v219 + 4);
      if ((*(v219 + 3) - v221) > 0x13)
      {
        goto LABEL_406;
      }

LABEL_424:
      v233 = llvm::raw_ostream::write(v219, "Can specify at most ", 0x14uLL);
      OptionPred = llvm::raw_ostream::operator<<(v233, *(v57 + 40));
      v222 = *(OptionPred + 32);
      if (*(OptionPred + 24) - v222 <= 0x1BuLL)
      {
        goto LABEL_425;
      }

LABEL_407:
      qmemcpy(v222, " positional arguments: See: ", 28);
      *(OptionPred + 32) += 28;
    }

    v214 = *v41;
    if (*v41)
    {
LABEL_427:
      v234 = OptionPred;
      v235 = strlen(v214);
      OptionPred = v234;
      if (v235 <= *(v234 + 24) - *(v234 + 32))
      {
        if (v235)
        {
          memcpy(*(v234 + 32), v214, v235);
          OptionPred = v234;
          *(v234 + 32) += v235;
        }
      }

      else
      {
        OptionPred = llvm::raw_ostream::write(v234, v214, v235);
      }
    }

LABEL_431:
    v236 = *(OptionPred + 32);
    if (*(OptionPred + 24) - v236 > 7uLL)
    {
      *v236 = 0xA706C65682D2D20;
      *(OptionPred + 32) += 8;
    }

    else
    {
      OptionPred = llvm::raw_ostream::write(OptionPred, " --help\n", 8uLL);
    }

    v201 = 1;
    goto LABEL_435;
  }

  v226 = *(v57 + 32);
  if (!*(v57 + 152))
  {
    if (!v215)
    {
LABEL_505:
      v57 = v289;
      v201 = __src;
      goto LABEL_435;
    }

    v255 = 0;
    v256 = &v226[v215];
    while (1)
    {
      v257 = *v226;
      v258 = *(*v226 + 10);
      if ((v258 & 6) == 2)
      {
        v259 = v328 + 24 * v255;
        v260 = *v259;
        v261 = *(v259 + 1);
        LODWORD(__p.__r_.__value_.__l.__data_) = *(v259 + 4);
        OptionPred = ProvideOption(v257, *(v257 + 16), *(v257 + 24), v260, v261, 0, 0, &__p);
        ++v255;
        v258 = *(v257 + 10);
        if (v199 - v255 > --v296)
        {
          goto LABEL_500;
        }
      }

      else if (v199 - v255 > v296)
      {
LABEL_500:
        if ((v258 & 7) != 2)
        {
          v262 = v199 - 1 - v255;
          do
          {
            v263 = *(v257 + 10);
            v264 = v328 + 24 * v255;
            v265 = *v264;
            v266 = *(v264 + 1);
            LODWORD(__p.__r_.__value_.__l.__data_) = *(v264 + 4);
            OptionPred = ProvideOption(v257, *(v257 + 16), *(v257 + 24), v265, v266, 0, 0, &__p);
            ++v255;
            if (v262 <= v296)
            {
              break;
            }

            --v262;
          }

          while ((v263 & 7) != 0);
        }
      }

      ++v226;
      v52 = v286;
      if (v226 == v256)
      {
        goto LABEL_505;
      }
    }
  }

  v227 = 0;
  if (v215)
  {
    v228 = 8 * v215;
    do
    {
      OptionPred = *v226;
      if ((*(*v226 + 10) & 6) == 2)
      {
        v229 = v328 + 24 * v227;
        v230 = *v229;
        v231 = *(v229 + 1);
        LODWORD(__p.__r_.__value_.__l.__data_) = *(v229 + 4);
        OptionPred = ProvideOption(OptionPred, *(OptionPred + 16), *(OptionPred + 24), v230, v231, 0, 0, &__p);
        v201 |= OptionPred;
        ++v227;
      }

      ++v226;
      v228 -= 8;
    }

    while (v228);
    v57 = v289;
    v199 = v329;
    if (*(v289 + 40) == 1 && v227 == 0)
    {
      if (!v329)
      {
        goto LABEL_435;
      }

      v252 = **(v289 + 32);
      v253 = *v328;
      v254 = *(v328 + 1);
      LODWORD(__p.__r_.__value_.__l.__data_) = *(v328 + 4);
      OptionPred = ProvideOption(v252, *(v252 + 16), *(v252 + 24), v253, v254, 0, 0, &__p);
      v201 |= OptionPred;
      v227 = 1;
      v199 = v329;
    }
  }

  if (v199 != v227)
  {
    do
    {
      v267 = *(v57 + 152);
      v268 = v328 + 24 * v227;
      v269 = *v268;
      v270 = *(v268 + 1);
      LODWORD(__p.__r_.__value_.__l.__data_) = *(v268 + 4);
      OptionPred = ProvideOption(v267, *(v267 + 16), *(v267 + 24), v269, v270, 0, 0, &__p);
      v201 |= OptionPred;
      ++v227;
    }

    while (v227 != v329);
  }

LABEL_435:
  v237 = *(v57 + 128);
  v238 = *(v57 + 136);
  if (!v238)
  {
    v239 = *(v57 + 128);
    v244 = &v237[v238];
    if (v237 == v244)
    {
      goto LABEL_457;
    }

    goto LABEL_448;
  }

  v239 = *(v57 + 128);
  if (*v237)
  {
    v240 = *v237 == -8;
  }

  else
  {
    v240 = 1;
  }

  if (v240)
  {
    do
    {
      v242 = v239[1];
      ++v239;
      v241 = v242;
      if (v242)
      {
        v243 = v241 == -8;
      }

      else
      {
        v243 = 1;
      }
    }

    while (v243);
  }

  v244 = &v237[v238];
  if (v239 != v244)
  {
LABEL_448:
    v245 = *v239;
    do
    {
      v246 = *(v245 + 8);
      if ((*(v246 + 10) & 6) == 2 && !*(v246 + 8))
      {
        __p.__r_.__value_.__r.__words[0] = "must be specified at least once!";
        v343 = 259;
        v247 = llvm::errs(OptionPred);
        OptionPred = llvm::cl::Option::error(v246, &__p, 0, 0, v247);
        v201 = 1;
      }

      do
      {
        v248 = v239[1];
        ++v239;
        v245 = v248;
        if (v248)
        {
          v249 = v245 == -8;
        }

        else
        {
          v249 = 1;
        }
      }

      while (v249);
    }

    while (v239 != v244);
  }

LABEL_457:
  *(v52 + 48) = *(v52 + 40);
  if (!a5 && (v201 & 1) != 0)
  {
    exit(1);
  }

  if (v328 != v330)
  {
    free(v328);
  }

  v35 = v201 ^ 1;
  if (SHIBYTE(v306) < 0)
  {
    operator delete(v304);
  }

LABEL_463:
  if (v333)
  {
    llvm::deallocate_buffer(*v332, 0x1000);
  }

  if (v336)
  {
    llvm::deallocate_buffer(*v335, *(v335 + 1));
  }

  if (v335 != v337)
  {
    free(v335);
  }

  if (v332 != v334)
  {
    free(v332);
  }

  if (v338 != v340)
  {
    free(v338);
  }

  if (v320)
  {
    llvm::deallocate_buffer(*v319, 0x1000);
  }

  if (v323)
  {
    llvm::deallocate_buffer(*v322, *(v322 + 1));
  }

  if (v322 != v324)
  {
    free(v322);
  }

  if (v319 != v321)
  {
    free(v319);
  }

  if (v325 != v13)
  {
    free(v325);
  }

  return v35 & 1;
}
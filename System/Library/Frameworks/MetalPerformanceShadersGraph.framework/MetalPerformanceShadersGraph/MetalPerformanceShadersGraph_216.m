void llvm::detail::IEEEFloat::convertPPCDoubleDoubleAPFloatToAPInt(llvm::detail::IEEEFloat *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  v61 = *MEMORY[0x1E69E9840];
  v4 = *this;
  v5 = *(*this + 16);
  v56 = **this;
  v57 = v5;
  DWORD1(v56) = -1022;
  v52 = v4;
  v6 = *(v4 + 2);
  v7 = v6 + 64;
  if ((v6 + 64) >= 0x80)
  {
    this = operator new[]((v7 >> 3) & 0x1FFFFFF8);
    v53 = this;
  }

  v8 = *(v2 + 20);
  v9 = v8 & 7;
  v55 = v8 & 0xF;
  v54 = *(v2 + 4);
  v11 = (v8 & 6) != 0 && v9 != 3;
  if (v9 == 1 || v11)
  {
    if ((v6 - 64) >= 0xFFFFFF80)
    {
      this = &v53;
    }

    v14 = *(v2 + 1);
    v13 = (v2 + 8);
    v12 = v14;
    if ((v6 - 64) >= 0xFFFFFF80)
    {
      v15 = v13;
    }

    else
    {
      v15 = v12;
    }

    llvm::APInt::tcAssign(this, v15, (v7 >> 6));
  }

  v58 = 0;
  llvm::detail::IEEEFloat::convert(&v52, &v56, 1, &v58);
  v16 = v52;
  v48 = v52;
  v17 = *(v52 + 2) + 64;
  if (v17 >= 0x80)
  {
    __p = operator new[]((v17 >> 3) & 0x1FFFFFF8);
  }

  v18 = v55 & 7;
  v51 = v51 & 0xF0 | v55 & 0xF;
  v50 = v54;
  v20 = (v55 & 6) != 0 && v18 != 3;
  if (v18 == 1 || v20)
  {
    v21 = *(v16 + 2);
    if ((v21 - 64) >= 0xFFFFFF80)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v21 - 64) >= 0xFFFFFF80)
    {
      v23 = &v53;
    }

    else
    {
      v23 = v53;
    }

    llvm::APInt::tcAssign(p_p, v23, ((v21 + 64) >> 6));
  }

  llvm::detail::IEEEFloat::convert(&v48, &llvm::semIEEEdouble, 1, &v58);
  v24 = v51 & 7;
  v25 = (v51 & 6) == 0 || v24 == 3;
  v26 = !v25;
  if (v25)
  {
    if (v24 != 3)
    {
      if ((v51 & 7) != 0)
      {
        if ((*(v48 + 2) - 64) >= 0xFFFFFF80)
        {
          v30 = &__p;
        }

        else
        {
          v30 = __p;
        }

        v29 = *v30;
      }

      else
      {
        v29 = 0;
      }

      v59 = (v51 << 60) & 0x8000000000000000 | v29 & 0xFFFFFFFFFFFFFLL | 0x7FF0000000000000;
      if (!v26)
      {
        goto LABEL_72;
      }

      goto LABEL_58;
    }

    v28 = 0;
    v27 = 0;
    goto LABEL_51;
  }

  v27 = v50 + 1023;
  if ((*(v48 + 2) - 64) > 0xFFFFFF7F)
  {
    v28 = __p;
    if (v50 != -1022)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v28 = *__p;
    if (v50 != -1022)
    {
LABEL_51:
      v59 = (v51 << 60) & 0x8000000000000000 | v28 & 0xFFFFFFFFFFFFFLL | ((v27 & 0x7FF) << 52);
      if (!v26)
      {
        goto LABEL_72;
      }

      goto LABEL_58;
    }
  }

  v59 = (v51 << 60) & 0x8000000000000000 | v28 & 0xFFFFFFFFFFFFFLL | (((v28 >> 52) & 1) << 52);
  if (!v26)
  {
    goto LABEL_72;
  }

LABEL_58:
  if (v58 != 1)
  {
LABEL_72:
    v60 = 0;
    goto LABEL_73;
  }

  v31 = llvm::detail::IEEEFloat::convert(&v48, &v56, 1, &v58);
  v44 = v52;
  v32 = *(v52 + 2);
  v33 = v32 + 64;
  if ((v32 + 64) >= 0x80)
  {
    v31 = operator new[]((v33 >> 3) & 0x1FFFFFF8);
    v45 = v31;
  }

  v34 = v55 & 7;
  v47 = v55 & 0xF;
  v46 = v54;
  v36 = (v55 & 6) != 0 && v34 != 3;
  if (v34 != 1 && !v36)
  {
    if (llvm::detail::IEEEFloat::addOrSubtractSpecials(&v44, &v48, 1) != 2)
    {
      goto LABEL_70;
    }

LABEL_84:
    v39 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v44, &v48, 1);
    llvm::detail::IEEEFloat::normalize(&v44, 1, v39);
    v37 = v47;
    if ((v47 & 7) != 3)
    {
      goto LABEL_90;
    }

    goto LABEL_85;
  }

  if ((v32 - 64) < 0xFFFFFF80)
  {
    v38 = v53;
  }

  else
  {
    v31 = &v45;
    v38 = &v53;
  }

  llvm::APInt::tcAssign(v31, v38, (v33 >> 6));
  if (llvm::detail::IEEEFloat::addOrSubtractSpecials(&v44, &v48, 1) == 2)
  {
    goto LABEL_84;
  }

LABEL_70:
  v37 = v47;
  if ((v47 & 7) != 3)
  {
    goto LABEL_90;
  }

LABEL_85:
  if ((v51 & 7) != 3 || ((v51 ^ v37) & 8) == 0)
  {
    LOBYTE(v37) = v37 & 0xF3;
    v47 = v37;
  }

  if (*(v44 + 5) == 2)
  {
    v47 = v37 & 0xF3;
  }

LABEL_90:
  llvm::detail::IEEEFloat::convert(&v44, &llvm::semIEEEdouble, 1, &v58);
  v40 = v47 & 7;
  if ((v47 & 6) == 0 || v40 == 3)
  {
    if (v40 == 3)
    {
      v42 = 0;
      LOWORD(v41) = 0;
    }

    else
    {
      if ((v47 & 7) != 0)
      {
        if ((*(v44 + 2) - 64) >= 0xFFFFFF80)
        {
          v43 = &v45;
        }

        else
        {
          v43 = v45;
        }

        v42 = *v43;
      }

      else
      {
        v42 = 0;
      }

      LOWORD(v41) = 2047;
    }
  }

  else
  {
    LOWORD(v41) = v46 + 1023;
    if ((*(v44 + 2) - 64) <= 0xFFFFFF7F)
    {
      v42 = *v45;
      if (v46 != -1022)
      {
        goto LABEL_106;
      }

      goto LABEL_99;
    }

    v42 = v45;
    if (v46 == -1022)
    {
LABEL_99:
      v41 = (v42 >> 52) & 1;
    }
  }

LABEL_106:
  v60 = (v47 << 60) & 0x8000000000000000 | v42 & 0xFFFFFFFFFFFFFLL | ((v41 & 0x7FF) << 52);
  if ((*(v44 + 2) - 64) <= 0xFFFFFF7F && v45)
  {
    operator delete[](v45);
  }

LABEL_73:
  llvm::APInt::APInt(a2, 0x80u, &v59, 2u);
  if ((*(v48 + 2) - 64) <= 0xFFFFFF7F && __p)
  {
    operator delete[](__p);
  }

  if ((*(v52 + 2) - 64) <= 0xFFFFFF7F)
  {
    if (v53)
    {
      operator delete[](v53);
    }
  }
}

uint64_t llvm::detail::IEEEFloat::convertQuadrupleAPFloatToAPInt@<X0>(llvm::detail::IEEEFloat *this@<X0>, uint64_t a2@<X8>)
{
  v6 = *(this + 20);
  v7 = v6 & 7;
  if ((v6 & 6) == 0 || v7 == 3)
  {
    if (v7 == 3)
    {
      v9 = 0;
      v10 = 0;
      LOWORD(v11) = 0;
    }

    else
    {
      if ((v6 & 7) != 0)
      {
        v14 = *this;
        v13 = (this + 8);
        if ((*(v14 + 8) - 64) <= 0xFFFFFF7F)
        {
          v13 = *v13;
        }

        v9 = *v13;
        v10 = v13[1];
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }

      LOWORD(v11) = 0x7FFF;
    }
  }

  else
  {
    LODWORD(v11) = *(this + 4) + 0x3FFF;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v12 = *(this + 1);
      v9 = *v12;
      v10 = v12[1];
      if (v11 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v9 = *(this + 1);
    v10 = *(this + 2);
    if (v11 == 1)
    {
LABEL_13:
      v11 = HIWORD(v10) & 1;
    }
  }

LABEL_19:
  v16[2] = v2;
  v16[3] = v3;
  v16[0] = v9;
  v16[1] = (v6 << 60) & 0x8000000000000000 | v10 & 0xFFFFFFFFFFFFLL | ((v11 & 0x7FFF) << 48);
  return llvm::APInt::APInt(a2, 0x80u, v16, 2u);
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E5M2FNUZAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    if (v3 == 3)
    {
      LOBYTE(v5) = 0;
      LOBYTE(v6) = 0;
    }

    else
    {
      v7 = *this;
      this += 8;
      if ((*(v7 + 8) - 64) <= 0xFFFFFF7F)
      {
        this = *this;
      }

      LOBYTE(v6) = 0;
      v5 = *this;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 16) + 16;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = **(this + 8);
      if (*(this + 16) != -15)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v5 = *(this + 8);
    if (*(this + 16) == -15)
    {
LABEL_15:
      v6 = (v5 >> 2) & 1;
    }
  }

LABEL_16:
  *(a2 + 8) = 8;
  *a2 = (16 * v2) & 0x80 | v5 & 3 | (4 * (v6 & 0x1F));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E4M3APFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    if (v3 == 3)
    {
      LOBYTE(v5) = 0;
      LOBYTE(v6) = 0;
    }

    else
    {
      if ((v2 & 7) != 0)
      {
        v7 = *this;
        this += 8;
        if ((*(v7 + 8) - 64) <= 0xFFFFFF7F)
        {
          this = *this;
        }

        v5 = *this;
      }

      else
      {
        LOBYTE(v5) = 0;
      }

      LOBYTE(v6) = 15;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 16) + 7;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = **(this + 8);
      if (*(this + 16) != -6)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v5 = *(this + 8);
    if (*(this + 16) == -6)
    {
LABEL_13:
      v6 = (v5 >> 3) & 1;
    }
  }

LABEL_19:
  *(a2 + 8) = 8;
  *a2 = (16 * v2) & 0x80 | v5 & 7 | (8 * (v6 & 0xF));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E4M3FNAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    if (v3 == 3)
    {
      LOBYTE(v5) = 0;
      LOBYTE(v6) = 0;
    }

    else
    {
      v7 = *this;
      this += 8;
      if ((*(v7 + 8) - 64) <= 0xFFFFFF7F)
      {
        this = *this;
      }

      v5 = *this;
      LOBYTE(v6) = 15;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 16) + 7;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = **(this + 8);
      if (*(this + 16) != -6)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v5 = *(this + 8);
    if (*(this + 16) == -6)
    {
LABEL_15:
      v6 = (v5 >> 3) & 1;
    }
  }

LABEL_16:
  *(a2 + 8) = 8;
  *a2 = (16 * v2) & 0x80 | v5 & 7 | (8 * (v6 & 0xF));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E4M3FNUZAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    if (v3 == 3)
    {
      LOBYTE(v5) = 0;
      LOBYTE(v6) = 0;
    }

    else
    {
      v7 = *this;
      this += 8;
      if ((*(v7 + 8) - 64) <= 0xFFFFFF7F)
      {
        this = *this;
      }

      LOBYTE(v6) = 0;
      v5 = *this;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 16) + 8;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = **(this + 8);
      if (*(this + 16) != -7)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v5 = *(this + 8);
    if (*(this + 16) == -7)
    {
LABEL_15:
      v6 = (v5 >> 3) & 1;
    }
  }

LABEL_16:
  *(a2 + 8) = 8;
  *a2 = (16 * v2) & 0x80 | v5 & 7 | (8 * (v6 & 0xF));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E4M3B11FNUZAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    if (v3 == 3)
    {
      LOBYTE(v5) = 0;
      LOBYTE(v6) = 0;
    }

    else
    {
      v7 = *this;
      this += 8;
      if ((*(v7 + 8) - 64) <= 0xFFFFFF7F)
      {
        this = *this;
      }

      LOBYTE(v6) = 0;
      v5 = *this;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 16) + 11;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = **(this + 8);
      if (*(this + 16) != -10)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v5 = *(this + 8);
    if (*(this + 16) == -10)
    {
LABEL_15:
      v6 = (v5 >> 3) & 1;
    }
  }

LABEL_16:
  *(a2 + 8) = 8;
  *a2 = (16 * v2) & 0x80 | v5 & 7 | (8 * (v6 & 0xF));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E3M4APFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    if (v3 == 3)
    {
      LOBYTE(v5) = 0;
      LOBYTE(v6) = 0;
    }

    else
    {
      if ((v2 & 7) != 0)
      {
        v7 = *this;
        this += 8;
        if ((*(v7 + 8) - 64) <= 0xFFFFFF7F)
        {
          this = *this;
        }

        v5 = *this;
      }

      else
      {
        LOBYTE(v5) = 0;
      }

      LOBYTE(v6) = 7;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 16) + 3;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = **(this + 8);
      if (*(this + 16) != -2)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v5 = *(this + 8);
    if (*(this + 16) == -2)
    {
LABEL_13:
      v6 = (v5 >> 4) & 1;
    }
  }

LABEL_19:
  *(a2 + 8) = 8;
  *a2 = (16 * v2) & 0x80 | v5 & 0xF | (16 * (v6 & 7));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloatTF32APFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    if (v3 == 3)
    {
      LOWORD(v5) = 0;
      LOBYTE(v6) = 0;
    }

    else
    {
      if ((v2 & 7) != 0)
      {
        v7 = *this;
        this += 8;
        if ((*(v7 + 8) - 64) <= 0xFFFFFF7F)
        {
          this = *this;
        }

        v5 = *this;
      }

      else
      {
        LOWORD(v5) = 0;
      }

      LOBYTE(v6) = -1;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 16) + 127;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = **(this + 8);
      if (*(this + 16) != -126)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v5 = *(this + 8);
    if (*(this + 16) == -126)
    {
LABEL_13:
      v6 = (v5 >> 10) & 1;
    }
  }

LABEL_19:
  *(a2 + 8) = 19;
  *a2 = (v2 << 15) & 0x40000 | v5 & 0x3FF | (v6 << 10);
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat6E3M2FNAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  if ((v2 & 6) == 0 || (v2 & 7) == 3)
  {
    LOBYTE(v4) = 0;
    LOBYTE(v5) = 0;
  }

  else
  {
    LODWORD(v5) = *(this + 16) + 3;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v4 = **(this + 8);
      if (*(this + 16) != -2)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v4 = *(this + 8);
    if (*(this + 16) == -2)
    {
LABEL_11:
      v5 = (v4 >> 2) & 1;
    }
  }

LABEL_12:
  *(a2 + 8) = 6;
  *a2 = (4 * v2) & 0x20 | v4 & 3 | (4 * (v5 & 7));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat6E2M3FNAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  if ((v2 & 6) == 0 || (v2 & 7) == 3)
  {
    LOBYTE(v4) = 0;
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = *(this + 16);
    LOBYTE(v5) = v6 + 1;
    if ((*(*this + 8) - 64) > 0xFFFFFF7F)
    {
      v4 = *(this + 8);
      if (!v6)
      {
LABEL_11:
        v5 = (v4 >> 3) & 1;
      }
    }

    else
    {
      v4 = **(this + 8);
      if (!v6)
      {
        goto LABEL_11;
      }
    }
  }

  *(a2 + 8) = 6;
  *a2 = (4 * v2) & 0x20 | v4 & 7 | (8 * (v5 & 3));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat4E2M1FNAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  if ((v2 & 6) == 0 || (v2 & 7) == 3)
  {
    LOBYTE(v4) = 0;
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = *(this + 16);
    LOBYTE(v5) = v6 + 1;
    if ((*(*this + 8) - 64) > 0xFFFFFF7F)
    {
      v4 = *(this + 8);
      if (!v6)
      {
LABEL_11:
        v5 = (v4 >> 1) & 1;
      }
    }

    else
    {
      v4 = **(this + 8);
      if (!v6)
      {
        goto LABEL_11;
      }
    }
  }

  *(a2 + 8) = 4;
  *a2 = v2 & 8 | v4 & 1 | (2 * (v5 & 3));
  return this;
}

void llvm::detail::IEEEFloat::bitcastToAPInt(llvm::detail::IEEEFloat *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &llvm::semIEEEhalf)
  {
    v3 = *(this + 20);
    v4 = v3 & 7;
    if ((v3 & 6) == 0 || v4 == 3)
    {
      if (v4 == 3)
      {
        LOWORD(v6) = 0;
        LOBYTE(v11) = 0;
      }

      else
      {
        if ((v3 & 7) != 0)
        {
          v6 = *(this + 1);
        }

        else
        {
          LOWORD(v6) = 0;
        }

        LOBYTE(v11) = 31;
      }
    }

    else
    {
      LODWORD(v11) = *(this + 4) + 15;
      v6 = *(this + 1);
      if (*(this + 4) == -14)
      {
        v11 = (v6 >> 10) & 1;
      }
    }

    *(a2 + 8) = 16;
    *a2 = (v3 << 12) & 0x8000 | v6 & 0x3FF | ((v11 & 0x1F) << 10);
  }

  else if (v2 == &llvm::semBFloat)
  {
    v7 = *(this + 20);
    v8 = v7 & 7;
    if ((v7 & 6) == 0 || v8 == 3)
    {
      if (v8 == 3)
      {
        LOBYTE(v10) = 0;
        LOBYTE(v16) = 0;
      }

      else
      {
        if ((v7 & 7) != 0)
        {
          v10 = *(this + 1);
        }

        else
        {
          LOBYTE(v10) = 0;
        }

        LOBYTE(v16) = -1;
      }
    }

    else
    {
      LODWORD(v16) = *(this + 4) + 127;
      v10 = *(this + 1);
      if (*(this + 4) == -126)
      {
        v16 = (v10 >> 7) & 1;
      }
    }

    *(a2 + 8) = 16;
    *a2 = (v7 << 12) & 0x8000 | v10 & 0x7F | (v16 << 7);
  }

  else if (v2 == &llvm::semIEEEsingle)
  {
    v12 = *(this + 20);
    v13 = v12 & 7;
    if ((v12 & 6) == 0 || v13 == 3)
    {
      if (v13 == 3)
      {
        LODWORD(v15) = 0;
        LOBYTE(v14) = 0;
      }

      else
      {
        if ((v12 & 7) != 0)
        {
          v15 = *(this + 1);
        }

        else
        {
          LODWORD(v15) = 0;
        }

        LOBYTE(v14) = -1;
      }
    }

    else
    {
      LODWORD(v14) = *(this + 4) + 127;
      v15 = *(this + 1);
      if (*(this + 4) == -126)
      {
        v14 = (v15 >> 23) & 1;
      }
    }

    *(a2 + 8) = 32;
    *a2 = (v12 << 28) & 0x80000000 | v15 & 0x7FFFFF | (v14 << 23);
  }

  else if (v2 == &llvm::semIEEEdouble)
  {
    v17 = *(this + 20);
    v18 = v17 & 7;
    if ((v17 & 6) == 0 || v18 == 3)
    {
      if (v18 == 3)
      {
        v20 = 0;
        LOWORD(v19) = 0;
      }

      else
      {
        if ((v17 & 7) != 0)
        {
          v20 = *(this + 1);
        }

        else
        {
          v20 = 0;
        }

        LOWORD(v19) = 2047;
      }
    }

    else
    {
      LODWORD(v19) = *(this + 4) + 1023;
      v20 = *(this + 1);
      if (*(this + 4) == -1022)
      {
        v19 = (v20 >> 52) & 1;
      }
    }

    *(a2 + 8) = 64;
    *a2 = (v17 << 60) & 0x8000000000000000 | v20 & 0xFFFFFFFFFFFFFLL | ((v19 & 0x7FF) << 52);
  }

  else if (v2 == &llvm::semIEEEquad)
  {
    llvm::detail::IEEEFloat::convertQuadrupleAPFloatToAPInt(this, a2);
  }

  else if (v2 == &llvm::semPPCDoubleDoubleLegacy)
  {
    llvm::detail::IEEEFloat::convertPPCDoubleDoubleAPFloatToAPInt(this, a2);
  }

  else if (v2 == &llvm::semFloat8E5M2)
  {
    v21 = *(this + 20);
    v22 = v21 & 7;
    if ((v21 & 6) == 0 || v22 == 3)
    {
      if (v22 == 3)
      {
        LOBYTE(v24) = 0;
        LOBYTE(v23) = 0;
      }

      else
      {
        if ((v21 & 7) != 0)
        {
          v24 = *(this + 1);
        }

        else
        {
          LOBYTE(v24) = 0;
        }

        LOBYTE(v23) = 31;
      }
    }

    else
    {
      LODWORD(v23) = *(this + 4) + 15;
      v24 = *(this + 1);
      if (*(this + 4) == -14)
      {
        v23 = (v24 >> 2) & 1;
      }
    }

    *(a2 + 8) = 8;
    *a2 = (16 * v21) & 0x80 | v24 & 3 | (4 * (v23 & 0x1F));
  }

  else if (v2 == &llvm::semFloat8E5M2FNUZ)
  {
    llvm::detail::IEEEFloat::convertFloat8E5M2FNUZAPFloatToAPInt(this, a2);
  }

  else if (v2 == &llvm::semFloat8E4M3)
  {
    llvm::detail::IEEEFloat::convertFloat8E4M3APFloatToAPInt(this, a2);
  }

  else if (v2 == &llvm::semFloat8E4M3FN)
  {
    llvm::detail::IEEEFloat::convertFloat8E4M3FNAPFloatToAPInt(this, a2);
  }

  else if (v2 == &llvm::semFloat8E4M3FNUZ)
  {
    llvm::detail::IEEEFloat::convertFloat8E4M3FNUZAPFloatToAPInt(this, a2);
  }

  else if (v2 == &llvm::semFloat8E4M3B11FNUZ)
  {
    llvm::detail::IEEEFloat::convertFloat8E4M3B11FNUZAPFloatToAPInt(this, a2);
  }

  else if (v2 == &llvm::semFloat8E3M4)
  {
    llvm::detail::IEEEFloat::convertFloat8E3M4APFloatToAPInt(this, a2);
  }

  else if (v2 == &llvm::semFloatTF32)
  {
    llvm::detail::IEEEFloat::convertFloatTF32APFloatToAPInt(this, a2);
  }

  else if (v2 == &llvm::semFloat6E3M2FN)
  {
    llvm::detail::IEEEFloat::convertFloat6E3M2FNAPFloatToAPInt(this, a2);
  }

  else if (v2 == &llvm::semFloat6E2M3FN)
  {
    llvm::detail::IEEEFloat::convertFloat6E2M3FNAPFloatToAPInt(this, a2);
  }

  else if (v2 == &llvm::semFloat4E2M1FN)
  {
    llvm::detail::IEEEFloat::convertFloat4E2M1FNAPFloatToAPInt(this, a2);
  }

  else
  {
    llvm::detail::IEEEFloat::convertF80LongDoubleAPFloatToAPInt(this, a2);
  }
}

void llvm::detail::IEEEFloat::initFromF80LongDoubleAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  if (*(a2 + 2) >= 0x41u)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = v5 & 0x7FFF;
  *this = &llvm::semX87DoubleExtended;
  v7 = operator new[](0x10uLL);
  *(this + 1) = v7;
  v8 = *(this + 20);
  v9 = (v5 >> 12) & 8;
  if (v6 | v4)
  {
    if (v6 != 0x7FFF || v4 != 0x8000000000000000)
    {
      v11 = v8 & 0xF7 | v9;
      v12 = v6 != 0x7FFF || v4 == 0x8000000000000000;
      if (v12 && (v4 < 0 || ((v5 & 0x7FFF) != 0 ? (v13 = v6 == 0x7FFF) : (v13 = 1), v13)))
      {
        *(this + 20) = v11 & 0xF8 | 2;
        *(this + 4) = v6 - 0x3FFF;
        *v7 = v4;
        *(v7 + 1) = 0;
        if ((v5 & 0x7FFF) == 0)
        {
          *(this + 4) = -16382;
        }
      }

      else
      {
        *(this + 20) = v11 & 0xF8 | 1;
        *(this + 4) = 0x4000;
        *v7 = v4;
        *(v7 + 1) = 0;
      }

      return;
    }

    *(this + 20) = v8 & 0xF0 | v9;
    v14 = 0x4000;
  }

  else
  {
    *(this + 20) = v9 | v8 & 0xF0 | 3;
    v14 = -16383;
  }

  *(this + 4) = v14;

  llvm::APInt::tcSet(v7, 0, 2u);
}

void llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  if (*(a2 + 2) >= 0x41u)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3;
  v5 = *(v3 + 1);
  LODWORD(__p) = 64;
  v11 = v4;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(this, &v11);
  llvm::detail::IEEEFloat::convert(this, &llvm::semPPCDoubleDoubleLegacy, 1, &v14);
  if ((*(this + 20) & 6) != 0 && (*(this + 20) & 7) != 3)
  {
    v10 = 64;
    v9 = v5;
    llvm::detail::IEEEFloat::initFromDoubleAPInt(&v11, &v9);
    llvm::detail::IEEEFloat::convert(&v11, &llvm::semPPCDoubleDoubleLegacy, 1, &v14);
    if (llvm::detail::IEEEFloat::addOrSubtractSpecials(this, &v11, 0) == 2)
    {
      v7 = llvm::detail::IEEEFloat::addOrSubtractSignificand(this, &v11, 0);
      llvm::detail::IEEEFloat::normalize(this, 1, v7);
    }

    v8 = *(this + 20);
    if ((v8 & 7) == 3)
    {
      if ((v13 & 7) != 3 || ((v13 ^ v8) & 8) != 0)
      {
        LOBYTE(v8) = v8 & 0xF3;
        *(this + 20) = v8;
      }

      if (*(*this + 20) == 2)
      {
        *(this + 20) = v8 & 0xF3;
      }
    }

    if ((*(v11 + 2) - 64) <= 0xFFFFFF7F)
    {
      if (__p)
      {
        operator delete[](__p);
      }
    }
  }
}

void llvm::detail::IEEEFloat::initFromDoubleAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 0xFFFFFFFFFFFFFLL;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 52) & 0x7FF;
  *this = &llvm::semIEEEdouble;
  v7 = *(this + 20);
  v8 = (v5 >> 60) & 8;
  if (v6 == 2047 && v4 == 0)
  {
    *(this + 20) = v7 & 0xF0 | v8;
    *(this + 4) = 1024;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }

  else if (v6 != 2047 || v4 == 0)
  {
    if (v6 | v4)
    {
      *(this + 20) = v7 & 0xF0 | v8 & 0xF8 | 2;
      *(this + 4) = v6 - 1023;
      *(this + 1) = v4;
      if (v6)
      {
        *(this + 1) = v4 | 0x10000000000000;
      }

      else
      {
        *(this + 4) = -1022;
      }
    }

    else
    {
      *(this + 20) = v7 & 0xF0 | v8 | 3;
      *(this + 4) = -1023;
      llvm::APInt::tcSet((this + 8), 0, 1u);
    }
  }

  else
  {
    *(this + 20) = v7 & 0xF0 | v8 & 0xF8 | 1;
    *(this + 4) = 1024;
    *(this + 1) = v4;
  }
}

void llvm::detail::IEEEFloat::initFromQuadrupleAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v3 = *(a2 + 2);
  v4 = *a2;
  if (v3 < 0x41)
  {
    v4 = a2;
  }

  v5 = *v4;
  v6 = *(v4 + 1) & 0xFFFFFFFFFFFFLL;
  v7 = *(v4 + ((v3 + 63) >> 6) - 1);
  *this = &llvm::semIEEEquad;
  v8 = operator new[](0x10uLL);
  *(this + 1) = v8;
  v9 = *(this + 20);
  if (v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  v11 = (v5 | v6) == 0;
  v12 = (v7 >> 60) & 8;
  v13 = HIWORD(v7) & 0x7FFF;
  if (v13 != 0x7FFF || (v5 | v6) != 0)
  {
    if (v13 != 0x7FFF)
    {
      v11 = 1;
    }

    if (!v11)
    {
      *(this + 20) = v9 & 0xF0 | (v7 >> 60) & 8 | 1;
      *(this + 4) = 0x4000;
      *v8 = v5;
      *(v8 + 1) = v6;
      return;
    }

    if (v10 | v13)
    {
      *(this + 20) = v9 & 0xF0 | (v7 >> 60) & 8 | 2;
      *(this + 4) = v13 - 0x3FFF;
      *v8 = v5;
      *(v8 + 1) = v6;
      if (v13)
      {
        *(v8 + 1) |= 0x1000000000000uLL;
      }

      else
      {
        *(this + 4) = -16382;
      }

      return;
    }

    *(this + 20) = v12 | v9 & 0xF0 | 3;
    v15 = -16383;
  }

  else
  {
    *(this + 20) = v9 & 0xF0 | v12;
    v15 = 0x4000;
  }

  *(this + 4) = v15;

  llvm::APInt::tcSet(v8, 0, 2u);
}

void llvm::detail::IEEEFloat::initFromFloatAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 0x7FFFFFLL;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 23);
  *this = &llvm::semIEEEsingle;
  v7 = *(this + 20);
  v8 = (v5 >> 28) & 8;
  if (v6 == 255 && v4 == 0)
  {
    *(this + 20) = v7 & 0xF0 | v8;
    *(this + 4) = 128;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }

  else if (v6 != 255 || v4 == 0)
  {
    if (v6 | v4)
    {
      *(this + 20) = v7 & 0xF0 | v8 & 0xF8 | 2;
      *(this + 4) = v6 - 127;
      *(this + 1) = v4;
      if (v6)
      {
        *(this + 1) = v4 | 0x800000;
      }

      else
      {
        *(this + 4) = -126;
      }
    }

    else
    {
      *(this + 20) = v7 & 0xF0 | v8 | 3;
      *(this + 4) = -127;
      llvm::APInt::tcSet((this + 8), 0, 1u);
    }
  }

  else
  {
    *(this + 20) = v7 & 0xF0 | v8 & 0xF8 | 1;
    *(this + 4) = 128;
    *(this + 1) = v4;
  }
}

void llvm::detail::IEEEFloat::initFromBFloatAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 0x7FLL;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 7);
  *this = &llvm::semBFloat;
  v7 = *(this + 20);
  v8 = (v5 >> 12) & 8;
  if (v6 == 255 && v4 == 0)
  {
    *(this + 20) = v7 & 0xF0 | v8;
    *(this + 4) = 128;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }

  else if (v6 != 255 || v4 == 0)
  {
    if (v6 | v4)
    {
      *(this + 20) = v7 & 0xF0 | v8 & 0xF8 | 2;
      *(this + 4) = v6 - 127;
      *(this + 1) = v4;
      if (v6)
      {
        *(this + 1) = v4 | 0x80;
      }

      else
      {
        *(this + 4) = -126;
      }
    }

    else
    {
      *(this + 20) = v7 & 0xF0 | v8 | 3;
      *(this + 4) = -127;
      llvm::APInt::tcSet((this + 8), 0, 1u);
    }
  }

  else
  {
    *(this + 20) = v7 & 0xF0 | v8 & 0xF8 | 1;
    *(this + 4) = 128;
    *(this + 1) = v4;
  }
}

void llvm::detail::IEEEFloat::initFromHalfAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 0x3FFLL;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 10) & 0x1F;
  *this = &llvm::semIEEEhalf;
  v7 = *(this + 20);
  v8 = (v5 >> 12) & 8;
  if (v6 == 31 && v4 == 0)
  {
    *(this + 20) = v7 & 0xF0 | v8;
    *(this + 4) = 16;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }

  else if (v6 != 31 || v4 == 0)
  {
    if (v6 | v4)
    {
      *(this + 20) = v7 & 0xF0 | v8 & 0xF8 | 2;
      *(this + 4) = v6 - 15;
      *(this + 1) = v4;
      if (v6)
      {
        *(this + 1) = v4 | 0x400;
      }

      else
      {
        *(this + 4) = -14;
      }
    }

    else
    {
      *(this + 20) = v7 & 0xF0 | v8 | 3;
      *(this + 4) = -15;
      llvm::APInt::tcSet((this + 8), 0, 1u);
    }
  }

  else
  {
    *(this + 20) = v7 & 0xF0 | v8 & 0xF8 | 1;
    *(this + 4) = 16;
    *(this + 1) = v4;
  }
}

void llvm::detail::IEEEFloat::initFromFloat8E5M2APInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 3;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 2) & 0x1F;
  *this = &llvm::semFloat8E5M2;
  v7 = *(this + 20);
  v8 = (v5 >> 4) & 8;
  if (v6 == 31 && v4 == 0)
  {
    *(this + 20) = v7 & 0xF0 | v8;
    *(this + 4) = 16;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }

  else if (v6 != 31 || v4 == 0)
  {
    if (v6 | v4)
    {
      *(this + 20) = v7 & 0xF0 | v8 & 0xF8 | 2;
      *(this + 4) = v6 - 15;
      *(this + 1) = v4;
      if (v6)
      {
        *(this + 1) = v4 | 4;
      }

      else
      {
        *(this + 4) = -14;
      }
    }

    else
    {
      *(this + 20) = v7 & 0xF0 | v8 | 3;
      *(this + 4) = -15;
      llvm::APInt::tcSet((this + 8), 0, 1u);
    }
  }

  else
  {
    *(this + 20) = v7 & 0xF0 | v8 & 0xF8 | 1;
    *(this + 4) = 16;
    *(this + 1) = v4;
  }
}

void llvm::detail::IEEEFloat::initFromFloat8E5M2FNUZAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 3;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 2) & 0x1F;
  *this = &llvm::semFloat8E5M2FNUZ;
  v7 = *(this + 20);
  if (v6 | v4)
  {
    *(this + 20) = v7 & 0xF0 | (v5 >> 4) & 8 | 2;
    *(this + 4) = v6 - 16;
    *(this + 1) = v4;
    if (v6)
    {
      *(this + 1) = v4 | 4;
    }

    else
    {
      *(this + 4) = -15;
    }
  }

  else if (((v5 >> 4) & 8) != 0)
  {
    *(this + 20) = v7 & 0xF0 | (v5 >> 4) & 8 | 1;
    *(this + 4) = -16;
    *(this + 1) = 0;
  }

  else
  {
    *(this + 20) = v7 & 0xF0 | 3;
    *(this + 4) = -16;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }
}

void llvm::detail::IEEEFloat::initFromFloat8E4M3APInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 7;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 3) & 0xF;
  *this = &llvm::semFloat8E4M3;
  v7 = *(this + 20);
  v8 = (v5 >> 4) & 8;
  if (v6 == 15 && v4 == 0)
  {
    *(this + 20) = v7 & 0xF0 | v8;
    *(this + 4) = 8;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }

  else if (v6 != 15 || v4 == 0)
  {
    if (v6 | v4)
    {
      *(this + 20) = v7 & 0xF0 | v8 & 0xF8 | 2;
      *(this + 4) = v6 - 7;
      *(this + 1) = v4;
      if (v6)
      {
        *(this + 1) = v4 | 8;
      }

      else
      {
        *(this + 4) = -6;
      }
    }

    else
    {
      *(this + 20) = v7 & 0xF0 | v8 | 3;
      *(this + 4) = -7;
      llvm::APInt::tcSet((this + 8), 0, 1u);
    }
  }

  else
  {
    *(this + 20) = v7 & 0xF0 | v8 & 0xF8 | 1;
    *(this + 4) = 8;
    *(this + 1) = v4;
  }
}

void llvm::detail::IEEEFloat::initFromFloat8E4M3FNAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 7;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 3) & 0xF;
  *this = &llvm::semFloat8E4M3FN;
  v7 = *(this + 20);
  if (v6 == 15 && v4 == 7)
  {
    *(this + 20) = v7 & 0xF0 | (v5 >> 4) & 8 | 1;
    *(this + 4) = 8;
    *(this + 1) = 7;
  }

  else if (v6 | v4)
  {
    *(this + 20) = v7 & 0xF0 | (v5 >> 4) & 8 | 2;
    *(this + 4) = v6 - 7;
    *(this + 1) = v4;
    if (v6)
    {
      *(this + 1) = v4 | 8;
    }

    else
    {
      *(this + 4) = -6;
    }
  }

  else
  {
    *(this + 20) = v7 & 0xF0 | (v5 >> 4) & 8 | 3;
    *(this + 4) = -7;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }
}

void llvm::detail::IEEEFloat::initFromFloat8E4M3FNUZAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 7;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 3) & 0xF;
  *this = &llvm::semFloat8E4M3FNUZ;
  v7 = *(this + 20);
  if (v6 | v4)
  {
    *(this + 20) = v7 & 0xF0 | (v5 >> 4) & 8 | 2;
    *(this + 4) = v6 - 8;
    *(this + 1) = v4;
    if (v6)
    {
      *(this + 1) = v4 | 8;
    }

    else
    {
      *(this + 4) = -7;
    }
  }

  else if (((v5 >> 4) & 8) != 0)
  {
    *(this + 20) = v7 & 0xF0 | (v5 >> 4) & 8 | 1;
    *(this + 4) = -8;
    *(this + 1) = 0;
  }

  else
  {
    *(this + 20) = v7 & 0xF0 | 3;
    *(this + 4) = -8;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }
}

void llvm::detail::IEEEFloat::initFromFloat8E4M3B11FNUZAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 7;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 3) & 0xF;
  *this = &llvm::semFloat8E4M3B11FNUZ;
  v7 = *(this + 20);
  if (v6 | v4)
  {
    *(this + 20) = v7 & 0xF0 | (v5 >> 4) & 8 | 2;
    *(this + 4) = v6 - 11;
    *(this + 1) = v4;
    if (v6)
    {
      *(this + 1) = v4 | 8;
    }

    else
    {
      *(this + 4) = -10;
    }
  }

  else if (((v5 >> 4) & 8) != 0)
  {
    *(this + 20) = v7 & 0xF0 | (v5 >> 4) & 8 | 1;
    *(this + 4) = -11;
    *(this + 1) = 0;
  }

  else
  {
    *(this + 20) = v7 & 0xF0 | 3;
    *(this + 4) = -11;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }
}

void llvm::detail::IEEEFloat::initFromFloat8E3M4APInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 0xFLL;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 4) & 7;
  *this = &llvm::semFloat8E3M4;
  v7 = *(this + 20);
  v8 = (v5 >> 4) & 8;
  if (v6 == 7 && v4 == 0)
  {
    *(this + 20) = v7 & 0xF0 | v8;
    *(this + 4) = 4;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }

  else if (v6 != 7 || v4 == 0)
  {
    if (v6 | v4)
    {
      *(this + 20) = v7 & 0xF0 | v8 & 0xF8 | 2;
      *(this + 4) = v6 - 3;
      *(this + 1) = v4;
      if (v6)
      {
        *(this + 1) = v4 | 0x10;
      }

      else
      {
        *(this + 4) = -2;
      }
    }

    else
    {
      *(this + 20) = v7 & 0xF0 | v8 | 3;
      *(this + 4) = -3;
      llvm::APInt::tcSet((this + 8), 0, 1u);
    }
  }

  else
  {
    *(this + 20) = v7 & 0xF0 | v8 & 0xF8 | 1;
    *(this + 4) = 4;
    *(this + 1) = v4;
  }
}

void llvm::detail::IEEEFloat::initFromFloatTF32APInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 0x3FFLL;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 10);
  *this = &llvm::semFloatTF32;
  v7 = *(this + 20);
  v8 = (v5 >> 15) & 8;
  if (v6 == 255 && v4 == 0)
  {
    *(this + 20) = v7 & 0xF0 | v8;
    *(this + 4) = 128;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }

  else if (v6 != 255 || v4 == 0)
  {
    if (v6 | v4)
    {
      *(this + 20) = v7 & 0xF0 | v8 & 0xF8 | 2;
      *(this + 4) = v6 - 127;
      *(this + 1) = v4;
      if (v6)
      {
        *(this + 1) = v4 | 0x400;
      }

      else
      {
        *(this + 4) = -126;
      }
    }

    else
    {
      *(this + 20) = v7 & 0xF0 | v8 | 3;
      *(this + 4) = -127;
      llvm::APInt::tcSet((this + 8), 0, 1u);
    }
  }

  else
  {
    *(this + 20) = v7 & 0xF0 | v8 & 0xF8 | 1;
    *(this + 4) = 128;
    *(this + 1) = v4;
  }
}

void llvm::detail::IEEEFloat::initFromFloat6E3M2FNAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 3;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 2) & 7;
  *this = &llvm::semFloat6E3M2FN;
  v7 = (v5 >> 2) & 8;
  v8 = *(this + 20) & 0xF0;
  if (v6 | v4)
  {
    *(this + 20) = v7 | v8 | 2;
    *(this + 4) = v6 - 3;
    *(this + 1) = v4;
    if (v6)
    {
      *(this + 1) = v4 | 4;
    }

    else
    {
      *(this + 4) = -2;
    }
  }

  else
  {
    *(this + 20) = v8 | v7 | 3;
    *(this + 4) = -3;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }
}

void llvm::detail::IEEEFloat::initFromFloat6E2M3FNAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 7;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 3) & 3;
  *this = &llvm::semFloat6E2M3FN;
  v7 = (v5 >> 2) & 8;
  v8 = *(this + 20) & 0xF0;
  if (v6 | v4)
  {
    *(this + 20) = v7 | v8 | 2;
    *(this + 4) = v6 - 1;
    *(this + 1) = v4;
    if (v6)
    {
      *(this + 1) = v4 | 8;
    }

    else
    {
      *(this + 4) = 0;
    }
  }

  else
  {
    *(this + 20) = v8 | v7 | 3;
    *(this + 4) = -1;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }
}

void llvm::detail::IEEEFloat::initFromFloat4E2M1FNAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 1;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 1) & 3;
  *this = &llvm::semFloat4E2M1FN;
  v7 = v5 & 8 | *(this + 20) & 0xF0;
  if (v6 | v4)
  {
    *(this + 20) = v7 | 2;
    *(this + 4) = v6 - 1;
    *(this + 1) = v4;
    if (v6)
    {
      *(this + 1) = v4 | 2;
    }

    else
    {
      *(this + 4) = 0;
    }
  }

  else
  {
    *(this + 20) = v7 | 3;
    *(this + 4) = -1;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }
}

void llvm::detail::IEEEFloat::initFromAPInt(llvm::detail::IEEEFloat *a1, void *a2, const llvm::APInt **a3)
{
  if (a2 == &llvm::semIEEEhalf)
  {
    llvm::detail::IEEEFloat::initFromHalfAPInt(a1, a3);
  }

  else if (a2 == &llvm::semBFloat)
  {
    llvm::detail::IEEEFloat::initFromBFloatAPInt(a1, a3);
  }

  else if (a2 == &llvm::semIEEEsingle)
  {
    llvm::detail::IEEEFloat::initFromFloatAPInt(a1, a3);
  }

  else if (a2 == &llvm::semIEEEdouble)
  {
    llvm::detail::IEEEFloat::initFromDoubleAPInt(a1, a3);
  }

  else if (a2 == &llvm::semX87DoubleExtended)
  {
    llvm::detail::IEEEFloat::initFromF80LongDoubleAPInt(a1, a3);
  }

  else if (a2 == &llvm::semIEEEquad)
  {
    llvm::detail::IEEEFloat::initFromQuadrupleAPInt(a1, a3);
  }

  else if (a2 == &llvm::semPPCDoubleDoubleLegacy)
  {
    llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(a1, a3);
  }

  else if (a2 == &llvm::semFloat8E5M2)
  {
    llvm::detail::IEEEFloat::initFromFloat8E5M2APInt(a1, a3);
  }

  else if (a2 == &llvm::semFloat8E5M2FNUZ)
  {
    llvm::detail::IEEEFloat::initFromFloat8E5M2FNUZAPInt(a1, a3);
  }

  else if (a2 == &llvm::semFloat8E4M3)
  {
    llvm::detail::IEEEFloat::initFromFloat8E4M3APInt(a1, a3);
  }

  else if (a2 == &llvm::semFloat8E4M3FN)
  {
    llvm::detail::IEEEFloat::initFromFloat8E4M3FNAPInt(a1, a3);
  }

  else if (a2 == &llvm::semFloat8E4M3FNUZ)
  {
    llvm::detail::IEEEFloat::initFromFloat8E4M3FNUZAPInt(a1, a3);
  }

  else if (a2 == &llvm::semFloat8E4M3B11FNUZ)
  {
    llvm::detail::IEEEFloat::initFromFloat8E4M3B11FNUZAPInt(a1, a3);
  }

  else if (a2 == &llvm::semFloat8E3M4)
  {
    llvm::detail::IEEEFloat::initFromFloat8E3M4APInt(a1, a3);
  }

  else if (a2 == &llvm::semFloatTF32)
  {
    llvm::detail::IEEEFloat::initFromFloatTF32APInt(a1, a3);
  }

  else if (a2 == &llvm::semFloat6E3M2FN)
  {
    llvm::detail::IEEEFloat::initFromFloat6E3M2FNAPInt(a1, a3);
  }

  else if (a2 == &llvm::semFloat6E2M3FN)
  {
    llvm::detail::IEEEFloat::initFromFloat6E2M3FNAPInt(a1, a3);
  }

  else
  {
    llvm::detail::IEEEFloat::initFromFloat4E2M1FNAPInt(a1, a3);
  }
}

void *llvm::detail::IEEEFloat::makeLargest(llvm::detail::IEEEFloat *this, int a2)
{
  if (a2)
  {
    v3 = 10;
  }

  else
  {
    v3 = 2;
  }

  *(this + 20) = v3 | *(this + 20) & 0xF0;
  v4 = *this;
  *(this + 4) = **this;
  v5 = *(v4 + 8);
  v6 = (this + 8);
  if ((v5 - 64) <= 0xFFFFFF7F)
  {
    v6 = *v6;
  }

  v7 = v5 + 64;
  result = memset(v6, 255, 8 * (((v5 + 64) >> 6) - 1));
  v9 = *this;
  if ((v7 & 0xFFFFFFC0) - *(*this + 8) >= 0x40)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0xFFFFFFFFFFFFFFFFLL >> ((v7 & 0xC0) - *(*this + 8));
  }

  v6[(v7 >> 6) - 1] = v10;
  if (*(v9 + 16) == 1 && *(v9 + 20) == 1)
  {
    *v6 &= ~1uLL;
  }

  return result;
}

llvm::detail::IEEEFloat *llvm::detail::IEEEFloat::IEEEFloat(llvm::detail::IEEEFloat *this, float a2)
{
  v5 = 32;
  v4 = LODWORD(a2);
  llvm::detail::IEEEFloat::initFromFloatAPInt(this, &v4);
  return this;
}

llvm::detail::IEEEFloat *llvm::detail::IEEEFloat::IEEEFloat(llvm::detail::IEEEFloat *this, double a2)
{
  v5 = 64;
  v4 = *&a2;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(this, &v4);
  return this;
}

void llvm::detail::IEEEFloat::toString(uint64_t a1, uint64_t *a2, unsigned int a3, unsigned int a4, int a5)
{
  v138[32] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 20) & 7;
  if (v6 == 3)
  {
    if ((*(a1 + 20) & 8) != 0)
    {
      v12 = a2[1];
      if (v12 + 1 > a2[2])
      {
        v121 = a3;
        v122 = a4;
        v123 = a5;
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v12 + 1, 1);
        a3 = v121;
        a4 = v122;
        a5 = v123;
        v12 = a2[1];
      }

      *(*a2 + v12) = 45;
      ++a2[1];
    }

    v13 = a2[1];
    if (a4)
    {
      if (v13 + 1 > a2[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v13 + 1, 1);
        v13 = a2[1];
      }

      *(*a2 + v13) = 48;
      ++a2[1];
    }

    else
    {
      v37 = a2[2];
      if (!a5)
      {
        if (v37 < v13 + 3)
        {
          v45 = a3;
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v13 + 3, 1);
          a3 = v45;
          v13 = a2[1];
        }

        v46 = *a2 + v13;
        *(v46 + 2) = 48;
        *v46 = 11824;
        v7 = a2[1] + 3;
        a2[1] = v7;
        if (a3 >= 2)
        {
          v47 = a3 - 1;
          if (v7 + v47 > a2[2])
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v7 + v47, 1);
            v7 = a2[1];
          }

          memset((*a2 + v7), 48, v47);
          v7 = a2[1] + v47;
          a2[1] = v7;
        }

        if (a2[2] < (v7 + 4))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v7 + 4, 1);
          v7 = a2[1];
        }

        v27 = *a2;
        v28 = 808463205;
        goto LABEL_76;
      }

      if (v37 < v13 + 6)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v13 + 6, 1);
        v13 = a2[1];
      }

      v38 = *a2 + v13;
      *(v38 + 4) = 12331;
      *v38 = 1160785456;
      a2[1] += 6;
    }
  }

  else
  {
    if (v6 != 1)
    {
      if ((*(a1 + 20) & 7) == 0)
      {
        v7 = a2[1];
        v8 = a2[2];
        v9 = v7 + 4;
        if ((*(a1 + 20) & 8) == 0)
        {
          if (v8 < v7 + 4)
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v9, 1);
            v7 = a2[1];
          }

          *(*a2 + v7) = 1718503723;
          goto LABEL_77;
        }

        if (v8 < v7 + 4)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v9, 1);
          v7 = a2[1];
        }

        v27 = *a2;
        v28 = 1718503725;
LABEL_76:
        *(v27 + v7) = v28;
LABEL_77:
        a2[1] += 4;
        return;
      }

      v14 = *(*a1 + 8);
      v15 = (a1 + 8);
      v16 = a3;
      v17 = a4;
      v18 = a5;
      if (v14 - 64 <= 0xFFFFFF7F)
      {
        v15 = *v15;
      }

      v19 = *(a1 + 16);
      llvm::APInt::APInt(&v127, v14, v15, (v14 + 63) >> 6);
      v24 = *(a1 + 20);
      v25 = v128;
      v126 = v128;
      if (v128 > 0x40)
      {
        llvm::APInt::initSlowCase(&__p, &v127);
        v25 = v126;
        v26 = v16;
        if ((v24 & 8) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        __p = v127;
        v26 = v16;
        if ((v24 & 8) == 0)
        {
          goto LABEL_31;
        }
      }

      v29 = a2[1];
      if (v29 + 1 > a2[2])
      {
        v124 = v26;
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v29 + 1, 1);
        v26 = v124;
        v29 = a2[1];
      }

      *(*a2 + v29) = 45;
      ++a2[1];
LABEL_31:
      if (v26)
      {
        v30 = v26;
      }

      else
      {
        v30 = (59 * v25) / 196 + 2;
      }

      if (v126 > 0x40)
      {
        v35 = llvm::APInt::countTrailingZerosSlowCase(&__p);
        llvm::APInt::lshrSlowCase(&__p, v35);
        v36 = v19 - v14 + v35;
        v34 = v36 + 1;
        if (v36 == -1)
        {
          goto LABEL_86;
        }
      }

      else
      {
        v31 = __clz(__rbit64(__p));
        if (v126 >= v31)
        {
          v32 = v31;
        }

        else
        {
          v32 = v126;
        }

        if (v126 <= v31)
        {
          __p = 0;
          v39 = v19 - v14 + v32;
          v34 = v39 + 1;
          if (v39 == -1)
          {
            goto LABEL_86;
          }
        }

        else
        {
          __p = (__p >> v32);
          v33 = v19 - v14 + v32;
          v34 = v33 + 1;
          if (v33 == -1)
          {
            goto LABEL_86;
          }
        }
      }

      if (v34 < 1)
      {
        v42 = (-137 * v34 + 136) / 0x3Bu + v25;
        llvm::APInt::zext(&__p, v42, &__dst);
        if (v126 >= 0x41 && __p)
        {
          operator delete[](__p);
        }

        v43 = -v34;
        __p = __dst;
        v126 = v137;
        LODWORD(v137) = v42;
        if (v42 > 0x40)
        {
          llvm::APInt::initSlowCase(&__dst, 5, 0);
        }

        else
        {
          v44 = ((0xFFFFFFFFFFFFFFFFLL >> -v42) & 5);
          if (!v42)
          {
            v44 = 0;
          }

          __dst = v44;
        }

        while (1)
        {
          if (v43)
          {
            llvm::APInt::operator*=(&__p, &__dst);
          }

          if (v43 < 2)
          {
            break;
          }

          v43 >>= 1;
          llvm::APInt::operator*=(&__dst, &__dst);
        }

        if (v137 >= 0x41 && __dst)
        {
          operator delete[](__dst);
        }
      }

      else
      {
        llvm::APInt::zext(&__p, v34 + v25, &__dst);
        if (v126 >= 0x41 && __p)
        {
          operator delete[](__p);
        }

        __p = __dst;
        v126 = v137;
        if (v137 > 0x40)
        {
          llvm::APInt::shlSlowCase(&__p, v34);
          v34 = 0;
        }

        else
        {
          v40 = __dst << v34;
          if (v137 == v34)
          {
            v40 = 0;
          }

          if (v137)
          {
            v41 = 0xFFFFFFFFFFFFFFFFLL >> -v137;
          }

          else
          {
            v41 = 0;
          }

          __p = (v41 & v40);
          v34 = 0;
        }
      }

LABEL_86:
      v48 = v126;
      if (v126 > 0x40)
      {
        v49 = llvm::APInt::countLeadingZerosSlowCase(&__p);
      }

      else
      {
        v49 = v126 + __clz(__p) - 64;
      }

      v50 = (196 * v30 + 58) / 0x3B;
      if (v48 - v49 <= v50)
      {
        goto LABEL_118;
      }

      v51 = 59 * (v48 - v49 - v50);
      if (v51 < 0xC4)
      {
        goto LABEL_118;
      }

      v52 = v51 / 0xC4;
      v34 += v51 / 0xC4;
      LODWORD(v137) = v48;
      if (v48 > 0x40)
      {
        llvm::APInt::initSlowCase(&__dst, 1, 0);
        v48 = v126;
        LODWORD(v130) = v126;
        if (v126 > 0x40)
        {
          llvm::APInt::initSlowCase(&v129, 10, 0);
          while (1)
          {
LABEL_99:
            if (v52)
            {
              llvm::APInt::operator*=(&__dst, &v129);
            }

            if (v52 < 2)
            {
              break;
            }

            v52 >>= 1;
            llvm::APInt::operator*=(&v129, &v129);
          }

          llvm::APInt::udiv(&__p, &__dst, &v134);
          if (v126 >= 0x41 && __p)
          {
            operator delete[](__p);
          }

          __p = v134;
          v54 = v135;
          v126 = v135;
          if (v135 > 0x40)
          {
            v55 = llvm::APInt::countLeadingZerosSlowCase(&__p);
          }

          else
          {
            v55 = v135 + __clz(v134) - 64;
          }

          llvm::APInt::trunc(&__p, v54 - v55, &v134);
          if (v126 >= 0x41 && __p)
          {
            operator delete[](__p);
          }

          __p = v134;
          v126 = v135;
          if (v130 >= 0x41 && v129)
          {
            operator delete[](v129);
          }

          if (v137 >= 0x41 && __dst)
          {
            operator delete[](__dst);
          }

          v48 = v126;
LABEL_118:
          __dst = v138;
          v137 = xmmword_1E0971960;
          if (v48 > 3)
          {
            v135 = v48;
            if (v48 > 0x40)
            {
              llvm::APInt::initSlowCase(&v134, 10, 0);
              v133 = v48;
              llvm::APInt::initSlowCase(&v132, 0, 0);
              v56 = v126;
              if (v126 < 0x41)
              {
                goto LABEL_132;
              }

LABEL_129:
              if (v56 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40 || *__p)
              {
                while (1)
                {
                  llvm::APInt::udivrem(&__p, &v134, &__p, &v132, v21, v22, v23);
                  v57 = (v133 >= 0x41 ? v132 : &v132);
                  v58 = *v57;
                  if (v58)
                  {
                    break;
                  }

                  ++v34;
                  v56 = v126;
                  if (v126 >= 0x41)
                  {
                    goto LABEL_129;
                  }

LABEL_132:
                  if (!__p)
                  {
                    goto LABEL_151;
                  }
                }

                v59 = v58 + 48;
                v60 = v137;
                if ((v137 + 1) > *(&v137 + 1))
                {
                  llvm::SmallVectorBase<unsigned long long>::grow_pod(&__dst, v138, v137 + 1, 1);
                  v60 = v137;
                }

                *(__dst + v60) = v59;
                *&v137 = v137 + 1;
                v61 = v126;
                if (v126 < 0x41)
                {
                  goto LABEL_143;
                }

                while (v61 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40 || *__p)
                {
                  while (1)
                  {
                    llvm::APInt::udivrem(&__p, &v134, &__p, &v132, v21, v22, v23);
                    if (v133 >= 0x41)
                    {
                      v62 = v132;
                    }

                    else
                    {
                      v62 = &v132;
                    }

                    v63 = *v62;
                    v64 = v137;
                    if ((v137 + 1) > *(&v137 + 1))
                    {
                      llvm::SmallVectorBase<unsigned long long>::grow_pod(&__dst, v138, v137 + 1, 1);
                      v64 = v137;
                    }

                    *(__dst + v64) = v63 + 48;
                    *&v137 = v137 + 1;
                    v61 = v126;
                    if (v126 >= 0x41)
                    {
                      break;
                    }

LABEL_143:
                    if (!__p)
                    {
                      goto LABEL_151;
                    }
                  }
                }
              }

LABEL_151:
              v65 = v137;
              v66 = v137 - v30;
              if (v137 <= v30)
              {
                v68 = v17;
                if (!v17)
                {
                  goto LABEL_187;
                }

                goto LABEL_176;
              }

              v67 = __dst;
              v68 = v17;
              if (*(__dst + (v66 - 1)) >= 53)
              {
                if (v30)
                {
                  v72 = v30;
                  while (1)
                  {
                    v73 = *(__dst + v66);
                    if (v73 != 57)
                    {
                      break;
                    }

                    LODWORD(v66) = v66 + 1;
                    if (!--v72)
                    {
                      goto LABEL_170;
                    }
                  }

                  *(__dst + v66) = v73 + 1;
                }

                if (v66 == v65)
                {
LABEL_170:
                  v74 = 0;
                  *&v137 = 0;
                  if (!*(&v137 + 1))
                  {
                    llvm::SmallVectorBase<unsigned long long>::grow_pod(&__dst, v138, 1uLL, 1);
                    v68 = v17;
                    v74 = v137;
                  }

                  *(__dst + v74) = 49;
                  v75 = v65;
                  v65 = v137 + 1;
                  v34 += v75;
                  *&v137 = v137 + 1;
                  if (!v68)
                  {
                    goto LABEL_187;
                  }

                  goto LABEL_176;
                }

                v70 = v66;
                v67 = __dst;
                v71 = v137 - v66;
                if (v137 == v66)
                {
                  goto LABEL_159;
                }
              }

              else
              {
                if (v66 < v137)
                {
                  v69 = v30;
                  while (*(__dst + v66) == 48)
                  {
                    ++v66;
                    if (!--v69)
                    {
                      LODWORD(v66) = v137;
                      break;
                    }
                  }
                }

                v70 = v66;
                v71 = v137 - v66;
                if (v137 == v66)
                {
LABEL_159:
                  v65 = v71;
                  v34 += v66;
                  *&v137 = v71;
                  if (!v68)
                  {
                    goto LABEL_187;
                  }

                  goto LABEL_176;
                }
              }

              v76 = v68;
              memmove(v67, &v67[v70], v71);
              v68 = v76;
              v65 = v67 + v71 - __dst;
              v34 += v66;
              *&v137 = &v67[v71] - __dst;
              if (!v68)
              {
                goto LABEL_187;
              }

LABEL_176:
              if (v34 < 0)
              {
                v81 = v34 + v65;
                if (((v81 - 1) & 0x80000000) == 0 || 1 - v81 <= v68)
                {
                  if (v81 < 1)
                  {
                    v114 = a2[1];
                    if (v114 + 1 > a2[2])
                    {
                      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v114 + 1, 1);
                      v114 = a2[1];
                    }

                    *(*a2 + v114) = 48;
                    v115 = a2[1];
                    v116 = a2[2];
                    v117 = v115 + 1;
                    a2[1] = v115 + 1;
                    if (v115 + 2 > v116)
                    {
                      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v115 + 2, 1);
                      v117 = a2[1];
                    }

                    *(*a2 + v117) = 46;
                    v113 = a2[1] + 1;
                    a2[1] = v113;
                    if (v81)
                    {
                      do
                      {
                        if (v113 + 1 > a2[2])
                        {
                          llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v113 + 1, 1);
                          v113 = a2[1];
                        }

                        *(*a2 + v113) = 48;
                        v113 = a2[1] + 1;
                        a2[1] = v113;
                        v118 = __CFADD__(v81, 1);
                        LODWORD(v81) = v81 + 1;
                      }

                      while (!v118);
                      LODWORD(v81) = 0;
                    }
                  }

                  else
                  {
                    v108 = a2[1];
                    v109 = v65 - 1;
                    v110 = v81;
                    do
                    {
                      v111 = *(__dst + v109);
                      if (v108 + 1 > a2[2])
                      {
                        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v108 + 1, 1);
                        v108 = a2[1];
                      }

                      *(*a2 + v108) = v111;
                      v112 = a2[1];
                      v108 = v112 + 1;
                      a2[1] = v112 + 1;
                      --v109;
                      --v110;
                    }

                    while (v110);
                    if (v112 + 2 > a2[2])
                    {
                      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v112 + 2, 1);
                      v108 = a2[1];
                    }

                    *(*a2 + v108) = 46;
                    v113 = a2[1] + 1;
                    a2[1] = v113;
                  }

                  if (v81 != v65)
                  {
                    v119 = ~v81 + v65;
                    do
                    {
                      v120 = *(__dst + v119);
                      if (v113 + 1 > a2[2])
                      {
                        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v113 + 1, 1);
                        v113 = a2[1];
                      }

                      *(*a2 + v113) = v120;
                      v113 = a2[1] + 1;
                      a2[1] = v113;
                      --v119;
                    }

                    while (v119 != -1);
                  }

                  goto LABEL_231;
                }
              }

              else if (v34 <= v68 && v34 + v65 <= v30)
              {
                if (v65)
                {
                  v77 = v65;
                  v78 = a2[1];
                  v79 = v65 - 1;
                  do
                  {
                    v80 = *(__dst + v79);
                    if (v78 + 1 > a2[2])
                    {
                      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v78 + 1, 1);
                      v78 = a2[1];
                    }

                    *(*a2 + v78) = v80;
                    v78 = a2[1] + 1;
                    a2[1] = v78;
                    --v79;
                    --v77;
                  }

                  while (v77);
                }

                if (v34)
                {
                  v105 = a2[1];
                  do
                  {
                    if (v105 + 1 > a2[2])
                    {
                      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v105 + 1, 1);
                      v105 = a2[1];
                    }

                    *(*a2 + v105) = 48;
                    v105 = a2[1] + 1;
                    a2[1] = v105;
                    --v34;
                  }

                  while (v34);
                }

                goto LABEL_231;
              }

LABEL_187:
              v82 = v65 - 1;
              v83 = *(__dst + v65 - 1);
              v84 = a2[1];
              if (v84 + 1 > a2[2])
              {
                llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v84 + 1, 1);
                v84 = a2[1];
              }

              *(*a2 + v84) = v83;
              v85 = a2[1];
              v86 = a2[2];
              v87 = v85 + 1;
              a2[1] = v85 + 1;
              if (v85 + 2 > v86)
              {
                llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v85 + 2, 1);
                v87 = a2[1];
              }

              *(*a2 + v87) = 46;
              v88 = a2[1];
              v89 = v88 + 1;
              a2[1] = v88 + 1;
              if (v65 == 1 && (v18 & 1) != 0)
              {
                if (v88 + 2 > a2[2])
                {
                  llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v88 + 2, 1);
                  v89 = a2[1];
                }

                *(*a2 + v89) = 48;
                v89 = a2[1] + 1;
                a2[1] = v89;
              }

              else if (v65 != 1)
              {
                v106 = v65 - 2;
                do
                {
                  v107 = *(__dst + v106);
                  if (v89 + 1 > a2[2])
                  {
                    llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v89 + 1, 1);
                    v89 = a2[1];
                  }

                  *(*a2 + v89) = v107;
                  v89 = a2[1] + 1;
                  a2[1] = v89;
                  --v106;
                }

                while (v106 != -1);
              }

              if (v18)
              {
                v90 = 69;
LABEL_205:
                v92 = v82 + v34;
                if (v89 + 1 > a2[2])
                {
                  llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v89 + 1, 1);
                  v89 = a2[1];
                }

                *(*a2 + v89) = v90;
                v93 = a2[1];
                v94 = a2[2];
                v95 = v93 + 1;
                a2[1] = v93 + 1;
                if (v92 < 0)
                {
                  v96 = 45;
                }

                else
                {
                  v96 = 43;
                }

                if (v93 + 2 > v94)
                {
                  llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v93 + 2, 1);
                  v95 = a2[1];
                }

                v97 = 0;
                *(*a2 + v95) = v96;
                ++a2[1];
                if (v92 >= 0)
                {
                  v98 = v92;
                }

                else
                {
                  v98 = -v92;
                }

                v129 = &v131;
                v130 = xmmword_1E099CEF0;
                do
                {
                  if (v97 + 1 > *(&v130 + 1))
                  {
                    llvm::SmallVectorBase<unsigned long long>::grow_pod(&v129, &v131, v97 + 1, 1);
                    v97 = v130;
                  }

                  *(v129 + v97) = (v98 % 0xA) | 0x30;
                  v99 = v130;
                  v97 = v130 + 1;
                  *&v130 = v130 + 1;
                  v100 = v98 > 9;
                  v98 /= 0xAu;
                }

                while (v100);
                if ((v18 & 1) == 0 && v97 <= 1)
                {
                  if ((v99 + 2) > *(&v130 + 1))
                  {
                    llvm::SmallVectorBase<unsigned long long>::grow_pod(&v129, &v131, v99 + 2, 1);
                    v97 = v130;
                  }

                  *(v129 + v97) = 48;
                  LODWORD(v97) = v130 + 1;
                  *&v130 = v130 + 1;
                }

                v101 = v97;
                if (v97)
                {
                  v102 = a2[1];
                  v103 = v97 - 1;
                  do
                  {
                    v104 = *(v129 + v103);
                    if (v102 + 1 > a2[2])
                    {
                      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v102 + 1, 1);
                      v102 = a2[1];
                    }

                    *(*a2 + v102) = v104;
                    v102 = a2[1] + 1;
                    a2[1] = v102;
                    --v103;
                    --v101;
                  }

                  while (v101);
                }

                if (v129 != &v131)
                {
                  free(v129);
                }

LABEL_231:
                if (v133 >= 0x41 && v132)
                {
                  operator delete[](v132);
                }

                if (v135 >= 0x41 && v134)
                {
                  operator delete[](v134);
                }

                if (__dst != v138)
                {
                  free(__dst);
                }

                if (v126 >= 0x41 && __p)
                {
                  operator delete[](__p);
                }

                if (v128 >= 0x41 && v127)
                {
                  operator delete[](v127);
                }

                return;
              }

              if (v30 <= v82)
              {
LABEL_204:
                v90 = 101;
                goto LABEL_205;
              }

              v91 = v30 - v65 + 1;
              if (v89 + v91 > a2[2])
              {
                llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v89 + v91, 1);
                v89 = a2[1];
                if (v30 - v65 == -1)
                {
                  goto LABEL_203;
                }
              }

              else if (v30 - v65 == -1)
              {
LABEL_203:
                v89 += v91;
                a2[1] = v89;
                goto LABEL_204;
              }

              memset((*a2 + v89), 48, v30 - v65 + 1);
              v89 = a2[1];
              goto LABEL_203;
            }
          }

          else
          {
            v48 = 4;
            llvm::APInt::zext(&__p, 4u, &v129);
            if (v126 >= 0x41 && __p)
            {
              operator delete[](__p);
            }

            __p = v129;
            v126 = v130;
            v135 = 4;
          }

          v134 = ((0xFFFFFFFFFFFFFFFFLL >> -v48) & 0xA);
          v133 = v48;
          v132 = 0;
          v56 = v126;
          if (v126 < 0x41)
          {
            goto LABEL_132;
          }

          goto LABEL_129;
        }
      }

      else
      {
        __dst = (v48 != 0);
        LODWORD(v130) = v48;
      }

      v53 = ((0xFFFFFFFFFFFFFFFFLL >> -v48) & 0xA);
      if (!v48)
      {
        v53 = 0;
      }

      v129 = v53;
      goto LABEL_99;
    }

    v10 = a2[1];
    if (a2[2] < (v10 + 3))
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v10 + 3, 1);
      v10 = a2[1];
    }

    v11 = *a2 + v10;
    *(v11 + 2) = 78;
    *v11 = 24910;
    a2[1] += 3;
  }
}

void *llvm::detail::DoubleAPFloat::DoubleAPFloat(void *a1, uint64_t a2)
{
  *a1 = a2;
  v3 = operator new[](0x50uLL);
  *v3 = xmmword_1E099CF00;
  v3[3] = &llvm::semIEEEdouble;
  *(v3 + 44) = 3;
  *(v3 + 10) = -1023;
  llvm::APInt::tcSet((v3 + 4), 0, 1u);
  v3[7] = &llvm::semIEEEdouble;
  *(v3 + 76) = *(v3 + 76) & 0xF0 | 3;
  *(v3 + 18) = -1023;
  llvm::APInt::tcSet((v3 + 8), 0, 1u);
  a1[1] = v3 + 2;
  return a1;
}

void *llvm::detail::DoubleAPFloat::DoubleAPFloat(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  v5 = operator new[](0x50uLL);
  *v5 = xmmword_1E099CF00;
  v5[3] = &llvm::semIEEEdouble;
  *(v5 + 44) = 2;
  v6 = v5 + 4;
  llvm::APInt::tcSet((v5 + 4), 0, 1u);
  *(v5 + 10) = 52;
  if ((*(v5[3] + 8) - 64) <= 0xFFFFFF7F)
  {
    v6 = *v6;
  }

  *v6 = a3;
  llvm::detail::IEEEFloat::normalize((v5 + 3), 1, 0);
  v5[7] = &llvm::semIEEEdouble;
  *(v5 + 76) = *(v5 + 76) & 0xF0 | 3;
  *(v5 + 18) = -1023;
  llvm::APInt::tcSet((v5 + 8), 0, 1u);
  a1[1] = v5 + 2;
  return a1;
}

{
  *a1 = a2;
  v5 = operator new[](0x50uLL);
  *v5 = xmmword_1E099CF00;
  v6 = (v5 + 56);
  v7 = v5 + 1;
  if (*(a3 + 8) >= 0x41u)
  {
    v8 = *a3;
  }

  else
  {
    v8 = a3;
  }

  v9 = *v8;
  v16 = 64;
  v15 = v9;
  llvm::detail::IEEEFloat::initFromDoubleAPInt((v5 + 24), &v15);
  if (*(a3 + 8) >= 0x41u)
  {
    v10 = *a3;
  }

  else
  {
    v10 = a3;
  }

  v11 = v10[1];
  v14 = 64;
  v13 = v11;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(v6, &v13);
  a1[1] = v7;
  return a1;
}

void *llvm::detail::DoubleAPFloat::DoubleAPFloat(void *this, const llvm::detail::DoubleAPFloat *a2)
{
  v2 = *(a2 + 1);
  *this = *a2;
  if (v2)
  {
    v4 = this;
    v5 = operator new[](0x50uLL);
    *v5 = xmmword_1E099CF00;
    v6 = (v5 + 56);
    v7 = v5 + 1;
    llvm::APFloat::Storage::Storage((v5 + 24), (v2 + 8));
    llvm::APFloat::Storage::Storage(v6, (*(a2 + 1) + 40));
    this = v4;
    v4[1] = v7;
  }

  else
  {
    this[1] = 0;
  }

  return this;
}

__n128 llvm::detail::DoubleAPFloat::DoubleAPFloat(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a2->n128_u64[1] = 0;
  *a1 = result;
  a2->n128_u64[0] = &llvm::semBogus;
  return result;
}

llvm::detail::DoubleAPFloat *llvm::detail::DoubleAPFloat::operator=(llvm::detail::DoubleAPFloat *a1, llvm::APFloat::Storage *a2)
{
  v2 = a2;
  if (*a1 != *a2 || (v10 = *(a2 + 1)) == 0)
  {
    v4 = 0;
    v5 = a1;
    if (a1 != a2)
    {
LABEL_3:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      v6 = *(v2 + 1);
      *v5 = *v2;
      if (v6)
      {
        v7 = operator new[](0x50uLL);
        *v7 = xmmword_1E099CF00;
        v8 = (v7 + 56);
        v9 = v7 + 1;
        llvm::APFloat::Storage::Storage((v7 + 24), (v6 + 8));
        llvm::APFloat::Storage::Storage(v8, (*(v2 + 1) + 40));
      }

      else
      {
        v9 = 0;
      }

      *(v5 + 1) = v9;
    }

    goto LABEL_11;
  }

  v11 = *(a1 + 1);
  v12 = (v11 + 8);
  v13 = *(v11 + 8);
  v14 = (v10 + 8);
  v15 = *(v10 + 8);
  if (v13 != &llvm::semPPCDoubleDouble)
  {
    if (v15 != &llvm::semPPCDoubleDouble)
    {
      llvm::detail::IEEEFloat::operator=(v12, v14);
      goto LABEL_23;
    }

    if (v11 == v10)
    {
      goto LABEL_23;
    }

    if ((*(v13 + 8) - 64) <= 0xFFFFFF7F)
    {
      v18 = *(v11 + 16);
      if (v18)
      {
        v19 = v12;
        v20 = (v10 + 8);
        operator delete[](v18);
        v14 = v20;
        v12 = v19;
      }
    }

LABEL_21:
    llvm::APFloat::Storage::Storage(v12, v14);
    goto LABEL_23;
  }

  if (v15 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::operator=(v12, v14);
    goto LABEL_23;
  }

  if (v11 != v10)
  {
    v17 = (v10 + 8);
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v12);
    v14 = v17;
    goto LABEL_21;
  }

LABEL_23:
  v21 = *(v2 + 1);
  v22 = *(a1 + 1);
  v23 = (v22 + 40);
  v24 = *(v22 + 40);
  v2 = (v21 + 40);
  v25 = *(v21 + 40);
  v26 = v25 == &llvm::semPPCDoubleDouble;
  v4 = v24 == &llvm::semPPCDoubleDouble;
  if (v24 != &llvm::semPPCDoubleDouble)
  {
    v5 = a1;
    if (v25 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_53;
    }

LABEL_25:
    if (v22 == v21)
    {
      goto LABEL_11;
    }

    if ((v24[2] - 64) <= 0xFFFFFF7F)
    {
      v27 = *(v22 + 48);
      if (v27)
      {
        v28 = v23;
        operator delete[](v27);
        v23 = v28;
      }
    }

LABEL_33:
    llvm::APFloat::Storage::Storage(v23, v2);
    goto LABEL_11;
  }

  if (v25 != &llvm::semPPCDoubleDouble)
  {
    v5 = a1;
LABEL_31:
    if (v22 == v21)
    {
      v4 = v26;
      goto LABEL_11;
    }

    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v23);
    v4 = v26;
    goto LABEL_33;
  }

  while (1)
  {
    v5 = v23;
    v39 = *(v2 + 1);
    if (!v39)
    {
      v4 = 1;
      if (v23 != v2)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    v29 = *(v23 + 1);
    v30 = (v29 + 8);
    v31 = *(v29 + 8);
    v32 = (v39 + 8);
    v33 = *(v39 + 8);
    if (v31 == &llvm::semPPCDoubleDouble)
    {
      if (v33 != &llvm::semPPCDoubleDouble)
      {
        if (v29 == v39)
        {
          goto LABEL_46;
        }

        v34 = (v39 + 8);
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v30);
        v32 = v34;
        goto LABEL_44;
      }

      llvm::detail::DoubleAPFloat::operator=(v30, v32);
    }

    else
    {
      if (v33 != &llvm::semPPCDoubleDouble)
      {
        llvm::detail::IEEEFloat::operator=(v30, v32);
        goto LABEL_46;
      }

      if (v29 != v39)
      {
        if ((*(v31 + 8) - 64) <= 0xFFFFFF7F)
        {
          v35 = *(v29 + 16);
          if (v35)
          {
            v36 = v30;
            v37 = (v39 + 8);
            operator delete[](v35);
            v32 = v37;
            v30 = v36;
          }
        }

LABEL_44:
        llvm::APFloat::Storage::Storage(v30, v32);
      }
    }

LABEL_46:
    v21 = *(v2 + 1);
    v22 = *(v5 + 1);
    v23 = (v22 + 40);
    v24 = *(v22 + 40);
    v2 = (v21 + 40);
    v38 = *(v21 + 40);
    if (v24 != &llvm::semPPCDoubleDouble)
    {
      break;
    }

    if (v38 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_31;
    }
  }

  if (v38 == &llvm::semPPCDoubleDouble)
  {
    goto LABEL_25;
  }

LABEL_53:
  llvm::detail::IEEEFloat::operator=(v23, v2);
LABEL_11:
  if (v4)
  {
    return a1;
  }

  else
  {
    return v5;
  }
}

uint64_t llvm::APFloat::operator=(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  v9 = *(a2 + 8);
  v7 = (a2 + 8);
  v8 = v9;
  if (v5 != &llvm::semPPCDoubleDouble)
  {
    if (v8 != &llvm::semPPCDoubleDouble)
    {
      llvm::detail::IEEEFloat::operator=(v4, v7);
      return a1;
    }

    if (a1 == a2)
    {
      return a1;
    }

    if ((*(v5 + 8) - 64) <= 0xFFFFFF7F && *(a1 + 16))
    {
      v12 = v4;
      v13 = v7;
      operator delete[](*(a1 + 16));
      llvm::APFloat::Storage::Storage(v12, v13);
      return a1;
    }

LABEL_8:
    llvm::APFloat::Storage::Storage(v4, v7);
    return a1;
  }

  if (v8 != &llvm::semPPCDoubleDouble)
  {
    if (a1 == a2)
    {
      return a1;
    }

    v11 = v7;
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v4);
    v7 = v11;
    goto LABEL_8;
  }

  llvm::detail::DoubleAPFloat::operator=(v4, v7);
  return a1;
}

uint64_t llvm::detail::DoubleAPFloat::addImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, int a6)
{
  v183 = *MEMORY[0x1E69E9840];
  v10 = llvm::APFloat::Storage::Storage(&v181, (a2 + 8));
  if (v181.n128_u64[0] == &llvm::semPPCDoubleDouble)
  {
    v11 = llvm::detail::DoubleAPFloat::addWithSpecial(v10, &v181, a4 + 8, &v181);
    goto LABEL_20;
  }

  v11 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v181, (a4 + 8), 0);
  if (v11 == 2)
  {
    v12 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v181, (a4 + 8), 0);
    v11 = llvm::detail::IEEEFloat::normalize(&v181, a6, v12);
  }

  v13 = v182;
  if ((v182 & 7) != 3)
  {
LABEL_20:
    if (v181.n128_u64[0] == &llvm::semPPCDoubleDouble)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  v14 = *(a4 + 28);
  if ((v14 & 7) == 3 && ((v14 ^ v182) & 8) == 0)
  {
    v15 = v181.n128_u64[0];
    if (*(v181.n128_u64[0] + 20) != 2)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

  v13 = v182 & 0xF3 | (8 * (a6 == 3));
  v182 = v13;
  v15 = v181.n128_u64[0];
  if (*(v181.n128_u64[0] + 20) == 2)
  {
LABEL_37:
    v182 = v13 & 0xF7;
    if (v181.n128_u64[0] == &llvm::semPPCDoubleDouble)
    {
      goto LABEL_21;
    }

LABEL_9:
    v16 = v182;
    if ((v182 & 6) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_8:
  if (v15 != &llvm::semPPCDoubleDouble)
  {
    goto LABEL_9;
  }

LABEL_21:
  v16 = *(v181.n128_u64[1] + 28);
  if ((v16 & 6) != 0)
  {
LABEL_10:
    llvm::APFloat::Storage::Storage(&v177, (a2 + 8));
    if (v177 == &llvm::semPPCDoubleDouble)
    {
      v31 = llvm::detail::DoubleAPFloat::changeSign(&v177);
      v171 = llvm::detail::DoubleAPFloat::addWithSpecial(v31, &v177, &v181, &v177);
      llvm::detail::DoubleAPFloat::changeSign(&v177);
    }

    else
    {
      v17 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v177, &v181, 1);
      if (v17 == 2)
      {
        v18 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v177, &v181, 1);
        v17 = llvm::detail::IEEEFloat::normalize(&v177, a6, v18);
      }

      v19 = v179;
      v171 = v17;
      if ((v179 & 7) == 3)
      {
        if ((v182 & 7) != 3 || ((v182 ^ v179) & 8) == 0)
        {
          v19 = v179 & 0xF3 | (8 * (a6 == 3));
          v179 = v19;
        }

        if (*(v177 + 20) == 2)
        {
          v179 = v19 & 0xF7;
        }
      }
    }

    v32 = llvm::APFloat::Storage::Storage(&v174, &v177);
    if (v174 == &llvm::semPPCDoubleDouble)
    {
      v33 = llvm::detail::DoubleAPFloat::addWithSpecial(v32, &v174, a4 + 8, &v174);
      v34 = v33;
      if (v177 != &llvm::semPPCDoubleDouble)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v33 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v174, (a4 + 8), 0);
      v34 = v33;
      if (v33 == 2)
      {
        v35 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v174, (a4 + 8), 0);
        v33 = llvm::detail::IEEEFloat::normalize(&v174, a6, v35);
        v34 = v33;
      }

      v36 = v176;
      if ((v176 & 7) == 3)
      {
        v37 = *(a4 + 28);
        if ((v37 & 7) != 3 || ((v37 ^ v176) & 8) != 0)
        {
          v36 = v176 & 0xF3 | (8 * (a6 == 3));
          v176 = v36;
        }

        if (v174[5] == 2)
        {
          v176 = v36 & 0xF7;
        }
      }

      if (v177 != &llvm::semPPCDoubleDouble)
      {
LABEL_50:
        v38 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v177, &v181, 0);
        if (v38 == 2)
        {
          v39 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v177, &v181, 0);
          v38 = llvm::detail::IEEEFloat::normalize(&v177, a6, v39);
        }

        v40 = v179;
        if ((v179 & 7) == 3)
        {
          if ((v182 & 7) != 3 || ((v182 ^ v179) & 8) != 0)
          {
            v40 = v179 & 0xF3 | (8 * (a6 == 3));
            v179 = v40;
            v41 = v177;
            if (*(v177 + 20) != 2)
            {
LABEL_56:
              if (v41 != &llvm::semPPCDoubleDouble)
              {
                goto LABEL_57;
              }

LABEL_93:
              v64 = llvm::detail::DoubleAPFloat::changeSign(&v177);
              v43 = llvm::detail::DoubleAPFloat::addWithSpecial(v64, &v177, a2 + 8, &v177);
              v42 = llvm::detail::DoubleAPFloat::changeSign(&v177);
              goto LABEL_94;
            }
          }

          else
          {
            v41 = v177;
            if (*(v177 + 20) != 2)
            {
              goto LABEL_56;
            }
          }

          v179 = v40 & 0xF7;
          if (v177 == &llvm::semPPCDoubleDouble)
          {
            goto LABEL_93;
          }

LABEL_57:
          v42 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v177, (a2 + 8), 1);
          v43 = v42;
          if (v42 == 2)
          {
            v44 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v177, (a2 + 8), 1);
            v42 = llvm::detail::IEEEFloat::normalize(&v177, a6, v44);
            v43 = v42;
          }

          v45 = v179;
          if ((v179 & 7) == 3)
          {
            v46 = *(a2 + 28);
            if ((v46 & 7) == 3 && ((v46 ^ v179) & 8) != 0)
            {
              v47 = v177;
              if (*(v177 + 20) != 2)
              {
                goto LABEL_63;
              }
            }

            else
            {
              v45 = v179 & 0xF3 | (8 * (a6 == 3));
              v179 = v45;
              v47 = v177;
              if (*(v177 + 20) != 2)
              {
LABEL_63:
                if (v47 != &llvm::semPPCDoubleDouble)
                {
LABEL_64:
                  if (*(v47 + 20) != 2 || (v179 & 5 | 2) != 3)
                  {
                    v179 ^= 8u;
                  }

                  if (v174 != &llvm::semPPCDoubleDouble)
                  {
LABEL_68:
                    v48 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v174, &v177, 0);
                    v49 = v48;
                    if (v48 == 2)
                    {
                      v50 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v174, &v177, 0);
                      v48 = llvm::detail::IEEEFloat::normalize(&v174, a6, v50);
                      v49 = v48;
                    }

                    v51 = v176;
                    if ((v176 & 7) == 3)
                    {
                      if ((v179 & 7) != 3 || ((v179 ^ v176) & 8) != 0)
                      {
                        v51 = v176 & 0xF3 | (8 * (a6 == 3));
                        v176 = v51;
                        v52 = v174;
                        if (v174[5] != 2)
                        {
LABEL_74:
                          if (v52 != &llvm::semPPCDoubleDouble)
                          {
                            goto LABEL_75;
                          }

LABEL_98:
                          v53 = llvm::detail::DoubleAPFloat::addWithSpecial(v48, &v174, a3 + 8, &v174);
                          v54 = v53;
                          goto LABEL_99;
                        }
                      }

                      else
                      {
                        v52 = v174;
                        if (v174[5] != 2)
                        {
                          goto LABEL_74;
                        }
                      }

                      v176 = v51 & 0xF7;
                      if (v174 == &llvm::semPPCDoubleDouble)
                      {
                        goto LABEL_98;
                      }

LABEL_75:
                      v53 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v174, (a3 + 8), 0);
                      v54 = v53;
                      if (v53 == 2)
                      {
                        v55 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v174, (a3 + 8), 0);
                        v53 = llvm::detail::IEEEFloat::normalize(&v174, a6, v55);
                        v54 = v53;
                      }

                      v56 = v176;
                      if ((v176 & 7) == 3)
                      {
                        v57 = *(a3 + 28);
                        if ((v57 & 7) != 3 || ((v57 ^ v176) & 8) != 0)
                        {
                          v56 = v176 & 0xF3 | (8 * (a6 == 3));
                          v176 = v56;
                          v58 = v174;
                          if (v174[5] != 2)
                          {
LABEL_81:
                            if (v58 != &llvm::semPPCDoubleDouble)
                            {
                              goto LABEL_82;
                            }

LABEL_100:
                            v59 = llvm::detail::DoubleAPFloat::addWithSpecial(v53, &v174, a5 + 8, &v174);
                            goto LABEL_101;
                          }
                        }

                        else
                        {
                          v58 = v174;
                          if (v174[5] != 2)
                          {
                            goto LABEL_81;
                          }
                        }

                        v176 = v56 & 0xF7;
                        if (v174 == &llvm::semPPCDoubleDouble)
                        {
                          goto LABEL_100;
                        }

LABEL_82:
                        v59 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v174, (a5 + 8), 0);
                        if (v59 == 2)
                        {
                          v60 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v174, (a5 + 8), 0);
                          v59 = llvm::detail::IEEEFloat::normalize(&v174, a6, v60);
                        }

                        v61 = v176;
                        if ((v176 & 7) == 3)
                        {
                          v62 = a5[28];
                          if ((v62 & 7) != 3 || ((v62 ^ v176) & 8) != 0)
                          {
                            v61 = v176 & 0xF3 | (8 * (a6 == 3));
                            v176 = v61;
                          }

                          v63 = v174;
                          if (v174[5] != 2)
                          {
LABEL_102:
                            v65 = v171 | v34 | v38 | v43 | v49 | v54 | v59 | v11;
                            if (v63 == &llvm::semPPCDoubleDouble)
                            {
                              v66 = *(__p + 28);
                              v67 = a1;
                              if ((v66 & 7) != 3)
                              {
                                goto LABEL_109;
                              }
                            }

                            else
                            {
                              v66 = v176;
                              v67 = a1;
                              if ((v176 & 7) != 3)
                              {
                                goto LABEL_109;
                              }
                            }

                            if ((v66 & 8) == 0)
                            {
                              llvm::APFloat::Storage::operator=((*(v67 + 8) + 8), &v181);
                              llvm::APFloat::makeZero((*(v67 + 8) + 32), 0);
                              v68 = 0;
                              v11 = 0;
                              v69 = v174;
                              if (v174 == &llvm::semPPCDoubleDouble)
                              {
                                goto LABEL_178;
                              }

                              goto LABEL_159;
                            }

LABEL_109:
                            v70 = *(v67 + 8);
                            v71 = (v70 + 8);
                            v72 = *(v70 + 8);
                            if (v72 == &llvm::semPPCDoubleDouble)
                            {
                              if (v181.n128_u64[0] == &llvm::semPPCDoubleDouble)
                              {
                                LODWORD(v71) = llvm::detail::DoubleAPFloat::operator=(v71, &v181);
                                v73 = *(v67 + 8);
                                v74 = (v73 + 8);
                                if (*(v73 + 8) == &llvm::semPPCDoubleDouble)
                                {
                                  goto LABEL_146;
                                }

                                goto LABEL_134;
                              }

                              if (v70 != &v180)
                              {
                                llvm::detail::DoubleAPFloat::~DoubleAPFloat(v71);
LABEL_132:
                                LODWORD(v71) = llvm::APFloat::Storage::Storage(v71, &v181);
                              }
                            }

                            else
                            {
                              if (v181.n128_u64[0] != &llvm::semPPCDoubleDouble)
                              {
                                LODWORD(v71) = llvm::detail::IEEEFloat::operator=(v71, &v181);
                                v73 = *(v67 + 8);
                                v74 = (v73 + 8);
                                if (*(v73 + 8) == &llvm::semPPCDoubleDouble)
                                {
LABEL_146:
                                  v65 = llvm::detail::DoubleAPFloat::addWithSpecial(v71, v74, &v174, v74) | v65;
                                  v80 = *(v67 + 8);
                                  if (*(v80 + 8) == &llvm::semPPCDoubleDouble)
                                  {
                                    goto LABEL_147;
                                  }

                                  goto LABEL_143;
                                }

LABEL_134:
                                v77 = llvm::detail::IEEEFloat::addOrSubtractSpecials(v74, &v174, 0);
                                if (v77 == 2)
                                {
                                  v78 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v74, &v174, 0);
                                  v77 = llvm::detail::IEEEFloat::normalize(v74, a6, v78);
                                }

                                v79 = *(v73 + 28);
                                if ((v79 & 7) == 3)
                                {
                                  if ((v176 & 7) != 3 || ((v176 ^ v79) & 8) != 0)
                                  {
                                    LOBYTE(v79) = v79 & 0xF3 | (8 * (a6 == 3));
                                    *(v73 + 28) = v79;
                                  }

                                  if (*(*v74 + 20) == 2)
                                  {
                                    *(v73 + 28) = v79 & 0xF7;
                                  }
                                }

                                v65 = v77 | v65;
                                v80 = *(v67 + 8);
                                if (*(v80 + 8) == &llvm::semPPCDoubleDouble)
                                {
LABEL_147:
                                  v81 = *(*(v80 + 16) + 28) & 7;
                                  if (v81 == 1)
                                  {
                                    goto LABEL_158;
                                  }

LABEL_148:
                                  if (v81)
                                  {
                                    llvm::APFloat::Storage::operator=((v80 + 40), &v181);
                                    v82 = *(v67 + 8);
                                    v83 = (v82 + 40);
                                    if (*(v82 + 5) == &llvm::semPPCDoubleDouble)
                                    {
                                      v89 = llvm::detail::DoubleAPFloat::changeSign(v83);
                                      v11 = llvm::detail::DoubleAPFloat::addWithSpecial(v89, v83, v82 + 8, v83);
                                      LODWORD(v84) = llvm::detail::DoubleAPFloat::changeSign(v83);
                                    }

                                    else
                                    {
                                      v84 = llvm::detail::IEEEFloat::addOrSubtractSpecials(v83, (v82 + 8), 1);
                                      v11 = v84;
                                      if (v84 == 2)
                                      {
                                        v85 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v83, (v82 + 8), 1);
                                        v84 = llvm::detail::IEEEFloat::normalize(v83, a6, v85);
                                        v11 = v84;
                                      }

                                      v86 = v82[60];
                                      if ((v86 & 7) == 3)
                                      {
                                        v87 = v82[28];
                                        if ((v87 & 7) != 3 || ((v87 ^ v86) & 8) == 0)
                                        {
                                          LOBYTE(v86) = v86 & 0xF3 | (8 * (a6 == 3));
                                          v82[60] = v86;
                                        }

                                        if (*(*v83 + 20) == 2)
                                        {
                                          v82[60] = v86 & 0xF7;
                                        }
                                      }
                                    }

                                    v90 = *(v67 + 8);
                                    v91 = (v90 + 40);
                                    if (*(v90 + 40) == &llvm::semPPCDoubleDouble)
                                    {
                                      v92 = llvm::detail::DoubleAPFloat::addWithSpecial(v84, v91, &v174, v91);
                                    }

                                    else
                                    {
                                      v92 = llvm::detail::IEEEFloat::addOrSubtractSpecials(v91, &v174, 0);
                                      if (v92 == 2)
                                      {
                                        v93 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v91, &v174, 0);
                                        v92 = llvm::detail::IEEEFloat::normalize(v91, a6, v93);
                                      }

                                      v94 = *(v90 + 60);
                                      if ((v94 & 7) == 3)
                                      {
                                        if ((v176 & 7) != 3 || ((v176 ^ v94) & 8) != 0)
                                        {
                                          LOBYTE(v94) = v94 & 0xF3 | (8 * (a6 == 3));
                                          *(v90 + 60) = v94;
                                        }

                                        if (*(*v91 + 20) == 2)
                                        {
                                          *(v90 + 60) = v94 & 0xF7;
                                        }
                                      }
                                    }

                                    v65 = v11 | v92 | v65;
                                    v68 = 1;
                                    v69 = v174;
                                    if (v174 == &llvm::semPPCDoubleDouble)
                                    {
LABEL_178:
                                      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v174);
                                      v88 = v177;
                                      if (v177 == &llvm::semPPCDoubleDouble)
                                      {
LABEL_179:
                                        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v177);
                                        goto LABEL_180;
                                      }

LABEL_163:
                                      if ((*(v88 + 8) - 64) <= 0xFFFFFF7F && v178)
                                      {
                                        operator delete[](v178);
                                      }

LABEL_180:
                                      if (!v68)
                                      {
                                        goto LABEL_182;
                                      }

                                      goto LABEL_181;
                                    }

LABEL_159:
                                    if ((v69[2] - 64) <= 0xFFFFFF7F && __p)
                                    {
                                      operator delete[](__p);
                                    }

                                    v88 = v177;
                                    if (v177 == &llvm::semPPCDoubleDouble)
                                    {
                                      goto LABEL_179;
                                    }

                                    goto LABEL_163;
                                  }

LABEL_158:
                                  llvm::APFloat::makeZero((v80 + 32), 0);
                                  v68 = 0;
                                  v11 = v65;
                                  v69 = v174;
                                  if (v174 == &llvm::semPPCDoubleDouble)
                                  {
                                    goto LABEL_178;
                                  }

                                  goto LABEL_159;
                                }

LABEL_143:
                                v81 = *(v80 + 28) & 7;
                                if (v81 == 1)
                                {
                                  goto LABEL_158;
                                }

                                goto LABEL_148;
                              }

                              if (v70 != &v180)
                              {
                                if ((*(v72 + 8) - 64) <= 0xFFFFFF7F)
                                {
                                  v75 = *(v70 + 16);
                                  if (v75)
                                  {
                                    v76 = v71;
                                    operator delete[](v75);
                                    v71 = v76;
                                  }
                                }

                                goto LABEL_132;
                              }
                            }

                            v73 = *(v67 + 8);
                            v74 = (v73 + 8);
                            if (*(v73 + 8) == &llvm::semPPCDoubleDouble)
                            {
                              goto LABEL_146;
                            }

                            goto LABEL_134;
                          }

                          v176 = v61 & 0xF7;
                        }

LABEL_101:
                        v63 = v174;
                        goto LABEL_102;
                      }

LABEL_99:
                      if (v174 == &llvm::semPPCDoubleDouble)
                      {
                        goto LABEL_100;
                      }

                      goto LABEL_82;
                    }

LABEL_97:
                    if (v174 == &llvm::semPPCDoubleDouble)
                    {
                      goto LABEL_98;
                    }

                    goto LABEL_75;
                  }

LABEL_96:
                  v48 = llvm::detail::DoubleAPFloat::addWithSpecial(v42, &v174, &v177, &v174);
                  v49 = v48;
                  goto LABEL_97;
                }

LABEL_95:
                v42 = llvm::detail::DoubleAPFloat::changeSign(&v177);
                if (v174 != &llvm::semPPCDoubleDouble)
                {
                  goto LABEL_68;
                }

                goto LABEL_96;
              }
            }

            v179 = v45 & 0xF7;
            v47 = v177;
            if (v177 != &llvm::semPPCDoubleDouble)
            {
              goto LABEL_64;
            }

            goto LABEL_95;
          }

LABEL_94:
          v47 = v177;
          if (v177 != &llvm::semPPCDoubleDouble)
          {
            goto LABEL_64;
          }

          goto LABEL_95;
        }

LABEL_92:
        if (v177 == &llvm::semPPCDoubleDouble)
        {
          goto LABEL_93;
        }

        goto LABEL_57;
      }
    }

    v38 = llvm::detail::DoubleAPFloat::addWithSpecial(v33, &v177, &v181, &v177);
    goto LABEL_92;
  }

LABEL_22:
  if ((v16 & 7) != 0)
  {
    goto LABEL_251;
  }

  v20 = *(a2 + 8);
  if (v20 == &llvm::semPPCDoubleDouble)
  {
    v23 = llvm::detail::DoubleAPFloat::compareAbsoluteValue((a2 + 8), (a4 + 8));
    v27 = v23 == 2;
    v29 = (a5 + 8);
    v28 = *(a5 + 1);
    v30 = v181.n128_u64[0];
    if (v181.n128_u64[0] != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_33;
    }

LABEL_187:
    if (v28 == &llvm::semPPCDoubleDouble)
    {
      v23 = llvm::detail::DoubleAPFloat::operator=(&v181, v29);
      if (v181.n128_u64[0] == &llvm::semPPCDoubleDouble)
      {
        goto LABEL_222;
      }

      goto LABEL_196;
    }

    if (&v180 == a5)
    {
LABEL_195:
      if (v181.n128_u64[0] == &llvm::semPPCDoubleDouble)
      {
        goto LABEL_222;
      }

      goto LABEL_196;
    }

    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v181);
LABEL_194:
    v23 = llvm::APFloat::Storage::Storage(&v181, v29);
    goto LABEL_195;
  }

  v21 = *(a2 + 24);
  v22 = *(a4 + 24);
  v23 = v21 - v22;
  if (v21 == v22)
  {
    v24 = *(v20 + 8);
    if ((v24 - 64) >= 0xFFFFFF80)
    {
      v25 = (a2 + 16);
    }

    else
    {
      v25 = *(a2 + 16);
    }

    if ((*(*(a4 + 8) + 8) - 64) >= 0xFFFFFF80)
    {
      v26 = (a4 + 16);
    }

    else
    {
      v26 = *(a4 + 16);
    }

    v23 = llvm::APInt::tcCompare(v25, v26, ((v24 + 64) >> 6));
  }

  v27 = v23 > 0;
  v29 = (a5 + 8);
  v28 = *(a5 + 1);
  v30 = v181.n128_u64[0];
  if (v181.n128_u64[0] == &llvm::semPPCDoubleDouble)
  {
    goto LABEL_187;
  }

LABEL_33:
  if (v28 == &llvm::semPPCDoubleDouble)
  {
    if (&v180 == a5)
    {
      goto LABEL_195;
    }

    if ((*(v30 + 8) - 64) <= 0xFFFFFF7F && v181.n128_u64[1])
    {
      operator delete[](v181.n128_u64[1]);
    }

    goto LABEL_194;
  }

  v23 = llvm::detail::IEEEFloat::operator=(&v181, v29);
  if (v181.n128_u64[0] == &llvm::semPPCDoubleDouble)
  {
LABEL_222:
    v96 = llvm::detail::DoubleAPFloat::addWithSpecial(v23, &v181, a3 + 8, &v181);
    v97 = v96;
    v101 = a3;
    v102 = v181.n128_u64[0] == &llvm::semPPCDoubleDouble;
    if (!v27)
    {
      goto LABEL_223;
    }

    goto LABEL_205;
  }

LABEL_196:
  v96 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v181, (a3 + 8), 0);
  v97 = v96;
  if (v96 == 2)
  {
    v98 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v181, (a3 + 8), 0);
    v96 = llvm::detail::IEEEFloat::normalize(&v181, a6, v98);
    v97 = v96;
  }

  v99 = v182;
  if ((v182 & 7) == 3)
  {
    v100 = *(a3 + 28);
    if ((v100 & 7) != 3 || ((v100 ^ v182) & 8) != 0)
    {
      v99 = v182 & 0xF3 | (8 * (a6 == 3));
      v182 = v99;
    }

    if (*(v181.n128_u64[0] + 20) == 2)
    {
      v182 = v99 & 0xF7;
    }
  }

  v101 = a3;
  v102 = v181.n128_u64[0] == &llvm::semPPCDoubleDouble;
  if (!v27)
  {
LABEL_223:
    if (v102)
    {
      v103 = llvm::detail::DoubleAPFloat::addWithSpecial(v96, &v181, a2 + 8, &v181);
      v104 = v103;
    }

    else
    {
      v103 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v181, (a2 + 8), 0);
      v104 = v103;
      if (v103 == 2)
      {
        v114 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v181, (a2 + 8), 0);
        v103 = llvm::detail::IEEEFloat::normalize(&v181, a6, v114);
        v104 = v103;
      }

      v115 = v182;
      if ((v182 & 7) == 3)
      {
        v116 = *(a2 + 28);
        if ((v116 & 7) != 3 || ((v116 ^ v182) & 8) != 0)
        {
          v115 = v182 & 0xF3 | (8 * (a6 == 3));
          v182 = v115;
          v117 = v181.n128_u64[0];
          if (*(v181.n128_u64[0] + 20) != 2)
          {
LABEL_230:
            if (v117 != &llvm::semPPCDoubleDouble)
            {
              goto LABEL_231;
            }

            goto LABEL_241;
          }
        }

        else
        {
          v117 = v181.n128_u64[0];
          if (*(v181.n128_u64[0] + 20) != 2)
          {
            goto LABEL_230;
          }
        }

        v182 = v115 & 0xF7;
        if (v181.n128_u64[0] == &llvm::semPPCDoubleDouble)
        {
LABEL_241:
          v113 = a4 + 8;
          goto LABEL_242;
        }

LABEL_231:
        v109 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v181, (a4 + 8), 0);
        if (v109 == 2)
        {
          v118 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v181, (a4 + 8), 0);
          v109 = llvm::detail::IEEEFloat::normalize(&v181, a6, v118);
        }

        v111 = v182;
        if ((v182 & 7) == 3)
        {
          v112 = *(a4 + 28);
          if ((v112 & 7) == 3)
          {
LABEL_235:
            if (((v112 ^ v111) & 8) == 0)
            {
              goto LABEL_237;
            }
          }

LABEL_236:
          LOBYTE(v111) = v111 & 0xF3 | (8 * (a6 == 3));
          v182 = v111;
LABEL_237:
          if (*(v181.n128_u64[0] + 20) == 2)
          {
            v182 = v111 & 0xF7;
          }

          goto LABEL_243;
        }

        goto LABEL_243;
      }
    }

    if (v181.n128_u64[0] == &llvm::semPPCDoubleDouble)
    {
      goto LABEL_241;
    }

    goto LABEL_231;
  }

LABEL_205:
  if (v102)
  {
    v103 = llvm::detail::DoubleAPFloat::addWithSpecial(v96, &v181, a4 + 8, &v181);
    v104 = v103;
    goto LABEL_219;
  }

  v103 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v181, (a4 + 8), 0);
  v104 = v103;
  if (v103 == 2)
  {
    v105 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v181, (a4 + 8), 0);
    v103 = llvm::detail::IEEEFloat::normalize(&v181, a6, v105);
    v104 = v103;
  }

  v106 = v182;
  if ((v182 & 7) != 3)
  {
LABEL_219:
    if (v181.n128_u64[0] == &llvm::semPPCDoubleDouble)
    {
      goto LABEL_220;
    }

    goto LABEL_213;
  }

  v107 = *(a4 + 28);
  if ((v107 & 7) != 3 || ((v107 ^ v182) & 8) != 0)
  {
    v106 = v182 & 0xF3 | (8 * (a6 == 3));
    v182 = v106;
    v108 = v181.n128_u64[0];
    if (*(v181.n128_u64[0] + 20) != 2)
    {
LABEL_212:
      if (v108 != &llvm::semPPCDoubleDouble)
      {
        goto LABEL_213;
      }

LABEL_220:
      v113 = a2 + 8;
LABEL_242:
      v109 = llvm::detail::DoubleAPFloat::addWithSpecial(v103, &v181, v113, &v181);
      goto LABEL_243;
    }
  }

  else
  {
    v108 = v181.n128_u64[0];
    if (*(v181.n128_u64[0] + 20) != 2)
    {
      goto LABEL_212;
    }
  }

  v182 = v106 & 0xF7;
  if (v181.n128_u64[0] == &llvm::semPPCDoubleDouble)
  {
    goto LABEL_220;
  }

LABEL_213:
  v109 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v181, (a2 + 8), 0);
  if (v109 == 2)
  {
    v110 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v181, (a2 + 8), 0);
    v109 = llvm::detail::IEEEFloat::normalize(&v181, a6, v110);
  }

  v111 = v182;
  if ((v182 & 7) == 3)
  {
    v112 = *(a2 + 28);
    if ((v112 & 7) == 3)
    {
      goto LABEL_235;
    }

    goto LABEL_236;
  }

LABEL_243:
  v11 = v109 | v104 | v97;
  if (v181.n128_u64[0] == &llvm::semPPCDoubleDouble)
  {
    v119 = *(v181.n128_u64[1] + 28) & 7;
    if (v119 == 1)
    {
      goto LABEL_251;
    }
  }

  else
  {
    v119 = v182 & 7;
    if (v119 == 1)
    {
LABEL_251:
      llvm::APFloat::Storage::operator=((*(a1 + 8) + 8), &v181);
      llvm::APFloat::makeZero((*(a1 + 8) + 32), 0);
      v95 = v181.n128_u64[0];
      if (v181.n128_u64[0] != &llvm::semPPCDoubleDouble)
      {
        goto LABEL_183;
      }

LABEL_252:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v181);
      return v11;
    }
  }

  if (!v119)
  {
    goto LABEL_251;
  }

  v120 = *(a1 + 8);
  v121 = (v120 + 8);
  v122 = *(v120 + 8);
  if (v122 == &llvm::semPPCDoubleDouble)
  {
    if (v181.n128_u64[0] != &llvm::semPPCDoubleDouble)
    {
      if (v120 == &v180)
      {
        goto LABEL_269;
      }

      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v121);
      goto LABEL_267;
    }

    llvm::detail::DoubleAPFloat::operator=(v121, &v181);
  }

  else
  {
    if (v181.n128_u64[0] != &llvm::semPPCDoubleDouble)
    {
      llvm::detail::IEEEFloat::operator=(v121, &v181);
      goto LABEL_269;
    }

    if (v120 != &v180)
    {
      if ((*(v122 + 8) - 64) <= 0xFFFFFF7F && *(v120 + 16))
      {
        v124 = (v120 + 8);
        operator delete[](*(v120 + 16));
        v121 = v124;
      }

LABEL_267:
      llvm::APFloat::Storage::Storage(v121, &v181);
    }
  }

LABEL_269:
  v125 = llvm::APFloat::Storage::Storage(&v177, (v101 + 8));
  if (v177 == &llvm::semPPCDoubleDouble)
  {
    v126 = llvm::detail::DoubleAPFloat::addWithSpecial(v125, &v177, v29, &v177);
  }

  else
  {
    v126 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v177, v29, 0);
    if (v126 == 2)
    {
      v127 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v177, v29, 0);
      v126 = llvm::detail::IEEEFloat::normalize(&v177, a6, v127);
    }

    v128 = v179;
    if ((v179 & 7) == 3)
    {
      v129 = a5[28];
      if ((v129 & 7) != 3 || ((v129 ^ v179) & 8) != 0)
      {
        v128 = v179 & 0xF3 | (8 * (a6 == 3));
        v179 = v128;
      }

      if (*(v177 + 20) == 2)
      {
        v179 = v128 & 0xF7;
      }
    }
  }

  v130 = *(a1 + 8);
  v131 = v130 + 32;
  v132 = (v130 + 40);
  v133 = *(v130 + 40);
  if (!v27)
  {
    v135 = *(a4 + 8);
    if (v133 == &llvm::semPPCDoubleDouble)
    {
      if (v135 == &llvm::semPPCDoubleDouble)
      {
        llvm::detail::DoubleAPFloat::operator=(v132, (a4 + 8));
        goto LABEL_326;
      }

      if (v131 == a4)
      {
LABEL_326:
        v156 = *(a1 + 8);
        v157 = (v156 + 40);
        if (*(v156 + 40) == &llvm::semPPCDoubleDouble)
        {
          v162 = llvm::detail::DoubleAPFloat::changeSign(v157);
          v159 = llvm::detail::DoubleAPFloat::addWithSpecial(v162, v157, &v181, v157);
          v158 = llvm::detail::DoubleAPFloat::changeSign(v157);
        }

        else
        {
          v158 = llvm::detail::IEEEFloat::addOrSubtractSpecials(v157, &v181, 1);
          v159 = v158;
          if (v158 == 2)
          {
            v160 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v157, &v181, 1);
            v158 = llvm::detail::IEEEFloat::normalize(v157, a6, v160);
            v159 = v158;
          }

          v161 = *(v156 + 60);
          if ((v161 & 7) == 3)
          {
            if ((v182 & 7) != 3 || ((v182 ^ v161) & 8) == 0)
            {
              LOBYTE(v161) = v161 & 0xF3 | (8 * (a6 == 3));
              *(v156 + 60) = v161;
            }

            if (*(*v157 + 20) == 2)
            {
              *(v156 + 60) = v161 & 0xF7;
            }
          }
        }

        v163 = *(a1 + 8);
        v164 = (v163 + 40);
        if (*(v163 + 40) == &llvm::semPPCDoubleDouble)
        {
          v149 = llvm::detail::DoubleAPFloat::addWithSpecial(v158, v164, a2 + 8, v164);
        }

        else
        {
          v149 = llvm::detail::IEEEFloat::addOrSubtractSpecials(v164, (a2 + 8), 0);
          if (v149 == 2)
          {
            v165 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v164, (a2 + 8), 0);
            v149 = llvm::detail::IEEEFloat::normalize(v164, a6, v165);
          }

          v166 = *(v163 + 60);
          if ((v166 & 7) == 3)
          {
            v167 = *(a2 + 28);
            if ((v167 & 7) != 3 || ((v167 ^ v166) & 8) != 0)
            {
              LOBYTE(v166) = v166 & 0xF3 | (8 * (a6 == 3));
              *(v163 + 60) = v166;
            }

            if (*(*v164 + 20) == 2)
            {
              *(v163 + 60) = v166 & 0xF7;
            }
          }
        }

        v154 = v149 | v159;
        v155 = *(a1 + 8);
        goto LABEL_347;
      }

      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v132);
    }

    else
    {
      if (v135 != &llvm::semPPCDoubleDouble)
      {
        llvm::detail::IEEEFloat::operator=(v132, (a4 + 8));
        goto LABEL_326;
      }

      if (v131 == a4)
      {
        goto LABEL_326;
      }

      if ((*(v133 + 8) - 64) <= 0xFFFFFF7F)
      {
        v138 = *(v130 + 48);
        if (v138)
        {
          v139 = v132;
          operator delete[](v138);
          v132 = v139;
        }
      }
    }

    llvm::APFloat::Storage::Storage(v132, (a4 + 8));
    goto LABEL_326;
  }

  v134 = *(a2 + 8);
  if (v133 == &llvm::semPPCDoubleDouble)
  {
    if (v134 != &llvm::semPPCDoubleDouble)
    {
      if (v131 == a2)
      {
        goto LABEL_303;
      }

      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v132);
      goto LABEL_296;
    }

    llvm::detail::DoubleAPFloat::operator=(v132, (a2 + 8));
  }

  else
  {
    if (v134 != &llvm::semPPCDoubleDouble)
    {
      llvm::detail::IEEEFloat::operator=(v132, (a2 + 8));
      goto LABEL_303;
    }

    if (v131 != a2)
    {
      if ((*(v133 + 8) - 64) <= 0xFFFFFF7F)
      {
        v136 = *(v130 + 48);
        if (v136)
        {
          v137 = v132;
          operator delete[](v136);
          v132 = v137;
        }
      }

LABEL_296:
      llvm::APFloat::Storage::Storage(v132, (a2 + 8));
    }
  }

LABEL_303:
  v140 = *(a1 + 8);
  v141 = (v140 + 40);
  if (*(v140 + 40) == &llvm::semPPCDoubleDouble)
  {
    v146 = llvm::detail::DoubleAPFloat::changeSign(v141);
    v143 = llvm::detail::DoubleAPFloat::addWithSpecial(v146, v141, &v181, v141);
    v142 = llvm::detail::DoubleAPFloat::changeSign(v141);
  }

  else
  {
    v142 = llvm::detail::IEEEFloat::addOrSubtractSpecials(v141, &v181, 1);
    v143 = v142;
    if (v142 == 2)
    {
      v144 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v141, &v181, 1);
      v142 = llvm::detail::IEEEFloat::normalize(v141, a6, v144);
      v143 = v142;
    }

    v145 = *(v140 + 60);
    if ((v145 & 7) == 3)
    {
      if ((v182 & 7) != 3 || ((v182 ^ v145) & 8) == 0)
      {
        LOBYTE(v145) = v145 & 0xF3 | (8 * (a6 == 3));
        *(v140 + 60) = v145;
      }

      if (*(*v141 + 20) == 2)
      {
        *(v140 + 60) = v145 & 0xF7;
      }
    }
  }

  v147 = *(a1 + 8);
  v148 = (v147 + 40);
  if (*(v147 + 40) == &llvm::semPPCDoubleDouble)
  {
    v149 = llvm::detail::DoubleAPFloat::addWithSpecial(v142, v148, a4 + 8, v148);
  }

  else
  {
    v149 = llvm::detail::IEEEFloat::addOrSubtractSpecials(v148, (a4 + 8), 0);
    if (v149 == 2)
    {
      v150 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v148, (a4 + 8), 0);
      v149 = llvm::detail::IEEEFloat::normalize(v148, a6, v150);
    }

    v151 = *(v147 + 60);
    if ((v151 & 7) == 3)
    {
      v152 = *(a4 + 28);
      if ((v152 & 7) != 3 || ((v152 ^ v151) & 8) != 0)
      {
        LOBYTE(v151) = v151 & 0xF3 | (8 * (a6 == 3));
        *(v147 + 60) = v151;
      }

      v153 = a1;
      if (*(*v148 + 20) == 2)
      {
        *(v147 + 60) = v151 & 0xF7;
      }

      goto LABEL_324;
    }
  }

  v153 = a1;
LABEL_324:
  v154 = v149 | v143;
  v155 = *(v153 + 8);
LABEL_347:
  if (*(v155 + 40) == &llvm::semPPCDoubleDouble)
  {
    v168 = llvm::detail::DoubleAPFloat::addWithSpecial(v149, v155 + 40, &v177, (v155 + 40));
  }

  else
  {
    v168 = llvm::detail::IEEEFloat::addOrSubtractSpecials((v155 + 40), &v177, 0);
    if (v168 == 2)
    {
      v169 = llvm::detail::IEEEFloat::addOrSubtractSignificand((v155 + 40), &v177, 0);
      v168 = llvm::detail::IEEEFloat::normalize(v155 + 40, a6, v169);
    }

    v170 = *(v155 + 60);
    if ((v170 & 7) == 3)
    {
      if ((v179 & 7) != 3 || ((v179 ^ v170) & 8) != 0)
      {
        LOBYTE(v170) = v170 & 0xF3 | (8 * (a6 == 3));
        *(v155 + 60) = v170;
      }

      if (*(*(v155 + 40) + 20) == 2)
      {
        *(v155 + 60) = v170 & 0xF7;
      }
    }
  }

  v65 = v126 | v11 | v154 | v168;
  if (v177 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v177);
  }

  else if ((*(v177 + 8) - 64) <= 0xFFFFFF7F && v178)
  {
    operator delete[](v178);
  }

LABEL_181:
  v11 = v65;
LABEL_182:
  v95 = v181.n128_u64[0];
  if (v181.n128_u64[0] == &llvm::semPPCDoubleDouble)
  {
    goto LABEL_252;
  }

LABEL_183:
  if ((*(v95 + 8) - 64) <= 0xFFFFFF7F && v181.n128_u64[1])
  {
    operator delete[](v181.n128_u64[1]);
  }

  return v11;
}

uint64_t llvm::APFloat::add(llvm::detail::IEEEFloat *this, uint64_t a2, int a3)
{
  v5 = (this + 8);
  if (*(this + 1) == &llvm::semPPCDoubleDouble)
  {

    return llvm::detail::DoubleAPFloat::addWithSpecial(this, (this + 8), (a2 + 8), (this + 8), a3);
  }

  else
  {
    result = llvm::detail::IEEEFloat::addOrSubtractSpecials((this + 8), (a2 + 8), 0);
    if (result == 2)
    {
      v8 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v5, (a2 + 8), 0);
      result = llvm::detail::IEEEFloat::normalize(v5, a3, v8);
    }

    v9 = *(this + 28);
    if ((v9 & 7) == 3)
    {
      v10 = *(a2 + 28);
      if ((v10 & 7) != 3 || ((v10 ^ v9) & 8) != 0)
      {
        LOBYTE(v9) = v9 & 0xF3 | (8 * (a3 == 3));
        *(this + 28) = v9;
      }

      if (*(*v5 + 20) == 2)
      {
        *(this + 28) = v9 & 0xF7;
      }
    }
  }

  return result;
}

void llvm::APFloat::makeZero(llvm::APFloat *this, _BOOL4 a2)
{
  i = *(this + 1);
  if (i == &llvm::semPPCDoubleDouble)
  {
    v5 = this;
    llvm::APFloat::makeZero(*(this + 2), a2);
    v6 = *(v5 + 2);
    for (i = *(v6 + 40); i == &llvm::semPPCDoubleDouble; i = *(v6 + 40))
    {
      llvm::APFloat::makeZero(*(v6 + 48), 0);
      v6 = *(v6 + 48);
    }

    v4 = 0;
    this = (v6 + 32);
    v3 = (v6 + 60);
  }

  else
  {
    v3 = this + 28;
    if (a2)
    {
      v4 = 8;
    }

    else
    {
      v4 = 0;
    }
  }

  v7 = *v3 & 0xF0;
  *v3 = v7 | v4 | 3;
  if (*(i + 20) == 2)
  {
    *v3 = v7 | 3;
  }

  v9 = *(i + 4);
  v8 = *(i + 8);
  *(this + 6) = v9 - 1;
  v10 = (this + 16);
  if ((v8 - 64) <= 0xFFFFFF7F)
  {
    v10 = *v10;
  }

  llvm::APInt::tcSet(v10, 0, (v8 + 64) >> 6);
}

uint64_t llvm::APFloat::subtract(llvm::detail::IEEEFloat *this, uint64_t a2, int a3)
{
  v5 = (this + 8);
  if (*(this + 1) == &llvm::semPPCDoubleDouble)
  {
    v11 = llvm::detail::DoubleAPFloat::changeSign((this + 8));
    v12 = llvm::detail::DoubleAPFloat::addWithSpecial(v11, v5, (a2 + 8), v5, a3);
    llvm::detail::DoubleAPFloat::changeSign(v5);
    return v12;
  }

  else
  {
    result = llvm::detail::IEEEFloat::addOrSubtractSpecials((this + 8), (a2 + 8), 1);
    if (result == 2)
    {
      v8 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v5, (a2 + 8), 1);
      result = llvm::detail::IEEEFloat::normalize(v5, a3, v8);
    }

    v9 = *(this + 28);
    if ((v9 & 7) == 3)
    {
      v10 = *(a2 + 28);
      if ((v10 & 7) != 3 || ((v10 ^ v9) & 8) == 0)
      {
        LOBYTE(v9) = v9 & 0xF3 | (8 * (a3 == 3));
        *(this + 28) = v9;
      }

      if (*(*v5 + 20) == 2)
      {
        *(this + 28) = v9 & 0xF7;
      }
    }
  }

  return result;
}

llvm::detail::DoubleAPFloat *llvm::APFloat::changeSign(llvm::detail::DoubleAPFloat *this)
{
  v1 = *(this + 1);
  if (v1 == &llvm::semPPCDoubleDouble)
  {
    return llvm::detail::DoubleAPFloat::changeSign((this + 8));
  }

  v2 = *(this + 28);
  if (*(v1 + 20) != 2 || (v2 & 5 | 2) != 3)
  {
    *(this + 28) = v2 ^ 8;
  }

  return this;
}

uint64_t llvm::detail::DoubleAPFloat::addWithSpecial(int a1, llvm::APFloat::Storage *a2, llvm::APFloat::Storage *a3, llvm::detail::DoubleAPFloat *this, int a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 1);
  v6 = (v5 + 8);
  v7 = *(v5 + 8);
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    if ((*(*(v5 + 16) + 28) & 7) == 1)
    {
      goto LABEL_41;
    }
  }

  else if ((*(*(a2 + 1) + 28) & 7) == 1)
  {
    goto LABEL_41;
  }

  v8 = *(a3 + 1);
  v9 = *(v8 + 8);
  if (v9 == &llvm::semPPCDoubleDouble)
  {
    if ((*(*(v8 + 16) + 28) & 7) == 1)
    {
      goto LABEL_42;
    }
  }

  else if ((*(*(a3 + 1) + 28) & 7) == 1)
  {
    goto LABEL_42;
  }

  if (v7 == &llvm::semPPCDoubleDouble)
  {
    if ((*(*(v5 + 16) + 28) & 7) == 3)
    {
      goto LABEL_42;
    }
  }

  else if ((*(v5 + 28) & 7) == 3)
  {
    goto LABEL_42;
  }

  if (v9 == &llvm::semPPCDoubleDouble)
  {
    if ((*(*(v8 + 16) + 28) & 7) != 3)
    {
      goto LABEL_17;
    }

LABEL_41:
    v21 = this;
LABEL_43:
    llvm::detail::DoubleAPFloat::operator=(v21, a2);
    return 0;
  }

  if ((*(v8 + 28) & 7) == 3)
  {
    goto LABEL_41;
  }

LABEL_17:
  v10 = *(a2 + 1);
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    v10 = *(v5 + 16);
  }

  if ((*(v10 + 28) & 7) != 0)
  {
    goto LABEL_31;
  }

  v11 = *(a3 + 1);
  if (v9 == &llvm::semPPCDoubleDouble)
  {
    v11 = *(v8 + 16);
  }

  if ((*(v11 + 28) & 7) != 0)
  {
    goto LABEL_31;
  }

  if (v7 != &llvm::semPPCDoubleDouble)
  {
    v12 = *(v5 + 28);
    v13 = *(a3 + 1);
    if (v9 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_25;
    }

LABEL_30:
    if (((v12 >> 3) & 1) != (*(*(v8 + 16) + 28) & 8) >> 3)
    {
      goto LABEL_26;
    }

    goto LABEL_31;
  }

  v12 = *(*(v5 + 16) + 28);
  v13 = *(a3 + 1);
  if (v9 == &llvm::semPPCDoubleDouble)
  {
    goto LABEL_30;
  }

LABEL_25:
  if (((v12 >> 3) & 1) != (*(v13 + 28) & 8) >> 3)
  {
LABEL_26:
    v14 = *(this + 1);
    if (*(v14 + 8) == &llvm::semPPCDoubleDouble)
    {
      v14 = *(v14 + 16);
    }

    llvm::detail::DoubleAPFloat::makeNaN(this, 0, (*(v14 + 28) & 8) != 0, 0);
    return 1;
  }

LABEL_31:
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    v5 = *(v5 + 16);
  }

  if ((*(v5 + 28) & 7) == 0)
  {
    goto LABEL_41;
  }

  if (v9 == &llvm::semPPCDoubleDouble)
  {
    v8 = *(v8 + 16);
  }

  if ((*(v8 + 28) & 7) == 0)
  {
LABEL_42:
    v21 = this;
    a2 = a3;
    goto LABEL_43;
  }

  v17 = a2;
  llvm::APFloat::Storage::Storage(&v32, v6);
  llvm::APFloat::Storage::Storage(&v29, (*(v17 + 1) + 40));
  llvm::APFloat::Storage::Storage(&v26, (*(a3 + 1) + 8));
  llvm::APFloat::Storage::Storage(&v23, (*(a3 + 1) + 40));
  v20 = llvm::detail::DoubleAPFloat::addImpl(this, v31, v28, v25, v22, a5);
  if (v23 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v23);
  }

  else if ((*(v23 + 8) - 64) <= 0xFFFFFF7F && __p)
  {
    operator delete[](__p);
  }

  if (v26 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v26);
  }

  else if ((*(v26 + 8) - 64) <= 0xFFFFFF7F && v27)
  {
    operator delete[](v27);
  }

  if (v29 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v29);
  }

  else if ((*(v29 + 8) - 64) <= 0xFFFFFF7F && v30)
  {
    operator delete[](v30);
  }

  if (v32 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v32);
  }

  else if ((*(v32 + 8) - 64) <= 0xFFFFFF7F && v33)
  {
    operator delete[](v33);
  }

  return v20;
}

void llvm::detail::DoubleAPFloat::makeNaN(llvm::detail::DoubleAPFloat *this, char a2, char a3, const llvm::APInt *a4)
{
  v5 = *(this + 1);
  v7 = *(v5 + 8);
  v6 = (v5 + 8);
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::makeNaN(v6, a2, a3, a4);
  }

  else
  {
    llvm::detail::IEEEFloat::makeNaN(v6, a2, a3, a4);
  }

  v8 = (*(this + 1) + 32);

  llvm::APFloat::makeZero(v8, 0);
}

uint64_t llvm::detail::DoubleAPFloat::subtract(llvm::detail::DoubleAPFloat *a1, llvm::APFloat::Storage *a2, int a3)
{
  v6 = llvm::detail::DoubleAPFloat::changeSign(a1);
  v7 = llvm::detail::DoubleAPFloat::addWithSpecial(v6, a1, a2, a1, a3);
  llvm::detail::DoubleAPFloat::changeSign(a1);
  return v7;
}

llvm::detail::DoubleAPFloat *llvm::detail::DoubleAPFloat::changeSign(llvm::detail::DoubleAPFloat *this)
{
  do
  {
    v5 = *(this + 1);
    result = (v5 + 8);
    v6 = *(v5 + 8);
    if (v6 == &llvm::semPPCDoubleDouble)
    {
      result = llvm::detail::DoubleAPFloat::changeSign(result);
    }

    else
    {
      v7 = *(v6 + 20);
      v8 = *(v5 + 28);
      if (v7 != 2 || (v8 & 5 | 2) != 3)
      {
        *(v5 + 28) = v8 ^ 8;
      }
    }

    v3 = *(this + 1);
    this = (v3 + 40);
    v4 = *(v3 + 40);
  }

  while (v4 == &llvm::semPPCDoubleDouble);
  v10 = *(v4 + 20);
  v11 = *(v3 + 60);
  if (v10 != 2 || (v11 & 5 | 2) != 3)
  {
    *(v3 + 60) = v11 ^ 8;
  }

  return result;
}

uint64_t llvm::detail::DoubleAPFloat::multiply(uint64_t *a1, uint64_t *a2, unsigned int a3)
{
  v44[3] = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  v4 = (v3 + 8);
  v5 = *(v3 + 8);
  if (v5 == &llvm::semPPCDoubleDouble)
  {
    if ((*(*(v3 + 16) + 28) & 7) == 1)
    {
      goto LABEL_35;
    }
  }

  else if ((*(a1[1] + 28) & 7) == 1)
  {
    goto LABEL_35;
  }

  v6 = a2[1];
  v7 = *(v6 + 8);
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    if ((*(*(v6 + 16) + 28) & 7) == 1)
    {
LABEL_36:
      llvm::detail::DoubleAPFloat::operator=(a1, a2);
      return 0;
    }
  }

  else if ((*(a2[1] + 28) & 7) == 1)
  {
    goto LABEL_36;
  }

  if (v5 == &llvm::semPPCDoubleDouble)
  {
    if ((*(*(v3 + 16) + 28) & 7) != 3)
    {
      goto LABEL_16;
    }
  }

  else if ((*(v3 + 28) & 7) != 3)
  {
    goto LABEL_16;
  }

  v8 = a2[1];
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    v8 = *(v6 + 16);
  }

  if ((*(v8 + 28) & 7) == 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v5 == &llvm::semPPCDoubleDouble)
  {
    if ((*(*(v3 + 16) + 28) & 7) != 0)
    {
      goto LABEL_24;
    }
  }

  else if ((*(v3 + 28) & 7) != 0)
  {
    goto LABEL_24;
  }

  v9 = a2[1];
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    v9 = *(v6 + 16);
  }

  if ((*(v9 + 28) & 7) == 3)
  {
LABEL_23:
    llvm::detail::DoubleAPFloat::makeNaN(a1, 0, 0, 0);
    return 0;
  }

LABEL_24:
  if (v5 == &llvm::semPPCDoubleDouble)
  {
    v10 = *(*(v3 + 16) + 28) & 7;
    if (v10 != 3)
    {
      goto LABEL_28;
    }

LABEL_35:
    a2 = a1;
    goto LABEL_36;
  }

  v10 = *(v3 + 28) & 7;
  if (v10 == 3)
  {
    goto LABEL_35;
  }

LABEL_28:
  if (!v10)
  {
    goto LABEL_35;
  }

  if (v7 == &llvm::semPPCDoubleDouble)
  {
    v6 = *(v6 + 16);
  }

  v11 = *(v6 + 28) & 7;
  if (v11 == 3 || !v11)
  {
    goto LABEL_36;
  }

  v13 = a2;
  llvm::APFloat::Storage::Storage(v44, v4);
  v15 = a1;
  llvm::APFloat::Storage::Storage(v42, (a1[1] + 40));
  llvm::APFloat::Storage::Storage(&v40, (v13[1] + 8));
  llvm::APFloat::Storage::Storage(&v38, (v13[1] + 40));
  llvm::APFloat::Storage::Storage(v35, v44);
  v26 = a3;
  v16 = llvm::APFloat::multiply(v34, v39, a3);
  if (v35[0] == &llvm::semPPCDoubleDouble)
  {
    v17 = *(v35[1] + 28);
  }

  else
  {
    v17 = v36;
  }

  if ((v17 & 6) != 0 && (v17 & 7) != 3)
  {
    llvm::APFloat::Storage::Storage(&v33, v44);
    llvm::APFloat::changeSign(v34);
    v19 = llvm::APFloat::fusedMultiplyAdd(v32, v39, v34, a3);
    llvm::APFloat::changeSign(v34);
    llvm::APFloat::Storage::Storage(v30, v44);
    v20 = llvm::APFloat::multiply(v29, v37, v26);
    llvm::APFloat::Storage::Storage(&v28, v42);
    v21 = llvm::APFloat::multiply(v27, v39, v26);
    v22 = llvm::APFloat::add(v29, v27, v26);
    v23 = llvm::APFloat::add(v32, v29, v26);
    llvm::APFloat::~APFloat(v27);
    llvm::APFloat::~APFloat(v29);
    llvm::APFloat::Storage::Storage(v30, v35);
    v16 = v19 | v20 | v21 | v22 | v23 | llvm::APFloat::add(v29, v32, v26) | v16;
    llvm::APFloat::operator=(a1[1], v29);
    if (v30[0] == &llvm::semPPCDoubleDouble)
    {
      v24 = *(v30[1] + 28);
    }

    else
    {
      v24 = v31;
    }

    if ((v24 & 7u) < 2)
    {
      llvm::APFloat::makeZero((a1[1] + 32), 0);
    }

    else
    {
      v25 = llvm::APFloat::subtract(v34, v29, v26);
      v16 = v25 | llvm::APFloat::add(v34, v32, v26) | v16;
      llvm::APFloat::operator=(v15[1] + 32, v34);
    }

    llvm::APFloat::~APFloat(v29);
    llvm::APFloat::~APFloat(v32);
  }

  else
  {
    llvm::APFloat::operator=(a1[1], v34);
    llvm::APFloat::makeZero((a1[1] + 32), 0);
  }

  llvm::APFloat::~APFloat(v34);
  llvm::APFloat::~APFloat(v37);
  llvm::APFloat::~APFloat(v39);
  llvm::APFloat::~APFloat(v41);
  llvm::APFloat::~APFloat(v43);
  return v16;
}

uint64_t llvm::APFloat::multiply(llvm::detail::IEEEFloat *this, uint64_t a2, int a3)
{
  v4 = (this + 8);
  if (*(this + 1) == &llvm::semPPCDoubleDouble)
  {
    v9 = a2 + 8;
    v10 = this + 8;

    return llvm::detail::DoubleAPFloat::multiply(v10, v9);
  }

  else
  {
    *(this + 28) ^= *(a2 + 28) & 8;
    result = llvm::detail::IEEEFloat::multiplySpecials((this + 8), (a2 + 8));
    v8 = *(this + 28);
    if ((v8 & 7) == 3)
    {
      if (*(*v4 + 5) == 2)
      {
        *(this + 28) = v8 & 0xF3;
      }
    }

    else if ((*(this + 28) & 6) != 0)
    {
      v11 = llvm::detail::IEEEFloat::multiplySignificand(v4, (a2 + 8));
      LODWORD(result) = llvm::detail::IEEEFloat::normalize(v4, a3, v11);
      if (v11)
      {
        return result | 0x10;
      }

      else
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t llvm::APFloat::fusedMultiplyAdd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  v4 = (a1 + 8);
  v6 = (a2 + 8);
  v7 = (a3 + 8);
  if (v5 == &llvm::semPPCDoubleDouble)
  {
    return llvm::detail::DoubleAPFloat::fusedMultiplyAdd(v4, v6, v7, a4);
  }

  else
  {
    return llvm::detail::IEEEFloat::fusedMultiplyAdd(v4, v6, v7, a4);
  }
}

uint64_t llvm::detail::DoubleAPFloat::divide(llvm::detail::DoubleAPFloat *a1, llvm::detail::DoubleAPFloat *a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(a1, &__p);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(&v26, &__p);
  if (v23 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  llvm::detail::DoubleAPFloat::bitcastToAPInt(a2, &v20);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(&v23, &v20);
  if (v26 == &llvm::semPPCDoubleDouble)
  {
    v6 = llvm::detail::DoubleAPFloat::divide(&v26, &v23, a3);
  }

  else
  {
    v28 ^= v25 & 8;
    v6 = llvm::detail::IEEEFloat::divideSpecials(&v26, &v23);
    if ((v28 & 7) == 3)
    {
      if (*(v26 + 20) == 2)
      {
        v28 &= 0xF3u;
      }
    }

    else if ((v28 & 6) != 0)
    {
      v7 = llvm::detail::IEEEFloat::divideSignificand(&v26, &v23);
      v8 = llvm::detail::IEEEFloat::normalize(&v26, a3, v7);
      if (v7)
      {
        v6 = v8 | 0x10;
      }

      else
      {
        v6 = v8;
      }
    }
  }

  if (v23 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v23);
  }

  else if ((*(v23 + 8) - 64) <= 0xFFFFFF7F && v24)
  {
    operator delete[](v24);
  }

  if (v21 >= 0x41 && v20)
  {
    operator delete[](v20);
  }

  if (v26 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt(&v26, &v17);
  }

  else
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(&v26, &v17);
  }

  *&v19 = &llvm::semPPCDoubleDouble;
  v9 = operator new[](0x50uLL);
  *v9 = xmmword_1E099CF00;
  v10 = (v9 + 56);
  v11 = v9 + 1;
  if (v18 >= 0x41)
  {
    v12 = v17;
  }

  else
  {
    v12 = &v17;
  }

  v13 = *v12;
  LODWORD(v23) = 64;
  __p = v13;
  llvm::detail::IEEEFloat::initFromDoubleAPInt((v9 + 24), &__p);
  if (v18 >= 0x41)
  {
    v14 = v17;
  }

  else
  {
    v14 = &v17;
  }

  v15 = v14[1];
  v21 = 64;
  v20 = v15;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(v10, &v20);
  *(&v19 + 1) = v11;
  if (&v19 != a1)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(a1);
    *a1 = v19;
    *&v19 = &llvm::semBogus;
    *(&v19 + 1) = 0;
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v19);
  if (v18 >= 0x41 && v17)
  {
    operator delete[](v17);
  }

  if (v26 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v26);
  }

  else if ((*(v26 + 8) - 64) <= 0xFFFFFF7F && v27)
  {
    operator delete[](v27);
  }

  return v6;
}

llvm::APInt *llvm::detail::DoubleAPFloat::bitcastToAPInt@<X0>(llvm::detail::DoubleAPFloat *this@<X0>, llvm::APInt *a2@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *(this + 1);
  v6 = *(v4 + 8);
  v5 = (v4 + 8);
  if (v6 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt(&v14, v5);
  }

  else
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(v5, &v14);
  }

  v7 = &v14;
  if (v15 >= 0x41)
  {
    v7 = v14;
  }

  v16 = *v7;
  v8 = *(this + 1);
  v10 = *(v8 + 40);
  v9 = (v8 + 40);
  if (v10 != &llvm::semPPCDoubleDouble)
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(v9, &__p);
    if (v13 <= 0x40)
    {
      goto LABEL_8;
    }

LABEL_11:
    v17 = *__p;
    operator delete[](__p);
    if (v15 < 0x41)
    {
      return llvm::APInt::APInt(a2, 0x80u, 2u, &v16);
    }

    goto LABEL_12;
  }

  llvm::detail::DoubleAPFloat::bitcastToAPInt(&__p, v9);
  if (v13 > 0x40)
  {
    goto LABEL_11;
  }

LABEL_8:
  v17 = __p;
  if (v15 < 0x41)
  {
    return llvm::APInt::APInt(a2, 0x80u, 2u, &v16);
  }

LABEL_12:
  if (v14)
  {
    operator delete[](v14);
  }

  return llvm::APInt::APInt(a2, 0x80u, 2u, &v16);
}

uint64_t llvm::detail::DoubleAPFloat::mod(llvm::detail::DoubleAPFloat *this, const llvm::detail::DoubleAPFloat *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(this, &__p);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(&v22, &__p);
  if (v20 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  llvm::detail::DoubleAPFloat::bitcastToAPInt(a2, &v17);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(&v20, &v17);
  if (v22 == &llvm::semPPCDoubleDouble)
  {
    v4 = llvm::detail::DoubleAPFloat::mod(&v22, &v20);
    v5 = v20;
    if (v20 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_6;
    }

LABEL_10:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v20);
    goto LABEL_11;
  }

  v4 = llvm::detail::IEEEFloat::mod(&v22, &v20);
  v5 = v20;
  if (v20 == &llvm::semPPCDoubleDouble)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v5[2] - 64) <= 0xFFFFFF7F && v21)
  {
    operator delete[](v21);
  }

LABEL_11:
  if (v18 >= 0x41 && v17)
  {
    operator delete[](v17);
  }

  if (v22 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt(&v22, &v14);
  }

  else
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(&v22, &v14);
  }

  *&v16 = &llvm::semPPCDoubleDouble;
  v6 = operator new[](0x50uLL);
  *v6 = xmmword_1E099CF00;
  v7 = (v6 + 56);
  v8 = v6 + 1;
  if (v15 >= 0x41)
  {
    v9 = v14;
  }

  else
  {
    v9 = &v14;
  }

  v10 = *v9;
  LODWORD(v20) = 64;
  __p = v10;
  llvm::detail::IEEEFloat::initFromDoubleAPInt((v6 + 24), &__p);
  if (v15 >= 0x41)
  {
    v11 = v14;
  }

  else
  {
    v11 = &v14;
  }

  v12 = v11[1];
  v18 = 64;
  v17 = v12;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(v7, &v17);
  *(&v16 + 1) = v8;
  if (&v16 != this)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(this);
    *this = v16;
    *&v16 = &llvm::semBogus;
    *(&v16 + 1) = 0;
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v16);
  if (v15 >= 0x41 && v14)
  {
    operator delete[](v14);
  }

  if (v22 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v22);
  }

  else if ((*(v22 + 8) - 64) <= 0xFFFFFF7F && v23)
  {
    operator delete[](v23);
  }

  return v4;
}

uint64_t llvm::detail::DoubleAPFloat::fusedMultiplyAdd(llvm::detail::DoubleAPFloat *a1, llvm::detail::DoubleAPFloat *a2, llvm::detail::DoubleAPFloat *a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(a1, &__p);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(&v27, &__p);
  if (v25 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  llvm::detail::DoubleAPFloat::bitcastToAPInt(a2, v20);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(&v25, v20);
  llvm::detail::DoubleAPFloat::bitcastToAPInt(a3, &v18);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(&v22, &v18);
  if (v27 == &llvm::semPPCDoubleDouble)
  {
    v8 = llvm::detail::DoubleAPFloat::fusedMultiplyAdd(&v27, &v25, &v22, a4);
    v9 = v22;
    if (v22 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_6;
    }

LABEL_10:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v22);
    goto LABEL_11;
  }

  v8 = llvm::detail::IEEEFloat::fusedMultiplyAdd(&v27, &v25, &v22, a4);
  v9 = v22;
  if (v22 == &llvm::semPPCDoubleDouble)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v9[2] - 64) <= 0xFFFFFF7F && v23)
  {
    operator delete[](v23);
  }

LABEL_11:
  if (v19 >= 0x41 && v18)
  {
    operator delete[](v18);
  }

  if (v25 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v25);
  }

  else if ((*(v25 + 8) - 64) <= 0xFFFFFF7F && v26)
  {
    operator delete[](v26);
  }

  if (LODWORD(v20[1]) >= 0x41 && v20[0])
  {
    operator delete[](v20[0]);
  }

  if (v27 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt(&v27, &v18);
  }

  else
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(&v27, &v18);
  }

  v20[0] = &llvm::semPPCDoubleDouble;
  v10 = operator new[](0x50uLL);
  *v10 = xmmword_1E099CF00;
  v11 = (v10 + 56);
  v12 = v10 + 1;
  if (v19 >= 0x41)
  {
    v13 = v18;
  }

  else
  {
    v13 = &v18;
  }

  v14 = *v13;
  LODWORD(v25) = 64;
  __p = v14;
  llvm::detail::IEEEFloat::initFromDoubleAPInt((v10 + 24), &__p);
  if (v19 >= 0x41)
  {
    v15 = v18;
  }

  else
  {
    v15 = &v18;
  }

  v16 = *(v15 + 1);
  LODWORD(v22) = 64;
  v21 = v16;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(v11, &v21);
  v20[1] = v12;
  if (v20 != a1)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(a1);
    *a1 = *v20;
    v20[0] = &llvm::semBogus;
    v20[1] = 0;
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v20);
  if (v19 >= 0x41 && v18)
  {
    operator delete[](v18);
  }

  if (v27 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v27);
  }

  else if ((*(v27 + 8) - 64) <= 0xFFFFFF7F && v28)
  {
    operator delete[](v28);
  }

  return v8;
}

uint64_t llvm::detail::DoubleAPFloat::compareAbsoluteValue(llvm::detail::DoubleAPFloat *this, const llvm::detail::DoubleAPFloat *a2)
{
  v4 = *(this + 1);
  v5 = *(a2 + 1);
  v6 = *(v4 + 1);
  if (v6 == &llvm::semPPCDoubleDouble)
  {
    result = llvm::detail::DoubleAPFloat::compareAbsoluteValue((v4 + 2), (v5 + 8));
    if (result != 1)
    {
      return result;
    }
  }

  else
  {
    v7 = v4[6];
    v8 = *(v5 + 24);
    v9 = v7 - v8;
    if (v7 == v8)
    {
      v11 = *(v6 + 8);
      v12 = (v4 + 4);
      if ((v11 - 64) <= 0xFFFFFF7F)
      {
        v12 = *v12;
      }

      v15 = *(v5 + 16);
      v13 = (v5 + 16);
      v14 = v15;
      if ((*(*(v13 - 1) + 8) - 64) >= 0xFFFFFF80)
      {
        v16 = v13;
      }

      else
      {
        v16 = v14;
      }

      v9 = llvm::APInt::tcCompare(v12, v16, ((v11 + 64) >> 6));
      if (v9 > 0)
      {
        return 2;
      }
    }

    else if (v9 > 0)
    {
      return 2;
    }

    result = v9 >= 0;
    if (result != 1)
    {
      return result;
    }
  }

  v17 = *(this + 1);
  v18 = *(a2 + 1);
  v19 = *(v17 + 5);
  if (v19 == &llvm::semPPCDoubleDouble)
  {
    result = llvm::detail::DoubleAPFloat::compareAbsoluteValue((v17 + 10), (v18 + 40));
    if ((result & 0xFFFFFFFD) != 0)
    {
      return result;
    }

LABEL_29:
    v29 = *(this + 1);
    v30 = v29;
    if (*(v29 + 8) == &llvm::semPPCDoubleDouble)
    {
      v30 = *(v29 + 16);
    }

    v31 = *(v30 + 28);
    if (*(v29 + 40) == &llvm::semPPCDoubleDouble)
    {
      v32 = *(v29 + 48);
    }

    else
    {
      v32 = v29 + 32;
    }

    v33 = v31 ^ *(v32 + 28);
    v34 = *(a2 + 1);
    v35 = v34;
    if (*(v34 + 8) == &llvm::semPPCDoubleDouble)
    {
      v35 = *(v34 + 16);
    }

    v36 = (v33 >> 3) & 1;
    v37 = *(v35 + 28);
    if (*(v34 + 40) == &llvm::semPPCDoubleDouble)
    {
      v38 = ((v37 ^ *(*(v34 + 48) + 28)) >> 3) & 1;
      v39 = v36 ^ 1;
      if ((v36 ^ 1))
      {
        goto LABEL_42;
      }
    }

    else
    {
      v38 = ((v37 ^ *(v34 + 60)) >> 3) & 1;
      v39 = v36 ^ 1;
      if ((v36 ^ 1))
      {
LABEL_42:
        if (v39 & v38)
        {
          return 2;
        }

        if ((v36 | v38) & 1) != 0 && (v36 & v38)
        {
          return (2 - result);
        }

        return result;
      }
    }

    if (!v38)
    {
      return 0;
    }

    goto LABEL_42;
  }

  v20 = v17[14];
  v21 = *(v18 + 56);
  v22 = v20 - v21;
  if (v20 == v21)
  {
    v23 = *(v19 + 8);
    v24 = (v17 + 12);
    if ((v23 - 64) <= 0xFFFFFF7F)
    {
      v24 = *v24;
    }

    v27 = *(v18 + 48);
    v25 = (v18 + 48);
    v26 = v27;
    if ((*(*(v25 - 1) + 8) - 64) >= 0xFFFFFF80)
    {
      v28 = v25;
    }

    else
    {
      v28 = v26;
    }

    v22 = llvm::APInt::tcCompare(v24, v28, ((v23 + 64) >> 6));
  }

  if (v22 <= 0)
  {
    result = v22 >= 0;
  }

  else
  {
    result = 2;
  }

  if ((result & 0xFFFFFFFD) == 0)
  {
    goto LABEL_29;
  }

  return result;
}

void llvm::detail::DoubleAPFloat::makeLargest(llvm::detail::DoubleAPFloat *this, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = 64;
  v4 = 0x7FEFFFFFFFFFFFFFLL;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(&v6, &v4);
  llvm::APFloat::Storage::operator=((*(this + 1) + 8), &v6);
  if (v6.n128_u64[0] == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v6);
  }

  else if ((*(v6.n128_u64[0] + 8) - 64) <= 0xFFFFFF7F && v6.n128_u64[1])
  {
    operator delete[](v6.n128_u64[1]);
  }

  v5 = 64;
  v4 = 0x7C8FFFFFFFFFFFFELL;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(&v6, &v4);
  llvm::APFloat::Storage::operator=((*(this + 1) + 40), &v6);
  if (v6.n128_u64[0] == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v6);
  }

  else if ((*(v6.n128_u64[0] + 8) - 64) <= 0xFFFFFF7F && v6.n128_u64[1])
  {
    operator delete[](v6.n128_u64[1]);
  }

  if (a2)
  {
    llvm::detail::DoubleAPFloat::changeSign(this);
  }
}

uint64_t llvm::detail::DoubleAPFloat::compare(llvm::detail::DoubleAPFloat *this, const llvm::detail::DoubleAPFloat *a2)
{
  do
  {
    v4 = *(this + 1);
    v6 = *(v4 + 8);
    v5 = (v4 + 8);
    v7 = (*(a2 + 1) + 8);
    if (v6 == &llvm::semPPCDoubleDouble)
    {
      result = llvm::detail::DoubleAPFloat::compare(v5, v7);
      if (result != 1)
      {
        return result;
      }
    }

    else
    {
      result = llvm::detail::IEEEFloat::compare(v5, v7);
      if (result != 1)
      {
        return result;
      }
    }

    v9 = *(this + 1);
    v10 = *(a2 + 1);
    v11 = *(v9 + 40);
    this = (v9 + 40);
    a2 = (v10 + 40);
  }

  while (v11 == &llvm::semPPCDoubleDouble);

  return llvm::detail::IEEEFloat::compare(this, (v10 + 40));
}

uint64_t llvm::detail::DoubleAPFloat::bitwiseIsEqual(llvm::detail::DoubleAPFloat *this, const llvm::detail::DoubleAPFloat *a2)
{
  result = llvm::APFloat::bitwiseIsEqual(*(this + 1), *(a2 + 1));
  if (result)
  {
    v5 = *(this + 1) + 32;
    v6 = *(a2 + 1) + 32;

    return llvm::APFloat::bitwiseIsEqual(v5, v6);
  }

  return result;
}

uint64_t llvm::APFloat::bitwiseIsEqual(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 != v3)
  {
    return 0;
  }

  v5 = a2;
  v6 = a1;
  if (v2 == &llvm::semPPCDoubleDouble)
  {
    while (1)
    {
      result = llvm::APFloat::bitwiseIsEqual(*(v6 + 16), *(v5 + 16));
      if (!result)
      {
        break;
      }

      v7 = *(v6 + 16);
      v8 = *(v5 + 16);
      v2 = *(v7 + 40);
      v3 = *(v8 + 40);
      if (v2 != v3)
      {
        return 0;
      }

      v6 = v7 + 32;
      v5 = v8 + 32;
      if (v2 != &llvm::semPPCDoubleDouble)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    if (v6 == v5)
    {
      return 1;
    }

    v9 = *(v6 + 28);
    v10 = *(v5 + 28);
    if ((v9 & 7) != (v10 & 7) || ((v10 ^ v9) & 8) != 0)
    {
      return 0;
    }

    result = 1;
    if ((v9 & 7) == 0 || (v9 & 7) == 3)
    {
      return result;
    }

    if ((v9 & 6) != 0 && *(v6 + 24) != *(v5 + 24))
    {
      return 0;
    }

    v11 = *(v2 + 8);
    v12 = (v6 + 16);
    if ((v11 - 64) <= 0xFFFFFF7F)
    {
      v12 = *v12;
    }

    v13 = v11 + 64;
    v16 = *(v5 + 16);
    v15 = (v5 + 16);
    v14 = v16;
    if ((*(v3 + 8) - 64) >= 0xFFFFFF80)
    {
      v17 = v15;
    }

    else
    {
      v17 = v14;
    }

    return memcmp(v12, v17, (v13 >> 3) & 0x1FFFFFF8) == 0;
  }

  return result;
}

unint64_t llvm::detail::hash_value(llvm::detail *this, const llvm::detail::DoubleAPFloat *a2)
{
  v3 = *(this + 1);
  if (!v3)
  {
    v12 = HIDWORD(*this) ^ 0xFF51AFD7ED558CCDLL;
    v13 = 0x9DDFEA08EB382D69 * ((8 * *this + 8) ^ v12);
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  }

  v5 = *(v3 + 8);
  v4 = (v3 + 8);
  if (v5 == &llvm::semPPCDoubleDouble)
  {
    v7 = llvm::detail::hash_value(v4, a2);
    v15 = *(this + 1);
    v16 = *(v15 + 40);
    v9 = (v15 + 40);
    if (v16 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_4;
    }

LABEL_7:
    v11 = llvm::detail::hash_value(v9, v6);
    goto LABEL_8;
  }

  v7 = llvm::detail::hash_value(v4, a2);
  v8 = *(this + 1);
  v10 = *(v8 + 40);
  v9 = (v8 + 40);
  if (v10 == &llvm::semPPCDoubleDouble)
  {
    goto LABEL_7;
  }

LABEL_4:
  v11 = llvm::detail::hash_value(v9, v6);
LABEL_8:
  v17 = __ROR8__(v11 + 16, 16);
  return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v17 ^ ((0x9DDFEA08EB382D69 * (v7 ^ 0xFF51AFD7ED558CCDLL ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ 0xFF51AFD7ED558CCDLL ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v17 ^ ((0x9DDFEA08EB382D69 * (v7 ^ 0xFF51AFD7ED558CCDLL ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ 0xFF51AFD7ED558CCDLL ^ v17)))) >> 47))) ^ v11;
}

unint64_t llvm::hash_value(llvm *this, const llvm::APFloat *a2)
{
  v3 = *(this + 1);
  v2 = (this + 8);
  if (v3 == &llvm::semPPCDoubleDouble)
  {
    return llvm::detail::hash_value(v2, a2);
  }

  else
  {
    return llvm::detail::hash_value(v2, a2);
  }
}

void llvm::detail::DoubleAPFloat::convertFromString(llvm::detail::DoubleAPFloat *a1@<X0>, unsigned __int8 *a2@<X1>, size_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v24 = &llvm::semPPCDoubleDoubleLegacy;
  v25 = operator new[](0x10uLL);
  v27 = 3;
  v26 = -970;
  llvm::APInt::tcSet(v25, 0, 2u);
  llvm::detail::IEEEFloat::convertFromString(&v24, a2, a3, a4, a5);
  if (v24 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt(&v24, &__p);
  }

  else
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(&v24, &__p);
  }

  *&v19 = &llvm::semPPCDoubleDouble;
  v10 = operator new[](0x50uLL);
  *v10 = xmmword_1E099CF00;
  v11 = (v10 + 56);
  v12 = v10 + 1;
  if (v18 >= 0x41)
  {
    p_p = __p;
  }

  else
  {
    p_p = &__p;
  }

  v14 = *p_p;
  v23 = 64;
  v22 = v14;
  llvm::detail::IEEEFloat::initFromDoubleAPInt((v10 + 24), &v22);
  if (v18 >= 0x41)
  {
    v15 = __p;
  }

  else
  {
    v15 = &__p;
  }

  v16 = *(v15 + 1);
  v21 = 64;
  v20 = v16;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(v11, &v20);
  *(&v19 + 1) = v12;
  if (&v19 != a1)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(a1);
    *a1 = v19;
    *&v19 = &llvm::semBogus;
    *(&v19 + 1) = 0;
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v19);
  if (v18 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v24 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v24);
  }

  else if ((v24[2] - 64) <= 0xFFFFFF7F)
  {
    if (v25)
    {
      operator delete[](v25);
    }
  }
}

void llvm::APFloat::convertFromString(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, size_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = *(a1 + 8);
  v5 = (a1 + 8);
  if (v6 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::convertFromString(v5, a2, a3, a4, a5);
  }

  else
  {
    llvm::detail::IEEEFloat::convertFromString(v5, a2, a3, a4, a5);
  }
}

uint64_t llvm::detail::DoubleAPFloat::convertToInteger(llvm::detail::DoubleAPFloat *a1, llvm::APInt *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v20 = *MEMORY[0x1E69E9840];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(a1, &v16);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(&v18, &v16);
  if (v18 == &llvm::semPPCDoubleDouble)
  {
    v13 = llvm::detail::DoubleAPFloat::convertToInteger(&v18, a2, a3, a4, a5, a6, a7);
    v14 = v18;
    if (v18 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_3;
    }

LABEL_7:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v18);
    goto LABEL_8;
  }

  v13 = llvm::detail::IEEEFloat::convertToInteger(&v18, a2, a3, a4, a5, a6, a7);
  v14 = v18;
  if (v18 == &llvm::semPPCDoubleDouble)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v14[2] - 64) <= 0xFFFFFF7F && __p)
  {
    operator delete[](__p);
  }

LABEL_8:
  if (v17 >= 0x41 && v16)
  {
    operator delete[](v16);
  }

  return v13;
}

uint64_t llvm::detail::DoubleAPFloat::convertFromAPInt(llvm::detail::DoubleAPFloat *a1, uint64_t a2, int a3, int a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v24 = &llvm::semPPCDoubleDoubleLegacy;
  v25 = operator new[](0x10uLL);
  v27 = 3;
  v26 = -970;
  llvm::APInt::tcSet(v25, 0, 2u);
  v8 = llvm::detail::IEEEFloat::convertFromAPInt(&v24, a2, a3, a4);
  if (v24 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt(&v24, &__p);
  }

  else
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(&v24, &__p);
  }

  *&v19 = &llvm::semPPCDoubleDouble;
  v9 = operator new[](0x50uLL);
  *v9 = xmmword_1E099CF00;
  v10 = (v9 + 56);
  v11 = v9 + 1;
  if (v18 >= 0x41)
  {
    p_p = __p;
  }

  else
  {
    p_p = &__p;
  }

  v13 = *p_p;
  v23 = 64;
  v22 = v13;
  llvm::detail::IEEEFloat::initFromDoubleAPInt((v9 + 24), &v22);
  if (v18 >= 0x41)
  {
    v14 = __p;
  }

  else
  {
    v14 = &__p;
  }

  v15 = *(v14 + 1);
  v21 = 64;
  v20 = v15;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(v10, &v20);
  *(&v19 + 1) = v11;
  if (&v19 != a1)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(a1);
    *a1 = v19;
    *&v19 = &llvm::semBogus;
    *(&v19 + 1) = 0;
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v19);
  if (v18 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v24 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v24);
  }

  else if ((v24[2] - 64) <= 0xFFFFFF7F && v25)
  {
    operator delete[](v25);
  }

  return v8;
}

void llvm::detail::DoubleAPFloat::toString(llvm::detail::DoubleAPFloat *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x1E69E9840];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(a1, &v10);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(&v12, &v10);
  if (v12 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::toString(&v12, a2, a3, a4, a5);
    v9 = v12;
    if (v12 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_3;
    }

LABEL_7:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v12);
    goto LABEL_8;
  }

  llvm::detail::IEEEFloat::toString(&v12, a2, a3, a4, a5);
  v9 = v12;
  if (v12 == &llvm::semPPCDoubleDouble)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v9[2] - 64) <= 0xFFFFFF7F && __p)
  {
    operator delete[](__p);
  }

LABEL_8:
  if (v11 >= 0x41)
  {
    if (v10)
    {
      operator delete[](v10);
    }
  }
}

uint64_t llvm::APFloat::Storage::Storage(uint64_t a1, uint64_t *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a3 == &llvm::semPPCDoubleDouble)
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = *(a2 + 4);
    v9 = *(a2 + 20);
    *a2 = &llvm::semBogus;
    v16 = v6;
    __p = v7;
    LODWORD(v18) = v8;
    BYTE4(v18) = v9 & 0xF;
    llvm::APFloat::Storage::Storage(&v21, &v16);
    if ((*(v16 + 8) - 64) <= 0xFFFFFF7F && __p)
    {
      operator delete[](__p);
    }

    __p = &llvm::semIEEEdouble;
    v20 = 3;
    v19 = -1023;
    llvm::APInt::tcSet(&v18, 0, 1u);
    *a1 = &llvm::semPPCDoubleDouble;
    v10 = operator new[](0x50uLL);
    *v10 = xmmword_1E099CF00;
    v11 = v21;
    if (v21 == &llvm::semPPCDoubleDouble)
    {
      v15 = v22;
      v10[3] = v21;
      v10[4] = v15;
      v13 = __p;
      if (__p != &llvm::semPPCDoubleDouble)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v12 = v22;
      *(v10 + 10) = v23;
      *(v10 + 44) = v24 & 0xF;
      v10[3] = v11;
      v10[4] = v12;
      v13 = __p;
      if (__p != &llvm::semPPCDoubleDouble)
      {
LABEL_9:
        v14 = v18;
        *(v10 + 18) = v19;
        *(v10 + 76) = v20 & 0xF;
LABEL_12:
        v10[7] = v13;
        v10[8] = v14;
        *(a1 + 8) = v10 + 2;
        return a1;
      }
    }

    v14 = v18;
    goto LABEL_12;
  }

  *a1 = &llvm::semBogus;
  *a1 = *a2;
  *(a1 + 8) = a2[1];
  *(a1 + 16) = *(a2 + 4);
  v4 = *(a1 + 20) & 0xF8 | *(a2 + 20) & 7;
  *(a1 + 20) = v4;
  *(a1 + 20) = v4 & 0xF7 | *(a2 + 20) & 8;
  *a2 = &llvm::semBogus;
  return a1;
}

llvm::APFloatBase *llvm::APFloat::APFloat(llvm::APFloatBase *a1, void *a2, unsigned __int8 *a3, size_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = llvm::APFloat::APFloat(a1, a2);
  v9 = *(v7 + 1);
  v8 = (v7 + 8);
  if (v9 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::convertFromString(v8, a3, a4, 1, &v15);
    v10 = v16;
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::convertFromString(v8, a3, a4, 1, &v15);
    v10 = v16;
    if (v16)
    {
LABEL_3:
      v11 = v15;
      v15 = 0;
      goto LABEL_6;
    }
  }

  v11 = 0;
LABEL_6:
  v13 = v11;
  llvm::handleErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v13, &v14);
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  if ((v10 & 1) != 0 && v15)
  {
    (*(*v15 + 8))(v15);
  }

  return a1;
}

uint64_t llvm::APFloat::convert(uint64_t a1, void *a2, int a3, _BYTE *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4 == a2)
  {
    result = 0;
    *a4 = 0;
    return result;
  }

  if (v4 == &llvm::semPPCDoubleDouble)
  {
    v10 = llvm::detail::IEEEFloat::convert(*(a1 + 16) + 8, a2, a3, a4);
    v11 = *(a1 + 8);
    v12 = v5;
    if (v11 == &llvm::semPPCDoubleDouble)
    {
      v13 = *(a1 + 16);
      v14 = *(v13 + 8);
      v12 = (v13 + 8);
      v11 = v14;
    }

    v15 = *(v12 + 1);
    v16 = *(v12 + 4);
    v17 = *(v12 + 20) & 0xF;
    *v12 = &llvm::semBogus;
    v30 = v11;
    __p = v15;
    v32 = v16;
    v33 = v17;
    llvm::APFloat::Storage::Storage(&v34, &v30, a2);
    if ((*(v30 + 2) - 64) <= 0xFFFFFF7F && __p)
    {
      operator delete[](__p);
    }

    llvm::APFloat::Storage::operator=(v5, &v34);
    if (v34.n128_u64[0] == &llvm::semPPCDoubleDouble)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v34);
      return v10;
    }

    if ((*(v34.n128_u64[0] + 8) - 64) > 0xFFFFFF7F)
    {
      return v10;
    }

    v18 = v34.n128_u64[1];
    if (!v34.n128_u64[1])
    {
      return v10;
    }

LABEL_31:
    operator delete[](v18);
    return v10;
  }

  if (a2 == &llvm::semPPCDoubleDouble)
  {
    v10 = llvm::detail::IEEEFloat::convert(a1 + 8, &llvm::semPPCDoubleDoubleLegacy, a3, a4);
    llvm::detail::IEEEFloat::bitcastToAPInt(v5, &v26);
    v34.n128_u64[0] = &llvm::semPPCDoubleDouble;
    v19 = operator new[](0x50uLL);
    *v19 = xmmword_1E099CF00;
    v20 = (v19 + 56);
    v21 = (v19 + 1);
    if (v27 >= 0x41)
    {
      v22 = v26;
    }

    else
    {
      v22 = &v26;
    }

    v23 = *v22;
    LODWORD(__p) = 64;
    v30 = v23;
    llvm::detail::IEEEFloat::initFromDoubleAPInt((v19 + 24), &v30);
    if (v27 >= 0x41)
    {
      v24 = v26;
    }

    else
    {
      v24 = &v26;
    }

    v25 = *(v24 + 1);
    v29 = 64;
    v28 = v25;
    llvm::detail::IEEEFloat::initFromDoubleAPInt(v20, &v28);
    v34.n128_u64[1] = v21;
    llvm::APFloat::Storage::operator=(v5, &v34);
    if (v34.n128_u64[0] == &llvm::semPPCDoubleDouble)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v34);
    }

    else if ((*(v34.n128_u64[0] + 8) - 64) <= 0xFFFFFF7F && v34.n128_u64[1])
    {
      operator delete[](v34.n128_u64[1]);
    }

    if (v27 < 0x41)
    {
      return v10;
    }

    v18 = v26;
    if (!v26)
    {
      return v10;
    }

    goto LABEL_31;
  }

  v6 = a1 + 8;

  return llvm::detail::IEEEFloat::convert(v6, a2, a3, a4);
}

uint64_t llvm::APFloat::convertToInteger(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v25[4] = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 8);
  v23 = v25;
  v24 = 0x400000000;
  if (!v7)
  {
    v8 = 0;
    v11 = v25;
    goto LABEL_9;
  }

  v8 = (v7 + 63) >> 6;
  if (v7 >= 0x101)
  {
    v9 = a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, (v7 + 63) >> 6, 8);
    a1 = v9;
    v10 = v24;
    v11 = v23;
    v12 = v8 - v24;
    if (v8 == v24)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = 0;
  v11 = v25;
  v12 = (v7 + 63) >> 6;
  if (v8)
  {
LABEL_7:
    v13 = a1;
    v14 = v11;
    bzero(v11 + 8 * v10, 8 * v12);
    v11 = v14;
    a1 = v13;
  }

LABEL_8:
  LODWORD(v24) = (v7 + 63) >> 6;
LABEL_9:
  v16 = *(a1 + 8);
  v15 = (a1 + 8);
  v17 = (*(a2 + 12) ^ 1) & 1;
  if (v16 == &llvm::semPPCDoubleDouble)
  {
    v18 = llvm::detail::DoubleAPFloat::convertToInteger(v15, v11, v8, v7, v17, a3, a4);
  }

  else
  {
    v18 = llvm::detail::IEEEFloat::convertToInteger(v15, v11, v8, v7, v17, a3, a4);
  }

  v19 = v18;
  llvm::APInt::APInt(&v21, v7, v23, v24);
  if (*(a2 + 8) >= 0x41u && *a2)
  {
    operator delete[](*a2);
  }

  *a2 = v21;
  *(a2 + 8) = v22;
  v22 = 0;
  if (v23 != v25)
  {
    free(v23);
  }

  return v19;
}

double llvm::APFloat::convertToDouble(void **this)
{
  v12 = *MEMORY[0x1E69E9840];
  if (this[1] == &llvm::semIEEEdouble)
  {
    llvm::detail::IEEEFloat::bitcastToAPInt((this + 1), &v9);
    if (v10 <= 0x40)
    {
      v2 = v9;
      return *&v2;
    }

    v4 = v9;
    v2 = *v9;
LABEL_16:
    operator delete[](v4);
    return *&v2;
  }

  llvm::APFloat::Storage::Storage(&v10, (this + 1));
  llvm::APFloat::convert(&v9, &llvm::semIEEEdouble, 1, &v6);
  if (v10 == &llvm::semPPCDoubleDouble)
  {
    v1 = (v11 + 8);
  }

  else
  {
    v1 = &v10;
  }

  llvm::detail::IEEEFloat::bitcastToAPInt(v1, &__p);
  if (v8 > 0x40)
  {
    v2 = *__p;
    operator delete[](__p);
    v3 = v10;
    if (v10 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_7;
    }

LABEL_13:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v10);
    return *&v2;
  }

  v2 = __p;
  v3 = v10;
  if (v10 == &llvm::semPPCDoubleDouble)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((v3[2] - 64) <= 0xFFFFFF7F)
  {
    v4 = v11;
    if (v11)
    {
      goto LABEL_16;
    }
  }

  return *&v2;
}

float llvm::APFloat::convertToFloat(void **this)
{
  v12 = *MEMORY[0x1E69E9840];
  if (this[1] == &llvm::semIEEEsingle)
  {
    llvm::detail::IEEEFloat::bitcastToAPInt((this + 1), &v9);
    if (v10 <= 0x40)
    {
      LODWORD(v2) = v9;
      return *&v2;
    }

    v4 = v9;
    v2 = *v9;
LABEL_16:
    operator delete[](v4);
    return *&v2;
  }

  llvm::APFloat::Storage::Storage(&v10, (this + 1));
  llvm::APFloat::convert(&v9, &llvm::semIEEEsingle, 1, &v6);
  if (v10 == &llvm::semPPCDoubleDouble)
  {
    v1 = (v11 + 8);
  }

  else
  {
    v1 = &v10;
  }

  llvm::detail::IEEEFloat::bitcastToAPInt(v1, &__p);
  if (v8 > 0x40)
  {
    v2 = *__p;
    operator delete[](__p);
    v3 = v10;
    if (v10 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_7;
    }

LABEL_13:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v10);
    return *&v2;
  }

  LODWORD(v2) = __p;
  v3 = v10;
  if (v10 == &llvm::semPPCDoubleDouble)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((v3[2] - 64) <= 0xFFFFFF7F)
  {
    v4 = v11;
    if (v11)
    {
      goto LABEL_16;
    }
  }

  return *&v2;
}

llvm::APFloat::Storage *llvm::APFloat::Storage::Storage(llvm::APFloat::Storage *this, const llvm::APFloat::Storage *a2)
{
  if (*a2 == &llvm::semPPCDoubleDouble)
  {
    *this = &llvm::semPPCDoubleDouble;
    v4 = *(a2 + 1);
    if (v4)
    {
      v6 = operator new[](0x50uLL);
      *v6 = xmmword_1E099CF00;
      v7 = (v6 + 56);
      v8 = v6 + 1;
      llvm::APFloat::Storage::Storage((v6 + 24), (v4 + 8));
      llvm::APFloat::Storage::Storage(v7, (*(a2 + 1) + 40));
    }

    else
    {
      v8 = 0;
    }

    *(this + 1) = v8;
    return this;
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(this, a2);
    return this;
  }
}

void **llvm::handleErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>@<X0>(void **result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    *result = 0;
    if ((*(*v3 + 48))(v3, &llvm::ErrorList::ID))
    {
      v4 = v3[1];
      v5 = v3[2];
      if (v4 == v5)
      {
        v6 = 0;
      }

      else
      {
        v6 = 0;
        do
        {
          v10 = v6;
          v7 = *v4;
          *v4 = 0;
          if ((*(*v7 + 48))(v7, &llvm::ErrorInfoBase::ID))
          {
            (*(*v7 + 8))(v7);
            v7 = 0;
          }

          v9 = v7;
          llvm::ErrorList::join(&v10, &v9, &v11);
          v6 = v11;
          v11 = 0;
          if (v9)
          {
            (*(*v9 + 8))(v9);
          }

          if (v10)
          {
            (*(*v10 + 8))(v10);
          }

          ++v4;
        }

        while (v4 != v5);
      }

      *a2 = v6;
      return (*(*v3 + 8))(v3);
    }

    else
    {
      result = (*(*v3 + 48))(v3, &llvm::ErrorInfoBase::ID);
      if (result)
      {
        *a2 = 0;
        v8 = *(*v3 + 8);

        return v8(v3);
      }

      else
      {
        *a2 = v3;
      }
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void llvm::ErrorList::join(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  if (!v6)
  {
    goto LABEL_16;
  }

  if (v7)
  {
    if ((*(*v6 + 48))(v6, &llvm::ErrorList::ID))
    {
      v8 = *a1;
      if (*a2)
      {
        v9 = (*(**a2 + 48))(*a2, &llvm::ErrorList::ID);
        v10 = *a2;
        if (v9)
        {
          *a2 = 0;
          v11 = v10[1];
          v12 = v10[2];
          if (v11 == v12)
          {
            goto LABEL_9;
          }

          do
          {
            std::vector<std::unique_ptr<mlir::RewritePattern>>::push_back[abi:nn200100]((v8 + 1), v11++);
          }

          while (v11 != v12);
          if (v10)
          {
LABEL_9:
            (*(*v10 + 8))(v10);
          }

LABEL_34:
          *a3 = *a1;
          goto LABEL_35;
        }
      }

      else
      {
        v10 = 0;
      }

      *a2 = 0;
      v21 = v8[2];
      v20 = v8[3];
      if (v21 >= v20)
      {
        v23 = v8[1];
        v24 = v21 - v23;
        v25 = (v21 - v23) >> 3;
        v26 = v25 + 1;
        if ((v25 + 1) >> 61)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        v27 = v20 - v23;
        if (v27 >> 2 > v26)
        {
          v26 = v27 >> 2;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          v28 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v26;
        }

        if (v28)
        {
          if (v28 >> 61)
          {
            std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
          }

          v29 = operator new(8 * v28);
        }

        else
        {
          v29 = 0;
        }

        v30 = &v29[8 * v25];
        *v30 = v10;
        v22 = v30 + 8;
        memcpy(v29, v23, v24);
        v8[1] = v29;
        v8[2] = v22;
        v8[3] = &v29[8 * v28];
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v21 = v10;
        v22 = v21 + 8;
      }

      v8[2] = v22;
      goto LABEL_34;
    }

    if (!*a2 || !(*(**a2 + 48))(*a2, &llvm::ErrorList::ID))
    {
      v16 = operator new(0x20uLL);
      v17 = *a1;
      *a1 = 0;
      v18 = *a2;
      *a2 = 0;
      *v16 = &unk_1F5B3F088;
      v19 = operator new(0x10uLL);
      *v19 = v17;
      v19[1] = v18;
      v16[1] = v19;
      v16[2] = v19 + 2;
      v16[3] = v19 + 2;
      *a3 = v16;
      return;
    }

    v13 = (*a2 + 8);
    v14 = *v13;
    v31 = *a1;
    *a1 = 0;
    std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::insert(v13, v14, &v31);
    v15 = v31;
    v31 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v7 = *a2;
LABEL_16:
    *a3 = v7;
    *a2 = 0;
    return;
  }

  *a3 = v6;
LABEL_35:
  *a1 = 0;
}

char *std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::insert(char **a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 < v7)
  {
    if (a2 == v6)
    {
      v16 = *a3;
      *a3 = 0;
      *v6 = v16;
      a1[1] = (v6 + 1);
      return v4;
    }

    v8 = a2 + 1;
    v9 = v6 - 1;
    if (v6 < 8)
    {
      a1[1] = v6;
      if (v6 == v8)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v10 = *v9;
      *v9 = 0;
      *v6 = v10;
      a1[1] = (v6 + 1);
      if (v6 == v8)
      {
LABEL_25:
        v28 = *a3;
        *a3 = 0;
        v29 = *v4;
        *v4 = v28;
        if (v29)
        {
          (*(*v29 + 8))(v29);
        }

        return v4;
      }
    }

    v24 = a2 - v6 + 8;
    v25 = v6 - 2;
    do
    {
      v26 = *v25;
      *v25 = 0;
      v27 = *v9;
      *v9 = v26;
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }

      --v9;
      --v25;
      v24 += 8;
    }

    while (v24);
    goto LABEL_25;
  }

  v11 = *a1;
  v12 = ((v6 - *a1) >> 3) + 1;
  if (v12 >> 61)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v13 = v7 - v11;
  if (v13 >> 2 > v12)
  {
    v12 = v13 >> 2;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    v14 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v12;
  }

  v34 = a1;
  if (v14)
  {
    if (v14 >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v15 = operator new(8 * v14);
  }

  else
  {
    v15 = 0;
  }

  v31 = v15;
  v32 = &v15[8 * ((v4 - v11) >> 3)];
  *&v33 = v32;
  *(&v33 + 1) = &v15[8 * v14];
  std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::emplace_back<std::unique_ptr<llvm::ErrorInfoBase>>(&v31, a3);
  v17 = v32;
  memcpy(v33, v4, a1[1] - v4);
  v18 = *a1;
  v19 = v32;
  *&v33 = v33 + a1[1] - v4;
  a1[1] = v4;
  v20 = v4 - v18;
  v21 = &v19[-(v4 - v18)];
  memcpy(v21, v18, v20);
  v22 = *a1;
  *a1 = v21;
  v23 = a1[2];
  *(a1 + 1) = v33;
  *&v33 = v22;
  *(&v33 + 1) = v23;
  v31 = v22;
  v32 = v22;
  if (v22)
  {
    operator delete(v22);
  }

  return v17;
}

void std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::emplace_back<std::unique_ptr<llvm::ErrorInfoBase>>(char **a1, uint64_t *a2)
{
  v4 = a1[2];
  if (v4 != a1[3])
  {
    goto LABEL_19;
  }

  v5 = *a1;
  v6 = a1[1];
  if (v6 > *a1)
  {
    v7 = ((v6 - *a1) >> 3) + 1;
    v8 = &v6[-8 * (v7 / 2)];
    if (v6 != v4)
    {
      do
      {
        v9 = *v6;
        *v6 = 0;
        v10 = *v8;
        *v8 = v9;
        if (v10)
        {
          (*(*v10 + 8))(v10);
        }

        v6 += 8;
        v8 += 8;
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = &v6[8 * (v7 / -2)];
    a1[2] = v8;
    goto LABEL_19;
  }

  v11 = (v4 - v5) >> 2;
  if (v4 == v5)
  {
    v11 = 1;
  }

  if (v11 >> 61)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v12 = v11 >> 2;
  v13 = 8 * v11;
  v14 = operator new(8 * v11);
  v15 = &v14[8 * v12];
  v16 = &v14[v13];
  v17 = v4 - v6;
  if (v4 != v6)
  {
    v18 = (v15 + v17);
    v19 = v17 - 8;
    if ((v17 - 8) > 0x77)
    {
      v24 = v6 >= v15 + (v19 & 0xFFFFFFFFFFFFFFF8) + 8 || v15 >= &v6[(v19 & 0xFFFFFFFFFFFFFFF8) + 8];
      v20 = &v14[8 * v12];
      v21 = v6;
      if (v24)
      {
        v25 = (v19 >> 3) + 1;
        v26 = 8 * (v25 & 0x3FFFFFFFFFFFFFFCLL);
        v20 = (v15 + v26);
        v21 = &v6[v26];
        v27 = (v6 + 16);
        v28 = (v15 + 16);
        v29 = v25 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v30 = *(v27 - 1);
          v31 = *v27;
          *(v27 - 1) = 0uLL;
          *v27 = 0uLL;
          *(v28 - 1) = v30;
          *v28 = v31;
          v27 += 2;
          v28 += 2;
          v29 -= 4;
        }

        while (v29);
        if (v25 == (v25 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_29:
          *a1 = v14;
          a1[1] = v15;
          a1[2] = v18;
          a1[3] = v16;
          do
          {
            v34 = *(v4 - 1);
            v4 -= 8;
            v33 = v34;
            *v4 = 0;
            if (v34)
            {
              (*(*v33 + 8))(v33);
            }
          }

          while (v4 != v6);
          goto LABEL_17;
        }
      }
    }

    else
    {
      v20 = &v14[8 * v12];
      v21 = v6;
    }

    do
    {
      v32 = *v21;
      *v21 = 0;
      v21 += 8;
      *v20 = v32;
      v20 += 8;
    }

    while (v20 != v18);
    goto LABEL_29;
  }

  *a1 = v14;
  a1[1] = v15;
  a1[2] = v15;
  a1[3] = v16;
LABEL_17:
  if (v5)
  {
    operator delete(v5);
  }

LABEL_19:
  v22 = a1[2];
  v23 = *a2;
  *a2 = 0;
  *v22 = v23;
  a1[2] = v22 + 8;
}

char *llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(char *a1, uint64_t *a2, _DWORD *__dst, unint64_t a4, int a5)
{
  __src = a5;
  if ((__dst + 1) <= a4)
  {
    *__dst = a5;
    return (__dst + 1);
  }

  v8 = a4 - __dst;
  memcpy(__dst, &__src, a4 - __dst);
  v9 = *a2;
  if (*a2)
  {
    result = a1;
    v11 = *(a1 + 9);
    v12 = *(a1 + 11);
    v13 = *(a1 + 1);
    v14 = *(a1 + 12);
    v15 = *(a1 + 13);
    v17 = *(a1 + 6);
    v16 = *(a1 + 7);
    v18 = *(a1 + 14);
    v19 = v18 ^ (0xB492B66FBE98F273 * __ROR8__(v11 + *(a1 + 8) + v12 + v13, 37));
    v20 = v12 - 0x4B6D499041670D8DLL * __ROR8__(v14 + v11 + v17, 42);
    v21 = 0xB492B66FBE98F273 * __ROR8__(v15 + *(a1 + 10), 33);
    v22 = *a1 - 0x4B6D499041670D8DLL * v14;
    v23 = v22 + v15;
    v25 = *(a1 + 2);
    v24 = *(a1 + 3);
    v26 = *(a1 + 5);
    v27 = v20 + v26;
    v28 = *(a1 + 4) + v18 + v21;
    v29 = v22 + v13 + v25;
    v30 = v26 + v17 + v28;
    *(a1 + 12) = __ROR8__(v23 + v24 + v19, 21) + v22 + __ROR8__(v29, 44);
    *(a1 + 13) = v30 + v16;
    *(a1 + 14) = __ROR8__(v28 + v16 + v25 + v27, 21) + v28 + __ROR8__(v30, 44);
    *(a1 + 10) = v19;
    *(a1 + 11) = v29 + v24;
    *(a1 + 8) = v21;
    *(a1 + 9) = v27;
    *a2 = v9 + 64;
    v31 = 4 - v8;
    v32 = &a1[4 - v8];
    if (v32 > a4)
    {
      return result;
    }

LABEL_7:
    memcpy(result, &__src + v8, v31);
    return v32;
  }

  result = a1;
  v33 = *(a1 + 15);
  v34 = __ROR8__(v33 ^ 0xB492B66FBE98F273, 49);
  v35 = v33 ^ (v33 >> 47);
  v36 = *(a1 + 1);
  v37 = v36 + v33 + v34;
  v38 = *(a1 + 6);
  v39 = *(a1 + 7);
  v40 = *(a1 + 5);
  v41 = v40 + v34 - 0x4B6D499041670D8DLL * __ROR8__(v38 + v33 - 0x4B6D499041670D8DLL * v33, 42);
  v42 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v33 ^ 0xB492B66FBE98F273)) ^ ((0x9DDFEA08EB382D69 * (v33 ^ 0xB492B66FBE98F273)) >> 47) ^ 0xB492B66FBE98F273);
  v43 = 0x9DDFEA08EB382D69 * (v33 ^ (((0x9DDFEA08EB382D69 * (v35 ^ (0xB492B66FBE98F273 * v33))) ^ v33) >> 47) ^ (0x9DDFEA08EB382D69 * (v35 ^ (0xB492B66FBE98F273 * v33))));
  v44 = 0x9DDFEA08EB382D69 * (v43 ^ (v43 >> 47));
  v45 = 0xB492B66FBE98F273 * __ROR8__(v35 - 0x622015F714C7D297 * (v42 ^ (v42 >> 47)), 33);
  v46 = *a1 - 0x6D8ED9027DD26057 * v33;
  v48 = *(a1 + 2);
  v47 = *(a1 + 3);
  v49 = v46 + v36 + v48;
  v50 = v44 ^ (0xB492B66FBE98F273 * __ROR8__(v37, 37));
  v51 = __ROR8__(v49, 44) + v46 + __ROR8__(v46 + v35 + v47 + v50, 21);
  v52 = v45 + *(a1 + 4) + v44;
  *(a1 + 8) = v45;
  *(a1 + 9) = v41;
  *(a1 + 10) = v50;
  *(a1 + 11) = v49 + v47;
  *(a1 + 12) = v51;
  *(a1 + 13) = v40 + v38 + v52 + v39;
  *(a1 + 14) = __ROR8__(v40 + v38 + v52, 44) + v52 + __ROR8__(v41 + v48 + v39 + v52, 21);
  *a2 = 64;
  v31 = 4 - v8;
  v32 = &a1[4 - v8];
  if (v32 <= a4)
  {
    goto LABEL_7;
  }

  return result;
}

void llvm::APInt::initSlowCase(llvm::APInt *this, uint64_t a2, int a3)
{
  v5 = *(this + 2);
  v6 = v5 + 63;
  if (a2 < 0 && a3)
  {
    llvm::APInt::initSlowCase(v6, this, a2, v5);
  }

  else
  {
    v7 = v6 >> 3;
    v8 = operator new[]((v6 >> 3) & 0x3FFFFFF8);
    bzero(v8, v7 & 0x3FFFFFF8);
    *this = v8;
    *v8 = a2;
  }
}

void *llvm::APInt::initSlowCase(uint64_t a1, const void **a2)
{
  v4 = (*(a1 + 8) + 63) >> 3;
  v5 = operator new[](v4 & 0x3FFFFFF8);
  *a1 = v5;
  v6 = *a2;

  return memcpy(v5, v6, v4 & 0x3FFFFFF8);
}

uint64_t llvm::APInt::APInt(uint64_t a1, unsigned int a2, void *a3, unsigned int a4)
{
  *(a1 + 8) = a2;
  if (a2 > 0x40)
  {
    v10 = (a2 + 63) >> 6;
    v11 = a2;
    v12 = operator new[](8 * v10);
    bzero(v12, 8 * v10);
    *a1 = v12;
    if (v10 >= a4)
    {
      v13 = a4;
    }

    else
    {
      v13 = v10;
    }

    memcpy(v12, a3, (8 * v13));
    v7 = 0xFFFFFFFFFFFFFFFFLL >> -v11;
    v8 = &v12[8 * (v10 - 1)];
    v6 = *v8;
  }

  else
  {
    v6 = *a3;
    *a1 = *a3;
    v7 = 0xFFFFFFFFFFFFFFFFLL >> -a2;
    if (!a2)
    {
      v7 = 0;
    }

    v8 = a1;
  }

  *v8 = v7 & v6;
  return a1;
}

llvm::APInt *llvm::APInt::APInt(llvm::APInt *this, unsigned int a2, unsigned int a3, const unint64_t *a4)
{
  *(this + 2) = a2;
  if (a2 > 0x40)
  {
    v10 = (a2 + 63) >> 6;
    v11 = a2;
    v12 = operator new[](8 * v10);
    bzero(v12, 8 * v10);
    *this = v12;
    if (v10 >= a3)
    {
      v13 = a3;
    }

    else
    {
      v13 = v10;
    }

    memcpy(v12, a4, (8 * v13));
    v7 = 0xFFFFFFFFFFFFFFFFLL >> -v11;
    v8 = &v12[8 * (v10 - 1)];
    v6 = *v8;
  }

  else
  {
    v6 = *a4;
    *this = *a4;
    v7 = 0xFFFFFFFFFFFFFFFFLL >> -a2;
    if (!a2)
    {
      v7 = 0;
    }

    v8 = this;
  }

  *v8 = v7 & v6;
  return this;
}

unsigned int *llvm::APInt::assignSlowCase(unsigned int *this, const llvm::APInt *a2)
{
  if (this == a2)
  {
    return this;
  }

  v2 = *(a2 + 2);
  v3 = this[2];
  v4 = v2 + 63;
  v5 = (v2 + 63) >> 6;
  if (v5 == (v3 + 63) >> 6)
  {
    this[2] = v2;
    if (v2 > 0x40)
    {
      goto LABEL_12;
    }

LABEL_9:
    *this = *a2;
    return this;
  }

  if (v3 >= 0x41 && *this)
  {
    v6 = this;
    v7 = a2;
    operator delete[](*this);
    this = v6;
    a2 = v7;
  }

  this[2] = v2;
  if (v2 < 0x41)
  {
    goto LABEL_9;
  }

  v8 = this;
  v9 = 8 * v5;
  v10 = a2;
  v11 = operator new[](v9);
  a2 = v10;
  v12 = v11;
  this = v8;
  *v8 = v12;
LABEL_12:
  v13 = *this;
  v14 = *a2;

  return memcpy(v13, v14, (v4 >> 3) & 0x3FFFFFF8);
}

uint64_t **llvm::APInt::operator++(uint64_t **result)
{
  v1 = *(result + 2);
  if (v1 >= 0x41)
  {
    v4 = *result;
    v5 = (v1 + 63) >> 6;
    v6 = **result;
    **result = v6 + 1;
    if (v6 == -1)
    {
      v7 = v4[1];
      v4[1] = v7 + 1;
      if (v7 == -1)
      {
        v8 = v4 + 2;
        v9 = v5 - 2;
        do
        {
          if (!v9)
          {
            break;
          }

          --v9;
        }

        while (__CFADD__((*v8++)++, 1));
      }
    }

    v11 = &(*result)[(v5 - 1)];
    *v11 &= 0xFFFFFFFFFFFFFFFFLL >> -v1;
  }

  else
  {
    v2 = *result + 1;
    *result = v2;
    if (v1)
    {
      v3 = 0xFFFFFFFFFFFFFFFFLL >> -v1;
    }

    else
    {
      v3 = 0;
    }

    *result = (v2 & v3);
  }

  return result;
}

uint64_t llvm::APInt::operator+=(uint64_t result, uint64_t **a2)
{
  v2 = *(result + 8);
  if (v2 >= 0x41)
  {
    v5 = 0;
    v6 = *result;
    v7 = *a2;
    v8 = (v2 + 63) >> 6;
    v9 = v8;
    do
    {
      v10 = *v7++;
      v11 = v10 + *v6;
      v12 = __CFADD__(v10, *v6);
      v13 = (v11 + 1) <= *v6;
      if (v5)
      {
        ++v11;
        v5 = v13;
      }

      else
      {
        v5 = v12;
      }

      *v6++ = v11;
      --v9;
    }

    while (v9);
    v14 = (*result + 8 * (v8 - 1));
    *v14 &= 0xFFFFFFFFFFFFFFFFLL >> -v2;
  }

  else
  {
    v3 = *a2 + *result;
    *result = v3;
    if (v2)
    {
      v4 = 0xFFFFFFFFFFFFFFFFLL >> -v2;
    }

    else
    {
      v4 = 0;
    }

    *result = v3 & v4;
  }

  return result;
}

unint64_t llvm::APInt::tcAdd(llvm::APInt *this, unint64_t *a2, unint64_t a3, unsigned int a4)
{
  if (a4)
  {
    v4 = a4;
    do
    {
      v5 = *this;
      v7 = *a2++;
      v6 = v7;
      v8 = v7 + *this;
      v9 = __CFADD__(v7, *this);
      v10 = v5 + v6;
      v11 = v10 + 1 <= v5;
      if (a3)
      {
        v12 = v10 + 1;
      }

      else
      {
        v12 = v8;
      }

      if (a3)
      {
        a3 = v11;
      }

      else
      {
        a3 = v9;
      }

      *this = v12;
      this = (this + 8);
      --v4;
    }

    while (v4);
  }

  return a3;
}

BOOL llvm::APInt::tcAddPart(llvm::APInt *this, unint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    v3 = __CFADD__(*this, a2);
    *this += a2;
    if (!v3)
    {
      return 0;
    }

    v4 = a3 == 1;
    if (a3 != 1)
    {
      v5 = *(this + 1);
      *(this + 1) = v5 + 1;
      if (v5 != -1)
      {
        return 0;
      }

      v6 = 2;
      do
      {
        v7 = v6;
        if (a3 == v6)
        {
          break;
        }

        v8 = *(this + v6++);
        *(this + v7) = v8 + 1;
      }

      while (v8 == -1);
      return v7 >= a3;
    }

    return v4;
  }

  return 1;
}

uint64_t llvm::APInt::operator-=(uint64_t result, unint64_t **a2)
{
  v2 = *(result + 8);
  if (v2 >= 0x41)
  {
    v5 = 0;
    v6 = *result;
    v7 = *a2;
    v8 = (v2 + 63) >> 6;
    v9 = v8;
    do
    {
      v10 = *v7++;
      v11 = *v6 - v10;
      v12 = *v6 < v10;
      v13 = *v6 + ~v10;
      if (v5)
      {
        v5 = v13 >= *v6;
      }

      else
      {
        v13 = v11;
        v5 = v12;
      }

      *v6++ = v13;
      --v9;
    }

    while (v9);
    v14 = (*result + 8 * (v8 - 1));
    *v14 &= 0xFFFFFFFFFFFFFFFFLL >> -v2;
  }

  else
  {
    v3 = *result - *a2;
    *result = v3;
    if (v2)
    {
      v4 = 0xFFFFFFFFFFFFFFFFLL >> -v2;
    }

    else
    {
      v4 = 0;
    }

    *result = v3 & v4;
  }

  return result;
}

unint64_t llvm::APInt::tcSubtract(llvm::APInt *this, unint64_t *a2, unint64_t a3, unsigned int a4)
{
  if (a4)
  {
    v4 = a4;
    do
    {
      v5 = *a2++;
      v6 = *this - v5;
      v7 = *this < v5;
      v8 = *this + ~v5;
      if (a3)
      {
        a3 = v8 >= *this;
      }

      else
      {
        v8 = v6;
        a3 = v7;
      }

      *this = v8;
      this = (this + 8);
      --v4;
    }

    while (v4);
  }

  return a3;
}

unint64_t **llvm::APInt::operator-=(unint64_t **result, unint64_t a2)
{
  v2 = *(result + 2);
  if (v2 >= 0x41)
  {
    v5 = *result;
    v6 = (v2 + 63) >> 6;
    v7 = **result;
    **result = v7 - a2;
    if (v7 < a2)
    {
      v8 = v6 - 2;
      v9 = v5 + 1;
      do
      {
        v10 = v8;
        if ((*v9++)-- != 0)
        {
          break;
        }

        --v8;
      }

      while (v10);
    }

    v12 = &(*result)[(v6 - 1)];
    *v12 &= 0xFFFFFFFFFFFFFFFFLL >> -v2;
  }

  else
  {
    v3 = (*result - a2);
    *result = v3;
    if (v2)
    {
      v4 = 0xFFFFFFFFFFFFFFFFLL >> -v2;
    }

    else
    {
      v4 = 0;
    }

    *result = (v3 & v4);
  }

  return result;
}

uint64_t llvm::APInt::operator*@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  v6 = *(result + 8);
  if (v6 > 0x40)
  {
    v9 = (v6 + 63) >> 6;
    v10 = operator new[](8 * v9);
    v11 = 0;
    *(a3 + 8) = v6;
    *a3 = v10;
    v12 = *v4;
    v13 = *a2;
    v14 = v10;
    v15 = v9;
    do
    {
      result = llvm::APInt::tcMultiplyPart(v14, v12, *(v13 + 8 * v11), 0, (v6 + 63) >> 6, v15, v11 != 0);
      ++v11;
      v14 = (v14 + 8);
      --v15;
    }

    while (v15);
    *(v10 + (v9 - 1)) &= 0xFFFFFFFFFFFFFFFFLL >> -v6;
  }

  else
  {
    v7 = *a2 * *result;
    *(a3 + 8) = v6;
    v8 = 0xFFFFFFFFFFFFFFFFLL >> -v6;
    if (!v6)
    {
      v8 = 0;
    }

    *a3 = v7 & v8;
  }

  return result;
}

uint64_t llvm::APInt::andAssignSlowCase(uint64_t this, const llvm::APInt *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    v3 = *this;
    v4 = *a2;
    v5 = (v2 + 63) >> 6;
    if (v2 <= 0x140 || (v3 < v4 + 8 * v5 ? (v6 = v4 >= v3 + 8 * v5) : (v6 = 1), !v6))
    {
      v7 = 0;
LABEL_13:
      v12 = v5 - v7;
      v13 = 8 * v7;
      v14 = (v3 + v13);
      v15 = (v4 + v13);
      do
      {
        v16 = *v15++;
        *v14++ &= v16;
        --v12;
      }

      while (v12);
      return this;
    }

    v7 = ((v2 + 63) >> 6) & 0x7FFFFFC;
    v8 = (v4 + 16);
    v9 = (v3 + 16);
    v10 = v7;
    do
    {
      v11 = vandq_s8(*v9, *v8);
      v9[-1] = vandq_s8(v9[-1], v8[-1]);
      *v9 = v11;
      v8 += 2;
      v9 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v5 != v7)
    {
      goto LABEL_13;
    }
  }

  return this;
}

uint64_t llvm::APInt::orAssignSlowCase(uint64_t this, const llvm::APInt *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    v3 = *this;
    v4 = *a2;
    v5 = (v2 + 63) >> 6;
    if (v2 <= 0x140 || (v3 < v4 + 8 * v5 ? (v6 = v4 >= v3 + 8 * v5) : (v6 = 1), !v6))
    {
      v7 = 0;
LABEL_13:
      v12 = v5 - v7;
      v13 = 8 * v7;
      v14 = (v3 + v13);
      v15 = (v4 + v13);
      do
      {
        v16 = *v15++;
        *v14++ |= v16;
        --v12;
      }

      while (v12);
      return this;
    }

    v7 = ((v2 + 63) >> 6) & 0x7FFFFFC;
    v8 = (v4 + 16);
    v9 = (v3 + 16);
    v10 = v7;
    do
    {
      v11 = vorrq_s8(*v9, *v8);
      v9[-1] = vorrq_s8(v9[-1], v8[-1]);
      *v9 = v11;
      v8 += 2;
      v9 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v5 != v7)
    {
      goto LABEL_13;
    }
  }

  return this;
}

uint64_t llvm::APInt::xorAssignSlowCase(uint64_t this, const llvm::APInt *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    v3 = *this;
    v4 = *a2;
    v5 = (v2 + 63) >> 6;
    if (v2 <= 0x140 || (v3 < v4 + 8 * v5 ? (v6 = v4 >= v3 + 8 * v5) : (v6 = 1), !v6))
    {
      v7 = 0;
LABEL_13:
      v12 = v5 - v7;
      v13 = 8 * v7;
      v14 = (v3 + v13);
      v15 = (v4 + v13);
      do
      {
        v16 = *v15++;
        *v14++ ^= v16;
        --v12;
      }

      while (v12);
      return this;
    }

    v7 = ((v2 + 63) >> 6) & 0x7FFFFFC;
    v8 = (v4 + 16);
    v9 = (v3 + 16);
    v10 = v7;
    do
    {
      v11 = veorq_s8(*v9, *v8);
      v9[-1] = veorq_s8(v9[-1], v8[-1]);
      *v9 = v11;
      v8 += 2;
      v9 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v5 != v7)
    {
      goto LABEL_13;
    }
  }

  return this;
}

uint64_t llvm::APInt::operator*=(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  if (v4 > 0x40)
  {
    v7 = (v4 + 63) >> 6;
    v6 = operator new[](8 * v7);
    v8 = 0;
    v9 = *a1;
    v10 = *a2;
    v11 = v6;
    v12 = v7;
    do
    {
      llvm::APInt::tcMultiplyPart(v11, v9, *(v10 + 8 * v8), 0, (v4 + 63) >> 6, v12, v8 != 0);
      ++v8;
      v11 = (v11 + 8);
      --v12;
    }

    while (v12);
    *(v6 + (v7 - 1)) &= 0xFFFFFFFFFFFFFFFFLL >> -v4;
    if (v9)
    {
      operator delete[](v9);
    }
  }

  else
  {
    v5 = 0xFFFFFFFFFFFFFFFFLL >> -v4;
    if (!v4)
    {
      v5 = 0;
    }

    v6 = ((*a2 * *a1) & v5);
  }

  *a1 = v6;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t llvm::APInt::tcMultiplyPart(llvm::APInt *this, unint64_t *a2, const unint64_t *a3, unint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  if (a5 >= a6)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (v7)
  {
    if (a3)
    {
      v8 = this;
      v9 = a2;
      if (a7)
      {
        do
        {
          v11 = *v9++;
          v10 = v11;
          if (v11)
          {
            v12 = v10;
            v13 = v10 * a3;
            v14 = HIDWORD(v10);
            v15 = v12 * HIDWORD(a3);
            v16 = HIDWORD(v15) + v14 * HIDWORD(a3);
            v17 = v14 * a3;
            v18 = HIDWORD(v17);
            v19 = ((v15 + v17) << 32) + v12 * a3;
            v20 = v19 + a4;
            v10 = (__PAIR128__((__PAIR128__(v16, v13) + __PAIR128__(v18, v15 << 32)) >> 64, v19) + __PAIR128__(v19 < v13 + (v15 << 32), a4)) >> 64;
            a4 = v20;
          }

          if (__CFADD__(a4, *v8))
          {
            ++v10;
          }

          *v8 += a4;
          v8 = (v8 + 8);
          a4 = v10;
          --v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v21 = *v9++;
          v10 = v21;
          if (v21)
          {
            v22 = v10;
            v23 = v10 * a3;
            v24 = HIDWORD(v10);
            v25 = v22 * HIDWORD(a3);
            v26 = HIDWORD(v25) + v24 * HIDWORD(a3);
            v27 = v24 * a3;
            v28 = HIDWORD(v27);
            v29 = ((v25 + v27) << 32) + v22 * a3;
            v30 = v29 + a4;
            v10 = (__PAIR128__((__PAIR128__(v26, v23) + __PAIR128__(v28, v25 << 32)) >> 64, v29) + __PAIR128__(v29 < v23 + (v25 << 32), a4)) >> 64;
            a4 = v30;
          }

          *v8 = a4;
          v8 = (v8 + 8);
          a4 = v10;
          --v7;
        }

        while (v7);
      }

LABEL_24:
      if (a5 < a6)
      {
        goto LABEL_25;
      }

      goto LABEL_35;
    }

    if (a7)
    {
      v31 = this;
      do
      {
        v10 = __CFADD__(a4, *v31);
        *v31 += a4;
        v31 = (v31 + 8);
        a4 = v10;
        --v7;
      }

      while (v7);
      goto LABEL_24;
    }

    *this = a4;
    if (v7 != 1)
    {
      if (v7 <= 4)
      {
        v33 = 1;
LABEL_32:
        v37 = (this + 8 * v33);
        v38 = v7 - v33;
        do
        {
          *v37++ = 0;
          --v38;
        }

        while (v38);
        goto LABEL_34;
      }

      v34 = (v7 - 1) & 0xFFFFFFFFFFFFFFFCLL;
      v33 = v34 | 1;
      v35 = (this + 24);
      v36 = v34;
      do
      {
        *(v35 - 1) = 0uLL;
        *v35 = 0uLL;
        v35 += 2;
        v36 -= 4;
      }

      while (v36);
      if (v7 - 1 != v34)
      {
        goto LABEL_32;
      }
    }

LABEL_34:
    v10 = 0;
    if (a5 < a6)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

  v10 = a4;
  if (a5 < a6)
  {
LABEL_25:
    *(this + a5) = v10;
    return 0;
  }

LABEL_35:
  if (!v10)
  {
    v39 = 0;
    if (!a3 || a6 >= a5)
    {
      return v39;
    }

    v40 = &a2[a6];
    v41 = a5 - a6;
    while (!*v40++)
    {
      if (!--v41)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t llvm::APInt::compare(llvm::APInt *this, const llvm::APInt *a2)
{
  v2 = *(this + 2);
  if (v2 > 0x40)
  {
    v4 = ((v2 + 63) >> 3) & 0x3FFFFFF8;
    do
    {
      if (!v4)
      {
        return 0;
      }

      v5 = *(*this - 8 + v4);
      v6 = *(*a2 - 8 + v4);
      v4 -= 8;
    }

    while (v5 == v6);
    if (v5 > v6)
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else if (*this < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *this > *a2;
  }
}

uint64_t llvm::APInt::tcCompare(llvm::APInt *this, const unint64_t *a2, const unint64_t *a3)
{
  v3 = a3;
  do
  {
    if (!(v3 * 8))
    {
      return 0;
    }

    v4 = *(this + v3 * 8 - 8);
    v5 = a2[--v3];
  }

  while (v4 == v5);
  if (v4 > v5)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t llvm::APInt::compareSigned(llvm::APInt *this, const llvm::APInt *a2)
{
  v2 = *(this + 2);
  if (v2 > 0x40)
  {
    v10 = *(*this + 8 * ((v2 - 1) >> 6)) & (1 << (v2 - 1));
    v11 = *(a2 + 2);
    v12 = v11 - 1;
    if (v11 >= 0x41)
    {
      v13 = (*a2 + 8 * (v12 >> 6));
    }

    else
    {
      v13 = a2;
    }

    if ((v10 != 0) == ((*v13 >> v12) & 1))
    {
      v14 = ((v2 + 63) >> 3) & 0x3FFFFFF8;
      do
      {
        if (!v14)
        {
          return 0;
        }

        v15 = *(*this - 8 + v14);
        v16 = *(*a2 - 8 + v14);
        v14 -= 8;
      }

      while (v15 == v16);
      if (v15 > v16)
      {
        return 1;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    else if (v10)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v3 = -v2;
    v4 = v2 == 0;
    if (v2)
    {
      v5 = (*this << -v2) >> -v2;
    }

    else
    {
      v5 = 0;
    }

    v6 = (*a2 << v3) >> v3;
    if (v4)
    {
      v6 = 0;
    }

    v7 = v5 < v6;
    v8 = v5 > v6;
    if (v7)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v8;
    }
  }
}

void *llvm::APInt::setBitsSlowCase(void *this, unsigned int a2, unsigned int a3)
{
  v3 = a2 >> 6;
  v4 = a3 >> 6;
  v5 = -1 << a2;
  if ((a3 & 0x3F) != 0)
  {
    v6 = 0xFFFFFFFFFFFFFFFFLL >> -(a3 & 0x3F);
    if (v4 == v3)
    {
      v5 &= v6;
    }

    else
    {
      *(*this + 8 * v4) |= v6;
    }
  }

  *(*this + 8 * v3) |= v5;
  v7 = v3 + 1;
  if (v7 < v4)
  {
    do
    {
      *(*this + 8 * v7++) = -1;
    }

    while (v4 != v7);
  }

  return this;
}

uint64_t llvm::APInt::flipAllBitsSlowCase(uint64_t this)
{
  v1 = *(this + 8);
  if (!v1)
  {
    v5 = 0;
LABEL_5:
    *this &= v5;
    return this;
  }

  v2 = *this;
  v3 = (v1 + 63) >> 6;
  if (v1 < 0xC1)
  {
    v4 = 0;
LABEL_9:
    v9 = v3 - v4;
    v10 = &v2->i64[v4];
    do
    {
      *v10 = ~*v10;
      ++v10;
      --v9;
    }

    while (v9);
    goto LABEL_11;
  }

  v4 = ((v1 + 63) >> 6) & 0x7FFFFFC;
  v6 = v2 + 1;
  v7 = v4;
  do
  {
    v8 = vmvnq_s8(*v6);
    v6[-1] = vmvnq_s8(v6[-1]);
    *v6 = v8;
    v6 += 2;
    v7 -= 4;
  }

  while (v7);
  if (v3 != v4)
  {
    goto LABEL_9;
  }

LABEL_11:
  v5 = 0xFFFFFFFFFFFFFFFFLL >> -v1;
  if (v1 < 0x41)
  {
    goto LABEL_5;
  }

  this = *this + 8 * (v3 - 1);
  *this &= v5;
  return this;
}

void llvm::APInt::zext(const void **this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = this;
  if (a2 > 0x40)
  {
    v7 = *(this + 2);
    if (v7 == a2)
    {
      *(a3 + 8) = a2;
      v8 = (a2 + 63) >> 3;
      v9 = operator new[](v8 & 0x3FFFFFF8);
      *a3 = v9;
      v10 = *v3;

      memcpy(v9, v10, v8 & 0x3FFFFFF8);
    }

    else
    {
      v11 = (a2 + 63) >> 6;
      v13 = operator new[](8 * v11);
      v14 = v13;
      *(a3 + 8) = a2;
      *a3 = v13;
      if (v7 >= 0x41)
      {
        v3 = *v3;
      }

      v15 = (v7 + 63) >> 6;
      memcpy(v13, v3, 8 * v15);

      bzero(&v14[8 * v15], (8 * (v11 - v15)));
    }
  }

  else
  {
    v5 = *this;
    *(a3 + 8) = a2;
    v6 = 0xFFFFFFFFFFFFFFFFLL >> -a2;
    if (!a2)
    {
      v6 = 0;
    }

    *a3 = v5 & v6;
  }
}

void llvm::APInt::extractBits(llvm::APInt *this@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(this + 2);
  if (v5 <= 0x40)
  {
    v6 = *this >> a3;
    *(a4 + 8) = a2;
    if (a2 <= 0x40)
    {
LABEL_3:
      v7 = 0xFFFFFFFFFFFFFFFFLL >> -a2;
      if (!a2)
      {
        v7 = 0;
      }

      *a4 = v6 & v7;
      return;
    }

LABEL_8:
    v12 = (a2 + 63) >> 3;
    v13 = operator new[](v12 & 0x3FFFFFF8);
    bzero(v13, v12 & 0x3FFFFFF8);
    *a4 = v13;
    *v13 = v6;
    return;
  }

  v8 = a3 & 0x3F;
  v9 = a3 >> 6;
  v10 = (a2 + a3 - 1) >> 6;
  v11 = v10 - v9;
  if (v10 == v9)
  {
    v6 = *(*this + 8 * v9) >> v8;
    *(a4 + 8) = a2;
    if (a2 <= 0x40)
    {
      goto LABEL_3;
    }

    goto LABEL_8;
  }

  if ((a3 & 0x3F) != 0)
  {
    if (a2 >= 0x41)
    {
      v14 = a2 + 63;
      v21 = this;
      v22 = a2;
      v15 = operator new[]((v14 >> 3) & 0x3FFFFFF8);
      bzero(v15, (v14 >> 3) & 0x3FFFFFF8);
      this = v21;
      a2 = v22;
      *v15 = 0;
      v34 = v15;
    }

    else
    {
      v34 = 0;
      if (!a2)
      {
        v27 = 0;
LABEL_32:
        v33 = v34 & v27;
        *(a4 + 8) = a2;
        *a4 = v33;
        return;
      }

      v14 = a2 + 63;
      v15 = &v34;
    }

    v23 = (*this + 8 * v9 + 8);
    v24 = v9 + 1;
    v25 = v14 >> 6;
    do
    {
      if (v24 < (v5 + 63) >> 6)
      {
        v26 = *v23;
      }

      else
      {
        v26 = 0;
      }

      *v15++ = (v26 << (64 - v8)) | (*(v23++ - 1) >> v8);
      ++v24;
      --v25;
    }

    while (v25);
    v27 = 0xFFFFFFFFFFFFFFFFLL >> -a2;
    if (a2 > 0x40)
    {
      v28 = v34;
      *(v34 + 8 * ((v14 >> 6) - 1)) &= v27;
      *(a4 + 8) = a2;
      v29 = operator new[]((v14 >> 3) & 0x3FFFFFF8);
      *a4 = v29;
      memcpy(v29, v28, (v14 >> 3) & 0x3FFFFFF8);
      operator delete[](v28);
      return;
    }

    goto LABEL_32;
  }

  v16 = (*this + 8 * v9);
  *(a4 + 8) = a2;
  if (a2 > 0x40)
  {
    v30 = (a2 + 63) >> 6;
    v31 = a2;
    v17 = operator new[](8 * v30);
    bzero(v17, 8 * v30);
    if (v30 >= v11 + 1)
    {
      v32 = v11 + 1;
    }

    else
    {
      v32 = v30;
    }

    memcpy(v17, v16, (8 * v32));
    v18 = 0xFFFFFFFFFFFFFFFFLL >> -v31;
    v20 = &v17[8 * (v30 - 1)];
    v19 = *v20;
  }

  else
  {
    v17 = *v16;
    v18 = 0xFFFFFFFFFFFFFFFFLL >> -a2;
    if (!a2)
    {
      v18 = 0;
    }

    v19 = *v16;
    v20 = a4;
  }

  *a4 = v17;
  *v20 = v18 & v19;
}

unint64_t llvm::hash_value(llvm *this, const llvm::APInt *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(this + 2);
  if (v2 > 0x40)
  {
    v4 = llvm::hashing::detail::hash_combine_range_impl<char const>(*this, *this + (((v2 + 63) >> 3) & 0x3FFFFFF8));
    *&v7[4] = 0u;
    v8 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    v14 = 0xFF51AFD7ED558CCDLL;
    v6 = *(this + 2);
    *v7 = v4;
  }

  else
  {
    *&v7[4] = 0u;
    v8 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    v14 = 0xFF51AFD7ED558CCDLL;
    v6 = v2;
    *v7 = *this;
  }

  return llvm::hashing::detail::hash_combine_recursive_helper::combine(&v6, 0, &v7[8], &v10 + 8);
}

unint64_t llvm::DenseMapInfo<llvm::APInt,void>::getHashValue(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 0x40)
  {
    v5 = llvm::hashing::detail::hash_combine_range_impl<char const>(*a1, *a1 + (((v1 + 63) >> 3) & 0x3FFFFFF8));
    LODWORD(v8) = *(a1 + 8);
    HIDWORD(v8) = v5;
    v6 = __ROR8__(v5 + 12, 12);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v8 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v8 ^ 0xFF51AFD7ED558CCDLL)))) ^ ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v8 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v8 ^ 0xFF51AFD7ED558CCDLL)))) >> 47))) ^ v5;
  }

  else
  {
    LODWORD(v7) = *(a1 + 8);
    *(&v7 + 4) = *a1;
    v2 = __ROR8__(*a1 + 12, 12);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ ((0x9DDFEA08EB382D69 * (v2 ^ v7 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v2 ^ v7 ^ 0xFF51AFD7ED558CCDLL)))) ^ ((0x9DDFEA08EB382D69 * (v2 ^ ((0x9DDFEA08EB382D69 * (v2 ^ v7 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v2 ^ v7 ^ 0xFF51AFD7ED558CCDLL)))) >> 47))) ^ *a1;
  }
}

void llvm::APInt::getLoBits(llvm::APInt *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *(this + 2);
  *(a3 + 8) = v6;
  if (v6 >= 0x41)
  {
    v8 = operator new[](((v6 + 63) >> 3) & 0x3FFFFFF8);
    bzero(v8, ((v6 + 63) >> 3) & 0x3FFFFFF8);
    *v8 = 0;
    v7 = v8;
    *a3 = v8;
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = 0;
    v8 = a3;
    *a3 = 0;
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  if (a2 > 0x40)
  {
    v9 = a2 >> 6;
    if ((a2 & 0x3F) != 0)
    {
      v7[v9] |= 0xFFFFFFFFFFFFFFFFLL >> -(a2 & 0x3F);
    }

    *v7 = -1;
    if (a2 >= 0x80)
    {
      memset(v7 + 1, 255, 8 * v9 - 8);
    }
  }

  else
  {
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -a2;
  }

LABEL_11:
  if (v6 <= 0x40)
  {
    *a3 &= *this;
    return;
  }

  v10 = *a3;
  v11 = *this;
  v12 = (v6 + 63) >> 6;
  if (v6 < 0x141 || (v10 < v11 + 8 * v12 ? (v13 = v11 >= v10 + 8 * v12) : (v13 = 1), !v13))
  {
    v14 = 0;
LABEL_24:
    v19 = v12 - v14;
    v20 = 8 * v14;
    v21 = (v10 + v20);
    v22 = (v11 + v20);
    do
    {
      v23 = *v22++;
      *v21++ &= v23;
      --v19;
    }

    while (v19);
    return;
  }

  v14 = ((v6 + 63) >> 6) & 0x7FFFFFC;
  v15 = (v11 + 16);
  v16 = (v10 + 16);
  v17 = v14;
  do
  {
    v18 = vandq_s8(*v16, *v15);
    v16[-1] = vandq_s8(v16[-1], v15[-1]);
    *v16 = v18;
    v15 += 2;
    v16 += 2;
    v17 -= 4;
  }

  while (v17);
  if (v12 != v14)
  {
    goto LABEL_24;
  }
}
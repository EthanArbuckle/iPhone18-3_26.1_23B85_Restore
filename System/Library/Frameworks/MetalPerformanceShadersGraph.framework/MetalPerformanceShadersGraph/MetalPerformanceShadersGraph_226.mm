char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::PixelVectorType,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t a2)
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
  v7[24] = 30;
  *(v7 + 25) = *(v7 + 25) & 0xF000 | 0x540;
  *(v7 + 2) = &unk_1F5B42410;
  *(v7 + 4) = a2;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::VectorType,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v9[24] = 29;
  *(v9 + 25) = *(v9 + 25) & 0xF000 | 0x540;
  *(v9 + 2) = &unk_1F5B42488;
  *(v9 + 4) = a2;
  *(v9 + 5) = a3;
  return result;
}

char *llvm::itanium_demangle::PixelVectorType::printLeft(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 13) > v6)
  {
    v7 = (v5 + 1005);
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

  qmemcpy(&v5[v4], "pixel vector[", 13);
  a2[1] += 13;
  v10 = *(a1 + 16);
  (*(*v10 + 32))(v10, a2);
  if ((*(v10 + 9) & 0xC0) != 0x40)
  {
    (*(*v10 + 40))(v10, a2);
  }

  result = *a2;
  v12 = a2[1];
  v13 = a2[2];
  if ((v12 + 1) > v13)
  {
    v14 = (v12 + 993);
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
  v12[result] = 93;
  ++a2[1];
  return result;
}

char *llvm::itanium_demangle::VectorType::printLeft(uint64_t a1, char **a2)
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
  if ((v6 + 8) > v7)
  {
    v8 = (v6 + 1000);
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
      goto LABEL_19;
    }

    v6 = a2[1];
  }

  *&v6[v5] = 0x5B726F7463657620;
  a2[1] += 8;
  v11 = *(a1 + 24);
  if (v11)
  {
    (*(*v11 + 32))(v11, a2);
    if ((*(v11 + 9) & 0xC0) != 0x40)
    {
      (*(*v11 + 40))(v11, a2);
    }
  }

  result = *a2;
  v13 = a2[1];
  v14 = a2[2];
  if ((v13 + 1) > v14)
  {
    v15 = (v13 + 993);
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
    result = realloc(result, v17);
    *a2 = result;
    if (result)
    {
      v13 = a2[1];
      goto LABEL_18;
    }

LABEL_19:
    abort();
  }

LABEL_18:
  v13[result] = 93;
  ++a2[1];
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::ArrayType,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v9[24] = 15;
  *(v9 + 25) = *(v9 + 25) & 0xF000 | 0x400;
  *(v9 + 2) = &unk_1F5B42500;
  *(v9 + 4) = a2;
  *(v9 + 5) = a3;
  return result;
}

uint64_t llvm::itanium_demangle::ArrayType::printRight(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(*a2 + v5 - 1) != 93)
  {
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
      v4 = realloc(v4, v9);
      *a2 = v4;
      if (!v4)
      {
        goto LABEL_27;
      }

      v5 = *(a2 + 8);
    }

    *(v4 + v5) = 32;
    v4 = *a2;
    v5 = *(a2 + 8) + 1;
    *(a2 + 8) = v5;
  }

  v10 = *(a2 + 16);
  if (v5 + 1 > v10)
  {
    v11 = v5 + 993;
    v12 = 2 * v10;
    if (v12 <= v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v12;
    }

    *(a2 + 16) = v13;
    v4 = realloc(v4, v13);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_27;
    }

    v5 = *(a2 + 8);
  }

  *(v4 + v5) = 91;
  ++*(a2 + 8);
  v14 = *(a1 + 24);
  if (v14)
  {
    (*(*v14 + 32))(*(a1 + 24), a2);
    if ((*(v14 + 9) & 0xC0) != 0x40)
    {
      (*(*v14 + 40))(v14, a2);
    }
  }

  v15 = *a2;
  v16 = *(a2 + 8);
  v17 = *(a2 + 16);
  if (v16 + 1 > v17)
  {
    v18 = v16 + 993;
    v19 = 2 * v17;
    if (v19 <= v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = v19;
    }

    *(a2 + 16) = v20;
    v15 = realloc(v15, v20);
    *a2 = v15;
    if (v15)
    {
      v16 = *(a2 + 8);
      goto LABEL_24;
    }

LABEL_27:
    abort();
  }

LABEL_24:
  *(v15 + v16) = 93;
  ++*(a2 + 8);
  v21 = *(**(a1 + 16) + 40);

  return v21();
}

uint64_t llvm::itanium_demangle::ArrayType::printInitListAsType(uint64_t a1, char **a2, uint64_t **a3)
{
  v3 = *(a1 + 16);
  if (*(v3 + 8) == 8 && *(v3 + 24) == 4 && **(v3 + 16) == 1918986339)
  {
    return llvm::itanium_demangle::NodeArray::printAsString(a3, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t llvm::itanium_demangle::NodeArray::printAsString(uint64_t **a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 1) > v6)
  {
    v7 = 2 * v6;
    if (v7 <= (v5 + 993))
    {
      v8 = (v5 + 993);
    }

    else
    {
      v8 = v7;
    }

    a2[2] = v8;
    v9 = realloc(v4, v8);
    *a2 = v9;
    if (!v9)
    {
      goto LABEL_160;
    }

    v10 = a2[1];
    a2[1] = v10 + 1;
    v10[v9] = 34;
    v11 = a1[1];
    if (!v11)
    {
      goto LABEL_153;
    }

    goto LABEL_9;
  }

  a2[1] = v5 + 1;
  v5[v4] = 34;
  v11 = a1[1];
  if (v11)
  {
LABEL_9:
    v12 = 0;
    v13 = *a1;
    v14 = &v13[v11];
    do
    {
      v15 = *v13;
      if (*(*v13 + 8) != 77)
      {
LABEL_152:
        result = 0;
        a2[1] = v5;
        return result;
      }

      v16 = *(v15 + 40);
      if (v16)
      {
        v17 = 0;
        v18 = *(v15 + 32);
        do
        {
          v19 = *v18;
          if ((v19 - 48) > 9 || v17 > 25)
          {
            goto LABEL_152;
          }

          v17 = v19 + 10 * v17 - 48;
          ++v18;
          --v16;
        }

        while (v16);
        if (v17 > 255)
        {
          goto LABEL_152;
        }

        if ((v12 & 1) == 0)
        {
LABEL_21:
          if (v17 > 10)
          {
            goto LABEL_35;
          }

          goto LABEL_47;
        }
      }

      else
      {
        v17 = 0;
        if ((v12 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      if ((v17 - 48) < 0xA)
      {
        goto LABEL_28;
      }

      if (v17 > 64)
      {
        if ((v17 - 65) >= 6 && (v17 - 97) >= 6)
        {
          goto LABEL_38;
        }

LABEL_28:
        v21 = *a2;
        v22 = a2[1];
        v23 = a2[2];
        if ((v22 + 2) > v23)
        {
          v24 = (v22 + 994);
          v25 = 2 * v23;
          if (v25 <= v24)
          {
            v26 = v24;
          }

          else
          {
            v26 = v25;
          }

          a2[2] = v26;
          v21 = realloc(v21, v26);
          *a2 = v21;
          if (!v21)
          {
            goto LABEL_160;
          }

          v22 = a2[1];
        }

        *&v22[v21] = 8738;
        a2[1] += 2;
        if (v17 > 10)
        {
LABEL_35:
          if (v17 <= 12)
          {
            goto LABEL_80;
          }

          if (v17 == 13)
          {
LABEL_104:
            v33 = *a2;
            v34 = a2[1];
            v68 = a2[2];
            if ((v34 + 2) > v68)
            {
              v69 = (v34 + 994);
              v70 = 2 * v68;
              if (v70 <= v69)
              {
                v71 = v69;
              }

              else
              {
                v71 = v70;
              }

              a2[2] = v71;
              v33 = realloc(v33, v71);
              *a2 = v33;
              if (!v33)
              {
                goto LABEL_160;
              }

              v34 = a2[1];
            }

            v12 = 0;
            v39 = 29276;
LABEL_111:
            *&v34[v33] = v39;
LABEL_112:
            a2[1] += 2;
            goto LABEL_113;
          }

          if (v17 == 34)
          {
            goto LABEL_97;
          }

LABEL_38:
          if (v17 == 92)
          {
            v27 = *a2;
            v28 = a2[1];
            v29 = a2[2];
            if ((v28 + 2) > v29)
            {
              v30 = (v28 + 994);
              v31 = 2 * v29;
              if (v31 <= v30)
              {
                v32 = v30;
              }

              else
              {
                v32 = v31;
              }

              a2[2] = v32;
              v27 = realloc(v27, v32);
              *a2 = v27;
              if (!v27)
              {
                goto LABEL_160;
              }

              v28 = a2[1];
            }

            v12 = 0;
            *&v28[v27] = 23644;
            goto LABEL_112;
          }

          goto LABEL_115;
        }

LABEL_47:
        if (v17 > 8)
        {
          if (v17 == 9)
          {
            v33 = *a2;
            v34 = a2[1];
            v50 = a2[2];
            if ((v34 + 2) > v50)
            {
              v51 = (v34 + 994);
              v52 = 2 * v50;
              if (v52 <= v51)
              {
                v53 = v51;
              }

              else
              {
                v53 = v52;
              }

              a2[2] = v53;
              v33 = realloc(v33, v53);
              *a2 = v33;
              if (!v33)
              {
                goto LABEL_160;
              }

              v34 = a2[1];
            }

            v12 = 0;
            v39 = 29788;
          }

          else
          {
            v33 = *a2;
            v34 = a2[1];
            v40 = a2[2];
            if ((v34 + 2) > v40)
            {
              v41 = (v34 + 994);
              v42 = 2 * v40;
              if (v42 <= v41)
              {
                v43 = v41;
              }

              else
              {
                v43 = v42;
              }

              a2[2] = v43;
              v33 = realloc(v33, v43);
              *a2 = v33;
              if (!v33)
              {
                goto LABEL_160;
              }

              v34 = a2[1];
            }

            v12 = 0;
            v39 = 28252;
          }

          goto LABEL_111;
        }

        if (v17 == 7)
        {
          v44 = *a2;
          v45 = a2[1];
          v46 = a2[2];
          if ((v45 + 2) > v46)
          {
            v47 = (v45 + 994);
            v48 = 2 * v46;
            if (v48 <= v47)
            {
              v49 = v47;
            }

            else
            {
              v49 = v48;
            }

            a2[2] = v49;
            v44 = realloc(v44, v49);
            *a2 = v44;
            if (!v44)
            {
              goto LABEL_160;
            }

            v45 = a2[1];
          }

          v12 = 0;
          *&v45[v44] = 24924;
          goto LABEL_112;
        }

        if (v17 == 8)
        {
          v33 = *a2;
          v34 = a2[1];
          v35 = a2[2];
          if ((v34 + 2) > v35)
          {
            v36 = (v34 + 994);
            v37 = 2 * v35;
            if (v37 <= v36)
            {
              v38 = v36;
            }

            else
            {
              v38 = v37;
            }

            a2[2] = v38;
            v33 = realloc(v33, v38);
            *a2 = v33;
            if (!v33)
            {
              goto LABEL_160;
            }

            v34 = a2[1];
          }

          v12 = 0;
          v39 = 25180;
          goto LABEL_111;
        }

        goto LABEL_115;
      }

      if (v17 <= 10)
      {
        goto LABEL_47;
      }

      if (v17 <= 12)
      {
LABEL_80:
        if (v17 == 11)
        {
          v33 = *a2;
          v34 = a2[1];
          v58 = a2[2];
          if ((v34 + 2) > v58)
          {
            v59 = (v34 + 994);
            v60 = 2 * v58;
            if (v60 <= v59)
            {
              v61 = v59;
            }

            else
            {
              v61 = v60;
            }

            a2[2] = v61;
            v33 = realloc(v33, v61);
            *a2 = v33;
            if (!v33)
            {
              goto LABEL_160;
            }

            v34 = a2[1];
          }

          v12 = 0;
          v39 = 30300;
        }

        else
        {
          v33 = *a2;
          v34 = a2[1];
          v54 = a2[2];
          if ((v34 + 2) > v54)
          {
            v55 = (v34 + 994);
            v56 = 2 * v54;
            if (v56 <= v55)
            {
              v57 = v55;
            }

            else
            {
              v57 = v56;
            }

            a2[2] = v57;
            v33 = realloc(v33, v57);
            *a2 = v33;
            if (!v33)
            {
              goto LABEL_160;
            }

            v34 = a2[1];
          }

          v12 = 0;
          v39 = 26204;
        }

        goto LABEL_111;
      }

      if (v17 == 13)
      {
        goto LABEL_104;
      }

      if (v17 == 34)
      {
LABEL_97:
        v62 = *a2;
        v63 = a2[1];
        v64 = a2[2];
        if ((v63 + 2) > v64)
        {
          v65 = (v63 + 994);
          v66 = 2 * v64;
          if (v66 <= v65)
          {
            v67 = v65;
          }

          else
          {
            v67 = v66;
          }

          a2[2] = v67;
          v62 = realloc(v62, v67);
          *a2 = v62;
          if (!v62)
          {
            goto LABEL_160;
          }

          v63 = a2[1];
        }

        v12 = 0;
        *&v63[v62] = 8796;
        goto LABEL_112;
      }

LABEL_115:
      if (v17 < 32 || v17 == 127)
      {
        v79 = *a2;
        v80 = a2[1];
        v81 = v80 + 1;
        v82 = a2[2];
        if ((v80 + 1) > v82)
        {
          v83 = (v80 + 993);
          if (2 * v82 <= v83)
          {
            v84 = v83;
          }

          else
          {
            v84 = 2 * v82;
          }

          a2[2] = v84;
          v79 = realloc(v79, v84);
          *a2 = v79;
          if (!v79)
          {
            goto LABEL_160;
          }

          v80 = a2[1];
          v81 = v80 + 1;
        }

        a2[1] = v81;
        v80[v79] = 92;
        if (v17 >= 8)
        {
          v85 = *a2;
          v86 = a2[1];
          v87 = v86 + 1;
          v88 = a2[2];
          if ((v86 + 1) > v88)
          {
            v89 = (v86 + 993);
            if (2 * v88 <= v89)
            {
              v90 = v89;
            }

            else
            {
              v90 = 2 * v88;
            }

            a2[2] = v90;
            v85 = realloc(v85, v90);
            *a2 = v85;
            if (!v85)
            {
              goto LABEL_160;
            }

            v86 = a2[1];
            v87 = v86 + 1;
          }

          a2[1] = v87;
          v86[v85] = 120;
          if (v17 >= 0x10)
          {
            v91 = a0123456789abcd_1[v17 >> 4];
            v92 = *a2;
            v93 = a2[1];
            v94 = v93 + 1;
            v95 = a2[2];
            if ((v93 + 1) > v95)
            {
              v96 = (v93 + 993);
              if (2 * v95 <= v96)
              {
                v97 = v96;
              }

              else
              {
                v97 = 2 * v95;
              }

              a2[2] = v97;
              v92 = realloc(v92, v97);
              *a2 = v92;
              if (!v92)
              {
                goto LABEL_160;
              }

              v93 = a2[1];
              v94 = v93 + 1;
            }

            a2[1] = v94;
            v93[v92] = v91;
          }
        }

        v98 = a0123456789abcd_1[v17 & 0xF];
        v99 = *a2;
        v100 = a2[1];
        v101 = v100 + 1;
        v102 = a2[2];
        if ((v100 + 1) > v102)
        {
          v103 = (v100 + 993);
          if (2 * v102 <= v103)
          {
            v104 = v103;
          }

          else
          {
            v104 = 2 * v102;
          }

          a2[2] = v104;
          v99 = realloc(v99, v104);
          *a2 = v99;
          if (!v99)
          {
            goto LABEL_160;
          }

          v100 = a2[1];
          v101 = v100 + 1;
        }

        a2[1] = v101;
        v100[v99] = v98;
        v12 = 1;
      }

      else
      {
        v72 = *a2;
        v73 = a2[1];
        v74 = v73 + 1;
        v75 = a2[2];
        if ((v73 + 1) > v75)
        {
          v76 = (v73 + 993);
          v77 = 2 * v75;
          if (v77 <= v76)
          {
            v78 = v76;
          }

          else
          {
            v78 = v77;
          }

          a2[2] = v78;
          v72 = realloc(v72, v78);
          *a2 = v72;
          if (!v72)
          {
            goto LABEL_160;
          }

          v73 = a2[1];
          v74 = v73 + 1;
        }

        v12 = 0;
        a2[1] = v74;
        v73[v72] = v17;
      }

LABEL_113:
      ++v13;
    }

    while (v13 != v14);
  }

LABEL_153:
  v106 = *a2;
  v107 = a2[1];
  v108 = v107 + 1;
  v109 = a2[2];
  if ((v107 + 1) > v109)
  {
    v110 = (v107 + 993);
    if (2 * v109 <= v110)
    {
      v111 = v110;
    }

    else
    {
      v111 = 2 * v109;
    }

    a2[2] = v111;
    v106 = realloc(v106, v111);
    *a2 = v106;
    if (v106)
    {
      v107 = a2[1];
      v108 = v107 + 1;
      goto LABEL_159;
    }

LABEL_160:
    abort();
  }

LABEL_159:
  a2[1] = v108;
  v107[v106] = 34;
  return 1;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::PointerToMemberType,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v11 = *(a3 + 9);
  v9[24] = 14;
  *(v9 + 25) = v11 & 0xC0 | 0x500 | *(v9 + 25) & 0xF000;
  *(v9 + 2) = &unk_1F5B42578;
  *(v9 + 4) = a2;
  *(v9 + 5) = a3;
  return result;
}

uint64_t llvm::itanium_demangle::PointerToMemberType::hasRHSComponentSlow(uint64_t a1)
{
  v1 = *(a1 + 24);
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

char *llvm::itanium_demangle::PointerToMemberType::printLeft(uint64_t a1, char **a2)
{
  (*(**(a1 + 24) + 32))(*(a1 + 24));
  v4 = *(a1 + 24);
  v5 = *(v4 + 9);
  v6 = (v5 >> 8) & 3;
  if (!v6)
  {
    goto LABEL_8;
  }

  if (v6 == 2)
  {
    if ((*(*v4 + 8))(v4, a2))
    {
LABEL_8:
      v8 = *a2;
      v9 = a2[1];
      v10 = a2[2];
      if ((v9 + 1) > v10)
      {
        v11 = (v9 + 993);
        v12 = 2 * v10;
        if (v12 <= v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = v12;
        }

        a2[2] = v13;
        v8 = realloc(v8, v13);
        *a2 = v8;
        if (!v8)
        {
          goto LABEL_31;
        }

        v9 = a2[1];
      }

      v14 = 40;
      goto LABEL_22;
    }

    v4 = *(a1 + 24);
    v5 = *(v4 + 9);
  }

  v7 = (v5 >> 10) & 3;
  if (!v7 || v7 == 2 && (*(*v4 + 16))(v4, a2))
  {
    goto LABEL_8;
  }

  v8 = *a2;
  v9 = a2[1];
  v15 = a2[2];
  if ((v9 + 1) > v15)
  {
    v16 = (v9 + 993);
    v17 = 2 * v15;
    if (v17 <= v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = v17;
    }

    a2[2] = v18;
    v8 = realloc(v8, v18);
    *a2 = v8;
    if (!v8)
    {
      goto LABEL_31;
    }

    v9 = a2[1];
  }

  v14 = 32;
LABEL_22:
  v9[v8] = v14;
  ++a2[1];
  v19 = *(a1 + 16);
  (*(*v19 + 32))(v19, a2);
  if ((*(v19 + 9) & 0xC0) != 0x40)
  {
    (*(*v19 + 40))(v19, a2);
  }

  result = *a2;
  v21 = a2[1];
  v22 = a2[2];
  if ((v21 + 3) > v22)
  {
    v23 = (v21 + 995);
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
    result = realloc(result, v25);
    *a2 = result;
    if (result)
    {
      v21 = a2[1];
      goto LABEL_30;
    }

LABEL_31:
    abort();
  }

LABEL_30:
  v26 = &v21[result];
  v26[2] = 42;
  *v26 = 14906;
  a2[1] += 3;
  return result;
}

uint64_t llvm::itanium_demangle::PointerToMemberType::printRight(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(v4 + 9);
  v6 = (v5 >> 8) & 3;
  if (v6)
  {
    if (v6 != 2)
    {
LABEL_5:
      v7 = (v5 >> 10) & 3;
      if (v7 && (v7 != 2 || !(*(*v4 + 16))(v4, a2)))
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    if (((*(*v4 + 8))(v4, a2) & 1) == 0)
    {
      v4 = *(a1 + 24);
      v5 = *(v4 + 9);
      goto LABEL_5;
    }
  }

LABEL_8:
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  if (v9 + 1 > v10)
  {
    v11 = v9 + 993;
    v12 = 2 * v10;
    if (v12 <= v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v12;
    }

    *(a2 + 16) = v13;
    v8 = realloc(v8, v13);
    *a2 = v8;
    if (!v8)
    {
      abort();
    }

    v9 = *(a2 + 8);
  }

  *(v8 + v9) = 41;
  ++*(a2 + 8);
LABEL_15:
  v14 = *(**(a1 + 24) + 40);

  return v14();
}

uint64_t llvm::itanium_demangle::ElaboratedTypeSpefType::printLeft(void *a1, char **a2)
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
        goto LABEL_19;
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
  if (v5 + 1 <= v12)
  {
    goto LABEL_15;
  }

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
LABEL_19:
    abort();
  }

  v5 = a2[1];
  v11 = v5 + 1;
LABEL_15:
  a2[1] = v11;
  v13[v5] = 32;
  v16 = a1[4];
  result = (*(*v16 + 32))(v16, a2);
  if ((*(v16 + 9) & 0xC0) != 0x40)
  {
    v18 = *(*v16 + 40);

    return v18(v16, a2);
  }

  return result;
}

uint64_t llvm::itanium_demangle::PointerType::hasRHSComponentSlow(uint64_t a1)
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

char *llvm::itanium_demangle::PointerType::printLeft(uint64_t a1, char **a2)
{
  v4 = *(a1 + 16);
  if (*(v4 + 8) == 11)
  {
    v5 = *(v4 + 16);
    if (*(v5 + 8) == 8 && *(v5 + 24) == 11)
    {
      v6 = *(v5 + 16);
      v7 = *v6;
      v8 = *(v6 + 3);
      if (v7 == 0x6A626F5F636A626FLL && v8 == 0x7463656A626F5F63)
      {
        v28 = (a2 + 1);
        v35 = a2[1];
        v36 = a2[2];
        v37 = *a2;
        if (v35 + 3 > v36)
        {
          v38 = v4;
          v39 = v35 + 995;
          v40 = 2 * v36;
          if (v40 <= v39)
          {
            v41 = v39;
          }

          else
          {
            v41 = v40;
          }

          a2[2] = v41;
          v42 = realloc(v37, v41);
          *a2 = v42;
          if (!v42)
          {
            goto LABEL_61;
          }

          v37 = v42;
          v35 = *v28;
          v4 = v38;
        }

        v43 = &v37[v35];
        v43[2] = 60;
        *v43 = 25705;
        v27 = *v28 + 3;
        *v28 = v27;
        v44 = *(v4 + 32);
        if (v44)
        {
          v45 = *(v4 + 24);
          v46 = v27 + v44;
          v47 = a2[2];
          v48 = *a2;
          if (v27 + v44 > v47)
          {
            if (2 * v47 <= v46 + 992)
            {
              v49 = v46 + 992;
            }

            else
            {
              v49 = 2 * v47;
            }

            a2[2] = v49;
            v48 = realloc(v48, v49);
            *a2 = v48;
            if (!v48)
            {
              goto LABEL_61;
            }

            v27 = *v28;
          }

          memcpy(&v48[v27], v45, v44);
          v27 = *v28 + v44;
          *v28 = v27;
        }

        v50 = a2[2];
        result = *a2;
        if (v27 + 1 > v50)
        {
          v51 = v27 + 993;
          v52 = 2 * v50;
          if (v52 <= v51)
          {
            v53 = v51;
          }

          else
          {
            v53 = v52;
          }

          a2[2] = v53;
          result = realloc(result, v53);
          *a2 = result;
          if (!result)
          {
            goto LABEL_61;
          }

          v27 = *v28;
        }

        v34 = 62;
        goto LABEL_39;
      }
    }
  }

  (*(*v4 + 32))(v4, a2);
  v10 = *(a1 + 16);
  if ((v10[10] & 3) == 0 || (v10[10] & 3) == 2 && (*(*v10 + 8))(v10, a2))
  {
    v11 = *a2;
    v12 = a2[1];
    v13 = a2[2];
    if ((v12 + 1) > v13)
    {
      v14 = (v12 + 993);
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
        goto LABEL_61;
      }

      v12 = a2[1];
    }

    v12[v11] = 32;
    ++a2[1];
  }

  v17 = *(a1 + 16);
  v18 = *(v17 + 9);
  v19 = (v18 >> 8) & 3;
  if (v19)
  {
    if (v19 != 2)
    {
LABEL_22:
      v20 = (v18 >> 10) & 3;
      if (v20 && (v20 != 2 || !(*(*v17 + 16))(v17, a2)))
      {
        goto LABEL_32;
      }

      goto LABEL_25;
    }

    if (((*(*v17 + 8))(v17, a2) & 1) == 0)
    {
      v17 = *(a1 + 16);
      v18 = *(v17 + 9);
      goto LABEL_22;
    }
  }

LABEL_25:
  v21 = *a2;
  v22 = a2[1];
  v23 = a2[2];
  if ((v22 + 1) > v23)
  {
    v24 = (v22 + 993);
    v25 = 2 * v23;
    if (v25 <= v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = v25;
    }

    a2[2] = v26;
    v21 = realloc(v21, v26);
    *a2 = v21;
    if (!v21)
    {
      goto LABEL_61;
    }

    v22 = a2[1];
  }

  v22[v21] = 40;
  ++a2[1];
LABEL_32:
  v28 = (a2 + 1);
  v27 = a2[1];
  v29 = a2[2];
  result = *a2;
  if (v27 + 1 > v29)
  {
    v31 = v27 + 993;
    v32 = 2 * v29;
    if (v32 <= v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = v32;
    }

    a2[2] = v33;
    result = realloc(result, v33);
    *a2 = result;
    if (result)
    {
      v27 = *v28;
      goto LABEL_38;
    }

LABEL_61:
    abort();
  }

LABEL_38:
  v34 = 42;
LABEL_39:
  result[v27] = v34;
  ++*v28;
  return result;
}

uint64_t llvm::itanium_demangle::PointerType::printRight(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 16);
  if (*(result + 8) != 11 || (v5 = *(result + 16), *(v5 + 8) != 8) || *(v5 + 24) != 11 || ((v6 = *(v5 + 16), v7 = *v6, v8 = *(v6 + 3), v7 == 0x6A626F5F636A626FLL) ? (v9 = v8 == 0x7463656A626F5F63) : (v9 = 0), !v9))
  {
    v10 = *(result + 9);
    v11 = (v10 >> 8) & 3;
    if (v11)
    {
      if (v11 == 2)
      {
        if ((*(*result + 8))(result, a2))
        {
          goto LABEL_15;
        }

        result = *(a1 + 16);
        v10 = *(result + 9);
      }

      v12 = (v10 >> 10) & 3;
      if (v12 && (v12 != 2 || !(*(*result + 16))(result, a2)))
      {
LABEL_22:
        v19 = *(**(a1 + 16) + 40);

        return v19();
      }
    }

LABEL_15:
    v13 = *a2;
    v14 = *(a2 + 8);
    v15 = *(a2 + 16);
    if (v14 + 1 > v15)
    {
      v16 = v14 + 993;
      v17 = 2 * v15;
      if (v17 <= v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = v17;
      }

      *(a2 + 16) = v18;
      v13 = realloc(v13, v18);
      *a2 = v13;
      if (!v13)
      {
        abort();
      }

      v14 = *(a2 + 8);
    }

    *(v13 + v14) = 41;
    ++*(a2 + 8);
    goto LABEL_22;
  }

  return result;
}

uint64_t llvm::itanium_demangle::ReferenceType::hasRHSComponentSlow(uint64_t a1)
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

uint64_t llvm::itanium_demangle::ReferenceType::printLeft(uint64_t result, char **a2)
{
  v2 = *(result + 28);
  if ((v2 & 1) == 0)
  {
    v4 = result;
    *(result + 28) = 1;
    result = llvm::itanium_demangle::ReferenceType::collapse(result);
    if (!v5)
    {
LABEL_40:
      *(v4 + 28) = v2;
      return result;
    }

    v6 = result;
    v7 = v5;
    (*(*v5 + 32))(v5, a2);
    if ((*(v7 + 10) & 3) == 0 || (*(v7 + 10) & 3) == 2 && (*(*v7 + 8))(v7, a2))
    {
      v8 = *a2;
      v9 = a2[1];
      v10 = a2[2];
      if ((v9 + 1) > v10)
      {
        v11 = (v9 + 993);
        v12 = 2 * v10;
        if (v12 <= v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = v12;
        }

        a2[2] = v13;
        v8 = realloc(v8, v13);
        *a2 = v8;
        if (!v8)
        {
          goto LABEL_42;
        }

        v9 = a2[1];
      }

      v9[v8] = 32;
      ++a2[1];
    }

    v14 = *(v7 + 9);
    v15 = (v14 >> 8) & 3;
    if (!v15)
    {
      goto LABEL_20;
    }

    if (v15 == 2)
    {
      if ((*(*v7 + 8))(v7, a2))
      {
        goto LABEL_20;
      }

      v14 = *(v7 + 9);
    }

    v16 = (v14 >> 10) & 3;
    if (v16 && (v16 != 2 || !(*(*v7 + 16))(v7, a2)))
    {
LABEL_27:
      if (v6)
      {
        v23 = "&&";
      }

      else
      {
        v23 = "&";
      }

      if (v6)
      {
        v24 = 2;
      }

      else
      {
        v24 = 1;
      }

      v25 = *a2;
      v26 = a2[1];
      v27 = &v26[v24];
      v28 = a2[2];
      if (&v26[v24] <= v28)
      {
        goto LABEL_39;
      }

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
LABEL_39:
        result = memcpy(&v26[v25], v23, v24);
        a2[1] += v24;
        goto LABEL_40;
      }

LABEL_42:
      abort();
    }

LABEL_20:
    v17 = *a2;
    v18 = a2[1];
    v19 = a2[2];
    if ((v18 + 1) > v19)
    {
      v20 = (v18 + 993);
      v21 = 2 * v19;
      if (v21 <= v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = v21;
      }

      a2[2] = v22;
      v17 = realloc(v17, v22);
      *a2 = v17;
      if (!v17)
      {
        goto LABEL_42;
      }

      v18 = a2[1];
    }

    v18[v17] = 40;
    ++a2[1];
    goto LABEL_27;
  }

  return result;
}

uint64_t llvm::itanium_demangle::ReferenceType::printRight(uint64_t result, uint64_t a2)
{
  v2 = *(result + 28);
  if ((v2 & 1) == 0)
  {
    v4 = result;
    *(result + 28) = 1;
    result = llvm::itanium_demangle::ReferenceType::collapse(result);
    if (!v5)
    {
LABEL_18:
      *(v4 + 28) = v2;
      return result;
    }

    v6 = v5;
    v7 = *(v5 + 9);
    v8 = (v7 >> 8) & 3;
    if (!v8)
    {
      goto LABEL_10;
    }

    if (v8 == 2)
    {
      if ((*(*v5 + 8))(v5, a2))
      {
        goto LABEL_10;
      }

      v7 = *(v6 + 9);
    }

    v9 = (v7 >> 10) & 3;
    if (v9 && (v9 != 2 || !(*(*v6 + 16))(v6, a2)))
    {
LABEL_17:
      result = (*(*v6 + 40))(v6, a2);
      goto LABEL_18;
    }

LABEL_10:
    v10 = *a2;
    v11 = *(a2 + 8);
    v12 = *(a2 + 16);
    if (v11 + 1 > v12)
    {
      v13 = v11 + 993;
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
      v10 = realloc(v10, v15);
      *a2 = v10;
      if (!v10)
      {
        abort();
      }

      v11 = *(a2 + 8);
    }

    *(v10 + v11) = 41;
    ++*(a2 + 8);
    goto LABEL_17;
  }

  return result;
}

uint64_t llvm::itanium_demangle::ReferenceType::collapse(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 16);
  __ptr = v15;
  v13 = v15;
  v14 = &v16;
  memset(v15, 0, sizeof(v15));
  for (i = (*(*v2 + 24))(v2); *(i + 8) == 13; i = (*(*v4 + 24))(v4))
  {
    v4 = *(i + 16);
    if (*(i + 24) < v1)
    {
      v1 = *(i + 24);
    }

    v5 = v13;
    v6 = __ptr;
    if (v13 == v14)
    {
      v8 = v13 - __ptr;
      if (__ptr == v15)
      {
        v9 = malloc(2 * (v13 - __ptr));
        if (!v9)
        {
LABEL_21:
          abort();
        }

        if (v13 != v15)
        {
          v10 = v9;
          memmove(v9, __ptr, v8);
          v9 = v10;
        }

        __ptr = v9;
      }

      else
      {
        v9 = realloc(__ptr, 2 * (v13 - __ptr));
        __ptr = v9;
        if (!v9)
        {
          goto LABEL_21;
        }
      }

      v14 = &v9[8 * (v8 >> 2)];
      v6 = v9;
      *&v9[v8] = v4;
      v13 = &v9[v8 + 8];
      v7 = (v8 + 8) >> 3;
      if (v7 < 2)
      {
        continue;
      }
    }

    else
    {
      *v13 = v4;
      v13 += 8;
      v7 = (v5 + 8 - __ptr) >> 3;
      if (v7 < 2)
      {
        continue;
      }
    }

    if (v4 == *&v6[(4 * v7 - 4) & 0xFFFFFFFFFFFFFFF8])
    {
      break;
    }
  }

  if (__ptr != v15)
  {
    free(__ptr);
  }

  return v1;
}

float __divsc3(float a1, float a2, float a3, float a4)
{
  v4 = fmaxf(fabsf(a3), fabsf(a4));
  v5 = LODWORD(v4) >> 23;
  v6 = -INFINITY;
  v7 = __clz(LODWORD(v4));
  v8 = ((LODWORD(v4) << (v7 - 8) >> 23) - v7 - 119);
  if (LODWORD(v4) >= 0x800000)
  {
    v8 = (v5 - 127);
  }

  if (v4 != 0.0)
  {
    v6 = v8;
  }

  if (v5 == 255)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if ((LODWORD(v9) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v10 = v9;
  v24 = -v9;
  if (a3 == 0.0 || (v25 = (LODWORD(a3) >> 23), v25 == 255))
  {
LABEL_32:
    if (a4 == 0.0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

  v26 = LODWORD(a3) & 0x7FFFFF;
  if (!(LODWORD(a3) >> 23))
  {
    v27 = __clz(v26);
    v28 = v26 << (v27 - 8);
    v25 = 9 - v27;
    v26 = v28 & 0xFF7FFFFF;
  }

  v21 = __OFADD__(v25, v24);
  v29 = v25 - v9;
  if (v21)
  {
    v29 = (v29 >> 31) ^ 0x80000000;
  }

  v30 = LODWORD(a3) & 0x80000000;
  if (v29 < 255)
  {
    if (v29 <= 0)
    {
      v40 = v26 | v30 | 0x800000;
      if (v29 <= -125)
      {
        v41 = -125;
      }

      else
      {
        v41 = v29;
      }

      a3 = *&v40 * COERCE_FLOAT((v41 << 23) + 1056964608);
      if (a4 == 0.0)
      {
        goto LABEL_10;
      }

      goto LABEL_33;
    }

    LODWORD(a3) = v30 | (v29 << 23) | v26;
    goto LABEL_32;
  }

  a3 = COERCE_FLOAT(v30 | 0x7F000000) + COERCE_FLOAT(v30 | 0x7F000000);
  if (a4 == 0.0)
  {
    goto LABEL_10;
  }

LABEL_33:
  v31 = (LODWORD(a4) >> 23);
  if (v31 != 255)
  {
    v32 = LODWORD(a4) & 0x7FFFFF;
    if (!(LODWORD(a4) >> 23))
    {
      v33 = __clz(v32);
      v34 = v32 << (v33 - 8);
      v31 = 9 - v33;
      v32 = v34 & 0xFF7FFFFF;
    }

    v21 = __OFADD__(v31, v24);
    v35 = v31 - v9;
    if (v21)
    {
      v35 = (v35 >> 31) ^ 0x80000000;
    }

    v36 = LODWORD(a4) & 0x80000000;
    if (v35 < 255)
    {
      if (v35 <= 0)
      {
        if (v35 <= -125)
        {
          v35 = -125;
        }

        a4 = COERCE_FLOAT(v32 | v36 | 0x800000) * COERCE_FLOAT((v35 << 23) + 1056964608);
      }

      else
      {
        LODWORD(a4) = v36 | (v35 << 23) | v32;
      }
    }

    else
    {
      a4 = COERCE_FLOAT(v36 | 0x7F000000) + COERCE_FLOAT(v36 | 0x7F000000);
    }
  }

LABEL_10:
  v11 = (a4 * a4) + (a3 * a3);
  *&v12 = ((a4 * a2) + (a1 * a3)) / v11;
  v13 = -v10;
  if (*&v12 != 0.0)
  {
    v14 = ((a4 * a2) + (a1 * a3)) / v11;
    v15 = (v12 >> 23);
    if (v15 != 255)
    {
      v16 = LODWORD(v14) & 0x7FFFFF;
      v17 = __clz(LODWORD(v14) & 0x7FFFFF);
      v18 = (LODWORD(v14) & 0x7FFFFF) << (v17 - 8);
      v19 = 9 - v17;
      v20 = v18 & 0xFF7FFFFF;
      if (!(v12 >> 23))
      {
        v16 = v20;
        v15 = v19;
      }

      v21 = __OFADD__(v15, v13);
      v22 = v15 + v13;
      if (v21)
      {
        v22 = (v22 >> 31) ^ 0x80000000;
      }

      v23 = v12 & 0x80000000;
      if (v22 < 255)
      {
        if (v22 <= 0)
        {
          v37 = v16 | v23 | 0x800000;
          if (v22 <= -125)
          {
            v38 = -125;
          }

          else
          {
            v38 = v22;
          }

          *&v12 = *&v37 * COERCE_FLOAT((v38 << 23) + 1056964608);
        }

        else
        {
          v12 = v23 | (v22 << 23) | v16;
        }
      }

      else
      {
        *&v12 = COERCE_FLOAT(v23 | 0x7F000000) + COERCE_FLOAT(v23 | 0x7F000000);
      }
    }
  }

  return *&v12;
}

GPU::RuntimeExecutionReport *GPU::RuntimeExecutionReport::RuntimeExecutionReport(GPU::RuntimeExecutionReport *this, ModuleOp a2)
{
  *this = a2;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = this + 56;
  *(this + 6) = 0x600000000;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 30) = 0;
  *(this + 16) = this + 144;
  *(this + 17) = 0x600000000;
  *(this + 24) = 0;
  v4 = this;
  mlir::detail::walk<mlir::ForwardIterator>(a2.state, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::RuntimeExecutionReport::RuntimeExecutionReport(mlir::ModuleOp)::$_0>, &v4, 1);
  return this;
}

void sub_1E05C0E10()
{
  v3 = *(v0 + 128);
  if (v3 == v2)
  {
    llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>>>::~DenseMap(v1);
  }

  free(v3);
  llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>>>::~DenseMap(v1);
}

uint64_t GPURegionRuntime::createEntryInfos(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    operator new();
  }

  return 1;
}

void sub_1E05C1420()
{
  MEMORY[0x1E12E5B90](v0, 0x10A1C40C95EAB1CLL);
  v2 = *(v1 + 464);
  *(v1 + 464) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  llvm::sys::RWMutexImpl::~RWMutexImpl((v1 + 448));
  llvm::sys::RWMutexImpl::~RWMutexImpl((v1 + 432));
  std::condition_variable::~condition_variable((v1 + 384));
  std::mutex::~mutex((v1 + 320));
  llvm::DenseMap<mlir::Operation *,unsigned long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned long long>>::~DenseMap(v1 + 288);
}

void sub_1E05C14D4(uint64_t a1)
{
  MEMORY[0x1E12E5B90](a1, 0x10A1C401F8146F4);
  std::default_delete<GPURegionRuntime::MPSRuntimeEntryInfo>::operator()[abi:ne200100](v1);
  _Unwind_Resume(v2);
}

void sub_1E05C150C(_Unwind_Exception *a1)
{
  MEMORY[0x1E12E5B90](v2, 0x10A0C402A504889);
  std::default_delete<GPURegionRuntime::MPSRuntimeEntryInfo>::operator()[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

unint64_t GPURegionRuntime::MPSRuntimeEntryInfo::postHandlerCreationInit(mlir::Operation **this, GPURegionRuntime *a2)
{
  v53 = a2;
  v3 = *this;
  if (!*(*this + 47) || (v55.var0 = "mps.fullyPlacedOnANE", v55.var1 = 20, result = mlir::Operation::getInherentAttr(*this, v55), (v5 & 1) == 0))
  {
    v56.var0 = "mps.fullyPlacedOnANE";
    v56.var1 = 20;
    result = mlir::DictionaryAttr::get((v3 + 56), v56);
  }

  if (result && *(*result + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    operator new();
  }

  v6 = this[4];
  if (v6)
  {
    v7 = **(v6 + 2);
    v8 = *(((v7 + 16 * ((*(v7 + 44) >> 23) & 1) + ((*(v7 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v7 + 40) + 8);
    v9 = v8 ? v8 - 8 : 0;
    v10 = *(v9 + 40);
    v51 = v9 + 32;
    if (v10 != v9 + 32)
    {
      v11 = &mlir::detail::TypeIDResolver<mlir::mpsx::ReturnStitchedOp,void>::id;
      v12 = &mlir::detail::TypeIDResolver<mlir::mps::IdentityOp,void>::id;
      while (1)
      {
        result = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v10, v5);
        v13 = *(result + 44);
        if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id)
        {
          break;
        }

        if ((v13 & 0x7FFFFF) != 0)
        {
          goto LABEL_13;
        }

        v54 = result;
        result = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>((*(v6 + 1) + 248), &v54);
        if (!result)
        {
LABEL_92:
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v5 = *(result + 24);
        if ((*(v5 + 56) & 1) == 0 && (*(v5 + 57) & 1) == 0)
        {
          v14 = v54;
          v15 = *(*(v54 + 48) + 16);
          if (v15 != &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id)
          {
            v14 = 0;
          }

          v52 = v14;
          if (!v14)
          {
            goto LABEL_24;
          }

          v16 = v5;
          result = mlir::placement::RegionCall::getRegionType(&v52);
          v5 = v16;
          if (result)
          {
            v15 = *(*(v54 + 48) + 16);
LABEL_24:
            if (v15 != v11 && v15 != v12)
            {
              goto LABEL_13;
            }
          }
        }

        result = (*(*v6 + 80))(v6);
LABEL_13:
        v10 = *(v10 + 8);
        if (v10 == v51)
        {
          goto LABEL_73;
        }
      }

      v18 = *(result + 16 * ((v13 >> 23) & 1) + ((v13 >> 21) & 0x7F8) + 32 * *(result + 40) + 72);
      if (v18)
      {
        v19 = v18 - 8;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19 + 32;
      v21 = *(v19 + 40);
LABEL_35:
      if (v21 == v20)
      {
        goto LABEL_13;
      }

      result = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v21, v5);
      v22 = *(v6 + 1);
      v23 = v22[32];
      if (!*&v23)
      {
        goto LABEL_92;
      }

      v24 = 0x9DDFEA08EB382D69 * (((((result >> 3) & 0x3FFFFFF) << 6) | 8) ^ HIDWORD(result));
      v25 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(result) ^ (v24 >> 47) ^ v24)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(result) ^ (v24 >> 47) ^ v24)) >> 47));
      v26 = vcnt_s8(v23);
      v26.i16[0] = vaddlv_u8(v26);
      if (v26.u32[0] > 1uLL)
      {
        v27 = v25;
        if (v25 >= *&v23)
        {
          v27 = v25 % *&v23;
        }
      }

      else
      {
        v27 = v25 & (*&v23 - 1);
      }

      v28 = *(*&v22[31] + 8 * v27);
      if (!v28)
      {
        goto LABEL_92;
      }

      v29 = *v28;
      if (!v29)
      {
        goto LABEL_92;
      }

      if (v26.u32[0] < 2uLL)
      {
        v30 = *&v23 - 1;
        while (1)
        {
          v31 = v29[1];
          if (v31 == v25)
          {
            if (v29[2] == result)
            {
              goto LABEL_49;
            }
          }

          else if ((v31 & v30) != v27)
          {
            goto LABEL_92;
          }

          v29 = *v29;
          if (!v29)
          {
            goto LABEL_92;
          }
        }
      }

      while (1)
      {
        v35 = v29[1];
        if (v35 == v25)
        {
          if (v29[2] == result)
          {
LABEL_49:
            v5 = v29[3];
            if (*(v5 + 56) & 1) != 0 || (*(v5 + 57))
            {
              goto LABEL_33;
            }

            v32 = *(*(result + 48) + 16);
            if (v32 == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id)
            {
              v33 = result;
            }

            else
            {
              v33 = 0;
            }

            v52 = v33;
            if (v32 != &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id)
            {
              if (v32 != v11 && v32 != v12)
              {
                goto LABEL_34;
              }

LABEL_33:
              result = (*(*v6 + 80))(v6);
              goto LABEL_34;
            }

            v36 = result;
            v37 = v12;
            v38 = v11;
            v39 = v5;
            result = mlir::placement::RegionCall::getRegionType(&v52);
            v5 = v39;
            v11 = v38;
            v12 = v37;
            if (!result)
            {
              goto LABEL_33;
            }

            v40 = *(*(v36 + 48) + 16);
            if (v40 == v11 || v40 == v37)
            {
              goto LABEL_33;
            }

LABEL_34:
            v21 = *(v21 + 8);
            goto LABEL_35;
          }
        }

        else
        {
          if (v35 >= *&v23)
          {
            v35 %= *&v23;
          }

          if (v35 != v27)
          {
            goto LABEL_92;
          }
        }

        v29 = *v29;
        if (!v29)
        {
          goto LABEL_92;
        }
      }
    }
  }

LABEL_73:
  if (*(v53 + 240) == 1)
  {
    v42 = this[2];
    if ((*(v42 + 46) & 0x80) != 0)
    {
      v43 = *(v42 + 17);
      if (v43)
      {
        v44 = 0;
        v45 = *(v42 + 9);
        do
        {
          v52 = *(v45 + 32 * v44 + 24);
          result = mlir::Value::getDefiningOp(&v52);
          v54 = result;
          if (result)
          {
            v46 = *(result + 36);
            if (v46)
            {
              v47 = result - 16;
            }

            else
            {
              v47 = 0;
            }

            if (v46)
            {
              v48 = 0;
              while (1)
              {
                NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v47, v48);
                if (NextResultAtOffset == v52)
                {
                  break;
                }

                if (v46 == ++v48)
                {
                  v48 = v46;
                  break;
                }
              }
            }

            else
            {
              v48 = 0;
            }

            v50 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>(v53 + 31, &v54);
            if (!v50)
            {
              goto LABEL_92;
            }

            result = (*(*v50[3] + 56))(v50[3], v48);
          }

          ++v44;
        }

        while (v44 != v43);
      }
    }
  }

  return result;
}

uint64_t GPURegionRuntime::initializeOps(uint64_t this)
{
  if (*(this + 576))
  {
    v1 = *(this + 584);
    if (v1)
    {
      v2 = 24 * v1;
      v3 = *(this + 568);
      while ((*v3 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v3 += 3;
        v2 -= 24;
        if (!v2)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      v3 = *(this + 568);
    }

    v4 = *(this + 568) + 24 * v1;
    if (v3 != v4)
    {
LABEL_9:
      v15 = *v3[2];
      v5 = *(this + 568);
      v6 = *(this + 584);
      if (v6)
      {
        v7 = v15;
        v8 = ((v15 >> 4) ^ (v15 >> 9)) & (v6 - 1);
        v9 = (v5 + 24 * v8);
        v10 = *v9;
        if (v15 == *v9)
        {
          goto LABEL_17;
        }

        v11 = 1;
        while (v10 != -4096)
        {
          v12 = v8 + v11++;
          v8 = v12 & (v6 - 1);
          v9 = (v5 + 24 * v8);
          v10 = *v9;
          if (v15 == *v9)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
        v7 = v15;
      }

      v9 = (v5 + 24 * v6);
LABEL_17:
      *(this + 592) = v9[2];
      v14[0] = &v15;
      v14[1] = this;
      v13 = this;
      mlir::detail::walk<mlir::ForwardIterator>(v7, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPURegionRuntime::initializeOps(void)::$_0>, v14, 1);
      this = v13;
      while (1)
      {
        v3 += 3;
        if (v3 == v4)
        {
          break;
        }

        if ((*v3 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          if (v3 != v4)
          {
            goto LABEL_9;
          }

          break;
        }
      }
    }
  }

LABEL_21:
  *(this + 592) = 0;
  return this;
}

uint64_t GPURegionRuntime::initOp(GPURegionRuntime *this, mlir::Operation *a2, GPU::MPSGraphKernelDAG *a3)
{
  v16[0] = *(*(a2 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(v16);
  v6 = strlen(AttrData);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v13 = v6;
  if (v6)
  {
    memmove(&__dst, AttrData, v6);
  }

  *(&__dst + v7) = 0;
  v8 = std::__hash_table<std::__hash_value_type<std::string,MPSMLIROps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIROps>>>::find<std::string>(this + 1, &__dst);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  switch(*(v8 + 10))
  {
    case 1:
      GPURegionRuntime::createOp<GPU::AbsoluteOpHandler>();
    case 2:
      GPURegionRuntime::createOp<GPU::AbsoluteSquareOpHandler>();
    case 3:
      GPURegionRuntime::createOp<GPU::ACosOpHandler>();
    case 4:
      GPURegionRuntime::createOp<GPU::ACoshOpHandler>();
    case 5:
      GPURegionRuntime::createOp<GPU::AddOpHandler>();
    case 6:
      GPURegionRuntime::createOp<GPU::AllocOpHandler>();
    case 7:
      GPURegionRuntime::createOp<GPU::AndOpHandler>();
    case 8:
      GPURegionRuntime::createOp<GPU::ASinOpHandler>();
    case 9:
      GPURegionRuntime::createOp<GPU::ASinhOpHandler>();
    case 0xA:
      GPURegionRuntime::createOp<GPU::ATanOpHandler>();
    case 0xB:
      GPURegionRuntime::createOp<GPU::ATan2OpHandler>();
    case 0xC:
      GPURegionRuntime::createOp<GPU::ATanhOpHandler>();
    case 0xD:
      GPURegionRuntime::createOp<GPU::AssignVariableOpHandler>();
    case 0xE:
      GPURegionRuntime::createOp<GPU::BandPartOpHandler>();
    case 0xF:
      GPURegionRuntime::createOp<GPU::BatchToSpaceOpHandler>();
    case 0x11:
      GPURegionRuntime::createOp<GPU::BitwiseAndOpHandler>();
    case 0x12:
      GPURegionRuntime::createOp<GPU::BitwiseLeftShiftOpHandler>();
    case 0x13:
      GPURegionRuntime::createOp<GPU::BitwiseNotOpHandler>();
    case 0x14:
      GPURegionRuntime::createOp<GPU::BitwiseOrOpHandler>();
    case 0x15:
      GPURegionRuntime::createOp<GPU::BitwisePopcountOpHandler>();
    case 0x16:
      GPURegionRuntime::createOp<GPU::BitwiseRightShiftOpHandler>();
    case 0x17:
      GPURegionRuntime::createOp<GPU::BitwiseXorOpHandler>();
    case 0x18:
      GPURegionRuntime::createOp<GPU::BroadcastGradientArgsOpHandler>();
    case 0x19:
      GPURegionRuntime::createOp<GPU::BroadcastToOpHandler>();
    case 0x1A:
      GPURegionRuntime::createOp<GPU::CallOpHandler>();
    case 0x1B:
      GPURegionRuntime::createOp<GPU::CastOpHandler>();
    case 0x1C:
      GPURegionRuntime::createOp<GPU::CeilOpHandler>();
    case 0x1D:
      GPURegionRuntime::createOp<GPU::ClampOpHandler>();
    case 0x1E:
      GPURegionRuntime::createOp<GPU::ColToImOpHandler>();
    case 0x1F:
      GPURegionRuntime::createOp<GPU::ConcatOpHandler>();
    case 0x20:
      GPURegionRuntime::createOp<GPU::ConditionOpHandler>();
    case 0x21:
      GPURegionRuntime::createOp<GPU::ConjugateOpHandler>();
    case 0x22:
      GPURegionRuntime::createOp<GPU::Conv2DOpHandler>();
    case 0x23:
      GPURegionRuntime::createOp<GPU::Conv2DDataGradientOpHandler>();
    case 0x24:
      GPURegionRuntime::createOp<GPU::Conv2DWeightsGradientOpHandler>();
    case 0x25:
      GPURegionRuntime::createOp<GPU::Conv3DOpHandler>();
    case 0x26:
      GPURegionRuntime::createOp<GPU::Conv3DDataGradientOpHandler>();
    case 0x27:
      GPURegionRuntime::createOp<GPU::Conv3DWeightsGradientOpHandler>();
    case 0x28:
      GPURegionRuntime::createOp<GPU::ConstantOpHandler>();
    case 0x29:
      GPURegionRuntime::createOp<GPU::ConstantArithOpHandler>();
    case 0x2A:
      GPURegionRuntime::createOp<GPU::CosOpHandler>();
    case 0x2B:
      GPURegionRuntime::createOp<GPU::CoshOpHandler>();
    case 0x2C:
      GPURegionRuntime::createOp<GPU::CostVolumeOpHandler>();
    case 0x2D:
      GPURegionRuntime::createOp<GPU::CreateComplexOpHandler>();
    case 0x2E:
      GPURegionRuntime::createOp<GPU::CreateTextureTensorOpHandler>();
    case 0x2F:
      GPURegionRuntime::createOp<GPU::CropOpHandler>();
    case 0x30:
      GPURegionRuntime::createOp<GPU::CropResizeOpHandler>();
    case 0x31:
      GPURegionRuntime::createOp<GPU::CumulativeSumOpHandler>();
    case 0x32:
      GPURegionRuntime::createOp<GPU::CumulativeProductOpHandler>();
    case 0x33:
      GPURegionRuntime::createOp<GPU::CumulativeMaximumOpHandler>();
    case 0x34:
      GPURegionRuntime::createOp<GPU::CumulativeMinimumOpHandler>();
    case 0x35:
      GPURegionRuntime::createOp<GPU::DeallocOpHandler>();
    case 0x36:
      GPURegionRuntime::createOp<GPU::DepthToSpace2DOpHandler>();
    case 0x37:
      GPURegionRuntime::createOp<GPU::DepthwiseConv2DOpHandler>();
    case 0x38:
      GPURegionRuntime::createOp<GPU::DepthwiseConv2DDataGradientOpHandler>();
    case 0x39:
      GPURegionRuntime::createOp<GPU::DepthwiseConv2DWeightsGradientOpHandler>();
    case 0x3A:
      GPURegionRuntime::createOp<GPU::DepthwiseConv3DOpHandler>();
    case 0x3B:
      GPURegionRuntime::createOp<GPU::DepthwiseConv3DDataGradientOpHandler>();
    case 0x3C:
      GPURegionRuntime::createOp<GPU::DepthwiseConv3DWeightsGradientOpHandler>();
    case 0x3D:
      GPURegionRuntime::createOp<GPU::DequantizeLutOpHandler>();
    case 0x3E:
      GPURegionRuntime::createOp<GPU::DequantizeOpHandler>();
    case 0x3F:
      GPURegionRuntime::createOp<GPU::DimensionSizeOpHandler>();
    case 0x40:
      GPURegionRuntime::createOp<GPU::DivideOpHandler>();
    case 0x41:
      GPURegionRuntime::createOp<GPU::DynamicShapeCastOpHandler>();
    case 0x43:
      GPURegionRuntime::createOp<GPU::EqualToOpHandler>();
    case 0x44:
      GPURegionRuntime::createOp<GPU::ErfOpHandler>();
    case 0x45:
      GPURegionRuntime::createOp<GPU::ExpandDimsOpHandler>();
    case 0x46:
      GPURegionRuntime::createOp<GPU::ExponentOpHandler>();
    case 0x47:
      GPURegionRuntime::createOp<GPU::ExponentBase2OpHandler>();
    case 0x48:
      GPURegionRuntime::createOp<GPU::ExponentBase10OpHandler>();
    case 0x49:
      GPURegionRuntime::createOp<GPU::ExtractOpHandler>();
    case 0x4A:
      GPURegionRuntime::createOp<GPU::FFTOpHandler>();
    case 0x4B:
      GPURegionRuntime::createOp<GPU::FFT_RToCOpHandler>();
    case 0x4C:
      GPURegionRuntime::createOp<GPU::FFT_CToROpHandler>();
    case 0x4D:
      GPURegionRuntime::createOp<GPU::Flatten2DOpHandler>();
    case 0x4E:
      GPURegionRuntime::createOp<GPU::FloorOpHandler>();
    case 0x4F:
      GPURegionRuntime::createOp<GPU::ForOpHandler>();
    case 0x50:
      GPURegionRuntime::createOp<GPU::FPToIntClampedOpHandler>();
    case 0x51:
      GPURegionRuntime::createOp<GPU::FusionOpHandler>();
    case 0x52:
      GPURegionRuntime::createOp<GPU::FusionReturnOpHandler>();
    case 0x53:
      GPURegionRuntime::createOp<GPU::GatherOpHandler>();
    case 0x54:
      GPURegionRuntime::createOp<GPU::GatherAlongAxisOpHandler>();
    case 0x55:
      GPURegionRuntime::createOp<GPU::GatherNDOpHandler>();
    case 0x56:
      GPURegionRuntime::createOp<GPU::GetCoordOpHandler>();
    case 0x57:
      GPURegionRuntime::createOp<GPU::GreaterThanOpHandler>();
    case 0x58:
      GPURegionRuntime::createOp<GPU::GreaterThanOrEqualToOpHandler>();
    case 0x59:
      GPURegionRuntime::createOp<GPU::GRUOpHandler>();
    case 0x5A:
      GPURegionRuntime::createOp<GPU::GRUGradientOpHandler>();
    case 0x5B:
      GPURegionRuntime::createOp<GPU::HammingDistanceOpHandler>();
    case 0x5C:
      GPURegionRuntime::createOp<GPU::IdentityOpHandler>();
    case 0x5D:
      GPURegionRuntime::createOp<GPU::IfOpHandler>();
    case 0x5E:
      GPURegionRuntime::createOp<GPU::ImToColOpHandler>();
    case 0x5F:
      GPURegionRuntime::createOp<GPU::ImaginaryPartOpHandler>();
    case 0x60:
      GPURegionRuntime::createOp<GPU::IsFiniteOpHandler>();
    case 0x61:
      GPURegionRuntime::createOp<GPU::IsInfiniteOpHandler>();
    case 0x62:
      GPURegionRuntime::createOp<GPU::IsNaNOpHandler>();
    case 0x64:
      GPURegionRuntime::createOp<GPU::LessThanOpHandler>();
    case 0x65:
      GPURegionRuntime::createOp<GPU::LessThanOrEqualToOpHandler>();
    case 0x66:
      GPURegionRuntime::createOp<GPU::LocalConvolutionOpHandler>();
    case 0x67:
      GPURegionRuntime::createOp<GPU::LocalConvolutionDataGradientOpHandler>();
    case 0x68:
      GPURegionRuntime::createOp<GPU::LocalConvolutionWeightGradientOpHandler>();
    case 0x69:
      GPURegionRuntime::createOp<GPU::LogarithmOpHandler>();
    case 0x6A:
      GPURegionRuntime::createOp<GPU::LogarithmBase2OpHandler>();
    case 0x6B:
      GPURegionRuntime::createOp<GPU::LogarithmBase10OpHandler>();
    case 0x6C:
      GPURegionRuntime::createOp<GPU::LSTMOpHandler>();
    case 0x6D:
      GPURegionRuntime::createOp<GPU::LSTMGradientOpHandler>();
    case 0x6E:
      GPURegionRuntime::createOp<GPU::MakeListOpHandler>();
    case 0x6F:
      GPURegionRuntime::createOp<GPU::MaterializeSparseTensorOpHandler>();
    case 0x70:
      GPURegionRuntime::createOp<GPU::MatMulOpHandler>();
    case 0x71:
      GPURegionRuntime::createOp<GPU::MatrixDecompositionLUOpHandler>();
    case 0x72:
      GPURegionRuntime::createOp<GPU::MatrixInverseOpHandler>();
    case 0x73:
      GPURegionRuntime::createOp<GPU::MatrixSolverLUOpHandler>();
    case 0x74:
      GPURegionRuntime::createOp<GPU::MaximumOpHandler>();
    case 0x75:
      GPURegionRuntime::createOp<GPU::MemrefBackedOpHandler>();
    case 0x76:
      GPURegionRuntime::createOp<GPU::MemrefToTensorOpHandler>();
    case 0x77:
      GPURegionRuntime::createOp<GPU::MinimumOpHandler>();
    case 0x78:
      GPURegionRuntime::createOp<GPU::ModuloOpHandler>();
    case 0x79:
      GPURegionRuntime::createOp<GPU::MultiplyOpHandler>();
    case 0x7A:
      GPURegionRuntime::createOp<GPU::NandOpHandler>();
    case 0x7B:
      GPURegionRuntime::createOp<GPU::NegativeOpHandler>();
    case 0x7C:
      GPURegionRuntime::createOp<GPU::NorOpHandler>();
    case 0x7E:
      GPURegionRuntime::createOp<GPU::NotOpHandler>();
    case 0x7F:
      GPURegionRuntime::createOp<GPU::NotEqualToOpHandler>();
    case 0x80:
      GPURegionRuntime::createOp<GPU::OneHotOpHandler>();
    case 0x81:
      GPURegionRuntime::createOp<GPU::OrOpHandler>();
    case 0x82:
      GPURegionRuntime::createOp<GPU::PadOpHandler>();
    case 0x83:
      GPURegionRuntime::createOp<GPU::PadGradientOpHandler>();
    case 0x84:
      GPURegionRuntime::createOp<GPU::PermuteOpHandler>();
    case 0x85:
      GPURegionRuntime::createOp<GPU::PoolAvgOpHandler>();
    case 0x86:
      GPURegionRuntime::createOp<GPU::PoolAvgGradientOpHandler>();
    case 0x87:
      GPURegionRuntime::createOp<GPU::PoolL2NormOpHandler>();
    case 0x88:
      GPURegionRuntime::createOp<GPU::PoolL2NormGradientOpHandler>();
    case 0x89:
      GPURegionRuntime::createOp<GPU::PoolMaxOpHandler>();
    case 0x8B:
      GPURegionRuntime::createOp<GPU::PoolMaxGradientOpHandler>();
    case 0x8C:
      GPURegionRuntime::createOp<GPU::PowerOpHandler>();
    case 0x8D:
      GPURegionRuntime::createOp<GPU::PruneOpHandler>();
    case 0x8E:
      GPURegionRuntime::createOp<GPU::PruneGradientOpHandler>();
    case 0x90:
      GPURegionRuntime::createOp<GPU::QuantizedGatherOpHandler>();
    case 0x91:
      GPURegionRuntime::createOp<GPU::RandomUniformOpHandler>();
    case 0x92:
      GPURegionRuntime::createOp<GPU::RandomTruncatedNormalOpHandler>();
    case 0x93:
      GPURegionRuntime::createOp<GPU::RandomNormalOpHandler>();
    case 0x94:
      GPURegionRuntime::createOp<GPU::RankOpHandler>();
    case 0x95:
      GPURegionRuntime::createOp<GPU::ReadDataFromFileOpHandler>();
    case 0x96:
      GPURegionRuntime::createOp<GPU::ReadVariableOpHandler>();
    case 0x97:
      GPURegionRuntime::createOp<GPU::RealPartOpHandler>();
    case 0x98:
      GPURegionRuntime::createOp<GPU::ReciprocalOpHandler>();
    case 0x99:
      GPURegionRuntime::createOp<GPU::ReductionAndOpHandler>();
    case 0x9A:
      GPURegionRuntime::createOp<GPU::ReductionArgMaxOpHandler>();
    case 0x9B:
      GPURegionRuntime::createOp<GPU::ReductionArgMinOpHandler>();
    case 0x9C:
      GPURegionRuntime::createOp<GPU::ReductionMaxOpHandler>();
    case 0x9E:
      GPURegionRuntime::createOp<GPU::ReductionMinOpHandler>();
    case 0x9F:
      GPURegionRuntime::createOp<GPU::ReductionOrOpHandler>();
    case 0xA0:
      GPURegionRuntime::createOp<GPU::ReductionProdOpHandler>();
    case 0xA1:
      GPURegionRuntime::createOp<GPU::ReductionSumOpHandler>();
    case 0xA3:
      GPURegionRuntime::createOp<GPU::RegionCallOpHandler>();
    case 0xA4:
      GPURegionRuntime::createOp<GPU::RegionReturnOpHandler>();
    case 0xA5:
      GPURegionRuntime::createOp<GPU::ReinterpretCastOpHandler>();
    case 0xA8:
      GPURegionRuntime::createOp<GPU::ReshapeOpHandler>();
    case 0xA9:
      GPURegionRuntime::createOp<GPU::ResizeOpHandler>();
    case 0xAA:
      GPURegionRuntime::createOp<GPU::ResizeGradientOpHandler>();
    case 0xAB:
      GPURegionRuntime::createOp<GPU::ReturnOpHandler>();
    case 0xAC:
      GPURegionRuntime::createOp<GPU::ReturnStitchedOpHandler>();
    case 0xAD:
      GPURegionRuntime::createOp<GPU::ReverseOpHandler>();
    case 0xAE:
      GPURegionRuntime::createOp<GPU::ReciprocalSquareRootOpHandler>();
    case 0xAF:
      GPURegionRuntime::createOp<GPU::RintOpHandler>();
    case 0xB0:
      GPURegionRuntime::createOp<GPU::RMSNormOpHandler>();
    case 0xB1:
      GPURegionRuntime::createOp<GPU::RoundOpHandler>();
    case 0xB2:
      GPURegionRuntime::createOp<GPU::SampleGridOpHandler>();
    case 0xB3:
      GPURegionRuntime::createOp<GPU::SampleGridDataGradientOpHandler>();
    case 0xB4:
      GPURegionRuntime::createOp<GPU::ScatterOpHandler>();
    case 0xB5:
      GPURegionRuntime::createOp<GPU::ScatterAlongAxisOpHandler>();
    case 0xB6:
      GPURegionRuntime::createOp<GPU::ScatterNDOpHandler>();
    case 0xB7:
      GPURegionRuntime::createOp<GPU::SelectOpHandler>();
    case 0xB8:
      GPURegionRuntime::createOp<GPU::ShapeOpHandler>();
    case 0xBA:
      GPURegionRuntime::createOp<GPU::SignOpHandler>();
    case 0xBB:
      GPURegionRuntime::createOp<GPU::SignbitOpHandler>();
    case 0xBC:
      GPURegionRuntime::createOp<GPU::SinOpHandler>();
    case 0xBD:
      GPURegionRuntime::createOp<GPU::SingleGateRNNOpHandler>();
    case 0xBE:
      GPURegionRuntime::createOp<GPU::SingleGateRNNGradientOpHandler>();
    case 0xBF:
      GPURegionRuntime::createOp<GPU::SinhOpHandler>();
    case 0xC0:
      GPURegionRuntime::createOp<GPU::SizeOpHandler>();
    case 0xC1:
      GPURegionRuntime::createOp<GPU::SliceOpHandler>();
    case 0xC2:
      GPURegionRuntime::createOp<GPU::SoftmaxOpHandler>();
    case 0xC3:
      GPURegionRuntime::createOp<GPU::SortOpHandler>();
    case 0xC5:
      GPURegionRuntime::createOp<GPU::SpaceToBatchOpHandler>();
    case 0xC6:
      GPURegionRuntime::createOp<GPU::SpaceToDepth2DOpHandler>();
    case 0xC7:
      GPURegionRuntime::createOp<GPU::SparseDenseMatMulOpHandler>();
    case 0xC8:
      GPURegionRuntime::createOp<GPU::SplitOpHandler>();
    case 0xC9:
      GPURegionRuntime::createOp<GPU::SquareOpHandler>();
    case 0xCA:
      GPURegionRuntime::createOp<GPU::SquareRootOpHandler>();
    case 0xCB:
      GPURegionRuntime::createOp<GPU::SqueezeOpHandler>();
    case 0xCC:
      GPURegionRuntime::createOp<GPU::StencilOpHandler>();
    case 0xCD:
      GPURegionRuntime::createOp<GPU::StitchedOpHandler>();
    case 0xCE:
      GPURegionRuntime::createOp<GPU::StridedSliceOpHandler>();
    case 0xCF:
      GPURegionRuntime::createOp<GPU::StridedSliceGradientOpHandler>();
    case 0xD0:
      GPURegionRuntime::createOp<GPU::StridedSliceUpdateOpHandler>();
    case 0xD1:
      GPURegionRuntime::createOp<GPU::StridedArrayViewOpHandler>();
    case 0xD2:
      GPURegionRuntime::createOp<GPU::SubtractOpHandler>();
    case 0xD4:
      GPURegionRuntime::createOp<GPU::TanOpHandler>();
    case 0xD5:
      GPURegionRuntime::createOp<GPU::TanhOpHandler>();
    case 0xD6:
      GPURegionRuntime::createOp<GPU::FromElementsOpHandler>();
    case 0xD7:
      GPURegionRuntime::createOp<GPU::ListPopBackOpHandler>();
    case 0xD8:
      GPURegionRuntime::createOp<GPU::ListPushBackOpHandler>();
    case 0xD9:
      GPURegionRuntime::createOp<GPU::ScaledDotProductAttentionOpHandler>();
    case 0xDA:
      GPURegionRuntime::createOp<GPU::TensorToMemrefOpHandler>();
    case 0xDB:
      GPURegionRuntime::createOp<GPU::TileOpHandler>();
    case 0xDC:
      GPURegionRuntime::createOp<GPU::TileGradientOpHandler>();
    case 0xDD:
      GPURegionRuntime::createOp<GPU::TopKOpHandler>();
    case 0xDE:
      GPURegionRuntime::createOp<GPU::TopKGradientOpHandler>();
    case 0xDF:
      GPURegionRuntime::createOp<GPU::TransposeOpHandler>();
    case 0xE0:
      GPURegionRuntime::createOp<GPU::TypeConstraintOpHandler>();
    case 0xE1:
      GPURegionRuntime::createOp<GPU::UpdateRandomStateOpHandler>();
    case 0xE2:
      GPURegionRuntime::createOp<GPU::UseMemrefOpHandler>();
    case 0xE3:
      GPURegionRuntime::createOp<GPU::VarHandleOpHandler>();
    case 0xE4:
      GPURegionRuntime::createOp<GPU::VariableFromTensorOpHandler>();
    case 0xE5:
      GPURegionRuntime::createOp<GPU::ViewMemrefOpHandler>();
    case 0xE6:
      GPURegionRuntime::createOp<GPU::WhileOpHandler>();
    case 0xE7:
      GPURegionRuntime::createOp<GPU::XorOpHandler>();
    case 0xE8:
      GPURegionRuntime::createOp<GPU::XnorOpHandler>();
    case 0xE9:
      GPURegionRuntime::createOp<GPU::YieldOpHandler>();
    case 0xEA:
      GPURegionRuntime::createOp<GPU::QuantizedMatMulOpHandler>();
    default:
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id)
      {
        v17 = *(*(a2 + 9) + 24);
        DefiningOp = mlir::Value::getDefiningOp(&v17);
        if (DefiningOp)
        {
          if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::MatMulOp,void>::id && *v17 && !**v17)
          {
            v11 = a2 - 16;
            v16[0] = v17;
            v16[1] = v11;
            v14 = v11;
            v15 = v17;
            std::__hash_table<std::__hash_value_type<void *,void *>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void *>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void *>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void *>>>::__emplace_unique_key_args<void *,std::pair<void *,void *> &>(this + 76, v17);
            std::__hash_table<std::__hash_value_type<void *,void *>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void *>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void *>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void *>>>::__emplace_unique_key_args<void *,std::pair<void *,void *> &>(this + 76, v11);
          }
        }
      }

      (*MEMORY[0])(0);
      if (v13 < 0)
      {
        operator delete(__dst);
      }

      return 0;
  }
}

void sub_1E05C3134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E05C3480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05C3868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05C3C50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05C4038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05C4420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05C47EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05C4BD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05C4FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05C53A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05C578C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05C5B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05C5F5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05C6328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05C6710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05C6AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05C6EE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05C72C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05C76B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05C7A98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05C7E80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05C8268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05C8650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05C8A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05C8E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05C91D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05C95B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05C99A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05C9D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05CA170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05CA53C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05CA908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05CACF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05CB0F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05CB52C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05CB938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05CBD60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05CC16C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05CC578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05CC974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05CCD5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05CD144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05CD52C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05CD944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05CDD3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05CE108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05CE4F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05CE8BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05CECA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05CF08C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05CF474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05CF85C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05CFC44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D002C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D0414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D07FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D0BE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D0FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D140C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D17F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D1BC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D1F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D2374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D275C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D2B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D2F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D32F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D36E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D3AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D3EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D4298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D4664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D4A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D4DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D51C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D55B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D5998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D5D64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D614C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D651C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D6914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D6D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D7164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D758C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D7988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D7D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D8158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D8524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D88F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D8D08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D90E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D94B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D9898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05D9C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05DA068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05DA450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05DA838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05DAC20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05DB008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05DB420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05DB7FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05DBBC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05DBFB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05DC398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05DC780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05DCB4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05DCF18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05DD304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05DD6EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05DDAB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05DDE84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05DE250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05DE61C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05DEA04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05DEDD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05DF19C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05DF584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05DF96C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05DFD54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E013C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E0524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E090C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E0CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E10DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E14A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E1890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E1C5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E2060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E2444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E285C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E2C84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E30AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E34D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E38B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E3CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E40C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E448C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E4858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E4C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E503C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E5464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E588C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E5C84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E606C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E6438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E6804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E6BEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E6FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E73BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E77A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E7B8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E7F74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E835C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E8744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E8B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E8EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E92E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E96AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E9A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05E9EAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05EA2D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05EA6CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05EAA98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05EAE64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05EB24C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05EB634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05EBA00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05EBDE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05EC200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05EC5DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05EC9A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05ECD90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05ED178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05ED560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05ED948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05EDD30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05EE118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05EE500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05EE8E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05EECB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05EF080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05EF468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05EF850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05EFC38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F0004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F03D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F07B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F0BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F0F88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F1370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F1758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F1B40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F1F28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F2340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F271C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F2AE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F2EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F3280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F364C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F3A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F3E1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F4204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F45D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F49C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F4DAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F5178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F557C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F599C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F5D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F6144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F6510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F68DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F6CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F70DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F74B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F7884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F7C50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F801C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F8404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F87EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F8BB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void sub_1E05F8F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v27 + 40))(v27);
  _Unwind_Resume(a1);
}

void GPURegionRuntime::setupFeedsAndTargets(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, id **a5@<X8>)
{
  v57 = a3;
  v59 = a4;
  v55 = a2;
  v56 = *(a2 + 8);
  v9 = 0;
  v10 = 0;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  v58 = a5;
  v11 = 0x1E695D000uLL;
  while (1)
  {
    v13 = a1[74];
    v14 = v13[2];
    if ((*(v14 + 46) & 0x80) == 0 || v10 >= *(v14 + 68))
    {
      break;
    }

    v15 = *(*(v14 + 72) + 32 * v10 + 24);
    v16 = (*(*a1 + 48))(a1, v15, 0);
    v17 = [v59 objectAtIndexedSubscript:v10];
    v18 = [*(v11 + 4016) null];

    if (v17 != v18)
    {
      if (v16)
      {
        v19 = [v59 objectAtIndexedSubscript:v10];

        if (v16 != v19)
        {
          v20 = [v59 objectAtIndexedSubscript:v10];
          v21 = v16;
          v22 = v58[2];
          if (v9 < v22)
          {
            *v9 = v21;
            v9[1] = v20;
            v9 += 2;
          }

          else
          {
            v23 = v11;
            v24 = *v58;
            v25 = v9 - *v58;
            v26 = v25 >> 4;
            v27 = (v25 >> 4) + 1;
            if (v27 >> 60)
            {
              std::vector<long>::__throw_length_error[abi:ne200100]();
            }

            v28 = v22 - v24;
            if (v28 >> 3 > v27)
            {
              v27 = v28 >> 3;
            }

            if (v28 >= 0x7FFFFFFFFFFFFFF0)
            {
              v27 = 0xFFFFFFFFFFFFFFFLL;
            }

            if (v27)
            {
              if (!(v27 >> 60))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v33 = (16 * v26);
            *v33 = v21;
            v33[1] = v20;
            v34 = 16 * v26;
            v11 = v23;
            if (v24 != v9)
            {
              v35 = v25 - 16;
              v36 = v24;
              v37 = 0;
              if ((v25 - 16) < 0x30)
              {
                goto LABEL_53;
              }

              v41 = (v24 + 1) >= (v35 & 0xFFFFFFFFFFFFFFF0) + 16 || v24 + (v35 & 0xFFFFFFFFFFFFFFF0) + 16 <= 8;
              v42 = !v41;
              v43 = !(v24 + (v35 & 0xFFFFFFFFFFFFFFF0) + 8) || v24 >= (v35 & 0xFFFFFFFFFFFFFFF0) + 8;
              v36 = v24;
              v37 = 0;
              if (!v43)
              {
                goto LABEL_53;
              }

              v36 = v24;
              v37 = 0;
              if (v42)
              {
                goto LABEL_53;
              }

              v44 = (v35 >> 4) + 1;
              v37 = (16 * (v44 & 0x1FFFFFFFFFFFFFFCLL));
              v36 = (v37 + v24);
              v45 = 32;
              v46 = (v24 + 4);
              v47 = v44 & 0x1FFFFFFFFFFFFFFCLL;
              do
              {
                v49 = *(v46 - 2);
                v48 = *(v46 - 1);
                v51 = *v46;
                v50 = v46[1];
                *(v46 - 2) = 0uLL;
                *(v46 - 1) = 0uLL;
                *v46 = 0uLL;
                v46[1] = 0uLL;
                v46 += 4;
                *(v45 - 32) = v49;
                *(v45 - 16) = v48;
                *v45 = v51;
                *(v45 + 16) = v50;
                v45 += 64;
                v47 -= 4;
              }

              while (v47);
              if (v44 != (v44 & 0x1FFFFFFFFFFFFFFCLL))
              {
LABEL_53:
                do
                {
                  v38 = *v36;
                  *v36 = 0;
                  v36[1] = 0;
                  v36 += 2;
                  *v37++ = v38;
                }

                while (v36 != v9);
              }

              v39 = v24;
              do
              {

                v40 = *v39;
                v39 += 2;
              }

              while (v39 != v9);
            }

            v9 = (v34 + 16);
            *v58 = 0;
            v58[1] = (v34 + 16);
            v58[2] = 0;
            if (v24)
            {
              operator delete(v24);
            }
          }

          v58[1] = v9;
          v12 = 0;
          goto LABEL_4;
        }
      }

      else
      {
        v29 = [v59 objectAtIndexedSubscript:v10];
        BaseRuntime::setTensorDataToDataMap(a1, v15, v29);

        v30 = [v59 objectAtIndexedSubscript:v10];
        v31 = [v30 tensorDataType];

        if (v31 == 1)
        {
          v32 = a1[17];
          v12 = [v59 objectAtIndexedSubscript:v10];
          [v32 addObject:v12];
LABEL_4:
        }
      }
    }

    ++v10;
  }

  v66[0] = 0;
  v66[1] = v66;
  v66[2] = 0x3032000000;
  v66[3] = __Block_byref_object_copy_;
  v66[4] = __Block_byref_object_dispose_;
  v67 = 0;
  v52 = *(((*v13 + 16 * ((*(*v13 + 44) >> 23) & 1) + ((*(*v13 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*v13 + 40) + 8);
  if (v52)
  {
    v53 = v52 - 8;
  }

  else
  {
    v53 = 0;
  }

  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = ___ZN16GPURegionRuntime20setupFeedsAndTargetsEPN3GPU16EncodeDescriptorEP7NSArrayIP18MPSGraphTensorDataES7__block_invoke;
  v60[3] = &unk_1E86D4858;
  v63 = a1;
  v64 = v53;
  v54 = v56;
  v61 = v54;
  v62 = v66;
  v65 = v55;
  [v57 enumerateObjectsUsingBlock:v60];

  _Block_object_dispose(v66, 8);
}

void sub_1E05F9528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  _Block_object_dispose(&a26, 8);

  std::vector<std::pair<MPSGraphTensorData * {__strong},MPSGraphTensorData * {__strong}>>::~vector[abi:ne200100](a15);
  _Unwind_Resume(a1);
}

void BaseRuntime::setTensorDataToDataMap(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  v5 = *(mlir::Value::getParentRegion(&v7) + 2);
  v8 = &v5;
  v4 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::__emplace_unique_key_args<mlir::Operation *,std::piecewise_construct_t const&,std::tuple<mlir::Operation * const&>,std::tuple<>>((a1 + 88), &v5);
  v8 = v7;
  std::__hash_table<std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>>>::__emplace_unique_key_args<void *,void *,MPSGraphTensorData * {__strong}&>(v4 + 3, &v8);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZN16GPURegionRuntime20setupFeedsAndTargetsEPN3GPU16EncodeDescriptorEP7NSArrayIP18MPSGraphTensorDataES7__block_invoke(uint64_t a1, void *a2, unsigned int a3)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 48);
  v7 = *(*(*(a1 + 56) + 48) + 8 * a3);
  v8 = v5;
  v9 = v8;
  v10 = *v7;
  if (*v7)
  {
    v11 = 0;
    do
    {
      ++v11;
      v10 = *v10;
    }

    while (v10);
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v8;
  if ([(MPSGraphTensorData *)v8 tensorDataType]== 1)
  {
    v14 = *v7;
    if (!*v7)
    {
      goto LABEL_18;
    }

    v15 = 0;
    v16 = *v7;
    do
    {
      v16 = *v16;
      --v15;
    }

    while (v16);
    if (!v15)
    {
      goto LABEL_18;
    }

    v17 = 0;
    v18 = -v15;
    do
    {
      if (*(*(v14[2] + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CreateTextureTensorOp,void>::id)
      {
        ++v17;
      }

      v14 = *v14;
    }

    while (v14);
    if (v17)
    {
      v13 = v9;
      if (v17 != v18)
      {
        v19 = [(MPSGraphTensorData *)v9 mpsndarrayWithCommandBuffer:*(a1 + 32)];
        v13 = v9;
      }
    }

    else
    {
LABEL_18:
      v20 = [(MPSGraphTensorData *)v9 mpsndarrayWithCommandBuffer:*(a1 + 32)];
      v13 = [[MPSGraphTensorData alloc] initWithMPSNDArray:v20];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v20 setReadCount:v12];
      }
    }
  }

  v21 = (*(*v6 + 48))(v6, v7, 0);
  if (v21)
  {
    v22 = [(MPSGraphTensorData *)v9 mpsndarrayWithCommandBuffer:*(a1 + 32)];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v22 setReadCount:v12];
    }

    v23 = *(*(*(a1 + 40) + 8) + 40);
    if (!v23)
    {
      v24 = objc_alloc(MEMORY[0x1E6974740]);
      v25 = [*(a1 + 32) device];
      v26 = [v24 initWithDevice:v25];
      v27 = *(*(a1 + 40) + 8);
      v28 = *(v27 + 40);
      *(v27 + 40) = v26;

      [*(*(*(a1 + 40) + 8) + 40) setLabel:@"argAsReturnCopy"];
      v23 = *(*(*(a1 + 40) + 8) + 40);
    }

    v29 = GPU::EncodeDescriptor::getcomputeEncoder(*(a1 + 64));
    v30 = *(*(a1 + 64) + 8);
    v33[0] = v22;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
    v32 = [v21 mpsndarray];
    [v23 encodeToMPSCommandEncoder:v29 commandBuffer:v30 sourceArrays:v31 destinationArray:v32];
  }

  else
  {
    BaseRuntime::setTensorDataToDataMap(v6, v7, v13);
  }
}

id GPU::EncodeDescriptor::getcomputeEncoder(GPU::EncodeDescriptor *this)
{
  v2 = *(this + 9);
  if (!v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E6974458]) initWithCommandBuffer:*(this + 1) withDispatchType:0 compilationOnly:{objc_msgSend(*(this + 2), "compilationOnly")}];
    v4 = *(this + 9);
    *(this + 9) = v3;

    v5 = *(this + 11);
    if (v5)
    {
      v6 = [v5 wrapComputeEncoder:*(this + 9)];
      v7 = *(this + 9);
      *(this + 9) = v6;
    }

    *(this + 96) = 1;
    v2 = *(this + 9);
  }

  if (*(this + 10))
  {
    [v2 setLabel:?];
    v2 = *(this + 9);
  }

  return v2;
}

void **std::vector<std::pair<MPSGraphTensorData * {__strong},MPSGraphTensorData * {__strong}>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {

        v5 = *(v3 - 2);
        v3 -= 2;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

id MPSRuntime::evaluateOps(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, char a8, char a9, unsigned __int8 a10, BOOL *a11)
{
  v167 = a4;
  v166 = a5;
  v165 = a6;
  v164 = a7;
  std::mutex::lock((a1 + 144));
  if (a2)
  {
    mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  }

  v18 = *(a1 + 568);
  v19 = *(a1 + 584);
  if (!v19)
  {
LABEL_9:
    v21 = (v18 + 24 * v19);
    goto LABEL_10;
  }

  v20 = (v19 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v21 = (v18 + 24 * v20);
  v22 = *v21;
  if (*v21 != a2)
  {
    v23 = 1;
    while (v22 != -4096)
    {
      v24 = v20 + v23++;
      v20 = v24 & (v19 - 1);
      v21 = (v18 + 24 * v20);
      v22 = *v21;
      if (*v21 == a2)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_9;
  }

LABEL_10:
  v25 = v21[2];
  *(a1 + 592) = v25;
  if (a3)
  {
    *(a1 + 688) = a3;
  }

  v26 = *(v25 + 48);
  if (!v26)
  {
    goto LABEL_18;
  }

  v172 = v26;
  v27 = v167;
  v28 = v166;
  if (*(a1 + 408) || [v165[2] count])
  {
    goto LABEL_17;
  }

  v177 = 0;
  v178 = &v177;
  v179 = 0x2020000000;
  v180 = 0;
  v181 = MEMORY[0x1E69E9820];
  v182 = 3221225472;
  v183 = ___ZZN16GPURegionRuntime21canEvaluateFullyOnANEEPNS_14FullyOnANEInfoEP7NSArrayIP18MPSGraphTensorDataES6_P37MPSGraphExecutableExecutionDescriptorENK3__0clEv_block_invoke;
  v184 = &unk_1E86D48C8;
  *&v185 = &v177;
  *(&v185 + 1) = &v172;
  [v27 enumerateObjectsUsingBlock:&v181];
  if (v178[3])
  {
    _Block_object_dispose(&v177, 8);
LABEL_17:

    goto LABEL_18;
  }

  v173 = 0;
  v174 = &v173;
  v175 = 0x2020000000;
  v176 = 0;
  v192[0] = MEMORY[0x1E69E9820];
  v192[1] = 3221225472;
  v192[2] = ___ZZN16GPURegionRuntime21canEvaluateFullyOnANEEPNS_14FullyOnANEInfoEP7NSArrayIP18MPSGraphTensorDataES6_P37MPSGraphExecutableExecutionDescriptorENK3__0clEv_block_invoke_2;
  v192[3] = &unk_1E86D48C8;
  v192[4] = &v173;
  v192[5] = &v172;
  [v28 enumerateObjectsUsingBlock:v192];
  v130 = *(v174 + 24);
  _Block_object_dispose(&v173, 8);
  _Block_object_dispose(&v177, 8);

  if (v130)
  {
LABEL_18:
    if (a11)
    {
      *a11 = 1;
    }

    v29 = *(a1 + 208);
    v30 = v164;
    v31 = v29;
    v32 = v165;
    v181 = &unk_1F5B428B0;
    v182 = v30;
    v183 = v32;
    LOBYTE(v184) = a8;
    BYTE1(v184) = a9;
    v185 = 0u;
    v186 = 0u;
    v187 = 1065353216;
    v188 = 0;
    v189 = 0;
    v190 = v31;
    v191 = 0;
    v33 = v32[1];
    v34 = v32[2];
    v170[0] = MEMORY[0x1E69E9820];
    v170[1] = 3221225472;
    v170[2] = ___ZN10MPSRuntime11evaluateOpsEN4mlir4func6FuncOpEP21RuntimeSpecializationP7NSArrayIP18MPSGraphTensorDataES9_P37MPSGraphExecutableExecutionDescriptorP16MPSCommandBufferbbbPb_block_invoke;
    v170[3] = &unk_1E86D48F0;
    v35 = v30;
    v171 = v35;
    [v33 enumerateObjectsUsingBlock:v170];
    v36 = GPURegionRuntime::evaluateOps(a1, &v181, v167, v166);
    v168[0] = MEMORY[0x1E69E9820];
    v168[1] = 3221225472;
    v168[2] = ___ZN10MPSRuntime11evaluateOpsEN4mlir4func6FuncOpEP21RuntimeSpecializationP7NSArrayIP18MPSGraphTensorDataES9_P37MPSGraphExecutableExecutionDescriptorP16MPSCommandBufferbbbPb_block_invoke_2;
    v168[3] = &unk_1E86D4880;
    v169 = v35;
    v37 = [v34 enumerateObjectsUsingBlock:v168];
    if (*(a1 + 240) != 1)
    {
      goto LABEL_143;
    }

    v38 = *(a1 + 408);
    if (!v38)
    {
      goto LABEL_143;
    }

    v161 = v36;
    v39 = *(v38 + 24);
    v40 = *(v38 + 32);
    v42 = *(v38 + 8);
    v41 = *(v38 + 16);
    v43 = llvm::dbgs(v37);
    v44 = *(v43 + 4);
    if (*(v43 + 3) - v44 > 0x1CuLL)
    {
      qmemcpy(v44, "============================\n", 29);
      *(v43 + 4) += 29;
    }

    else
    {
      v43 = llvm::raw_ostream::write(v43, "============================\n", 0x1DuLL);
    }

    v45 = llvm::dbgs(v43);
    v46 = *(v45 + 4);
    if (*(v45 + 3) - v46 > 0x19uLL)
    {
      qmemcpy(v46, "Runtime Execution Report:\n", 26);
      *(v45 + 4) += 26;
    }

    else
    {
      v45 = llvm::raw_ostream::write(v45, "Runtime Execution Report:\n", 0x1AuLL);
    }

    v47 = llvm::dbgs(v45);
    v48 = *(v47 + 4);
    if (*(v47 + 3) - v48 > 0xDuLL)
    {
      qmemcpy(v48, "Layers Count: ", 14);
      *(v47 + 4) += 14;
    }

    else
    {
      v47 = llvm::raw_ostream::write(v47, "Layers Count: ", 0xEuLL);
    }

    v49 = v40 + v39;
    v50 = llvm::raw_ostream::operator<<(v47, v40 + v39);
    v51 = *(v50 + 4);
    if (*(v50 + 3) - v51 > 1uLL)
    {
      *v51 = 8250;
      v53 = *(v50 + 3);
      v52 = *(v50 + 4) + 2;
      *(v50 + 4) = v52;
      if ((v53 - v52) > 4)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v50 = llvm::raw_ostream::write(v50, ": ", 2uLL);
      v52 = *(v50 + 4);
      if ((*(v50 + 3) - v52) > 4)
      {
LABEL_33:
        *(v52 + 4) = 32;
        *v52 = 977620545;
        *(v50 + 4) += 5;
        goto LABEL_36;
      }
    }

    v50 = llvm::raw_ostream::write(v50, "ANE: ", 5uLL);
LABEL_36:
    v54 = llvm::raw_ostream::operator<<(v50, *(v38 + 24));
    v55 = *(v54 + 4);
    if (*(v54 + 3) - v55 > 1uLL)
    {
      *v55 = 10272;
      *(v54 + 4) += 2;
    }

    else
    {
      v54 = llvm::raw_ostream::write(v54, " (", 2uLL);
    }

    v56 = llvm::raw_ostream::operator<<(v54, v39 * 100.0 / v49);
    v57 = *(v56 + 4);
    if (*(v56 + 3) - v57 > 3uLL)
    {
      *v57 = 539765029;
      v59 = *(v56 + 3);
      v58 = *(v56 + 4) + 4;
      *(v56 + 4) = v58;
      if ((v59 - v58) > 4)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v56 = llvm::raw_ostream::write(v56, "%), ", 4uLL);
      v58 = *(v56 + 4);
      if ((*(v56 + 3) - v58) > 4)
      {
LABEL_41:
        *(v58 + 4) = 32;
        *v58 = 978669639;
        *(v56 + 4) += 5;
        goto LABEL_44;
      }
    }

    v56 = llvm::raw_ostream::write(v56, "GPU: ", 5uLL);
LABEL_44:
    v60 = llvm::raw_ostream::operator<<(v56, *(v38 + 32));
    v61 = *(v60 + 4);
    if (*(v60 + 3) - v61 > 1uLL)
    {
      *v61 = 10272;
      *(v60 + 4) += 2;
    }

    else
    {
      v60 = llvm::raw_ostream::write(v60, " (", 2uLL);
    }

    v62 = llvm::raw_ostream::operator<<(v60, v40 * 100.0 / v49);
    v63 = *(v62 + 4);
    if ((*(v62 + 3) - v63) > 2)
    {
      *(v63 + 2) = 10;
      *v63 = 10533;
      *(v62 + 4) += 3;
    }

    else
    {
      v62 = llvm::raw_ostream::write(v62, "%)\n", 3uLL);
    }

    v64 = llvm::dbgs(v62);
    if (v42)
    {
      v65 = llvm::raw_ostream::operator<<(v64, v42);
      v66 = *(v65 + 4);
      if (*(v65 + 3) - v66 > 0x2AuLL)
      {
        qmemcpy(v66, " MPS operations couldn't be placed on ANE.\n", 43);
        *(v65 + 4) += 43;
      }

      else
      {
        v65 = llvm::raw_ostream::write(v65, " MPS operations couldn't be placed on ANE.\n", 0x2BuLL);
      }

      v64 = llvm::dbgs(v65);
      if (v42 == v41)
      {
        v70 = *(v64 + 4);
        v68 = "All unplaced operations are typechangers.\n";
        if (*(v64 + 3) - v70 < 0x2AuLL)
        {
          v69 = 42;
          goto LABEL_61;
        }

        qmemcpy(v70, "All unplaced operations are typechangers.\n", 42);
        *(v64 + 4) += 42;
        if (!*(v38 + 112))
        {
          goto LABEL_102;
        }
      }

      else
      {
        v64 = llvm::raw_ostream::operator<<(v64, v42 - v41);
        v71 = *(v64 + 4);
        v68 = " MPS operations (excluding TypeChangers) couldn't be placed on ANE.\n";
        if (*(v64 + 3) - v71 <= 0x43uLL)
        {
          v69 = 68;
LABEL_61:
          v64 = llvm::raw_ostream::write(v64, v68, v69);
          if (!*(v38 + 112))
          {
            goto LABEL_102;
          }

          goto LABEL_62;
        }

        qmemcpy(v71, " MPS operations (excluding TypeChangers) couldn't be placed on ANE.\n", 68);
        *(v64 + 4) += 68;
        if (!*(v38 + 112))
        {
          goto LABEL_102;
        }
      }
    }

    else
    {
      v67 = *(v64 + 4);
      v68 = "All MPS operations were placed on ANE.\n";
      if (*(v64 + 3) - v67 < 0x27uLL)
      {
        v69 = 39;
        goto LABEL_61;
      }

      qmemcpy(v67, "All MPS operations were placed on ANE.\n", 39);
      *(v64 + 4) += 39;
      if (!*(v38 + 112))
      {
        goto LABEL_102;
      }
    }

LABEL_62:
    v64 = llvm::dbgs(v64);
    v72 = *(v64 + 4);
    if (*(v64 + 3) - v72 > 0x14uLL)
    {
      qmemcpy(v72, "Unplaced operations:\n", 21);
      *(v64 + 4) += 21;
      if (!*(v38 + 112))
      {
        goto LABEL_102;
      }
    }

    else
    {
      v64 = llvm::raw_ostream::write(v64, "Unplaced operations:\n", 0x15uLL);
      if (!*(v38 + 112))
      {
        goto LABEL_102;
      }
    }

    v73 = *(v38 + 120);
    if (v73)
    {
      v74 = 80 * v73;
      v75 = *(v38 + 104);
      while (*v75 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v75 += 80;
        v74 -= 80;
        if (!v74)
        {
          goto LABEL_102;
        }
      }
    }

    else
    {
      v75 = *(v38 + 104);
    }

    v76 = *(v38 + 104) + 80 * v73;
    if (v75 == v76)
    {
LABEL_102:
      v93 = *(v38 + 48);
      v94 = llvm::dbgs(v64);
      if (v93 == 1)
      {
        v95 = v94 + 4;
        v96 = v94[4];
        v97 = "Found exactly one ANERegionCall operation.\n";
        if (v94[3] - v96 < 0x2BuLL)
        {
          goto LABEL_105;
        }
      }

      else
      {
        if (v93)
        {
          v94 = llvm::raw_ostream::operator<<(v94, *(v38 + 48));
          v101 = v94[4];
          v97 = " ANERegionCall operations found.\n";
          if (v94[3] - v101 > 0x20uLL)
          {
            qmemcpy(v101, " ANERegionCall operations found.\n", 33);
            v94[4] += 33;
            v100 = *(v38 + 48);
            if (!v100)
            {
              goto LABEL_118;
            }

            goto LABEL_112;
          }

          v98 = 33;
LABEL_111:
          v94 = llvm::raw_ostream::write(v94, v97, v98);
          v100 = *(v38 + 48);
          if (!v100)
          {
            goto LABEL_118;
          }

LABEL_112:
          v102 = *(v38 + 40);
          v103 = 8 * v100;
          do
          {
            v104 = *v102;
            v105 = llvm::dbgs(v94);
            v106 = mlir::OpPrintingFlags::OpPrintingFlags(v192);
            v107 = mlir::OpPrintingFlags::useLocalScope(v106);
            v94 = mlir::Operation::print(v104, v105, v107);
            v108 = *(v105 + 4);
            if (*(v105 + 3) == v108)
            {
              v94 = llvm::raw_ostream::write(v105, "\n", 1uLL);
            }

            else
            {
              *v108 = 10;
              ++*(v105 + 4);
            }

            ++v102;
            v103 -= 8;
          }

          while (v103);
LABEL_118:
          if (!*(v38 + 136))
          {
            goto LABEL_134;
          }

          v109 = llvm::dbgs(v94);
          v110 = *(v109 + 4);
          if (*(v109 + 3) == v110)
          {
            v109 = llvm::raw_ostream::write(v109, "\n", 1uLL);
          }

          else
          {
            *v110 = 10;
            ++*(v109 + 4);
          }

          v111 = llvm::dbgs(v109);
          v112 = *(v111 + 4);
          if ((*(v111 + 3) - v112) > 5)
          {
            *(v112 + 4) = 8292;
            *v112 = 1853189958;
            *(v111 + 4) += 6;
          }

          else
          {
            v111 = llvm::raw_ostream::write(v111, "Found ", 6uLL);
          }

          v94 = llvm::raw_ostream::operator<<(v111, *(v38 + 136));
          v113 = v94[4];
          if (v94[3] - v113 > 0x2DuLL)
          {
            qmemcpy(v113, " ops that triggered an extra copy at runtime:\n", 46);
            v94[4] += 46;
            v114 = *(v38 + 136);
            if (!v114)
            {
              goto LABEL_134;
            }
          }

          else
          {
            v94 = llvm::raw_ostream::write(v94, " ops that triggered an extra copy at runtime:\n", 0x2EuLL);
            v114 = *(v38 + 136);
            if (!v114)
            {
              goto LABEL_134;
            }
          }

          v115 = *(v38 + 128);
          v116 = 8 * v114;
          do
          {
            v117 = *v115;
            v118 = llvm::dbgs(v94);
            v119 = mlir::OpPrintingFlags::OpPrintingFlags(v192);
            v120 = mlir::OpPrintingFlags::useLocalScope(v119);
            v94 = mlir::Operation::print(v117, v118, v120);
            v121 = *(v118 + 4);
            if (*(v118 + 3) == v121)
            {
              v94 = llvm::raw_ostream::write(v118, "\n", 1uLL);
            }

            else
            {
              *v121 = 10;
              ++*(v118 + 4);
            }

            ++v115;
            v116 -= 8;
          }

          while (v116);
LABEL_134:
          v122 = llvm::dbgs(v94);
          v123 = *(v122 + 4);
          if ((*(v122 + 3) - v123) > 0x13)
          {
            *(v123 + 16) = 540701806;
            *v123 = *"Runtime Wait count: ";
            *(v122 + 4) += 20;
          }

          else
          {
            v122 = llvm::raw_ostream::write(v122, "Runtime Wait count: ", 0x14uLL);
          }

          v124 = llvm::raw_ostream::operator<<(v122, *(v38 + 192));
          v125 = *(v124 + 4);
          if (*(v124 + 3) == v125)
          {
            v124 = llvm::raw_ostream::write(v124, "\n", 1uLL);
          }

          else
          {
            *v125 = 10;
            ++*(v124 + 4);
          }

          v126 = llvm::dbgs(v124);
          v127 = v126[4];
          if (v126[3] - v127 > 0x1DuLL)
          {
            qmemcpy(v127, "============================\n\n", 30);
            v126[4] += 30;
            v128 = *(a1 + 408);
            *(a1 + 408) = 0;
            v36 = v161;
            if (!v128)
            {
              goto LABEL_143;
            }
          }

          else
          {
            llvm::raw_ostream::write(v126, "============================\n\n", 0x1EuLL);
            v128 = *(a1 + 408);
            *(a1 + 408) = 0;
            v36 = v161;
            if (!v128)
            {
LABEL_143:

              GPU::EncodeDescriptor::~EncodeDescriptor(&v181);
              goto LABEL_144;
            }
          }

          std::default_delete<GPU::RuntimeExecutionReport>::operator()[abi:ne200100](a1 + 408, v128);
          goto LABEL_143;
        }

        v95 = v94 + 4;
        v96 = v94[4];
        v97 = "Couldn't find any ANERegionCall operation.\n";
        if (v94[3] - v96 < 0x2BuLL)
        {
LABEL_105:
          v98 = 43;
          goto LABEL_111;
        }
      }

      v99 = *(v97 + 1);
      *v96 = *v97;
      v96[1] = v99;
      *(v96 + 27) = *(v97 + 27);
      *v95 += 43;
      v100 = *(v38 + 48);
      if (!v100)
      {
        goto LABEL_118;
      }

      goto LABEL_112;
    }

    v163 = v33;
LABEL_80:
    v77 = llvm::dbgs(v64);
    v78 = *v75;
    v79 = *(v75 + 8);
    v80 = *(v77 + 4);
    if (v79 <= *(v77 + 3) - v80)
    {
      if (v79)
      {
        v81 = *(v75 + 8);
        memcpy(v80, v78, v79);
        v80 = (*(v77 + 4) + v81);
        *(v77 + 4) = v80;
      }
    }

    else
    {
      v77 = llvm::raw_ostream::write(v77, v78, v79);
      v80 = *(v77 + 4);
    }

    if (*(v77 + 3) - v80 > 1uLL)
    {
      *v80 = 10272;
      *(v77 + 4) += 2;
    }

    else
    {
      v77 = llvm::raw_ostream::write(v77, " (", 2uLL);
    }

    v82 = llvm::raw_ostream::operator<<(v77, *(v75 + 24));
    v83 = *(v82 + 4);
    if ((*(v82 + 3) - v83) > 2)
    {
      *(v83 + 2) = 10;
      *v83 = 14889;
      *(v82 + 4) += 3;
      v84 = *(v75 + 24);
      if (!v84)
      {
        goto LABEL_96;
      }
    }

    else
    {
      v82 = llvm::raw_ostream::write(v82, "):\n", 3uLL);
      v84 = *(v75 + 24);
      if (!v84)
      {
        goto LABEL_96;
      }
    }

    v85 = *(v75 + 16);
    v86 = 8 * v84;
    do
    {
      v87 = *v85;
      v88 = llvm::dbgs(v82);
      v89 = mlir::OpPrintingFlags::OpPrintingFlags(v192);
      v90 = mlir::OpPrintingFlags::useLocalScope(v89);
      v82 = mlir::Operation::print(v87, v88, v90);
      v91 = *(v88 + 4);
      if (*(v88 + 3) == v91)
      {
        v82 = llvm::raw_ostream::write(v88, "\n", 1uLL);
      }

      else
      {
        *v91 = 10;
        ++*(v88 + 4);
      }

      ++v85;
      v86 -= 8;
    }

    while (v86);
LABEL_96:
    v33 = v163;
    v64 = llvm::dbgs(v82);
    v92 = *(v64 + 4);
    if (*(v64 + 3) == v92)
    {
      v64 = llvm::raw_ostream::write(v64, "\n", 1uLL);
    }

    else
    {
      *v92 = 10;
      ++*(v64 + 4);
    }

    while (1)
    {
      v75 += 80;
      if (v75 == v76)
      {
        goto LABEL_102;
      }

      if (*v75 < 0xFFFFFFFFFFFFFFFELL)
      {
        if (v75 != v76)
        {
          goto LABEL_80;
        }

        goto LABEL_102;
      }
    }
  }

  if ([v165 compilationOnly])
  {
    v36 = 0;
  }

  else
  {
    v131 = *(*(a1 + 592) + 48);
    v159 = v27;
    v162 = v28;
    v132 = v165;
    v133 = v164;
    v134 = *(a1 + 208);
    v135 = v133;
    v136 = v134;
    v137 = v132;
    v181 = &unk_1F5B428B0;
    v182 = v135;
    v155 = v135;
    v157 = v137;
    v183 = v137;
    LOBYTE(v184) = a8;
    BYTE1(v184) = a9;
    v185 = 0u;
    v186 = 0u;
    v187 = 1065353216;
    v188 = 0;
    v189 = 0;
    v190 = v136;
    v191 = 0;
    CurrentProcedureInfo = GPU::ANERegionCallOpHandler::getCurrentProcedureInfo(*(v131 + 256));
    v160 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(v131 + 8)];
    v138 = *(CurrentProcedureInfo + 6);
    if (v138)
    {
      v139 = CurrentProcedureInfo[2];
      v140 = 8 * v138;
      do
      {
        v141 = [v159 objectAtIndexedSubscript:{*(*v131 + 8 * *v139), v155}];
        v142 = [MEMORY[0x1E698CD60] objectWithIOSurface:{objc_msgSend(v141, "iosurface")}];
        if (!v142 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        [v160 addObject:v142];

        ++v139;
        v140 -= 8;
      }

      while (v140);
    }

    v143 = [MEMORY[0x1E695DF70] arrayWithCapacity:{*(v131 + 72), v155}];
    v144 = *(CurrentProcedureInfo + 18);
    if (v144)
    {
      v145 = CurrentProcedureInfo[8];
      v146 = 8 * v144;
      do
      {
        v147 = [v162 objectAtIndexedSubscript:*(*(v131 + 64) + 8 * *v145)];
        v148 = [MEMORY[0x1E698CD60] objectWithIOSurface:{objc_msgSend(v147, "iosurface")}];
        if (!v148 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        [v143 addObject:v148];

        ++v145;
        v146 -= 8;
      }

      while (v146);
    }

    v149 = *(v131 + 256);
    if (*(v149 + 42))
    {
      v150 = 2;
      v36 = v162;
      v151 = a10;
      v152 = v157;
    }

    else
    {
      v152 = v157;
      v36 = v162;
      if ([v157[1] count])
      {
        v149 = *(v131 + 256);
        v150 = 2;
      }

      else
      {
        v153 = [v157 waitUntilCompleted];
        v149 = *(v131 + 256);
        if (v153)
        {
          v150 = 0;
        }

        else
        {
          v150 = *(v149 + 40) ^ 1;
        }
      }

      v151 = a10;
    }

    GPU::ANERegionCallOpHandler::encodeOpWithInputsAndOutputs(v149, &v181, CurrentProcedureInfo, v160, v143, v150, v151);
    if (a11)
    {
      *a11 = v150 != 0;
    }

    if (v188)
    {
      [v188 endEncoding];
      v154 = v188;
      v188 = 0;
    }

    (*(*a1 + 88))(a1);

    GPU::EncodeDescriptor::~EncodeDescriptor(&v181);
  }

LABEL_144:
  std::mutex::unlock((a1 + 144));

  return v36;
}

void sub_1E05FAD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  GPU::EncodeDescriptor::~EncodeDescriptor(&a39);

  std::mutex::unlock((v39 + 144));
  _Unwind_Resume(a1);
}

id GPURegionRuntime::evaluateOps(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3, void *a4)
{
  v5 = a2;
  v189[6] = *MEMORY[0x1E69E9840];
  v176 = a2;
  v164 = a3;
  v161 = a4;
  v167 = a1;
  if (*(a1 + 240) != 1 || (*(a1 + 220) & 8) == 0)
  {
    goto LABEL_79;
  }

  v7 = *(*(a1 + 592) + 32);
  v163 = v164;
  v165 = v161;
  v8 = v7;
  v177 = *v7[2];
  mlir::FunctionOpInterface::getArgumentTypes(&v177);
  v10 = v9;
  v183[0] = v184;
  v183[1] = 0x600000000;
  v11 = v9;
  if (v9)
  {
    if (v9 < 7uLL)
    {
      v12 = 0;
      v13 = v9;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v183, v184, v9, 8);
      v12 = LODWORD(v183[1]);
      v13 = v11 - LODWORD(v183[1]);
      if (v11 == LODWORD(v183[1]))
      {
        goto LABEL_9;
      }
    }

    bzero(v183[0] + 8 * v12, 8 * v13);
LABEL_9:
    LODWORD(v183[1]) = v10;
  }

  mlir::FunctionOpInterface::getArgumentTypes(&v177);
  v15 = v14;
  v187 = v189;
  v188 = 0x300000000;
  v16 = v14;
  if (!v14)
  {
    goto LABEL_17;
  }

  if (v14 < 4uLL)
  {
    v17 = 0;
    v18 = v14;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v189, v14, 16);
    v17 = v188;
    v18 = v16 - v188;
    if (v16 == v188)
    {
      goto LABEL_16;
    }
  }

  bzero(&v187[2 * v17], 16 * v18);
LABEL_16:
  LODWORD(v188) = v15;
LABEL_17:
  mlir::FunctionOpInterface::getResultTypes(&v177);
  v20 = v19;
  *&v185 = v186;
  *(&v185 + 1) = 0x600000000;
  v21 = v19;
  if (!v19)
  {
    goto LABEL_24;
  }

  if (v19 < 7uLL)
  {
    v22 = 0;
    v23 = v19;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v185, v186, v19, 8);
    v22 = DWORD2(v185);
    v23 = v21 - DWORD2(v185);
    if (v21 == DWORD2(v185))
    {
      goto LABEL_23;
    }
  }

  bzero((v185 + 8 * v22), 8 * v23);
LABEL_23:
  DWORD2(v185) = v20;
LABEL_24:
  v162 = v5;
  for (i = 0; ; ++i)
  {
    mlir::FunctionOpInterface::getArgumentTypes(&v177);
    if (i >= v25)
    {
      break;
    }

    v26 = *(((v177 + 16 * ((*(v177 + 44) >> 23) & 1) + ((*(v177 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v177 + 40) + 8);
    if (v26)
    {
      v27 = v26 - 8;
    }

    else
    {
      v27 = 0;
    }

    v28 = (*(*(*(v27 + 48) + 8 * i) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v28)
    {
      v29 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v28 + 8);
    }

    else
    {
      v29 = 0;
    }

    if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v28 + 8))
    {
      v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v28 + 8);
      v179 = v28;
      v180 = v30;
      if (!v28)
      {
        goto LABEL_44;
      }

      if (!mlir::CallOpInterface::getArgOperands(&v179))
      {
        goto LABEL_43;
      }

      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v179);
      if (v32)
      {
        v33 = 8 * v32;
        while (*ArgAttrsAttr != 0x8000000000000000)
        {
          ++ArgAttrsAttr;
          v33 -= 8;
          if (!v33)
          {
            goto LABEL_44;
          }
        }

LABEL_43:
        Context = mlir::Attribute::getContext((*(v8[1] + 64) + 24));
        v35 = [v163 objectAtIndexedSubscript:i];
        v36 = [v35 shape];
        v37 = [v163 objectAtIndexedSubscript:i];
        v38 = [v37 dataType];
        v39 = v36;
        MLIRElementType = getMLIRElementType(Context, v38);
        MLIRType = getMLIRType(v39, MLIRElementType);

        *(v183[0] + i) = MLIRType;
      }
    }

    else
    {
      v179 = 0;
      v180 = 0;
    }

LABEL_44:
    v42 = v8[1];
    if ((*(v42 + 220) & 0x10) != 0 && GPURegionRuntime::isSmallIntType(v42, v28, 0))
    {
      v43 = [v163 objectAtIndexedSubscript:i];
      v44 = [v43 mpsndarray];
      v179 = v28;
      v180 = v29;
      v45 = v44;
      v46 = mlir::CallableOpInterface::getArgAttrsAttr(&v179);
      NumElements = mlir::ShapedType::getNumElements(v46, v47);
      isSplat = mlir::ElementsAttr::isSplat(&v179);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
      v50 = NumElements * IntOrFloatBitWidth;
      if (v50 >= 0)
      {
        v51 = NumElements * IntOrFloatBitWidth;
      }

      else
      {
        v51 = v50 + 7;
      }

      v52 = [*(v8[1] + 48) metalDevice];
      v53 = v51 >> 3;
      v54 = [v52 newBufferWithLength:v53 options:0];

      v55 = *(v162 + 9);
      if (v55)
      {
        [v55 endEncoding];
        v56 = *(v162 + 9);
        *(v162 + 9) = 0;
      }

      v57 = *(v162 + 1);
      v58 = mlir::ElementsAttr::isSplat(&v179);
      [v45 exportDataWithCommandBuffer:v57 toBuffer:v54 destinationDataType:getMPSDataType(v58) offset:0 rowStrides:0];
      v59 = [*(v162 + 1) rootCommandBuffer];
      (**v162)(v162);
      [v59 waitUntilCompleted];
      v60 = v54;
      v61 = [v54 contents];
      v65 = mlir::DenseElementsAttr::getFromRawBuffer(v179, v180, v61, v53, v62, v63, v64);
      v66 = v65;
      if (v65)
      {
        v67 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v65 + 8);
      }

      else
      {
        v67 = 0;
      }

      v68 = &v187[2 * i];
      *v68 = v66;
      v68[1] = v67;
    }
  }

  for (j = 0; ; ++j)
  {
    mlir::FunctionOpInterface::getResultTypes(&v177);
    if (j == v70)
    {
      break;
    }

    v71 = [v165 objectAtIndexedSubscript:j];
    v72 = [MEMORY[0x1E695DFB0] null];
    v73 = v71 == v72;

    if (v73)
    {
      continue;
    }

    v74 = (*(*(*(*(v8[2] + 16) + 72) + 32 * j + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v74)
    {
      mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v74 + 8);
    }

    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v74 + 8))
    {
      v179 = 0;
      v180 = 0;
      continue;
    }

    v75 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v74 + 8);
    v179 = v74;
    v180 = v75;
    if (v74)
    {
      if (mlir::CallOpInterface::getArgOperands(&v179))
      {
        v76 = mlir::CallableOpInterface::getArgAttrsAttr(&v179);
        if (!v77)
        {
          continue;
        }

        v78 = 8 * v77;
        while (*v76 != 0x8000000000000000)
        {
          ++v76;
          v78 -= 8;
          if (!v78)
          {
            goto LABEL_56;
          }
        }
      }

      v79 = mlir::Attribute::getContext((*(v8[1] + 64) + 24));
      v80 = [v165 objectAtIndexedSubscript:j];
      v81 = [v80 shape];
      v82 = [v165 objectAtIndexedSubscript:j];
      v83 = [v82 dataType];
      v84 = v81;
      v85 = getMLIRElementType(v79, v83);
      v86 = getMLIRType(v84, v85);

      *(v185 + 8 * j) = v86;
    }

LABEL_56:
    ;
  }

  (*(*v8 + 16))(v8, v183[0], LODWORD(v183[1]), v187, v188, v185, DWORD2(v185));
  if (v185 != v186)
  {
    free(v185);
  }

  if (v187 != v189)
  {
    free(v187);
  }

  if (v183[0] != v184)
  {
    free(v183[0]);
  }

  v5 = v176;
LABEL_79:
  GPURegionRuntime::setupFeedsAndTargets(v167, v5, v164, v161, &v187);
  v175[9] = 0;
  v175[10] = 0;
  if (*(*(v167 + 592) + 40) == 1)
  {
    v179 = 0;
    LODWORD(isSplat) = 536870920;
    v185 = 0uLL;
    v186[0] = 0;
    operator new();
  }

  v175[0] = 13;
  v174 = 45;
  v173 = 8;
  v172 = 300000;
  v171 = 200000;
  v169 = 0;
  v170 = 30000000;
  WeakRetained = objc_loadWeakRetained((v167 + 72));
  os_unfair_lock_lock(WeakRetained + 204);

  v88 = objc_loadWeakRetained((v167 + 72));
  v169 = v88[103];

  v89 = objc_loadWeakRetained((v167 + 72));
  os_unfair_lock_unlock(v89 + 204);

  v166 = [MEMORY[0x1E695E0F0] mutableCopy];
  v90 = *(v176 + 1);
  if (v90)
  {
    [v90 mpsCommandBufferDescriptor];
  }

  else
  {
    v183[0] = 0;
    v183[1] = 0;
    v184[0] = 0;
  }

  *(v167 + 656) = *v183;
  *(v167 + 672) = v184[0];
  if (!*(v167 + 656))
  {
    v91 = v169 == 0;
    v92 = v175;
    if (!v169)
    {
      v92 = &v173;
    }

    *(v167 + 656) = *v92 >> 1;
    v93 = &v172;
    if (v91)
    {
      v93 = &v171;
    }

    *(v167 + 664) = *v93 >> 1;
  }

  (*(*v176 + 8))(v176);
  v94 = 0;
  v185 = **(v167 + 592);
  while (2)
  {
    mlir::FunctionOpInterface::getArgumentTypes(&v185);
    v96 = v185;
    v97 = ((v96 + 16 * ((*(v96 + 44) >> 23) & 1) + ((*(v96 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v96 + 40);
    if (v94 < v95)
    {
      v98 = *(v97 + 8);
      if (v98)
      {
        v99 = v98 - 8;
      }

      else
      {
        v99 = 0;
      }

      v100 = *(*(v99 + 48) + 8 * v94);
      if ((*(**(*(v167 + 592) + 32) + 24))(*(*(v167 + 592) + 32), v100))
      {
        goto LABEL_91;
      }

      v101 = (v100[1] & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v101 + 8))
      {
        v102 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v101 + 8);
        v183[0] = v101;
        v183[1] = v102;
        if (!v101)
        {
          goto LABEL_91;
        }

        if (mlir::CallOpInterface::getArgOperands(v183))
        {
          v103 = mlir::CallableOpInterface::getArgAttrsAttr(v183);
          if (v104)
          {
            v105 = 8 * v104;
            while (*v103 != 0x8000000000000000)
            {
              ++v103;
              v105 -= 8;
              if (!v105)
              {
                goto LABEL_91;
              }
            }

            goto LABEL_107;
          }
        }

        else
        {
LABEL_107:
          v106 = mlir::Attribute::getContext((*(v167 + 64) + 24));
          v107 = [v164 objectAtIndexedSubscript:v94];
          v108 = [v107 shape];
          v109 = [v164 objectAtIndexedSubscript:v94];
          v110 = [v109 dataType];
          v111 = v108;
          v112 = getMLIRElementType(v106, v110);
          v113 = getMLIRType(v111, v112);

          v179 = v100;
          *&v177 = v113;
          isSplat = *(mlir::Value::getParentRegion(&v179) + 2);
          v183[0] = &isSplat;
          v114 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>>>::__emplace_unique_key_args<mlir::Operation *,std::piecewise_construct_t const&,std::tuple<mlir::Operation * const&>,std::tuple<>>((v167 + 288), &isSplat);
          v183[0] = v179;
          std::__hash_table<std::__hash_value_type<void *,mlir::Type>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,mlir::Type>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,mlir::Type>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,mlir::Type>>>::__emplace_unique_key_args<void *,void *,mlir::Type&>(v114 + 3, v183);
        }
      }

      else
      {
        v183[0] = 0;
        v183[1] = 0;
      }

LABEL_91:
      ++v94;
      continue;
    }

    break;
  }

  v183[0] = &v185;
  v183[1] = v175;
  v184[0] = &v172;
  v184[1] = &v169;
  v184[2] = &v173;
  v184[3] = &v171;
  v184[4] = v167;
  v184[5] = &v176;
  v184[6] = &v174;
  v184[7] = &v170;
  v115 = *(v97 + 8);
  if (v115 != v97)
  {
    do
    {
      v116 = v115 - 8;
      if (!v115)
      {
        v116 = 0;
      }

      v117 = *(v116 + 40);
      v118 = v116 + 32;
      if (v117 != v116 + 32)
      {
        do
        {
          v119 = *(v117 + 8);
          v120 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v117, v95);
          mlir::detail::walk<mlir::ForwardIterator>(v120, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPURegionRuntime::evaluateOps(GPU::EncodeDescriptor *,NSArray<MPSGraphTensorData *> *,NSArray<MPSGraphTensorData *> *)::$_1::operator() const(mlir::FunctionOpInterface)::{lambda(mlir::Operation *)#1}>, v183, 1);
          v117 = v119;
        }

        while (v119 != v118);
      }

      v115 = *(v115 + 8);
    }

    while (v115 != v97);
    v96 = v185;
  }

  v121 = *(((v96 + 16 * ((*(v96 + 44) >> 23) & 1) + ((*(v96 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v96 + 40) + 8);
  if (v121)
  {
    v122 = (v121 - 8);
  }

  else
  {
    v122 = 0;
  }

  Terminator = mlir::Block::getTerminator(v122, v95);
  if ((*(Terminator + 46) & 0x80) != 0)
  {
    v124 = *(Terminator + 68);
    if (v124)
    {
      v125 = (*(Terminator + 72) + 24);
      do
      {
        v126 = (*(*v167 + 48))(v167, *v125, 0);
        [v166 addObject:v126];

        v125 += 4;
        --v124;
      }

      while (v124);
    }
  }

  v127 = *(v176 + 1);
  *v183 = *(v167 + 656);
  v184[0] = *(v167 + 672);
  [v127 setMpsCommandBufferDescriptor:v183];
  v128 = [*(v167 + 128) allKeys];
  if (![v128 count] && v188 == v187)
  {
    v131 = 0;
  }

  else
  {
    v129 = objc_alloc(MEMORY[0x1E6974740]);
    v130 = [*(v176 + 1) device];
    v131 = [v129 initWithDevice:v130];
  }

  if ([v128 count])
  {
    for (k = 0; k < [v128 count]; ++k)
    {
      v133 = [v128 objectAtIndexedSubscript:k];
      v134 = [*(v167 + 128) objectForKeyedSubscript:v133];
      v135 = [v134 mpsndarray];

      v136 = [v133 variable];
      v137 = [*(v176 + 1) device];
      v138 = [v136 mpsNDArrayWithDevice:v137];

      v139 = GPU::EncodeDescriptor::getcomputeEncoder(v176);
      v140 = *(v176 + 1);
      v182 = v135;
      v141 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v182 count:1];
      [v131 encodeToMPSCommandEncoder:v139 commandBuffer:v140 sourceArrays:v141 resultState:0 destinationArray:v138 kernelDAGObject:0];
    }
  }

  if (v188 != v187)
  {
    v142 = 0;
    v143 = 0;
    do
    {
      v144 = GPU::EncodeDescriptor::getcomputeEncoder(v176);
      if (v143 >= (v188 - v187) >> 4)
      {
        std::vector<std::pair<MPSGraphTensorData * {__strong},MPSGraphTensorData * {__strong}>>::__throw_out_of_range[abi:ne200100]();
      }

      v145 = *(v176 + 1);
      v146 = [v187[v142] mpsndarray];
      v181 = v146;
      v147 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v181 count:1];
      if (v143 >= (v188 - v187) >> 4)
      {
        std::vector<std::pair<MPSGraphTensorData * {__strong},MPSGraphTensorData * {__strong}>>::__throw_out_of_range[abi:ne200100]();
      }

      v148 = [v187[v142 + 1] mpsndarray];
      [v131 encodeToMPSCommandEncoder:v144 commandBuffer:v145 sourceArrays:v147 destinationArray:v148];

      ++v143;
      v142 += 2;
    }

    while (v143 < (v188 - v187) >> 4);
  }

  v149 = v176;
  v150 = *(v176 + 9);
  if (v150)
  {
    [v150 endEncoding];
    v151 = *(v149 + 9);
    *(v149 + 9) = 0;

    v149 = v176;
  }

  v152 = *(v167 + 136);
  v168[0] = MEMORY[0x1E69E9820];
  v168[1] = 3221225472;
  v168[2] = ___ZN16GPURegionRuntime11evaluateOpsEPN3GPU16EncodeDescriptorEP7NSArrayIP18MPSGraphTensorDataES7__block_invoke;
  v168[3] = &__block_descriptor_40_e35_v32__0__MPSGraphTensorData_8Q16_B24l;
  v168[4] = v149;
  [v152 enumerateObjectsUsingBlock:v168];
  (*(*v167 + 88))(v167);
  v153 = v176;
  v154 = *(v176 + 9);
  if (v154)
  {
    [v154 endEncoding];
    v155 = *(v153 + 9);
    *(v153 + 9) = 0;
  }

  v156 = v187;
  if (v187)
  {
    v157 = v188;
    v158 = v187;
    if (v188 != v187)
    {
      do
      {

        v159 = *(v157 - 2);
        v157 -= 2;
      }

      while (v157 != v156);
      v158 = v187;
    }

    v188 = v156;
    operator delete(v158);
  }

  return v166;
}

void sub_1E05FC2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = *(v67 - 240);
  if (v69 == a10)
  {
    v70 = *(v67 - 176);
    if (v70 == a11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    free(v69);
    v70 = *(v67 - 176);
    if (v70 == a11)
    {
LABEL_3:
      v71 = a67;
      if (a67 == a12)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  free(v70);
  v71 = a67;
  if (a67 == a12)
  {
LABEL_5:

    _Unwind_Resume(a1);
  }

LABEL_4:
  free(v71);
  goto LABEL_5;
}

uint64_t ___ZN10MPSRuntime11evaluateOpsEN4mlir4func6FuncOpEP21RuntimeSpecializationP7NSArrayIP18MPSGraphTensorDataES9_P37MPSGraphExecutableExecutionDescriptorP16MPSCommandBufferbbbPb_block_invoke_2(uint64_t result, void *a2)
{
  if (!a2[2])
  {
    return [*(result + 32) encodeSignalEvent:a2[1] value:a2[3]];
  }

  return result;
}

void GPURegionRuntime::encodeOp(GPURegionRuntime *this, mlir::Block **a2, id *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v43 = a2;
  v5 = *(a2[6] + 2);
  v6 = v5 == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::mpsx::MemrefBackedOp,void>::id;
  v7 = v6;
  if (v6)
  {
    goto LABEL_27;
  }

  v8 = a2;
  if (mlir::Block::getTerminator(a2[2], a2) == a2)
  {
    goto LABEL_27;
  }

  if (mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v8))
  {
    v44.n128_u64[0] = v8;
    v44.n128_u64[1] = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v8);
    if (!v8)
    {
      goto LABEL_36;
    }

    __dst[0] = &v46;
    __dst[1] = 0x400000000;
    mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v44, __dst);
    v9 = __dst[0];
    if (LODWORD(__dst[1]))
    {
      v10 = 40 * LODWORD(__dst[1]) - 40;
      do
      {
        v11 = **v9;
        {
          v14 = llvm::getTypeName<mlir::MemoryEffects::Read>();
          mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v14, v15);
        }

        v6 = v11 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id;
        v12 = v11 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id;
        v13 = !v6 || v10 == 0;
        v10 -= 40;
        v9 += 5;
      }

      while (!v13);
      v9 = __dst[0];
      if (__dst[0] == &v46)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v12 = 0;
      if (__dst[0] == &v46)
      {
        goto LABEL_26;
      }
    }

    free(v9);
LABEL_26:
    if (v12)
    {
      goto LABEL_27;
    }

    v8 = v43;
    goto LABEL_36;
  }

  v44 = 0uLL;
LABEL_36:
  v25 = *(v8 + 9);
  v24 = (v8 + 36);
  v23 = v25;
  if (v25)
  {
    v26 = (v24 - 13);
  }

  else
  {
    v26 = 0;
  }

  v44.n128_u64[0] = v26;
  v44.n128_u64[1] = v23;
  mlir::ResultRange::use_begin(&v44, __dst);
  v27 = *v24;
  if (v27)
  {
    v28 = (v24 - 13);
  }

  else
  {
    v28 = 0;
  }

  v44.n128_u64[0] = v28;
  v44.n128_u64[1] = v27;
  mlir::ResultRange::use_end(&v44, v41);
  v39[0] = *__dst;
  v39[1] = v46;
  v29 = v47;
  v40 = v47;
  v30 = v42;
  if (v47 == v42)
  {
    return;
  }

  while (1)
  {
    v31 = *(v29 + 16);
    if (*(v31 + 36) != 1)
    {
      break;
    }

    v32 = *(*(mlir::Block::getParentOp(*(v31 + 16)) + 48) + 16);
    v33 = v32 == &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id || v32 == &mlir::detail::TypeIDResolver<mlir::mpsx::MemrefBackedOp,void>::id;
    if (v33 || !(*(**(*(this + 74) + 32) + 48))(*(*(this + 74) + 32), v31 - 16))
    {
      break;
    }

    mlir::ResultRange::UseIterator::operator++(__dst);
    v29 = v47;
    if (v47 == v30)
    {
      return;
    }
  }

LABEL_27:
  v16 = v43;
  if ((v7 & 1) == 0 && *(v43 + 9) == 1 && *(*(v43 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
  {
    v18 = (*(**(*(this + 74) + 32) + 64))(*(*(this + 74) + 32), v43 - 16);
    if (v18)
    {
      v19 = v17;
      v20 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>(this + 31, &v43);
      if (!v20)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v21 = v20[3];
      mlir::mps::CPUNDArray::CPUNDArray(__dst, v18, v19);
      GPU::BaseOpHandler::encodeConstantOp(v21, a3, __dst, 0);
      mlir::mps::CPUNDArray::~CPUNDArray(__dst);
      v22 = *(this + 108);
      if (v22 >= *(this + 109))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(this + 424, this + 440, v22 + 1, 8);
        LODWORD(v22) = *(this + 108);
      }

      *(*(this + 53) + 8 * v22) = v21;
      ++*(this + 108);
      return;
    }

    v16 = v43;
  }

  *&v39[0] = *(*(v16 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(v39);
  v35 = strlen(AttrData);
  if (v35 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v36 = v35;
  if (v35 >= 0x17)
  {
    operator new();
  }

  BYTE7(v46) = v35;
  if (v35)
  {
    memmove(__dst, AttrData, v35);
  }

  *(__dst + v36) = 0;
  v37 = std::__hash_table<std::__hash_value_type<std::string,MPSMLIROps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIROps>>>::find<std::string>(this + 1, __dst);
  if (!v37)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v38 = *(v37 + 10);
  switch(v38)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 126:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 136:
    case 137:
    case 139:
    case 140:
    case 141:
    case 142:
    case 144:
    case 145:
    case 146:
    case 147:
    case 148:
    case 149:
    case 150:
    case 151:
    case 152:
    case 153:
    case 154:
    case 155:
    case 156:
    case 158:
    case 159:
    case 160:
    case 161:
    case 163:
    case 164:
    case 165:
    case 168:
    case 169:
    case 170:
    case 171:
    case 172:
    case 173:
    case 174:
    case 175:
    case 176:
    case 177:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 184:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 192:
    case 193:
    case 194:
    case 195:
    case 197:
    case 198:
    case 199:
    case 200:
    case 201:
    case 202:
    case 203:
    case 204:
    case 205:
    case 206:
    case 207:
    case 208:
    case 209:
    case 210:
    case 212:
    case 213:
    case 214:
    case 215:
    case 216:
    case 217:
    case 218:
    case 219:
    case 220:
    case 221:
    case 222:
    case 223:
    case 224:
    case 225:
    case 226:
    case 227:
    case 228:
    case 230:
    case 231:
    case 232:
    case 233:
    case 234:
      GPURegionRuntime::runOp<GPU::AbsoluteOpHandler>(this, v43, a3);
      break;
    case 41:
      GPURegionRuntime::runOp<GPU::ConstantArithOpHandler>(this, v43, a3);
      break;
    case 229:
      GPURegionRuntime::runOp<GPU::ViewMemrefOpHandler>(this, v43, a3);
      break;
    default:
      if (!v38 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      break;
  }

  if (SBYTE7(v46) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1E05FDD50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t computeProducedValues(uint64_t result, GPURegionRuntime *a2, uint64_t a3, unint64_t *a4, MPSDataType *a5)
{
  if (result)
  {
    v5 = *(*(result + 48) + 16);
    if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id)
    {
      return 0;
    }

    if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::ExpandDimsOp,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::mps::SqueezeOp,void>::id)
    {
      return 0;
    }

    if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::mps::TransposeOp,void>::id)
    {
      return 0;
    }

    if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::TypeConstraintOp,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id)
    {
      return 0;
    }

    if (v5 == &mlir::detail::TypeIDResolver<mlir::scf::ForOp,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id)
    {
      return 0;
    }

    else
    {
      v11 = result;
      result = 0;
      if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::DynamicShapeCastOp,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::mps::VariableFromTensorOp,void>::id)
      {
        result = 0;
        if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::ReadVariableOp,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::mps::AssignVariableOp,void>::id)
        {
          result = 0;
          if (v5 != &mlir::detail::TypeIDResolver<mlir::mpsx::MemrefBackedOp,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::mpsx::UseMemrefOp,void>::id)
          {
            result = 0;
            if (v5 != &mlir::detail::TypeIDResolver<mlir::mps_spi::StridedArrayViewOp,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::memref::AllocOp,void>::id)
            {
              result = 0;
              if (v5 != &mlir::detail::TypeIDResolver<mlir::memref::DeallocOp,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::memref::ViewOp,void>::id)
              {
                result = 0;
                if (v5 != &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
                {
                  if (a4)
                  {
                    *a4 = 0;
                  }

                  v12 = *(v11 + 36);
                  v13 = v12 ? v11 - 16 : 0;
                  result = 0;
                  if (v12)
                  {
                    v14 = 0;
                    v45 = v13;
                    while (1)
                    {
                      v15 = result;
                      v16 = a3;
                      v17 = a4;
                      v18 = a5;
                      v19 = a2;
                      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, v14);
                      a2 = v19;
                      v21 = NextResultAtOffset;
                      v49 = 0;
                      if (v19)
                      {
                        if (((*(**(*(v19 + 74) + 32) + 48))(*(*(v19 + 74) + 32), NextResultAtOffset) & 1) != 0 || (StaticType = GPURegionRuntime::getStaticType(v19, v21), *(*StaticType + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id))
                        {
                          a5 = v18;
                          a4 = v17;
                          a3 = v16;
                          a2 = v19;
                          result = v15;
                          if (++v14 == v12)
                          {
                            return result;
                          }
                        }

                        else
                        {
LABEL_52:
                          v49 = StaticType;
                          Value = mlir::ArrayAttr::getValue(&v49);
                          if (!v24)
                          {
                            v34 = 1;
                            a5 = v18;
                            a4 = v17;
                            a3 = v16;
                            a2 = v19;
                            goto LABEL_62;
                          }

                          v25 = v24;
                          v26 = (v24 - 1) & 0x1FFFFFFFFFFFFFFFLL;
                          a5 = v18;
                          a4 = v17;
                          a3 = v16;
                          a2 = v19;
                          if (!v26)
                          {
                            v29 = Value;
                            v34 = 1;
LABEL_60:
                            v35 = (Value + 8 * v25);
                            do
                            {
                              v36 = *v29++;
                              v34 *= v36;
                            }

                            while (v29 != v35);
                            goto LABEL_62;
                          }

                          v27 = v26 + 1;
                          v28 = (v26 + 1) & 0x3FFFFFFFFFFFFFFELL;
                          v29 = (Value + 8 * v28);
                          v30 = (Value + 8);
                          v31 = v28;
                          v32 = 1;
                          v33 = 1;
                          do
                          {
                            v32 *= *(v30 - 1);
                            v33 *= *v30;
                            v30 += 2;
                            v31 -= 2;
                          }

                          while (v31);
                          v34 = v33 * v32;
                          if (v27 != v28)
                          {
                            goto LABEL_60;
                          }

LABEL_62:
                          if (a3)
                          {
                            *a5 = MPSDataTypeFloat32;
                            ElementTypeOrSelf = mlir::getElementTypeOrSelf(v21);
                            if (mlir::Type::isF16(&ElementTypeOrSelf))
                            {
                              a5 = v18;
                              *v18 = MPSDataTypeFloat16;
                              goto LABEL_71;
                            }

                            if (mlir::Type::isBF16(&ElementTypeOrSelf))
                            {
                              a5 = v18;
                              v39 = -1879048176;
LABEL_70:
                              *v18 = v39;
LABEL_71:
                              v37 = 2;
LABEL_72:
                              a4 = v17;
                              a3 = v16;
                              a2 = v19;
                              v38 = v15;
                              v13 = v45;
                              goto LABEL_73;
                            }

                            if (mlir::Type::isInteger(&ElementTypeOrSelf, 16))
                            {
                              a5 = v18;
                              v39 = 536870928;
                              goto LABEL_70;
                            }

                            if (mlir::Type::isInteger(&ElementTypeOrSelf, 8))
                            {
                              a5 = v18;
                              *v18 = MPSDataTypeInt8;
                              v37 = 1;
                              goto LABEL_72;
                            }

                            v40 = ElementTypeOrSelf;
                            v41 = *(*ElementTypeOrSelf + 136);
                            if (v41 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
                            {
                              v40 = 0;
                            }

                            v47 = v40;
                            if (v41 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
                            {
                              v37 = 4;
LABEL_87:
                              a5 = v18;
                              goto LABEL_72;
                            }

                            v42 = 285212704;
                            v46 = mlir::AffineMapAttr::getValue(&v47);
                            if (mlir::Type::isF32(&v46))
                            {
                              v42 = 285212736;
                              v43 = 8;
                            }

                            else
                            {
                              v46 = mlir::AffineMapAttr::getValue(&v47);
                              isF16 = mlir::Type::isF16(&v46);
                              v43 = 4;
                              v37 = 4;
                              if (!isF16)
                              {
                                goto LABEL_87;
                              }
                            }

                            *v18 = v42;
                            v37 = v43;
                            goto LABEL_87;
                          }

                          v37 = 1;
                          v38 = v15;
LABEL_73:
                          result = v38 + v37 * v34;
                          if (a4)
                          {
                            *a4 += v34;
                          }

                          if (++v14 == v12)
                          {
                            return result;
                          }
                        }
                      }

                      else
                      {
                        StaticType = *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8;
                        if (*(*StaticType + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
                        {
                          goto LABEL_52;
                        }

                        a5 = v18;
                        a3 = v16;
                        a4 = v17;
                        result = v15;
                        if (++v14 == v12)
                        {
                          return result;
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
    }
  }

  return result;
}

uint64_t GPURegionRuntime::runOp<GPU::AbsoluteOpHandler>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a2;
  v5 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>((a1 + 248), &v8);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = v5[3];
  if (*(a1 + 220))
  {
    objc_storeStrong((a3 + 80), v6[8]);
  }

  return (*(*v6 + 1))(v6, a3);
}

void GPURegionRuntime::runOp<GPU::ConstantArithOpHandler>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a2;
  v5 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>((a1 + 248), &v6);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  if (*(a1 + 220))
  {
    objc_storeStrong((a3 + 80), *(v5[3] + 64));
  }
}

void GPURegionRuntime::runOp<GPU::ViewMemrefOpHandler>(uint64_t a1, uint64_t a2, id *a3)
{
  v7 = a2;
  v5 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>((a1 + 248), &v7);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = v5[3];
  if (*(a1 + 220))
  {
    objc_storeStrong(a3 + 10, v6[8]);
  }

  GPU::ViewMemrefOpHandler::encodeOp(v6, a3);
}

uint64_t getNumberOfUniqueUses(void *a1)
{
  v1 = *a1;
  *v19 = 0u;
  *__p = 0u;
  v21 = 1065353216;
  v2 = 0;
  if (v1)
  {
    do
    {
      v3 = *(v1[2] + 16);
      if (v3)
      {
        ParentOp = mlir::Block::getParentOp(v3);
        v18 = ParentOp;
        if (ParentOp)
        {
          if (*(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id)
          {
            if (v19[1])
            {
              v5 = 0x9DDFEA08EB382D69 * ((8 * (ParentOp & 0x1FFFFFFF) + 8) ^ HIDWORD(ParentOp));
              v6 = 0x9DDFEA08EB382D69 * (HIDWORD(ParentOp) ^ (v5 >> 47) ^ v5);
              v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
              v8 = vcnt_s8(v19[1]);
              v8.i16[0] = vaddlv_u8(v8);
              if (v8.u32[0] > 1uLL)
              {
                v9 = v7;
                if (v7 >= v19[1])
                {
                  v9 = v7 % v19[1];
                }
              }

              else
              {
                v9 = (v19[1] - 1) & v7;
              }

              v10 = *(v19[0] + v9);
              if (v10)
              {
                v11 = *v10;
                if (v11)
                {
                  if (v8.u32[0] < 2uLL)
                  {
                    while (1)
                    {
                      v13 = v11[1];
                      if (v13 == v7)
                      {
                        if (v11[2] == ParentOp)
                        {
                          goto LABEL_27;
                        }
                      }

                      else if ((v13 & (v19[1] - 1)) != v9)
                      {
                        goto LABEL_25;
                      }

                      v11 = *v11;
                      if (!v11)
                      {
                        goto LABEL_25;
                      }
                    }
                  }

                  do
                  {
                    v12 = v11[1];
                    if (v12 == v7)
                    {
                      if (v11[2] == ParentOp)
                      {
                        goto LABEL_27;
                      }
                    }

                    else
                    {
                      if (v12 >= v19[1])
                      {
                        v12 %= v19[1];
                      }

                      if (v12 != v9)
                      {
                        break;
                      }
                    }

                    v11 = *v11;
                  }

                  while (v11);
                }
              }
            }

LABEL_25:
            std::__hash_table<mlir::Operation *,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,std::allocator<mlir::Operation *>>::__emplace_unique_key_args<mlir::Operation *,mlir::Operation * const&>(v19, &v18);
          }
        }
      }

      ++v2;
LABEL_27:
      v1 = *v1;
    }

    while (v1);
    v14 = __p[0];
    if (__p[0])
    {
      do
      {
        v15 = *v14;
        operator delete(v14);
        v14 = v15;
      }

      while (v15);
    }

    v16 = v19[0];
    v19[0] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  return v2;
}

void sub_1E05FE5B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unordered_set<mlir::Operation *>::~unordered_set[abi:ne200100](va);
  _Unwind_Resume(a1);
}

id GPURegionRuntime::getTensorDataFromDataMap(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 648);
  v19 = a2;
  v18 = *(mlir::Value::getParentRegion(&v19) + 2);
  v5 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>((a1 + 88), &v18);
  if (v5)
  {
    v17 = v19;
    v6 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>(v5 + 3, &v17);
    if (v6)
    {
      v7 = v6[3];
      if (v7)
      {

        return v7;
      }
    }
  }

  if (*v4 != 1)
  {
    goto LABEL_11;
  }

  v9 = *(v4 + 208);
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = *(v4 + 192);
  v11 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
  v12 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v11 >> 47) ^ v11);
  v13 = (v9 - 1) & (-348639895 * ((v12 >> 47) ^ v12));
  v14 = *(v10 + 16 * v13);
  if (v14 != a2)
  {
    v15 = 1;
    while (v14 != -4096)
    {
      v16 = v13 + v15++;
      v13 = v16 & (v9 - 1);
      v14 = *(v10 + 16 * v13);
      if (v14 == a2)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_11;
  }

LABEL_10:
  if (v13 == v9)
  {
LABEL_11:
    v7 = 0;

    return v7;
  }

  v7 = *(v10 + 16 * v13 + 8);

  return v7;
}

MPSGraphTensorData *GPURegionRuntime::allocateTensorDataForValue(uint64_t a1, void *a2, void *a3, char a4, uint64_t a5, unint64_t a6)
{
  v8 = a2;
  v156 = *MEMORY[0x1E69E9840];
  v150 = a2;
  v139 = a3;
  v10 = (*(*a1 + 48))(a1, v8, 0);
  v11 = v10;
  if (v10)
  {
    v12 = [(MPSGraphTensorData *)v10 mpsndarray];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_160;
    }

    v14 = [(MPSGraphTensorData *)v11 mpsndarray];
    if ([v14 readCount])
    {

      goto LABEL_160;
    }

    BaseRuntime::unsetTensorDataFromDataMap(a1, v150);

    v8 = v150;
  }

  StaticType = GPURegionRuntime::getStaticType(a1, v8);
  v16 = StaticType;
  v17 = *(*StaticType + 136);
  if (v17 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v17 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v19 = StaticType;
  }

  else
  {
    v19 = 0;
  }

  *&v155[0] = v19;
  if (v19)
  {
    if (mlir::TensorType::hasRank(v155))
    {
      mlir::ArrayAttr::getValue(v155);
    }

    if (mlir::TensorType::hasRank(v155))
    {
      Value = mlir::ArrayAttr::getValue(v155);
      if (!v21)
      {
        goto LABEL_20;
      }

      v22 = 8 * v21;
      while (*Value != 0x8000000000000000)
      {
        ++Value;
        v22 -= 8;
        if (!v22)
        {
          goto LABEL_20;
        }
      }
    }

    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

LABEL_20:
  MPSDataType = getMPSDataType(v16);
  *&v151[0] = v150;
  DefiningOp = mlir::Value::getDefiningOp(v151);
  if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CallOp,void>::id)
  {
    goto LABEL_44;
  }

  v25 = **&v151[0];
  if (**&v151[0])
  {
    while (*(*(v25[2] + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::CallOp,void>::id)
    {
      v25 = *v25;
      if (!v25)
      {
        goto LABEL_25;
      }
    }

LABEL_44:
    v35 = [MPSGraphTensorData alloc];
    v36 = *(a1 + 48);
    v37 = getMPSShapeFromMLIR(v16);
    v11 = [(MPSGraphTensorData *)v35 initWithDevice:v36 rowBytesAlignment:a6 shape:v37 dataType:MPSDataType];

    BaseRuntime::setTensorDataToDataMap(a1, v150, v11);
    goto LABEL_160;
  }

LABEL_25:
  v26 = (*(*&v151[0] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v26 + 8))
  {
    v155[0] = 0uLL;
    goto LABEL_42;
  }

  v27 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v26 + 8);
  *&v155[0] = v26;
  *(&v155[0] + 1) = v27;
  if (v26)
  {
    if (mlir::CallOpInterface::getArgOperands(v155))
    {
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v155);
      if (!v29)
      {
        goto LABEL_42;
      }

      v30 = 8 * v29;
      while (*ArgAttrsAttr != 0x8000000000000000)
      {
        ++ArgAttrsAttr;
        v30 -= 8;
        if (!v30)
        {
          goto LABEL_42;
        }
      }
    }

    v31 = **&v151[0];
    if (**&v151[0])
    {
      v32 = 0;
      do
      {
        while (v32)
        {
          v31 = *v31;
          v32 = 1;
          if (!v31)
          {
            goto LABEL_44;
          }
        }

        v33 = *(*(v31[2] + 48) + 16);
        v32 = v33 == &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id;
        v31 = *v31;
      }

      while (v31);
      if (v33 == &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
      {
        goto LABEL_44;
      }
    }
  }

LABEL_42:
  if (a4)
  {
    v34 = 1;
  }

  else
  {
    v34 = valueCanBeTemporary(v150) ^ 1;
  }

  v136 = v34;
  v155[0] = xmmword_1E099FED8;
  v155[1] = unk_1E099FEE8;
  v155[2] = xmmword_1E099FEF8;
  v155[3] = unk_1E099FF08;
  v155[6] = xmmword_1E099FF38;
  v155[7] = unk_1E099FF48;
  v155[4] = xmmword_1E099FF18;
  v155[5] = unk_1E099FF28;
  if (*(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v41 = 0;
    goto LABEL_58;
  }

  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8))
  {
    v38 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
    *&v151[0] = v16;
    *(&v151[0] + 1) = v38;
    if (v16)
    {
      v39 = mlir::CallableOpInterface::getArgAttrsAttr(v151);
      v41 = v40;
      if (!v40)
      {
        goto LABEL_58;
      }

      v42 = 0;
      v43 = (v39 + 8 * v40 - 8);
      v44 = 0uLL;
      v45 = 0uLL;
      v46 = 0uLL;
      v47 = 0uLL;
      do
      {
        v48 = *v43;
        v43 -= 2;
        v146 = v44;
        v147 = v45;
        v148 = v46;
        v149 = v47;
        *(&v146 + (v42 & 0xF)) = v48;
        v46 = v148;
        v47 = v149;
        v44 = v146;
        v45 = v147;
        ++v42;
      }

      while (v40 != v42);
      goto LABEL_56;
    }
  }

  else
  {
    v151[0] = 0uLL;
  }

  v44 = xmmword_1E0971950;
  v45 = 0uLL;
  v41 = 1;
  v46 = 0uLL;
  v47 = 0uLL;
LABEL_56:
  v49 = 0;
  do
  {
    v145[0] = v44;
    v145[1] = v45;
    v145[2] = v46;
    v145[3] = v47;
    *(v155 + v49) = *(v145 + (v49 & 0xF));
    ++v49;
  }

  while (v41 != v49);
LABEL_58:
  v137 = [MEMORY[0x1E6974490] descriptorWithDataType:getMPSDataType(v16) dimensionCount:v41 dimensionSizes:v155];
  if (a6 == 1)
  {
    v50 = mlir::Value::getDefiningOp(&v150);
    if (!v50 || *(*(v50 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id)
    {
      v51 = *v150;
      if (*v150)
      {
        a6 = 64;
        while (*(*(v51[2] + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id)
        {
          v51 = *v51;
          if (!v51)
          {
            goto LABEL_67;
          }
        }

        [v137 setPreferPackedRows:1];
        goto LABEL_68;
      }
    }

    a6 = 64;
  }

LABEL_67:
  [v137 setRowBytes:(a6 + *&v155[0] * (MPSDataType >> 3) - 1) / a6 * a6];
LABEL_68:
  v52 = *(a1 + 616);
  if (!*&v52)
  {
    goto LABEL_88;
  }

  v53 = 0x9DDFEA08EB382D69 * ((8 * (v150 & 0x1FFFFFFF) + 8) ^ HIDWORD(v150));
  v54 = 0x9DDFEA08EB382D69 * (HIDWORD(v150) ^ (v53 >> 47) ^ v53);
  v55 = 0x9DDFEA08EB382D69 * (v54 ^ (v54 >> 47));
  v56 = vcnt_s8(v52);
  v56.i16[0] = vaddlv_u8(v56);
  if (v56.u32[0] > 1uLL)
  {
    v57 = v55;
    if (v55 >= *&v52)
    {
      v57 = v55 % *&v52;
    }
  }

  else
  {
    v57 = v55 & (*&v52 - 1);
  }

  v58 = *(*(a1 + 608) + 8 * v57);
  if (!v58 || (v59 = *v58) == 0)
  {
LABEL_88:
    v63 = 0;
    goto LABEL_89;
  }

  if (v56.u32[0] < 2uLL)
  {
    v60 = *&v52 - 1;
    while (1)
    {
      v62 = v59[1];
      if (v62 == v55)
      {
        if (v59[2] == v150)
        {
          goto LABEL_137;
        }
      }

      else if ((v62 & v60) != v57)
      {
        goto LABEL_88;
      }

      v59 = *v59;
      if (!v59)
      {
        goto LABEL_88;
      }
    }
  }

  while (1)
  {
    v61 = v59[1];
    if (v61 == v55)
    {
      break;
    }

    if (v61 >= *&v52)
    {
      v61 %= *&v52;
    }

    if (v61 != v57)
    {
      goto LABEL_88;
    }

LABEL_78:
    v59 = *v59;
    if (!v59)
    {
      goto LABEL_88;
    }
  }

  if (v59[2] != v150)
  {
    goto LABEL_78;
  }

LABEL_137:
  v86 = (*(*a1 + 48))(a1, v59[3], 0);
  v63 = v86;
  if (v86)
  {
    v87 = [v86 mpsndarray];
    v88 = GPURegionRuntime::getStaticType(a1, v150);
    v89 = getMPSShapeFromMLIR(v88);
    v90 = objc_alloc_init(MEMORY[0x1E6974740]);
    [v90 setLabel:@"reshapeAliasedTensor"];
    v91 = [v90 reshapeWithCommandBuffer:v139 sourceArray:v87 shape:v89 destinationArray:0];
    if (v91)
    {
      v11 = [[MPSGraphTensorData alloc] initWithMPSNDArray:v91];
      BaseRuntime::setTensorDataToDataMap(a1, v150, v11);
    }

    if (v91)
    {
      goto LABEL_159;
    }
  }

LABEL_89:

  v64 = v150;
  v65 = v139;
  v66 = v137;
  v67 = (v64[1] & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v67 + 8))
  {
    v153 = 0;
    v154 = 0;
    goto LABEL_155;
  }

  v68 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v67 + 8);
  v153 = v67;
  v154 = v68;
  if (!v67 || !mlir::CallOpInterface::getArgOperands(&v153))
  {
    goto LABEL_155;
  }

  v69 = mlir::CallableOpInterface::getArgAttrsAttr(&v153);
  if (v70)
  {
    v71 = 8 * v70;
    do
    {
      if (*v69 == 0x8000000000000000)
      {
        goto LABEL_155;
      }

      ++v69;
      v71 -= 8;
    }

    while (v71);
  }

  v72 = *v64;
  v152 = 0;
  if (!v72)
  {
    goto LABEL_155;
  }

  v135 = v64;
  v73 = 0;
  while (2)
  {
    v82 = v72[2];
    if (v82)
    {
      v74 = *(*(v82 + 48) + 16);
      if (v74 == &mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id)
      {
        v83 = v72[2];
      }

      else
      {
        v83 = 0;
      }

      *&v151[0] = v83;
      if (v74 == &mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id)
      {
        if (!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(v151))
        {
          ++v73;
          v152 = *&v151[0];
          goto LABEL_123;
        }

        v74 = *(*(v82 + 48) + 16);
      }

      v81 = v74 == &mlir::detail::TypeIDResolver<mlir::mps::StridedSliceOp,void>::id || v74 == &mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id || v74 == &mlir::detail::TypeIDResolver<mlir::mps::CropOp,void>::id || v74 == &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id || v74 == &mlir::detail::TypeIDResolver<mlir::mps::TransposeOp,void>::id || v74 == &mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id || v74 == &mlir::detail::TypeIDResolver<mlir::mps::Flatten2DOp,void>::id;
      v73 += v81;
    }

LABEL_123:
    v72 = *v72;
    if (v72)
    {
      continue;
    }

    break;
  }

  if (v73 != 1)
  {
    v63 = 0;
    goto LABEL_156;
  }

  if (!v152)
  {
    goto LABEL_155;
  }

  v84 = (*(v152 - 8) & 0xFFFFFFFFFFFFFFF8);
  v85 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v84 + 8);
  if (v85)
  {
    v85 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v84 + 8);
  }

  else
  {
    v84 = 0;
  }

  *&v151[0] = v84;
  *(&v151[0] + 1) = v85;
  if (v84)
  {
    if (!mlir::CallOpInterface::getArgOperands(v151))
    {
      goto LABEL_155;
    }

    v92 = mlir::CallableOpInterface::getArgAttrsAttr(v151);
    if (v93)
    {
      v94 = 8 * v93;
      while (*v92 != 0x8000000000000000)
      {
        ++v92;
        v94 -= 8;
        if (!v94)
        {
          goto LABEL_149;
        }
      }

LABEL_155:
      v63 = 0;
      goto LABEL_156;
    }
  }

LABEL_149:
  v95 = (*(*a1 + 80))(a1, v152 - 16, v65, v136, 0, 1);
  if (!v95)
  {
    v63 = 0;
    goto LABEL_200;
  }

  ODSOperands = mlir::mps::ConcatOp::getODSOperands(&v152);
  v133 = v96;
  v97 = [v66 numberOfDimensions];
  ODSOperandIndexAndLength = mlir::mps::ConcatOp::getODSOperandIndexAndLength(&v152, 1u);
  Axis = RuntimeUtils::getAxis(*(*(v152 + 72) + 32 * ODSOperandIndexAndLength + 24), v97);
  if (v97)
  {
    v100 = v97 + ~Axis;
  }

  else
  {
    v100 = 0;
  }

  if (!v133)
  {
    v101 = 0;
    goto LABEL_192;
  }

  v131 = v95;
  v101 = 0;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  while (2)
  {
    v114 = *(ODSOperands + 32 * v104 + 24);
    v115 = v114 == v135;
    if (!(v103 & 1 | (v114 == v135)))
    {
      v116 = v114[1] & 0xFFFFFFFFFFFFFFF8;
      if (*(*v116 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        goto LABEL_171;
      }

      v117 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v116 + 8);
      if (v117)
      {
        v117 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v116 + 8);
      }

      else
      {
        v116 = 0;
      }

      *&v151[0] = v116;
      *(&v151[0] + 1) = v117;
      if (v116)
      {
        v118 = mlir::CallableOpInterface::getArgAttrsAttr(v151);
        if (v119)
        {
          v120 = 0;
          v121 = (v118 + 8 * v119 - 8);
          v122 = 0uLL;
          v123 = 0uLL;
          v124 = 0uLL;
          v125 = 0uLL;
          do
          {
            v126 = *v121;
            v121 -= 2;
            v141 = v122;
            v142 = v123;
            v143 = v124;
            v144 = v125;
            *(&v141 + (v120 & 0xF)) = v126;
            v124 = v143;
            v125 = v144;
            v122 = v141;
            v123 = v142;
            ++v120;
          }

          while (v119 != v120);
          goto LABEL_184;
        }

LABEL_171:
        ++v101;
      }

      else
      {
        v123 = 0uLL;
        v122 = xmmword_1E0971950;
        v124 = 0uLL;
        v125 = 0uLL;
        v119 = 1;
LABEL_184:
        if (v100 < v119)
        {
          v140[0] = v122;
          v140[1] = v123;
          v140[2] = v124;
          v140[3] = v125;
          v101 += *(v140 + (v100 & 0xF));
        }
      }
    }

    v102 |= v103 & v115;
    ++v104;
    v103 |= v115;
    if (v104 != v133)
    {
      continue;
    }

    break;
  }

  v95 = v131;
  if (v102)
  {
    v63 = 0;
    goto LABEL_200;
  }

LABEL_192:
  memset(v151, 0, sizeof(v151));
  MPSSizeVector = getMPSSizeVector(v135, v151);
  if (v100 >= MPSSizeVector)
  {
    v128 = MPSSizeVector == 0;
  }

  else
  {
    v128 = *(v151 + (v100 & 0xF));
  }

  v129 = [v95 mpsndarray];
  v134 = [v129 descriptor];

  [v134 sliceDimension:v100 withSubrange:{objc_msgSend(v134, "sliceRangeForDimension:", v100) + v101, v128}];
  v130 = [v95 mpsndarray];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v130 setReadCount:{objc_msgSend(v130, "readCount") + 1}];
  }

  v63 = [v130 safeArrayViewWithCommandBuffer:v65 descriptor:v134 aliasing:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v63 setReadCount:getNumberOfUniqueUses(v135)];
  }

LABEL_200:
LABEL_156:

  if (!v63)
  {
    if (v65)
    {
      if ((v136 & 1) != 0 || *(a1 + 224) != 1)
      {
        v110 = objc_alloc(MEMORY[0x1E6974488]);
        v111 = [v65 device];
        v63 = [v110 initWithDevice:v111 descriptor:v66];
      }

      else
      {
        v63 = [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:v65 descriptor:v66];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v63 setReadCount:getNumberOfUniqueUses(v150) + a5];
      }
    }

    else
    {
      v112 = objc_alloc(MEMORY[0x1E6974488]);
      v113 = [*(a1 + 48) metalDevice];
      v63 = [v112 initWithDevice:v113 descriptor:v66];
    }
  }

  v11 = [[MPSGraphTensorData alloc] initWithMPSNDArray:v63 device:*(a1 + 48)];
  BaseRuntime::setTensorDataToDataMap(a1, v150, v11);
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v106 = ([WeakRetained options] & 2) == 0;

  if (!v106)
  {
    v107 = mlir::Value::getDefiningOp(&v150);
    v108 = getOpName(v107);
    [(MPSGraphTensorData *)v11 setLabel:v108];
  }

LABEL_159:

LABEL_160:

  return v11;
}

void BaseRuntime::unsetTensorDataFromDataMap(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v7 = *(mlir::Value::getParentRegion(&v8) + 2);
  __p = &v7;
  v3 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::__emplace_unique_key_args<mlir::Operation *,std::piecewise_construct_t const&,std::tuple<mlir::Operation * const&>,std::tuple<>>((a1 + 88), &v7);
  v6 = v8;
  v4 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>(v3 + 3, &v6);
  if (v4)
  {
    std::__hash_table<std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>>>::remove(v3 + 3, v4, &__p);
    v5 = __p;
    __p = 0;
    if (v5)
    {
      if (v10 == 1)
      {
      }

      operator delete(v5);
    }
  }
}

uint64_t GPURegionRuntime::getStaticType(uint64_t a1, uint64_t a2)
{
  v13 = a2;
  result = (*(**(*(a1 + 592) + 32) + 40))(*(*(a1 + 592) + 32));
  if (result)
  {
    return result;
  }

  v5 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8))
  {
    v15 = 0;
    v16 = 0;
    return *(a2 + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  v15 = v5;
  v16 = v6;
  if (!v5)
  {
    return *(a2 + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  if (!mlir::CallOpInterface::getArgOperands(&v15))
  {
    goto LABEL_12;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v15);
  if (!v8)
  {
    return *(a2 + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  v9 = 8 * v8;
  while (*ArgAttrsAttr != 0x8000000000000000)
  {
    ++ArgAttrsAttr;
    v9 -= 8;
    if (!v9)
    {
      return *(a2 + 8) & 0xFFFFFFFFFFFFFFF8;
    }
  }

LABEL_12:
  v15 = 0;
  v16 = 0;
  v12 = &v15;
  v14 = a2;
  DefiningOp = mlir::Value::getDefiningOp(&v14);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v12, DefiningOp))
  {
    return mlir::ElementsAttr::getType(&v15);
  }

  v14 = *(mlir::Value::getParentRegion(&v13) + 2);
  v11 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>((a1 + 288), &v14);
  v12 = v13;
  return std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>(v11 + 3, &v12)[3];
}

uint64_t valueCanBeTemporary(void *a1)
{
  v23 = a1;
  ParentBlock = mlir::Value::getParentBlock(&v23);
  v3 = *v23;
  if (*v23)
  {
    v4 = ParentBlock;
    do
    {
      v5 = v3[2];
      v6 = *(v5 + 16);
      v7 = *(*(mlir::Block::getParentOp(v6) + 48) + 16);
      v8 = v6;
      if (v7 == &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id)
      {
        v8 = *(mlir::Block::getParentOp(v6) + 16);
      }

      if (*(*(v5 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::ListPushBackOp,void>::id)
      {
        return 0;
      }

      for (; v8 != v4; v8 = *(ParentOp + 16))
      {
        ParentOp = mlir::Block::getParentOp(v8);
        v10 = *(*(ParentOp + 48) + 16);
        if (v10 == &mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::scf::ForOp,void>::id)
        {
          return 0;
        }
      }

      v3 = *v3;
    }

    while (v3);
  }

  v22 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v22);
  if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CallOp,void>::id)
  {
    return 0;
  }

  v13 = *v22;
  if (*v22)
  {
    while (*(*(v13[2] + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::CallOp,void>::id)
    {
      v13 = *v13;
      if (!v13)
      {
        goto LABEL_18;
      }
    }

    return 0;
  }

LABEL_18:
  v14 = (v22[1] & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8))
  {
    v23 = 0;
    v24 = 0;
    return 1;
  }

  v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
  v23 = v14;
  v24 = v15;
  if (!v14)
  {
    return 1;
  }

  if (mlir::CallOpInterface::getArgOperands(&v23))
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v23);
    if (v18)
    {
      v19 = 8 * v18;
      while (*ArgAttrsAttr != 0x8000000000000000)
      {
        ++ArgAttrsAttr;
        v19 -= 8;
        if (!v19)
        {
          return 1;
        }
      }

      goto LABEL_29;
    }

    return 1;
  }

LABEL_29:
  v20 = *v22;
  if (!*v22)
  {
    return 1;
  }

  LOBYTE(v21) = 0;
  do
  {
    while (!v21)
    {
      v21 = *(*(v20[2] + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id;
      v20 = *v20;
      if (!v20)
      {
        return !v21;
      }
    }

    v21 = 1;
    v20 = *v20;
  }

  while (v20);
  return !v21;
}
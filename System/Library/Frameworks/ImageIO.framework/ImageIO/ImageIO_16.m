uint64_t kdu_params::delete_unparsed_attribute(uint64_t this, const char *a2)
{
  v2 = *(this + 96);
  if (!v2)
  {
LABEL_64:
    v37 = 0;
    memset(v36, 0, sizeof(v36));
    kdu_error::kdu_error(v36, "Kakadu Core Error:\n");
    (*(*&v36[0] + 16))(v36, "Attempting to delete a non-existent attribute with kdu_params::delete_unparsed_attribute.");
    kdu_error::~kdu_error(v36);
  }

  v4 = this;
  v5 = *(this + 96);
  while (*v5 != a2)
  {
    v5 = *(v5 + 56);
    if (!v5)
    {
      while (1)
      {
        this = strcmp(*v2, a2);
        if (!this)
        {
          break;
        }

        v2 = *(v2 + 56);
        if (!v2)
        {
          goto LABEL_64;
        }
      }

      v5 = v2;
      break;
    }
  }

  if ((*(v5 + 49) & 1) == 0)
  {
    v6 = (*(v5 + 32) * *(v5 + 36));
    if (v6)
    {
      if ((*(v4 + 104) & 1) == 0)
      {
        *(v4 + 104) = 1;
        v7 = *(v4 + 80);
        *(v7 + 104) = 1;
        v8 = **(v7 + 64);
        *(v8 + 104) = 1;
        *(*(v8 + 48) + 104) = 1;
      }

      if (v6 >= 1)
      {
        v9 = (v6 + 15) & 0xFFFFFFF0;
        v10 = vdupq_n_s64(v6 - 1);
        v11 = xmmword_186205E50;
        v12 = xmmword_186205E60;
        v13 = xmmword_186205E70;
        v14 = xmmword_186205E80;
        v15 = xmmword_186205E90;
        v16 = xmmword_186205EA0;
        v17 = xmmword_186205EB0;
        v18 = xmmword_186205EC0;
        v19 = (*(v5 + 40) + 208);
        v20 = vdupq_n_s64(0x10uLL);
        do
        {
          v21 = vmovn_s64(vcgeq_u64(v10, v18));
          if (vuzp1_s8(vuzp1_s16(v21, *v10.i8), *v10.i8).u8[0])
          {
            *(v19 - 192) = 0;
          }

          if (vuzp1_s8(vuzp1_s16(v21, *&v10), *&v10).i8[1])
          {
            *(v19 - 168) = 0;
          }

          if (vuzp1_s8(vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v17))), *&v10).i8[2])
          {
            *(v19 - 144) = 0;
            *(v19 - 120) = 0;
          }

          v22 = vmovn_s64(vcgeq_u64(v10, v16));
          if (vuzp1_s8(*&v10, vuzp1_s16(v22, *&v10)).i32[1])
          {
            *(v19 - 96) = 0;
          }

          if (vuzp1_s8(*&v10, vuzp1_s16(v22, *&v10)).i8[5])
          {
            *(v19 - 72) = 0;
          }

          if (vuzp1_s8(*&v10, vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v15)))).i8[6])
          {
            *(v19 - 48) = 0;
            *(v19 - 24) = 0;
          }

          v23 = vmovn_s64(vcgeq_u64(v10, v14));
          if (vuzp1_s8(vuzp1_s16(v23, *v10.i8), *v10.i8).u8[0])
          {
            *v19 = 0;
          }

          if (vuzp1_s8(vuzp1_s16(v23, *&v10), *&v10).i8[1])
          {
            v19[24] = 0;
          }

          if (vuzp1_s8(vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v13))), *&v10).i8[2])
          {
            v19[48] = 0;
            v19[72] = 0;
          }

          v24 = vmovn_s64(vcgeq_u64(v10, v12));
          if (vuzp1_s8(*&v10, vuzp1_s16(v24, *&v10)).i32[1])
          {
            v19[96] = 0;
          }

          if (vuzp1_s8(*&v10, vuzp1_s16(v24, *&v10)).i8[5])
          {
            v19[120] = 0;
          }

          if (vuzp1_s8(*&v10, vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v11)))).i8[6])
          {
            v19[144] = 0;
            v19[168] = 0;
          }

          v16 = vaddq_s64(v16, v20);
          v17 = vaddq_s64(v17, v20);
          v18 = vaddq_s64(v18, v20);
          v15 = vaddq_s64(v15, v20);
          v14 = vaddq_s64(v14, v20);
          v13 = vaddq_s64(v13, v20);
          v12 = vaddq_s64(v12, v20);
          v19 += 384;
          v11 = vaddq_s64(v11, v20);
          v9 -= 16;
        }

        while (v9);
      }
    }

    *(v5 + 36) = 0;
  }

  if (*(v4 + 80) == v4)
  {
    for (i = *(v4 + 88); i; i = *(i + 11))
    {
      this = kdu_params::delete_unparsed_attribute(i, a2);
    }

    if ((*(v4 + 20) & 0x80000000) != 0)
    {
      v26 = *(v4 + 16);
      v27 = *(v4 + 32);
      if (v27 >= 1)
      {
        v28 = v27 + 1;
        v29 = (*(v4 + 64) + 8 * (v28 + v28 * v26) + 8);
        do
        {
          this = *v29;
          if (*v29)
          {
            v30 = this == v4;
          }

          else
          {
            v30 = 1;
          }

          if (!v30)
          {
            this = kdu_params::delete_unparsed_attribute(this, a2);
          }

          ++v29;
          --v28;
        }

        while (v28 > 1);
        v26 = *(v4 + 16);
      }

      if (v26 < 0)
      {
        v31 = *(v4 + 28);
        if (v31 >= 1)
        {
          v32 = *(v4 + 32);
          v33 = (*(v4 + 64) + 8 * v32 + 8);
          v34 = v31 + 1;
          do
          {
            this = *v33;
            if (*v33)
            {
              v35 = this == v4;
            }

            else
            {
              v35 = 1;
            }

            if (!v35)
            {
              this = kdu_params::delete_unparsed_attribute(this, a2);
              LODWORD(v32) = *(v4 + 32);
            }

            v33 += v32 + 1;
            --v34;
          }

          while (v34 > 1);
        }
      }
    }
  }

  return this;
}

uint64_t display_options(char *a1, kdu_message *a2)
{
  v3 = a1;
  v27 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *v22 = 0u;
  memset(v21, 0, sizeof(v21));
  v20 = 0;
  v4 = *a1;
  if (v4 != 91)
  {
    if (v4 != 40)
    {
      display_options();
    }

    (*(*a2 + 16))(a2, "Expected one of the identifiers, ");
    v6 = 0;
    v7 = 0;
    v8 = v21;
    v9 = v22;
    do
    {
      v10 = v9;
      v3 = parse_translator_entry(v3 + 1, 0x2Cu, v9, &v20, v5);
      if (v7)
      {
        (*(*a2 + 16))(a2, ", ");
      }

      if (v6)
      {
        (*(*a2 + 16))(a2, "");
        (*(*a2 + 16))(a2, v6);
        (*(*a2 + 16))(a2, "");
        v7 = 1;
      }

      v11 = *v3;
      v9 = v8;
      v8 = v10;
      v6 = v10;
    }

    while (v11 == 44);
    if (v11 != 41)
    {
      display_options();
    }

    v12 = ".";
    if ((v7 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_20:
    (*(*a2 + 16))(a2, " or ");
    goto LABEL_21;
  }

  (*(*a2 + 16))(a2, "Expected one or more of the identifiers, ");
  v14 = 0;
  v15 = 0;
  v16 = v21;
  v17 = v22;
  do
  {
    v10 = v17;
    v3 = parse_translator_entry(v3 + 1, 0x7Cu, v17, &v20, v13);
    if (v15)
    {
      (*(*a2 + 16))(a2, ", ");
    }

    if (v14)
    {
      (*(*a2 + 16))(a2, "");
      (*(*a2 + 16))(a2, v14);
      (*(*a2 + 16))(a2, "");
      v15 = 1;
    }

    v18 = *v3;
    v17 = v16;
    v16 = v10;
    v14 = v10;
  }

  while (v18 == 124);
  if (v18 != 93)
  {
    display_options();
  }

  if (v15)
  {
    goto LABEL_20;
  }

LABEL_21:
  (*(*a2 + 16))(a2, "");
  (*(*a2 + 16))(a2, v10);
  return (*(*a2 + 16))(a2, v12);
}

uint64_t kdu_params::textualize_attributes(uint64_t this, kdu_message *a2, char a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v20 = this;
  for (i = *(this + 96); i; i = i[7])
  {
    if (*(i + 9) && (*(i + 48) != 1 || (a3 & 1) == 0))
    {
      (*(*a2 + 16))(a2, *i);
      if ((*(v20 + 20) & 0x80000000) == 0 || (*(v20 + 16) & 0x80000000) == 0 || *(v20 + 42) == 1)
      {
        strcpy(v27, ":");
        (*(*a2 + 16))(a2, v27);
        if ((*(v20 + 16) & 0x80000000) == 0)
        {
          (*(*a2 + 16))(a2, "T");
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          *v27 = 0u;
          if (*(a2 + 8))
          {
            sprintf(v27, "%x");
          }

          else
          {
            sprintf(v27, "%d");
          }

          (*(*a2 + 16))(a2, v27);
        }

        if ((*(v20 + 20) & 0x80000000) == 0)
        {
          (*(*a2 + 16))(a2, "C");
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          *v27 = 0u;
          if (*(a2 + 8))
          {
            sprintf(v27, "%x");
          }

          else
          {
            sprintf(v27, "%d");
          }

          (*(*a2 + 16))(a2, v27);
        }

        if (*(v20 + 42) == 1)
        {
          (*(*a2 + 16))(a2, "I");
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          *v27 = 0u;
          if (*(a2 + 8))
          {
            sprintf(v27, "%x");
          }

          else
          {
            sprintf(v27, "%d");
          }

          (*(*a2 + 16))(a2, v27);
        }
      }

      strcpy(v27, "=");
      (*(*a2 + 16))(a2, v27);
      if (*(i + 9) >= 1)
      {
        v6 = 0;
        while (1)
        {
          if (v6)
          {
            strcpy(v27, ",");
            (*(*a2 + 16))(a2, v27);
          }

          LODWORD(v7) = *(i + 8);
          if (v7 > 1)
          {
            strcpy(v27, "{");
            (*(*a2 + 16))(a2, v27);
            LODWORD(v7) = *(i + 8);
          }

          if (v7 >= 1)
          {
            break;
          }

LABEL_80:
          if (++v6 >= *(i + 9))
          {
            goto LABEL_81;
          }
        }

        v8 = 0;
        while (2)
        {
          v9 = i[5];
          if (v8)
          {
            strcpy(v27, ",");
            (*(*a2 + 16))(a2, v27);
          }

          v10 = (v9 + 24 * v7 * v6 + 24 * v8);
          if ((v10[4] & 1) == 0)
          {
            *&v24 = 0;
            *v22 = 0u;
            v23 = 0u;
            kdu_error::kdu_error(v22, "Kakadu Core Error:\n");
            (*(*v22 + 16))(v22, "Attempting to textualize a code-stream parameter attribute, which has only partially been set!\nError occurred in attribute");
            (*(*v22 + 16))(v22, " ");
            (*(*v22 + 16))(v22, *i);
            (*(*v22 + 16))(v22, " ");
            (*(*v22 + 16))(v22, "in field ");
            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            *v27 = 0u;
            if (v22[8])
            {
              sprintf(v27, "%x");
            }

            else
            {
              sprintf(v27, "%d");
            }

            (*(*v22 + 16))(v22, v27);
            (*(*v22 + 16))(v22, " of record ");
            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            *v27 = 0u;
            if (v22[8])
            {
              sprintf(v27, "%x");
            }

            else
            {
              sprintf(v27, "%d");
            }

            (*(*v22 + 16))(v22, v27);
            (*(*v22 + 16))(v22, ".");
            kdu_error::~kdu_error(v22);
          }

          v11 = *(v10 + 1);
          v12 = *v11;
          if (v12 > 0x45)
          {
            if (v12 == 91)
            {
              v25 = 0u;
              v26 = 0u;
              v23 = 0u;
              v24 = 0u;
              *v22 = 0u;
              v21 = 0;
              if (!*v10)
              {
                v30 = 0uLL;
                v31 = 0uLL;
                v28 = 0uLL;
                v29 = 0uLL;
                *v27 = 0uLL;
                if (*(a2 + 8))
                {
                  sprintf(v27, "%x");
                }

                else
                {
                  sprintf(v27, "%d");
                }

                (*(*a2 + 16))(a2, v27);
              }

              v16 = 0;
              do
              {
                v11 = parse_translator_entry(v11 + 1, 0x7Cu, v22, &v21, v5);
                v17 = v21 | v16;
                if ((v21 & ~*v10) == 0 && v17 > v16)
                {
                  (*(*a2 + 16))(a2, v22);
                  if (v17 == *v10)
                  {
                    goto LABEL_77;
                  }

                  strcpy(v27, ",");
                  (*(*a2 + 16))(a2, v27);
                  v16 = v17;
                }
              }

              while (*v11 == 124);
              if (v16 != *v10)
              {
                kdu_params::textualize_attributes();
              }

              goto LABEL_77;
            }

            if (v12 != 73)
            {
              if (v12 != 70)
              {
LABEL_84:
                kdu_params::textualize_attributes();
              }

              v13 = *v10;
              v30 = 0u;
              v31 = 0u;
              v28 = 0u;
              v29 = 0u;
              *v27 = 0u;
              sprintf(v27, "%f", v13);
              (*(*a2 + 16))(a2, v27);
LABEL_77:
              ++v8;
              v7 = *(i + 8);
              if (v8 >= v7)
              {
                if (v7 >= 2)
                {
                  strcpy(v27, "}");
                  (*(*a2 + 16))(a2, v27);
                }

                goto LABEL_80;
              }

              continue;
            }

            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            *v27 = 0u;
            if (*(a2 + 8))
            {
              sprintf(v27, "%x");
            }

            else
            {
              sprintf(v27, "%d");
            }
          }

          else
          {
            if (v12 != 40)
            {
              if (v12 == 66)
              {
                if (*v10)
                {
                  v14 = "yes";
                }

                else
                {
                  v14 = "no";
                }

                (*(*a2 + 16))(a2, v14);
              }

              else
              {
                if (v12 != 67)
                {
                  goto LABEL_84;
                }

                (*(*v20 + 64))(v20, a2, *i, v8, *v10);
              }

              goto LABEL_77;
            }

            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            *v27 = 0u;
            *v22 = 0;
            while (1)
            {
              v15 = parse_translator_entry(v11 + 1, 0x2Cu, v27, v22, v5);
              if (*v22 == *v10)
              {
                break;
              }

              v11 = v15;
              if (*v15 != 44)
              {
                kdu_params::textualize_attributes();
              }
            }
          }

          break;
        }

        (*(*a2 + 16))(a2, v27);
        goto LABEL_77;
      }

LABEL_81:
      strcpy(v27, "\n");
      this = (*(*a2 + 16))(a2, v27);
    }
  }

  return this;
}

uint64_t kdu_params::textualize_attributes(uint64_t this, kdu_message *a2, int a3, int a4, char a5)
{
  v7 = this;
  if (a3 < 0)
  {
    v8 = -1;
  }

  else
  {
    v8 = a3;
  }

  v9 = *(this + 28);
  if (v9 <= a4)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = a4;
  }

  v11 = *(this + 16);
  if (v11 < 0)
  {
    v11 = v8;
  }

  else
  {
    v12 = v11 >= a3 && v11 <= v10;
    v10 = *(this + 16);
    if (!v12)
    {
      return this;
    }
  }

  if (*(this + 24))
  {

    return kdu_params::textualize_attributes(this, a2, a5);
  }

  else
  {
    v13 = *(this + 20);
    if (v13 < 0)
    {
      v14 = 0xFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    if (v11 <= v10)
    {
      v15 = *(this + 32);
      if (v13 >= 0)
      {
        v16 = *(this + 20);
      }

      else
      {
        v16 = v15 - 1;
      }

      v17 = *(this + 64) + 8 * (v11 + 1 + (v11 + 1) * v15) + 8 * v14 + 8;
      v25 = v10;
      do
      {
        if (v14 <= v16)
        {
          v18 = v17;
          v19 = v14;
          do
          {
            v20 = *v18;
            if (*(*v18 + 20) == v14 && *(v20 + 16) == v11)
            {
              do
              {
                this = kdu_params::textualize_attributes(v20, a2, a5);
                v20 = *(v20 + 88);
              }

              while (v20);
            }

            ++v18;
            v21 = v14 == v16;
            LODWORD(v14) = v14 + 1;
          }

          while (!v21);
          v15 = *(v7 + 32);
          v10 = v25;
          v14 = v19;
        }

        v17 += 8 * v15 + 8;
        v21 = v11++ == v10;
      }

      while (!v21);
    }

    if (*(v7 + 48) == v7)
    {
      for (i = *(v7 + 56); i; i = *(i + 7))
      {
        this = kdu_params::textualize_attributes(i, a2, a3, a4, a5);
      }
    }
  }

  return this;
}

uint64_t kdu_params::translate_marker_segment(kdu_params *this, uint64_t a2, uint64_t a3, unsigned __int8 *a4, int a5, uint64_t a6)
{
  v16 = -1;
  v6 = *(**(this + 8) + 48);
  if (!v6)
  {
    return 0;
  }

  while (*(v6 + 7) <= a5 || ((*(*v6 + 40))(v6, a2, a3, a4, &v16) & 1) == 0)
  {
    v6 = *(v6 + 7);
    if (!v6)
    {
      return 0;
    }
  }

  v13 = v16;
  if (*(v6 + 42) == 1)
  {
    v14 = -1;
    v16 = -1;
  }

  else
  {
    v14 = v16;
    v13 = 0;
  }

  result = kdu_params::access_relation(v6, a5, v14, v13, 0);
  if (result)
  {
    v15 = result;
    if (*(result + 40) == 1 && (*(result + 42) & 1) == 0)
    {
      while (v15[37] == 1)
      {
        result = 0;
        v15 = *(v15 + 11);
        if (!v15)
        {
          return result;
        }
      }
    }

    result = (*(*v15 + 48))(v15, a2, a3, a4, a6);
    if (result)
    {
      v15[37] = 1;
      if (v15[40] == 1 && (v15[42] & 1) == 0)
      {
        kdu_params::new_instance(v15);
      }

      v15[36] = 0;
      return 1;
    }
  }

  return result;
}

uint64_t kdu_params::generate_marker_segments(kdu_params *this, kdu_output *a2, int a3, uint64_t a4)
{
  v4 = *(**(this + 8) + 48);
  if (v4)
  {
    v8 = 0;
    v23 = a3 + 1;
    while (1)
    {
      if (*(v4 + 28) > a3)
      {
        v9 = *(v4 + 32);
        if ((v9 & 0x80000000) == 0)
        {
          break;
        }
      }

LABEL_44:
      v4 = *(v4 + 56);
      if (!v4)
      {
        return v8;
      }
    }

    v10 = v23 + v23 * v9;
    v11 = *(*(v4 + 64) + 8 * v10);
    v12 = -1;
    while (1)
    {
      v13 = *(v4 + 64);
      v14 = *(v13 + 8 * v10);
      if (*(v14 + 16) == a3 || *(v11 + 16) == a3 && *(v11 + 37) == 1)
      {
        v15 = *(v14 + 20);
        if (v15 == v12)
        {
          if ((v12 & 0x8000000000000000) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_20;
        }

        if (*(v14 + 41) == 1)
        {
          if (v12 < 0 || v15 != -1)
          {
            kdu_params::generate_marker_segments();
          }

          v16 = kdu_params::access_relation(v14, a3, v12, 0, 0);
          v13 = *(v4 + 64);
          if (v16 != *(v13 + 8 * v10) || (v14 = v16, *(v16 + 20) != v12))
          {
            kdu_params::generate_marker_segments();
          }

LABEL_18:
          if (*(v11 + 16) != a3 || (v17 = v11, (*(v11 + 37) & 1) == 0))
          {
LABEL_20:
            v17 = *(v13 + 8 * v12 + 8);
            if ((*(v17 + 37) & 1) == 0)
            {
              if (*(v4 + 37))
              {
                v17 = v4;
              }

              else
              {
                v17 = 0;
              }
            }
          }

          if (v17 == v14)
          {
            v18 = 0;
          }

          else
          {
            v18 = v17;
          }

          do
          {
            if (*(v14 + 42) == 1)
            {
              if ((*(v14 + 16) & 0x80000000) != 0)
              {
                goto LABEL_35;
              }

              v19 = *(v14 + 24);
              v18 = v4;
              while (1)
              {
                v20 = *(v18 + 24);
                if (v20 >= v19)
                {
                  break;
                }

                v18 = *(v18 + 88);
                if (!v18)
                {
                  goto LABEL_35;
                }
              }

              if (v20 != v19 || (*(v18 + 37) & 1) == 0)
              {
LABEL_35:
                v18 = 0;
              }
            }

            v21 = (*(*v14 + 32))(v14, a2, v18, a4);
            if (v21 <= 0)
            {
              if (*(v14 + 37))
              {
                v18 = v14;
              }

              else
              {
                v18 = 0;
              }
            }

            else
            {
              if (v21 <= 3)
              {
                kdu_params::generate_marker_segments();
              }

              v8 = (v21 + v8);
              *(v14 + 37) = 1;
              v18 = v14;
            }

            v14 = *(v14 + 88);
          }

          while (v14);
        }
      }

      ++v12;
      ++v10;
      if (v12 >= *(v4 + 32))
      {
        goto LABEL_44;
      }
    }
  }

  return 0;
}

kdu_params *kdu_params::finalize_all(kdu_params *this, _BOOL8 a2)
{
  v3 = this;
  result = (*(*this + 72))(this);
  if (*(v3 + 10) == v3)
  {
    for (i = *(v3 + 11); i; i = i[11])
    {
      result = (*(*i + 72))(i, a2);
    }
  }

  if ((*(v3 + 5) & 0x80000000) != 0)
  {
    v6 = *(v3 + 8);
    if (v6 >= 1)
    {
      v7 = 0;
      do
      {
        v8 = *(v3 + 4);
        result = *(*(v3 + 8) + 8 * (v7 + v6 + 1 + (v6 + 1) * v8) + 8);
        if (v7 == *(result + 5) && *(result + 4) == v8)
        {
          result = kdu_params::finalize_all(result, a2);
          v6 = *(v3 + 8);
        }

        ++v7;
      }

      while (v7 < v6);
    }

    if ((*(v3 + 4) & 0x80000000) != 0)
    {
      v9 = *(v3 + 7);
      if (v9 >= 1)
      {
        v10 = 0;
        do
        {
          v11 = v10 + 1;
          result = *(*(v3 + 8) + 8 * (v11 + v11 * *(v3 + 8)));
          if (v10 == *(result + 4))
          {
            result = kdu_params::finalize_all(result, a2);
            v9 = *(v3 + 7);
          }

          v10 = v11;
        }

        while (v11 < v9);
      }
    }

    if (*(v3 + 6) == v3)
    {
      while (1)
      {
        v3 = *(v3 + 7);
        if (!v3)
        {
          break;
        }

        result = kdu_params::finalize_all(v3, a2);
      }
    }
  }

  return result;
}

kdu_params *kdu_params::finalize_all(kdu_params *this, int a2, _BOOL8 a3)
{
  v5 = this;
  v6 = *(this + 4);
  if (v6 == a2)
  {
    this = (*(*this + 72))(this, a3);
    if (*(v5 + 10) == v5)
    {
      for (i = *(v5 + 11); i; i = i[11])
      {
        this = (*(*i + 72))(i, a3);
      }
    }

    if ((*(v5 + 5) & 0x80000000) != 0)
    {
      v8 = *(v5 + 8);
      if (v8 >= 1)
      {
        v9 = 0;
        do
        {
          v10 = *(v5 + 4);
          this = *(*(v5 + 8) + 8 * (v9 + v8 + 1 + (v8 + 1) * v10) + 8);
          if (v9 == *(this + 5) && *(this + 4) == v10)
          {
            this = kdu_params::finalize_all(this, a3);
            v8 = *(v5 + 8);
          }

          ++v9;
        }

        while (v9 < v8);
      }
    }
  }

  else if (v6 < 0 && (*(this + 5) & 0x80000000) != 0 && *(this + 7) > a2)
  {
    this = *(*(this + 8) + 8 * (a2 + 1 + (a2 + 1) * *(this + 8)));
    if (this)
    {
      if (*(this + 4) == a2)
      {
        this = kdu_params::finalize_all(this, a3);
      }
    }
  }

  if (*(v5 + 6) == v5)
  {
    while (1)
    {
      v5 = *(v5 + 7);
      if (!v5)
      {
        break;
      }

      this = kdu_params::finalize_all(v5, a2, a3);
    }
  }

  return this;
}

void siz_params::siz_params(siz_params *this)
{
  *(this + 8) = 0;
  *(this + 1) = xmmword_186206BB0;
  *(this + 38) = 0;
  *(this + 42) = 0;
  *(this + 6) = this;
  *(this + 7) = 0;
  *(this + 8) = this + 72;
  *(this + 9) = this;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = this;
  *(this + 18) = 1;
  *(this + 104) = 0;
  *(this + 14) = 0;
  *this = &unk_1EF4D2BA8;
  *(this + 1) = "SIZ";
}

uint64_t siz_params::copy_with_xforms(siz_params *this, kdu_params *a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v12 = a2;
  v93 = 0;
  *v92 = 0;
  *v91 = 0;
  *v90 = 0;
  v89 = 0;
  *v88 = 0;
  v87 = 0;
  if (!kdu_params::get(a2, "Sprofile", 0, 0, &v92[1], 1, 1, 1) || !kdu_params::get(v12, "Scap", 0, 0, &v93, 1, 1, 1) || !kdu_params::get(v12, "Sextensions", 0, 0, v92, 1, 1, 1) || !kdu_params::get(v12, "Ssize", 0, a5, v91, 1, 1, 1) || !kdu_params::get(v12, "Ssize", 0, a5 ^ 1, &v91[1], 1, 1, 1) || !kdu_params::get(v12, "Sorigin", 0, a5, v90, 1, 1, 1) || !kdu_params::get(v12, "Sorigin", 0, a5 ^ 1, &v90[1], 1, 1, 1) || !kdu_params::get(v12, "Stiles", 0, a5, &v89, 1, 1, 1) || !kdu_params::get(v12, "Stiles", 0, a5 ^ 1, &v88[1], 1, 1, 1) || !kdu_params::get(v12, "Stile_origin", 0, a5, v88, 1, 1, 1) || (kdu_params::get(v12, "Stile_origin", 0, a5 ^ 1, &v87, 1, 1, 1) & 1) == 0)
  {
    v86 = 0;
    v84 = 0u;
    v85 = 0u;
    kdu_error::kdu_error(&v84, "Kakadu Core Error:\n");
    kdu_error::~kdu_error(&v84);
  }

  if (a6 & 1) != 0 || (a7)
  {
    v14 = 3;
    v92[1] = 3;
  }

  else
  {
    v14 = v92[1];
  }

  kdu_params::set(this, "Sprofile", 0, 0, v14);
  kdu_params::set(this, "Scap", 0, 0, v93);
  kdu_params::set(this, "Sextensions", 0, 0, v92[0]);
  v83 = 0;
  if (kdu_params::get(v12, "Scomponents", 0, 0, &v83, 1, 1, 1))
  {
    if (v83 <= a3)
    {
      v86 = 0;
      v84 = 0u;
      v85 = 0u;
      kdu_error::kdu_error(&v84, "Kakadu Core Error:\n");
      (*(v84 + 16))(&v84, "Attempting to discard all of the components from an existing code-stream!");
      kdu_error::~kdu_error(&v84);
    }

    kdu_params::set(this, "Scomponents", 0, 0, (v83 - a3));
  }

  v82 = 0;
  if (kdu_params::get(v12, "Mcomponents", 0, 0, &v82, 1, 1, 1))
  {
    kdu_params::set(this, "Mcomponents", 0, 0, v82);
  }

  v81 = 0;
  v74 = a3;
  if (a4 <= 0)
  {
    v26 = 0;
    v25 = 0;
    v77 = 0;
    v28 = v91[0];
    v27 = v91[1];
    v30 = v90[0];
    v29 = v90[1];
    v31 = v88[1];
    v32 = v89;
    v33 = v87;
    v34 = v88[0];
    goto LABEL_60;
  }

  if ((v92[0] & 0x20) != 0 && (v77 = kdu_params::access_cluster(v12, "COD")) != 0)
  {
    if (v83 > a3)
    {
      v71 = a6;
      v15 = a3;
      v16 = a4;
      v17 = a4;
      v75 = this;
      do
      {
        v18 = kdu_params::access_relation(v77, -1, v15, 0, 0);
        if (v18)
        {
          v19 = v18;
          if (kdu_params::get(v18, "Cdecomp", 0, 0, &v81, 1, 1, 1))
          {
            v72 = v17;
            v20 = a5;
            v21 = 0;
            v22 = 0;
            v23 = 0;
            do
            {
              kdu_params::get(v19, "Cdecomp", v21, 0, &v81, 1, 1, 1);
              v23 += v81 & 1;
              v22 += (v81 >> 1) & 1;
              ++v21;
            }

            while (a4 != v21);
            v17 = v72;
            if (v23 < v72)
            {
              v17 = v23;
            }

            if (v22 < v16)
            {
              v16 = v22;
            }

            a5 = v20;
            this = v75;
          }
        }

        ++v15;
      }

      while (v15 < v83);
      a3 = v74;
      a6 = v71;
      goto LABEL_41;
    }
  }

  else
  {
    v77 = 0;
  }

  v17 = a4;
  v16 = a4;
LABEL_41:
  if (a5)
  {
    v24 = v16;
  }

  else
  {
    v24 = v17;
  }

  if (a5)
  {
    v25 = v17;
  }

  else
  {
    v25 = v16;
  }

  v26 = v24;
  v28 = v91[0];
  v27 = v91[1];
  v30 = v90[0];
  v29 = v90[1];
  v31 = v88[1];
  v32 = v89;
  v33 = v87;
  v34 = v88[0];
  if (v26 >= 1)
  {
    v35 = 0;
    v36 = v90[1] | v91[1] | v88[1] | v87;
    while ((v36 & 1) == 0)
    {
      v35 = (v35 + 1);
      v36 >>= 1;
      if (v26 == v35)
      {
        goto LABEL_54;
      }
    }

    v26 = v35;
  }

LABEL_54:
  if (v25 >= 1)
  {
    v37 = 0;
    v38 = v90[0] | v91[0] | v89 | v88[0];
    while ((v38 & 1) == 0)
    {
      ++v37;
      v38 >>= 1;
      if (v25 == v37)
      {
        goto LABEL_60;
      }
    }

    v25 = v37;
  }

LABEL_60:
  v39 = v27 >> v26;
  v40 = (v28 >> v25);
  v91[0] = v28 >> v25;
  v91[1] = v27 >> v26;
  v41 = v29 >> v26;
  v42 = v30 >> v25;
  v90[0] = v30 >> v25;
  v90[1] = v41;
  v43 = v31 >> v26;
  v44 = v32 >> v25;
  v88[1] = v31 >> v26;
  v89 = v32 >> v25;
  v87 = v33 >> v26;
  v88[0] = v34 >> v25;
  if (a7)
  {
    v91[1] = 1 - v41;
    v90[1] = 1 - v39;
    v45 = v43 - (v33 >> v26) + 1;
    do
    {
      v45 -= v43;
    }

    while (v45 > 1 - v39);
    v87 = v45;
  }

  if (a6)
  {
    v46 = 1 - v40;
    v40 = (1 - v42);
    v91[0] = 1 - v42;
    v90[0] = v46;
    v47 = v44 - (v34 >> v25) + 1;
    do
    {
      v47 -= v44;
    }

    while (v47 > v46);
    v88[0] = v47;
  }

  kdu_params::set(this, "Ssize", 0, 0, v40);
  kdu_params::set(this, "Ssize", 0, 1, v91[1]);
  kdu_params::set(this, "Sorigin", 0, 0, v90[0]);
  kdu_params::set(this, "Sorigin", 0, 1, v90[1]);
  kdu_params::set(this, "Stiles", 0, 0, v89);
  kdu_params::set(this, "Stiles", 0, 1, v88[1]);
  kdu_params::set(this, "Stile_origin", 0, 0, v88[0]);
  result = kdu_params::set(this, "Stile_origin", 0, 1, v87);
  v80 = 0;
  *v79 = 0;
  v78 = 0;
  if (v83 > a3)
  {
    v49 = a3;
    v76 = this;
    v73 = v25;
    do
    {
      if (kdu_params::get(v12, "Sprecision", v49, 0, &v79[1], 1, 1, 1))
      {
        kdu_params::set(this, "Sprecision", v49 - a3, 0, v79[1]);
      }

      if (kdu_params::get(v12, "Ssigned", v49, 0, &v80, 1, 1, 1))
      {
        kdu_params::set(this, "Ssigned", v49 - a3, 0, v80);
      }

      result = kdu_params::get(v12, "Ssampling", v49, a5, &v78, 1, 1, 1);
      if (result)
      {
        result = kdu_params::get(v12, "Ssampling", v49, a5 ^ 1, v79, 1, 1, 1);
        if (result)
        {
          v50 = v26;
          v51 = a5;
          v52 = a4;
          v53 = a4;
          if (v77)
          {
            v54 = kdu_params::access_relation(v77, -1, v49, 0, 0);
            v52 = a4;
            v53 = a4;
            if (v54)
            {
              v55 = v54;
              v56 = kdu_params::get(v54, "Cdecomp", 0, 0, &v81, 1, 1, 1);
              v52 = v56 ? 0 : a4;
              v53 = v52;
              if (a4 >= 1)
              {
                if (v56)
                {
                  v57 = 0;
                  v53 = 0;
                  v52 = 0;
                  do
                  {
                    kdu_params::get(v55, "Cdecomp", v57, 0, &v81, 1, 1, 1);
                    v52 += v81 & 1;
                    v53 += (v81 >> 1) & 1;
                    ++v57;
                  }

                  while (a4 != v57);
                }
              }
            }
          }

          if (v51)
          {
            v58 = v53;
          }

          else
          {
            v58 = v52;
          }

          if (v51)
          {
            v59 = v52;
          }

          else
          {
            v59 = v53;
          }

          v60 = v58 - v50;
          if (v60 < 0 || (v61 = v59 - v73, v61 < 0))
          {
            siz_params::copy_with_xforms();
          }

          v62 = v50;
          v63 = a4;
          v64 = v62;
          v65 = v12;
          v66 = v51;
          v67 = (v78 << v61);
          v78 <<= v61;
          v79[0] <<= v60;
          this = v76;
          if (v79[0] > 255 || v67 >= 256)
          {
            v86 = 0;
            v84 = 0u;
            v85 = 0u;
            kdu_error::kdu_error(&v84, "Kakadu Core Error:\n");
            (*(v84 + 16))(&v84, "Cannot apply requested resolution reduction without creating a SIZ marker segment with illegal component sub-sampling factors.  For the current code-stream, sub-sampling factors would be required which exceed the legal range of 1 to 255.");
            kdu_error::~kdu_error(&v84);
          }

          kdu_params::set(v76, "Ssampling", v49 - v74, 0, v67);
          a3 = v74;
          result = kdu_params::set(v76, "Ssampling", v49 - v74, 1, v79[0]);
          a5 = v66;
          v12 = v65;
          v26 = v64;
          a4 = v63;
        }
      }

      ++v49;
    }

    while (v49 < v83);
  }

  if (v82 >= 1)
  {
    v68 = 0;
    while (1)
    {
      result = kdu_params::get(v12, "Mprecision", v68, 0, &v79[1], 0, 0, 1);
      if ((result & 1) == 0)
      {
        break;
      }

      result = kdu_params::set(this, "Mprecision", v68++, 0, v79[1]);
      v69 = v82;
      if (v68 >= v82)
      {
        goto LABEL_104;
      }
    }

    v69 = v82;
LABEL_104:
    if (v69 >= 1)
    {
      v70 = 0;
      do
      {
        result = kdu_params::get(v12, "Msigned", v70, 0, &v80, 0, 0, 1);
        if (!result)
        {
          break;
        }

        result = kdu_params::set(this, "Msigned", v70++, 0, v80);
      }

      while (v70 < v82);
    }
  }

  return result;
}

uint64_t siz_params::write_marker_segment(siz_params *this, kdu_output *a2, kdu_params *a3, int a4)
{
  v85 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    siz_params::write_marker_segment();
  }

  if (a4)
  {
    LODWORD(v61) = 0;
  }

  else
  {
    v79 = 0;
    v78 = 0;
    *v76 = 0;
    *v77 = 0;
    *v74 = 0;
    *v75 = 0;
    *v73 = 0;
    if (!kdu_params::get(this, "Sprofile", 0, 0, &v78, 1, 1, 1) || !kdu_params::get(this, "Scap", 0, 0, &v79, 1, 1, 1) || !kdu_params::get(this, "Sextensions", 0, 0, &v77[1], 1, 1, 1) || !kdu_params::get(this, "Ssize", 0, 0, &v76[1], 1, 1, 1) || !kdu_params::get(this, "Ssize", 0, 1, v77, 1, 1, 1) || !kdu_params::get(this, "Sorigin", 0, 0, &v75[1], 1, 1, 1) || !kdu_params::get(this, "Sorigin", 0, 1, v76, 1, 1, 1) || !kdu_params::get(this, "Stiles", 0, 0, &v74[1], 1, 1, 1) || !kdu_params::get(this, "Stiles", 0, 1, v75, 1, 1, 1) || !kdu_params::get(this, "Stile_origin", 0, 0, &v73[1], 1, 1, 1) || !kdu_params::get(this, "Stile_origin", 0, 1, v74, 1, 1, 1) || (kdu_params::get(this, "Scomponents", 0, 0, v73, 1, 1, 1) & 1) == 0)
    {
      *&v82 = 0;
      *v80 = 0u;
      v81 = 0u;
      kdu_error::kdu_error(v80, "Kakadu Core Error:\n");
      (*(*v80 + 16))(v80, "Unable to write SIZ marker segment yet!");
      kdu_error::~kdu_error(v80);
    }

    v5 = v73[0];
    if (v73[0] - 16385 <= 0xFFFFBFFF)
    {
      *&v82 = 0;
      *v80 = 0u;
      v81 = 0u;
      kdu_error::kdu_error(v80, "Kakadu Core Error:\n");
      (*(*v80 + 16))(v80, "Illegal number of image components! Must be in the range 1 to 16384.");
      kdu_error::~kdu_error(v80);
    }

    v72 = 0;
    v6 = kdu_params::get(this, "Mcomponents", 0, 0, &v72, 1, 1, 1);
    if (v72)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (v7 == 1)
    {
      if ((v72 - 16385) <= 0xFFFFBFFF)
      {
        *&v82 = 0;
        *v80 = 0u;
        v81 = 0u;
        kdu_error::kdu_error(v80, "Kakadu Core Error:\n");
        kdu_error::~kdu_error(v80);
      }

      v59 = v72 + 6;
    }

    else
    {
      v59 = 0;
    }

    v58 = 3 * v5;
    if (a2)
    {
      LODWORD(v61) = 3 * v5 + 40;
      v8 = v73[1];
      v9 = v74[0];
      if ((v74[0] & 0x80000000) != 0 || (v73[1] & 0x80000000) != 0)
      {
        v11 = v74[1];
        v12 = v75[0];
        v13 = v77[0];
        lcm = v75[0];
        if ((v75[0] + v74[0]) >= v77[0])
        {
          v9 = v76[0];
          v74[0] = v76[0];
          lcm = 1;
        }

        v15 = v76[1];
        v16 = v74[1];
        if ((v74[1] + v73[1]) >= v76[1])
        {
          v73[1] = v75[1];
          v16 = 1;
        }

        v17 = kdu_params::access_cluster(this, "COD");
        v18 = v13 - v76[0];
        if (v12 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v12;
        }

        if (v18 <= 0)
        {
          v20 = -((v76[0] - v13) / v19);
        }

        else
        {
          v20 = (v18 - 1) / v19 + 1;
        }

        v21 = v15 - v75[1];
        if (v11 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v11;
        }

        v34 = v21 <= 0;
        v23 = (v21 - 1) / v22;
        if (v34)
        {
          v24 = -((v75[1] - v15) / v22);
        }

        else
        {
          v24 = v23 + 1;
        }

        v60 = v24 * v20;
        if (((v24 * v20) & 0x80000000) == 0)
        {
          v63 = -1;
          v25 = v73[0];
          do
          {
            if (v25 >= 1)
            {
              v26 = 0;
              do
              {
                v65[0] = 1;
                v71 = 1;
                kdu_params::get(this, "Ssampling", v26, 0, &v71, 1, 1, 1);
                kdu_params::get(this, "Ssampling", v26, 1, v65, 1, 1, 1);
                v70 = 0;
                v69 = 0;
                if (!v17 || (v27 = kdu_params::access_relation(v17, v63, v26, 0, 1), (v17 = v27) == 0) || !kdu_params::get(v27, "Clevels", 0, 0, &v70, 1, 1, 1) || (kdu_params::get(v17, "Cuse_precincts", 0, 0, &v69, 1, 1, 1) & 1) == 0)
                {
                  *&v82 = 0;
                  *v80 = 0u;
                  v81 = 0u;
                  kdu_error::kdu_error(v80, "Kakadu Core Error:\n");
                  (*(*v80 + 16))(v80, "Attempting to write geometrically transformed SIZ marker information without attaching and finalizing all tile-component COD marker information.  This is essential to establish canvas coordinate equivalence relationships.");
                  kdu_error::~kdu_error(v80);
                }

                v28 = v70;
                if ((v70 & 0x80000000) == 0)
                {
                  v29 = -v70;
                  do
                  {
                    v30 = 15;
                    *v68 = 15;
                    *&v68[4] = 15;
                    v31 = 15;
                    if (v69)
                    {
                      kdu_params::get(v17, "Cprecincts", v29 + v70, 0, v68, 1, 1, 1);
                      kdu_params::get(v17, "Cprecincts", v29 + v70, 1, &v68[4], 1, 1, 1);
                      v30 = v68[0];
                      v31 = v68[4];
                    }

                    v32 = (v65[0] << (v31 + v28));
                    v33 = (v71 << (v30 + v28));
                    v34 = v32 < 1 || v33 <= 0;
                    if (v34)
                    {
                      *&v82 = 0;
                      *v80 = 0u;
                      v81 = 0u;
                      kdu_error::kdu_error(v80, "Kakadu Core Error:\n");
                      (*(*v80 + 16))(v80, "Error attempting to convert geometrically transformed canvas coordinates to legal marker ranges.  Try using a smaller precinct size (you can use the transcoding utility to achieve this at the same time as geometric transformations.");
                      kdu_error::~kdu_error(v80);
                    }

                    lcm = find_lcm(lcm, v32);
                    v35 = find_lcm(v16, v33);
                    v16 = v35;
                    ++v29;
                    v34 = v28-- <= 0;
                  }

                  while (!v34);
                }

                ++v26;
                v25 = v73[0];
              }

              while (v26 < v73[0]);
            }

            ++v63;
          }

          while (v63 != v60);
          v9 = v74[0];
        }

        if (v9 < 0)
        {
          if (lcm <= 1)
          {
            v37 = 1;
          }

          else
          {
            v37 = lcm;
          }

          v36 = lcm + lcm * (~v9 / v37);
        }

        else
        {
          v36 = 0;
        }

        if ((v73[1] & 0x80000000) != 0)
        {
          if (v16 <= 1)
          {
            v39 = 1;
          }

          else
          {
            v39 = v16;
          }

          v38 = v16 + v16 * (~v73[1] / v39);
        }

        else
        {
          v38 = 0;
        }

        v77[0] += v36;
        v76[1] += v38;
        v75[1] += v38;
        v10 = v76[0] + v36;
        v76[0] += v36;
        v8 = v38 + v73[1];
        v9 += v36;
        v73[1] += v38;
        v74[0] = v9;
        if (v9 < 0 || v8 < 0)
        {
          siz_params::write_marker_segment();
        }
      }

      else
      {
        v10 = v76[0];
      }

      if (v10 < v9 || v75[1] < v8 || v10 >= (v75[0] + v9) || v75[1] >= (v74[1] + v8) || v77[0] <= v10 || v76[1] <= v75[1])
      {
        *&v82 = 0;
        *v80 = 0u;
        v81 = 0u;
        kdu_error::kdu_error(v80, "Kakadu Core Error:\n");
        (*(*v80 + 16))(v80, "Cannot write SIZ marker with illegal canvas coordinates.  The first tile is required to have a non-empty intersection with the image region on the canvas.");
        kdu_error::~kdu_error(v80);
      }

      kdu_output::put(a2, 255);
      kdu_output::put(a2, 81);
      kdu_output::put(a2, (v58 + 38) >> 8);
      kdu_output::put(a2, v58 + 38);
      if (v78 == 3)
      {
        v40 = LOWORD(v77[1]) | 0x8000;
      }

      else
      {
        if (v78 > 5 || v77[1])
        {
          *&v82 = 0;
          *v80 = 0u;
          v81 = 0u;
          kdu_error::kdu_error(v80, "Kakadu Core Error:\n");
          (*(*v80 + 16))(v80, "Illegal profile index.  Sprofile must be set in the range 0 to 5; 3 is required if Part 2 features are to be used.");
          kdu_error::~kdu_error(v80);
        }

        if (v78 == 2)
        {
          v40 = 0;
        }

        else if (v78 < 4)
        {
          v40 = v78 + 1;
        }

        else
        {
          v40 = v78 - 1;
        }
      }

      if (v79)
      {
        v41 = v40 | 0x4000;
      }

      else
      {
        v41 = v40;
      }

      kdu_output::put(a2, SHIBYTE(v41));
      kdu_output::put(a2, v41);
      v42 = kdu_output::put(a2, v77[0]);
      v43 = kdu_output::put(a2, v76[1]);
      v44 = kdu_output::put(a2, v76[0]);
      v45 = kdu_output::put(a2, v75[1]);
      v46 = kdu_output::put(a2, v75[0]);
      v47 = kdu_output::put(a2, v74[1]);
      v48 = kdu_output::put(a2, v74[0]);
      v49 = kdu_output::put(a2, v73[1]);
      v50 = v73[0];
      kdu_output::put(a2, SBYTE1(v73[0]));
      kdu_output::put(a2, v50);
      v51 = v42 + v43 + v44 + v45 + v46 + v47 + v48 + v49 + 8;
      v70 = 0;
      v71 = 0;
      *v68 = 0;
      if (v73[0] >= 1)
      {
        v52 = 0;
        do
        {
          if (!kdu_params::get(this, "Ssigned", v52, 0, &v71, 1, 1, 1) || !kdu_params::get(this, "Sprecision", v52, 0, &v70, 1, 1, 1) || !kdu_params::get(this, "Ssampling", v52, 0, v68, 1, 1, 1) || (kdu_params::get(this, "Ssampling", v52, 1, &v68[4], 1, 1, 1) & 1) == 0)
          {
            *&v82 = 0;
            *v80 = 0u;
            v81 = 0u;
            kdu_error::kdu_error(v80, "Kakadu Core Error:\n");
            (*(*v80 + 16))(v80, "Unable to write SIZ marker segment! Precision or sub-sampling information missing for at least one component.");
            kdu_error::~kdu_error(v80);
          }

          if ((v70 - 39) <= 0xFFFFFFD9)
          {
            v67 = 0;
            *v65 = 0u;
            v66 = 0u;
            kdu_error::kdu_error(v65, "Kakadu Core Error:\n");
            (*(*v65 + 16))(v65, "Illegal image sample bit-depth, ");
            v83 = 0u;
            v84 = 0u;
            v81 = 0u;
            v82 = 0u;
            *v80 = 0u;
            if (LOBYTE(v65[2]))
            {
              sprintf(v80, "%x");
            }

            else
            {
              sprintf(v80, "%d");
            }

            (*(*v65 + 16))(v65, v80);
            (*(*v65 + 16))(v65, ". Legal range is from 1 to 38 bits per sample.");
            kdu_error::~kdu_error(v65);
          }

          if ((*&v68[4] - 256) < 0xFFFFFF01 || (*v68 - 256) <= 0xFFFFFF00)
          {
            v67 = 0;
            *v65 = 0u;
            v66 = 0u;
            kdu_error::kdu_error(v65, "Kakadu Core Error:\n");
            (*(*v65 + 16))(v65, "Illegal component sub-sampling factors, {");
            v83 = 0u;
            v84 = 0u;
            v81 = 0u;
            v82 = 0u;
            *v80 = 0u;
            if (LOBYTE(v65[2]))
            {
              sprintf(v80, "%x");
            }

            else
            {
              sprintf(v80, "%d");
            }

            (*(*v65 + 16))(v65, v80);
            (*(*v65 + 16))(v65, ",");
            v83 = 0u;
            v84 = 0u;
            v81 = 0u;
            v82 = 0u;
            *v80 = 0u;
            if (LOBYTE(v65[2]))
            {
              sprintf(v80, "%x");
            }

            else
            {
              sprintf(v80, "%d");
            }

            (*(*v65 + 16))(v65, v80);
            (*(*v65 + 16))(v65, "}. Legal range is from 1 to 255.");
            kdu_error::~kdu_error(v65);
          }

          v53 = kdu_output::put(a2, v70 + (v71 << 7) - 1);
          v54 = kdu_output::put(a2, v68[4]);
          v51 += v53 + v54 + kdu_output::put(a2, v68[0]);
          ++v52;
        }

        while (v52 < v73[0]);
      }

      if (v51 != v61)
      {
        siz_params::write_marker_segment();
      }

      if (v59)
      {
        kdu_output::put(a2, 255);
        kdu_output::put(a2, 120);
        kdu_output::put(a2, (v59 - 2) >> 8);
        kdu_output::put(a2, v59 - 2);
        v55 = v72;
        kdu_output::put(a2, SBYTE1(v72));
        kdu_output::put(a2, v55);
        if (v72 < 1)
        {
          v57 = 6;
        }

        else
        {
          v56 = 0;
          v57 = 6;
          do
          {
            if (!kdu_params::get(this, "Msigned", v56, 0, &v71, 1, 1, 1) || (kdu_params::get(this, "Mprecision", v56, 0, &v70, 1, 1, 1) & 1) == 0)
            {
              *&v82 = 0;
              *v80 = 0u;
              v81 = 0u;
              kdu_error::kdu_error(v80, "Kakadu Core Error:\n");
              (*(*v80 + 16))(v80, "Unable to write CBD marker segment! Precision or signed/unsigned information missing for at least one MCT output component.");
              kdu_error::~kdu_error(v80);
            }

            if ((v70 - 39) <= 0xFFFFFFD9)
            {
              v67 = 0;
              *v65 = 0u;
              v66 = 0u;
              kdu_error::kdu_error(v65, "Kakadu Core Error:\n");
              (*(*v65 + 16))(v65, "Illegal precision for MCT output component, ");
              v83 = 0u;
              v84 = 0u;
              v81 = 0u;
              v82 = 0u;
              *v80 = 0u;
              if (LOBYTE(v65[2]))
              {
                sprintf(v80, "%x");
              }

              else
              {
                sprintf(v80, "%d");
              }

              (*(*v65 + 16))(v65, v80);
              (*(*v65 + 16))(v65, ". Legal range is from 1 to 38 bits per sample.");
              kdu_error::~kdu_error(v65);
            }

            v57 += kdu_output::put(a2, v70 + (v71 << 7) - 1);
            ++v56;
          }

          while (v56 < v72);
        }

        if (v57 != v59)
        {
          siz_params::write_marker_segment();
        }

        LODWORD(v61) = v59 + v61;
      }
    }

    else
    {
      return v59 + 3 * v5 + 40;
    }
  }

  return v61;
}

uint64_t find_lcm(int a1, uint64_t a2)
{
  if (a1 < 1 || a2 < 1)
  {
    find_lcm();
  }

  v2 = 1;
  if (a1 >= 2 && a2 >= 2)
  {
    v3 = 2;
    do
    {
      if (!(a1 % v3))
      {
        v4 = a2;
        while (1)
        {
          a2 = (v4 / v3);
          if (v4 % v3)
          {
            break;
          }

          v2 *= v3;
          a1 /= v3;
          v4 = (v4 / v3);
          if (a1 % v3)
          {
            goto LABEL_12;
          }
        }

        a2 = v4;
      }

LABEL_12:
      if (v3 >= a1)
      {
        break;
      }
    }

    while (v3++ < a2);
  }

  return (a2 * a1 * v2);
}

uint64_t siz_params::check_marker_segment(siz_params *this, int a2, int a3, unsigned __int8 *a4, int *a5)
{
  *a5 = -1;
  if (a2 == 65361)
  {
    return 1;
  }

  if (a2 != 65400)
  {
    return 0;
  }

  v10 = v5;
  v11 = v6;
  v9 = 0;
  if ((kdu_params::get(this, "Mcomponents", 0, 0, &v9, 1, 1, 1) & 1) == 0)
  {
    *(this + 37) = 0;
  }

  return 1;
}

uint64_t siz_params::read_marker_segment(siz_params *this, int a2, unsigned int a3, unsigned __int8 *a4, int a5)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    return 0;
  }

  v9 = &a4[a3];
  if (a2 == 65400)
  {
    if (a3 <= 1)
    {
      exception = __cxa_allocate_exception(8uLL);
      *exception = a4;
      __cxa_throw(exception, MEMORY[0x1E69E53E8], 0);
    }

    v12 = *a4;
    v13 = a4[1] | ((v12 & 0x7F) << 8);
    kdu_params::set(this, "Mcomponents", 0, 0, v13);
    v14 = a4 + 2;
    if (v13)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        if ((v12 & 0x80000000) == 0 || !v16)
        {
          if (v9 - v14 <= 0)
          {
            v34 = __cxa_allocate_exception(8uLL);
            *v34 = v14;
            __cxa_throw(v34, MEMORY[0x1E69E53E8], 0);
          }

          v16 = *v14;
          kdu_params::set(this, "Msigned", v15, 0, (v16 >> 7));
          kdu_params::set(this, "Mprecision", v15, 0, ((v16 & 0x7F) + 1));
          ++v14;
        }

        ++v15;
      }

      while (v13 != v15);
    }

    if (v14 != v9)
    {
      v40 = 0;
      v38 = 0u;
      v39 = 0u;
      kdu_error::kdu_error(&v38, "Kakadu Core Error:\n");
      (*(v38 + 16))(&v38, "Malformed CBD marker segment encountered. The final ");
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      *v41 = 0u;
      if (BYTE8(v38))
      {
        sprintf(v41, "%x");
      }

      else
      {
        sprintf(v41, "%d");
      }

      (*(v38 + 16))(&v38, v41);
      (*(v38 + 16))(&v38, " bytes were not consumed!");
      kdu_error::~kdu_error(&v38);
    }

    return 1;
  }

  if (a2 != 65361)
  {
    return 0;
  }

  if (a3 <= 1)
  {
    v35 = __cxa_allocate_exception(8uLL);
    *v35 = a4;
    __cxa_throw(v35, MEMORY[0x1E69E53E8], 0);
  }

  v10 = *a4;
  v11 = (a4[1] | ((v10 & 0x3F) << 8));
  if (v10 < 0)
  {
    v17 = 3;
  }

  else
  {
    if (v11 >= 5)
    {
      *&v43 = 0;
      *v41 = 0u;
      v42 = 0u;
      kdu_error::kdu_error(v41, "Kakadu Core Error:\n");
      (*(*v41 + 16))(v41, "Invalid SIZ marker segment encountered!");
      kdu_error::~kdu_error(v41);
    }

    if (v11)
    {
      if (v11 < 3)
      {
        v17 = (v11 - 1);
      }

      else
      {
        v17 = (v11 + 1);
      }

      v11 = 0;
    }

    else
    {
      v17 = 2;
    }
  }

  kdu_params::set(this, "Sprofile", 0, 0, v17);
  kdu_params::set(this, "Sextensions", 0, 0, v11);
  kdu_params::set(this, "Scap", 0, 0, (v10 >> 6) & 1);
  if (a3 < 6)
  {
    v32 = a4 + 2;
    goto LABEL_62;
  }

  v18 = (a4[2] << 16) | (a4[3] << 8) | a4[4];
  v19 = (a4[5] | (v18 << 8));
  kdu_params::set(this, "Ssize", 0, 1, v19);
  if (a3 < 0xA)
  {
    v32 = a4 + 6;
    goto LABEL_62;
  }

  v20 = (a4[6] << 16) | (a4[7] << 8) | a4[8];
  v21 = (a4[9] | (v20 << 8));
  kdu_params::set(this, "Ssize", 0, 0, v21);
  if (a3 < 0xE)
  {
    v32 = a4 + 10;
    goto LABEL_62;
  }

  kdu_params::set(this, "Sorigin", 0, 1, bswap32(*(a4 + 10)));
  if (a3 < 0x12)
  {
    v32 = a4 + 14;
    goto LABEL_62;
  }

  kdu_params::set(this, "Sorigin", 0, 0, bswap32(*(a4 + 14)));
  if (a3 < 0x16)
  {
    v32 = a4 + 18;
    goto LABEL_62;
  }

  v22 = (a4[18] << 16) | (a4[19] << 8) | a4[20];
  kdu_params::set(this, "Stiles", 0, 1, (a4[21] | (v22 << 8)));
  if (a3 < 0x1A)
  {
    v32 = a4 + 22;
    goto LABEL_62;
  }

  v23 = (a4[22] << 16) | (a4[23] << 8) | a4[24];
  kdu_params::set(this, "Stiles", 0, 0, (a4[25] | (v23 << 8)));
  if (a3 < 0x1E)
  {
    v32 = a4 + 26;
    goto LABEL_62;
  }

  kdu_params::set(this, "Stile_origin", 0, 1, bswap32(*(a4 + 26)));
  if (a3 < 0x22)
  {
    v32 = a4 + 30;
    goto LABEL_62;
  }

  kdu_params::set(this, "Stile_origin", 0, 0, bswap32(*(a4 + 30)));
  if (((v18 << 8) & 0x80000000) == 0 && v22 << 8 < 0)
  {
    kdu_params::set(this, "Stiles", 0, 1, v19);
  }

  if (((v20 << 8) & 0x80000000) == 0 && v23 << 8 < 0)
  {
    kdu_params::set(this, "Stiles", 0, 0, v21);
  }

  if (a3 < 0x24)
  {
    v32 = a4 + 34;
LABEL_62:
    v33 = __cxa_allocate_exception(8uLL);
    *v33 = v32;
    __cxa_throw(v33, MEMORY[0x1E69E53E8], 0);
  }

  v24 = a4[34];
  v25 = a4[35];
  kdu_params::set(this, "Scomponents", 0, 0, (v25 | (v24 << 8)));
  if (!(v25 | (v24 << 8)))
  {
    v31 = a4 + 36;
    goto LABEL_50;
  }

  v37 = v9;
  v26 = 0;
  v27 = 0;
  v28 = a3 - 38;
  do
  {
    v29 = &a4[v26];
    if (v28 + 2 < 1)
    {
      v32 = v29 + 36;
      goto LABEL_62;
    }

    v30 = v29[36];
    kdu_params::set(this, "Ssigned", v27, 0, (v30 >> 7));
    kdu_params::set(this, "Sprecision", v27, 0, ((v30 & 0x7F) + 1));
    if (v28 + 1 < 1)
    {
      v32 = &a4[v26 + 37];
      goto LABEL_62;
    }

    kdu_params::set(this, "Ssampling", v27, 1, v29[37]);
    if (v28 < 1)
    {
      v32 = &a4[v26 + 38];
      goto LABEL_62;
    }

    kdu_params::set(this, "Ssampling", v27++, 0, a4[v26 + 38]);
    v26 += 3;
    v28 -= 3;
  }

  while (3 * v25 + 768 * v24 != v26);
  v31 = &a4[v26 + 36];
  v9 = v37;
LABEL_50:
  if (v31 != v9)
  {
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    kdu_error::kdu_error(&v38, "Kakadu Core Error:\n");
    (*(v38 + 16))(&v38, "Malformed SIZ marker segment encountered. The final ");
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    *v41 = 0u;
    if (BYTE8(v38))
    {
      sprintf(v41, "%x");
    }

    else
    {
      sprintf(v41, "%d");
    }

    (*(v38 + 16))(&v38, v41);
    (*(v38 + 16))(&v38, " bytes were not consumed!");
    kdu_error::~kdu_error(&v38);
  }

  return 1;
}

void sub_185F65CFC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, uint64_t a13)
{
  if (v14 == 1)
  {
    __cxa_begin_catch(v13);
    a13 = 0;
    a11 = 0u;
    a12 = 0u;
    kdu_error::kdu_error(&a11, "Kakadu Core Error:\n");
    (*(a11 + 16))(&a11, "Malformed SIZ marker segment encountered. Marker segment is too small.");
    kdu_error::~kdu_error(&a11);
  }

  _Unwind_Resume(v13);
}

uint64_t kdu_read(unsigned __int8 **a1, unsigned __int8 *a2, int a3)
{
  if (a3 >= 5)
  {
    kdu_read();
  }

  v3 = *a1;
  if (a2 - *a1 < a3)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = *a1;
    __cxa_throw(exception, MEMORY[0x1E69E53E8], 0);
  }

  *a1 = v3 + 1;
  v4 = *v3;
  if (a3 >= 2)
  {
    *a1 = v3 + 2;
    v4 = v3[1] | (v4 << 8);
    if (a3 != 2)
    {
      *a1 = v3 + 3;
      v4 = v3[2] | (v4 << 8);
      if (a3 == 4)
      {
        *a1 = v3 + 4;
        return v3[3] | (v4 << 8);
      }
    }
  }

  return v4;
}

void siz_params::finalize(siz_params *this)
{
  *v10 = 0;
  *v11 = 0;
  v9 = 0;
  v8 = 0;
  v2 = kdu_params::get(this, "Scomponents", 0, 0, &v11[1], 1, 1, 1);
  v3 = kdu_params::get(this, "Ssampling", 0, 0, v11, 1, 1, 1);
  v4 = kdu_params::get(this, "Sdims", 0, 0, v11, 1, 1, 1);
  if (kdu_params::get(this, "Ssize", 0, 0, v10, 1, 1, 1))
  {
    kdu_params::get(this, "Ssize", 0, 1, &v10[1], 1, 1, 1);
  }

  if (!kdu_params::get(this, "Sorigin", 0, 0, &v8, 1, 1, 1) || (kdu_params::get(this, "Sorigin", 0, 1, &v9, 1, 1, 1) & 1) == 0)
  {
    v8 = 0;
    kdu_params::set(this, "Sorigin", 0, 0, 0);
    v9 = 0;
    kdu_params::set(this, "Sorigin", 0, 1, 0);
  }

  if (v2 & 1 | ((v3 & 1) == 0))
  {
    if (v2 & 1 | ((v4 & 1) == 0))
    {
      if ((v2 & 1) == 0)
      {
        v7 = 0;
        *v5 = 0u;
        v6 = 0u;
        kdu_error::kdu_error(v5, "Kakadu Core Error:\n");
        (*(*v5 + 16))(v5, "Problem trying to finalize SIZ information. Insufficient data supplied to determine the number of image components! Available information is as follows:\n\n");
        kdu_params::textualize_attributes(this, v5, 1);
        (*(*v5 + 16))(v5, "\n");
        kdu_error::~kdu_error(v5);
      }
    }

    else
    {
      v11[1] = 1;
      if (kdu_params::get(this, "Sdims", 1, 0, v11, 0, 0, 1))
      {
        do
        {
          ++v11[1];
        }

        while ((kdu_params::get(this, "Sdims", v11[1], 0, v11, 0, 0, 1) & 1) != 0);
      }
    }
  }

  else
  {
    v11[1] = 1;
    if (kdu_params::get(this, "Ssampling", 1, 0, v11, 0, 0, 1))
    {
      do
      {
        ++v11[1];
      }

      while ((kdu_params::get(this, "Ssampling", v11[1], 0, v11, 0, 0, 1) & 1) != 0);
    }
  }

  operator new[]();
}

BOOL synthesize_canvas_size(int a1, int *a2, int a3, int *a4)
{
  v4 = *a2;
  if (a1 >= 2)
  {
    v5 = a2 + 1;
    v6 = a1 - 1;
    do
    {
      v8 = *v5++;
      v7 = v8;
      if (v8 > v4)
      {
        v4 = v7;
      }

      --v6;
    }

    while (v6);
  }

  v9 = a3 - 1;
  v10 = -a3;
  v11 = 1;
  v12 = 1;
  while (1)
  {
    v13 = -(v10 / v12);
    if (a3 > 0)
    {
      v13 = v9 / v12 + 1;
    }

    v14 = (v13 + v4) * v12;
    v15 = v14 - v12 + 1;
    if (a1 < 1)
    {
      LODWORD(v16) = 0;
    }

    else
    {
      v16 = 0;
      while (1)
      {
        v17 = a2[v16];
        v18 = (v15 - a3) / v17;
        if (v18 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = (v15 - a3) / v17;
        }

        if (v18 >= 2)
        {
          while (1)
          {
            v20 = -(v10 / v19);
            if (a3 > 0)
            {
              v20 = v9 / v19 + 1;
            }

            if ((v20 + v17) * v19 <= v15)
            {
              break;
            }

            if (v19-- <= 2)
            {
              v19 = 1;
              break;
            }
          }
        }

        v22 = v19 - 1;
        v23 = v19 + 1;
        v24 = ~v19;
        do
        {
          v25 = v23;
          v26 = v24;
          if (v19 <= 1)
          {
            v27 = 1;
          }

          else
          {
            v27 = v19;
          }

          v28 = -(v10 / v27);
          v29 = v9 / v27;
          if (a3 > 0)
          {
            v30 = v29 + 1;
          }

          else
          {
            v30 = v28;
          }

          v31 = (v30 + v17) * v19++;
          ++v22;
          v23 = v25 + 1;
          --v24;
        }

        while (v31 < v15);
        v32 = v22 * (v17 + v30) - v19;
        v33 = v32 + 1;
        v34 = v32 + 2;
        if (v33 >= v15)
        {
          v15 = v34;
        }

        if (v15 > v14)
        {
          break;
        }

        if (v19 != 256)
        {
          do
          {
            if (v25 <= 1)
            {
              v35 = 1;
            }

            else
            {
              v35 = v25;
            }

            v36 = v9 / v35;
            v37 = -(v10 / v35);
            if (a3 > 0)
            {
              v37 = v36 + 1;
            }

            v38 = (v37 + v17) * v25;
            if (v26 + v38 >= v14)
            {
              break;
            }

            ++v25;
            --v26;
            v31 = v38;
          }

          while (v25 != 256);
        }

        if (v31 < v14)
        {
          v14 = v31;
        }

        if (v15 > v14)
        {
          break;
        }

        if (++v16 == a1)
        {
          goto LABEL_49;
        }
      }
    }

    if (v16 == a1)
    {
      break;
    }

    v11 = v12++ < 0xFF;
    if (v12 == 256)
    {
      return 0;
    }
  }

LABEL_49:
  *a4 = v15;
  return v11;
}

void mct_params::mct_params(mct_params *this)
{
  *(this + 1) = "MCT";
  *(this + 8) = 0;
  *(this + 1) = xmmword_186206BB0;
  *(this + 20) = 1;
  *(this + 42) = 1;
  *(this + 6) = this;
  *(this + 7) = 0;
  *(this + 8) = this + 72;
  *(this + 9) = this;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = this;
  *(this + 104) = 0;
  *(this + 9) = 65537;
  *(this + 14) = 0;
  *this = &unk_1EF4D2C08;
}

uint64_t mct_params::copy_with_xforms(mct_params *this, kdu_params *a2)
{
  v9 = 0;
  if (kdu_params::get(a2, "Mmatrix_size", 0, 0, &v9, 0, 1, 1))
  {
    v4 = v9 < 1;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    kdu_params::set(this, "Mmatrix_size", 0, 0, v9);
    if (v9 >= 1)
    {
      v5 = 0;
      do
      {
        if (!kdu_params::get(a2, "Mmatrix_coeffs", v5, 0, &v9 + 1, 1, 1, 1))
        {
          break;
        }

        kdu_params::set(this, "Mmatrix_coeffs", v5++, 0, *(&v9 + 1));
      }

      while (v5 < v9);
    }
  }

  if (kdu_params::get(a2, "Mvector_size", 0, 0, &v9, 0, 1, 1))
  {
    if (v9 >= 1)
    {
      kdu_params::set(this, "Mvector_size", 0, 0, v9);
      if (v9 >= 1)
      {
        v6 = 0;
        do
        {
          if (!kdu_params::get(a2, "Mvector_coeffs", v6, 0, &v9 + 1, 1, 1, 1))
          {
            break;
          }

          kdu_params::set(this, "Mvector_coeffs", v6++, 0, *(&v9 + 1));
        }

        while (v6 < v9);
      }
    }
  }

  result = kdu_params::get(a2, "Mtriang_size", 0, 0, &v9, 0, 1, 1);
  if (result)
  {
    if (v9 >= 1)
    {
      result = kdu_params::set(this, "Mtriang_size", 0, 0, v9);
      if (v9 >= 1)
      {
        v8 = 0;
        do
        {
          result = kdu_params::get(a2, "Mtriang_coeffs", v8, 0, &v9 + 1, 1, 1, 1);
          if (!result)
          {
            break;
          }

          result = kdu_params::set(this, "Mtriang_coeffs", v8++, 0, *(&v9 + 1));
        }

        while (v8 < v9);
      }
    }
  }

  return result;
}

uint64_t mct_params::finalize(uint64_t this, int a2)
{
  v2 = this;
  if (a2)
  {
    if (*(this + 152) <= *(this + 156) || *(this + 160) <= *(this + 164) || *(this + 168) <= *(this + 172))
    {
      v7 = 0;
      v5 = 0u;
      v6 = 0u;
      kdu_error::kdu_error(&v5, "Kakadu Core Error:\n");
      goto LABEL_23;
    }
  }

  else
  {
    *v3 = 0;
    *v4 = 0;
    if (kdu_params::get(this, "Mmatrix_size", 0, 0, &v4[1], 0, 1, 1) && v4[1] < 1 || kdu_params::get(v2, "Mvector_size", 0, 0, v4, 0, 1, 1) && v4[0] < 1 || (this = kdu_params::get(v2, "Mtriang_size", 0, 0, &v3[1], 0, 1, 1), this) && v3[1] <= 0)
    {
      v7 = 0;
      v5 = 0u;
      v6 = 0u;
      kdu_error::kdu_error(&v5, "Kakadu Core Error:\n");
      kdu_error::~kdu_error(&v5);
    }

    if (!*(v2 + 6) && v4[0] | v3[1] | v4[1])
    {
      v7 = 0;
      v5 = 0u;
      v6 = 0u;
      kdu_error::kdu_error(&v5, "Kakadu Core Error:\n");
      kdu_error::~kdu_error(&v5);
    }

    if (v4[1] >= 1 && (this = kdu_params::get(v2, "Mmatrix_coeffs", v4[1] - 1, 0, v3, 1, 1, 1), !this) || v4[0] >= 1 && (this = kdu_params::get(v2, "Mvector_coeffs", v4[0] - 1, 0, v3, 1, 1, 1), !this) || v3[1] >= 1 && (this = kdu_params::get(v2, "Mtriang_coeffs", v3[1] - 1, 0, v3, 1, 1, 1), (this & 1) == 0))
    {
      v7 = 0;
      v5 = 0u;
      v6 = 0u;
      kdu_error::kdu_error(&v5, "Kakadu Core Error:\n");
LABEL_23:
      kdu_error::~kdu_error(&v5);
    }
  }

  return this;
}

BOOL mct_params::check_marker_segment(mct_params *this, int a2, int a3, unsigned __int8 *a4, int *a5)
{
  if (a2 != 65396 || a3 < 4)
  {
    return 0;
  }

  v7 = a4[2];
  v8 = a4[3];
  *a5 = v8;
  return (~v7 & 3) != 0 && v8 != 0;
}

uint64_t mct_params::read_marker_segment(mct_params *this, int a2, int a3, unsigned __int8 *a4, int a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    return 0;
  }

  result = 0;
  if (a2 == 65396 && a3 >= 4)
  {
    v7 = *(this + 6);
    if (!v7)
    {
      return 0;
    }

    result = 0;
    if (v7 == a4[3])
    {
      v8 = a4[2];
      if ((v8 & 3) != 3)
      {
        v9 = &a4[a3];
        v10 = __rev16(*a4);
        v11 = a4 + 4;
        if (v10)
        {
          v12 = 0;
          if ((v8 & 3) != 0)
          {
            goto LABEL_11;
          }
        }

        else
        {
          if (a3 <= 5)
          {
            exception = __cxa_allocate_exception(8uLL);
            *exception = v11;
            __cxa_throw(exception, MEMORY[0x1E69E53E8], 0);
          }

          v11 = a4 + 6;
          v12 = __rev16(*(a4 + 2));
          if ((v8 & 3) != 0)
          {
LABEL_11:
            if ((v8 & 3) == 1)
            {
              v13 = "Mmatrix_coeffs";
              v14 = 152;
              v15 = 156;
              v16 = "Mmatrix_size";
              if (v10)
              {
                goto LABEL_14;
              }

              goto LABEL_13;
            }

            v13 = "Mvector_coeffs";
            v14 = 160;
            v15 = 164;
            v16 = "Mvector_size";
            if (!v10)
            {
LABEL_13:
              *(this + v15) = v12;
            }

LABEL_14:
            v17 = *(this + v14);
            *(this + v14) = v17 + 1;
            if (v10 > *(this + v15) || v10 < v17)
            {
              *&v40 = 0;
              *v38 = 0u;
              v39 = 0u;
              kdu_error::kdu_error(v38, "Kakadu Core Error:\n");
              kdu_error::~kdu_error(v38);
            }

            if (v10 != v17)
            {
              *&v40 = 0;
              *v38 = 0u;
              v39 = 0u;
              kdu_error::kdu_error(v38, "Kakadu Core Error:\n");
              kdu_error::~kdu_error(v38);
            }

            v18 = (v8 >> 2) & 3;
            v19 = dword_186206BC0[v18];
            v35[0] = 0;
            if (v17 < 1)
            {
              v20 = 0;
            }

            else
            {
              kdu_params::get(this, v16, 0, 0, v35, 1, 1, 1);
              v20 = v35[0];
            }

            v21 = (v9 - v11) / v19;
            kdu_params::set(this, v16, 0, 0, (v20 + v21));
            if (v21 >= 1)
            {
              for (i = 0; i != v21; ++i)
              {
                v23 = v9 - v11;
                if (v18 > 1)
                {
                  if (v18 == 2)
                  {
                    if (v23 < 4)
                    {
                      goto LABEL_53;
                    }

                    *v38 = 0;
                    for (j = 3; j != -1; --j)
                    {
                      v28 = *v11++;
                      v38[j] = v28;
                    }

                    v29 = *v38;
                  }

                  else
                  {
                    if (v23 < 8)
                    {
LABEL_53:
                      v33 = __cxa_allocate_exception(8uLL);
                      *v33 = v11;
                      __cxa_throw(v33, MEMORY[0x1E69E53E8], 0);
                    }

                    *v38 = 0;
                    for (k = 7; k != -1; --k)
                    {
                      v32 = *v11++;
                      v38[k] = v32;
                    }

                    v29 = *v38;
                  }
                }

                else
                {
                  if (v18)
                  {
                    if (v23 < 4)
                    {
                      goto LABEL_53;
                    }

                    v30 = *v11;
                    v11 += 4;
                    v26 = bswap32(v30);
                  }

                  else
                  {
                    if (v23 <= 1)
                    {
                      goto LABEL_53;
                    }

                    v24 = *v11;
                    v25 = v11[1];
                    v11 += 2;
                    v26 = (v25 | (v24 << 8)) - ((v24 << 9) & 0x10000);
                  }

                  v29 = v26;
                }

                kdu_params::set(this, v13, v35[0] + i, 0, v29);
              }
            }

            if (v11 != v9)
            {
              v37 = 0;
              *v35 = 0u;
              v36 = 0u;
              kdu_error::kdu_error(v35, "Kakadu Core Error:\n");
              (*(*v35 + 16))(v35, "Malformed MCT marker segment encountered. The final ");
              v41 = 0u;
              v42 = 0u;
              v39 = 0u;
              v40 = 0u;
              *v38 = 0u;
              if (LOBYTE(v35[2]))
              {
                sprintf(v38, "%x");
              }

              else
              {
                sprintf(v38, "%d");
              }

              (*(*v35 + 16))(v35, v38);
              (*(*v35 + 16))(v35, " bytes were not consumed!");
              kdu_error::~kdu_error(v35);
            }

            return 1;
          }
        }

        v13 = "Mtriang_coeffs";
        v14 = 168;
        v15 = 172;
        v16 = "Mtriang_size";
        if (!v10)
        {
          goto LABEL_13;
        }

        goto LABEL_14;
      }
    }
  }

  return result;
}

void sub_185F68B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    a19 = 0;
    a17 = 0u;
    a18 = 0u;
    kdu_error::kdu_error(&a17, "Kakadu Core Error:\n");
    (*(a17 + 16))(&a17, "Malformed MCT marker segment encountered.  Marker segment is too small.");
    kdu_error::~kdu_error(&a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mct_params::write_marker_segment(mct_params *this, kdu_output *a2, kdu_params *a3, int a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = *(this + 6);
  if (v4 < 1)
  {
    return 0;
  }

  result = 0;
  if (!a4 && v4 <= 0xFF)
  {
    if ((*(this + 5) & 0x80000000) == 0)
    {
      return 0;
    }

    v37 = 0;
    *v36 = 0;
    kdu_params::get(this, "Mtriang_size", 0, 0, v36, 0, 1, 1);
    kdu_params::get(this, "Mmatrix_size", 0, 0, &v36[1], 0, 1, 1);
    kdu_params::get(this, "Mvector_size", 0, 0, &v37, 0, 1, 1);
    v8 = 0;
    result = 0;
    do
    {
      v9 = v36[v8];
      if (v9)
      {
        result = (result + 4 * v9 + 8 * ((v9 - 1) / 4092) + 10);
      }

      ++v8;
    }

    while (v8 != 3);
    if (a2 && result)
    {
      v31 = result;
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = v36[v10];
        if (v12)
        {
          *&v35 = 0.0;
          if (v12 < 1)
          {
            v17 = 0;
          }

          else
          {
            v13 = off_1E6EF8B78[v10];
            v14 = 1;
            do
            {
              kdu_params::get(this, v13, v14 - 1, 0, &v35, 1, 1, 1);
              v15 = floor(*&v35 + 0.5);
              v16 = *&v35 - v15;
              *&v35 = v16;
              v17 = v16 > 0.0001 || v16 < 0.0001;
              v12 = v36[v10];
              if (v16 < 0.0001)
              {
                break;
              }

              if (v16 > 0.0001)
              {
                break;
              }
            }

            while (v14++ < v12);
          }

          if (v12 >= -4090)
          {
            v19 = 0;
            v20 = 0;
            v34 = (v12 - 1) / 4092;
            if (v17)
            {
              v21 = 2048;
            }

            else
            {
              v21 = 1024;
            }

            v32 = v21 | (v10 << 8);
            v33 = v10;
            do
            {
              v22 = v36[v10] - v19;
              if (v22 >= 4092)
              {
                v23 = 4092;
              }

              else
              {
                v23 = v36[v10] - v19;
              }

              kdu_output::put(a2, 255);
              kdu_output::put(a2, 116);
              v24 = ((2 * (v20 == 0)) | (4 * v23)) + 6;
              kdu_output::put(a2, SHIBYTE(v24));
              kdu_output::put(a2, v24 & 0xFE);
              kdu_output::put(a2, SBYTE1(v20));
              kdu_output::put(a2, v20);
              v25 = *(this + 6);
              kdu_output::put(a2, (v32 + v25) >> 8);
              kdu_output::put(a2, v25);
              if (v20)
              {
                v11 += 8;
              }

              else
              {
                kdu_output::put(a2, SBYTE1(v34));
                kdu_output::put(a2, v34);
                v11 += 10;
              }

              if (v22 >= 1)
              {
                v26 = off_1E6EF8B78[v10];
                if (v23 <= 1)
                {
                  v27 = 1;
                }

                else
                {
                  v27 = v23;
                }

                v28 = v19;
                do
                {
                  kdu_params::get(this, v26, v28, 0, &v35, 1, 1, 1);
                  if (v17)
                  {
                    kdu_output::put(a2, v35);
                    v29 = 4;
                  }

                  else
                  {
                    v29 = kdu_output::put(a2, vcvtmd_s64_f64(*&v35 + 0.5));
                  }

                  v11 += v29;
                  ++v28;
                  --v27;
                }

                while (v27);
              }

              v19 += v23;
              v30 = v20++ == v34;
              v10 = v33;
            }

            while (!v30);
          }
        }

        ++v10;
      }

      while (v10 != 3);
      result = v31;
      if (v31 != v11)
      {
        mct_params::write_marker_segment();
      }
    }
  }

  return result;
}

void mcc_params::mcc_params(mcc_params *this)
{
  *(this + 1) = "MCC";
  *(this + 8) = 0;
  *(this + 1) = xmmword_186206BB0;
  *(this + 20) = 1;
  *(this + 42) = 1;
  *(this + 6) = this;
  *(this + 7) = 0;
  *(this + 8) = this + 72;
  *(this + 9) = this;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = this;
  *(this + 104) = 0;
  *(this + 9) = 65537;
  *(this + 14) = 0;
  *this = &unk_1EF4D2C68;
}

uint64_t mcc_params::finalize(uint64_t this, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = this;
    *v19 = 0;
    v3 = 0;
    if (kdu_params::get(this, "Mstage_inputs", 0, 0, &v19[1], 0, 0, 1))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        if (!kdu_params::get(v2, "Mstage_inputs", v4, 1, v19, 0, 0, 1))
        {
          break;
        }

        if (v19[0] >= 0x4000 || v19[1] < 0 || v19[1] > v19[0])
        {
          v18 = 0;
          v16 = 0u;
          v17 = 0u;
          kdu_error::kdu_error(&v16, "Kakadu Core Error:\n");
          kdu_error::~kdu_error(&v16);
        }

        v3 = v3 + v19[0] - v19[1] + 1;
        ++v4;
      }

      while ((kdu_params::get(v2, "Mstage_inputs", v4, 0, &v19[1], 0, 0, 1) & 1) != 0);
    }

    v5 = 0;
    if (kdu_params::get(v2, "Mstage_outputs", 0, 0, &v19[1], 0, 0, 1))
    {
      v5 = 0;
      v6 = 0;
      do
      {
        if (!kdu_params::get(v2, "Mstage_outputs", v6, 1, v19, 0, 0, 1))
        {
          break;
        }

        if (v19[0] >= 0x4000 || v19[1] < 0 || v19[1] > v19[0])
        {
          v18 = 0;
          v16 = 0u;
          v17 = 0u;
          kdu_error::kdu_error(&v16, "Kakadu Core Error:\n");
          kdu_error::~kdu_error(&v16);
        }

        v5 = v5 + v19[0] - v19[1] + 1;
        ++v6;
      }

      while ((kdu_params::get(v2, "Mstage_outputs", v6, 0, &v19[1], 0, 0, 1) & 1) != 0);
    }

    *v15 = 0;
    v7 = 0;
    if (kdu_params::get(v2, "Mstage_collections", 0, 0, &v15[1], 0, 0, 1))
    {
      do
      {
        if (!kdu_params::get(v2, "Mstage_collections", v7, 1, v15, 0, 0, 1))
        {
          break;
        }

        if (v15[1] < 1 || v15[0] <= 0)
        {
          v18 = 0;
          v16 = 0u;
          v17 = 0u;
          kdu_error::kdu_error(&v16, "Kakadu Core Error:\n");
          kdu_error::~kdu_error(&v16);
        }

        ++v7;
        v3 -= v15[1];
        v5 -= v15[0];
        v9 = kdu_params::get(v2, "Mstage_collections", v7, 0, &v15[1], 0, 0, 1);
      }

      while ((v9 & 1) != 0);
    }

    if (v3 | v5)
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      kdu_error::kdu_error(&v16, "Kakadu Core Error:\n");
      kdu_error::~kdu_error(&v16);
    }

    v14 = 0;
    this = kdu_params::get(v2, "Mstage_xforms", 0, 0, &v14, 0, 0, 1);
    v10 = 0;
    if (this)
    {
      v10 = 0;
      do
      {
        v13 = 0;
        *v12 = 0;
        v11 = 0;
        if (!kdu_params::get(v2, "Mstage_xforms", v10, 1, &v13, 0, 0, 1) || !kdu_params::get(v2, "Mstage_xforms", v10, 2, &v12[1], 0, 0, 1) || !kdu_params::get(v2, "Mstage_xforms", v10, 3, v12, 0, 0, 1) || !kdu_params::get(v2, "Mstage_xforms", v10, 4, &v11, 0, 0, 1) || v13 > 0xFF || v12[1] >= 0x100u)
        {
          v18 = 0;
          v16 = 0u;
          v17 = 0u;
          kdu_error::kdu_error(&v16, "Kakadu Core Error:\n");
          kdu_error::~kdu_error(&v16);
        }

        if (v14 == 3 && v12[0] >= 0x21u)
        {
          v18 = 0;
          v16 = 0u;
          v17 = 0u;
          kdu_error::kdu_error(&v16, "Kakadu Core Error:\n");
          kdu_error::~kdu_error(&v16);
        }

        if (v14 != 3 && (v12[0] > 1u || v11))
        {
          v18 = 0;
          v16 = 0u;
          v17 = 0u;
          kdu_error::kdu_error(&v16, "Kakadu Core Error:\n");
          kdu_error::~kdu_error(&v16);
        }

        this = kdu_params::get(v2, "Mstage_xforms", ++v10, 0, &v14, 0, 0, 1);
      }

      while ((this & 1) != 0);
    }

    if (v7 != v10)
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      kdu_error::kdu_error(&v16, "Kakadu Core Error:\n");
      kdu_error::~kdu_error(&v16);
    }
  }

  return this;
}

uint64_t mcc_params::copy_with_xforms(mcc_params *this, kdu_params *a2)
{
  v14 = 0;
  v13 = 0;
  if (kdu_params::get(a2, "Mstage_inputs", 0, 0, &v14, 0, 0, 1))
  {
    v4 = 0;
    do
    {
      if (!kdu_params::get(a2, "Mstage_inputs", v4, 1, &v13, 0, 0, 1))
      {
        break;
      }

      kdu_params::set(this, "Mstage_inputs", v4, 0, v14);
      kdu_params::set(this, "Mstage_inputs", v4++, 1, v13);
    }

    while ((kdu_params::get(a2, "Mstage_inputs", v4, 0, &v14, 0, 0, 1) & 1) != 0);
  }

  if (kdu_params::get(a2, "Mstage_outputs", 0, 0, &v14, 0, 0, 1))
  {
    v5 = 0;
    do
    {
      if (!kdu_params::get(a2, "Mstage_outputs", v5, 1, &v13, 0, 0, 1))
      {
        break;
      }

      kdu_params::set(this, "Mstage_outputs", v5, 0, v14);
      kdu_params::set(this, "Mstage_outputs", v5++, 1, v13);
    }

    while ((kdu_params::get(a2, "Mstage_outputs", v5, 0, &v14, 0, 0, 1) & 1) != 0);
  }

  *v12 = 0;
  if (kdu_params::get(a2, "Mstage_collections", 0, 0, &v12[1], 0, 0, 1))
  {
    v6 = 0;
    do
    {
      if (!kdu_params::get(a2, "Mstage_collections", v6, 1, v12, 0, 0, 1))
      {
        break;
      }

      kdu_params::set(this, "Mstage_collections", v6, 0, v12[1]);
      kdu_params::set(this, "Mstage_collections", v6++, 1, v12[0]);
    }

    while ((kdu_params::get(a2, "Mstage_collections", v6, 0, &v12[1], 0, 0, 1) & 1) != 0);
  }

  *v10 = 0;
  *v11 = 0;
  v9 = 0;
  result = kdu_params::get(a2, "Mstage_xforms", 0, 0, &v11[1], 0, 0, 1);
  if (result)
  {
    v8 = 0;
    do
    {
      result = kdu_params::get(a2, "Mstage_xforms", v8, 1, v11, 0, 0, 1);
      if (!result)
      {
        break;
      }

      result = kdu_params::get(a2, "Mstage_xforms", v8, 2, &v10[1], 0, 0, 1);
      if (!result)
      {
        break;
      }

      result = kdu_params::get(a2, "Mstage_xforms", v8, 3, v10, 0, 0, 1);
      if (!result)
      {
        break;
      }

      result = kdu_params::get(a2, "Mstage_xforms", v8, 4, &v9, 0, 0, 1);
      if (!result)
      {
        break;
      }

      kdu_params::set(this, "Mstage_xforms", v8, 0, v11[1]);
      kdu_params::set(this, "Mstage_xforms", v8, 1, v11[0]);
      kdu_params::set(this, "Mstage_xforms", v8, 2, v10[1]);
      kdu_params::set(this, "Mstage_xforms", v8, 3, v10[0]);
      kdu_params::set(this, "Mstage_xforms", v8++, 4, v9);
      result = kdu_params::get(a2, "Mstage_xforms", v8, 0, &v11[1], 0, 0, 1);
    }

    while ((result & 1) != 0);
  }

  return result;
}

BOOL mcc_params::check_marker_segment(mcc_params *this, int a2, int a3, unsigned __int8 *a4, int *a5)
{
  result = a2 == 65397 && a3 > 2;
  if (result)
  {
    *a5 = a4[2];
  }

  return result;
}

uint64_t mcc_params::read_marker_segment(mcc_params *this, int a2, int a3, unsigned __int8 *a4, int a5)
{
  v61 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    return 0;
  }

  result = 0;
  if (a2 == 65397 && a3 >= 3)
  {
    if (*(this + 6) != a4[2])
    {
      return 0;
    }

    if (__rev16(*a4))
    {
      goto LABEL_10;
    }

    if (a3 <= 4)
    {
      exception = __cxa_allocate_exception(8uLL);
      *exception = a4 + 3;
      __cxa_throw(exception, MEMORY[0x1E69E53E8], 0);
    }

    v8 = a4 + 5;
    if (__rev16(*(a4 + 3)))
    {
LABEL_10:
      *&v58 = 0;
      *v56 = 0u;
      v57 = 0u;
      kdu_error::kdu_error(v56, "Kakadu Core Error:\n");
      (*(*v56 + 16))(v56, "Encountered MCC (Multi-component transform Component Collection) information which has been split across multiple marker segments.  While this is not illegal, Kakadu does not currently support such massive multi-component transform descriptions.  It is a rare application indeed that would need multiple marker segments.");
      kdu_error::~kdu_error(v56);
    }

    v53 = &a4[a3];
    if (v53 - v8 <= 1)
    {
      v46 = __cxa_allocate_exception(8uLL);
      *v46 = v8;
      __cxa_throw(v46, MEMORY[0x1E69E53E8], 0);
    }

    v10 = *v8;
    v9 = a4 + 7;
    v48 = __rev16(v10);
    if (v48)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      while (1)
      {
        if (v53 - v9 < 1)
        {
          v42 = __cxa_allocate_exception(8uLL);
          *v42 = v9;
          __cxa_throw(v42, MEMORY[0x1E69E53E8], 0);
        }

        v52 = *v9;
        if (v53 - (v9 + 1) <= 1)
        {
          v41 = __cxa_allocate_exception(8uLL);
          *v41 = v9 + 1;
          __cxa_throw(v41, MEMORY[0x1E69E53E8], 0);
        }

        v14 = v9[1];
        v15 = v9 + 3;
        v16 = v9[2] | ((v14 & 0x7F) << 8);
        v49 = v13;
        v51 = v16;
        if (v16)
        {
          v17 = v14;
          v18 = (v14 >> 7) + 1;
          v19 = 0xFFFFFFFFLL;
          v20 = 0xFFFFFFFFLL;
          while (1)
          {
            if (v53 - v15 < v18)
            {
              v39 = __cxa_allocate_exception(8uLL);
              *v39 = v15;
              __cxa_throw(v39, MEMORY[0x1E69E53E8], 0);
            }

            v21 = v20;
            v20 = *v15;
            if (v17 < 0)
            {
              v20 = v15[1] | (v20 << 8);
              if (v18 == 2)
              {
                v15 += 2;
                if ((v21 & 0x80000000) != 0)
                {
                  goto LABEL_28;
                }
              }

              else
              {
                v22 = v15[2];
                v15 += 3;
                v20 = v22 | (v20 << 8);
                if ((v21 & 0x80000000) != 0)
                {
                  goto LABEL_28;
                }
              }
            }

            else
            {
              ++v15;
              if ((v21 & 0x80000000) != 0)
              {
                goto LABEL_28;
              }
            }

            if (v20 != v21 + 1)
            {
              kdu_params::set(this, "Mstage_inputs", v11, 0, v19);
              kdu_params::set(this, "Mstage_inputs", v11++, 1, v21);
LABEL_28:
              v19 = v20;
            }

            if (!--v16)
            {
              kdu_params::set(this, "Mstage_inputs", v11, 0, v19);
              kdu_params::set(this, "Mstage_inputs", v11++, 1, v20);
              v13 = v49;
              break;
            }
          }
        }

        if (v53 - v15 <= 1)
        {
          v43 = __cxa_allocate_exception(8uLL);
          *v43 = v15;
          __cxa_throw(v43, MEMORY[0x1E69E53E8], 0);
        }

        v23 = *v15;
        v24 = v15 + 2;
        v50 = v15[1] | ((v23 & 0x7F) << 8);
        if (v50)
        {
          break;
        }

LABEL_47:
        kdu_params::set(this, "Mstage_collections", v13, 0, v51);
        kdu_params::set(this, "Mstage_collections", v13, 1, v50);
        if (v53 - v24 <= 2)
        {
          v44 = __cxa_allocate_exception(8uLL);
          *v44 = v24;
          __cxa_throw(v44, MEMORY[0x1E69E53E8], 0);
        }

        v32 = *v24;
        v33 = v24[1];
        v9 = v24 + 3;
        v34 = v24[2];
        if (v52 == 3)
        {
          if (v53 - v9 <= 3)
          {
            v45 = __cxa_allocate_exception(8uLL);
            *v45 = v9;
            __cxa_throw(v45, MEMORY[0x1E69E53E8], 0);
          }

          v9 = v24 + 7;
          v35 = bswap32(*(v24 + 3));
          v36 = 63;
        }

        else
        {
          v35 = 0;
          v36 = 1;
        }

        v37 = (v36 & v32);
        if (!v51 || !v50 || (v52 != 3 ? (v38 = v52 > 1) : (v38 = 0), v38 || v37 > 0x20 || v51 != v50 && v52 != 1))
        {
          *&v58 = 0;
          *v56 = 0u;
          v57 = 0u;
          kdu_error::kdu_error(v56, "Kakadu Core Error:\n");
          (*(*v56 + 16))(v56, "Malformed MCC marker segment encountered.  Invalid component collection dimensions, transform type or number of DWT levels.");
          kdu_error::~kdu_error(v56);
        }

        kdu_params::set(this, "Mstage_xforms", v13, 0, v52);
        kdu_params::set(this, "Mstage_xforms", v13, 1, v34);
        kdu_params::set(this, "Mstage_xforms", v13, 2, v33);
        kdu_params::set(this, "Mstage_xforms", v13, 3, v37);
        kdu_params::set(this, "Mstage_xforms", v13++, 4, v35);
        if (v13 == v48)
        {
          goto LABEL_63;
        }
      }

      v25 = v23;
      v26 = (v23 >> 7) + 1;
      v27 = 0xFFFFFFFFLL;
      v28 = v15[1] | ((v23 & 0x7F) << 8);
      v29 = 0xFFFFFFFFLL;
      while (1)
      {
        if (v53 - v24 < v26)
        {
          v40 = __cxa_allocate_exception(8uLL);
          *v40 = v24;
          __cxa_throw(v40, MEMORY[0x1E69E53E8], 0);
        }

        v30 = v29;
        v29 = *v24;
        if (v25 < 0)
        {
          v29 = v24[1] | (v29 << 8);
          if (v26 == 2)
          {
            v24 += 2;
            if ((v30 & 0x80000000) != 0)
            {
              goto LABEL_44;
            }
          }

          else
          {
            v31 = v24[2];
            v24 += 3;
            v29 = v31 | (v29 << 8);
            if ((v30 & 0x80000000) != 0)
            {
              goto LABEL_44;
            }
          }
        }

        else
        {
          ++v24;
          if ((v30 & 0x80000000) != 0)
          {
            goto LABEL_44;
          }
        }

        if (v29 != v30 + 1)
        {
          kdu_params::set(this, "Mstage_outputs", v12, 0, v27);
          kdu_params::set(this, "Mstage_outputs", v12++, 1, v30);
LABEL_44:
          v27 = v29;
        }

        if (!--v28)
        {
          kdu_params::set(this, "Mstage_outputs", v12, 0, v27);
          v13 = v49;
          kdu_params::set(this, "Mstage_outputs", v12++, 1, v29);
          goto LABEL_47;
        }
      }
    }

LABEL_63:
    if (v9 != v53)
    {
      v55 = 0;
      memset(v54, 0, sizeof(v54));
      kdu_error::kdu_error(v54, "Kakadu Core Error:\n");
      (*(*&v54[0] + 16))(v54, "Malformed MCC marker segment encountered. The final ");
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      *v56 = 0u;
      if (BYTE8(v54[0]))
      {
        sprintf(v56, "%x");
      }

      else
      {
        sprintf(v56, "%d");
      }

      (*(*&v54[0] + 16))(v54, v56);
      (*(*&v54[0] + 16))(v54, " bytes were not consumed!");
      kdu_error::~kdu_error(v54);
    }

    return 1;
  }

  return result;
}

void sub_185F6A508(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, uint64_t a23)
{
  if (v24 == 1)
  {
    __cxa_begin_catch(v23);
    a23 = 0;
    a21 = 0u;
    a22 = 0u;
    kdu_error::kdu_error(&a21, "Kakadu Core Error:\n");
    (*(a21 + 16))(&a21, "Malformed MCC marker segment encountered.  Marker segment is too small.");
    kdu_error::~kdu_error(&a21);
  }

  JUMPOUT(0x185F6A490);
}

void sub_185F6A594(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x185F6A490);
}

uint64_t mcc_params::write_marker_segment(mcc_params *this, kdu_output *a2, kdu_params *a3, int a4)
{
  v4 = 0;
  if (!a4 && *(this + 6) <= 255)
  {
    if ((*(this + 5) & 0x80000000) == 0)
    {
      return 0;
    }

    *v51 = 0;
    v8 = 1;
    if (kdu_params::get(this, "Mstage_inputs", 0, 0, &v51[1], 0, 0, 1))
    {
      v9 = 0;
      v10 = 0;
      do
      {
        if (!kdu_params::get(this, "Mstage_inputs", v9, 1, v51, 0, 0, 1))
        {
          break;
        }

        v10 = v10 + v51[0] - v51[1] + 1;
        if (v51[0] > 255 || v51[1] > 255)
        {
          v8 = 2;
        }

        ++v9;
      }

      while ((kdu_params::get(this, "Mstage_inputs", v9, 0, &v51[1], 0, 0, 1) & 1) != 0);
    }

    else
    {
      v10 = 0;
    }

    if (kdu_params::get(this, "Mstage_outputs", 0, 0, &v51[1], 0, 0, 1))
    {
      v12 = 0;
      v13 = 0;
      do
      {
        if (!kdu_params::get(this, "Mstage_outputs", v12, 1, v51, 0, 0, 1))
        {
          break;
        }

        v13 = v13 + v51[0] - v51[1] + 1;
        if (v51[0] > 255 || v51[1] > 255)
        {
          v8 = 2;
        }

        ++v12;
      }

      while ((kdu_params::get(this, "Mstage_outputs", v12, 0, &v51[1], 0, 0, 1) & 1) != 0);
    }

    else
    {
      v13 = 0;
    }

    v4 = (v8 * (v13 + v10) + 11);
    v50 = 0;
    v15 = 0;
    if (kdu_params::get(this, "Mstage_xforms", 0, 0, &v50, 0, 0, 1))
    {
      do
      {
        if (v50 == 3)
        {
          v16 = 12;
        }

        else
        {
          v16 = 8;
        }

        v4 = (v16 + v4);
        ++v15;
      }

      while ((kdu_params::get(this, "Mstage_xforms", v15, 0, &v50, 0, 0, 1) & 1) != 0);
    }

    if (v4 >= 65538)
    {
      v49 = 0;
      *v47 = 0u;
      v48 = 0u;
      kdu_error::kdu_error(v47, "Kakadu Core Error:\n");
      (*(*v47 + 16))(v47, "Unable to write MCC (Multi-component transform Component Collection) marker segment, since the amount of information is too large to fit within a single marker segment.  The codestream syntax for this Part-2 marker segment allows the information to be split across multiple marker segments, but this feature is not yet implemented in Kakadu -- it is a rare application indeed that should need this.");
      kdu_error::~kdu_error(v47);
    }

    if (v15)
    {
      if (a2)
      {
        kdu_output::put(a2, 255);
        kdu_output::put(a2, 117);
        v37 = v4;
        kdu_output::put(a2, (v4 - 2) >> 8);
        kdu_output::put(a2, v4 - 2);
        kdu_output::put(a2, 0);
        kdu_output::put(a2, 0);
        v17 = kdu_output::put(a2, *(this + 24));
        kdu_output::put(a2, 0);
        kdu_output::put(a2, 0);
        kdu_output::put(a2, SBYTE1(v15));
        kdu_output::put(a2, v15);
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v46 = -1;
        v47[0] = 0;
        v21 = v17 + 10;
        v44 = -1;
        v45 = 0;
        v43 = 0;
        v39 = (v8 << 15) + 0x8000;
        v40 = 0;
        *v41 = 0;
        *v42 = 0;
        v38 = v15;
        do
        {
          kdu_params::get(this, "Mstage_collections", v20, 0, &v43, 1, 1, 1);
          kdu_params::get(this, "Mstage_collections", v20, 1, &v42[4], 1, 1, 1);
          kdu_params::get(this, "Mstage_xforms", v20, 0, &v50, 1, 1, 1);
          kdu_params::get(this, "Mstage_xforms", v20, 1, v42, 1, 1, 1);
          kdu_params::get(this, "Mstage_xforms", v20, 2, &v41[4], 1, 1, 1);
          kdu_params::get(this, "Mstage_xforms", v20, 3, v41, 1, 1, 1);
          kdu_params::get(this, "Mstage_xforms", v20, 4, &v40, 1, 1, 1);
          v22 = kdu_output::put(a2, v50);
          v23 = v43;
          kdu_output::put(a2, (v43 + v39) >> 8);
          kdu_output::put(a2, v23);
          v24 = v21 + v22 + 2;
          if (v43 >= 1)
          {
            v25 = 0;
            v26 = v47[0];
            do
            {
              if (v26 > v46)
              {
                kdu_params::get(this, "Mstage_inputs", v19, 0, v47, 1, 1, 1);
                kdu_params::get(this, "Mstage_inputs", v19++, 1, &v46, 1, 1, 1);
              }

              v27 = v47[0];
              if (v8 == 1)
              {
                v28 = kdu_output::put(a2, v47[0]);
              }

              else
              {
                kdu_output::put(a2, SBYTE1(v47[0]));
                kdu_output::put(a2, v27);
                v28 = 2;
              }

              v24 += v28;
              v26 = ++v47[0];
              ++v25;
            }

            while (v25 < v43);
          }

          v29 = v42[4];
          kdu_output::put(a2, (*&v42[4] + v39) >> 8);
          kdu_output::put(a2, v29);
          v30 = v24 + 2;
          if (*&v42[4] >= 1)
          {
            v31 = 0;
            v32 = v45;
            do
            {
              if (v32 > v44)
              {
                kdu_params::get(this, "Mstage_outputs", v18, 0, &v45, 1, 1, 1);
                kdu_params::get(this, "Mstage_outputs", v18++, 1, &v44, 1, 1, 1);
              }

              v33 = v45;
              if (v8 == 1)
              {
                v34 = kdu_output::put(a2, v45);
              }

              else
              {
                kdu_output::put(a2, SBYTE1(v45));
                kdu_output::put(a2, v33);
                v34 = 2;
              }

              v30 += v34;
              v32 = ++v45;
              ++v31;
            }

            while (v31 < *&v42[4]);
          }

          v35 = kdu_output::put(a2, v41[0]) + v30;
          v36 = kdu_output::put(a2, v41[4]);
          v21 = v35 + v36 + kdu_output::put(a2, v42[0]);
          if (v50 == 3)
          {
            v21 += kdu_output::put(a2, v40);
          }

          ++v20;
        }

        while (v20 != v38);
        v4 = v37;
        if (v37 != v21)
        {
          mcc_params::write_marker_segment();
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

void mco_params::mco_params(mco_params *this)
{
  *(this + 8) = 0;
  *(this + 1) = xmmword_186206BB0;
  *(this + 38) = 1;
  *(this + 39) = 0;
  *(this + 6) = this;
  *(this + 7) = 0;
  *(this + 8) = this + 72;
  *(this + 9) = this;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = this;
  *(this + 18) = 1;
  *(this + 104) = 0;
  *(this + 14) = 0;
  *this = &unk_1EF4D2CC8;
  *(this + 1) = "MCO";
}

uint64_t mco_params::copy_with_xforms(mco_params *this, kdu_params *a2, int *a3)
{
  v23 = 0;
  v22 = 0;
  result = kdu_params::get(a2, "Mnum_stages", 0, 0, &v23, 1, 1, 1);
  if (result)
  {
    v20 = 1;
    v21 = 1;
    v7 = kdu_params::access_cluster(this, "SIZ");
    v8 = kdu_params::access_cluster(a2, "SIZ");
    if (v7)
    {
      kdu_params::get(v7, "Scomponents", 0, 0, &v20, 1, 1, 1);
    }

    if (v8)
    {
      kdu_params::get(v8, "Scomponents", 0, 0, &v21, 1, 1, 1);
    }

    if (a3 <= 0 && v20 == v21)
    {
      v9 = 0;
    }

    else
    {
      v10 = kdu_params::access_relation(this, *(this + 4), -1, 0, 0);
      if (!v10)
      {
        mco_params::copy_with_xforms();
      }

      v11 = v10;
      for (i = 1; ; i = (i + 1))
      {
        v18[0] = 0;
        v13 = v11;
        while (*(v13 + 6) != i)
        {
          v13 = *(v13 + 11);
          if (!v13)
          {
            goto LABEL_17;
          }
        }

        if (!kdu_params::get(v13, "Mstage_inputs", 0, 0, v18, 1, 1, 1))
        {
          break;
        }
      }

LABEL_17:
      if (i >= 0x100)
      {
        v19 = 0;
        memset(v18, 0, sizeof(v18));
        kdu_error::kdu_error(v18, "Kakadu Core Error:\n");
        (*(*v18 + 16))(v18, "Unable to modify the existing multi-component transform to work with a reduced number of codestream image components during transcoding.  Cannot create a taylored null transform to interface the components, since all allowed MCC marker segment instance indices have been used up already.");
        kdu_error::~kdu_error(v18);
      }

      kdu_params::set(this, "Mstages", 0, 0, i);
      v14 = kdu_params::access_relation(v11, *(this + 4), -1, i, 0);
      kdu_params::set(v14, "Mstage_inputs", 0, 0, 0);
      kdu_params::set(v14, "Mstage_inputs", 0, 1, (v20 - 1));
      kdu_params::set(v14, "Mstage_outputs", 0, 0, a3);
      kdu_params::set(v14, "Mstage_outputs", 0, 1, (a3 - 1 + v20));
      if (a3 >= 1)
      {
        kdu_params::set(v14, "Mstage_outputs", 1, 0, 0);
        kdu_params::set(v14, "Mstage_outputs", 1, 1, (a3 - 1));
      }

      v15 = v20;
      v16 = (v20 + a3);
      if (v16 < v21)
      {
        kdu_params::set(v14, "Mstage_outputs", 2, 0, v16);
        kdu_params::set(v14, "Mstage_outputs", 2, 1, (v21 - 1));
        v15 = v20;
      }

      kdu_params::set(v14, "Mstage_collections", 0, 0, v15);
      v9 = 1;
      kdu_params::set(v14, "Mstage_collections", 0, 1, v21);
      kdu_params::set(v14, "Mstage_xforms", 0, 0, 1);
      kdu_params::set(v14, "Mstage_xforms", 0, 1, 0);
      kdu_params::set(v14, "Mstage_xforms", 0, 2, 0);
      kdu_params::set(v14, "Mstage_xforms", 0, 3, 0);
      kdu_params::set(v14, "Mstage_xforms", 0, 4, 0);
    }

    result = kdu_params::set(this, "Mnum_stages", 0, 0, (v23 + v9));
    if (v23 >= 1)
    {
      for (j = 0; j < v23; ++j)
      {
        result = kdu_params::get(a2, "Mstages", j, 0, &v22, 1, 1, 1);
        if (!result)
        {
          break;
        }

        result = kdu_params::set(this, "Mstages", v9 + j, 0, v22);
      }
    }
  }

  return result;
}

uint64_t mco_params::finalize(uint64_t this, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = this;
    v9 = 0;
    v3 = kdu_params::access_cluster(this, "SIZ");
    if (v3)
    {
      kdu_params::get(v3, "Mcomponents", 0, 0, &v9, 1, 1, 1);
    }

    v8 = 0;
    this = kdu_params::get(v2, "Mnum_stages", 0, 0, &v8, 1, 1, 1);
    if (this)
    {
      if (!v9)
      {
        v7 = 0;
        v5 = 0u;
        v6 = 0u;
        kdu_error::kdu_error(&v5, "Kakadu Core Error:\n");
        kdu_error::~kdu_error(&v5);
      }
    }

    else if (v9 >= 1)
    {
      v8 = 0;
      this = kdu_params::set(v2, "Mnum_stages", 0, 0, 0);
    }

    v4 = 0;
    if (v8 >= 1)
    {
      this = kdu_params::get(v2, "Mstages", v8 - 1, 0, &v4, 1, 1, 1);
      if ((this & 1) == 0)
      {
        v7 = 0;
        v5 = 0u;
        v6 = 0u;
        kdu_error::kdu_error(&v5, "Kakadu Core Error:\n");
        kdu_error::~kdu_error(&v5);
      }
    }
  }

  return this;
}

BOOL mco_params::read_marker_segment(mco_params *this, unsigned __int16 a2, int a3, unsigned __int8 *a4, int a5)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    if (a3 <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      *exception = a4;
      __cxa_throw(exception, MEMORY[0x1E69E53E8], 0);
    }

    v9 = *a4;
    kdu_params::set(this, "Mnum_stages", 0, 0, *a4);
    v10 = a4 + 1;
    if (v9)
    {
      v11 = 0;
      v12 = a3 - 1;
      do
      {
        if (v12 <= 0)
        {
          v14 = __cxa_allocate_exception(8uLL);
          *v14 = v10;
          __cxa_throw(v14, MEMORY[0x1E69E53E8], 0);
        }

        kdu_params::set(this, "Mstages", v11, 0, *v10++);
        --v12;
        ++v11;
      }

      while (v9 != v11);
    }

    if (v10 != &a4[a3])
    {
      v17 = 0;
      memset(v16, 0, sizeof(v16));
      kdu_error::kdu_error(v16, "Kakadu Core Error:\n");
      (*(*&v16[0] + 16))(v16, "Malformed MCO marker segment encountered. The final ");
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      *v18 = 0u;
      if (BYTE8(v16[0]))
      {
        sprintf(v18, "%x");
      }

      else
      {
        sprintf(v18, "%d");
      }

      (*(*&v16[0] + 16))(v16, v18);
      (*(*&v16[0] + 16))(v16, " bytes were not consumed!");
      kdu_error::~kdu_error(v16);
    }
  }

  return a5 == 0;
}

void sub_185F6B680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, uint64_t a13)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    a13 = 0;
    a11 = 0u;
    a12 = 0u;
    kdu_error::kdu_error(&a11, "Kakadu Core Error:\n");
    (*(a11 + 16))(&a11, "Malformed MCO marker segment encountered. Marker segment is too small.");
    kdu_error::~kdu_error(&a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mco_params::write_marker_segment(mco_params *this, kdu_output *a2, kdu_params *a3)
{
  if (*(this + 6))
  {
    return 0;
  }

  if ((*(this + 5) & 0x80000000) == 0)
  {
    return 0;
  }

  *v18 = 0;
  if (!kdu_params::get(this, "Mnum_stages", 0, 0, v18, 0, 1, 1))
  {
    return 0;
  }

  v6 = *v18;
  if (*v18 >= 256)
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    kdu_error::kdu_error(v16, "Kakadu Core Error:\n");
    kdu_error::~kdu_error(v16);
  }

  if (a3)
  {
    v16[0] = 0;
    v7 = kdu_params::get(a3, "Mnum_stages", 0, 0, v16, 1, 1, 1);
    v8 = *v18;
    if (v7 && v16[0] == v6)
    {
      if (*v18 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0;
        do
        {
          if ((kdu_params::get(this, "Mstages", v9, 0, &v18[4], 1, 1, 1) & 1) == 0)
          {
            mco_params::write_marker_segment();
          }

          v10 = *&v18[4];
          v16[0] = 0;
          v11 = kdu_params::get(a3, "Mstages", v9, 0, v16, 1, 1, 1);
          v8 = *v18;
          if (!v11)
          {
            break;
          }

          if (v16[0] != v10)
          {
            break;
          }

          ++v9;
        }

        while (v9 < *v18);
      }

      v6 = v8;
      if (v9 == v8)
      {
        return 0;
      }
    }

    else
    {
      v6 = *v18;
    }
  }

  v12 = (v6 + 5);
  if (a2)
  {
    kdu_output::put(a2, 255);
    kdu_output::put(a2, 119);
    kdu_output::put(a2, (v6 + 3) >> 8);
    kdu_output::put(a2, v6 + 3);
    v14 = kdu_output::put(a2, v18[0]) + 4;
    if (*v18 >= 1)
    {
      v15 = 0;
      do
      {
        kdu_params::get(this, "Mstages", v15, 0, &v18[4], 1, 1, 1);
        v14 += kdu_output::put(a2, v18[4]);
        ++v15;
      }

      while (v15 < *v18);
    }

    if (v12 != v14)
    {
      mco_params::write_marker_segment();
    }
  }

  return v12;
}

void atk_params::atk_params(atk_params *this)
{
  *(this + 1) = "ATK";
  *(this + 8) = 0;
  *(this + 1) = xmmword_186206BB0;
  *(this + 20) = 1;
  *(this + 42) = 1;
  *(this + 6) = this;
  *(this + 7) = 0;
  *(this + 8) = this + 72;
  *(this + 9) = this;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = this;
  *(this + 104) = 0;
  *(this + 9) = 65537;
  *(this + 14) = 0;
  *this = &unk_1EF4D2D28;
}

uint64_t atk_params::copy_with_xforms(atk_params *this, kdu_params *a2, int a3, int a4, BOOL a5, int a6, int a7)
{
  *v24 = 0;
  result = kdu_params::get(a2, "Kreversible", 0, 0, &v24[1], 1, 1, 1);
  if (result)
  {
    if ((kdu_params::get(a2, "Ksymmetric", 0, 0, v24, 1, 1, 1) & 1) != 0 || ((*(*a2 + 72))(a2, 0), result = kdu_params::get(a2, "Ksymmetric", 0, 0, v24, 1, 1, 1), result))
    {
      kdu_params::set(this, "Kreversible", 0, 0, v24[1]);
      kdu_params::set(this, "Ksymmetric", 0, 0, v24[0]);
      v23 = 0;
      if (kdu_params::get(a2, "Kextension", 0, 0, &v23, 1, 1, 1))
      {
        kdu_params::set(this, "Kextension", 0, 0, v23);
      }

      if (((a6 & 1) != 0 || a7) && !v24[0])
      {
        if (a6 != a7)
        {
          v22 = 0;
          memset(v21, 0, sizeof(v21));
          kdu_error::kdu_error(v21, "Kakadu Core Error:\n");
          (*(*&v21[0] + 16))(v21, "Cannot transpose ATK marker segment information to a new codestream which has flippped geometry unless the transform filters are whole-sample symmetric, or flipping is to be applied in both the vertical and horizontal directions.  The reason for this is that the same transform kernels must be used in both directions, only one of which requires reversal of the lifting coefficients.");
          kdu_error::~kdu_error(v21);
        }

        v12 = 1;
      }

      else
      {
        v12 = 0;
      }

      LODWORD(v21[0]) = 0;
      *v19 = 0;
      *v20 = 0;
      result = kdu_params::get(a2, "Ksteps", 0, 0, &v20[1], 0, 0, 1);
      if (result)
      {
        v13 = 0;
        v14 = 0;
        do
        {
          result = kdu_params::get(a2, "Ksteps", v14, 1, v20, 0, 0, 1);
          if (!result)
          {
            break;
          }

          result = kdu_params::get(a2, "Ksteps", v14, 2, &v19[1], 0, 0, 1);
          if (!result)
          {
            break;
          }

          result = kdu_params::get(a2, "Ksteps", v14, 3, v19, 0, 0, 1);
          if (!result)
          {
            break;
          }

          if (v12)
          {
            v20[0] = (~(2 * v14) & 2) - (v20[0] + v20[1]);
          }

          kdu_params::set(this, "Ksteps", v14, 0, v20[1]);
          kdu_params::set(this, "Ksteps", v14, 1, v20[0]);
          kdu_params::set(this, "Ksteps", v14, 2, v19[1]);
          kdu_params::set(this, "Ksteps", v14, 3, v19[0]);
          v15 = v20[1];
          if (v20[1] >= 1)
          {
            v16 = 0;
            v17 = -1;
            do
            {
              kdu_params::get(a2, "Kcoeffs", v13 + v16, 0, v21, 1, 1, 1);
              if (v12)
              {
                v18 = v13 + v17 + v20[1];
              }

              else
              {
                v18 = v13 + v16;
              }

              kdu_params::set(this, "Kcoeffs", v18, 0, *v21);
              ++v16;
              v15 = v20[1];
              --v17;
            }

            while (v16 < v20[1]);
          }

          ++v14;
          v13 += v15;
          result = kdu_params::get(a2, "Ksteps", v14, 0, &v20[1], 0, 0, 1);
        }

        while ((result & 1) != 0);
      }
    }
  }

  return result;
}

uint64_t atk_params::finalize(atk_params *this)
{
  *v24 = 0;
  *v25 = 0;
  v23 = 0.0;
  v22 = 0;
  if (kdu_params::get(this, "Kreversible", 0, 0, &v22, 1, 1, 1))
  {
    v3 = 1;
    v4 = 0;
    if (kdu_params::get(this, "Ksteps", 0, 0, &v25[1], 1, 1, 1))
    {
      v5 = 0;
      v6 = 1.0;
      v7 = 1.0;
      do
      {
        v8 = v5;
        v9 = v7;
        if (!kdu_params::get(this, "Ksteps", v5, 1, v25, 1, 1, 1) || !kdu_params::get(this, "Ksteps", v5, 2, &v24[1], 1, 1, 1) || (kdu_params::get(this, "Ksteps", v5, 3, v24, 1, 1, 1) & 1) == 0)
        {
          v21 = 0;
          v19 = 0u;
          v20 = 0u;
          kdu_error::kdu_error(&v19, "Kakadu Core Error:\n");
          kdu_error::~kdu_error(&v19);
        }

        if (v24[1] >= 0x19u)
        {
          v21 = 0;
          v19 = 0u;
          v20 = 0u;
          kdu_error::kdu_error(&v19, "Kakadu Core Error:\n");
          kdu_error::~kdu_error(&v19);
        }

        if (!v22 && (v24[1] > 0 || v24[0] >= 1))
        {
          v21 = 0;
          v19 = 0u;
          v20 = 0u;
          kdu_error::kdu_error(&v19, "Kakadu Core Error:\n");
          kdu_error::~kdu_error(&v19);
        }

        v10 = v25[1];
        if ((v25[1] & 1) != 0 || v25[0] + (((v5 & 1) + v25[1] - 1) >> 1))
        {
          v3 = 0;
        }

        if (v25[1] < 1)
        {
          v12 = 0.0;
        }

        else
        {
          v11 = 0;
          v12 = 0.0;
          v13 = -1;
          do
          {
            if ((kdu_params::get(this, "Kcoeffs", v4 + v11, 0, &v23, 1, 1, 1) & 1) == 0)
            {
              v21 = 0;
              v19 = 0u;
              v20 = 0u;
              kdu_error::kdu_error(&v19, "Kakadu Core Error:\n");
              kdu_error::~kdu_error(&v19);
            }

            v14 = v23;
            v10 = v25[1];
            if (v3)
            {
              if (v11 >= v25[1] >> 1)
              {
                v3 = 1;
              }

              else
              {
                LODWORD(v19) = 0;
                v3 = kdu_params::get(this, "Kcoeffs", v4 + v13 + v25[1], 0, &v19, 1, 1, 1) && v23 == *&v19;
                v10 = v25[1];
              }
            }

            else
            {
              v3 = 0;
            }

            v12 = v12 + v14;
            ++v11;
            --v13;
          }

          while (v11 < v10);
        }

        v7 = v6 + v12 * v9;
        v5 = v8 + 1;
        v4 += v10;
        v6 = v9;
      }

      while ((kdu_params::get(this, "Ksteps", v8 + 1, 0, &v25[1], 1, 1, 1) & 1) != 0);
      if (v8)
      {
        v15 = v7;
      }

      else
      {
        v15 = v9;
      }
    }

    else
    {
      v15 = 1.0;
    }

    if (kdu_params::get(this, "Kcoeffs", v4, 0, &v23, 1, 1, 1))
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
      kdu_error::kdu_error(&v19, "Kakadu Core Error:\n");
      kdu_error::~kdu_error(&v19);
    }

    if (v22 && (v15 > 1.001 || v15 < 0.999))
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
      kdu_error::kdu_error(&v19, "Kakadu Core Error:\n");
      kdu_error::~kdu_error(&v19);
    }

    v18 = 0;
    if ((kdu_params::get(this, "Kextension", 0, 0, &v18, 1, 1, 1) & 1) == 0)
    {
      v18 = v3;
      kdu_params::set(this, "Kextension", 0, 0, v3);
    }

    v16 = v18 == 1 && v3;
    v17 = 0;
    result = kdu_params::get(this, "Ksymmetric", 0, 0, &v17, 0, 1, 1);
    if (result)
    {
      if (!(v16 & 1 | !v17))
      {
        v21 = 0;
        v19 = 0u;
        v20 = 0u;
        kdu_error::kdu_error(&v19, "Kakadu Core Error:\n");
        kdu_error::~kdu_error(&v19);
      }
    }

    else
    {
      return kdu_params::set(this, "Ksymmetric", 0, 0, v16);
    }
  }

  else if ((kdu_params::get(this, "Ksteps", 0, 0, &v25[1], 1, 1, 1) & 1) != 0 || (result = kdu_params::get(this, "Kcoeffs", 0, 0, &v23, 1, 1, 1), result))
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    kdu_error::kdu_error(&v19, "Kakadu Core Error:\n");
    kdu_error::~kdu_error(&v19);
  }

  return result;
}

BOOL atk_params::check_marker_segment(atk_params *this, int a2, int a3, unsigned __int8 *a4, unsigned int *a5)
{
  if (a2 != 65401 || a3 < 2)
  {
    return 0;
  }

  v6 = a4[1];
  result = v6 > 1;
  *a5 = v6;
  return result;
}

uint64_t atk_params::read_marker_segment(atk_params *this, int a2, int a3, unsigned __int8 *a4, int a5)
{
  v71 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    return 0;
  }

  result = 0;
  if (a2 == 65401 && a3 >= 2)
  {
    if (*(this + 6) != a4[1])
    {
      return 0;
    }

    v9 = *a4;
    if ((v9 & 8) != 0 && ((v9 >> 6) & 1) == 0)
    {
      *&v68 = 0;
      v66 = 0u;
      v67 = 0u;
      kdu_error::kdu_error(&v66, "Kakadu Core Error:\n");
      (*(v66 + 16))(&v66, "Malformed ATK marker segment encountered.  Transform kernels identified as whole-sample symmetric must also use the symmetric boundary extension method.");
      kdu_error::~kdu_error(&v66);
    }

    v10 = v9 & 3;
    if ((v9 & 0x10) != 0 && v10 >= 2)
    {
      *&v68 = 0;
      v66 = 0u;
      v67 = 0u;
      kdu_error::kdu_error(&v66, "Kakadu Core Error:\n");
      (*(v66 + 16))(&v66, "Cannot process ATK marker segment describing a reversible transform kernel with floating-point coefficient values.");
      kdu_error::~kdu_error(&v66);
    }

    kdu_params::set(this, "Kreversible", 0, 0, (v9 >> 4) & 1);
    kdu_params::set(this, "Ksymmetric", 0, 0, (v9 & 8) != 0);
    kdu_params::set(this, "Kextension", 0, 0, ((v9 >> 6) & 1));
    v11 = &a4[a3];
    v12 = a4 + 2;
    v13 = 1 << v10;
    if ((v9 >> 4))
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    v15 = &v12[v14];
    v63 = v11;
    if (v11 - &v12[v14] <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      *exception = v15;
      __cxa_throw(exception, MEMORY[0x1E69E53E8], 0);
    }

    v18 = *v15;
    v17 = v15 + 1;
    v16 = v18;
    v19 = v18 - 1;
    v20 = !(((v18 - 1) ^ (v9 >> 5)) & 1);
    if (((v18 - 1) ^ (v9 >> 5)))
    {
      v16 = v19;
    }

    v56 = v20;
    if (v16 >= v20)
    {
      v55 = v9 & 3;
      v62 = 0;
      v59 = (v9 & 8) >> 3;
      v60 = 0;
      v21 = v16;
      v22 = v17;
      do
      {
        if ((v9 & 8) == 0)
        {
          if (v63 - v22 <= 0)
          {
            v51 = __cxa_allocate_exception(8uLL);
            *v51 = v22;
            __cxa_throw(v51, MEMORY[0x1E69E53E8], 0);
          }

          v23 = *v22++;
          v60 = v23 - ((2 * v23) & 0x100);
        }

        if ((v9 & 0x10) != 0)
        {
          if (v63 - v22 <= 0)
          {
            v52 = __cxa_allocate_exception(8uLL);
            *v52 = v22;
            __cxa_throw(v52, MEMORY[0x1E69E53E8], 0);
          }

          v24 = v22 + 1;
          v61 = *v22;
          if (v55 == 3)
          {
            __assert_rtn("kdu_read", "kdu_utils.h", 74, "nbytes <= 4");
          }

          if (v63 - v24 < v13)
          {
            v53 = __cxa_allocate_exception(8uLL);
            *v53 = v24;
            __cxa_throw(v53, MEMORY[0x1E69E53E8], 0);
          }

          v25 = v22[1];
          if ((v9 & 3) != 0)
          {
            v26 = v22[2] | (v25 << 8);
            if (v55 == 1)
            {
              v22 += 3;
              v27 = (v26 - ((v25 << 9) & 0x10000u));
            }

            else
            {
              v28 = v22[3] | (v26 << 8);
              v29 = v22[4];
              v22 += 5;
              v27 = (v29 | (v28 << 8));
            }
          }

          else
          {
            v27 = (v25 - ((2 * v25) & 0x100u));
            v22 += 2;
          }
        }

        else
        {
          v61 = 0;
          v27 = 0;
        }

        if (v63 - v22 <= 0)
        {
          v50 = __cxa_allocate_exception(8uLL);
          *v50 = v22;
          __cxa_throw(v50, MEMORY[0x1E69E53E8], 0);
        }

        v30 = v22 + 1;
        v31 = *v22;
        v58 = v30;
        if ((v9 & 8) != 0)
        {
          v31 = (2 * v31);
          v60 = -(((v31 & 0xFFFFFFFE | v21 & 1) - 1) >> 1);
        }

        v32 = v21;
        kdu_params::set(this, "Ksteps", v21, 0, v31);
        kdu_params::set(this, "Ksteps", v32, 1, v60);
        kdu_params::set(this, "Ksteps", v32, 2, v61);
        kdu_params::set(this, "Ksteps", v32, 3, v27);
        v57 = v32;
        v33 = v31 >> v59;
        if (v31 >> v59)
        {
          v34 = 0;
          v35 = v33 + v62;
          v17 = v58;
          while (1)
          {
            if (v13 > 3)
            {
              if (v13 == 4)
              {
                if (v63 - v17 < 4)
                {
                  goto LABEL_81;
                }

                LODWORD(v66) = 0;
                for (i = 3; i != -1; --i)
                {
                  v44 = *v17++;
                  *(&v66 + i) = v44;
                }

                if ((v9 & 0x10) != 0)
                {
                  __assert_rtn("read_marker_segment", "params.cpp", 5564, "!reversible");
                }

                v41 = *&v66;
              }

              else
              {
                if (v13 != 8)
                {
LABEL_82:
                  __assert_rtn("read_marker_segment", "params.cpp", 5570, "0");
                }

                if (v63 - v17 < 8)
                {
LABEL_81:
                  v49 = __cxa_allocate_exception(8uLL);
                  *v49 = v17;
                  __cxa_throw(v49, MEMORY[0x1E69E53E8], 0);
                }

                *&v66 = 0;
                for (j = 7; j != -1; --j)
                {
                  v40 = *v17++;
                  *(&v66 + j) = v40;
                }

                if ((v9 & 0x10) != 0)
                {
                  __assert_rtn("read_marker_segment", "params.cpp", 5568, "!reversible");
                }

                v41 = *&v66;
              }
            }

            else
            {
              if (v13 == 1)
              {
                if (v63 - v17 <= 0)
                {
                  goto LABEL_81;
                }

                v42 = *v17++;
                v38 = v42 - ((2 * v42) & 0x100);
              }

              else
              {
                if (v13 != 2)
                {
                  goto LABEL_82;
                }

                if (v63 - v17 < 2)
                {
                  goto LABEL_81;
                }

                v36 = *v17;
                v37 = v17[1];
                v17 += 2;
                v38 = (v37 | (v36 << 8)) - ((v36 << 9) & 0x10000);
              }

              v41 = v38;
              if ((v9 & 0x10) != 0)
              {
                v41 = v41 / (1 << v61);
              }
            }

            v45 = v41;
            kdu_params::set(this, "Kcoeffs", v35 + ~v34, 0, v41);
            if ((v9 & 8) != 0)
            {
              kdu_params::set(this, "Kcoeffs", v34 + v35, 0, v45);
            }

            if (++v34 == v33)
            {
              goto LABEL_66;
            }
          }
        }

        v17 = v58;
LABEL_66:
        v62 += v33 << v59;
        v16 = v57 - 1;
        v22 = v17;
        v21 = v57 - 1;
      }

      while (v57 > v56);
    }

    else
    {
      v62 = 0;
    }

    if (!v16)
    {
      kdu_params::set(this, "Ksteps", 0, 0, 0);
      kdu_params::set(this, "Ksteps", 0, 1, 0);
      kdu_params::set(this, "Ksteps", 0, 2, 0);
      kdu_params::set(this, "Ksteps", 0, 3, 0);
    }

    if (v17 != v63)
    {
      v65 = 0;
      memset(v64, 0, sizeof(v64));
      kdu_error::kdu_error(v64, "Kakadu Core Error:\n");
      (*(*&v64[0] + 16))(v64, "Malformed ATK marker segment encountered. The final ");
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v66 = 0u;
      if (BYTE8(v64[0]))
      {
        sprintf(&v66, "%x");
      }

      else
      {
        sprintf(&v66, "%d");
      }

      (*(*&v64[0] + 16))(v64, &v66);
      (*(*&v64[0] + 16))(v64, " bytes were not consumed!");
      kdu_error::~kdu_error(v64);
    }

    if (v62 >= 2)
    {
      v46 = v62 - 1;
      v47 = 1;
      do
      {
        LODWORD(v66) = 0;
        LODWORD(v64[0]) = 0;
        kdu_params::get(this, "Kcoeffs", v47 - 1, 0, &v66, 1, 1, 1);
        kdu_params::get(this, "Kcoeffs", v46, 0, v64, 1, 1, 1);
        kdu_params::set(this, "Kcoeffs", v47 - 1, 0, *v64);
        kdu_params::set(this, "Kcoeffs", v46--, 0, *&v66);
      }

      while (v47++ < v46);
    }

    return 1;
  }

  return result;
}

void sub_185F6D150(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x185F6D098);
}

uint64_t atk_params::write_marker_segment(atk_params *this, kdu_output *a2, kdu_params *a3, int a4)
{
  v4 = *(this + 6);
  if (v4 < 2)
  {
    return 0;
  }

  v5 = 0;
  if (!a4 && v4 <= 0xFF)
  {
    if ((*(this + 5) & 0x80000000) == 0)
    {
      return 0;
    }

    *v65 = 0;
    v64 = 0;
    if (!kdu_params::get(this, "Kreversible", 0, 0, &v65[1], 1, 1, 1) || !kdu_params::get(this, "Ksymmetric", 0, 0, v65, 1, 1, 1) || (kdu_params::get(this, "Kextension", 0, 0, &v64, 1, 1, 1) & 1) == 0)
    {
      memset(v63, 0, sizeof(v63));
      kdu_error::kdu_error(v63, "Kakadu Core Error:\n");
      (*(v63[0] + 16))(v63, "Unable to write ATK marker segment yet! Some info missing.");
      kdu_error::~kdu_error(v63);
    }

    *v61 = 0;
    *v62 = 0;
    *&v60 = 0.0;
    if (a3)
    {
      v10 = v65[1];
      LOBYTE(v63[0]) = 0;
      if (kdu_params::get(a3, "Kreversible", 0, 0, v63, 1, 1, 1))
      {
        if (LOBYTE(v63[0]) == v10)
        {
          v11 = v65[0];
          LOBYTE(v63[0]) = 0;
          if (kdu_params::get(a3, "Ksymmetric", 0, 0, v63, 1, 1, 1))
          {
            if (LOBYTE(v63[0]) == v11)
            {
              v12 = v64;
              LODWORD(v63[0]) = 0;
              if (kdu_params::get(a3, "Kextension", 0, 0, v63, 1, 1, 1))
              {
                if (LODWORD(v63[0]) == v12)
                {
                  if (kdu_params::get(this, "Ksteps", 0, 0, &v62[4], 1, 1, 1))
                  {
                    v13 = 0;
                    v14 = 0;
                    while (kdu_params::get(this, "Ksteps", v13, 1, v62, 1, 1, 1) && kdu_params::get(this, "Ksteps", v13, 2, &v61[4], 1, 1, 1) && kdu_params::get(this, "Ksteps", v13, 3, v61, 1, 1, 1))
                    {
                      v15 = *&v62[4];
                      LODWORD(v63[0]) = 0;
                      if (!kdu_params::get(a3, "Ksteps", v13, 0, v63, 1, 1, 1))
                      {
                        goto LABEL_44;
                      }

                      if (LODWORD(v63[0]) != v15)
                      {
                        goto LABEL_44;
                      }

                      v16 = *v62;
                      LODWORD(v63[0]) = 0;
                      if (!kdu_params::get(a3, "Ksteps", v13, 1, v63, 1, 1, 1))
                      {
                        goto LABEL_44;
                      }

                      if (LODWORD(v63[0]) != v16)
                      {
                        goto LABEL_44;
                      }

                      v17 = *&v61[4];
                      LODWORD(v63[0]) = 0;
                      if (!kdu_params::get(a3, "Ksteps", v13, 2, v63, 1, 1, 1))
                      {
                        goto LABEL_44;
                      }

                      if (LODWORD(v63[0]) != v17)
                      {
                        goto LABEL_44;
                      }

                      v18 = *v61;
                      LODWORD(v63[0]) = 0;
                      if (!kdu_params::get(a3, "Ksteps", v13, 3, v63, 1, 1, 1) || LODWORD(v63[0]) != v18)
                      {
                        goto LABEL_44;
                      }

                      v19 = *&v62[4];
                      if (*&v62[4] < 1)
                      {
                        v20 = 0;
                      }

                      else
                      {
                        v20 = 0;
                        do
                        {
                          kdu_params::get(this, "Kcoeffs", v14 + v20, 0, &v60, 1, 1, 1);
                          v21 = *&v60;
                          LODWORD(v63[0]) = 0;
                          v22 = kdu_params::get(a3, "Kcoeffs", v14 + v20, 0, v63, 1, 1, 1);
                          v19 = *&v62[4];
                          if (v22)
                          {
                            v23 = *v63 == v21;
                          }

                          else
                          {
                            v23 = 0;
                          }

                          if (!v23)
                          {
                            break;
                          }

                          ++v20;
                        }

                        while (v20 < *&v62[4]);
                      }

                      if (v20 != v19)
                      {
                        goto LABEL_44;
                      }

                      ++v13;
                      v14 += v19;
                      v5 = 0;
                      if (!kdu_params::get(this, "Ksteps", v13, 0, &v62[4], 1, 1, 1))
                      {
                        return v5;
                      }
                    }
                  }

                  return 0;
                }
              }
            }
          }
        }
      }
    }

LABEL_44:
    v24 = 0;
    v25 = 0;
    if (kdu_params::get(this, "Ksteps", 0, 0, &v62[4], 1, 1, 1))
    {
      v25 = 0;
      v24 = 0;
      do
      {
        if (!kdu_params::get(this, "Ksteps", v24, 1, v62, 1, 1, 1))
        {
          break;
        }

        if (!kdu_params::get(this, "Ksteps", v24, 2, &v61[4], 1, 1, 1))
        {
          break;
        }

        if (!kdu_params::get(this, "Ksteps", v24, 3, v61, 1, 1, 1))
        {
          break;
        }

        ++v24;
        v25 += *&v62[4];
      }

      while ((kdu_params::get(this, "Ksteps", v24, 0, &v62[4], 1, 1, 1) & 1) != 0);
    }

    if (v65[1])
    {
      v26 = 7;
    }

    else
    {
      v26 = 11;
    }

    v27 = 2 * v24;
    if (v65[1])
    {
      v28 = 1;
    }

    else
    {
      v28 = 2;
    }

    if (v65[1])
    {
      v27 = 5 * v24;
    }

    v29 = (v25 >> v65[0] << v28) + v27;
    if (v65[0])
    {
      v30 = v24;
    }

    else
    {
      v30 = 0;
    }

    v5 = (v26 - v30 + v29);
    if (a2)
    {
      if (v65[0])
      {
        v31 = *(this + 6) + 2048;
      }

      else
      {
        v31 = *(this + 6);
      }

      if (v65[1])
      {
        LOWORD(v31) = v31 + 4096;
      }

      v32 = v31 + ((v24 & 1) << 13);
      if (v65[1])
      {
        v33 = 256;
      }

      else
      {
        v33 = 512;
      }

      if (v64 == 1)
      {
        v34 = v32 + 0x4000;
      }

      else
      {
        v34 = v32;
      }

      v35 = v34 + v33;
      kdu_output::put(a2, 255);
      kdu_output::put(a2, 121);
      kdu_output::put(a2, (v5 - 2) >> 8);
      kdu_output::put(a2, v5 - 2);
      kdu_output::put(a2, SHIBYTE(v35));
      kdu_output::put(a2, v34);
      v59 = v5;
      if (v65[1])
      {
        v36 = 6;
      }

      else
      {
        if (kdu_params::get(this, "Ksteps", 0, 0, &v62[4], 1, 1, 1))
        {
          v37 = 0;
          v38 = 0;
          v39 = 1.0;
          v40 = 1.0;
          do
          {
            v41 = v38;
            v42 = v40;
            v43 = *&v62[4];
            if (*&v62[4] < 1)
            {
              v45 = 0.0;
            }

            else
            {
              v44 = 0;
              v45 = 0.0;
              do
              {
                kdu_params::get(this, "Kcoeffs", v37 + v44, 0, &v60, 1, 1, 1);
                v45 = v45 + *&v60;
                ++v44;
                v43 = *&v62[4];
              }

              while (v44 < *&v62[4]);
            }

            v40 = v39 + v45 * v42;
            v38 = v41 + 1;
            v37 += v43;
            v39 = v42;
          }

          while ((kdu_params::get(this, "Ksteps", v41 + 1, 0, &v62[4], 1, 1, 1) & 1) != 0);
          if (v41)
          {
            v46 = v40;
          }

          else
          {
            v46 = v42;
          }

          *&v47 = v46;
          v48 = v47;
        }

        else
        {
          v48 = 1065353216;
        }

        kdu_output::put(a2, v48);
        v36 = 10;
      }

      v49 = kdu_output::put(a2, v24) + v36;
      if (v24 >= 1)
      {
        do
        {
          kdu_params::get(this, "Ksteps", v24 - 1, 0, &v62[4], 1, 1, 1);
          kdu_params::get(this, "Ksteps", v24 - 1, 1, v62, 1, 1, 1);
          kdu_params::get(this, "Ksteps", v24 - 1, 2, &v61[4], 1, 1, 1);
          kdu_params::get(this, "Ksteps", v24 - 1, 3, v61, 1, 1, 1);
          if (!v65[0])
          {
            v49 += kdu_output::put(a2, v62[0]);
          }

          if (v65[1])
          {
            v50 = kdu_output::put(a2, v61[4]);
            v51 = v61[0];
            kdu_output::put(a2, v61[1]);
            kdu_output::put(a2, v51);
            v49 += v50 + 2;
          }

          v52 = *&v62[4];
          if (v65[0])
          {
            v52 = *&v62[4] >> 1;
            *&v62[4] >>= 1;
          }

          v53 = v25 - v52;
          v49 += kdu_output::put(a2, v52);
          v54 = *&v62[4];
          if (*&v62[4] >= 1)
          {
            v55 = 0;
            do
            {
              kdu_params::get(this, "Kcoeffs", v53 + v55, 0, &v60, 1, 1, 1);
              if (v65[1])
              {
                v56 = vcvtms_s32_f32((*&v60 * (1 << v61[4])) + 0.5);
                kdu_output::put(a2, SHIBYTE(v56));
                kdu_output::put(a2, v56);
                v57 = 2;
              }

              else
              {
                kdu_output::put(a2, v60);
                v57 = 4;
              }

              v49 += v57;
              ++v55;
              v54 = *&v62[4];
            }

            while (v55 < *&v62[4]);
          }

          if (!v65[0])
          {
            v54 = 0;
          }

          v25 = v53 - v54;
        }

        while (v24-- > 1);
      }

      v23 = v59 == v49;
      v5 = v59;
      if (!v23)
      {
        atk_params::write_marker_segment();
      }
    }
  }

  return v5;
}

uint64_t kdu_params::compare(kdu_params *this, const char *a2, int a3, int a4, char a5)
{
  v7 = 0;
  LODWORD(result) = kdu_params::get(this, a2, a3, a4, &v7, 1, 1, 1);
  if ((a5 & 1) == v7)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

void cod_params::cod_params(cod_params *this)
{
  *(this + 1) = "COD";
  *(this + 8) = 0;
  *(this + 1) = xmmword_186206BB0;
  *(this + 20) = 0;
  *(this + 42) = 0;
  *(this + 6) = this;
  *(this + 7) = 0;
  *(this + 8) = this + 72;
  *(this + 9) = this;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = this;
  *(this + 104) = 0;
  *(this + 9) = 16842753;
  *(this + 14) = 0;
  *this = &unk_1EF4D2D88;
  kdu_params::add_dependency(this, "QCD");
}

uint64_t cod_params::copy_with_xforms(cod_params *this, kdu_params *a2, int a3, int a4, int a5, int a6, int a7)
{
  if ((*(this + 5) & 0x80000000) != 0)
  {
    v36[0] = 0;
    LODWORD(v27[0]) = 0;
    v34[0] = 0;
    v33[0] = 0;
    *&v36[4] = 0;
    v31[4] = 0;
    v31[0] = 0;
    if (kdu_params::get(a2, "Cycc", 0, 0, v36, 0, 1, 1))
    {
      if (a3)
      {
        v14 = 0;
        v36[0] = 0;
      }

      else
      {
        v14 = v36[0];
      }

      kdu_params::set(this, "Cycc", 0, 0, v14);
    }

    if (kdu_params::get(a2, "Clayers", 0, 0, v27, 0, 1, 1))
    {
      kdu_params::set(this, "Clayers", 0, 0, LODWORD(v27[0]));
    }

    if (kdu_params::get(a2, "Cuse_sop", 0, 0, v34, 0, 1, 1))
    {
      kdu_params::set(this, "Cuse_sop", 0, 0, v34[0]);
    }

    if (kdu_params::get(a2, "Cuse_eph", 0, 0, v33, 0, 1, 1))
    {
      kdu_params::set(this, "Cuse_eph", 0, 0, v33[0]);
    }

    if (kdu_params::get(a2, "Corder", 0, 0, &v36[4], 0, 1, 1))
    {
      kdu_params::set(this, "Corder", 0, 0, *&v36[4]);
    }

    if (kdu_params::get(a2, "Calign_blk_last", 0, a5, v31, 0, 1, 1) && kdu_params::get(a2, "Calign_blk_last", 0, a5 ^ 1u, &v31[4], 0, 1, 1))
    {
      if (a7)
      {
        v31[4] ^= 1u;
      }

      v15 = v31[0];
      if (a6)
      {
        v15 = !v31[0];
        v31[0] = !v31[0];
      }

      kdu_params::set(this, "Calign_blk_last", 0, 0, v15);
      kdu_params::set(this, "Calign_blk_last", 0, 1, v31[4]);
    }
  }

  *v36 = 0;
  v35 = 0;
  *v33 = 0;
  *v34 = 0;
  v32 = 0;
  *v31 = 0;
  v30 = 0;
  if (kdu_params::get(a2, "Clevels", 0, 0, &v36[4], 0, 1, 1))
  {
    v16 = *&v36[4];
    v17 = (*&v36[4] - a4);
    *&v36[4] -= a4;
    if (v16 - a4 < 0)
    {
      v29 = 0;
      *v27 = 0u;
      v28 = 0u;
      kdu_error::kdu_error(v27, "Kakadu Core Error:\n");
      (*(v27[0] + 2))(v27, "Attempting to discard too many resolution levels!  Cannot discard more resolution levels than there are DWT levels.");
      kdu_error::~kdu_error(v27);
    }

    kdu_params::set(this, "Clevels", 0, 0, v17);
  }

  if (kdu_params::get(a2, "Cdfs", 0, 0, v36, 0, 1, 1))
  {
    kdu_params::set(this, "Cdfs", 0, 0, *v36);
  }

  LODWORD(v27[0]) = 0;
  if (kdu_params::get(a2, "Cdecomp", 0, 0, v27, 0, 0, 1))
  {
    v18 = 0;
    do
    {
      v19 = v18;
      if (a5)
      {
        LODWORD(v27[0]) = cod_params::transpose_decomp(LODWORD(v27[0]));
      }

      if (v18 >= a4)
      {
        kdu_params::set(this, "Cdecomp", v18 - a4, 0, LODWORD(v27[0]));
      }

      ++v18;
    }

    while ((kdu_params::get(a2, "Cdecomp", v19 + 1, 0, v27, 0, 0, 1) & 1) != 0);
    if (v19 < a4)
    {
      kdu_params::set(this, "Cdecomp", 0, 0, LODWORD(v27[0]));
    }
  }

  if (kdu_params::get(a2, "Creversible", 0, 0, &v35, 0, 1, 1))
  {
    kdu_params::set(this, "Creversible", 0, 0, v35);
  }

  if (kdu_params::get(a2, "Ckernels", 0, 0, v34, 0, 1, 1))
  {
    kdu_params::set(this, "Ckernels", 0, 0, *v34);
  }

  if (kdu_params::get(a2, "Catk", 0, 0, v33, 0, 1, 1))
  {
    kdu_params::set(this, "Catk", 0, 0, *v33);
  }

  if (kdu_params::get(a2, "Cuse_precincts", 0, 0, &v32, 0, 1, 1))
  {
    kdu_params::set(this, "Cuse_precincts", 0, 0, v32);
  }

  if (kdu_params::get(a2, "Cblk", 0, a5, v31, 0, 1, 1) && kdu_params::get(a2, "Cblk", 0, a5 ^ 1u, &v31[4], 0, 1, 1))
  {
    kdu_params::set(this, "Cblk", 0, 0, *v31);
    kdu_params::set(this, "Cblk", 0, 1, *&v31[4]);
  }

  if (kdu_params::get(a2, "Cmodes", 0, 0, &v30, 0, 1, 1))
  {
    kdu_params::set(this, "Cmodes", 0, 0, v30);
  }

  *v26 = 0;
  if (kdu_params::get(a2, "Cprecincts", a4, a5, v26, 0, 1, 1))
  {
    if (kdu_params::get(a2, "Cprecincts", a4, a5 ^ 1u, &v26[1], 0, 1, 1))
    {
      kdu_params::set(this, "Cprecincts", 0, 0, v26[0]);
      kdu_params::set(this, "Cprecincts", 0, 1, v26[1]);
      v20 = a4 + 1;
      if (kdu_params::get(a2, "Cprecincts", v20, a5, v26, 0, 0, 1))
      {
        v21 = 1;
        do
        {
          if (!kdu_params::get(a2, "Cprecincts", v20, a5 ^ 1u, &v26[1], 0, 0, 1))
          {
            break;
          }

          kdu_params::set(this, "Cprecincts", v21, 0, v26[0]);
          kdu_params::set(this, "Cprecincts", v21++, 1, v26[1]);
          ++v20;
        }

        while ((kdu_params::get(a2, "Cprecincts", v20, a5, v26, 0, 0, 1) & 1) != 0);
      }
    }
  }

  v25 = 0.0;
  if (kdu_params::get(a2, "Cweight", 0, 0, &v25, 0, 1, 1))
  {
    kdu_params::set(this, "Cweight", 0, 0, v25);
  }

  if (kdu_params::get(a2, "Clev_weights", 0, 0, &v25, 0, 0, 1))
  {
    v22 = 0;
    do
    {
      kdu_params::set(this, "Clev_weights", v22++, 0, v25);
    }

    while ((kdu_params::get(a2, "Clev_weights", v22, 0, &v25, 0, 0, 1) & 1) != 0);
  }

  result = kdu_params::get(a2, "Cband_weights", 0, 0, &v25, 0, 0, 1);
  if (result)
  {
    v24 = 0;
    do
    {
      kdu_params::set(this, "Cband_weights", v24++, 0, v25);
      result = kdu_params::get(a2, "Cband_weights", v24, 0, &v25, 0, 0, 1);
    }

    while ((result & 1) != 0);
  }

  return result;
}

uint64_t cod_params::transpose_decomp(cod_params *this)
{
  v1 = this & 0xFFC00003 | (((this >> 2) & 0x3FF) << 12) | (this >> 10) & 0xFFC;
  if ((~this & 3) != 0)
  {
    v1 = this;
  }

  if ((~v1 & 0xC) == 0)
  {
    v1 = v1 & 0xFFFFFC3F | (v1 >> 6 << 8) | (v1 >> 2) & 0xC0;
  }

  if ((~v1 & 0x3000) == 0)
  {
    v1 = v1 & 0xFFF0FFFF | ((HIWORD(v1) & 3) << 18) | (v1 >> 2) & 0x30000;
  }

  if ((~v1 & 0xC00000) == 0)
  {
    v1 = v1 & 0xC3FFFFFF | (((v1 >> 26) & 3) << 28) | (v1 >> 2) & 0xC000000;
  }

  return (2 * v1) & 0xAAAAAAAA | (v1 >> 1) & 0x55555555;
}

uint64_t cod_params::write_marker_segment(cod_params *this, kdu_output *a2, kdu_params *a3, int a4)
{
  v138 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    return 0;
  }

  *v129 = 0;
  *v128 = 0;
  v127 = 0;
  *v126 = 0;
  *v125 = 0;
  v124 = 0;
  *v122 = 0;
  *v123 = 0;
  *v120 = 0;
  *v121 = 0;
  v119 = 0;
  if (!kdu_params::get(this, "Cycc", 0, 0, &v129[1], 1, 1, 1) || !kdu_params::get(this, "Clayers", 0, 0, &v126[4], 1, 1, 1) || !kdu_params::get(this, "Cuse_sop", 0, 0, v129, 1, 1, 1) || !kdu_params::get(this, "Cuse_eph", 0, 0, &v128[1], 1, 1, 1) || !kdu_params::get(this, "Corder", 0, 0, v126, 1, 1, 1) || !kdu_params::get(this, "Calign_blk_last", 0, 0, &v127, 1, 1, 1) || !kdu_params::get(this, "Calign_blk_last", 0, 1, v128, 1, 1, 1) || !kdu_params::get(this, "Clevels", 0, 0, &v124, 1, 1, 1) || !kdu_params::get(this, "Cdfs", 0, 0, v123, 1, 1, 1) || !kdu_params::get(this, "Cads", 0, 0, &v123[1], 1, 1, 1) || !kdu_params::get(this, "Creversible", 0, 0, &v125[1], 1, 1, 1) || !kdu_params::get(this, "Ckernels", 0, 0, &v122[1], 1, 1, 1) || !kdu_params::get(this, "Catk", 0, 0, v122, 1, 1, 1) || !kdu_params::get(this, "Cblk", 0, 0, &v121[1], 1, 1, 1) || !kdu_params::get(this, "Cblk", 0, 1, v121, 1, 1, 1) || !kdu_params::get(this, "Cmodes", 0, 0, &v120[4], 1, 1, 1) || (kdu_params::get(this, "Cuse_precincts", 0, 0, v125, 1, 1, 1) & 1) == 0)
  {
    *&v135 = 0;
    v134 = 0u;
    *v133 = 0u;
    kdu_error::kdu_error(v133, "Kakadu Core Error:\n");
    kdu_error::~kdu_error(v133);
  }

  if (a3)
  {
    v7 = v129[1];
    v133[0] = 0;
    v8 = kdu_params::get(a3, "Cycc", 0, 0, v133, 1, 1, 1);
    v9 = v133[0] == v7 ? v8 : 0;
    if (v9 == 1)
    {
      v10 = *&v126[4];
      *v133 = 0;
      v11 = kdu_params::get(a3, "Clayers", 0, 0, v133, 1, 1, 1);
      v12 = *v133 == v10 ? v11 : 0;
      if (v12 == 1)
      {
        v13 = v129[0];
        v133[0] = 0;
        v14 = kdu_params::get(a3, "Cuse_sop", 0, 0, v133, 1, 1, 1);
        v15 = v133[0] == v13 ? v14 : 0;
        if (v15 == 1)
        {
          v16 = v128[1];
          v133[0] = 0;
          v17 = kdu_params::get(a3, "Cuse_eph", 0, 0, v133, 1, 1, 1);
          v18 = v133[0] == v16 ? v17 : 0;
          if (v18 == 1)
          {
            v19 = *v126;
            *v133 = 0;
            v20 = kdu_params::get(a3, "Corder", 0, 0, v133, 1, 1, 1);
            v21 = *v133 == v19 ? v20 : 0;
            if (v21 == 1 && kdu_params::compare(a3, "Calign_blk_last", 0, 0, v127) && kdu_params::compare(a3, "Calign_blk_last", 0, 1, v128[0]))
            {
              v22 = v124;
              *v133 = 0;
              v23 = kdu_params::get(a3, "Clevels", 0, 0, v133, 1, 1, 1);
              v24 = *v133 == v22 ? v23 : 0;
              if (v24 == 1)
              {
                v25 = v123[1];
                *v133 = 0;
                v26 = kdu_params::get(a3, "Cads", 0, 0, v133, 1, 1, 1);
                v27 = *v133 == v25 ? v26 : 0;
                if (v27 == 1)
                {
                  v28 = v123[0];
                  *v133 = 0;
                  v29 = kdu_params::get(a3, "Cdfs", 0, 0, v133, 1, 1, 1);
                  v30 = *v133 == v28 ? v29 : 0;
                  if (v30 == 1 && (!v123[1] || (*(a3 + 4) & 0x80000000) == 0) && (!v123[0] || (*(this + 4) & 0x80000000) == 0))
                  {
                    if (kdu_params::compare(a3, "Creversible", 0, 0, v125[1]))
                    {
                      v31 = v122[1];
                      *v133 = 0;
                      v32 = kdu_params::get(a3, "Ckernels", 0, 0, v133, 1, 1, 1);
                      v33 = *v133 == v31 ? v32 : 0;
                      if (v33 == 1)
                      {
                        v34 = v122[0];
                        *v133 = 0;
                        v35 = kdu_params::get(a3, "Catk", 0, 0, v133, 1, 1, 1);
                        v36 = *v133 == v34 ? v35 : 0;
                        if (v36 == 1)
                        {
                          v37 = v121[1];
                          *v133 = 0;
                          v38 = kdu_params::get(a3, "Cblk", 0, 0, v133, 1, 1, 1);
                          v39 = *v133 == v37 ? v38 : 0;
                          if (v39 == 1)
                          {
                            v40 = v121[0];
                            *v133 = 0;
                            v41 = kdu_params::get(a3, "Cblk", 0, 1, v133, 1, 1, 1);
                            v42 = *v133 == v40 ? v41 : 0;
                            if (v42 == 1)
                            {
                              v43 = *&v120[4];
                              *v133 = 0;
                              v44 = kdu_params::get(a3, "Cmodes", 0, 0, v133, 1, 1, 1);
                              v45 = *v133 == v43 ? v44 : 0;
                              if (v45 == 1 && kdu_params::compare(a3, "Cuse_precincts", 0, 0, v125[0]))
                              {
                                if (!v125[0])
                                {
                                  return 0;
                                }

                                v46 = v124;
                                if (v124 < 0)
                                {
                                  v54 = 0;
                                }

                                else
                                {
                                  v47 = 0;
                                  while (kdu_params::get(this, "Cprecincts", v47, 0, &v119, 1, 1, 1) && kdu_params::get(this, "Cprecincts", v47, 1, v120, 1, 1, 1))
                                  {
                                    v48 = v119;
                                    *v133 = 0;
                                    v49 = kdu_params::get(a3, "Cprecincts", v47, 0, v133, 1, 1, 1);
                                    v50 = *v133 == v48 ? v49 : 0;
                                    if (v50 != 1)
                                    {
                                      break;
                                    }

                                    v51 = *v120;
                                    *v133 = 0;
                                    v52 = kdu_params::get(a3, "Cprecincts", v47, 1, v133, 1, 1, 1);
                                    v53 = *v133 == v51 ? v52 : 0;
                                    if (v53 != 1)
                                    {
                                      break;
                                    }

                                    v54 = v47 + 1;
                                    v55 = v47++ < v124;
                                    if (!v55)
                                    {
                                      goto LABEL_98;
                                    }
                                  }

                                  v54 = v47;
LABEL_98:
                                  v46 = v124;
                                }

                                if (v54 > v46)
                                {
                                  return 0;
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
        }
      }
    }
  }

  if (v123[1] && (*(this + 4) & 0x80000000) == 0)
  {
    if (!a3 || ((v56 = v124, *v133 = 0, v57 = kdu_params::get(a3, "Clevels", 0, 0, v133, 1, 1, 1), *v133 == v56) ? (v58 = v57) : (v58 = 0), (v58 & 1) == 0))
    {
      *&v135 = 0;
      v134 = 0u;
      *v133 = 0u;
      kdu_error::kdu_error(v133, "Kakadu Core Error:\n");
      kdu_error::~kdu_error(v133);
    }
  }

  if (v123[0] && (*(this + 4) & 0x80000000) != 0 && (*(this + 5) & 0x80000000) == 0)
  {
    if (!a3 || ((v59 = v124, *v133 = 0, v60 = kdu_params::get(a3, "Clevels", 0, 0, v133, 1, 1, 1), *v133 == v59) ? (v61 = v60) : (v61 = 0), (v61 & 1) == 0))
    {
      *&v135 = 0;
      v134 = 0u;
      *v133 = 0u;
      kdu_error::kdu_error(v133, "Kakadu Core Error:\n");
      kdu_error::~kdu_error(v133);
    }
  }

  v62 = kdu_params::access_cluster(this, "SIZ");
  if (!v62)
  {
    cod_params::write_marker_segment();
  }

  v63 = v62;
  if (*&v126[4] >= 0x10000u)
  {
    v132 = 0;
    *v130 = 0u;
    v131 = 0u;
    kdu_error::kdu_error(v130, "Kakadu Core Error:\n");
    (*(*v130 + 16))(v130, "Illegal number of quality layers, ");
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    *v133 = 0u;
    if (LOBYTE(v130[2]))
    {
      sprintf(v133, "%x");
    }

    else
    {
      sprintf(v133, "%d");
    }

    (*(*v130 + 16))(v130, v133);
    (*(*v130 + 16))(v130, ".");
    kdu_error::~kdu_error(v130);
  }

  if (v124 >= 0x21)
  {
    v132 = 0;
    *v130 = 0u;
    v131 = 0u;
    kdu_error::kdu_error(v130, "Kakadu Core Error:\n");
    (*(*v130 + 16))(v130, "Illegal number of DWT levels, ");
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    *v133 = 0u;
    if (LOBYTE(v130[2]))
    {
      sprintf(v133, "%x");
    }

    else
    {
      sprintf(v133, "%d");
    }

    (*(*v130 + 16))(v130, v133);
    (*(*v130 + 16))(v130, ". Legal range is 0 to 32!");
    kdu_error::~kdu_error(v130);
  }

  v115 = *(this + 8);
  if ((*(this + 5) & 0x80000000) != 0)
  {
    if (v129[1])
    {
      v65 = kdu_params::access_relation(this, *(this + 4), 0, 0, 1);
      *v130 = v65;
      *&v130[2] = kdu_params::access_relation(this, *(this + 4), 1, 0, 1);
      *&v131 = kdu_params::access_relation(this, *(this + 4), 2, 0, 1);
      v118 = 0;
      kdu_params::get(v65, "Creversible", 0, 0, &v118, 1, 1, 1);
      v117 = 0;
      kdu_params::get(v63, "Sprecision", 0, 0, &v117, 1, 1, 1);
      v66 = 1;
      do
      {
        v67 = *&v130[2 * v66];
        if (!v67)
        {
          break;
        }

        v68 = v118;
        v133[0] = 0;
        v69 = kdu_params::get(v67, "Creversible", 0, 0, v133, 1, 1, 1);
        if (v133[0] == v68)
        {
          v70 = v69;
        }

        else
        {
          v70 = 0;
        }

        if (v70 == 1)
        {
          v71 = v117;
          *v133 = 0;
          v72 = kdu_params::get(v63, "Sprecision", v66, 0, v133, 1, 1, 1);
          v73 = *v133 == v71 ? v72 : 0;
          if (v73)
          {
            continue;
          }
        }

        *&v135 = 0;
        v134 = 0u;
        *v133 = 0u;
        kdu_error::kdu_error(v133, "Kakadu Core Error:\n");
        (*(*v133 + 16))(v133, "You cannot use a colour transform unless the first 3 image components have identical bit-depths and are either all reversible or all irreversible.");
        kdu_error::~kdu_error(v133);
        ++v66;
      }

      while (v66 != 3);
    }

    v64 = 14;
  }

  else if (*(this + 8) < 257)
  {
    v64 = 11;
  }

  else
  {
    v64 = 12;
  }

  v4 = v64 + v125[0] + v125[0] * v124;
  if (a2)
  {
    if ((*(this + 4) & 0x80000000) == 0)
    {
      v117 = 2;
      kdu_params::get(v63, "Sprofile", 0, 0, &v117, 1, 1, 1);
      if (!v117)
      {
        v132 = 0;
        *v130 = 0u;
        v131 = 0u;
        kdu_warning::kdu_warning(v130, "Kakadu Core Warning:\n");
        (*(*v130 + 16))(v130, "Profile violation detected (code-stream is technically illegal).  COD/COC marker segments may only appear in the main header of a Profile-0 code-stream.  You should set Sprofile to 1 or 2.  Problem detected in tile ");
        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        *v133 = 0u;
        if (LOBYTE(v130[2]))
        {
          sprintf(v133, "%x");
        }

        else
        {
          sprintf(v133, "%d");
        }

        (*(*v130 + 16))(v130, v133);
        (*(*v130 + 16))(v130, ".");
        kdu_warning::~kdu_warning(v130);
      }
    }

    if (v122[0])
    {
      if ((v122[0] - 256) <= 0xFFFFFF01)
      {
        *&v135 = 0;
        v134 = 0u;
        *v133 = 0u;
        kdu_error::kdu_error(v133, "Kakadu Core Error:\n");
        (*(*v133 + 16))(v133, "Illegal ATK instance index found when preparing to generate COD/COC marker segment.  Legal values are in the range 2 to 255.");
        kdu_error::~kdu_error(v133);
      }
    }

    else if (v122[1] != v125[1])
    {
      *&v135 = 0;
      v134 = 0u;
      *v133 = 0u;
      kdu_error::kdu_error(v133, "Kakadu Core Error:\n");
      kdu_error::~kdu_error(v133);
    }

    v74 = v125[0];
    if ((*(this + 5) & 0x80000000) != 0)
    {
      v77 = v129[0];
      v78 = v128[1];
      v79 = v128[0];
      v80 = v127;
      kdu_output::put(a2, 255);
      kdu_output::put(a2, 82);
      kdu_output::put(a2, (v4 - 2) >> 8);
      kdu_output::put(a2, v4 - 2);
      v81 = kdu_output::put(a2, ((2 * v77) | (4 * v78) | (8 * v79) | (16 * v80)) | v74);
      v82 = kdu_output::put(a2, v126[0]);
      v83 = v126[4];
      kdu_output::put(a2, v126[5]);
      kdu_output::put(a2, v83);
      v84 = v81 + v82 + kdu_output::put(a2, v129[1]) + 6;
    }

    else
    {
      kdu_output::put(a2, 255);
      kdu_output::put(a2, 83);
      kdu_output::put(a2, (v4 - 2) >> 8);
      kdu_output::put(a2, v4 - 2);
      v75 = *(this + 5);
      if (v115 >= 257)
      {
        kdu_output::put(a2, SBYTE1(v75));
        kdu_output::put(a2, v75);
        v76 = 6;
      }

      else
      {
        v76 = kdu_output::put(a2, v75) + 4;
      }

      v84 = kdu_output::put(a2, v74) + v76;
    }

    v85 = -1;
    do
    {
      v86 = v85 + 1;
      v87 = 1 << (v85 + 1);
      if (v85 == 30)
      {
        break;
      }

      ++v85;
    }

    while (v87 < v121[0]);
    v88 = -1;
    do
    {
      v89 = v88 + 1;
      v90 = 1 << (v88 + 1);
      if (v88 == 30)
      {
        break;
      }

      ++v88;
    }

    while (v90 < v121[1]);
    if (v87 == v121[0])
    {
      v91 = v86;
    }

    else
    {
      v91 = 0;
    }

    if (v90 == v121[1])
    {
      v92 = v89;
    }

    else
    {
      v92 = 0;
    }

    v93 = v91 - 2;
    if (v91 < 2 || ((v94 = v92 + v91, v92 >= 2) ? (v95 = v94 >= 0xD) : (v95 = 1), v95))
    {
      *&v135 = 0;
      v134 = 0u;
      *v133 = 0u;
      kdu_error::kdu_error(v133, "Kakadu Core Error:\n");
      (*(*v133 + 16))(v133, "Maximum code-block dimensions must be no less than 4 and the maximum code-block area must not exceed 4096 samples!");
      kdu_error::~kdu_error(v133);
    }

    if ((*(this + 4) & 0x80000000) != 0)
    {
      v96 = v123[0];
      if (!v123[0] || (*(this + 5) & 0x80000000) != 0)
      {
        goto LABEL_190;
      }
    }

    else
    {
      v96 = v123[1];
      if (!v123[1])
      {
LABEL_190:
        v97 = v124;
        goto LABEL_191;
      }
    }

    v97 = v96 | 0x80;
LABEL_191:
    v98 = kdu_output::put(a2, v97);
    v99 = kdu_output::put(a2, v93);
    v100 = kdu_output::put(a2, v92 - 2);
    v101 = kdu_output::put(a2, v120[4]);
    v102 = v122[0];
    if (!v122[0])
    {
      v102 = v122[1];
    }

    v103 = v98 + v84 + v99 + v100 + v101 + kdu_output::put(a2, v102);
    if (v125[0])
    {
      v104 = v124;
      if ((v124 & 0x80000000) == 0)
      {
        v105 = 0;
        do
        {
          v130[0] = 0;
          v117 = 0;
          if (!kdu_params::get(this, "Cprecincts", v104 - v105, 0, &v117, 1, 1, 1) || (kdu_params::get(this, "Cprecincts", v124 - v105, 1, v130, 1, 1, 1) & 1) == 0)
          {
            *&v135 = 0;
            v134 = 0u;
            *v133 = 0u;
            kdu_error::kdu_error(v133, "Kakadu Core Error:\n");
            (*(*v133 + 16))(v133, "No precinct dimensions supplied for COD/COC!");
            kdu_error::~kdu_error(v133);
          }

          v106 = -1;
          do
          {
            v107 = v106 + 1;
            v108 = 1 << (v106 + 1);
            if (v106 == 30)
            {
              break;
            }

            ++v106;
          }

          while (v108 < v130[0]);
          if (v108 == v130[0])
          {
            v109 = v107;
          }

          else
          {
            v109 = 0;
          }

          v130[0] = v109;
          v110 = -1;
          do
          {
            v111 = v110 + 1;
            v112 = 1 << (v110 + 1);
            if (v110 == 30)
            {
              break;
            }

            ++v110;
          }

          while (v112 < v117);
          if (v112 == v117)
          {
            v113 = v111;
          }

          else
          {
            v113 = 0;
          }

          v117 = v113;
          if (v109 > 0xF || v113 >= 0x10)
          {
            *&v135 = 0;
            v134 = 0u;
            *v133 = 0u;
            kdu_error::kdu_error(v133, "Kakadu Core Error:\n");
            (*(*v133 + 16))(v133, "Precinct dimensions may not exceed 2^15!");
            kdu_error::~kdu_error(v133);
          }

          v103 += kdu_output::put(a2, v109 + 16 * v113);
          v104 = v124;
          v55 = v105++ < v124;
        }

        while (v55);
      }
    }

    if (v4 != v103)
    {
      cod_params::write_marker_segment();
    }
  }

  return v4;
}

uint64_t cod_params::check_marker_segment(cod_params *this, int a2, int a3, unsigned __int8 *a4, int *a5)
{
  if (a2 == 65362)
  {
    v5 = -1;
    goto LABEL_3;
  }

  result = 0;
  if (a2 == 65363 && a3 >= 2)
  {
    v8 = *a4;
    *a5 = v8;
    if (*(this + 8) < 257)
    {
      return 1;
    }

    v5 = a4[1] | (v8 << 8);
LABEL_3:
    *a5 = v5;
    return 1;
  }

  return result;
}

uint64_t cod_params::read_marker_segment(cod_params *this, int a2, int a3, unsigned __int8 *a4, int a5)
{
  v47 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    return 0;
  }

  v9 = &a4[a3];
  v10 = *(this + 5);
  if (v10 < 0)
  {
    if (a2 != 65362)
    {
      return 0;
    }

    if (a3 <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      *exception = a4;
      __cxa_throw(exception, MEMORY[0x1E69E53E8], 0);
    }

    v16 = *a4;
    if (v16 >= 0x20)
    {
      *&v44 = 0;
      *v42 = 0u;
      v43 = 0u;
      kdu_error::kdu_error(v42, "Kakadu Core Error:\n");
      (*(*v42 + 16))(v42, "Malformed COD marker segment encountered. Invalid Scod value!");
      kdu_error::~kdu_error(v42);
    }

    v13 = v16 & 1;
    kdu_params::set(this, "Cuse_precincts", 0, 0, v16 & 1);
    kdu_params::set(this, "Cuse_sop", 0, 0, (v16 >> 1) & 1);
    kdu_params::set(this, "Cuse_eph", 0, 0, (v16 >> 2) & 1);
    kdu_params::set(this, "Calign_blk_last", 0, 1, (v16 >> 3) & 1);
    kdu_params::set(this, "Calign_blk_last", 0, 0, (v16 >> 4) & 1);
    if (a3 == 1)
    {
      v34 = __cxa_allocate_exception(8uLL);
      *v34 = a4 + 1;
      __cxa_throw(v34, MEMORY[0x1E69E53E8], 0);
    }

    kdu_params::set(this, "Corder", 0, 0, a4[1]);
    if (a3 <= 3)
    {
      v35 = __cxa_allocate_exception(8uLL);
      *v35 = a4 + 2;
      __cxa_throw(v35, MEMORY[0x1E69E53E8], 0);
    }

    kdu_params::set(this, "Clayers", 0, 0, __rev16(*(a4 + 1)));
    if (a3 == 4)
    {
      v36 = __cxa_allocate_exception(8uLL);
      *v36 = a4 + 4;
      __cxa_throw(v36, MEMORY[0x1E69E53E8], 0);
    }

    v14 = a4 + 5;
    kdu_params::set(this, "Cycc", 0, 0, a4[4]);
  }

  else
  {
    if (a2 != 65363)
    {
      return 0;
    }

    v12 = a4 + 1;
    v11 = *a4;
    if (*(this + 8) >= 257)
    {
      v12 = a4 + 2;
      v11 = a4[1] | (v11 << 8);
    }

    if (v11 != v10)
    {
      return 0;
    }

    if (v9 - v12 <= 0)
    {
      v37 = __cxa_allocate_exception(8uLL);
      *v37 = v12;
      __cxa_throw(v37, MEMORY[0x1E69E53E8], 0);
    }

    v15 = *v12;
    v14 = v12 + 1;
    v13 = v15;
    if (v15 >= 2)
    {
      *&v44 = 0;
      *v42 = 0u;
      v43 = 0u;
      kdu_error::kdu_error(v42, "Kakadu Core Error:\n");
      (*(*v42 + 16))(v42, "Malformed COC marker segment. Invalid Scoc value!");
      kdu_error::~kdu_error(v42);
    }

    kdu_params::set(this, "Cuse_precincts", 0, 0, v13 & 1);
  }

  if ((*(this + 4) & 0x80000000) == 0)
  {
    v17 = kdu_params::access_cluster(this, "SIZ");
    if (!v17)
    {
      cod_params::read_marker_segment();
    }

    v41 = 2;
    kdu_params::get(v17, "Sprofile", 0, 0, &v41, 1, 1, 1);
    if (!v41)
    {
      v40 = 0;
      v38 = 0u;
      v39 = 0u;
      kdu_warning::kdu_warning(&v38, "Kakadu Core Warning:\n");
      (*(v38 + 16))(&v38, "Profile violation detected (code-stream is technically illegal).  COD/COC marker segments may only appear in the main header of a Profile-0 code-stream.  You should set Sprofile to 1 or 2.  Problem detected in tile ");
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      *v42 = 0u;
      if (BYTE8(v38))
      {
        sprintf(v42, "%x");
      }

      else
      {
        sprintf(v42, "%d");
      }

      (*(v38 + 16))(&v38, v42);
      (*(v38 + 16))(&v38, ".");
      kdu_warning::~kdu_warning(&v38);
    }
  }

  v41 = 0;
  if (v9 - v14 < 1)
  {
LABEL_58:
    v31 = __cxa_allocate_exception(8uLL);
    *v31 = v14;
    __cxa_throw(v31, MEMORY[0x1E69E53E8], 0);
  }

  v18 = *v14;
  v19 = *v14;
  v41 = *v14;
  if (v18 < 0)
  {
    v20 = (v19 & 0x7F);
    if ((*(this + 4) & 0x80000000) != 0)
    {
      kdu_params::set(this, "Cdfs", 0, 0, v20);
      v20 = 0;
    }

    kdu_params::set(this, "Cads", 0, 0, v20);
    if ((kdu_params::get(this, "Clevels", 0, 0, &v41, 1, 1, 1) & 1) == 0)
    {
      *&v44 = 0;
      *v42 = 0u;
      v43 = 0u;
      kdu_error::kdu_error(v42, "Kakadu Core Error:\n");
      (*(*v42 + 16))(v42, "Corrupt JP2 file: no levels ");
      kdu_error::~kdu_error(v42);
    }
  }

  else
  {
    kdu_params::set(this, "Cads", 0, 0, 0);
    if ((*(this + 4) & 0x80000000) != 0)
    {
      kdu_params::set(this, "Cdfs", 0, 0, 0);
    }

    kdu_params::set(this, "Clevels", 0, 0, v41);
  }

  if (v9 - (v14 + 1) < 1)
  {
    ++v14;
    goto LABEL_58;
  }

  kdu_params::set(this, "Cblk", 0, 1, (4 << v14[1]));
  v21 = v14 + 2;
  if (v9 - (v14 + 2) < 1 || (kdu_params::set(this, "Cblk", 0, 0, (4 << v14[2])), v21 = v14 + 3, v9 - (v14 + 3) <= 0))
  {
    v14 = v21;
    goto LABEL_58;
  }

  kdu_params::set(this, "Cmodes", 0, 0, v14[3]);
  if (v9 - (v14 + 4) <= 0)
  {
    v32 = __cxa_allocate_exception(8uLL);
    *v32 = v14 + 4;
    __cxa_throw(v32, MEMORY[0x1E69E53E8], 0);
  }

  v22 = v14[4];
  if (v22 < 2)
  {
    kdu_params::set(this, "Catk", 0, 0, 0);
    kdu_params::set(this, "Creversible", 0, 0, v22 == 1);
    v23 = v22 == 1;
  }

  else
  {
    kdu_params::set(this, "Catk", 0, 0, v14[4]);
    v23 = 0xFFFFFFFFLL;
  }

  kdu_params::set(this, "Ckernels", 0, 0, v23);
  v24 = v14 + 5;
  v25 = v41;
  if ((v13 & (v41 >= 0)) == 1)
  {
    v26 = 0;
    v27 = (&a4[a3] - v14 - 5);
    v28 = -1;
    do
    {
      if (v27 <= 0)
      {
        v30 = __cxa_allocate_exception(8uLL);
        *v30 = v24;
        __cxa_throw(v30, MEMORY[0x1E69E53E8], 0);
      }

      v29 = *v24++;
      kdu_params::set(this, "Cprecincts", v25 + v26, 0, (1 << (v29 >> 4)));
      kdu_params::set(this, "Cprecincts", v26 + v41, 1, (1 << (v29 & 0xF)));
      v25 = v41;
      ++v28;
      --v26;
      --v27;
    }

    while (v28 < v41);
  }

  if (v24 != v9)
  {
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    kdu_error::kdu_error(&v38, "Kakadu Core Error:\n");
    (*(v38 + 16))(&v38, "Malformed COD/COC marker segment encountered. The final ");
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    *v42 = 0u;
    if (BYTE8(v38))
    {
      sprintf(v42, "%x");
    }

    else
    {
      sprintf(v42, "%d");
    }

    (*(v38 + 16))(&v38, v42);
    (*(v38 + 16))(&v38, " bytes were not consumed!");
    kdu_error::~kdu_error(&v38);
  }

  return 1;
}

void sub_185F7091C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, uint64_t a17)
{
  if (v17 == 1)
  {
    __cxa_begin_catch(v18);
    a13 = 0;
    a11 = 0u;
    a12 = 0u;
    kdu_error::kdu_error(&a11, "Kakadu Core Error:\n");
    (*(a11 + 16))(&a11, "Malformed COD/COC marker segment encountered. Marker segment is too small.");
    kdu_error::~kdu_error(&a11);
  }

  _Unwind_Resume(v18);
}

uint64_t cod_params::finalize(cod_params *this, int a2)
{
  v66 = *MEMORY[0x1E69E9840];
  *v59 = 0;
  *v60 = 0;
  v58 = 0;
  if ((a2 & 1) == 0)
  {
    if (kdu_params::get(this, "Clayers", 0, 0, &v60[1], 1, 1, 1))
    {
      if (v60[1] > 0x4000)
      {
        v57 = 0;
        *v55 = 0u;
        v56 = 0u;
        kdu_error::kdu_error(v55, "Kakadu Core Error:\n");
        (*(*v55 + 16))(v55, "Illegal number of quality layers, ");
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        *v61 = 0u;
        if (LOBYTE(v55[2]))
        {
          sprintf(v61, "%x");
        }

        else
        {
          sprintf(v61, "%d");
        }

        (*(*v55 + 16))(v55, v61);
        (*(*v55 + 16))(v55, ", detected by coding parameter sub-system; legal code-streams may have no more than 16384 quality layers.");
        kdu_error::~kdu_error(v55);
      }
    }

    else
    {
      kdu_params::set(this, "Clayers", 0, 0, 1);
    }

    if ((kdu_params::get(this, "Cuse_sop", 0, 0, &v60[1], 1, 1, 1) & 1) == 0)
    {
      kdu_params::set(this, "Cuse_sop", 0, 0, 0);
    }

    if ((kdu_params::get(this, "Cuse_eph", 0, 0, &v60[1], 1, 1, 1) & 1) == 0)
    {
      kdu_params::set(this, "Cuse_eph", 0, 0, 0);
    }

    if ((kdu_params::get(this, "Corder", 0, 0, &v60[1], 1, 1, 1) & 1) == 0)
    {
      kdu_params::set(this, "Corder", 0, 0, 0);
    }

    if ((kdu_params::get(this, "Calign_blk_last", 0, 0, &v60[1], 1, 1, 1) & 1) == 0)
    {
      if (kdu_params::get(this, "Calign_blk_last", 0, 1, &v60[1], 1, 1, 1))
      {
        cod_params::finalize();
      }

      kdu_params::set(this, "Calign_blk_last", 0, 0, 0);
      kdu_params::set(this, "Calign_blk_last", 0, 1, 0);
    }

    if (kdu_params::get(this, "Clevels", 0, 0, &v60[1], 1, 1, 1))
    {
      if (v60[1] >= 33)
      {
        v57 = 0;
        *v55 = 0u;
        v56 = 0u;
        kdu_error::kdu_error(v55, "Kakadu Core Error:\n");
        (*(*v55 + 16))(v55, "Illegal number of DWT levels, ");
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        *v61 = 0u;
        if (LOBYTE(v55[2]))
        {
          sprintf(v61, "%x");
        }

        else
        {
          sprintf(v61, "%d");
        }

        (*(*v55 + 16))(v55, v61);
        (*(*v55 + 16))(v55, ", detected by coding parameter sub-system; legal code-streams may have no more than 32 DWT levels in any given tile-component.");
        kdu_error::~kdu_error(v55);
      }
    }

    else
    {
      kdu_params::set(this, "Clevels", 0, 0, 5);
    }

    if (kdu_params::get(this, "Cdecomp", 0, 0, v59, 0, 0, 1))
    {
      v5 = 0;
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = (~v59[0] & 3) != 0;
        v9 = v59[0] > 3u;
        v10 = kdu_params::get(this, "Cdecomp", v7, 0, v59, 0, 0, 1);
        v6 |= v8;
        v5 |= v9;
        ++v7;
      }

      while ((v10 & 1) != 0);
      if (v6)
      {
        if ((kdu_params::get(this, "Cdfs", 0, 0, &v59[1], 0, 1, 1) & 1) == 0)
        {
          suitable_dfs_idx = cod_params::find_suitable_dfs_idx(this);
          v59[1] = suitable_dfs_idx;
          kdu_params::set(this, "Cdfs", 0, 0, suitable_dfs_idx);
        }

        if ((v5 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v59[1] = 0;
        kdu_params::set(this, "Cdfs", 0, 0, 0);
        if ((v5 & 1) == 0)
        {
LABEL_34:
          suitable_ads_idx = 0;
LABEL_37:
          v60[0] = suitable_ads_idx;
          kdu_params::set(this, "Cads", 0, 0, suitable_ads_idx);
          goto LABEL_38;
        }
      }

      if (kdu_params::get(this, "Cads", 0, 0, v60, 0, 1, 1))
      {
        goto LABEL_38;
      }

      suitable_ads_idx = cod_params::find_suitable_ads_idx(this);
      goto LABEL_37;
    }
  }

LABEL_38:
  if ((kdu_params::get(this, "Cads", 0, 0, v60, 1, 1, 1) & 1) == 0)
  {
    v60[0] = 0;
  }

  if (kdu_params::get(this, "Cdfs", 0, 0, &v59[1], 1, 1, 1))
  {
    v13 = v59[1] != 0;
  }

  else
  {
    v13 = 0;
    v59[1] = 0;
  }

  v14 = v60[0];
  if ((v60[0] != 0 || v13) && a2)
  {
    if (v60[0] < 1)
    {
      v16 = 0;
    }

    else
    {
      v15 = kdu_params::access_cluster(this, "ADS");
      if (!v15 || (v16 = kdu_params::access_relation(v15, *(this + 4), -1, v14, 1)) == 0)
      {
        *&v63 = 0;
        *v61 = 0u;
        v62 = 0u;
        kdu_error::kdu_error(v61, "Kakadu Core Error:\n");
        (*(*v61 + 16))(v61, "ADS table index encountered while finalizing COD/COD marker segment information does not refer to accessible ADS (Arbitrary Decomposition Styles) information.");
        kdu_error::~kdu_error(v61);
      }
    }

    v17 = v59[1];
    if (v59[1] < 1)
    {
      v19 = 0;
    }

    else
    {
      v18 = kdu_params::access_cluster(this, "DFS");
      if (!v18 || (v19 = kdu_params::access_relation(v18, -1, -1, v17, 1)) == 0)
      {
        *&v63 = 0;
        *v61 = 0u;
        v62 = 0u;
        kdu_error::kdu_error(v61, "Kakadu Core Error:\n");
        (*(*v61 + 16))(v61, "DFS table index encountered while finalizing COD/COD marker segment information does not refer to accessible DFS (Downsampling Factor Styles) information.");
        kdu_error::~kdu_error(v61);
      }
    }

    if ((*(this + 5) & 0x80000000) != 0)
    {
      if (v16)
      {
        v32 = *(this + 4);
        if ((v32 & 0x80000000) == 0)
        {
          v33 = *(this + 8);
          if (v33 < 1)
          {
            v34 = 0;
          }

          else
          {
            v34 = 0;
            while (kdu_params::access_unique(this, v32, v34, 0))
            {
              if (v33 == ++v34)
              {
                goto LABEL_182;
              }
            }
          }

          if (v34 == v33)
          {
LABEL_182:
            v16 = 0;
            v19 = 0;
            v59[1] = 0;
            v60[0] = 0;
          }
        }
      }
    }

    if (v16 | v19)
    {
      cod_params::derive_decomposition_structure(this, v19, v16);
    }
  }

  if ((kdu_params::get(this, "Cdecomp", 0, 0, v59, 1, 1, 1) & 1) == 0)
  {
    v59[0] = 3;
    kdu_params::set(this, "Cdecomp", 0, 0, 3);
  }

  if ((a2 & 1) == 0)
  {
    if ((kdu_params::get(this, "Cads", 0, 0, v60, 1, 1, 1) & 1) == 0)
    {
      v60[0] = 0;
      kdu_params::set(this, "Cads", 0, 0, 0);
    }

    if ((kdu_params::get(this, "Cdfs", 0, 0, &v59[1], 1, 1, 1) & 1) == 0)
    {
      v59[1] = 0;
      kdu_params::set(this, "Cdfs", 0, 0, 0);
    }
  }

  if (v59[1] >= 1)
  {
    cod_params::validate_dfs_data(this, v59[1]);
  }

  if ((*(this + 4) & 0x80000000) == 0 && v60[0] >= 1)
  {
    cod_params::validate_ads_data(this, v60[0]);
  }

  if ((a2 & 1) == 0)
  {
    v20 = *(this + 4);
    if ((*(this + 5) & 0x80000000) != 0 && v20 < 0 && v59[1] >= 1 && *(this + 8) >= 1)
    {
      v35 = 0;
      do
      {
        kdu_params::access_relation(this, -1, v35++, 0, 0);
      }

      while (v35 < *(this + 8));
      v20 = *(this + 4);
    }

    if (v20 < 0 && v60[0] >= 1 && *(this + 7) >= 1)
    {
      v21 = 0;
      do
      {
        kdu_params::access_relation(this, v21++, *(this + 5), 0, 0);
      }

      while (v21 < *(this + 7));
    }
  }

  v54 = 1;
  v52 = 0;
  v53 = 0;
  if ((kdu_params::get(this, "Catk", 0, 0, &v52, 1, 1, 1) & 1) == 0)
  {
    v52 = 0;
    kdu_params::set(this, "Catk", 0, 0, 0);
  }

  v22 = kdu_params::get(this, "Catk", 0, 0, &v52, 0, 1, 1);
  if (v52)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = kdu_params::get(this, "Ckernels", 0, 0, &v53, 0, 1, 1);
  if (v23)
  {
    if (v53 == -1)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    if ((v25 & 1) == 0)
    {
      v53 = -1;
      kdu_params::set(this, "Ckernels", 0, 0, 0xFFFFFFFFLL);
    }

    goto LABEL_126;
  }

  if (v53 == -1)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  if (v26 == 1)
  {
    v27 = kdu_params::get(this, "Catk", 0, 0, &v52, 0, 1, 1);
    if (v52)
    {
      v28 = 0;
    }

    else
    {
      v28 = v27;
    }

    if ((v28 & 1) == 0)
    {
      v52 = 0;
      kdu_params::set(this, "Catk", 0, 0, 0);
    }

    if (v53)
    {
      if (v53 != 1)
      {
        cod_params::finalize();
      }

      if (!kdu_params::get(this, "Creversible", 0, 0, &v54, 0, 1, 1) || !v54)
      {
        v54 = 1;
        kdu_params::set(this, "Creversible", 0, 0, 1);
      }
    }

    else if (!kdu_params::get(this, "Creversible", 0, 0, &v54, 0, 1, 1) || v54)
    {
      v54 = 0;
      kdu_params::set(this, "Creversible", 0, 0, 0);
    }

    goto LABEL_126;
  }

  if (!kdu_params::get(this, "Creversible", 0, 0, &v54, 0, 1, 1))
  {
    goto LABEL_126;
  }

  v29 = kdu_params::get(this, "Catk", 0, 0, &v52, 1, 1, 1);
  v30 = v52;
  if (v52)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0;
  }

  if ((v31 & 1) == 0)
  {
    if ((kdu_params::get(this, "Ckernels", 0, 0, &v53, 1, 1, 1) & 1) == 0 || v53 != v54)
    {
      v53 = v54;
      kdu_params::set(this, "Ckernels", 0, 0, v54);
    }

LABEL_126:
    v30 = v52;
    if (!v52)
    {
      goto LABEL_139;
    }
  }

  v49[4] = 0;
  v36 = kdu_params::access_cluster(this, "ATK");
  if (!v36 || (v37 = kdu_params::access_relation(v36, *(this + 4), -1, v30, 1)) == 0 || (kdu_params::get(v37, "Kreversible", 0, 0, &v49[4], 1, 1, 1) & 1) == 0)
  {
    v57 = 0;
    *v55 = 0u;
    v56 = 0u;
    kdu_error::kdu_error(v55, "Kakadu Core Error:\n");
    (*(*v55 + 16))(v55, " ");
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    *v61 = 0u;
    if (LOBYTE(v55[2]))
    {
      sprintf(v61, "%x");
    }

    else
    {
      sprintf(v61, "%d");
    }

    (*(*v55 + 16))(v55, v61);
    kdu_error::~kdu_error(v55);
  }

  v38 = kdu_params::get(this, "Creversible", 0, 0, &v54, 0, 1, 1);
  if (v49[4] == v54)
  {
    v39 = v38;
  }

  else
  {
    v39 = 0;
  }

  if ((v39 & 1) == 0)
  {
    v54 = v49[4];
    kdu_params::set(this, "Creversible", 0, 0, v49[4]);
  }

LABEL_139:
  if (((kdu_params::get(this, "Creversible", 0, 0, &v54, 1, 1, 1) | a2) & 1) == 0)
  {
    v54 = 0;
    kdu_params::set(this, "Creversible", 0, 0, 0);
  }

  result = kdu_params::get(this, "Ckernels", 0, 0, &v53, 1, 1, 1);
  if (((result | a2) & 1) == 0)
  {
    v53 = 0;
    result = kdu_params::set(this, "Ckernels", 0, 0, 0);
  }

  if (v52)
  {
    if ((v52 - 256) <= 0xFFFFFF01)
    {
      *&v63 = 0;
      *v61 = 0u;
      v62 = 0u;
      kdu_error::kdu_error(v61, "Kakadu Core Error:\n");
      (*(*v61 + 16))(v61, "Illegal ATK instance index found when finalizing a COD/COC marker segment.  Legal values are in the range 2 to 255.");
      kdu_error::~kdu_error(v61);
    }
  }

  else if (v53 != v54)
  {
    *&v63 = 0;
    *v61 = 0u;
    v62 = 0u;
    kdu_error::kdu_error(v61, "Kakadu Core Error:\n");
    kdu_error::~kdu_error(v61);
  }

  if ((a2 & 1) == 0)
  {
    if ((kdu_params::get(this, "Cblk", 0, 0, &v60[1], 1, 1, 1) & 1) == 0)
    {
      if (kdu_params::get(this, "Cblk", 0, 1, &v60[1], 1, 1, 1))
      {
        cod_params::finalize();
      }

      kdu_params::set(this, "Cblk", 0, 0, 0x40);
      kdu_params::set(this, "Cblk", 0, 1, 0x40);
    }

    if ((kdu_params::get(this, "Cmodes", 0, 0, &v60[1], 1, 1, 1) & 1) == 0)
    {
      kdu_params::set(this, "Cmodes", 0, 0, 0);
    }

    v51 = 0;
    if ((kdu_params::get(this, "Cycc", 0, 0, &v51, 1, 1, 1) & 1) == 0)
    {
      if ((*(this + 5) & 0x80000000) == 0)
      {
        cod_params::finalize();
      }

      v41 = *(this + 8);
      v51 = 0;
      v42 = kdu_params::access_cluster(this, "SIZ");
      *v61 = 0;
      kdu_params::get(v42, "Mcomponents", 0, 0, v61, 1, 1, 1);
      if (v41 >= 3 && !*v61)
      {
        v55[0] = 0;
        v50 = 0;
        *v49 = 0;
        if (!v42)
        {
          cod_params::finalize();
        }

        v43 = 0;
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v47 = 0;
        while (1)
        {
          v48 = kdu_params::access_relation(this, *(this + 4), v43, 0, 1);
          if (!kdu_params::get(v48, "Creversible", 0, 0, &v50, 1, 1, 1) || !kdu_params::get(v42, "Sprecision", v43, 0, v55, 1, 1, 1) || !kdu_params::get(v42, "Ssampling", v43, 0, v49, 1, 1, 1) || (kdu_params::get(v42, "Ssampling", v43, 1, &v49[4], 1, 1, 1) & 1) == 0)
          {
            cod_params::finalize();
          }

          if (v43 && (v46 != v50 || v55[0] != v47 || *&v49[4] != v45 || *v49 != v44))
          {
            break;
          }

          ++v43;
          v44 = *v49;
          v45 = *&v49[4];
          v46 = v50;
          v47 = v55[0];
          if (v43 == 3)
          {
            v51 = 1;
            break;
          }
        }
      }

      kdu_params::set(this, "Cycc", 0, 0, v51);
    }

    if (v51 && *(this + 8) <= 2)
    {
      kdu_params::set(this, "Cycc", 0, 0, 0);
    }

    if (kdu_params::get(this, "Cprecincts", 0, 0, &v60[1], 0, 0, 1))
    {
      kdu_params::set(this, "Cuse_precincts", 0, 0, 1);
    }

    result = kdu_params::get(this, "Cuse_precincts", 0, 0, &v58, 1, 1, 1);
    if ((result & 1) == 0)
    {
      return kdu_params::set(this, "Cuse_precincts", 0, 0, 0);
    }
  }

  return result;
}

uint64_t cod_params::find_suitable_dfs_idx(cod_params *this)
{
  v19 = 0;
  v2 = *(this + 5);
  if ((*(this + 4) & 0x80000000) == 0)
  {
    v3 = kdu_params::access_relation(this, -1, v2, 0, 0);
    kdu_params::get(v3, "Cdfs", 0, 0, &v19, 1, 1, 1);
    v4 = v19;
    if (!v19)
    {
      v18 = 0;
      *v16 = 0u;
      v17 = 0u;
      kdu_error::kdu_error(v16, "Kakadu Core Error:\n");
      kdu_error::~kdu_error(v16);
    }

    return v4;
  }

  if ((v2 & 0x80000000) == 0)
  {
    v5 = 0;
    v6 = -1;
    while (1)
    {
      v7 = kdu_params::access_unique(this, -1, v6, 0);
      if (v7)
      {
        v8 = v7;
        if (kdu_params::get(v7, "Cdfs", 0, 0, &v19, 1, 1, 1))
        {
          v9 = v19;
          if (v19)
          {
            v10 = 0;
            v15 = 3;
            v16[0] = 3;
            do
            {
              v11 = kdu_params::get(this, "Cdecomp", v10, 0, v16, 0, 0, 1);
              v12 = kdu_params::get(v8, "Cdecomp", v10, 0, &v15, 0, 0, 1);
              if (((v15 ^ LOBYTE(v16[0])) & 3) != 0)
              {
                break;
              }

              ++v10;
            }

            while (((v11 | v12) & 1) != 0);
            v5 = v9;
            if (((v15 ^ LOBYTE(v16[0])) & 3) == 0)
            {
              return v19;
            }
          }
        }
      }

      if (++v6 >= *(this + 5))
      {
        v4 = (v5 + 1);
        goto LABEL_16;
      }
    }
  }

  v4 = 1;
LABEL_16:
  v19 = v4;
  v13 = kdu_params::access_cluster(this, "DFS");
  if (v13)
  {
    kdu_params::access_relation(v13, -1, -1, v4, 0);
    return v19;
  }

  return v4;
}

uint64_t cod_params::find_suitable_ads_idx(cod_params *this)
{
  v2 = kdu_params::access_cluster(this, "ADS");
  v17 = 0;
  v3 = *(this + 4);
  v4 = kdu_params::access_unique(v2, v3, -1, 0);
  v5 = v4 != 0;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v2;
  }

  if (v6)
  {
    LODWORD(v7) = 0;
    while (1)
    {
      v8 = *(v6 + 24);
      if (((kdu_params::get(v6, "Ddecomp", 0, 0, &v17, 1, 1, 1) & 1) != 0 || (kdu_params::get(v6, "DOads", 0, 0, &v17, 1, 1, 1) & 1) != 0 || kdu_params::get(v6, "DSads", 0, 0, &v17, 1, 1, 1)) && v8 > v7)
      {
        v9 = 0;
        v7 = v8;
        v15 = 3;
        v16 = 3;
        do
        {
          v10 = kdu_params::get(this, "Cdecomp", v9, 0, &v16, 0, 0, 1);
          v11 = kdu_params::get(v6, "Ddecomp", v9, 0, &v15, 0, 0, 1);
          if (v16 != v15)
          {
            break;
          }

          ++v9;
        }

        while (((v10 | v11) & 1) != 0);
        if (v16 == v15)
        {
          break;
        }
      }

      v12 = *(v6 + 88);
      if (v5)
      {
        v13 = v2;
      }

      else
      {
        v13 = 0;
      }

      if (v12)
      {
        v6 = *(v6 + 88);
      }

      else
      {
        v6 = v13;
      }

      v5 &= v12 != 0;
      if (!v6)
      {
        v3 = *(this + 4);
        v7 = (v7 + 1);
        goto LABEL_23;
      }
    }
  }

  else
  {
    v7 = 1;
LABEL_23:
    kdu_params::access_relation(v2, v3, -1, v7, 0);
  }

  return v7;
}

uint64_t cod_params::derive_decomposition_structure(cod_params *this, kdu_params *a2, kdu_params *a3)
{
  v32 = 0;
  if (a3)
  {
    LOBYTE(v6) = 1;
    v30 = 3;
    v31 = 1;
    v29 = 0;
    v7 = kdu_params::get(a3, "DOads", 0, 0, &v31, 1, 0, 1) ^ 1;
    v8 = kdu_params::get(a3, "DSads", 0, 0, &v29, 1, 0, 1) ^ 1;
    v24 = a2;
    if (a2)
    {
      v6 = kdu_params::get(a2, "DSdfs", 0, 0, &v30, 1, 0, 1) ^ 1;
    }

    v9 = 0;
    v10 = 1;
    v25 = this;
    while (1)
    {
      v11 = (v30 & 3);
      v27 = v7;
      v28 = v6;
      v26 = v9;
      if ((v11 - 1) < 2)
      {
        break;
      }

      if ((v30 & 3) != 0)
      {
        v12 = 2;
LABEL_9:
        v13 = 10 * v12 + 2;
        do
        {
          v14 = v31;
          if (v31 != 1)
          {
            v15 = v29;
            if (v8)
            {
              LOBYTE(v8) = 1;
            }

            else
            {
              v8 = kdu_params::get(a3, "DSads", v10, 0, &v29, 1, 0, 1) ^ 1;
              v14 = v31;
              ++v10;
            }

            v11 = (v11 | (v15 << (10 * v12 + 2)));
            if (v15)
            {
              if (v14 != 2)
              {
                if (v15 == 3)
                {
                  v16 = 4;
                }

                else
                {
                  v16 = 2;
                }

                v17 = v16 | 1;
                v18 = v13 + 2 * v16;
                do
                {
                  v19 = v29;
                  if (v8)
                  {
                    LOBYTE(v8) = 1;
                  }

                  else
                  {
                    v8 = kdu_params::get(a3, "DSads", v10++, 0, &v29, 1, 0, 1) ^ 1;
                  }

                  v11 = (v11 | (v19 << v18));
                  --v17;
                  v18 -= 2;
                }

                while (v17 > 1);
              }
            }
          }

          v13 -= 10;
        }

        while (v12-- > 0);
      }

      kdu_params::set(v25, "Cdecomp", v26, 0, v11);
      v9 = v26 + 1;
      if (v28)
      {
        v6 = 1;
      }

      else
      {
        v6 = kdu_params::get(v24, "DSdfs", v9, 0, &v30, 1, 0, 1) ^ 1;
      }

      if (v27)
      {
        v7 = 1;
      }

      else
      {
        v7 = kdu_params::get(a3, "DOads", v9, 0, &v31, 1, 0, 1) ^ 1;
      }

      if (v31 < 2)
      {
        v21 = v7;
      }

      else
      {
        v21 = 0;
      }

      LOBYTE(v8) = v21 | v8;
      if (v6 & v7) == 1 && (v8)
      {
        result = cod_params::is_valid_decomp_terminator(v11);
        if (result)
        {
          return result;
        }
      }
    }

    v12 = 0;
    goto LABEL_9;
  }

  if (!a2)
  {
    cod_params::derive_decomposition_structure();
  }

  result = kdu_params::get(a2, "DSdfs", 0, 0, &v32, 1, 0, 1);
  if (result)
  {
    v23 = 0;
    do
    {
      kdu_params::set(this, "Cdecomp", v23++, 0, v32);
      result = kdu_params::get(a2, "DSdfs", v23, 0, &v32, 1, 0, 1);
    }

    while ((result & 1) != 0);
  }

  return result;
}

uint64_t cod_params::validate_dfs_data(uint64_t this, int a2)
{
  if (a2)
  {
    v3 = this;
    v4 = kdu_params::access_cluster(this, "DFS");
    if (!v4 || (v5 = kdu_params::access_relation(v4, -1, -1, a2, 1)) == 0)
    {
      cod_params::validate_dfs_data();
    }

    v6 = v5;
    v13 = 0;
    v7 = kdu_params::get(v5, "DSdfs", 0, 0, &v13, 1, 1, 1);
    this = kdu_params::get(v3, "Cdecomp", 0, 0, &v13, 1, 0, 1);
    if (this)
    {
      v8 = 1;
      do
      {
        v9 = v8 - 1;
        v10 = v13 & 3;
        if (v7)
        {
          v11[0] = 0;
          if (!kdu_params::get(v6, "DSdfs", v9, 0, v11, 1, 1, 1) || v11[0] != v10)
          {
            v12 = 0;
            memset(v11, 0, sizeof(v11));
            kdu_error::kdu_error(v11, "Kakadu Core Error:\n");
            kdu_error::~kdu_error(v11);
          }
        }

        else
        {
          kdu_params::set(v6, "DSdfs", v9, 0, (v13 & 3));
        }

        this = kdu_params::get(v3, "Cdecomp", v8++, 0, &v13, 1, 0, 1);
      }

      while ((this & 1) != 0);
    }
  }

  return this;
}

uint64_t cod_params::validate_ads_data(uint64_t this, int a2)
{
  v19[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = this;
    v4 = kdu_params::access_cluster(this, "ADS");
    if (!v4 || (v5 = kdu_params::access_relation(v4, v3[4], -1, a2, 1)) == 0)
    {
      cod_params::validate_ads_data();
    }

    v6 = v5;
    v18[0] = 0;
    v7 = kdu_params::get(v5, "Ddecomp", 0, 0, v18, 1, 1, 1);
    this = kdu_params::get(v3, "Cdecomp", 0, 0, v18, 1, 0, 1);
    v8 = this;
    if (this)
    {
      v9 = 1;
      do
      {
        v10 = v9 - 1;
        v11 = v18[0];
        if (v7)
        {
          LODWORD(v15) = 0;
          v12 = kdu_params::get(v6, "Ddecomp", v10, 0, &v15, 1, 1, 1);
          if (v15 == v11)
          {
            v13 = v12;
          }

          else
          {
            v13 = 0;
          }

          if ((v13 & 1) == 0)
          {
            v17 = 0;
            v15 = 0u;
            v16 = 0u;
            kdu_error::kdu_error(&v15, "Kakadu Core Error:\n");
            (*(v15 + 16))(&v15, "Unacceptable interaction between ADS (Arbitrary Decomposition Style) and DFS (Downsampling Factor Styles) information in Part-2 codestream.  It makes no sense to use the same ADS table for two tile-components which have different downsampling factor styles, since downsampling styles have a strong effect on the interpretation of information recorded in the ADS marker segment.");
            kdu_error::~kdu_error(&v15);
          }
        }

        else
        {
          kdu_params::set(v6, "Ddecomp", v10, 0, v18[0]);
        }

        this = kdu_params::get(v3, "Cdecomp", v9++, 0, v18, 1, 0, 1);
      }

      while ((this & 1) != 0);
      if (v8)
      {
        v14 = v18[0];
        this = cod_params::is_valid_decomp_terminator(v18[0]);
        if ((this & 1) == 0)
        {
          *&v18[1] = 0;
          v19[0] = 0;
          *(v19 + 5) = 0;
          cod_params::textualize_decomp(&v18[1], v14);
          v17 = 0;
          v15 = 0u;
          v16 = 0u;
          kdu_error::kdu_error(&v15, "Kakadu Core Error:\n");
          (*(v15 + 16))(&v15, ", ");
          (*(v15 + 16))(&v15, &v18[1]);
          (*(v15 + 16))(&v15, ".  ");
          kdu_error::~kdu_error(&v15);
        }
      }
    }
  }

  return this;
}

uint64_t cod_params::is_valid_decomp_terminator(cod_params *this)
{
  if ((~this & 3) != 0 || (v1 = 0, v2 = (this >> 2) & 0x3FF, v2 == ((this >> 12) & 0x3FF)) && v2 == this >> 22)
  {
    if ((this >> 4))
    {
      v3 = (this >> 2) & 3;
      if (v3 > 1)
      {
        if (v3 == 2)
        {
          if ((this & 0xF0) == 0xC0)
          {
            return 1;
          }
        }

        else if ((this >> 4) == 255)
        {
          return 1;
        }

        return 0;
      }

      if (v3 && (this & 0xF0) != 0x50)
      {
        return 0;
      }
    }

    return 1;
  }

  return v1;
}

uint64_t cod_params::textualize_decomp(uint64_t this, char *a2)
{
  v2 = a2 & 3;
  if (v2 > 1)
  {
    if (v2 == 3)
    {
      v4 = 66;
    }

    else
    {
      v2 = 1;
      v4 = 86;
    }
  }

  else
  {
    if ((a2 & 3) == 0)
    {
      *this = 10285;
      v3 = (this + 2);
      goto LABEL_20;
    }

    v4 = 72;
  }

  v5 = 0;
  *this = v4;
  v3 = (this + 2);
  v6 = a2 >> 2;
  *(this + 1) = 40;
  do
  {
    if (v5)
    {
      *v3++ = 58;
    }

    if ((v6 & 3) != 0)
    {
      v7 = 3;
    }

    else
    {
      v7 = 1;
    }

    if ((v6 & 3) == 3)
    {
      v8 = 5;
    }

    else
    {
      v8 = v7;
    }

    v9 = v8 + 1;
    v10 = v6;
    do
    {
      *v3++ = 0x4256482Du >> (8 * (v10 & 3));
      v10 >>= 2;
      --v9;
    }

    while (v9 > 1);
    ++v5;
    v6 >>= 10;
  }

  while (v5 != v2);
LABEL_20:
  *v3 = 41;
  if (&v3[-this + 1] >= 21)
  {
    cod_params::textualize_decomp();
  }

  return this;
}

uint64_t cod_params::custom_textualize_field(cod_params *this, kdu_message *a2, const char *__s1, int a4, char *a5)
{
  v10[2] = *MEMORY[0x1E69E9840];
  result = strcmp(__s1, "Cdecomp");
  if (!(result | a4))
  {
    v9 = 0;
    v10[0] = 0;
    *(v10 + 5) = 0;
    cod_params::textualize_decomp(&v9, a5);
    return (*(*a2 + 16))(a2, &v9);
  }

  return result;
}

uint64_t cod_params::custom_parse_field(cod_params *this, const char *a2, const char *__s1, int a4, int *a5)
{
  if (strcmp(__s1, "Cdecomp") | a4)
  {
    goto LABEL_2;
  }

  v8 = *a2;
  if (v8 <= 0x47)
  {
    if (v8 == 45)
    {
      *a5 = 0;
      if (a2[1] == 40)
      {
        v11 = a2 + 2;
        goto LABEL_39;
      }

      goto LABEL_2;
    }

    if (v8 == 66)
    {
      v9 = 3;
      v10 = 3;
      goto LABEL_13;
    }

LABEL_2:
    result = 0;
    *a5 = 0;
    return result;
  }

  if (v8 == 72)
  {
    v9 = 1;
    v10 = 1;
  }

  else
  {
    if (v8 != 86)
    {
      goto LABEL_2;
    }

    v10 = 1;
    v9 = 2;
  }

LABEL_13:
  *a5 = v9;
  if (a2[1] != 40)
  {
    goto LABEL_2;
  }

  v12 = 0;
  v11 = a2 + 2;
  do
  {
    if (v12)
    {
      v13 = *v11;
      if (v13 != 44 && v13 != 58)
      {
        goto LABEL_2;
      }

      ++v11;
    }

    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 1;
    do
    {
      v18 = *v11;
      switch(v18)
      {
        case '-':
          v19 = 0;
          v20 = 0;
          if (v16)
          {
            goto LABEL_37;
          }

LABEL_31:
          v21 = *(v11 + 1);
          v22 = v21 > 0x3A;
          v23 = (1 << v21) & 0x400120000000000;
          if (v22 || v23 == 0)
          {
            v17 += 2 * (v18 != 45) + v19;
          }

          goto LABEL_37;
        case 'B':
          v20 = 3;
          v19 = 2;
          if (v16)
          {
            goto LABEL_37;
          }

          goto LABEL_31;
        case 'H':
          v19 = 0;
          v20 = 1;
          if (v16)
          {
            goto LABEL_37;
          }

          goto LABEL_31;
      }

      if (v18 != 86)
      {
        goto LABEL_2;
      }

      v19 = 0;
      v20 = 2;
      if (!v16)
      {
        goto LABEL_31;
      }

LABEL_37:
      v15 += v20 << v14;
      ++v16;
      ++v11;
      v14 += 2;
    }

    while (v16 < v17);
    v9 |= v15 << (10 * v12 + 2);
    *a5 = v9;
    ++v12;
  }

  while (v12 != v10);
LABEL_39:
  if (*v11 != 41)
  {
    goto LABEL_2;
  }

  return (v11 - a2 + 1);
}

uint64_t cod_params::expand_decomp_bands(uint64_t this, uint64_t a2, __int16 *a3)
{
  v3 = this;
  v4 = 0;
  LODWORD(this) = 0;
  v5 = v3 & 1;
  v6 = (v3 >> 1) & 1;
  v7 = (v3 >> 2);
  while (2)
  {
    v8 = 0;
    do
    {
      if (!(v8 | v4))
      {
        v23 = v3 & 1 | (v6 << 8);
        v9 = v7;
LABEL_22:
        *(a2 + 2 * this) = v23;
        this = (this + 1);
        goto LABEL_23;
      }

      v9 = (v7 >> 10);
      if ((v7 & 3) == 0)
      {
        v23 = ((v6 << 8) | (v4 << 10) | v5) + 4 * v8;
        goto LABEL_22;
      }

      v10 = 0;
      v11 = v7 & 1;
      v12 = (v7 >> 1) & 1;
      v13 = (v7 & 1) + v5;
      do
      {
        v14 = 0;
        v15 = (v10 << v6) | v4;
        v16 = v7;
        do
        {
          v17 = (v14 << v5) | v8;
          LODWORD(v7) = v16 >> 2;
          if ((v16 & 0xC) != 0)
          {
            v18 = 0;
            v19 = (v16 >> 3) & 1;
            do
            {
              v20 = 0;
              v21 = this;
              do
              {
                *(a2 + 2 * this + 2 * v20) = (((v7 & 1) + v13) | ((v19 + v12 + ((v3 >> 1) & 1)) << 8)) + (((v18 << (v12 + ((v3 & 2) != 0))) | v15) << 10) + 4 * ((v20 << v13) | v17);
                ++v20;
              }

              while ((v7 & 1) + 1 != v20);
              LODWORD(this) = this + v20;
              v22 = v18++ == v19;
            }

            while (!v22);
            this = (v21 + v20);
          }

          else
          {
            *(a2 + 2 * this) = (((v12 + v6) << 8) | (v15 << 10) | v13) + 4 * v17;
            this = (this + 1);
          }

          v16 = v7;
          v22 = v14++ == v11;
        }

        while (!v22);
        v22 = v10++ == v12;
      }

      while (!v22);
LABEL_23:
      v7 = v9;
      v22 = v8++ == v5;
    }

    while (!v22);
    v22 = v4++ == v6;
    if (!v22)
    {
      continue;
    }

    break;
  }

  if (this >= 50)
  {
    cod_params::expand_decomp_bands();
  }

  return this;
}

void ads_params::ads_params(ads_params *this)
{
  *(this + 1) = "ADS";
  *(this + 8) = 0;
  *(this + 1) = xmmword_186206BB0;
  *(this + 20) = 1;
  *(this + 42) = 1;
  *(this + 6) = this;
  *(this + 7) = 0;
  *(this + 8) = this + 72;
  *(this + 9) = this;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = this;
  *(this + 104) = 0;
  *(this + 9) = 65537;
  *(this + 14) = 0;
  *this = &unk_1EF4D2DE8;
}

uint64_t ads_params::finalize(uint64_t this, char a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    return this;
  }

  v2 = this;
  v24[0] = 0;
  this = kdu_params::get(this, "Ddecomp", 0, 0, v24, 0, 0, 0);
  v21 = this;
  if (!this)
  {
    return this;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    if ((*(v2 + 6) - 128) <= 0xFFFFFF80)
    {
      *&v26 = 0;
      *&v24[1] = 0u;
      v25 = 0u;
      kdu_error::kdu_error(&v24[1], "Kakadu Core Error:\n");
      kdu_error::~kdu_error(&v24[1]);
    }

    if ((v24[0] & 3u) - 1 >= 2)
    {
      if ((v24[0] & 3) != 3)
      {
        v7 = 0;
        v6 = v24[0] == 0;
        v5 = -1;
        goto LABEL_12;
      }

      v5 = 2;
      v6 = 1;
    }

    else
    {
      v5 = 0;
      v6 = v24[0] < 0x1000u;
    }

    v7 = 1;
LABEL_12:
    for (i = 8; i != 38; i += 10)
    {
      v9 = (v24[0] >> (i - 6)) & 3;
      if ((v9 - 1) >= 2)
      {
        if (v9 == 3)
        {
          continue;
        }

        v10 = (v24[0] >> (i - 4)) == 0;
      }

      else
      {
        v10 = ((v24[0] >> i) & 0xF) == 0;
      }

      v11 = v10;
      v6 &= v11;
    }

    if ((v6 & 1) == 0)
    {
      v23 = 0;
      memset(v22, 0, sizeof(v22));
      kdu_error::kdu_error(v22, "Kakadu Core Error:\n");
      (*(*&v22[0] + 16))(v22, ", 0x");
      BYTE8(v22[0]) = 1;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      *&v24[1] = 0u;
      sprintf(&v24[1], "%x", v24[0]);
      (*(*&v22[0] + 16))(v22, &v24[1]);
      BYTE8(v22[0]) = 0;
      (*(*&v22[0] + 16))(v22, ".");
      kdu_error::~kdu_error(v22);
    }

    if (!v3)
    {
      kdu_params::delete_unparsed_attribute(v2, "DOads");
      kdu_params::delete_unparsed_attribute(v2, "DSads");
    }

    v12 = ((v24[0] >> 2) | (v24[0] >> 12)) & 0x3FF | (v24[0] >> 22);
    if (v12)
    {
      if (v12 < 4)
      {
        v13 = 2;
      }

      else
      {
        v13 = 3;
      }

      kdu_params::set(v2, "DOads", v3, 0, v13);
      if (v7)
      {
        v14 = v4;
        do
        {
          v15 = v24[0] >> (10 * v5 + 2);
          kdu_params::set(v2, "DSads", v14, 0, (v15 & 3));
          v4 = v14 + 1;
          if ((v15 & 3) != 0 && v12 >= 4)
          {
            if ((v15 & 3) == 3)
            {
              v17 = 4;
            }

            else
            {
              v17 = 2;
            }

            v18 = v17 + v14 + 1;
            v19 = 2 * v17;
            do
            {
              kdu_params::set(v2, "DSads", v4++, 0, (((v15 & 0x3FF) >> v19) & 3));
              v19 -= 2;
            }

            while (v19);
            v4 = v18;
          }

          v14 = v4;
        }

        while (v5-- > 0);
      }
    }

    else
    {
      kdu_params::set(v2, "DOads", v3, 0, 1);
    }

    this = kdu_params::get(v2, "Ddecomp", ++v3, 0, v24, 0, 0, 0);
  }

  while ((this & 1) != 0);
  if (v21)
  {
    this = cod_params::is_valid_decomp_terminator(v24[0]);
    if ((this & 1) == 0)
    {
      ads_params::finalize();
    }
  }

  return this;
}

uint64_t ads_params::write_marker_segment(ads_params *this, kdu_output *a2, kdu_params *a3, int a4)
{
  v4 = *(this + 6);
  if (v4 < 1)
  {
    return 0;
  }

  v5 = 0;
  if (a4 || v4 > 0x7F)
  {
    return v5;
  }

  if ((*(this + 5) & 0x80000000) == 0)
  {
    return 0;
  }

  v32 = 0;
  if (a3)
  {
    if ((*(a3 + 4) & 0x80000000) == 0 || *(a3 + 6) != v4)
    {
      ads_params::write_marker_segment();
    }

    v10 = 0;
    while ((kdu_params::get(this, "DOads", v10, 0, &v32, 0, 0, 1) & 1) != 0)
    {
      v11 = v32;
      v33 = 0;
      if (kdu_params::get(a3, "DOads", v10, 0, &v33, 1, 1, 1))
      {
        ++v10;
        if (v33 == v11)
        {
          continue;
        }
      }

      goto LABEL_27;
    }

    while ((kdu_params::get(a3, "DOads", v10, 0, &v32, 0, 0, 1) & 1) != 0)
    {
      v12 = v32;
      v33 = 0;
      if (kdu_params::get(this, "DOads", v10, 0, &v33, 1, 1, 1))
      {
        ++v10;
        if (v33 == v12)
        {
          continue;
        }
      }

      goto LABEL_27;
    }

    v13 = 0;
    while ((kdu_params::get(this, "DSads", v13, 0, &v32, 0, 0, 1) & 1) != 0)
    {
      v14 = v32;
      v33 = 0;
      if (kdu_params::get(a3, "DSads", v13, 0, &v33, 1, 1, 1))
      {
        ++v13;
        if (v33 == v14)
        {
          continue;
        }
      }

      goto LABEL_27;
    }

    while (kdu_params::get(a3, "DSads", v13, 0, &v32, 0, 0, 1))
    {
      v15 = v32;
      v33 = 0;
      if (kdu_params::get(this, "DSads", v13, 0, &v33, 1, 1, 1))
      {
        ++v13;
        if (v33 == v15)
        {
          continue;
        }
      }

      goto LABEL_27;
    }

    return 0;
  }

LABEL_27:
  v16 = -1;
  do
  {
    ++v16;
  }

  while ((kdu_params::get(this, "DOads", v16, 0, &v32, 0, 0, 1) & 1) != 0);
  v17 = -1;
  do
  {
    ++v17;
  }

  while ((kdu_params::get(this, "DSads", v17, 0, &v32, 0, 0, 1) & 1) != 0);
  if (!(v17 | v16))
  {
    return 0;
  }

  v5 = ((v16 + 3) >> 2) + ((v17 + 3) >> 2) + 7;
  if (a2)
  {
    kdu_output::put(a2, 255);
    kdu_output::put(a2, 115);
    kdu_output::put(a2, (((v16 + 3) >> 2) + ((v17 + 3) >> 2) + 5) >> 8);
    kdu_output::put(a2, ((v16 + 3) >> 2) + ((v17 + 3) >> 2) + 5);
    v18 = kdu_output::put(a2, *(this + 24));
    v19 = v18 + kdu_output::put(a2, v16) + 4;
    if (v16)
    {
      v20 = 0;
      while (2)
      {
        v30 = v19;
        v21 = 0;
        v22 = v20++;
        v23 = 8;
        while (1)
        {
          kdu_params::get(this, "DOads", v22, 0, &v32, 1, 1, 1);
          v23 -= 2;
          v21 |= v32 << v23;
          if (!v23)
          {
            break;
          }

          ++v22;
          ++v20;
          if (v16 == v22)
          {
            if (v23 > 7u)
            {
              v19 = v30;
            }

            else
            {
              v19 = kdu_output::put(a2, v21) + v30;
            }

            goto LABEL_44;
          }
        }

        v19 = kdu_output::put(a2, v21) + v30;
        if (v16 != v20)
        {
          continue;
        }

        break;
      }
    }

LABEL_44:
    v24 = kdu_output::put(a2, v17) + v19;
    if (v17)
    {
      v25 = 0;
      while (2)
      {
        v31 = v24;
        v26 = 0;
        v27 = v25++;
        v28 = 8;
        while (1)
        {
          kdu_params::get(this, "DSads", v27, 0, &v32, 1, 1, 1);
          v29 = v32;
          if (v32 >= 1)
          {
            if (v32 == 3)
            {
              v29 = 1;
            }

            else
            {
              v29 = v32 + 1;
            }

            v32 = v29;
          }

          v28 -= 2;
          v26 |= v29 << v28;
          if (!v28)
          {
            break;
          }

          ++v27;
          ++v25;
          if (v17 == v27)
          {
            if (v28 > 7u)
            {
              v24 = v31;
            }

            else
            {
              v24 = kdu_output::put(a2, v26) + v31;
            }

            goto LABEL_60;
          }
        }

        v24 = kdu_output::put(a2, v26) + v31;
        if (v17 != v25)
        {
          continue;
        }

        break;
      }
    }

LABEL_60:
    if (v5 != v24)
    {
      ads_params::write_marker_segment();
    }
  }

  return v5;
}

BOOL ads_params::check_marker_segment(ads_params *this, int a2, int a3, char *a4, int *a5)
{
  if (a2 != 65395 || a3 < 1)
  {
    return 0;
  }

  v6 = *a4;
  *a5 = *a4;
  return v6 > 0;
}

uint64_t ads_params::read_marker_segment(ads_params *this, int a2, int a3, unsigned __int8 *a4, int a5)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    return 0;
  }

  result = 0;
  if (a2 == 65395 && a3 >= 2)
  {
    if (*(this + 6) != *a4)
    {
      return 0;
    }

    v7 = &a4[a3];
    v8 = a4 + 2;
    v9 = a4[1];
    if (a4[1])
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      do
      {
        if (!v11)
        {
          if (v7 - v8 <= 0)
          {
            exception = __cxa_allocate_exception(8uLL);
            *exception = v8;
            __cxa_throw(exception, MEMORY[0x1E69E53E8], 0);
          }

          v13 = *v8++;
          v12 = v13;
          v11 = 8;
        }

        v11 -= 2;
        kdu_params::set(this, "DOads", v10++, 0, ((v12 >> v11) & 3));
      }

      while (v9 != v10);
    }

    else
    {
      v12 = 0;
    }

    if (v7 - v8 <= 0)
    {
      v24 = __cxa_allocate_exception(8uLL);
      *v24 = v8;
      __cxa_throw(v24, MEMORY[0x1E69E53E8], 0);
    }

    v16 = *v8;
    v14 = v8 + 1;
    v15 = v16;
    if (v16)
    {
      v17 = 0;
      v18 = 0;
      do
      {
        if (!v18)
        {
          if (v7 - v14 <= 0)
          {
            v23 = __cxa_allocate_exception(8uLL);
            *v23 = v14;
            __cxa_throw(v23, MEMORY[0x1E69E53E8], 0);
          }

          v19 = *v14++;
          v12 = v19;
          v18 = 8;
        }

        v18 -= 2;
        v20 = ((v12 >> v18) & 3) - 1;
        if (((v12 >> v18) & 3) == 1)
        {
          v20 = 3;
        }

        if (((v12 >> v18) & 3) != 0)
        {
          v21 = v20;
        }

        else
        {
          v21 = 0;
        }

        kdu_params::set(this, "DSads", v17++, 0, v21);
      }

      while (v15 != v17);
    }

    if (v14 != v7)
    {
      v26 = 0;
      memset(v25, 0, sizeof(v25));
      kdu_error::kdu_error(v25, "Kakadu Core Error:\n");
      (*(*&v25[0] + 16))(v25, "Malformed ADS marker segment encountered. The final ");
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      *v27 = 0u;
      if (BYTE8(v25[0]))
      {
        sprintf(v27, "%x");
      }

      else
      {
        sprintf(v27, "%d");
      }

      (*(*&v25[0] + 16))(v25, v27);
      (*(*&v25[0] + 16))(v25, " bytes were not consumed!");
      kdu_error::~kdu_error(v25);
    }

    return 1;
  }

  return result;
}

uint64_t ads_params::custom_textualize_field(ads_params *this, kdu_message *a2, const char *__s1, int a4, char *a5)
{
  v10[2] = *MEMORY[0x1E69E9840];
  result = strcmp(__s1, "Ddecomp");
  if (!(result | a4))
  {
    v9 = 0;
    v10[0] = 0;
    *(v10 + 5) = 0;
    cod_params::textualize_decomp(&v9, a5);
    return (*(*a2 + 16))(a2, &v9);
  }

  return result;
}

void dfs_params::dfs_params(dfs_params *this)
{
  *(this + 1) = "DFS";
  *(this + 8) = 0;
  *(this + 1) = xmmword_186206BB0;
  *(this + 20) = 1;
  *(this + 42) = 1;
  *(this + 6) = this;
  *(this + 7) = 0;
  *(this + 8) = this + 72;
  *(this + 9) = this;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = this;
  *(this + 104) = 0;
  *(this + 9) = 1;
  *(this + 14) = 0;
  *this = &unk_1EF4D2E48;
}

uint64_t dfs_params::finalize(uint64_t this, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = this;
    v7 = 0;
    this = kdu_params::get(this, "DSdfs", 0, 0, &v7, 0, 0, 0);
    if (this)
    {
      v3 = 1;
      do
      {
        if ((*(v2 + 6) - 128) <= 0xFFFFFF80)
        {
          v6 = 0;
          v4 = 0u;
          v5 = 0u;
          kdu_error::kdu_error(&v4, "Kakadu Core Error:\n");
          kdu_error::~kdu_error(&v4);
        }

        if (v7 >= 4)
        {
          v6 = 0;
          v4 = 0u;
          v5 = 0u;
          kdu_error::kdu_error(&v4, "Kakadu Core Error:\n");
          kdu_error::~kdu_error(&v4);
        }

        this = kdu_params::get(v2, "DSdfs", v3++, 0, &v7, 0, 0, 0);
      }

      while ((this & 1) != 0);
    }
  }

  return this;
}

BOOL dfs_params::check_marker_segment(dfs_params *this, int a2, int a3, unsigned __int8 *a4, int *a5)
{
  if (a2 != 65394 || a3 < 2)
  {
    return 0;
  }

  v6 = a4[1];
  *a5 = a4[1];
  return v6 > 0;
}

uint64_t dfs_params::read_marker_segment(dfs_params *this, int a2, int a3, unsigned __int8 *a4, int a5)
{
  if (a5 || (*(this + 4) & 0x80000000) == 0 || (*(this + 5) & 0x80000000) == 0)
  {
    return 0;
  }

  result = 0;
  if (a2 == 65394 && a3 >= 2)
  {
    v20 = a4 + 2;
    if (*(this + 6) != a4[1])
    {
      return 0;
    }

    v7 = &a4[a3];
    v8 = kdu_read(&v20, v7, 1);
    v9 = v20;
    if (v8 >= 1)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      do
      {
        if (!v11)
        {
          if (v7 - v9 <= 0)
          {
            v20 = v9;
            exception = __cxa_allocate_exception(8uLL);
            *exception = v9;
            __cxa_throw(exception, MEMORY[0x1E69E53E8], 0);
          }

          v13 = *v9++;
          v12 = v13;
          v11 = 8;
        }

        v11 -= 2;
        v14 = ((v12 >> v11) & 3) - 1;
        if (((v12 >> v11) & 3) == 1)
        {
          v14 = 3;
        }

        if (((v12 >> v11) & 3) != 0)
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        kdu_params::set(this, "DSdfs", v10++, 0, v15);
      }

      while (v8 != v10);
    }

    v20 = v9;
    if (v9 != v7)
    {
      v19 = 0;
      memset(v18, 0, sizeof(v18));
      kdu_error::kdu_error(v18, "Kakadu Core Error:\n");
      (*(*&v18[0] + 16))(v18, "Malformed DFS marker segment encountered. The final ");
      v16 = kdu_message::operator<<(v18);
      (*(*v16 + 16))(v16, " bytes were not consumed!");
      kdu_error::~kdu_error(v18);
    }

    return 1;
  }

  return result;
}

void sub_185F7467C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  if (a2 != 1)
  {
    sub_185F74674();
  }

  __cxa_begin_catch(a1);
  a11 = 0;
  a9 = 0u;
  a10 = 0u;
  kdu_error::kdu_error(&a9, "Kakadu Core Error:\n");
  (*(a9 + 16))(&a9, "Malformed DFS marker segment encountered. Marker segment is too small.");
  kdu_error::~kdu_error(&a9);
}

uint64_t dfs_params::write_marker_segment(dfs_params *this, kdu_output *a2, kdu_params *a3, int a4)
{
  v4 = *(this + 6);
  if (v4 < 1)
  {
    return 0;
  }

  v5 = 0;
  if (!a4 && v4 <= 0x7F)
  {
    if ((*(this + 5) & 0x80000000) == 0 || (*(this + 4) & 0x80000000) == 0)
    {
      return 0;
    }

    v20 = 0;
    v9 = -1;
    do
    {
      ++v9;
    }

    while ((kdu_params::get(this, "DSdfs", v9, 0, &v20, 0, 0, 1) & 1) != 0);
    v10 = (v9 + 3) >> 2;
    v5 = v10 + 7;
    if (a2)
    {
      kdu_output::put(a2, 255);
      kdu_output::put(a2, 114);
      v11 = v10 + 5;
      kdu_output::put(a2, SHIBYTE(v11));
      kdu_output::put(a2, v11);
      v12 = *(this + 6);
      kdu_output::put(a2, SBYTE1(v12));
      kdu_output::put(a2, v12);
      v13 = kdu_output::put(a2, v9) + 6;
      if (v9)
      {
        v14 = 0;
        while (2)
        {
          v19 = v13;
          v15 = 0;
          v16 = v14++;
          v17 = 8;
          while (1)
          {
            kdu_params::get(this, "DSdfs", v16, 0, &v20, 1, 1, 1);
            v18 = v20;
            if (v20 >= 1)
            {
              if (v20 == 3)
              {
                v18 = 1;
              }

              else
              {
                v18 = v20 + 1;
              }

              v20 = v18;
            }

            v17 -= 2;
            v15 |= v18 << v17;
            if (!v17)
            {
              break;
            }

            ++v16;
            ++v14;
            if (v9 == v16)
            {
              if (v17 > 7u)
              {
                v13 = v19;
              }

              else
              {
                v13 = kdu_output::put(a2, v15) + v19;
              }

              goto LABEL_27;
            }
          }

          v13 = kdu_output::put(a2, v15) + v19;
          if (v9 != v14)
          {
            continue;
          }

          break;
        }
      }

LABEL_27:
      if (v5 != v13)
      {
        dfs_params::write_marker_segment();
      }
    }
  }

  return v5;
}

void qcd_params::qcd_params(qcd_params *this)
{
  *(this + 1) = "QCD";
  *(this + 8) = 0;
  *(this + 1) = xmmword_186206BB0;
  *(this + 20) = 0;
  *(this + 42) = 0;
  *(this + 6) = this;
  *(this + 7) = 0;
  *(this + 8) = this + 72;
  *(this + 9) = this;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = this;
  *(this + 104) = 0;
  *(this + 9) = 16842753;
  *(this + 14) = 0;
  *this = &unk_1EF4D2EA8;
  kdu_params::add_dependency(this, "COD");
  kdu_params::add_dependency(this, "ADS");
  kdu_params::define_attribute(this, "Qguard", "Number of guard bits to prevent overflow in the magnitude bit-plane representation. Typical values are 1 or 2.\n\t\t[Default is 1]", "I");
}

uint64_t qcd_params::copy_with_xforms(qcd_params *this, kdu_params *a2, int a3, int a4, int a5)
{
  v38 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v27 = 0;
  if (kdu_params::get(a2, "Qguard", 0, 0, &v28, 0, 1, 1))
  {
    kdu_params::set(this, "Qguard", 0, 0, v28);
  }

  if (kdu_params::get(a2, "Qderived", 0, 0, &v27, 0, 1, 1))
  {
    kdu_params::set(this, "Qderived", 0, 0, v27);
  }

  v8 = kdu_params::access_cluster(a2, "COD");
  if (!v8 || (v9 = kdu_params::access_relation(v8, *(a2 + 4), *(a2 + 5), 0, 1)) == 0)
  {
    qcd_params::copy_with_xforms();
  }

  v10 = v9;
  v26 = 0;
  v25 = 0;
  kdu_params::get(v9, "Clevels", 0, 0, &v26, 1, 1, 1);
  result = kdu_params::get(v10, "Creversible", 0, 0, &v25, 1, 1, 1);
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  v31 = 0;
  v12 = v26;
  if (v26 >= a4)
  {
    v13 = 0;
    v14 = 0;
    v15 = 1;
    do
    {
      if (v13)
      {
        v24 = 0.0;
        if ((kdu_params::get(v10, "Cdecomp", v12 - v13, 0, &v24, 1, 1, 1) & 1) == 0)
        {
          qcd_params::copy_with_xforms();
        }

        result = cod_params::expand_decomp_bands(LODWORD(v24), &v31, v16);
        v15 = result;
        if (a5)
        {
          v17 = cod_params::transpose_decomp(LODWORD(v24));
          result = cod_params::expand_decomp_bands(v17, v29, v18);
        }
      }

      if (v15 > (v13 != 0))
      {
        v19 = v13 != 0;
        do
        {
          LODWORD(v20) = v19;
          if (a5)
          {
            v20 = 0;
            v21 = bswap32(*(v29 + v19)) >> 16;
            while (*(&v31 + v20) != v21)
            {
              if (v15 == ++v20)
              {
                qcd_params::copy_with_xforms();
              }
            }
          }

          v24 = 0.0;
          if (v25)
          {
            kdu_params::get(a2, "Qabs_ranges", v14 + v20, 0, &v24, 1, 1, 1);
            result = kdu_params::set(this, "Qabs_ranges", v14 + v19, 0, LODWORD(v24));
          }

          else
          {
            kdu_params::get(a2, "Qabs_steps", v14 + v20, 0, &v24, 1, 1, 1);
            result = kdu_params::set(this, "Qabs_steps", v14 + v19, 0, v24);
          }

          ++v19;
        }

        while (v19 != v15);
      }

      v14 = v14 + v15 - 1;
      v12 = v26;
    }

    while (v13++ < v26 - a4);
  }

  return result;
}

uint64_t qcd_params::write_marker_segment(qcd_params *this, kdu_output *a2, kdu_params *a3, int a4)
{
  v61 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    return 0;
  }

  v8 = kdu_params::access_cluster(this, "COD");
  if (!v8)
  {
    qcd_params::write_marker_segment();
  }

  *v48 = 0;
  *v47 = 0;
  v9 = kdu_params::access_relation(v8, *(this + 4), *(this + 5), 0, 1);
  v10 = v9;
  if (!v9 || !kdu_params::get(v9, "Clevels", 0, 0, v48, 1, 1, 1) || (kdu_params::get(v10, "Creversible", 0, 0, &v47[1], 1, 1, 1) & 1) == 0)
  {
    *&v51 = 0;
    v49 = 0u;
    v50 = 0u;
    kdu_error::kdu_error(&v49, "Kakadu Core Error:\n");
    (*(v49 + 16))(&v49, "Cannot write QCD/QCC marker segment without first completing relevant COD/COC information!");
    kdu_error::~kdu_error(&v49);
  }

  if ((kdu_params::get(this, "Qguard", 0, 0, &v48[1], 1, 1, 1) & 1) == 0)
  {
    *&v51 = 0;
    v49 = 0u;
    v50 = 0u;
    kdu_error::kdu_error(&v49, "Kakadu Core Error:\n");
    (*(v49 + 16))(&v49, "Cannot write QCD/QCC marker segment yet! No info on guard bits.");
    kdu_error::~kdu_error(&v49);
  }

  if (v47[1])
  {
    v47[0] = 0;
  }

  else if ((kdu_params::get(this, "Qderived", 0, 0, v47, 1, 1, 1) & 1) == 0)
  {
    *&v51 = 0;
    v49 = 0u;
    v50 = 0u;
    kdu_error::kdu_error(&v49, "Kakadu Core Error:\n");
    (*(v49 + 16))(&v49, "Cannot write QCD/QCC marker segment yet!  Not clear whether quant steps are derived from the LL band step size.");
    kdu_error::~kdu_error(&v49);
  }

  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  if (v47[0] || (LODWORD(v56) = 0, v48[0] < 1))
  {
    v12 = 1;
    if (!a3)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v11 = 0;
    v12 = 1;
    do
    {
      kdu_params::get(v10, "Cdecomp", v11, 0, &v56, 1, 1, 1);
      v12 = v12 + cod_params::expand_decomp_bands(v56, &v49, v13) - 1;
      ++v11;
    }

    while (v11 < v48[0]);
    if (!a3)
    {
      goto LABEL_53;
    }
  }

  LODWORD(v43) = 0;
  v42[0] = 0;
  v14 = kdu_params::access_relation(v10, *(a3 + 4), *(a3 + 5), 0, 1);
  v15 = v14;
  if (!v14)
  {
    qcd_params::write_marker_segment();
  }

  if (!kdu_params::get(v14, "Clevels", 0, 0, &v43, 1, 1, 1) || (kdu_params::get(v15, "Creversible", 0, 0, v42, 1, 1, 1) & 1) == 0)
  {
    *&v58 = 0;
    v56 = 0u;
    v57 = 0u;
    kdu_error::kdu_error(&v56, "Kakadu Core Error:\n");
    (*(v56 + 16))(&v56, "Cannot write QCD/QCC marker segment without first completing all relevant COD/COC information!");
    kdu_error::~kdu_error(&v56);
  }

  if (v42[0] == v47[1] && v43 == v48[0])
  {
    v16 = v48[1];
    LODWORD(v56) = 0;
    v17 = kdu_params::get(a3, "Qguard", 0, 0, &v56, 1, 1, 1);
    v18 = v56 == v16 ? v17 : 0;
    if (v18 == 1 && (v47[1] || kdu_params::compare(a3, "Qderived", 0, 0, v47[0])))
    {
      if (v12 >= 1)
      {
        v19 = 0;
        while (1)
        {
          if (v47[1])
          {
            v46 = 0.0;
            if ((kdu_params::get(this, "Qabs_ranges", v19, 0, &v46, 1, 1, 1) & 1) == 0)
            {
              *&v58 = 0;
              v56 = 0u;
              v57 = 0u;
              kdu_error::kdu_error(&v56, "Kakadu Core Error:\n");
              (*(v56 + 16))(&v56, "Cannot write QCD/QCC marker segment yet!  Absolute reversible ranging information not available.");
              kdu_error::~kdu_error(&v56);
            }

            v20 = LODWORD(v46);
            LODWORD(v56) = 0;
            v21 = kdu_params::get(a3, "Qabs_ranges", v19, 0, &v56, 1, 1, 1);
            if (v56 == v20)
            {
              v22 = v21;
            }

            else
            {
              v22 = 0;
            }

            if ((v22 & 1) == 0)
            {
              goto LABEL_52;
            }
          }

          else
          {
            v46 = 0.0;
            if ((kdu_params::get(this, "Qabs_steps", v19, 0, &v46, 1, 1, 1) & 1) == 0)
            {
              *&v58 = 0;
              v56 = 0u;
              v57 = 0u;
              kdu_error::kdu_error(&v56, "Kakadu Core Error:\n");
              (*(v56 + 16))(&v56, "Cannot write QCD/QCC marker segment yet!  Absolute step size information not available.");
              kdu_error::~kdu_error(&v56);
            }

            *&v23 = v46;
            LODWORD(v56) = 0;
            v24 = kdu_params::get(a3, "Qabs_steps", v19, 0, &v56, 1, 1, 1);
            if (*&v56 == *&v23)
            {
              v25 = v24;
            }

            else
            {
              v25 = 0;
            }

            if (v25 != 1)
            {
              goto LABEL_52;
            }
          }

          if (v12 == ++v19)
          {
            return 0;
          }
        }
      }

      v19 = 0;
LABEL_52:
      if (v19 == v12)
      {
        return 0;
      }
    }
  }

LABEL_53:
  if (v48[1] >= 8u)
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    kdu_error::kdu_error(&v43, "Kakadu Core Error:\n");
    (*(v43 + 16))(&v43, "Illegal number of guard bits, ");
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    if (BYTE8(v43))
    {
      sprintf(&v56, "%x");
    }

    else
    {
      sprintf(&v56, "%d");
    }

    (*(v43 + 16))(&v43, &v56);
    (*(v43 + 16))(&v43, ". Legal range is from 0 to 7.");
    kdu_error::~kdu_error(&v43);
  }

  v26 = *(this + 8);
  v27 = *(this + 5);
  if (v26 < 257)
  {
    v28 = 6;
  }

  else
  {
    v28 = 7;
  }

  if (v27 >= 0)
  {
    v29 = v28;
  }

  else
  {
    v29 = 5;
  }

  v30 = v47[1];
  result = v29 + v12 * (2 - v47[1]);
  if (a2)
  {
    v41 = v29 + v12 * (2 - v47[1]);
    if ((*(this + 4) & 0x80000000) == 0)
    {
      v31 = kdu_params::access_cluster(this, "SIZ");
      if (!v31)
      {
        qcd_params::write_marker_segment();
      }

      LODWORD(v46) = 2;
      kdu_params::get(v31, "Sprofile", 0, 0, &v46, 1, 1, 1);
      if (!LODWORD(v46))
      {
        v45 = 0;
        v43 = 0u;
        v44 = 0u;
        kdu_warning::kdu_warning(&v43, "Kakadu Core Warning:\n");
        (*(v43 + 16))(&v43, "Profile violation detected (code-stream is technically illegal).  QCD/QCC marker segments may only appear in the main header of a Profile-0 code-stream.  You should set Sprofile to 1 or 2.  Problem detected in tile ");
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v56 = 0u;
        if (BYTE8(v43))
        {
          sprintf(&v56, "%x");
        }

        else
        {
          sprintf(&v56, "%d");
        }

        (*(v43 + 16))(&v43, &v56);
        (*(v43 + 16))(&v43, ".");
        kdu_warning::~kdu_warning(&v43);
      }

      v27 = *(this + 5);
      v30 = v47[1];
    }

    v32 = v48[1];
    if (v30)
    {
      v33 = 0;
    }

    else
    {
      v33 = 2 - v47[0];
    }

    kdu_output::put(a2, 255);
    v34 = v41 - 2;
    if (v27 < 0)
    {
      kdu_output::put(a2, 92);
      kdu_output::put(a2, SHIBYTE(v34));
      kdu_output::put(a2, v34);
      v36 = 4;
    }

    else
    {
      kdu_output::put(a2, 93);
      kdu_output::put(a2, SHIBYTE(v34));
      kdu_output::put(a2, v34);
      v35 = *(this + 5);
      if (v26 >= 257)
      {
        kdu_output::put(a2, SBYTE1(v35));
        kdu_output::put(a2, v35);
        v36 = 6;
      }

      else
      {
        v36 = kdu_output::put(a2, v35) + 4;
      }
    }

    v37 = kdu_output::put(a2, v33 | (32 * v32)) + v36;
    if (v12 >= 1)
    {
      for (i = 0; i != v12; ++i)
      {
        if (v47[1])
        {
          LODWORD(v43) = 0;
          if ((kdu_params::get(this, "Qabs_ranges", i, 0, &v43, 1, 1, 1) & 1) == 0)
          {
            *&v58 = 0;
            v56 = 0u;
            v57 = 0u;
            kdu_error::kdu_error(&v56, "Kakadu Core Error:\n");
            (*(v56 + 16))(&v56, "Insufficient absolute ranging parameters available for writing QCD/QCC marker segment");
            kdu_error::~kdu_error(&v56);
          }

          if (v43 >= 0x20)
          {
            *&v58 = 0;
            v56 = 0u;
            v57 = 0u;
            kdu_error::kdu_error(&v56, "Kakadu Core Error:\n");
            (*(v56 + 16))(&v56, "Absolute ranging parameters for reversibly compressed subbands must be non-negative, no larger than 31!");
            kdu_error::~kdu_error(&v56);
          }

          v39 = kdu_output::put(a2, 8 * (v43 & 0x1Fu));
        }

        else
        {
          *v42 = 0;
          LODWORD(v43) = 0;
          v46 = 0.0;
          if ((kdu_params::get(this, "Qabs_steps", i, 0, &v43, 1, 1, 1) & 1) == 0)
          {
            *&v58 = 0;
            v56 = 0u;
            v57 = 0u;
            kdu_error::kdu_error(&v56, "Kakadu Core Error:\n");
            (*(v56 + 16))(&v56, "Insufficient absolute quantization step size parameters available for writing QCD/QCC marker segment.");
            kdu_error::~kdu_error(&v56);
          }

          step_to_eps_mu(*&v43, &v46, v42);
          v40 = v42[0];
          kdu_output::put(a2, (*v42 + (LOWORD(v46) << 11)) >> 8);
          kdu_output::put(a2, v40);
          v39 = 2;
        }

        v37 += v39;
      }
    }

    result = v41;
    if (v41 != v37)
    {
      qcd_params::write_marker_segment();
    }
  }

  return result;
}
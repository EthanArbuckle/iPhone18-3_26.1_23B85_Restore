uint64_t absl::lts_20240722::debugging_internal::ParseExprPrimary(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 20);
  v3 = vadd_s32(v2, 0x100000001);
  *(a1 + 20) = v3;
  v4 = v2.i32[0];
  if (v2.i32[0] <= 255)
  {
    v5 = v2.i32[1];
    if (v2.i32[1] < 0x20000)
    {
      v37 = *(a1 + 28);
      v6 = vadd_s32(v2, 0x200000002);
      *(a1 + 20) = v6;
      if (v4 <= 254 && v5 <= 131070)
      {
        v8 = *(a1 + 28);
        v9 = (*a1 + v8);
        if (*v9 == 76 && v9[1] == 90)
        {
          *(a1 + 28) = v8 + 2;
          *(a1 + 20) = v3.i32[0];
          v10 = a1;
          v11 = absl::lts_20240722::debugging_internal::ParseEncoding();
          a1 = v10;
          if (v11)
          {
            v12 = *(v10 + 20);
            *(v10 + 20) = vadd_s32(v12, 0x100000001);
            v13 = v12.i32[0];
            if (v12.i32[0] > 255)
            {
              goto LABEL_46;
            }

            if (v12.i32[1] >= 0x20000)
            {
              goto LABEL_46;
            }

            v14 = *(v10 + 28);
            if (*(*v10 + v14) != 69)
            {
              goto LABEL_46;
            }

LABEL_42:
            *(a1 + 28) = v14 + 1;
            *(a1 + 20) = v13;
            goto LABEL_45;
          }

          goto LABEL_49;
        }
      }

      *(a1 + 20) = v6.i32[0];
      *(a1 + 24) = v5 + 3;
      if (v4 <= 254 && v5 <= 131069 && (v15 = *a1, v16 = *(a1 + 28), *(*a1 + v16) == 76))
      {
        v17 = v16 + 1;
        *(a1 + 20) = v6.i32[0];
        *(a1 + 24) = v5 + 4;
        *(a1 + 28) = v16 + 1;
        if (v5 <= 131068)
        {
          v18 = v15 + v17;
          if (*(v15 + v17) == 68 && *(v18 + 1) == 110 && *(v18 + 2) == 69)
          {
            *(a1 + 28) = v16 + 4;
            *(a1 + 20) = v3.i32[0];
LABEL_45:
            v1 = 1;
LABEL_50:
            v4 = *(a1 + 20) - 1;
            goto LABEL_51;
          }
        }

        *(a1 + 20) = v3.i32[0];
        if (*(v15 + v17) == 65)
        {
          v30 = a1;
          v31 = absl::lts_20240722::debugging_internal::ParseType(a1);
          a1 = v30;
          if (v31)
          {
            v32 = *(v30 + 20);
            *(v30 + 20) = vadd_s32(v32, 0x100000001);
            v13 = v32.i32[0];
            if (v32.i32[0] > 255 || v32.i32[1] >= 0x20000 || (v14 = *(v30 + 28), *(*v30 + v14) != 69))
            {
LABEL_46:
              *(a1 + 20) = v13;
              goto LABEL_49;
            }

            goto LABEL_42;
          }

LABEL_49:
          v1 = 0;
          *(a1 + 28) = v37;
          goto LABEL_50;
        }

        v33 = a1;
        v34 = absl::lts_20240722::debugging_internal::ParseType(a1);
        a1 = v33;
        if (v34)
        {
          v35 = absl::lts_20240722::debugging_internal::ParseExprCastValueAndTrailingE(v33);
          a1 = v33;
          if (v35)
          {
            goto LABEL_45;
          }
        }
      }

      else
      {
        *(a1 + 20) = v3.i32[0];
      }

      *(a1 + 28) = v37;
      v19 = *(a1 + 20);
      v20 = vadd_s32(v19, 0x100000001);
      *(a1 + 20) = v20;
      v21 = v19.i32[0];
      if (v19.i32[0] <= 255 && v19.i32[1] < 0x20000)
      {
        v22 = *a1;
        v23 = *(a1 + 28);
        if (*(*a1 + v23) == 76)
        {
          v24 = v23 + 1;
          *(a1 + 20) = v20.i32[0];
          *(a1 + 24) = v19.i32[1] + 2;
          *(a1 + 28) = v23 + 1;
          if (v19.i32[1] <= 131070)
          {
            *(a1 + 20) = vadd_s32(v19, 0x300000002);
            if (v19.i32[0] <= 254 && v19.i32[1] != 131070 && *(v22 + v24) == 95 && *(v22 + v24 + 1) == 90)
            {
              *(a1 + 28) = v23 + 3;
              *(a1 + 20) = v20.i32[0];
              v25 = a1;
              v26 = absl::lts_20240722::debugging_internal::ParseEncoding();
              a1 = v25;
              v27 = *(v25 + 20);
              v21 = v27 - 1;
              *(v25 + 20) = v27 - 1;
              if (!v26)
              {
                goto LABEL_49;
              }

              v28 = *(v25 + 24);
              *(v25 + 20) = v27;
              *(v25 + 24) = v28 + 1;
              if (v27 <= 256 && v28 < 0x20000)
              {
                v29 = *(v25 + 28);
                if (*(*v25 + v29) == 69)
                {
                  *(v25 + 28) = v29 + 1;
                  *(v25 + 20) = v21;
                  goto LABEL_45;
                }
              }
            }

            else
            {
              *(a1 + 20) = v20.i32[0];
            }
          }
        }
      }

      *(a1 + 20) = v21;
      goto LABEL_49;
    }
  }

LABEL_51:
  *(a1 + 20) = v4;
  return v1;
}

void sub_23C9570D0(_Unwind_Exception *a1)
{
  v2 = *(v1 + 20) - 1;
  *(v1 + 20) = v2;
  *(v1 + 20) = v2 - 1;
  _Unwind_Resume(a1);
}

uint64_t absl::lts_20240722::debugging_internal::ParseType(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 20);
  *(a1 + 20) = vadd_s32(v3, 0x100000001);
  v4 = v3.i32[0];
  if (v3.i32[0] > 255 || v3.i32[1] >= 0x20000)
  {
    goto LABEL_205;
  }

  v88 = *(a1 + 28);
  if (absl::lts_20240722::debugging_internal::ParseCVQualifiers(a1))
  {
    v5 = absl::lts_20240722::debugging_internal::ParseType(a1);
LABEL_12:
    if (v5)
    {
      goto LABEL_203;
    }

    result = 0;
    *(a1 + 28) = v88;
    goto LABEL_204;
  }

  *(a1 + 28) = v88;
  v6 = *(a1 + 20);
  v7 = vadd_s32(v6, 0x100000001);
  *(a1 + 20) = v7;
  v8 = v6.i32[0];
  if (v6.i32[0] <= 255 && v6.i32[1] < 0x20000)
  {
    v9 = *(a1 + 28);
    v10 = *(*a1 + v9) - 67;
    v11 = v10 > 0xF;
    v12 = (1 << v10) & 0xB011;
    if (!v11 && v12 != 0)
    {
      *(a1 + 28) = v9 + 1;
      *(a1 + 20) = v6.i32[0];
      v5 = absl::lts_20240722::debugging_internal::ParseType(a1);
      goto LABEL_12;
    }
  }

  *(a1 + 28) = v88;
  v14 = v7.i32[0];
  *(a1 + 20) = v7.i32[0];
  v15 = v6.i32[1] + 2;
  *(a1 + 24) = v6.i32[1] + 2;
  if (v6.i32[0] <= 255 && v6.i32[1] <= 131070 && (v16 = *(a1 + 28), v17 = (*a1 + v16), *v17 == 68) && v17[1] == 112)
  {
    *(a1 + 28) = v16 + 2;
    *(a1 + 20) = v6.i32[0];
    if (absl::lts_20240722::debugging_internal::ParseType(a1))
    {
      goto LABEL_203;
    }

    v8 = *(a1 + 20);
    v15 = *(a1 + 24);
    v14 = v8 + 1;
    *(a1 + 28) = v88;
    *(a1 + 20) = v8 + 1;
    *(a1 + 24) = v15 + 1;
    if (v8 >= 256)
    {
      goto LABEL_94;
    }
  }

  else
  {
    *(a1 + 20) = v6.i32[0];
    *(a1 + 28) = v88;
    *(a1 + 20) = v7.i32[0];
    *(a1 + 24) = v6.i32[1] + 3;
    if (v6.i32[0] >= 256)
    {
      goto LABEL_94;
    }
  }

  if (v15 >= 0x20000)
  {
    goto LABEL_94;
  }

  v18 = v15 + 2;
  *(a1 + 20) = v8 + 2;
  *(a1 + 24) = v15 + 2;
  if (v8 <= 254 && v15 <= 131070)
  {
    v19 = *(a1 + 28);
    v20 = (*a1 + v19);
    if (*v20 == 68 && v20[1] == 66)
    {
      *(a1 + 28) = v19 + 2;
      *(a1 + 20) = v14;
LABEL_33:
      v23 = *(a1 + 40);
      v24 = v23 & 0x7FFFFFFF;
      *(a1 + 40) = v23 & 0x7FFFFFFF;
      *(a1 + 24) = v18 + 1;
      if (v14 <= 255 && v18 < 0x20000)
      {
        v25 = 0;
        v26 = v14 + 1;
        v27 = v18 + 2;
        *(a1 + 20) = v14 + 2;
        *(a1 + 24) = v18 + 2;
        v28 = *a1;
        v29 = *(a1 + 28);
        if (v14 <= 254 && v18 <= 131070)
        {
          if (*(v28 + v29) == 110)
          {
            *(a1 + 28) = ++v29;
            v25 = 1;
          }

          else
          {
            v25 = 0;
          }
        }

        *(a1 + 20) = v26;
        v49 = *(v28 + v29);
        if ((v49 - 48) <= 9)
        {
          v50 = 0;
          v51 = (v29 + v28 + 1);
          do
          {
            v50 = v49 + 10 * v50 - 48;
            v52 = *v51++;
            v49 = v52;
            ++v29;
          }

          while ((v52 - 48) < 0xA);
          *(a1 + 28) = v29;
          if (v25)
          {
            v53 = -v50;
          }

          else
          {
            v53 = v50;
          }

          *(a1 + 20) = v14;
          goto LABEL_85;
        }
      }

      *(a1 + 20) = v14;
      if (absl::lts_20240722::debugging_internal::ParseExpression(a1))
      {
        v14 = *(a1 + 20);
        v27 = *(a1 + 24);
        v26 = v14 + 1;
        v24 = *(a1 + 40) & 0x7FFFFFFF;
        v53 = -1;
LABEL_85:
        *(a1 + 40) = v24 | v23 & 0x80000000;
        *(a1 + 20) = v26;
        *(a1 + 24) = v27 + 1;
        if (v14 > 255 || v27 >= 0x20000 || (v54 = *(a1 + 28), *(*a1 + v54) != 95))
        {
          *(a1 + 20) = v14;
          goto LABEL_91;
        }

        *(a1 + 28) = v54 + 1;
        *(a1 + 20) = v14;
        absl::lts_20240722::debugging_internal::MaybeAppend(a1, "_BitInt(");
        if (v53 < 0)
        {
          absl::lts_20240722::debugging_internal::MaybeAppend(a1, "?");
        }

        else
        {
          absl::lts_20240722::debugging_internal::MaybeAppendDecimal(a1, v53);
        }

        v37 = ")";
        goto LABEL_199;
      }

LABEL_93:
      *(a1 + 28) = v88;
      v14 = *(a1 + 20);
      goto LABEL_94;
    }
  }

  *(a1 + 20) = v8 + 2;
  *(a1 + 24) = v15 + 3;
  if (v8 < 255 && v15 <= 131069)
  {
    v21 = *(a1 + 28);
    v22 = (*a1 + v21);
    if (*v22 == 68 && v22[1] == 85)
    {
      *(a1 + 28) = v21 + 2;
      *(a1 + 20) = v14;
      absl::lts_20240722::debugging_internal::MaybeAppend(a1, "unsigned ");
      v14 = *(a1 + 20);
      v18 = *(a1 + 24);
      goto LABEL_33;
    }
  }

  v30 = v14 + 1;
  v31 = v15 + 4;
  *(a1 + 20) = v14 + 1;
  *(a1 + 24) = v15 + 4;
  if (v14 <= 255 && v15 <= 131068)
  {
    v32 = *a1;
    v33 = *(a1 + 28);
    v34 = (*a1 + v33);
    if (*v34 == 68 && v34[1] == 70)
    {
      v35 = v33 + 2;
      *(a1 + 20) = v30;
      *(a1 + 24) = v15 + 5;
      *(a1 + 28) = v33 + 2;
      if (v15 <= 131067 && (v36 = v32 + v35, *(v32 + v35) == 49) && *(v36 + 1) == 54 && *(v36 + 2) == 98)
      {
        *(a1 + 28) = v33 + 5;
        *(a1 + 20) = v14;
        v37 = "std::bfloat16_t";
      }

      else
      {
        *(a1 + 20) = v14;
        LODWORD(v90) = 0;
        if (!absl::lts_20240722::debugging_internal::ParseNumber(a1, &v90))
        {
          goto LABEL_93;
        }

        absl::lts_20240722::debugging_internal::MaybeAppend(a1, "_Float");
        absl::lts_20240722::debugging_internal::MaybeAppendDecimal(a1, v90);
        if (!absl::lts_20240722::debugging_internal::ParseOneCharToken(a1, 0x78u))
        {
          if (absl::lts_20240722::debugging_internal::ParseOneCharToken(a1, 0x5Fu))
          {
            goto LABEL_200;
          }

          goto LABEL_93;
        }

        v37 = "x";
      }

LABEL_199:
      absl::lts_20240722::debugging_internal::MaybeAppend(a1, v37);
      goto LABEL_200;
    }
  }

  *(a1 + 20) = v14;
  v38 = "v";
  v39 = off_278BC2F00;
  do
  {
    if (!v38[1])
    {
      v44 = *v38;
      v41 = v31 + 1;
      *(a1 + 20) = v30;
      *(a1 + 24) = v31 + 1;
      if (v14 <= 255 && v31 < 0x20000)
      {
        v45 = *(a1 + 28);
        if (*(*a1 + v45) == v44)
        {
          v48 = v45 + 1;
          goto LABEL_74;
        }
      }

      goto LABEL_49;
    }

    if (!v38[2])
    {
      v41 = v31 + 1;
      *(a1 + 20) = v30;
      *(a1 + 24) = v31 + 1;
      if (v14 <= 255 && v31 < 0x20000)
      {
        v42 = *(a1 + 28);
        v43 = (*a1 + v42);
        if (*v43 == *v38 && v43[1] == *(v38 + 1))
        {
          v48 = v42 + 2;
LABEL_74:
          *(a1 + 28) = v48;
          *(a1 + 20) = v14;
          v37 = *(v39 - 2);
          goto LABEL_199;
        }
      }

LABEL_49:
      *(a1 + 20) = v14;
      v31 = v41;
    }

    v40 = *v39;
    v39 += 3;
    v38 = v40;
  }

  while (v40);
  *(a1 + 20) = v30;
  *(a1 + 24) = v31 + 1;
  if (v14 < 256 && v31 < 0x20000)
  {
    *(a1 + 20) = v14 + 2;
    *(a1 + 24) = v31 + 2;
    if (v14 <= 254 && v31 <= 131070 && (v46 = *(a1 + 28), *(*a1 + v46) == 117))
    {
      *(a1 + 28) = v46 + 1;
      *(a1 + 20) = v30;
      if (absl::lts_20240722::debugging_internal::ParseSourceName(a1))
      {
        absl::lts_20240722::debugging_internal::ParseTemplateArgs(a1);
        v47 = *(a1 + 20) - 2;
        goto LABEL_202;
      }

      v14 = *(a1 + 20) - 1;
    }

    else
    {
      *(a1 + 20) = v30;
    }

LABEL_91:
    *(a1 + 28) = v88;
  }

LABEL_94:
  v55 = *(a1 + 24);
  *(a1 + 20) = v14;
  *(a1 + 24) = v55 + 1;
  if (v14 > 256 || v55 >= 0x20000)
  {
    goto LABEL_138;
  }

  v89 = *(a1 + 28);
  v56 = v14 + 1;
  v57 = v55 + 2;
  *(a1 + 20) = v14 + 1;
  *(a1 + 24) = v55 + 2;
  if (v14 >= 256 || v55 > 131070)
  {
    goto LABEL_125;
  }

  v57 = v55 + 3;
  *(a1 + 20) = v14 + 2;
  *(a1 + 24) = v55 + 3;
  if (v14 <= 254 && v55 <= 131069)
  {
    v58 = *(a1 + 28);
    v59 = (*a1 + v58);
    if (*v59 == 68 && v59[1] == 111)
    {
      v60 = v58 + 2;
      goto LABEL_103;
    }
  }

  v90 = *(a1 + 28);
  v57 = v55 + 4;
  *(a1 + 20) = v14 + 2;
  *(a1 + 24) = v55 + 4;
  if (v14 > 254 || v55 > 131068 || (v61 = *(a1 + 28), v62 = (*a1 + v61), *v62 != 68) || v62[1] != 79)
  {
LABEL_112:
    *(a1 + 20) = v56;
    v64 = v57;
    goto LABEL_113;
  }

  *(a1 + 28) = v61 + 2;
  *(a1 + 20) = v56;
  v63 = absl::lts_20240722::debugging_internal::ParseExpression(a1);
  v56 = *(a1 + 20);
  v64 = *(a1 + 24);
  if (!v63)
  {
LABEL_113:
    *(a1 + 28) = v90;
    v57 = v64 + 1;
    *(a1 + 20) = v56 + 1;
    *(a1 + 24) = v64 + 1;
    if (v56 <= 255 && v64 < 0x20000)
    {
      v66 = *(a1 + 28);
      v67 = (*a1 + v66);
      if (*v67 == 68 && v67[1] == 119)
      {
        *(a1 + 28) = v66 + 2;
        *(a1 + 20) = v56;
        if (!absl::lts_20240722::debugging_internal::ParseType(a1))
        {
          v56 = *(a1 + 20);
          v57 = *(a1 + 24);
          goto LABEL_124;
        }

          ;
        }

        v56 = *(a1 + 20);
        v68 = *(a1 + 24);
        v57 = v68 + 1;
        *(a1 + 20) = v56 + 1;
        *(a1 + 24) = v68 + 1;
        if (v56 <= 255 && v68 < 0x20000)
        {
          v65 = *(a1 + 28);
          if (*(*a1 + v65) == 69)
          {
            goto LABEL_122;
          }
        }
      }
    }

    *(a1 + 20) = v56;
LABEL_124:
    *(a1 + 28) = v90;
    goto LABEL_125;
  }

  v57 = v64 + 1;
  *(a1 + 20) = v56 + 1;
  *(a1 + 24) = v64 + 1;
  if (v56 > 255)
  {
    goto LABEL_112;
  }

  if (v64 >= 0x20000)
  {
    goto LABEL_112;
  }

  v65 = *(a1 + 28);
  if (*(*a1 + v65) != 69)
  {
    goto LABEL_112;
  }

LABEL_122:
  v60 = v65 + 1;
LABEL_103:
  *(a1 + 28) = v60;
  *(a1 + 20) = v56;
LABEL_125:
  *(a1 + 24) = v57 + 1;
  if (v56 <= 256 && v57 < 0x20000)
  {
    v69 = *(a1 + 28);
    v70 = (*a1 + v69);
    if (*v70 == 68 && v70[1] == 120)
    {
      *(a1 + 28) = v69 + 2;
    }
  }

  v14 = v56 - 1;
  *(a1 + 20) = v56;
  *(a1 + 24) = v57 + 2;
  if (v56 <= 256 && v57 <= 131070 && (v71 = *(a1 + 28), *(*a1 + v71) == 70))
  {
    *(a1 + 28) = v71 + 1;
    *(a1 + 20) = v14;
    absl::lts_20240722::debugging_internal::ParseOneCharToken(a1, 0x59u);
    if (absl::lts_20240722::debugging_internal::ParseBareFunctionType(a1))
    {
      absl::lts_20240722::debugging_internal::ParseCharClass(a1, "RO");
      v72 = absl::lts_20240722::debugging_internal::ParseOneCharToken(a1, 0x45u);
      v14 = *(a1 + 20);
      if (v72)
      {
        goto LABEL_201;
      }
    }

    else
    {
      v14 = *(a1 + 20);
    }
  }

  else
  {
    *(a1 + 20) = v14;
  }

  *(a1 + 28) = v89;
LABEL_138:
  *(a1 + 20) = v14 - 1;
  if (absl::lts_20240722::debugging_internal::ParseClassEnumType(a1))
  {
    goto LABEL_203;
  }

  v74 = *(a1 + 20);
  v73 = *(a1 + 24);
  v14 = v74 + 1;
  v75 = v73 + 1;
  *(a1 + 20) = v74 + 1;
  *(a1 + 24) = v73 + 1;
  if (v74 > 255 || v73 >= 0x20000)
  {
    goto LABEL_169;
  }

  v90 = *(a1 + 28);
  v76 = v74 + 2;
  v77 = v73 + 2;
  *(a1 + 20) = v74 + 2;
  *(a1 + 24) = v73 + 2;
  if (v74 > 254)
  {
    goto LABEL_158;
  }

  if (v73 > 131070)
  {
    goto LABEL_158;
  }

  v78 = *a1;
  v79 = *(a1 + 28);
  if (*(*a1 + v79) != 65)
  {
    goto LABEL_158;
  }

  v80 = v79 + 1;
  *(a1 + 20) = v14;
  *(a1 + 24) = v73 + 3;
  *(a1 + 28) = v79 + 1;
  if (v73 > 131069)
  {
    v77 = 131073;
    goto LABEL_158;
  }

  v77 = v73 + 4;
  *(a1 + 20) = v74 + 3;
  *(a1 + 24) = v73 + 4;
  if (v74 <= 253 && v73 != 131069 && *(v78 + v80) == 110)
  {
    LODWORD(v80) = v79 + 2;
    *(a1 + 28) = v79 + 2;
  }

  *(a1 + 20) = v76;
  if (*(v78 + v80) - 48 > 9)
  {
    goto LABEL_158;
  }

  v81 = (v80 + v78 + 1);
  do
  {
    v82 = *v81++;
    LODWORD(v80) = v80 + 1;
  }

  while ((v82 - 48) < 0xA);
  v77 = v73 + 5;
  *(a1 + 20) = v76;
  *(a1 + 24) = v73 + 5;
  *(a1 + 28) = v80;
  if (v73 > 131067 || *(v78 + v80) != 95)
  {
LABEL_158:
    *(a1 + 20) = v14;
    goto LABEL_159;
  }

  *(a1 + 28) = v80 + 1;
  *(a1 + 20) = v14;
  if (absl::lts_20240722::debugging_internal::ParseType(a1))
  {
    goto LABEL_200;
  }

  v14 = *(a1 + 20);
  v77 = *(a1 + 24);
LABEL_159:
  *(a1 + 28) = v90;
  v75 = v77 + 1;
  *(a1 + 20) = v14 + 1;
  *(a1 + 24) = v77 + 1;
  if (v14 > 255)
  {
    goto LABEL_167;
  }

  if (v77 >= 0x20000)
  {
    goto LABEL_167;
  }

  v83 = *(a1 + 28);
  if (*(*a1 + v83) != 65)
  {
    goto LABEL_167;
  }

  *(a1 + 28) = v83 + 1;
  *(a1 + 20) = v14;
  absl::lts_20240722::debugging_internal::ParseExpression(a1);
  v14 = *(a1 + 20);
  v84 = *(a1 + 24);
  v75 = v84 + 1;
  *(a1 + 20) = v14 + 1;
  *(a1 + 24) = v84 + 1;
  if (v14 > 255 || v84 >= 0x20000 || (v85 = *(a1 + 28), *(*a1 + v85) != 95))
  {
LABEL_167:
    *(a1 + 20) = v14;
LABEL_168:
    *(a1 + 28) = v90;
    v74 = v14 - 1;
LABEL_169:
    *(a1 + 20) = v14;
    *(a1 + 24) = v75 + 1;
    if (v74 <= 255 && v75 < 0x20000)
    {
      v90 = *(a1 + 28);
      *(a1 + 20) = v74 + 2;
      *(a1 + 24) = v75 + 2;
      if (v74 <= 254 && v75 <= 131070 && (v86 = *(a1 + 28), *(*a1 + v86) == 77))
      {
        *(a1 + 28) = v86 + 1;
        *(a1 + 20) = v14;
        if (absl::lts_20240722::debugging_internal::ParseType(a1))
        {
          v87 = absl::lts_20240722::debugging_internal::ParseType(a1);
          v14 = *(a1 + 20);
          if (v87)
          {
            goto LABEL_201;
          }
        }

        else
        {
          v14 = *(a1 + 20);
        }
      }

      else
      {
        *(a1 + 20) = v14;
      }

      *(a1 + 28) = v90;
      v74 = v14 - 1;
    }

    *(a1 + 20) = v74;
    if (absl::lts_20240722::debugging_internal::ParseDecltype(a1) & 1) != 0 || (absl::lts_20240722::debugging_internal::ParseSubstitution(a1, 0) & 1) != 0 || absl::lts_20240722::debugging_internal::ParseTemplateTemplateParam(a1) && (absl::lts_20240722::debugging_internal::ParseTemplateArgs(a1))
    {
      goto LABEL_203;
    }

    *(a1 + 28) = v88;
    if (absl::lts_20240722::debugging_internal::ParseTemplateParam(a1) & 1) != 0 || absl::lts_20240722::debugging_internal::ParseTwoCharToken(a1, "Dv") && absl::lts_20240722::debugging_internal::ParseNumber(a1, 0) && absl::lts_20240722::debugging_internal::ParseOneCharToken(a1, 0x5Fu) && (absl::lts_20240722::debugging_internal::ParseType(a1))
    {
      goto LABEL_203;
    }

    *(a1 + 28) = v88;
    if (absl::lts_20240722::debugging_internal::ParseTwoCharToken(a1, "Dv"))
    {
      if (absl::lts_20240722::debugging_internal::ParseExpression(a1) && absl::lts_20240722::debugging_internal::ParseOneCharToken(a1, 0x5Fu) && (absl::lts_20240722::debugging_internal::ParseType(a1) & 1) != 0)
      {
        goto LABEL_203;
      }
    }

    *(a1 + 28) = v88;
    if (absl::lts_20240722::debugging_internal::ParseTwoCharToken(a1, "Dk"))
    {
      if (absl::lts_20240722::debugging_internal::ParseName(a1))
      {
        goto LABEL_203;
      }
    }

    *(a1 + 28) = v88;
    result = absl::lts_20240722::debugging_internal::ParseLongToken(a1);
    goto LABEL_204;
  }

  *(a1 + 28) = v85 + 1;
  *(a1 + 20) = v14;
  if ((absl::lts_20240722::debugging_internal::ParseType(a1) & 1) == 0)
  {
    v14 = *(a1 + 20);
    v75 = *(a1 + 24);
    goto LABEL_168;
  }

LABEL_200:
  v14 = *(a1 + 20);
LABEL_201:
  v47 = v14 - 1;
LABEL_202:
  *(a1 + 20) = v47;
LABEL_203:
  result = 1;
LABEL_204:
  v4 = *(a1 + 20) - 1;
LABEL_205:
  *(a1 + 20) = v4;
  return result;
}

void sub_23C957DCC(_Unwind_Exception *a1)
{
  v2 = *(v1 + 20) - 1;
  *(v1 + 20) = v2--;
  *(v1 + 20) = v2;
  *(v1 + 20) = v2 - 1;
  _Unwind_Resume(a1);
}

uint64_t absl::lts_20240722::debugging_internal::ParseFunctionParam(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 20);
  v3 = vadd_s32(v2, 0x100000001);
  *(a1 + 20) = v3;
  v4 = v2.i32[0];
  if (v2.i32[0] <= 255 && v2.i32[1] < 0x20000)
  {
    v39 = *(a1 + 28);
    v5 = v2.i32[1] + 2;
    *(a1 + 20) = v2.i32[0] + 2;
    *(a1 + 24) = v2.i32[1] + 2;
    v6 = v3.i32[0];
    if (v2.i32[0] >= 255 || v2.i32[1] > 131070)
    {
      goto LABEL_24;
    }

    v8 = *(a1 + 28);
    v9 = (*a1 + v8);
    if (*v9 != 102 || v9[1] != 112)
    {
      goto LABEL_24;
    }

    *(a1 + 28) = v8 + 2;
    *(a1 + 20) = v3.i32[0];
    v10 = a1;
    absl::lts_20240722::debugging_internal::ParseCVQualifiers(a1);
    a1 = v10;
    v6 = *(v10 + 20);
    v11 = *(v10 + 24);
    v12 = v6 + 1;
    v13 = v11 + 1;
    *(v10 + 24) = v11 + 1;
    if (v6 <= 255 && v11 < 0x20000)
    {
      v13 = v11 + 2;
      *(v10 + 20) = v6 + 2;
      *(v10 + 24) = v11 + 2;
      v14 = *v10;
      v15 = *(v10 + 28);
      if (v6 <= 254 && v11 <= 131070 && *(v14 + v15) == 110)
      {
        *(v10 + 28) = ++v15;
      }

      *(v10 + 20) = v12;
      if (*(v14 + v15) - 48 <= 9)
      {
        v16 = (v15 + v14 + 1);
        do
        {
          v17 = *v16++;
          ++v15;
        }

        while ((v17 - 48) < 0xA);
        *(v10 + 28) = v15;
      }
    }

    v5 = v13 + 1;
    *(v10 + 20) = v12;
    *(v10 + 24) = v13 + 1;
    if (v6 <= 255 && v13 < 0x20000 && (v18 = *(v10 + 28), *(*v10 + v18) == 95))
    {
      v19 = v18 + 1;
    }

    else
    {
LABEL_24:
      *(a1 + 28) = v39;
      v20 = v6 + 1;
      v21 = v5 + 1;
      *(a1 + 20) = v6 + 1;
      *(a1 + 24) = v5 + 1;
      if (v6 <= 255 && v5 < 0x20000)
      {
        v22 = *a1;
        v23 = *(a1 + 28);
        v24 = (*a1 + v23);
        if (*v24 == 102 && v24[1] == 76)
        {
          v25 = v23 + 2;
          *(a1 + 20) = v6;
          *(a1 + 24) = v5 + 2;
          *(a1 + 28) = v23 + 2;
          if (v5 < 0x1FFFF)
          {
            *(a1 + 20) = v6 + 2;
            *(a1 + 24) = v5 + 3;
            if (v6 <= 254 && v5 != 131070 && *(v22 + v25) == 110)
            {
              LODWORD(v25) = v23 + 3;
              *(a1 + 28) = v23 + 3;
            }

            *(a1 + 20) = v20;
            if (*(v22 + v25) - 48 <= 9)
            {
              v26 = (v25 + v22 + 1);
              do
              {
                v27 = *v26++;
                LODWORD(v25) = v25 + 1;
              }

              while ((v27 - 48) < 0xA);
              *(a1 + 28) = v25;
            }

            v21 = v5 + 4;
            *(a1 + 20) = v20;
            *(a1 + 24) = v5 + 4;
            if (v5 <= 131068 && *(v22 + v25) == 112)
            {
              *(a1 + 28) = v25 + 1;
              *(a1 + 20) = v6;
              v28 = a1;
              absl::lts_20240722::debugging_internal::ParseCVQualifiers(a1);
              a1 = v28;
              v6 = *(v28 + 20);
              v29 = *(v28 + 24);
              v20 = v6 + 1;
              v30 = v29 + 1;
              *(v28 + 24) = v29 + 1;
              if (v6 <= 255 && v29 < 0x20000)
              {
                v30 = v29 + 2;
                *(v28 + 20) = v6 + 2;
                *(v28 + 24) = v29 + 2;
                v31 = *v28;
                v32 = *(v28 + 28);
                if (v6 <= 254 && v29 <= 131070 && *(v31 + v32) == 110)
                {
                  *(v28 + 28) = ++v32;
                }

                *(v28 + 20) = v20;
                if (*(v31 + v32) - 48 <= 9)
                {
                  v33 = (v32 + v31 + 1);
                  do
                  {
                    v34 = *v33++;
                    ++v32;
                  }

                  while ((v34 - 48) < 0xA);
                  *(v28 + 28) = v32;
                }
              }

              v21 = v30 + 1;
              *(v28 + 20) = v20;
              *(v28 + 24) = v30 + 1;
              if (v6 <= 255 && v30 < 0x20000)
              {
                v35 = *(v28 + 28);
                if (*(*v28 + v35) == 95)
                {
                  v19 = v35 + 1;
                  goto LABEL_60;
                }
              }
            }
          }

          else
          {
            *(a1 + 20) = v20;
            *(a1 + 24) = v5 + 3;
            v21 = 131074;
          }
        }
      }

      v1 = 0;
      *(a1 + 28) = v39;
      *(a1 + 20) = v20;
      *(a1 + 24) = v21 + 1;
      if (v6 > 255 || v21 >= 0x20000)
      {
        goto LABEL_62;
      }

      v36 = *(a1 + 28);
      v37 = (*a1 + v36);
      if (*v37 != 102 || v37[1] != 112 || v37[2] != 84)
      {
        v1 = 0;
        goto LABEL_62;
      }

      v19 = v36 + 3;
    }

LABEL_60:
    *(a1 + 28) = v19;
    v1 = 1;
LABEL_62:
    *(a1 + 20) = v6;
    v4 = v6 - 1;
  }

  *(a1 + 20) = v4;
  return v1;
}

uint64_t absl::lts_20240722::debugging_internal::ParseBracedExpression(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 20);
  v4 = vadd_s32(v3, 0x100000001);
  *(a1 + 20) = v4;
  v5 = v3.i32[0];
  if (v3.i32[0] <= 255 && v3.i32[1] < 0x20000)
  {
    v15 = *(a1 + 28);
    *(a1 + 20) = vadd_s32(v3, 0x200000002);
    v6 = v3.i32[0] <= 254 && v3.i32[1] <= 131070;
    if (v6 && (v7 = *(a1 + 28), v8 = (*a1 + v7), *v8 == 100) && v8[1] == 105)
    {
      *(a1 + 28) = v7 + 2;
      *(a1 + 20) = v4.i32[0];
      if (absl::lts_20240722::debugging_internal::ParseSourceName(a1) && (absl::lts_20240722::debugging_internal::ParseBracedExpression(a1) & 1) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      *(a1 + 20) = v4.i32[0];
    }

    *(a1 + 28) = v15;
    v9 = *(a1 + 20);
    *(a1 + 20) = vadd_s32(v9, 0x100000001);
    if (v9.i32[0] <= 255 && v9.i32[1] < 0x20000 && (v10 = *(a1 + 28), v11 = (*a1 + v10), *v11 == 100) && v11[1] == 120)
    {
      *(a1 + 28) = v10 + 2;
      *(a1 + 20) = v9.i32[0];
      if (absl::lts_20240722::debugging_internal::ParseExpression(a1) && (absl::lts_20240722::debugging_internal::ParseBracedExpression(a1) & 1) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      *(a1 + 20) = v9.i32[0];
    }

    *(a1 + 28) = v15;
    v12 = *(a1 + 20);
    *(a1 + 20) = vadd_s32(v12, 0x100000001);
    if (v12.i32[0] <= 255 && v12.i32[1] < 0x20000 && (v13 = *(a1 + 28), v14 = (*a1 + v13), *v14 == 100) && v14[1] == 88)
    {
      *(a1 + 28) = v13 + 2;
      *(a1 + 20) = v12.i32[0];
      if (absl::lts_20240722::debugging_internal::ParseExpression(a1) && absl::lts_20240722::debugging_internal::ParseExpression(a1) && (absl::lts_20240722::debugging_internal::ParseBracedExpression(a1) & 1) != 0)
      {
LABEL_29:
        result = 1;
LABEL_32:
        v5 = *(a1 + 20) - 1;
        goto LABEL_33;
      }
    }

    else
    {
      *(a1 + 20) = v12.i32[0];
    }

    *(a1 + 28) = v15;
    result = absl::lts_20240722::debugging_internal::ParseExpression(a1);
    goto LABEL_32;
  }

LABEL_33:
  *(a1 + 20) = v5;
  return result;
}

uint64_t absl::lts_20240722::debugging_internal::ParseInitializer(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 20);
  v4 = vadd_s32(v3, 0x100000001);
  *(a1 + 20) = v4;
  v5 = v3.i32[0];
  if (v3.i32[0] <= 255 && v3.i32[1] < 0x20000)
  {
    v18 = *(a1 + 28);
    v6 = v3.i32[1] + 2;
    *(a1 + 20) = v3.i32[0] + 2;
    *(a1 + 24) = v3.i32[1] + 2;
    v7 = v4.i32[0];
    if (v3.i32[0] >= 255 || v3.i32[1] > 131070)
    {
      goto LABEL_16;
    }

    v9 = *(a1 + 28);
    v10 = (*a1 + v9);
    if (*v10 != 112)
    {
      goto LABEL_16;
    }

    if (v10[1] != 105)
    {
      goto LABEL_16;
    }

    *(a1 + 28) = v9 + 2;
    *(a1 + 20) = v4.i32[0];
      ;
    }

    v7 = *(a1 + 20);
    v11 = *(a1 + 24);
    v6 = v11 + 1;
    *(a1 + 20) = v7 + 1;
    *(a1 + 24) = v11 + 1;
    if (v7 <= 255 && v11 < 0x20000 && (v12 = *(a1 + 28), *(*a1 + v12) == 69))
    {
      v13 = v12 + 1;
    }

    else
    {
LABEL_16:
      *(a1 + 28) = v18;
      *(a1 + 20) = v7 + 1;
      *(a1 + 24) = v6 + 1;
      if (v7 > 255)
      {
        goto LABEL_27;
      }

      if (v6 >= 0x20000)
      {
        goto LABEL_27;
      }

      v14 = *(a1 + 28);
      v15 = (*a1 + v14);
      if (*v15 != 105)
      {
        goto LABEL_27;
      }

      if (v15[1] != 108)
      {
        goto LABEL_27;
      }

      *(a1 + 28) = v14 + 2;
      *(a1 + 20) = v7;
        ;
      }

      v16 = *(a1 + 20);
      *(a1 + 20) = vadd_s32(v16, 0x100000001);
      v7 = v16.i32[0];
      if (v16.i32[0] > 255 || v16.i32[1] >= 0x20000 || (v17 = *(a1 + 28), *(*a1 + v17) != 69))
      {
LABEL_27:
        result = 0;
        *(a1 + 20) = v7;
        *(a1 + 28) = v18;
        goto LABEL_28;
      }

      v13 = v17 + 1;
    }

    *(a1 + 28) = v13;
    *(a1 + 20) = v7;
    result = 1;
LABEL_28:
    v5 = v7 - 1;
  }

  *(a1 + 20) = v5;
  return result;
}

uint64_t absl::lts_20240722::debugging_internal::ParseOperatorName(uint64_t a1, _DWORD *a2)
{
  v2 = 0;
  v3 = *(a1 + 20);
  v4 = vadd_s32(v3, 0x100000001);
  *(a1 + 20) = v4;
  v5 = v3.i32[0];
  if (v3.i32[0] <= 255 && v3.i32[1] < 0x20000)
  {
    v7 = a1 + 28;
    v6 = *(a1 + 28);
    v8 = (*a1 + v6);
    v2 = *v8;
    if (*v8)
    {
      v2 = v8[1];
      if (v8[1])
      {
        v60 = *v7;
        v61 = *(a1 + 36);
        v9 = *(a1 + 40);
        v10 = v3.i32[1] + 2;
        *(a1 + 20) = v3.i32[0] + 2;
        *(a1 + 24) = v3.i32[1] + 2;
        v11 = v4.i32[0];
        if (v3.i32[0] < 255 && v3.i32[1] <= 131070 && *v8 == 99 && v8[1] == 118)
        {
          *(a1 + 28) = v6 + 2;
          *(a1 + 20) = v4.i32[0];
          v12 = v9;
          if ((v9 & 0x80000000) != 0)
          {
            v13 = a1;
            v14 = a2;
            absl::lts_20240722::debugging_internal::MaybeAppendWithLength(a1, "operator ", 9);
            a2 = v14;
            a1 = v13;
            v12 = v13[10];
            v11 = v13[5];
            v10 = v13[6];
          }

          *(a1 + 40) = v12 & 0x8000FFFF;
          v15 = v11 + 1;
          *(a1 + 20) = v11 + 1;
          *(a1 + 24) = v10 + 1;
          if (v11 <= 255 && v10 < 0x20000)
          {
            v62 = *v7;
            v16 = *a1;
            v17 = *(a1 + 28);
            v18 = v11 + 2;
            *(a1 + 20) = v11 + 2;
            *(a1 + 24) = v10 + 2;
            if (v11 > 254 || v10 > 131070)
            {
              v19 = a2;
              v22 = v17;
            }

            else
            {
              v19 = a2;
              v20 = (v16 + v17);
              v21 = v10 + 1;
              v22 = v17;
              do
              {
                v23 = *v20++;
                v24 = (1 << (v23 - 67)) & 0x80000008B111;
                if ((v23 - 67) > 0x2F || v24 == 0)
                {
                  break;
                }

                ++v22;
                *(a1 + 20) = v18;
                *(a1 + 24) = v21 + 2;
                *(a1 + 28) = v22;
                ++v21;
              }

              while (v21 < 0x20000);
            }

            *(a1 + 20) = v15;
            v26 = a1;
            v27 = absl::lts_20240722::debugging_internal::ParseType(a1);
            a2 = v19;
            if (v27)
            {
              a1 = v26;
              if (v17 == v22)
              {
LABEL_25:
                --*(a1 + 20);
                *(a1 + 40) = *(a1 + 40) & 0x8000FFFF | ((HIWORD(v9) & 0x7FFF) << 16);
                v2 = 1;
                if (a2)
                {
                  *a2 = 1;
                }

                goto LABEL_59;
              }

              v52 = v17 - v22;
              v53 = (v22 + v16 - 1);
              while (1)
              {
                v55 = *v53--;
                v54 = v55;
                if (v55 > 79)
                {
                  if (v54 > 85)
                  {
                    if (v54 == 86)
                    {
                      if ((*(a1 + 40) & 0x80000000) == 0)
                      {
                        goto LABEL_64;
                      }

                      v56 = v26;
                      v57 = a2;
                      v58 = " volatile";
                      v59 = 9;
                    }

                    else
                    {
                      if (v54 != 114 || (*(a1 + 40) & 0x80000000) == 0)
                      {
                        goto LABEL_64;
                      }

                      v56 = v26;
                      v57 = a2;
                      v58 = " restrict";
                      v59 = 9;
                    }
                  }

                  else if (v54 == 80)
                  {
                    if ((*(a1 + 40) & 0x80000000) == 0)
                    {
                      goto LABEL_64;
                    }

                    v56 = v26;
                    v57 = a2;
                    v58 = "*";
                    v59 = 1;
                  }

                  else
                  {
                    if (v54 != 82 || (*(a1 + 40) & 0x80000000) == 0)
                    {
                      goto LABEL_64;
                    }

                    v56 = v26;
                    v57 = a2;
                    v58 = "&";
                    v59 = 1;
                  }
                }

                else if (v54 > 74)
                {
                  if (v54 == 75)
                  {
                    if ((*(a1 + 40) & 0x80000000) == 0)
                    {
                      goto LABEL_64;
                    }

                    v56 = v26;
                    v57 = a2;
                    v58 = " const";
                    v59 = 6;
                  }

                  else
                  {
                    if (v54 != 79 || (*(a1 + 40) & 0x80000000) == 0)
                    {
                      goto LABEL_64;
                    }

                    v56 = v26;
                    v57 = a2;
                    v58 = "&&";
                    v59 = 2;
                  }
                }

                else if (v54 == 67)
                {
                  if ((*(a1 + 40) & 0x80000000) == 0)
                  {
                    goto LABEL_64;
                  }

                  v56 = v26;
                  v57 = a2;
                  v58 = " _Complex";
                  v59 = 9;
                }

                else
                {
                  if (v54 != 71 || (*(a1 + 40) & 0x80000000) == 0)
                  {
                    goto LABEL_64;
                  }

                  v56 = v26;
                  v57 = a2;
                  v58 = " _Imaginary";
                  v59 = 11;
                }

                absl::lts_20240722::debugging_internal::MaybeAppendWithLength(v56, v58, v59);
                a2 = v57;
                a1 = v26;
LABEL_64:
                if (!++v52)
                {
                  goto LABEL_25;
                }
              }
            }

            *v7 = v62;
            a1 = v26;
            v11 = *(v26 + 20) - 1;
          }
        }

        *v7 = v60;
        *(v7 + 8) = v61;
        *(a1 + 40) = v9;
        v28 = v11 + 1;
        v29 = *(a1 + 24);
        v30 = v29 + 1;
        *(a1 + 20) = v11 + 1;
        *(a1 + 24) = v29 + 1;
        if (v11 <= 255 && v29 < 0x20000 && (v31 = *(a1 + 28), v32 = (*a1 + v31), *v32 == 108) && v32[1] == 105)
        {
          v33 = a2;
          *(a1 + 28) = v31 + 2;
          *(a1 + 20) = v11;
          if ((v9 & 0x80000000) != 0)
          {
            v34 = a1;
            absl::lts_20240722::debugging_internal::MaybeAppendWithLength(a1, "operator ", 11);
            a1 = v34;
          }

          v35 = a1;
          if (absl::lts_20240722::debugging_internal::ParseSourceName(a1))
          {
            v2 = 1;
            a1 = v35;
LABEL_59:
            v5 = *(a1 + 20) - 1;
            goto LABEL_60;
          }

          a1 = v35;
          v11 = *(v35 + 20);
          v30 = *(v35 + 24);
          v28 = v11 + 1;
          a2 = v33;
        }

        else
        {
          *(a1 + 20) = v11;
        }

        *v7 = v60;
        *(v7 + 8) = v61;
        *(a1 + 40) = v9;
        *(a1 + 20) = v28;
        *(a1 + 24) = v30 + 1;
        if (v11 <= 255 && v30 < 0x20000 && (v36 = *a1, v37 = *(a1 + 28), *(*a1 + v37) == 118) && (*(a1 + 28) = v37 + 1, *(a1 + 20) = v11, v38 = *(v36 + v37 + 1), *(a1 + 20) = v28, *(a1 + 24) = v30 + 2, v30 <= 131070) && *(v36 + v37 + 1) - 48 <= 9)
        {
          *(a1 + 28) = v37 + 2;
          *(a1 + 20) = v11;
          if (a2)
          {
            *a2 = v38 - 48;
          }

          v39 = a1;
          v40 = a2;
          v41 = absl::lts_20240722::debugging_internal::ParseSourceName(a1);
          a2 = v40;
          v42 = v41;
          a1 = v39;
          if (v42)
          {
            v2 = 1;
            goto LABEL_59;
          }
        }

        else
        {
          *(a1 + 20) = v11;
        }

        *(v7 + 8) = v61;
        *v7 = v60;
        *(a1 + 40) = v9;
        v43 = (*a1 + *(a1 + 28));
        v44 = *v43;
        if ((v44 - 97) > 0x19 || (v45 = v43[1], (v45 & 0xFFFFFFDF) - 65 > 0x19))
        {
LABEL_58:
          v2 = 0;
        }

        else
        {
          v46 = "nw";
          v47 = off_278BC3200;
          while (v44 != *v46 || v45 != *(v46 + 1))
          {
            v48 = *v47;
            v47 += 3;
            v46 = v48;
            if (!v48)
            {
              goto LABEL_58;
            }
          }

          if (a2)
          {
            *a2 = *(v47 - 2);
          }

          v49 = a1;
          absl::lts_20240722::debugging_internal::MaybeAppend(a1, "operator");
          v50 = *(v47 - 2);
          if (*v50 - 97 <= 0x19)
          {
            absl::lts_20240722::debugging_internal::MaybeAppend(v49, " ");
          }

          absl::lts_20240722::debugging_internal::MaybeAppend(v49, v50);
          a1 = v49;
          *(v49 + 28) += 2;
          v2 = 1;
        }

        goto LABEL_59;
      }
    }
  }

LABEL_60:
  *(a1 + 20) = v5;
  return v2;
}

void sub_23C958C88(_Unwind_Exception *a1)
{
  v2 = *(v1 + 20);
  *(v1 + 20) = v2 - 1;
  *(v1 + 20) = v2 - 2;
  _Unwind_Resume(a1);
}

uint64_t absl::lts_20240722::debugging_internal::ParseTemplateArg(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 20);
  v4 = vadd_s32(v3, 0x100000001);
  *(a1 + 20) = v4;
  v5 = v3.i32[0];
  if (v3.i32[0] <= 255 && v3.i32[1] < 0x20000)
  {
    v16 = *(a1 + 28);
    v6 = v3.i32[1] + 2;
    *(a1 + 20) = v3.i32[0] + 2;
    *(a1 + 24) = v3.i32[1] + 2;
    v7 = v4.i32[0];
    if (v3.i32[0] < 255 && v3.i32[1] <= 131070)
    {
      v9 = *(a1 + 28);
      if (*(*a1 + v9) == 74)
      {
        *(a1 + 28) = v9 + 1;
        *(a1 + 20) = v4.i32[0];
          ;
        }

        v7 = *(a1 + 20);
        v10 = *(a1 + 24);
        v6 = v10 + 1;
        *(a1 + 20) = v7 + 1;
        *(a1 + 24) = v10 + 1;
        if (v7 <= 255 && v10 < 0x20000)
        {
          v11 = *(a1 + 28);
          if (*(*a1 + v11) == 69)
          {
            *(a1 + 28) = v11 + 1;
            *(a1 + 20) = v7;
            result = 1;
LABEL_28:
            v5 = *(a1 + 20) - 1;
            goto LABEL_29;
          }
        }
      }
    }

    *(a1 + 28) = v16;
    *(a1 + 20) = v7;
    *(a1 + 24) = v6 + 1;
    if (v7 <= 255 && v6 < 0x20000)
    {
      v12 = v7 + 1;
      *(a1 + 20) = v7 + 2;
      *(a1 + 24) = v6 + 2;
      if (v7 <= 254 && v6 <= 131070 && (v13 = *(a1 + 28), *(*a1 + v13) == 76))
      {
        *(a1 + 28) = v13 + 1;
        *(a1 + 20) = v12;
        if (absl::lts_20240722::debugging_internal::ParseSourceName(a1))
        {
          absl::lts_20240722::debugging_internal::ParseDiscriminator(a1);
          --*(a1 + 20);
          absl::lts_20240722::debugging_internal::ParseTemplateArgs(a1);
          v17 = *(a1 + 28);
          if ((absl::lts_20240722::debugging_internal::ParseExprCastValueAndTrailingE(a1) & 1) == 0)
          {
            *(a1 + 28) = v17;
            result = 1;
            goto LABEL_28;
          }

LABEL_27:
          result = 1;
          goto LABEL_28;
        }

        v7 = *(a1 + 20) - 1;
      }

      else
      {
        *(a1 + 20) = v12;
      }

      *(a1 + 28) = v16;
    }

    *(a1 + 20) = v7;
    if (absl::lts_20240722::debugging_internal::ParseType(a1) & 1) != 0 || (absl::lts_20240722::debugging_internal::ParseExprPrimary(a1))
    {
      goto LABEL_27;
    }

    *(a1 + 28) = v16;
    v14 = *(a1 + 20);
    *(a1 + 20) = vadd_s32(v14, 0x100000001);
    if (v14.i32[0] <= 255 && v14.i32[1] < 0x20000 && (v15 = *(a1 + 28), *(*a1 + v15) == 88))
    {
      *(a1 + 28) = v15 + 1;
      *(a1 + 20) = v14.i32[0];
      if (absl::lts_20240722::debugging_internal::ParseExpression(a1) && (absl::lts_20240722::debugging_internal::ParseOneCharToken(a1, 0x45u) & 1) != 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      *(a1 + 20) = v14.i32[0];
    }

    *(a1 + 28) = v16;
    if (!absl::lts_20240722::debugging_internal::ParseTemplateParamDecl(a1) || (absl::lts_20240722::debugging_internal::ParseTemplateArg(a1) & 1) == 0)
    {
      result = 0;
      *(a1 + 28) = v16;
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_29:
  *(a1 + 20) = v5;
  return result;
}

uint64_t absl::lts_20240722::debugging_internal::ParseUnresolvedName(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 20);
  v4 = vadd_s32(v3, 0x100000001);
  *(a1 + 20) = v4;
  v5 = v3.i32[0];
  if (v3.i32[0] <= 255 && v3.i32[1] < 0x20000)
  {
    v37 = *(a1 + 28);
    *(a1 + 20) = vadd_s32(v3, 0x200000002);
    if (v3.i32[0] <= 254 && v3.i32[1] <= 131070)
    {
      v7 = *(a1 + 28);
      v8 = (*a1 + v7);
      if (*v8 == 103 && v8[1] == 115)
      {
        *(a1 + 28) = v7 + 2;
      }
    }

    *(a1 + 20) = v4.i32[0];
    if (absl::lts_20240722::debugging_internal::ParseBaseUnresolvedName(a1))
    {
      goto LABEL_12;
    }

    *(a1 + 28) = v37;
    v9 = *(a1 + 20);
    *(a1 + 20) = vadd_s32(v9, 0x100000001);
    if (v9.i32[0] > 255 || v9.i32[1] >= 0x20000 || (v10 = *(a1 + 28), v11 = (*a1 + v10), *v11 != 115) || v11[1] != 114)
    {
      *(a1 + 20) = v9.i32[0];
      goto LABEL_20;
    }

    *(a1 + 28) = v10 + 2;
    *(a1 + 20) = v9.i32[0];
    if (absl::lts_20240722::debugging_internal::ParseTemplateParam(a1))
    {
      absl::lts_20240722::debugging_internal::ParseTemplateArgs(a1);
    }

    else if ((absl::lts_20240722::debugging_internal::ParseDecltype(a1) & 1) == 0 && !absl::lts_20240722::debugging_internal::ParseSubstitution(a1, 0))
    {
      goto LABEL_20;
    }

    if (absl::lts_20240722::debugging_internal::ParseBaseUnresolvedName(a1))
    {
      goto LABEL_12;
    }

LABEL_20:
    *(a1 + 28) = v37;
    v12 = *(a1 + 20);
    v13 = vadd_s32(v12, 0x100000001);
    *(a1 + 20) = v13;
    if (v12.i32[0] <= 255 && v12.i32[1] < 0x20000 && (v14 = *a1, v15 = *(a1 + 28), v16 = (*a1 + v15), *v16 == 115) && v16[1] == 114 && (*(a1 + 20) = v13.i32[0], *(a1 + 24) = v12.i32[1] + 2, *(a1 + 28) = v15 + 2, v12.i32[1] <= 131070) && *(v14 + v15 + 2) == 78)
    {
      *(a1 + 28) = v15 + 3;
      *(a1 + 20) = v12.i32[0];
      if (absl::lts_20240722::debugging_internal::ParseTemplateParam(a1))
      {
        absl::lts_20240722::debugging_internal::ParseTemplateArgs(a1);
LABEL_78:
        if (absl::lts_20240722::debugging_internal::ParseUnresolvedQualifierLevel(a1))
        {
          v33 = *(a1 + 20);
          v34 = vadd_s32(v33, 0x100000001);
          *(a1 + 20) = v34;
          v35 = v34.i32[0];
          if (v33.i32[0] <= 255)
          {
            v36 = v33.i32[1];
            while (v36 < 0x20000)
            {
              if (absl::lts_20240722::debugging_internal::ParseSourceName(a1))
              {
                absl::lts_20240722::debugging_internal::ParseTemplateArgs(a1);
              }

              else
              {
                v40 = *(a1 + 28);
                if (!absl::lts_20240722::debugging_internal::ParseSubstitution(a1, 0) || (absl::lts_20240722::debugging_internal::ParseTemplateArgs(a1) & 1) == 0)
                {
                  *(a1 + 28) = v40;
                  v35 = *(a1 + 20);
                  break;
                }
              }

              v35 = *(a1 + 20);
              v36 = *(a1 + 24);
              *(a1 + 24) = v36 + 1;
              if (v35 > 256)
              {
                break;
              }
            }
          }

          *(a1 + 20) = v35 - 1;
          if (absl::lts_20240722::debugging_internal::ParseOneCharToken(a1, 0x45u))
          {
            if (absl::lts_20240722::debugging_internal::ParseBaseUnresolvedName(a1))
            {
              goto LABEL_12;
            }
          }
        }

        goto LABEL_29;
      }

      if ((absl::lts_20240722::debugging_internal::ParseDecltype(a1) & 1) != 0 || absl::lts_20240722::debugging_internal::ParseSubstitution(a1, 0))
      {
        goto LABEL_78;
      }
    }

    else
    {
      *(a1 + 20) = v12.i32[0];
    }

LABEL_29:
    *(a1 + 28) = v37;
    v17 = *(a1 + 20);
    v18 = vadd_s32(v17, 0x100000001);
    *(a1 + 20) = v18;
    v19 = v17.i32[0];
    if (v17.i32[0] <= 255 && v17.i32[1] < 0x20000)
    {
      v20 = *(a1 + 28);
      v21 = (*a1 + v20);
      if (*v21 == 103 && v21[1] == 115)
      {
        *(a1 + 28) = v20 + 2;
      }
    }

    *(a1 + 20) = v18.i32[0];
    *(a1 + 24) = v17.i32[1] + 2;
    if (v17.i32[0] > 255)
    {
      goto LABEL_60;
    }

    if (v17.i32[1] > 131070)
    {
      goto LABEL_60;
    }

    v22 = *(a1 + 28);
    v23 = (*a1 + v22);
    if (*v23 != 115 || v23[1] != 114)
    {
      goto LABEL_60;
    }

    *(a1 + 28) = v22 + 2;
    *(a1 + 20) = v18.i32[0];
    *(a1 + 24) = v17.i32[1] + 3;
    if (v17.i32[1] > 131069)
    {
      *(a1 + 20) = v17.i32[0];
      v24 = 131073;
LABEL_62:
      *(a1 + 28) = v37;
      *(a1 + 20) = v19 + 1;
      *(a1 + 24) = v24 + 1;
      if (v19 <= 255 && v24 < 0x20000 && (v29 = *a1, v30 = *(a1 + 28), v31 = (*a1 + v30), *v31 == 115) && v31[1] == 114 && (v32 = v30 + 2, *(a1 + 20) = v19 + 1, *(a1 + 24) = v24 + 2, *(a1 + 28) = v30 + 2, v24 <= 131070) && *(v29 + v32) == 83 && *(v29 + v32 + 1) == 116)
      {
        *(a1 + 28) = v30 + 4;
        *(a1 + 20) = v19;
        if (absl::lts_20240722::debugging_internal::ParseSourceName(a1))
        {
          absl::lts_20240722::debugging_internal::ParseTemplateArgs(a1);
          if (absl::lts_20240722::debugging_internal::ParseSourceName(a1))
          {
            absl::lts_20240722::debugging_internal::ParseTemplateArgs(a1);
            goto LABEL_12;
          }
        }
      }

      else
      {
        *(a1 + 20) = v19;
      }

      result = 0;
      *(a1 + 28) = v37;
      goto LABEL_74;
    }

    if (absl::lts_20240722::debugging_internal::ParseSourceName(a1))
    {
      goto LABEL_48;
    }

    v38 = *(a1 + 28);
    if (!absl::lts_20240722::debugging_internal::ParseSubstitution(a1, 0) || (absl::lts_20240722::debugging_internal::ParseTemplateArgs(a1) & 1) == 0)
    {
      *(a1 + 28) = v38;
      v19 = *(a1 + 20) - 1;
LABEL_60:
      *(a1 + 20) = v19;
      goto LABEL_61;
    }

    while (1)
    {
      v26 = *(a1 + 20);
      v25 = *(a1 + 24);
      v27 = v25 + 1;
      *(a1 + 24) = v25 + 1;
      if (v26 > 256 || v25 >= 0x20000)
      {
        break;
      }

      if (absl::lts_20240722::debugging_internal::ParseSourceName(a1))
      {
LABEL_48:
        absl::lts_20240722::debugging_internal::ParseTemplateArgs(a1);
      }

      else
      {
        v39 = *(a1 + 28);
        if (!absl::lts_20240722::debugging_internal::ParseSubstitution(a1, 0) || (absl::lts_20240722::debugging_internal::ParseTemplateArgs(a1) & 1) == 0)
        {
          *(a1 + 28) = v39;
          v26 = *(a1 + 20);
          v27 = *(a1 + 24);
          break;
        }
      }
    }

    v19 = v26 - 1;
    *(a1 + 24) = v27 + 1;
    if (v26 > 256)
    {
      goto LABEL_60;
    }

    if (v27 >= 0x20000)
    {
      goto LABEL_60;
    }

    v28 = *(a1 + 28);
    if (*(*a1 + v28) != 69)
    {
      goto LABEL_60;
    }

    *(a1 + 28) = v28 + 1;
    *(a1 + 20) = v19;
    if ((absl::lts_20240722::debugging_internal::ParseBaseUnresolvedName(a1) & 1) == 0)
    {
      v19 = *(a1 + 20);
LABEL_61:
      v24 = *(a1 + 24);
      goto LABEL_62;
    }

LABEL_12:
    result = 1;
LABEL_74:
    v5 = *(a1 + 20) - 1;
  }

  *(a1 + 20) = v5;
  return result;
}

void sub_23C9594D4(_Unwind_Exception *a1)
{
  v2 = *(v1 + 20) - 1;
  *(v1 + 20) = v2;
  *(v1 + 20) = v2 - 1;
  _Unwind_Resume(a1);
}

void sub_23C9594EC(_Unwind_Exception *a1)
{
  v2 = *(v1 + 20) - 1;
  *(v1 + 20) = v2;
  *(v1 + 20) = v2 - 1;
  _Unwind_Resume(a1);
}

void sub_23C959504(_Unwind_Exception *a1)
{
  v2 = *(v1 + 20) - 1;
  *(v1 + 20) = v2;
  *(v1 + 20) = v2 - 1;
  _Unwind_Resume(a1);
}

void sub_23C95951C(_Unwind_Exception *a1)
{
  v2 = *(v1 + 20) - 1;
  *(v1 + 20) = v2;
  *(v1 + 20) = v2 - 1;
  _Unwind_Resume(a1);
}

void sub_23C959534(_Unwind_Exception *a1)
{
  v2 = *(v1 + 20) - 1;
  *(v1 + 20) = v2;
  *(v1 + 20) = v2 - 1;
  _Unwind_Resume(a1);
}

void sub_23C95954C(_Unwind_Exception *a1)
{
  v2 = *(v1 + 20) - 1;
  *(v1 + 20) = v2;
  *(v1 + 20) = v2 - 1;
  _Unwind_Resume(a1);
}

uint64_t absl::lts_20240722::debugging_internal::ParseRequirement(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 20);
  v3 = vadd_s32(v2, 0x100000001);
  *(a1 + 20) = v3;
  v4 = v2.i32[0];
  if (v2.i32[0] <= 255 && v2.i32[1] < 0x20000)
  {
    v20 = *(a1 + 28);
    v5 = v2.i32[1] + 2;
    *(a1 + 20) = v2.i32[0] + 2;
    *(a1 + 24) = v2.i32[1] + 2;
    v6 = v2.i32[0] <= 254 && v2.i32[1] <= 131070;
    if (v6 && (v7 = *(a1 + 28), *(*a1 + v7) == 88))
    {
      *(a1 + 28) = v7 + 1;
      *(a1 + 20) = v3.i32[0];
      v8 = a1;
      v9 = absl::lts_20240722::debugging_internal::ParseExpression(a1);
      a1 = v8;
      v10 = *(v8 + 20);
      v5 = HIDWORD(*(v8 + 20));
      if (v9)
      {
        v11 = vadd_s32(*(v8 + 20), 0x100000001);
        *(v8 + 20) = v11;
        if (v10 <= 255 && v5 < 0x20000)
        {
          v12 = *(v8 + 28);
          if (*(*v8 + v12) == 78)
          {
            *(v8 + 28) = v12 + 1;
          }
        }

        *(v8 + 20) = v11.i32[0];
        *(v8 + 24) = v5 + 2;
        if (v10 > 255 || v5 > 131070 || (v13 = *(v8 + 28), *(*v8 + v13) != 82))
        {
          *(v8 + 20) = v10;
          goto LABEL_34;
        }

        *(v8 + 28) = v13 + 1;
        *(v8 + 20) = v10;
        if (absl::lts_20240722::debugging_internal::ParseName(v8))
        {
LABEL_24:
          v1 = 1;
          a1 = v8;
LABEL_35:
          v4 = *(a1 + 20) - 1;
          goto LABEL_36;
        }

        a1 = v8;
        v10 = *(v8 + 20);
        v5 = *(v8 + 24);
      }
    }

    else
    {
      v10 = v3.i32[0];
      *(a1 + 20) = v3.i32[0];
    }

    *(a1 + 28) = v20;
    v14 = v5 + 1;
    *(a1 + 20) = v10 + 1;
    *(a1 + 24) = v5 + 1;
    if (v10 <= 255 && v5 < 0x20000 && (v15 = *(a1 + 28), *(*a1 + v15) == 84))
    {
      *(a1 + 28) = v15 + 1;
      *(a1 + 20) = v10;
      v8 = a1;
      if (absl::lts_20240722::debugging_internal::ParseType(a1))
      {
        goto LABEL_24;
      }

      a1 = v8;
      v10 = *(v8 + 20);
      v14 = *(v8 + 24);
      *(v8 + 28) = v20;
      *(v8 + 20) = v10 + 1;
      *(v8 + 24) = v14 + 1;
      if (v10 > 255)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *(a1 + 20) = v10;
      *(a1 + 28) = v20;
      *(a1 + 20) = v10 + 1;
      *(a1 + 24) = v14 + 1;
      if (v10 > 255)
      {
        goto LABEL_31;
      }
    }

    if (v14 < 0x20000)
    {
      v16 = *(a1 + 28);
      if (*(*a1 + v16) == 81)
      {
        *(a1 + 28) = v16 + 1;
        *(a1 + 20) = v10;
        v17 = a1;
        v18 = absl::lts_20240722::debugging_internal::ParseExpression(a1);
        a1 = v17;
        if ((v18 & 1) == 0)
        {
LABEL_32:
          v1 = 0;
          *(a1 + 28) = v20;
          goto LABEL_35;
        }

LABEL_34:
        v1 = 1;
        goto LABEL_35;
      }
    }

LABEL_31:
    *(a1 + 20) = v10;
    goto LABEL_32;
  }

LABEL_36:
  *(a1 + 20) = v4;
  return v1;
}

uint64_t absl::lts_20240722::debugging_internal::ParseExprCastValueAndTrailingE(uint64_t *a1)
{
  v1 = 0;
  v2 = *(a1 + 5);
  v3 = *(a1 + 6);
  *(a1 + 6) = v3 + 1;
  if (v2 <= 255 && v3 < 0x20000)
  {
    v33 = *(a1 + 28);
    v4 = v2 + 2;
    if (v2 <= 254 && v3 <= 131070)
    {
      v6 = v3 + 3;
      *(a1 + 5) = v2 + 3;
      *(a1 + 6) = v3 + 3;
      v7 = *a1;
      v8 = *(a1 + 7);
      if (v2 <= 253 && v3 <= 131069 && *(v7 + v8) == 110)
      {
        *(a1 + 7) = ++v8;
      }

      *(a1 + 5) = v4;
      if (*(v7 + v8) - 48 <= 9)
      {
        v9 = (v8 + v7 + 1);
        do
        {
          v10 = *v9++;
          ++v8;
        }

        while ((v10 - 48) < 0xA);
        v6 = v3 + 4;
        *(a1 + 5) = v4;
        *(a1 + 6) = v3 + 4;
        *(a1 + 7) = v8;
        if (v3 <= 131068 && *(v7 + v8) == 69)
        {
          v11 = v8 + 1;
          goto LABEL_35;
        }
      }
    }

    else
    {
      v6 = v3 + 2;
    }

    *(a1 + 28) = v33;
    *(a1 + 5) = v4;
    *(a1 + 6) = v6 + 1;
    if (v2 > 254)
    {
      goto LABEL_31;
    }

    if (v6 >= 0x20000)
    {
      goto LABEL_31;
    }

    v12 = *a1;
    v13 = *(a1 + 7);
    v14 = (*a1 + v13);
    v15 = *v14;
    if (!*v14)
    {
      goto LABEL_31;
    }

    v16 = 0;
    v17 = *a1 + v13;
    while (1)
    {
      v18 = v15 - 48;
      v19 = v15 - 97;
      if (v18 >= 0xA && v19 > 5)
      {
        break;
      }

      v21 = *++v17;
      v15 = v21;
      --v16;
      if (!v21)
      {
        goto LABEL_29;
      }
    }

    if (!v16)
    {
      goto LABEL_31;
    }

LABEL_29:
    v22 = v17 - *a1;
    *(a1 + 5) = v4;
    *(a1 + 6) = v6 + 2;
    *(a1 + 7) = v22;
    if (v6 >= 0x1FFFF)
    {
      *(a1 + 6) = v6 + 3;
LABEL_31:
      v1 = 0;
      *(a1 + 28) = v33;
      goto LABEL_32;
    }

    if (*(v12 + v22) == 69)
    {
      v11 = v22 + 1;
    }

    else
    {
      *(a1 + 6) = v6 + 3;
      if (v6 == 131070)
      {
        goto LABEL_31;
      }

      if (*(v12 + v22) != 95)
      {
        goto LABEL_31;
      }

      v24 = v22 + 1;
      *(a1 + 5) = v4;
      *(a1 + 6) = v6 + 4;
      *(a1 + 7) = v24;
      if (v6 == 131069)
      {
        goto LABEL_31;
      }

      v25 = *(v12 + v24);
      if (!*(v12 + v24))
      {
        goto LABEL_31;
      }

      v26 = 0;
      v27 = v12 + v24;
      while (1)
      {
        v28 = v25 - 48;
        v29 = v25 - 97;
        if (v28 >= 0xA && v29 > 5)
        {
          break;
        }

        v31 = *++v27;
        v25 = v31;
        --v26;
        if (!v31)
        {
          goto LABEL_48;
        }
      }

      if (!v26)
      {
        goto LABEL_31;
      }

LABEL_48:
      v32 = v27 - v12;
      *(a1 + 5) = v4;
      *(a1 + 6) = v6 + 5;
      *(a1 + 7) = v27 - v12;
      if (v6 == 131068 || *(v12 + v32) != 69)
      {
        goto LABEL_31;
      }

      v11 = v32 + 1;
    }

LABEL_35:
    *(a1 + 7) = v11;
    v1 = 1;
  }

LABEL_32:
  *(a1 + 5) = v2;
  return v1;
}

uint64_t absl::lts_20240722::debugging_internal::ParseClassEnumType(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 20);
  v4 = vadd_s32(v3, 0x100000001);
  *(a1 + 20) = v4;
  v5 = v3.i32[0];
  if (v3.i32[0] <= 255)
  {
    v6 = v3.i32[1];
    if (v3.i32[1] < 0x20000)
    {
      v13 = *(a1 + 28);
      v7 = vadd_s32(v3, 0x200000002);
      *(a1 + 20) = v7;
      if (v5 <= 254 && v6 <= 131070)
      {
        v9 = *(a1 + 28);
        v10 = (*a1 + v9);
        if (*v10 == 84 && v10[1] == 115)
        {
          goto LABEL_18;
        }
      }

      *(a1 + 20) = v7.i32[0];
      *(a1 + 24) = v6 + 3;
      if (v5 <= 254 && v6 <= 131069)
      {
        v9 = *(a1 + 28);
        v11 = (*a1 + v9);
        if (*v11 == 84 && v11[1] == 117)
        {
          goto LABEL_18;
        }
      }

      *(a1 + 20) = v7.i32[0];
      *(a1 + 24) = v6 + 4;
      if (v5 <= 254 && v6 <= 131068)
      {
        v9 = *(a1 + 28);
        v12 = (*a1 + v9);
        if (*v12 == 84 && v12[1] == 101)
        {
LABEL_18:
          *(a1 + 28) = v9 + 2;
        }
      }

      *(a1 + 20) = v4.i32[0];
      result = absl::lts_20240722::debugging_internal::ParseName(a1);
      if ((result & 1) == 0)
      {
        *(a1 + 28) = v13;
      }

      v5 = *(a1 + 20) - 1;
    }
  }

  *(a1 + 20) = v5;
  return result;
}

uint64_t absl::lts_20240722::debugging_internal::ParseTemplateTemplateParam(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 20);
  *(a1 + 20) = vadd_s32(v3, 0x100000001);
  if (v3.i32[0] > 255 || v3.i32[1] >= 0x20000)
  {
    goto LABEL_5;
  }

  if (absl::lts_20240722::debugging_internal::ParseTemplateParam(a1))
  {
    result = 1;
LABEL_5:
    --*(a1 + 20);
    return result;
  }

  result = absl::lts_20240722::debugging_internal::ParseSubstitution(a1, 0);
  --*(a1 + 20);
  return result;
}

uint64_t absl::lts_20240722::debugging_internal::ParseLongToken(uint64_t a1)
{
  v1 = *(a1 + 20);
  *(a1 + 20) = vadd_s32(v1, 0x100000001);
  if (v1.i32[0] <= 255 && v1.i32[1] < 0x20000 && (v2 = *(a1 + 28), v3 = (*a1 + v2), *v3 == 95))
  {
    if (v3[1] == 83 && v3[2] == 85 && v3[3] == 66 && v3[4] == 83 && v3[5] == 84 && v3[6] == 80 && v3[7] == 65 && v3[8] == 67 && v3[9] == 75 && v3[10] == 95)
    {
      *(a1 + 28) = v2 + 11;
      *(a1 + 20) = v1.i32[0];
      return 1;
    }

    else
    {
      *(a1 + 20) = v1.i32[0];
      return 0;
    }
  }

  else
  {
    *(a1 + 20) = v1.i32[0];
    return 0;
  }
}

uint64_t absl::lts_20240722::debugging_internal::MaybeAppendDecimal(uint64_t result, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if ((*(result + 40) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  v2 = 0;
  v3 = &v15;
  do
  {
    ++v2;
    v4 = v3 > &v14;
    *v3-- = a2 % 10 + 48;
    if (!v4)
    {
      break;
    }

    v5 = a2 - 10;
    a2 /= 10;
  }

  while (v5 < 0xFFFFFFED);
  if (!v2)
  {
LABEL_10:
    v12 = *(result + 32);
    if (v12 >= *(result + 16))
    {
      goto LABEL_12;
    }

LABEL_11:
    *(*(result + 8) + v12) = 0;
    goto LABEL_12;
  }

  v6 = -v2;
  v7 = 1 - v2;
  while (1)
  {
    v8 = *(result + 32);
    v9 = *(result + 16);
    if (v8 + 1 >= v9)
    {
      break;
    }

    v10 = *(&v16 + v6);
    v11 = *(result + 8);
    *(result + 32) = v8 + 1;
    *(v11 + v8) = v10;
    ++v7;
    ++v6;
    if (v7 == 1)
    {
      goto LABEL_10;
    }
  }

  *(result + 32) = v9 + 1;
  v12 = *(result + 32);
  if (v12 < *(result + 16))
  {
    goto LABEL_11;
  }

LABEL_12:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t absl::lts_20240722::debugging_internal::ParseTemplateParamDecl(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 20);
  v4 = vadd_s32(v3, 0x100000001);
  *(a1 + 20) = v4;
  v5 = v3.i32[0];
  if (v3.i32[0] <= 255)
  {
    v6 = v3.i32[1];
    if (v3.i32[1] < 0x20000)
    {
      v26 = *(a1 + 28);
      v7 = vadd_s32(v3, 0x200000002);
      *(a1 + 20) = v7;
      v8 = v5 <= 254 && v6 <= 131070;
      if (v8 && (v9 = *(a1 + 28), v10 = (*a1 + v9), *v10 == 84) && v10[1] == 121)
      {
        *(a1 + 28) = v9 + 2;
        *(a1 + 20) = v4.i32[0];
      }

      else
      {
        *(a1 + 20) = v7.i32[0];
        v11 = v6 + 3;
        *(a1 + 24) = v6 + 3;
        if (v5 <= 254 && v6 <= 131069 && (v12 = *(a1 + 28), v13 = (*a1 + v12), *v13 == 84) && v13[1] == 107)
        {
          *(a1 + 28) = v12 + 2;
          *(a1 + 20) = v4.i32[0];
          if (absl::lts_20240722::debugging_internal::ParseName(a1))
          {
            absl::lts_20240722::debugging_internal::ParseTemplateArgs(a1);
            goto LABEL_40;
          }

          v14 = *(a1 + 20);
          v11 = *(a1 + 24);
        }

        else
        {
          v14 = v4.i32[0];
          *(a1 + 20) = v4.i32[0];
        }

        *(a1 + 28) = v26;
        v15 = v14 + 1;
        v16 = v11 + 1;
        *(a1 + 20) = v14 + 1;
        *(a1 + 24) = v11 + 1;
        if (v14 <= 255 && v11 < 0x20000 && (v17 = *(a1 + 28), v18 = (*a1 + v17), *v18 == 84) && v18[1] == 110)
        {
          *(a1 + 28) = v17 + 2;
          *(a1 + 20) = v14;
          if (absl::lts_20240722::debugging_internal::ParseType(a1))
          {
            goto LABEL_40;
          }

          v14 = *(a1 + 20);
          v16 = *(a1 + 24);
          v15 = v14 + 1;
        }

        else
        {
          *(a1 + 20) = v14;
        }

        *(a1 + 28) = v26;
        v19 = v16 + 1;
        *(a1 + 20) = v15;
        *(a1 + 24) = v16 + 1;
        if (v14 > 255)
        {
          goto LABEL_35;
        }

        if (v16 >= 0x20000)
        {
          goto LABEL_35;
        }

        v20 = *(a1 + 28);
        v21 = (*a1 + v20);
        if (*v21 != 84)
        {
          goto LABEL_35;
        }

        if (v21[1] != 116)
        {
          goto LABEL_35;
        }

        *(a1 + 28) = v20 + 2;
        *(a1 + 20) = v14;
          ;
        }

        v14 = *(a1 + 20);
        v22 = *(a1 + 24);
        v15 = v14 + 1;
        v19 = v22 + 1;
        *(a1 + 20) = v14 + 1;
        *(a1 + 24) = v22 + 1;
        if (v14 > 255 || v22 >= 0x20000 || (v23 = *(a1 + 28), *(*a1 + v23) != 69))
        {
LABEL_35:
          *(a1 + 28) = v26;
          *(a1 + 20) = v15;
          *(a1 + 24) = v19 + 1;
          if (v14 <= 255 && v19 < 0x20000 && (v24 = *(a1 + 28), v25 = (*a1 + v24), *v25 == 84) && v25[1] == 112)
          {
            *(a1 + 28) = v24 + 2;
            *(a1 + 20) = v14;
            if (absl::lts_20240722::debugging_internal::ParseTemplateParamDecl(a1))
            {
              goto LABEL_40;
            }
          }

          else
          {
            *(a1 + 20) = v14;
          }

          result = 0;
          *(a1 + 28) = v26;
          goto LABEL_43;
        }

        *(a1 + 28) = v23 + 1;
        *(a1 + 20) = v14;
      }

LABEL_40:
      result = 1;
LABEL_43:
      v5 = *(a1 + 20) - 1;
    }
  }

  *(a1 + 20) = v5;
  return result;
}

uint64_t *absl::lts_20240722::debugging_internal::ParseDiscriminator(uint64_t *result)
{
  v1 = *(result + 20);
  *(result + 6) = v1.i32[1] + 1;
  if (v1.i32[0] <= 255 && v1.i32[1] < 0x20000)
  {
    v11 = *(result + 28);
    v2 = vadd_s32(v1, 0x200000002);
    *(result + 20) = v2;
    if (v1.i32[0] <= 254 && v1.i32[1] <= 131070)
    {
      v4 = *result;
      v5 = *(result + 7);
      if (*(*result + v5) == 95)
      {
        v6 = v5 + 1;
        *(result + 5) = v2.i32[0];
        *(result + 6) = v1.i32[1] + 3;
        *(result + 7) = v5 + 1;
        if (v1.i32[1] > 131069)
        {
          *(result + 6) = v1.i32[1] + 4;
LABEL_11:
          *(result + 5) = v1.i32[0] + 1;
LABEL_12:
          *(result + 28) = v11;
          goto LABEL_16;
        }

        if (*(v4 + v6) - 48 > 9)
        {
          *(result + 6) = v1.i32[1] + 4;
          if (v1.i32[1] == 131069 || *(v4 + v6) != 95)
          {
            goto LABEL_11;
          }

          v8 = v5 + 2;
          *(result + 6) = v1.i32[1] + 5;
          *(result + 7) = v5 + 2;
          if (v1.i32[1] == 131068)
          {
            goto LABEL_12;
          }

          *(result + 20) = vadd_s32(v1, 0x600000003);
          if (v1.i32[0] <= 253 && v1.i32[1] != 131067 && *(v4 + v8) == 110)
          {
            LODWORD(v8) = v5 + 3;
            *(result + 7) = v5 + 3;
          }

          *(result + 5) = v2.i32[0];
          if (*(v4 + v8) - 48 > 9)
          {
            goto LABEL_12;
          }

          v9 = (v8 + v4 + 1);
          do
          {
            v10 = *v9++;
            LODWORD(v8) = v8 + 1;
          }

          while ((v10 - 48) < 0xA);
          *(result + 5) = v2.i32[0];
          *(result + 6) = v1.i32[1] + 7;
          *(result + 7) = v8;
          if (v1.i32[1] > 131065 || *(v4 + v8) != 95)
          {
            goto LABEL_12;
          }

          v7 = v8 + 1;
        }

        else
        {
          v7 = v5 + 2;
        }

        *(result + 7) = v7;
      }
    }
  }

LABEL_16:
  *(result + 5) = v1.i32[0];
  return result;
}

uint64_t absl::lts_20240722::debugging_internal::ParseBaseUnresolvedName(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 20);
  *(a1 + 20) = vadd_s32(v3, 0x100000001);
  if (v3.i32[0] <= 255 && v3.i32[1] < 0x20000)
  {
    if (absl::lts_20240722::debugging_internal::ParseSourceName(a1))
    {
      goto LABEL_4;
    }

    v12 = *(a1 + 28);
    v4 = *(a1 + 20);
    v5 = *(a1 + 24);
    v6 = v4 + 1;
    v7 = v5 + 1;
    *(a1 + 20) = v4 + 1;
    *(a1 + 24) = v5 + 1;
    if (v4 <= 255 && v5 < 0x20000 && (v8 = *(a1 + 28), v9 = (*a1 + v8), *v9 == 111) && v9[1] == 110)
    {
      *(a1 + 28) = v8 + 2;
      *(a1 + 20) = v4;
      if (absl::lts_20240722::debugging_internal::ParseOperatorName(a1, 0))
      {
        goto LABEL_4;
      }

      v4 = *(a1 + 20);
      v7 = *(a1 + 24);
      v6 = v4 + 1;
    }

    else
    {
      *(a1 + 20) = v4;
    }

    *(a1 + 28) = v12;
    *(a1 + 20) = v6;
    *(a1 + 24) = v7 + 1;
    if (v4 <= 255 && v7 < 0x20000 && (v10 = *(a1 + 28), v11 = (*a1 + v10), *v11 == 100) && v11[1] == 110)
    {
      *(a1 + 28) = v10 + 2;
      *(a1 + 20) = v4;
      if (absl::lts_20240722::debugging_internal::ParseTemplateParam(a1))
      {
        goto LABEL_4;
      }

      if (absl::lts_20240722::debugging_internal::ParseDecltype(a1) & 1) != 0 || (absl::lts_20240722::debugging_internal::ParseSubstitution(a1, 0))
      {
        goto LABEL_5;
      }

      if (absl::lts_20240722::debugging_internal::ParseSourceName(a1))
      {
LABEL_4:
        absl::lts_20240722::debugging_internal::ParseTemplateArgs(a1);
LABEL_5:
        result = 1;
        goto LABEL_21;
      }
    }

    else
    {
      *(a1 + 20) = v4;
    }

    result = 0;
    *(a1 + 28) = v12;
  }

LABEL_21:
  --*(a1 + 20);
  return result;
}

uint64_t absl::lts_20240722::debugging_internal::ParseUnresolvedQualifierLevel(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 20);
  *(a1 + 20) = vadd_s32(v3, 0x100000001);
  if (v3.i32[0] <= 255 && v3.i32[1] < 0x20000)
  {
    if (absl::lts_20240722::debugging_internal::ParseSourceName(a1))
    {
      absl::lts_20240722::debugging_internal::ParseTemplateArgs(a1);
    }

    else
    {
      v4 = *(a1 + 28);
      if (!absl::lts_20240722::debugging_internal::ParseSubstitution(a1, 0) || (absl::lts_20240722::debugging_internal::ParseTemplateArgs(a1) & 1) == 0)
      {
        result = 0;
        *(a1 + 28) = v4;
        goto LABEL_9;
      }
    }

    result = 1;
  }

LABEL_9:
  --*(a1 + 20);
  return result;
}

uint64_t absl::lts_20240722::debugging_internal::ParseLocalNameSuffix(uint64_t a1)
{
  result = 0;
  v39 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 20);
  v4 = vadd_s32(v3, 0x100000001);
  *(a1 + 20) = v4;
  v5 = v3.i32[0];
  if (v3.i32[0] <= 255 && v3.i32[1] < 0x20000)
  {
    v37 = *(a1 + 28);
    v6 = vadd_s32(v3, 0x200000002);
    *(a1 + 20) = v6;
    v7 = v3.i32[0] <= 254 && v3.i32[1] <= 131070;
    if (v7 && (v8 = *a1, v9 = *(a1 + 28), *(*a1 + v9) == 100))
    {
      v10 = v9 + 1;
      *(a1 + 28) = v9 + 1;
      *(a1 + 20) = v4.i32[0];
      v11 = *(v8 + v9 + 1);
      if (v11 == 95 || (v11 - 48) <= 9)
      {
        *(a1 + 24) = v3.i32[1] + 3;
        if (v3.i32[1] > 131069)
        {
          goto LABEL_44;
        }

        v13 = 0;
        *(a1 + 20) = vadd_s32(v3, 0x400000003);
        if (v3.i32[0] <= 253 && v3.i32[1] != 131069)
        {
          if (*(v8 + v10) == 110)
          {
            v14 = v9 + 2;
            *(a1 + 28) = v9 + 2;
            v10 = v9 + 2;
            v13 = 1;
            goto LABEL_35;
          }

          v13 = 0;
        }

        v14 = v9 + 1;
LABEL_35:
        *(a1 + 20) = v6.i32[0];
        v18 = *(v8 + v10);
        if ((v18 - 48) <= 9)
        {
          v19 = 0;
          v20 = (v10 + v8 + 1);
          do
          {
            v19 = v18 + 10 * v19 - 48;
            v21 = *v20++;
            v18 = v21;
            ++v14;
          }

          while ((v21 - 48) < 0xA);
          *(a1 + 28) = v14;
          if (v13)
          {
            v22 = -v19;
          }

          else
          {
            v22 = v19;
          }

          *(a1 + 20) = v4.i32[0];
          v23 = v22 - 2147483646;
          v24 = v22 + 2;
          if (v23 < 0x80000001)
          {
            v25 = 1;
          }

          else
          {
            v25 = v24;
          }

          goto LABEL_45;
        }

LABEL_44:
        *(a1 + 20) = v4.i32[0];
        v25 = 1;
LABEL_45:
        if ((*(a1 + 40) & 0x80000000) != 0)
        {
          absl::lts_20240722::debugging_internal::MaybeAppendWithLength(a1, "::{default arg#", 15);
          if ((*(a1 + 40) & 0x80000000) != 0)
          {
            v26 = 0;
            do
            {
              v27 = &v38[v26 + 19];
              *v27 = v25 % 10 + 48;
              --v26;
              if (v27 <= v38)
              {
                break;
              }

              v28 = v25 - 10;
              v25 /= 10;
            }

            while (v28 < 0xFFFFFFED);
            if (v26)
            {
              v29 = v26 + 1;
              while (1)
              {
                v30 = *(a1 + 32);
                v31 = *(a1 + 16);
                if (v30 + 1 >= v31)
                {
                  break;
                }

                v32 = *(&v39 + v26);
                v33 = *(a1 + 8);
                *(a1 + 32) = v30 + 1;
                *(v33 + v30) = v32;
                ++v29;
                ++v26;
                if (v29 == 1)
                {
                  goto LABEL_56;
                }
              }

              *(a1 + 32) = v31 + 1;
            }

LABEL_56:
            v34 = *(a1 + 32);
            if (v34 < *(a1 + 16))
            {
              *(*(a1 + 8) + v34) = 0;
            }

            if ((*(a1 + 40) & 0x80000000) != 0)
            {
              absl::lts_20240722::debugging_internal::MaybeAppendWithLength(a1, "}::", 3);
            }
          }
        }

        v35 = *(a1 + 20);
        *(a1 + 20) = vadd_s32(v35, 0x100000001);
        if (v35.i32[0] > 255 || v35.i32[1] >= 0x20000 || (v36 = *(a1 + 28), *(*a1 + v36) != 95))
        {
          *(a1 + 20) = v35.i32[0];
          goto LABEL_66;
        }

        *(a1 + 28) = v36 + 1;
        *(a1 + 20) = v35.i32[0];
        if ((absl::lts_20240722::debugging_internal::ParseName(a1) & 1) == 0)
        {
LABEL_66:
          *(a1 + 28) = v37;
          result = 0;
          if ((*(a1 + 40) & 0x80000000) != 0)
          {
            *(*(a1 + 8) + *(a1 + 32)) = 0;
          }

          goto LABEL_31;
        }

        goto LABEL_23;
      }
    }

    else
    {
      *(a1 + 20) = v4.i32[0];
    }

    *(a1 + 28) = v37;
    if ((*(a1 + 40) & 0x80000000) != 0)
    {
      absl::lts_20240722::debugging_internal::MaybeAppendWithLength(a1, "::", 2);
    }

    if (!absl::lts_20240722::debugging_internal::ParseName(a1))
    {
      *(a1 + 28) = v37;
      if ((*(a1 + 40) & 0x80000000) != 0)
      {
        *(*(a1 + 8) + *(a1 + 32)) = 0;
      }

      v15 = *(a1 + 20);
      *(a1 + 20) = vadd_s32(v15, 0x100000001);
      if (v15.i32[0] > 255 || v15.i32[1] >= 0x20000 || (v16 = *(a1 + 28), *(*a1 + v16) != 115))
      {
        result = 0;
        *(a1 + 20) = v15.i32[0];
        goto LABEL_31;
      }

      *(a1 + 28) = v16 + 1;
      *(a1 + 20) = v15.i32[0];
    }

    absl::lts_20240722::debugging_internal::ParseDiscriminator(a1);
LABEL_23:
    result = 1;
LABEL_31:
    v5 = *(a1 + 20) - 1;
  }

  *(a1 + 20) = v5;
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t absl::lts_20240722::debugging_internal::ParseSeqId(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 20);
  *(a1 + 20) = vadd_s32(v2, 0x100000001);
  if (v2.i32[0] > 255 || v2.i32[1] >= 0x20000)
  {
LABEL_13:
    *(a1 + 20) = v2.i32[0];
    return v1;
  }

  v3 = *(a1 + 28);
  v4 = (*a1 + v3);
  v5 = *v4;
  if (*v4)
  {
    v6 = 1;
    v7 = *a1 + v3;
    while (1)
    {
      v8 = v5 - 48;
      v9 = v5 - 65;
      if (v8 >= 0xA && v9 > 0x19)
      {
        break;
      }

      v11 = *++v7;
      v5 = v11;
      ++v6;
      if (!v11)
      {
        goto LABEL_12;
      }
    }

    if (v6 == 1)
    {
      goto LABEL_14;
    }

LABEL_12:
    *(a1 + 28) = v7 - *a1;
    v1 = 1;
    goto LABEL_13;
  }

LABEL_14:
  *(a1 + 20) = v2.i32[0];
  return 0;
}

uint64_t absl::lts_20240722::debugging_internal::ParseUnqualifiedName(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 20);
  v4 = vadd_s32(v3, 0x100000001);
  *(a1 + 20) = v4;
  v5 = v4.i32[0];
  if (v3.i32[0] > 255 || v3.i32[1] >= 0x20000)
  {
    goto LABEL_72;
  }

  v6 = absl::lts_20240722::debugging_internal::ParseOperatorName(a1, 0);
  v7 = *(a1 + 20);
  if ((v6 & 1) == 0)
  {
    v8 = v7 + 1;
    v9 = *(a1 + 24);
    *(a1 + 20) = v7 + 1;
    *(a1 + 24) = v9 + 1;
    if (v7 > 255 || v9 >= 0x20000)
    {
      goto LABEL_17;
    }

    v35 = *(a1 + 28);
    v10 = v7 + 2;
    *(a1 + 20) = v7 + 2;
    *(a1 + 24) = v9 + 2;
    if (v7 <= 254 && v9 <= 131070)
    {
      v11 = *a1;
      v12 = *(a1 + 28);
      if (*(*a1 + v12) == 67)
      {
        v13 = v12 + 1;
        *(a1 + 20) = v10;
        *(a1 + 24) = v9 + 3;
        *(a1 + 28) = v12 + 1;
        if (v9 <= 131069)
        {
          if (*(v11 + v13) - 49 <= 3)
          {
            *(a1 + 28) = v12 + 2;
            *(a1 + 20) = v8;
            v27 = (*(a1 + 8) + *(a1 + 36));
            LOWORD(v12) = *(a1 + 40);
LABEL_56:
            absl::lts_20240722::debugging_internal::MaybeAppendWithLength(a1, v27, v12);
            goto LABEL_57;
          }

          *(a1 + 20) = v10;
          *(a1 + 24) = v9 + 4;
          if (v9 != 131069 && *(v11 + v13) == 73)
          {
            *(a1 + 28) = v12 + 2;
            *(a1 + 20) = v8;
            if (absl::lts_20240722::debugging_internal::ParseCharClass(a1, "12") && (absl::lts_20240722::debugging_internal::ParseClassEnumType(a1) & 1) != 0)
            {
              goto LABEL_57;
            }

            goto LABEL_12;
          }
        }

        else
        {
          *(a1 + 20) = v10;
          *(a1 + 24) = v9 + 4;
        }
      }
    }

    *(a1 + 20) = v8;
LABEL_12:
    *(a1 + 28) = v35;
    v14 = *(a1 + 20);
    v15 = vadd_s32(v14, 0x100000001);
    *(a1 + 20) = v15;
    if (v14.i32[0] <= 255 && v14.i32[1] < 0x20000)
    {
      v16 = *a1;
      v17 = *(a1 + 28);
      if (*(*a1 + v17) == 68)
      {
        *(a1 + 20) = v15.i32[0];
        *(a1 + 24) = v14.i32[1] + 2;
        *(a1 + 28) = v17 + 1;
        if (v14.i32[1] <= 131070)
        {
          v28 = *(v16 + v17 + 1);
          if (v28 <= 0x34 && ((1 << v28) & 0x17000000000000) != 0)
          {
            *(a1 + 28) = v17 + 2;
            *(a1 + 20) = v14.i32[0];
            v29 = *(a1 + 8);
            LODWORD(v12) = *(a1 + 40);
            v30 = *(a1 + 36);
            if ((v12 & 0x80000000) != 0)
            {
              absl::lts_20240722::debugging_internal::MaybeAppendWithLength(a1, "~", 1);
              LOWORD(v12) = *(a1 + 40);
            }

            v27 = (v29 + v30);
            goto LABEL_56;
          }
        }
      }
    }

    *(a1 + 20) = v14.i32[0];
    *(a1 + 28) = v35;
    v7 = v14.i32[0] - 1;
LABEL_17:
    *(a1 + 20) = v7;
    v18 = absl::lts_20240722::debugging_internal::ParseSourceName(a1);
    v7 = *(a1 + 20);
    if (v18)
    {
      goto LABEL_58;
    }

    v19 = *(a1 + 24);
    *(a1 + 24) = v19 + 1;
    if (v7 <= 255 && v19 < 0x20000)
    {
      v20 = v7 + 1;
      v36 = *(a1 + 28);
      *(a1 + 20) = v7 + 2;
      *(a1 + 24) = v19 + 2;
      if (v7 <= 254 && v19 <= 131070 && (v21 = *(a1 + 28), *(*a1 + v21) == 76))
      {
        *(a1 + 28) = v21 + 1;
        *(a1 + 20) = v20;
        if (absl::lts_20240722::debugging_internal::ParseSourceName(a1))
        {
          absl::lts_20240722::debugging_internal::ParseDiscriminator(a1);
LABEL_57:
          v7 = *(a1 + 20) - 1;
          *(a1 + 20) = v7;
          goto LABEL_58;
        }

        v7 = *(a1 + 20) - 1;
      }

      else
      {
        *(a1 + 20) = v20;
      }

      *(a1 + 28) = v36;
    }

    *(a1 + 20) = v7;
    if (absl::lts_20240722::debugging_internal::ParseUnnamedTypeName(a1))
    {
      v7 = *(a1 + 20);
      goto LABEL_58;
    }

    v37 = *(a1 + 28);
    v22 = *(a1 + 20);
    *(a1 + 20) = vadd_s32(v22, 0x100000001);
    if (v22.i32[0] <= 255 && v22.i32[1] < 0x20000 && (v23 = *(a1 + 28), v24 = (*a1 + v23), *v24 == 68) && v24[1] == 67)
    {
      *(a1 + 28) = v23 + 2;
      *(a1 + 20) = v22.i32[0];
      if (absl::lts_20240722::debugging_internal::ParseSourceName(a1))
      {
          ;
        }

        if (absl::lts_20240722::debugging_internal::ParseOneCharToken(a1, 0x45u))
        {
LABEL_45:
          result = 1;
LABEL_48:
          v5 = *(a1 + 20);
          goto LABEL_72;
        }
      }
    }

    else
    {
      *(a1 + 20) = v22.i32[0];
    }

    *(a1 + 28) = v37;
    v25 = *(a1 + 20);
    *(a1 + 20) = vadd_s32(v25, 0x100000001);
    if (v25.i32[0] <= 255 && v25.i32[1] < 0x20000 && (v26 = *(a1 + 28), *(*a1 + v26) == 70))
    {
      *(a1 + 28) = v26 + 1;
      *(a1 + 20) = v25.i32[0];
      if ((*(a1 + 40) & 0x80000000) != 0)
      {
        absl::lts_20240722::debugging_internal::MaybeAppendWithLength(a1, "friend ", 7);
      }

      if (absl::lts_20240722::debugging_internal::ParseSourceName(a1) & 1) != 0 || (absl::lts_20240722::debugging_internal::ParseOperatorName(a1, 0))
      {
        goto LABEL_45;
      }
    }

    else
    {
      *(a1 + 20) = v25.i32[0];
    }

    result = 0;
    *(a1 + 28) = v37;
    goto LABEL_48;
  }

LABEL_58:
  result = 0;
  v31 = v7 + 1;
  v32 = *(a1 + 24);
  *(a1 + 20) = v7 + 1;
  *(a1 + 24) = v32 + 1;
  if (v7 <= 255 && v32 < 0x20000)
  {
    *(a1 + 20) = v7 + 2;
    *(a1 + 24) = v32 + 2;
    if (v7 <= 254 && v32 <= 131070)
    {
      do
      {
        v33 = *(a1 + 28);
        if (*(*a1 + v33) != 66)
        {
          break;
        }

        *(a1 + 28) = v33 + 1;
        *(a1 + 20) = v31;
        v38 = *(a1 + 28);
        if ((*(a1 + 40) & 0x80000000) != 0)
        {
          absl::lts_20240722::debugging_internal::MaybeAppendWithLength(a1, "[abi:", 5);
        }

        if ((absl::lts_20240722::debugging_internal::ParseSourceName(a1) & 1) == 0)
        {
          result = 0;
          *(a1 + 28) = v38;
          v31 = *(a1 + 20);
          goto LABEL_71;
        }

        if ((*(a1 + 40) & 0x80000000) != 0)
        {
          absl::lts_20240722::debugging_internal::MaybeAppendWithLength(a1, "]", 1);
        }

        v34 = *(a1 + 20);
        *(a1 + 20) = vadd_s32(v34, 0x100000001);
        v31 = v34.i32[0];
      }

      while (v34.i32[0] <= 255 && v34.i32[1] < 0x20000);
    }

    *(a1 + 20) = v31;
    result = 1;
  }

LABEL_71:
  v5 = v31 - 1;
  *(a1 + 20) = v31 - 1;
LABEL_72:
  *(a1 + 20) = v5 - 1;
  return result;
}

void sub_23C95AF38(_Unwind_Exception *a1)
{
  v2 = *(v1 + 20) - 1;
  *(v1 + 20) = v2;
  *(v1 + 20) = v2 - 1;
  _Unwind_Resume(a1);
}

uint64_t absl::lts_20240722::debugging_internal::ParseCallOffset(uint64_t *a1)
{
  v1 = 0;
  v2 = *(a1 + 5);
  v3 = *(a1 + 6);
  *(a1 + 6) = v3 + 1;
  if (v2 <= 255 && v3 < 0x20000)
  {
    v23 = *(a1 + 28);
    v4 = v2 + 2;
    v5 = v3 + 2;
    *(a1 + 5) = v2 + 2;
    *(a1 + 6) = v3 + 2;
    if (v2 <= 254 && v3 <= 131070)
    {
      v7 = *a1;
      v8 = *(a1 + 7);
      if (*(*a1 + v8) == 104)
      {
        v9 = v8 + 1;
        *(a1 + 7) = v8 + 1;
        if (v3 <= 131069)
        {
          v5 = v3 + 4;
          if (v2 < 254 && v3 != 131069)
          {
            v5 = v3 + 5;
            *(a1 + 5) = v2 + 4;
            *(a1 + 6) = v3 + 5;
            if (v2 <= 252 && v3 <= 131067 && *(v7 + v9) == 110)
            {
              LODWORD(v9) = v8 + 2;
              *(a1 + 7) = v8 + 2;
            }

            *(a1 + 5) = v2 + 3;
            if (*(v7 + v9) - 48 <= 9)
            {
              v14 = (v9 + v7 + 1);
              do
              {
                v15 = *v14++;
                LODWORD(v9) = v9 + 1;
              }

              while ((v15 - 48) < 0xA);
              v5 = v3 + 6;
              *(a1 + 5) = v4;
              *(a1 + 6) = v3 + 6;
              *(a1 + 7) = v9;
              if (v3 <= 131066 && *(v7 + v9) == 95)
              {
                v16 = v9 + 1;
LABEL_29:
                *(a1 + 7) = v16;
                v1 = 1;
                goto LABEL_16;
              }
            }
          }
        }

        else
        {
          v5 = 131073;
        }
      }
    }

    *(a1 + 28) = v23;
    *(a1 + 5) = v4;
    *(a1 + 6) = v5 + 1;
    if (v2 <= 254 && v5 < 0x20000)
    {
      v10 = *a1;
      v11 = *(a1 + 7);
      if (*(*a1 + v11) == 118)
      {
        v12 = v11 + 1;
        *(a1 + 6) = v5 + 2;
        *(a1 + 7) = v11 + 1;
        if (v5 <= 131070)
        {
          *(a1 + 6) = v5 + 3;
          if (v2 <= 253 && v5 != 131070)
          {
            v17 = v2 + 3;
            *(a1 + 5) = v2 + 4;
            *(a1 + 6) = v5 + 4;
            if (v2 <= 252 && v5 <= 131068 && *(v10 + v12) == 110)
            {
              LODWORD(v12) = v11 + 2;
              *(a1 + 7) = v11 + 2;
            }

            *(a1 + 5) = v17;
            if (*(v10 + v12) - 48 <= 9)
            {
              v18 = (v12 + v10 + 1);
              do
              {
                v19 = *v18++;
                LODWORD(v12) = v12 + 1;
              }

              while ((v19 - 48) < 0xA);
              *(a1 + 5) = v17;
              *(a1 + 6) = v5 + 5;
              *(a1 + 7) = v12;
              if (v5 <= 131067 && *(v10 + v12) == 95)
              {
                v20 = v12 + 1;
                *(a1 + 6) = v5 + 6;
                *(a1 + 7) = v12 + 1;
                if (v5 != 131067)
                {
                  *(a1 + 5) = v2 + 4;
                  *(a1 + 6) = v5 + 7;
                  if (v2 <= 252 && v5 != 131066 && *(v10 + v20) == 110)
                  {
                    v20 = v12 + 2;
                    *(a1 + 7) = v12 + 2;
                  }

                  *(a1 + 5) = v17;
                  if (*(v10 + v20) - 48 <= 9)
                  {
                    v21 = (v20 + v10 + 1);
                    do
                    {
                      v22 = *v21++;
                      ++v20;
                    }

                    while ((v22 - 48) < 0xA);
                    *(a1 + 5) = v4;
                    *(a1 + 6) = v5 + 8;
                    *(a1 + 7) = v20;
                    if (v5 <= 131064 && *(v10 + v20) == 95)
                    {
                      v16 = v20 + 1;
                      goto LABEL_29;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v1 = 0;
    *(a1 + 28) = v23;
  }

LABEL_16:
  *(a1 + 5) = v2;
  return v1;
}

unint64_t absl::lts_20240722::debugging_internal::DemangleRustSymbolEncoding(absl::lts_20240722::debugging_internal *this, char *a2, char *a3)
{
  v146 = *MEMORY[0x277D85DE8];
  v141 = 0u;
  memset(v140, 0, sizeof(v140));
  v143 = this;
  v144 = a2;
  v145 = &a3[a2];
  if (a3)
  {
    *a2 = 0;
  }

  if (*this != 95 || *(this + 1) != 82)
  {
    goto LABEL_352;
  }

  v3 = 0;
  LODWORD(v140[16]) = 1;
  LOBYTE(v140[0]) = 0;
  v4 = 2;
  while (1)
  {
    LOBYTE(v5) = 0;
    v6 = v4 + 1;
    v142 = v4 + 1;
    v7 = *(this + v4);
    if (v7 > 0x4C)
    {
      break;
    }

    if (v7 == 66)
    {
      {
        goto LABEL_352;
      }

      if (HIDWORD(v141))
      {
LABEL_120:
        v46 = SDWORD2(v141) - 1;
        --DWORD2(v141);
        v142 = *(&v140[20] + v46 + 2);
        goto LABEL_145;
      }

      v116 = SLODWORD(v140[16]);
      if (LODWORD(v140[16]) == 256)
      {
        goto LABEL_352;
      }

      ++LODWORD(v140[16]);
      *(v140 + v116) = 28;
      goto LABEL_138;
    }

    if (v7 != 67)
    {
      if (v7 == 73)
      {
        v12 = SLODWORD(v140[16]);
        if (LODWORD(v140[16]) == 256)
        {
          goto LABEL_352;
        }

        ++LODWORD(v140[16]);
        *(v140 + v12) = 26;
        goto LABEL_138;
      }

      goto LABEL_353;
    }

    {
      goto LABEL_352;
    }

LABEL_145:
    LOBYTE(v5) = 0;
    if (v3 > 131070)
    {
      goto LABEL_353;
    }

    v60 = v140[16];
    if (SLODWORD(v140[16]) < 1)
    {
      goto LABEL_353;
    }

    while (2)
    {
      ++v3;
      v61 = v60 - 1;
      LODWORD(v140[16]) = v60 - 1;
      switch(*(v140 + (v60 - 1)))
      {
        case 0:
          v126 = v142;
          v127 = v143;
          v128 = v142;
          if ((*(v143 + v142) & 0xDFu) - 65 > 0x19)
          {
            goto LABEL_356;
          }

          ++HIDWORD(v141);
          if (v60 == 257)
          {
            goto LABEL_352;
          }

          LODWORD(v140[16]) = v60;
          v129 = 1;
          goto LABEL_324;
        case 1:
          v127 = v143;
          v126 = v142;
          v128 = v142;
LABEL_356:
          v142 = v126 + 1;
          v138 = *(v127 + v128);
          v35 = v138 >= 0x2F;
          v5 = 0x401000000001uLL >> v138;
          if (v35)
          {
            LOBYTE(v5) = 0;
          }

          v139 = *MEMORY[0x277D85DE8];
          return v5 & 1;
        case 2:
          if (SHIDWORD(v141) > 0)
          {
            goto LABEL_197;
          }

          v86 = v144;
          if ((v145 - v144) >= 3)
          {
            *v144 = 14906;
            v86[2] = 0;
            v144 = v86 + 2;
LABEL_197:
            v87 = SDWORD1(v140[20]) - 1;
            --DWORD1(v140[20]);
            {
              goto LABEL_239;
            }
          }

          goto LABEL_352;
        case 3:
          if (SHIDWORD(v141) > 0)
          {
            goto LABEL_221;
          }

          v94 = v144;
          if ((v145 - v144) < 3)
          {
            goto LABEL_352;
          }

          *v144 = 14906;
          v94[2] = 0;
          v144 = v94 + 2;
LABEL_221:
          LOBYTE(v5) = 0;
          if (!v95 || v3 == 0x1FFFF)
          {
            goto LABEL_353;
          }

          goto LABEL_239;
        case 4:
          if (v60 == 257)
          {
            goto LABEL_352;
          }

          LODWORD(v140[16]) = v60;
          *(v140 + v61) = 5;
          goto LABEL_27;
        case 5:
        case 8:
        case 0xB:
          if (SHIDWORD(v141) > 0)
          {
            goto LABEL_238;
          }

          v62 = v144;
          if ((v145 - v144) < 2)
          {
            goto LABEL_352;
          }

          v63 = 62;
          goto LABEL_211;
        case 6:
          if (v60 == 257)
          {
            goto LABEL_352;
          }

          LODWORD(v140[16]) = v60;
          *(v140 + v61) = 7;
          goto LABEL_27;
        case 7:
          if (SHIDWORD(v141) > 0)
          {
            goto LABEL_317;
          }

          v130 = v144;
          if ((v145 - v144) < 5)
          {
            goto LABEL_352;
          }

          *v144 = 544432416;
          v130[4] = 0;
          v144 = v130 + 4;
LABEL_317:
          if (v60 == 257)
          {
            goto LABEL_352;
          }

          LODWORD(v140[16]) = v60;
          v129 = 8;
          goto LABEL_324;
        case 9:
        case 0x14:
          goto LABEL_237;
        case 0xA:
          if (SHIDWORD(v141) > 0)
          {
            goto LABEL_322;
          }

          v131 = v144;
          if ((v145 - v144) < 5)
          {
            goto LABEL_352;
          }

          *v144 = 544432416;
          v131[4] = 0;
          v144 = v131 + 4;
LABEL_322:
          if (v60 == 257)
          {
            goto LABEL_352;
          }

          LODWORD(v140[16]) = v60;
          v129 = 11;
LABEL_324:
          *(v140 + v61) = v129;
          goto LABEL_138;
        case 0xC:
          if (SHIDWORD(v141) > 0)
          {
            goto LABEL_181;
          }

          v81 = v144;
          if ((v145 - v144) < 3)
          {
            goto LABEL_352;
          }

          *v144 = 8251;
          v81[2] = 0;
          v144 = v81 + 2;
LABEL_181:
          if (v60 == 257)
          {
            goto LABEL_352;
          }

          LODWORD(v140[16]) = v60;
          *(v140 + v61) = 13;
          v82 = v142;
          v83 = *(v143 + v142);
          if (v83 == 66)
          {
            goto LABEL_183;
          }

          goto LABEL_187;
        case 0xD:
        case 0xE:
          if (SHIDWORD(v141) > 0)
          {
            goto LABEL_238;
          }

          v62 = v144;
          if ((v145 - v144) < 2)
          {
            goto LABEL_352;
          }

          v63 = 93;
          goto LABEL_211;
        case 0xF:
          if (*(v143 + v142) != 69)
          {
            if (SHIDWORD(v141) <= 0)
            {
              v134 = v144;
              if ((v145 - v144) < 3)
              {
                goto LABEL_352;
              }

              *v144 = 8236;
              v134[2] = 0;
              v144 = v134 + 2;
            }

            if (v60 != 257)
            {
              LODWORD(v140[16]) = v60;
              *(v140 + v61) = 16;
              goto LABEL_27;
            }

LABEL_352:
            LOBYTE(v5) = 0;
            goto LABEL_353;
          }

          ++v142;
          if (SHIDWORD(v141) <= 0)
          {
            v89 = v144;
            if ((v145 - v144) < 3)
            {
              goto LABEL_352;
            }

            *v144 = 10540;
            v89[2] = 0;
            v144 = v89 + 2;
          }

          goto LABEL_238;
        case 0x10:
          if (*(v143 + v142) != 69)
          {
            if (SHIDWORD(v141) <= 0)
            {
              v133 = v144;
              if ((v145 - v144) < 3)
              {
                goto LABEL_352;
              }

              *v144 = 8236;
              v133[2] = 0;
              v144 = v133 + 2;
            }

            if (v60 != 257)
            {
              LODWORD(v140[16]) = v60;
              *(v140 + v61) = 17;
              goto LABEL_27;
            }

            goto LABEL_352;
          }

          ++v142;
          if (SHIDWORD(v141) <= 0)
          {
LABEL_209:
            v62 = v144;
            if ((v145 - v144) < 2)
            {
              goto LABEL_352;
            }

            v63 = 41;
LABEL_211:
            *v62 = v63;
            ++v144;
          }

          goto LABEL_238;
        case 0x11:
          v74 = v143;
          v75 = v142;
          v76 = v142;
          if (*(v143 + v142) != 69)
          {
            v100 = HIDWORD(v141);
            if (SHIDWORD(v141) <= 0)
            {
              v101 = v144;
              if ((v145 - v144) < 7)
              {
                goto LABEL_352;
              }

              *(v144 + 3) = 2698798;
              *v101 = 774774828;
              v144 = v101 + 6;
            }

            HIDWORD(v141) = v100 + 1;
            if (*(v74 + v76) != 69)
            {
LABEL_307:
              if (v60 == 257)
              {
                goto LABEL_352;
              }

              LODWORD(v140[16]) = v60;
              *(v140 + v61) = 18;
              goto LABEL_27;
            }

LABEL_235:
            v80 = v75 + 1;
            goto LABEL_236;
          }

          ++v142;
          if (SHIDWORD(v141) > 0)
          {
            goto LABEL_238;
          }

          goto LABEL_209;
        case 0x12:
          v75 = v142;
          if (*(v143 + v142) != 69)
          {
            goto LABEL_307;
          }

          goto LABEL_235;
        case 0x13:
          goto LABEL_347;
        case 0x15:
        case 0x16:
          if (*(v143 + v142) != 69)
          {
            if (SHIDWORD(v141) <= 0)
            {
              if ((v145 - v144) < 4)
              {
                goto LABEL_352;
              }

              *v144 = 2108192;
              v144 += 3;
              v61 = v140[16];
            }

            if (v61 == 256)
            {
              goto LABEL_352;
            }

            v124 = 22;
            goto LABEL_332;
          }

          v123 = v142;
          goto LABEL_299;
        case 0x17:
          v77 = v142;
          v90 = v143;
          v91 = v142;
          if (*(v143 + v142) != 112)
          {
            goto LABEL_238;
          }

          v92 = HIDWORD(v141);
          if (SHIDWORD(v141) > 0)
          {
            goto LABEL_216;
          }

          v93 = v144;
          if ((v145 - v144) < 3)
          {
            goto LABEL_352;
          }

          *v144 = 15932;
          v93[2] = 0;
          v144 = v93 + 2;
LABEL_216:
          HIDWORD(v141) = v92 + 1;
          if (*(v90 + v91) != 112)
          {
            goto LABEL_237;
          }

LABEL_304:
          v142 = v77 + 1;
          {
            goto LABEL_352;
          }

          v125 = SLODWORD(v140[16]);
          if (LODWORD(v140[16]) == 256)
          {
            goto LABEL_352;
          }

          ++LODWORD(v140[16]);
          *(v140 + v125) = 24;
          goto LABEL_27;
        case 0x18:
          v77 = v142;
          if (*(v143 + v142) == 112)
          {
            goto LABEL_304;
          }

          goto LABEL_237;
        case 0x19:
          v64 = HIDWORD(v141);
          v65 = --HIDWORD(v141);
          if (*(v143 + v142) != 110)
          {
            goto LABEL_158;
          }

          ++v142;
          if (v64 > 1)
          {
            goto LABEL_161;
          }

          v66 = v144;
          if (v145 - v144 < 2)
          {
            goto LABEL_352;
          }

          ++v144;
          *v66 = 45;
          *v144 = 0;
          v65 = HIDWORD(v141);
LABEL_158:
          if (v65 > 0)
          {
            goto LABEL_161;
          }

          v67 = v144;
          if ((v145 - v144) < 3)
          {
            goto LABEL_352;
          }

          *v144 = 30768;
          v67[2] = 0;
          v144 = v67 + 2;
LABEL_161:
          v68 = v143;
          v69 = v142;
          v70 = v143 + v142;
          v71 = *v70;
          if (v71 == 48)
          {
            v72 = ++v142;
            if (v65 <= 0)
            {
              v73 = v144;
              if (v145 - v144 < 2)
              {
                goto LABEL_352;
              }

              ++v144;
              *v73 = 48;
              *v144 = 0;
              v68 = v143;
              v72 = v142;
            }

            if (*(v68 + v72) != 95)
            {
              goto LABEL_352;
            }

            v142 = v72 + 1;
          }

          else
          {
            if ((v71 - 48) < 0xA || (v71 - 97) <= 5)
            {
              if (v65 <= 0)
              {
                while (1)
                {
                  v142 = ++v69;
                  if (v65 <= 0)
                  {
                    v109 = v144;
                    if (v145 - v144 < 2)
                    {
                      goto LABEL_352;
                    }

                    v107 = *v70;
                    ++v144;
                    *v109 = v107;
                    *v144 = 0;
                    v69 = v142;
                    v68 = v143;
                  }

                  v70 = v68 + v69;
                  v71 = *v70;
                  if ((v71 - 48) >= 0xA && (v71 - 97) >= 6)
                  {
                    break;
                  }

                  v65 = HIDWORD(v141);
                }
              }

              else
              {
                v103 = v143 + v142 + 1;
                do
                {
                  v142 = ++v69;
                  v104 = *v103++;
                  v71 = v104;
                  v105 = v104 - 97;
                }

                while ((v104 - 48) < 0xA || v105 < 6);
              }
            }

            if (v71 != 95)
            {
              goto LABEL_352;
            }

            v142 = v69 + 1;
          }

          goto LABEL_238;
        case 0x1A:
          v78 = HIDWORD(v141);
          if (SHIDWORD(v141) > 0)
          {
            goto LABEL_175;
          }

          v79 = v144;
          if ((v145 - v144) < 5)
          {
            goto LABEL_352;
          }

          *v144 = 1044134458;
          v79[4] = 0;
          v144 = v79 + 4;
LABEL_175:
          HIDWORD(v141) = v78 + 1;
LABEL_176:
          if (*(v143 + v142) == 69)
          {
            v80 = v142 + 1;
LABEL_236:
            v142 = v80;
LABEL_237:
            --HIDWORD(v141);
            goto LABEL_238;
          }

          if (v60 == 257)
          {
            goto LABEL_352;
          }

          LODWORD(v140[16]) = v60;
          *(v140 + v61) = 27;
          v96 = v142;
          v97 = *(v143 + v142);
          if (v97 != 75)
          {
            if (v97 != 76)
            {
              goto LABEL_27;
            }

            ++v142;
            v98 = *(v143 + v96 + 1);
            if (v98 == 95)
            {
              v99 = v96 + 2;
            }

            else
            {
              if ((v98 - 48) >= 0xA && (v98 & 0xFFFFFFDF) - 65 > 0x19)
              {
                goto LABEL_352;
              }

              v111 = v143 + v96 + 2;
              v99 = v96 + 2;
              do
              {
                v142 = v99;
                v113 = *v111++;
                v112 = v113;
                v114 = (v113 & 0xFFFFFFDF) - 65;
                ++v99;
              }

              while ((v113 - 48) < 0xA || v114 < 0x1A);
              if (v112 != 95)
              {
                goto LABEL_352;
              }
            }

            v142 = v99;
            goto LABEL_238;
          }

          v82 = v142 + 1;
          v142 = v82;
          v83 = *(v143 + v82);
          if (v83 == 66)
          {
            while (1)
            {
LABEL_183:
              v142 = v82 + 1;
              {
                goto LABEL_352;
              }

              if (HIDWORD(v141))
              {
                break;
              }

              v84 = SLODWORD(v140[16]);
              if (LODWORD(v140[16]) == 256)
              {
                goto LABEL_352;
              }

              ++LODWORD(v140[16]);
              *(v140 + v84) = 30;
              v82 = v142;
              v83 = *(v143 + v142);
              if (v83 != 66)
              {
                goto LABEL_187;
              }
            }

LABEL_193:
            v85 = SDWORD2(v141) - 1;
            --DWORD2(v141);
            v142 = *(&v140[20] + v85 + 2);
LABEL_238:
            if (v3 == 0x1FFFF)
            {
              goto LABEL_352;
            }

            goto LABEL_239;
          }

LABEL_187:
          if (v83 == 112)
          {
            v142 = v82 + 1;
            if (SHIDWORD(v141) <= 0)
            {
              if ((v145 - v144) < 2)
              {
                goto LABEL_352;
              }

              *v144++ = 95;
            }

            if (v3 == 0x1FFFF)
            {
              goto LABEL_352;
            }

LABEL_239:
            v60 = v140[16];
            if (SLODWORD(v140[16]) <= 0)
            {
              goto LABEL_352;
            }

            continue;
          }

          ++HIDWORD(v141);
          v135 = SLODWORD(v140[16]);
          if (LODWORD(v140[16]) == 256)
          {
            goto LABEL_352;
          }

          ++LODWORD(v140[16]);
          *(v140 + v135) = 25;
LABEL_27:
          while (2)
          {
            v15 = v142;
            v16 = v143;
            v17 = v142;
            v18 = *(v143 + v142);
            v19 = v142;
            if ((v18 - 97) < 0x1A)
            {
LABEL_140:
              v142 = v15 + 1;
              v55 = *(v16 + v17) - 97;
              if (v55 > 0x19 || ((0x3BCFBBFu >> v55) & 1) == 0)
              {
                goto LABEL_352;
              }

              if (SHIDWORD(v141) <= 0)
              {
                v56 = off_278BC37A0[v55];
                v57 = strlen(v56);
                v58 = v144;
                if (v145 - v144 < v57 + 1)
                {
                  goto LABEL_352;
                }

                v59 = v57;
                memcpy(v144, v56, v57 + 1);
                v144 = &v58[v59];
              }

              goto LABEL_145;
            }

            while (2)
            {
              if (v18 > 80)
              {
                if (v18 <= 82)
                {
                  if (v18 == 81)
                  {
                    v142 = v19 + 1;
                    if (SHIDWORD(v141) <= 0)
                    {
                      v26 = v144;
                      if ((v145 - v144) < 6)
                      {
                        goto LABEL_352;
                      }

                      *(v144 + 2) = 32;
                      *v26 = 1953852710;
                      v144 = v26 + 5;
                    }

                    if (*(v16 + v19 + 1) == 76)
                    {
                      v27 = v19 + 2;
                      v142 = v19 + 2;
                      v28 = *(v16 + v27);
                      if (v28 != 95)
                      {
                        if ((v28 - 48) >= 0xA && (v28 & 0xFFFFFFDF) - 65 > 0x19)
                        {
                          goto LABEL_352;
                        }

                        v31 = v16 + v27 + 1;
                        v24 = v19 + 3;
                        do
                        {
                          v142 = v24;
                          v33 = *v31++;
                          v32 = v33;
                          v34 = (v33 & 0xFFFFFFDF) - 65;
                          ++v24;
                          v35 = (v33 - 48) >= 0xA && v34 >= 0x1A;
                        }

                        while (!v35);
                        goto LABEL_101;
                      }

                      v24 = v19 + 3;
LABEL_102:
                      v142 = v24;
                    }
                  }

                  else
                  {
                    v22 = v19 + 1;
                    v142 = v22;
                    if (SHIDWORD(v141) <= 0)
                    {
                      if ((v145 - v144) < 2)
                      {
                        goto LABEL_352;
                      }

                      *v144 = 38;
                      v16 = v143;
                      ++v144;
                      v22 = v142;
                    }

                    if (*(v16 + v22) == 76)
                    {
                      v142 = v22 + 1;
                      v23 = *(v16 + v22 + 1);
                      if (v23 == 95)
                      {
                        v24 = v22 + 2;
                        goto LABEL_102;
                      }

                      if ((v23 - 48) >= 0xA && (v23 & 0xFFFFFFDF) - 65 > 0x19)
                      {
                        goto LABEL_352;
                      }

                      v37 = v16 + v22 + 2;
                      v24 = v22 + 2;
                      do
                      {
                        v142 = v24;
                        v38 = *v37++;
                        v32 = v38;
                        v39 = (v38 & 0xFFFFFFDF) - 65;
                        ++v24;
                      }

                      while ((v38 - 48) < 0xA || v39 < 0x1A);
LABEL_101:
                      if (v32 != 95)
                      {
                        goto LABEL_352;
                      }

                      goto LABEL_102;
                    }
                  }

LABEL_31:
                  v19 = v142;
                  v16 = v143;
                  v17 = v142;
                  v18 = *(v143 + v142);
                  if ((v18 - 97) < 0x1A)
                  {
                    v15 = v142;
                    goto LABEL_140;
                  }

                  continue;
                }

                if (v18 == 83)
                {
                  v142 = v19 + 1;
                  if (SHIDWORD(v141) <= 0)
                  {
                    if ((v145 - v144) < 2)
                    {
                      goto LABEL_352;
                    }

                    *v144++ = 91;
                  }

                  v21 = v140[16];
                  if (LODWORD(v140[16]) == 256)
                  {
                    goto LABEL_352;
                  }

                  v20 = 14;
                }

                else
                {
                  if (v18 != 84)
                  {
                    goto LABEL_138;
                  }

                  v25 = v19 + 1;
                  v142 = v25;
                  if (SHIDWORD(v141) <= 0)
                  {
                    if ((v145 - v144) < 2)
                    {
                      goto LABEL_352;
                    }

                    *v144 = 40;
                    v16 = v143;
                    ++v144;
                    v25 = v142;
                  }

                  if (*(v16 + v25) == 69)
                  {
                    v142 = v25 + 1;
                    if (SHIDWORD(v141) <= 0)
                    {
                      if ((v145 - v144) >= 2)
                      {
                        *v144++ = 41;
                        goto LABEL_145;
                      }

                      goto LABEL_352;
                    }

                    goto LABEL_145;
                  }

                  v21 = v140[16];
                  if (LODWORD(v140[16]) == 256)
                  {
                    goto LABEL_352;
                  }

                  v20 = 15;
                }

LABEL_30:
                LODWORD(v140[16]) = v21 + 1;
                *(v140 + v21) = v20;
                goto LABEL_31;
              }

              break;
            }

            if (v18 <= 69)
            {
              if (v18 == 65)
              {
                v142 = v19 + 1;
                if (SHIDWORD(v141) <= 0)
                {
                  if ((v145 - v144) < 2)
                  {
                    goto LABEL_352;
                  }

                  *v144++ = 91;
                }

                v21 = v140[16];
                if (LODWORD(v140[16]) == 256)
                {
                  goto LABEL_352;
                }

                v20 = 12;
                goto LABEL_30;
              }

              if (v18 == 66)
              {
                v142 = v19 + 1;
                {
                  goto LABEL_352;
                }

                if (HIDWORD(v141))
                {
                  goto LABEL_120;
                }

                v21 = v140[16];
                if (LODWORD(v140[16]) == 256)
                {
                  goto LABEL_352;
                }

                v20 = 29;
                goto LABEL_30;
              }

              if (v18 != 68)
              {
                break;
              }

              v142 = v19 + 1;
              if (SHIDWORD(v141) <= 0)
              {
                v122 = v144;
                if ((v145 - v144) < 5)
                {
                  goto LABEL_352;
                }

                *v144 = 544110948;
                v122[4] = 0;
                v144 = v122 + 4;
              }

              {
                goto LABEL_352;
              }

              v123 = v142;
              if (*(v143 + v142) != 69)
              {
                v61 = v140[16];
                if (LODWORD(v140[16]) == 256)
                {
                  goto LABEL_352;
                }

                v124 = 21;
LABEL_332:
                LODWORD(v140[16]) = v61 + 1;
                *(v140 + v61) = v124;
                v132 = SLODWORD(v140[16]);
                if (LODWORD(v140[16]) == 256)
                {
                  goto LABEL_352;
                }

                ++LODWORD(v140[16]);
                *(v140 + v132) = 23;
                break;
              }

LABEL_299:
              v142 = v123 + 1;
              {
                goto LABEL_352;
              }

              goto LABEL_145;
            }

            switch(v18)
            {
              case 'O':
                v142 = v19 + 1;
                if (SHIDWORD(v141) <= 0)
                {
                  v29 = v144;
                  if ((v145 - v144) < 6)
                  {
                    goto LABEL_352;
                  }

                  *(v144 + 2) = 32;
                  *v29 = 1953852714;
                  v144 = v29 + 5;
                }

                goto LABEL_31;
              case 'P':
                v142 = v19 + 1;
                if (SHIDWORD(v141) <= 0)
                {
                  if ((v145 - v144) < 8)
                  {
                    goto LABEL_352;
                  }

                  *v144 = 0x2074736E6F632ALL;
                  v144 += 7;
                }

                goto LABEL_31;
              case 'F':
                v142 = v19 + 1;
                v117 = HIDWORD(v141);
                if (SHIDWORD(v141) <= 0)
                {
                  v118 = v144;
                  if ((v145 - v144) < 6)
                  {
                    goto LABEL_352;
                  }

                  *(v144 + 2) = 46;
                  *v118 = 774794854;
                  v144 = v118 + 5;
                }

                HIDWORD(v141) = v117 + 1;
                {
                  goto LABEL_352;
                }

                v119 = v142;
                v120 = v142;
                v121 = *(v143 + v142);
                if (v121 == 85)
                {
                  v119 = ++v142;
                  v121 = *(v143 + v120 + 1);
                }

                if (v121 == 75)
                {
                  v142 = v119 + 1;
                  if (*(v143 + v119 + 1) == 67)
                  {
                    v142 = v119 + 2;
                  }

                  {
                    goto LABEL_352;
                  }
                }

LABEL_347:
                if (*(v143 + v142) == 69)
                {
                  ++v142;
                  v13 = SLODWORD(v140[16]);
                  if (LODWORD(v140[16]) == 256)
                  {
                    goto LABEL_352;
                  }

                  ++LODWORD(v140[16]);
                  v14 = 20;
                }

                else
                {
                  v13 = SLODWORD(v140[16]);
                  if (LODWORD(v140[16]) == 256)
                  {
                    goto LABEL_352;
                  }

                  ++LODWORD(v140[16]);
                  v14 = 19;
                }

LABEL_26:
                *(v140 + v13) = v14;
                continue;
            }
          }

LABEL_138:
          this = v143;
          v4 = v142;
          break;
        case 0x1B:
          goto LABEL_176;
        case 0x1C:
        case 0x1D:
          goto LABEL_120;
        case 0x1E:
          goto LABEL_193;
        default:
          goto LABEL_238;
      }

      break;
    }
  }

  if (*(this + v4) > 0x57u)
  {
    if (v7 != 88)
    {
      if (v7 == 89)
      {
        if (SHIDWORD(v141) <= 0)
        {
          if ((v145 - v144) < 2)
          {
            goto LABEL_352;
          }

          *v144++ = 60;
        }

        v13 = SLODWORD(v140[16]);
        if (LODWORD(v140[16]) == 256)
        {
          goto LABEL_352;
        }

        ++LODWORD(v140[16]);
        v14 = 10;
        goto LABEL_26;
      }

      goto LABEL_353;
    }

    if (SHIDWORD(v141) <= 0)
    {
      if ((v145 - v144) < 2)
      {
        goto LABEL_352;
      }

      *v144++ = 60;
    }

    v41 = v140[16];
    if (LODWORD(v140[16]) == 256)
    {
      goto LABEL_352;
    }

    v42 = 6;
LABEL_113:
    LODWORD(v140[16]) = v41 + 1;
    *(v140 + v41) = v42;
    ++HIDWORD(v141);
    v43 = v142;
    if (*(v143 + v142) == 115)
    {
      ++v142;
      v44 = *(v143 + v43 + 1);
      if (v44 == 95)
      {
        v45 = v43 + 2;
      }

      else
      {
        if ((v44 - 48) >= 0xA && (v44 & 0xFFFFFFDF) - 65 > 0x19)
        {
          goto LABEL_352;
        }

        v49 = v143 + v43 + 2;
        v45 = v43 + 2;
        do
        {
          v142 = v45;
          v51 = *v49++;
          v50 = v51;
          v52 = (v51 & 0xFFFFFFDF) - 65;
          ++v45;
        }

        while ((v51 - 48) < 0xA || v52 < 0x1A);
        if (v50 != 95)
        {
          goto LABEL_352;
        }
      }

      v142 = v45;
    }

    v54 = SLODWORD(v140[16]);
    if (LODWORD(v140[16]) == 256)
    {
      goto LABEL_352;
    }

    ++LODWORD(v140[16]);
    *(v140 + v54) = 9;
    goto LABEL_138;
  }

  if (v7 == 77)
  {
    if (SHIDWORD(v141) <= 0)
    {
      if ((v145 - v144) < 2)
      {
        goto LABEL_352;
      }

      *v144++ = 60;
    }

    v41 = v140[16];
    if (LODWORD(v140[16]) == 256)
    {
      goto LABEL_352;
    }

    v42 = 4;
    goto LABEL_113;
  }

  if (v7 == 78)
  {
    v8 = *(this + v6) - 65;
    v142 = v4 + 2;
    if (v8 > 0x19)
    {
      if (*(this + v6) - 97 > 0x19)
      {
        goto LABEL_352;
      }

      v47 = SLODWORD(v140[16]);
      if (LODWORD(v140[16]) == 256)
      {
        goto LABEL_352;
      }

      ++LODWORD(v140[16]);
      *(v140 + v47) = 3;
    }

    else
    {
      v9 = SDWORD1(v140[20]);
      if (DWORD1(v140[20]) == 64)
      {
        goto LABEL_352;
      }

      v10 = *(this + v6);
      ++DWORD1(v140[20]);
      *(&v140[16] + v9 + 4) = v10;
      v11 = SLODWORD(v140[16]);
      if (LODWORD(v140[16]) == 256)
      {
        goto LABEL_352;
      }

      ++LODWORD(v140[16]);
      *(v140 + v11) = 2;
    }

    goto LABEL_138;
  }

LABEL_353:
  v136 = *MEMORY[0x277D85DE8];
  return v5 & 1;
}

uint64_t absl::lts_20240722::debugging_internal::anonymous namespace::RustSymbolParser::ParseIdentifier(absl::lts_20240722::debugging_internal::_anonymous_namespace_::RustSymbolParser *this, int a2)
{
  v2 = *(this + 51);
  v3 = *(this + 100);
  if (*(v2 + v3) != 115)
  {
    v5 = 0;
  }

  *(this + 100) = v3 + 1;
  v4 = *(v2 + v3 + 1);
  if (v4 == 95)
  {
    *(this + 100) = v3 + 2;
    v5 = 1;
  }

  if ((v4 - 48) < 0xA || (v4 & 0xFFFFFFDF) - 65 <= 0x19)
  {
    v8 = 0;
    v9 = 0;
    v10 = (v3 + 1 + v2 + 1);
    v11 = v3 + 2;
    do
    {
      *(this + 100) = v11;
      v12 = *(v10 - 1);
      v14 = *v10++;
      v13 = v14;
      v15 = v12 - 48;
      v16 = v12 - 29;
      if ((v12 - 97) <= 0x19)
      {
        v16 = v12 - 87;
      }

      v17 = v12 - 48;
      if (v15 > 9)
      {
        v17 = v16;
      }

      v18 = v17 + 62 * v9;
      if (v9 > 34636832)
      {
        v8 = 1;
      }

      else
      {
        v9 = v18;
      }

      ++v11;
    }

    while ((v13 - 48) < 0xA || (v13 & 0xFFFFFFDF) - 65 < 0x1A);
    if (v13 == 95)
    {
      *(this + 100) = v11;
      if ((v9 < -1) | v8 & 1)
      {
        v5 = -1;
      }

      else
      {
        v5 = v9 + 2;
      }
    }
  }

  return 0;
}

uint64_t absl::lts_20240722::debugging_internal::anonymous namespace::RustSymbolParser::ParseOptionalBinder(absl::lts_20240722::debugging_internal::_anonymous_namespace_::RustSymbolParser *this)
{
  v1 = *(this + 51);
  v2 = *(this + 100);
  if (*(v1 + v2) != 71)
  {
    return 1;
  }

  *(this + 100) = v2 + 1;
  v3 = *(v1 + v2 + 1);
  if (v3 == 95)
  {
    v4 = v2 + 2;
LABEL_4:
    *(this + 100) = v4;
    return 1;
  }

  if ((v3 - 48) < 0xA || (v3 & 0xFFFFFFDF) - 65 <= 0x19)
  {
    v7 = (v2 + 1 + v1 + 1);
    v4 = v2 + 2;
    do
    {
      *(this + 100) = v4;
      v9 = *v7++;
      v8 = v9;
      v10 = (v9 & 0xFFFFFFDF) - 65;
      ++v4;
    }

    while ((v9 - 48) < 0xA || v10 < 0x1A);
    if (v8 == 95)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

uint64_t absl::lts_20240722::debugging_internal::anonymous namespace::RustSymbolParser::ParseUndisambiguatedIdentifier(absl::lts_20240722::debugging_internal::_anonymous_namespace_::RustSymbolParser *this, int a2, unsigned int a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = *(this + 51);
  v4 = *(this + 100);
  v5 = v4;
  v6 = *(v3 + v4);
  if (v6 == 117)
  {
    v5 = v4 + 1;
    *(this + 100) = v5;
    ++v4;
    if (*(v3 + v5) - 48 > 9)
    {
      goto LABEL_66;
    }
  }

  else if ((v6 - 48) > 9)
  {
    goto LABEL_66;
  }

  v7 = v4 + 1;
  *(this + 100) = v7;
  v8 = *(v3 + v5);
  v9 = v8 - 48;
  if (v8 != 48 && *(v3 + v7) - 48 <= 9)
  {
    v10 = (v7 + v3 + 1);
    while (v9 <= 214748363)
    {
      *(this + 100) = ++v7;
      v9 = *(v10 - 1) + 10 * v9 - 48;
      v11 = *v10++;
      if ((v11 - 48) >= 0xA)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_66;
  }

LABEL_10:
  if (*(v3 + v7) == 95)
  {
    *(this + 100) = ++v7;
  }

  if (v6 == 117)
  {
    v12 = a2;
    v13 = a3;
    v38 = (v3 + v7);
    v39 = &v38[v9];
    v40 = *(this + 26);
    v14 = this;
    v15 = absl::lts_20240722::debugging_internal::DecodeRustPunycode(&v38);
    *(v14 + 52) = v15;
    if (!v15)
    {
      goto LABEL_66;
    }

    this = v14;
    *(v14 + 100) += v9;
    a3 = v13;
    a2 = v12;
  }

  if (a2)
  {
    v16 = *(this + 99);
    if (a2 == 83)
    {
      if (v16 <= 0)
      {
        v18 = *(this + 52);
        if (*(this + 53) - v18 < 6uLL)
        {
          goto LABEL_66;
        }

        strcpy(v18, "{shim");
        *(this + 52) += 5;
      }
    }

    else if (a2 == 67)
    {
      if (v16 <= 0)
      {
        v17 = *(this + 52);
        if (*(this + 53) - v17 < 9uLL)
        {
          goto LABEL_66;
        }

        strcpy(v17, "{closure");
        *(this + 52) += 8;
      }
    }

    else if (v16 <= 0)
    {
      v35 = *(this + 52);
      if ((*(this + 53) - v35) < 2)
      {
        goto LABEL_66;
      }

      *(this + 52) = v35 + 1;
      *v35 = 123;
      **(this + 52) = 0;
      if (*(this + 99) <= 0)
      {
        v37 = *(this + 52);
        if ((*(this + 53) - v37) < 2)
        {
          goto LABEL_66;
        }

        *(this + 52) = v37 + 1;
        *v37 = a2;
        **(this + 52) = 0;
      }
    }

    if (v9 < 1)
    {
      goto LABEL_44;
    }

    if (*(this + 99) <= 0)
    {
      v19 = *(this + 52);
      if (*(this + 53) - v19 < 2uLL)
      {
        goto LABEL_66;
      }

      *v19 = 58;
      ++*(this + 52);
    }
  }

  if (v6 != 117 && v9 >= 1)
  {
    while (1)
    {
      v20 = *(this + 51);
      v21 = *(this + 100);
      *(this + 100) = v21 + 1;
      v22 = *(v20 + v21);
      if ((v22 & 0xFFFFFFDF) - 65 >= 0x1A && (v22 & 0x80) == 0 && v22 != 95 && (v22 - 58) < 0xFFFFFFF6)
      {
        goto LABEL_66;
      }

      if (*(this + 99) <= 0)
      {
        v24 = *(this + 52);
        if ((*(this + 53) - v24) < 2)
        {
          goto LABEL_66;
        }

        *(this + 52) = v24 + 1;
        *v24 = v22;
        **(this + 52) = 0;
        if (!--v9)
        {
          break;
        }
      }

      else if (!--v9)
      {
        break;
      }
    }
  }

  if (!a2)
  {
    goto LABEL_64;
  }

LABEL_44:
  if (*(this + 99) > 0)
  {
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

LABEL_54:
    if (*(this + 99) > 0)
    {
      goto LABEL_64;
    }

    v31 = *(this + 52);
    if ((*(this + 53) - v31) < 2)
    {
      goto LABEL_66;
    }

    *(this + 52) = v31 + 1;
    v32 = 63;
    goto LABEL_60;
  }

  v30 = *(this + 52);
  if ((*(this + 53) - v30) < 2)
  {
    goto LABEL_66;
  }

  *(this + 52) = v30 + 1;
  *v30 = 35;
  **(this + 52) = 0;
  if ((a3 & 0x80000000) != 0)
  {
    goto LABEL_54;
  }

LABEL_46:
  if (!a3)
  {
    if (*(this + 99) > 0)
    {
      goto LABEL_64;
    }

    v31 = *(this + 52);
    if ((*(this + 53) - v31) < 2)
    {
      goto LABEL_66;
    }

    *(this + 52) = v31 + 1;
    v32 = 48;
LABEL_60:
    *v31 = v32;
    **(this + 52) = 0;
    goto LABEL_61;
  }

  LODWORD(v39) = 0;
  v38 = 0;
  v25 = &v39 + 3;
  do
  {
    *--v25 = (a3 % 0xA) | 0x30;
    v26 = a3 > 9;
    a3 /= 0xAu;
  }

  while (v26);
  if (*(this + 99) <= 0)
  {
    v27 = this;
    v28 = strlen(v25);
    v29 = *(v27 + 52);
    if (*(v27 + 53) - v29 < v28 + 1)
    {
      goto LABEL_66;
    }

    memcpy(v29, v25, v28 + 1);
    this = v27;
    *(v27 + 52) += v28;
  }

LABEL_61:
  if (*(this + 99) <= 0)
  {
    v33 = *(this + 52);
    if ((*(this + 53) - v33) >= 2)
    {
      *(this + 52) = v33 + 1;
      *v33 = 125;
      **(this + 52) = 0;
      goto LABEL_64;
    }

LABEL_66:
    result = 0;
    goto LABEL_67;
  }

LABEL_64:
  result = 1;
LABEL_67:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t absl::lts_20240722::debugging_internal::anonymous namespace::RustSymbolParser::ParseRequiredLifetime(absl::lts_20240722::debugging_internal::_anonymous_namespace_::RustSymbolParser *this)
{
  v1 = *(this + 100);
  v2 = *(this + 51);
  if (*(v2 + v1) == 76)
  {
    *(this + 100) = v1 + 1;
    v3 = *(v2 + v1 + 1);
    if (v3 == 95)
    {
      v4 = v1 + 2;
LABEL_4:
      *(this + 100) = v4;
      return 1;
    }

    if ((v3 - 48) < 0xA || (v3 & 0xFFFFFFDF) - 65 <= 0x19)
    {
      v7 = (v1 + 1 + v2 + 1);
      v4 = v1 + 2;
      do
      {
        *(this + 100) = v4;
        v9 = *v7++;
        v8 = v9;
        v10 = (v9 & 0xFFFFFFDF) - 65;
        ++v4;
      }

      while ((v9 - 48) < 0xA || v10 < 0x1A);
      if (v8 == 95)
      {
        goto LABEL_4;
      }
    }
  }

  return 0;
}

uint64_t absl::lts_20240722::debugging_internal::anonymous namespace::RustSymbolParser::BeginBackref(absl::lts_20240722::debugging_internal::_anonymous_namespace_::RustSymbolParser *this)
{
  v1 = *(this + 100);
  v2 = *(this + 51);
  v3 = *(v2 + v1);
  if (v3 == 95)
  {
    v4 = 0;
    v5 = v1 + 1;
    *(this + 100) = v1 + 1;
    v6 = 0;
  }

  else
  {
    if ((v3 - 48) >= 0xA && (v3 & 0xFFFFFFDF) - 65 > 0x19)
    {
      return 0;
    }

    v10 = 0;
    v11 = 0;
    v12 = (v1 + v2 + 1);
    v5 = v1 + 1;
    do
    {
      *(this + 100) = v5;
      v13 = *(v12 - 1);
      v15 = *v12++;
      v14 = v15;
      v16 = v13 - 48;
      v17 = v13 - 29;
      if ((v13 - 97) <= 0x19)
      {
        v17 = v13 - 87;
      }

      v18 = v13 - 48;
      if (v16 > 9)
      {
        v18 = v17;
      }

      v19 = v18 + 62 * v11;
      if (v11 > 34636832)
      {
        v10 = 1;
      }

      else
      {
        v11 = v19;
      }

      ++v5;
    }

    while ((v14 - 48) < 0xA || (v14 & 0xFFFFFFDF) - 65 < 0x1A);
    if (v14 != 95)
    {
      return 0;
    }

    *(this + 100) = v5;
    if (v10)
    {
      return 0;
    }

    v4 = v11 + 1;
    v6 = 0;
    if (v4 < 0)
    {
      return v6;
    }
  }

  if (v4 >= v1 - 3)
  {
    return v6;
  }

  v7 = *(this + 98);
  if (v7 != 16)
  {
    *(this + 98) = v7 + 1;
    *(this + v7 + 82) = v5;
    *(this + 100) = v4 + 2;
    return 1;
  }

  return 0;
}

uint64_t absl::lts_20240722::debugging_internal::DumpStackTrace(absl::lts_20240722::debugging_internal *this, void **a2, char a3, uint64_t (*a4)(char *, void), void (*a5)(const char *, void *), void *a6)
{
  v9 = a2;
  v10 = this;
  v29 = *MEMORY[0x277D85DE8];
  v11 = v26;
  if (a2 >= 65)
  {
    v12 = mmap(0, 8 * a2, 3, 4098, -1, 0);
    if (v12 == -1)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      v14 = 8 * v9;
    }

    else
    {
      v14 = 0;
    }

    v24 = v14;
    if (v13)
    {
      v9 = v9;
    }

    else
    {
      v9 = 64;
    }

    if (v13)
    {
      v11 = v13;
    }
  }

  else
  {
    v24 = 0;
  }

  memset(v26, 0, sizeof(v26));
  v25 = v11;
  result = absl::lts_20240722::GetStackTrace(v11, v9, v10 + 1);
  v16 = result;
  if (result >= 1)
  {
    v17 = result;
    if (a3)
    {
      do
      {
        v19 = *v11;
        if ((absl::lts_20240722::Symbolize((*v11 - 1), v28, 0x400) & 1) != 0 || (v20 = absl::lts_20240722::Symbolize(v19, v28, 0x400), v18 = "(unknown)", v20))
        {
          v18 = v28;
        }

        snprintf(__str, 0x400uLL, "%s@ %*p  %s\n", "    ", 18, v19, v18);
        result = a4(__str, a5);
        v11 = (v11 + 8);
        --v17;
      }

      while (v17);
    }

    else
    {
      v21 = v11;
      do
      {
        v22 = *v21++;
        snprintf(v28, 0x64uLL, "%s@ %*p\n", "    ", 18, v22);
        result = a4(v28, a5);
        --v17;
      }

      while (v17);
    }
  }

  {
  }

  if (v24)
  {
    result = munmap(v25, v24);
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void absl::lts_20240722::flags_internal::GetUsageConfig(void *a1@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  absl::lts_20240722::Mutex::Lock(&_MergedGlobals_36);
  if (qword_2810C1040)
  {
    absl::lts_20240722::FlagsUsageConfig::FlagsUsageConfig(a1, qword_2810C1040);
  }

  else
  {
    a1[3] = 0;
    a1[7] = 0;
    a1[11] = 0;
    a1[15] = 0;
    a1[19] = 0;
    v4 = &unk_284F38C88;
    v6 = &v4;
    std::__function::__value_func<BOOL ()(std::string_view)>::swap[abi:ne200100](&v4, a1);
    if (v6 == &v4)
    {
      (*(*v6 + 4))(v6);
    }

    else if (v6)
    {
      (*(*v6 + 5))();
    }

    v4 = &unk_284F38C88;
    v6 = &v4;
    std::__function::__value_func<BOOL ()(std::string_view)>::swap[abi:ne200100](&v4, a1 + 4);
    if (v6 == &v4)
    {
      (*(*v6 + 4))(v6);
    }

    else if (v6)
    {
      (*(*v6 + 5))();
    }

    v4 = &unk_284F38C88;
    v6 = &v4;
    std::__function::__value_func<BOOL ()(std::string_view)>::swap[abi:ne200100](&v4, a1 + 8);
    if (v6 == &v4)
    {
      (*(*v6 + 4))(v6);
    }

    else if (v6)
    {
      (*(*v6 + 5))();
    }

    v4 = &unk_284F38D38;
    v6 = &v4;
    std::__function::__value_func<std::string ()(void)>::swap[abi:ne200100](&v4, a1 + 12);
    if (v6 == &v4)
    {
      (*(*v6 + 4))(v6);
    }

    else if (v6)
    {
      (*(*v6 + 5))();
    }

    v4 = &unk_284F38DE8;
    v6 = &v4;
    std::__function::__value_func<std::string ()(std::string_view)>::swap[abi:ne200100](&v4, a1 + 16);
    if (v6 == &v4)
    {
      (*(*v6 + 4))(v6);
    }

    else if (v6)
    {
      (*(*v6 + 5))();
    }
  }

  absl::lts_20240722::Mutex::Unlock(&_MergedGlobals_36);
  v3 = *MEMORY[0x277D85DE8];
}

BOOL absl::lts_20240722::flags_internal::anonymous namespace::ContainsHelpshortFlags(char *a1, size_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = 0;
  v5 = a1 + 1;
  v6 = a1 - 1;
  while (a2 != v4)
  {
    v7 = v4;
    v8 = v6[a2];
    ++v4;
    --v5;
    if (v8 != 92)
    {
      --v6;
      if (v8 != 47)
      {
        continue;
      }
    }

    if (a2 + 1 != v4)
    {
      if (a2 <= a2 - v4)
      {
        std::__throw_out_of_range[abi:ne200100]("string_view::substr");
      }

      v3 = &v5[a2];
      v2 = v7;
    }

    break;
  }

  absl::lts_20240722::flags_internal::ShortProgramInvocationName(v20);
  v9 = v21;
  v10 = v20[0];
  if ((v21 & 0x80u) == 0)
  {
    v11 = v20;
  }

  else
  {
    v11 = v20[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v12 = v21;
  }

  else
  {
    v12 = v20[1];
  }

  if (v12 && (v2 < v12 || memcmp(v3, v11, v12)))
  {
LABEL_20:
    result = 0;
    if ((v9 & 0x80000000) == 0)
    {
      return result;
    }

LABEL_35:
    v19 = result;
    operator delete(v10);
    return v19;
  }

  v13 = &v3[v12];
  if (v2 != v12 && *v13 == 46)
  {
    goto LABEL_34;
  }

  if (v2 - v12 < 6)
  {
    goto LABEL_20;
  }

  if (*v13 == 1767992621 && *(v13 + 2) == 11886)
  {
LABEL_34:
    result = 1;
    if (v9 < 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v16 = *v13;
    v17 = *(v13 + 2);
    result = v16 == 1767992671 && v17 == 11886;
    if (v9 < 0)
    {
      goto LABEL_35;
    }
  }

  return result;
}

void sub_23C95D62C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *absl::lts_20240722::flags_internal::anonymous namespace::NormalizeFilename@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (!a2)
  {
    goto LABEL_7;
  }

  v3 = 0;
  while (1)
  {
    v4 = result[v3];
    if (v4 != 92 && v4 != 47)
    {
      break;
    }

    if (a2 == ++v3)
    {
      goto LABEL_7;
    }
  }

  if (v3 != -1)
  {
    v5 = a2 - v3;
    if ((a2 - v3) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v5 >= 0x17)
    {
      operator new();
    }

    a3[23] = v5;
    if (a2 != v3)
    {
      v7 = a3;
      result = memmove(a3, &result[v3], a2 - v3);
      a3 = v7;
    }

    a3[a2 - v3] = 0;
  }

  else
  {
LABEL_7:
    a3[23] = 0;
    *a3 = 0;
  }

  return result;
}

void *absl::lts_20240722::FlagsUsageConfig::FlagsUsageConfig(void *a1, void *a2)
{
  v4 = a2[3];
  if (v4)
  {
    if (v4 == a2)
    {
      a1[3] = a1;
      (*(*a2[3] + 24))(a2[3], a1);
      v5 = a1 + 4;
      v6 = a2[7];
      if (!v6)
      {
LABEL_10:
        a1[7] = v6;
        goto LABEL_12;
      }
    }

    else
    {
      a1[3] = (*(*v4 + 16))(v4);
      v5 = a1 + 4;
      v6 = a2[7];
      if (!v6)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    a1[3] = 0;
    v5 = a1 + 4;
    v6 = a2[7];
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (v6 != a2 + 4)
  {
    v6 = (*(*v6 + 16))(v6);
    goto LABEL_10;
  }

  a1[7] = v5;
  (*(*a2[7] + 24))(a2[7], v5);
LABEL_12:
  v7 = a2[11];
  if (!v7)
  {
LABEL_15:
    a1[11] = v7;
    goto LABEL_17;
  }

  if (v7 != a2 + 8)
  {
    v7 = (*(*v7 + 16))(v7);
    goto LABEL_15;
  }

  a1[11] = a1 + 8;
  (*(*a2[11] + 24))(a2[11], a1 + 8);
LABEL_17:
  v8 = a2[15];
  if (!v8)
  {
LABEL_20:
    a1[15] = v8;
    goto LABEL_22;
  }

  if (v8 != a2 + 12)
  {
    v8 = (*(*v8 + 16))(v8);
    goto LABEL_20;
  }

  a1[15] = a1 + 12;
  (*(*a2[15] + 24))(a2[15], a1 + 12);
LABEL_22:
  v9 = a2[19];
  if (!v9)
  {
LABEL_25:
    a1[19] = v9;
    return a1;
  }

  if (v9 != a2 + 16)
  {
    v9 = (*(*v9 + 16))(v9);
    goto LABEL_25;
  }

  a1[19] = a1 + 16;
  (*(*a2[19] + 24))(a2[19]);
  return a1;
}

void sub_23C95DA04(_Unwind_Exception *a1)
{
  std::function<std::string ()(void)>::~function(v4);
  std::function<BOOL ()(std::string_view)>::~function(v3);
  std::function<BOOL ()(std::string_view)>::~function(v2);
  std::function<BOOL ()(std::string_view)>::~function(v1);
  _Unwind_Resume(a1);
}

uint64_t std::function<std::string ()(void)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t std::function<BOOL ()(std::string_view)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void *std::__function::__value_func<BOOL ()(std::string_view)>::swap[abi:ne200100](void *result, void *a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  if (a2 == result)
  {
LABEL_8:
    v6 = *MEMORY[0x277D85DE8];
    return result;
  }

  v3 = result;
  result = result[3];
  v4 = a2[3];
  if (result != v3)
  {
    if (v4 != a2)
    {
      v3[3] = v4;
      a2[3] = result;
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }

    (*(*v4 + 24))(a2[3], v3);
    result = (*(*a2[3] + 32))(a2[3]);
    a2[3] = v3[3];
    v3[3] = v3;
    goto LABEL_8;
  }

  if (v4 == a2)
  {
    (*(*result + 24))(result, v8);
    (*(*v3[3] + 32))(v3[3]);
    v3[3] = 0;
    (*(*a2[3] + 24))(a2[3], v3);
    (*(*a2[3] + 32))(a2[3]);
    a2[3] = 0;
    v3[3] = v3;
    (*(v8[0] + 24))(v8, a2);
    result = (*(v8[0] + 32))(v8);
  }

  else
  {
    (*(*result + 24))(result, a2);
    result = (*(*v3[3] + 32))(v3[3]);
    v3[3] = a2[3];
  }

  a2[3] = a2;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C95DDF0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__value_func<std::string ()(void)>::swap[abi:ne200100](void *result, void *a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  if (a2 == result)
  {
LABEL_8:
    v6 = *MEMORY[0x277D85DE8];
    return result;
  }

  v3 = result;
  result = result[3];
  v4 = a2[3];
  if (result != v3)
  {
    if (v4 != a2)
    {
      v3[3] = v4;
      a2[3] = result;
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }

    (*(*v4 + 24))(a2[3], v3);
    result = (*(*a2[3] + 32))(a2[3]);
    a2[3] = v3[3];
    v3[3] = v3;
    goto LABEL_8;
  }

  if (v4 == a2)
  {
    (*(*result + 24))(result, v8);
    (*(*v3[3] + 32))(v3[3]);
    v3[3] = 0;
    (*(*a2[3] + 24))(a2[3], v3);
    (*(*a2[3] + 32))(a2[3]);
    a2[3] = 0;
    v3[3] = v3;
    (*(v8[0] + 24))(v8, a2);
    result = (*(v8[0] + 32))(v8);
  }

  else
  {
    (*(*result + 24))(result, a2);
    result = (*(*v3[3] + 32))(v3[3]);
    v3[3] = a2[3];
  }

  a2[3] = a2;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C95E080(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__value_func<std::string ()(std::string_view)>::swap[abi:ne200100](void *result, void *a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  if (a2 == result)
  {
LABEL_8:
    v6 = *MEMORY[0x277D85DE8];
    return result;
  }

  v3 = result;
  result = result[3];
  v4 = a2[3];
  if (result != v3)
  {
    if (v4 != a2)
    {
      v3[3] = v4;
      a2[3] = result;
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }

    (*(*v4 + 24))(a2[3], v3);
    result = (*(*a2[3] + 32))(a2[3]);
    a2[3] = v3[3];
    v3[3] = v3;
    goto LABEL_8;
  }

  if (v4 == a2)
  {
    (*(*result + 24))(result, v8);
    (*(*v3[3] + 32))(v3[3]);
    v3[3] = 0;
    (*(*a2[3] + 24))(a2[3], v3);
    (*(*a2[3] + 32))(a2[3]);
    a2[3] = 0;
    v3[3] = v3;
    (*(v8[0] + 24))(v8, a2);
    result = (*(v8[0] + 32))(v8);
  }

  else
  {
    (*(*result + 24))(result, a2);
    result = (*(*v3[3] + 32))(v3[3]);
    v3[3] = a2[3];
  }

  a2[3] = a2;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C95E310(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<BOOL (*)(std::string_view),std::allocator<BOOL (*)(std::string_view)>,BOOL ()(std::string_view)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F38C88;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL (*)(std::string_view),std::allocator<BOOL (*)(std::string_view)>,BOOL ()(std::string_view)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE30DDELL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE30DDELL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE30DDELL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE30DDELL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<std::string (*)(void),std::allocator<std::string (*)(void)>,std::string ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F38D38;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::string (*)(void),std::allocator<std::string (*)(void)>,std::string ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE30F0FLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE30F0FLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE30F0FLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE30F0FLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<std::string (*)(std::string_view),std::allocator<std::string (*)(std::string_view)>,std::string ()(std::string_view)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F38DE8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::string (*)(std::string_view),std::allocator<std::string (*)(std::string_view)>,std::string ()(std::string_view)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE31090)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE31090 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE31090))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE31090 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t absl::lts_20240722::flags_internal::FlagImpl::Init(absl::lts_20240722::flags_internal::FlagImpl *this)
{
  v12[1] = *MEMORY[0x277D85DE8];
  *(this + 9) = 0;
  v2 = (*(this + 40) >> 1) & 3;
  if (v2 < 2)
  {
    v3 = *(this + 41) & 3;
    v12[0] = 0;
    if (v3 == 1)
    {
      (*(this + 8))(v12);
      if ((*(this + 40) & 6) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v6 = (*(this + 3))(4, 0, 0, 0);
      memcpy(v12, this + 64, v6);
      if ((*(this + 40) & 6) == 0)
      {
LABEL_9:
        *(v12 + (*(this + 3))(4, 0, 0, 0)) = 1;
      }
    }

    result = (*(this + 3))(9, 0, 0, 0);
    v9 = (this + result);
    v10 = v12[0];
    goto LABEL_11;
  }

  if (v2 != 2)
  {
    v7 = atomic_load_explicit((this + (*(this + 3))(9, 0, 0, 0)), memory_order_acquire) & 0xFFFFFFFFFFFFFFFCLL;
    (*(this + 8))(v7);
    result = (*(this + 3))(9, 0, 0, 0);
    v9 = (this + result);
    v10 = v7 | 1;
LABEL_11:
    atomic_store(v10, v9);
    goto LABEL_12;
  }

  v4 = *(this + 8);
  v5 = (*(this + 3))(9, 0, 0, 0);
  result = v4(this + v5);
LABEL_12:
  atomic_store(0, this + 6);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

atomic_uint *absl::lts_20240722::flags_internal::FlagImpl::DataGuard(atomic_uint *this)
{
  v4[0] = absl::lts_20240722::flags_internal::FlagImpl::Init;
  v4[1] = 0;
  v3 = this;
  if (atomic_load_explicit(this + 11, memory_order_acquire) == 221)
  {
    return this + 18;
  }

  absl::lts_20240722::base_internal::CallOnceImpl<void (absl::lts_20240722::flags_internal::FlagImpl::*)(void),absl::lts_20240722::flags_internal::FlagImpl*>(this + 11, 1, v4, &v3);
  return this + 18;
}

const char *absl::lts_20240722::flags_internal::FlagImpl::Name(absl::lts_20240722::flags_internal::FlagImpl *this)
{
  v1 = *(this + 1);
  strlen(v1);
  return v1;
}

atomic_ullong *absl::lts_20240722::flags_internal::FlagImpl::StoreValue(uint64_t a1, uint64_t *a2, int a3)
{
  v5 = (*(a1 + 40) >> 1) & 3;
  if (v5 < 2)
  {
    __dst = atomic_load_explicit((a1 + (*(a1 + 24))(9, 0, 0, 0)), memory_order_acquire);
    v6 = (*(a1 + 24))(4, 0, 0, 0);
    memcpy(&__dst, a2, v6);
    atomic_store(__dst, (a1 + (*(a1 + 24))(9, 0, 0, 0)));
LABEL_18:
    *(a1 + 48) += 2;
    goto LABEL_19;
  }

  if (v5 != 2)
  {
    explicit = atomic_load_explicit((a1 + (*(a1 + 24))(9, 0, 0, 0)), memory_order_acquire);
    if ((~explicit & 3) != 0)
    {
      (*(a1 + 24))(2, a2, explicit & 0xFFFFFFFFFFFFFFFCLL, 0);
      v15 = explicit | (a3 == 0);
    }

    else
    {
      __dst = explicit & 0xFFFFFFFFFFFFFFFCLL;
      absl::lts_20240722::Mutex::Lock(&_MergedGlobals_37);
      if (!qword_2810C1050)
      {
        operator new();
      }

      std::vector<void *>::push_back[abi:ne200100](qword_2810C1050, &__dst);
      absl::lts_20240722::Mutex::Unlock(&_MergedGlobals_37);
      v13 = *(a1 + 24);
      v14 = v13(0, 0, 0, 0);
      v13(3, a2, v14, 0);
      if (a3)
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 | 1;
      }
    }

    atomic_store(v15, (a1 + (*(a1 + 24))(9, 0, 0, 0)));
    goto LABEL_18;
  }

  v7 = (a1 + (*(a1 + 24))(9, 0, 0, 0));
  v8 = (*(a1 + 24))(4, 0, 0, 0);
  v9 = *(a1 + 48);
  *(a1 + 48) = v9 + 1;
  __dmb(0xBu);
  if (v8 >= 8)
  {
    do
    {
      v10 = *a2++;
      *v7++ = v10;
      v8 -= 8;
    }

    while (v8 > 7);
  }

  if (v8)
  {
    __dst = 0;
    memcpy(&__dst, a2, v8);
    *v7 = __dst;
  }

  atomic_store(v9 + 2, (a1 + 48));
LABEL_19:
  *(a1 + 41) |= 4u;
  return absl::lts_20240722::flags_internal::FlagImpl::InvokeCallback(a1);
}

atomic_ullong *absl::lts_20240722::flags_internal::FlagImpl::InvokeCallback(atomic_ullong *this)
{
  v1 = this[7];
  if (v1)
  {
    v2 = this;
    v3 = *v1;
    v4 = this + 11;
    v8[0] = absl::lts_20240722::flags_internal::FlagImpl::Init;
    v8[1] = 0;
    v7 = v2;
    if (atomic_load_explicit(v4, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (absl::lts_20240722::flags_internal::FlagImpl::*)(void),absl::lts_20240722::flags_internal::FlagImpl*>(v4, 1, v8, &v7);
    }

    absl::lts_20240722::Mutex::Unlock((v2 + 9));
    v5 = v2[7];
    v6 = absl::lts_20240722::Mutex::Lock((v5 + 8));
    v3(v6);
    absl::lts_20240722::Mutex::Unlock((v5 + 8));
    return absl::lts_20240722::Mutex::Lock(v2 + 9);
  }

  return this;
}

void sub_23C95EC2C(_Unwind_Exception *a1)
{
  absl::lts_20240722::Mutex::Unlock((v2 + 8));
  absl::lts_20240722::Mutex::Lock((v1 + 72));
  _Unwind_Resume(a1);
}

void absl::lts_20240722::flags_internal::FlagImpl::Filename(const char **this)
{
  v6 = *MEMORY[0x277D85DE8];
  absl::lts_20240722::flags_internal::GetUsageConfig(v4);
  v3[0] = this[2];
  v3[1] = strlen(v3[0]);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, v3);
  absl::lts_20240722::FlagsUsageConfig::~FlagsUsageConfig(v4);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_23C95ED10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  absl::lts_20240722::FlagsUsageConfig::~FlagsUsageConfig(va);
  _Unwind_Resume(a1);
}

unint64_t absl::lts_20240722::flags_internal::FlagImpl::Help@<X0>(absl::lts_20240722::flags_internal::FlagImpl *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(this + 40);
  v4 = *(this + 4);
  if (v3)
  {

    return v4();
  }

  else
  {
    __src = v4;
    result = strlen(v4);
    if (result >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = result;
    if (result >= 0x17)
    {
      operator new();
    }

    a2[23] = result;
    if (result)
    {
      result = memmove(a2, __src, result);
      a2[v6] = 0;
    }

    else
    {
      *a2 = 0;
    }
  }

  return result;
}

uint64_t absl::lts_20240722::flags_internal::FlagImpl::IsSpecifiedOnCommandLine(atomic_ullong *this)
{
  v2 = this + 11;
  v6[0] = absl::lts_20240722::flags_internal::FlagImpl::Init;
  v6[1] = 0;
  v5 = this;
  if (atomic_load_explicit(v2, memory_order_acquire) != 221)
  {
    absl::lts_20240722::base_internal::CallOnceImpl<void (absl::lts_20240722::flags_internal::FlagImpl::*)(void),absl::lts_20240722::flags_internal::FlagImpl*>(v2, 1, v6, &v5);
  }

  absl::lts_20240722::Mutex::Lock(this + 9);
  v3 = *(this + 41);
  absl::lts_20240722::Mutex::Unlock((this + 9));
  return (v3 >> 3) & 1;
}

void absl::lts_20240722::flags_internal::FlagImpl::DefaultValue(atomic_ullong *this@<X0>, void *a2@<X8>)
{
  v4 = this + 11;
  v10 = absl::lts_20240722::flags_internal::FlagImpl::Init;
  v11 = 0;
  v9 = this;
  if (atomic_load_explicit(v4, memory_order_acquire) != 221)
  {
    absl::lts_20240722::base_internal::CallOnceImpl<void (absl::lts_20240722::flags_internal::FlagImpl::*)(void),absl::lts_20240722::flags_internal::FlagImpl*>(v4, 1, &v10, &v9);
  }

  absl::lts_20240722::Mutex::Lock(this + 9);
  v5 = this[3];
  if ((*(this + 41) & 3) == 1)
  {
    v7 = v5(0, 0, 0, 0);
    (this[8])();
  }

  else if ((*(this + 41) & 3) != 0)
  {
    v7 = v5(0, 0, 0, 0);
    v5(3, this + 8, v7, 0);
  }

  else
  {
    v6 = this[8];
    v7 = v5(0, 0, 0, 0);
    v5(3, v6, v7, 0);
  }

  v8 = this[3];
  v10 = v7;
  v11 = v8;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v8(8, v7, a2, 0);
  v10 = 0;
  if (v7 && v8)
  {
    v8(1, 0, v7, 0);
  }

  absl::lts_20240722::Mutex::Unlock((this + 9));
}

void sub_23C95F020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  std::unique_ptr<void,absl::lts_20240722::flags_internal::DynValueDeleter>::~unique_ptr[abi:ne200100](va);
  absl::lts_20240722::Mutex::Unlock((v3 + 72));
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<void,absl::lts_20240722::flags_internal::DynValueDeleter>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    if (v3)
    {
      v3(1, 0);
    }
  }

  return a1;
}

void absl::lts_20240722::flags_internal::FlagImpl::CurrentValue(atomic_ullong *this@<X0>, void *a2@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = this + 11;
  v14 = absl::lts_20240722::flags_internal::FlagImpl::Init;
  v15 = 0;
  v13 = this;
  if (atomic_load_explicit(v4, memory_order_acquire) != 221)
  {
    absl::lts_20240722::base_internal::CallOnceImpl<void (absl::lts_20240722::flags_internal::FlagImpl::*)(void),absl::lts_20240722::flags_internal::FlagImpl*>(v4, 1, &v14, &v13);
  }

  v5 = (*(this + 40) >> 1) & 3;
  if (v5 >= 2)
  {
    if (v5 == 2)
    {
      v7 = (this[3])(0, 0, 0, 0);
      v8 = this[3];
      v14 = v7;
      v15 = v8;
      absl::lts_20240722::flags_internal::FlagImpl::ReadSequenceLockedData(this, v7);
      v9 = this[3];
      a2[1] = 0;
      a2[2] = 0;
      *a2 = 0;
      v9(8, v7, a2, 0);
      v14 = 0;
      if (v7 && v8)
      {
        v8(1, 0, v7, 0);
      }
    }

    else
    {
      absl::lts_20240722::Mutex::Lock(this + 9);
      v10 = this[3];
      explicit = atomic_load_explicit((this + v10(9, 0, 0, 0)), memory_order_acquire);
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      v10(8, explicit & 0xFFFFFFFFFFFFFFFCLL, a2, 0);
      absl::lts_20240722::Mutex::Unlock((this + 9));
    }
  }

  else
  {
    v14 = 0;
    v14 = atomic_load_explicit((this + (this[3])(9, 0, 0, 0)), memory_order_acquire);
    v6 = this[3];
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    v6(8, &v14, a2, 0);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_23C95F268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void absl::lts_20240722::flags_internal::FlagImpl::ReadSequenceLockedData(absl::lts_20240722::flags_internal::FlagImpl *this, void *a2)
{
  v4 = (*(this + 3))(4, 0, 0, 0);
  v5 = (*(this + 3))(9, 0, 0, 0);
  explicit = atomic_load_explicit(this + 6, memory_order_acquire);
  if (explicit)
  {
    goto LABEL_11;
  }

  v7 = (this + v5);
  if (v4 < 8)
  {
    i = v4;
    v8 = a2;
    if (v4)
    {
LABEL_6:
      __src = *v7;
      memcpy(v8, &__src, i);
    }
  }

  else
  {
    v8 = a2;
    for (i = v4; i > 7; i -= 8)
    {
      v10 = *v7++;
      *v8++ = v10;
    }

    if (i)
    {
      goto LABEL_6;
    }
  }

  __dmb(9u);
  if (explicit != *(this + 6))
  {
LABEL_11:
    v11 = absl::lts_20240722::flags_internal::FlagImpl::DataGuard(this);
    absl::lts_20240722::Mutex::ReaderLock(v11);
    v12 = (*(this + 3))(9, 0, 0, 0);
    absl::lts_20240722::flags_internal::SequenceLock::TryRead(this + 6, a2, (this + v12), v4);
    absl::lts_20240722::Mutex::ReaderUnlock(v11);
  }
}

void absl::lts_20240722::flags_internal::FlagImpl::SaveState(atomic_ullong *this)
{
  v2 = this + 11;
  __src[0] = absl::lts_20240722::flags_internal::FlagImpl::Init;
  __src[1] = 0;
  v19 = this;
  if (atomic_load_explicit(v2, memory_order_acquire) != 221)
  {
    absl::lts_20240722::base_internal::CallOnceImpl<void (absl::lts_20240722::flags_internal::FlagImpl::*)(void),absl::lts_20240722::flags_internal::FlagImpl*>(v2, 1, __src, &v19);
  }

  absl::lts_20240722::Mutex::Lock(this + 9);
  v3 = *(this + 41);
  v4 = (*(this + 40) >> 1) & 3;
  if (v4 < 2)
  {
    atomic_load_explicit((this + (this[3])(9, 0, 0, 0)), memory_order_acquire);
    v5 = this[6];
    operator new();
  }

  if (v4 != 2)
  {
    v15 = this[3];
    explicit = atomic_load_explicit((this + v15(9, 0, 0, 0)), memory_order_acquire);
    v17 = v15(0, 0, 0, 0);
    v15(3, explicit & 0xFFFFFFFFFFFFFFFCLL, v17, 0);
    v18 = this[6];
    operator new();
  }

  v6 = (this[3])(0, 0, 0, 0);
  v7 = (this[3])(9, 0, 0, 0);
  v8 = (this[3])(4, 0, 0, 0);
  if ((atomic_load_explicit(this + 6, memory_order_acquire) & 1) == 0)
  {
    v9 = v8;
    v10 = (this + v7);
    v11 = v6;
    if (v9 >= 8)
    {
      do
      {
        v12 = *v10++;
        *v11++ = v12;
        v9 -= 8;
      }

      while (v9 > 7);
    }

    if (v9)
    {
      __src[0] = *v10;
      memcpy(v11, __src, v9);
    }

    __dmb(9u);
    v13 = this[6];
  }

  v14 = this[6];
  operator new();
}

BOOL absl::lts_20240722::flags_internal::FlagImpl::RestoreState(atomic_ullong *this, const absl::lts_20240722::flags_internal::FlagState *a2)
{
  v4 = this + 11;
  v10[0] = absl::lts_20240722::flags_internal::FlagImpl::Init;
  v10[1] = 0;
  v9 = this;
  if (atomic_load_explicit(v4, memory_order_acquire) != 221)
  {
    absl::lts_20240722::base_internal::CallOnceImpl<void (absl::lts_20240722::flags_internal::FlagImpl::*)(void),absl::lts_20240722::flags_internal::FlagImpl*>(v4, 1, v10, &v9);
  }

  absl::lts_20240722::Mutex::Lock(this + 9);
  v5 = *(a2 + 4);
  v6 = this[6] / 2;
  if (v5 != v6)
  {
    if ((this[5] & 4) != 0)
    {
      absl::lts_20240722::flags_internal::FlagImpl::StoreValue(this, *(a2 + 2), 1);
    }

    else
    {
      absl::lts_20240722::flags_internal::FlagImpl::StoreValue(this, a2 + 2, 1);
    }

    v7 = *(this + 41) & 0xFB | (4 * *(a2 + 24));
    *(this + 41) = v7;
    *(this + 41) = v7 & 0xF7 | (8 * *(a2 + 25));
  }

  absl::lts_20240722::Mutex::Unlock((this + 9));
  return v5 != v6;
}

void absl::lts_20240722::flags_internal::FlagImpl::TryParse(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v41 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 24);
  if ((*(a1 + 41) & 3) == 1)
  {
    v12 = v10(0, 0, 0, 0);
    (*(a1 + 64))();
  }

  else
  {
    if ((*(a1 + 41) & 3) != 0)
    {
      v12 = v10(0, 0, 0, 0);
      v13 = a1 + 64;
    }

    else
    {
      v11 = *(a1 + 64);
      v12 = v10(0, 0, 0, 0);
      v13 = v11;
    }

    v10(3, v13, v12, 0);
  }

  v14 = *(a1 + 24);
  v25 = v12;
  v26 = v14;
  __p = 0;
  v23 = 0;
  v24 = 0;
  v27 = a2;
  v28 = a3;
  if (v14(7, &v27, v12, &__p))
  {
    *a5 = v12;
    a5[1] = v14;
    v12 = 0;
    if (SHIBYTE(v24) < 0)
    {
LABEL_9:
      operator delete(__p);
    }
  }

  else
  {
    v16 = *(a1 + 8);
    v17 = strlen(v16);
    p_p = __p;
    v27 = "Illegal value '";
    v28 = 15;
    if (v24 >= 0)
    {
      v19 = HIBYTE(v24);
    }

    else
    {
      v19 = v23;
    }

    if (v24 >= 0)
    {
      p_p = &__p;
    }

    v29 = a2;
    v30 = a3;
    v31 = "' specified for flag '";
    v32 = 22;
    v33 = v16;
    v34 = v17;
    v35 = "'";
    v36 = 1;
    if (v19)
    {
      v20 = "; ";
    }

    else
    {
      v20 = &byte_23CE7F131;
    }

    v37 = v20;
    v38 = 2 * (v19 != 0);
    v39 = p_p;
    v40 = v19;
    absl::lts_20240722::strings_internal::CatPieces(&v27, 7, &v21);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = v21;
    *a5 = 0;
    a5[1] = 0;
    if (SHIBYTE(v24) < 0)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  if (v12 && v14)
  {
    v14(1, 0, v12, 0);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_23C95FA10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<void,absl::lts_20240722::flags_internal::DynValueDeleter>::~unique_ptr[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void absl::lts_20240722::flags_internal::FlagImpl::Read(atomic_ullong *this, void *a2)
{
  v4 = this + 11;
  __src[0] = absl::lts_20240722::flags_internal::FlagImpl::Init;
  __src[1] = 0;
  v10 = this;
  if (atomic_load_explicit(v4, memory_order_acquire) == 221)
  {
    v5 = (*(this + 40) >> 1) & 3;
    v6 = v5 == 2;
    if (v5 < 2)
    {
LABEL_3:
      __src[0] = atomic_load_explicit((this + (this[3])(9, 0, 0, 0)), memory_order_acquire);
      v7 = (this[3])(4, 0, 0, 0);
      memcpy(a2, __src, v7);
      return;
    }
  }

  else
  {
    absl::lts_20240722::base_internal::CallOnceImpl<void (absl::lts_20240722::flags_internal::FlagImpl::*)(void),absl::lts_20240722::flags_internal::FlagImpl*>(v4, 1, __src, &v10);
    v8 = (*(this + 40) >> 1) & 3;
    v6 = v8 == 2;
    if (v8 < 2)
    {
      goto LABEL_3;
    }
  }

  if (v6)
  {
    absl::lts_20240722::flags_internal::FlagImpl::ReadSequenceLockedData(this, a2);
  }

  else
  {
    absl::lts_20240722::Mutex::Lock(this + 9);
    explicit = atomic_load_explicit((this + (this[3])(9, 0, 0, 0)), memory_order_acquire);
    (this[3])(3, explicit & 0xFFFFFFFFFFFFFFFCLL, a2, 0);
    if ((explicit & 3) == 1)
    {
      atomic_store(explicit | 2, (this + (this[3])(9, 0, 0, 0)));
    }

    absl::lts_20240722::Mutex::Unlock((this + 9));
  }
}

unint64_t absl::lts_20240722::flags_internal::FlagImpl::ReadOneWord(absl::lts_20240722::flags_internal::FlagImpl *this)
{
  v2 = (this + 44);
  v5[0] = absl::lts_20240722::flags_internal::FlagImpl::Init;
  v5[1] = 0;
  v4 = this;
  if (atomic_load_explicit(v2, memory_order_acquire) != 221)
  {
    absl::lts_20240722::base_internal::CallOnceImpl<void (absl::lts_20240722::flags_internal::FlagImpl::*)(void),absl::lts_20240722::flags_internal::FlagImpl*>(v2, 1, v5, &v4);
  }

  return atomic_load_explicit((this + (*(this + 3))(9, 0, 0, 0)), memory_order_acquire);
}

unint64_t absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(absl::lts_20240722::flags_internal::FlagImpl *this)
{
  v2 = (this + 44);
  v5[0] = absl::lts_20240722::flags_internal::FlagImpl::Init;
  v5[1] = 0;
  v4 = this;
  if (atomic_load_explicit(v2, memory_order_acquire) != 221)
  {
    absl::lts_20240722::base_internal::CallOnceImpl<void (absl::lts_20240722::flags_internal::FlagImpl::*)(void),absl::lts_20240722::flags_internal::FlagImpl*>(v2, 1, v5, &v4);
  }

  return atomic_load_explicit((this + (*(this + 3))(9, 0, 0, 0)), memory_order_acquire) & 1;
}

uint64_t absl::lts_20240722::flags_internal::FlagImpl::ParseFrom(uint64_t a1, const char *a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  v12 = (a1 + 44);
  v22 = absl::lts_20240722::flags_internal::FlagImpl::Init;
  v23 = 0;
  v21 = a1;
  if (atomic_load_explicit(v12, memory_order_acquire) == 221)
  {
    absl::lts_20240722::Mutex::Lock((a1 + 72));
    if (a4 != 2)
    {
      goto LABEL_3;
    }

LABEL_16:
    absl::lts_20240722::flags_internal::FlagImpl::TryParse(a1, a2, a3, a6, &v22);
    v16 = v22;
    if (!v22)
    {
      goto LABEL_21;
    }

    v17 = *(a1 + 41);
    if ((v17 & 3) != 0)
    {
      v15 = 0;
      *(a1 + 64) = v22;
      v18 = v17 & 0xFC;
      *(a1 + 41) = v18;
      v22 = 0;
      if ((v18 & 4) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v15 = *(a1 + 64);
      *(a1 + 64) = v22;
      v22 = v15;
      if ((v17 & 4) == 0)
      {
LABEL_19:
        absl::lts_20240722::flags_internal::FlagImpl::StoreValue(a1, v16, a5);
        *(a1 + 41) &= ~4u;
        v22 = 0;
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_24:
        if (!v23)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }
    }

    v22 = 0;
    if (!v15)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  absl::lts_20240722::base_internal::CallOnceImpl<void (absl::lts_20240722::flags_internal::FlagImpl::*)(void),absl::lts_20240722::flags_internal::FlagImpl*>(v12, 1, &v22, &v21);
  absl::lts_20240722::Mutex::Lock((a1 + 72));
  if (a4 == 2)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (a4 == 1)
  {
    if ((*(a1 + 41) & 4) != 0)
    {
      goto LABEL_26;
    }

    absl::lts_20240722::flags_internal::FlagImpl::TryParse(a1, a2, a3, a6, &v22);
    v15 = v22;
    if (!v22)
    {
      goto LABEL_21;
    }

    absl::lts_20240722::flags_internal::FlagImpl::StoreValue(a1, v22, a5);
    v22 = 0;
    if (!v23)
    {
      goto LABEL_26;
    }

LABEL_25:
    v23(1, 0, v15, 0);
    goto LABEL_26;
  }

  if (a4)
  {
    goto LABEL_26;
  }

  absl::lts_20240722::flags_internal::FlagImpl::TryParse(a1, a2, a3, a6, &v22);
  v13 = v22;
  if (v22)
  {
    absl::lts_20240722::flags_internal::FlagImpl::StoreValue(a1, v22, a5);
    if (a5)
    {
      v22 = 0;
      v14 = v23;
      if (!v23)
      {
        goto LABEL_26;
      }

      goto LABEL_14;
    }

    *(a1 + 41) |= 8u;
    v22 = 0;
    v14 = v23;
    if (v23)
    {
LABEL_14:
      v14(1, 0, v13, 0);
    }

LABEL_26:
    v19 = 1;
    goto LABEL_27;
  }

LABEL_21:
  v19 = 0;
LABEL_27:
  absl::lts_20240722::Mutex::Unlock((a1 + 72));
  return v19;
}

void sub_23C95FF24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<void,absl::lts_20240722::flags_internal::DynValueDeleter>::~unique_ptr[abi:ne200100](va);
  absl::lts_20240722::Mutex::Unlock((v3 + 72));
  _Unwind_Resume(a1);
}

void absl::lts_20240722::flags_internal::FlagImpl::CheckDefaultValueParsingRoundtrip(absl::lts_20240722::flags_internal::FlagImpl *this)
{
  v25 = *MEMORY[0x277D85DE8];
  absl::lts_20240722::flags_internal::FlagImpl::DefaultValue(this, v18);
  *&v24[0] = absl::lts_20240722::flags_internal::FlagImpl::Init;
  *(&v24[0] + 1) = 0;
  *&v23[0] = this;
  if (atomic_load_explicit(this + 11, memory_order_acquire) != 221)
  {
    absl::lts_20240722::base_internal::CallOnceImpl<void (absl::lts_20240722::flags_internal::FlagImpl::*)(void),absl::lts_20240722::flags_internal::FlagImpl*>(this + 11, 1, v24, v23);
  }

  absl::lts_20240722::Mutex::Lock(this + 9);
  v2 = *(this + 3);
  if ((*(this + 41) & 3) == 1)
  {
    v4 = v2(0, 0, 0, 0);
    (*(this + 8))();
  }

  else if ((*(this + 41) & 3) != 0)
  {
    v4 = v2(0, 0, 0, 0);
    v2(3, this + 64, v4, 0);
  }

  else
  {
    v3 = *(this + 8);
    v4 = v2(0, 0, 0, 0);
    v2(3, v3, v4, 0);
  }

  v5 = *(this + 3);
  v16 = v4;
  v17 = v5;
  __p[0] = 0;
  __p[1] = 0;
  v15 = 0;
  v6 = v19;
  v7 = v18;
  if ((v19 & 0x80u) != 0)
  {
    v7 = v18[0];
    v6 = v18[1];
  }

  *&v24[0] = v7;
  *(&v24[0] + 1) = v6;
  if (!v5(7, v24, v4, __p))
  {
    *&v24[0] = "Flag ";
    *(&v24[0] + 1) = 5;
    v9 = strlen(*(this + 1));
    *&v23[0] = *(this + 1);
    *(&v23[0] + 1) = v9;
    *&v22 = " (from ";
    *(&v22 + 1) = 7;
    absl::lts_20240722::flags_internal::FlagImpl::Filename(this);
    size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v12;
    }

    else
    {
      v11 = v12.__r_.__value_.__r.__words[0];
    }

    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v12.__r_.__value_.__l.__size_;
    }

    *&v21 = v11;
    *(&v21 + 1) = size;
    *&v20 = "): string form of default value '";
    *(&v20 + 1) = 33;
    absl::lts_20240722::StrCat<std::string,char [30],std::string>("' could not be parsed; error=", v24, v23, &v22, &v21, &v20, v18, __p, &v13);
    (atomic_load_explicit(absl::lts_20240722::raw_log_internal::internal_log_function, memory_order_acquire))(3, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/abseil-cpp-src/absl/flags/internal/flag.cc", 685, &v13);
    std::string::~string(&v13);
    std::string::~string(&v12);
    __break(1u);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
    v16 = 0;
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v16 = 0;
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  if (v5)
  {
    v5(1, 0, v4, 0);
  }

LABEL_17:
  absl::lts_20240722::Mutex::Unlock((this + 72));
  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23C96021C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a21 < 0)
  {
    operator delete(a16);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a27 & 0x80000000) == 0)
      {
LABEL_5:
        std::unique_ptr<void,absl::lts_20240722::flags_internal::DynValueDeleter>::~unique_ptr[abi:ne200100](&a28);
        absl::lts_20240722::Mutex::Unlock((v35 + 72));
        if (a35 < 0)
        {
          operator delete(a30);
          _Unwind_Resume(a1);
        }

        _Unwind_Resume(a1);
      }

LABEL_4:
      operator delete(__p);
      goto LABEL_5;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  if ((a27 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_4;
}

char *absl::lts_20240722::StrCat<std::string,char [30],std::string>@<X0>(char *__s@<X6>, _OWORD *a2@<X0>, __int128 *a3@<X1>, _OWORD *a4@<X2>, __int128 *a5@<X3>, _OWORD *a6@<X4>, uint64_t *a7@<X5>, uint64_t *a8@<X7>, std::string *a9@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v11 = *a3;
  v19[0] = *a2;
  v19[1] = v11;
  v12 = *a5;
  v19[2] = *a4;
  v19[3] = v12;
  v19[4] = *a6;
  v13 = *(a7 + 23);
  if ((v13 & 0x80u) == 0)
  {
    v14 = a7;
  }

  else
  {
    v14 = *a7;
  }

  if ((v13 & 0x80u) != 0)
  {
    v13 = a7[1];
  }

  v20 = v14;
  v21 = v13;
  v22 = __s;
  v23 = strlen(__s);
  v15 = *(a8 + 23);
  if ((v15 & 0x80u) == 0)
  {
    v16 = a8;
  }

  else
  {
    v16 = *a8;
  }

  if ((v15 & 0x80u) != 0)
  {
    v15 = a8[1];
  }

  v24 = v16;
  v25 = v15;
  result = absl::lts_20240722::strings_internal::CatPieces(v19, 8, a9);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL absl::lts_20240722::flags_internal::FlagImpl::ValidateInputValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a1 + 44);
  __p = absl::lts_20240722::flags_internal::FlagImpl::Init;
  v14 = 0;
  v18[0] = a1;
  if (atomic_load_explicit(v6, memory_order_acquire) != 221)
  {
    absl::lts_20240722::base_internal::CallOnceImpl<void (absl::lts_20240722::flags_internal::FlagImpl::*)(void),absl::lts_20240722::flags_internal::FlagImpl*>(v6, 1, &__p, v18);
  }

  absl::lts_20240722::Mutex::Lock((a1 + 72));
  v7 = *(a1 + 24);
  if ((*(a1 + 41) & 3) == 1)
  {
    v9 = v7(0, 0, 0, 0);
    (*(a1 + 64))();
  }

  else if ((*(a1 + 41) & 3) != 0)
  {
    v9 = v7(0, 0, 0, 0);
    v7(3, a1 + 64, v9, 0);
  }

  else
  {
    v8 = *(a1 + 64);
    v9 = v7(0, 0, 0, 0);
    v7(3, v8, v9, 0);
  }

  v10 = *(a1 + 24);
  v16 = v9;
  v17 = v10;
  __p = 0;
  v14 = 0;
  v15 = 0;
  v18[0] = a2;
  v18[1] = a3;
  v11 = v10(7, v18, v9, &__p);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
    v16 = 0;
    if (!v9)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v16 = 0;
    if (!v9)
    {
      goto LABEL_14;
    }
  }

  if (v10)
  {
    v10(1, 0, v9, 0);
  }

LABEL_14:
  absl::lts_20240722::Mutex::Unlock((a1 + 72));
  return v11 != 0;
}

void sub_23C96055C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<void,absl::lts_20240722::flags_internal::DynValueDeleter>::~unique_ptr[abi:ne200100](&a16);
  absl::lts_20240722::Mutex::Unlock((v16 + 72));
  _Unwind_Resume(a1);
}

void std::vector<void *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void absl::lts_20240722::FlagsUsageConfig::~FlagsUsageConfig(absl::lts_20240722::FlagsUsageConfig *this)
{
  v2 = this + 128;
  v3 = *(this + 19);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(this + 15);
    if (v4 != (this + 96))
    {
      goto LABEL_5;
    }

LABEL_18:
    (*(*v4 + 32))(v4);
    v5 = *(this + 11);
    if (v5 != (this + 64))
    {
      goto LABEL_8;
    }

LABEL_19:
    (*(*v5 + 32))(v5);
    v6 = *(this + 7);
    if (v6 != (this + 32))
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(this + 15);
  if (v4 == (this + 96))
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(this + 11);
  if (v5 == (this + 64))
  {
    goto LABEL_19;
  }

LABEL_8:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  v6 = *(this + 7);
  if (v6 != (this + 32))
  {
LABEL_11:
    if (v6)
    {
      (*(*v6 + 40))(v6);
    }

    v7 = *(this + 3);
    if (v7 != this)
    {
      goto LABEL_14;
    }

LABEL_21:
    (*(*v7 + 32))(v7);
    return;
  }

LABEL_20:
  (*(*v6 + 32))(v6);
  v7 = *(this + 3);
  if (v7 == this)
  {
    goto LABEL_21;
  }

LABEL_14:
  if (v7)
  {
    (*(*v7 + 40))(v7);
  }
}

void absl::lts_20240722::base_internal::CallOnceImpl<void (absl::lts_20240722::flags_internal::FlagImpl::*)(void),absl::lts_20240722::flags_internal::FlagImpl*>(atomic_uint *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = 0;
  atomic_compare_exchange_strong_explicit(a1, &v7, 0x65C2937Bu, memory_order_relaxed, memory_order_relaxed);
  if (!v7 || !absl::lts_20240722::base_internal::SpinLockWait(a1, 3u, &absl::lts_20240722::base_internal::CallOnceImpl<void (absl::lts_20240722::flags_internal::FlagImpl::*)(void),absl::lts_20240722::flags_internal::FlagImpl*>(std::atomic<unsigned int> *,absl::lts_20240722::base_internal::SchedulingMode,void (absl::lts_20240722::flags_internal::FlagImpl::*)(void) &&,absl::lts_20240722::flags_internal::FlagImpl* &&)::trans))
  {
    v8 = *a3;
    v9 = *(a3 + 8);
    v10 = (*a4 + (v9 >> 1));
    if (v9)
    {
      v8 = *(*v10 + v8);
    }

    v8(v10);
    if (atomic_exchange_explicit(a1, 0xDDu, memory_order_release) == 94570706)
    {

      ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(a1);
    }
  }
}

void absl::lts_20240722::flags_internal::FlagState::~FlagState(absl::lts_20240722::flags_internal::FlagState *this)
{
  *this = &unk_284F38F28;
  v1 = *(this + 1);
  if ((*(v1 + 40) & 4) != 0)
  {
    v2 = this;
    (*(v1 + 24))(1, 0, *(this + 2), 0);
    this = v2;
  }

  ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(this);
}

{
  *this = &unk_284F38F28;
  v2 = *(this + 1);
  if ((*(v2 + 40) & 4) != 0)
  {
    (*(v2 + 24))(1, 0, *(this + 2), 0);
  }

  ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(this);

  JUMPOUT(0x23EED9460);
}

void absl::lts_20240722::flags_internal::FlagState::Restore(atomic_ullong **this)
{
  v14[6] = *MEMORY[0x277D85DE8];
  if (!absl::lts_20240722::flags_internal::FlagImpl::RestoreState(this[1], this))
  {
    goto LABEL_9;
  }

  v14[0] = "Restore saved value of ";
  v14[1] = 23;
  v2 = this[1];
  v3 = strlen(v2[1]);
  v13[0] = v2[1];
  v13[1] = v3;
  v12[0] = " to: ";
  v12[1] = 5;
  absl::lts_20240722::flags_internal::FlagImpl::CurrentValue(v2, v8);
  v4 = v9;
  if ((v9 & 0x80u) == 0)
  {
    v5 = v8;
  }

  else
  {
    v5 = v8[0];
  }

  if ((v9 & 0x80u) != 0)
  {
    v4 = v8[1];
  }

  v11[0] = v5;
  v11[1] = v4;
  absl::lts_20240722::StrCat(v14, v13, v12, v11, &__p);
  (atomic_load_explicit(absl::lts_20240722::raw_log_internal::internal_log_function, memory_order_acquire))(0, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/abseil-cpp-src/absl/flags/internal/flag.cc", 140, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    operator delete(v8[0]);
    v7 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v9 < 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
}

void sub_23C960C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t absl::lts_20240722::flags_internal::AbslParseFlag(absl::lts_20240722::strings_internal *a1, unint64_t a2, char *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = a1;
    while ((absl::lts_20240722::ascii_internal::kPropertyBits[*v5] & 8) != 0)
    {
      v5 = (v5 + 1);
      if (!--v4)
      {
        v5 = (a1 + a2);
        break;
      }
    }
  }

  else
  {
    v5 = a1;
  }

  v6 = (a2 - (v5 - a1));
  if (a2 < v5 - a1)
  {
    std::__throw_out_of_range[abi:ne200100]("string_view::substr");
  }

  v7 = v5;
  v8 = a1 + a2 + 1;
  v9 = (a1 + a2) - v5;
  while (v9)
  {
    v10 = absl::lts_20240722::ascii_internal::kPropertyBits[*(v8 - 2)];
    --v8;
    --v9;
    if ((v10 & 8) == 0)
    {
      goto LABEL_13;
    }
  }

  v8 = v7;
LABEL_13:
  if (v6 >= v8 - v7)
  {
    v11 = (v8 - v7);
  }

  else
  {
    v11 = v6;
  }

  v12 = 1;
  if (absl::lts_20240722::EqualsIgnoreCase(v7, v11, "1", 1))
  {
    goto LABEL_23;
  }

  if (absl::lts_20240722::EqualsIgnoreCase(v7, v11, "0", 1))
  {
    goto LABEL_18;
  }

  v12 = 1;
  if (absl::lts_20240722::EqualsIgnoreCase(v7, v11, "t", 1))
  {
    goto LABEL_23;
  }

  if (absl::lts_20240722::EqualsIgnoreCase(v7, v11, "f", 1))
  {
    goto LABEL_18;
  }

  if (absl::lts_20240722::EqualsIgnoreCase(v7, v11, "true", 4))
  {
LABEL_22:
    v12 = 1;
    goto LABEL_23;
  }

  if (absl::lts_20240722::EqualsIgnoreCase(v7, v11, "false", 5))
  {
    goto LABEL_18;
  }

  v12 = 1;
  if (absl::lts_20240722::EqualsIgnoreCase(v7, v11, "y", 1))
  {
    goto LABEL_23;
  }

  if (absl::lts_20240722::EqualsIgnoreCase(v7, v11, "n", 1))
  {
    goto LABEL_18;
  }

  if (absl::lts_20240722::EqualsIgnoreCase(v7, v11, "yes", 3))
  {
    goto LABEL_22;
  }

  v14 = absl::lts_20240722::EqualsIgnoreCase(v7, v11, "no", 2);
  result = 0;
  if (v14)
  {
LABEL_18:
    v12 = 0;
LABEL_23:
    *a3 = v12;
    return 1;
  }

  return result;
}

uint64_t absl::lts_20240722::flags_internal::AbslParseFlag(unsigned __int8 *a1, unint64_t a2, _DWORD *a3)
{
  if (a2)
  {
    v5 = a2;
    v6 = a1;
    while ((absl::lts_20240722::ascii_internal::kPropertyBits[*v6] & 8) != 0)
    {
      ++v6;
      if (!--v5)
      {
        v6 = &a1[a2];
        break;
      }
    }
  }

  else
  {
    v6 = a1;
  }

  v7 = a2 - (v6 - a1);
  if (a2 < v6 - a1)
  {
    std::__throw_out_of_range[abi:ne200100]("string_view::substr");
  }

  v8 = v6;
  v9 = &a1[a2];
  v10 = &a1[a2 + 1];
  v11 = v9 - v6;
  do
  {
    if (!v11)
    {
      v14 = 0;
LABEL_32:
      v21 = 0;
      goto LABEL_34;
    }

    v12 = absl::lts_20240722::ascii_internal::kPropertyBits[*(v10 - 2)];
    --v10;
    --v11;
  }

  while ((v12 & 8) != 0);
  v13 = v10 - v8;
  if (v7 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v7;
  }

  if (!v14)
  {
    goto LABEL_32;
  }

  v15 = *v8;
  v16 = v15 == 45 || v15 == 43;
  v17 = v16;
  v18 = 2;
  if (v16)
  {
    v18 = 3;
  }

  if (v14 >= v18 && v8[v17] == 48)
  {
    v16 = v17 == 0;
    v19 = 1;
    if (!v16)
    {
      v19 = 2;
    }

    v20 = v8[v19];
    v21 = 16;
    if (v20 != 120)
    {
      if (v20 == 88)
      {
        v21 = 16;
      }

      else
      {
        v21 = 10;
      }
    }
  }

  else
  {
    v21 = 10;
  }

LABEL_34:
  v23 = 0;
  result = absl::lts_20240722::numbers_internal::safe_strto32_base(v8, v14, &v23, v21);
  *a3 = v23;
  return result;
}

void *absl::lts_20240722::flags_internal::Unparse@<X0>(absl::lts_20240722::flags_internal *this@<X0>, _BYTE *a2@<X8>)
{
  if (this)
  {
    v3 = "true";
  }

  else
  {
    v3 = "false";
  }

  if (this)
  {
    v4 = 4;
  }

  else
  {
    v4 = 5;
  }

  a2[23] = v4;
  result = memcpy(a2, v3, v4);
  a2[v4] = 0;
  return result;
}

std::string *absl::lts_20240722::flags_internal::Unparse@<X0>(absl::lts_20240722::flags_internal *this@<X0>, char *a2@<X2>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 23) = 22;
  v4 = absl::lts_20240722::numbers_internal::FastIntToBuffer(this, a3, a2);
  return std::string::erase(a3, &v4[-a3], 0xFFFFFFFFFFFFFFFFLL);
}

void sub_23C961088(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *absl::lts_20240722::flags_internal::AbslUnparseFlag@<X0>(void *__src@<X0>, size_t __len@<X1>, _BYTE *a3@<X8>)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  a3[23] = __len;
  if (__len)
  {
    __src = memmove(a3, __src, __len);
    a3[__len] = 0;
  }

  else
  {
    *a3 = 0;
  }

  return __src;
}

void *std::vector<std::string>::__construct_at_end<std::__wrap_iter<std::string_view const*>,std::__wrap_iter<std::string_view const*>>(void *result, uint64_t a2, uint64_t a3)
{
  v9 = result[1];
  v8 = result;
  if (a2 == a3)
  {
    v3 = result[1];
  }

  else
  {
    v5 = a2;
    v3 = result[1];
    do
    {
      v6 = *(v5 + 8);
      if (v6 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v7 = *v5;
      if (v6 >= 0x17)
      {
        operator new();
      }

      v3[23] = v6;
      if (v6)
      {
        result = memmove(v3, v7, v6);
      }

      v3[v6] = 0;
      v5 += 16;
      v3 = (v9 + 24);
      v9 += 24;
    }

    while (v5 != a3);
  }

  v8[1] = v3;
  return result;
}

void sub_23C961278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](va);
  *(a3 + 8) = v3;
  _Unwind_Resume(a1);
}

void ****std::__exception_guard_exceptions<std::vector<std::string>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void absl::lts_20240722::flags_internal::ShortProgramInvocationName(_DWORD *a1@<X8>)
{
  absl::lts_20240722::Mutex::Lock(&_MergedGlobals_38);
  v3 = qword_2810C1060;
  if (qword_2810C1060)
  {
    v4 = *(qword_2810C1060 + 23);
    if ((v4 & 0x8000000000000000) != 0)
    {
      v3 = *qword_2810C1060;
      v4 = *(qword_2810C1060 + 8);
    }

    v5 = 0;
    v6 = v3;
    while (v4 != v5)
    {
      v7 = v6[v4 - 1];
      ++v5;
      --v6;
      if (v7 == 92 || v7 == 47)
      {
        if (v4 + 1 != v5)
        {
          if (v4 <= v4 - v5)
          {
            std::__throw_out_of_range[abi:ne200100]("string_view::substr");
          }

          v3 = &v6[v4 + 1];
          v4 = v5 - 1;
        }

        break;
      }
    }

    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    *(a1 + 23) = v4;
    if (v4)
    {
      memmove(a1, v3, v4);
    }

    v8 = a1 + v4;
  }

  else
  {
    *(a1 + 23) = 7;
    *a1 = 1313558101;
    *(a1 + 3) = 1314344782;
    v8 = a1 + 7;
  }

  *v8 = 0;
  absl::lts_20240722::Mutex::Unlock(&_MergedGlobals_38);
}

absl::lts_20240722::hash_internal::MixingHashState *absl::lts_20240722::hash_internal::MixingHashState::CombineLargeContiguousImpl64(absl::lts_20240722::hash_internal::MixingHashState *this, absl::lts_20240722::hash_internal *a2, const unsigned __int8 *a3, unint64_t a4, const unint64_t *a5)
{
  v5 = a3;
  if (a3 >= 0x400)
  {
    do
    {
      v8 = absl::lts_20240722::hash_internal::LowLevelHashLenGt16(a2, 0x400uLL, &absl::lts_20240722::hash_internal::MixingHashState::kSeed, absl::lts_20240722::hash_internal::kHashSalt, a5);
      this = ((((this + v8) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (this + v8)));
      v5 -= 1024;
      a2 = (a2 + 1024);
    }

    while (v5 > 0x3FF);
  }

  return absl::lts_20240722::hash_internal::MixingHashState::CombineContiguousImpl(this, a2, v5, a4, a5);
}

absl::lts_20240722::hash_internal::MixingHashState *absl::lts_20240722::hash_internal::MixingHashState::CombineContiguousImpl(absl::lts_20240722::hash_internal::MixingHashState *result, absl::lts_20240722::hash_internal *this, const unsigned __int8 *a3, unint64_t a4, const unint64_t *a5)
{
  if (a3 < 0x11)
  {
    if (a3 >= 9)
    {
      v8 = result + __ROR8__(*this, 53) - 0x622015F714C7D297;
      v9 = *&a3[this - 8] ^ (result - 0x622015F714C7D297);
      v10 = v9 * v8;
      v11 = (v9 * v8) >> 64;
      return (v11 ^ v10);
    }

    if (a3 < 4)
    {
      if (!a3)
      {
        return result;
      }

      v7 = (*(this + (a3 >> 1)) << ((4 * a3) & 0xF8)) | *this | (a3[this - 1] << (8 * (a3 - 1)));
    }

    else
    {
      v7 = (*&a3[this - 4] << (8 * a3 - 32)) | *this;
    }

LABEL_10:
    v12 = result + v7;
    v10 = 0x9DDFEA08EB382D69 * v12;
    v11 = (v12 * 0x9DDFEA08EB382D69) >> 64;
    return (v11 ^ v10);
  }

  if (a3 < 0x401)
  {
    v6 = result;
    v7 = absl::lts_20240722::hash_internal::LowLevelHashLenGt16(this, a3, &absl::lts_20240722::hash_internal::MixingHashState::kSeed, absl::lts_20240722::hash_internal::kHashSalt, a5);
    result = v6;
    goto LABEL_10;
  }

  return absl::lts_20240722::hash_internal::MixingHashState::CombineLargeContiguousImpl64(result, this, a3, a4);
}

uint64_t absl::lts_20240722::anonymous namespace::Uint128ToFormattedString(uint64_t a1, unint64_t a2, unint64_t a3, __int16 a4)
{
  v7 = a4 & 0x4A;
  v8 = 0x8AC7230489E80000;
  v9 = 19;
  if (v7 == 64)
  {
    v8 = 0x8000000000000000;
    v9 = 21;
  }

  if (v7 == 8)
  {
    v10 = 0x1000000000000000;
  }

  else
  {
    v10 = v8;
  }

  if (v7 == 8)
  {
    v11 = 15;
  }

  else
  {
    v11 = v9;
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v43);
  *(&v43 + *(v43 - 24) + 8) = *(&v43 + *(v43 - 24) + 8) & 0xFFFFBDB5 | a4 & 0x424A;
  if (__PAIR128__(a3, a2) < v10)
  {
    goto LABEL_10;
  }

  v12 = v10 ^ a2 | a3;
  if (v12)
  {
    if (a3)
    {
      v14 = a3;
    }

    else
    {
      v14 = a2;
    }

    if (a3)
    {
      v15 = 127;
    }

    else
    {
      v15 = 63;
    }

    v16 = (v15 ^ __clz(v14)) - (__clz(v10) ^ 0x3F);
    if (v16 < 0)
    {
LABEL_10:
      v12 = 0;
      v13 = 0;
      goto LABEL_30;
    }

    v13 = 0;
    v12 = 0;
    v17 = v10 >> 1 >> ~v16;
    v18 = v10 << v16;
    if ((v16 & 0x40) != 0)
    {
      v17 = v10 << v16;
      v18 = 0;
    }

    v19 = v16 + 1;
    do
    {
      *(&v20 + 1) = v12;
      *&v20 = v13;
      v12 = v20 >> 63;
      v13 = (__PAIR128__(a3, a2) >= __PAIR128__(v17, v18)) | (2 * v13);
      if (__PAIR128__(a3, a2) < __PAIR128__(v17, v18))
      {
        v21 = 0;
      }

      else
      {
        v21 = v17;
      }

      if (__PAIR128__(a3, a2) < __PAIR128__(v17, v18))
      {
        v22 = 0;
      }

      else
      {
        v22 = v18;
      }

      a3 = (__PAIR128__(a3, a2) - __PAIR128__(v21, v22)) >> 64;
      a2 -= v22;
      *(&v23 + 1) = v17;
      *&v23 = v18;
      v18 = v23 >> 1;
      v17 >>= 1;
      --v19;
    }

    while (v19);
  }

  else
  {
    a2 = 0;
    v13 = 1;
  }

LABEL_30:
  if (__PAIR128__(v12, v13) >= v10)
  {
    if (v13 ^ v10 | v12)
    {
      if (v12)
      {
        v29 = v12;
      }

      else
      {
        v29 = v13;
      }

      if (v12)
      {
        v30 = 127;
      }

      else
      {
        v30 = 63;
      }

      v31 = (v30 ^ __clz(v29)) - (__clz(v10) ^ 0x3F);
      if (v31 < 0)
      {
        goto LABEL_31;
      }

      v28 = 0;
      v32 = v10 >> 1 >> ~v31;
      v33 = v10 << v31;
      if ((v31 & 0x40) != 0)
      {
        v32 = v10 << v31;
        v33 = 0;
      }

      v34 = v31 + 1;
      do
      {
        v28 = (__PAIR128__(v12, v13) >= __PAIR128__(v32, v33)) | (2 * v28);
        if (__PAIR128__(v12, v13) < __PAIR128__(v32, v33))
        {
          v35 = 0;
        }

        else
        {
          v35 = v32;
        }

        if (__PAIR128__(v12, v13) < __PAIR128__(v32, v33))
        {
          v36 = 0;
        }

        else
        {
          v36 = v33;
        }

        v12 = (__PAIR128__(v12, v13) - __PAIR128__(v35, v36)) >> 64;
        v13 -= v36;
        *(&v37 + 1) = v32;
        *&v37 = v33;
        v33 = v37 >> 1;
        v32 >>= 1;
        --v34;
      }

      while (v34);
      if (!v28)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v13 = 0;
      v28 = 1;
    }

    MEMORY[0x23EED91C0](&v43, v28);
    v38 = v43;
    v39 = v43;
    *(&v43 + *(v43 - 24) + 8) &= ~0x200u;
    v40 = (&v43 + *(v39 - 24));
    if (v40[1].__fmtflags_ == -1)
    {
      std::ios_base::getloc(v40);
      v41 = std::locale::use_facet(&v48, MEMORY[0x277D82680]);
      (v41->__vftable[2].~facet_0)(v41, 32);
      std::locale::~locale(&v48);
      v38 = v43;
    }

    v40[1].__fmtflags_ = 48;
    *(&v45[1].__locale_ + *(v38 - 24)) = v11;
    MEMORY[0x23EED91C0](&v43, v13);
    v24 = v43;
    goto LABEL_58;
  }

LABEL_31:
  if (!v13)
  {
    goto LABEL_59;
  }

  MEMORY[0x23EED91C0](&v43, v13);
  v24 = v43;
  v25 = v43;
  *(&v43 + *(v43 - 24) + 8) &= ~0x200u;
  v26 = (&v43 + *(v25 - 24));
  if (v26[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v26);
    v27 = std::locale::use_facet(&v48, MEMORY[0x277D82680]);
    (v27->__vftable[2].~facet_0)(v27, 32);
    std::locale::~locale(&v48);
    v24 = v43;
  }

  v26[1].__fmtflags_ = 48;
LABEL_58:
  *(&v45[1].__locale_ + *(v24 - 24)) = v11;
LABEL_59:
  MEMORY[0x23EED91C0](&v43, a2);
  std::stringbuf::str();
  v43 = *MEMORY[0x277D82828];
  *(&v43 + *(v43 - 24)) = *(MEMORY[0x277D82828] + 24);
  v44 = MEMORY[0x277D82878] + 16;
  if (v46 < 0)
  {
    operator delete(v45[7].__locale_);
  }

  v44 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v45);
  std::ostream::~ostream();
  return MEMORY[0x23EED93A0](&v47);
}

void sub_23C961C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 72));
  std::ostringstream::~ostringstream(&a9);
  _Unwind_Resume(a1);
}

void absl::lts_20240722::int128::ToString(absl::lts_20240722::int128 *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = *(this + 1);
  if (v4 < 0)
  {
    MEMORY[0x23EED9020](a2, "-");
    v4 = *(this + 1);
  }

  v5 = __PAIR128__(v4 ^ (v4 >> 63), *this ^ (v4 >> 63)) - __PAIR128__(v4 >> 63, v4 >> 63);
  if ((v9 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v7 = v9;
  }

  else
  {
    v7 = __p[1];
  }

  std::string::append(a2, v6, v7);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23C961D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if ((*(v15 + 23) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*v15);
  _Unwind_Resume(exception_object);
}

void *absl::lts_20240722::operator<<(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v6 = *a1;
  v7 = *(a1 + *(*a1 - 24) + 8);
  memset(&v36, 0, sizeof(v36));
  if ((v7 & 0x48) != 0)
  {
    goto LABEL_8;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    v8 = "-";
    goto LABEL_6;
  }

  if ((v7 & 0x800) != 0)
  {
    v8 = "+";
LABEL_6:
    MEMORY[0x23EED9020](&v36, v8);
  }

  a3 = (__PAIR128__(v3 ^ (v3 >> 63), v4 ^ (v3 >> 63)) - __PAIR128__(v3 >> 63, v3 >> 63)) >> 64;
  a2 = (v4 ^ (v3 >> 63)) - (v3 >> 63);
  v6 = *a1;
LABEL_8:
  if ((v35 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if ((v35 & 0x80u) == 0)
  {
    v10 = v35;
  }

  else
  {
    v10 = __p[1];
  }

  std::string::append(&v36, v9, v10);
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = *a1;
  v12 = a1 + *(*a1 - 24);
  v13 = *(v12 + 3);
  *(v12 + 3) = 0;
  if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = v36.__r_.__value_.__l.__size_;
    if (v13 <= v36.__r_.__value_.__l.__size_)
    {
      goto LABEL_49;
    }
  }

  else
  {
    size = SHIBYTE(v36.__r_.__value_.__r.__words[2]);
    if (v13 <= SHIBYTE(v36.__r_.__value_.__r.__words[2]))
    {
      goto LABEL_49;
    }
  }

  v15 = v13 - size;
  if ((v7 & 0xB0) == 0x10)
  {
    if ((v7 & 0x48) != 0)
    {
LABEL_26:
      v19 = v7 & 0x24A;
      v20 = (a1 + *(v11 - 24));
      p_fmtflags = &v20[1].__fmtflags_;
      fmtflags = v20[1].__fmtflags_;
      if (v19 != 520 || (v4 | v3) == 0)
      {
        if (fmtflags != -1)
        {
LABEL_34:
          v24 = 0;
LABEL_48:
          std::string::insert(&v36, v24, v15, fmtflags);
          goto LABEL_49;
        }

        goto LABEL_38;
      }

      if (fmtflags != -1)
      {
        v24 = 2;
        goto LABEL_48;
      }

      std::ios_base::getloc(v20);
      v28 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
      fmtflags = (v28->__vftable[2].~facet_0)(v28, 32);
      std::locale::~locale(__p);
      v24 = 2;
LABEL_47:
      *p_fmtflags = fmtflags;
      goto LABEL_48;
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      v25 = *v36.__r_.__value_.__l.__data_;
      if (v25 == 43)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v25 = v36.__r_.__value_.__s.__data_[0];
      if (v36.__r_.__value_.__s.__data_[0] == 43)
      {
        goto LABEL_43;
      }
    }

    if (v25 != 45)
    {
      goto LABEL_26;
    }

LABEL_43:
    v27 = (a1 + *(v11 - 24));
    p_fmtflags = &v27[1].__fmtflags_;
    fmtflags = v27[1].__fmtflags_;
    if (fmtflags != -1)
    {
      v24 = 1;
      goto LABEL_48;
    }

    std::ios_base::getloc(v27);
    v29 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    fmtflags = (v29->__vftable[2].~facet_0)(v29, 32);
    std::locale::~locale(__p);
    v24 = 1;
    goto LABEL_47;
  }

  if ((v7 & 0xB0) != 0x20)
  {
    v20 = (a1 + *(v11 - 24));
    p_fmtflags = &v20[1].__fmtflags_;
    fmtflags = v20[1].__fmtflags_;
    if (fmtflags != -1)
    {
      goto LABEL_34;
    }

LABEL_38:
    std::ios_base::getloc(v20);
    v26 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    fmtflags = (v26->__vftable[2].~facet_0)(v26, 32);
    std::locale::~locale(__p);
    v24 = 0;
    goto LABEL_47;
  }

  v16 = (a1 + *(v11 - 24));
  v17 = v16[1].__fmtflags_;
  if (v17 == -1)
  {
    std::ios_base::getloc(v16);
    v18 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    v17 = (v18->__vftable[2].~facet_0)(v18, 32);
    std::locale::~locale(__p);
    v16[1].__fmtflags_ = v17;
  }

  std::string::append(&v36, v15, v17);
LABEL_49:
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = &v36;
  }

  else
  {
    v30 = v36.__r_.__value_.__r.__words[0];
  }

  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v31 = v36.__r_.__value_.__l.__size_;
  }

  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v30, v31);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    v33 = result;
    operator delete(v36.__r_.__value_.__l.__data_);
    return v33;
  }

  return result;
}

void sub_23C962220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  std::locale::~locale(&a9);
  if (a20 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  *(a1 + 112) = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, (a1 + 8));
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  *(a1 + 112) = v2;
  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  MEMORY[0x23EED9320](a1 + 16);
  *(a1 + 72) = 0;
  v7 = a1 + 72;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = 16;
  *(a1 + 96) = a1 + 72;
  std::string::resize((a1 + 72), 0x16uLL, 0);
  v8 = *(a1 + 95);
  if (v8 < 0)
  {
    v8 = *(a1 + 80);
  }

  *(a1 + 48) = v7;
  *(a1 + 56) = v7;
  *(a1 + 64) = v7 + v8;
  return a1;
}

void sub_23C96246C(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*v4);
  }

  *(v1 + 8) = v3;
  std::locale::~locale((v1 + 16));
  std::ostream::~ostream();
  MEMORY[0x23EED93A0](v2);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x23EED93A0](a1 + 112);
  return a1;
}

uint64_t *absl::lts_20240722::synchronization_internal::KernelTimeout::KernelTimeout(uint64_t *this, unint64_t a2, unsigned int a3)
{
  if (a2 == 0x7FFFFFFFFFFFFFFFLL && a3 == 0xFFFFFFFFLL)
  {
    *this = -1;
  }

  else
  {
    v3 = this;
    v4 = absl::lts_20240722::ToInt64Nanoseconds(a2, a3);
    rep = std::chrono::steady_clock::now().__d_.__rep_;
    this = v3;
    v6 = v4 <= (rep ^ 0x7FFFFFFFFFFFFFFFLL);
    v7 = (2 * ((v4 & ~(v4 >> 63)) + rep)) | 1;
    if (!v6)
    {
      v7 = -1;
    }

    *v3 = v7;
  }

  return this;
}

char *absl::lts_20240722::synchronization_internal::KernelTimeout::MakeAbsTimespec(absl::lts_20240722::synchronization_internal::KernelTimeout *this)
{
  v2 = *this;
  if (*this == -1)
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = v2 >> 1;
    if (v2)
    {
      v5.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
      v6 = v3 - v5.__d_.__rep_;
      CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(v5.__d_.__rep_);
      v4 = 0x7FFFFFFFFFFFFFFFLL;
      if (v6 <= (CurrentTimeNanos ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        v4 = (v6 & ~(v6 >> 63)) + CurrentTimeNanos;
      }
    }

    else if (v3 <= 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = v2 >> 1;
    }
  }

  v8 = v4 / 1000000000;
  v9 = v4 % 1000000000;
  v10 = v8 + (v9 >> 61);
  if (v9 >= 0)
  {
    v11 = 4 * v9;
  }

  else
  {
    v11 = 4 * v9 - 294967296;
  }

  return absl::lts_20240722::ToTimespec(v10, v11);
}

char *absl::lts_20240722::synchronization_internal::KernelTimeout::MakeRelativeTimespec(absl::lts_20240722::synchronization_internal::KernelTimeout *this)
{
  v2 = *this;
  if (*this == -1)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = v2 >> 1;
    if (v2)
    {
      rep = std::chrono::steady_clock::now().__d_.__rep_;
    }

    else
    {
      rep = absl::lts_20240722::GetCurrentTimeNanos(this);
    }

    v5 = (v3 - rep) & ~((v3 - rep) >> 63);
  }

  return absl::lts_20240722::ToTimespec(v5 / 0x3B9ACA00, 4 * (v5 % 0x3B9ACA00));
}

BOOL absl::lts_20240722::log_internal::ShouldLogBacktraceAt(absl::lts_20240722::hash_internal::MixingHashState *a1, unint64_t a2, unsigned int a3, unint64_t a4, const unint64_t *a5)
{
  {
    return 0;
  }

  v8 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, a1, a2, a4, a5);
  v9 = ((((v8 + a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v8 + a2))) + a3;
  return v5 == (((v9 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v9));
}

void absl::lts_20240722::log_internal::MakeCheckOpString<BOOL,BOOL>(uint64_t a1, uint64_t a2, const char *a3)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  v6 = strlen(a3);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, a3, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " (", 2);
  MEMORY[0x23EED9160](&v8, a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " vs. ", 5);
  MEMORY[0x23EED9160](&v8, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, ")", 1);
  operator new();
}

void sub_23C962A5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x23EED9460](v2, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_23C962A88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_23C962A9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

absl::lts_20240722::log_internal::CheckOpMessageBuilder *absl::lts_20240722::log_internal::CheckOpMessageBuilder::CheckOpMessageBuilder(absl::lts_20240722::log_internal::CheckOpMessageBuilder *this, const char *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](this);
  v4 = strlen(a2);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this, a2, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " (", 2);
  return this;
}

void absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(uint64_t a1, uint64_t a2, const char *a3)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  v6 = strlen(a3);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, a3, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " (", 2);
  MEMORY[0x23EED91B0](&v8, a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " vs. ", 5);
  MEMORY[0x23EED91B0](&v8, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, ")", 1);
  operator new();
}

void sub_23C962DA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x23EED9460](v2, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_23C962DD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_23C962DE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void absl::lts_20240722::log_internal::MakeCheckOpString<unsigned long long,unsigned long long>(uint64_t a1, uint64_t a2, const char *a3)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  v6 = strlen(a3);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, a3, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " (", 2);
  MEMORY[0x23EED91C0](&v8, a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " vs. ", 5);
  MEMORY[0x23EED91C0](&v8, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, ")", 1);
  operator new();
}

void sub_23C962FD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x23EED9460](v2, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_23C962FFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_23C963010(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void absl::lts_20240722::log_internal::MakeCheckOpString<double,double>(const char *a1, double a2, double a3)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  v6 = strlen(a1);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, a1, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " (", 2);
  MEMORY[0x23EED9170](&v8, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " vs. ", 5);
  MEMORY[0x23EED9170](&v8, a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, ")", 1);
  operator new();
}

void sub_23C963204(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x23EED9460](v2, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_23C963230(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_23C963244(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void absl::lts_20240722::log_internal::MakeCheckOpString<void const*,void const*>(uint64_t a1, uint64_t a2, const char *a3)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  v6 = strlen(a3);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, a3, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " (", 2);
  if (a1)
  {
    MEMORY[0x23EED9150](&v8, a1);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "(null)", 6);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " vs. ", 5);
  if (a2)
  {
    MEMORY[0x23EED9150](&v8, a2);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "(null)", 6);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, ")", 1);
  operator new();
}

void sub_23C963468(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x23EED9460](v2, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_23C963494(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_23C9634A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

BOOL absl::lts_20240722::log_internal::LogEveryNState::ShouldLog(absl::lts_20240722::log_internal::LogEveryNState *this, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  v2 = (*this)++;
  return v2 % a2 == 0;
}

BOOL absl::lts_20240722::log_internal::LogEveryPow2State::ShouldLog(absl::lts_20240722::log_internal::LogEveryPow2State *this)
{
  v1 = *this;
  v2 = *this + 1;
  *this = v2;
  return (v2 & v1) == 0;
}

uint64_t absl::lts_20240722::log_internal::LogEveryNSecState::ShouldLog(absl::lts_20240722::log_internal::LogEveryNSecState *this, double a2)
{
  ++*this;
  result = absl::lts_20240722::base_internal::CycleClock::Now().__d_.__rep_;
  v5 = *(this + 1);
  if (result <= v5)
  {
    return 0;
  }

  v6 = result;
  v7 = result;
  v8 = *(this + 1);
  do
  {
    atomic_compare_exchange_strong_explicit(this + 1, &v8, (v7 + a2 * absl::lts_20240722::base_internal::CycleClock::Frequency(result)), memory_order_relaxed, memory_order_relaxed);
    result = v8 == v5;
    if (v8 == v5)
    {
      break;
    }

    v5 = v8;
  }

  while (v6 > v8);
  return result;
}

uint64_t absl::lts_20240722::log_internal::FNMatch(_BYTE *a1, unint64_t a2, char *__s, int64_t a4)
{
  if (a2)
  {
    v6 = a2;
    v8 = 0;
    while (1)
    {
      if (!a4)
      {
        v26 = 0;
        while (a1[v26] == 42)
        {
          if (v6 == ++v26)
          {
            v23 = 1;
            return v23 & 1;
          }
        }

        v23 = v26 == -1;
        return v23 & 1;
      }

      v10 = *a1;
      if (v10 == 63)
      {
        break;
      }

      if (*a1 == 42)
      {
        ++a1;
        v9 = 1;
        v8 = 1;
        goto LABEL_4;
      }

      if (v8)
      {
        v11 = 0;
        v12 = v10;
        if (v10 != 42)
        {
          while (v12 != 63)
          {
            if (v6 - 1 == v11)
            {
              v15 = v6;
              goto LABEL_24;
            }

            LOBYTE(v12) = a1[++v11];
            v12 = v12;
            if (v12 == 42)
            {
              break;
            }
          }
        }

        if (v6 >= v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = v6;
        }

        if (v11 == -1 || v6 == v11)
        {
          v15 = v6;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
LABEL_24:
          if (a4 >= v15)
          {
            v16 = &__s[a4];
            v17 = a4;
            v18 = __s;
            do
            {
              v19 = &v17[-v15];
              if (v19 == -1)
              {
                break;
              }

              v20 = memchr(v18, v10, (v19 + 1));
              if (!v20)
              {
                break;
              }

              v21 = v20;
              if (!memcmp(v20, a1, v15))
              {
                v23 = 0;
                if (v21 == v16)
                {
                  return v23 & 1;
                }

                v22 = v21 - __s;
                if (v21 - __s == -1)
                {
                  return v23 & 1;
                }

                goto LABEL_37;
              }

              v18 = v21 + 1;
              v17 = (v16 - (v21 + 1));
            }

            while (v17 >= v15);
          }

LABEL_41:
          v23 = 0;
          return v23 & 1;
        }

        v22 = 0;
LABEL_37:
        v9 = 0;
        v8 = 0;
        a1 += v15;
        v24 = v22 + v15;
        __s += v24;
        a4 -= v24;
        v6 -= v15;
        if (!v6)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (*a1 != *__s)
        {
          goto LABEL_41;
        }

        v9 = 0;
        v8 = 0;
        ++a1;
        ++__s;
        --a4;
LABEL_4:
        if (!--v6)
        {
          goto LABEL_40;
        }
      }
    }

    ++a1;
    ++__s;
    --a4;
    v9 = v8;
    goto LABEL_4;
  }

  v9 = 0;
LABEL_40:
  v23 = v9 | (a4 == 0);
  return v23 & 1;
}
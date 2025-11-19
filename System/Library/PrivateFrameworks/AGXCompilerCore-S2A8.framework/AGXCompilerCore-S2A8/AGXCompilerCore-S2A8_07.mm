void sub_23C522E9C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  sub_23C49F8D0(v17, "tess_b1_0_");
  sub_23C49F8D0(v18, "tess_b1_1_");
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

void sub_23C5233CC(uint64_t a1, uint64_t a2)
{
  sub_23C49F8D0(__p, "tess_b2");
  sub_23C4AF200(a2, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_23C523644(uint64_t a1, uint64_t a2)
{
  sub_23C49F8D0(__p, "tess_b0");
  sub_23C4AF200(a2, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_23C5237A0(uint64_t a1, uint64_t a2)
{
  sub_23C49F8D0(__p, "vdm_nopdbg");
  sub_23C4AF200(a2, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_23C52388C(uint64_t a1, uint64_t a2)
{
  sub_23C49F8D0(__p, "gei_esl_gen");
  sub_23C4AF200(a2, __p);
  operator new();
}

void sub_23C5239D0(uint64_t a1, uint64_t a2)
{
  sub_23C49F8D0(__p, "gei_esl_gen");
  sub_23C4AF200(a2, __p);
  operator new();
}

void sub_23C523B14(uint64_t a1, uint64_t a2)
{
  sub_23C49F8D0(__p, &unk_23C53F34D);
  sub_23C4AF200(a2, __p);
  operator new();
}

void sub_23C523C48(uint64_t a1, uint64_t a2)
{
  sub_23C49F8D0(__p, "pds_patchup_vertex");
  sub_23C4AF200(a2, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

uint64_t sub_23C523D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 3124) == 1)
  {
    v49 = v8;
    v50 = v9;
    sub_23C4D87A4(*(a1 + *(*a1 - 24) + 320), a2, a3, a4, a5, a6, a7, a8);
    v11 = a1 + *(*a1 - 24);
    v12 = *(v11 + 320);
    v13 = *(v11 + 344);
    if (*(v13 + 1240))
    {
      v14 = strlen(*(v13 + 1240));
    }

    Function = llvm::Module::getFunction();
    if (Function)
    {
      v16 = *(a1 + *(*a1 - 24) + 320);
      __p = 0;
      v44 = 0;
      v47[0] = 0;
      v47[1] = 0;
      v45 = 0;
      v46 = v47;
      v48 = v16;
      v17 = *(Function + 8);
      if (v17)
      {
        do
        {
          v18 = (*(v17 + 24) - 32 * (*(*(v17 + 24) + 20) & 0x7FFFFFF));
          v19 = (*v18 + 24);
          if (*(*v18 + 32) >= 0x41u)
          {
            v19 = *v19;
          }

          if ((*v19 & 0xFFFFFFFC) == 0)
          {
            sub_23C4D96AC(&__p, v18[4]);
          }

          v17 = *(v17 + 8);
        }

        while (v17);
        v20 = v44;
        if (__p != v44)
        {
          v21 = 0;
          do
          {
            v22 = *(v20 - 1);
            v44 = (v20 - 1);
            if (sub_23C497EEC(v22))
            {
              llvm::Instruction::setFast(v22);
            }

            if (v22 && *(v22 + 16) == 60)
            {
              v23 = **(v22 - 32);
              v24 = *(v23 + 8);
              if ((v24 & 0xFE) == 0x12)
              {
                v24 = *(**(v23 + 16) + 8);
              }

              v25 = v24 >> 8;
              v26 = 1 << SBYTE1(v24);
              if (((1 << SBYTE1(v24)) & v21) == 0)
              {
                v27 = v48 + 24;
                for (i = *(v48 + 32); i != v27; i = *(i + 8))
                {
                  v29 = i - 56;
                  if (!i)
                  {
                    v29 = 0;
                  }

                  v30 = v29 + 72;
                  v31 = *(v29 + 80);
                  if (v31 == v29 + 72)
                  {
                    v33 = 0;
                  }

                  else
                  {
                    do
                    {
                      v32 = v31 - 24;
                      if (!v31)
                      {
                        v32 = 0;
                      }

                      v33 = *(v32 + 48);
                      if (v33 != v32 + 40)
                      {
                        break;
                      }

                      v31 = *(v31 + 8);
                    }

                    while (v31 != v30);
                  }

                  while (v31 != v30)
                  {
                    if (v33 && *(v33 - 8) == 61)
                    {
                      v34 = **(v33 - 56);
                      v35 = *(v34 + 8);
                      if ((v35 & 0xFE) == 0x12)
                      {
                        v35 = *(**(v34 + 16) + 8);
                      }

                      if (v25 == v35 >> 8)
                      {
                        sub_23C4D96AC(&__p, *(v33 - 88));
                      }
                    }

                    v33 = *(v33 + 8);
                    v36 = v31 - 24;
                    if (!v31)
                    {
                      v36 = 0;
                    }

                    while (v33 == v36 + 40)
                    {
                      v31 = *(v31 + 8);
                      if (v31 == v30)
                      {
                        break;
                      }

                      v36 = v31 - 24;
                      if (!v31)
                      {
                        v36 = 0;
                      }

                      v33 = *(v36 + 48);
                    }
                  }
                }

                v21 |= v26;
              }

              goto LABEL_54;
            }

            v37 = *(v22 + 20);
            if ((v37 & 0x40000000) != 0)
            {
              v39 = *(v22 - 8);
              v38 = v37 & 0x7FFFFFF;
              if (v38)
              {
LABEL_50:
                v40 = 32 * v38;
                do
                {
                  v41 = *v39;
                  v39 += 4;
                  sub_23C4D96AC(&__p, v41);
                  v40 -= 32;
                }

                while (v40);
              }
            }

            else
            {
              v38 = v37 & 0x7FFFFFF;
              v39 = (v22 - 32 * v38);
              if (v38)
              {
                goto LABEL_50;
              }
            }

LABEL_54:
            v20 = v44;
          }

          while (__p != v44);
        }
      }

      sub_23C4B1570(v47[0]);
      if (__p)
      {
        v44 = __p;
        operator delete(__p);
      }
    }
  }

  return 1;
}

uint64_t sub_23C5240B0(uint64_t *a1)
{
  v648 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + *(*a1 - 24) + 320);
  v565[0] = llvm::Module::getFunction();
  v3 = *(*(v565[0] + 1) + 24);
  v4 = sub_23C4B88A0(v3);
  v5 = *(v3 + 5) & 0x7FFFFFF;
  v571 = v3;
  v6 = (v3 - 32 * v5);
  if (((v4 - v6) & 0x1FFFFFFFE0) == 0)
  {
    v9 = 0;
    v7 = 0;
    v8 = 0;
    v567 = v634;
    v632 = v634;
    v633 = 0x1000000000;
    v566 = &v630;
    v628 = &v630;
    v629 = 0x1000000000;
    goto LABEL_7;
  }

  v7 = *v6;
  v8 = **v6;
  if (*(v8 + 8) == 16)
  {
    v9 = *(v8 + 12);
    v567 = v634;
    v632 = v634;
    v633 = 0x1000000000;
    v628 = &v630;
    v629 = 0x1000000000;
    v566 = &v630;
    if (v9)
    {
      v10 = v9;
      if (v9 >= 0x11)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      goto LABEL_9;
    }

LABEL_7:
    v11 = 1;
    goto LABEL_18;
  }

  v567 = v634;
  v632 = v634;
  v633 = 0x1000000000;
  v628 = &v630;
  v629 = 0x1000000000;
  v10 = 1;
  v566 = &v630;
LABEL_9:
  v12 = 0;
  v9 = v10;
  v13 = vdupq_n_s64(v10 - 1);
  v14 = &v631;
  do
  {
    v15 = vdupq_n_s64(v12);
    v16 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_23C5324B0)));
    if (vuzp1_s16(v16, *v13.i8).u8[0])
    {
      *(v14 - 2) = -1;
    }

    if (vuzp1_s16(v16, *&v13).i8[2])
    {
      *(v14 - 1) = -1;
    }

    if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_23C532520)))).i32[1])
    {
      *v14 = -1;
      *(v14 + 1) = -1;
    }

    v12 += 4;
    v14 += 2;
  }

  while (((v10 + 3) & 0x1FFFFFFFCLL) != v12);
  v11 = 0;
  LODWORD(v629) = v629 + v9;
LABEL_18:
  memset(v627, 0, sizeof(v627));
  v587 = 0;
  v17 = *(a1 + *(*a1 - 24) + 176);
  NullValue = llvm::ConstantInt::get();
  v18 = *(a1 + *(*a1 - 24) + 176);
  v19 = llvm::ConstantInt::get();
  v20 = sub_23C4C30FC(a1 + *(*a1 - 24) + 8, v571);
  v581 = v9;
  MEMORY[0x28223BE20](v20);
  if (v21 >= 0x200)
  {
    v22 = 512;
  }

  else
  {
    v22 = v21;
  }

  v582 = v565 - ((v21 + 15) & 0xFFFFFFFF0);
  bzero(v582, v22);
  v568 = v7;
  v565[1] = v565;
  v572 = v19;
  if (v11)
  {
    v569 = 0;
    v580 = 0;
  }

  else
  {
    v24 = *(v8 + 8);
    v579 = v8;
    if (v24 == 16)
    {
      sub_23C505FD4(a1 + *(*a1 - 24), v7, v582);
    }

    else
    {
      *v582 = v7;
    }

    v25 = 0;
    v580 = 0;
    v569 = 0;
    v26 = v581;
    do
    {
      v27 = *(a1[7] - 8 * *(a1[7] + 8) + 8 * v25);
      String = llvm::MDString::getString(*(v27 - 8 * *(v27 + 8)));
      v30 = v29;
      v31 = *(a1 + 3146);
      v583 = *(v582 + 8 * v25);
      if (v31 == 1)
      {
        v32 = v27 + 8;
        v33 = 1;
        while (1)
        {
          v34 = *(v27 + 8);
          if (v33 >= v34)
          {
LABEL_32:
            v35 = 1;
            goto LABEL_35;
          }

          if (sub_23C4A57A0(*(v32 - 8 * v34), "air.shared"))
          {
            break;
          }

          ++v33;
          v32 += 8;
          if (*(a1 + 3146) != 1)
          {
            goto LABEL_32;
          }
        }

        v35 = 0;
LABEL_35:
        v26 = v581;
      }

      else
      {
        v35 = 0;
      }

      if (v30 <= 16)
      {
        if (v30 == 12)
        {
          if (*String == 0x69736F702E726961 && *(String + 8) == 1852795252)
          {
            *(a1 + 3156) = v35;
            v580 = v583;
          }
        }

        else if (v30 == 14 && *String == 0x6E696F702E726961 && *(String + 6) == 0x657A69735F746E69)
        {
          *(a1 + 3157) = v35;
          v569 = v583;
        }
      }

      else
      {
        switch(v30)
        {
          case 17:
            if (*String == 0x70696C632E726961 && *(String + 8) == 0x636E61747369645FLL && *(String + 16) == 101)
            {
              (*(*a1 + 328))(a1, v583, v27, v627, &v587);
              *(a1 + 3160) = v35;
            }

            else if (*String == 0x747265762E726961 && *(String + 8) == 0x757074756F5F7865 && *(String + 16) == 116)
            {
              v596 = 0;
              v597 = 0;
              v598 = 0;
              if ((*(*a1 + 336))(a1, v579, v25, v27, v593, v35))
              {
                sub_23C49786C(&v632, v595, v583);
                sub_23C52B5AC((a1 + 304), v593);
              }

              if (SHIBYTE(v598) < 0)
              {
                operator delete(v596);
              }
            }

            break;
          case 24:
            if (*String == 0x776569762E726961 && *(String + 8) == 0x7272615F74726F70 && *(String + 16) == 0x7865646E695F7961)
            {
              *(a1 + 3158) = v35;
              *(a1 + 3101) = 1;
              NullValue = v583;
            }

            break;
          case 29:
            v36 = *String == 0x646E65722E726961 && *(String + 8) == 0x65677261745F7265;
            v37 = v36 && *(String + 16) == 0x5F79617272615F74;
            if (v37 && *(String + 21) == 0x7865646E695F7961)
            {
              *(a1 + 3159) = v35;
              *(a1 + 3102) = 1;
              v572 = v583;
            }

            break;
        }
      }

      ++v25;
    }

    while (v25 != v26);
  }

  v47 = *(a1 + 779) & v587;
  *(a1 + 779) = v47;
  v23.i32[0] = v47;
  v48 = vcnt_s8(v23);
  v48.i16[0] = vaddlv_u8(v48);
  *(a1 + 778) = v48.i32[0];
  if (v47 && ((a1[395] & 1) != 0 || *(a1 + 3156) == 1))
  {
    *(a1 + 3160) = 1;
    *(a1 + 3156) = 1;
  }

  *(a1 + 3100) = (*(*a1 + 360))(a1, v569);
  v49 = v572;
  if (*(a1 + 3146) == 1)
  {
    if ((a1[393] & 1) == 0)
    {
      a1[391] = sub_23C527C64(a1, *(a1 + 788));
      *(a1 + 3144) = 1;
    }

    if ((*(a1 + 3145) & 1) == 0)
    {
      a1[392] = sub_23C527D50(a1);
      *(a1 + 3145) = 1;
    }

    v50 = a1 + *(*a1 - 24);
    v51 = a1[408];
    LOWORD(v597) = 257;
    v52 = sub_23C497C88((v50 + 8), **(*v51 + 16), v51, 0, v593);
    v53 = *(*a1 - 24);
    v54 = a1[391];
    LOWORD(v597) = 257;
    v55 = sub_23C49AEB8(a1 + v53, v52, v54, v593);
    v56 = a1 + *(*a1 - 24);
    LOWORD(v597) = 257;
    v57 = sub_23C497C88((v56 + 8), **(*v55 + 16), v55, 0, v593);
    __dst = 0;
    v642 = 0;
    sub_23C505FD4(a1 + *(*a1 - 24), v57, &__dst);
    if ((*(a1 + 3101) & 1) == 0)
    {
      NullValue = llvm::Constant::getNullValue(*a1[409], v58);
      *(a1 + 3101) = 1;
    }

    *(a1 + 3158) = 1;
    v59 = NullValue;
    v60 = sub_23C505300((a1 + *(*a1 - 24)), __dst, *NullValue);
    a1[409] = v60;
    v61 = a1 + *(*a1 - 24);
    v62 = *v60;
    LOWORD(v597) = 257;
    v63 = sub_23C49ACF8(v61 + 8, 39, v59, v62, v593);
    v64 = a1 + *(*a1 - 24);
    v65 = a1[409];
    LOWORD(v597) = 257;
    v67 = sub_23C49A474(v64 + 8, v63, v65, v593);
    if ((*(a1 + 3102) & 1) == 0)
    {
      v49 = llvm::Constant::getNullValue(*a1[410], v66);
      *(a1 + 3102) = 1;
    }

    *(a1 + 3159) = 1;
    v68 = sub_23C505300((a1 + *(*a1 - 24)), v642, *v49);
    a1[410] = v68;
    v69 = a1 + *(*a1 - 24);
    v70 = *v68;
    LOWORD(v597) = 257;
    v71 = sub_23C49ACF8(v69 + 8, 39, v49, v70, v593);
    v72 = a1 + *(*a1 - 24);
    v73 = a1[410];
    LOWORD(v597) = 257;
    v49 = sub_23C49A474(v72 + 8, v71, v73, v593);
    v74 = v67;
  }

  else
  {
    v74 = NullValue;
  }

  v75 = 0;
  v593[0] = 1;
  v593[1] = *(a1 + 3144);
  v594 = "air.amplification_id";
  v595 = 20;
  v596 = a1[391];
  v600 = 0;
  v601 = 0;
  v602 = 0;
  v603 = 0;
  v604 = *(a1 + 3145);
  v605 = "air.amplification_count";
  v606 = 23;
  v607 = a1[392];
  v608 = 0;
  v609 = 0;
  v610 = 0;
  v611 = *(a1 + 3158);
  v612 = *(a1 + 3101);
  v613 = "air.viewport_array_index";
  v614 = 24;
  NullValue = v74;
  v615 = v74;
  v616 = 0;
  v617 = 0;
  v618 = 0;
  v619 = *(a1 + 3159);
  v620 = *(a1 + 3102);
  v621 = "air.render_target_array_index";
  v622 = 29;
  v572 = v49;
  v623 = v49;
  v624 = 0;
  v625 = 0;
  v626 = 0;
  do
  {
    v76 = &v593[v75];
    if ((*(*a1 + 344))(a1, *&v593[v75 + 8], *(&v595 + v75), &v597 + v75, v593[v75]))
    {
      v77 = *a1;
      v78 = *(*a1 - 24);
      v79 = *(v76 + 3);
      v80 = sub_23C504F18(a1 + v78, *v79, &__dst);
      if (v76[1] == 1)
      {
        v81 = *(&v597 + v75 + 4);
        if (v81 >= v80)
        {
          if (v81 > v80)
          {
            v96 = *(v76 + 1);
            v95 = *(v76 + 2);
            if (v95 >= 4)
            {
              v97 = 4;
            }

            else
            {
              v97 = *(v76 + 2);
            }

            if (v96)
            {
              v98 = v95 - v97;
              if (v95 - v97 >= 0x7FFFFFFFFFFFFFF8)
              {
                sub_23C496CE8();
              }

              if (v98 >= 0x17)
              {
                operator new();
              }

              HIBYTE(v643) = v95 - v97;
              if (v95 >= 5)
              {
                memmove(&__dst, (v96 + v97), v98);
              }

              *(&__dst + v98) = 0;
              v562 = HIBYTE(v643);
              v561 = __dst;
              v560 = v642;
            }

            else
            {
              v560 = 0;
              v561 = 0;
              v562 = 0;
              __dst = 0;
              v642 = 0;
              v643 = 0;
            }

            if ((v562 & 0x80u) == 0)
            {
              p_dst = &__dst;
            }

            else
            {
              p_dst = v561;
            }

            if ((v562 & 0x80u) == 0)
            {
              v564 = v562;
            }

            else
            {
              v564 = v560;
            }

            std::string::append((a1 + *(v77 - 24) + 408), p_dst, v564);
            if (SHIBYTE(v643) < 0)
            {
              operator delete(__dst);
            }

            std::string::append((a1 + *(*a1 - 24) + 408), " type does not match between vertex and fragment function");
            v556 = 0;
            goto LABEL_495;
          }
        }

        else
        {
          *(v76 + 3) = sub_23C5053E8(a1 + v78, v79, v81, 0);
        }
      }

      sub_23C52B5AC((a1 + 304), (v76 + 32));
      sub_23C49786C(&v632, *&v599[v75], *(v76 + 3));
    }

    v75 += 96;
  }

  while (v75 != 384);
  *(a1 + 774) = sub_23C52BC50(a1 + 2432, *(*(a1 + *(*a1 - 24) + 344) + 1634), *(a1 + 773));
  v644 = 0;
  v645 = 0;
  v646 = 0;
  if ((*(*a1 + 352))(a1, &__dst))
  {
    do
    {
      sub_23C52B5AC((a1 + 304), &__dst);
    }

    while (((*(*a1 + 352))(a1, &__dst) & 1) != 0);
  }

  if (SHIBYTE(v646) < 0)
  {
    operator delete(v644);
  }

  v82 = 126 - 2 * __clz(v633);
  if (v633)
  {
    v83 = v82;
  }

  else
  {
    v83 = 0;
  }

  sub_23C527E70(v632, &v632[16 * v633], v83, 1);
  sub_23C52B97C((a1 + 304), *(a1 + *(*a1 - 24) + 344));
  v84 = v571[5];
  v85 = *(a1 + *(*a1 - 24) + 584);
  v86 = llvm::ConstantInt::get();
  v87 = *(a1 + *(*a1 - 24) + 584);
  v88 = llvm::ConstantInt::get();
  a1[388] = 0;
  v89 = *a1;
  v90 = (a1 + *(*a1 - 24));
  if (*(v90[43] + 1676) == 1 && *(a1 + 3144) == 1)
  {
    v91 = sub_23C527D50(a1);
    v88 = sub_23C505300(v90, v91, *(a1 + *(*a1 - 24) + 584));
    v92 = *(*a1 - 24);
    if (*(a1 + 788))
    {
      v93 = sub_23C529724(a1);
    }

    else
    {
      v93 = sub_23C527D50(a1);
    }

    v635 = v93;
    v99 = a1 + *(*a1 - 24);
    v100 = *(v99 + 344);
    v101 = *(v100 + 1344);
    if (v101)
    {
      v102 = strlen(*(v100 + 1344));
    }

    else
    {
      v102 = 0;
    }

    v103 = sub_23C49EB10(v99, v101, v102, *(v99 + 192), *(v99 + 192));
    v104 = a1 + *(*a1 - 24);
    LOWORD(v645) = 257;
    v105 = sub_23C497A7C(v104 + 8, *(v103 + 24), v103, &v635, 1, &__dst);
    v94 = sub_23C505300((a1 + v92), v105, *(a1 + *(*a1 - 24) + 584));
    v89 = *a1;
  }

  else
  {
    v94 = v86;
  }

  v106 = *(a1 + *(v89 - 24) + 584);
  a1[411] = llvm::ConstantInt::get();
  v107 = *(a1 + *(*a1 - 24) + 584);
  v108 = llvm::ConstantInt::get();
  v109 = v108;
  a1[412] = v108;
  v110 = *(a1 + 3156);
  if (*(a1 + 3156))
  {
    v111 = v94;
  }

  else
  {
    v111 = v86;
  }

  a1[413] = v111;
  if (v110 != 1)
  {
    a1[414] = v108;
    goto LABEL_151;
  }

  v112 = a1 + *(*a1 - 24);
  LOWORD(v645) = 257;
  v109 = sub_23C49ADDC(v112 + 8, v108, v88, &__dst);
  v113 = *(a1 + 3156);
  a1[414] = v109;
  if ((v113 & 1) == 0)
  {
LABEL_151:
    *(a1 + 776) += 4;
    goto LABEL_152;
  }

  *(a1 + 777) += 4;
LABEL_152:
  v114 = a1 + *(*a1 - 24);
  v115 = a1[411];
  LOWORD(v645) = 257;
  a1[415] = sub_23C49A474(v114 + 8, v115, v109, &__dst);
  v116 = *(a1 + 756);
  v117 = *(a1 + *(*a1 - 24) + 584);
  v118 = llvm::ConstantInt::get();
  a1[416] = v118;
  a1[417] = v86;
  a1[418] = v118;
  v119 = a1 + *(*a1 - 24);
  v120 = a1[415];
  LOWORD(v645) = 257;
  a1[419] = sub_23C49A474(v119 + 8, v120, v118, &__dst);
  v121 = *(a1 + 757);
  v122 = *(a1 + *(*a1 - 24) + 584);
  v123 = llvm::ConstantInt::get();
  a1[420] = v123;
  a1[421] = v86;
  a1[422] = v123;
  v124 = a1 + *(*a1 - 24);
  v125 = a1[419];
  LOWORD(v645) = 257;
  a1[423] = sub_23C49A474(v124 + 8, v125, v123, &__dst);
  v126 = *(a1 + 758);
  v127 = *(a1 + *(*a1 - 24) + 584);
  v128 = llvm::ConstantInt::get();
  a1[424] = v128;
  a1[425] = v86;
  a1[426] = v128;
  v129 = a1 + *(*a1 - 24);
  v130 = a1[423];
  LOWORD(v645) = 257;
  a1[427] = sub_23C49A474(v129 + 8, v130, v128, &__dst);
  v131 = (*(a1 + 759) + 1) >> 1;
  *(a1 + 2992);
  v132 = *(a1 + *(*a1 - 24) + 584);
  v133 = llvm::ConstantInt::get();
  a1[428] = v133;
  a1[429] = v86;
  a1[430] = v133;
  v134 = a1 + *(*a1 - 24);
  v135 = a1[427];
  LOWORD(v645) = 257;
  a1[431] = sub_23C49A474(v134 + 8, v135, v133, &__dst);
  v136 = (*(a1 + 760) + 1) >> 1;
  *(a1 + 2992);
  v137 = *(a1 + *(*a1 - 24) + 584);
  v138 = llvm::ConstantInt::get();
  a1[432] = v138;
  a1[433] = v86;
  a1[434] = v138;
  v139 = a1 + *(*a1 - 24);
  v140 = a1[431];
  LOWORD(v645) = 257;
  a1[435] = sub_23C49A474(v139 + 8, v140, v138, &__dst);
  v141 = (*(a1 + 761) + 1) >> 1;
  *(a1 + 2992);
  v142 = *(a1 + *(*a1 - 24) + 584);
  v143 = llvm::ConstantInt::get();
  a1[436] = v143;
  a1[437] = v86;
  a1[438] = v143;
  v144 = a1 + *(*a1 - 24);
  v145 = a1[435];
  LOWORD(v645) = 257;
  v146 = sub_23C49A474(v144 + 8, v145, v143, &__dst);
  a1[439] = v146;
  v147 = *(a1 + 814);
  v148 = *a1;
  v582 = (a1 + 475);
  if (v147 && (*(*(a1 + *(v148 - 24) + 344) + 1654) & 1) == 0)
  {
    v578 = v94;
    v579 = v88;
    v149 = v568;
    v581 = v86;
    if (v568)
    {
      LODWORD(v643) = 128;
      __dst = MEMORY[0x23EED4160](6144, 8);
      sub_23C528F40(&__dst);
      LOBYTE(v644) = 0;
      v647 = 0;
      if (*(v149 + 16) == 83)
      {
        v150 = *(v149 + 5);
        v151 = v150 & 0x7FFFFFF;
        if ((v150 & 0x7FFFFFF) != 0)
        {
          v152 = v149;
          v153 = 0;
          v154 = 0;
          do
          {
            if ((v150 & 0x40000000) != 0)
            {
              v155 = *(v152 - 1);
            }

            else
            {
              v155 = &v152[-4 * v151];
            }

            v156 = v155[v153];
            *sub_23C529020(&__dst, v155[4 * *(v152 + 15) + v154++]) = v156;
            v150 = *(v152 + 5);
            v151 = v150 & 0x7FFFFFF;
            v153 += 4;
          }

          while (v154 < v151);
        }
      }

      else
      {
        SinglePredecessor = llvm::BasicBlock::getSinglePredecessor(v84);
        *sub_23C529020(&__dst, SinglePredecessor) = v149;
      }

      v158 = a1[396];
      v159 = a1[397];
      if (v158 != v159)
      {
        v160 = a1 + 399;
        while (1)
        {
          v161 = *(v158 + 3);
          if (!v161)
          {
            goto LABEL_188;
          }

          v162 = **(v161 - 64);
          v163 = (*(v162 + 8) & 0xFE) == 0x12 ? *(v162 + 32) : 1;
          v164 = *v158;
          v165 = v158[1];
          v166 = sub_23C529020(&__dst, *(v161 + 40));
          v167 = *v166;
          if (*(*v166 + 16) - 11 < 2)
          {
            break;
          }

          while (*(v167 - 32) != *(v161 - 64))
          {
            v167 = *(v167 - 64);
            if (*(v167 + 16) - 11 <= 1)
            {
              goto LABEL_179;
            }
          }

          v168 = v160;
          v169 = **(v167 + 64);
          v170 = *(a1[7] - 8 * *(a1[7] + 8) + 8 * v169);
          v171 = llvm::MDString::getString(*(v170 - 8 * *(v170 + 8)));
          if (v172 == 17)
          {
            if (*v171 == 0x747265762E726961 && *(v171 + 8) == 0x757074756F5F7865 && *(v171 + 16) == 116)
            {
              v638 = 0;
              v639 = 0;
              v640 = 0;
              if ((*(*a1 + 336))(a1, *v568, v169, v170, &v635, 0))
              {
                v179 = *(a1 + 616);
                v160 = v168;
                if (v179)
                {
                  v180 = a1[307];
                  v181 = v179 << 6;
                  while (*(v180 + 16) != v637)
                  {
                    v180 += 64;
                    v181 -= 64;
                    if (!v181)
                    {
                      goto LABEL_203;
                    }
                  }

                  v173 = *(v180 + 48);
                }

                else
                {
LABEL_203:
                  v173 = 0xFFFF;
                }
              }

              else
              {
                v173 = -2;
                v160 = v168;
              }

              if (SHIBYTE(v640) < 0)
              {
                operator delete(v638);
              }
            }

            else
            {
              v173 = -2;
              v160 = v168;
            }
          }

          else
          {
            v160 = v168;
            if (v172 != 12)
            {
              break;
            }

            if (*v171 ^ 0x69736F702E726961 | *(v171 + 8) ^ 0x6E6F6974)
            {
              v173 = -2;
            }

            else
            {
              v173 = 0;
            }
          }

LABEL_180:
          if (v163)
          {
            v174 = *(v160[v165] + 8);
            while (1)
            {
              v175 = *(v174 + 4 * v164);
              if (v175 != -2)
              {
                v176 = v173;
                if (v175 == -1)
                {
                  goto LABEL_186;
                }

                if (v173 != v175)
                {
                  break;
                }
              }

LABEL_187:
              ++v173;
              ++v164;
              if (!--v163)
              {
                goto LABEL_188;
              }
            }

            v176 = -2;
LABEL_186:
            *(v174 + 4 * v164) = v176;
            goto LABEL_187;
          }

LABEL_188:
          v158 += 8;
          if (v158 == v159)
          {
            goto LABEL_208;
          }
        }

LABEL_179:
        v173 = -2;
        goto LABEL_180;
      }

LABEL_208:
      v182 = *(a1 + 814);
      if (v182 >= 2)
      {
        for (i = 0; i < v182; ++i)
        {
          v184 = a1[i + 399];
          v185 = *(v184 + 1);
          v186 = *v184;
          if (*v185 < 0xFFFFFFFE)
          {
            if (v186 < 2)
            {
              continue;
            }

            v187 = v186 - 1;
            v188 = v185 + 1;
            v189 = *v185 + 1;
            while (1)
            {
              v190 = *v188++;
              if (v189 != v190)
              {
                break;
              }

              ++v189;
              if (!--v187)
              {
                goto LABEL_216;
              }
            }
          }

          memset_pattern4(v185, &unk_23C534EEC, 4 * v186);
          v182 = *(a1 + 814);
LABEL_216:
          ;
        }
      }

      v191 = a1[396];
      for (j = a1[397]; v191 != j; v191 += 8)
      {
        v193 = *(v191 + 3);
        if (v193)
        {
          v194 = *v191;
          v195 = **(v193 - 8);
          if ((*(v195 + 8) & 0xFE) == 0x12)
          {
            v196 = *(v195 + 32);
            if (!v196)
            {
              goto LABEL_228;
            }
          }

          else
          {
            v196 = 1;
          }

          v197 = *(a1[v191[1] + 399] + 8);
          if (*(v197 + 4 * v194) <= 0xFFFFFFFD)
          {
            v198 = 0;
            v199 = v194 + 1;
            while (v196 - 1 != v198)
            {
              v200 = *(v197 + 4 * (v199 + v198++));
              if (v200 >= 0xFFFFFFFE)
              {
                if (v198 < v196)
                {
                  goto LABEL_229;
                }

                break;
              }
            }

LABEL_228:
            v201 = *(v193 - 4);
            llvm::Instruction::eraseFromParent(v193);
            sub_23C4D9264(v201);
          }
        }

LABEL_229:
        ;
      }

      if (v647 == 1)
      {
        sub_23C4ED91C(&v644);
        llvm::deallocate_buffer(v644, (16 * v646));
        v647 = 0;
      }

      v202 = __dst;
      if (v643)
      {
        v636 = 2;
        v637 = 0;
        v638 = -4096;
        v639 = 0;
        v635 = &unk_284F28A78;
        v589 = 2;
        v590 = 0;
        v591 = -8192;
        v592 = 0;
        v588 = &unk_284F28A78;
        v203 = (__dst + 24);
        v204 = 48 * v643;
        do
        {
          v205 = *v203;
          if (*v203 != -8192 && v205 != -4096 && v205 != 0)
          {
            llvm::ValueHandleBase::RemoveFromUseList((v203 - 2));
          }

          v203 += 6;
          v204 -= 48;
        }

        while (v204);
        if (v591 != -8192 && v591 != -4096 && v591 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList(&v589);
        }

        if (v638 != -8192 && v638 != -4096 && v638)
        {
          llvm::ValueHandleBase::RemoveFromUseList(&v636);
        }

        v202 = __dst;
        v208 = 48 * v643;
      }

      else
      {
        v208 = 0;
      }

      llvm::deallocate_buffer(v202, v208);
      v146 = a1[439];
    }

    if (*(v146 + 16) == 16)
    {
      v209 = v146;
    }

    else
    {
      v209 = 0;
    }

    v210 = (v209 + 24);
    if (*(v209 + 32) >= 0x41u)
    {
      v210 = *v210;
    }

    v211 = *v210;
    v212 = *(a1 + 814);
    if (v212 < 2)
    {
      v214 = 0;
    }

    else
    {
      v213 = 0;
      v214 = 0;
      v215 = vdupq_n_s64(4uLL);
      do
      {
        v216 = a1[v213 + 399];
        v217 = *(v216 + 1);
        if (*v217 >= 0xFFFFFFFE)
        {
          v218 = *v216;
          if (v218)
          {
            v219 = (v218 + 3) & 0x1FFFFFFFCLL;
            v220 = vdupq_n_s64(v218 - 1);
            v221 = v217 + 2;
            v222 = v211;
            v223 = xmmword_23C5324B0;
            v224 = xmmword_23C532520;
            do
            {
              v225 = vmovn_s64(vcgeq_u64(v220, v223));
              if (vuzp1_s16(v225, 2).u8[0])
              {
                *(v221 - 2) = v222;
              }

              if (vuzp1_s16(v225, 2).i8[2])
              {
                *(v221 - 1) = v222 + 1;
              }

              if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v220, *&v224))).i32[1])
              {
                *v221 = v222 + 2;
                v221[1] = v222 + 3;
              }

              v224 = vaddq_s64(v224, v215);
              v223 = vaddq_s64(v223, v215);
              v222 += 4;
              v221 += 4;
              v219 -= 4;
            }

            while (v219);
            v212 = *(a1 + 814);
          }

          v211 += v218;
          v214 += v218;
        }

        ++v213;
      }

      while (v213 < v212);
    }

    v226 = a1[396];
    v227 = a1[397];
    if (v226 != v227)
    {
      v583 = (a1 + 399);
      while (1)
      {
        v228 = *(v226 + 3);
        if (v228)
        {
          break;
        }

LABEL_288:
        v226 += 8;
        if (v226 == v227)
        {
          goto LABEL_295;
        }
      }

      v229 = *v226;
      v230 = v226[1];
      v231 = *(v228 - 8);
      v232 = **(**(v228 - 4) + 16);
      if ((*(v232 + 8) & 0xFE) == 0x12)
      {
        v233 = *(v232 + 32);
        v234 = *&v583[8 * v230];
        if (!v233)
        {
LABEL_287:
          v239 = *(*(v234 + 8) + 4 * v229);
          v240 = *(a1 + *(*a1 - 24) + 584);
          v241 = llvm::ConstantInt::get();
          sub_23C5288D0(a1, v231, v241, 0, 1, 0);
          v242 = *(v228 - 4);
          llvm::Instruction::eraseFromParent(v228);
          sub_23C4D9264(v242);
          goto LABEL_288;
        }
      }

      else
      {
        v234 = *&v583[8 * v230];
        v233 = 1;
      }

      v235 = *(v234 + 8);
      if (*(v235 + 4 * v229) <= 0xFFFFFFFD)
      {
        v243 = 0;
        while (v233 - 1 != v243)
        {
          v244 = *(v235 + 4 * (v229 + 1 + v243++));
          if (v244 >= 0xFFFFFFFE)
          {
            if (v243 < v233)
            {
              goto LABEL_284;
            }

            goto LABEL_287;
          }
        }
      }

      else
      {
LABEL_284:
        v236 = v211;
        v237 = *v226;
        v238 = v233;
        do
        {
          *(v235 + 4 * v237++) = v236++;
          --v238;
        }

        while (v238);
        v211 += v233;
        v214 += v233;
      }

      goto LABEL_287;
    }

LABEL_295:
    *(a1 + 773) += v214;
    v148 = *a1;
    v86 = v581;
    v94 = v578;
    v88 = v579;
  }

  v573 = a1 + 411;
  v245 = *(a1 + 773);
  v246 = *(a1 + *(v148 - 24) + 584);
  v247 = llvm::ConstantInt::get();
  a1[440] = v247;
  a1[441] = v86;
  a1[442] = v247;
  v248 = a1 + *(*a1 - 24);
  v249 = a1[439];
  LOWORD(v645) = 257;
  a1[443] = sub_23C49A474(v248 + 8, v249, v247, &__dst);
  v250 = *(a1 + 774);
  v251 = *(a1 + *(*a1 - 24) + 584);
  v252 = llvm::ConstantInt::get();
  v253 = 0;
  v254 = 0;
  a1[444] = v252;
  a1[445] = v86;
  a1[446] = v252;
  do
  {
    v255 = *(a1 + v253 + 3036);
    if (*(a1 + 2992))
    {
      v255 = (v255 + 1) >> 1;
    }

    v254 += *(a1 + v253 + 3024) + v255;
    v253 += 4;
  }

  while (v253 != 12);
  *(a1 + 776) += *(a1 + 773) + *(a1 + 774) + v254;
  v256 = a1 + *(*a1 - 24);
  v257 = a1[443];
  LOWORD(v645) = 257;
  v258 = sub_23C49A474(v256 + 8, v257, v252, &__dst);
  v259 = 0;
  v260 = 0;
  a1[447] = v258;
  do
  {
    v261 = *(a1 + v259 + 3060);
    if (*(a1 + 2992))
    {
      v261 = (v261 + 1) >> 1;
    }

    v260 += *(a1 + v259 + 3048) + v261;
    v259 += 4;
  }

  while (v259 != 12);
  v262 = *(a1 + *(*a1 - 24) + 584);
  a1[448] = llvm::ConstantInt::get();
  a1[449] = v94;
  v263 = *(a1 + 762);
  v264 = *(a1 + *(*a1 - 24) + 584);
  v265 = llvm::ConstantInt::get();
  a1[450] = v265;
  v266 = a1 + *(*a1 - 24);
  v267 = a1[447];
  LOWORD(v645) = 257;
  v268 = sub_23C49A474(v266 + 8, v267, v265, &__dst);
  v269 = 0;
  v270 = 0;
  a1[451] = v268;
  do
  {
    v271 = *(a1 + v269 + 3060);
    if (*(a1 + 2992))
    {
      v271 = (v271 + 1) >> 1;
    }

    v270 += *(a1 + v269 + 3048) + v271;
    v269 += 4;
  }

  while (v269 != 12);
  v272 = *(a1 + *(*a1 - 24) + 584);
  a1[452] = llvm::ConstantInt::get();
  a1[453] = v94;
  v273 = *(a1 + 763);
  v274 = *(a1 + *(*a1 - 24) + 584);
  v275 = llvm::ConstantInt::get();
  a1[454] = v275;
  v276 = a1 + *(*a1 - 24);
  v277 = a1[451];
  LOWORD(v645) = 257;
  v278 = sub_23C49A474(v276 + 8, v277, v275, &__dst);
  v279 = 0;
  v280 = 0;
  a1[455] = v278;
  do
  {
    v281 = *(a1 + v279 + 3060);
    if (*(a1 + 2992))
    {
      v281 = (v281 + 1) >> 1;
    }

    v280 += *(a1 + v279 + 3048) + v281;
    v279 += 4;
  }

  while (v279 != 12);
  v282 = *(a1 + *(*a1 - 24) + 584);
  a1[456] = llvm::ConstantInt::get();
  a1[457] = v94;
  v283 = *(a1 + 764);
  v284 = *(a1 + *(*a1 - 24) + 584);
  v285 = llvm::ConstantInt::get();
  a1[458] = v285;
  v286 = a1 + *(*a1 - 24);
  v287 = a1[455];
  LOWORD(v645) = 257;
  v288 = sub_23C49A474(v286 + 8, v287, v285, &__dst);
  v289 = 0;
  v290 = 0;
  a1[459] = v288;
  do
  {
    v291 = *(a1 + v289 + 3060);
    if (*(a1 + 2992))
    {
      v291 = (v291 + 1) >> 1;
    }

    v290 += *(a1 + v289 + 3048) + v291;
    v289 += 4;
  }

  while (v289 != 12);
  v292 = *(a1 + *(*a1 - 24) + 584);
  a1[460] = llvm::ConstantInt::get();
  a1[461] = v94;
  v293 = (*(a1 + 765) + 1) >> 1;
  *(a1 + 2992);
  v294 = *(a1 + *(*a1 - 24) + 584);
  v295 = llvm::ConstantInt::get();
  a1[462] = v295;
  v296 = a1 + *(*a1 - 24);
  v297 = a1[459];
  LOWORD(v645) = 257;
  v298 = sub_23C49A474(v296 + 8, v297, v295, &__dst);
  v299 = 0;
  v300 = 0;
  a1[463] = v298;
  do
  {
    v301 = *(a1 + v299 + 3060);
    if (*(a1 + 2992))
    {
      v301 = (v301 + 1) >> 1;
    }

    v300 += *(a1 + v299 + 3048) + v301;
    v299 += 4;
  }

  while (v299 != 12);
  v302 = *(a1 + *(*a1 - 24) + 584);
  a1[464] = llvm::ConstantInt::get();
  a1[465] = v94;
  v303 = (*(a1 + 766) + 1) >> 1;
  *(a1 + 2992);
  v304 = *(a1 + *(*a1 - 24) + 584);
  v305 = llvm::ConstantInt::get();
  a1[466] = v305;
  v306 = a1 + *(*a1 - 24);
  v307 = a1[463];
  LOWORD(v645) = 257;
  v308 = sub_23C49A474(v306 + 8, v307, v305, &__dst);
  v309 = 0;
  v310 = 0;
  a1[467] = v308;
  do
  {
    v311 = *(a1 + v309 + 3060);
    if (*(a1 + 2992))
    {
      v311 = (v311 + 1) >> 1;
    }

    v310 += *(a1 + v309 + 3048) + v311;
    v309 += 4;
  }

  while (v309 != 12);
  v312 = *(a1 + *(*a1 - 24) + 584);
  a1[468] = llvm::ConstantInt::get();
  v313 = v94;
  a1[469] = v94;
  v314 = (*(a1 + 767) + 1) >> 1;
  *(a1 + 2992);
  v315 = *(a1 + *(*a1 - 24) + 584);
  v316 = llvm::ConstantInt::get();
  v317 = 0;
  v318 = 0;
  a1[470] = v316;
  v319 = *(*a1 - 24);
  do
  {
    v320 = *(a1 + v317 + 3060);
    if (*(a1 + 2992))
    {
      v320 = (v320 + 1) >> 1;
    }

    v318 += *(a1 + v317 + 3048) + v320;
    v317 += 4;
  }

  while (v317 != 12);
  v321 = a1 + v319;
  v322 = *(a1 + v319 + 584);
  v323 = llvm::ConstantInt::get();
  v324 = a1 + *(*a1 - 24);
  v325 = *(v324 + 584);
  v326 = llvm::ConstantInt::get();
  LOWORD(v645) = 257;
  v327 = sub_23C4BF7D4(v324 + 8, v88, v326, &__dst);
  LOWORD(v639) = 257;
  v328 = sub_23C49ADDC(v321 + 8, v323, v327, &v635);
  LOWORD(v592) = 257;
  v329 = sub_23C49A474(v321 + 8, v316, v328, &v588);
  v330 = 0;
  v331 = 0;
  a1[470] = v329;
  do
  {
    v332 = *(a1 + v330 + 3060);
    if (*(a1 + 2992))
    {
      v332 = (v332 + 1) >> 1;
    }

    v331 += *(a1 + v330 + 3048) + v332;
    v330 += 4;
  }

  while (v330 != 12);
  *(a1 + 777) += v331;
  v333 = a1 + *(*a1 - 24);
  v334 = *(v333 + 584);
  v335 = llvm::ConstantInt::get();
  LOWORD(v645) = 257;
  v336 = sub_23C49ADDC(v333 + 8, v335, v88, &__dst);
  v337 = a1 + *(*a1 - 24);
  v338 = a1[447];
  LOWORD(v645) = 257;
  a1[471] = sub_23C49A474(v337 + 8, v338, v336, &__dst);
  v339 = *(a1 + 3100);
  v340 = *(a1 + *(*a1 - 24) + 584);
  v341 = llvm::ConstantInt::get();
  a1[472] = v341;
  v342 = *(a1 + 3157);
  if (*(a1 + 3157))
  {
    v343 = v313;
  }

  else
  {
    v343 = v86;
  }

  a1[473] = v343;
  v344 = v580;
  if (v342 == 1)
  {
    v345 = a1 + *(*a1 - 24);
    LOWORD(v645) = 257;
    v341 = sub_23C49ADDC(v345 + 8, v341, v88, &__dst);
  }

  a1[474] = v341;
  if (*(a1 + 3100) == 1)
  {
    if (*(a1 + 3157) == 1)
    {
      ++*(a1 + 777);
    }

    else
    {
      ++*(a1 + 776);
    }
  }

  v346 = a1 + *(*a1 - 24);
  if (*(*(v346 + 344) + 1671) != 1)
  {
    v348 = a1[471];
    LOWORD(v645) = 257;
    a1[475] = sub_23C49A474(v346 + 8, v348, v341, &__dst);
    v349 = *(a1 + 3101);
    v350 = *(a1 + *(*a1 - 24) + 584);
    v351 = llvm::ConstantInt::get();
    a1[476] = v351;
    v352 = *(a1 + 3158);
    if (*(a1 + 3158))
    {
      v353 = v313;
    }

    else
    {
      v353 = v86;
    }

    a1[477] = v353;
    if (v352 == 1)
    {
      v354 = a1 + *(*a1 - 24);
      LOWORD(v645) = 257;
      v351 = sub_23C49ADDC(v354 + 8, v351, v88, &__dst);
    }

    a1[478] = v351;
    if (*(a1 + 3101) == 1)
    {
      if (*(a1 + 3158) == 1)
      {
        ++*(a1 + 777);
      }

      else
      {
        ++*(a1 + 776);
      }
    }

    v363 = a1 + *(*a1 - 24);
    v364 = a1[475];
    LOWORD(v645) = 257;
    a1[479] = sub_23C49A474(v363 + 8, v364, v351, &__dst);
    v365 = *(a1 + 3102);
    v366 = *(a1 + *(*a1 - 24) + 584);
    v359 = llvm::ConstantInt::get();
    a1[480] = v359;
    v367 = *(a1 + 3159);
    if (*(a1 + 3159))
    {
      v368 = v313;
    }

    else
    {
      v368 = v86;
    }

    a1[481] = v368;
    if (v367 == 1)
    {
      v369 = a1 + *(*a1 - 24);
      LOWORD(v645) = 257;
      v359 = sub_23C49ADDC(v369 + 8, v359, v88, &__dst);
    }

    a1[482] = v359;
    if (*(a1 + 3102) != 1)
    {
      goto LABEL_374;
    }

    if (*(a1 + 3159) == 1)
    {
      goto LABEL_372;
    }

LABEL_373:
    ++*(a1 + 776);
    goto LABEL_374;
  }

  if (*(a1 + 3101))
  {
    v347 = 1;
  }

  else
  {
    v347 = *(a1 + 3102);
  }

  if (*(a1 + 3158))
  {
    v355 = 1;
  }

  else
  {
    v355 = *(a1 + 3159);
  }

  v356 = a1[471];
  LOWORD(v645) = 257;
  a1[475] = sub_23C49A474(v346 + 8, v356, v341, &__dst);
  v357 = *(a1 + *(*a1 - 24) + 584);
  v358 = llvm::ConstantInt::get();
  v359 = v358;
  a1[476] = v358;
  if (v355)
  {
    v360 = v313;
  }

  else
  {
    v360 = v86;
  }

  a1[477] = v360;
  if (v355)
  {
    v361 = a1 + *(*a1 - 24);
    LOWORD(v645) = 257;
    v359 = sub_23C49ADDC(v361 + 8, v358, v88, &__dst);
    v362 = a1[477];
    a1[478] = v359;
    *(v582 + 32) = *v582;
    a1[481] = v362;
    a1[482] = v359;
    if ((v347 & 1) == 0)
    {
      goto LABEL_374;
    }

LABEL_372:
    ++*(a1 + 777);
    goto LABEL_374;
  }

  a1[478] = v358;
  a1[479] = a1[475];
  a1[480] = v358;
  a1[481] = v86;
  a1[482] = v358;
  if (v347)
  {
    goto LABEL_373;
  }

LABEL_374:
  v370 = a1 + *(*a1 - 24);
  v371 = a1[479];
  LOWORD(v645) = 257;
  a1[483] = sub_23C49A474(v370 + 8, v371, v359, &__dst);
  v372 = *(a1 + 778);
  v373 = *(a1 + *(*a1 - 24) + 584);
  v374 = llvm::ConstantInt::get();
  a1[484] = v374;
  v375 = *(a1 + 3156);
  if (*(a1 + 3156))
  {
    v376 = v313;
  }

  else
  {
    v376 = v86;
  }

  a1[485] = v376;
  if (v375 == 1)
  {
    v377 = a1 + *(*a1 - 24);
    LOWORD(v645) = 257;
    v374 = sub_23C49ADDC(v377 + 8, v374, v88, &__dst);
  }

  a1[486] = v374;
  v378 = *(a1 + 778);
  if (v378)
  {
    if (*(a1 + 3156) != 1)
    {
      *(a1 + 776) += v378;
      if (!v344)
      {
        goto LABEL_384;
      }

      goto LABEL_383;
    }

    *(a1 + 777) += v378;
  }

  if (v344)
  {
LABEL_383:
    v379 = a1 + *(*a1 - 24);
    v380 = a1[411];
    v381 = a1[413];
    v382 = a1[412];
    LOWORD(v645) = 257;
    v383 = sub_23C49ADDC(v379 + 8, v381, v382, &__dst);
    LOWORD(v639) = 257;
    v384 = sub_23C49A474(v379 + 8, v380, v383, &v635);
    sub_23C5288D0(a1, v344, v384, 0, 0, *(a1 + 3156));
  }

LABEL_384:
  v385 = *(a1 + 616);
  v386 = (a1 + 1);
  v583 = (a1 + 1);
  if (!v385)
  {
    goto LABEL_422;
  }

  v387 = 0;
  v577 = 0;
  LODWORD(v578) = 0;
  v579 = 0;
  v388 = 0;
  v389 = a1[307];
  v574 = v389 + (v385 << 6);
  do
  {
    if (*(a1 + 2992) == 1)
    {
      v390 = *(v389 + 56);
    }

    else
    {
      v390 = 0;
    }

    v391 = *(v389 + 16);
    if (v633)
    {
      v392 = v632;
      v393 = v633;
      do
      {
        v394 = v393 >> 1;
        v395 = &v392[16 * (v393 >> 1)];
        v397 = *v395;
        v396 = v395 + 16;
        v393 += ~(v393 >> 1);
        if (v397 < v391)
        {
          v392 = v396;
        }

        else
        {
          v393 = v394;
        }
      }

      while (v393);
    }

    else
    {
      v392 = v632;
    }

    if (v392 != &v632[16 * v633] && *v392 == v391)
    {
      LODWORD(v581) = v387;
      v398 = *(*a1 - 24);
      v582 = *(v389 + 60);
      v399 = &v573[4 * v582];
      v401 = v399[1];
      v400 = v399[2];
      v402 = *v399;
      LOWORD(v645) = 257;
      v403 = sub_23C49ADDC(&v386[v398], v400, v401, &__dst);
      LOWORD(v639) = 257;
      v404 = sub_23C49A474(&v386[v398], v402, v403, &v635);
      v405 = *(v392 + 1);
      if (v390)
      {
        v636 = 0;
        v637 = 0;
        v638 = 0;
        v635 = v405;
        if (*v405)
        {
          v406 = *(*v405 + 8) == 18;
        }

        else
        {
          v406 = 0;
        }

        if (!v406)
        {
          v407 = 1;
LABEL_408:
          v575 = v404;
          v576 = v389;
          v413 = *(v389 + 52);
          v414 = &v635;
          v415 = v581;
          while (1)
          {
            v416 = a1 + *(*a1 - 24);
            v417 = *(v416 + 584);
            v418 = llvm::ConstantInt::get();
            LOWORD(v645) = 257;
            v581 = sub_23C49A474(v416 + 8, v404, v418, &__dst);
            v420 = *v414;
            LODWORD(v580) = *(v576 + 57);
            if (v388)
            {
              v421 = v415;
              v422 = v388;
              v423 = a1 + *(*a1 - 24);
              if (v421 == v582 && v577 == (v413 & 0xFFFFFFFE))
              {
                LOWORD(v645) = 257;
                v424 = *(v423 + 192);
                v425 = llvm::ConstantInt::get();
                v426 = sub_23C505AA8(v423 + 8, v422, v420, v425, &__dst);
                if (v426)
                {
                  v427 = a1 + *(*a1 - 24);
                  v428 = *(v427 + 192);
                  LOWORD(v645) = 257;
                  v429 = sub_23C49ACF8(v427 + 8, 49, v426, v428, &__dst);
                  sub_23C5288D0(a1, v429, v579, 1, 1, v578 & 1);
                  v388 = 0;
                  v579 = 0;
                }

                else
                {
                  v388 = 0;
                }

                goto LABEL_416;
              }

              v430 = *(v423 + 192);
              LOWORD(v645) = 257;
              v431 = sub_23C49ACF8(v423 + 8, 49, v422, v430, &__dst);
              sub_23C5288D0(a1, v431, v579, 1, 1, v578 & 1);
            }

            v432 = a1 + *(*a1 - 24);
            v433 = llvm::Constant::getNullValue(*(v432 + 208), v419);
            LOWORD(v645) = 257;
            v434 = *(v432 + 192);
            v435 = llvm::ConstantInt::get();
            v388 = sub_23C505AA8(v432 + 8, v433, v420, v435, &__dst);
            v579 = v581;
            LODWORD(v578) = v580;
            v577 = v413;
LABEL_416:
            v404 = v575;
            ++v413;
            ++v414;
            v415 = v582;
            if (!--v407)
            {
              v386 = v583;
              v387 = v582;
              v389 = v576;
              goto LABEL_419;
            }
          }
        }

        v407 = *(*v405 + 32);
        sub_23C505D44(a1 + *(*a1 - 24), v405, &v635);
        if (v407)
        {
          goto LABEL_408;
        }
      }

      else
      {
        v408 = a1 + *(*a1 - 24);
        v409 = *(v389 + 52);
        v410 = *(v408 + 584);
        v411 = llvm::ConstantInt::get();
        LOWORD(v645) = 257;
        v412 = sub_23C49A474(v408 + 8, v404, v411, &__dst);
        sub_23C5288D0(a1, v405, v412, 1, 1, *(v389 + 57));
      }

      v387 = v581;
    }

LABEL_419:
    v389 += 64;
  }

  while (v389 != v574);
  if (v388)
  {
    v436 = a1 + *(*a1 - 24);
    v437 = *(v436 + 192);
    LOWORD(v645) = 257;
    v438 = sub_23C49ACF8(v436 + 8, 49, v388, v437, &__dst);
    sub_23C5288D0(a1, v438, v579, 1, 1, v578 & 1);
  }

LABEL_422:
  if (*(a1 + 814))
  {
    v439 = (a1 + *(*a1 - 24));
    if (*(v439[43] + 1654) == 1)
    {
      v441 = v439[7];
      v440 = v439[8];
      __dst = "return_block";
      LOWORD(v645) = 259;
      llvm::BasicBlock::splitBasicBlock();
      v442 = *(a1 + *(*a1 - 24) + 336);
      __dst = "tf_write_block";
      LOWORD(v645) = 259;
      v574 = v441;
      v443 = *(v441 + 56);
      operator new();
    }
  }

  if (*(a1 + 774))
  {
    if (*(a1[439] + 16) == 16)
    {
      v444 = a1[439];
    }

    else
    {
      v444 = 0;
    }

    v445 = (v444 + 24);
    if (*(v444 + 32) >= 0x41u)
    {
      v445 = *v445;
    }

    v581 = *v445;
    v446 = *(a1 + *(*a1 - 24) + 160);
    v447 = llvm::ConstantFP::get();
    v448 = (a1 + *(*a1 - 24));
    v449 = v448[43];
    v450 = *(v449 + 1232);
    if (v450)
    {
      v451 = strlen(*(v449 + 1232));
    }

    else
    {
      v451 = 0;
    }

    v452 = sub_23C49B938(v448, v450, v451, v448[18], v448[73], v448[20]);
    v453 = *(a1 + *(*a1 - 24) + 320);
    v454 = *(v453 + 32);
    v579 = (v453 + 24);
    if (v454 != (v453 + 24))
    {
      v455 = v452;
      do
      {
        v456 = v454 - 56;
        v580 = v454;
        if (!v454)
        {
          v456 = 0;
        }

        v457 = *(v456 + 10);
        v582 = (v456 + 72);
        if (v457 != v456 + 72)
        {
          do
          {
            if (v457)
            {
              v458 = (v457 - 24);
            }

            else
            {
              v458 = 0;
            }

            v459 = *(v458 + 5);
            v460 = v459 - 24;
            if (v459)
            {
              v461 = v459 - 24;
            }

            else
            {
              v461 = 0;
            }

            v462 = *(v461 + 16) - 29;
            if (v462 >= 0xB)
            {
              v460 = 0;
            }

            v463 = *(v460 + 16) != 29 || v462 > 0xA;
            v464 = v583;
            if (!v463)
            {
              v465 = *(*a1 - 24);
              FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v458);
              sub_23C497720(&v464[v465], v458, FirstInsertionPt);
              if (*(a1 + 774))
              {
                v467 = 0;
                v468 = v581;
                do
                {
                  v635 = 0;
                  v636 = 0;
                  v469 = *(a1 + *(*a1 - 24) + 584);
                  v635 = llvm::ConstantInt::get();
                  v636 = v447;
                  v470 = *(*a1 - 24);
                  LOWORD(v645) = 257;
                  sub_23C497A7C(&v464[v470], *(v455 + 24), v455, &v635, 2, &__dst);
                  ++v467;
                  ++v468;
                }

                while (v467 < *(a1 + 774));
              }
            }

            v457 = *(v457 + 1);
          }

          while (v457 != v582);
        }

        v454 = *(v580 + 1);
      }

      while (v454 != v579);
    }
  }

  sub_23C4C30FC(a1 + *(*a1 - 24) + 8, v571);
  if (*(a1 + 3100) == 1)
  {
    v471 = (*(*a1 + 368))(a1, v569);
    v472 = *v471;
    v473 = llvm::ConstantFP::get();
    v474 = a1 + *(*a1 - 24);
    v475 = *(v474 + 344);
    v584 = *(v474 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v585, (v474 + 8));
    v586 = *(v474 + 104);
    v476 = (*(*v475 + 48))(v475, &v584, v471, v473, 0);
    if (v585)
    {
      llvm::MetadataTracking::untrack();
    }

    v477 = a1 + *(*a1 - 24);
    v478 = a1[471];
    v479 = a1[473];
    v480 = a1[472];
    LOWORD(v645) = 257;
    v481 = sub_23C49ADDC(v477 + 8, v479, v480, &__dst);
    LOWORD(v639) = 257;
    v482 = sub_23C49A474(v477 + 8, v478, v481, &v635);
    sub_23C5288D0(a1, v476, v482, 0, 2, *(a1 + 3157));
  }

  v483 = *a1;
  v484 = a1 + *(*a1 - 24);
  v485 = *(v484 + 344);
  v486 = v572;
  if (*(v485 + 1671) == 1)
  {
    if ((*(a1 + 3101) & 1) != 0 || *(a1 + 3102) == 1)
    {
      v487 = *(v484 + 192);
      v488 = llvm::ConstantInt::get();
      if (*(a1 + 3101) == 1)
      {
        v489 = NullValue;
        v490 = a1 + *(*a1 - 24);
        v491 = *(v490 + 192);
        if (*NullValue == v491)
        {
          v508 = *(v490 + 192);
          v509 = llvm::ConstantInt::get();
          v492 = sub_23C506630(v490, v489, v509, 36);
        }

        else
        {
          LOWORD(v645) = 257;
          v492 = sub_23C49ACF8(v490 + 8, 39, NullValue, v491, &__dst);
        }

        v510 = v492;
        v511 = sub_23C528E20(a1);
        v512 = a1 + *(*a1 - 24);
        LOWORD(v645) = 257;
        v513 = sub_23C49A668(v512 + 8, v510, v511, &__dst);
        v514 = a1 + *(*a1 - 24);
        LOWORD(v645) = 257;
        v515 = *v513;
        v516 = llvm::ConstantInt::get();
        v488 = sub_23C49A668(v514 + 8, v513, v516, &__dst);
      }

      v517 = v488;
      if (*(a1 + 3102) == 1)
      {
        v518 = a1 + *(*a1 - 24);
        v519 = *(v518 + 192);
        if (*v486 == v519)
        {
          v521 = *(v518 + 192);
          v522 = llvm::ConstantInt::get();
          v520 = sub_23C506630(v518, v486, v522, 36);
        }

        else
        {
          LOWORD(v645) = 257;
          v520 = sub_23C49ACF8(v518 + 8, 39, v486, v519, &__dst);
        }

        v523 = v520;
        v524 = sub_23C528E20(a1);
        v525 = a1 + *(*a1 - 24);
        LOWORD(v645) = 257;
        v526 = sub_23C49A8E0(v525 + 8, v523, v524, &__dst);
        v527 = a1 + *(*a1 - 24);
        LOWORD(v645) = 257;
        v528 = *v526;
        v529 = llvm::ConstantInt::get();
        v530 = sub_23C49A668(v527 + 8, v526, v529, &__dst);
        v531 = a1 + *(*a1 - 24);
        LOWORD(v645) = 257;
        v532 = sub_23C49A474(v531 + 8, v517, v530, &__dst);
        v533 = a1 + *(*a1 - 24);
        LOWORD(v645) = 257;
        v517 = sub_23C49A98C(v533 + 8, v532, v523, &__dst);
      }

      v534 = a1 + *(*a1 - 24);
      v535 = a1[475];
      v536 = a1[477];
      v537 = a1[476];
      LOWORD(v645) = 257;
      v538 = sub_23C49ADDC(v534 + 8, v536, v537, &__dst);
      LOWORD(v639) = 257;
      v503 = sub_23C49A474(v534 + 8, v535, v538, &v635);
      if (*(a1 + 3158))
      {
        v539 = 1;
      }

      else
      {
        v539 = *(a1 + 3159);
      }

      v504 = v539 & 1;
      v505 = a1;
      v506 = v517;
      v507 = 4;
LABEL_485:
      sub_23C5288D0(v505, v506, v503, 0, v507, v504);
    }
  }

  else
  {
    if (*(v485 + 1669) == 1 && *(a1 + 3101) == 1)
    {
      v493 = a1[475];
      v494 = a1[477];
      v495 = a1[476];
      LOWORD(v645) = 257;
      v496 = sub_23C49ADDC(v484 + 8, v494, v495, &__dst);
      LOWORD(v639) = 257;
      v497 = sub_23C49A474(v484 + 8, v493, v496, &v635);
      sub_23C5288D0(a1, NullValue, v497, 0, 4, *(a1 + 3158));
      v483 = *a1;
    }

    v498 = a1 + *(v483 - 24);
    if (*(*(v498 + 344) + 1670) == 1 && *(a1 + 3102) == 1)
    {
      v499 = a1[479];
      v500 = a1[481];
      v501 = a1[480];
      LOWORD(v645) = 257;
      v502 = sub_23C49ADDC(v498 + 8, v500, v501, &__dst);
      LOWORD(v639) = 257;
      v503 = sub_23C49A474(v498 + 8, v499, v502, &v635);
      v504 = *(a1 + 3159);
      v505 = a1;
      v506 = v486;
      v507 = 5;
      goto LABEL_485;
    }
  }

  v540 = 0;
  v541 = 0;
  v582 = (a1 + 73);
  v542 = 1;
  do
  {
    if ((*(a1 + 779) & v542) != 0)
    {
      v543 = *(v582 + *(*a1 - 24));
      v544 = llvm::ConstantInt::get();
      v545 = *(*a1 - 24);
      v546 = a1[483];
      v547 = a1[485];
      v548 = a1[484];
      LOWORD(v645) = 257;
      v549 = v583;
      v550 = sub_23C49ADDC(&v583[v545], v547, v548, &__dst);
      LOWORD(v639) = 257;
      v551 = sub_23C49A474(&v549[v545], v546, v550, &v635);
      LOWORD(v592) = 257;
      v552 = sub_23C49A474(&v549[v545], v544, v551, &v588);
      sub_23C5288D0(a1, *&v627[v540], v552, 0, 3, *(a1 + 3156));
      ++v541;
    }

    v542 *= 2;
    v540 += 8;
  }

  while (v540 != 64);
  if (v568)
  {
    sub_23C4D9264(v568);
  }

  v553 = a1 + *(*a1 - 24);
  v554 = v571;
  v555 = v571 + 3;
  if (!v571)
  {
    v555 = 0;
  }

  sub_23C497720(v553 + 8, v571[5], v555[1]);
  llvm::Instruction::eraseFromParent(v554);
  llvm::Function::eraseFromParent(v565[0]);
  v556 = 1;
LABEL_495:
  v557 = 384;
  do
  {
    if (*(&v590 + v557 + 7) < 0)
    {
      operator delete(*(&v588 + v557));
    }

    v557 -= 96;
  }

  while (v557);
  if (v628 != v566)
  {
    free(v628);
  }

  if (v632 != v567)
  {
    free(v632);
  }

  v558 = *MEMORY[0x277D85DE8];
  return v556;
}

llvm::Value *sub_23C527C64(void *a1, int a2)
{
  v3 = *(a1 + *(*a1 - 24) + 344);
  if (a2)
  {
    v4 = *(v3 + 1352);
    v5 = sub_23C529724(a1);
  }

  else
  {
    v4 = *(v3 + 1344);
    v5 = sub_23C527D50(a1);
  }

  v11 = v5;
  if (v4)
  {
    v6 = strlen(v4);
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_23C49EB10(a1 + *(*a1 - 24), v4, v6, *(a1 + *(*a1 - 24) + 192), *(a1 + *(*a1 - 24) + 192));
  v8 = a1 + *(*a1 - 24);
  v10[16] = 257;
  return sub_23C497A7C((v8 + 8), *(v7 + 24), v7, &v11, 1, v10);
}

uint64_t sub_23C527D50(void *a1)
{
  v2 = llvm::User::operator new(0x58);
  v3 = (a1 + *(*a1 - 24));
  v4 = v3[40];
  v5 = v3[24];
  v10 = "agc.amp.count";
  v11 = 259;
  v9 = *(v3[43] + 836) | 0x100000000;
  v6 = llvm::GlobalVariable::GlobalVariable();
  *(v6 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  sub_23C506A1C((a1 + *(*a1 - 24)));
  v7 = (a1 + *(*a1 - 24));
  v11 = 257;
  return sub_23C497C88(v7 + 1, **(*v2 + 16), v2, 0, &v10);
}

unint64_t sub_23C527E70(unint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = (a2 - 16);
  k = v7;
  while (1)
  {
    v7 = k;
    v10 = (a2 - k) >> 4;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          return sub_23C529844(k, (k + 16), (a2 - 16));
        case 4:
          result = sub_23C529844(k, (k + 16), (k + 32));
          v44 = *v8;
          v45 = *(k + 32);
          if (*v8 >= v45)
          {
            if (v45 < v44)
            {
              return result;
            }

            v47 = *(a2 - 8);
            v46 = *(k + 40);
            if (v47 >= v46)
            {
              return result;
            }
          }

          else
          {
            v46 = *(k + 40);
            v47 = *(a2 - 8);
          }

          *(k + 32) = v44;
          *(a2 - 16) = v45;
          *(k + 40) = v47;
          *(a2 - 8) = v46;
          v48 = *(k + 32);
          v49 = *(k + 16);
          if (v48 >= v49)
          {
            if (v49 < v48)
            {
              return result;
            }

            v51 = *(k + 40);
            v50 = *(k + 24);
            if (v51 >= v50)
            {
              return result;
            }
          }

          else
          {
            v50 = *(k + 24);
            v51 = *(k + 40);
          }

          *(k + 16) = v48;
          *(k + 32) = v49;
          *(k + 24) = v51;
          *(k + 40) = v50;
          v52 = *k;
          if (v48 >= *k)
          {
            if (v52 < v48)
            {
              return result;
            }

            v53 = *(k + 8);
            if (v51 >= v53)
            {
              return result;
            }
          }

          else
          {
            v53 = *(k + 8);
          }

          *k = v48;
          *(k + 16) = v52;
          *(k + 8) = v51;
          *(k + 24) = v53;
          return result;
        case 5:

          return sub_23C52998C(k, k + 16, k + 32, k + 48, (a2 - 16));
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v54 = *v8;
        v55 = *k;
        if (*v8 >= *k)
        {
          if (v55 < v54)
          {
            return result;
          }

          v57 = *(a2 - 8);
          v56 = *(k + 8);
          if (v57 >= v56)
          {
            return result;
          }
        }

        else
        {
          v56 = *(k + 8);
          v57 = *(a2 - 8);
        }

        *k = v54;
        *(a2 - 16) = v55;
        *(k + 8) = v57;
        *(a2 - 8) = v56;
        return result;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (k == a2)
      {
        return result;
      }

      v73 = (v10 - 2) >> 1;
      v74 = v73;
      while (1)
      {
        v75 = v74;
        if (v73 >= v74)
        {
          v76 = (2 * v74) | 1;
          v77 = k + 16 * v76;
          if (2 * v75 + 2 < v10)
          {
            v78 = *(v77 + 16);
            if (*v77 < v78 || v78 >= *v77 && *(v77 + 8) < *(v77 + 24))
            {
              v77 += 16;
              v76 = 2 * v75 + 2;
            }
          }

          v79 = k + 16 * v75;
          v80 = *v77;
          v81 = *v79;
          if (*v77 >= *v79)
          {
            if (v81 < v80)
            {
              v82 = *(v79 + 8);
              v83 = *(v77 + 8);
LABEL_147:
              *v79 = v80;
              *(v79 + 8) = v83;
              if (v73 >= v76)
              {
                while (1)
                {
                  v85 = 2 * v76;
                  v76 = (2 * v76) | 1;
                  v84 = k + 16 * v76;
                  v86 = v85 + 2;
                  if (v86 < v10)
                  {
                    result = *(v84 + 16);
                    if (*v84 < result || result >= *v84 && (result = *(v84 + 8), result < *(v84 + 24)))
                    {
                      v84 += 16;
                      v76 = v86;
                    }
                  }

                  v87 = *v84;
                  if (*v84 < v81)
                  {
                    break;
                  }

                  v88 = *(v84 + 8);
                  if (v81 >= v87 && v88 < v82)
                  {
                    break;
                  }

                  *v77 = v87;
                  *(v77 + 8) = v88;
                  v77 = v84;
                  if (v73 < v76)
                  {
                    goto LABEL_149;
                  }
                }
              }

              v84 = v77;
LABEL_149:
              *v84 = v81;
              *(v84 + 8) = v82;
              goto LABEL_150;
            }

            v83 = *(v77 + 8);
            v82 = *(v79 + 8);
            if (v83 >= v82)
            {
              goto LABEL_147;
            }
          }
        }

LABEL_150:
        v74 = v75 - 1;
        if (!v75)
        {
          while (1)
          {
            v92 = 0;
            v93 = *k;
            v94 = *(k + 8);
            v95 = k;
            do
            {
              v96 = v95;
              v97 = v95 + 16 * v92;
              v95 = v97 + 16;
              v98 = 2 * v92;
              v92 = (2 * v92) | 1;
              v99 = v98 + 2;
              if (v99 < v10)
              {
                result = *(v97 + 32);
                v100 = *(v97 + 16);
                if (v100 < result || result >= v100 && (result = *(v97 + 24), result < *(v97 + 40)))
                {
                  v95 = v97 + 32;
                  v92 = v99;
                }
              }

              *v96 = *v95;
              *(v96 + 8) = *(v95 + 8);
            }

            while (v92 <= (v10 - 2) / 2);
            if (v95 == a2 - 16)
            {
              *v95 = v93;
              *(v95 + 8) = v94;
            }

            else
            {
              *v95 = *(a2 - 16);
              *(v95 + 8) = *(a2 - 8);
              *(a2 - 16) = v93;
              *(a2 - 8) = v94;
              v101 = (v95 - k + 16) >> 4;
              v102 = v101 - 2;
              if (v101 >= 2)
              {
                v103 = v102 >> 1;
                v104 = k + 16 * (v102 >> 1);
                v105 = *v104;
                v106 = *v95;
                if (*v104 < *v95)
                {
                  v91 = *(v95 + 8);
                  v90 = *(v104 + 8);
LABEL_179:
                  *v95 = v105;
                  *(v95 + 8) = v90;
                  if (v102 >= 2)
                  {
                    while (1)
                    {
                      v108 = v103 - 1;
                      v103 = (v103 - 1) >> 1;
                      v107 = k + 16 * v103;
                      v109 = *v107;
                      if (*v107 >= v106)
                      {
                        if (v106 < v109)
                        {
                          break;
                        }

                        v110 = *(v107 + 8);
                        if (v110 >= v91)
                        {
                          break;
                        }
                      }

                      else
                      {
                        v110 = *(v107 + 8);
                      }

                      *v104 = v109;
                      *(v104 + 8) = v110;
                      v104 = k + 16 * v103;
                      if (v108 <= 1)
                      {
                        goto LABEL_186;
                      }
                    }
                  }

                  v107 = v104;
LABEL_186:
                  *v107 = v106;
                  *(v107 + 8) = v91;
                  goto LABEL_188;
                }

                if (v106 >= v105)
                {
                  v90 = *(v104 + 8);
                  v91 = *(v95 + 8);
                  if (v90 < v91)
                  {
                    goto LABEL_179;
                  }
                }
              }
            }

LABEL_188:
            a2 -= 16;
            if (v10-- <= 2)
            {
              return result;
            }
          }
        }
      }
    }

    v11 = v10 >> 1;
    v12 = k + 16 * (v10 >> 1);
    if (v10 < 0x81)
    {
      result = sub_23C529844((v7 + 16 * (v10 >> 1)), v7, (a2 - 16));
    }

    else
    {
      sub_23C529844(v7, (v7 + 16 * (v10 >> 1)), (a2 - 16));
      sub_23C529844((v7 + 16), (v12 - 16), (a2 - 32));
      sub_23C529844((v7 + 32), (v7 + 16 + 16 * v11), (a2 - 48));
      result = sub_23C529844((v12 - 16), v12, (v7 + 16 + 16 * v11));
      v13 = *v7;
      *v7 = *v12;
      *v12 = v13;
      v14 = *(v7 + 8);
      *(v7 + 8) = *(v12 + 8);
      *(v12 + 8) = v14;
    }

    --a3;
    v15 = *v7;
    if ((a4 & 1) != 0 || (v16 = *(v7 - 16), v16 < v15))
    {
LABEL_19:
      v18 = *(v7 + 8);
      for (i = v7 + 16; ; i += 16)
      {
        v20 = *i;
        if (*i >= v15 && (v15 < v20 || *(i + 8) >= v18))
        {
          break;
        }
      }

      if (i - 16 == v7)
      {
        j = a2;
        if (i < a2)
        {
          v24 = *v8;
          j = a2 - 16;
          if (*v8 >= v15)
          {
            j = a2 - 16;
            do
            {
              if (v15 >= v24)
              {
                if (*(j + 8) < v18 || i >= j)
                {
                  break;
                }
              }

              else if (i >= j)
              {
                break;
              }

              v26 = *(j - 16);
              j -= 16;
              v24 = v26;
            }

            while (v26 >= v15);
          }
        }
      }

      else
      {
        v21 = *v8;
        for (j = a2 - 16; v21 >= v15 && (v15 < v21 || *(j + 8) >= v18); j -= 16)
        {
          v23 = *(j - 16);
          v21 = v23;
        }
      }

      k = i;
      if (i < j)
      {
        v27 = *j;
        k = i;
        v28 = j;
        do
        {
          *k = v27;
          *v28 = v20;
          v29 = *(k + 8);
          *(k + 8) = *(v28 + 8);
          *(v28 + 8) = v29;
          do
          {
            do
            {
              v30 = *(k + 16);
              k += 16;
              v20 = v30;
            }

            while (v30 < v15);
          }

          while (v15 >= v20 && *(k + 8) < v18);
          do
          {
            v31 = *(v28 - 16);
            v28 -= 16;
            v27 = v31;
          }

          while (v31 >= v15 && (v15 < v27 || *(v28 + 8) >= v18));
        }

        while (k < v28);
      }

      if (k - 16 != v7)
      {
        *v7 = *(k - 16);
        *(v7 + 8) = *(k - 8);
      }

      *(k - 16) = v15;
      *(k - 8) = v18;
      if (i < j)
      {
LABEL_56:
        result = sub_23C527E70(v7, k - 16, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v32 = sub_23C529BAC(v7, k - 16);
        result = sub_23C529BAC(k, a2);
        if (result)
        {
          a2 = k - 16;
          if (v32)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v32)
        {
          goto LABEL_56;
        }
      }
    }

    else
    {
      if (v15 < v16)
      {
        v17 = *(v7 + 8);
      }

      else
      {
        v17 = *(v7 + 8);
        if (*(v7 - 8) < v17)
        {
          goto LABEL_19;
        }
      }

      v33 = *v8;
      if (v15 < *v8 || v33 >= v15 && v17 < *(a2 - 8))
      {
        k = v7;
        do
        {
          v35 = *(k + 16);
          k += 16;
          v34 = v35;
        }

        while (v15 >= v35 && (v34 < v15 || v17 >= *(k + 8)));
      }

      else
      {
          ;
        }
      }

      m = a2;
      if (k < a2)
      {
        for (m = a2 - 16; v15 < v33 || v33 >= v15 && v17 < *(m + 8); m -= 16)
        {
          v37 = *(m - 16);
          v33 = v37;
        }
      }

      if (k < m)
      {
        v38 = *k;
        v39 = *m;
        do
        {
          *k = v39;
          *m = v38;
          v40 = *(k + 16);
          k += 16;
          v38 = v40;
          v41 = *(k - 8);
          *(k - 8) = *(m + 8);
          *(m + 8) = v41;
          while (v15 >= v38 && (v38 < v15 || v17 >= *(k + 8)))
          {
            v42 = *(k + 16);
            k += 16;
            v38 = v42;
          }

          do
          {
            do
            {
              v43 = *(m - 16);
              m -= 16;
              v39 = v43;
            }

            while (v15 < v43);
          }

          while (v39 >= v15 && v17 < *(m + 8));
        }

        while (k < m);
      }

      if (k - 16 != v7)
      {
        *v7 = *(k - 16);
        *(v7 + 8) = *(k - 8);
      }

      a4 = 0;
      *(k - 16) = v15;
      *(k - 8) = v17;
    }
  }

  v58 = k + 16;
  v60 = k == a2 || v58 == a2;
  if ((a4 & 1) == 0)
  {
    if (v60)
    {
      return result;
    }

    while (1)
    {
      v112 = v7;
      v7 = v58;
      v113 = *(v112 + 16);
      v114 = *v112;
      if (v113 < *v112)
      {
        break;
      }

      if (v114 >= v113)
      {
        v115 = *(v112 + 24);
        if (v115 < *(v112 + 8))
        {
          goto LABEL_200;
        }
      }

LABEL_206:
      v58 = v7 + 16;
      if (v7 + 16 == a2)
      {
        return result;
      }
    }

    v115 = *(v112 + 24);
    do
    {
      do
      {
LABEL_200:
        v116 = v112;
        v117 = v114;
        v118 = *(v112 - 16);
        v112 -= 16;
        v114 = v118;
        *(v112 + 32) = v117;
        *(v112 + 40) = *(v112 + 24);
      }

      while (v113 < v118);
    }

    while (v114 >= v113 && v115 < *(v116 - 8));
    *v116 = v113;
    *(v116 + 8) = v115;
    goto LABEL_206;
  }

  if (v60)
  {
    return result;
  }

  v61 = 0;
  v62 = k;
  while (2)
  {
    v63 = v62;
    v62 = v58;
    v64 = *(v63 + 16);
    v65 = *v63;
    if (v64 >= *v63)
    {
      if (v65 < v64)
      {
        goto LABEL_133;
      }

      v66 = *(v63 + 24);
      v67 = *(v63 + 8);
      if (v66 >= v67)
      {
        goto LABEL_133;
      }
    }

    else
    {
      v66 = *(v63 + 24);
      v67 = *(v63 + 8);
    }

    *(v63 + 16) = v65;
    *(v62 + 8) = v67;
    v68 = k;
    if (v63 == k)
    {
      goto LABEL_132;
    }

    v69 = v61;
    while (2)
    {
      v70 = *(k + v69 - 16);
      if (v64 < v70)
      {
        v71 = *(k + v69 - 8);
        goto LABEL_126;
      }

      if (v70 >= v64)
      {
        v68 = k + v69;
        v71 = *(k + v69 - 8);
        if (v66 >= v71)
        {
          goto LABEL_132;
        }

LABEL_126:
        v63 -= 16;
        v72 = k + v69;
        *v72 = v70;
        *(v72 + 8) = v71;
        v69 -= 16;
        if (!v69)
        {
          v68 = k;
          goto LABEL_132;
        }

        continue;
      }

      break;
    }

    v68 = v63;
LABEL_132:
    *v68 = v64;
    *(v68 + 8) = v66;
LABEL_133:
    v58 = v62 + 16;
    v61 += 16;
    if (v62 + 16 != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_23C5288D0(void *a1, unsigned __int8 *a2, uint64_t a3, char a4, int a5, int a6)
{
  v7 = a2;
  v66 = *MEMORY[0x277D85DE8];
  v9 = *a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v9 = **(v9 + 16);
  }

  v10 = (a1 + *(*a1 - 24));
  v11 = v9 == v10[20] || v9 == v10[19];
  v12 = v10[43];
  if (a5 > 2)
  {
    v13 = 1256;
    if (a6)
    {
      v13 = 1320;
    }

    v14 = 1272;
    if (a6)
    {
      v14 = 1328;
    }

    v16 = 1280;
    if (a6)
    {
      v16 = 1336;
    }

    if (a5 != 4)
    {
      v14 = v16;
    }

    v15 = a5 == 3;
    goto LABEL_23;
  }

  if (a5)
  {
    if (a5 == 1)
    {
      v13 = 1224;
      if (v11)
      {
        v13 = 1232;
      }

      v14 = 1288;
      if (v11)
      {
        v14 = 1296;
      }

      v15 = a6 == 0;
LABEL_23:
      if (!v15)
      {
        v13 = v14;
      }

      goto LABEL_30;
    }

    v17 = a6 == 0;
    v13 = 1248;
    v18 = 1312;
  }

  else
  {
    v17 = a6 == 0;
    v13 = 1240;
    v18 = 1304;
  }

  if (!v17)
  {
    v13 = v18;
  }

LABEL_30:
  v19 = *(v12 + 1635);
  v20 = *(v12 + v13);
  v15 = !v11;
  v21 = 24;
  if (!v15)
  {
    v21 = 20;
  }

  v22 = v10[v21];
  if (v20)
  {
    v23 = strlen(v20);
  }

  else
  {
    v23 = 0;
  }

  v54 = v19 & a4;
  v24 = sub_23C49B938(v10, v20, v23, v10[18], v10[73], v22);
  v25 = *v7;
  if (*v7 && *(v25 + 8) == 18)
  {
    v26 = *(v25 + 32);
    memset(v65, 0, sizeof(v65));
    v27 = v7[16];
    v28 = (a1 + *(*a1 - 24));
    if (v27 < 0x15 || (v27 & 0xFE) == 0x5A)
    {
      sub_23C505D44(v28, v7, v65);
      if (!v26)
      {
LABEL_59:
        result = sub_23C4D9264(v7);
        goto LABEL_60;
      }

      v35 = v65;
      v36 = v26;
      do
      {
        *v35 = sub_23C504FD4((a1 + *(*a1 - 24)), *v35, v9, 1, *(*(a1 + *(*a1 - 24) + 344) + 1640));
        ++v35;
        --v36;
      }

      while (v36);
    }

    else
    {
      v7 = sub_23C504FD4(v28, v7, v9, 1, *(v28[43] + 1640));
      sub_23C505D44(a1 + *(*a1 - 24), v7, v65);
    }

    if (v26)
    {
      v53 = v7;
      v37 = 0;
      v38 = a1 + 1;
      v39 = a1 + 73;
      do
      {
        v40 = *(v65 + v37);
        v41 = a1 + *(*a1 - 24);
        v42 = v54 ^ 1;
        if (v9 != *(v41 + 19))
        {
          v42 = 1;
        }

        if ((v42 & 1) == 0)
        {
          v43 = v39;
          v44 = v24;
          v45 = v9;
          v46 = v26;
          v47 = *(v41 + 43);
          v61 = *(v41 + 56);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v62, (v41 + 8));
          v63 = *(v41 + 26);
          v40 = (*(*v47 + 128))(v47, &v61, v40);
          if (v62)
          {
            llvm::MetadataTracking::untrack();
          }

          v26 = v46;
          v9 = v45;
          v24 = v44;
          v39 = v43;
        }

        v48 = *(v39 + *(*a1 - 24));
        v49 = llvm::ConstantInt::get();
        v50 = *(*a1 - 24);
        v60 = 257;
        v64[0] = sub_23C49A474(v38 + v50, a3, v49, v59);
        v64[1] = v40;
        v51 = *(*a1 - 24);
        v60 = 257;
        sub_23C497A7C(v38 + v51, *(v24 + 24), v24, v64, 2, v59);
        ++v37;
      }

      while (v26 != v37);
      v7 = v53;
    }

    goto LABEL_59;
  }

  v29 = sub_23C504FD4((a1 + *(*a1 - 24)), v7, v9, 1, *(*(a1 + *(*a1 - 24) + 344) + 1640));
  v30 = a1 + *(*a1 - 24);
  v31 = v54 ^ 1;
  if (v9 != *(v30 + 19))
  {
    v31 = 1;
  }

  if ((v31 & 1) == 0)
  {
    v32 = *(v30 + 43);
    v56 = *(v30 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v57, (v30 + 8));
    v58 = *(v30 + 26);
    v29 = (*(*v32 + 128))(v32, &v56, v29);
    if (v57)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  *&v65[0] = a3;
  *(&v65[0] + 1) = v29;
  v33 = a1 + *(*a1 - 24);
  v60 = 257;
  result = sub_23C497A7C((v33 + 8), *(v24 + 24), v24, v65, 2, v59);
LABEL_60:
  v52 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C528E20(void *a1)
{
  v2 = llvm::User::operator new(0x58);
  v3 = (a1 + *(*a1 - 24));
  v4 = v3[40];
  v5 = v3[24];
  v10 = "agc.layered_vrr_enabled";
  v11 = 259;
  v9 = *(v3[43] + 836) | 0x100000000;
  v6 = llvm::GlobalVariable::GlobalVariable();
  *(v6 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  sub_23C506A1C((a1 + *(*a1 - 24)));
  v7 = (a1 + *(*a1 - 24));
  v11 = 257;
  return sub_23C497C88(v7 + 1, **(*v2 + 16), v2, 0, &v10);
}

uint64_t sub_23C528F40(uint64_t result)
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
    v3 = *result + 48 * v1;
    result = *result + 8;
    do
    {
      v4 = sub_23C4EDBD4(result, (LODWORD(v7[0]) >> 1) & 3, v7);
      *(v4 - 1) = &unk_284F28A78;
      *(v4 + 3) = v9;
      v5 = v4 + 40;
      result = v4 + 48;
      v2 += 48;
    }

    while (v5 != v3);
    if (v8 != -8192 && v8 != -4096 && v8 != 0)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v7);
    }
  }

  return result;
}

void *sub_23C529020(uint64_t a1, uint64_t a2)
{
  sub_23C4EDC2C(&v7, a2);
  v7 = &unk_284F28A78;
  v10 = a1;
  v11 = 0;
  v3 = sub_23C4FB49C(*a1, *(a1 + 16), v9, &v11);
  v4 = v11;
  if ((v3 & 1) == 0)
  {
    v4 = sub_23C529340(a1, &v7, v11);
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

uint64_t sub_23C5290E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  sub_23C4EDBD4(v12, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v14 = v4;
  v19 = 0;
  result = sub_23C4FB49C(*v4, v4[2].i32[0], v13, &v19);
  if (result)
  {
    v6 = v19;
  }

  else
  {
    v6 = (*v4 + 48 * v4[2].u32[0]);
  }

  v7 = v14;
  if ((*v14 + 48 * v14[2].u32[0]) != v6)
  {
    v8 = v6[5];
    v20[0] = 2;
    v20[1] = 0;
    v21 = -8192;
    v22 = 0;
    v19 = &unk_284F28A78;
    sub_23C4DDEAC((v6 + 1), v20);
    v9 = v21;
    v6[4] = v22;
    if (v9 != -8192 && v9 != -4096 && v9)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v20);
    }

    v7[1] = vadd_s32(v7[1], 0x1FFFFFFFFLL);
    v10 = v14;
    sub_23C4EDC2C(&v15, a2);
    v15 = &unk_284F28A78;
    v18 = v10;
    sub_23C4EDBD4(v20, (LODWORD(v16[0]) >> 1) & 3, v16);
    v19 = &unk_284F28A78;
    v22 = v18;
    v23 = v8;
    v24 = 0;
    result = sub_23C4FB49C(*v10, *(v10 + 16), v21, &v24);
    if ((result & 1) == 0)
    {
      v11 = sub_23C529340(v10, &v19, v24);
      result = sub_23C4DDEAC((v11 + 1), v20);
      v11[4] = v22;
      v11[5] = v23;
    }

    if (v21 != -8192 && v21 != -4096 && v21)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v20);
    }

    if (v17 != -8192 && v17 != -4096 && v17)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v16);
    }
  }

  if (v13 != -8192 && v13 != -4096)
  {
    if (v13)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v12);
    }
  }

  return result;
}

uint64_t sub_23C529340(uint64_t a1, uint64_t a2, uint64_t a3)
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

  sub_23C5293F4(a1, v6);
  v8 = 0;
  sub_23C4FB49C(*a1, *(a1 + 16), *(a2 + 24), &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*(a3 + 24) != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t sub_23C5293F4(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  *a1 = MEMORY[0x23EED4160](v8, 48 * v8, 8);
  if (v4)
  {
    sub_23C528F40(a1);
    v21[0] = 2;
    v21[1] = 0;
    v22 = -4096;
    v23 = 0;
    v19 = 0;
    v20 = &unk_284F28A78;
    v17[0] = 2;
    v17[1] = 0;
    v18 = -8192;
    v9 = 3 * v3;
    if (v3)
    {
      v10 = (v4 + 24);
      v11 = 16 * v9;
      do
      {
        v12 = *v10;
        if (*v10 != v22 && v12 != v18)
        {
          v24 = 0;
          sub_23C4FB49C(*a1, *(a1 + 16), v12, &v24);
          v14 = v24;
          sub_23C4DDEAC((v24 + 8), v10 - 2);
          *(v14 + 32) = v10[1];
          *(v14 + 40) = v10[2];
          ++*(a1 + 8);
          v12 = *v10;
        }

        if (v12 != -8192 && v12 != -4096 && v12 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList((v10 - 2));
        }

        v10 += 6;
        v11 -= 48;
      }

      while (v11);
      if (v18 != -8192 && v18 != -4096 && v18)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v17);
      }
    }

    if (v22 != -8192 && v22 != -4096 && v22)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v21);
    }

    return llvm::deallocate_buffer(v4, (16 * v9));
  }

  else
  {

    return sub_23C528F40(a1);
  }
}

uint64_t sub_23C529608(uint64_t a1)
{
  v1 = a1 + 8;
  sub_23C4EDBD4(v7, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v9 = v2;
  v10 = 0;
  result = sub_23C4FB49C(*v2, *(v2 + 16), v8, &v10);
  if (result)
  {
    v4 = v10;
    v11[0] = 2;
    v11[1] = 0;
    v12 = -8192;
    v13 = 0;
    v10 = &unk_284F28A78;
    result = sub_23C4DDEAC((v4 + 1), v11);
    v5 = v12;
    v4[4] = v13;
    if (v5 != -8192 && v5 != -4096 && v5)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v11);
    }

    *(v2 + 8) = vadd_s32(*(v2 + 8), 0x1FFFFFFFFLL);
  }

  if (v8 != -8192 && v8 != -4096 && v8 != 0)
  {
    return llvm::ValueHandleBase::RemoveFromUseList(v7);
  }

  return result;
}

uint64_t sub_23C529724(void *a1)
{
  v2 = llvm::User::operator new(0x58);
  v3 = (a1 + *(*a1 - 24));
  v4 = v3[40];
  v5 = v3[24];
  v10 = "agc.amp.mask";
  v11 = 259;
  v9 = *(v3[43] + 836) | 0x100000000;
  v6 = llvm::GlobalVariable::GlobalVariable();
  *(v6 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  sub_23C506A1C((a1 + *(*a1 - 24)));
  v7 = (a1 + *(*a1 - 24));
  v11 = 257;
  return sub_23C497C88(v7 + 1, **(*v2 + 16), v2, 0, &v10);
}

unsigned int *sub_23C529844(unsigned int *result, unsigned int *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *result;
  if (*a2 < *result || v4 >= v3 && *(a2 + 1) < *(result + 1))
  {
    v5 = *a3;
    if (*a3 < v3)
    {
      v6 = *(a3 + 1);
LABEL_4:
      *result = v5;
      *a3 = v4;
      v7 = *(result + 1);
      *(result + 1) = v6;
      *(a3 + 1) = v7;
      return result;
    }

    if (v3 >= v5)
    {
      v6 = *(a3 + 1);
      v15 = *(a2 + 1);
      if (v6 < v15)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v15 = *(a2 + 1);
    }

    *result = v3;
    *a2 = v4;
    v16 = *(result + 1);
    *(result + 1) = v15;
    *(a2 + 1) = v16;
    v17 = *a3;
    if (*a3 >= v4)
    {
      if (v4 < v17)
      {
        return result;
      }

      v18 = *(a3 + 1);
      if (v18 >= v16)
      {
        return result;
      }
    }

    else
    {
      v18 = *(a3 + 1);
    }

    *a2 = v17;
    *a3 = v4;
    *(a2 + 1) = v18;
    *(a3 + 1) = v16;
    return result;
  }

  v8 = *a3;
  if (*a3 >= v3)
  {
    if (v3 < v8)
    {
      return result;
    }

    v10 = *(a3 + 1);
    v9 = *(a2 + 1);
    if (v10 >= v9)
    {
      return result;
    }
  }

  else
  {
    v9 = *(a2 + 1);
    v10 = *(a3 + 1);
  }

  *a2 = v8;
  *a3 = v3;
  *(a2 + 1) = v10;
  *(a3 + 1) = v9;
  v11 = *a2;
  v12 = *result;
  if (*a2 < *result)
  {
    v13 = *(result + 1);
    v14 = *(a2 + 1);
LABEL_11:
    *result = v11;
    *a2 = v12;
    *(result + 1) = v14;
    *(a2 + 1) = v13;
    return result;
  }

  if (v12 >= v11)
  {
    v14 = *(a2 + 1);
    v13 = *(result + 1);
    if (v14 < v13)
    {
      goto LABEL_11;
    }
  }

  return result;
}

unsigned int *sub_23C52998C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  result = sub_23C529844(a1, a2, a3);
  v11 = *a4;
  v12 = *a3;
  if (*a4 >= *a3)
  {
    if (v12 < v11)
    {
      goto LABEL_16;
    }

    v14 = *(a4 + 8);
    v13 = *(a3 + 8);
    if (v14 >= v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = *(a3 + 8);
    v14 = *(a4 + 8);
  }

  *a3 = v11;
  *a4 = v12;
  *(a3 + 8) = v14;
  *(a4 + 8) = v13;
  v15 = *a3;
  v16 = *a2;
  if (*a3 >= *a2)
  {
    if (v16 < v15)
    {
      goto LABEL_16;
    }

    v18 = *(a3 + 8);
    v17 = *(a2 + 8);
    if (v18 >= v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = *(a2 + 8);
    v18 = *(a3 + 8);
  }

  *a2 = v15;
  *a3 = v16;
  *(a2 + 8) = v18;
  *(a3 + 8) = v17;
  v19 = *a2;
  v20 = *a1;
  if (*a2 < *a1)
  {
    v21 = *(a1 + 8);
    v22 = *(a2 + 8);
LABEL_7:
    *a1 = v19;
    *a2 = v20;
    *(a1 + 8) = v22;
    *(a2 + 8) = v21;
    goto LABEL_16;
  }

  if (v20 >= v19)
  {
    v22 = *(a2 + 8);
    v21 = *(a1 + 8);
    if (v22 < v21)
    {
      goto LABEL_7;
    }
  }

LABEL_16:
  v23 = *a5;
  v24 = *a4;
  if (*a5 >= *a4)
  {
    if (v24 < v23)
    {
      return result;
    }

    v26 = *(a5 + 1);
    v25 = *(a4 + 8);
    if (v26 >= v25)
    {
      return result;
    }
  }

  else
  {
    v25 = *(a4 + 8);
    v26 = *(a5 + 1);
  }

  *a4 = v23;
  *a5 = v24;
  *(a4 + 8) = v26;
  *(a5 + 1) = v25;
  v27 = *a4;
  v28 = *a3;
  if (*a4 >= *a3)
  {
    if (v28 < v27)
    {
      return result;
    }

    v30 = *(a4 + 8);
    v29 = *(a3 + 8);
    if (v30 >= v29)
    {
      return result;
    }
  }

  else
  {
    v29 = *(a3 + 8);
    v30 = *(a4 + 8);
  }

  *a3 = v27;
  *a4 = v28;
  *(a3 + 8) = v30;
  *(a4 + 8) = v29;
  v31 = *a3;
  v32 = *a2;
  if (*a3 >= *a2)
  {
    if (v32 < v31)
    {
      return result;
    }

    v34 = *(a3 + 8);
    v33 = *(a2 + 8);
    if (v34 >= v33)
    {
      return result;
    }
  }

  else
  {
    v33 = *(a2 + 8);
    v34 = *(a3 + 8);
  }

  *a2 = v31;
  *a3 = v32;
  *(a2 + 8) = v34;
  *(a3 + 8) = v33;
  v35 = *a2;
  v36 = *a1;
  if (*a2 < *a1)
  {
    v37 = *(a1 + 8);
    v38 = *(a2 + 8);
LABEL_24:
    *a1 = v35;
    *a2 = v36;
    *(a1 + 8) = v38;
    *(a2 + 8) = v37;
    return result;
  }

  if (v36 >= v35)
  {
    v38 = *(a2 + 8);
    v37 = *(a1 + 8);
    if (v38 < v37)
    {
      goto LABEL_24;
    }
  }

  return result;
}

BOOL sub_23C529BAC(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_23C529844(a1, (a1 + 16), (a2 - 16));
        return 1;
      case 4:
        sub_23C529844(a1, (a1 + 16), (a1 + 32));
        v22 = *(a2 - 16);
        v23 = *(a1 + 32);
        if (v22 >= v23)
        {
          if (v23 < v22)
          {
            return 1;
          }

          v25 = *(a2 - 8);
          v24 = *(a1 + 40);
          if (v25 >= v24)
          {
            return 1;
          }
        }

        else
        {
          v24 = *(a1 + 40);
          v25 = *(a2 - 8);
        }

        *(a1 + 32) = v22;
        *(a2 - 16) = v23;
        *(a1 + 40) = v25;
        *(a2 - 8) = v24;
        v26 = *(a1 + 32);
        v27 = *(a1 + 16);
        if (v26 >= v27)
        {
          if (v27 < v26)
          {
            return 1;
          }

          v29 = *(a1 + 40);
          v28 = *(a1 + 24);
          if (v29 >= v28)
          {
            return 1;
          }
        }

        else
        {
          v28 = *(a1 + 24);
          v29 = *(a1 + 40);
        }

        *(a1 + 16) = v26;
        *(a1 + 32) = v27;
        *(a1 + 24) = v29;
        *(a1 + 40) = v28;
        v30 = *a1;
        if (v26 >= *a1)
        {
          if (v30 < v26)
          {
            return 1;
          }

          v31 = *(a1 + 8);
          if (v29 >= v31)
          {
            return 1;
          }
        }

        else
        {
          v31 = *(a1 + 8);
        }

        *a1 = v26;
        *(a1 + 16) = v30;
        *(a1 + 8) = v29;
        result = 1;
        *(a1 + 24) = v31;
        return result;
      case 5:
        sub_23C52998C(a1, a1 + 16, a1 + 32, a1 + 48, (a2 - 16));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 16);
      v6 = *a1;
      if (v5 < *a1)
      {
        v7 = *(a1 + 8);
        v8 = *(a2 - 8);
LABEL_6:
        *a1 = v5;
        *(a2 - 16) = v6;
        *(a1 + 8) = v8;
        result = 1;
        *(a2 - 8) = v7;
        return result;
      }

      if (v6 >= v5)
      {
        v8 = *(a2 - 8);
        v7 = *(a1 + 8);
        if (v8 < v7)
        {
          goto LABEL_6;
        }
      }

      return 1;
    }
  }

  v10 = a1 + 32;
  sub_23C529844(a1, (a1 + 16), (a1 + 32));
  v11 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (2)
  {
    v14 = *v11;
    v15 = *v10;
    if (*v11 >= *v10)
    {
      if (v15 < v14)
      {
        goto LABEL_28;
      }

      v16 = *(v11 + 8);
      v17 = *(v10 + 8);
      if (v16 >= v17)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = *(v11 + 8);
      v17 = *(v10 + 8);
    }

    *v11 = v15;
    *(v11 + 8) = v17;
    v18 = v12;
    while (1)
    {
      v19 = a1 + v18;
      v20 = *(a1 + v18 + 16);
      if (v14 >= v20)
      {
        break;
      }

      v21 = *(v19 + 24);
LABEL_21:
      v10 -= 16;
      *(v19 + 32) = v20;
      *(a1 + v18 + 40) = v21;
      v18 -= 16;
      if (v18 == -32)
      {
        v10 = a1;
        goto LABEL_27;
      }
    }

    if (v20 >= v14)
    {
      v21 = *(a1 + v18 + 24);
      if (v16 >= v21)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }

    v10 = a1 + v18 + 32;
LABEL_27:
    *v10 = v14;
    *(v10 + 8) = v16;
    if (++v13 != 8)
    {
LABEL_28:
      v10 = v11;
      v12 += 16;
      v11 += 16;
      if (v11 == a2)
      {
        return 1;
      }

      continue;
    }

    return v11 + 16 == a2;
  }
}

uint64_t sub_23C529E64(uint64_t a1)
{
  v2 = *(*(a1 + 160) + 80);
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
  v6 = *(a1 + 160);
  if (*(v6 + 18))
  {
    llvm::Function::BuildLazyArguments(*(a1 + 160));
    v8 = *(a1 + 160);
    v7 = *(v6 + 88);
    if (*(v8 + 18))
    {
      llvm::Function::BuildLazyArguments(*(a1 + 160));
    }

    v6 = v8;
  }

  else
  {
    v7 = *(v6 + 88);
  }

  for (i = *(v6 + 88) + 40 * *(v6 + 96); v7 != i; v7 += 40)
  {
    v10 = *(*(a1 + 72) + 8 * *(v7 + 32));
    if (*(v7 + 8))
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11 && sub_23C4A57A0(*(v10 - 8 * *(v10 + 8) + 8), "air.vertex_transform_feedback"))
    {
      v15 = 0;
      v14 = 0;
      LODWORD(v13) = 3;
      sub_23C506AF0(0, v10, &v13, &v15 + 1);
      LODWORD(v13) = 5;
      sub_23C506AF0(0, v10, &v13, &v15);
      LODWORD(v13) = 7;
      sub_23C506AF0(0, v10, &v13, &v14);
      operator new();
    }
  }

  return 1;
}

uint64_t sub_23C52A428(uint64_t a1)
{
  v18[16] = *MEMORY[0x277D85DE8];
  v2 = sub_23C4FDCE0(a1);
  if (v2)
  {
    v3 = *(a1 + *(*a1 - 24) + 320);
    Function = llvm::Module::getFunction();
    if (Function)
    {
      v5 = Function;
      v17[0] = v18;
      v17[1] = 0x1000000000;
      v6 = *(a1 + 152);
      if (*(v6 + 18))
      {
        llvm::Function::BuildLazyArguments(*(a1 + 152));
        v8 = *(a1 + 152);
        v7 = *(v6 + 11);
        if (*(v8 + 9))
        {
          llvm::Function::BuildLazyArguments(v8);
        }

        v6 = v8;
      }

      else
      {
        v7 = *(v6 + 11);
      }

      v9 = *(v6 + 11) + 40 * *(v6 + 12);
      while (v7 != v9)
      {
        sub_23C49B500(v17, v7);
        v7 += 40;
      }

      v10 = *(v5 + 1);
      while (v10)
      {
        v11 = *(v10 + 24);
        v12 = *(v11 - 4 * (*(v11 + 5) & 0x7FFFFFF));
        v13 = (v12 + 24);
        if (*(v12 + 32) >= 0x41u)
        {
          v13 = *v13;
        }

        v10 = *(v10 + 8);
        v14 = *(v17[0] + *v13);
        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v11);
      }

      llvm::Function::eraseFromParent(v5);
      if (v17[0] != v18)
      {
        free(v17[0]);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_23C52A5BC(uint64_t a1)
{
  if (*(a1 + 3088))
  {
    v1 = a1 + *(*a1 - 24);
    operator new();
  }

  v2 = *(a1 + *(*a1 - 24) + 144);
  return llvm::FunctionType::get();
}

llvm::Value *sub_23C52A6F8(llvm::Value *result)
{
  v1 = result + *(*result - 24);
  v2 = *(v1 + 344);
  if (*(v2 + 1264))
  {
    v3 = result;
    v4 = strlen(*(v2 + 1264));
    v5 = *(v1 + 144);
    v6 = sub_23C4A0414(v1);
    v7 = v3 + *(*v3 - 24);
    v9 = 257;
    return sub_23C497A7C((v7 + 8), **(*v6 + 16), v6, 0, 0, v8);
  }

  return result;
}

uint64_t sub_23C52A7B4(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + *(*a1 - 24) + 344) + 1654))
  {
    if (*(a1 + 3256))
    {
      sub_23C4B1830(1uLL);
    }
  }

  else if (*(a1 + 3256))
  {
    v2 = 0;
    do
    {
      v3 = *(a1 + 3192 + 8 * v2);
      v4 = *v3;
      if (*v3)
      {
        v5 = *(v3 + 8);
        v6 = *v5;
        if (v4 <= 1)
        {
          i = 1;
        }

        else
        {
          for (i = 1; i != v4; ++i)
          {
            if (v6 + i != v5[i])
            {
              goto LABEL_13;
            }
          }

          i = *v3;
        }

LABEL_13:
        v8 = a1 + *(*a1 - 24);
        *(v8 + 774) = 1;
        v9 = *(v8 + 744);
        v10 = *(v8 + 736) - *(v8 + 752);
        sub_23C4B0A04((v8 + 704), 4, i);
        sub_23C4B0A04((v8 + 704), 6, v6);
        sub_23C4B0A04((v8 + 704), 8, v2);
        sub_23C4B0A04((v8 + 704), 10, 0);
        sub_23C4B03D4(v8 + 704, v10 + v9);
        operator new();
      }

      ++v2;
    }

    while (v2 < *(a1 + 3256));
  }

  v11 = *(a1 + 2992);
  __p = 0;
  v39 = 0u;
  v40[0] = v41;
  v40[1] = 0x800000000;
  v41[64] = 0x1FFFFFFFFLL;
  v42 = v11;
  v46[7] = 0;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  memset(v46, 0, 26);
  v47 = 1;
  if (*(a1 + 2464))
  {
    v12 = *(a1 + 2456);
    do
    {
      sub_23C52B5AC(&__p, v12);
      v12 += 64;
    }

    while (v12 < *(a1 + 2456) + (*(a1 + 2464) << 6));
  }

  sub_23C52B97C(&__p, *(a1 + *(*a1 - 24) + 344));
  sub_23C52BCD4(&__p, a1 + *(*a1 - 24) + 704);
  if (v39 == __p)
  {
    v13 = &unk_27E1F74FC;
  }

  else
  {
    v13 = __p;
  }

  v35 = sub_23C4B5EC0(a1 + *(*a1 - 24) + 704, v13, (v39 - __p) >> 2);
  v14 = a1 + *(*a1 - 24);
  *(v14 + 774) = 1;
  sub_23C4B0AD0(v14 + 704, 0, 4uLL);
  sub_23C4B0AD0(v14 + 704, 0, 4uLL);
  *(v14 + 774) = 0;
  v15 = sub_23C4B0A6C(v14 + 704, 0);
  v34 = sub_23C4B17AC(a1 + *(*a1 - 24) + 704, &unk_27E1F7578, 0);
  v16 = a1 + *(*a1 - 24);
  *(v16 + 774) = 1;
  v17 = *(v16 + 744);
  v18 = *(v16 + 736) - *(v16 + 752);
  sub_23C4B0A04((v16 + 704), 4, SDWORD1(v45));
  sub_23C4B0A04((v16 + 704), 6, SDWORD2(v45));
  sub_23C4B0A04((v16 + 704), 8, *(a1 + 3092) + *(a1 + 3096) + HIDWORD(v45));
  sub_23C4B0A04((v16 + 704), 10, SDWORD2(v44));
  sub_23C4B0A04((v16 + 704), 12, SHIDWORD(v44));
  sub_23C4B0A04((v16 + 704), 14, v45);
  v19 = sub_23C4B03D4(v16 + 704, v18 + v17);
  v20 = a1 + *(*a1 - 24);
  *(v20 + 774) = 1;
  v21 = *(v20 + 744);
  v22 = *(v20 + 736) - *(v20 + 752);
  sub_23C4B0A04((v20 + 704), 4, v46[3]);
  sub_23C4B0A04((v20 + 704), 6, v46[4]);
  sub_23C4B0A04((v20 + 704), 8, v46[5]);
  sub_23C4B0A04((v20 + 704), 10, v46[0]);
  sub_23C4B0A04((v20 + 704), 12, v46[1]);
  sub_23C4B0A04((v20 + 704), 14, v46[2]);
  v23 = sub_23C4B03D4(v20 + 704, v22 + v21);
  v24 = (*(*a1 + 376))(a1);
  v25 = a1 + *(*a1 - 24);
  *(v25 + 774) = 1;
  v26 = *(v25 + 736);
  v27 = *(v25 + 752);
  v28 = *(v25 + 744);
  sub_23C4B5F88((v25 + 704), v24);
  sub_23C4B2DFC((v25 + 704), 6, v47);
  sub_23C4B2DFC((v25 + 704), 8, *(a1 + 3100));
  sub_23C4B0A04((v25 + 704), 10, *(a1 + 3104));
  sub_23C4B0A04((v25 + 704), 12, *(a1 + 3108));
  sub_23C4B0A04((v25 + 704), 14, *(a1 + 3112));
  sub_23C4B02B4((v25 + 704), 16, v19);
  sub_23C4B02B4((v25 + 704), 18, v23);
  sub_23C4B2DFC((v25 + 704), 20, LOBYTE(v46[6]));
  sub_23C4B02B4((v25 + 704), 22, v35);
  if (v15)
  {
    sub_23C4B08D8(v25 + 704, 4uLL);
    sub_23C4B0A04((v25 + 704), 24, *(v25 + 736) - *(v25 + 752) + *(v25 + 744) - v15 + 4);
  }

  v29 = v26 - v27;
  v30 = *(a1 + 3256);
  if (v30)
  {
    sub_23C4B0A04((v25 + 704), 26, v30);
    if (*(*(a1 + *(*a1 - 24) + 344) + 1654) == 1)
    {
      sub_23C4B02B4((v25 + 704), 28, v34);
    }
  }

  v31 = sub_23C4B03D4(v25 + 704, v29 + v28);
  v37 = &v43;
  sub_23C4B6058(&v37);
  sub_23C4B60E4(v40);
  if (__p)
  {
    *&v39 = __p;
    operator delete(__p);
  }

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

uint64_t sub_23C52B05C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = sub_23C52DD68(a1, a2 + 1, a3, "air.vertex", a4, a5);
  v9 = *a2;
  *v8 = *a2;
  *(a1 + *(v9 - 24)) = a2[5];
  v10 = *a1;
  LOBYTE(v9) = *(*(a1 + *(*a1 - 24) + 344) + 1686);
  *(a1 + 2432) = 0;
  *(a1 + 2440) = 0u;
  *(a1 + 2456) = a1 + 2472;
  *(a1 + 2464) = 0x800000000;
  *(a1 + 2984) = 0xFFFFFFFFLL;
  *(a1 + 2992) = v9;
  *(a1 + 3076) = 0;
  *(a1 + 3000) = 0u;
  *(a1 + 3016) = 0u;
  *(a1 + 3032) = 0u;
  *(a1 + 3048) = 0u;
  *(a1 + 3058) = 0u;
  *(a1 + 3080) = 1;
  *(a1 + 3088) = 0;
  *(a1 + 3096) = 0;
  *(a1 + 3101) = 0;
  *(a1 + 3124) = 0;
  v11 = *(a1 + *(v10 - 24) + 584);
  *(a1 + 3128) = llvm::ConstantInt::get();
  v12 = *(a1 + *(*a1 - 24) + 584);
  *(a1 + 3136) = llvm::ConstantInt::get();
  *(a1 + 3144) = 0;
  *(a1 + 3146) = 0;
  *(a1 + 3148) = 1;
  *(a1 + 3156) = 0;
  *(a1 + 3160) = 0;
  *(a1 + 3244) = 0u;
  *(a1 + 3232) = 0u;
  *(a1 + 3216) = 0u;
  *(a1 + 3200) = 0u;
  *(a1 + 3184) = 0u;
  *(a1 + 3168) = 0u;
  *(a1 + 3260) = -1;
  *(a1 + 3264) = 0;
  v13 = *(a1 + *(*a1 - 24) + 584);
  *(a1 + 3272) = llvm::ConstantInt::get();
  v14 = *(a1 + *(*a1 - 24) + 584);
  *(a1 + 3280) = llvm::ConstantInt::get();
  v15 = a3 + 168;
  v16 = *(a3 + 191);
  if (v16 < 0)
  {
    if (*(a3 + 176) != 20)
    {
LABEL_15:
      v22 = 0;
      goto LABEL_16;
    }

    v15 = *v15;
  }

  else if (v16 != 20)
  {
    goto LABEL_15;
  }

  v17 = *v15;
  v18 = *(v15 + 8);
  v19 = *(v15 + 16);
  v22 = v17 == 0x535F786574726556 && v18 == 0x6F72505F65746174 && v19 == 1835102823;
LABEL_16:
  *(a1 + 3124) = v22;
  return a1;
}

uint64_t sub_23C52B334(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[5];
  for (i = 3192; i != 3224; i += 8)
  {
    v6 = *(a1 + i);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (v7)
      {
        MEMORY[0x23EED50A0](v7, 0x1000C8052888210);
      }

      MEMORY[0x23EED50C0](v6, 0x1010C4082113244);
    }
  }

  v8 = *(a1 + 3168);
  if (v8)
  {
    v9 = *(a1 + 3176);
    v10 = *(a1 + 3168);
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 8);
        if (v11 != -8192 && v11 != -4096 && v11 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList((v9 - 24));
        }

        v9 -= 32;
      }

      while (v9 != v8);
      v10 = *(a1 + 3168);
    }

    *(a1 + 3176) = v8;
    operator delete(v10);
  }

  v15 = (a1 + 3000);
  sub_23C4B6058(&v15);
  sub_23C4B60E4(a1 + 2456);
  v13 = *(a1 + 2432);
  if (v13)
  {
    *(a1 + 2440) = v13;
    operator delete(v13);
  }

  return sub_23C4FF150(a1, a2 + 2);
}

llvm::Value *sub_23C52B4D8(void *a1)
{
  v2 = sub_23C49EB10(a1 + *(*a1 - 24), "agc.read_vi.f32", 15, *(a1 + *(*a1 - 24) + 160), *(a1 + *(*a1 - 24) + 192));
  v3 = a1 + *(*a1 - 24);
  v4 = *(v3 + 24);
  v7 = llvm::ConstantInt::get();
  v6[16] = 257;
  return sub_23C497A7C((v3 + 8), *(v2 + 24), v2, &v7, 1, v6);
}

void sub_23C52B5AC(uint64_t a1, unint64_t a2)
{
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(a1 + 641);
    v8 = *(a1 + 556);
    v9 = *(a1 + 24);
    while (1)
    {
      v10 = v9 + (v6 >> 1 << 6);
      if (v7)
      {
        __dst[0] = 0;
        __dst[1] = 0;
        v56 = 0;
        __p[0] = 0;
        __p[1] = 0;
        v54 = 0;
        if (!v8)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (*(v10 + 47) < 0)
        {
          sub_23C49F988(__dst, *(v10 + 24), *(v10 + 32));
        }

        else
        {
          v11 = *(v10 + 24);
          v56 = *(v10 + 40);
          *__dst = v11;
        }

        if (*(a2 + 47) < 0)
        {
          sub_23C49F988(__p, *(a2 + 24), *(a2 + 32));
          if (!v8)
          {
LABEL_19:
            v18 = *(v10 + 57);
            v19 = *(a2 + 57);
            if (v18 >= v19)
            {
              if (v19 < v18)
              {
                goto LABEL_22;
              }

              v21 = *(v10 + 56);
              v22 = *(a2 + 56);
              if (v21 >= v22)
              {
                if (v22 < v21)
                {
                  goto LABEL_22;
                }

                v23 = *(v10 + 8);
                v24 = *(a2 + 8);
                if (v23 >= v24)
                {
                  if (v24 >= v23)
                  {
LABEL_38:
                    v52 = v5;
                    if (v56 >= 0)
                    {
                      v25 = HIBYTE(v56);
                    }

                    else
                    {
                      v25 = __dst[1];
                    }

                    if (v56 >= 0)
                    {
                      v26 = __dst;
                    }

                    else
                    {
                      v26 = __dst[0];
                    }

                    if (v54 >= 0)
                    {
                      v27 = HIBYTE(v54);
                    }

                    else
                    {
                      v27 = __p[1];
                    }

                    if (v54 >= 0)
                    {
                      v28 = __p;
                    }

                    else
                    {
                      v28 = __p[0];
                    }

                    if (v27 >= v25)
                    {
                      v29 = v25;
                    }

                    else
                    {
                      v29 = v27;
                    }

                    v50 = v28;
                    v51 = v26;
                    __n = v29;
                    v30 = memcmp(v26, v28, v29);
                    v31 = v25 < v27;
                    if (v30)
                    {
                      v31 = v30 < 0;
                    }

                    if (v31)
                    {
                      v20 = 1;
                    }

                    else
                    {
                      v32 = memcmp(v50, v51, __n);
                      v33 = v27 < v25;
                      if (v32)
                      {
                        v33 = v32 < 0;
                      }

                      v20 = !v33 && *(v10 + 16) < *(a2 + 16);
                    }

                    v5 = v52;
                    goto LABEL_23;
                  }

                  goto LABEL_22;
                }
              }
            }

            goto LABEL_20;
          }
        }

        else
        {
          *__p = *(a2 + 24);
          v54 = *(a2 + 40);
          if (!v8)
          {
            goto LABEL_19;
          }
        }
      }

      v12 = *(v10 + 56);
      v13 = *(a2 + 56);
      if (v12 >= v13)
      {
        if (v13 < v12)
        {
          goto LABEL_22;
        }

        v14 = *(v10 + 8);
        v15 = *(a2 + 8);
        if (v14 >= v15)
        {
          if (v15 < v14)
          {
            goto LABEL_22;
          }

          v16 = *(v10 + 57);
          v17 = *(a2 + 57);
          if (v16 >= v17)
          {
            if (v17 >= v16)
            {
              goto LABEL_38;
            }

LABEL_22:
            v20 = 0;
            goto LABEL_23;
          }
        }
      }

LABEL_20:
      v20 = 1;
LABEL_23:
      if (SHIBYTE(v54) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v56) < 0)
      {
        operator delete(__dst[0]);
      }

      if (v20)
      {
        v6 += ~(v6 >> 1);
      }

      else
      {
        v6 >>= 1;
      }

      if (v20)
      {
        v9 = v10 + 64;
      }

      if (!v6)
      {
        v4 = *(a1 + 24);
        v34 = *(a1 + 32);
        goto LABEL_64;
      }
    }
  }

  v34 = 0;
  v9 = *(a1 + 24);
LABEL_64:
  if (v4 + (v34 << 6) == v9)
  {
    sub_23C4B92A4(v5, a2);
  }

  else
  {
    v35 = v9 - v4;
    v36 = sub_23C4B932C(v5, a2);
    v37 = *(a1 + 24);
    v38 = v37 + v35;
    v39 = v37 + (*(a1 + 32) << 6);
    *(v39 + 16) = *(v39 - 48);
    *v39 = *(v39 - 64);
    *(v39 + 24) = *(v39 - 40);
    *(v39 + 40) = *(v39 - 24);
    *(v39 - 40) = 0;
    *(v39 - 32) = 0;
    *(v39 - 24) = 0;
    *(v39 + 48) = *(v39 - 16);
    v40 = *(a1 + 24);
    v41 = *(a1 + 32);
    v42 = v40 + (v41 << 6) - 64;
    if (v42 != v38)
    {
      do
      {
        *v42 = *(v42 - 64);
        *(v42 + 16) = *(v42 - 48);
        if (*(v42 + 47) < 0)
        {
          operator delete(*(v42 + 24));
        }

        *(v42 + 24) = *(v42 - 40);
        *(v42 + 40) = *(v42 - 24);
        *(v42 - 17) = 0;
        *(v42 - 40) = 0;
        *(v42 + 48) = *(v42 - 16);
        v42 -= 64;
      }

      while (v42 != v38);
      LODWORD(v41) = *(a1 + 32);
      v40 = *(a1 + 24);
    }

    v43 = (v41 + 1);
    *(a1 + 32) = v43;
    v44 = v36 < v40 + (v43 << 6) && v36 >= v38;
    v45 = 64;
    if (!v44)
    {
      v45 = 0;
    }

    v46 = v36 + v45;
    v47 = *v46;
    *(v38 + 16) = *(v46 + 16);
    *v38 = v47;
    std::string::operator=((v38 + 24), (v46 + 24));
    *(v38 + 48) = *(v46 + 48);
  }

  v48 = *(a1 + 552);
  if (v48 <= *(a2 + 16))
  {
    v48 = *(a2 + 16);
  }

  *(a1 + 552) = v48;
  *(a1 + 644) += *a2;
}

void sub_23C52B97C(uint64_t a1, uint64_t a2)
{
  v4 = (*(a1 + 552) + 7);
  v5 = *(a1 + 576);
  v6 = *(a1 + 568);
  v7 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v6) >> 3);
  v8 = v4 - v7;
  if (v4 <= v7)
  {
    if (v4 < v7)
    {
      v11 = v6 + 40 * v4;
      while (v5 != v11)
      {
        if (*(v5 - 1) < 0)
        {
          operator delete(*(v5 - 24));
        }

        v5 -= 40;
      }

      *(a1 + 576) = v11;
    }
  }

  else
  {
    v9 = *(a1 + 584);
    if (0xCCCCCCCCCCCCCCCDLL * ((v9 - v5) >> 3) < v8)
    {
      v10 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v6) >> 3);
      if (2 * v10 > v4)
      {
        v4 = 2 * v10;
      }

      if (v10 >= 0x333333333333333)
      {
        v4 = 0x666666666666666;
      }

      if (v4 <= 0x666666666666666)
      {
        operator new();
      }

      sub_23C496CE8();
    }

    v12 = 40 * ((40 * v8 - 40) / 0x28) + 40;
    bzero(*(a1 + 576), v12);
    *(a1 + 576) = v5 + v12;
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    v16 = *(a2 + 1657);
    v17 = *(a1 + 24);
    v18 = (v17 + 64 * v13);
    v19 = 4;
    do
    {
      data = v17->__r_.__value_.__l.__data_;
      v21 = LODWORD(v17->__r_.__value_.__r.__words[2]) + 6;
      LODWORD(v17[2].__r_.__value_.__l.__data_) = v19;
      v22 = v17[2].__r_.__value_.__s.__data_[8];
      v23 = *(a1 + 568) + 40 * v21;
      *v23 = v22;
      *(v23 + 4) = v15 + 2 * (v14 + v16);
      *(v23 + 8) = 2 * (v14 + v16 + v15);
      v19 += data;
      v24 = LODWORD(v17->__r_.__value_.__r.__words[1]);
      v25 = 604;
      if (v17[2].__r_.__value_.__s.__data_[9])
      {
        v25 = 628;
        v26 = 616;
      }

      else
      {
        v26 = 592;
      }

      v27 = v22 == 0;
      if (v22)
      {
        v28 = v25;
      }

      else
      {
        v28 = v26;
      }

      v29 = a1 + v28;
      if (v27)
      {
        v30 = 0;
      }

      else
      {
        v30 = data;
      }

      v15 += v30;
      if (v27)
      {
        v31 = data;
      }

      else
      {
        v31 = 0;
      }

      v32 = *(v29 + 4 * v24);
      v14 += v31;
      HIDWORD(v17[2].__r_.__value_.__r.__words[0]) = v32;
      *(v29 + 4 * v24) = v32 + data;
      *(v23 + 12) = v24;
      std::string::operator=((v23 + 16), v17 + 1);
      v17 = (v17 + 64);
    }

    while (v17 != v18);
  }
}

uint64_t sub_23C52BC50(_BYTE *a1, char a2, int a3)
{
  v3 = 0;
  if (a2)
  {
    v4 = (a1 + 604);
    v5 = 3;
    do
    {
      v6 = *(v4 - 3);
      v8 = *v4++;
      v7 = v8;
      v9 = (v8 + 1) >> 1;
      if (a1[560])
      {
        v7 = v9;
      }

      LODWORD(v3) = v6 + v3 + v7;
      --v5;
    }

    while (v5);
    v10 = a3 + v3 + a1[648] + 1;
    v11 = v10 & 3;
    if (v10 < 0x11 || v11 == 0)
    {
      v3 = 0;
      v13 = v10 > 0xF;
    }

    else
    {
      v3 = (4 - v11);
      v13 = 1;
    }

    a1[640] = v13;
  }

  return v3;
}

void sub_23C52BCD4(uint64_t a1, uint64_t a2)
{
  v2 = -858993459 * ((*(a1 + 576) - *(a1 + 568)) >> 3);
  if (v2)
  {
    v5 = 0;
    v6 = 40 * v2;
    do
    {
      v7 = *(a1 + 568) + v5;
      v10 = *(v7 + 16);
      v8 = v7 + 16;
      v9 = v10;
      v11 = *(v8 + 23);
      if (v11 >= 0)
      {
        v12 = v8;
      }

      else
      {
        v12 = v9;
      }

      if (v11 >= 0)
      {
        v13 = *(v8 + 23);
      }

      else
      {
        v13 = *(v8 + 8);
      }

      v14 = sub_23C4B023C(a2, v12, v13);
      *(a2 + 70) = 1;
      v15 = *(a2 + 40);
      v16 = *(a2 + 32) - *(a2 + 48);
      sub_23C4B2DFC(a2, 4, *(*(a1 + 568) + v5));
      sub_23C4B0A04(a2, 6, *(*(a1 + 568) + v5 + 4));
      sub_23C4B0A04(a2, 8, *(*(a1 + 568) + v5 + 8));
      sub_23C4B2DFC(a2, 10, *(*(a1 + 568) + v5 + 12));
      sub_23C4B02B4(a2, 12, v14);
      v17 = sub_23C4B03D4(a2, v16 + v15);
      v18 = v17;
      v20 = *(a1 + 8);
      v19 = *(a1 + 16);
      if (v20 >= v19)
      {
        v22 = *a1;
        v23 = v20 - *a1;
        v24 = v23 >> 2;
        v25 = (v23 >> 2) + 1;
        if (v25 >> 62)
        {
          sub_23C496CE8();
        }

        v26 = v19 - v22;
        if (v26 >> 1 > v25)
        {
          v25 = v26 >> 1;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v27 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v25;
        }

        if (v27)
        {
          sub_23C4B1830(v27);
        }

        *(4 * v24) = v18;
        v21 = 4 * v24 + 4;
        memcpy(0, v22, v23);
        v28 = *a1;
        *a1 = 0;
        *(a1 + 8) = v21;
        *(a1 + 16) = 0;
        if (v28)
        {
          operator delete(v28);
        }
      }

      else
      {
        *v20 = v17;
        v21 = (v20 + 1);
      }

      *(a1 + 8) = v21;
      v5 += 40;
    }

    while (v6 != v5);
  }
}

void sub_23C52BEB8(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v334 = *MEMORY[0x277D85DE8];
LABEL_2:
  v303 = a2 - 128;
  v304 = (a2 - 64);
  v302 = a2 - 192;
  v308 = (a2 - 40);
  v310 = a2;
  v7 = a1;
  while (1)
  {
    a1 = v7;
    v8 = (a2 - v7) >> 6;
    v9 = v8 - 2;
    if (v8 <= 2)
    {
      if (v8 < 2)
      {
        goto LABEL_519;
      }

      if (v8 == 2)
      {
        v129 = *(v7 + 47);
        v132 = *(a2 - 40);
        v131 = a2 - 40;
        v130 = v132;
        v133 = *(v131 + 23);
        if (v133 >= 0)
        {
          v134 = *(v131 + 23);
        }

        else
        {
          v134 = *(v131 + 8);
        }

        if (v133 >= 0)
        {
          v135 = v131;
        }

        else
        {
          v135 = v130;
        }

        if (v129 >= 0)
        {
          v136 = *(v7 + 47);
        }

        else
        {
          v136 = *(v7 + 32);
        }

        if (v129 >= 0)
        {
          v137 = (v7 + 24);
        }

        else
        {
          v137 = *(v7 + 24);
        }

        if (v136 >= v134)
        {
          v138 = v134;
        }

        else
        {
          v138 = v136;
        }

        v139 = memcmp(v135, v137, v138);
        v140 = v134 < v136;
        if (v139)
        {
          v140 = v139 < 0;
        }

        if (v140)
        {
          v141 = *MEMORY[0x277D85DE8];

          sub_23C52D334(v7, v304);
          return;
        }

LABEL_519:
        v301 = *MEMORY[0x277D85DE8];
        return;
      }

      goto LABEL_10;
    }

    if (v8 == 3)
    {
      break;
    }

    if (v8 == 4)
    {
      v143 = *MEMORY[0x277D85DE8];

      sub_23C52D634(v7, v7 + 64, v7 + 128, v304);
      return;
    }

    if (v8 == 5)
    {
      v128 = *MEMORY[0x277D85DE8];

      sub_23C52D7EC(v7, v7 + 64, v7 + 128, v7 + 192, v304);
      return;
    }

LABEL_10:
    if (v8 <= 23)
    {
      if (a4)
      {
        if (v7 != a2)
        {
          v144 = v7 + 64;
          if (v7 + 64 != a2)
          {
            v145 = 0;
            v146 = v7;
            do
            {
              v147 = (v146 + 88);
              v148 = v144;
              v149 = *(v146 + 47);
              v150 = *(v146 + 111);
              if (v150 >= 0)
              {
                v151 = *(v146 + 111);
              }

              else
              {
                v151 = *(v146 + 96);
              }

              if (v150 >= 0)
              {
                v152 = (v146 + 88);
              }

              else
              {
                v152 = *(v146 + 88);
              }

              if (v149 >= 0)
              {
                v153 = *(v146 + 47);
              }

              else
              {
                v153 = *(v146 + 32);
              }

              if (v149 >= 0)
              {
                v154 = (v146 + 24);
              }

              else
              {
                v154 = *(v146 + 24);
              }

              if (v153 >= v151)
              {
                v155 = v151;
              }

              else
              {
                v155 = v153;
              }

              v156 = memcmp(v152, v154, v155);
              v157 = v151 < v153;
              if (v156)
              {
                v157 = v156 < 0;
              }

              if (v157)
              {
                v327 = *(v148 + 16);
                v320 = *v148;
                v332 = *(v146 + 104);
                v331 = *v147;
                *v147 = 0;
                *(v146 + 96) = 0;
                *(v146 + 104) = 0;
                v333 = *(v146 + 112);
                if (SHIBYTE(v332) >= 0)
                {
                  v158 = HIBYTE(v332);
                }

                else
                {
                  v158 = *(&v331 + 1);
                }

                if (SHIBYTE(v332) >= 0)
                {
                  v159 = &v331;
                }

                else
                {
                  v159 = v331;
                }

                v160 = v145;
                while (1)
                {
                  v161 = a1 + v160;
                  *(v161 + 64) = *(a1 + v160);
                  *(v161 + 80) = *(a1 + v160 + 16);
                  if (*(a1 + v160 + 111) < 0)
                  {
                    operator delete(*(v161 + 88));
                  }

                  *(v161 + 88) = *(v161 + 24);
                  *(v161 + 104) = *(v161 + 40);
                  *(v161 + 47) = 0;
                  *(v161 + 24) = 0;
                  *(v161 + 112) = *(v161 + 48);
                  if (!v160)
                  {
                    break;
                  }

                  v162 = a1 + v160;
                  v163 = *(a1 + v160 - 17);
                  if (v163 >= 0)
                  {
                    v164 = *(a1 + v160 - 17);
                  }

                  else
                  {
                    v164 = *(a1 + v160 - 32);
                  }

                  if (v163 >= 0)
                  {
                    v165 = (a1 + v160 - 40);
                  }

                  else
                  {
                    v165 = *(a1 + v160 - 40);
                  }

                  if (v164 >= v158)
                  {
                    v166 = v158;
                  }

                  else
                  {
                    v166 = v164;
                  }

                  v167 = memcmp(v159, v165, v166);
                  v168 = v158 < v164;
                  if (v167)
                  {
                    v168 = v167 < 0;
                  }

                  v160 -= 64;
                  if (!v168)
                  {
                    v169 = v162 + 24;
                    v170 = (v162 + 48);
                    v171 = a1 + v160 + 64;
                    goto LABEL_294;
                  }
                }

                v169 = a1 + 24;
                v170 = (a1 + 48);
                v171 = a1;
LABEL_294:
                *(v171 + 16) = v327;
                *v171 = v320;
                if (*(v171 + 47) < 0)
                {
                  operator delete(*v169);
                }

                v172 = v331;
                *(v169 + 16) = v332;
                *v169 = v172;
                *v170 = v333;
              }

              v144 = v148 + 64;
              v145 += 64;
              v146 = v148;
            }

            while (v148 + 64 != v310);
          }
        }
      }

      else if (v7 != a2)
      {
        v277 = v7 + 64;
        if (v7 + 64 != a2)
        {
          v278 = v7 - 40;
          do
          {
            v279 = (a1 + 88);
            v280 = v277;
            v281 = *(a1 + 47);
            v282 = *(a1 + 111);
            if (v282 >= 0)
            {
              v283 = *(a1 + 111);
            }

            else
            {
              v283 = *(a1 + 96);
            }

            if (v282 >= 0)
            {
              v284 = (a1 + 88);
            }

            else
            {
              v284 = *(a1 + 88);
            }

            if (v281 >= 0)
            {
              v285 = *(a1 + 47);
            }

            else
            {
              v285 = *(a1 + 32);
            }

            if (v281 >= 0)
            {
              v286 = (a1 + 24);
            }

            else
            {
              v286 = *(a1 + 24);
            }

            if (v285 >= v283)
            {
              v287 = v283;
            }

            else
            {
              v287 = v285;
            }

            v288 = memcmp(v284, v286, v287);
            v289 = v283 < v285;
            if (v288)
            {
              v289 = v288 < 0;
            }

            if (v289)
            {
              v330 = *(v280 + 16);
              v323 = *v280;
              v332 = *(a1 + 104);
              v331 = *v279;
              *v279 = 0;
              *(a1 + 96) = 0;
              *(a1 + 104) = 0;
              v333 = *(a1 + 112);
              if (SHIBYTE(v332) >= 0)
              {
                v290 = HIBYTE(v332);
              }

              else
              {
                v290 = *(&v331 + 1);
              }

              if (SHIBYTE(v332) >= 0)
              {
                v291 = &v331;
              }

              else
              {
                v291 = v331;
              }

              v292 = v278;
              do
              {
                v293 = v292;
                *(v292 + 13) = *(v292 + 5);
                *(v292 + 30) = *(v292 + 14);
                if (*(v292 + 151) < 0)
                {
                  operator delete(v292[16]);
                }

                *(v293 + 8) = *(v293 + 4);
                v293[18] = v293[10];
                *(v293 + 87) = 0;
                *(v293 + 64) = 0;
                *(v293 + 19) = *(v293 + 11);
                v294 = *(v293 + 23);
                if (v294 >= 0)
                {
                  v295 = *(v293 + 23);
                }

                else
                {
                  v295 = v293[1];
                }

                if (v294 >= 0)
                {
                  v296 = v293;
                }

                else
                {
                  v296 = *v293;
                }

                if (v295 >= v290)
                {
                  v297 = v290;
                }

                else
                {
                  v297 = v295;
                }

                v298 = memcmp(v291, v296, v297);
                v299 = v298 < 0;
                if (!v298)
                {
                  v299 = v290 < v295;
                }

                v292 = v293 - 8;
              }

              while (v299);
              *(v293 + 14) = v330;
              *(v293 + 5) = v323;
              if (*(v293 + 87) < 0)
              {
                operator delete(v293[8]);
              }

              v300 = v331;
              v293[10] = v332;
              *(v293 + 4) = v300;
              *(v293 + 11) = v333;
            }

            v277 = v280 + 64;
            v278 += 64;
            a1 = v280;
          }

          while (v280 + 64 != v310);
        }
      }

      goto LABEL_519;
    }

    if (!a3)
    {
      if (v7 != a2)
      {
        v173 = v9 >> 1;
        v174 = v9 >> 1;
        do
        {
          v175 = v174;
          if (v173 >= v174)
          {
            v176 = (2 * v174) | 1;
            v177 = a1 + (v176 << 6);
            if (2 * v174 + 2 < v8)
            {
              v178 = *(v177 + 111);
              v179 = *(v177 + 47);
              if (v179 >= 0)
              {
                v180 = *(v177 + 47);
              }

              else
              {
                v180 = *(v177 + 32);
              }

              if (v179 >= 0)
              {
                v181 = (v177 + 24);
              }

              else
              {
                v181 = *(v177 + 24);
              }

              if (v178 >= 0)
              {
                v182 = *(v177 + 111);
              }

              else
              {
                v182 = *(v177 + 96);
              }

              if (v178 >= 0)
              {
                v183 = (v177 + 88);
              }

              else
              {
                v183 = *(v177 + 88);
              }

              if (v182 >= v180)
              {
                v184 = v180;
              }

              else
              {
                v184 = v182;
              }

              v185 = memcmp(v181, v183, v184);
              v186 = v180 < v182;
              if (v185)
              {
                v186 = v185 < 0;
              }

              v187 = !v186;
              v188 = 64;
              if (v187)
              {
                v188 = 0;
              }

              v177 += v188;
              if (!v187)
              {
                v176 = 2 * v175 + 2;
              }
            }

            v189 = a1 + (v175 << 6);
            v190 = (v189 + 24);
            v191 = *(v189 + 47);
            v192 = *(v177 + 47);
            if (v192 >= 0)
            {
              v193 = *(v177 + 47);
            }

            else
            {
              v193 = *(v177 + 32);
            }

            if (v192 >= 0)
            {
              v194 = (v177 + 24);
            }

            else
            {
              v194 = *(v177 + 24);
            }

            if (v191 >= 0)
            {
              v195 = *(v189 + 47);
            }

            else
            {
              v195 = *(v189 + 32);
            }

            if (v191 >= 0)
            {
              v196 = (v189 + 24);
            }

            else
            {
              v196 = *(v189 + 24);
            }

            if (v195 >= v193)
            {
              v197 = v193;
            }

            else
            {
              v197 = v195;
            }

            v198 = memcmp(v194, v196, v197);
            v199 = v193 < v195;
            if (v198)
            {
              v199 = v198 < 0;
            }

            if (!v199)
            {
              v328 = *(v189 + 16);
              v321 = *v189;
              v200 = *v190;
              v332 = *(v189 + 40);
              v331 = v200;
              *(v189 + 32) = 0;
              *(v189 + 40) = 0;
              *v190 = 0;
              v333 = *(v189 + 48);
              do
              {
                v201 = v177;
                v202 = *v177;
                *(v189 + 16) = *(v177 + 16);
                *v189 = v202;
                if (*(v189 + 47) < 0)
                {
                  operator delete(*(v189 + 24));
                }

                v203 = *(v177 + 24);
                *(v189 + 40) = *(v177 + 40);
                *(v189 + 24) = v203;
                *(v177 + 47) = 0;
                *(v177 + 24) = 0;
                *(v189 + 48) = *(v177 + 48);
                if (v173 < v176)
                {
                  break;
                }

                v204 = (2 * v176) | 1;
                v177 = a1 + (v204 << 6);
                v205 = 2 * v176 + 2;
                if (v205 < v8)
                {
                  v206 = *(v177 + 111);
                  v207 = *(v177 + 47);
                  if (v207 >= 0)
                  {
                    v208 = *(v177 + 47);
                  }

                  else
                  {
                    v208 = *(v177 + 32);
                  }

                  if (v207 >= 0)
                  {
                    v209 = (v177 + 24);
                  }

                  else
                  {
                    v209 = *(v177 + 24);
                  }

                  if (v206 >= 0)
                  {
                    v210 = *(v177 + 111);
                  }

                  else
                  {
                    v210 = *(v177 + 96);
                  }

                  if (v206 >= 0)
                  {
                    v211 = (v177 + 88);
                  }

                  else
                  {
                    v211 = *(v177 + 88);
                  }

                  if (v210 >= v208)
                  {
                    v212 = v208;
                  }

                  else
                  {
                    v212 = v210;
                  }

                  v213 = memcmp(v209, v211, v212);
                  v214 = v208 < v210;
                  if (v213)
                  {
                    v214 = v213 < 0;
                  }

                  v215 = !v214;
                  v216 = 64;
                  if (v215)
                  {
                    v216 = 0;
                  }

                  v177 += v216;
                  if (!v215)
                  {
                    v204 = v205;
                  }
                }

                v217 = *(v177 + 47);
                if (v217 >= 0)
                {
                  v218 = *(v177 + 47);
                }

                else
                {
                  v218 = *(v177 + 32);
                }

                if (v217 >= 0)
                {
                  v219 = (v177 + 24);
                }

                else
                {
                  v219 = *(v177 + 24);
                }

                if (SHIBYTE(v332) >= 0)
                {
                  v220 = HIBYTE(v332);
                }

                else
                {
                  v220 = *(&v331 + 1);
                }

                if (SHIBYTE(v332) >= 0)
                {
                  v221 = &v331;
                }

                else
                {
                  v221 = v331;
                }

                if (v220 >= v218)
                {
                  v222 = v218;
                }

                else
                {
                  v222 = v220;
                }

                v223 = memcmp(v219, v221, v222);
                v224 = v218 < v220;
                if (v223)
                {
                  v224 = v223 < 0;
                }

                v189 = v201;
                v176 = v204;
              }

              while (!v224);
              *(v201 + 16) = v328;
              *v201 = v321;
              if (*(v201 + 47) < 0)
              {
                operator delete(*(v201 + 24));
              }

              v225 = v331;
              *(v201 + 40) = v332;
              *(v201 + 24) = v225;
              *(v201 + 48) = v333;
            }
          }

          v174 = v175 - 1;
        }

        while (v175);
        v226 = v310;
        do
        {
          v227 = 0;
          v305 = v226;
          v316 = *(a1 + 16);
          v315 = *a1;
          v307 = *(a1 + 24);
          *v313 = *(a1 + 32);
          *&v313[7] = *(a1 + 39);
          v309 = *(a1 + 47);
          *(a1 + 32) = 0;
          *(a1 + 40) = 0;
          *(a1 + 24) = 0;
          v228 = a1;
          v312 = *(a1 + 48);
          do
          {
            v229 = v228 + (v227 << 6);
            v230 = v229 + 64;
            v231 = (2 * v227) | 1;
            v227 = 2 * v227 + 2;
            if (v227 >= v8)
            {
              v227 = v231;
            }

            else
            {
              v234 = *(v229 + 88);
              v233 = v229 + 88;
              v232 = v234;
              v235 = *(v233 + 87);
              v236 = *(v233 + 23);
              if (v236 >= 0)
              {
                v237 = *(v233 + 23);
              }

              else
              {
                v237 = *(v233 + 8);
              }

              if (v236 >= 0)
              {
                v238 = v233;
              }

              else
              {
                v238 = v232;
              }

              if (v235 >= 0)
              {
                v239 = *(v233 + 87);
              }

              else
              {
                v239 = *(v233 + 72);
              }

              if (v235 >= 0)
              {
                v240 = (v233 + 64);
              }

              else
              {
                v240 = *(v233 + 64);
              }

              if (v239 >= v237)
              {
                v241 = v237;
              }

              else
              {
                v241 = v239;
              }

              v242 = memcmp(v238, v240, v241);
              v243 = v237 < v239;
              if (v242)
              {
                v243 = v242 < 0;
              }

              if (v243)
              {
                v230 = v233 + 40;
              }

              else
              {
                v227 = v231;
              }
            }

            v244 = *v230;
            *(v228 + 16) = *(v230 + 16);
            *v228 = v244;
            if (*(v228 + 47) < 0)
            {
              operator delete(*(v228 + 24));
            }

            v245 = *(v230 + 24);
            *(v228 + 40) = *(v230 + 40);
            *(v228 + 24) = v245;
            *(v230 + 47) = 0;
            *(v230 + 24) = 0;
            *(v228 + 48) = *(v230 + 48);
            v228 = v230;
          }

          while (v227 <= ((v8 - 2) >> 1));
          v246 = (v230 + 24);
          v247 = (v305 - 64);
          if (v230 == v305 - 64)
          {
            *(v230 + 16) = v316;
            *v230 = v315;
            if (*(v230 + 47) < 0)
            {
              operator delete(*v246);
            }

            *(v230 + 24) = v307;
            *(v230 + 32) = *v313;
            *(v230 + 39) = *&v313[7];
            *(v230 + 47) = v309;
            *(v230 + 48) = v312;
          }

          else
          {
            v248 = *v247;
            *(v230 + 16) = *(v305 - 48);
            *v230 = v248;
            if (*(v230 + 47) < 0)
            {
              operator delete(*v246);
            }

            v249 = *(v305 - 40);
            *(v230 + 40) = *(v305 - 24);
            *v246 = v249;
            *(v305 - 17) = 0;
            *(v305 - 40) = 0;
            *(v230 + 48) = *(v305 - 16);
            *(v305 - 48) = v316;
            *v247 = v315;
            if (*(v305 - 17) < 0)
            {
              operator delete(*(v305 - 40));
            }

            *(v305 - 40) = v307;
            *(v305 - 25) = *&v313[7];
            *(v305 - 32) = *v313;
            *(v305 - 17) = v309;
            *(v305 - 16) = v312;
            v250 = (v230 + 64 - a1) >> 6;
            v251 = v250 < 2;
            v252 = v250 - 2;
            if (!v251)
            {
              v253 = v252 >> 1;
              v254 = a1 + (v252 >> 1 << 6);
              v255 = *(v230 + 47);
              v256 = *(v254 + 47);
              if (v256 >= 0)
              {
                v257 = *(v254 + 47);
              }

              else
              {
                v257 = *(v254 + 32);
              }

              if (v256 >= 0)
              {
                v258 = (v254 + 24);
              }

              else
              {
                v258 = *(v254 + 24);
              }

              if (v255 >= 0)
              {
                v259 = *(v230 + 47);
              }

              else
              {
                v259 = *(v230 + 32);
              }

              if (v255 >= 0)
              {
                v260 = (v230 + 24);
              }

              else
              {
                v260 = *(v230 + 24);
              }

              if (v259 >= v257)
              {
                v261 = v257;
              }

              else
              {
                v261 = v259;
              }

              v262 = memcmp(v258, v260, v261);
              v263 = v257 < v259;
              if (v262)
              {
                v263 = v262 < 0;
              }

              if (v263)
              {
                v329 = *(v230 + 16);
                v322 = *v230;
                v264 = *(v230 + 40);
                v331 = *v246;
                v332 = v264;
                *(v230 + 32) = 0;
                *(v230 + 40) = 0;
                *v246 = 0;
                v333 = *(v230 + 48);
                if (SHIBYTE(v332) >= 0)
                {
                  v265 = HIBYTE(v332);
                }

                else
                {
                  v265 = *(&v331 + 1);
                }

                if (SHIBYTE(v332) >= 0)
                {
                  v266 = &v331;
                }

                else
                {
                  v266 = v331;
                }

                do
                {
                  v267 = v254;
                  v268 = *v254;
                  *(v230 + 16) = *(v254 + 16);
                  *v230 = v268;
                  if (*(v230 + 47) < 0)
                  {
                    operator delete(*(v230 + 24));
                  }

                  v269 = *(v254 + 24);
                  *(v230 + 40) = *(v254 + 40);
                  *(v230 + 24) = v269;
                  *(v254 + 47) = 0;
                  *(v254 + 24) = 0;
                  *(v230 + 48) = *(v254 + 48);
                  if (!v253)
                  {
                    break;
                  }

                  v253 = (v253 - 1) >> 1;
                  v254 = a1 + (v253 << 6);
                  v270 = *(v254 + 47);
                  if (v270 >= 0)
                  {
                    v271 = *(v254 + 47);
                  }

                  else
                  {
                    v271 = *(v254 + 32);
                  }

                  if (v270 >= 0)
                  {
                    v272 = (v254 + 24);
                  }

                  else
                  {
                    v272 = *(v254 + 24);
                  }

                  if (v265 >= v271)
                  {
                    v273 = v271;
                  }

                  else
                  {
                    v273 = v265;
                  }

                  v274 = memcmp(v272, v266, v273);
                  v275 = v271 < v265;
                  if (v274)
                  {
                    v275 = v274 < 0;
                  }

                  v230 = v267;
                }

                while (v275);
                *(v267 + 16) = v329;
                *v267 = v322;
                if (*(v267 + 47) < 0)
                {
                  operator delete(*(v267 + 24));
                }

                v276 = v331;
                *(v267 + 40) = v332;
                *(v267 + 24) = v276;
                *(v267 + 48) = v333;
              }
            }
          }

          v251 = v8-- <= 2;
          v226 = v305 - 64;
        }

        while (!v251);
      }

      goto LABEL_519;
    }

    v10 = v7 + (v8 >> 1 << 6);
    if (v8 < 0x81)
    {
      sub_23C52D430(a1 + (v8 >> 1 << 6), a1, v304);
    }

    else
    {
      sub_23C52D430(a1, a1 + (v8 >> 1 << 6), v304);
      sub_23C52D430(a1 + 64, v10 - 64, v303);
      sub_23C52D430(a1 + 128, v10 + 64, v302);
      sub_23C52D430(v10 - 64, a1 + (v8 >> 1 << 6), v10 + 64);
      v324 = *(a1 + 16);
      v317 = *a1;
      *(&v311 + 7) = *(a1 + 39);
      v11 = *(a1 + 24);
      *&v311 = *(a1 + 32);
      v12 = *(a1 + 47);
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 24) = 0;
      v314 = *(a1 + 48);
      v13 = *v10;
      *(a1 + 16) = *(v10 + 16);
      *a1 = v13;
      v14 = *(v10 + 24);
      *(a1 + 40) = *(v10 + 40);
      *(a1 + 24) = v14;
      *(a1 + 48) = *(v10 + 48);
      *(v10 + 16) = v324;
      *v10 = v317;
      *(v10 + 24) = v11;
      *(v10 + 39) = *(&v311 + 7);
      *(v10 + 32) = v311;
      *(v10 + 47) = v12;
      *(v10 + 48) = v314;
    }

    --a3;
    if (a4)
    {
      goto LABEL_34;
    }

    v15 = *(a1 + 47);
    v16 = *(a1 - 17);
    if (v16 >= 0)
    {
      v17 = (a1 - 40);
    }

    else
    {
      v17 = *(a1 - 40);
    }

    v19 = (a1 + 24);
    v18 = *(a1 + 24);
    if (v16 >= 0)
    {
      v20 = *(a1 - 17);
    }

    else
    {
      v20 = *(a1 - 32);
    }

    if (v15 >= 0)
    {
      v21 = *(a1 + 47);
    }

    else
    {
      v21 = *(a1 + 32);
    }

    if (v15 >= 0)
    {
      v22 = (a1 + 24);
    }

    else
    {
      v22 = *(a1 + 24);
    }

    if (v21 >= v20)
    {
      v23 = v20;
    }

    else
    {
      v23 = v21;
    }

    v24 = memcmp(v17, v22, v23);
    v25 = v20 < v21;
    if (v24)
    {
      v25 = v24 < 0;
    }

    if (v25)
    {
LABEL_34:
      v26 = 0;
      v325 = *(a1 + 16);
      v318 = *a1;
      v27 = *(a1 + 40);
      v331 = *(a1 + 24);
      v332 = v27;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 24) = 0;
      v333 = *(a1 + 48);
      if (SHIBYTE(v332) >= 0)
      {
        v28 = HIBYTE(v332);
      }

      else
      {
        v28 = *(&v331 + 1);
      }

      if (SHIBYTE(v332) >= 0)
      {
        v29 = &v331;
      }

      else
      {
        v29 = v331;
      }

      do
      {
        v30 = *(a1 + v26 + 111);
        if (v30 >= 0)
        {
          v31 = *(a1 + v26 + 111);
        }

        else
        {
          v31 = *(a1 + v26 + 96);
        }

        if (v30 >= 0)
        {
          v32 = (a1 + v26 + 88);
        }

        else
        {
          v32 = *(a1 + v26 + 88);
        }

        if (v28 >= v31)
        {
          v33 = v31;
        }

        else
        {
          v33 = v28;
        }

        v34 = memcmp(v32, v29, v33);
        v35 = v31 < v28;
        if (v34)
        {
          v35 = v34 < 0;
        }

        v26 += 64;
      }

      while (v35);
      v36 = a1 + v26;
      v37 = a1 + v26 - 64;
      v38 = v308;
      if (v37 == a1)
      {
        v38 = v308;
        while (1)
        {
          v45 = (v38 + 5);
          if (v36 >= (v38 + 5))
          {
            break;
          }

          v46 = *(v38 + 23);
          if (v46 >= 0)
          {
            v47 = *(v38 + 23);
          }

          else
          {
            v47 = v38[1];
          }

          if (v46 >= 0)
          {
            v48 = v38;
          }

          else
          {
            v48 = *v38;
          }

          if (v28 >= v47)
          {
            v49 = v47;
          }

          else
          {
            v49 = v28;
          }

          v50 = memcmp(v48, v29, v49);
          v51 = v47 < v28;
          if (v50)
          {
            v51 = v50 < 0;
          }

          v38 -= 8;
          if (v51)
          {
            goto LABEL_80;
          }
        }
      }

      else
      {
        do
        {
          v39 = *(v38 + 23);
          if (v39 >= 0)
          {
            v40 = *(v38 + 23);
          }

          else
          {
            v40 = v38[1];
          }

          if (v39 >= 0)
          {
            v41 = v38;
          }

          else
          {
            v41 = *v38;
          }

          if (v28 >= v40)
          {
            v42 = v40;
          }

          else
          {
            v42 = v28;
          }

          v43 = memcmp(v41, v29, v42);
          v44 = v40 < v28;
          if (v43)
          {
            v44 = v43 < 0;
          }

          v38 -= 8;
        }

        while (!v44);
LABEL_80:
        v45 = (v38 + 5);
      }

      v7 = v36;
      if (v36 < v45)
      {
        v52 = v45;
        do
        {
          sub_23C52D334(v7, v52);
          v53 = v7 + 88;
          do
          {
            v54 = v53;
            v55 = *(v53 + 23);
            if ((v55 & 0x80u) == 0)
            {
              v56 = v55;
            }

            else
            {
              v56 = v54[1];
            }

            if ((v55 & 0x80u) == 0)
            {
              v57 = v54;
            }

            else
            {
              v57 = *v54;
            }

            if (v28 >= v56)
            {
              v58 = v56;
            }

            else
            {
              v58 = v28;
            }

            v59 = memcmp(v57, v29, v58);
            v60 = v59 < 0;
            if (!v59)
            {
              v60 = v56 < v28;
            }

            v53 = (v54 + 8);
          }

          while (v60);
          v7 = (v54 - 3);
          v61 = v52 - 5;
          do
          {
            v62 = v61;
            v63 = *(v61 + 23);
            if ((v63 & 0x80u) == 0)
            {
              v64 = v63;
            }

            else
            {
              v64 = v62[1];
            }

            if ((v63 & 0x80u) == 0)
            {
              v65 = v62;
            }

            else
            {
              v65 = *v62;
            }

            if (v28 >= v64)
            {
              v66 = v64;
            }

            else
            {
              v66 = v28;
            }

            v67 = memcmp(v65, v29, v66);
            v68 = v67 < 0;
            if (!v67)
            {
              v68 = v64 < v28;
            }

            v61 = v62 - 8;
          }

          while (!v68);
          v52 = (v62 - 3);
        }

        while (v7 < (v62 - 3));
      }

      v69 = (v7 - 64);
      if (v7 - 64 != a1)
      {
        v70 = *v69;
        *(a1 + 16) = *(v7 - 48);
        *a1 = v70;
        if (*(a1 + 47) < 0)
        {
          operator delete(*(a1 + 24));
        }

        v71 = *(v7 - 40);
        *(a1 + 40) = *(v7 - 24);
        *(a1 + 24) = v71;
        *(v7 - 17) = 0;
        *(v7 - 40) = 0;
        *(a1 + 48) = *(v7 - 16);
      }

      *(v7 - 48) = v325;
      *v69 = v318;
      v72 = (v7 - 40);
      if (*(v7 - 17) < 0)
      {
        operator delete(*v72);
      }

      v73 = v331;
      *(v7 - 24) = v332;
      *v72 = v73;
      *(v7 - 16) = v333;
      a2 = v310;
      if (v36 < v45)
      {
        goto LABEL_119;
      }

      v74 = sub_23C52DA14(a1, v7 - 64);
      if (sub_23C52DA14(v7, v310))
      {
        a2 = v7 - 64;
        if (!v74)
        {
          goto LABEL_2;
        }

        goto LABEL_519;
      }

      if (!v74)
      {
LABEL_119:
        sub_23C52BEB8(a1, v7 - 64, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v326 = *(a1 + 16);
      v319 = *a1;
      v75 = *(a1 + 40);
      v331 = *v19;
      v332 = v75;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *v19 = 0;
      v333 = *(a1 + 48);
      v76 = *(a2 - 17);
      if (SHIBYTE(v332) >= 0)
      {
        v77 = HIBYTE(v332);
      }

      else
      {
        v77 = *(&v331 + 1);
      }

      if (SHIBYTE(v332) >= 0)
      {
        v78 = &v331;
      }

      else
      {
        v78 = v331;
      }

      if (v76 >= 0)
      {
        v79 = *(a2 - 17);
      }

      else
      {
        v79 = *(a2 - 32);
      }

      if (v76 >= 0)
      {
        v80 = v308;
      }

      else
      {
        v80 = *(a2 - 40);
      }

      if (v79 >= v77)
      {
        v81 = v77;
      }

      else
      {
        v81 = v79;
      }

      v82 = memcmp(v78, v80, v81);
      v83 = v77 < v79;
      if (v82)
      {
        v83 = v82 < 0;
      }

      if (v83)
      {
        v84 = (a1 + 88);
        do
        {
          v85 = *(v84 + 23);
          if (v85 >= 0)
          {
            v86 = *(v84 + 23);
          }

          else
          {
            v86 = v84[1];
          }

          if (v85 >= 0)
          {
            v87 = v84;
          }

          else
          {
            v87 = *v84;
          }

          if (v86 >= v77)
          {
            v88 = v77;
          }

          else
          {
            v88 = v86;
          }

          v89 = memcmp(v78, v87, v88);
          v90 = v77 < v86;
          if (v89)
          {
            v90 = v89 < 0;
          }

          v84 += 8;
        }

        while (!v90);
        v7 = (v84 - 11);
      }

      else
      {
        v91 = a1 + 64;
        do
        {
          v7 = v91;
          if (v91 >= v310)
          {
            break;
          }

          v92 = *(v91 + 24);
          v93 = *(v7 + 47);
          if (v93 >= 0)
          {
            v94 = *(v7 + 47);
          }

          else
          {
            v94 = *(v7 + 32);
          }

          if (v93 >= 0)
          {
            v95 = (v7 + 24);
          }

          else
          {
            v95 = *(v7 + 24);
          }

          if (v94 >= v77)
          {
            v96 = v77;
          }

          else
          {
            v96 = v94;
          }

          v97 = memcmp(v78, v95, v96);
          v98 = v97 < 0;
          if (!v97)
          {
            v98 = v77 < v94;
          }

          v91 = v7 + 64;
        }

        while (!v98);
      }

      v99 = v310;
      if (v7 < v310)
      {
        v100 = v308;
        do
        {
          v101 = *(v100 + 23);
          if (v101 >= 0)
          {
            v102 = *(v100 + 23);
          }

          else
          {
            v102 = v100[1];
          }

          if (v101 >= 0)
          {
            v103 = v100;
          }

          else
          {
            v103 = *v100;
          }

          if (v102 >= v77)
          {
            v104 = v77;
          }

          else
          {
            v104 = v102;
          }

          v105 = memcmp(v78, v103, v104);
          v106 = v77 < v102;
          if (v105)
          {
            v106 = v105 < 0;
          }

          v100 -= 8;
        }

        while (v106);
        v99 = (v100 + 5);
      }

      while (v7 < v99)
      {
        sub_23C52D334(v7, v99);
        v107 = v7 + 88;
        do
        {
          v108 = v107;
          v109 = *(v107 + 23);
          if ((v109 & 0x80u) == 0)
          {
            v110 = v109;
          }

          else
          {
            v110 = v108[1];
          }

          if ((v109 & 0x80u) == 0)
          {
            v111 = v108;
          }

          else
          {
            v111 = *v108;
          }

          if (v110 >= v77)
          {
            v112 = v77;
          }

          else
          {
            v112 = v110;
          }

          v113 = memcmp(v78, v111, v112);
          v114 = v113 < 0;
          if (!v113)
          {
            v114 = v77 < v110;
          }

          v107 = (v108 + 8);
        }

        while (!v114);
        v7 = (v108 - 3);
        v115 = v99 - 5;
        do
        {
          v116 = v115;
          v117 = *(v115 + 23);
          if ((v117 & 0x80u) == 0)
          {
            v118 = v117;
          }

          else
          {
            v118 = v116[1];
          }

          if ((v117 & 0x80u) == 0)
          {
            v119 = v116;
          }

          else
          {
            v119 = *v116;
          }

          if (v118 >= v77)
          {
            v120 = v77;
          }

          else
          {
            v120 = v118;
          }

          v121 = memcmp(v78, v119, v120);
          v122 = v121 < 0;
          if (!v121)
          {
            v122 = v77 < v118;
          }

          v115 = v116 - 8;
        }

        while (v122);
        v99 = (v116 - 3);
      }

      v123 = (v7 - 64);
      a2 = v310;
      if (v7 - 64 != a1)
      {
        v124 = *v123;
        *(a1 + 16) = *(v7 - 48);
        *a1 = v124;
        if (*(a1 + 47) < 0)
        {
          operator delete(*v19);
        }

        v125 = *(v7 - 40);
        *(a1 + 40) = *(v7 - 24);
        *v19 = v125;
        *(v7 - 17) = 0;
        *(v7 - 40) = 0;
        *(a1 + 48) = *(v7 - 16);
      }

      *(v7 - 48) = v326;
      *v123 = v319;
      v126 = (v7 - 40);
      if (*(v7 - 17) < 0)
      {
        operator delete(*v126);
      }

      a4 = 0;
      v127 = v331;
      *(v7 - 24) = v332;
      *v126 = v127;
      *(v7 - 16) = v333;
    }
  }

  v142 = *MEMORY[0x277D85DE8];

  sub_23C52D430(v7, v7 + 64, v304);
}

__n128 sub_23C52D334(__int128 *a1, __int128 *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = *a1;
  v12 = *(a1 + 4);
  v3 = *(a1 + 3);
  *v10 = *(a1 + 4);
  *&v10[7] = *(a1 + 39);
  v4 = *(a1 + 47);
  *(a1 + 4) = 0;
  *(a1 + 5) = 0;
  *(a1 + 3) = 0;
  v9 = a1[3];
  v5 = *(a2 + 4);
  *a1 = *a2;
  *(a1 + 4) = v5;
  v6 = *(a2 + 5);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 5) = v6;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  a1[3] = a2[3];
  *a2 = v11;
  *(a2 + 4) = v12;
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 3));
  }

  *(a2 + 3) = v3;
  *(a2 + 4) = *v10;
  *(a2 + 39) = *&v10[7];
  *(a2 + 47) = v4;
  result = v9;
  a2[3] = v9;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_23C52D430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (a2 + 24);
  v6 = *(a2 + 24);
  v8 = (a1 + 24);
  v9 = *(a1 + 47);
  v10 = *(a2 + 47);
  if (v10 >= 0)
  {
    v11 = *(a2 + 47);
  }

  else
  {
    v11 = *(a2 + 32);
  }

  if (v10 >= 0)
  {
    v12 = (a2 + 24);
  }

  else
  {
    v12 = *(a2 + 24);
  }

  if (v9 >= 0)
  {
    v13 = *(a1 + 47);
  }

  else
  {
    v13 = *(a1 + 32);
  }

  if (v9 >= 0)
  {
    v14 = (a1 + 24);
  }

  else
  {
    v14 = *(a1 + 24);
  }

  if (v13 >= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  v16 = memcmp(v12, v14, v15);
  if (v16)
  {
    v17 = v16 < 0;
  }

  else
  {
    v17 = v11 < v13;
  }

  v18 = *(a3 + 24);
  v19 = *(a3 + 47);
  if (v19 >= 0)
  {
    v20 = *(a3 + 47);
  }

  else
  {
    v20 = *(a3 + 32);
  }

  if (v19 >= 0)
  {
    v21 = (a3 + 24);
  }

  else
  {
    v21 = *(a3 + 24);
  }

  if (v11 >= v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = v11;
  }

  v23 = memcmp(v21, v12, v22);
  v25 = v20 < v11;
  if (v23)
  {
    v25 = v23 < 0;
  }

  if (v17)
  {
    v26 = a1;
    if (v25)
    {
LABEL_51:
      v36 = a3;
LABEL_72:

      *&result = sub_23C52D334(v26, v36).n128_u64[0];
      return result;
    }

    sub_23C52D334(a1, a2);
    v27 = *(a2 + 47);
    v28 = *(a3 + 47);
    if (v28 >= 0)
    {
      v29 = *(a3 + 47);
    }

    else
    {
      v29 = *(a3 + 32);
    }

    if (v28 >= 0)
    {
      v30 = (a3 + 24);
    }

    else
    {
      v30 = *(a3 + 24);
    }

    if (v27 >= 0)
    {
      v31 = *(a2 + 47);
    }

    else
    {
      v31 = *(a2 + 32);
    }

    if (v27 >= 0)
    {
      v32 = v7;
    }

    else
    {
      v32 = *(a2 + 24);
    }

    if (v31 >= v29)
    {
      v33 = v29;
    }

    else
    {
      v33 = v31;
    }

    v34 = memcmp(v30, v32, v33);
    v35 = v29 < v31;
    if (v34)
    {
      v35 = v34 < 0;
    }

    if (v35)
    {
      v26 = a2;
      goto LABEL_51;
    }
  }

  else if (v25)
  {
    sub_23C52D334(a2, a3);
    v37 = *(a1 + 47);
    v38 = *(a2 + 47);
    if (v38 >= 0)
    {
      v39 = *(a2 + 47);
    }

    else
    {
      v39 = *(a2 + 32);
    }

    if (v38 >= 0)
    {
      v40 = v7;
    }

    else
    {
      v40 = *(a2 + 24);
    }

    if (v37 >= 0)
    {
      v41 = *(a1 + 47);
    }

    else
    {
      v41 = *(a1 + 32);
    }

    if (v37 >= 0)
    {
      v42 = v8;
    }

    else
    {
      v42 = *(a1 + 24);
    }

    if (v41 >= v39)
    {
      v43 = v39;
    }

    else
    {
      v43 = v41;
    }

    v44 = memcmp(v40, v42, v43);
    v45 = v39 < v41;
    if (v44)
    {
      v45 = v44 < 0;
    }

    if (v45)
    {
      v26 = a1;
      v36 = a2;
      goto LABEL_72;
    }
  }

  return result;
}

double sub_23C52D634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_23C52D430(a1, a2, a3);
  v8 = *(a3 + 24);
  v9 = *(a3 + 47);
  v10 = *(a4 + 47);
  if (v10 >= 0)
  {
    v11 = *(a4 + 47);
  }

  else
  {
    v11 = *(a4 + 32);
  }

  if (v10 >= 0)
  {
    v12 = (a4 + 24);
  }

  else
  {
    v12 = *(a4 + 24);
  }

  if (v9 >= 0)
  {
    v13 = *(a3 + 47);
  }

  else
  {
    v13 = *(a3 + 32);
  }

  if (v9 >= 0)
  {
    v14 = (a3 + 24);
  }

  else
  {
    v14 = *(a3 + 24);
  }

  if (v13 >= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  v16 = memcmp(v12, v14, v15);
  v18 = v11 < v13;
  if (v16)
  {
    v18 = v16 < 0;
  }

  if (v18)
  {
    sub_23C52D334(a3, a4);
    v19 = *(a2 + 24);
    v20 = *(a2 + 47);
    v21 = *(a3 + 47);
    if (v21 >= 0)
    {
      v22 = *(a3 + 47);
    }

    else
    {
      v22 = *(a3 + 32);
    }

    if (v21 >= 0)
    {
      v23 = (a3 + 24);
    }

    else
    {
      v23 = *(a3 + 24);
    }

    if (v20 >= 0)
    {
      v24 = *(a2 + 47);
    }

    else
    {
      v24 = *(a2 + 32);
    }

    if (v20 >= 0)
    {
      v25 = (a2 + 24);
    }

    else
    {
      v25 = *(a2 + 24);
    }

    if (v24 >= v22)
    {
      v26 = v22;
    }

    else
    {
      v26 = v24;
    }

    v27 = memcmp(v23, v25, v26);
    v28 = v22 < v24;
    if (v27)
    {
      v28 = v27 < 0;
    }

    if (v28)
    {
      sub_23C52D334(a2, a3);
      v29 = *(a1 + 47);
      v30 = *(a2 + 47);
      if (v30 >= 0)
      {
        v31 = *(a2 + 47);
      }

      else
      {
        v31 = *(a2 + 32);
      }

      if (v30 >= 0)
      {
        v32 = (a2 + 24);
      }

      else
      {
        v32 = *(a2 + 24);
      }

      if (v29 >= 0)
      {
        v33 = *(a1 + 47);
      }

      else
      {
        v33 = *(a1 + 32);
      }

      if (v29 >= 0)
      {
        v34 = (a1 + 24);
      }

      else
      {
        v34 = *(a1 + 24);
      }

      if (v33 >= v31)
      {
        v35 = v31;
      }

      else
      {
        v35 = v33;
      }

      v36 = memcmp(v32, v34, v35);
      v37 = v31 < v33;
      if (v36)
      {
        v37 = v36 < 0;
      }

      if (v37)
      {

        *&result = sub_23C52D334(a1, a2).n128_u64[0];
      }
    }
  }

  return result;
}

double sub_23C52D7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_23C52D634(a1, a2, a3, a4);
  v10 = *(a4 + 24);
  v11 = *(a4 + 47);
  v12 = *(a5 + 47);
  if (v12 >= 0)
  {
    v13 = *(a5 + 47);
  }

  else
  {
    v13 = *(a5 + 32);
  }

  if (v12 >= 0)
  {
    v14 = (a5 + 24);
  }

  else
  {
    v14 = *(a5 + 24);
  }

  if (v11 >= 0)
  {
    v15 = *(a4 + 47);
  }

  else
  {
    v15 = *(a4 + 32);
  }

  if (v11 >= 0)
  {
    v16 = (a4 + 24);
  }

  else
  {
    v16 = *(a4 + 24);
  }

  if (v15 >= v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = v15;
  }

  v18 = memcmp(v14, v16, v17);
  v20 = v13 < v15;
  if (v18)
  {
    v20 = v18 < 0;
  }

  if (v20)
  {
    sub_23C52D334(a4, a5);
    v21 = *(a3 + 24);
    v22 = *(a3 + 47);
    v23 = *(a4 + 47);
    if (v23 >= 0)
    {
      v24 = *(a4 + 47);
    }

    else
    {
      v24 = *(a4 + 32);
    }

    if (v23 >= 0)
    {
      v25 = (a4 + 24);
    }

    else
    {
      v25 = *(a4 + 24);
    }

    if (v22 >= 0)
    {
      v26 = *(a3 + 47);
    }

    else
    {
      v26 = *(a3 + 32);
    }

    if (v22 >= 0)
    {
      v27 = (a3 + 24);
    }

    else
    {
      v27 = *(a3 + 24);
    }

    if (v26 >= v24)
    {
      v28 = v24;
    }

    else
    {
      v28 = v26;
    }

    v29 = memcmp(v25, v27, v28);
    v30 = v24 < v26;
    if (v29)
    {
      v30 = v29 < 0;
    }

    if (v30)
    {
      sub_23C52D334(a3, a4);
      v31 = *(a2 + 24);
      v32 = *(a2 + 47);
      v33 = *(a3 + 47);
      if (v33 >= 0)
      {
        v34 = *(a3 + 47);
      }

      else
      {
        v34 = *(a3 + 32);
      }

      if (v33 >= 0)
      {
        v35 = (a3 + 24);
      }

      else
      {
        v35 = *(a3 + 24);
      }

      if (v32 >= 0)
      {
        v36 = *(a2 + 47);
      }

      else
      {
        v36 = *(a2 + 32);
      }

      if (v32 >= 0)
      {
        v37 = (a2 + 24);
      }

      else
      {
        v37 = *(a2 + 24);
      }

      if (v36 >= v34)
      {
        v38 = v34;
      }

      else
      {
        v38 = v36;
      }

      v39 = memcmp(v35, v37, v38);
      v40 = v34 < v36;
      if (v39)
      {
        v40 = v39 < 0;
      }

      if (v40)
      {
        sub_23C52D334(a2, a3);
        v41 = *(a1 + 47);
        v42 = *(a2 + 47);
        if (v42 >= 0)
        {
          v43 = *(a2 + 47);
        }

        else
        {
          v43 = *(a2 + 32);
        }

        if (v42 >= 0)
        {
          v44 = (a2 + 24);
        }

        else
        {
          v44 = *(a2 + 24);
        }

        if (v41 >= 0)
        {
          v45 = *(a1 + 47);
        }

        else
        {
          v45 = *(a1 + 32);
        }

        if (v41 >= 0)
        {
          v46 = (a1 + 24);
        }

        else
        {
          v46 = *(a1 + 24);
        }

        if (v45 >= v43)
        {
          v47 = v43;
        }

        else
        {
          v47 = v45;
        }

        v48 = memcmp(v44, v46, v47);
        v49 = v43 < v45;
        if (v48)
        {
          v49 = v48 < 0;
        }

        if (v49)
        {

          *&result = sub_23C52D334(a1, a2).n128_u64[0];
        }
      }
    }
  }

  return result;
}

BOOL sub_23C52DA14(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 6;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a1 + 47);
        v6 = *(a2 - 17);
        if (v6 >= 0)
        {
          v7 = *(a2 - 17);
        }

        else
        {
          v7 = *(a2 - 32);
        }

        if (v6 >= 0)
        {
          v8 = (a2 - 40);
        }

        else
        {
          v8 = *(a2 - 40);
        }

        if (v5 >= 0)
        {
          v9 = *(a1 + 47);
        }

        else
        {
          v9 = *(a1 + 32);
        }

        if (v5 >= 0)
        {
          v10 = (a1 + 24);
        }

        else
        {
          v10 = *(a1 + 24);
        }

        if (v9 >= v7)
        {
          v11 = v7;
        }

        else
        {
          v11 = v9;
        }

        v12 = memcmp(v8, v10, v11);
        v13 = v7 < v9;
        if (v12)
        {
          v13 = v12 < 0;
        }

        if (v13)
        {
          sub_23C52D334(a1, (a2 - 64));
        }

        return 1;
      }

      goto LABEL_28;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      sub_23C52D430(a1, a1 + 64, a2 - 64);
      return 1;
    case 4:
      sub_23C52D634(a1, a1 + 64, a1 + 128, a2 - 64);
      return 1;
    case 5:
      sub_23C52D7EC(a1, a1 + 64, a1 + 128, a1 + 192, a2 - 64);
      return 1;
  }

LABEL_28:
  v14 = a1 + 128;
  sub_23C52D430(a1, a1 + 64, a1 + 128);
  v15 = a1 + 192;
  if (a1 + 192 == a2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  while (1)
  {
    v19 = (v15 + 24);
    v18 = *(v15 + 24);
    v22 = *(v14 + 24);
    v21 = v14 + 24;
    v20 = v22;
    v23 = *(v21 + 23);
    v24 = *(v15 + 47);
    if (v24 >= 0)
    {
      v25 = *(v15 + 47);
    }

    else
    {
      v25 = *(v15 + 32);
    }

    if (v24 >= 0)
    {
      v26 = (v15 + 24);
    }

    else
    {
      v26 = *(v15 + 24);
    }

    if (v23 >= 0)
    {
      v27 = *(v21 + 23);
    }

    else
    {
      v27 = *(v21 + 8);
    }

    if (v23 >= 0)
    {
      v28 = v21;
    }

    else
    {
      v28 = v20;
    }

    if (v27 >= v25)
    {
      v29 = v25;
    }

    else
    {
      v29 = v27;
    }

    v30 = memcmp(v26, v28, v29);
    v31 = v25 < v27;
    if (v30)
    {
      v31 = v30 < 0;
    }

    if (v31)
    {
      v47 = *v15;
      v48 = *(v15 + 16);
      v49 = *v19;
      v50 = *(v15 + 40);
      *v19 = 0;
      *(v15 + 32) = 0;
      *(v15 + 40) = 0;
      v32 = v16;
      v51 = *(v15 + 48);
      while (1)
      {
        v33 = a1 + v32;
        *(v33 + 192) = *(a1 + v32 + 128);
        *(v33 + 208) = *(a1 + v32 + 144);
        if (*(a1 + v32 + 239) < 0)
        {
          operator delete(*(v33 + 216));
        }

        *(v33 + 216) = *(v33 + 152);
        *(v33 + 232) = *(v33 + 168);
        *(v33 + 175) = 0;
        *(v33 + 152) = 0;
        *(v33 + 240) = *(v33 + 176);
        if (v32 == -128)
        {
          break;
        }

        v34 = a1 + v32;
        v35 = *(a1 + v32 + 111);
        if (v50 >= 0)
        {
          v36 = HIBYTE(v50);
        }

        else
        {
          v36 = *(&v49 + 1);
        }

        if (v50 >= 0)
        {
          v37 = &v49;
        }

        else
        {
          v37 = v49;
        }

        if (v35 >= 0)
        {
          v38 = *(a1 + v32 + 111);
        }

        else
        {
          v38 = *(a1 + v32 + 96);
        }

        if (v35 >= 0)
        {
          v39 = (a1 + v32 + 88);
        }

        else
        {
          v39 = *(a1 + v32 + 88);
        }

        if (v38 >= v36)
        {
          v40 = v36;
        }

        else
        {
          v40 = v38;
        }

        v41 = memcmp(v37, v39, v40);
        v42 = v36 < v38;
        if (v41)
        {
          v42 = v41 < 0;
        }

        v32 -= 64;
        if (!v42)
        {
          v43 = v34 + 152;
          v44 = a1 + v32 + 192;
          v45 = (v34 + 176);
          goto LABEL_72;
        }
      }

      v43 = a1 + 24;
      v45 = (a1 + 48);
      v44 = a1;
LABEL_72:
      *v44 = v47;
      *(v44 + 16) = v48;
      if (*(v44 + 47) < 0)
      {
        operator delete(*v43);
      }

      *v43 = v49;
      *(v43 + 16) = v50;
      *v45 = v51;
      if (++v17 == 8)
      {
        return v15 + 64 == a2;
      }
    }

    v14 = v15;
    v16 += 64;
    v15 += 64;
    if (v15 == a2)
    {
      return 1;
    }
  }
}

uint64_t *sub_23C52DD68(uint64_t *a1, uint64_t *a2, uint64_t a3, _BYTE *a4, uint64_t a5, char a6)
{
  v114 = *MEMORY[0x277D85DE8];
  v11 = a2[1];
  *a1 = v11;
  *(a1 + *(v11 - 24)) = a2[2];
  *(a1 + 4) = 0;
  *(a1 + 10) = a6;
  *(a1 + 11) = 0;
  a1[2] = a5;
  *(a1 + 29) = 1;
  *(a1 + 8) = 0;
  *(a1 + 18) = 1;
  a1[9] = (a1 + 11);
  a1[6] = 0;
  a1[7] = 0;
  a1[5] = 0;
  a1[10] = 0x800000000;
  a1[19] = 0;
  a1[20] = 0;
  v12 = *(*(a1 + *(*a1 - 24) + 400) + 32);
  if (*(v12 + 16))
  {
    v13 = strlen(*(v12 + 16));
  }

  *(a1 + 13) = xmmword_23C532560;
  a1[30] = 0x1000000000;
  *(a1 + 88) = 0;
  *(a1 + 94) = 0;
  a1[25] = (a1 + 28);
  a1[29] = (a1 + 31);
  a1[47] = 0;
  *(a1 + 24) = 0u;
  a1[50] = (a1 + 52);
  a1[51] = 0x800000000;
  a1[68] = 0;
  a1[69] = (a1 + 71);
  a1[70] = 0x800000000;
  llvm::DataLayout::reset();
  a1[75] = (a1 + 77);
  a1[76] = 0x400000000;
  *(a1 + 162) = 128;
  a1[79] = MEMORY[0x23EED4160](6144, 8);
  sub_23C4F9130((a1 + 79));
  *(a1 + 656) = 0;
  *(a1 + 680) = 0;
  *(a1 + 178) = 128;
  a1[87] = MEMORY[0x23EED4160](6144, 8);
  sub_23C4EDF58((a1 + 87));
  *(a1 + 720) = 0;
  *(a1 + 744) = 0;
  a1[95] = (a1 + 96);
  *(a1 + 53) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 49) = 0u;
  *(a1 + 50) = 0u;
  *(a1 + 51) = 0u;
  a1[104] = 0;
  a1[105] = (a1 + 106);
  *(a1 + 109) = 0u;
  a1[108] = (a1 + 109);
  a1[111] = (a1 + 115);
  a1[112] = (a1 + 115);
  a1[113] = 8;
  *(a1 + 228) = 0;
  bzero(a1 + 123, 0x230uLL);
  for (i = 0; i != 70; i += 7)
  {
    v15 = &a1[i];
    v15[123] = 4;
    *(v15 + 62) = 0uLL;
    *(v15 + 63) = 0uLL;
    v15[128] = 0;
    v15[129] = -1;
  }

  v16 = 0;
  *(a1 + 209) = 0u;
  *(a1 + 211) = 0u;
  *(a1 + 205) = 0u;
  *(a1 + 207) = 0u;
  *(a1 + 201) = 0u;
  *(a1 + 203) = 0u;
  *(a1 + 197) = 0u;
  *(a1 + 199) = 0u;
  *(a1 + 193) = 0u;
  *(a1 + 195) = 0u;
  a1[213] = 0;
  do
  {
    v17 = &a1[v16];
    v17[193] = 4;
    *(v17 + 97) = 0uLL;
    *(v17 + 98) = 0uLL;
    v17[198] = 0;
    v16 += 7;
    v17[199] = -1;
  }

  while (v16 != 21);
  v18 = 0;
  a1[234] = 0;
  *(a1 + 116) = 0u;
  *(a1 + 115) = 0u;
  *(a1 + 114) = 0u;
  *(a1 + 113) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 111) = 0u;
  *(a1 + 110) = 0u;
  *(a1 + 109) = 0u;
  *(a1 + 108) = 0u;
  *(a1 + 107) = 0u;
  do
  {
    v19 = &a1[v18];
    v19[214] = 4;
    v20 = &a1[v18 + 215];
    v19[219] = 0;
    *v20 = 0uLL;
    *(v20 + 1) = 0uLL;
    v19[220] = -1;
    v18 += 7;
  }

  while (v18 != 21);
  v21 = 0;
  *(a1 + 470) = 0;
  do
  {
    a1[v21 + 236] = 4;
    *&a1[v21 + 237] = 0uLL;
    v21 += 3;
  }

  while (v21 != 9);
  a1[245] = "agc.driver.api_texture.";
  *(a1 + 123) = 0u;
  *(a1 + 124) = 0u;
  *(a1 + 500) = 1065353216;
  a1[251] = "agc.driver.api_sampler.";
  *(a1 + 126) = 0u;
  *(a1 + 127) = 0u;
  *(a1 + 512) = 1065353216;
  a1[257] = "agc.driver.ab_texture.";
  *(a1 + 129) = 0u;
  *(a1 + 130) = 0u;
  *(a1 + 524) = 1065353216;
  a1[263] = "agc.driver.ab_sampler.";
  *(a1 + 132) = 0u;
  *(a1 + 133) = 0u;
  *(a1 + 536) = 1065353216;
  a1[269] = (a1 + 271);
  a1[270] = 0x200000000;
  *(a1 + 137) = 0u;
  a1[273] = (a1 + 274);
  *(a1 + 556) = 128;
  a1[276] = MEMORY[0x23EED4160](6144, 8);
  sub_23C4FB7FC((a1 + 276));
  *(a1 + 2232) = 0;
  *(a1 + 2256) = 0;
  *(a1 + 142) = 0u;
  *(a1 + 143) = 0u;
  a1[288] = (a1 + 290);
  a1[289] = 0x400000000;
  *(a1 + 1192) = 0;
  *(a1 + 606) = 0;
  *(a1 + 299) = 0u;
  *(a1 + 301) = 0u;
  a1[196] = "agc.sampler_words";
  v22 = *a1;
  a1[197] = *(*(a1 + *(*a1 - 24) + 344) + 1584);
  a1[198] = "sampler_state";
  a1[199] = 0x100000040;
  a1[203] = "agc.sampler_es1_lod_bias";
  a1[204] = *(a1 + *(v22 - 24) + 160);
  a1[205] = "driver_parameters";
  *(a1 + 412) = *(*(a1 + *(v22 - 24) + 344) + 836);
  *(a1 + 413) = 19;
  a1[210] = "agc.sampler_unique_id";
  a1[211] = *(a1 + *(v22 - 24) + 200);
  a1[212] = "driver_parameters";
  *(a1 + 426) = *(*(a1 + *(v22 - 24) + 344) + 836);
  *(a1 + 427) = 98;
  a1[217] = "agc.constant_sampler_words";
  a1[218] = *(*(a1 + *(v22 - 24) + 344) + 1584);
  a1[219] = "constant_driver";
  a1[220] = 0x1200000040;
  a1[126] = "agc.read_image_words";
  a1[127] = *(*(a1 + *(v22 - 24) + 344) + 1576);
  a1[128] = "image_state";
  a1[129] = 64;
  a1[133] = "agc.write_image_words";
  a1[134] = *(*(a1 + *(v22 - 24) + 344) + 1576);
  a1[135] = "image_state";
  a1[136] = 0x600000040;
  a1[140] = "agc.image_dim";
  v23 = *(a1 + *(v22 - 24) + 192);
  a1[141] = llvm::FixedVectorType::get();
  a1[142] = "driver_parameters";
  v24 = *a1;
  *(a1 + 286) = *(*(a1 + *(*a1 - 24) + 344) + 836);
  *(a1 + 287) = 11;
  a1[147] = "agc.image_array_info";
  Int8PtrTy = llvm::Type::getInt8PtrTy(*(a1 + *(v24 - 24) + 336), 2);
  v26 = *(a1 + *(*a1 - 24) + 192);
  v27 = *Int8PtrTy;
  __p[0] = Int8PtrTy;
  __p[1] = v26;
  v112 = v26;
  a1[148] = llvm::StructType::get();
  a1[149] = "driver_parameters";
  v28 = *a1;
  *(a1 + 300) = *(*(a1 + *(*a1 - 24) + 344) + 836);
  *(a1 + 301) = 12;
  a1[161] = "agc.image_mipmap_count";
  a1[162] = *(a1 + *(v28 - 24) + 192);
  a1[163] = "driver_parameters";
  *(a1 + 328) = *(*(a1 + *(v28 - 24) + 344) + 836);
  *(a1 + 329) = 16;
  a1[168] = "agc.image_sample_count";
  a1[169] = *(a1 + *(v28 - 24) + 192);
  a1[170] = "driver_parameters";
  *(a1 + 342) = *(*(a1 + *(v28 - 24) + 344) + 836);
  *(a1 + 343) = 17;
  a1[154] = "agc.image_pack_format";
  a1[155] = *(a1 + *(v28 - 24) + 192);
  a1[156] = "driver_parameters";
  *(a1 + 314) = *(*(a1 + *(v28 - 24) + 344) + 836);
  *(a1 + 315) = 13;
  a1[175] = "agc.image_base_level";
  a1[176] = *(a1 + *(v28 - 24) + 192);
  a1[177] = "driver_parameters";
  *(a1 + 356) = *(*(a1 + *(v28 - 24) + 344) + 836);
  *(a1 + 357) = 62;
  a1[189] = "agc.image_unique_id";
  a1[190] = *(a1 + *(v28 - 24) + 200);
  a1[191] = "driver_parameters";
  *(a1 + 384) = *(*(a1 + *(v28 - 24) + 344) + 836);
  *(a1 + 385) = 97;
  a1[182] = "agc.image_heap_index";
  a1[183] = *(a1 + *(v28 - 24) + 192);
  a1[184] = "driver_parameters";
  *(a1 + 370) = *(*(a1 + *(v28 - 24) + 344) + 836);
  *(a1 + 371) = 93;
  v29 = *a1;
  *(a1 + *(*a1 - 24) + 320) = a3;
  *(*(a1 + *(v29 - 24) + 344) + 320) = *(a1 + *(v29 - 24) + 320);
  *(*(a1 + *(v29 - 24) + 344) + 328) = a1 + *(v29 - 24) + 592;
  *(a1 + 24) = 1;
  v30 = *(a1 + *(v29 - 24) + 320);
  __p[0] = "air.compile_options";
  v113 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v30, __p);
  if (NamedMetadata)
  {
    v32 = NamedMetadata;
    v33 = 0;
    while (v33 < llvm::NamedMDNode::getNumOperands(v32))
    {
      Operand = llvm::NamedMDNode::getOperand(v32);
      ++v33;
      if (sub_23C4A57A0(*(Operand - 8 * *(Operand + 8)), "air.compile.fast_math_disable"))
      {
        *(a1 + 24) = 0;
        break;
      }
    }

    llvm::NamedMDNode::eraseFromParent(v32);
  }

  v35 = (a3 + 168);
  if (*(a3 + 191) < 0)
  {
    v37 = *(a3 + 176);
    if (v37 != 20)
    {
      if (v37 != 22)
      {
LABEL_31:
        v43 = 0;
        goto LABEL_43;
      }

      v35 = *v35;
LABEL_24:
      v38 = *v35;
      v39 = v35[1];
      v40 = *(v35 + 14);
      if (v38 == 0x746E656D67617246 && v39 == 0x505F65746174535FLL && v40 == 0x6D6172676F72505FLL)
      {
        v43 = 1;
        goto LABEL_43;
      }

      goto LABEL_31;
    }

    v35 = *v35;
  }

  else
  {
    v36 = *(a3 + 191);
    if (v36 != 20)
    {
      if (v36 != 22)
      {
        goto LABEL_31;
      }

      goto LABEL_24;
    }
  }

  v44 = *v35;
  v45 = v35[1];
  v46 = *(v35 + 4);
  v43 = v44 == 0x535F786574726556 && v45 == 0x6F72505F65746174 && v46 == 1835102823;
LABEL_43:
  *(a1 + 10) |= v43;
  v49 = *(a1 + *(*a1 - 24) + 320);
  __p[0] = "air.language_version";
  v113 = 259;
  v50 = llvm::Module::getNamedMetadata(v49, __p);
  if (v50)
  {
    v51 = llvm::NamedMDNode::getOperand(v50);
    if (v51)
    {
      if (sub_23C4A57A0(*(v51 - 8 * *(v51 + 8)), "OpenGL ES GLSL"))
      {
        *(a1 + 10) = 1;
      }
    }
  }

  v52 = *(a1 + *(*a1 - 24) + 320);
  __p[0] = "air.version";
  v113 = 259;
  v53 = llvm::Module::getNamedMetadata(v52, __p);
  if (v53)
  {
    llvm::NamedMDNode::eraseFromParent(v53);
  }

  v54 = *(a1 + 24);
  *(a1 + 26) = v54 | a6;
  *(a1 + 28) = v54 | a6;
  *(a1 + 27) = v54 | a6;
  *(a1 + 25) = v54;
  v55 = *a1;
  v56 = *(a1 + 25);
  if (v56)
  {
    v57 = -1;
  }

  else
  {
    v57 = 16;
  }

  if ((v56 & 0x100) != 0)
  {
    v57 |= 6u;
  }

  *(a1 + *(*a1 - 24) + 104) = v57 | (v56 >> 13) & 8;
  v58 = *(a1 + 25);
  if (v58)
  {
    v59 = -1;
  }

  else
  {
    v59 = 16;
  }

  if ((v58 & 0x100) != 0)
  {
    v59 |= 6u;
  }

  *(*(a1 + *(v55 - 24) + 344) + 104) = v59 | (v58 >> 13) & 8;
  v60 = *(a1 + *(v55 - 24) + 320);
  v61 = 1;
  HIBYTE(v113) = 1;
  if (*a4)
  {
    __p[0] = a4;
    v61 = 3;
  }

  LOBYTE(v113) = v61;
  v62 = llvm::Module::getNamedMetadata(v60, __p);
  a1[6] = v62;
  v63 = llvm::NamedMDNode::getOperand(v62);
  a1[20] = 0;
  v64 = *(v63 - 8 * *(v63 + 8));
  if (v64 && *v64 - 1 <= 1)
  {
    v65 = *(v64 + 16);
    if (*(v65 + 16))
    {
      v65 = 0;
    }

    a1[20] = v65;
  }

  v66 = *(a1 + *(*a1 - 24) + 320);
  __p[0] = "llvm.dbg.cu";
  v113 = 259;
  if (llvm::Module::getNamedMetadata(v66, __p))
  {
    *(a1 + *(*a1 - 24) + 576) = 1;
    Subprogram = llvm::Function::getSubprogram(a1[20]);
    if (Subprogram)
    {
      v68 = *(a1 + *(*a1 - 24) + 336);
      v69 = Subprogram[6];
      llvm::DILocalScope::getNonLexicalBlockFileScope(Subprogram);
      a1[5] = llvm::DILocation::getImpl();
    }
  }

  v70 = a1[20];
  Name = llvm::Value::getName(v70);
  if (v72 == 23)
  {
    v73 = *Name == 0x747265762E726961 && Name[1] == 0x4668637465467865;
    if (v73 && *(Name + 15) == 0x6E6F6974636E7546)
    {
      v75 = *(a1[20] + 80);
      v76 = v75 ? v75 - 24 : 0;
      v77 = *(v76 + 40);
      v78 = v77 - 24;
      v79 = v77 ? v77 - 24 : 0;
      v80 = *(v79 + 16) - 29 >= 0xB ? 0 : v78;
      v81 = *(v80 + 16) == 29 ? v80 : 0;
      v82 = *(v81 + 20) & 0x7FFFFFF;
      if (v82 && (v83 = *(v81 - 32 * v82)) != 0)
      {
        v84 = *(v83 + 16);
      }

      else
      {
        v85 = *(v81 + 24);
        v83 = v85 - 24;
        v86 = v85 ? v85 - 24 : 0;
        v84 = *(v86 + 16);
      }

      if (v84 == 84)
      {
        v87 = *(v83 - 32);
        if (!v87 || *(v87 + 16) || *(v87 + 24) != *(v83 + 72))
        {
          v87 = 0;
        }

        if (v87)
        {
          v70 = v87;
        }
      }
    }
  }

  __p[0] = llvm::Function::getFnAttribute();
  if (llvm::Attribute::isStringAttribute(__p))
  {
    ValueAsString = llvm::Attribute::getValueAsString(__p);
    if (v89 == 10 && *ValueAsString == 0x696F706563617274 && *(ValueAsString + 8) == 29806)
    {
      *(a1 + 37) = 1;
    }
  }

  v110[0] = llvm::Value::getName(v70);
  v110[1] = v91;
  v92 = sub_23C4AE5DC(__p, v110);
  if (SHIBYTE(v112) >= 0)
  {
    v99 = __p;
  }

  else
  {
    LOBYTE(v99) = __p[0];
  }

  sub_23C4AA240(v92, "------ Compiling function : %s ------", v93, v94, v95, v96, v97, v98, v99);
  if (SHIBYTE(v112) < 0)
  {
    operator delete(__p[0]);
  }

  v100 = a1[20];
  if (**(*(v100 + 24) + 16) != *(a1 + *(*a1 - 24) + 144))
  {
    a1[7] = *(v63 - 8 * *(v63 + 8) + 8);
  }

  v101 = *(v100 + 96);
  if (v101)
  {
    v102 = *(v63 - 8 * *(v63 + 8) + 16);
    a1[8] = v102;
    v103 = *(a1 + 20);
    if (v101 != v103)
    {
      if (v101 >= v103)
      {
        if (v101 > *(a1 + 21))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v103 != v101)
        {
          bzero((a1[9] + 8 * v103), 8 * v101 - 8 * v103);
        }
      }

      *(a1 + 20) = v101;
      v102 = a1[8];
    }

    v104 = *(v102 + 8);
    if (v104)
    {
      for (j = 0; j < v104; ++j)
      {
        v106 = *(v102 - 8 * v104 + 8 * j);
        LODWORD(v110[0]) = 0;
        LODWORD(__p[0]) = 0;
        sub_23C506AF0(0, v106, __p, v110);
        *(a1[9] + 8 * LODWORD(v110[0])) = v106;
        v102 = a1[8];
        v104 = *(v102 + 8);
      }
    }
  }

  v107 = *a2;
  *a1 = *a2;
  *(a1 + *(v107 - 24)) = a2[3];
  v108 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_23C52EDE4(void *a1, unint64_t *a2, unsigned int a3, uint64_t a4)
{
  if (a4)
  {
    String = llvm::MDString::getString(*(a4 - 8 * *(a4 + 8) + 8));
    if (v9 > 10)
    {
      if (v9 == 11)
      {
        if (*String == 0x747865742E726961 && *(String + 3) == 0x657275747865742ELL)
        {
          if (!a2[1])
          {
            return 1;
          }

          v50 = *(a1[9] + 8 * a3);
          LOBYTE(v59) = 0;
          LOBYTE(v57) = 0;
          LODWORD(v60[0]) = 0;
          LODWORD(__dst[0]) = 0;
          *v64 = 0;
          *&v64[4] = 0xFFFFFFFFLL;
          *&v64[16] = 0;
          if (!sub_23C506E20(v50, v60, __dst, &v64[1], v64, &v59, &v57))
          {
            goto LABEL_28;
          }

          v39 = v59;
          v51 = a2;
          if (v59 == 1)
          {
            v51 = *(**(*a2 + 16) + 16);
          }

          v65 = **(*v51 + 16);
          v42 = (*(*a1 + 208))(a1, LODWORD(v60[0]));
          v43 = __dst[0];
          *(a1 + 571) += LODWORD(__dst[0]);
          *(a1 + 2384) |= v57;
          LODWORD(v63) = v42;
          HIDWORD(v63) = v43;
          sub_23C4F0AE4((a1 + 105), v42);
          if (v64[0] == 1)
          {
            if (v39)
            {
              v52 = ~(-1 << v43);
            }

            else
            {
              v52 = 1;
            }

            *(a1 + 606) |= v52 << v42;
          }

          v44 = (a1 + 245);
        }

        else
        {
          if (*String != 0x706D61732E726961 || *(String + 3) != 0x72656C706D61732ELL)
          {
            goto LABEL_28;
          }

          if (!a2[1])
          {
            return 1;
          }

          v38 = *(a1[9] + 8 * a3);
          LODWORD(v60[0]) = 0;
          LODWORD(__dst[0]) = 0;
          LOBYTE(v59) = 0;
          if ((sub_23C506C8C(v38, v60, __dst, &v59) & 1) == 0)
          {
            goto LABEL_28;
          }

          LOBYTE(v39) = v59;
          v40 = a2;
          if (v59 == 1)
          {
            v40 = *(**(*a2 + 16) + 16);
          }

          v41 = *v40;
          v42 = (*(*a1 + 208))(a1, LODWORD(v60[0]));
          v43 = __dst[0];
          *(a1 + 572) += LODWORD(__dst[0]);
          *v64 = 0;
          *&v64[8] = **(v41 + 16);
          LODWORD(v63) = v42;
          HIDWORD(v63) = v43;
          sub_23C4FA210((a1 + 108), v42);
          v44 = (a1 + 251);
        }

        if (sub_23C5024E8(a1, a2, v42, v43, v39, v44))
        {
          return 1;
        }

        goto LABEL_28;
      }

      if (v9 != 19)
      {
        if (v9 != 22)
        {
          goto LABEL_28;
        }

        v10 = *String == 0x63616E692E726961 && *(String + 1) == 0x656C626973736563;
        if (!v10 || *(String + 14) != 0x7475706E695F656CLL)
        {
          goto LABEL_28;
        }

        v12 = *a2;
        llvm::UndefValue::get();
LABEL_118:
        llvm::Value::replaceAllUsesWith();
        return 1;
      }

      if (*String != 0x69646E692E726961 || *(String + 1) != 0x6675625F74636572 || *(String + 11) != 0x7265666675625F74)
      {
        goto LABEL_28;
      }

LABEL_92:
      sub_23C4FF724(a1, a2, a3, a4, 0xFFFFFFFF);
      return 1;
    }

    if (v9 != 9)
    {
      if (v9 != 10)
      {
        goto LABEL_28;
      }

      if (*String != 0x666675622E726961 || *(String + 4) != 29285)
      {
        goto LABEL_28;
      }

      goto LABEL_92;
    }
  }

  else
  {
    String = "air.byval";
  }

  if (*String == 0x617679622E726961 && String[8] == 108)
  {
    v33 = *a2;
    v63 = "agc.byval.";
    *&v64[8] = a3;
    LOWORD(v65) = 2051;
    v34 = sub_23C4ED494(a1, v33, &v63, a3, 0);
    v35 = (a1 + *(*a1 - 24));
    LOWORD(v65) = 257;
    sub_23C497C88(v35 + 1, **(*v34 + 16), v34, 0, &v63);
    goto LABEL_118;
  }

LABEL_28:
  v15 = llvm::MDString::getString(*(a4 - 8 * *(a4 + 8) + 8));
  v17 = v15;
  v18 = v16;
  if (v16 == 11)
  {
    v19 = 0x66696E752E726961;
    if (*v15 != 0x66696E752E726961 || *(v15 + 3) != 0x6D726F66696E752ELL)
    {
      return 0;
    }
  }

  else
  {
    if (v16 != 19)
    {
      return 0;
    }

    v19 = *(v15 + 11);
    v21 = *v15 == 0x616665642E726961 && v15[1] == 0x66696E755F746C75;
    if (!v21 || v19 != 0x6D726F66696E755FLL)
    {
      return 0;
    }
  }

  v62 = 0;
  v24 = *(a4 + 8);
  if (v24 >= 3)
  {
    v25 = 2;
    do
    {
      v26 = v25 + 1;
      v27 = *(a4 - 8 * *(a4 + 8) + 8 * v25);
      if (v27 && !*v27)
      {
        v28 = llvm::MDString::getString(v27);
        if (v29 == 11)
        {
          v19 = 0x646E69622E726961;
          if (*v28 != 0x646E69622E726961 || *(v28 + 3) != 0x676E69646E69622ELL)
          {
            goto LABEL_48;
          }

          LODWORD(v63) = v25 + 1;
          if (!sub_23C506AF0(0, a4, &v63, &v62))
          {
            return 0;
          }
        }

        else
        {
          if (v29 != 15)
          {
            goto LABEL_48;
          }

          v19 = 0x666675622E726961;
          if (*v28 != 0x666675622E726961 || *(v28 + 7) != 0x657A69735F726566)
          {
            goto LABEL_48;
          }

          LODWORD(v63) = v25 + 1;
          if ((sub_23C506AF0(0, a4, &v63, &v62 + 1) & 1) == 0)
          {
            return 0;
          }
        }

        v26 = v25 + 2;
      }

LABEL_48:
      v25 = v26;
    }

    while (v26 < v24);
  }

  if (v18 == 11 && bswap64(*v17) == 0x6169722E756E6966)
  {
    v32 = bswap64(*(v17 + 3));
  }

  v47 = *a2;
  v60[0] = "agc.buffer_pointers";
  v60[2] = ".";
  v61 = 771;
  if (v17)
  {
    HIBYTE(v56) = v18;
    memmove(__dst, v17, v18);
    *(__dst + v18) = 0;
    v48 = v61;
    if (v61 == 1)
    {
      v63 = __dst;
      *&v64[8] = v59;
      LOWORD(v65) = 260;
      *(&v65 + 2) = v57;
      HIWORD(v65) = v58;
      goto LABEL_115;
    }

    if (!v61)
    {
      LOWORD(v65) = 256;
      goto LABEL_115;
    }

    v49 = v60[0];
    v19 = v60[1];
    if (HIBYTE(v61) != 1)
    {
      v48 = 2;
      v49 = v60;
    }
  }

  else
  {
    __dst[0] = 0;
    __dst[1] = 0;
    v48 = 2;
    v49 = v60;
    v56 = 0;
  }

  v63 = v49;
  *v64 = v19;
  *&v64[8] = __dst;
  LOBYTE(v65) = v48;
  BYTE1(v65) = 4;
LABEL_115:
  v53 = sub_23C4ED494(a1, v47, &v63, v62, SHIDWORD(v62));
  if (SHIBYTE(v56) < 0)
  {
    operator delete(__dst[0]);
  }

  v54 = (a1 + *(*a1 - 24));
  LOWORD(v65) = 257;
  result = sub_23C497C88(v54 + 1, **(*v53 + 16), v53, 0, &v63);
  if (result)
  {
    goto LABEL_118;
  }

  return result;
}

uint64_t sub_23C52F648(uint64_t result)
{
  v1 = *(result + *(*result - 24) + 320);
  v2 = v1 + 24;
  v3 = *(v1 + 32);
  if (v3 != v1 + 24)
  {
    while (1)
    {
      if (v3)
      {
        v4 = v3 - 56;
      }

      else
      {
        v4 = 0;
      }

      result = llvm::GlobalValue::isDeclaration(v4);
      if (result)
      {
        goto LABEL_6;
      }

      if ((*(v4 + 18) & 1) == 0)
      {
        break;
      }

      result = llvm::Function::BuildLazyArguments(v4);
      v5 = *(v4 + 88);
      if ((*(v4 + 18) & 1) == 0)
      {
        goto LABEL_11;
      }

      result = llvm::Function::BuildLazyArguments(v4);
      v6 = *(v4 + 88);
LABEL_13:
      v7 = &v6[10 * *(v4 + 96)];
      while (v5 != v7)
      {
        if (*(*v5 + 8) == 15)
        {
          v8 = v5[8];
          result = llvm::Function::addParamAttr();
        }

        v5 += 10;
      }

LABEL_6:
      v3 = *(v3 + 8);
      if (v3 == v2)
      {
        return result;
      }
    }

    v5 = *(v4 + 88);
LABEL_11:
    v6 = v5;
    goto LABEL_13;
  }

  return result;
}

void sub_23C52F73C(void *a1)
{
  v66 = *MEMORY[0x277D85DE8];
  v1 = a1 + *(*a1 - 24);
  v2 = *(v1 + 150);
  if (v2)
  {
    v4 = *(v1 + 74);
    v5 = &v4[v2];
    v6 = a1 + 43;
    v7 = a1 + 24;
    v8 = a1 + 42;
    do
    {
      Impl = *v4;
      v10 = *(*v4 + 8);
      if (v10 < 3)
      {
        goto LABEL_29;
      }

      v11 = *(Impl - 8 * v10);
      if (!v11)
      {
        goto LABEL_29;
      }

      if (*v11 - 1 > 1)
      {
        goto LABEL_29;
      }

      v12 = *(v11 + 16);
      if (!v12)
      {
        goto LABEL_29;
      }

      if (*(v12 + 16) != 3)
      {
        goto LABEL_29;
      }

      if ((*(v12 + 34) & 0x40) == 0)
      {
        goto LABEL_29;
      }

      SectionImpl = llvm::GlobalObject::getSectionImpl(v12);
      if (v14 != 15)
      {
        goto LABEL_29;
      }

      if (*SectionImpl != 0x625F726566667562 || *(SectionImpl + 7) != 0x73676E69646E6962)
      {
        goto LABEL_29;
      }

      if (*(*v12 + 8) != 16399)
      {
        goto LABEL_29;
      }

      v16 = **(*v12 + 16);
      v17 = *(v16 + 8);
      if (v17 != 15 || (v17 >> 8) - 1 > 1)
      {
        goto LABEL_29;
      }

      v18 = v12;
      while (1)
      {
        v18 = *(v18 + 8);
        if (!v18)
        {
          break;
        }

        if (*(*(v18 + 24) + 16) != 60)
        {
          goto LABEL_29;
        }
      }

      v19 = 0;
      v62 = 0;
      if (*(Impl + 8) == 4)
      {
        LODWORD(v63) = 3;
        if (!sub_23C506AF0(0, Impl, &v63, &v62))
        {
          goto LABEL_29;
        }

        v19 = v62;
        if (v62 == -1)
        {
          goto LABEL_29;
        }
      }

      v20 = *(v16 + 16);
      v21 = *v20;
      v22 = *(*v20 + 8);
      v23 = v22 == 16 ? *v20 : 0;
      if (v22 == 7 || v23 && (*(v23 + 9) & 1) == 0)
      {
        goto LABEL_29;
      }

      v54 = v19;
      v53 = v21;
      v60 = 0;
      v61 = 0;
      LODWORD(v63) = 1;
      sub_23C506AF0(0, Impl, &v63, &v61);
      LODWORD(v63) = 2;
      sub_23C506AF0(0, Impl, &v63, &v60);
      if (*(*(v6 + *(*a1 - 24)) + 1685) & 1) == 0 && v61 == 5 && v60 < 0 && ((a1[284] >> SBYTE2(v60)))
      {
        v63 = llvm::ValueAsMetadata::get();
        v64 = *(Impl - 8 * *(Impl + 8) + 8);
        v45 = *(v7 + *(*a1 - 24));
        llvm::ConstantInt::get();
        v65 = llvm::ValueAsMetadata::get();
        v46 = *(v8 + *(*a1 - 24));
        Impl = llvm::MDTuple::getImpl();
      }

      else if (!v54)
      {
        __p = 0;
        v58 = 0;
        v59 = 0;
        v24 = *(v12 + 8);
        if (!v24)
        {
          goto LABEL_70;
        }

        do
        {
          v63 = *(v24 + 24);
          *&v64 = 0;
          sub_23C503A24(&__p, &v63);
          v24 = *(v24 + 8);
        }

        while (v24);
        v25 = __p;
        v26 = v58;
        if (__p == v58)
        {
LABEL_70:
          v41 = 1;
LABEL_71:
          v63 = sub_23C49BBA0((a1 + 21), v53) * v41;
          LODWORD(v64) = v42;
          if (llvm::TypeSize::operator unsigned long long() <= 0xFFFFFFFE)
          {
            v63 = llvm::ValueAsMetadata::get();
            v64 = *(Impl - 8 * *(Impl + 8) + 8);
            v43 = *(v7 + *(*a1 - 24));
            llvm::ConstantInt::get();
            v65 = llvm::ValueAsMetadata::get();
            v44 = *(v8 + *(*a1 - 24));
            Impl = llvm::MDTuple::getImpl();
          }

LABEL_73:
          if (__p)
          {
            operator delete(__p);
          }

          goto LABEL_29;
        }

        v27 = 0;
        while (2)
        {
          v28 = *(v26 - 2);
          v29 = *(v26 - 1);
          v26 -= 16;
          v58 = v26;
          v30 = *(v28 + 8);
          if (!v30)
          {
            goto LABEL_68;
          }

          v49 = v29;
LABEL_43:
          v31 = *(v30 + 24);
          v32 = *(v31 + 16);
          switch(v32)
          {
            case 'M':
              v50 = *(v30 + 24);
              v52 = v30;
              v56 = v27;
              if (*(*v31 + 8) != 15)
              {
                goto LABEL_73;
              }

              v63 = sub_23C49BBA0((a1 + 21), v53);
              LODWORD(v64) = v38;
              v48 = llvm::TypeSize::operator unsigned long long();
              v63 = sub_23C49BBA0((a1 + 21), **(*v50 + 16));
              LODWORD(v64) = v39;
              if (llvm::TypeSize::operator unsigned long long() > v48)
              {
                goto LABEL_73;
              }

              v27 = v56;
              v29 = v49;
              v40 = v50;
              v30 = v52;
              while (1)
              {
                v40 = *(v40 + 8);
                if (!v40)
                {
                  break;
                }

                if (*(*(v40 + 24) + 16) != 60)
                {
                  goto LABEL_73;
                }
              }

LABEL_46:
              if (v27 <= v29)
              {
                v27 = v29;
              }

              break;
            case '>':
              v33 = *(v31 + 20) & 0x7FFFFFF;
              v34 = *(v31 - 32 * v33 + 32);
              if (v34)
              {
                v35 = *(v34 + 16) == 16;
              }

              else
              {
                v35 = 0;
              }

              if (!v35)
              {
                goto LABEL_73;
              }

              v36 = (v34 + 24);
              if (*(v34 + 32) >= 0x41u)
              {
                v36 = *v36;
              }

              v37 = *v36 + v29;
              if (v33 == 2)
              {
                v63 = *(v30 + 24);
                *&v64 = v37;
                v55 = v27;
                v51 = v30;
                sub_23C503A24(&__p, &v63);
                v30 = v51;
                v29 = v49;
                v27 = v55;
              }

              else if (v27 <= v37)
              {
                v27 = v37;
              }

              break;
            case '<':
              goto LABEL_46;
            default:
              goto LABEL_73;
          }

          v30 = *(v30 + 8);
          if (!v30)
          {
            v25 = __p;
            v26 = v58;
LABEL_68:
            if (v25 == v26)
            {
              v41 = v27 + 1;
              goto LABEL_71;
            }

            continue;
          }

          goto LABEL_43;
        }
      }

LABEL_29:
      *v4++ = Impl;
    }

    while (v4 != v5);
  }

  v47 = *MEMORY[0x277D85DE8];
}

void *sub_23C52FD10(void *result, int a2, int a3)
{
  v5 = result;
  if ((a2 & 1) != 0 || a3)
  {
    v6 = *(result + *(*result - 24) + 320);
    result = llvm::Module::getOrInsertNamedMetadata();
    if (a2)
    {
      v7 = *(v5 + *(*v5 - 24) + 320);
      result = llvm::Module::getOrInsertNamedMetadata();
      *(v5 + 36) = 1;
    }

    if (a3)
    {
      v8 = *(v5 + *(*v5 - 24) + 320);

      return llvm::Module::getOrInsertNamedMetadata();
    }
  }

  return result;
}

uint64_t sub_23C52FDF8(uint64_t a1)
{
  if (*(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  if (*(a1 + 311) < 0)
  {
    operator delete(*(a1 + 288));
  }

  v3 = (a1 + 264);
  sub_23C52FEF4(&v3);
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void sub_23C52FEF4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
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

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_23C52FF80(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_26:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_26;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_26;
    }
  }
}

uint64_t sub_23C530100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 335);
  if (v4 < 0)
  {
    v4 = *(a1 + 320);
  }

  if (v4)
  {
    std::operator+<char>();
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = v6;
    *(a3 + 16) = v7;
  }

  return flatbuffers::GenerateText();
}

uint64_t sub_23C53018C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = *(result + 272);
    for (i = *(result + 280); v3 != i; ++v3)
    {
      v4 = *v3;
      if (*v3)
      {
        v32 = *v3;
        sub_23C52FEF4(&v32);
        MEMORY[0x23EED50C0](v4, 0x1020C4016EE4530);
        i = *(v1 + 280);
      }
    }

    v5 = *(v1 + 1176);
    if (v5)
    {
      v6 = *(v1 + 1184);
      v7 = *(v1 + 1176);
      if (v6 != v5)
      {
        do
        {
          if (*(v6 - 17) < 0)
          {
            operator delete(*(v6 - 40));
          }

          v6 -= 72;
        }

        while (v6 != v5);
        v7 = *(v1 + 1176);
      }

      *(v1 + 1184) = v5;
      operator delete(v7);
    }

    if (*(v1 + 1175) < 0)
    {
      operator delete(*(v1 + 1152));
    }

    sub_23C52FDF8(v1 + 728);
    sub_23C4A690C(*(v1 + 712));
    v32 = (v1 + 680);
    sub_23C52FEF4(&v32);
    sub_23C530764(*(v1 + 664));
    sub_23C496DAC(*(v1 + 640));
    if (*(v1 + 631) < 0)
    {
      operator delete(*(v1 + 608));
    }

    if (*(v1 + 607) < 0)
    {
      operator delete(*(v1 + 584));
    }

    sub_23C4B1570(*(v1 + 536));
    sub_23C4B1570(*(v1 + 504));
    v8 = *(v1 + 456);
    if (v8)
    {
      *(v1 + 464) = v8;
      operator delete(v8);
    }

    v9 = *(v1 + 432);
    if (v9)
    {
      *(v1 + 440) = v9;
      operator delete(v9);
    }

    sub_23C4B1460((v1 + 336));
    if (*(v1 + 335) < 0)
    {
      operator delete(*(v1 + 312));
    }

    v10 = *(v1 + 272);
    if (v10)
    {
      *(v1 + 280) = v10;
      operator delete(v10);
    }

    v12 = *(v1 + 248);
    v11 = *(v1 + 256);
    if (v12 != v11)
    {
      do
      {
        v13 = *v12;
        if (*v12)
        {
          v15 = *(v13 + 176);
          v14 = *(v13 + 184);
          if (v15 != v14)
          {
            do
            {
              v16 = *v15;
              if (*v15)
              {
                sub_23C5307C8(v16 + 72);
                v32 = (v16 + 48);
                sub_23C52FEF4(&v32);
                if (*(v16 + 47) < 0)
                {
                  operator delete(*(v16 + 24));
                }

                if (*(v16 + 23) < 0)
                {
                  operator delete(*v16);
                }

                MEMORY[0x23EED50C0](v16, 0x10B2C40EE200C30);
                v14 = *(v13 + 184);
              }

              ++v15;
            }

            while (v15 != v14);
            v15 = *(v13 + 176);
          }

          if (v15)
          {
            *(v13 + 184) = v15;
            operator delete(v15);
          }

          sub_23C4A690C(*(v13 + 160));
          sub_23C5307C8(v13 + 72);
          v32 = (v13 + 48);
          sub_23C52FEF4(&v32);
          if (*(v13 + 47) < 0)
          {
            operator delete(*(v13 + 24));
          }

          if (*(v13 + 23) < 0)
          {
            operator delete(*v13);
          }

          MEMORY[0x23EED50C0](v13, 0x10B2C401A85D49FLL);
          v11 = *(v1 + 256);
        }

        ++v12;
      }

      while (v12 != v11);
      v12 = *(v1 + 248);
    }

    if (v12)
    {
      *(v1 + 256) = v12;
      operator delete(v12);
    }

    sub_23C4A690C(*(v1 + 232));
    v18 = *(v1 + 200);
    v17 = *(v1 + 208);
    if (v18 != v17)
    {
      do
      {
        v19 = *v18;
        if (*v18)
        {
          v21 = *(v19 + 208);
          v20 = *(v19 + 216);
          if (v21 != v20)
          {
            do
            {
              v22 = *v21;
              if (*v21)
              {
                sub_23C5307C8(v22 + 88);
                v32 = (v22 + 24);
                sub_23C52FEF4(&v32);
                if (*(v22 + 23) < 0)
                {
                  operator delete(*v22);
                }

                MEMORY[0x23EED50C0](v22, 0x10B2C4072A4B994);
                v20 = *(v19 + 216);
              }

              ++v21;
            }

            while (v21 != v20);
            v21 = *(v19 + 208);
          }

          if (v21)
          {
            *(v19 + 216) = v21;
            operator delete(v21);
          }

          sub_23C4A690C(*(v19 + 192));
          sub_23C5307C8(v19 + 72);
          v32 = (v19 + 48);
          sub_23C52FEF4(&v32);
          if (*(v19 + 47) < 0)
          {
            operator delete(*(v19 + 24));
          }

          if (*(v19 + 23) < 0)
          {
            operator delete(*v19);
          }

          MEMORY[0x23EED50C0](v19, 0x10B2C409EE52067);
          v17 = *(v1 + 208);
        }

        ++v18;
      }

      while (v18 != v17);
      v18 = *(v1 + 200);
    }

    if (v18)
    {
      *(v1 + 208) = v18;
      operator delete(v18);
    }

    sub_23C4A690C(*(v1 + 184));
    v24 = *(v1 + 152);
    v23 = *(v1 + 160);
    if (v24 != v23)
    {
      do
      {
        v25 = *v24;
        if (*v24)
        {
          v26 = *(v25 + 224);
          *(v25 + 224) = 0;
          if (v26)
          {
            if (*(v26 + 23) < 0)
            {
              operator delete(*v26);
            }

            MEMORY[0x23EED50C0](v26, 0x1012C40EC159624);
          }

          v28 = *(v25 + 176);
          v27 = *(v25 + 184);
          if (v28 != v27)
          {
            do
            {
              v29 = *v28;
              if (*v28)
              {
                if (*(v29 + 207) < 0)
                {
                  operator delete(*(v29 + 184));
                }

                sub_23C5307C8(v29 + 72);
                v32 = (v29 + 48);
                sub_23C52FEF4(&v32);
                if (*(v29 + 47) < 0)
                {
                  operator delete(*(v29 + 24));
                }

                if (*(v29 + 23) < 0)
                {
                  operator delete(*v29);
                }

                MEMORY[0x23EED50C0](v29, 0x10B2C40559199D4);
                v27 = *(v25 + 184);
              }

              ++v28;
            }

            while (v28 != v27);
            v28 = *(v25 + 176);
          }

          if (v28)
          {
            *(v25 + 184) = v28;
            operator delete(v28);
          }

          sub_23C4A690C(*(v25 + 160));
          sub_23C5307C8(v25 + 72);
          v32 = (v25 + 48);
          sub_23C52FEF4(&v32);
          if (*(v25 + 47) < 0)
          {
            operator delete(*(v25 + 24));
          }

          if (*(v25 + 23) < 0)
          {
            operator delete(*v25);
          }

          MEMORY[0x23EED50C0](v25, 0x10B2C4058EA06FBLL);
          v23 = *(v1 + 160);
        }

        ++v24;
      }

      while (v24 != v23);
      v24 = *(v1 + 152);
    }

    if (v24)
    {
      *(v1 + 160) = v24;
      operator delete(v24);
    }

    sub_23C4A690C(*(v1 + 136));
    v31 = *(v1 + 104);
    v30 = *(v1 + 112);
    if (v31 != v30)
    {
      do
      {
        if (*v31)
        {
          MEMORY[0x23EED50C0](*v31, 0x1020C4001A1C0B8);
          v30 = *(v1 + 112);
        }

        ++v31;
      }

      while (v31 != v30);
      v31 = *(v1 + 104);
    }

    if (v31)
    {
      *(v1 + 112) = v31;
      operator delete(v31);
    }

    sub_23C4A690C(*(v1 + 88));
    v32 = (v1 + 56);
    sub_23C52FEF4(&v32);
    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    JUMPOUT(0x23EED50C0);
  }

  return result;
}

void sub_23C530764(char *a1)
{
  if (a1)
  {
    sub_23C530764(*a1);
    sub_23C530764(*(a1 + 1));
    sub_23C4A690C(*(a1 + 8));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t sub_23C5307C8(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v3 != v2)
  {
    do
    {
      v4 = *v3;
      if (*v3)
      {
        if (*(v4 + 55) < 0)
        {
          operator delete(*(v4 + 32));
        }

        MEMORY[0x23EED50C0](v4, 0x1032C40E9BF265ALL);
        v2 = *(a1 + 32);
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *(a1 + 24);
  }

  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  sub_23C4A690C(*(a1 + 8));
  return a1;
}

uint64_t llvm::BranchInst::BranchInst()
{
  return MEMORY[0x2821F1898]();
}

{
  return MEMORY[0x2821F18A8]();
}

uint64_t llvm::StructType::get()
{
  return MEMORY[0x2821F1998]();
}

{
  return MEMORY[0x2821F19A0]();
}

uint64_t llvm::ConstantInt::get()
{
  return MEMORY[0x2821F1B60]();
}

{
  return MEMORY[0x2821F1B70]();
}

uint64_t llvm::FunctionType::get()
{
  return MEMORY[0x2821F2050]();
}

{
  return MEMORY[0x2821F2058]();
}

void llvm::SmallVectorBase<unsigned int>::mallocForGrow()
{
    ;
  }
}

void llvm::SmallVectorBase<unsigned int>::grow_pod()
{
    ;
  }
}

void llvm::SmallVectorBase<unsigned long long>::grow_pod()
{
    ;
  }
}

void llvm::SymbolTableListTraits<llvm::BasicBlock>::transferNodesFromList()
{
    ;
  }
}

void llvm::SymbolTableListTraits<llvm::Instruction>::addNodeToList()
{
    ;
  }
}

void llvm::SymbolTableListTraits<llvm::Function>::addNodeToList()
{
    ;
  }
}

void llvm::SymbolTableListTraits<llvm::Function>::removeNodeFromList()
{
    ;
  }
}

uint64_t llvm::AGX::operator<<()
{
  return MEMORY[0x2821F34D0]();
}

{
  return MEMORY[0x2821F34D8]();
}

uint64_t llvm::User::operator new(llvm::User *this)
{
  return MEMORY[0x2821F3B08](this);
}

{
  return MEMORY[0x2821F3B10](this);
}

{
  return MEMORY[0x2821F3B18](this);
}

uint64_t llvm::Module::getOrInsertFunction()
{
  return MEMORY[0x2821F3FC0]();
}

{
  return MEMORY[0x2821F3FC8]();
}

uint64_t llvm::Function::addFnAttr()
{
  return MEMORY[0x2821F45E0]();
}

{
  return MEMORY[0x2821F45F0]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7938]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}
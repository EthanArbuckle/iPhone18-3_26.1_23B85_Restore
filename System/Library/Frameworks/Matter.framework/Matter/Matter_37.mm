BOOL sub_239459348(uint64_t a1, char *__s)
{
  v4 = *(a1 + 8);
  if (v4 != strlen(__s))
  {
    return 0;
  }

  if (v4)
  {
    return memcmp(*a1, __s, v4) == 0;
  }

  return 1;
}

uint64_t sub_2394593B4(__int128 *a1)
{
  v9 = *a1;
  v8 = 0;
  if (!sub_239407BFC(&v9, &v8) || v8 >> 29)
  {
    v3 = 145;
    v4 = 138;
  }

  else
  {
    v7 = 0;
    if (!sub_239407860(&v9, &v7))
    {
      v2 = 0x80000000;
      v5 = v8;
      return v2 | v5;
    }

    if (v7 > 0x4Fu)
    {
      if (v7 == 80)
      {
        v1 = 0;
        v2 = -1073741824;
        goto LABEL_17;
      }

      if (v7 == 85)
      {
        v2 = 0;
        v1 = 1;
        goto LABEL_17;
      }
    }

    else
    {
      if (v7 == 65)
      {
        v1 = 0;
        v2 = 0x40000000;
        goto LABEL_17;
      }

      if (v7 == 67)
      {
        v1 = 0;
        v2 = 0x80000000;
LABEL_17:
        if (*(&v9 + 1))
        {
          v3 = 144;
          v4 = 165;
          goto LABEL_23;
        }

        v5 = v8;
        if (v8)
        {
          v1 = 0;
        }

        if (v1 == 1)
        {
          v3 = 145;
          v4 = 173;
          goto LABEL_23;
        }

        return v2 | v5;
      }
    }

    v3 = 144;
    v4 = 160;
  }

LABEL_23:
  sub_2394170F4(12, 0, v3, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/asn1_gen.c", v4);
  return 0;
}

uint64_t sub_239459504(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, int a7)
{
  memset(v14, 0, sizeof(v14));
  result = sub_239406A10(a1, v14, a4);
  if (result)
  {
    if (!a5 || (result = sub_239406ACC(v14, 0), result))
    {
      result = sub_239458918(v14, a2, a3, a6, (a7 + 1));
      if (result)
      {
        return sub_239406758(a1) != 0;
      }
    }
  }

  return result;
}

BOOL sub_2394595AC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = a2;
  v5 = 0;
  if (sub_239407BFC(&v6, &v5) && !v7 && v5 < 0x101)
  {
    return sub_2393FC30C(a3, v5, 1) != 0;
  }

  sub_2394170F4(12, 0, 145, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/asn1_gen.c", 578);
  return 0;
}

uint64_t sub_239459638(uint64_t a1, void **a2)
{
  v4 = sub_2393FFBEC(a1);
  switch(v4)
  {
    case 408:
      v8 = sub_23941B624(a1);

      return sub_239415BA4(v8, a2);
    case 116:
      v7 = sub_23941A90C(a1);

      return sub_239414D54(v7, a2);
    case 6:
      v5 = sub_23941D790(a1);

      return sub_239456290(v5, a2);
    default:
      sub_2394170F4(12, 0, 187, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/i2d_pr.c", 76);
      return 0xFFFFFFFFLL;
  }
}

uint64_t sub_239459710(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  v4 = a2;
  v42 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v6 = a4;
    v7 = a3 & ~(a3 >> 31);
    if (sub_239459B08(a1, a3 & ~(a3 >> 31)))
    {
      v8 = ((*&v6 & 0xF0000uLL) - 0x10000) >> 16;
      v9 = 0xFFFFFFFFLL;
      if (v8 <= 1)
      {
        if (v8)
        {
          v10 = 3;
          v36 = 2;
          v37 = 0;
          v34 = " + ";
          v11 = ", ";
        }

        else
        {
          v36 = 1;
          v37 = 0;
          v34 = "+";
          v10 = 1;
          v11 = ",";
        }

        goto LABEL_14;
      }

      if (v8 == 2)
      {
        v36 = 2;
        v37 = 0;
        v10 = 3;
        v34 = " + ";
        v11 = "; ";
        goto LABEL_14;
      }

      if (v8 == 3)
      {
        v10 = 3;
        v36 = 1;
        v37 = v7;
        v34 = " + ";
        v11 = "\n";
LABEL_14:
        v33 = v11;
        v14 = " = ";
        if ((*&v6 & 0x800000) == 0)
        {
          v14 = "=";
        }

        v38 = v14;
        if ((*&v6 & 0x800000) != 0)
        {
          v15 = 3;
        }

        else
        {
          v15 = 1;
        }

        v40 = v15;
        v16 = sub_23946B400(v4);
        v17 = v16 - 1;
        if (v16 >= 1)
        {
          v18 = 0;
          v35 = v10;
          v19 = -1;
          LODWORD(v9) = v7;
          v39 = v4;
          while (1)
          {
            if ((*&v6 & 0x100000) != 0)
            {
              v20 = v17;
            }

            else
            {
              v20 = v18;
            }

            v21 = sub_23946B39C(v4, v20);
            v22 = v21;
            if (v19 != -1)
            {
              if (v19 == sub_2394041C8(v21))
              {
                if (a1 && sub_239403738(a1, v34, v35) != v35)
                {
                  goto LABEL_47;
                }

                LODWORD(v9) = v9 + v35;
              }

              else
              {
                if (a1 && sub_239403738(a1, v33, v36) != v36 || !sub_239459B08(a1, v37))
                {
                  goto LABEL_47;
                }

                LODWORD(v9) = v37 + v36 + v9;
              }
            }

            v19 = sub_2394041C8(v22);
            v23 = sub_239431484(v22);
            v24 = sub_23946B390(v22);
            v25 = sub_2394509E8(v23);
            v26 = v25;
            if (v25)
            {
              v27 = sub_239451004(v25);
            }

            else
            {
              v27 = v41;
              sub_239451134(v41, 80, v23, 1);
            }

            v28 = strlen(v27);
            if (a1 && (sub_239403738(a1, v27, v28) != v28 || sub_239403738(a1, v38, v40) != v40))
            {
              goto LABEL_47;
            }

            v29 = v26 || (v6 & 0x1000000) == 0;
            v30 = 128;
            if (v29)
            {
              v30 = 0;
            }

            v31 = sub_2393FDD9C(a1, v24, v30 | v6);
            if (v31 < 0)
            {
              goto LABEL_47;
            }

            v9 = (v9 + v40 + v28 + v31);
            ++v18;
            --v17;
            v4 = v39;
            if (v17 == -1)
            {
              goto LABEL_49;
            }
          }
        }

        v9 = v7;
      }
    }

    else
    {
LABEL_47:
      v9 = 0xFFFFFFFFLL;
    }

LABEL_49:
    v32 = *MEMORY[0x277D85DE8];
    return v9;
  }

  v12 = *MEMORY[0x277D85DE8];

  return sub_23945BC5C(a1, a2);
}

uint64_t sub_239459A94(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  if (a1)
  {
    v7 = sub_2394042E8();
    if (!v7)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = sub_239459710(v7, a2, a3, a4);
  sub_239403520(v7);
  return v9;
}

uint64_t sub_239459B08(uint64_t a1, int a2)
{
  if (a2 < 1)
  {
    return 1;
  }

  result = sub_239459B94(a1, " ", 1);
  if (result)
  {
    v5 = 1;
    do
    {
      v6 = v5;
      if (a2 == v5)
      {
        break;
      }

      v7 = sub_239459B94(a1, " ", 1);
      v5 = v6 + 1;
    }

    while (v7);
    return v6 >= a2;
  }

  return result;
}

uint64_t sub_239459BD0(unint64_t *a1, uint64_t a2, __int16 a3, unint64_t **a4)
{
  *a4 = 0;
  v8 = sub_239431484(a1);
  v9 = v8 - 2;
  if (v8 < 2)
  {
    return 0;
  }

  v11 = v8;
  if ((a3 & 0x100) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = v8 + 1;
  }

  if ((a3 & 0x200) != 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = v8 + 1;
  }

  v97 = v13;
  v98 = v12;
  if ((a3 & 0x400) != 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = v8 + 1;
  }

  v96 = v14;
  v15 = sub_2394574D8();
  v16 = v15;
  if (!v15)
  {
    v69 = 0;
    v17 = 0;
    goto LABEL_146;
  }

  v91 = a2;
  v92 = a4;
  v17 = 0;
  v93 = v15;
  do
  {
    v18 = sub_239457528(a1, v9);
    if (!sub_239462398(v18))
    {
LABEL_145:
      v69 = 0;
      goto LABEL_146;
    }

    v19 = *(v18 + 12);
    if (!v17)
    {
      v20 = sub_23945A7CC();
      v17 = v20;
      if (!v20)
      {
        goto LABEL_145;
      }

      *(v20 + 2) = 1;
    }

    v21 = (v19 >> 5) & 1;
    if (!v9)
    {
      LOBYTE(v21) = 0;
    }

    if (v97)
    {
      v22 = 1;
    }

    else
    {
      v22 = v21;
    }

    v99 = 0;
    v23 = sub_239466178(v18, 89, &v99, 0);
    v94 = v19;
    if (!v23)
    {
      if (v99 != -1)
      {
        goto LABEL_150;
      }

      *(v17 + 8) = 0;
      if (sub_239431484(*v17))
      {
        v35 = 0;
        do
        {
          v36 = sub_239457528(*v17, v35);
          sub_23945AA14(v36);
          ++v35;
        }

        while (v35 < sub_239431484(*v17));
      }

      sub_2394574E0(*v17);
      goto LABEL_56;
    }

    v24 = v23;
    if (!sub_239431484(v23))
    {
      sub_2394170F4(11, 0, 144, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/policy.c", 245);
      v31 = 0;
      goto LABEL_149;
    }

    sub_239457C08(v24, sub_23945A8CC);
    sub_239457A78(v24, sub_23945AB18);
    if (!sub_239431484(v24))
    {
      v29 = *(v17 + 8);
LABEL_53:
      sub_2394577B4(*v17, sub_23945AB48, sub_23945A8E0, v24);
      *(v17 + 8) = 0;
      if (!v29)
      {
        goto LABEL_54;
      }

LABEL_37:
      v31 = sub_2394574D8();
      if (v31)
      {
        if (sub_239431484(v24))
        {
          v32 = 0;
          while (1)
          {
            v33 = sub_239457528(v24, v32);
            if (sub_2394509E8(*v33) != 746 && !sub_23945A948(v17, *v33))
            {
              v34 = sub_23945A9B0(*v33);
              if (!v34 || !sub_2394579D0(v31, v34))
              {
                break;
              }
            }

            if (++v32 >= sub_239431484(v24))
            {
              goto LABEL_45;
            }
          }

          sub_23945AA14(v34);
        }

        else
        {
LABEL_45:
          if (sub_23945AA80(v17, v31))
          {
            goto LABEL_55;
          }
        }
      }

LABEL_149:
      sub_239457574(v31, sub_23945AB94, sub_23945AA14);
      sub_23945EC28(v24);
      goto LABEL_150;
    }

    v25 = 0;
    v26 = 0;
    do
    {
      v27 = sub_239457528(v24, v25);
      if (sub_2394509E8(*v27) == 746)
      {
        v26 = 1;
      }

      if (v25)
      {
        v28 = sub_239457528(v24, v25 - 1);
        if (!sub_239450998(*v28, *v27))
        {
          sub_2394170F4(11, 0, 144, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/policy.c", 260);
          v31 = 0;
          v16 = v93;
          goto LABEL_149;
        }
      }

      ++v25;
    }

    while (v25 < sub_239431484(v24));
    v29 = *(v17 + 8);
    if (v26)
    {
      v30 = v22;
    }

    else
    {
      v30 = 0;
    }

    v16 = v93;
    if ((v30 & 1) == 0)
    {
      goto LABEL_53;
    }

    if (v29)
    {
      goto LABEL_37;
    }

LABEL_54:
    v31 = 0;
LABEL_55:
    sub_239457574(v31, sub_23945AB94, sub_23945AA14);
    sub_23945EC28(v24);
LABEL_56:
    if (!v98 && !*(v17 + 8) && !sub_239431484(*v17))
    {
      v69 = 0;
LABEL_163:
      v10 = 43;
      goto LABEL_151;
    }

    if (!sub_2394579D0(v16, v17))
    {
      goto LABEL_145;
    }

    if (v9)
    {
      v37 = v96;
      v99 = 0;
      v38 = sub_239466178(v18, 747, &v99, 0);
      v39 = v38;
      if (!v38 && v99 != -1)
      {
        v39 = 0;
        goto LABEL_64;
      }

      if (v38)
      {
        if (!sub_239431484(v38))
        {
          sub_2394170F4(11, 0, 144, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/policy.c", 369);
          goto LABEL_64;
        }

        if (sub_239431484(v39))
        {
          v50 = 0;
          while (1)
          {
            v51 = sub_239457528(v39, v50);
            if (sub_2394509E8(*v51) == 746 || sub_2394509E8(v51[1]) == 746)
            {
              break;
            }

            if (++v50 >= sub_239431484(v39))
            {
              goto LABEL_96;
            }
          }

LABEL_64:
          v40 = 0;
          v41 = 0;
          goto LABEL_65;
        }

LABEL_96:
        sub_239457C08(v39, sub_23945ABA0);
        sub_239457A78(v39, sub_23945AC28);
        if (v37)
        {
          v52 = sub_2394574D8();
          if (!v52)
          {
            goto LABEL_64;
          }

          v89 = v52;
          if (sub_239431484(v39))
          {
            v53 = 0;
            v54 = 0;
            while (2)
            {
              v55 = sub_239457528(v39, v53);
              v56 = v55;
              if (v54 && !sub_239450998(*v55, v54))
              {
                goto LABEL_108;
              }

              v54 = *v56;
              v57 = sub_23945A948(v17, *v56);
              if (v57)
              {
LABEL_106:
                *(v57 + 4) = 1;
              }

              else if (*(v17 + 8))
              {
                v57 = sub_23945A9B0(*v56);
                v41 = v89;
                if (!v57 || !sub_2394579D0(v89, v57))
                {
                  sub_23945AA14(v57);
                  v40 = 0;
                  v16 = v93;
                  goto LABEL_65;
                }

                goto LABEL_106;
              }

              v16 = v93;
LABEL_108:
              if (++v53 >= sub_239431484(v39))
              {
                break;
              }

              continue;
            }
          }

          v41 = v89;
          if (!sub_23945AA80(v17, v89))
          {
            v40 = 0;
            goto LABEL_65;
          }

          v42 = v39;
LABEL_114:
          v90 = v41;
          if (sub_239431484(*v17))
          {
            v58 = 0;
            while (1)
            {
              v59 = sub_239457528(*v17, v58);
              if (!*(v59 + 4))
              {
                v60 = v59;
                v61 = sub_239461C98();
                if (!v61)
                {
                  goto LABEL_136;
                }

                v62 = v61;
                *v61 = sub_239450894(*v60);
                v63 = sub_239450894(*v60);
                v62[1] = v63;
                if (!*v62 || !v63 || !sub_2394579D0(v42, v62))
                {
                  break;
                }
              }

              if (++v58 >= sub_239431484(*v17))
              {
                goto LABEL_122;
              }
            }

            sub_239461CA4(v62);
LABEL_136:
            v40 = 0;
          }

          else
          {
LABEL_122:
            sub_239457C08(v42, sub_23945AC14);
            sub_239457A78(v42, sub_23945AC28);
            v64 = sub_23945A7CC();
            v40 = v64;
            if (v64)
            {
              *(v64 + 2) = *(v17 + 8);
              if (!sub_239431484(v42))
              {
LABEL_134:
                sub_239457A78(*v40, sub_23945AB58);
                v16 = v93;
                v41 = v90;
                goto LABEL_66;
              }

              v65 = 0;
              v66 = 0;
              while (1)
              {
                v67 = sub_239457528(v42, v65);
                v68 = v67;
                if (*(v17 + 8) || sub_23945A948(v17, *v67))
                {
                  if (!v66 || sub_239450998(*v66, v68[1]))
                  {
                    v66 = sub_23945A9B0(v68[1]);
                    if (!v66 || !sub_2394579D0(*v40, v66))
                    {
                      sub_23945AA14(v66);
LABEL_139:
                      v39 = v42;
                      v16 = v93;
LABEL_140:
                      v41 = v90;
LABEL_65:
                      sub_23945A854(v40);
                      v40 = 0;
                      v42 = v39;
LABEL_66:
                      sub_239457574(v42, sub_23945AC58, sub_239461CA4);
                      sub_239457574(v41, sub_23945AB94, sub_23945AA14);
                      if (v40)
                      {
                        v17 = v40;
                        if ((v94 & 0x20) != 0)
                        {
                          goto LABEL_77;
                        }

                        goto LABEL_70;
                      }

                      v17 = 0;
LABEL_150:
                      v69 = 0;
                      *v92 = v18;
                      v10 = 42;
                      goto LABEL_151;
                    }
                  }

                  if (!sub_2394579D0(v66[1], *v68))
                  {
                    goto LABEL_139;
                  }

                  *v68 = 0;
                }

                if (++v65 >= sub_239431484(v42))
                {
                  goto LABEL_134;
                }
              }
            }
          }

          v39 = v42;
          goto LABEL_140;
        }

        sub_2394577B4(*v17, sub_23945AB48, sub_23945ABB4, v39);
        sub_239457574(v39, sub_23945AC58, sub_239461CA4);
      }

      v42 = sub_2394574D8();
      v41 = 0;
      v39 = 0;
      v40 = 0;
      if (!v42)
      {
        goto LABEL_65;
      }

      goto LABEL_114;
    }

    v40 = 0;
LABEL_70:
    if (v98)
    {
      --v98;
    }

    if (v96)
    {
      --v96;
    }

    if (v97)
    {
      --v97;
    }

    v17 = v40;
LABEL_77:
    v99 = 0;
    v43 = sub_239466178(v18, 401, &v99, 0);
    v44 = v43;
    if (!v43 && v99 != -1)
    {
      goto LABEL_150;
    }

    if (v43)
    {
      v45 = *v43;
      if (!*v44 && !v44[1])
      {
        sub_2394170F4(11, 0, 144, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/policy.c", 548);
LABEL_161:
        sub_239461A2C(v44);
        goto LABEL_150;
      }

      if (!sub_23945AC64(v45, &v98))
      {
        goto LABEL_161;
      }

      v46 = sub_23945AC64(v44[1], &v96);
      sub_239461A2C(v44);
      if (!v46)
      {
        goto LABEL_150;
      }
    }

    v47 = sub_239466178(v18, 748, &v99, 0);
    v48 = v47;
    if (!v47 && v99 != -1)
    {
      goto LABEL_150;
    }

    v49 = sub_23945AC64(v47, &v97);
    sub_239402ECC(v48);
    if (!v49)
    {
      goto LABEL_150;
    }

    --v9;
  }

  while (v9 < v11);
  if (v98)
  {
    v69 = 0;
    goto LABEL_155;
  }

  if (!v91)
  {
    v69 = 0;
    goto LABEL_165;
  }

  v71 = sub_2394579F4(v91);
  v69 = v71;
  if (!v71)
  {
LABEL_146:
    v10 = 17;
    goto LABEL_151;
  }

  sub_239457C08(v71, sub_23945A848);
  sub_239457A78(v69, sub_23945ACF8);
LABEL_165:
  v72 = sub_239431484(v16);
  v73 = v72 - 1;
  v74 = sub_239457528(v16, v72 - 1);
  v75 = v74;
  if (!*(v74 + 2) && !sub_239431484(*v74))
  {
    goto LABEL_163;
  }

  v76 = sub_239431484(v69);
  if (sub_239431484(v69))
  {
    v77 = 0;
    while (1)
    {
      v78 = sub_239457528(v69, v77);
      if (sub_2394509E8(v78) == 746)
      {
        break;
      }

      if (++v77 >= sub_239431484(v69))
      {
        goto LABEL_171;
      }
    }

LABEL_155:
    v10 = 0;
    goto LABEL_151;
  }

LABEL_171:
  if (!v76 || *(v75 + 2))
  {
    goto LABEL_155;
  }

  if (sub_239431484(*v75))
  {
    v79 = 0;
    do
    {
      *(sub_239457528(*v75, v79++) + 5) = 1;
    }

    while (v79 < sub_239431484(*v75));
  }

  if (!v72)
  {
    goto LABEL_163;
  }

  v95 = v72;
  do
  {
    v80 = sub_239457528(v16, v73);
    if (sub_239431484(*v80))
    {
      v81 = 0;
      v82 = v73 - 1;
      while (1)
      {
        v83 = sub_239457528(*v80, v81);
        if (*(v83 + 5))
        {
          v84 = v83;
          if (sub_239431484(v83[1]))
          {
            if (v73)
            {
              v85 = sub_239457528(v93, v73 - 1);
              if (sub_239431484(v84[1]))
              {
                v86 = 0;
                do
                {
                  v87 = sub_239457528(v84[1], v86);
                  v88 = sub_23945A948(v85, v87);
                  if (v88)
                  {
                    *(v88 + 5) = 1;
                  }

                  ++v86;
                }

                while (v86 < sub_239431484(v84[1]));
              }
            }
          }

          else if (sub_23945784C(v69, 0, *v84, sub_23945ACF8))
          {
            v10 = 0;
            v16 = v93;
            goto LABEL_151;
          }
        }

        if (++v81 >= sub_239431484(*v80))
        {
          v16 = v93;
          v72 = v95;
          goto LABEL_193;
        }
      }
    }

    v82 = v73 - 1;
LABEL_193:
    v10 = 43;
    v73 = v82;
  }

  while (v82 < v72);
LABEL_151:
  sub_23945A854(v17);
  sub_2393FFA58(v69);
  sub_239457574(v16, sub_23945AD28, sub_23945A854);
  return v10;
}

void *sub_23945A7CC()
{
  v0 = sub_2394500B0(0x10uLL);
  if (v0)
  {
    v1 = sub_239457478(sub_23945A8B8);
    *v0 = v1;
    if (!v1)
    {
      sub_239457574(0, sub_23945AB94, sub_23945AA14);
      sub_239450144(v0);
      return 0;
    }
  }

  return v0;
}

void sub_23945A854(unint64_t **a1)
{
  if (a1)
  {
    sub_239457574(*a1, sub_23945AB94, sub_23945AA14);

    sub_239450144(a1);
  }
}

uint64_t sub_23945A8E0(void *a1, uint64_t a2)
{
  v4[0] = *a1;
  v4[1] = 0;
  if (sub_23945784C(a2, 0, v4, sub_23945AB18))
  {
    return 0;
  }

  sub_23945AA14(a1);
  return 1;
}

unint64_t *sub_23945A948(unint64_t **a1, uint64_t a2)
{
  v5[1] = 0;
  v5[2] = 0;
  v4 = 0;
  v5[0] = a2;
  if (sub_23945784C(*a1, &v4, v5, sub_23945AB58))
  {
    return sub_239457528(*a1, v4);
  }

  else
  {
    return 0;
  }
}

void *sub_23945A9B0(uint64_t a1)
{
  v2 = sub_2394500B0(0x18uLL);
  if (v2)
  {
    *v2 = sub_239450894(a1);
    v3 = sub_2394574D8();
    v2[1] = v3;
    if (*v2)
    {
      v4 = v3 == 0;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      sub_23945AA14(v2);
      return 0;
    }
  }

  return v2;
}

void sub_23945AA14(void *a1)
{
  if (a1)
  {
    sub_2393FDCD8(*a1);
    sub_239457574(a1[1], sub_23945AB88, sub_2393FDCD8);

    sub_239450144(a1);
  }
}

unint64_t *sub_23945AA80(unint64_t **a1, unint64_t *a2)
{
  if (sub_239431484(a2))
  {
    v4 = 0;
    while (1)
    {
      v5 = sub_239457528(a2, v4);
      result = sub_2394579D0(*a1, v5);
      if (!result)
      {
        break;
      }

      sub_23945754C(a2, v4++, 0);
      if (v4 >= sub_239431484(a2))
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    sub_239457A78(*a1, sub_23945AB58);
    return 1;
  }

  return result;
}

uint64_t sub_23945AB18(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  return a1(&v5, &v4);
}

uint64_t sub_23945AB58(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  return a1(&v5, &v4);
}

uint64_t sub_23945ABB4(void *a1, uint64_t a2)
{
  v4[0] = *a1;
  v4[1] = 0;
  result = sub_23945784C(a2, 0, v4, sub_23945AC28);
  if (result)
  {
    sub_23945AA14(a1);
    return 1;
  }

  return result;
}

uint64_t sub_23945AC28(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  return a1(&v5, &v4);
}

uint64_t sub_23945AC64(uint64_t a1, unint64_t *a2)
{
  if (!a1)
  {
    return 1;
  }

  if (*(a1 + 5))
  {
    sub_2394170F4(11, 0, 144, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/policy.c", 517);
    return 0;
  }

  else
  {
    v4 = 0;
    if (sub_2393FCF14(&v4, a1))
    {
      if (v4 < *a2)
      {
        *a2 = v4;
      }
    }

    sub_239416A38();
    return 1;
  }
}

uint64_t sub_23945ACF8(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  return a1(&v5, &v4);
}

uint64_t sub_23945AD64(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v13 = 0;
  v11 = 0;
  if (!sub_239418070(*(a1 + 16)) || !sub_23941D114(*(a1 + 16)) || !sub_23941D084(*(a1 + 16)))
  {
    return 0;
  }

  if (sub_2393FFBE4(v13) - 672 >= 3)
  {
    v4 = 208;
    goto LABEL_8;
  }

  if (v11 != sub_2393FFBEC(v13))
  {
    v4 = 215;
LABEL_8:
    sub_2394170F4(11, 0, 112, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/rsa_pss.c", v4);
    return 0;
  }

  v10 = 0;
  v7 = sub_239402AC0(byte_278A811A0);
  if (v7 && (v8 = sub_239402EE8(), (v7[2] = v8) != 0) && sub_2393FCD8C(v8, v11) && sub_23945AEF8(v7, v13) && sub_23945AF4C(v7 + 1, v12) && sub_2393FFC34(v7, byte_278A811A0, &v10) && (v9 = sub_239450F00(0x390u), sub_23946BC38(a2, v9, 16, v10)))
  {
    v10 = 0;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  sub_2394026C0(v7, byte_278A811A0);
  sub_2393FFA58(v10);
  return v5;
}

uint64_t sub_23945AEF8(uint64_t *a1, unsigned int *a2)
{
  result = sub_23946BC10();
  *a1 = result;
  if (result)
  {
    if (sub_23946BD34(result, a2))
    {
      return 1;
    }

    else
    {
      sub_23946BC1C(*a1);
      result = 0;
      *a1 = 0;
    }
  }

  return result;
}

BOOL sub_23945AF4C(uint64_t *a1, unsigned int *a2)
{
  v9 = 0;
  v10 = 0;
  v3 = sub_23945AEF8(&v10, a2);
  v4 = v10;
  if (v3)
  {
    if (sub_2393FFC34(v10, byte_278A82280, &v9))
    {
      v5 = sub_23946BC10();
      *a1 = v5;
      if (v5)
      {
        v6 = v5;
        v7 = sub_239450F00(0x38Fu);
        if (sub_23946BC38(v6, v7, 16, v9))
        {
          v9 = 0;
        }
      }
    }
  }

  sub_2393FFA58(v9);
  sub_23946BC1C(v4);
  return *a1 != 0;
}

BOOL sub_23945AFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_23945B1E8(a2);
  v6 = v5;
  if (!v5)
  {
    v11 = 264;
LABEL_23:
    sub_2394170F4(11, 0, 112, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/rsa_pss.c", v11);
LABEL_24:
    v14 = 0;
    goto LABEL_25;
  }

  v7 = *(v5 + 8);
  if (!v7)
  {
    v12 = 184;
LABEL_8:
    sub_2394170F4(11, 0, 112, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/rsa_pss.c", v12);
    v10 = 0;
    goto LABEL_9;
  }

  v8 = sub_23945B558(v7);
  if (!v8)
  {
    v12 = 190;
    goto LABEL_8;
  }

  v9 = v8;
  v10 = sub_23945B248(v8);
  sub_23946BC1C(v9);
LABEL_9:
  v13 = sub_23945B248(*v6);
  v14 = 0;
  if (v10)
  {
    v15 = v13;
    if (v13)
    {
      if (v10 != v13)
      {
        v11 = 276;
        goto LABEL_23;
      }

      v21 = 0;
      v16 = *(v6 + 16);
      if (!v16 || !sub_2393FCF14(&v21, v16) || (v17 = v21, v17 != sub_2393FFBEC(v15)))
      {
        v11 = 286;
        goto LABEL_23;
      }

      v18 = *(v6 + 24);
      if (v18 && sub_2393FD028(v18) != 1)
      {
        v11 = 295;
        goto LABEL_23;
      }

      v20 = 0;
      if (!sub_239431AE8(a1, &v20, v15, 0, a3) || !sub_23941D03C(v20) || !sub_23941D06C(v20))
      {
        goto LABEL_24;
      }

      v14 = sub_23941D0FC(v20) != 0;
    }
  }

LABEL_25:
  sub_2394026C0(v6, byte_278A811A0);
  return v14;
}

uint64_t sub_23945B1E8(uint64_t a1)
{
  v3 = *(a1 + 8);
  if (!v3 || *v3 != 16)
  {
    return 0;
  }

  v6[1] = v1;
  v6[2] = v2;
  v4 = *(v3 + 8);
  v6[0] = *(v4 + 1);
  return sub_2394004F8(0, v6, *v4, byte_278A811A0);
}

unsigned int *sub_23945B248(uint64_t *a1)
{
  if (!a1)
  {
    v3 = 170;
    goto LABEL_6;
  }

  v1 = sub_2394127D0(*a1);
  if (!v1 || (v2 = v1, sub_2393FFBE4(v1) - 672 >= 3))
  {
    v3 = 175;
LABEL_6:
    sub_2394170F4(11, 0, 112, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/rsa_pss.c", v3);
    return 0;
  }

  return v2;
}

BOOL sub_23945B2B4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = sub_23945B1E8(a2);
  if (v5)
  {
    if (sub_239403848(a1, "\n") >= 1 && sub_239403C00(a1, a3, 0x80u) && sub_239403848(a1, "Hash Algorithm: ") >= 1)
    {
      v6 = *v5 ? sub_2393FD954(a1, **v5) : sub_239403848(a1, "sha1 (default)");
      if (v6 >= 1 && sub_239403848(a1, "\n") >= 1 && sub_239403C00(a1, a3, 0x80u) && sub_239403848(a1, "Mask Algorithm: ") >= 1)
      {
        v9 = *(v5 + 8);
        if (v9)
        {
          v7 = sub_23945B558(v9);
          if (v7)
          {
            if (sub_2393FD954(a1, **(v5 + 8)) >= 1 && sub_239403848(a1, " with ") >= 1)
            {
              v10 = sub_2393FD954(a1, *v7);
              goto LABEL_23;
            }

LABEL_19:
            v8 = 0;
            goto LABEL_20;
          }

          v10 = sub_239403848(a1, "INVALID");
        }

        else
        {
          v10 = sub_239403848(a1, "mgf1 with sha1 (default)");
          v7 = 0;
        }

LABEL_23:
        if (v10 >= 1)
        {
          sub_239403848(a1, "\n");
          if (sub_239403C00(a1, a3, 0x80u))
          {
            if (sub_239403848(a1, "Salt Length: 0x") >= 1)
            {
              v12 = *(v5 + 16);
              v13 = v12 ? sub_2393FFD98(a1, v12) : sub_239403848(a1, "14 (default)");
              if (v13 >= 1)
              {
                sub_239403848(a1, "\n");
                if (sub_239403C00(a1, a3, 0x80u))
                {
                  if (sub_239403848(a1, "Trailer Field: 0x") >= 1)
                  {
                    v14 = *(v5 + 24);
                    v15 = v14 ? sub_2393FFD98(a1, v14) : sub_239403848(a1, "BC (default)");
                    if (v15 >= 1)
                    {
                      sub_239403848(a1, "\n");
                      v8 = 1;
                      goto LABEL_20;
                    }
                  }
                }
              }
            }
          }
        }

        goto LABEL_19;
      }
    }

    v7 = 0;
    goto LABEL_19;
  }

  v7 = 0;
  v8 = sub_239403848(a1, " (INVALID PSS PARAMETERS)\n") > 0;
LABEL_20:
  sub_2394026C0(v5, byte_278A811A0);
  sub_23946BC1C(v7);
  return v8;
}

uint64_t sub_23945B558(uint64_t a1)
{
  if (sub_2394509E8(*a1) != 911)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (!v2 || *v2 != 16)
  {
    return 0;
  }

  v3 = *(v2 + 8);
  v5 = *(v3 + 1);
  return sub_23946BBF8(0, &v5, *v3);
}

uint64_t sub_23945B5C8(int a1, uint64_t a2)
{
  if (a1 == 2)
  {
    sub_23946BC1C(*(*a2 + 32));
  }

  return 1;
}

uint64_t sub_23945B5F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_2394042E8();
  if (v7)
  {
    v8 = v7;
    v9 = sub_23945B67C(v7, a2, a3, a4);
    sub_239403520(v8);
    return v9;
  }

  else
  {
    sub_2394170F4(11, 0, 7, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/t_x509.c", 75);
    return 0;
  }
}

uint64_t sub_23945B67C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a3 & 0xF0000) == 0x40000)
  {
    v8 = 12;
  }

  else
  {
    v8 = 0;
  }

  if ((a3 & 0xF0000) == 0x40000)
  {
    v9 = 10;
  }

  else
  {
    v9 = 32;
  }

  if (a3)
  {
    v10 = v8;
  }

  else
  {
    v10 = 16;
  }

  v11 = *a2;
  if ((a4 & 1) == 0 && (sub_239403738(a1, "Certificate:\n", 13) < 1 || sub_239403738(a1, "    Data:\n", 10) < 1))
  {
    return 0;
  }

  if ((a4 & 2) == 0)
  {
    v12 = sub_239467A30(a2);
    if (sub_239404AE0(a1, "%8sVersion: %ld (0x%lx)\n", "", v12 + 1, v12) < 1)
    {
      return 0;
    }
  }

  if ((a4 & 4) == 0)
  {
    if (sub_239403738(a1, "        Serial Number:", 22) < 1)
    {
      return 0;
    }

    v25 = v10;
    v13 = sub_239465D40(a2);
    v26 = 0;
    if (sub_2393FCF14(&v26, v13))
    {
      if (sub_239404AE0(a1, " %llu (0x%llx)\n", v26, v26) < 1)
      {
        return 0;
      }
    }

    else
    {
      sub_239416A38();
      if (v13[1] == 258)
      {
        v20 = " (Negative)";
      }

      else
      {
        v20 = "";
      }

      if (sub_239404AE0(a1, "\n%12s%s", "", v20) < 1)
      {
        return 0;
      }

      v21 = 0;
      while (1)
      {
        v22 = *v13;
        if (v21 >= v22)
        {
          break;
        }

        v23 = *(*(v13 + 1) + v21++);
        if (v21 == v22)
        {
          v24 = 10;
        }

        else
        {
          v24 = 58;
        }

        if (sub_239404AE0(a1, "%02x%c", v23, v24) < 1)
        {
          return 0;
        }
      }
    }

    v10 = v25;
  }

  if ((a4 & 8) == 0 && sub_23945BB8C(a1, v11[2], 0) < 1)
  {
    return 0;
  }

  if ((a4 & 0x10) == 0)
  {
    if (sub_239404AE0(a1, "        Issuer:%c", v9) < 1)
    {
      return 0;
    }

    v14 = sub_239465C18(a2);
    if ((sub_239459710(a1, v14, v10, a3) & 0x80000000) != 0 || sub_239403738(a1, "\n", 1) < 1)
    {
      return 0;
    }
  }

  if ((a4 & 0x20) == 0)
  {
    if (sub_239403738(a1, "        Validity\n", 17) < 1 || sub_239403738(a1, "            Not Before: ", 24) < 1)
    {
      return 0;
    }

    v15 = sub_239467C44(a2);
    result = sub_2393FE3EC(a1, v15);
    if (!result)
    {
      return result;
    }

    if (sub_239403738(a1, "\n            Not After : ", 25) < 1)
    {
      return 0;
    }

    v17 = sub_239467CD8(a2);
    result = sub_2393FE3EC(a1, v17);
    if (!result)
    {
      return result;
    }

    if (sub_239403738(a1, "\n", 1) < 1)
    {
      return 0;
    }
  }

  if ((a4 & 0x40) == 0)
  {
    if (sub_239404AE0(a1, "        Subject:%c", v9) < 1)
    {
      return 0;
    }

    v18 = sub_239465D34(a2);
    if ((sub_239459710(a1, v18, v10, a3) & 0x80000000) != 0 || sub_239403738(a1, "\n", 1) < 1)
    {
      return 0;
    }
  }

  if ((a4 & 0x80) == 0)
  {
    if (sub_239403738(a1, "        Subject Public Key Info:\n", 33) < 1 || sub_239404AE0(a1, "%12sPublic Key Algorithm: ", "") < 1 || sub_2393FD954(a1, **v11[6]) < 1 || sub_239403848(a1, "\n") < 1)
    {
      return 0;
    }

    v19 = sub_239465F28(a2);
    if (v19)
    {
      sub_23941E2AC(a1, v19, 16);
    }

    else
    {
      sub_239404AE0(a1, "%12sUnable to load Public Key\n", "");
      sub_239403C64(a1);
    }
  }

  if ((a4 & 0x1000) != 0)
  {
    goto LABEL_64;
  }

  if (v11[7])
  {
    if (sub_239404AE0(a1, "%8sIssuer Unique ID: ", "") < 1)
    {
      return 0;
    }

    result = sub_239465534(a1, v11[7], 0xCu);
    if (!result)
    {
      return result;
    }
  }

  if (!v11[8])
  {
    goto LABEL_64;
  }

  if (sub_239404AE0(a1, "%8sSubject Unique ID: ", "") < 1)
  {
    return 0;
  }

  result = sub_239465534(a1, v11[8], 0xCu);
  if (!result)
  {
    return result;
  }

LABEL_64:
  if ((a4 & 0x100) == 0)
  {
    sub_2394620BC(a1, "X509v3 extensions", v11[9], a4, 8);
  }

  if ((a4 & 0x200) == 0 && sub_23945BB8C(a1, *(a2 + 8), *(a2 + 16)) < 1)
  {
    return 0;
  }

  if ((a4 & 0x400) != 0)
  {
    return 1;
  }

  result = sub_23945BD94(a1, *(a2 + 136), 0);
  if (result)
  {
    return 1;
  }

  return result;
}

BOOL sub_23945BB8C(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  if (sub_239403848(a1, "    Signature Algorithm: ") < 1 || sub_2393FD954(a1, *a2) < 1)
  {
    return 0;
  }

  if (sub_2394509E8(*a2) != 912 || (result = sub_23945B2B4(a1, a2, 9u)))
  {
    if (a3)
    {

      return sub_239465534(a1, a3, 9u);
    }

    else
    {
      return sub_239403848(a1, "\n") > 0;
    }
  }

  return result;
}

uint64_t sub_23945BC5C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_239467004(a2, 0, 0);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (!*v3)
  {
LABEL_16:
    v10 = 1;
    goto LABEL_19;
  }

  v5 = (v3 + 1);
  v6 = v3 + 2;
  v7 = v3 + 1;
  while (1)
  {
    v8 = *(v6 - 1);
    if (!*(v6 - 1))
    {
      break;
    }

    if (v8 == 47)
    {
      if (*v6 - 65 > 0x19 || (v9 = v6[1], v9 != 61) && ((v9 - 65) > 0x19 || v6[2] != 61))
      {
        v8 = 47;
        goto LABEL_15;
      }

      break;
    }

LABEL_15:
    ++v6;
    ++v7;
    if (!v8)
    {
      goto LABEL_16;
    }
  }

  if (v7 - v5 == sub_239403738(a1, v5, v7 - v5))
  {
    if (!*(v6 - 1))
    {
      goto LABEL_16;
    }

    if (sub_239403738(a1, ", ", 2) == 2)
    {
      v8 = *(v6 - 1);
      v5 = v6;
      goto LABEL_15;
    }
  }

  sub_2394170F4(11, 0, 7, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/t_x509.c", 325);
  v10 = 0;
LABEL_19:
  sub_239450144(v4);
  return v10;
}

uint64_t sub_23945BD94(uint64_t a1, uint64_t a2, int a3)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (*a2)
    {
      sub_239404AE0(a1, "%*sTrusted Uses:\n%*s", a3, "", a3 + 2, "");
      if (sub_239431484(*a2))
      {
        v6 = 0;
        v7 = 0;
        do
        {
          if (v7)
          {
            sub_239403848(a1, ", ");
          }

          v8 = sub_239457528(*a2, v6);
          sub_239451134(__s, 80, v8, 0);
          sub_239403848(a1, __s);
          ++v6;
          v9 = sub_239431484(*a2);
          v7 = 1;
        }

        while (v6 < v9);
      }

      sub_239403848(a1, "\n");
    }

    else
    {
      sub_239404AE0(a1, "%*sNo Trusted Uses.\n", a3, "");
    }

    if (*(a2 + 8))
    {
      sub_239404AE0(a1, "%*sRejected Uses:\n%*s", a3, "", a3 + 2, "");
      if (sub_239431484(*(a2 + 8)))
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if (v11)
          {
            sub_239403848(a1, ", ");
          }

          v12 = sub_239457528(*(a2 + 8), v10);
          sub_239451134(__s, 80, v12, 0);
          sub_239403848(a1, __s);
          ++v10;
          v13 = sub_239431484(*(a2 + 8));
          v11 = 1;
        }

        while (v10 < v13);
      }

      sub_239403848(a1, "\n");
    }

    else
    {
      sub_239404AE0(a1, "%*sNo Rejected Uses.\n", a3, "");
    }

    v14 = *(a2 + 16);
    if (v14)
    {
      sub_239404AE0(a1, "%*sAlias: %.*s\n", a3, "", *v14, *(v14 + 8));
    }

    if (*(a2 + 24))
    {
      sub_239404AE0(a1, "%*sKey Id: ", a3, "");
      v15 = *(a2 + 24);
      if (*v15 >= 1)
      {
        v16 = 0;
        do
        {
          if (v16)
          {
            v17 = ":";
          }

          else
          {
            v17 = "";
          }

          sub_239404AE0(a1, "%s%02X", v17, *(*(v15 + 1) + v16++));
          v15 = *(a2 + 24);
        }

        while (v16 < *v15);
      }

      sub_239403738(a1, "\n", 1);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return 1;
}

unint64_t *sub_23945C048(uint64_t a1, int **a2, unint64_t *a3)
{
  v12 = a3;
  if (!*a2)
  {
    goto LABEL_4;
  }

  v5 = sub_239463CC0(*(*a2 + 1), **a2);
  if (!v5)
  {
    sub_239450144(0);
    goto LABEL_11;
  }

  v6 = v5;
  v7 = sub_2394631D4("keyid", v5, &v12);
  sub_239450144(v6);
  if (v7)
  {
LABEL_4:
    v8 = a2[1];
    if (v8)
    {
      v9 = sub_23945C7F0(0, v8, v12);
      if (!v9)
      {
        goto LABEL_11;
      }

      v12 = v9;
    }

    v10 = a2[2];
    if (!v10 || sub_239463720("serial", v10, &v12))
    {
      return v12;
    }
  }

LABEL_11:
  if (!a3)
  {
    sub_239457574(v12, sub_23945C444, sub_239463380);
  }

  return 0;
}

uint64_t sub_23945C134(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if (sub_239431484(a3))
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = sub_239457528(a3, v4);
      v8 = v7[1];
      if (!strcmp(v8, "keyid"))
      {
        v10 = v7[2];
        if (v10)
        {
          if (!strcmp(v10, "always"))
          {
            v6 = 2;
          }

          else
          {
            v6 = 1;
          }
        }

        else
        {
          v6 = 1;
        }
      }

      else
      {
        if (strcmp(v8, "issuer"))
        {
          sub_2394170F4(20, 0, 159, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_akey.c", 160);
          v37 = v7[1];
          sub_2394171A0(2u, v15, v16, v17, v18, v19, v20, v21, "name=");
          return 0;
        }

        v9 = v7[2];
        if (v9)
        {
          if (!strcmp(v9, "always"))
          {
            v5 = 2;
          }

          else
          {
            v5 = 1;
          }
        }

        else
        {
          v5 = 1;
        }
      }

      if (++v4 >= sub_239431484(a3))
      {
        goto LABEL_18;
      }
    }
  }

  v6 = 0;
  v5 = 0;
LABEL_18:
  if (!a2)
  {
    goto LABEL_29;
  }

  v11 = *(a2 + 8);
  if (v11)
  {
    if (v6)
    {
      v12 = sub_239466114(*(a2 + 8), 0x52u, -1);
      if ((v12 & 0x80000000) != 0 || (v13 = sub_239466138(v11, v12)) == 0)
      {
        v14 = 0;
      }

      else
      {
        v14 = sub_239460968(v13);
      }

      if (v6 == 2 && !v14)
      {
        v23 = 155;
        v24 = 183;
        goto LABEL_30;
      }
    }

    else
    {
      v14 = 0;
    }

    v25 = v5 != 0;
    if (v14)
    {
      v25 = 0;
    }

    if (v5 == 2 || v25)
    {
      v30 = sub_239465C18(v11);
      v29 = sub_23946DE60(v30);
      v31 = sub_239465D40(v11);
      v32 = sub_2393FC990(v31);
      v27 = v32;
      if (v29 && v32)
      {
        v33 = sub_23945C468();
        if (v33)
        {
          v26 = v33;
          v34 = sub_2394574D8();
          if (v34)
          {
            v28 = v34;
            v35 = sub_23945FF04();
            if (v35)
            {
              v36 = v35;
              if (sub_2394579D0(v28, v35))
              {
                *v36 = 4;
                *(v36 + 8) = v29;
                goto LABEL_41;
              }
            }
          }
        }
      }

      else
      {
        sub_2394170F4(20, 0, 154, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_akey.c", 192);
      }
    }

    else
    {
      v26 = sub_23945C468();
      v27 = 0;
      v28 = 0;
      v29 = 0;
      if (v26)
      {
LABEL_41:
        v26[1] = v28;
        v26[2] = v27;
        *v26 = v14;
        return v26;
      }
    }

    sub_23946DE54(v29);
    sub_239402ECC(v27);
    sub_239402ECC(v14);
    return 0;
  }

  if (*a2 != 1)
  {
LABEL_29:
    v23 = 140;
    v24 = 170;
LABEL_30:
    sub_2394170F4(20, 0, v23, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_akey.c", v24);
    return 0;
  }

  return sub_23945C468();
}

unint64_t *sub_23945C484(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = sub_2394574D8();
  if (!v5 || !sub_239431484(a3))
  {
    return v5;
  }

  v6 = 0;
  while (1)
  {
    v7 = sub_239457528(a3, v6);
    if (sub_239463EE4(v7[1], "email"))
    {
      v8 = v7[2];
      if (v8)
      {
        if (!strcmp(v8, "copy"))
        {
          v12 = a2;
          v13 = v5;
          v14 = 0;
          goto LABEL_15;
        }
      }
    }

    if (!sub_239463EE4(v7[1], "email"))
    {
      break;
    }

    v10 = v7[2];
    if (!v10 || strcmp(v10, "move"))
    {
      break;
    }

    v12 = a2;
    v13 = v5;
    v14 = 1;
LABEL_15:
    if (!sub_23945D1FC(v12, v13, v14))
    {
      goto LABEL_19;
    }

LABEL_16:
    if (++v6 >= sub_239431484(a3))
    {
      return v5;
    }
  }

  v11 = sub_23945CE0C(0, v9, a2, v7, 0);
  if (v11 && sub_2394579D0(v5, v11))
  {
    goto LABEL_16;
  }

  sub_23945FF10(v11);
LABEL_19:
  sub_239457574(v5, sub_23945D334, sub_23945FF10);
  return 0;
}

unint64_t *sub_23945C5F0(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = sub_2394574D8();
  if (!v5 || !sub_239431484(a3))
  {
    return v5;
  }

  v6 = 0;
  while (1)
  {
    v7 = sub_239457528(a3, v6);
    if (!sub_239463EE4(v7[1], "issuer") || (v9 = v7[2]) == 0 || strcmp(v9, "copy"))
    {
      v10 = sub_23945CE0C(0, v8, a2, v7, 0);
      if (!v10 || !sub_2394579D0(v5, v10))
      {
        sub_23945FF10(v10);
        goto LABEL_26;
      }

      goto LABEL_9;
    }

    if (!a2)
    {
      goto LABEL_23;
    }

    if (*a2 != 1)
    {
      v11 = *(a2 + 8);
      if (!v11)
      {
LABEL_23:
        sub_2394170F4(20, 0, 141, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_alt.c", 305);
        goto LABEL_26;
      }

      v12 = sub_239466114(v11, 0x55u, -1);
      if ((v12 & 0x80000000) == 0)
      {
        break;
      }
    }

LABEL_9:
    if (++v6 >= sub_239431484(a3))
    {
      return v5;
    }
  }

  v13 = sub_239466138(*(a2 + 8), v12);
  if (!v13 || (v14 = sub_239460968(v13)) == 0)
  {
    sub_2394170F4(20, 0, 136, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_alt.c", 318);
    v15 = 0;
    goto LABEL_25;
  }

  v15 = v14;
  if (!sub_239431484(v14))
  {
LABEL_21:
    sub_23945FF40(v15);
    goto LABEL_9;
  }

  v16 = 0;
  while (1)
  {
    v17 = sub_239457528(v15, v16);
    if (!sub_2394579D0(v5, v17))
    {
      break;
    }

    sub_23945754C(v15, v16++, 0);
    if (v16 >= sub_239431484(v15))
    {
      goto LABEL_21;
    }
  }

LABEL_25:
  sub_23945FF40(v15);
LABEL_26:
  sub_239457574(v5, sub_23945D334, sub_23945FF10);
  return 0;
}

unint64_t *sub_23945C7F0(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (sub_239431484(a2))
  {
    v5 = 0;
    v6 = a3;
    while (1)
    {
      v7 = sub_239457528(a2, v5);
      v8 = sub_23945C8C8(v7, v7, v6);
      if (!(a3 | v8))
      {
        break;
      }

      v6 = v8;
      if (v8)
      {
        if (++v5 < sub_239431484(a2))
        {
          continue;
        }
      }

      return v6;
    }

    sub_239457574(v6, sub_23945D1F0, sub_239463380);
    return 0;
  }

  v6 = a3;
  if (a3)
  {
    return v6;
  }

  return sub_2394574D8();
}

unint64_t *sub_23945C8C8(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v3 = *a2;
  if (*a2 <= 3)
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        v5 = *(a2 + 8);
        v6 = "DNS";
        goto LABEL_21;
      }

      if (v3 != 3)
      {
        goto LABEL_33;
      }

      v4 = "X400Name";
    }

    else
    {
      if (v3)
      {
        if (v3 != 1)
        {
          goto LABEL_33;
        }

        v5 = *(a2 + 8);
        v6 = "email";
        goto LABEL_21;
      }

      v4 = "othername";
    }

LABEL_18:
    v7 = "<unsupported>";
    goto LABEL_32;
  }

  if (v3 <= 5)
  {
    if (v3 == 4)
    {
      result = sub_239467004(*(a2 + 8), __str, 256);
      if (!result)
      {
        goto LABEL_34;
      }

      v4 = "DirName";
      goto LABEL_31;
    }

    if (v3 != 5)
    {
      goto LABEL_33;
    }

    v4 = "EdiPartyName";
    goto LABEL_18;
  }

  if (v3 != 6)
  {
    if (v3 == 7)
    {
      v9 = *(a2 + 8);
      v10 = *(v9 + 1);
      v11 = *v9;
      if (v11 == 16)
      {
        __str[0] = 0;
        v13 = *v10;
        v12 = v10 + 3;
        snprintf(v16, 5uLL, "%X", __rev16(v13));
        sub_239450834(__str, v16, 0x100uLL);
        v14 = 7;
        do
        {
          sub_239450834(__str, ":", 0x100uLL);
          snprintf(v16, 5uLL, "%X", __rev16(*(v12 - 1)));
          sub_239450834(__str, v16, 0x100uLL);
          v12 += 2;
          --v14;
        }

        while (v14);
      }

      else
      {
        if (v11 != 4)
        {
          v4 = "IP Address";
          v7 = "<invalid>";
LABEL_32:
          if (sub_2394631D4(v4, v7, &v17))
          {
            goto LABEL_33;
          }

          goto LABEL_22;
        }

        snprintf(__str, 0x100uLL, "%d.%d.%d.%d", *v10, v10[1], v10[2], v10[3]);
      }

      v4 = "IP Address";
LABEL_31:
      v7 = __str;
      goto LABEL_32;
    }

    if (v3 == 8)
    {
      sub_2393FD94C(__str, 256, *(a2 + 8));
      v4 = "Registered ID";
      goto LABEL_31;
    }

LABEL_33:
    result = v17;
    goto LABEL_34;
  }

  v5 = *(a2 + 8);
  v6 = "URI";
LABEL_21:
  if (sub_239463368(v6, v5, &v17))
  {
    goto LABEL_33;
  }

LABEL_22:
  result = 0;
LABEL_34:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23945CB3C(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2 > 3)
  {
    if (v4 <= 5)
    {
      if (v4 == 4)
      {
        sub_239404AE0(a1, "DirName: ");
        sub_239459710(a1, *(a2 + 8), 0, 8520479);
      }

      else
      {
        sub_239404AE0(a1, "EdiPartyName:<unsupported>");
      }

      return 1;
    }

    if (v4 != 6)
    {
      if (v4 == 7)
      {
        v5 = *(a2 + 8);
        v6 = *(v5 + 1);
        v7 = *v5;
        if (v7 == 16)
        {
          sub_239404AE0(a1, "IP Address");
          v9 = 0;
          do
          {
            sub_239404AE0(a1, ":%X", __rev16(*&v6[v9]));
            v9 += 2;
          }

          while (v9 != 16);
          sub_239403848(a1, "\n");
        }

        else if (v7 == 4)
        {
          v8 = *v6;
          v12 = v6[2];
          v13 = v6[3];
          v11 = v6[1];
          sub_239404AE0(a1, "IP Address:%d.%d.%d.%d");
        }

        else
        {
          sub_239404AE0(a1, "IP Address:<invalid>");
        }
      }

      else if (v4 == 8)
      {
        sub_239404AE0(a1, "Registered ID");
        sub_2393FD954(a1, *(a2 + 8));
      }

      return 1;
    }

    sub_239404AE0(a1, "URI:");
LABEL_18:
    sub_2393FE2C0(a1, *(a2 + 8));
    return 1;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      sub_239404AE0(a1, "X400Name:<unsupported>");
      return 1;
    }

    sub_239404AE0(a1, "DNS:");
    goto LABEL_18;
  }

  if (!v4)
  {
    sub_239404AE0(a1, "othername:<unsupported>");
    return 1;
  }

  if (v4 == 1)
  {
    sub_239404AE0(a1, "email:");
    goto LABEL_18;
  }

  return 1;
}

unint64_t *sub_23945CD20(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = sub_2394574D8();
  if (v5 && sub_239431484(a3))
  {
    v6 = 0;
    while (1)
    {
      v7 = sub_239457528(a3, v6);
      v9 = sub_23945CE0C(0, v8, a2, v7, 0);
      if (!v9 || !sub_2394579D0(v5, v9))
      {
        break;
      }

      if (++v6 >= sub_239431484(a3))
      {
        return v5;
      }
    }

    sub_23945FF10(v9);
    sub_239457574(v5, sub_23945D334, sub_23945FF10);
    return 0;
  }

  return v5;
}

uint64_t sub_23945CE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *(a4 + 16);
  if (!v5)
  {
    sub_2394170F4(20, 0, 137, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_alt.c", 542);
    return 0;
  }

  v9 = *(a4 + 8);
  if (!sub_239463EE4(v9, "email"))
  {
    if (sub_239463EE4(v9, "URI"))
    {
      v10 = 6;
      goto LABEL_17;
    }

    if (sub_239463EE4(v9, "DNS"))
    {
      v10 = 2;
      goto LABEL_17;
    }

    if (sub_239463EE4(v9, "RID"))
    {
      v10 = 8;
      goto LABEL_17;
    }

    if (sub_239463EE4(v9, "IP"))
    {
      v10 = 7;
      goto LABEL_17;
    }

    if (sub_239463EE4(v9, "dirName"))
    {
      v10 = 4;
      goto LABEL_17;
    }

    if (sub_239463EE4(v9, "otherName"))
    {
      v10 = 0;
      goto LABEL_17;
    }

    sub_2394170F4(20, 0, 160, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_alt.c", 562);
    sub_2394171A0(2u, v43, v44, v45, v46, v47, v48, v49, "name=");
    return 0;
  }

  v10 = 1;
LABEL_17:
  v11 = a1;
  if (a1 || (v11 = sub_23945FF04()) != 0)
  {
    if (v10 <= 5)
    {
      if ((v10 - 1) >= 2)
      {
        if (v10)
        {
          if (v10 == 4)
          {
            v12 = sub_23946DE48();
            if (v12)
            {
              v13 = sub_23945E07C(a3, v5);
              if (v13)
              {
                if (sub_239464C30(v12, v13, 4097))
                {
                  *v11 = 4;
LABEL_42:
                  *(v11 + 8) = v12;
                  return v11;
                }
              }

              else
              {
                sub_2394170F4(20, 0, 153, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_alt.c", 617);
                sub_2394171A0(2u, v35, v36, v37, v38, v39, v40, v41, "section=");
              }
            }

            sub_23946DE54(v12);
            v17 = 105;
            v18 = 510;
          }

          else
          {
            v17 = 161;
            v18 = 522;
          }
        }

        else
        {
          v19 = strchr(v5, 59);
          if (v19)
          {
            v20 = v19;
            v21 = sub_23945FEBC();
            if (v21)
            {
              v12 = v21;
              v22 = sub_23945071C(v5, v20 - v5);
              if (v22)
              {
                v23 = v22;
                sub_2393FDCD8(*v12);
                *v12 = sub_239450E0C(v23, 0);
                sub_239450144(v23);
                if (*v12)
                {
                  sub_2394030C4(*(v12 + 8));
                  v24 = sub_239458844(v20 + 1, a3);
                  *(v12 + 8) = v24;
                  if (v24)
                  {
                    *v11 = 0;
                    goto LABEL_42;
                  }
                }
              }

              sub_23945FEC8(v12);
            }
          }

          v17 = 148;
          v18 = 517;
        }

        sub_2394170F4(20, 0, v17, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_alt.c", v18);
        goto LABEL_55;
      }

      goto LABEL_29;
    }

    if (v10 == 8)
    {
      v16 = sub_239450E0C(v5, 0);
      if (v16)
      {
        *v11 = 8;
        *(v11 + 8) = v16;
        return v11;
      }

      v26 = 101;
      v27 = 485;
      goto LABEL_49;
    }

    if (v10 != 7)
    {
LABEL_29:
      v14 = sub_239402FA8();
      if (v14)
      {
        v15 = strlen(v5);
        if (sub_2393FF8AC(v14, v5, v15))
        {
          *v11 = v10;
          *(v11 + 8) = v14;
          return v11;
        }
      }

      sub_2393FFA58(v14);
LABEL_55:
      if (!a1)
      {
        sub_23945FF10(v11);
      }

      return 0;
    }

    *v11 = 7;
    if (a5)
    {
      v25 = sub_239464A5C(v5);
    }

    else
    {
      v25 = sub_2394649C8(v5);
    }

    *(v11 + 8) = v25;
    if (!v25)
    {
      v26 = 100;
      v27 = 502;
LABEL_49:
      sub_2394170F4(20, 0, v26, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_alt.c", v27);
      sub_2394171A0(2u, v28, v29, v30, v31, v32, v33, v34, "value=");
      goto LABEL_55;
    }
  }

  return v11;
}

uint64_t sub_23945D1FC(uint64_t a1, unint64_t *a2, int a3)
{
  if (a1)
  {
    if (*a1 == 1)
    {
      return 1;
    }

    if (*(a1 + 16))
    {
      v6 = sub_239465D34(*(a1 + 16));
      goto LABEL_8;
    }

    v7 = *(a1 + 24);
    if (v7)
    {
      v6 = sub_2394673B4(v7);
LABEL_8:
      v8 = v6;
      v9 = -1;
      while (1)
      {
        v10 = sub_23946B424(v8, 0x30u, v9);
        if ((v10 & 0x80000000) != 0)
        {
          return 1;
        }

        v9 = v10;
        v11 = sub_23946B39C(v8, v10);
        v12 = sub_23946B390(v11);
        v13 = sub_2393FF9A4(v12);
        if (a3)
        {
          sub_23946B480(v8, v9);
          sub_23946DE14(v11);
          --v9;
        }

        if (!v13)
        {
          goto LABEL_17;
        }

        v14 = sub_23945FF04();
        v15 = v14;
        if (!v14)
        {
          goto LABEL_18;
        }

        *(v14 + 8) = v13;
        *v14 = 1;
        if (!sub_2394579D0(a2, v14))
        {
          v13 = 0;
          goto LABEL_18;
        }
      }
    }
  }

  sub_2394170F4(20, 0, 145, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_alt.c", 383);
  v13 = 0;
LABEL_17:
  v15 = 0;
LABEL_18:
  sub_23945FF10(v15);
  sub_239402ECC(v13);
  return 0;
}

unint64_t *sub_23945D340(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = a3;
  sub_2394633D4("CA", *a2, &v5);
  sub_239463720("pathlen", *(a2 + 8), &v5);
  return v5;
}

uint64_t sub_23945D398(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = sub_239402AC0(byte_278A81260);
  if (!v4 || !sub_239431484(a3))
  {
    return v4;
  }

  v5 = 0;
  while (1)
  {
    v6 = sub_239457528(a3, v5);
    v7 = v6[1];
    if (*v7 != 67 || *(v7 + 1) != 65 || *(v7 + 2))
    {
      break;
    }

    if (!sub_2394638C0(v6, v4))
    {
      goto LABEL_14;
    }

LABEL_9:
    if (++v5 >= sub_239431484(a3))
    {
      return v4;
    }
  }

  if (!strcmp(v7, "pathlen"))
  {
    if (!sub_239463954(v6, (v4 + 8)))
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  sub_2394170F4(20, 0, 123, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_bcons.c", 126);
  v18 = v6[2];
  v17 = v6[1];
  v16 = *v6;
  sub_2394171A0(6u, v8, v9, v10, v11, v12, v13, v14, "section:");
LABEL_14:
  sub_2394026C0(v4, byte_278A81260);
  return 0;
}

unint64_t *sub_23945D510(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v7 = a3;
  v3 = *(a1 + 96);
  if (*(v3 + 8))
  {
    do
    {
      if (sub_2393FC41C(a2, *v3))
      {
        sub_2394631D4(*(v3 + 8), 0, &v7);
      }

      v5 = *(v3 + 32);
      v3 += 24;
    }

    while (v5);
    return v7;
  }

  return a3;
}

void *sub_23945D57C(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = sub_239402F28();
  if (v5 && sub_239431484(a3))
  {
    v6 = 0;
    while (1)
    {
      v7 = sub_239457528(a3, v6);
      v8 = v7;
      v9 = *(a1 + 96);
      v10 = *(v9 + 8);
      if (!v10)
      {
        break;
      }

      v11 = v7[1];
      v12 = (v9 + 16);
      while (strcmp(*v12, v11) && strcmp(v10, v11))
      {
        v10 = v12[2];
        v12 += 3;
        if (!v10)
        {
          goto LABEL_14;
        }
      }

      if (!sub_2393FC30C(v5, *(v12 - 4), 1))
      {
        goto LABEL_15;
      }

      if (!*(v12 - 1))
      {
        break;
      }

      if (++v6 >= sub_239431484(a3))
      {
        return v5;
      }
    }

LABEL_14:
    sub_2394170F4(20, 0, 156, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_bitst.c", 123);
    v23 = v8[2];
    v22 = v8[1];
    v21 = *v8;
    sub_2394171A0(6u, v13, v14, v15, v16, v17, v18, v19, "section:");
LABEL_15:
    sub_239402ECC(v5);
    return 0;
  }

  return v5;
}

uint64_t sub_23945D6C4(uint64_t a1, __int128 *a2, const char *a3, const char *a4)
{
  v5 = a2;
  v21 = a4;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  if (!a2)
  {
    v18 = 0uLL;
    v19 = 0uLL;
    v5 = &v18;
    *&v20 = 0;
    *(&v20 + 1) = a1;
  }

  v7 = sub_23945D7DC(&v21);
  v8 = sub_23945D848(&v21);
  if (v8)
  {
    return sub_23945D8F8(a3, v21, v7, v8, v5);
  }

  v10 = sub_239450B64(a3);
  result = sub_23945DAB4(a1, v5, v10, v7, v21);
  if (!result)
  {
    sub_2394170F4(20, 0, 110, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_conf.c", 102);
    sub_2394171A0(4u, v11, v12, v13, v14, v15, v16, v17, "name=");
    return 0;
  }

  return result;
}

double sub_23945D7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *a1 = a6;
  return result;
}

uint64_t sub_23945D7DC(const char **a1)
{
  v2 = *a1;
  if (strlen(*a1) < 9 || strncmp(v2, "critical,", 9uLL))
  {
    return 0;
  }

  v4 = v2 + 8;
  do
  {
    v5 = *++v4;
  }

  while (sub_23945046C(v5));
  *a1 = v4;
  return 1;
}

uint64_t sub_23945D848(const char **a1)
{
  v2 = *a1;
  v3 = strlen(*a1);
  if (v3 < 4)
  {
    return 0;
  }

  v4 = v3;
  v5 = 4;
  if (!strncmp(v2, "DER:", 4uLL))
  {
    v6 = 1;
  }

  else
  {
    if (v4 == 4)
    {
      return 0;
    }

    v5 = 5;
    if (strncmp(v2, "ASN1:", 5uLL))
    {
      return 0;
    }

    v6 = 2;
  }

  v7 = &v2[v5 - 1];
  do
  {
    v8 = *++v7;
  }

  while (sub_23945046C(v8));
  *a1 = v7;
  return v6;
}

uint64_t sub_23945D8F8(const char *a1, char *a2, int a3, int a4, uint64_t a5)
{
  v26 = 0;
  v9 = sub_239450E0C(a1, 0);
  if (!v9)
  {
    sub_2394170F4(20, 0, 113, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_conf.c", 275);
    v18 = "name=";
LABEL_15:
    sub_2394171A0(2u, v11, v12, v13, v14, v15, v16, v17, v18);
    v10 = 0;
    goto LABEL_16;
  }

  if (a4 == 2)
  {
    v19 = sub_239458844(a2, a5);
    if (!v19)
    {
      goto LABEL_14;
    }

    v20 = v19;
    v27 = 0;
    v21 = sub_2394030AC(v19, &v27);
    sub_2394030C4(v20);
    if ((v21 & 0x80000000) != 0)
    {
      goto LABEL_14;
    }

    v26 = v21;
    v10 = v27;
    if (!v27)
    {
      goto LABEL_14;
    }
  }

  else if (a4 != 1 || (v10 = sub_239463DB0(a2, &v26)) == 0)
  {
LABEL_14:
    sub_2394170F4(20, 0, 116, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_conf.c", 287);
    v18 = "value=";
    goto LABEL_15;
  }

  if (v26 >> 31)
  {
    sub_2394170F4(20, 0, 69, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_conf.c", 293);
LABEL_16:
    v23 = 0;
    goto LABEL_17;
  }

  v22 = sub_239402EC4();
  v23 = v22;
  if (!v22)
  {
LABEL_17:
    v24 = 0;
    goto LABEL_18;
  }

  sub_2393FFA9C(v22, v10, v26);
  v24 = sub_2394683B8(0, v9, a3, v23);
  v10 = 0;
LABEL_18:
  sub_2393FDCD8(v9);
  sub_239402ECC(v23);
  sub_239450144(v10);
  return v24;
}

uint64_t sub_23945DAB4(uint64_t a1, uint64_t a2, unsigned int a3, int a4, const char *a5)
{
  if (!a3)
  {
    v14 = 158;
    v15 = 137;
    goto LABEL_10;
  }

  v10 = sub_239460748(a3);
  if (!v10)
  {
    v14 = 157;
    v15 = 141;
    goto LABEL_10;
  }

  v11 = v10;
  if (v10[9])
  {
    if (*a5 != 64)
    {
      v12 = sub_2394639E4(a5);
      v13 = v12;
      if (!v12)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    if (a1)
    {
      v12 = sub_239409ED8(a1, (a5 + 1));
      v13 = 0;
      if (!v12)
      {
        goto LABEL_19;
      }

LABEL_16:
      if (sub_239431484(v12))
      {
        v19 = (*(v11 + 72))(v11, a2, v12);
        sub_239457574(v13, sub_23945E0C8, sub_239463380);
        if (v19)
        {
          goto LABEL_18;
        }

        return 0;
      }

LABEL_19:
      sub_2394170F4(20, 0, 121, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_conf.c", 160);
      sub_239451004(a3);
      sub_2394171A0(4u, v21, v22, v23, v24, v25, v26, v27, "name=");
      sub_239457574(v13, sub_23945E0C8, sub_239463380);
      return 0;
    }

    v14 = 139;
    v15 = 151;
LABEL_10:
    sub_2394170F4(20, 0, v14, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_conf.c", v15);
    return 0;
  }

  v17 = v10[7];
  if (!v17)
  {
    v17 = v10[11];
    if (!v17)
    {
      sub_2394170F4(20, 0, 115, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_conf.c", 187);
      sub_239451004(a3);
      sub_2394171A0(2u, v28, v29, v30, v31, v32, v33, v34, "name=");
      return 0;
    }

    if (!*(a2 + 40))
    {
      v14 = 139;
      v15 = 180;
      goto LABEL_10;
    }
  }

  v18 = v17(v10, a2, a5);
  if (!v18)
  {
    return 0;
  }

  v19 = v18;
LABEL_18:
  v20 = sub_23945DE68(v11, a3, a4, v19);
  sub_2394026C0(v19, *(v11 + 8));
  return v20;
}

uint64_t sub_23945DD30(uint64_t a1, __int128 *a2, unsigned int a3, const char *a4)
{
  v5 = a2;
  v15 = a4;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  if (!a2)
  {
    v12 = 0uLL;
    v13 = 0uLL;
    v5 = &v12;
    *&v14 = 0;
    *(&v14 + 1) = a1;
  }

  v7 = sub_23945D7DC(&v15);
  v8 = sub_23945D848(&v15);
  if (!v8)
  {
    return sub_23945DAB4(a1, v5, a3, v7, v15);
  }

  v9 = v8;
  v10 = sub_239451004(a3);
  return sub_23945D8F8(v10, v15, v7, v9, v5);
}

uint64_t sub_23945DDE4(unsigned int a1, int a2, uint64_t a3)
{
  v6 = sub_239460748(a1);
  if (v6)
  {

    return sub_23945DE68(v6, a1, a2, a3);
  }

  else
  {
    sub_2394170F4(20, 0, 157, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_conf.c", 224);
    return 0;
  }
}

uint64_t sub_23945DE68(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v12 = 0;
  v6 = sub_2394018FC(a4, &v12, *(a1 + 8));
  if (v6 < 0)
  {
    return 0;
  }

  v7 = v6;
  v8 = sub_239402EC4();
  if (!v8)
  {
    sub_239450144(v12);
    return 0;
  }

  v9 = v8;
  sub_2393FFA9C(v8, v12, v7);
  v10 = sub_239468330(0, a2, a3, v9);
  sub_239402ECC(v9);
  return v10;
}

uint64_t sub_23945DF04(uint64_t a1, __int128 *a2, uint64_t a3, unint64_t **a4)
{
  result = sub_239409ED8(a1, a3);
  if (result)
  {
    v8 = result;
    if (sub_239431484(result))
    {
      v9 = 0;
      while (1)
      {
        v10 = sub_239457528(v8, v9);
        v11 = sub_23945D6C4(a1, a2, v10[1], v10[2]);
        if (!v11)
        {
          break;
        }

        v12 = v11;
        if (a4)
        {
          v13 = sub_239468248(a4, v11, -1);
          sub_23946DDD4(v12);
          if (!v13)
          {
            return 0;
          }
        }

        else
        {
          sub_23946DDD4(v11);
        }

        if (++v9 >= sub_239431484(v8))
        {
          return 1;
        }
      }

      sub_23946DDD4(0);
      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_23945DFD8(uint64_t a1, __int128 *a2, uint64_t a3, unint64_t **a4)
{
  if (a4)
  {
    a4 = (*a4 + 9);
  }

  return sub_23945DF04(a1, a2, a3, a4);
}

uint64_t sub_23945DFE8(uint64_t a1, __int128 *a2, uint64_t a3, unint64_t **a4)
{
  if (a4)
  {
    a4 = (*a4 + 6);
  }

  return sub_23945DF04(a1, a2, a3, a4);
}

uint64_t sub_23945DFF8(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  if (a4)
  {
    v5 = &v9;
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_23945DF04(a1, a2, a3, v5);
  v7 = v6;
  if (a4 && v6)
  {
    v7 = sub_239467744(a4, v9);
    sub_239457574(v9, sub_23945E0D4, sub_23946DDD4);
  }

  return v7;
}

uint64_t sub_23945E07C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {

    return sub_239409ED8(v3, a2);
  }

  else
  {
    sub_2394170F4(20, 0, 147, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_conf.c", 398);
    return 0;
  }
}

uint64_t sub_23945E0E0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a2;
  if (sub_239431484(a2))
  {
    v6 = 0;
    v7 = a4 + 4;
    v28 = v5;
    do
    {
      v30 = v6;
      v8 = sub_239457528(v5, v6);
      sub_239404AE0(a3, "%*sPolicy: ", a4, "");
      sub_2393FD954(a3, *v8);
      sub_239403848(a3, "\n");
      v9 = v8[1];
      if (v9 && sub_239431484(v8[1]))
      {
        v10 = 0;
        do
        {
          v11 = sub_239457528(v9, v10);
          v12 = sub_2394509E8(*v11);
          if (v12 == 165)
          {
            sub_239404AE0(a3, "%*sUser Notice:\n", a4 + 2, "");
            v14 = v11[1];
            v15 = *v14;
            if (*v14)
            {
              sub_239404AE0(a3, "%*sOrganization: %.*s\n", v7, "", **v15, *(*v15 + 8));
              v16 = sub_239431484(*(v15 + 8));
              v17 = "s";
              if (v16 <= 1)
              {
                v17 = "";
              }

              sub_239404AE0(a3, "%*sNumber%s: ", v7, "", v17);
              if (sub_239431484(*(v15 + 8)))
              {
                v18 = 0;
                do
                {
                  v19 = sub_239457528(*(v15 + 8), v18);
                  if (v18)
                  {
                    sub_239403848(a3, ", ");
                  }

                  if (v19)
                  {
                    v20 = sub_239463540(0, v19);
                    if (!v20)
                    {
                      goto LABEL_26;
                    }

                    v21 = v20;
                    sub_239403848(a3, v20);
                    sub_239450144(v21);
                  }

                  else
                  {
                    sub_239403848(a3, "(null)");
                  }

                  ++v18;
                }

                while (v18 < sub_239431484(*(v15 + 8)));
              }

              sub_239403848(a3, "\n");
            }

            v22 = v14[1];
            if (v22)
            {
              v25 = *v22;
              v27 = *(v22 + 1);
              sub_239404AE0(a3, "%*sExplicit Text: %.*s\n");
            }
          }

          else if (v12 == 164)
          {
            v13 = v11[1];
            v24 = *v13;
            v26 = *(v13 + 1);
            sub_239404AE0(a3, "%*sCPS: %.*s\n");
          }

          else
          {
            sub_239404AE0(a3, "%*sUnknown Qualifier: ", v7, "");
            sub_2393FD954(a3, *v11);
            sub_239403848(a3, "\n");
          }

LABEL_26:
          ++v10;
        }

        while (v10 < sub_239431484(v9));
      }

      v6 = v30 + 1;
      v5 = v28;
    }

    while (v30 + 1 < sub_239431484(v28));
  }

  return 1;
}

unint64_t *sub_23945E3B0(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = sub_2394574D8();
  if (!v5)
  {
    return v5;
  }

  v6 = sub_2394639E4(a3);
  v7 = v6;
  if (!v6)
  {
    sub_2394170F4(20, 0, 20, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_cpols.c", 165);
    goto LABEL_99;
  }

  if (!sub_239431484(v6))
  {
LABEL_75:
    sub_239457574(v7, sub_23945EC94, sub_239463380);
    return v5;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    v10 = sub_239457528(v7, v9);
    v11 = v10;
    if (v10[2] || (v12 = v10[1]) == 0)
    {
      v53 = 131;
      v54 = 172;
      goto LABEL_78;
    }

    if (strcmp(v10[1], "ia5org"))
    {
      break;
    }

    v8 = 1;
LABEL_74:
    if (++v9 >= sub_239431484(v7))
    {
      goto LABEL_75;
    }
  }

  if (*v12 != 64)
  {
    v50 = sub_239450E0C(v12, 0);
    if (v50)
    {
      v51 = v50;
      v52 = sub_239402AC0(byte_278A81528);
      if (!v52)
      {
        sub_2393FDCD8(v51);
        goto LABEL_99;
      }

      v15 = v52;
      *v52 = v51;
      goto LABEL_73;
    }

    v53 = 129;
    v54 = 196;
LABEL_78:
    sub_2394170F4(20, 0, v53, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_cpols.c", v54);
    v98 = v11[2];
    v94 = v11[1];
    v90 = *v11;
    sub_2394171A0(6u, v55, v56, v57, v58, v59, v60, v61, "section:");
    goto LABEL_99;
  }

  v13 = sub_23945E07C(a2, (v12 + 1));
  if (!v13)
  {
    v53 = 134;
    v54 = 184;
    goto LABEL_78;
  }

  v14 = v13;
  v107 = v8;
  v15 = sub_239402AC0(byte_278A81528);
  if (!v15)
  {
    goto LABEL_98;
  }

  if (!sub_239431484(v14))
  {
LABEL_71:
    if (!*v15)
    {
      v64 = 142;
      v65 = 292;
LABEL_97:
      sub_2394170F4(20, 0, v64, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_cpols.c", v65);
      goto LABEL_98;
    }

    v8 = v107;
LABEL_73:
    if (!sub_2394579D0(v5, v15))
    {
      goto LABEL_98;
    }

    goto LABEL_74;
  }

  v16 = 0;
  if (v8)
  {
    v17 = 22;
  }

  else
  {
    v17 = 26;
  }

  v104 = v17;
  while (1)
  {
    v18 = sub_239457528(v14, v16);
    v19 = v18[1];
    if (!strcmp(v19, "policyIdentifier"))
    {
      v26 = sub_239450E0C(v18[2], 0);
      if (v26)
      {
        *v15 = v26;
        goto LABEL_28;
      }

      v62 = 129;
      v63 = 233;
      goto LABEL_93;
    }

    if (!sub_239463EE4(v19, "CPS"))
    {
      break;
    }

    if (!*(v15 + 8))
    {
      *(v15 + 8) = sub_2394574D8();
    }

    v20 = sub_239402AC0(byte_278A81598);
    if (!v20)
    {
      goto LABEL_98;
    }

    v21 = v20;
    if (!sub_2394579D0(*(v15 + 8), v20))
    {
      goto LABEL_98;
    }

    v22 = sub_239450F00(0xA4u);
    *v21 = v22;
    if (!v22)
    {
      v64 = 68;
      v65 = 251;
      goto LABEL_97;
    }

    v23 = sub_239402FA8();
    v21[1] = v23;
    if (!v23)
    {
      goto LABEL_98;
    }

    v24 = v23;
    v25 = strlen(v18[2]);
    if (!sub_2393FF8AC(v24, v18[2], v25))
    {
      goto LABEL_98;
    }

LABEL_28:
    if (++v16 >= sub_239431484(v14))
    {
      goto LABEL_71;
    }
  }

  if (!sub_239463EE4(v18[1], "userNotice"))
  {
    v62 = 130;
    v63 = 285;
LABEL_93:
    sub_2394170F4(20, 0, v62, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_cpols.c", v63);
    v100 = v18[2];
    v96 = v18[1];
    v92 = *v18;
    sub_2394171A0(6u, v73, v74, v75, v76, v77, v78, v79, "section:");
    goto LABEL_98;
  }

  v27 = v18[2];
  if (*v27 != 64)
  {
    v62 = 111;
    v63 = 263;
    goto LABEL_93;
  }

  v28 = sub_23945E07C(a2, (v27 + 1));
  if (!v28)
  {
    v62 = 134;
    v63 = 270;
    goto LABEL_93;
  }

  v105 = v28;
  v103 = a2;
  v106 = sub_239402AC0(byte_278A81598);
  if (!v106)
  {
    goto LABEL_83;
  }

  v29 = sub_239450F00(0xA5u);
  *v106 = v29;
  if (v29)
  {
    v108 = sub_239402AC0(byte_278A81608);
    if (!v108)
    {
      goto LABEL_83;
    }

    v30 = v105;
    v106[1] = v108;
    if (sub_239431484(v105))
    {
      v31 = 0;
      v102 = v7;
      while (1)
      {
        v32 = sub_239457528(v30, v31);
        v33 = v32[1];
        if (!strcmp(v33, "explicitText"))
        {
          break;
        }

        if (!strcmp(v33, "organization"))
        {
          v45 = *v108;
          if (!*v108)
          {
            v45 = sub_239402AC0(byte_278A81678);
            if (!v45)
            {
              goto LABEL_83;
            }

            *v108 = v45;
          }

          *(*v45 + 4) = v104;
          v44 = *v45;
LABEL_58:
          v46 = v32[2];
          v47 = strlen(v46);
          if (!sub_2393FF8AC(v44, v46, v47))
          {
            goto LABEL_83;
          }

          goto LABEL_59;
        }

        if (strcmp(v33, "noticeNumbers"))
        {
          sub_2394170F4(20, 0, 130, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_cpols.c", 373);
          v101 = v32[2];
          v97 = v32[1];
          v93 = *v32;
          sub_2394171A0(6u, v82, v83, v84, v85, v86, v87, v88, "section:");
          goto LABEL_83;
        }

        v34 = *v108;
        if (!*v108)
        {
          v35 = sub_239402AC0(byte_278A81678);
          if (!v35)
          {
            goto LABEL_83;
          }

          v34 = v35;
          *v108 = v35;
        }

        v36 = sub_2394639E4(v32[2]);
        v37 = v36;
        if (!v36 || !sub_239431484(v36))
        {
          sub_2394170F4(20, 0, 128, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_cpols.c", 362);
          v99 = v32[2];
          v95 = v32[1];
          v91 = *v32;
          sub_2394171A0(6u, v66, v67, v68, v69, v70, v71, v72, "section:");
LABEL_82:
          sub_239457574(v37, sub_23945EC94, sub_239463380);
          goto LABEL_83;
        }

        v38 = *(v34 + 8);
        if (sub_239431484(v37))
        {
          v39 = 0;
          while (1)
          {
            v40 = sub_239457528(v37, v39);
            v41 = sub_23946359C(0, v40[1]);
            if (!v41)
            {
              sub_2394170F4(20, 0, 127, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_cpols.c", 398);
              goto LABEL_81;
            }

            v42 = v41;
            if (!sub_2394579D0(v38, v41))
            {
              break;
            }

            if (++v39 >= sub_239431484(v37))
            {
              goto LABEL_51;
            }
          }

          sub_239402ECC(v42);
LABEL_81:
          v7 = v102;
          goto LABEL_82;
        }

LABEL_51:
        sub_239457574(v37, sub_23945EC94, sub_239463380);
        v7 = v102;
LABEL_59:
        ++v31;
        v30 = v105;
        if (v31 >= sub_239431484(v105))
        {
          goto LABEL_60;
        }
      }

      v43 = sub_239403028();
      v108[1] = v43;
      if (!v43)
      {
        goto LABEL_83;
      }

      v44 = v43;
      goto LABEL_58;
    }

LABEL_60:
    v48 = *v108;
    if (!*v108 || v48[1] && *v48)
    {
      v49 = *(v15 + 8);
      if (!v49)
      {
        v49 = sub_2394574D8();
        *(v15 + 8) = v49;
      }

      a2 = v103;
      if (!sub_2394579D0(v49, v106))
      {
        goto LABEL_98;
      }

      goto LABEL_28;
    }

    v80 = 138;
    v81 = 381;
  }

  else
  {
    v80 = 68;
    v81 = 313;
  }

  sub_2394170F4(20, 0, v80, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_cpols.c", v81);
LABEL_83:
  sub_2394026C0(v106, byte_278A81598);
LABEL_98:
  sub_2394026C0(v15, byte_278A81528);
LABEL_99:
  sub_239457574(v7, sub_23945EC94, sub_239463380);
  sub_239457574(v5, sub_23945ECA0, sub_23945EC40);
  return 0;
}

unint64_t *sub_23945ECAC(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v6 = sub_2394574D8();
  if (v6)
  {
    if (sub_239431484(a3))
    {
      v7 = 0;
      v8 = byte_278A81850;
      v22 = a1;
      do
      {
        v9 = sub_239457528(a3, v7);
        if (v9[2])
        {
          v10 = sub_23945CDF8(a1, a2, v9);
          if (!v10)
          {
            v12 = 0;
            goto LABEL_32;
          }

          v11 = sub_23945FF34();
          v12 = v11;
          if (!v11)
          {
            goto LABEL_32;
          }

          if (!sub_2394579D0(v11, v10))
          {
            goto LABEL_32;
          }

          v10 = sub_239402AC0(v8);
          if (!v10)
          {
            goto LABEL_32;
          }

          if (!sub_2394579D0(v6, v10))
          {
            sub_2394026C0(v10, byte_278A81850);
            goto LABEL_31;
          }

          v13 = sub_239402AC0(byte_278A817C0);
          *v10 = v13;
          if (!v13)
          {
            goto LABEL_31;
          }

          *(v13 + 8) = v12;
          **v10 = 0;
        }

        else
        {
          v12 = sub_23945E07C(a2, v9[1]);
          if (!v12)
          {
            goto LABEL_31;
          }

          v14 = v8;
          v15 = sub_239402AC0(v8);
          if (!v15)
          {
            goto LABEL_29;
          }

          if (sub_239431484(v12))
          {
            v16 = 0;
            do
            {
              v17 = sub_239457528(v12, v16);
              v18 = sub_23945F4E0(v15, a2, v17);
              if (v18 <= 0)
              {
                if (v18 < 0)
                {
                  goto LABEL_29;
                }

                v19 = v17[1];
                if (!strcmp(v19, "reasons"))
                {
                  if (!sub_23945F710((v15 + 8), v17[2]))
                  {
                    goto LABEL_29;
                  }
                }

                else if (!strcmp(v19, "CRLissuer"))
                {
                  sub_23945FF40(*(v15 + 16));
                  v20 = sub_23945F840(a2, v17[2]);
                  *(v15 + 16) = v20;
                  if (!v20)
                  {
                    goto LABEL_29;
                  }
                }
              }
            }

            while (++v16 < sub_239431484(v12));
          }

          v8 = v14;
          a1 = v22;
          if (!sub_2394579D0(v6, v15))
          {
LABEL_29:
            sub_2394026C0(v15, byte_278A81850);
            goto LABEL_30;
          }
        }

        ++v7;
      }

      while (v7 < sub_239431484(a3));
    }
  }

  else
  {
LABEL_30:
    v12 = 0;
LABEL_31:
    v10 = 0;
LABEL_32:
    sub_23945FF10(v10);
    sub_23945FF40(v12);
    sub_239457574(v6, sub_23945F91C, sub_23945F068);
    return 0;
  }

  return v6;
}

uint64_t sub_23945EF3C(uint64_t a1, unint64_t *a2, uint64_t a3, int a4)
{
  if (sub_239431484(a2))
  {
    v7 = 0;
    do
    {
      sub_239403848(a3, "\n");
      v8 = sub_239457528(a2, v7);
      if (*v8)
      {
        sub_23945F968(a3, *v8, a4);
      }

      v9 = v8[1];
      if (v9)
      {
        sub_23945FA50(a3, "Reasons", v9, a4);
      }

      if (v8[2])
      {
        sub_239404AE0(a3, "%*sCRL Issuer:\n", a4, "");
        sub_23945FB48(a3, v8[2], a4);
      }

      ++v7;
    }

    while (v7 < sub_239431484(a2));
  }

  return 1;
}

uint64_t sub_23945F0D4(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = sub_239402AC0(byte_278A81960);
  if (v5)
  {
    if (sub_239431484(a3))
    {
      for (i = 0; i < sub_239431484(a3); ++i)
      {
        v7 = sub_239457528(a3, i);
        v8 = v7[1];
        v9 = v7[2];
        v10 = sub_23945F4E0(v5, a2, v7);
        if (v10 <= 0)
        {
          if (v10 < 0)
          {
            goto LABEL_21;
          }

          if (!strcmp(v8, "onlyuser"))
          {
            v11 = (v5 + 8);
            goto LABEL_17;
          }

          if (!strcmp(v8, "onlyCA"))
          {
            v11 = (v5 + 12);
            goto LABEL_17;
          }

          if (!strcmp(v8, "onlyAA"))
          {
            v11 = (v5 + 28);
            goto LABEL_17;
          }

          if (!strcmp(v8, "indirectCRL"))
          {
            v11 = (v5 + 24);
LABEL_17:
            if (!sub_2394638C0(v7, v11))
            {
              goto LABEL_21;
            }

            continue;
          }

          if (strcmp(v8, "onlysomereasons"))
          {
            sub_2394170F4(20, 0, 123, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_crld.c", 483);
            v22 = v7[2];
            v21 = v7[1];
            v20 = *v7;
            sub_2394171A0(6u, v12, v13, v14, v15, v16, v17, v18, "section:");
            goto LABEL_21;
          }

          if (!sub_23945F710((v5 + 16), v9))
          {
            goto LABEL_21;
          }
        }
      }
    }
  }

  else
  {
LABEL_21:
    sub_2394026C0(v5, byte_278A81960);
    return 0;
  }

  return v5;
}

uint64_t sub_23945F2A0(int a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *a2;
  if (v7)
  {
    sub_23945F968(a3, v7, a4);
  }

  if (*(a2 + 8) >= 1)
  {
    sub_239404AE0(a3, "%*sOnly User Certificates\n", a4, "");
  }

  if (*(a2 + 12) >= 1)
  {
    sub_239404AE0(a3, "%*sOnly CA Certificates\n", a4, "");
  }

  if (*(a2 + 24) >= 1)
  {
    sub_239404AE0(a3, "%*sIndirect CRL\n", a4, "");
  }

  v8 = *(a2 + 16);
  if (v8)
  {
    sub_23945FA50(a3, "Only Some Reasons", v8, a4);
  }

  if (*(a2 + 28) >= 1)
  {
    sub_239404AE0(a3, "%*sOnly Attribute Certificates\n", a4, "");
  }

  if (!*a2 && *(a2 + 8) <= 0 && *(a2 + 12) <= 0 && *(a2 + 24) <= 0 && !*(a2 + 16) && *(a2 + 28) <= 0)
  {
    sub_239404AE0(a3, "%*s<EMPTY>\n", a4, "");
  }

  return 1;
}

uint64_t sub_23945F414(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 1;
  }

  if (*a1 != 1)
  {
    return 1;
  }

  v3 = *(a1 + 8);
  result = sub_23946DE60(a2);
  *(a1 + 16) = result;
  if (!result)
  {
    return result;
  }

  if (sub_239431484(v3))
  {
    v5 = 0;
    do
    {
      v6 = sub_239457528(v3, v5);
      if (!sub_23946B688(*(a1 + 16), v6, -1, v5 == 0))
      {
        goto LABEL_11;
      }
    }

    while (++v5 < sub_239431484(v3));
  }

  if ((sub_23946DE3C(*(a1 + 16), 0) & 0x80000000) == 0)
  {
    return 1;
  }

LABEL_11:
  sub_23946DE54(*(a1 + 16));
  result = 0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_23945F4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  if (!strncmp(v6, "fullname", 9uLL))
  {
    v8 = *(a3 + 16);
    if (v8)
    {
      v9 = sub_23945F840(a2, v8);
      v10 = 0;
      v11 = 0;
      if (v9)
      {
        goto LABEL_6;
      }

LABEL_17:
      sub_239457574(v11, sub_23945F8F8, sub_23945FF10);
      sub_239457574(v10, sub_23945F904, sub_23946DE14);
      return 0xFFFFFFFFLL;
    }

    v19 = 137;
    v20 = 141;
LABEL_24:
    sub_2394170F4(20, 0, v19, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_crld.c", v20);
    return 0xFFFFFFFFLL;
  }

  if (strcmp(v6, "relativename"))
  {
    return 0;
  }

  v12 = *(a3 + 16);
  if (!v12)
  {
    v19 = 137;
    v20 = 152;
    goto LABEL_24;
  }

  v13 = sub_23945E07C(a2, v12);
  if (!v13)
  {
    v19 = 153;
    v20 = 157;
    goto LABEL_24;
  }

  v14 = v13;
  v15 = sub_23946DE48();
  if (!v15)
  {
    return 0xFFFFFFFFLL;
  }

  v16 = v15;
  v17 = sub_239464C30(v15, v14, 4097);
  v10 = *v16;
  *v16 = 0;
  sub_23946DE54(v16);
  if (!v17)
  {
    goto LABEL_16;
  }

  v11 = sub_239431484(v10);
  if (!v11)
  {
    goto LABEL_17;
  }

  v18 = sub_239431484(v10);
  if (*(sub_239457528(v10, v18 - 1) + 4))
  {
    sub_2394170F4(20, 0, 122, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_crld.c", 173);
LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  v9 = 0;
LABEL_6:
  if (*a1)
  {
    sub_2394170F4(20, 0, 106, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_crld.c", 181);
LABEL_8:
    v11 = v9;
    goto LABEL_17;
  }

  v21 = sub_239402AC0(byte_278A817C0);
  *a1 = v21;
  if (!v21)
  {
    goto LABEL_8;
  }

  v22 = v21;
  if (v9)
  {
    *v21 = 0;
    *(*a1 + 8) = v9;
    return 1;
  }

  else
  {
    result = 1;
    *v22 = 1;
    *(*a1 + 8) = v10;
  }

  return result;
}

uint64_t sub_23945F710(void *a1, const char *a2)
{
  if (*a1)
  {
    sub_2394170F4(20, 0, 163, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_crld.c", 220);
    return 0;
  }

  v4 = sub_2394639E4(a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (sub_239431484(v4))
  {
    v6 = 0;
    while (1)
    {
      v7 = sub_239457528(v5, v6)[1];
      v8 = *a1;
      if (!*a1)
      {
        v8 = sub_239402F28();
        *a1 = v8;
        if (!v8)
        {
          break;
        }
      }

      v9 = off_278A819B0;
      while (strcmp(*(v9 - 2), v7))
      {
        v10 = *v9;
        v9 += 3;
        if (!v10)
        {
          goto LABEL_16;
        }
      }

      if (!sub_2393FC30C(v8, *(v9 - 8), 1))
      {
        break;
      }

      if (++v6 >= sub_239431484(v5))
      {
        goto LABEL_15;
      }
    }

LABEL_16:
    v2 = 0;
  }

  else
  {
LABEL_15:
    v2 = 1;
  }

  sub_239457574(v5, sub_23945F910, sub_239463380);
  return v2;
}

unint64_t *sub_23945F840(uint64_t a1, const char *a2)
{
  if (*a2 == 64)
  {
    v3 = sub_23945E07C(a1, (a2 + 1));
    v4 = 0;
    if (v3)
    {
LABEL_3:
      v5 = sub_23945CD20(0, a1, v3);
      sub_239457574(v4, sub_23945F910, sub_239463380);
      return v5;
    }
  }

  else
  {
    v3 = sub_2394639E4(a2);
    v4 = v3;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  sub_2394170F4(20, 0, 153, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_crld.c", 121);
  return 0;
}

uint64_t sub_23945F928(int a1, uint64_t *a2)
{
  v2 = *a2;
  if (a1 == 3)
  {
    sub_23946DE54(*(v2 + 16));
  }

  else if (a1 == 1)
  {
    *(v2 + 16) = 0;
  }

  return 1;
}

unint64_t sub_23945F968(uint64_t a1, uint64_t a2, int a3)
{
  if (*a2)
  {
    v9 = 0u;
    v10 = 0u;
    v8 = *(a2 + 8);
    sub_239404AE0(a1, "%*sRelative Name:\n%*s", a3, "", a3 + 2, "");
    sub_239459710(a1, &v8, 0, 8520479);
    return sub_239403848(a1, "\n");
  }

  else
  {
    sub_239404AE0(a1, "%*sFull Name:\n", a3, "");
    v7 = *(a2 + 8);

    return sub_23945FB48(a1, v7, a3);
  }
}

uint64_t sub_23945FA50(uint64_t a1, const char *a2, uint64_t a3, int a4)
{
  sub_239404AE0(a1, "%*s%s:\n%*s", a4, "", a2, a4 + 2, "");
  v6 = 0;
  v7 = &dword_278A81990;
  v8 = "Unused";
LABEL_2:
  for (i = *v7; ; i = v10)
  {
    if (sub_2393FC41C(a3, i))
    {
      if (v6)
      {
        sub_239403848(a1, ", ");
      }

      sub_239403848(a1, v8);
      v8 = *(v7 + 4);
      v7 += 6;
      v6 = 1;
      if (!v8)
      {
        goto LABEL_11;
      }

      goto LABEL_2;
    }

    v8 = *(v7 + 4);
    if (!v8)
    {
      break;
    }

    v10 = v7[6];
    v7 += 6;
  }

  if (v6)
  {
LABEL_11:
    v11 = "\n";
    goto LABEL_13;
  }

  v11 = "<EMPTY>\n";
LABEL_13:

  return sub_239403848(a1, v11);
}

unint64_t sub_23945FB48(uint64_t a1, unint64_t *a2, int a3)
{
  result = sub_239431484(a2);
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      sub_239404AE0(a1, "%*s", a3 + 2, "");
      v8 = sub_239457528(a2, i);
      sub_23945CB3C(a1, v8);
      sub_239403848(a1, "\n");
      result = sub_239431484(a2);
    }
  }

  return result;
}

const char *sub_23945FC04(uint64_t a1, unsigned __int8 **a2)
{
  v4 = sub_2393FD07C(a2);
  v5 = *(a1 + 96);
  v6 = *(v5 + 8);
  if (v6)
  {
    if (v4 == *v5)
    {
LABEL_6:

      return sub_23945030C(v6);
    }

    v7 = (v5 + 32);
    while (1)
    {
      v6 = *v7;
      if (!*v7)
      {
        break;
      }

      v8 = *(v7 - 2);
      v7 += 3;
      if (v4 == v8)
      {
        goto LABEL_6;
      }
    }
  }

  return sub_239463404(a1, a2);
}

unint64_t *sub_23945FC9C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v3 = a3;
  v11 = *MEMORY[0x277D85DE8];
  v9 = a3;
  if (sub_239431484(a2))
  {
    v5 = 0;
    do
    {
      v6 = sub_239457528(a2, v5);
      sub_2393FD94C(__s, 80, v6);
      sub_2394631D4(0, __s, &v9);
      ++v5;
    }

    while (v5 < sub_239431484(a2));
    v3 = v9;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

unint64_t *sub_23945FD50(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = sub_2394574D8();
  if (v4 && sub_239431484(a3))
  {
    v5 = 0;
    while (1)
    {
      v6 = sub_239457528(a3, v5);
      v7 = v6[2];
      if (!v7)
      {
        v7 = v6[1];
      }

      v8 = sub_239450E0C(v7, 0);
      if (!v8 || !sub_2394579D0(v4, v8))
      {
        break;
      }

      if (++v5 >= sub_239431484(a3))
      {
        return v4;
      }
    }

    sub_2393FDCD8(v8);
    sub_239457574(v4, sub_23945FEB0, sub_2393FDCD8);
    sub_2394170F4(20, 0, 129, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_extku.c", 147);
    v19 = v6[2];
    v18 = v6[1];
    v17 = *v6;
    sub_2394171A0(6u, v9, v10, v11, v12, v13, v14, v15, "section:");
    return 0;
  }

  return v4;
}

uint64_t sub_23945FF5C(uint64_t a1, uint64_t a2)
{
  result = 0xFFFFFFFFLL;
  if (!a1)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  v4 = *a1;
  if (*a1 != *a2)
  {
    return result;
  }

  if (v4 <= 4)
  {
    if (v4 <= 2)
    {
      if ((v4 - 1) >= 2)
      {
        if (!v4)
        {
          v5 = *(a1 + 8);
          if (v5)
          {
            v6 = *(a2 + 8);
            if (v6)
            {
              result = sub_239450998(*v5, *v6);
              if (!result)
              {
                v7 = v5[1];
                v8 = v6[1];

                return sub_2393FF264(v7, v8);
              }
            }
          }
        }

        return result;
      }

      goto LABEL_26;
    }

    if (v4 != 3)
    {
      v11 = *(a1 + 8);
      v12 = *(a2 + 8);

      return sub_239465AD0(v11, v12);
    }

LABEL_26:
    v13 = *(a1 + 8);
    v14 = *(a2 + 8);
LABEL_27:

    return sub_2393FFB10(v13, v14);
  }

  if (v4 <= 6)
  {
    if (v4 != 5)
    {
      goto LABEL_26;
    }

    v15 = *(a1 + 8);
    v16 = *(a2 + 8);
    v17 = *v16;
    if (*v15)
    {
      if (!v17 || sub_2393FFB10(*v15, v17))
      {
        return 0xFFFFFFFFLL;
      }
    }

    else if (v17)
    {
      return 0xFFFFFFFFLL;
    }

    v13 = v15[1];
    v14 = v16[1];
    goto LABEL_27;
  }

  if (v4 == 7)
  {
    v18 = *(a1 + 8);
    v19 = *(a2 + 8);

    return sub_2393FDD90(v18, v19);
  }

  else if (v4 == 8)
  {
    v9 = *(a1 + 8);
    v10 = *(a2 + 8);

    return sub_239450998(v9, v10);
  }

  return result;
}

uint64_t sub_2394600FC(uint64_t result, unsigned int a2, uint64_t a3)
{
  if (a2 <= 8)
  {
    *(result + 8) = a3;
  }

  *result = a2;
  return result;
}

uint64_t sub_239460110(uint64_t a1, unsigned int *a2)
{
  v2 = *a1;
  if (a2)
  {
    *a2 = v2;
  }

  if (v2 > 8)
  {
    return 0;
  }

  else
  {
    return *(a1 + 8);
  }
}

uint64_t sub_239460134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_239402AC0(byte_278A81C18);
  if (result)
  {
    v7 = result;
    sub_2394030C4(*(result + 8));
    *v7 = a2;
    v7[1] = a3;
    *(a1 + 8) = v7;
    result = 1;
    *a1 = 0;
  }

  return result;
}

uint64_t sub_239460190(uint64_t a1, void *a2, void *a3)
{
  if (*a1)
  {
    return 0;
  }

  if (a2)
  {
    *a2 = **(a1 + 8);
  }

  if (a3)
  {
    *a3 = *(*(a1 + 8) + 8);
  }

  return 1;
}

void *sub_2394601C8(uint64_t a1, const void **a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *a2;
  if (!v3)
  {
    return 0;
  }

  v4 = sub_23945004C(v3 + 1);
  v5 = v4;
  if (v4)
  {
    v6 = *a2;
    if (v6)
    {
      memcpy(v4, a2[1], v6);
      v7 = *a2;
    }

    else
    {
      v7 = 0;
    }

    *(v5 + v7) = 0;
  }

  return v5;
}

void *sub_239460234(uint64_t a1, uint64_t a2, char *a3)
{
  if (!a3)
  {
    sub_2394170F4(20, 0, 124, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_ia5.c", 90);
    return 0;
  }

  v4 = sub_239402FA8();
  if (v4)
  {
    v5 = strlen(a3);
    if (!sub_2393FF8AC(v4, a3, v5))
    {
      sub_239402ECC(v4);
      return 0;
    }
  }

  return v4;
}

unint64_t *sub_2394602B0(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (sub_239431484(a2))
  {
    v6 = 0;
    v7 = a3;
    while (1)
    {
      v8 = v7;
      v9 = sub_239457528(a2, v6);
      v10 = sub_23945C8C8(a1, v9[1], v7);
      if (!v10)
      {
        break;
      }

      v7 = v10;
      v11 = sub_239457528(v10, v6);
      sub_2393FD94C(__s, 80, *v9);
      v12 = strlen(__s);
      v13 = (strlen(v11[1]) + v12 + 5);
      v14 = sub_23945004C(v13);
      if (!v14)
      {
        v8 = v7;
        break;
      }

      v15 = v14;
      sub_2394507BC(v14, __s, v13);
      sub_239450834(v15, " - ", v13);
      sub_239450834(v15, v11[1], v13);
      sub_239450144(v11[1]);
      v11[1] = v15;
      if (++v6 >= sub_239431484(a2))
      {
        goto LABEL_15;
      }
    }

    v7 = 0;
    if (!a3)
    {
      if (v8)
      {
        sub_239457574(v8, sub_23946069C, sub_239463380);
        v7 = 0;
      }
    }

    goto LABEL_15;
  }

  v7 = a3;
  if (a3)
  {
LABEL_15:
    v18 = *MEMORY[0x277D85DE8];
    return v7;
  }

  v16 = *MEMORY[0x277D85DE8];

  return sub_2394574D8();
}

unint64_t *sub_2394604A0(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v6 = sub_2394574D8();
  if (v6 && sub_239431484(a3))
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_239457528(a3, v7);
      v9 = sub_239402AC0(byte_278A81EC8);
      if (!v9)
      {
        break;
      }

      v10 = v9;
      if (!sub_2394579D0(v6, v9))
      {
        break;
      }

      v11 = strchr(v8[1], 59);
      if (!v11)
      {
        sub_2394170F4(20, 0, 135, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_info.c", 185);
        break;
      }

      v12 = v11;
      v24[0] = 0;
      v24[1] = v11 + 1;
      v25 = 0;
      v25 = v8[2];
      if (!sub_23945CE0C(v10[1], a1, a2, v24, 0))
      {
        break;
      }

      v13 = sub_23945071C(v8[1], &v12[-v8[1]]);
      if (!v13)
      {
        break;
      }

      v14 = v13;
      v15 = sub_239450E0C(v13, 0);
      *v10 = v15;
      if (!v15)
      {
        sub_2394170F4(20, 0, 101, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_info.c", 200);
        sub_2394171A0(2u, v16, v17, v18, v19, v20, v21, v22, "value=");
        sub_239450144(v14);
        break;
      }

      sub_239450144(v14);
      if (++v7 >= sub_239431484(a3))
      {
        return v6;
      }
    }

    sub_239457574(v6, sub_2394606A8, sub_239460660);
    return 0;
  }

  return v6;
}

uint64_t sub_2394606C0(uint64_t a1)
{
  result = qword_27DF78C00;
  if (qword_27DF78C00 || (result = sub_239457478(sub_239460730), (qword_27DF78C00 = result) != 0))
  {
    result = sub_2394579D0(result, a1);
    if (result)
    {
      sub_239457A78(qword_27DF78C00, sub_239460CD8);
      return 1;
    }
  }

  return result;
}

unint64_t *sub_239460748(int a1)
{
  __key = v5;
  if (a1 < 0)
  {
    return 0;
  }

  v6 = 0;
  memset(v5, 0, sizeof(v5));
  v3 = 0;
  LODWORD(v5[0]) = a1;
  v1 = bsearch(&__key, &off_278A81F18, 0x1FuLL, 8uLL, sub_239460808);
  if (v1)
  {
    return *v1;
  }

  result = qword_27DF78C00;
  if (qword_27DF78C00)
  {
    if (sub_23945784C(qword_27DF78C00, &v3, v5, sub_239460CD8))
    {
      return sub_239457528(qword_27DF78C00, v3);
    }

    return 0;
  }

  return result;
}

unint64_t *sub_239460820(unsigned __int16 **a1)
{
  v1 = sub_2394509E8(*a1);
  if (!v1)
  {
    return 0;
  }

  return sub_239460748(v1);
}

uint64_t sub_23946085C(int a1, uint64_t a2)
{
  v3 = sub_239460748(a1);
  if (v3)
  {
    sub_2394026C0(a2, v3[1]);
    return 1;
  }

  else
  {
    sub_2394170F4(20, 0, 104, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_lib.c", 138);
    return 0;
  }
}

uint64_t sub_2394608B8(int a1, int a2)
{
  v3 = sub_239460748(a2);
  if (v3)
  {
    v4 = v3;
    result = sub_23945004C(0x68uLL);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v7 = *(v4 + 2);
    v8 = *v4;
    *(result + 16) = *(v4 + 1);
    *(result + 32) = v7;
    *result = v8;
    v9 = *(v4 + 3);
    v10 = *(v4 + 4);
    v11 = *(v4 + 5);
    *(result + 96) = v4[12];
    *(result + 64) = v10;
    *(result + 80) = v11;
    *(result + 48) = v9;
    *result = a1;
    if (sub_2394606C0(result))
    {
      return 1;
    }

    sub_239450144(v6);
  }

  else
  {
    sub_2394170F4(20, 0, 114, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_lib.c", 152);
  }

  return 0;
}

uint64_t sub_239460968(uint64_t a1)
{
  result = sub_239460820(a1);
  if (result)
  {
    v3 = result;
    v4 = *(a1 + 16);
    v5 = *(v4 + 1);
    result = sub_2394004F8(0, &v5, *v4, *(result + 8));
    if (result)
    {
      if (v5 != *(*(a1 + 16) + 8) + **(a1 + 16))
      {
        sub_2394026C0(result, *(v3 + 8));
        sub_2394170F4(20, 0, 164, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_lib.c", 192);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_239460A04(unint64_t *a1, int a2, int *a3, _DWORD *a4)
{
  if (a1)
  {
    v8 = a4 ? *a4 + 1 : 0;
    v9 = v8 & ~(v8 >> 31);
    if (sub_239431484(a1) > v9)
    {
      v10 = 0;
      while (1)
      {
        v11 = sub_239457528(a1, v9);
        if (sub_2394509E8(*v11) == a2)
        {
          if (a4)
          {
            *a4 = v9;
LABEL_21:
            if (a3)
            {
              *a3 = sub_239468174(v11);
            }

            return sub_239460968(v11);
          }

          if (v10)
          {
            if (!a3)
            {
              return 0;
            }

            v12 = -2;
LABEL_18:
            *a3 = v12;
            return 0;
          }
        }

        else
        {
          v11 = v10;
        }

        ++v9;
        v10 = v11;
        if (v9 >= sub_239431484(a1))
        {
          if (!v11)
          {
            break;
          }

          goto LABEL_21;
        }
      }
    }
  }

  if (a4)
  {
    *a4 = -1;
  }

  if (a3)
  {
    v12 = -1;
    goto LABEL_18;
  }

  return 0;
}

uint64_t sub_239460B2C(unint64_t **a1, unsigned int a2, uint64_t a3, int a4, char a5)
{
  v9 = a5 & 0xF;
  if (v9 == 1)
  {
LABEL_2:
    v10 = sub_23945DDE4(a2, a4, a3);
    if (v10)
    {
      v11 = v10;
      v12 = *a1;
      if (*a1 || (v12 = sub_2394574D8()) != 0)
      {
        if (sub_2394579D0(v12, v11))
        {
          *a1 = v12;
          return 1;
        }
      }

      if (v12 != *a1)
      {
        sub_2393FFA58(v12);
      }

      sub_23946DDD4(v11);
      return 0xFFFFFFFFLL;
    }

LABEL_28:
    v18 = 109;
    v19 = 308;
    goto LABEL_29;
  }

  v14 = sub_239467FEC(*a1, a2, -1);
  if ((v14 & 0x80000000) != 0)
  {
    v18 = 114;
    if (v9 != 3 && v9 != 5)
    {
      goto LABEL_2;
    }

    if ((a5 & 0x10) != 0)
    {
      return 0;
    }

LABEL_23:
    v19 = 341;
LABEL_29:
    sub_2394170F4(20, 0, v18, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_lib.c", v19);
    return 0;
  }

  if (!v9)
  {
    v18 = 112;
    if ((a5 & 0x10) != 0)
    {
      return 0;
    }

    goto LABEL_23;
  }

  if (v9 == 4)
  {
    return 1;
  }

  v15 = v14;
  if (v9 == 5)
  {
    v16 = sub_239457700(*a1, v14);
    if (v16)
    {
      sub_23946DDD4(v16);
      return 1;
    }

    return 0xFFFFFFFFLL;
  }

  v20 = sub_23945DDE4(a2, a4, a3);
  if (!v20)
  {
    goto LABEL_28;
  }

  v21 = v20;
  v22 = sub_239457528(*a1, v15);
  sub_23946DDD4(v22);
  if (sub_23945754C(*a1, v15, v21))
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_239460CD8(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  return a1(&v5, &v4);
}

uint64_t sub_239460D08(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v6 = sub_239402AC0(byte_278A82010);
  if (!v6)
  {
    goto LABEL_17;
  }

  if (sub_239431484(a3))
  {
    for (i = 0; i < sub_239431484(a3); ++i)
    {
      v8 = sub_239457528(a3, i);
      v17 = 0;
      v18 = 0;
      v16 = 0;
      v9 = v8[1];
      if (!strncmp(v9, "permitted", 9uLL) && *(v9 + 9))
      {
        v10 = 10;
        v11 = v6;
      }

      else
      {
        if (strncmp(v9, "excluded", 8uLL) || !*(v9 + 8))
        {
          sub_2394170F4(20, 0, 135, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_ncons.c", 142);
LABEL_17:
          v13 = 0;
LABEL_18:
          sub_2394026C0(v6, byte_278A82010);
          sub_2394026C0(v13, byte_278A820A0);
          return 0;
        }

        v10 = 9;
        v11 = (v6 + 8);
      }

      v12 = v8[2];
      v17 = v9 + v10;
      v18 = v12;
      v13 = sub_239402AC0(byte_278A820A0);
      if (!sub_23945CE0C(*v13, a1, a2, &v16, 1))
      {
        goto LABEL_18;
      }

      v14 = *v11;
      if (!*v11)
      {
        v14 = sub_2394574D8();
        *v11 = v14;
        if (!v14)
        {
          goto LABEL_18;
        }
      }

      if (!sub_2394579D0(v14, v13))
      {
        goto LABEL_18;
      }
    }
  }

  return v6;
}

uint64_t sub_239460EAC(uint64_t a1, unint64_t **a2, uint64_t a3, int a4)
{
  sub_23946120C(*a2, a3, a4, "Permitted");
  sub_23946120C(a2[1], a3, a4, "Excluded");
  return 1;
}

uint64_t sub_239460F40(uint64_t a1, uint64_t *a2)
{
  v4 = sub_239465D34(a1);
  v5 = sub_23946B400(v4);
  v6 = sub_239431484(*(a1 + 88)) + v5;
  v7 = sub_239431484(*a2);
  v8 = sub_239431484(a2[1]) + v7;
  v9 = !is_mul_ok(v8, v6);
  if (v6 < sub_23946B400(v4) || v8 < sub_239431484(*a2))
  {
    return 1;
  }

  if (v8)
  {
    v10 = v8 * v6 > 0x100000 || v9;
    if (v10)
    {
      return 1;
    }
  }

  if (sub_23946B400(v4) >= 1)
  {
    v19 = v4;
    v18 = 4;
    result = sub_2394610D0(&v18, a2);
    if (result)
    {
      return result;
    }

    LODWORD(v18) = 1;
    v12 = -1;
    while (1)
    {
      v13 = sub_23946B424(v4, 0x30u, v12);
      if (v13 == -1)
      {
        break;
      }

      v12 = v13;
      v14 = sub_23946B39C(v4, v13);
      v19 = sub_23946B390(v14);
      if (*(v19 + 4) != 22)
      {
        return 53;
      }

      result = sub_2394610D0(&v18, a2);
      if (result)
      {
        return result;
      }
    }
  }

  result = sub_239431484(*(a1 + 88));
  if (result)
  {
    v15 = 0;
    do
    {
      v16 = sub_239457528(*(a1 + 88), v15);
      result = sub_2394610D0(v16, a2);
      if (result)
      {
        break;
      }

      ++v15;
      v17 = sub_239431484(*(a1 + 88));
      result = 0;
    }

    while (v15 < v17);
  }

  return result;
}

uint64_t sub_2394610D0(_DWORD *a1, uint64_t a2)
{
  if (sub_239431484(*a2))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = sub_239457528(*a2, v4);
      if (*a1 == **v6)
      {
        if (v6[1] || v6[2])
        {
          return 49;
        }

        if (v5 != 2)
        {
          result = sub_2394613E8(a1, *v6);
          if (result)
          {
            v5 = 1;
            if (result != 47)
            {
              return result;
            }
          }

          else
          {
            v5 = 2;
          }
        }
      }

      ++v4;
    }

    while (v4 < sub_239431484(*a2));
    if (v5 != 1)
    {
      goto LABEL_14;
    }

    return 47;
  }

  else
  {
LABEL_14:
    result = sub_239431484(*(a2 + 8));
    if (result)
    {
      v8 = 0;
      while (1)
      {
        v9 = sub_239457528(*(a2 + 8), v8);
        if (*a1 == **v9)
        {
          if (v9[1] || v9[2])
          {
            return 49;
          }

          result = sub_2394613E8(a1, *v9);
          if (result != 47)
          {
            break;
          }
        }

        if (++v8 >= sub_239431484(*(a2 + 8)))
        {
          return 0;
        }
      }

      if (!result)
      {
        return 48;
      }
    }
  }

  return result;
}

unint64_t sub_23946120C(unint64_t *a1, uint64_t a2, int a3, const char *a4)
{
  if (sub_239431484(a1))
  {
    sub_239404AE0(a2, "%*s%s:\n", a3, "", a4);
  }

  result = sub_239431484(a1);
  if (result)
  {
    v9 = 0;
    v10 = a3 + 2;
    do
    {
      v11 = sub_239457528(a1, v9);
      sub_239404AE0(a2, "%*s", v10, "");
      v12 = *v11;
      if (**v11 == 7)
      {
        v13 = *(v12 + 1);
        v14 = *(v13 + 1);
        v15 = *v13;
        sub_239403848(a2, "IP:");
        if (v15 == 8)
        {
          v23 = v14[6];
          v24 = v14[7];
          v21 = v14[4];
          v22 = v14[5];
          v19 = v14[2];
          v20 = v14[3];
          v18 = v14[1];
          sub_239404AE0(a2, "%d.%d.%d.%d/%d.%d.%d.%d", *v14);
        }

        else
        {
          if (v15 == 32)
          {
            for (i = 0; ; ++i)
            {
              sub_239404AE0(a2, "%X", __rev16(*v14));
              v17 = "/";
              if (i != 7)
              {
                if (i == 15)
                {
                  goto LABEL_16;
                }

                v17 = ":";
              }

              sub_239403848(a2, v17);
              v14 += 2;
            }
          }

          sub_239404AE0(a2, "IP Address:<invalid>");
        }
      }

      else
      {
        sub_23945CB3C(a2, v12);
      }

LABEL_16:
      sub_239403848(a2, "\n");
      ++v9;
      result = sub_239431484(a1);
    }

    while (v9 < result);
  }

  return result;
}

uint64_t sub_2394613E8(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  result = 51;
  if (*a2 <= 3)
  {
    if (v3 != 1)
    {
      if (v3 != 2)
      {
        return result;
      }

      v5 = *(a1 + 8);
      v6 = *(a2 + 8);
      v7 = *(v5 + 1);
      v8 = *v5;
      *&v38 = v7;
      *(&v38 + 1) = v8;
      v9 = *(v6 + 1);
      v10 = *v6;
      v36 = v9;
      v37 = v10;
      if (v10)
      {
        if (*v9 == 46)
        {
LABEL_6:
          v11 = &v38;
LABEL_7:
          v12 = sub_2394616EC(v11, &v36);
          goto LABEL_48;
        }

        if (v8 <= v10 || (LOBYTE(v34) = 0, sub_239407718(&v38, ~v10 + v8)) && sub_239407860(&v38, &v34) && v34 == 46)
        {
          v30 = &v38;
          v31 = &v36;
          goto LABEL_47;
        }

        return 47;
      }

      return 0;
    }

    v16 = *(a1 + 8);
    v17 = *(a2 + 8);
    v18 = *(v16 + 1);
    v19 = *v16;
    *&v38 = v18;
    *(&v38 + 1) = v19;
    v20 = *(v17 + 1);
    v21 = *v17;
    v36 = v20;
    v37 = v21;
    v34 = 0;
    v35 = 0;
    v32 = 0uLL;
    if (sub_239407B8C(&v38, &v34, 64))
    {
      if (sub_239407B8C(&v36, &v32, 64))
      {
        if (*(&v32 + 1) && !sub_239407824(&v32, v34, v35))
        {
          return 47;
        }

        sub_239407718(&v36, 1uLL);
      }

      else if (v37 && *v36 == 46)
      {
        goto LABEL_6;
      }

      sub_239407718(&v38, 1uLL);
      v30 = &v36;
      v31 = &v38;
      goto LABEL_47;
    }

    return 53;
  }

  if (v3 != 6)
  {
    if (v3 != 4)
    {
      return result;
    }

    v13 = *(a1 + 8);
    v14 = *(a2 + 8);
    if (*(v13 + 8) && (sub_23946DE3C(v13, 0) & 0x80000000) != 0 || *(v14 + 8) && (sub_23946DE3C(v14, 0) & 0x80000000) != 0)
    {
      return 17;
    }

    v15 = *(v14 + 32);
    if (v15 > *(v13 + 32) || v15 && memcmp(*(v14 + 24), *(v13 + 24), v15))
    {
      return 47;
    }

    return 0;
  }

  v22 = *(a1 + 8);
  v23 = *(a2 + 8);
  v24 = *(v22 + 1);
  v25 = *v22;
  *&v38 = v24;
  *(&v38 + 1) = v25;
  v26 = *(v23 + 1);
  v27 = *v23;
  v36 = v26;
  v37 = v27;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  if (!sub_239407B8C(&v38, &v34, 58) || !sub_239407718(&v38, 1uLL))
  {
    return 53;
  }

  v28 = sub_239407860(&v38, &v33);
  result = 53;
  if (v28)
  {
    if (v33 == 47)
    {
      v29 = sub_239407860(&v38, &v33);
      result = 53;
      if (v29)
      {
        if (v33 == 47)
        {
          v32 = 0uLL;
          if (!sub_239407B8C(&v38, &v32, 58) && !sub_239407B8C(&v38, &v32, 47))
          {
            v32 = v38;
          }

          if (*(&v32 + 1))
          {
            if (v27 && *v26 == 46)
            {
              v11 = &v32;
              goto LABEL_7;
            }

            v30 = &v36;
            v31 = &v32;
LABEL_47:
            v12 = sub_239461748(v30, v31);
LABEL_48:
            if (v12)
            {
              return 0;
            }

            else
            {
              return 47;
            }
          }

          return 53;
        }
      }
    }
  }

  return result;
}

BOOL sub_2394616EC(__int128 *a1, uint64_t *a2)
{
  v3 = *(a1 + 1);
  v4 = a2[1];
  if (v3 < v4)
  {
    return 0;
  }

  v6 = *a1;
  sub_239407718(&v6, v3 - v4);
  return sub_239461748(&v6, a2);
}

BOOL sub_239461748(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  if (v2 != a2[1])
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = *a1;
  v6 = *a2;
  do
  {
    v7 = sub_239450458(*(v5 + v4));
    v8 = sub_239450458(*(v6 + v4));
    if (v7 != v8)
    {
      break;
    }

    ++v4;
  }

  while (v4 < a1[1]);
  return v7 == v8;
}

unint64_t *sub_239461858(uint64_t a1, unsigned __int8 ***a2, unint64_t *a3)
{
  v5 = a3;
  sub_239463720("Require Explicit Policy", *a2, &v5);
  sub_239463720("Inhibit Policy Mapping", a2[1], &v5);
  return v5;
}

uint64_t *sub_2394618B0(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = sub_239402AC0(byte_278A82110);
  if (!v4)
  {
    return v4;
  }

  if (sub_239431484(a3))
  {
    for (i = 0; i < sub_239431484(a3); ++i)
    {
      v6 = sub_239457528(a3, i);
      v7 = v6[1];
      if (!strcmp(v7, "requireExplicitPolicy"))
      {
        v9 = v6;
        v8 = v4;
      }

      else
      {
        if (strcmp(v7, "inhibitPolicyMapping"))
        {
          sub_2394170F4(20, 0, 123, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_pcons.c", 128);
          v20 = v6[2];
          v19 = v6[1];
          v18 = *v6;
          sub_2394171A0(6u, v10, v11, v12, v13, v14, v15, v16, "section:");
LABEL_14:
          sub_2394026C0(v4, byte_278A82110);
          return 0;
        }

        v8 = v4 + 1;
        v9 = v6;
      }

      if (!sub_239463954(v9, v8))
      {
        goto LABEL_14;
      }
    }
  }

  if (!v4[1] && !*v4)
  {
    sub_2394170F4(20, 0, 117, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_pcons.c", 134);
    goto LABEL_14;
  }

  return v4;
}

unint64_t *sub_239461A38(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v3 = a3;
  v12 = *MEMORY[0x277D85DE8];
  v9 = a3;
  if (sub_239431484(a2))
  {
    v5 = 0;
    do
    {
      v6 = sub_239457528(a2, v5);
      sub_2393FD94C(v11, 80, *v6);
      sub_2393FD94C(__s, 80, v6[1]);
      sub_2394631D4(v11, __s, &v9);
      ++v5;
    }

    while (v5 < sub_239431484(a2));
    v3 = v9;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

unint64_t *sub_239461B08(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = sub_2394574D8();
  if (v4 && sub_239431484(a3))
  {
    v5 = 0;
    while (1)
    {
      v6 = sub_239457528(a3, v5);
      v7 = v6;
      if (!v6[2] || !v6[1])
      {
        v10 = 126;
        goto LABEL_15;
      }

      v8 = sub_239402AC0(byte_278A821F0);
      if (!v8 || !sub_2394579D0(v4, v8))
      {
        sub_2394026C0(v8, byte_278A821F0);
        goto LABEL_16;
      }

      *v8 = sub_239450E0C(v7[1], 0);
      v9 = sub_239450E0C(v7[2], 0);
      v8[1] = v9;
      if (!*v8 || !v9)
      {
        break;
      }

      if (++v5 >= sub_239431484(a3))
      {
        return v4;
      }
    }

    v10 = 140;
LABEL_15:
    sub_2394170F4(20, 0, 129, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_pmaps.c", v10);
    v21 = v7[2];
    v20 = v7[1];
    v19 = *v7;
    sub_2394171A0(6u, v11, v12, v13, v14, v15, v16, v17, "section:");
LABEL_16:
    sub_239457574(v4, sub_239461CB0, sub_239461CA4);
    return 0;
  }

  return v4;
}

uint64_t sub_239461CBC(uint64_t a1, unsigned __int16 **a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_239460820(a2);
  if (v8)
  {
    v9 = v8;
    v10 = sub_23952C81C(a2);
    v29 = sub_2393FFBF4(v10);
    v11 = sub_2393FFBE4(v10);
    v12 = sub_2394004F8(0, &v29, v11, v9[1]);
    if (!v12)
    {
      return sub_239461FE0(a1, a2, a3, a4, 1);
    }

    v13 = v12;
    v14 = v9[6];
    if (v14)
    {
      v15 = v14(v9, v12);
      v16 = v15;
      if (v15)
      {
        sub_239404AE0(a1, "%*s%s", a4, "", v15);
        v17 = 0;
LABEL_35:
        v19 = 1;
LABEL_40:
        sub_239457574(v17, sub_2394622B8, sub_239463380);
        sub_239450144(v16);
        sub_2394026C0(v13, v9[1]);
        return v19;
      }

      goto LABEL_38;
    }

    v20 = v9[8];
    if (!v20)
    {
      v28 = v9[10];
      if (v28)
      {
        v16 = 0;
        if (!v28(v9, v12, a1, a4))
        {
          v19 = 0;
          v17 = 0;
          goto LABEL_40;
        }

        v17 = 0;
        goto LABEL_35;
      }

      sub_2394170F4(20, 0, 147, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_prn.c", 138);
      v16 = 0;
LABEL_38:
      v17 = 0;
      goto LABEL_39;
    }

    v21 = v20(v9, v12, 0);
    v17 = v21;
    if (!v21)
    {
      v16 = 0;
LABEL_39:
      v19 = 0;
      goto LABEL_40;
    }

    v22 = *(v9 + 1);
    if ((v22 & 4) == 0 || !sub_239431484(v21))
    {
      sub_239404AE0(a1, "%*s", a4, "");
      if (!sub_239431484(v17))
      {
        sub_239403848(a1, "<EMPTY>\n");
      }
    }

    if (!sub_239431484(v17))
    {
LABEL_31:
      v16 = 0;
      goto LABEL_35;
    }

    v23 = 0;
    while (1)
    {
      if ((v22 & 4) != 0)
      {
        sub_239404AE0(a1, "%*s");
      }

      else if (v23)
      {
        sub_239404AE0(a1, ", ");
      }

      v24 = sub_239457528(v17, v23);
      v25 = v24[1];
      v26 = v24[2];
      if (v25)
      {
        if (v26)
        {
          sub_239404AE0(a1, "%s:%s", v24[1], v26);
          if ((v22 & 4) == 0)
          {
            goto LABEL_30;
          }

LABEL_29:
          sub_239403848(a1, "\n");
          goto LABEL_30;
        }

        v27 = a1;
      }

      else
      {
        v27 = a1;
        v25 = v26;
      }

      sub_239403848(v27, v25);
      if ((v22 & 4) != 0)
      {
        goto LABEL_29;
      }

LABEL_30:
      if (++v23 >= sub_239431484(v17))
      {
        goto LABEL_31;
      }
    }
  }

  return sub_239461FE0(a1, a2, a3, a4, 0);
}

uint64_t sub_239461FE0(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4, int a5)
{
  v7 = (a3 >> 16) & 0xF;
  if ((v7 - 2) < 2)
  {
    v8 = sub_23952C81C(a2);
    v9 = sub_2393FFBF4(v8);
    v10 = sub_2393FFBE4(v8);

    return sub_23940482C(a1, v9, v10, a4);
  }

  else if (v7)
  {
    if (v7 == 1)
    {
      if (a5)
      {
        sub_239404AE0(a1, "%*s<Parse Error>");
      }

      else
      {
        sub_239404AE0(a1, "%*s<Not Supported>");
      }
    }

    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2394620BC(uint64_t a1, const char *a2, unint64_t *a3, unint64_t a4, int a5)
{
  if (!sub_239431484(a3))
  {
    return 1;
  }

  if (a2)
  {
    sub_239404AE0(a1, "%*s%s:\n", a5, "", a2);
    a5 += 4;
  }

  if (!sub_239431484(a3))
  {
    return 1;
  }

  v10 = 0;
  while (1)
  {
    v11 = sub_239457528(a3, v10);
    if (a5)
    {
      if (sub_239404AE0(a1, "%*s", a5, "") < 1)
      {
        break;
      }
    }

    v12 = sub_239431484(v11);
    sub_2393FD954(a1, v12);
    v13 = sub_239468174(v11);
    v14 = "critical";
    if (!v13)
    {
      v14 = "";
    }

    if (sub_239404AE0(a1, ": %s\n", v14) < 1)
    {
      break;
    }

    if (!sub_239461CBC(a1, v11, a4, (a5 + 4)))
    {
      sub_239404AE0(a1, "%*s", a5 + 4, "");
      v15 = sub_23952C81C(v11);
      sub_2393FE2C0(a1, v15);
    }

    if (sub_239403738(a1, "\n", 1) <= 0)
    {
      break;
    }

    if (++v10 >= sub_239431484(a3))
    {
      return 1;
    }
  }

  return 0;
}

void *sub_239462258(uint64_t a1, unsigned __int16 **a2, int a3, uint64_t a4)
{
  result = sub_2394042E8();
  if (result)
  {
    v8 = result;
    v9 = sub_239461CBC(result, a2, a3, a4);
    sub_239403520(v8);
    return v9;
  }

  return result;
}

uint64_t sub_2394622C4(uint64_t a1, int a2, int a3)
{
  result = sub_239462398(a1);
  if (result)
  {
    if (a2 == -1)
    {
      return 1;
    }

    else
    {
      v7 = &dword_284BBACA0;
      v8 = 9;
      while (*v7 != a2)
      {
        v7 += 6;
        if (!--v8)
        {
          return 0;
        }
      }

      if (a2 != 7 && a3)
      {
        v9 = *(a1 + 48);
        if ((v9 & 2) != 0 && (*(a1 + 52) & 4) == 0)
        {
          return 0;
        }

        if ((~v9 & 0x2040) != 0 && (*(a1 + 48) & 0x11) != 0x11)
        {
          return 0;
        }
      }

      v10 = *(v7 + 1);

      return v10();
    }
  }

  return result;
}

BOOL sub_239462398(uint64_t a1)
{
  sub_239457D1C((a1 + 144));
  v2 = *(a1 + 48);
  sub_239457D5C((a1 + 144));
  if ((v2 & 0x100) == 0)
  {
    sub_239457D3C((a1 + 144));
    if (*(a1 + 49))
    {
LABEL_98:
      sub_239457D5C((a1 + 144));
      return ((*(a1 + 48) >> 7) & 1) == 0;
    }

    v3 = sub_2394316DC();
    if (!sub_23946CD70(a1, v3, a1 + 104, 0))
    {
      *(a1 + 48) |= 0x80u;
    }

    if (!sub_239467A30(a1))
    {
      *(a1 + 48) |= 0x40u;
    }

    v34 = 0;
    v4 = sub_239466178(a1, 87, &v34, 0);
    if (v4)
    {
      v5 = v4;
      if (*v4)
      {
        *(a1 + 48) |= 0x10u;
      }

      v6 = *(v4 + 8);
      if (v6)
      {
        if (*(v6 + 4) == 258 || !*v5)
        {
          v7 = 0;
          *(a1 + 48) |= 0x80u;
        }

        else
        {
          v7 = sub_2393FD028(v6);
        }
      }

      else
      {
        v7 = -1;
      }

      *(a1 + 40) = v7;
      sub_23945D504(v5);
      v8 = 1;
    }

    else
    {
      if (v34 == -1)
      {
        goto LABEL_20;
      }

      v8 = 128;
    }

    *(a1 + 48) |= v8;
LABEL_20:
    v9 = sub_239466178(a1, 83, &v34, 0);
    if (v9)
    {
      if (*v9 < 1)
      {
        *(a1 + 52) = 0;
      }

      else
      {
        v10 = **(v9 + 8);
        *(a1 + 52) = v10;
        if (*v9 >= 2)
        {
          *(a1 + 52) = v10 | (*(*(v9 + 8) + 1) << 8);
        }
      }

      *(a1 + 48) |= 2u;
      sub_239402ECC(v9);
    }

    else if (v34 != -1)
    {
      *(a1 + 48) |= 0x80u;
    }

    *(a1 + 56) = 0;
    v11 = sub_239466178(a1, 126, &v34, 0);
    if (v11)
    {
      v12 = v11;
      *(a1 + 48) |= 4u;
      if (sub_239431484(v11))
      {
        for (i = 0; i < sub_239431484(v12); ++i)
        {
          v14 = sub_239457528(v12, i);
          v15 = sub_2394509E8(v14);
          if (v15 > 136)
          {
            if (v15 <= 179)
            {
              if (v15 != 137 && v15 != 139)
              {
                continue;
              }

              v16 = 16;
              goto LABEL_53;
            }

            switch(v15)
            {
              case 180:
                v16 = 32;
                goto LABEL_53;
              case 297:
                v16 = 128;
                goto LABEL_53;
              case 910:
                v16 = 256;
                goto LABEL_53;
            }
          }

          else if (v15 <= 130)
          {
            if (v15 == 129)
            {
              v16 = 1;
              goto LABEL_53;
            }

            if (v15 == 130)
            {
              v16 = 2;
              goto LABEL_53;
            }
          }

          else
          {
            switch(v15)
            {
              case 131:
                v16 = 8;
                goto LABEL_53;
              case 132:
                v16 = 4;
                goto LABEL_53;
              case 133:
                v16 = 64;
LABEL_53:
                *(a1 + 56) |= v16;
                break;
            }
          }
        }
      }

      sub_239457574(v12, sub_239462FA4, sub_2393FDCD8);
    }

    else if (v34 != -1)
    {
      *(a1 + 48) |= 0x80u;
    }

    v17 = sub_239466178(a1, 82, &v34, 0);
    *(a1 + 64) = v17;
    if (!v17 && v34 != -1)
    {
      *(a1 + 48) |= 0x80u;
    }

    v18 = sub_239466178(a1, 90, &v34, 0);
    *(a1 + 72) = v18;
    if (!v18 && v34 != -1)
    {
      *(a1 + 48) |= 0x80u;
    }

    v19 = sub_239465D34(a1);
    v20 = sub_239465C18(a1);
    if (!sub_239465AD0(v19, v20))
    {
      *(a1 + 48) |= 0x20u;
      if (!sub_239462A34(a1, *(a1 + 72)))
      {
        v21 = *(a1 + 48);
        if ((v21 & 2) == 0 || (*(a1 + 52) & 4) != 0)
        {
          *(a1 + 48) = v21 | 0x2000;
        }
      }
    }

    v22 = sub_239466178(a1, 85, &v34, 0);
    *(a1 + 88) = v22;
    if (!v22 && v34 != -1)
    {
      *(a1 + 48) |= 0x80u;
    }

    v23 = sub_239466178(a1, 666, &v34, 0);
    *(a1 + 96) = v23;
    if (!v23 && v34 != -1)
    {
      *(a1 + 48) |= 0x80u;
    }

    v35 = 0;
    v24 = sub_239466178(a1, 103, &v35, 0);
    *(a1 + 80) = v24;
    if (v24 || v35 == -1)
    {
      if (!sub_239431484(v24))
      {
        goto LABEL_91;
      }

      v25 = 0;
      while (1)
      {
        v26 = sub_239457528(*(a1 + 80), v25);
        if (*v26 && **v26 == 1)
        {
          v27 = v26;
          if (!sub_239431484(v26[2]))
          {
            goto LABEL_88;
          }

          v28 = 0;
          while (1)
          {
            v29 = sub_239457528(v27[2], v28);
            if (*v29 == 4)
            {
              break;
            }

            if (++v28 >= sub_239431484(v27[2]))
            {
              goto LABEL_88;
            }
          }

          v30 = v29[1];
          if (!v30)
          {
LABEL_88:
            v30 = sub_239465C18(a1);
          }

          if (!sub_23945F414(*v27, v30))
          {
            break;
          }
        }

        if (++v25 >= sub_239431484(*(a1 + 80)))
        {
          goto LABEL_91;
        }
      }
    }

    *(a1 + 48) |= 0x80u;
LABEL_91:
    v34 = 0;
    if (sub_239466108(a1) >= 1)
    {
      while (1)
      {
        v31 = sub_239466138(a1, v34);
        if (sub_239468174(v31) && !sub_2394629C0(v31))
        {
          break;
        }

        v32 = ++v34;
        if (v32 >= sub_239466108(a1))
        {
          goto LABEL_97;
        }
      }

      *(a1 + 48) |= 0x200u;
    }

LABEL_97:
    *(a1 + 48) |= 0x100u;
    goto LABEL_98;
  }

  return ((*(a1 + 48) >> 7) & 1) == 0;
}

int *sub_239462934(int a1)
{
  result = &dword_284BBACA0;
  v3 = 9;
  while (*result != a1)
  {
    result += 6;
    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_239462964(char *__s2)
{
  v2 = &off_284BBACB0;
  v3 = 9;
  while (strcmp(*v2, __s2))
  {
    v2 += 3;
    if (!--v3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return *(v2 - 4);
}

BOOL sub_2394629C0(uint64_t a1)
{
  v1 = sub_239431484(a1);
  v2 = sub_2394509E8(v1);
  result = 1;
  if (v2 <= 400)
  {
    if ((v2 - 83) <= 0x2B && ((1 << (v2 - 83)) & 0x80000000055) != 0)
    {
      return result;
    }

    return v2 == 748;
  }

  if (v2 != 401 && v2 != 666 && v2 != 747)
  {
    return v2 == 748;
  }

  return result;
}

uint64_t sub_239462A34(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *a2;
  if (*a2)
  {
    v5 = *(a1 + 64);
    if (v5)
    {
      if (sub_2393FDD90(v4, v5))
      {
        return 30;
      }
    }
  }

  if (a2[2])
  {
    v7 = sub_239465D40(a1);
    if (sub_2393FC994(v7, a2[2]))
    {
      return 31;
    }
  }

  v8 = a2[1];
  if (v8 && sub_239431484(v8))
  {
    v9 = 0;
    while (1)
    {
      v10 = sub_239457528(v8, v9);
      if (*v10 == 4)
      {
        break;
      }

      if (++v9 >= sub_239431484(v8))
      {
        return 0;
      }
    }

    v11 = v10[1];
    if (v11)
    {
      v12 = sub_239465C18(a1);
      if (sub_239465AD0(v11, v12))
      {
        return 31;
      }
    }
  }

  return 0;
}

uint64_t sub_239462B20(uint64_t a1)
{
  result = sub_239462398(a1);
  if (result)
  {
    v3 = *(a1 + 48);
    if ((v3 & 2) == 0 || (*(a1 + 52) & 4) != 0)
    {
      v4 = (~v3 & 0x2040) == 0;
      v5 = v3 & (v3 >> 4) & 1;
      if (v4)
      {
        return 1;
      }

      else
      {
        return v5;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_239462B78(uint64_t a1, uint64_t a2)
{
  v4 = sub_239465D34(a1);
  v5 = sub_239465C18(a2);
  if (sub_239465AD0(v4, v5))
  {
    return 29;
  }

  if (!sub_239462398(a1) || !sub_239462398(a2))
  {
    return 1;
  }

  v7 = *(a2 + 72);
  if (!v7 || (result = sub_239462A34(a1, v7), !result))
  {
    if ((*(a1 + 48) & 2) == 0 || (*(a1 + 52) & 4) != 0)
    {
      return 0;
    }

    else
    {
      return 32;
    }
  }

  return result;
}

uint64_t sub_239462C44(uint64_t a1)
{
  result = sub_239462398(a1);
  if (result)
  {
    if ((*(a1 + 48) & 2) != 0)
    {
      return *(a1 + 52);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_239462C80(uint64_t a1)
{
  result = sub_239462398(a1);
  if (result)
  {
    if ((*(a1 + 48) & 4) != 0)
    {
      return *(a1 + 56);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_239462CBC(uint64_t a1)
{
  if (sub_239462398(a1))
  {
    return *(a1 + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239462CF0(uint64_t a1)
{
  if (sub_239462398(a1) && (v2 = *(a1 + 72)) != 0)
  {
    return *v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239462D2C(uint64_t a1)
{
  if (sub_239462398(a1) && (v2 = *(a1 + 72)) != 0)
  {
    return *(v2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239462D68(uint64_t a1)
{
  if (sub_239462398(a1) && (v2 = *(a1 + 72)) != 0)
  {
    return *(v2 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239462DA4(uint64_t a1)
{
  if (sub_239462398(a1) && (*(a1 + 48) & 1) != 0)
  {
    return *(a1 + 40);
  }

  else
  {
    return -1;
  }
}

BOOL sub_239462DE0(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 48);
  if ((v3 & 4) != 0 && (*(a2 + 56) & 2) == 0)
  {
    return 0;
  }

  result = 1;
  if (!a3 && (v3 & 2) != 0)
  {
    return (*(a2 + 52) & 0x88) != 0;
  }

  return result;
}

BOOL sub_239462E18(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 48);
  if ((v3 & 4) != 0 && (*(a2 + 56) & 1) == 0)
  {
    return 0;
  }

  result = 1;
  if (!a3 && (v3 & 2) != 0)
  {
    return (*(a2 + 52) & 0xA8) != 0;
  }

  return result;
}

uint64_t sub_239462E50(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 48);
  if ((v3 & 4) != 0 && (*(a2 + 56) & 1) == 0)
  {
    return 0;
  }

  result = 1;
  if (!a3 && (v3 & 2) != 0)
  {
    return (*(a2 + 52) >> 5) & 1;
  }

  return result;
}

BOOL sub_239462E80(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 48);
  if ((v3 & 4) != 0 && (*(a2 + 56) & 4) == 0)
  {
    return 0;
  }

  result = 1;
  if (!a3 && (v3 & 2) != 0)
  {
    return (*(a2 + 52) & 0xC0) != 0;
  }

  return result;
}

uint64_t sub_239462EB4(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 48);
  if ((v3 & 4) != 0 && (*(a2 + 56) & 4) == 0)
  {
    return 0;
  }

  result = 1;
  if (!a3 && (v3 & 2) != 0)
  {
    return (*(a2 + 52) >> 5) & 1;
  }

  return result;
}

uint64_t sub_239462EE4(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3 && (*(a2 + 48) & 2) != 0)
  {
    return (*(a2 + 52) >> 1) & 1;
  }

  else
  {
    return 1;
  }
}

BOOL sub_239462F0C(uint64_t a1, _DWORD *a2, int a3)
{
  if (a3)
  {
    return 1;
  }

  v5 = a2[12];
  if ((v5 & 2) != 0)
  {
    result = 0;
    if ((v5 & 4) == 0)
    {
      return result;
    }

    v6 = a2[13];
    if (!v6 || (v6 & 0xFFFFFF3F) != 0)
    {
      return result;
    }
  }

  else if ((v5 & 4) == 0)
  {
    return 0;
  }

  if (a2[14] != 64)
  {
    return 0;
  }

  v7 = sub_239466114(a2, 0x7Eu, -1);
  if ((v7 & 0x80000000) != 0)
  {
    return 1;
  }

  v8 = sub_239466138(a2, v7);
  result = sub_239468174(v8);
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_239462FBC(uint64_t a1, uint64_t a2, const char *a3)
{
  v8 = 0;
  v3 = sub_239463DB0(a3, &v8);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (v8 >> 31)
  {
    sub_2394170F4(20, 0, 69, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_skey.c", 84);
LABEL_6:
    sub_239450144(v4);
    return 0;
  }

  v5 = sub_239402EC4();
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  sub_2393FFA9C(v5, v4, v8);
  return v6;
}

void *sub_23946305C(int a1, uint64_t a2, char *__s1)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = strcmp(__s1, "hash");
  if (!v5)
  {
    v9 = sub_239402EC4();
    if (v9)
    {
      v18 = 0;
      if (!a2)
      {
        goto LABEL_16;
      }

      if (*a2 != 1)
      {
        v10 = *(a2 + 24);
        if (v10)
        {
          v11 = 40;
LABEL_12:
          v12 = *(*(*v10 + v11) + 8);
          if (v12)
          {
            v13 = *(v12 + 1);
            v14 = *v12;
            v15 = sub_2394315BC();
            if (sub_239430E60(v13, v14, v19, &v18, v15) && sub_2393FDD94(v9, v19, v18))
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }

          v16 = 136;
LABEL_17:
          sub_2394170F4(20, 0, 144, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_skey.c", v16);
LABEL_18:
          sub_239402ECC(v9);
          v9 = 0;
          goto LABEL_19;
        }

        v10 = *(a2 + 16);
        if (v10)
        {
          v11 = 48;
          goto LABEL_12;
        }

LABEL_16:
        v16 = 125;
        goto LABEL_17;
      }
    }

LABEL_19:
    v17 = *MEMORY[0x277D85DE8];
    return v9;
  }

  v7 = *MEMORY[0x277D85DE8];

  return sub_239462FBC(v5, v6, __s1);
}

uint64_t sub_2394631D4(const char *a1, char *__s, unint64_t **a3)
{
  if (__s)
  {
    v6 = strlen(__s);
  }

  else
  {
    v6 = 0;
  }

  return sub_239463240(a1, __s, v6, __s == 0, a3);
}

uint64_t sub_239463240(const char *a1, _BYTE *a2, size_t a3, int a4, unint64_t **a5)
{
  v9 = *a5;
  if (!a1)
  {
    v10 = 0;
    if (a4)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v10 = sub_23945030C(a1);
  if (!v10)
  {
    goto LABEL_14;
  }

  if (!a4)
  {
LABEL_11:
    if (!a3 || !memchr(a2, 0, a3))
    {
      v11 = sub_23945071C(a2, a3);
      if (!v11)
      {
        v12 = 0;
        if (v9)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      goto LABEL_5;
    }

    sub_2394170F4(20, 0, 163, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_utl.c", 104);
LABEL_14:
    v12 = 0;
    v11 = 0;
    goto LABEL_15;
  }

LABEL_4:
  v11 = 0;
LABEL_5:
  v12 = sub_239405E68();
  if (v12)
  {
    if (*a5 || (v13 = sub_2394574D8(), (*a5 = v13) != 0))
    {
      *v12 = 0;
      v12[1] = v10;
      v12[2] = v11;
      if (sub_2394579D0(*a5, v12))
      {
        return 1;
      }
    }
  }

LABEL_15:
  if (!v9)
  {
LABEL_16:
    sub_2393FFA58(*a5);
    *a5 = 0;
  }

LABEL_17:
  sub_239450144(v12);
  sub_239450144(v10);
  sub_239450144(v11);
  return 0;
}

void sub_239463380(void *a1)
{
  if (a1)
  {
    sub_239450144(a1[1]);
    sub_239450144(a1[2]);
    sub_239450144(*a1);

    sub_239450144(a1);
  }
}

uint64_t sub_2394633D4(const char *a1, int a2, unint64_t **a3)
{
  if (a2)
  {
    v4 = "TRUE";
    v5 = 4;
  }

  else
  {
    v4 = "FALSE";
    v5 = 5;
  }

  return sub_239463240(a1, v4, v5, 0, a3);
}

uint64_t sub_239463404(uint64_t a1, unsigned __int8 **a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = sub_2393FD21C(a2, 0);
  v3 = v2;
  if (v2)
  {
    v4 = sub_239463460(v2);
  }

  else
  {
    v4 = 0;
  }

  sub_239421EC8(v3);
  return v4;
}

uint64_t sub_239463460(uint64_t *a1)
{
  if (sub_239422114(a1) > 0x1F)
  {
    v3 = sub_23940541C(a1);
    if (!v3)
    {
      return 0;
    }

    v4 = v3;
    v5 = strlen(v3);
    v6 = sub_23945004C(v5 + 3);
    v7 = v6;
    if (v6)
    {
      if (*v4 == 45)
      {
        sub_2394507BC(v6, "-0x", v5 + 3);
        v8 = v4 + 1;
      }

      else
      {
        sub_2394507BC(v6, "0x", v5 + 3);
        v8 = v4;
      }

      sub_239450834(v7, v8, v5 + 3);
    }

    sub_239450144(v4);
    return v7;
  }

  else
  {

    return sub_239405728(a1);
  }
}

uint64_t sub_239463540(uint64_t a1, unsigned __int8 **a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = sub_2393FD16C(a2, 0);
  v3 = v2;
  if (v2)
  {
    v4 = sub_239463460(v2);
  }

  else
  {
    v4 = 0;
  }

  sub_239421EC8(v3);
  return v4;
}

void *sub_23946359C(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!a2)
  {
    v8 = 126;
    v9 = 237;
LABEL_11:
    sub_2394170F4(20, 0, v8, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_utl.c", v9);
    return v2;
  }

  v3 = sub_239421E8C();
  v12 = v3;
  v4 = *v2;
  if (v4 == 45)
  {
    v2 = (v2 + 1);
  }

  if (*v2 == 48 && (*(v2 + 1) | 0x20) == 0x78)
  {
    v2 = (v2 + 2);
    v5 = sub_239405508(&v12, v2);
    if (!v5)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (strlen(v2) > 0x2000)
    {
      sub_239421EC8(v3);
      v6 = 127;
      v7 = 265;
LABEL_15:
      sub_2394170F4(20, 0, v6, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_utl.c", v7);
      return 0;
    }

    v5 = sub_23940591C(&v12, v2);
    if (!v5)
    {
LABEL_14:
      sub_239421EC8(v12);
      v6 = 102;
      v7 = 273;
      goto LABEL_15;
    }
  }

  if (*(v2 + v5))
  {
    goto LABEL_14;
  }

  v11 = v4 != 45 || sub_239421914(v12);
  v2 = sub_2393FD084(v12, 0);
  sub_239421EC8(v12);
  if (!v2)
  {
    v8 = 103;
    v9 = 284;
    goto LABEL_11;
  }

  if (!v11)
  {
    *(v2 + 1) |= 0x100u;
  }

  return v2;
}

uint64_t sub_239463720(const char *a1, unsigned __int8 **a2, unint64_t **a3)
{
  if (!a2)
  {
    return 1;
  }

  result = sub_239463540(a1, a2);
  if (result)
  {
    v6 = result;
    v7 = strlen(result);
    v8 = sub_239463240(a1, v6, v7, 0, a3);
    sub_239450144(v6);
    return v8;
  }

  return result;
}

uint64_t sub_239463790(const char *a1, _DWORD *a2)
{
  if (!strcmp(a1, "TRUE") || !strcmp(a1, "true") || ((v4 = *a1, v4 == 121) || v4 == 89) && !a1[1] || !strcmp(a1, "YES") || !strcmp(a1, "yes"))
  {
    *a2 = 255;
    return 1;
  }

  if (!strcmp(a1, "FALSE") || !strcmp(a1, "false"))
  {
    goto LABEL_21;
  }

  if (v4 == 110)
  {
    if (!a1[1])
    {
      goto LABEL_21;
    }

    if (a1[1] == 111)
    {
      goto LABEL_19;
    }
  }

  else if (v4 == 78)
  {
    if (a1[1])
    {
      if (a1[1] != 79)
      {
        goto LABEL_20;
      }

LABEL_19:
      if (a1[2])
      {
        goto LABEL_20;
      }
    }

LABEL_21:
    *a2 = 0;
    return 1;
  }

LABEL_20:
  sub_2394170F4(20, 0, 120, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_utl.c", 319);
  return 0;
}

uint64_t sub_2394638C0(uint64_t *a1, _DWORD *a2)
{
  v3 = a1[2];
  if (v3)
  {
    if (sub_239463790(v3, a2))
    {
      return 1;
    }
  }

  else
  {
    sub_2394170F4(20, 0, 120, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_utl.c", 326);
  }

  v14 = a1[2];
  v13 = a1[1];
  v12 = *a1;
  sub_2394171A0(6u, v4, v5, v6, v7, v8, v9, v10, "section:");
  return 0;
}

uint64_t sub_239463954(uint64_t a1, uint64_t *a2)
{
  v4 = sub_23946359C(a1, *(a1 + 16));
  if (v4)
  {
    v12 = v4;
    sub_239402ECC(*a2);
    *a2 = v12;
    return 1;
  }

  else
  {
    v16 = *(a1 + 16);
    v15 = *(a1 + 8);
    v14 = *a1;
    sub_2394171A0(6u, v5, v6, v7, v8, v9, v10, v11, "section:");
    return 0;
  }
}

unint64_t *sub_2394639E4(const char *a1)
{
  v22 = 0;
  v1 = sub_23945030C(a1);
  v2 = v1;
  if (!v1)
  {
    goto LABEL_33;
  }

  v3 = 0;
  v4 = v1 + 1;
  v5 = v1;
  v6 = 1;
  while (1)
  {
    v7 = *(v4 - 1);
    if (v7 <= 0xD && ((1 << v7) & 0x2401) != 0)
    {
      v14 = sub_239463C38(v1);
      v15 = v14;
      if (v6 == 2)
      {
        if (!v14)
        {
          v20 = 126;
          v21 = 421;
          goto LABEL_32;
        }

        v16 = strlen(v14);
        v14 = v3;
        v17 = v15;
        v18 = 0;
      }

      else
      {
        if (!v14)
        {
          v20 = 125;
          v21 = 431;
          goto LABEL_32;
        }

        v17 = 0;
        v16 = 0;
        v18 = 1;
      }

      sub_239463240(v14, v17, v16, v18, &v22);
      sub_239450144(v2);
      return v22;
    }

    if (v6 != 1)
    {
      if (v7 == 44)
      {
        *(v4 - 1) = 0;
        v10 = sub_239463C38(v1);
        if (!v10)
        {
          v20 = 126;
          v21 = 405;
          goto LABEL_32;
        }

        v11 = v10;
        v12 = strlen(v10);
        sub_239463240(v3, v11, v12, 0, &v22);
        v3 = 0;
        v1 = v5 + 1;
LABEL_16:
        v6 = 1;
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    if (v7 != 44)
    {
      if (v7 != 58)
      {
        goto LABEL_16;
      }

      *(v4 - 1) = 0;
      v9 = sub_239463C38(v1);
      if (!v9)
      {
        v20 = 125;
        v21 = 377;
        goto LABEL_32;
      }

      v3 = v9;
      v1 = v5 + 1;
LABEL_17:
      v6 = 2;
      goto LABEL_20;
    }

    *(v4 - 1) = 0;
    v13 = sub_239463C38(v1);
    if (!v13)
    {
      break;
    }

    v3 = v13;
    v6 = 1;
    sub_239463240(v13, 0, 0, 1, &v22);
    v1 = v4;
LABEL_20:
    ++v5;
    ++v4;
  }

  v20 = 125;
  v21 = 389;
LABEL_32:
  sub_2394170F4(20, 0, v20, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_utl.c", v21);
LABEL_33:
  sub_239450144(v2);
  sub_239457574(v22, sub_239464D2C, sub_239463380);
  return 0;
}

const char *sub_239463C38(const char *a1)
{
  v1 = a1;
  v2 = *a1;
  if (!v2)
  {
    return 0;
  }

  while (sub_23945046C(v2))
  {
    v3 = *++v1;
    v2 = v3;
    if (!v3)
    {
      return 0;
    }
  }

  if (!*v1)
  {
    return 0;
  }

  v4 = strlen(v1);
  while (1)
  {
    v5 = v4 - 1;
    if (v4 == 1)
    {
      break;
    }

    v6 = sub_23945046C(v1[v4 - 1]);
    v4 = v5;
    if (!v6)
    {
      v1[v5 + 1] = 0;
      break;
    }
  }

  if (*v1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239463CC0(uint64_t a1, uint64_t a2)
{
  memset(v8, 0, sizeof(v8));
  if (sub_2394065F4(v8, 3 * a2 + 1))
  {
    if (a2)
    {
      v4 = 0;
      while ((!v4 || sub_239406ACC(v8, 0x3Au)) && sub_239406ACC(v8, a0123456789abcd_3[*(a1 + v4) >> 4]) && sub_239406ACC(v8, a0123456789abcd_3[*(a1 + v4) & 0xF]))
      {
        if (a2 == ++v4)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v6 = 0;
      v7 = 0;
      if (sub_239406ACC(v8, 0) && sub_2394066A4(v8, &v7, &v6))
      {
        return v7;
      }
    }
  }

  sub_239406688(v8);
  return 0;
}

void *sub_239463DB0(const char *a1, void *a2)
{
  v13 = 0;
  if (a1)
  {
    v3 = a1;
    v4 = strlen(a1);
    v5 = sub_23945004C(v4 >> 1);
    v6 = v5;
    if (!v5)
    {
      sub_239450144(0);
      return v6;
    }

    v7 = v5;
    while (2)
    {
      ++v3;
      do
      {
        v8 = *(v3 - 1);
        if (!*(v3 - 1))
        {
          if (a2)
          {
            *a2 = v7 - v6;
          }

          return v6;
        }

        ++v3;
      }

      while (v8 == 58);
      v9 = *(v3 - 1);
      if (!*(v3 - 1))
      {
        sub_2394170F4(20, 0, 146, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_utl.c", 515);
        sub_239450144(v6);
        return 0;
      }

      if (sub_2394503EC(&v13 + 1, v8) && sub_2394503EC(&v13, v9))
      {
        *v7++ = v13 | (16 * HIBYTE(v13));
        continue;
      }

      break;
    }

    sub_239450144(v6);
    v10 = 118;
    v11 = 540;
  }

  else
  {
    v10 = 124;
    v11 = 502;
  }

  sub_2394170F4(20, 0, v10, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_utl.c", v11);
  return 0;
}

BOOL sub_239463EE4(const char *a1, char *__s)
{
  v4 = strlen(__s);
  if (strncmp(a1, __s, v4))
  {
    return 0;
  }

  return !a1[v4] || a1[v4] == 46;
}

uint64_t sub_239463F4C(uint64_t a1)
{
  v2 = sub_239466178(a1, 85, 0, 0);
  v3 = sub_239465D34(a1);
  v4 = sub_239463FC0(v3, v2);
  sub_239457574(v2, sub_239464D38, sub_23945FF10);
  return v4;
}

uint64_t sub_239463FC0(uint64_t *a1, unint64_t *a2)
{
  v11 = 0;
  v4 = -1;
  while (1)
  {
    v5 = sub_23946B424(a1, 0x30u, v4);
    if ((v5 & 0x80000000) != 0)
    {
      break;
    }

    v4 = v5;
    v6 = sub_23946B39C(a1, v5);
    v7 = sub_23946B390(v6);
    if (!sub_23946414C(&v11, v7))
    {
      return 0;
    }
  }

  if (sub_239431484(a2))
  {
    v9 = 0;
    while (1)
    {
      v10 = sub_239457528(a2, v9);
      if (*v10 == 1 && !sub_23946414C(&v11, v10[1]))
      {
        break;
      }

      if (++v9 >= sub_239431484(a2))
      {
        return v11;
      }
    }

    return 0;
  }

  return v11;
}

unint64_t sub_23946408C(uint64_t a1)
{
  v7 = 0;
  v1 = sub_239466178(a1, 177, 0, 0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = 0;
  if (sub_239431484(v1))
  {
    do
    {
      v4 = sub_239457528(v2, v3);
      if (sub_2394509E8(*v4) == 178)
      {
        v5 = v4[1];
        if (*v5 == 6 && !sub_23946414C(&v7, *(v5 + 8)))
        {
          break;
        }
      }

      ++v3;
    }

    while (v3 < sub_239431484(v2));
    v3 = v7;
  }

  sub_239460690(v2);
  return v3;
}

uint64_t sub_23946414C(uint64_t *a1, int *a2)
{
  if (a2[1] != 22)
  {
    return 1;
  }

  v3 = *(a2 + 1);
  if (!v3)
  {
    return 1;
  }

  v4 = *a2;
  if (!v4 || memchr(*(a2 + 1), 0, *a2))
  {
    return 1;
  }

  if (*a1)
  {
    goto LABEL_10;
  }

  v7 = sub_239457478(sub_239464D50);
  *a1 = v7;
  if (v7)
  {
    v3 = *(a2 + 1);
    v4 = *a2;
LABEL_10:
    v8 = sub_23945071C(v3, v4);
    if (v8)
    {
      sub_239457A78(*a1, sub_239464D5C);
      if (sub_23945784C(*a1, 0, v8, sub_239464D5C))
      {
        sub_239450144(v8);
        return 1;
      }

      if (sub_2394579D0(*a1, v8))
      {
        return 1;
      }
    }

    goto LABEL_16;
  }

  v8 = 0;
LABEL_16:
  sub_239450144(v8);
  sub_239457574(*a1, sub_239464D8C, sub_23946435C);
  result = 0;
  *a1 = 0;
  return result;
}

uint64_t sub_23946428C(void *a1)
{
  v2 = sub_2394674D8(a1);
  v3 = sub_239460A04(v2, 85, 0, 0);
  v4 = sub_2394673B4(a1);
  v5 = sub_239463FC0(v4, v3);
  sub_239457574(v3, sub_239464D38, sub_23945FF10);
  sub_239457574(v2, sub_239464D44, sub_23946DDD4);
  return v5;
}

BOOL sub_239464360(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a1;
  v3 = a2 - (a1[a2 - 1] == 46);
  if (v3 >= 2)
  {
    if (*a1 != 42 || a1[1] != 46)
    {
      goto LABEL_7;
    }

    v2 = a1 + 2;
    v3 -= 2;
  }

  if (v3)
  {
LABEL_7:
    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = v2[v5];
      if (!sub_23945043C(v7))
      {
        if (v7 > 57)
        {
          if (v7 != 58 && v7 != 95)
          {
            return v4;
          }
        }

        else if (v7 == 45)
        {
          if (v5 <= v6)
          {
            return v4;
          }
        }

        else
        {
          if (v7 != 46 || v5 <= v6 || v5 >= v3 - 1)
          {
            return v4;
          }

          v6 = v5 + 1;
        }
      }

      v4 = ++v5 >= v3;
      if (v3 == v5)
      {
        return v4;
      }
    }
  }

  return 0;
}

uint64_t sub_239464470(uint64_t a1, void *__s, size_t __n, uint64_t a4, void *a5)
{
  if (!__s || __n && memchr(__s, 0, __n))
  {
    return 4294967294;
  }

  return sub_23946450C(a1, __s, __n, a4, 2, a5);
}

uint64_t sub_23946450C(uint64_t a1, void *a2, size_t a3, uint64_t a4, int a5, void *a6)
{
  if (a5 == 1)
  {
    v11 = sub_239464D98;
    v12 = 48;
LABEL_8:
    v13 = 1;
    v14 = 22;
    goto LABEL_10;
  }

  if (a5 == 2)
  {
    if ((a4 & 2) != 0)
    {
      v11 = sub_239464E70;
    }

    else
    {
      v11 = sub_239464F08;
    }

    v12 = 13;
    goto LABEL_8;
  }

  v13 = 0;
  v12 = 0;
  v14 = 4;
  v11 = sub_2394651C8;
LABEL_10:
  v15 = sub_239466178(a1, 85, 0, 0);
  if (v15)
  {
    v16 = v15;
    if (sub_239431484(v15))
    {
      v17 = 0;
      while (1)
      {
        v18 = sub_239457528(v16, v17);
        if (*v18 == a5)
        {
          v19 = sub_239465214(v18[1], v14, v11, a4, a5, a2, a3, a6);
          if (v19)
          {
            break;
          }
        }

        if (++v17 >= sub_239431484(v16))
        {
          goto LABEL_16;
        }
      }

      v20 = v19;
    }

    else
    {
LABEL_16:
      v20 = 0;
    }

    sub_23945FF40(v16);
  }

  else
  {
    if (((v13 ^ 1 | ((a4 & 0x20) >> 5)) & 1) == 0)
    {
      v21 = sub_239465D34(a1);
      v22 = -1;
      while (1)
      {
        v23 = sub_23946B424(v21, v12, v22);
        if ((v23 & 0x80000000) != 0)
        {
          break;
        }

        v22 = v23;
        v24 = sub_23946B39C(v21, v23);
        v25 = sub_23946B390(v24);
        v26 = sub_239465214(v25, -1, v11, a4, a5, a2, a3, a6);
        if (v26)
        {
          return v26;
        }
      }
    }

    return 0;
  }

  return v20;
}

uint64_t sub_2394646F4(uint64_t a1, void *__s, size_t __n, uint64_t a4)
{
  if (!__s || __n && memchr(__s, 0, __n))
  {
    return 4294967294;
  }

  return sub_23946450C(a1, __s, __n, a4, 1, 0);
}

uint64_t sub_239464780(uint64_t a1, void *a2, size_t a3, uint64_t a4)
{
  if (a2)
  {
    return sub_23946450C(a1, a2, a3, a4, 7, 0);
  }

  else
  {
    return 4294967294;
  }
}

uint64_t sub_239464798(uint64_t a1, char *a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a2 && (v5 = sub_239464824(&v8, a2)) != 0)
  {
    result = sub_23946450C(a1, &v8, v5, a3, 7, 0);
  }

  else
  {
    result = 4294967294;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239464824(_OWORD *a1, char *__s)
{
  v13 = *MEMORY[0x277D85DE8];
  if (strchr(__s, 58))
  {
    v11 = 0;
    __src = 0u;
    v12 = 0xFFFFFFFFLL;
    if (!sub_23940AA90(__s, 58, 0, sub_23946541C, &__src))
    {
      goto LABEL_22;
    }

    v4 = v12;
    v5 = v11;
    if (v12 != -1)
    {
      if (v11 > 15 || SHIDWORD(v12) > 3)
      {
        goto LABEL_22;
      }

      if (HIDWORD(v12) == 2)
      {
        if (v12 && v11 != v12)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (HIDWORD(v12) == 3)
        {
          if (v11 <= 0)
          {
            goto LABEL_19;
          }

LABEL_22:
          result = 0;
          goto LABEL_23;
        }

        if (!v12 || v11 == v12)
        {
          goto LABEL_22;
        }
      }

LABEL_19:
      if ((v12 & 0x80000000) == 0)
      {
        if (v12)
        {
          memcpy(a1, &__src, v12);
          v7 = v4;
        }

        else
        {
          v7 = 0;
        }

        v9 = a1 + v7;
        bzero(v9, (16 - v5));
        if (v5 != v4)
        {
          memcpy(&v9[-v5 + 16], &__src + v7, v5 - v4);
        }

        goto LABEL_13;
      }

LABEL_12:
      *a1 = __src;
LABEL_13:
      result = 16;
      goto LABEL_23;
    }

    if (v11 == 16)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

  result = 4 * sub_239464B68(a1, __s);
LABEL_23:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394649C8(char *__s)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = sub_239464824(&v7, __s);
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = v1;
  v3 = sub_239402EC4();
  v4 = v3;
  if (v3 && !sub_2393FDD94(v3, &v7, v2))
  {
    sub_239402ECC(v4);
LABEL_5:
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t sub_239464A5C(char *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = strchr(a1, 47);
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = v2;
  v4 = sub_23945030C(a1);
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = v4;
  v6 = &v4[v3 - a1];
  *v6 = 0;
  v7 = sub_239464824(v14, v4);
  if (!v7)
  {
    v11 = 0;
LABEL_11:
    sub_239450144(v5);
    sub_239402ECC(v11);
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  v8 = v7;
  v9 = sub_239464824((v14 + v7), v6 + 1);
  sub_239450144(v5);
  if (v8 != v9)
  {
    v11 = 0;
LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  v10 = sub_239402EC4();
  v11 = v10;
  if (!v10 || !sub_2393FDD94(v10, v14, 2 * v8))
  {
    goto LABEL_10;
  }

LABEL_13:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

BOOL sub_239464B68(_BYTE *a1, _BYTE *a2)
{
  v4 = a2;
  result = sub_239465390(a1, &v4);
  if (result)
  {
    if (*v4 != 46)
    {
      return 0;
    }

    ++v4;
    result = sub_239465390(a1 + 1, &v4);
    if (!result)
    {
      return result;
    }

    if (*v4 != 46)
    {
      return 0;
    }

    ++v4;
    result = sub_239465390(a1 + 2, &v4);
    if (!result)
    {
      return result;
    }

    if (*v4 == 46)
    {
      ++v4;
      result = sub_239465390(a1 + 3, &v4);
      if (result)
      {
        return *v4 == 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_239464C30(_BOOL8 result, unint64_t *a2, int a3)
{
  if (result)
  {
    v5 = result;
    if (sub_239431484(a2))
    {
      v6 = 0;
      while (1)
      {
        v7 = sub_239457528(a2, v6);
        v8 = v7[1];
        for (i = v8 + 1; ; ++i)
        {
          v10 = *(i - 1);
          if (v10 <= 0x2D)
          {
            break;
          }

          if (v10 == 58 || v10 == 46)
          {
            goto LABEL_12;
          }

LABEL_11:
          ;
        }

        if (!*(i - 1))
        {
          goto LABEL_14;
        }

        if (v10 != 44)
        {
          goto LABEL_11;
        }

LABEL_12:
        if (*i)
        {
          v8 = i;
        }

LABEL_14:
        v11 = *v8;
        if (v11 == 43)
        {
          v12 = (v8 + 1);
        }

        else
        {
          v12 = v8;
        }

        if (v11 == 43)
        {
          v13 = -1;
        }

        else
        {
          v13 = 0;
        }

        v14 = sub_23946B8E0(v5, v12, a3, v7[2], 0xFFFFFFFFFFFFFFFFLL, -1, v13);
        if (v14)
        {
          if (++v6 < sub_239431484(a2))
          {
            continue;
          }
        }

        return v14 != 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_239464D5C(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  return a1(&v5, &v4);
}

uint64_t sub_239464D98(char *__s1, size_t __n, char *__s2, uint64_t a4)
{
  if (__n != a4)
  {
    return 0;
  }

  v5 = __n;
  v7 = 0;
  v8 = __s2 - 1;
  v9 = __s1 - 1;
  while (__n != v7)
  {
    v10 = v7;
    v11 = v8;
    v12 = v9;
    if (v9[__n] != 64)
    {
      v13 = v8[__n];
      ++v7;
      --v8;
      --v9;
      if (v13 != 64)
      {
        continue;
      }
    }

    result = sub_239464E70(&v12[__n], v10 + 1, &v11[__n], v10 + 1);
    if (!result)
    {
      return result;
    }

    if (v5 - 1 != v10)
    {
      v5 += ~v10;
      return memcmp(__s1, __s2, v5) == 0;
    }

    break;
  }

  if (!v5)
  {
    return 1;
  }

  return memcmp(__s1, __s2, v5) == 0;
}

uint64_t sub_239464E70(_BYTE *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  v4 = a2;
  if (!a2)
  {
    return 1;
  }

  while (1)
  {
    result = *a1;
    if (!*a1)
    {
      break;
    }

    v8 = *a3;
    if (result != v8)
    {
      v9 = sub_239450458(result);
      if (v9 != sub_239450458(v8))
      {
        return 0;
      }
    }

    ++a1;
    ++a3;
    if (!--v4)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_239464F08(char *a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4)
{
  if (a4 < 2)
  {
    if (!a2)
    {
      goto LABEL_33;
    }

LABEL_6:
    v8 = 0;
    v9 = 0;
    v10 = 1;
    v11 = a1;
    v12 = a2;
    do
    {
      v13 = *v11;
      if (v13 == 42)
      {
        if (v12 == 1)
        {
          v14 = 1;
          if (v8)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v14 = v11[1] == 46;
          if (v8)
          {
            goto LABEL_33;
          }
        }

        if ((((v10 & 8 | v9) == 0) & v10 & v14) != 1)
        {
          goto LABEL_33;
        }

        v9 = 0;
        v10 &= 0xFFFFFFF6;
        v8 = v11;
      }

      else if (sub_23945043C(v13))
      {
        if ((v10 & 1) != 0 && v12 >= 4 && !sub_23945050C(v11, "xn--", 4))
        {
          v10 = 8;
        }

        v10 &= 0xFFFFFFFA;
      }

      else
      {
        v15 = *v11;
        if (v15 == 45)
        {
          if (v10)
          {
            goto LABEL_33;
          }

          v10 |= 4u;
        }

        else
        {
          if (v15 != 46 || (v10 & 5) != 0)
          {
            goto LABEL_33;
          }

          ++v9;
          v10 = 1;
        }
      }

      ++v11;
      --v12;
    }

    while (v12);
    if ((v10 & 5) != 0 || v9 < 2 || !v8)
    {
      goto LABEL_33;
    }

    v16 = v8 - a1;
    v17 = &a1[a2 + ~v8];
    if (&v8[~v8 + a2] <= a4)
    {
      v19 = a3;
      result = sub_239464E70(a1, v8 - a1, a3, v8 - a1);
      if (!result)
      {
        return result;
      }

      v20 = a4 - v17;
      v21 = &a3[a4 - v17];
      result = sub_239464E70(&v19[a4 - v17], &a1[a2 + ~v8], v8 + 1, &a1[a2 + ~v8]);
      if (!result)
      {
        return result;
      }

      if (v8 == a1 && v8[1] == 46)
      {
        if (a4 == v17)
        {
          return 0;
        }
      }

      else if (a4 >= 4)
      {
        result = sub_23945050C(v19, "xn--", 4);
        if (!result)
        {
          return result;
        }
      }

      v22 = &v19[v16];
      if (v21 == &v19[v16 + 1])
      {
        result = 1;
        if (v20 == v16 || *v22 == 42)
        {
          return result;
        }
      }

      else if (v20 == v16)
      {
        return 1;
      }

      v23 = a4 - a2 + 1;
      while (sub_23945043C(*v22) || *v22 == 45)
      {
        ++v22;
        if (!--v23)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (a2 && *a3 != 46)
  {
    goto LABEL_6;
  }

LABEL_33:

  return sub_239464E70(a1, a2, a3, a4);
}

BOOL sub_2394651C8(const void *a1, size_t __n, void *__s2, uint64_t a4)
{
  if (__n != a4)
  {
    return 0;
  }

  if (__n)
  {
    return memcmp(a1, __s2, __n) == 0;
  }

  return 1;
}

uint64_t sub_239465214(int *a1, int a2, uint64_t (*a3)(void), uint64_t a4, int a5, void *__s2, size_t __n, void *a8)
{
  v9 = *(a1 + 1);
  if (!v9 || !*a1)
  {
    return 0;
  }

  if (a2 < 1)
  {
    v23 = 0;
    v17 = sub_2393FE214(&v23, a1);
    if ((v17 & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }

    if (a5 == 2)
    {
      v18 = v17;
      if (!sub_239464360(v23, v17))
      {
        v15 = 0;
LABEL_21:
        sub_239450144(v23);
        return v15;
      }
    }

    else
    {
      v18 = v17;
    }

    v20 = (a3)(v23, v18, __s2, __n, a4);
    v15 = v20;
    if (a8)
    {
      if (v20 >= 1)
      {
        v21 = sub_23945071C(v23, v18);
        *a8 = v21;
        if (!v21)
        {
          return 0xFFFFFFFFLL;
        }
      }
    }

    goto LABEL_21;
  }

  if (a1[1] != a2)
  {
    return 0;
  }

  if (a2 != 22)
  {
    if (*a1 == __n && (!__n || !memcmp(v9, __s2, __n)))
    {
      v15 = 1;
      if (!a8)
      {
        return v15;
      }

      goto LABEL_23;
    }

    return 0;
  }

  v15 = a3();
  if (!a8)
  {
    return v15;
  }

LABEL_23:
  if (v15 >= 1)
  {
    v22 = sub_23945071C(*(a1 + 1), *a1);
    *a8 = v22;
    if (!v22)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v15;
}

BOOL sub_239465390(_BYTE *a1, _BYTE **a2)
{
  v4 = 0;
  LOBYTE(v5) = **a2;
  while (1)
  {
    result = sub_2394503C0(v5);
    if (!result)
    {
      break;
    }

    v7 = *a2;
    v4 = **a2 + 10 * v4 - 48;
    if (v4 > 0xFF)
    {
      return 0;
    }

    *a2 = v7 + 1;
    v5 = v7[1];
    if (v5 == 46 || v5 == 0)
    {
      *a1 = v4;
      return 1;
    }

    if (!v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23946541C(char *a1, unint64_t a2, _DWORD *a3)
{
  v5 = a3[4];
  if (v5 == 16)
  {
    return 0;
  }

  v17 = v3;
  v18 = v4;
  v8 = a2;
  if (!a2)
  {
    v12 = a3[5];
    if (v12 == -1)
    {
      a3[5] = v5;
    }

    else if (v12 != v5)
    {
      return 0;
    }

    v15 = a3[6];
    if (v15 <= 2)
    {
      a3[6] = v15 + 1;
      return 1;
    }

    return 0;
  }

  v9 = a1;
  v10 = v5;
  if (a2 >= 5)
  {
    if (v5 <= 12 && !a1[a2])
    {
      result = sub_239464B68(a3 + v5, a1);
      if (!result)
      {
        return result;
      }

      v11 = a3[4] + 4;
      goto LABEL_17;
    }

    return 0;
  }

  v13 = 0;
  while (v8)
  {
    --v8;
    v16 = 0;
    v14 = *v9++;
    result = sub_2394503EC(&v16, v14);
    v13 = v16 | (16 * v13);
    if (!result)
    {
      return result;
    }
  }

  *(a3 + v10) = bswap32(v13) >> 16;
  v11 = a3[4] + 2;
LABEL_17:
  a3[4] = v11;
  return 1;
}

BOOL sub_239465534(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  v5 = 0;
  v6 = 0;
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = v7 & ~(v7 >> 31);
  v10 = v7 - 1;
  while (v9)
  {
    if (v6 + 18 * (v5 / 0x12) || sub_239403738(a1, "\n", 1) >= 1 && sub_239403C00(a1, a3, a3) >= 1)
    {
      v12 = *v8++;
      v11 = v12;
      v13 = ":";
      if (!v10)
      {
        v13 = "";
      }

      --v9;
      --v6;
      ++v5;
      --v10;
      if (sub_239404AE0(a1, "%02x%s", v11, v13) >= 1)
      {
        continue;
      }
    }

    return 0;
  }

  return sub_239403738(a1, "\n", 1) == 1;
}

const char ***sub_23946565C(const char ****a1, unsigned int a2, int a3, char *a4, int a5)
{
  v9 = sub_239450F00(a2);
  if (v9)
  {

    return sub_2394656EC(a1, v9, a3, a4, a5);
  }

  else
  {
    sub_2394170F4(11, 0, 129, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509_att.c", 73);
    return 0;
  }
}

const char ***sub_2394656EC(const char ****a1, uint64_t a2, int a3, char *a4, int a5)
{
  if (a1 && (v10 = *a1) != 0 || (v10 = sub_23946D56C()) != 0)
  {
    if (sub_2394657A0(v10, a2) && sub_2394657EC(v10, a3, a4, a5))
    {
      if (a1 && !*a1)
      {
        *a1 = v10;
      }
    }

    else
    {
      if (!a1 || v10 != *a1)
      {
        sub_23946D578(v10);
      }

      return 0;
    }
  }

  return v10;
}

BOOL sub_2394657A0(const char ***a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      sub_2393FDCD8(*a1);
      v5 = sub_239450894(a2);
      *a1 = v5;
      return v5 != 0;
    }
  }

  return result;
}

uint64_t sub_2394657EC(uint64_t result, int a2, char *a3, int a4)
{
  if (result)
  {
    if (!a2)
    {
      return 1;
    }

    v7 = result;
    result = sub_2394030B8();
    if (!result)
    {
      return result;
    }

    v8 = result;
    if ((a2 & 0x1000) != 0)
    {
      v11 = sub_2394509E8(*v7);
      v10 = sub_2393FE810(0, a3, a4, a2, v11);
      if (!v10)
      {
        sub_2394170F4(11, 0, 12, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509_att.c", 163);
        goto LABEL_15;
      }
    }

    else
    {
      if (a4 == -1)
      {
        if (!sub_2393FF1E8(result, a2, a3))
        {
          goto LABEL_15;
        }

        goto LABEL_12;
      }

      v9 = sub_2393FFADC(a2);
      v10 = v9;
      if (!v9 || !sub_2393FF8AC(v9, a3, a4))
      {
        sub_2393FFA58(v10);
LABEL_15:
        sub_2394030C4(v8);
        return 0;
      }
    }

    sub_2393FF0F4(v8, v10);
LABEL_12:
    if (!sub_2394579D0(*(v7 + 8), v8))
    {
      goto LABEL_15;
    }

    return 1;
  }

  return result;
}

const char ***sub_23946590C(const char ****a1, const char *a2, int a3, char *a4, int a5)
{
  v9 = sub_239450E0C(a2, 0);
  if (v9)
  {
    v10 = v9;
    v11 = sub_2394656EC(a1, v9, a3, a4, a5);
    sub_2393FDCD8(v10);
    return v11;
  }

  else
  {
    sub_2394170F4(11, 0, 111, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509_att.c", 120);
    sub_2394171A0(2u, v13, v14, v15, v16, v17, v18, v19, "name=");
    return 0;
  }
}

uint64_t sub_2394659E4(uint64_t a1, int a2, int a3)
{
  v4 = sub_239465A5C(a1, a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (sub_2393FF08C(v4) != a3)
  {
    sub_2394170F4(11, 0, 134, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509_att.c", 213);
    return 0;
  }

  return sub_2393FF0B4(v5);
}

unint64_t *sub_239465A5C(uint64_t a1, int a2)
{
  if (!a1 || sub_239431484(*(a1 + 8)) <= a2)
  {
    return 0;
  }

  v4 = *(a1 + 8);

  return sub_239457528(v4, a2);
}

uint64_t sub_239465AD0(uint64_t a1, uint64_t a2)
{
  if ((!*(a1 + 24) || *(a1 + 8)) && (sub_23946DE3C(a1, 0) & 0x80000000) != 0 || (!*(a2 + 24) || *(a2 + 8)) && (sub_23946DE3C(a2, 0) & 0x80000000) != 0)
  {
    return 4294967294;
  }

  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  result = (v4 - v5);
  if (v4 == v5)
  {
    if (v4)
    {
      v7 = *(a2 + 24);
      v8 = *(a1 + 24);

      return memcmp(v8, v7, v4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_239465BA0(uint64_t a1, uint64_t a2)
{
  v2 = bswap64(*(a1 + 52));
  v3 = bswap64(*(a2 + 52));
  if (v2 == v3)
  {
    v2 = bswap64(*(a1 + 60));
    v3 = bswap64(*(a2 + 60));
    if (v2 == v3)
    {
      v2 = bswap64(*(a1 + 68));
      v3 = bswap64(*(a2 + 68));
      if (v2 == v3)
      {
        v2 = bswap64(*(a1 + 76));
        v3 = bswap64(*(a2 + 76));
        if (v2 == v3)
        {
          return 0;
        }
      }
    }
  }

  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t sub_239465C30(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((sub_23946DE3C(a1, 0) & 0x80000000) != 0)
  {
    result = 0;
  }

  else
  {
    sub_239443030(*(a1 + 24), *(a1 + 32), v4);
    result = v4[0];
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239465CB8(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((sub_23946DE3C(a1, 0) & 0x80000000) != 0)
  {
    result = 0;
  }

  else
  {
    sub_23943B930(*(*(a1 + 16) + 8), **(a1 + 16), v4);
    result = v4[0];
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}
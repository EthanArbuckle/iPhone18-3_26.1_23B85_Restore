void *sub_183F9C640(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13 = result[1];
  if (!v13)
  {
    return result;
  }

  v18 = 0;
  v19 = a13;
  v20 = a11;
  v21 = result[5];
  v22 = result[2];
  v23 = result[3];
  result = *result;
  v24 = v23 - 4;
  if (v22 <= 0x100000000)
  {
    v25 = 0x100000000 - v22;
  }

  else
  {
    v25 = 0;
  }

  v47 = v13;
  v46 = v21;
  v44 = v23;
  v45 = v22;
  v42 = v23 - 4;
  v43 = result;
  v41 = v25;
  while ((v22 & 0x8000000000000000) == 0)
  {
    if (v18 == v25)
    {
      goto LABEL_45;
    }

    v26 = v18 + v22;
    if (v18 + v22)
    {
      v27 = *(v24 + 4 * v26);
    }

    else
    {
      v27 = 0;
    }

    if (v21)
    {
      v28 = (v21 + 8 * v27);
    }

    else
    {
      v28 = 0;
    }

    v29 = *a4;
    if (a5 < *a4)
    {
      goto LABEL_46;
    }

    v30 = result[v18];
    v31 = *(v23 + 4 * v26);
    if (a2)
    {
      v32 = (a2 + 8 * v29);
    }

    else
    {
      v32 = 0;
    }

    if (v31 == v27 || a5 == v29)
    {
      v33 = 0;
      if ((a6 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v34 = a5;
      v35 = a8;
      v36 = v31 - v27;
      if (v36 >= a5 - *a4)
      {
        v33 = a5 - *a4;
      }

      else
      {
        v33 = v36;
      }

      memcpy(v32, v28, 8 * v33);
      a8 = v35;
      a5 = v34;
      if ((a6 & 1) == 0)
      {
        v19 = a13;
        v13 = v47;
        v21 = v46;
        v20 = a11;
        v23 = v44;
        v22 = v45;
        v24 = v42;
        result = v43;
        v25 = v41;
        goto LABEL_36;
      }

      v19 = a13;
      v13 = v47;
      v21 = v46;
      v20 = a11;
      v23 = v44;
      v22 = v45;
      v24 = v42;
      result = v43;
      v25 = v41;
      if (v33 < 0)
      {
        goto LABEL_51;
      }
    }

    if (*(a7 + 8) == v33)
    {
      if (!v33)
      {
        goto LABEL_6;
      }

      v37 = *a7;
      v38 = v33;
      v39 = v32;
      while (*v37 == *v39)
      {
        ++v39;
        ++v37;
        if (!--v38)
        {
          goto LABEL_6;
        }
      }
    }

    *a7 = v32;
    *(a7 + 8) = v33;
LABEL_36:
    if (__OFADD__(*a4, v33))
    {
      goto LABEL_47;
    }

    *a4 += v33;
    *(a8 + 8 * *a10) = v30;
    v40 = v19 + *a4;
    if (__OFADD__(v19, *a4))
    {
      goto LABEL_48;
    }

    if ((v40 & 0x8000000000000000) != 0)
    {
      goto LABEL_49;
    }

    if (HIDWORD(v40))
    {
      goto LABEL_50;
    }

    *(v20 + 4 * *a10) = v40;
    if (__OFADD__(*a10, 1))
    {
      __break(1u);
      return result;
    }

    ++*a10;
LABEL_6:
    if (++v18 == v13)
    {
      return result;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_183F9C864(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = 0;
  v15 = 0;
  v41 = *result;
  v42 = *(result + 16);
  v43 = *(result + 24);
  v51 = *(result + 32);
  v52 = *(result + 8);
  v44 = *(result + 40);
  v16 = *(result + 56);
  v17 = *(result + 60);
  v18 = *(result + 64);
  v19 = *(result + 68);
  v39 = *(result + 88);
  v40 = *(result + 72);
  v37 = *(result + 120);
  v38 = *(result + 104);
  v49 = *(result + 136);
  while (1)
  {
LABEL_2:
    if (v15 == v52)
    {
      if (v14 == v51)
      {
        return result;
      }

      v20 = v14 + v44;
      if (__OFADD__(v14, v44))
      {
        goto LABEL_75;
      }

      if ((v20 & 0x8000000000000000) != 0)
      {
        goto LABEL_76;
      }

      v21 = HIDWORD(v20);
      if (HIDWORD(v20))
      {
        goto LABEL_77;
      }

      v22 = *(v43 + 8 * v14++);
      v53[0] = 1;
      v15 = v52;
      goto LABEL_8;
    }

    v21 = v15 + v42;
    v23 = __OFADD__(v15, v42);
    if (v14 == v51)
    {
      if (v23)
      {
        goto LABEL_78;
      }

      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_80;
      }

      v20 = HIDWORD(v21);
      if (HIDWORD(v21))
      {
        goto LABEL_82;
      }

      v22 = *(v41 + 8 * v15++);
      v53[0] = 0;
      v14 = v51;
    }

    else
    {
      if (v23)
      {
        goto LABEL_79;
      }

      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_81;
      }

      if (HIDWORD(v21))
      {
        goto LABEL_83;
      }

      v20 = v14 + v44;
      if (__OFADD__(v14, v44))
      {
        goto LABEL_84;
      }

      if ((v20 & 0x8000000000000000) != 0)
      {
        goto LABEL_85;
      }

      if (HIDWORD(v20))
      {
        goto LABEL_86;
      }

      v24 = *(v41 + 8 * v15);
      v25 = *(v43 + 8 * v14);
      if (v24 >= v25)
      {
        if (v25 >= v24)
        {
          ++v15;
          ++v14;
          v22 = v24;
          v53[0] = 0;
        }

        else
        {
          LODWORD(v21) = 0;
          ++v14;
          v22 = v25;
          v53[0] = 1;
        }

LABEL_8:
        v54 = 0;
        goto LABEL_26;
      }

      LODWORD(v20) = 0;
      ++v15;
      v22 = v24;
      v53[0] = 0;
    }

    v54 = 1;
LABEL_26:
    if ((v53[0] & 1) == 0)
    {
      v16 = v21;
    }

    v17 &= v53[0];
    if ((v54 & 1) == 0)
    {
      v18 = v20;
    }

    if (v17)
    {
      v26 = 0;
      v27 = 0;
      v19 &= v54;
      if (v19)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (v16)
      {
        v29 = *(v40 - 4 + 4 * v16);
      }

      else
      {
        v29 = 0;
      }

      v26 = v39 + 8 * v29;
      if (!v39)
      {
        v26 = 0;
      }

      v27 = *(v40 + 4 * v16) - v29;
      v19 &= v54;
      if (v19)
      {
LABEL_44:
        v30 = 0;
        v31 = 0;
        goto LABEL_45;
      }
    }

    if (v18)
    {
      v28 = *(v38 - 4 + 4 * v18);
    }

    else
    {
      v28 = 0;
    }

    v30 = v37 + 8 * v28;
    if (!v37)
    {
      v30 = 0;
    }

    v31 = *(v38 + 4 * v18) - v28;
LABEL_45:
    v55 = v26;
    v56 = v27;
    v57 = v30;
    v58 = v31;
    v59 = v49;
    v60 = 0x7FF8000000000000;
    v61 = 0;
    v62 = 0;
    if (a5 < *a4)
    {
      break;
    }

    if (a2)
    {
      v32 = (a2 + 8 * *a4);
    }

    else
    {
      v32 = 0;
    }

    result = sub_183FA970C(v53, v32, a5 - *a4);
    if (a6)
    {
      if (result < 0)
      {
        goto LABEL_74;
      }

      if (*(a7 + 8) != result)
      {
        goto LABEL_57;
      }

      if (result)
      {
        v33 = *a7;
        v34 = result;
        v35 = v32;
        while (*v33 == *v35)
        {
          ++v35;
          ++v33;
          if (!--v34)
          {
            goto LABEL_2;
          }
        }

LABEL_57:
        *a7 = v32;
        *(a7 + 8) = result;
        goto LABEL_58;
      }
    }

    else
    {
LABEL_58:
      if (__OFADD__(*a4, result))
      {
        goto LABEL_69;
      }

      *a4 += result;
      *(a8 + 8 * *a10) = v22;
      v36 = a13 + *a4;
      if (__OFADD__(a13, *a4))
      {
        goto LABEL_70;
      }

      if ((v36 & 0x8000000000000000) != 0)
      {
        goto LABEL_71;
      }

      if (HIDWORD(v36))
      {
        goto LABEL_72;
      }

      *(a11 + 4 * *a10) = v36;
      if (__OFADD__(*a10, 1))
      {
        goto LABEL_73;
      }

      ++*a10;
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
  return result;
}

uint64_t sub_183F9CC40(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, void *a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = 0;
  v16 = 0;
  v59 = *(result + 16);
  v60 = *result;
  v61 = *(result + 24);
  v67 = *(result + 32);
  v68 = *(result + 8);
  v62 = *(result + 40);
  v17 = *(result + 56);
  v18 = *(result + 60);
  v19 = *(result + 64);
  v20 = *(result + 68);
  v57 = *(result + 88);
  v58 = *(result + 72);
  v21 = *(result + 104);
  v22 = *(result + 112);
  v23 = *(result + 120);
  v24 = *(result + 128);
  v56 = a5 - 1;
  v25 = *(result + 136);
  while (1)
  {
LABEL_2:
    if (v16 == v68)
    {
      if (v15 == v67)
      {
        return result;
      }

      v26 = v15 + v62;
      if (__OFADD__(v15, v62))
      {
        goto LABEL_105;
      }

      if ((v26 & 0x8000000000000000) != 0)
      {
        goto LABEL_106;
      }

      v27 = HIDWORD(v26);
      if (HIDWORD(v26))
      {
        goto LABEL_107;
      }

      v28 = *(v61 + 8 * v15++);
      v70 = 1;
      v16 = v68;
      goto LABEL_8;
    }

    v28 = *(v60 + 8 * v16);
    v27 = v16 + v59;
    v29 = __OFADD__(v16, v59);
    if (v15 == v67)
    {
      if (v29)
      {
        goto LABEL_110;
      }

      if ((v27 & 0x8000000000000000) != 0)
      {
        goto LABEL_113;
      }

      v26 = HIDWORD(v27);
      if (HIDWORD(v27))
      {
        goto LABEL_114;
      }

      ++v16;
      v70 = 0;
      v69 = 1;
      v15 = v67;
    }

    else
    {
      if (v29)
      {
        goto LABEL_111;
      }

      if ((v27 & 0x8000000000000000) != 0)
      {
        goto LABEL_112;
      }

      if (HIDWORD(v27))
      {
        goto LABEL_115;
      }

      v26 = v15 + v62;
      if (__OFADD__(v15, v62))
      {
        goto LABEL_116;
      }

      if ((v26 & 0x8000000000000000) != 0)
      {
        goto LABEL_117;
      }

      if (HIDWORD(v26))
      {
        goto LABEL_118;
      }

      v30 = *(v61 + 8 * v15);
      if (v28 >= v30)
      {
        if (v30 >= v28)
        {
          ++v16;
          ++v15;
          v70 = 0;
LABEL_8:
          v69 = 0;
          goto LABEL_27;
        }

        LODWORD(v27) = 0;
        ++v15;
        v70 = 1;
        v69 = 0;
        v28 = v30;
      }

      else
      {
        LODWORD(v26) = 0;
        ++v16;
        v70 = 0;
        v69 = 1;
      }
    }

LABEL_27:
    if ((v70 & 1) == 0)
    {
      v17 = v27;
    }

    v18 &= v70;
    if ((v69 & 1) == 0)
    {
      v19 = v26;
    }

    v20 &= v69;
    v31 = v25 ? v18 : v20;
    if (v31)
    {
      v32 = 0;
      v33 = 0;
    }

    else
    {
      v34 = v25 ? v17 : v19;
      v35 = v34 ? *(v58 - 4 + 4 * v34) : 0;
      v36 = *(v58 + 4 * v34);
      v32 = v57 ? v57 + 8 * v35 : 0;
      v33 = v36 - v35;
    }

    v37 = v28 < v24 && v23 <= v28;
    result = sub_183F93C10(v32, v33, v37, v71, v21, v22);
    v38 = *a4;
    v39 = a5 - *a4;
    if (a5 < *a4)
    {
      break;
    }

    if (a2)
    {
      v40 = v72;
      if (v72 >= 0)
      {
        v41 = v72 & 1;
      }

      else
      {
        v41 = -(v72 & 1);
      }

      v42 = v72 - v41;
      if (__OFSUB__(v72, v41))
      {
        goto LABEL_104;
      }

      v43 = a2 + 8 * v38;
      if (v39)
      {
        v44 = v73;
        if (v73 >= 0)
        {
          v45 = v73 & 1;
        }

        else
        {
          v45 = -(v73 & 1);
        }

        v46 = __OFADD__(v73, v45);
        if (v39 < 1)
        {
          goto LABEL_108;
        }

        if (v46)
        {
          goto LABEL_109;
        }

        if (v42 != v73 + v45)
        {
          v47 = 0;
          v49 = v71[2];
          v48 = v71[3];
          v50 = v73 + v45 + v41 - v72;
          v51 = v71[0] - 8 * v41 + 8 * v72;
          v52 = v56 - v38;
          while (1)
          {
            v53 = v49;
            if (v42 + v47 >= v40)
            {
              v53 = v48;
              if (v42 + v47 < v44)
              {
                v53 = *(v51 + 8 * v47);
              }
            }

            *(v43 + 8 * v47) = v53;
            if (v52 == v47)
            {
              break;
            }

            if (__OFADD__(v47 + 1, 1))
            {
              __break(1u);
              goto LABEL_98;
            }

            if (v50 == ++v47)
            {
              if ((a6 & 1) == 0)
              {
                goto LABEL_89;
              }

              goto LABEL_81;
            }
          }

          v47 = v39;
          if ((a6 & 1) == 0)
          {
            goto LABEL_89;
          }

LABEL_81:
          if (v47 < 0)
          {
            goto LABEL_119;
          }

          goto LABEL_82;
        }
      }

      v47 = 0;
      if (a6)
      {
LABEL_82:
        if (a7[1] != v47)
        {
          goto LABEL_88;
        }

        if (v47)
        {
          v54 = 0;
          while (*(*a7 + 8 * v54) == *(v43 + 8 * v54))
          {
            if (v47 == ++v54)
            {
              goto LABEL_2;
            }
          }

          goto LABEL_88;
        }
      }

      else
      {
LABEL_89:
        if (__OFADD__(*a4, v47))
        {
          goto LABEL_99;
        }

        *a4 += v47;
        *(a8 + 8 * *a10) = v28;
        v55 = a13 + *a4;
        if (__OFADD__(a13, *a4))
        {
          goto LABEL_100;
        }

        if ((v55 & 0x8000000000000000) != 0)
        {
          goto LABEL_101;
        }

        if (HIDWORD(v55))
        {
          goto LABEL_102;
        }

        *(a11 + 4 * *a10) = v55;
        if (__OFADD__(*a10, 1))
        {
          goto LABEL_103;
        }

        ++*a10;
      }
    }

    else
    {
      if ((a6 & 1) == 0)
      {
        v47 = 0;
        goto LABEL_89;
      }

      if (a7[1])
      {
        v47 = 0;
        v43 = 0;
LABEL_88:
        *a7 = v43;
        a7[1] = v47;
        goto LABEL_89;
      }
    }
  }

LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
  return result;
}

uint64_t sub_183F9D0D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, char a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17)
{
  v195 = *MEMORY[0x1E69E9840];
  v22 = *(result + 16);
  v24 = *(result + 32);
  v23 = *(result + 40);
  if ((~*result & 0x7FF0000000000000) == 0 && (*result & 0xFFFFFFFFFFFFFLL) != 0 || *(v24 + 16))
  {
    v25 = v24 + 32;
    v174 = v23 + 32;
    v173 = *(result + 48) + 32;
    v26 = (*a2 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a2 & 0x7FF0000000000000) == 0;
    v27 = *(a2 + 32);
    v28 = *(v27 + 16);
    v176 = v25 + 8 * a3;
    if (!v26 && !v28)
    {
      v29 = 0;
      v30 = 0;
      v31 = *(a2 + 24);
      *v185 = *a2;
      *&v185[8] = *(a2 + 8);
      *&v185[24] = v31;
      v32 = a4 - a3;
      v170 = v23 + 28;
      v33 = 1;
      while (1)
      {
LABEL_10:
        if (v30 == v32)
        {
          if (v29 == 2)
          {
            return result;
          }

          LODWORD(v34) = 0;
          v35 = *&v185[8 * v29++ + 16];
          v186[0] = 1;
          v30 = v32;
        }

        else
        {
          v35 = *(v176 + 8 * v30);
          v34 = v30 + a3;
          v36 = __OFADD__(v30, a3);
          if (v29 == 2)
          {
            if (v36)
            {
              goto LABEL_384;
            }

            if ((v34 & 0x8000000000000000) != 0)
            {
              goto LABEL_385;
            }

            if (HIDWORD(v34))
            {
              goto LABEL_388;
            }

            ++v30;
            v186[0] = 0;
            v29 = 2;
          }

          else
          {
            if (v36)
            {
              goto LABEL_383;
            }

            if ((v34 & 0x8000000000000000) != 0)
            {
              goto LABEL_386;
            }

            if (HIDWORD(v34))
            {
              goto LABEL_387;
            }

            v37 = *&v185[8 * v29 + 16];
            if (v35 >= v37)
            {
              if (v37 < v35)
              {
                LODWORD(v34) = 0;
                ++v29;
                v186[0] = 1;
                v35 = v37;
                goto LABEL_30;
              }

              ++v30;
              ++v29;
            }

            else
            {
              ++v30;
            }

            v186[0] = 0;
          }
        }

LABEL_30:
        if ((v186[0] & 1) == 0)
        {
          LODWORD(v28) = v34;
        }

        v33 &= v186[0];
        if (v33)
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v41 = 0;
          if (v35 >= a11 && v35 < a12)
          {
            goto LABEL_58;
          }
        }

        else
        {
          if (v28)
          {
            v43 = *(v170 + 4 * v28);
          }

          else
          {
            v43 = 0;
          }

          v39 = v173 + 8 * v43;
          v38 = *(v174 + 4 * v28) - v43;
          if (v35 >= a11 && v35 < a12)
          {
            if (v38 < 2)
            {
              v41 = 0;
              if (v38 == 1)
              {
                goto LABEL_55;
              }
            }

            else
            {
              v41 = 0;
              for (i = v38; i > 1; i -= i >> 1)
              {
                if (*(v39 + 8 * (v41 + (i >> 1))) < a9)
                {
                  v41 += i >> 1;
                }
              }

              if (v41 >= v38)
              {
                goto LABEL_57;
              }

LABEL_55:
              if (*(v39 + 8 * v41) < a9)
              {
                ++v41;
              }
            }

LABEL_57:
            v40 = v39;
LABEL_58:
            v48 = v38 - v41;
            v45 = v41;
            if (v38 - v41 >= 2)
            {
              v45 = v41;
              do
              {
                v49 = v48 >> 1;
                v48 -= v48 >> 1;
                v50 = v45 + v49;
                if (*(v40 + 8 * v50) <= a10)
                {
                  v45 = v50;
                }
              }

              while (v48 > 1);
            }

            if (v45 < v38 && *(v40 + 8 * v45) <= a10)
            {
              ++v45;
            }

            v51 = v38 + v41;
            if (__OFADD__(v38, v41))
            {
              goto LABEL_371;
            }

            v52 = __OFSUB__(v51, v45);
            v53 = v51 - v45;
            if (v52)
            {
              goto LABEL_372;
            }

            v54 = v41 & 1;
            if (v41 < 0)
            {
              v54 = -v54;
            }

            v55 = 1 - v54;
            v52 = __OFADD__(v53, v55);
            v56 = v53 + v55;
            if (v52)
            {
              goto LABEL_373;
            }

            v57 = v45 & 1;
            if (v45 < 0)
            {
              v57 = -v57;
            }

            v58 = 1 - v57;
            v52 = __OFADD__(v56, v58);
            v46 = v56 + v58;
            if (v52)
            {
              goto LABEL_375;
            }

            goto LABEL_74;
          }
        }

        v41 = v38 + 1;
        v40 = v39;
        v45 = v38 + 1;
        v46 = v38;
LABEL_74:
        v187 = v40;
        v188 = v38;
        v189 = a9;
        v190 = a10;
        v191 = v41;
        v192 = v45;
        v193 = 0;
        v194 = v46;
        if (a7 < *a6)
        {
          __break(1u);
          goto LABEL_360;
        }

        if (a5)
        {
          v59 = (a5 + 8 * *a6);
        }

        else
        {
          v59 = 0;
        }

        result = sub_183FA99A4(v186, v59, a7 - *a6);
        if (a8)
        {
          if (result < 0)
          {
            goto LABEL_374;
          }

          if (*(a13 + 8) != result)
          {
            goto LABEL_86;
          }

          if (result)
          {
            v60 = *a13;
            v61 = result;
            v62 = v59;
            while (*v60 == *v62)
            {
              ++v62;
              ++v60;
              if (!--v61)
              {
                goto LABEL_10;
              }
            }

LABEL_86:
            *a13 = v59;
            *(a13 + 8) = result;
            goto LABEL_87;
          }
        }

        else
        {
LABEL_87:
          if (__OFADD__(*a6, result))
          {
            goto LABEL_361;
          }

          *a6 += result;
          *(a14 + 8 * *a15) = v35;
          v63 = a17 + *a6;
          if (__OFADD__(a17, *a6))
          {
            goto LABEL_362;
          }

          if ((v63 & 0x8000000000000000) != 0)
          {
            goto LABEL_363;
          }

          if (HIDWORD(v63))
          {
            goto LABEL_364;
          }

          *(a16 + 4 * *a15) = v63;
          if (__OFADD__(*a15, 1))
          {
            goto LABEL_365;
          }

          ++*a15;
        }
      }
    }

    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = a4 - a3;
    v171 = v23 + 28;
    v172 = v27 + 32;
    v68 = 1;
    while (1)
    {
LABEL_94:
      if (v66 == v67)
      {
        if (v65 == v28)
        {
          return result;
        }

        if ((v65 & 0x8000000000000000) != 0)
        {
          goto LABEL_381;
        }

        v69 = HIDWORD(v65);
        if (HIDWORD(v65))
        {
          goto LABEL_382;
        }

        v70 = *(v172 + 8 * v65++);
        v186[0] = 1;
        v66 = v67;
      }

      else
      {
        v70 = *(v176 + 8 * v66);
        v69 = v66 + a3;
        v71 = __OFADD__(v66, a3);
        if (v65 == v28)
        {
          if (v71)
          {
            goto LABEL_389;
          }

          if ((v69 & 0x8000000000000000) != 0)
          {
            goto LABEL_391;
          }

          if (HIDWORD(v69))
          {
            goto LABEL_394;
          }

          ++v66;
          v186[0] = 0;
          v65 = v28;
        }

        else
        {
          if (v71)
          {
            goto LABEL_390;
          }

          if ((v69 & 0x8000000000000000) != 0)
          {
            goto LABEL_392;
          }

          if (HIDWORD(v69))
          {
            goto LABEL_393;
          }

          if ((v65 & 0x8000000000000000) != 0)
          {
            goto LABEL_395;
          }

          if (HIDWORD(v65))
          {
            goto LABEL_396;
          }

          v72 = *(v172 + 8 * v65);
          if (v70 >= v72)
          {
            if (v72 < v70)
            {
              LODWORD(v69) = 0;
              ++v65;
              v186[0] = 1;
              v70 = v72;
              goto LABEL_118;
            }

            ++v66;
            ++v65;
          }

          else
          {
            ++v66;
          }

          v186[0] = 0;
        }
      }

LABEL_118:
      if ((v186[0] & 1) == 0)
      {
        v64 = v69;
      }

      v68 &= v186[0];
      if (v68)
      {
        v73 = 0;
        v74 = 0;
        v75 = 0;
        v76 = 0;
        if (v70 >= a11 && v70 < a12)
        {
          goto LABEL_146;
        }
      }

      else
      {
        if (v64)
        {
          v78 = *(v171 + 4 * v64);
        }

        else
        {
          v78 = 0;
        }

        v74 = v173 + 8 * v78;
        v73 = *(v174 + 4 * v64) - v78;
        if (v70 >= a11 && v70 < a12)
        {
          if (v73 < 2)
          {
            v76 = 0;
            if (v73 == 1)
            {
              goto LABEL_143;
            }
          }

          else
          {
            v76 = 0;
            for (j = v73; j > 1; j -= j >> 1)
            {
              if (*(v74 + 8 * (v76 + (j >> 1))) < a9)
              {
                v76 += j >> 1;
              }
            }

            if (v76 >= v73)
            {
              goto LABEL_145;
            }

LABEL_143:
            if (*(v74 + 8 * v76) < a9)
            {
              ++v76;
            }
          }

LABEL_145:
          v75 = v74;
LABEL_146:
          v83 = v73 - v76;
          v80 = v76;
          if (v73 - v76 >= 2)
          {
            v80 = v76;
            do
            {
              v84 = v83 >> 1;
              v83 -= v83 >> 1;
              v85 = v80 + v84;
              if (*(v75 + 8 * v85) <= a10)
              {
                v80 = v85;
              }
            }

            while (v83 > 1);
          }

          if (v80 < v73 && *(v75 + 8 * v80) <= a10)
          {
            ++v80;
          }

          v86 = v73 + v76;
          if (__OFADD__(v73, v76))
          {
            goto LABEL_376;
          }

          v52 = __OFSUB__(v86, v80);
          v87 = v86 - v80;
          if (v52)
          {
            goto LABEL_377;
          }

          v88 = v76 & 1;
          if (v76 < 0)
          {
            v88 = -v88;
          }

          v89 = 1 - v88;
          v52 = __OFADD__(v87, v89);
          v90 = v87 + v89;
          if (v52)
          {
            goto LABEL_378;
          }

          v91 = v80 & 1;
          if (v80 < 0)
          {
            v91 = -v91;
          }

          v92 = 1 - v91;
          v52 = __OFADD__(v90, v92);
          v81 = v90 + v92;
          if (v52)
          {
            goto LABEL_380;
          }

          goto LABEL_162;
        }
      }

      v76 = v73 + 1;
      v75 = v74;
      v80 = v73 + 1;
      v81 = v73;
LABEL_162:
      v187 = v75;
      v188 = v73;
      v189 = a9;
      v190 = a10;
      v191 = v76;
      v192 = v80;
      v193 = 0;
      v194 = v81;
      if (a7 < *a6)
      {
LABEL_360:
        __break(1u);
LABEL_361:
        __break(1u);
LABEL_362:
        __break(1u);
LABEL_363:
        __break(1u);
LABEL_364:
        __break(1u);
LABEL_365:
        __break(1u);
LABEL_366:
        __break(1u);
LABEL_367:
        __break(1u);
LABEL_368:
        __break(1u);
LABEL_369:
        __break(1u);
LABEL_370:
        __break(1u);
LABEL_371:
        __break(1u);
LABEL_372:
        __break(1u);
LABEL_373:
        __break(1u);
LABEL_374:
        __break(1u);
LABEL_375:
        __break(1u);
LABEL_376:
        __break(1u);
LABEL_377:
        __break(1u);
LABEL_378:
        __break(1u);
LABEL_379:
        __break(1u);
LABEL_380:
        __break(1u);
LABEL_381:
        __break(1u);
LABEL_382:
        __break(1u);
LABEL_383:
        __break(1u);
LABEL_384:
        __break(1u);
LABEL_385:
        __break(1u);
LABEL_386:
        __break(1u);
LABEL_387:
        __break(1u);
LABEL_388:
        __break(1u);
LABEL_389:
        __break(1u);
LABEL_390:
        __break(1u);
LABEL_391:
        __break(1u);
LABEL_392:
        __break(1u);
LABEL_393:
        __break(1u);
LABEL_394:
        __break(1u);
LABEL_395:
        __break(1u);
LABEL_396:
        __break(1u);
LABEL_397:
        __break(1u);
LABEL_398:
        __break(1u);
LABEL_399:
        __break(1u);
        goto LABEL_400;
      }

      if (a5)
      {
        v93 = (a5 + 8 * *a6);
      }

      else
      {
        v93 = 0;
      }

      result = sub_183FA99A4(v186, v93, a7 - *a6);
      if (a8)
      {
        if (result < 0)
        {
          goto LABEL_379;
        }

        if (*(a13 + 8) != result)
        {
          goto LABEL_174;
        }

        if (result)
        {
          v94 = *a13;
          v95 = result;
          v96 = v93;
          while (*v94 == *v96)
          {
            ++v96;
            ++v94;
            if (!--v95)
            {
              goto LABEL_94;
            }
          }

LABEL_174:
          *a13 = v93;
          *(a13 + 8) = result;
          goto LABEL_175;
        }
      }

      else
      {
LABEL_175:
        if (__OFADD__(*a6, result))
        {
          goto LABEL_366;
        }

        *a6 += result;
        *(a14 + 8 * *a15) = v70;
        v97 = a17 + *a6;
        if (__OFADD__(a17, *a6))
        {
          goto LABEL_367;
        }

        if ((v97 & 0x8000000000000000) != 0)
        {
          goto LABEL_368;
        }

        if (HIDWORD(v97))
        {
          goto LABEL_369;
        }

        *(a16 + 4 * *a15) = v97;
        if (__OFADD__(*a15, 1))
        {
          goto LABEL_370;
        }

        ++*a15;
      }
    }
  }

  *v185 = *result;
  *&v185[16] = v22;
  v184 = 0x200000002;
  v98 = (*a2 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a2 & 0x7FF0000000000000) == 0;
  v99 = *(a2 + 32);
  v100 = *(v99 + 16);
  v177 = &v185[8 * a3 + 16];
  if (!v98 && !v100)
  {
    v101 = 0;
    v102 = 0;
    v103 = 0;
    v104 = *(a2 + 24);
    v105 = a4 - a3;
    v182 = *(a2 + 8);
    v183 = v104;
    v106 = 1;
    while (1)
    {
LABEL_187:
      if (v103 == v105)
      {
        if (v102 == 2)
        {
          return result;
        }

        LODWORD(v107) = 0;
        v108 = *(&v182 + ++v102);
        v186[0] = 1;
        v103 = v105;
      }

      else
      {
        v108 = *&v177[8 * v103];
        v107 = v103 + a3;
        v109 = __OFADD__(v103, a3);
        if (v102 == 2)
        {
          if (v109)
          {
            goto LABEL_422;
          }

          if ((v107 & 0x8000000000000000) != 0)
          {
            goto LABEL_423;
          }

          if (HIDWORD(v107))
          {
            goto LABEL_426;
          }

          ++v103;
          v186[0] = 0;
          v102 = 2;
        }

        else
        {
          if (v109)
          {
            goto LABEL_421;
          }

          if ((v107 & 0x8000000000000000) != 0)
          {
            goto LABEL_424;
          }

          if (HIDWORD(v107))
          {
            goto LABEL_425;
          }

          v110 = *(&v182 + v102 + 1);
          if (v108 >= v110)
          {
            if (v110 < v108)
            {
              LODWORD(v107) = 0;
              ++v102;
              v186[0] = 1;
              v108 = v110;
              goto LABEL_207;
            }

            ++v103;
            ++v102;
          }

          else
          {
            ++v103;
          }

          v186[0] = 0;
        }
      }

LABEL_207:
      if ((v186[0] & 1) == 0)
      {
        v101 = v107;
      }

      v106 &= v186[0];
      if (v106)
      {
        v111 = 0;
        v112 = 0;
        v113 = 0;
        v114 = 0;
        if (v108 >= a11 && v108 < a12)
        {
          goto LABEL_235;
        }
      }

      else
      {
        if (v101)
        {
          v116 = *(&v183 + v101 + 1);
        }

        else
        {
          v116 = 0;
        }

        v112 = &v185[8 * v116];
        v111 = *&v185[4 * v101 - 8] - v116;
        if (v108 >= a11 && v108 < a12)
        {
          if (v111 < 2)
          {
            v114 = 0;
            if (v111 == 1)
            {
              goto LABEL_232;
            }
          }

          else
          {
            v114 = 0;
            for (k = v111; k > 1; k -= k >> 1)
            {
              if (*&v112[8 * v114 + 8 * (k >> 1)] < a9)
              {
                v114 += k >> 1;
              }
            }

            if (v114 >= v111)
            {
              goto LABEL_234;
            }

LABEL_232:
            if (*&v112[8 * v114] < a9)
            {
              ++v114;
            }
          }

LABEL_234:
          v113 = v112;
LABEL_235:
          v121 = v111 - v114;
          v118 = v114;
          if (v111 - v114 >= 2)
          {
            v118 = v114;
            do
            {
              v122 = v121 >> 1;
              v121 -= v121 >> 1;
              v123 = v118 + v122;
              if (*&v113[8 * v123] <= a10)
              {
                v118 = v123;
              }
            }

            while (v121 > 1);
          }

          if (v118 < v111 && *&v113[8 * v118] <= a10)
          {
            ++v118;
          }

          v124 = v111 + v114;
          if (__OFADD__(v111, v114))
          {
            goto LABEL_409;
          }

          v52 = __OFSUB__(v124, v118);
          v125 = v124 - v118;
          if (v52)
          {
            goto LABEL_410;
          }

          v126 = v114 & 1;
          if (v114 < 0)
          {
            v126 = -v126;
          }

          v127 = 1 - v126;
          v52 = __OFADD__(v125, v127);
          v128 = v125 + v127;
          if (v52)
          {
            goto LABEL_411;
          }

          v129 = v118 & 1;
          if (v118 < 0)
          {
            v129 = -v129;
          }

          v130 = 1 - v129;
          v52 = __OFADD__(v128, v130);
          v119 = v128 + v130;
          if (v52)
          {
            goto LABEL_413;
          }

          goto LABEL_251;
        }
      }

      v118 = v111 + 1;
      v113 = v112;
      v119 = v111;
      v114 = v111 + 1;
LABEL_251:
      v187 = v113;
      v188 = v111;
      v189 = a9;
      v190 = a10;
      v191 = v114;
      v192 = v118;
      v193 = 0;
      v194 = v119;
      if (a7 < *a6)
      {
        goto LABEL_397;
      }

      if (a5)
      {
        v131 = (a5 + 8 * *a6);
      }

      else
      {
        v131 = 0;
      }

      result = sub_183FA99A4(v186, v131, a7 - *a6);
      if (a8)
      {
        if (result < 0)
        {
          goto LABEL_412;
        }

        if (*(a13 + 8) != result)
        {
          goto LABEL_263;
        }

        if (result)
        {
          v132 = *a13;
          v133 = result;
          v134 = v131;
          while (*v132 == *v134)
          {
            ++v134;
            ++v132;
            if (!--v133)
            {
              goto LABEL_187;
            }
          }

LABEL_263:
          *a13 = v131;
          *(a13 + 8) = result;
          goto LABEL_264;
        }
      }

      else
      {
LABEL_264:
        if (__OFADD__(*a6, result))
        {
          goto LABEL_399;
        }

        *a6 += result;
        *(a14 + 8 * *a15) = v108;
        v135 = a17 + *a6;
        if (__OFADD__(a17, *a6))
        {
LABEL_400:
          __break(1u);
LABEL_401:
          __break(1u);
LABEL_402:
          __break(1u);
LABEL_403:
          __break(1u);
LABEL_404:
          __break(1u);
          goto LABEL_405;
        }

        if ((v135 & 0x8000000000000000) != 0)
        {
          goto LABEL_401;
        }

        if (HIDWORD(v135))
        {
          goto LABEL_402;
        }

        *(a16 + 4 * *a15) = v135;
        if (__OFADD__(*a15, 1))
        {
          goto LABEL_403;
        }

        ++*a15;
      }
    }
  }

  v136 = 0;
  v137 = 0;
  v138 = 0;
  v139 = a4 - a3;
  v175 = v99 + 32;
  v140 = 1;
LABEL_271:
  while (v138 != v139)
  {
    v142 = *&v177[8 * v138];
    v141 = v138 + a3;
    v143 = __OFADD__(v138, a3);
    if (v137 == v100)
    {
      if (v143)
      {
        goto LABEL_427;
      }

      if ((v141 & 0x8000000000000000) != 0)
      {
        goto LABEL_429;
      }

      if (HIDWORD(v141))
      {
        goto LABEL_432;
      }

      ++v138;
      v186[0] = 0;
      v137 = v100;
    }

    else
    {
      if (v143)
      {
        goto LABEL_428;
      }

      if ((v141 & 0x8000000000000000) != 0)
      {
        goto LABEL_430;
      }

      if (HIDWORD(v141))
      {
        goto LABEL_431;
      }

      if ((v137 & 0x8000000000000000) != 0)
      {
        goto LABEL_433;
      }

      if (HIDWORD(v137))
      {
        goto LABEL_434;
      }

      v144 = *(v175 + 8 * v137);
      if (v142 >= v144)
      {
        if (v144 < v142)
        {
          LODWORD(v141) = 0;
          ++v137;
          v186[0] = 1;
          v142 = v144;
          goto LABEL_295;
        }

        ++v138;
        ++v137;
      }

      else
      {
        ++v138;
      }

      v186[0] = 0;
    }

LABEL_295:
    if ((v186[0] & 1) == 0)
    {
      v136 = v141;
    }

    v140 &= v186[0];
    if (v140)
    {
      v145 = 0;
      v146 = 0;
      v147 = 0;
      v148 = 0;
      if (v142 >= a11 && v142 < a12)
      {
        goto LABEL_323;
      }
    }

    else
    {
      if (v136)
      {
        v150 = *(&v183 + v136 + 1);
      }

      else
      {
        v150 = 0;
      }

      v146 = &v185[8 * v150];
      v145 = *&v185[4 * v136 - 8] - v150;
      if (v142 >= a11 && v142 < a12)
      {
        if (v145 < 2)
        {
          v148 = 0;
          if (v145 == 1)
          {
            goto LABEL_320;
          }
        }

        else
        {
          v148 = 0;
          for (m = v145; m > 1; m -= m >> 1)
          {
            if (*&v146[8 * v148 + 8 * (m >> 1)] < a9)
            {
              v148 += m >> 1;
            }
          }

          if (v148 >= v145)
          {
            goto LABEL_322;
          }

LABEL_320:
          if (*&v146[8 * v148] < a9)
          {
            ++v148;
          }
        }

LABEL_322:
        v147 = v146;
LABEL_323:
        v155 = v145 - v148;
        v152 = v148;
        if (v145 - v148 >= 2)
        {
          v152 = v148;
          do
          {
            v156 = v155 >> 1;
            v155 -= v155 >> 1;
            v157 = v152 + v156;
            if (*&v147[8 * v157] <= a10)
            {
              v152 = v157;
            }
          }

          while (v155 > 1);
        }

        if (v152 < v145 && *&v147[8 * v152] <= a10)
        {
          ++v152;
        }

        v158 = v145 + v148;
        if (__OFADD__(v145, v148))
        {
          goto LABEL_414;
        }

        v52 = __OFSUB__(v158, v152);
        v159 = v158 - v152;
        if (v52)
        {
          goto LABEL_415;
        }

        v160 = v148 & 1;
        if (v148 < 0)
        {
          v160 = -v160;
        }

        v161 = 1 - v160;
        v52 = __OFADD__(v159, v161);
        v162 = v159 + v161;
        if (v52)
        {
          goto LABEL_416;
        }

        v163 = v152 & 1;
        if (v152 < 0)
        {
          v163 = -v163;
        }

        v164 = 1 - v163;
        v52 = __OFADD__(v162, v164);
        v153 = v162 + v164;
        if (v52)
        {
          goto LABEL_418;
        }

        goto LABEL_339;
      }
    }

    v148 = v145 + 1;
    v147 = v146;
    v152 = v145 + 1;
    v153 = v145;
LABEL_339:
    v187 = v147;
    v188 = v145;
    v189 = a9;
    v190 = a10;
    v191 = v148;
    v192 = v152;
    v193 = 0;
    v194 = v153;
    if (a7 < *a6)
    {
      goto LABEL_398;
    }

    if (a5)
    {
      v165 = (a5 + 8 * *a6);
    }

    else
    {
      v165 = 0;
    }

    result = sub_183FA99A4(v186, v165, a7 - *a6);
    if (a8)
    {
      if (result < 0)
      {
        goto LABEL_417;
      }

      if (*(a13 + 8) != result)
      {
        goto LABEL_351;
      }

      if (result)
      {
        v166 = *a13;
        v167 = result;
        v168 = v165;
        while (*v166 == *v168)
        {
          ++v168;
          ++v166;
          if (!--v167)
          {
            goto LABEL_271;
          }
        }

LABEL_351:
        *a13 = v165;
        *(a13 + 8) = result;
        goto LABEL_352;
      }
    }

    else
    {
LABEL_352:
      if (__OFADD__(*a6, result))
      {
        goto LABEL_404;
      }

      *a6 += result;
      *(a14 + 8 * *a15) = v142;
      v169 = a17 + *a6;
      if (__OFADD__(a17, *a6))
      {
LABEL_405:
        __break(1u);
LABEL_406:
        __break(1u);
LABEL_407:
        __break(1u);
LABEL_408:
        __break(1u);
LABEL_409:
        __break(1u);
LABEL_410:
        __break(1u);
LABEL_411:
        __break(1u);
LABEL_412:
        __break(1u);
LABEL_413:
        __break(1u);
LABEL_414:
        __break(1u);
LABEL_415:
        __break(1u);
LABEL_416:
        __break(1u);
LABEL_417:
        __break(1u);
LABEL_418:
        __break(1u);
LABEL_419:
        __break(1u);
LABEL_420:
        __break(1u);
LABEL_421:
        __break(1u);
LABEL_422:
        __break(1u);
LABEL_423:
        __break(1u);
LABEL_424:
        __break(1u);
LABEL_425:
        __break(1u);
LABEL_426:
        __break(1u);
LABEL_427:
        __break(1u);
LABEL_428:
        __break(1u);
LABEL_429:
        __break(1u);
LABEL_430:
        __break(1u);
LABEL_431:
        __break(1u);
LABEL_432:
        __break(1u);
LABEL_433:
        __break(1u);
LABEL_434:
        __break(1u);
      }

      if ((v169 & 0x8000000000000000) != 0)
      {
        goto LABEL_406;
      }

      if (HIDWORD(v169))
      {
        goto LABEL_407;
      }

      *(a16 + 4 * *a15) = v169;
      if (__OFADD__(*a15, 1))
      {
        goto LABEL_408;
      }

      ++*a15;
    }
  }

  if (v137 != v100)
  {
    if ((v137 & 0x8000000000000000) != 0)
    {
      goto LABEL_419;
    }

    v141 = HIDWORD(v137);
    if (HIDWORD(v137))
    {
      goto LABEL_420;
    }

    v142 = *(v175 + 8 * v137++);
    v186[0] = 1;
    v138 = v139;
    goto LABEL_295;
  }

  return result;
}

uint64_t sub_183F9E0F0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, char a8, double a9, double a10, double a11, double a12, uint64_t *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17)
{
  v176 = *MEMORY[0x1E69E9840];
  v17 = *(result + 16);
  v18 = *(result + 32);
  v19 = *(result + 40);
  if ((~*result & 0x7FF0000000000000) == 0 && (*result & 0xFFFFFFFFFFFFFLL) != 0 || *(v18 + 16))
  {
    v20 = v18 + 32;
    v168 = v19 + 32;
    v21 = *(result + 48) + 32;
    v22 = (*a2 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a2 & 0x7FF0000000000000) == 0;
    v23 = *(a2 + 32);
    v24 = *(v23 + 16);
    if (!v22 && !v24)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = *(a2 + 24);
      *v175 = *a2;
      *&v175[8] = *(a2 + 8);
      v29 = v20 + 8 * a3;
      v30 = a4 - a3;
      *&v175[24] = v28;
      result = v19 + 28;
      v31 = 1;
      while (1)
      {
LABEL_10:
        if (v27 == v30)
        {
          if (v26 == 2)
          {
            return result;
          }

          LODWORD(v32) = 0;
          v33 = *&v175[8 * v26++ + 16];
          v170 = 1;
          v27 = v30;
        }

        else
        {
          v33 = *(v29 + 8 * v27);
          v32 = v27 + a3;
          v34 = __OFADD__(v27, a3);
          if (v26 == 2)
          {
            if (v34)
            {
              goto LABEL_440;
            }

            if ((v32 & 0x8000000000000000) != 0)
            {
              goto LABEL_442;
            }

            if (HIDWORD(v32))
            {
              goto LABEL_444;
            }

            ++v27;
            v170 = 0;
            v26 = 2;
          }

          else
          {
            if (v34)
            {
              goto LABEL_439;
            }

            if ((v32 & 0x8000000000000000) != 0)
            {
              goto LABEL_441;
            }

            if (HIDWORD(v32))
            {
              goto LABEL_443;
            }

            v35 = *&v175[8 * v26 + 16];
            if (v33 >= v35)
            {
              if (v35 < v33)
              {
                LODWORD(v32) = 0;
                ++v26;
                v170 = 1;
                v33 = v35;
                goto LABEL_30;
              }

              ++v27;
              ++v26;
            }

            else
            {
              ++v27;
            }

            v170 = 0;
          }
        }

LABEL_30:
        v31 &= v170;
        if (v170)
        {
          v36 = v25;
        }

        else
        {
          v36 = v32;
        }

        if ((v31 & 1) == 0)
        {
          if (v36)
          {
            v40 = *(result + 4 * v36);
          }

          else
          {
            v40 = 0;
          }

          v37 = v21 + 8 * v40;
          if (v33 < a11 || v33 >= a12)
          {
            v38 = 0;
            v39 = 0;
LABEL_60:
            v25 = v36;
            goto LABEL_61;
          }

          v42 = *(v168 + 4 * v36) - v40;
          if (v42 < 2)
          {
            v39 = 0;
            v38 = 0;
            if (v42 != 1)
            {
LABEL_57:
              if (v38 < v42 && *(v37 + 8 * v38) < a10)
              {
                ++v38;
              }

              goto LABEL_60;
            }
          }

          else
          {
            v39 = 0;
            v43 = *(v168 + 4 * v36) - v40;
            do
            {
              if (*(v37 + 8 * (v39 + (v43 >> 1))) <= a9)
              {
                v39 += v43 >> 1;
              }

              v43 -= v43 >> 1;
            }

            while (v43 > 1);
            if (v39 >= v42)
            {
LABEL_53:
              v44 = v42 - v39;
              v38 = v39;
              if (v42 - v39 >= 2)
              {
                do
                {
                  v45 = v44 >> 1;
                  v44 -= v44 >> 1;
                  v46 = v38 + v45;
                  if (*(v37 + 8 * v46) < a10)
                  {
                    v38 = v46;
                  }
                }

                while (v44 > 1);
              }

              goto LABEL_57;
            }
          }

          if (*(v37 + 8 * v39) <= a9)
          {
            ++v39;
          }

          goto LABEL_53;
        }

        v37 = 0;
        v38 = 0;
        v39 = 0;
LABEL_61:
        v47 = *a6;
        v48 = a7 - *a6;
        if (a7 < *a6)
        {
          goto LABEL_417;
        }

        if (a5)
        {
          if (v39 >= 0)
          {
            v49 = v39 & 1;
          }

          else
          {
            v49 = -(v39 & 1);
          }

          v50 = v39 - v49;
          if (__OFSUB__(v39, v49))
          {
            goto LABEL_431;
          }

          v51 = a5 + 8 * v47;
          if (!v48)
          {
            goto LABEL_77;
          }

          if (v38 >= 0)
          {
            v52 = v38 & 1;
          }

          else
          {
            v52 = -(v38 & 1);
          }

          v53 = __OFADD__(v38, v52);
          if (v48 < 1)
          {
            goto LABEL_435;
          }

          if (v53)
          {
            goto LABEL_436;
          }

          if (v50 == v38 + v52)
          {
LABEL_77:
            v54 = 0;
            if (a8)
            {
              goto LABEL_94;
            }

            goto LABEL_101;
          }

          v54 = 0;
          v55 = v38 + v52 + v49 - v39;
          v56 = v37 - 8 * v49 + 8 * v39;
          v57 = a7 - 1 - v47;
          do
          {
            v58 = a9;
            if (v50 + v54 >= v39)
            {
              v58 = a10;
              if (v50 + v54 < v38)
              {
                v58 = *(v56 + 8 * v54);
              }
            }

            *(v51 + 8 * v54) = v58;
            if (v57 == v54)
            {
              v54 = v48;
              if (a8)
              {
                goto LABEL_93;
              }

              goto LABEL_101;
            }

            if (__OFADD__(v54 + 1, 1))
            {
              __break(1u);
              goto LABEL_416;
            }

            ++v54;
          }

          while (v55 != v54);
          if ((a8 & 1) == 0)
          {
            goto LABEL_101;
          }

LABEL_93:
          if (v54 < 0)
          {
            goto LABEL_455;
          }

LABEL_94:
          if (a13[1] != v54)
          {
            goto LABEL_100;
          }

          if (v54)
          {
            v59 = 0;
            while (*(*a13 + 8 * v59) == *(v51 + 8 * v59))
            {
              if (v54 == ++v59)
              {
                goto LABEL_10;
              }
            }

LABEL_100:
            *a13 = v51;
            a13[1] = v54;
LABEL_101:
            if (__OFADD__(*a6, v54))
            {
              goto LABEL_419;
            }

            *a6 += v54;
            *(a14 + 8 * *a15) = v33;
            v60 = a17 + *a6;
            if (__OFADD__(a17, *a6))
            {
              goto LABEL_420;
            }

            if ((v60 & 0x8000000000000000) != 0)
            {
              goto LABEL_421;
            }

            if (HIDWORD(v60))
            {
              goto LABEL_422;
            }

            *(a16 + 4 * *a15) = v60;
            if (__OFADD__(*a15, 1))
            {
              goto LABEL_423;
            }

            ++*a15;
          }
        }

        else
        {
          if ((a8 & 1) == 0)
          {
            v54 = 0;
            goto LABEL_101;
          }

          if (a13[1])
          {
            v54 = 0;
            v51 = 0;
            goto LABEL_100;
          }
        }
      }
    }

    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = v23 + 32;
    v65 = a4 - a3;
    v167 = v19 + 28;
    v66 = 1;
    v67 = v20 + 8 * a3;
    while (1)
    {
LABEL_108:
      if (v63 == v65)
      {
        if (v62 == v24)
        {
          return result;
        }

        if ((v62 & 0x8000000000000000) != 0)
        {
          goto LABEL_433;
        }

        if (HIDWORD(v62))
        {
          goto LABEL_434;
        }

        LODWORD(v68) = 0;
        v69 = *(v64 + 8 * v62++);
        v175[0] = 1;
        v63 = v65;
      }

      else
      {
        v69 = *(v67 + 8 * v63);
        v68 = v63 + a3;
        v70 = __OFADD__(v63, a3);
        if (v62 == v24)
        {
          if (v70)
          {
            goto LABEL_446;
          }

          if ((v68 & 0x8000000000000000) != 0)
          {
            goto LABEL_447;
          }

          if (HIDWORD(v68))
          {
            goto LABEL_450;
          }

          ++v63;
          v175[0] = 0;
          v62 = v24;
        }

        else
        {
          if (v70)
          {
            goto LABEL_445;
          }

          if ((v68 & 0x8000000000000000) != 0)
          {
            goto LABEL_448;
          }

          if (HIDWORD(v68))
          {
            goto LABEL_449;
          }

          if ((v62 & 0x8000000000000000) != 0)
          {
            goto LABEL_451;
          }

          if (HIDWORD(v62))
          {
            goto LABEL_452;
          }

          v71 = *(v64 + 8 * v62);
          if (v69 >= v71)
          {
            if (v71 < v69)
            {
              LODWORD(v68) = 0;
              ++v62;
              v175[0] = 1;
              v69 = v71;
              goto LABEL_132;
            }

            ++v63;
            ++v62;
          }

          else
          {
            ++v63;
          }

          v175[0] = 0;
        }
      }

LABEL_132:
      v66 &= v175[0];
      if (v175[0])
      {
        v72 = v61;
      }

      else
      {
        v72 = v68;
      }

      if ((v66 & 1) == 0)
      {
        if (v72)
        {
          v76 = *(v167 + 4 * v72);
        }

        else
        {
          v76 = 0;
        }

        v73 = v21 + 8 * v76;
        if (v69 < a11 || v69 >= a12)
        {
          v74 = 0;
          v75 = 0;
LABEL_162:
          v61 = v72;
          goto LABEL_163;
        }

        v78 = *(v168 + 4 * v72) - v76;
        if (v78 < 2)
        {
          v75 = 0;
          v74 = 0;
          if (v78 != 1)
          {
LABEL_159:
            if (v74 < v78 && *(v73 + 8 * v74) < a10)
            {
              ++v74;
            }

            goto LABEL_162;
          }
        }

        else
        {
          v75 = 0;
          v79 = *(v168 + 4 * v72) - v76;
          do
          {
            result = v75 + (v79 >> 1);
            if (*(v73 + 8 * result) <= a9)
            {
              v75 += v79 >> 1;
            }

            v79 -= v79 >> 1;
          }

          while (v79 > 1);
          if (v75 >= v78)
          {
LABEL_155:
            v80 = v78 - v75;
            v74 = v75;
            if (v78 - v75 >= 2)
            {
              do
              {
                v81 = v80 >> 1;
                v80 -= v80 >> 1;
                v82 = v74 + v81;
                if (*(v73 + 8 * v82) < a10)
                {
                  v74 = v82;
                }
              }

              while (v80 > 1);
            }

            goto LABEL_159;
          }
        }

        if (*(v73 + 8 * v75) <= a9)
        {
          ++v75;
        }

        goto LABEL_155;
      }

      v73 = 0;
      v74 = 0;
      v75 = 0;
LABEL_163:
      v83 = *a6;
      v84 = a7 - *a6;
      if (a7 < *a6)
      {
        goto LABEL_418;
      }

      if (a5)
      {
        if (v75 >= 0)
        {
          result = v75 & 1;
        }

        else
        {
          result = -(v75 & 1);
        }

        v85 = v75 - result;
        if (__OFSUB__(v75, result))
        {
          goto LABEL_432;
        }

        v86 = a5 + 8 * v83;
        if (!v84)
        {
          goto LABEL_179;
        }

        if (v74 >= 0)
        {
          v87 = v74 & 1;
        }

        else
        {
          v87 = -(v74 & 1);
        }

        v88 = __OFADD__(v74, v87);
        if (v84 < 1)
        {
          goto LABEL_437;
        }

        if (v88)
        {
          goto LABEL_438;
        }

        if (v85 == v74 + v87)
        {
LABEL_179:
          v89 = 0;
          if (a8)
          {
            goto LABEL_196;
          }

          goto LABEL_203;
        }

        v89 = 0;
        v90 = v74 + v87 + result - v75;
        v91 = v73 - 8 * result + 8 * v75;
        v92 = a7 - 1 - v83;
        do
        {
          result = v85 + v89;
          v93 = a9;
          if (v85 + v89 >= v75)
          {
            v93 = a10;
            if (result < v74)
            {
              v93 = *(v91 + 8 * v89);
            }
          }

          *(v86 + 8 * v89) = v93;
          if (v92 == v89)
          {
            v89 = v84;
            if (a8)
            {
              goto LABEL_195;
            }

            goto LABEL_203;
          }

          if (__OFADD__(v89 + 1, 1))
          {
LABEL_416:
            __break(1u);
LABEL_417:
            __break(1u);
LABEL_418:
            __break(1u);
LABEL_419:
            __break(1u);
LABEL_420:
            __break(1u);
LABEL_421:
            __break(1u);
LABEL_422:
            __break(1u);
LABEL_423:
            __break(1u);
LABEL_424:
            __break(1u);
LABEL_425:
            __break(1u);
LABEL_426:
            __break(1u);
LABEL_427:
            __break(1u);
LABEL_428:
            __break(1u);
LABEL_429:
            __break(1u);
LABEL_430:
            __break(1u);
LABEL_431:
            __break(1u);
LABEL_432:
            __break(1u);
LABEL_433:
            __break(1u);
LABEL_434:
            __break(1u);
LABEL_435:
            __break(1u);
LABEL_436:
            __break(1u);
LABEL_437:
            __break(1u);
LABEL_438:
            __break(1u);
LABEL_439:
            __break(1u);
LABEL_440:
            __break(1u);
LABEL_441:
            __break(1u);
LABEL_442:
            __break(1u);
LABEL_443:
            __break(1u);
LABEL_444:
            __break(1u);
LABEL_445:
            __break(1u);
LABEL_446:
            __break(1u);
LABEL_447:
            __break(1u);
LABEL_448:
            __break(1u);
LABEL_449:
            __break(1u);
LABEL_450:
            __break(1u);
LABEL_451:
            __break(1u);
LABEL_452:
            __break(1u);
LABEL_453:
            __break(1u);
LABEL_454:
            __break(1u);
LABEL_455:
            __break(1u);
LABEL_456:
            __break(1u);
LABEL_457:
            __break(1u);
            goto LABEL_458;
          }

          ++v89;
        }

        while (v90 != v89);
        if ((a8 & 1) == 0)
        {
          goto LABEL_203;
        }

LABEL_195:
        if (v89 < 0)
        {
          goto LABEL_456;
        }

LABEL_196:
        if (a13[1] != v89)
        {
          goto LABEL_202;
        }

        if (v89)
        {
          v94 = 0;
          result = *a13;
          while (*(result + 8 * v94) == *(v86 + 8 * v94))
          {
            if (v89 == ++v94)
            {
              goto LABEL_108;
            }
          }

LABEL_202:
          *a13 = v86;
          a13[1] = v89;
LABEL_203:
          if (__OFADD__(*a6, v89))
          {
            goto LABEL_424;
          }

          *a6 += v89;
          *(a14 + 8 * *a15) = v69;
          v95 = a17 + *a6;
          if (__OFADD__(a17, *a6))
          {
            goto LABEL_425;
          }

          if ((v95 & 0x8000000000000000) != 0)
          {
            goto LABEL_426;
          }

          if (HIDWORD(v95))
          {
            goto LABEL_427;
          }

          *(a16 + 4 * *a15) = v95;
          if (__OFADD__(*a15, 1))
          {
            goto LABEL_428;
          }

          ++*a15;
        }
      }

      else
      {
        if ((a8 & 1) == 0)
        {
          v89 = 0;
          goto LABEL_203;
        }

        if (a13[1])
        {
          v89 = 0;
          v86 = 0;
          goto LABEL_202;
        }
      }
    }
  }

  *v175 = *result;
  *&v175[16] = v17;
  v174 = 0x200000002;
  v96 = (*a2 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a2 & 0x7FF0000000000000) == 0;
  v97 = *(a2 + 32);
  v98 = *(v97 + 16);
  if (!v96 && !v98)
  {
    v99 = 0;
    v100 = 0;
    result = 0;
    v101 = *(a2 + 24);
    v172 = *(a2 + 8);
    v173 = v101;
    v102 = 1;
    while (1)
    {
LABEL_215:
      if (result == a4 - a3)
      {
        if (v100 == 2)
        {
          return result;
        }

        LODWORD(v103) = 0;
        v104 = *(&v172 + ++v100);
        v169 = 1;
        result = a4 - a3;
      }

      else
      {
        v104 = *&v175[8 * a3 + 16 + 8 * result];
        v103 = result + a3;
        v105 = __OFADD__(result, a3);
        if (v100 == 2)
        {
          if (v105)
          {
            goto LABEL_476;
          }

          if ((v103 & 0x8000000000000000) != 0)
          {
            goto LABEL_478;
          }

          if (HIDWORD(v103))
          {
            goto LABEL_480;
          }

          ++result;
          v169 = 0;
          v100 = 2;
        }

        else
        {
          if (v105)
          {
            goto LABEL_475;
          }

          if ((v103 & 0x8000000000000000) != 0)
          {
            goto LABEL_477;
          }

          if (HIDWORD(v103))
          {
            goto LABEL_479;
          }

          v106 = *(&v172 + v100 + 1);
          if (v104 >= v106)
          {
            if (v106 < v104)
            {
              LODWORD(v103) = 0;
              ++v100;
              v169 = 1;
              v104 = v106;
              goto LABEL_235;
            }

            ++result;
            ++v100;
          }

          else
          {
            ++result;
          }

          v169 = 0;
        }
      }

LABEL_235:
      v102 &= v169;
      if (v169)
      {
        v107 = v99;
      }

      else
      {
        v107 = v103;
      }

      if ((v102 & 1) == 0)
      {
        if (v107)
        {
          v111 = *(&v173 + v107 + 1);
        }

        else
        {
          v111 = 0;
        }

        v108 = &v175[8 * v111];
        if (v104 < a11 || v104 >= a12)
        {
          v109 = 0;
          v110 = 0;
LABEL_265:
          v99 = v107;
          goto LABEL_266;
        }

        v113 = *&v175[4 * v107 - 8] - v111;
        if (v113 < 2)
        {
          v110 = 0;
          v109 = 0;
          if (v113 != 1)
          {
LABEL_262:
            if (v109 < v113 && *&v108[8 * v109] < a10)
            {
              ++v109;
            }

            goto LABEL_265;
          }
        }

        else
        {
          v110 = 0;
          v114 = *&v175[4 * v107 - 8] - v111;
          do
          {
            if (*&v108[8 * v110 + 8 * (v114 >> 1)] <= a9)
            {
              v110 += v114 >> 1;
            }

            v114 -= v114 >> 1;
          }

          while (v114 > 1);
          if (v110 >= v113)
          {
LABEL_258:
            v115 = v113 - v110;
            v109 = v110;
            if (v113 - v110 >= 2)
            {
              do
              {
                v116 = v115 >> 1;
                v115 -= v115 >> 1;
                v117 = v109 + v116;
                if (*&v108[8 * v117] < a10)
                {
                  v109 = v117;
                }
              }

              while (v115 > 1);
            }

            goto LABEL_262;
          }
        }

        if (*&v108[8 * v110] <= a9)
        {
          ++v110;
        }

        goto LABEL_258;
      }

      v108 = 0;
      v109 = 0;
      v110 = 0;
LABEL_266:
      v118 = *a6;
      v119 = a7 - *a6;
      if (a7 < *a6)
      {
        goto LABEL_453;
      }

      if (a5)
      {
        if (v110 >= 0)
        {
          v120 = v110 & 1;
        }

        else
        {
          v120 = -(v110 & 1);
        }

        v121 = v110 - v120;
        if (__OFSUB__(v110, v120))
        {
          goto LABEL_467;
        }

        v122 = a5 + 8 * v118;
        if (!v119)
        {
          goto LABEL_282;
        }

        if (v109 >= 0)
        {
          v123 = v109 & 1;
        }

        else
        {
          v123 = -(v109 & 1);
        }

        v124 = __OFADD__(v109, v123);
        if (v119 < 1)
        {
          goto LABEL_471;
        }

        if (v124)
        {
          goto LABEL_472;
        }

        if (v121 == v109 + v123)
        {
LABEL_282:
          v125 = 0;
          if (a8)
          {
            goto LABEL_299;
          }

          goto LABEL_306;
        }

        v125 = 0;
        v126 = v109 + v123 + v120 - v110;
        v127 = &v108[8 * v110 + -8 * v120];
        v128 = a7 - 1 - v118;
        do
        {
          v129 = a9;
          if (v121 + v125 >= v110)
          {
            v129 = a10;
            if (v121 + v125 < v109)
            {
              v129 = *(v127 + 8 * v125);
            }
          }

          *(v122 + 8 * v125) = v129;
          if (v128 == v125)
          {
            v125 = v119;
            if (a8)
            {
              goto LABEL_298;
            }

            goto LABEL_306;
          }

          if (__OFADD__(v125 + 1, 1))
          {
            goto LABEL_429;
          }

          ++v125;
        }

        while (v126 != v125);
        if ((a8 & 1) == 0)
        {
          goto LABEL_306;
        }

LABEL_298:
        if (v125 < 0)
        {
          goto LABEL_489;
        }

LABEL_299:
        if (a13[1] != v125)
        {
          goto LABEL_305;
        }

        if (v125)
        {
          v130 = 0;
          while (*(*a13 + 8 * v130) == *(v122 + 8 * v130))
          {
            if (v125 == ++v130)
            {
              goto LABEL_215;
            }
          }

LABEL_305:
          *a13 = v122;
          a13[1] = v125;
LABEL_306:
          if (__OFADD__(*a6, v125))
          {
            goto LABEL_457;
          }

          *a6 += v125;
          *(a14 + 8 * *a15) = v104;
          v131 = a17 + *a6;
          if (__OFADD__(a17, *a6))
          {
LABEL_458:
            __break(1u);
LABEL_459:
            __break(1u);
LABEL_460:
            __break(1u);
LABEL_461:
            __break(1u);
LABEL_462:
            __break(1u);
            goto LABEL_463;
          }

          if ((v131 & 0x8000000000000000) != 0)
          {
            goto LABEL_459;
          }

          if (HIDWORD(v131))
          {
            goto LABEL_460;
          }

          *(a16 + 4 * *a15) = v131;
          if (__OFADD__(*a15, 1))
          {
            goto LABEL_461;
          }

          ++*a15;
        }
      }

      else
      {
        if ((a8 & 1) == 0)
        {
          v125 = 0;
          goto LABEL_306;
        }

        if (a13[1])
        {
          v125 = 0;
          v122 = 0;
          goto LABEL_305;
        }
      }
    }
  }

  v132 = 0;
  v133 = 0;
  v134 = 0;
  v135 = v97 + 32;
  v136 = a4 - a3;
  result = &v173 + 4;
  v137 = 1;
LABEL_313:
  while (v134 != v136)
  {
    v139 = *&v175[8 * a3 + 16 + 8 * v134];
    v138 = v134 + a3;
    v140 = __OFADD__(v134, a3);
    if (v133 == v98)
    {
      if (v140)
      {
        goto LABEL_482;
      }

      if ((v138 & 0x8000000000000000) != 0)
      {
        goto LABEL_483;
      }

      if (HIDWORD(v138))
      {
        goto LABEL_486;
      }

      ++v134;
      v171 = 0;
      v133 = v98;
    }

    else
    {
      if (v140)
      {
        goto LABEL_481;
      }

      if ((v138 & 0x8000000000000000) != 0)
      {
        goto LABEL_484;
      }

      if (HIDWORD(v138))
      {
        goto LABEL_485;
      }

      if ((v133 & 0x8000000000000000) != 0)
      {
        goto LABEL_487;
      }

      if (HIDWORD(v133))
      {
        goto LABEL_488;
      }

      v141 = *(v135 + 8 * v133);
      if (v139 >= v141)
      {
        if (v141 < v139)
        {
          LODWORD(v138) = 0;
          ++v133;
          v171 = 1;
          v139 = v141;
          goto LABEL_337;
        }

        ++v134;
        ++v133;
      }

      else
      {
        ++v134;
      }

      v171 = 0;
    }

LABEL_337:
    v137 &= v171;
    if (v171)
    {
      v142 = v132;
    }

    else
    {
      v142 = v138;
    }

    if ((v137 & 1) == 0)
    {
      if (v142)
      {
        v146 = *(&v173 + v142 + 1);
      }

      else
      {
        v146 = 0;
      }

      v143 = &v175[8 * v146];
      if (v139 < a11 || v139 >= a12)
      {
        v144 = 0;
        v145 = 0;
LABEL_367:
        v132 = v142;
        goto LABEL_368;
      }

      v148 = *&v175[4 * v142 - 8] - v146;
      if (v148 < 2)
      {
        v145 = 0;
        v144 = 0;
        if (v148 != 1)
        {
LABEL_364:
          if (v144 < v148 && *&v143[8 * v144] < a10)
          {
            ++v144;
          }

          goto LABEL_367;
        }
      }

      else
      {
        v145 = 0;
        v149 = *&v175[4 * v142 - 8] - v146;
        do
        {
          if (*&v143[8 * v145 + 8 * (v149 >> 1)] <= a9)
          {
            v145 += v149 >> 1;
          }

          v149 -= v149 >> 1;
        }

        while (v149 > 1);
        if (v145 >= v148)
        {
LABEL_360:
          v150 = v148 - v145;
          v144 = v145;
          if (v148 - v145 >= 2)
          {
            do
            {
              v151 = v150 >> 1;
              v150 -= v150 >> 1;
              v152 = v144 + v151;
              if (*&v143[8 * v152] < a10)
              {
                v144 = v152;
              }
            }

            while (v150 > 1);
          }

          goto LABEL_364;
        }
      }

      if (*&v143[8 * v145] <= a9)
      {
        ++v145;
      }

      goto LABEL_360;
    }

    v143 = 0;
    v144 = 0;
    v145 = 0;
LABEL_368:
    v153 = *a6;
    v154 = a7 - *a6;
    if (a7 < *a6)
    {
      goto LABEL_454;
    }

    if (a5)
    {
      if (v145 >= 0)
      {
        v155 = v145 & 1;
      }

      else
      {
        v155 = -(v145 & 1);
      }

      v156 = v145 - v155;
      if (__OFSUB__(v145, v155))
      {
        goto LABEL_468;
      }

      v157 = a5 + 8 * v153;
      if (!v154)
      {
        goto LABEL_384;
      }

      if (v144 >= 0)
      {
        v158 = v144 & 1;
      }

      else
      {
        v158 = -(v144 & 1);
      }

      v159 = __OFADD__(v144, v158);
      if (v154 < 1)
      {
        goto LABEL_473;
      }

      if (v159)
      {
        goto LABEL_474;
      }

      if (v156 == v144 + v158)
      {
LABEL_384:
        v160 = 0;
        if (a8)
        {
          goto LABEL_401;
        }

        goto LABEL_408;
      }

      v160 = 0;
      v161 = v144 + v158 + v155 - v145;
      v162 = &v143[8 * v145 + -8 * v155];
      v163 = a7 - 1 - v153;
      do
      {
        v164 = a9;
        if (v156 + v160 >= v145)
        {
          v164 = a10;
          if (v156 + v160 < v144)
          {
            v164 = *(v162 + 8 * v160);
          }
        }

        *(v157 + 8 * v160) = v164;
        if (v163 == v160)
        {
          v160 = v154;
          if (a8)
          {
            goto LABEL_400;
          }

          goto LABEL_408;
        }

        if (__OFADD__(v160 + 1, 1))
        {
          goto LABEL_430;
        }

        ++v160;
      }

      while (v161 != v160);
      if ((a8 & 1) == 0)
      {
        goto LABEL_408;
      }

LABEL_400:
      if (v160 < 0)
      {
        goto LABEL_490;
      }

LABEL_401:
      if (a13[1] != v160)
      {
        goto LABEL_407;
      }

      if (v160)
      {
        v165 = 0;
        while (*(*a13 + 8 * v165) == *(v157 + 8 * v165))
        {
          if (v160 == ++v165)
          {
            goto LABEL_313;
          }
        }

LABEL_407:
        *a13 = v157;
        a13[1] = v160;
LABEL_408:
        if (__OFADD__(*a6, v160))
        {
          goto LABEL_462;
        }

        *a6 += v160;
        *(a14 + 8 * *a15) = v139;
        v166 = a17 + *a6;
        if (__OFADD__(a17, *a6))
        {
LABEL_463:
          __break(1u);
LABEL_464:
          __break(1u);
LABEL_465:
          __break(1u);
LABEL_466:
          __break(1u);
LABEL_467:
          __break(1u);
LABEL_468:
          __break(1u);
LABEL_469:
          __break(1u);
LABEL_470:
          __break(1u);
LABEL_471:
          __break(1u);
LABEL_472:
          __break(1u);
LABEL_473:
          __break(1u);
LABEL_474:
          __break(1u);
LABEL_475:
          __break(1u);
LABEL_476:
          __break(1u);
LABEL_477:
          __break(1u);
LABEL_478:
          __break(1u);
LABEL_479:
          __break(1u);
LABEL_480:
          __break(1u);
LABEL_481:
          __break(1u);
LABEL_482:
          __break(1u);
LABEL_483:
          __break(1u);
LABEL_484:
          __break(1u);
LABEL_485:
          __break(1u);
LABEL_486:
          __break(1u);
LABEL_487:
          __break(1u);
LABEL_488:
          __break(1u);
LABEL_489:
          __break(1u);
LABEL_490:
          __break(1u);
        }

        if ((v166 & 0x8000000000000000) != 0)
        {
          goto LABEL_464;
        }

        if (HIDWORD(v166))
        {
          goto LABEL_465;
        }

        *(a16 + 4 * *a15) = v166;
        if (__OFADD__(*a15, 1))
        {
          goto LABEL_466;
        }

        ++*a15;
      }
    }

    else
    {
      if ((a8 & 1) == 0)
      {
        v160 = 0;
        goto LABEL_408;
      }

      if (a13[1])
      {
        v160 = 0;
        v157 = 0;
        goto LABEL_407;
      }
    }
  }

  if (v133 != v98)
  {
    if ((v133 & 0x8000000000000000) != 0)
    {
      goto LABEL_469;
    }

    if (HIDWORD(v133))
    {
      goto LABEL_470;
    }

    LODWORD(v138) = 0;
    v139 = *(v135 + 8 * v133++);
    v171 = 1;
    v134 = v136;
    goto LABEL_337;
  }

  return result;
}

uint64_t sub_183F9F144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, char a8, double a9, double a10, double a11, double a12, void *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17)
{
  v189 = *MEMORY[0x1E69E9840];
  v17 = *(a1 + 32);
  v18 = (~*a1 & 0x7FF0000000000000) != 0 || (*a1 & 0xFFFFFFFFFFFFFLL) == 0;
  if (!v18 || *(v17 + 16))
  {
    v19 = v17 + 32;
    v20 = (*a2 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a2 & 0x7FF0000000000000) == 0;
    v21 = *(a2 + 32);
    v22 = *(v21 + 16);
    v23 = !v20 && v22 == 0;
    v24 = v19 + 8 * a3;
    if (!v23)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = v21 + 32;
      v29 = *(a2 + 40);
      v181 = *(a2 + 48) + 32;
      result = a4 - a3;
      v32 = v29 + 32;
      v179 = v29 + 28;
      v33 = 1;
      while (1)
      {
LABEL_15:
        if (v27 == result)
        {
          if (v26 == v22)
          {
            return result;
          }

          if ((v26 & 0x8000000000000000) != 0)
          {
            goto LABEL_432;
          }

          if (HIDWORD(v26))
          {
            goto LABEL_433;
          }

          v34 = *(v28 + 8 * v26);
          v35 = v26++;
          v188[0] = 0;
          v27 = result;
        }

        else
        {
          v34 = *(v24 + 8 * v27);
          v36 = v27 + a3;
          v37 = __OFADD__(v27, a3);
          if (v26 == v22)
          {
            if (v37)
            {
              goto LABEL_445;
            }

            if ((v36 & 0x8000000000000000) != 0)
            {
              goto LABEL_446;
            }

            if (HIDWORD(v36))
            {
              goto LABEL_449;
            }

            v35 = 0;
            ++v27;
            v188[0] = 1;
            v26 = v22;
          }

          else
          {
            if (v37)
            {
              goto LABEL_444;
            }

            if ((v36 & 0x8000000000000000) != 0)
            {
              goto LABEL_447;
            }

            if (HIDWORD(v36))
            {
              goto LABEL_448;
            }

            if ((v26 & 0x8000000000000000) != 0)
            {
              goto LABEL_450;
            }

            if (HIDWORD(v26))
            {
              goto LABEL_451;
            }

            v38 = *(v28 + 8 * v26);
            if (v34 >= v38)
            {
              if (v38 >= v34)
              {
                ++v27;
                v35 = v26++;
                v188[0] = 0;
              }

              else
              {
                v35 = v26++;
                v188[0] = 0;
                v34 = v38;
              }
            }

            else
            {
              v35 = 0;
              ++v27;
              v188[0] = 1;
            }
          }
        }

        v33 &= v188[0];
        v39 = (v188[0] & 1) != 0 ? v25 : v35;
        if ((v33 & 1) == 0)
        {
          break;
        }

        v40 = 0;
        v41 = 0;
        v42 = 0;
LABEL_69:
        v50 = *a6;
        v51 = a7 - *a6;
        if (a7 < *a6)
        {
          goto LABEL_417;
        }

        if (a5)
        {
          if (v42 >= 0)
          {
            v52 = v42 & 1;
          }

          else
          {
            v52 = -(v42 & 1);
          }

          v53 = v42 - v52;
          if (__OFSUB__(v42, v52))
          {
            goto LABEL_431;
          }

          v54 = a5 + 8 * v50;
          if (!v51)
          {
            goto LABEL_84;
          }

          v55 = v41 & 1;
          if (v41 < 0)
          {
            v55 = -v55;
          }

          v56 = __OFADD__(v41, v55);
          if (v51 < 1)
          {
            goto LABEL_436;
          }

          if (v56)
          {
            goto LABEL_437;
          }

          if (v53 != v41 + v55)
          {
            v57 = 0;
            v58 = v41 + v55 + v52 - v42;
            v59 = v40 - 8 * v52 + 8 * v42;
            v60 = a7 - 1 - v50;
            do
            {
              v61 = a9;
              if (v53 + v57 >= v42)
              {
                v61 = a10;
                if (v53 + v57 < v41)
                {
                  v61 = *(v59 + 8 * v57);
                }
              }

              *(v54 + 8 * v57) = v61;
              if (v60 == v57)
              {
                v57 = v51;
                if ((a8 & 1) == 0)
                {
                  goto LABEL_108;
                }

LABEL_100:
                if (v57 < 0)
                {
                  goto LABEL_455;
                }

                goto LABEL_101;
              }

              if (__OFADD__(v57 + 1, 1))
              {
                goto LABEL_415;
              }

              ++v57;
            }

            while (v58 != v57);
            if (a8)
            {
              goto LABEL_100;
            }

LABEL_108:
            if (__OFADD__(*a6, v57))
            {
              goto LABEL_423;
            }

            *a6 += v57;
            *(a14 + 8 * *a15) = v34;
            v63 = a17 + *a6;
            if (__OFADD__(a17, *a6))
            {
              goto LABEL_424;
            }

            if ((v63 & 0x8000000000000000) != 0)
            {
              goto LABEL_425;
            }

            if (HIDWORD(v63))
            {
              goto LABEL_426;
            }

            *(a16 + 4 * *a15) = v63;
            if (__OFADD__(*a15, 1))
            {
              goto LABEL_427;
            }

            ++*a15;
          }

          else
          {
LABEL_84:
            v57 = 0;
            if ((a8 & 1) == 0)
            {
              goto LABEL_108;
            }

LABEL_101:
            if (a13[1] != v57)
            {
              goto LABEL_107;
            }

            if (v57)
            {
              v62 = 0;
              while (*(*a13 + 8 * v62) == *(v54 + 8 * v62))
              {
                if (v57 == ++v62)
                {
                  goto LABEL_15;
                }
              }

              goto LABEL_107;
            }
          }
        }

        else
        {
          if ((a8 & 1) == 0)
          {
            v57 = 0;
            goto LABEL_108;
          }

          if (a13[1])
          {
            v57 = 0;
            v54 = 0;
LABEL_107:
            *a13 = v54;
            a13[1] = v57;
            goto LABEL_108;
          }
        }
      }

      if (v39)
      {
        v43 = *(v179 + 4 * v39);
      }

      else
      {
        v43 = 0;
      }

      v40 = v181 + 8 * v43;
      if (v34 < a11 || v34 >= a12)
      {
        v41 = 0;
        v42 = 0;
LABEL_68:
        v25 = v39;
        goto LABEL_69;
      }

      v45 = *(v32 + 4 * v39) - v43;
      if (v45 < 2)
      {
        v42 = 0;
        v41 = 0;
        if (v45 != 1)
        {
LABEL_65:
          if (v41 < v45 && *(v40 + 8 * v41) < a10)
          {
            ++v41;
          }

          goto LABEL_68;
        }
      }

      else
      {
        v42 = 0;
        v46 = *(v32 + 4 * v39) - v43;
        do
        {
          if (*(v40 + 8 * (v42 + (v46 >> 1))) <= a9)
          {
            v42 += v46 >> 1;
          }

          v46 -= v46 >> 1;
        }

        while (v46 > 1);
        if (v42 >= v45)
        {
          goto LABEL_61;
        }
      }

      if (*(v40 + 8 * v42) <= a9)
      {
        ++v42;
      }

LABEL_61:
      v47 = v45 - v42;
      v41 = v42;
      if (v45 - v42 >= 2)
      {
        do
        {
          v48 = v47 >> 1;
          v47 -= v47 >> 1;
          v49 = v41 + v48;
          if (*(v40 + 8 * v49) < a10)
          {
            v41 = v49;
          }
        }

        while (v47 > 1);
      }

      goto LABEL_65;
    }

    v64 = 0;
    v65 = 0;
    result = 0;
    v66 = *(a2 + 24);
    *v188 = *a2;
    *&v188[8] = *(a2 + 8);
    *&v188[24] = v66;
    v68 = a4 - a3;
    v185 = 0x200000002;
    v69 = 1;
    while (1)
    {
LABEL_115:
      if (result == v68)
      {
        if (v65 == 2)
        {
          return result;
        }

        v70 = *&v188[8 * v65 + 16];
        v71 = v65++;
        LOBYTE(v184) = 0;
        result = v68;
      }

      else
      {
        v70 = *(v24 + 8 * result);
        v72 = result + a3;
        v73 = __OFADD__(result, a3);
        if (v65 == 2)
        {
          if (v73)
          {
            goto LABEL_439;
          }

          if ((v72 & 0x8000000000000000) != 0)
          {
            goto LABEL_441;
          }

          if (HIDWORD(v72))
          {
            goto LABEL_443;
          }

          v71 = 0;
          ++result;
          LOBYTE(v184) = 1;
          v65 = 2;
        }

        else
        {
          if (v73)
          {
            goto LABEL_438;
          }

          if ((v72 & 0x8000000000000000) != 0)
          {
            goto LABEL_440;
          }

          if (HIDWORD(v72))
          {
            goto LABEL_442;
          }

          v74 = *&v188[8 * v65 + 16];
          if (v70 >= v74)
          {
            if (v74 >= v70)
            {
              ++result;
              v71 = v65++;
              LOBYTE(v184) = 0;
            }

            else
            {
              v71 = v65++;
              LOBYTE(v184) = 0;
              v70 = v74;
            }
          }

          else
          {
            v71 = 0;
            ++result;
            LOBYTE(v184) = 1;
          }
        }
      }

      v69 &= v184;
      v75 = (v184 & 1) != 0 ? v64 : v71;
      if ((v69 & 1) == 0)
      {
        break;
      }

      v76 = 0;
      v77 = 0;
      v78 = 0;
LABEL_165:
      v86 = *a6;
      v87 = a7 - *a6;
      if (a7 < *a6)
      {
        goto LABEL_416;
      }

      if (a5)
      {
        if (v78 >= 0)
        {
          v88 = v78 & 1;
        }

        else
        {
          v88 = -(v78 & 1);
        }

        v89 = v78 - v88;
        if (__OFSUB__(v78, v88))
        {
          goto LABEL_430;
        }

        v90 = a5 + 8 * v86;
        if (!v87)
        {
          goto LABEL_181;
        }

        if (v77 >= 0)
        {
          v91 = v77 & 1;
        }

        else
        {
          v91 = -(v77 & 1);
        }

        v92 = __OFADD__(v77, v91);
        if (v87 < 1)
        {
          goto LABEL_434;
        }

        if (v92)
        {
          goto LABEL_435;
        }

        if (v89 != v77 + v91)
        {
          v93 = 0;
          v94 = v77 + v91 + v88 - v78;
          v95 = &v76[8 * v78 + -8 * v88];
          v96 = a7 - 1 - v86;
          do
          {
            v97 = a9;
            if (v89 + v93 >= v78)
            {
              v97 = a10;
              if (v89 + v93 < v77)
              {
                v97 = *(v95 + 8 * v93);
              }
            }

            *(v90 + 8 * v93) = v97;
            if (v96 == v93)
            {
              v93 = v87;
              if ((a8 & 1) == 0)
              {
                goto LABEL_205;
              }

              goto LABEL_197;
            }

            if (__OFADD__(v93 + 1, 1))
            {
              __break(1u);
LABEL_415:
              __break(1u);
LABEL_416:
              __break(1u);
LABEL_417:
              __break(1u);
LABEL_418:
              __break(1u);
LABEL_419:
              __break(1u);
LABEL_420:
              __break(1u);
LABEL_421:
              __break(1u);
LABEL_422:
              __break(1u);
LABEL_423:
              __break(1u);
LABEL_424:
              __break(1u);
LABEL_425:
              __break(1u);
LABEL_426:
              __break(1u);
LABEL_427:
              __break(1u);
LABEL_428:
              __break(1u);
LABEL_429:
              __break(1u);
LABEL_430:
              __break(1u);
LABEL_431:
              __break(1u);
LABEL_432:
              __break(1u);
LABEL_433:
              __break(1u);
LABEL_434:
              __break(1u);
LABEL_435:
              __break(1u);
LABEL_436:
              __break(1u);
LABEL_437:
              __break(1u);
LABEL_438:
              __break(1u);
LABEL_439:
              __break(1u);
LABEL_440:
              __break(1u);
LABEL_441:
              __break(1u);
LABEL_442:
              __break(1u);
LABEL_443:
              __break(1u);
LABEL_444:
              __break(1u);
LABEL_445:
              __break(1u);
LABEL_446:
              __break(1u);
LABEL_447:
              __break(1u);
LABEL_448:
              __break(1u);
LABEL_449:
              __break(1u);
LABEL_450:
              __break(1u);
LABEL_451:
              __break(1u);
LABEL_452:
              __break(1u);
LABEL_453:
              __break(1u);
LABEL_454:
              __break(1u);
LABEL_455:
              __break(1u);
LABEL_456:
              __break(1u);
              goto LABEL_457;
            }

            ++v93;
          }

          while (v94 != v93);
          if ((a8 & 1) == 0)
          {
LABEL_205:
            if (__OFADD__(*a6, v93))
            {
              goto LABEL_418;
            }

            *a6 += v93;
            *(a14 + 8 * *a15) = v70;
            v99 = a17 + *a6;
            if (__OFADD__(a17, *a6))
            {
              goto LABEL_419;
            }

            if ((v99 & 0x8000000000000000) != 0)
            {
              goto LABEL_420;
            }

            if (HIDWORD(v99))
            {
              goto LABEL_421;
            }

            *(a16 + 4 * *a15) = v99;
            if (__OFADD__(*a15, 1))
            {
              goto LABEL_422;
            }

            ++*a15;
            continue;
          }

LABEL_197:
          if (v93 < 0)
          {
            goto LABEL_454;
          }
        }

        else
        {
LABEL_181:
          v93 = 0;
          if ((a8 & 1) == 0)
          {
            goto LABEL_205;
          }
        }

        if (a13[1] != v93)
        {
          goto LABEL_204;
        }

        if (v93)
        {
          v98 = 0;
          while (*(*a13 + 8 * v98) == *(v90 + 8 * v98))
          {
            if (v93 == ++v98)
            {
              goto LABEL_115;
            }
          }

          goto LABEL_204;
        }
      }

      else
      {
        if ((a8 & 1) == 0)
        {
          v93 = 0;
          goto LABEL_205;
        }

        if (a13[1])
        {
          v93 = 0;
          v90 = 0;
LABEL_204:
          *a13 = v90;
          a13[1] = v93;
          goto LABEL_205;
        }
      }
    }

    if (v75)
    {
      v79 = *(&v184 + v75 + 1);
    }

    else
    {
      v79 = 0;
    }

    v76 = &v188[8 * v79];
    if (v70 < a11 || v70 >= a12)
    {
      v77 = 0;
      v78 = 0;
LABEL_164:
      v64 = v75;
      goto LABEL_165;
    }

    v81 = *(&v185 + v75) - v79;
    if (v81 < 2)
    {
      v78 = 0;
      v77 = 0;
      if (v81 != 1)
      {
LABEL_161:
        if (v77 < v81 && *&v76[8 * v77] < a10)
        {
          ++v77;
        }

        goto LABEL_164;
      }
    }

    else
    {
      v78 = 0;
      v82 = *(&v185 + v75) - v79;
      do
      {
        if (*&v76[8 * v78 + 8 * (v82 >> 1)] <= a9)
        {
          v78 += v82 >> 1;
        }

        v82 -= v82 >> 1;
      }

      while (v82 > 1);
      if (v78 >= v81)
      {
        goto LABEL_157;
      }
    }

    if (*&v76[8 * v78] <= a9)
    {
      ++v78;
    }

LABEL_157:
    v83 = v81 - v78;
    v77 = v78;
    if (v81 - v78 >= 2)
    {
      do
      {
        v84 = v83 >> 1;
        v83 -= v83 >> 1;
        v85 = v77 + v84;
        if (*&v76[8 * v85] < a10)
        {
          v77 = v85;
        }
      }

      while (v83 > 1);
    }

    goto LABEL_161;
  }

  v100 = *(a1 + 16);
  *v188 = *a1;
  *&v188[16] = v100;
  v101 = (*a2 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a2 & 0x7FF0000000000000) == 0;
  v102 = *(a2 + 32);
  v103 = *(v102 + 16);
  v104 = &v188[8 * a3 + 16];
  if (!v101 && !v103)
  {
    v105 = 0;
    v106 = 0;
    result = 0;
    v107 = *(a2 + 24);
    v185 = *a2;
    v186 = *(a2 + 8);
    v187 = v107;
    v109 = a4 - a3;
    v184 = 0x200000002;
    v110 = 1;
    while (1)
    {
LABEL_217:
      if (result == v109)
      {
        if (v106 == 2)
        {
          return result;
        }

        v111 = *(&v186 + v106 + 1);
        v112 = v106++;
        v183[0] = 0;
        result = v109;
      }

      else
      {
        v111 = *&v104[8 * result];
        v113 = result + a3;
        v114 = __OFADD__(result, a3);
        if (v106 == 2)
        {
          if (v114)
          {
            goto LABEL_475;
          }

          if ((v113 & 0x8000000000000000) != 0)
          {
            goto LABEL_477;
          }

          if (HIDWORD(v113))
          {
            goto LABEL_479;
          }

          v112 = 0;
          ++result;
          v183[0] = 1;
          v106 = 2;
        }

        else
        {
          if (v114)
          {
            goto LABEL_474;
          }

          if ((v113 & 0x8000000000000000) != 0)
          {
            goto LABEL_476;
          }

          if (HIDWORD(v113))
          {
            goto LABEL_478;
          }

          v115 = *(&v186 + v106 + 1);
          if (v111 >= v115)
          {
            if (v115 >= v111)
            {
              ++result;
              v112 = v106++;
              v183[0] = 0;
            }

            else
            {
              v112 = v106++;
              v183[0] = 0;
              v111 = v115;
            }
          }

          else
          {
            v112 = 0;
            ++result;
            v183[0] = 1;
          }
        }
      }

      v110 &= v183[0];
      v116 = (v183[0] & 1) != 0 ? v105 : v112;
      if ((v110 & 1) == 0)
      {
        break;
      }

      v117 = 0;
      v118 = 0;
      v119 = 0;
LABEL_267:
      v127 = *a6;
      v128 = a7 - *a6;
      if (a7 < *a6)
      {
        goto LABEL_452;
      }

      if (a5)
      {
        if (v119 >= 0)
        {
          v129 = v119 & 1;
        }

        else
        {
          v129 = -(v119 & 1);
        }

        v130 = v119 - v129;
        if (__OFSUB__(v119, v129))
        {
          goto LABEL_466;
        }

        v131 = a5 + 8 * v127;
        if (!v128)
        {
          goto LABEL_283;
        }

        if (v118 >= 0)
        {
          v132 = v118 & 1;
        }

        else
        {
          v132 = -(v118 & 1);
        }

        v133 = __OFADD__(v118, v132);
        if (v128 < 1)
        {
          goto LABEL_470;
        }

        if (v133)
        {
          goto LABEL_471;
        }

        if (v130 != v118 + v132)
        {
          v134 = 0;
          v135 = v118 + v132 + v129 - v119;
          v136 = &v117[v119 - v129];
          v137 = a7 - 1 - v127;
          do
          {
            v138 = a9;
            if (v130 + v134 >= v119)
            {
              v138 = a10;
              if (v130 + v134 < v118)
              {
                v138 = *(v136 + 8 * v134);
              }
            }

            *(v131 + 8 * v134) = v138;
            if (v137 == v134)
            {
              v134 = v128;
              if ((a8 & 1) == 0)
              {
                goto LABEL_307;
              }

LABEL_299:
              if (v134 < 0)
              {
                goto LABEL_488;
              }

              goto LABEL_300;
            }

            if (__OFADD__(v134 + 1, 1))
            {
              goto LABEL_428;
            }

            ++v134;
          }

          while (v135 != v134);
          if (a8)
          {
            goto LABEL_299;
          }

LABEL_307:
          if (__OFADD__(*a6, v134))
          {
            goto LABEL_456;
          }

          *a6 += v134;
          *(a14 + 8 * *a15) = v111;
          v140 = a17 + *a6;
          if (__OFADD__(a17, *a6))
          {
LABEL_457:
            __break(1u);
LABEL_458:
            __break(1u);
LABEL_459:
            __break(1u);
LABEL_460:
            __break(1u);
LABEL_461:
            __break(1u);
            goto LABEL_462;
          }

          if ((v140 & 0x8000000000000000) != 0)
          {
            goto LABEL_458;
          }

          if (HIDWORD(v140))
          {
            goto LABEL_459;
          }

          *(a16 + 4 * *a15) = v140;
          if (__OFADD__(*a15, 1))
          {
            goto LABEL_460;
          }

          ++*a15;
        }

        else
        {
LABEL_283:
          v134 = 0;
          if ((a8 & 1) == 0)
          {
            goto LABEL_307;
          }

LABEL_300:
          if (a13[1] != v134)
          {
            goto LABEL_306;
          }

          if (v134)
          {
            v139 = 0;
            while (*(*a13 + 8 * v139) == *(v131 + 8 * v139))
            {
              if (v134 == ++v139)
              {
                goto LABEL_217;
              }
            }

            goto LABEL_306;
          }
        }
      }

      else
      {
        if ((a8 & 1) == 0)
        {
          v134 = 0;
          goto LABEL_307;
        }

        if (a13[1])
        {
          v134 = 0;
          v131 = 0;
LABEL_306:
          *a13 = v131;
          a13[1] = v134;
          goto LABEL_307;
        }
      }
    }

    if (v116)
    {
      v120 = *&v183[4 * v116];
    }

    else
    {
      v120 = 0;
    }

    v117 = &v185 + v120;
    if (v111 < a11 || v111 >= a12)
    {
      v118 = 0;
      v119 = 0;
LABEL_266:
      v105 = v116;
      goto LABEL_267;
    }

    v122 = *(&v184 + v116) - v120;
    if (v122 < 2)
    {
      v119 = 0;
      v118 = 0;
      if (v122 != 1)
      {
LABEL_263:
        if (v118 < v122 && *&v117[v118] < a10)
        {
          ++v118;
        }

        goto LABEL_266;
      }
    }

    else
    {
      v119 = 0;
      v123 = *(&v184 + v116) - v120;
      do
      {
        if (*&v117[v119 + (v123 >> 1)] <= a9)
        {
          v119 += v123 >> 1;
        }

        v123 -= v123 >> 1;
      }

      while (v123 > 1);
      if (v119 >= v122)
      {
        goto LABEL_259;
      }
    }

    if (*&v117[v119] <= a9)
    {
      ++v119;
    }

LABEL_259:
    v124 = v122 - v119;
    v118 = v119;
    if (v122 - v119 >= 2)
    {
      do
      {
        v125 = v124 >> 1;
        v124 -= v124 >> 1;
        v126 = v118 + v125;
        if (*&v117[v126] < a10)
        {
          v118 = v126;
        }
      }

      while (v124 > 1);
    }

    goto LABEL_263;
  }

  v141 = 0;
  v142 = 0;
  v143 = 0;
  v144 = v102 + 32;
  v145 = *(a2 + 40);
  v178 = v145 + 32;
  v182 = *(a2 + 48) + 32;
  result = a4 - a3;
  v180 = v145 + 28;
  v147 = 1;
LABEL_314:
  while (v143 != result)
  {
    v148 = *&v104[8 * v143];
    v150 = v143 + a3;
    v151 = __OFADD__(v143, a3);
    if (v142 == v103)
    {
      if (v151)
      {
        goto LABEL_481;
      }

      if ((v150 & 0x8000000000000000) != 0)
      {
        goto LABEL_482;
      }

      if (HIDWORD(v150))
      {
        goto LABEL_485;
      }

      v149 = 0;
      ++v143;
      LOBYTE(v185) = 1;
      v142 = v103;
    }

    else
    {
      if (v151)
      {
        goto LABEL_480;
      }

      if ((v150 & 0x8000000000000000) != 0)
      {
        goto LABEL_483;
      }

      if (HIDWORD(v150))
      {
        goto LABEL_484;
      }

      if ((v142 & 0x8000000000000000) != 0)
      {
        goto LABEL_486;
      }

      if (HIDWORD(v142))
      {
        goto LABEL_487;
      }

      v152 = *(v144 + 8 * v142);
      if (v148 >= v152)
      {
        if (v152 >= v148)
        {
          ++v143;
          v149 = v142++;
          LOBYTE(v185) = 0;
        }

        else
        {
          v149 = v142++;
          LOBYTE(v185) = 0;
          v148 = v152;
        }
      }

      else
      {
        v149 = 0;
        ++v143;
        LOBYTE(v185) = 1;
      }
    }

LABEL_337:
    v147 &= v185;
    if (v185)
    {
      v153 = v141;
    }

    else
    {
      v153 = v149;
    }

    if ((v147 & 1) == 0)
    {
      if (v153)
      {
        v157 = *(v180 + 4 * v153);
      }

      else
      {
        v157 = 0;
      }

      v154 = v182 + 8 * v157;
      if (v148 < a11 || v148 >= a12)
      {
        v155 = 0;
        v156 = 0;
LABEL_367:
        v141 = v153;
        goto LABEL_368;
      }

      v159 = *(v178 + 4 * v153) - v157;
      if (v159 < 2)
      {
        v156 = 0;
        v155 = 0;
        if (v159 != 1)
        {
LABEL_364:
          if (v155 < v159 && *(v154 + 8 * v155) < a10)
          {
            ++v155;
          }

          goto LABEL_367;
        }
      }

      else
      {
        v156 = 0;
        v160 = *(v178 + 4 * v153) - v157;
        do
        {
          if (*(v154 + 8 * (v156 + (v160 >> 1))) <= a9)
          {
            v156 += v160 >> 1;
          }

          v160 -= v160 >> 1;
        }

        while (v160 > 1);
        if (v156 >= v159)
        {
LABEL_360:
          v161 = v159 - v156;
          v155 = v156;
          if (v159 - v156 >= 2)
          {
            do
            {
              v162 = v161 >> 1;
              v161 -= v161 >> 1;
              v163 = v155 + v162;
              if (*(v154 + 8 * v163) < a10)
              {
                v155 = v163;
              }
            }

            while (v161 > 1);
          }

          goto LABEL_364;
        }
      }

      if (*(v154 + 8 * v156) <= a9)
      {
        ++v156;
      }

      goto LABEL_360;
    }

    v154 = 0;
    v155 = 0;
    v156 = 0;
LABEL_368:
    v164 = *a6;
    v165 = a7 - *a6;
    if (a7 < *a6)
    {
      goto LABEL_453;
    }

    if (a5)
    {
      if (v156 >= 0)
      {
        v166 = v156 & 1;
      }

      else
      {
        v166 = -(v156 & 1);
      }

      v167 = v156 - v166;
      if (__OFSUB__(v156, v166))
      {
        goto LABEL_467;
      }

      v168 = a5 + 8 * v164;
      if (!v165)
      {
        goto LABEL_383;
      }

      v169 = v155 & 1;
      if (v155 < 0)
      {
        v169 = -v169;
      }

      v170 = __OFADD__(v155, v169);
      if (v165 < 1)
      {
        goto LABEL_472;
      }

      if (v170)
      {
        goto LABEL_473;
      }

      if (v167 != v155 + v169)
      {
        v171 = 0;
        v172 = v155 + v169 + v166 - v156;
        v173 = v154 - 8 * v166 + 8 * v156;
        v174 = a7 - 1 - v164;
        do
        {
          v175 = a9;
          if (v167 + v171 >= v156)
          {
            v175 = a10;
            if (v167 + v171 < v155)
            {
              v175 = *(v173 + 8 * v171);
            }
          }

          *(v168 + 8 * v171) = v175;
          if (v174 == v171)
          {
            v171 = v165;
            if ((a8 & 1) == 0)
            {
              goto LABEL_407;
            }

LABEL_399:
            if (v171 < 0)
            {
              goto LABEL_489;
            }

            goto LABEL_400;
          }

          if (__OFADD__(v171 + 1, 1))
          {
            goto LABEL_429;
          }

          ++v171;
        }

        while (v172 != v171);
        if (a8)
        {
          goto LABEL_399;
        }

LABEL_407:
        if (__OFADD__(*a6, v171))
        {
          goto LABEL_461;
        }

        *a6 += v171;
        *(a14 + 8 * *a15) = v148;
        v177 = a17 + *a6;
        if (__OFADD__(a17, *a6))
        {
LABEL_462:
          __break(1u);
LABEL_463:
          __break(1u);
LABEL_464:
          __break(1u);
LABEL_465:
          __break(1u);
LABEL_466:
          __break(1u);
LABEL_467:
          __break(1u);
LABEL_468:
          __break(1u);
LABEL_469:
          __break(1u);
LABEL_470:
          __break(1u);
LABEL_471:
          __break(1u);
LABEL_472:
          __break(1u);
LABEL_473:
          __break(1u);
LABEL_474:
          __break(1u);
LABEL_475:
          __break(1u);
LABEL_476:
          __break(1u);
LABEL_477:
          __break(1u);
LABEL_478:
          __break(1u);
LABEL_479:
          __break(1u);
LABEL_480:
          __break(1u);
LABEL_481:
          __break(1u);
LABEL_482:
          __break(1u);
LABEL_483:
          __break(1u);
LABEL_484:
          __break(1u);
LABEL_485:
          __break(1u);
LABEL_486:
          __break(1u);
LABEL_487:
          __break(1u);
LABEL_488:
          __break(1u);
LABEL_489:
          __break(1u);
        }

        if ((v177 & 0x8000000000000000) != 0)
        {
          goto LABEL_463;
        }

        if (HIDWORD(v177))
        {
          goto LABEL_464;
        }

        *(a16 + 4 * *a15) = v177;
        if (__OFADD__(*a15, 1))
        {
          goto LABEL_465;
        }

        ++*a15;
      }

      else
      {
LABEL_383:
        v171 = 0;
        if ((a8 & 1) == 0)
        {
          goto LABEL_407;
        }

LABEL_400:
        if (a13[1] != v171)
        {
          goto LABEL_406;
        }

        if (v171)
        {
          v176 = 0;
          while (*(*a13 + 8 * v176) == *(v168 + 8 * v176))
          {
            if (v171 == ++v176)
            {
              goto LABEL_314;
            }
          }

          goto LABEL_406;
        }
      }
    }

    else
    {
      if ((a8 & 1) == 0)
      {
        v171 = 0;
        goto LABEL_407;
      }

      if (a13[1])
      {
        v171 = 0;
        v168 = 0;
LABEL_406:
        *a13 = v168;
        a13[1] = v171;
        goto LABEL_407;
      }
    }
  }

  if (v142 != v103)
  {
    if ((v142 & 0x8000000000000000) != 0)
    {
      goto LABEL_468;
    }

    if (HIDWORD(v142))
    {
      goto LABEL_469;
    }

    v148 = *(v144 + 8 * v142);
    v149 = v142++;
    LOBYTE(v185) = 0;
    v143 = result;
    goto LABEL_337;
  }

  return result;
}

_OWORD *sub_183FA02A0(_OWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v13 = a11;
  v221 = *MEMORY[0x1E69E9840];
  v14 = result[1];
  v16 = *(result + 4);
  v15 = *(result + 5);
  v208 = a6;
  v209 = a7;
  if ((~*result & 0x7FF0000000000000) == 0 && (*result & 0xFFFFFFFFFFFFFLL) != 0 || *(v16 + 16))
  {
    v17 = v16 + 32;
    v198 = v15 + 32;
    v195 = *(result + 6) + 32;
    v18 = (*a2 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a2 & 0x7FF0000000000000) == 0;
    v19 = *(a2 + 32);
    v20 = *(v19 + 16);
    v205 = v17 + 8 * a3;
    if (!v18 && !v20)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = *(a2 + 24);
      *v220 = *a2;
      *&v220[8] = *(a2 + 8);
      *&v220[24] = v25;
      v26 = a4 - a3;
      v216 = 0x200000002;
      v182 = v15 + 28;
      v27 = 1;
      v28 = 1;
      v189 = a4 - a3;
LABEL_10:
      while (v24 != 2)
      {
        if (v23 == v26)
        {
          LODWORD(v29) = 0;
          v31 = *&v220[8 * v24 + 16];
          LODWORD(v30) = v24++;
          LOBYTE(v219) = 0;
          LOBYTE(v215) = 1;
          v23 = v26;
        }

        else
        {
          v29 = v23 + a3;
          if (__OFADD__(v23, a3))
          {
            goto LABEL_315;
          }

          if ((v29 & 0x8000000000000000) != 0)
          {
            goto LABEL_316;
          }

          if (HIDWORD(v29))
          {
            goto LABEL_317;
          }

          v32 = *&v220[8 * v24 + 16];
          v33 = *(v205 + 8 * v23);
          if (v32 >= v33)
          {
            if (v33 >= v32)
            {
              LODWORD(v30) = v24++;
              ++v23;
              v31 = v32;
              LOBYTE(v219) = 0;
            }

            else
            {
              LODWORD(v30) = 0;
              ++v23;
              v31 = v33;
              LOBYTE(v219) = 1;
            }

LABEL_16:
            LOBYTE(v215) = 0;
            goto LABEL_24;
          }

          LODWORD(v29) = 0;
          LODWORD(v30) = v24++;
          v31 = v32;
          LOBYTE(v219) = 0;
          LOBYTE(v215) = 1;
        }

LABEL_24:
        if ((v219 & 1) == 0)
        {
          v22 = v30;
        }

        v28 &= v219;
        if ((v215 & 1) == 0)
        {
          v21 = v29;
        }

        if (v28)
        {
          v34 = 0;
          v35 = 0;
          v27 &= v215;
          if ((v27 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (v22)
          {
            v37 = *(&v215 + v22 + 1);
          }

          else
          {
            v37 = 0;
          }

          v34 = &v220[8 * v37];
          v35 = *(&v216 + v22) - v37;
          v27 &= v215;
          if ((v27 & 1) == 0)
          {
LABEL_30:
            if (v21)
            {
              v36 = *(v182 + 4 * v21);
            }

            else
            {
              v36 = 0;
            }

            v38 = (v195 + 8 * v36);
            v39 = *(v198 + 4 * v21) - v36;
            goto LABEL_39;
          }
        }

        v38 = 0;
        v39 = 0;
LABEL_39:
        v40 = *a6;
        v41 = a7 - *a6;
        if (a7 < *a6)
        {
          __break(1u);
LABEL_292:
          __break(1u);
LABEL_293:
          __break(1u);
          goto LABEL_294;
        }

        v42 = 0;
        if (a5)
        {
          v43 = (a5 + 8 * v40);
        }

        else
        {
          v43 = 0;
        }

        if (v35 && a7 != v40)
        {
          if (v35 >= v41)
          {
            v42 = a7 - *a6;
          }

          else
          {
            v42 = v35;
          }

          v44 = v43;
          v201 = v43;
          v192 = v31;
          v45 = v23;
          v46 = v24;
          v47 = v22;
          v48 = v21;
          v49 = v28;
          v50 = v27;
          v51 = v38;
          result = memcpy(v44, v34, 8 * v42);
          v38 = v51;
          v27 = v50;
          v28 = v49;
          v21 = v48;
          v22 = v47;
          v24 = v46;
          v23 = v45;
          v26 = v189;
          v31 = v192;
          v43 = v201;
          v13 = a11;
          a6 = v208;
          a7 = v209;
        }

        v52 = v41 - v42;
        if (__OFSUB__(v41, v42))
        {
          goto LABEL_292;
        }

        if (v52 >= v39)
        {
          v53 = 0;
          if (v39 && v52)
          {
            if (v43)
            {
              v54 = &v43[8 * v42];
            }

            else
            {
              v54 = 0;
            }

            v55 = v27;
            result = memcpy(v54, v38, 8 * v39);
            v27 = v55;
            v26 = v189;
            v13 = a11;
            a6 = v208;
            a7 = v209;
            v53 = v39;
          }

          v56 = __OFADD__(v42, v53);
          v42 += v53;
          if (v56)
          {
            goto LABEL_305;
          }
        }

        if (a8)
        {
          if (v42 < 0)
          {
            goto LABEL_306;
          }

          if (*(a9 + 8) != v42)
          {
            goto LABEL_66;
          }

          if (v42)
          {
            v57 = *a9;
            v58 = v42;
            v59 = v43;
            while (*v57 == *v59)
            {
              ++v59;
              ++v57;
              if (!--v58)
              {
                goto LABEL_10;
              }
            }

LABEL_66:
            *a9 = v43;
            *(a9 + 8) = v42;
            goto LABEL_67;
          }
        }

        else
        {
LABEL_67:
          if (__OFADD__(*a6, v42))
          {
            goto LABEL_295;
          }

          *a6 += v42;
          *(a10 + 8 * *v13) = v31;
          v60 = a13 + *a6;
          if (__OFADD__(a13, *a6))
          {
            goto LABEL_296;
          }

          if ((v60 & 0x8000000000000000) != 0)
          {
            goto LABEL_297;
          }

          if (HIDWORD(v60))
          {
            goto LABEL_298;
          }

          *(a12 + 4 * *v13) = v60;
          if (__OFADD__(*v13, 1))
          {
            goto LABEL_299;
          }

          ++*v13;
        }
      }

      if (v23 == v26)
      {
        return result;
      }

      v29 = v23 + a3;
      if (__OFADD__(v23, a3))
      {
        goto LABEL_307;
      }

      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_308;
      }

      v30 = HIDWORD(v29);
      if (HIDWORD(v29))
      {
        goto LABEL_309;
      }

      v31 = *(v205 + 8 * v23++);
      LOBYTE(v219) = 1;
      v24 = 2;
      goto LABEL_16;
    }

    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v185 = v19 + 32;
    v187 = *(v19 + 16);
    v65 = *(a2 + 40);
    v181 = *(a2 + 48) + 32;
    v183 = v65 + 32;
    v202 = a4 - a3;
    v179 = v15 + 28;
    v180 = v65 + 28;
    v66 = 1;
    v67 = 1;
LABEL_77:
    while (v64 != v20)
    {
      if (v63 == v202)
      {
        if ((v64 & 0x8000000000000000) != 0)
        {
          goto LABEL_318;
        }

        v68 = HIDWORD(v64);
        if (HIDWORD(v64))
        {
          goto LABEL_321;
        }

        v70 = *(v185 + 8 * v64);
        LODWORD(v69) = v64++;
        v220[0] = 0;
        LOBYTE(v216) = 1;
        v63 = v202;
      }

      else
      {
        if ((v64 & 0x8000000000000000) != 0)
        {
          goto LABEL_319;
        }

        if (HIDWORD(v64))
        {
          goto LABEL_320;
        }

        v68 = v63 + a3;
        if (__OFADD__(v63, a3))
        {
          goto LABEL_322;
        }

        if ((v68 & 0x8000000000000000) != 0)
        {
          goto LABEL_323;
        }

        if (HIDWORD(v68))
        {
          goto LABEL_324;
        }

        v71 = *(v185 + 8 * v64);
        v72 = *(v205 + 8 * v63);
        if (v71 >= v72)
        {
          if (v72 >= v71)
          {
            LODWORD(v69) = v64++;
            ++v63;
            v70 = v71;
            v220[0] = 0;
          }

          else
          {
            LODWORD(v69) = 0;
            ++v63;
            v70 = v72;
            v220[0] = 1;
          }

LABEL_83:
          LOBYTE(v216) = 0;
          goto LABEL_95;
        }

        LODWORD(v68) = 0;
        LODWORD(v69) = v64++;
        v70 = v71;
        v220[0] = 0;
        LOBYTE(v216) = 1;
      }

LABEL_95:
      if ((v220[0] & 1) == 0)
      {
        v62 = v69;
      }

      v67 &= v220[0];
      if ((v216 & 1) == 0)
      {
        v61 = v68;
      }

      if (v67)
      {
        v73 = 0;
        v74 = 0;
        v66 &= v216;
        if ((v66 & 1) == 0)
        {
          goto LABEL_101;
        }
      }

      else
      {
        if (v62)
        {
          v76 = *(v180 + 4 * v62);
        }

        else
        {
          v76 = 0;
        }

        v73 = (v181 + 8 * v76);
        v74 = *(v183 + 4 * v62) - v76;
        v66 &= v216;
        if ((v66 & 1) == 0)
        {
LABEL_101:
          if (v61)
          {
            v75 = *(v179 + 4 * v61);
          }

          else
          {
            v75 = 0;
          }

          v77 = (v195 + 8 * v75);
          v78 = *(v198 + 4 * v61) - v75;
          goto LABEL_110;
        }
      }

      v77 = 0;
      v78 = 0;
LABEL_110:
      v79 = *a6;
      v80 = a7 - *a6;
      if (a7 < *a6)
      {
        goto LABEL_293;
      }

      v81 = 0;
      if (a5)
      {
        v82 = (a5 + 8 * v79);
      }

      else
      {
        v82 = 0;
      }

      if (v74 && a7 != v79)
      {
        if (v74 >= v80)
        {
          v81 = a7 - *a6;
        }

        else
        {
          v81 = v74;
        }

        v83 = v82;
        v190 = v70;
        v193 = v82;
        v84 = v64;
        v85 = v63;
        v86 = v62;
        v87 = v61;
        v88 = v67;
        v89 = v66;
        v90 = v77;
        result = memcpy(v83, v73, 8 * v81);
        v77 = v90;
        v66 = v89;
        v67 = v88;
        v61 = v87;
        v62 = v86;
        v63 = v85;
        v64 = v84;
        v70 = v190;
        v82 = v193;
        v20 = v187;
        v13 = a11;
        a6 = v208;
        a7 = v209;
      }

      v91 = v80 - v81;
      if (__OFSUB__(v80, v81))
      {
LABEL_294:
        __break(1u);
LABEL_295:
        __break(1u);
LABEL_296:
        __break(1u);
LABEL_297:
        __break(1u);
LABEL_298:
        __break(1u);
LABEL_299:
        __break(1u);
LABEL_300:
        __break(1u);
LABEL_301:
        __break(1u);
LABEL_302:
        __break(1u);
LABEL_303:
        __break(1u);
LABEL_304:
        __break(1u);
LABEL_305:
        __break(1u);
LABEL_306:
        __break(1u);
LABEL_307:
        __break(1u);
LABEL_308:
        __break(1u);
LABEL_309:
        __break(1u);
LABEL_310:
        __break(1u);
LABEL_311:
        __break(1u);
LABEL_312:
        __break(1u);
LABEL_313:
        __break(1u);
LABEL_314:
        __break(1u);
LABEL_315:
        __break(1u);
LABEL_316:
        __break(1u);
LABEL_317:
        __break(1u);
LABEL_318:
        __break(1u);
LABEL_319:
        __break(1u);
LABEL_320:
        __break(1u);
LABEL_321:
        __break(1u);
LABEL_322:
        __break(1u);
LABEL_323:
        __break(1u);
LABEL_324:
        __break(1u);
LABEL_325:
        __break(1u);
        goto LABEL_326;
      }

      if (v91 >= v78)
      {
        v92 = 0;
        if (v78 && v91)
        {
          if (v82)
          {
            v93 = &v82[8 * v81];
          }

          else
          {
            v93 = 0;
          }

          v94 = v66;
          result = memcpy(v93, v77, 8 * v78);
          v66 = v94;
          v20 = v187;
          v13 = a11;
          a6 = v208;
          a7 = v209;
          v92 = v78;
        }

        v56 = __OFADD__(v81, v92);
        v81 += v92;
        if (v56)
        {
          goto LABEL_310;
        }
      }

      if (a8)
      {
        if (v81 < 0)
        {
          goto LABEL_311;
        }

        if (*(a9 + 8) != v81)
        {
          goto LABEL_137;
        }

        if (v81)
        {
          v95 = *a9;
          v96 = v81;
          v97 = v82;
          while (*v95 == *v97)
          {
            ++v97;
            ++v95;
            if (!--v96)
            {
              goto LABEL_77;
            }
          }

LABEL_137:
          *a9 = v82;
          *(a9 + 8) = v81;
          goto LABEL_138;
        }
      }

      else
      {
LABEL_138:
        if (__OFADD__(*a6, v81))
        {
          goto LABEL_300;
        }

        *a6 += v81;
        *(a10 + 8 * *v13) = v70;
        v98 = a13 + *a6;
        if (__OFADD__(a13, *a6))
        {
          goto LABEL_301;
        }

        if ((v98 & 0x8000000000000000) != 0)
        {
          goto LABEL_302;
        }

        if (HIDWORD(v98))
        {
          goto LABEL_303;
        }

        *(a12 + 4 * *v13) = v98;
        if (__OFADD__(*v13, 1))
        {
          goto LABEL_304;
        }

        ++*v13;
      }
    }

    if (v63 == v202)
    {
      return result;
    }

    v68 = v63 + a3;
    if (__OFADD__(v63, a3))
    {
      goto LABEL_312;
    }

    if ((v68 & 0x8000000000000000) != 0)
    {
      goto LABEL_313;
    }

    v69 = HIDWORD(v68);
    if (HIDWORD(v68))
    {
      goto LABEL_314;
    }

    v70 = *(v205 + 8 * v63++);
    v220[0] = 1;
    v64 = v20;
    goto LABEL_83;
  }

  *v220 = *result;
  *&v220[16] = v14;
  v219 = 0x200000002;
  v99 = (*a2 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a2 & 0x7FF0000000000000) == 0;
  v100 = *(a2 + 32);
  v101 = *(v100 + 16);
  if (!v99 && !v101)
  {
    v102 = 0;
    v103 = 0;
    v104 = 0;
    v105 = 0;
    v106 = *(a2 + 24);
    v216 = *a2;
    v217 = *(a2 + 8);
    v218 = v106;
    v196 = &v220[8 * a3 + 16];
    v107 = a4 - a3;
    v215 = 0x200000002;
    v108 = 1;
    v109 = 1;
    v199 = a4 - a3;
LABEL_153:
    while (v105 != 2)
    {
      if (v104 == v107)
      {
        LODWORD(v110) = 0;
        v112 = *(&v217 + v105 + 1);
        LODWORD(v111) = v105++;
        v214[0] = 0;
        v213 = 1;
        v104 = v107;
      }

      else
      {
        v110 = v104 + a3;
        if (__OFADD__(v104, a3))
        {
          goto LABEL_349;
        }

        if ((v110 & 0x8000000000000000) != 0)
        {
          goto LABEL_350;
        }

        if (HIDWORD(v110))
        {
          goto LABEL_351;
        }

        v113 = *(&v217 + v105 + 1);
        v114 = *&v196[8 * v104];
        if (v113 >= v114)
        {
          if (v114 >= v113)
          {
            LODWORD(v111) = v105++;
            ++v104;
            v112 = v113;
            v214[0] = 0;
          }

          else
          {
            LODWORD(v111) = 0;
            ++v104;
            v112 = v114;
            v214[0] = 1;
          }

LABEL_159:
          v213 = 0;
          goto LABEL_167;
        }

        LODWORD(v110) = 0;
        LODWORD(v111) = v105++;
        v112 = v113;
        v214[0] = 0;
        v213 = 1;
      }

LABEL_167:
      if ((v214[0] & 1) == 0)
      {
        v103 = v111;
      }

      v109 &= v214[0];
      if ((v213 & 1) == 0)
      {
        v102 = v110;
      }

      if (v109)
      {
        v115 = 0;
        v116 = 0;
        v108 &= v213;
        if ((v108 & 1) == 0)
        {
          goto LABEL_173;
        }
      }

      else
      {
        if (v103)
        {
          v118 = *&v214[4 * v103];
        }

        else
        {
          v118 = 0;
        }

        v115 = &v216 + v118;
        v116 = *(&v215 + v103) - v118;
        v108 &= v213;
        if ((v108 & 1) == 0)
        {
LABEL_173:
          if (v102)
          {
            v117 = *(&v218 + v102 + 1);
          }

          else
          {
            v117 = 0;
          }

          v119 = &v220[8 * v117];
          v120 = *&v220[4 * v102 - 8] - v117;
          goto LABEL_182;
        }
      }

      v119 = 0;
      v120 = 0;
LABEL_182:
      v121 = *a6;
      v122 = a7 - *a6;
      if (a7 < *a6)
      {
        goto LABEL_325;
      }

      v123 = 0;
      if (a5)
      {
        v124 = (a5 + 8 * v121);
      }

      else
      {
        v124 = 0;
      }

      if (v116 && a7 != v121)
      {
        if (v116 >= v122)
        {
          v123 = a7 - *a6;
        }

        else
        {
          v123 = v116;
        }

        v125 = v124;
        v203 = v112;
        v206 = v124;
        v126 = v104;
        v127 = v105;
        v128 = v103;
        v129 = v102;
        v130 = v109;
        v131 = v108;
        v132 = v119;
        result = memcpy(v125, v115, 8 * v123);
        v119 = v132;
        v108 = v131;
        v109 = v130;
        v102 = v129;
        v103 = v128;
        v105 = v127;
        v104 = v126;
        v112 = v203;
        v124 = v206;
        v107 = v199;
        v13 = a11;
        a6 = v208;
        a7 = v209;
      }

      v133 = v122 - v123;
      if (__OFSUB__(v122, v123))
      {
LABEL_326:
        __break(1u);
LABEL_327:
        __break(1u);
        goto LABEL_328;
      }

      if (v133 >= v120)
      {
        v134 = 0;
        if (v120 && v133)
        {
          if (v124)
          {
            v135 = &v124[8 * v123];
          }

          else
          {
            v135 = 0;
          }

          v136 = v108;
          result = memcpy(v135, v119, 8 * v120);
          v108 = v136;
          v107 = v199;
          v13 = a11;
          a6 = v208;
          a7 = v209;
          v134 = v120;
        }

        v56 = __OFADD__(v123, v134);
        v123 += v134;
        if (v56)
        {
          goto LABEL_339;
        }
      }

      if (a8)
      {
        if (v123 < 0)
        {
          goto LABEL_340;
        }

        if (*(a9 + 8) != v123)
        {
          goto LABEL_209;
        }

        if (v123)
        {
          v137 = *a9;
          v138 = v123;
          v139 = v124;
          while (*v137 == *v139)
          {
            ++v139;
            ++v137;
            if (!--v138)
            {
              goto LABEL_153;
            }
          }

LABEL_209:
          *a9 = v124;
          *(a9 + 8) = v123;
          goto LABEL_210;
        }
      }

      else
      {
LABEL_210:
        if (__OFADD__(*a6, v123))
        {
          goto LABEL_329;
        }

        *a6 += v123;
        *(a10 + 8 * *v13) = v112;
        v140 = a13 + *a6;
        if (__OFADD__(a13, *a6))
        {
          goto LABEL_330;
        }

        if ((v140 & 0x8000000000000000) != 0)
        {
          goto LABEL_331;
        }

        if (HIDWORD(v140))
        {
          goto LABEL_332;
        }

        *(a12 + 4 * *v13) = v140;
        if (__OFADD__(*v13, 1))
        {
          goto LABEL_333;
        }

        ++*v13;
      }
    }

    if (v104 == v107)
    {
      return result;
    }

    v110 = v104 + a3;
    if (__OFADD__(v104, a3))
    {
      goto LABEL_341;
    }

    if ((v110 & 0x8000000000000000) != 0)
    {
      goto LABEL_342;
    }

    v111 = HIDWORD(v110);
    if (HIDWORD(v110))
    {
      goto LABEL_343;
    }

    v112 = *&v196[8 * v104++];
    v214[0] = 1;
    v105 = 2;
    goto LABEL_159;
  }

  v141 = 0;
  v142 = 0;
  v143 = 0;
  v144 = 0;
  v191 = v100 + 32;
  v145 = *(a2 + 40);
  v186 = *(a2 + 48) + 32;
  v188 = v145 + 32;
  v194 = &v220[8 * a3 + 16];
  v197 = v101;
  v207 = a4 - a3;
  v184 = v145 + 28;
  v146 = 1;
  v147 = 1;
LABEL_220:
  while (v144 != v101)
  {
    if (v143 == v207)
    {
      if ((v144 & 0x8000000000000000) != 0)
      {
        goto LABEL_352;
      }

      v148 = HIDWORD(v144);
      if (HIDWORD(v144))
      {
        goto LABEL_355;
      }

      v150 = *(v191 + 8 * v144);
      LODWORD(v149) = v144++;
      LOBYTE(v216) = 0;
      LOBYTE(v215) = 1;
      v143 = v207;
    }

    else
    {
      if ((v144 & 0x8000000000000000) != 0)
      {
        goto LABEL_353;
      }

      if (HIDWORD(v144))
      {
        goto LABEL_354;
      }

      v148 = v143 + a3;
      if (__OFADD__(v143, a3))
      {
        goto LABEL_356;
      }

      if ((v148 & 0x8000000000000000) != 0)
      {
        goto LABEL_357;
      }

      if (HIDWORD(v148))
      {
        goto LABEL_358;
      }

      v151 = *(v191 + 8 * v144);
      v152 = *&v194[8 * v143];
      if (v151 >= v152)
      {
        if (v152 >= v151)
        {
          LODWORD(v149) = v144++;
          ++v143;
          v150 = v151;
          LOBYTE(v216) = 0;
        }

        else
        {
          LODWORD(v149) = 0;
          ++v143;
          v150 = v152;
          LOBYTE(v216) = 1;
        }

LABEL_226:
        LOBYTE(v215) = 0;
        goto LABEL_238;
      }

      LODWORD(v148) = 0;
      LODWORD(v149) = v144++;
      v150 = v151;
      LOBYTE(v216) = 0;
      LOBYTE(v215) = 1;
    }

LABEL_238:
    if ((v216 & 1) == 0)
    {
      v142 = v149;
    }

    v147 &= v216;
    if ((v215 & 1) == 0)
    {
      v141 = v148;
    }

    if (v147)
    {
      v153 = 0;
      v154 = 0;
      v146 &= v215;
      if ((v146 & 1) == 0)
      {
        goto LABEL_244;
      }
    }

    else
    {
      if (v142)
      {
        v156 = *(v184 + 4 * v142);
      }

      else
      {
        v156 = 0;
      }

      v153 = (v186 + 8 * v156);
      v154 = *(v188 + 4 * v142) - v156;
      v146 &= v215;
      if ((v146 & 1) == 0)
      {
LABEL_244:
        if (v141)
        {
          v155 = *(&v218 + v141 + 1);
        }

        else
        {
          v155 = 0;
        }

        v157 = &v220[8 * v155];
        v158 = *&v220[4 * v141 - 8] - v155;
        goto LABEL_253;
      }
    }

    v157 = 0;
    v158 = 0;
LABEL_253:
    v159 = *a6;
    v160 = a7 - *a6;
    if (a7 < *a6)
    {
      goto LABEL_327;
    }

    v161 = 0;
    if (a5)
    {
      v162 = (a5 + 8 * v159);
    }

    else
    {
      v162 = 0;
    }

    if (v154 && a7 != v159)
    {
      if (v154 >= v160)
      {
        v161 = a7 - *a6;
      }

      else
      {
        v161 = v154;
      }

      v163 = v162;
      v200 = v150;
      v204 = v162;
      v164 = v144;
      v165 = v143;
      v166 = v142;
      v167 = v141;
      v168 = v147;
      v169 = v146;
      v170 = v157;
      result = memcpy(v163, v153, 8 * v161);
      v157 = v170;
      v146 = v169;
      v147 = v168;
      v141 = v167;
      v142 = v166;
      v143 = v165;
      v144 = v164;
      v150 = v200;
      v162 = v204;
      v101 = v197;
      v13 = a11;
      a6 = v208;
      a7 = v209;
    }

    v171 = v160 - v161;
    if (__OFSUB__(v160, v161))
    {
LABEL_328:
      __break(1u);
LABEL_329:
      __break(1u);
LABEL_330:
      __break(1u);
LABEL_331:
      __break(1u);
LABEL_332:
      __break(1u);
LABEL_333:
      __break(1u);
LABEL_334:
      __break(1u);
LABEL_335:
      __break(1u);
LABEL_336:
      __break(1u);
LABEL_337:
      __break(1u);
LABEL_338:
      __break(1u);
LABEL_339:
      __break(1u);
LABEL_340:
      __break(1u);
LABEL_341:
      __break(1u);
LABEL_342:
      __break(1u);
LABEL_343:
      __break(1u);
LABEL_344:
      __break(1u);
LABEL_345:
      __break(1u);
LABEL_346:
      __break(1u);
LABEL_347:
      __break(1u);
LABEL_348:
      __break(1u);
LABEL_349:
      __break(1u);
LABEL_350:
      __break(1u);
LABEL_351:
      __break(1u);
LABEL_352:
      __break(1u);
LABEL_353:
      __break(1u);
LABEL_354:
      __break(1u);
LABEL_355:
      __break(1u);
LABEL_356:
      __break(1u);
LABEL_357:
      __break(1u);
LABEL_358:
      __break(1u);
    }

    if (v171 >= v158)
    {
      v172 = 0;
      if (v158 && v171)
      {
        if (v162)
        {
          v173 = &v162[8 * v161];
        }

        else
        {
          v173 = 0;
        }

        v174 = v146;
        result = memcpy(v173, v157, 8 * v158);
        v146 = v174;
        v101 = v197;
        v13 = a11;
        a6 = v208;
        a7 = v209;
        v172 = v158;
      }

      v56 = __OFADD__(v161, v172);
      v161 += v172;
      if (v56)
      {
        goto LABEL_344;
      }
    }

    if (a8)
    {
      if (v161 < 0)
      {
        goto LABEL_345;
      }

      if (*(a9 + 8) != v161)
      {
        goto LABEL_280;
      }

      if (v161)
      {
        v175 = *a9;
        v176 = v161;
        v177 = v162;
        while (*v175 == *v177)
        {
          ++v177;
          ++v175;
          if (!--v176)
          {
            goto LABEL_220;
          }
        }

LABEL_280:
        *a9 = v162;
        *(a9 + 8) = v161;
        goto LABEL_281;
      }
    }

    else
    {
LABEL_281:
      if (__OFADD__(*a6, v161))
      {
        goto LABEL_334;
      }

      *a6 += v161;
      *(a10 + 8 * *v13) = v150;
      v178 = a13 + *a6;
      if (__OFADD__(a13, *a6))
      {
        goto LABEL_335;
      }

      if ((v178 & 0x8000000000000000) != 0)
      {
        goto LABEL_336;
      }

      if (HIDWORD(v178))
      {
        goto LABEL_337;
      }

      *(a12 + 4 * *v13) = v178;
      if (__OFADD__(*v13, 1))
      {
        goto LABEL_338;
      }

      ++*v13;
    }
  }

  if (v143 != v207)
  {
    v148 = v143 + a3;
    if (__OFADD__(v143, a3))
    {
      goto LABEL_346;
    }

    if ((v148 & 0x8000000000000000) != 0)
    {
      goto LABEL_347;
    }

    v149 = HIDWORD(v148);
    if (HIDWORD(v148))
    {
      goto LABEL_348;
    }

    v150 = *&v194[8 * v143++];
    LOBYTE(v216) = 1;
    v144 = v101;
    goto LABEL_226;
  }

  return result;
}

_OWORD *sub_183FA1304(_OWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v13 = a11;
  v231 = *MEMORY[0x1E69E9840];
  v14 = result[1];
  v16 = *(result + 4);
  v15 = *(result + 5);
  v219 = a6;
  v220 = a7;
  if ((~*result & 0x7FF0000000000000) == 0 && (*result & 0xFFFFFFFFFFFFFLL) != 0 || *(v16 + 16))
  {
    v17 = v16 + 32;
    v212 = v15 + 32;
    v209 = *(result + 6) + 32;
    v18 = (*a2 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a2 & 0x7FF0000000000000) == 0;
    v19 = *(a2 + 32);
    v20 = *(v19 + 16);
    v215 = v17 + 8 * a3;
    if (!v18 && !v20)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = *(a2 + 24);
      *v230 = *a2;
      *&v230[8] = *(a2 + 8);
      *&v230[24] = v25;
      v26 = a4 - a3;
      v194 = v15 + 28;
      v226 = 0x200000002;
      v27 = 1;
      v28 = 1;
      v199 = a4 - a3;
      while (1)
      {
LABEL_10:
        if (v24 == v26)
        {
          if (v23 == 2)
          {
            return result;
          }

          LODWORD(v29) = 0;
          v30 = *&v230[8 * v23 + 16];
          LODWORD(v31) = v23++;
          LOBYTE(v229) = 1;
          LOBYTE(v225) = 0;
          v24 = v26;
        }

        else
        {
          v29 = v24 + a3;
          v32 = __OFADD__(v24, a3);
          if (v23 == 2)
          {
            if (v32)
            {
              goto LABEL_328;
            }

            if ((v29 & 0x8000000000000000) != 0)
            {
              goto LABEL_330;
            }

            v31 = HIDWORD(v29);
            if (HIDWORD(v29))
            {
              goto LABEL_331;
            }

            v30 = *(v215 + 8 * v24++);
            LOBYTE(v229) = 0;
            v23 = 2;
            goto LABEL_26;
          }

          if (v32)
          {
            goto LABEL_327;
          }

          if ((v29 & 0x8000000000000000) != 0)
          {
            goto LABEL_329;
          }

          if (HIDWORD(v29))
          {
            goto LABEL_332;
          }

          v33 = *(v215 + 8 * v24);
          v34 = *&v230[8 * v23 + 16];
          if (v33 < v34)
          {
            LODWORD(v31) = 0;
            ++v24;
            v30 = v33;
            LOBYTE(v229) = 0;
LABEL_26:
            LOBYTE(v225) = 1;
            goto LABEL_27;
          }

          if (v34 >= v33)
          {
            ++v24;
            LODWORD(v31) = v23++;
            v30 = v33;
            LOBYTE(v229) = 0;
          }

          else
          {
            LODWORD(v29) = 0;
            LODWORD(v31) = v23++;
            v30 = v34;
            LOBYTE(v229) = 1;
          }

          LOBYTE(v225) = 0;
        }

LABEL_27:
        if ((v229 & 1) == 0)
        {
          v22 = v29;
        }

        v28 &= v229;
        if ((v225 & 1) == 0)
        {
          v21 = v31;
        }

        if (v28)
        {
          v35 = 0;
          v36 = 0;
          v27 &= v225;
          if ((v27 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        else
        {
          if (v22)
          {
            v38 = *(v194 + 4 * v22);
          }

          else
          {
            v38 = 0;
          }

          v35 = (v209 + 8 * v38);
          v36 = *(v212 + 4 * v22) - v38;
          v27 &= v225;
          if ((v27 & 1) == 0)
          {
LABEL_33:
            if (v21)
            {
              v37 = *(&v225 + v21 + 1);
            }

            else
            {
              v37 = 0;
            }

            v39 = &v230[8 * v37];
            v40 = *(&v226 + v21) - v37;
            goto LABEL_42;
          }
        }

        v39 = 0;
        v40 = 0;
LABEL_42:
        v41 = *a6;
        v42 = a7 - *a6;
        if (a7 < *a6)
        {
          __break(1u);
LABEL_308:
          __break(1u);
LABEL_309:
          __break(1u);
          goto LABEL_310;
        }

        v43 = 0;
        if (a5)
        {
          v44 = (a5 + 8 * v41);
        }

        else
        {
          v44 = 0;
        }

        if (v36 && a7 != v41)
        {
          if (v36 >= v42)
          {
            v43 = a7 - *a6;
          }

          else
          {
            v43 = v36;
          }

          v45 = v44;
          v202 = v24;
          v206 = v23;
          v46 = v22;
          v47 = v21;
          v48 = v28;
          v49 = v27;
          v50 = v44;
          v51 = v30;
          v52 = v40;
          v53 = v39;
          result = memcpy(v45, v35, 8 * v43);
          v39 = v53;
          v40 = v52;
          v30 = v51;
          v44 = v50;
          v27 = v49;
          v28 = v48;
          v21 = v47;
          v22 = v46;
          v24 = v202;
          v23 = v206;
          v26 = v199;
          v13 = a11;
          a6 = v219;
          a7 = v220;
        }

        v54 = v42 - v43;
        if (__OFSUB__(v42, v43))
        {
          goto LABEL_308;
        }

        if (v54 >= v40)
        {
          v55 = 0;
          if (v40 && v54)
          {
            if (v44)
            {
              v56 = &v44[8 * v43];
            }

            else
            {
              v56 = 0;
            }

            v57 = v27;
            v58 = v30;
            result = memcpy(v56, v39, 8 * v40);
            v30 = v58;
            v27 = v57;
            v26 = v199;
            v13 = a11;
            a6 = v219;
            a7 = v220;
            v55 = v40;
          }

          v59 = __OFADD__(v43, v55);
          v43 += v55;
          if (v59)
          {
            goto LABEL_321;
          }
        }

        if (a8)
        {
          if (v43 < 0)
          {
            goto LABEL_322;
          }

          if (*(a9 + 8) != v43)
          {
            goto LABEL_69;
          }

          if (v43)
          {
            v60 = *a9;
            v61 = v43;
            v62 = v44;
            while (*v60 == *v62)
            {
              ++v62;
              ++v60;
              if (!--v61)
              {
                goto LABEL_10;
              }
            }

LABEL_69:
            *a9 = v44;
            *(a9 + 8) = v43;
            goto LABEL_70;
          }
        }

        else
        {
LABEL_70:
          if (__OFADD__(*a6, v43))
          {
            goto LABEL_311;
          }

          *a6 += v43;
          *(a10 + 8 * *v13) = v30;
          v63 = a13 + *a6;
          if (__OFADD__(a13, *a6))
          {
            goto LABEL_312;
          }

          if ((v63 & 0x8000000000000000) != 0)
          {
            goto LABEL_313;
          }

          if (HIDWORD(v63))
          {
            goto LABEL_314;
          }

          *(a12 + 4 * *v13) = v63;
          if (__OFADD__(*v13, 1))
          {
            goto LABEL_315;
          }

          ++*v13;
        }
      }
    }

    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v195 = v19 + 32;
    v68 = *(a2 + 40);
    v191 = *(a2 + 48) + 32;
    v193 = v68 + 32;
    v69 = a4 - a3;
    v189 = v68 + 28;
    v190 = v15 + 28;
    v70 = 1;
    v71 = 1;
    v197 = a4 - a3;
    v200 = v20;
    while (1)
    {
LABEL_81:
      if (v67 == v69)
      {
        if (v66 == v20)
        {
          return result;
        }

        if ((v66 & 0x8000000000000000) != 0)
        {
          goto LABEL_325;
        }

        v72 = HIDWORD(v66);
        if (HIDWORD(v66))
        {
          goto LABEL_326;
        }

        v73 = *(v195 + 8 * v66);
        LODWORD(v74) = v66++;
        v230[0] = 1;
        LOBYTE(v226) = 0;
        v67 = v69;
      }

      else
      {
        v72 = v67 + a3;
        v75 = __OFADD__(v67, a3);
        if (v66 == v20)
        {
          if (v75)
          {
            goto LABEL_334;
          }

          if ((v72 & 0x8000000000000000) != 0)
          {
            goto LABEL_336;
          }

          v74 = HIDWORD(v72);
          if (HIDWORD(v72))
          {
            goto LABEL_338;
          }

          v73 = *(v215 + 8 * v67++);
          v230[0] = 0;
          v66 = v20;
          goto LABEL_101;
        }

        if (v75)
        {
          goto LABEL_333;
        }

        if ((v72 & 0x8000000000000000) != 0)
        {
          goto LABEL_335;
        }

        if (HIDWORD(v72))
        {
          goto LABEL_337;
        }

        if ((v66 & 0x8000000000000000) != 0)
        {
          goto LABEL_339;
        }

        if (HIDWORD(v66))
        {
          goto LABEL_340;
        }

        v76 = *(v215 + 8 * v67);
        v77 = *(v195 + 8 * v66);
        if (v76 < v77)
        {
          LODWORD(v74) = 0;
          ++v67;
          v73 = v76;
          v230[0] = 0;
LABEL_101:
          LOBYTE(v226) = 1;
          goto LABEL_102;
        }

        if (v77 >= v76)
        {
          ++v67;
          LODWORD(v74) = v66++;
          v73 = v76;
          v230[0] = 0;
        }

        else
        {
          LODWORD(v72) = 0;
          LODWORD(v74) = v66++;
          v73 = v77;
          v230[0] = 1;
        }

        LOBYTE(v226) = 0;
      }

LABEL_102:
      if ((v230[0] & 1) == 0)
      {
        v65 = v72;
      }

      v71 &= v230[0];
      if ((v226 & 1) == 0)
      {
        v64 = v74;
      }

      if (v71)
      {
        v78 = 0;
        v79 = 0;
        v70 &= v226;
        if ((v70 & 1) == 0)
        {
          goto LABEL_108;
        }
      }

      else
      {
        if (v65)
        {
          v81 = *(v190 + 4 * v65);
        }

        else
        {
          v81 = 0;
        }

        v78 = (v209 + 8 * v81);
        v79 = *(v212 + 4 * v65) - v81;
        v70 &= v226;
        if ((v70 & 1) == 0)
        {
LABEL_108:
          if (v64)
          {
            v80 = *(v189 + 4 * v64);
          }

          else
          {
            v80 = 0;
          }

          v82 = (v191 + 8 * v80);
          v83 = *(v193 + 4 * v64) - v80;
          goto LABEL_117;
        }
      }

      v82 = 0;
      v83 = 0;
LABEL_117:
      v84 = *a6;
      v85 = a7 - *a6;
      if (a7 < *a6)
      {
        goto LABEL_309;
      }

      v86 = 0;
      if (a5)
      {
        v87 = (a5 + 8 * v84);
      }

      else
      {
        v87 = 0;
      }

      if (v79 && a7 != v84)
      {
        if (v79 >= v85)
        {
          v86 = a7 - *a6;
        }

        else
        {
          v86 = v79;
        }

        v88 = v87;
        v203 = v67;
        v207 = v66;
        v89 = v65;
        v90 = v64;
        v91 = v71;
        v92 = v70;
        v93 = v87;
        v94 = v73;
        v95 = v83;
        v96 = v82;
        result = memcpy(v88, v78, 8 * v86);
        v82 = v96;
        v83 = v95;
        v73 = v94;
        v87 = v93;
        v70 = v92;
        v71 = v91;
        v64 = v90;
        v65 = v89;
        v67 = v203;
        v66 = v207;
        v69 = v197;
        v20 = v200;
        v13 = a11;
        a6 = v219;
        a7 = v220;
      }

      v97 = v85 - v86;
      if (__OFSUB__(v85, v86))
      {
LABEL_310:
        __break(1u);
LABEL_311:
        __break(1u);
LABEL_312:
        __break(1u);
LABEL_313:
        __break(1u);
LABEL_314:
        __break(1u);
LABEL_315:
        __break(1u);
LABEL_316:
        __break(1u);
LABEL_317:
        __break(1u);
LABEL_318:
        __break(1u);
LABEL_319:
        __break(1u);
LABEL_320:
        __break(1u);
LABEL_321:
        __break(1u);
LABEL_322:
        __break(1u);
LABEL_323:
        __break(1u);
LABEL_324:
        __break(1u);
LABEL_325:
        __break(1u);
LABEL_326:
        __break(1u);
LABEL_327:
        __break(1u);
LABEL_328:
        __break(1u);
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
LABEL_331:
        __break(1u);
LABEL_332:
        __break(1u);
LABEL_333:
        __break(1u);
LABEL_334:
        __break(1u);
LABEL_335:
        __break(1u);
LABEL_336:
        __break(1u);
LABEL_337:
        __break(1u);
LABEL_338:
        __break(1u);
LABEL_339:
        __break(1u);
LABEL_340:
        __break(1u);
LABEL_341:
        __break(1u);
        goto LABEL_342;
      }

      if (v97 >= v83)
      {
        v98 = 0;
        if (v83 && v97)
        {
          if (v87)
          {
            v99 = &v87[8 * v86];
          }

          else
          {
            v99 = 0;
          }

          v100 = v70;
          v101 = v73;
          result = memcpy(v99, v82, 8 * v83);
          v73 = v101;
          v70 = v100;
          v69 = v197;
          v20 = v200;
          v13 = a11;
          a6 = v219;
          a7 = v220;
          v98 = v83;
        }

        v59 = __OFADD__(v86, v98);
        v86 += v98;
        if (v59)
        {
          goto LABEL_323;
        }
      }

      if (a8)
      {
        if (v86 < 0)
        {
          goto LABEL_324;
        }

        if (*(a9 + 8) != v86)
        {
          goto LABEL_144;
        }

        if (v86)
        {
          v102 = *a9;
          v103 = v86;
          v104 = v87;
          while (*v102 == *v104)
          {
            ++v104;
            ++v102;
            if (!--v103)
            {
              goto LABEL_81;
            }
          }

LABEL_144:
          *a9 = v87;
          *(a9 + 8) = v86;
          goto LABEL_145;
        }
      }

      else
      {
LABEL_145:
        if (__OFADD__(*a6, v86))
        {
          goto LABEL_316;
        }

        *a6 += v86;
        *(a10 + 8 * *v13) = v73;
        v105 = a13 + *a6;
        if (__OFADD__(a13, *a6))
        {
          goto LABEL_317;
        }

        if ((v105 & 0x8000000000000000) != 0)
        {
          goto LABEL_318;
        }

        if (HIDWORD(v105))
        {
          goto LABEL_319;
        }

        *(a12 + 4 * *v13) = v105;
        if (__OFADD__(*v13, 1))
        {
          goto LABEL_320;
        }

        ++*v13;
      }
    }
  }

  *v230 = *result;
  *&v230[16] = v14;
  v229 = 0x200000002;
  v106 = (*a2 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a2 & 0x7FF0000000000000) == 0;
  v107 = *(a2 + 32);
  v108 = *(v107 + 16);
  if (!v106 && !v108)
  {
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v113 = *(a2 + 24);
    v226 = *a2;
    v227 = *(a2 + 8);
    v228 = v113;
    v204 = &v230[8 * a3 + 16];
    v114 = a4 - a3;
    v225 = 0x200000002;
    v115 = 1;
    v116 = 1;
    v210 = a4 - a3;
    while (1)
    {
LABEL_161:
      if (v112 == v114)
      {
        if (v111 == 2)
        {
          return result;
        }

        LODWORD(v117) = 0;
        v118 = *(&v227 + v111 + 1);
        LODWORD(v119) = v111++;
        v224[0] = 1;
        v223 = 0;
        v112 = v114;
      }

      else
      {
        v117 = v112 + a3;
        v120 = __OFADD__(v112, a3);
        if (v111 == 2)
        {
          if (v120)
          {
            goto LABEL_362;
          }

          if ((v117 & 0x8000000000000000) != 0)
          {
            goto LABEL_364;
          }

          v119 = HIDWORD(v117);
          if (HIDWORD(v117))
          {
            goto LABEL_365;
          }

          v118 = *&v204[8 * v112++];
          v224[0] = 0;
          v111 = 2;
          goto LABEL_177;
        }

        if (v120)
        {
          goto LABEL_361;
        }

        if ((v117 & 0x8000000000000000) != 0)
        {
          goto LABEL_363;
        }

        if (HIDWORD(v117))
        {
          goto LABEL_366;
        }

        v121 = *&v204[8 * v112];
        v122 = *(&v227 + v111 + 1);
        if (v121 < v122)
        {
          LODWORD(v119) = 0;
          ++v112;
          v118 = v121;
          v224[0] = 0;
LABEL_177:
          v223 = 1;
          goto LABEL_178;
        }

        if (v122 >= v121)
        {
          ++v112;
          LODWORD(v119) = v111++;
          v118 = v121;
          v224[0] = 0;
        }

        else
        {
          LODWORD(v117) = 0;
          LODWORD(v119) = v111++;
          v118 = v122;
          v224[0] = 1;
        }

        v223 = 0;
      }

LABEL_178:
      if ((v224[0] & 1) == 0)
      {
        v110 = v117;
      }

      v116 &= v224[0];
      if ((v223 & 1) == 0)
      {
        v109 = v119;
      }

      if (v116)
      {
        v123 = 0;
        v124 = 0;
        v115 &= v223;
        if ((v115 & 1) == 0)
        {
          goto LABEL_184;
        }
      }

      else
      {
        if (v110)
        {
          v126 = *(&v228 + v110 + 1);
        }

        else
        {
          v126 = 0;
        }

        v123 = &v230[8 * v126];
        v124 = *&v230[4 * v110 - 8] - v126;
        v115 &= v223;
        if ((v115 & 1) == 0)
        {
LABEL_184:
          if (v109)
          {
            v125 = *&v224[4 * v109];
          }

          else
          {
            v125 = 0;
          }

          v127 = &v226 + v125;
          v128 = *(&v225 + v109) - v125;
          goto LABEL_193;
        }
      }

      v127 = 0;
      v128 = 0;
LABEL_193:
      v129 = *a6;
      v130 = a7 - *a6;
      if (a7 < *a6)
      {
        goto LABEL_341;
      }

      v131 = 0;
      if (a5)
      {
        v132 = (a5 + 8 * v129);
      }

      else
      {
        v132 = 0;
      }

      if (v124 && a7 != v129)
      {
        if (v124 >= v130)
        {
          v131 = a7 - *a6;
        }

        else
        {
          v131 = v124;
        }

        v133 = v132;
        v213 = v112;
        v216 = v111;
        v134 = v110;
        v135 = v109;
        v136 = v116;
        v137 = v115;
        v138 = v132;
        v139 = v118;
        v140 = v128;
        v141 = v127;
        result = memcpy(v133, v123, 8 * v131);
        v127 = v141;
        v128 = v140;
        v118 = v139;
        v132 = v138;
        v115 = v137;
        v116 = v136;
        v109 = v135;
        v110 = v134;
        v112 = v213;
        v111 = v216;
        v114 = v210;
        v13 = a11;
        a6 = v219;
        a7 = v220;
      }

      v142 = v130 - v131;
      if (__OFSUB__(v130, v131))
      {
LABEL_342:
        __break(1u);
LABEL_343:
        __break(1u);
        goto LABEL_344;
      }

      if (v142 >= v128)
      {
        v143 = 0;
        if (v128 && v142)
        {
          if (v132)
          {
            v144 = &v132[8 * v131];
          }

          else
          {
            v144 = 0;
          }

          v145 = v115;
          v146 = v118;
          result = memcpy(v144, v127, 8 * v128);
          v118 = v146;
          v115 = v145;
          v114 = v210;
          v13 = a11;
          a6 = v219;
          a7 = v220;
          v143 = v128;
        }

        v59 = __OFADD__(v131, v143);
        v131 += v143;
        if (v59)
        {
          goto LABEL_355;
        }
      }

      if (a8)
      {
        if (v131 < 0)
        {
          goto LABEL_356;
        }

        if (*(a9 + 8) != v131)
        {
          goto LABEL_220;
        }

        if (v131)
        {
          v147 = *a9;
          v148 = v131;
          v149 = v132;
          while (*v147 == *v149)
          {
            ++v149;
            ++v147;
            if (!--v148)
            {
              goto LABEL_161;
            }
          }

LABEL_220:
          *a9 = v132;
          *(a9 + 8) = v131;
          goto LABEL_221;
        }
      }

      else
      {
LABEL_221:
        if (__OFADD__(*a6, v131))
        {
          goto LABEL_345;
        }

        *a6 += v131;
        *(a10 + 8 * *v13) = v118;
        v150 = a13 + *a6;
        if (__OFADD__(a13, *a6))
        {
          goto LABEL_346;
        }

        if ((v150 & 0x8000000000000000) != 0)
        {
          goto LABEL_347;
        }

        if (HIDWORD(v150))
        {
          goto LABEL_348;
        }

        *(a12 + 4 * *v13) = v150;
        if (__OFADD__(*v13, 1))
        {
          goto LABEL_349;
        }

        ++*v13;
      }
    }
  }

  v151 = 0;
  v152 = 0;
  v153 = 0;
  v154 = 0;
  v205 = v107 + 32;
  v155 = *(a2 + 40);
  v196 = *(a2 + 48) + 32;
  v198 = v155 + 32;
  v201 = &v230[8 * a3 + 16];
  v156 = a4 - a3;
  v192 = v155 + 28;
  v157 = 1;
  v158 = 1;
  v208 = a4 - a3;
  v211 = v108;
LABEL_232:
  while (v154 != v156)
  {
    v159 = v154 + a3;
    v162 = __OFADD__(v154, a3);
    if (v153 == v108)
    {
      if (v162)
      {
        goto LABEL_368;
      }

      if ((v159 & 0x8000000000000000) != 0)
      {
        goto LABEL_370;
      }

      v161 = HIDWORD(v159);
      if (HIDWORD(v159))
      {
        goto LABEL_372;
      }

      v160 = *&v201[8 * v154++];
      LOBYTE(v226) = 0;
      v153 = v108;
      goto LABEL_252;
    }

    if (v162)
    {
      goto LABEL_367;
    }

    if ((v159 & 0x8000000000000000) != 0)
    {
      goto LABEL_369;
    }

    if (HIDWORD(v159))
    {
      goto LABEL_371;
    }

    if ((v153 & 0x8000000000000000) != 0)
    {
      goto LABEL_373;
    }

    if (HIDWORD(v153))
    {
      goto LABEL_374;
    }

    v163 = *&v201[8 * v154];
    v164 = *(v205 + 8 * v153);
    if (v163 < v164)
    {
      LODWORD(v161) = 0;
      ++v154;
      v160 = v163;
      LOBYTE(v226) = 0;
LABEL_252:
      LOBYTE(v225) = 1;
      goto LABEL_253;
    }

    if (v164 >= v163)
    {
      ++v154;
      LODWORD(v161) = v153++;
      v160 = v163;
      LOBYTE(v226) = 0;
    }

    else
    {
      LODWORD(v159) = 0;
      LODWORD(v161) = v153++;
      v160 = v164;
      LOBYTE(v226) = 1;
    }

    LOBYTE(v225) = 0;
LABEL_253:
    if ((v226 & 1) == 0)
    {
      v152 = v159;
    }

    v158 &= v226;
    if ((v225 & 1) == 0)
    {
      v151 = v161;
    }

    if (v158)
    {
      v165 = 0;
      v166 = 0;
      v157 &= v225;
      if ((v157 & 1) == 0)
      {
        goto LABEL_259;
      }
    }

    else
    {
      if (v152)
      {
        v168 = *(&v228 + v152 + 1);
      }

      else
      {
        v168 = 0;
      }

      v165 = &v230[8 * v168];
      v166 = *&v230[4 * v152 - 8] - v168;
      v157 &= v225;
      if ((v157 & 1) == 0)
      {
LABEL_259:
        if (v151)
        {
          v167 = *(v192 + 4 * v151);
        }

        else
        {
          v167 = 0;
        }

        v169 = (v196 + 8 * v167);
        v170 = *(v198 + 4 * v151) - v167;
        goto LABEL_268;
      }
    }

    v169 = 0;
    v170 = 0;
LABEL_268:
    v171 = *a6;
    v172 = a7 - *a6;
    if (a7 < *a6)
    {
      goto LABEL_343;
    }

    v173 = 0;
    if (a5)
    {
      v174 = (a5 + 8 * v171);
    }

    else
    {
      v174 = 0;
    }

    if (v166 && a7 != v171)
    {
      if (v166 >= v172)
      {
        v173 = a7 - *a6;
      }

      else
      {
        v173 = v166;
      }

      v214 = v154;
      v217 = v170;
      v175 = v152;
      v176 = v151;
      v177 = v158;
      v178 = v157;
      result = memcpy(v174, v165, 8 * v173);
      v157 = v178;
      v158 = v177;
      v151 = v176;
      v152 = v175;
      v154 = v214;
      v170 = v217;
      v156 = v208;
      v108 = v211;
      v13 = a11;
      a6 = v219;
      a7 = v220;
    }

    v179 = v172 - v173;
    if (__OFSUB__(v172, v173))
    {
LABEL_344:
      __break(1u);
LABEL_345:
      __break(1u);
LABEL_346:
      __break(1u);
LABEL_347:
      __break(1u);
LABEL_348:
      __break(1u);
LABEL_349:
      __break(1u);
LABEL_350:
      __break(1u);
LABEL_351:
      __break(1u);
LABEL_352:
      __break(1u);
LABEL_353:
      __break(1u);
LABEL_354:
      __break(1u);
LABEL_355:
      __break(1u);
LABEL_356:
      __break(1u);
LABEL_357:
      __break(1u);
LABEL_358:
      __break(1u);
LABEL_359:
      __break(1u);
LABEL_360:
      __break(1u);
LABEL_361:
      __break(1u);
LABEL_362:
      __break(1u);
LABEL_363:
      __break(1u);
LABEL_364:
      __break(1u);
LABEL_365:
      __break(1u);
LABEL_366:
      __break(1u);
LABEL_367:
      __break(1u);
LABEL_368:
      __break(1u);
LABEL_369:
      __break(1u);
LABEL_370:
      __break(1u);
LABEL_371:
      __break(1u);
LABEL_372:
      __break(1u);
LABEL_373:
      __break(1u);
LABEL_374:
      __break(1u);
    }

    if (v179 >= v170)
    {
      v180 = 0;
      if (v170 && v179)
      {
        if (v174)
        {
          v181 = &v174[8 * v173];
        }

        else
        {
          v181 = 0;
        }

        v182 = v170;
        v183 = v169;
        v184 = v157;
        result = memcpy(v181, v183, 8 * v170);
        v157 = v184;
        v156 = v208;
        v108 = v211;
        v13 = a11;
        a6 = v219;
        a7 = v220;
        v180 = v182;
      }

      v59 = __OFADD__(v173, v180);
      v173 += v180;
      if (v59)
      {
        goto LABEL_357;
      }
    }

    if (a8)
    {
      if (v173 < 0)
      {
        goto LABEL_358;
      }

      if (*(a9 + 8) != v173)
      {
        goto LABEL_295;
      }

      if (v173)
      {
        v185 = *a9;
        v186 = v173;
        v187 = v174;
        while (*v185 == *v187)
        {
          ++v187;
          ++v185;
          if (!--v186)
          {
            goto LABEL_232;
          }
        }

LABEL_295:
        *a9 = v174;
        *(a9 + 8) = v173;
        goto LABEL_296;
      }
    }

    else
    {
LABEL_296:
      if (__OFADD__(*a6, v173))
      {
        goto LABEL_350;
      }

      *a6 += v173;
      *(a10 + 8 * *v13) = v160;
      v188 = a13 + *a6;
      if (__OFADD__(a13, *a6))
      {
        goto LABEL_351;
      }

      if ((v188 & 0x8000000000000000) != 0)
      {
        goto LABEL_352;
      }

      if (HIDWORD(v188))
      {
        goto LABEL_353;
      }

      *(a12 + 4 * *v13) = v188;
      if (__OFADD__(*v13, 1))
      {
        goto LABEL_354;
      }

      ++*v13;
    }
  }

  if (v153 != v108)
  {
    if ((v153 & 0x8000000000000000) != 0)
    {
      goto LABEL_359;
    }

    v159 = HIDWORD(v153);
    if (HIDWORD(v153))
    {
      goto LABEL_360;
    }

    v160 = *(v205 + 8 * v153);
    LODWORD(v161) = v153++;
    LOBYTE(v226) = 1;
    LOBYTE(v225) = 0;
    v154 = v156;
    goto LABEL_253;
  }

  return result;
}

uint64_t sub_183FA2360(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, char **a15)
{
  v19 = a15;
  result = a14;
  v148 = *MEMORY[0x1E69E9840];
  v21 = *a1;
  v22 = a1[1];
  v23 = *(a1 + 4);
  v24 = *(a1 + 5);
  v25 = *(a1 + 6);
  if ((~v21 & 0x7FF0000000000000) == 0 && (v21 & 0xFFFFFFFFFFFFFLL) != 0 || *(v23 + 16))
  {
    v26 = v23 + 32;
    v124 = (v25 + 32);
    v125 = v24 + 32;
    v27 = (*a2 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a2 & 0x7FF0000000000000) == 0;
    v15 = *(a2 + 32);
    v28 = *(v15 + 16);
    v126 = (v26 + 8 * a3);
    if (v27 || v28)
    {
      v16 = *(a2 + 40);
      v31 = *(a2 + 48);
      v128 = a4 - a3;
      v120 = *(v15 + 16);
      if (*a14 != -1)
      {
        goto LABEL_316;
      }

      goto LABEL_69;
    }

    v29 = *(a2 + 24);
    *v138 = *a2;
    v15 = v138;
    *&v138[8] = *(a2 + 8);
    *&v138[24] = v29;
    v134 = 0x200000002;
    v128 = a4 - a3;
    if (*a14 != -1)
    {
      result = swift_once();
    }

    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v121 = *a15;
    v117 = v24 + 28;
    v120 = &v138[16];
    v24 = 1;
    v34 = 1;
    while (1)
    {
LABEL_12:
      if (v33 == v128)
      {
        if (v32 == 2)
        {
          return result;
        }

        LODWORD(v35) = 0;
        v15 = *&v138[8 * v32 + 16];
        LODWORD(v36) = v32++;
        v139[0] = 1;
        LOBYTE(v137) = 0;
        v33 = v128;
      }

      else
      {
        v35 = v33 + a3;
        v37 = __OFADD__(v33, a3);
        if (v32 == 2)
        {
          if (v37)
          {
            goto LABEL_273;
          }

          if ((v35 & 0x8000000000000000) != 0)
          {
            goto LABEL_275;
          }

          v36 = HIDWORD(v35);
          if (HIDWORD(v35))
          {
            goto LABEL_276;
          }

          v15 = *&v126[8 * v33++];
          v139[0] = 0;
          v32 = 2;
          goto LABEL_28;
        }

        if (v37)
        {
          goto LABEL_272;
        }

        if ((v35 & 0x8000000000000000) != 0)
        {
          goto LABEL_274;
        }

        if (HIDWORD(v35))
        {
          goto LABEL_277;
        }

        v38 = *&v126[8 * v33];
        v39 = *&v138[8 * v32 + 16];
        if (v38 < v39)
        {
          LODWORD(v36) = 0;
          ++v33;
          v15 = *&v38;
          v139[0] = 0;
LABEL_28:
          LOBYTE(v137) = 1;
          goto LABEL_29;
        }

        if (v39 >= v38)
        {
          ++v33;
          LODWORD(v36) = v32++;
          v15 = *&v38;
          v139[0] = 0;
        }

        else
        {
          LODWORD(v35) = 0;
          LODWORD(v36) = v32++;
          v15 = *&v39;
          v139[0] = 1;
        }

        LOBYTE(v137) = 0;
      }

LABEL_29:
      if (v139[0])
      {
        v31 = v31;
      }

      else
      {
        v31 = v35;
      }

      v34 &= v139[0];
      if ((v137 & 1) == 0)
      {
        v30 = v36;
      }

      if (v34)
      {
        v40 = 0;
        v41 = 0;
        v24 = (v137 & v24);
        if ((v24 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v31)
        {
          v43 = *(v117 + 4 * v31);
        }

        else
        {
          v43 = 0;
        }

        v40 = &v124[8 * v43];
        v41 = *(v125 + 4 * v31) - v43;
        v24 = (v137 & v24);
        if ((v24 & 1) == 0)
        {
LABEL_36:
          if (v30)
          {
            v42 = *(&v133 + v30 + 1);
          }

          else
          {
            v42 = 0;
          }

          v44 = &v138[8 * v42];
          v45 = *(&v134 + v30) - v42;
          goto LABEL_45;
        }
      }

      v44 = 0;
      v45 = 0;
LABEL_45:
      v140 = v40;
      v141 = v41;
      v142 = v44;
      v143 = v45;
      v144 = v121;
      v145 = 0x7FF8000000000000;
      v146 = 0;
      v147 = 0;
      if (a7 < *a6)
      {
        __break(1u);
LABEL_257:
        __break(1u);
LABEL_258:
        __break(1u);
LABEL_259:
        __break(1u);
LABEL_260:
        __break(1u);
LABEL_261:
        __break(1u);
LABEL_262:
        __break(1u);
LABEL_263:
        __break(1u);
LABEL_264:
        __break(1u);
LABEL_265:
        __break(1u);
LABEL_266:
        __break(1u);
LABEL_267:
        __break(1u);
LABEL_268:
        __break(1u);
LABEL_269:
        __break(1u);
LABEL_270:
        __break(1u);
LABEL_271:
        __break(1u);
LABEL_272:
        __break(1u);
LABEL_273:
        __break(1u);
LABEL_274:
        __break(1u);
LABEL_275:
        __break(1u);
LABEL_276:
        __break(1u);
LABEL_277:
        __break(1u);
LABEL_278:
        __break(1u);
LABEL_279:
        __break(1u);
LABEL_280:
        __break(1u);
LABEL_281:
        __break(1u);
LABEL_282:
        __break(1u);
LABEL_283:
        __break(1u);
LABEL_284:
        __break(1u);
LABEL_285:
        __break(1u);
LABEL_286:
        __break(1u);
LABEL_287:
        __break(1u);
LABEL_288:
        __break(1u);
        goto LABEL_289;
      }

      if (a5)
      {
        v16 = (a5 + 8 * *a6);
      }

      else
      {
        v16 = 0;
      }

      v19 = &v140;
      result = sub_183FA970C(v139, v16, a7 - *a6);
      if (a8)
      {
        if (result < 0)
        {
          goto LABEL_268;
        }

        if (*(a9 + 8) != result)
        {
          goto LABEL_57;
        }

        if (result)
        {
          v46 = *a9;
          v47 = result;
          v48 = v16;
          while (*v46 == *v48)
          {
            ++v48;
            ++v46;
            if (!--v47)
            {
              goto LABEL_12;
            }
          }

LABEL_57:
          *a9 = v16;
          *(a9 + 8) = result;
          goto LABEL_58;
        }
      }

      else
      {
LABEL_58:
        if (__OFADD__(*a6, result))
        {
          goto LABEL_258;
        }

        *a6 += result;
        *(a10 + 8 * *a11) = v15;
        v49 = a13 + *a6;
        if (__OFADD__(a13, *a6))
        {
          goto LABEL_259;
        }

        if ((v49 & 0x8000000000000000) != 0)
        {
          goto LABEL_260;
        }

        if (HIDWORD(v49))
        {
          goto LABEL_261;
        }

        *(a12 + 4 * *a11) = v49;
        if (__OFADD__(*a11, 1))
        {
          goto LABEL_262;
        }

        ++*a11;
      }
    }
  }

  *v138 = v21;
  *&v138[16] = v22;
  v137 = 0x200000002;
  v69 = (*a2 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a2 & 0x7FF0000000000000) == 0;
  v70 = *(a2 + 32);
  v71 = *(v70 + 16);
  v126 = &v138[8 * a3 + 16];
  if (!v69 && !v71)
  {
    v72 = *(a2 + 24);
    v134 = *a2;
    v135 = *(a2 + 8);
    v136 = v72;
    v133 = 0x200000002;
    v128 = a4 - a3;
    if (*a14 != -1)
    {
      result = swift_once();
    }

    v73 = 0;
    v74 = 0;
    v24 = 0;
    v31 = 0;
    LODWORD(v125) = *a15;
    v124 = &v135 + 8;
    v120 = v132;
    v75 = 1;
    v76 = 1;
    while (1)
    {
LABEL_137:
      if (v31 == v128)
      {
        if (v24 == 2)
        {
          return result;
        }

        LODWORD(v77) = 0;
        v15 = *(&v135 + v24 + 1);
        LODWORD(v78) = v24++;
        v139[0] = 1;
        v132[0] = 0;
        v31 = v128;
      }

      else
      {
        v77 = v31 + a3;
        v79 = __OFADD__(v31, a3);
        if (v24 == 2)
        {
          if (v79)
          {
            goto LABEL_303;
          }

          if ((v77 & 0x8000000000000000) != 0)
          {
            goto LABEL_305;
          }

          v78 = HIDWORD(v77);
          if (HIDWORD(v77))
          {
            goto LABEL_306;
          }

          v15 = *&v126[8 * v31++];
          v139[0] = 0;
          v24 = 2;
          goto LABEL_153;
        }

        if (v79)
        {
          goto LABEL_302;
        }

        if ((v77 & 0x8000000000000000) != 0)
        {
          goto LABEL_304;
        }

        if (HIDWORD(v77))
        {
          goto LABEL_307;
        }

        v80 = *&v126[8 * v31];
        v81 = *(&v135 + v24 + 1);
        if (v80 < v81)
        {
          LODWORD(v78) = 0;
          ++v31;
          v15 = *&v80;
          v139[0] = 0;
LABEL_153:
          v132[0] = 1;
          goto LABEL_154;
        }

        if (v81 >= v80)
        {
          ++v31;
          LODWORD(v78) = v24++;
          v15 = *&v80;
          v139[0] = 0;
        }

        else
        {
          LODWORD(v77) = 0;
          LODWORD(v78) = v24++;
          v15 = *&v81;
          v139[0] = 1;
        }

        v132[0] = 0;
      }

LABEL_154:
      if ((v139[0] & 1) == 0)
      {
        v74 = v77;
      }

      v76 &= v139[0];
      if ((v132[0] & 1) == 0)
      {
        v73 = v78;
      }

      if (v76)
      {
        v82 = 0;
        v83 = 0;
        v75 &= v132[0];
        if ((v75 & 1) == 0)
        {
          goto LABEL_160;
        }
      }

      else
      {
        if (v74)
        {
          v85 = *(&v136 + v74 + 1);
        }

        else
        {
          v85 = 0;
        }

        v82 = &v138[8 * v85];
        v83 = *&v138[4 * v74 - 8] - v85;
        v75 &= v132[0];
        if ((v75 & 1) == 0)
        {
LABEL_160:
          if (v73)
          {
            v84 = *&v132[4 * v73];
          }

          else
          {
            v84 = 0;
          }

          v86 = &v134 + v84;
          v87 = *(&v133 + v73) - v84;
          goto LABEL_169;
        }
      }

      v86 = 0;
      v87 = 0;
LABEL_169:
      v140 = v82;
      v141 = v83;
      v142 = v86;
      v143 = v87;
      v144 = v125;
      v145 = 0x7FF8000000000000;
      v146 = 0;
      v147 = 0;
      if (a7 < *a6)
      {
        goto LABEL_286;
      }

      if (a5)
      {
        v16 = (a5 + 8 * *a6);
      }

      else
      {
        v16 = 0;
      }

      v19 = &v140;
      result = sub_183FA970C(v139, v16, a7 - *a6);
      if (a8)
      {
        if (result < 0)
        {
          goto LABEL_298;
        }

        if (*(a9 + 8) != result)
        {
          goto LABEL_181;
        }

        if (result)
        {
          v88 = *a9;
          v89 = result;
          v90 = v16;
          while (*v88 == *v90)
          {
            ++v90;
            ++v88;
            if (!--v89)
            {
              goto LABEL_137;
            }
          }

LABEL_181:
          *a9 = v16;
          *(a9 + 8) = result;
          goto LABEL_182;
        }
      }

      else
      {
LABEL_182:
        if (__OFADD__(*a6, result))
        {
          goto LABEL_288;
        }

        *a6 += result;
        *(a10 + 8 * *a11) = v15;
        v91 = a13 + *a6;
        if (__OFADD__(a13, *a6))
        {
LABEL_289:
          __break(1u);
LABEL_290:
          __break(1u);
LABEL_291:
          __break(1u);
LABEL_292:
          __break(1u);
LABEL_293:
          __break(1u);
          goto LABEL_294;
        }

        if ((v91 & 0x8000000000000000) != 0)
        {
          goto LABEL_290;
        }

        if (HIDWORD(v91))
        {
          goto LABEL_291;
        }

        *(a12 + 4 * *a11) = v91;
        if (__OFADD__(*a11, 1))
        {
          goto LABEL_292;
        }

        ++*a11;
      }
    }
  }

  v92 = *(a2 + 40);
  v16 = *(a2 + 48);
  v128 = a4 - a3;
  v124 = *(v70 + 16);
  if (*a14 != -1)
  {
    result = swift_once();
    v71 = v124;
  }

  v93 = 0;
  v31 = 0;
  v94 = 0;
  v95 = 0;
  v120 = (v92 + 32);
  v123 = v70 + 32;
  LODWORD(v125) = *a15;
  v119 = v16 + 4;
  v115 = v92 + 28;
  v15 = 1;
  v24 = 1;
LABEL_195:
  while (v95 != v128)
  {
    v96 = v95 + a3;
    v99 = __OFADD__(v95, a3);
    if (v94 == v71)
    {
      if (v99)
      {
        goto LABEL_308;
      }

      if ((v96 & 0x8000000000000000) != 0)
      {
        goto LABEL_311;
      }

      v98 = HIDWORD(v96);
      if (HIDWORD(v96))
      {
        goto LABEL_313;
      }

      v97 = *&v126[8 * v95++];
      v139[0] = 0;
      v94 = v71;
      goto LABEL_215;
    }

    if (v99)
    {
      goto LABEL_309;
    }

    if ((v96 & 0x8000000000000000) != 0)
    {
      goto LABEL_310;
    }

    if (HIDWORD(v96))
    {
      goto LABEL_312;
    }

    if ((v94 & 0x8000000000000000) != 0)
    {
      goto LABEL_314;
    }

    if (v94 >> 32)
    {
      goto LABEL_315;
    }

    v100 = *&v126[8 * v95];
    v101 = *(v123 + 8 * v94);
    if (v100 < v101)
    {
      LODWORD(v98) = 0;
      ++v95;
      v97 = v100;
      v139[0] = 0;
LABEL_215:
      LOBYTE(v134) = 1;
      goto LABEL_216;
    }

    if (v101 >= v100)
    {
      ++v95;
      LODWORD(v98) = v94++;
      v97 = v100;
      v139[0] = 0;
    }

    else
    {
      LODWORD(v96) = 0;
      LODWORD(v98) = v94++;
      v97 = v101;
      v139[0] = 1;
    }

    LOBYTE(v134) = 0;
LABEL_216:
    if (v139[0])
    {
      v31 = v31;
    }

    else
    {
      v31 = v96;
    }

    v24 = (v24 & v139[0]);
    if ((v134 & 1) == 0)
    {
      v93 = v98;
    }

    if (v24)
    {
      v102 = 0;
      v103 = 0;
      v15 = (v134 & v15);
      if ((v15 & 1) == 0)
      {
        goto LABEL_223;
      }
    }

    else
    {
      if (v31)
      {
        v105 = *(&v136 + v31 + 1);
      }

      else
      {
        v105 = 0;
      }

      v102 = &v138[8 * v105];
      v103 = *&v138[4 * v31 - 8] - v105;
      v15 = (v134 & v15);
      if ((v15 & 1) == 0)
      {
LABEL_223:
        if (v93)
        {
          v104 = *(v115 + 4 * v93);
        }

        else
        {
          v104 = 0;
        }

        v106 = &v119[v104];
        v107 = *&v120[4 * v93] - v104;
        goto LABEL_232;
      }
    }

    v106 = 0;
    v107 = 0;
LABEL_232:
    v140 = v102;
    v141 = v103;
    v142 = v106;
    v143 = v107;
    v144 = v125;
    v145 = 0x7FF8000000000000;
    v146 = 0;
    v147 = 0;
    if (a7 < *a6)
    {
      goto LABEL_287;
    }

    if (a5)
    {
      v16 = (a5 + 8 * *a6);
    }

    else
    {
      v16 = 0;
    }

    v19 = &v140;
    result = sub_183FA970C(v139, v16, a7 - *a6);
    v71 = v124;
    if (a8)
    {
      if (result < 0)
      {
        goto LABEL_299;
      }

      if (*(a9 + 8) != result)
      {
        goto LABEL_244;
      }

      if (result)
      {
        v108 = *a9;
        v109 = result;
        v110 = v16;
        while (*v108 == *v110)
        {
          ++v110;
          ++v108;
          if (!--v109)
          {
            goto LABEL_195;
          }
        }

LABEL_244:
        *a9 = v16;
        *(a9 + 8) = result;
        goto LABEL_245;
      }
    }

    else
    {
LABEL_245:
      if (__OFADD__(*a6, result))
      {
        goto LABEL_293;
      }

      *a6 += result;
      *(a10 + 8 * *a11) = v97;
      v111 = a13 + *a6;
      if (__OFADD__(a13, *a6))
      {
LABEL_294:
        __break(1u);
LABEL_295:
        __break(1u);
LABEL_296:
        __break(1u);
LABEL_297:
        __break(1u);
LABEL_298:
        __break(1u);
LABEL_299:
        __break(1u);
LABEL_300:
        __break(1u);
LABEL_301:
        __break(1u);
LABEL_302:
        __break(1u);
LABEL_303:
        __break(1u);
LABEL_304:
        __break(1u);
LABEL_305:
        __break(1u);
LABEL_306:
        __break(1u);
LABEL_307:
        __break(1u);
LABEL_308:
        __break(1u);
LABEL_309:
        __break(1u);
LABEL_310:
        __break(1u);
LABEL_311:
        __break(1u);
LABEL_312:
        __break(1u);
LABEL_313:
        __break(1u);
LABEL_314:
        __break(1u);
LABEL_315:
        __break(1u);
LABEL_316:
        result = swift_once();
        v28 = v120;
LABEL_69:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v53 = 0;
        v116 = v16 + 4;
        v118 = v15 + 32;
        v122 = *v19;
        v113 = v24 + 28;
        v114 = v31 + 32;
        v112 = v16 + 28;
        v24 = 1;
        v31 = 1;
        while (1)
        {
LABEL_70:
          if (v53 == v128)
          {
            if (v52 == v28)
            {
              return result;
            }

            if ((v52 & 0x8000000000000000) != 0)
            {
              goto LABEL_270;
            }

            v54 = HIDWORD(v52);
            if (HIDWORD(v52))
            {
              goto LABEL_271;
            }

            v15 = *(v118 + 8 * v52);
            LODWORD(v55) = v52++;
            v139[0] = 1;
            v138[0] = 0;
            v53 = v128;
          }

          else
          {
            v54 = v53 + a3;
            v56 = __OFADD__(v53, a3);
            if (v52 == v28)
            {
              if (v56)
              {
                goto LABEL_278;
              }

              if ((v54 & 0x8000000000000000) != 0)
              {
                goto LABEL_281;
              }

              v55 = HIDWORD(v54);
              if (HIDWORD(v54))
              {
                goto LABEL_283;
              }

              v15 = *&v126[8 * v53++];
              v139[0] = 0;
              v52 = v28;
              goto LABEL_90;
            }

            if (v56)
            {
              goto LABEL_279;
            }

            if ((v54 & 0x8000000000000000) != 0)
            {
              goto LABEL_280;
            }

            if (HIDWORD(v54))
            {
              goto LABEL_282;
            }

            if ((v52 & 0x8000000000000000) != 0)
            {
              goto LABEL_284;
            }

            if (HIDWORD(v52))
            {
              goto LABEL_285;
            }

            v57 = *&v126[8 * v53];
            v58 = *(v118 + 8 * v52);
            if (v57 < v58)
            {
              LODWORD(v55) = 0;
              ++v53;
              v15 = *&v57;
              v139[0] = 0;
LABEL_90:
              v138[0] = 1;
              goto LABEL_91;
            }

            if (v58 >= v57)
            {
              ++v53;
              LODWORD(v55) = v52++;
              v15 = *&v57;
              v139[0] = 0;
            }

            else
            {
              LODWORD(v54) = 0;
              LODWORD(v55) = v52++;
              v15 = *&v58;
              v139[0] = 1;
            }

            v138[0] = 0;
          }

LABEL_91:
          if ((v139[0] & 1) == 0)
          {
            v51 = v54;
          }

          v31 = (v31 & v139[0]);
          if ((v138[0] & 1) == 0)
          {
            v50 = v55;
          }

          if (v31)
          {
            v59 = 0;
            v60 = 0;
            v24 = (v138[0] & v24);
            if (v24)
            {
              goto LABEL_105;
            }
          }

          else
          {
            if (v51)
            {
              v62 = *(v113 + 4 * v51);
            }

            else
            {
              v62 = 0;
            }

            v59 = &v124[8 * v62];
            v60 = *(v125 + 4 * v51) - v62;
            v24 = (v138[0] & v24);
            if (v24)
            {
LABEL_105:
              v63 = 0;
              v64 = 0;
              goto LABEL_106;
            }
          }

          if (v50)
          {
            v61 = *&v112[4 * v50];
          }

          else
          {
            v61 = 0;
          }

          v63 = (v114 + 8 * v61);
          v64 = *(v116 + v50) - v61;
LABEL_106:
          v140 = v59;
          v141 = v60;
          v142 = v63;
          v143 = v64;
          v144 = v122;
          v145 = 0x7FF8000000000000;
          v146 = 0;
          v147 = 0;
          if (a7 < *a6)
          {
            goto LABEL_257;
          }

          if (a5)
          {
            v16 = (a5 + 8 * *a6);
          }

          else
          {
            v16 = 0;
          }

          v19 = &v140;
          result = sub_183FA970C(v139, v16, a7 - *a6);
          v28 = v120;
          if (a8)
          {
            if (result < 0)
            {
              goto LABEL_269;
            }

            if (*(a9 + 8) == result)
            {
              if (!result)
              {
                continue;
              }

              v65 = *a9;
              v66 = result;
              v67 = v16;
              while (*v65 == *v67)
              {
                ++v67;
                ++v65;
                if (!--v66)
                {
                  goto LABEL_70;
                }
              }
            }

            *a9 = v16;
            *(a9 + 8) = result;
          }

          if (__OFADD__(*a6, result))
          {
            goto LABEL_263;
          }

          *a6 += result;
          *(a10 + 8 * *a11) = v15;
          v68 = a13 + *a6;
          if (__OFADD__(a13, *a6))
          {
            goto LABEL_264;
          }

          if ((v68 & 0x8000000000000000) != 0)
          {
            goto LABEL_265;
          }

          if (HIDWORD(v68))
          {
            goto LABEL_266;
          }

          *(a12 + 4 * *a11) = v68;
          if (__OFADD__(*a11, 1))
          {
            goto LABEL_267;
          }

          ++*a11;
        }
      }

      if ((v111 & 0x8000000000000000) != 0)
      {
        goto LABEL_295;
      }

      if (HIDWORD(v111))
      {
        goto LABEL_296;
      }

      *(a12 + 4 * *a11) = v111;
      if (__OFADD__(*a11, 1))
      {
        goto LABEL_297;
      }

      ++*a11;
    }
  }

  if (v94 != v71)
  {
    if ((v94 & 0x8000000000000000) != 0)
    {
      goto LABEL_300;
    }

    v96 = v94 >> 32;
    if (v94 >> 32)
    {
      goto LABEL_301;
    }

    v97 = *(v123 + 8 * v94);
    LODWORD(v98) = v94++;
    v139[0] = 1;
    LOBYTE(v134) = 0;
    v95 = v128;
    goto LABEL_216;
  }

  return result;
}
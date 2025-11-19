uint64_t sub_1BAEF9AB8(uint64_t result)
{
  v1 = *(&off_1E7F1D8C0 + (byte_1BAF9A670[byte_1BAF98F60[(127 * (dword_1EBC37028 ^ 0x88 ^ dword_1EBC36FA0))] ^ 0xBE] ^ (127 * (dword_1EBC37028 ^ 0x88 ^ dword_1EBC36FA0))) - 57);
  v3 = *(v1 - 4);
  v2 = (v1 - 4);
  v4 = *(&off_1E7F1D8C0 + (byte_1BAF9A770[byte_1BAF99060[(127 * ((dword_1EBC36FA0 + v3) ^ 0x88))] ^ 0x4F] ^ (127 * ((dword_1EBC36FA0 + v3) ^ 0x88))) - 29);
  v5 = (*v4 ^ v3) - &v93;
  *v2 = 2140301951 * (v5 - 0x3D3AC77DA7219688);
  *v4 = 2140301951 * (v5 ^ 0x3D3AC77DA7219688);
  if (!result)
  {
    return result;
  }

  v6 = (result - 16);
  v89 = (*(&off_1E7F1D8C0 + ((127 * (*v2 ^ 0x88 ^ *v4)) ^ byte_1BAF9A670[byte_1BAF98F60[(127 * (*v2 ^ 0x88 ^ *v4))] ^ 0x72]) - 233) - 8);
  v7 = *v89 ^ *(result - 16 + (*(result - 8) & 0xFFFFFFFFFFFFFFF8));
  v90 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - dword_1EBC37028) ^ 0x88)) ^ byte_1BAF9A670[byte_1BAF98F60[(127 * ((dword_1EBC36FA0 - dword_1EBC37028) ^ 0x88))] ^ 0xBE]) - 46);
  if ((*(v7 + 0x370) & 2) != 0 && atomic_exchange((v7 + 884), 1u))
  {
    v8 = 1;
    while (*(v7 + 884) || atomic_exchange((v7 + 884), 1u))
    {
      if ((v8 & 0x3F) == 0)
      {
        result = (*(v90 + 8 * (((127 * ((*v4 + *v2) ^ 0x88)) ^ byte_1BAF9A470[byte_1BAF98C60[(127 * ((*v4 + *v2) ^ 0x88))] ^ 0x20]) + 2491)))();
      }

      ++v8;
    }
  }

  v9 = v6;
  v10 = v6[1];
  v11 = v10 & 0xFFFFFFFFFFFFFFF8;
  v12 = v6 + (v10 & 0xFFFFFFFFFFFFFFF8);
  if ((v10 & 1) == 0)
  {
    v13 = *v6;
    if ((v10 & 2) == 0)
    {
      v14 = v11 + v13 + 32;
      v15 = 127 * ((*v4 - *v2) ^ 0x88);
      result = (*(v90 + 8 * ((byte_1BAF98E68[(byte_1BAF9D9E4[v15 - 4] ^ 0x30) - 8] ^ v15) + 2608)))(v6 - v13, v14);
      if (!result)
      {
        *(v7 + 856) -= v14;
      }

      goto LABEL_106;
    }

    v9 = (v6 - v13);
    v11 += v13;
    if ((v6 - v13) != *(v7 + 32))
    {
      if (v13 <= 0xFF)
      {
        v16 = v9[2];
        v17 = v9[3];
        if (v17 == v16)
        {
          *v7 &= ~(1 << (v13 >> 3));
        }

        else
        {
          *(v16 + 24) = v17;
          *(v17 + 16) = v16;
        }

        goto LABEL_20;
      }

      v40 = v9[6];
      v41 = v9[3];
      if (v41 == v9)
      {
        v46 = v9 + 5;
        v47 = v9[5];
        if (v47 || (v46 = v9 + 4, (v47 = v9[4]) != 0))
        {
          do
          {
            do
            {
              v48 = v46;
              v41 = v47;
              v46 = v47 + 5;
              v47 = v47[5];
            }

            while (v47);
            v46 = v41 + 4;
            v47 = v41[4];
          }

          while (v47);
          *v48 = 0;
          if (!v40)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v41 = 0;
          if (!v40)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        v42 = v9[2];
        *(v42 + 24) = v41;
        v41[2] = v42;
        if (!v40)
        {
          goto LABEL_20;
        }
      }

      v49 = v7 + 8 * *(v9 + 14);
      if (v9 == *(v49 + 600))
      {
        *(v49 + 600) = v41;
        if (!v41)
        {
          *(v7 + 4) &= ~(1 << *(v9 + 14));
          goto LABEL_20;
        }
      }

      else
      {
        v50 = 40;
        if (*(v40 + 32) == v9)
        {
          v50 = 32;
        }

        *(v40 + v50) = v41;
        if (!v41)
        {
          goto LABEL_20;
        }
      }

      v41[6] = v40;
      v56 = v9[4];
      if (v56)
      {
        v41[4] = v56;
        *(v56 + 48) = v41;
      }

      v57 = v9[5];
      if (v57)
      {
        v41[5] = v57;
        *(v57 + 48) = v41;
      }

      goto LABEL_20;
    }

    if ((~*(v12 + 2) & 3) == 0)
    {
      *(v7 + 8) = v11;
      *(v12 + 1) &= ~1uLL;
LABEL_46:
      v9[1] = v11 | 1;
      *(v9 + v11) = v11;
      goto LABEL_106;
    }
  }

LABEL_20:
  v18 = *(v12 + 1);
  if ((v18 & 2) != 0)
  {
    *(v12 + 1) = v18 & 0xFFFFFFFFFFFFFFFELL;
    v9[1] = v11 | 1;
    *(v9 + v11) = v11;
LABEL_27:
    v102 = v11;
    if (v11 > 0xFF)
    {
      v94 = 31;
      if (!(v11 >> 24))
      {
        v25 = (((v102 >> 8) + 1048320) >> 16) & 8;
        v26 = (v102 >> 8) << v25;
        v27 = (v26 << (((v26 + 520192) >> 16) & 4) << ((((v26 << (((v26 + 520192) >> 16) & 4)) + 245760) >> 16) & 2) >> 15) - (((v26 + 520192) >> 16) & 4 | v25 | (((v26 << (((v26 + 520192) >> 16) & 4)) + 245760) >> 16) & 2);
        v94 = ((v102 >> (v27 + 21)) & 1 | (2 * v27)) + 28;
      }

      v95 = v94;
      v28 = v7 + 8 * v94 + 600;
      *(v9 + 14) = v94;
      v96 = v28;
      v97 = v7 + 4;
      v29 = 127 * (*v2 ^ 0x88 ^ *v4);
      v91 = *(v90 + 8 * ((v29 ^ byte_1BAF9A770[byte_1BAF99060[v29] ^ 0x23]) + 2505));
      __asm { BRAA            X8, X17 }
    }

    v21 = v11 >> 3;
    v22 = v7 + 16 * (v11 >> 3) + 72;
    v23 = 1 << v21;
    if ((v23 & *v7) != 0)
    {
      v24 = *(v22 + 16);
    }

    else
    {
      *v7 |= v23;
      v24 = v22;
    }

    *(v22 + 16) = v9;
    *(v24 + 24) = v9;
    v9[2] = v24;
    v9[3] = v22;
    goto LABEL_106;
  }

  if (v12 == *(v7 + 40))
  {
    v30 = (v7 + 16);
    v31 = *(v7 + 16) + v11;
    *(v7 + 16) = v31;
    *(v7 + 40) = v9;
    v9[1] = v31 | 1;
    if (v9 == *(v7 + 32))
    {
      *(v7 + 32) = 0;
      *(v7 + 8) = 0;
    }

    if (v31 <= *(v7 + 48))
    {
      goto LABEL_106;
    }

    v32 = *(v7 + 40);
    if (!v32)
    {
      goto LABEL_106;
    }

    if (*v30 >= 0x51uLL)
    {
      v33 = ((*v30 + v89[2] - 81) / v89[2] - 1) * v89[2];
      v34 = v7 + 888;
      v35 = (v7 + 888);
      do
      {
        if (*v35 <= v32 && *v35 + v35[1] > v32)
        {
          break;
        }

        v35 = v35[2];
      }

      while (v35);
      if ((v35[3] & 9) == 1)
      {
        v36 = v35[1];
        v37 = v36 - v33;
        if (v36 >= v33)
        {
          v38 = *v35;
          v39 = *v35 + v36;
          while (v34 < v38 || v34 >= v39)
          {
            v34 = *(v34 + 16);
            if (!v34)
            {
              result = (*(v90 + 8 * (((127 * (*v2 ^ 0x88 ^ *v4)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * (*v2 ^ 0x88 ^ *v4))] ^ 0x4F]) + 2665)))(v38 + v37, ((*v30 + v89[2] - 81) / v89[2] - 1) * v89[2]);
              if (v33)
              {
                if (result)
                {
                  v33 = 0;
                }

                else
                {
                  v35[1] -= v33;
                  *(v7 + 856) -= v33;
                  v60 = *(v7 + 40);
                  if (((v60 + 16) & 0xF) != 0)
                  {
                    v61 = -(v60 + 16) & 0xFLL;
                  }

                  else
                  {
                    v61 = 0;
                  }

                  v62 = v60 + v61;
                  v63 = *(v7 + 16) - v33 - v61;
                  *(v7 + 40) = v62;
                  *(v7 + 16) = v63;
                  *(v62 + 8) = v63 | 1;
                  *(v62 + v63 + 8) = 80;
                  *(v7 + 48) = v89[4];
                }
              }

              goto LABEL_111;
            }
          }
        }
      }
    }

    v33 = 0;
LABEL_111:
    v105 = (v7 + 16);
    v104 = 1;
    v103 = v33;
    v64 = *(v7 + 904);
    if (!v64 || (*(v64 + 24) & 9) != 1)
    {
      goto LABEL_138;
    }

    result = *v64;
    v65 = *(v64 + 8);
    v66 = *(v64 + 16);
    v67 = *v64 + 16;
    v68 = (v67 & 0xF) != 0 ? -v67 & 0xFLL : 0;
    v106 = result + v68;
    v69 = *(result + v68 + 8);
    v107 = v69 & 0xFFFFFFFFFFFFFFF8;
    if ((v69 & 3) != 1 || v106 + v107 < result + v65 - 80)
    {
LABEL_138:
      v65 = 0;
LABEL_139:
      *(v7 + 56) = 4095;
      v81 = v104 == 1 && v103 == -v65;
      if (v81 && *v105 > *(v7 + 48))
      {
        *(v7 + 48) = -1;
      }

      goto LABEL_106;
    }

    if (v106 == *(v7 + 32))
    {
      *(v7 + 32) = 0;
      *(v7 + 8) = 0;
    }

    else
    {
      v70 = *(v106 + 48);
      v71 = *(v106 + 24);
      if (v71 == v106)
      {
        v73 = (v106 + 40);
        v74 = *(v106 + 40);
        if (v74 || (v71 = 0, v73 = (v106 + 32), (v74 = *(v106 + 32)) != 0))
        {
          do
          {
            do
            {
              v75 = v73;
              v71 = v74;
              v73 = v74 + 5;
              v74 = v74[5];
            }

            while (v74);
            v73 = v71 + 4;
            v74 = v71[4];
          }

          while (v74);
          *v75 = 0;
        }
      }

      else
      {
        v72 = *(v106 + 16);
        *(v72 + 24) = v71;
        v71[2] = v72;
      }

      if (!v70)
      {
        goto LABEL_145;
      }

      v76 = v106;
      v77 = v7 + 8 * *(v106 + 56);
      if (v106 != *(v77 + 600))
      {
        v78 = 40;
        if (*(v70 + 32) == v106)
        {
          v78 = 32;
        }

        *(v70 + v78) = v71;
        if (!v71)
        {
          goto LABEL_145;
        }

        goto LABEL_134;
      }

      *(v77 + 600) = v71;
      if (v71)
      {
LABEL_134:
        v71[6] = v70;
        v79 = *(v106 + 32);
        if (v79)
        {
          v71[4] = v79;
          *(v79 + 48) = v71;
        }

        v80 = *(v106 + 40);
        if (v80)
        {
          v71[5] = v80;
          *(v80 + 48) = v71;
        }

        goto LABEL_145;
      }

      *(v7 + 4) &= ~(1 << *(v76 + 56));
    }

LABEL_145:
    v82 = 127 * ((*v4 + *v2) ^ 0x88);
    result = (*(v90 + 8 * ((byte_1BAF9DAE8[(byte_1BAF9CAF8[v82 - 8] ^ 0x2D) - 8] ^ v82) + 2494)))();
    if (result)
    {
      v98 = 0;
      if (v69 >= 0x100)
      {
        v98 = 31;
        if (!(v69 >> 24))
        {
          v83 = (((v69 >> 8) + 1048320) >> 16) & 8;
          v84 = (v69 >> 8) << v83;
          v85 = (v84 << (((v84 + 520192) >> 16) & 4) << ((((v84 << (((v84 + 520192) >> 16) & 4)) + 245760) >> 16) & 2) >> 15) - (((v84 + 520192) >> 16) & 4 | v83 | (((v84 << (((v84 + 520192) >> 16) & 4)) + 245760) >> 16) & 2);
          v98 = ((v107 >> (v85 + 21)) & 1 | (2 * v85)) + 28;
        }
      }

      v99 = v98;
      v86 = v7 + 8 * v98 + 600;
      *(v106 + 56) = v98;
      v100 = v86;
      v101 = v7 + 4;
      v87 = *v2;
      v88 = *v4;
      v92 = *(v90 + 8 * (((127 * ((v88 + v87) ^ 0x88)) ^ byte_1BAF9A670[byte_1BAF98F60[(127 * ((v88 + v87) ^ 0x88))] ^ 0x72]) + 2452));
      __asm { BRAA            X8, X17 }
    }

    *(v7 + 856) -= v65;
    *(v7 + 904) = v66;
    goto LABEL_139;
  }

  if (v12 == *(v7 + 32))
  {
    v11 += *(v7 + 8);
    *(v7 + 8) = v11;
    *(v7 + 32) = v9;
    goto LABEL_46;
  }

  v11 += v18 & 0xFFFFFFFFFFFFFFF8;
  if (v18 <= 0xFF)
  {
    v20 = *(v12 + 2);
    v19 = *(v12 + 3);
    if (v19 == v20)
    {
      *v7 &= ~(1 << (v18 >> 3));
    }

    else
    {
      *(v20 + 24) = v19;
      *(v19 + 16) = v20;
    }

    goto LABEL_93;
  }

  v43 = *(v12 + 6);
  v44 = *(v12 + 3);
  if (v44 == v12)
  {
    v51 = v12 + 40;
    v52 = *(v12 + 5);
    if (v52 || (v51 = v12 + 32, (v52 = *(v12 + 4)) != 0))
    {
      do
      {
        do
        {
          v53 = v51;
          v44 = v52;
          v51 = v52 + 5;
          v52 = v52[5];
        }

        while (v52);
        v51 = v44 + 32;
        v52 = *(v44 + 4);
      }

      while (v52);
      *v53 = 0;
      if (!v43)
      {
        goto LABEL_93;
      }
    }

    else
    {
      v44 = 0;
      if (!v43)
      {
        goto LABEL_93;
      }
    }
  }

  else
  {
    v45 = *(v12 + 2);
    *(v45 + 24) = v44;
    *(v44 + 2) = v45;
    if (!v43)
    {
      goto LABEL_93;
    }
  }

  v54 = v7 + 8 * *(v12 + 14);
  if (v12 == *(v54 + 600))
  {
    *(v54 + 600) = v44;
    if (!v44)
    {
      *(v7 + 4) &= ~(1 << *(v12 + 14));
      goto LABEL_93;
    }

    goto LABEL_87;
  }

  v55 = 40;
  if (*(v43 + 32) == v12)
  {
    v55 = 32;
  }

  *(v43 + v55) = v44;
  if (v44)
  {
LABEL_87:
    *(v44 + 6) = v43;
    v58 = *(v12 + 4);
    if (v58)
    {
      *(v44 + 4) = v58;
      *(v58 + 48) = v44;
    }

    v59 = *(v12 + 5);
    if (v59)
    {
      *(v44 + 5) = v59;
      *(v59 + 48) = v44;
    }
  }

LABEL_93:
  v9[1] = v11 | 1;
  *(v9 + v11) = v11;
  if (v9 != *(v7 + 32))
  {
    goto LABEL_27;
  }

  *(v7 + 8) = v11;
LABEL_106:
  if ((*(v7 + 880) & 2) != 0)
  {
    atomic_store(0, (v7 + 884));
  }

  return result;
}

void sub_1BAEFA9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, unsigned int a25, void *a26, int *a27)
{
  v39 = *a27;
  v28 = *a27;
  *(v27 - 140) = 1 << a25;
  if (((1 << a25) & v28) != 0)
  {
    v29 = *a26;
    if (a25 == 31)
    {
      LOBYTE(v30) = 0;
    }

    else
    {
      v30 = 57 - (a25 >> 1);
    }

    v31 = *(v27 - 96) << v30;
    while (1)
    {
      v32 = v29;
      if ((v29[1] & 0xFFFFFFFFFFFFFFF8) == *(v27 - 96))
      {
        break;
      }

      v33 = &v29[v31 >> 63];
      v35 = v33[4];
      v34 = v33 + 4;
      v29 = v35;
      v31 *= 2;
      if (!v35)
      {
        v36 = *(v27 - 104);
        *v34 = v36;
        goto LABEL_10;
      }
    }

    v37 = v29[2];
    v38 = *(v27 - 104);
    *(v37 + 24) = v38;
    v32[2] = v38;
    v38[2] = v37;
    v38[3] = v32;
    v38[6] = 0;
  }

  else
  {
    *a27 = *(v27 - 140) | v39;
    v32 = a26;
    v36 = *(v27 - 104);
    *a26 = v36;
LABEL_10:
    v36[6] = v32;
    v36[2] = v36;
    v36[3] = v36;
  }

  JUMPOUT(0x1BAEFA678);
}

void *sub_1BAEFAAC8(void *result)
{
  v1 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - dword_1EBC36ED8) ^ 0x88)) ^ byte_1BAF9A670[byte_1BAF98F60[(127 * ((dword_1EBC36FA0 - dword_1EBC36ED8) ^ 0x88))] ^ 0x72]) - 192);
  v3 = *(v1 - 4);
  v2 = (v1 - 4);
  v4 = *(&off_1E7F1D8C0 + (byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((dword_1EBC36FA0 - v3) ^ 0x88))] ^ 0x6B] ^ (127 * ((dword_1EBC36FA0 - v3) ^ 0x88))) - 114);
  v5 = &v10[*v4 ^ v3];
  *v2 = (2140301951 * v5) ^ 0x3D3AC77DA7219688;
  *v4 = 2140301951 * (v5 ^ 0x3D3AC77DA7219688);
  if (result)
  {
    v6 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - dword_1EBC36ED8) ^ 0x88)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * ((dword_1EBC36FA0 - dword_1EBC36ED8) ^ 0x88))] ^ 0x11]) + 39);
    v7 = result;
    (*(v6 + 8 * ((byte_1BAF9A670[byte_1BAF98F60[(127 * (*v2 ^ 0x88 ^ *v4))] ^ 0x66] ^ (127 * (*v2 ^ 0x88 ^ *v4))) + 2541)))(*result);
    (*(v6 + 8 * ((byte_1BAF9A570[byte_1BAF98D60[(127 * (*v2 ^ 0x88 ^ *v4))] ^ 0xF9] ^ (127 * (*v2 ^ 0x88 ^ *v4))) + 2343)))(v7[2]);
    (*(v6 + 8 * (((127 * (*v2 ^ 0x88 ^ *v4)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * (*v2 ^ 0x88 ^ *v4))] ^ 0x2F]) + 2512)))(v7[4]);
    (*(v6 + 8 * ((byte_1BAF9A770[byte_1BAF99060[(127 * (*v2 ^ 0x88 ^ *v4))] ^ 0x4F] ^ (127 * (*v2 ^ 0x88 ^ *v4))) + 2484)))(v7[6]);
    v8 = 127 * ((*v4 - *v2) ^ 0x88);
    (*(v6 + 8 * ((byte_1BAF98E68[(byte_1BAF9D9E4[v8 - 4] ^ 0x30) - 8] ^ v8) + 2427)))(v7[8]);
    (*(v6 + 8 * (((127 * (*v2 ^ 0x88 ^ *v4)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * (*v2 ^ 0x88 ^ *v4))] ^ 0x2F]) + 2512)))(v7[10]);
    (*(v6 + 8 * (((127 * (*v2 ^ 0x88 ^ *v4)) ^ byte_1BAF9A570[byte_1BAF98D60[(127 * (*v2 ^ 0x88 ^ *v4))] ^ 0xF9]) + 2343)))(v7[12]);
    (*(v6 + 8 * (((127 * ((*v4 - *v2) ^ 0x88)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((*v4 - *v2) ^ 0x88))] ^ 0x2F]) + 2512)))(v7[14]);
    (*(v6 + 8 * (((127 * ((*v4 + *v2) ^ 0x88)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((*v4 + *v2) ^ 0x88))] ^ 0xC0]) + 2485)))(v7[16]);
    (*(v6 + 8 * (((127 * ((*v4 + *v2) ^ 0x88)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((*v4 + *v2) ^ 0x88))] ^ 0x2F]) + 2512)))(v7[18]);
    (*(v6 + 8 * (((127 * ((*v4 + *v2) ^ 0x88)) ^ byte_1BAF9A670[byte_1BAF98F60[(127 * ((*v4 + *v2) ^ 0x88))] ^ 0xBE]) + 2428)))(v7[20]);
    (*(v6 + 8 * (((127 * (*v2 ^ 0x88 ^ *v4)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * (*v2 ^ 0x88 ^ *v4))] ^ 0x4F]) + 2484)))(v7[22]);
    (*(v6 + 8 * ((byte_1BAF9A474[(byte_1BAF98C60[(127 * ((*v4 - *v2) ^ 0x88))] ^ 0x27) - 4] ^ (127 * ((*v4 - *v2) ^ 0x88))) + 2370)))(v7[24]);
    (*(v6 + 8 * (((127 * ((*v4 + *v2) ^ 0x88)) ^ byte_1BAF9A670[byte_1BAF98F60[(127 * ((*v4 + *v2) ^ 0x88))] ^ 0x72]) + 2314)))(v7[26]);
    (*(v6 + 8 * (((127 * ((*v4 + *v2) ^ 0x88)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((*v4 + *v2) ^ 0x88))] ^ 0x2D]) + 2313)))(v7[28]);
    (*(v6 + 8 * (((127 * ((*v4 - *v2) ^ 0x88)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((*v4 - *v2) ^ 0x88))] ^ 0x2D]) + 2313)))(v7[30]);
    v9 = *(v6 + 8 * (((127 * ((*v4 + *v2) ^ 0x88)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((*v4 + *v2) ^ 0x88))] ^ 0x6B]) + 2399));

    return v9(v7);
  }

  return result;
}

void *sub_1BAEFB15C(void *result, unsigned __int8 *a2, int a3, char a4)
{
  v4 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 + dword_1EBC37048) ^ 0x88)) ^ byte_1BAF98E60[byte_1BAF9D9E0[(127 * ((dword_1EBC36FA0 + dword_1EBC37048) ^ 0x88))] ^ 0x30]) - 44);
  v6 = *(v4 - 4);
  v5 = (v4 - 4);
  v7 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - v6) ^ 0x88)) ^ byte_1BAF9A470[byte_1BAF98C60[(127 * ((dword_1EBC36FA0 - v6) ^ 0x88))] ^ 0x27]) - 143);
  v8 = (*v7 + v6) ^ &v15;
  *v5 = 2140301951 * v8 - 0x2DAA06A0DC720288;
  *v7 = 2140301951 * (v8 ^ 0x3D3AC77DA7219688);
  if (a3)
  {
    v10 = a3;
    v14 = result;
    do
    {
      v12 = *a2++;
      v13 = 127 * ((*v7 - *v5) ^ 0x88);
      (*(*(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - dword_1EBC37048) ^ 0x88)) ^ byte_1BAF9A470[byte_1BAF98C60[(127 * ((dword_1EBC36FA0 - dword_1EBC37048) ^ 0x88))] ^ 0x20]) - 74) + (byte_1BAF9DAE8[(byte_1BAF9CAF8[v13 - 8] ^ 0x2F) - 8] ^ v13) + 2672))(*(*result + 16 * (a4 & 0xF)), 0, *(*result + 16 * (a4 & 0xF) + 8), v12);
      result = v14;
      ++a4;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_1BAEFB35C(uint64_t result, unsigned int a2, int a3, char a4)
{
  v4 = *(&off_1E7F1D8C0 + ((127 * (dword_1EBC36F70 ^ 0x88 ^ dword_1EBC36FA0)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * (dword_1EBC36F70 ^ 0x88 ^ dword_1EBC36FA0))] ^ 0x4E]) - 41);
  v5 = *(&off_1E7F1D8C0 + (byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((dword_1EBC36FA0 + *v4) ^ 0x88))] ^ 0x2F] ^ (127 * ((dword_1EBC36FA0 + *v4) ^ 0x88))) - 1);
  v6 = (*v5 - *v4) ^ &v17;
  *v4 = (2140301951 * v6) ^ 0x3D3AC77DA7219688;
  *v5 = 2140301951 * (v6 ^ 0x3D3AC77DA7219688);
  if (a3)
  {
    v7 = &v16 ^ a2;
    v8 = v7 ^ a4;
    v9 = v7 + a4;
    if (a4)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    if (*(result + a2) != 1)
    {
      if (*(result + a2))
      {
        v10 = 0;
      }
    }

    v15 = 2 * a2;
    v11 = (a3 - 1);
    v12 = 127 * ((*v5 + *v4) ^ 0x88);
    v13 = *(&off_1E7F1D8C0 + ((127 * (dword_1EBC36F70 ^ 0x88 ^ dword_1EBC36FA0)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * (dword_1EBC36F70 ^ 0x88 ^ dword_1EBC36FA0))] ^ 0x4E]) - 18);
    v14 = result;
    (*(v13 + 8 * ((byte_1BAF9A57C[(byte_1BAF98D6C[v12 - 12] ^ 0xF9) - 12] ^ v12) + 2503)))();
    return (*(v13 + 8 * (((127 * (*v4 ^ 0x88 ^ *v5)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * (*v4 ^ 0x88 ^ *v5))] ^ 0x6B]) + 2559)))(v14, (v15 + 2), v11, v10);
  }

  else
  {
    *(result + a2) = a4;
  }

  return result;
}

uint64_t sub_1BAEFB5C0(uint64_t result, _BYTE *a2, int a3, char a4)
{
  v4 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 + dword_1EBC37070) ^ 0x88)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((dword_1EBC36FA0 + dword_1EBC37070) ^ 0x88))] ^ 0xC0]) + 2);
  v5 = *(&off_1E7F1D8C0 + (byte_1BAF98E60[byte_1BAF9D9E0[(127 * ((dword_1EBC36FA0 - *v4) ^ 0x88))] ^ 0x30] ^ (127 * ((dword_1EBC36FA0 - *v4) ^ 0x88))) - 86);
  v6 = (*v5 + *v4) ^ &v12;
  *v4 = 2140301951 * v6 - 0x3D3AC77DA7219688;
  *v5 = 2140301951 * (v6 ^ 0x3D3AC77DA7219688);
  if (a3)
  {
    v8 = v5;
    v9 = result;
    do
    {
      v10 = a3;
      v11 = a2;
      *a2 = (*(*(&off_1E7F1D8C0 + ((127 * (dword_1EBC37070 ^ 0x88 ^ dword_1EBC36FA0)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * (dword_1EBC37070 ^ 0x88 ^ dword_1EBC36FA0))] ^ 0xC0]) + 11) + ((127 * (*v4 ^ 0x88 ^ *v5)) ^ byte_1BAF98E60[byte_1BAF9D9E0[(127 * (*v4 ^ 0x88 ^ *v5))] ^ 0x30]) + 2588))(*(result + 16 * (a4 & 0xF)), 0, *(result + 16 * (a4 & 0xF) + 8));
      a2 = v11 + 1;
      v5 = v8;
      result = v9;
      ++a4;
      a3 = v10 - 1;
    }

    while (v10 != 1);
  }

  return result;
}

uint64_t sub_1BAEFB794(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(&off_1E7F1D8C0 + ((127 * (dword_1EBC36FA8 ^ 0x88 ^ dword_1EBC36FA0)) ^ byte_1BAF9A670[byte_1BAF98F60[(127 * (dword_1EBC36FA8 ^ 0x88 ^ dword_1EBC36FA0))] ^ 0xBE]) - 41);
  v5 = *(v3 - 4);
  v4 = (v3 - 4);
  v6 = *(&off_1E7F1D8C0 + (byte_1BAF9DAE8[(byte_1BAF9CAF8[(127 * (v5 ^ dword_1EBC36FA0 ^ 0x88)) - 8] ^ 0x2D) - 8] ^ (127 * (v5 ^ dword_1EBC36FA0 ^ 0x88))) - 200);
  v7 = (*v6 ^ v5) - &v17;
  *v4 = 2140301951 * v7 - 0x2DAA06A0DC720288;
  *v6 = 2140301951 * (v7 ^ 0x3D3AC77DA7219688);
  if (a3)
  {
    v16 = 2 * a2;
    v8 = (a3 - 1);
    v9 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 + dword_1EBC36FA8) ^ 0x88)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * ((dword_1EBC36FA0 + dword_1EBC36FA8) ^ 0x88))] ^ 0x4E]) - 18);
    v15 = (*(v9 + 8 * ((byte_1BAF9A770[byte_1BAF99060[(127 * ((*v6 + *v4) ^ 0x88))] ^ 0x4F] ^ (127 * ((*v6 + *v4) ^ 0x88))) + 2645)))(a1, (2 * a2) | 1, v8);
    v12 = (*(v9 + 8 * (((127 * (*v4 ^ 0x88 ^ *v6)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * (*v4 ^ 0x88 ^ *v6))] ^ 0x12]) + 2503)))(a1, (v16 + 2), v8);
    if (*(a1 + a2) == 1)
    {
      return (v12 + v15);
    }

    else if (!*(a1 + a2))
    {
      return (v12 ^ v15);
    }
  }

  else
  {
    return *(a1 + a2);
  }

  return v13;
}

uint64_t sub_1BAEFB9F4(uint64_t *a1)
{
  v1 = a1;
  v2 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - dword_1EBC36FB0) ^ 0x88)) ^ byte_1BAF9A670[byte_1BAF98F60[(127 * ((dword_1EBC36FA0 - dword_1EBC36FB0) ^ 0x88))] ^ 0x66]) + 45);
  v3 = *(&off_1E7F1D8C0 + (byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * (*v2 ^ dword_1EBC36FA0 ^ 0x88))] ^ 0x6B] ^ (127 * (*v2 ^ dword_1EBC36FA0 ^ 0x88))) - 114);
  v4 = (*v3 + *v2) ^ &v24;
  *v2 = 2140301951 * (v4 - 0x3D3AC77DA7219688);
  *v3 = 2140301951 * (v4 ^ 0x3D3AC77DA7219688);
  v5 = *(&off_1E7F1D8C0 + ((127 * (dword_1EBC36FB0 ^ 0x88 ^ dword_1EBC36FA0)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * (dword_1EBC36FB0 ^ 0x88 ^ dword_1EBC36FA0))] ^ 0x12]) - 132);
  v23 = *(v5 + 21640) ^ a1;
  v6 = 127 * ((*v3 - *v2) ^ 0x88);
  v7 = (*(v5 + 8 * ((byte_1BAF9A57C[(byte_1BAF98D6C[v6 - 12] ^ 0xF9) - 12] ^ v6) + 2508)))(256);
  v8 = v7;
  if (v7)
  {
    v9 = 0;
    v22 = v1;
    *v1 = v7;
    v10 = v7 + 2;
    for (i = 1; ; ++i)
    {
      v12 = v10 + v9 + v23 * &v23;
      v23 = v12;
      v13 = (v8 + v9);
      *(v8 + v9 + 8) = v12 & 3;
      v14 = (v10 + v9) & 3;
      v15 = 2140301951 * ((*v3 + *v2) ^ 0xA7219688);
      v16 = (*(v5 + 8 * (((127 * ((*v3 + *v2) ^ 0x88)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((*v3 + *v2) ^ 0x88))] ^ 0xC0]) + 2650)))(~(-2 << ((v8 + 2 + v9) & 3)));
      if (!v16)
      {
        break;
      }

      if (v14)
      {
        *v16 = ((v12 * v12) ^ 1) & 1;
        if (v14 != 1)
        {
          v17 = (((v12 * v12) ^ 1) * ((v12 * v12) ^ 1)) ^ 1;
          v16[1] = v17 & 1;
          v18 = (v17 * v17) ^ 1;
          v16[2] = v18 & 1;
          if (v14 != 2)
          {
            v19 = (v18 & 1) == 0;
            v16[3] = v19;
            v16[4] = !v19;
            v16[5] = v19;
            v16[6] = !v19;
          }
        }
      }

      *(v8 + v9) = v16;
      v9 += 16;
      if (v9 == 256)
      {
        return 0;
      }
    }

    *v13 = 0;
    v1 = v22;
    do
    {
      if (*v13)
      {
        (*(v5 + 8 * (((127 * ((*v3 - *v2) ^ 0x88)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * ((*v3 - *v2) ^ 0x88))] ^ 0x12]) + 2342)))();
      }

      v13 -= 2;
    }

    while (i-- > 1);
  }

  (*(v5 + 8 * (((127 * (*v2 ^ 0x88 ^ *v3)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * (*v2 ^ 0x88 ^ *v3))] ^ 0x4F]) + 2484)))(v8);
  *v1 = 0;
  return 0xFFFFFFFFLL;
}

uint64_t sub_1BAEFBDF4(uint64_t result)
{
  v1 = *(&off_1E7F1D8C0 + ((127 * (dword_1EBC37040 ^ 0x88 ^ dword_1EBC36FA0)) ^ byte_1BAF9A670[byte_1BAF98F60[(127 * (dword_1EBC37040 ^ 0x88 ^ dword_1EBC36FA0))] ^ 0xBE]) - 84);
  v3 = *(v1 - 4);
  v2 = (v1 - 4);
  v4 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - v3) ^ 0x88)) ^ byte_1BAF9A470[byte_1BAF98C60[(127 * ((dword_1EBC36FA0 - v3) ^ 0x88))] ^ 0x20]) - 113);
  v5 = 2140301951 * (&v7[*v4 - v3] ^ 0x3D3AC77DA7219688);
  *v2 = v5;
  *v4 = v5;
  if (result)
  {
    v6 = 127 * ((*v4 + *v2) ^ 0x88);
    return (*(*(&off_1E7F1D8C0 + ((127 * (dword_1EBC37040 ^ 0x88 ^ dword_1EBC36FA0)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * (dword_1EBC37040 ^ 0x88 ^ dword_1EBC36FA0))] ^ 0x6B]) - 75) + (byte_1BAF9A474[(byte_1BAF98C60[v6] ^ 0x20) - 4] ^ v6) + 2400))();
  }

  return result;
}

void *sub_1BAEFBF68(void *result, char *a2, int a3, uint64_t a4)
{
  if (a3)
  {
    v4 = *result | 1;
    v5 = *result + v4 * a4;
    do
    {
      v6 = *a2++;
      *(*result + (v5 & 0xF)) = v6;
      v5 += v4;
      --a3;
    }

    while (a3);
  }

  return result;
}

double sub_1BAEFBF9C(unint64_t a1, double *a2, unsigned int a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a1 | 1;
    v5 = a1 + a4 * (a1 | 1);
    if (a3 < 8 || a1 > 1 || a3 - 1 > 0xF || (~(a4 + a1) & 0xFu) < ((a3 - 1) & 0xFu) || a2 - a1 - ((a4 + a1) & 0xF) < 0x20)
    {
      goto LABEL_3;
    }

    if (a3 >= 0x20)
    {
      v8 = (a1 + (v5 & 0xF));
      for (i = a2 + 2; ; i += 2)
      {
        v10 = v8[1];
        *(i - 1) = *v8;
        *i = v10;
      }
    }

    v6 = a3 & 0x18;
    result = *(a1 + (v5 & 0xF));
    *a2 = result;
    if (v6 != 8)
    {
      result = *(a1 + (v5 & 0xF ^ 8));
      a2[1] = result;
    }

    if (v6 != a3)
    {
      v5 += v6 * v4;
      a2 = (a2 + v6);
      a3 -= v6;
      do
      {
LABEL_3:
        *a2 = *(a1 + (v5 & 0xF));
        a2 = (a2 + 1);
        v5 += v4;
        --a3;
      }

      while (a3);
    }
  }

  return result;
}

uint64_t sub_1BAEFC074(uint64_t *a1)
{
  v2 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - dword_1EBC36F68) ^ 0x88)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((dword_1EBC36FA0 - dword_1EBC36F68) ^ 0x88))] ^ 0x6B]) - 143);
  v3 = 127 * ((dword_1EBC36FA0 - *v2) ^ 0x88);
  v4 = *(&off_1E7F1D8C0 + (byte_1BAF9A774[(byte_1BAF99064[v3 - 4] ^ 0x12) - 4] ^ v3) - 171);
  v5 = &v11[*v4 - *v2];
  v6 = 2140301951 * v5 - 0x3D3AC77DA7219688;
  v7 = 2140301951 * (v5 ^ 0x3D3AC77DA7219688);
  *v2 = v6;
  *v4 = v7;
  LOBYTE(v4) = 127 * (*v2 ^ 0x88 ^ v7);
  v8 = (*(*(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 + dword_1EBC36F68) ^ 0x88)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((dword_1EBC36FA0 + dword_1EBC36F68) ^ 0x88))] ^ 0xC0]) + 11) + (byte_1BAF9DAE8[(byte_1BAF9CAF8[v4 - 8] ^ 0x2F) - 8] ^ v4) + 2677))(16);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  *a1 = v9;
  return result;
}

void *sub_1BAEFC204(void *result)
{
  v1 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - dword_1EBC36ED0) ^ 0x88)) ^ byte_1BAF9A670[byte_1BAF98F60[(127 * ((dword_1EBC36FA0 - dword_1EBC36ED0) ^ 0x88))] ^ 0x66]) + 25);
  v3 = *(v1 - 4);
  v2 = (v1 - 4);
  v4 = *(&off_1E7F1D8C0 + (byte_1BAF9A774[(byte_1BAF99064[(127 * ((dword_1EBC36FA0 - v3) ^ 0x88)) - 4] ^ 0x23) - 4] ^ (127 * ((dword_1EBC36FA0 - v3) ^ 0x88))) - 142);
  v5 = v3 - &v8 + *v4;
  *v2 = 2140301951 * v5 - 0x2DAA06A0DC720288;
  *v4 = 2140301951 * (v5 ^ 0x3D3AC77DA7219688);
  if (result)
  {
    do
    {
      v6 = *result;
      v7 = 127 * (*v2 ^ 0x88 ^ *v4);
      (*(*(&off_1E7F1D8C0 + ((127 * (dword_1EBC36ED0 ^ 0x88 ^ dword_1EBC36FA0)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * (dword_1EBC36ED0 ^ 0x88 ^ dword_1EBC36FA0))] ^ 0x12]) - 132) + (byte_1BAF9A674[(byte_1BAF98F6C[v7 - 12] ^ 0x66) - 4] ^ v7) + 2541))();
      result = v6;
    }

    while (v6);
  }

  return result;
}

uint64_t *sub_1BAEFC3D4(uint64_t *result, char *a2, int a3, uint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2;
    v5 = result;
    do
    {
      v5 = *v5;
      v6 = v5[1];
      if (v6)
      {
        v7 = v6 == a4;
      }

      else
      {
        v7 = 1;
      }
    }

    while (!v7);
    if (!v6)
    {
      v5[1] = a4;
    }

    *(v5 + 16) = v4;
    ++a2;
    ++a4;
  }

  return result;
}

uint64_t *sub_1BAEFC418(uint64_t *result, _BYTE *a2, int a3, uint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = result[1];
    if (v4)
    {
      v5 = v4 == a4;
    }

    else
    {
      v5 = 1;
    }

    v6 = result;
    if (!v5)
    {
      v6 = result;
      do
      {
        v6 = *v6;
        v7 = v6[1];
        if (v7)
        {
          v8 = v7 == a4;
        }

        else
        {
          v8 = 1;
        }
      }

      while (!v8);
    }

    *a2++ = *(v6 + 16);
    ++a4;
  }

  return result;
}

uint64_t sub_1BAEFC464(uint64_t *a1)
{
  v2 = *(&off_1E7F1D8C0 + ((127 * (dword_1EBC37030 ^ 0x88 ^ dword_1EBC36FA0)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * (dword_1EBC37030 ^ 0x88 ^ dword_1EBC36FA0))] ^ 0x23]) - 132);
  v3 = *(&off_1E7F1D8C0 + (byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((dword_1EBC36FA0 + *v2) ^ 0x88))] ^ 0x2F] ^ (127 * ((dword_1EBC36FA0 + *v2) ^ 0x88))) - 1);
  v4 = 2140301951 * (&v40[*v2 + *v3] ^ 0x3D3AC77DA7219688);
  *v2 = v4;
  v39 = v3;
  *v3 = v4;
  LOBYTE(v4) = 127 * ((v4 - *v2) ^ 0x88);
  v38 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - dword_1EBC37030) ^ 0x88)) ^ byte_1BAF9A470[byte_1BAF98C60[(127 * ((dword_1EBC36FA0 - dword_1EBC37030) ^ 0x88))] ^ 0x27]) - 104);
  v5 = (*(v38 + 8 * ((byte_1BAF98E60[byte_1BAF9D9E0[v4] ^ 0x31] ^ v4) + 2707)))(24);
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = v5;
  *a1 = v5;
  v7 = 127 * ((*v39 - *v2) ^ 0x88);
  (*(v38 + 8 * ((byte_1BAF9A770[byte_1BAF99060[v7] ^ 0x12] ^ v7) + 2479)))();
  v8 = (*(v38 + 8 * ((byte_1BAF9A470[byte_1BAF98C60[(127 * ((*v39 - *v2) ^ 0x88))] ^ 0x27] ^ (127 * ((*v39 - *v2) ^ 0x88))) + 2535)))(24);
  if (!v8)
  {
    goto LABEL_18;
  }

  v9 = v8;
  *v6 = v8;
  (*(v38 + 8 * (((127 * ((*v39 - *v2) ^ 0x88)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * ((*v39 - *v2) ^ 0x88))] ^ 0x12]) + 2479)))();
  v10 = (*(v38 + 8 * (((127 * ((*v39 + *v2) ^ 0x88)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * ((*v39 + *v2) ^ 0x88))] ^ 0x4F]) + 2649)))(24);
  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = v10;
  *v9 = v10;
  (*(v38 + 8 * (((127 * ((*v39 - *v2) ^ 0x88)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * ((*v39 - *v2) ^ 0x88))] ^ 0x11]) + 2650)))();
  v12 = (*(v38 + 8 * (((127 * (*v2 ^ 0x88 ^ *v39)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * (*v2 ^ 0x88 ^ *v39))] ^ 0x2D]) + 2478)))(24);
  if (!v12)
  {
    goto LABEL_18;
  }

  v13 = v12;
  *v11 = v12;
  (*(v38 + 8 * (((127 * (*v2 ^ 0x88 ^ *v39)) ^ byte_1BAF9A470[byte_1BAF98C60[(127 * (*v2 ^ 0x88 ^ *v39))] ^ 0x20]) + 2537)))();
  v14 = (*(v38 + 8 * (((127 * (*v2 ^ 0x88 ^ *v39)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * (*v2 ^ 0x88 ^ *v39))] ^ 0x4F]) + 2649)))(24);
  if (!v14)
  {
    goto LABEL_18;
  }

  v15 = v14;
  *v13 = v14;
  (*(v38 + 8 * (((127 * (*v2 ^ 0x88 ^ *v39)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * (*v2 ^ 0x88 ^ *v39))] ^ 0x23]) + 2508)))();
  v16 = (*(v38 + 8 * (((127 * ((*v39 - *v2) ^ 0x88)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * ((*v39 - *v2) ^ 0x88))] ^ 0x4F]) + 2649)))(24);
  if (!v16)
  {
    goto LABEL_18;
  }

  v17 = v16;
  *v15 = v16;
  (*(v38 + 8 * ((byte_1BAF9A670[byte_1BAF98F60[(127 * (*v2 ^ 0x88 ^ *v39))] ^ 0xBE] ^ (127 * (*v2 ^ 0x88 ^ *v39))) + 2565)))();
  v18 = (*(v38 + 8 * (((127 * (*v2 ^ 0x88 ^ *v39)) ^ byte_1BAF9A670[byte_1BAF98F60[(127 * (*v2 ^ 0x88 ^ *v39))] ^ 0xBE]) + 2593)))(24);
  if (!v18)
  {
    goto LABEL_18;
  }

  v19 = v18;
  *v17 = v18;
  (*(v38 + 8 * (((127 * (*v2 ^ 0x88 ^ *v39)) ^ byte_1BAF9A470[byte_1BAF98C60[(127 * (*v2 ^ 0x88 ^ *v39))] ^ 0x27]) + 2507)))();
  v20 = (*(v38 + 8 * (((127 * (*v2 ^ 0x88 ^ *v39)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * (*v2 ^ 0x88 ^ *v39))] ^ 0x2D]) + 2478)))(24);
  if (!v20)
  {
    goto LABEL_18;
  }

  v21 = v20;
  *v19 = v20;
  (*(v38 + 8 * (((127 * (*v2 ^ 0x88 ^ *v39)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * (*v2 ^ 0x88 ^ *v39))] ^ 0x11]) + 2650)))();
  v22 = (*(v38 + 8 * (((127 * ((*v39 - *v2) ^ 0x88)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * ((*v39 - *v2) ^ 0x88))] ^ 0x11]) + 2678)))(24);
  if (!v22)
  {
    goto LABEL_18;
  }

  v23 = v22;
  *v21 = v22;
  (*(v38 + 8 * ((byte_1BAF9A570[byte_1BAF98D60[(127 * ((*v39 - *v2) ^ 0x88))] ^ 0xF9] ^ (127 * ((*v39 - *v2) ^ 0x88))) + 2480)))();
  v24 = (*(v38 + 8 * (((127 * ((*v39 - *v2) ^ 0x88)) ^ byte_1BAF9A470[byte_1BAF98C60[(127 * ((*v39 - *v2) ^ 0x88))] ^ 0x20]) + 2565)))(24);
  if (!v24)
  {
    goto LABEL_18;
  }

  v25 = v24;
  *v23 = v24;
  (*(v38 + 8 * (((127 * (*v2 ^ 0x88 ^ *v39)) ^ byte_1BAF9A570[byte_1BAF98D60[(127 * (*v2 ^ 0x88 ^ *v39))] ^ 0xF9]) + 2480)))();
  v26 = (*(v38 + 8 * (((127 * ((*v39 - *v2) ^ 0x88)) ^ byte_1BAF98E60[byte_1BAF9D9E0[(127 * ((*v39 - *v2) ^ 0x88))] ^ 0x30]) + 2592)))(24);
  if (!v26)
  {
    goto LABEL_18;
  }

  v27 = v26;
  *v25 = v26;
  (*(v38 + 8 * (((127 * ((*v39 - *v2) ^ 0x88)) ^ byte_1BAF9A670[byte_1BAF98F60[(127 * ((*v39 - *v2) ^ 0x88))] ^ 0x66]) + 2678)))();
  v28 = (*(v38 + 8 * (((127 * ((*v39 + *v2) ^ 0x88)) ^ byte_1BAF9A570[byte_1BAF98D60[(127 * ((*v39 + *v2) ^ 0x88))] ^ 0xF9]) + 2508)))(24);
  if (!v28)
  {
    goto LABEL_18;
  }

  v29 = v28;
  *v27 = v28;
  (*(v38 + 8 * (((127 * ((*v39 + *v2) ^ 0x88)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * ((*v39 + *v2) ^ 0x88))] ^ 0x12]) + 2479)))();
  v30 = (*(v38 + 8 * (((127 * ((*v39 + *v2) ^ 0x88)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((*v39 + *v2) ^ 0x88))] ^ 0x2D]) + 2478)))(24);
  if (!v30)
  {
    goto LABEL_18;
  }

  v31 = v30;
  *v29 = v30;
  (*(v38 + 8 * (((127 * ((*v39 - *v2) ^ 0x88)) ^ byte_1BAF9A470[byte_1BAF98C60[(127 * ((*v39 - *v2) ^ 0x88))] ^ 0x20]) + 2537)))();
  v32 = (*(v38 + 8 * (((127 * ((*v39 + *v2) ^ 0x88)) ^ byte_1BAF98E60[byte_1BAF9D9E0[(127 * ((*v39 + *v2) ^ 0x88))] ^ 0x31]) + 2707)))(24);
  if (!v32)
  {
    goto LABEL_18;
  }

  v33 = v32;
  *v31 = v32;
  (*(v38 + 8 * (((127 * ((*v39 - *v2) ^ 0x88)) ^ byte_1BAF9A470[byte_1BAF98C60[(127 * ((*v39 - *v2) ^ 0x88))] ^ 0x20]) + 2537)))();
  v34 = (*(v38 + 8 * (((127 * (*v2 ^ 0x88 ^ *v39)) ^ byte_1BAF9A670[byte_1BAF98F60[(127 * (*v2 ^ 0x88 ^ *v39))] ^ 0x66]) + 2706)))(24);
  if (!v34)
  {
    goto LABEL_18;
  }

  v35 = v34;
  *v33 = v34;
  (*(v38 + 8 * (((127 * ((*v39 - *v2) ^ 0x88)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * ((*v39 - *v2) ^ 0x88))] ^ 0x11]) + 2650)))();
  v36 = (*(v38 + 8 * (((127 * ((*v39 - *v2) ^ 0x88)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((*v39 - *v2) ^ 0x88))] ^ 0xC0]) + 2650)))(24);
  if (v36)
  {
    *v35 = v36;
    (*(v38 + 8 * (((127 * (*v2 ^ 0x88 ^ *v39)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * (*v2 ^ 0x88 ^ *v39))] ^ 0xC0]) + 2622)))();
    return 0;
  }

  else
  {
LABEL_18:
    (*(v38 + 8 * (((127 * ((*v39 + *v2) ^ 0x88)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((*v39 + *v2) ^ 0x88))] ^ 0x2F]) + 2666)))(*a1);
    *a1 = 0;
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1BAEFD120(uint64_t result)
{
  v1 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - dword_1EBC36FB8) ^ 0x88)) ^ byte_1BAF9A570[byte_1BAF98D60[(127 * ((dword_1EBC36FA0 - dword_1EBC36FB8) ^ 0x88))] ^ 0xF9]) - 137);
  v3 = *(v1 - 4);
  v2 = (v1 - 4);
  v4 = *(&off_1E7F1D8C0 + (byte_1BAF9DAE8[(byte_1BAF9CAF8[(127 * (v3 ^ dword_1EBC36FA0 ^ 0x88)) - 8] ^ 0xC0) - 8] ^ (127 * (v3 ^ dword_1EBC36FA0 ^ 0x88))) - 28);
  v5 = 2140301951 * (&v7[*v4 ^ v3] ^ 0x3D3AC77DA7219688);
  *v2 = v5;
  *v4 = v5;
  if (result)
  {
    v6 = 127 * ((*v4 - *v2) ^ 0x88);
    return (*(*(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 + dword_1EBC36FB8) ^ 0x88)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * ((dword_1EBC36FA0 + dword_1EBC36FB8) ^ 0x88))] ^ 0x4E]) - 18) + (byte_1BAF9A474[(byte_1BAF98C60[v6] ^ 0x20) - 4] ^ v6) + 2400))();
  }

  return result;
}

void *sub_1BAEFD290(void *result, char *a2, int a3, uint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(*result + (a4++ & 0xF)) = v4;
  }

  return result;
}

double sub_1BAEFD2B4(uint64_t a1, double *a2, unsigned int a3, uint64_t a4)
{
  if (a3)
  {
    if (a3 < 8 || a3 - 1 > 0xF || (~a4 & 0xFu) < ((a3 - 1) & 0xFu) || a2 - a1 - (a4 & 0xF) < 0x20)
    {
      goto LABEL_3;
    }

    if (a3 >= 0x20)
    {
      for (i = a2 + 2; ; i += 2)
      {
        v7 = (a1 + (a4 & 0xF));
        v8 = v7[1];
        *(i - 1) = *v7;
        *i = v8;
        a4 += 32;
      }
    }

    v4 = a3 & 0x18;
    result = *(a1 + (a4 & 0xF));
    *a2 = result;
    if (v4 != 8)
    {
      result = *(a1 + ((a4 + 8) & 0xF));
      a2[1] = result;
    }

    if (v4 != a3)
    {
      a4 += v4;
      a2 = (a2 + v4);
      a3 -= v4;
      do
      {
LABEL_3:
        *a2 = *(a1 + (a4 & 0xF));
        a2 = (a2 + 1);
        ++a4;
        --a3;
      }

      while (a3);
    }
  }

  return result;
}

uint64_t sub_1BAEFD37C(uint64_t *a1)
{
  v2 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - dword_1EBC36EE8) ^ 0x88)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((dword_1EBC36FA0 - dword_1EBC36EE8) ^ 0x88))] ^ 0x2D]) - 187);
  v3 = *(v2 - 4);
  v4 = *(&off_1E7F1D8C0 + (byte_1BAF9DAE8[(byte_1BAF9CAF8[(127 * ((dword_1EBC36FA0 - v3) ^ 0x88)) - 8] ^ 0x2F) - 8] ^ (127 * ((dword_1EBC36FA0 - v3) ^ 0x88))) - 1);
  v5 = &v11[*v4 - v3];
  v6 = 2140301951 * v5 - 0x3D3AC77DA7219688;
  v7 = 2140301951 * (v5 ^ 0x3D3AC77DA7219688);
  *(v2 - 4) = v6;
  *v4 = v7;
  v8 = (*(*(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - dword_1EBC36EE8) ^ 0x88)) ^ byte_1BAF9A470[byte_1BAF98C60[(127 * ((dword_1EBC36FA0 - dword_1EBC36EE8) ^ 0x88))] ^ 0x20]) - 74) + (byte_1BAF9A474[(byte_1BAF98C60[(127 * ((v7 - *(v2 - 4)) ^ 0x88))] ^ 0x20) - 4] ^ (127 * ((v7 - *(v2 - 4)) ^ 0x88))) + 2565))(16);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  *a1 = v9;
  return result;
}

uint64_t sub_1BAEFD514()
{
  v0 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 + dword_1EBC36F60) ^ 0x88)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((dword_1EBC36FA0 + dword_1EBC36F60) ^ 0x88))] ^ 0x2F]) + 39);
  v1 = 127 * ((dword_1EBC36FA0 - *v0) ^ 0x88);
  v2 = *(&off_1E7F1D8C0 + (byte_1BAF98E68[(byte_1BAF9D9E4[v1 - 4] ^ 0x31) - 8] ^ v1) + 29);
  v3 = &v7[*v2 - *v0];
  v4 = 2140301951 * v3 - 0x2DAA06A0DC720288;
  v5 = 2140301951 * (v3 ^ 0x3D3AC77DA7219688);
  *v0 = v4;
  *v2 = v5;
  LOBYTE(v2) = 127 * ((v5 - *v0) ^ 0x88);
  return (*(*(&off_1E7F1D8C0 + ((127 * (dword_1EBC36F60 ^ 0x88 ^ dword_1EBC36FA0)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * (dword_1EBC36F60 ^ 0x88 ^ dword_1EBC36FA0))] ^ 0x23]) - 103) + (byte_1BAF9DAE8[(byte_1BAF9CAF8[v2 - 8] ^ 0x2F) - 8] ^ v2) + 2677))();
}

uint64_t sub_1BAEFD680()
{
  v0 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - dword_1EBC37068) ^ 0x88)) ^ byte_1BAF9A470[byte_1BAF98C60[(127 * ((dword_1EBC36FA0 - dword_1EBC37068) ^ 0x88))] ^ 0x27]) - 160);
  v1 = 127 * ((dword_1EBC36FA0 + *v0) ^ 0x88);
  v2 = *(&off_1E7F1D8C0 + (byte_1BAF98E68[(byte_1BAF9D9E4[v1 - 4] ^ 0x30) - 8] ^ v1) - 86);
  v3 = &v7[*v2 - *v0];
  v4 = 2140301951 * v3 + 0x3D3AC77DA7219688;
  v5 = 2140301951 * (v3 ^ 0x3D3AC77DA7219688);
  *v0 = v4;
  *v2 = v5;
  LOBYTE(v2) = 127 * ((v5 + *v0) ^ 0x88);
  return (*(*(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - dword_1EBC37068) ^ 0x88)) ^ byte_1BAF9A670[byte_1BAF98F60[(127 * ((dword_1EBC36FA0 - dword_1EBC37068) ^ 0x88))] ^ 0xBE]) - 46) + (byte_1BAF9A774[(byte_1BAF99064[v2 - 4] ^ 0x4F) - 4] ^ v2) + 2484))();
}

_BYTE *sub_1BAEFD7E8(_BYTE *result, unsigned int a2, unint64_t a3)
{
  v3 = -result & 7;
  if (v3 > a3)
  {
    LODWORD(v3) = a3;
  }

  if (v3 > 3)
  {
    if (v3 > 5)
    {
      if (v3 != 6)
      {
        if (v3 != 7)
        {
          goto LABEL_20;
        }

        *result++ = a2;
      }

      *result++ = a2;
    }

    else if (v3 == 4)
    {
LABEL_16:
      *result++ = a2;
      goto LABEL_17;
    }

    *result++ = a2;
    goto LABEL_16;
  }

  switch(v3)
  {
    case 1:
LABEL_19:
      *result++ = a2;
      break;
    case 2:
LABEL_18:
      *result++ = a2;
      goto LABEL_19;
    case 3:
LABEL_17:
      *result++ = a2;
      goto LABEL_18;
  }

LABEL_20:
  v4 = a3 - v3;
  if (v4 >= 8)
  {
    v5 = 0x101010101010101 * a2;
    v6 = ((v4 >> 3) + 7) >> 3;
    v7 = (v4 >> 3) & 7;
    if (v7 > 3)
    {
      if (((v4 >> 3) & 7) <= 5)
      {
        if (v7 == 4)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      if (v7 == 6)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    if (((v4 >> 3) & 7) > 1)
    {
      if (v7 == 2)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    if (!v7)
    {
      goto LABEL_32;
    }

    while (1)
    {
      *result = v5;
      result += 8;
      if (!--v6)
      {
        break;
      }

LABEL_32:
      *result = v5;
      result += 8;
LABEL_33:
      *result = v5;
      result += 8;
LABEL_34:
      *result = v5;
      result += 8;
LABEL_35:
      *result = v5;
      result += 8;
LABEL_36:
      *result = v5;
      result += 8;
LABEL_37:
      *result = v5;
      result += 8;
LABEL_38:
      *result = v5;
      result += 8;
    }
  }

  v8 = v4 & 7;
  if (v8 > 3)
  {
    if (v8 > 5)
    {
      if (v8 != 6)
      {
        *result++ = a2;
      }

      *result++ = a2;
    }

    else if (v8 == 4)
    {
      goto LABEL_53;
    }

    *result++ = a2;
LABEL_53:
    *result++ = a2;
LABEL_54:
    *result++ = a2;
LABEL_55:
    *result++ = a2;
    goto LABEL_56;
  }

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (v8)
  {
LABEL_56:
    *result = a2;
  }

  return result;
}

uint64_t sub_1BAEFD95C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1BAEFD9A4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BAEFD9B4()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1BAF8ED18();
}

uint64_t sub_1BAEFD9BC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BAEFDB70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc(objc_opt_class());
  qword_1EDBA4BB8 = objc_msgSend_initWithName_poolSize_numberToStash_setupCompletion_(v2, v3, @"pcd_default_pool", 2, 2, &unk_1F38F4780);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1BAEFDBC8(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 134217984;
    v6 = a2;
    _os_log_impl(&dword_1BADC1000, v3, OS_LOG_TYPE_INFO, "Finished pcd_default pool manager setup with state %ld", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1BAEFDE88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BAEFDEAC(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__poolManagerStateChangedTo_(WeakRetained, v3, a2, v4);
}

void sub_1BAEFE314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BAEFE338(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__poolManagerStateChangedTo_(WeakRetained, v3, a2, v4);
}

void sub_1BAEFE500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1BAEFE524(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BAEFE53C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1BAEFF068(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_1BADC1000, v3, OS_LOG_TYPE_ERROR, "Received error for rotate. %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1BAEFF31C()
{
  v0 = [APUnfairLock alloc];
  qword_1EDBA41C8 = objc_msgSend_initWithOptions_(v0, v1, 1, v2);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1BAF010F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1BAF01124(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BAF0113C(uint64_t a1, void *a2)
{
  v74 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (objc_msgSend_valid(v3, v4, v5, v6))
  {
    v10 = objc_msgSend_responseBody(v3, v7, v8, v9);

    v14 = objc_msgSend_responseBody(v3, v11, v12, v13);
    v21 = objc_msgSend_dictionary(MEMORY[0x1E695DF20], v15, v16, v17);
    if (!v14)
    {
      goto LABEL_13;
    }

    v22 = objc_msgSend_lock(*(a1 + 32), v18, v19, v20);
    objc_msgSend_lock(v22, v23, v24, v25);
    if (v10)
    {
      v67 = 0;
      v27 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v26, v14, 0, &v67);
      v28 = v67;

      v21 = v27;
    }

    else
    {
      v28 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_setServerData_(*(a1 + 32), v37, v21, v39);
    }

    objc_msgSend_unlock(v22, v37, v38, v39);

    if (v28)
    {
      v40 = APLogForCategory(0x2FuLL);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v69 = v14;
        v70 = 2114;
        v71 = v28;
        _os_log_impl(&dword_1BADC1000, v40, OS_LOG_TYPE_ERROR, "Received error deserializing response body: %{public}@. Error: %{public}@", buf, 0x16u);
      }
    }

    else
    {
LABEL_13:
      v41 = [APStorageManager alloc];
      v44 = objc_msgSend_initWithPathPrefix_(v41, v42, @"s/s", v43);
      v40 = v44;
      v46 = *(a1 + 40);
      if (v10)
      {
        v66 = 0;
        objc_msgSend_storeObject_atPath_error_(v44, v45, v21, v46, &v66);
        v28 = v66;
      }

      else
      {
        v65 = 0;
        v49 = objc_msgSend_fileExistsAtPath_error_(v44, v45, v46, &v65);
        v50 = v65;
        v28 = v50;
        if (v49)
        {
          v51 = *(a1 + 40);
          v64 = v50;
          objc_msgSend_removeObjectAtPath_error_(v40, v47, v51, &v64);
          v52 = v64;

          v28 = v52;
        }
      }

      objc_msgSend_setDidFetchFromServer_(*(a1 + 32), v47, 1, v48);
      if (v28)
      {
        v56 = APLogForCategory(0x2FuLL);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v69 = v14;
          v70 = 2114;
          v71 = v28;
          _os_log_impl(&dword_1BADC1000, v56, OS_LOG_TYPE_ERROR, "Received error deserializing response body: %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }

      else
      {
        v56 = objc_msgSend_now(MEMORY[0x1E695DF00], v53, v54, v55);
        objc_msgSend_setLastUpdate_(*(a1 + 32), v57, v56, v58);
      }
    }

    v59 = APLogForCategory(0x2FuLL);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
    {
      v60 = *(a1 + 48);
      *buf = 138478083;
      v69 = v60;
      v70 = 2114;
      v71 = v21;
      _os_log_impl(&dword_1BADC1000, v59, OS_LOG_TYPE_INFO, "Received response from '%{private}@'. Data: %{public}@", buf, 0x16u);
    }

    goto LABEL_25;
  }

  v14 = APLogForCategory(0x2FuLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v32 = *(a1 + 48);
    v33 = objc_msgSend_responseStatusCode(v3, v29, v30, v31);
    v28 = objc_msgSend_responseError(v3, v34, v35, v36);
    *buf = 138478339;
    v69 = v32;
    v70 = 2048;
    v71 = v33;
    v72 = 2114;
    v73 = v28;
    _os_log_impl(&dword_1BADC1000, v14, OS_LOG_TYPE_ERROR, "Received error requesting from: %{private}@. Status Code: %ld Error: %{public}@", buf, 0x20u);
LABEL_25:
  }

  v61 = *(*(a1 + 56) + 8);
  v62 = *(v61 + 40);
  *(v61 + 40) = 0;

  v63 = *MEMORY[0x1E69E9840];
}

uLong sub_1BAF02690(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_dataUsingEncoding_(a1, a2, 4, a4);
  v5 = v4;
  v9 = objc_msgSend_bytes(v5, v6, v7, v8);
  v13 = objc_msgSend_length(v4, v10, v11, v12);
  v14 = crc32(0, v9, v13);

  return v14;
}

uint64_t sub_1BAF02F00(uint64_t a1, void *a2, void *a3)
{
  v26 = 0;
  v4 = *MEMORY[0x1E695DC30];
  v5 = a3;
  objc_msgSend_getResourceValue_forKey_error_(a2, v6, &v26, v4, 0);
  v25 = 0;
  v7 = v26;
  objc_msgSend_getResourceValue_forKey_error_(v5, v8, &v25, v4, 0);

  v9 = v25;
  v11 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v7, v10, @".plist", &stru_1F38FD5F0);
  v15 = objc_msgSend_integerValue(v11, v12, v13, v14);

  v17 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v9, v16, @".plist", &stru_1F38FD5F0);

  v21 = objc_msgSend_integerValue(v17, v18, v19, v20);
  v22 = -1;
  if (v15 >= v21)
  {
    v22 = 1;
  }

  if (v15 == v21)
  {
    v23 = 0;
  }

  else
  {
    v23 = v22;
  }

  return v23;
}

uint64_t sub_1BAF03228()
{
  v0 = [APUnfairLock alloc];
  qword_1EDBA4138 = objc_msgSend_initWithOptions_(v0, v1, 1, v2);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1BAF03BD8(uint64_t a1, const char *a2)
{
  qword_1EDBA41D0 = objc_msgSend_mapTableWithKeyOptions_valueOptions_(MEMORY[0x1E696AD18], a2, 0, 5);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1BAF04D90(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_msgSend_invalidateSessionAndCancelTasks_(v4, v5, *(a1 + 32), v6);
  v7 = APLogForCategory(0x22uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = objc_msgSend_name(v4, v8, v9, v10);
    v12 = v11;
    v13 = ".";
    if (*(a1 + 32))
    {
      v13 = " and all pending tasks are canceled.";
    }

    v15 = 138543618;
    v16 = v11;
    v17 = 2082;
    v18 = v13;
    _os_log_impl(&dword_1BADC1000, v7, OS_LOG_TYPE_INFO, "Service %{public}@ is invalidated%{public}s", &v15, 0x16u);
  }

  v14 = *MEMORY[0x1E69E9840];
}

id sub_1BAF054E8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1BAF055B8;
  v13[3] = &unk_1E7F1CC70;
  v14 = v4;
  v5 = v4;
  v8 = objc_msgSend_indexesOfObjectsPassingTest_(a1, v6, v13, v7);
  v11 = objc_msgSend_objectsAtIndexes_(a1, v9, v8, v10);

  return v11;
}

void sub_1BAF05744(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v18, v24, 16);
  if (v5)
  {
    v9 = v5;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_cancel(*(*(&v18 + 1) + 8 * v11++), v6, v7, v8);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v18, v24, 16);
    }

    while (v9);
  }

  v12 = APLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v16 = objc_msgSend_count(v3, v13, v14, v15);
    *buf = 134217984;
    v23 = v16;
    _os_log_impl(&dword_1BADC1000, v12, OS_LOG_TYPE_INFO, "%lu tasks are canceled.", buf, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v17 = *MEMORY[0x1E69E9840];
}

void sub_1BAF05C48(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [APHTTPResponse alloc];
  v11 = objc_msgSend__initWithResponseData_URLResponse_error_(v9, v10, v13, v7, v8);
  if (*(a1 + 32))
  {
    v12 = objc_autoreleasePoolPush();
    (*(*(a1 + 32) + 16))();
    objc_autoreleasePoolPop(v12);
  }
}

void sub_1BAF06090(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 32))
  {
    v5 = objc_alloc(MEMORY[0x1E696AC68]);
    v9 = objc_msgSend_URL(*(a1 + 40), v6, v7, v8);
    v13 = objc_msgSend_integerValue(*(a1 + 32), v10, v11, v12);
    v26 = objc_msgSend_initWithURL_statusCode_HTTPVersion_headerFields_(v5, v14, v9, v13, 0, 0);
  }

  else
  {
    v26 = 0;
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    v16 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A978];
    v18 = objc_msgSend_integerValue(v15, a2, a3, a4);
    v20 = objc_msgSend_errorWithDomain_code_userInfo_(v16, v19, v17, v18, 0);
  }

  else
  {
    v20 = 0;
  }

  v21 = objc_msgSend_completionHandler(*(a1 + 40), a2, a3, a4);
  v22 = [APHTTPResponse alloc];
  v24 = objc_msgSend__initWithResponseData_URLResponse_error_(v22, v23, 0, v26, v20);
  if (v21)
  {
    v25 = objc_autoreleasePoolPush();
    (v21)[2](v21, v24);
    objc_autoreleasePoolPop(v25);
  }
}

id sub_1BAF06428(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF70];
  v9 = objc_msgSend_count(a1, v6, v7, v8);
  v12 = objc_msgSend_arrayWithCapacity_(v5, v10, v9, v11);
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = sub_1BAF06520;
  v25 = &unk_1E7F1CD28;
  v26 = v12;
  v27 = v4;
  v13 = v4;
  v14 = v12;
  objc_msgSend_enumerateObjectsUsingBlock_(a1, v15, &v22, v16);
  v20 = objc_msgSend_copy(v14, v17, v18, v19, v22, v23, v24, v25);

  return v20;
}

void sub_1BAF06520(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = (*(*(a1 + 40) + 16))();
  objc_msgSend_addObject_(v1, v2, v4, v3);
}

id sub_1BAF0657C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF70];
  v9 = objc_msgSend_count(a1, v6, v7, v8);
  v12 = objc_msgSend_arrayWithCapacity_(v5, v10, v9, v11);
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = sub_1BAF06670;
  v25 = &unk_1E7F1CD50;
  v26 = v12;
  v27 = v4;
  v13 = v12;
  v14 = v4;
  objc_msgSend_enumerateObjectsUsingBlock_(a1, v15, &v22, v16);
  v20 = objc_msgSend_copy(v13, v17, v18, v19, v22, v23, v24, v25);

  return v20;
}

uint64_t sub_1BAF06670(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  if (v2)
  {
    objc_msgSend_addObject_(*(a1 + 32), v2, v2, v3);
  }

  return MEMORY[0x1EEE66BB8]();
}

id sub_1BAF08890()
{
  if (qword_1EDBA4150 != -1)
  {
    sub_1BAF8DE40();
  }

  v1 = qword_1EDBA4158;

  return v1;
}

void sub_1BAF088D4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v15 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], a2, @"en_US_POSIX", a4);
  v6 = objc_msgSend_timeZoneWithAbbreviation_(MEMORY[0x1E695DFE8], v4, @"UTC", v5);
  v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v8 = qword_1EDBA4158;
  qword_1EDBA4158 = v7;

  objc_msgSend_setDateFormat_(qword_1EDBA4158, v9, @"yyyy-MM-dd'T'HH:mm':00Z'", v10);
  objc_msgSend_setLocale_(qword_1EDBA4158, v11, v15, v12);
  objc_msgSend_setTimeZone_(qword_1EDBA4158, v13, v6, v14);
}

id sub_1BAF09684(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  if (objc_msgSend__validatePayload_(*(a1 + 40), v3, v2, v4))
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1BAF0993C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v53 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, a3, a4);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v7 = a1;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v44, v52, 16);
  if (v9)
  {
    v13 = v9;
    v14 = *v45;
    v15 = 0x1E696A000uLL;
    *&v12 = 138478083;
    v42 = v12;
    v43 = v7;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v45 != v14)
        {
          objc_enumerationMutation(v7);
        }

        v17 = *(*(&v44 + 1) + 8 * i);
        v18 = objc_msgSend_objectForKey_(v7, v10, v17, v11, v42);
        v19 = *(v15 + 3480);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = objc_msgSend_stringValue(v17, v20, v21, v22);
LABEL_10:
          v24 = v23;
          goto LABEL_14;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = v17;
          goto LABEL_10;
        }

        v25 = APLogForCategory(0x1DuLL);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1BADC1000, v25, OS_LOG_TYPE_ERROR, "Warning: Unable to recognize the key", buf, 2u);
        }

        v24 = @"UNKNOWN_KEY";
LABEL_14:
        if (objc_opt_respondsToSelector())
        {
          v28 = objc_msgSend_jsonRepresentationWithOptions_(v18, v26, v4, v27);
          objc_msgSend_setObject_forKey_(v6, v29, v28, v24);
        }

        else
        {
          v28 = APLogForCategory(0x1DuLL);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v30 = objc_opt_class();
            NSStringFromClass(v30);
            v31 = v13;
            v32 = v15;
            v33 = v14;
            v34 = v4;
            v36 = v35 = v6;
            *buf = v42;
            v49 = v36;
            v50 = 2113;
            v51 = v18;
            _os_log_impl(&dword_1BADC1000, v28, OS_LOG_TYPE_ERROR, "ERROR: Unable to serialize the object into JSON. Please file a radar against PEP Advertising | 1.0.\n%{private}@ (%{private}@)", buf, 0x16u);

            v6 = v35;
            v4 = v34;
            v14 = v33;
            v15 = v32;
            v13 = v31;
            v7 = v43;
          }
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v44, v52, 16);
    }

    while (v13);
  }

  v39 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x1E695DF20], v37, v6, v38);

  v40 = *MEMORY[0x1E69E9840];

  return v39;
}

id sub_1BAF09C30(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  v8 = objc_msgSend_jsonRepresentationWithOptions_(a1, v6, a3, v7);
  v19 = 0;
  v10 = objc_msgSend_dataWithJSONObject_options_error_(MEMORY[0x1E696ACB0], v9, v8, a3 & 0xF, &v19);
  v11 = v19;
  if (v11)
  {
    v12 = APLogForCategory(0x1DuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_msgSend_localizedDescription(v11, v13, v14, v15);
      *buf = 138478083;
      v21 = v16;
      v22 = 2113;
      v23 = v8;
      _os_log_impl(&dword_1BADC1000, v12, OS_LOG_TYPE_ERROR, "Error serializing dictionary into JSON (%{private}@):\n%{private}@", buf, 0x16u);
    }

    v10 = 0;
  }

  objc_autoreleasePoolPop(v5);
  v17 = *MEMORY[0x1E69E9840];

  return v10;
}

__CFString *sub_1BAF09E94(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_jsonDataWithOptions_(a1, a2, a3, a4);
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = objc_msgSend_initWithData_encoding_(v5, v6, v4, 4);
  }

  else
  {
    v7 = @"{}";
  }

  return v7;
}

uint64_t sub_1BAF0A618(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend__JSONObjectWithObject_(*(a1 + 32), a2, a2, a4);
  if (v5)
  {
    objc_msgSend_addObject_(*(a1 + 40), v5, v5, v6);
  }

  return MEMORY[0x1EEE66BB8]();
}

void sub_1BAF0A67C(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v8 = objc_msgSend__JSONObjectWithObject_(*(a1 + 32), v5, a3, v6);
  if (v8)
  {
    objc_msgSend_setObject_forKey_(*(a1 + 40), v7, v8, v9);
  }
}

uint64_t sub_1BAF0A6F0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend__JSONObjectWithObject_(*(a1 + 32), a2, a2, a4);
  if (v5)
  {
    objc_msgSend_addObject_(*(a1 + 40), v5, v5, v6);
  }

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1BAF0A754(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend__JSONObjectWithObject_(*(a1 + 32), a2, a2, a4);
  if (v5)
  {
    objc_msgSend_addObject_(*(a1 + 40), v5, v5, v6);
  }

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1BAF0B220(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_lock(*(a1 + 32), a2, a3, a4);
  v8 = *(*(a1 + 48) + 8);
  if (*(v8 + 24))
  {
    v9 = *(a1 + 32);

    return objc_msgSend_unlock(v9, v5, v6, v7);
  }

  else
  {
    *(v8 + 24) = 1;
    objc_msgSend_unlock(*(a1 + 32), v5, v6, v7);
    v11 = *(*(a1 + 40) + 16);

    return v11();
  }
}

uint64_t sub_1BAF0B2AC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_lock(*(a1 + 32), a2, a3, a4);
  v8 = *(*(a1 + 56) + 8);
  if (*(v8 + 24))
  {
    v9 = *(a1 + 32);

    return objc_msgSend_unlock(v9, v5, v6, v7);
  }

  else
  {
    *(v8 + 24) = 1;
    objc_msgSend_unlock(*(a1 + 32), v5, v6, v7);
    objc_msgSend_setState_(*(a1 + 40), v11, 18006, v12);
    v13 = *(a1 + 48);
    v17 = objc_msgSend_state(*(a1 + 40), v14, v15, v16);
    v18 = *(v13 + 16);

    return v18(v13, v17);
  }
}

__CFString *sub_1BAF0B660(uint64_t a1)
{
  if ((a1 - 18001) > 5)
  {
    return @"setup started";
  }

  else
  {
    return off_1E7F1CF08[a1 - 18001];
  }
}

void sub_1BAF0BD70(int8x16_t *a1)
{
  v1 = a1[3].u8[0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1BAF0BE0C;
  v5[3] = &unk_1E7F1CE48;
  v4 = a1[2];
  v2 = v4.i64[0];
  v6 = vextq_s8(v4, v4, 8uLL);
  objc_msgSend_setupWithCompletion_completion_(v2, v3, v1, v5);
}

uint64_t sub_1BAF0BE0C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_retryLevel(*(a1 + 32), a2, a3, a4))
  {
    Current = CFAbsoluteTimeGetCurrent();
    objc_msgSend_retryStartTime(*(a1 + 32), v8, v9, v10);
    v12 = Current - v11;
    v13 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 32);
      *buf = 134218496;
      v29 = v17;
      v30 = 2048;
      v31 = objc_msgSend_retryLevel(v17, v14, v15, v16);
      v32 = 2048;
      v33 = v12;
      _os_log_impl(&dword_1BADC1000, v13, OS_LOG_TYPE_INFO, "Pool manager %p retry %ld took %.3f seconds", buf, 0x20u);
    }

    v21 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v18, v19, v20, v12, @"retryTimes");
    v27 = v21;
    v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v22, &v27, &v26, 1);
    AnalyticsSendEvent();
  }

  result = objc_msgSend__handleCompletedSigningAuthority_(*(a1 + 32), v5, *(a1 + 40), v6);
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BAF0C6D4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_setupCompletion(*(a1 + 32), a2, a3, a4);

  if (v5)
  {
    v13 = objc_msgSend_setupCompletion(*(a1 + 32), v6, v7, v8);
    v12 = objc_msgSend_state(*(a1 + 32), v9, v10, v11);
    v13[2](v13, v12);
  }
}

void sub_1BAF0D3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1BAF0D400(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BAF0D418(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = objc_msgSend_localizedDescription(v4, v6, v7, v8);
      v20 = 138543362;
      v21 = v9;
      _os_log_impl(&dword_1BADC1000, v5, OS_LOG_TYPE_INFO, "Encountered error when attempting to perform XPC rotation to promotedcontentd %{public}@", &v20, 0xCu);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  v10 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = CFAbsoluteTimeGetCurrent() - *(a1 + 64);
    Current = CFAbsoluteTimeGetCurrent();
    objc_msgSend_refillStartTime(*(a1 + 32), v15, v16, v17);
    v20 = 134218752;
    v21 = v11;
    v22 = 2048;
    v23 = v12;
    v24 = 2048;
    v25 = v13;
    v26 = 2048;
    v27 = Current - v18;
    _os_log_impl(&dword_1BADC1000, v10, OS_LOG_TYPE_INFO, "Pool manager %p finished rotating after calling daemon %p (%.6f) (%.6f)", &v20, 0x2Au);
  }

  v19 = *MEMORY[0x1E69E9840];
}

id sub_1BAF0E1EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v33[4] = *MEMORY[0x1E69E9840];
  v32[0] = @"correlation_uuid";
  v8 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, *(a1 + 48), a4);
  v33[0] = v8;
  v32[1] = @"authorityState";
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = MEMORY[0x1E696AD98];
    v11 = objc_msgSend_finalState(v9, v5, v6, v7);
    objc_msgSend_numberWithUnsignedInteger_(v10, v12, v11, v13);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x1E695DFB0], v5, v6, v7);
  }
  v17 = ;
  v33[1] = v17;
  v32[2] = @"duration";
  v18 = *(a1 + 32);
  if (v18)
  {
    objc_msgSend_stageDurationIntervals(v18, v14, v15, v16);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x1E695DFB0], v14, v15, v16);
  }
  v19 = ;
  v33[2] = v19;
  v32[3] = @"poolState";
  v20 = MEMORY[0x1E696AD98];
  v24 = objc_msgSend_state(*(a1 + 40), v21, v22, v23);
  v27 = objc_msgSend_numberWithInteger_(v20, v25, v24, v26);
  v33[3] = v27;
  v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v28, v33, v32, 4);

  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

void sub_1BAF0EC84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_setTimerSet_(WeakRetained, v3, 0, v4);

  v15 = objc_loadWeakRetained((a1 + 32));
  v8 = objc_msgSend_now(MEMORY[0x1E695DF00], v5, v6, v7);
  objc_msgSend_timeIntervalSince1970(v8, v9, v10, v11);
  objc_msgSend__onTimer_(v15, v12, v13, v14);
}

void sub_1BAF0EF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1BAF0EF6C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BAF0F080(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_msgSend_invalidateSessionAndCancelTasks_(v4, v5, *(a1 + 32), v6);
  v7 = APLogForCategory(0x22uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = objc_msgSend_name(v4, v8, v9, v10);
    v12 = v11;
    v13 = ".";
    if (*(a1 + 32))
    {
      v13 = " and all pending tasks are canceled.";
    }

    v15 = 138543618;
    v16 = v11;
    v17 = 2082;
    v18 = v13;
    _os_log_impl(&dword_1BADC1000, v7, OS_LOG_TYPE_INFO, "Service %{public}@ is invalidated%{public}s", &v15, 0x16u);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1BAF0FED8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__timerFired(WeakRetained, v1, v2, v3);
}

uint64_t CreateDiagnosticReport(void *a1, void *a2, void *a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (objc_msgSend_isAppleInternalInstall(APSystemInternal, v8, v9, v10))
  {
    v11 = objc_alloc(MEMORY[0x1E695E000]);
    v14 = objc_msgSend_initWithSuiteName_(v11, v12, @"com.apple.AdPlatforms", v13);
    v17 = objc_msgSend_objectForKey_(v14, v15, @"APDiagnosticSettings.enableDiagnosticReporting", v16);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v17;
      v25 = objc_msgSend_BOOLValue(v21, v22, v23, v24);
    }

    else
    {
      v21 = MEMORY[0x1E695E118];
      v25 = objc_msgSend_BOOLValue(MEMORY[0x1E695E118], v18, v19, v20);
    }

    if (v25)
    {
      v27 = objc_alloc_init(APDiagnosticReporter);
      v31 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v28, v29, v30);
      v35 = objc_msgSend_processName(v31, v32, v33, v34);

      v36 = APLogForCategory(0x12uLL);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        *buf = 138478595;
        v54 = v38;
        v55 = 2114;
        v56 = v5;
        v57 = 2114;
        v58 = v6;
        v59 = 2112;
        v60 = v35;
        _os_log_impl(&dword_1BADC1000, v36, OS_LOG_TYPE_DEFAULT, "Diagnostic Reporter Taking an %{private}@ snapshot, description:%{public}@, payload:%{public}@, process:%@", buf, 0x2Au);
      }

      v50 = v35;
      v40 = objc_msgSend_signatureWithDomain_type_subType_detectedProcess_triggerThresholdValues_(v27, v39, @"PromotedContent", *MEMORY[0x1E69D50F0], v7, v35, 0);
      v42 = v40;
      if (v5)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v40, v41, v5, *MEMORY[0x1E69D50E8]);
      }

      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = sub_1BAF10D64;
      v51[3] = &unk_1E7F1D000;
      v43 = v27;
      v52 = v43;
      v26 = objc_msgSend_snapshotWithSignature_duration_event_payload_reply_(v43, v44, v42, 0, v6, v51, 0.0);
      if ((v26 & 1) == 0)
      {
        v45 = APLogForCategory(0x12uLL);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = objc_opt_class();
          v49 = NSStringFromClass(v46);
          *buf = 138478083;
          v54 = v49;
          v55 = 2114;
          v56 = v5;
          _os_log_impl(&dword_1BADC1000, v45, OS_LOG_TYPE_ERROR, "Diagnostic Reporter Failed to send a %{private}@ snapshot,description:%{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  v47 = *MEMORY[0x1E69E9840];
  return v26;
}

void sub_1BAF10D64(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = APLogForCategory(0x12uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138478083;
    v10 = v7;
    v11 = 2114;
    v12 = v3;
    _os_log_impl(&dword_1BADC1000, v4, OS_LOG_TYPE_INFO, "Diagnostic Reporter Received a response from %{private}@: %{public}@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void APDatabaseError(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v73 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = APLogForCategory(0xCuLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138413314;
    v64 = v11;
    v65 = 2048;
    v66 = a3;
    v67 = 1024;
    v68 = a1;
    v69 = 1024;
    v70 = a2;
    v71 = 2112;
    v72 = v12;
    _os_log_impl(&dword_1BADC1000, v14, OS_LOG_TYPE_ERROR, "Error, Database:%@, Version:%ld, Type:%d, Error code: %d, Description: %@", buf, 0x2Cu);
  }

  v18 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v15, v16, v17);
  isRunningTests = objc_msgSend_isRunningTests(v18, v19, v20, v21);

  if ((isRunningTests & 1) == 0)
  {
    v25 = MEMORY[0x1E695DF90];
    v61[0] = @"ErrorType";
    v26 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v23, a1, v24);
    v62[0] = v26;
    v61[1] = @"ErrorCode";
    objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v27, a2, v28);
    v29 = v12;
    v31 = v30 = v13;
    v62[1] = v31;
    v61[2] = @"Version";
    v34 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v32, a3, v33);
    v62[2] = v34;
    v62[3] = v11;
    v61[3] = @"Name";
    v61[4] = @"Description";
    v58 = v29;
    v62[4] = v29;
    v36 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v35, v62, v61, 5);
    v39 = objc_msgSend_dictionaryWithDictionary_(v25, v37, v36, v38);

    v13 = v30;
    if (v30)
    {
      objc_msgSend_addEntriesFromDictionary_(v39, v40, v30, v41);
    }

    v42 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v40, @"Error, Database:%@, Version:%ld, Type:%d, Error code: %d", v41, v11, a3, a1, a2);
    CreateDiagnosticReport(v42, v39, @"Database");

    v12 = v58;
    if (objc_msgSend_isEqualToString_(v11, v43, @"APDatabase", v44))
    {
      v47 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v45, 0, v46);
      v59[0] = @"ErrorType";
      v50 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v48, a1, v49);
      v60[0] = v50;
      v59[1] = @"Version";
      v53 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v51, a3, v52);
      v59[2] = @"Name";
      v60[1] = v53;
      v60[2] = v47;
      v55 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v54, v60, v59, 3);

      objc_msgSend_sendEvent_customPayload_(APAnalytics, v56, @"Database", v55);
    }

    else
    {
      v47 = APLogForCategory(0xCuLL);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v64 = v11;
        _os_log_impl(&dword_1BADC1000, v47, OS_LOG_TYPE_ERROR, "Error, Unkown database Name: %@", buf, 0xCu);
      }
    }
  }

  v57 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1BAF111E8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, a3, a4);
  v8 = objc_msgSend_bundleIdentifier(v4, v5, v6, v7);

  if (objc_msgSend_isEqualToString_(v8, v9, @"com.apple.AppStore", v10) & 1) != 0 || (objc_msgSend_isEqualToString_(v8, v11, @"com.apple.AppStore.ProductPageExtension", v12))
  {
    v15 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v8, v13, @"com.apple.news", v14))
  {
    v15 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v8, v17, @"com.apple.stocks", v18))
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t sub_1BAF11298(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, a3, a4);
  v8 = objc_msgSend_bundleIdentifier(v4, v5, v6, v7);

  isEqualToString = objc_msgSend_isEqualToString_(v8, v9, @"com.apple.ap.promotedcontentd", v10);
  return isEqualToString;
}

uint64_t sub_1BAF112F4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"com.apple.AppStore.ProductPageExtension", v5))
  {
    v8 = 979;
  }

  else if (objc_msgSend_isEqualToString_(v3, v6, @"com.apple.AppStore", v7))
  {
    v8 = 978;
  }

  else if (objc_msgSend_isEqualToString_(v3, v9, @"com.apple.news", v10))
  {
    v8 = 976;
  }

  else if (objc_msgSend_isEqualToString_(v3, v11, @"com.apple.stocks", v12))
  {
    v8 = 977;
  }

  else
  {
    v8 = 975;
  }

  return v8;
}

id sub_1BAF11390(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0x400000) != 0)
  {
    objc_msgSend_apUTCSharedFormatter(MEMORY[0x1E696AC80], a2, a3, a4);
  }

  else
  {
    objc_msgSend_apLocalSharedFormatter(MEMORY[0x1E696AC80], a2, a3, a4);
  }
  v5 = ;
  v8 = objc_msgSend_stringFromDate_(v5, v6, a1, v7);

  return v8;
}

__CFString *sub_1BAF113FC(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  objc_msgSend_doubleValue(a1, a2, a3, a4);
  if (fabs(v5) == INFINITY)
  {
    v7 = APLogForCategory(0x1DuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543619;
      v12 = a1;
      v13 = 2113;
      v14 = objc_opt_class();
      v8 = v14;
      _os_log_impl(&dword_1BADC1000, v7, OS_LOG_TYPE_ERROR, "Unable to serialize the following number into JSON. Please file a radar against PEP Advertising | 1.0: %{public}@ (%{private}@).", &v11, 0x16u);
    }

    v6 = @"∞";
  }

  else
  {
    v6 = a1;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

id sub_1BAF11590(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_alloc(MEMORY[0x1E695DF90]);
  v8 = objc_msgSend_initWithCapacity_(v5, v6, 4, v7);
  v12 = objc_msgSend_domain(a1, v9, v10, v11);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v13, v12, @"domain");

  v14 = MEMORY[0x1E696AD98];
  v18 = objc_msgSend_code(a1, v15, v16, v17);
  v21 = objc_msgSend_numberWithInteger_(v14, v19, v18, v20);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v22, v21, @"code");

  v26 = objc_msgSend_localizedDescription(a1, v23, v24, v25);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v27, v26, @"localizedDescription");

  v31 = objc_msgSend_userInfo(a1, v28, v29, v30);

  if (v31)
  {
    v35 = objc_msgSend_userInfo(a1, v32, v33, v34);
    v38 = objc_msgSend_jsonRepresentationWithOptions_(v35, v36, a3, v37);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v39, v38, @"userInfo");
  }

  return v8;
}

id sub_1BAF129CC(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3, a4);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = a1;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v27, v35, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v16 = objc_msgSend_jsonRepresentationWithOptions_(v13, v14, a3, v15);
          objc_msgSend_addObject_(v6, v17, v16, v18);
        }

        else
        {
          v16 = APLogForCategory(0x1DuLL);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v19 = objc_opt_class();
            v20 = NSStringFromClass(v19);
            *buf = 138478083;
            v32 = v20;
            v33 = 2113;
            v34 = v13;
            _os_log_impl(&dword_1BADC1000, v16, OS_LOG_TYPE_ERROR, "ERROR: Unable to serialize the object into JSON. Please file a radar against PEP Advertising | 1.0.\n%{private}@ (%{private}@)", buf, 0x16u);
          }
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v21, &v27, v35, 16);
    }

    while (v10);
  }

  v24 = objc_msgSend_arrayWithArray_(MEMORY[0x1E695DEC8], v22, v6, v23);

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

id sub_1BAF12BC8(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  v8 = objc_msgSend_jsonRepresentationWithOptions_(a1, v6, a3, v7);
  v19 = 0;
  v10 = objc_msgSend_dataWithJSONObject_options_error_(MEMORY[0x1E696ACB0], v9, v8, a3 & 0xF, &v19);
  v11 = v19;
  if (v11)
  {
    v12 = APLogForCategory(0x1DuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_msgSend_localizedDescription(v11, v13, v14, v15);
      *buf = 138478083;
      v21 = v16;
      v22 = 2113;
      v23 = v8;
      _os_log_impl(&dword_1BADC1000, v12, OS_LOG_TYPE_ERROR, "Error serializing array into JSON (%{private}@):\n%{private}@", buf, 0x16u);
    }

    v10 = 0;
  }

  objc_autoreleasePoolPop(v5);
  v17 = *MEMORY[0x1E69E9840];

  return v10;
}

__CFString *sub_1BAF12E2C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_jsonDataWithOptions_(a1, a2, a3, a4);
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = objc_msgSend_initWithData_encoding_(v5, v6, v4, 4);
  }

  else
  {
    v7 = @"[]";
  }

  return v7;
}

uint64_t sub_1BAF15A70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BAF15B10(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v59 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_locationEnabled(*(a1 + 32), a2, a3, a4))
  {
    v8 = APLogForCategory(0x1CuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 32);
      v53 = 138477827;
      v54 = objc_opt_class();
      v10 = v54;
      _os_log_impl(&dword_1BADC1000, v8, OS_LOG_TYPE_DEBUG, "[%{private}@] Location services is currently enabled, not stopping location updates.", &v53, 0xCu);
    }

LABEL_17:

    goto LABEL_18;
  }

  if (!objc_msgSend_isLocationInitialized(*(a1 + 32), v5, v6, v7) || !objc_msgSend_isLocationUpdating(*(a1 + 32), v11, v12, v13))
  {
    v8 = APLogForCategory(0x1CuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v39 = *(a1 + 32);
      v40 = objc_opt_class();
      v41 = *(a1 + 32);
      v42 = v40;
      if (objc_msgSend_isLocationInitialized(v41, v43, v44, v45))
      {
        v49 = @"NO";
      }

      else
      {
        v49 = @"YES";
      }

      isLocationUpdating = objc_msgSend_isLocationUpdating(*(a1 + 32), v46, v47, v48);
      v53 = 138478339;
      if (isLocationUpdating)
      {
        v51 = @"NO";
      }

      else
      {
        v51 = @"YES";
      }

      v54 = v40;
      v55 = 2114;
      v56 = v49;
      v57 = 2112;
      v58 = v51;
      _os_log_impl(&dword_1BADC1000, v8, OS_LOG_TYPE_INFO, "[%{private}@] LocationManager has not yet initialized (%{public}@) or location is already stopped (%@{public}).", &v53, 0x20u);
    }

    goto LABEL_17;
  }

  v14 = APLogForCategory(0x1CuLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = *(a1 + 32);
    v53 = 138477827;
    v54 = objc_opt_class();
    v16 = v54;
    _os_log_impl(&dword_1BADC1000, v14, OS_LOG_TYPE_INFO, "[%{private}@] Stopping location updates.", &v53, 0xCu);
  }

  objc_msgSend_setIsLocationUpdating_(*(a1 + 32), v17, 0, v18);
  v22 = objc_msgSend_clLocationManager(*(a1 + 32), v19, v20, v21);
  objc_msgSend_stopMonitoringSignificantLocationChanges(v22, v23, v24, v25);

  v29 = objc_msgSend_clLocationManager(*(a1 + 32), v26, v27, v28);
  objc_msgSend_stopUpdatingLocation(v29, v30, v31, v32);

  objc_msgSend_setLastPlacemarkLocation_(*(a1 + 32), v33, 0, v34);
  objc_msgSend_setCurrentPlacemark_(*(a1 + 32), v35, 0, v36);
  objc_msgSend_setLocation_(*(a1 + 32), v37, 0, v38);
LABEL_18:
  v52 = *MEMORY[0x1E69E9840];
}

void sub_1BAF15D8C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1BAF15E58;
  block[3] = &unk_1E7F1CCE8;
  block[4] = v7;
  v12 = v6;
  v13 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void sub_1BAF15E58(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  objc_msgSend_setUpdatingPlacemark_(*(a1 + 32), a2, 0, a4);
  if (*(a1 + 40))
  {
    v8 = APLogForCategory(0x1CuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = objc_opt_class();
      v11 = *(a1 + 40);
      v32 = 138478083;
      v33 = v10;
      v34 = 2114;
      v35 = v11;
      v12 = v10;
      v13 = "[%{private}@] Error updating placemark %{public}@";
      v14 = v8;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 22;
LABEL_6:
      _os_log_impl(&dword_1BADC1000, v14, v15, v13, &v32, v16);
    }
  }

  else
  {
    v17 = objc_msgSend_firstObject(*(a1 + 48), v5, v6, v7);
    objc_msgSend_setCurrentPlacemark_(*(a1 + 32), v18, v17, v19);

    v23 = objc_msgSend_currentPlacemark(*(a1 + 32), v20, v21, v22);
    v27 = objc_msgSend_location(v23, v24, v25, v26);
    objc_msgSend_setLastPlacemarkLocation_(*(a1 + 32), v28, v27, v29);

    v8 = APLogForCategory(0x1CuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v30 = *(a1 + 32);
      v32 = 138477827;
      v33 = objc_opt_class();
      v12 = v33;
      v13 = "[%{private}@] Updated placemark";
      v14 = v8;
      v15 = OS_LOG_TYPE_INFO;
      v16 = 12;
      goto LABEL_6;
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1BAF160BC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_authorizationStatus(*(a1 + 32), a2, a3, a4);
  v6 = APLogForCategory(0x1CuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = objc_opt_class();
    v9 = MEMORY[0x1E696AD98];
    v10 = v8;
    v13 = objc_msgSend_numberWithInt_(v9, v11, v5, v12);
    *buf = 138478083;
    v45 = v8;
    v46 = 2114;
    v47 = v13;
    _os_log_impl(&dword_1BADC1000, v6, OS_LOG_TYPE_DEBUG, "[%{private}@] Core Location AuthorizationStatus: %{public}@", buf, 0x16u);
  }

  v17 = objc_msgSend_callerStatus(*(a1 + 40), v14, v15, v16);
  v20 = objc_msgSend_locationEnabledFor_(APLocationManager, v18, v17, v19);
  v26 = objc_msgSend_locationEnabledFor_(APLocationManager, v21, v5, v22);
  if (v20 != v26)
  {
    v27 = objc_msgSend__authorizationChangedBlocks(APLocationManager, v23, v24, v25);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = sub_1BAF162EC;
    v42[3] = &unk_1E7F1D070;
    v43 = v26;
    objc_msgSend_enumerateObjectsUsingBlock_(v27, v28, v42, v29);
  }

  objc_msgSend_setCallerStatus_(*(a1 + 40), v23, v5, v25);
  if (v26)
  {
    result = objc_msgSend_start(*(a1 + 40), v30, v31, v32);
  }

  else
  {
    v34 = APLogForCategory(0x1CuLL);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v35 = *(a1 + 40);
      v36 = objc_opt_class();
      *buf = 138477827;
      v45 = v36;
      v37 = v36;
      _os_log_impl(&dword_1BADC1000, v34, OS_LOG_TYPE_DEBUG, "[%{private}@] Location is disabled for the app importing PromotedContent Framework.", buf, 0xCu);
    }

    result = objc_msgSend_stop(*(a1 + 40), v38, v39, v40);
  }

  v41 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BAF1639C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_location(*(a1 + 32), a2, a3, a4);

  if (!v5)
  {
    v9 = APLogForCategory(0x1CuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 32);
      *v25 = 138477827;
      *&v25[4] = objc_opt_class();
      v11 = *&v25[4];
      _os_log_impl(&dword_1BADC1000, v9, OS_LOG_TYPE_DEBUG, "[%{private}@] Current Location has been updated for the first time.", v25, 0xCu);
    }
  }

  v12 = objc_msgSend_lastObject(*(a1 + 40), v6, v7, v8, *v25);
  objc_msgSend_setLocation_(*(a1 + 32), v13, v12, v14);

  v15 = APLogForCategory(0x1CuLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 32);
    v17 = objc_opt_class();
    v18 = *(a1 + 40);
    *v25 = 138478083;
    *&v25[4] = v17;
    *&v25[12] = 2113;
    *&v25[14] = v18;
    v19 = v17;
    _os_log_impl(&dword_1BADC1000, v15, OS_LOG_TYPE_DEBUG, "[%{private}@ didUpdateLocations]: locations = %{private}@", v25, 0x16u);
  }

  result = objc_msgSend_updatePlacemark(*(a1 + 32), v20, v21, v22);
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BAF17ABC(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = APLogForCategory(0x26uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_1BADC1000, v4, OS_LOG_TYPE_ERROR, "File enumeration error. %{public}@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
  return 1;
}

id sub_1BAF17B70(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = *MEMORY[0x1E695DB78];
  while (1)
  {
    v7 = v5;
    v5 = objc_msgSend_nextObject(*(a1 + 32), a2, a3, a4);

    if (!v5)
    {
      break;
    }

    if ((*(a1 + 40) & 1) == 0)
    {
      v13 = 0;
      objc_msgSend_getResourceValue_forKey_error_(v5, a2, &v13, v6, 0);
      if (objc_msgSend_BOOLValue(v13, v8, v9, v10))
      {
        continue;
      }
    }

    v11 = objc_msgSend_relativePath(v5, a2, a3, a4);
    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

uint64_t sub_1BAF17F64(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = APLogForCategory(0x26uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_1BADC1000, v4, OS_LOG_TYPE_ERROR, "File enumeration error. %{public}@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
  return 1;
}

void sub_1BAF191B0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, a3, a4);
  v6 = *(a1 + 32);
  v14 = 0;
  v8 = objc_msgSend_removeItemAtPath_error_(v5, v7, v6, &v14);
  v9 = v14;

  v10 = APLogForCategory(0x33uLL);
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1BADC1000, v11, OS_LOG_TYPE_DEBUG, "Successfully removed SFS folder.", buf, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = v9;
      _os_log_impl(&dword_1BADC1000, v11, OS_LOG_TYPE_ERROR, "Failed to remove SFS folder: %{public}@", buf, 0xCu);
    }

    objc_msgSend_sendAnalyticError_domain_code_(APStorageManager, v12, @"Failed", @"SFS", 16102);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1BAF19724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BAF19758(uint64_t a1, int a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = APLogForCategory(0x12uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138477827;
    v20 = objc_opt_class();
    v6 = v20;
    _os_log_impl(&dword_1BADC1000, v4, OS_LOG_TYPE_DEFAULT, "[%{private}@]: Springboard unlock notification received.", buf, 0xCu);
  }

  state64 = 0;
  state = notify_get_state(a2, &state64);
  if (state)
  {
    v8 = state;
    v9 = APLogForCategory(0x12uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = objc_opt_class();
      *buf = 138478083;
      v20 = v11;
      v21 = 1026;
      v22 = v8;
      v12 = v11;
      _os_log_impl(&dword_1BADC1000, v9, OS_LOG_TYPE_ERROR, "[%{private}@]: Unable to get state for _screenLockNotifyToken. Error code %{public}d", buf, 0x12u);
LABEL_9:

      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (!state64)
  {
    notify_cancel(dword_1EDBA1F18);
    dword_1EDBA1F18 = -1;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = WeakRetained;
    if (WeakRetained)
    {
      v12 = objc_msgSend_taskHandler(WeakRetained, v14, v15, v16);
      v12[2]();
      goto LABEL_9;
    }

LABEL_10:
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t APDiagnosticsSubmissionAllowed(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_sharedConnection(MEMORY[0x1E69ADFB8], a2, a3, a4);
  isDiagnosticSubmissionAllowed = objc_msgSend_isDiagnosticSubmissionAllowed(v4, v5, v6, v7);

  return isDiagnosticSubmissionAllowed;
}

void APSimulateCrashNoKillProcess(const char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = MEMORY[0x1E696AEC0];
  v11 = a2;
  v12 = [v10 alloc];
  v14 = objc_msgSend_initWithFormat_arguments_(v12, v13, v11, &a9);

  APSimulateCrash(a1, v14, 0);
}

void APSimulateCrash(const char *a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = APLogForCategory(0x11uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v30 = v5;
    _os_log_impl(&dword_1BADC1000, v6, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v7, v8, v9);
  isRunningTests = objc_msgSend_isRunningTests(v10, v11, v12, v13);

  if (isRunningTests)
  {
    v17 = APLogForCategory(0x11uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1BADC1000, v17, OS_LOG_TYPE_ERROR, "We should exit at this point. If you see this log outside of the Unit Tests, Please file a radar...", buf, 2u);
    }
  }

  else
  {
    v27[0] = @"ExceptionCode";
    v18 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v15, @"%lld", v16, a1);
    v27[1] = @"KillProcess";
    v28[0] = v18;
    v21 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v19, @"%d", v20, a3);
    v28[1] = v21;
    v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v22, v28, v27, 2);
    CreateDiagnosticReportSubtypeCrash(v5, v23);

    if (a3)
    {
      sub_1BAF8E214(v5, a1, v24, v25);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      sub_1BAF8E188(v5, a1);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

void sub_1BAF1A718(uint64_t *a1, void *a2, void *a3, void *a4)
{
  v77[3] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v69 = 0;
  v68 = 0;
  v9 = a4;
  v10 = v8;
  v14 = objc_msgSend_date(MEMORY[0x1E695DF00], v11, v12, v13);
  objc_msgSend_timeIntervalSinceDate_(v14, v15, a1[4], v16);
  v18 = llround(v17 * 1000.0);
  v76[0] = @"statusCode";
  v19 = MEMORY[0x1E696AD98];
  v23 = objc_msgSend_statusCode(v10, v20, v21, v22);
  v26 = objc_msgSend_numberWithInteger_(v19, v24, v23, v25);
  v77[0] = v26;
  v76[1] = @"requestTime";
  v29 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v27, v18, v28);
  v77[1] = v29;
  v76[2] = @"requestType";
  v32 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v30, a1[7], v31);
  v77[2] = v32;
  v34 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v33, v77, v76, 3);

  v35 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    v36 = a1[7];
    *buf = 134218240;
    v71 = v36;
    v72 = 2048;
    v73 = v18 / 1000.0;
    _os_log_impl(&dword_1BADC1000, v35, OS_LOG_TYPE_INFO, "FPDI server request type %ld: %.3f", buf, 0x16u);
  }

  objc_msgSend_sendEvent_customPayload_(APAnalytics, v37, @"signingAuthoritySetupRequest", v34);
  v41 = objc_msgSend_statusCode(v10, v38, v39, v40);
  if (!v9 && v7 && v41 == 200)
  {
    v45 = a1[5];
    v67 = 0;
    v46 = objc_msgSend__retrieveResponse_andLength_fromData_error_(v45, v42, &v69, &v68, v7, &v67);
    v47 = v67;
    if ((v46 & 1) == 0)
    {
      v48 = APLogForCategory(0x30uLL);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1BADC1000, v48, OS_LOG_TYPE_ERROR, "Signing response translation encountered a failure.", buf, 2u);
      }

      v69 = 0;
      v68 = 0;
    }
  }

  else
  {
    if (v9)
    {
      v49 = APLogForCategory(0x30uLL);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v53 = a1[7];
        v54 = objc_msgSend_code(v9, v50, v51, v52);
        v58 = objc_msgSend_localizedDescription(v9, v55, v56, v57);
        *buf = 134218498;
        v71 = v53;
        v72 = 2048;
        v73 = *&v54;
        v74 = 2112;
        v75 = v58;
        _os_log_impl(&dword_1BADC1000, v49, OS_LOG_TYPE_ERROR, "Response error %ld for request type %ld: %@", buf, 0x20u);
      }
    }

    v47 = v9;
    if (objc_msgSend_statusCode(v10, v42, v43, v44) != 200)
    {
      v59 = APLogForCategory(0x30uLL);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        v63 = a1[7];
        v64 = objc_msgSend_statusCode(v10, v60, v61, v62);
        *buf = 134218240;
        v71 = v63;
        v72 = 2048;
        v73 = *&v64;
        _os_log_impl(&dword_1BADC1000, v59, OS_LOG_TYPE_ERROR, "FPDI server request type %ld received %ld response code.", buf, 0x16u);
      }

      v47 = v9;
    }
  }

  v65 = a1[6];
  if (v65)
  {
    (*(v65 + 16))(v65, v69, v68, v47);
  }

  v66 = *MEMORY[0x1E69E9840];
}

void sub_1BAF1C000()
{
  v2 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_UTILITY, 0);
  v0 = dispatch_queue_create("com.apple.ap.promotedcontentd.xpc-activity", v2);
  v1 = qword_1EDBA41A0;
  qword_1EDBA41A0 = v0;
}

void sub_1BAF1C5D0(uint64_t a1, void *a2)
{
  v85 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_msgSend_setActivity_(*(a1 + 32), v4, v3, v5);
  v9 = objc_msgSend_activity(*(a1 + 32), v6, v7, v8);
  state = xpc_activity_get_state(v9);

  v11 = APLogForCategory(0x39uLL);
  v12 = v11;
  if (state != 2)
  {
    if (state)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v57 = *(a1 + 32);
        v58 = objc_opt_class();
        v59 = *(a1 + 32);
        v60 = v58;
        v64 = objc_msgSend_taskID(v59, v61, v62, v63);
        *buf = 138478339;
        v80 = v58;
        v81 = 2114;
        v82 = v64;
        v83 = 2048;
        v84 = state;
        _os_log_impl(&dword_1BADC1000, v12, OS_LOG_TYPE_ERROR, "[%{private}@]: Unexpected XPC_ACTIVITY_STATE for activity %{public}@ - %ld", buf, 0x20u);
      }

      goto LABEL_23;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = objc_opt_class();
      v15 = *(a1 + 32);
      v16 = v14;
      v20 = objc_msgSend_taskID(v15, v17, v18, v19);
      v21 = *(a1 + 40);
      *buf = 138412802;
      v80 = v14;
      v81 = 2114;
      v82 = v20;
      v83 = 2114;
      v84 = v21;
      _os_log_impl(&dword_1BADC1000, v12, OS_LOG_TYPE_DEFAULT, "[%@]: launchd checking in with activity %{public}@ and criteria %{public}@", buf, 0x20u);
    }

    v12 = xpc_activity_copy_criteria(v3);
    v25 = objc_msgSend_delegate(*(a1 + 32), v22, v23, v24);
    v26 = objc_opt_respondsToSelector();

    if (v26)
    {
      v30 = objc_msgSend_delegate(*(a1 + 32), v27, v28, v29);
      v33 = objc_msgSend_checkinWithCriteria_(v30, v31, v12, v32);

      if (v33)
      {
        xpc_activity_set_criteria(v3, v33);
        v34 = APLogForCategory(0x39uLL);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v80 = v33;
          _os_log_impl(&dword_1BADC1000, v34, OS_LOG_TYPE_INFO, "Setting the criteria to: %{public}@", buf, 0xCu);
        }

LABEL_21:
      }
    }

    else
    {
      if (v12)
      {
LABEL_23:

        goto LABEL_24;
      }

      v65 = objc_msgSend_delegate(*(a1 + 32), v27, v28, v29);
      v33 = objc_msgSend_criteria(v65, v66, v67, v68);

      if (v33)
      {
        v34 = objc_msgSend__translateCriteria_(APXPCActivity, v69, v33, v70);
        xpc_activity_set_criteria(v3, v34);
        v71 = APLogForCategory(0x39uLL);
        if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v80 = v34;
          _os_log_impl(&dword_1BADC1000, v71, OS_LOG_TYPE_INFO, "Setting the criteria to: %{public}@", buf, 0xCu);
        }

        goto LABEL_21;
      }
    }

    goto LABEL_23;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v35 = *(a1 + 32);
    v36 = objc_opt_class();
    v37 = *(a1 + 32);
    v38 = v36;
    v42 = objc_msgSend_taskID(v37, v39, v40, v41);
    *buf = 138478339;
    v80 = v36;
    v81 = 2114;
    v82 = v42;
    v83 = 2048;
    v84 = 2;
    _os_log_impl(&dword_1BADC1000, v12, OS_LOG_TYPE_DEFAULT, "[%{private}@]: Request to run activity %{public}@ (state: %ld)", buf, 0x20u);
  }

  v46 = objc_msgSend_delegate(*(a1 + 32), v43, v44, v45);
  v49 = objc_msgSend_runActivity_(v46, v47, *(a1 + 32), v48);

  v53 = *(a1 + 32);
  if (v49)
  {
    if (objc_msgSend__continueActivity(v53, v50, v51, v52))
    {
      objc_msgSend__startDeferralCheck(*(a1 + 32), v54, v55, v56);
    }

    else
    {
      v73 = MEMORY[0x1E696AEC0];
      v74 = objc_msgSend_taskID(*(a1 + 32), v54, v55, v56);
      v77 = objc_msgSend_stringWithFormat_(v73, v75, @"Request to continue execution of activity %@ failed. Please file a radar.", v76, v74);

      v78 = APLogForCategory(0x39uLL);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v80 = v77;
        _os_log_impl(&dword_1BADC1000, v78, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    objc_msgSend_finished(v53, v50, v51, v52);
  }

LABEL_24:

  v72 = *MEMORY[0x1E69E9840];
}

void sub_1BAF1D24C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v37 = *MEMORY[0x1E69E9840];
  shouldDefer = objc_msgSend_shouldDefer(*(a1 + 32), a2, a3, a4);
  v9 = *(a1 + 32);
  if (shouldDefer)
  {
    objc_msgSend__endDeferralCheck(v9, v5, v6, v7);
    v13 = objc_msgSend_delegate(*(a1 + 32), v10, v11, v12);
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      objc_initWeak(location, *(a1 + 32));
      v18 = objc_msgSend_delegate(*(a1 + 32), v15, v16, v17);
      v19 = *(a1 + 32);
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = sub_1BAF1D47C;
      v32[3] = &unk_1E7F1D1F0;
      objc_copyWeak(&v33, location);
      objc_msgSend_deferActivity_completionHandler_(v18, v20, v19, v32);

      objc_destroyWeak(&v33);
      objc_destroyWeak(location);
    }

    else
    {
      v22 = APLogForCategory(0x39uLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 32);
        v24 = objc_opt_class();
        v25 = *(a1 + 32);
        v26 = v24;
        v30 = objc_msgSend_taskID(v25, v27, v28, v29);
        *location = 138478083;
        *&location[4] = v24;
        v35 = 2114;
        v36 = v30;
        _os_log_impl(&dword_1BADC1000, v22, OS_LOG_TYPE_ERROR, "[%{private}@]: Activity %{public}@ was asked to defer but does not support deferral.", location, 0x16u);
      }
    }

    v31 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v21 = *MEMORY[0x1E69E9840];

    MEMORY[0x1EEE66B58](v9, sel__backgroundDeferralCheck, v6, v7);
  }
}

void sub_1BAF1D450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BAF1D47C(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    objc_msgSend_deferActivity(WeakRetained, v3, v4, v5);
    v6 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v7 = APLogForCategory(0x39uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_loadWeakRetained((a1 + 32));
      v9 = objc_opt_class();
      v10 = v9;
      v11 = objc_loadWeakRetained((a1 + 32));
      v15 = objc_msgSend_taskID(v11, v12, v13, v14);
      *buf = 138478083;
      v19 = v9;
      v20 = 2114;
      v21 = v15;
      _os_log_impl(&dword_1BADC1000, v7, OS_LOG_TYPE_ERROR, "[%{private}@]: Activity %{public}@ failed to defer.", buf, 0x16u);
    }

    v16 = *MEMORY[0x1E69E9840];
  }
}

id sub_1BAF1D74C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v8[1] = 0;
  objc_msgSend_getUUIDBytes_(a1, a2, v8, a4);
  v5 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v4, v8, 16);
  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id sub_1BAF1D7C8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_alloc(MEMORY[0x1E695DF88]);
  v9 = objc_msgSend_data(a1, v6, v7, v8);
  v12 = objc_msgSend_initWithData_(v5, v10, v9, v11);

  v13 = objc_alloc(MEMORY[0x1E695DEF0]);
  v16 = objc_msgSend_initWithRandomOfLength_(v13, v14, a3, v15);
  objc_msgSend_appendData_(v12, v17, v16, v18);

  v21 = objc_msgSend_dataWithData_(MEMORY[0x1E695DEF0], v19, v12, v20);

  return v21;
}

void sub_1BAF1DEB8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, a3, a4);
  v9 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v6, v7, v8);
  v13 = objc_msgSend_UUIDString(v9, v10, v11, v12);

  v14 = NSTemporaryDirectory();
  v17 = objc_msgSend_stringByAppendingPathComponent_(v14, v15, v13, v16);

  v21 = objc_msgSend_databaseFilePath(*(a1 + 32), v18, v19, v20);
  v38 = 0;
  v23 = objc_msgSend_moveItemAtPath_toPath_error_(v5, v22, v21, v17, &v38);
  v24 = v38;

  if ((v23 & 1) == 0)
  {
    v25 = APLogForCategory(0xCuLL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 40);
      v27 = objc_opt_class();
      v28 = v27;
      v32 = objc_msgSend_localizedFailureReason(v24, v29, v30, v31);
      v36 = objc_msgSend_userInfo(v24, v33, v34, v35);
      *buf = 138478339;
      v40 = v27;
      v41 = 2114;
      v42 = v32;
      v43 = 2114;
      v44 = v36;
      _os_log_impl(&dword_1BADC1000, v25, OS_LOG_TYPE_ERROR, "[%{private}@]: Failed to Move Corrupted File, error: %{public}@, userInfo: %{public}@", buf, 0x20u);
    }
  }

  v37 = *MEMORY[0x1E69E9840];
}

void sub_1BAF1E49C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_connectionInterrupted(WeakRetained, v1, v2, v3);
}

void sub_1BAF1E95C(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = *(a1 + 32);
  v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v2, &v11, v15, 16);
  if (v3)
  {
    v7 = v3;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v1);
        }

        objc_msgSend_connectionInterrupted(*(*(&v11 + 1) + 8 * v9++), v4, v5, v6, v11);
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v4, &v11, v15, 16);
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

id sub_1BAF20064(void *a1)
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_msgSend_initWithData_encoding_(v2, v3, a1, 4);
  v8 = v4;
  if (v4)
  {
    v9 = v4;
  }

  else
  {
    v10 = objc_msgSend_length(a1, v5, v6, v7);
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, @"Binary data, %ld bytes, ...", v12, v10);
  }

  v13 = v9;

  return v13;
}

uint64_t sub_1BAF20140(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_isAppleInternalInstall(APSystemInternal, a2, a3, a4);
  if (result)
  {
    qword_1EDBA40F8 = objc_alloc_init(APTestingRig);

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

void sub_1BAF202C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v9 = objc_msgSend_firstObject(a2, v6, v7, v8);
  v14 = objc_msgSend_dataUsingEncoding_(v9, v10, 4, v11);

  v13 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v12, v14, 1, 0);
  if (v13)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5[2](v5, 0);
  }
}

id sub_1BAF20620(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_length(a1, a2, a3, a4))
  {
    memset(&strm.avail_in, 0, 104);
    v6 = a1;
    strm.next_in = objc_msgSend_bytes(v6, v7, v8, v9);
    strm.avail_in = objc_msgSend_length(a1, v10, v11, v12);
    if (a3 == 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = -1;
    }

    if (a3 == 2)
    {
      v15 = objc_msgSend_deflateInit2Helper_compressionLevel_(a1, v13, &strm, 9);
    }

    else
    {
      v15 = objc_msgSend_deflateInit2Helper_compressionLevel_(a1, v13, &strm, v14);
    }

    v18 = 0;
    if (!v15)
    {
      v20 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v16, 0x4000, v17);
      do
      {
        v37 = strm;
        if (objc_msgSend_compareDataSizeHelper_data_(a1, v19, &v37, v20))
        {
          objc_msgSend_increaseLengthBy_(v20, v21, 0x4000, v22);
        }

        v23 = v20;
        v27 = objc_msgSend_mutableBytes(v23, v24, v25, v26);
        strm.next_out = (v27 + strm.total_out);
        v31 = objc_msgSend_length(v20, v28, v29, v30);
        strm.avail_out = v31 - LODWORD(strm.total_out);
        deflate(&strm, 4);
      }

      while (!strm.avail_out);
      deflateEnd(&strm);
      objc_msgSend_setLength_(v20, v32, strm.total_out, v33);
      v18 = objc_msgSend_dataWithData_(MEMORY[0x1E695DEF0], v34, v20, v35);
    }
  }

  else
  {
    v18 = a1;
  }

  return v18;
}

id sub_1BAF207B0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v62 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_length(a1, a2, a3, a4))
  {
    v47 = a1;
    goto LABEL_19;
  }

  v8 = objc_msgSend_length(a1, v5, v6, v7);
  v12 = objc_msgSend_length(a1, v9, v10, v11);
  v15 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v13, v8 + (v12 >> 1), v14);
  memset(&v54[8], 0, 104);
  v16 = a1;
  *v54 = objc_msgSend_bytes(v16, v17, v18, v19);
  *&v54[8] = objc_msgSend_length(a1, v20, v21, v22);
  if (objc_msgSend_inflateInit2Helper_(a1, v23, v54, v24))
  {
    goto LABEL_17;
  }

  v26 = v12 >> 1;
  do
  {
    v59 = *&v54[64];
    v60 = *&v54[80];
    v61 = *&v54[96];
    *buf = *v54;
    v56 = *&v54[16];
    v57 = *&v54[32];
    v58 = *&v54[48];
    if (objc_msgSend_compareDataSizeHelper_data_(a1, v25, buf, v15))
    {
      objc_msgSend_increaseLengthBy_(v15, v27, v26, v28);
    }

    v29 = v15;
    v33 = objc_msgSend_mutableBytes(v29, v30, v31, v32);
    *&v54[24] = v33 + *&v54[40];
    v37 = objc_msgSend_length(v15, v34, v35, v36);
    *&v54[32] = v37 - *&v54[40];
    v40 = objc_msgSend_inflateHelper_(a1, v38, v54, v39);
  }

  while (!v40);
  v42 = v40;
  if (v40 != 1)
  {
    v48 = APLogForCategory(0x12uLL);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v42;
      _os_log_impl(&dword_1BADC1000, v48, OS_LOG_TYPE_ERROR, "Error: gzip inflate() failed! (%d)", buf, 8u);
    }

    if (!objc_msgSend_inflateEndHelper_(a1, v49, v54, v50))
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (objc_msgSend_inflateEndHelper_(a1, v25, v54, v41))
  {
LABEL_14:
    v51 = APLogForCategory(0x12uLL);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1BADC1000, v51, OS_LOG_TYPE_ERROR, "Error: gzip inflatedEnd() failed!", buf, 2u);
    }

LABEL_17:
    v47 = 0;
    goto LABEL_18;
  }

  objc_msgSend_setLength_(v15, v43, *&v54[40], v44);
  v47 = objc_msgSend_dataWithData_(MEMORY[0x1E695DEF0], v45, v15, v46);
LABEL_18:

LABEL_19:
  v52 = *MEMORY[0x1E69E9840];

  return v47;
}

void sub_1BAF20FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1BAF20FE0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_msgSend__createSessionForRequester_httpMaximumConnectionsPerHost_(WeakRetained, v7, v5, a3);

  return v8;
}

id sub_1BAF2193C(uint64_t a1, const char *a2, unint64_t a3, uint64_t a4)
{
  v5 = a3 >> 3;
  v6 = objc_msgSend_data(MEMORY[0x1E695DF88], a2, a3, a4);
  v7 = v5 + 1;
  do
  {
    v8 = arc4random_uniform(0xFFFFFFFF);
    v17 = v8 | (arc4random_uniform(0xFFFFFFFF) << 32);
    v9 = objc_alloc(MEMORY[0x1E695DEF0]);
    v11 = objc_msgSend_initWithBytes_length_(v9, v10, &v17, 8);
    objc_msgSend_appendData_(v6, v12, v11, v13);

    --v7;
  }

  while (v7);
  v15 = objc_msgSend_subdataWithRange_(v6, v14, 0, a3 - 1);

  return v15;
}

uint64_t sub_1BAF21A10(void *a1, const char *a2, size_t a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = v14 - ((a3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    bzero(v14 - ((a3 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  }

  if (objc_msgSend_copyBytes_withLength_(SecRandomCopyBytesHelper, a2, v5, a3))
  {
    v8 = objc_msgSend_randomWithBytes_(MEMORY[0x1E695DEF0], v6, 16, v7);
    v11 = objc_msgSend_initWithData_(a1, v9, v8, v10);
  }

  else
  {
    v11 = objc_msgSend_initWithBytes_length_(a1, v6, v5, a3);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

id sub_1BAF21AF4(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_base64EncodedStringWithOptions_(a1, a2, 1, a4);
  v6 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v4, v5, @"+", @"-");

  v8 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v6, v7, @"/", @"_");

  return v8;
}

id sub_1BAF22110(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v1 = a1;
  v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v2, &v15, v19, 16);
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v7;
          if (objc_msgSend_state(v9, v10, v11, v12, v15) == 17002)
          {
            goto LABEL_12;
          }
        }
      }

      v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v8, &v15, v19, 16);
    }

    while (v4);
  }

  v9 = 0;
LABEL_12:

  v13 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t sub_1BAF224B0()
{
  qword_1EDBA41B0 = objc_alloc_init(APXPCListenerManager);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1BAF22D08(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(a1 + 32);

    return objc_msgSend_connectionInterrupted(v7, v4, v5, v6);
  }

  return result;
}

uint64_t sub_1BAF22D5C(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(a1 + 32);

    return objc_msgSend_connectionInvalidated(v7, v4, v5, v6);
  }

  return result;
}

id sub_1BAF22E6C()
{
  if (qword_1EDBA4188 != -1)
  {
    sub_1BAF8E2A4();
  }

  v1 = qword_1EDBA4190;

  return v1;
}

uint64_t sub_1BAF22EB0()
{
  qword_1EDBA4190 = objc_alloc_init(MEMORY[0x1E696AC80]);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1BAF22EEC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v10 = objc_msgSend_localTimeZone(MEMORY[0x1E695DFE8], a2, a3, a4);
  v4 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v5 = qword_1EDBA48F8;
  qword_1EDBA48F8 = v4;

  objc_msgSend_setTimeZone_(qword_1EDBA48F8, v6, v10, v7);
  objc_msgSend_setFormatOptions_(qword_1EDBA48F8, v8, 3955, v9);
}

id sub_1BAF22F6C()
{
  if (qword_1EDBA4178 != -1)
  {
    sub_1BAF8E2CC();
  }

  v1 = qword_1EDBA4180;

  return v1;
}

void sub_1BAF22FB0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v10 = objc_msgSend_timeZoneWithAbbreviation_(MEMORY[0x1E695DFE8], a2, @"UTC", a4);
  v4 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v5 = qword_1EDBA4180;
  qword_1EDBA4180 = v4;

  objc_msgSend_setTimeZone_(qword_1EDBA4180, v6, v10, v7);
  objc_msgSend_setFormatOptions_(qword_1EDBA4180, v8, 3955, v9);
}

void sub_1BAF23100(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = objc_alloc_init(objc_opt_class());
  v4 = qword_1EDBA4128;
  qword_1EDBA4128 = v3;

  v7 = objc_msgSend_pathForName_(APDatabasePath, v5, @"APDatabase", v6);
  if (objc_msgSend_deviceUnlockedSinceBoot(APDeviceLockedTask, v8, v9, v10))
  {
    objc_msgSend_setClassCDataAvaliable_(qword_1EDBA4128, v11, 1, v12);
    objc_msgSend__openDBConnectionCanRepeat_databasePath_(qword_1EDBA4128, v13, 1, v7);
  }

  else
  {
    v14 = APLogForCategory(0xCuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      *buf = 138477827;
      v27 = objc_opt_class();
      v16 = v27;
      _os_log_impl(&dword_1BADC1000, v14, OS_LOG_TYPE_DEFAULT, "[%{private}@]: APDatabase connection delayed until first unlock.", buf, 0xCu);
    }

    v17 = [APDeviceLockedTask alloc];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1BAF232B8;
    v24[3] = &unk_1E7F1CE98;
    v25 = v7;
    v20 = objc_msgSend_initWithHandler_(v17, v18, v24, v19);
    objc_msgSend_setDeviceLockedTask_(qword_1EDBA4128, v21, v20, v22);
  }

  v23 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1BAF232B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_setClassCDataAvaliable_(qword_1EDBA4128, a2, 1, a4);
  objc_msgSend__openDBConnectionCanRepeat_databasePath_(qword_1EDBA4128, v5, 1, *(a1 + 32));
  if ((objc_msgSend_setUpDatabaseWithPath_(qword_1EDBA4128, v6, *(a1 + 32), v7) & 1) == 0)
  {
    v11 = objc_msgSend_currentVersion(qword_1EDBA4128, v8, v9, v10);
    APDatabaseError(430, 0xFFFFFFFFLL, v11, @"APDatabase", @"Setup failed after delayed unlock.", 0);
  }

  v12 = qword_1EDBA4128;

  return objc_msgSend_setDeviceLockedTask_(v12, v8, 0, v10);
}

__CFString *signingAuthorityFinalStateToString(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return @"unauthorized";
  }

  else
  {
    return off_1E7F1D568[a1 - 1];
  }
}

void sub_1BAF26CD4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_1BAF26CF8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v3)
  {
    v5 = *(a1 + 56);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1BAF26DE0;
    v9[3] = &unk_1E7F1D480;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v11 = v5;
    v9[4] = v6;
    v12 = *(a1 + 64);
    v10 = v7;
    objc_msgSend__sendSetupRequest_forContextRef_withCompletion_(WeakRetained, v8, v3, v5, v9);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1BAF26DE0(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v3 = APPerfLogForCategory(0x30uLL);
    v7 = objc_msgSend_signpostID(*(a1 + 32), v4, v5, v6);
    if ((v7 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v8 = v7;
      if (os_signpost_enabled(v3))
      {
        LOWORD(v40) = 0;
        _os_signpost_emit_with_name_impl(&dword_1BADC1000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v8, "VerifyNewContext", "", &v40, 2u);
      }
    }

    if (objc_msgSend__verifyContext_(*(a1 + 32), v9, *(a1 + 48), v10))
    {
      v12 = [APSigningContextStorage alloc];
      v13 = *(a1 + 48);
      v17 = objc_msgSend_poolName(*(a1 + 32), v14, v15, v16);
      v19 = objc_msgSend_initWithContextRef_poolName_stashed_(v12, v18, v13, v17, *(a1 + 56));

      v20 = APLogForCategory(0x30uLL);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = *(a1 + 32);
        v40 = 134217984;
        v41 = v21;
        _os_log_impl(&dword_1BADC1000, v20, OS_LOG_TYPE_INFO, "Successfully set up context for authority %p", &v40, 0xCu);
      }
    }

    else
    {
      objc_msgSend__setFailureStateWithErrorAndDestroyContext_finalState_contextRef_(*(a1 + 32), v11, 7202, 1, *(a1 + 48));
      v19 = 0;
    }

    v22 = APPerfLogForCategory(0x30uLL);
    v26 = objc_msgSend_signpostID(*(a1 + 32), v23, v24, v25);
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v27 = v26;
      if (os_signpost_enabled(v22))
      {
        LOWORD(v40) = 0;
        _os_signpost_emit_with_name_impl(&dword_1BADC1000, v22, OS_SIGNPOST_INTERVAL_END, v27, "VerifyNewContext", " enableTelemetry=YES ", &v40, 2u);
      }
    }

    v28 = MEMORY[0x1E696AD98];
    v29 = CFAbsoluteTimeGetCurrent();
    v33 = objc_msgSend_numberWithDouble_(v28, v30, v31, v32, (v29 - Current) * 1000.0);
    v37 = objc_msgSend_stageDurationIntervals(*(a1 + 32), v34, v35, v36);
    objc_msgSend_setObject_atIndexedSubscript_(v37, v38, v33, 6);
  }

  else
  {
    v19 = 0;
  }

  (*(*(a1 + 40) + 16))();

  v39 = *MEMORY[0x1E69E9840];
}

void sub_1BAF27B10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BAF27B50(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = APPerfLogForCategory(0x30uLL);
  v10 = objc_loadWeakRetained((a1 + 48));
  v14 = objc_msgSend_signpostID(v10, v11, v12, v13);

  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LOWORD(v32) = 0;
    _os_signpost_emit_with_name_impl(&dword_1BADC1000, v9, OS_SIGNPOST_INTERVAL_END, v14, "ContextInit", " enableTelemetry=YES ", &v32, 2u);
  }

  v15 = MEMORY[0x1E696AD98];
  Current = CFAbsoluteTimeGetCurrent();
  v20 = objc_msgSend_numberWithDouble_(v15, v17, v18, v19, (Current - *(a1 + 56)) * 1000.0);
  v24 = objc_msgSend_stageDurationIntervals(*(a1 + 32), v21, v22, v23);
  objc_msgSend_setObject_atIndexedSubscript_(v24, v25, v20, 4);

  v26 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = *(a1 + 32);
    v32 = 134218754;
    v33 = v27;
    v34 = 2048;
    v35 = a2;
    v36 = 1024;
    v37 = a3;
    v38 = 2112;
    v39 = v7;
    _os_log_impl(&dword_1BADC1000, v26, OS_LOG_TYPE_INFO, "Signing Authority %p received init response %p with length %u\nwith error: %@", &v32, 0x26u);
  }

  v29 = objc_msgSend__handleInitResponse_length_forContextRef_error_(WeakRetained, v28, a2, a3, *(a1 + 64), v7);
  v30 = *(a1 + 40);
  if (v30)
  {
    (*(v30 + 16))(v30, v29);
  }

  v31 = *MEMORY[0x1E69E9840];
}

void sub_1BAF27D64(uint64_t a1, const char *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E696ABC0];
  v4 = *MEMORY[0x1E696A978];
  v9 = *MEMORY[0x1E696A578];
  v10[0] = @"Simulated init timeout";
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v10, &v9, 1);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, v4, -1001, v5);
  (*(v2 + 16))(v2, 0, 0, v7);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1BAF284E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_1BAF28520(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = APPerfLogForCategory(0x30uLL);
  v10 = objc_loadWeakRetained((a1 + 48));
  v14 = objc_msgSend_signpostID(v10, v11, v12, v13);

  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LOWORD(v31) = 0;
    _os_signpost_emit_with_name_impl(&dword_1BADC1000, v9, OS_SIGNPOST_INTERVAL_END, v14, "ContextInit", " enableTelemetry=YES ", &v31, 2u);
  }

  v15 = MEMORY[0x1E696AD98];
  Current = CFAbsoluteTimeGetCurrent();
  v20 = objc_msgSend_numberWithDouble_(v15, v17, v18, v19, (Current - *(a1 + 56)) * 1000.0);
  v24 = objc_msgSend_stageDurationIntervals(*(a1 + 32), v21, v22, v23);
  objc_msgSend_setObject_atIndexedSubscript_(v24, v25, v20, 5);

  v26 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = *(a1 + 32);
    v31 = 134218754;
    v32 = v27;
    v33 = 2048;
    v34 = a2;
    v35 = 1024;
    v36 = a3;
    v37 = 2112;
    v38 = v7;
    _os_log_impl(&dword_1BADC1000, v26, OS_LOG_TYPE_INFO, "Signing Authority %p received init response %p with length %u\nwith error: %@", &v31, 0x26u);
  }

  objc_msgSend__handleSetupResponse_length_forContextRef_error_(WeakRetained, v28, a2, a3, *(a1 + 64), v7);
  v29 = *(a1 + 40);
  if (v29)
  {
    (*(v29 + 16))();
  }

  v30 = *MEMORY[0x1E69E9840];
}

void sub_1BAF28724(uint64_t a1, const char *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E696ABC0];
  v4 = *MEMORY[0x1E696A978];
  v9 = *MEMORY[0x1E696A578];
  v10[0] = @"Simulated setup timeout";
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v10, &v9, 1);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, v4, -1001, v5);
  (*(v2 + 16))(v2, 0, 0, v7);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1BAF29CF8(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(a1 + 32) + 16), a2);
  v5 = APPerfLogForCategory(0x30uLL);
  v9 = objc_msgSend_signpostID(*(a1 + 32), v6, v7, v8);
  if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v5))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_1BADC1000, v5, OS_SIGNPOST_INTERVAL_END, v10, "TotalSetupTime", " enableTelemetry=YES ", v12, 2u);
    }
  }

  v11 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

uint64_t sub_1BAF2A50C()
{
  qword_1EDBA4148 = objc_alloc_init(APUnfairRecursiveLock);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1BAF2AF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1BAF2AF40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BAF2AF58(uint64_t a1, void *a2, void *a3)
{
  v24 = a2;
  v5 = a3;
  v9 = objc_msgSend_assignedContexts(APSigningContextStorage, v6, v7, v8);
  v12 = objc_msgSend_containsObject_(v9, v10, v24, v11);

  v15 = objc_msgSend_objectAtIndexedSubscript_(v5, v13, 1, v14);
  if (!objc_msgSend_BOOLValue(v15, v16, v17, v18))
  {
    goto LABEL_5;
  }

  v19 = *(a1 + 40);

  if ((v19 & 1) != 0 || v12 != 1)
  {
    v21 = *(*(*(a1 + 32) + 8) + 40);
    v15 = objc_msgSend_reconstructFromStorage_contextRef_(APSigningContextStorage, v20, v5, v24);
    objc_msgSend_addObject_(v21, v22, v15, v23);
LABEL_5:
  }
}

void sub_1BAF2B154(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = objc_msgSend_longLongValue(a2, a2, a3, a4);
  v7 = objc_msgSend_FPDIDestroyContext_(APFPDIWrapper, v5, &v12, v6);
  if (v7 != -44654 && v7 != 0)
  {
    v9 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 136643331;
      v14 = "+[APSigningContextStorage destroyAndClearAllContextsForPool:]_block_invoke";
      v15 = 2048;
      v16 = v12;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_1BADC1000, v9, OS_LOG_TYPE_ERROR, "[%{sensitive}s]: Failed to destroy context %llu for pool %@", buf, 0x20u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1BAF2B37C(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_objectAtIndexedSubscript_(v6, v7, 0, v8);
  v13 = objc_msgSend_launchID(APSigningContextStorage, v10, v11, v12);
  if (objc_msgSend_isEqualToString_(v9, v14, v13, v15))
  {

LABEL_4:
    objc_msgSend_setObject_forKey_(*(a1 + 32), v18, v6, v5);
    goto LABEL_5;
  }

  v19 = objc_msgSend_objectAtIndexedSubscript_(v6, v16, 1, v17);
  v23 = objc_msgSend_BOOLValue(v19, v20, v21, v22);

  if (v23)
  {
    goto LABEL_4;
  }

  v31 = objc_msgSend_longLongValue(v5, v18, v24, v25);
  v29 = objc_msgSend_FPDIDestroyContext_(APFPDIWrapper, v27, &v31, v28);
  if (v29 != -44654 && v29)
  {
    v30 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136643075;
      v33 = "+[APSigningContextStorage destroyAndClearAllPreviousLaunchContextsForPool:]_block_invoke";
      v34 = 2048;
      v35 = v31;
      _os_log_impl(&dword_1BADC1000, v30, OS_LOG_TYPE_ERROR, "[%{sensitive}s]: Failed to destroy context %llu", buf, 0x16u);
    }
  }

LABEL_5:

  v26 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1BAF2B608(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  qword_1EDBA4170 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3, a4);

  return MEMORY[0x1EEE66BB8]();
}

id sub_1BAF2C048(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = MEMORY[0x1E695DFA8];
  v9 = objc_msgSend_count(a1, v6, v7, v8);
  v12 = objc_msgSend_setWithCapacity_(v5, v10, v9, v11);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1BAF2C128;
  v20[3] = &unk_1E7F1D6B8;
  v13 = v12;
  v21 = v13;
  v22 = v4;
  v14 = v4;
  objc_msgSend_enumerateObjectsUsingBlock_(a1, v15, v20, v16);
  v17 = v22;
  v18 = v13;

  return v13;
}

void sub_1BAF2C128(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = (*(*(a1 + 40) + 16))();
  objc_msgSend_addObject_(v1, v2, v4, v3);
}

id sub_1BAF2C184(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = MEMORY[0x1E695DFA8];
  v9 = objc_msgSend_count(a1, v6, v7, v8);
  v12 = objc_msgSend_setWithCapacity_(v5, v10, v9, v11);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1BAF2C268;
  v20[3] = &unk_1E7F1D6E0;
  v22 = v4;
  v13 = v12;
  v21 = v13;
  v14 = v4;
  objc_msgSend_enumerateObjectsUsingBlock_(a1, v15, v20, v16);
  v17 = v21;
  v18 = v13;

  return v13;
}

uint64_t sub_1BAF2C268(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  if (v2)
  {
    objc_msgSend_addObject_(*(a1 + 32), v2, v2, v3);
  }

  return MEMORY[0x1EEE66BB8]();
}

uint64_t PrimitiveCountryCodeSource.__allocating_init(dataSource:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1BADC5B38(a1, v2 + 16);
  return v2;
}

APFoundation::CountryCode_optional __swiftcall PrimitiveCountryCodeSource.countryCode()()
{
  v2 = v0;
  v3 = sub_1BAF8E3E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v24 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - v12;
  v14 = v1[5];
  v15 = v1[6];
  sub_1BADC8524(v1 + 2, v14);
  v16 = (*(v15 + 8))(v14, v15);
  if (!v17)
  {
    goto LABEL_9;
  }

  v19 = v16;
  v20 = v17;

  if (sub_1BAF8ED28() != 2)
  {
    v16 = swift_bridgeObjectRelease_n();
LABEL_9:
    *v2 = 0;
    v2[1] = 0;
    goto LABEL_10;
  }

  if (qword_1EBC36550 != -1)
  {
    swift_once();
  }

  sub_1BADC4BA8(v3, qword_1EBC368D0);
  sub_1BAF8E3A8();
  (*(v4 + 16))(v8, v13, v3);
  v21 = MEMORY[0x1E69680B8];
  sub_1BAF2C664(&qword_1EBC36578, MEMORY[0x1E69680B8]);
  sub_1BAF8F178();
  sub_1BAF2C664(&qword_1EBC36580, v21);
  v22 = sub_1BAF8EC18();

  v23 = *(v4 + 8);
  v23(v11, v3);
  v16 = (v23)(v13, v3);
  if ((v22 & 1) == 0)
  {

    goto LABEL_9;
  }

  *v2 = v19;
  v2[1] = v20;
LABEL_10:
  result.value.value._object = v17;
  result.value.value._countAndFlagsBits = v16;
  result.is_nil = v18;
  return result;
}

uint64_t PrimitiveCountryCodeSource.__deallocating_deinit()
{
  sub_1BADC5BE0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1BAF2C664(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BAF2C734(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BAF2C754(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1BAF2C7D8()
{
  v1 = *v0;
  sub_1BAF8F5A8();
  MEMORY[0x1BFB05110](v1);
  return sub_1BAF8F5E8();
}

uint64_t sub_1BAF2C820()
{
  v1 = *v0;
  sub_1BAF8F5A8();
  MEMORY[0x1BFB05110](v1);
  return sub_1BAF8F5E8();
}

uint64_t Date.day.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BAF8E848();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1BAF8E498();
  v9 = *(v27 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BAF8E728();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v2, v13);
  if (qword_1EDBA3880 != -1)
  {
    swift_once();
  }

  v18 = sub_1BADC4BA8(v4, qword_1EDBA3888);
  swift_beginAccess();
  (*(v5 + 16))(v8, v18, v4);
  if (qword_1EDBA3860 != -1)
  {
    swift_once();
  }

  v19 = sub_1BAF8E888();
  sub_1BADC4BA8(v19, qword_1EDBA3868);
  sub_1BAF8E7F8();
  (*(v5 + 8))(v8, v4);
  result = sub_1BAF8E468();
  if (v21)
  {
    __break(1u);
    goto LABEL_10;
  }

  v22 = result;
  result = sub_1BAF8E478();
  if (v23)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v24 = result;
  result = sub_1BAF8E448();
  if ((v25 & 1) == 0)
  {
    v26 = result;
    (*(v9 + 8))(v12, v27);
    result = (*(v14 + 8))(v17, v13);
    *a1 = v22;
    a1[1] = v24;
    a1[2] = v26;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t ExtendedUUID.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BAF8E788();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for ExtendedUUID()
{
  result = qword_1EDBA3658;
  if (!qword_1EDBA3658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ExtendedUUID.base64.getter()
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = sub_1BAF65D94();
  v14 = v1;
  v12 = bswap64(*(v0 + *(type metadata accessor for ExtendedUUID() + 20)));
  v2 = sub_1BAF2DA00(&v12, &v13);
  v4 = v3;
  sub_1BAF8E618();
  sub_1BAF2DABC(v2, v4);
  v5 = v13;
  v6 = v14;
  v7 = sub_1BAF8E5D8();
  sub_1BAF2DABC(v5, v6);
  v8 = [v7 base64FilenameSafeEncoded];

  v9 = sub_1BAF8EC38();
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t ExtendedUUID.string.getter()
{
  v3 = *(v0 + *(type metadata accessor for ExtendedUUID() + 20));
  v4 = sub_1BAF8F478();
  MEMORY[0x1BFB048C0](46, 0xE100000000000000);
  v1 = sub_1BAF8E748();
  MEMORY[0x1BFB048C0](v1);

  return v4;
}

uint64_t ExtendedUUID.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1BAF8E778();
  v2 = sub_1BAF2CE84();
  result = type metadata accessor for ExtendedUUID();
  *(a1 + *(result + 20)) = v2;
  return result;
}

uint64_t sub_1BAF2CE84()
{
  v0 = sub_1BAF8EEE8();
  *(v0 + 16) = 8;
  *(v0 + 32) = 0;
  if (SecRandomCopyBytes(*MEMORY[0x1E697B308], 8uLL, (v0 + 32)))
  {

    v3 = 0;
    MEMORY[0x1BFB06170](&v3, 8);
    return v3;
  }

  else
  {
    v1 = *(v0 + 32);
  }

  return v1;
}

uint64_t ExtendedUUID.init(uuid:addendum:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BAF8E788();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for ExtendedUUID();
  *(a3 + *(result + 20)) = a2;
  return result;
}

unsigned __int8 *ExtendedUUID.init(string:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v5 = sub_1BAF2DB10(&qword_1EBC36670, &qword_1BAF95010);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v48 - v7;
  v9 = sub_1BAF8E788();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ExtendedUUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1;
  v53 = a2;
  v50 = 46;
  v51 = 0xE100000000000000;
  sub_1BAF2DB58();
  v19 = sub_1BAF8F138();

  if (v19[2] != 2)
  {

    goto LABEL_5;
  }

  v20 = v19[6];
  v21 = v19[7];

  sub_1BAF8E738();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    sub_1BAF2DBAC(v8);
LABEL_5:
    v22 = 1;
    v23 = v49;
    return (*(v15 + 56))(v23, v22, 1, v14);
  }

  v25 = *(v10 + 32);
  v25(v13, v8, v9);
  if (!v19[2])
  {
    __break(1u);
LABEL_76:

LABEL_73:
    (*(v10 + 8))(v13, v9);
    goto LABEL_5;
  }

  v48 = v25;
  v27 = v19[4];
  v26 = v19[5];

  v28 = HIBYTE(v26) & 0xF;
  v29 = v27 & 0xFFFFFFFFFFFFLL;
  if ((v26 & 0x2000000000000000) != 0)
  {
    v30 = HIBYTE(v26) & 0xF;
  }

  else
  {
    v30 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (!v30)
  {
    goto LABEL_76;
  }

  if ((v26 & 0x1000000000000000) != 0)
  {
    v32 = sub_1BAF2E214(v27, v26, 10);
    v45 = v47;
LABEL_72:

    if ((v45 & 1) == 0)
    {
      v48(v18, v13, v9);
      *&v18[*(v14 + 20)] = v32;
      v46 = v49;
      sub_1BAF2E798(v18, v49);
      v23 = v46;
      v22 = 0;
      return (*(v15 + 56))(v23, v22, 1, v14);
    }

    goto LABEL_73;
  }

  if ((v26 & 0x2000000000000000) == 0)
  {
    if ((v27 & 0x1000000000000000) != 0)
    {
      result = ((v26 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1BAF8F2B8();
    }

    v31 = *result;
    if (v31 == 43)
    {
      if (v29 >= 1)
      {
        v28 = v29 - 1;
        if (v29 != 1)
        {
          v32 = 0;
          if (result)
          {
            v38 = result + 1;
            while (1)
            {
              v39 = *v38 - 48;
              if (v39 > 9)
              {
                goto LABEL_70;
              }

              if (!is_mul_ok(v32, 0xAuLL))
              {
                goto LABEL_70;
              }

              v35 = __CFADD__(10 * v32, v39);
              v32 = 10 * v32 + v39;
              if (v35)
              {
                goto LABEL_70;
              }

              ++v38;
              if (!--v28)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_62;
        }

        goto LABEL_70;
      }

      goto LABEL_81;
    }

    if (v31 != 45)
    {
      if (v29)
      {
        v32 = 0;
        if (result)
        {
          while (1)
          {
            v42 = *result - 48;
            if (v42 > 9)
            {
              goto LABEL_70;
            }

            if (!is_mul_ok(v32, 0xAuLL))
            {
              goto LABEL_70;
            }

            v35 = __CFADD__(10 * v32, v42);
            v32 = 10 * v32 + v42;
            if (v35)
            {
              goto LABEL_70;
            }

            ++result;
            if (!--v29)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_62;
      }

LABEL_70:
      v32 = 0;
      LOBYTE(v28) = 1;
      goto LABEL_71;
    }

    if (v29 >= 1)
    {
      v28 = v29 - 1;
      if (v29 != 1)
      {
        v32 = 0;
        if (result)
        {
          v33 = result + 1;
          while (1)
          {
            v34 = *v33 - 48;
            if (v34 > 9)
            {
              goto LABEL_70;
            }

            if (!is_mul_ok(v32, 0xAuLL))
            {
              goto LABEL_70;
            }

            v35 = 10 * v32 >= v34;
            v32 = 10 * v32 - v34;
            if (!v35)
            {
              goto LABEL_70;
            }

            ++v33;
            if (!--v28)
            {
              goto LABEL_71;
            }
          }
        }

LABEL_62:
        LOBYTE(v28) = 0;
LABEL_71:
        LOBYTE(v50) = v28;
        v45 = v28;
        goto LABEL_72;
      }

      goto LABEL_70;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v52 = v27;
  v53 = v26 & 0xFFFFFFFFFFFFFFLL;
  if (v27 != 43)
  {
    if (v27 != 45)
    {
      if (v28)
      {
        v32 = 0;
        v43 = &v52;
        while (1)
        {
          v44 = *v43 - 48;
          if (v44 > 9)
          {
            break;
          }

          if (!is_mul_ok(v32, 0xAuLL))
          {
            break;
          }

          v35 = __CFADD__(10 * v32, v44);
          v32 = 10 * v32 + v44;
          if (v35)
          {
            break;
          }

          v43 = (v43 + 1);
          if (!--v28)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    if (v28)
    {
      if (--v28)
      {
        v32 = 0;
        v36 = &v52 + 1;
        while (1)
        {
          v37 = *v36 - 48;
          if (v37 > 9)
          {
            break;
          }

          if (!is_mul_ok(v32, 0xAuLL))
          {
            break;
          }

          v35 = 10 * v32 >= v37;
          v32 = 10 * v32 - v37;
          if (!v35)
          {
            break;
          }

          ++v36;
          if (!--v28)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    goto LABEL_80;
  }

  if (v28)
  {
    if (--v28)
    {
      v32 = 0;
      v40 = &v52 + 1;
      while (1)
      {
        v41 = *v40 - 48;
        if (v41 > 9)
        {
          break;
        }

        if (!is_mul_ok(v32, 0xAuLL))
        {
          break;
        }

        v35 = __CFADD__(10 * v32, v41);
        v32 = 10 * v32 + v41;
        if (v35)
        {
          break;
        }

        ++v40;
        if (!--v28)
        {
          goto LABEL_71;
        }
      }
    }

    goto LABEL_70;
  }

LABEL_82:
  __break(1u);
  return result;
}

BOOL static ExtendedUUID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1BAF8E758() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ExtendedUUID();
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t ExtendedUUID.hash(into:)()
{
  sub_1BAF8E788();
  sub_1BAF2E844(&qword_1EBC36678, MEMORY[0x1E69695A8]);
  sub_1BAF8EBC8();
  v1 = type metadata accessor for ExtendedUUID();
  return MEMORY[0x1BFB05130](*(v0 + *(v1 + 20)));
}

uint64_t ExtendedUUID.hashValue.getter()
{
  sub_1BAF8F5A8();
  sub_1BAF8E788();
  sub_1BAF2E844(&qword_1EBC36678, MEMORY[0x1E69695A8]);
  sub_1BAF8EBC8();
  v1 = type metadata accessor for ExtendedUUID();
  MEMORY[0x1BFB05130](*(v0 + *(v1 + 20)));
  return sub_1BAF8F5E8();
}

uint64_t sub_1BAF2D6D0(uint64_t a1)
{
  sub_1BAF8F5A8();
  sub_1BAF8E788();
  sub_1BAF2E844(&qword_1EBC36678, MEMORY[0x1E69695A8]);
  sub_1BAF8EBC8();
  MEMORY[0x1BFB05130](*(v1 + *(a1 + 20)));
  return sub_1BAF8F5E8();
}

uint64_t sub_1BAF2D774(uint64_t a1, uint64_t a2)
{
  sub_1BAF8E788();
  sub_1BAF2E844(&qword_1EBC36678, MEMORY[0x1E69695A8]);
  sub_1BAF8EBC8();
  return MEMORY[0x1BFB05130](*(v2 + *(a2 + 20)));
}

uint64_t sub_1BAF2D800(uint64_t a1, uint64_t a2)
{
  sub_1BAF8F5A8();
  sub_1BAF8E788();
  sub_1BAF2E844(&qword_1EBC36678, MEMORY[0x1E69695A8]);
  sub_1BAF8EBC8();
  MEMORY[0x1BFB05130](*(v2 + *(a2 + 20)));
  return sub_1BAF8F5E8();
}

uint64_t ExtendedUUID.debugDescription.getter()
{
  v4 = sub_1BAF8E748();
  MEMORY[0x1BFB048C0](58, 0xE100000000000000);
  v3 = *(v0 + *(type metadata accessor for ExtendedUUID() + 20));
  v1 = sub_1BAF8F478();
  MEMORY[0x1BFB048C0](v1);

  return v4;
}

uint64_t sub_1BAF2D978(uint64_t a1)
{
  v6 = sub_1BAF8E748();
  MEMORY[0x1BFB048C0](58, 0xE100000000000000);
  v5 = *(v1 + *(a1 + 20));
  v3 = sub_1BAF8F478();
  MEMORY[0x1BFB048C0](v3);

  return v6;
}

uint64_t sub_1BAF2DA00(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_1BADC8524(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1BAF6055C(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_1BAF2EE34(v3, v4);
    }

    else
    {
      v6 = sub_1BAF2EEB0(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1BADC5BE0(v8);
  return v6;
}

uint64_t sub_1BAF2DABC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1BAF2DB10(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1BAF2DB58()
{
  result = qword_1EDBA3A10;
  if (!qword_1EDBA3A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBA3A10);
  }

  return result;
}

uint64_t sub_1BAF2DBAC(uint64_t a1)
{
  v2 = sub_1BAF2DB10(&qword_1EBC36670, &qword_1BAF95010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1BAF2DC14(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1BAF2DB10(&qword_1EBC36688, &qword_1BAF950D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_1BAF2DC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1BAF8EE08();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1BAF2E928();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1BAF8F2B8();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1BAF2E214(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_1BAF8EE08();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1BAF2E928();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1BAF8F2B8();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1BAF2E798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtendedUUID();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAF2E844(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BAF2E8B4()
{
  result = sub_1BAF8E788();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BAF2E928()
{
  v0 = sub_1BAF8EE18();
  v4 = sub_1BAF2E9A8(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1BAF2E9A8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1BAF8ED08();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1BAF8F0F8();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1BAF2DC14(v9, 0);
  v12 = sub_1BAF2EB00(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1BAF8ED08();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1BAF8F2B8();
LABEL_4:

  return sub_1BAF8ED08();
}

unint64_t sub_1BAF2EB00(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1BAF2ED20(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1BAF8EDD8();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1BAF8F2B8();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1BAF2ED20(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1BAF8EDA8();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1BAF2ED20(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1BAF8EDE8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1BFB04910](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

_BYTE *sub_1BAF2EDA0@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1BAF6055C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1BAF2EE34(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1BAF2EEB0(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1BAF2EE34(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1BAF8E438();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1BAF8E3F8();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1BAF8E5C8();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1BAF2EEB0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1BAF8E438();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1BAF8E3F8();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1BAF2EF34(uint64_t a1)
{
  v9 = sub_1BAF2DB10(&qword_1EBC36690, &qword_1BAF950D8);
  v10 = sub_1BAF2EFE4();
  v8[0] = a1;
  v2 = sub_1BADC8524(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1BAF2EDA0(v3, &v3[v4], &v7);
  v5 = v7;
  sub_1BADC5BE0(v8);
  return v5;
}

unint64_t sub_1BAF2EFE4()
{
  result = qword_1EBC36698;
  if (!qword_1EBC36698)
  {
    sub_1BAF2F048(&qword_1EBC36690, &qword_1BAF950D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36698);
  }

  return result;
}

uint64_t sub_1BAF2F048(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t CohortCandidateKeyValueStore.__allocating_init(keyValueStore:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1BADC5B38(a1, v2 + 16);
  return v2;
}

APFoundation::CohortCandidate_optional __swiftcall CohortCandidateKeyValueStore.candidate()()
{
  v2 = v0;
  v3 = v1[5];
  v4 = v1[6];
  sub_1BADC8524(v1 + 2, v3);
  v5 = COERCE_DOUBLE((*(*(v4 + 8) + 16))(0x614374726F686F63, 0xEF6574616469646ELL, v3));
  if ((v7 & 1) == 0 && ((v6 = v5, v5 >= 0.0) ? (v8 = v5 < 1.0) : (v8 = 0), v8))
  {
    *v2 = v5;
    *(v2 + 8) = 0;
  }

  else
  {
    *v2 = 0;
    *(v2 + 8) = 1;
  }

  result.value = *&v6;
  result.is_nil = LOBYTE(v5);
  return result;
}

Swift::Void __swiftcall CohortCandidateKeyValueStore.save(candidate:)(APFoundation::CohortCandidate candidate)
{
  v3 = *v1;
  v4 = v2[5];
  v5 = v2[6];
  sub_1BADC8524(v2 + 2, v4);
  (*(v5 + 16))(0x614374726F686F63, 0xEF6574616469646ELL, v4, v5, v3);
}

uint64_t CohortCandidateKeyValueStore.__deallocating_deinit()
{
  sub_1BADC5BE0((v0 + 16));

  return swift_deallocClassInstance();
}

double sub_1BAF2F258()
{
  v1 = *v0;
  *&result = CohortCandidateKeyValueStore.candidate()();
  return result;
}

uint64_t sub_1BAF2F27C(double *a1)
{
  v2 = *a1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  sub_1BADC8524((*v1 + 16), v3);
  return (*(v4 + 16))(0x614374726F686F63, 0xEF6574616469646ELL, v3, v4, v2);
}

APFoundation::Cohort_optional __swiftcall Cohort.init(_:)(Swift::Double a1)
{
  v2 = a1 < 0.0;
  if (a1 > 1.0)
  {
    v2 = 1;
  }

  v3 = a1;
  if (v2)
  {
    v3 = 0.0;
  }

  *v1 = v3;
  *(v1 + 8) = v2;
  result.value = *&a1;
  return result;
}

uint64_t getEnumTagSinglePayload for Cohort(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Cohort(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

void static SystemInfo.longBuildVersion.getter()
{
  v0 = [objc_opt_self() kBuildVersionString];
  v1 = MGGetStringAnswer();

  if (v1)
  {
    sub_1BAF8EC38();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1BAF2F5E8(uint64_t a1, unint64_t a2)
{
  v40 = sub_1BAF8E3E8();
  v4 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    return 0;
  }

  v10 = (v6 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  v38 = a2 & 0xFFFFFFFFFFFFFFLL;
  v39 = 4 * v9;
  v36[1] = v2;
  v37 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v12 = (v5 + 8);
  v13 = 15;
  v14 = v6;
  v43 = 4 << v10;
  while (1)
  {
    v16 = v13 & 0xC;
    v17 = (v13 & 1) == 0 || v16 == v11;
    v18 = v17;
    if (!v17)
    {
      break;
    }

    result = v13;
    if (v16 == v11)
    {
      result = sub_1BAF2ED20(v13, v14, a2);
      v6 = v14;
    }

    v20 = result >> 16;
    if (result >> 16 >= v9)
    {
      goto LABEL_60;
    }

    if ((result & 1) == 0)
    {
      v21 = sub_1BAF30634(result, v14, a2);
      v6 = v14;
      v20 = v21 >> 16;
    }

LABEL_24:
    if ((a2 & 0x1000000000000000) != 0)
    {
      sub_1BAF8F258();
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v41 = v6;
        v42 = v38;
        v23 = &v41 + v20;
      }

      else
      {
        v22 = v37;
        if ((v6 & 0x1000000000000000) == 0)
        {
          v22 = sub_1BAF8F2B8();
        }

        v23 = (v22 + v20);
      }

      v24 = *v23;
      if (*v23 < 0)
      {
        v30 = (__clz(v24 ^ 0xFF) - 24);
        if (v30 > 2)
        {
          if (v30 == 3)
          {
            v34 = ((v24 & 0xF) << 12) | ((v23[1] & 0x3F) << 6) | v23[2] & 0x3Fu;
          }

          else
          {
            v35 = ((v24 & 0xF) << 18) | ((v23[1] & 0x3F) << 12) | ((v23[2] & 0x3F) << 6) | v23[3] & 0x3Fu;
          }
        }

        else if (v30 != 1)
        {
          v31 = v23[1] & 0x3F | ((v24 & 0x1F) << 6);
        }
      }
    }

    sub_1BAF8E3C8();
    v25 = sub_1BAF8E3D8();
    result = (*v12)(v8, v40);
    if (v25)
    {
      return v13;
    }

    v6 = v14;
    if (v18)
    {
      v11 = v43;
      if (v16 == v43)
      {
        result = sub_1BAF2ED20(v13, v14, a2);
        v11 = v43;
        v6 = v14;
        v13 = result;
        if (v9 <= result >> 16)
        {
          goto LABEL_61;
        }
      }

      else if (v9 <= v13 >> 16)
      {
        goto LABEL_61;
      }

      if ((v13 & 1) == 0)
      {
        v26 = sub_1BAF30634(v13, v14, a2);
        v11 = v43;
        v6 = v14;
        v13 = v13 & 0xC | v26 & 0xFFFFFFFFFFFFFFF3 | 1;
      }
    }

    else
    {
      v11 = v43;
      if (v9 <= v13 >> 16)
      {
        goto LABEL_62;
      }
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v15 = sub_1BAF8ECE8();
      v11 = v43;
      v6 = v14;
      v13 = v15;
    }

    else
    {
      v27 = v13 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v41 = v6;
        v42 = v38;
        v29 = *(&v41 + v27);
      }

      else
      {
        v28 = v37;
        if ((v6 & 0x1000000000000000) == 0)
        {
          v28 = sub_1BAF8F2B8();
          v11 = v43;
          v6 = v14;
        }

        v29 = *(v28 + v27);
      }

      v32 = v29;
      v33 = __clz(v29 ^ 0xFF) - 24;
      if (v32 >= 0)
      {
        LOBYTE(v33) = 1;
      }

      v13 = ((v27 + v33) << 16) | 5;
    }

    if (v39 == v13 >> 14)
    {
      return 0;
    }
  }

  v20 = v13 >> 16;
  result = v13;
  if (v13 >> 16 < v9)
  {
    goto LABEL_24;
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

unint64_t sub_1BAF2F9C8(uint64_t a1, unint64_t a2)
{
  v40 = sub_1BAF8E3E8();
  v4 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    return 0;
  }

  v10 = (v6 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  v38 = a2 & 0xFFFFFFFFFFFFFFLL;
  v39 = 4 * v9;
  v36[1] = v2;
  v37 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v12 = (v5 + 8);
  v13 = 15;
  v14 = v6;
  v43 = 4 << v10;
  while (1)
  {
    v16 = v13 & 0xC;
    v17 = (v13 & 1) == 0 || v16 == v11;
    v18 = v17;
    if (!v17)
    {
      break;
    }

    result = v13;
    if (v16 == v11)
    {
      result = sub_1BAF2ED20(v13, v14, a2);
      v6 = v14;
    }

    v20 = result >> 16;
    if (result >> 16 >= v9)
    {
      goto LABEL_60;
    }

    if ((result & 1) == 0)
    {
      v21 = sub_1BAF30634(result, v14, a2);
      v6 = v14;
      v20 = v21 >> 16;
    }

LABEL_24:
    if ((a2 & 0x1000000000000000) != 0)
    {
      sub_1BAF8F258();
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v41 = v6;
        v42 = v38;
        v23 = &v41 + v20;
      }

      else
      {
        v22 = v37;
        if ((v6 & 0x1000000000000000) == 0)
        {
          v22 = sub_1BAF8F2B8();
        }

        v23 = (v22 + v20);
      }

      v24 = *v23;
      if (*v23 < 0)
      {
        v30 = (__clz(v24 ^ 0xFF) - 24);
        if (v30 > 2)
        {
          if (v30 == 3)
          {
            v34 = ((v24 & 0xF) << 12) | ((v23[1] & 0x3F) << 6) | v23[2] & 0x3Fu;
          }

          else
          {
            v35 = ((v24 & 0xF) << 18) | ((v23[1] & 0x3F) << 12) | ((v23[2] & 0x3F) << 6) | v23[3] & 0x3Fu;
          }
        }

        else if (v30 != 1)
        {
          v31 = v23[1] & 0x3F | ((v24 & 0x1F) << 6);
        }
      }
    }

    sub_1BAF8E3B8();
    v25 = sub_1BAF8E3D8();
    result = (*v12)(v8, v40);
    if ((v25 & 1) == 0)
    {
      return v13;
    }

    v6 = v14;
    if (v18)
    {
      v11 = v43;
      if (v16 == v43)
      {
        result = sub_1BAF2ED20(v13, v14, a2);
        v11 = v43;
        v6 = v14;
        v13 = result;
        if (v9 <= result >> 16)
        {
          goto LABEL_61;
        }
      }

      else if (v9 <= v13 >> 16)
      {
        goto LABEL_61;
      }

      if ((v13 & 1) == 0)
      {
        v26 = sub_1BAF30634(v13, v14, a2);
        v11 = v43;
        v6 = v14;
        v13 = v13 & 0xC | v26 & 0xFFFFFFFFFFFFFFF3 | 1;
      }
    }

    else
    {
      v11 = v43;
      if (v9 <= v13 >> 16)
      {
        goto LABEL_62;
      }
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v15 = sub_1BAF8ECE8();
      v11 = v43;
      v6 = v14;
      v13 = v15;
    }

    else
    {
      v27 = v13 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v41 = v6;
        v42 = v38;
        v29 = *(&v41 + v27);
      }

      else
      {
        v28 = v37;
        if ((v6 & 0x1000000000000000) == 0)
        {
          v28 = sub_1BAF8F2B8();
          v11 = v43;
          v6 = v14;
        }

        v29 = *(v28 + v27);
      }

      v32 = v29;
      v33 = __clz(v29 ^ 0xFF) - 24;
      if (v32 >= 0)
      {
        LOBYTE(v33) = 1;
      }

      v13 = ((v27 + v33) << 16) | 5;
    }

    if (v39 == v13 >> 14)
    {
      return 0;
    }
  }

  v20 = v13 >> 16;
  result = v13;
  if (v13 >> 16 < v9)
  {
    goto LABEL_24;
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

uint64_t static SystemInfo.bundleIdentifier.getter()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_1BAF8EC38();

  return v2;
}

uint64_t static SystemInfo.locale.getter()
{
  v0 = sub_1BAF8E7C8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAF8E7B8();
  v5 = sub_1BAF8E798();
  (*(v1 + 8))(v4, v0);
  return v5;
}

id sub_1BAF30108(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_1BAF8EC28();

  return v3;
}

uint64_t sub_1BAF30158()
{
  result = sub_1BAF3017C();
  byte_1EDBA3858 = result & 1;
  return result;
}

uint64_t sub_1BAF3017C()
{
  v0 = sub_1BAF8E598();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v23 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - v9;
  sub_1BAF8E508();
  v11 = [objc_opt_self() mainBundle];
  v12 = [v11 bundleIdentifier];

  if (v12)
  {
    sub_1BAF8EC38();
  }

  sub_1BAF8E528();

  v13 = *(v1 + 8);
  v13(v5, v0);
  sub_1BAF8E538();
  v13(v8, v0);
  v14 = objc_opt_self();
  v15 = [v14 defaultManager];
  sub_1BAF8E558();
  v16 = sub_1BAF8EC28();

  v17 = [v15 fileExistsAtPath_];

  if ((v17 & 1) == 0)
  {
    v18 = [v14 defaultManager];
    sub_1BAF8E558();
    v19 = sub_1BAF8EC28();

    v20 = [v18 createFileAtPath:v19 contents:0 attributes:0];

    if ((v20 & 1) == 0)
    {
      sub_1BAF8F018();
      sub_1BAF30DFC(0, &qword_1EDBA38D0, 0x1E69E9BF8);
      v21 = sub_1BAF8F0C8();
      sub_1BAF8E8B8();
    }
  }

  v13(v10, v0);
  return v17 ^ 1;
}

uint64_t static SystemInfo.firstRunSinceReboot.getter()
{
  if (qword_1EDBA3850 != -1)
  {
    swift_once();
  }

  return byte_1EDBA3858;
}

id SystemInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SystemInfo.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SystemInfo();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SystemInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SystemInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BAF30634(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1BAF8F2B8();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

uint64_t _s12APFoundation10SystemInfoC9osVersionSSvgZ_0()
{
  v0 = [objc_opt_self() processInfo];
  [v0 operatingSystemVersion];

  v4 = sub_1BAF8F478();
  MEMORY[0x1BFB048C0](46, 0xE100000000000000);
  v1 = sub_1BAF8F478();
  MEMORY[0x1BFB048C0](v1);

  MEMORY[0x1BFB048C0](46, 0xE100000000000000);
  v2 = sub_1BAF8F478();
  MEMORY[0x1BFB048C0](v2);

  return v4;
}

void _s12APFoundation10SystemInfoC17shortBuildVersionSSSgvgZ_0()
{
  v0 = [objc_opt_self() kBuildVersionString];
  v1 = MGGetStringAnswer();

  if (v1)
  {
    v2 = sub_1BAF8EC38();
    v4 = v3;

    sub_1BAF2F5E8(v2, v4);
    v6 = v5;

    if ((v6 & 1) == 0)
    {
      sub_1BAF8ED38();
      v7 = sub_1BAF8EE18();
      v9 = v8;
      v11 = v10;
      v13 = v12;

      MEMORY[0x1BFB04820](v7, v9, v11, v13);
    }
  }

  else
  {
    __break(1u);
  }
}

void _s12APFoundation10SystemInfoC17systemDescriptionSSvgZ_0()
{
  v0 = _s12APFoundation10SystemInfoC9osVersionSSvgZ_0();
  MEMORY[0x1BFB048C0](v0);

  MEMORY[0x1BFB048C0](45, 0xE100000000000000);
  v1 = [objc_opt_self() kBuildVersionString];
  v2 = MGGetStringAnswer();

  if (v2)
  {
    v3 = sub_1BAF8EC38();
    v5 = v4;

    MEMORY[0x1BFB048C0](v3, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BAF30A4C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!*(result + 32))
    {
      return sub_1BAF8ECF8();
    }

    v2 = 0;
    v3 = v1 - 1;
    while (v3 != v2)
    {
      if (!*(result + 33 + v2++))
      {
        return sub_1BAF8ECF8();
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s12APFoundation10SystemInfoC11deviceModelSSvgZ_0()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  sysctlbyname("hw.machine", 0, v5, 0, 0);
  v0 = v5[0];
  if ((v5[0] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  if (v5[0])
  {
    v1 = sub_1BAF8EEE8();
    *(v1 + 16) = v0;
    bzero((v1 + 32), v0);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  sysctlbyname("hw.machine", (v1 + 32), v5, 0, 0);
  v2 = sub_1BAF30A4C(v1);

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t _s12APFoundation10SystemInfoC9modelTypeSSvgZ_0()
{
  sub_1BAF30DFC(0, &qword_1EDBA20A8, 0x1E696AE18);
  sub_1BAF2DB10(&unk_1EBC36CA0, &unk_1BAF955A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BAF95190;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1BAF30E44();
  *(v0 + 32) = 0xD000000000000025;
  *(v0 + 40) = 0x80000001BAFA21C0;
  v1 = sub_1BAF8EFF8();
  _s12APFoundation10SystemInfoC11deviceModelSSvgZ_0();
  v2 = sub_1BAF8EC98();
  v4 = v3;

  v5 = sub_1BAF8EC28();
  v6 = [v1 evaluateWithObject_];

  if (v6 && (, sub_1BAF2F9C8(v2, v4), v8 = v7, , (v8 & 1) == 0))
  {
    v10 = sub_1BAF8EE18();
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v2 = MEMORY[0x1BFB04820](v10, v12, v14, v16);
  }

  else
  {
    sub_1BAF8F038();
    sub_1BAF30DFC(0, &qword_1EDBA38D0, 0x1E69E9BF8);
    v9 = sub_1BAF8F0C8();
    sub_1BAF8E8B8();

    v1 = v9;
  }

  return v2;
}

uint64_t sub_1BAF30DFC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1BAF30E44()
{
  result = qword_1EDBA2110;
  if (!qword_1EDBA2110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBA2110);
  }

  return result;
}

uint64_t SignpostProvider.signposters.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t SignpostProvider.signposters.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t SignpostProvider.signpostID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12APFoundation16SignpostProvider_signpostID;
  swift_beginAccess();
  v4 = sub_1BAF8E8D8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t SignpostProvider.__allocating_init(defaultCategory:initialID:)(unint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_1BAF2DB10(&qword_1EBC366A0, &qword_1BAF951D0);
  v8 = (sub_1BAF2DB10(&qword_1EBC366A8, &qword_1BAF951D8) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BAF95190;
  v12 = (v11 + v10);
  v13 = v8[14];
  *v12 = a1;
  v14 = APPerfLogForCategory(a1);
  sub_1BAF8E8E8();
  v15 = sub_1BAF325C4(v11);
  swift_setDeallocating();
  sub_1BAF32F04(v12, &qword_1EBC366A8, &qword_1BAF951D8);
  swift_deallocClassInstance();
  *(v7 + 16) = v15;
  v16 = OBJC_IVAR____TtC12APFoundation16SignpostProvider_signpostID;
  v17 = sub_1BAF8E8D8();
  (*(*(v17 - 8) + 32))(v7 + v16, a2, v17);
  return v7;
}

uint64_t SignpostProvider.init(defaultCategory:initialID:)(unint64_t a1, uint64_t a2)
{
  sub_1BAF2DB10(&qword_1EBC366A0, &qword_1BAF951D0);
  v5 = (sub_1BAF2DB10(&qword_1EBC366A8, &qword_1BAF951D8) - 8);
  v6 = *(*v5 + 72);
  v7 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BAF95190;
  v9 = (v8 + v7);
  v10 = v5[14];
  *v9 = a1;
  v11 = APPerfLogForCategory(a1);
  sub_1BAF8E8E8();
  v12 = sub_1BAF325C4(v8);
  swift_setDeallocating();
  sub_1BAF32F04(v9, &qword_1EBC366A8, &qword_1BAF951D8);
  swift_deallocClassInstance();
  *(v2 + 16) = v12;
  v13 = OBJC_IVAR____TtC12APFoundation16SignpostProvider_signpostID;
  v14 = sub_1BAF8E8D8();
  (*(*(v14 - 8) + 32))(v2 + v13, a2, v14);
  return v2;
}

uint64_t SignpostProvider.update(_:)(uint64_t a1)
{
  v2 = sub_1BAF2DB10(&qword_1EBC366B0, &qword_1BAF951E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v32 - v4;
  v6 = sub_1BAF8E908();
  v33 = *(v6 - 8);
  v34 = v6;
  v7 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BAF2DB10(&qword_1EBC366B8, &qword_1BAF951E8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v32 - v12;
  v14 = sub_1BAF8E8D8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v32 - v20;
  sub_1BAF32F64(a1, v13, &qword_1EBC366B8, &qword_1BAF951E8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1BAF32F04(v13, &qword_1EBC366B8, &qword_1BAF951E8);
    v22 = v35;
    swift_beginAccess();
    v23 = *(v22 + 16);

    sub_1BAF316C8(v24, v5);

    v26 = v33;
    v25 = v34;
    if ((*(v33 + 48))(v5, 1, v34) == 1)
    {
      return sub_1BAF32F04(v5, &qword_1EBC366B0, &qword_1BAF951E0);
    }

    (*(v26 + 32))(v9, v5, v25);
    v30 = v35;
    sub_1BAF8E8F8();
    sub_1BAF8E8C8();
    (*(v26 + 8))(v9, v25);
    v31 = OBJC_IVAR____TtC12APFoundation16SignpostProvider_signpostID;
    swift_beginAccess();
    (*(v15 + 40))(v30 + v31, v19, v14);
  }

  else
  {
    (*(v15 + 32))(v21, v13, v14);
    v28 = OBJC_IVAR____TtC12APFoundation16SignpostProvider_signpostID;
    v29 = v35;
    swift_beginAccess();
    (*(v15 + 40))(v29 + v28, v21, v14);
  }

  return swift_endAccess();
}

uint64_t sub_1BAF316C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  v5 = sub_1BAF8F1A8();
  v6 = 1;
  if (v5 != 1 << *(a1 + 32))
  {
    sub_1BAF32504(v5, *(a1 + 36), a1, a2);
    v6 = 0;
  }

  v7 = sub_1BAF8E908();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

uint64_t SignpostProvider.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC12APFoundation16SignpostProvider_signpostID;
  v3 = sub_1BAF8E8D8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t SignpostProvider.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC12APFoundation16SignpostProvider_signpostID;
  v3 = sub_1BAF8E8D8();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t SignpostProvider.subscript.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1BAF2DB10(&qword_1EBC366B0, &qword_1BAF951E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_1BAF8E908();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v14 = *(v2 + 16);
  if (*(v14 + 16) && (v15 = sub_1BAF31E78(a1), (v16 & 1) != 0))
  {
    (*(v10 + 16))(v13, *(v14 + 56) + *(v10 + 72) * v15, v9);
    (*(v10 + 32))(a2, v13, v9);
  }

  else
  {
    swift_endAccess();
    v17 = APPerfLogForCategory(a1);
    sub_1BAF8E8E8();
    (*(v10 + 16))(v8, a2, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    swift_beginAccess();
    sub_1BAF31A9C(v8, a1);
  }

  return swift_endAccess();
}

uint64_t sub_1BAF31A9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BAF2DB10(&qword_1EBC366B0, &qword_1BAF951E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_1BAF8E908();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1BAF32F04(a1, &qword_1EBC366B0, &qword_1BAF951E0);
    v15 = *v3;
    v16 = sub_1BAF31E78(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1BAF6742C();
        v21 = v26;
      }

      (*(v11 + 32))(v9, *(v21 + 56) + *(v11 + 72) * v18, v10);
      sub_1BAF32178(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_1BAF32F04(v9, &qword_1EBC366B0, &qword_1BAF951E0);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_1BAF66F28(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_1BAF31CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1BADC5B38(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1BAF67090(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_1BAF32F04(a1, &qword_1EBC366E0, &qword_1BAF95258);
    sub_1BAF320CC(a2, a3, v10);

    return sub_1BAF32F04(v10, &qword_1EBC366E0, &qword_1BAF95258);
  }

  return result;
}

unint64_t sub_1BAF31DBC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1BAF8F5A8();
  sub_1BAF8ED18();
  v6 = sub_1BAF8F5E8();

  return sub_1BAF31EE0(a1, a2, v6);
}

unint64_t sub_1BAF31E34(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1BAF8F1D8();

  return sub_1BAF31F98(a1, v5);
}

unint64_t sub_1BAF31E78(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1BAF8F5A8();
  MEMORY[0x1BFB05110](a1);
  v4 = sub_1BAF8F5E8();
  return sub_1BAF32060(a1, v4);
}

unint64_t sub_1BAF31EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1BAF8F4C8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1BAF31F98(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1BAF32E54(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1BFB04D40](v9, a1);
      sub_1BAF32EB0(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1BAF32060(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

double sub_1BAF320CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1BAF31DBC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BAF67694();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1BADC5B38((*(v12 + 56) + 40 * v9), a3);
    sub_1BAF32348(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

unint64_t sub_1BAF32178(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BAF8F1B8() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_1BAF8F5A8();
      MEMORY[0x1BFB05110](v10);
      result = sub_1BAF8F5E8();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + 8 * v3);
      v14 = (v12 + 8 * v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_1BAF8E908() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1BAF32348(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BAF8F1B8() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_1BAF8F5A8();

      sub_1BAF8ED18();
      v15 = sub_1BAF8F5E8();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1BAF32504@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 56);
  v7 = sub_1BAF8E908();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

unint64_t sub_1BAF325C4(uint64_t a1)
{
  v2 = sub_1BAF2DB10(&qword_1EBC366A8, &qword_1BAF951D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1BAF2DB10(&qword_1EBC366F8, &qword_1BAF95270);
    v8 = sub_1BAF8F3A8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_1BAF32F64(v10, v6, &qword_1EBC366A8, &qword_1BAF951D8);
      v12 = *v6;
      result = sub_1BAF31E78(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_1BAF8E908();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t type metadata accessor for SignpostProvider()
{
  result = qword_1EDBA3918;
  if (!qword_1EDBA3918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BAF327F4()
{
  result = sub_1BAF8E8D8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BAF328C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1BAF2DB10(&qword_1EBC366D0, &qword_1BAF95240);
    v3 = sub_1BAF8F3A8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BAF32F64(v4, &v13, &unk_1EBC36810, &qword_1BAF95248);
      v5 = v13;
      v6 = v14;
      result = sub_1BAF31DBC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1BAF32E44(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BAF329F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1BAF2DB10(&qword_1EBC366E8, &qword_1BAF95260);
    v3 = sub_1BAF8F3A8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BAF32F64(v4, &v13, &qword_1EBC366F0, &qword_1BAF95268);
      v5 = v13;
      v6 = v14;
      result = sub_1BAF31DBC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1BADC5B38(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BAF32B24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1BAF2DB10(&qword_1EBC366D8, &qword_1BAF95250);
    v3 = sub_1BAF8F3A8();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1BAF31E78(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BAF32C04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1BAF2DB10(&qword_1EBC366C0, &qword_1BAF95228);
    v3 = sub_1BAF8F3A8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1BAF31DBC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BAF32D08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1BAF2DB10(&qword_1EBC36970, &qword_1BAF95230);
    v3 = sub_1BAF8F3A8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BAF32F64(v4, v13, &qword_1EBC366C8, &qword_1BAF95238);
      result = sub_1BAF31E34(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1BAF32E44(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

_OWORD *sub_1BAF32E44(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1BAF32F04(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1BAF2DB10(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BAF32F64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1BAF2DB10(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1BAF32FF0()
{
  result = qword_1EBC36700;
  if (!qword_1EBC36700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36700);
  }

  return result;
}

unint64_t sub_1BAF33048()
{
  result = qword_1EBC36708;
  if (!qword_1EBC36708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36708);
  }

  return result;
}

unint64_t sub_1BAF330AC()
{
  result = qword_1EBC36710;
  if (!qword_1EBC36710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36710);
  }

  return result;
}

unint64_t sub_1BAF33104()
{
  result = qword_1EBC36718;
  if (!qword_1EBC36718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36718);
  }

  return result;
}

BOOL sub_1BAF3319C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1BAF331CC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1BAF331F8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1BAF332E8()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}
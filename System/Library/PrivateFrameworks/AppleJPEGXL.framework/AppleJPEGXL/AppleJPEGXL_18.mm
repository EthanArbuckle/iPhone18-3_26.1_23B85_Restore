void sub_240B95DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  for (i = 104; i != -16; i -= 40)
  {
    sub_240B22320((&a67 + i));
  }

  a36 = &STACK[0x250];
  sub_240B30C38(&a36);
  for (j = 104; j != -16; j -= 40)
  {
    sub_240B22320((&STACK[0x268] + j));
  }

  if (!LODWORD(STACK[0x358]))
  {
    v71 = &STACK[0x348];
    v72 = -120;
    do
    {
      sub_240B22320(v71);
      v71 -= 5;
      v72 += 40;
    }

    while (v72);
  }

  STACK[0x380] = &unk_2852A1CB8;
  v73 = STACK[0x3A0];
  if (STACK[0x3A0])
  {
    STACK[0x3A8] = v73;
    operator delete(v73);
  }

  if (!LODWORD(STACK[0x4C8]))
  {
    v74 = &STACK[0x4B8];
    v75 = -120;
    do
    {
      sub_240B22320(v74);
      v74 -= 5;
      v75 += 40;
    }

    while (v75);
  }

  if (!LODWORD(STACK[0x4F8]))
  {
    v76 = STACK[0x4E8];
    STACK[0x4E8] = 0;
    if (v76)
    {
      atomic_fetch_add(&qword_27E519020, -*(v76 - 24));
      free(*(v76 - 32));
    }
  }

  sub_240B6701C(&STACK[0x500]);
  if (!*(v67 - 216))
  {
    v77 = *(v67 - 232);
    *(v67 - 232) = 0;
    if (v77)
    {
      atomic_fetch_add(&qword_27E519020, -*(v77 - 24));
      free(*(v77 - 32));
    }
  }

  if (!*(v67 - 168))
  {
    v78 = *(v67 - 184);
    *(v67 - 184) = 0;
    if (v78)
    {
      atomic_fetch_add(&qword_27E519020, -*(v78 - 24));
      free(*(v78 - 32));
    }
  }

  if (!*(v67 - 104))
  {
    v79 = *(v67 - 136);
    *(v67 - 136) = 0;
    if (v79)
    {
      atomic_fetch_add(&qword_27E519020, -*(v79 - 24));
      free(*(v79 - 32));
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240B95FEC(uint64_t result, unsigned int *a2, void ***a3, uint64_t a4, char a5)
{
  v6 = result;
LABEL_2:
  v7 = a2;
  v151 = a2 - 1;
  v8 = v6;
  while (1)
  {
    v6 = v8;
    v9 = v7 - v8;
    v10 = v9 - 2;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      v7 = a2;
      if (v9 == 2)
      {
        v86 = *v151;
        v87 = *v8;
        result = sub_240B97084(*a3, *v151, *v8);
        if (result)
        {
          *v8 = v86;
          *v151 = v87;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v93 = *a3;

      return sub_240B971C8(v8, v8 + 1, v8 + 2, v151, v93);
    }

    if (v9 == 5)
    {
      sub_240B971C8(v8, v8 + 1, v8 + 2, v8 + 3, *a3);
      v79 = *v151;
      v80 = v8[3];
      v81 = *a3;
      result = sub_240B97084(*a3, *v151, v80);
      if (!result)
      {
        return result;
      }

      v8[3] = v79;
      *v151 = v80;
      v83 = v8[2];
      v82 = v8[3];
      result = sub_240B97084(v81, v82, v83);
      if (!result)
      {
        return result;
      }

      v8[2] = v82;
      v8[3] = v83;
      v84 = v8[1];
      result = sub_240B97084(v81, v82, v84);
      if (!result)
      {
        return result;
      }

      v8[1] = v82;
      v8[2] = v84;
      v85 = *v8;
      result = sub_240B97084(v81, v82, *v8);
      if (!result)
      {
        return result;
      }

      *v8 = v82;
      goto LABEL_172;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v94 = v8 + 1;
      v95 = v8 == v7 || v94 == v7;
      v96 = v95;
      if (a5)
      {
        if ((v96 & 1) == 0)
        {
          v97 = *a3;
          v98 = 4;
          v99 = v8;
          do
          {
            v101 = *v99;
            v100 = v99[1];
            v99 = v94;
            result = sub_240B97084(v97, v100, v101);
            if (result)
            {
              v102 = *a3;
              v103 = v98;
              v104 = v6;
              while (1)
              {
                *(v104 + v103) = v101;
                v105 = v103 - 4;
                if (v103 == 4)
                {
                  break;
                }

                v101 = *(v104 + v103 - 8);
                result = sub_240B97084(v102, v100, v101);
                v103 = v105;
                if ((result & 1) == 0)
                {
                  v106 = (v104 + v105);
                  goto LABEL_129;
                }
              }

              v106 = v104;
LABEL_129:
              v6 = v104;
              *v106 = v100;
            }

            v94 = v99 + 1;
            v98 += 4;
          }

          while (v99 + 1 != a2);
        }
      }

      else if ((v96 & 1) == 0)
      {
        v144 = *a3;
        do
        {
          v146 = *v6;
          v145 = v6[1];
          v6 = v94;
          result = sub_240B97084(v144, v145, v146);
          if (result)
          {
            v147 = v6;
            do
            {
              *v6 = v146;
              v146 = *(v6 - 2);
              result = sub_240B97084(v144, v145, v146);
              --v6;
            }

            while ((result & 1) != 0);
            *v6 = v145;
            v6 = v147;
          }

          v94 = v6 + 1;
        }

        while (v6 + 1 != a2);
      }

      return result;
    }

    v160 = v8;
    if (!a4)
    {
      if (v8 == v7)
      {
        return result;
      }

      v107 = *a3;
      v156 = v10 >> 1;
      v108 = v10 >> 1;
      v150 = *a3;
      do
      {
        v109 = v108;
        if (v156 >= v108)
        {
          v110 = (2 * v108) | 1;
          v111 = &v6[v110];
          v112 = *v111;
          if (2 * v108 + 2 < v9)
          {
            v113 = v111[1];
            if (sub_240B97084(v107, *v111, v113))
            {
              v112 = v113;
              ++v111;
              v110 = 2 * v109 + 2;
            }
          }

          v114 = &v6[v109];
          v115 = *v114;
          result = sub_240B97084(v107, v112, *v114);
          if ((result & 1) == 0)
          {
            v152 = v109;
            v116 = *a3;
            do
            {
              v117 = v111;
              *v114 = v112;
              if (v156 < v110)
              {
                break;
              }

              v118 = (2 * v110) | 1;
              v111 = &v6[v118];
              v119 = 2 * v110 + 2;
              v112 = *v111;
              if (v119 < v9)
              {
                v120 = v111[1];
                v121 = sub_240B97084(v116, *v111, v120);
                if (v121)
                {
                  v112 = v120;
                  ++v111;
                }

                v6 = v160;
                if (v121)
                {
                  v118 = v119;
                }
              }

              result = sub_240B97084(v116, v112, v115);
              v114 = v117;
              v110 = v118;
            }

            while (!result);
            *v117 = v115;
            v107 = v150;
            v109 = v152;
          }
        }

        v108 = v109 - 1;
      }

      while (v109);
      v153 = *a3;
      while (2)
      {
        v122 = 0;
        v157 = *v6;
        v123 = *a3;
        v124 = v6;
        do
        {
          v125 = &v124[v122];
          v126 = v125 + 1;
          v127 = v125[1];
          v128 = (2 * v122) | 1;
          v129 = 2 * v122 + 2;
          if (v129 >= v9)
          {
            v122 = (2 * v122) | 1;
          }

          else
          {
            v132 = v125[2];
            v130 = v125 + 2;
            v131 = v132;
            result = sub_240B97084(v123, v127, v132);
            if (result)
            {
              v127 = v131;
              v126 = v130;
              v122 = v129;
            }

            else
            {
              v122 = v128;
            }
          }

          *v124 = v127;
          v124 = v126;
        }

        while (v122 <= ((v9 - 2) >> 1));
        v133 = a2 - 1;
        v95 = v126 == --a2;
        if (!v95)
        {
          *v126 = *v133;
          *v133 = v157;
          v6 = v160;
          v134 = (v126 - v160 + 4) >> 2;
          v135 = v134 < 2;
          v136 = v134 - 2;
          if (!v135)
          {
            v137 = v136 >> 1;
            v138 = &v160[v136 >> 1];
            v139 = *v138;
            v140 = *v126;
            result = sub_240B97084(v153, *v138, *v126);
            if (result)
            {
              v141 = *a3;
              do
              {
                v142 = v138;
                *v126 = v139;
                if (!v137)
                {
                  break;
                }

                v137 = (v137 - 1) >> 1;
                v138 = &v160[v137];
                v139 = *v138;
                result = sub_240B97084(v141, *v138, v140);
                v126 = v142;
              }

              while ((result & 1) != 0);
              *v142 = v140;
LABEL_165:
              v6 = v160;
            }
          }

          v135 = v9-- <= 2;
          if (v135)
          {
            return result;
          }

          continue;
        }

        break;
      }

      *v126 = v157;
      goto LABEL_165;
    }

    v11 = &v8[v9 >> 1];
    v12 = v11;
    v13 = *v151;
    v14 = *a3;
    if (v9 >= 0x81)
    {
      v15 = *v11;
      v16 = *v6;
      v17 = sub_240B97084(*a3, *v11, *v6);
      v18 = sub_240B97084(v14, v13, v15);
      v154 = a4;
      if (v17)
      {
        if (v18)
        {
          *v6 = v13;
          goto LABEL_27;
        }

        *v6 = v15;
        *v11 = v16;
        v27 = *v151;
        if (sub_240B97084(v14, *v151, v16))
        {
          *v11 = v27;
LABEL_27:
          *v151 = v16;
        }
      }

      else if (v18)
      {
        *v11 = v13;
        *v151 = v15;
        v23 = *v11;
        v24 = *v6;
        if (sub_240B97084(v14, *v11, *v6))
        {
          *v6 = v23;
          *v11 = v24;
        }
      }

      v28 = v11 - 1;
      v29 = *(v11 - 1);
      v30 = v6[1];
      v31 = sub_240B97084(v14, v29, v30);
      v32 = *(v7 - 2);
      v33 = sub_240B97084(v14, v32, v29);
      if (v31)
      {
        if (v33)
        {
          v6[1] = v32;
          goto LABEL_39;
        }

        v6[1] = v29;
        *v28 = v30;
        v37 = *(v7 - 2);
        if (sub_240B97084(v14, v37, v30))
        {
          *v28 = v37;
LABEL_39:
          *(v7 - 2) = v30;
        }
      }

      else if (v33)
      {
        *v28 = v32;
        *(v7 - 2) = v29;
        v34 = *v28;
        v35 = v6[1];
        if (sub_240B97084(v14, *v28, v35))
        {
          v6[1] = v34;
          *v28 = v35;
        }
      }

      v40 = v11[1];
      v38 = v11 + 1;
      v39 = v40;
      v41 = v6[2];
      v42 = sub_240B97084(v14, v40, v41);
      v43 = *(v7 - 3);
      v44 = sub_240B97084(v14, v43, v40);
      if (v42)
      {
        if (v44)
        {
          v6[2] = v43;
          goto LABEL_48;
        }

        v6[2] = v39;
        *v38 = v41;
        v47 = *(v7 - 3);
        if (sub_240B97084(v14, v47, v41))
        {
          *v38 = v47;
LABEL_48:
          *(v7 - 3) = v41;
        }
      }

      else if (v44)
      {
        *v38 = v43;
        *(v7 - 3) = v39;
        v45 = *v38;
        v46 = v6[2];
        if (sub_240B97084(v14, *v38, v46))
        {
          v6[2] = v45;
          *v38 = v46;
        }
      }

      v48 = *v12;
      v49 = *v28;
      v50 = sub_240B97084(v14, *v12, *v28);
      v51 = *v38;
      v52 = sub_240B97084(v14, *v38, v48);
      if (v50)
      {
        if (!v52)
        {
          *v28 = v48;
          *v12 = v49;
          v28 = v12;
          v48 = v51;
          if (!sub_240B97084(v14, v51, v49))
          {
            v48 = v49;
LABEL_56:
            v53 = *v6;
            *v6 = v48;
            *v12 = v53;
            a4 = v154;
            goto LABEL_57;
          }
        }
      }

      else
      {
        if (!v52)
        {
          goto LABEL_56;
        }

        *v12 = v51;
        *v38 = v48;
        v38 = v12;
        v48 = v49;
        if (!sub_240B97084(v14, v51, v49))
        {
          v48 = v51;
          goto LABEL_56;
        }
      }

      *v28 = v51;
      *v38 = v49;
      goto LABEL_56;
    }

    v19 = *v6;
    v20 = *v11;
    v21 = sub_240B97084(*a3, *v6, *v11);
    v22 = sub_240B97084(v14, v13, v19);
    if (!v21)
    {
      if (v22)
      {
        *v6 = v13;
        *v151 = v19;
        v25 = *v6;
        v26 = *v11;
        if (sub_240B97084(v14, *v6, *v11))
        {
          *v11 = v25;
          *v6 = v26;
        }
      }

      goto LABEL_57;
    }

    if (v22)
    {
      *v11 = v13;
    }

    else
    {
      *v11 = v19;
      *v6 = v20;
      v36 = *v151;
      if (!sub_240B97084(v14, *v151, v20))
      {
        goto LABEL_57;
      }

      *v6 = v36;
    }

    *v151 = v20;
LABEL_57:
    --a4;
    v54 = *v6;
    if ((a5 & 1) != 0 || sub_240B97084(v14, *(v6 - 1), *v6))
    {
      v55 = *a3;
      v56 = v6;
      do
      {
        v57 = v56;
        v59 = v56[1];
        ++v56;
        v58 = v59;
      }

      while (sub_240B97084(v55, v59, v54));
      v60 = v7;
      if (v57 == v6)
      {
        v60 = v7;
        do
        {
          if (v56 >= v60)
          {
            break;
          }

          v62 = *--v60;
        }

        while (!sub_240B97084(v55, v62, v54));
      }

      else
      {
        do
        {
          v61 = *--v60;
        }

        while (!sub_240B97084(v55, v61, v54));
      }

      v155 = a4;
      if (v56 < v60)
      {
        v63 = *v60;
        v64 = v56;
        v65 = v60;
        do
        {
          *v64 = v63;
          *v65 = v58;
          do
          {
            v57 = v64;
            v66 = v64[1];
            ++v64;
            v58 = v66;
          }

          while (sub_240B97084(v55, v66, v54));
          do
          {
            v67 = *--v65;
            v63 = v67;
          }

          while (!sub_240B97084(v55, v67, v54));
        }

        while (v64 < v65);
      }

      if (v57 != v6)
      {
        *v6 = *v57;
      }

      *v57 = v54;
      a4 = v155;
      v7 = a2;
      if (v56 < v60)
      {
        goto LABEL_78;
      }

      v68 = sub_240B9732C(v6, v57, a3);
      v8 = v57 + 1;
      result = sub_240B9732C(v57 + 1, a2, a3);
      if (result)
      {
        a2 = v57;
        if (v68)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v68)
      {
LABEL_78:
        result = sub_240B95FEC(v6, v57, a3, v155, a5 & 1);
        a5 = 0;
        v8 = v57 + 1;
      }
    }

    else
    {
      result = sub_240B97084(v14, v54, *v151);
      v69 = *a3;
      if (result)
      {
        v8 = v6;
        do
        {
          v70 = v8[1];
          ++v8;
          result = sub_240B97084(v69, v54, v70);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v71 = v6 + 1;
        do
        {
          v8 = v71;
          if (v71 >= v7)
          {
            break;
          }

          ++v71;
          result = sub_240B97084(v69, v54, *v8);
        }

        while (!result);
      }

      v72 = v7;
      if (v8 < v7)
      {
        v72 = v7;
        do
        {
          v73 = *--v72;
          result = sub_240B97084(v69, v54, v73);
        }

        while ((result & 1) != 0);
      }

      if (v8 < v72)
      {
        v74 = *v8;
        v75 = *v72;
        do
        {
          *v8 = v75;
          *v72 = v74;
          do
          {
            v76 = v8[1];
            ++v8;
            v74 = v76;
          }

          while (!sub_240B97084(v69, v54, v76));
          do
          {
            v77 = *--v72;
            v75 = v77;
            result = sub_240B97084(v69, v54, v77);
          }

          while ((result & 1) != 0);
        }

        while (v8 < v72);
      }

      v78 = v8 - 1;
      if (v8 - 1 != v160)
      {
        *v160 = *v78;
      }

      a5 = 0;
      *v78 = v54;
    }
  }

  v88 = *v8;
  v89 = v8[1];
  v90 = *a3;
  v91 = sub_240B97084(*a3, v89, *v8);
  v92 = *v151;
  result = sub_240B97084(v90, *v151, v89);
  if (!v91)
  {
    if (!result)
    {
      return result;
    }

    v6[1] = v92;
    *v151 = v89;
    v85 = *v6;
    v143 = v6[1];
    result = sub_240B97084(v90, v143, *v6);
    if (!result)
    {
      return result;
    }

    *v6 = v143;
LABEL_172:
    v6[1] = v85;
    return result;
  }

  if (result)
  {
    *v6 = v92;
  }

  else
  {
    *v6 = v89;
    v6[1] = v88;
    v148 = *v151;
    result = sub_240B97084(v90, *v151, v88);
    if (!result)
    {
      return result;
    }

    v6[1] = v148;
  }

  *v151 = v88;
  return result;
}

void *sub_240B96BCC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0x666666666666667)
    {
      sub_240B839AC(a2);
    }

    sub_240B228BC();
  }

  return result;
}

uint64_t sub_240B96C94(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = v2 - v5;
    sub_240BC219C(&__dst, a1, 1uLL, v2 - v5);
    result = v15;
    if (v15)
    {
      break;
    }

    v8 = __dst;
    v9 = __dst;
    v10 = v13;
    v11 = v14;
    __dst = 0;
    *&v13 = 0;
    if (v10 < v6)
    {
      v6 = v10;
    }

    memcpy(v8, (a2[2] + v5), v6);
    v9 += v6;
    *&v10 = v10 - v6;
    *(&v10 + 1) += v6;
    sub_240B96F0C(&v9);
    if (!v15)
    {
      sub_240B96F0C(&__dst);
    }

    v5 += v6;
    if (v5 >= v2)
    {
      return 0;
    }
  }

  return result;
}

void sub_240B96D78(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; sub_240B96E98(i))
    {
      i -= 176;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

uint64_t sub_240B96DF4(uint64_t a1)
{
  v2 = *(a1 + 5240);
  if (v2)
  {
    *(a1 + 5248) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 5208);
  if (v3)
  {
    *(a1 + 5216) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 5184);
  sub_240B96D78(&v5);
  sub_240B7BB60(a1 + 4544);
  v5 = (a1 + 4248);
  sub_240B94820(&v5);
  v5 = (a1 + 4224);
  sub_240B9489C(&v5);

  return sub_240B4BA48(a1);
}

void sub_240B96E98(uint64_t a1)
{
  v2 = (a1 + 48);
  v5 = (a1 + 152);
  sub_240B30C38(&v5);
  v3 = *(a1 + 80);
  if (v3)
  {
    *(a1 + 88) = v3;
    operator delete(v3);
  }

  v5 = v2;
  sub_240B7BC3C(&v5);
  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  v5 = a1;
  sub_240B31E8C(&v5);
}

void *sub_240B96F0C(void *a1)
{
  if (*a1)
  {
    v3 = a1[2];
    v2 = a1[3];
    *(v2 + 65) = 0;
    v4 = *(v2 + 8);
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 40);
    v6 = (v2 + 8);
    do
    {
      v7 = v4[4];
      v8 = v7 >= v5;
      v9 = v7 < v5;
      if (v8)
      {
        v6 = v4;
      }

      v4 = v4[v9];
    }

    while (v4);
    if (v6 == (v2 + 8) || v5 < v6[4])
    {
LABEL_10:
      v6 = (v2 + 8);
    }

    if (v3)
    {
      v6[5] = v3;
      *(v2 + 40) += v3;
      v10 = *(v2 + 72);
      if (v10)
      {
        if (v6[6])
        {
          v11 = v10[3];
          if (v11)
          {
            v11(*v10);
            *(v2 + 56) = *(v2 + 40) - v3;
            while (1)
            {
              v12 = *(v2 + 56);
              v13 = *(v2 + 40);
              if (v13 <= v12)
              {
                break;
              }

              if ((sub_240BC2700(v2, (v6[8] + v12 - v13 + v3), v13 - v12) & 1) == 0)
              {
                goto LABEL_22;
              }
            }

            sub_240B4ADF0(v6 + 6, 0);
            v6[6] = 0;
          }
        }

        else
        {
          (v10[2])(*v10, v3);
          if (*(*(v2 + 72) + 24))
          {
            *(v2 + 56) += v3;
          }

          else
          {
            sub_240BC2554(v2);
          }
        }
      }
    }

    else
    {
      v14 = *(v2 + 72);
      if (v14)
      {
        (*(v14 + 16))(*v14, 0);
      }

      sub_240BC27A8(v2, v6);
    }
  }

LABEL_22:
  *a1 = 0;
  a1[1] = 0;
  return a1;
}

BOOL sub_240B97084(void **a1, unsigned int a2, unsigned int a3)
{
  v3 = (*a1)[10];
  v4 = (*a1)[16];
  v5 = *a1[1] >> 1;
  v6 = v4 * (a2 % v3) + v5;
  v7 = *a1[2];
  v8 = v6 - v7;
  v9 = *a1[3];
  v10 = v4 * (a2 / v3) + v5 - v9;
  if (v6 - v7 >= 0)
  {
    v11 = v6 - v7;
  }

  else
  {
    v11 = v7 - v6;
  }

  if (v10 >= 0)
  {
    v12 = v4 * (a2 / v3) + v5 - v9;
  }

  else
  {
    v12 = v9 - (v4 * (a2 / v3) + v5);
  }

  if (v11 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  v14 = v5 - v7 + a3 % v3 * v4;
  v15 = v5 - v9 + a3 / v3 * v4;
  if (v14 >= 0)
  {
    v16 = v14;
  }

  else
  {
    v16 = -v14;
  }

  if (v15 >= 0)
  {
    v17 = v15;
  }

  else
  {
    v17 = -v15;
  }

  if (v16 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  if (v13 < v18)
  {
    return 1;
  }

  v20 = *a1[4];
  v21 = atan2(v15, v14);
  v22 = remainder(v21 + 0.785398163 + v20 * 1.57079633, 6.28318531);
  v23 = atan2(v10, v8);
  return remainder(v23 + 0.785398163 + v20 * 1.57079633, 6.28318531) < v22 && v18 >= v13;
}

BOOL sub_240B971C8(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, void **a5)
{
  v10 = *a2;
  v11 = *a1;
  v12 = sub_240B97084(a5, *a2, *a1);
  v13 = *a3;
  v14 = sub_240B97084(a5, *a3, v10);
  if (v12)
  {
    if (v14)
    {
      *a1 = v13;
LABEL_9:
      *a3 = v11;
      v10 = v11;
      goto LABEL_11;
    }

    *a1 = v10;
    *a2 = v11;
    v10 = *a3;
    if (sub_240B97084(a5, *a3, v11))
    {
      *a2 = v10;
      goto LABEL_9;
    }
  }

  else if (v14)
  {
    *a2 = v13;
    *a3 = v10;
    v15 = *a2;
    v16 = *a1;
    if (sub_240B97084(a5, *a2, *a1))
    {
      *a1 = v15;
      *a2 = v16;
      v10 = *a3;
    }
  }

  else
  {
    v10 = v13;
  }

LABEL_11:
  v17 = *a4;
  result = sub_240B97084(a5, *a4, v10);
  if (result)
  {
    *a3 = v17;
    *a4 = v10;
    v19 = *a3;
    v20 = *a2;
    result = sub_240B97084(a5, *a3, *a2);
    if (result)
    {
      *a2 = v19;
      *a3 = v20;
      v21 = *a2;
      v22 = *a1;
      result = sub_240B97084(a5, *a2, *a1);
      if (result)
      {
        *a1 = v21;
        *a2 = v22;
      }
    }
  }

  return result;
}

BOOL sub_240B9732C(unsigned int *a1, unsigned int *a2, void ***a3)
{
  v3 = a3;
  v4 = a2;
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v15 = *a1;
        v16 = a1[1];
        v11 = *a3;
        v17 = sub_240B97084(*a3, v16, *a1);
        v18 = *(v4 - 1);
        v19 = sub_240B97084(v11, v18, v16);
        if (v17)
        {
          if (v19)
          {
            *a1 = v18;
          }

          else
          {
            *a1 = v16;
            a1[1] = v15;
            v45 = *(v4 - 1);
            if (!sub_240B97084(v11, v45, v15))
            {
              return 1;
            }

            a1[1] = v45;
          }

          *(v4 - 1) = v15;
          return 1;
        }

        if (!v19)
        {
          return 1;
        }

        a1[1] = v18;
        *(v4 - 1) = v16;
        v12 = a1[1];
        break;
      case 4:
        sub_240B971C8(a1, a1 + 1, a1 + 2, a2 - 1, *a3);
        return 1;
      case 5:
        sub_240B971C8(a1, a1 + 1, a1 + 2, a1 + 3, *a3);
        v9 = *(v4 - 1);
        v10 = a1[3];
        v11 = *v3;
        if (!sub_240B97084(v11, v9, v10))
        {
          return 1;
        }

        a1[3] = v9;
        *(v4 - 1) = v10;
        v13 = a1[2];
        v12 = a1[3];
        if (!sub_240B97084(v11, v12, v13))
        {
          return 1;
        }

        a1[2] = v12;
        a1[3] = v13;
        v14 = a1[1];
        if (!sub_240B97084(v11, v12, v14))
        {
          return 1;
        }

        a1[1] = v12;
        a1[2] = v14;
        break;
      default:
        goto LABEL_16;
    }

    v31 = *a1;
    if (sub_240B97084(v11, v12, *a1))
    {
      *a1 = v12;
      a1[1] = v31;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *(a2 - 1);
    v8 = *a1;
    if (sub_240B97084(*a3, v7, *a1))
    {
      *a1 = v7;
      *(v4 - 1) = v8;
    }

    return 1;
  }

LABEL_16:
  v21 = a1 + 1;
  v20 = a1[1];
  v22 = *a1;
  v23 = *a3;
  v24 = sub_240B97084(*a3, v20, *a1);
  v25 = a1 + 2;
  v26 = a1[2];
  v27 = sub_240B97084(v23, v26, v20);
  if (v24)
  {
    v28 = a1;
    v29 = a1 + 2;
    if (!v27)
    {
      *a1 = v20;
      a1[1] = v22;
      v30 = sub_240B97084(v23, v26, v22);
      v28 = a1 + 1;
      v29 = a1 + 2;
      if (!v30)
      {
        goto LABEL_28;
      }
    }

LABEL_27:
    *v28 = v26;
    *v29 = v22;
    goto LABEL_28;
  }

  if (v27)
  {
    *v21 = v26;
    *v25 = v20;
    v32 = sub_240B97084(v23, v26, v22);
    v28 = a1;
    v29 = a1 + 1;
    if (v32)
    {
      goto LABEL_27;
    }
  }

LABEL_28:
  v33 = a1 + 3;
  if (a1 + 3 == v4)
  {
    return 1;
  }

  v34 = 0;
  v35 = 12;
  v47 = v4;
  while (1)
  {
    v36 = *v33;
    v37 = *v25;
    if (sub_240B97084(v23, *v33, v37))
    {
      v38 = v23;
      v39 = v3;
      v40 = *v3;
      v41 = v35;
      while (1)
      {
        *(a1 + v41) = v37;
        v42 = v41 - 4;
        if (v41 == 4)
        {
          break;
        }

        v37 = *(a1 + v41 - 8);
        v43 = sub_240B97084(v40, v36, v37);
        v41 = v42;
        if (!v43)
        {
          v44 = (a1 + v42);
          goto LABEL_36;
        }
      }

      v44 = a1;
LABEL_36:
      *v44 = v36;
      ++v34;
      v3 = v39;
      v23 = v38;
      v4 = v47;
      if (v34 == 8)
      {
        return v33 + 1 == v47;
      }
    }

    v25 = v33;
    v35 += 4;
    if (++v33 == v4)
    {
      return 1;
    }
  }
}

uint64_t sub_240B9766C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2852A1CB8;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  *(a1 + 21) = *(a2 + 21);
  *(a1 + 16) = v4;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  sub_240B28D90(a1 + 32, *(a2 + 32), *(a2 + 40), *(a2 + 40) - *(a2 + 32));
  v5 = *(a2 + 56);
  v6 = *(a2 + 72);
  v7 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v7;
  *(a1 + 72) = v6;
  *(a1 + 56) = v5;
  *(a1 + 112) = &unk_2852A1260;
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = &unk_2852A1A10;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = &unk_2852A1260;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = &unk_2852A1260;
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = &unk_2852A1260;
  *(a1 + 192) = *(a2 + 192);
  return a1;
}

void *sub_240B977BC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0x666666666666667)
    {
      sub_240B59980(a2);
    }

    sub_240B228BC();
  }

  return result;
}

uint64_t sub_240B97884(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, unsigned int *a6, unsigned int *a7, BOOL *a8)
{
  v47 = *MEMORY[0x277D85DE8];
  v40 = xmmword_240C85160;
  v41 = 0;
  (a1[1])(*a1, &v40);
  v17 = v40 == 2 || v40 == 4;
  *a8 = v17;
  v18 = *(a3 + 64);
  if (v18 == 2)
  {
    v19 = *(a3 + 68);
  }

  else if (v18 == 1)
  {
    v19 = *(a4 + 28);
  }

  else if (v18 || DWORD1(v40) >= 6)
  {
    v19 = 0;
  }

  else
  {
    v19 = dword_240C83EA8[DWORD1(v40)];
  }

  v39 = 0;
  v20 = (a1[2])(*a1, *a2, a2[1], a2[2], a2[3], &v39);
  *&v44 = &unk_2852A3770;
  *(&v44 + 1) = a1;
  v46 = &v44;
  v42 = v20;
  sub_240BA271C(v43, &v44);
  sub_240BA279C(&v44);
  v21 = v42;
  if (v42 && ((*(a3 + 1) & (*(a4 + 104) == 1)) != 0 ? (v22 = 1) : (v22 = 3), v22 <= v40))
  {
    v37 = *(a3 + 1) & (*(a4 + 104) == 1);
    v38 = a7;
    v26 = 0;
    v27 = v19;
    v28 = a6;
    while (1)
    {
      v29 = a2[2];
      v30 = a2[3];
      v44 = v40;
      v45 = v41;
      v23 = sub_240B90560(v21, v29, v30, v39, v27, &v44, v26, a5, *&v40, v28);
      if (v23)
      {
        break;
      }

      ++v26;
      v28 += 40;
      if (v22 == v26)
      {
        if (v37)
        {
          sub_240BA297C(a6, (a6 + 10));
          sub_240BA297C(a6, (a6 + 20));
        }

        if (v38)
        {
          if (*a8)
          {
            v31 = a2[2];
            v32 = a2[3];
            v44 = v40;
            v45 = v41;
            if (sub_240B90560(v21, v31, v32, v39, v27, &v44, (v40 - 1), a5, *&v40, v38))
            {
              goto LABEL_20;
            }
          }

          else
          {
            v33 = v38[1];
            if (v33)
            {
              v35 = *(v38 + 2);
              v34 = *(v38 + 3);
              v36 = *v38;
              do
              {
                if (v36)
                {
                  memset_pattern16(v34, &unk_240C11AC0, 4 * v36);
                }

                v34 += v35;
                --v33;
              }

              while (v33);
            }
          }
        }

        v23 = 0;
        break;
      }
    }
  }

  else
  {
LABEL_20:
    v23 = 1;
  }

  sub_240BA281C(&v42);
  sub_240BA279C(v43);
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

void sub_240B97B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  sub_240BA281C(va);
  sub_240BA279C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_240B97B7C(void *a1, void *a2, uint64_t a3, uint64_t a4, char a5, void *a6, void *a7)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = *(a4 + 320);
  if (!v7)
  {
LABEL_19:
    result = 0;
    goto LABEL_22;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  while (1)
  {
    if ((a5 & 1) != 0 && !*(*(a4 + 328) + v13 + 12))
    {
      a5 = 0;
      goto LABEL_16;
    }

    v28 = 0;
    v27 = xmmword_240C83DA0;
    (a1[3])(*a1, v15, &v27);
    LODWORD(v27) = 1;
    v26 = 0;
    v16 = (a1[4])(*a1, v15, *a2, a2[1], a2[2], a2[3], &v26);
    *&v31 = &off_2852A37F0;
    *(&v31 + 1) = a1;
    v33 = &v31;
    v29 = v16;
    sub_240BA271C(v30, &v31);
    sub_240BA279C(&v31);
    if (!v29)
    {
      break;
    }

    v17 = *(a3 + 64);
    if (v17 == 2)
    {
      v18 = HIDWORD(v17);
    }

    else if (v17 == 1)
    {
      v18 = *(*(a4 + 328) + v13 + 28);
    }

    else if (v17 || DWORD1(v27) >= 6)
    {
      v18 = 0;
    }

    else
    {
      v18 = dword_240C83EA8[DWORD1(v27)];
    }

    v19 = a2[2];
    v20 = a2[3];
    v31 = v27;
    v32 = v28;
    v21 = sub_240B90560(v29, v19, v20, v26, v18, &v31, 0, a6, *&v27, *a7 + v14);
    sub_240BA281C(&v29);
    sub_240BA279C(v30);
    if (v21)
    {
      goto LABEL_21;
    }

    v7 = *(a4 + 320);
LABEL_16:
    ++v15;
    v14 += 40;
    v13 += 96;
    if (v15 >= v7)
    {
      goto LABEL_19;
    }
  }

  sub_240BA281C(&v29);
  sub_240BA279C(v30);
LABEL_21:
  result = 1;
LABEL_22:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240B97DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  sub_240BA281C(va);
  sub_240BA279C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_240B97DD0(uint64_t a1)
{
  if (*(a1 + 68) == 1 && (*a1 != 0.0 || !*(a1 + 64)))
  {
    return 0;
  }

  for (i = *(a1 + 8); i != *(a1 + 16); ++i)
  {
    if (*i > 0.0 || *i < 0.0 && *a1 != 0.0)
    {
      return 0;
    }
  }

  return 1;
}

unsigned int *sub_240B97E30(unsigned int *result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = 0;
  v5 = result[1];
  do
  {
    if (v5)
    {
      v6 = 0;
      v7 = *(result + 2);
      v8 = *&result[10 * v4 + 6];
      v9 = *result;
      v10 = v8 + 4;
      v11 = a3 + 4;
      do
      {
        if (v6)
        {
          v12 = v8 + v7 * (v6 - 1);
        }

        else
        {
          v12 = 0;
        }

        v13 = v6 + 1;
        if (v6 + 1 < v5)
        {
          v14 = v8 + v7 * (v6 + 1);
        }

        else
        {
          v14 = 0;
        }

        v15 = a3 + (v6 - 1) * a2;
        if (!v6)
        {
          v15 = 0;
        }

        if (v13 < v5)
        {
          v16 = a3 + v13 * a2;
        }

        else
        {
          v16 = 0;
        }

        if (v9)
        {
          v17 = 0;
          v18 = v14 + 4;
          v19 = v16 + 4;
          v20 = 1;
          do
          {
            if (*(v11 + v17 - 4) == 0.0)
            {
              v21 = v10 + v17;
              *(v10 + v17 - 4) = 0;
              if ((a4 & 1) == 0)
              {
                if (v17)
                {
                  v22 = *(v10 + v17 - 8);
                  v23 = v22 + 0.0;
                  *(v21 - 4) = v22 + 0.0;
                  v24 = 1.0;
                  if (*(v11 + v17 - 8) > 0.0)
                  {
                    v23 = v22 + v23;
                    *(v21 - 4) = v23;
                    v24 = 2.0;
                  }
                }

                else
                {
                  v23 = 0.0;
                  v24 = 0.0;
                }

                if (v20 < v9)
                {
                  if (v6)
                  {
                    v23 = *(v12 + v17 + 4) + v23;
                    *(v21 - 4) = v23;
                    v24 = v24 + 1.0;
                  }

                  if (*(v11 + v17) > 0.0)
                  {
                    v23 = v23 + (*(v10 + v17) * 2.0);
                    *(v21 - 4) = v23;
                    v24 = v24 + 2.0;
                  }

                  if (v6 && *(v15 + v17 + 4) > 0.0)
                  {
                    v23 = v23 + (*(v12 + v17 + 4) * 2.0);
                    *(v21 - 4) = v23;
                    v24 = v24 + 2.0;
                  }

                  if (v13 < v5 && *(v19 + v17) > 0.0)
                  {
                    v23 = v23 + (*(v18 + v17) * 2.0);
                    *(v21 - 4) = v23;
                    v24 = v24 + 2.0;
                  }
                }

                if (v6 && *(v15 + v17) > 0.0)
                {
                  v23 = v23 + (*(v12 + v17) * 2.0);
                  *(v21 - 4) = v23;
                  v24 = v24 + 2.0;
                }

                if (v13 < v5 && *(v19 + v17 - 4) > 0.0)
                {
                  v23 = v23 + (*(v18 + v17 - 4) * 2.0);
                  *(v21 - 4) = v23;
                  v24 = v24 + 2.0;
                }

                if (v24 > 1.0)
                {
                  *(v21 - 4) = v23 / v24;
                }
              }
            }

            v17 += 4;
            ++v20;
          }

          while (4 * v9 != v17);
        }

        v11 += a2;
        v10 += v7;
        ++v6;
      }

      while (v13 != v5);
    }

    ++v4;
  }

  while (v4 != 3);
  return result;
}

uint64_t sub_240B98048(uint64_t result, void *a2, uint64_t *a3, _DWORD *a4)
{
  if (!a4[3] && (*(result + 32) & 1) == 0)
  {
    v4 = 0;
    v5 = 2;
    a4[17] = 2;
    v6 = *(result + 392);
    do
    {
      if (v6 > *&dword_240C11A90[v4])
      {
        a4[17] = ++v5;
      }

      ++v4;
    }

    while (v4 != 4);
    if (*result < 0.299)
    {
      a4[17] = ++v5;
    }

    if (*(result + 48) > 3)
    {
      v46 = 0;
      v45 = 0.0;
      v47 = 0.0;
    }

    else
    {
      v7 = a3[3];
      if (v7 < 2)
      {
        v46 = 0;
        v33 = 0.0;
        v45 = 0.0;
        v32 = 0.0;
      }

      else
      {
        v9 = a3[1];
        v8 = a3[2];
        v10 = *a3;
        v11 = a2[2];
        v12 = v9 * v11 + 4 * *a3 + a2[3];
        v13 = (v12 + v11);
        v14 = (v12 + 4);
        v15 = 0;
        for (i = 1; i != v7; ++i)
        {
          v17 = v14;
          v18 = v13;
          v19 = v8 - 1;
          if (v8 >= 2)
          {
            do
            {
              v20 = *v18;
              v18 = (v18 + 4);
              v21.i32[0] = vdup_lane_s32(v20, 1).u32[0];
              v21.i32[1] = *v17++;
              v22 = vabd_f32(v20, v21);
              v15 = vbsl_s8(vcgt_f32(v22, v15), v22, v15);
              --v19;
            }

            while (v19);
          }

          v13 = (v13 + v11);
          v14 = (v14 + v11);
        }

        v24 = a2[7];
        v23 = a2[8];
        v26 = a2[12];
        v25 = a2[13];
        result = v9 * v24 + 4 * v10 + v23 + 4;
        v27 = v9 * v26 + 4 * v10 + v25 + 4;
        v28 = v26 * (v9 + 1) + 4 * v10 + v25 + 4;
        v29 = v24 * (v9 + 1) + 4 * v10 + v23 + 4;
        v30 = 0.0;
        v31 = 1;
        v32 = 0.0;
        v33 = 0.0;
        do
        {
          if (v8 >= 2)
          {
            v34 = 0;
            v35 = *(v25 + v26 * (v31 + v9) + 4 * v10);
            v36 = *(v23 + v24 * (v31 + v9) + 4 * v10);
            do
            {
              v37 = v36;
              v36 = *(v29 + 4 * v34);
              v38 = *(v28 + 4 * v34);
              v39 = v35 - v37;
              v40 = v38 + v36 * -1.2;
              v41 = *(v27 + 4 * v34);
              v42 = vabds_f32(v38 - v36, v39);
              if (v32 < v42)
              {
                v32 = v42;
              }

              v43 = vabds_f32(v38 - v36, v41 - *(result + 4 * v34));
              if (v33 < v43)
              {
                v33 = v43;
              }

              if (v40 >= 0.0)
              {
                v44 = (vabds_f32(v38, v35) + vabds_f32(v38, v41)) * v40;
                if (v30 < v44)
                {
                  v30 = v44;
                }
              }

              ++v34;
              v35 = v38;
            }

            while (v8 - 1 != v34);
          }

          ++v31;
          result += v24;
          v27 += v26;
          v28 += v26;
          v29 += v24;
        }

        while (v31 != v7);
        if (v15.f32[0] < v15.f32[1])
        {
          v15.f32[0] = v15.f32[1];
        }

        v45 = v15.f32[0];
        v46 = v30 >= 0.13;
      }

      if (v32 >= v33)
      {
        v48 = v32;
      }

      else
      {
        v48 = v33;
      }

      v47 = v48;
    }

    if (v45 < 0.017)
    {
      v49 = 2;
    }

    else
    {
      v49 = 3;
    }

    if (v45 >= 0.03)
    {
      v49 = 4;
    }

    if (v5 <= v49)
    {
      v5 = v49;
    }

    a4[17] = v5;
    if (v47 <= 0.38)
    {
      if (v47 <= 0.33)
      {
        v50 = v47 > 0.28 && v46;
      }

      else if (v46)
      {
        v50 = 2;
      }

      else
      {
        v50 = 1;
      }
    }

    else if (v46)
    {
      v50 = 3;
    }

    else
    {
      v50 = 2;
    }

    a4[18] = v50 + 2;
  }

  return result;
}

void sub_240B98344(uint64_t a1, char a2, char a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, _OWORD *a8)
{
  v9 = *(a1 + 192);
  if (v9 <= 0.0)
  {
    v21 = *(a1 + 416);
    if (*(a1 + 424) - v21 == 32)
    {
      for (i = 0; i != 32; i += 4)
      {
        *(a8 + i) = *(v21 + i);
      }
    }

    else if (!*(a7 + 12) && (*(a7 + 24) & 1) != 0 && (a3 & 1) == 0 && (a2 & 1) == 0)
    {
      v24 = (*a1 + -1.0) / 0.6;
      v25 = (v24 * 0.75) + 0.25;
      if (v24 >= 1.0)
      {
        v25 = 1.0;
      }

      if (v24 >= 0.0)
      {
        v26 = v25;
      }

      else
      {
        v26 = 1.0;
      }

      bzero(v180, 0x400uLL);
      v27 = (*a4 >> 3) * (a4[1] >> 3);
      v207.i32[0] = 0;
      sub_240B83618(__p, v27);
      v28 = a4[1];
      if (v28 >= 8)
      {
        LODWORD(v29) = 0;
        LODWORD(v30) = 0;
        LODWORD(v31) = *a4;
        v32 = 8;
        do
        {
          v33 = v29;
          v29 = v32;
          if (v31 >= 8)
          {
            v34 = 0;
            v35 = v33;
            v36 = v33 + 2;
            v30 = v30;
            v37 = 8;
            do
            {
              v203.i32[0] = 0;
              sub_240B83618(&v207, 0x14uLL);
              v38 = 0;
              v39 = 0;
              v40 = 4 * v34;
              v41 = *(a4 + 8);
              v42 = *(a4 + 2);
              v43 = *(a4 + 3);
              v44 = v40 + v36 * v42;
              v45 = v43 + v44;
              v46 = v41 + v44;
              v47 = v40 + v35 * v42;
              v48 = v43 + v47;
              v49 = v41 + v47;
              v50 = v207.i64[0];
              v51 = v45 + 8;
              v52 = v46 + 8;
              do
              {
                v53 = 0;
                v54 = v39;
                v55 = v49;
                v56 = v48;
                do
                {
                  v57 = 0;
                  v58 = 0.0;
                  v59 = v55;
                  v60 = v56;
                  v61 = v52;
                  v62 = v51;
                  do
                  {
                    for (j = 0; j != 12; j += 4)
                    {
                      v58 = v58 + vabds_f32((*(v61 + j) + *(v62 + j)) * 0.5, (*(v59 + j) + *(v60 + j)) * 0.5);
                    }

                    ++v57;
                    v62 += v42;
                    v61 += v42;
                    v60 += v42;
                    v59 += v42;
                  }

                  while (v57 != 4);
                  *(v50 + 4 * v54) = v58;
                  v39 = v54 + 1;
                  ++v53;
                  v56 += 4;
                  v55 += 4;
                  ++v54;
                }

                while (v53 != 5);
                ++v38;
                v48 += v42;
                v49 += v42;
              }

              while (v38 != 4);
              std::__sort<std::__less<float,float> &,float *>();
              v64 = 0.0;
              v65 = v207.i64[0];
              do
              {
                v66 = *v65++;
                v64 = v64 + v66;
              }

              while (v65 != (v207.i64[0] + 40));
              if (v207.i64[0])
              {
                v207.i64[1] = v207.i64[0];
                operator delete(v207.i64[0]);
              }

              *(__p[0] + v30) = v64 / 10.0;
              v67 = vcvts_n_s32_f32(v64 / 10.0, 8uLL);
              v68 = v67 & ~(v67 >> 31);
              if (v68 >= 255)
              {
                v68 = 255;
              }

              ++*(v180 + v68);
              ++v30;
              v37 += 8;
              v31 = *a4;
              v34 += 8;
            }

            while (v37 <= v31);
            v28 = a4[1];
          }

          v32 = v29 + 8;
        }

        while (v29 + 8 <= v28);
      }

      v69 = 0;
      v70 = 0;
      do
      {
        if (*(v180 + v69) > *(v180 + v70))
        {
          v70 = v69;
        }

        ++v69;
      }

      while (v69 != 256);
      v71 = vcvts_n_f32_s32(v70, 8uLL);
      if (v71 > 0.15 || v71 <= 0.0)
      {
        v74 = 0;
        *a8 = 0u;
        a8[1] = 0u;
      }

      else
      {
        v72 = 0.0;
        v170 = v26;
        if (v28 >= 8)
        {
          v75 = 0;
          __src = 0;
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v79 = *a4;
          v80 = 8;
          v81.i64[0] = 0x3F0000003F000000;
          v81.i64[1] = 0x3F0000003F000000;
          do
          {
            if (v79 >= 8)
            {
              v173 = v80;
              v82 = 0;
              v83 = 0;
              v84 = 8;
              do
              {
                v85 = v84;
                if (*(__p[0] + v78) <= v71)
                {
                  v86 = 0;
                  v87 = *(a4 + 8);
                  v88 = *(a4 + 2);
                  v89 = *(a4 + 3);
                  v90 = v82 + v75 * v88;
                  v91 = 0.0;
                  do
                  {
                    v92 = v90;
                    v93 = 8;
                    do
                    {
                      v94 = vmulq_f32(vaddq_f32(*(v87 + v92), *(v89 + v92)), v81);
                      v91 = (((v91 + v94.f32[0]) + v94.f32[1]) + v94.f32[2]) + v94.f32[3];
                      v92 += 16;
                      v93 -= 4;
                    }

                    while (v93);
                    ++v86;
                    v90 += v88;
                  }

                  while (v86 != 8);
                  v95 = 0;
                  v96 = 0.0;
                  do
                  {
                    v97 = 0;
                    v98 = v95 + v75;
                    do
                    {
                      v99 = v97 | v83;
                      v100 = 0.0;
                      v101 = -1;
                      v102 = &dword_240C84FC8;
                      do
                      {
                        if ((v101 + v95) >= 8)
                        {
                          v109 = (v98 - v101) * v88;
                          v110 = v87 + v109;
                          v111 = v89 + v109;
                          v112 = -1;
                          v113 = v102;
                          v114 = 1;
                          do
                          {
                            if ((v97 + v112) >= 8)
                            {
                              v115 = v114;
                            }

                            else
                            {
                              v115 = v112;
                            }

                            v116 = *v113++;
                            v100 = v100 + (((*(v110 + 4 * (v115 + v99)) + *(v111 + 4 * (v115 + v99))) * 0.5) * v116);
                            --v114;
                            ++v112;
                          }

                          while (v112 != 2);
                        }

                        else
                        {
                          v103 = 0;
                          v104 = (v101 + v98) * v88;
                          v105 = v87 + v104;
                          v106 = v89 + v104;
                          v107 = 1;
                          do
                          {
                            v108 = v103 - 1;
                            if ((v103 - 1 + v97) >= 8)
                            {
                              v108 = v107;
                            }

                            v100 = v100 + (((*(v105 + 4 * (v108 + v99)) + *(v106 + 4 * (v108 + v99))) * 0.5) * *&v102[v103++]);
                            --v107;
                          }

                          while (v103 != 3);
                        }

                        ++v101;
                        v102 += 3;
                      }

                      while (v101 != 2);
                      v96 = v96 + fabsf(v100);
                      ++v97;
                    }

                    while (v97 != 8);
                    ++v95;
                  }

                  while (v95 != 8);
                  v117 = (v77 - __src) >> 3;
                  v118 = v117 + 1;
                  if ((v117 + 1) >> 61)
                  {
                    sub_240B228BC();
                  }

                  if (-__src >> 2 > v118)
                  {
                    v118 = -__src >> 2;
                  }

                  if (-__src >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v119 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v119 = v118;
                  }

                  if (v119)
                  {
                    sub_240B299F4(v119);
                  }

                  v120 = (8 * v117);
                  *v120 = v96 * 0.015625;
                  v120[1] = v91 * 0.015625;
                  v77 = 8 * v117 + 8;
                  v121 = 8 * v117 - (v76 - __src);
                  memcpy(v120 - (v76 - __src), __src, v76 - __src);
                  if (__src)
                  {
                    operator delete(__src);
                  }

                  __src = v121;
                  v79 = *a4;
                  v76 = v77;
                  v81.i64[0] = 0x3F0000003F000000;
                  v81.i64[1] = 0x3F0000003F000000;
                }

                ++v78;
                v84 = v85 + 8;
                v82 += 32;
                v83 = v85;
              }

              while (v85 + 8 <= v79);
              v28 = a4[1];
              v80 = v173;
            }

            v80 += 8;
            v75 += 8;
          }

          while (v80 <= v28);
          v122 = __src;
          v169 = v76;
          if (__src == v77)
          {
            v73 = (v77 - __src) >> 3;
          }

          else
          {
            v72 = 0.0;
            do
            {
              v123 = *v122;
              v122 += 2;
              v72 = v72 + v123;
            }

            while (v122 != v77);
            v73 = (v77 - __src) >> 3;
            if (v77 != __src)
            {
              if (!(v73 >> 61))
              {
                sub_240B299F4((v77 - __src) >> 3);
              }

              sub_240B228BC();
            }
          }
        }

        else
        {
          __src = 0;
          v169 = 0;
          v73 = 0;
        }

        v185 = vdupq_lane_s64(COERCE__INT64((v72 / v73)), 0);
        v186 = v185;
        v187 = v185;
        v188 = v185;
        v181 = v185;
        v182 = v185;
        v183 = v185;
        v184 = v185;
        v124 = sub_240BB8524(0, 0, &v181, v203.i64, 0);
        v174 = 0;
        v198 = v203;
        v199 = v204;
        v200 = v205;
        v201 = v206;
        v194 = v203;
        v195 = v204;
        v125 = 0.0;
        v126 = 1.0;
        v127 = 1;
        v128 = 1;
        v129 = 0.0;
        v196 = v205;
        v197 = v206;
        v130 = 0.0;
        do
        {
          if (v128)
          {
            v131 = 0;
            v132 = 0.0;
            do
            {
              v133 = vmulq_f64(*(&v194 + v131), *(&v203 + v131));
              v132 = v132 + v133.f64[0] + v133.f64[1];
              v131 += 16;
            }

            while (v131 != 64);
            if (v132 <= 0.0)
            {
              v134 = 0;
              v194 = v203;
              v195 = v204;
              v196 = v205;
              v197 = v206;
              v132 = 0.0;
              do
              {
                v135 = vmulq_f64(*(&v194 + v134), *(&v203 + v134));
                v132 = v132 + v135.f64[0] + v135.f64[1];
                v134 += 16;
              }

              while (v134 != 64);
            }

            v129 = -v132;
            v136 = 0;
            v130 = 0.0;
            do
            {
              v130 = v130 + *&v194.i64[v136] * *&v194.i64[v136];
              ++v136;
            }

            while (v136 != 8);
            v137 = 0;
            v138 = 0.0001 / sqrt(v130);
            do
            {
              *&v189[v137] = vmulq_n_f64(*(&v194 + v137), v138);
              v137 += 16;
            }

            while (v137 != 64);
            v176 = v138;
            for (k = 0; k != 64; k += 16)
            {
              *(&v190 + k) = vaddq_f64(*(&v181 + k), *&v189[k]);
            }

            sub_240BB8524(0, 0, &v190, v202[0].i64, 0);
            for (m = 0; m != 4; ++m)
            {
              *(&v190 + m * 16) = vsubq_f64(*(&v203 + m * 16), v202[m]);
            }

            v141 = 0;
            v142 = 0.0;
            do
            {
              v143 = vmulq_f64(*(&v194 + v141), *(&v190 + v141));
              v142 = v142 + v143.f64[0] + v143.f64[1];
              v141 += 16;
            }

            while (v141 != 64);
            v125 = v142 / v176;
          }

          v144 = v125 + v126 * v130;
          if (v144 <= 0.0)
          {
            v144 = v126 * v130;
            v126 = v126 - v125 / v130;
          }

          for (n = 0; n != 64; n += 16)
          {
            *&v189[n] = vmulq_n_f64(*(&v194 + n), -v129 / v144);
          }

          v177 = -v129 / v144;
          for (ii = 0; ii != 64; ii += 16)
          {
            *(&v190 + ii) = vaddq_f64(*(&v181 + ii), *&v189[ii]);
          }

          v207 = v190;
          v208 = v191;
          v209 = v192;
          v210 = v193;
          v147 = sub_240BB8524(0, 0, &v207, v202[0].i64, 0);
          v148 = (v147 - v124 + v147 - v124) / (v129 * v177);
          v128 = v148 >= 0.0;
          if (v148 >= 0.0)
          {
            v149 = 0;
            v181 = v207;
            v182 = v208;
            v183 = v209;
            v184 = v210;
            v198 = v203;
            v199 = v204;
            v200 = v205;
            v201 = v206;
            v205 = v202[2];
            v206 = v202[3];
            v150 = 0.0;
            v203 = v202[0];
            v204 = v202[1];
            do
            {
              v150 = v150 + *&v203.i64[v149] * *&v203.i64[v149];
              ++v149;
            }

            while (v149 != 8);
            if (v150 <= 1.0e-16)
            {
              break;
            }

            ++v174;
            v124 = v147;
          }

          if (v148 >= 0.25)
          {
            if (v148 > 0.75)
            {
              if (v126 * 0.25 >= 1.0e-15)
              {
                v126 = v126 * 0.25;
              }

              else
              {
                v126 = 1.0e-15;
              }
            }
          }

          else if (v126 * 4.0 <= 1.0e15)
          {
            v126 = v126 * 4.0;
          }

          else
          {
            v126 = 1.0e15;
          }

          if ((v174 & 7) != 0)
          {
            if (v148 >= 0.0)
            {
              for (jj = 0; jj != 64; jj += 16)
              {
                *(&v190 + jj) = vsubq_f64(*(&v198 + jj), *(&v203 + jj));
              }

              v152 = 0;
              v153 = 0.0;
              do
              {
                v154 = vmulq_f64(*(&v190 + v152), *(&v203 + v152));
                v153 = v153 + v154.f64[0] + v154.f64[1];
                v152 += 16;
              }

              while (v152 != 64);
              v155 = 0;
              v156 = v153 / v129;
              do
              {
                *&v189[v155] = vmulq_n_f64(*(&v194 + v155), v156);
                v155 += 16;
              }

              while (v155 != 64);
              for (kk = 0; kk != 64; kk += 16)
              {
                *(&v190 + kk) = vaddq_f64(*&v189[kk], *(&v203 + kk));
              }

              v194 = v190;
              v195 = v191;
              v196 = v192;
              v197 = v193;
            }
          }

          else
          {
            v194 = v203;
            v195 = v204;
            v196 = v205;
            v197 = v206;
            v126 = 1.0;
          }

          ++v127;
        }

        while (v127 != 41);
        v185 = v181;
        v186 = v182;
        v187 = v183;
        v188 = v184;
        v207 = v181;
        v208 = v182;
        v209 = v183;
        v210 = v184;
        v158 = sub_240BB8524(0, 0, &v185, v207.i64, 1) / ((v169 - __src) >> 3);
        if (v158 <= 0.001)
        {
          v161 = 0;
          v162 = &v185;
          v159 = a8;
          v160 = v170;
          do
          {
            v164 = *v162;
            v163 = v162[1];
            v162 += 2;
            a8[v161++] = vcvt_hight_f32_f64(vcvt_f32_f64(vbicq_s8(v164, vcltzq_f64(v164))), vbicq_s8(v163, vcltzq_f64(v163)));
          }

          while (v161 != 2);
        }

        else
        {
          v159 = a8;
          *a8 = 0u;
          a8[1] = 0u;
          v160 = v170;
        }

        for (mm = 0; mm != 2; ++mm)
        {
          v159[mm] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*&v159[mm]), v160 * 1.4)), vmulq_n_f64(vcvt_hight_f64_f32(v159[mm]), v160 * 1.4));
        }

        v166 = 0;
        do
        {
          v167 = fabsf(*(v159 + v166));
          v74 = v167 > 0.001;
          v168 = v167 > 0.001 || v166 == 28;
          v166 += 4;
        }

        while (!v168);
        if (__src)
        {
          operator delete(__src);
        }
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (!v74)
      {
        *(a7 + 24) &= ~1uLL;
      }
    }
  }

  else
  {
    v175 = cbrtf(0.0037931);
    for (nn = 0; nn != 8; ++nn)
    {
      v13 = ((nn / 6.0) + (nn / 6.0)) - v175;
      v14 = fmaxf((v13 * (v13 * v13)) + 0.0037931, 0.0);
      v172 = ((10.0 / v9) * 2252.0) * (864000000.0 / (a6 * a5));
      v15 = (0.18 / v172) * sqrtf(((v172 * (v14 / 0.18)) + 9.0) + (((v172 * (v14 / 0.18)) * 0.005) * ((v172 * (v14 / 0.18)) * 0.005)));
      v16 = cbrtf(v14 + -0.0037931);
      v17 = (v15 * (0.33333 / (v16 * v16))) / 0.35157;
      if (v17 <= 1.0)
      {
        v18 = v17;
      }

      else
      {
        v18 = 1.0;
      }

      if (v17 >= 0.0)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0.0;
      }

      *(v180 + nn) = v19;
    }

    v20 = v180[1];
    *a8 = v180[0];
    a8[1] = v20;
  }
}

void sub_240B990B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240B99108(int a1, char a2, uint64_t a3, char a4, unsigned int *a5)
{
  if (a4)
  {
    return 0;
  }

  v6 = *(a3 + 268);
  if (v6 == 1 || (a2 & 1) != 0)
  {
    return 0;
  }

  if (v6 == 2 && *(a3 + 12) == 0)
  {
    if (a1 > 3)
    {
      sub_240B2A11C(v44, ((*a5 + 1) >> 1) + 8, ((a5[1] + 1) >> 1) + 8);
      v7 = v46;
      if (v46)
      {
        return v7;
      }

      sub_240B2A358(v56, v44);
      v23 = 0;
      v56[0] = vadd_s32(v56[0], 0x700000007);
      v56[5] = v56[0];
      v56[10] = v56[0];
      while (1)
      {
        v7 = sub_240BAA3B8(&a5[v23 / 4], &v56[v23 / 8]);
        if (v7)
        {
          break;
        }

        v23 += 40;
        if (v23 == 120)
        {
          sub_240B30D80(a5, v56);
          v7 = 0;
          break;
        }
      }

      for (i = 13; i != -2; i -= 5)
      {
        sub_240B22320(&v56[i]);
      }

      if (!v46)
      {
        v25 = v45;
        v26 = -120;
        do
        {
          sub_240B22320(v25);
          v25 -= 5;
          v26 += 40;
        }

        while (v26);
      }
    }

    else
    {
      sub_240B2A11C(v56, ((*a5 + 1) >> 1) + 8, ((a5[1] + 1) >> 1) + 8);
      v7 = v58;
      if (v58)
      {
        return v7;
      }

      sub_240B2A358(v61, v56);
      v61[0] = vadd_s32(v61[0], 0x700000007);
      v61[5] = v61[0];
      v61[10] = v61[0];
      sub_240B2A11C(v48, *a5, a5[1]);
      v7 = v55;
      if (!v55)
      {
        sub_240B2A358(v47, v48);
        sub_240B49900(v44);
        v59[1] = 0;
        v59[0] = 0;
        *&v11 = v47[0];
        *(&v11 + 1) = v47[1];
        v60 = v11;
        sub_240B4988C(a5, v59, v47, v44);
        sub_240B23590(&v40, *a5, a5[1]);
        v7 = v43;
        if (!v43)
        {
          v37 = v40;
          v38 = v41;
          *(&v41 + 1) = 0;
          v39 = v42;
          __asm { FMOV            V0.2S, #1.0 }

          v35[2] = _D0;
          v36 = 1117782016;
          sub_240B7218C(v35, v47);
        }

        for (j = 26; j != -4; j -= 10)
        {
          sub_240B22320(&v47[j]);
        }

        if (!v55)
        {
          v17 = &v53 + 1;
          v18 = -120;
          do
          {
            sub_240B22320(v17);
            v17 -= 5;
            v18 += 40;
          }

          while (v18);
        }
      }

      for (k = 13; k != -2; k -= 5)
      {
        sub_240B22320(&v61[k]);
      }

      if (!v58)
      {
        v21 = v57;
        v22 = -120;
        do
        {
          sub_240B22320(v21);
          v21 -= 5;
          v22 += 40;
        }

        while (v22);
      }
    }

    if (v7)
    {
      return v7;
    }

    goto LABEL_55;
  }

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  memset(v48, 0, sizeof(v48));
  sub_240B2A11C(v44, (v6 - 1 + *a5) / v6 + 8, (v6 - 1 + a5[1]) / v6 + 8);
  if (v46)
  {
    v58 = v46;
  }

  else
  {
    sub_240B2A358(v61, v44);
    sub_240B30D80(v48, v61);
    for (m = 13; m != -2; m -= 5)
    {
      sub_240B22320(&v61[m]);
    }

    v28 = 0;
    *&v48[0] = vadd_s32(*&v48[0], 0x700000007);
    *(&v49 + 1) = *&v48[0];
    *&v52 = *&v48[0];
    do
    {
      sub_240C10860(&a5[v28], v6, v48 + v28 * 4);
      v28 += 10;
    }

    while (v28 != 30);
    v58 = 0;
    sub_240B2A358(v56, v48);
    if (!v46)
    {
      v29 = v45;
      v30 = -120;
      do
      {
        sub_240B22320(v29);
        v29 -= 5;
        v30 += 40;
      }

      while (v30);
    }
  }

  for (n = 104; n != -16; n -= 40)
  {
    sub_240B22320((v48 + n));
  }

  v7 = v58;
  if (!v58)
  {
    sub_240B2A358(v44, v56);
    sub_240B30D80(a5, v44);
    for (ii = 104; ii != -16; ii -= 40)
    {
      sub_240B22320(&v44[ii]);
    }

    if (!v58)
    {
      v33 = v57;
      v34 = -120;
      do
      {
        sub_240B22320(v33);
        v33 -= 5;
        v34 += 40;
      }

      while (v34);
    }

LABEL_55:
    if (!*(a3 + 12))
    {
      sub_240C105C8(a5, v20);
    }

    return 0;
  }

  return v7;
}

void sub_240B9A054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, uint64_t a29, int a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v70 = STACK[0x428];
  STACK[0x428] = 0;
  if (v70)
  {
    atomic_fetch_add(&qword_27E519020, -*(v70 - 24));
    free(*(v70 - 32));
  }

  if (!LODWORD(STACK[0x468]))
  {
    v71 = STACK[0x458];
    STACK[0x458] = 0;
    if (v71)
    {
      atomic_fetch_add(&qword_27E519020, -*(v71 - 24));
      free(*(v71 - 32));
    }
  }

  v72 = STACK[0x488];
  STACK[0x488] = 0;
  if (v72)
  {
    atomic_fetch_add(&qword_27E519020, -*(v72 - 24));
    free(*(v72 - 32));
  }

  if (!LODWORD(STACK[0x4C8]))
  {
    v73 = STACK[0x4B8];
    STACK[0x4B8] = 0;
    if (v73)
    {
      atomic_fetch_add(&qword_27E519020, -*(v73 - 24));
      free(*(v73 - 32));
    }
  }

  v74 = STACK[0x4E8];
  STACK[0x4E8] = 0;
  if (v74)
  {
    atomic_fetch_add(&qword_27E519020, -*(v74 - 24));
    free(*(v74 - 32));
  }

  if (!LODWORD(STACK[0x528]))
  {
    v75 = STACK[0x518];
    STACK[0x518] = 0;
    if (v75)
    {
      atomic_fetch_add(&qword_27E519020, -*(v75 - 24));
      free(*(v75 - 32));
    }
  }

  v76 = STACK[0x548];
  STACK[0x548] = 0;
  if (v76)
  {
    atomic_fetch_add(&qword_27E519020, -*(v76 - 24));
    free(*(v76 - 32));
  }

  if (!LODWORD(STACK[0x588]))
  {
    v77 = STACK[0x578];
    STACK[0x578] = 0;
    if (v77)
    {
      atomic_fetch_add(&qword_27E519020, -*(v77 - 24));
      free(*(v77 - 32));
    }
  }

  v78 = STACK[0x5A8];
  STACK[0x5A8] = 0;
  if (v78)
  {
    atomic_fetch_add(&qword_27E519020, -*(v78 - 24));
    free(*(v78 - 32));
  }

  if (!LODWORD(STACK[0x5E8]))
  {
    v79 = STACK[0x5D8];
    STACK[0x5D8] = 0;
    if (v79)
    {
      atomic_fetch_add(&qword_27E519020, -*(v79 - 24));
      free(*(v79 - 32));
    }
  }

  v91 = STACK[0x608];
  STACK[0x608] = 0;
  if (v91)
  {
    atomic_fetch_add(&qword_27E519020, -*(v91 - 24));
    free(*(v91 - 32));
  }

  if (!LODWORD(STACK[0x648]))
  {
    v80 = STACK[0x638];
    STACK[0x638] = 0;
    if (v80)
    {
      atomic_fetch_add(&qword_27E519020, -*(v80 - 24));
      free(*(v80 - 32));
    }
  }

  if (a21)
  {
    atomic_fetch_add(&qword_27E519020, -*(a21 - 24));
    free(*(a21 - 32));
  }

  if (!LODWORD(STACK[0x678]))
  {
    v81 = STACK[0x668];
    STACK[0x668] = 0;
    if (v81)
    {
      atomic_fetch_add(&qword_27E519020, -*(v81 - 24));
      free(*(v81 - 32));
    }
  }

  if (!LODWORD(STACK[0x6A8]))
  {
    v82 = STACK[0x698];
    STACK[0x698] = 0;
    if (v82)
    {
      atomic_fetch_add(&qword_27E519020, -*(v82 - 24));
      free(*(v82 - 32));
    }
  }

  v83 = STACK[0x6C8];
  STACK[0x6C8] = 0;
  if (v83)
  {
    atomic_fetch_add(&qword_27E519020, -*(v83 - 24));
    free(*(v83 - 32));
  }

  if (!LODWORD(STACK[0x700]))
  {
    v84 = STACK[0x6F0];
    STACK[0x6F0] = 0;
    if (v84)
    {
      atomic_fetch_add(&qword_27E519020, -*(v84 - 24));
      free(*(v84 - 32));
    }
  }

  if (a19)
  {
    atomic_fetch_add(&qword_27E519020, -*(a19 - 24));
    free(*(a19 - 32));
  }

  if (!a28 && a26)
  {
    atomic_fetch_add(&qword_27E519020, -*(a26 - 24));
    free(*(a26 - 32));
  }

  if (a20)
  {
    (*(*a20 + 8))(a20);
  }

  if (!a30 && a29)
  {
    (*(*a29 + 8))(a29);
  }

  if (a36)
  {
    atomic_fetch_add(&qword_27E519020, -*(a36 - 24));
    free(*(a36 - 32));
  }

  if (!a43 && a41)
  {
    atomic_fetch_add(&qword_27E519020, -*(a41 - 24));
    free(*(a41 - 32));
  }

  for (i = 104; i != -16; i -= 40)
  {
    sub_240B22320((&a68 + i));
  }

  if (!LODWORD(STACK[0x2C8]))
  {
    v86 = &STACK[0x2B8];
    v87 = -120;
    do
    {
      sub_240B22320(v86);
      v86 -= 5;
      v87 += 40;
    }

    while (v87);
  }

  for (j = 104; j != -16; j -= 40)
  {
    sub_240B22320((v68 - 232 + j));
  }

  if (!LODWORD(STACK[0x348]))
  {
    v89 = &STACK[0x338];
    v90 = -120;
    do
    {
      sub_240B22320(v89);
      v89 -= 5;
      v90 += 40;
    }

    while (v90);
  }

  _Unwind_Resume(a1);
}

void sub_240B9A67C(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = 0x2E8BA2E8BA2E8BA3 * ((v3 - *a1) >> 4);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v10 = v4 + 176 * a2;
      while (v3 != v10)
      {
        v3 -= 176;
        sub_240B96E98(v3);
      }

      a1[1] = v10;
    }
  }

  else
  {
    v7 = a1[2];
    if (0x2E8BA2E8BA2E8BA3 * ((v7 - v3) >> 4) < v6)
    {
      if (a2 <= 0x1745D1745D1745DLL)
      {
        v8 = 0x5D1745D1745D1746 * ((v7 - v4) >> 4);
        if (v8 <= a2)
        {
          v8 = a2;
        }

        if ((0x2E8BA2E8BA2E8BA3 * ((v7 - v4) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
        {
          v9 = 0x1745D1745D1745DLL;
        }

        else
        {
          v9 = v8;
        }

        if (v9 <= 0x1745D1745D1745DLL)
        {
          operator new();
        }

        sub_240B2291C();
      }

      sub_240B228BC();
    }

    v11 = v3 + 176 * v6;
    v12 = 176 * a2 - 16 * ((v3 - *a1) >> 4);
    do
    {
      sub_240BA2628(v3);
      v3 += 176;
      v12 -= 176;
    }

    while (v12);
    a1[1] = v11;
  }
}

void sub_240B9A96C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_240BA26CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_240B9A990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v73 = *MEMORY[0x277D85DE8];
  v41 = a5;
  v42 = a4;
  v25 = a5[9];
  v26 = a5[10];
  sub_240B23694(&v29, a5[7], a5[8], 0);
  v6 = v40;
  if (!v40)
  {
    *v71 = v33;
    v7 = v31;
    v8 = v32;
    v9 = v35;
    *&v71[16] = v34;
    v10 = a5;
    v11 = v36;
    *&__src[32] = v39;
    v31 = 0;
    v35 = 0;
    *__src = v37;
    *&__src[16] = v38;
    v12 = v29;
    v10[140] = v30;
    v13 = v10[141];
    v10[141] = v7;
    v27 = v10;
    *(v10 + 69) = v12;
    if (v13)
    {
      atomic_fetch_add(&qword_27E519020, -*(v13 - 24));
      free(*(v13 - 32));
    }

    v27[142] = v8;
    v27[145] = *&v71[16];
    *(v27 + 143) = *v71;
    v14 = v27[146];
    v27[146] = v9;
    if (v14)
    {
      atomic_fetch_add(&qword_27E519020, -*(v14 - 24));
      free(*(v14 - 32));
    }

    v27[147] = v11;
    v15 = *&__src[16];
    *(v27 + 74) = *__src;
    *(v27 + 75) = v15;
    v27[152] = *&__src[32];
    v16 = *(v27 + 39);
    if (v16)
    {
      v17 = 0;
      v18 = *(v27 + 38);
      if (v18 <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = *(v27 + 38);
      }

      v20 = *(v27 + 38);
      do
      {
        if (v20)
        {
          memset((v27[22] + v27[21] * v17), 1, v19);
          v20 = v18;
        }

        ++v17;
      }

      while (v16 != v17);
    }

    sub_240B3C7C4(0, v27 + 266);
    v21 = v41;
    sub_240BA1E88(v41 + 528);
    if (0x2E8BA2E8BA2E8BA3 * ((v21[649] - v21[648]) >> 4) > ((v21[529] - v21[528]) >> 3))
    {
      v22 = v27[15];
      sub_240B3B11C();
    }

    memset(&v71[4], 0, 208);
    v72 = 0;
    memset(&v70[4], 0, 108);
    v69 = 0;
    memset(&v68[4], 0, 208);
    *__src = 0;
    *&__src[4] = *v71;
    *&__src[20] = *&v71[16];
    v44[2] = *&v71[80];
    v44[1] = *&v71[64];
    v44[0] = *&v71[48];
    *&__src[36] = *&v71[32];
    v44[6] = *&v71[144];
    v44[5] = *&v71[128];
    v44[4] = *&v71[112];
    v44[3] = *&v71[96];
    v45 = 0;
    v44[9] = *&v71[192];
    v44[8] = *&v71[176];
    v44[7] = *&v71[160];
    v49 = *&v70[48];
    v50 = *&v70[64];
    v51 = *&v70[80];
    v52 = 0u;
    v46 = *v70;
    v47 = *&v70[16];
    v48 = *&v70[32];
    v53 = *v68;
    v54 = *&v68[16];
    v57 = *&v68[64];
    v58 = *&v68[80];
    v55 = *&v68[32];
    v56 = *&v68[48];
    v61 = *&v68[128];
    v62 = *&v68[144];
    v59 = *&v68[96];
    v60 = *&v68[112];
    v66 = 0;
    v64 = *&v68[176];
    v65 = *&v68[192];
    v63 = *&v68[160];
    v67 = 0;
    sub_240BA1EF4(&__dst);
  }

  sub_240B6701C(&v29);
  v23 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_240B9BC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = 0;
  while (1)
  {
    v69 = *(&a67 + v68 + 48);
    if (v69)
    {
      *(&a67 + v68 + 56) = v69;
      operator delete(v69);
    }

    v68 -= 24;
    if (v68 == -72)
    {
      for (i = 104; i != -16; i -= 40)
      {
        sub_240B22320((&STACK[0x478] + i));
      }

      if (!LODWORD(STACK[0x638]))
      {
        v71 = &STACK[0x628];
        v72 = -120;
        do
        {
          sub_240B22320(v71);
          v71 -= 5;
          v72 += 40;
        }

        while (v72);
      }

      if (__p)
      {
        operator delete(__p);
      }

      if (a36)
      {
        operator delete(a36);
      }

      STACK[0x230] = &a41;
      sub_240B3CBC8(&STACK[0x230]);
      sub_240B6701C(&a44);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_240B9BD9C(uint64_t a1, unsigned int *a2, unsigned int *a3, uint64_t *a4, __int128 *a5, void *a6, uint64_t a7, uint64_t a8, void *a9)
{
  v14 = a3;
  v15 = a9;
  v231 = *MEMORY[0x277D85DE8];
  v195 = a3;
  v16 = *(a8 + 4208);
  v168 = a8 + 4096;
  v166 = *(a8 + 4209);
  v17 = (a8 + 1104);
  v18 = *(a8 + 5040);
  v19 = *(a8 + 5048);
  if (v18 != v19)
  {
    *(a8 + 1432) = *(a8 + 5032);
    sub_240BA2FA8((a8 + 1440), v18, v19, 0xF0B7672A07A44C6BLL * (v19 - v18));
    sub_240BA2C68((a8 + 1464), *(a8 + 5064), *(a8 + 5072), (*(a8 + 5072) - *(a8 + 5064)) >> 3);
    sub_240BA3124((a8 + 1488), *(a8 + 5088), *(a8 + 5096), (*(a8 + 5096) - *(a8 + 5088)) >> 5);
    sub_240BA2C68((a8 + 1512), *(a8 + 5112), *(a8 + 5120), (*(a8 + 5120) - *(a8 + 5112)) >> 3);
    sub_240BA2C68((a8 + 1536), *(a8 + 5136), *(a8 + 5144), (*(a8 + 5144) - *(a8 + 5136)) >> 3);
  }

  v167 = v17;
  if ((v16 & 1) == 0)
  {
    if (*(a8 + 4592) > 3)
    {
      v85 = 0;
    }

    else
    {
      v62 = v14;
      if (*(a8 + 5040) == *(a8 + 5048))
      {
        v164 = a5;
        v63 = a7;
        v64 = v16;
        v65 = a4;
        memset(&v226[32], 0, 96);
        *v226 = 0;
        *(a8 + 1432) = 0;
        sub_240BA33AC((a8 + 1440));
        *(a8 + 1456) = 0;
        *(a8 + 1440) = 0u;
        memset(&v226[8], 0, 24);
        v66 = (a8 + 1464);
        v67 = *(a8 + 1464);
        if (v67)
        {
          *(a8 + 1472) = v67;
          operator delete(v67);
          *v66 = 0;
          *(a8 + 1472) = 0;
          *(a8 + 1480) = 0;
        }

        *v66 = 0;
        *(a8 + 1472) = 0;
        *(a8 + 1480) = 0;
        memset(&v226[32], 0, 24);
        v68 = (a8 + 1488);
        v69 = *(a8 + 1488);
        if (v69)
        {
          *(a8 + 1496) = v69;
          operator delete(v69);
          *v68 = 0;
          *(a8 + 1496) = 0;
          *(a8 + 1504) = 0;
        }

        *v68 = 0;
        *(a8 + 1496) = 0;
        *(a8 + 1504) = 0;
        memset(&v226[56], 0, 24);
        v70 = (a8 + 1512);
        v71 = *(a8 + 1512);
        if (v71)
        {
          *(a8 + 1520) = v71;
          operator delete(v71);
          *v70 = 0;
          *(a8 + 1520) = 0;
          *(a8 + 1528) = 0;
        }

        *v70 = 0;
        *(a8 + 1520) = 0;
        *(a8 + 1528) = 0;
        memset(&v226[80], 0, 24);
        v72 = (a8 + 1536);
        v73 = *(a8 + 1536);
        if (v73)
        {
          *(a8 + 1544) = v73;
          operator delete(v73);
          *v72 = 0;
          *(a8 + 1544) = 0;
          *(a8 + 1552) = 0;
        }

        *v72 = 0;
        *(a8 + 1544) = 0;
        *(a8 + 1552) = 0;
        memset(&v226[104], 0, 24);
        *v229 = &v226[8];
        sub_240B4BC78(v229);
        v62 = v195;
        a4 = v65;
        v16 = v64;
        a7 = v63;
        a5 = v164;
        v17 = v167;
      }

      v26 = sub_240B6ADAC(a8 + 1432, *v62, v62[1], v17);
      if (v26)
      {
        goto LABEL_163;
      }

      v159 = v16;
      v160 = a4;
      v74 = a5;
      v75 = a6;
      v76 = a7;
      if (*(a8 + 1488) != *(a8 + 1496))
      {
        v77 = v195[1];
        if (v77)
        {
          v78 = 0;
          v79 = *v195;
          do
          {
            v80 = *(a8 + 1488);
            if (v80 != *(a8 + 1496))
            {
              v81 = *(v195 + 3);
              v82 = *(v195 + 8);
              v83 = *(v195 + 13);
              v84 = *(v195 + 2) * v78;
              *v226 = 0;
              *&v226[8] = v78;
              *&v226[16] = v79;
              *&v226[24] = 1;
              sub_240B6A9F0((v81 + v84), v82 + v84, v83 + v84, v226, 0, v80, *(a8 + 1512), *(a8 + 1536));
            }

            ++v78;
          }

          while (v77 != v78);
        }
      }

      v85 = *(a8 + 4592) < 4;
      a7 = v76;
      a6 = v75;
      a5 = v74;
      v15 = a9;
      a4 = v160;
      v16 = v159;
    }

    if (*(v168 + 527))
    {
      if (*(v168 + 527) == 1 || v85)
      {
        v26 = sub_240BB88F4();
        if (v26)
        {
LABEL_163:
          v154 = *MEMORY[0x277D85DE8];
          return v26;
        }

        sub_240BB8708((a8 + 1256), v195);
      }
    }
  }

  v158 = v16;
  v162 = a8 + 952;
  v20 = &v185;
  v21 = *(a8 + 4544);
  v22 = powf(v21 * 3.3333, 0.83) * 0.3;
  if (v22 >= v21)
  {
    v22 = v21;
  }

  if ((v21 * 0.5) >= v22)
  {
    v23 = v21 * 0.5;
  }

  else
  {
    v23 = v22;
  }

  memset(v194, 0, sizeof(v194));
  v163 = (a8 + 4544);
  v185 = a8 + 4544;
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  v189 = 0u;
  v190 = 0u;
  v191 = 0u;
  v192 = 0.0;
  memset(v193, 0, sizeof(v193));
  v24 = 1.0959 / v23;
  if (v24 <= 50.0)
  {
    v25 = v24;
  }

  else
  {
    v25 = 50.0;
  }

  memset(v184, 0, sizeof(v184));
  v182 = 0uLL;
  v183 = 0uLL;
  v181 = 0;
  v179 = 0uLL;
  v180 = 0uLL;
  v178 = 0;
  v176 = 0uLL;
  v177 = 0uLL;
  v175 = 0;
  v173 = 0uLL;
  v174 = 0uLL;
  if (*(a8 + 4592) < 6)
  {
    v86 = v14;
    v87 = v15;
    v88 = a5;
    v89 = a6;
    v90 = a7;
    v91 = v21 * 0.73;
    if (*(a1 + 425))
    {
      v91 = v21;
    }

    v157 = v195;
    v216 = v91;
    v215 = 0.73815 / v91;
    v214 = &v176;
    v213 = &v173;
    memset(v226, 0, 104);
    v92 = a4[3];
    v161 = a4;
    v93 = a4[2] >> 3;
    v212 = v93;
    v94 = v92 >> 3;
    v211 = v92 >> 3;
    sub_240B23590(&v206, v93, v92 >> 3);
    v26 = v210;
    if (v210)
    {
      a7 = v90;
      a6 = v89;
      a5 = v88;
      v15 = v87;
      v14 = v86;
    }

    else
    {
      *&v226[24] = v206;
      v96 = v208;
      v208 = 0;
      v97 = v209;
      v98 = *&v226[48];
      *&v226[40] = v207;
      *&v226[48] = v96;
      if (v98)
      {
        atomic_fetch_add(&qword_27E519020, -*(v98 - 24));
        free(*(v98 - 32));
        v93 = v212;
        LODWORD(v94) = v211;
      }

      *&v226[56] = v97;
      sub_240B23590(&v201, v93, v94);
      v26 = v205;
      a7 = v90;
      if (v205)
      {
        a6 = v89;
        a5 = v88;
        v15 = v87;
        v14 = v86;
      }

      else
      {
        v99 = v203;
        v100 = v202;
        v203 = 0;
        v101 = v204;
        v93 = v214;
        *v214 = v201;
        v102 = *(v93 + 24);
        *(v93 + 16) = v100;
        *(v93 + 24) = v99;
        a6 = v89;
        if (v102)
        {
          atomic_fetch_add(&qword_27E519020, -*(v102 - 24));
          free(*(v102 - 32));
        }

        *(v93 + 32) = v101;
        sub_240B23590(&v196, *v157, v157[1]);
        a5 = v88;
        v26 = v200;
        v15 = v87;
        if (v200)
        {
          v14 = v86;
        }

        else
        {
          v103 = v198;
          v104 = v197;
          v198 = 0;
          v105 = v199;
          v106 = v213;
          *v213 = v196;
          v107 = *(v106 + 3);
          *(v106 + 2) = v104;
          *(v106 + 3) = v103;
          v14 = v86;
          if (v107)
          {
            atomic_fetch_add(&qword_27E519020, -*(v107 - 24));
            free(*(v107 - 32));
          }

          *(v106 + 4) = v105;
          v108 = ((v211 + 7) >> 3) * ((v212 + 7) >> 3);
          *&v217 = v226;
          *v229 = &v212;
          *&v229[8] = &v211;
          *&v229[16] = v226;
          *&v229[24] = &v216;
          *&v229[32] = &v215;
          *&v229[40] = v157;
          *&v229[48] = v161;
          *&v229[56] = &v214;
          *&v229[64] = &v213;
          if (a6)
          {
            sub_240B78AC4(a6, v108, &v217, v229);
          }

          else
          {
            *&v220 = 0;
            *(&v220 + 1) = &v220;
            sub_240B78AC4(&v220, v108, &v217, v229);
          }

          v93 = v213;
          *v229 = vdupq_n_s32(0x3E6D1351u);
          *&v229[16] = vdupq_n_s32(0x3D73362Cu);
          *&v229[32] = vdupq_n_s32(0x3D121DC5u);
          *&v229[48] = vdupq_n_s32(0x3D426843u);
          *&v229[64] = vdupq_n_s32(0x3C427F2Bu);
          *&v229[80] = vdupq_n_s32(0x3C9A90AFu);
          sub_240B23590(&v220, *(v161 + 16), *(v161 + 24));
          v26 = v223;
          if (!v223)
          {
            v217 = v220;
            v218 = v221;
            *(&v221 + 1) = 0;
            v219 = v222;
            v224[1] = 0;
            v224[0] = 0;
            *&v109 = v220;
            *(&v109 + 1) = DWORD1(v220);
            v225 = v109;
            sub_240BEB2A8(v93, v161, v229, a6, &v217, v224);
            v110 = v217;
            *(v93 + 16) = v218;
            *v93 = v110;
            v111 = *(&v218 + 1);
            *(&v218 + 1) = 0;
            sub_240B2453C((v93 + 24), v111);
            v112 = *(&v218 + 1);
            *(v93 + 32) = v219;
            *(&v218 + 1) = 0;
            if (!v112 || (atomic_fetch_add(&qword_27E519020, -*(v112 - 24)), free(*(v112 - 32)), !v223))
            {
              v113 = *(&v221 + 1);
              *(&v221 + 1) = 0;
              if (v113)
              {
                atomic_fetch_add(&qword_27E519020, -*(v113 - 24));
                free(*(v113 - 32));
              }
            }

            v26 = 0;
            v171 = *&v226[24];
            v172 = *&v226[40];
            v20 = *&v226[56];
            v93 = *&v226[48];
            *&v226[48] = 0;
          }

          if (!v200)
          {
            v114 = v198;
            v198 = 0;
            if (v114)
            {
              atomic_fetch_add(&qword_27E519020, -*(v114 - 24));
              free(*(v114 - 32));
            }
          }
        }

        if (!v205)
        {
          v115 = v203;
          v203 = 0;
          if (v115)
          {
            atomic_fetch_add(&qword_27E519020, -*(v115 - 24));
            free(*(v115 - 32));
          }
        }
      }

      if (!v210)
      {
        v116 = v208;
        v208 = 0;
        if (v116)
        {
          atomic_fetch_add(&qword_27E519020, -*(v116 - 24));
          free(*(v116 - 32));
        }
      }
    }

    v117 = *&v226[88];
    *&v226[88] = 0;
    if (v117)
    {
      atomic_fetch_add(&qword_27E519020, -*(v117 - 24));
      free(*(v117 - 32));
    }

    v118 = *&v226[48];
    *&v226[48] = 0;
    if (v118)
    {
      atomic_fetch_add(&qword_27E519020, -*(v118 - 24));
      free(*(v118 - 32));
    }

    *v229 = v226;
    sub_240B30C38(v229);
    if (v26)
    {
      a4 = v161;
      goto LABEL_154;
    }

    v179 = v171;
    v119 = *(&v180 + 1);
    *&v180 = v172;
    *(&v180 + 1) = v93;
    if (v119)
    {
      atomic_fetch_add(&qword_27E519020, -*(v119 - 24));
      free(*(v119 - 32));
    }

    v181 = v20;
    v120 = 0.39 / *v163;
    sub_240B6A1A4(v162, v25, v120, 0.0);
    a4 = v161;
    goto LABEL_119;
  }

  sub_240B23590(v226, *(a8 + 72), *(a8 + 80));
  v26 = *&v226[40];
  if (!*&v226[40])
  {
    v179 = *v226;
    v27 = *&v226[24];
    *&v226[24] = 0;
    v28 = *&v226[32];
    v29 = *(&v180 + 1);
    *&v180 = *&v226[16];
    *(&v180 + 1) = v27;
    if (v29)
    {
      atomic_fetch_add(&qword_27E519020, -*(v29 - 24));
      free(*(v29 - 32));
    }

    v181 = v28;
    sub_240B23590(v229, *(a8 + 72), *(a8 + 80));
    v26 = *&v229[40];
    if (!*&v229[40])
    {
      v176 = *v229;
      v30 = *&v229[24];
      *&v229[24] = 0;
      v31 = *&v229[32];
      v32 = *(&v177 + 1);
      *&v177 = *&v229[16];
      *(&v177 + 1) = v30;
      if (v32)
      {
        atomic_fetch_add(&qword_27E519020, -*(v32 - 24));
        free(*(v32 - 32));
      }

      v178 = v31;
      *v33.i64 = 0.79 / *v163;
      v34 = *v33.i64;
      v35 = DWORD1(v179);
      if (DWORD1(v179))
      {
        v36 = 0;
        v37 = v180;
        v38 = v179;
        v39 = (v179 + 3) & 0x1FFFFFFFCLL;
        v33 = vdupq_n_s64(v179 - 1);
        v40 = *(&v180 + 1) + 8;
        v41 = vdupq_n_s64(4uLL);
        do
        {
          if (v38)
          {
            v42 = v40;
            v43 = v39;
            v44 = xmmword_240C111D0;
            v45 = xmmword_240C111C0;
            do
            {
              v46 = vmovn_s64(vcgeq_u64(v33, v44));
              if (vuzp1_s16(v46, *v33.i8).u8[0])
              {
                *(v42 - 2) = v34;
              }

              if (vuzp1_s16(v46, *&v33).i8[2])
              {
                *(v42 - 1) = v34;
              }

              if (vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v33, *&v45))).i32[1])
              {
                *v42 = v34;
                v42[1] = v34;
              }

              v45 = vaddq_s64(v45, v41);
              v44 = vaddq_s64(v44, v41);
              v42 += 4;
              v43 -= 4;
            }

            while (v43);
          }

          ++v36;
          v40 += v37;
        }

        while (v36 != v35);
      }

      v47 = DWORD1(v176);
      if (DWORD1(v176))
      {
        v48 = 0;
        *v33.i32 = 1.0 / (v34 + 0.001);
        v49 = v177;
        v50 = v176;
        v51 = vdupq_n_s64(v176 - 1);
        v52 = (v176 + 3) & 0x1FFFFFFFCLL;
        v53 = *(&v177 + 1) + 8;
        v54 = vdupq_n_s64(4uLL);
        do
        {
          if (v50)
          {
            v55 = v53;
            v56 = v52;
            v57 = xmmword_240C111D0;
            v58 = xmmword_240C111C0;
            do
            {
              v59 = vmovn_s64(vcgeq_u64(v51, v57));
              if (vuzp1_s16(v59, *v33.i8).u8[0])
              {
                *(v55 - 2) = v33.i32[0];
              }

              if (vuzp1_s16(v59, *&v33).i8[2])
              {
                *(v55 - 1) = v33.i32[0];
              }

              if (vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v51, *&v58))).i32[1])
              {
                *v55 = v33.i32[0];
                v55[1] = v33.i32[0];
              }

              v58 = vaddq_s64(v58, v54);
              v57 = vaddq_s64(v57, v54);
              v55 += 4;
              v56 -= 4;
            }

            while (v56);
          }

          ++v48;
          v53 += v49;
        }

        while (v48 != v47);
      }

      sub_240B6A1A4(v162, v25, v34, 0.0);
      if (!*&v229[40])
      {
        v60 = *&v229[24];
        *&v229[24] = 0;
        if (v60)
        {
          atomic_fetch_add(&qword_27E519020, -*(v60 - 24));
          free(*(v60 - 32));
        }
      }
    }

    if (!*&v226[40])
    {
      v61 = *&v226[24];
      *&v226[24] = 0;
      if (v61)
      {
        atomic_fetch_add(&qword_27E519020, -*(v61 - 24));
        free(*(v61 - 32));
      }
    }

    if (!v26)
    {
LABEL_119:
      if (*(a1 + 425) != 1 || (v26 = sub_240C0F1B0(v195, a4, flt_240C848B8, a6), !v26))
      {
        if (v166)
        {
          sub_240B699B4(v226);
          *(a8 + 208) = *v226;
          v121 = *&v226[8];
          *&v226[8] = 0;
          sub_240B3ABD8((a8 + 216), v121);
          *(a8 + 224) = *&v226[16];
          memcpy((a8 + 240), &v226[32], 0x2B0uLL);
          sub_240B3CB68((a8 + 928));
          *(a8 + 928) = v227;
          *(a8 + 944) = v228;
          v228 = 0;
          v227 = 0u;
          *v229 = &v227;
          sub_240B3CBC8(v229);
          sub_240B38BD0(&v226[8]);
          if (*(v168 + 480) == 1)
          {
            v122 = *(a8 + 4580);
            v123 = *(a8 + 4584);
            v124 = *(a8 + 4588);
            memset(&v226[20], 0, 64);
            memset(&v226[88], 0, 64);
            memset(&v226[156], 0, 64);
            memset(&v226[224], 0, 108);
            memset(&v229[4], 0, 208);
            v230 = 0;
            *v226 = 6;
            *&v226[8] = 1;
            *&v226[16] = 1.0 / v122;
            *&v226[84] = 1.0 / v123;
            *&v226[152] = 1.0 / v124;
            *&v226[492] = *&v229[160];
            *&v226[508] = *&v229[176];
            *&v226[524] = *&v229[192];
            *&v226[540] = 0;
            *&v226[428] = *&v229[96];
            *&v226[444] = *&v229[112];
            *&v226[460] = *&v229[128];
            *&v226[476] = *&v229[144];
            *&v226[364] = *&v229[32];
            *&v226[380] = *&v229[48];
            *&v226[396] = *&v229[64];
            *&v226[412] = *&v229[80];
            *&v226[332] = *v229;
            *&v226[348] = *&v229[16];
            v226[552] = 0;
            sub_240BA1EF4(&v220);
          }
        }

        sub_240B23590(v226, ((a4[3] >> 3) * (a4[2] >> 3) + 3) & 0xFFFFFFFC, 4u);
        v26 = *&v226[40];
        if (!*&v226[40])
        {
          v169 = (a8 + 152);
          v125 = *&v226[24];
          *&v226[24] = 0;
          v126 = *&v226[32];
          v182 = *v226;
          v127 = *(&v183 + 1);
          *&v183 = *&v226[16];
          *(&v183 + 1) = v125;
          if (v127)
          {
            atomic_fetch_add(&qword_27E519020, -*(v127 - 24));
            free(*(v127 - 32));
            v125 = *(&v183 + 1);
          }

          v128 = 0;
          *&v184[0] = v126;
          v129 = v182;
          v130 = v183;
          v131 = v125 + 4 * v182 - 16;
          v132 = 4;
          do
          {
            if (v129 >= 4)
            {
              v133 = (v131 + v128);
              *v133 = 0;
              v133[1] = 0;
            }

            v128 += v130;
            --v132;
          }

          while (v132);
          if (!*&v226[40])
          {
            v134 = *&v226[24];
            *&v226[24] = 0;
            if (v134)
            {
              atomic_fetch_add(&qword_27E519020, -*(v134 - 24));
              free(*(v134 - 32));
            }
          }

          v135 = v195;
          *&v186 = a8 + 208;
          if (*(v185 + 48) > 5)
          {
            v136 = 1;
          }

          else
          {
            v136 = 0x1FFFFF;
          }

          sub_240B69D34(a8 + 208, v136);
          *(&v186 + 1) = *(&v180 + 1);
          *&v187 = v180 >> 2;
          if (v176 && DWORD1(v176))
          {
            *(&v187 + 1) = *(&v177 + 1);
            *&v188 = v177 >> 2;
          }

          if (v173 && DWORD1(v173))
          {
            *(&v188 + 1) = *(&v174 + 1);
            *&v189 = v174 >> 2;
          }

          v137 = v135[2];
          v138 = *a4;
          v139 = v137 * a4[1];
          *(&v189 + 1) = v135[3] + v139 + 4 * *a4;
          v140 = v135[8] + v139 + 4 * v138;
          v141 = v135[13] + v139 + 4 * v138;
          *&v190 = v140;
          *(&v190 + 1) = v141;
          *&v191 = v137 >> 2;
          v142 = (*v185 + 0.13732) / 1.1373;
          *(&v191 + 2) = powf(v142, 0.33678) * 1.2;
          v192 = powf(v142, 0.50991) * 9.3089;
          *(&v191 + 3) = powf(v142, 0.36703) * 10.833;
          LOBYTE(v206) = 0;
          *v226 = &v206;
          *&v226[8] = a8 + 8;
          *&v226[16] = a8 + 4544;
          *&v226[24] = &v182;
          *&v226[32] = &v195;
          *&v226[40] = a4;
          *&v226[48] = a8 + 208;
          *&v226[56] = v167;
          *&v226[64] = &v185;
          *&v226[72] = a8 + 152;
          *&v226[80] = v194;
          *&v226[88] = a1;
          *&v226[96] = &v179;
          *&v226[104] = a8 + 1064;
          *&v226[112] = a8 + 952;
          *&v226[120] = a8 + 1024;
          v147 = ((*(a8 + 80) + 7) >> 3) * ((*(a8 + 72) + 7) >> 3);
          *v229 = &v185;
          *&v229[8] = v194;
          *&v229[16] = &v182;
          if (a6)
          {
            v148 = sub_240BAAED0(a6, v147, v229, v226, v143, v144, v145, v146);
          }

          else
          {
            *&v220 = 0;
            *(&v220 + 1) = &v220;
            v148 = sub_240BAAED0(&v220, v147, v229, v226, v143, v144, v145, v146);
          }

          v26 = v148;
          if (!v148)
          {
            v149 = atomic_load(&v206);
            if (v149)
            {
              v26 = 1;
            }

            else
            {
              sub_240B786F4(v169, v15);
              if ((v158 & 1) != 0 || (v26 = sub_240B79F5C(a1, a2, v195, &v179, a8, a5), !v26))
              {
                v26 = 0;
                if (*(a8 + 4592) <= 6)
                {
                  if (v166)
                  {
                    sub_240BA8880(v163, (a8 + 1024), v169, a8 + 1760);
                    v26 = 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_154:
  v150 = *(&v174 + 1);
  *(&v174 + 1) = 0;
  if (v150)
  {
    atomic_fetch_add(&qword_27E519020, -*(v150 - 24));
    free(*(v150 - 32));
  }

  v151 = *(&v177 + 1);
  *(&v177 + 1) = 0;
  if (v151)
  {
    atomic_fetch_add(&qword_27E519020, -*(v151 - 24));
    free(*(v151 - 32));
  }

  v152 = *(&v180 + 1);
  *(&v180 + 1) = 0;
  if (v152)
  {
    atomic_fetch_add(&qword_27E519020, -*(v152 - 24));
    free(*(v152 - 32));
  }

  sub_240B38BD0(v184 + 1);
  v153 = *(&v183 + 1);
  *(&v183 + 1) = 0;
  if (v153)
  {
    atomic_fetch_add(&qword_27E519020, -*(v153 - 24));
    free(*(v153 - 32));
  }

  sub_240B786A0(&v193[5]);
  sub_240B38BD0(&v193[1]);
  *v226 = v194;
  sub_240BAAF84(v226);
  if (v26)
  {
    goto LABEL_163;
  }

  v156 = *MEMORY[0x277D85DE8];

  return sub_240B8565C(a1, v14, a4, a5, a6, a8, a7);
}

void sub_240B9D1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void **a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a26)
  {
    atomic_fetch_add(&qword_27E519020, -*(a26 - 24));
    free(*(a26 - 32));
  }

  if (a32)
  {
    atomic_fetch_add(&qword_27E519020, -*(a32 - 24));
    free(*(a32 - 32));
  }

  if (a38)
  {
    atomic_fetch_add(&qword_27E519020, -*(a38 - 24));
    free(*(a38 - 32));
  }

  sub_240B38BD0(&a46);
  if (a44)
  {
    atomic_fetch_add(&qword_27E519020, -*(a44 - 24));
    free(*(a44 - 32));
  }

  sub_240B786A0(&a69);
  sub_240B38BD0(&a65);
  a50 = &a72;
  sub_240BAAF84(&a50);
  _Unwind_Resume(a1);
}

void sub_240B9D414(uint64_t a1, void *a2)
{
  v3 = a1;
  v138[3] = *MEMORY[0x277D85DE8];
  if (*(a1 + 4592) <= 6)
  {
    v5 = *(a1 + 1024);
    v6 = HIDWORD(v5);
    if (HIDWORD(v5))
    {
      v7 = 0;
      LODWORD(v8) = 0;
      v9 = 0;
      v10 = *(a1 + 176);
      do
      {
        v11 = v10;
        v12 = v5;
        if (v5)
        {
          do
          {
            v13 = *v11++;
            v14 = v13 >> 1;
            LODWORD(v8) = (1 << byte_240C848C4[v14]) | v8;
            if (v14 - 18 >= 9)
            {
              v15 = 1 << byte_240C848C4[v14];
            }

            else
            {
              v15 = 0;
            }

            v9 = v15 | v9;
            --v12;
          }

          while (v12);
        }

        ++v7;
        v10 += *(v3 + 168);
      }

      while (v7 != HIDWORD(v5));
      v6 = v9 << 32;
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v16 = *(v3 + 156) >= 5u || *(v3 + 152) >= 5u;
    if (!v16)
    {
      v6 = 0;
    }

    v4 = v6 | v8;
  }

  else
  {
    v4 = 0x100000001;
  }

  sub_240B245C8((v3 + 5240), *(v3 + 4272));
  if (*(v3 + 4272))
  {
    v17 = 0;
    v105 = HIDWORD(v4);
    v106 = 0;
    v112 = v3;
    v119 = a2;
    v107 = v4;
    do
    {
      v18 = *(v3 + 4592);
      v109 = v17;
      v110 = *(*(v3 + 4224) + 8 * v17);
      v108 = *(v3 + 5240);
      v111 = *(v3 + 5232);
      v103 = *(v3 + 1568);
      v104 = *(v3 + 1560);
      sub_240B2B9C0(v137, 0x60300uLL);
      if (v105)
      {
        v19 = v18 > 2 && v105 == 1;
        v20 = v19;
        if (a2[14])
        {
          v21 = 0;
          v22 = 0xBF58476D1CE4E5B9;
          v23 = 0x94D049BB133111EBLL;
          v120 = v20;
          do
          {
            v25 = a2[9];
            v24 = a2[10];
            v26 = v21 / v24;
            v27 = 32 * (v21 / v24);
            v28 = a2[8];
            v115 = v27;
            v116 = 32 * (v21 % v24);
            v29 = v28 - v116;
            if (v28 < v116)
            {
              v29 = 0;
            }

            if (v116 + 32 <= v28)
            {
              v30 = 32;
            }

            else
            {
              v30 = v29;
            }

            v16 = v25 >= 32 * v26;
            v31 = v25 - 32 * v26;
            if (!v16)
            {
              v31 = 0;
            }

            if (v27 + 32 <= v25)
            {
              v32 = 32;
            }

            else
            {
              v32 = v31;
            }

            v117 = v32;
            v130 = (*(*v110 + 16))(v110);
            for (i = 0; i != 3; ++i)
            {
              v138[i] = (*(*v110 + 32))(v110, i, v21, 0);
            }

            if (v117)
            {
              v132 = 0;
              v118 = 0;
              v113 = *(v112 + 168);
              v114 = *(v112 + 176);
              v121 = v30;
              v122 = v21;
              do
              {
                if (v30)
                {
                  v34 = 0;
                  v35 = v114 + v113 * (v118 + v115) + v116;
                  do
                  {
                    v36 = *(v35 + v34);
                    if (v36)
                    {
                      v37 = (v22 >> 5) ^ ((v23 ^ (v23 << 23)) >> 18) ^ v22 ^ v23 ^ (v23 << 23);
                      if ((v22 + v23) < 0 && v20)
                      {
                        v23 = v22;
                      }

                      else
                      {
                        v126 = (v22 >> 5) ^ ((v23 ^ (v23 << 23)) >> 18) ^ v22 ^ v23 ^ (v23 << 23);
                        v128 = v34;
                        v39 = 0;
                        v40 = v36 >> 1;
                        v41 = 64 << byte_240C83828[v40];
                        v42 = 3 * byte_240C848C4[v40];
                        v43 = byte_240C87EA0[v40];
                        v44 = byte_240C87EBB[v40];
                        if (v44 >= v43)
                        {
                          v45 = v43;
                        }

                        else
                        {
                          v45 = v44;
                        }

                        if (v44 <= v43)
                        {
                          v46 = v43;
                        }

                        else
                        {
                          v46 = v44;
                        }

                        v47 = v137[0];
                        v124 = v41;
                        if (v41 <= 1)
                        {
                          v48 = 1;
                        }

                        else
                        {
                          v48 = v41;
                        }

                        do
                        {
                          v49 = qword_240C83970[v42 + v39];
                          v50 = v138[v39];
                          v51 = &v47[256 * v49];
                          if (v130)
                          {
                            v52 = (v50 + 4 * v132);
                            v53 = v48;
                            do
                            {
                              v54 = *v52++;
                              v55 = *v51;
                              if (!v54)
                              {
                                ++v55;
                              }

                              *v51 = v55;
                              v51 += 4;
                              --v53;
                            }

                            while (v53);
                          }

                          else
                          {
                            v56 = (v50 + 2 * v132);
                            v57 = v48;
                            do
                            {
                              v58 = *v56++;
                              v59 = *v51;
                              if (!v58)
                              {
                                ++v59;
                              }

                              *v51 = v59;
                              v51 += 4;
                              --v57;
                            }

                            while (v57);
                          }

                          if (v45)
                          {
                            v60 = v137[0] + 256 * v49;
                            v61 = v45;
                            do
                            {
                              if (v46)
                              {
                                memset(v60, 255, 4 * v46);
                              }

                              v60 += 32 * v46;
                              --v61;
                            }

                            while (v61);
                          }

                          ++v39;
                        }

                        while (v39 != 3);
                        v37 = v126;
                        v132 += v124;
                        v34 = v128;
                        v23 = v22;
                        a2 = v119;
                        v20 = v120;
                        v30 = v121;
                        v21 = v122;
                        v35 = v114 + v113 * (v118 + v115) + v116;
                      }
                    }

                    else
                    {
                      v37 = v22;
                    }

                    ++v34;
                    v22 = v37;
                  }

                  while (v34 != v30);
                }

                else
                {
                  v37 = v22;
                }

                v22 = v37;
                ++v118;
              }

              while (v118 != v117);
            }

            else
            {
              v37 = v22;
            }

            ++v21;
            v22 = v37;
          }

          while (v21 < a2[14]);
        }
      }

      atomic_fetch_add_explicit(&qword_27E5165E0, 1uLL, memory_order_relaxed);
      v62 = malloc_type_malloc(0x80100uLL, 0xF0EBF2FBuLL);
      LODWORD(v4) = v107;
      if (v62)
      {
        v63 = v62 & 0xFFFFFFFFFFFFFF80;
        v64 = (v62 & 0xFFFFFFFFFFFFFF80) + 256;
        *(v63 + 240) = v62;
        *(v63 + 248) = 0x80000;
      }

      else
      {
        v64 = 0;
      }

      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = v103 + 4 * v104 * v109;
      v138[0] = v64;
      v138[1] = 0;
      v138[2] = 0;
      v134 = 0;
      v135 = 0;
      v136 = 0;
      v127 = v105;
      v3 = v112;
      do
      {
        v69 = byte_240C848C4[v66];
        v70 = 1 << v69;
        if (((1 << v69) & v67) == 0)
        {
          v67 |= (1 << v69);
          v71 = (v70 & v4) != 0 && (v70 & v111) == 0;
          if (v71 && (*(v108 + 4 * v109) & v70) == 0)
          {
            v125 = 1 << v69;
            v72 = (byte_240C87EA0[v66] * byte_240C87EBB[v66]) << 6;
            if (v72 > v135 - v65)
            {
              sub_240B245C8(&v134, (byte_240C87EA0[v66] * byte_240C87EBB[v66]) << 6);
              v65 = v134;
            }

            sub_240B220A4(v66, v65);
            if ((v125 & v127) == 0)
            {
              v99 = 0;
              v65 = v134;
              v100 = 4 * v72;
              v101 = &qword_240C83970[3 * v69];
              do
              {
                memcpy((v68 + (v101[v99++] << 8)), v65, v100);
              }

              while (v99 != 3);
              LODWORD(v4) = v107;
              goto LABEL_97;
            }

            v123 = v67;
            v73 = 0;
            v133 = 0;
            v74 = 3 * v69;
            v75 = 1.0 / sqrt(v72);
            v65 = v134;
            v131 = v134;
            v129 = 3 * v69;
            while (1)
            {
              v76 = v138[0];
              v77 = qword_240C83970[v74 + v73];
              if (v72)
              {
                v78 = v137[0] + 256 * v77;
                v79 = (v138[0] + 4);
                v80 = v72;
                do
                {
                  v81 = *v65++;
                  *(v79 - 1) = v81;
                  *v79 = ((*&v78[4 * v81] * v75) + 0.1);
                  v79 += 2;
                  --v80;
                }

                while (v80);
                v82 = &v76[8 * v72];
                if (v72 >= 0x81)
                {
                  v83 = v68;
                  v84 = v72;
                  while (1)
                  {
                    v85 = operator new(8 * v84, MEMORY[0x277D826F0]);
                    if (v85)
                    {
                      break;
                    }

                    v86 = v84 >> 1;
                    v87 = v84 > 1;
                    v84 >>= 1;
                    if (!v87)
                    {
                      v3 = v112;
                      v74 = v129;
                      goto LABEL_113;
                    }
                  }

                  v97 = v85;
                  sub_240B8B638(v76, &v76[8 * v72], v72, v85, v84);
                  operator delete(v97);
                  v3 = v112;
                  v68 = v83;
                  v74 = v129;
                  goto LABEL_114;
                }

                v86 = 0;
              }

              else
              {
                v86 = 0;
                v82 = v138[0];
              }

LABEL_113:
              sub_240B8B638(v76, v82, v72, 0, v86);
LABEL_114:
              v65 = v131;
              if (v72)
              {
                v88 = v133;
                v89 = (v103 + v104 * v106 + (v77 << 8));
                v90 = (v76 + 64);
                v91 = v131;
                v92 = v72;
                do
                {
                  v93.i32[0] = *(v90 - 16);
                  v93.i32[1] = *(v90 - 14);
                  v93.i32[2] = *(v90 - 12);
                  v93.i32[3] = *(v90 - 10);
                  v94.i32[0] = *(v90 - 8);
                  v94.i32[1] = *(v90 - 6);
                  v94.i32[2] = *(v90 - 4);
                  v94.i32[3] = *(v90 - 2);
                  v95.i32[0] = *v90;
                  v95.i32[1] = v90[2];
                  v95.i32[2] = v90[4];
                  v95.i32[3] = v90[6];
                  v96.i32[0] = v90[8];
                  v96.i32[1] = v90[10];
                  v96.i32[2] = v90[12];
                  v96.i32[3] = v90[14];
                  v89[2] = v95;
                  v89[3] = v96;
                  *v89 = v93;
                  v89[1] = v94;
                  v89 += 4;
                  v88 = vornq_s8(v88, vuzp1q_s8(vuzp1q_s16(vceqq_s32(*v91, v93), vceqq_s32(v91[1], v94)), vuzp1q_s16(vceqq_s32(v91[2], v95), vceqq_s32(v91[3], v96))));
                  v91 += 4;
                  v90 += 32;
                  v92 -= 16;
                }

                while (v92);
                v133 = vmaxvq_u8(vcltzq_s8(vshlq_n_s8(v88, 7uLL))) & 1;
              }

              if (++v73 == 3)
              {
                if (v133)
                {
                  v98 = -1;
                }

                else
                {
                  v98 = ~v125;
                }

                v127 &= v98;
                LODWORD(v4) = v107;
                v67 = v123;
                break;
              }
            }
          }
        }

LABEL_97:
        ++v66;
      }

      while (v66 != 27);
      *(v108 + 4 * v109) |= v127;
      if (v65)
      {
        v135 = v65;
        operator delete(v65);
      }

      sub_240B8B5E4(v138);
      if (v137[0])
      {
        v137[1] = v137[0];
        operator delete(v137[0]);
      }

      v17 = v109 + 1;
      v106 += 4;
    }

    while ((v109 + 1) < *(v3 + 4272));
  }

  *(v3 + 5232) |= v4;
  v102 = *MEMORY[0x277D85DE8];
}

void sub_240B9DD4C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 176);
  if (v3)
  {
    *(v1 - 168) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_240B9DD94(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v12 = a3;
  memset(v11, 0, sizeof(v11));
  v10 = v11;
  v9 = 0;
  v8[0] = &v9;
  v8[1] = a3;
  v8[2] = &v12;
  v8[3] = v11;
  v8[4] = a1;
  v3 = *(a3 + 120);
  if (a2)
  {
    v4 = sub_240BA0F44(a2, v3, &v10, v8);
  }

  else
  {
    v13[0] = 0;
    v13[1] = v13;
    v4 = sub_240BA0F44(v13, v3, &v10, v8);
  }

  v5 = v4;
  if (!v4)
  {
    v6 = atomic_load(&v9);
    v5 = v6 & 1;
  }

  sub_240BA0FF8(v11);
  return v5;
}

void sub_240B9DE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_240BA0FF8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_240B9DE54(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t **a5, uint64_t a6)
{
  v7 = a2;
  v124 = *MEMORY[0x277D85DE8];
  v8 = a2 + 4096;
  v106 = a3;
  v107 = a2;
  v9 = *(a2 + 4272);
  v104 = v9;
  v105 = a5;
  v10 = *(a2 + 120);
  v11 = *(a2 + 128);
  v92 = v11;
  v93 = v10;
  if ((*(a2 + 4208) & 1) != 0 || v10 != 1)
  {
    v103 = 0;
  }

  else
  {
    v103 = v9 == 1;
    if (v9 == 1)
    {
      goto LABEL_7;
    }
  }

  v9 = v11 + v9 * v10 + 2;
LABEL_7:
  v12 = *a5;
  v13 = a5[1];
  v14 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - *a5) >> 3);
  v15 = v9 - v14;
  if (v9 <= v14)
  {
    if (v9 < v14)
    {
      for (i = &v12[5 * v9]; v13 != i; v13 -= 5)
      {
        sub_240B22320(v13 - 2);
      }

      a5[1] = i;
    }
  }

  else
  {
    v16 = a5[2];
    if (0xCCCCCCCCCCCCCCCDLL * ((v16 - v13) >> 3) < v15)
    {
      if (v9 <= 0x666666666666666)
      {
        v112 = a5;
        v17 = 0xCCCCCCCCCCCCCCCDLL * (v16 - v12);
        if (2 * v17 > v9)
        {
          v9 = 2 * v17;
        }

        if (v17 >= 0x333333333333333)
        {
          v18 = 0x666666666666666;
        }

        else
        {
          v18 = v9;
        }

        sub_240B839AC(v18);
      }

      sub_240B228BC();
    }

    bzero(v13, 40 * ((40 * v15 - 40) / 0x28) + 40);
    a5[1] = &v13[5 * ((40 * v15 - 40) / 0x28) + 5];
  }

  v101 = &v105;
  v102 = &v103;
  v100[0] = &v101;
  v100[1] = v7 + 8;
  if (*(v8 + 113) != 1)
  {
    goto LABEL_44;
  }

  v20 = *(a1 + 24);
  if ((v20 & 2) != 0)
  {
    v22 = *a5;
    sub_240B8C03C(&v122);
  }

  v21 = &v105;
  if ((v20 & 0x10) != 0)
  {
    v23 = *v105;
    v117 = xmmword_240C117D0;
    v119 = 0;
    v120 = 0;
    v118 = 0;
    v121 = xmmword_240C117E0;
    BYTE9(v121) = 1;
    BYTE11(v121) = 0;
    sub_240B8C03C(&v122);
  }

  if (v20)
  {
    v24 = *v105;
    sub_240B53650(v111, *v105, 128);
    v25 = 0;
    v26 = *v24;
    do
    {
      *(v24[3] + (v26 >> 3)) = (llroundf(*(v7 + 1224 + v25) * 1024.0) << (v26 & 7)) | *(v24[3] + (v26 >> 3));
      v26 = *v24 + 10;
      *v24 = v26;
      v25 += 4;
    }

    while (v25 != 32);
    sub_240B536C8(v111, v24, 4, a6);
    v21 = v101;
  }

  v27 = sub_240BC0AC0(v7 + 208, **v21, 5, a6);
  if (!v27)
  {
    if (!*(a1 + 12))
    {
      v61 = **v101;
      *&v117 = &unk_2852A1B18;
      *&v111[0] = &unk_2852A2120;
      *(v111 + 8) = xmmword_240C112C0;
      *(&v111[1] + 1) = 0;
      sub_240B6A048(&v117, v111);
      *(&v117 + 1) = *(v7 + 984);
      v27 = sub_240C0EB88(&v117, v61, 5, a6);
      if (v27)
      {
        goto LABEL_122;
      }

      sub_240B53650(v111, v61, 10 * (*(v7 + 1864) - *(v7 + 1856)) + 34 * (((*(v7 + 1792) - *(v7 + 1784)) >> 2) + ((*(v7 + 1768) - *(v7 + 1760)) >> 2) + ((*(v7 + 1816) - *(v7 + 1808)) >> 2) + ((*(v7 + 1840) - *(v7 + 1832)) >> 2)) + 1033);
      if (*(v7 + 1760) == *(v7 + 1768) && *(v7 + 1784) == *(v7 + 1792) && *(v7 + 1808) == *(v7 + 1816) && *(v7 + 1832) == *(v7 + 1840) && (v62 = *(v7 + 1856), *(v7 + 1864) - v62 == 21) && ((v63 = *v62, v64 = v62[1], v65 = *(v62 + 13), v63 == 0x504030302020100) ? (v66 = v64 == 0x908070606060606) : (v66 = 0), v66 ? (v67 = v65 == 0xD0C0B0A09090807) : (v67 = 0), v67))
      {
        *(v61[3] + (*v61 >> 3)) = (1 << (*v61 & 7)) | *(v61[3] + (*v61 >> 3));
        ++*v61;
        v83 = a6;
      }

      else
      {
        v68 = 0;
        *(v61[3] + (*v61 >> 3)) = *(v61[3] + (*v61 >> 3));
        ++*v61;
        v122 = 0x100000000;
        LODWORD(v123) = 2;
        do
        {
          v69 = (v7 + 1760 + 24 * *(&v122 + v68));
          *(v61[3] + (*v61 >> 3)) = ((v69[1] - *v69) << (*v61 & 7)) | *(v61[3] + (*v61 >> 3));
          *v61 += 4;
          v70 = *v69;
          v71 = v69[1];
          while (v70 != v71)
          {
            v72 = *v70++;
            sub_240C0F0B8(0x20700000003, 0x20221F0000220FLL, (2 * v72) ^ (v72 >> 31), v61);
          }

          v68 += 4;
        }

        while (v68 != 12);
        v7 = a2;
        *(v61[3] + (*v61 >> 3)) = ((*(a2 + 1840) - *(a2 + 1832)) >> 2 << (*v61 & 7)) | *(v61[3] + (*v61 >> 3));
        *v61 += 4;
        v73 = *(a2 + 1832);
        v74 = *(a2 + 1840);
        while (v73 != v74)
        {
          v75 = *v73++;
          sub_240C0F0B8(0x8200000001, 0x58700000184, v75 - 1, v61);
        }

        v83 = a6;
        sub_240B8D74C((a2 + 1856), *(a2 + 1880), v61);
      }

      sub_240B536C8(v111, v61, 12, v83);
      v84 = *(v7 + 1200);
      v85 = *(v7 + 1208);
      v86 = *(v7 + 1212);
      v87 = *(v7 + 1216);
      v88 = *(v7 + 1220);
      sub_240B53650(v111, v61, 61);
      v89 = *v61;
      if (!v87 && !v88 && v84 == 84 && v85 == 0.0 && v86 == 1.0)
      {
        v90 = 1;
        v91 = 1;
      }

      else
      {
        *(v61[3] + (v89 >> 3)) = *(v61[3] + (v89 >> 3));
        ++*v61;
        sub_240C0F0B8(0x8000010080000054, 0x204F00000047, v84, v61);
        sub_240C0EF60(v61, v85);
        sub_240C0EF60(v61, v86);
        *(v61[3] + (*v61 >> 3)) = ((v87 + 128) << (*v61 & 7)) | *(v61[3] + (*v61 >> 3));
        v89 = *v61 + 8;
        *v61 = v89;
        v91 = v88 + 128;
        v90 = 8;
      }

      *(v61[3] + (v89 >> 3)) = (v91 << (v89 & 7)) | *(v61[3] + (v89 >> 3));
      *v61 += v90;
      sub_240B536C8(v111, v61, 8, a6);
    }

    v28 = v106;
    v29 = *(v107 + 4208);
    v30 = **v101;
    v31 = sub_240B53650(&v122, v30, 1);
    v32 = v28[18];
    if (v32 == v28[19] || *v32 == v32[1])
    {
      *(v30[3] + (*v30 >> 3)) = *(v30[3] + (*v30 >> 3));
      ++*v30;
      v33 = a6;
      sub_240B536C8(v31, v30, 6, a6);
    }

    else
    {
      *(v30[3] + (*v30 >> 3)) = (1 << (*v30 & 7)) | *(v30[3] + (*v30 >> 3));
      ++*v30;
      sub_240B536C8(v31, v30, 6, a6);
      sub_240B8464C(&v117, (v28 + 64), v28[3], v28[4], v29);
      memset(v111, 0, 24);
      v113 = 0;
      v114 = 0;
      v112 = 0;
      sub_240B2BCB4(&v115);
      memset(v116, 0, sizeof(v116));
      __p = 0;
      v109 = 0;
      v110 = 0;
      sub_240B7DFCC(&v117, 6uLL, (v28 + 18), v111, &__p, v30, 6, a6);
      sub_240B84584(v28[18], v111, &__p, 0, v30, 6, a6);
      if (__p)
      {
        operator delete(__p);
      }

      __p = v116;
      sub_240B30C38(&__p);
      if (v112)
      {
        v113 = v112;
        operator delete(v112);
      }

      __p = v111;
      sub_240B7BC3C(&__p);
      BYTE10(v121) = v29;
      BYTE11(v121) = v29;
      sub_240BA2C68(&v118, v28[150], v28[151], (v28[151] - v28[150]) >> 3);
      sub_240B7DFCC(&v117, (0xCCCCCCCCCCCCCCCDLL * ((v28[16] - v28[15]) >> 3) + 1) >> 1, (v28 + 24), v28 + 27, (v28 + 43), v30, 7, a6);
      if (v118)
      {
        operator delete(v118);
      }

      v33 = a6;
    }

    v34 = **v101;
    memset(v111, 0, sizeof(v111));
    v27 = sub_240BB6D54(v106, v34, v33, 7, v111);
    if (!v27)
    {
LABEL_44:
      __p = 0;
      v109 = 0;
      v110 = 0;
      v99[0] = &__p;
      v99[1] = a6;
      *&v117 = &__p;
      *(&v117 + 1) = &v101;
      v118 = &v107;
      v119 = a1;
      v120 = &v106;
      v35 = *(v7 + 128);
      if (a4)
      {
        v36 = sub_240BA04B8(a4, v35, v99, &v117);
      }

      else
      {
        *&v111[0] = 0;
        *(&v111[0] + 1) = v111;
        v36 = sub_240BA04B8(v111, v35, v99, &v117);
      }

      v27 = v36;
      if (v36)
      {
        goto LABEL_121;
      }

      if (!*(a1 + 12))
      {
        v38 = v92 + 1;
        v39 = v107;
        if (*v102)
        {
          v38 = 0;
        }

        v40 = &(**v101)[5 * v38];
        v27 = sub_240BC0330(v107 + 208, v40, 5, a6, v106);
        if (v27)
        {
          goto LABEL_121;
        }

        v41 = *(v39 + 120);
        v42 = __clz(v41) ^ 0x3F;
        if ((v41 & (v41 - 1)) != 0)
        {
          v43 = v42 + 1;
        }

        else
        {
          v43 = v42;
        }

        if ((*(v39 + 4208) & 1) == 0 && v43)
        {
          sub_240B53650(v111, v40, v43);
          *(v40[3] + (*v40 >> 3)) = ((*(v39 + 4200) - 1) << (*v40 & 7)) | *(v40[3] + (*v40 >> 3));
          *v40 += v43;
          sub_240B536C8(v111, v40, 12, a6);
        }

        if (*(v39 + 4272))
        {
          v44 = 0;
          v45 = 0;
          while (1)
          {
            if ((*(v39 + 4208) & 1) == 0)
            {
              v46 = *(*(v39 + 5240) + 4 * v45);
              *&v111[0] = 0;
              if (!sub_240B545F8(0x800000138000005FLL, 0xC80000000, v46, &v122, v111))
              {
                sub_240B53650(v111, v40, *&v111[0]);
                sub_240C0F0B8(0x800000138000005FLL, 0xC80000000, *(*(v39 + 5240) + 4 * v45), v40);
                sub_240B536C8(v111, v40, 11, a6);
                v47 = *(*(v39 + 5240) + 4 * v45);
                v48 = *(v39 + 1560) * v45;
                v49 = *(v39 + 1568);
                sub_240B8C480();
              }

LABEL_114:
              v27 = 1;
              goto LABEL_121;
            }

            v50 = *(v39 + 4592);
            v51 = *(v39 + 1880);
            *(v111 + 4) = 0x100000004;
            HIDWORD(v111[0]) = 2;
            v112 = 0;
            v111[1] = 0uLL;
            v113 = -1;
            LOBYTE(v114) = 0;
            *(&v114 + 3) = 0;
            if (v50 >= 8)
            {
              break;
            }

            if (v50 < 2)
            {
              LODWORD(v111[0]) = 2;
              goto LABEL_73;
            }

            *&v111[0] = 1;
            if (v50 != 2)
            {
              goto LABEL_67;
            }

LABEL_68:
            DWORD2(v111[0]) = 0;
LABEL_73:
            if (*(v39 + 4600))
            {
              v113 = 6;
              v52 = 6;
            }

            else
            {
              v52 = -1;
            }

            v53 = *(v39 + 4208);
            v54 = *(v39 + 4209);
            v55 = *(v39 + 5184);
            if (v53 == 1)
            {
              v56 = 0xAAAAAAAAAAAAAAABLL * ((*(v55 + v44 + 56) - *(v55 + v44 + 48)) >> 3);
              if (*(v39 + 4209))
              {
                ++v56;
                BYTE4(v114) = 1;
              }

              v57 = 128 - v56;
              v58 = 4;
              if (v57 < 4)
              {
                v58 = v57;
              }

              if (v57 >= 0x14)
              {
                v59 = v57 >> 2;
              }

              else
              {
                v59 = v58;
              }

              if (v52 >= v59)
              {
                v52 = v59;
              }

              v113 = v52;
              v60 = 1;
            }

            else
            {
              v60 = *(v39 + 4200);
            }

            BYTE2(v114) = v53;
            BYTE1(v114) = v54;
            sub_240B7DFCC(v111, v60 * (495 * v51), v55 + v44, (v55 + v44 + 48), v55 + v44 + 24, v40, 12, a6);
            ++v45;
            v44 += 176;
            if (v45 >= *(v39 + 4272))
            {
              goto LABEL_49;
            }
          }

          *&v111[0] = 0;
LABEL_67:
          HIDWORD(v111[0]) = 1;
          goto LABEL_68;
        }
      }

LABEL_49:
      v98 = 0;
      *&v111[0] = &v98;
      *(&v111[0] + 1) = &__p;
      *&v111[1] = &v107;
      *(&v111[1] + 1) = &v106;
      v112 = a2;
      v113 = &v104;
      v114 = a1;
      v115 = v100;
      if (a4)
      {
        v37 = sub_240BA056C(a4, v93, v99, v111);
      }

      else
      {
        v122 = 0;
        v123 = &v122;
        v37 = sub_240BA056C(&v122, v93, v99, v111);
      }

      v27 = v37;
      if (!v37)
      {
        v76 = atomic_load(&v98);
        if (v76)
        {
          goto LABEL_114;
        }

        sub_240BA0620(v99, 0);
        v78 = *v105;
        v77 = v105[1];
        while (v78 != v77)
        {
          v79 = sub_240B53650(&v122, v78, 8);
          v80 = ((*v78 + 7) & 0xFFFFFFFFFFFFFFF8) - *v78;
          if (v80)
          {
            *(v78[3] + (*v78 >> 3)) = *(v78[3] + (*v78 >> 3));
            *v78 += v80;
          }

          sub_240B536C8(v79, v78, 12, a6);
          v78 += 5;
        }

        v27 = 0;
      }

LABEL_121:
      *&v111[0] = &__p;
      sub_240BA08EC(v111);
    }
  }

LABEL_122:
  v81 = *MEMORY[0x277D85DE8];
  return v27;
}

void sub_240BA02F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void **p_p)
{
  p_p = &__p;
  sub_240BA08EC((v53 - 224));
  _Unwind_Resume(a1);
}

BOOL sub_240BA04B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a2;
  v7[0] = a3;
  v7[1] = a4;
  if (*a1)
  {
    return (*a1)(*(a1 + 8), v7, sub_240BA0F24, sub_240BA0CAC, 0, a2) != 0;
  }

  sub_240BA0620(a3, 1uLL);
  for (i = 0; i != v4; ++i)
  {
    sub_240BA0CAC(v7, i, 0);
  }

  return 0;
}

BOOL sub_240BA056C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a2;
  v7[0] = a3;
  v7[1] = a4;
  if (*a1)
  {
    return (*a1)(*(a1 + 8), v7, sub_240BA0C8C, sub_240BA0A20, 0, a2) != 0;
  }

  sub_240BA0620(a3, 1uLL);
  for (i = 0; i != v4; ++i)
  {
    sub_240BA0A20(v7, i, 0);
  }

  return 0;
}

void sub_240BA0620(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = *(*a1 + 8);
  v6 = (v5 - v4) >> 3;
  if (a1[1])
  {
    for (; v6 > a2; v6 = (v5 - **a1) >> 3)
    {
      sub_240C0DCF8(a1[1], *(v5 - 8));
      sub_240BA0940(*a1, (*(*a1 + 8) - 8));
      v5 = *(*a1 + 8);
    }

    if (v6 < a2)
    {
      operator new();
    }
  }

  else
  {
    v8 = a2 - v6;
    if (a2 <= v6)
    {
      if (a2 < v6)
      {
        v13 = (v4 + 8 * a2);
        v14 = *a1;

        sub_240BA0940(v14, v13);
      }
    }

    else
    {
      v9 = v3[2];
      if (v8 > (v9 - v5) >> 3)
      {
        if (!(a2 >> 61))
        {
          v15 = *a1;
          v10 = v9 - v4;
          v11 = v10 >> 2;
          if (v10 >> 2 <= a2)
          {
            v11 = a2;
          }

          if (v10 >= 0x7FFFFFFFFFFFFFF8)
          {
            v12 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v12 = v11;
          }

          sub_240B7BF5C(v12);
        }

        sub_240B228BC();
      }

      bzero(*(*a1 + 8), 8 * v8);
      v3[1] = v5 + 8 * v8;
    }
  }
}

void sub_240BA08EC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_240BA0940(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_240BA0940(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 8);
  while (v4 != a2)
  {
    v5 = *--v4;
    result = v5;
    *v4 = 0;
    if (v5)
    {
      result = MEMORY[0x245CCE590](result, 0x1000C40BB8981BBLL);
    }
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t sub_240BA09A8(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      MEMORY[0x245CCE590](v4, 0x1000C40BB8981BBLL);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_240BA0A20(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = *(result + 8);
  v4 = atomic_load(*v3);
  if ((v4 & 1) == 0)
  {
    v5 = **(v3 + 16);
    v6 = *(v5 + 4208) == 1 ? a2 % *(*(v3 + 32) + 88) + 8 * (*(v5 + 4216) % *(**(v3 + 24) + 464)) + (a2 / *(*(v3 + 32) + 88) + 8 * (*(v5 + 4216) / *(**(v3 + 24) + 464))) * *(**(v3 + 24) + 448) : a2;
    if (**(v3 + 40))
    {
      v7 = 0;
      v8 = 0;
      v9 = *(**(v3 + 8) + 8 * a3);
      v10 = a2;
      v11 = a2 + 2;
      v27 = v6;
      while (1)
      {
        if (!*(*(v3 + 48) + 12))
        {
          v12 = **(v3 + 16);
          v13 = v10;
          v14 = *(*(v12 + 5208) + 8 * v10);
          v15 = *(v3 + 56);
          v16 = *v15;
          v17 = *(v15[1] + 120) + v11 + *(v15[1] + 112) * v8;
          if (**(v16 + 8))
          {
            v17 = 0;
          }

          v18 = (***v16 + 40 * v17);
          v19 = *(v12 + 4200);
          v20 = __clz(v19) ^ 0x3F;
          if ((v19 & (v19 - 1)) != 0)
          {
            v21 = v20 + 1;
          }

          else
          {
            v21 = v20;
          }

          if (v21)
          {
            sub_240B53650(&v28, v18, v21);
            *(v18[3] + (*v18 >> 3)) = (v14 << (*v18 & 7)) | *(v18[3] + (*v18 >> 3));
            *v18 += v21;
            sub_240B536C8(&v28, v18, 12, v9);
          }

          v10 = v13;
          sub_240B84584(*(*(v12 + 5184) + v7) + 24 * v13, *(v12 + 5184) + v7 + 48, (*(v12 + 5184) + v7 + 24), (495 * *(v12 + 1880)) * v14, v18, 13, v9);
          v6 = v27;
        }

        v22 = **(v3 + 24);
        v23 = *(v3 + 56);
        v24 = *v23;
        v25 = *(v23[1] + 120) + v11 + *(v23[1] + 112) * v8;
        if (**(v24 + 8))
        {
          v25 = 0;
        }

        v26 = (***v24 + 40 * v25);
        v28 = 5;
        v29 = 0;
        v30 = v6;
        v31 = v8;
        result = sub_240BB6D54(v22, v26, v9, 14, &v28);
        if (result)
        {
          break;
        }

        ++v8;
        v7 += 176;
        if (v8 >= **(v3 + 40))
        {
          return result;
        }
      }

      atomic_store(1u, *v3);
    }
  }

  return result;
}

uint64_t sub_240BA0CAC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 8);
  v6 = *(**v4 + 8 * a3);
  v7 = a2 + 1;
  if (**(v5 + 8))
  {
    v7 = 0;
  }

  v8 = (***v5 + 40 * v7);
  v9 = **(v4 + 16);
  v10 = a2;
  if (*(v9 + 4208) == 1)
  {
    v10 = *(v9 + 4216);
  }

  v11 = *(v4 + 24);
  if (!*(v11 + 12) && (*(v11 + 24) & 0x20) == 0)
  {
    sub_240B53650(&v38, v8, 2);
    *(v8[3] + (*v8 >> 3)) = (*(*(**(v4 + 32) + 24) + v10) << (*v8 & 7)) | *(v8[3] + (*v8 >> 3));
    *v8 += 2;
    sub_240B536C8(&v38, v8, 8, v6);
    v12 = **(v4 + 32);
    v34 = 1;
    v35 = 0;
    v36 = v10;
    v37 = 0;
    sub_240BB6D54(v12, v8, v6, 8, &v34);
  }

  v13 = **(v4 + 32);
  v38 = 2;
  v39 = 0;
  v40 = v10;
  v41 = 0;
  result = sub_240BB6D54(v13, v8, v6, 9, &v38);
  if (!*(*(v4 + 24) + 12))
  {
    v15 = **(v4 + 16);
    v16 = v15[13];
    v17 = a2 / v16;
    v18 = a2 % v16;
    v19 = v15[17];
    v20 = v19 * v18;
    v21 = v19 * v17;
    v23 = v15[9];
    v22 = v15[10];
    v24 = v20 + v19;
    v25 = v23 >= v20;
    v26 = v23 - v20;
    if (!v25)
    {
      v26 = 0;
    }

    if (v24 <= v23)
    {
      v26 = v19;
    }

    v27 = v21 + v19;
    v25 = v22 >= v21;
    v28 = v22 - v21;
    if (!v25)
    {
      v28 = 0;
    }

    if (v27 <= v22)
    {
      v29 = v19;
    }

    else
    {
      v29 = v28;
    }

    v30 = v26 * v29;
    v31 = __clz(v30) ^ 0x3F;
    if ((v30 & (v30 - 1)) != 0)
    {
      v32 = v31 + 1;
    }

    else
    {
      v32 = v31;
    }

    if (v32)
    {
      sub_240B53650(&v38, v8, v32);
      *(v8[3] + (*v8 >> 3)) = ((*(***(v4 + 32) + 8 * v10) - 1) << (*v8 & 7)) | *(v8[3] + (*v8 >> 3));
      *v8 += v32;
      sub_240B536C8(&v38, v8, 10, v6);
    }

    v33 = **(v4 + 32);
    v38 = 3;
    v39 = 0;
    v40 = v10;
    v41 = 0;
    return sub_240BB6D54(v33, v8, v6, 10, &v38);
  }

  return result;
}

BOOL sub_240BA0F44(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t **a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a2;
  v7[0] = a3;
  v7[1] = a4;
  if (*a1)
  {
    return (*a1)(*(a1 + 8), v7, sub_240BA106C, sub_240BA1278, 0, a2) != 0;
  }

  sub_240BA106C(v7, 1uLL);
  for (i = 0; i != v4; ++i)
  {
    sub_240BA1278(v7, i, 0);
  }

  return 0;
}

void **sub_240BA0FF8(void **a1)
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
        for (i = -16; i != -136; i -= 40)
        {
          sub_240B22320(&v3[i]);
        }

        v3 -= 120;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_240BA106C(uint64_t ***a1, unint64_t a2)
{
  v2 = **a1;
  v3 = *v2;
  v4 = v2[1];
  v5 = 0xEEEEEEEEEEEEEEEFLL * ((v4 - *v2) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = v3 + 120 * a2;
      while (v4 != v11)
      {
        for (i = -16; i != -136; i -= 40)
        {
          sub_240B22320((v4 + i));
        }

        v4 -= 120;
      }

      v2[1] = v11;
    }
  }

  else
  {
    v7 = v2[2];
    if (0xEEEEEEEEEEEEEEEFLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0x222222222222222)
      {
        v8 = 0xEEEEEEEEEEEEEEEFLL * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x111111111111111)
        {
          v10 = 0x222222222222222;
        }

        else
        {
          v10 = v9;
        }

        if (v10 <= 0x222222222222222)
        {
          operator new();
        }

        sub_240B2291C();
      }

      sub_240B228BC();
    }

    bzero(v2[1], 120 * ((120 * v6 - 120) / 0x78) + 120);
    v2[1] = v4 + 120 * ((120 * v6 - 120) / 0x78) + 120;
  }

  return 0;
}

void sub_240BA1278(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v196[128] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v4 = atomic_load(*v3);
  if ((v4 & 1) == 0)
  {
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    v7 = v5[11];
    v8 = a2 / v7;
    v141 = a2;
    v9 = v5[17];
    v10 = (v9 >> 3) * (a2 % v7);
    v12 = v5[9];
    v11 = v5[10];
    v13 = v10 + (v9 >> 3);
    v144 = v10;
    v14 = v12 >= v10;
    v15 = v12 - v10;
    if (!v14)
    {
      v15 = 0;
    }

    v16 = (v9 >> 3) * v8;
    if (v13 <= v12)
    {
      v17 = v9 >> 3;
    }

    else
    {
      v17 = v15;
    }

    v151 = v17;
    v18 = v16 + (v9 >> 3);
    v143 = v16;
    v14 = v11 >= v16;
    v19 = v11 - v16;
    if (!v14)
    {
      v19 = 0;
    }

    v20 = v18 <= v11 ? v9 >> 3 : v19;
    v149 = v20;
    v21 = *v6;
    if (*(*v6 + 5192) != *(*v6 + 5184))
    {
      v139 = 0;
      v22 = 0;
      v140 = *(a1 + 8);
      do
      {
        v142 = v22;
        v23 = *(v21[528] + 8 * v22);
        v184[0] = (*(*v23 + 24))(v23, 0, v141, 0);
        v24 = *(*(**(v140 + 16) + 4224) + 8 * v142);
        v184[1] = (*(*v24 + 24))(v24, 1, v141, 0);
        v25 = *(*(**(v140 + 16) + 4224) + 8 * v142);
        v184[2] = (*(*v25 + 24))(v25, 2, v141, 0);
        v26 = v140;
        v27 = **(v140 + 24);
        v28 = (v27 + 120 * a3);
        if (!*v28)
        {
          sub_240B3A99C(v192, 0x20u, 0x20u);
          if (v195)
          {
            atomic_store(1u, *v140);
            break;
          }

          sub_240B2A358(v185, v192);
          sub_240B30D80(v28, v185);
          v29 = 13;
          v26 = v140;
          do
          {
            sub_240B22320(&v185[v29]);
            v29 -= 5;
          }

          while (v29 != -2);
          if (!v195)
          {
            v30 = -120;
            v31 = &v194;
            do
            {
              sub_240B22320(v31);
              v31 -= 5;
              v30 += 40;
            }

            while (v30);
          }

          v27 = **(v140 + 24);
        }

        v33 = *(v26 + 8);
        v32 = *(v26 + 16);
        v34 = v26;
        v35 = *(v33 + 1560);
        v169 = v33;
        v36 = *(v33 + 1568);
        v166 = *(v34 + 32);
        v37 = (*(*(*v32 + 5184) + 176 * v142) + 24 * v141);
        v37[1] = *v37;
        v178 = v37;
        sub_240B49544(v37, 192 * v151 * v149);
        memset(v185, 0, 24);
        if (v149)
        {
          v38 = 0;
          v39 = (v27 + 120 * a3);
          v147 = v39[3];
          v148 = v39[2];
          v40 = v166 + 48;
          v145 = v39[13];
          v146 = v39[8];
          v154 = v36 + v35 * v139;
          do
          {
            v41 = v166;
            v42 = *(v166 + 61);
            v43 = v38 >> (v42 - byte_240C85338[*(v166 + 48)]);
            v44 = v38 >> (v42 - byte_240C85338[*(v166 + 52)]);
            v191[0] = v43;
            v191[1] = v44;
            v45 = v38 >> (v42 - byte_240C85338[*(v166 + 56)]);
            v191[2] = v45;
            v190[0] = v147 + v43 * v148;
            v190[1] = v146 + v44 * v148;
            v190[2] = v145 + v45 * v148;
            if (v43)
            {
              v46 = v147 + (v43 - 1) * v148;
            }

            else
            {
              v46 = 0;
            }

            if (v44)
            {
              v47 = v146 + (v44 - 1) * v148;
            }

            else
            {
              v47 = 0;
            }

            v189[0] = v46;
            v189[1] = v47;
            v48 = v145 + (v45 - 1) * v148;
            if (!v45)
            {
              v48 = 0;
            }

            v189[2] = v48;
            if (v151)
            {
              v49 = 0;
              v165 = *(v169 + 1616) + *(v169 + 1608) * (v143 + v38) + v144;
              v163 = v38;
              v164 = *(v169 + 1048) + *(v169 + 1040) * (v143 + v38) + 4 * v144;
              v50 = *(v169 + 176) + *(v169 + 168) * (v143 + v38) + v144;
              v150 = v50;
              do
              {
                v51 = *(v50 + v49);
                if (v51)
                {
                  v52 = 0;
                  v53 = v51 >> 1;
                  v54 = *(v41 + 60);
                  v55 = v49 >> (v54 - byte_240C85334[*(v41 + 52)]);
                  v188[0] = v49 >> (v54 - byte_240C85334[*(v41 + 48)]);
                  v188[1] = v55;
                  v56 = byte_240C87EA0[v53];
                  v188[2] = v49 >> (v54 - byte_240C85334[*(v41 + 56)]);
                  v168 = v53;
                  v57 = byte_240C87EBB[v53];
                  v58 = v57 * v56;
                  v180 = __clz(__rbit64(v58));
                  v176 = v58 << 6;
                  if (v57 >= v56)
                  {
                    v59 = v56;
                  }

                  else
                  {
                    v59 = v57;
                  }

                  if (v57 <= v56)
                  {
                    v60 = v56;
                  }

                  else
                  {
                    v60 = v57;
                  }

                  v186 = 1;
                  v187 = 2;
                  v155 = 4 * v58;
                  v179 = v58 - 1;
                  v153 = (v196 - 4 * v60);
                  v160 = 32 * v60;
                  v161 = v60;
                  v61 = 8 * v60;
                  v159 = 8 * v59;
                  v172 = v57 * v56;
                  v158 = v58 << 6;
                  if (v56 <= 1)
                  {
                    v56 = 1;
                  }

                  else
                  {
                    v56 = v56;
                  }

                  if (v57 <= 1)
                  {
                    v57 = 1;
                  }

                  else
                  {
                    v57 = v57;
                  }

                  v157 = v57;
                  v156 = (v56 + 3) & 0x1FC;
                  v183 = vdupq_n_s64(v56 - 1);
                  v162 = v59;
                  v152 = 32 * v59 * v60;
                  v167 = v49;
                  do
                  {
                    v62 = *(&v186 + v52);
                    v63 = v188[v62];
                    v64 = *(v40 + 4 * v62);
                    if (v63 << (*(v41 + 60) - byte_240C85334[v64]) == v49)
                    {
                      v173 = *(&v186 + v52);
                      if (v191[v62] << (*(v41 + 61) - byte_240C85338[v64]) == v38)
                      {
                        v65 = v184[v62];
                        v171 = v185[v62];
                        v66 = v65 + 4 * v171;
                        v67 = v190[v62];
                        v177 = v66;
                        if (v172 == 1)
                        {
                          v68 = 0;
                          v69 = 1;
                          v70 = 0uLL;
                          do
                          {
                            v71 = v69;
                            v70 = vaddq_s32(v70, vceqzq_s32(vbicq_s8(*(v66 + 1 * v68), xmmword_240C83950[v68])));
                            v68 = 1;
                            v69 = 0;
                          }

                          while ((v71 & 1) != 0);
                          for (i = 1; i != 8; ++i)
                          {
                            v73 = 0;
                            v74 = 1;
                            do
                            {
                              v75 = v74;
                              v70 = vaddq_s32(v70, vceqzq_s32(*(v66 + 32 * i + 4 * v73)));
                              v73 = 4;
                              v74 = 0;
                            }

                            while ((v75 & 1) != 0);
                          }

                          v181 = vaddvq_s32(v70) + 64;
                          *(v67 + 4 * v63) = v181;
                        }

                        else
                        {
                          bzero(&v193, 0x470uLL);
                          v192[1] = -1;
                          v192[0] = -1;
                          if (v162)
                          {
                            v76 = 0;
                            v77 = 0uLL;
                            v78 = (v65 + 4 * v171);
                            v79 = 4 * (v148 >> 2);
                            v80 = v160;
                            v81 = v161;
                            do
                            {
                              if (v161)
                              {
                                v82 = 0;
                                v83 = v153;
                                v84 = v78;
                                do
                                {
                                  v85 = *v83++;
                                  v86 = v85;
                                  v87 = *v84++;
                                  v77 = vaddq_s32(v77, vceqzq_s32(vbicq_s8(v87, v86)));
                                  v82 += 4;
                                }

                                while (v82 < v61);
                              }

                              ++v76;
                              v78 = (v78 + v160);
                            }

                            while (v76 != v162);
                          }

                          else
                          {
                            v77 = 0uLL;
                            v79 = 4 * (v148 >> 2);
                            v80 = v160;
                            v81 = v161;
                          }

                          if (v159 <= v162)
                          {
                            v90 = v156;
                          }

                          else
                          {
                            v88 = v65 + v152 + 4 * v171;
                            v89 = v162;
                            v90 = v156;
                            do
                            {
                              if (v81)
                              {
                                v91 = 0;
                                v92 = v88;
                                do
                                {
                                  v93 = *v92++;
                                  v77 = vaddq_s32(v77, vceqzq_s32(v93));
                                  v91 += 4;
                                }

                                while (v91 < v61);
                              }

                              ++v89;
                              v88 += v80;
                            }

                            while (v89 != v159);
                          }

                          v94 = 0;
                          v181 = vaddvq_s32(v77) + v158;
                          v95 = (v179 + v181) >> v180;
                          v96 = v67 + 4 * v63 + 8;
                          do
                          {
                            v97 = v96;
                            v98 = v90;
                            v99 = xmmword_240C111D0;
                            v100 = xmmword_240C111C0;
                            do
                            {
                              v101 = vmovn_s64(vcgeq_u64(v183, v99));
                              if (vuzp1_s16(v101, *v99.i8).u8[0])
                              {
                                *(v97 - 2) = v95;
                              }

                              if (vuzp1_s16(v101, *&v99).i8[2])
                              {
                                *(v97 - 1) = v95;
                              }

                              if (vuzp1_s16(*&v99, vmovn_s64(vcgeq_u64(v183, *&v100))).i32[1])
                              {
                                *v97 = v95;
                                v97[1] = v95;
                              }

                              v102 = vdupq_n_s64(4uLL);
                              v100 = vaddq_s64(v100, v102);
                              v99 = vaddq_s64(v99, v102);
                              v97 += 4;
                              v98 -= 4;
                            }

                            while (v98);
                            ++v94;
                            v96 += v79;
                          }

                          while (v94 != v157);
                        }

                        v103 = byte_240C848C4[v168];
                        v104 = qword_240C83970[3 * v103 + v173];
                        v105 = v189[v173];
                        if (v63)
                        {
                          if (v105)
                          {
                            v106 = (v105[v63] + *(v67 + 4 * v63 - 4) + 1) / 2;
                          }

                          else
                          {
                            v106 = *(v67 + 4 * v63 - 4);
                          }
                        }

                        else if (v105)
                        {
                          v106 = *v105;
                        }

                        else
                        {
                          v106 = 32;
                        }

                        v107 = v181;
                        v108 = sub_240B426A4((v169 + 1760), *(v165 + v49), *(v164 + 4 * v63), v103, v173);
                        v109 = v108;
                        if (v106 >= 0x40)
                        {
                          v110 = 64;
                        }

                        else
                        {
                          v110 = v106;
                        }

                        if (v106 >= 8)
                        {
                          v110 = (v110 >> 1) + 4;
                        }

                        v111 = v108 + v110 * *(v169 + 1880);
                        v112 = v178;
                        v114 = v178[1];
                        v113 = v178[2];
                        v170 = v52;
                        if (v114 >= v113)
                        {
                          v118 = *v178;
                          v119 = v114 - *v178;
                          v120 = (v119 >> 3) + 1;
                          if (v120 >> 61)
                          {
                            sub_240B228BC();
                          }

                          v121 = v113 - v118;
                          if (v121 >> 2 > v120)
                          {
                            v120 = v121 >> 2;
                          }

                          if (v121 >= 0x7FFFFFFFFFFFFFF8)
                          {
                            v122 = 0x1FFFFFFFFFFFFFFFLL;
                          }

                          else
                          {
                            v122 = v120;
                          }

                          if (v122)
                          {
                            sub_240B299F4(v122);
                          }

                          v123 = (8 * (v119 >> 3));
                          *v123 = 2 * v111;
                          v123[1] = v181;
                          v115 = v123 + 2;
                          memcpy(0, v118, v119);
                          v112 = v178;
                          *v178 = 0;
                          v178[2] = 0;
                          if (v118)
                          {
                            operator delete(v118);
                            v112 = v178;
                          }

                          v116 = v176;
                          v117 = v177;
                          v107 = v181;
                        }

                        else
                        {
                          *v114 = 2 * v111;
                          v114[1] = v181;
                          v115 = v114 + 2;
                          v116 = v176;
                          v117 = v177;
                        }

                        v112[1] = v115;
                        if (v172 < v116 && v107)
                        {
                          v124 = 458 * v109 + 37 * *(v169 + 1880);
                          LOBYTE(v125) = v155 >= v107;
                          v126 = v112[2];
                          v127 = v154 + (v104 << 8);
                          v128 = v172;
                          v174 = v127;
                          v175 = v124;
                          do
                          {
                            v129 = *(v117 + 4 * *(v127 + 4 * v128));
                            v130 = v124 + (v125 & 1) + 2 * (word_240C83B30[v128 >> v180] + word_240C83AB0[(v179 + v107) >> v180]);
                            v131 = (2 * v129) ^ (v129 >> 31);
                            if (v115 >= v126)
                            {
                              v182 = v107;
                              v132 = *v112;
                              v133 = v115 - *v112;
                              v134 = (v133 >> 3) + 1;
                              if (v134 >> 61)
                              {
                                sub_240B228BC();
                              }

                              if ((v126 - v132) >> 2 > v134)
                              {
                                v134 = (v126 - v132) >> 2;
                              }

                              if (v126 - v132 >= 0x7FFFFFFFFFFFFFF8)
                              {
                                v135 = 0x1FFFFFFFFFFFFFFFLL;
                              }

                              else
                              {
                                v135 = v134;
                              }

                              if (v135)
                              {
                                sub_240B299F4(v135);
                              }

                              v136 = (8 * (v133 >> 3));
                              v126 = 0;
                              *v136 = 2 * v130;
                              v136[1] = v131;
                              v115 = v136 + 2;
                              memcpy(0, v132, v133);
                              v112 = v178;
                              *v178 = 0;
                              v178[2] = 0;
                              if (v132)
                              {
                                operator delete(v132);
                                v112 = v178;
                              }

                              v116 = v176;
                              v117 = v177;
                              v107 = v182;
                              v127 = v174;
                              LODWORD(v124) = v175;
                            }

                            else
                            {
                              *v115 = 2 * v130;
                              v115[1] = v131;
                              v115 += 2;
                            }

                            v112[1] = v115;
                            v125 = v129 != 0;
                            if (++v128 >= v116)
                            {
                              break;
                            }

                            v107 -= v125;
                          }

                          while (v107);
                        }

                        v52 = v170;
                        v185[v173] = v171 + v116;
                        v41 = v166;
                        v49 = v167;
                        v40 = v166 + 48;
                        v38 = v163;
                      }
                    }

                    v52 += 4;
                  }

                  while (v52 != 12);
                  v50 = v150;
                }

                ++v49;
              }

              while (v49 != v151);
            }

            ++v38;
          }

          while (v38 != v149);
        }

        v22 = v142 + 1;
        v21 = **(v140 + 16);
        v139 += 4;
      }

      while (v142 + 1 < (0x2E8BA2E8BA2E8BA3 * ((v21[649] - v21[648]) >> 4)));
    }
  }

  v137 = *MEMORY[0x277D85DE8];
}

void *sub_240BA1E88(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void sub_240BA1EF4(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void *sub_240BA1FAC(void *__dst, void *__src)
{
  if (*__dst == 7)
  {
    v4 = __dst[28];
    if (v4)
    {
      v5 = *v4;
      if (*v4)
      {
        *(v4 + 8) = v5;
        operator delete(v5);
      }

      MEMORY[0x245CCE590](v4, 0x10C402FEFCB83);
    }
  }

  memmove(__dst, __src, 0x229uLL);
  if (*__dst == 7 && __dst[28])
  {
    operator new();
  }

  return __dst;
}

BOOL sub_240BA2094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a2;
  v6[0] = sub_240B2AC64;
  v6[1] = a3;
  if (*a1)
  {
    return (*a1)(*(a1 + 8), v6, sub_240BA2600, sub_240BA22F0, 0, a2) != 0;
  }

  for (i = 0; i != v3; ++i)
  {
    sub_240BA22F0(v6, i);
  }

  return 0;
}

BOOL sub_240BA2144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a2;
  v6[0] = sub_240B2AC64;
  v6[1] = a3;
  if (*a1)
  {
    return (*a1)(*(a1 + 8), v6, sub_240BA22C8, sub_240BA21F4, 0, a2) != 0;
  }

  for (i = 0; i != v3; ++i)
  {
    sub_240BA21F4(v6, i);
  }

  return 0;
}

uint64_t sub_240BA21F4(uint64_t result, unsigned int a2)
{
  v2 = *(result + 8);
  v3 = atomic_load(*v2);
  if ((v3 & 1) == 0)
  {
    v4 = *(v2 + 16);
    v5 = **(v2 + 8);
    v6 = a2;
    v7 = v5[13];
    v8 = a2 / v7;
    v9 = v5[17];
    v10 = v9 * (a2 % v7);
    v11 = v5[9];
    v12 = v5[10];
    v13 = v11 - v10;
    if (v11 < v10)
    {
      v13 = 0;
    }

    v14 = v9 * v8;
    v19[0] = v10;
    v19[1] = v14;
    if (v10 + v9 <= v11)
    {
      v15 = v9;
    }

    else
    {
      v15 = v13;
    }

    v16 = v14 + v9;
    v17 = v12 >= v14;
    v18 = v12 - v14;
    if (!v17)
    {
      v18 = 0;
    }

    if (v16 <= v12)
    {
      v18 = v9;
    }

    v19[2] = v15;
    v19[3] = v18;
    result = sub_240BB7520(*v4, *(v2 + 24), *(v2 + 32), v19, a2, 0, v5);
    if (result || (result = sub_240BB8058(**(v2 + 16), v19, v6, 1, **(v2 + 8)), result))
    {
      atomic_store(1u, *v2);
    }
  }

  return result;
}

uint64_t sub_240BA22C8(unsigned int (**a1)(uint64_t), uint64_t a2)
{
  if ((*a1)(a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void sub_240BA22F0(uint64_t a1, unsigned int a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = **v2;
  if (*v3)
  {
    v4 = 0;
    v55 = *(v3 + 24) + *(v3 + 16) * a2;
    v56 = 8 * a2;
    v54 = a2 << 10;
    v5 = 2;
    do
    {
      v6 = v2[1];
      v8 = v6[8];
      v7 = v6[9];
      if (v56 + 8 >= v7)
      {
        v9 = v6[9];
      }

      else
      {
        v9 = v56 + 8;
      }

      v57 = v4 + 1;
      if (8 * (v4 + 1) >= v8)
      {
        v10 = v6[8];
      }

      else
      {
        v10 = 8 * (v4 + 1);
      }

      bzero(v58, 0x404uLL);
      if (v7 > v56)
      {
        v11 = v2[2];
        v13 = *v11;
        v12 = v11[1];
        v14 = *(v13 + 18);
        v15 = v14 + 48 * v12[1];
        v16 = *(v15 + 24);
        v17 = *v2[3];
        v18 = *(v15 + 16);
        v19 = v14 + 48 * v12[v17];
        v20 = *(v19 + 24);
        v21 = *(v19 + 16);
        v22 = v17 << 8;
        v23 = v20 + v5 + v54 * v21;
        v24 = v21 << 7;
        v25 = v16 + v5 + v54 * v18;
        v26 = v18 << 7;
        v27 = v56;
        do
        {
          if (v8 > 8 * v4)
          {
            v28 = (*v2[6] * -84.0) + 127.0;
            v29 = *v2[4] + v22 + 4;
            v30 = v25;
            v31 = v23;
            v32 = 8 * v4;
            do
            {
              for (i = 0; i != 63; ++i)
              {
                v34 = vcvts_n_f32_s32(*(v29 + 4 * i) * *(v30 + 2 * i), 0xBuLL);
                if (fabsf(v34) > 0.00000001)
                {
                  v35 = (v28 * v34) + (*(v31 + 2 * i) * 84.0);
                  v36 = v2[7];
                  v37 = *v36;
                  if (v34 <= 0.0)
                  {
                    v38 = *v36;
                  }

                  else
                  {
                    v38 = -*v36;
                  }

                  v39 = v35 + v38;
                  if (v34 <= 0.0)
                  {
                    v37 = -*v36;
                  }

                  v40 = (v35 + v37) / v34;
                  v41 = v39 / v34;
                  if (v41 >= 0.0)
                  {
                    v42 = v41;
                  }

                  else
                  {
                    v42 = 0.0;
                  }

                  v43 = 255.0;
                  if (v40 <= 255.0)
                  {
                    v43 = v40;
                  }

                  if (v42 <= v43)
                  {
                    v44 = vcvtps_s32_f32(v42);
                    ++v58[v44];
                    v45 = vcvtms_s32_f32(v43 + 1.0);
                    --v58[v45];
                  }
                }
              }

              ++v32;
              v31 += 128;
              v30 += 128;
            }

            while (v32 < v10);
          }

          ++v27;
          v23 += v24;
          v25 += v26;
        }

        while (v27 < v9);
      }

      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      do
      {
        v48 += v58[v46];
        if (v48 > v49)
        {
          v49 = v48;
          v47 = v46;
        }

        ++v46;
      }

      while (v46 != 256);
      v50 = 0;
      v51 = 0;
      do
      {
        if (v50 <= 0x7F)
        {
          v51 += v58[v50];
        }

        ++v50;
      }

      while (v50 != 256);
      v52 = v47 - 127;
      if (v49 <= v51 + 1)
      {
        v52 = 0;
      }

      *(v55 + v4) = v52;
      v5 += 1024;
      ++v4;
    }

    while (v57 < ***v2);
  }

  v53 = *MEMORY[0x277D85DE8];
}

uint64_t sub_240BA2600(unsigned int (**a1)(uint64_t), uint64_t a2)
{
  if ((*a1)(a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240BA2628(uint64_t a1)
{
  *(a1 + 48) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  result = sub_240B2BCB4(a1 + 104);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  return result;
}

void sub_240BA2688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = *(v10 + 80);
  if (v12)
  {
    *(v10 + 88) = v12;
    operator delete(v12);
  }

  sub_240B7BC3C(&a10);
  v13 = *(v10 + 24);
  if (v13)
  {
    *(v10 + 32) = v13;
    operator delete(v13);
  }

  a10 = v10;
  sub_240B31E8C(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_240BA26CC(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 176;
    sub_240B96E98(v3 - 176);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_240BA271C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_240BA279C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t *sub_240BA281C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v3 = v1;
    v2 = result[4];
    if (!v2)
    {
      sub_240B51630();
    }

    return (*(*v2 + 48))(v2, &v3);
  }

  return result;
}

uint64_t sub_240BA2890(uint64_t a1, uint64_t a2)
{
  if (sub_240B516C4(*(a2 + 8), "ZN3jxlL21GetExtraChannelBufferER26JxlChunkedFrameInputSourcemmmmmPmEUlPKvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240BA28E8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &off_2852A37F0;
  a2[1] = v2;
  return result;
}

unsigned int *sub_240BA297C(unsigned int *result, uint64_t a2)
{
  if (result[1])
  {
    v2 = *result == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v3 = result;
    v4 = 0;
    v6 = *(a2 + 16);
    v5 = *(a2 + 24);
    do
    {
      result = memcpy(v5, (*(v3 + 3) + *(v3 + 2) * v4++), 4 * *v3);
      v5 += v6;
    }

    while (v4 < v3[1]);
  }

  return result;
}

uint64_t sub_240BA29F8(uint64_t a1, uint64_t a2)
{
  if (sub_240B516C4(*(a2 + 8), "ZN3jxlL14GetColorBufferER26JxlChunkedFrameInputSourcemmmmPmEUlPKvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240BA2A50(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2852A3770;
  a2[1] = v2;
  return result;
}

uint64_t sub_240BA2AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v7 = (*(a1 + 376) + 96 * a2);
  v8 = v7[21];
  if (v8 == v7[22])
  {
    v8 = v7[12];
  }

  v9 = v7[20];
  *a7 = v9;
  return v8 + v9 * a4 + v7[19] * a3;
}

__n128 sub_240BA2B1C(uint64_t a1, uint64_t a2, __n128 *a3)
{
  v3 = (*(a1 + 376) + 96 * a2);
  result = v3[7];
  a3[1].n128_u64[0] = v3[8].n128_u64[0];
  *a3 = result;
  return result;
}

uint64_t sub_240BA2B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6 = *(a1 + 376);
  v7 = v6[9];
  if (v7 == v6[10])
  {
    v7 = *v6;
  }

  v8 = v6[8];
  *a6 = v8;
  return v7 + v8 * a3 + v6[7] * a2;
}

__n128 sub_240BA2B68(uint64_t a1, __n128 *a2)
{
  v2 = *(a1 + 376);
  result = v2[1];
  a2[1].n128_u64[0] = v2[2].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_240BA2B80(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v3 = v2 - *a2;
  if (v2 == *a2)
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = v3 - v6;
    sub_240BC219C(&__dst, a1, 1uLL, v3 - v6);
    result = v16;
    if (v16)
    {
      break;
    }

    v9 = __dst;
    v10 = __dst;
    v11 = v14;
    v12 = v15;
    __dst = 0;
    *&v14 = 0;
    if (v11 < v7)
    {
      v7 = v11;
    }

    memcpy(v9, (*a2 + v6), v7);
    v10 += v7;
    *&v11 = v11 - v7;
    *(&v11 + 1) += v7;
    sub_240B96F0C(&v10);
    if (!v16)
    {
      sub_240B96F0C(&__dst);
    }

    v6 += v7;
    if (v6 >= v3)
    {
      return 0;
    }
  }

  return result;
}

void *sub_240BA2C68(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_240B3C80C(v6, v10);
    }

    sub_240B228BC();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void *sub_240BA2D94(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x666666666666666)
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x333333333333333)
      {
        v11 = 0x666666666666666;
      }

      else
      {
        v11 = v10;
      }

      sub_240B87204(v6, v11);
    }

    sub_240B228BC();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v12 - v8) >> 3) >= a4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17 - 4);
    }

    v16 = &v8[v17];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13 - 4);
      v12 = v6[1];
    }

    v15 = a3 - v14;
    if (a3 != v14)
    {
      result = memmove(v12, v14, v15 - 4);
    }

    v16 = &v12[v15];
  }

  v6[1] = v16;
  return result;
}

uint64_t sub_240BA2EF4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    sub_240BA2FA8((a1 + 8), *(a2 + 8), *(a2 + 16), 0xF0B7672A07A44C6BLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
    sub_240BA2C68((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
    sub_240BA3124((a1 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 5);
    sub_240BA2C68((a1 + 80), *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 3);
    sub_240BA2C68((a1 + 104), *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 3);
  }

  return a1;
}

void sub_240BA2FA8(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xF0B7672A07A44C6BLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_240BA33AC(a1);
    if (a4 <= 0x7A44C6AFC2DD9CLL)
    {
      v9 = 0xE16ECE540F4898D6 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xF0B7672A07A44C6BLL * ((a1[2] - *a1) >> 3) >= 0x3D226357E16ECELL)
      {
        v10 = 0x7A44C6AFC2DD9CLL;
      }

      else
      {
        v10 = v9;
      }

      sub_240B87074(a1, v10);
    }

    sub_240B228BC();
  }

  v11 = a1[1] - v8;
  if (0xF0B7672A07A44C6BLL * (v11 >> 3) >= a4)
  {
    v12 = sub_240BA3250(a2, a3, v8);
    v13 = a1[1];
    if (v13 != v12)
    {
      v14 = v13 - 67;
      do
      {
        v15 = *v14;
        if (*v14)
        {
          v14[1] = v15;
          operator delete(v15);
        }

        v16 = v14 == v12;
        v14 -= 67;
      }

      while (!v16);
    }

    a1[1] = v12;
  }

  else
  {
    sub_240BA3250(a2, (a2 + v11), v8);
    a1[1] = sub_240B870C8(a1, (a2 + v11), a3, a1[1]);
  }
}

void *sub_240BA3124(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 5)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 59))
    {
      v9 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFE0)
      {
        v10 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_240B87034(v6, v10);
    }

    sub_240B228BC();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 5)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

char **sub_240BA3250(char **a1, char **a2, char **a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (a3 != v5)
      {
        v7 = *v5;
        v6 = v5[1];
        v8 = v6 - *v5;
        v9 = a3[2];
        v10 = *a3;
        if (v9 - *a3 < v8)
        {
          if (v10)
          {
            a3[1] = v10;
            operator delete(v10);
            v9 = 0;
            *a3 = 0;
            a3[1] = 0;
            a3[2] = 0;
          }

          v11 = v8 >> 4;
          if (!((v8 >> 4) >> 60))
          {
            if (v9 >> 3 > v11)
            {
              v11 = v9 >> 3;
            }

            if (v9 >= 0x7FFFFFFFFFFFFFF0)
            {
              v12 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v12 = v11;
            }

            sub_240B871C4(a3, v12);
          }

          sub_240B228BC();
        }

        v13 = a3[1];
        v14 = v13 - v10;
        if (v13 - v10 >= v8)
        {
          while (v7 != v6)
          {
            v20 = *v7++;
            *v10 = v20;
            v10 += 16;
          }

          a3[1] = v10;
        }

        else
        {
          if (v13 != v10)
          {
            v15 = v13 - v10;
            v16 = *v5;
            do
            {
              v17 = *v16;
              v16 += 16;
              *v10 = v17;
              v10 += 16;
              v15 -= 16;
            }

            while (v15);
          }

          for (i = v7 + v14; i != v6; i += 16)
          {
            v19 = *i;
            *v13 = v19;
            v13 += 16;
          }

          a3[1] = v13;
        }
      }

      memcpy(a3 + 3, v5 + 3, 0x200uLL);
      v5 += 67;
      a3 += 67;
    }

    while (v5 != a2);
  }

  return a3;
}

void sub_240BA33AC(uint64_t *a1)
{
  if (*a1)
  {
    sub_240B4BD60(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

BOOL sub_240BA33EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v7[0] = sub_240B2AC64;
  v7[1] = a3;
  if (*a1)
  {
    return (*a1)(*(a1 + 8), v7, sub_240BA35E8, sub_240BA35DC, 0, a2) != 0;
  }

  v5 = 0;
  v6 = a2;
  do
  {
    sub_240BA34A8(a3, v5++);
  }

  while (v6 != v5);
  return 0;
}

void sub_240BA34A8(uint64_t a1, uint64_t a2)
{
  v2 = atomic_load(*a1);
  if ((v2 & 1) == 0)
  {
    sub_240B7D1B4(&v15, 64);
    v14 = v15;
    v13 = v16 - v15;
    v6 = v7;
    v7[0] = 0;
    v12 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v7[3] = &v13;
    v8 = 0;
    v7[1] = 0;
    v7[2] = &v14;
    sub_240BC25B0(&v6);
    if (sub_240B909DC(**(a1 + 8) + 640 * a2, *(a1 + 16), **(a1 + 24), *(a1 + 32), *(a1 + 40), 0, &v6, **(a1 + 48)))
    {
      atomic_store(1u, *a1);
    }

    else
    {
      *(**(a1 + 56) + 8 * a2) = v8;
    }

    v5 = v12;
    v12 = 0;
    if (v5)
    {
      MEMORY[0x245CCE590](v5, 0x80C402FCC0CB6);
    }

    sub_240BA3610(v7[0]);
    if (v15)
    {
      v16 = v15;
      operator delete(v15);
    }
  }
}

void sub_240BA35B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_240BA3664(va);
  v4 = *(v2 - 40);
  if (v4)
  {
    *(v2 - 32) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240BA35E8(unsigned int (**a1)(uint64_t), uint64_t a2)
{
  if ((*a1)(a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void sub_240BA3610(void *a1)
{
  if (a1)
  {
    sub_240BA3610(*a1);
    sub_240BA3610(a1[1]);
    sub_240B22320(a1 + 8);

    operator delete(a1);
  }
}

uint64_t sub_240BA3664(uint64_t a1)
{
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    MEMORY[0x245CCE590](v2, 0x80C402FCC0CB6);
  }

  sub_240BA3610(*(a1 + 8));
  return a1;
}

uint64_t sub_240BA36B0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 640;
    sub_240B7BB60(i - 640);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_240BA3700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v102 = *MEMORY[0x277D85DE8];
  v16 = (a4 + 96);
  v15 = *(a4 + 96);
  if (!v15)
  {
    v17 = *(a4 + 416);
    if (v17 == *(a4 + 424))
    {
      v15 = 0;
    }

    else
    {
      v15 = *v17;
    }
  }

  v18 = v15;
  v19 = *(a4 + 100);
  if (v19)
  {
    v20 = *(a4 + 416);
    v21 = *(a4 + 424);
  }

  else
  {
    v20 = *(a4 + 416);
    v21 = *(a4 + 424);
    if (v20 == v21)
    {
      v19 = 0;
      v21 = *(a4 + 416);
    }

    else
    {
      v19 = *(v20 + 4);
    }
  }

  sub_240BA3EBC(v88, v18, v19, 0xCCCCCCCCCCCCCCCDLL * ((v21 - v20) >> 3));
  v85 = 0;
  v86 = 0;
  v87 = 0;
  v22 = *(a4 + 272) == 1;
  v23 = *(a2 + 1);
  v24 = v22 & v23;
  if ((v22 & v23) != 0)
  {
    v25 = 1;
  }

  else
  {
    v25 = 3;
  }

  v26 = *(a4 + 96);
  if (!v26)
  {
    v27 = *(a4 + 416);
    if (v27 == *(a4 + 424))
    {
      v26 = 0;
    }

    else
    {
      v26 = *v27;
    }
  }

  v71 = a7;
  v28 = 4 * v25 * v26;
  v29 = *(a4 + 100);
  if (!v29)
  {
    v30 = *(a4 + 416);
    if (v30 == *(a4 + 424))
    {
      v29 = 0;
    }

    else
    {
      v29 = *(v30 + 4);
    }
  }

  v31 = v28 * v29;
  if (v31)
  {
    sub_240B26918(&v85, v31);
    v32 = v85;
    v33 = v86;
  }

  else
  {
    v33 = 0;
    v32 = 0;
  }

  *__p = 0u;
  v84 = 0u;
  v82[0] = 0;
  v80 = 0u;
  memset(v81, 0, sizeof(v81));
  v79 = 0u;
  memset(v78, 0, sizeof(v78));
  v34 = *(a4 + 88);
    ;
  }

  v36 = v33 - v32;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v92 = v16;
  if ((v24 & 1) == 0)
  {
    v93 = (a4 + 136);
    v94 = a4 + 176;
  }

  v37 = sub_240B31610(&v92, v25, 32, 1, 0, v28, a6, v32, v36, __p);
  v72 = a5;
  v73 = a8;
  for (j = 104; j != -16; j -= 40)
  {
    sub_240B22320((v78 + j));
  }

  v75 = v85;
  if (!v37)
  {
    v39 = v90[0];
    if (v90[1] != v90[0])
    {
      v40 = (v86 - v85);
      LODWORD(v78[0]) = v25;
      memset(v78 + 4, 0, 20);
      sub_240BA3FD4(v90[0], v78, v88[0], v88[1]);
      *v39 = v75;
      v39[1] = v40;
    }

    v42 = *(a4 + 416);
    v41 = *(a4 + 424);
    if (v41 == v42)
    {
LABEL_52:
      v50 = *(a2 + 48);
      v79 = *(a2 + 32);
      v80 = v50;
      *&v81[0].__r_.__value_.__l.__data_ = *(a2 + 64);
      LODWORD(v81[0].__r_.__value_.__r.__words[2]) = *(a2 + 80);
      v51 = *(a2 + 16);
      v78[0] = *a2;
      v78[1] = v51;
      if (*(a2 + 111) < 0)
      {
        sub_240B4B67C(&v81[1], *(a2 + 88), *(a2 + 96));
      }

      else
      {
        v81[1] = *(a2 + 88);
      }

      memset(v82, 0, 24);
      v52 = *(a2 + 112);
      v53 = *(a2 + 120);
      v92 = v82;
      LOBYTE(v93) = 0;
      if (v53 != v52)
      {
        v54 = 0xCCCCCCCCCCCCCCCDLL * ((v53 - v52) >> 3);
        if (v54 < 0x666666666666667)
        {
          sub_240B3C974(v54);
        }

        sub_240B228BC();
      }

      *&v80 = *(a4 + 40);
      BYTE8(v80) = *(a4 + 57);
      HIDWORD(v80) = *(a4 + 60);
      *(&v81[0].__r_.__value_.__r.__words[1] + 4) = *(a4 + 48);
      std::string::operator=(&v81[1], (a4 + 64));
      sub_240B7D1B4(__p, 64);
      v77 = __p[0];
      v76 = __p[1] - __p[0];
      v92 = &v93;
      v93 = 0;
      v101 = 0;
      v98 = 0;
      v99 = 0;
      v100 = 0;
      v96 = &v76;
      v97 = 0;
      v94 = 0;
      v95 = &v77;
      sub_240BC25B0(&v92);
      if (!sub_240B909DC(a1, v78, a3, v88, v72, a6, &v92, v73))
      {
        sub_240BC2554(&v92);
        v91 = v77;
        if (v99 >= v98)
        {
          v55 = v76;
        }

        else
        {
          do
          {
            if (!v101)
            {
              v95 = &v91;
              v96 = &v76;
              sub_240BC25B0(&v92);
            }

            v55 = v76;
            if (!v76)
            {
              v56 = v91;
              v58 = __p[0];
              v57 = __p[1];
              v59 = __p[1] - __p[0];
              if (__p[1] - __p[0] < 1)
              {
                if ((v59 & 0x8000000000000000) != 0)
                {
                  v57 = __p[0] + 2 * v59;
                  __p[1] = v57;
                }

                v60 = __p[0];
              }

              else
              {
                sub_240B26918(__p, v59);
                v60 = __p[0];
                v57 = __p[1];
              }

              v91 = &v60[v56 - v58];
              v55 = v57 - v60 - (v56 - v58);
              v76 = v55;
            }
          }

          while (v99 < v98);
        }

        v62 = __p[0];
        v61 = __p[1];
        if (__p[1] - __p[0] >= v55)
        {
          if (__p[1] - __p[0] > __p[1] - __p[0] - v55)
          {
            v61 = __p[1] - v55;
            __p[1] = __p[1] - v55;
          }
        }

        else
        {
          sub_240B26918(__p, -v55);
          v62 = __p[0];
          v61 = __p[1];
        }

        if (v61 != v62)
        {
          v63 = v61 - v62;
          v64 = v61 - v62 + v71[1] + 1;
          sub_240B4ADF0(v71 + 1, v64);
          v65 = v71[3];
          if (v65)
          {
            v66 = v64;
          }

          else
          {
            v66 = 0;
          }

          v71[1] = v66;
          v67 = *v71;
          memcpy((v65 + (*v71 >> 3)), v62, v63);
          *(v71[3] + (v67 >> 3) + v63) = 0;
          *v71 += 8 * v63;
        }
      }

      v68 = v101;
      v101 = 0;
      if (v68)
      {
        MEMORY[0x245CCE590](v68, 0x80C402FCC0CB6);
      }

      sub_240BA3610(v93);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v92 = v82;
      sub_240B37840(&v92);
      if (SHIBYTE(v81[1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v81[1].__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v43 = 0;
      v44 = 1;
      while (1)
      {
        v45 = *v16;
        if (!v45)
        {
          if (v42 == v41)
          {
            v45 = 0;
          }

          else
          {
            v45 = *v42;
          }
        }

        v46 = *(a4 + 100);
        if (!v46)
        {
          if (v42 == v41)
          {
            v46 = 0;
          }

          else
          {
            v46 = v42[1];
          }
        }

        v47 = 4 * v45;
        sub_240B7D1B4(&v92, 4 * v45 * v46);
        __p[0] = (*(a4 + 416) + v43);
        memset(v78, 0, sizeof(v78));
        v48 = sub_240B31610(__p, 1uLL, 32, 1, 0, v47, a6, v92, v93 - v92, v78);
        if (!v48)
        {
          sub_240BA403C(v88, v44, v92, v93 - v92, &xmmword_240C83BB0);
        }

        if (v92)
        {
          v93 = v92;
          operator delete(v92);
        }

        if (v48)
        {
          break;
        }

        v42 = *(a4 + 416);
        v41 = *(a4 + 424);
        v43 += 40;
        if (v44++ >= 0xCCCCCCCCCCCCCCCDLL * ((v41 - v42) >> 3))
        {
          goto LABEL_52;
        }
      }
    }
  }

  if (v75)
  {
    operator delete(v75);
  }

  *&v78[0] = v90;
  sub_240BA4110(v78);
  result = sub_240B8D650(&v89);
  v70 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240BA3DF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_240BA3664(v47 - 176);
  if (__p)
  {
    a41 = __p;
    operator delete(__p);
  }

  sub_240B86C34(&a19);
  if (a44)
  {
    operator delete(a44);
  }

  sub_240BA419C(&a47);
  _Unwind_Resume(a1);
}

uint64_t sub_240BA3EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_2852A1938;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  v5 = a1 + 376;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 368) = 0;
  *(a1 + 360) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 376) = 0;
  if (a4 != -1)
  {
    sub_240BA42C4(v5, a4 + 1);
  }

  return a1;
}

void sub_240BA3FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_240BA4110(&a9);
  sub_240B8D650(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_240BA3FD4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 16);
  *(result + 16) = *a2;
  *(result + 32) = v4;
  *(result + 40) = a3;
  *(result + 48) = a4;
  v5 = *(result + 20);
  if (v5 > 5)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_240C83EC0[v5];
  }

  v7 = (v6 * *(result + 16)) >> 3;
  *(result + 56) = v7;
  v8 = v7 * a3;
  v9 = *(result + 32);
  if (v9 >= 2)
  {
    v8 = (v9 + v8 - 1) / v9 * v9;
  }

  *(result + 64) = v8;
  return result;
}

uint64_t sub_240BA403C(uint64_t *a1, unint64_t a2, uint64_t a3, unint64_t a4, __int128 *a5)
{
  v7 = a1[47];
  if (0xAAAAAAAAAAAAAAABLL * ((a1[48] - v7) >> 5) <= a2)
  {
    return 0;
  }

  v16 = v5;
  v17 = v6;
  v12 = (v7 + 96 * a2);
  v14 = *a5;
  v15 = *(a5 + 2);
  sub_240BA3FD4(v12, &v14, *a1, a1[1]);
  *v12 = a3;
  v12[1] = a4;
  if ((v12[6] - 1) * v12[8] + v12[7] * v12[5] > a4)
  {
    return 0;
  }

  sub_240BA41E0((a1[47] + 96 * a2));
  return 1;
}

void sub_240BA4110(void ***a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v4 -= 96;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_240BA419C(uint64_t a1)
{
  v3 = (a1 + 376);
  sub_240BA4110(&v3);
  sub_240B8D650(a1 + 72);
  return a1;
}

double sub_240BA41E0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v7 = 0;
    v6 = 0uLL;
    sub_240BA4250(&v6, v1, v1 + v3, v3);
    v4 = a1[9];
    if (v4)
    {
      a1[10] = v4;
      operator delete(v4);
    }

    result = *&v6;
    *(a1 + 9) = v6;
    a1[11] = v7;
    *a1 = 0;
  }

  return result;
}

uint64_t sub_240BA4250(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_240B291B0(result, a4);
  }

  return result;
}

void sub_240BA42A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_240BA42C4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_240B228BC();
}

uint64_t sub_240BA4324(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, float32x4_t *a6, float32x4_t *a7, int a8, float a9, __n128 a10, int8x16_t a11, double a12, __n128 *a13)
{
  v13 = *(result + 40);
  v14 = *(result + 8 * (3 * a3 + a2) + 72);
  if (a2 != 1 && a5 * a4 >= 4)
  {
    *&a12 = a5;
    v15 = vmlaq_n_f32(*a6, vdupq_lane_s32(*&a12, 0), a4 * -0.00744);
    v16.i64[0] = 0x3F0000003F000000;
    v16.i64[1] = 0x3F0000003F000000;
    a11 = vbslq_s8(vcgtq_f32(v16, v15), v16, v15);
    *a6 = a11;
  }

  if (a5)
  {
    v17 = 0;
    v19 = (v13 + 4 * v14);
    v20 = (a8 * a9) * a10.n128_f32[0];
    v21 = 8 * a5;
    v22 = 4 * a5;
    v23 = 32 * a4;
    do
    {
      result = v17 >= v22;
      if (a4)
      {
        v24 = 0;
        result = 2 * (v17 >= v22);
        v25 = &xmmword_240C86460;
        v26 = v19;
        v27 = a7;
        v28 = a13;
        do
        {
          if (a4 == 1)
          {
            a10.n128_u32[0] = a6->u32[result | 1];
            a11.i32[0] = a6->i32[2 * (v17 >= v22)];
            v29 = vbslq_s8(*v25, vdupq_lane_s32(a10.n128_u64[0], 0), vdupq_lane_s32(*a11.i8, 0));
          }

          else
          {
            if (v24 < 4 * a4)
            {
              v30 = 2 * (v17 >= v22);
            }

            else
            {
              v30 = result + 1;
            }

            v31 = &a6->f32[v30];
            v29 = vld1q_dup_f32(v31);
          }

          v32 = *v26++;
          v33 = v32;
          v34 = *v27++;
          v35 = vmulq_f32(vmulq_n_f32(v33, v20), v34);
          v36 = vcgeq_f32(vabsq_f32(v35), v29);
          a11 = vrndnq_f32(v35);
          a10 = vcvtq_s32_f32(vandq_s8(a11, v36));
          *v28++ = a10;
          v24 += 4;
          ++v25;
        }

        while (v24 < 8 * a4);
      }

      ++v17;
      a13 = (a13 + v23);
      a7 = (a7 + v23);
      v19 = (v19 + v23);
    }

    while (v17 != v21);
  }

  return result;
}

void sub_240BA446C()
{
  v0 = MEMORY[0x28223BE20]();
  v164 = *MEMORY[0x277D85DE8];
  v8 = v3;
  v9 = v2;
  v10 = v1;
  switch(v0)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
      v2->i32[0] = v1->i32[0];
      break;
    case 4:
      v100.i32[0] = v1->i32[0];
      v100.f32[1] = v1->f32[1] * 0.90176;
      v101.i32[0] = v1[4].i32[0];
      v101.f32[1] = v1[4].f32[1] * 0.90176;
      v102 = vmul_f32(v101, vdup_n_s32(0x3F66DA05u));
      v103 = vadd_f32(v100, v102);
      v104 = vsub_f32(v100, v102);
      v102.i32[0] = vdup_lane_s32(v103, 1).u32[0];
      v105 = vzip1_s32(v103, v104);
      v102.i32[1] = v104.i32[1];
      *v2->f32 = vadd_f32(v105, v102);
      *&v2->f32[v3] = vsub_f32(v105, v102);
      break;
    case 5:
      v47 = 0;
      v135 = 0u;
      v134 = 0u;
      v133 = 0u;
      v132 = 0u;
      do
      {
        v48 = *v10;
        v10 += 8;
        *(&v132 + v47) = vmulq_f32(vmulq_n_f32(v48, *(&xmmword_240C117C0 + v47)), xmmword_240C117C0);
        ++v47;
      }

      while (v47 != 4);
      v49 = 0;
      v122 = vaddq_f32(v132, v134);
      v123 = vsubq_f32(v132, v134);
      v50 = vaddq_f32(v133, v135);
      v51 = vmulq_f32(v133, vdupq_n_s32(0x3FB504F3u));
      v52 = vaddq_f32(v51, v50);
      v53 = vsubq_f32(v51, v50);
      v124 = v52;
      v125 = v53;
      v54 = 1;
      do
      {
        v55 = v54;
        v53.i32[0] = dword_240C123D8[v49];
        v56 = &v122 + v49;
        v57 = *v56;
        v58 = v56[2];
        *(&v118 + v49) = vmlaq_n_f32(*v56, v58, v53.f32[0]);
        *(&v118 + ((16 * v49) ^ 0x30)) = vmlsq_lane_f32(v57, v58, *v53.f32, 0);
        v49 = 1;
        v54 = 0;
      }

      while ((v55 & 1) != 0);
      v59 = 0;
      v60 = vzip1q_s32(v118, v120);
      v61 = vzip1q_s32(v119, v121);
      v62 = vzip2q_s32(v118, v120);
      v63 = vzip2q_s32(v119, v121);
      v64 = vzip1q_s32(v60, v61);
      v65 = vzip2q_s32(v60, v61);
      v66 = vzip1q_s32(v62, v63);
      v122 = vaddq_f32(v64, v66);
      v123 = vsubq_f32(v64, v66);
      v67 = vaddq_f32(v65, vzip2q_s32(v62, v63));
      v68 = vmulq_f32(v65, vdupq_n_s32(0x3FB504F3u));
      v69 = vaddq_f32(v68, v67);
      v70 = vsubq_f32(v68, v67);
      v124 = v69;
      v125 = v70;
      v71 = 1;
      do
      {
        v70.i32[0] = dword_240C123D8[v59];
        v72 = v71;
        v73 = &v122 + v59;
        v74 = v73[2];
        v75 = vmlsq_lane_f32(*v73, v74, *v70.f32, 0);
        *(v2 + 4 * v59 * v3) = vmlaq_n_f32(*v73, v74, v70.f32[0]);
        *(v2 + 4 * (v59 ^ 3) * v3) = v75;
        v59 = 1;
        v71 = 0;
      }

      while ((v72 & 1) != 0);
      break;
    case 6:
      v4.i32[0] = v1->i32[0];
      v5.f32[0] = v1->f32[1] * 0.90176;
      v2->i32[0] = vadd_f32(v4, v5).u32[0];
      v2->i32[v3] = vsub_f32(v4, v5).u32[0];
      break;
    case 7:
      v4.i32[0] = v1->i32[0];
      v5.f32[0] = v1->f32[1] * 0.90176;
      *v2->f32 = vzip1_s32(vadd_f32(v4, v5), vsub_f32(v4, v5));
      break;
    case 8:
      v118 = vmulq_f32(*v1, xmmword_240C117C0);
      v132 = v118;
      sub_240B89964(1, &v132, v3, v2, &v119, *v118.i8, 0.00624292809, v6, v7);
      break;
    case 9:
      v132 = vmulq_f32(*v1, xmmword_240C117C0);
      v118 = v132;
      sub_240B89964(1, v118.i32, 1, &v132, &v119, *v132.f32, 0.00624292809, v6, v7);
      v118 = v132;
      *v9 = v132;
      break;
    case 10:
      v87 = 0;
      v133 = 0u;
      v132 = 0u;
      v88 = 1;
      do
      {
        v89 = v88;
        *(&v132 + v87) = vmulq_f32(vmulq_n_f32(v1[8 * v87], flt_240C123E0[v87]), xmmword_240C117C0);
        v87 = 1;
        v88 = 0;
      }

      while ((v89 & 1) != 0);
      v118 = vaddq_f32(v132, v133);
      v119 = vsubq_f32(v132, v133);
      v90 = &v118;
      v91 = &v132;
      v92 = 1;
      do
      {
        v93 = 0;
        v94 = v92;
        do
        {
          v91->i32[0] = v90->i32[v93];
          v91 = (v91 + 8);
          ++v93;
        }

        while (v93 != 4);
        v92 = 0;
        v91 = &v132.i32[1];
        v90 = &v119;
      }

      while ((v94 & 1) != 0);
      sub_240B89A08(2, &v132, v3, v2, &v120);
      break;
    case 11:
      v23 = 0;
      v133 = 0u;
      v132 = 0u;
      v24 = 1;
      do
      {
        v25 = v24;
        *(&v132 + v23) = vmulq_f32(vmulq_n_f32(v1[8 * v23], flt_240C123E0[v23]), xmmword_240C117C0);
        v23 = 1;
        v24 = 0;
      }

      while ((v25 & 1) != 0);
      v26 = &v132;
      v27 = &v118;
      v28 = 1;
      do
      {
        v29 = 0;
        v30 = v28;
        do
        {
          v27->i32[0] = v26->i32[v29];
          v27 = (v27 + 8);
          ++v29;
        }

        while (v29 != 4);
        v28 = 0;
        v27 = (v118.i64 + 4);
        v26 = &v133;
      }

      while ((v30 & 1) != 0);
      sub_240B89A08(2, &v118, 2, &v132, &v120);
      v165 = vld2q_f32(v132.f32);
      *v9 = vaddq_f32(v165.val[0], v165.val[1]);
      *(v9 + 4 * v8) = vsubq_f32(v165.val[0], v165.val[1]);
      break;
    case 18:
      v42 = 0;
      v147 = 0u;
      v146 = 0u;
      v145 = 0u;
      v144 = 0u;
      v143 = 0u;
      v142 = 0u;
      v141 = 0u;
      v140 = 0u;
      v139 = 0u;
      v138 = 0u;
      v137 = 0u;
      v136 = 0u;
      v135 = 0u;
      v134 = 0u;
      v43 = &v132;
      v133 = 0u;
      v132 = 0u;
      do
      {
        v44 = 0;
        v45 = xmmword_240C847B0 + v42;
        v46 = vld1q_dup_f32(v45);
        do
        {
          v43[v44] = vmulq_f32(vmulq_f32(v10[v44], v46), xmmword_240C847B0[v44]);
          ++v44;
        }

        while (v44 != 2);
        ++v42;
        v43 += 2;
        v10 += 16;
      }

      while (v42 != 8);
      v112 = v3;
      v113 = v2;
      v116 = 8;
      v117 = &v132;
      v114 = 8;
      v115 = &v118;
      sub_240B3F2E8(sub_240BA5DB4, &v116, &v114, 8, v127);
      v116 = 8;
      v117 = &v118;
      v114 = 8;
      v115 = &v132;
      sub_240B3F9C8(&v116, &v114);
      v116 = 8;
      v117 = &v132;
      v17 = v127;
      v16 = sub_240BA5DB4;
      goto LABEL_49;
    case 19:
      v82 = 0;
      v139 = 0u;
      v138 = 0u;
      v137 = 0u;
      v136 = 0u;
      v135 = 0u;
      v134 = 0u;
      v83 = &v132;
      v133 = 0u;
      v132 = 0u;
      do
      {
        v84 = 0;
        v85 = &xmmword_240C117C0 + v82;
        v86 = vld1q_dup_f32(v85);
        do
        {
          v83[v84] = vmulq_f32(vmulq_f32(v10[v84], v86), xmmword_240C847B0[v84]);
          ++v84;
        }

        while (v84 != 2);
        ++v82;
        v83 += 2;
        v10 += 16;
      }

      while (v82 != 4);
      v116 = 8;
      v117 = &v132;
      v114 = 8;
      v115 = &v118;
      sub_240B3F2E8(sub_240BA5E28, &v116, &v114, 8, v126);
      v116 = 8;
      v117 = &v118;
      v114 = 4;
      v115 = &v132;
      sub_240B3F300(&v116, &v114);
      sub_240B3F3A8(&v132, 4, v9, v8, v126);
      break;
    case 20:
      v31 = 0;
      v139 = 0u;
      v138 = 0u;
      v137 = 0u;
      v136 = 0u;
      v135 = 0u;
      v134 = 0u;
      v32 = &v132;
      v133 = 0u;
      v132 = 0u;
      do
      {
        v33 = 0;
        v34 = &xmmword_240C117C0 + v31;
        v35 = vld1q_dup_f32(v34);
        do
        {
          v32[v33] = vmulq_f32(vmulq_f32(v10[v33], v35), xmmword_240C847B0[v33]);
          ++v33;
        }

        while (v33 != 2);
        ++v31;
        v32 += 2;
        v10 += 16;
      }

      while (v31 != 4);
      v112 = v3;
      v113 = v2;
      v116 = 8;
      v117 = &v132;
      v114 = 4;
      v115 = &v118;
      sub_240B3F300(&v116, &v114);
      v36 = sub_240B3F3A8(&v118, 4, &v132, 4, v126);
      v116 = 4;
      v117 = &v132;
      v114 = 8;
      v115 = &v118;
      sub_240B404FC(&v116, &v114, v36);
      v116 = 8;
      v117 = &v118;
      v16 = sub_240BA5E28;
      v17 = v126;
      goto LABEL_49;
    case 21:
      v37 = &v132;
      bzero(&v132, 0x400uLL);
      for (i = 0; i != 16; ++i)
      {
        v39 = 0;
        v40 = xmmword_240C847D0 + i;
        v41 = vld1q_dup_f32(v40);
        do
        {
          v37[v39] = vmulq_f32(vmulq_f32(v10[v39], v41), xmmword_240C847D0[v39]);
          ++v39;
        }

        while (v39 != 4);
        v37 += 4;
        v10 += 32;
      }

      v112 = v8;
      v113 = v9;
      v116 = 16;
      v117 = &v132;
      v114 = 16;
      v115 = &v118;
      sub_240B3F2E8(sub_240BA5D40, &v116, &v114, 16, v129);
      v116 = 16;
      v117 = &v118;
      v114 = 16;
      v115 = &v132;
      sub_240B3F62C(&v116, &v114);
      v116 = 16;
      v117 = &v132;
      v17 = v129;
      v16 = sub_240BA5D40;
      goto LABEL_68;
    case 22:
      v76 = 0;
      v163 = 0u;
      v162 = 0u;
      v161 = 0u;
      v160 = 0u;
      v159 = 0u;
      v158 = 0u;
      v157 = 0u;
      v156 = 0u;
      v155 = 0u;
      v154 = 0u;
      v153 = 0u;
      v152 = 0u;
      v151 = 0u;
      v150 = 0u;
      v149 = 0u;
      v148 = 0u;
      v147 = 0u;
      v146 = 0u;
      v145 = 0u;
      v144 = 0u;
      v143 = 0u;
      v142 = 0u;
      v141 = 0u;
      v140 = 0u;
      v139 = 0u;
      v138 = 0u;
      v137 = 0u;
      v136 = 0u;
      v135 = 0u;
      v134 = 0u;
      v77 = &v132;
      v133 = 0u;
      v132 = 0u;
      do
      {
        v78 = 0;
        v79 = xmmword_240C847B0 + v76;
        v80 = vld1q_dup_f32(v79);
        do
        {
          v77[v78] = vmulq_f32(vmulq_f32(v10[v78], v80), xmmword_240C847D0[v78]);
          ++v78;
        }

        while (v78 != 4);
        ++v76;
        v77 += 4;
        v10 += 32;
      }

      while (v76 != 8);
      v112 = v3;
      v113 = v2;
      v116 = 16;
      v117 = &v132;
      v114 = 16;
      v115 = &v118;
      sub_240B3F2E8(sub_240BA5DB4, &v116, &v114, 16, v128);
      v116 = 16;
      v117 = &v118;
      v114 = 8;
      v115 = &v132;
      sub_240B3F714(&v116, &v114);
      v116 = 8;
      v117 = &v132;
      v16 = sub_240BA5D40;
      v17 = v128;
LABEL_49:
      v81 = 8;
      goto LABEL_77;
    case 23:
      v95 = 0;
      v163 = 0u;
      v162 = 0u;
      v161 = 0u;
      v160 = 0u;
      v159 = 0u;
      v158 = 0u;
      v157 = 0u;
      v156 = 0u;
      v155 = 0u;
      v154 = 0u;
      v153 = 0u;
      v152 = 0u;
      v151 = 0u;
      v150 = 0u;
      v149 = 0u;
      v148 = 0u;
      v147 = 0u;
      v146 = 0u;
      v145 = 0u;
      v144 = 0u;
      v143 = 0u;
      v142 = 0u;
      v141 = 0u;
      v140 = 0u;
      v139 = 0u;
      v138 = 0u;
      v137 = 0u;
      v136 = 0u;
      v135 = 0u;
      v134 = 0u;
      v96 = &v132;
      v133 = 0u;
      v132 = 0u;
      do
      {
        v97 = 0;
        v98 = xmmword_240C847B0 + v95;
        v99 = vld1q_dup_f32(v98);
        do
        {
          v96[v97] = vmulq_f32(vmulq_f32(v10[v97], v99), xmmword_240C847D0[v97]);
          ++v97;
        }

        while (v97 != 4);
        ++v95;
        v96 += 4;
        v10 += 32;
      }

      while (v95 != 8);
      v112 = v3;
      v113 = v2;
      v116 = 16;
      v117 = &v132;
      v114 = 8;
      v115 = &v118;
      sub_240B3F714(&v116, &v114);
      v116 = 8;
      v117 = &v118;
      v114 = 8;
      v115 = &v132;
      sub_240B3F2E8(sub_240BA5D40, &v116, &v114, 8, v128);
      v116 = 8;
      v117 = &v132;
      v114 = 16;
      v115 = &v118;
      sub_240B3F7FC(&v116, &v114);
      v116 = 16;
      v117 = &v118;
      v16 = sub_240BA5DB4;
      v17 = v128;
      goto LABEL_68;
    case 24:
      v18 = &v132;
      bzero(&v132, 0x1000uLL);
      for (j = 0; j != 32; ++j)
      {
        v20 = 0;
        v21 = xmmword_240C84810 + j;
        v22 = vld1q_dup_f32(v21);
        do
        {
          v18[v20] = vmulq_f32(vmulq_f32(v10[v20], v22), xmmword_240C84810[v20]);
          ++v20;
        }

        while (v20 != 8);
        v18 += 8;
        v10 += 64;
      }

      v112 = v8;
      v113 = v9;
      v116 = 32;
      v117 = &v132;
      v114 = 32;
      v115 = &v118;
      sub_240B3F2E8(sub_240BA5BA8, &v116, &v114, 32, v131);
      v116 = 32;
      v117 = &v118;
      v114 = 32;
      v115 = &v132;
      sub_240B3F2E8(sub_240BA578C, &v116, &v114, 32, 32);
      v116 = 32;
      v117 = &v132;
      v17 = v131;
      v16 = sub_240BA5BA8;
      goto LABEL_76;
    case 25:
      v11 = &v132;
      bzero(&v132, 0x800uLL);
      for (k = 0; k != 16; ++k)
      {
        v13 = 0;
        v14 = xmmword_240C847D0 + k;
        v15 = vld1q_dup_f32(v14);
        do
        {
          v11[v13] = vmulq_f32(vmulq_f32(v10[v13], v15), xmmword_240C84810[v13]);
          ++v13;
        }

        while (v13 != 8);
        v11 += 8;
        v10 += 64;
      }

      v112 = v8;
      v113 = v9;
      v116 = 32;
      v117 = &v132;
      v114 = 32;
      v115 = &v118;
      sub_240B3F2E8(sub_240BA5D40, &v116, &v114, 32, v130);
      v116 = 32;
      v117 = &v118;
      v114 = 16;
      v115 = &v132;
      sub_240B3F2E8(sub_240BA578C, &v116, &v114, 16, 32);
      v116 = 16;
      v117 = &v132;
      v16 = sub_240BA5BA8;
      v17 = v130;
LABEL_68:
      v81 = 16;
      goto LABEL_77;
    case 26:
      v106 = &v132;
      bzero(&v132, 0x800uLL);
      for (m = 0; m != 16; ++m)
      {
        v108 = 0;
        v109 = xmmword_240C847D0 + m;
        v110 = vld1q_dup_f32(v109);
        do
        {
          v106[v108] = vmulq_f32(vmulq_f32(v10[v108], v110), xmmword_240C84810[v108]);
          ++v108;
        }

        while (v108 != 8);
        v106 += 8;
        v10 += 64;
      }

      v112 = v8;
      v113 = v9;
      v116 = 32;
      v117 = &v132;
      v114 = 16;
      v115 = &v118;
      sub_240B3F2E8(sub_240BA578C, &v116, &v114, 16, 32);
      v116 = 16;
      v117 = &v118;
      v114 = 16;
      v115 = &v132;
      sub_240B3F2E8(sub_240BA5BA8, &v116, &v114, 16, v130);
      v116 = 16;
      v117 = &v132;
      v114 = 32;
      v115 = &v118;
      sub_240B3F2E8(sub_240BA578C, &v116, &v114, 32, 16);
      v116 = 32;
      v117 = &v118;
      v16 = sub_240BA5D40;
      v17 = v130;
LABEL_76:
      v81 = 32;
LABEL_77:
      sub_240B3F2E8(v16, &v116, &v112, v81, v17);
      break;
    default:
      break;
  }

  v111 = *MEMORY[0x277D85DE8];
}

uint64_t sub_240BA5358(uint64_t a1, float32x4_t *a2, float32x4_t *a3)
{
  v9 = 8;
  v10 = a3;
  sub_240B3F2E8(sub_240BA5AC4, a1, &v9, 8, &a3[8]);
  v9 = 8;
  v10 = a3;
  v7 = 4;
  v8 = a2;
  sub_240B3F300(&v9, &v7);
  v9 = 4;
  v10 = a3;
  sub_240B41588(4, a2, &v9, a3 + 8);
  v9 = 4;
  v10 = a3;
  v7 = 8;
  v8 = a2;
  return sub_240B404FC(&v9, &v7, v5);
}

void sub_240BA53FC(void *a1, void *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v7 = 0;
    v8 = 0;
    v9 = &a4[256];
    v10 = a4 + 384;
    v11 = a4 + 385;
    v12 = a4 + 1;
    v29 = vdupq_n_s32(0x3B800000u);
    v30 = vdupq_n_s32(0x3FB504F3u);
    do
    {
      v13 = 0;
      v14 = (a1[1] + v7);
      v15 = 4 * *a1;
      do
      {
        a4[v13++] = *v14;
        v14 = (v14 + v15);
      }

      while (v13 != 256);
      v16 = a4;
      for (i = 255; i != 127; --i)
      {
        v16[256] = vaddq_f32(*v16, a4[i]);
        ++v16;
      }

      sub_240B776C4(v9, a4 + 512);
      v18 = a4;
      for (j = 255; j != 127; --j)
      {
        v18[384] = vsubq_f32(*v18, a4[j]);
        ++v18;
      }

      for (k = 0; k != 128; ++k)
      {
        v10[k] = vmulq_n_f32(v10[k], dword_240C845B0[k]);
      }

      sub_240B776C4(v10, a4 + 512);
      *v10 = vmlaq_f32(*v11, v30, *v10);
      v21 = 126;
      v22 = v11;
      v23 = v11;
      do
      {
        v24 = v23[1];
        ++v23;
        *v22 = vaddq_f32(*v22, v24);
        v22 = v23;
        --v21;
      }

      while (v21);
      v25 = a4;
      do
      {
        *v25 = *(v9 + v21);
        v25 += 2;
        v21 += 16;
      }

      while (v21 != 2048);
      v26 = 0;
      v27 = v12;
      do
      {
        *v27 = v10[v26];
        v27 += 2;
        ++v26;
      }

      while (v26 != 128);
      for (m = 0; m != 256; ++m)
      {
        *(a2[1] + 4 * *a2 * m + 4 * v8) = vmulq_f32(a4[m], v29);
      }

      v8 += 4;
      v7 += 16;
    }

    while (v8 < a3);
  }
}

void sub_240BA55F8(void *a1, void *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    for (i = 0; i < a3; i += 4)
    {
      v10 = 0;
      v11 = (a1[1] + v8);
      v12 = 4 * *a1;
      do
      {
        a4[v10++] = *v11;
        v11 = (v11 + v12);
      }

      while (v10 != 128);
      sub_240B776C4(a4, a4 + 128);
      v13 = 0;
      v14.i64[0] = 0x3C0000003C000000;
      v14.i64[1] = 0x3C0000003C000000;
      do
      {
        *(a2[1] + 4 * *a2 * v13 + 4 * i) = vmulq_f32(a4[v13], v14);
        ++v13;
      }

      while (v13 != 128);
      v8 += 16;
    }
  }
}

void sub_240BA56B8(void *a1, void *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    v9 = 0;
    v14 = vdupq_n_s32(0x3C800000u);
    do
    {
      v10 = 0;
      v11 = (a1[1] + v8);
      v12 = 4 * *a1;
      do
      {
        a4[v10++] = *v11;
        v11 = (v11 + v12);
      }

      while (v10 != 64);
      sub_240B777F8(a4, a4 + 64);
      for (i = 0; i != 64; ++i)
      {
        *(a2[1] + 4 * *a2 * i + 4 * v9) = vmulq_f32(a4[i], v14);
      }

      v9 += 4;
      v8 += 16;
    }

    while (v9 < a3);
  }
}

void sub_240BA5870(void *a1, void *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    for (i = 0; i < a3; i += 4)
    {
      v10 = 0;
      v11 = (a1[1] + v8);
      v12 = 4 * *a1;
      do
      {
        a4[v10++] = *v11;
        v11 = (v11 + v12);
      }

      while (v10 != 32);
      sub_240B77928(a4, a4 + 32);
      v13 = 0;
      v14.i64[0] = 0x3D0000003D000000;
      v14.i64[1] = 0x3D0000003D000000;
      do
      {
        *(a2[1] + 4 * *a2 * v13 + 4 * i) = vmulq_f32(a4[v13], v14);
        ++v13;
      }

      while (v13 != 32);
      v8 += 16;
    }
  }
}
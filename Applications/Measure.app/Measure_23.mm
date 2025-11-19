unint64_t sub_1001E372C(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  if (!a8)
  {
    return result;
  }

  v8 = a2;
  v9 = (a8 - 1);
  v10 = (a7 - 4);
  v11 = (a7 - 8);
  if (a7 >= 8)
  {
    v18 = 0;
    v19 = a7;
    v117 = a6 - a2;
    v116 = a6 - a4;
    v20 = (v11 & 0x7FFFFFF8) + 12;
    if (v20 <= v10 + 1)
    {
      v20 = v10 + 1;
    }

    v21 = v20 - (v11 & 0x7FFFFFF8);
    v114 = ((4 * v21 - 36) & 0xFFFFFFFFFFFFFFF0) + 48;
    v115 = v21 - 9;
    v113 = ((v21 - 9) >> 2) + 1;
    v22 = (a5 + 32);
    v23 = (result + 32);
    v24 = (a3 + 32);
    v25 = result;
    v26 = a3;
    v27 = a5;
    v118 = a4;
    v119 = a6;
    while (1)
    {
      v28 = 0;
      v29 = 0;
      v121 = v9;
      v30 = v18 * v8;
      v31 = v18 * a4;
      v32 = v24;
      v33 = v23;
      v34 = v22;
      v35 = 8;
      do
      {
        v36 = (v25 + 4 * v29);
        v37 = *v36;
        v38 = v36[1];
        v39 = (v26 + 4 * v29);
        v40 = v39[1];
        v41 = vmaxq_s32(v37, *v39);
        v42 = v35;
        v43 = v28;
        v44 = v34;
        v45 = v33;
        v46 = v32;
        v47 = (v27 + 4 * v29);
        v29 += 8;
        v35 += 8;
        ++v28;
        *v47 = v41;
        v47[1] = vmaxq_s32(v38, v40);
        v34 += 2;
        v33 += 2;
        v32 = v46 + 2;
      }

      while (v29 <= v11);
      if (v10 >= v29)
      {
        if (v115 <= 0xB)
        {
          goto LABEL_26;
        }

        v54 = 32 * v43;
        v55 = a5 + v18 * a6 + 32 * v43;
        v56 = v55 + 32;
        v57 = v55 + v114;
        v58 = result + v30 + v54;
        v59 = v58 + 32;
        v60 = v58 + v114;
        v61 = a3 + v31 + v54;
        v62 = v56 >= v61 + v114 || v61 + 32 >= v57;
        v63 = !v62;
        if (v59 < v57 && v56 < v60)
        {
          goto LABEL_26;
        }

        if (v63)
        {
          goto LABEL_26;
        }

        v42 += 4 * (v113 & 0x7FFFFFFFFFFFFFFCLL);
        v65 = v113 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v66 = v45[2];
          v67 = v45[3];
          v68 = *v45;
          v69 = v45[1];
          v45 += 4;
          v70 = v46[2];
          v71 = v46[3];
          v72 = *v46;
          v73 = v46[1];
          v46 += 4;
          v44[2] = vmaxq_s32(v66, v70);
          v44[3] = vmaxq_s32(v67, v71);
          *v44 = vmaxq_s32(v68, v72);
          v44[1] = vmaxq_s32(v69, v73);
          v44 += 4;
          v65 -= 4;
        }

        while (v65);
        if (v113 != (v113 & 0x7FFFFFFFFFFFFFFCLL))
        {
LABEL_26:
          v49 = 4 * v42;
          do
          {
            v50 = (v27 + v49);
            *v50 = vmax_s32(*(v25 + v49), *(v26 + v49));
            v50[1] = vmax_s32(*(v25 + v49 + 8), *(v26 + v49 + 8));
            v42 += 4;
            v49 += 16;
          }

          while (v42 <= v10);
        }

        v48 = v42;
        a4 = v118;
        a6 = v119;
        v88 = v42 < a7;
        v8 = a2;
        if (!v88)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v48 = v29;
        a4 = v118;
        a6 = v119;
        v8 = a2;
        if (v29 >= a7)
        {
          goto LABEL_19;
        }
      }

      v51 = v19 - v48;
      if ((v19 - v48) <= 7 || a5 - result + v117 * v18 < 0x20 || a5 - a3 + v116 * v18 < 0x20)
      {
        v52 = v48;
        do
        {
LABEL_32:
          v53 = *(v25 + 4 * v52);
          if (v53 <= *(v26 + 4 * v52))
          {
            v53 = *(v26 + 4 * v52);
          }

          *(v27 + 4 * v52++) = v53;
        }

        while (v19 != v52);
        goto LABEL_19;
      }

      v52 = (v51 & 0xFFFFFFFFFFFFFFF8) + v48;
      v74 = 4 * v48;
      v75 = v51 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v76 = vmaxq_s32(*(v25 + v74 + 16), *(v26 + v74 + 16));
        v77 = (v27 + v74);
        *v77 = vmaxq_s32(*(v25 + v74), *(v26 + v74));
        v77[1] = v76;
        v74 += 32;
        v75 -= 8;
      }

      while (v75);
      if (v51 != (v51 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_32;
      }

LABEL_19:
      v25 += a2;
      v26 += a4;
      v27 += a6;
      LODWORD(v9) = v121 - 1;
      ++v18;
      v22 = (v22 + a6);
      v23 = (v23 + a2);
      v24 = (v24 + a4);
      if (!v121)
      {
        return result;
      }
    }
  }

  if (a7 >= 4)
  {
    v78 = 0;
    v79 = a5 - result;
    v80 = a5 - a3;
    v81 = (v10 & 0x7FFFFFFC) + 5;
    if (v81 <= a7)
    {
      v81 = a7;
    }

    v82 = v81 - (v10 & 0x7FFFFFFC) - 4;
    v83 = (4 * (a7 - 4)) & 0x1FFFFFFF0;
    v84 = a5 + v9 * a6 + v83 + 16;
    v85 = result + v9 * a2 + v83 + 16;
    v86 = a3 + v9 * a4 + v83 + 16;
    v87 = (v10 >> 2) + 1;
    v88 = v85 > a5 && v84 > result;
    v90 = v88 || (a6 | v8) < 0;
    if (v86 > a5 && v84 > a3 || (a6 | a4) < 0)
    {
      v90 = 1;
    }

    v93 = (v10 < 0xC) | v90;
    v94 = v82 & 0xFFFFFFFFFFFFFFF8;
    while (1)
    {
      v95 = v9;
      if (v93)
      {
        break;
      }

      v98 = 0;
      v99 = v87 & 0x3FFFFFFC;
      do
      {
        v100 = vmaxq_s32(*(result + v98 + 16), *(a3 + v98 + 16));
        v101 = vmaxq_s32(*(result + v98), *(a3 + v98));
        v102 = vmaxq_s32(*(result + v98 + 48), *(a3 + v98 + 48));
        v103 = (a5 + v98);
        v103[2] = vmaxq_s32(*(result + v98 + 32), *(a3 + v98 + 32));
        v103[3] = v102;
        *v103 = v101;
        v103[1] = v100;
        v98 += 64;
        v99 -= 4;
      }

      while (v99);
      v97 = (16 * (((v87 & 0x3FFFFFFC) >> 2) & 0xFFFFFFF)) | 4;
      v96 = 4 * (v87 & 0x3FFFFFFC);
      v104 = v96;
      if (v87 != (v87 & 0x3FFFFFFC))
      {
        goto LABEL_85;
      }

LABEL_87:
      if (v96 < a7)
      {
        if (v82 <= 7 || v79 + (a6 - v8) * v78 < 0x20 || v80 + (a6 - a4) * v78 < 0x20)
        {
          v107 = v104;
          do
          {
LABEL_90:
            v108 = *(result + 4 * v107);
            if (v108 <= *(a3 + 4 * v107))
            {
              v108 = *(a3 + 4 * v107);
            }

            *(a5 + 4 * v107++) = v108;
          }

          while (v107 < a7);
          goto LABEL_79;
        }

        v107 = v104 + v94;
        v109 = 4 * v104;
        v110 = v82 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v111 = vmaxq_s32(*(result + v109 + 16), *(a3 + v109 + 16));
          v112 = (a5 + v109);
          *v112 = vmaxq_s32(*(result + v109), *(a3 + v109));
          v112[1] = v111;
          v109 += 32;
          v110 -= 8;
        }

        while (v110);
        if (v82 != v94)
        {
          goto LABEL_90;
        }
      }

LABEL_79:
      result += v8;
      a3 += a4;
      a5 += a6;
      LODWORD(v9) = v9 - 1;
      ++v78;
      if (!v95)
      {
        return result;
      }
    }

    v96 = 0;
    v97 = 4;
LABEL_85:
    v104 = v97 - 4;
    v105 = 4 * v96;
    do
    {
      v106 = (a5 + v105);
      *v106 = vmax_s32(*(result + v105), *(a3 + v105));
      v106[1] = vmax_s32(*(result + v105 + 8), *(a3 + v105 + 8));
      v96 += 4;
      v104 += 4;
      v105 += 16;
    }

    while (v96 <= v10);
    goto LABEL_87;
  }

  if (a7 >= 1)
  {
    v12 = (a5 + 8);
    v13 = (a3 + 8);
    v14 = (result + 8);
    do
    {
      v15 = *(v14 - 2);
      if (v15 <= *(v13 - 2))
      {
        v15 = *(v13 - 2);
      }

      *(v12 - 2) = v15;
      if (a7 != 1)
      {
        v16 = *(v14 - 1);
        if (v16 <= *(v13 - 1))
        {
          v16 = *(v13 - 1);
        }

        *(v12 - 1) = v16;
        if (a7 != 2)
        {
          v17 = *v14;
          if (*v14 <= *v13)
          {
            v17 = *v13;
          }

          *v12 = v17;
        }
      }

      v12 = (v12 + a6);
      v13 = (v13 + a4);
      v14 = (v14 + a2);
      --a8;
    }

    while (a8);
  }

  return result;
}

unint64_t sub_1001E3D40(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  if (!a8)
  {
    return result;
  }

  v8 = a2;
  v9 = (a8 - 1);
  v10 = (a7 - 4);
  v11 = (a7 - 8);
  if (a7 >= 8)
  {
    v18 = 0;
    v19 = a7;
    v112 = a6 - a2;
    v111 = a6 - a4;
    v20 = (v11 & 0x7FFFFFF8) + 12;
    if (v20 <= v10 + 1)
    {
      v20 = v10 + 1;
    }

    v21 = v20 - (v11 & 0x7FFFFFF8);
    v109 = ((4 * v21 - 36) & 0xFFFFFFFFFFFFFFF0) + 48;
    v110 = v21 - 9;
    v108 = ((v21 - 9) >> 2) + 1;
    v22 = a5 + 32;
    v23 = (result + 32);
    v24 = (a3 + 32);
    v25 = result;
    v26 = a3;
    v27 = a5;
    v113 = a4;
    v114 = a6;
    while (1)
    {
      v28 = 0;
      v29 = 0;
      v116 = v9;
      v30 = v18 * v8;
      v31 = v18 * a4;
      v32 = v24;
      v33 = v23;
      v34 = v22;
      v35 = 8;
      do
      {
        v36 = (v25 + 4 * v29);
        v37 = *v36;
        v38 = v36[1];
        v39 = (v26 + 4 * v29);
        v40 = v39[1];
        v41 = vmaxq_f32(v37, *v39);
        v42 = v35;
        v43 = v28;
        v44 = v34;
        v45 = v33;
        v46 = v32;
        v47 = (v27 + 4 * v29);
        v29 += 8;
        v35 += 8;
        ++v28;
        *v47 = v41;
        v47[1] = vmaxq_f32(v38, v40);
        v34 += 2;
        v33 += 2;
        v32 = v46 + 2;
      }

      while (v29 <= v11);
      if (v10 >= v29)
      {
        if (v110 <= 0xB)
        {
          goto LABEL_26;
        }

        v54 = 32 * v43;
        v55 = a5 + v18 * a6 + 32 * v43;
        v56 = v55 + 32;
        v57 = v55 + v109;
        v58 = result + v30 + v54;
        v59 = v58 + 32;
        v60 = v58 + v109;
        v61 = a3 + v31 + v54;
        v62 = v56 >= v61 + v109 || v61 + 32 >= v57;
        v63 = !v62;
        if (v59 < v57 && v56 < v60)
        {
          goto LABEL_26;
        }

        if (v63)
        {
          goto LABEL_26;
        }

        v42 += 4 * (v108 & 0x7FFFFFFFFFFFFFFCLL);
        v65 = v108 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v66 = vbslq_s8(vcgtq_f32(v46[1], v45[1]), v46[1], v45[1]);
          v67 = vbslq_s8(vcgtq_f32(*v46, *v45), *v46, *v45);
          v68 = vbslq_s8(vcgtq_f32(v46[3], v45[3]), v46[3], v45[3]);
          v44[2] = vbslq_s8(vcgtq_f32(v46[2], v45[2]), v46[2], v45[2]);
          v44[3] = v68;
          *v44 = v67;
          v44[1] = v66;
          v44 += 4;
          v45 += 4;
          v46 += 4;
          v65 -= 4;
        }

        while (v65);
        if (v108 != (v108 & 0x7FFFFFFFFFFFFFFCLL))
        {
LABEL_26:
          v49 = 4 * v42;
          do
          {
            v50 = (v27 + v49);
            *v50 = vbsl_s8(vcgt_f32(*(v26 + v49), *(v25 + v49)), *(v26 + v49), *(v25 + v49));
            v50[1] = vbsl_s8(vcgt_f32(*(v26 + v49 + 8), *(v25 + v49 + 8)), *(v26 + v49 + 8), *(v25 + v49 + 8));
            v42 += 4;
            v49 += 16;
          }

          while (v42 <= v10);
        }

        v48 = v42;
        a4 = v113;
        a6 = v114;
        v83 = v42 < a7;
        v8 = a2;
        if (!v83)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v48 = v29;
        a4 = v113;
        a6 = v114;
        v8 = a2;
        if (v29 >= a7)
        {
          goto LABEL_19;
        }
      }

      v51 = v19 - v48;
      if ((v19 - v48) <= 7 || a5 - result + v112 * v18 < 0x20 || a5 - a3 + v111 * v18 < 0x20)
      {
        v52 = v48;
        do
        {
LABEL_32:
          v53 = *(v25 + 4 * v52);
          if (v53 < *(v26 + 4 * v52))
          {
            v53 = *(v26 + 4 * v52);
          }

          *(v27 + 4 * v52++) = v53;
        }

        while (v19 != v52);
        goto LABEL_19;
      }

      v52 = (v51 & 0xFFFFFFFFFFFFFFF8) + v48;
      v69 = 4 * v48;
      v70 = v51 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v71 = vbslq_s8(vcgtq_f32(*(v26 + v69 + 16), *(v25 + v69 + 16)), *(v26 + v69 + 16), *(v25 + v69 + 16));
        v72 = (v27 + v69);
        *v72 = vbslq_s8(vcgtq_f32(*(v26 + v69), *(v25 + v69)), *(v26 + v69), *(v25 + v69));
        v72[1] = v71;
        v69 += 32;
        v70 -= 8;
      }

      while (v70);
      if (v51 != (v51 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_32;
      }

LABEL_19:
      v25 += a2;
      v26 += a4;
      v27 += a6;
      LODWORD(v9) = v116 - 1;
      ++v18;
      v22 += a6;
      v23 = (v23 + a2);
      v24 = (v24 + a4);
      if (!v116)
      {
        return result;
      }
    }
  }

  if (a7 >= 4)
  {
    v73 = 0;
    v74 = a5 - result;
    v75 = a5 - a3;
    v76 = (v10 & 0x7FFFFFFC) + 5;
    if (v76 <= a7)
    {
      v76 = a7;
    }

    v77 = v76 - (v10 & 0x7FFFFFFC) - 4;
    v78 = (4 * (a7 - 4)) & 0x1FFFFFFF0;
    v79 = a5 + v9 * a6 + v78 + 16;
    v80 = result + v9 * a2 + v78 + 16;
    v81 = a3 + v9 * a4 + v78 + 16;
    v82 = (v10 >> 2) + 1;
    v83 = v80 > a5 && v79 > result;
    v85 = v83 || (a6 | v8) < 0;
    if (v81 > a5 && v79 > a3 || (a6 | a4) < 0)
    {
      v85 = 1;
    }

    v88 = (v10 < 0xC) | v85;
    v89 = v77 & 0xFFFFFFFFFFFFFFF8;
    while (1)
    {
      v90 = v9;
      if (v88)
      {
        break;
      }

      v93 = 0;
      v94 = v82 & 0x3FFFFFFC;
      do
      {
        v95 = (a5 + v93);
        v96 = vbslq_s8(vcgtq_f32(*(a3 + v93 + 16), *(result + v93 + 16)), *(a3 + v93 + 16), *(result + v93 + 16));
        v97 = vbslq_s8(vcgtq_f32(*(a3 + v93), *(result + v93)), *(a3 + v93), *(result + v93));
        v98 = vbslq_s8(vcgtq_f32(*(a3 + v93 + 48), *(result + v93 + 48)), *(a3 + v93 + 48), *(result + v93 + 48));
        v95[2] = vbslq_s8(vcgtq_f32(*(a3 + v93 + 32), *(result + v93 + 32)), *(a3 + v93 + 32), *(result + v93 + 32));
        v95[3] = v98;
        *v95 = v97;
        v95[1] = v96;
        v93 += 64;
        v94 -= 4;
      }

      while (v94);
      v92 = (16 * (((v82 & 0x3FFFFFFC) >> 2) & 0xFFFFFFF)) | 4;
      v91 = 4 * (v82 & 0x3FFFFFFC);
      v99 = v91;
      if (v82 != (v82 & 0x3FFFFFFC))
      {
        goto LABEL_85;
      }

LABEL_87:
      if (v91 < a7)
      {
        if (v77 <= 7 || v74 + (a6 - v8) * v73 < 0x20 || v75 + (a6 - a4) * v73 < 0x20)
        {
          v102 = v99;
          do
          {
LABEL_90:
            v103 = *(result + 4 * v102);
            if (v103 < *(a3 + 4 * v102))
            {
              v103 = *(a3 + 4 * v102);
            }

            *(a5 + 4 * v102++) = v103;
          }

          while (v102 < a7);
          goto LABEL_79;
        }

        v102 = v99 + v89;
        v104 = 4 * v99;
        v105 = v77 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v106 = vbslq_s8(vcgtq_f32(*(a3 + v104 + 16), *(result + v104 + 16)), *(a3 + v104 + 16), *(result + v104 + 16));
          v107 = (a5 + v104);
          *v107 = vbslq_s8(vcgtq_f32(*(a3 + v104), *(result + v104)), *(a3 + v104), *(result + v104));
          v107[1] = v106;
          v104 += 32;
          v105 -= 8;
        }

        while (v105);
        if (v77 != v89)
        {
          goto LABEL_90;
        }
      }

LABEL_79:
      result += v8;
      a3 += a4;
      a5 += a6;
      LODWORD(v9) = v9 - 1;
      ++v73;
      if (!v90)
      {
        return result;
      }
    }

    v91 = 0;
    v92 = 4;
LABEL_85:
    v99 = v92 - 4;
    v100 = 4 * v91;
    do
    {
      v101 = (a5 + v100);
      *v101 = vbsl_s8(vcgt_f32(*(a3 + v100), *(result + v100)), *(a3 + v100), *(result + v100));
      v101[1] = vbsl_s8(vcgt_f32(*(a3 + v100 + 8), *(result + v100 + 8)), *(a3 + v100 + 8), *(result + v100 + 8));
      v91 += 4;
      v99 += 4;
      v100 += 16;
    }

    while (v91 <= v10);
    goto LABEL_87;
  }

  if (a7 >= 1)
  {
    v12 = (a5 + 8);
    v13 = (a3 + 8);
    v14 = (result + 8);
    do
    {
      v15 = *(v14 - 2);
      if (v15 < *(v13 - 2))
      {
        v15 = *(v13 - 2);
      }

      *(v12 - 2) = v15;
      if (a7 != 1)
      {
        v16 = *(v14 - 1);
        if (v16 < *(v13 - 1))
        {
          v16 = *(v13 - 1);
        }

        *(v12 - 1) = v16;
        if (a7 != 2)
        {
          v17 = *v14;
          if (*v14 < *v13)
          {
            v17 = *v13;
          }

          *v12 = v17;
        }
      }

      v12 = (v12 + a6);
      v13 = (v13 + a4);
      v14 = (v14 + a2);
      --a8;
    }

    while (a8);
  }

  return result;
}

unint64_t sub_1001E4398(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  if (a8)
  {
    v8 = (a7 - 4);
    if (a7 >= 4)
    {
      v15 = (a8 - 1);
      v16 = v8 & 0x7FFFFFFC;
      v17 = ((8 * (a7 - 4)) & 0x3FFFFFFE0) + 32;
      v18 = a5 + v17;
      if (v16 + 5 <= a7)
      {
        v19 = a7;
      }

      else
      {
        v19 = (v8 & 0x7FFFFFFC) + 5;
      }

      v20 = a5 + v15 * a6;
      v21 = v20 + 8 * v19;
      v22 = result + v17;
      v23 = result + v15 * a2;
      v24 = v23 + 8 * v19;
      v60 = a3 + v17;
      v25 = a3 + v15 * a4;
      v26 = v19 - 4;
      v27 = v17 + v20;
      v28 = v17 + v23;
      v29 = v17 + v25;
      v30 = (v8 >> 2) + 1;
      v32 = v29 > a5 && v27 > a3;
      v33 = v28 > a5 && v27 > result;
      v34 = a6 | a4;
      if (v33)
      {
        v32 = 1;
      }

      v35 = v19 - 4 - v16 < 8;
      v38 = v18 < v24 && v22 < v21 || (a6 | a2) < 0;
      if (v18 < v25 + 8 * v19 && v60 < v21 || v34 < 0)
      {
        v38 = 1;
      }

      v41 = v19 & 3;
      v42 = (v8 & 0x7FFFFFFC) + v19 - v16 - v41;
      v43 = v35 || v38;
      v44 = v26 - v41 - v16;
      do
      {
        v45 = v15;
        v46 = 0;
        if (v8 < 4 || (v34 | a2) < 0 || v32)
        {
          goto LABEL_54;
        }

        v47 = v30 & 0x3FFFFFFE;
        do
        {
          v48 = (a5 + v46);
          v49 = vbslq_s8(vcgtq_f64(*(a3 + v46 + 16), *(result + v46 + 16)), *(a3 + v46 + 16), *(result + v46 + 16));
          v50 = vbslq_s8(vcgtq_f64(*(a3 + v46), *(result + v46)), *(a3 + v46), *(result + v46));
          v51 = vbslq_s8(vcgtq_f64(*(a3 + v46 + 48), *(result + v46 + 48)), *(a3 + v46 + 48), *(result + v46 + 48));
          v48[2] = vbslq_s8(vcgtq_f64(*(a3 + v46 + 32), *(result + v46 + 32)), *(a3 + v46 + 32), *(result + v46 + 32));
          v48[3] = v51;
          *v48 = v50;
          v48[1] = v49;
          v46 += 64;
          v47 -= 2;
        }

        while (v47);
        v46 = 4 * (v30 & 0x3FFFFFFE);
        if (v30 != (v30 & 0x3FFFFFFE))
        {
LABEL_54:
          v52 = 8 * v46;
          do
          {
            v53 = (a5 + v52);
            *v53 = vbslq_s8(vcgtq_f64(*(a3 + v52), *(result + v52)), *(a3 + v52), *(result + v52));
            v53[1] = vbslq_s8(vcgtq_f64(*(a3 + v52 + 16), *(result + v52 + 16)), *(a3 + v52 + 16), *(result + v52 + 16));
            v46 += 4;
            v52 += 32;
          }

          while (v46 <= v8);
        }

        if (v46 < a7)
        {
          v54 = (v8 & 0x7FFFFFFC) + 4;
          if (v43)
          {
            goto LABEL_67;
          }

          v55 = 32 * ((v8 >> 2) & 0x1FFFFFFF);
          v56 = v44;
          do
          {
            v57 = vbslq_s8(vcgtq_f64(*(a3 + v55 + 48), *(result + v55 + 48)), *(a3 + v55 + 48), *(result + v55 + 48));
            v58 = (a5 + v55);
            v58[2] = vbslq_s8(vcgtq_f64(*(a3 + v55 + 32), *(result + v55 + 32)), *(a3 + v55 + 32), *(result + v55 + 32));
            v58[3] = v57;
            v55 += 32;
            v56 -= 4;
          }

          while (v56);
          v54 = v42;
          if (v41)
          {
LABEL_67:
            do
            {
              v59 = *(result + 8 * v54);
              if (v59 < *(a3 + 8 * v54))
              {
                v59 = *(a3 + 8 * v54);
              }

              *(a5 + 8 * v54++) = v59;
            }

            while (v54 < a7);
          }
        }

        result += a2;
        a3 += a4;
        a5 += a6;
        LODWORD(v15) = v45 - 1;
      }

      while (v45);
    }

    else if (a7 >= 1)
    {
      v9 = (a5 + 16);
      v10 = (a3 + 16);
      v11 = (result + 16);
      do
      {
        v12 = *(v11 - 2);
        if (v12 < *(v10 - 2))
        {
          v12 = *(v10 - 2);
        }

        *(v9 - 2) = v12;
        if (a7 != 1)
        {
          v13 = *(v11 - 1);
          if (v13 < *(v10 - 1))
          {
            v13 = *(v10 - 1);
          }

          *(v9 - 1) = v13;
          if (a7 != 2)
          {
            v14 = *v11;
            if (*v11 < *v10)
            {
              v14 = *v10;
            }

            *v9 = v14;
          }
        }

        v9 = (v9 + a6);
        v10 = (v10 + a4);
        v11 = (v11 + a2);
        --a8;
      }

      while (a8);
    }
  }

  return result;
}

uint64_t sub_1001E46A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  if (a8)
  {
    v8 = a7 - 4;
    do
    {
      if (a7 >= 32)
      {
        v10 = 16;
        do
        {
          v11 = vminq_u8(*(result + v10), *(a3 + v10));
          v12 = (a5 + v10);
          v12[-1] = vminq_u8(*(result + v10 - 16), *(a3 + v10 - 16));
          *v12 = v11;
          v13 = v10 + 16;
          v10 += 32;
        }

        while (v13 <= a7 - 32);
        v9 = (v10 - 16);
        if (v9 > v8)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v9 = 0;
        if (v8 < 0)
        {
          goto LABEL_12;
        }
      }

      do
      {
        v14 = *(result + v9 + 1) - byte_1003E59DE[(*(result + v9 + 1) | 0x100) - *(a3 + v9 + 1)];
        v15 = (a5 + v9);
        *v15 = *(result + v9) - byte_1003E59DE[(*(result + v9) | 0x100) - *(a3 + v9)];
        v15[1] = v14;
        v16 = *(result + v9 + 3) - byte_1003E59DE[(*(result + v9 + 3) | 0x100) - *(a3 + v9 + 3)];
        v15[2] = *(result + v9 + 2) - byte_1003E59DE[(*(result + v9 + 2) | 0x100) - *(a3 + v9 + 2)];
        v15[3] = v16;
        v9 += 4;
      }

      while (v9 <= v8);
      v9 = v9;
LABEL_12:
      if (v9 < a7)
      {
        do
        {
          *(a5 + v9) = *(result + v9) - byte_1003E59DE[(*(result + v9) | 0x100) - *(a3 + v9)];
          ++v9;
        }

        while (a7 != v9);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      --a8;
    }

    while (a8);
  }

  return result;
}

unint64_t sub_1001E4808(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (!a8)
  {
    return result;
  }

  v8 = (a8 - 1);
  v9 = (a7 - 4);
  v10 = (a7 - 32);
  v137 = a4;
  v138 = a6;
  v139 = a2;
  if (a7 >= 32)
  {
    v17 = 0;
    v18 = a7;
    v136 = a6 - a2;
    v135 = a6 - a4;
    v19 = (v10 & 0x7FFFFFE0) + 36;
    if (v19 <= v9 + 1)
    {
      v19 = v9 + 1;
    }

    v20 = v19 - (v10 & 0x7FFFFFE0) - 33;
    v133 = (v20 & 0xFFFFFFFFFFFFFFFCLL) + 36;
    v134 = v20;
    v132 = (v20 >> 2) + 1;
    v21 = (a5 + 32);
    v22 = (result + 32);
    v23 = (a3 + 32);
    v24 = result;
    v25 = a3;
    v26 = a5;
    while (1)
    {
      v28 = a7;
      v29 = 0;
      v30 = 0;
      v31 = v17 * a6;
      v32 = v17 * a2;
      v33 = v17 * a4;
      v34 = v23;
      v35 = v22;
      v36 = v21;
      v37 = 32;
      do
      {
        v38 = vminq_s8(*(v24 + v30), *(v25 + v30));
        v39 = v37;
        v40 = v29;
        v41 = v36;
        v42 = v35;
        v43 = v34;
        v44 = vminq_s8(*(v24 + v30 + 16), *(v25 + v30 + 16));
        v45 = (v26 + v30);
        v30 += 32;
        v37 += 32;
        ++v29;
        *v45 = v38;
        v45[1] = v44;
        v36 += 2;
        v35 += 2;
        v34 = v43 + 2;
      }

      while (v30 <= v10);
      if (v9 >= v30)
      {
        if (v134 <= 0x3B)
        {
          goto LABEL_134;
        }

        v58 = 32 * v40;
        v59 = a5 + v31 + 32 * v40;
        v60 = v59 + 32;
        v61 = v59 + v133;
        v62 = result + v32 + v58;
        v63 = v62 + 32;
        v64 = v62 + v133;
        v65 = a3 + v33 + v58;
        v66 = v60 >= v65 + v133 || v65 + 32 >= v61;
        v67 = !v66;
        if (v63 < v61 && v60 < v64)
        {
          goto LABEL_134;
        }

        if (v67)
        {
          goto LABEL_134;
        }

        v39 += 4 * (v132 & 0x7FFFFFFFFFFFFFF0);
        v69 = v132 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v70 = v42[2];
          v71 = v42[3];
          v72 = *v42;
          v73 = v42[1];
          v42 += 4;
          v74 = v43[2];
          v75 = v43[3];
          v76 = *v43;
          v77 = v43[1];
          v43 += 4;
          v41[2] = vminq_s8(v74, v70);
          v41[3] = vminq_s8(v75, v71);
          *v41 = vminq_s8(v76, v72);
          v41[1] = vminq_s8(v77, v73);
          v41 += 4;
          v69 -= 16;
        }

        while (v69);
        if (v132 != (v132 & 0x7FFFFFFFFFFFFFF0))
        {
LABEL_134:
          do
          {
            v47 = (v24 + v39);
            v48 = *(v24 + v39);
            v49 = (v25 + v39);
            if (*(v25 + v39) < v48)
            {
              LOBYTE(v48) = *(v25 + v39);
            }

            v50 = v47[1];
            if (v49[1] < v50)
            {
              LOBYTE(v50) = v49[1];
            }

            v51 = (v26 + v39);
            *v51 = v48;
            v51[1] = v50;
            v52 = v47[2];
            if (v49[2] < v52)
            {
              LOBYTE(v52) = v49[2];
            }

            v53 = v47[3];
            v54 = v49[3];
            if (v54 < v53)
            {
              LOBYTE(v53) = v54;
            }

            v51[2] = v52;
            v51[3] = v53;
            v39 += 4;
          }

          while (v39 <= v9);
        }

        v46 = v39;
        a6 = v138;
        a2 = v139;
        a7 = v28;
        a4 = v137;
        if (v39 >= v28)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v46 = v30;
        a6 = v138;
        a2 = v139;
        a7 = v28;
        a4 = v137;
        if (v30 >= v28)
        {
          goto LABEL_19;
        }
      }

      v55 = v18 - v46;
      if ((v18 - v46) < 8)
      {
        v56 = v46;
        goto LABEL_38;
      }

      if (a5 - result + v136 * v17 < 0x20)
      {
        v56 = v46;
        goto LABEL_38;
      }

      if (a5 - a3 + v135 * v17 < 0x20)
      {
        v56 = v46;
        goto LABEL_38;
      }

      if (v55 >= 0x20)
      {
        v78 = v55 & 0xFFFFFFFFFFFFFFE0;
        v79 = v46;
        v80 = v55 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v81 = vminq_s8(*(v25 + v79 + 16), *(v24 + v79 + 16));
          v82 = (v26 + v79);
          *v82 = vminq_s8(*(v25 + v79), *(v24 + v79));
          v82[1] = v81;
          v79 += 32;
          v80 -= 32;
        }

        while (v80);
        if (v55 == v78)
        {
          goto LABEL_19;
        }

        if ((v55 & 0x18) == 0)
        {
          v56 = v78 + v46;
          do
          {
LABEL_38:
            v57 = *(v24 + v56);
            if (*(v25 + v56) < v57)
            {
              LOBYTE(v57) = *(v25 + v56);
            }

            *(v26 + v56++) = v57;
          }

          while (v18 != v56);
          goto LABEL_19;
        }
      }

      else
      {
        v78 = 0;
      }

      v56 = (v55 & 0xFFFFFFFFFFFFFFF8) + v46;
      v83 = v78 - (v55 & 0xFFFFFFFFFFFFFFF8);
      v84 = v78 + v46;
      do
      {
        *(v26 + v84) = vmin_s8(*(v25 + v84), *(v24 + v84));
        v84 += 8;
        v83 += 8;
      }

      while (v83);
      if (v55 != (v55 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_38;
      }

LABEL_19:
      v24 += a2;
      v25 += a4;
      v26 += a6;
      v27 = v8;
      LODWORD(v8) = v8 - 1;
      ++v17;
      v21 = (v21 + a6);
      v22 = (v22 + a2);
      v23 = (v23 + a4);
      if (!v27)
      {
        return result;
      }
    }
  }

  if (a7 >= 4)
  {
    v85 = 0;
    v86 = a5 - result;
    v87 = a6 - a2;
    v88 = a5 - a3;
    v89 = a6 - a4;
    v90 = v9 & 0x7FFFFFFC;
    v91 = v90 + 5;
    if (v90 + 5 <= a7)
    {
      v91 = a7;
    }

    v92 = v91 - v90 - 4;
    v93 = a5 + v8 * a6 + v90 + 4;
    v94 = result + v8 * a2 + v90 + 4;
    v95 = a3 + v8 * a4 + v90 + 4;
    v96 = (v9 >> 2) + 1;
    v99 = v94 > a5 && v93 > result || (a6 | v139) < 0;
    if (v95 > a5 && v93 > a3 || (a6 | a4) < 0)
    {
      v99 = 1;
    }

    v102 = v92 & 0xFFFFFFFFFFFFFFE0;
    v103 = v92 & 0xFFFFFFFFFFFFFFF8;
    v104 = v9 < 0x3C || v99;
    while (1)
    {
      v105 = v8;
      if (v104)
      {
        v106 = 0;
        v107 = 4;
      }

      else
      {
        v108 = 0;
        v109 = v96 & 0x3FFFFFF0;
        do
        {
          v110 = vminq_s8(*(a3 + v108 + 16), *(result + v108 + 16));
          v111 = vminq_s8(*(a3 + v108), *(result + v108));
          v112 = vminq_s8(*(a3 + v108 + 48), *(result + v108 + 48));
          v113 = (a5 + v108);
          v113[2] = vminq_s8(*(a3 + v108 + 32), *(result + v108 + 32));
          v113[3] = v112;
          *v113 = v111;
          v113[1] = v110;
          v108 += 64;
          v109 -= 16;
        }

        while (v109);
        v107 = ((((v96 & 0x3FFFFFF0) >> 4) & 0x3FFFFFF) << 6) | 4;
        v106 = 4 * (v96 & 0x3FFFFFF0);
        v114 = v106;
        if (v96 == (v96 & 0x3FFFFFF0))
        {
          goto LABEL_110;
        }
      }

      v114 = v107 - 4;
      do
      {
        v115 = (result + v106);
        v116 = *(result + v106);
        v117 = (a3 + v106);
        if (*(a3 + v106) < v116)
        {
          LOBYTE(v116) = *(a3 + v106);
        }

        v118 = v115[1];
        if (v117[1] < v118)
        {
          LOBYTE(v118) = v117[1];
        }

        v119 = (a5 + v106);
        *v119 = v116;
        v119[1] = v118;
        v120 = v115[2];
        if (v117[2] < v120)
        {
          LOBYTE(v120) = v117[2];
        }

        v121 = v115[3];
        v122 = v117[3];
        if (v122 < v121)
        {
          LOBYTE(v121) = v122;
        }

        v119[2] = v120;
        v119[3] = v121;
        v106 += 4;
        v114 += 4;
      }

      while (v106 <= v9);
LABEL_110:
      if (v106 < a7)
      {
        if (v92 < 8)
        {
          v123 = v114;
          goto LABEL_113;
        }

        if (v86 + v87 * v85 < 0x20)
        {
          v123 = v114;
          goto LABEL_113;
        }

        if (v88 + v89 * v85 < 0x20)
        {
          v123 = v114;
          goto LABEL_113;
        }

        if (v92 >= 0x20)
        {
          v126 = v114;
          v127 = v92 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v128 = vminq_s8(*(a3 + v126 + 16), *(result + v126 + 16));
            v129 = (a5 + v126);
            *v129 = vminq_s8(*(a3 + v126), *(result + v126));
            v129[1] = v128;
            v126 += 32;
            v127 -= 32;
          }

          while (v127);
          if (v92 == v102)
          {
            goto LABEL_94;
          }

          v125 = v92 & 0xFFFFFFFFFFFFFFE0;
          if ((v92 & 0x18) == 0)
          {
            v123 = v114 + v102;
            do
            {
LABEL_113:
              v124 = *(result + v123);
              if (*(a3 + v123) < v124)
              {
                LOBYTE(v124) = *(a3 + v123);
              }

              *(a5 + v123++) = v124;
            }

            while (v123 < a7);
            goto LABEL_94;
          }
        }

        else
        {
          v125 = 0;
        }

        v123 = v114 + v103;
        v130 = v125 - (v92 & 0xFFFFFFFFFFFFFFF8);
        v131 = v125 + v114;
        do
        {
          *(a5 + v131) = vmin_s8(*(a3 + v131), *(result + v131));
          v131 += 8;
          v130 += 8;
        }

        while (v130);
        if (v92 != v103)
        {
          goto LABEL_113;
        }
      }

LABEL_94:
      result += v139;
      a3 += v137;
      a5 += v138;
      LODWORD(v8) = v105 - 1;
      ++v85;
      if (!v105)
      {
        return result;
      }
    }
  }

  if (a7 >= 1)
  {
    v11 = (a5 + 2);
    v12 = (a3 + 2);
    v13 = (result + 1);
    do
    {
      v14 = *(v13 - 1);
      if (*(v12 - 2) < v14)
      {
        LOBYTE(v14) = *(v12 - 2);
      }

      *(v11 - 2) = v14;
      if (a7 != 1)
      {
        v15 = *v13;
        if (*(v12 - 1) < v15)
        {
          LOBYTE(v15) = *(v12 - 1);
        }

        *(v11 - 1) = v15;
        if (a7 != 2)
        {
          v16 = v13[1];
          if (*v12 < v16)
          {
            LOBYTE(v16) = *v12;
          }

          *v11 = v16;
        }
      }

      v11 += a6;
      v12 += a4;
      v13 += a2;
      --a8;
    }

    while (a8);
  }

  return result;
}

unint64_t sub_1001E4F28(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  if (!a8)
  {
    return result;
  }

  v8 = a5;
  v9 = a3;
  v10 = result;
  v11 = (a8 - 1);
  v12 = (a7 - 4);
  v13 = (a7 - 16);
  v152 = a4;
  v153 = a6;
  v151 = a2;
  if (a7 >= 16)
  {
    v20 = 0;
    v21 = a7;
    v147 = a5 - result;
    v145 = a6 - a2;
    v144 = a5 - a3;
    v143 = a6 - a4;
    v22 = (v13 & 0x7FFFFFF0) + 20;
    if (v22 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    v23 = v22 - (v13 & 0x7FFFFFF0);
    v141 = ((2 * v23 - 34) & 0xFFFFFFFFFFFFFFF8) + 40;
    v142 = v23 - 17;
    v140 = ((v23 - 17) >> 2) + 1;
    v24 = (a5 + 32);
    v25 = result + 32;
    v26 = (a3 + 32);
    v27 = result;
    v28 = a3;
    v29 = a5;
    while (1)
    {
      v30 = 0;
      v31 = 0;
      v32 = v11;
      v33 = v20 * a6;
      result = v20 * a2;
      v34 = v20 * a4;
      v35 = v26;
      v36 = v25;
      v37 = v24;
      v38 = 16;
      do
      {
        v39 = (v27 + 2 * v31);
        v40 = *v39;
        v41 = v39[1];
        v42 = (v28 + 2 * v31);
        v43 = v42[1];
        v44 = vminq_u16(v40, *v42);
        v45 = v38;
        v46 = v30;
        v47 = v37;
        v48 = v36;
        v49 = v35;
        v50 = (v29 + 2 * v31);
        v31 += 16;
        v38 += 16;
        ++v30;
        *v50 = v44;
        v50[1] = vminq_u16(v41, v43);
        v37 += 2;
        v36 += 2;
        v35 = v49 + 2;
      }

      while (v31 <= v13);
      if (v12 >= v31)
      {
        if (v142 <= 0x1B)
        {
          goto LABEL_24;
        }

        v64 = 32 * v46;
        v65 = v8 + v33 + 32 * v46;
        v66 = v65 + 32;
        v67 = v65 + v141;
        v68 = v10 + result + v64;
        v69 = v68 + 32;
        result = v68 + v141;
        v70 = v9 + v34 + v64;
        v71 = v66 >= v70 + v141 || v70 + 32 >= v67;
        v72 = !v71;
        if (v69 < v67 && v66 < result)
        {
          goto LABEL_24;
        }

        if (v72)
        {
          goto LABEL_24;
        }

        v45 += 4 * (v140 & 0x7FFFFFFFFFFFFFF8);
        v74 = v140 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v75 = v48[2];
          v76 = v48[3];
          v77 = *v48;
          v78 = v48[1];
          v48 += 4;
          v79 = v49[2];
          v80 = v49[3];
          v81 = *v49;
          v82 = v49[1];
          v49 += 4;
          v47[2] = vminq_u16(v79, v75);
          v47[3] = vminq_u16(v80, v76);
          *v47 = vminq_u16(v81, v77);
          v47[1] = vminq_u16(v82, v78);
          v47 += 4;
          v74 -= 8;
        }

        while (v74);
        LODWORD(v31) = v45;
        if (v140 != (v140 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_24:
          v51 = 2 * v45;
          v52 = v27;
          result = v29;
          v53 = v28;
          v31 = v45;
          do
          {
            v54 = *(v52 + 2 * v45);
            if (*(v53 + 2 * v45) < v54)
            {
              LOWORD(v54) = *(v53 + 2 * v45);
            }

            v55 = v52 + v51;
            v56 = *(v52 + v51 + 2);
            v57 = v53 + v51;
            if (*(v53 + v51 + 2) < v56)
            {
              LOWORD(v56) = *(v53 + v51 + 2);
            }

            v58 = result + v51;
            *(result + 2 * v45) = v54;
            *(result + v51 + 2) = v56;
            v59 = *(v55 + 4);
            if (*(v57 + 4) < v59)
            {
              LOWORD(v59) = *(v57 + 4);
            }

            v60 = *(v55 + 6);
            if (*(v57 + 6) < v60)
            {
              LOWORD(v60) = *(v57 + 6);
            }

            v31 += 4;
            *(v58 + 4) = v59;
            *(v58 + 6) = v60;
            v53 += 8;
            result += 8;
            v52 += 8;
          }

          while (v31 <= v12);
        }
      }

      v61 = v31;
      a4 = v152;
      a6 = v153;
      a2 = v151;
      if (v31 >= a7)
      {
        goto LABEL_19;
      }

      v62 = v21 - v31;
      if (v62 < 4)
      {
        v31 = v31;
        goto LABEL_37;
      }

      if (v147 + v145 * v20 < 0x20)
      {
        v31 = v31;
        goto LABEL_37;
      }

      if (v144 + v143 * v20 < 0x20)
      {
        v31 = v31;
        goto LABEL_37;
      }

      if (v62 >= 0x10)
      {
        v83 = v62 & 0xFFFFFFFFFFFFFFF0;
        v84 = 2 * v31;
        result = v62 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v85 = vminq_u16(*(v28 + v84 + 16), *(v27 + v84 + 16));
          v86 = (v29 + v84);
          *v86 = vminq_u16(*(v28 + v84), *(v27 + v84));
          v86[1] = v85;
          v84 += 32;
          result -= 16;
        }

        while (result);
        if (v62 == v83)
        {
          goto LABEL_19;
        }

        if ((v62 & 0xC) == 0)
        {
          v31 = v83 + v61;
          do
          {
LABEL_37:
            v63 = *(v27 + 2 * v31);
            if (*(v28 + 2 * v31) < v63)
            {
              LOWORD(v63) = *(v28 + 2 * v31);
            }

            *(v29 + 2 * v31++) = v63;
          }

          while (v21 != v31);
          goto LABEL_19;
        }
      }

      else
      {
        v83 = 0;
      }

      result = v62 & 0xFFFFFFFFFFFFFFFCLL;
      v31 = (v62 & 0xFFFFFFFFFFFFFFFCLL) + v61;
      v87 = v83 - (v62 & 0xFFFFFFFFFFFFFFFCLL);
      v88 = 2 * (v83 + v61);
      do
      {
        *(v29 + v88) = vmin_u16(*(v28 + v88), *(v27 + v88));
        v88 += 8;
        v87 += 4;
      }

      while (v87);
      if (v62 != result)
      {
        goto LABEL_37;
      }

LABEL_19:
      v27 += v151;
      v28 += v152;
      v29 += v153;
      LODWORD(v11) = v11 - 1;
      ++v20;
      v24 = (v24 + v153);
      v25 += v151;
      v26 = (v26 + v152);
      if (!v32)
      {
        return result;
      }
    }
  }

  if (a7 >= 4)
  {
    v89 = 0;
    v90 = a7;
    v91 = a5 - result;
    v92 = a6 - a2;
    v150 = a5 - a3;
    v93 = a6 - a4;
    v94 = v12 & 0x7FFFFFFC;
    if (v94 + 5 <= a7)
    {
      v95 = a7;
    }

    else
    {
      v95 = (v12 & 0x7FFFFFFC) + 5;
    }

    v96 = v95 - 4 - v94;
    v97 = (2 * (a7 - 4)) & 0xFFFFFFF8;
    v98 = a5 + v11 * a6 + v97 + 8;
    v99 = v10 + v11 * a2 + v97 + 8;
    v100 = a3 + v11 * a4 + v97 + 8;
    v101 = (v12 >> 2) + 1;
    v104 = v99 > v8 && v98 > v10 || (a6 | a2) < 0;
    v107 = v100 > v8 && v98 > a3 || (a6 | a4) < 0 || v104;
    v108 = v96 & 0xFFFFFFFFFFFFFFF0;
    v109 = (v12 < 0x1C) | v107;
    v148 = v96 - (v95 & 3);
    v149 = v95 & 3;
    v146 = v95 - 4 - v149 - v94;
    while (1)
    {
      v110 = v11;
      if (v109)
      {
        v111 = 0;
        v112 = 4;
      }

      else
      {
        v113 = 0;
        v114 = v101 & 0x3FFFFFF8;
        do
        {
          v115 = vminq_u16(*(v9 + v113 + 16), *(v10 + v113 + 16));
          v116 = vminq_u16(*(v9 + v113), *(v10 + v113));
          v117 = vminq_u16(*(v9 + v113 + 48), *(v10 + v113 + 48));
          v118 = (v8 + v113);
          v118[2] = vminq_u16(*(v9 + v113 + 32), *(v10 + v113 + 32));
          v118[3] = v117;
          *v118 = v116;
          v118[1] = v115;
          v113 += 64;
          v114 -= 8;
        }

        while (v114);
        v112 = (32 * (((v101 & 0x3FFFFFF8) >> 3) & 0x7FFFFFF)) | 4;
        v111 = 4 * (v101 & 0x3FFFFFF8);
        v119 = v111;
        LODWORD(v120) = 4 * (v101 & 0x3FFFFFF8);
        if (v101 == (v101 & 0x3FFFFFF8))
        {
          goto LABEL_110;
        }
      }

      v119 = v112 - 4;
      v121 = 2 * v111;
      v122 = v9;
      v123 = v10;
      v124 = v8;
      v120 = v111;
      do
      {
        v125 = *(v123 + 2 * v111);
        if (*(v122 + 2 * v111) < v125)
        {
          LOWORD(v125) = *(v122 + 2 * v111);
        }

        v126 = v123 + v121;
        v127 = *(v123 + v121 + 2);
        v128 = v122 + v121;
        if (*(v122 + v121 + 2) < v127)
        {
          LOWORD(v127) = *(v122 + v121 + 2);
        }

        *(v124 + 2 * v111) = v125;
        v129 = v124 + v121;
        *(v124 + v121 + 2) = v127;
        v130 = *(v126 + 4);
        if (*(v128 + 4) < v130)
        {
          LOWORD(v130) = *(v128 + 4);
        }

        v131 = *(v126 + 6);
        v132 = *(v128 + 6);
        if (v132 < v131)
        {
          LOWORD(v131) = v132;
        }

        v120 += 4;
        v119 += 4;
        *(v129 + 4) = v130;
        *(v129 + 6) = v131;
        v124 += 8;
        v123 += 8;
        v122 += 8;
      }

      while (v120 <= v12);
LABEL_110:
      result = a7;
      if (v120 < a7)
      {
        if (v96 < 4)
        {
          result = v119;
          goto LABEL_113;
        }

        if (v91 + v92 * v89 < 0x20)
        {
          result = v119;
          goto LABEL_113;
        }

        if (v150 + v93 * v89 < 0x20)
        {
          result = v119;
          goto LABEL_113;
        }

        if (v96 >= 0x10)
        {
          result = 2 * v119;
          v135 = v96 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v136 = vminq_u16(*(v9 + result + 16), *(v10 + result + 16));
            v137 = (v8 + result);
            *v137 = vminq_u16(*(v9 + result), *(v10 + result));
            v137[1] = v136;
            result += 32;
            v135 -= 16;
          }

          while (v135);
          if (v96 == v108)
          {
            goto LABEL_94;
          }

          v134 = v96 & 0xFFFFFFFFFFFFFFF0;
          if ((v96 & 0xC) == 0)
          {
            result = v119 + v108;
            do
            {
LABEL_113:
              v133 = *(v10 + 2 * result);
              if (*(v9 + 2 * result) < v133)
              {
                LOWORD(v133) = *(v9 + 2 * result);
              }

              *(v8 + 2 * result++) = v133;
            }

            while (result < v90);
            goto LABEL_94;
          }
        }

        else
        {
          v134 = 0;
        }

        result = v119 + v148;
        v138 = v146 - v134;
        v139 = 2 * (v134 + v119);
        do
        {
          *(v8 + v139) = vmin_u16(*(v9 + v139), *(v10 + v139));
          v139 += 8;
          v138 -= 4;
        }

        while (v138);
        if (v149)
        {
          goto LABEL_113;
        }
      }

LABEL_94:
      v10 += v151;
      v9 += v152;
      v8 += v153;
      LODWORD(v11) = v110 - 1;
      ++v89;
      if (!v110)
      {
        return result;
      }
    }
  }

  if (a7 >= 1)
  {
    v14 = (a5 + 4);
    v15 = (a3 + 4);
    v16 = (result + 4);
    do
    {
      v17 = *(v16 - 2);
      if (*(v15 - 2) < v17)
      {
        LOWORD(v17) = *(v15 - 2);
      }

      *(v14 - 2) = v17;
      if (a7 != 1)
      {
        v18 = *(v16 - 1);
        if (*(v15 - 1) < v18)
        {
          LOWORD(v18) = *(v15 - 1);
        }

        *(v14 - 1) = v18;
        if (a7 != 2)
        {
          v19 = *v16;
          if (*v15 < v19)
          {
            LOWORD(v19) = *v15;
          }

          *v14 = v19;
        }
      }

      v14 = (v14 + a6);
      v15 = (v15 + a4);
      v16 = (v16 + a2);
      --a8;
    }

    while (a8);
  }

  return result;
}

unint64_t sub_1001E56B8(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  if (!a8)
  {
    return result;
  }

  v8 = a5;
  v9 = a3;
  v10 = result;
  v11 = (a8 - 1);
  v12 = (a7 - 4);
  v13 = (a7 - 16);
  v152 = a4;
  v153 = a6;
  v151 = a2;
  if (a7 >= 16)
  {
    v20 = 0;
    v21 = a7;
    v147 = a5 - result;
    v145 = a6 - a2;
    v144 = a5 - a3;
    v143 = a6 - a4;
    v22 = (v13 & 0x7FFFFFF0) + 20;
    if (v22 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    v23 = v22 - (v13 & 0x7FFFFFF0);
    v141 = ((2 * v23 - 34) & 0xFFFFFFFFFFFFFFF8) + 40;
    v142 = v23 - 17;
    v140 = ((v23 - 17) >> 2) + 1;
    v24 = (a5 + 32);
    v25 = result + 32;
    v26 = (a3 + 32);
    v27 = result;
    v28 = a3;
    v29 = a5;
    while (1)
    {
      v30 = 0;
      v31 = 0;
      v32 = v11;
      v33 = v20 * a6;
      result = v20 * a2;
      v34 = v20 * a4;
      v35 = v26;
      v36 = v25;
      v37 = v24;
      v38 = 16;
      do
      {
        v39 = (v27 + 2 * v31);
        v40 = *v39;
        v41 = v39[1];
        v42 = (v28 + 2 * v31);
        v43 = v42[1];
        v44 = vminq_s16(v40, *v42);
        v45 = v38;
        v46 = v30;
        v47 = v37;
        v48 = v36;
        v49 = v35;
        v50 = (v29 + 2 * v31);
        v31 += 16;
        v38 += 16;
        ++v30;
        *v50 = v44;
        v50[1] = vminq_s16(v41, v43);
        v37 += 2;
        v36 += 2;
        v35 = v49 + 2;
      }

      while (v31 <= v13);
      if (v12 >= v31)
      {
        if (v142 <= 0x1B)
        {
          goto LABEL_24;
        }

        v64 = 32 * v46;
        v65 = v8 + v33 + 32 * v46;
        v66 = v65 + 32;
        v67 = v65 + v141;
        v68 = v10 + result + v64;
        v69 = v68 + 32;
        result = v68 + v141;
        v70 = v9 + v34 + v64;
        v71 = v66 >= v70 + v141 || v70 + 32 >= v67;
        v72 = !v71;
        if (v69 < v67 && v66 < result)
        {
          goto LABEL_24;
        }

        if (v72)
        {
          goto LABEL_24;
        }

        v45 += 4 * (v140 & 0x7FFFFFFFFFFFFFF8);
        v74 = v140 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v75 = v48[2];
          v76 = v48[3];
          v77 = *v48;
          v78 = v48[1];
          v48 += 4;
          v79 = v49[2];
          v80 = v49[3];
          v81 = *v49;
          v82 = v49[1];
          v49 += 4;
          v47[2] = vminq_s16(v79, v75);
          v47[3] = vminq_s16(v80, v76);
          *v47 = vminq_s16(v81, v77);
          v47[1] = vminq_s16(v82, v78);
          v47 += 4;
          v74 -= 8;
        }

        while (v74);
        LODWORD(v31) = v45;
        if (v140 != (v140 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_24:
          v51 = 2 * v45;
          v52 = v27;
          result = v29;
          v53 = v28;
          v31 = v45;
          do
          {
            v54 = *(v52 + 2 * v45);
            if (*(v53 + 2 * v45) < v54)
            {
              LOWORD(v54) = *(v53 + 2 * v45);
            }

            v55 = v52 + v51;
            v56 = *(v52 + v51 + 2);
            v57 = v53 + v51;
            if (*(v53 + v51 + 2) < v56)
            {
              LOWORD(v56) = *(v53 + v51 + 2);
            }

            v58 = result + v51;
            *(result + 2 * v45) = v54;
            *(result + v51 + 2) = v56;
            v59 = *(v55 + 4);
            if (*(v57 + 4) < v59)
            {
              LOWORD(v59) = *(v57 + 4);
            }

            v60 = *(v55 + 6);
            if (*(v57 + 6) < v60)
            {
              LOWORD(v60) = *(v57 + 6);
            }

            v31 += 4;
            *(v58 + 4) = v59;
            *(v58 + 6) = v60;
            v53 += 8;
            result += 8;
            v52 += 8;
          }

          while (v31 <= v12);
        }
      }

      v61 = v31;
      a4 = v152;
      a6 = v153;
      a2 = v151;
      if (v31 >= a7)
      {
        goto LABEL_19;
      }

      v62 = v21 - v31;
      if (v62 < 4)
      {
        v31 = v31;
        goto LABEL_37;
      }

      if (v147 + v145 * v20 < 0x20)
      {
        v31 = v31;
        goto LABEL_37;
      }

      if (v144 + v143 * v20 < 0x20)
      {
        v31 = v31;
        goto LABEL_37;
      }

      if (v62 >= 0x10)
      {
        v83 = v62 & 0xFFFFFFFFFFFFFFF0;
        v84 = 2 * v31;
        result = v62 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v85 = vminq_s16(*(v28 + v84 + 16), *(v27 + v84 + 16));
          v86 = (v29 + v84);
          *v86 = vminq_s16(*(v28 + v84), *(v27 + v84));
          v86[1] = v85;
          v84 += 32;
          result -= 16;
        }

        while (result);
        if (v62 == v83)
        {
          goto LABEL_19;
        }

        if ((v62 & 0xC) == 0)
        {
          v31 = v83 + v61;
          do
          {
LABEL_37:
            v63 = *(v27 + 2 * v31);
            if (*(v28 + 2 * v31) < v63)
            {
              LOWORD(v63) = *(v28 + 2 * v31);
            }

            *(v29 + 2 * v31++) = v63;
          }

          while (v21 != v31);
          goto LABEL_19;
        }
      }

      else
      {
        v83 = 0;
      }

      result = v62 & 0xFFFFFFFFFFFFFFFCLL;
      v31 = (v62 & 0xFFFFFFFFFFFFFFFCLL) + v61;
      v87 = v83 - (v62 & 0xFFFFFFFFFFFFFFFCLL);
      v88 = 2 * (v83 + v61);
      do
      {
        *(v29 + v88) = vmin_s16(*(v28 + v88), *(v27 + v88));
        v88 += 8;
        v87 += 4;
      }

      while (v87);
      if (v62 != result)
      {
        goto LABEL_37;
      }

LABEL_19:
      v27 += v151;
      v28 += v152;
      v29 += v153;
      LODWORD(v11) = v11 - 1;
      ++v20;
      v24 = (v24 + v153);
      v25 += v151;
      v26 = (v26 + v152);
      if (!v32)
      {
        return result;
      }
    }
  }

  if (a7 >= 4)
  {
    v89 = 0;
    v90 = a7;
    v91 = a5 - result;
    v92 = a6 - a2;
    v150 = a5 - a3;
    v93 = a6 - a4;
    v94 = v12 & 0x7FFFFFFC;
    if (v94 + 5 <= a7)
    {
      v95 = a7;
    }

    else
    {
      v95 = (v12 & 0x7FFFFFFC) + 5;
    }

    v96 = v95 - 4 - v94;
    v97 = (2 * (a7 - 4)) & 0xFFFFFFF8;
    v98 = a5 + v11 * a6 + v97 + 8;
    v99 = v10 + v11 * a2 + v97 + 8;
    v100 = a3 + v11 * a4 + v97 + 8;
    v101 = (v12 >> 2) + 1;
    v104 = v99 > v8 && v98 > v10 || (a6 | a2) < 0;
    v107 = v100 > v8 && v98 > a3 || (a6 | a4) < 0 || v104;
    v108 = v96 & 0xFFFFFFFFFFFFFFF0;
    v109 = (v12 < 0x1C) | v107;
    v148 = v96 - (v95 & 3);
    v149 = v95 & 3;
    v146 = v95 - 4 - v149 - v94;
    while (1)
    {
      v110 = v11;
      if (v109)
      {
        v111 = 0;
        v112 = 4;
      }

      else
      {
        v113 = 0;
        v114 = v101 & 0x3FFFFFF8;
        do
        {
          v115 = vminq_s16(*(v9 + v113 + 16), *(v10 + v113 + 16));
          v116 = vminq_s16(*(v9 + v113), *(v10 + v113));
          v117 = vminq_s16(*(v9 + v113 + 48), *(v10 + v113 + 48));
          v118 = (v8 + v113);
          v118[2] = vminq_s16(*(v9 + v113 + 32), *(v10 + v113 + 32));
          v118[3] = v117;
          *v118 = v116;
          v118[1] = v115;
          v113 += 64;
          v114 -= 8;
        }

        while (v114);
        v112 = (32 * (((v101 & 0x3FFFFFF8) >> 3) & 0x7FFFFFF)) | 4;
        v111 = 4 * (v101 & 0x3FFFFFF8);
        v119 = v111;
        LODWORD(v120) = 4 * (v101 & 0x3FFFFFF8);
        if (v101 == (v101 & 0x3FFFFFF8))
        {
          goto LABEL_110;
        }
      }

      v119 = v112 - 4;
      v121 = 2 * v111;
      v122 = v9;
      v123 = v10;
      v124 = v8;
      v120 = v111;
      do
      {
        v125 = *(v123 + 2 * v111);
        if (*(v122 + 2 * v111) < v125)
        {
          LOWORD(v125) = *(v122 + 2 * v111);
        }

        v126 = v123 + v121;
        v127 = *(v123 + v121 + 2);
        v128 = v122 + v121;
        if (*(v122 + v121 + 2) < v127)
        {
          LOWORD(v127) = *(v122 + v121 + 2);
        }

        *(v124 + 2 * v111) = v125;
        v129 = v124 + v121;
        *(v124 + v121 + 2) = v127;
        v130 = *(v126 + 4);
        if (*(v128 + 4) < v130)
        {
          LOWORD(v130) = *(v128 + 4);
        }

        v131 = *(v126 + 6);
        v132 = *(v128 + 6);
        if (v132 < v131)
        {
          LOWORD(v131) = v132;
        }

        v120 += 4;
        v119 += 4;
        *(v129 + 4) = v130;
        *(v129 + 6) = v131;
        v124 += 8;
        v123 += 8;
        v122 += 8;
      }

      while (v120 <= v12);
LABEL_110:
      result = a7;
      if (v120 < a7)
      {
        if (v96 < 4)
        {
          result = v119;
          goto LABEL_113;
        }

        if (v91 + v92 * v89 < 0x20)
        {
          result = v119;
          goto LABEL_113;
        }

        if (v150 + v93 * v89 < 0x20)
        {
          result = v119;
          goto LABEL_113;
        }

        if (v96 >= 0x10)
        {
          result = 2 * v119;
          v135 = v96 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v136 = vminq_s16(*(v9 + result + 16), *(v10 + result + 16));
            v137 = (v8 + result);
            *v137 = vminq_s16(*(v9 + result), *(v10 + result));
            v137[1] = v136;
            result += 32;
            v135 -= 16;
          }

          while (v135);
          if (v96 == v108)
          {
            goto LABEL_94;
          }

          v134 = v96 & 0xFFFFFFFFFFFFFFF0;
          if ((v96 & 0xC) == 0)
          {
            result = v119 + v108;
            do
            {
LABEL_113:
              v133 = *(v10 + 2 * result);
              if (*(v9 + 2 * result) < v133)
              {
                LOWORD(v133) = *(v9 + 2 * result);
              }

              *(v8 + 2 * result++) = v133;
            }

            while (result < v90);
            goto LABEL_94;
          }
        }

        else
        {
          v134 = 0;
        }

        result = v119 + v148;
        v138 = v146 - v134;
        v139 = 2 * (v134 + v119);
        do
        {
          *(v8 + v139) = vmin_s16(*(v9 + v139), *(v10 + v139));
          v139 += 8;
          v138 -= 4;
        }

        while (v138);
        if (v149)
        {
          goto LABEL_113;
        }
      }

LABEL_94:
      v10 += v151;
      v9 += v152;
      v8 += v153;
      LODWORD(v11) = v110 - 1;
      ++v89;
      if (!v110)
      {
        return result;
      }
    }
  }

  if (a7 >= 1)
  {
    v14 = (a5 + 4);
    v15 = (a3 + 4);
    v16 = (result + 4);
    do
    {
      v17 = *(v16 - 2);
      if (*(v15 - 2) < v17)
      {
        LOWORD(v17) = *(v15 - 2);
      }

      *(v14 - 2) = v17;
      if (a7 != 1)
      {
        v18 = *(v16 - 1);
        if (*(v15 - 1) < v18)
        {
          LOWORD(v18) = *(v15 - 1);
        }

        *(v14 - 1) = v18;
        if (a7 != 2)
        {
          v19 = *v16;
          if (*v15 < v19)
          {
            LOWORD(v19) = *v15;
          }

          *v14 = v19;
        }
      }

      v14 = (v14 + a6);
      v15 = (v15 + a4);
      v16 = (v16 + a2);
      --a8;
    }

    while (a8);
  }

  return result;
}

unint64_t sub_1001E5E48(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  if (!a8)
  {
    return result;
  }

  v8 = a2;
  v9 = (a8 - 1);
  v10 = (a7 - 4);
  v11 = (a7 - 8);
  if (a7 >= 8)
  {
    v18 = 0;
    v19 = a7;
    v117 = a6 - a2;
    v116 = a6 - a4;
    v20 = (v11 & 0x7FFFFFF8) + 12;
    if (v20 <= v10 + 1)
    {
      v20 = v10 + 1;
    }

    v21 = v20 - (v11 & 0x7FFFFFF8);
    v114 = ((4 * v21 - 36) & 0xFFFFFFFFFFFFFFF0) + 48;
    v115 = v21 - 9;
    v113 = ((v21 - 9) >> 2) + 1;
    v22 = (a5 + 32);
    v23 = (result + 32);
    v24 = (a3 + 32);
    v25 = result;
    v26 = a3;
    v27 = a5;
    v118 = a4;
    v119 = a6;
    while (1)
    {
      v28 = 0;
      v29 = 0;
      v121 = v9;
      v30 = v18 * v8;
      v31 = v18 * a4;
      v32 = v24;
      v33 = v23;
      v34 = v22;
      v35 = 8;
      do
      {
        v36 = (v25 + 4 * v29);
        v37 = *v36;
        v38 = v36[1];
        v39 = (v26 + 4 * v29);
        v40 = v39[1];
        v41 = vminq_s32(v37, *v39);
        v42 = v35;
        v43 = v28;
        v44 = v34;
        v45 = v33;
        v46 = v32;
        v47 = (v27 + 4 * v29);
        v29 += 8;
        v35 += 8;
        ++v28;
        *v47 = v41;
        v47[1] = vminq_s32(v38, v40);
        v34 += 2;
        v33 += 2;
        v32 = v46 + 2;
      }

      while (v29 <= v11);
      if (v10 >= v29)
      {
        if (v115 <= 0xB)
        {
          goto LABEL_26;
        }

        v54 = 32 * v43;
        v55 = a5 + v18 * a6 + 32 * v43;
        v56 = v55 + 32;
        v57 = v55 + v114;
        v58 = result + v30 + v54;
        v59 = v58 + 32;
        v60 = v58 + v114;
        v61 = a3 + v31 + v54;
        v62 = v56 >= v61 + v114 || v61 + 32 >= v57;
        v63 = !v62;
        if (v59 < v57 && v56 < v60)
        {
          goto LABEL_26;
        }

        if (v63)
        {
          goto LABEL_26;
        }

        v42 += 4 * (v113 & 0x7FFFFFFFFFFFFFFCLL);
        v65 = v113 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v66 = v45[2];
          v67 = v45[3];
          v68 = *v45;
          v69 = v45[1];
          v45 += 4;
          v70 = v46[2];
          v71 = v46[3];
          v72 = *v46;
          v73 = v46[1];
          v46 += 4;
          v44[2] = vminq_s32(v70, v66);
          v44[3] = vminq_s32(v71, v67);
          *v44 = vminq_s32(v72, v68);
          v44[1] = vminq_s32(v73, v69);
          v44 += 4;
          v65 -= 4;
        }

        while (v65);
        if (v113 != (v113 & 0x7FFFFFFFFFFFFFFCLL))
        {
LABEL_26:
          v49 = 4 * v42;
          do
          {
            v50 = (v27 + v49);
            *v50 = vmin_s32(*(v26 + v49), *(v25 + v49));
            v50[1] = vmin_s32(*(v26 + v49 + 8), *(v25 + v49 + 8));
            v42 += 4;
            v49 += 16;
          }

          while (v42 <= v10);
        }

        v48 = v42;
        a4 = v118;
        a6 = v119;
        v88 = v42 < a7;
        v8 = a2;
        if (!v88)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v48 = v29;
        a4 = v118;
        a6 = v119;
        v8 = a2;
        if (v29 >= a7)
        {
          goto LABEL_19;
        }
      }

      v51 = v19 - v48;
      if ((v19 - v48) <= 7 || a5 - result + v117 * v18 < 0x20 || a5 - a3 + v116 * v18 < 0x20)
      {
        v52 = v48;
        do
        {
LABEL_32:
          v53 = *(v25 + 4 * v52);
          if (*(v26 + 4 * v52) < v53)
          {
            v53 = *(v26 + 4 * v52);
          }

          *(v27 + 4 * v52++) = v53;
        }

        while (v19 != v52);
        goto LABEL_19;
      }

      v52 = (v51 & 0xFFFFFFFFFFFFFFF8) + v48;
      v74 = 4 * v48;
      v75 = v51 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v76 = vminq_s32(*(v26 + v74 + 16), *(v25 + v74 + 16));
        v77 = (v27 + v74);
        *v77 = vminq_s32(*(v26 + v74), *(v25 + v74));
        v77[1] = v76;
        v74 += 32;
        v75 -= 8;
      }

      while (v75);
      if (v51 != (v51 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_32;
      }

LABEL_19:
      v25 += a2;
      v26 += a4;
      v27 += a6;
      LODWORD(v9) = v121 - 1;
      ++v18;
      v22 = (v22 + a6);
      v23 = (v23 + a2);
      v24 = (v24 + a4);
      if (!v121)
      {
        return result;
      }
    }
  }

  if (a7 >= 4)
  {
    v78 = 0;
    v79 = a5 - result;
    v80 = a5 - a3;
    v81 = (v10 & 0x7FFFFFFC) + 5;
    if (v81 <= a7)
    {
      v81 = a7;
    }

    v82 = v81 - (v10 & 0x7FFFFFFC) - 4;
    v83 = (4 * (a7 - 4)) & 0x1FFFFFFF0;
    v84 = a5 + v9 * a6 + v83 + 16;
    v85 = result + v9 * a2 + v83 + 16;
    v86 = a3 + v9 * a4 + v83 + 16;
    v87 = (v10 >> 2) + 1;
    v88 = v85 > a5 && v84 > result;
    v90 = v88 || (a6 | v8) < 0;
    if (v86 > a5 && v84 > a3 || (a6 | a4) < 0)
    {
      v90 = 1;
    }

    v93 = (v10 < 0xC) | v90;
    v94 = v82 & 0xFFFFFFFFFFFFFFF8;
    while (1)
    {
      v95 = v9;
      if (v93)
      {
        break;
      }

      v98 = 0;
      v99 = v87 & 0x3FFFFFFC;
      do
      {
        v100 = vminq_s32(*(a3 + v98 + 16), *(result + v98 + 16));
        v101 = vminq_s32(*(a3 + v98), *(result + v98));
        v102 = vminq_s32(*(a3 + v98 + 48), *(result + v98 + 48));
        v103 = (a5 + v98);
        v103[2] = vminq_s32(*(a3 + v98 + 32), *(result + v98 + 32));
        v103[3] = v102;
        *v103 = v101;
        v103[1] = v100;
        v98 += 64;
        v99 -= 4;
      }

      while (v99);
      v97 = (16 * (((v87 & 0x3FFFFFFC) >> 2) & 0xFFFFFFF)) | 4;
      v96 = 4 * (v87 & 0x3FFFFFFC);
      v104 = v96;
      if (v87 != (v87 & 0x3FFFFFFC))
      {
        goto LABEL_85;
      }

LABEL_87:
      if (v96 < a7)
      {
        if (v82 <= 7 || v79 + (a6 - v8) * v78 < 0x20 || v80 + (a6 - a4) * v78 < 0x20)
        {
          v107 = v104;
          do
          {
LABEL_90:
            v108 = *(result + 4 * v107);
            if (*(a3 + 4 * v107) < v108)
            {
              v108 = *(a3 + 4 * v107);
            }

            *(a5 + 4 * v107++) = v108;
          }

          while (v107 < a7);
          goto LABEL_79;
        }

        v107 = v104 + v94;
        v109 = 4 * v104;
        v110 = v82 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v111 = vminq_s32(*(a3 + v109 + 16), *(result + v109 + 16));
          v112 = (a5 + v109);
          *v112 = vminq_s32(*(a3 + v109), *(result + v109));
          v112[1] = v111;
          v109 += 32;
          v110 -= 8;
        }

        while (v110);
        if (v82 != v94)
        {
          goto LABEL_90;
        }
      }

LABEL_79:
      result += v8;
      a3 += a4;
      a5 += a6;
      LODWORD(v9) = v9 - 1;
      ++v78;
      if (!v95)
      {
        return result;
      }
    }

    v96 = 0;
    v97 = 4;
LABEL_85:
    v104 = v97 - 4;
    v105 = 4 * v96;
    do
    {
      v106 = (a5 + v105);
      *v106 = vmin_s32(*(a3 + v105), *(result + v105));
      v106[1] = vmin_s32(*(a3 + v105 + 8), *(result + v105 + 8));
      v96 += 4;
      v104 += 4;
      v105 += 16;
    }

    while (v96 <= v10);
    goto LABEL_87;
  }

  if (a7 >= 1)
  {
    v12 = (a5 + 8);
    v13 = (a3 + 8);
    v14 = (result + 8);
    do
    {
      v15 = *(v14 - 2);
      if (*(v13 - 2) < v15)
      {
        v15 = *(v13 - 2);
      }

      *(v12 - 2) = v15;
      if (a7 != 1)
      {
        v16 = *(v14 - 1);
        if (*(v13 - 1) < v16)
        {
          v16 = *(v13 - 1);
        }

        *(v12 - 1) = v16;
        if (a7 != 2)
        {
          v17 = *v14;
          if (*v13 < *v14)
          {
            v17 = *v13;
          }

          *v12 = v17;
        }
      }

      v12 = (v12 + a6);
      v13 = (v13 + a4);
      v14 = (v14 + a2);
      --a8;
    }

    while (a8);
  }

  return result;
}

unint64_t sub_1001E645C(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  if (!a8)
  {
    return result;
  }

  v8 = a2;
  v9 = (a8 - 1);
  v10 = (a7 - 4);
  v11 = (a7 - 8);
  if (a7 >= 8)
  {
    v18 = 0;
    v19 = a7;
    v112 = a6 - a2;
    v111 = a6 - a4;
    v20 = (v11 & 0x7FFFFFF8) + 12;
    if (v20 <= v10 + 1)
    {
      v20 = v10 + 1;
    }

    v21 = v20 - (v11 & 0x7FFFFFF8);
    v109 = ((4 * v21 - 36) & 0xFFFFFFFFFFFFFFF0) + 48;
    v110 = v21 - 9;
    v108 = ((v21 - 9) >> 2) + 1;
    v22 = a5 + 32;
    v23 = (result + 32);
    v24 = (a3 + 32);
    v25 = result;
    v26 = a3;
    v27 = a5;
    v113 = a4;
    v114 = a6;
    while (1)
    {
      v28 = 0;
      v29 = 0;
      v116 = v9;
      v30 = v18 * v8;
      v31 = v18 * a4;
      v32 = v24;
      v33 = v23;
      v34 = v22;
      v35 = 8;
      do
      {
        v36 = (v25 + 4 * v29);
        v37 = *v36;
        v38 = v36[1];
        v39 = (v26 + 4 * v29);
        v40 = v39[1];
        v41 = vminq_f32(v37, *v39);
        v42 = v35;
        v43 = v28;
        v44 = v34;
        v45 = v33;
        v46 = v32;
        v47 = (v27 + 4 * v29);
        v29 += 8;
        v35 += 8;
        ++v28;
        *v47 = v41;
        v47[1] = vminq_f32(v38, v40);
        v34 += 2;
        v33 += 2;
        v32 = v46 + 2;
      }

      while (v29 <= v11);
      if (v10 >= v29)
      {
        if (v110 <= 0xB)
        {
          goto LABEL_26;
        }

        v54 = 32 * v43;
        v55 = a5 + v18 * a6 + 32 * v43;
        v56 = v55 + 32;
        v57 = v55 + v109;
        v58 = result + v30 + v54;
        v59 = v58 + 32;
        v60 = v58 + v109;
        v61 = a3 + v31 + v54;
        v62 = v56 >= v61 + v109 || v61 + 32 >= v57;
        v63 = !v62;
        if (v59 < v57 && v56 < v60)
        {
          goto LABEL_26;
        }

        if (v63)
        {
          goto LABEL_26;
        }

        v42 += 4 * (v108 & 0x7FFFFFFFFFFFFFFCLL);
        v65 = v108 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v66 = vbslq_s8(vcgtq_f32(v45[1], v46[1]), v46[1], v45[1]);
          v67 = vbslq_s8(vcgtq_f32(*v45, *v46), *v46, *v45);
          v68 = vbslq_s8(vcgtq_f32(v45[3], v46[3]), v46[3], v45[3]);
          v44[2] = vbslq_s8(vcgtq_f32(v45[2], v46[2]), v46[2], v45[2]);
          v44[3] = v68;
          *v44 = v67;
          v44[1] = v66;
          v44 += 4;
          v45 += 4;
          v46 += 4;
          v65 -= 4;
        }

        while (v65);
        if (v108 != (v108 & 0x7FFFFFFFFFFFFFFCLL))
        {
LABEL_26:
          v49 = 4 * v42;
          do
          {
            v50 = (v27 + v49);
            *v50 = vbsl_s8(vcgt_f32(*(v25 + v49), *(v26 + v49)), *(v26 + v49), *(v25 + v49));
            v50[1] = vbsl_s8(vcgt_f32(*(v25 + v49 + 8), *(v26 + v49 + 8)), *(v26 + v49 + 8), *(v25 + v49 + 8));
            v42 += 4;
            v49 += 16;
          }

          while (v42 <= v10);
        }

        v48 = v42;
        a4 = v113;
        a6 = v114;
        v83 = v42 < a7;
        v8 = a2;
        if (!v83)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v48 = v29;
        a4 = v113;
        a6 = v114;
        v8 = a2;
        if (v29 >= a7)
        {
          goto LABEL_19;
        }
      }

      v51 = v19 - v48;
      if ((v19 - v48) <= 7 || a5 - result + v112 * v18 < 0x20 || a5 - a3 + v111 * v18 < 0x20)
      {
        v52 = v48;
        do
        {
LABEL_32:
          v53 = *(v25 + 4 * v52);
          if (*(v26 + 4 * v52) < v53)
          {
            v53 = *(v26 + 4 * v52);
          }

          *(v27 + 4 * v52++) = v53;
        }

        while (v19 != v52);
        goto LABEL_19;
      }

      v52 = (v51 & 0xFFFFFFFFFFFFFFF8) + v48;
      v69 = 4 * v48;
      v70 = v51 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v71 = vbslq_s8(vcgtq_f32(*(v25 + v69 + 16), *(v26 + v69 + 16)), *(v26 + v69 + 16), *(v25 + v69 + 16));
        v72 = (v27 + v69);
        *v72 = vbslq_s8(vcgtq_f32(*(v25 + v69), *(v26 + v69)), *(v26 + v69), *(v25 + v69));
        v72[1] = v71;
        v69 += 32;
        v70 -= 8;
      }

      while (v70);
      if (v51 != (v51 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_32;
      }

LABEL_19:
      v25 += a2;
      v26 += a4;
      v27 += a6;
      LODWORD(v9) = v116 - 1;
      ++v18;
      v22 += a6;
      v23 = (v23 + a2);
      v24 = (v24 + a4);
      if (!v116)
      {
        return result;
      }
    }
  }

  if (a7 >= 4)
  {
    v73 = 0;
    v74 = a5 - result;
    v75 = a5 - a3;
    v76 = (v10 & 0x7FFFFFFC) + 5;
    if (v76 <= a7)
    {
      v76 = a7;
    }

    v77 = v76 - (v10 & 0x7FFFFFFC) - 4;
    v78 = (4 * (a7 - 4)) & 0x1FFFFFFF0;
    v79 = a5 + v9 * a6 + v78 + 16;
    v80 = result + v9 * a2 + v78 + 16;
    v81 = a3 + v9 * a4 + v78 + 16;
    v82 = (v10 >> 2) + 1;
    v83 = v80 > a5 && v79 > result;
    v85 = v83 || (a6 | v8) < 0;
    if (v81 > a5 && v79 > a3 || (a6 | a4) < 0)
    {
      v85 = 1;
    }

    v88 = (v10 < 0xC) | v85;
    v89 = v77 & 0xFFFFFFFFFFFFFFF8;
    while (1)
    {
      v90 = v9;
      if (v88)
      {
        break;
      }

      v93 = 0;
      v94 = v82 & 0x3FFFFFFC;
      do
      {
        v95 = (a5 + v93);
        v96 = vbslq_s8(vcgtq_f32(*(result + v93 + 16), *(a3 + v93 + 16)), *(a3 + v93 + 16), *(result + v93 + 16));
        v97 = vbslq_s8(vcgtq_f32(*(result + v93), *(a3 + v93)), *(a3 + v93), *(result + v93));
        v98 = vbslq_s8(vcgtq_f32(*(result + v93 + 48), *(a3 + v93 + 48)), *(a3 + v93 + 48), *(result + v93 + 48));
        v95[2] = vbslq_s8(vcgtq_f32(*(result + v93 + 32), *(a3 + v93 + 32)), *(a3 + v93 + 32), *(result + v93 + 32));
        v95[3] = v98;
        *v95 = v97;
        v95[1] = v96;
        v93 += 64;
        v94 -= 4;
      }

      while (v94);
      v92 = (16 * (((v82 & 0x3FFFFFFC) >> 2) & 0xFFFFFFF)) | 4;
      v91 = 4 * (v82 & 0x3FFFFFFC);
      v99 = v91;
      if (v82 != (v82 & 0x3FFFFFFC))
      {
        goto LABEL_85;
      }

LABEL_87:
      if (v91 < a7)
      {
        if (v77 <= 7 || v74 + (a6 - v8) * v73 < 0x20 || v75 + (a6 - a4) * v73 < 0x20)
        {
          v102 = v99;
          do
          {
LABEL_90:
            v103 = *(result + 4 * v102);
            if (*(a3 + 4 * v102) < v103)
            {
              v103 = *(a3 + 4 * v102);
            }

            *(a5 + 4 * v102++) = v103;
          }

          while (v102 < a7);
          goto LABEL_79;
        }

        v102 = v99 + v89;
        v104 = 4 * v99;
        v105 = v77 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v106 = vbslq_s8(vcgtq_f32(*(result + v104 + 16), *(a3 + v104 + 16)), *(a3 + v104 + 16), *(result + v104 + 16));
          v107 = (a5 + v104);
          *v107 = vbslq_s8(vcgtq_f32(*(result + v104), *(a3 + v104)), *(a3 + v104), *(result + v104));
          v107[1] = v106;
          v104 += 32;
          v105 -= 8;
        }

        while (v105);
        if (v77 != v89)
        {
          goto LABEL_90;
        }
      }

LABEL_79:
      result += v8;
      a3 += a4;
      a5 += a6;
      LODWORD(v9) = v9 - 1;
      ++v73;
      if (!v90)
      {
        return result;
      }
    }

    v91 = 0;
    v92 = 4;
LABEL_85:
    v99 = v92 - 4;
    v100 = 4 * v91;
    do
    {
      v101 = (a5 + v100);
      *v101 = vbsl_s8(vcgt_f32(*(result + v100), *(a3 + v100)), *(a3 + v100), *(result + v100));
      v101[1] = vbsl_s8(vcgt_f32(*(result + v100 + 8), *(a3 + v100 + 8)), *(a3 + v100 + 8), *(result + v100 + 8));
      v91 += 4;
      v99 += 4;
      v100 += 16;
    }

    while (v91 <= v10);
    goto LABEL_87;
  }

  if (a7 >= 1)
  {
    v12 = (a5 + 8);
    v13 = (a3 + 8);
    v14 = (result + 8);
    do
    {
      v15 = *(v14 - 2);
      if (*(v13 - 2) < v15)
      {
        v15 = *(v13 - 2);
      }

      *(v12 - 2) = v15;
      if (a7 != 1)
      {
        v16 = *(v14 - 1);
        if (*(v13 - 1) < v16)
        {
          v16 = *(v13 - 1);
        }

        *(v12 - 1) = v16;
        if (a7 != 2)
        {
          v17 = *v14;
          if (*v13 < *v14)
          {
            v17 = *v13;
          }

          *v12 = v17;
        }
      }

      v12 = (v12 + a6);
      v13 = (v13 + a4);
      v14 = (v14 + a2);
      --a8;
    }

    while (a8);
  }

  return result;
}

unint64_t sub_1001E6AB4(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  if (a8)
  {
    v8 = (a7 - 4);
    if (a7 >= 4)
    {
      v15 = (a8 - 1);
      v16 = v8 & 0x7FFFFFFC;
      v17 = ((8 * (a7 - 4)) & 0x3FFFFFFE0) + 32;
      v18 = a5 + v17;
      if (v16 + 5 <= a7)
      {
        v19 = a7;
      }

      else
      {
        v19 = (v8 & 0x7FFFFFFC) + 5;
      }

      v20 = a5 + v15 * a6;
      v21 = v20 + 8 * v19;
      v22 = result + v17;
      v23 = result + v15 * a2;
      v24 = v23 + 8 * v19;
      v60 = a3 + v17;
      v25 = a3 + v15 * a4;
      v26 = v19 - 4;
      v27 = v17 + v20;
      v28 = v17 + v23;
      v29 = v17 + v25;
      v30 = (v8 >> 2) + 1;
      v32 = v29 > a5 && v27 > a3;
      v33 = v28 > a5 && v27 > result;
      v34 = a6 | a4;
      if (v33)
      {
        v32 = 1;
      }

      v35 = v19 - 4 - v16 < 8;
      v38 = v18 < v24 && v22 < v21 || (a6 | a2) < 0;
      if (v18 < v25 + 8 * v19 && v60 < v21 || v34 < 0)
      {
        v38 = 1;
      }

      v41 = v19 & 3;
      v42 = (v8 & 0x7FFFFFFC) + v19 - v16 - v41;
      v43 = v35 || v38;
      v44 = v26 - v41 - v16;
      do
      {
        v45 = v15;
        v46 = 0;
        if (v8 < 4 || (v34 | a2) < 0 || v32)
        {
          goto LABEL_54;
        }

        v47 = v30 & 0x3FFFFFFE;
        do
        {
          v48 = (a5 + v46);
          v49 = vbslq_s8(vcgtq_f64(*(result + v46 + 16), *(a3 + v46 + 16)), *(a3 + v46 + 16), *(result + v46 + 16));
          v50 = vbslq_s8(vcgtq_f64(*(result + v46), *(a3 + v46)), *(a3 + v46), *(result + v46));
          v51 = vbslq_s8(vcgtq_f64(*(result + v46 + 48), *(a3 + v46 + 48)), *(a3 + v46 + 48), *(result + v46 + 48));
          v48[2] = vbslq_s8(vcgtq_f64(*(result + v46 + 32), *(a3 + v46 + 32)), *(a3 + v46 + 32), *(result + v46 + 32));
          v48[3] = v51;
          *v48 = v50;
          v48[1] = v49;
          v46 += 64;
          v47 -= 2;
        }

        while (v47);
        v46 = 4 * (v30 & 0x3FFFFFFE);
        if (v30 != (v30 & 0x3FFFFFFE))
        {
LABEL_54:
          v52 = 8 * v46;
          do
          {
            v53 = (a5 + v52);
            *v53 = vbslq_s8(vcgtq_f64(*(result + v52), *(a3 + v52)), *(a3 + v52), *(result + v52));
            v53[1] = vbslq_s8(vcgtq_f64(*(result + v52 + 16), *(a3 + v52 + 16)), *(a3 + v52 + 16), *(result + v52 + 16));
            v46 += 4;
            v52 += 32;
          }

          while (v46 <= v8);
        }

        if (v46 < a7)
        {
          v54 = (v8 & 0x7FFFFFFC) + 4;
          if (v43)
          {
            goto LABEL_67;
          }

          v55 = 32 * ((v8 >> 2) & 0x1FFFFFFF);
          v56 = v44;
          do
          {
            v57 = vbslq_s8(vcgtq_f64(*(result + v55 + 48), *(a3 + v55 + 48)), *(a3 + v55 + 48), *(result + v55 + 48));
            v58 = (a5 + v55);
            v58[2] = vbslq_s8(vcgtq_f64(*(result + v55 + 32), *(a3 + v55 + 32)), *(a3 + v55 + 32), *(result + v55 + 32));
            v58[3] = v57;
            v55 += 32;
            v56 -= 4;
          }

          while (v56);
          v54 = v42;
          if (v41)
          {
LABEL_67:
            do
            {
              v59 = *(result + 8 * v54);
              if (*(a3 + 8 * v54) < v59)
              {
                v59 = *(a3 + 8 * v54);
              }

              *(a5 + 8 * v54++) = v59;
            }

            while (v54 < a7);
          }
        }

        result += a2;
        a3 += a4;
        a5 += a6;
        LODWORD(v15) = v45 - 1;
      }

      while (v45);
    }

    else if (a7 >= 1)
    {
      v9 = (a5 + 16);
      v10 = (a3 + 16);
      v11 = (result + 16);
      do
      {
        v12 = *(v11 - 2);
        if (*(v10 - 2) < v12)
        {
          v12 = *(v10 - 2);
        }

        *(v9 - 2) = v12;
        if (a7 != 1)
        {
          v13 = *(v11 - 1);
          if (*(v10 - 1) < v13)
          {
            v13 = *(v10 - 1);
          }

          *(v9 - 1) = v13;
          if (a7 != 2)
          {
            v14 = *v11;
            if (*v10 < *v11)
            {
              v14 = *v10;
            }

            *v9 = v14;
          }
        }

        v9 = (v9 + a6);
        v10 = (v10 + a4);
        v11 = (v11 + a2);
        --a8;
      }

      while (a8);
    }
  }

  return result;
}

uint64_t sub_1001E6DC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  if (a8)
  {
    v8 = 0;
    v9 = a7 - 4;
    v10 = a5 - result;
    v11 = a5 - a3;
    v12 = a5 + 4;
    v13 = result + 4;
    v14 = a3 + 4;
    do
    {
      if (a7 >= 32)
      {
        v16 = 16;
        do
        {
          v17 = vabdq_u8(*(result + v16), *(a3 + v16));
          v18 = (a5 + v16);
          v18[-1] = vabdq_u8(*(result + v16 - 16), *(a3 + v16 - 16));
          *v18 = v17;
          v19 = v16 + 16;
          v16 += 32;
        }

        while (v19 <= a7 - 32);
        v15 = (v16 - 16);
        if (v15 <= v9)
        {
LABEL_10:
          v20 = v15 + 4;
          if (v15 + 4 <= v9 + 1)
          {
            v20 = v9 + 1;
          }

          v21 = v20 + ~v15;
          if (v21 <= 0x3B || ((v48 = (v21 & 0xFFFFFFFFFFFFFFFCLL) + v15, v49 = v12 + v8 * a6 + v48, a5 + v15 < (v14 + v8 * a4 + v48)) ? (v50 = a3 + v15 >= v49) : (v50 = 1), v50 ? (v51 = 0) : (v51 = 1), result + v15 < v49 ? (v52 = a5 + v15 >= (v13 + v8 * a2 + v48)) : (v52 = 1), !v52 || (v51 & 1) != 0))
          {
            v22 = v15;
          }

          else
          {
            v53 = (v21 >> 2) + 1;
            v22 = v15 + 4 * (v53 & 0x7FFFFFFFFFFFFFF0);
            v54 = v53 & 0x7FFFFFFFFFFFFFF0;
            do
            {
              v55 = (a5 + v15);
              v56 = vabdq_u8(*(result + v15 + 16), *(a3 + v15 + 16));
              v57 = vabdq_u8(*(result + v15), *(a3 + v15));
              v58 = vabdq_u8(*(result + v15 + 48), *(a3 + v15 + 48));
              v55[2] = vabdq_u8(*(result + v15 + 32), *(a3 + v15 + 32));
              v55[3] = v58;
              *v55 = v57;
              v55[1] = v56;
              v15 += 64;
              v54 -= 16;
            }

            while (v54);
            if (v53 == (v53 & 0x7FFFFFFFFFFFFFF0))
            {
LABEL_23:
              v15 = v22;
              goto LABEL_24;
            }
          }

          do
          {
            v23 = (result + v22);
            v24 = *(result + v22);
            v25 = (a3 + v22);
            v26 = *(a3 + v22);
            v27 = v26 - v24;
            v50 = v24 >= v26;
            v28 = v24 - v26;
            if (v28 == 0 || !v50)
            {
              LOBYTE(v28) = v27;
            }

            v29 = v23[1];
            v30 = v25[1];
            v31 = v30 - v29;
            v50 = v29 >= v30;
            v32 = v29 - v30;
            if (v32 == 0 || !v50)
            {
              LOBYTE(v32) = v31;
            }

            v33 = (a5 + v22);
            *v33 = v28;
            v33[1] = v32;
            v34 = v23[2];
            v35 = v25[2];
            v36 = v35 - v34;
            v50 = v34 >= v35;
            v37 = v34 - v35;
            if (v37 == 0 || !v50)
            {
              LOBYTE(v37) = v36;
            }

            v38 = v23[3];
            v39 = v25[3];
            v40 = v39 - v38;
            v50 = v38 >= v39;
            v41 = v38 - v39;
            if (v41 == 0 || !v50)
            {
              LOBYTE(v41) = v40;
            }

            v33[2] = v37;
            v33[3] = v41;
            v22 += 4;
          }

          while (v22 <= v9);
          goto LABEL_23;
        }
      }

      else
      {
        v15 = 0;
        if (v9 >= 0)
        {
          goto LABEL_10;
        }
      }

LABEL_24:
      if (v15 < a7)
      {
        v42 = a7 - v15;
        if (v42 < 8)
        {
          v43 = v15;
          goto LABEL_27;
        }

        if ((v10 + (a6 - a2) * v8) < 0x20)
        {
          v43 = v15;
          goto LABEL_27;
        }

        if ((v11 + (a6 - a4) * v8) < 0x20)
        {
          v43 = v15;
          goto LABEL_27;
        }

        if (v42 >= 0x20)
        {
          v59 = v42 & 0xFFFFFFFFFFFFFFE0;
          v60 = v15;
          v61 = v42 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v62 = vabdq_u8(*(result + v60 + 16), *(a3 + v60 + 16));
            v63 = (a5 + v60);
            *v63 = vabdq_u8(*(result + v60), *(a3 + v60));
            v63[1] = v62;
            v60 += 32;
            v61 -= 32;
          }

          while (v61);
          if (v42 == v59)
          {
            goto LABEL_3;
          }

          if ((v42 & 0x18) == 0)
          {
            v43 = v59 + v15;
            do
            {
LABEL_27:
              v44 = *(result + v43);
              v45 = *(a3 + v43);
              v46 = v45 - v44;
              v50 = v44 >= v45;
              v47 = v44 - v45;
              if (v47 == 0 || !v50)
              {
                LOBYTE(v47) = v46;
              }

              *(a5 + v43++) = v47;
            }

            while (a7 != v43);
            goto LABEL_3;
          }
        }

        else
        {
          v59 = 0;
        }

        v43 = (v42 & 0xFFFFFFFFFFFFFFF8) + v15;
        v64 = v59 - (v42 & 0xFFFFFFFFFFFFFFF8);
        v65 = v59 + v15;
        do
        {
          *(a5 + v65) = vabd_u8(*(result + v65), *(a3 + v65));
          v65 += 8;
          v64 += 8;
        }

        while (v64);
        if (v42 != (v42 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_27;
        }
      }

LABEL_3:
      result += a2;
      a3 += a4;
      a5 += a6;
      ++v8;
      --a8;
    }

    while (a8);
  }

  return result;
}

uint64_t sub_1001E70F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, double a9, double a10, __n128 a11, __n128 a12)
{
  if (a8)
  {
    v12 = 0;
    v13 = a7 - 4;
    v14 = a5 - result;
    v69 = a5 - a3;
    v15 = a5 + 4;
    v16.i64[0] = 0x7F0000007FLL;
    v16.i64[1] = 0x7F0000007FLL;
    v17 = result + 4;
    v18 = a3 + 4;
    do
    {
      if (a7 >= 32)
      {
        v20 = 16;
        do
        {
          a11 = vqabsq_s8(vqsubq_s8(*(result + v20 - 16), *(a3 + v20 - 16)));
          a12 = vqabsq_s8(vqsubq_s8(*(result + v20), *(a3 + v20)));
          v21 = (a5 + v20);
          v21[-1] = a11;
          *v21 = a12;
          v22 = v20 + 16;
          v20 += 32;
        }

        while (v22 <= a7 - 32);
        v19 = (v20 - 16);
        if (v19 <= v13)
        {
LABEL_10:
          v23 = v19 + 4;
          if (v19 + 4 <= v13 + 1)
          {
            v23 = v13 + 1;
          }

          v24 = v23 + ~v19;
          if (v24 <= 0x3B || ((v36 = (v24 & 0xFFFFFFFFFFFFFFFCLL) + v19, v37 = v15 + v12 * a6 + v36, a5 + v19 < (v18 + v12 * a4 + v36)) ? (v38 = a3 + v19 >= v37) : (v38 = 1), v38 ? (v39 = 0) : (v39 = 1), result + v19 < v37 ? (v40 = a5 + v19 >= (v17 + v12 * a2 + v36)) : (v40 = 1), !v40 || (v39 & 1) != 0))
          {
            v25 = v19;
          }

          else
          {
            v41 = (v24 >> 2) + 1;
            v25 = v19 + 4 * (v41 & 0x7FFFFFFFFFFFFFF0);
            v42 = v41 & 0x7FFFFFFFFFFFFFF0;
            do
            {
              v44 = *(result + v19);
              v43 = *(result + v19 + 16);
              v46 = *(result + v19 + 32);
              v45 = *(result + v19 + 48);
              v48 = *(a3 + v19 + 32);
              v47 = *(a3 + v19 + 48);
              v49 = vsubl_s8(*v46.i8, *v48.i8);
              v50 = vsubl_high_s8(v46, v48);
              v51 = vsubl_s8(*v45.i8, *v47.i8);
              v52 = vsubl_high_s8(v45, v47);
              v54 = *(a3 + v19);
              v53 = *(a3 + v19 + 16);
              v55 = a5 + v19;
              v56 = vsubl_s8(*v44.i8, *v54.i8);
              v57 = vsubl_high_s8(v44, v54);
              v58 = vsubl_s8(*v43.i8, *v53.i8);
              v59 = vsubl_high_s8(v43, v53);
              *(v55 + 32) = vuzp1q_s8(vuzp1q_s16(vminq_u32(vabsq_s32(vmovl_s16(*v49.i8)), v16), vminq_u32(vabsq_s32(vmovl_high_s16(v49)), v16)), vuzp1q_s16(vminq_u32(vabsq_s32(vmovl_s16(*v50.i8)), v16), vminq_u32(vabsq_s32(vmovl_high_s16(v50)), v16)));
              *(v55 + 48) = vuzp1q_s8(vuzp1q_s16(vminq_u32(vabsq_s32(vmovl_s16(*v51.i8)), v16), vminq_u32(vabsq_s32(vmovl_high_s16(v51)), v16)), vuzp1q_s16(vminq_u32(vabsq_s32(vmovl_s16(*v52.i8)), v16), vminq_u32(vabsq_s32(vmovl_high_s16(v52)), v16)));
              a11 = vuzp1q_s8(vuzp1q_s16(vminq_u32(vabsq_s32(vmovl_s16(*v58.i8)), v16), vminq_u32(vabsq_s32(vmovl_high_s16(v58)), v16)), vuzp1q_s16(vminq_u32(vabsq_s32(vmovl_s16(*v59.i8)), v16), vminq_u32(vabsq_s32(vmovl_high_s16(v59)), v16)));
              a12 = vuzp1q_s8(vuzp1q_s16(vminq_u32(vabsq_s32(vmovl_s16(*v56.i8)), v16), vminq_u32(vabsq_s32(vmovl_high_s16(v56)), v16)), vuzp1q_s16(vminq_u32(vabsq_s32(vmovl_s16(*v57.i8)), v16), vminq_u32(vabsq_s32(vmovl_high_s16(v57)), v16)));
              *v55 = a12;
              *(v55 + 16) = a11;
              v19 += 64;
              v42 -= 16;
            }

            while (v42);
            if (v41 == (v41 & 0x7FFFFFFFFFFFFFF0))
            {
LABEL_31:
              v19 = v25;
              goto LABEL_32;
            }
          }

          do
          {
            v26 = (result + v25);
            v27 = (a3 + v25);
            v28 = *(result + v25) - *(a3 + v25);
            if (v28 < 0)
            {
              v28 = *(a3 + v25) - *(result + v25);
            }

            if (v28 >= 0x7F)
            {
              LOBYTE(v28) = 127;
            }

            v29 = v26[1] - v27[1];
            if (v29 < 0)
            {
              v29 = v27[1] - v26[1];
            }

            if (v29 >= 0x7F)
            {
              LOBYTE(v29) = 127;
            }

            v30 = (a5 + v25);
            *v30 = v28;
            v30[1] = v29;
            v31 = v26[2] - v27[2];
            if (v31 < 0)
            {
              v31 = v27[2] - v26[2];
            }

            if (v31 >= 0x7F)
            {
              LOBYTE(v31) = 127;
            }

            v32 = v26[3] - v27[3];
            if (v32 < 0)
            {
              v32 = -v32;
            }

            if (v32 >= 0x7F)
            {
              LOBYTE(v32) = 127;
            }

            v30[2] = v31;
            v30[3] = v32;
            v25 += 4;
          }

          while (v25 <= v13);
          goto LABEL_31;
        }
      }

      else
      {
        v19 = 0;
        if (v13 >= 0)
        {
          goto LABEL_10;
        }
      }

LABEL_32:
      if (v19 < a7)
      {
        v33 = a7 - v19;
        if (v33 < 4)
        {
          v34 = v19;
          goto LABEL_35;
        }

        if ((v14 + (a6 - a2) * v12) < 0x10)
        {
          v34 = v19;
          goto LABEL_35;
        }

        if ((v69 + (a6 - a4) * v12) < 0x10)
        {
          v34 = v19;
          goto LABEL_35;
        }

        if (v33 >= 0x10)
        {
          v60 = v33 & 0xFFFFFFFFFFFFFFF0;
          v61 = v19;
          v62 = v33 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v63 = vabdq_s8(*(result + v61), *(a3 + v61));
            v64 = vmovl_u8(*v63.i8);
            v65 = vmovl_u16(*v64.i8);
            a12 = vmovl_high_u16(v64);
            v66 = vmovl_high_u8(v63);
            v70.val[3] = vminq_u32(vmovl_high_u16(v66), v16);
            v70.val[2] = vminq_u32(vmovl_u16(*v66.i8), v16);
            v70.val[1] = vminq_u32(a12, v16);
            v70.val[0] = vminq_u32(v65, v16);
            a11 = vqtbl4q_s8(v70, xmmword_1003E36F0);
            *(a5 + v61) = a11;
            v61 += 16;
            v62 -= 16;
          }

          while (v62);
          if (v33 == v60)
          {
            goto LABEL_3;
          }

          if ((v33 & 0xC) == 0)
          {
            v34 = v60 + v19;
            do
            {
LABEL_35:
              v35 = *(result + v34) - *(a3 + v34);
              if (v35 < 0)
              {
                v35 = *(a3 + v34) - *(result + v34);
              }

              if (v35 >= 0x7F)
              {
                LOBYTE(v35) = 127;
              }

              *(a5 + v34++) = v35;
            }

            while (a7 != v34);
            goto LABEL_3;
          }
        }

        else
        {
          v60 = 0;
        }

        v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL) + v19;
        v67 = v60 - (v33 & 0xFFFFFFFFFFFFFFFCLL);
        v68 = v60 + v19;
        do
        {
          a11.n128_u32[0] = *(result + v68);
          a12.n128_u32[0] = *(a3 + v68);
          a12 = vmovl_s16(*&vmovl_s8(a12.n128_u64[0]));
          a11.n128_u64[0] = vuzp1_s8(vmovn_s32(vminq_u32(vabdq_s32(vmovl_s16(*&vmovl_s8(a11.n128_u64[0])), a12), v16)), *v16.i8);
          *(a5 + v68) = a11.n128_u32[0];
          v68 += 4;
          v67 += 4;
        }

        while (v67);
        if (v33 != (v33 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_35;
        }
      }

LABEL_3:
      result += a2;
      a3 += a4;
      a5 += a6;
      ++v12;
      --a8;
    }

    while (a8);
  }

  return result;
}

uint64_t sub_1001E75A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  if (a8)
  {
    v8 = 0;
    v9 = a7 - 4;
    v71 = a5 - result;
    v70 = a5 - a3;
    v10 = a5 + 8;
    v11 = result + 8;
    v12 = a3 + 8;
    do
    {
      if (a7 >= 16)
      {
        v13 = 0;
        v14 = 16;
        do
        {
          v15 = vabdq_u16(*(result + v14), *(a3 + v14));
          v16 = (a5 + v14);
          v16[-1] = vabdq_u16(*(result + v14 - 16), *(a3 + v14 - 16));
          *v16 = v15;
          v13 += 16;
          v14 += 32;
        }

        while (v13 <= a7 - 16);
        v13 = v13;
        if (v13 > v9)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v13 = 0;
        if (v9 < 0)
        {
          goto LABEL_24;
        }
      }

      v17 = v13 + 4;
      if (v13 + 4 <= v9 + 1)
      {
        v17 = v9 + 1;
      }

      v18 = v17 + ~v13;
      if (v18 <= 0x1B)
      {
        goto LABEL_13;
      }

      v49 = v18 >> 2;
      v50 = 2 * v13;
      v51 = a5 + 2 * v13;
      v52 = 2 * v13 + 8 * v49;
      v53 = v10 + v8 * a6 + v52;
      v54 = v51 >= v12 + v8 * a4 + v52 || a3 + 2 * v13 >= v53;
      v55 = !v54;
      if (result + 2 * v13 < v53 && v51 < v11 + v8 * a2 + v52)
      {
        goto LABEL_13;
      }

      if (v55)
      {
        goto LABEL_13;
      }

      v57 = v49 + 1;
      v13 += 4 * (v57 & 0x7FFFFFFFFFFFFFF8);
      v58 = v57 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v59 = (a5 + v50);
        v60 = vabdq_u16(*(result + v50 + 16), *(a3 + v50 + 16));
        v61 = vabdq_u16(*(result + v50), *(a3 + v50));
        v62 = vabdq_u16(*(result + v50 + 48), *(a3 + v50 + 48));
        v59[2] = vabdq_u16(*(result + v50 + 32), *(a3 + v50 + 32));
        v59[3] = v62;
        *v59 = v61;
        v59[1] = v60;
        v50 += 64;
        v58 -= 8;
      }

      while (v58);
      LODWORD(v23) = v13;
      if (v57 != (v57 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_13:
        v19 = 2 * v13;
        v20 = result;
        v21 = a5;
        v22 = a3;
        v23 = v13;
        do
        {
          v24 = *(v20 + 2 * v13);
          v25 = *(v22 + 2 * v13);
          v26 = v25 - v24;
          v54 = v24 >= v25;
          v27 = v24 - v25;
          if (v27 == 0 || !v54)
          {
            LOWORD(v27) = v26;
          }

          v28 = v20 + v19;
          v29 = *(v20 + v19 + 2);
          v30 = v22 + v19;
          v31 = *(v22 + v19 + 2);
          v32 = v31 - v29;
          v54 = v29 >= v31;
          v33 = v29 - v31;
          if (v33 != 0 && v54)
          {
            v32 = v33;
          }

          v34 = v21 + v19;
          *(v21 + 2 * v13) = v27;
          *(v21 + v19 + 2) = v32;
          v35 = *(v28 + 4);
          v36 = *(v30 + 4);
          v37 = v36 - v35;
          v54 = v35 >= v36;
          v38 = v35 - v36;
          if (v38 == 0 || !v54)
          {
            LOWORD(v38) = v37;
          }

          v39 = *(v28 + 6);
          v40 = *(v30 + 6);
          v41 = v40 - v39;
          v54 = v39 >= v40;
          v42 = v39 - v40;
          if (v42 == 0 || !v54)
          {
            LOWORD(v42) = v41;
          }

          v23 += 4;
          *(v34 + 4) = v38;
          *(v34 + 6) = v42;
          v22 += 8;
          v21 += 8;
          v20 += 8;
        }

        while (v23 <= v9);
      }

      v13 = v23;
LABEL_24:
      if (v13 < a7)
      {
        v43 = a7 - v13;
        if (v43 < 4)
        {
          v44 = v13;
          goto LABEL_27;
        }

        if ((v71 + (a6 - a2) * v8) < 0x20)
        {
          v44 = v13;
          goto LABEL_27;
        }

        if ((v70 + (a6 - a4) * v8) < 0x20)
        {
          v44 = v13;
          goto LABEL_27;
        }

        if (v43 >= 0x10)
        {
          v63 = v43 & 0xFFFFFFFFFFFFFFF0;
          v64 = 2 * v13;
          v65 = v43 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v66 = vabdq_u16(*(result + v64 + 16), *(a3 + v64 + 16));
            v67 = (a5 + v64);
            *v67 = vabdq_u16(*(result + v64), *(a3 + v64));
            v67[1] = v66;
            v64 += 32;
            v65 -= 16;
          }

          while (v65);
          if (v43 == v63)
          {
            goto LABEL_3;
          }

          if ((v43 & 0xC) == 0)
          {
            v44 = v63 + v13;
            do
            {
LABEL_27:
              v45 = *(result + 2 * v44);
              v46 = *(a3 + 2 * v44);
              v47 = v46 - v45;
              v54 = v45 >= v46;
              v48 = v45 - v46;
              if (v48 == 0 || !v54)
              {
                LOWORD(v48) = v47;
              }

              *(a5 + 2 * v44++) = v48;
            }

            while (a7 != v44);
            goto LABEL_3;
          }
        }

        else
        {
          v63 = 0;
        }

        v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL) + v13;
        v68 = v63 - (v43 & 0xFFFFFFFFFFFFFFFCLL);
        v69 = 2 * (v63 + v13);
        do
        {
          *(a5 + v69) = vabd_u16(*(result + v69), *(a3 + v69));
          v69 += 8;
          v68 += 4;
        }

        while (v68);
        if (v43 != (v43 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_27;
        }
      }

LABEL_3:
      result += a2;
      a3 += a4;
      a5 += a6;
      ++v8;
      --a8;
    }

    while (a8);
  }

  return result;
}

uint64_t sub_1001E7918(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  if (a8)
  {
    v8 = 0;
    v9 = a7 - 4;
    v61 = a5 - result;
    v60 = a5 - a3;
    v10 = a5 + 8;
    v11 = result + 8;
    v12.i64[0] = 0x7F0000007FLL;
    v12.i64[1] = 0x7F0000007FLL;
    v13 = a3 + 8;
    do
    {
      if (a7 >= 16)
      {
        v14 = 0;
        v15 = 16;
        do
        {
          v16 = vqabsq_s16(vqsubq_s16(*(result + v15), *(a3 + v15)));
          v17 = (a5 + v15);
          v17[-1] = vqabsq_s16(vqsubq_s16(*(result + v15 - 16), *(a3 + v15 - 16)));
          *v17 = v16;
          v14 += 16;
          v15 += 32;
        }

        while (v14 <= a7 - 16);
        v14 = v14;
        if (v14 > v9)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v14 = 0;
        if (v9 < 0)
        {
          goto LABEL_32;
        }
      }

      v18 = v14 + 4;
      if (v14 + 4 <= v9 + 1)
      {
        v18 = v9 + 1;
      }

      v19 = v18 + ~v14;
      if (v19 <= 0x1B)
      {
        goto LABEL_13;
      }

      v35 = v19 >> 2;
      v36 = 2 * v14;
      v37 = a5 + 2 * v14;
      v38 = 2 * v14 + 8 * v35;
      v39 = v10 + v8 * a6 + v38;
      v40 = v37 >= v13 + v8 * a4 + v38 || a3 + 2 * v14 >= v39;
      v41 = !v40;
      if (result + 2 * v14 < v39 && v37 < v11 + v8 * a2 + v38)
      {
        goto LABEL_13;
      }

      if (v41)
      {
        goto LABEL_13;
      }

      v43 = v35 + 1;
      v14 += 4 * (v43 & 0x7FFFFFFFFFFFFFF8);
      v44 = v43 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v46 = *(result + v36);
        v45 = *(result + v36 + 16);
        v47 = *(result + v36 + 48);
        v49 = *(a3 + v36);
        v48 = *(a3 + v36 + 16);
        v50 = *(a3 + v36 + 48);
        v51 = (a5 + v36);
        v51[2] = vuzp1q_s16(vminq_u32(vabdl_s16(*(result + v36 + 32), *(a3 + v36 + 32)), v12), vminq_u32(vabdl_high_s16(*(result + v36 + 32), *(a3 + v36 + 32)), v12));
        v51[3] = vuzp1q_s16(vminq_u32(vabdl_s16(*v47.i8, *v50.i8), v12), vminq_u32(vabdl_high_s16(v47, v50), v12));
        *v51 = vuzp1q_s16(vminq_u32(vabdl_s16(*v46.i8, *v49.i8), v12), vminq_u32(vabdl_high_s16(v46, v49), v12));
        v51[1] = vuzp1q_s16(vminq_u32(vabdl_s16(*v45.i8, *v48.i8), v12), vminq_u32(vabdl_high_s16(v45, v48), v12));
        v36 += 64;
        v44 -= 8;
      }

      while (v44);
      LODWORD(v24) = v14;
      if (v43 != (v43 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_13:
        v20 = 2 * v14;
        v21 = result;
        v22 = a5;
        v23 = a3;
        v24 = v14;
        do
        {
          v25 = *(v21 + 2 * v14) - *(v23 + 2 * v14);
          if (v25 < 0)
          {
            v25 = *(v23 + 2 * v14) - *(v21 + 2 * v14);
          }

          if (v25 >= 0x7FFF)
          {
            LOWORD(v25) = 0x7FFF;
          }

          v26 = v21 + v20;
          v27 = v23 + v20;
          v28 = *(v21 + v20 + 2) - *(v23 + v20 + 2);
          if (v28 < 0)
          {
            v28 = *(v23 + v20 + 2) - *(v21 + v20 + 2);
          }

          if (v28 >= 0x7FFF)
          {
            LOWORD(v28) = 0x7FFF;
          }

          v29 = v22 + v20;
          *(v22 + 2 * v14) = v25;
          *(v22 + v20 + 2) = v28;
          v30 = *(v26 + 4) - *(v27 + 4);
          if (v30 < 0)
          {
            v30 = *(v27 + 4) - *(v26 + 4);
          }

          if (v30 >= 0x7FFF)
          {
            LOWORD(v30) = 0x7FFF;
          }

          v31 = *(v26 + 6) - *(v27 + 6);
          if (v31 < 0)
          {
            v31 = *(v27 + 6) - *(v26 + 6);
          }

          if (v31 >= 0x7FFF)
          {
            LOWORD(v31) = 0x7FFF;
          }

          *(v29 + 4) = v30;
          v24 += 4;
          *(v29 + 6) = v31;
          v23 += 8;
          v22 += 8;
          v21 += 8;
        }

        while (v24 <= v9);
      }

      v14 = v24;
LABEL_32:
      if (v14 < a7)
      {
        v32 = a7 - v14;
        if (v32 < 4)
        {
          v33 = v14;
          goto LABEL_35;
        }

        if ((v61 + (a6 - a2) * v8) < 0x20)
        {
          v33 = v14;
          goto LABEL_35;
        }

        if ((v60 + (a6 - a4) * v8) < 0x20)
        {
          v33 = v14;
          goto LABEL_35;
        }

        if (v32 >= 0x10)
        {
          v52 = v32 & 0xFFFFFFFFFFFFFFF0;
          v53 = 2 * v14;
          v54 = v32 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v55 = vabdq_s16(*(result + v53), *(a3 + v53));
            v56 = vabdq_s16(*(result + v53 + 16), *(a3 + v53 + 16));
            v57 = (a5 + v53);
            *v57 = vuzp1q_s16(vminq_u32(vmovl_u16(*v55.i8), v12), vminq_u32(vmovl_high_u16(v55), v12));
            v57[1] = vuzp1q_s16(vminq_u32(vmovl_u16(*v56.i8), v12), vminq_u32(vmovl_high_u16(v56), v12));
            v53 += 32;
            v54 -= 16;
          }

          while (v54);
          if (v32 == v52)
          {
            goto LABEL_3;
          }

          if ((v32 & 0xC) == 0)
          {
            v33 = v52 + v14;
            do
            {
LABEL_35:
              v34 = *(result + 2 * v33) - *(a3 + 2 * v33);
              if (v34 < 0)
              {
                v34 = *(a3 + 2 * v33) - *(result + 2 * v33);
              }

              if (v34 >= 0x7FFF)
              {
                LOWORD(v34) = 0x7FFF;
              }

              *(a5 + 2 * v33++) = v34;
            }

            while (a7 != v33);
            goto LABEL_3;
          }
        }

        else
        {
          v52 = 0;
        }

        v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL) + v14;
        v58 = v52 - (v32 & 0xFFFFFFFFFFFFFFFCLL);
        v59 = 2 * (v52 + v14);
        do
        {
          *(a5 + v59) = vmovn_s32(vminq_u32(vabdl_s16(*(result + v59), *(a3 + v59)), v12));
          v59 += 8;
          v58 += 4;
        }

        while (v58);
        if (v32 != (v32 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_35;
        }
      }

LABEL_3:
      result += a2;
      a3 += a4;
      a5 += a6;
      ++v8;
      --a8;
    }

    while (a8);
  }

  return result;
}

uint64_t sub_1001E7D20(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  if (a8)
  {
    v8 = 0;
    v9 = a7 - 4;
    v10 = a5 - result;
    v43 = a5 - a3;
    v11 = a5 + 16;
    v12 = result + 16;
    v13 = a3 + 16;
    do
    {
      if (a7 >= 8)
      {
        v15 = 0;
        v14 = 0;
        do
        {
          v16 = vabdq_s32(*(result + v15 + 16), *(a3 + v15 + 16));
          v17 = (a5 + v15);
          *v17 = vabdq_s32(*(result + v15), *(a3 + v15));
          v17[1] = v16;
          v14 += 8;
          v15 += 32;
        }

        while (v14 <= a7 - 8);
        v14 = v14;
        if (v14 > v9)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v14 = 0;
        if (v9 < 0)
        {
          goto LABEL_16;
        }
      }

      v18 = v14 + 4;
      if (v14 + 4 <= v9 + 1)
      {
        v18 = v9 + 1;
      }

      v19 = v18 + ~v14;
      if (v19 <= 0xB)
      {
        goto LABEL_13;
      }

      v25 = v19 >> 2;
      v26 = 4 * v14;
      v27 = a5 + 4 * v14;
      v28 = 4 * v14 + 16 * v25;
      v29 = v11 + v8 * a6 + v28;
      v30 = v27 >= v13 + v8 * a4 + v28 || a3 + 4 * v14 >= v29;
      v31 = !v30;
      if (result + 4 * v14 < v29 && v27 < v12 + v8 * a2 + v28)
      {
        goto LABEL_13;
      }

      if (v31)
      {
        goto LABEL_13;
      }

      v33 = v25 + 1;
      v14 += 4 * (v33 & 0x7FFFFFFFFFFFFFFCLL);
      v34 = v33 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v35 = (a5 + v26);
        v36 = vabdq_s32(*(result + v26 + 16), *(a3 + v26 + 16));
        v37 = vabdq_s32(*(result + v26), *(a3 + v26));
        v38 = vabdq_s32(*(result + v26 + 48), *(a3 + v26 + 48));
        v35[2] = vabdq_s32(*(result + v26 + 32), *(a3 + v26 + 32));
        v35[3] = v38;
        *v35 = v37;
        v35[1] = v36;
        v26 += 64;
        v34 -= 4;
      }

      while (v34);
      if (v33 != (v33 & 0x7FFFFFFFFFFFFFFCLL))
      {
LABEL_13:
        v20 = 4 * v14;
        do
        {
          v21 = (a5 + v20);
          *v21 = vabd_s32(*(result + v20), *(a3 + v20));
          v21[1] = vabd_s32(*(result + v20 + 8), *(a3 + v20 + 8));
          v14 += 4;
          v20 += 16;
        }

        while (v14 <= v9);
      }

      v14 = v14;
LABEL_16:
      if (v14 < a7)
      {
        v22 = a7 - v14;
        if (v22 <= 7 || (v10 + (a6 - a2) * v8) < 0x20 || (v43 + (a6 - a4) * v8) < 0x20)
        {
          v23 = v14;
          do
          {
LABEL_19:
            v24 = *(result + 4 * v23) - *(a3 + 4 * v23);
            if (v24 < 0)
            {
              v24 = *(a3 + 4 * v23) - *(result + 4 * v23);
            }

            *(a5 + 4 * v23++) = v24;
          }

          while (a7 != v23);
          goto LABEL_3;
        }

        v23 = (v22 & 0xFFFFFFFFFFFFFFF8) + v14;
        v39 = 4 * v14;
        v40 = v22 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v41 = vabdq_s32(*(result + v39 + 16), *(a3 + v39 + 16));
          v42 = (a5 + v39);
          *v42 = vabdq_s32(*(result + v39), *(a3 + v39));
          v42[1] = v41;
          v39 += 32;
          v40 -= 8;
        }

        while (v40);
        if (v22 != (v22 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_19;
        }
      }

LABEL_3:
      result += a2;
      a3 += a4;
      a5 += a6;
      ++v8;
      --a8;
    }

    while (a8);
  }

  return result;
}

unint64_t sub_1001E7FC8(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  if (!a8)
  {
    return result;
  }

  v8 = a2;
  v9 = (a8 - 1);
  v10 = (a7 - 4);
  v11 = (a7 - 8);
  if (a7 >= 8)
  {
    v15 = 0;
    v16 = a7;
    v112 = a6 - a2;
    v111 = a6 - a4;
    v17 = (v11 & 0x7FFFFFF8) + 12;
    if (v17 <= v10 + 1)
    {
      v17 = v10 + 1;
    }

    v18 = v17 - (v11 & 0x7FFFFFF8);
    v109 = ((4 * v18 - 36) & 0xFFFFFFFFFFFFFFF0) + 48;
    v110 = v18 - 9;
    v108 = ((v18 - 9) >> 2) + 1;
    v19 = (a5 + 32);
    v20 = (result + 32);
    v21 = (a3 + 32);
    v22 = result;
    v23 = a3;
    v24 = a5;
    v113 = a4;
    v114 = a6;
    while (1)
    {
      v25 = 0;
      v26 = 0;
      v116 = v9;
      v27 = v15 * v8;
      v28 = v15 * a4;
      v29 = v21;
      v30 = v20;
      v31 = v19;
      v32 = 8;
      do
      {
        v33 = (v22 + 4 * v26);
        v34 = *v33;
        v35 = v33[1];
        v36 = (v23 + 4 * v26);
        v37 = v36[1];
        v38 = vabdq_f32(v34, *v36);
        v39 = v32;
        v40 = v25;
        v41 = v31;
        v42 = v30;
        v43 = v29;
        v44 = (v24 + 4 * v26);
        v26 += 8;
        v32 += 8;
        ++v25;
        *v44 = v38;
        v44[1] = vabdq_f32(v35, v37);
        v31 += 2;
        v30 += 2;
        v29 = v43 + 2;
      }

      while (v26 <= v11);
      if (v10 >= v26)
      {
        if (v110 <= 0xB)
        {
          goto LABEL_20;
        }

        v50 = 32 * v40;
        v51 = a5 + v15 * a6 + 32 * v40;
        v52 = v51 + 32;
        v53 = v51 + v109;
        v54 = result + v27 + v50;
        v55 = v54 + 32;
        v56 = v54 + v109;
        v57 = a3 + v28 + v50;
        v58 = v52 >= v57 + v109 || v57 + 32 >= v53;
        v59 = !v58;
        if (v55 < v53 && v52 < v56)
        {
          goto LABEL_20;
        }

        if (v59)
        {
          goto LABEL_20;
        }

        v39 += 4 * (v108 & 0x7FFFFFFFFFFFFFFCLL);
        v61 = v108 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v62 = v42[2];
          v63 = v42[3];
          v64 = *v42;
          v65 = v42[1];
          v42 += 4;
          v66 = v43[2];
          v67 = v43[3];
          v68 = *v43;
          v69 = v43[1];
          v43 += 4;
          v41[2] = vabdq_f32(v62, v66);
          v41[3] = vabdq_f32(v63, v67);
          *v41 = vabdq_f32(v64, v68);
          v41[1] = vabdq_f32(v65, v69);
          v41 += 4;
          v61 -= 4;
        }

        while (v61);
        if (v108 != (v108 & 0x7FFFFFFFFFFFFFFCLL))
        {
LABEL_20:
          v46 = 4 * v39;
          do
          {
            v47 = (v24 + v46);
            *v47 = vabd_f32(*(v22 + v46), *(v23 + v46));
            v47[1] = vabd_f32(*(v22 + v46 + 8), *(v23 + v46 + 8));
            v39 += 4;
            v46 += 16;
          }

          while (v39 <= v10);
        }

        v45 = v39;
        a4 = v113;
        a6 = v114;
        v84 = v39 < a7;
        v8 = a2;
        if (!v84)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v45 = v26;
        a4 = v113;
        a6 = v114;
        v8 = a2;
        if (v26 >= a7)
        {
          goto LABEL_13;
        }
      }

      v48 = v16 - v45;
      if ((v16 - v45) <= 7 || a5 - result + v112 * v15 < 0x20 || a5 - a3 + v111 * v15 < 0x20)
      {
        v49 = v45;
      }

      else
      {
        v49 = (v48 & 0xFFFFFFFFFFFFFFF8) + v45;
        v70 = 4 * v45;
        v71 = v48 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v72 = vabdq_f32(*(v22 + v70 + 16), *(v23 + v70 + 16));
          v73 = (v24 + v70);
          *v73 = vabdq_f32(*(v22 + v70), *(v23 + v70));
          v73[1] = v72;
          v70 += 32;
          v71 -= 8;
        }

        while (v71);
        if (v48 == (v48 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_13;
        }
      }

      do
      {
        *(v24 + 4 * v49) = vabds_f32(*(v22 + 4 * v49), *(v23 + 4 * v49));
        ++v49;
      }

      while (v16 != v49);
LABEL_13:
      v22 += a2;
      v23 += a4;
      v24 += a6;
      LODWORD(v9) = v116 - 1;
      ++v15;
      v19 = (v19 + a6);
      v20 = (v20 + a2);
      v21 = (v21 + a4);
      if (!v116)
      {
        return result;
      }
    }
  }

  if (a7 >= 4)
  {
    v74 = 0;
    v75 = a5 - result;
    v76 = a5 - a3;
    v77 = (v10 & 0x7FFFFFFC) + 5;
    if (v77 <= a7)
    {
      v77 = a7;
    }

    v78 = v77 - (v10 & 0x7FFFFFFC) - 4;
    v79 = (4 * (a7 - 4)) & 0x1FFFFFFF0;
    v80 = a5 + v9 * a6 + v79 + 16;
    v81 = result + v9 * a2 + v79 + 16;
    v82 = a3 + v9 * a4 + v79 + 16;
    v83 = (v10 >> 2) + 1;
    v84 = v81 > a5 && v80 > result;
    v86 = v84 || (a6 | v8) < 0;
    if (v82 > a5 && v80 > a3 || (a6 | a4) < 0)
    {
      v86 = 1;
    }

    v89 = (v10 < 0xC) | v86;
    v90 = v78 & 0xFFFFFFFFFFFFFFF8;
    while (1)
    {
      v91 = v9;
      if (v89)
      {
        break;
      }

      v94 = 0;
      v95 = v83 & 0x3FFFFFFC;
      do
      {
        v96 = (a5 + v94);
        v97 = vabdq_f32(*(result + v94 + 16), *(a3 + v94 + 16));
        v98 = vabdq_f32(*(result + v94), *(a3 + v94));
        v99 = vabdq_f32(*(result + v94 + 48), *(a3 + v94 + 48));
        v96[2] = vabdq_f32(*(result + v94 + 32), *(a3 + v94 + 32));
        v96[3] = v99;
        *v96 = v98;
        v96[1] = v97;
        v94 += 64;
        v95 -= 4;
      }

      while (v95);
      v93 = (16 * (((v83 & 0x3FFFFFFC) >> 2) & 0xFFFFFFF)) | 4;
      v92 = 4 * (v83 & 0x3FFFFFFC);
      v100 = v92;
      if (v83 != (v83 & 0x3FFFFFFC))
      {
        goto LABEL_77;
      }

LABEL_79:
      if (v92 < a7)
      {
        if (v78 <= 7 || v75 + (a6 - v8) * v74 < 0x20 || v76 + (a6 - a4) * v74 < 0x20)
        {
          v103 = v100;
        }

        else
        {
          v103 = v100 + v90;
          v104 = 4 * v100;
          v105 = v78 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v106 = vabdq_f32(*(result + v104 + 16), *(a3 + v104 + 16));
            v107 = (a5 + v104);
            *v107 = vabdq_f32(*(result + v104), *(a3 + v104));
            v107[1] = v106;
            v104 += 32;
            v105 -= 8;
          }

          while (v105);
          if (v78 == v90)
          {
            goto LABEL_71;
          }
        }

        do
        {
          *(a5 + 4 * v103) = vabds_f32(*(result + 4 * v103), *(a3 + 4 * v103));
          ++v103;
        }

        while (v103 < a7);
      }

LABEL_71:
      result += v8;
      a3 += a4;
      a5 += a6;
      LODWORD(v9) = v9 - 1;
      ++v74;
      if (!v91)
      {
        return result;
      }
    }

    v92 = 0;
    v93 = 4;
LABEL_77:
    v100 = v93 - 4;
    v101 = 4 * v92;
    do
    {
      v102 = (a5 + v101);
      *v102 = vabd_f32(*(result + v101), *(a3 + v101));
      v102[1] = vabd_f32(*(result + v101 + 8), *(a3 + v101 + 8));
      v92 += 4;
      v100 += 4;
      v101 += 16;
    }

    while (v92 <= v10);
    goto LABEL_79;
  }

  if (a7 >= 1)
  {
    v12 = (a5 + 8);
    v13 = (a3 + 8);
    v14 = (result + 8);
    do
    {
      *(v12 - 2) = vabds_f32(*(v14 - 2), *(v13 - 2));
      if (a7 != 1)
      {
        *(v12 - 1) = vabds_f32(*(v14 - 1), *(v13 - 1));
        if (a7 != 2)
        {
          *v12 = vabds_f32(*v14, *v13);
        }
      }

      v12 = (v12 + a6);
      v13 = (v13 + a4);
      v14 = (v14 + a2);
      --a8;
    }

    while (a8);
  }

  return result;
}

unint64_t sub_1001E85C4(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  if (a8)
  {
    v8 = (a7 - 4);
    if (a7 >= 4)
    {
      v12 = (a8 - 1);
      v13 = v8 & 0x7FFFFFFC;
      v14 = ((8 * (a7 - 4)) & 0x3FFFFFFE0) + 32;
      v15 = a5 + v14;
      if (v13 + 5 <= a7)
      {
        v16 = a7;
      }

      else
      {
        v16 = (v8 & 0x7FFFFFFC) + 5;
      }

      v17 = a5 + v12 * a6;
      v18 = v17 + 8 * v16;
      v19 = result + v14;
      v20 = result + v12 * a2;
      v21 = v20 + 8 * v16;
      v56 = a3 + v14;
      v22 = a3 + v12 * a4;
      v23 = v16 - 4;
      v24 = v14 + v17;
      v25 = v14 + v20;
      v26 = v14 + v22;
      v27 = (v8 >> 2) + 1;
      v29 = v26 > a5 && v24 > a3;
      v30 = v25 > a5 && v24 > result;
      v31 = a6 | a4;
      if (v30)
      {
        v29 = 1;
      }

      v32 = v16 - 4 - v13 < 8;
      v35 = v15 < v21 && v19 < v18 || (a6 | a2) < 0;
      if (v15 < v22 + 8 * v16 && v56 < v18 || v31 < 0)
      {
        v35 = 1;
      }

      v38 = v16 & 3;
      v39 = (v8 & 0x7FFFFFFC) + v16 - v13 - v38;
      v40 = v32 || v35;
      v41 = v23 - v38 - v13;
      do
      {
        v42 = v12;
        v43 = 0;
        if (v8 < 4 || (v31 | a2) < 0 || v29)
        {
          goto LABEL_48;
        }

        v44 = v27 & 0x3FFFFFFE;
        do
        {
          v45 = (a5 + v43);
          v46 = vabdq_f64(*(result + v43 + 16), *(a3 + v43 + 16));
          v47 = vabdq_f64(*(result + v43), *(a3 + v43));
          v48 = vabdq_f64(*(result + v43 + 48), *(a3 + v43 + 48));
          v45[2] = vabdq_f64(*(result + v43 + 32), *(a3 + v43 + 32));
          v45[3] = v48;
          *v45 = v47;
          v45[1] = v46;
          v43 += 64;
          v44 -= 2;
        }

        while (v44);
        v43 = 4 * (v27 & 0x3FFFFFFE);
        if (v27 != (v27 & 0x3FFFFFFE))
        {
LABEL_48:
          v49 = 8 * v43;
          do
          {
            v50 = (a5 + v49);
            *v50 = vabdq_f64(*(result + v49), *(a3 + v49));
            v50[1] = vabdq_f64(*(result + v49 + 16), *(a3 + v49 + 16));
            v43 += 4;
            v49 += 32;
          }

          while (v43 <= v8);
        }

        if (v43 < a7)
        {
          v51 = (v8 & 0x7FFFFFFC) + 4;
          if (v40)
          {
            goto LABEL_59;
          }

          v52 = 32 * ((v8 >> 2) & 0x1FFFFFFF);
          v53 = v41;
          do
          {
            v54 = vabdq_f64(*(result + v52 + 48), *(a3 + v52 + 48));
            v55 = (a5 + v52);
            v55[2] = vabdq_f64(*(result + v52 + 32), *(a3 + v52 + 32));
            v55[3] = v54;
            v52 += 32;
            v53 -= 4;
          }

          while (v53);
          v51 = v39;
          if (v38)
          {
LABEL_59:
            do
            {
              *(a5 + 8 * v51) = vabdd_f64(*(result + 8 * v51), *(a3 + 8 * v51));
              ++v51;
            }

            while (v51 < a7);
          }
        }

        result += a2;
        a3 += a4;
        a5 += a6;
        LODWORD(v12) = v42 - 1;
      }

      while (v42);
    }

    else if (a7 >= 1)
    {
      v9 = (a5 + 16);
      v10 = (a3 + 16);
      v11 = (result + 16);
      do
      {
        *(v9 - 2) = vabdd_f64(*(v11 - 2), *(v10 - 2));
        if (a7 != 1)
        {
          *(v9 - 1) = vabdd_f64(*(v11 - 1), *(v10 - 1));
          if (a7 != 2)
          {
            *v9 = vabdd_f64(*v11, *v10);
          }
        }

        v9 = (v9 + a6);
        v10 = (v10 + a4);
        v11 = (v11 + a2);
        --a8;
      }

      while (a8);
    }
  }

  return result;
}

unint64_t sub_1001E88A0(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (!a8)
  {
    return result;
  }

  v8 = (a8 - 1);
  v9 = (a7 - 4);
  v10 = (a7 - 32);
  v122 = a4;
  v123 = a6;
  v124 = a2;
  if (a7 >= 32)
  {
    v14 = 0;
    v15 = a7;
    v121 = a6 - a2;
    v120 = a6 - a4;
    v16 = (v10 & 0x7FFFFFE0) + 36;
    if (v16 <= v9 + 1)
    {
      v16 = v9 + 1;
    }

    v17 = v16 - (v10 & 0x7FFFFFE0) - 33;
    v118 = (v17 & 0xFFFFFFFFFFFFFFFCLL) + 36;
    v119 = v17;
    v117 = (v17 >> 2) + 1;
    v18 = (a5 + 32);
    v19 = (result + 32);
    v20 = (a3 + 32);
    v21 = result;
    v22 = a3;
    v23 = a5;
    while (1)
    {
      v25 = a7;
      v26 = 0;
      v27 = 0;
      v28 = v14 * a6;
      v29 = v14 * a2;
      v30 = v14 * a4;
      v31 = v20;
      v32 = v19;
      v33 = v18;
      v34 = 32;
      do
      {
        v35 = vandq_s8(*(v22 + v27), *(v21 + v27));
        v36 = v34;
        v37 = v26;
        v38 = v33;
        v39 = v32;
        v40 = v31;
        v41 = vandq_s8(*(v22 + v27 + 16), *(v21 + v27 + 16));
        v42 = (v23 + v27);
        v27 += 32;
        v34 += 32;
        ++v26;
        *v42 = v35;
        v42[1] = v41;
        v33 += 2;
        v32 += 2;
        v31 = v40 + 2;
      }

      while (v27 <= v10);
      if (v9 >= v27)
      {
        break;
      }

      v43 = v27;
      a6 = v123;
      a2 = v124;
      a7 = v25;
      a4 = v122;
      if (v27 < v25)
      {
        goto LABEL_22;
      }

LABEL_13:
      v21 += a2;
      v22 += a4;
      v23 += a6;
      v24 = v8;
      LODWORD(v8) = v8 - 1;
      ++v14;
      v18 = (v18 + a6);
      v19 = (v19 + a2);
      v20 = (v20 + a4);
      if (!v24)
      {
        return result;
      }
    }

    if (v119 <= 0x3B)
    {
      goto LABEL_108;
    }

    v49 = 32 * v37;
    v50 = a5 + v28 + 32 * v37;
    v51 = v50 + 32;
    v52 = v50 + v118;
    v53 = result + v29 + v49;
    v54 = v53 + 32;
    v55 = v53 + v118;
    v56 = a3 + v30 + v49;
    v57 = v51 >= v56 + v118 || v56 + 32 >= v52;
    v58 = !v57;
    if (v54 < v52 && v51 < v55)
    {
      goto LABEL_108;
    }

    if (v58)
    {
      goto LABEL_108;
    }

    v36 += 4 * (v117 & 0x7FFFFFFFFFFFFFF0);
    v60 = v117 & 0x7FFFFFFFFFFFFFF0;
    do
    {
      v61 = v39[2];
      v62 = v39[3];
      v63 = *v39;
      v64 = v39[1];
      v39 += 4;
      v65 = v40[2];
      v66 = v40[3];
      v67 = *v40;
      v68 = v40[1];
      v40 += 4;
      v38[2] = vandq_s8(v65, v61);
      v38[3] = vandq_s8(v66, v62);
      *v38 = vandq_s8(v67, v63);
      v38[1] = vandq_s8(v68, v64);
      v38 += 4;
      v60 -= 16;
    }

    while (v60);
    if (v117 != (v117 & 0x7FFFFFFFFFFFFFF0))
    {
LABEL_108:
      do
      {
        v44 = *(v22 + v36 + 1) & *(v21 + v36 + 1);
        v45 = (v23 + v36);
        *v45 = *(v22 + v36) & *(v21 + v36);
        v45[1] = v44;
        v46 = *(v22 + v36 + 3) & *(v21 + v36 + 3);
        v45[2] = *(v22 + v36 + 2) & *(v21 + v36 + 2);
        v45[3] = v46;
        v36 += 4;
      }

      while (v36 <= v9);
    }

    v43 = v36;
    a6 = v123;
    a2 = v124;
    a7 = v25;
    a4 = v122;
    if (v36 >= v25)
    {
      goto LABEL_13;
    }

LABEL_22:
    v47 = v15 - v43;
    if ((v15 - v43) < 8)
    {
      v48 = v43;
      goto LABEL_24;
    }

    if (a5 - result + v121 * v14 < 0x20)
    {
      v48 = v43;
    }

    else if (a5 - a3 + v120 * v14 < 0x20)
    {
      v48 = v43;
    }

    else
    {
      if (v47 < 0x20)
      {
        v69 = 0;
        goto LABEL_52;
      }

      v69 = v47 & 0xFFFFFFFFFFFFFFE0;
      v70 = v43;
      v71 = v47 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v72 = vandq_s8(*(v22 + v70 + 16), *(v21 + v70 + 16));
        v73 = (v23 + v70);
        *v73 = vandq_s8(*(v22 + v70), *(v21 + v70));
        v73[1] = v72;
        v70 += 32;
        v71 -= 32;
      }

      while (v71);
      if (v47 == v69)
      {
        goto LABEL_13;
      }

      if ((v47 & 0x18) != 0)
      {
LABEL_52:
        v48 = (v47 & 0xFFFFFFFFFFFFFFF8) + v43;
        v74 = v69 - (v47 & 0xFFFFFFFFFFFFFFF8);
        v75 = v69 + v43;
        do
        {
          *(v23 + v75) = vand_s8(*(v22 + v75), *(v21 + v75));
          v75 += 8;
          v74 += 8;
        }

        while (v74);
        if (v47 == (v47 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_13;
        }

        goto LABEL_24;
      }

      v48 = v69 + v43;
    }

    do
    {
LABEL_24:
      *(v23 + v48) = *(v22 + v48) & *(v21 + v48);
      ++v48;
    }

    while (v15 != v48);
    goto LABEL_13;
  }

  if (a7 >= 4)
  {
    v76 = 0;
    v77 = a5 - result;
    v78 = a6 - a2;
    v79 = a5 - a3;
    v80 = a6 - a4;
    v81 = v9 & 0x7FFFFFFC;
    v82 = v81 + 5;
    if (v81 + 5 <= a7)
    {
      v82 = a7;
    }

    v83 = v82 - v81 - 4;
    v84 = a5 + v8 * a6 + v81 + 4;
    v85 = result + v8 * a2 + v81 + 4;
    v86 = a3 + v8 * a4 + v81 + 4;
    v87 = (v9 >> 2) + 1;
    v90 = v85 > a5 && v84 > result || (a6 | v124) < 0;
    if (v86 > a5 && v84 > a3 || (a6 | a4) < 0)
    {
      v90 = 1;
    }

    v93 = v83 & 0xFFFFFFFFFFFFFFE0;
    v94 = v83 & 0xFFFFFFFFFFFFFFF8;
    v95 = v9 < 0x3C || v90;
    while (1)
    {
      v96 = v8;
      if (v95)
      {
        break;
      }

      v99 = 0;
      v100 = v87 & 0x3FFFFFF0;
      do
      {
        v101 = vandq_s8(*(a3 + v99 + 16), *(result + v99 + 16));
        v102 = vandq_s8(*(a3 + v99), *(result + v99));
        v103 = vandq_s8(*(a3 + v99 + 48), *(result + v99 + 48));
        v104 = (a5 + v99);
        v104[2] = vandq_s8(*(a3 + v99 + 32), *(result + v99 + 32));
        v104[3] = v103;
        *v104 = v102;
        v104[1] = v101;
        v99 += 64;
        v100 -= 16;
      }

      while (v100);
      v98 = ((((v87 & 0x3FFFFFF0) >> 4) & 0x3FFFFFF) << 6) | 4;
      v97 = 4 * (v87 & 0x3FFFFFF0);
      v105 = v97;
      if (v87 != (v87 & 0x3FFFFFF0))
      {
        goto LABEL_84;
      }

LABEL_86:
      if (v97 < a7)
      {
        if (v83 < 8)
        {
          v109 = v105;
          goto LABEL_89;
        }

        if (v77 + v78 * v76 < 0x20)
        {
          v109 = v105;
        }

        else if (v79 + v80 * v76 < 0x20)
        {
          v109 = v105;
        }

        else
        {
          if (v83 < 0x20)
          {
            v110 = 0;
            goto LABEL_101;
          }

          v111 = v105;
          v112 = v83 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v113 = vandq_s8(*(a3 + v111 + 16), *(result + v111 + 16));
            v114 = (a5 + v111);
            *v114 = vandq_s8(*(a3 + v111), *(result + v111));
            v114[1] = v113;
            v111 += 32;
            v112 -= 32;
          }

          while (v112);
          if (v83 == v93)
          {
            goto LABEL_78;
          }

          v110 = v83 & 0xFFFFFFFFFFFFFFE0;
          if ((v83 & 0x18) != 0)
          {
LABEL_101:
            v109 = v105 + v94;
            v115 = v110 - (v83 & 0xFFFFFFFFFFFFFFF8);
            v116 = v110 + v105;
            do
            {
              *(a5 + v116) = vand_s8(*(a3 + v116), *(result + v116));
              v116 += 8;
              v115 += 8;
            }

            while (v115);
            if (v83 == v94)
            {
              goto LABEL_78;
            }

            goto LABEL_89;
          }

          v109 = v105 + v93;
        }

        do
        {
LABEL_89:
          *(a5 + v109) = *(a3 + v109) & *(result + v109);
          ++v109;
        }

        while (v109 < a7);
      }

LABEL_78:
      result += v124;
      a3 += v122;
      a5 += v123;
      LODWORD(v8) = v96 - 1;
      ++v76;
      if (!v96)
      {
        return result;
      }
    }

    v97 = 0;
    v98 = 4;
LABEL_84:
    v105 = v98 - 4;
    do
    {
      v106 = *(a3 + v97 + 1) & *(result + v97 + 1);
      v107 = (a5 + v97);
      *v107 = *(a3 + v97) & *(result + v97);
      v107[1] = v106;
      v108 = *(a3 + v97 + 3) & *(result + v97 + 3);
      v107[2] = *(a3 + v97 + 2) & *(result + v97 + 2);
      v107[3] = v108;
      v97 += 4;
      v105 += 4;
    }

    while (v97 <= v9);
    goto LABEL_86;
  }

  if (a7 >= 1)
  {
    v11 = (a5 + 2);
    v12 = (a3 + 2);
    v13 = (result + 1);
    do
    {
      *(v11 - 2) = *(v12 - 2) & *(v13 - 1);
      if (a7 != 1)
      {
        *(v11 - 1) = *(v12 - 1) & *v13;
        if (a7 != 2)
        {
          *v11 = *v12 & v13[1];
        }
      }

      v11 += a6;
      v12 += a4;
      v13 += a2;
      --a8;
    }

    while (a8);
  }

  return result;
}

unint64_t sub_1001E8F88(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (!a8)
  {
    return result;
  }

  v8 = (a8 - 1);
  v9 = (a7 - 4);
  v10 = (a7 - 32);
  v122 = a4;
  v123 = a6;
  v124 = a2;
  if (a7 >= 32)
  {
    v14 = 0;
    v15 = a7;
    v121 = a6 - a2;
    v120 = a6 - a4;
    v16 = (v10 & 0x7FFFFFE0) + 36;
    if (v16 <= v9 + 1)
    {
      v16 = v9 + 1;
    }

    v17 = v16 - (v10 & 0x7FFFFFE0) - 33;
    v118 = (v17 & 0xFFFFFFFFFFFFFFFCLL) + 36;
    v119 = v17;
    v117 = (v17 >> 2) + 1;
    v18 = (a5 + 32);
    v19 = (result + 32);
    v20 = (a3 + 32);
    v21 = result;
    v22 = a3;
    v23 = a5;
    while (1)
    {
      v25 = a7;
      v26 = 0;
      v27 = 0;
      v28 = v14 * a6;
      v29 = v14 * a2;
      v30 = v14 * a4;
      v31 = v20;
      v32 = v19;
      v33 = v18;
      v34 = 32;
      do
      {
        v35 = vorrq_s8(*(v22 + v27), *(v21 + v27));
        v36 = v34;
        v37 = v26;
        v38 = v33;
        v39 = v32;
        v40 = v31;
        v41 = vorrq_s8(*(v22 + v27 + 16), *(v21 + v27 + 16));
        v42 = (v23 + v27);
        v27 += 32;
        v34 += 32;
        ++v26;
        *v42 = v35;
        v42[1] = v41;
        v33 += 2;
        v32 += 2;
        v31 = v40 + 2;
      }

      while (v27 <= v10);
      if (v9 >= v27)
      {
        break;
      }

      v43 = v27;
      a6 = v123;
      a2 = v124;
      a7 = v25;
      a4 = v122;
      if (v27 < v25)
      {
        goto LABEL_22;
      }

LABEL_13:
      v21 += a2;
      v22 += a4;
      v23 += a6;
      v24 = v8;
      LODWORD(v8) = v8 - 1;
      ++v14;
      v18 = (v18 + a6);
      v19 = (v19 + a2);
      v20 = (v20 + a4);
      if (!v24)
      {
        return result;
      }
    }

    if (v119 <= 0x3B)
    {
      goto LABEL_108;
    }

    v49 = 32 * v37;
    v50 = a5 + v28 + 32 * v37;
    v51 = v50 + 32;
    v52 = v50 + v118;
    v53 = result + v29 + v49;
    v54 = v53 + 32;
    v55 = v53 + v118;
    v56 = a3 + v30 + v49;
    v57 = v51 >= v56 + v118 || v56 + 32 >= v52;
    v58 = !v57;
    if (v54 < v52 && v51 < v55)
    {
      goto LABEL_108;
    }

    if (v58)
    {
      goto LABEL_108;
    }

    v36 += 4 * (v117 & 0x7FFFFFFFFFFFFFF0);
    v60 = v117 & 0x7FFFFFFFFFFFFFF0;
    do
    {
      v61 = v39[2];
      v62 = v39[3];
      v63 = *v39;
      v64 = v39[1];
      v39 += 4;
      v65 = v40[2];
      v66 = v40[3];
      v67 = *v40;
      v68 = v40[1];
      v40 += 4;
      v38[2] = vorrq_s8(v65, v61);
      v38[3] = vorrq_s8(v66, v62);
      *v38 = vorrq_s8(v67, v63);
      v38[1] = vorrq_s8(v68, v64);
      v38 += 4;
      v60 -= 16;
    }

    while (v60);
    if (v117 != (v117 & 0x7FFFFFFFFFFFFFF0))
    {
LABEL_108:
      do
      {
        v44 = *(v22 + v36 + 1) | *(v21 + v36 + 1);
        v45 = (v23 + v36);
        *v45 = *(v22 + v36) | *(v21 + v36);
        v45[1] = v44;
        v46 = *(v22 + v36 + 3) | *(v21 + v36 + 3);
        v45[2] = *(v22 + v36 + 2) | *(v21 + v36 + 2);
        v45[3] = v46;
        v36 += 4;
      }

      while (v36 <= v9);
    }

    v43 = v36;
    a6 = v123;
    a2 = v124;
    a7 = v25;
    a4 = v122;
    if (v36 >= v25)
    {
      goto LABEL_13;
    }

LABEL_22:
    v47 = v15 - v43;
    if ((v15 - v43) < 8)
    {
      v48 = v43;
      goto LABEL_24;
    }

    if (a5 - result + v121 * v14 < 0x20)
    {
      v48 = v43;
    }

    else if (a5 - a3 + v120 * v14 < 0x20)
    {
      v48 = v43;
    }

    else
    {
      if (v47 < 0x20)
      {
        v69 = 0;
        goto LABEL_52;
      }

      v69 = v47 & 0xFFFFFFFFFFFFFFE0;
      v70 = v43;
      v71 = v47 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v72 = vorrq_s8(*(v22 + v70 + 16), *(v21 + v70 + 16));
        v73 = (v23 + v70);
        *v73 = vorrq_s8(*(v22 + v70), *(v21 + v70));
        v73[1] = v72;
        v70 += 32;
        v71 -= 32;
      }

      while (v71);
      if (v47 == v69)
      {
        goto LABEL_13;
      }

      if ((v47 & 0x18) != 0)
      {
LABEL_52:
        v48 = (v47 & 0xFFFFFFFFFFFFFFF8) + v43;
        v74 = v69 - (v47 & 0xFFFFFFFFFFFFFFF8);
        v75 = v69 + v43;
        do
        {
          *(v23 + v75) = vorr_s8(*(v22 + v75), *(v21 + v75));
          v75 += 8;
          v74 += 8;
        }

        while (v74);
        if (v47 == (v47 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_13;
        }

        goto LABEL_24;
      }

      v48 = v69 + v43;
    }

    do
    {
LABEL_24:
      *(v23 + v48) = *(v22 + v48) | *(v21 + v48);
      ++v48;
    }

    while (v15 != v48);
    goto LABEL_13;
  }

  if (a7 >= 4)
  {
    v76 = 0;
    v77 = a5 - result;
    v78 = a6 - a2;
    v79 = a5 - a3;
    v80 = a6 - a4;
    v81 = v9 & 0x7FFFFFFC;
    v82 = v81 + 5;
    if (v81 + 5 <= a7)
    {
      v82 = a7;
    }

    v83 = v82 - v81 - 4;
    v84 = a5 + v8 * a6 + v81 + 4;
    v85 = result + v8 * a2 + v81 + 4;
    v86 = a3 + v8 * a4 + v81 + 4;
    v87 = (v9 >> 2) + 1;
    v90 = v85 > a5 && v84 > result || (a6 | v124) < 0;
    if (v86 > a5 && v84 > a3 || (a6 | a4) < 0)
    {
      v90 = 1;
    }

    v93 = v83 & 0xFFFFFFFFFFFFFFE0;
    v94 = v83 & 0xFFFFFFFFFFFFFFF8;
    v95 = v9 < 0x3C || v90;
    while (1)
    {
      v96 = v8;
      if (v95)
      {
        break;
      }

      v99 = 0;
      v100 = v87 & 0x3FFFFFF0;
      do
      {
        v101 = vorrq_s8(*(a3 + v99 + 16), *(result + v99 + 16));
        v102 = vorrq_s8(*(a3 + v99), *(result + v99));
        v103 = vorrq_s8(*(a3 + v99 + 48), *(result + v99 + 48));
        v104 = (a5 + v99);
        v104[2] = vorrq_s8(*(a3 + v99 + 32), *(result + v99 + 32));
        v104[3] = v103;
        *v104 = v102;
        v104[1] = v101;
        v99 += 64;
        v100 -= 16;
      }

      while (v100);
      v98 = ((((v87 & 0x3FFFFFF0) >> 4) & 0x3FFFFFF) << 6) | 4;
      v97 = 4 * (v87 & 0x3FFFFFF0);
      v105 = v97;
      if (v87 != (v87 & 0x3FFFFFF0))
      {
        goto LABEL_84;
      }

LABEL_86:
      if (v97 < a7)
      {
        if (v83 < 8)
        {
          v109 = v105;
          goto LABEL_89;
        }

        if (v77 + v78 * v76 < 0x20)
        {
          v109 = v105;
        }

        else if (v79 + v80 * v76 < 0x20)
        {
          v109 = v105;
        }

        else
        {
          if (v83 < 0x20)
          {
            v110 = 0;
            goto LABEL_101;
          }

          v111 = v105;
          v112 = v83 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v113 = vorrq_s8(*(a3 + v111 + 16), *(result + v111 + 16));
            v114 = (a5 + v111);
            *v114 = vorrq_s8(*(a3 + v111), *(result + v111));
            v114[1] = v113;
            v111 += 32;
            v112 -= 32;
          }

          while (v112);
          if (v83 == v93)
          {
            goto LABEL_78;
          }

          v110 = v83 & 0xFFFFFFFFFFFFFFE0;
          if ((v83 & 0x18) != 0)
          {
LABEL_101:
            v109 = v105 + v94;
            v115 = v110 - (v83 & 0xFFFFFFFFFFFFFFF8);
            v116 = v110 + v105;
            do
            {
              *(a5 + v116) = vorr_s8(*(a3 + v116), *(result + v116));
              v116 += 8;
              v115 += 8;
            }

            while (v115);
            if (v83 == v94)
            {
              goto LABEL_78;
            }

            goto LABEL_89;
          }

          v109 = v105 + v93;
        }

        do
        {
LABEL_89:
          *(a5 + v109) = *(a3 + v109) | *(result + v109);
          ++v109;
        }

        while (v109 < a7);
      }

LABEL_78:
      result += v124;
      a3 += v122;
      a5 += v123;
      LODWORD(v8) = v96 - 1;
      ++v76;
      if (!v96)
      {
        return result;
      }
    }

    v97 = 0;
    v98 = 4;
LABEL_84:
    v105 = v98 - 4;
    do
    {
      v106 = *(a3 + v97 + 1) | *(result + v97 + 1);
      v107 = (a5 + v97);
      *v107 = *(a3 + v97) | *(result + v97);
      v107[1] = v106;
      v108 = *(a3 + v97 + 3) | *(result + v97 + 3);
      v107[2] = *(a3 + v97 + 2) | *(result + v97 + 2);
      v107[3] = v108;
      v97 += 4;
      v105 += 4;
    }

    while (v97 <= v9);
    goto LABEL_86;
  }

  if (a7 >= 1)
  {
    v11 = (a5 + 2);
    v12 = (a3 + 2);
    v13 = (result + 1);
    do
    {
      *(v11 - 2) = *(v12 - 2) | *(v13 - 1);
      if (a7 != 1)
      {
        *(v11 - 1) = *(v12 - 1) | *v13;
        if (a7 != 2)
        {
          *v11 = *v12 | v13[1];
        }
      }

      v11 += a6;
      v12 += a4;
      v13 += a2;
      --a8;
    }

    while (a8);
  }

  return result;
}

unint64_t sub_1001E9670(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (!a8)
  {
    return result;
  }

  v8 = (a8 - 1);
  v9 = (a7 - 4);
  v10 = (a7 - 32);
  v122 = a4;
  v123 = a6;
  v124 = a2;
  if (a7 >= 32)
  {
    v14 = 0;
    v15 = a7;
    v121 = a6 - a2;
    v120 = a6 - a4;
    v16 = (v10 & 0x7FFFFFE0) + 36;
    if (v16 <= v9 + 1)
    {
      v16 = v9 + 1;
    }

    v17 = v16 - (v10 & 0x7FFFFFE0) - 33;
    v118 = (v17 & 0xFFFFFFFFFFFFFFFCLL) + 36;
    v119 = v17;
    v117 = (v17 >> 2) + 1;
    v18 = (a5 + 32);
    v19 = (result + 32);
    v20 = (a3 + 32);
    v21 = result;
    v22 = a3;
    v23 = a5;
    while (1)
    {
      v25 = a7;
      v26 = 0;
      v27 = 0;
      v28 = v14 * a6;
      v29 = v14 * a2;
      v30 = v14 * a4;
      v31 = v20;
      v32 = v19;
      v33 = v18;
      v34 = 32;
      do
      {
        v35 = veorq_s8(*(v22 + v27), *(v21 + v27));
        v36 = v34;
        v37 = v26;
        v38 = v33;
        v39 = v32;
        v40 = v31;
        v41 = veorq_s8(*(v22 + v27 + 16), *(v21 + v27 + 16));
        v42 = (v23 + v27);
        v27 += 32;
        v34 += 32;
        ++v26;
        *v42 = v35;
        v42[1] = v41;
        v33 += 2;
        v32 += 2;
        v31 = v40 + 2;
      }

      while (v27 <= v10);
      if (v9 >= v27)
      {
        break;
      }

      v43 = v27;
      a6 = v123;
      a2 = v124;
      a7 = v25;
      a4 = v122;
      if (v27 < v25)
      {
        goto LABEL_22;
      }

LABEL_13:
      v21 += a2;
      v22 += a4;
      v23 += a6;
      v24 = v8;
      LODWORD(v8) = v8 - 1;
      ++v14;
      v18 = (v18 + a6);
      v19 = (v19 + a2);
      v20 = (v20 + a4);
      if (!v24)
      {
        return result;
      }
    }

    if (v119 <= 0x3B)
    {
      goto LABEL_108;
    }

    v49 = 32 * v37;
    v50 = a5 + v28 + 32 * v37;
    v51 = v50 + 32;
    v52 = v50 + v118;
    v53 = result + v29 + v49;
    v54 = v53 + 32;
    v55 = v53 + v118;
    v56 = a3 + v30 + v49;
    v57 = v51 >= v56 + v118 || v56 + 32 >= v52;
    v58 = !v57;
    if (v54 < v52 && v51 < v55)
    {
      goto LABEL_108;
    }

    if (v58)
    {
      goto LABEL_108;
    }

    v36 += 4 * (v117 & 0x7FFFFFFFFFFFFFF0);
    v60 = v117 & 0x7FFFFFFFFFFFFFF0;
    do
    {
      v61 = v39[2];
      v62 = v39[3];
      v63 = *v39;
      v64 = v39[1];
      v39 += 4;
      v65 = v40[2];
      v66 = v40[3];
      v67 = *v40;
      v68 = v40[1];
      v40 += 4;
      v38[2] = veorq_s8(v65, v61);
      v38[3] = veorq_s8(v66, v62);
      *v38 = veorq_s8(v67, v63);
      v38[1] = veorq_s8(v68, v64);
      v38 += 4;
      v60 -= 16;
    }

    while (v60);
    if (v117 != (v117 & 0x7FFFFFFFFFFFFFF0))
    {
LABEL_108:
      do
      {
        v44 = *(v22 + v36 + 1) ^ *(v21 + v36 + 1);
        v45 = (v23 + v36);
        *v45 = *(v22 + v36) ^ *(v21 + v36);
        v45[1] = v44;
        v46 = *(v22 + v36 + 3) ^ *(v21 + v36 + 3);
        v45[2] = *(v22 + v36 + 2) ^ *(v21 + v36 + 2);
        v45[3] = v46;
        v36 += 4;
      }

      while (v36 <= v9);
    }

    v43 = v36;
    a6 = v123;
    a2 = v124;
    a7 = v25;
    a4 = v122;
    if (v36 >= v25)
    {
      goto LABEL_13;
    }

LABEL_22:
    v47 = v15 - v43;
    if ((v15 - v43) < 8)
    {
      v48 = v43;
      goto LABEL_24;
    }

    if (a5 - result + v121 * v14 < 0x20)
    {
      v48 = v43;
    }

    else if (a5 - a3 + v120 * v14 < 0x20)
    {
      v48 = v43;
    }

    else
    {
      if (v47 < 0x20)
      {
        v69 = 0;
        goto LABEL_52;
      }

      v69 = v47 & 0xFFFFFFFFFFFFFFE0;
      v70 = v43;
      v71 = v47 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v72 = veorq_s8(*(v22 + v70 + 16), *(v21 + v70 + 16));
        v73 = (v23 + v70);
        *v73 = veorq_s8(*(v22 + v70), *(v21 + v70));
        v73[1] = v72;
        v70 += 32;
        v71 -= 32;
      }

      while (v71);
      if (v47 == v69)
      {
        goto LABEL_13;
      }

      if ((v47 & 0x18) != 0)
      {
LABEL_52:
        v48 = (v47 & 0xFFFFFFFFFFFFFFF8) + v43;
        v74 = v69 - (v47 & 0xFFFFFFFFFFFFFFF8);
        v75 = v69 + v43;
        do
        {
          *(v23 + v75) = veor_s8(*(v22 + v75), *(v21 + v75));
          v75 += 8;
          v74 += 8;
        }

        while (v74);
        if (v47 == (v47 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_13;
        }

        goto LABEL_24;
      }

      v48 = v69 + v43;
    }

    do
    {
LABEL_24:
      *(v23 + v48) = *(v22 + v48) ^ *(v21 + v48);
      ++v48;
    }

    while (v15 != v48);
    goto LABEL_13;
  }

  if (a7 >= 4)
  {
    v76 = 0;
    v77 = a5 - result;
    v78 = a6 - a2;
    v79 = a5 - a3;
    v80 = a6 - a4;
    v81 = v9 & 0x7FFFFFFC;
    v82 = v81 + 5;
    if (v81 + 5 <= a7)
    {
      v82 = a7;
    }

    v83 = v82 - v81 - 4;
    v84 = a5 + v8 * a6 + v81 + 4;
    v85 = result + v8 * a2 + v81 + 4;
    v86 = a3 + v8 * a4 + v81 + 4;
    v87 = (v9 >> 2) + 1;
    v90 = v85 > a5 && v84 > result || (a6 | v124) < 0;
    if (v86 > a5 && v84 > a3 || (a6 | a4) < 0)
    {
      v90 = 1;
    }

    v93 = v83 & 0xFFFFFFFFFFFFFFE0;
    v94 = v83 & 0xFFFFFFFFFFFFFFF8;
    v95 = v9 < 0x3C || v90;
    while (1)
    {
      v96 = v8;
      if (v95)
      {
        break;
      }

      v99 = 0;
      v100 = v87 & 0x3FFFFFF0;
      do
      {
        v101 = veorq_s8(*(a3 + v99 + 16), *(result + v99 + 16));
        v102 = veorq_s8(*(a3 + v99), *(result + v99));
        v103 = veorq_s8(*(a3 + v99 + 48), *(result + v99 + 48));
        v104 = (a5 + v99);
        v104[2] = veorq_s8(*(a3 + v99 + 32), *(result + v99 + 32));
        v104[3] = v103;
        *v104 = v102;
        v104[1] = v101;
        v99 += 64;
        v100 -= 16;
      }

      while (v100);
      v98 = ((((v87 & 0x3FFFFFF0) >> 4) & 0x3FFFFFF) << 6) | 4;
      v97 = 4 * (v87 & 0x3FFFFFF0);
      v105 = v97;
      if (v87 != (v87 & 0x3FFFFFF0))
      {
        goto LABEL_84;
      }

LABEL_86:
      if (v97 < a7)
      {
        if (v83 < 8)
        {
          v109 = v105;
          goto LABEL_89;
        }

        if (v77 + v78 * v76 < 0x20)
        {
          v109 = v105;
        }

        else if (v79 + v80 * v76 < 0x20)
        {
          v109 = v105;
        }

        else
        {
          if (v83 < 0x20)
          {
            v110 = 0;
            goto LABEL_101;
          }

          v111 = v105;
          v112 = v83 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v113 = veorq_s8(*(a3 + v111 + 16), *(result + v111 + 16));
            v114 = (a5 + v111);
            *v114 = veorq_s8(*(a3 + v111), *(result + v111));
            v114[1] = v113;
            v111 += 32;
            v112 -= 32;
          }

          while (v112);
          if (v83 == v93)
          {
            goto LABEL_78;
          }

          v110 = v83 & 0xFFFFFFFFFFFFFFE0;
          if ((v83 & 0x18) != 0)
          {
LABEL_101:
            v109 = v105 + v94;
            v115 = v110 - (v83 & 0xFFFFFFFFFFFFFFF8);
            v116 = v110 + v105;
            do
            {
              *(a5 + v116) = veor_s8(*(a3 + v116), *(result + v116));
              v116 += 8;
              v115 += 8;
            }

            while (v115);
            if (v83 == v94)
            {
              goto LABEL_78;
            }

            goto LABEL_89;
          }

          v109 = v105 + v93;
        }

        do
        {
LABEL_89:
          *(a5 + v109) = *(a3 + v109) ^ *(result + v109);
          ++v109;
        }

        while (v109 < a7);
      }

LABEL_78:
      result += v124;
      a3 += v122;
      a5 += v123;
      LODWORD(v8) = v96 - 1;
      ++v76;
      if (!v96)
      {
        return result;
      }
    }

    v97 = 0;
    v98 = 4;
LABEL_84:
    v105 = v98 - 4;
    do
    {
      v106 = *(a3 + v97 + 1) ^ *(result + v97 + 1);
      v107 = (a5 + v97);
      *v107 = *(a3 + v97) ^ *(result + v97);
      v107[1] = v106;
      v108 = *(a3 + v97 + 3) ^ *(result + v97 + 3);
      v107[2] = *(a3 + v97 + 2) ^ *(result + v97 + 2);
      v107[3] = v108;
      v97 += 4;
      v105 += 4;
    }

    while (v97 <= v9);
    goto LABEL_86;
  }

  if (a7 >= 1)
  {
    v11 = (a5 + 2);
    v12 = (a3 + 2);
    v13 = (result + 1);
    do
    {
      *(v11 - 2) = *(v12 - 2) ^ *(v13 - 1);
      if (a7 != 1)
      {
        *(v11 - 1) = *(v12 - 1) ^ *v13;
        if (a7 != 2)
        {
          *v11 = *v12 ^ v13[1];
        }
      }

      v11 += a6;
      v12 += a4;
      v13 += a2;
      --a8;
    }

    while (a8);
  }

  return result;
}

unint64_t sub_1001E9D58(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  if (!a8)
  {
    return result;
  }

  v8 = (a8 - 1);
  v9 = (a7 - 4);
  v10 = (a7 - 32);
  if (a7 >= 32)
  {
    v13 = 0;
    v14 = (v10 & 0x7FFFFFE0) + 36;
    if (v14 <= v9 + 1)
    {
      v14 = v9 + 1;
    }

    v15 = v14 - (v10 & 0x7FFFFFE0) - 33;
    v96 = (v15 & 0xFFFFFFFFFFFFFFFCLL) + 36;
    v95 = (v15 >> 2) + 1;
    v16 = (a5 + 32);
    v17 = (result + 32);
    v18 = result;
    v19 = a5;
    while (1)
    {
      v20 = 0;
      v21 = 0;
      v22 = v8;
      v23 = v17;
      v24 = v16;
      v25 = 32;
      do
      {
        v26 = v25;
        v27 = v20;
        v28 = v24;
        v29 = v23;
        v30 = vmvnq_s8(*(v18 + v21));
        v31 = vmvnq_s8(*(v18 + v21 + 16));
        v32 = (v19 + v21);
        v21 += 32;
        v25 += 32;
        *v32 = v30;
        v32[1] = v31;
        ++v20;
        v24 = v28 + 2;
        v23 += 2;
      }

      while (v21 <= v10);
      if (v9 >= v21)
      {
        break;
      }

      v33 = v21;
      if (v21 < a7)
      {
        goto LABEL_29;
      }

LABEL_13:
      v18 += a2;
      v19 += a6;
      LODWORD(v8) = v22 - 1;
      ++v13;
      v16 = (v16 + a6);
      v17 = (v17 + a2);
      if (!v22)
      {
        return result;
      }
    }

    if (v15 <= 0x3B)
    {
      goto LABEL_25;
    }

    v34 = 32 * v27;
    v35 = a5 + v13 * a6 + 32 * v27;
    v36 = result + v13 * a2 + v34;
    if (v35 + 32 < v36 + v96 && v36 + 32 < v35 + v96)
    {
      goto LABEL_25;
    }

    v26 += 4 * (v95 & 0x7FFFFFFFFFFFFFF0);
    v37 = v95 & 0x7FFFFFFFFFFFFFF0;
    do
    {
      v38 = v29[2];
      v39 = v29[3];
      v40 = *v29;
      v41 = v29[1];
      v29 += 4;
      v28[2] = vmvnq_s8(v38);
      v28[3] = vmvnq_s8(v39);
      *v28 = vmvnq_s8(v40);
      v28[1] = vmvnq_s8(v41);
      v28 += 4;
      v37 -= 16;
    }

    while (v37);
    if (v95 != (v95 & 0x7FFFFFFFFFFFFFF0))
    {
LABEL_25:
      v42 = v26 + 1;
      do
      {
        v43 = ~*(v18 + v42);
        v44 = (v19 + v42);
        *(v44 - 1) = ~*(v18 + v42 - 1);
        *v44 = v43;
        v45 = ~*(v18 + v42 + 2);
        v44[1] = ~*(v18 + v42 + 1);
        v44[2] = v45;
        v46 = v42 + 4;
        v47 = v42 + 3;
        v42 += 4;
      }

      while (v47 <= v9);
      LODWORD(v26) = v46 - 1;
    }

    v33 = v26;
    if (v26 >= a7)
    {
      goto LABEL_13;
    }

LABEL_29:
    v48 = a7 - v33;
    if (v48 < 8)
    {
      v50 = v33;
    }

    else if (a5 - result + (a6 - a2) * v13 < 0x20)
    {
      v50 = v33;
    }

    else
    {
      if (v48 < 0x20)
      {
        v49 = 0;
        goto LABEL_39;
      }

      v49 = v48 & 0xFFFFFFFFFFFFFFE0;
      v51 = v33;
      v52 = v48 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v53 = vmvnq_s8(*(v18 + v51 + 16));
        v54 = (v19 + v51);
        *v54 = vmvnq_s8(*(v18 + v51));
        v54[1] = v53;
        v51 += 32;
        v52 -= 32;
      }

      while (v52);
      if (v48 == v49)
      {
        goto LABEL_13;
      }

      if ((v48 & 0x18) != 0)
      {
LABEL_39:
        v50 = (v48 & 0xFFFFFFFFFFFFFFF8) + v33;
        v55 = v49 - (v48 & 0xFFFFFFFFFFFFFFF8);
        v56 = v49 + v33;
        do
        {
          *(v19 + v56) = vmvn_s8(*(v18 + v56));
          v56 += 8;
          v55 += 8;
        }

        while (v55);
        if (v48 == (v48 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_13;
        }

        goto LABEL_44;
      }

      v50 = v49 + v33;
    }

    do
    {
LABEL_44:
      *(v19 + v50) = ~*(v18 + v50);
      ++v50;
    }

    while (a7 != v50);
    goto LABEL_13;
  }

  if (a7 >= 4)
  {
    v57 = 0;
    v58 = a5 - result;
    v59 = v9 & 0x7FFFFFFC;
    v60 = v59 + 5;
    if (v59 + 5 <= a7)
    {
      v60 = a7;
    }

    v61 = v60 - v59 - 4;
    v62 = a5 + v8 * a6 + v59 + 4;
    v63 = result + v8 * a2 + v59 + 4;
    v64 = (v9 >> 2) + 1;
    v66 = v63 > a5 && v62 > result;
    v67 = v61 & 0xFFFFFFFFFFFFFFE0;
    v68 = v61 & 0xFFFFFFFFFFFFFFF8;
    v69 = v9 < 0x3C || (a6 | a2) < 0 || v66;
    while (1)
    {
      v70 = v8;
      if (v69)
      {
        break;
      }

      v73 = 0;
      v74 = v64 & 0x3FFFFFF0;
      do
      {
        v75 = (a5 + v73);
        v76 = vmvnq_s8(*(result + v73 + 16));
        v77 = vmvnq_s8(*(result + v73));
        v78 = vmvnq_s8(*(result + v73 + 48));
        v75[2] = vmvnq_s8(*(result + v73 + 32));
        v75[3] = v78;
        *v75 = v77;
        v75[1] = v76;
        v73 += 64;
        v74 -= 16;
      }

      while (v74);
      v72 = ((((v64 & 0x3FFFFFF0) >> 4) & 0x3FFFFFF) << 6) | 4;
      v71 = 4 * (v64 & 0x3FFFFFF0);
      v79 = v71;
      v80 = 4 * (v64 & 0x3FFFFFF0);
      if (v64 != (v64 & 0x3FFFFFF0))
      {
        goto LABEL_61;
      }

LABEL_64:
      if (v80 < a7)
      {
        if (v61 < 8)
        {
          v88 = v79;
        }

        else if (v58 + (a6 - a2) * v57 < 0x20)
        {
          v88 = v79;
        }

        else if (v61 >= 0x20)
        {
          v89 = v79;
          v90 = v61 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v91 = vmvnq_s8(*(result + v89 + 16));
            v92 = (a5 + v89);
            *v92 = vmvnq_s8(*(result + v89));
            v92[1] = v91;
            v89 += 32;
            v90 -= 32;
          }

          while (v90);
          if (v61 == v67)
          {
            goto LABEL_55;
          }

          v87 = v61 & 0xFFFFFFFFFFFFFFE0;
          if ((v61 & 0x18) != 0)
          {
            goto LABEL_75;
          }

          v88 = v79 + v67;
        }

        else
        {
          v87 = 0;
LABEL_75:
          v88 = v79 + v68;
          v93 = v87 - (v61 & 0xFFFFFFFFFFFFFFF8);
          v94 = v87 + v79;
          do
          {
            *(a5 + v94) = vmvn_s8(*(result + v94));
            v94 += 8;
            v93 += 8;
          }

          while (v93);
          if (v61 == v68)
          {
            goto LABEL_55;
          }
        }

        do
        {
          *(a5 + v88) = ~*(result + v88);
          ++v88;
        }

        while (v88 < a7);
      }

LABEL_55:
      result += a2;
      a5 += a6;
      LODWORD(v8) = v70 - 1;
      ++v57;
      if (!v70)
      {
        return result;
      }
    }

    v71 = 0;
    v72 = 4;
LABEL_61:
    v79 = v72 - 4;
    v81 = v71 + 1;
    do
    {
      v82 = ~*(result + v81);
      v83 = (a5 + v81);
      *(v83 - 1) = ~*(result + v81 - 1);
      *v83 = v82;
      v84 = ~*(result + v81 + 2);
      v83[1] = ~*(result + v81 + 1);
      v83[2] = v84;
      v79 += 4;
      v85 = v81 + 4;
      v86 = v81 + 3;
      v81 += 4;
    }

    while (v86 <= v9);
    v80 = v85 - 1;
    goto LABEL_64;
  }

  if (a7 >= 1)
  {
    v11 = (result + 2);
    v12 = (a5 + 2);
    do
    {
      *(v12 - 2) = ~*(v11 - 2);
      if (a7 != 1)
      {
        *(v12 - 1) = ~*(v11 - 1);
        if (a7 != 2)
        {
          *v12 = ~*v11;
        }
      }

      v11 += a2;
      v12 += a6;
      --a8;
    }

    while (a8);
  }

  return result;
}

unint64_t sub_1001EA2F8(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, int8x16_t *a5, uint64_t a6, int a7, int a8, int *a9)
{
  v9 = *a9;
  if ((*a9 & 0xFFFFFFFE) == 2)
  {
    v10 = v9 != 2;
    v11 = a3;
    v12 = a4;
    a3 = result;
    a4 = a2;
LABEL_3:
    if (v10)
    {
      v13 = 0;
    }

    else
    {
      v13 = 255;
    }

    if (!a8)
    {
      return result;
    }

    v14 = a8 - 1;
    v15 = (a7 - 16);
    if (a7 < 16)
    {
      if (a7 >= 1)
      {
        do
        {
          v16 = 0;
          v17 = v14;
          do
          {
            if (*(v11 + v16) <= *(a3 + v16))
            {
              v18 = v13;
            }

            else
            {
              v18 = ~v13;
            }

            a5->i8[v16++] = v18;
          }

          while (a7 != v16);
          v11 += v12;
          a3 += a4;
          a5 = (a5 + a6);
          --v14;
        }

        while (v17);
      }

      return result;
    }

    v19 = 0;
    v20 = vdupq_n_s8(v13);
    v21 = a5->i64 - a3;
    v22 = a5->i64 - v11;
    v23 = v15 & 0x7FFFFFF0;
    if (v23 + 17 <= a7)
    {
      v24 = a7;
    }

    else
    {
      v24 = (v15 & 0x7FFFFFF0) + 17;
    }

    result = v24 - 16 - v23;
    v112 = result - (v24 & 0xF);
    v25 = vdupq_n_s32(v13);
    v118 = (v24 & 0xFFFFFFFC) - v23 - 16;
    v120 = v24 & 3;
    v110 = (v24 & 0xFFFFFFF0) - v23 - 16;
    v26 = a5 + 1;
    v27 = a3 + 16;
    v122 = v24 & 0xF;
    v114 = v24 - 16 - v122 - v23;
    v116 = v24 - 16 - v120 - v23;
    v28 = (v11 + 16);
    while (1)
    {
      v29 = 0;
      v30 = v14;
      v31 = v28;
      v32 = v27;
      v33 = v26;
      do
      {
        v34 = v33;
        v35 = v32;
        v36 = *(a3 + v29);
        v37 = veorq_s8(v20, vcgtq_u8(*(v11 + v29), v36));
        *(a5 + v29) = v37;
        v38 = v31;
        v29 += 16;
        ++v33;
        ++v32;
        ++v31;
      }

      while (v29 <= v15);
      if (v29 >= a7)
      {
        goto LABEL_27;
      }

      if (result < 4 || (v21 + (a6 - a4) * v19) < 0x10 || (v22 + (a6 - v12) * v19) < 0x10)
      {
        goto LABEL_32;
      }

      if (result >= 0x10)
      {
        v41 = v114;
        v42 = v38;
        v43 = v35;
        v44 = v34;
        do
        {
          v45 = *v42++;
          v46 = v45;
          v47 = *v43++;
          v48 = vmovl_u8(*v47.i8);
          v49 = vmovl_u8(*v46.i8);
          v50 = vcgtq_u32(vmovl_u16(*v49.i8), vmovl_u16(*v48.i8));
          v51 = vcgtq_u32(vmovl_high_u16(v49), vmovl_high_u16(v48));
          v52 = vmovl_high_u8(v47);
          v53 = vmovl_high_u8(v46);
          v54 = vcgtq_u32(vmovl_u16(*v53.i8), vmovl_u16(*v52.i8));
          v36 = vmovl_high_u16(v52);
          v124.val[3] = veorq_s8(v25, vcgtq_u32(vmovl_high_u16(v53), v36));
          v124.val[2] = veorq_s8(v25, v54);
          v124.val[1] = veorq_s8(v25, v51);
          v124.val[0] = veorq_s8(v25, v50);
          v37 = vqtbl4q_s8(v124, xmmword_1003E36F0);
          *v44++ = v37;
          v41 -= 16;
        }

        while (v41);
        if (!v122)
        {
          goto LABEL_27;
        }

        v40 = v112;
        if (v122 <= 3)
        {
          v29 += v110;
          do
          {
LABEL_32:
            if (*(v11 + v29) <= *(a3 + v29))
            {
              v39 = v13;
            }

            else
            {
              v39 = ~v13;
            }

            a5->i8[v29++] = v39;
          }

          while (v29 < a7);
          goto LABEL_27;
        }
      }

      else
      {
        v40 = 0;
      }

      v29 += v118;
      v55 = (v34->i32 + v40);
      v56 = (v35->i32 + v40);
      v57 = (v38->i32 + v40);
      v58 = v116 - v40;
      do
      {
        v59 = *v56++;
        v37.i32[0] = v59;
        v60 = *v57++;
        v36.i32[0] = v60;
        v36 = vmovl_u16(*&vmovl_u8(*v36.i8));
        *v37.i8 = vuzp1_s8(vmovn_s32(veorq_s8(v25, vcgtq_u32(v36, vmovl_u16(*&vmovl_u8(*v37.i8))))), *v20.i8);
        *v55++ = v37.i32[0];
        v58 -= 4;
      }

      while (v58);
      if (v120)
      {
        goto LABEL_32;
      }

LABEL_27:
      v11 += v12;
      a3 += a4;
      a5 = (a5 + a6);
      v14 = v30 - 1;
      ++v19;
      v26 = (v26 + a6);
      v27 += a4;
      v28 = (v28 + v12);
      if (!v30)
      {
        return result;
      }
    }
  }

  v10 = v9 == 1;
  if (v9 > 3)
  {
    if (v9 != 5)
    {
      v11 = result;
      v12 = a2;
      if (v9 != 4)
      {
        return result;
      }

      goto LABEL_3;
    }
  }

  else if (v9)
  {
    v11 = result;
    v12 = a2;
    if (v9 != 1)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v9)
  {
    v61 = 255;
  }

  else
  {
    v61 = 0;
  }

  if (!a8)
  {
    return result;
  }

  v62 = a8 - 1;
  v63 = (a7 - 16);
  if (a7 >= 16)
  {
    v67 = 0;
    v68 = vdupq_n_s8(v61);
    v69 = a5->i64 - result;
    v70 = a5->i64 - a3;
    v71 = v63 & 0x7FFFFFF0;
    if (v71 + 17 <= a7)
    {
      v72 = a7;
    }

    else
    {
      v72 = (v63 & 0x7FFFFFF0) + 17;
    }

    v73 = v72 - 16 - v71;
    v113 = v73 - (v72 & 0xF);
    v74 = vdupq_n_s32(v61);
    v119 = (v72 & 0xFFFFFFFC) - v71 - 16;
    v121 = v72 & 3;
    v111 = (v72 & 0xFFFFFFF0) - v71 - 16;
    v75 = a5 + 1;
    v76 = a3 + 16;
    v123 = v72 & 0xF;
    v115 = v72 - 16 - v123 - v71;
    v117 = v72 - 16 - v121 - v71;
    v77 = result + 16;
    while (1)
    {
      v78 = 0;
      v79 = v62;
      v80 = v77;
      v81 = v76;
      v82 = v75;
      do
      {
        v83 = v82;
        v84 = v81;
        v85 = *(a3 + v78);
        v86 = veorq_s8(v68, vceqq_s8(*(result + v78), v85));
        *(a5 + v78) = v86;
        v87 = v80;
        v78 += 16;
        ++v82;
        ++v81;
        ++v80;
      }

      while (v78 <= v63);
      if (v78 >= a7)
      {
        goto LABEL_67;
      }

      if (v73 < 4 || (v69 + (a6 - a2) * v67) < 0x10 || (v70 + (a6 - a4) * v67) < 0x10)
      {
        goto LABEL_72;
      }

      if (v73 >= 0x10)
      {
        v90 = v115;
        v91 = v87;
        v92 = v84;
        v93 = v83;
        do
        {
          v94 = *v91++;
          v95 = v94;
          v96 = *v92++;
          v97 = vmovl_u8(*v96.i8);
          v98 = vmovl_u8(*v95.i8);
          v99 = vceqq_s32(vmovl_u16(*v98.i8), vmovl_u16(*v97.i8));
          v100 = vceqq_s32(vmovl_high_u16(v98), vmovl_high_u16(v97));
          v101 = vmovl_high_u8(v96);
          v102 = vmovl_high_u8(v95);
          v103 = vceqq_s32(vmovl_u16(*v102.i8), vmovl_u16(*v101.i8));
          v85 = vmovl_high_u16(v101);
          v125.val[3] = veorq_s8(v74, vceqq_s32(vmovl_high_u16(v102), v85));
          v125.val[2] = veorq_s8(v74, v103);
          v125.val[1] = veorq_s8(v74, v100);
          v125.val[0] = veorq_s8(v74, v99);
          v86 = vqtbl4q_s8(v125, xmmword_1003E36F0);
          *v93++ = v86;
          v90 -= 16;
        }

        while (v90);
        if (!v123)
        {
          goto LABEL_67;
        }

        v89 = v113;
        if (v123 <= 3)
        {
          v78 += v111;
          do
          {
LABEL_72:
            if (*(result + v78) == *(a3 + v78))
            {
              v88 = ~v61;
            }

            else
            {
              v88 = v61;
            }

            a5->i8[v78++] = v88;
          }

          while (v78 < a7);
          goto LABEL_67;
        }
      }

      else
      {
        v89 = 0;
      }

      v78 += v119;
      v104 = (v83->i32 + v89);
      v105 = (v84->i32 + v89);
      v106 = (v87->i32 + v89);
      v107 = v117 - v89;
      do
      {
        v108 = *v105++;
        v86.i32[0] = v108;
        v109 = *v106++;
        v85.i32[0] = v109;
        v85 = vmovl_u16(*&vmovl_u8(*v85.i8));
        *v86.i8 = vuzp1_s8(vmovn_s32(veorq_s8(v74, vceqq_s32(v85, vmovl_u16(*&vmovl_u8(*v86.i8))))), *v68.i8);
        *v104++ = v86.i32[0];
        v107 -= 4;
      }

      while (v107);
      if (v121)
      {
        goto LABEL_72;
      }

LABEL_67:
      result += a2;
      a3 += a4;
      a5 = (a5 + a6);
      v62 = v79 - 1;
      ++v67;
      v75 = (v75 + a6);
      v76 += a4;
      v77 += a2;
      if (!v79)
      {
        return result;
      }
    }
  }

  if (a7 >= 1)
  {
    do
    {
      v64 = 0;
      v65 = v62;
      do
      {
        if (*(result + v64) == *(a3 + v64))
        {
          v66 = ~v61;
        }

        else
        {
          v66 = v61;
        }

        a5->i8[v64++] = v66;
      }

      while (a7 != v64);
      result += a2;
      a3 += a4;
      a5 = (a5 + a6);
      --v62;
    }

    while (v65);
  }

  return result;
}

unint64_t sub_1001EA92C(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8, double a9, double a10, __n128 a11, __n128 a12, int *a13)
{
  v13 = *a13;
  if ((*a13 & 0xFFFFFFFE) != 2)
  {
    v14 = v13 == 1;
    if (v13 > 3)
    {
      if (v13 != 5)
      {
        v15 = result;
        v16 = a2;
        if (v13 != 4)
        {
          return result;
        }

        goto LABEL_6;
      }
    }

    else if (v13)
    {
      v15 = result;
      v16 = a2;
      if (v13 != 1)
      {
        return result;
      }

      goto LABEL_6;
    }

    if (v13)
    {
      v96 = 255;
    }

    else
    {
      v96 = 0;
    }

    if (!a8)
    {
      return result;
    }

    v97 = (a7 - 4);
    if (a7 < 4)
    {
      if (a7 >= 1)
      {
        v98 = (a3 + 2);
        v99 = (result + 2);
        v100 = (a5 + 1);
        do
        {
          if (*(v99 - 2) == *(v98 - 2))
          {
            v101 = ~v96;
          }

          else
          {
            v101 = v96;
          }

          *(v100 - 1) = v101;
          if (a7 != 1)
          {
            v102 = *(v99 - 1) == *(v98 - 1) ? ~v96 : v96;
            *v100 = v102;
            if (a7 != 2)
            {
              if (*v99 == *v98)
              {
                v103 = ~v96;
              }

              else
              {
                v103 = v96;
              }

              v100[1] = v103;
            }
          }

          v98 += a4;
          v99 += a2;
          v100 += a6;
          --a8;
        }

        while (a8);
      }

      return result;
    }

    v104 = (a8 - 1);
    v105 = (v97 & 0x7FFFFFFC) + 4;
    v106 = a5 + v105;
    if ((v97 & 0x7FFFFFFC) + 5 <= a7)
    {
      v107 = a7;
    }

    else
    {
      v107 = (v97 & 0x7FFFFFFC) + 5;
    }

    v108 = a5 + v107 + v104 * a6;
    v109 = v107 - (v97 & 0x7FFFFFFC) - 4;
    v110 = v106 + v104 * a6;
    v111 = (v97 >> 2) + 1;
    v113 = a3 + v105 + v104 * a4 > a5 && v110 > a3;
    v114 = result + v105 + v104 * a2 > a5 && v110 > result;
    v115 = a6 | a4;
    v116 = v114 || v113;
    v117 = vdupq_n_s32(v96);
    v120 = v106 < result + v107 + v104 * a2 && result + v105 < v108 || (a6 | a2) < 0;
    v123 = v106 < a3 + v107 + v104 * a4 && a3 + v105 < v108 || v115 < 0 || v120;
    v124 = v107 & 3;
    v125 = (v97 < 0x3C || (v115 | a2) < 0) | v116;
    v126 = (v109 < 4) | v123;
    v127 = v107 & 0xFFFFFFFC;
    while (1)
    {
      v128 = v104;
      v129 = 0;
      if (v125)
      {
        goto LABEL_175;
      }

      v130 = v111 & 0x3FFFFFF0;
      do
      {
        v131 = *(result + v129);
        v132 = *(result + v129 + 16);
        v134 = *(result + v129 + 32);
        v133 = *(result + v129 + 48);
        v136 = *(a3 + v129 + 32);
        v135 = *(a3 + v129 + 48);
        v137 = vmovl_u8(*v135.i8);
        v138 = vmovl_u8(*v133.i8);
        v139 = vceqq_s32(vmovl_high_u16(v138), vmovl_high_u16(v137));
        v140 = vceqq_s32(vmovl_u16(*v138.i8), vmovl_u16(*v137.i8));
        v141 = vmovl_high_u8(v135);
        v142 = vmovl_high_u8(v133);
        v143 = *(a3 + v129);
        v144 = *(a3 + v129 + 16);
        v145 = a5 + v129;
        v146 = vceqq_s32(vmovl_high_u16(v142), vmovl_high_u16(v141));
        v147 = vceqq_s32(vmovl_u16(*v142.i8), vmovl_u16(*v141.i8));
        v148 = vmovl_u8(*v136.i8);
        v149 = vmovl_u8(*v134.i8);
        v150 = vceqq_s32(vmovl_high_u16(v149), vmovl_high_u16(v148));
        v151 = vceqq_s32(vmovl_u16(*v149.i8), vmovl_u16(*v148.i8));
        v152 = vmovl_high_u8(v136);
        v153 = vmovl_high_u8(v134);
        v154 = vceqq_s32(vmovl_high_u16(v153), vmovl_high_u16(v152));
        v155 = vceqq_s32(vmovl_u16(*v153.i8), vmovl_u16(*v152.i8));
        v156 = vmovl_high_u8(v144);
        v157 = vmovl_high_u8(v132);
        v158 = vceqq_s32(vmovl_high_u16(v157), vmovl_high_u16(v156));
        v159 = vceqq_s32(vmovl_u16(*v157.i8), vmovl_u16(*v156.i8));
        v160 = vmovl_u8(*v144.i8);
        v161 = vmovl_u8(*v132.i8);
        v162 = vceqq_s32(vmovl_u16(*v161.i8), vmovl_u16(*v160.i8));
        v163 = vceqq_s32(vmovl_high_u16(v161), vmovl_high_u16(v160));
        v164 = vmovl_high_u8(v143);
        v165 = vmovl_high_u8(v131);
        v166 = vmovl_u8(*v143.i8);
        v167 = vmovl_u8(*v131.i8);
        *v145 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v117, vceqq_s32(vmovl_u16(*v167.i8), vmovl_u16(*v166.i8))), veorq_s8(v117, vceqq_s32(vmovl_high_u16(v167), vmovl_high_u16(v166)))), vuzp1q_s16(veorq_s8(v117, vceqq_s32(vmovl_u16(*v165.i8), vmovl_u16(*v164.i8))), veorq_s8(v117, vceqq_s32(vmovl_high_u16(v165), vmovl_high_u16(v164)))));
        *(v145 + 16) = vuzp1q_s8(vuzp1q_s16(veorq_s8(v117, v162), veorq_s8(v117, v163)), vuzp1q_s16(veorq_s8(v117, v159), veorq_s8(v117, v158)));
        a11 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v117, v140), veorq_s8(v117, v139)), vuzp1q_s16(veorq_s8(v117, v147), veorq_s8(v117, v146)));
        a12 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v117, v151), veorq_s8(v117, v150)), vuzp1q_s16(veorq_s8(v117, v155), veorq_s8(v117, v154)));
        *(v145 + 32) = a12;
        *(v145 + 48) = a11;
        v129 += 64;
        v130 -= 16;
      }

      while (v130);
      v129 = 4 * (v111 & 0x3FFFFFF0);
      if (v111 != (v111 & 0x3FFFFFF0))
      {
LABEL_175:
        do
        {
          v168 = result + v129;
          v169 = a3 + v129;
          if (*(result + v129 + 1) == *(a3 + v129 + 1))
          {
            v170 = ~v96;
          }

          else
          {
            v170 = v96;
          }

          if (*(result + v129) == *(a3 + v129))
          {
            v171 = ~v96;
          }

          else
          {
            v171 = v96;
          }

          v172 = (a5 + v129);
          *v172 = v171;
          v172[1] = v170;
          if (*(v168 + 3) == *(v169 + 3))
          {
            v173 = ~v96;
          }

          else
          {
            v173 = v96;
          }

          if (*(v168 + 2) == *(v169 + 2))
          {
            v174 = ~v96;
          }

          else
          {
            v174 = v96;
          }

          v172[2] = v174;
          v172[3] = v173;
          v129 += 4;
        }

        while (v129 <= v97);
      }

      if (v129 >= a7)
      {
        goto LABEL_139;
      }

      v175 = (v97 & 0x7FFFFFFC) + 4;
      if (v126)
      {
        do
        {
LABEL_168:
          if (*(result + v175) == *(a3 + v175))
          {
            v189 = ~v96;
          }

          else
          {
            v189 = v96;
          }

          *(a5 + v175++) = v189;
        }

        while (v175 < a7);
        goto LABEL_139;
      }

      if (v109 >= 0x10)
      {
        v177 = (v97 & 0x7FFFFFFC) + 4;
        v178 = v109 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v179 = *(result + v177);
          v180 = *(a3 + v177);
          v181 = vmovl_u8(*v180.i8);
          v182 = vmovl_u8(*v179.i8);
          v183 = vceqq_s32(vmovl_u16(*v182.i8), vmovl_u16(*v181.i8));
          v184 = vceqq_s32(vmovl_high_u16(v182), vmovl_high_u16(v181));
          v185 = vmovl_high_u8(v180);
          v186 = vmovl_high_u8(v179);
          v187 = vceqq_s32(vmovl_u16(*v186.i8), vmovl_u16(*v185.i8));
          a12 = vmovl_high_u16(v185);
          v192.val[3] = veorq_s8(v117, vceqq_s32(vmovl_high_u16(v186), a12));
          v192.val[2] = veorq_s8(v117, v187);
          v192.val[1] = veorq_s8(v117, v184);
          v192.val[0] = veorq_s8(v117, v183);
          a11 = vqtbl4q_s8(v192, xmmword_1003E36F0);
          *(a5 + v177) = a11;
          v177 += 16;
          v178 -= 16;
        }

        while (v178);
        if (v109 == (v109 & 0xFFFFFFFFFFFFFFF0))
        {
          goto LABEL_139;
        }

        v176 = v109 & 0xFFFFFFFFFFFFFFF0;
        v175 = v105 + (v109 & 0xFFFFFFFFFFFFFFF0);
        if ((v109 & 0xC) == 0)
        {
          goto LABEL_168;
        }
      }

      else
      {
        v176 = 0;
      }

      v188 = v105 + v176;
      do
      {
        a11.n128_u32[0] = *(a3 + v188);
        a12.n128_u32[0] = *(result + v188);
        a12 = vmovl_u16(*&vmovl_u8(a12.n128_u64[0]));
        a11.n128_u64[0] = vuzp1_s8(vmovn_s32(veorq_s8(v117, vceqq_s32(a12, vmovl_u16(*&vmovl_u8(a11.n128_u64[0]))))), *v117.i8);
        *(a5 + v188) = a11.n128_u32[0];
        v188 += 4;
      }

      while (v127 != v188);
      v175 = v105 + v109 - v124;
      if (v124)
      {
        goto LABEL_168;
      }

LABEL_139:
      result += a2;
      a3 += a4;
      a5 += a6;
      LODWORD(v104) = v128 - 1;
      if (!v128)
      {
        return result;
      }
    }
  }

  v14 = v13 != 2;
  if (v13 == 2)
  {
    v13 = 4;
  }

  else
  {
    v13 = 1;
  }

  v15 = a3;
  v16 = a4;
  a3 = result;
  a4 = a2;
LABEL_6:
  if (v14)
  {
    v17 = 0;
  }

  else
  {
    v17 = 255;
  }

  if (a8)
  {
    v18 = 0;
    v19 = (a7 - 16);
    v20 = a7 - 4;
    v21 = a5 - a3;
    result = a5 - v15;
    v190 = a5 - v15;
    v22 = a5 + 4;
    v23 = vdupq_n_s32(v17);
    v24 = v15;
    v25 = a3;
    do
    {
      if (v13 > 3)
      {
        if (a7 < 16)
        {
LABEL_18:
          LODWORD(i) = 0;
          if (v20 < 0)
          {
            goto LABEL_19;
          }

          goto LABEL_24;
        }

        for (i = 0; i <= v19; i += 16)
        {
          a12 = *(v25 + i);
          a11 = vcgeq_s8(a12, *(v24 + i));
          *(a5 + i) = a11;
        }
      }

      else
      {
        if (a7 < 16)
        {
          goto LABEL_18;
        }

        for (i = 0; i <= v19; i += 16)
        {
          a12 = *(v25 + i);
          a11 = vcgtq_s8(*(v24 + i), a12);
          *(a5 + i) = a11;
        }
      }

      if (i > v20)
      {
LABEL_19:
        if (i >= a7)
        {
          goto LABEL_11;
        }

        goto LABEL_40;
      }

LABEL_24:
      v27 = i;
      v28 = v20 - i;
      if (v28 <= 0x3B || ((v38 = (v28 & 0xFFFFFFFFFFFFFFFCLL) + v27, v39 = v22 + v18 * a6 + v38, a5 + v27 < v15 + v16 * v18 + 4 + v38) ? (v40 = v24 + v27 >= v39) : (v40 = 1), v40 ? (v41 = 0) : (v41 = 1), v25 + v27 < v39 ? (v42 = a5 + v27 >= a3 + a4 * v18 + 4 + v38) : (v42 = 1), !v42 || (v41 & 1) != 0))
      {
        i = v27;
      }

      else
      {
        v43 = (v28 >> 2) + 1;
        i = v27 + 4 * (v43 & 0x7FFFFFFFFFFFFFF0);
        v44 = v43 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v45 = *(v24 + v27);
          v46 = *(v24 + v27 + 16);
          v48 = *(v24 + v27 + 32);
          v47 = *(v24 + v27 + 48);
          result = v25 + v27;
          v50 = *(v25 + v27 + 32);
          v49 = *(v25 + v27 + 48);
          v51 = vmovl_s8(*v49.i8);
          v52 = vmovl_s8(*v47.i8);
          v53 = vcgtq_s32(vmovl_high_s16(v52), vmovl_high_s16(v51));
          v54 = vcgtq_s32(vmovl_s16(*v52.i8), vmovl_s16(*v51.i8));
          v55 = vmovl_high_s8(v49);
          v56 = vmovl_high_s8(v47);
          v57 = *(v25 + v27);
          v58 = *(v25 + v27 + 16);
          v59 = a5 + v27;
          v60 = vcgtq_s32(vmovl_high_s16(v56), vmovl_high_s16(v55));
          v61 = vcgtq_s32(vmovl_s16(*v56.i8), vmovl_s16(*v55.i8));
          v62 = vmovl_s8(*v50.i8);
          v63 = vmovl_s8(*v48.i8);
          v64 = vcgtq_s32(vmovl_high_s16(v63), vmovl_high_s16(v62));
          v65 = vcgtq_s32(vmovl_s16(*v63.i8), vmovl_s16(*v62.i8));
          v66 = vmovl_high_s8(v50);
          v67 = vmovl_high_s8(v48);
          v68 = vcgtq_s32(vmovl_high_s16(v67), vmovl_high_s16(v66));
          v69 = vcgtq_s32(vmovl_s16(*v67.i8), vmovl_s16(*v66.i8));
          v70 = vmovl_high_s8(v58);
          v71 = vmovl_high_s8(v46);
          v72 = vcgtq_s32(vmovl_high_s16(v71), vmovl_high_s16(v70));
          v73 = vcgtq_s32(vmovl_s16(*v71.i8), vmovl_s16(*v70.i8));
          v74 = vmovl_s8(*v58.i8);
          v75 = vmovl_s8(*v46.i8);
          v76 = vcgtq_s32(vmovl_s16(*v75.i8), vmovl_s16(*v74.i8));
          v77 = vcgtq_s32(vmovl_high_s16(v75), vmovl_high_s16(v74));
          v78 = vmovl_high_s8(v57);
          v79 = vmovl_high_s8(v45);
          v80 = vmovl_s8(*v57.i8);
          v81 = vmovl_s8(*v45.i8);
          *v59 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v23, vcgtq_s32(vmovl_s16(*v81.i8), vmovl_s16(*v80.i8))), veorq_s8(v23, vcgtq_s32(vmovl_high_s16(v81), vmovl_high_s16(v80)))), vuzp1q_s16(veorq_s8(v23, vcgtq_s32(vmovl_s16(*v79.i8), vmovl_s16(*v78.i8))), veorq_s8(v23, vcgtq_s32(vmovl_high_s16(v79), vmovl_high_s16(v78)))));
          *(v59 + 16) = vuzp1q_s8(vuzp1q_s16(veorq_s8(v23, v76), veorq_s8(v23, v77)), vuzp1q_s16(veorq_s8(v23, v73), veorq_s8(v23, v72)));
          a11 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v23, v54), veorq_s8(v23, v53)), vuzp1q_s16(veorq_s8(v23, v61), veorq_s8(v23, v60)));
          a12 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v23, v65), veorq_s8(v23, v64)), vuzp1q_s16(veorq_s8(v23, v69), veorq_s8(v23, v68)));
          *(v59 + 32) = a12;
          *(v59 + 48) = a11;
          v27 += 64;
          v44 -= 16;
        }

        while (v44);
        if (v43 == (v43 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_39;
        }
      }

      do
      {
        v29 = v24 + i;
        v30 = v25 + i;
        if (*(v24 + i + 1) <= *(v25 + i + 1))
        {
          v31 = v17;
        }

        else
        {
          v31 = ~v17;
        }

        if (*(v24 + i) <= *(v25 + i))
        {
          v32 = v17;
        }

        else
        {
          v32 = ~v17;
        }

        v33 = (a5 + i);
        *v33 = v32;
        v33[1] = v31;
        if (*(v29 + 3) <= *(v30 + 3))
        {
          v34 = v17;
        }

        else
        {
          v34 = ~v17;
        }

        if (*(v29 + 2) <= *(v30 + 2))
        {
          result = v17;
        }

        else
        {
          result = ~v17;
        }

        v33[2] = result;
        v33[3] = v34;
        i += 4;
      }

      while (i <= v20);
LABEL_39:
      if (i >= a7)
      {
        goto LABEL_11;
      }

LABEL_40:
      v35 = i;
      v36 = a7 - i;
      if (v36 < 4)
      {
        v37 = v35;
        goto LABEL_42;
      }

      if (v21 + (a6 - a4) * v18 < 0x10)
      {
        v37 = v35;
        goto LABEL_42;
      }

      result = v190 + (a6 - v16) * v18;
      if (result < 0x10)
      {
        v37 = v35;
        goto LABEL_42;
      }

      if (v36 >= 0x10)
      {
        v82 = v36 & 0xFFFFFFFFFFFFFFF0;
        v83 = v35;
        v84 = v36 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v85 = *(v24 + v83);
          v86 = *(v25 + v83);
          v87 = vmovl_s8(*v86.i8);
          v88 = vmovl_s8(*v85.i8);
          v89 = vcgtq_s32(vmovl_s16(*v88.i8), vmovl_s16(*v87.i8));
          v90 = vcgtq_s32(vmovl_high_s16(v88), vmovl_high_s16(v87));
          v91 = vmovl_high_s8(v86);
          v92 = vmovl_high_s8(v85);
          v93 = vcgtq_s32(vmovl_s16(*v92.i8), vmovl_s16(*v91.i8));
          a12 = vmovl_high_s16(v91);
          v191.val[3] = veorq_s8(v23, vcgtq_s32(vmovl_high_s16(v92), a12));
          v191.val[2] = veorq_s8(v23, v93);
          v191.val[1] = veorq_s8(v23, v90);
          v191.val[0] = veorq_s8(v23, v89);
          a11 = vqtbl4q_s8(v191, xmmword_1003E36F0);
          *(a5 + v83) = a11;
          v83 += 16;
          v84 -= 16;
        }

        while (v84);
        if (v36 == v82)
        {
          goto LABEL_11;
        }

        if ((v36 & 0xC) == 0)
        {
          v37 = v82 + v35;
          do
          {
LABEL_42:
            if (*(v24 + v37) <= *(v25 + v37))
            {
              result = v17;
            }

            else
            {
              result = ~v17;
            }

            *(a5 + v37++) = result;
          }

          while (a7 != v37);
          goto LABEL_11;
        }
      }

      else
      {
        v82 = 0;
      }

      v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL) + v35;
      v94 = v82 - (v36 & 0xFFFFFFFFFFFFFFFCLL);
      v95 = v82 + v35;
      do
      {
        a11.n128_u32[0] = *(v25 + v95);
        a12.n128_u32[0] = *(v24 + v95);
        a12 = vmovl_s16(*&vmovl_s8(a12.n128_u64[0]));
        a11.n128_u64[0] = vuzp1_s8(vmovn_s32(veorq_s8(v23, vcgtq_s32(a12, vmovl_s16(*&vmovl_s8(a11.n128_u64[0]))))), *v23.i8);
        *(a5 + v95) = a11.n128_u32[0];
        v95 += 4;
        v94 += 4;
      }

      while (v94);
      if (v36 != (v36 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_42;
      }

LABEL_11:
      v24 += v16;
      v25 += a4;
      a5 += a6;
      ++v18;
      --a8;
    }

    while (a8);
  }

  return result;
}

unint64_t sub_1001EB41C(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, int8x16_t *a5, uint64_t a6, int a7, int a8, int *a9)
{
  v9 = *a9;
  v10 = a2 >> 1;
  v11 = a4 >> 1;
  v181 = a6;
  v182 = a7;
  if ((*a9 & 0xFFFFFFFE) != 2)
  {
    v12 = v9 == 1;
    if (v9 > 3)
    {
      if (v9 != 5)
      {
        v13 = result;
        v14 = a2 >> 1;
        if (v9 != 4)
        {
          return result;
        }

        goto LABEL_6;
      }
    }

    else if (v9)
    {
      v13 = result;
      v14 = a2 >> 1;
      if (v9 != 1)
      {
        return result;
      }

      goto LABEL_6;
    }

    if (v9)
    {
      v95 = 255;
    }

    else
    {
      v95 = 0;
    }

    if (!a8)
    {
      return result;
    }

    v96 = (a7 - 4);
    if (a7 < 4)
    {
      if (a7 >= 1)
      {
        v97 = (a3 + 4);
        v98 = (result + 4);
        v99 = &a5->i8[1];
        do
        {
          if (*(v98 - 2) == *(v97 - 2))
          {
            v100 = ~v95;
          }

          else
          {
            v100 = v95;
          }

          *(v99 - 1) = v100;
          if (a7 != 1)
          {
            v101 = *(v98 - 1) == *(v97 - 1) ? ~v95 : v95;
            *v99 = v101;
            if (a7 != 2)
            {
              if (*v98 == *v97)
              {
                v102 = ~v95;
              }

              else
              {
                v102 = v95;
              }

              v99[1] = v102;
            }
          }

          v97 += v11;
          v98 += v10;
          v99 += a6;
          --a8;
        }

        while (a8);
      }

      return result;
    }

    v103 = (a8 - 1);
    v104 = a7;
    v105 = v96 & 0x7FFFFFFC;
    v106 = v105 + 4;
    v107 = a5->u64 + v105 + 4;
    if (v105 + 5 <= a7)
    {
      v108 = a7;
    }

    else
    {
      v108 = (v96 & 0x7FFFFFFC) + 5;
    }

    v109 = a5->u64 + v108 + v103 * a6;
    v110 = ((2 * (a7 - 4)) & 0xFFFFFFF8) + 8;
    v111 = result + v110;
    v112 = a3 + v110;
    v113 = v108 - v105 - 4;
    v114 = v107 + v103 * a6;
    v115 = result + 2 * (v10 * v103 + v105) + 8;
    v116 = a3 + 2 * (v11 * v103 + v105) + 8;
    v117 = (v96 >> 2) + 1;
    v119 = v116 > a5 && v114 > a3;
    v120 = v115 > a5 && v114 > result;
    v121 = a6 | a4;
    if (v120)
    {
      v119 = 1;
    }

    v122 = vdupq_n_s32(v95);
    v125 = v107 < result + 2 * (v10 * v103 + v108) && v111 < v109 || ((a6 | a2) & 0x8000000000000000) != 0;
    v128 = v107 < a3 + 2 * (v11 * v103 + v108) && v112 < v109 || v121 < 0 || v125;
    v129 = v108 & 3;
    v130 = v96 < 0x3C || ((v121 | a2) & 0x8000000000000000) != 0 || v119;
    v131 = (v113 < 4) | v128;
    v132 = 2 * v10;
    v133 = 2 * v11;
    v134 = v108 & 0xFFFFFFFC;
    while (1)
    {
      v135 = v103;
      v136 = 0;
      if (v130)
      {
        goto LABEL_154;
      }

      v137 = v117 & 0x3FFFFFF0;
      v138 = a5;
      do
      {
        v140 = *(result + v136 + 32);
        v139 = *(result + v136 + 48);
        v142 = *(result + v136 + 64);
        v141 = *(result + v136 + 80);
        v143 = *(result + v136 + 96);
        v144 = *(result + v136 + 112);
        v145 = *(a3 + v136 + 96);
        v146 = *(a3 + v136 + 112);
        v147 = vceqq_s32(vmovl_high_u16(v143), vmovl_high_u16(v145));
        v148 = vceqq_s32(vmovl_u16(*v143.i8), vmovl_u16(*v145.i8));
        v149 = vceqq_s32(vmovl_high_u16(v144), vmovl_high_u16(v146));
        v150 = vceqq_s32(vmovl_u16(*v144.i8), vmovl_u16(*v146.i8));
        v152 = *(a3 + v136 + 64);
        v151 = *(a3 + v136 + 80);
        v153 = vceqq_s32(vmovl_high_u16(v142), vmovl_high_u16(v152));
        v154 = vceqq_s32(vmovl_u16(*v142.i8), vmovl_u16(*v152.i8));
        v155 = vceqq_s32(vmovl_high_u16(v141), vmovl_high_u16(v151));
        v156 = vceqq_s32(vmovl_u16(*v141.i8), vmovl_u16(*v151.i8));
        v158 = *(a3 + v136 + 32);
        v157 = *(a3 + v136 + 48);
        *v138 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v122, vceqq_s32(vmovl_u16(*(result + v136)), vmovl_u16(*(a3 + v136)))), veorq_s8(v122, vceqq_s32(vmovl_high_u16(*(result + v136)), vmovl_high_u16(*(a3 + v136))))), vuzp1q_s16(veorq_s8(v122, vceqq_s32(vmovl_u16(*(result + v136 + 16)), vmovl_u16(*(a3 + v136 + 16)))), veorq_s8(v122, vceqq_s32(vmovl_high_u16(*(result + v136 + 16)), vmovl_high_u16(*(a3 + v136 + 16))))));
        v138[1] = vuzp1q_s8(vuzp1q_s16(veorq_s8(v122, vceqq_s32(vmovl_u16(*v140.i8), vmovl_u16(*v158.i8))), veorq_s8(v122, vceqq_s32(vmovl_high_u16(v140), vmovl_high_u16(v158)))), vuzp1q_s16(veorq_s8(v122, vceqq_s32(vmovl_u16(*v139.i8), vmovl_u16(*v157.i8))), veorq_s8(v122, vceqq_s32(vmovl_high_u16(v139), vmovl_high_u16(v157)))));
        v138[2] = vuzp1q_s8(vuzp1q_s16(veorq_s8(v122, v154), veorq_s8(v122, v153)), vuzp1q_s16(veorq_s8(v122, v156), veorq_s8(v122, v155)));
        v138[3] = vuzp1q_s8(vuzp1q_s16(veorq_s8(v122, v148), veorq_s8(v122, v147)), vuzp1q_s16(veorq_s8(v122, v150), veorq_s8(v122, v149)));
        v138 += 4;
        v136 += 128;
        v137 -= 16;
      }

      while (v137);
      v136 = 4 * (v117 & 0x3FFFFFF0);
      if (v117 != (v117 & 0x3FFFFFF0))
      {
LABEL_154:
        v159 = 2 * v136 + 6;
        do
        {
          v160 = result + 2 * v136;
          v161 = a3 + 2 * v136;
          if (*(v160 + 2) == *(v161 + 2))
          {
            v162 = ~v95;
          }

          else
          {
            v162 = v95;
          }

          if (*(result + v159 - 6) == *(a3 + v159 - 6))
          {
            v163 = ~v95;
          }

          else
          {
            v163 = v95;
          }

          v164 = &a5->i8[v136];
          *v164 = v163;
          v164[1] = v162;
          if (*(result + v159) == *(a3 + v159))
          {
            v165 = ~v95;
          }

          else
          {
            v165 = v95;
          }

          if (*(v160 + 4) == *(v161 + 4))
          {
            v166 = ~v95;
          }

          else
          {
            v166 = v95;
          }

          v164[2] = v166;
          v164[3] = v165;
          v136 += 4;
          v159 += 8;
        }

        while (v136 <= v96);
      }

      if (v136 >= v182)
      {
        goto LABEL_149;
      }

      v167 = (v96 & 0x7FFFFFFC) + 4;
      if (v131)
      {
        do
        {
LABEL_179:
          if (*(result + 2 * v167) == *(a3 + 2 * v167))
          {
            v178 = ~v95;
          }

          else
          {
            v178 = v95;
          }

          a5->i8[v167++] = v178;
        }

        while (v167 < v104);
        goto LABEL_149;
      }

      if (v113 >= 0x10)
      {
        v169 = (v96 & 0x7FFFFFFC) + 4;
        v170 = 8 * ((v96 >> 2) & 0x1FFFFFFF) + 8;
        v171 = v113 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v173 = *(result + v170);
          v172 = *(result + v170 + 16);
          v175 = *(a3 + v170);
          v174 = *(a3 + v170 + 16);
          v184.val[3] = veorq_s8(v122, vceqq_s32(vmovl_high_u16(v172), vmovl_high_u16(v174)));
          v184.val[1] = veorq_s8(v122, vceqq_s32(vmovl_high_u16(v173), vmovl_high_u16(v175)));
          v184.val[2] = veorq_s8(v122, vceqq_s32(vmovl_u16(*v172.i8), vmovl_u16(*v174.i8)));
          v184.val[0] = veorq_s8(v122, vceqq_s32(vmovl_u16(*v173.i8), vmovl_u16(*v175.i8)));
          *(a5 + v169) = vqtbl4q_s8(v184, xmmword_1003E36F0);
          v170 += 32;
          v169 += 16;
          v171 -= 16;
        }

        while (v171);
        if (v113 == (v113 & 0xFFFFFFFFFFFFFFF0))
        {
          goto LABEL_149;
        }

        v168 = v113 & 0xFFFFFFFFFFFFFFF0;
        v167 = v106 + (v113 & 0xFFFFFFFFFFFFFFF0);
        if ((v113 & 0xC) == 0)
        {
          goto LABEL_179;
        }
      }

      else
      {
        v168 = 0;
      }

      v176 = v106 + v168;
      v177 = 8 * ((v96 >> 2) & 0x1FFFFFFF) + 8 + 2 * v168;
      do
      {
        *(a5->i32 + v176) = vuzp1_s8(vmovn_s32(veorq_s8(v122, vceqq_s32(vmovl_u16(*(result + v177)), vmovl_u16(*(a3 + v177))))), *v122.i8).u32[0];
        v176 += 4;
        v177 += 8;
      }

      while (v134 != v176);
      v167 = v106 + v113 - v129;
      if (v129)
      {
        goto LABEL_179;
      }

LABEL_149:
      a5 = (a5 + a6);
      LODWORD(v103) = v135 - 1;
      result += v132;
      a3 += v133;
      if (!v135)
      {
        return result;
      }
    }
  }

  v12 = v9 != 2;
  if (v9 == 2)
  {
    v9 = 4;
  }

  else
  {
    v9 = 1;
  }

  v13 = a3;
  v14 = a4 >> 1;
  a3 = result;
  v11 = a2 >> 1;
LABEL_6:
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = 255;
  }

  if (a8)
  {
    v16 = 0;
    v17 = (a7 - 8);
    v18 = a7 - 4;
    v19 = a7;
    v179 = 2 * a7;
    v20 = 2 * v11;
    v21 = vdupq_n_s32(v15);
    v22 = 2 * v14;
    result = v13;
    v23 = a3;
    v24 = a5;
    v180 = v22;
    do
    {
      if (v9 > 3)
      {
        if (a7 < 8)
        {
LABEL_18:
          LODWORD(i) = 0;
          v27 = &a5->i8[v16 * a6];
          v28 = a3 + v20 * v16;
          v29 = v13 + v22 * v16;
          if (v18 < 0)
          {
            goto LABEL_19;
          }

          goto LABEL_24;
        }

        v30 = 0;
        for (i = 0; i <= v17; i += 8)
        {
          *&v24->i8[i] = vmovn_s16(vcgeq_u16(*(v23 + v30), *(result + v30)));
          v30 += 16;
        }
      }

      else
      {
        if (a7 < 8)
        {
          goto LABEL_18;
        }

        v25 = 0;
        for (i = 0; i <= v17; i += 8)
        {
          *&v24->i8[i] = vmovn_s16(vcgtq_u16(*(result + v25), *(v23 + v25)));
          v25 += 16;
        }
      }

      v27 = &a5->i8[v16 * a6];
      v28 = a3 + v20 * v16;
      v29 = v13 + v22 * v16;
      if (i > v18)
      {
LABEL_19:
        if (i >= a7)
        {
          goto LABEL_11;
        }

        goto LABEL_41;
      }

LABEL_24:
      v31 = v20;
      v32 = v13;
      v33 = i;
      v34 = v18 - i;
      if (v34 <= 0x3B || ((v47 = v34 >> 2, v48 = &v27[v33 + 4 + (v34 & 0xFFFFFFFFFFFFFFFCLL)], v49 = 2 * v33, v50 = 2 * v33 + 8 * v47, v51 = v28 + 8 + v50, v24->u64 + v33 < v29 + 8 + v50) ? (v52 = result + 2 * v33 >= v48) : (v52 = 1), v52 ? (v53 = 0) : (v53 = 1), v23 + 2 * v33 < v48 ? (v54 = v24->u64 + v33 >= v51) : (v54 = 1), !v54 || (v53 & 1) != 0))
      {
        i = v33;
      }

      else
      {
        v55 = v47 + 1;
        v56 = (v47 + 1) & 0x7FFFFFFFFFFFFFF0;
        i = v33 + 4 * v56;
        v57 = v56;
        do
        {
          v59 = *(result + v49 + 32);
          v58 = *(result + v49 + 48);
          v61 = *(result + v49 + 64);
          v60 = *(result + v49 + 80);
          v62 = *(result + v49 + 96);
          v63 = *(result + v49 + 112);
          v64 = *(v23 + v49 + 96);
          v65 = *(v23 + v49 + 112);
          v66 = vcgtq_u32(vmovl_high_u16(v62), vmovl_high_u16(v64));
          v67 = vcgtq_u32(vmovl_u16(*v62.i8), vmovl_u16(*v64.i8));
          v68 = vcgtq_u32(vmovl_high_u16(v63), vmovl_high_u16(v65));
          v69 = vcgtq_u32(vmovl_u16(*v63.i8), vmovl_u16(*v65.i8));
          v71 = *(v23 + v49 + 64);
          v70 = *(v23 + v49 + 80);
          v72 = vcgtq_u32(vmovl_high_u16(v61), vmovl_high_u16(v71));
          v73 = vcgtq_u32(vmovl_u16(*v61.i8), vmovl_u16(*v71.i8));
          v74 = vcgtq_u32(vmovl_high_u16(v60), vmovl_high_u16(v70));
          v75 = vcgtq_u32(vmovl_u16(*v60.i8), vmovl_u16(*v70.i8));
          v77 = *(v23 + v49 + 32);
          v76 = *(v23 + v49 + 48);
          v78 = (v24 + v33);
          *v78 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v21, vcgtq_u32(vmovl_u16(*(result + v49)), vmovl_u16(*(v23 + v49)))), veorq_s8(v21, vcgtq_u32(vmovl_high_u16(*(result + v49)), vmovl_high_u16(*(v23 + v49))))), vuzp1q_s16(veorq_s8(v21, vcgtq_u32(vmovl_u16(*(result + v49 + 16)), vmovl_u16(*(v23 + v49 + 16)))), veorq_s8(v21, vcgtq_u32(vmovl_high_u16(*(result + v49 + 16)), vmovl_high_u16(*(v23 + v49 + 16))))));
          v78[1] = vuzp1q_s8(vuzp1q_s16(veorq_s8(v21, vcgtq_u32(vmovl_u16(*v59.i8), vmovl_u16(*v77.i8))), veorq_s8(v21, vcgtq_u32(vmovl_high_u16(v59), vmovl_high_u16(v77)))), vuzp1q_s16(veorq_s8(v21, vcgtq_u32(vmovl_u16(*v58.i8), vmovl_u16(*v76.i8))), veorq_s8(v21, vcgtq_u32(vmovl_high_u16(v58), vmovl_high_u16(v76)))));
          v78[2] = vuzp1q_s8(vuzp1q_s16(veorq_s8(v21, v73), veorq_s8(v21, v72)), vuzp1q_s16(veorq_s8(v21, v75), veorq_s8(v21, v74)));
          v78[3] = vuzp1q_s8(vuzp1q_s16(veorq_s8(v21, v67), veorq_s8(v21, v66)), vuzp1q_s16(veorq_s8(v21, v69), veorq_s8(v21, v68)));
          v33 += 64;
          v49 += 128;
          v57 -= 16;
        }

        while (v57);
        if (v55 == v56)
        {
          goto LABEL_40;
        }
      }

      v35 = 2 * i + 6;
      do
      {
        v36 = result + 2 * i;
        v37 = v23 + 2 * i;
        if (*(v36 + 2) <= *(v37 + 2))
        {
          v38 = v15;
        }

        else
        {
          v38 = ~v15;
        }

        if (*(result + v35 - 6) <= *(v23 + v35 - 6))
        {
          v39 = v15;
        }

        else
        {
          v39 = ~v15;
        }

        v40 = &v24->i8[i];
        *v40 = v39;
        v40[1] = v38;
        if (*(result + v35) <= *(v23 + v35))
        {
          v41 = v15;
        }

        else
        {
          v41 = ~v15;
        }

        if (*(v36 + 4) <= *(v37 + 4))
        {
          v42 = v15;
        }

        else
        {
          v42 = ~v15;
        }

        v40[2] = v42;
        v40[3] = v41;
        i += 4;
        v35 += 8;
      }

      while (i <= v18);
LABEL_40:
      v13 = v32;
      a6 = v181;
      a7 = v182;
      v20 = v31;
      v22 = v180;
      if (i >= v182)
      {
        goto LABEL_11;
      }

LABEL_41:
      v43 = i;
      v44 = v19 - i;
      if (v44 < 4)
      {
        v45 = v43;
        goto LABEL_43;
      }

      v79 = &v27[v19];
      v80 = v28 + v179;
      v81 = 2 * v43;
      v83 = v24->u64 + v43 < v29 + v179 && result + 2 * v43 < v79;
      if (v23 + 2 * v43 < v79 && v24->u64 + v43 < v80)
      {
        v45 = v43;
        goto LABEL_43;
      }

      if (v83)
      {
        v45 = v43;
        goto LABEL_43;
      }

      if (v44 >= 0x10)
      {
        v85 = v44 & 0xFFFFFFFFFFFFFFF0;
        v86 = v43;
        v87 = v44 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v89 = *(result + v81);
          v88 = *(result + v81 + 16);
          v91 = *(v23 + v81);
          v90 = *(v23 + v81 + 16);
          v183.val[3] = veorq_s8(v21, vcgtq_u32(vmovl_high_u16(v88), vmovl_high_u16(v90)));
          v183.val[1] = veorq_s8(v21, vcgtq_u32(vmovl_high_u16(v89), vmovl_high_u16(v91)));
          v183.val[2] = veorq_s8(v21, vcgtq_u32(vmovl_u16(*v88.i8), vmovl_u16(*v90.i8)));
          v183.val[0] = veorq_s8(v21, vcgtq_u32(vmovl_u16(*v89.i8), vmovl_u16(*v91.i8)));
          *(v24 + v86) = vqtbl4q_s8(v183, xmmword_1003E36F0);
          v81 += 32;
          v86 += 16;
          v87 -= 16;
        }

        while (v87);
        if (v44 == v85)
        {
          goto LABEL_11;
        }

        if ((v44 & 0xC) == 0)
        {
          v45 = v85 + v43;
          do
          {
LABEL_43:
            if (*(result + 2 * v45) <= *(v23 + 2 * v45))
            {
              v46 = v15;
            }

            else
            {
              v46 = ~v15;
            }

            v24->i8[v45++] = v46;
          }

          while (v19 != v45);
          goto LABEL_11;
        }
      }

      else
      {
        v85 = 0;
      }

      v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL) + v43;
      v92 = v85 - (v44 & 0xFFFFFFFFFFFFFFFCLL);
      v93 = v85 + v43;
      v94 = 2 * v93;
      do
      {
        *(v24->i32 + v93) = vuzp1_s8(vmovn_s32(veorq_s8(v21, vcgtq_u32(vmovl_u16(*(result + v94)), vmovl_u16(*(v23 + v94))))), *v21.i8).u32[0];
        v94 += 8;
        v93 += 4;
        v92 += 4;
      }

      while (v92);
      if (v44 != (v44 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_43;
      }

LABEL_11:
      result += v22;
      v23 += v20;
      v24 = (v24 + a6);
      ++v16;
      --a8;
    }

    while (a8);
  }

  return result;
}

uint64_t sub_1001EBFB4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, int8x16_t *a5, uint64_t a6, int a7, int a8, int *a9)
{
  v9 = *a9;
  v10 = a4 >> 1;
  v167 = a6;
  if ((*a9 & 0xFFFFFFFE) == 2)
  {
    v11 = v9 != 2;
    v12 = a3;
    v13 = a4 >> 1;
    a3 = result;
    v10 = a2 >> 1;
LABEL_3:
    if (v11)
    {
      v14 = 0;
    }

    else
    {
      v14 = 255;
    }

    if (!a8)
    {
      return result;
    }

    v15 = a8 - 1;
    v16 = (a7 - 16);
    if (a7 < 16)
    {
      if (a7 >= 1)
      {
        v17 = 2 * v13;
        v18 = 2 * v10;
        do
        {
          v19 = 0;
          v20 = v15;
          do
          {
            if (*(v12 + 2 * v19) <= *(a3 + 2 * v19))
            {
              v21 = v14;
            }

            else
            {
              v21 = ~v14;
            }

            a5->i8[v19++] = v21;
          }

          while (a7 != v19);
          a5 = (a5 + a6);
          --v15;
          v12 += v17;
          a3 += v18;
        }

        while (v20);
      }

      return result;
    }

    v22 = 0;
    v23 = a7;
    v24 = vdupq_n_s8(v14);
    v25 = v16 & 0x7FFFFFF0;
    v26 = v25 + 17;
    if (v25 + 17 <= a7)
    {
      v26 = a7;
    }

    v156 = v26 - v25;
    result = 2 * v10;
    v162 = 2 * v26 - ((2 * (a7 - 16)) & 0xFFFFFFE0);
    v27 = 2 * v13;
    v28 = v26 - 16;
    v29 = v26 - 16 - v25;
    v30 = v26 & 0xF;
    v31 = vdupq_n_s32(v14);
    v32 = v26 & 3;
    v158 = v29;
    v150 = v29 - v32;
    v152 = v32;
    v154 = v30;
    v146 = v29 - v30;
    v147 = v28 - v30 - v25;
    v33 = (v12 + 32);
    v34 = (a3 + 32);
    v35 = a5 + 1;
    v148 = v28 - v32 - v25;
    v36 = a3;
    v37 = v12;
    v38 = a5;
    v164 = result;
    v160 = v27;
    while (1)
    {
      v39 = 0;
      v40 = 0;
      v168 = v15;
      v41 = v22 * a6;
      v42 = result * v22;
      v43 = result * v22 + 32;
      v44 = v162 + v42;
      v45 = v27 * v22;
      v46 = v27 * v22 + 32;
      v47 = v162 + v45;
      v48 = v35;
      v49 = v34;
      v50 = v33;
      v51 = 16;
      do
      {
        v52 = (v37 + 2 * v40);
        v53 = (v36 + 2 * v40);
        v54 = v52[1];
        v55 = v53[1];
        v56 = vcgtq_s16(*v52, *v53);
        v57 = v51;
        v58 = v39;
        v59 = v50;
        v60 = v49;
        v61 = v48;
        v38[v40 / 0x10] = veorq_s8(vqmovn_high_u16(vqmovn_u16(v56), vcgtq_s16(v54, v55)), v24);
        v40 += 16;
        v51 += 16;
        ++v39;
        v50 += 2;
        v49 += 2;
        ++v48;
      }

      while (v40 <= v16);
      if (v40 >= a7)
      {
        goto LABEL_27;
      }

      if (v158 < 4)
      {
        v62 = v57;
        goto LABEL_33;
      }

      v64 = a5[v58].i64 + v41;
      v65 = v64 + 16;
      v66 = v64 + v156;
      v67 = a3 + 32 * v58 + v43;
      v68 = v12 + 32 * v58 + v46;
      v70 = v64 + 16 < (v12 + v47 + 32 * v58) && v68 < v66;
      if (v67 < v66 && v65 < a3 + v44 + 32 * v58)
      {
        v62 = v57;
        goto LABEL_33;
      }

      if (v70)
      {
        v62 = v57;
        goto LABEL_33;
      }

      if (v158 >= 0x10)
      {
        v73 = v61;
        v74 = v147;
        do
        {
          v76 = *v59;
          v75 = v59[1];
          v59 += 2;
          v78 = *v60;
          v77 = v60[1];
          v60 += 2;
          v170.val[3] = veorq_s8(v31, vcgtq_s32(vmovl_high_s16(v75), vmovl_high_s16(v77)));
          v170.val[1] = veorq_s8(v31, vcgtq_s32(vmovl_high_s16(v76), vmovl_high_s16(v78)));
          v170.val[2] = veorq_s8(v31, vcgtq_s32(vmovl_s16(*v75.i8), vmovl_s16(*v77.i8)));
          v170.val[0] = veorq_s8(v31, vcgtq_s32(vmovl_s16(*v76.i8), vmovl_s16(*v78.i8)));
          *v73++ = vqtbl4q_s8(v170, xmmword_1003E36F0);
          v74 -= 16;
        }

        while (v74);
        if (!v154)
        {
          goto LABEL_27;
        }

        v72 = v146;
        if (v154 <= 3)
        {
          v62 = v57 + v146;
          do
          {
LABEL_33:
            if (*(v37 + 2 * v62) <= *(v36 + 2 * v62))
            {
              v63 = v14;
            }

            else
            {
              v63 = ~v14;
            }

            v38->i8[v62++] = v63;
          }

          while (v62 < v23);
          goto LABEL_27;
        }
      }

      else
      {
        v72 = 0;
      }

      v62 = v57 + v150;
      v79 = v148 - v72;
      v80 = 2 * (v72 + v57);
      v81 = (v61->i32 + v72);
      do
      {
        *v81++ = vuzp1_s8(vmovn_s32(veorq_s8(v31, vcgtq_s32(vmovl_s16(*(v37 + v80)), vmovl_s16(*(v36 + v80))))), *v24.i8).u32[0];
        v80 += 8;
        v79 -= 4;
      }

      while (v79);
      if (v152)
      {
        goto LABEL_33;
      }

LABEL_27:
      v27 = v160;
      v37 += v160;
      result = v164;
      v36 += v164;
      a6 = v167;
      v38 = (v38 + v167);
      v15 = v168 - 1;
      ++v22;
      v33 = (v33 + v160);
      v34 = (v34 + v164);
      v35 = (v35 + v167);
      if (!v168)
      {
        return result;
      }
    }
  }

  v11 = v9 == 1;
  if (v9 > 3)
  {
    if (v9 != 5)
    {
      v12 = result;
      v13 = a2 >> 1;
      if (v9 != 4)
      {
        return result;
      }

      goto LABEL_3;
    }
  }

  else if (v9)
  {
    v12 = result;
    v13 = a2 >> 1;
    if (v9 != 1)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v9)
  {
    v82 = 255;
  }

  else
  {
    v82 = 0;
  }

  if (!a8)
  {
    return result;
  }

  v83 = a8 - 1;
  v84 = (a7 - 16);
  if (a7 >= 16)
  {
    v89 = 0;
    v90 = a7;
    v91 = vdupq_n_s8(v82);
    v92 = v84 & 0x7FFFFFF0;
    v93 = v92 + 17;
    if (v92 + 17 <= a7)
    {
      v93 = a7;
    }

    v163 = v93 - v92;
    v94 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v161 = 2 * v93 - ((2 * (a7 - 16)) & 0xFFFFFFE0);
    v95 = a4 & 0xFFFFFFFFFFFFFFFELL;
    v96 = v93 - 16 - v92;
    v149 = v96 - (v93 & 0xF);
    v97 = vdupq_n_s32(v82);
    v165 = v96;
    v155 = v96 - (v93 & 3);
    v157 = v93 & 3;
    v159 = v93 & 0xF;
    v151 = v93 - 16 - v159 - v92;
    v98 = result + 32;
    v99 = (a3 + 32);
    v100 = a5 + 1;
    v153 = v93 - 16 - v157 - v92;
    v101 = a3;
    v102 = result;
    v103 = a5;
    v169 = a2 & 0xFFFFFFFFFFFFFFFELL;
    while (1)
    {
      v104 = 0;
      v105 = 0;
      v106 = v83;
      v107 = v89 * a6;
      v108 = v94 * v89;
      v109 = v100;
      v110 = v99;
      v111 = v98;
      v112 = 16;
      do
      {
        v113 = (v102 + 2 * v105);
        v114 = (v101 + 2 * v105);
        v115 = v113[1];
        v116 = v114[1];
        v117 = vceqq_s16(*v113, *v114);
        v118 = v112;
        v119 = v104;
        v120 = v111;
        v121 = v110;
        v122 = v109;
        v103[v105 / 0x10] = veorq_s8(vqmovn_high_u16(vqmovn_u16(v117), vceqq_s16(v115, v116)), v91);
        v105 += 16;
        v112 += 16;
        ++v104;
        v111 += 2;
        v110 += 2;
        ++v109;
      }

      while (v105 <= v84);
      if (v105 >= a7)
      {
        goto LABEL_79;
      }

      if (v165 < 4)
      {
        v123 = v118;
        goto LABEL_85;
      }

      v125 = a5[v119].i64 + v107;
      v126 = v125 + 16;
      v127 = v125 + v163;
      v128 = 32 * v119;
      v129 = result + v108 + 32 * v119;
      v130 = v129 + 32;
      v131 = v129 + v161;
      v132 = a3 + v95 * v89 + v128;
      v134 = v126 < v132 + v161 && v132 + 32 < v127;
      if (v130 < v127 && v126 < v131)
      {
        v123 = v118;
        goto LABEL_85;
      }

      if (v134)
      {
        v123 = v118;
        goto LABEL_85;
      }

      if (v165 >= 0x10)
      {
        v137 = v122;
        v138 = v151;
        do
        {
          v140 = *v120;
          v139 = v120[1];
          v120 += 2;
          v142 = *v121;
          v141 = v121[1];
          v121 += 2;
          v171.val[3] = veorq_s8(v97, vceqq_s32(vmovl_high_u16(v139), vmovl_high_u16(v141)));
          v171.val[1] = veorq_s8(v97, vceqq_s32(vmovl_high_u16(v140), vmovl_high_u16(v142)));
          v171.val[2] = veorq_s8(v97, vceqq_s32(vmovl_u16(*v139.i8), vmovl_u16(*v141.i8)));
          v171.val[0] = veorq_s8(v97, vceqq_s32(vmovl_u16(*v140.i8), vmovl_u16(*v142.i8)));
          *v137++ = vqtbl4q_s8(v171, xmmword_1003E36F0);
          v138 -= 16;
        }

        while (v138);
        if (!v159)
        {
          goto LABEL_79;
        }

        v136 = v149;
        if (v159 <= 3)
        {
          v123 = v118 + v149;
          do
          {
LABEL_85:
            if (*(v102 + 2 * v123) == *(v101 + 2 * v123))
            {
              v124 = ~v82;
            }

            else
            {
              v124 = v82;
            }

            v103->i8[v123++] = v124;
          }

          while (v123 < v90);
          goto LABEL_79;
        }
      }

      else
      {
        v136 = 0;
      }

      v123 = v118 + v155;
      v143 = v153 - v136;
      v144 = 2 * (v136 + v118);
      v145 = (v122->i32 + v136);
      do
      {
        *v145++ = vuzp1_s8(vmovn_s32(veorq_s8(v97, vceqq_s32(vmovl_u16(*(v102 + v144)), vmovl_u16(*(v101 + v144))))), *v91.i8).u32[0];
        v144 += 8;
        v143 -= 4;
      }

      while (v143);
      if (v157)
      {
        goto LABEL_85;
      }

LABEL_79:
      a6 = v167;
      v94 = v169;
      v102 += v169;
      v101 += v95;
      v103 = (v103 + v167);
      v83 = v106 - 1;
      ++v89;
      v98 += v169;
      v99 = (v99 + v95);
      v100 = (v100 + v167);
      if (!v106)
      {
        return result;
      }
    }
  }

  if (a7 >= 1)
  {
    v85 = 2 * v10;
    do
    {
      v86 = 0;
      v87 = v83;
      do
      {
        if (*(result + 2 * v86) == *(a3 + 2 * v86))
        {
          v88 = ~v82;
        }

        else
        {
          v88 = v82;
        }

        a5->i8[v86++] = v88;
      }

      while (a7 != v86);
      a5 = (a5 + a6);
      --v83;
      result += 2 * (a2 >> 1);
      a3 += v85;
    }

    while (v87);
  }

  return result;
}

unint64_t sub_1001EC74C(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8, int *a9)
{
  v9 = *a9;
  v10 = a2 >> 2;
  v11 = a4 >> 2;
  v139 = a6;
  v140 = a7;
  if ((*a9 & 0xFFFFFFFE) != 2)
  {
    v12 = v9 == 1;
    if (v9 > 3)
    {
      if (v9 != 5)
      {
        v13 = result;
        v14 = a2 >> 2;
        if (v9 != 4)
        {
          return result;
        }

        goto LABEL_6;
      }
    }

    else if (v9)
    {
      v13 = result;
      v14 = a2 >> 2;
      if (v9 != 1)
      {
        return result;
      }

      goto LABEL_6;
    }

    if (v9)
    {
      v74 = 255;
    }

    else
    {
      v74 = 0;
    }

    if (!a8)
    {
      return result;
    }

    v75 = (a7 - 4);
    if (a7 < 4)
    {
      if (a7 >= 1)
      {
        v76 = (a3 + 8);
        v77 = (result + 8);
        v78 = (a5 + 1);
        do
        {
          if (*(v77 - 2) == *(v76 - 2))
          {
            v79 = ~v74;
          }

          else
          {
            v79 = v74;
          }

          *(v78 - 1) = v79;
          if (a7 != 1)
          {
            v80 = *(v77 - 1) == *(v76 - 1) ? ~v74 : v74;
            *v78 = v80;
            if (a7 != 2)
            {
              if (*v77 == *v76)
              {
                v81 = ~v74;
              }

              else
              {
                v81 = v74;
              }

              v78[1] = v81;
            }
          }

          v76 += v11;
          v77 += v10;
          v78 += a6;
          --a8;
        }

        while (a8);
      }

      return result;
    }

    v82 = (a8 - 1);
    v83 = a7;
    v84 = v75 & 0x7FFFFFFC;
    v85 = v84 + 4;
    v86 = a5 + v84 + 4;
    if (v84 + 5 <= a7)
    {
      v87 = a7;
    }

    else
    {
      v87 = (v75 & 0x7FFFFFFC) + 5;
    }

    v88 = a5 + v87 + v82 * a6;
    v89 = ((4 * (a7 - 4)) & 0x1FFFFFFF0) + 16;
    v90 = result + v89;
    v91 = a3 + v89;
    v92 = v87 - v84 - 4;
    v93 = v86 + v82 * a6;
    v94 = result + 4 * (v10 * v82 + v84) + 16;
    v95 = a3 + 4 * (v11 * v82 + v84) + 16;
    v96 = (v75 >> 2) + 1;
    v98 = v95 > a5 && v93 > a3;
    v99 = v94 > a5 && v93 > result;
    v100 = a6 | a4;
    if (v99)
    {
      v98 = 1;
    }

    v101 = vdupq_n_s32(v74);
    v104 = v86 < result + 4 * (v10 * v82 + v87) && v90 < v88 || ((a6 | a2) & 0x8000000000000000) != 0;
    v107 = v86 < a3 + 4 * (v11 * v82 + v87) && v91 < v88 || v100 < 0 || v104;
    v108 = v87 & 3;
    v109 = v75 < 0x3C || ((v100 | a2) & 0x8000000000000000) != 0 || v98;
    v110 = (v92 < 4) | v107;
    v111 = 4 * v10;
    v112 = 4 * v11;
    v113 = v87 & 0xFFFFFFFC;
    while (1)
    {
      v114 = v82;
      v115 = 0;
      if (v109)
      {
        goto LABEL_154;
      }

      v116 = v96 & 0x3FFFFFF0;
      v117 = a5;
      do
      {
        v118 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v101, vceqq_s32(*(result + v115 + 192), *(a3 + v115 + 192))), veorq_s8(v101, vceqq_s32(*(result + v115 + 208), *(a3 + v115 + 208)))), vuzp1q_s16(veorq_s8(v101, vceqq_s32(*(result + v115 + 224), *(a3 + v115 + 224))), veorq_s8(v101, vceqq_s32(*(result + v115 + 240), *(a3 + v115 + 240)))));
        v119 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v101, vceqq_s32(*(result + v115 + 128), *(a3 + v115 + 128))), veorq_s8(v101, vceqq_s32(*(result + v115 + 144), *(a3 + v115 + 144)))), vuzp1q_s16(veorq_s8(v101, vceqq_s32(*(result + v115 + 160), *(a3 + v115 + 160))), veorq_s8(v101, vceqq_s32(*(result + v115 + 176), *(a3 + v115 + 176)))));
        v120 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v101, vceqq_s32(*(result + v115 + 64), *(a3 + v115 + 64))), veorq_s8(v101, vceqq_s32(*(result + v115 + 80), *(a3 + v115 + 80)))), vuzp1q_s16(veorq_s8(v101, vceqq_s32(*(result + v115 + 96), *(a3 + v115 + 96))), veorq_s8(v101, vceqq_s32(*(result + v115 + 112), *(a3 + v115 + 112)))));
        *v117 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v101, vceqq_s32(*(result + v115), *(a3 + v115))), veorq_s8(v101, vceqq_s32(*(result + v115 + 16), *(a3 + v115 + 16)))), vuzp1q_s16(veorq_s8(v101, vceqq_s32(*(result + v115 + 32), *(a3 + v115 + 32))), veorq_s8(v101, vceqq_s32(*(result + v115 + 48), *(a3 + v115 + 48)))));
        v117[1] = v120;
        v117[2] = v119;
        v117[3] = v118;
        v117 += 4;
        v115 += 256;
        v116 -= 16;
      }

      while (v116);
      v115 = 4 * (v96 & 0x3FFFFFF0);
      if (v96 != (v96 & 0x3FFFFFF0))
      {
LABEL_154:
        v121 = 4 * v115 + 12;
        do
        {
          v122 = result + 4 * v115;
          v123 = a3 + 4 * v115;
          if (*(v122 + 4) == *(v123 + 4))
          {
            v124 = ~v74;
          }

          else
          {
            v124 = v74;
          }

          if (*(result + v121 - 12) == *(a3 + v121 - 12))
          {
            v125 = ~v74;
          }

          else
          {
            v125 = v74;
          }

          v126 = (a5 + v115);
          *v126 = v125;
          v126[1] = v124;
          if (*(result + v121) == *(a3 + v121))
          {
            v127 = ~v74;
          }

          else
          {
            v127 = v74;
          }

          if (*(v122 + 8) == *(v123 + 8))
          {
            v128 = ~v74;
          }

          else
          {
            v128 = v74;
          }

          v126[2] = v128;
          v126[3] = v127;
          v115 += 4;
          v121 += 16;
        }

        while (v115 <= v75);
      }

      if (v115 >= v140)
      {
        goto LABEL_149;
      }

      v129 = (v75 & 0x7FFFFFFC) + 4;
      if (v110)
      {
        do
        {
LABEL_179:
          if (*(result + 4 * v129) == *(a3 + 4 * v129))
          {
            v136 = ~v74;
          }

          else
          {
            v136 = v74;
          }

          *(a5 + v129++) = v136;
        }

        while (v129 < v83);
        goto LABEL_149;
      }

      if (v92 >= 0x10)
      {
        v131 = (v75 & 0x7FFFFFFC) + 4;
        v132 = 16 * ((v75 >> 2) & 0x1FFFFFFF) + 16;
        v133 = v92 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v142.val[3] = veorq_s8(v101, vceqq_s32(*(result + v132 + 48), *(a3 + v132 + 48)));
          v142.val[2] = veorq_s8(v101, vceqq_s32(*(result + v132 + 32), *(a3 + v132 + 32)));
          v142.val[1] = veorq_s8(v101, vceqq_s32(*(result + v132 + 16), *(a3 + v132 + 16)));
          v142.val[0] = veorq_s8(v101, vceqq_s32(*(result + v132), *(a3 + v132)));
          *(a5 + v131) = vqtbl4q_s8(v142, xmmword_1003E36F0);
          v132 += 64;
          v131 += 16;
          v133 -= 16;
        }

        while (v133);
        if (v92 == (v92 & 0xFFFFFFFFFFFFFFF0))
        {
          goto LABEL_149;
        }

        v130 = v92 & 0xFFFFFFFFFFFFFFF0;
        v129 = v85 + (v92 & 0xFFFFFFFFFFFFFFF0);
        if ((v92 & 0xC) == 0)
        {
          goto LABEL_179;
        }
      }

      else
      {
        v130 = 0;
      }

      v134 = v85 + v130;
      v135 = 16 * ((v75 >> 2) & 0x1FFFFFFF) + 16 + 4 * v130;
      do
      {
        *(a5 + v134) = vuzp1_s8(vmovn_s32(veorq_s8(v101, vceqq_s32(*(result + v135), *(a3 + v135)))), *v101.i8).u32[0];
        v134 += 4;
        v135 += 16;
      }

      while (v113 != v134);
      v129 = v85 + v92 - v108;
      if (v108)
      {
        goto LABEL_179;
      }

LABEL_149:
      a5 += a6;
      LODWORD(v82) = v114 - 1;
      result += v111;
      a3 += v112;
      if (!v114)
      {
        return result;
      }
    }
  }

  v12 = v9 != 2;
  if (v9 == 2)
  {
    v9 = 4;
  }

  else
  {
    v9 = 1;
  }

  v13 = a3;
  v14 = a4 >> 2;
  a3 = result;
  v11 = a2 >> 2;
LABEL_6:
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = 255;
  }

  if (a8)
  {
    v16 = 0;
    v17 = (a7 - 8);
    v18 = a7 - 4;
    v19 = a7;
    v137 = 4 * a7;
    v20 = 4 * v11;
    v21 = vdupq_n_s32(v15);
    v22 = 4 * v14;
    result = v13;
    v23 = a3;
    v24 = a5;
    v138 = v22;
    do
    {
      if (v9 > 3)
      {
        if (a7 < 8)
        {
LABEL_18:
          LODWORD(i) = 0;
          v27 = a5 + v16 * a6;
          v28 = a3 + v20 * v16;
          v29 = v13 + v22 * v16;
          if (v18 < 0)
          {
            goto LABEL_19;
          }

          goto LABEL_24;
        }

        v30 = 0;
        for (i = 0; i <= v17; i += 8)
        {
          *(v24 + i) = vmovn_s16(vuzp1q_s16(vcgeq_s32(*(v23 + v30), *(result + v30)), vcgeq_s32(*(v23 + v30 + 16), *(result + v30 + 16))));
          v30 += 32;
        }
      }

      else
      {
        if (a7 < 8)
        {
          goto LABEL_18;
        }

        v25 = 0;
        for (i = 0; i <= v17; i += 8)
        {
          *(v24 + i) = vmovn_s16(vuzp1q_s16(vcgtq_s32(*(result + v25), *(v23 + v25)), vcgtq_s32(*(result + v25 + 16), *(v23 + v25 + 16))));
          v25 += 32;
        }
      }

      v27 = a5 + v16 * a6;
      v28 = a3 + v20 * v16;
      v29 = v13 + v22 * v16;
      if (i > v18)
      {
LABEL_19:
        if (i >= a7)
        {
          goto LABEL_11;
        }

        goto LABEL_41;
      }

LABEL_24:
      v31 = v20;
      v32 = v13;
      v33 = i;
      v34 = v18 - i;
      if (v34 <= 0x3B || ((v47 = v34 >> 2, v48 = v27 + 4 + v33 + (v34 & 0xFFFFFFFFFFFFFFFCLL), v49 = 4 * v33, v50 = 4 * v33 + 16 * v47, v51 = v28 + 16 + v50, v24 + v33 < v29 + 16 + v50) ? (v52 = result + 4 * v33 >= v48) : (v52 = 1), v52 ? (v53 = 0) : (v53 = 1), v23 + 4 * v33 < v48 ? (v54 = v24 + v33 >= v51) : (v54 = 1), !v54 || (v53 & 1) != 0))
      {
        i = v33;
      }

      else
      {
        v55 = v47 + 1;
        v56 = (v47 + 1) & 0x7FFFFFFFFFFFFFF0;
        i = v33 + 4 * v56;
        v57 = v56;
        do
        {
          v58 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v21, vcgtq_s32(*(result + v49 + 192), *(v23 + v49 + 192))), veorq_s8(v21, vcgtq_s32(*(result + v49 + 208), *(v23 + v49 + 208)))), vuzp1q_s16(veorq_s8(v21, vcgtq_s32(*(result + v49 + 224), *(v23 + v49 + 224))), veorq_s8(v21, vcgtq_s32(*(result + v49 + 240), *(v23 + v49 + 240)))));
          v59 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v21, vcgtq_s32(*(result + v49 + 128), *(v23 + v49 + 128))), veorq_s8(v21, vcgtq_s32(*(result + v49 + 144), *(v23 + v49 + 144)))), vuzp1q_s16(veorq_s8(v21, vcgtq_s32(*(result + v49 + 160), *(v23 + v49 + 160))), veorq_s8(v21, vcgtq_s32(*(result + v49 + 176), *(v23 + v49 + 176)))));
          v60 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v21, vcgtq_s32(*(result + v49 + 64), *(v23 + v49 + 64))), veorq_s8(v21, vcgtq_s32(*(result + v49 + 80), *(v23 + v49 + 80)))), vuzp1q_s16(veorq_s8(v21, vcgtq_s32(*(result + v49 + 96), *(v23 + v49 + 96))), veorq_s8(v21, vcgtq_s32(*(result + v49 + 112), *(v23 + v49 + 112)))));
          v61 = (v24 + v33);
          *v61 = vuzp1q_s8(vuzp1q_s16(veorq_s8(v21, vcgtq_s32(*(result + v49), *(v23 + v49))), veorq_s8(v21, vcgtq_s32(*(result + v49 + 16), *(v23 + v49 + 16)))), vuzp1q_s16(veorq_s8(v21, vcgtq_s32(*(result + v49 + 32), *(v23 + v49 + 32))), veorq_s8(v21, vcgtq_s32(*(result + v49 + 48), *(v23 + v49 + 48)))));
          v61[1] = v60;
          v61[2] = v59;
          v61[3] = v58;
          v33 += 64;
          v49 += 256;
          v57 -= 16;
        }

        while (v57);
        if (v55 == v56)
        {
          goto LABEL_40;
        }
      }

      v35 = 4 * i + 12;
      do
      {
        v36 = result + 4 * i;
        v37 = v23 + 4 * i;
        if (*(v36 + 4) <= *(v37 + 4))
        {
          v38 = v15;
        }

        else
        {
          v38 = ~v15;
        }

        if (*(result + v35 - 12) <= *(v23 + v35 - 12))
        {
          v39 = v15;
        }

        else
        {
          v39 = ~v15;
        }

        v40 = (v24 + i);
        *v40 = v39;
        v40[1] = v38;
        if (*(result + v35) <= *(v23 + v35))
        {
          v41 = v15;
        }

        else
        {
          v41 = ~v15;
        }

        if (*(v36 + 8) <= *(v37 + 8))
        {
          v42 = v15;
        }

        else
        {
          v42 = ~v15;
        }

        v40[2] = v42;
        v40[3] = v41;
        i += 4;
        v35 += 16;
      }

      while (i <= v18);
LABEL_40:
      v13 = v32;
      a6 = v139;
      a7 = v140;
      v20 = v31;
      v22 = v138;
      if (i >= v140)
      {
        goto LABEL_11;
      }

LABEL_41:
      v43 = i;
      v44 = v19 - i;
      if (v44 < 4)
      {
        v45 = v43;
        goto LABEL_43;
      }

      v62 = v27 + v19;
      v63 = v28 + v137;
      v64 = 4 * v43;
      v66 = v24 + v43 < v29 + v137 && result + 4 * v43 < v62;
      if (v23 + 4 * v43 < v62 && v24 + v43 < v63)
      {
        v45 = v43;
        goto LABEL_43;
      }

      if (v66)
      {
        v45 = v43;
        goto LABEL_43;
      }

      if (v44 >= 0x10)
      {
        v68 = v44 & 0xFFFFFFFFFFFFFFF0;
        v69 = v43;
        v70 = v44 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v141.val[3] = veorq_s8(v21, vcgtq_s32(*(result + v64 + 48), *(v23 + v64 + 48)));
          v141.val[2] = veorq_s8(v21, vcgtq_s32(*(result + v64 + 32), *(v23 + v64 + 32)));
          v141.val[1] = veorq_s8(v21, vcgtq_s32(*(result + v64 + 16), *(v23 + v64 + 16)));
          v141.val[0] = veorq_s8(v21, vcgtq_s32(*(result + v64), *(v23 + v64)));
          *(v24 + v69) = vqtbl4q_s8(v141, xmmword_1003E36F0);
          v64 += 64;
          v69 += 16;
          v70 -= 16;
        }

        while (v70);
        if (v44 == v68)
        {
          goto LABEL_11;
        }

        if ((v44 & 0xC) == 0)
        {
          v45 = v68 + v43;
          do
          {
LABEL_43:
            if (*(result + 4 * v45) <= *(v23 + 4 * v45))
            {
              v46 = v15;
            }

            else
            {
              v46 = ~v15;
            }

            *(v24 + v45++) = v46;
          }

          while (v19 != v45);
          goto LABEL_11;
        }
      }

      else
      {
        v68 = 0;
      }

      v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL) + v43;
      v71 = v68 - (v44 & 0xFFFFFFFFFFFFFFFCLL);
      v72 = v68 + v43;
      v73 = 4 * v72;
      do
      {
        *(v24 + v72) = vuzp1_s8(vmovn_s32(veorq_s8(v21, vcgtq_s32(*(result + v73), *(v23 + v73)))), *v21.i8).u32[0];
        v73 += 16;
        v72 += 4;
        v71 += 4;
      }

      while (v71);
      if (v44 != (v44 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_43;
      }

LABEL_11:
      result += v22;
      v23 += v20;
      v24 += a6;
      ++v16;
      --a8;
    }

    while (a8);
  }

  return result;
}
uint64_t sub_1011B644C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return _s8Freeform17TSContentLanguageO6ModelsO19ParagraphPropertiesV15BorderStyleTypeV23__derived_struct_equalsySbAI_AItFZ_0(v9, v10) & 1;
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO19ParagraphPropertiesV15BorderStyleTypeV23__derived_struct_equalsySbAI_AItFZ_0(uint64_t *a1, double *a2)
{
  v2 = *(a1 + 1);
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = *(a1 + 48);
  v8 = *a2;
  v7 = *(a2 + 1);
  v9 = *(a2 + 2);
  v10 = *(a2 + 3);
  v11 = *(a2 + 4);
  v12 = *(a2 + 5);
  v13 = *(a2 + 48);
  v14 = v3 & 0xFFFFFFFFFFFFFF00;
  v16 = (v11 & 0xFFFFFFFFFFFFFF00) == 0xFFFFFFFE00 && v13 < 0x10;
  if (v14 == 0xFFFFFFFE00 && v6 < 0x10)
  {
    if (!v16)
    {
      return 0;
    }
  }

  else
  {
    if (v16)
    {
      return 0;
    }

    v19 = (v11 & 0xFFFFFFFFFFFFFF00) == 0xFFFFFFFF00 && v13 < 0x10;
    if (v14 == 0xFFFFFFFF00 && v6 <= 0xF)
    {
      if (!v19)
      {
        return 0;
      }
    }

    else
    {
      if (v19)
      {
        return 0;
      }

      if (v6 >> 6)
      {
        if (v6 >> 6 == 1)
        {
          v48 = *a1;
          v49 = v2;
          v50 = v4;
          v51 = v3;
          v52 = v5;
          v53 = v6 & 0x3F;
          if ((v13 & 0xC0) != 0x40)
          {
            return 0;
          }

          *v54 = v8;
          v54[1] = v7;
          v54[2] = v9;
          v54[3] = v10;
          v55 = v11;
          v56 = v12;
          v57 = v13 & 0x3F;
          v20 = a1;
          v21 = a2;
          v22 = _s8Freeform17TSContentLanguageO6ModelsO6StrokeO4LineV23__derived_struct_equalsySbAI_AItFZ_0(&v48, v54);
          a2 = v21;
          v23 = v22;
          a1 = v20;
          if ((v23 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          if ((v13 & 0xC0) != 0x80)
          {
            return 0;
          }

          v17 = 0;
          if (v7 | *&v8 | v9 | v10 | v11 | v12 || v13 != 128)
          {
            return v17;
          }
        }
      }

      else
      {
        if (v13 >= 0x40)
        {
          return 0;
        }

        v47 = *(a1 + 1);
        v28 = a1;
        v29 = a2;
        v30 = a2[1];
        v31 = TSContentLanguage.Models.Stroke.Frame.Name.rawValue.getter(*a1);
        v33 = v32;
        if (v31 == TSContentLanguage.Models.Stroke.Frame.Name.rawValue.getter(SLOBYTE(v8)) && v33 == v34)
        {

          a2 = v29;
          a1 = v28;
          if (*&v47 != v30)
          {
            return 0;
          }
        }

        else
        {
          v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v17 = 0;
          if ((v39 & 1) == 0)
          {
            return v17;
          }

          a2 = v29;
          a1 = v28;
          if (*&v47 != v30)
          {
            return v17;
          }
        }
      }
    }
  }

  v17 = *(a2 + 64);
  if (a1[8])
  {
    if (!*(a2 + 64))
    {
      return v17;
    }
  }

  else
  {
    if (*(a1 + 7) != a2[7])
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  if ((a1[11] & 1) == 0)
  {
    if ((a2[11] & 1) == 0)
    {
      v17 = 0;
      if (*(a1 + 9) != a2[9] || *(a1 + 10) != a2[10])
      {
        return v17;
      }

      goto LABEL_39;
    }

    return 0;
  }

  if ((a2[11] & 1) == 0)
  {
    return 0;
  }

LABEL_39:
  v24 = *(a1 + 89);
  v25 = *(a2 + 89);
  if (v24 == 2)
  {
    if (v25 != 2)
    {
      return 0;
    }
  }

  else
  {
    v17 = 0;
    if (v25 == 2 || ((v25 ^ v24) & 1) != 0)
    {
      return v17;
    }
  }

  v26 = *(a1 + 90);
  v27 = *(a2 + 90);
  if (v26 == 2)
  {
    if (v27 != 2)
    {
      return 0;
    }
  }

  else
  {
    v17 = 0;
    if (v27 == 2 || ((v27 ^ v26) & 1) != 0)
    {
      return v17;
    }
  }

  v35 = *(a1 + 91);
  v36 = *(a2 + 91);
  if (v35 == 2)
  {
    if (v36 != 2)
    {
      return 0;
    }
  }

  else
  {
    v17 = 0;
    if (v36 == 2 || ((v36 ^ v35) & 1) != 0)
    {
      return v17;
    }
  }

  v37 = *(a1 + 92);
  v38 = *(a2 + 92);
  if (v37 == 2)
  {
    if (v38 != 2)
    {
      return 0;
    }
  }

  else
  {
    v17 = 0;
    if (v38 == 2 || ((v38 ^ v37) & 1) != 0)
    {
      return v17;
    }
  }

  v40 = *(a1 + 93);
  v41 = *(a2 + 93);
  if (v40 == 2)
  {
    if (v41 != 2)
    {
      return 0;
    }
  }

  else
  {
    v17 = 0;
    if (v41 == 2 || ((v41 ^ v40) & 1) != 0)
    {
      return v17;
    }
  }

  v42 = *(a1 + 94);
  v43 = *(a2 + 94);
  if (v42 == 2)
  {
    if (v43 != 2)
    {
      return 0;
    }
  }

  else
  {
    v17 = 0;
    if (v43 == 2 || ((v43 ^ v42) & 1) != 0)
    {
      return v17;
    }
  }

  v44 = *(a1 + 95);
  v45 = *(a2 + 95);
  if (v44 == 2)
  {
    if (v45 != 2)
    {
      return 0;
    }
  }

  else if (v45 == 2 || ((v45 ^ v44) & 1) != 0)
  {
    return 0;
  }

  return 1;
}

BOOL _s8Freeform17TSContentLanguageO6ModelsO19ParagraphPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = *v1;
  v4 = *v2;
  if (v3 == 5)
  {
    if (v4 != 5)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == 5)
    {
      return 0;
    }

    v5 = 0x7265746E6563;
    if (*v1 <= 1u)
    {
      v8 = v3 == 0;
      if (*v1)
      {
        v6 = 0x7966697473756ALL;
      }

      else
      {
        v6 = 0x7265746E6563;
      }

      if (v8)
      {
        v7 = 0xE600000000000000;
      }

      else
      {
        v7 = 0xE700000000000000;
      }
    }

    else if (v3 == 2)
    {
      v7 = 0xE400000000000000;
      v6 = 1952867692;
    }

    else
    {
      v8 = v3 == 3;
      v6 = 0x6C61727574616ELL;
      if (v8)
      {
        v7 = 0xE700000000000000;
      }

      else
      {
        v6 = 0x7468676972;
        v7 = 0xE500000000000000;
      }
    }

    v9 = 0xE600000000000000;
    v10 = 0xE400000000000000;
    v11 = 1952867692;
    v12 = 0xE700000000000000;
    v13 = 0x6C61727574616ELL;
    if (v4 != 3)
    {
      v13 = 0x7468676972;
      v12 = 0xE500000000000000;
    }

    if (v4 != 2)
    {
      v11 = v13;
      v10 = v12;
    }

    if (*v2)
    {
      v5 = 0x7966697473756ALL;
      v9 = 0xE700000000000000;
    }

    if (*v2 <= 1u)
    {
      v14 = v5;
    }

    else
    {
      v14 = v11;
    }

    if (*v2 <= 1u)
    {
      v15 = v9;
    }

    else
    {
      v15 = v10;
    }

    v16 = v2;
    v17 = v1;
    if (v6 == v14 && v7 == v15)
    {

      v1 = v17;
      v2 = v16;
    }

    else
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v1 = v17;
      v2 = v16;
      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v19 = *(v1 + 2);
  v20 = *(v2 + 2);
  if (v19)
  {
    if (!v20)
    {
      return 0;
    }

    if (*(v1 + 1) != *(v2 + 1) || v19 != v20)
    {
      v21 = v1;
      v22 = v2;
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v2 = v22;
      v24 = v23;
      v1 = v21;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  v25 = v2[32];
  if (v1[32])
  {
    if (!v2[32])
    {
      return v25;
    }
  }

  else
  {
    if (*(v1 + 3) != *(v2 + 3))
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  v26 = v1[72];
  v27 = v2[72];
  if (v26 == 2)
  {
    if (v27 != 2)
    {
      return 0;
    }
  }

  else
  {
    v25 = 0;
    if (v27 == 2 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(v1 + 40), *(v2 + 40)), vceqq_f64(*(v1 + 56), *(v2 + 56))), xmmword_10148D100)) & 0xF) != 0)
    {
      return v25;
    }

    v28 = v2;
    v29 = v1;
    if (v26)
    {
      v30 = 1650946675;
    }

    else
    {
      v30 = 13168;
    }

    if (v26)
    {
      v31 = 0xE400000000000000;
    }

    else
    {
      v31 = 0xE200000000000000;
    }

    if (v27)
    {
      v32 = 1650946675;
    }

    else
    {
      v32 = 13168;
    }

    if (v27)
    {
      v33 = 0xE400000000000000;
    }

    else
    {
      v33 = 0xE200000000000000;
    }

    if (v30 == v32 && v31 == v33)
    {

      v1 = v29;
      v2 = v28;
    }

    else
    {
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v1 = v29;
      v2 = v28;
      if ((v34 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v35 = v1[73];
  v36 = v2[73];
  if (v35 == 2)
  {
    if (v36 != 2)
    {
      return 0;
    }
  }

  else
  {
    v25 = 0;
    if (v36 == 2 || ((v36 ^ v35) & 1) != 0)
    {
      return v25;
    }
  }

  v25 = v2[88];
  if (v1[88])
  {
    if (!v2[88])
    {
      return v25;
    }
  }

  else
  {
    if (*(v1 + 10) != *(v2 + 10))
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  v37 = *(v1 + 13);
  v38 = *(v2 + 13);
  if (v37)
  {
    if (!v38)
    {
      return 0;
    }

    if (*(v1 + 12) != *(v2 + 12) || v37 != v38)
    {
      v39 = v1;
      v40 = v2;
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v2 = v40;
      v42 = v41;
      v1 = v39;
      if ((v42 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v38)
  {
    return 0;
  }

  v43 = v1[112];
  v44 = v2[112];
  if (v43 == 2)
  {
    if (v44 != 2)
    {
      return 0;
    }
  }

  else
  {
    v25 = 0;
    if (v44 == 2 || ((v44 ^ v43) & 1) != 0)
    {
      return v25;
    }
  }

  v45 = v1[113];
  v46 = v2[113];
  if (v45 == 2)
  {
    if (v46 != 2)
    {
      return 0;
    }
  }

  else
  {
    v25 = 0;
    if (v46 == 2 || ((v46 ^ v45) & 1) != 0)
    {
      return v25;
    }
  }

  v47 = *(v1 + 16);
  v48 = *(v2 + 16);
  if (v47)
  {
    if (!v48)
    {
      return 0;
    }

    if (*(v1 + 15) != *(v2 + 15) || v47 != v48)
    {
      v49 = v1;
      v50 = v2;
      v51 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v2 = v50;
      v52 = v51;
      v1 = v49;
      if ((v52 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v48)
  {
    return 0;
  }

  v53 = v1[136];
  v54 = v2[136];
  if (v53 == 2)
  {
    if (v54 != 2)
    {
      return 0;
    }

LABEL_107:
    v55 = *(v1 + 15);
    v176[7] = *(v1 + 16);
    v56 = *(v1 + 16);
    v176[8] = *(v1 + 17);
    v57 = *(v1 + 17);
    v176[9] = *(v1 + 18);
    v58 = *(v1 + 18);
    v176[10] = *(v1 + 19);
    v59 = *(v1 + 11);
    v176[3] = *(v1 + 12);
    v60 = *(v1 + 12);
    v176[4] = *(v1 + 13);
    v61 = *(v1 + 13);
    v176[5] = *(v1 + 14);
    v62 = *(v1 + 14);
    v176[6] = *(v1 + 15);
    v63 = *(v1 + 10);
    v176[0] = *(v1 + 9);
    v176[1] = v63;
    v64 = *(v1 + 9);
    v65 = *(v1 + 10);
    v176[2] = *(v1 + 11);
    v66 = *(v2 + 15);
    v175[7] = *(v2 + 16);
    v67 = *(v2 + 16);
    v175[8] = *(v2 + 17);
    v68 = *(v2 + 17);
    v175[9] = *(v2 + 18);
    v69 = *(v2 + 18);
    v175[10] = *(v2 + 19);
    v70 = *(v2 + 11);
    v175[3] = *(v2 + 12);
    v71 = *(v2 + 12);
    v175[4] = *(v2 + 13);
    v72 = *(v2 + 13);
    v175[5] = *(v2 + 14);
    v73 = *(v2 + 14);
    v175[6] = *(v2 + 15);
    v74 = *(v2 + 10);
    v175[0] = *(v2 + 9);
    v75 = *(v2 + 9);
    v76 = *(v2 + 10);
    v175[1] = v74;
    v175[2] = *(v2 + 11);
    v77 = *(v1 + 17);
    v170[7] = *(v1 + 16);
    v170[8] = v77;
    v78 = *(v1 + 19);
    v170[9] = *(v1 + 18);
    v170[10] = v78;
    v79 = *(v1 + 13);
    v170[3] = *(v1 + 12);
    v170[4] = v79;
    v80 = *(v1 + 15);
    v170[5] = *(v1 + 14);
    v170[6] = v80;
    v81 = *(v1 + 10);
    v170[0] = *(v1 + 9);
    v170[1] = v81;
    v170[2] = *(v1 + 11);
    v170[18] = v67;
    v170[19] = v68;
    v170[20] = v69;
    v82 = v2;
    v170[21] = *(v2 + 19);
    v170[14] = v71;
    v170[15] = v72;
    v170[16] = v73;
    v170[17] = v66;
    v170[11] = v75;
    v170[12] = v76;
    v170[13] = v70;
    v172[7] = v56;
    v172[8] = v57;
    v172[9] = v58;
    v83 = v1;
    v172[10] = *(v1 + 19);
    v172[3] = v60;
    v172[4] = v61;
    v172[5] = v62;
    v172[6] = v55;
    v172[0] = v64;
    v172[1] = v65;
    v172[2] = v59;
    if (sub_1007CE118(v172) == 1)
    {
      v84 = *(v82 + 18);
      __dst[8] = *(v82 + 17);
      __dst[9] = v84;
      __dst[10] = *(v82 + 19);
      v85 = *(v82 + 14);
      __dst[4] = *(v82 + 13);
      __dst[5] = v85;
      v86 = *(v82 + 16);
      __dst[6] = *(v82 + 15);
      __dst[7] = v86;
      v87 = *(v82 + 10);
      __dst[0] = *(v82 + 9);
      __dst[1] = v87;
      v88 = *(v82 + 12);
      __dst[2] = *(v82 + 11);
      __dst[3] = v88;
      if (sub_1007CE118(__dst) == 1)
      {
        v89 = *(v83 + 15);
        v177[7] = *(v83 + 16);
        v90 = *(v83 + 18);
        v177[8] = *(v83 + 17);
        v177[9] = v90;
        v177[10] = *(v83 + 19);
        v91 = *(v83 + 11);
        v177[3] = *(v83 + 12);
        v92 = *(v83 + 14);
        v177[4] = *(v83 + 13);
        v177[5] = v92;
        v177[6] = v89;
        v93 = *(v83 + 10);
        v177[0] = *(v83 + 9);
        v177[1] = v93;
        v177[2] = v91;
        sub_10000BE14(v176, v174, &qword_101A005F0);
        sub_10000BE14(v175, v174, &qword_101A005F0);
        sub_10000CAAC(v177, &qword_101A005F0);
        goto LABEL_116;
      }
    }

    else
    {
      v94 = *(v82 + 18);
      __dst[8] = *(v82 + 17);
      __dst[9] = v94;
      __dst[10] = *(v82 + 19);
      v95 = *(v82 + 14);
      __dst[4] = *(v82 + 13);
      __dst[5] = v95;
      v96 = *(v82 + 16);
      __dst[6] = *(v82 + 15);
      __dst[7] = v96;
      v97 = *(v82 + 10);
      __dst[0] = *(v82 + 9);
      __dst[1] = v97;
      v98 = *(v82 + 12);
      __dst[2] = *(v82 + 11);
      __dst[3] = v98;
      if (sub_1007CE118(__dst) != 1)
      {
        v101 = *(v82 + 15);
        v174[7] = *(v82 + 16);
        v102 = *(v82 + 16);
        v174[8] = *(v82 + 17);
        v103 = *(v82 + 17);
        v174[9] = *(v82 + 18);
        v104 = *(v82 + 18);
        v174[10] = *(v82 + 19);
        v105 = *(v82 + 11);
        v174[3] = *(v82 + 12);
        v106 = *(v82 + 12);
        v174[4] = *(v82 + 13);
        v107 = *(v82 + 13);
        v174[5] = *(v82 + 14);
        v108 = *(v82 + 14);
        v174[6] = *(v82 + 15);
        v109 = *(v82 + 10);
        v174[0] = *(v82 + 9);
        v110 = *(v82 + 9);
        v174[1] = *(v82 + 10);
        v174[2] = *(v82 + 11);
        v189[7] = v102;
        v189[8] = v103;
        v111 = *(v82 + 19);
        v189[9] = v104;
        v189[10] = v111;
        v189[3] = v106;
        v189[4] = v107;
        v189[5] = v108;
        v189[6] = v101;
        v189[1] = v109;
        v189[2] = v105;
        v112 = *(v83 + 18);
        v188[8] = *(v83 + 17);
        v188[9] = v112;
        v188[10] = *(v83 + 19);
        v189[0] = v110;
        v113 = *(v83 + 14);
        v188[4] = *(v83 + 13);
        v188[5] = v113;
        v114 = *(v83 + 16);
        v188[6] = *(v83 + 15);
        v188[7] = v114;
        v115 = *(v83 + 10);
        v188[0] = *(v83 + 9);
        v188[1] = v115;
        v116 = *(v83 + 12);
        v188[2] = *(v83 + 11);
        v188[3] = v116;
        sub_10000BE14(v176, v177, &qword_101A005F0);
        sub_10000BE14(v175, v177, &qword_101A005F0);
        v117 = _s8Freeform17TSContentLanguageO6ModelsO14ListPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(v188, v189);
        sub_10000CAAC(v174, &qword_101A005F0);
        v118 = *(v83 + 15);
        v177[7] = *(v83 + 16);
        v119 = *(v83 + 18);
        v177[8] = *(v83 + 17);
        v177[9] = v119;
        v177[10] = *(v83 + 19);
        v120 = *(v83 + 11);
        v177[3] = *(v83 + 12);
        v121 = *(v83 + 14);
        v177[4] = *(v83 + 13);
        v177[5] = v121;
        v177[6] = v118;
        v122 = *(v83 + 10);
        v177[0] = *(v83 + 9);
        v177[1] = v122;
        v177[2] = v120;
        sub_10000CAAC(v177, &qword_101A005F0);
        if ((v117 & 1) == 0)
        {
          return 0;
        }

LABEL_116:
        v123 = v83[320];
        v124 = v82[320];
        if (v123 == 2)
        {
          if (v124 != 2)
          {
            return 0;
          }
        }

        else if (v124 == 2 || ((v124 ^ v123) & 1) != 0)
        {
          return 0;
        }

        v125 = v83[321];
        v126 = v82[321];
        if (v125 == 2)
        {
          if (v126 != 2)
          {
            return 0;
          }
        }

        else if (v126 == 2 || ((v126 ^ v125) & 1) != 0)
        {
          return 0;
        }

        v127 = v82[336];
        if (v83[336])
        {
          if (!v82[336])
          {
            return 0;
          }
        }

        else
        {
          if (*(v83 + 41) != *(v82 + 41))
          {
            v127 = 1;
          }

          if (v127)
          {
            return 0;
          }
        }

        v128 = v83[344];
        v129 = v82[344];
        if (v128 == 6)
        {
          if (v129 != 6)
          {
            return 0;
          }
        }

        else
        {
          if (v129 == 6)
          {
            return 0;
          }

          v130 = *(v83 + 44);
          v131 = *(v82 + 44);
          if (v128 == 5)
          {
            if (v129 != 5)
            {
              return 0;
            }
          }

          else if (v129 == 5 || (sub_100B5AF18(v128, v129) & 1) == 0)
          {
            return 0;
          }

          if (v130 != v131)
          {
            return 0;
          }
        }

        v132 = v82[368];
        if (v83[368])
        {
          if (!v82[368])
          {
            return 0;
          }
        }

        else
        {
          if (*(v83 + 45) != *(v82 + 45))
          {
            v132 = 1;
          }

          if (v132)
          {
            return 0;
          }
        }

        v133 = v83[369];
        v134 = v82[369];
        if (v133 == 3)
        {
          if (v134 != 3)
          {
            return 0;
          }
        }

        else
        {
          if (v134 == 3)
          {
            return 0;
          }

          v135 = 2036625250;
          if (v83[369])
          {
            if (v133 == 1)
            {
              v136 = 0xE700000000000000;
              v137 = 0x676E6964616568;
            }

            else
            {
              v137 = 0x6669636570736E75;
              v136 = 0xEB00000000646569;
            }
          }

          else
          {
            v136 = 0xE400000000000000;
            v137 = 2036625250;
          }

          if (v82[369])
          {
            if (v134 == 1)
            {
              v138 = 0xE700000000000000;
              v135 = 0x676E6964616568;
            }

            else
            {
              v135 = 0x6669636570736E75;
              v138 = 0xEB00000000646569;
            }
          }

          else
          {
            v138 = 0xE400000000000000;
          }

          if (v137 == v135 && v136 == v138)
          {
          }

          else
          {
            v139 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v139 & 1) == 0)
            {
              return 0;
            }
          }
        }

        v140 = v83[370];
        v141 = v82[370];
        if (v140 == 2)
        {
          if (v141 != 2)
          {
            return 0;
          }
        }

        else if (v141 == 2 || ((v141 ^ v140) & 1) != 0)
        {
          return 0;
        }

        v142 = *(v83 + 408);
        v143 = *(v83 + 53);
        v144 = *(v82 + 408);
        v145 = *(v82 + 53);
        v147 = (v145 & 0xF0) == 0 && *(v82 + 51) >> 8 == 4294967293;
        if (*(v83 + 51) >> 8 != 4294967293 || (v143 & 0xF0) != 0)
        {
          if (v147)
          {
            return 0;
          }

          v148 = *(v82 + 392);
          v183[0] = *(v82 + 376);
          v183[1] = v148;
          v149 = *(v82 + 28);
          v185 = *(v82 + 27);
          v186 = v149;
          v187 = *(v82 + 58);
          v183[2] = v144;
          v184 = v145;
          v150 = *(v83 + 392);
          v178[0] = *(v83 + 376);
          v178[1] = v150;
          v151 = *(v83 + 27);
          v152 = *(v83 + 28);
          v182 = *(v83 + 58);
          v181 = v152;
          v180 = v151;
          v178[2] = v142;
          v179 = v143;
          if ((_s8Freeform17TSContentLanguageO6ModelsO19ParagraphPropertiesV15BorderStyleTypeV23__derived_struct_equalsySbAI_AItFZ_0(v178, v183) & 1) == 0)
          {
            return 0;
          }
        }

        else if (!v147)
        {
          return 0;
        }

        v153 = v82[480];
        if (v83[480])
        {
          if (!v82[480])
          {
            return 0;
          }
        }

        else
        {
          if (*(v83 + 59) != *(v82 + 59))
          {
            v153 = 1;
          }

          if (v153)
          {
            return 0;
          }
        }

        v154 = v82[496];
        if (v83[496])
        {
          if (!v82[496])
          {
            return 0;
          }
        }

        else
        {
          if (*(v83 + 61) != *(v82 + 61))
          {
            v154 = 1;
          }

          if (v154)
          {
            return 0;
          }
        }

        v155 = v82[512];
        if (v83[512])
        {
          if (!v82[512])
          {
            return 0;
          }
        }

        else
        {
          if (*(v83 + 63) != *(v82 + 63))
          {
            v155 = 1;
          }

          if (v155)
          {
            return 0;
          }
        }

        v156 = *(v83 + 65);
        v157 = *(v82 + 65);
        if (v156)
        {
          if (!v157)
          {
            return 0;
          }

          v158 = sub_100672BE4(v156, v157);

          if ((v158 & 1) == 0)
          {
            return 0;
          }
        }

        else if (v157)
        {
          return 0;
        }

        v159 = v83[528];
        v160 = v82[528];
        if (v159 == 2)
        {
          if (v160 != 2)
          {
            return 0;
          }
        }

        else if (v160 == 2 || ((v160 ^ v159) & 1) != 0)
        {
          return 0;
        }

        v161 = v83[529];
        v162 = v82[529];
        if (v161 == 2)
        {
          if (v162 != 2)
          {
            return 0;
          }
        }

        else if (v162 == 2 || ((v162 ^ v161) & 1) != 0)
        {
          return 0;
        }

        v163 = v83[530];
        v164 = v82[530];
        if (v163 == 2)
        {
          if (v164 != 2)
          {
            return 0;
          }
        }

        else if (v164 == 2 || ((v164 ^ v163) & 1) != 0)
        {
          return 0;
        }

        memcpy(v174, v83 + 536, 0x37CuLL);
        memcpy(v173, v82 + 536, 0x37CuLL);
        memcpy(v170, v83 + 536, 0x37CuLL);
        memcpy(&v170[56], v82 + 536, 0x37CuLL);
        memcpy(v171, v83 + 536, 0x37CuLL);
        if (sub_1007CE3F8(v171) == 1)
        {
          memcpy(__dst, &v170[56], 0x37CuLL);
          if (sub_1007CE3F8(__dst) == 1)
          {
            memcpy(v177, v170, 0x37CuLL);
            sub_10000BE14(v174, v168, &qword_101A006A0);
            sub_10000BE14(v173, v168, &qword_101A006A0);
            sub_10000CAAC(v177, &qword_101A006A0);
            return 1;
          }

          goto LABEL_225;
        }

        memcpy(v168, &v170[56], 0x37CuLL);
        if (sub_1007CE3F8(v168) == 1)
        {
LABEL_225:
          memcpy(__dst, v170, 0x6FCuLL);
          sub_10000BE14(v174, v177, &qword_101A006A0);
          sub_10000BE14(v173, v177, &qword_101A006A0);
          v99 = &unk_101A006A8;
          goto LABEL_112;
        }

        memcpy(v166, &v170[56], 0x37CuLL);
        memcpy(__dst, &v170[56], 0x37CuLL);
        memcpy(v177, v170, 0x37CuLL);
        sub_10000BE14(v174, v167, &qword_101A006A0);
        sub_10000BE14(v173, v167, &qword_101A006A0);
        v165 = _s8Freeform17TSContentLanguageO6ModelsO19CharacterPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(v177);
        sub_10000CAAC(v166, &qword_101A006A0);
        memcpy(v167, v170, 0x37CuLL);
        sub_10000CAAC(v167, &qword_101A006A0);
        return v165;
      }
    }

    memcpy(__dst, v170, 0x160uLL);
    sub_10000BE14(v176, v177, &qword_101A005F0);
    sub_10000BE14(v175, v177, &qword_101A005F0);
    v99 = &unk_101A005F8;
LABEL_112:
    sub_10000CAAC(__dst, v99);
    return 0;
  }

  v25 = 0;
  if (v54 != 2 && ((v54 ^ v53) & 1) == 0)
  {
    goto LABEL_107;
  }

  return v25;
}

uint64_t sub_1011B791C()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x1E)
  {
    return 30;
  }

  else
  {
    return v0;
  }
}

void *sub_1011B7970(uint64_t a1)
{
  __chkstk_darwin(a1);
  v212 = v1;
  v3 = v2;
  v111 = v4;
  v5 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v5 - 8);
  v110 = &v102[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v138 = &v102[-v8];
  __chkstk_darwin(v9);
  v141 = &v102[-v10];
  v11 = type metadata accessor for CodingUserInfoKey();
  v112 = *(v11 - 8);
  v113 = v11;
  __chkstk_darwin(v11);
  v109 = &v102[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v137 = &v102[-v14];
  __chkstk_darwin(v15);
  v17 = &v102[-v16];
  v18 = sub_1005B981C(&qword_101A005B8);
  v114 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v102[-v19];
  v196 = 1;
  v192 = 1;
  sub_1005BC764(&v200);
  *&v188[119] = v207;
  *&v188[135] = v208;
  *&v188[151] = v209;
  *&v188[167] = v210;
  *&v188[55] = v203;
  *&v188[71] = v204;
  *&v188[87] = v205;
  *&v188[103] = v206;
  *&v188[7] = v200;
  *&v188[23] = v201;
  *&v188[39] = v202;
  v185 = 1;
  v183 = 1;
  v180 = 1;
  v178 = 1;
  v176 = 1;
  sub_1005BC71C(v211);
  memcpy(&v174[5], v211, 0x37CuLL);
  v21 = v3[3];
  v155 = v3;
  sub_100020E58(v3, v21);
  sub_1011BA450();
  v22 = v212;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    v212 = v22;
    v137 = 0;
    v138 = 0;
    v135 = 0;
    v136 = 0;
    v130 = 0;
    v131 = 0;
    v132 = 0;
    v133 = 0;
    v134 = 0;
    v140 = 0;
    v141 = 0;
    v139 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v142 = 0;
    v143 = 0;
    v145 = 0;
    v146 = 0;
    v144 = 0;
    v147 = 0;
    v148 = 0;
    v149 = 0;
    v126 = 0;
    v127 = 0;
    v124 = 0;
    v125 = 0;
    v122 = 0;
    v123 = 0;
    v25 = 5;
    v129 = 3;
    v121 = 0xFFFFFFFD00;
    v128 = 6;
    v115 = 2;
    v116 = 2;
    v117 = 2;
    v118 = 2;
    v119 = 2;
    v120 = 2;
    v150 = 2;
    v26 = 2;
    v27 = 2;
LABEL_4:
    sub_100005070(v155);
    v173[0] = v25;
    *&v173[8] = v148;
    *&v173[16] = v149;
    *&v173[24] = v147;
    *&v173[40] = v143;
    *&v173[48] = v144;
    *&v173[56] = v145;
    *&v173[64] = v146;
    v173[72] = v27;
    v173[73] = v26;
    *&v173[80] = v142;
    *&v173[96] = v153;
    *&v173[104] = v154;
    v173[112] = 2;
    v173[113] = 2;
    *&v173[120] = v151;
    *&v173[128] = v152;
    *&v173[1] = *v197;
    *&v173[4] = *&v197[3];
    v173[32] = v196;
    *&v173[33] = *v195;
    *&v173[36] = *&v195[3];
    *&v173[74] = v193;
    *&v173[78] = v194;
    v173[88] = v192;
    *&v173[89] = *v191;
    *&v173[92] = *&v191[3];
    *&v173[114] = v189;
    *&v173[118] = v190;
    v173[136] = v150;
    *&v173[281] = *&v188[144];
    *&v173[297] = *&v188[160];
    *&v173[265] = *&v188[128];
    *&v173[185] = *&v188[48];
    *&v173[169] = *&v188[32];
    *&v173[153] = *&v188[16];
    *&v173[137] = *v188;
    *&v173[249] = *&v188[112];
    *&v173[233] = *&v188[96];
    *&v173[217] = *&v188[80];
    *&v173[201] = *&v188[64];
    *&v173[312] = *&v188[175];
    v173[320] = v120;
    v173[321] = v119;
    *&v173[322] = v186;
    *&v173[326] = v187;
    *&v173[328] = v139;
    v173[336] = v185;
    *&v173[337] = *v184;
    *&v173[340] = *&v184[3];
    *&v173[344] = v128;
    *&v173[352] = v141;
    v173[368] = v183;
    v173[369] = v129;
    v173[370] = v118;
    *&v173[371] = v181;
    v173[375] = v182;
    *&v173[360] = v140;
    *&v173[376] = v125;
    *&v173[384] = v124;
    *&v173[392] = v123;
    *&v173[400] = v122;
    *&v173[408] = v121;
    *&v173[416] = v134;
    *&v173[424] = v135;
    *&v173[432] = v138;
    *&v173[440] = v137;
    *&v173[448] = v136;
    *&v173[456] = v127;
    *&v173[464] = v126;
    *&v173[472] = v133;
    v173[480] = v180;
    *&v173[481] = *v179;
    *&v173[484] = *&v179[3];
    *&v173[488] = v132;
    v173[496] = v178;
    *&v173[497] = *v177;
    *&v173[500] = *&v177[3];
    *&v173[504] = v131;
    v173[512] = v176;
    *&v173[513] = *v175;
    *&v173[516] = *&v175[3];
    *&v173[520] = v130;
    v173[528] = v116;
    v173[529] = v115;
    v173[530] = v117;
    memcpy(&v173[531], v174, 0x381uLL);
    return sub_1011B78EC(v173);
  }

  v140 = v17;
  v108 = &v174[5];
  v173[0] = 28;
  v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v29 = v114;
  if (v24)
  {
    if (v23 == 0xD000000000000034 && v24 == 0x800000010158A9A0)
    {
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v30 & 1) == 0)
      {
        sub_1007C8648();
        v34 = swift_allocError();
        v35[1] = 0;
        v35[2] = 0;
        *v35 = 0;
        v212 = v34;
        swift_willThrow();
        goto LABEL_16;
      }
    }
  }

  type metadata accessor for TSCLVersion();
  v157[0] = 29;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v31 = *v173;
  if (*v173)
  {
    if (qword_1019F2A20 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.ParagraphProperties.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v31[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      v32 = swift_allocError();
      *v33 = xmmword_101463530;
      *(v33 + 16) = 0;
      v212 = v32;
      swift_willThrow();

LABEL_16:
      (*(v29 + 8))(v20, v18);
      v137 = 0;
      v138 = 0;
      v135 = 0;
      v136 = 0;
      v130 = 0;
      v131 = 0;
      v132 = 0;
      v133 = 0;
      v134 = 0;
      v140 = 0;
      v141 = 0;
      v139 = 0;
      v151 = 0;
      v152 = 0;
      v153 = 0;
      v154 = 0;
      v142 = 0;
      v143 = 0;
      v145 = 0;
      v146 = 0;
      v144 = 0;
      v147 = 0;
      v148 = 0;
      v149 = 0;
      v126 = 0;
      v127 = 0;
      v124 = 0;
      v125 = 0;
      v122 = 0;
      v123 = 0;
      v25 = 5;
      v129 = 3;
LABEL_17:
      v121 = 0xFFFFFFFD00;
      v128 = 6;
      v115 = 2;
      v116 = 2;
      v117 = 2;
      v118 = 2;
      v119 = 2;
      v120 = 2;
      v150 = 2;
      v26 = 2;
      v27 = 2;
      goto LABEL_4;
    }

    v36 = v20;
  }

  else
  {
    v36 = v20;
  }

  v37 = v155;
  sub_100020E58(v155, v155[3]);
  v38 = dispatch thunk of Decoder.userInfo.getter();
  v39 = sub_1007BC348(0, v38, 0, 0);
  v212 = 0;
  v107 = v39;

  sub_100020E58(v37, v37[3]);
  v40 = dispatch thunk of Decoder.userInfo.getter();
  v41 = v36;
  v42 = v212;
  v43 = sub_1007BC644(1, v40, 0, 0);
  v45 = v114;
  v212 = v42;
  if (v42)
  {
    (*(v114 + 8))(v41, v18);

    v137 = 0;
    v138 = 0;
    v135 = 0;
    v136 = 0;
    v130 = 0;
    v131 = 0;
    v132 = 0;
    v133 = 0;
    v134 = 0;
    v140 = 0;
    v141 = 0;
    v139 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v142 = 0;
    v143 = 0;
    v145 = 0;
    v146 = 0;
    v144 = 0;
    v147 = 0;
    v148 = 0;
    v149 = 0;
    v126 = 0;
    v127 = 0;
    v124 = 0;
    v125 = 0;
    v122 = 0;
    v123 = 0;
    v129 = 3;
    v25 = v107;
    goto LABEL_17;
  }

  v148 = v43;
  v149 = v44;

  sub_100020E58(v37, v37[3]);
  v46 = dispatch thunk of Decoder.userInfo.getter();
  v47 = v212;
  v48 = sub_1007BC924(2, v46, 0, 0);
  v212 = v47;
  if (v47)
  {
    (*(v45 + 8))(v41, v18);

    v137 = 0;
    v138 = 0;
    v135 = 0;
    v136 = 0;
    v130 = 0;
    v131 = 0;
    v132 = 0;
    v133 = 0;
    v134 = 0;
    v140 = 0;
    v141 = 0;
    v139 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v142 = 0;
    v143 = 0;
    v145 = 0;
    v146 = 0;
    v144 = 0;
    v147 = 0;
LABEL_26:
    v126 = 0;
    v127 = 0;
    v124 = 0;
    v125 = 0;
    v122 = 0;
    v123 = 0;
    v129 = 3;
    v121 = 0xFFFFFFFD00;
    v128 = 6;
    v115 = 2;
    v116 = 2;
    v117 = 2;
    v118 = 2;
    v119 = 2;
    v120 = 2;
    v150 = 2;
    v26 = 2;
    v27 = 2;
    v25 = v107;
    goto LABEL_4;
  }

  v50 = v49;
  v147 = v48;

  v196 = v50 & 1;
  sub_100020E58(v37, v37[3]);
  v51 = dispatch thunk of Decoder.userInfo.getter();
  v52 = v212;
  sub_1007BC94C(3, v51, 0, 0, v198);
  v212 = v52;
  if (v52)
  {
    (*(v45 + 8))(v41, v18);

    v137 = 0;
    v138 = 0;
    v135 = 0;
    v136 = 0;
    v130 = 0;
    v131 = 0;
    v132 = 0;
    v133 = 0;
    v134 = 0;
    v140 = 0;
    v141 = 0;
    v139 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v142 = 0;
    v143 = 0;
    v145 = 0;
    v146 = 0;
    v144 = 0;
    goto LABEL_26;
  }

  v143 = v198[0];
  v144 = v198[1];
  v145 = v198[2];
  v146 = v198[3];
  v106 = v199;
  sub_100020E58(v37, v37[3]);
  v53 = dispatch thunk of Decoder.userInfo.getter();
  v54 = v212;
  v55 = sub_1007BCC5C(4, v53, 0, 0);
  if (v54)
  {
    v212 = v54;
    (*(v45 + 8))(v41, v18);

    v137 = 0;
    v138 = 0;
    v135 = 0;
    v136 = 0;
    v130 = 0;
    v131 = 0;
    v132 = 0;
    v133 = 0;
    v134 = 0;
    v140 = 0;
    v141 = 0;
    v139 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v142 = 0;
    v126 = 0;
    v127 = 0;
    v124 = 0;
    v125 = 0;
    v122 = 0;
    v123 = 0;
    v129 = 3;
    v121 = 0xFFFFFFFD00;
    v128 = 6;
    v115 = 2;
    v116 = 2;
    v117 = 2;
    v118 = 2;
    v119 = 2;
    v120 = 2;
    v150 = 2;
    v26 = 2;
    v27 = v106;
    v25 = v107;
    goto LABEL_4;
  }

  v105 = v55;

  sub_100020E58(v155, v155[3]);
  v56 = dispatch thunk of Decoder.userInfo.getter();
  v142 = sub_1007BC924(5, v56, 0, 0);
  v58 = v57;

  v192 = v58 & 1;
  sub_100020E58(v155, v155[3]);
  v59 = dispatch thunk of Decoder.userInfo.getter();
  v153 = sub_1007BC644(6, v59, 0, 0);
  v154 = v60;
  v212 = 0;

  sub_100020E58(v155, v155[3]);
  v61 = dispatch thunk of Decoder.userInfo.getter();
  v62 = v212;
  v104 = sub_1007BCC5C(7, v61, 0, 0);
  if (v62)
  {
    (*(v114 + 8))(v41, v18);

    v137 = 0;
    v138 = 0;
    v135 = 0;
    v136 = 0;
    v130 = 0;
    v131 = 0;
    v132 = 0;
    v133 = 0;
    v134 = 0;
    v140 = 0;
    v141 = 0;
    v139 = 0;
    v151 = 0;
    v152 = 0;
    v126 = 0;
    v127 = 0;
    v124 = 0;
    v125 = 0;
    v122 = 0;
    v123 = 0;
    v129 = 3;
    v121 = 0xFFFFFFFD00;
    v128 = 6;
    v115 = 2;
    v116 = 2;
    v117 = 2;
    v118 = 2;
    v119 = 2;
    v120 = 2;
    v150 = 2;
    v212 = v62;
    v27 = v106;
    v25 = v107;
    v26 = v105;
    goto LABEL_4;
  }

  sub_100020E58(v155, v155[3]);
  v63 = dispatch thunk of Decoder.userInfo.getter();
  v103 = sub_1007BCC5C(8, v63, 0, 0);

  sub_100020E58(v155, v155[3]);
  v64 = dispatch thunk of Decoder.userInfo.getter();
  v151 = sub_1007BC644(9, v64, 0, 0);
  v152 = v65;

  sub_100020E58(v155, v155[3]);
  v66 = dispatch thunk of Decoder.userInfo.getter();
  v150 = sub_1007BCC5C(10, v66, 0, 0);

  sub_100020E58(v155, v155[3]);
  dispatch thunk of Decoder.userInfo.getter();
  v161 = 11;
  sub_10114B154();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v157[128] = *&v173[128];
  *&v157[144] = *&v173[144];
  *&v157[160] = *&v173[160];
  *&v157[64] = *&v173[64];
  *&v157[80] = *&v173[80];
  *&v157[112] = *&v173[112];
  *&v157[96] = *&v173[96];
  *v157 = *v173;
  *&v157[16] = *&v173[16];
  *&v157[48] = *&v173[48];
  *&v157[32] = *&v173[32];
  if (sub_1007CE118(v157) == 1)
  {

    v159[8] = *&v173[128];
    v159[9] = *&v173[144];
    v159[10] = *&v173[160];
    v159[4] = *&v173[64];
    v159[5] = *&v173[80];
    v159[7] = *&v173[112];
    v159[6] = *&v173[96];
    v159[0] = *v173;
    v159[1] = *&v173[16];
    v159[3] = *&v173[48];
    v159[2] = *&v173[32];
    sub_10000CAAC(v159, &qword_101A005F0);
    v170 = v208;
    v171 = v209;
    v172 = v210;
    v166 = v204;
    v167 = v205;
    v169 = v207;
    v168 = v206;
    v162 = v200;
    v163 = v201;
    v67 = v203;
    v68 = v202;
  }

  else
  {

    v170 = *&v173[128];
    v171 = *&v173[144];
    v172 = *&v173[160];
    v166 = *&v173[64];
    v167 = *&v173[80];
    v169 = *&v173[112];
    v168 = *&v173[96];
    v162 = *v173;
    v163 = *&v173[16];
    v67 = *&v173[48];
    v68 = *&v173[32];
  }

  v165 = v67;
  v164 = v68;
  v160[8] = *&v188[135];
  v160[9] = *&v188[151];
  v160[10] = *&v188[167];
  v160[4] = *&v188[71];
  v160[5] = *&v188[87];
  v160[7] = *&v188[119];
  v160[6] = *&v188[103];
  v160[0] = *&v188[7];
  v160[1] = *&v188[23];
  v160[3] = *&v188[55];
  v160[2] = *&v188[39];
  sub_10000CAAC(v160, &qword_101A005F0);
  *&v188[135] = v170;
  *&v188[151] = v171;
  *&v188[167] = v172;
  *&v188[71] = v166;
  *&v188[87] = v167;
  *&v188[103] = v168;
  *&v188[119] = v169;
  *&v188[7] = v162;
  *&v188[23] = v163;
  *&v188[39] = v164;
  *&v188[55] = v165;
  sub_100020E58(v155, v155[3]);
  v69 = dispatch thunk of Decoder.userInfo.getter();
  v120 = sub_1007BCC5C(12, v69, 0, 0);

  sub_100020E58(v155, v155[3]);
  v70 = dispatch thunk of Decoder.userInfo.getter();
  v119 = sub_1007BCC5C(13, v70, 0, 0);

  sub_100020E58(v155, v155[3]);
  v71 = dispatch thunk of Decoder.userInfo.getter();
  v139 = sub_1007BC924(14, v71, 0, 0);
  v73 = v72;

  v185 = v73 & 1;
  sub_100020E58(v155, v155[3]);
  v74 = dispatch thunk of Decoder.userInfo.getter();
  v128 = sub_1007BCC84(15, v74, 0);
  v141 = v75;

  sub_100020E58(v155, v155[3]);
  v76 = dispatch thunk of Decoder.userInfo.getter();
  v140 = sub_1007BCF44(16, v76, 0, 0);
  v78 = v77;

  v183 = v78 & 1;
  sub_100020E58(v155, v155[3]);
  v79 = dispatch thunk of Decoder.userInfo.getter();
  v129 = sub_1007BD224(17, v79, 0, 0);

  sub_100020E58(v155, v155[3]);
  v80 = dispatch thunk of Decoder.userInfo.getter();
  v118 = sub_1007BCC5C(18, v80, 0, 0);

  sub_100020E58(v155, v155[3]);
  dispatch thunk of Decoder.userInfo.getter();
  v157[0] = 19;
  sub_1011BB6B8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();

  v124 = *&v173[8];
  v125 = *v173;
  v122 = *&v173[24];
  v123 = *&v173[16];
  v121 = *&v173[32];
  v134 = *&v173[40];
  v135 = *&v173[48];
  v137 = *&v173[64];
  v138 = *&v173[56];
  v136 = *&v173[72];
  v126 = *&v173[88];
  v127 = *&v173[80];
  sub_100020E58(v155, v155[3]);
  v81 = dispatch thunk of Decoder.userInfo.getter();
  v133 = sub_1007BC924(20, v81, 0, 0);
  v83 = v82;

  v180 = v83 & 1;
  sub_100020E58(v155, v155[3]);
  v84 = dispatch thunk of Decoder.userInfo.getter();
  v132 = sub_1007BC924(21, v84, 0, 0);
  v86 = v85;

  v178 = v86 & 1;
  sub_100020E58(v155, v155[3]);
  v87 = dispatch thunk of Decoder.userInfo.getter();
  v131 = sub_1007BC924(22, v87, 0, 0);
  v89 = v88;

  v176 = v89 & 1;
  sub_100020E58(v155, v155[3]);
  v90 = dispatch thunk of Decoder.userInfo.getter();
  v130 = sub_1007BD520(23, v90, 0, 0);

  sub_100020E58(v155, v155[3]);
  v91 = dispatch thunk of Decoder.userInfo.getter();
  v116 = sub_1007BCC5C(24, v91, 0, 0);

  sub_100020E58(v155, v155[3]);
  v92 = dispatch thunk of Decoder.userInfo.getter();
  v115 = sub_1007BCC5C(25, v92, 0, 0);

  sub_100020E58(v155, v155[3]);
  v93 = dispatch thunk of Decoder.userInfo.getter();
  v117 = sub_1007BCC5C(26, v93, 0, 0);

  sub_100020E58(v155, v155[3]);
  dispatch thunk of Decoder.userInfo.getter();
  v158 = 27;
  sub_10115CDE8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v212 = 0;
  memcpy(v157, v173, 0x37CuLL);
  v94 = sub_1007CE3F8(v157);
  v95 = (v114 + 8);
  if (v94 == 1)
  {

    (*v95)(v41, v18);
    memcpy(v156, v173, 0x37CuLL);
    sub_10000CAAC(v156, &qword_101A006A0);
    memcpy(v159, v211, 0x37CuLL);
  }

  else
  {

    memcpy(v159, v173, 0x37CuLL);
    (*v95)(v41, v18);
  }

  v96 = v108;
  memcpy(v156, v108, 0x37CuLL);
  sub_10000CAAC(v156, &qword_101A006A0);
  memcpy(v96, v159, 0x37CuLL);
  v157[0] = v107;
  *&v157[1] = *v197;
  *&v157[4] = *&v197[3];
  *&v157[8] = v148;
  *&v157[16] = v149;
  *&v157[24] = v147;
  LODWORD(v109) = v196;
  v157[32] = v196;
  *&v157[33] = *v195;
  *&v157[36] = *&v195[3];
  *&v157[40] = v143;
  *&v157[48] = v144;
  *&v157[56] = v145;
  *&v157[64] = v146;
  v157[72] = v106;
  v157[73] = v105;
  *&v157[74] = v193;
  *&v157[78] = v194;
  *&v157[80] = v142;
  LODWORD(v108) = v192;
  v157[88] = v192;
  *&v157[89] = *v191;
  *&v157[92] = *&v191[3];
  *&v157[96] = v153;
  *&v157[104] = v154;
  v157[112] = v104;
  v157[113] = v103;
  *&v157[114] = v189;
  *&v157[118] = v190;
  v98 = v151;
  v97 = v152;
  *&v157[120] = v151;
  *&v157[128] = v152;
  v157[136] = v150;
  *&v157[281] = *&v188[144];
  *&v157[297] = *&v188[160];
  *&v157[265] = *&v188[128];
  *&v157[185] = *&v188[48];
  *&v157[169] = *&v188[32];
  *&v157[153] = *&v188[16];
  *&v157[137] = *v188;
  *&v157[249] = *&v188[112];
  *&v157[233] = *&v188[96];
  *&v157[217] = *&v188[80];
  *&v157[201] = *&v188[64];
  *&v157[312] = *&v188[175];
  v99 = v119;
  v100 = v120;
  v157[320] = v120;
  v157[321] = v119;
  *&v157[322] = v186;
  *&v157[326] = v187;
  v101 = v139;
  *&v157[328] = v139;
  LOBYTE(v96) = v185;
  v157[336] = v185;
  *&v157[337] = *v184;
  *&v157[340] = *&v184[3];
  *&v157[344] = v128;
  *&v157[352] = v141;
  *&v157[360] = v140;
  LODWORD(v113) = v183;
  v157[368] = v183;
  v157[369] = v129;
  v157[370] = v118;
  *&v157[371] = v181;
  v157[375] = v182;
  *&v157[376] = v125;
  *&v157[384] = v124;
  *&v157[392] = v123;
  *&v157[400] = v122;
  *&v157[408] = v121;
  *&v157[416] = v134;
  *&v157[424] = v135;
  *&v157[432] = v138;
  *&v157[440] = v137;
  *&v157[448] = v136;
  *&v157[456] = v127;
  *&v157[464] = v126;
  *&v157[472] = v133;
  LODWORD(v114) = v180;
  v157[480] = v180;
  *&v157[481] = *v179;
  *&v157[484] = *&v179[3];
  *&v157[488] = v132;
  *&v157[497] = *v177;
  *&v157[513] = *v175;
  LODWORD(v110) = v178;
  v157[496] = v178;
  *&v157[500] = *&v177[3];
  *&v157[504] = v131;
  *&v157[516] = *&v175[3];
  LODWORD(v112) = v176;
  v157[512] = v176;
  *&v157[520] = v130;
  v157[528] = v116;
  v157[529] = v115;
  v157[530] = v117;
  memcpy(&v157[531], v174, 0x381uLL);
  sub_1011B78B4(v157, v173);
  sub_100005070(v155);
  v173[0] = v107;
  *&v173[8] = v148;
  *&v173[16] = v149;
  *&v173[24] = v147;
  v173[32] = v109;
  *&v173[40] = v143;
  *&v173[48] = v144;
  *&v173[56] = v145;
  *&v173[64] = v146;
  v173[72] = v106;
  v173[73] = v105;
  *&v173[80] = v142;
  v173[88] = v108;
  *&v173[96] = v153;
  *&v173[104] = v154;
  v173[112] = v104;
  v173[113] = v103;
  *&v173[120] = v98;
  *&v173[128] = v97;
  v173[136] = v150;
  v173[320] = v100;
  v173[321] = v99;
  *&v173[328] = v101;
  v173[336] = v96;
  *&v173[322] = v186;
  *&v173[337] = *v184;
  *&v173[1] = *v197;
  *&v173[4] = *&v197[3];
  *&v173[33] = *v195;
  *&v173[36] = *&v195[3];
  *&v173[74] = v193;
  *&v173[78] = v194;
  *&v173[89] = *v191;
  *&v173[92] = *&v191[3];
  *&v173[118] = v190;
  *&v173[114] = v189;
  *&v173[281] = *&v188[144];
  *&v173[297] = *&v188[160];
  *&v173[265] = *&v188[128];
  *&v173[185] = *&v188[48];
  *&v173[169] = *&v188[32];
  *&v173[153] = *&v188[16];
  *&v173[137] = *v188;
  *&v173[249] = *&v188[112];
  *&v173[233] = *&v188[96];
  *&v173[217] = *&v188[80];
  *&v173[201] = *&v188[64];
  *&v173[312] = *&v188[175];
  *&v173[326] = v187;
  *&v173[340] = *&v184[3];
  *&v173[344] = v128;
  *&v173[352] = v141;
  v173[368] = v113;
  v173[369] = v129;
  v173[370] = v118;
  *&v173[371] = v181;
  v173[375] = v182;
  *&v173[360] = v140;
  *&v173[376] = v125;
  *&v173[384] = v124;
  *&v173[392] = v123;
  *&v173[400] = v122;
  *&v173[408] = v121;
  *&v173[416] = v134;
  *&v173[424] = v135;
  *&v173[432] = v138;
  *&v173[440] = v137;
  *&v173[448] = v136;
  *&v173[456] = v127;
  *&v173[464] = v126;
  *&v173[472] = v133;
  v173[480] = v114;
  *&v173[481] = *v179;
  *&v173[484] = *&v179[3];
  *&v173[488] = v132;
  v173[496] = v110;
  *&v173[497] = *v177;
  *&v173[500] = *&v177[3];
  *&v173[504] = v131;
  v173[512] = v112;
  *&v173[513] = *v175;
  *&v173[516] = *&v175[3];
  *&v173[520] = v130;
  v173[528] = v116;
  v173[529] = v115;
  v173[530] = v117;
  memcpy(&v173[531], v174, 0x381uLL);
  sub_1011B78EC(v173);
  return memcpy(v111, v157, 0x594uLL);
}

unint64_t sub_1011BA450()
{
  result = qword_101A2C230;
  if (!qword_101A2C230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C230);
  }

  return result;
}

unint64_t sub_1011BA4A4()
{
  result = qword_101A2C238;
  if (!qword_101A2C238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C238);
  }

  return result;
}

unint64_t sub_1011BA4F8()
{
  result = qword_101A2C240;
  if (!qword_101A2C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C240);
  }

  return result;
}

unint64_t sub_1011BA54C()
{
  result = qword_101A2C248;
  if (!qword_101A2C248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C248);
  }

  return result;
}

unint64_t sub_1011BA5A0()
{
  result = qword_101A2C250;
  if (!qword_101A2C250)
  {
    sub_1005C4E5C(&qword_101A005B0);
    sub_10117488C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C250);
  }

  return result;
}

unint64_t _s8Freeform17TSContentLanguageO6ModelsO19ParagraphPropertiesV13AlignmentTypeO8rawValueAISgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101879D08, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t _s8Freeform17TSContentLanguageO6ModelsO19ParagraphPropertiesV16OutlineStyleTypeO8rawValueAISgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101879DA0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1011BA6BC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101879E08, v2);

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1011BA708@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for CodingUserInfoKey();
  v59 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v46[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1005B981C(&qword_101A005A0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v46[-v9];
  v11 = a1[3];
  v62 = a1;
  sub_100020E58(a1, v11);
  sub_1011BB134();
  v12 = v61;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    return sub_100005070(v62);
  }

  v58 = v6;
  v13 = v60;
  v61 = v8;
  LOBYTE(v63) = 10;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v15)
  {
    if (v14 == 0xD000000000000046 && v15 == 0x800000010158AA80)
    {
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v18[1] = 0;
        v18[2] = 0;
        *v18 = 0;
        swift_willThrow();
LABEL_11:
        (*(v61 + 8))(v10, v7);
        return sub_100005070(v62);
      }
    }
  }

  type metadata accessor for TSCLVersion();
  v70 = 11;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v20 = v63;
  v57 = v10;
  if (v63)
  {
    if (qword_1019F2A38 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.ParagraphProperties.BorderStyleType.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v20[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v21 = xmmword_101463530;
      *(v21 + 16) = 0;
      swift_willThrow();

      goto LABEL_11;
    }
  }

  sub_100020E58(v62, v62[3]);
  dispatch thunk of Decoder.userInfo.getter();
  v70 = 0;
  sub_1009694C4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();

  v55 = v64;
  v56 = v63;
  v22 = v65;
  v59 = v66;
  LODWORD(v58) = v67;
  sub_100020E58(v62, v62[3]);
  v23 = dispatch thunk of Decoder.userInfo.getter();
  v24 = sub_1007BD818(1, v23, 0, 0);
  v26 = v25;
  v54 = v24;

  v69 = v26 & 1;
  sub_100020E58(v62, v62[3]);
  v27 = dispatch thunk of Decoder.userInfo.getter();
  v28 = sub_1007BDAF8(2, v27, 0, 0);
  v30 = v29;
  v53 = v31;
  v52 = v28;

  v68 = v30 & 1;
  sub_100020E58(v62, v62[3]);
  v32 = dispatch thunk of Decoder.userInfo.getter();
  v51 = sub_1007BDE08(3, v32, 0, 0);

  sub_100020E58(v62, v62[3]);
  v33 = dispatch thunk of Decoder.userInfo.getter();
  v50 = sub_1007BDE08(4, v33, 0, 0);

  sub_100020E58(v62, v62[3]);
  v34 = dispatch thunk of Decoder.userInfo.getter();
  v49 = sub_1007BDE08(5, v34, 0, 0);

  sub_100020E58(v62, v62[3]);
  v35 = dispatch thunk of Decoder.userInfo.getter();
  v48 = sub_1007BDE08(6, v35, 0, 0);

  sub_100020E58(v62, v62[3]);
  v36 = dispatch thunk of Decoder.userInfo.getter();
  LOBYTE(v34) = sub_1007BDE08(7, v36, 0, 0);

  sub_100020E58(v62, v62[3]);
  v37 = dispatch thunk of Decoder.userInfo.getter();
  v47 = sub_1007BDE08(8, v37, 0, 0);

  v38 = v62;
  sub_100020E58(v62, v62[3]);
  v39 = dispatch thunk of Decoder.userInfo.getter();
  v40 = v57;
  v41 = sub_1007BDE08(9, v39, 0, 0);
  (*(v61 + 8))(v40, v7);

  LOBYTE(v37) = v69;
  v42 = v68;
  result = sub_100005070(v38);
  v43 = v55;
  *v13 = v56;
  *(v13 + 16) = v43;
  v44 = v59;
  *(v13 + 32) = v22;
  *(v13 + 40) = v44;
  *(v13 + 48) = v58;
  *(v13 + 56) = v54;
  *(v13 + 64) = v37;
  v45 = v53;
  *(v13 + 72) = v52;
  *(v13 + 80) = v45;
  *(v13 + 88) = v42;
  *(v13 + 89) = v51;
  *(v13 + 90) = v50;
  *(v13 + 91) = v49;
  *(v13 + 92) = v48;
  *(v13 + 93) = v34;
  *(v13 + 94) = v47;
  *(v13 + 95) = v41;
  return result;
}

unint64_t sub_1011BB134()
{
  result = qword_101A2C260;
  if (!qword_101A2C260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C260);
  }

  return result;
}

unint64_t sub_1011BB188()
{
  result = qword_101A2C268;
  if (!qword_101A2C268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C268);
  }

  return result;
}

unint64_t sub_1011BB1DC(uint64_t a1)
{
  result = sub_100B0F96C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1011BB244()
{
  result = qword_101A2C270;
  if (!qword_101A2C270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C270);
  }

  return result;
}

unint64_t sub_1011BB29C()
{
  result = qword_101A2C278;
  if (!qword_101A2C278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C278);
  }

  return result;
}

unint64_t sub_1011BB31C()
{
  result = qword_101A2C280;
  if (!qword_101A2C280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C280);
  }

  return result;
}

unint64_t sub_1011BB370()
{
  result = qword_101A2C288;
  if (!qword_101A2C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C288);
  }

  return result;
}

unint64_t sub_1011BB3C4(uint64_t a1)
{
  result = sub_100B0F918();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1011BB430()
{
  result = qword_101A2C290;
  if (!qword_101A2C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C290);
  }

  return result;
}

uint64_t sub_1011BB4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1011BB4EC()
{
  result = qword_101A2C298;
  if (!qword_101A2C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C298);
  }

  return result;
}

unint64_t sub_1011BB540()
{
  result = qword_101A2C2A0;
  if (!qword_101A2C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C2A0);
  }

  return result;
}

unint64_t sub_1011BB594(uint64_t a1)
{
  result = sub_100B0F8C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1011BB5FC(uint64_t a1)
{
  result = sub_100B0F870();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1011BB664(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[2] = a4();
  a1[3] = a5();
  result = a6();
  a1[4] = result;
  return result;
}

unint64_t sub_1011BB6B8()
{
  result = qword_101A2C2A8;
  if (!qword_101A2C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C2A8);
  }

  return result;
}

unint64_t sub_1011BB70C()
{
  result = qword_101A2C2B0;
  if (!qword_101A2C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C2B0);
  }

  return result;
}

uint64_t sub_1011BB768(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 1428))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1011BB7C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 1416) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 1424) = 0;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1428) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1428) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 sub_1011BB9C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1011BB9E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 96))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 33);
  if (v3 <= 0x80000000)
  {
    v4 = -1;
  }

  else
  {
    v4 = ((-2 - v3) & ~((-2 - v3) >> 31)) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_1011BBA40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = (-2 - a2) << 8;
      *(result + 40) = 0;
      *(result + 48) = 0;
    }
  }

  return result;
}

unint64_t sub_1011BBAF0()
{
  result = qword_101A2C2B8;
  if (!qword_101A2C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C2B8);
  }

  return result;
}

unint64_t sub_1011BBB48()
{
  result = qword_101A2C2C0;
  if (!qword_101A2C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C2C0);
  }

  return result;
}

unint64_t sub_1011BBBA0()
{
  result = qword_101A2C2C8;
  if (!qword_101A2C2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C2C8);
  }

  return result;
}

unint64_t sub_1011BBBF8()
{
  result = qword_101A2C2D0;
  if (!qword_101A2C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C2D0);
  }

  return result;
}

unint64_t sub_1011BBC50()
{
  result = qword_101A2C2D8;
  if (!qword_101A2C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C2D8);
  }

  return result;
}

unint64_t sub_1011BBCA8()
{
  result = qword_101A2C2E0;
  if (!qword_101A2C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C2E0);
  }

  return result;
}

id sub_1011BBD28()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.ScaffoldGradient.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.ScaffoldGradient.version.unsafeMutableAddressor()
{
  if (qword_1019F2A40 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.ScaffoldGradient.version;
}

id static TSContentLanguage.Models.ScaffoldGradient.version.getter()
{
  if (qword_1019F2A40 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.ScaffoldGradient.version;

  return v1;
}

__n128 TSContentLanguage.Models.ScaffoldGradient.init(startColor:endColor:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100810AD0(a1, v8);
  sub_100810AD0(a2, &v9 + 8);
  *(&v11[1] + 1) = *&v10[9];
  v11[1] = *&v10[8];
  result = v8[0];
  v6 = v8[1];
  v7 = *v10;
  *(a3 + 32) = v9;
  *(a3 + 48) = v7;
  *(a3 + 57) = *(&v11[1] + 1);
  *a3 = result;
  *(a3 + 16) = v6;
  return result;
}

Swift::Int sub_1011BBED8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1011BBFB4()
{
  String.hash(into:)();
}

Swift::Int sub_1011BC07C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1011BC154@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1011BC9C0(*a1);
  *a2 = result;
  return result;
}

void sub_1011BC184(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000726F6CLL;
  v3 = 0x6F635F7472617473;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x6564695F65707974;
  if (*v1 != 2)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x6F6C6F635F646E65;
    v2 = 0xE900000000000072;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1011BC21C()
{
  v1 = 0x6F635F7472617473;
  v2 = 0x6564695F65707974;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v1 = 0x6F6C6F635F646E65;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1011BC2B0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1011BC9C0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1011BC2D8(uint64_t a1)
{
  v2 = sub_1011BD0F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011BC314(uint64_t a1)
{
  v2 = sub_1011BD0F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 TSContentLanguage.Models.ScaffoldGradient.init(from:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1011BCA0C(a1, v6);
  if (!v2)
  {
    v5 = v7[0];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 57) = *(v7 + 9);
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t TSContentLanguage.Models.ScaffoldGradient.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A2C2E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-1] - v7;
  sub_100020E58(a1, a1[3]);
  sub_1011BD0F0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100810AD0(v3, v13);
  sub_100810AD0(v13, v11);
  HIBYTE(v10) = 0;
  sub_100B64688();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    sub_100810AD0(v3 + 40, v12);
    sub_100810AD0(v12, v11);
    HIBYTE(v10) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11[0]) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (qword_1019F2A40 != -1)
    {
      swift_once();
    }

    v11[0] = static TSContentLanguage.Models.ScaffoldGradient.version;
    HIBYTE(v10) = 3;
    type metadata accessor for TSCLVersion();
    sub_100969804(&qword_101A00458);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t TSContentLanguage.Models.ScaffoldGradient.isEquivalent(to:)(uint64_t a1)
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v1, *a1), vceqq_f64(*(v1 + 16), *(a1 + 16))))) & 1) == 0)
  {
    goto LABEL_2;
  }

  v4 = *(a1 + 32);
  if (*(v1 + 32))
  {
    v5 = 1650946675;
  }

  else
  {
    v5 = 13168;
  }

  if (*(v1 + 32))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v4)
  {
    v7 = 1650946675;
  }

  else
  {
    v7 = 13168;
  }

  if (v4)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE200000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {

LABEL_22:
    sub_100810AD0(v1 + 40, v13);
    sub_100810AD0(a1 + 40, v12);
    v2 = sub_100B1BBC8(v12);
    return v2 & 1;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
    goto LABEL_22;
  }

LABEL_2:
  v2 = 0;
  return v2 & 1;
}

uint64_t sub_1011BC770(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 9) = *(a2 + 57);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return _s8Freeform17TSContentLanguageO6ModelsO16ScaffoldGradientV23__derived_struct_equalsySbAG_AGtFZ_0(v7, v9) & 1;
}

uint64_t sub_1011BC7CC(_OWORD *a1)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = v1[3];
  v8[4] = v1[2];
  v9[0] = v4;
  *(v9 + 9) = *(v1 + 57);
  v5 = v1[1];
  v8[2] = *v1;
  v8[3] = v5;
  return TSContentLanguage.Models.ScaffoldGradient.isEquivalent(to:)(v7) & 1;
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO16ScaffoldGradientV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))))) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 32) == 0;
  if (*(a1 + 32))
  {
    v6 = 1650946675;
  }

  else
  {
    v6 = 13168;
  }

  if (v5)
  {
    v7 = 0xE200000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (*(a2 + 32))
  {
    v8 = 1650946675;
  }

  else
  {
    v8 = 13168;
  }

  if (*(a2 + 32))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE200000000000000;
  }

  if (v6 == v8 && v7 == v9)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 40), *(a2 + 40)), vceqq_f64(*(a1 + 56), *(a2 + 56))))) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 72))
  {
    v12 = 1650946675;
  }

  else
  {
    v12 = 13168;
  }

  if (*(a1 + 72))
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE200000000000000;
  }

  if (*(a2 + 72))
  {
    v14 = 1650946675;
  }

  else
  {
    v14 = 13168;
  }

  if (*(a2 + 72))
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE200000000000000;
  }

  if (v12 == v14 && v13 == v15)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_1011BC9C0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101879F48, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1011BCA0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A2C318);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v44 - v7;
  sub_100020E58(a1, a1[3]);
  sub_1011BD0F0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  LOBYTE(v48) = 2;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v10)
  {
    if (v9 == 0xD000000000000031 && v10 == 0x800000010158A0D0)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v13[1] = 0;
        v13[2] = 0;
        *v13 = 0;
LABEL_32:
        swift_willThrow();
        goto LABEL_33;
      }
    }
  }

  type metadata accessor for TSCLVersion();
  LOBYTE(v51) = 3;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v14 = v48;
  if (v48)
  {
    if (qword_1019F2A40 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.ScaffoldGradient.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v14[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v15 = xmmword_101463530;
      *(v15 + 16) = 0;
      swift_willThrow();

LABEL_33:
      (*(v6 + 8))(v8, v5);
      return sub_100005070(a1);
    }
  }

  sub_100020E58(a1, a1[3]);
  dispatch thunk of Decoder.userInfo.getter();

  v52 = 0;
  sub_1007CE070();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v46 = v6;
  if (v50 == 2)
  {
    v16 = KeyedDecodingContainer.codingPath.getter();
    v17 = *(v16 + 16);
    if (v17)
    {
      v51 = _swiftEmptyArrayStorage;
      sub_100034080(0, v17, 0);
      v18 = v51;
      *&v45 = v16;
      v19 = v16 + 32;
      do
      {
        sub_10000630C(v19, &v48);
        sub_100020E58(&v48, *(&v49 + 1));
        v20 = dispatch thunk of CodingKey.stringValue.getter();
        *&v47 = v21;
        sub_100005070(&v48);
        v51 = v18;
        v23 = v18[2];
        v22 = v18[3];
        if (v23 >= v22 >> 1)
        {
          sub_100034080((v22 > 1), v23 + 1, 1);
          v18 = v51;
        }

        v18[2] = v23 + 1;
        v24 = &v18[2 * v23];
        v25 = v47;
        v24[4] = v20;
        v24[5] = v25;
        v19 += 40;
        --v17;
      }

      while (v17);
    }

    else
    {

      v18 = _swiftEmptyArrayStorage;
    }

    sub_1007CDECC();
    swift_allocError();
    *v36 = 0x6F635F7472617473;
    v36[1] = 0xEB00000000726F6CLL;
    v36[2] = v18;
    swift_willThrow();
    v6 = v46;
    goto LABEL_32;
  }

  LODWORD(v44) = v50;
  v45 = v49;
  v47 = v48;
  sub_100020E58(a1, a1[3]);
  dispatch thunk of Decoder.userInfo.getter();

  v52 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v50 == 2)
  {
    v26 = KeyedDecodingContainer.codingPath.getter();
    v27 = *(v26 + 16);
    if (v27)
    {
      v51 = _swiftEmptyArrayStorage;
      sub_100034080(0, v27, 0);
      v28 = v51;
      *&v45 = v26;
      v29 = v26 + 32;
      do
      {
        sub_10000630C(v29, &v48);
        sub_100020E58(&v48, *(&v49 + 1));
        v30 = dispatch thunk of CodingKey.stringValue.getter();
        *&v47 = v31;
        sub_100005070(&v48);
        v51 = v28;
        v33 = v28[2];
        v32 = v28[3];
        if (v33 >= v32 >> 1)
        {
          sub_100034080((v32 > 1), v33 + 1, 1);
          v28 = v51;
        }

        v28[2] = v33 + 1;
        v34 = &v28[2 * v33];
        v35 = v47;
        v34[4] = v30;
        v34[5] = v35;
        v29 += 40;
        --v27;
      }

      while (v27);
    }

    else
    {

      v28 = _swiftEmptyArrayStorage;
    }

    sub_1007CDECC();
    swift_allocError();
    *v42 = 0x6F6C6F635F646E65;
    v42[1] = 0xE900000000000072;
    v42[2] = v28;
    swift_willThrow();
    v43 = v46;
    swift_willThrow();
    (*(v43 + 8))(v8, v5);
    return sub_100005070(a1);
  }

  v38 = v44 & 1;
  v39 = *(v46 + 8);
  v40 = v50 & 1;
  v46 = v48;
  v44 = v49;
  v39(v8, v5);
  result = sub_100005070(a1);
  v41 = v45;
  *a2 = v47;
  *(a2 + 16) = v41;
  *(a2 + 32) = v38;
  *(a2 + 56) = v44;
  *(a2 + 40) = v46;
  *(a2 + 72) = v40;
  return result;
}

unint64_t sub_1011BD0F0()
{
  result = qword_101A2C2F0;
  if (!qword_101A2C2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C2F0);
  }

  return result;
}

unint64_t sub_1011BD144(uint64_t a1)
{
  result = sub_100B104E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1011BD16C(void *a1)
{
  a1[2] = sub_10117DA6C();
  a1[3] = sub_10117D2BC();
  result = sub_1011BD1A4();
  a1[4] = result;
  return result;
}

unint64_t sub_1011BD1A4()
{
  result = qword_101A2C2F8;
  if (!qword_101A2C2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C2F8);
  }

  return result;
}

uint64_t sub_1011BD1F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 73))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1011BD23C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1011BD2B8()
{
  result = qword_101A2C300;
  if (!qword_101A2C300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C300);
  }

  return result;
}

unint64_t sub_1011BD310()
{
  result = qword_101A2C308;
  if (!qword_101A2C308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C308);
  }

  return result;
}

unint64_t sub_1011BD368()
{
  result = qword_101A2C310;
  if (!qword_101A2C310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C310);
  }

  return result;
}

id sub_1011BD3E4()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.Offset.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.Offset.version.unsafeMutableAddressor()
{
  if (qword_1019F2A48 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Offset.version;
}

id static TSContentLanguage.Models.Offset.version.getter()
{
  if (qword_1019F2A48 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.Offset.version;

  return v1;
}

Swift::Int sub_1011BD528()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1011BD5E0()
{
  String.hash(into:)();
}

Swift::Int sub_1011BD684()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1011BD738@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1011BDBA4(*a1);
  *a2 = result;
  return result;
}

void sub_1011BD768(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 30820;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x6564695F65707974;
  if (*v1 != 2)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 31076;
    v2 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1011BD7DC()
{
  v1 = 30820;
  v2 = 0x6564695F65707974;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v1 = 31076;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1011BD84C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1011BDBA4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1011BD874(uint64_t a1)
{
  v2 = sub_1011BE400();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011BD8B0(uint64_t a1)
{
  v2 = sub_1011BE400();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TSContentLanguage.Models.Offset.encode(to:)(void *a1)
{
  v3 = sub_1005B981C(&qword_101A2C320);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - v5;
  sub_100020E58(a1, a1[3]);
  sub_1011BE400();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v11 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v10 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F2A48 != -1)
  {
    swift_once();
  }

  v8[1] = static TSContentLanguage.Models.Offset.version;
  v9 = 3;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1011BDB5C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1011BDBF0(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = v6;
  }

  return result;
}

unint64_t sub_1011BDBA4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101879FC8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1011BDBF0(void *a1)
{
  v2 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v2 - 8);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v33 = &v26 - v5;
  v6 = type metadata accessor for CodingUserInfoKey();
  v31 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_1005B981C(&qword_101A2C350);
  v32 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  sub_100020E58(a1, a1[3]);
  sub_1011BE400();
  v15 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    v19 = a1;
    return sub_100005070(v19);
  }

  v34 = v11;
  v28 = v8;
  v29 = v6;
  v16 = v32;
  LOBYTE(v35) = 2;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v27 = a1;
  if (v18)
  {
    if (v17 == 0xD000000000000026 && v18 == 0x800000010158A910)
    {
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v22 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v23[1] = 0;
        v23[2] = 0;
        *v23 = 0;
        swift_willThrow();
LABEL_14:
        (*(v16 + 8))(v14, v12);
        v19 = v27;
        return sub_100005070(v19);
      }
    }
  }

  type metadata accessor for TSCLVersion();
  v36 = 3;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v24 = v35;
  if (v35)
  {
    if (qword_1019F2A48 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.Offset.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v24[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v25 = xmmword_101463530;
      *(v25 + 16) = 0;
      swift_willThrow();

      goto LABEL_14;
    }
  }

  sub_100020E58(v27, v27[3]);
  dispatch thunk of Decoder.userInfo.getter();
  v36 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();

  sub_100020E58(v27, v27[3]);
  dispatch thunk of Decoder.userInfo.getter();
  v36 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();

  (*(v16 + 8))(v14, v12);
  return sub_100005070(v27);
}

unint64_t sub_1011BE400()
{
  result = qword_101A2C328;
  if (!qword_101A2C328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C328);
  }

  return result;
}

unint64_t sub_1011BE454(uint64_t a1)
{
  result = sub_100B0FA68();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1011BE47C(void *a1)
{
  a1[2] = sub_1007CDF20();
  a1[3] = sub_1011BB188();
  result = sub_1011BE4B4();
  a1[4] = result;
  return result;
}

unint64_t sub_1011BE4B4()
{
  result = qword_101A2C330;
  if (!qword_101A2C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C330);
  }

  return result;
}

unint64_t sub_1011BE52C()
{
  result = qword_101A2C338;
  if (!qword_101A2C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C338);
  }

  return result;
}

unint64_t sub_1011BE584()
{
  result = qword_101A2C340;
  if (!qword_101A2C340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C340);
  }

  return result;
}

unint64_t sub_1011BE5DC()
{
  result = qword_101A2C348;
  if (!qword_101A2C348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C348);
  }

  return result;
}

id sub_1011BE658()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.ListLevelType.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.ListLevelType.version.unsafeMutableAddressor()
{
  if (qword_1019F2A50 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.ListLevelType.version;
}

id static TSContentLanguage.Models.ListLevelType.version.getter()
{
  if (qword_1019F2A50 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.ListLevelType.version;

  return v1;
}

uint64_t TSContentLanguage.Models.ListLevelType.init(labelIndent:textIndent:label:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *v30 = a3;
  *&v30[1] = a4;
  v4 = *(result + 48);
  v33 = *(result + 32);
  v34 = v4;
  v35 = *(result + 64);
  v5 = *result;
  v32 = *(result + 16);
  v31 = v5;
  if (a3 < 0.0)
  {
    v23 = a3;
    v24 = a4;
    v6 = *(result + 48);
    v27 = *(result + 32);
    v28 = v6;
    v29 = *(result + 64);
    v7 = *(result + 16);
    v25 = *result;
    v26 = v7;
    sub_10067EFE8(v30, &v20);
    sub_10067F044(&v23);
    v21 = sub_1005B981C(&qword_101A2C358);
    v22 = sub_10001A2F8(&qword_101A2C360, &qword_101A2C358);
    *&v20 = 0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v9 = swift_allocError();
    *(v10 + 40) = a3;
    sub_100050F74(&v20, v10);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    v12 = 0x646E496C6562616CLL;
    v13 = 0xEB00000000746E65;
LABEL_5:
    *v11 = v12;
    v11[1] = v13;
    v11[2] = v9;
    swift_willThrow();
    return sub_10067F044(v30);
  }

  if (a4 < 0.0)
  {
    v23 = a3;
    v24 = a4;
    v14 = *(result + 48);
    v27 = *(result + 32);
    v28 = v14;
    v29 = *(result + 64);
    v15 = *(result + 16);
    v25 = *result;
    v26 = v15;
    sub_10067EFE8(v30, &v20);
    sub_10067F044(&v23);
    v21 = sub_1005B981C(&qword_101A2C358);
    v22 = sub_10001A2F8(&qword_101A2C360, &qword_101A2C358);
    *&v20 = 0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v9 = swift_allocError();
    *(v17 + 40) = a4;
    sub_100050F74(&v20, v17);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    v12 = 0x65646E4974786574;
    v13 = 0xEA0000000000746ELL;
    goto LABEL_5;
  }

  *a2 = a3;
  *(a2 + 8) = a4;
  v18 = *(result + 48);
  *(a2 + 48) = *(result + 32);
  *(a2 + 64) = v18;
  *(a2 + 80) = *(result + 64);
  v19 = *(result + 16);
  *(a2 + 16) = *result;
  *(a2 + 32) = v19;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TSContentLanguage.Models.ListLevelType.validate()()
{
  v1 = *v0;
  if (*v0 >= 0.0)
  {
    v6 = v0[1];
    if (v6 >= 0.0)
    {
      return;
    }

    v10 = sub_1005B981C(&qword_101A2C358);
    v11 = sub_10001A2F8(&qword_101A2C360, &qword_101A2C358);
    *&v9 = 0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v2 = swift_allocError();
    *(v7 + 40) = v6;
    sub_100050F74(&v9, v7);
    v4 = 0xEA0000000000746ELL;
    v5 = 0x65646E4974786574;
  }

  else
  {
    v10 = sub_1005B981C(&qword_101A2C358);
    v11 = sub_10001A2F8(&qword_101A2C360, &qword_101A2C358);
    *&v9 = 0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v2 = swift_allocError();
    *(v3 + 40) = v1;
    sub_100050F74(&v9, v3);
    v4 = 0xEB00000000746E65;
    v5 = 0x646E496C6562616CLL;
  }

  swift_willThrow();
  sub_100810B2C();
  swift_allocError();
  *v8 = v5;
  v8[1] = v4;
  v8[2] = v2;
  swift_willThrow();
}

Swift::Int sub_1011BED44()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1011BEE40()
{
  String.hash(into:)();
}

Swift::Int sub_1011BEF28()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1011BF020@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1011BFA50(*a1);
  *a2 = result;
  return result;
}

void sub_1011BF050(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000746E6564;
  v4 = 0x6E695F6C6562616CLL;
  v5 = 0xE500000000000000;
  v6 = 0x6C6562616CLL;
  v7 = 0xEF7265696669746ELL;
  v8 = 0x6564695F65707974;
  if (v2 != 3)
  {
    v8 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x646E695F74786574;
    v3 = 0xEB00000000746E65;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1011BF108()
{
  v1 = *v0;
  v2 = 0x6E695F6C6562616CLL;
  v3 = 0x6C6562616CLL;
  v4 = 0x6564695F65707974;
  if (v1 != 3)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x646E695F74786574;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1011BF1BC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1011BFA50(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1011BF1E4(uint64_t a1)
{
  v2 = sub_1011C0440();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011BF220(uint64_t a1)
{
  v2 = sub_1011C0440();

  return CodingKey.debugDescription.getter(a1, v2);
}

double TSContentLanguage.Models.ListLevelType.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1011BFA9C(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t TSContentLanguage.Models.ListLevelType.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A2C368);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_100020E58(a1, a1[3]);
  sub_1011C0440();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v14) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v10 = *(v3 + 64);
  v16 = *(v3 + 48);
  v17 = v10;
  v18 = *(v3 + 80);
  v11 = *(v3 + 32);
  v14 = *(v3 + 16);
  v15 = v11;
  v13 = 2;
  sub_101167284();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v14) = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F2A50 != -1)
  {
    swift_once();
  }

  *&v14 = static TSContentLanguage.Models.ListLevelType.version;
  v13 = 4;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

BOOL TSContentLanguage.Models.ListLevelType.isEquivalent(to:)(uint64_t a1)
{
  v3 = sub_1007C87EC(*v1, *a1);
  if (v3)
  {
    v3 = sub_1007C87EC(*(v1 + 8), *(a1 + 8));
    if (v3)
    {
      v4 = *(v1 + 64);
      v11[2] = *(v1 + 48);
      v11[3] = v4;
      v12 = *(v1 + 80);
      v5 = *(v1 + 32);
      v11[0] = *(v1 + 16);
      v11[1] = v5;
      v6 = *(a1 + 64);
      v9[2] = *(a1 + 48);
      v9[3] = v6;
      v10 = *(a1 + 80);
      v7 = *(a1 + 32);
      v9[0] = *(a1 + 16);
      v9[1] = v7;
      LOBYTE(v3) = _s8Freeform17TSContentLanguageO6ModelsO13ListLabelTypeO21__derived_enum_equalsySbAG_AGtFZ_0(v11, v9);
    }
  }

  return v3;
}

uint64_t sub_1011BF618(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return _s8Freeform17TSContentLanguageO6ModelsO13ListLevelTypeV23__derived_struct_equalsySbAG_AGtFZ_0(v7, v9) & 1;
}

BOOL sub_1011BF684(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 64);
  v15[2] = *(a1 + 48);
  v15[3] = v4;
  v16 = *(a1 + 80);
  v5 = *(a1 + 32);
  v15[0] = *(a1 + 16);
  v15[1] = v5;
  v5.i64[0] = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 32);
  v9 = *(v1 + 48);
  v10 = *(v1 + 64);
  v14 = *(v1 + 80);
  v13[2] = v9;
  v13[3] = v10;
  v13[0] = v7;
  v13[1] = v8;
  v11 = sub_1007C87EC(*v5.i64, v2);
  if (v11)
  {
    v11 = sub_1007C87EC(v6, v3);
    if (v11)
    {
      LOBYTE(v11) = _s8Freeform17TSContentLanguageO6ModelsO13ListLabelTypeO21__derived_enum_equalsySbAG_AGtFZ_0(v13, v15);
    }
  }

  return v11;
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO13ListLevelTypeV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v15 = *(a2 + 32);
  v14 = *(a2 + 40);
  v17 = *(a2 + 48);
  v16 = *(a2 + 56);
  v19 = *(a2 + 64);
  v18 = *(a2 + 72);
  v20 = v11 >> 6;
  v21 = *(a2 + 80);
  if (v11 >> 6 > 1)
  {
    if (v20 == 2)
    {
      if ((v21 & 0xC0) != 0x80)
      {
        return 0;
      }

      if (*&v3 != *&v12 || *&v5 != *&v13)
      {
        v23 = *(a2 + 56);
        v24 = *(a2 + 48);
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v17 = v24;
        LOBYTE(v16) = v23;
        if ((v25 & 1) == 0)
        {
          return 0;
        }
      }

      if (v6)
      {
        if ((v14 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((v14 & 1) != 0 || v4 != v15)
      {
        return 0;
      }

      if (v8)
      {
        if ((v16 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((v16 & 1) != 0 || v7 != v17)
      {
        return 0;
      }
    }

    else if (*&v4 | *&v5 | *&v3 | v6 | *&v7 | v8 | v9 | v10 || v11 != 192)
    {
      if (v21 != 192 || *&v12 != 1 || *&v15 | *&v13 | v14 | *&v17 | v16 | v19 | v18)
      {
        return 0;
      }
    }

    else if (v21 < 0xC0 || *&v15 | *&v13 | *&v12 | v14 | *&v17 | v16 | v19 | v18 || v21 != 192)
    {
      return 0;
    }

    return 1;
  }

  if (v20)
  {
    if ((v21 & 0xC0) != 0x40)
    {
      return 0;
    }

    v26 = LOWORD(v12) & 0xFF00;
    if ((LOWORD(v3) & 0xFF00) == 0x300)
    {
      if (v26 != 768)
      {
        return 0;
      }
    }

    else if (v26 == 768 || (_s8Freeform17TSContentLanguageO6ModelsO16NumberFormatTypeV23__derived_struct_equalsySbAG_AGtFZ_0(LODWORD(v3), *(a2 + 16)) & 1) == 0)
    {
      return 0;
    }

    if (LOBYTE(v4))
    {
      if ((LOBYTE(v15) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((LOBYTE(v15) & 1) != 0 || v5 != v13)
    {
      return 0;
    }

    if ((LOWORD(v4) & 0xFF00) == 0x200)
    {
      if (BYTE1(v15) != 2)
      {
        return 0;
      }
    }

    else if (BYTE1(v15) == 2 || ((((LOWORD(v4) & 0x100) == 0) ^ (*&v15 >> 8)) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  if (v21 >= 0x40)
  {
    return 0;
  }

  if (LOBYTE(v5))
  {
    if ((LOBYTE(v13) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((LOBYTE(v13) & 1) != 0 || v3 != v12)
  {
    return 0;
  }

  if (v6)
  {
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else if ((v14 & 1) != 0 || v4 != v15)
  {
    return 0;
  }

  if ((v11 & 1) == 0)
  {
    if (v21)
    {
      return 0;
    }

    if (*&v7 == *&v17 && v8 == v16)
    {
      return v9 == v19 && v10 == v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
    }

    goto LABEL_67;
  }

  if ((v21 & 1) == 0)
  {
    return 0;
  }

  if (v8)
  {
    if (!v16)
    {
      return 0;
    }

    if (*&v7 == *&v17 && v8 == v16)
    {
      return v9 == v19 && v10 == v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
    }

LABEL_67:
    v27 = *(a2 + 72);
    v28 = *(a2 + 64);
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v19 = v28;
    v18 = v27;
    if ((v29 & 1) == 0)
    {
      return 0;
    }

    return v9 == v19 && v10 == v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
  }

  if (v16)
  {
    return 0;
  }

  return v9 == v19 && v10 == v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
}

unint64_t sub_1011BFA50(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10187A048, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1011BFA9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A00580);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v50 - v7;
  sub_100020E58(a1, a1[3]);
  sub_1011C0440();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  LOBYTE(v53) = 3;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v10)
  {
    if (v9 == 0xD00000000000002FLL && v10 == 0x800000010158A3C0)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v13[1] = 0;
        v13[2] = 0;
        *v13 = 0;
LABEL_36:
        swift_willThrow();
        goto LABEL_37;
      }
    }
  }

  type metadata accessor for TSCLVersion();
  LOBYTE(v56) = 4;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v14 = v53;
  if (v53)
  {
    if (qword_1019F2A50 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.ListLevelType.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v14[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v15 = xmmword_101463530;
      *(v15 + 16) = 0;
      swift_willThrow();

LABEL_37:
      (*(v6 + 8))(v8, v5);
      return sub_100005070(a1);
    }
  }

  sub_100020E58(a1, a1[3]);
  dispatch thunk of Decoder.userInfo.getter();

  v63 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE8(v53))
  {
    v52 = v5;
    v16 = KeyedDecodingContainer.codingPath.getter();
    v17 = *(v16 + 16);
    if (v17)
    {
      v51 = v6;
      v56 = _swiftEmptyArrayStorage;
      sub_100034080(0, v17, 0);
      v18 = v56;
      v50 = v16;
      v19 = v16 + 32;
      do
      {
        sub_10000630C(v19, &v53);
        sub_100020E58(&v53, v54);
        v20 = dispatch thunk of CodingKey.stringValue.getter();
        v22 = v21;
        sub_100005070(&v53);
        v56 = v18;
        v24 = v18[2];
        v23 = v18[3];
        if (v24 >= v23 >> 1)
        {
          sub_100034080((v23 > 1), v24 + 1, 1);
          v18 = v56;
        }

        v18[2] = v24 + 1;
        v25 = &v18[2 * v24];
        v25[4] = v20;
        v25[5] = v22;
        v19 += 40;
        --v17;
      }

      while (v17);

      v6 = v51;
    }

    else
    {

      v18 = _swiftEmptyArrayStorage;
    }

    sub_1007CDECC();
    swift_allocError();
    v42 = 0x6E695F6C6562616CLL;
    v43 = 0xEC000000746E6564;
LABEL_35:
    *v41 = v42;
    v41[1] = v43;
    v41[2] = v18;
    swift_willThrow();
    v5 = v52;
    goto LABEL_36;
  }

  v26 = v53;
  if (*&v53 < 0.0)
  {
    v54 = sub_1005B981C(&qword_101A2C358);
    v55 = sub_10001A2F8(&qword_101A2C360, &qword_101A2C358);
    *&v53 = 0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v27 = swift_allocError();
    *(v28 + 40) = v26;
    sub_100050F74(&v53, v28);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    v30 = 0x646E496C6562616CLL;
    v31 = 0xEB00000000746E65;
LABEL_25:
    *v29 = v30;
    v29[1] = v31;
    v29[2] = v27;
    swift_willThrow();
    goto LABEL_36;
  }

  sub_100020E58(a1, a1[3]);
  dispatch thunk of Decoder.userInfo.getter();

  v63 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE8(v53))
  {
    v52 = v5;
    v32 = KeyedDecodingContainer.codingPath.getter();
    v33 = *(v32 + 16);
    if (v33)
    {
      v51 = v6;
      v56 = _swiftEmptyArrayStorage;
      sub_100034080(0, v33, 0);
      v18 = v56;
      v50 = v32;
      v34 = v32 + 32;
      do
      {
        sub_10000630C(v34, &v53);
        sub_100020E58(&v53, v54);
        v35 = dispatch thunk of CodingKey.stringValue.getter();
        v37 = v36;
        sub_100005070(&v53);
        v56 = v18;
        v39 = v18[2];
        v38 = v18[3];
        if (v39 >= v38 >> 1)
        {
          sub_100034080((v38 > 1), v39 + 1, 1);
          v18 = v56;
        }

        v18[2] = v39 + 1;
        v40 = &v18[2 * v39];
        v40[4] = v35;
        v40[5] = v37;
        v34 += 40;
        --v33;
      }

      while (v33);

      v6 = v51;
    }

    else
    {

      v18 = _swiftEmptyArrayStorage;
    }

    sub_1007CDECC();
    swift_allocError();
    v42 = 0x646E695F74786574;
    v43 = 0xEB00000000746E65;
    goto LABEL_35;
  }

  v45 = v53;
  if (*&v53 < 0.0)
  {
    v54 = sub_1005B981C(&qword_101A2C358);
    v55 = sub_10001A2F8(&qword_101A2C360, &qword_101A2C358);
    *&v53 = 0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v27 = swift_allocError();
    *(v46 + 40) = v45;
    sub_100050F74(&v53, v46);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    v30 = 0x65646E4974786574;
    v31 = 0xEA0000000000746ELL;
    goto LABEL_25;
  }

  sub_100020E58(a1, a1[3]);
  v47 = dispatch thunk of Decoder.userInfo.getter();
  memset(v59, 0, 24);
  v59[3] = 0x1FFFFFFFELL;
  v60 = 0u;
  v61 = 0u;
  v62 = 0;
  sub_1007C3244(2u, v47, 0, 0, v59, v57);
  (*(v6 + 8))(v8, v5);

  result = sub_100005070(a1);
  *a2 = v26;
  *(a2 + 8) = v45;
  v48 = v57[3];
  *(a2 + 48) = v57[2];
  *(a2 + 64) = v48;
  *(a2 + 80) = v58;
  v49 = v57[1];
  *(a2 + 16) = v57[0];
  *(a2 + 32) = v49;
  return result;
}

unint64_t sub_1011C0440()
{
  result = qword_101A2C370;
  if (!qword_101A2C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C370);
  }

  return result;
}

unint64_t sub_1011C0494(uint64_t a1)
{
  result = sub_100B100F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1011C04BC(void *a1)
{
  a1[2] = sub_1007CE254();
  a1[3] = sub_1011A9270();
  result = sub_1011C04F4();
  a1[4] = result;
  return result;
}

unint64_t sub_1011C04F4()
{
  result = qword_101A2C378;
  if (!qword_101A2C378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C378);
  }

  return result;
}

uint64_t sub_1011C0548(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1011C0598(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 80) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 81) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 2 * -a2;
      result = 0.0;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0;
      return result;
    }

    *(a1 + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1011C0628()
{
  result = qword_101A2C380;
  if (!qword_101A2C380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C380);
  }

  return result;
}

unint64_t sub_1011C0680()
{
  result = qword_101A2C388;
  if (!qword_101A2C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C388);
  }

  return result;
}

unint64_t sub_1011C06D8()
{
  result = qword_101A2C390;
  if (!qword_101A2C390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C390);
  }

  return result;
}

id sub_1011C072C()
{
  result = [objc_opt_self() tintColor];
  qword_101AD9130 = result;
  return result;
}

_BYTE *sub_1011C0768(void *a1)
{
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC8Freeform14CRLTableChrome_mode] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform14CRLTableChrome_tableSelectorLayer] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform14CRLTableChrome_tableAxisHoveringSelectorLayer] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform14CRLTableChrome_tableAxisHeaderLayer] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform14CRLTableChrome_tableAxisPersistentSelectorLayers] = 0;
  v1[OBJC_IVAR____TtC8Freeform14CRLTableChrome_shouldSuppressTableAxisChrome] = 0;
  swift_unknownObjectWeakAssign();
  v39.receiver = v1;
  v39.super_class = type metadata accessor for CRLTableChrome();
  v3 = objc_msgSendSuper2(&v39, "init");
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong interactiveCanvasController];

    if (v6)
    {
      v7 = [v6 documentIsSharedReadOnly];

      if (v7)
      {
        v3[OBJC_IVAR____TtC8Freeform14CRLTableChrome_mode] = 5;
      }
    }
  }

  v8 = [objc_allocWithZone(CALayer) init];
  v9 = OBJC_IVAR____TtC8Freeform14CRLTableChrome_tableSelectorLayer;
  v10 = *&v3[OBJC_IVAR____TtC8Freeform14CRLTableChrome_tableSelectorLayer];
  *&v3[OBJC_IVAR____TtC8Freeform14CRLTableChrome_tableSelectorLayer] = v8;

  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v13 = [v11 interactiveCanvasController];

    if (v13)
    {
      v14 = *&v3[v9];
      if (v14)
      {
        v15 = v14;
        [v15 setDelegate:v13];
      }
    }
  }

  v16 = *&v3[v9];
  if (v16)
  {
    v17 = v16;
    v18 = [a1 canvas];
    if (v18)
    {
      v19 = v18;
      [v18 contentsScale];
      v21 = v20;
    }

    else
    {
      v21 = 1.0;
    }

    [v17 setContentsScale:v21];

    v22 = *&v3[v9];
    if (v22)
    {
      [v22 setContentsGravity:kCAGravityBottomRight];
    }
  }

  v23 = swift_unknownObjectWeakLoadStrong();
  v24 = 1.0;
  if (v23)
  {
    v25 = v23;
    v26 = [v23 canvas];

    if (v26)
    {
      [v26 contentsScale];
      v24 = v27;
    }
  }

  v28 = *&v3[v9];
  if (v28)
  {
    v29 = v28;
    v30 = String._bridgeToObjectiveC()();
    v31 = [objc_opt_self() systemImageNamed:v30];

    if (v31)
    {
      v32 = [objc_opt_self() configurationWithPointSize:4 weight:20.0];
      v33 = [v31 imageByApplyingSymbolConfiguration:v32];

      v31 = [v33 CGImage];
    }

    [v29 setContents:v31];

    v34 = *&v3[v9];
    if (v34)
    {
      [v34 setContentsScale:v24];
    }
  }

  v35 = swift_unknownObjectWeakLoadStrong();
  if (v35)
  {
    v36 = v35;
    v37 = [v35 interactiveCanvasController];

    if (v37)
    {
      [v37 addDecorator:v3];
    }
  }

  return v3;
}

id sub_1011C0B2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLTableChrome();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1011C0C24()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    if ([result isSelected])
    {
      sub_1005B981C(&unk_101A2C410);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C4D0;
      v4 = *(v0 + OBJC_IVAR____TtC8Freeform14CRLTableChrome_tableSelectorLayer);
      *(inited + 32) = v4;
      v5 = *(v0 + OBJC_IVAR____TtC8Freeform14CRLTableChrome_tableAxisHoveringSelectorLayer);
      *(inited + 40) = v5;
      v6 = *(v0 + OBJC_IVAR____TtC8Freeform14CRLTableChrome_tableAxisHeaderLayer);
      *(inited + 48) = v6;
      v19 = inited;
      v7 = *(v0 + OBJC_IVAR____TtC8Freeform14CRLTableChrome_tableAxisPersistentSelectorLayers);
      if (v7)
      {
        v8 = v6;

        v9 = v4;
        v10 = v5;
        v11 = sub_1006416A4(v7);

        result = sub_10079C184(v11);
        v12 = v19;
        v13 = *(v19 + 16);
      }

      else
      {
        v12 = inited;
        v14 = v6;
        v15 = v4;
        result = v5;
        v13 = 3;
      }

      for (i = 0; ; ++i)
      {
        if (v13 == i)
        {

          return _swiftEmptyArrayStorage;
        }

        if (i >= *(v12 + 16))
        {
          break;
        }

        v17 = *(v12 + 8 * i + 32);
        if (v17)
        {
          v18 = v17;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }
      }

      __break(1u);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1011C0DF8()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = [v4 interactiveCanvasController];

      if (v6)
      {
        v7 = *(v1 + OBJC_IVAR____TtC8Freeform14CRLTableChrome_tableSelectorLayer);
        if (v7)
        {
          v8 = v7;
          [v6 convertUnscaledToBoundsRect:sub_1012178E4()];
          [v8 setFrame:?];

          v3 = v6;
          v6 = v8;
        }

        v3 = v6;
      }
    }
  }

  v9 = OBJC_IVAR____TtC8Freeform14CRLTableChrome_tableAxisHeaderLayer;
  v10 = *(v1 + OBJC_IVAR____TtC8Freeform14CRLTableChrome_tableAxisHeaderLayer);
  *(v1 + OBJC_IVAR____TtC8Freeform14CRLTableChrome_tableAxisHeaderLayer) = 0;

  v11 = OBJC_IVAR____TtC8Freeform14CRLTableChrome_tableAxisPersistentSelectorLayers;
  *(v1 + OBJC_IVAR____TtC8Freeform14CRLTableChrome_tableAxisPersistentSelectorLayers) = 0;

  if ((*(v1 + OBJC_IVAR____TtC8Freeform14CRLTableChrome_shouldSuppressTableAxisChrome) & 1) == 0)
  {
    v13 = sub_1011C15B8();
    v14 = *(v1 + v9);
    *(v1 + v9) = v13;

    sub_1011C1394();
    *(v1 + v11) = v15;
  }

  return result;
}

uint64_t sub_1011C0F38()
{
  v1 = OBJC_IVAR____TtC8Freeform14CRLTableChrome_tableAxisHeaderLayer;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform14CRLTableChrome_tableAxisHeaderLayer);
  *(v0 + OBJC_IVAR____TtC8Freeform14CRLTableChrome_tableAxisHeaderLayer) = 0;

  v3 = OBJC_IVAR____TtC8Freeform14CRLTableChrome_tableAxisPersistentSelectorLayers;
  *(v0 + OBJC_IVAR____TtC8Freeform14CRLTableChrome_tableAxisPersistentSelectorLayers) = 0;

  if ((*(v0 + OBJC_IVAR____TtC8Freeform14CRLTableChrome_shouldSuppressTableAxisChrome) & 1) == 0)
  {
    v5 = sub_1011C15B8();
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;

    sub_1011C1394();
    *(v0 + v3) = v7;
  }

  return result;
}

id sub_1011C101C(char a1, double a2, double a3, double a4, double a5)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v11 = Strong;
  v12 = [Strong interactiveCanvasController];

  if (!v12)
  {
    return 0;
  }

  v13 = sub_1011C2140(0);
  if (!v13)
  {

    return 0;
  }

  v14 = v13;
  v15 = [objc_allocWithZone(CALayer) init];
  v16 = [v14 CGImage];
  [v15 setContents:v16];

  [v15 setContentsGravity:kCAGravityCenter];
  [v15 setCornerRadius:8.0];
  v17 = objc_opt_self();
  v18 = [v17 whiteColor];
  v19 = [v18 CGColor];

  [v15 setBackgroundColor:v19];
  v20 = [v17 blackColor];
  v21 = [v20 CGColor];

  [v15 setShadowColor:v21];
  [v15 setShadowRadius:1.0];
  LODWORD(v22) = 1043878380;
  [v15 setShadowOpacity:v22];
  [v15 setShadowOffset:{0.0, 1.0}];
  if ((a1 & 1) == 0)
  {
    CGAffineTransformMakeRotation(&v27, 1.57079633);
    [v15 setAffineTransform:&v27];
  }

  [v12 convertUnscaledToBoundsRect:{a2, a3, a4, a5}];
  [v15 setFrame:?];
  v23 = [objc_allocWithZone(CALayer) init];
  LODWORD(v24) = 1045220557;
  [v23 setOpacity:v24];
  [v23 setCornerRadius:8.0];
  if (qword_1019F2A58 != -1)
  {
    swift_once();
  }

  v25 = [qword_101AD9130 CGColor];
  [v23 setBackgroundColor:v25];

  [v15 bounds];
  [v23 setFrame:?];
  [v15 addSublayer:v23];

  return v15;
}

void sub_1011C1394()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform14CRLTableChrome_mode) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = &Strong[OBJC_IVAR____TtC8Freeform11CRLTableRep_cachedBaseCellIndex];
      if (Strong[OBJC_IVAR____TtC8Freeform11CRLTableRep_cachedBaseCellIndex + 16] == 1 || (v4 = &Strong[OBJC_IVAR____TtC8Freeform11CRLTableRep_cachedCursorCellIndex], Strong[OBJC_IVAR____TtC8Freeform11CRLTableRep_cachedCursorCellIndex + 16] == 1))
      {
      }

      else
      {
        v6 = *v3;
        v5 = v3[1];
        v8 = *v4;
        v7 = v4[1];
        if (*v4 < *v3)
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
        }

        else
        {
          while (1)
          {
            sub_101217A08(v6);
            v13 = sub_1011C101C(0, v9, v10, v11, v12);
            if (v13)
            {
              v14 = v13;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            }

            if (v8 == v6)
            {
              break;
            }

            v15 = __OFADD__(v6++, 1);
            if (v15)
            {
              __break(1u);
LABEL_26:
              __break(1u);
              goto LABEL_27;
            }
          }

          if (v7 < v5)
          {
            goto LABEL_28;
          }

          while (1)
          {
            sub_101218060(v5);
            v20 = sub_1011C101C(1, v16, v17, v18, v19);
            if (v20)
            {
              v21 = v20;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            }

            if (v7 == v5)
            {
              break;
            }

            v15 = __OFADD__(v5++, 1);
            if (v15)
            {
              goto LABEL_26;
            }
          }
        }
      }
    }
  }
}

void *sub_1011C15B8()
{
  v1 = v0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_1012186A8(v25);

    if (v26 == 2)
    {
      return 0;
    }

    v4 = *v25;
    v5 = *&v25[1];
    v6 = *&v25[2];
    v7 = *&v25[3];
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8 = result;
      v9 = [result interactiveCanvasController];

      if (!v9)
      {
        return 0;
      }

      v10 = sub_1011C2140(1);
      if (!v10)
      {

        return 0;
      }

      v11 = v10;
      v12 = [objc_allocWithZone(CALayer) init];
      v13 = objc_opt_self();
      v14 = [v13 whiteColor];
      v15 = [v14 CGColor];

      [v12 setBackgroundColor:v15];
      [v12 setCornerRadius:4.0];
      v16 = [v13 blackColor];
      v17 = [v16 CGColor];

      [v12 setShadowColor:v17];
      [v12 setShadowRadius:1.0];
      LODWORD(v18) = 1043878380;
      [v12 setShadowOpacity:v18];
      v19 = v12;
      [v12 setShadowOffset:{0.0, 1.0}];
      if (*(v1 + OBJC_IVAR____TtC8Freeform14CRLTableChrome_mode) == 2)
      {
        CGAffineTransformMakeRotation(&v24, 1.57079633);
        [v12 setAffineTransform:&v24];
      }

      [v9 convertUnscaledToBoundsRect:{v4, v5, v6, v7}];
      [v12 setFrame:?];
      v20 = [objc_allocWithZone(CALayer) init];
      v21 = [v11 CGImage];
      [v20 setContents:v21];

      [v20 setContentsGravity:kCAGravityCenter];
      [v20 setCornerRadius:4.0];
      if (qword_1019F2A58 != -1)
      {
        swift_once();
      }

      v22 = [qword_101AD9130 CGColor];
      [v20 setBackgroundColor:v22];

      LODWORD(v23) = 1060320051;
      [v20 setOpacity:v23];
      [v19 bounds];
      [v20 setFrame:?];
      [v19 addSublayer:v20];

      return v19;
    }
  }

  return result;
}

BOOL sub_1011C1968(CGFloat a1, CGFloat a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;
  v6 = [v5 layout];
  type metadata accessor for CRLTableLayout();
  v7 = swift_dynamicCastClassUnconditional();
  v8 = [v5 canvas];

  v43.x = a1;
  v43.y = a2;
  if (v8)
  {
    [v8 viewScale];
    v10 = v9;
  }

  else
  {
    v10 = 1.0;
  }

  [v7 boundsForStandardKnobs];
  x = v44.origin.x;
  y = v44.origin.y;
  width = v44.size.width;
  height = v44.size.height;
  v16 = 33.0 / v10;
  v17 = 51.0 / v10;
  v18 = 10.0 / v10;
  v42 = CGRectGetMinX(v44) - v16 - v18;
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  MinY = CGRectGetMinY(v45);
  v19 = v17 + v18;
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  v20 = CGRectGetHeight(v46);
  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = width;
  v47.size.height = height;
  MinX = CGRectGetMinX(v47);
  v48.origin.x = x;
  v48.origin.y = y;
  v48.size.width = width;
  v48.size.height = height;
  v21 = CGRectGetMinY(v48) - v16 - v18;
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  v22 = CGRectGetWidth(v49);
  [v7 convertNaturalRectToUnscaledCanvas:{v42, MinY, v19, v20}];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [v7 convertNaturalRectToUnscaledCanvas:{MinX, v21, v22, v19}];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v50.origin.x = v24;
  v50.origin.y = v26;
  v50.size.width = v28;
  v50.size.height = v30;
  if (CGRectContainsPoint(v50, v43))
  {
    v11 = 1;
  }

  else
  {
    v51.origin.x = v32;
    v51.origin.y = v34;
    v51.size.width = v36;
    v51.size.height = v38;
    v11 = CGRectContainsPoint(v51, v43);
  }

  return v11;
}

void sub_1011C1BF0(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_101217D24();

    v9 = 0;
    v10 = *(v8 + 2);
    do
    {
      if (v10 == v9)
      {

        goto LABEL_8;
      }

      if (v9 >= *(v8 + 2))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return;
      }

      v11 = &v8[32 * v9];
      v12 = *(v11 + 2);
      v13 = *(v11 + 3);
      ++v9;
      v14 = *(v11 + 5);
      v15 = *(v11 + 7);
      v30 = v12;
      v31 = v13;
      v32.x = a2;
      v32.y = a3;
    }

    while (!CGRectContainsPoint(*&v12, v32));

    v16 = 0;
    v17 = v9 - 1;
LABEL_14:
    v28 = v30;
    v29 = v31;
  }

  else
  {
LABEL_8:
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      v20 = sub_10121836C();

      v21 = 0;
      v22 = *(v20 + 2);
      while (v22 != v21)
      {
        if (v21 >= *(v20 + 2))
        {
          goto LABEL_19;
        }

        v23 = &v20[32 * v21];
        v24 = *(v23 + 2);
        v25 = *(v23 + 3);
        ++v21;
        v26 = *(v23 + 5);
        v27 = *(v23 + 7);
        v30 = v24;
        v31 = v25;
        v33.x = a2;
        v33.y = a3;
        if (CGRectContainsPoint(*&v24, v33))
        {

          v17 = v21 - 1;
          v16 = 1;
          goto LABEL_14;
        }
      }
    }

    v17 = 0;
    v28 = 0uLL;
    v16 = 2;
    v29 = 0uLL;
  }

  *a1 = v28;
  *(a1 + 16) = v29;
  *(a1 + 32) = v16;
  *(a1 + 40) = v17;
}

void sub_1011C1D68(double a1, double a2, double a3, double a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v10 = Strong;
  v11 = [Strong interactiveCanvasController];

  if (!v11)
  {
    return;
  }

  v12 = *(v4 + OBJC_IVAR____TtC8Freeform14CRLTableChrome_tableAxisHeaderLayer);
  v13 = &selRef_drawStrokes_inContext_overTransparentCanvas_;
  if (v12)
  {
    v14 = v12;
    [v14 frame];
    [v11 convertBoundsToUnscaledRect:?];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = sub_100B378BC(0, 1, 1, _swiftEmptyArrayStorage);
    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    if (v25 >= v24 >> 1)
    {
      v23 = sub_100B378BC((v24 > 1), v25 + 1, 1, v23);
    }

    *(v23 + 2) = v25 + 1;
    v26 = &v23[32 * v25];
    *(v26 + 4) = v16;
    *(v26 + 5) = v18;
    *(v26 + 6) = v20;
    *(v26 + 7) = v22;
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
  }

  v27 = *(v4 + OBJC_IVAR____TtC8Freeform14CRLTableChrome_tableAxisPersistentSelectorLayers);
  if (v27)
  {
    if (v27 >> 62)
    {
      v28 = _CocoaArrayWrapper.endIndex.getter();
      if (v28)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28)
      {
LABEL_12:
        if (v28 < 1)
        {
          __break(1u);
          return;
        }

        v29 = 0;
        do
        {
          if ((v27 & 0xC000000000000001) != 0)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v30 = *(v27 + 8 * v29 + 32);
          }

          v31 = v30;
          [v30 v13[454]];
          [v11 convertBoundsToUnscaledRect:?];
          v33 = v32;
          v35 = v34;
          v37 = v36;
          v39 = v38;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_100B378BC(0, *(v23 + 2) + 1, 1, v23);
          }

          v41 = *(v23 + 2);
          v40 = *(v23 + 3);
          if (v41 >= v40 >> 1)
          {
            v23 = sub_100B378BC((v40 > 1), v41 + 1, 1, v23);
          }

          ++v29;

          *(v23 + 2) = v41 + 1;
          v42 = &v23[32 * v41];
          *(v42 + 4) = v33;
          *(v42 + 5) = v35;
          *(v42 + 6) = v37;
          *(v42 + 7) = v39;
          v13 = &selRef_drawStrokes_inContext_overTransparentCanvas_;
        }

        while (v28 != v29);
      }
    }
  }

  v43 = (v23 + 56);
  v44 = *(v23 + 2) + 1;
  do
  {
    if (!--v44)
    {
      break;
    }

    v45 = v43 + 4;
    v46 = sub_10011EE4C(*(v43 - 3), *(v43 - 2), *(v43 - 1), *v43, a1, a2, a3, a4);
    v43 = v45;
  }

  while (!v46);
}

unint64_t sub_1011C20EC()
{
  result = qword_101A2C400;
  if (!qword_101A2C400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C400);
  }

  return result;
}

id sub_1011C2140(char a1)
{
  v2 = objc_opt_self();
  v3 = [v2 configurationWithPointSize:4 weight:8.0];
  v4 = v3;
  if (a1)
  {
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 whiteColor];
  }

  else
  {
    v8 = qword_1019F2A58;
    v9 = v3;
    if (v8 != -1)
    {
      swift_once();
    }

    v7 = qword_101AD9130;
  }

  v10 = v7;
  v11 = [v2 configurationWithHierarchicalColor:v7];
  v12 = [v4 configurationByApplyingConfiguration:v11];

  v13 = objc_opt_self();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 systemImageNamed:v14];

  if (v15)
  {

    v16 = [v15 imageWithSymbolConfiguration:v12];
  }

  else
  {

    return 0;
  }

  return v16;
}

void sub_1011C22F8(CGFloat a1, CGFloat a2)
{
  v5 = OBJC_IVAR____TtC8Freeform14CRLTableChrome_tableAxisHoveringSelectorLayer;
  v6 = *(v2 + OBJC_IVAR____TtC8Freeform14CRLTableChrome_tableAxisHoveringSelectorLayer);
  *(v2 + OBJC_IVAR____TtC8Freeform14CRLTableChrome_tableAxisHoveringSelectorLayer) = 0;

  if ((*(v2 + OBJC_IVAR____TtC8Freeform14CRLTableChrome_shouldSuppressTableAxisChrome) & 1) == 0)
  {
    sub_1011C1BF0(&v18, a1, a2);
    v7 = v22;
    if (v22 != 2)
    {
      v8 = v18;
      v9 = v19;
      v11 = v20;
      v10 = v21;
      sub_1011C1D68(v18, v19, v20, v21);
      if (v12)
      {
        return;
      }

      v13 = sub_1011C101C(v7 & 1, v8, v9, v11, v10);
      v14 = *(v2 + v5);
      *(v2 + v5) = v13;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      v17 = [Strong interactiveCanvasController];
    }

    else
    {
      v17 = 0;
    }

    [v17 invalidateReps];
  }
}

uint64_t type metadata accessor for CRLTableAnchorHint()
{
  result = qword_101A2C478;
  if (!qword_101A2C478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1011C24C0()
{
  _s6CellIDVMa(319);
  if (v0 <= 0x3F)
  {
    sub_100B7D7B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

Swift::Int sub_1011C2570()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014D0930[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1011C25F8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014D0930[v1]);
  return Hasher._finalize()();
}

uint64_t sub_1011C265C()
{
  v1 = 0x797274656D6F6567;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6543746E65726170;
  }
}

uint64_t sub_1011C26C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1011C3850(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1011C2714(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011C341C();
  v5 = sub_1011C3474();

  return static CodingKey<>.intCases.getter(a1, a2, v4, v5);
}

uint64_t sub_1011C276C(uint64_t a1)
{
  v2 = sub_1011C3474();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011C27A8(uint64_t a1)
{
  v2 = sub_1011C3474();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1011C27E4(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A2C528);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-v7];
  sub_100020E58(a1, a1[3]);
  sub_1011C3474();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = 0;
  _s6CellIDVMa(0);
  sub_1011C3A38(&qword_101A2C530, _s6CellIDVMa);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for CRLTableAnchorHint();
    v10 = (v3 + *(v9 + 20));
    v11 = v10[1];
    v20[0] = *v10;
    v20[1] = v11;
    v12 = v10[1];
    v18 = *v10;
    v19 = v12;
    v17 = 1;
    sub_10074A4EC(v20, v16);
    sub_10074A8D0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16[0] = v18;
    v16[1] = v19;
    sub_10074A710(v16);
    v15 = *(v3 + *(v9 + 24));
    v14[7] = 2;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1011C2A4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = _s6CellIDVMa(0);
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_101A2C518);
  v23 = *(v7 - 8);
  v24 = v7;
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for CRLTableAnchorHint();
  __chkstk_darwin(v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v25 = a1;
  sub_100020E58(a1, v13);
  sub_1011C3474();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(v25);
  }

  v14 = v23;
  v15 = v12;
  LOBYTE(v27) = 0;
  sub_1011C3A38(&qword_101A2C520, _s6CellIDVMa);
  v16 = v24;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100AF3678(v6, v15);
  v30 = 1;
  sub_10074A764();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = (v15 + *(v10 + 20));
  v18 = v28;
  *v17 = v27;
  v17[1] = v18;
  sub_1005B981C(&unk_101A0D960);
  v29 = 2;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = *(v10 + 24);
  (*(v14 + 8))(v9, v16);
  *(v15 + v19) = v26;
  sub_1011C3974(v15, v22);
  sub_100005070(v25);
  return sub_1011C39D8(v15, type metadata accessor for CRLTableAnchorHint);
}

uint64_t sub_1011C2E3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011C3A38(&qword_101A2C538, type metadata accessor for CRLTableAnchorHint);

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1011C2EC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011C3A38(&qword_101A2C538, type metadata accessor for CRLTableAnchorHint);

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1011C2F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1011C3A38(&qword_101A2C4C8, type metadata accessor for CRLTableAnchorHint);
  v7 = sub_1011C3A38(&qword_101A2C540, type metadata accessor for CRLTableAnchorHint);

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_1011C3010(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011C3A38(&qword_101A2C538, type metadata accessor for CRLTableAnchorHint);

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_1011C3184(uint64_t a1)
{
  v2 = sub_1011C3A38(&qword_101A2C510, type metadata accessor for CRLTableAnchorHint);

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

unint64_t sub_1011C336C()
{
  result = qword_101A2C4D0;
  if (!qword_101A2C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C4D0);
  }

  return result;
}

unint64_t sub_1011C33C4()
{
  result = qword_101A2C4D8;
  if (!qword_101A2C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C4D8);
  }

  return result;
}

unint64_t sub_1011C341C()
{
  result = qword_101A2C4E0;
  if (!qword_101A2C4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C4E0);
  }

  return result;
}

unint64_t sub_1011C3474()
{
  result = qword_101A2C4E8;
  if (!qword_101A2C4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C4E8);
  }

  return result;
}

unint64_t sub_1011C34CC()
{
  result = qword_101A2C4F0;
  if (!qword_101A2C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C4F0);
  }

  return result;
}

unint64_t sub_1011C3524()
{
  result = qword_101A2C4F8;
  if (!qword_101A2C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C4F8);
  }

  return result;
}

unint64_t sub_1011C357C()
{
  result = qword_101A2C500;
  if (!qword_101A2C500)
  {
    sub_1005C4E5C(&qword_101A2C508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C500);
  }

  return result;
}

uint64_t sub_1011C3628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v20 - v9;
  _s6CellIDVMa(0);
  sub_1011C3A38(&unk_101A0B020, _s6CellIDVMa);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  sub_1011C3A38(&unk_101A2C5A0, &type metadata accessor for CRKeyPath);
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v5 + 8);
  v12(v7, v4);
  v12(v10, v4);
  if (v11 & 1) != 0 && (v13 = type metadata accessor for CRLTableAnchorHint(), v14 = (a1 + *(v13 + 20)), v15 = v14[1], v20[0] = *v14, v20[1] = v15, v16 = (a2 + *(v13 + 20)), v17 = v16[1], v21[0] = *v16, v21[1] = v17, (sub_101271C28(v20, v21)))
  {
    v18 = sub_100B3216C(*(a1 + *(v13 + 24)), *(a2 + *(v13 + 24)));
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1011C3850(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6543746E65726170 && a2 == 0xEC00000064496C6CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797274656D6F6567 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1011C3974(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLTableAnchorHint();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1011C39D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1011C3A38(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1011C3A94()
{
  result = qword_101A2C548;
  if (!qword_101A2C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C548);
  }

  return result;
}

__n128 sub_1011C3AE8@<Q0>(_OWORD *a1@<X8>)
{
  _s12CellCRDTDataVMa(0);
  sub_1005B981C(&unk_101A10690);
  CRRegister.wrappedValue.getter();
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  *a1 = v3;
  a1[1] = v4;
  result = v6;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_1011C3B68(_OWORD *a1)
{
  v1 = a1[3];
  v2 = a1[5];
  v13 = a1[4];
  v14 = v2;
  v3 = a1[5];
  v15 = a1[6];
  v4 = a1[1];
  v10[0] = *a1;
  v10[1] = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  v11 = a1[2];
  v12 = v5;
  v9[11] = v13;
  v9[12] = v3;
  v9[13] = a1[6];
  v9[7] = v7;
  v9[8] = v6;
  v9[9] = v11;
  v9[10] = v1;
  _s12CellCRDTDataVMa(0);
  sub_10000BE14(v10, v9, &qword_1019FFF80);
  sub_1005B981C(&unk_101A10690);
  return CRRegister.wrappedValue.setter();
}

void sub_1011C3CD4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8Freeform18CRLTableCellEditor_editorController) selectionPath];
  v2 = [*(v0 + OBJC_IVAR____TtC8Freeform18CRLTableCellEditor_interactiveCanvasController) selectionModelTranslator];
  if (v2)
  {
    v3 = v2;
    v20 = v1;
    v4 = [v2 boardItemsForSelectionPath:v1];

    type metadata accessor for CRLBoardItem(0);
    sub_1011C7198(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
    v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v5 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v7 = v22;
      v6 = v23;
      v9 = v24;
      v8 = v25;
      v10 = v26;
    }

    else
    {
      v11 = -1 << *(v5 + 32);
      v6 = v5 + 56;
      v9 = ~v11;
      v12 = -v11;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      else
      {
        v13 = -1;
      }

      v10 = v13 & *(v5 + 56);

      v8 = 0;
      v7 = v5;
    }

    v14 = (v9 + 64) >> 6;
    if (v7 < 0)
    {
      goto LABEL_16;
    }

LABEL_10:
    v15 = v8;
    v16 = v10;
    v17 = v8;
    if (v10)
    {
LABEL_14:
      v18 = (v16 - 1) & v16;
      v19 = *(*(v7 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
      if (v19)
      {
        while (1)
        {
          type metadata accessor for CRLTableItem();
          if (swift_dynamicCastClass())
          {
            break;
          }

          v8 = v17;
          v10 = v18;
          if ((v7 & 0x8000000000000000) == 0)
          {
            goto LABEL_10;
          }

LABEL_16:
          if (__CocoaSet.Iterator.next()())
          {
            swift_dynamicCast();
            v19 = v21;
            v17 = v8;
            v18 = v10;
            if (v21)
            {
              continue;
            }
          }

          goto LABEL_21;
        }

        sub_100035F90();
      }

      else
      {
LABEL_21:
        sub_100035F90();
      }
    }

    else
    {
      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v17 >= v14)
        {
          goto LABEL_21;
        }

        v16 = *(v6 + 8 * v17);
        ++v15;
        if (v16)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }

  else
  {
  }
}

void sub_1011C3FA4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8Freeform18CRLTableCellEditor_editorController) selectionPath];
  v2 = [v1 mostSpecificSelectionOfClass:0];

  if (v2)
  {
    type metadata accessor for CRLBoardItemSelection();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC8Freeform21CRLBoardItemSelection_boardItems);
      if ((v4 & 0xC000000000000001) != 0)
      {

        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        type metadata accessor for CRLBoardItem(0);
        sub_1011C7198(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
        Set.Iterator.init(_cocoa:)();
        v6 = v20;
        v5 = v21;
        v7 = v22;
        v8 = v23;
        v9 = v24;
      }

      else
      {
        v10 = -1 << *(v4 + 32);
        v5 = v4 + 56;
        v7 = ~v10;
        v11 = -v10;
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v9 = v12 & *(v4 + 56);
        swift_bridgeObjectRetain_n();
        v8 = 0;
        v6 = v4;
      }

      v13 = (v7 + 64) >> 6;
      if ((v6 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }

LABEL_12:
      if (__CocoaSet.Iterator.next()() && (type metadata accessor for CRLBoardItem(0), swift_dynamicCast(), v14 = v19, v15 = v8, v16 = v9, v19))
      {
        while (1)
        {
          type metadata accessor for CRLTableItem();
          if (!swift_dynamicCastClass())
          {

            v2 = v14;
            goto LABEL_23;
          }

          v8 = v15;
          v9 = v16;
          if (v6 < 0)
          {
            goto LABEL_12;
          }

LABEL_15:
          v17 = v8;
          v18 = v9;
          v15 = v8;
          if (!v9)
          {
            break;
          }

LABEL_19:
          v16 = (v18 - 1) & v18;
          v14 = *(*(v6 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v18)))));
          if (!v14)
          {
            goto LABEL_23;
          }
        }

        while (1)
        {
          v15 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v15 >= v13)
          {
            goto LABEL_23;
          }

          v18 = *(v5 + 8 * v15);
          ++v17;
          if (v18)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_23:

        sub_100035F90();
      }
    }

    else
    {
    }
  }
}

void sub_1011C4324()
{
  v1 = OBJC_IVAR____TtC8Freeform18CRLTableCellEditor_interactiveCanvasController;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform18CRLTableCellEditor_editorController);
  v3 = *(v0 + OBJC_IVAR____TtC8Freeform18CRLTableCellEditor_interactiveCanvasController);
  v4 = [v2 selectionPath];
  v5 = [v3 infoForSelectionPath:v4];

  if (v5)
  {
    v6 = [*(v0 + v1) repForInfo:v5];
    if (v6)
    {
      type metadata accessor for CRLTableRep();
      if (swift_dynamicCastClass())
      {
        sub_10121C5D4(0);
      }

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1011C4518(uint64_t a1, uint64_t a2)
{
  if (static Selector.== infix(_:_:)())
  {
    return 1;
  }

  if (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)())
  {
    result = [*(v2 + OBJC_IVAR____TtC8Freeform18CRLTableCellEditor_editorController) selectionForEditor:v2];
    if (!result)
    {
      return result;
    }

    v5 = result;
    type metadata accessor for CRLTableCellSelection(0);
    v6 = swift_dynamicCastClass();
    if (v6 && !*(v6 + OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_type))
    {
      sub_10000BE14(a2, v11, &unk_1019F4D00);
      if (v12)
      {
        if ((swift_dynamicCast() & 1) == 0)
        {

          return 1;
        }

        if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v7)
        {

          return -1;
        }

        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v8)
        {
          return -1;
        }
      }

      else
      {

        sub_10000CAAC(v11, &unk_1019F4D00);
      }

      return 1;
    }
  }

  return 0;
}

uint64_t sub_1011C4790(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = a1;
  sub_1011C6B48(v6, v6);

  return sub_10000CAAC(v8, &unk_1019F4D00);
}

void sub_1011C481C(void *a1, uint64_t a2, uint64_t a3)
{
  v92 = a3;
  v107 = type metadata accessor for CRKeyPath();
  v91 = *(v107 - 8);
  __chkstk_darwin(v107);
  v108 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v106 = &v90 - v7;
  v8 = sub_1005B981C(&unk_101A09DD0);
  __chkstk_darwin(v8 - 8);
  v97 = &v90 - v9;
  v110 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v110);
  v109 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v105 = &v90 - v12;
  v13 = sub_1005B981C(&unk_101A2C590);
  __chkstk_darwin(v13 - 8);
  v15 = (&v90 - v14);
  v16 = _s12CellContentsVMa(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = _s6CellIDVMa(0);
  v94 = *(v112 - 8);
  __chkstk_darwin(v112);
  v96 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v114 = &v90 - v22;
  __chkstk_darwin(v23);
  v111 = &v90 - v24;
  __chkstk_darwin(v25);
  v115 = &v90 - v26;
  __chkstk_darwin(v27);
  v29 = &v90 - v28;
  v120 = _swiftEmptyArrayStorage;
  v93 = a2;
  v30 = *(a2 + 16);
  if (v30)
  {
    v31 = v93 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
    v32 = (v17 + 48);
    v33 = *(v94 + 72);
    v95 = 0x80000001015C4E90;
    v104 = a1;
    v103 = v15;
    v102 = v16;
    v101 = v19;
    v100 = (v17 + 48);
    v99 = v33;
    v98 = &v90 - v28;
    do
    {
      sub_1011C7248(v31, v29, _s6CellIDVMa);
      sub_1011E2704(v29, v15);
      if ((*v32)(v15, 1, v16) == 1)
      {
        sub_1011C72B0(v29, _s6CellIDVMa);
        sub_10000CAAC(v15, &unk_101A2C590);
      }

      else
      {
        v113 = v30;
        sub_1011C71E0(v15, v19, _s12CellContentsVMa);
        if (*v19)
        {
          v34 = v115;
          sub_1011C7248(v29, v115, _s6CellIDVMa);
          v35 = objc_allocWithZone(type metadata accessor for CRLCommandTableCellSetColorFill(0));
          v36 = v111;
          sub_1011C7248(v34, v111, _s6CellIDVMa);
          KeyPath = swift_getKeyPath();
          *(v35 + *((swift_isaMask & *v35) + 0xD0)) = a1;
          sub_1011C7248(v36, v35 + *((swift_isaMask & *v35) + 0xD8), _s6CellIDVMa);
          v38 = (v35 + *((swift_isaMask & *v35) + 0xE0));
          *v38 = 0u;
          v38[1] = 0u;
          v38[2] = 0u;
          v38[3] = 0u;
          v38[4] = 0u;
          v38[5] = 0u;
          v38[6] = 0u;
          *(v35 + *((swift_isaMask & *v35) + 0xE8)) = KeyPath;
          v39 = (v35 + *((swift_isaMask & *v35) + 0xF0));
          *v39 = 0xD00000000000001DLL;
          v39[1] = v95;
          v40 = a1;
          v41 = sub_1005B981C(&qword_101A2C5B8);
          v116.receiver = v35;
          v116.super_class = v41;
          v42 = objc_msgSendSuper2(&v116, "init");
          sub_1011C72B0(v34, _s6CellIDVMa);
          sub_1011C72B0(v36, _s6CellIDVMa);
          v43 = v42;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        v44 = v115;
        sub_1011C7248(v29, v115, _s6CellIDVMa);
        v45 = objc_allocWithZone(type metadata accessor for CRLCommandTableCellSetText(0));
        sub_10068D144();
        v46 = a1;
        v47 = v105;
        CRAttributedString.init(_:)();
        v48 = v110;
        CRAttributedString.init(_:)();
        *(v47 + *(v48 + 24)) = _swiftEmptyDictionarySingleton;
        v49 = v111;
        sub_1011C7248(v44, v111, _s6CellIDVMa);
        v50 = v109;
        sub_1011C7248(v47, v109, type metadata accessor for CRLWPStorageCRDTData);
        v51 = swift_getKeyPath();
        *(v45 + *((swift_isaMask & *v45) + 0xD0)) = v46;
        sub_1011C7248(v49, v45 + *((swift_isaMask & *v45) + 0xD8), _s6CellIDVMa);
        sub_1011C7248(v50, v45 + *((swift_isaMask & *v45) + 0xE0), type metadata accessor for CRLWPStorageCRDTData);
        *(v45 + *((swift_isaMask & *v45) + 0xE8)) = v51;
        v52 = (v45 + *((swift_isaMask & *v45) + 0xF0));
        *v52 = 0x654320656C626154;
        v52[1] = 0xEF74786554206C6CLL;
        v53 = sub_1005B981C(&qword_101A2C5B0);
        v117.receiver = v45;
        v117.super_class = v53;
        v54 = objc_msgSendSuper2(&v117, "init");
        sub_1011C72B0(v115, _s6CellIDVMa);
        sub_1011C72B0(v50, type metadata accessor for CRLWPStorageCRDTData);
        sub_1011C72B0(v49, _s6CellIDVMa);
        sub_1011C72B0(v47, type metadata accessor for CRLWPStorageCRDTData);
        v55 = v54;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v19 = v101;
        sub_1011C72B0(v101, _s12CellContentsVMa);
        v29 = v98;
        sub_1011C72B0(v98, _s6CellIDVMa);
        a1 = v104;
        v15 = v103;
        v16 = v102;
        v30 = v113;
        v32 = v100;
        v33 = v99;
      }

      v31 += v33;
      --v30;
    }

    while (v30);
  }

  v113 = sub_100E92710(v56);

  v119 = _swiftEmptySetSingleton;
  v57 = sub_1011DCD58();
  v58 = v57;
  if (v57 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v60 = 0;
    v61 = v58 & 0xC000000000000001;
    v105 = (v58 & 0xFFFFFFFFFFFFFF8);
    v104 = (v58 + 32);
    v111 = v113 + 56;
    v62 = (v91 + 8);
    v63 = v97;
    v103 = v58;
    v102 = i;
    v101 = v58 & 0xC000000000000001;
    while (1)
    {
      if (v61)
      {
        v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v60 >= *(v105 + 2))
        {
          goto LABEL_34;
        }

        v64 = *(v104 + v60);
      }

      v65 = v64;
      if (__OFADD__(v60++, 1))
      {
        break;
      }

      (*((swift_isaMask & *v64) + 0x128))();
      v67 = type metadata accessor for CRLTableAnchorHint();
      if ((*(*(v67 - 8) + 48))(v63, 1, v67))
      {

        sub_10000CAAC(v63, &unk_101A09DD0);
        if (v60 == i)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v68 = v96;
        sub_1011C7248(v63, v96, _s6CellIDVMa);
        sub_10000CAAC(v63, &unk_101A09DD0);
        sub_1011C71E0(v68, v114, _s6CellIDVMa);
        if (*(v113 + 16) && (v69 = v113, Hasher.init(_seed:)(), UUID.hash(into:)(), UUID.hash(into:)(), v70 = Hasher._finalize()(), v71 = -1 << *(v69 + 32), v72 = v70 & ~v71, ((*(v111 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) != 0))
        {
          v109 = ~v71;
          v110 = *(v94 + 72);
          while (1)
          {
            v73 = v115;
            sub_1011C7248(*(v113 + 48) + v110 * v72, v115, _s6CellIDVMa);
            sub_1011C7198(&unk_101A0B020, _s6CellIDVMa);
            v74 = v106;
            dispatch thunk of RawRepresentable.rawValue.getter();
            v75 = v108;
            dispatch thunk of RawRepresentable.rawValue.getter();
            sub_1011C7198(&unk_101A2C5A0, &type metadata accessor for CRKeyPath);
            v76 = v107;
            v77 = dispatch thunk of static Equatable.== infix(_:_:)();
            v78 = *v62;
            (*v62)(v75, v76);
            v78(v74, v76);
            sub_1011C72B0(v73, _s6CellIDVMa);
            if (v77)
            {
              break;
            }

            v72 = (v72 + 1) & v109;
            if (((*(v111 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0)
            {
              goto LABEL_28;
            }
          }

          sub_100E6CCD4(v118, v65);
        }

        else
        {
LABEL_28:
        }

        sub_1011C72B0(v114, _s6CellIDVMa);
        v63 = v97;
        v58 = v103;
        i = v102;
        v61 = v101;
        if (v60 == v102)
        {
LABEL_32:

          v79 = v119;
          goto LABEL_37;
        }
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

  v79 = _swiftEmptySetSingleton;
LABEL_37:
  v80 = objc_opt_self();

  sub_1012E3B78(v81);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v83 = [v80 infosForAdjustingConnectionLinesAfterRemove:isa];

  if (!v83)
  {
    __break(1u);
    return;
  }

  v84 = v83;
  sub_1012E3B78(v79);
  v85 = Set._bridgeToObjectiveC()().super.isa;

  v86 = [v80 commandsForAdjustingConnectionLines:v84 infosToRemove:v85 editingCoordinator:*(v92 + OBJC_IVAR____TtC8Freeform18CRLTableCellEditor_editingCoordinator) withIcc:*(v92 + OBJC_IVAR____TtC8Freeform18CRLTableCellEditor_interactiveCanvasController)];

  type metadata accessor for CRLCommand();
  v87 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v87 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() >= 1)
    {
      goto LABEL_40;
    }

LABEL_42:

    goto LABEL_43;
  }

  if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_42;
  }

LABEL_40:
  sub_100799F10(v87);
LABEL_43:
  v88 = objc_allocWithZone(type metadata accessor for CRLCommandDeleteBoardItems());
  type metadata accessor for CRLBoardItem(0);
  sub_1011C7198(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v89 = Set._bridgeToObjectiveC()().super.isa;

  [v88 initWithBoardItemsToDelete:v89 canDeleteNewlyCreatedItems:0];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

id sub_1011C5938()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLTableCellEditor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1011C59EC(uint64_t a1, void *a2)
{
  v4 = _s6CellIDVMa(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v96 = &v70 - v9;
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v70 - v12;
  v14 = OBJC_IVAR____TtC8Freeform18CRLTableCellEditor_editorController;
  v15 = [*(a1 + OBJC_IVAR____TtC8Freeform18CRLTableCellEditor_editorController) selectionPath];
  type metadata accessor for CRLBoardItemSelection();
  v97 = [v15 mostSpecificSelectionOfClass:swift_getObjCClassFromMetadata()];

  if (!v97)
  {
    return;
  }

  v16 = swift_dynamicCastClass();
  if (!v16 || (v17 = *(v16 + OBJC_IVAR____TtC8Freeform21CRLBoardItemSelection_boardItems), v18 = , v95 = sub_100BC17C8(v18), , !v95))
  {
    v51 = v97;
LABEL_25:

    return;
  }

  type metadata accessor for CRLTableItem();
  v79 = swift_dynamicCastClass();
  if (!v79)
  {

    v51 = v95;
    goto LABEL_25;
  }

  v19 = [*(a1 + OBJC_IVAR____TtC8Freeform18CRLTableCellEditor_interactiveCanvasController) commandController];
  if (!v19)
  {
    v24 = objc_opt_self();
    LODWORD(v17) = [v24 _atomicIncrementAssertCount];
    v100[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v100);
    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v52 = String._bridgeToObjectiveC()();

    v53 = [v52 lastPathComponent];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v54;

    if (qword_1019F20A0 == -1)
    {
LABEL_30:
      v55 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v17;
      v57 = sub_1005CF000();
      *(inited + 96) = v57;
      v58 = sub_1011C7198(&qword_1019F52E0, sub_1005CF000);
      *(inited + 104) = v58;
      *(inited + 72) = v25;
      *(inited + 136) = &type metadata for String;
      v59 = sub_1000053B0();
      *(inited + 112) = v20;
      *(inited + 120) = v13;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v59;
      *(inited + 152) = 225;
      v60 = v100[0];
      *(inited + 216) = v57;
      *(inited + 224) = v58;
      *(inited + 192) = v60;
      v61 = v25;
      v62 = v60;
      v63 = static os_log_type_t.error.getter();
      sub_100005404(v55, &_mh_execute_header, v63, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v64 = static os_log_type_t.error.getter();
      sub_100005404(v55, &_mh_execute_header, v64, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v65 = swift_allocObject();
      v65[2] = 8;
      v65[3] = 0;
      v65[4] = 0;
      v65[5] = 0;
      v66 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v67 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v68 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v69 = String._bridgeToObjectiveC()();

      [v24 handleFailureInFunction:v67 file:v68 lineNumber:225 isFatal:0 format:v69 args:v66];

      return;
    }

LABEL_36:
    swift_once();
    goto LABEL_30;
  }

  v20 = v19;
  v21 = [*(a1 + v14) selectionForEditor:a1];
  if (!v21)
  {

    v51 = v95;
    goto LABEL_25;
  }

  v70 = v21;
  type metadata accessor for CRLTableCellSelection(0);
  v22 = swift_dynamicCastClass();
  if (!v22)
  {

    v51 = v70;
    goto LABEL_25;
  }

  sub_1011DEDEC(v22);
  v24 = v23;
  v25 = v20;
  sub_10088E3FC(0);
  v78 = v24[2];
  if (v78)
  {
    v76 = v7;
    v26 = 0;
    v74 = v24 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v73 = 0x80000001015C4E90;
    v72 = xmmword_101465920;
    v77 = a2;
    v71 = v5;
    v80 = v13;
    v75 = v24;
    while (v26 < v24[2])
    {
      v27 = *(v5 + 72);
      v94 = v26;
      sub_1011C7248(&v74[v27 * v26], v13, _s6CellIDVMa);
      sub_1005B981C(&unk_1019F4D60);
      v28 = swift_allocObject();
      *(v28 + 16) = v72;
      sub_1011C7248(v13, v96, _s6CellIDVMa);
      if (a2 && (objc_opt_self(), (v29 = swift_dynamicCastObjCClass()) != 0))
      {
        v30 = v29;
        v98 = 0;
        v31 = v95;
        v32 = a2;
        v93 = v30;
        sub_1008B2170([v30 color], v100);
        v91 = v100[1];
        v92 = v100[0];
        v89 = v100[3];
        v90 = v100[2];
        v87 = v100[5];
        v88 = v100[4];
        v85 = v100[7];
        v86 = v100[6];
        v83 = v100[9];
        v84 = v100[8];
        v82 = v100[10];
        v81 = _swiftEmptyDictionarySingleton;
        v33 = v98;
      }

      else
      {
        v34 = v95;
        v91 = 0;
        v92 = 0;
        v89 = 0;
        v90 = 0;
        v87 = 0;
        v88 = 0;
        v85 = 0;
        v86 = 0;
        v83 = 0;
        v84 = 0;
        v81 = 0;
        v82 = 0;
        v33 = 0;
        v93 = 0;
      }

      v35 = objc_allocWithZone(type metadata accessor for CRLCommandTableCellSetColorFill(0));
      v25 = v96;
      v36 = v76;
      sub_1011C7248(v96, v76, _s6CellIDVMa);
      KeyPath = swift_getKeyPath();
      *(v35 + *((swift_isaMask & *v35) + 0xD0)) = v79;
      sub_1011C7248(v36, v35 + *((swift_isaMask & *v35) + 0xD8), _s6CellIDVMa);
      v38 = (v35 + *((swift_isaMask & *v35) + 0xE0));
      *v38 = 0;
      v38[1] = v33;
      v39 = v91;
      v38[2] = v92;
      v38[3] = v39;
      v40 = v89;
      v38[4] = v90;
      v38[5] = v40;
      v41 = v87;
      v38[6] = v88;
      v38[7] = v41;
      v42 = v85;
      v38[8] = v86;
      v38[9] = v42;
      v43 = v83;
      v38[10] = v84;
      v38[11] = v43;
      v44 = v81;
      v38[12] = v82;
      v38[13] = v44;
      *(v35 + *((swift_isaMask & *v35) + 0xE8)) = KeyPath;
      v45 = (v35 + *((swift_isaMask & *v35) + 0xF0));
      *v45 = 0xD00000000000001DLL;
      v45[1] = v73;
      v46 = sub_1005B981C(&qword_101A2C5B8);
      v99.receiver = v35;
      v99.super_class = v46;
      v47 = objc_msgSendSuper2(&v99, "init");
      v17 = _s6CellIDVMa;
      sub_1011C72B0(v25, _s6CellIDVMa);
      sub_1011C72B0(v36, _s6CellIDVMa);

      *(v28 + 32) = v47;
      v13 = v80;
      sub_1011C72B0(v80, _s6CellIDVMa);
      v48 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v48)
      {
        v49 = 0;
        v5 = v71;
        do
        {
          if ((v28 & 0xC000000000000001) != 0)
          {
            v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v50 = *(v28 + 8 * v49 + 32);
          }

          v17 = v50;
          ++v49;
          v25 = v20;
          sub_100888700(v50, 0, 0, 4, 0);
        }

        while (v48 != v49);

        v13 = v80;
      }

      else
      {

        v5 = v71;
      }

      v26 = v94 + 1;
      a2 = v77;
      v24 = v75;
      if (v94 + 1 == v78)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_31:

  sub_10088E600(0);
}

void sub_1011C6444(void *a1)
{
  type metadata accessor for CRLTableCellSelection(0);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = OBJC_IVAR____TtC8Freeform18CRLTableCellEditor_interactiveCanvasController;
    v6 = *(v1 + OBJC_IVAR____TtC8Freeform18CRLTableCellEditor_interactiveCanvasController);
    v7 = *(v1 + OBJC_IVAR____TtC8Freeform18CRLTableCellEditor_editorController);
    v36 = a1;
    v8 = v6;
    v9 = [v7 selectionPath];
    v10 = [v8 infoForSelectionPath:v9];

    if (!v10)
    {
      goto LABEL_6;
    }

    v35 = [*(v1 + v5) repForInfo:v10];
    if (v35)
    {
      type metadata accessor for CRLTableRep();
      if (!swift_dynamicCastClass())
      {

        swift_unknownObjectRelease();
        v11 = v35;
        goto LABEL_7;
      }

      v36 = v36;
      sub_10121C5D4(v4);
      swift_unknownObjectRelease();

LABEL_6:
      v11 = v36;
LABEL_7:

      return;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v12 = objc_opt_self();
    v13 = [v12 _atomicIncrementAssertCount];
    v37 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v37);
    StaticString.description.getter();
    v14 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v15 = String._bridgeToObjectiveC()();

    v16 = [v15 lastPathComponent];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v20 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v13;
    v22 = sub_1005CF000();
    *(inited + 96) = v22;
    v23 = sub_1011C7198(&qword_1019F52E0, sub_1005CF000);
    *(inited + 104) = v23;
    *(inited + 72) = v14;
    *(inited + 136) = &type metadata for String;
    v24 = sub_1000053B0();
    *(inited + 112) = v17;
    *(inited + 120) = v19;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v24;
    *(inited + 152) = 88;
    v25 = v37;
    *(inited + 216) = v22;
    *(inited + 224) = v23;
    *(inited + 192) = v25;
    v26 = v14;
    v27 = v25;
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v29 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v29, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v30 = swift_allocObject();
    v30[2] = 8;
    v30[3] = 0;
    v30[4] = 0;
    v30[5] = 0;
    v31 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    [v12 handleFailureInFunction:v32 file:v33 lineNumber:88 isFatal:0 format:v34 args:v31];
  }
}

void sub_1011C697C(void *a1)
{
  sub_1011C3FA4();
  if ((v3 & 1) == 0)
  {
    v4 = OBJC_IVAR____TtC8Freeform18CRLTableCellEditor_editorController;
    v5 = [*(v1 + OBJC_IVAR____TtC8Freeform18CRLTableCellEditor_editorController) selectionForEditor:v1];
    if (v5)
    {
      v6 = v5;
      type metadata accessor for CRLTableCellSelection(0);
      swift_dynamicCastClass();
    }

    v7 = String._bridgeToObjectiveC()();
    v8 = [objc_opt_self() crl_quickInspectorImageNamed:v7];

    v9 = objc_allocWithZone(CRLQuickInspectorElement);
    v10 = String._bridgeToObjectiveC()();
    v13 = [v9 initWithName:v10 image:v8 type:2 options:0x10000000];

    [v13 setTag:20];
    v11 = [*(v1 + v4) selectionForEditor:v1];
    if (v11)
    {
      v12 = v11;
      type metadata accessor for CRLTableCellSelection(0);
      swift_dynamicCastClass();
    }

    [v13 setToolTip:0];
    [a1 addObject:v13];
  }
}

void sub_1011C6B48(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8Freeform18CRLTableCellEditor_editorController;
  v5 = [*(a1 + OBJC_IVAR____TtC8Freeform18CRLTableCellEditor_editorController) selectionPath];
  type metadata accessor for CRLBoardItemSelection();
  v47 = [v5 mostSpecificSelectionOfClass:swift_getObjCClassFromMetadata()];

  if (!v47)
  {
    return;
  }

  if (!swift_dynamicCastClass() || (v6 = , v46 = sub_100BC17C8(v6), , !v46))
  {
    v21 = v47;
    goto LABEL_17;
  }

  type metadata accessor for CRLTableItem();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {

    v21 = v46;
    goto LABEL_17;
  }

  v8 = v7;
  v9 = [*(a1 + OBJC_IVAR____TtC8Freeform18CRLTableCellEditor_interactiveCanvasController) commandController];
  if (v9)
  {
    v10 = v9;
    v11 = [*(a1 + v4) selectionForEditor:a1];
    if (v11)
    {
      v45 = v11;
      type metadata accessor for CRLTableCellSelection(0);
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        sub_1011DEDEC(v12);
        v14 = v13;
        sub_10088E3FC(0);
        sub_1011C481C(v8, v14, a2);
        v16 = v15;

        if (v16 >> 62)
        {
          v17 = _CocoaArrayWrapper.endIndex.getter();
          if (v17)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v17)
          {
LABEL_10:
            if (v17 < 1)
            {
              __break(1u);
              return;
            }

            for (i = 0; i != v17; ++i)
            {
              if ((v16 & 0xC000000000000001) != 0)
              {
                v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v19 = *(v16 + 8 * i + 32);
              }

              v20 = v19;
              sub_100888700(v19, 0, 0, 4, 0);
            }
          }
        }

        sub_10088E600(0);

        v21 = v45;
        goto LABEL_17;
      }

      v21 = v45;
    }

    else
    {

      v21 = v46;
    }

LABEL_17:

    return;
  }

  v22 = objc_opt_self();
  v23 = [v22 _atomicIncrementAssertCount];
  v48 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v48);
  StaticString.description.getter();
  v24 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v25 = String._bridgeToObjectiveC()();

  v26 = [v25 lastPathComponent];

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v30 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v23;
  v32 = sub_1005CF000();
  *(inited + 96) = v32;
  v33 = sub_1011C7198(&qword_1019F52E0, sub_1005CF000);
  *(inited + 104) = v33;
  *(inited + 72) = v24;
  *(inited + 136) = &type metadata for String;
  v34 = sub_1000053B0();
  *(inited + 112) = v27;
  *(inited + 120) = v29;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v34;
  *(inited + 152) = 248;
  v35 = v48;
  *(inited + 216) = v32;
  *(inited + 224) = v33;
  *(inited + 192) = v35;
  v36 = v24;
  v37 = v35;
  v38 = static os_log_type_t.error.getter();
  sub_100005404(v30, &_mh_execute_header, v38, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v39 = static os_log_type_t.error.getter();
  sub_100005404(v30, &_mh_execute_header, v39, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v40 = swift_allocObject();
  v40[2] = 8;
  v40[3] = 0;
  v40[4] = 0;
  v40[5] = 0;
  v41 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v42 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v43 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v44 = String._bridgeToObjectiveC()();

  [v22 handleFailureInFunction:v42 file:v43 lineNumber:248 isFatal:0 format:v44 args:v41];
}

uint64_t sub_1011C7198(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1011C71E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1011C7248(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1011C72B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1011C731C(uint64_t a1)
{
  v3 = type metadata accessor for CRLTableCellRange(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v12 - v7;
  sub_100601584(a1, v14);
  if (!v15)
  {
    sub_10000CAAC(v14, &unk_1019F4D00);
    goto LABEL_7;
  }

  type metadata accessor for CRLTableCellSelection(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v10 = 0;
    return v10 & 1;
  }

  v9 = v13;
  if (v13[OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_type] != *(v1 + OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_type))
  {

    goto LABEL_7;
  }

  sub_1011CA3CC(&v13[OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_range], v8, type metadata accessor for CRLTableCellRange);
  sub_1011CA3CC(v1 + OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_range, v5, type metadata accessor for CRLTableCellRange);
  v10 = sub_1011C9FE4(v8, v5);

  sub_1011CA36C(v5, type metadata accessor for CRLTableCellRange);
  sub_1011CA36C(v8, type metadata accessor for CRLTableCellRange);
  return v10 & 1;
}

id sub_1011C757C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLTableCellSelection(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1011C7614()
{
  result = type metadata accessor for CRLTableCellRange(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1011C7708()
{
  sub_1011C778C();
  if (v0 <= 0x3F)
  {
    sub_100039F68();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1011C778C()
{
  if (!qword_101A2C668)
  {
    _s6CellIDVMa(255);
    sub_1011C9D50(&qword_101A2C8D0, _s6CellIDVMa);
    v0 = type metadata accessor for CRRegister();
    if (!v1)
    {
      atomic_store(v0, &qword_101A2C668);
    }
  }
}

uint64_t sub_1011C7820@<X0>(uint64_t a1@<X8>)
{
  v2 = _s6CellIDVMa(0);
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  __chkstk_darwin(v11);
  v13 = &v15 - v12;
  UUID.init()();
  UUID.init()();
  UUID.init()();
  UUID.init()();
  *(a1 + *(type metadata accessor for CRLTableCellRange(0) + 24)) = _swiftEmptyDictionarySingleton;
  sub_1011CA3CC(v13, v7, _s6CellIDVMa);
  sub_1011CA3CC(v7, v4, _s6CellIDVMa);
  sub_1011C9D50(&qword_101A2C8D0, _s6CellIDVMa);
  CRRegister.init(wrappedValue:)();
  sub_1011CA36C(v7, _s6CellIDVMa);
  sub_1011CA3CC(v10, v7, _s6CellIDVMa);
  sub_1011CA3CC(v7, v4, _s6CellIDVMa);
  CRRegister.init(wrappedValue:)();
  sub_1011CA36C(v7, _s6CellIDVMa);
  sub_1011CA36C(v10, _s6CellIDVMa);
  return sub_1011CA36C(v13, _s6CellIDVMa);
}

uint64_t sub_1011C7A50()
{
  qword_101AD9138 = 97;
  unk_101AD9140 = 0xE100000000000000;
  qword_101AD9148 = swift_getKeyPath();
  unk_101AD9150 = 98;
  qword_101AD9158 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD9160 = result;
  return result;
}

uint64_t sub_1011C7AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v102 = a4;
  v104 = a3;
  v105 = a2;
  v111 = a1;
  v114 = a6;
  v7 = _s13ColumnElementVMa(0);
  v94 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v113 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = _s6CellIDVMa(0);
  __chkstk_darwin(v101);
  v99 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v100 = &v91 - v11;
  v12 = _s10RowElementVMa(0);
  v92 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v112 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for UUID();
  v116 = *(v103 - 8);
  __chkstk_darwin(v103);
  v97 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v95 = &v91 - v16;
  __chkstk_darwin(v17);
  v96 = &v91 - v18;
  __chkstk_darwin(v19);
  v93 = &v91 - v20;
  v21 = sub_1005B981C(&unk_101A2C890);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v91 - v23;
  v25 = _s15CapsuleDatabaseVMa();
  __chkstk_darwin(v25);
  v27 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for CRLTableCellRange(0);
  v109 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v31;
  v32 = *(v31 + 24);
  v98 = v30;
  *&v30[v32] = _swiftEmptyDictionarySingleton;
  v115 = a5;
  v108 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v107 = type metadata accessor for CRLTableItemData();
  v33 = swift_dynamicCastClassUnconditional();
  v34 = qword_101AD9268;
  swift_beginAccess();
  v35 = *(v22 + 16);
  v35(v24, v33 + v34, v21);
  Capsule.root.getter();
  v36 = *(v22 + 8);
  v36(v24, v21);
  v106 = v25;
  sub_1005B981C(&unk_101A2C7D0);
  v37 = CROrderedDictionary.count.getter();
  sub_1011CA36C(v27, _s15CapsuleDatabaseVMa);
  v38 = v114;
  if (v37 > v111)
  {
    v39 = swift_dynamicCastClassUnconditional();
    v40 = qword_101AD9268;
    swift_beginAccess();
    v41 = v39 + v40;
    v38 = v114;
    v35(v24, v41, v21);
    Capsule.root.getter();
    v36(v24, v21);
    v91 = sub_1005B981C(&unk_101A2D830);
    v42 = CROrderedDictionary.count.getter();
    sub_1011CA36C(v27, _s15CapsuleDatabaseVMa);
    if (v42 > v105)
    {
      v43 = swift_dynamicCastClassUnconditional();
      v44 = qword_101AD9268;
      swift_beginAccess();
      v45 = v43 + v44;
      v38 = v114;
      v35(v24, v45, v21);
      Capsule.root.getter();
      v36(v24, v21);
      v46 = CROrderedDictionary.count.getter();
      sub_1011CA36C(v27, _s15CapsuleDatabaseVMa);
      if (v46 > v104)
      {
        v47 = swift_dynamicCastClassUnconditional();
        v48 = qword_101AD9268;
        swift_beginAccess();
        v35(v24, v47 + v48, v21);
        Capsule.root.getter();
        v36(v24, v21);
        v49 = CROrderedDictionary.count.getter();
        sub_1011CA36C(v27, _s15CapsuleDatabaseVMa);
        if (v49 > v102)
        {
          swift_dynamicCastClassUnconditional();

          v50 = sub_1011FAF9C();

          v51 = *(v50 + 16);
          if (v51)
          {
            v117 = _swiftEmptyArrayStorage;
            sub_100776524(0, v51, 0);
            v52 = (*(v92 + 80) + 32) & ~*(v92 + 80);
            v106 = v50;
            v53 = v50 + v52;
            v54 = *(v92 + 72);
            v55 = v117;
            v56 = (v116 + 16);
            v57 = v103;
            v58 = v93;
            do
            {
              v59 = v112;
              sub_1011CA3CC(v53, v112, _s10RowElementVMa);
              (*v56)(v58, v59, v57);
              sub_1011CA36C(v59, _s10RowElementVMa);
              v117 = v55;
              v61 = v55[2];
              v60 = v55[3];
              if (v61 >= v60 >> 1)
              {
                sub_100776524(v60 > 1, v61 + 1, 1);
                v57 = v103;
                v55 = v117;
              }

              v55[2] = v61 + 1;
              (*(v116 + 32))(v55 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v61, v58, v57);
              v53 += v54;
              --v51;
            }

            while (v51);
          }

          else
          {

            v55 = _swiftEmptyArrayStorage;
          }

          swift_dynamicCastClassUnconditional();

          v66 = sub_1011FC4B4();

          v67 = *(v66 + 16);
          v68 = v97;
          if (v67)
          {
            v117 = _swiftEmptyArrayStorage;
            sub_100776524(0, v67, 0);
            v69 = (*(v94 + 80) + 32) & ~*(v94 + 80);
            v108 = v66;
            v70 = v66 + v69;
            v112 = *(v94 + 72);
            v71 = v117;
            v72 = (v116 + 16);
            v73 = v103;
            do
            {
              v74 = v113;
              sub_1011CA3CC(v70, v113, _s13ColumnElementVMa);
              (*v72)(v68, v74, v73);
              sub_1011CA36C(v74, _s13ColumnElementVMa);
              v117 = v71;
              v76 = v71[2];
              v75 = v71[3];
              if (v76 >= v75 >> 1)
              {
                sub_100776524(v75 > 1, v76 + 1, 1);
                v73 = v103;
                v71 = v117;
              }

              v71[2] = v76 + 1;
              (*(v116 + 32))(v71 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v76, v68, v73);
              v70 += v112;
              --v67;
            }

            while (v67);
          }

          else
          {

            v71 = _swiftEmptyArrayStorage;
          }

          v77 = v98;
          if (v111 < 0)
          {
            __break(1u);
          }

          else if ((v105 & 0x8000000000000000) == 0 && v55[2] > v111)
          {
            if (v71[2] > v105)
            {
              v78 = (*(v116 + 80) + 32) & ~*(v116 + 80);
              v79 = *(v116 + 72);
              v112 = v71 + v78;
              v113 = v55 + v78;
              v80 = v71 + v78 + v79 * v105;
              v81 = *(v116 + 16);
              v82 = v100;
              v83 = v103;
              v81(v100, v55 + v78 + v79 * v111, v103);
              v81((v82 + *(v101 + 20)), v80, v83);
              sub_1011CA3CC(v82, v99, _s6CellIDVMa);
              sub_1011C9D50(&qword_101A2C8D0, _s6CellIDVMa);
              CRRegister.init(wrappedValue:)();
              result = sub_1011CA36C(v82, _s6CellIDVMa);
              if ((v104 & 0x8000000000000000) == 0)
              {
                v84 = v96;
                if (v55[2] > v104)
                {
                  v81(v96, (v113 + v79 * v104), v103);

                  if ((v102 & 0x8000000000000000) == 0)
                  {
                    if (v71[2] > v102)
                    {
                      v85 = v95;
                      v86 = v103;
                      v81(v95, (v112 + v79 * v102), v103);

                      v87 = v100;
                      v81(v100, v84, v86);
                      v81((v87 + *(v101 + 20)), v85, v86);
                      v88 = v110;
                      sub_1011CA3CC(v87, v99, _s6CellIDVMa);
                      CRRegister.init(wrappedValue:)();

                      sub_1011CA36C(v87, _s6CellIDVMa);
                      v89 = *(v116 + 8);
                      v89(v85, v86);
                      v89(v84, v86);
                      v90 = v114;
                      sub_1011CA3CC(v77, v114, type metadata accessor for CRLTableCellRange);
                      (*(v109 + 56))(v90, 0, 1, v88);
                      return sub_1011CA36C(v77, type metadata accessor for CRLTableCellRange);
                    }

                    goto LABEL_37;
                  }

LABEL_36:
                  __break(1u);
LABEL_37:
                  __break(1u);
                  return result;
                }

LABEL_35:
                __break(1u);
                goto LABEL_36;
              }

LABEL_34:
              __break(1u);
              goto LABEL_35;
            }

LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

          __break(1u);
          goto LABEL_33;
        }
      }
    }
  }

  v62 = v115;
  if (qword_1019F21D8 != -1)
  {
    swift_once();
  }

  v63 = static OS_os_log.crlTables;
  v64 = static os_log_type_t.error.getter();
  sub_100005404(v63, &_mh_execute_header, v64, "Index out of bounds when getting cell range.", 44, 2, _swiftEmptyArrayStorage);

  return (*(v109 + 56))(v38, 1, 1, v110);
}

uint64_t sub_1011C89B0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1005B981C(&qword_101A2C6F8);
  __chkstk_darwin(v6 - 8);
  v32 = &v30 - v7;
  v8 = sub_1005B981C(&unk_101A2C890);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - v10;
  v12 = _s15CapsuleDatabaseVMa();
  __chkstk_darwin(v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1011DB2A8(a1);
  if (v16)
  {
    v17 = type metadata accessor for UUID();
    (*(*(v17 - 8) + 8))(a1, v17);
  }

  else
  {
    v18 = v15;
    v30 = a1;
    v31 = a3;
    type metadata accessor for CRLTableItemData();
    v19 = swift_dynamicCastClassUnconditional();
    v20 = qword_101AD9268;
    swift_beginAccess();
    (*(v9 + 16))(v11, v19 + v20, v8);
    Capsule.root.getter();
    (*(v9 + 8))(v11, v8);
    sub_1005B981C(&unk_101A2D830);
    v21 = CROrderedDictionary.count.getter();
    result = sub_1011CA36C(v14, _s15CapsuleDatabaseVMa);
    if (__OFSUB__(v21, 1))
    {
      __break(1u);
      return result;
    }

    v23 = v32;
    sub_1011C7AA8(v18, 0, v18, v21 - 1, a2, v32);
    v24 = type metadata accessor for UUID();
    (*(*(v24 - 8) + 8))(v30, v24);
    v25 = type metadata accessor for CRLTableCellRange(0);
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v23, 1, v25))
    {
      v28 = v23;
      v29 = v31;
      sub_1006D4738(v28, v31);
      return (*(v26 + 56))(v29, 0, 1, v25);
    }

    sub_10000CAAC(v23, &qword_101A2C6F8);
    a3 = v31;
  }

  v27 = type metadata accessor for CRLTableCellRange(0);
  return (*(*(v27 - 8) + 56))(a3, 1, 1, v27);
}

uint64_t sub_1011C8D98@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1005B981C(&qword_101A2C6F8);
  __chkstk_darwin(v6 - 8);
  v32 = &v30 - v7;
  v8 = sub_1005B981C(&unk_101A2C890);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - v10;
  v12 = _s15CapsuleDatabaseVMa();
  __chkstk_darwin(v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1011DB340(a1);
  if (v16)
  {
    v17 = type metadata accessor for UUID();
    (*(*(v17 - 8) + 8))(a1, v17);
  }

  else
  {
    v18 = v15;
    v30 = a1;
    v31 = a3;
    type metadata accessor for CRLTableItemData();
    v19 = swift_dynamicCastClassUnconditional();
    v20 = qword_101AD9268;
    swift_beginAccess();
    (*(v9 + 16))(v11, v19 + v20, v8);
    Capsule.root.getter();
    (*(v9 + 8))(v11, v8);
    sub_1005B981C(&unk_101A2C7D0);
    v21 = CROrderedDictionary.count.getter();
    result = sub_1011CA36C(v14, _s15CapsuleDatabaseVMa);
    if (__OFSUB__(v21, 1))
    {
      __break(1u);
      return result;
    }

    v23 = v32;
    sub_1011C7AA8(0, v18, v21 - 1, v18, a2, v32);
    v24 = type metadata accessor for UUID();
    (*(*(v24 - 8) + 8))(v30, v24);
    v25 = type metadata accessor for CRLTableCellRange(0);
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v23, 1, v25))
    {
      v28 = v23;
      v29 = v31;
      sub_1006D4738(v28, v31);
      return (*(v26 + 56))(v29, 0, 1, v25);
    }

    sub_10000CAAC(v23, &qword_101A2C6F8);
    a3 = v31;
  }

  v27 = type metadata accessor for CRLTableCellRange(0);
  return (*(*(v27 - 8) + 56))(a3, 1, 1, v27);
}

uint64_t sub_1011C9180@<X0>(void *a1@<X8>)
{
  if (qword_1019F2A60 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_101AD9140;
  v3 = qword_101AD9148;
  v2 = unk_101AD9150;
  v4 = qword_101AD9158;
  v5 = qword_101AD9160;
  *a1 = qword_101AD9138;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t sub_1011C9224(uint64_t a1)
{
  v2 = sub_1011C9D50(&qword_101A2C6F0, type metadata accessor for CRLTableCellRange);

  return static CRStruct_2.fieldKeys.getter(a1, v2);
}

uint64_t sub_1011C9294(uint64_t a1)
{
  v2 = sub_1011C9D50(&qword_101A2C6B0, type metadata accessor for CRLTableCellRange);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_1011C9300(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011C9D50(&qword_101A2C6F0, type metadata accessor for CRLTableCellRange);

  return CRStruct_2.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_1011C937C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011C9D50(&qword_101A2C6F0, type metadata accessor for CRLTableCellRange);

  return CRStruct_2.actionUndoingDifference(from:)(a1, a2, v4);
}

uint64_t sub_1011C9400(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011C9D50(&qword_101A2C6F0, type metadata accessor for CRLTableCellRange);

  return CRStruct_2.apply(_:)(a1, a2, v4);
}

uint64_t sub_1011C947C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011C9D50(&qword_101A2C6F0, type metadata accessor for CRLTableCellRange);

  return CRStruct_2.hasDelta(from:)(a1, a2, v4);
}

uint64_t sub_1011C94F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1011C9D50(&qword_101A2C6F0, type metadata accessor for CRLTableCellRange);

  return CRStruct_2.delta(_:from:)(a1, a2, a3, v6);
}

uint64_t sub_1011C958C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011C9D50(&qword_101A2C6F0, type metadata accessor for CRLTableCellRange);

  return CRStruct_2.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_1011C9608(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011C9D50(&qword_101A2C6F0, type metadata accessor for CRLTableCellRange);

  return CRStruct_2.merge(delta:)(a1, a2, v4);
}

uint64_t sub_1011C9684(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011C9D50(&qword_101A2C6F0, type metadata accessor for CRLTableCellRange);

  return CRStruct_2.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1011C9708(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011C9D50(&qword_101A2C6F0, type metadata accessor for CRLTableCellRange);

  return CRStruct_2.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1011C978C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1011C9D50(&qword_101A2C6F0, type metadata accessor for CRLTableCellRange);

  return CRStruct_2.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_1011C9820(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011C9D50(&qword_101A2C6F0, type metadata accessor for CRLTableCellRange);

  return CRStruct_2.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_1011C989C()
{
  sub_1011C9D50(&qword_101A2C6F0, type metadata accessor for CRLTableCellRange);

  return CRStruct_2.needToFinalizeTimestamps()();
}

uint64_t sub_1011C9908(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011C9D50(&qword_101A2C6F0, type metadata accessor for CRLTableCellRange);

  return CRStruct_2.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_1011C9984(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011C9D50(&qword_101A2C6F0, type metadata accessor for CRLTableCellRange);

  return CRStruct_2.merge(_:)(a1, a2, v4);
}

uint64_t sub_1011C9A08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011C9D50(&qword_101A2C6F0, type metadata accessor for CRLTableCellRange);

  return CRStruct_2.merge(_:)(a1, a2, v4);
}

uint64_t sub_1011C9C8C(uint64_t a1)
{
  v2 = sub_1011C9D50(&qword_101A2C6F0, type metadata accessor for CRLTableCellRange);

  return CRStruct_2.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_1011C9D50(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1011C9F90()
{
  result = qword_101A2C6E8;
  if (!qword_101A2C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C6E8);
  }

  return result;
}

uint64_t sub_1011C9FE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v20 - v9;
  v11 = _s6CellIDVMa(0);
  __chkstk_darwin(v11);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v20 - v15;
  sub_1005B981C(&qword_101A2D840);
  v20[3] = a1;
  CRRegister.wrappedValue.getter();
  v20[4] = a2;
  CRRegister.wrappedValue.getter();
  sub_1011C9D50(&unk_101A0B020, _s6CellIDVMa);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v20[2] = v11;
  dispatch thunk of RawRepresentable.rawValue.getter();
  v20[1] = sub_1011C9D50(&unk_101A2C5A0, &type metadata accessor for CRKeyPath);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v17 = *(v5 + 8);
  v17(v7, v4);
  v20[5] = v5 + 8;
  v17(v10, v4);
  sub_1011CA36C(v13, _s6CellIDVMa);
  sub_1011CA36C(v16, _s6CellIDVMa);
  if (a1)
  {
    type metadata accessor for CRLTableCellRange(0);
    CRRegister.wrappedValue.getter();
    CRRegister.wrappedValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v18 = dispatch thunk of static Equatable.== infix(_:_:)();
    v17(v7, v4);
    v17(v10, v4);
    sub_1011CA36C(v13, _s6CellIDVMa);
    sub_1011CA36C(v16, _s6CellIDVMa);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1011CA36C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1011CA3CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1011CA438(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CRLBoardItem(0);
    sub_1011DAA60(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
    Set.Iterator.init(_cocoa:)();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for CRLBoardItem(0), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      sub_100035F90();
      return;
    }

LABEL_16:
    type metadata accessor for CRLTableItem();
    if (swift_dynamicCastClass())
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1011CA698(__int128 *a1)
{
  v1 = a1[11];
  v2 = a1[13];
  v44 = a1[12];
  v45 = v2;
  v3 = a1[7];
  v4 = a1[9];
  v40 = a1[8];
  v41 = v4;
  v5 = a1[9];
  v6 = a1[11];
  v42 = a1[10];
  v43 = v6;
  v7 = a1[3];
  v8 = a1[5];
  v36 = a1[4];
  v37 = v8;
  v9 = a1[5];
  v10 = a1[7];
  v38 = a1[6];
  v39 = v10;
  v11 = a1[1];
  v33[0] = *a1;
  v33[1] = v11;
  v12 = a1[3];
  v14 = *a1;
  v13 = a1[1];
  v34 = a1[2];
  v35 = v12;
  v15 = a1[13];
  v30 = v44;
  v31 = v15;
  v26 = v40;
  v27 = v5;
  v28 = v42;
  v29 = v1;
  v22 = v36;
  v23 = v9;
  v24 = v38;
  v25 = v3;
  v18 = v14;
  v19 = v13;
  v46 = *(a1 + 28);
  v32 = *(a1 + 28);
  v20 = v34;
  v21 = v7;
  sub_100B98B48(v33, v17);
  sub_1005B981C(&qword_101A2C7B0);
  return CRRegister.wrappedValue.setter();
}

uint64_t sub_1011CA774@<X0>(_BYTE *a1@<X8>)
{
  _s13StyleCRDTDataVMa();
  sub_1005B981C(&qword_101A2C810);
  result = CRRegister.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1011CA7DC()
{
  _s13StyleCRDTDataVMa();
  sub_1005B981C(&qword_101A2C810);
  return CRRegister.wrappedValue.setter();
}

__n128 sub_1011CA83C@<Q0>(_OWORD *a1@<X8>)
{
  _s13StyleCRDTDataVMa();
  sub_1005B981C(&unk_101A10690);
  CRRegister.wrappedValue.getter();
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  *a1 = v3;
  a1[1] = v4;
  result = v6;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_1011CA8BC(_OWORD *a1)
{
  v1 = a1[3];
  v2 = a1[5];
  v13 = a1[4];
  v14 = v2;
  v3 = a1[5];
  v15 = a1[6];
  v4 = a1[1];
  v10[0] = *a1;
  v10[1] = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  v11 = a1[2];
  v12 = v5;
  v9[11] = v13;
  v9[12] = v3;
  v9[13] = a1[6];
  v9[7] = v7;
  v9[8] = v6;
  v9[9] = v11;
  v9[10] = v1;
  _s13StyleCRDTDataVMa();
  sub_10000BE14(v10, v9, &qword_1019FFF80);
  sub_1005B981C(&unk_101A10690);
  return CRRegister.wrappedValue.setter();
}

uint64_t sub_1011CA97C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1005B981C(&unk_101A2C890);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v103 - v7;
  v9 = _s15CapsuleDatabaseVMa();
  __chkstk_darwin(v9);
  v11 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)())
  {
    return 1;
  }

  if (static Selector.== infix(_:_:)())
  {
    if (sub_1004A48D4())
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  if (static Selector.== infix(_:_:)())
  {
    v13 = [v2 boardItems];
    type metadata accessor for CRLBoardItem(0);
    sub_1011DAA60(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
    v14 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = __CocoaSet.count.getter();
    }

    else
    {
      v15 = *(v14 + 16);
    }

    if (v15 != 1)
    {
      return -1;
    }

LABEL_29:
    result = sub_1011D78CC();
    if (result)
    {
LABEL_30:

      return -1;
    }

    return 1;
  }

  if (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)())
  {
    v16 = [v2 boardItems];
    type metadata accessor for CRLBoardItem(0);
    sub_1011DAA60(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
    v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1011CA438(v17);
    v19 = v18;

    if (v19 >> 62)
    {
      goto LABEL_97;
    }

    for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v21 = 0;
      v108 = v19 & 0xFFFFFFFFFFFFFF8;
      v109 = v19 & 0xC000000000000001;
      v106 = (v6 + 8);
      v107 = (v6 + 16);
      v105 = i;
      while (1)
      {
        if (v109)
        {
          v22 = v19;
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v21 >= *(v108 + 16))
          {
            goto LABEL_92;
          }

          v22 = v19;
          v23 = *(v19 + 8 * v21 + 32);
        }

        v6 = v23;
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        type metadata accessor for CRLTableItemData();
        v25 = swift_dynamicCastClassUnconditional();
        v26 = qword_101AD9268;
        swift_beginAccess();
        (*v107)(v8, v25 + v26, v5);
        Capsule.root.getter();
        (*v106)(v8, v5);
        sub_1005B981C(&unk_101A2D830);
        v27 = CROrderedDictionary.count.getter();
        sub_1011DAC64(v11, _s15CapsuleDatabaseVMa);

        if (v27 < 100)
        {
          goto LABEL_68;
        }

        ++v21;
        v19 = v22;
        if (v24 == v105)
        {
          goto LABEL_98;
        }
      }

      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      ;
    }

    goto LABEL_98;
  }

  if (static Selector.== infix(_:_:)())
  {
    v28 = [v2 boardItems];
    type metadata accessor for CRLBoardItem(0);
    sub_1011DAA60(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
    v29 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1011CA438(v29);
    v19 = v30;

    if (!(v19 >> 62))
    {
      v31 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31)
      {
        goto LABEL_34;
      }

      goto LABEL_98;
    }

LABEL_102:
    v31 = _CocoaArrayWrapper.endIndex.getter();
    if (v31)
    {
LABEL_34:
      v32 = 0;
      v108 = v19 & 0xFFFFFFFFFFFFFF8;
      v109 = v19 & 0xC000000000000001;
      v106 = (v6 + 8);
      v107 = (v6 + 16);
      v105 = v31;
      while (1)
      {
        if (v109)
        {
          v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v32 >= *(v108 + 16))
          {
            goto LABEL_94;
          }

          v33 = *(v19 + 8 * v32 + 32);
        }

        v6 = v33;
        v34 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_93;
        }

        v35 = v19;
        type metadata accessor for CRLTableItemData();
        v36 = swift_dynamicCastClassUnconditional();
        v37 = qword_101AD9268;
        swift_beginAccess();
        (*v107)(v8, v36 + v37, v5);
        Capsule.root.getter();
        (*v106)(v8, v5);
        sub_1005B981C(&unk_101A2D830);
        v38 = CROrderedDictionary.count.getter();
        sub_1011DAC64(v11, _s15CapsuleDatabaseVMa);

        if (v38 > 1)
        {
          break;
        }

        ++v32;
        v19 = v35;
        if (v34 == v105)
        {
          goto LABEL_98;
        }
      }

LABEL_68:

      return 1;
    }

LABEL_98:

    return -1;
  }

  if (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)())
  {
    v39 = [v2 boardItems];
    type metadata accessor for CRLBoardItem(0);
    sub_1011DAA60(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
    v40 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1011CA438(v40);
    v19 = v41;

    if (v19 >> 62)
    {
      v42 = _CocoaArrayWrapper.endIndex.getter();
      if (!v42)
      {
        goto LABEL_98;
      }
    }

    else
    {
      v42 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v42)
      {
        goto LABEL_98;
      }
    }

    v43 = 0;
    v108 = v19 & 0xFFFFFFFFFFFFFF8;
    v109 = v19 & 0xC000000000000001;
    v106 = (v6 + 8);
    v107 = (v6 + 16);
    v105 = v42;
    while (1)
    {
      if (v109)
      {
        v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v43 >= *(v108 + 16))
        {
          goto LABEL_96;
        }

        v44 = *(v19 + 8 * v43 + 32);
      }

      v6 = v44;
      v45 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        goto LABEL_95;
      }

      v46 = v19;
      type metadata accessor for CRLTableItemData();
      v47 = swift_dynamicCastClassUnconditional();
      v48 = qword_101AD9268;
      swift_beginAccess();
      (*v107)(v8, v47 + v48, v5);
      Capsule.root.getter();
      (*v106)(v8, v5);
      sub_1005B981C(&unk_101A2C7D0);
      v49 = CROrderedDictionary.count.getter();
      sub_1011DAC64(v11, _s15CapsuleDatabaseVMa);

      if (v49 < 100)
      {
        goto LABEL_68;
      }

      ++v43;
      v19 = v46;
      if (v45 == v105)
      {
        goto LABEL_98;
      }
    }
  }

  if (static Selector.== infix(_:_:)())
  {
    v50 = [v2 boardItems];
    type metadata accessor for CRLBoardItem(0);
    sub_1011DAA60(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
    v51 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1011CA438(v51);
    v19 = v52;

    if (v19 >> 62)
    {
      v53 = _CocoaArrayWrapper.endIndex.getter();
      if (!v53)
      {
        goto LABEL_98;
      }
    }

    else
    {
      v53 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v53)
      {
        goto LABEL_98;
      }
    }

    v54 = 0;
    v108 = v19 & 0xFFFFFFFFFFFFFF8;
    v109 = v19 & 0xC000000000000001;
    v106 = (v6 + 8);
    v107 = (v6 + 16);
    v105 = v53;
    while (1)
    {
      if (v109)
      {
        v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v54 >= *(v108 + 16))
        {
          goto LABEL_101;
        }

        v55 = *(v19 + 8 * v54 + 32);
      }

      v6 = v55;
      v56 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      v57 = v19;
      type metadata accessor for CRLTableItemData();
      v58 = swift_dynamicCastClassUnconditional();
      v59 = qword_101AD9268;
      swift_beginAccess();
      (*v107)(v8, v58 + v59, v5);
      Capsule.root.getter();
      (*v106)(v8, v5);
      sub_1005B981C(&unk_101A2C7D0);
      v60 = CROrderedDictionary.count.getter();
      sub_1011DAC64(v11, _s15CapsuleDatabaseVMa);

      if (v60 > 1)
      {
        goto LABEL_68;
      }

      ++v54;
      v19 = v57;
      if (v56 == v105)
      {
        goto LABEL_98;
      }
    }

    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)())
  {
    goto LABEL_29;
  }

  v61 = a1;
  if ((static Selector.== infix(_:_:)() & 1) == 0)
  {
    if (static Selector.== infix(_:_:)())
    {
      sub_1011D6B9C();
      if ((v75 & 1) == 0)
      {
        result = sub_1011D78CC();
        if (!result)
        {
          return result;
        }

        goto LABEL_30;
      }

      return 1;
    }

    if (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)())
    {
      v76 = sub_1011D78CC();
      if (!v76)
      {
        return -1;
      }

      v77 = [v2 boardItems];
      type metadata accessor for CRLBoardItem(0);
      sub_1011DAA60(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
      v78 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1011CA438(v78);
      v80 = v79;

      if (!(v80 >> 62))
      {
        v81 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_115;
      }

LABEL_140:
      v81 = _CocoaArrayWrapper.endIndex.getter();
LABEL_115:

      if (v81 == 1)
      {
        return 1;
      }

      else
      {
        return -1;
      }
    }

    goto LABEL_130;
  }

  v107 = sub_1011D78CC();
  if (!v107)
  {
LABEL_130:
    sub_10000BE14(a2, v111, &unk_1019F4D00);
    v94 = v112;
    if (v112)
    {
      v95 = sub_100020E58(v111, v112);
      v96 = *(v94 - 8);
      v97 = __chkstk_darwin(v95);
      v99 = &v103 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v96 + 16))(v99, v97);
      v100 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v96 + 8))(v99, v94);
      sub_100005070(v111);
    }

    else
    {
      v100 = 0;
    }

    v101 = type metadata accessor for CRLTableEditor();
    v110.receiver = v2;
    v110.super_class = v101;
    v102 = objc_msgSendSuper2(&v110, "canPerformEditorAction:withSender:", v61, v100);
    swift_unknownObjectRelease();
    return v102;
  }

  v62 = *(v107 + OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_type);
  if (v62 != 1)
  {
    if (v62 == 2)
    {
      v63 = [v2 boardItems];
      type metadata accessor for CRLBoardItem(0);
      sub_1011DAA60(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
      v64 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1011CA438(v64);
      v66 = v65;

      v109 = v66;
      if (v66 >> 62)
      {
        v108 = _CocoaArrayWrapper.endIndex.getter();
        if (v108)
        {
LABEL_82:
          v67 = 0;
          v105 = v109 & 0xFFFFFFFFFFFFFF8;
          v106 = (v109 & 0xC000000000000001);
          v68 = (v6 + 8);
          v103 = 1;
          v104 = (v6 + 16);
          while (1)
          {
            if (v106)
            {
              v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v67 >= *(v105 + 16))
              {
                goto LABEL_138;
              }

              v69 = *(v109 + 8 * v67 + 32);
            }

            v70 = v69;
            v71 = v67 + 1;
            if (__OFADD__(v67, 1))
            {
              break;
            }

            type metadata accessor for CRLTableItemData();
            v72 = swift_dynamicCastClassUnconditional();
            v73 = qword_101AD9268;
            swift_beginAccess();
            (*v104)(v8, v72 + v73, v5);
            Capsule.root.getter();
            (*v68)(v8, v5);
            sub_1005B981C(&unk_101A2D830);
            v74 = CROrderedDictionary.count.getter();
            sub_1011DAC64(v11, _s15CapsuleDatabaseVMa);

            if (v74 > 1)
            {
              goto LABEL_145;
            }

            ++v67;
            if (v71 == v108)
            {
              goto LABEL_144;
            }
          }

          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }
      }

      else
      {
        v108 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v108)
        {
          goto LABEL_82;
        }
      }

      goto LABEL_144;
    }

    goto LABEL_130;
  }

  v82 = [v2 boardItems];
  type metadata accessor for CRLBoardItem(0);
  sub_1011DAA60(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v83 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1011CA438(v83);
  v85 = v84;

  v109 = v85;
  if (v85 >> 62)
  {
    v108 = _CocoaArrayWrapper.endIndex.getter();
    if (v108)
    {
LABEL_120:
      v86 = 0;
      v105 = v109 & 0xFFFFFFFFFFFFFF8;
      v106 = (v109 & 0xC000000000000001);
      v87 = (v6 + 8);
      v103 = 1;
      v104 = (v6 + 16);
      do
      {
        if (v106)
        {
          v88 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v86 >= *(v105 + 16))
          {
            goto LABEL_139;
          }

          v88 = *(v109 + 8 * v86 + 32);
        }

        v89 = v88;
        v90 = v86 + 1;
        if (__OFADD__(v86, 1))
        {
          goto LABEL_137;
        }

        type metadata accessor for CRLTableItemData();
        v91 = swift_dynamicCastClassUnconditional();
        v92 = qword_101AD9268;
        swift_beginAccess();
        (*v104)(v8, v91 + v92, v5);
        Capsule.root.getter();
        (*v87)(v8, v5);
        sub_1005B981C(&unk_101A2C7D0);
        v93 = CROrderedDictionary.count.getter();
        sub_1011DAC64(v11, _s15CapsuleDatabaseVMa);

        if (v93 > 1)
        {
          goto LABEL_145;
        }

        ++v86;
      }

      while (v90 != v108);
    }
  }

  else
  {
    v108 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v108)
    {
      goto LABEL_120;
    }
  }

LABEL_144:
  v103 = -1;
LABEL_145:

  return v103;
}
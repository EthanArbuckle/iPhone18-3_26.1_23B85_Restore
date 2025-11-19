void sub_39B9E4(char a1)
{
  v2 = *(&stru_248.offset + (swift_isaMask & *v1));
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  if (v3 == (a1 & 1))
  {
    return;
  }

  v4 = [v1 navigationItem];
  v5 = [v1 parentViewController];
  if (v5)
  {
    v6 = v5;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v7 = v6;
      v8 = [v7 navigationItem];

      v6 = [v7 parentViewController];
      v4 = v8;
      if (!v6)
      {
        if ((*(v1 + v2) & 1) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_12;
      }
    }

    v8 = v4;
    if ((*(v1 + v2) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = v4;
    if ((*(v1 + v2) & 1) == 0)
    {
LABEL_14:
      v10 = 0;
      goto LABEL_15;
    }
  }

LABEL_12:
  sub_39B768();
  if (!v9)
  {
    goto LABEL_14;
  }

  v11 = sub_AB9260();

  v10 = v11;
LABEL_15:
  v12 = v10;
  [v8 setTitle:?];
}

uint64_t sub_39BBA0(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 112);
  v148 = *(a1 + 96);
  v149 = v4;
  v150 = *(a1 + 128);
  v5 = *(a1 + 48);
  v144 = *(a1 + 32);
  v145 = v5;
  v6 = *(a1 + 80);
  v146 = *(a1 + 64);
  v147 = v6;
  v7 = *(a1 + 16);
  v142 = *a1;
  v143 = v7;
  if (([v1 isEditing] & 1) != 0 || *(v1 + qword_E01D30) == 1)
  {
    v8 = qword_E01D40;
  }

  else
  {
    v8 = *&stru_298.segname[(swift_isaMask & *v1) + 8];
  }

  v9 = v1 + v8;
  swift_beginAccess();
  v10 = *(v9 + 7);
  v139 = *(v9 + 6);
  v140 = v10;
  v141 = v9[128];
  v11 = *(v9 + 3);
  v135 = *(v9 + 2);
  v136 = v11;
  v12 = *(v9 + 4);
  v138 = *(v9 + 5);
  v137 = v12;
  v13 = *v9;
  v134 = *(v9 + 1);
  v133 = v13;
  sub_15F84(&v133, __src, &unk_DFDD90);
  sub_15F84(a1, __src, &unk_DFDD90);
  sub_2D41B0(a1);
  if (([v2 isEditing] & 1) == 0 || (v14 = v2 + qword_E01D40, swift_beginAccess(), v15 = *(v14 + 7), __src[6] = *(v14 + 6), __src[7] = v15, LOBYTE(__src[8]) = v14[128], v16 = *(v14 + 3), __src[2] = *(v14 + 2), __src[3] = v16, v17 = *(v14 + 4), __src[5] = *(v14 + 5), __src[4] = v17, v18 = *v14, __src[1] = *(v14 + 1), __src[0] = v18, sub_11D03C(__src) == 1))
  {
    v19 = v2 + qword_E01D40;
    swift_beginAccess();
    v20 = *(v19 + 7);
    __src[6] = *(v19 + 6);
    __src[7] = v20;
    LOBYTE(__src[8]) = v19[128];
    v21 = *(v19 + 3);
    __src[2] = *(v19 + 2);
    __src[3] = v21;
    v22 = *(v19 + 4);
    __src[5] = *(v19 + 5);
    __src[4] = v22;
    v23 = *v19;
    __src[1] = *(v19 + 1);
    __src[0] = v23;
    v24 = *(a1 + 80);
    *(v19 + 4) = *(a1 + 64);
    *(v19 + 5) = v24;
    v25 = *(a1 + 112);
    *(v19 + 6) = *(a1 + 96);
    *(v19 + 7) = v25;
    v19[128] = *(a1 + 128);
    v26 = *(a1 + 48);
    *(v19 + 2) = *(a1 + 32);
    *(v19 + 3) = v26;
    v27 = *(a1 + 16);
    *v19 = *a1;
    *(v19 + 1) = v27;
    sub_15F84(a1, __dst, &unk_DFDD90);
    sub_12E1C(__src, &unk_DFDD90);
  }

  v28 = *(a1 + 80);
  v29 = *(a1 + 112);
  __src[6] = *(a1 + 96);
  __src[7] = v29;
  v30 = *(a1 + 16);
  v31 = *(a1 + 48);
  __src[2] = *(a1 + 32);
  __src[3] = v31;
  v33 = *(a1 + 48);
  v32 = *(a1 + 64);
  v34 = v32;
  __src[5] = *(a1 + 80);
  __src[4] = v32;
  v35 = *a1;
  v36 = *a1;
  __src[1] = *(a1 + 16);
  __src[0] = v35;
  *(&__src[13] + 8) = v138;
  *(&__src[14] + 8) = v139;
  *(&__src[15] + 8) = v140;
  *(&__src[9] + 8) = v134;
  *(&__src[10] + 8) = v135;
  *(&__src[11] + 8) = v136;
  *(&__src[12] + 8) = v137;
  *(&__src[8] + 8) = v133;
  v37 = *(a1 + 112);
  v104[6] = __src[6];
  v104[7] = v37;
  v104[2] = __src[2];
  v104[3] = v33;
  v104[5] = v28;
  v104[4] = v34;
  LOBYTE(__src[8]) = *(a1 + 128);
  BYTE8(__src[16]) = v141;
  v105 = *(a1 + 128);
  v104[1] = v30;
  v104[0] = v36;
  if (sub_11D03C(v104) != 1)
  {
    v121 = *(&__src[14] + 8);
    v122 = *(&__src[15] + 8);
    v123 = BYTE8(__src[16]);
    v117 = *(&__src[10] + 8);
    v118 = *(&__src[11] + 8);
    v120 = *(&__src[13] + 8);
    v119 = *(&__src[12] + 8);
    v116 = *(&__src[9] + 8);
    v115 = *(&__src[8] + 8);
    if (sub_11D03C(&v115) != 1)
    {
      *v101 = *(&__src[14] + 8);
      *&v101[16] = *(&__src[15] + 8);
      v101[32] = BYTE8(__src[16]);
      v97 = *(&__src[10] + 8);
      v98 = *(&__src[11] + 8);
      v99 = *(&__src[12] + 8);
      v100 = *(&__src[13] + 8);
      v95 = *(&__src[8] + 8);
      v96 = *(&__src[9] + 8);
      __dst[6] = *(&__src[14] + 8);
      __dst[7] = *(&__src[15] + 8);
      LOBYTE(__dst[8]) = BYTE8(__src[16]);
      __dst[2] = *(&__src[10] + 8);
      __dst[3] = *(&__src[11] + 8);
      __dst[4] = *(&__src[12] + 8);
      __dst[5] = *(&__src[13] + 8);
      __dst[0] = *(&__src[8] + 8);
      __dst[1] = *(&__src[9] + 8);
      v130 = __src[6];
      v131 = __src[7];
      v132 = __src[8];
      v126 = __src[2];
      v127 = __src[3];
      v129 = __src[5];
      v128 = __src[4];
      v125 = __src[1];
      v124 = __src[0];
      sub_15F84(&v133, v83, &unk_DFDD90);
      sub_15F84(a1, v83, &unk_DFDD90);
      v41 = sub_D24AC(&v124, __dst);
      sub_12E1C(&v95, &unk_DFDD90);
      v112 = __src[6];
      v113 = __src[7];
      v114 = __src[8];
      v108 = __src[2];
      v109 = __src[3];
      v111 = __src[5];
      v110 = __src[4];
      v107 = __src[1];
      v106 = __src[0];
      sub_12E1C(&v106, &unk_DFDD90);
      if (v41)
      {
        goto LABEL_47;
      }

LABEL_13:
      sub_3A3464(0);
      v39 = *(v2 + *(&stru_248.reloff + (swift_isaMask & *v2)));
      if (([v2 isEditing] & 1) != 0 || *(v2 + qword_E01D30) == 1)
      {
        v40 = qword_E01D40;
      }

      else
      {
        v40 = *&stru_298.segname[(swift_isaMask & *v2) + 8];
      }

      v42 = v2 + v40;
      swift_beginAccess();
      v101[32] = v42[128];
      v43 = *(v42 + 7);
      *v101 = *(v42 + 6);
      *&v101[16] = v43;
      v44 = *(v42 + 3);
      v97 = *(v42 + 2);
      v98 = v44;
      v45 = *(v42 + 5);
      v99 = *(v42 + 4);
      v100 = v45;
      v46 = *(v42 + 1);
      v95 = *v42;
      v96 = v46;
      v91 = v97;
      v92 = v44;
      v93 = v99;
      v89 = v95;
      v90 = v46;
      v87 = *&v101[1];
      v88 = *&v101[17];
      v83[0] = v95;
      v83[1] = v46;
      v83[3] = v44;
      v83[4] = v99;
      v47 = *(&v100 + 1);
      v94 = v100;
      v48 = v101[0];
      v83[2] = v97;
      v86 = *&v101[17];
      v85 = *&v101[1];
      v83[5] = v100;
      v84 = v101[0];
      if (sub_11D03C(v83) == 1)
      {
        __src[2] = v91;
        __src[3] = v92;
        __src[4] = v93;
        __src[0] = v89;
        __src[1] = v90;
        *(&__src[6] + 1) = v87;
        *&__src[5] = v94;
        *(&__src[5] + 1) = v47;
        LOBYTE(__src[6]) = v48;
        *(&__src[7] + 1) = v88;
        sub_15F84(&v95, &v115, &unk_DFDD90);
        sub_12E1C(__src, &unk_DFDD90);
        v47 = 0;
        v48 = 1;
      }

      else
      {
        __src[2] = v91;
        __src[3] = v92;
        __src[4] = v93;
        __src[0] = v89;
        __src[1] = v90;
        *(&__src[6] + 1) = v87;
        *&__src[5] = v94;
        *(&__src[5] + 1) = v47;
        LOBYTE(__src[6]) = v48;
        *(&__src[7] + 1) = v88;
        sub_15F84(&v95, &v115, &unk_DFDD90);
        sub_12E1C(__src, &unk_DFDD90);
      }

      v49 = v39 + qword_E719C0;
      v50 = *(v39 + qword_E719C0);
      v51 = *(v39 + qword_E719C0 + 8);
      *v49 = v47;
      *(v49 + 8) = v48 & 1;
      sub_46F114(v50, v51);
      sub_39A414();
      v52 = *(a1 + 112);
      v112 = *(a1 + 96);
      v113 = v52;
      v114 = *(a1 + 128);
      v53 = *(a1 + 48);
      v108 = *(a1 + 32);
      v109 = v53;
      v54 = *(a1 + 64);
      v111 = *(a1 + 80);
      v110 = v54;
      v55 = *a1;
      v107 = *(a1 + 16);
      v106 = v55;
      if (sub_11D03C(&v106) == 1)
      {
        v56 = 0;
        v57 = 0;
      }

      else
      {
        v121 = v112;
        v122 = v113;
        v123 = v114;
        v117 = v108;
        v118 = v109;
        v120 = v111;
        v119 = v110;
        v116 = v107;
        v115 = v106;
        __src[6] = v148;
        __src[7] = v149;
        LOBYTE(__src[8]) = v150;
        __src[2] = v144;
        __src[3] = v145;
        __src[5] = v147;
        __src[4] = v146;
        __src[1] = v143;
        __src[0] = v142;
        sub_2E2538(__src, &v74);
        v56 = sub_D1FC0();
        v57 = v58;
        sub_12E1C(a1, &unk_DFDD90);
      }

      v80 = v139;
      v81 = v140;
      v82 = v141;
      v76 = v135;
      v77 = v136;
      v78 = v137;
      v79 = v138;
      v74 = v133;
      v75 = v134;
      if (sub_11D03C(&v74) == 1)
      {
        if (!v57)
        {
          goto LABEL_47;
        }

        goto LABEL_34;
      }

      __src[6] = v80;
      __src[7] = v81;
      LOBYTE(__src[8]) = v82;
      __src[2] = v76;
      __src[3] = v77;
      __src[5] = v79;
      __src[4] = v78;
      __src[1] = v75;
      __src[0] = v74;
      v72[6] = v139;
      v72[7] = v140;
      v73 = v141;
      v72[2] = v135;
      v72[3] = v136;
      v72[4] = v137;
      v72[5] = v138;
      v72[0] = v133;
      v72[1] = v134;
      sub_2E2538(v72, v71);
      v59 = sub_D1FC0();
      v61 = v60;
      sub_12E1C(&v133, &unk_DFDD90);
      if (v57)
      {
        if (v61)
        {
          if (v56 != v59 || v57 != v61)
          {
            v70 = sub_ABB3C0();

            if (v70)
            {
              goto LABEL_47;
            }

LABEL_35:
            v62 = [v2 navigationItem];
            v63 = [v2 parentViewController];
            if (v63)
            {
              v64 = v63;
              while (1)
              {
                objc_opt_self();
                if (swift_dynamicCastObjCClass())
                {
                  break;
                }

                v65 = v64;
                v66 = [v65 navigationItem];

                v64 = [v65 parentViewController];
                v62 = v66;
                if (!v64)
                {
                  goto LABEL_42;
                }
              }
            }

            v66 = v62;
LABEL_42:
            if (*(v2 + *(&stru_248.offset + (swift_isaMask & *v2))) == 1 && (sub_39B768(), v67))
            {
              v68 = sub_AB9260();
            }

            else
            {
              v68 = 0;
            }

            [v66 setTitle:v68];

            goto LABEL_47;
          }

LABEL_47:
          sub_12E1C(&v133, &unk_DFDD90);
          v38 = a1;
          return sub_12E1C(v38, &unk_DFDD90);
        }
      }

      else if (!v61)
      {
        goto LABEL_47;
      }

LABEL_34:

      goto LABEL_35;
    }

LABEL_12:
    memcpy(__dst, __src, 0x109uLL);
    sub_15F84(&v133, &v124, &unk_DFDD90);
    sub_15F84(a1, &v124, &unk_DFDD90);
    sub_12E1C(__dst, &qword_E02CA0);
    goto LABEL_13;
  }

  __dst[6] = *(&__src[14] + 8);
  __dst[7] = *(&__src[15] + 8);
  LOBYTE(__dst[8]) = BYTE8(__src[16]);
  __dst[2] = *(&__src[10] + 8);
  __dst[3] = *(&__src[11] + 8);
  __dst[4] = *(&__src[12] + 8);
  __dst[5] = *(&__src[13] + 8);
  __dst[0] = *(&__src[8] + 8);
  __dst[1] = *(&__src[9] + 8);
  if (sub_11D03C(__dst) != 1)
  {
    goto LABEL_12;
  }

  v130 = __src[6];
  v131 = __src[7];
  v132 = __src[8];
  v126 = __src[2];
  v127 = __src[3];
  v129 = __src[5];
  v128 = __src[4];
  v125 = __src[1];
  v124 = __src[0];
  v38 = &v124;
  return sub_12E1C(v38, &unk_DFDD90);
}

void sub_39C7C0(void *a1)
{
  v2 = qword_E01D30;
  if ((*(v1 + qword_E01D30) & 1) == 0)
  {
    v3 = v1;
    v87 = a1;
    if ([v1 isEditing])
    {
      a1 = v87;
      goto LABEL_4;
    }

    v4 = *&stru_298.segname[(swift_isaMask & *v1) + 16];
    v5 = *(v1 + v4);
    if (!v5)
    {
      goto LABEL_12;
    }

    v6 = [v5 results];
    if (!v6)
    {
      __break(1u);
      goto LABEL_85;
    }

    v7 = v6;
    v8 = [v6 firstSection];

    if (v8)
    {
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (!v9)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
LABEL_12:
      v9 = 0;
    }

    v86 = v9;
    if (v87)
    {
      v10 = objc_allocWithZone(type metadata accessor for PlaylistModelResponse());
      v11 = v87;
      sub_B4E8C(v11);
      v12 = *(v3 + v4);
      *(v3 + v4) = v13;
      v14 = v13;
      sub_3912DC(v12);

      v9 = v86;
    }

    else
    {
      v12 = *(v3 + v4);
      *(v3 + v4) = 0;
      sub_3912DC(v12);
    }

    *(v3 + qword_E01DA0) = 0;

    v15 = *(v3 + v4);
    if (!v15)
    {
      goto LABEL_26;
    }

    v16 = v15;
    v17 = [v16 results];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 firstSection];

      if (v19)
      {
        objc_opt_self();
        v20 = swift_dynamicCastObjCClass();
        if (v20)
        {
          v21 = v20;
          swift_unknownObjectRetain();
          v80 = v21;
          sub_D328C(v21, &v129);
          v83 = *&v130[8];
          v84 = *&v130[16];
          v125 = *&v130[24];
          v126 = *&v130[40];
          v127 = *&v130[56];
          v128 = v129;
          v85 = *&v130[72];
          v79 = v131;
          v124 = v131;
          v123[0] = *(&v131 + 1);
          *(v123 + 3) = DWORD1(v131);
          v22 = v132;
          *(v121 + 7) = *(&v132 + 1);
          v121[0] = *(&v132 + 1);
          v23 = [v16 results];
          if (v23)
          {
            v24 = v23;
            v25 = *(&v131 + 1);
            v135 = *&v130[8];
            v26 = [v23 totalItemCount];

            v122 = 0;
            if ((v22 & 1) != 0 || v26 != v25)
            {
              v83 = static String.stringForTrackCountAndDuration(trackCount:duration:)(v26, 0, v85, v79 & 1);
              v27 = v28;
              sub_E17A4(&v135);
              v84 = v27;
            }

            else
            {
              v27 = *(&v135 + 1);
            }

            v134 = *v130;
            v82 = *(v3 + qword_E01D18);

            sub_12E1C(&v134, &unk_E02D40);
            v81 = v16;
            if (v5 && v86)
            {
              v76 = v27;
              v78 = v5;
              v29 = v86;
              v30 = [v80 identifiers];
              v31 = v29;
              v32 = [v31 identifiers];
              v77 = v31;

              v33 = [v30 isEqual:v32];
              if (v33)
              {
                v34 = [v81 results];
                if (!v34)
                {
LABEL_90:
                  __break(1u);
                  goto LABEL_91;
                }

                v35 = v34;
                v36 = [v34 totalItemCount];

                v31 = v78;
                v37 = [v78 results];
                if (!v37)
                {
LABEL_91:
                  __break(1u);
                  return;
                }

                v38 = v37;
                v39 = [v37 totalItemCount];

                if (v36 == v39)
                {
                  if (([v3 isEditing] & 1) != 0 || *(v3 + v2) == 1)
                  {
                    v40 = qword_E01D40;
                  }

                  else
                  {
                    v40 = *&stru_298.segname[(swift_isaMask & *v3) + 8];
                  }

                  v63 = v3 + v40;
                  swift_beginAccess();
                  v142[32] = v63[128];
                  v64 = *(v63 + 7);
                  *v142 = *(v63 + 6);
                  *&v142[16] = v64;
                  v65 = *(v63 + 3);
                  v138 = *(v63 + 2);
                  v139 = v65;
                  v66 = *(v63 + 5);
                  v140 = *(v63 + 4);
                  v141 = v66;
                  v67 = *(v63 + 1);
                  v136 = *v63;
                  v137 = v67;
                  v92 = v138;
                  v93 = v65;
                  v94 = v140;
                  v95 = v141;
                  v90 = v136;
                  v91 = v67;
                  v68 = *(&v141 + 1);
                  v69 = v142[0];
                  v88 = *&v142[1];
                  v89 = *&v142[17];
                  v114 = v136;
                  v115 = v67;
                  v117 = v65;
                  v118 = v140;
                  v116 = v138;
                  *&v120[17] = *&v142[17];
                  *&v120[1] = *&v142[1];
                  v119 = v141;
                  v120[0] = v142[0];
                  if (sub_11D03C(&v114) == 1)
                  {
                    *v112 = v92;
                    *&v112[16] = v93;
                    *&v112[32] = v94;
                    v110 = v90;
                    v111 = v91;
                    *&v113[1] = v88;
                    *&v112[48] = v95;
                    *&v112[56] = v68;
                    v113[0] = v69;
                    *&v113[17] = v89;
                    sub_15F84(&v136, &aBlock, &unk_DFDD90);
                    sub_12E1C(&v110, &unk_DFDD90);
                  }

                  else
                  {
                    *v112 = v92;
                    *&v112[16] = v93;
                    *&v112[32] = v94;
                    v110 = v90;
                    v111 = v91;
                    *&v113[1] = v88;
                    *&v112[48] = v95;
                    *&v112[56] = v68;
                    v113[0] = v69;
                    *&v113[17] = v89;
                    sub_15F84(&v136, &aBlock, &unk_DFDD90);
                    sub_12E1C(&v110, &unk_DFDD90);
                    if ((v69 & 1) == 0)
                    {
                      v124 = 0;
                      if ((v79 & 1) != 0 || *&v68 != *&v85)
                      {
                        v83 = static String.stringForTrackCountAndDuration(trackCount:duration:)(v26, 0, v68, 0);
                        v84 = v70;
                      }

                      v71 = swift_allocObject();
                      swift_unknownObjectWeakInit();
                      v72 = swift_allocObject();
                      *(v72 + 16) = v71;
                      *(v72 + 24) = v81;
                      v99 = sub_3A789C;
                      *&v100 = v72;
                      *&aBlock = _NSConcreteStackBlock;
                      *(&aBlock + 1) = 1107296256;
                      v97 = sub_780C4;
                      v98 = &block_descriptor_302;
                      v73 = _Block_copy(&aBlock);
                      v74 = v78;
                      v75 = v81;

                      [v75 getChangeDetailsFromPreviousResponse:v74 completion:v73];

                      _Block_release(v73);
                      v85 = v68;
LABEL_41:
                      v42 = objc_opt_self();
                      v43 = [v42 standardUserDefaults];
                      LOBYTE(v114) = 11;
                      sub_AFE98();
                      sub_36A48();
                      NSUserDefaults.subscript.getter(&v136);
                      if (*(&v137 + 1))
                      {
                        if (swift_dynamicCast())
                        {
                          v44 = v114;

                          if (v44)
                          {
                            v45 = 1;
LABEL_52:
                            v110 = v128;
                            *&v111 = v82;
                            *(&v111 + 1) = v83;
                            *&v112[40] = v127;
                            *&v112[8] = v125;
                            *&v112[24] = v126;
                            *v112 = v84;
                            *&v112[56] = v85;
                            v47 = v124;
                            v113[0] = v124;
                            *&v113[1] = v123[0];
                            *&v113[4] = *(v123 + 3);
                            *&v113[8] = v26;
                            v48 = v122;
                            v113[16] = v122;
                            *&v113[24] = *(v121 + 7);
                            *&v113[17] = v121[0];
                            v113[32] = v45;
                            v120[32] = v45;
                            *v120 = *v113;
                            *&v120[16] = *&v113[16];
                            v118 = *&v112[32];
                            v119 = *&v112[48];
                            v116 = *v112;
                            v117 = *&v112[16];
                            v114 = v128;
                            v115 = v111;
                            UIScreen.Dimensions.size.getter(*&v128);
                            *v142 = *v120;
                            *&v142[16] = *&v120[16];
                            v142[32] = v120[32];
                            v138 = v116;
                            v139 = v117;
                            v140 = v118;
                            v141 = v119;
                            v136 = v114;
                            v137 = v115;
                            sub_2E2538(&v110, &aBlock);
                            sub_39BBA0(&v136);
                            v49 = [v80 identifiers];
                            v50 = [v49 personalizedStore];

                            if (v50)
                            {
                              v51 = [v50 cloudID];
                              swift_unknownObjectRelease();
                              if (([v80 isSubscribed] & 1) != 0 || objc_msgSend(v80, "isCuratorPlaylist"))
                              {
                                if (v51)
                                {
                                  v52 = [objc_opt_self() sharedCloudController];
                                  if (!v52)
                                  {
LABEL_88:
                                    __break(1u);
LABEL_89:
                                    __break(1u);
                                    goto LABEL_90;
                                  }

                                  v53 = v52;
                                  [v52 updateSubscribedPlaylistWithSagaID:v51 ignoreMinRefreshInterval:0 completionHandler:0];
                                }
                              }
                            }

                            swift_unknownObjectRelease();

                            aBlock = v128;
                            v100 = v125;
                            v101 = v126;
                            v97 = v82;
                            v98 = v83;
                            v102 = v127;
                            v99 = v84;
                            v103 = v85;
                            v104 = v47;
                            *v105 = v123[0];
                            *&v105[3] = *(v123 + 3);
                            v106 = v26;
                            v107 = v48;
                            *&v108[7] = *(v121 + 7);
                            *v108 = v121[0];
                            v109 = v45;
                            sub_257CA0(&aBlock);
                            v9 = v86;
                            goto LABEL_59;
                          }

LABEL_47:
                          v46 = [v42 standardUserDefaults];
                          LOBYTE(v114) = 7;
                          NSUserDefaults.subscript.getter(&v136);
                          if (*(&v137 + 1))
                          {
                            if (swift_dynamicCast())
                            {
                              v45 = v114;

                              goto LABEL_52;
                            }
                          }

                          else
                          {
                            sub_12E1C(&v136, &unk_DE8E40);
                          }

                          v45 = 0;
                          goto LABEL_52;
                        }
                      }

                      else
                      {
                        sub_12E1C(&v136, &unk_DE8E40);
                      }

                      goto LABEL_47;
                    }
                  }

                  sub_3A38EC(v81);

                  goto LABEL_41;
                }

                v41 = v77;
              }

              else
              {
                v41 = v78;
              }

              v16 = v81;
            }

            sub_3A38EC(v16);
            goto LABEL_41;
          }

LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }

LABEL_26:
      sub_2E2464(&v129);
      *v142 = v131;
      *&v142[16] = v132;
      v142[32] = v133;
      v138 = *&v130[16];
      v139 = *&v130[32];
      v140 = *&v130[48];
      v141 = *&v130[64];
      v136 = v129;
      v137 = *v130;
      sub_39BBA0(&v136);
LABEL_59:
      sub_3A1E14();
      sub_399938([v3 isEditing]);
      v54 = [v3 navigationController];
      if (!v54)
      {

        return;
      }

      if (!v5)
      {

        goto LABEL_65;
      }

      if (*(v3 + *(&stru_298.reloff + (swift_isaMask & *v3))))
      {

LABEL_65:
        return;
      }

      if (!v87)
      {

        return;
      }

      v55 = v54;
      v56 = [v5 results];
      if (v56)
      {
        v57 = v56;
        v58 = [v56 numberOfSections];

        if (v58 < 1)
        {
          goto LABEL_72;
        }

        v59 = [v87 results];
        if (v59)
        {
          v60 = v59;
          v61 = [v59 numberOfSections];

          if (!v61)
          {
            v62 = [v55 removeViewController:v3 animated:1];

            return;
          }

LABEL_72:

          return;
        }

        goto LABEL_89;
      }

      goto LABEL_87;
    }

LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

LABEL_4:
}

void sub_39D500(void *a1, uint64_t a2, void *a3)
{
  if (!a1 || (v5 = [a1 deletedItemIndexPaths], sub_AB3820(), v6 = *(sub_AB9760() + 16), v5, , v6) || (v7 = objc_msgSend(a1, "insertedItemIndexPaths"), v8 = *(sub_AB9760() + 16), v7, , v8))
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = *(Strong + *&stru_298.segname[(swift_isaMask & *Strong) + 16]);
      if (v11)
      {
        v12 = v11 == a3;
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        sub_3A38EC(a3);
      }
    }
  }
}

uint64_t sub_39D634(_BYTE *a1)
{
  sub_39453C();
  *&a1[OBJC_IVAR____TtC16MusicApplication12DetailHeader_editingDelegate + 8] = &off_D0E818;
  swift_unknownObjectWeakAssign();

  return sub_39EE28(a1);
}

uint64_t sub_39D724(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = v4;
  sub_307CC(a1);

  sub_394688(sub_3A76E8, v5);
}

void sub_39D7E8(uint64_t a1, void (*a2)(void))
{
  if (a2)
  {
    a2();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (*(*(Strong + qword_E01D38) + 16) && (*(Strong + *(&stru_298.reloff + (swift_isaMask & *Strong))) & 1) == 0 && *(*(Strong + *(&stru_248.reloff + (swift_isaMask & *Strong))) + qword_E70B98) <= 0)
    {
      v4 = sub_39DC7C();
      v5 = sub_AB9260();
      [v4 setLabel:v5];

      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = v6;
        v8 = v4;
        sub_39E06C(v7, 1);
      }

      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_3A784C;
      aBlock[5] = v9;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_151E0;
      aBlock[3] = &block_descriptor_292;
      v10 = _Block_copy(aBlock);

      [v4 performWithResponseHandler:v10];
      _Block_release(v10);
    }

    else
    {
      v4 = Strong;
    }
  }
}

uint64_t sub_39DA08(void *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_13C80(0, &qword_DE8ED0);
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = v3;
    v5 = a1;
    v6 = v3;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3A7854, v4);
  }

  return result;
}

void sub_39DAD0(void *a1, void *a2)
{
  if (a1)
  {
    v13 = a1;
    v3 = [v13 results];
    if (v3)
    {
      v12 = v3;
      if (([a2 isEditing] & 1) == 0 && (*(a2 + qword_E01D30) & 1) == 0)
      {
        v4 = qword_E01D18;
        *(a2 + qword_E01D18) = 0;

        *(*(a2 + *(&stru_248.reloff + (swift_isaMask & *a2))) + qword_E70B80) = 0;

        sub_478FC();
        v5 = *(a2 + v4);
        if (v5)
        {

          v6 = [v13 request];
          if (v6)
          {
            v7 = v6;
            v8 = type metadata accessor for MusicKitEditingModelResponse();
            v9 = objc_allocWithZone(v8);
            *&v9[OBJC_IVAR____TtC16MusicApplication28MusicKitEditingModelResponse_musickitEditor] = v5;
            v14.receiver = v9;
            v14.super_class = v8;

            v10 = objc_msgSendSuper2(&v14, "initWithRequest:", v7);

            sub_47478(v10);
          }

          else
          {
            __break(1u);
          }

          return;
        }
      }

      v11 = v12;
    }

    else
    {
      v11 = v13;
    }
  }
}

void *sub_39DC7C()
{
  [*(v0 + *&stru_298.segname[swift_isaMask & *v0]) copy];
  sub_ABAB50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E02CC0);
  swift_dynamicCast();
  swift_unknownObjectRelease();
  v1 = sub_AB9260();
  [v27 setLabel:v1];

  v2 = [v27 sectionKind];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();

    if (v4)
    {
      if (qword_DE6730 != -1)
      {
        swift_once();
      }

      v5 = qword_E70B40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_B00DB0;
      *(v6 + 32) = sub_AB92A0();
      *(v6 + 40) = v7;
      *(v6 + 48) = sub_AB92A0();
      *(v6 + 56) = v8;
      *(v6 + 64) = sub_AB92A0();
      *(v6 + 72) = v9;
      *(v6 + 80) = sub_AB92A0();
      *(v6 + 88) = v10;
      *(v6 + 96) = sub_AB92A0();
      *(v6 + 104) = v11;
      *(v6 + 112) = sub_AB92A0();
      *(v6 + 120) = v12;
      *(v6 + 128) = sub_AB92A0();
      *(v6 + 136) = v13;
      *(v6 + 144) = sub_AB92A0();
      *(v6 + 152) = v14;
      isa = sub_AB9740().super.isa;
      v16 = [objc_opt_self() propertySetWithProperties:isa];

      v17 = [v5 propertySetByCombiningWithPropertySet:v16];
      [v27 setSectionProperties:v17];
    }
  }

  sub_13C80(0, &qword_DE9C10);
  v18 = static MPModelPlaylistEntry.defaultMusicKind.getter();
  [v27 setItemKind:v18];
  if (qword_DE6738 != -1)
  {
    swift_once();
  }

  [v27 setItemProperties:qword_E70B48];
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    v20 = v19;
    v21 = v27;
    sub_39E06C(v20, 0);
  }

  v22 = swift_dynamicCastObjCProtocolConditional();
  if (v22)
  {
    [v22 setWantsDetailedKeepLocalRequestableResponse:{1, &OBJC_PROTOCOL___MPModelRequestDetailedKeepLocalStatusRequesting}];
  }

  type metadata accessor for JSContainerDetailModelRequest();
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    v24 = v23;
    v25 = v27;
    sub_39A29C(v24);
  }

  return v27;
}

void sub_39E06C(void *a1, char a2)
{
  [a1 setFilteringOptions:{objc_msgSend(a1, "filteringOptions") | 4}];
  if (a2)
  {
    [a1 setFilteringOptions:{objc_msgSend(a1, "filteringOptions") & 0xFFFFFFFFFFFFFFFDLL}];
    [a1 setFilteringOptions:{objc_msgSend(a1, "filteringOptions") | 0x10000}];
  }

  if (*(v2 + qword_E01D08 + 8))
  {

    v5 = sub_AB9260();
  }

  else
  {
    v5 = 0;
  }

  [a1 setFilterText:v5];

  if (*(v2 + qword_E71630))
  {
    sub_13C80(0, &unk_DFDE50);

    isa = sub_AB9740().super.isa;
  }

  else
  {
    isa = 0;
  }

  [a1 setItemSortDescriptors:isa];
}

BOOL sub_39E1D8()
{
  v1 = *(v0 + *&stru_298.segname[swift_isaMask & *v0] + 8);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerDetailLink;
    swift_beginAccess();
    if (*(v1 + v2))
    {
      return 1;
    }
  }

  if (([v0 isEditing] & 1) != 0 || *(v0 + qword_E01D30) == 1)
  {
    v4 = qword_E01D40;
  }

  else
  {
    v4 = *&stru_298.segname[(swift_isaMask & *v0) + 8];
  }

  v5 = v0 + v4;
  swift_beginAccess();
  v6 = *(v5 + 7);
  v27 = *(v5 + 6);
  v28 = v6;
  v7 = *(v5 + 3);
  v23 = *(v5 + 2);
  v24 = v7;
  v8 = *(v5 + 5);
  v25 = *(v5 + 4);
  v26 = v8;
  v9 = *(v5 + 1);
  v22[0] = *v5;
  v22[1] = v9;
  v20[6] = v27;
  v20[7] = v28;
  v20[2] = v23;
  v20[3] = v24;
  v29 = v5[128];
  v21 = v29;
  v20[4] = v25;
  v20[5] = v8;
  v20[0] = v22[0];
  v20[1] = v9;
  if (sub_11D03C(v20) == 1)
  {
    return 0;
  }

  v10 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    v16 = *(&v24 + 1);
    if (*(&v24 + 1))
    {
      v17 = MPModelRelationshipPlaylistCurator;
      sub_15F84(v22, v19, &unk_DFDD90);
      if ([v16 hasLoadedValueForKey:v17])
      {
        v18 = [v16 curator];
        if (v18)
        {
          v11 = v18;
          v10 = 0;
          goto LABEL_12;
        }
      }

      sub_12E1C(v22, &unk_DFDD90);
    }

    return 0;
  }

  sub_15F84(v22, v19, &unk_DFDD90);
  v11 = v10;
LABEL_12:
  v12 = v10;
  v13 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
  MPModelObject.bestIdentifier(for:)(*v13, 0);
  v15 = v14;

  sub_12E1C(v22, &unk_DFDD90);

  return v15 != 0;
}

uint64_t sub_39E438(_BYTE *a1)
{
  v2 = v1;
  if (([v1 isEditing] & 1) != 0 || *(v1 + qword_E01D30) == 1)
  {
    v4 = qword_E01D40;
  }

  else
  {
    v4 = *&stru_298.segname[(swift_isaMask & *v1) + 8];
  }

  v5 = v1 + v4;
  swift_beginAccess();
  v6 = *(v5 + 7);
  v139 = *(v5 + 6);
  v140 = v6;
  v7 = *(v5 + 3);
  v135 = *(v5 + 2);
  v136 = v7;
  v8 = *(v5 + 5);
  v137 = *(v5 + 4);
  v138 = v8;
  v9 = *(v5 + 1);
  v133 = *v5;
  v134 = v9;
  v113[6] = v139;
  v113[7] = v140;
  v113[2] = v135;
  v113[3] = v136;
  v141 = v5[128];
  v114 = v141;
  v113[5] = v8;
  v113[4] = v137;
  v113[1] = v9;
  v113[0] = v133;
  v71 = a1;
  if (sub_11D03C(v113) == 1)
  {
    memset(v112, 0, 24);
    v111 = 0u;
    v110 = 0u;
    v109 = 0u;
    v108 = 0u;
    v107 = 0u;
  }

  else
  {
    v130 = v139;
    v131 = v140;
    v132 = v141;
    v126 = v135;
    v127 = v136;
    v129 = v138;
    v128 = v137;
    v125 = v134;
    v124 = v133;
    sub_15F84(&v133, &v81, &unk_DFDD90);
    sub_D1A9C(&v81);
    sub_12E1C(&v133, &unk_DFDD90);
    v111 = v85;
    v112[0] = v86;
    *&v112[1] = v87[0];
    v107 = v81;
    v108 = v82;
    v110 = v84;
    v109 = v83;
  }

  if (([v2 isEditing] & 1) != 0 || *(v2 + qword_E01D30) == 1)
  {
    v10 = qword_E01D40;
  }

  else
  {
    v10 = *&stru_298.segname[(swift_isaMask & *v2) + 8];
  }

  v11 = v2 + v10;
  swift_beginAccess();
  v12 = *(v11 + 7);
  v104 = *(v11 + 6);
  v105 = v12;
  v13 = *(v11 + 3);
  v100 = *(v11 + 2);
  v101 = v13;
  v14 = *(v11 + 5);
  v102 = *(v11 + 4);
  v103 = v14;
  v15 = *(v11 + 1);
  v98 = *v11;
  v99 = v15;
  v96[6] = v104;
  v96[7] = v105;
  v96[2] = v100;
  v96[3] = v101;
  v106 = v11[128];
  v97 = v106;
  v96[4] = v102;
  v96[5] = v14;
  v96[0] = v98;
  v96[1] = v15;
  if (sub_11D03C(v96) == 1)
  {
    v69 = 0;
    v70 = 0;
  }

  else
  {
    v121 = v104;
    v122 = v105;
    v123 = v106;
    v117 = v100;
    v118 = v101;
    v120 = v103;
    v119 = v102;
    v116 = v99;
    v115 = v98;
    sub_15F84(&v98, &v81, &unk_DFDD90);
    v69 = sub_D1FC0();
    v70 = v16;
    sub_12E1C(&v98, &unk_DFDD90);
  }

  v17 = v2 + qword_E01D50;
  v18 = *(v2 + qword_E01D50 + 80);
  v92 = *(v2 + qword_E01D50 + 64);
  v93 = v18;
  v94 = *(v2 + qword_E01D50 + 96);
  v95 = *(v2 + qword_E01D50 + 112);
  v19 = *(v2 + qword_E01D50 + 16);
  v88 = *(v2 + qword_E01D50);
  v89 = v19;
  v20 = *(v2 + qword_E01D50 + 48);
  v90 = *(v2 + qword_E01D50 + 32);
  v91 = v20;
  sub_15F84(&v88, &v81, &qword_E02CA8);

  v21 = *(&v88 + 1);
  v22 = v107;
  v23 = v108;
  v24 = v109;
  v25 = *(&v110 + 1);
  v26 = v110;
  v27 = *(&v111 + 1);
  v28 = v111;
  v29 = *&v112[0];
  if (*(&v88 + 1))
  {
    if (*(&v107 + 1))
    {
      v58 = *(v112 + 8);
      *&v68 = v90;
      *(&v68 + 1) = *(&v89 + 1);
      *&v67 = v91;
      *(&v67 + 1) = *(&v90 + 1);
      v65 = v89;
      v66 = *(&v91 + 1);
      v62 = *(&v92 + 1);
      v63 = v92;
      v30 = v93;
      v59 = v94;
      v64 = *&v112[0];
      v60 = *(&v110 + 1);
      v61 = v111;
      v57 = v88;
      if (v107 == v88)
      {
        if (v89 != v108)
        {
LABEL_36:
          v73 = v22;
          v74 = v23;
          v75 = v24;
          v76 = v26;
          v77 = v25;
          *&v78 = v28;
          *(&v78 + 1) = v27;
          v79 = v29;
          v80 = v58;
          sub_15F84(&v107, v72, &unk_E02CB0);
          sub_12E1C(&v73, &unk_E02CB0);
          *&v81 = v57;
          *(&v81 + 1) = v21;
          *&v82 = v65;
          *(&v82 + 1) = *(&v68 + 1);
          *&v83 = v68;
          *(&v83 + 1) = *(&v67 + 1);
          *&v84 = v67;
          *(&v84 + 1) = v66;
          *&v85 = v63;
          *(&v85 + 1) = v62;
          v86 = v30;
          v87[0] = v59;
          v31 = &unk_E02CB0;
          goto LABEL_37;
        }
      }

      else
      {
        v32 = sub_ABB3C0();
        v25 = v60;
        v27 = *(&v61 + 1);
        v28 = v61;
        v29 = v64;
        if ((v32 & 1) == 0 || v65 != v23)
        {
          goto LABEL_36;
        }
      }

      if (v68 != __PAIR128__(*(&v23 + 1), v24))
      {
        v33 = sub_ABB3C0();
        v25 = v60;
        v27 = *(&v61 + 1);
        v28 = v61;
        v29 = v64;
        if ((v33 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      if (v67 != __PAIR128__(*(&v24 + 1), v26))
      {
        v34 = sub_ABB3C0();
        v25 = v60;
        v27 = *(&v61 + 1);
        v28 = v61;
        v29 = v64;
        if ((v34 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      if (v66 != v25 || v63 != v28)
      {
        v35 = sub_ABB3C0();
        v25 = v60;
        v27 = *(&v61 + 1);
        v28 = v61;
        v29 = v64;
        if ((v35 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      if (v62 != v27 || v30 != v29)
      {
        v36 = sub_ABB3C0();
        v25 = v60;
        v27 = *(&v61 + 1);
        v28 = v61;
        v29 = v64;
        if ((v36 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      if (__PAIR128__(v59, *(&v30 + 1)) != v58)
      {
        v56 = sub_ABB3C0();
        v73 = v22;
        v74 = v23;
        v75 = v24;
        v76 = v26;
        v77 = v60;
        v78 = v61;
        v79 = v64;
        v80 = v58;
        sub_15F84(&v107, v72, &unk_E02CB0);
        sub_12E1C(&v73, &unk_E02CB0);
        *&v81 = v57;
        *(&v81 + 1) = v21;
        *&v82 = v65;
        *(&v82 + 1) = *(&v68 + 1);
        *&v83 = v68;
        *(&v83 + 1) = *(&v67 + 1);
        *&v84 = v67;
        *(&v84 + 1) = v66;
        *&v85 = v63;
        *(&v85 + 1) = v62;
        v86 = v30;
        v87[0] = v59;
        sub_12E1C(&v81, &unk_E02CB0);
        if ((v56 & 1) == 0)
        {
          goto LABEL_38;
        }

LABEL_43:
        v38 = v69;
        v37 = v70;
        v49 = *(v17 + 6);
        v86 = *(v17 + 5);
        *v87 = v49;
        v50 = *(v17 + 4);
        v87[2] = *(v17 + 14);
        v51 = v87[2];
        v52 = *(v17 + 1);
        v81 = *v17;
        v82 = v52;
        v53 = *(v17 + 3);
        v83 = *(v17 + 2);
        v84 = v53;
        v85 = v50;
        v54 = *(&v49 + 1);
        sub_15F84(&v81, &v73, &qword_E02CA8);
        sub_12E1C(&v81, &unk_E02CB0);
        if (v51)
        {
          if (v70)
          {
            if (v54 == v69 && v51 == v70)
            {

              goto LABEL_52;
            }

            v55 = sub_ABB3C0();

            if (v55)
            {
LABEL_52:
              if (*(&v107 + 1))
              {

                sub_12E1C(&v107, &unk_E02CB0);
                v47 = 0;
                a1 = v71;
                goto LABEL_40;
              }
            }
          }

          else
          {
          }
        }

        else if (!v70)
        {
          goto LABEL_52;
        }

        a1 = v71;
        goto LABEL_39;
      }

      v73 = v22;
      v74 = v23;
      v75 = v24;
      v76 = v26;
      v77 = v25;
      *&v78 = v28;
      *(&v78 + 1) = v27;
      v79 = v29;
      *&v80 = *(&v30 + 1);
      *(&v80 + 1) = *(&v58 + 1);
      sub_15F84(&v107, v72, &unk_E02CB0);
      sub_12E1C(&v73, &unk_E02CB0);
      *&v81 = v57;
      *(&v81 + 1) = v21;
      *&v82 = v65;
      *(&v82 + 1) = *(&v68 + 1);
      *&v83 = v68;
      *(&v83 + 1) = *(&v67 + 1);
      *&v84 = v67;
      *(&v84 + 1) = v66;
      *&v85 = v63;
      *(&v85 + 1) = v62;
      v86 = v30;
      v87[0] = v59;
LABEL_42:
      sub_12E1C(&v81, &unk_E02CB0);
      goto LABEL_43;
    }
  }

  else if (!*(&v107 + 1))
  {
    v81 = v88;
    v82 = v89;
    v83 = v90;
    v84 = v91;
    v85 = v92;
    v86 = v93;
    v87[0] = v94;
    sub_15F84(&v107, &v73, &unk_E02CB0);
    goto LABEL_42;
  }

  v81 = v88;
  v82 = v89;
  v83 = v90;
  v84 = v91;
  v85 = v92;
  v86 = v93;
  v87[0] = v94;
  *&v87[1] = v107;
  *&v87[3] = v108;
  *&v87[5] = v109;
  *&v87[7] = v110;
  *&v87[9] = v111;
  *&v87[11] = v112[0];
  v87[13] = *&v112[1];
  sub_15F84(&v107, &v73, &unk_E02CB0);
  v31 = &qword_DEDFB8;
LABEL_37:
  sub_12E1C(&v81, v31);
LABEL_38:
  v37 = v70;
  v38 = v69;
LABEL_39:
  v39 = *(v17 + 5);
  v85 = *(v17 + 4);
  v86 = v39;
  v87[0] = *(v17 + 12);
  v40 = *(v17 + 1);
  v81 = *v17;
  v82 = v40;
  v41 = *(v17 + 3);
  v83 = *(v17 + 2);
  v84 = v41;
  v42 = v108;
  *v17 = v107;
  *(v17 + 1) = v42;
  v43 = v109;
  v44 = v110;
  v45 = v112[0];
  v46 = *&v112[1];
  *(v17 + 4) = v111;
  *(v17 + 5) = v45;
  *(v17 + 2) = v43;
  *(v17 + 3) = v44;
  *(v17 + 12) = v46;
  *(v17 + 13) = v38;
  *(v17 + 14) = v37;
  sub_12E1C(&v81, &unk_E02CB0);

  v47 = 1;
LABEL_40:
  sub_3967A8(a1, v47);
  return sub_39EE28(a1);
}

uint64_t sub_39EE28(_BYTE *a1)
{
  v3 = sub_AB35C0();
  __chkstk_darwin(v3 - 8);
  v5 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB9250();
  __chkstk_darwin(v6 - 8);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF43E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v86 - v10;
  if (([v1 isEditing] & 1) != 0 || *(v1 + qword_E01D30) == 1)
  {
    v12 = qword_E01D40;
  }

  else
  {
    v12 = *&stru_298.segname[(swift_isaMask & *v1) + 8];
  }

  v13 = v1 + v12;
  swift_beginAccess();
  v14 = *(v13 + 7);
  v142 = *(v13 + 6);
  v143 = v14;
  v144 = v13[128];
  v15 = *(v13 + 3);
  v138 = *(v13 + 2);
  v139 = v15;
  v16 = *(v13 + 5);
  v140 = *(v13 + 4);
  v141 = v16;
  v17 = *(v13 + 1);
  v136 = *v13;
  v137 = v17;
  v104 = v142;
  v105 = v143;
  v106 = v144;
  v100 = v138;
  v101 = v139;
  v102 = v140;
  v103 = v16;
  v98 = v136;
  v99 = v17;
  result = sub_11D03C(&v98);
  if (result != 1)
  {
    v89 = v8;
    v90 = v5;
    v133 = v104;
    v134 = v105;
    v135 = v106;
    v129 = v100;
    v130 = v101;
    v131 = v102;
    v132 = v103;
    v127 = v98;
    v128 = v99;
    v96[6] = v142;
    v96[7] = v143;
    v97 = v144;
    v96[2] = v138;
    v96[3] = v139;
    v96[4] = v140;
    v96[5] = v141;
    v96[0] = v136;
    v96[1] = v137;
    sub_2E2538(v96, v95);
    v19 = sub_D1FC0();
    if (v20)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0;
    }

    v92 = a1;
    v22 = *&a1[OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView];
    if (v20)
    {
      v23 = v20;
    }

    else
    {
      v23 = 0xE000000000000000;
    }

    v93 = v22;
    v88 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField;
    v24 = *&v22[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField];
    v25 = &v24[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text];
    v26 = *&v24[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text];
    v27 = *&v24[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8];
    v28 = v24[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16];
    if (v28 || (v21 != v26 || v27 != v23) && (sub_ABB3C0() & 1) == 0)
    {
      *v25 = v21;
      *(v25 + 1) = v23;
      v25[16] = 0;
      v29 = v24;

      sub_2372F0(v26, v27, v28);
      sub_2366F4();
    }

    v30 = v93;
    sub_2A2D6C();
    v31 = sub_D1560();
    if (v32)
    {
      v33 = v31;
    }

    else
    {
      v33 = 0;
    }

    v34 = v92;
    v35 = &v92[OBJC_IVAR____TtC16MusicApplication12DetailHeader_actionText];
    if (v32)
    {
      v36 = v32;
    }

    else
    {
      v36 = 0xE000000000000000;
    }

    *v35 = v33;
    v35[1] = v36;

    v37 = *&v30[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionButton];

    v38 = v37;
    v39 = sub_AB9260();

    [v38 setTitle:v39 forState:0];

    sub_2A2D6C();
    sub_D16B0();
    v40 = String.trim()();
    sub_2A3A10(v40._countAndFlagsBits, v40._object);

    sub_2A1A4C();
    sub_2A2D6C();

    v41 = sub_D1780();
    if (v41 == 2)
    {
      v41 = sub_D1854();
    }

    [*(*&v30[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_visibilitySwitch] + OBJC_IVAR____TtCC16MusicApplication12DetailHeader37PlaylistVisibilitySwitchContainerView_switchButton) setOn:v41 & 1];
    v42 = *(&v101 + 1);
    if (*(&v101 + 1))
    {
      v43 = MPModelPropertyPlaylistType;
      v44 = *(&v101 + 1);
      if ([v44 hasLoadedValueForKey:v43])
      {
        v45 = [v44 type];

        if (v45 == &dword_8)
        {
          goto LABEL_33;
        }
      }

      else
      {
      }
    }

    sub_D18F4(v11);
    v46 = sub_AB2DC0();
    v47 = (*(*(v46 - 8) + 48))(v11, 1, v46);
    sub_12E1C(v11, &qword_DF43E0);
    if (v47 != 1 && v42)
    {
      sub_1506B4();
    }

LABEL_33:
    v91 = v42;
    v48 = objc_allocWithZone(NSAttributedString);
    v49 = sub_AB9260();
    v50 = [v48 initWithString:v49];

    v51 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_detailLabel;
    [*&v30[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_detailLabel] setAttributedText:v50];
    v52 = *&v30[v51];
    if (v50)
    {
      v53 = v50;
      v54 = [v53 accessibilityLabel];
      if (v54)
      {
        v55 = v54;
        sub_AB92A0();

        v56 = sub_AB9260();

        goto LABEL_38;
      }
    }

    v56 = 0;
LABEL_38:
    [v52 setAccessibilityLabel:v56];

    sub_2A2D6C();
    v57 = *&v34[OBJC_IVAR____TtC16MusicApplication12DetailHeader_artworkComponent];
    if (v91)
    {
      v58 = MPModelPropertyPlaylistType;
      v59 = v91;
      if ([v59 hasLoadedValueForKey:v58])
      {
        v60 = [v59 type];
      }

      else
      {
        v60 = 0;
      }
    }

    else
    {
      v60 = 0;
    }

    static Artwork.Placeholder.playlist(ofType:)(v60, &v107);
    Artwork.Placeholder.withSolidBackgroundColor()(&v110);
    v126 = v107;
    sub_12E1C(&v126, &unk_DFDE40);
    v125 = *(&v107 + 1);
    sub_12E1C(&v125, &unk_DFDE40);
    v124 = v108;
    sub_12E1C(&v124, &unk_E00030);

    Artwork.Placeholder.withScaleFactor(_:)(v113, 0.46);
    v123 = v110.n128_u64[0];
    sub_12E1C(&v123, &unk_DFDE40);
    v122 = v110.n128_u64[1];
    sub_12E1C(&v122, &unk_DFDE40);
    v121 = v111;
    sub_12E1C(&v121, &unk_E00030);

    v61 = [objc_opt_self() quaternaryLabelColor];
    Artwork.Placeholder.withTint(_:)(v61, v114);
    v63 = v114[0];
    v62 = v114[1];
    v65 = v114[2];
    v64 = v114[3];
    v66 = v114[5];
    v87 = v114[4];

    v120 = v113[0];
    sub_12E1C(&v120, &unk_DFDE40);
    v119 = v113[1];
    sub_12E1C(&v119, &unk_DFDE40);
    v118 = v113[2];
    sub_12E1C(&v118, &unk_E00030);

    v67 = *(v57 + 168);
    v95[0] = *(v57 + 152);
    v95[1] = v67;
    v95[2] = *(v57 + 184);
    v116 = v62;
    v117 = v63;
    v115 = v65;
    *(v57 + 152) = v63;
    *(v57 + 160) = v62;
    *(v57 + 168) = v65;
    *(v57 + 176) = v64;
    *(v57 + 184) = v87;
    *(v57 + 192) = v66;
    v68 = v64;
    sub_15F84(&v117, &v94, &unk_DFDE40);
    sub_15F84(&v116, &v94, &unk_DFDE40);
    sub_15F84(&v115, &v94, &unk_E00030);
    sub_75948(v95);
    sub_12E1C(v95, &unk_DF8690);
    sub_12E1C(&v117, &unk_DFDE40);
    sub_12E1C(&v116, &unk_DFDE40);
    sub_12E1C(&v115, &unk_E00030);

    sub_AB91E0();
    sub_AB3550();
    v69 = sub_AB9320();
    v70 = v93;
    v71 = *&v93[v88];
    v72 = &v71[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_placeholderText];
    *v72 = v69;
    v72[1] = v73;
    v74 = v71;

    sub_236500();

    sub_2A2D6C();
    sub_AB91E0();
    sub_AB3550();
    v75 = sub_AB9320();
    v76 = (*&v70[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel] + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_placeholderText);
    *v76 = v75;
    v76[1] = v77;

    sub_236500();
    sub_2A2D6C();
    v78 = v92;
    if (v91)
    {
      v79 = MPModelPropertyPlaylistTraits;
      v80 = v91;
      if ([v80 hasLoadedValueForKey:v79])
      {
        v81 = MPModelPlaylist.supportsSing.getter();

        if (v81)
        {
          v82 = v78[OBJC_IVAR____TtC16MusicApplication12DetailHeader_supportsShuffle];
          v78[OBJC_IVAR____TtC16MusicApplication12DetailHeader_supportsShuffle] = 0;
          if (v82 == 1)
          {
            sub_29C398();
            [v78 setNeedsLayout];
            [v70 setNeedsLayout];
          }

          v83 = *&v70[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionStackLayoutHelper];
          v84 = 2;
LABEL_54:
          SymbolButton.update(to:)(v84);

          return sub_12E1C(&v136, &unk_DFDD90);
        }
      }

      else
      {
      }
    }

    v85 = v78[OBJC_IVAR____TtC16MusicApplication12DetailHeader_supportsShuffle];
    v78[OBJC_IVAR____TtC16MusicApplication12DetailHeader_supportsShuffle] = 1;
    if ((v85 & 1) == 0)
    {
      sub_29C398();
      [v78 setNeedsLayout];
      [v70 setNeedsLayout];
    }

    v83 = *&v70[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionStackLayoutHelper];
    v84 = 0;
    goto LABEL_54;
  }

  return result;
}

void sub_39F97C(void *a1, uint64_t a2)
{
  v5 = *&stru_298.segname[(swift_isaMask & *v2) + 16];
  v6 = *(v2 + v5);
  if (v6)
  {
    v7 = [v6 request];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for JSContainerDetailModelRequest();
      if (swift_dynamicCastClass() && *(v2 + *(&stru_298.reloff + (swift_isaMask & *v2))) == 1)
      {
        swift_unknownObjectWeakAssign();
      }
    }
  }

  sub_393AE4(a1, a2);
  if (*(v2 + *(&stru_298.reloff + (swift_isaMask & *v2))) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D00);
    inited = swift_initStackObject();
    *(inited + 32) = 0xD000000000000011;
    *(inited + 16) = xmmword_AF85F0;
    *(inited + 40) = 0x8000000000B4ACD0;
    v10 = *(v2 + v5);
    if (v10)
    {
      v11 = [v10 results];
      if (!v11)
      {
        __break(1u);
        return;
      }

      v12 = v11;
      v13 = [v11 totalItemCount];
    }

    else
    {
      v13 = 0;
    }

    *(inited + 72) = &type metadata for Int;
    *(inited + 80) = &off_D191F0;
    *(inited + 48) = v13;
    *(inited + 88) = 0x6E6F697461636F6CLL;
    *(inited + 96) = 0xE800000000000000;
    v22 = 0;
    v23 = 0xE000000000000000;
    if (a2)
    {
      v14._countAndFlagsBits = 0x656C6666756873;
    }

    else
    {
      v14._countAndFlagsBits = 2036427888;
    }

    if (a2)
    {
      v15 = 0xE700000000000000;
    }

    else
    {
      v15 = 0xE400000000000000;
    }

    v14._object = v15;
    sub_AB94A0(v14);

    v28._countAndFlagsBits = 0x6E6F7474756220;
    v28._object = 0xE700000000000000;
    sub_AB94A0(v28);
    v16 = v22;
    v17 = v23;
    *(inited + 128) = &type metadata for String;
    *(inited + 136) = &off_D19220;
    *(inited + 104) = v16;
    *(inited + 112) = v17;
    v18 = sub_979E0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D08);
    swift_arrayDestroy();
    v19 = sub_AB9260();
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    v26 = sub_57DA0;
    v27 = v20;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_3A598C;
    v25 = &block_descriptor_121;
    v21 = _Block_copy(&v22);

    AnalyticsSendEventLazy();
    _Block_release(v21);
  }
}

void sub_39FCCC(uint64_t a1, unint64_t a2, void (*a3)(void), uint64_t a4)
{
  v7 = a2;
  v9 = sub_12D948(a2);
  if (v9)
  {
    v10 = v9;
    v11 = swift_allocObject();
    v30 = a3;
    v11[2] = a3;
    v11[3] = a4;
    v11[4] = v7;
    v11[5] = a1;
    v11[6] = v4;
    v11[7] = v10;
    if (v10 >> 62)
    {
LABEL_27:
      v12 = sub_ABB060();
    }

    else
    {
      v12 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
    }

    v29 = a1;
    v13 = v4;
    v14 = v13;
    if (v12)
    {
      v26 = v13;
      v27 = v11;
      v28 = v7;
      v4 = 0;
      v11 = (v10 & 0xC000000000000001);
      a1 = 1;
      v7 = &selRef_setSubtitleText_;
      do
      {
        if (v11)
        {
          v15 = sub_3603D0(v4, v10);
        }

        else
        {
          if (v4 >= *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_26;
          }

          v15 = *(v10 + 8 * v4 + 32);
        }

        v16 = v15;
        v17 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v18 = [v15 isLibraryAdded];

        a1 = v18 & a1;
        ++v4;
      }

      while (v17 != v12);
      v7 = v28;
      v14 = v26;
      if (a1)
      {
        goto LABEL_14;
      }

      memset(v33, 0, sizeof(v33));
      v34 = 0;
      v35 = xmmword_AF7710;
      PresentationSource.init(viewController:position:)(v26, v33, v32);

      static CloudLibrary.presentCloudLibraryEnablerIfNeeded(context:presentationSource:style:cloudLibraryEnabledCompletion:)(2u, v32, 0, sub_3A7B3C, v27);

      sub_1611C(v32);
    }

    else
    {
LABEL_14:
      sub_3A0084(1, v30, a4, v7, v29, v14, v10);
    }
  }

  else
  {
    a3();
    if (qword_DE6BA8 != -1)
    {
      swift_once();
    }

    v19 = sub_AB4BC0();
    __swift_project_value_buffer(v19, static Logger.mediaPicker);

    oslog = sub_AB4BA0();
    v20 = sub_AB9F30();

    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32[0] = v22;
      *v21 = 136446210;
      sub_13C80(0, &qword_DEDE20);
      v23 = sub_AB9770();
      v25 = sub_425E68(v23, v24, v32);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_0, oslog, v20, "PlaylistDetailViewController: mediaPickerNavigationController(_:items:completion:) returned without adding items to playlist [items was not a collection of MPModelSongs] items=%{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
    }

    else
    {
    }
  }
}

void sub_3A0084(char a1, void (*a2)(void), uint64_t a3, uint64_t a4, void *a5, void *a6, unint64_t a7)
{
  v110 = a7;
  v112 = a6;
  v11 = sub_AB35C0();
  __chkstk_darwin(v11 - 8);
  v13 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_AB9250();
  __chkstk_darwin(v14 - 8);
  v16 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
LABEL_7:
    (a2)(0);
    if (qword_DE6BA8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_97;
  }

  v100 = v16;
  type metadata accessor for MediaPickerNavigationController();
  v106 = swift_dynamicCastClass();
  if (!v106)
  {
    a2();
    return;
  }

  v94 = v13;
  v97 = a2;
  v98 = a3;
  v107 = a5;
  v123 = _swiftEmptyArrayStorage;
  a2 = &swift_isaMask;
  v17 = *(*(v112 + *(&stru_248.reloff + (swift_isaMask & *v112))) + qword_E70B88);
  if (v17)
  {
    v18 = v107;
    v19 = [v17 results];
    if (!v19)
    {
LABEL_103:
      __break(1u);
      return;
    }

    v20 = v19;
    v21 = swift_allocObject();
    *(v21 + 16) = &v123;
    v22 = swift_allocObject();
    v95 = sub_3A7BE0;
    *(v22 + 16) = sub_3A7BE0;
    *(v22 + 24) = v21;
    v96 = v21;
    v120 = sub_15AB68;
    v121 = v22;
    aBlock = _NSConcreteStackBlock;
    v117 = 1107296256;
    v118 = sub_48D4FC;
    v119 = &block_descriptor_411;
    v23 = _Block_copy(&aBlock);

    [v20 enumerateItemsUsingBlock:v23];
    _Block_release(v23);
    LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

    if (v23)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

  else
  {
    v32 = v107;
    v95 = 0;
    v96 = 0;
  }

  v122 = _swiftEmptyArrayStorage;
  v99 = v110 >> 62;
  if (v110 >> 62)
  {
    v33 = sub_ABB060();
  }

  else
  {
    v33 = *(&dword_10 + (v110 & 0xFFFFFFFFFFFFFF8));
  }

  v34 = v107;
  v35 = _swiftEmptyArrayStorage;
  if (v33)
  {
    v111 = qword_E01DA0;
    v36 = v110;
    v109 = v110 & 0xC000000000000001;
    v103 = *&stru_298.segname[(swift_isaMask & *v112) + 16];
    v102 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedItems;
    swift_beginAccess();
    v37 = 0;
    v105 = v36 & 0xFFFFFFFFFFFFFF8;
    v104 = v36 + 32;
    v101 = &v118;
    v108 = v33;
    while (1)
    {
      if (v109)
      {
        v38 = sub_3603D0(v37, v110);
      }

      else
      {
        if (v37 >= *(v105 + 16))
        {
          goto LABEL_95;
        }

        v38 = *(v104 + 8 * v37);
      }

      v39 = v38;
      v40 = __OFADD__(v37, 1);
      v41 = (v37 + 1);
      if (v40)
      {
        goto LABEL_94;
      }

      v113 = v35;
      v114 = v41;
      if (*(v112 + v111))
      {
        v42 = *(v112 + v111);
        goto LABEL_33;
      }

      v43 = *(v112 + v103);
      if (v43)
      {
        break;
      }

LABEL_45:
      v57 = v123;
      if (v123 >> 62)
      {
        v58 = sub_ABB060();
      }

      else
      {
        v58 = *(&dword_10 + (v123 & 0xFFFFFFFFFFFFFF8));
      }

      v59 = 0;
      while (v58 != v59)
      {
        if ((v57 & 0xC000000000000001) != 0)
        {
          v60 = sub_360310(v59, v57);
        }

        else
        {
          if (v59 >= *(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_91;
          }

          v60 = *(v57 + 8 * v59 + 32);
        }

        v61 = v60;
        if (__OFADD__(v59, 1))
        {
          goto LABEL_90;
        }

        v62 = [v39 identifiers];
        v63 = [v61 intersectsSet:v62];

        ++v59;
        if (v63)
        {
          goto LABEL_19;
        }
      }

      v64 = [v39 identifiers];
      v65 = *&v106[v102];
      if (v65 >> 62)
      {
        v66 = sub_ABB060();
      }

      else
      {
        v66 = *(&dword_10 + (v65 & 0xFFFFFFFFFFFFFF8));
      }

      v67 = 0;
      while (v66 != v67)
      {
        if ((v65 & 0xC000000000000001) != 0)
        {
          v68 = sub_3602FC(v67, v65);
        }

        else
        {
          if (v67 >= *(&dword_10 + (v65 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_93;
          }

          v68 = *(v65 + 8 * v67 + 32);
        }

        v69 = v68;
        if (__OFADD__(v67, 1))
        {
          goto LABEL_92;
        }

        v70 = [v68 identifiers];
        v71 = [v70 intersectsSet:v64];

        ++v67;
        if (v71)
        {

          v34 = v107;
          goto LABEL_20;
        }
      }

      v72 = v39;
      sub_AB9730();
      v34 = v107;
      if (*(&dword_10 + (v122 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v122 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();

      v35 = v122;
LABEL_21:
      v37 = v114;
      if (v114 == v108)
      {
        goto LABEL_73;
      }
    }

    v115 = _swiftEmptyArrayStorage;
    v44 = v43;
    v45 = [v44 results];
    if (!v45)
    {
      goto LABEL_102;
    }

    v46 = v45;
    v47 = swift_allocObject();
    *(v47 + 16) = &v115;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_3A7BB0;
    *(v48 + 24) = v47;
    v120 = sub_3A7BB8;
    v121 = v48;
    aBlock = _NSConcreteStackBlock;
    v117 = 1107296256;
    v118 = sub_3A37D0;
    v119 = &block_descriptor_401;
    v49 = _Block_copy(&aBlock);

    [v46 enumerateItemsUsingBlock:v49];
    _Block_release(v49);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      *(v112 + v111) = v115;

      v42 = v115;

LABEL_33:
      if (v42 >> 62)
      {
        v51 = sub_ABB060();
      }

      else
      {
        v51 = *(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8));
      }

      v52 = 0;
      while (1)
      {
        if (v51 == v52)
        {

          goto LABEL_45;
        }

        if ((v42 & 0xC000000000000001) != 0)
        {
          v53 = sub_360310(v52, v42);
        }

        else
        {
          if (v52 >= *(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_89;
          }

          v53 = *(v42 + 8 * v52 + 32);
        }

        v54 = v53;
        if (__OFADD__(v52, 1))
        {
          break;
        }

        v55 = [v39 identifiers];
        v56 = [v54 intersectsSet:v55];

        ++v52;
        if (v56)
        {
LABEL_19:

LABEL_20:
          v35 = v113;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
    }

    __break(1u);
LABEL_97:
    swift_once();
LABEL_8:
    v24 = sub_AB4BC0();
    __swift_project_value_buffer(v24, static Logger.mediaPicker);

    v114 = sub_AB4BA0();
    v25 = sub_AB9F30();

    if (os_log_type_enabled(v114, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock = v27;
      *v26 = 136446210;
      sub_13C80(0, &qword_DEDE20);
      v28 = sub_AB9770();
      v30 = sub_425E68(v28, v29, &aBlock);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_0, v114, v25, "PlaylistDetailViewController: mediaPickerNavigationController(_:items:completion:) returned without adding items to playlist [isCloudLibraryRequirementSatisfied was false] items=%{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
    }

    else
    {
      v31 = v114;
    }

    return;
  }

LABEL_73:
  if (v99)
  {
    v73 = sub_ABB060();
  }

  else
  {
    v73 = *(&dword_10 + (v110 & 0xFFFFFFFFFFFFFF8));
  }

  if (v35 >> 62)
  {
    v92 = v73;
    v93 = sub_ABB060();
    v75 = v92 - v93;
    if (!__OFSUB__(v92, v93))
    {
      goto LABEL_78;
    }

    goto LABEL_101;
  }

  v74 = *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8));
  v75 = v73 - v74;
  if (__OFSUB__(v73, v74))
  {
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

LABEL_78:
  if (v75 <= 0)
  {

    if (v99)
    {
      sub_13C80(0, &qword_DEDE20);

      v77 = sub_ABAFF0();
    }

    else
    {
      v77 = v110;

      sub_ABB3E0();
      sub_13C80(0, &qword_DEDE20);
    }

    (v97)(v77);
  }

  else
  {
    v113 = v35;
    if (v75 == 1)
    {
      v76 = v98;
      sub_AB91E0();
      sub_AB3550();
    }

    else
    {
      sub_AB91E0();
      sub_AB3550();
      v76 = v98;
    }

    sub_AB9320();
    v78 = sub_AB9260();

    v79 = [objc_opt_self() alertControllerWithTitle:v78 message:0 preferredStyle:1];

    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v80 = swift_allocObject();
    v81 = v97;
    v80[2] = v97;
    v80[3] = v76;
    v80[4] = v110;

    v82 = sub_AB9260();

    v120 = sub_3A7B50;
    v121 = v80;
    aBlock = _NSConcreteStackBlock;
    v117 = 1107296256;
    v118 = sub_1546C;
    v119 = &block_descriptor_386;
    v83 = _Block_copy(&aBlock);

    v84 = objc_opt_self();
    v85 = [v84 actionWithTitle:v82 style:0 handler:v83];
    _Block_release(v83);

    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v86 = swift_allocObject();
    v87 = v76;
    v88 = v86;
    v86[2] = v81;
    v86[3] = v87;
    v86[4] = v113;

    v89 = sub_AB9260();

    v120 = sub_3A80F8;
    v121 = v88;
    aBlock = _NSConcreteStackBlock;
    v117 = 1107296256;
    v118 = sub_1546C;
    v119 = &block_descriptor_392_0;
    v90 = _Block_copy(&aBlock);

    v91 = [v84 actionWithTitle:v89 style:0 handler:v90];
    _Block_release(v90);

    [v79 addAction:v85];
    [v79 addAction:v91];
    [v79 setPreferredAction:v91];
    [v106 presentViewController:v79 animated:1 completion:0];
  }

  sub_17654(v95);
}

void sub_3A10B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5 && (v6 = [v5 song]) != 0 && (v7 = v6, v8 = objc_msgSend(v6, "identifiers"), v7, v8))
  {
    v9 = v8;
    sub_AB9730();
    if (*(&dword_10 + (*a4 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*a4 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_3A11D0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, unint64_t a4)
{
  if (a4 >> 62)
  {
    sub_13C80(0, &qword_DEDE20);

    v8 = sub_ABAFF0();

    v6 = v8;
  }

  else
  {

    sub_ABB3E0();
    sub_13C80(0, &qword_DEDE20);
    v6 = a4;
  }

  a2(v6);
}

uint64_t sub_3A12B0(void *a1)
{
  v17 = a1;
  v18 = 0u;
  v19 = 0u;
  v20 = 1;
  PresentationSource.Position.init(source:permittedArrowDirections:)(&v17, 15, v9);
  v13[0] = v9[0];
  v13[1] = v9[1];
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = a1;
  v5 = v1;
  if (sub_3A18A4())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_3A80A8;
    *(v6 + 24) = v3;

    sub_3A49F4(v13, sub_3A80E0, v6);
  }

  else
  {
    v7 = [v5 isEditing];
    *(v5 + qword_E01D20) = 1;
    [v5 setEditing:v7 ^ 1 animated:1];
  }

  return sub_3A7A90(v9);
}

void sub_3A13FC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_3A12B0(v4);
}

uint64_t sub_3A1464(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 presentedViewController];
  type metadata accessor for MediaPickerNavigationController();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedItems;
    v7 = v5;
    swift_beginAccess();
    v8 = *(v7 + v6);
    if (v8 >> 62)
    {
      v9 = sub_ABB060();
    }

    else
    {
      v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
    }

    if (v9 > 0)
    {
      return 0;
    }
  }

  else
  {
  }

  return 1;
}

uint64_t sub_3A1538(void *a1)
{
  v2 = [a1 presentedViewController];
  type metadata accessor for MediaPickerNavigationController();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_3A6274(v4, sub_3A79AC, v5);
  }

  else
  {

    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    v14 = xmmword_AF7710;
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    v8 = v1;
    if (sub_3A18A4())
    {
      v9 = swift_allocObject();
      *(v9 + 16) = sub_3A7974;
      *(v9 + 24) = v7;

      sub_3A49F4(&v11, sub_3A7978, v9);
    }

    else
    {
      v10 = [v8 isEditing];
      *(v8 + qword_E01D20) = 1;
      [v8 setEditing:v10 ^ 1 animated:1];
    }
  }
}

void sub_3A16FC(char a1)
{
  if ((a1 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      [Strong dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_3A1768(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_3A1538(v4);
}

void sub_3A17D0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v7 = [v4 presentedViewController];
  type metadata accessor for MediaPickerNavigationController();
  if (swift_dynamicCastClass())
  {

    v4 = v5;
  }

  else
  {

    v6 = [v5 isEditing];
    *(v5 + qword_E01D20) = 1;
    [v5 setEditing:v6 ^ 1 animated:1];
    v7 = v5;
  }
}

uint64_t sub_3A18A4()
{
  v1 = v0 + *&stru_298.segname[(swift_isaMask & *v0) + 8];
  swift_beginAccess();
  v2 = *(v1 + 7);
  v49 = *(v1 + 6);
  v50 = v2;
  v51 = v1[128];
  v3 = *(v1 + 3);
  v45 = *(v1 + 2);
  v46 = v3;
  v4 = *(v1 + 4);
  v48 = *(v1 + 5);
  v47 = v4;
  v6 = *v1;
  v5 = *(v1 + 1);
  v7 = v0 + qword_E01D40;
  v44 = v5;
  v43 = v6;
  swift_beginAccess();
  v8 = *(v7 + 5);
  v9 = *(v7 + 7);
  v57 = *(v7 + 6);
  v58 = v9;
  v10 = *(v7 + 1);
  v11 = *(v7 + 3);
  v53 = *(v7 + 2);
  v54 = v11;
  v13 = *(v7 + 3);
  v12 = *(v7 + 4);
  v14 = v12;
  v56 = *(v7 + 5);
  v55 = v12;
  v15 = *v7;
  v16 = *v7;
  v52[1] = *(v7 + 1);
  v52[0] = v15;
  __src[6] = v49;
  __src[7] = v50;
  __src[2] = v45;
  __src[3] = v46;
  __src[4] = v47;
  __src[5] = v48;
  __src[0] = v43;
  __src[1] = v44;
  *(&__src[13] + 8) = v8;
  *(&__src[14] + 8) = v57;
  *(&__src[15] + 8) = *(v7 + 7);
  *(&__src[9] + 8) = v10;
  *(&__src[10] + 8) = v53;
  *(&__src[11] + 8) = v13;
  *(&__src[12] + 8) = v14;
  *(&__src[8] + 8) = v16;
  v60[6] = v49;
  v60[7] = v50;
  v60[2] = v45;
  v60[3] = v46;
  v60[4] = v47;
  v60[5] = v48;
  v59 = v7[128];
  LOBYTE(__src[8]) = v51;
  BYTE8(__src[16]) = v7[128];
  v61 = v51;
  v60[0] = v43;
  v60[1] = v44;
  if (sub_11D03C(v60) == 1)
  {
    __dst[6] = *(&__src[14] + 8);
    __dst[7] = *(&__src[15] + 8);
    LOBYTE(__dst[8]) = BYTE8(__src[16]);
    __dst[2] = *(&__src[10] + 8);
    __dst[3] = *(&__src[11] + 8);
    __dst[4] = *(&__src[12] + 8);
    __dst[5] = *(&__src[13] + 8);
    __dst[0] = *(&__src[8] + 8);
    __dst[1] = *(&__src[9] + 8);
    if (sub_11D03C(__dst) == 1)
    {
      v40 = __src[6];
      v41 = __src[7];
      v42 = __src[8];
      v36 = __src[2];
      v37 = __src[3];
      v39 = __src[5];
      v38 = __src[4];
      v35 = __src[1];
      v34 = __src[0];
      sub_15F84(&v43, &v27, &unk_DFDD90);
      sub_15F84(v52, &v27, &unk_DFDD90);
      sub_12E1C(&v34, &unk_DFDD90);
      v17 = 1;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  *&v31[32] = *(&__src[14] + 8);
  *&v31[48] = *(&__src[15] + 8);
  v31[64] = BYTE8(__src[16]);
  v29 = *(&__src[10] + 8);
  v30 = *(&__src[11] + 8);
  *v31 = *(&__src[12] + 8);
  *&v31[16] = *(&__src[13] + 8);
  v27 = *(&__src[8] + 8);
  v28 = *(&__src[9] + 8);
  if (sub_11D03C(&v27) == 1)
  {
LABEL_5:
    memcpy(__dst, __src, 0x109uLL);
    sub_15F84(&v43, &v34, &unk_DFDD90);
    sub_15F84(v52, &v34, &unk_DFDD90);
    sub_12E1C(__dst, &qword_E02CA0);
    v17 = 0;
    goto LABEL_7;
  }

  v23[6] = *(&__src[14] + 8);
  v23[7] = *(&__src[15] + 8);
  v24 = BYTE8(__src[16]);
  v23[2] = *(&__src[10] + 8);
  v23[3] = *(&__src[11] + 8);
  v23[4] = *(&__src[12] + 8);
  v23[5] = *(&__src[13] + 8);
  v23[0] = *(&__src[8] + 8);
  v23[1] = *(&__src[9] + 8);
  __dst[6] = *(&__src[14] + 8);
  __dst[7] = *(&__src[15] + 8);
  LOBYTE(__dst[8]) = BYTE8(__src[16]);
  __dst[2] = *(&__src[10] + 8);
  __dst[3] = *(&__src[11] + 8);
  __dst[4] = *(&__src[12] + 8);
  __dst[5] = *(&__src[13] + 8);
  __dst[0] = *(&__src[8] + 8);
  __dst[1] = *(&__src[9] + 8);
  v40 = __src[6];
  v41 = __src[7];
  v42 = __src[8];
  v36 = __src[2];
  v37 = __src[3];
  v39 = __src[5];
  v38 = __src[4];
  v35 = __src[1];
  v34 = __src[0];
  sub_15F84(&v43, v25, &unk_DFDD90);
  sub_15F84(v52, v25, &unk_DFDD90);
  sub_15F84(&v43, v25, &unk_DFDD90);
  sub_15F84(v52, v25, &unk_DFDD90);
  v17 = sub_D24AC(&v34, __dst);
  sub_12E1C(v52, &unk_DFDD90);
  sub_12E1C(&v43, &unk_DFDD90);
  sub_12E1C(v23, &unk_DFDD90);
  v25[6] = __src[6];
  v25[7] = __src[7];
  v26 = __src[8];
  v25[2] = __src[2];
  v25[3] = __src[3];
  v25[4] = __src[4];
  v25[5] = __src[5];
  v25[0] = __src[0];
  v25[1] = __src[1];
  sub_12E1C(v25, &unk_DFDD90);
LABEL_7:
  v18 = *(v7 + 1);
  v27 = *v7;
  v28 = v18;
  v29 = *(v7 + 2);
  v20 = *(v7 + 6);
  v19 = *(v7 + 7);
  v21 = *(v7 + 8);
  *&v31[8] = *(v7 + 72);
  *&v31[24] = *(v7 + 88);
  *&v31[40] = *(v7 + 104);
  *&v31[49] = *(v7 + 113);
  *&v30 = v20;
  *(&v30 + 1) = v19;
  *v31 = v21;
  if (sub_11D03C(&v27) == 1)
  {
    return *(*(v0 + *(&stru_248.reloff + (swift_isaMask & *v0))) + qword_E70B60);
  }

  if (*(v20 + 16))
  {
    if (v17)
    {
      return *(*(v0 + *(&stru_248.reloff + (swift_isaMask & *v0))) + qword_E70B60);
    }
  }

  else if (v17 & 1 | (v21 == 1))
  {
    return *(*(v0 + *(&stru_248.reloff + (swift_isaMask & *v0))) + qword_E70B60);
  }

  return 1;
}

uint64_t sub_3A1E14()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedRestrictionsMonitor];
  v3 = [v2 allowsDeletion];

  if (v3)
  {
    if (([v1 isEditing] & 1) != 0 || *(v1 + qword_E01D30) == 1)
    {
      v4 = qword_E01D40;
    }

    else
    {
      v4 = *&stru_298.segname[(swift_isaMask & *v1) + 8];
    }

    v6 = v1 + v4;
    swift_beginAccess();
    v7 = *(v6 + 7);
    v56 = *(v6 + 6);
    v57 = v7;
    v58 = v6[128];
    v8 = *(v6 + 3);
    v52 = *(v6 + 2);
    v53 = v8;
    v9 = *(v6 + 5);
    v54 = *(v6 + 4);
    v55 = v9;
    v10 = *(v6 + 1);
    v51[0] = *v6;
    v51[1] = v10;
    v49[6] = v56;
    v49[7] = v57;
    v50 = v58;
    v49[2] = v52;
    v49[3] = v53;
    v49[4] = v54;
    v49[5] = v9;
    v49[0] = v51[0];
    v49[1] = v10;
    if (sub_11D03C(v49) != 1)
    {
      v11 = *(&v53 + 1);
      if (*(&v53 + 1))
      {
        v12 = MPModelPropertyPlaylistUserEditableComponents;
        sub_15F84(v51, v41, &unk_DFDD90);
        v13 = v11;
        if ([v13 hasLoadedValueForKey:v12])
        {
          v14 = [v13 userEditableComponents];

          sub_12E1C(v51, &unk_DFDD90);
          if ((v14 & 2) != 0)
          {
            v15 = [v1 traitCollection];
            v16 = UITraitCollection.isMediaPicker.getter();

            if (!v16)
            {
              v17 = sub_6BF68(0, 1, 1, _swiftEmptyArrayStorage);
              v18 = *(v17 + 2);
              v19 = *(v17 + 3);
              v20 = v18 + 1;
              if (v18 >= v19 >> 1)
              {
                v35 = v17;
                v36 = *(v17 + 2);
                v37 = sub_6BF68((v19 > 1), v18 + 1, 1, v35);
                v18 = v36;
                v17 = v37;
              }

              *(v17 + 2) = v20;
              v17[v18 + 32] = 0;
              goto LABEL_19;
            }
          }
        }

        else
        {

          sub_12E1C(v51, &unk_DFDD90);
        }
      }
    }

    v17 = _swiftEmptyArrayStorage;
LABEL_19:
    if (([v1 isEditing] & 1) != 0 || *(v1 + qword_E01D30) == 1)
    {
      v21 = qword_E01D40;
    }

    else
    {
      v21 = *&stru_298.segname[(swift_isaMask & *v1) + 8];
    }

    v22 = v1 + v21;
    swift_beginAccess();
    v23 = *(v22 + 7);
    v46 = *(v22 + 6);
    v47 = v23;
    v48 = v22[128];
    v24 = *(v22 + 3);
    v42 = *(v22 + 2);
    v43 = v24;
    v25 = *(v22 + 5);
    v44 = *(v22 + 4);
    v45 = v25;
    v26 = *(v22 + 1);
    v41[0] = *v22;
    v41[1] = v26;
    v39[6] = v46;
    v39[7] = v47;
    v40 = v48;
    v39[2] = v42;
    v39[3] = v43;
    v39[4] = v44;
    v39[5] = v25;
    v39[0] = v41[0];
    v39[1] = v26;
    if (sub_11D03C(v39) != 1)
    {
      v27 = *(&v43 + 1);
      if (*(&v43 + 1))
      {
        v28 = MPModelPropertyPlaylistUserEditableComponents;
        sub_15F84(v41, v38, &unk_DFDD90);
        v29 = v27;
        if ([v29 hasLoadedValueForKey:v28])
        {
          v30 = [v29 userEditableComponents];

          sub_12E1C(v41, &unk_DFDD90);
          if (v30)
          {
            v31 = [v1 traitCollection];
            v32 = UITraitCollection.isMediaPicker.getter();

            if (!v32)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v17 = sub_6BF68(0, *(v17 + 2) + 1, 1, v17);
              }

              v34 = *(v17 + 2);
              v33 = *(v17 + 3);
              if (v34 >= v33 >> 1)
              {
                v17 = sub_6BF68((v33 > 1), v34 + 1, 1, v17);
              }

              *(v17 + 2) = v34 + 1;
              v17[v34 + 32] = 1;
            }
          }
        }

        else
        {

          sub_12E1C(v41, &unk_DFDD90);
        }
      }
    }

    *(v1 + qword_E01D38) = v17;
  }

  *(v1 + qword_E01D38) = _swiftEmptyArrayStorage;
}

uint64_t sub_3A234C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  sub_AB9940();
  v5[8] = sub_AB9930();
  v7 = sub_AB98B0();
  v5[9] = v7;
  v5[10] = v6;

  return _swift_task_switch(sub_3A23E4, v7, v6);
}

uint64_t sub_3A23E4()
{

  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_3A2498;
  v3 = v0[6];
  v2 = v0[7];

  return sub_3A66A8(v3, v2);
}

uint64_t sub_3A2498()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_3A26A8;
  }

  else
  {
    v5 = sub_3A25F0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_3A25F0()
{
  if ([*(v0 + 48) isEditing])
  {
    *(*(*(v0 + 48) + *(&stru_248.reloff + (swift_isaMask & **(v0 + 48)))) + qword_E70B60) = 1;
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_3A26A8()
{
  v12 = v0;
  if (qword_DE67E0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E70DC0);
  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F40();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = sub_ABB520();
    v8 = sub_425E68(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "error when adding song %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_3A286C(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  sub_AB9940();
  v2[8] = sub_AB9930();
  v4 = sub_AB98B0();
  v2[9] = v4;
  v2[10] = v3;

  return _swift_task_switch(sub_3A2904, v4, v3);
}

uint64_t sub_3A2904()
{
  v1 = v0[7];
  if (v1 >> 62)
  {
    v2 = sub_ABB060();
    v0[11] = v2;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    v0[11] = v2;
    if (v2)
    {
LABEL_3:
      if (v2 < 1)
      {
        __break(1u);
      }

      else
      {
        v3 = v0[7];
        v0[12] = 0;
        if ((v3 & 0xC000000000000001) != 0)
        {
          v4 = sub_3603D0(0, v3);
        }

        else
        {
          v4 = *(v3 + 32);
        }

        v5 = v4;
        v0[13] = v4;
        v6 = swift_task_alloc();
        v0[14] = v6;
        *v6 = v0;
        v6[1] = sub_3A2A48;
        v2 = v5;
      }

      return MusicLibraryPlaylistEditViewModel.append(_:)(v2);
    }
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_3A2A48()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_3A2CA0;
  }

  else
  {
    v5 = sub_3A2B84;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_3A2B84()
{
  v1 = *(v0 + 96) + 1;
  if (v1 == *(v0 + 88))
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 96) = v1;
    v4 = *(v0 + 56);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = sub_3603D0(v1, v4);
    }

    else
    {
      v5 = *(v4 + 8 * v1 + 32);
    }

    v6 = v5;
    *(v0 + 104) = v5;
    v7 = swift_task_alloc();
    *(v0 + 112) = v7;
    *v7 = v0;
    v7[1] = sub_3A2A48;

    return MusicLibraryPlaylistEditViewModel.append(_:)(v6);
  }
}

uint64_t sub_3A2CA0()
{
  v19 = v0;
  if (qword_DE67E0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E70DC0);
  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F40();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[13];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_ABB520();
    v10 = sub_425E68(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v2, v3, "error when adding song %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  v11 = v0[12] + 1;
  if (v11 == v0[11])
  {

    v12 = v0[1];

    return v12();
  }

  else
  {
    v0[12] = v11;
    v14 = v0[7];
    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = sub_3603D0(v11, v14);
    }

    else
    {
      v15 = *(v14 + 8 * v11 + 32);
    }

    v16 = v15;
    v0[13] = v15;
    v17 = swift_task_alloc();
    v0[14] = v17;
    *v17 = v0;
    v17[1] = sub_3A2A48;

    return MusicLibraryPlaylistEditViewModel.append(_:)(v16);
  }
}

void sub_3A2F2C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(type metadata accessor for MediaPickerNavigationController()) init];
  v3 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration;
  [*&v2[OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration] setSupportsUnavailableContent:1];
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerDelegate];
  swift_beginAccess();
  *(v4 + 1) = &off_D0E830;
  swift_unknownObjectWeakAssign();
  v5 = v2;
  [v5 setModalPresentationStyle:1];
  if (([v0 isEditing] & 1) != 0 || v0[qword_E01D30] == 1)
  {
    v6 = qword_E01D40;
  }

  else
  {
    v6 = *&stru_298.segname[(swift_isaMask & *v0) + 8];
  }

  v7 = &v0[v6];
  swift_beginAccess();
  v8 = *(v7 + 7);
  v66 = *(v7 + 6);
  v67 = v8;
  v68 = v7[128];
  v9 = *(v7 + 3);
  v62 = *(v7 + 2);
  v63 = v9;
  v10 = *(v7 + 5);
  v64 = *(v7 + 4);
  v65 = v10;
  v11 = *(v7 + 1);
  v60 = *v7;
  v61 = v11;
  v49[6] = v66;
  v49[7] = v67;
  v50 = v68;
  v49[2] = v62;
  v49[3] = v63;
  v49[4] = v64;
  v49[5] = v10;
  v49[0] = v60;
  v49[1] = v11;
  if (sub_11D03C(v49) == 1 || (v47[6] = v66, v47[7] = v67, v47[2] = v62, v47[3] = v63, v47[4] = v64, v47[5] = v65, v47[0] = v60, v47[1] = v61, v57 = v66, v58 = v67, v53 = v62, v54 = v63, v55 = v64, v56 = v65, v48 = v68, v59 = v68, v51 = v60, v52 = v61, sub_2E2538(v47, v46), v12 = sub_D1FC0(), v14 = v13, sub_12E1C(&v60, &unk_DFDD90), !v14))
  {
    v20 = &v5[OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_prompt];
    v21 = *&v5[OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_prompt];
    v22 = *&v5[OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_prompt + 8];
    *v20 = 0;
    *(v20 + 1) = 0;
    if (!v22)
    {
      goto LABEL_13;
    }

    sub_422054();
    v18 = v21;
    v19 = v22;
  }

  else
  {
    v15 = &v5[OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_prompt];
    v16 = *&v5[OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_prompt];
    v17 = *&v5[OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_prompt + 8];
    *v15 = v12;
    v15[1] = v14;
    if (v17 < 2)
    {
      goto LABEL_8;
    }

    if (v12 == v16 && v14 == v17)
    {
      v18 = v12;
      v19 = v14;
      goto LABEL_12;
    }

    if ((sub_ABB3C0() & 1) == 0)
    {
LABEL_8:
      sub_422054();
    }

    v18 = v16;
    v19 = v17;
  }

LABEL_12:
  sub_3A7960(v18, v19);
LABEL_13:
  v23 = [v5 presentationController];
  if (v23)
  {
    v24 = v23;
    [v23 setDelegate:v1];
  }

  [v1 presentViewController:v5 animated:1 completion:0];
  v25 = *&v2[v3];
  v26 = [v5 presentationController];

  if (v26)
  {
    v44 = v26;
    v27 = objc_opt_self();
    v28 = [v27 traitCollectionWithHorizontalSizeClass:1];
    sub_13C80(0, &qword_E00AB0);
    v45 = v25;
    v29 = v25;
    v30 = v28;
    v31 = UITraitCollection.init(mediaPickerConfiguration:)(v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_AF7C50;
    *(v32 + 32) = v30;
    *(v32 + 40) = v31;
    v33 = v31;
    v34 = v30;
    v35 = v33;
    isa = sub_AB9740().super.isa;
    v37 = [v27 traitCollectionWithTraitsFromCollections:isa];

    if (*&v1[qword_E01D58])
    {
      v38 = UITraitCollection.init(mediaPickerLibraryFilter:)(16).super.isa;
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_AF7C50;
      *(v39 + 32) = v37;
      *(v39 + 40) = v38;
      v40 = v38;
      v41 = v37;
      v42 = sub_AB9740().super.isa;
      v37 = [v27 traitCollectionWithTraitsFromCollections:v42];
    }

    v43 = v37;
    [v44 setOverrideTraitCollection:v43];

    v25 = v45;
  }
}

void sub_3A3464(char a1)
{
  v2 = v1;
  if ([v1 isViewLoaded])
  {
    v4 = [v1 traitCollection];
    v5 = UITraitCollection.isMediaPicker.getter();

    if (!v5)
    {
      v6 = [v2 isEditing];
      v7 = [v2 navigationItem];
      v8 = [v2 parentViewController];
      if (v8)
      {
        v9 = v8;
        while (1)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          v10 = v9;
          v11 = [v10 navigationItem];

          v9 = [v10 parentViewController];
          v7 = v11;
          if (!v9)
          {
            goto LABEL_11;
          }
        }
      }

      v11 = v7;
LABEL_11:
      [v11 setHidesBackButton:v6 animated:a1 & 1];
      v12 = [v2 traitCollection];
      sub_3A5A38();
      v14 = v13;

      if (v14)
      {
        sub_13C80(0, &unk_DF12E0);
        v15.super.isa = sub_AB9740().super.isa;
      }

      else
      {
        v15.super.isa = 0;
      }

      [v11 setLeftBarButtonItems:v15.super.isa animated:a1 & 1];

      v16 = [v2 traitCollection];
      v17 = sub_2D3DFC();

      if (v17)
      {
        sub_13C80(0, &unk_DF12E0);
        isa = sub_AB9740().super.isa;
      }

      else
      {
        isa = 0;
      }

      [v11 setRightBarButtonItems:isa animated:a1 & 1];
    }
  }
}

void sub_3A3700(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [a1 anyObject];
  if (v5)
  {
    v7 = v5;
    v6 = [v5 identifiers];
    sub_AB9730();
    if (*(&dword_10 + (*a4 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*a4 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
  }
}

void sub_3A37D0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = sub_AB3820();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 32);
  sub_AB3790();
  v13 = a2;
  v14 = a3;
  v12(v13, v11, a4);

  (*(v9 + 8))(v11, v8);
}

void sub_3A38EC(void *a1)
{
  v1 = [a1 request];
  if (v1)
  {
    v2 = v1;
    [v1 copyWithZone:0];

    sub_ABAB50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E02CC0);
    if (swift_dynamicCast())
    {
      v3 = aBlock[19];
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_AF8820;
      *(inited + 32) = sub_AB92A0();
      *(inited + 40) = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_AF4EC0;
      *(v6 + 32) = sub_AB92A0();
      *(v6 + 40) = v7;
      isa = sub_AB9740().super.isa;
      v9 = objc_opt_self();
      v10 = [v9 propertySetWithProperties:isa];

      *(inited + 48) = v10;
      *(inited + 56) = sub_AB92A0();
      *(inited + 64) = v11;
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_AF4EC0;
      *(v12 + 32) = sub_AB92A0();
      *(v12 + 40) = v13;
      v14 = sub_AB9740().super.isa;
      v15 = [v9 propertySetWithProperties:v14];

      *(inited + 72) = v15;
      *(inited + 80) = sub_AB92A0();
      *(inited + 88) = v16;
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_AF4EC0;
      *(v17 + 32) = sub_AB92A0();
      *(v17 + 40) = v18;
      v19 = sub_AB9740().super.isa;
      v20 = [v9 propertySetWithProperties:v19];

      *(inited + 96) = v20;
      sub_96EA4(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80);
      swift_arrayDestroy();
      v21 = objc_allocWithZone(MPPropertySet);
      v22 = sub_AB9740().super.isa;
      sub_13C80(0, &qword_DEA550);
      v23 = sub_AB8FD0().super.isa;

      v24 = [v21 initWithProperties:v22 relationships:v23];

      v25 = sub_AB9260();
      [v3 setLabel:v25];

      [v3 setItemProperties:v24];
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_3A78C0;
      aBlock[5] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_151E0;
      aBlock[3] = &block_descriptor_331;
      v27 = _Block_copy(aBlock);

      [v3 performWithResponseHandler:v27];
      _Block_release(v27);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_3A3D70(void *a1)
{
  if (!a1)
  {
    return;
  }

  v16 = a1;
  v1 = [v16 results];
  if (!v1)
  {
    __break(1u);
    return;
  }

  v2 = v1;
  v3 = [v1 firstSection];

  if (!v3)
  {
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();
    v4 = [v16 results];
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    if (v4)
    {
      v6 = swift_allocObject();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();
      v8 = v4;

      v9 = swift_allocObject();
      *(v9 + 16) = v6;
      *(v9 + 24) = v5 + 16;
      v10 = swift_allocObject();
      v11 = sub_3A7958;
      *(v10 + 16) = sub_3A7958;
      *(v10 + 24) = v9;
      aBlock[4] = sub_2E34E8;
      aBlock[5] = v10;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B7EB0;
      aBlock[3] = &block_descriptor_348;
      v12 = _Block_copy(aBlock);

      [v8 enumerateItemsInSectionAtIndex:0 usingBlock:v12];
      _Block_release(v12);
      LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

      if (v12)
      {
        __break(1u);
LABEL_8:

        return;
      }
    }

    else
    {
      v11 = 0;
    }

    sub_13C80(0, &qword_DE8ED0);
    v13 = swift_allocObject();
    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v15 + 24) = v5;

    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3A7918, v15);

    sub_17654(v11);
    return;
  }

  swift_unknownObjectRelease();
}

void *sub_3A4124(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, double *a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    *a3 = 1;
    return result;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    return swift_unknownObjectRelease();
  }

  v9 = v8;
  v10 = [v8 type];
  if (v10 == &dword_0 + 3)
  {
    v11 = [v9 movie];
    if (v11)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (v10 == &dword_0 + 2)
  {
    v11 = [v9 tvEpisode];
    if (v11)
    {
      goto LABEL_10;
    }

LABEL_12:
    v15 = *a5 + 0.0;
    goto LABEL_13;
  }

  if (v10 == &dword_0 + 1)
  {
    v11 = [v9 song];
    if (!v11)
    {
      goto LABEL_12;
    }

LABEL_10:
    v12 = v11;
    [v11 duration];
    v14 = v13;

    v15 = v14 + *a5;
LABEL_13:
    *a5 = v15;
  }

  return swift_unknownObjectRelease();
}

void sub_3A4278(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = *(a2 + 16);
    v6 = Double.epsilon.unsafeMutableAddressor();
    v7 = *v6;
    if (*v6 >= v5)
    {
      if (([v4 isEditing] & 1) != 0 || *(v4 + qword_E01D30) == 1)
      {
        v8 = qword_E01D40;
      }

      else
      {
        v8 = *&stru_298.segname[(swift_isaMask & *v4) + 8];
      }

      v10 = v4 + v8;
      swift_beginAccess();
      memmove(&__dst, v10, 0x81uLL);
      v33 = v72;
      v34 = v73;
      v35 = v74;
      v36 = v75;
      v31 = __dst;
      v32 = v71;
      v27 = *&v76[1];
      v28 = *&v76[17];
      v63 = __dst;
      v64 = v71;
      v67 = v74;
      v68 = v75;
      v11 = v76[0];
      v65 = v72;
      v66 = v73;
      *&v69[17] = *&v76[17];
      *&v69[1] = *&v76[1];
      v69[0] = v76[0];
      if (sub_11D03C(&v63) == 1)
      {
        *v61 = v33;
        *&v61[16] = v34;
        *&v61[32] = v35;
        *&v61[48] = v36;
        v59 = v31;
        v60 = v32;
        *&v62[1] = v27;
        v62[0] = v11;
        *&v62[17] = v28;
        sub_15F84(&__dst, &v48, &unk_DFDD90);
        sub_12E1C(&v59, &unk_DFDD90);
LABEL_32:

        return;
      }

      *v61 = v33;
      *&v61[16] = v34;
      *&v61[32] = v35;
      *&v61[48] = v36;
      v59 = v31;
      v60 = v32;
      *&v62[1] = v27;
      v62[0] = v11;
      *&v62[17] = v28;
      sub_15F84(&__dst, &v48, &unk_DFDD90);
      sub_12E1C(&v59, &unk_DFDD90);
      if (v11)
      {
        goto LABEL_32;
      }

      v12 = 0.0;
LABEL_19:
      if (([v4 isEditing] & 1) != 0 || *(v4 + qword_E01D30) == 1)
      {
        v16 = qword_E01D40;
      }

      else
      {
        v16 = *&stru_298.segname[(swift_isaMask & *v4) + 8];
      }

      v17 = v4 + v16;
      swift_beginAccess();
      memmove(&v63, v17, 0x81uLL);
      *v62 = *v69;
      *&v62[16] = *&v69[16];
      v62[32] = v69[32];
      *v61 = v65;
      *&v61[16] = v66;
      *&v61[32] = v67;
      *&v61[48] = v68;
      v59 = v63;
      v60 = v64;
      if (sub_11D03C(&v59) == 1)
      {
        goto LABEL_32;
      }

      v18 = v62[0];
      v19 = *(&v60 + 1);
      v47 = v60;
      v20 = *v61;
      v43 = *&v61[8];
      v44 = *&v61[24];
      v45 = *&v61[40];
      v46 = v59;
      v40 = *&v62[1];
      v41 = *&v62[17];
      v42 = v7 >= v5;
      if (v7 < v5)
      {
        if (*&v61[56] != v12)
        {
          v18 = 1;
        }

        if (v18)
        {
          goto LABEL_26;
        }
      }

      else if ((v62[0] & 1) == 0)
      {
LABEL_26:
        v21 = *&v62[8];
        v22 = v62[16];
        sub_15F84(&v63, &__dst, &unk_DFDD90);
        v19 = static String.stringForTrackCountAndDuration(trackCount:duration:)(v21, v22, *&v12, v7 >= v5);
        v24 = v23;

        v20 = v24;
LABEL_31:
        v27 = v46;
        *&v28 = v47;
        *(&v28 + 1) = v19;
        *v29 = v20;
        *&v29[40] = v45;
        *&v29[8] = v43;
        *&v29[24] = v44;
        *&v29[56] = v12;
        v25 = v42;
        v30[0] = v42;
        *&v30[17] = v41;
        *&v30[1] = v40;
        v33 = *v29;
        v34 = *&v29[16];
        v31 = v46;
        v32 = v28;
        v39 = HIBYTE(v41);
        v37 = *v30;
        v38 = *&v30[16];
        v35 = *&v29[32];
        v36 = *&v29[48];
        UIScreen.Dimensions.size.getter(*(&v44 + 1));
        *v76 = *v30;
        *&v76[16] = *&v30[16];
        v76[32] = HIBYTE(v41);
        v72 = *v29;
        v73 = *&v29[16];
        v74 = *&v29[32];
        v75 = *&v29[48];
        __dst = v46;
        v71 = v28;
        sub_2E2538(&v27, &v48);
        sub_39BBA0(&__dst);
        v48 = v46;
        v52 = v43;
        v53 = v44;
        v54 = v45;
        v58 = v41;
        v49 = v47;
        v50 = v19;
        v51 = v20;
        v55 = v12;
        v56 = v25;
        v57 = v40;
        sub_257CA0(&v48);
        goto LABEL_32;
      }

      sub_15F84(&v63, &__dst, &unk_DFDD90);
      goto LABEL_31;
    }

    v26 = v6;
    if (([v4 isEditing] & 1) != 0 || *(v4 + qword_E01D30) == 1)
    {
      v9 = qword_E01D40;
    }

    else
    {
      v9 = *&stru_298.segname[(swift_isaMask & *v4) + 8];
    }

    v13 = v4 + v9;
    swift_beginAccess();
    memmove(&__dst, v13, 0x81uLL);
    v33 = v72;
    v34 = v73;
    v35 = v74;
    *&v36 = v75;
    v31 = __dst;
    v32 = v71;
    v14 = *(&v75 + 1);
    v15 = v76[0];
    v27 = *&v76[1];
    v28 = *&v76[17];
    v63 = __dst;
    v64 = v71;
    v66 = v73;
    v67 = v74;
    v65 = v72;
    *&v69[17] = *&v76[17];
    *&v69[1] = *&v76[1];
    v68 = v75;
    v69[0] = v76[0];
    if (sub_11D03C(&v63) == 1)
    {
      *v61 = v33;
      *&v61[16] = v34;
      *&v61[32] = v35;
      v59 = v31;
      v60 = v32;
      *&v62[1] = v27;
      *&v61[48] = v36;
      *&v61[56] = v14;
      v62[0] = v15;
      *&v62[17] = v28;
      sub_15F84(&__dst, &v48, &unk_DFDD90);
      sub_12E1C(&v59, &unk_DFDD90);
    }

    else
    {
      *v61 = v33;
      *&v61[16] = v34;
      *&v61[32] = v35;
      v59 = v31;
      v60 = v32;
      *&v62[1] = v27;
      *&v61[48] = v36;
      *&v61[56] = v14;
      v62[0] = v15;
      *&v62[17] = v28;
      sub_15F84(&__dst, &v48, &unk_DFDD90);
      sub_12E1C(&v59, &unk_DFDD90);
      if ((v15 & 1) == 0)
      {
        swift_beginAccess();
        if (*v26 >= vabdd_f64(*(a2 + 16), v14))
        {
          goto LABEL_32;
        }

        v12 = *(a2 + 16);
        goto LABEL_19;
      }
    }

    swift_beginAccess();
    v12 = *(a2 + 16);
    goto LABEL_19;
  }
}

void sub_3A4988(void *a1)
{
  v1 = a1;
  sub_29C304();
}

void sub_3A49F4(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_AB35C0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_AB9250();
  __chkstk_darwin(v6 - 8);
  v35 = v3;
  v7 = v3 + *&stru_298.segname[(swift_isaMask & *v3) + 8];
  swift_beginAccess();
  v8 = *(v7 + 5);
  v9 = *(v7 + 7);
  v61 = *(v7 + 6);
  v62 = v9;
  v10 = *(v7 + 1);
  v11 = *(v7 + 3);
  v57 = *(v7 + 2);
  v58 = v11;
  v12 = *(v7 + 3);
  v13 = *(v7 + 5);
  v59 = *(v7 + 4);
  v60 = v13;
  v14 = *(v7 + 1);
  v55 = *v7;
  v56 = v14;
  v15 = *(v7 + 7);
  v64[6] = v61;
  v64[7] = v15;
  v64[2] = v57;
  v64[3] = v12;
  v64[4] = v59;
  v64[5] = v8;
  v63 = v7[128];
  v65 = v7[128];
  v64[0] = v55;
  v64[1] = v10;
  v16 = 0;
  if (sub_11D03C(v64) != 1)
  {
    v52 = v61;
    v53 = v62;
    v48 = v57;
    v49 = v58;
    v50 = v59;
    v51 = v60;
    v46 = v55;
    v47 = v56;
    v43 = v61;
    v44 = v62;
    v39 = v57;
    v40 = v58;
    v41 = v59;
    v42 = v60;
    v54 = v63;
    v45 = v63;
    v37 = v55;
    v38 = v56;
    sub_2E2538(&v37, &v36);
    sub_D1FC0();
    v16 = v17;
    sub_12E1C(&v55, &unk_DFDD90);
  }

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  if (v16)
  {
    v18 = sub_AB9260();
  }

  else
  {
    v18 = 0;
  }

  v19 = sub_AB9260();

  v32 = [objc_opt_self() alertControllerWithTitle:v18 message:v19 preferredStyle:0];

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  sub_307CC(a2);
  v21 = sub_AB9260();

  *&v39 = sub_3A78B0;
  *(&v39 + 1) = v20;
  *&v37 = _NSConcreteStackBlock;
  *(&v37 + 1) = 1107296256;
  *&v38 = sub_1546C;
  *(&v38 + 1) = &block_descriptor_321;
  v22 = _Block_copy(&v37);

  v23 = objc_opt_self();
  v24 = [v23 actionWithTitle:v21 style:2 handler:v22];
  _Block_release(v22);

  [v32 addAction:v24];
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  sub_307CC(a2);
  v26 = sub_AB9260();

  *&v39 = sub_3A78B8;
  *(&v39 + 1) = v25;
  *&v37 = _NSConcreteStackBlock;
  *(&v37 + 1) = 1107296256;
  *&v38 = sub_1546C;
  *(&v38 + 1) = &block_descriptor_327;
  v27 = _Block_copy(&v37);

  v28 = [v23 actionWithTitle:v26 style:1 handler:v27];
  _Block_release(v27);

  [v32 addAction:v28];
  v29 = *(a1 + 5);
  if (v29 != 0xFF)
  {
    v30 = *(a1 + 6);
    v31 = a1[1];
    v37 = *a1;
    v38 = v31;
    *&v39 = *(a1 + 4);
    *(&v39 + 1) = v29;
    *&v40 = v30;
    PresentationSource.Position.configure(_:)(v32);
  }

  [v35 presentViewController:v32 animated:1 completion:0];
}

uint64_t sub_3A4FEC()
{

  sub_3A715C(*(v0 + qword_E01D10));

  v1 = *(v0 + qword_E01D40 + 112);
  v6[6] = *(v0 + qword_E01D40 + 96);
  v6[7] = v1;
  v7 = *(v0 + qword_E01D40 + 128);
  v2 = *(v0 + qword_E01D40 + 48);
  v6[2] = *(v0 + qword_E01D40 + 32);
  v6[3] = v2;
  v3 = *(v0 + qword_E01D40 + 80);
  v6[4] = *(v0 + qword_E01D40 + 64);
  v6[5] = v3;
  v4 = *(v0 + qword_E01D40 + 16);
  v6[0] = *(v0 + qword_E01D40);
  v6[1] = v4;
  sub_12E1C(v6, &unk_DFDD90);
  sub_3A716C(*(v0 + qword_E01D50), *(v0 + qword_E01D50 + 8));
}

id sub_3A519C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaylistDetailViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_3A51D4(uint64_t a1)
{

  sub_3A715C(*(a1 + qword_E01D10));

  v2 = *(a1 + qword_E01D40 + 112);
  v7[6] = *(a1 + qword_E01D40 + 96);
  v7[7] = v2;
  v8 = *(a1 + qword_E01D40 + 128);
  v3 = *(a1 + qword_E01D40 + 48);
  v7[2] = *(a1 + qword_E01D40 + 32);
  v7[3] = v3;
  v4 = *(a1 + qword_E01D40 + 80);
  v7[4] = *(a1 + qword_E01D40 + 64);
  v7[5] = v4;
  v5 = *(a1 + qword_E01D40 + 16);
  v7[0] = *(a1 + qword_E01D40);
  v7[1] = v5;
  sub_12E1C(v7, &unk_DFDD90);
  sub_3A716C(*(a1 + qword_E01D50), *(a1 + qword_E01D50 + 8));
}

uint64_t type metadata accessor for PlaylistDetailViewController()
{
  result = qword_E01E90;
  if (!qword_E01E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3A547C@<X0>(uint64_t a1@<X8>)
{
  if (([v1 isEditing] & 1) != 0 || *(v1 + qword_E01D30) == 1)
  {
    v3 = qword_E01D40;
  }

  else
  {
    v3 = *&stru_298.segname[(swift_isaMask & *v1) + 8];
  }

  v4 = v1 + v3;
  swift_beginAccess();
  v5 = *(v4 + 7);
  v20 = *(v4 + 6);
  v21 = v5;
  v6 = *(v4 + 3);
  v16 = *(v4 + 2);
  v17 = v6;
  v7 = *(v4 + 5);
  v18 = *(v4 + 4);
  v19 = v7;
  v8 = *(v4 + 1);
  v15[0] = *v4;
  v15[1] = v8;
  v9 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v9;
  v10 = v17;
  v11 = v18;
  v12 = v15[0];
  *(a1 + 32) = v16;
  *(a1 + 48) = v10;
  v22 = v4[128];
  *(a1 + 128) = v22;
  *(a1 + 64) = v11;
  *(a1 + 80) = v7;
  *a1 = v12;
  *(a1 + 16) = v8;
  return sub_15F84(v15, &v14, &unk_DFDD90);
}

unint64_t sub_3A55A4()
{
  result = qword_E02C88;
  if (!qword_E02C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E02C88);
  }

  return result;
}

void sub_3A5618(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E02D60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  v9 = [objc_opt_self() deviceMediaLibrary];
  if (v9)
  {
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_AF82B0;
    *(v11 + 32) = a3;
    v12 = objc_allocWithZone(MPModelLibraryRemoveFromPlaylistChangeRequest);
    sub_13C80(0, &qword_DE9C10);
    v13 = a3;
    isa = sub_AB9740().super.isa;
    v15 = [v12 initWithPlaylist:a2 inMediaLibrary:v10 andEntriesToRemove:isa];

    v16 = v5;
    (*(v6 + 16))(v8, v21, v5);
    v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v18 = swift_allocObject();
    (*(v6 + 32))(v18 + v17, v8, v16);
    aBlock[4] = sub_3A7DFC;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_3A5920;
    aBlock[3] = &block_descriptor_444;
    v19 = _Block_copy(aBlock);

    [v15 performWithResponseHandler:v19];
    _Block_release(v19);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_3A58AC(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E02D60);
    return sub_AB98C0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E02D60);
    return sub_AB98D0();
  }
}

void sub_3A5920(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

Class sub_3A598C(uint64_t a1)
{
  v1 = *(a1 + 32);

  if (v1(v2))
  {
    sub_13C80(0, &qword_DFA720);
    v3.super.isa = sub_AB8FD0().super.isa;
  }

  else
  {

    v3.super.isa = 0;
  }

  return v3.super.isa;
}

double sub_3A5A38()
{
  if ([v0 isEditing])
  {
    v2 = qword_E01D68;
    v3 = *&v0[qword_E01D68];
    if (v3)
    {
      v4 = *&v0[qword_E01D68];
      v5 = v4;
    }

    else
    {
      v5 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v0 action:"handleCancelButtonTappedWithSender:"];
      v4 = 0;
      v3 = *&v0[v2];
    }

    *&v0[v2] = v5;
    v6 = v4;
    v7 = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    v8 = swift_allocObject();
    *&result = 1;
    *(v8 + 16) = xmmword_AF82B0;
    *(v8 + 32) = v7;
  }

  return result;
}

void *sub_3A5B10(void *a1, unint64_t a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  result = [a1 dismissViewControllerAnimated:1 completion:0];
  if ((a3 & 1) == 0)
  {
    result = sub_12D948(a2);
    if (result)
    {
      v11 = result;
      v12 = sub_AB9990();
      (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
      sub_AB9940();
      v13 = v3;
      v14 = sub_AB9930();
      v15 = swift_allocObject();
      v15[2] = v14;
      v15[3] = &protocol witness table for MainActor;
      v15[4] = v13;
      v15[5] = v11;
      sub_DBDC8(0, 0, v9, &unk_B0C5E8, v15);
    }
  }

  return result;
}

uint64_t sub_3A5C74()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_3A5CBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17CF8;

  return sub_3A234C(a1, v4, v5, v7, v6);
}

uint64_t sub_3A5D7C()
{
  v1 = sub_3A22EC();
  memmove(__dst, v2, 0x81uLL);
  if (sub_11D03C(__dst) != 1)
  {
    v3 = *(*(*(v0 + *(&stru_248.reserved2 + (swift_isaMask & *v0))) + OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView) + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField);
    v4 = *&v3[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView];
    v5 = v3;
    v6 = [v4 textStorage];
    v7 = [v6 string];
    v8 = sub_AB92A0();
    v10 = v9;

    v11 = sub_AB92A0();
    v14[3] = &type metadata for String;
    v14[0] = v8;
    v14[1] = v10;
    sub_2E5370(v14, v11, v12);
  }

  return (v1)(v15, 0);
}

uint64_t sub_3A5EE4()
{
  v1 = sub_3A22EC();
  memmove(__dst, v2, 0x81uLL);
  if (sub_11D03C(__dst) == 1)
  {
    return (v1)(v15, 0);
  }

  v4 = *(*(*(v0 + *(&stru_248.reserved2 + (swift_isaMask & *v0))) + OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView) + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel) + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text;
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  if (v7 > 1)
  {
    if (v7 != 2)
    {
      v5 = 0;
      v6 = 0xE000000000000000;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!*(v4 + 16))
  {
LABEL_7:
    sub_23732C(*v4, *(v4 + 8), v7);
    goto LABEL_9;
  }

  v8 = [v5 string];
  v9 = sub_AB92A0();
  v11 = v10;

  sub_2372F0(v5, v6, 1);
  v5 = v9;
  v6 = v11;
LABEL_9:
  v12 = sub_AB92A0();
  v14[3] = &type metadata for String;
  v14[0] = v5;
  v14[1] = v6;
  sub_2E5370(v14, v12, v13);
  return (v1)(v15, 0);
}

void sub_3A6088()
{
  *(v0 + qword_E71630) = 0;
  *(v0 + qword_E01CF0) = 0;
  *(v0 + qword_E01CF8) = 0;
  *(v0 + qword_E01D00) = 0;
  v1 = (v0 + qword_E01D08);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + qword_E01D10) = 1;
  *(v0 + qword_E71638) = 1;
  *(v0 + qword_E01D18) = 0;
  *(v0 + qword_E01D20) = 0;
  *(v0 + qword_E01D28) = 0;
  *(v0 + qword_E01D30) = 0;
  *(v0 + qword_E01D38) = _swiftEmptyArrayStorage;
  v2 = v0 + qword_E01D40;
  sub_2E2464(v8);
  v3 = v8[7];
  *(v2 + 96) = v8[6];
  *(v2 + 112) = v3;
  *(v2 + 128) = v9;
  v4 = v8[3];
  *(v2 + 32) = v8[2];
  *(v2 + 48) = v4;
  v5 = v8[5];
  *(v2 + 64) = v8[4];
  *(v2 + 80) = v5;
  v6 = v8[1];
  *v2 = v8[0];
  *(v2 + 16) = v6;
  *(v0 + qword_E01D48) = 0;
  v7 = v0 + qword_E01D50;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0;
  *(v0 + qword_E01D60) = _swiftEmptyArrayStorage;
  *(v0 + qword_E01D68) = 0;
  *(v0 + qword_E01D70) = 0;
  *(v0 + qword_E01D78) = 0;
  *(v0 + qword_E01D80) = 0;
  *(v0 + qword_E01D88) = 0;
  *(v0 + qword_E01D90) = 0;
  *(v0 + qword_E01D98) = 0;
  *(v0 + qword_E01DA0) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_3A6274(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_AB35C0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_AB9250();
  __chkstk_darwin(v6 - 8);
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v7 = sub_AB9260();

  v8 = [objc_opt_self() alertControllerWithTitle:0 message:v7 preferredStyle:1];

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  sub_307CC(a2);
  v10 = sub_AB9260();

  v23 = sub_3A8174;
  v24 = v9;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_1546C;
  v22 = &block_descriptor_363;
  v11 = _Block_copy(&aBlock);

  v12 = objc_opt_self();
  v13 = [v12 actionWithTitle:v10 style:2 handler:v11];
  _Block_release(v11);

  [v8 addAction:v13];
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  sub_307CC(a2);
  v15 = sub_AB9260();

  v23 = sub_3A8178;
  v24 = v14;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_1546C;
  v22 = &block_descriptor_369;
  v16 = _Block_copy(&aBlock);

  v17 = [v12 actionWithTitle:v15 style:1 handler:v16];
  _Block_release(v16);

  [v8 addAction:v17];
  [a1 presentViewController:v8 animated:1 completion:0];
}

uint64_t sub_3A66A8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_AB9940();
  v2[4] = sub_AB9930();
  v4 = sub_AB98B0();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_3A6740, v4, v3);
}

uint64_t sub_3A6740()
{
  v1 = *(v0 + 16);
  v2 = *&v1[qword_E01D18];
  *(v0 + 56) = v2;
  if (v2)
  {

    v3 = [v1 isEditing];
    *(v0 + 112) = v3;
    if (v3)
    {
      v4 = *(v0 + 56);
      v5 = swift_task_alloc();
      *(v0 + 80) = v5;
      *v5 = v0;
      v5[1] = sub_3A6B08;
      v6 = *(v0 + 24);

      return sub_3A286C(v4, v6);
    }

    else
    {
      v14 = (&async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.beginEditing() + async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.beginEditing());
      v13 = swift_task_alloc();
      *(v0 + 64) = v13;
      *v13 = v0;
      v13[1] = sub_3A6998;

      return v14();
    }
  }

  else
  {
    if (qword_DE67E0 != -1)
    {
      swift_once();
    }

    v8 = sub_AB4BC0();
    __swift_project_value_buffer(v8, qword_E70DC0);
    v9 = sub_AB4BA0();
    v10 = sub_AB9F40();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "attempting to add songs when no editController exists", v11, 2u);
    }

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_3A6998()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {
    v3 = v2[5];
    v4 = v2[6];

    return _swift_task_switch(sub_3A70EC, v3, v4);
  }

  else
  {
    v5 = v2[7];
    v6 = swift_task_alloc();
    v2[10] = v6;
    *v6 = v2;
    v6[1] = sub_3A6B08;
    v7 = v2[3];

    return sub_3A286C(v5, v7);
  }
}

uint64_t sub_3A6B08()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_3A6D28;
  }

  else
  {
    v5 = sub_3A6C44;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_3A6C44()
{
  if (*(v0 + 112) == 1)
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    *v3 = v0;
    v3[1] = sub_3A6D98;

    return MusicLibraryPlaylistEditViewModel.commit()();
  }
}

uint64_t sub_3A6D28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_3A6D98(void *a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = *(v4 + 40);
    v6 = *(v4 + 48);
    v7 = sub_3A6F30;
  }

  else
  {

    v5 = *(v4 + 40);
    v6 = *(v4 + 48);
    v7 = sub_3A6EC0;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_3A6EC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_3A6F30()
{
  if (qword_DE6AA8 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E714D0);
  swift_errorRetain();
  sub_480B4();

  v2 = sub_AB4BA0();
  v3 = sub_AB9F40();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v2, v3, "error committing playlist changes: %@", v4, 0xCu);
    sub_12E1C(v5, &qword_DF9B20);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_3A70EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_3A715C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_3A716C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_3A71F0()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_121(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3A7240(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_3A72A8()
{
  v1 = type metadata accessor for PlaybackIntentDescriptor(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = (((*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v2);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_AB4C10();
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  else
  {
  }

  v7 = v5 + *(v1 + 28);
  if (*(v7 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  v8 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v5 + *(v1 + 32);
  if (*(v9 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  v10 = v0 + v8;
  swift_unknownObjectWeakDestroy();
  v11 = *(v0 + v8 + 48);
  if (v11 != 255)
  {
    sub_17774(*(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), v11);
  }

  if (*(v10 + 64))
  {
  }

  if (*(v10 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_3A745C(unsigned __int8 a1)
{
  v3 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);

  return sub_394134(a1, v1 + v4, v8, v9, v10, v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_3A751C()
{
  v1 = type metadata accessor for PlaybackIntentDescriptor(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = (v0 + v2);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_AB4C10();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v3 + *(v1 + 28);
  if (*(v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v6 = v3 + *(v1 + 32);
  if (*(v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  return swift_deallocObject();
}

void sub_3A764C()
{
  type metadata accessor for PlaybackIntentDescriptor(0);

  sub_1F83E4();
}

uint64_t sub_3A76AC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_3A76F4()
{

  return swift_deallocObject();
}

uint64_t sub_3A773C()
{

  return swift_deallocObject();
}

uint64_t sub_3A7794()
{

  return swift_deallocObject();
}

uint64_t sub_3A7804()
{

  return swift_deallocObject();
}

uint64_t sub_3A785C()
{

  return swift_deallocObject();
}

uint64_t sub_3A78D8()
{

  return swift_deallocObject();
}

uint64_t sub_3A7920()
{

  return swift_deallocObject();
}

uint64_t sub_3A7960(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_3A7978(uint64_t result)
{
  if ((result & 1) == 0)
  {
    return (*(v1 + 16))();
  }

  return result;
}

uint64_t objectdestroy_317Tm()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_3A79F8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    return v3(a2);
  }

  return result;
}

id sub_3A7A2C()
{
  v1 = *(v0 + 16);
  v2 = [v1 isEditing];
  *(v1 + qword_E01D20) = 1;

  return [v1 setEditing:v2 ^ 1 animated:1];
}

uint64_t sub_3A7AE4()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_382Tm()
{

  return swift_deallocObject();
}

uint64_t sub_3A7BE8(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t objectdestroy_250Tm()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_3A7C58()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_3A7CA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17BD0;

  return sub_39AEDC(a1, v4, v5, v7, v6);
}

uint64_t sub_3A7D68()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E02D60);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_3A7DFC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E02D60);

  return sub_3A58AC(a1);
}

void sub_3A7E7C()
{
  v0 = sub_396B50();
  [v0 setAlpha:0.0];
}

uint64_t objectdestroy_259Tm()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_268Tm()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_274Tm()
{

  return swift_deallocObject();
}

uint64_t sub_3A8184()
{
  type metadata accessor for MusicHTTPRequestAuthenticator();
  result = swift_initStaticObject();
  static MusicHTTPRequestAuthenticator.shared = result;
  return result;
}

uint64_t *MusicHTTPRequestAuthenticator.shared.unsafeMutableAddressor()
{
  if (qword_DE6B50 != -1)
  {
    swift_once();
  }

  return &static MusicHTTPRequestAuthenticator.shared;
}

uint64_t static MusicHTTPRequestAuthenticator.shared.getter()
{
  type metadata accessor for MusicHTTPRequestAuthenticator();

  return swift_initStaticObject();
}

uint64_t sub_3A8258(char a1, uint64_t a2, uint64_t a3)
{
  sub_60044();
  sub_E8BA0(a3, v7);
  v5 = swift_allocObject();
  sub_70DF8(v7, v5 + 16);
  *(v5 + 56) = a1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3A85A4, v5);
}

uint64_t sub_3A82F4(void *a1, char a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  (*(a1[4] + 16))(0);
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  if (a2)
  {
    return (*(v5 + 32))(v4, v5);
  }

  else
  {
    return (*(v5 + 40))(v4, v5);
  }
}

uint64_t _s16MusicApplication0A24HTTPRequestAuthenticatorC30scheduleAuthenticationAndRetry3fory0A6JSCore28JSHTTPRequestAuthenticatable_p_tF_0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  v2 = (*(a1[4] + 8))();
  v3 = a1[3];
  if (v2)
  {
    v4 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    return (*(v4 + 40))(v3, v4);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    swift_getDynamicType();
    (*(a1[4] + 16))(1);
    if (qword_DE6D60 != -1)
    {
      swift_once();
    }

    sub_E8BA0(a1, v7);
    v6 = swift_allocObject();
    sub_70DF8(v7, v6 + 16);
    sub_49FDA4(1, sub_3A8564, v6);
  }
}

uint64_t sub_3A852C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_3A856C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocObject();
}

char *sub_3A85B0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *&v4[v9] = TextDrawing.Cache.init()();
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_buttonTitle];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_buttonSelectionHandler];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = [objc_allocWithZone(UIButton) init];
  *&v4[OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_button] = v12;
  v24.receiver = v4;
  v24.super_class = type metadata accessor for ButtonContainingCollectionReusableView();
  v13 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_button;
  v15 = *&v13[OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_button];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = sub_33094();
  v18 = v13;
  v19 = v15;
  ControlEventHandling<>.on(_:handler:)(64, sub_3A94F4, v16, v17);

  result = [v18 tintColor];
  if (result)
  {
    v21 = result;
    [*&v13[v14] setTitleColor:result forState:0];
    v22 = *&v13[v14];
    v23 = [v21 colorWithAlphaComponent:0.2];
    [v22 setTitleColor:v23 forState:1];

    [v18 addSubview:*&v13[v14]];
    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_3A87C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_buttonSelectionHandler);
    if (v2)
    {

      v2(v3);
      sub_17654(v2);
    }
  }
}

void sub_3A8990(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_button);

  v2 = sub_AB9260();

  [v1 setTitle:v2 forState:0];
}

uint64_t sub_3A8A24()
{
  v38.receiver = v0;
  v38.super_class = type metadata accessor for ButtonContainingCollectionReusableView();
  objc_msgSendSuper2(&v38, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 traitCollection];
  [v9 displayScale];

  [v0 music_inheritedLayoutInsets];
  v12 = UIEdgeInsetsInsetRect(v2, v4, v6, v8, v10, v11);
  v14 = v13;
  v16 = v15;
  v36 = v17;
  if (qword_DE6B60 != -1)
  {
    swift_once();
  }

  v35 = v16;
  if (qword_DE6B58 != -1)
  {
    swift_once();
  }

  v18 = qword_E02E70;
  [qword_E02E70 _scaledValueForValue:?];
  sub_AB3A00();
  v19 = *&v0[OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_button];
  v20 = [v19 titleLabel];
  if (v20)
  {
    v21 = v20;
    [v20 setFont:v18];
  }

  [v19 sizeThatFits:{v16, v36}];
  if (v16 < v22)
  {
    v22 = v16;
  }

  if (v36 >= v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v36;
  }

  v25 = v22;
  v26 = v24;
  [v19 setBounds:{0.0, 0.0, v22}];
  v27 = objc_opt_self();
  v28 = swift_allocObject();
  *(v28 + 16) = v0;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_3A925C;
  *(v29 + 24) = v28;
  aBlock[4] = sub_2D4D0;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_122;
  v30 = _Block_copy(aBlock);
  v31 = v0;

  [v27 performWithoutAnimation:v30];
  _Block_release(v30);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
    __break(1u);
  }

  else
  {
    v33 = [v19 titleLabel];
    if (v33)
    {
      v34 = v33;
      [v33 _firstBaselineOffsetFromTop];
      [v34 bounds];
      [v19 convertRect:v34 fromCoordinateSpace:?];
      CGRectGetMinY(v39);
      v40.origin.x = 0.0;
      v40.origin.y = 0.0;
      v40.size.width = v25;
      v40.size.height = v26;
      CGRectGetMinY(v40);
    }

    v41.origin.x = v12;
    v41.origin.y = v14;
    v41.size.width = v35;
    v41.size.height = v36;
    CGRectGetMinY(v41);
    sub_ABA470();
    [v31 effectiveUserInterfaceLayoutDirection];
    sub_ABA490();
    [v19 setFrame:?];
  }

  return result;
}

void sub_3A8FF0()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleCaption1;
  v2 = [v0 preferredFontForTextStyle:v1];

  qword_E02E70 = v2;
}

double sub_3A905C()
{
  sub_3A90A0(&v1);
  xmmword_E02E98 = v3;
  unk_E02EA8 = v4;
  xmmword_E02EB8 = v5;
  result = *&v2;
  xmmword_E02E78 = v1;
  unk_E02E88 = v2;
  return result;
}

double sub_3A90A0@<D0>(uint64_t a1@<X8>)
{
  if (qword_DE6B58 != -1)
  {
    swift_once();
  }

  v2 = qword_E02E70;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = xmmword_AF7C20;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v4;
  *(a1 + 56) = 2;
  result = 20.0;
  *(a1 + 64) = xmmword_AF7C30;
  return result;
}

id sub_3A9158()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ButtonContainingCollectionReusableView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_3A9224()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_122(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_3A92A0(void *a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  [v2 bounds];
  v6 = v5;
  v8 = v7;
  v10 = *&v2[OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_buttonTitle];
  v9 = *&v2[OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_buttonTitle + 8];
  v11 = *&v2[OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_textDrawingCache];
  v12 = qword_DE6B60;

  if (v12 != -1)
  {
    swift_once();
  }

  v21[2] = xmmword_E02E98;
  v21[3] = unk_E02EA8;
  v22 = xmmword_E02EB8;
  v21[0] = xmmword_E02E78;
  v21[1] = unk_E02E88;
  v13 = *(v11 + 32);
  v14 = *(v11 + 64);
  v15 = *(v11 + 72);
  v16 = *(v11 + 80);
  v17 = *(v11 + 88);
  v18 = *(v11 + 40);
  sub_108594(v10, v9, v21, v18, v14, v15, v16, v17, v20, v6, v8, v13);

  if (qword_DE6B58 != -1)
  {
    swift_once();
  }

  [qword_E02E70 _scaledValueForValue:*&v22];
  [v4 displayScale];
  sub_AB3A00();
  sub_109AB0(v20);

  [a1 frame];
  [a1 setFrame:?];
  return a1;
}

uint64_t sub_3A94BC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_3A94FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v78 = a3;
  v81 = a2;
  v92 = a4;
  v7 = sub_AB6900();
  v8 = *(v7 - 8);
  v82 = v7;
  v83 = v8;
  __chkstk_darwin(v7);
  v79 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD2A0) - 8;
  __chkstk_darwin(v84);
  v80 = &v77 - v10;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD2A8) - 8;
  __chkstk_darwin(v87);
  v85 = &v77 - v11;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E031C8) - 8;
  v12 = __chkstk_darwin(v90);
  v91 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v88 = &v77 - v15;
  __chkstk_darwin(v14);
  v89 = &v77 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E031D0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v77 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E031D8);
  v22 = v21 - 8;
  v23 = __chkstk_darwin(v21);
  v86 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v77 - v26;
  __chkstk_darwin(v25);
  v29 = &v77 - v28;
  v93 = a1;
  v94 = a2;
  v95 = a3;
  sub_AB6A70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E031E0);
  sub_3AC7E0();
  sub_AB5710();
  sub_AB7A30();
  sub_AB5E90();
  (*(v18 + 32))(v27, v20, v17);
  v30 = &v27[*(v22 + 44)];
  v31 = v102;
  *(v30 + 4) = v101;
  *(v30 + 5) = v31;
  *(v30 + 6) = v103;
  v32 = v98;
  *v30 = v97;
  *(v30 + 1) = v32;
  v33 = v100;
  *(v30 + 2) = v99;
  *(v30 + 3) = v33;
  v34 = v29;
  sub_36B0C(v27, v29, &qword_E031D8);
  v35 = v78;

  v36 = JSWhatsNewViewModel.buttonTitle.getter();
  v38 = v37;
  v96 = 0;
  sub_AB7630();
  v39 = v104;
  v40 = *(&v104 + 1);
  *&v104 = v36;
  *(&v104 + 1) = v38;
  *&v105 = sub_3AC924;
  *(&v105 + 1) = v35;
  LOBYTE(v106) = v39;
  *(&v106 + 1) = v40;
  v41 = v79;
  sub_AB68F0();
  sub_2BE04C();
  sub_3ACE04(&qword_DFD2C0, &type metadata accessor for BorderedProminentButtonStyle);
  v42 = v80;
  v43 = v82;
  sub_AB6FB0();
  (*(v83 + 8))(v41, v43);

  v44 = sub_AB7430();
  KeyPath = swift_getKeyPath();
  v46 = &v42[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD2C8) + 36)];
  *v46 = KeyPath;
  v46[1] = v44;
  LOBYTE(v44) = sub_AB6AC0();
  sub_AB5690();
  v47 = &v42[*(v84 + 44)];
  *v47 = v44;
  *(v47 + 1) = v48;
  *(v47 + 2) = v49;
  *(v47 + 3) = v50;
  *(v47 + 4) = v51;
  v47[40] = 0;
  sub_AB7A30();
  sub_AB5E90();
  v52 = v42;
  v53 = v85;
  sub_36B0C(v52, v85, &qword_DFD2A0);
  v54 = (v53 + *(v87 + 44));
  v55 = v109;
  v54[4] = v108;
  v54[5] = v55;
  v54[6] = v110;
  v56 = v105;
  *v54 = v104;
  v54[1] = v56;
  v57 = v107;
  v54[2] = v106;
  v54[3] = v57;
  LOBYTE(v44) = sub_AB6A90();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  sub_AB5690();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v66 = v88;
  sub_36B0C(v53, v88, &qword_DFD2A8);
  v67 = v89;
  v68 = v66 + *(v90 + 44);
  *v68 = v44;
  *(v68 + 8) = v59;
  *(v68 + 16) = v61;
  *(v68 + 24) = v63;
  *(v68 + 32) = v65;
  *(v68 + 40) = 0;
  sub_36B0C(v66, v67, &qword_E031C8);
  v69 = v34;
  v70 = v34;
  v71 = v86;
  sub_15F84(v70, v86, &qword_E031D8);
  v72 = v91;
  sub_15F84(v67, v91, &qword_E031C8);
  v73 = v92;
  sub_15F84(v71, v92, &qword_E031D8);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03210);
  v75 = v73 + *(v74 + 48);
  *v75 = 0x4034000000000000;
  *(v75 + 8) = 0;
  sub_15F84(v72, v73 + *(v74 + 64), &qword_E031C8);
  sub_12E1C(v67, &qword_E031C8);
  sub_12E1C(v69, &qword_E031D8);
  sub_12E1C(v72, &qword_E031C8);
  return sub_12E1C(v71, &qword_E031D8);
}

uint64_t sub_3A9D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_AB6440();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03218);
  sub_3A9E8C(a1, a2, a3, a4 + *(v8 + 44));
  LOBYTE(a3) = sub_AB6A90();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  sub_AB5690();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E031F8) + 36);
  *v17 = a3;
  *(v17 + 8) = v10;
  *(v17 + 16) = v12;
  *(v17 + 24) = v14;
  *(v17 + 32) = v16;
  *(v17 + 40) = 0;
  LOBYTE(a3) = sub_AB6AB0();
  sub_AB5690();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E031E0);
  v27 = a4 + *(result + 36);
  *v27 = a3;
  *(v27 + 8) = v19;
  *(v27 + 16) = v21;
  *(v27 + 24) = v23;
  *(v27 + 32) = v25;
  *(v27 + 40) = 0;
  return result;
}

uint64_t sub_3A9E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v51 = a3;
  v52 = a1;
  v58 = a4;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03220);
  v53 = *(v57 - 8);
  v6 = __chkstk_darwin(v57);
  v56 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v55 = v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03228);
  v10 = v9 - 8;
  v11 = __chkstk_darwin(v9);
  v54 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v50 - v13;
  v50[1] = *(v4 + 16);
  *&v65[0] = JSWhatsNewViewModel.title.getter();
  *(&v65[0] + 1) = v15;
  sub_36A48();
  v16 = sub_AB6F20();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  KeyPath = swift_getKeyPath();
  LOBYTE(v4) = v20 & 1;
  LOBYTE(v65[0]) = v20 & 1;
  LOBYTE(v60) = 1;
  v24 = sub_AB6B60();
  v25 = swift_getKeyPath();
  *&v60 = v16;
  *(&v60 + 1) = v18;
  LOBYTE(v61) = v4;
  *(&v61 + 1) = v22;
  v62 = KeyPath;
  LOBYTE(v63) = 1;
  *(&v63 + 1) = 256;
  *(&v63 + 1) = v25;
  v64 = v24;
  sub_AB6BD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03230);
  sub_3ACA7C();
  sub_AB6F80();
  v65[2] = v62;
  v65[3] = v63;
  v66 = v64;
  v65[0] = v60;
  v65[1] = v61;
  sub_12E1C(v65, &qword_E03230);
  v26 = sub_AB74D0();
  v27 = swift_getKeyPath();
  v28 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03260) + 36)];
  *v28 = v27;
  v28[1] = v26;
  v29 = swift_getKeyPath();
  v30 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03268) + 36)];
  *v30 = v29;
  v30[8] = 1;
  sub_AB7A30();
  sub_AB5970();
  v31 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03270) + 36)];
  v32 = v61;
  *v31 = v60;
  *(v31 + 1) = v32;
  *(v31 + 2) = v62;
  LOBYTE(v29) = sub_AB6AC0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  sub_AB5690();
  v33 = &v14[*(v10 + 44)];
  v50[0] = v14;
  *v33 = v29;
  *(v33 + 1) = v34;
  *(v33 + 2) = v35;
  *(v33 + 3) = v36;
  *(v33 + 4) = v37;
  v33[40] = 0;
  v59 = JSWhatsNewViewModel.featuredItems.getter();
  v38 = swift_allocObject();
  v38[2] = v52;
  v38[3] = a2;
  v38[4] = v51;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE80B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03278);
  sub_36A00(&qword_E03280, &qword_DE80B0);
  sub_3ACD24();
  sub_3ACE04(&qword_E03298, type metadata accessor for JSWhatsNewFeaturedItemViewModel);
  v39 = v55;
  sub_AB78C0();
  v40 = v14;
  v41 = v54;
  sub_15F84(v40, v54, &qword_E03228);
  v42 = v53;
  v43 = *(v53 + 16);
  v44 = v56;
  v45 = v57;
  v43(v56, v39, v57);
  v46 = v58;
  sub_15F84(v41, v58, &qword_E03228);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E032A0);
  v43((v46 + *(v47 + 48)), v44, v45);
  v48 = *(v42 + 8);
  v48(v39, v45);
  sub_12E1C(v50[0], &qword_E03228);
  v48(v44, v45);
  return sub_12E1C(v41, &qword_E03228);
}

id sub_3AA494@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = *a1;
  v3 = sub_AB6AC0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  sub_AB5690();
  *a2 = v9;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = 0;

  return v9;
}

uint64_t sub_3AA554()
{
  v0 = swift_allocObject();
  swift_weakInit();

  JSWhatsNewViewModel.didCompleteWhatsNewPresentation(completionHandler:)(sub_3ACA64, v0);
}

uint64_t sub_3AA5D4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E032D8);
  v5 = __chkstk_darwin(v4 - 8);
  v49 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v48 = (&v43 - v7);
  v8 = sub_AB7540();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  JSWhatsNewFeaturedItemViewModel.imageName.getter();
  v12 = JSWhatsNewFeaturedItemViewModel.imageContext.getter();
  v13 = JSWhatsNewFeaturedItemViewModel.imageBundleIdentifier.getter();
  if (v12)
  {
    if (v13 == 2 || (v13 & 1) == 0)
    {
      if (qword_DE6AF0 != -1)
      {
        swift_once();
      }

      v14 = qword_E71620;
    }

    else
    {
      v14 = *NSBundle.musicCoreUIBundle.unsafeMutableAddressor();
    }

    v15 = v14;
    sub_AB75A0();
  }

  else
  {
    sub_AB7550();
  }

  (*(v9 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v8);
  v47 = sub_AB7590();
  (*(v9 + 8))(v11, v8);

  sub_AB7A40();
  sub_AB5970();
  v73 = 1;
  *&v72[6] = v77;
  *&v72[22] = v78;
  *&v72[38] = v79;
  v46 = sub_AB6AB0();
  JSWhatsNewFeaturedItemViewModel.additionalDescription.getter();
  if (v16)
  {
  }

  sub_AB5690();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v74 = 0;
  v25 = sub_AB7430();
  KeyPath = swift_getKeyPath();
  v45 = KeyPath;
  v27 = sub_AB6450();
  v28 = v48;
  *v48 = v27;
  *(v28 + 8) = 0;
  *(v28 + 16) = 1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E032E0);
  sub_3AAAC0(a1, v28 + *(v29 + 44));
  v30 = v49;
  sub_15F84(v28, v49, &qword_E032D8);
  v31 = v47;
  v50[0] = v47;
  v50[1] = 0;
  LOWORD(v51[0]) = 1;
  *(v51 + 2) = *v72;
  *(&v51[1] + 2) = *&v72[16];
  *(&v51[2] + 2) = *&v72[32];
  *&v51[3] = *&v72[46];
  v32 = v46;
  BYTE8(v51[3]) = v46;
  *(&v51[3] + 9) = *v75;
  HIDWORD(v51[3]) = *&v75[3];
  *&v52 = v18;
  *(&v52 + 1) = v20;
  *&v53 = v22;
  *(&v53 + 1) = v24;
  LOBYTE(v54) = 0;
  *(&v54 + 1) = *v76;
  DWORD1(v54) = *&v76[3];
  *(&v54 + 1) = KeyPath;
  v55 = v25;
  v44 = v25;
  v33 = v47;
  v34 = v51[0];
  v35 = v51[2];
  *(a2 + 32) = v51[1];
  *(a2 + 48) = v35;
  *a2 = v33;
  *(a2 + 16) = v34;
  v36 = v51[3];
  v37 = v52;
  v38 = v53;
  v39 = v54;
  *(a2 + 128) = v25;
  *(a2 + 96) = v38;
  *(a2 + 112) = v39;
  *(a2 + 64) = v36;
  *(a2 + 80) = v37;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E032E8);
  sub_15F84(v30, a2 + *(v40 + 48), &qword_E032D8);
  v41 = a2 + *(v40 + 64);
  *v41 = 0;
  *(v41 + 8) = 1;
  sub_15F84(v50, v56, &qword_E032F0);
  sub_12E1C(v28, &qword_E032D8);
  sub_12E1C(v30, &qword_E032D8);
  v56[0] = v31;
  v56[1] = 0;
  v57 = 1;
  v58 = 0;
  v59 = *v72;
  v60 = *&v72[16];
  *v61 = *&v72[32];
  *&v61[14] = *&v72[46];
  v62 = v32;
  *v63 = *v75;
  *&v63[3] = *&v75[3];
  v64 = v18;
  v65 = v20;
  v66 = v22;
  v67 = v24;
  v68 = 0;
  *&v69[3] = *&v76[3];
  *v69 = *v76;
  v70 = v45;
  v71 = v44;
  return sub_12E1C(v56, &qword_E032F0);
}

uint64_t sub_3AAAC0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v99 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8540);
  v93 = *(v2 - 8);
  v94 = v2;
  __chkstk_darwin(v2);
  v91 = &v91 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E032F8);
  v5 = __chkstk_darwin(v4 - 8);
  v97 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v96 = &v91 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03300);
  v9 = v8 - 8;
  v10 = __chkstk_darwin(v8);
  v110 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v91 - v12;
  *&v156 = JSWhatsNewFeaturedItemViewModel.title.getter();
  *(&v156 + 1) = v14;
  v92 = sub_36A48();
  v15 = sub_AB6F20();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  KeyPath = swift_getKeyPath();
  LOBYTE(v156) = v19 & 1;
  LOBYTE(v129) = 1;
  v23 = sub_AB6B70();
  v24 = swift_getKeyPath();
  *&v156 = v15;
  *(&v156 + 1) = v17;
  LOBYTE(v157) = v19 & 1;
  *(&v157 + 1) = v21;
  LOWORD(v158) = 256;
  *(&v158 + 1) = KeyPath;
  *&v159 = 0;
  BYTE8(v159) = 1;
  *&v160 = v24;
  *(&v160 + 1) = v23;
  sub_AB6BD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03308);
  sub_3AD2C4();
  sub_AB6F80();
  v166[2] = v158;
  v166[3] = v159;
  v166[4] = v160;
  v166[0] = v156;
  v166[1] = v157;
  sub_12E1C(v166, &qword_E03308);
  v25 = sub_AB74D0();
  v26 = swift_getKeyPath();
  v27 = *(v9 + 44);
  v109 = v13;
  v28 = (v13 + v27);
  *v28 = v26;
  v28[1] = v25;
  v29 = v99;
  *&v156 = JSWhatsNewFeaturedItemViewModel.subtitle.getter();
  *(&v156 + 1) = v30;
  v31 = sub_AB6F20();
  v104 = v32;
  v105 = v31;
  LOBYTE(v13) = v33;
  v106 = v34;
  v107 = swift_getKeyPath();
  v101 = v13 & 1;
  LOBYTE(v156) = v13 & 1;
  LOBYTE(v129) = 1;
  v108 = sub_AB6B70();
  v103 = swift_getKeyPath();
  v102 = sub_AB74D0();
  v95 = swift_getKeyPath();
  v100 = swift_getKeyPath();
  v35 = JSWhatsNewFeaturedItemViewModel.additionalDescription.getter();
  if (v36)
  {
    *&v156 = v35;
    *(&v156 + 1) = v36;
    v92 = sub_AB6F20();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v43 = sub_AB6AB0();
    sub_AB5690();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v52 = v40 & 1;
    LOBYTE(v156) = v40 & 1;
    LOBYTE(v129) = 0;
    v53 = swift_getKeyPath();
    LOBYTE(v156) = 1;
    v54 = sub_AB6CB0();
    v55 = swift_getKeyPath();
    v56 = sub_AB74E0();
    v57 = swift_getKeyPath();
    v58 = swift_getKeyPath();
    *&v129 = v92;
    *(&v129 + 1) = v38;
    LOBYTE(v130) = v52;
    *(&v130 + 1) = v42;
    LOBYTE(v131) = v43;
    *(&v131 + 1) = v45;
    *&v132 = v47;
    *(&v132 + 1) = v49;
    *&v133 = v51;
    BYTE8(v133) = 0;
    *(&v133 + 9) = 256;
    v134 = v53;
    v29 = v99;
    LOBYTE(v135) = 1;
    *(&v135 + 1) = v55;
    *&v136 = v54;
    *(&v136 + 1) = v57;
    *&v137 = v56;
    *(&v137 + 1) = v58;
    v138 = 0;
    UIScreen.Dimensions.size.getter(v59);
    v162 = v135;
    v163 = v136;
    v164 = v137;
    v165 = v138;
    v158 = v131;
    v159 = v132;
    v160 = v133;
    v161 = v134;
    v156 = v129;
    v157 = v130;
  }

  else
  {
    sub_3AD4B8(&v156);
  }

  JSWhatsNewFeaturedItemViewModel.additionalDescriptionLinkTitle.getter();
  v60 = v93;
  if (v61)
  {

    __chkstk_darwin(v62);
    *(&v91 - 2) = v29;
    v63 = v91;
    sub_AB7690();
    v64 = v96;
    v65 = v63;
    v66 = v94;
    (*(v60 + 32))(v96, v65, v94);
    v67 = 0;
  }

  else
  {
    v67 = 1;
    v64 = v96;
    v66 = v94;
  }

  (*(v60 + 56))(v64, v67, 1, v66);
  v68 = v110;
  sub_15F84(v109, v110, &qword_E03300);
  v117 = v162;
  v118 = v163;
  v119 = v164;
  v120 = v165;
  v113 = v158;
  v114 = v159;
  v115 = v160;
  v116 = v161;
  v111 = v156;
  v112 = v157;
  v69 = v97;
  sub_15F84(v64, v97, &qword_E032F8);
  v70 = v68;
  v71 = v98;
  sub_15F84(v70, v98, &qword_E03300);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03338);
  v73 = (v71 + v72[12]);
  *&v121 = v105;
  *(&v121 + 1) = v104;
  LOBYTE(v122) = v101;
  *(&v122 + 1) = v170[0];
  DWORD1(v122) = *(v170 + 3);
  *(&v122 + 1) = v106;
  LOWORD(v123) = 256;
  *(&v123 + 2) = v168;
  WORD3(v123) = v169;
  *(&v123 + 1) = v107;
  *&v124 = 0;
  BYTE8(v124) = 1;
  HIDWORD(v124) = *&v167[3];
  *(&v124 + 9) = *v167;
  *&v125 = v103;
  *(&v125 + 1) = v108;
  v74 = v95;
  *&v126[0] = v95;
  *(&v126[0] + 1) = v102;
  *&v126[1] = v100;
  BYTE8(v126[1]) = 0;
  v75 = v122;
  *v73 = v121;
  v73[1] = v75;
  v76 = v123;
  v77 = v124;
  v78 = v125;
  v79 = v126[0];
  *(v73 + 89) = *(v126 + 9);
  v73[4] = v78;
  v73[5] = v79;
  v73[2] = v76;
  v73[3] = v77;
  v80 = v72[16];
  v81 = v118;
  v127[6] = v117;
  v127[7] = v118;
  v82 = v119;
  v127[8] = v119;
  v83 = v115;
  v84 = v116;
  v127[4] = v115;
  v127[5] = v116;
  v85 = v111;
  v86 = v112;
  v127[0] = v111;
  v127[1] = v112;
  v87 = v113;
  v88 = v114;
  v127[2] = v113;
  v127[3] = v114;
  v89 = v71 + v80;
  *(v89 + 96) = v117;
  *(v89 + 112) = v81;
  *(v89 + 128) = v82;
  *(v89 + 32) = v87;
  *(v89 + 48) = v88;
  v128 = v120;
  *(v89 + 144) = v120;
  *(v89 + 64) = v83;
  *(v89 + 80) = v84;
  *v89 = v85;
  *(v89 + 16) = v86;
  sub_15F84(v69, v71 + v72[20], &qword_E032F8);
  sub_15F84(&v121, &v129, &qword_E03340);
  sub_15F84(v127, &v129, &qword_E03348);
  sub_12E1C(v64, &qword_E032F8);
  sub_12E1C(v109, &qword_E03300);
  sub_12E1C(v69, &qword_E032F8);
  v135 = v117;
  v136 = v118;
  v137 = v119;
  v138 = v120;
  v131 = v113;
  v132 = v114;
  v133 = v115;
  v134 = v116;
  v129 = v111;
  v130 = v112;
  sub_12E1C(&v129, &qword_E03348);
  v139[0] = v105;
  v139[1] = v104;
  v140 = v101;
  *v141 = v170[0];
  *&v141[3] = *(v170 + 3);
  v142 = v106;
  v143 = 256;
  v144 = v168;
  v145 = v169;
  v146 = v107;
  v147 = 0;
  v148 = 1;
  *&v149[3] = *&v167[3];
  *v149 = *v167;
  v150 = v103;
  v151 = v108;
  v152 = v74;
  v153 = v102;
  v154 = v100;
  v155 = 0;
  sub_12E1C(v139, &qword_E03340);
  return sub_12E1C(v110, &qword_E03300);
}

void sub_3AB3EC()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    LSApplicationWorkspace.openMusicSettings()();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_3AB458@<X0>(uint64_t a1@<X8>)
{
  result = JSWhatsNewFeaturedItemViewModel.additionalDescriptionLinkTitle.getter();
  if (v3)
  {
    sub_36A48();
    v4 = sub_AB6F20();
    v6 = v5;
    v8 = v7;
    sub_AB6CB0();
    v9 = sub_AB6E80();
    v11 = v10;
    v13 = v12;
    v15 = v14;

    sub_36B74(v4, v6, v8 & 1);

    *a1 = v9;
    *(a1 + 8) = v11;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_3AB538@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E032C0);
  __chkstk_darwin(v3 - 8);
  v5 = v13 - v4;
  v6 = *v1;
  JSWhatsNewFeaturedItemViewModel.additionalDescription.getter();
  if (v7)
  {

    v8 = sub_AB62C0();
  }

  else
  {
    v8 = sub_AB62E0();
  }

  *v5 = v8;
  *(v5 + 1) = 0x4030000000000000;
  v5[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E032C8);
  sub_3AA5D4(v6, &v5[*(v9 + 44)]);
  sub_AB7A40();
  sub_AB5970();
  sub_36B0C(v5, a1, &qword_E032C0);
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E032D0) + 36));
  v11 = v13[1];
  *v10 = v13[0];
  v10[1] = v11;
  result = *&v14;
  v10[2] = v14;
  return result;
}

void sub_3AB67C()
{
  v0 = sub_AB9230();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB35C0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_AB9250();
  __chkstk_darwin(v2 - 8);
  v3 = JSWhatsNewViewModel.featuredItems.getter();
  if (!(v3 >> 62))
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));

    if (v4)
    {
      return;
    }

    goto LABEL_3;
  }

  v31 = sub_ABB060();

  if (!v31)
  {
LABEL_3:
    type metadata accessor for JSWhatsNewFeaturedItemViewModel();
    sub_AB91E0();
    sub_AB3550();
    v32 = sub_AB9320();
    v6 = v5;
    sub_AB91E0();
    sub_AB3550();
    v7 = sub_AB9320();
    v9 = v8;
    sub_AB9220();
    v34._object = 0x8000000000B62210;
    v34._countAndFlagsBits = 0x1000000000000013;
    sub_AB9210(v34);
    v35._countAndFlagsBits = JSWhatsNewViewModel.displayName.getter();
    sub_AB9200(v35);

    v36._object = 0x8000000000B62230;
    v36._countAndFlagsBits = 0xD000000000000048;
    sub_AB9210(v36);
    sub_AB9240();
    sub_AB3550();
    v10 = sub_AB9320();
    v12 = v11;
    sub_AB91E0();
    sub_AB3550();
    v13 = sub_AB9320();
    v15 = JSWhatsNewFeaturedItemViewModel.__allocating_init(title:subtitle:imageName:imageContext:additionalDescription:additionalDescriptionLinkTitle:imageBundleIdentifier:)(v32, v6, v7, v9, 1918986355, 121, 0, v10, v12, v13, v14, 2);
    sub_AB91E0();
    sub_AB3550();
    v16 = sub_AB9320();
    LODWORD(v12) = v17;
    sub_AB91E0();
    sub_AB3550();
    v18 = sub_AB9320();
    v20 = JSWhatsNewFeaturedItemViewModel.__allocating_init(title:subtitle:imageName:imageContext:additionalDescription:additionalDescriptionLinkTitle:imageBundleIdentifier:)(v16, v12, v18, v19, 1936683587, 101, 1, 0, 0, 0, 0, 2);
    sub_AB91E0();
    sub_AB3550();
    v21 = sub_AB9320();
    LODWORD(v12) = v22;
    sub_AB91E0();
    sub_AB3550();
    v23 = sub_AB9320();
    v25 = JSWhatsNewFeaturedItemViewModel.__allocating_init(title:subtitle:imageName:imageContext:additionalDescription:additionalDescriptionLinkTitle:imageBundleIdentifier:)(v21, v12, v23, v24, 1868983913, 6646883, 0, 0, 0, 0, 0, 2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF82E0;
    *(inited + 32) = v15;
    *(inited + 40) = v20;
    *(inited + 48) = v25;
    v27 = v15;
    v28 = v20;
    v29 = v25;
    v30 = JSWhatsNewViewModel.featuredItems.modify(v33);
    sub_19608(inited);
    (v30)(v33, 0);
  }
}

void sub_3ABC4C(void *a1)
{
  v2 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = *(Strong + 24);
    if (!v9)
    {
LABEL_7:

      return;
    }

    if (a1)
    {
      v10 = Strong;
      v11 = *(Strong + 32);
      if (!v11 || (type metadata accessor for JSNoopSegue(), swift_dynamicCastClass()))
      {
        [v9 dismissViewControllerAnimated:1 completion:0];
        goto LABEL_7;
      }

      memset(v30, 0, sizeof(v30));
      v31 = 0;
      v32 = xmmword_AF7710;
      v12 = v11;
      v19 = v12;
      v22 = v9;
      v20 = a1;
      PresentationSource.init(viewController:position:)(v12, v30, v29);
      v21 = v10;
      v13 = *(v10 + 16);
      sub_15F28(v29, v28);
      v14 = type metadata accessor for PlaybackIntentDescriptor(0);
      memset(v26, 0, sizeof(v26));
      v27 = 0;
      (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
      sub_15F84(v28, v24, &unk_DEA520);
      sub_15F84(v26, (v4 + 104), &unk_DE8E30);
      sub_15F84(v7, &v4[*(v2 + 28)], &unk_DEA510);
      *v4 = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 2) = 0u;
      *(v4 + 3) = 0u;
      *(v4 + 8) = 1;
      *(v4 + 9) = 0;
      *(v4 + 10) = 0;
      *(v4 + 11) = 0;
      v15 = v13;
      sub_160B4(v24, v4, &unk_DEA520);
      *(v4 + 12) = 0;
      v23[3] = v2;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
      sub_16050(v4, boxed_opaque_existential_0);
      sub_12E1C(v7, &unk_DEA510);
      sub_12E1C(v26, &unk_DE8E30);
      sub_12E1C(v28, &unk_DEA520);
      memset(v25, 0, 32);
      v24[1] = 0;
      v24[2] = 0;
      v24[0] = v13;
      sub_160B4(v23, v25, &unk_DE8E40);
      v17 = *JSSegueCoordinator.shared.unsafeMutableAddressor();
      v18 = v20;
      JSSegueCoordinator.perform(segue:with:)(v20, v24);

      sub_1611C(v29);
      sub_16170(v24);
    }

    else
    {
      [*(Strong + 24) dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_3ABFE8()
{

  return swift_deallocClassInstance();
}

void sub_3AC120()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "viewDidLoad");
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 setNeedsLayout];

    v4 = [v1 navigationController];
    if (v4)
    {
      v5 = v4;
      [v4 setNavigationBarHidden:1 animated:0];
    }

    v6 = [v1 navigationController];
    if (v6)
    {
      v7 = v6;
      v8 = *(*&v1[qword_E03008] + 16);
      [v7 setModalInPresentation:JSWhatsNewViewModel.isModalInPresentation.getter() & 1];
    }

    v9 = *&v1[qword_E03008];
    v10 = [v1 presentingViewController];
    v11 = *(v9 + 24);
    *(v9 + 24) = v10;

    v12 = [v1 navigationController];
    v13 = *(v9 + 32);
    *(v9 + 32) = v12;
  }

  else
  {
    __break(1u);
  }
}

void sub_3AC280(void *a1)
{
  v1 = a1;
  sub_3AC120();
}

void sub_3AC2C8(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "viewDidLayoutSubviews");
  sub_3ACFA4();
}

uint64_t sub_3AC320()
{
}

uint64_t sub_3AC360()
{
}

uint64_t sub_3AC450()
{
  v1 = OBJC_IVAR____TtC16MusicApplicationP33_6997607721E042CF5D97361BD470E5C417HostedEnvironment__horizontalInsets;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC16MusicApplicationP33_6997607721E042CF5D97361BD470E5C417HostedEnvironment__titleToFeaturePadding, v2);
  v3(v0 + OBJC_IVAR____TtC16MusicApplicationP33_6997607721E042CF5D97361BD470E5C417HostedEnvironment__featureToFeaturePadding, v2);

  return swift_deallocClassInstance();
}

void sub_3AC56C()
{
  sub_363CC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_3AC62C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - v3;
  v5 = OBJC_IVAR____TtC16MusicApplicationP33_6997607721E042CF5D97361BD470E5C417HostedEnvironment__horizontalInsets;
  v11 = 0;
  sub_AB54D0();
  v6 = *(v2 + 32);
  v6(v0 + v5, v4, v1);
  v7 = OBJC_IVAR____TtC16MusicApplicationP33_6997607721E042CF5D97361BD470E5C417HostedEnvironment__titleToFeaturePadding;
  v11 = 0;
  sub_AB54D0();
  v6(v0 + v7, v4, v1);
  v8 = OBJC_IVAR____TtC16MusicApplicationP33_6997607721E042CF5D97361BD470E5C417HostedEnvironment__featureToFeaturePadding;
  v11 = 0;
  sub_AB54D0();
  v6(v0 + v8, v4, v1);
  return v0;
}

uint64_t sub_3AC794@<X0>(uint64_t *a1@<X8>)
{
  _s16MusicApplication17HostedEnvironmentCMa_0(0);
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

unint64_t sub_3AC7E0()
{
  result = qword_E031E8;
  if (!qword_E031E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E031E0);
    sub_3AC86C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E031E8);
  }

  return result;
}

unint64_t sub_3AC86C()
{
  result = qword_E031F0;
  if (!qword_E031F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E031F8);
    sub_36A00(&qword_E03200, &qword_E03208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E031F0);
  }

  return result;
}

uint64_t sub_3AC92C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_AB6210();
  *a1 = result;
  return result;
}

uint64_t sub_3AC958@<X0>(uint64_t *a1@<X8>)
{
  result = sub_AB6210();
  *a1 = result;
  return result;
}

uint64_t sub_3ACA2C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t sub_3ACA7C()
{
  result = qword_E03238;
  if (!qword_E03238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E03230);
    sub_3ACB34();
    sub_36A00(&qword_DEB890, &qword_DEB898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E03238);
  }

  return result;
}

unint64_t sub_3ACB34()
{
  result = qword_E03240;
  if (!qword_E03240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E03248);
    sub_3ACBC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E03240);
  }

  return result;
}

unint64_t sub_3ACBC0()
{
  result = qword_E03250;
  if (!qword_E03250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E03258);
    sub_36A00(&qword_DFE948, &unk_DFE950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E03250);
  }

  return result;
}

uint64_t sub_3ACCD8()
{

  return swift_deallocObject();
}

unint64_t sub_3ACD24()
{
  result = qword_E03288;
  if (!qword_E03288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E03278);
    sub_3ACDB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E03288);
  }

  return result;
}

unint64_t sub_3ACDB0()
{
  result = qword_E03290;
  if (!qword_E03290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E03290);
  }

  return result;
}

uint64_t sub_3ACE04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3ACE9C(void *a1)
{
  v2 = v1;
  _s16MusicApplication17HostedEnvironmentCMa_0(0);
  swift_allocObject();
  *(v1 + qword_E03000) = sub_3AC62C();
  type metadata accessor for WhatsNewCoordinator();
  v4 = swift_allocObject();
  v4[3] = 0;
  v4[4] = 0;
  v4[2] = a1;
  v5 = a1;
  sub_3AB67C();
  *(v2 + qword_E03008) = v4;
  sub_3ACE04(&qword_E032A8, _s16MusicApplication17HostedEnvironmentCMa_0);

  sub_AB5B50();
  return sub_AB64F0();
}

id sub_3ACFA4()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    [result bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v19.origin.x = v4;
    v19.origin.y = v6;
    v19.size.width = v8;
    v19.size.height = v10;
    Width = CGRectGetWidth(v19);
    v12 = 37.0;
    v13 = 26.0;
    if (Width < 375.0)
    {
      v12 = 26.0;
      v13 = 22.0;
    }

    v14 = 16.0;
    if (Width >= 375.0)
    {
      v14 = 24.0;
    }

    if (Width < 400.0)
    {
      v15 = v12;
    }

    else
    {
      v15 = 44.0;
    }

    if (Width < 400.0)
    {
      v16 = v13;
    }

    else
    {
      v16 = 36.0;
    }

    if (Width < 400.0)
    {
      v17 = v14;
    }

    else
    {
      v17 = 44.0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    if (v18 != v17)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v18 = v17;

      sub_AB5520();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    if (v18 != v16)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v18 = v16;

      sub_AB5520();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    if (v18 != v15)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      return sub_AB5520();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_3AD2C4()
{
  result = qword_E03310;
  if (!qword_E03310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E03308);
    sub_3AD37C();
    sub_36A00(&qword_DEB890, &qword_DEB898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E03310);
  }

  return result;
}

unint64_t sub_3AD37C()
{
  result = qword_E03318;
  if (!qword_E03318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E03320);
    sub_3AD434();
    sub_36A00(&qword_DFE948, &unk_DFE950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E03318);
  }

  return result;
}

unint64_t sub_3AD434()
{
  result = qword_E03328;
  if (!qword_E03328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E03330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E03328);
  }

  return result;
}

double sub_3AD4B8(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_3AD4E4()
{
  result = qword_E03350;
  if (!qword_E03350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E032D0);
    sub_36A00(&qword_E03358, &qword_E032C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E03350);
  }

  return result;
}

void sub_3AD59C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_accessorySocialPersons;
  v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_accessorySocialPersons);
  if (v3 >> 62)
  {
    if (sub_ABB060() >= 1)
    {
LABEL_3:
      sub_3ADB78();
      v4 = *(v0 + OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_peopleBadgeView);
      if (v4)
      {
        v5 = v4;
        [v5 setHidden:0];
        v6 = *(v1 + v2);
        v7 = *&v5[OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_socialPersons];
        *&v5[OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_socialPersons] = v6;
        swift_bridgeObjectRetain_n();
        v8 = sub_12C524(v7, v6);

        if ((v8 & 1) == 0)
        {
          sub_3ADFC0();
          [v5 setNeedsLayout];
        }

        *&v5[OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_artworkCachingReference] = *(v1 + OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_artworkCachingReference);
        swift_retain_n();

        sub_3AE3A8();
      }

      return;
    }
  }

  else if (*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)) >= 1)
  {
    goto LABEL_3;
  }

  v9 = *(v0 + OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_peopleBadgeView);
  if (v9)
  {

    [v9 setHidden:1];
  }
}

void sub_3AD730()
{
  v1 = v0;
  v49.receiver = v0;
  v49.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v49, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_peopleBadgeView];
  if (v2)
  {
    type metadata accessor for CGRect(0);
    v3 = v2;
    [v0 bounds];
    v45 = v4;
    v46 = v5;
    v47 = v6;
    v48 = v7;
    if ((sub_AB38D0() & 1) == 0)
    {
LABEL_12:

      return;
    }

    v8 = [v0 effectiveUserInterfaceLayoutDirection];
    [v1 bounds];
    UIEdgeInsetsInsetRect(v9, v10, v11, v12, *&v1[OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_overlayMargins], *&v1[OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_overlayMargins + 8]);
    sub_ABA4B0();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_visibleArtworkComponents;
    swift_beginAccess();
    v22 = *(v3 + v21);
    if (v22 >> 62)
    {
      if (sub_ABB060() >= 1)
      {
        goto LABEL_5;
      }
    }

    else if (*(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8)) >= 1)
    {
LABEL_5:
      v23 = [(CGPath *)v3 traitCollection];
      [v23 displayScale];

      sub_AB3A00();
      v25 = v24 + 32.0;
LABEL_8:
      v26 = fmin(v20, 32.0);
      v27 = v14;
      v28 = v16;
      v29 = v18;
      v30 = v20;
      if (v8 == &dword_0 + 1)
      {
        MinX = CGRectGetMinX(*&v27);
      }

      else
      {
        MinX = CGRectGetMaxX(*&v27) - v25;
      }

      v50.origin.x = v14;
      v50.origin.y = v16;
      v50.size.width = v18;
      v50.size.height = v20;
      v32 = CGRectGetMaxY(v50) - v26;
      v33 = v3;
      [(CGPath *)v33 setFrame:MinX, v32, v25, v26];
      [(CGPath *)v33 bounds];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v42 = [(CGPath *)v33 layer];

      v51.origin.x = v35;
      v51.origin.y = v37;
      v51.size.width = v39;
      v51.size.height = v41;
      v43 = CGRectGetHeight(v51) * 0.5;
      v52.origin.x = v35;
      v52.origin.y = v37;
      v52.size.width = v39;
      v52.size.height = v41;
      v44 = CGRectGetHeight(v52) * 0.5;
      v53.origin.x = v35;
      v53.origin.y = v37;
      v53.size.width = v39;
      v53.size.height = v41;
      v3 = CGPathCreateWithRoundedRect(v53, v43, v44, 0);
      [v42 setShadowPath:v3];

      goto LABEL_12;
    }

    v25 = 0.0;
    goto LABEL_8;
  }
}

uint64_t sub_3ADA40()
{
  v1 = OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_visibleArtworkComponents;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (!(v2 >> 62))
  {
    result = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (result < 1)
    {
      return result;
    }

    goto LABEL_3;
  }

  result = sub_ABB060();
  if (result >= 1)
  {
LABEL_3:
    v4 = [v0 traitCollection];
    [v4 displayScale];

    return sub_AB3A00();
  }

  return result;
}

void sub_3ADB78()
{
  v1 = OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_peopleBadgeView;
  if (!*&v0[OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_peopleBadgeView])
  {
    v2 = v0;
    v3 = [objc_allocWithZone(type metadata accessor for PeopleBadgeView()) init];
    [v3 setHidden:1];
    *&v3[OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_artworkCachingReference] = *&v2[OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_artworkCachingReference];
    swift_retain_n();

    sub_3AE3A8();

    v4 = [objc_opt_self() blackColor];
    UIView.Shadow.init(color:opacity:radius:offset:)(v4, v6, 0.3, 3.0, 0.0, 2.0);
    UIView.shadow.setter(v6);

    [v2 addSubview:v3];
    v5 = *&v2[v1];
    *&v2[v1] = v3;
  }
}

id sub_3ADE0C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_socialPersons] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_artworkCachingReference] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_visibleArtworkComponents] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_reusableArtworkComponents] = _swiftEmptyArrayStorage;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  [v4 setBackgroundColor:v5];

  [v4 setUserInteractionEnabled:0];
  return v4;
}

void sub_3ADFC0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_visibleArtworkComponents;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3 >> 62)
  {
    v4 = sub_ABB060();
    v5 = &selRef__authenticateReturningError_;
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    v5 = &selRef__authenticateReturningError_;
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    goto LABEL_44;
  }

  v6 = OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_reusableArtworkComponents;

  v7 = 0;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = sub_3602B8(v7, v3);
    }

    else
    {
      v8 = *(v3 + 8 * v7 + 32);
    }

    [*(v8 + 112) v5[266]];
    swift_beginAccess();

    sub_AB9730();
    if (*(&dword_10 + (*&v0[v6] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v0[v6] & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    ++v7;
    sub_AB97F0();
    swift_endAccess();
  }

  while (v4 != v7);

LABEL_12:
  *&v0[v2] = _swiftEmptyArrayStorage;

  v9 = OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_socialPersons;
  v10 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_socialPersons];
  if (v10 >> 62)
  {
    if (sub_ABB060() < 1)
    {
      return;
    }
  }

  else if (*(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)) < 1)
  {
    return;
  }

  v3 = *&v1[v9];
  if (!(v3 >> 62))
  {
    v11 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      return;
    }

    goto LABEL_16;
  }

LABEL_44:
  v11 = sub_ABB060();
  if (!v11)
  {
    return;
  }

LABEL_16:
  v12 = v3 & 0xC000000000000001;

  if ((v3 & 0xC000000000000001) != 0)
  {
    v13 = sub_3602E8(0, v3);
  }

  else
  {
    if (!*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_46;
    }

    v13 = *(v3 + 32);
  }

  v14 = v13;
  v15 = *(sub_3AEA58(v13) + 112);
  if (([v15 isDescendantOfView:v1] & 1) == 0)
  {
    [v1 addSubview:v15];
  }

  [v15 v5[266]];

  if (v11 == 1)
  {
    goto LABEL_30;
  }

  if (v12)
  {
    v16 = sub_3602E8(1uLL, v3);
  }

  else
  {
    if (*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)) < 2uLL)
    {
      goto LABEL_46;
    }

    v16 = *(v3 + 40);
  }

  v17 = v16;
  v18 = *(sub_3AEA58(v16) + 112);
  if (([v18 isDescendantOfView:v1] & 1) == 0)
  {
    [v1 addSubview:v18];
  }

  [v18 v5[266]];

  if (v11 == 2)
  {
LABEL_30:

    return;
  }

  if (!v12)
  {
    if (*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)) >= 3uLL)
    {
      v19 = *(v3 + 48);
      goto LABEL_35;
    }

LABEL_46:
    __break(1u);
    return;
  }

  v19 = sub_3602E8(2uLL, v3);
LABEL_35:
  v20 = v19;
  v21 = *(sub_3AEA58(v19) + 112);
  if (([v21 isDescendantOfView:v1] & 1) == 0)
  {
    [v1 addSubview:v21];
  }

  [v21 v5[266]];
}

uint64_t sub_3AE3A8()
{
  v1 = OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_reusableArtworkComponents;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3 >> 62)
  {
    result = sub_ABB060();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_artworkCachingReference;

    v6 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = sub_3602B8(v6, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      ++v6;
      *(v7 + 16) = *(v0 + v5);
    }

    while (v4 != v6);
  }

  return result;
}

void sub_3AE50C()
{
  v1 = v0;
  v31.receiver = v0;
  v31.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v31, "layoutSubviews");
  v2 = OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_visibleArtworkComponents;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3 >> 62)
  {
    goto LABEL_18;
  }

  if (*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)) >= 1)
  {
    do
    {
      [v1 bounds];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v12 = [v1 traitCollection];
      [v12 displayScale];

      [v1 effectiveUserInterfaceLayoutDirection];
      v32.origin.x = v5;
      v32.origin.y = v7;
      v32.size.width = v9;
      v32.size.height = v11;
      MaxX = CGRectGetMaxX(v32);
      v2 = *&v1[v2];
      if (v2 >> 62)
      {
        v29 = MaxX;
        v30 = sub_ABB060();
        MaxX = v29;
        v14 = v30;
        if (!v30)
        {
          return;
        }
      }

      else
      {
        v14 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
        if (!v14)
        {
          return;
        }
      }

      v15 = MaxX - v11;

      while (1)
      {
        if (__OFSUB__(v14--, 1))
        {
          __break(1u);
LABEL_14:

          return;
        }

        if ((v2 & 0xC000000000000001) != 0)
        {
          v16 = sub_3602B8(v14, v2);
          goto LABEL_7;
        }

        if ((v14 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v14 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_17;
        }

        v16 = *(v2 + 32 + 8 * v14);

LABEL_7:
        v17 = v16[10];
        v18 = v16[11];
        v16[10] = v11;
        v16[11] = v11;
        sub_75614(v17, v18);
        v19 = sub_76368(0, 0, 1);
        v21 = v20;
        sub_ABA490();
        sub_76B28(v22, v23, v24, v25);
        v33.origin.y = 0.0;
        v33.origin.x = v15;
        v33.size.width = v19;
        v33.size.height = v21;
        MinX = CGRectGetMinX(v33);
        sub_AB3A00();
        v15 = MinX - v27;
        [v1 bringSubviewToFront:*(v16 + 14)];

        if (!v14)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    while (sub_ABB060() >= 1);
  }
}

uint64_t sub_3AE7E8()
{
  v1 = OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_visibleArtworkComponents;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_28;
  }

  v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
LABEL_3:

  if (v3)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_3602B8(v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          v3 = sub_ABB060();
          goto LABEL_3;
        }

        v5 = *(v2 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_12;
        }
      }

      [*(v5 + 112) clearArtworkCatalogs];
      *(v5 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) = 0;
      *(v5 + 200) = 0;
      *(v5 + 208) = 0;

      ++v4;
    }

    while (v6 != v3);
  }

  v7 = OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_reusableArtworkComponents;
  swift_beginAccess();
  v2 = *(v0 + v7);
  if (v2 >> 62)
  {
    v0 = sub_ABB060();
  }

  else
  {
    v0 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  }

  if (v0)
  {
    v8 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v9 = sub_3602B8(v8, v2);
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v8 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_27;
        }

        v9 = *(v2 + 8 * v8 + 32);

        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_24:
          __break(1u);
        }
      }

      [*(v9 + 112) clearArtworkCatalogs];
      *(v9 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) = 0;
      *(v9 + 200) = 0;
      *(v9 + 208) = 0;

      ++v8;
    }

    while (v10 != v0);
  }
}

uint64_t sub_3AEA58(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 64;
  __chkstk_darwin(v6);
  v10 = v49 - v9 + 64;
  v11 = OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_reusableArtworkComponents;
  swift_beginAccess();
  v12 = *(v1 + v11);
  if (v12 >> 62)
  {
    if (sub_ABB060())
    {
LABEL_3:
      if ((v12 & 0xC000000000000001) != 0)
      {

        v2 = sub_3602B8(0, v12);
      }

      else
      {
        if (!*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_30;
        }

        v2 = *(v12 + 32);
      }

      v13 = *(v2 + 112);

      [v13 setHidden:0];
      swift_beginAccess();
      v12 = *(v3 + v11);
      v10 = (v12 >> 62);
      if (!(v12 >> 62))
      {
        if (*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_8;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if ((v12 & 0x8000000000000000) != 0)
      {
        v8 = *(v3 + v11);
      }

      else
      {
        v8 = (v12 & 0xFFFFFFFFFFFFFF8);
      }

      result = sub_ABB060();
      if (!result)
      {
        goto LABEL_44;
      }

      if (sub_ABB060())
      {
LABEL_8:
        if ((v12 & 0xC000000000000001) == 0)
        {
          if (*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
          {

            if (!v10)
            {
LABEL_11:
              result = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
LABEL_34:
              if (result)
              {
                sub_1AF130(0, 1);
                swift_endAccess();

                goto LABEL_36;
              }

              __break(1u);
LABEL_44:
              __break(1u);
              return result;
            }

LABEL_33:
            result = sub_ABB060();
            goto LABEL_34;
          }

          __break(1u);
          goto LABEL_42;
        }

LABEL_32:
        sub_3602B8(0, v12);
        if (!v10)
        {
          goto LABEL_11;
        }

        goto LABEL_33;
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }
  }

  else if (*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  type metadata accessor for ArtworkComponentImageView();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v2 = sub_80104(v15);

  v16 = *(v2 + 144);
  *(v2 + 144) = 2;
  if (v16 == 2)
  {
  }

  else
  {
    v17 = *(v2 + 112);

    v18 = [v17 image];
    sub_788B8(v18);
  }

  if (qword_DE6C90 != -1)
  {
LABEL_42:
    swift_once();
  }

  v19 = qword_E718D0;
  v20 = *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_explicitBackgroundColor);
  *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_explicitBackgroundColor) = qword_E718D0;
  if (v20)
  {
    sub_13C80(0, qword_DFAAC0);
    v21 = v19;
    v20 = v20;
    v22 = sub_ABA790();

    if (v22)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v23 = v19;
  }

  sub_79590();
LABEL_22:

  *(v2 + 24) = 0x70756B636F6CLL;
  *(v2 + 32) = 0xE600000000000000;

  *(v2 + 16) = *(v3 + OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_artworkCachingReference);

  v24 = [objc_opt_self() whiteColor];
  UIView.Border.init(thickness:color:)();
  sub_75E64(v26, v25 & 1, v27);
  sub_ABA670();
  v28 = sub_ABA680();
  (*(*(v28 - 8) + 56))(v10, 0, 1, v28);
  v29 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  sub_15F84(v2 + v29, v8, &unk_DFFBC0);
  swift_beginAccess();
  sub_8A01C(v10, v2 + v29);
  swift_endAccess();
  sub_75AE8(v8);
  sub_12E1C(v8, &unk_DFFBC0);
  sub_12E1C(v10, &unk_DFFBC0);
LABEL_36:
  v30 = [a1 artworkCatalog];
  if (!v30)
  {
    v30 = MPModelPerson.monogramArtworkCatalog.getter();
  }

  sub_74EA4(v30);
  v31 = Artwork.Placeholder.person.unsafeMutableAddressor();
  v32 = *v31;
  v33 = v31[1];
  v34 = v31[2];
  v35 = v31[3];
  v36 = *(v31 + 2);
  v37 = *(v2 + 184);
  v38 = *(v2 + 152);
  v49[1] = *(v2 + 168);
  v49[2] = v37;
  v49[0] = v38;
  *(v2 + 152) = v32;
  *(v2 + 160) = v33;
  *(v2 + 168) = v34;
  *(v2 + 176) = v35;
  *(v2 + 184) = v36;
  v39 = v34;
  v40 = v35;
  v41 = v32;
  v42 = v33;
  v43 = v39;
  v44 = v40;
  v45 = v41;
  v46 = v42;
  sub_75948(v49);
  sub_12E1C(v49, &unk_DF8690);

  v47 = OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_visibleArtworkComponents;
  swift_beginAccess();
  sub_AB9730();
  if (*(&dword_10 + (*(v3 + v47) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v3 + v47) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  swift_endAccess();
  return v2;
}

void *sub_3AF124(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v29 = a3;
  v27 = sub_AB3820();
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v26 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _swiftEmptyArrayStorage;
  if (!a1)
  {
    return result;
  }

  v7 = a1;
  v30 = a1 & 0xFFFFFFFFFFFFFF8;
  v31 = _swiftEmptyArrayStorage;
  if (!(a1 >> 62))
  {
    v8 = *(v30 + 16);
    if (v8)
    {
      goto LABEL_4;
    }

    return _swiftEmptyArrayStorage;
  }

LABEL_22:
  v8 = sub_ABB060();
  if (!v8)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_4:
  v9 = 0;
  v10 = v7 & 0xC000000000000001;
  v24 = (v4 + 1);
  result = _swiftEmptyArrayStorage;
  v11 = &selRef_setSubtitleText_;
  v25 = v7;
  do
  {
    v23 = result;
    for (i = v9; ; ++i)
    {
      if (v10)
      {
        v13 = sub_361668(i, v7);
      }

      else
      {
        if (i >= *(v30 + 16))
        {
          goto LABEL_21;
        }

        v13 = *(v7 + 8 * i + 32);
      }

      v14 = v13;
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (![v13 v11[500]])
      {
        v15 = [v14 indexPath];
        v16 = v10;
        v17 = v26;
        sub_AB3790();
        v18 = sub_AB9260();
        isa = sub_AB3770().super.isa;
        v4 = [objc_opt_self() layoutAttributesForSupplementaryViewOfKind:v18 withIndexPath:isa];
        v20 = v17;
        v10 = v16;
        v11 = &selRef_setSubtitleText_;
        (*v24)(v20, v27);

        v7 = v25;
        if (v4)
        {
          break;
        }
      }

      if (v9 == v8)
      {
        return v23;
      }
    }

    v21 = v4;
    [v14 frame];
    [v21 setFrame:?];

    v4 = &v31;
    sub_AB9730();
    if (*(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v31 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
    result = v31;
  }

  while (v9 != v8);
  return result;
}

uint64_t sub_3AF404()
{
  v1 = [*v0 accessorySocialPersons];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_13C80(0, &qword_DED7C0);
  v3 = sub_AB9760();

  return v3;
}

void sub_3AF4D0(char *a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_15F84(a2, &v30, &unk_E04520);
  v7 = *(&v31 + 1);
  if (*(&v31 + 1))
  {
    v8 = v32;
    __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
    v9 = (*(v8 + 8))(v7, v8);
    __swift_destroy_boxed_opaque_existential_0(&v30);
    if (v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_12E1C(&v30, &unk_E04520);
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_6:
  v10 = *&a1[OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_accessorySocialPersons];
  *&a1[OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_accessorySocialPersons] = v9;

  if ((sub_12C524(v10, v9) & 1) == 0)
  {
    sub_3AD59C();
    [a1 setNeedsLayout];
  }

  if (v9 < 0 || (v9 & 0x4000000000000000) != 0)
  {
    v11 = sub_ABB060();
  }

  else
  {
    v11 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
  }

  if (v11)
  {
    v12 = a3 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    ObjectType = swift_getObjectType();
    v14 = *((*(a4 + 8))(ObjectType, a4) + 112);

    v15 = v14;
    v16 = [v15 superview];
    v17 = v15;
    if (v16)
    {
      v18 = v16;
      [a3 layoutIfNeeded];
      [v18 bounds];
      [v15 frame];

      sub_ABA4D0();
      sub_AB9E70();
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v27 = &a1[OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_overlayMargins];
      type metadata accessor for UIEdgeInsets(0);
      v28 = *v27;
      v29 = *(v27 + 1);
      *v27 = v20;
      *(v27 + 1) = v22;
      *(v27 + 2) = v24;
      *(v27 + 3) = v26;
      v31 = v29;
      v30 = v28;
      if (sub_AB38D0())
      {
        [a1 setNeedsLayout];
      }

      v17 = v18;
    }
  }
}

id sub_3AF7D0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_accessorySocialPersons] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_artworkCachingReference] = 0;
  v4 = &v1[OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_overlayMargins];
  v5 = *&UIEdgeInsetsZero.bottom;
  *v4 = *&UIEdgeInsetsZero.top;
  *(v4 + 1) = v5;
  *&v1[OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_peopleBadgeView] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "initWithCoder:", a1);
}

void JSSubscriptionPurchaseLoadingViewController.fadeOut(_:)(id (*a1)(), uint64_t a2)
{
  [*&v2[OBJC_IVAR____TtC16MusicApplication43JSSubscriptionPurchaseLoadingViewController_loadingView] setAlpha:1.0];
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  v13 = sub_3B00F8;
  v14 = v5;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1B5EB4;
  v12 = &block_descriptor_123;
  v6 = _Block_copy(&v9);
  v7 = v2;

  if (a1)
  {
    v13 = a1;
    v14 = a2;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v11 = sub_1811AC;
    v12 = &block_descriptor_3_1;
    v8 = _Block_copy(&v9);
  }

  else
  {
    v8 = 0;
  }

  [objc_opt_self() animateWithDuration:v6 animations:v8 completion:0.25];
  _Block_release(v8);
  _Block_release(v6);
}

char *_s16MusicApplication43JSSubscriptionPurchaseLoadingViewControllerC07loadingF033_E9A8DE5BD8B377223C15E85C975C1B40LL0A6CoreUI0eF0Cvpfi_0()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  __chkstk_darwin(v1 - 8);
  sub_AB91E0();
  sub_AB3550();
  v2 = sub_AB9320();
  v4 = v3;
  v5 = objc_allocWithZone(type metadata accessor for LoadingView());
  v6 = LoadingView.init(title:style:usesSubtitleTextColor:)(v2, v4, 0x100000000, 0);
  LoadingView.titlePosition.setter(2u);
  v7 = [objc_opt_self() boldSystemFontOfSize:17.0];
  LoadingView.font.setter(v7);
  v8 = v6;
  [v8 setFrame:{0.0, 0.0, 275.0, 80.0}];
  if (qword_DE6C58 != -1)
  {
    swift_once();
  }

  [v8 setBackgroundColor:qword_E71898];
  v9 = [v8 layer];

  [v9 setCornerRadius:10.0];
  return v8;
}

void JSSubscriptionPurchaseLoadingViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC16MusicApplication43JSSubscriptionPurchaseLoadingViewController_loadingView;
  *&v4[v8] = _s16MusicApplication43JSSubscriptionPurchaseLoadingViewControllerC07loadingF033_E9A8DE5BD8B377223C15E85C975C1B400A6CoreUI0eF0Cvpfi_0();
  if (a2)
  {

    v9 = sub_AB9260();
  }

  else
  {
    v9 = 0;
  }

  v16.receiver = v4;
  v16.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v16, "initWithNibName:bundle:", v9, a3);

  v11 = v10;
  v12 = [v11 view];
  if (v12)
  {
    v13 = v12;
    [v12 setUserInteractionEnabled:0];

    [v11 setModalPresentationStyle:4];
    v14 = [v11 view];

    if (v14)
    {

      v15 = [objc_opt_self() clearColor];
      [v14 setBackgroundColor:v15];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall JSSubscriptionPurchaseLoadingViewController.viewDidLoad()()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC16MusicApplication43JSSubscriptionPurchaseLoadingViewController_loadingView];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 center];
    [v1 setCenter:?];

    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      [v4 addSubview:v1];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall JSSubscriptionPurchaseLoadingViewController.viewDidLayoutSubviews()()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC16MusicApplication43JSSubscriptionPurchaseLoadingViewController_loadingView];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 center];
    [v1 setCenter:?];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_3B00C0()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_123(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall JSSubscriptionPurchaseLoadingViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewWillAppear:", a1);
  [*&v1[OBJC_IVAR____TtC16MusicApplication43JSSubscriptionPurchaseLoadingViewController_loadingView] setAlpha:0.0];
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v7[4] = sub_3B0258;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1B5EB4;
  v7[3] = &block_descriptor_9_3;
  v5 = _Block_copy(v7);
  v6 = v1;

  [v3 animateWithDuration:v5 animations:0.25];
  _Block_release(v5);
}

Swift::Void __swiftcall JSSubscriptionPurchaseLoadingViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewWillDisappear:", a1);
  [*&v1[OBJC_IVAR____TtC16MusicApplication43JSSubscriptionPurchaseLoadingViewController_loadingView] setAlpha:1.0];
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v7[4] = sub_3B04AC;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1B5EB4;
  v7[3] = &block_descriptor_16_2;
  v5 = _Block_copy(v7);
  v6 = v1;

  [v3 animateWithDuration:v5 animations:0 completion:0.25];
  _Block_release(v5);
}

uint64_t sub_3B04BC(void *a1)
{
  swift_unknownObjectWeakInit();
  *(v1 + 24) = 0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 2;
  swift_unknownObjectWeakAssign();
  v3 = sub_112FC(&off_CEFB48);
  v4 = swift_allocObject();
  swift_weakInit();

  v5 = KeyboardObserver.init(options:update:)(v3, sub_3B24D0, v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = *(v1 + 96);
  *(v1 + 96) = v5;
  *(v1 + 104) = v7;
  *(v1 + 112) = v9;
  *(v1 + 120) = v11;
  sub_3B24D8(v12);
  return v1;
}

uint64_t sub_3B05C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 176);
    v8[2] = *(result + 160);
    v8[3] = v4;
    v8[4] = *(result + 192);
    v9 = *(result + 208);
    v5 = *(result + 144);
    v8[0] = *(result + 128);
    v8[1] = v5;
    v6 = *(a2 + 48);
    *(result + 160) = *(a2 + 32);
    *(result + 176) = v6;
    *(result + 192) = *(a2 + 64);
    *(result + 208) = *(a2 + 80);
    v7 = *(a2 + 16);
    *(result + 128) = *a2;
    *(result + 144) = v7;
    sub_3B1F38(v8);
  }

  return result;
}

uint64_t sub_3B0664()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    [v1 removeFromSuperview];
  }

  swift_unknownObjectWeakDestroy();
  sub_17654(*(v0 + 32));
  sub_17654(*(v0 + 48));
  sub_17654(*(v0 + 64));

  sub_3B24D8(*(v0 + 96));

  return swift_deallocClassInstance();
}

void sub_3B0720(char a1, char a2)
{
  v3 = v2;
  v6 = a1 & 1;
  v7 = *(*v2 + 208);
  if ((v7() & 1) == (a1 & 1))
  {
    if (a1)
    {
      v16 = *(v2 + 88);
      if (v16)
      {
        v17 = v16;
        sub_3B1D0C(v85);
        sub_3B15CC(v85);
        sub_57748(v85);
      }

      sub_3B18B4();
    }

    return;
  }

  *(v2 + 24) = v6;
  v8 = *(v2 + 88);
  if (!v8)
  {
    v9 = [objc_allocWithZone(type metadata accessor for InformativeView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    if (a1)
    {
      goto LABEL_4;
    }

LABEL_22:
    v18 = v8;
    v15 = v3[6];
    if (a2)
    {
      goto LABEL_23;
    }

    goto LABEL_27;
  }

  v9 = v3[11];
  if ((a1 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_4:
  v10 = v3[11];
  v11 = v8;
  v12 = v9 != v10 || v10 == 0;
  if (v12 && (a2 & 1) != 0)
  {
    [v9 setAlpha:0.0];
    v10 = v3[11];
  }

  v3[11] = v9;
  v13 = v9;
  sub_3B1D0C(v85);
  sub_3B15CC(v85);
  sub_57748(v85);

  sub_3B18B4();
  if (v10)
  {
    v14 = v3[11];
    if (!v14 || v14 != v10)
    {
      [v10 removeFromSuperview];
    }

    v15 = v3[6];
    if ((a2 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_23:
    if (v15)
    {
      v71 = v9;

      v67 = v15;
      v19 = v15(v3);
      v69 = v7;
      v66 = v6;
      if ((v19 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_ABAC10();
        sub_74390();
        sub_3B2528();
        sub_AB9BC0();
        v21 = v80;
        v20 = v81;
        v22 = v82;
        v23 = v83;
        v24 = v84;
      }

      else
      {
        v31 = -1 << *(v19 + 32);
        v20 = v19 + 56;
        v22 = ~v31;
        v32 = -v31;
        if (v32 < 64)
        {
          v33 = ~(-1 << v32);
        }

        else
        {
          v33 = -1;
        }

        v24 = v33 & *(v19 + 56);
        v23 = 0;
      }

      v65 = v22;
      v34 = (v22 + 64) >> 6;
      if (a1)
      {
        v35 = 1.0;
      }

      else
      {
        v35 = 0.0;
      }

      if (v21 < 0)
      {
        goto LABEL_44;
      }

      while (1)
      {
        v36 = v23;
        v37 = v24;
        v38 = v23;
        if (!v24)
        {
          break;
        }

LABEL_42:
        v39 = (v37 - 1) & v37;
        v40 = *(*(v21 + 48) + ((v38 << 9) | (8 * __clz(__rbit64(v37)))));
        if (!v40)
        {
LABEL_48:
          sub_2BB88();

          sub_17654(v67);
          v7 = v69;
          v9 = v71;
          v6 = v66;
          goto LABEL_49;
        }

        while (1)
        {
          [v40 setHidden:{0, v65}];
          [v40 setAlpha:v35];

          v23 = v38;
          v24 = v39;
          if ((v21 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_44:
          v41 = sub_ABAC90();
          if (v41)
          {
            v79 = v41;
            sub_74390();
            swift_unknownObjectRetain();
            swift_dynamicCast();
            v40 = aBlock;
            swift_unknownObjectRelease();
            v38 = v23;
            v39 = v24;
            if (aBlock)
            {
              continue;
            }
          }

          goto LABEL_48;
        }
      }

      while (1)
      {
        v38 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        if (v38 >= v34)
        {
          goto LABEL_48;
        }

        v37 = *(v20 + 8 * v38);
        ++v36;
        if (v37)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
      goto LABEL_82;
    }

LABEL_49:
    if (a1)
    {
      v42 = 0x10000;
    }

    else
    {
      v42 = 0x20000;
    }

    v43 = objc_opt_self();
    v44 = swift_allocObject();
    *(v44 + 16) = v3;
    *(v44 + 24) = v6;
    *(v44 + 32) = v9;
    v77 = sub_3B2624;
    v78 = v44;
    aBlock = _NSConcreteStackBlock;
    v74 = 1107296256;
    v75 = sub_1B5EB4;
    v76 = &block_descriptor_124;
    v45 = _Block_copy(&aBlock);
    v46 = v9;

    v77 = sub_3B264C;
    v78 = v3;
    aBlock = _NSConcreteStackBlock;
    v74 = 1107296256;
    v75 = sub_1811AC;
    v76 = &block_descriptor_35_1;
    v47 = _Block_copy(&aBlock);

    [v43 animateWithDuration:v42 delay:v45 options:v47 animations:0.25 completion:0.0];
    _Block_release(v47);
    _Block_release(v45);
    goto LABEL_75;
  }

  v15 = v3[6];
  if (a2)
  {
    goto LABEL_23;
  }

LABEL_27:
  if (v15)
  {
    v70 = v7;
    v72 = v9;

    v68 = v15;
    v25 = v15(v3);
    if ((v25 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_ABAC10();
      sub_74390();
      sub_3B2528();
      sub_AB9BC0();
      v27 = aBlock;
      v26 = v74;
      v28 = v75;
      v29 = v76;
      v30 = v77;
    }

    else
    {
      v48 = -1 << *(v25 + 32);
      v26 = v25 + 56;
      v28 = ~v48;
      v49 = -v48;
      if (v49 < 64)
      {
        v50 = ~(-1 << v49);
      }

      else
      {
        v50 = -1;
      }

      v30 = v50 & *(v25 + 56);
      v29 = 0;
    }

    v51 = (v28 + 64) >> 6;
    if (v27 < 0)
    {
      goto LABEL_64;
    }

    while (1)
    {
      v52 = v29;
      v53 = v30;
      v54 = v29;
      if (!v30)
      {
        break;
      }

LABEL_62:
      v55 = (v53 - 1) & v53;
      v56 = *(*(v27 + 48) + ((v54 << 9) | (8 * __clz(__rbit64(v53)))));
      if (!v56)
      {
LABEL_68:
        sub_2BB88();

        sub_17654(v68);
        v7 = v70;
        v9 = v72;
        goto LABEL_69;
      }

      while (1)
      {
        [v56 setHidden:a1 & 1];
        [v56 setAlpha:1.0];

        v29 = v54;
        v30 = v55;
        if ((v27 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_64:
        v57 = sub_ABAC90();
        if (v57)
        {
          v79 = v57;
          sub_74390();
          swift_unknownObjectRetain();
          swift_dynamicCast();
          v56 = v80;
          swift_unknownObjectRelease();
          v54 = v29;
          v55 = v30;
          if (v80)
          {
            continue;
          }
        }

        goto LABEL_68;
      }
    }

    while (1)
    {
      v54 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      if (v54 >= v51)
      {
        goto LABEL_68;
      }

      v53 = *(v26 + 8 * v54);
      ++v52;
      if (v53)
      {
        goto LABEL_62;
      }
    }

LABEL_82:
    __break(1u);
    return;
  }

LABEL_69:
  if ((a1 & 1) == 0)
  {
    v58 = v3[11];
    v3[11] = 0;
    sub_3B18B4();
    if (v58)
    {
      v59 = v3[11];
      if (!v59 || v59 != v58)
      {
        [v58 removeFromSuperview];
      }
    }
  }

LABEL_75:
  v60 = (*(*v3 + 160))();
  if (v60)
  {
    v61 = v60;
    if (v7())
    {
      v79 = v61;
      swift_getKeyPath();
      swift_allocObject();
      swift_weakInit();
      v62 = sub_AB3080();

      v63 = v3[10];
      v3[10] = v62;

      return;
    }
  }

  v64 = v3[10];
  v3[10] = 0;
}

void sub_3B0F7C(uint64_t a1, char a2, id a3)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    v25 = a3;

    v6 = v4(a1);
    v7 = v6;
    if ((v6 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_ABAC10();
      sub_74390();
      sub_3B2528();
      sub_AB9BC0();
      v9 = v27;
      v8 = v28;
      v11 = v29;
      v10 = v30;
      v12 = v31;
    }

    else
    {
      v13 = -1 << *(v6 + 32);
      v8 = v6 + 56;
      v11 = ~v13;
      v14 = -v13;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      else
      {
        v15 = -1;
      }

      v12 = v15 & *(v6 + 56);

      v10 = 0;
      v9 = v7;
    }

    v16 = (v11 + 64) >> 6;
    v24 = a2;
    if (a2)
    {
      v17 = 0.0;
    }

    else
    {
      v17 = 1.0;
    }

    if (v9 < 0)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v18 = v10;
      v19 = v12;
      v20 = v10;
      if (!v12)
      {
        break;
      }

LABEL_16:
      v21 = (v19 - 1) & v19;
      v22 = *(*(v9 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
      if (!v22)
      {
LABEL_22:
        sub_2BB88();

        sub_17654(v4);
        a3 = v25;
        a2 = v24;
        goto LABEL_23;
      }

      while (1)
      {
        [v22 setAlpha:v17];

        v10 = v20;
        v12 = v21;
        if ((v9 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_18:
        if (sub_ABAC90())
        {
          sub_74390();
          swift_unknownObjectRetain();
          swift_dynamicCast();
          v22 = v26;
          swift_unknownObjectRelease();
          v20 = v10;
          v21 = v12;
          if (v26)
          {
            continue;
          }
        }

        goto LABEL_22;
      }
    }

    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v16)
      {
        goto LABEL_22;
      }

      v19 = *(v8 + 8 * v20);
      ++v18;
      if (v19)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_23:
    v23 = 0.0;
    if (a2)
    {
      v23 = 1.0;
    }

    [a3 setAlpha:v23];
  }
}
uint64_t sub_1001DE490()
{
  v0 = swift_allocObject();
  *(v0 + 16) = _swiftEmptyArrayStorage;
  v1 = (v0 + 16);

  sub_10000C518(&unk_10092CB30);
  sub_1000D5C0C();
  sub_1001E31B8();
  sub_1007542E4();

  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double ProductLockupLayout.offerButtonMinYDistanceFromBottom(fitting:in:)(void *a1)
{
  v2 = v1;
  v4 = sub_100754724();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ProductLockupLayout(0);
  sub_10000C888((v1 + v8[11]), *(v1 + v8[11] + 24));
  sub_100750414();
  v10 = rint(v9);
  v29 = type metadata accessor for ProductLockupLayout.Metrics(0);
  sub_10000C888((v2 + *(v29 + 96)), *(v2 + *(v29 + 96) + 24));
  sub_100536120();
  sub_100750564();
  v12 = v11;
  v13 = *(v5 + 8);
  v13(v7, v4);
  sub_10000C888((v2 + 72), *(v2 + 96));
  sub_100536120();
  sub_100750564();
  v15 = v14;
  v13(v7, v4);
  swift_getObjectType();
  v16 = [a1 traitCollection];
  v17 = sub_1007537E4();

  if ((v17 & 1) == 0 && *(v2 + v8[15]) == 1)
  {
    v18 = sub_1001E0FC8(a1, v2);
    v19 = (v2 + v8[12]);
    sub_10000C888(v19, v19[3]);
    if ((sub_1007503A4() & 1) == 0)
    {
      sub_10000C888(v19, v19[3]);
      sub_100750404();
      v21 = v20;
      v23 = v22;
      sub_10000C888((v2 + *(v29 + 76)), *(v2 + *(v29 + 76) + 24));
      sub_100536120();
      sub_100750564();
      v25 = v24;
      v13(v7, v4);
      v26 = v25 - v23;
      if (v25 - v23 <= 0.0)
      {
        v26 = 0.0;
      }

      v10 = v10 + v21 + v26;
    }

    if (v10 <= v18)
    {
      v10 = v18;
    }
  }

  return v12 + v15 + v10;
}

uint64_t sub_1001DE908(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v10 = result;
    swift_beginAccess();
    v11 = *(a8 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 16) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1002554F8(0, *(v11 + 2) + 1, 1, v11);
      *(a8 + 16) = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1002554F8((v13 > 1), v14 + 1, 1, v11);
    }

    *(v11 + 2) = v14 + 1;
    v15 = &v11[16 * v14];
    *(v15 + 4) = v10;
    *(v15 + 5) = a2;
    *(a8 + 16) = v11;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1001DE9EC(CGFloat a1, CGFloat a2, CGFloat a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, double a17, double a18, double a19, CGFloat a20, CGFloat a21, CGFloat a22, CGFloat a23)
{
  v159 = a16;
  v154 = a15;
  v171 = *&a11;
  v169 = a8;
  v151 = a6;
  v168 = a4;
  v165 = a3;
  v163 = a2;
  v152 = a1;
  v29 = a22;
  v166 = a18;
  v30 = a17;
  *&v31 = COERCE_DOUBLE(sub_100754724());
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v142 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a14 - 8);
  __chkstk_darwin(v36);
  v38 = &v142 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v39);
  v156 = v42;
  v43 = *(v42 + 16);
  v155 = &v142 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = a13;
  v43(v40);
  v158 = v35;
  v44 = *(v35 + 16);
  v157 = v38;
  v161 = a14;
  v44(v38, a10, a14);
  v45 = type metadata accessor for ProductLockupLayout(0);
  v46 = v45[10];
  sub_100016B4C(a12 + v46, &v173, &unk_100928A00);
  v162 = a20;
  v164 = a7;
  if (v174)
  {
    sub_100012160(&v173, &v175);
    v47 = type metadata accessor for ProductLockupLayout.Metrics(0);
    sub_10000C888((a12 + *(v47 + 92)), *(a12 + *(v47 + 92) + 24));
    sub_100536120();
    v48 = v171;
    sub_100750564();
    v153 = a17;
    v50 = v49;
    (*(v32 + 8))(v34, v31);
    v177.origin.x = v152;
    v177.origin.y = v163;
    v177.size.width = v165;
    v177.size.height = v168;
    MaxY = CGRectGetMaxY(v177);
    v52 = v151;
    v53 = MaxY - v151;
    if (v53 > v50 + a19)
    {
      v54 = v53;
    }

    else
    {
      v54 = v50 + a19;
    }

    v178.origin.x = a20;
    v178.origin.y = a21;
    v178.size.width = a22;
    v178.size.height = a23;
    v55 = CGRectGetMaxX(v178) - a5;
    sub_10000C888(&v175, v176);
    sub_100753B24();
    sub_100750394();
    v179.origin.x = v55;
    v179.origin.y = v54;
    a7 = v164;
    v30 = v153;
    v179.size.width = a5;
    v179.size.height = v52;
    v29 = a22;
    v168 = CGRectGetMaxY(v179);
    sub_10000C620(&v175);
    v56 = v162;
  }

  else
  {
    sub_10000C8CC(&v173, &unk_100928A00);
    v180.origin.x = v152;
    v180.origin.y = v163;
    v180.size.width = v165;
    v180.size.height = v168;
    v57 = CGRectGetMaxY(v180);
    if (v57 <= a19)
    {
      v57 = a19;
    }

    v168 = v57;
    v56 = a20;
    v48 = v171;
  }

  v170 = a21;
  v167 = v29;
  v181.origin.x = v56;
  v181.origin.y = a21;
  v181.size.width = v29;
  v181.size.height = a23;
  MaxX = CGRectGetMaxX(v181);
  v182.origin.x = a7;
  v59 = v169;
  v182.origin.y = v169;
  v182.size.width = v30;
  v60 = v166;
  v182.size.height = v166;
  v171 = MaxX - CGRectGetWidth(v182);
  v163 = COERCE_DOUBLE(type metadata accessor for ProductLockupLayout.Metrics(0));
  sub_10000C888((a12 + *(*&v163 + 72)), *(a12 + *(*&v163 + 72) + 24));
  sub_100536120();
  sub_100750564();
  v62 = v61;
  v63 = *(v32 + 8);
  v150 = v34;
  v152 = *&v31;
  *&v151 = v32 + 8;
  v149 = v63;
  v63(v34, v31);
  v64 = v168 + v62;
  v183.origin.x = a7;
  v183.origin.y = v59;
  v183.size.width = v30;
  v183.size.height = v60;
  Width = CGRectGetWidth(v183);
  v184.origin.x = a7;
  v184.origin.y = v59;
  v66 = v30;
  v184.size.width = v30;
  v184.size.height = v60;
  Height = CGRectGetHeight(v184);
  v68 = (a12 + v45[11]);
  v69 = v48;
  sub_10000C888(v68, v68[3]);
  v172 = a23;
  v168 = Height;
  sub_100753B24();
  sub_100750394();
  sub_10000C888(v68, v68[3]);
  v70 = sub_1007503A4();
  sub_10000C888(v68, v68[3]);
  if ((sub_1007503A4() & 1) == 0)
  {
    v164 = v171;
    v169 = v64;
    v66 = Width;
    v166 = v168;
  }

  v71 = (a12 + v45[12]);
  sub_10000C888(v71, v71[3]);
  v72 = sub_1007503A4();
  v165 = v64;
  if (v72)
  {
    sub_10000C888(v71, v71[3]);
    sub_100750394();
    v73 = *&v163;
    v74 = v167;
    v75 = v172;
    v76 = v170;
    v77 = v56;
  }

  else
  {
    v73 = *&v163;
    v148 = Width;
    if (v70)
    {
      v78 = v56;
      sub_100016B4C(a12 + v46, &v175, &unk_100928A00);
      v79 = v176;
      sub_10000C8CC(&v175, &unk_100928A00);
      v153 = v66;
      v80 = v164;
      if (v79)
      {
        sub_10000C888((a12 + v73[20]), *(a12 + v73[20] + 24));
        v81 = v150;
        sub_100536120();
        sub_100750564();
        v147 = v82;
        v149(v81, *&v152);
      }

      else
      {
        v147 = 0.0;
      }

      v94 = v169;
      sub_100016B4C(a12 + v46, &v175, &unk_100928A00);
      if (v176)
      {
        sub_10000C888(&v175, v176);
        v95 = v167;
        v96 = v172;
        sub_100750414();
        v145 = v97;
        sub_10000C620(&v175);
      }

      else
      {
        sub_10000C8CC(&v175, &unk_100928A00);
        v145 = 0;
        v96 = v172;
        v95 = v167;
      }

      v187.origin.x = v78;
      v187.origin.y = v170;
      v187.size.width = v95;
      v187.size.height = v96;
      CGRectGetWidth(v187);
      v188.origin.x = v80;
      v188.origin.y = v94;
      v169 = v94;
      v98 = v153;
      v188.size.width = v153;
      v99 = v166;
      v188.size.height = v166;
      CGRectGetWidth(v188);
      v100 = v73[19];
      v146 = a12;
      v101 = a12 + v100;
      v144 = a12 + v100;
      v102 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
      v103 = (v101 + *(v102 + 28));
      v104 = v103[3];
      v143 = v103;
      sub_10000C888(v103, v104);
      v105 = v150;
      sub_100536120();
      sub_100750564();
      v106 = v80;
      v107 = v152;
      v108 = v149;
      v149(v105, *&v152);
      sub_10000C888((v144 + *(v102 + 24)), *(v144 + *(v102 + 24) + 24));
      sub_100536120();
      sub_100750564();
      v108(v105, *&v107);
      v109 = v98;
      sub_10000C888(v71, v71[3]);
      v75 = v96;
      v110 = v169;
      sub_100750404();
      v112 = v111;
      v189.origin.x = v106;
      v189.origin.y = v110;
      v189.size.width = v109;
      v189.size.height = v99;
      CGRectGetMidY(v189);
      sub_10000C888(v68, v68[3]);
      v113 = sub_1007503A4();
      v147 = v112;
      if ((v113 & 1) != 0 || (v190.origin.x = v106, v190.origin.y = v110, v190.size.width = v109, v190.size.height = v99, CGRectGetHeight(v190) < v112))
      {
        v191.size.width = v109;
        v114 = v106;
        v191.origin.x = v106;
        v191.origin.y = v110;
        v191.size.height = v99;
        CGRectGetMinY(v191);
      }

      else
      {
        v114 = v106;
      }

      sub_10000C888(v68, v68[3]);
      v115 = sub_1007503A4();
      v73 = *&v163;
      a12 = v146;
      v116 = v114;
      v117 = v110;
      v118 = v153;
      v119 = v166;
      if (v115)
      {
        CGRectGetMinX(*&v116);
      }

      else
      {
        CGRectGetMaxX(*&v116);
        sub_10000C888(v143, v143[3]);
        v120 = v150;
        sub_100536120();
        sub_100750564();
        v149(v120, *&v152);
      }

      v76 = v170;
      v77 = v162;
    }

    else
    {
      v83 = v164;
      v84 = v66;
      sub_10000C888(v71, v71[3]);
      sub_100750404();
      v86 = v85;
      sub_10000C888((a12 + v73[19]), *(a12 + v73[19] + 24));
      v147 = v86;
      sub_100750584();
      v185.origin.x = v83;
      v87 = v169;
      v185.origin.y = v169;
      v185.size.width = v84;
      v88 = v166;
      v185.size.height = v166;
      CGRectGetMinX(v185);
      v186.origin.x = v83;
      v186.origin.y = v87;
      v186.size.width = v84;
      v186.size.height = v88;
      CGRectGetWidth(v186);
      sub_10000C888(v68, v68[3]);
      v89 = sub_1007503A4();
      v90 = v83;
      v91 = v87;
      v92 = v84;
      v93 = v88;
      if (v89)
      {
        CGRectGetMinY(*&v90);
      }

      else
      {
        CGRectGetMaxY(*&v90);
      }

      v76 = v170;
      v77 = v162;
      v75 = v172;
    }

    sub_10000C888(v71, v71[3]);
    v74 = v167;
    sub_100753B24();
    sub_100750394();
    Width = v148;
  }

  v192.origin.x = v77;
  v192.origin.y = v76;
  v192.size.width = v74;
  v192.size.height = v75;
  v121 = CGRectGetWidth(v192);
  v193.origin.x = v171;
  v193.origin.y = v165;
  v193.size.width = Width;
  v193.size.height = v168;
  v122 = v74;
  v123 = v121 - CGRectGetWidth(v193);
  *&v173 = v69;
  sub_10000C518(&unk_1009249B0);
  sub_100743464();
  if (v123 - v175 > 0.0)
  {
    v124 = v123 - v175;
  }

  else
  {
    v124 = 0.0;
  }

  v194.origin.x = v77;
  v194.origin.y = v76;
  v194.size.width = v74;
  v125 = v172;
  v194.size.height = v172;
  CGRectGetHeight(v194);
  v126 = v155;
  v127 = v160;
  sub_100750404();
  v128 = Width;
  v130 = v129;
  v132 = v131;
  v169 = v133;
  v195.origin.x = v77;
  v195.origin.y = v76;
  v195.size.width = v122;
  v195.size.height = v125;
  MinX = CGRectGetMinX(v195);
  v196.origin.x = v171;
  v196.origin.y = v165;
  v196.size.width = v128;
  v196.size.height = v168;
  MinY = CGRectGetMinY(v196);
  if (v124 < v130)
  {
    v130 = v124;
  }

  v197.origin.x = MinX;
  v197.origin.y = MinY;
  v197.size.width = v130;
  v197.size.height = v132;
  v171 = CGRectGetMaxY(v197) - v169;
  sub_100753B24();
  sub_100750394();
  v198.origin.x = v77;
  v136 = v170;
  v198.origin.y = v170;
  v198.size.width = v122;
  v137 = v172;
  v198.size.height = v172;
  CGRectGetHeight(v198);
  v138 = v157;
  v139 = v161;
  sub_100750404();
  v168 = v140;
  v199.origin.x = v77;
  v199.origin.y = v136;
  v199.size.width = v122;
  v199.size.height = v137;
  v169 = CGRectGetMinX(v199);
  sub_10000C888((a12 + v73[21]), *(a12 + v73[21] + 24));
  sub_100750584();
  sub_100753B24();
  sub_100750394();
  (*(v156 + 8))(v126, v127);
  return (*(v158 + 8))(v138, v139);
}

double sub_1001DFA40(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_100754724();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 traitCollection];
  v21 = sub_1007537E4();

  sub_10000C888((a2 + 32), *(a2 + 56));
  sub_100536120();
  sub_100750564();
  v16 = *(v11 + 8);
  v16(v14, v10);
  sub_10000C888((a2 + 72), *(a2 + 96));
  sub_100536120();
  sub_100750564();
  v16(v14, v10);
  v17 = a4 - *(a2 + 8) - *(a2 + 24) - *(a2 + 112);
  v18 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v22 = a1;
  sub_10000C518(&unk_1009249B0);
  sub_100743464();
  v20 = a3;
  sub_1001DFD38(a1, a2, a3, v17 - v23, a5);
  sub_10000C888((a2 + *(v18 + 96)), *(a2 + *(v18 + 96) + 24));
  sub_100536120();
  sub_100750564();
  v16(v14, v10);
  if (v21 & 1) == 0 && (*(a2 + *(type metadata accessor for ProductLockupLayout(0) + 60)))
  {
    sub_1001E02DC(a1, a2, v20, a4, a5);
  }

  return a4;
}

double sub_1001DFD38(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_100754724();
  v48 = *(v10 - 8);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 traitCollection];
  v15 = sub_1007537E4();

  v49 = type metadata accessor for ProductLockupLayout(0);
  v16 = v49[10];
  sub_100016B4C(a2 + v16, v50, &unk_100928A00);
  if (v51)
  {
    sub_10000C888(v50, v51);
    sub_100750414();
    v18 = v17;
    sub_10000C620(v50);
  }

  else
  {
    sub_10000C8CC(v50, &unk_100928A00);
    v18 = 0.0;
  }

  v19 = sub_1001E1244(a1, a2);
  sub_100016B4C(a2 + v16, v50, &unk_100928A00);
  v20 = v51;
  sub_10000C8CC(v50, &unk_100928A00);
  if (v20)
  {
    v21 = v49;
    if ((v15 & 1) == 0)
    {
      if (*(a2 + v49[15]))
      {
        v22 = type metadata accessor for ProductLockupLayout.Metrics(0);
        sub_10000C888((a2 + *(v22 + 92)), *(a2 + *(v22 + 92) + 24));
        sub_100536120();
        sub_100750564();
        v24 = v23;
        (*(v48 + 8))(v13, v10);
        v19 = v19 + v18 + v24;
      }

LABEL_9:
      if (*(a2 + v21[15]))
      {
        return v19;
      }
    }
  }

  else
  {
    v21 = v49;
    if ((v15 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v46 = *(a2 + 120);
  v25 = (a2 + v21[11]);
  v26 = v25[3];
  v45 = v25;
  sub_10000C888(v25, v26);
  sub_100750414();
  v28 = v27;
  sub_100016B4C(a2 + v16, v50, &unk_100928A00);
  v29 = v51;
  sub_10000C8CC(v50, &unk_100928A00);
  v47 = a3;
  if (v29)
  {
    v30 = type metadata accessor for ProductLockupLayout.Metrics(0);
    sub_10000C888((a2 + *(v30 + 80)), *(a2 + *(v30 + 80) + 24));
    sub_100536120();
    sub_100750564();
    v31 = a1;
    v32 = v48;
    (*(v48 + 8))(v13, v10);
    v33 = v10;
  }

  else
  {
    v33 = v10;
    v31 = a1;
    v32 = v48;
  }

  v44 = a2;
  v48 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v34 = a2 + *(v48 + 76);
  v35 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  sub_10000C888((v34 + *(v35 + 28)), *(v34 + *(v35 + 28) + 24));
  sub_100536120();
  sub_100750564();
  v36 = *(v32 + 8);
  v36(v13, v33);
  v37 = v36;
  sub_10000C888((v34 + *(v35 + 24)), *(v34 + *(v35 + 24) + 24));
  sub_100536120();
  sub_100750564();
  v36(v13, v33);
  v38 = v44;
  sub_10000C888((v44 + v49[12]), *(v44 + v49[12] + 24));
  sub_100750414();
  v40 = v39;
  sub_10000C888(v45, v45[3]);
  if (sub_1007503A4())
  {
    v28 = v40;
  }

  sub_10000C888((v38 + *(v48 + 72)), *(v38 + *(v48 + 72) + 24));
  sub_100536120();
  sub_100750564();
  v42 = v41;
  v37(v13, v33);
  if (v19 < v46 - v42 - v28)
  {
    v19 = v46 - v42 - v28;
  }

  return sub_1001E02DC(v31, v38, v47, a4, a5) + v19;
}

double sub_1001E02DC(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v44 = a3;
  v9 = sub_100754724();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 traitCollection];
  v15 = sub_1007537E4();

  v16 = type metadata accessor for ProductLockupLayout(0);
  sub_10000C888((a2 + v16[11]), *(a2 + v16[11] + 24));
  sub_100750414();
  v18 = v17;
  v42 = type metadata accessor for ProductLockupLayout.Metrics(0);
  sub_10000C888((a2 + *(v42 + 72)), *(a2 + *(v42 + 72) + 24));
  sub_100536120();
  sub_100750564();
  v20 = v19;
  v21 = *(v10 + 8);
  v43 = v9;
  v21(v13, v9);
  if ((v15 & 1) != 0 || *(a2 + v16[15]) == 1)
  {
    v22 = a2 + *(v42 + 76);
    v23 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    sub_10000C888((v22 + *(v23 + 28)), *(v22 + *(v23 + 28) + 24));
    sub_100536120();
    sub_100750564();
    v25 = v24;
    v21(v13, v43);
    sub_1001E0744(a1, a2, a4, a5, a4 - (v18 + v25));
    v27 = v26;
    v28 = sub_1001E0FC8(a1, a2);
    if (v27 > v28)
    {
      v28 = v27;
    }
  }

  else
  {
    v29 = v16[10];
    sub_100016B4C(a2 + v29, v45, &unk_100928A00);
    if (v46)
    {
      sub_10000C888(v45, v46);
      sub_100750414();
      v31 = v30;
      sub_10000C620(v45);
    }

    else
    {
      sub_10000C8CC(v45, &unk_100928A00);
      v31 = 0.0;
    }

    v32 = v42;
    sub_100016B4C(a2 + v29, v45, &unk_100928A00);
    v33 = v46;
    sub_10000C8CC(v45, &unk_100928A00);
    if (v33)
    {
      sub_10000C888((a2 + *(v32 + 80)), *(a2 + *(v32 + 80) + 24));
      sub_100536120();
      sub_100750564();
      v35 = v34;
      v36 = v43;
      v21(v13, v43);
    }

    else
    {
      v35 = 0.0;
      v36 = v43;
    }

    v37 = a2 + *(v32 + 76);
    v38 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    sub_10000C888((v37 + *(v38 + 28)), *(v37 + *(v38 + 28) + 24));
    sub_100536120();
    sub_100750564();
    v40 = v39;
    v21(v13, v36);
    sub_1001E0744(a1, a2, a4, a5, a4 - (v35 + v31 + v18 + v40));
  }

  return v20 + 0.0 + v28;
}

void sub_1001E0744(void *a1, uint64_t a2, double a3, double a4, double a5)
{
  v78 = sub_10074CD14();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v72 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v66 - v10;
  v12 = sub_100754724();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v73 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_100740E74();
  v75 = *(v77 - 1);
  __chkstk_darwin(v77);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ProductLockupLayout(0);
  v18 = (a2 + v17[11]);
  sub_10000C888(v18, v18[3]);
  sub_100750414();
  v19 = (a2 + v17[16]);
  v74 = v19[1];
  if (v74)
  {
    v69 = v13;
    v70 = v12;
    v71 = *v19;
    v20 = (a2 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 76));
    type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    v79[0] = a1;
    sub_10000C518(&unk_100923C20);
    v66 = v20;
    sub_100743464();
    v21 = v82;
    v67 = v17;
    v22 = v17[15];
    v68 = a2;
    v23 = *(a2 + v22);
    sub_10000C888(v18, v18[3]);
    if (sub_1007503A4())
    {
    }

    else
    {
      v24 = objc_opt_self();
      v25 = v74;

      v26 = [v24 mainScreen];
      [v26 bounds];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;

      v83.origin.x = v28;
      v83.origin.y = v30;
      v83.size.width = v32;
      v83.size.height = v34;
      Width = CGRectGetWidth(v83);
      JUScreenClassGetPortraitWidth();
      if (Width > v36 || (sub_100740E64(), v79[0] = v71, v79[1] = v25, sub_1000D5C0C(), sub_1007542C4(), v38 = v37, (*(v75 + 8))(v16, v77), (v38)) && (!v23 || (v39 = [a1 traitCollection], v40 = sub_1007537E4(), v39, (v40)))
      {
        v77 = v21;
        v41 = sub_1001DE490();
        v42 = *(v41 + 16);
        v43 = (v76 + 8);
        LODWORD(v75) = enum case for Feature.measurement_with_labelplaceholder(_:);
        v44 = v41 + 40;
        v76 = -v42;
        v45 = -1;
        while (v76 + v45 != -1)
        {
          if (++v45 >= *(v41 + 16))
          {
            __break(1u);
            return;
          }

          v46 = v44 + 16;
          v47 = a1;
          v48 = sub_10074F3F4();
          v80 = v48;
          v81 = sub_1001E25BC(&qword_10092AC70, &type metadata accessor for Feature);
          v49 = sub_10000D134(v79);
          (*(*(v48 - 8) + 104))(v49, v75, v48);

          v50 = v77;
          sub_10074FC74();
          sub_10000C620(v79);
          a1 = v47;
          sub_10074CD04();
          sub_1001E25BC(&unk_10092CB50, &type metadata accessor for LabelPlaceholderCompatibility);
          v51 = v78;
          sub_100750404();
          v53 = v52;
          (*v43)(v11, v51);
          v44 = v46;
          if (v53 > a5)
          {

            v21 = v77;
            goto LABEL_13;
          }
        }

        v59 = sub_10074F3F4();
        v80 = v59;
        v81 = sub_1001E25BC(&qword_10092AC70, &type metadata accessor for Feature);
        v60 = sub_10000D134(v79);
        (*(*(v59 - 8) + 104))(v60, v75, v59);
        v61 = v77;
        sub_10074FC74();
        sub_10000C620(v79);
        v62 = v72;
        sub_10074CD04();
        sub_1001E25BC(&unk_10092CB50, &type metadata accessor for LabelPlaceholderCompatibility);
        v63 = v78;
        sub_100750404();
        v65 = v64;

        (*v43)(v62, v63);
        v54 = v70;
        v55 = v69;
        v56 = v68;
        v57 = v67;
        if (v65 > a5)
        {
          goto LABEL_14;
        }
      }

      else
      {
LABEL_13:

        v54 = v70;
        v55 = v69;
        v56 = v68;
        v57 = v67;
LABEL_14:
        sub_10000C888((v56 + v57[12]), *(v56 + v57[12] + 24));
        sub_100750404();
        sub_10000C888(v66, v66[3]);
        v58 = v73;
        sub_100536120();
        sub_100750564();
        (*(v55 + 8))(v58, v54);
      }
    }
  }
}

double sub_1001E0FC8(uint64_t a1, uint64_t a2)
{
  v3 = sub_100754724();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ProductLockupLayout(0);
  sub_100016B4C(a2 + *(v7 + 52), &v22, &qword_10092BC30);
  if (!v23)
  {
    sub_10000C8CC(&v22, &qword_10092BC30);
    return 0.0;
  }

  sub_100012160(&v22, v24);
  sub_100016B4C(a2 + *(v7 + 56), &v20, &qword_10092BC30);
  if (!v21)
  {
    sub_10000C8CC(&v20, &qword_10092BC30);
    sub_10000C620(v24);
    return 0.0;
  }

  sub_100012160(&v20, &v22);
  sub_10000C888(v24, v24[3]);
  sub_100750404();
  v9 = v8;
  v11 = v10;
  sub_10000C888(&v22, v23);
  sub_100750404();
  v13 = v12;
  v14 = type metadata accessor for ProductLockupLayout.Metrics(0);
  sub_10000C888((a2 + *(v14 + 84)), *(a2 + *(v14 + 84) + 24));
  sub_100536120();
  sub_100750564();
  v16 = v15;
  (*(v4 + 8))(v6, v3);
  v17 = v13 + v9 - v11 + v16;
  sub_10000C620(&v22);
  sub_10000C620(v24);
  return v17;
}

double sub_1001E1244(void *a1, uint64_t a2)
{
  v4 = sub_100754724();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 traitCollection];
  v54 = sub_1007537E4();

  v10 = type metadata accessor for ProductLockupLayout.Metrics(0);
  *&v55 = a1;
  v11 = sub_10000C518(&unk_1009249B0);
  sub_100743464();
  v12 = *v58;
  v13 = v10;
  *&v55 = a1;
  v53 = v11;
  sub_100743464();
  v14 = *v58;
  v15 = type metadata accessor for ProductLockupLayout(0);
  v16 = v15[10];
  sub_100016B4C(a2 + v16, v58, &unk_100928A00);
  if (v59)
  {
    sub_10000C888(v58, v59);
    sub_100750414();
    sub_10000C620(v58);
  }

  else
  {
    sub_10000C8CC(v58, &unk_100928A00);
  }

  sub_100016B4C(a2 + v16, v58, &unk_100928A00);
  v17 = v59;
  sub_10000C8CC(v58, &unk_100928A00);
  if (v17)
  {
    sub_10000C888((a2 + *(v13 + 80)), *(a2 + *(v13 + 80) + 24));
    sub_100536120();
    sub_100750564();
    (*(v5 + 8))(v8, v4);
  }

  v18 = (a2 + v15[6]);
  sub_10000C888(v18, v18[3]);
  sub_100750404();
  v21 = v20;
  v23 = v22;
  v24 = v19;
  v26 = v25;
  if (v12 - v19 > 0.0)
  {
    v27 = v12 - v19;
  }

  else
  {
    v27 = 0.0;
  }

  sub_10000C888(v18, v18[3]);
  sub_100750844();
  v29 = v23 - v26 + v27 + v28;
  sub_10000C824(v18, v58);
  *&v55 = a1;
  sub_10000C518(&unk_10092BC10);
  sub_100743464();
  v30 = v15[9];
  sub_100016B4C(a2 + v30, &v55, &qword_10092BC30);
  sub_10000C8CC(&v55, &qword_10092BC30);
  sub_10000C888(v58, v59);
  v60.var0 = v21;
  v60.var1 = v23;
  v60.var2 = v24;
  v60.var3 = v26;
  sub_100750874(v60);
  sub_10000C620(v58);
  v31 = (a2 + v15[8]);
  sub_10000C888(v31, v31[3]);
  sub_100750834();
  v32 = (a2 + v15[7]);
  sub_10000C888(v32, v32[3]);
  sub_100750834();
  sub_10000C888(v31, v31[3]);
  sub_100750404();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_10000C888(v32, v32[3]);
  sub_100750404();
  v40 = v39;
  v41 = v14 - v36 + v34 - v38;
  v44 = v14 - v42 + v43 - v39;
  if (v41 > v44)
  {
    v45 = v41;
  }

  else
  {
    v45 = v44;
  }

  v46 = v29 + v45;
  sub_100016B4C(a2 + v30, &v55, &qword_10092BC30);
  if (v56)
  {
    sub_100012160(&v55, v58);
    v57 = a1;
    sub_100743464();
    v47 = *&v55;
    sub_10000C888(v58, v59);
    sub_100750404();
    v49 = v48;
    v46 = v46 + v47 - v50 + v51 - v48;
    sub_10000C620(v58);
  }

  else
  {
    if (v41 >= v44)
    {
      v49 = v38;
    }

    else
    {
      v49 = v40;
    }

    sub_10000C8CC(&v55, &qword_10092BC30);
  }

  return v46 + v49;
}

uint64_t sub_1001E1824(double a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, CGFloat a19, CGFloat a20, CGFloat a21, CGFloat a22)
{
  v123 = a16;
  v118 = a15;
  v137 = a8;
  v125 = a6;
  v130 = a5;
  v129 = a4;
  v136 = a3;
  v116 = a1;
  v128 = COERCE_DOUBLE(sub_100754724());
  v29 = *(*&v128 - 8);
  __chkstk_darwin(*&v128);
  v127 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a14 - 8);
  __chkstk_darwin(v32);
  v34 = &v112 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v35);
  v120 = v38;
  v39 = *(v38 + 16);
  v119 = &v112 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39(v36);
  v122 = v31;
  v40 = *(v31 + 16);
  v121 = v34;
  v40(v34, a10, a14);
  *&v41 = COERCE_DOUBLE(type metadata accessor for ProductLockupLayout(0));
  v42 = v41[10];
  sub_100016B4C(a12 + v42, &v139, &unk_100928A00);
  v135 = a12;
  v134 = a7;
  v138 = a18;
  v133 = a17;
  v132 = a21;
  v126 = a20;
  v131 = a19;
  v124 = a22;
  if (v140)
  {
    sub_100012160(&v139, &v141);
    sub_10000C888((a12 + v41[6]), *(a12 + v41[6] + 24));
    sub_100750384();
    CGRectGetMidY(v143);
    v115 = a2;
    v144.origin.x = a19;
    v144.origin.y = a20;
    v144.size.width = a21;
    v144.size.height = a22;
    CGRectGetMinY(v144);
    v145.origin.x = a19;
    v145.origin.y = a20;
    v145.size.width = a21;
    v145.size.height = a22;
    CGRectGetMaxX(v145);
    sub_10000C888(&v141, v142);
    sub_100753B24();
    a12 = v135;
    sub_100750394();
    sub_10000C620(&v141);
  }

  else
  {
    sub_10000C8CC(&v139, &unk_100928A00);
  }

  v116 = *&v41;
  v43 = a12;
  v44 = (a12 + v41[12]);
  sub_10000C888(v44, v44[3]);
  v45 = sub_1007503A4();
  v46 = v125;
  v47 = v129;
  if (v45)
  {
    sub_10000C888(v44, v44[3]);
    sub_100750394();
    v48 = v124;
    v49 = v126;
  }

  else
  {
    v117 = v29;
    sub_100016B4C(v43 + v42, &v141, &unk_100928A00);
    v50 = v142;
    sub_10000C8CC(&v141, &unk_100928A00);
    v51 = v131;
    if (v50)
    {
      v52 = type metadata accessor for ProductLockupLayout.Metrics(0);
      sub_10000C888((v43 + *(v52 + 80)), *(v43 + *(v52 + 80) + 24));
      v53 = v127;
      sub_100536120();
      sub_100750564();
      (*(v117 + 8))(v53, COERCE_DOUBLE(*&v128));
    }

    v54 = v132;
    v55 = v124;
    sub_100016B4C(v43 + v42, &v141, &unk_100928A00);
    v56 = v126;
    v114 = a14;
    v113 = a13;
    if (v142)
    {
      sub_10000C888(&v141, v142);
      sub_100750414();
      sub_10000C620(&v141);
    }

    else
    {
      sub_10000C8CC(&v141, &unk_100928A00);
    }

    v57 = v117;
    v146.origin.x = v51;
    v146.origin.y = v56;
    v146.size.width = v54;
    v146.size.height = v55;
    CGRectGetWidth(v146);
    v147.origin.x = v136;
    v147.origin.y = v47;
    v58 = v130;
    v147.size.width = v130;
    v59 = v125;
    v147.size.height = v125;
    CGRectGetWidth(v147);
    v60 = v135 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 76);
    v61 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    v62 = (v60 + *(v61 + 28));
    v63 = v62[3];
    v112 = v62;
    sub_10000C888(v62, v63);
    v64 = v127;
    sub_100536120();
    sub_100750564();
    v65 = a11;
    v66 = *(v57 + 8);
    v67 = v128;
    v66(v64, *&v128);
    v68 = v136;
    v69 = v58;
    v47 = v129;
    sub_10000C888((v60 + *(v61 + 24)), *(v60 + *(v61 + 24) + 24));
    sub_100536120();
    sub_100750564();
    v115 = *&v66;
    v66(v64, *&v67);
    a11 = v65;
    sub_10000C888(v44, v44[3]);
    v46 = v59;
    sub_100750404();
    v71 = v70;
    v148.origin.x = v68;
    v148.origin.y = v47;
    v148.size.width = v69;
    v148.size.height = v59;
    CGRectGetMidY(v148);
    v72 = (v135 + *(*&v116 + 44));
    sub_10000C888(v72, v72[3]);
    if ((sub_1007503A4() & 1) != 0 || (v149.origin.x = v68, v149.origin.y = v47, v149.size.width = v69, v149.size.height = v59, CGRectGetHeight(v149) < v71))
    {
      v150.origin.x = v68;
      v150.origin.y = v47;
      v150.size.width = v69;
      v150.size.height = v59;
      CGRectGetMinY(v150);
    }

    a14 = v114;
    sub_10000C888(v72, v72[3]);
    v73 = sub_1007503A4();
    v29 = v117;
    v49 = v126;
    v74 = v68;
    v75 = v47;
    v76 = v69;
    v77 = v46;
    if (v73)
    {
      CGRectGetMinX(*&v74);
    }

    else
    {
      CGRectGetMaxX(*&v74);
      sub_10000C888(v112, v112[3]);
      v78 = v29;
      v79 = v127;
      sub_100536120();
      sub_100750564();
      v80 = v79;
      v29 = v78;
      (*&v115)(v80, *&v128);
    }

    a13 = v113;
    sub_10000C888(v44, v44[3]);
    sub_100753B24();
    sub_100750394();
    v48 = v124;
  }

  v81 = v47;
  sub_10000C888(v44, v44[3]);
  v82 = v132;
  v83 = v48;
  sub_100750404();
  v85 = v84;
  sub_10000C888(v44, v44[3]);
  v86 = sub_1007503A4();
  v87 = 0.0;
  v88 = v135;
  if ((v86 & 1) == 0)
  {
    v89 = v88 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 76);
    v90 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    sub_10000C888((v89 + *(v90 + 28)), *(v89 + *(v90 + 28) + 24));
    v91 = v127;
    sub_100536120();
    sub_100750564();
    v93 = v92;
    (*(v29 + 8))(v91, COERCE_DOUBLE(*&v128));
    v87 = v85 + v93;
  }

  v94 = v131;
  v151.origin.x = v131;
  v151.origin.y = v49;
  v151.size.width = v82;
  v151.size.height = v83;
  Width = CGRectGetWidth(v151);
  v152.origin.x = v136;
  v152.origin.y = v81;
  v152.size.width = v130;
  v152.size.height = v46;
  v96 = Width - CGRectGetWidth(v152);
  v97 = type metadata accessor for ProductLockupLayout.Metrics(0);
  *&v139 = a11;
  sub_10000C518(&unk_1009249B0);
  sub_100743464();
  if (v96 - v141 - v87 > 0.0)
  {
    v98 = v96 - v141 - v87;
  }

  else
  {
    v98 = 0.0;
  }

  v153.origin.x = v94;
  v153.origin.y = v49;
  v153.size.width = v82;
  v153.size.height = v83;
  CGRectGetHeight(v153);
  v99 = v119;
  sub_100750404();
  v101 = v100;
  v103 = v102;
  v128 = v104;
  v154.origin.x = v94;
  v154.origin.y = v49;
  v154.size.width = v82;
  v154.size.height = v83;
  MaxX = CGRectGetMaxX(v154);
  v155.origin.x = v136;
  v155.origin.y = v129;
  v155.size.width = v130;
  v155.size.height = v46;
  MinY = CGRectGetMinY(v155);
  if (v98 < v101)
  {
    v101 = v98;
  }

  sub_100753B24();
  sub_100750394();
  v156.origin.x = MaxX - v98;
  v156.origin.y = MinY;
  v156.size.width = v101;
  v156.size.height = v103;
  v136 = CGRectGetMaxY(v156) - v128;
  v107 = v131;
  v157.origin.x = v131;
  v157.origin.y = v49;
  v108 = v132;
  v157.size.width = v132;
  v157.size.height = v83;
  CGRectGetHeight(v157);
  v109 = v121;
  sub_100750404();
  v130 = v110;
  v158.origin.x = v107;
  v158.origin.y = v49;
  v158.size.width = v108;
  v158.size.height = v83;
  CGRectGetMaxX(v158);
  sub_10000C888((v88 + *(v97 + 84)), *(v88 + *(v97 + 84) + 24));
  sub_100750584();
  sub_100753B24();
  sub_100750394();
  (*(v120 + 8))(v99, a13);
  return (*(v122 + 8))(v109, a14);
}

uint64_t sub_1001E2538(uint64_t a1)
{
  *(a1 + 8) = sub_1001E25BC(&unk_10092F7B0, type metadata accessor for ProductLockupLayout);
  result = sub_1001E25BC(&qword_10092C890, type metadata accessor for ProductLockupLayout);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001E25BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001E2618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1001E26EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ProductLockupLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_1001E27A8()
{
  type metadata accessor for ProductLockupLayout.Metrics(319);
  if (v0 <= 0x3F)
  {
    sub_100110300(319, &unk_10092C900);
    if (v1 <= 0x3F)
    {
      sub_100110300(319, &qword_10092D510);
      if (v2 <= 0x3F)
      {
        sub_100110090(319, &unk_10092C910, &unk_10092D520);
        if (v3 <= 0x3F)
        {
          sub_100110090(319, &qword_10092C920, &qword_100926520);
          if (v4 <= 0x3F)
          {
            sub_1001071A4();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1001E2928(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_10000C518(&unk_1009249B0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_10000C518(&unk_100923C20);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v13 = sub_10000C518(&unk_10092BC10);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[11];
    goto LABEL_11;
  }

  v15 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[19];

  return v16(v17, a2, v15);
}

uint64_t sub_1001E2B14(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
    return result;
  }

  v8 = sub_10000C518(&unk_1009249B0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10000C518(&unk_100923C20);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v13 = sub_10000C518(&unk_10092BC10);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[11];
    goto LABEL_9;
  }

  v15 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[19];

  return v16(v17, a2, a2, v15);
}

void sub_1001E2CEC()
{
  type metadata accessor for UIEdgeInsets(319);
  if (v0 <= 0x3F)
  {
    sub_100110300(319, &qword_1009289A0);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        sub_1001E2ED8(319, &qword_10092D5F0);
        if (v3 <= 0x3F)
        {
          sub_1001E2E64();
          if (v4 <= 0x3F)
          {
            sub_1001E2ED8(319, &unk_10092CA18);
            if (v5 <= 0x3F)
            {
              type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(319);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1001E2E64()
{
  if (!qword_10092CA08)
  {
    sub_10000C724(&unk_100923AE0);
    sub_100038D38();
    v0 = sub_100743554();
    if (!v1)
    {
      atomic_store(v0, &qword_10092CA08);
    }
  }
}

void sub_1001E2ED8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_10000C724(&unk_100923AE0);
    v3 = sub_100743554();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1001E2F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000C518(&unk_100923C20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001E3028(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10000C518(&unk_100923C20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1001E30D8()
{
  sub_100110300(319, &qword_1009289A0);
  if (v0 <= 0x3F)
  {
    sub_1001E2E64();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1001E3178()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1001E31B8()
{
  result = qword_10092CB40;
  if (!qword_10092CB40)
  {
    sub_10000C724(&unk_10092CB30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092CB40);
  }

  return result;
}

BOOL sub_1001E322C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 9);
  v3 = *(a2 + 8);
  v4 = *(a2 + 9);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (v2 != 2)
  {
    return v4 != 2 && ((v4 ^ v2) & 1) == 0;
  }

  return v4 == 2;
}

uint64_t sub_1001E3290()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_10092CB60);
  sub_10000D0FC(v4, qword_10092CB60);
  if (qword_100921498 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_100981B00);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

void sub_1001E3468(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_100750534();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v55 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10074AB44();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v17 - 8);
  v19 = &v54 - v18;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackDescription;
  if (qword_100921490 != -1)
  {
    swift_once();
  }

  v21 = sub_10000D0FC(v10, qword_100981AE8);
  v22 = *(v11 + 16);
  v22(v19, v21, v10);
  (*(v11 + 56))(v19, 0, 1, v10);
  (*(v14 + 104))(v16, enum case for DirectionalTextAlignment.none(_:), v13);
  v23 = objc_allocWithZone(sub_100745C84());
  *&v5[v20] = sub_100745C74();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons] = _swiftEmptyArrayStorage;
  v24 = &v5[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedIndex];
  *v24 = 0;
  v24[8] = 1;
  v25 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground;
  *&v5[v25] = [objc_allocWithZone(CALayer) init];
  v26 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_submitButton;
  sub_1007466C4();
  if (qword_100921498 != -1)
  {
    swift_once();
  }

  v27 = sub_10000D0FC(v10, qword_100981B00);
  v22(v55, v27, v10);
  *&v5[v26] = sub_1007466B4();
  v28 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_buttonContainer;
  *&v5[v28] = [objc_allocWithZone(type metadata accessor for SubmitButtonContainer()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_hasDivider] = 1;
  v29 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_dividerView;
  *&v5[v29] = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_isSubmitted] = 0;
  v30 = &v5[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_didSelectFeedbackOption];
  *v30 = 0;
  v30[1] = 0;
  v31 = &v5[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_didSelectSubmitButton];
  v32 = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
  *v31 = 0;
  v31[1] = 0;
  v56.receiver = v5;
  v56.super_class = v32;
  v33 = objc_msgSendSuper2(&v56, "initWithFrame:", a1, a2, a3, a4);
  v34 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackDescription;
  v35 = *&v33[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackDescription];
  v36 = v33;
  [v35 setTextAlignment:1];
  v37 = v36;
  v38 = [v37 contentView];
  [v38 addSubview:*&v33[v34]];

  v39 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground;
  v40 = *&v37[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground];
  v41 = [v37 tintColor];

  if (v41)
  {
    v42 = [v41 CGColor];

    [v40 setBackgroundColor:v42];
    [*&v37[v39] setCornerRadius:20.0];
    v43 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_submitButton;
    v44 = *&v37[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_submitButton];
    v57._countAndFlagsBits = 0x465F54494D425553;
    v57._object = 0xEF4B434142444545;
    v58._countAndFlagsBits = 0;
    v58._object = 0xE000000000000000;
    sub_1007458B4(v57, v58);
    v45 = sub_100753064();

    [v44 setTitle:v45 forState:0];

    [*&v37[v43] addTarget:v37 action:"didTapSubmitButton:" forControlEvents:64];
    [*&v37[v43] setEnabled:0];
    v46 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_buttonContainer;
    [*&v37[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_buttonContainer] setLayoutMargins:{5.0, 10.0, 5.0, 10.0}];
    v47 = *&v37[v46];
    v48 = *&v37[v43];
    v49 = *&v47[OBJC_IVAR____TtC22SubscribePageExtensionP33_091EBE25195B1220BBDC30ECB0E4A36A21SubmitButtonContainer_submitButton];
    *&v47[OBJC_IVAR____TtC22SubscribePageExtensionP33_091EBE25195B1220BBDC30ECB0E4A36A21SubmitButtonContainer_submitButton] = v48;
    v50 = v48;
    v51 = v47;

    [v51 addSubview:v50];
    [v51 setNeedsLayout];

    v52 = [v37 contentView];
    [v52 addSubview:*&v37[v46]];

    v53 = [v37 contentView];
    [v53 addSubview:*&v37[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_dividerView]];
  }

  else
  {
    __break(1u);
  }
}

id sub_1001E3B40(id result)
{
  v2 = result;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
  if (v4 >> 62)
  {
    result = sub_100754664();
    v5 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_27;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_100754574();
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    [v7 removeFromSuperview];
  }

LABEL_10:
  *&v1[v3] = v2;

  v9 = *&v1[v3];
  if (v9 >> 62)
  {
    result = sub_100754664();
    v10 = result;
    if (result)
    {
LABEL_12:
      if (v10 >= 1)
      {

        v11 = 0;
        do
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = sub_100754574();
          }

          else
          {
            v12 = *(v9 + 8 * v11 + 32);
          }

          v13 = v12;
          ++v11;
          v14 = [v1 contentView];
          [v14 addSubview:v13];

          [v13 addTarget:v1 action:"feedbackButtonSelectedWithFeedbackOptioButton:" forControlEvents:64];
        }

        while (v10 != v11);

        goto LABEL_19;
      }

LABEL_27:
      __break(1u);
      return result;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_12;
    }
  }

LABEL_19:

  return [v1 setNeedsLayout];
}

uint64_t sub_1001E3D30()
{
  v76 = sub_100750354();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v70 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_100754724();
  v2 = *(v73 - 8);
  __chkstk_darwin(v73);
  v4 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_100750EB4();
  v101 = *(v99 - 8);
  __chkstk_darwin(v99);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v82 = &v70 - v8;
  v79 = sub_100750ED4();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_100750D64();
  v103 = *(v97 - 8);
  __chkstk_darwin(v97);
  v96 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_100750D84();
  v11 = *(v95 - 8);
  __chkstk_darwin(v95);
  v94 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_100750D94();
  v85 = *(v93 - 8);
  __chkstk_darwin(v93);
  v92 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100750DB4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_100750DD4();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
  v119.receiver = v0;
  v119.super_class = v20;
  v81 = v20;
  objc_msgSendSuper2(&v119, "layoutSubviews");
  (*(v15 + 104))(v17, enum case for VerticalStackLayout.Alignment.center(_:), v14);
  v117 = sub_1007507D4();
  v118 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v116);
  sub_1007507C4();
  v100 = v19;
  sub_100750DC4();
  v21 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons);
  if (v21 >> 62)
  {
    goto LABEL_32;
  }

  v98 = v21 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
  {
    v72 = v2;
    v23 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedIndex;

    v24 = &protocol witness table for UIView;
    v71 = v6;
    v80 = v0;
    if (!i)
    {
      break;
    }

    v25 = 0;
    v70 = 0;
    v102 = (v0 + v23);
    v91 = v21 & 0xC000000000000001;
    v89 = enum case for VerticalStackLayout.Child.Alignment.center(_:);
    v88 = (v11 + 104);
    v87 = (v103 + 8);
    v86 = (v11 + 8);
    ++v85;
    v90 = v21;
    while (1)
    {
      if (v91)
      {
        v26 = sub_100754574();
      }

      else
      {
        if (v25 >= *(v98 + 16))
        {
          goto LABEL_31;
        }

        v26 = *(v21 + 8 * v25 + 32);
      }

      v0 = v26;
      v2 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v11 = i;
      v27 = v4;
      [v26 setLayoutMargins:{5.0, 10.0, 5.0, 10.0}];
      v28 = v24;
      v117 = type metadata accessor for FeedbackButton();
      v118 = v24;
      v116 = v0;
      v29 = qword_100920570;
      v103 = v0;
      if (v29 != -1)
      {
        swift_once();
      }

      v30 = sub_100750B04();
      v31 = sub_10000D0FC(v30, qword_10092CB60);
      v114 = v30;
      v115 = &protocol witness table for StaticDimension;
      v32 = sub_10000D134(&v113);
      (*(*(v30 - 8) + 16))(v32, v31, v30);
      v33 = v94;
      v34 = v95;
      (*v88)(v94, v89, v95);
      v110 = _swiftEmptyArrayStorage;
      sub_1001E87EC(&qword_10092CCA0, &type metadata accessor for VerticalStackLayout.ExclusionCondition);
      sub_10000C518(&qword_10092CCA8);
      sub_1001E8834();
      v35 = v96;
      v36 = v97;
      sub_1007543A4();
      v37 = v92;
      sub_100750D74();
      (*v87)(v35, v36);
      (*v86)(v33, v34);
      sub_10000C620(&v113);
      sub_10000C620(&v116);
      sub_100750DA4();
      (*v85)(v37, v93);
      if ((*(v102 + 8) & 1) != 0 || v25 != *v102)
      {

        ++v25;
        i = v11;
        v4 = v27;
        v6 = v99;
        v0 = v101;
        v24 = v28;
        v21 = v90;
        if (v2 == v11)
        {
          v103 = v70;
          goto LABEL_19;
        }
      }

      else
      {

        ++v25;
        v70 = v103;
        i = v11;
        v4 = v27;
        v6 = v99;
        v0 = v101;
        v24 = v28;
        v21 = v90;
        if (v2 == v11)
        {
          goto LABEL_19;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v98 = v21 & 0xFFFFFFFFFFFFFF8;
  }

  v103 = 0;
  v6 = v99;
  v0 = v101;
LABEL_19:

  v38 = v84;
  v117 = v84;
  v118 = &protocol witness table for VerticalStackLayout;
  v39 = sub_10000D134(&v116);
  (*(v83 + 16))(v39, v100, v38);
  v40 = v80;
  v41 = *&v80[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackDescription];
  v114 = sub_100745C84();
  v115 = v24;
  v113 = v41;
  v42 = v24;
  v43 = enum case for FlankedVerticalLayout.Alignment.center(_:);
  v44 = v0[13];
  v101 = v0 + 13;
  v44(v82, enum case for FlankedVerticalLayout.Alignment.center(_:), v6);
  v45 = qword_100921708;
  v46 = v41;
  if (v45 != -1)
  {
    swift_once();
  }

  v47 = sub_100750B04();
  sub_10000D0FC(v47, qword_100982098);
  sub_1007502D4();
  sub_100750564();
  v49 = v48;
  v50 = v73;
  v102 = *(v72 + 8);
  v102(v4, v73);
  v111 = &type metadata for CGFloat;
  v112 = &protocol witness table for CGFloat;
  v110 = v49;
  v51 = *&v40[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_buttonContainer];
  v52 = type metadata accessor for SubmitButtonContainer();
  v109 = v42;
  v108 = v52;
  v107 = v51;
  v44(v71, v43, v6);
  v53 = qword_100921718;
  v54 = v51;
  if (v53 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v47, qword_1009820C8);
  sub_1007502D4();
  sub_100750564();
  v56 = v55;
  v102(v4, v50);
  v105 = &type metadata for CGFloat;
  v106 = &protocol witness table for CGFloat;
  v104 = v56;
  v57 = v77;
  sub_100750EC4();
  v58 = [v40 traitCollection];
  sub_100751364();
  v60 = v59;

  sub_1007477B4();
  v61 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_hasDivider;
  if (v40[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_hasDivider] == 1)
  {
    sub_1007502D4();
    sub_100750564();
    v102(v4, v50);
  }

  v62 = v74;
  sub_100750EA4();
  (*(v75 + 8))(v62, v76);
  v63 = v103;
  if (v103)
  {
    v64 = *&v40[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground];
    v65 = v103;
    [v64 setAnchorPoint:{0.0, 0.0}];
    [v65 frame];
    sub_100753B54();
    [v64 setFrame:?];
  }

  if (v40[v61] == 1)
  {
    v66 = *&v40[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_dividerView];
    sub_1007477B4();
    MinX = CGRectGetMinX(v120);
    sub_1007477B4();
    v68 = CGRectGetMaxY(v121) - v60;
    sub_1007477B4();
    [v66 setFrame:{MinX, v68, CGRectGetWidth(v122), v60}];
  }

  (*(v78 + 8))(v57, v79);
  return (*(v83 + 8))(v100, v84);
}

id sub_1001E4C60()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
  objc_msgSendSuper2(&v13, "prepareForReuse");
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground] removeFromSuperlayer];
  v1 = &v0[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedIndex];
  *v1 = 0;
  v1[8] = 1;
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_submitButton] setEnabled:0];
  v12 = v0;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = sub_100754574();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(v2 + 8 * v4 + 32);
      }

      v9 = v8;
      v10 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ((v1[8] & 1) != 0 || v4 != *v1)
      {
        v5 = [v8 tintColor];
        v6 = v9;
        v7 = v5;
      }

      else
      {
        v5 = [objc_opt_self() whiteColor];
        v6 = v5;
        v7 = v9;
      }

      [v9 setTitleColor:v5 forState:0];

      ++v4;
      if (v10 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_15:

  return [v12 setNeedsLayout];
}

id sub_1001E4E8C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons);
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_41:
    v3 = sub_100754664();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      v2 = 0;
      goto LABEL_15;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = sub_100754574();
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_39;
      }

      v5 = *(v1 + v4 + 4);
    }

    v6 = v5;
    sub_100016C60(0, &qword_1009327F0);
    v7 = sub_100753FC4();

    if (v7)
    {
      break;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_40;
    }
  }

  v2 = v4;
LABEL_15:

  v9 = *&v23[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground];
  [v9 removeFromSuperlayer];
  v10 = &v23[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedIndex];
  *v10 = v2;
  v10[8] = v3 == v4;
  if (v3 != v4)
  {
    v1 = [v23 contentView];
    v11 = [v1 layer];

    [v11 insertSublayer:v9 atIndex:0];
  }

  [*&v23[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_submitButton] setEnabled:v3 != v4];
  v12 = *&v23[v22];
  if (v12 >> 62)
  {
    v13 = sub_100754664();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13)
  {
    v14 = 0;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v17 = sub_100754574();
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v17 = *(v12 + 8 * v14 + 32);
      }

      v18 = v17;
      v2 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if ((v10[8] & 1) != 0 || v14 != *v10)
      {
        v15 = [v17 tintColor];
        v16 = v18;
        v1 = v15;
      }

      else
      {
        v15 = [objc_opt_self() whiteColor];
        v16 = v15;
        v1 = v18;
      }

      [v18 setTitleColor:v15 forState:0];

      ++v14;
      if (v2 == v13)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_31:

  result = [v23 setNeedsLayout];
  if ((v10[8] & 1) == 0)
  {
    v20 = *&v23[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_didSelectFeedbackOption];
    if (v20)
    {
      v21 = *v10;

      v20(v21);

      return sub_1000164A8(v20);
    }
  }

  return result;
}

uint64_t sub_1001E52E0()
{
  sub_10000C518(&qword_10092CC90);
  sub_1001E6C18();
  return sub_100752954();
}

uint64_t sub_1001E5358()
{
  sub_10000C518(&qword_10092CC90);
  sub_1001E6C18();
  return sub_100752954();
}

id sub_1001E53D0()
{
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackDescription] setText:0];
  sub_1001E3B40(_swiftEmptyArrayStorage);
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground] removeFromSuperlayer];
  v1 = &v0[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedIndex];
  *v1 = 0;
  v1[8] = 1;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_submitButton];
  [v2 setEnabled:0];
  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
  v20 = v2;
  v21 = v0;
  if (v3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v9 = sub_100754574();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v9 = *(v3 + 8 * v5 + 32);
      }

      v10 = v9;
      v11 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ((v1[8] & 1) != 0 || v5 != *v1)
      {
        v6 = [v9 tintColor];
        v7 = v10;
        v8 = v6;
      }

      else
      {
        v6 = [objc_opt_self() whiteColor];
        v7 = v6;
        v8 = v10;
      }

      [v10 setTitleColor:v6 forState:{0, v20}];

      ++v5;
      if (v11 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_15:

  [v21 setNeedsLayout];
  v12 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_isSubmitted;
  *(v21 + OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_isSubmitted) = 0;
  v13 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = v21;
  aBlock[4] = sub_1001E8B94;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_10086C138;
  v15 = _Block_copy(aBlock);
  v16 = v21;

  [v13 animateWithDuration:4 delay:v15 options:0 animations:0.2 completion:0.0];
  _Block_release(v15);
  [v16 setUserInteractionEnabled:(*(v21 + v12) & 1) == 0];
  if (*(v21 + v12) == 1)
  {
    v17._countAndFlagsBits = 0x455454494D425553;
    v17._object = 0xE900000000000044;
  }

  else
  {
    v17._countAndFlagsBits = 0x465F54494D425553;
    v17._object = 0xEF4B434142444545;
  }

  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  sub_1007458B4(v17, v23);
  v18 = sub_100753064();

  [v20 setTitle:v18 forState:0];

  [v20 setEnabled:(*(v21 + v12) & 1) == 0];
  [v20 setNeedsLayout];
  v16[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_hasDivider] = 1;
  [*&v16[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_dividerView] setHidden:0];
  return [v16 setNeedsLayout];
}

uint64_t type metadata accessor for FeedbackButton()
{
  result = qword_10092CC10;
  if (!qword_10092CC10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001E58E4()
{
  sub_1001E5A54();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_1001E5A54()
{
  if (!qword_10092F9C0)
  {
    sub_10000C724(&unk_100933080);
    v0 = sub_100754284();
    if (!v1)
    {
      atomic_store(v0, &qword_10092F9C0);
    }
  }
}

void sub_1001E5C98()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SubmitButtonContainer();
  objc_msgSendSuper2(&v6, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtensionP33_091EBE25195B1220BBDC30ECB0E4A36A21SubmitButtonContainer_submitButton];
  if (v1)
  {
    v2 = v1;
    sub_1007477B4();
    [v2 measurementsWithFitting:v0 in:{v3, v4}];
    v5 = v2;
    sub_1007477B4();
    [v5 setFrame:?];
  }
}

id sub_1001E5DC4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1001E5E30()
{
  v0 = sub_10074EB24();
  if (*(v0 + 16))
  {
    sub_10000C824(v0 + 32, v3);

    sub_10000C518(&qword_1009242A0);
    sub_10074CFC4();
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1001E5EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v79 = a3;
  v80 = a4;
  v86 = a2;
  v7 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v7 - 8);
  v88 = v75 - v8;
  v9 = sub_10000C518(&qword_100933090);
  __chkstk_darwin(v9 - 8);
  v11 = v75 - v10;
  v12 = sub_10000C518(&unk_100925370);
  __chkstk_darwin(v12 - 8);
  v78 = v75 - v13;
  v84 = sub_10000C518(&qword_10092CC90);
  v14 = *(v84 - 8);
  v15 = v14[8];
  __chkstk_darwin(v84);
  __chkstk_darwin(v16);
  v85 = v75 - v17;
  result = sub_1001E5E30();
  if (result)
  {
    v75[1] = v15;
    v76 = v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v83 = v5;
    v19 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackDescription];
    v20 = result;
    v21 = v19;
    sub_10074CFA4();
    v22 = sub_100753064();

    [v21 setText:v22];

    v82 = v20;
    v23 = sub_10074CFB4();
    v24 = v23;
    if (v23 >> 62)
    {
      goto LABEL_41;
    }

    for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
    {
      v81 = v14;
      v77 = a5;
      if (i)
      {
        aBlock = _swiftEmptyArrayStorage;
        result = sub_1007545C4();
        if (i < 0)
        {
          __break(1u);
          return result;
        }

        v26 = 0;
        v87 = v24 & 0xC000000000000001;
        do
        {
          if (v87)
          {
            v27 = sub_100754574();
          }

          else
          {
            v27 = *(v24 + 8 * v26 + 32);
          }

          v28 = sub_10074DC74();
          v29 = type metadata accessor for FeedbackButton();
          v30 = objc_allocWithZone(v29);
          if (v28)
          {
            v90 = v28;
            sub_10074ECD4();
            v89 = v27;
            sub_100752764();
            sub_1001E87EC(&qword_100928558, &type metadata accessor for Action);
            sub_100752684();
            v31 = 0;
          }

          else
          {
            v31 = 1;
          }

          v32 = sub_10000C518(&unk_100933080);
          (*(*(v32 - 8) + 56))(v11, v31, 1, v32);
          sub_1001E6A18(v11, v30 + qword_10092CBF8);
          v97.receiver = v30;
          v97.super_class = v29;
          v33 = objc_msgSendSuper2(&v97, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);

          v34 = qword_100921498;
          v35 = v33;
          if (v34 != -1)
          {
            swift_once();
          }

          ++v26;
          v36 = sub_100750534();
          v37 = sub_10000D0FC(v36, qword_100981B00);
          v38 = *(v36 - 8);
          v39 = v88;
          (*(v38 + 16))(v88, v37, v36);
          (*(v38 + 56))(v39, 0, 1, v36);
          sub_1007466A4();

          sub_10074DC64();
          v40 = sub_100753064();

          [v35 setTitle:v40 forState:0];

          sub_1007545A4();
          sub_1007545D4();
          sub_1007545E4();
          sub_1007545B4();
        }

        while (i != v26);

        v41 = aBlock;
        v14 = v81;
      }

      else
      {

        v41 = _swiftEmptyArrayStorage;
      }

      v42 = v83;
      sub_1001E3B40(v41);
      swift_getObjectType();
      sub_10074BBF4();
      v43 = v85;
      sub_100752994();
      v89 = v14[2];
      v44 = v76;
      v45 = v43;
      v46 = v84;
      (v89)(v76, v45, v84);
      v11 = ((*(v14 + 80) + 16) & ~*(v14 + 80));
      v47 = swift_allocObject();
      v48 = v14[4];
      v14 += 4;
      a5 = v48;
      (v48)(&v11[v47], v44, v46);
      v49 = &v42[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_didSelectFeedbackOption];
      v50 = *&v42[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_didSelectFeedbackOption];
      *v49 = sub_1001E6A8C;
      v49[1] = v47;
      sub_1000164A8(v50);
      (v89)(v44, v85, v46);
      v51 = swift_allocObject();
      (v48)(&v11[v51], v44, v46);
      v52 = &v42[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_didSelectSubmitButton];
      v53 = *&v42[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_didSelectSubmitButton];
      *v52 = sub_1001E6B9C;
      v52[1] = v51;
      sub_1000164A8(v53);
      v54 = sub_10074CF94();
      v42[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_hasDivider] = v54 & 1;
      [*&v42[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_dividerView] setHidden:(v54 & 1) == 0];
      [v42 setNeedsLayout];
      [v77 pageMarginInsets];
      [v42 setLayoutMargins:?];
      v88 = sub_1001E6C18();
      sub_100752964();
      v55 = aBlock;
      v56 = v92;
      v57 = *&v42[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground];
      [v57 removeFromSuperlayer];
      v58 = &v42[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedIndex];
      *v58 = v55;
      v58[8] = v56;
      if ((v56 & 1) == 0)
      {
        v59 = [v42 contentView];
        v60 = [v59 layer];

        [v60 insertSublayer:v57 atIndex:0];
      }

      v89 = *&v42[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_submitButton];
      [v89 setEnabled:v56 ^ 1u];
      v61 = *&v42[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
      v24 = v61 >> 62 ? sub_100754664() : *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v24)
      {
        break;
      }

      v62 = 0;
      while (1)
      {
        if ((v61 & 0xC000000000000001) != 0)
        {
          v64 = sub_100754574();
        }

        else
        {
          if (v62 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v64 = *(v61 + 8 * v62 + 32);
        }

        v65 = v64;
        v11 = (v62 + 1);
        if (__OFADD__(v62, 1))
        {
          break;
        }

        if ((v58[8] & 1) != 0 || v62 != *v58)
        {
          v63 = [v64 tintColor];
          a5 = v65;
          v14 = v63;
        }

        else
        {
          v63 = [objc_opt_self() whiteColor];
          a5 = v63;
          v14 = v65;
        }

        [v65 setTitleColor:v63 forState:0];

        ++v62;
        if (v11 == v24)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      ;
    }

LABEL_34:

    v66 = v83;
    [v83 setNeedsLayout];
    sub_100752964();
    v67 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_isSubmitted;
    v66[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_isSubmitted] = BYTE1(v92) & 1;
    v68 = objc_opt_self();
    v69 = swift_allocObject();
    *(v69 + 16) = v66;
    v95 = sub_1001E6CA4;
    v96 = v69;
    aBlock = _NSConcreteStackBlock;
    v92 = 1107296256;
    v93 = sub_1000CF7B0;
    v94 = &unk_10086C0E8;
    v70 = _Block_copy(&aBlock);
    v71 = v66;

    [v68 animateWithDuration:4 delay:v70 options:0 animations:0.2 completion:0.0];
    _Block_release(v70);
    [v71 setUserInteractionEnabled:(v66[v67] & 1) == 0];
    if (v66[v67])
    {
      v72._countAndFlagsBits = 0x455454494D425553;
      v72._object = 0xE900000000000044;
    }

    else
    {
      v72._countAndFlagsBits = 0x465F54494D425553;
      v72._object = 0xEF4B434142444545;
    }

    v98._countAndFlagsBits = 0;
    v98._object = 0xE000000000000000;
    sub_1007458B4(v72, v98);
    v73 = sub_100753064();

    v74 = v89;
    [v89 setTitle:v73 forState:0];

    [v74 setEnabled:(v66[v67] & 1) == 0];
    [v74 setNeedsLayout];
    [v71 setNeedsLayout];

    return v81[1](v85, v84);
  }

  return result;
}

uint64_t sub_1001E6A18(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100933090);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001E6A8C()
{
  sub_10000C518(&qword_10092CC90);

  return sub_1001E52E0();
}

uint64_t sub_1001E6B08()
{
  v1 = sub_10000C518(&qword_10092CC90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001E6B9C()
{
  sub_10000C518(&qword_10092CC90);

  return sub_1001E5358();
}

unint64_t sub_1001E6C18()
{
  result = qword_10092CC98;
  if (!qword_10092CC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092CC98);
  }

  return result;
}

uint64_t sub_1001E6C6C()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1001E6CA4()
{
  v1 = *(v0 + 16);
  v2 = 0.6;
  if (!v1[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_isSubmitted])
  {
    v2 = 1.0;
  }

  return [v1 setAlpha:v2];
}

uint64_t sub_1001E6CD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001E6CFC(uint64_t result)
{
  *result = *(v1 + 16);
  *(result + 8) = 0;
  return result;
}

void sub_1001E6D0C()
{
  v1 = v0;
  v2 = sub_100750534();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074AB44();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackDescription;
  if (qword_100921490 != -1)
  {
    swift_once();
  }

  v13 = sub_10000D0FC(v2, qword_100981AE8);
  v14 = *(v3 + 16);
  v14(v11, v13, v2);
  (*(v3 + 56))(v11, 0, 1, v2);
  (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
  v15 = objc_allocWithZone(sub_100745C84());
  *(v1 + v12) = sub_100745C74();
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons) = _swiftEmptyArrayStorage;
  v16 = v1 + OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedIndex;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground;
  *(v1 + v17) = [objc_allocWithZone(CALayer) init];
  v18 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_submitButton;
  sub_1007466C4();
  if (qword_100921498 != -1)
  {
    swift_once();
  }

  v19 = sub_10000D0FC(v2, qword_100981B00);
  v14(v25, v19, v2);
  *(v1 + v18) = sub_1007466B4();
  v20 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_buttonContainer;
  *(v1 + v20) = [objc_allocWithZone(type metadata accessor for SubmitButtonContainer()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_hasDivider) = 1;
  v21 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_dividerView;
  *(v1 + v21) = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_isSubmitted) = 0;
  v22 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_didSelectFeedbackOption);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_didSelectSubmitButton);
  *v23 = 0;
  v23[1] = 0;
  sub_100754644();
  __break(1u);
}

void sub_1001E7110()
{
  v1 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v1 - 8);
  v3 = aBlock - v2;
  v4 = sub_10000C518(&qword_100933090);
  __chkstk_darwin(v4 - 8);
  v6 = aBlock - v5;
  v7 = sub_10000C518(&unk_100933080);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - v9;
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedIndex + 8])
  {
    return;
  }

  v11 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedIndex];
  v12 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons;
  v13 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
  if (v13 >> 62)
  {
    if (v11 >= sub_100754664())
    {
      return;
    }
  }

  else if (v11 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v14 = *&v0[v12];
  if ((v14 & 0xC000000000000001) != 0)
  {

    v15 = sub_100754574();

    goto LABEL_8;
  }

  if (v11 < 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v11 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_23:
    __break(1u);
    return;
  }

  v15 = *(v14 + 8 * v11 + 32);
LABEL_8:
  sub_1001E899C(v15 + qword_10092CBF8, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000C8CC(v6, &qword_100933090);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_1007455B4();
    v16 = sub_10000C518(&unk_100923210);
    sub_1007526C4();

    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v3, 1, v16) == 1)
    {
      (*(v8 + 8))(v10, v7);
      sub_10000C8CC(v3, &unk_100923960);
    }

    else
    {
      sub_1007455C4();
      v18 = sub_1007455B4();
      sub_1003C0E00(aBlock[0], 1, v18, v3);

      (*(v8 + 8))(v10, v7);

      (*(v17 + 8))(v3, v16);
    }
  }

  v19 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_isSubmitted;
  v0[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_isSubmitted] = 1;
  v20 = objc_opt_self();
  v21 = swift_allocObject();
  *(v21 + 16) = v0;
  aBlock[4] = sub_1001E8B94;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_10086C188;
  v22 = _Block_copy(aBlock);
  v23 = v0;

  [v20 animateWithDuration:4 delay:v22 options:0 animations:0.2 completion:0.0];
  _Block_release(v22);
  [v23 setUserInteractionEnabled:(v0[v19] & 1) == 0];
  if (v0[v19] == 1)
  {
    v24._countAndFlagsBits = 0x455454494D425553;
    v24._object = 0xE900000000000044;
  }

  else
  {
    v24._countAndFlagsBits = 0x465F54494D425553;
    v24._object = 0xEF4B434142444545;
  }

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_1007458B4(v24, v29);
  v25 = *&v23[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_submitButton];
  v26 = sub_100753064();

  [v25 setTitle:v26 forState:0];

  [v25 setEnabled:(v0[v19] & 1) == 0];
  [v25 setNeedsLayout];
  v27 = *&v23[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_didSelectSubmitButton];
  if (v27)
  {

    v27(1);
    sub_1000164A8(v27);
  }
}

double sub_1001E76D0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v81 = a4;
  v75 = a3;
  v102 = a2;
  v101 = a1;
  v83 = sub_100754724();
  v6 = *(v83 - 8);
  __chkstk_darwin(v83);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_100750D64();
  v73 = *(v92 - 8);
  __chkstk_darwin(v92);
  v91 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_100750D84();
  v72 = *(v90 - 8);
  __chkstk_darwin(v90);
  v89 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_100750D94();
  v71 = *(v88 - 8);
  __chkstk_darwin(v88);
  v87 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_100750DB4();
  v12 = *(v85 - 1);
  __chkstk_darwin(v85);
  v86 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_100750DD4();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v103 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10074CD14();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100016C60(0, &qword_100923AB0);
  if (qword_100921490 != -1)
  {
    swift_once();
  }

  v80 = v8;
  v82 = v6;
  v20 = sub_100750534();
  sub_10000D0FC(v20, qword_100981AE8);
  v21 = [a5 traitCollection];
  v22 = sub_100753C14();

  v23 = sub_10074F3F4();
  v111 = v23;
  v97 = sub_1001E87EC(&qword_10092AC70, &type metadata accessor for Feature);
  v112 = v97;
  v24 = sub_10000D134(&v110);
  v25 = *(v23 - 8);
  v26 = *(v25 + 104);
  v96 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v98 = v23;
  v95 = v26;
  v94 = v25 + 104;
  v26(v24);
  v27 = v19;
  v28 = v22;
  sub_10074FC74();
  sub_10000C620(&v110);

  v77 = v28;
  sub_10074CD04();
  sub_10074CCE4();
  v29 = *(v16 + 8);
  v99 = v18;
  v102 = v15;
  v101 = v16 + 8;
  v93 = v29;
  v29(v18, v15);
  if (qword_100921498 != -1)
  {
    swift_once();
  }

  v30 = sub_10000D0FC(v20, qword_100981B00);
  v84 = a5;
  v31 = [a5 traitCollection];
  v74 = v30;
  v76 = v27;
  v100 = sub_100753C14();

  (*(v12 + 104))(v86, enum case for VerticalStackLayout.Alignment.center(_:), v85);
  v108 = sub_1007507D4();
  v109 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v107);
  sub_1007507C4();
  sub_100750DC4();
  v32 = *(v75 + 16);
  if (v32)
  {
    LODWORD(v86) = enum case for VerticalStackLayout.Child.Alignment.left(_:);
    v85 = (v72 + 104);
    v33 = (v73 + 8);
    v34 = (v72 + 8);
    v35 = (v71 + 8);
    v36 = v75 + 40;
    v37 = v89;
    do
    {
      v38 = v98;
      v108 = v98;
      v109 = v97;
      v39 = sub_10000D134(&v107);
      v95(v39, v96, v38);

      v40 = v100;
      sub_10074FC74();
      sub_10000C620(&v107);
      v41 = v99;
      sub_10074CD04();
      sub_10074CCE4();
      v93(v41, v102);
      v42 = v108;
      v43 = v109;
      v44 = sub_10000C888(&v107, v108);
      v106[3] = v42;
      v106[4] = v43[1];
      v45 = sub_10000D134(v106);
      (*(*(v42 - 8) + 16))(v45, v44, v42);
      if (qword_100920570 != -1)
      {
        swift_once();
      }

      v46 = sub_100750B04();
      v47 = sub_10000D0FC(v46, qword_10092CB60);
      v105[3] = v46;
      v105[4] = &protocol witness table for StaticDimension;
      v48 = sub_10000D134(v105);
      (*(*(v46 - 8) + 16))(v48, v47, v46);
      v49 = v90;
      (*v85)(v37, v86, v90);
      v104 = _swiftEmptyArrayStorage;
      sub_1001E87EC(&qword_10092CCA0, &type metadata accessor for VerticalStackLayout.ExclusionCondition);
      sub_10000C518(&qword_10092CCA8);
      sub_1001E8834();
      v50 = v91;
      v51 = v92;
      sub_1007543A4();
      v52 = v87;
      sub_100750D74();
      (*v33)(v50, v51);
      (*v34)(v37, v49);
      sub_10000C620(v105);
      sub_10000C620(v106);
      sub_10000C620(&v107);
      sub_100750DA4();
      (*v35)(v52, v88);
      v36 += 16;
      --v32;
    }

    while (v32);
  }

  v53 = v84;
  [v84 pageMarginInsets];
  v92 = v54;
  sub_100753BA4();
  sub_10000C888(&v110, v111);
  sub_100750414();
  v55 = v79;
  sub_100750404();
  v56 = [v53 traitCollection];
  v57 = sub_100753C14();

  v113._countAndFlagsBits = 0x465F54494D425553;
  v113._object = 0xEF4B434142444545;
  v114._countAndFlagsBits = 0;
  v114._object = 0xE000000000000000;
  sub_1007458B4(v113, v114);
  v58 = v98;
  v108 = v98;
  v109 = v97;
  v59 = sub_10000D134(&v107);
  v95(v59, v96, v58);
  v60 = v57;
  sub_10074FC74();
  sub_10000C620(&v107);
  v61 = v99;
  sub_10074CD04();
  sub_10074CCE4();
  v93(v61, v102);
  sub_10000C888(&v107, v108);
  sub_100750414();
  sub_100753BC4();
  if (qword_100921708 != -1)
  {
    swift_once();
  }

  v62 = sub_100750B04();
  sub_10000D0FC(v62, qword_100982098);
  v63 = v80;
  sub_1007502D4();
  sub_100750564();
  v64 = *(v82 + 8);
  v65 = v83;
  v64(v63, v83);
  if (qword_100921718 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v62, qword_1009820C8);
  sub_1007502D4();
  sub_100750564();
  v64(v63, v65);
  if (v81)
  {
    sub_1007502D4();
    sub_100750564();
    v64(v63, v65);
    v66 = [v53 traitCollection];
    sub_100751364();
  }

  sub_100753BC4();
  v68 = v67;

  (*(v78 + 8))(v103, v55);
  sub_10000C620(&v107);
  sub_10000C620(&v110);
  return v68;
}

uint64_t sub_1001E85FC(uint64_t a1, void *a2)
{
  result = sub_1001E5E30();
  if (!result)
  {
    return result;
  }

  v4 = sub_10074CFA4();
  v6 = v5;
  v7 = sub_10074CFB4();
  v8 = v7;
  if (v7 >> 62)
  {
    v9 = sub_100754664();
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_15:

LABEL_16:
    v17 = sub_10074CF94();
    sub_1001E76D0(v4, v6, _swiftEmptyArrayStorage, v17 & 1, a2);
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_10001E1E8(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v18 = v4;
    v10 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        sub_100754574();
      }

      else
      {
      }

      v11 = sub_10074DC64();
      v13 = v12;

      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_10001E1E8((v14 > 1), v15 + 1, 1);
      }

      ++v10;
      _swiftEmptyArrayStorage[2] = v15 + 1;
      v16 = &_swiftEmptyArrayStorage[2 * v15];
      v16[4] = v11;
      v16[5] = v13;
    }

    while (v9 != v10);

    v4 = v18;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001E87EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001E8834()
{
  result = qword_10092CCB0;
  if (!qword_10092CCB0)
  {
    sub_10000C724(&qword_10092CCA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092CCB0);
  }

  return result;
}

double sub_1001E8898()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtensionP33_091EBE25195B1220BBDC30ECB0E4A36A21SubmitButtonContainer_submitButton];
  if (!v1)
  {
    return JUMeasurementsZero;
  }

  v2 = v1;
  [v0 layoutMargins];
  sub_100753BA4();
  [v2 measurementsWithFitting:v0 in:?];
  [v0 layoutMargins];
  sub_100753BC4();
  v4 = v3;
  [v0 layoutMargins];
  [v0 layoutMargins];

  return v4;
}

uint64_t sub_1001E899C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100933090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t initializeBufferWithCopyOfBuffer for PersonalizationFeedbackCollectionViewCell.State(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PersonalizationFeedbackCollectionViewCell.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 10))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 9);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PersonalizationFeedbackCollectionViewCell.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1001E8AD8()
{
  result = qword_10092CCB8;
  if (!qword_10092CCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092CCB8);
  }

  return result;
}

unint64_t sub_1001E8B30()
{
  result = qword_10092CCC0;
  if (!qword_10092CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092CCC0);
  }

  return result;
}

uint64_t type metadata accessor for FadeOutDynamicTypeLabel()
{
  result = qword_10092CCD8;
  if (!qword_10092CCD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001E8C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a7;
  v27 = a8;
  v25 = a5;
  v24 = a3;
  v11 = sub_10074AB44();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v15 - 8);
  v17 = &v24 - v16;
  v18 = objc_allocWithZone(v8);
  v19 = qword_10092CCC8;
  v20 = objc_allocWithZone(type metadata accessor for InvertedGradientLayer());
  *&v18[v19] = [v20 init];
  v21 = &v18[qword_10092CCD0];
  *v21 = 0;
  v21[8] = 1;
  sub_10006A0D4(a1, v17);
  (*(v12 + 16))(v14, a6, v11);
  v22 = sub_100745C74();
  (*(v12 + 8))(a6, v11);
  sub_10006A144(a1);
  return v22;
}

void sub_1001E8E28()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100750BD4();
  v61 = *(v3 - 8);
  v62 = v3;
  __chkstk_darwin(v3);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_100750954();
  v60 = *(v63 - 8);
  __chkstk_darwin(v63);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v56 - v9;
  v11 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v11 - 8);
  v13 = &v56 - v12;
  v14 = sub_100750534();
  v15 = *(v14 - 8);
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64.receiver = v1;
  v64.super_class = ObjectType;
  objc_msgSendSuper2(&v64, "layoutSubviews", v16);
  v19 = [v1 text];
  if (!v19)
  {
    goto LABEL_4;
  }

  v20 = v19;
  v59 = sub_100753094();
  v22 = v21;

  if (v1[qword_10092CCD0 + 8])
  {

LABEL_4:
    v23 = [v1 layer];
    [v23 setMask:0];

    return;
  }

  v56 = v22;
  v58 = v10;
  v24 = *&v1[qword_10092CCD0];
  sub_100745B94();
  v25 = *(v15 + 48);
  if (v25(v13, 1, v14) == 1)
  {
    *v18 = UIFontTextStyleBody;
    *(v18 + 2) = 0;
    (*(v15 + 104))(v18, enum case for FontUseCase.preferredFont(_:), v14);
    v26 = v25(v13, 1, v14);
    v27 = UIFontTextStyleBody;
    if (v26 != 1)
    {
      sub_10006A144(v13);
    }
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
  }

  sub_100038D38();
  v28 = [v1 traitCollection];
  v29 = sub_100753C14();

  (*(v15 + 8))(v18, v14);
  v30 = v29;
  [v1 bounds];
  CGRectGetWidth(v65);
  sub_100750944();
  v31 = v58;
  sub_100750934();
  v32 = v60;
  v33 = v63;
  v57 = *(v60 + 8);
  v57(v7, v63);
  (*(v32 + 16))(v7, v31, v33);
  sub_100750BB4();
  sub_100750BE4();
  v34 = [v1 traitCollection];
  sub_100750BC4();
  v36 = v35;
  v38 = v37;

  (*(v61 + 8))(v5, v62);
  [v1 bounds];
  v66.size.width = v36;
  v66.size.height = v38;
  Height = CGRectGetHeight(v66);
  [v1 bounds];
  v40 = CGRectGetHeight(v67);
  v41 = [v1 layer];
  v42 = v41;
  if (v40 <= Height)
  {
    v44 = *&v1[qword_10092CCC8];
    [v41 setMask:v44];

    [v30 lineHeight];
    *&v44[OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_lineHeight] = v45;
    *&v44[OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_gradientStart] = v24 + 20.0;
    *&v44[OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_gradientEnd] = v24 + -5.0;
    v46 = v30;
    v47 = v31;
    v48 = [v1 textAlignment];
    v49 = [v1 traitCollection];
    v50 = sub_1007537F4();

    if (v50)
    {
      v51 = 0;
    }

    else
    {
      v51 = 2;
    }

    v52 = v48 == v51;
    v53 = [v1 traitCollection];
    v54 = sub_1007537F4();

    if ((v54 ^ v52))
    {
      v55 = 2;
    }

    else
    {
      v55 = 3;
    }

    *&v44[OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_textDirection] = v55;
    [v1 bounds];
    [v44 setFrame:?];
    [v44 setNeedsDisplay];

    v43 = v47;
  }

  else
  {
    [v41 setMask:0];

    v43 = v31;
  }

  v57(v43, v63);
}

void sub_1001E94C0(void *a1)
{
  v1 = a1;
  sub_1001E8E28();
}

void sub_1001E9530(CGContext *a1)
{
  v2 = v1;
  v4 = sub_10074FC04();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [v6 blackColor];
  v8 = [v7 CGColor];

  CGContextSetFillColorWithColor(a1, v8);
  [v1 bounds];
  x = v42.origin.x;
  width = v42.size.width;
  v12 = v11 - *&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_lineHeight];
  v37 = a1;
  v42.size.height = v12;
  CGContextFillRect(a1, v42);
  v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_textDirection];
  sub_10000C518(&unk_1009231A0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1007A7210;
  if (v13 == 3)
  {
    v15 = &selRef_blackColor;
  }

  else
  {
    v15 = &selRef_clearColor;
  }

  if (v13 == 3)
  {
    v16 = &selRef_clearColor;
  }

  else
  {
    v16 = &selRef_blackColor;
  }

  if (v13 == 3)
  {
    v17 = &unk_1008627A0;
  }

  else
  {
    v17 = &unk_1008627D0;
  }

  v18 = [v6 *v15];
  v19 = [v18 CGColor];

  *(v14 + 32) = v19;
  v20 = [v6 *v16];
  v21 = [v20 CGColor];

  *(v14 + 40) = v21;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  type metadata accessor for CGColor(0);
  v38 = DeviceRGB;
  isa = sub_100753294().super.isa;

  v24 = CGGradientCreateWithColors(v38, isa, v17);

  if (v24)
  {
    if (v13 == 3)
    {
      [v2 bounds];
      v25 = CGRectGetMaxX(v43) - *&v2[OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_gradientStart];
      [v2 bounds];
      v26 = CGRectGetMaxX(v44) - *&v2[OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_gradientEnd];
      v27 = 1;
    }

    else
    {
      v25 = *&v2[OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_gradientEnd];
      v26 = *&v2[OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_gradientStart];
      v27 = 2;
    }

    [v2 bounds];
    v46.size.height = CGRectGetHeight(v45);
    v29 = v37;
    v46.origin.x = x;
    v46.origin.y = v12;
    v46.size.width = width;
    CGContextAddRect(v37, v46);
    v31 = v34;
    v30 = v35;
    v32 = v36;
    (*(v35 + 104))(v34, enum case for CGPathFillRule.winding(_:), v36);
    sub_100753544();
    (*(v30 + 8))(v31, v32);
    v40.y = 0.5;
    v41.y = 0.5;
    v40.x = v25;
    v41.x = v26;
    CGContextDrawLinearGradient(v29, v24, v40, v41, v27);
  }

  else
  {
    v28 = v38;
  }
}

id sub_1001E9AE4(void *a1)
{
  *&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_lineHeight] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_gradientStart] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_gradientEnd] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_textDirection] = 3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for InvertedGradientLayer();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1001E9BAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InvertedGradientLayer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001E9C08(uint64_t a1)
{
  v3 = sub_10000C518(&unk_10092D480);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  sub_10041D878(a1);
  (*(v4 + 16))(v6, a1, v3);
  if ((*(v4 + 88))(v6, v3) == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v4 + 96))(v6, v3);
    sub_10074CE14();
    if (v7)
    {
      v8 = sub_100753064();
    }

    else
    {
      v8 = 0;
    }

    [v1 setTitle:v8];
  }

  else
  {
    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1001E9D94()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph);
  type metadata accessor for SearchChartsAndCategoriesShelfSupplementaryProvider();
  v2 = swift_allocObject();
  v3 = sub_1001EAE7C(&qword_10092D470, 255, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_1001EAE7C(&qword_10092D478, v4, type metadata accessor for SearchChartsAndCategoriesShelfSupplementaryProvider);

  return v2;
}

uint64_t sub_1001E9E94@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10074E4B4();
  v4 = v3;
  sub_100744594();
  swift_allocObject();
  v5 = sub_100744584();
  swift_allocObject();
  v6 = sub_100744584();
  a1[3] = &type metadata for SearchChartsAndCategoriesPageGridProvider;
  a1[4] = sub_1001EADE8();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = v5;
  *(result + 24) = v6;
  *(result + 32) = v2;
  *(result + 40) = v4 & 1;
  return result;
}

unint64_t sub_1001E9F5C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SearchChartsAndCategoriesPageShelfLayoutSpacingProvider;
  result = sub_1001EAD94();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1001E9F90(uint64_t a1)
{
  v2 = sub_100741264();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_100932480);
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  sub_1001EACCC(a1, v9, type metadata accessor for FlowDestination);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_1001EAD34(v9, type metadata accessor for FlowDestination);
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v19 = sub_10000C518(&unk_100932490);
  sub_100066578(&v9[*(v19 + 48)], v18, &unk_100923970);
  sub_1007492E4();
  v20 = *(v4 + 48);
  sub_100016B4C(v15, v6, &unk_100923970);
  sub_100016B4C(v18, &v6[v20], &unk_100923970);
  v21 = v29;
  v22 = *(v29 + 48);
  if (v22(v6, 1, v2) != 1)
  {
    sub_100016B4C(v6, v12, &unk_100923970);
    if (v22(&v6[v20], 1, v2) != 1)
    {
      v25 = v28;
      (*(v21 + 32))(v28, &v6[v20], v2);
      sub_1001EAE7C(&qword_100926240, 255, &type metadata accessor for URL);
      v26 = v21;
      v23 = sub_100753014();
      v27 = *(v26 + 8);
      v27(v25, v2);
      sub_10000C8CC(v15, &unk_100923970);
      sub_10000C8CC(v18, &unk_100923970);
      v27(v12, v2);
      sub_10000C8CC(v6, &unk_100923970);
      return v23 & 1;
    }

    sub_10000C8CC(v15, &unk_100923970);
    sub_10000C8CC(v18, &unk_100923970);
    (*(v21 + 8))(v12, v2);
    goto LABEL_8;
  }

  sub_10000C8CC(v15, &unk_100923970);
  sub_10000C8CC(v18, &unk_100923970);
  if (v22(&v6[v20], 1, v2) != 1)
  {
LABEL_8:
    sub_10000C8CC(v6, &unk_100932480);
    goto LABEL_9;
  }

  sub_10000C8CC(v6, &unk_100923970);
  v23 = 1;
  return v23 & 1;
}

uint64_t type metadata accessor for SearchChartsAndCategoriesDiffablePageViewController()
{
  result = qword_10092CD98;
  if (!qword_10092CD98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001EA544@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v58 = sub_100747144();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000C518(&qword_100928A88);
  __chkstk_darwin(v2 - 8);
  v55 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v45 - v5;
  v7 = sub_10000C518(&unk_100940600);
  __chkstk_darwin(v7 - 8);
  v53 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v50 = &v45 - v10;
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v49 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v48 = &v45 - v15;
  __chkstk_darwin(v16);
  v18 = (&v45 - v17);
  v19 = sub_10000C518(&unk_100928A90);
  __chkstk_darwin(v19 - 8);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v45 - v23;
  v25 = sub_1007439C4();
  v26 = *(v25 - 8);
  (*(v26 + 56))(v24, 1, 1, v25);
  v27 = sub_100747134();
  v51 = *(v27 - 8);
  v52 = v27;
  v28 = *(v51 + 56);
  v46 = v6;
  v28(v6, 1, 1);
  v47 = v24;
  sub_100016B4C(v24, v21, &unk_100928A90);
  if ((*(v26 + 48))(v21, 1, v25) == 1)
  {
    sub_10000C8CC(v21, &unk_100928A90);
    v29 = 0;
  }

  else
  {
    v29 = sub_100743964();
    (*(v26 + 8))(v21, v25);
  }

  sub_1003AFADC(v29, v18);

  if (qword_100920B08 != -1)
  {
    swift_once();
  }

  v30 = sub_10000D0FC(v11, qword_10097FFD0);
  if (qword_100920AE0 != -1)
  {
    swift_once();
  }

  v31 = sub_10000D0FC(v11, qword_10097FF58);
  v32 = v50;
  sub_1001EACCC(v31, v50, type metadata accessor for TitleHeaderView.TextConfiguration);
  (*(v12 + 56))(v32, 0, 1, v11);
  v33 = v48;
  sub_1001EACCC(v18, v48, type metadata accessor for TitleHeaderView.TextConfiguration);
  v34 = v49;
  sub_1001EACCC(v30, v49, type metadata accessor for TitleHeaderView.TextConfiguration);
  v35 = v53;
  sub_100016B4C(v32, v53, &unk_100940600);
  v36 = v46;
  v37 = v55;
  sub_100016B4C(v46, v55, &qword_100928A88);
  v38 = v56;
  (*(v56 + 104))(v57, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v58);
  sub_10000D198();
  v45 = sub_100753DB4();
  sub_10000C8CC(v36, &qword_100928A88);
  sub_10000C8CC(v32, &unk_100940600);
  sub_1001EAD34(v18, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10000C8CC(v47, &unk_100928A90);
  v39 = type metadata accessor for TitleHeaderView.Style(0);
  v40 = v39[8];
  v41 = v54;
  sub_1001502E0(v33, v54);
  sub_1001502E0(v34, v41 + v39[5]);
  sub_100066578(v35, v41 + v39[6], &unk_100940600);
  *(v41 + v39[7]) = 0;
  *(v41 + v40) = 0;
  *(v41 + v39[9]) = 1;
  *(v41 + v39[14]) = 0x4030000000000000;
  *(v41 + v39[12]) = 0;
  *(v41 + v39[13]) = v45;
  (*(v38 + 32))(v41 + v39[11], v57, v58);
  v43 = v51;
  v42 = v52;
  if ((*(v51 + 48))(v37, 1, v52) != 1)
  {
    return (*(v43 + 32))(v41 + v39[10], v37, v42);
  }

  sub_10000C8CC(v37, &qword_100928A88);
  return (*(v43 + 104))(v41 + v39[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:), v42);
}

uint64_t sub_1001EAC68()
{

  sub_10000C4F0(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1001EACCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001EAD34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001EAD94()
{
  result = qword_10092D460;
  if (!qword_10092D460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092D460);
  }

  return result;
}

unint64_t sub_1001EADE8()
{
  result = qword_10092D468;
  if (!qword_10092D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092D468);
  }

  return result;
}

uint64_t sub_1001EAE3C()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1001EAE7C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001EAEC4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100747524();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_10092E450);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  swift_getKeyPath();
  sub_100746914();

  swift_getKeyPath();
  sub_1007525B4();

  (*(v7 + 8))(v9, v6);
  if (v19[0] && (v10 = sub_100743A34(), , (v10 & 1) != 0))
  {
    v11 = sub_100747564();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }

  else
  {
    swift_getKeyPath();
    sub_100746914();

    v13 = v19[0];
    sub_100753804();

    sub_10000C518(&qword_1009253C0);
    sub_1007468C4();
    if (v18)
    {
      sub_100032CCC(&v17, v19);
      sub_10000C888(v19, v19[3]);
      if (sub_10074CA24())
      {
        v14 = 1;
      }

      else
      {
        (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
        sub_100747534();
        v14 = 0;
      }

      v16 = sub_100747564();
      (*(*(v16 - 8) + 56))(a1, v14, 1, v16);
      return sub_10000C620(v19);
    }

    else
    {
      sub_1001EB2A8(&v17);
      (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
      sub_100747534();
      v15 = sub_100747564();
      return (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
    }
  }
}

uint64_t sub_1001EB2A8(uint64_t a1)
{
  v2 = sub_10000C518(&qword_1009253C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ProductLockupInlineUberLayout.Metrics.init(iconSize:wordmarkSpace:titleSpace:subtitleSpace:offerButtonTopSpace:offerButtonBottomSpace:shareButtonSpace:bannerViewHeight:secondaryBannerViewHeight:expandedOfferSubtitleSpace:expandedOfferSubtitleBottomSpace:chevronSpace:backgroundMaxWidth:backgroundHorizontalPadding:backgroundHorizontalContentPadding:blurHeight:darkeningOverlayHeight:contentInsets:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, __int128 *a16, __int128 *a17, uint64_t a18, __int128 *a19, uint64_t a20, uint64_t a21, __int128 *a22, __int128 *a23)
{
  a9[4] = a10;
  a9[5] = a11;
  v32 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  v33 = v32[7];
  v34 = sub_10000C518(&unk_1009249B0);
  v35 = *(*(v34 - 8) + 32);
  v35(a9 + v33, a1, v34);
  v35(a9 + v32[6], a2, v34);
  v35(a9 + v32[8], a3, v34);
  sub_100012160(a4, a9 + v32[9]);
  v35(a9 + v32[10], a5, v34);
  sub_100012160(a6, a9 + v32[14]);
  sub_100012160(a7, a9 + v32[15]);
  sub_100012160(a8, a9 + v32[16]);
  sub_100012160(a16, a9 + v32[11]);
  sub_100012160(a17, a9 + v32[12]);
  v36 = v32[13];
  v37 = sub_10000C518(&unk_100923C30);
  (*(*(v37 - 8) + 32))(a9 + v36, a18, v37);
  sub_100012160(a19, a9 + v32[17]);
  v35(a9 + v32[18], a20, v34);
  v35(a9 + v32[19], a21, v34);
  sub_100012160(a22, a9 + v32[20]);
  result = sub_100012160(a23, a9 + v32[21]);
  *a9 = a12;
  a9[1] = a13;
  a9[2] = a14;
  a9[3] = a15;
  return result;
}

__n128 ProductLockupInlineUberLayout.init(metrics:keylineView:blurView:darkeningOverlayEffectView:wordmarkView:iconView:titleLabel:subtitleLabel:shareButton:offerButton:expandedOfferSubtitleLabel:downloadProgressLabel:arrowView:bannerView:secondaryBannerView:shadowView:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_1001B5928(a1, a9);
  v21 = type metadata accessor for ProductLockupInlineUberLayout(0);
  v22 = a9 + v21[5];
  v23 = *(a2 + 16);
  *v22 = *a2;
  *(v22 + 16) = v23;
  *(v22 + 32) = *(a2 + 32);
  sub_100012160(a3, a9 + v21[6]);
  v24 = a9 + v21[7];
  v25 = *(a4 + 16);
  *v24 = *a4;
  *(v24 + 16) = v25;
  *(v24 + 32) = *(a4 + 32);
  sub_100012160(a5, a9 + v21[10]);
  sub_100012160(a6, a9 + v21[8]);
  sub_100012160(a7, a9 + v21[9]);
  sub_100012160(a8, a9 + v21[11]);
  v26 = a9 + v21[12];
  v27 = *(a10 + 16);
  *v26 = *a10;
  *(v26 + 16) = v27;
  *(v26 + 32) = *(a10 + 32);
  sub_100012160(a11, a9 + v21[13]);
  v28 = a9 + v21[14];
  v29 = *(a12 + 16);
  *v28 = *a12;
  *(v28 + 16) = v29;
  *(v28 + 32) = *(a12 + 32);
  v30 = a9 + v21[15];
  v31 = *(a13 + 16);
  *v30 = *a13;
  *(v30 + 16) = v31;
  *(v30 + 32) = *(a13 + 32);
  v32 = a9 + v21[16];
  v33 = *(a14 + 16);
  *v32 = *a14;
  *(v32 + 16) = v33;
  *(v32 + 32) = *(a14 + 32);
  v34 = a9 + v21[17];
  v35 = *(a15 + 16);
  *v34 = *a15;
  *(v34 + 16) = v35;
  *(v34 + 32) = *(a15 + 32);
  v36 = a9 + v21[18];
  v37 = *(a16 + 16);
  *v36 = *a16;
  *(v36 + 16) = v37;
  *(v36 + 32) = *(a16 + 32);
  v38 = a9 + v21[19];
  result = *a17;
  v40 = *(a17 + 16);
  *v38 = *a17;
  *(v38 + 16) = v40;
  *(v38 + 32) = *(a17 + 32);
  return result;
}

uint64_t sub_1001EB7D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1001EBAAC@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ProductLockupInlineUberLayout(0);
  sub_100016B4C(v1 + *(v3 + 56), &v9, &qword_10092BC30);
  if (v10)
  {
    sub_100012160(&v9, v11);
    v4 = v12;
    v5 = v13;
    v6 = sub_10000C888(v11, v12);
    *(a1 + 24) = v4;
    *(a1 + 32) = *(v5 + 8);
    v7 = sub_10000D134(a1);
    (*(*(v4 - 8) + 16))(v7, v6, v4);
LABEL_3:
    sub_10000C620(v11);
    return result;
  }

  sub_10000C8CC(&v9, &qword_10092BC30);
  sub_100016B4C(v1 + *(v3 + 60), &v9, &unk_100928A00);
  if (v10)
  {
    sub_100012160(&v9, v11);
    sub_10000C888(v11, v12);
    if ((sub_1007503A4() & 1) == 0)
    {
      sub_10000C824(v11, a1);
      goto LABEL_3;
    }

    sub_10000C620(v11);
  }

  else
  {
    sub_10000C8CC(&v9, &unk_100928A00);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t ProductLockupInlineUberLayout.Metrics.titleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 24);
  v4 = sub_10000C518(&unk_1009249B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.titleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 24);
  v4 = sub_10000C518(&unk_1009249B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.wordmarkSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 28);
  v4 = sub_10000C518(&unk_1009249B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.wordmarkSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 28);
  v4 = sub_10000C518(&unk_1009249B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.subtitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 32);
  v4 = sub_10000C518(&unk_1009249B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.subtitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 32);
  v4 = sub_10000C518(&unk_1009249B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.offerButtonTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 36);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.offerButtonBottomSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 40);
  v4 = sub_10000C518(&unk_1009249B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.offerButtonBottomSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 40);
  v4 = sub_10000C518(&unk_1009249B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.expandedOfferSubtitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 44);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.expandedOfferSubtitleBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 48);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.chevronSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 52);
  v4 = sub_10000C518(&unk_100923C30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.chevronSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 52);
  v4 = sub_10000C518(&unk_100923C30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.shareButtonSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 56);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.bannerViewHeight.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 60);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.secondaryBannerViewHeight.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 64);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.backgroundMaxWidth.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 68);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.backgroundHorizontalPadding.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 72);
  v4 = sub_10000C518(&unk_1009249B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.backgroundHorizontalPadding.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 72);
  v4 = sub_10000C518(&unk_1009249B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.backgroundHorizontalContentPadding.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 76);
  v4 = sub_10000C518(&unk_1009249B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.backgroundHorizontalContentPadding.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 76);
  v4 = sub_10000C518(&unk_1009249B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.blurHeight.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 80);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.darkeningOverlayHeight.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 84);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

double ProductLockupInlineUberLayout.measurements(fitting:in:)(void *a1, double a2)
{
  swift_getObjectType();

  return sub_1001EEFE0(a1, v2, a2);
}

void static ProductLockupInlineUberLayout.estimatedPaddingForLabels(metrics:in:)(uint64_t a1, void *a2)
{
  v3 = sub_100754724();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a2 traitCollection];
  v9 = sub_1007537E4();

  if (v9)
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_1007502D4();
    sub_100743514();
    (*(v4 + 8))(v7, v3);
  }
}

uint64_t ProductLockupInlineUberLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v159 = a2;
  v161 = sub_10000C518(&unk_1009249B0);
  v156 = *(v161 - 8);
  __chkstk_darwin(v161);
  v155 = &v154 - v13;
  v14 = sub_100754724();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10010FD98(a3, a4, a5, a6, *v6, v6[1]);
  v177 = v19;
  v174 = v20;
  v179 = v21;
  *&v22 = COERCE_DOUBLE(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0));
  sub_10000C888((v6 + v22[15]), *(v6 + v22[15] + 24));
  sub_100536120();
  sub_100750564();
  v160 = v23;
  v26 = *(v15 + 8);
  v24 = v15 + 8;
  v25 = v26;
  v26(v17, v14);
  sub_10000C888((v7 + v22[16]), *(v7 + v22[16] + 24));
  sub_100536120();
  sub_100750564();
  v163 = v27;
  v180 = v14;
  v26(v17, v14);
  v28 = [a1 traitCollection];
  v29 = sub_1007537D4();

  if ((v29 & 1) == 0 || (sub_1001EBAAC(&v183), v30 = v184, sub_10000C8CC(&v183, &unk_100928A00), !v30))
  {
    sub_10000C518(&unk_100923C30);
    v31 = v155;
    sub_100743534();
    sub_1007502D4();
    sub_100743514();
    v25(v17, v180);
    (*(v156 + 8))(v31, v161);
  }

  v32 = [a1 traitCollection];
  v33 = sub_1007537D4();

  v166 = a3;
  v172 = v24;
  v175 = v18;
  v178 = v25;
  v176 = *&v22;
  v167 = a6;
  v164 = a5;
  v165 = a4;
  if (v33)
  {
    v34 = type metadata accessor for ProductLockupInlineUberLayout(0);
    v35 = (v7 + *(v34 + 24));
    v36 = v35[3];
    v173 = v35[4];
    v171 = COERCE_DOUBLE(sub_10000C888(v35, v36));
    v186.origin.x = a3;
    v186.origin.y = a4;
    v186.size.width = a5;
    v186.size.height = a6;
    CGRectGetMinX(v186);
    v187.origin.x = a3;
    v187.origin.y = a4;
    v187.size.width = a5;
    v187.size.height = a6;
    CGRectGetMaxY(v187);
    v37 = (v7 + v22[20]);
    sub_10000C888(v37, v37[3]);
    sub_100536120();
    v38 = v180;
    sub_100750564();
    v178(v17, v38);
    v188.origin.x = a3;
    v188.origin.y = a4;
    v188.size.width = a5;
    v188.size.height = a6;
    CGRectGetWidth(v188);
    sub_10000C888(v37, v37[3]);
    sub_100536120();
    sub_100750564();
    v39 = v38;
    v25 = v178;
    v178(v17, v39);
    sub_100750394();
    v173 = v34;
    sub_100016B4C(v7 + *(v34 + 28), &v183, &unk_100928A00);
    if (v184)
    {
      v171 = v185;
      sub_10000C888(&v183, v184);
      v189.origin.x = a3;
      v189.origin.y = a4;
      v189.size.width = a5;
      v189.size.height = a6;
      CGRectGetMinX(v189);
      v190.origin.x = a3;
      v190.origin.y = a4;
      v190.size.width = a5;
      v190.size.height = a6;
      CGRectGetMaxY(v190);
      v40 = (v7 + *(*&v176 + 84));
      sub_10000C888(v40, v40[3]);
      sub_100536120();
      v41 = v180;
      sub_100750564();
      v178(v17, v41);
      v191.origin.x = a3;
      v191.origin.y = a4;
      v191.size.width = a5;
      v191.size.height = a6;
      CGRectGetWidth(v191);
      sub_10000C888(v40, v40[3]);
      sub_100536120();
      sub_100750564();
      v42 = v41;
      v25 = v178;
      v178(v17, v42);
      sub_100750394();
      sub_10000C620(&v183);
    }

    else
    {
      sub_10000C8CC(&v183, &unk_100928A00);
    }

    v53 = v174;
    sub_100016B4C(v7 + v173[5], &v183, &unk_100928A00);
    v18 = v175;
    if (v184)
    {
      sub_10000C888(&v183, v184);
      v54 = v166;
      v193.origin.x = v166;
      v193.origin.y = a4;
      v193.size.width = a5;
      v193.size.height = a6;
      CGRectGetMinX(v193);
      v194.origin.x = v54;
      v194.origin.y = a4;
      v194.size.width = a5;
      v194.size.height = a6;
      CGRectGetMinY(v194);
      v195.origin.x = v54;
      v195.origin.y = a4;
      v195.size.width = a5;
      v195.size.height = a6;
      CGRectGetWidth(v195);
      if (qword_100920010 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v161, qword_10097D050);
      sub_1007502D4();
      sub_100743514();
      v25(v17, v180);
      v55 = [a1 traitCollection];
      [v55 displayScale];

      sub_100750394();
      sub_10000C620(&v183);
      v18 = v175;
      v53 = v174;
    }

    else
    {
      sub_10000C8CC(&v183, &unk_100928A00);
    }
  }

  else
  {
    v192.origin.x = a3;
    v192.origin.y = a4;
    v192.size.width = a5;
    v192.size.height = a6;
    Width = CGRectGetWidth(v192);
    sub_10000C888((v7 + v22[17]), *(v7 + v22[17] + 24));
    sub_100536120();
    sub_100750564();
    v45 = v44;
    v46 = v180;
    v25(v17, v180);
    v47 = (Width - v45) * 0.5;
    sub_1007502D4();
    sub_100743514();
    v49 = v48;
    v25(v17, v46);
    if (v47 > v49)
    {
      v50 = v47;
    }

    else
    {
      v50 = v49;
    }

    v51 = floor(v50);
    v52 = type metadata accessor for ProductLockupInlineUberLayout(0);
    sub_10000C888((v7 + *(v52 + 24)), *(v7 + *(v52 + 24) + 24));
    sub_10010FD98(a3, a4, a5, a6, 0.0, v51);
    sub_100750394();
    v173 = v52;
    sub_100016B4C(v7 + *(v52 + 20), &v183, &unk_100928A00);
    if (v184)
    {
      sub_10000C888(&v183, v184);
      sub_100750394();
      sub_10000C620(&v183);
    }

    else
    {
      sub_10000C8CC(&v183, &unk_100928A00);
    }

    v53 = v174;
  }

  v196.origin.x = v18;
  v56 = v177;
  v196.origin.y = v177;
  v196.size.width = v53;
  v57 = v179;
  v196.size.height = v179;
  MidX = CGRectGetMidX(v196);
  v59 = v7[4];
  v60 = floor(MidX - v59 * 0.5);
  v197.origin.x = v18;
  v197.origin.y = v56;
  v197.size.width = v53;
  v197.size.height = v57;
  MinY = CGRectGetMinY(v197);
  v62 = v7[5];
  v63 = floor(MinY - v62 * 0.5);
  type metadata accessor for ProductLockupInlineUberLayout(0);
  v64 = v173;
  v65 = (v7 + v173[8]);
  sub_10000C888(v65, v65[3]);
  v170 = v60;
  v168 = v63;
  v171 = v59;
  v169 = v62;
  sub_100753B24();
  sub_100750394();
  sub_100016B4C(v7 + v64[19], &v183, &unk_100928A00);
  if (v184)
  {
    sub_10000C888(&v183, v184);
    sub_10000C888(v65, v65[3]);
    v25 = v178;
    sub_100750384();
    sub_100750394();
    sub_10000C620(&v183);
  }

  else
  {
    sub_10000C8CC(&v183, &unk_100928A00);
  }

  v66 = [a1 traitCollection];
  v67 = sub_1007537E4();

  v68 = 0.0;
  if (v67)
  {
    sub_1007502D4();
    sub_100743514();
    v68 = v69;
    v25(v17, v180);
  }

  v70 = (v7 + v173[10]);
  sub_10000C888(v70, v70[3]);
  v198.origin.x = v18;
  v71 = v177;
  v198.origin.y = v177;
  v198.size.width = v53;
  v72 = v179;
  v198.size.height = v179;
  CGRectGetWidth(v198);
  v158 = v68;
  v157 = v68 + v68;
  v199.origin.x = v18;
  v199.origin.y = v71;
  v199.size.width = v53;
  v199.size.height = v72;
  CGRectGetMaxY(v199);
  v200.origin.x = v170;
  v200.origin.y = v168;
  v200.size.width = v171;
  v200.size.height = v169;
  CGRectGetMaxY(v200);
  sub_100750404();
  sub_1007502D4();
  sub_100743514();
  v74 = v73;
  v25(v17, v180);
  v183 = v74;
  v75 = v174;
  sub_100750584();
  sub_10000C888(v70, v70[3]);
  v201.origin.x = v18;
  v201.origin.y = v71;
  v201.size.width = v75;
  v201.size.height = v72;
  CGRectGetMinX(v201);
  v202.origin.x = v18;
  v202.origin.y = v71;
  v202.size.width = v75;
  v202.size.height = v72;
  CGRectGetWidth(v202);
  v203.origin.x = v170;
  v203.origin.y = v168;
  v203.size.width = v171;
  v203.size.height = v169;
  CGRectGetMaxY(v203);
  sub_100750394();
  v76 = [a1 traitCollection];
  v77 = sub_1007537D4();

  if (v77)
  {
    v78 = v175;
    v204.origin.x = v175;
    v204.origin.y = v71;
    v204.size.width = v75;
    v204.size.height = v72;
    MinX = CGRectGetMinX(v204);
    sub_10000C888(v70, v70[3]);
    sub_100750384();
    MaxY = CGRectGetMaxY(v205);
    v206.origin.x = v78;
    v206.origin.y = v71;
    v206.size.width = v75;
    v206.size.height = v72;
    v80 = CGRectGetWidth(v206);
    v81 = v71;
    v82 = v80;
    v83 = v78;
    v84 = v75;
    v85 = v72;
    v86 = v173;
  }

  else
  {
    v87 = v173;
    v88 = (v7 + v173[6]);
    sub_10000C888(v88, v88[3]);
    sub_100750384();
    MinX = CGRectGetMinX(v207);
    sub_10000C888(v70, v70[3]);
    sub_100750384();
    MaxY = CGRectGetMaxY(v208);
    sub_10000C888(v88, v88[3]);
    sub_100750384();
    v82 = CGRectGetWidth(v209);
    sub_10000C888(v88, v88[3]);
    sub_100750384();
    v86 = v87;
  }

  v89 = CGRectGetMaxY(*&v83);
  v210.origin.x = v170;
  v210.origin.y = v168;
  v210.size.width = v171;
  v210.size.height = v169;
  v90 = v89 - CGRectGetMaxY(v210);
  v91 = v82 - v157;
  v92 = v158 + MinX;
  v93 = (v7 + v86[9]);
  sub_10000C888(v93, *(v93 + 3));
  sub_100750404();
  v171 = v94;
  v170 = v95;
  v169 = v96;
  v97 = (v7 + v86[11]);
  sub_10000C888(v97, *(v97 + 3));
  sub_100750404();
  v157 = v98;
  v158 = v99;
  v154 = v100;
  v168 = v101;
  sub_10000C888(v93, *(v93 + 3));
  v211.origin.x = v92;
  v102 = MaxY;
  v211.origin.y = MaxY;
  v211.size.width = v91;
  v211.size.height = v90;
  CGRectGetMinX(v211);
  v212.origin.x = v92;
  v212.origin.y = v102;
  v212.size.width = v91;
  v212.size.height = v90;
  CGRectGetMinY(v212);
  sub_1007502D4();
  sub_100743514();
  v104 = v103;
  v178(v17, v180);
  v183 = v104;
  v105 = v169;
  sub_100750584();
  v213.origin.x = v92;
  v213.origin.y = v102;
  v213.size.width = v91;
  v213.size.height = v90;
  CGRectGetWidth(v213);
  sub_100750394();
  sub_10000C888(v97, *(v97 + 3));
  if (sub_100750364())
  {
    v106 = *(v97 + 3);
    v171 = v97[4];
    sub_10000C888(v97, v106);
    v214.origin.x = v92;
    v107 = MaxY;
    v214.origin.y = MaxY;
    v214.size.width = v91;
    v214.size.height = v90;
    v170 = CGRectGetMinX(v214);
    sub_10000C888(v93, *(v93 + 3));
    sub_100750384();
    CGRectGetMaxY(v215);
    sub_1007502D4();
    sub_100743514();
    v109 = v108;
    v178(v17, v180);
    v183 = v109;
    v110 = v168;
    sub_100750584();
    v216.origin.x = v92;
    v216.origin.y = v107;
    v216.size.width = v91;
    v216.size.height = v90;
    CGRectGetWidth(v216);
    sub_100750394();
  }

  else
  {
    sub_10000C888(v97, *(v97 + 3));
    sub_100750394();
    v97 = v93;
    v110 = v105;
  }

  v111 = v179;
  sub_10000C888(v97, *(v97 + 3));
  sub_100750384();
  v171 = CGRectGetMaxY(v217) - v110;
  v112 = v173;
  v113 = (v7 + v173[13]);
  sub_10000C888(v113, v113[3]);
  v114 = v174;
  sub_100750404();
  v116 = v115;
  v118 = v117;
  v119 = v175;
  v218.origin.x = v175;
  v120 = v177;
  v218.origin.y = v177;
  v218.size.width = v114;
  v218.size.height = v111;
  v121 = floor(CGRectGetMidX(v218) + v116 * -0.5);
  sub_10000C888((v7 + *(*&v176 + 36)), *(v7 + *(*&v176 + 36) + 24));
  sub_100536120();
  sub_100750564();
  v123 = v122;
  v178(v17, v180);
  v124 = floor(v171 + v123);
  sub_10000C888(v113, v113[3]);
  v169 = v121;
  v168 = v124;
  v171 = v116;
  v170 = v118;
  sub_100753B24();
  sub_100750394();
  sub_100016B4C(v7 + v112[17], &v181, &unk_100928A00);
  if (v182)
  {
    sub_100012160(&v181, &v183);
    v125 = v166;
    v219.origin.x = v166;
    v126 = v165;
    v219.origin.y = v165;
    v127 = v164;
    v219.size.width = v164;
    v128 = v167;
    v219.size.height = v167;
    MaxY = CGRectGetMinX(v219);
    v220.origin.x = v119;
    v220.origin.y = v120;
    v220.size.width = v114;
    v220.size.height = v111;
    CGRectGetMaxY(v220);
    v221.origin.x = v125;
    v221.origin.y = v126;
    v221.size.width = v127;
    v221.size.height = v128;
    CGRectGetWidth(v221);
    sub_10000C888(&v183, v184);
    sub_100750394();
    sub_10000C620(&v183);
  }

  else
  {
    sub_10000C8CC(&v181, &unk_100928A00);
  }

  sub_100016B4C(v7 + v112[18], &v181, &unk_100928A00);
  if (v182)
  {
    sub_100012160(&v181, &v183);
    v129 = v166;
    v222.origin.x = v166;
    v130 = v165;
    v222.origin.y = v165;
    v131 = v164;
    v222.size.width = v164;
    v132 = v167;
    v222.size.height = v167;
    CGRectGetMinX(v222);
    v223.origin.x = v175;
    v223.origin.y = v177;
    v223.size.width = v114;
    v223.size.height = v179;
    CGRectGetMaxY(v223);
    v224.origin.x = v129;
    v224.origin.y = v130;
    v224.size.width = v131;
    v224.size.height = v132;
    CGRectGetWidth(v224);
    sub_10000C888(&v183, v184);
    sub_100750394();
    sub_10000C620(&v183);
  }

  else
  {
    sub_10000C8CC(&v181, &unk_100928A00);
  }

  v133 = v176;
  sub_1001EBAAC(&v181);
  if (v182)
  {
    sub_100012160(&v181, &v183);
    sub_10000C888(&v183, v184);
    sub_100750404();
    v225.origin.x = v175;
    v225.origin.y = v177;
    v225.size.width = v114;
    v225.size.height = v179;
    CGRectGetMidX(v225);
    v226.origin.x = v169;
    v226.origin.y = v168;
    v226.size.width = v171;
    v226.size.height = v170;
    CGRectGetMaxY(v226);
    sub_10000C888((v7 + *(*&v133 + 44)), *(v7 + *(*&v133 + 44) + 24));
    v134 = v179;
    sub_100750584();
    sub_10000C888(&v183, v184);
    v114 = v174;
    sub_100750394();
    sub_10000C620(&v183);
  }

  else
  {
    sub_10000C8CC(&v181, &unk_100928A00);
    v134 = v179;
  }

  sub_100016B4C(v7 + v112[16], &v181, &unk_100928A00);
  v135 = v175;
  if (v182)
  {
    sub_100012160(&v181, &v183);
    v136 = [a1 traitCollection];
    v137 = sub_100753804();

    if (v137 & 1) != 0 || (sub_1001EBAAC(&v181), v138 = v182, sub_10000C8CC(&v181, &unk_100928A00), v138) && (v139 = [a1 traitCollection], v140 = sub_1007537D4(), v139, (v140))
    {
      sub_10000C888(&v183, v184);
    }

    else
    {
      sub_10000C888(&v183, v184);
      sub_100750414();
      v227.origin.x = v135;
      v141 = v177;
      v227.origin.y = v177;
      v227.size.width = v174;
      v227.size.height = v134;
      CGRectGetMidX(v227);
      v228.origin.x = v135;
      v228.origin.y = v141;
      v228.size.width = v174;
      v228.size.height = v134;
      CGRectGetMaxY(v228);
      sub_10000C518(&unk_100923C30);
      v142 = v155;
      sub_100743534();
      sub_1007502D4();
      sub_100743514();
      v178(v17, v180);
      (*(v156 + 8))(v142, v161);
      v135 = v175;
      sub_10000C888(&v183, v184);
      v114 = v174;
      sub_100750394();
      sub_10000C888(&v183, v184);
    }

    sub_1007503B4();
    sub_10000C620(&v183);
  }

  else
  {
    sub_10000C8CC(&v181, &unk_100928A00);
  }

  sub_100016B4C(v7 + v112[12], &v181, &unk_100928A00);
  if (v182)
  {
    sub_100012160(&v181, &v183);
    sub_10000C888(&v183, v184);
    sub_100750414();
    v143 = v114;
    v145 = v144;
    v171 = v144;
    v174 = v146;
    sub_10000C888((v7 + v112[6]), *(v7 + v112[6] + 24));
    sub_100750384();
    v147 = CGRectGetMaxX(v229) - v145;
    v148 = (v7 + *(*&v133 + 56));
    sub_10000C888(v148, v148[3]);
    sub_100536120();
    sub_100750564();
    v150 = v149;
    v151 = v180;
    v152 = v178;
    v178(v17, v180);
    v176 = v147 - v150;
    v230.origin.x = v135;
    v230.origin.y = v177;
    v230.size.width = v143;
    v230.size.height = v134;
    CGRectGetMinY(v230);
    sub_10000C888(v148, v148[3]);
    sub_100536120();
    sub_100750564();
    v152(v17, v151);
    sub_10000C888(&v183, v184);
    sub_100753B24();
    sub_100750394();
    sub_10000C620(&v183);
  }

  else
  {
    sub_10000C8CC(&v181, &unk_100928A00);
  }

  return sub_100750314();
}

double ProductLockupInlineUberLayout.offerButtonMinYDistanceFromBottom(fitting:in:)()
{
  v1 = v0;
  v2 = sub_100754724();
  v3 = *(v2 - 8);
  v23 = v2;
  v24 = v3;
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_1009249B0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = type metadata accessor for ProductLockupInlineUberLayout(0);
  sub_10000C888((v0 + *(v10 + 52)), *(v0 + *(v10 + 52) + 24));
  sub_100750414();
  v12 = v11;
  v13 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_10000C518(&unk_100923C30);
  sub_100743534();
  sub_1007502D4();
  sub_100743514();
  v15 = v14;
  v16 = v23;
  v17 = *(v24 + 8);
  v24 += 8;
  v17(v5, v23);
  (*(v7 + 8))(v9, v6);
  sub_10000C888((v1 + *(v13 + 60)), *(v1 + *(v13 + 60) + 24));
  sub_100536120();
  sub_100750564();
  v19 = v18;
  v17(v5, v16);
  sub_10000C888((v1 + *(v13 + 64)), *(v1 + *(v13 + 64) + 24));
  sub_100536120();
  sub_100750564();
  v21 = v20;
  v17(v5, v16);
  return v12 + v15 + v19 + v21;
}

double sub_1001EEFE0(void *a1, uint64_t a2, double a3)
{
  v6 = sub_10000C518(&unk_1009249B0);
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v49 = v45 - v7;
  v8 = sub_100754724();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  v14 = sub_1007537D4();

  v48 = v9;
  if ((v14 & 1) == 0)
  {
    v15 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_10000C888((a2 + v15[15]), *(a2 + v15[15] + 24));
    sub_100536120();
    sub_100750564();
    v16 = *(v9 + 8);
    v16(v12, v8);
    sub_10000C888((a2 + v15[16]), *(a2 + v15[16] + 24));
    sub_100536120();
    sub_100750564();
    v16(v12, v8);
    sub_10000C888((a2 + v15[17]), *(a2 + v15[17] + 24));
    sub_100536120();
    v17 = v49;
    sub_100750564();
    v16(v12, v8);
    sub_1007502D4();
    sub_100743514();
    v16(v12, v8);
    sub_10000C518(&unk_100923C30);
    sub_100743534();
    sub_1007502D4();
    sub_100743514();
    v16(v12, v8);
    v9 = v48;
    (*(v50 + 8))(v17, v51);
  }

  sub_100753BA4();
  v19 = v18;
  v20 = [a1 traitCollection];
  v21 = sub_1007537E4();

  if (v21)
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_1007502D4();
    sub_100743514();
    (*(v9 + 8))(v12, v8);
  }

  v47 = v19;
  v22 = type metadata accessor for ProductLockupInlineUberLayout(0);
  sub_10000C888((a2 + *(v22 + 36)), *(a2 + *(v22 + 36) + 24));
  sub_100750404();
  v45[2] = v23;
  v45[4] = v24;
  v45[1] = v25;
  v45[3] = v26;
  v46 = v22;
  v27 = (a2 + *(v22 + 44));
  sub_10000C888(v27, v27[3]);
  sub_100750404();
  sub_10000C888(v27, v27[3]);
  if (sub_100750364())
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_1007502D4();
    sub_100743514();
    v29 = v28;
    (*(v9 + 8))(v12, v8);
    v54[0] = v29;
    sub_100750584();
  }

  sub_1001EBAAC(&v52);
  if (v53)
  {
    sub_100012160(&v52, v54);
    sub_10000C888(v54, v55);
    sub_100750404();
    v30 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_10000C888((a2 + *(v30 + 44)), *(a2 + *(v30 + 44) + 24));
    sub_100750584();
    sub_10000C888((a2 + *(v30 + 48)), *(a2 + *(v30 + 48) + 24));
    sub_100536120();
    sub_100750564();
    (*(v9 + 8))(v12, v8);
    sub_10000C620(v54);
  }

  else
  {
    sub_10000C8CC(&v52, &unk_100928A00);
  }

  v31 = v50;
  sub_1001EBAAC(v54);
  v32 = v55;
  sub_10000C8CC(v54, &unk_100928A00);
  if (!v32)
  {
    v33 = [a1 traitCollection];
    v34 = sub_1007537E4();

    if (v34 & 1) != 0 || (v35 = [a1 traitCollection], v36 = sub_100753804(), v35, (v36))
    {
      type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
      sub_1007502D4();
      sub_100743514();
      (*(v9 + 8))(v12, v8);
    }
  }

  v37 = [a1 traitCollection];
  v38 = sub_1007537D4();

  if (v38)
  {
    sub_1001EBAAC(v54);
    sub_10000C8CC(v54, &unk_100928A00);
  }

  v39 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_10000C518(&unk_100923C30);
  v40 = v49;
  sub_100743534();
  sub_1007502D4();
  sub_100743514();
  v41 = *(v48 + 8);
  v41(v12, v8);
  (*(v31 + 8))(v40, v51);
  type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_1007502D4();
  sub_100743514();
  v41(v12, v8);
  sub_1007502D4();
  sub_100743514();
  v43 = v42;
  v41(v12, v8);
  v54[0] = v43;
  sub_100750584();
  sub_10000C888((a2 + v39[9]), *(a2 + v39[9] + 24));
  sub_100536120();
  sub_100750564();
  v41(v12, v8);
  sub_10000C888((a2 + *(v46 + 52)), *(a2 + *(v46 + 52) + 24));
  sub_100750414();
  sub_10000C888((a2 + v39[15]), *(a2 + v39[15] + 24));
  sub_100536120();
  sub_100750564();
  v41(v12, v8);
  sub_10000C888((a2 + v39[16]), *(a2 + v39[16] + 24));
  sub_100536120();
  sub_100750564();
  v41(v12, v8);
  return a3;
}

uint64_t sub_1001EFB20(uint64_t a1)
{
  *(a1 + 8) = sub_1001EFB88(&qword_10092D490);
  result = sub_1001EFB88(&qword_10092D498);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001EFB88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ProductLockupInlineUberLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001EFBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1001EFCB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

void sub_1001EFD70()
{
  type metadata accessor for ProductLockupInlineUberLayout.Metrics(319);
  if (v0 <= 0x3F)
  {
    sub_100110090(319, &qword_10092C920, &qword_100926520);
    if (v1 <= 0x3F)
    {
      sub_100110300(319, &unk_10092C900);
      if (v2 <= 0x3F)
      {
        sub_100110300(319, &qword_10092D510);
        if (v3 <= 0x3F)
        {
          sub_100110090(319, &unk_10092C910, &unk_10092D520);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1001EFED0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000C518(&unk_1009249B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[9] + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_10000C518(&unk_100923C30);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[13];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1001F0028(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_10000C518(&unk_1009249B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9] + 24) = (a2 - 1);
  }

  else
  {
    v13 = sub_10000C518(&unk_100923C30);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[13];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_1001F016C()
{
  type metadata accessor for UIEdgeInsets(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_1001F0280();
      if (v2 <= 0x3F)
      {
        sub_100110300(319, &qword_1009289A0);
        if (v3 <= 0x3F)
        {
          sub_1001F02EC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1001F0280()
{
  if (!qword_10092D5F0)
  {
    sub_10000C724(&unk_100923AE0);
    v0 = sub_100743554();
    if (!v1)
    {
      atomic_store(v0, &qword_10092D5F0);
    }
  }
}

void sub_1001F02EC()
{
  if (!qword_10092D5F8)
  {
    sub_10000C724(&unk_1009249B0);
    v0 = sub_100743554();
    if (!v1)
    {
      atomic_store(v0, &qword_10092D5F8);
    }
  }
}

uint64_t type metadata accessor for AppPromotionIAPFallbackView()
{
  result = qword_10092D698;
  if (!qword_10092D698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1001F0408(__int128 *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v13 = sub_100741E54();
  __chkstk_darwin(v13 - 8);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = qword_10092D678;
  sub_1007433C4();
  *&v6[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = qword_10092D680;
  *&v6[v17] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v18 = qword_10092D688;
  *&v6[v18] = [objc_allocWithZone(UIVisualEffectView) init];
  v19 = &v6[qword_10092D690];
  v20 = a1[3];
  *(v19 + 2) = a1[2];
  *(v19 + 3) = v20;
  v21 = *a1;
  v22 = a1[1];
  *(v19 + 8) = *(a1 + 8);
  *v19 = v21;
  *(v19 + 1) = v22;
  sub_100741DD4();
  v23 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  *&v6[qword_10092D670] = sub_10027562C(v15, 2);
  v41.receiver = v6;
  v41.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v41, "initWithFrame:", a2, a3, a4, a5);
  v25 = qword_10092D680;
  v26 = *&v24[qword_10092D680];
  v26[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_kind] = 2;
  v27 = v24;
  v28 = v26;
  v29 = [v28 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setType:kCAGradientLayerConic];

  v30 = *&v24[v25];
  v31 = [v30 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.5}];

  v32 = *&v24[v25];
  v33 = [v32 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];

  v34 = qword_10092D688;
  v35 = *&v27[qword_10092D688];
  sub_10000C518(&unk_1009231A0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1007A7210;
  v37 = objc_opt_self();
  v38 = v35;
  result = [v37 effectWithBlurRadius:100.0];
  if (result)
  {
    *(v36 + 32) = result;
    *(v36 + 40) = [objc_opt_self() colorEffectSaturate:1.25];
    sub_100016C60(0, &qword_10092BE10);
    isa = sub_100753294().super.isa;

    [v38 setBackgroundEffects:isa];

    [v27 addSubview:*&v24[v25]];
    [v27 addSubview:*&v27[v34]];
    [v27 addSubview:*&v27[qword_10092D678]];
    [v27 addSubview:*&v27[qword_10092D670]];

    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1001F0860()
{
  xmmword_10097E430 = xmmword_1007B1E80;
  unk_10097E440 = xmmword_1007B1E90;
  result = 10.0;
  xmmword_10097E450 = xmmword_1007B1EA0;
  unk_10097E460 = xmmword_1007B1EB0;
  qword_10097E470 = 0x4020000000000000;
  return result;
}

double sub_1001F089C()
{
  xmmword_10097E480 = xmmword_1007B1EC0;
  *algn_10097E490 = xmmword_1007B1E90;
  result = 146.0;
  xmmword_10097E4A0 = xmmword_1007B1ED0;
  unk_10097E4B0 = xmmword_1007B1EE0;
  qword_10097E4C0 = 0x4020000000000000;
  return result;
}

__n128 sub_1001F08D8@<Q0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v12 = *(v2 + qword_10092D690 + 32);
  v13 = *(v2 + qword_10092D690 + 48);
  v14 = *(v2 + qword_10092D690 + 64);
  v10 = *(v2 + qword_10092D690);
  v11 = *(v2 + qword_10092D690 + 16);
  v4 = *(v2 + qword_10092D670);
  a1[3] = &type metadata for AppPromotionIAPFallbackLayout;
  a1[4] = sub_1001F167C();
  v5 = swift_allocObject();
  *a1 = v5;
  *(v5 + 112) = type metadata accessor for InAppPurchaseView();
  *(v5 + 120) = sub_1001F1720(&qword_10092D6F0, type metadata accessor for InAppPurchaseView);
  *(v5 + 88) = v4;
  type metadata accessor for GradientView();
  v6 = v4;
  sub_100750434();
  v7 = *(v2 + qword_10092D678);
  *(v5 + 232) = sub_1007433C4();
  *(v5 + 240) = sub_1001F1720(&qword_10092E370, &type metadata accessor for ArtworkView);
  *(v5 + 208) = v7;
  sub_100016C60(0, &qword_100927120);
  v8 = v7;
  sub_100750434();
  *(v5 + 48) = v12;
  *(v5 + 64) = v13;
  *(v5 + 80) = v14;
  result = v11;
  *(v5 + 16) = v10;
  *(v5 + 32) = v11;
  return result;
}

id sub_1001F0AA8()
{
  sub_100750B54();
  v1 = sub_100750B64();
  v1();
  v2 = v0 + qword_10092D690;
  v3 = *(v0 + qword_10092D670);
  CGAffineTransformMakeRotation(&v18, *(v0 + qword_10092D690 + 40) * 3.14159265 / 180.0);
  [v3 setTransform:&v18];
  CGAffineTransformMakeRotation(&v18, *(v2 + 48) * 3.14159265 / 180.0);
  a = v18.a;
  b = v18.b;
  c = v18.c;
  d = v18.d;
  tx = v18.tx;
  ty = v18.ty;
  v16 = v18.ty;
  v17 = v18.tx;
  v10 = *(v0 + qword_10092D678);
  [v10 bounds];
  v18.a = a;
  v18.b = b;
  v18.c = c;
  v18.d = d;
  v18.tx = tx;
  v18.ty = ty;
  v20 = CGRectApplyAffineTransform(v19, &v18);
  [v10 center];
  v12 = v11;
  [v3 center];
  v14 = v13;
  v18.a = 1.0;
  v18.b = 0.0;
  v18.c = 0.0;
  v18.d = 1.0;
  v18.tx = 0.0;
  v18.ty = 0.0;
  [v10 setTransform:&v18];
  [v10 bounds];
  [v10 setBounds:?];
  [v10 setCenter:{v12, v14}];
  v18.a = a;
  v18.b = b;
  v18.c = c;
  v18.d = d;
  v18.tx = v17;
  v18.ty = v16;
  return [v10 setTransform:&v18];
}

void sub_1001F0CB4()
{
  v1 = *(v0 + qword_10092D688);
}

void sub_1001F0D14(uint64_t a1)
{
  v2 = *(a1 + qword_10092D688);
}

uint64_t sub_1001F0D88()
{
  v1 = sub_10074F814();
  sub_10074F834();
  sub_100741D54();
  if (swift_dynamicCastClass())
  {
    sub_100741D44();
    v2 = sub_10074EF24();
  }

  else
  {

    sub_10074F834();
    v2 = sub_10074EF24();
  }

  if (v2 && (v3 = sub_10074F1E4()) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = [objc_opt_self() grayColor];
    if (!v2)
    {
      goto LABEL_11;
    }
  }

  v5 = sub_10074F204();
  if (v5)
  {
    v6 = v5;
    if (!v1)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_11:
  v6 = [objc_opt_self() whiteColor];
  if (!v1)
  {
    goto LABEL_13;
  }

LABEL_12:

  v7 = sub_10074F1E4();

  if (v7)
  {
    goto LABEL_14;
  }

LABEL_13:
  v7 = [objc_opt_self() grayColor];
  if (v1)
  {
LABEL_14:

    v8 = sub_10074F204();

    if (v8)
    {
      goto LABEL_16;
    }
  }

  v8 = [objc_opt_self() whiteColor];
LABEL_16:
  v9 = *(v0 + qword_10092D680);
  sub_10000C518(&unk_1009231A0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007A57A0;
  *(v10 + 32) = v6;
  *(v10 + 40) = v4;
  *(v10 + 48) = v7;
  *(v10 + 56) = v8;
  *(v9 + OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors) = v10;
  v11 = v6;
  v12 = v4;
  v13 = v7;
  v14 = v8;

  sub_100037ED0();
}

uint64_t sub_1001F0FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10074F314();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10074F284();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44[3] = a4;
  v44[4] = a5;
  v15 = sub_10000D134(v44);
  (*(*(a4 - 8) + 16))(v15, a1, a4);
  sub_10000C824(v44, v43);
  sub_10000C518(&unk_100923100);
  sub_10074F8A4();
  if (swift_dynamicCast())
  {
    v39 = a3;
    v16 = v42;
    v17 = sub_10074F814();
    sub_10074F834();
    sub_100741D54();
    v18 = swift_dynamicCastClass();
    v37 = v16;
    if (v18)
    {
      sub_100741D44();
      v19 = sub_10074EF24();
    }

    else
    {

      sub_10074F834();
      v19 = sub_10074EF24();
    }

    v40 = a2;
    v38 = v11;
    if (v19)
    {
      v36 = v17;
      v20 = v39;

      sub_10074F294();
      sub_10074F254();
      v41 = v12;
      v35 = *(v12 + 8);
      v35(v14, v11);
      sub_10074F374();
      v21 = *(v20 + qword_10092D678);
      sub_10074F324();
      sub_100743364();
      [v21 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500);
        sub_100753E34();
      }

      sub_100743224();
      sub_10074F294();
      v22 = sub_10074F254();
      v11 = v38;
      v35(v14, v38);
      [v21 setContentMode:v22];
      sub_1007433C4();
      sub_1001F1720(&qword_100925570, &type metadata accessor for ArtworkView);
      sub_100744204();

      v12 = v41;
      v17 = v36;
    }

    v36 = v19;
    if (v17)
    {
      v23 = v11;
      v24 = v39;
      sub_10074F294();
      sub_10074F254();
      v25 = *(v12 + 8);
      v41 = v12 + 8;
      v35 = v25;
      v25(v14, v23);
      sub_10074F374();
      v26 = *(v24 + qword_10092D670);
      v27 = OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView;
      v28 = *(v26 + OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView);
      sub_10074F324();
      sub_100743364();
      [v28 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500);
        sub_100753E34();
      }

      sub_100743224();

      v29 = *(v26 + v27);
      sub_10074F294();
      v30 = sub_10074F254();
      v35(v14, v38);
      [v29 setContentMode:v30];

      v31 = *(v26 + v27);
      sub_1007433C4();
      sub_1001F1720(&qword_100925570, &type metadata accessor for ArtworkView);
      v32 = v31;
      sub_100744204();
    }

    else
    {
    }
  }

  return sub_10000C620(v44);
}

void sub_1001F15B0()
{
  v1 = qword_10092D678;
  sub_1007433C4();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = qword_10092D680;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v3 = qword_10092D688;
  *(v0 + v3) = [objc_allocWithZone(UIVisualEffectView) init];
  sub_100754644();
  __break(1u);
}

unint64_t sub_1001F167C()
{
  result = qword_10092D6E8;
  if (!qword_10092D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092D6E8);
  }

  return result;
}

uint64_t sub_1001F16D0()
{
  sub_10000C620(v0 + 88);
  sub_10000C620(v0 + 128);
  sub_10000C620(v0 + 168);
  sub_10000C620(v0 + 208);

  return _swift_deallocObject(v0, 248, 7);
}

uint64_t sub_1001F1720(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1001F1788()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SearchResultsContextCardView.Style(319);
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

id sub_1001F1878(uint64_t a1, void *a2)
{
  v4 = sub_1007541F4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100743E94();
  v6 = sub_100743EA4();
  v7 = sub_1001F3AE8(v6, sub_100171C34);

  sub_100151994(v5, v7);

  if (a2)
  {
    sub_100016C60(0, &qword_10093B420);
    v8 = [v2 traitCollection];
    sub_1001F24D0(a2);

    v9 = a2;
    v10 = sub_100754204();
  }

  else
  {
    v10 = 0;
  }

  v11 = *&v2[qword_10092D708];
  *&v2[qword_10092D708] = v10;
  v12 = v10;
  sub_1001F2CE0(v11);

  return [v2 setNeedsLayout];
}

uint64_t sub_1001F1A24()
{
  v36 = type metadata accessor for SearchResultsContextCardView.Style.Message(0);
  __chkstk_darwin(v36);
  v33 = &v30 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_100750534();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074F0C4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v37 = &v30 - v10;
  v11 = type metadata accessor for SearchResultsContextCardView.Style.Metrics(0);
  __chkstk_darwin(v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SearchResultsContextCardView.Style(0);
  sub_100039C50(v14, qword_10097E4D8);
  v15 = sub_10000D0FC(v14, qword_10097E4D8);
  if (qword_100920590 != -1)
  {
    swift_once();
  }

  v16 = sub_10000D0FC(v11, qword_10097E4F0);
  v34 = v13;
  sub_1001F4D20(v16, v13, type metadata accessor for SearchResultsContextCardView.Style.Metrics);
  v31 = objc_opt_self();
  v32 = [v31 secondarySystemGroupedBackgroundColor];
  if (qword_1009204B8 != -1)
  {
    swift_once();
  }

  v17 = v5;
  v18 = sub_10000D0FC(v5, qword_10097E1E8);
  v35 = v6;
  v19 = *(v6 + 16);
  v19(v37, v18, v17);
  if (qword_1009204C0 != -1)
  {
    swift_once();
  }

  v20 = sub_10000D0FC(v17, qword_10097E200);
  v30 = v8;
  v19(v8, v20, v17);
  v21 = v17;
  if (qword_100921358 != -1)
  {
    swift_once();
  }

  v22 = sub_10000D0FC(v1, qword_100981740);
  v23 = v2;
  v24 = *(v2 + 16);
  v24(v4, v22, v1);
  v25 = v33;
  v24(v33, v22, v1);
  v26 = [v31 labelColor];
  v27 = v36;
  *(v25 + *(v36 + 20)) = v26;
  *(v25 + *(v27 + 24)) = 0;
  *(v25 + *(v27 + 28)) = 0;
  sub_1001F4C14(v34, v15, type metadata accessor for SearchResultsContextCardView.Style.Metrics);
  *(v15 + v14[5]) = v32;
  v28 = *(v35 + 32);
  v28(v15 + v14[6], v37, v21);
  v28(v15 + v14[7], v30, v21);
  (*(v23 + 32))(v15 + v14[8], v4, v1);
  return sub_1001F4C14(v25, v15 + v14[9], type metadata accessor for SearchResultsContextCardView.Style.Message);
}

uint64_t sub_1001F1EFC()
{
  v0 = sub_10074D014();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100743584();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SearchResultsContextCardView.Style.Metrics(0);
  sub_100039C50(v8, qword_10097E4F0);
  v9 = sub_10000D0FC(v8, qword_10097E4F0);
  (*(v5 + 104))(v7, enum case for CornerStyle.continuous(_:), v4);
  sub_10074D004();
  *v9 = 0x4038000000000000;
  (*(v5 + 32))(&v9[v8[5]], v7, v4);
  *&v9[v8[6]] = 0x4014000000000000;
  return (*(v1 + 32))(&v9[v8[7]], v3, v0);
}

id sub_1001F20D4()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v2 - 8);
  v4 = &v32 - v3;
  v5 = sub_100750534();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v6 + 16);
  v10(v9, v1, v5, v7);
  v11 = type metadata accessor for SearchResultsContextCardView.Style.Message(0);
  v12 = *(v11 + 20);
  v32 = *(v1 + *(v11 + 24));
  v13 = *(v1 + v12);
  v14 = type metadata accessor for DynamicTypeLinkedTextView();
  v15 = objc_allocWithZone(v14);
  *&v15[qword_100929BE0] = _swiftEmptyArrayStorage;
  *&v15[qword_100929BE8] = 0;
  v37.receiver = v15;
  v37.super_class = v14;
  v16 = v13;
  v17 = objc_msgSendSuper2(&v37, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v33 = v9;
  v18 = v9;
  v19 = v5;
  (v10)(v4, v18, v5);
  v20 = v6;
  (*(v6 + 56))(v4, 0, 1, v19);
  v21 = v17;
  sub_100748094();
  sub_1007480C4();

  sub_1007480B4();
  v36.receiver = v21;
  v36.super_class = v14;
  v22 = v16;
  v23 = objc_msgSendSuper2(&v36, "textColor");
  v35.receiver = v21;
  v35.super_class = v14;
  objc_msgSendSuper2(&v35, "setTextColor:", v22);
  v34.receiver = v21;
  v34.super_class = v14;
  v24 = objc_msgSendSuper2(&v34, "textColor");
  if (v24)
  {
    v25 = v24;
    if (v23)
    {
      sub_100016C60(0, &qword_100923500);
      v26 = v23;
      v27 = sub_100753FC4();

      if (v27)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  else
  {
    v26 = v22;
    if (!v23)
    {
      goto LABEL_10;
    }
  }

  sub_100150D10();
  v26 = v23;
LABEL_9:

LABEL_10:
  v28 = v21;
  [v28 setSelectable:1];
  v29 = v28;
  [v29 setEditable:0];
  [v29 setScrollEnabled:0];
  [v29 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v29 setContentInsetAdjustmentBehavior:2];
  v30 = [objc_opt_self() clearColor];
  [v29 setBackgroundColor:v30];

  [v29 setDelegate:v29];
  [v29 _setInteractiveTextSelectionDisabled:1];

  (*(v20 + 8))(v33, v19);
  return v29;
}

void sub_1001F24D0(void *a1)
{
  v2 = sub_10000C518(&unk_100944920);
  __chkstk_darwin(v2 - 8);
  v4 = &v21[-v3];
  sub_100016C60(0, &qword_100923AB0);
  type metadata accessor for SearchResultsContextCardView.Style(0);
  v5 = sub_100753C14();
  sub_1007541A4();
  v6 = sub_1007540B4();
  *(v7 + 8) = 0;
  v6(v21, 0);
  v8 = sub_1007540B4();
  *(v9 + 24) = 0;
  v8(v21, 0);
  v10 = [a1 title];
  sub_100753094();

  sub_1007541C4();
  *(swift_allocObject() + 16) = v5;
  v11 = v5;
  sub_100751A04();
  v12 = sub_1007519F4();
  (*(*(v12 - 8) + 56))(v4, 0, 1, v12);
  sub_100754144();
  v13 = [a1 image];
  if (v13)
  {
    v14 = v13;
    sub_100754194();
    if ([v14 isSymbolImage])
    {
      v15 = [objc_opt_self() configurationWithFont:v11 scale:1];
      sub_100754024();
    }

    v16 = [a1 title];
    v17 = sub_100753094();
    v19 = v18;

    v20 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v20 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      sub_1007540D4();
      type metadata accessor for SearchResultsContextCardView.Style.Metrics(0);
      sub_100754094();
    }
  }
}

char *sub_1001F27B4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_10000C518(&qword_100932560);
  __chkstk_darwin(v4 - 8);
  v42 = v37 - v5;
  v6 = sub_100743584();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_10097E508;
  v11 = sub_1007469A4();
  (*(*(v11 - 8) + 56))(&v2[v10], 1, 1, v11);
  *&v2[qword_10092D708] = 0;
  v12 = a1;
  sub_1001F4D20(a1, &v2[qword_10092D6F8], type metadata accessor for SearchResultsContextCardView.Style);
  sub_100746ED4();
  v13 = type metadata accessor for SearchResultsContextCardView.Style.Metrics(0);
  v14 = *(v7 + 16);
  v15 = a1 + *(v13 + 20);
  v16 = *(v13 + 20);
  v41 = v16;
  v39 = v6;
  v14(v9, v15, v6);
  v38 = v14;
  v40 = v7 + 16;
  v17 = sub_100746EC4();
  v18 = type metadata accessor for SearchResultsContextCardView.Style(0);
  v19 = *(v18 + 20);
  v20 = v18;
  v37[0] = v18;
  [v17 setBackgroundColor:*(v12 + v19)];
  *&v2[qword_10092D720] = v17;
  v37[1] = sub_100743034();
  v14(v9, v12 + v16, v6);
  v21 = sub_100743004();
  v22 = *(v20 + 24);
  v23 = sub_10074F0C4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 16);
  v26 = v12 + v22;
  v27 = v12;
  v28 = v42;
  v25(v42, v26, v23);
  v29 = *(v24 + 56);
  v29(v28, 0, 1, v23);
  sub_100743014();
  *&v2[qword_10092D710] = v21;
  v38(v9, v27 + v41, v39);
  v30 = sub_100743004();
  v25(v28, v27 + *(v37[0] + 28), v23);
  v29(v28, 0, 1, v23);
  sub_100743014();
  *&v2[qword_10092D718] = v30;
  *&v2[qword_10092D700] = sub_1001F20D4();
  v44.receiver = v2;
  v44.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v44, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v35 = v31;
  [v35 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v35 addSubview:*&v35[qword_10092D710]];
  [v35 addSubview:*&v35[qword_10092D718]];
  [v35 addSubview:*&v35[qword_10092D720]];
  [v35 addSubview:*&v35[qword_10092D700]];

  sub_1001F4C7C(v27);
  return v35;
}

void sub_1001F2C28(uint64_t a1)
{
  v2 = qword_10097E508;
  v3 = sub_1007469A4();
  (*(*(v3 - 8) + 56))(a1 + v2, 1, 1, v3);
  *(a1 + qword_10092D708) = 0;
  sub_100754644();
  __break(1u);
}

void sub_1001F2CE0(void *a1)
{
  v2 = qword_10092D708;
  v3 = *&v1[qword_10092D708];
  if (a1)
  {
    if (v3 == a1)
    {
      return;
    }

    [a1 removeFromSuperview];
    v3 = *&v1[v2];
    if (!v3)
    {
      return;
    }
  }

  else if (!v3)
  {
    return;
  }

  v4 = v3;
  [v1 addSubview:v4];
  [v1 setNeedsLayout];
}

uint64_t sub_1001F2D84@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_10074D014();
  __chkstk_darwin(v3 - 8);
  type metadata accessor for DynamicTypeLinkedTextView();
  sub_100750434();
  v4 = *(v1 + qword_10092D708);
  if (v4)
  {
    sub_100016C60(0, &qword_10093B420);
  }

  v5 = v4;
  sub_10074D004();
  a1[3] = sub_10074D034();
  a1[4] = sub_1001F4CD8(&qword_10092D960, &type metadata accessor for SearchResultsContextCardLayout);
  sub_10000D134(a1);
  return sub_10074D024();
}

id sub_1001F2EDC()
{
  sub_100750B54();
  v1 = sub_100750B64();
  v1();
  v2 = *&v0[qword_10092D710];
  [v0 bounds];
  [v2 setFrame:?];
  v3 = *&v0[qword_10092D718];
  [v0 bounds];
  [v3 setFrame:?];
  v4 = *&v0[qword_10092D720];
  [v0 bounds];

  return [v4 setFrame:?];
}

void sub_1001F2FD8()
{
  sub_100027FAC(v0 + qword_10097E508);
  sub_1001F4C7C(v0 + qword_10092D6F8);

  v1 = *(v0 + qword_10092D720);
}

void sub_1001F3068(uint64_t a1)
{
  sub_100027FAC(a1 + qword_10097E508);
  sub_1001F4C7C(a1 + qword_10092D6F8);

  v2 = *(a1 + qword_10092D720);
}

uint64_t sub_1001F3140(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for SearchResultsContextCardView.Style.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_10074F0C4();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_100750534();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_11;
  }

  v17 = type metadata accessor for SearchResultsContextCardView.Style.Message(0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[9];

  return v18(v19, a2, v17);
}

uint64_t sub_1001F3350(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for SearchResultsContextCardView.Style.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_10074F0C4();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_100750534();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = type metadata accessor for SearchResultsContextCardView.Style.Message(0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1001F350C()
{
  result = type metadata accessor for SearchResultsContextCardView.Style.Metrics(319);
  if (v1 <= 0x3F)
  {
    result = sub_100016C60(319, &qword_100923500);
    if (v2 <= 0x3F)
    {
      result = sub_10074F0C4();
      if (v3 <= 0x3F)
      {
        result = sub_100750534();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for SearchResultsContextCardView.Style.Message(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1001F35FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100750534();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1001F36CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100750534();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1001F3784()
{
  sub_100750534();
  if (v0 <= 0x3F)
  {
    sub_100016C60(319, &qword_100923500);
    if (v1 <= 0x3F)
    {
      type metadata accessor for NSLineBreakMode(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1001F384C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100743584();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = sub_10074D014();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1001F3954(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100743584();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = sub_10074D014();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 28);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_1001F3A54()
{
  result = sub_100743584();
  if (v1 <= 0x3F)
  {
    result = sub_10074D014();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001F3AE8(uint64_t a1, void (*a2)(_OWORD *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v31 = _swiftEmptyArrayStorage;
  sub_10001E2A8(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  v28 = a1 + 64;
  result = sub_1007543B4();
  v6 = result;
  v7 = 0;
  v29 = *(a1 + 36);
  v26 = v2;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v28 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v29 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v10 = (*(a1 + 48) + 16 * v6);
    v12 = *v10;
    v11 = v10[1];
    v13 = *(*(a1 + 56) + 8 * v6);

    a2(v30, v12, v11, v13);

    v31 = v3;
    v15 = v3[2];
    v14 = v3[3];
    if (v15 >= v14 >> 1)
    {
      result = sub_10001E2A8((v14 > 1), v15 + 1, 1);
      v3 = v31;
    }

    v3[2] = v15 + 1;
    v16 = &v3[6 * v15];
    v17 = v30[0];
    v18 = v30[2];
    v16[3] = v30[1];
    v16[4] = v18;
    v16[2] = v17;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v19 = *(v28 + 8 * v9);
    if ((v19 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v29 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v20 = v19 & (-2 << (v6 & 0x3F));
    if (v20)
    {
      v8 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v9 << 6;
      v22 = v9 + 1;
      v23 = (a1 + 72 + 8 * v9);
      while (v22 < (v8 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_1001D3DC4(v6, v29, 0);
          v8 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_1001D3DC4(v6, v29, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v26)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1001F3D70()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001F3DB0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v107 = a3;
  v115 = sub_10000C518(&qword_10092D948);
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v112 = &v91 - v6;
  v7 = sub_10074D014();
  __chkstk_darwin(v7 - 8);
  v111 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1007541F4();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_100750954();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v99 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v100 = &v91 - v12;
  __chkstk_darwin(v13);
  v101 = &v91 - v14;
  __chkstk_darwin(v15);
  v102 = &v91 - v16;
  __chkstk_darwin(v17);
  v103 = &v91 - v18;
  __chkstk_darwin(v19);
  v104 = &v91 - v20;
  v110 = sub_10074D034();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100016C60(0, &qword_100923AB0);
  v23 = *(type metadata accessor for SearchResultsContextCardView.Style(0) + 36);
  v95 = a4;
  v24 = a4 + v23;
  v113 = a1;
  v25 = sub_100753C14();
  v118 = type metadata accessor for DynamicTypeLinkedTextView();
  v26 = *(v24 + *(type metadata accessor for SearchResultsContextCardView.Style.Message(0) + 24));
  v27 = [objc_opt_self() labelColor];
  v28 = sub_100743E94();
  v29 = sub_100743EA4();
  v119 = sub_1001F3AE8(v29, sub_100171C34);

  v30 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v30 setAlignment:4];
  [v30 setLineBreakMode:v26];
  sub_10000C518(&unk_100929CA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A6580;
  *(inited + 32) = NSParagraphStyleAttributeName;
  v32 = sub_100016C60(0, &qword_10093F2D0);
  *(inited + 40) = v30;
  *(inited + 64) = v32;
  *(inited + 72) = NSFontAttributeName;
  *(inited + 104) = v22;
  *(inited + 80) = v25;
  v33 = NSParagraphStyleAttributeName;
  v34 = v30;
  v35 = NSFontAttributeName;
  v36 = v25;
  v37 = sub_100413A18(inited);
  swift_setDeallocating();
  sub_10000C518(&unk_100923510);
  swift_arrayDestroy();
  v130 = sub_100016C60(0, &qword_100923500);
  *&aBlock = v27;
  sub_10000C610(&aBlock, &v124);
  v97 = v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v133 = v37;
  sub_1006734F4(&v124, NSForegroundColorAttributeName, isUniquelyReferenced_nonNull_native);
  v134 = v133;

  sub_100016C60(0, &unk_100929CB0);
  v117 = v36;
  v98 = v28;
  v39 = sub_100743074();
  v40 = v134;

  v41.super.isa = v39;
  v42._rawValue = v40;
  isa = sub_100753884(v41, v42).super.isa;
  v44 = v34;
  v45 = isa;
  v46 = [(objc_class *)v45 fullRange];
  [(objc_class *)v45 addAttribute:v33 value:v44 range:v46, v47];
  v96 = v44;

  v116 = swift_allocObject();
  *(v116 + 16) = 0;
  *&v124 = 0;
  v48 = *(v119 + 16);
  v121 = NSLinkAttributeName;
  if (v48)
  {
    v120 = NSUnderlineStyleAttributeName;
    v49 = v119 + 72;
    do
    {
      v50 = *(v49 - 24);
      v122 = *(v49 - 8);

      v123 = v50;

      v51 = v45;
      v52 = sub_1001522A0(&v124, v45);
      v53 = sub_100753064();
      v54 = [v52 rangeOfString:v53 options:4];
      v56 = v55;

      v45 = v51;
      if (v54 != sub_100740E44())
      {
        v57 = sub_100753064();
        [(objc_class *)v51 addAttribute:v121 value:v57 range:v54, v56];

        if (UIAccessibilityButtonShapesEnabled())
        {
          v58 = sub_1007534B4().super.super.isa;
          [(objc_class *)v51 addAttribute:v120 value:v58 range:v54, v56];
        }
      }

      v49 += 48;

      --v48;
    }

    while (v48);
  }

  v59 = [(objc_class *)v45 fullRange];
  v61 = v60;
  v62 = v45;
  v63 = swift_allocObject();
  v64 = v119;
  v63[2] = v118;
  v63[3] = v64;
  v65 = v117;
  v63[4] = v116;
  v63[5] = v65;
  v63[6] = &v134;
  v63[7] = v62;
  v66 = swift_allocObject();
  *(v66 + 16) = sub_100152C50;
  *(v66 + 24) = v63;
  v131 = sub_1000CF744;
  v132 = v66;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v129 = sub_1001529B4;
  v130 = &unk_10086C350;
  v67 = _Block_copy(&aBlock);
  v68 = v65;

  [(objc_class *)v62 enumerateAttribute:v121 inRange:v59 options:v61 usingBlock:0, v67];
  _Block_release(v67);
  LOBYTE(v65) = swift_isEscapingClosureAtFileLocation();

  if (v65)
  {
    __break(1u);
  }

  else
  {
    v70 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v62];

    v71 = v124;

    v130 = sub_100750BD4();
    v131 = &protocol witness table for LabelPlaceholder;
    sub_10000D134(&aBlock);
    v72 = v68;
    v73 = v70;
    v74 = v99;
    sub_100750944();
    v75 = v100;
    sub_100750934();
    v76 = *(v105 + 8);
    v77 = v106;
    v76(v74, v106);
    v78 = v101;
    sub_100750894();
    v76(v75, v77);
    v79 = v102;
    sub_1007508F4();
    v76(v78, v77);
    v80 = v103;
    sub_1007508E4();
    v76(v79, v77);
    sub_100750904();
    v76(v80, v77);
    sub_100750BB4();
    v81 = v73;
    sub_100750C04();

    if (v107)
    {
      v82 = v107;
      v83 = v92;
      sub_1001F24D0(v82);
      v84 = type metadata accessor for ButtonPlaceholder();
      v85 = swift_allocObject();
      *(v85 + OBJC_IVAR____TtC22SubscribePageExtension17ButtonPlaceholder____lazy_storage___button) = 0;
      (*(v93 + 32))(v85 + OBJC_IVAR____TtC22SubscribePageExtension17ButtonPlaceholder_configuration, v83, v94);

      v86 = sub_1001F4CD8(&qword_10092D958, type metadata accessor for ButtonPlaceholder);
    }

    else
    {
      v85 = 0;
      v84 = 0;
      v86 = 0;
      v125 = 0;
      *(&v124 + 1) = 0;
    }

    *&v124 = v85;
    v126 = v84;
    v127 = v86;
    sub_10074D004();
    v87 = v108;
    sub_10074D024();
    sub_1001F4CD8(&qword_10092D950, &type metadata accessor for SearchResultsContextCardLayout);
    v88 = v112;
    v89 = v110;
    sub_100750594();
    swift_getOpaqueTypeConformance2();
    v90 = v115;
    sub_100751254();

    (*(v114 + 8))(v88, v90);
    return (*(v109 + 8))(v87, v89);
  }

  return result;
}

uint64_t sub_1001F4B9C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001F4BFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001F4C14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001F4C7C(uint64_t a1)
{
  v2 = type metadata accessor for SearchResultsContextCardView.Style(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001F4CD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001F4D20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001F4D8C(void *a1)
{
  v3 = [a1 preferredContentSizeCategory];
  v4 = sub_100753924();

  if (v4)
  {
    v5 = [v1 _localOverrideTraitCollection];
    if (!v5)
    {
      v9 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
      [v1 _setLocalOverrideTraitCollection:v9];

      return 1;
    }
  }

  v6 = [a1 preferredContentSizeCategory];
  v7 = sub_100753944();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  [v1 _setLocalOverrideTraitCollection:0];
  return 1;
}

uint64_t sub_1001F4EA8()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007507D4();
  v17 = v4;
  v18 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v16);
  sub_1007507C4();
  if (qword_100920F48 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_100980B28);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v14 = sub_100750B04();
  v15 = &protocol witness table for StaticDimension;
  sub_10000D134(&v13);
  v11 = v0;
  v12 = &protocol witness table for FontSource;
  v7 = sub_10000D134(&v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  (*(v1 + 8))(v3, v0);
  v11 = v4;
  v12 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v10);
  sub_1007507C4();
  qword_10097E520 = 0;
  *algn_10097E528 = 0;
  sub_100012160(&v16, &algn_10097E528[8]);
  sub_100012160(&v13, &algn_10097E528[48]);
  qword_10097E588 = 0;
  unk_10097E590 = 0;
  qword_10097E580 = 2;
  return sub_100012160(&v10, &unk_10097E598);
}

uint64_t sub_1001F50E8()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100747064();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v8 = sub_10000D0FC(v4, qword_10097E3A8);
  (*(v5 + 16))(v7, v8, v4);
  sub_100746F34();
  v10 = v9;
  v12 = v11;
  (*(v5 + 8))(v7, v4);
  v25 = &type metadata for Double;
  v26 = &protocol witness table for Double;
  *&v24 = 0x4024000000000000;
  if (qword_100920F48 != -1)
  {
    swift_once();
  }

  v13 = sub_100750534();
  v14 = sub_10000D0FC(v13, qword_100980B28);
  (*(*(v13 - 8) + 16))(v3, v14, v13);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v22 = sub_100750B04();
  v23 = &protocol witness table for StaticDimension;
  sub_10000D134(&v21);
  v19 = v0;
  v20 = &protocol witness table for FontSource;
  v15 = sub_10000D134(&v18);
  (*(v1 + 16))(v15, v3, v0);
  sub_100750B14();
  (*(v1 + 8))(v3, v0);
  v19 = sub_1007507D4();
  v20 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v18);
  sub_1007507C4();
  qword_10097E5C0 = v10;
  unk_10097E5C8 = v12;
  sub_100012160(&v24, &unk_10097E5D0);
  sub_100012160(&v21, &unk_10097E5F8);
  qword_10097E628 = 0;
  unk_10097E630 = 0;
  qword_10097E620 = 3;
  return sub_100012160(&v18, &unk_10097E638);
}

char *sub_1001F5430(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_10074AB44();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v48 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  v15 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView;
  sub_1007433C4();
  *&v4[v15] = sub_1007431D4();
  v46 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkTitleLabel;
  if (qword_100920F40 != -1)
  {
    swift_once();
  }

  v16 = sub_100750534();
  v17 = sub_10000D0FC(v16, qword_100980B10);
  v18 = *(v16 - 8);
  v45 = *(v18 + 16);
  v45(v14, v17, v16);
  v44 = *(v18 + 56);
  v44(v14, 0, 1, v16);
  v19 = enum case for DirectionalTextAlignment.none(_:);
  v43 = *(v10 + 104);
  v43(v48, enum case for DirectionalTextAlignment.none(_:), v9);
  v20 = sub_100745C84();
  v42 = v9;
  v21 = v20;
  v22 = objc_allocWithZone(v20);
  *&v4[v46] = sub_100745C74();
  v23 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkSubtitleLabel;
  if (qword_100920F48 != -1)
  {
    swift_once();
  }

  v24 = sub_10000D0FC(v16, qword_100980B28);
  v45(v14, v24, v16);
  v44(v14, 0, 1, v16);
  v43(v48, v19, v42);
  v25 = objc_allocWithZone(v21);
  *&v4[v23] = sub_100745C74();
  v4[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_allowsGroupBlending] = 1;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkPresenter] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView____lazy_storage___lockupViews] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView____lazy_storage___crossLinkViews] = 0;
  type metadata accessor for SmallLockupView();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v49.receiver = v4;
  v49.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v49, "initWithFrame:", a1, a2, a3, a4);
  v27 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView;
  swift_unknownObjectWeakAssign();
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v26;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  [v31 addSubview:*&v31[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView]];
  [*&v26[v27] setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 addSubview:*&v26[v27]];
  v32 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkTitleLabel;
  v33 = *&v31[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkTitleLabel];
  v34 = objc_opt_self();
  v35 = v33;
  v36 = [v34 secondaryLabelColor];
  [v35 setTextColor:v36];

  [*&v31[v32] setHidden:1];
  [*&v31[v32] setAlpha:0.0];
  [v31 addSubview:*&v31[v32]];
  v37 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkSubtitleLabel;
  v38 = *&v31[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkSubtitleLabel];
  v39 = [v34 labelColor];
  [v38 setTextColor:v39];

  [*&v31[v37] setHidden:1];
  [*&v31[v37] setAlpha:0.0];
  [v31 addSubview:*&v31[v37]];

  return v31;
}

uint64_t sub_1001F5A40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10000C518(&qword_100934110);
  __chkstk_darwin(v4 - 8);
  v6 = &v46 - v5;
  v56 = sub_10074C3E4();
  v52 = *(v56 - 8);
  __chkstk_darwin(v56);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100925560);
  v54 = *(v9 - 8);
  v55 = v9;
  __chkstk_darwin(v9);
  v50 = &v46 - v10;
  v11 = sub_1007479B4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView];
  v19 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  v20 = sub_100747064();
  v21 = *(*(v20 - 8) + 16);
  v53 = a1;
  v21(a1, v18 + v19, v20);
  v51 = v2;
  v22 = [v2 traitCollection];
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v23 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v23 = qword_10093FF58;
  }

  v24 = sub_10000D0FC(v11, v23);
  (*(v12 + 16))(v14, v24, v11);

  v25 = *(v12 + 32);
  v49 = v17;
  v25(v17, v14, v11);
  v48 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton;
  v26 = (*(v18 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton) + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_presenter);
  swift_beginAccess();
  v27 = v26[3];
  if (v27)
  {
    v28 = sub_10000C888(v26, v26[3]);
    v47 = v6;
    v29 = *(v27 - 8);
    v30 = __chkstk_darwin(v28);
    v32 = &v46 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v29 + 16))(v32, v30);
    sub_100748CB4();
    (*(v29 + 8))(v32, v27);
    v6 = v47;
  }

  v33 = v52;
  v34 = *(v52 + 104);
  v35 = v56;
  v34(v8, enum case for OfferButtonSubtitlePosition.below(_:), v56);
  v34(v6, enum case for OfferButtonSubtitlePosition.right(_:), v35);
  (*(v33 + 56))(v6, 0, 1, v35);
  sub_1001F750C();
  v36 = v50;
  sub_10074A9C4();
  v37 = v49;
  sub_100747984();

  (*(v54 + 8))(v36, v55);
  (*(v12 + 8))(v37, v11);
  v38 = *(v18 + v48);
  type metadata accessor for BaseLockupView();
  sub_1007477B4();
  v39 = v38 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize;
  if (*(v38 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize + 16))
  {
    v40 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000C824(v38 + v40, v57);
    sub_10000C888(v57, v57[3]);
    sub_10074AE54();
    v42 = v41;
    v44 = v43;
    sub_10000C620(v57);
    *v39 = v42;
    *(v39 + 8) = v44;
    *(v39 + 16) = 0;
  }

  return sub_100746FE4();
}

uint64_t sub_1001F61F8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100750354();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100747064();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50.receiver = v1;
  v50.super_class = ObjectType;
  v34[1] = ObjectType;
  objc_msgSendSuper2(&v50, "layoutSubviews", v8);
  sub_1001F5A40(v10);
  v11 = [v1 traitCollection];
  v12 = sub_100753804();

  v35 = v5;
  if ((v12 & 1) == 0)
  {
    if (qword_100920598 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  if (qword_1009205A0 != -1)
  {
LABEL_9:
    v13 = swift_once();
  }

LABEL_5:
  __chkstk_darwin(v13);
  v34[-2] = v10;
  sub_1001F756C();
  sub_10074F4B4();
  v39[6] = v45;
  v39[7] = v46;
  v39[8] = v47;
  v39[9] = v48;
  v39[2] = v41;
  v39[3] = v42;
  v39[4] = v43;
  v39[5] = v44;
  v39[0] = v40[0];
  v39[1] = v40[1];
  (*(v7 + 8))(v10, v6);
  v38 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView];
  v14 = v38;
  v15 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView];
  *&v43 = type metadata accessor for SmallLockupView();
  *(&v43 + 1) = &protocol witness table for UIView;
  *(&v41 + 1) = v15;
  v16 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkTitleLabel];
  v17 = sub_100745C84();
  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkSubtitleLabel];
  *(&v45 + 1) = v17;
  *&v46 = &protocol witness table for UILabel;
  *&v44 = v16;
  *&v48 = v17;
  *(&v48 + 1) = &protocol witness table for UILabel;
  *(&v46 + 1) = v18;
  sub_1001F75C0(v39, &v49);
  sub_1007433C4();
  v19 = v14;
  v20 = v15;
  v21 = v16;
  v22 = v18;
  sub_1007503E4();
  sub_1001F761C(v39);

  sub_1007477B4();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = [v1 traitCollection];
  LOBYTE(v16) = sub_100753804();

  v32 = v35;
  if (v16)
  {
    sub_1004AD940(v35, v24, v26, v28, v30);
  }

  else
  {
    sub_1004ADE84(v35, v24, v26, v28, v30);
  }

  (*(v36 + 8))(v32, v37);
  [v20 setNeedsLayout];
  return sub_1001F7670(v40);
}

uint64_t sub_1001F66D0()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView____lazy_storage___lockupViews;
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView____lazy_storage___lockupViews))
  {
    v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView____lazy_storage___lockupViews);
  }

  else
  {
    sub_10000C518(&qword_10092D9D0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1007AB1A0;
    v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView);
    v4 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel);
    *(v2 + 32) = v4;
    v5 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel);
    *(v2 + 40) = v5;
    v6 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel);
    *(v2 + 48) = v6;
    v7 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel);
    *(v2 + 56) = v7;
    v8 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel);
    *(v2 + 64) = v8;
    *(v0 + v1) = v2;
    v9 = v7;
    v10 = v8;

    v11 = v4;
    v12 = v5;
    v13 = v6;
  }

  return v2;
}

uint64_t sub_1001F67E8()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView____lazy_storage___crossLinkViews;
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView____lazy_storage___crossLinkViews))
  {
    v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView____lazy_storage___crossLinkViews);
  }

  else
  {
    sub_10000C518(&unk_1009231A0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1007A7210;
    v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkTitleLabel);
    v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkSubtitleLabel);
    *(v2 + 32) = v3;
    *(v2 + 40) = v4;
    *(v0 + v1) = v2;
    v5 = v3;
    v6 = v4;
  }

  return v2;
}

void sub_1001F6890(char a1, char a2)
{
  if (a1)
  {
    if (([*(v2 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkTitleLabel) isHidden] & 1) == 0)
    {
      return;
    }

    v4 = sub_1001F66D0();
    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    v34 = _swiftEmptyArrayStorage;
    v7 = *(v4 + 16);
    while (v7 != v5)
    {
      if (v5 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_52;
      }

      v8 = *(v4 + 8 * v5++ + 32);
      if (v8)
      {
        v9 = v8;
        sub_100753284();
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        v2 = &v34;
        sub_100753344();
        v6 = v34;
      }
    }

    v2 = sub_1001F67E8();
    if ((a2 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (([*(*(v2 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel) isHidden] & 1) == 0)
    {
      return;
    }

    v6 = sub_1001F67E8();
    v10 = sub_1001F66D0();
    v11 = 0;
    v2 = _swiftEmptyArrayStorage;
    v34 = _swiftEmptyArrayStorage;
    v12 = *(v10 + 16);
    while (v12 != v11)
    {
      if (v11 >= *(v10 + 16))
      {
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v13 = *(v10 + 8 * v11++ + 32);
      if (v13)
      {
        v14 = v13;
        sub_100753284();
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();
        v2 = v34;
      }
    }

    if ((a2 & 1) == 0)
    {
LABEL_19:
      if (v6 >> 62)
      {
        goto LABEL_59;
      }

      v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_21;
    }
  }

  if (v2 >> 62)
  {
    v20 = sub_100754664();
    if (v20)
    {
      goto LABEL_33;
    }

LABEL_61:
    v29 = objc_opt_self();
    v30 = swift_allocObject();
    *(v30 + 16) = v6;
    *(v30 + 24) = v2;
    v38 = sub_1001F74AC;
    v39 = v30;
    v34 = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = sub_1000CF7B0;
    v37 = &unk_10086C3D0;
    v31 = _Block_copy(&v34);

    v32 = swift_allocObject();
    *(v32 + 16) = v6;
    v38 = sub_1001F7504;
    v39 = v32;
    v34 = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = sub_100144DD8;
    v37 = &unk_10086C420;
    v33 = _Block_copy(&v34);

    [v29 animateWithDuration:4 delay:v31 options:v33 animations:0.33 completion:0.0];
    _Block_release(v33);
    _Block_release(v31);
    return;
  }

  v20 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
    goto LABEL_61;
  }

LABEL_33:
  v21 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v22 = sub_100754574();
    }

    else
    {
      if (v21 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      v22 = *(v2 + 8 * v21 + 32);
    }

    v23 = v22;
    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    [v22 setHidden:0];

    ++v21;
    if (v24 == v20)
    {
      goto LABEL_61;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v15 = sub_100754664();
LABEL_21:
    if (v15)
    {
      v16 = 0;
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v17 = sub_100754574();
        }

        else
        {
          if (v16 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_55;
          }

          v17 = *(v6 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_53;
        }

        [v17 setAlpha:0.0];
        [v18 setHidden:1];

        ++v16;
      }

      while (v19 != v15);
    }

    if (v2 >> 62)
    {
      break;
    }

    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_64;
    }

LABEL_43:
    v25 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v26 = sub_100754574();
      }

      else
      {
        if (v25 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v26 = *(v2 + 8 * v25 + 32);
      }

      v27 = v26;
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      [v26 setAlpha:1.0];
      [v27 setHidden:0];

      ++v25;
      if (v28 == v6)
      {
        goto LABEL_64;
      }
    }
  }

  v6 = sub_100754664();
  if (v6)
  {
    goto LABEL_43;
  }

LABEL_64:
}

void sub_1001F6E34(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_100754574();
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 setAlpha:0.0];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
  if (a2 >> 62)
  {
    goto LABEL_26;
  }

  for (j = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_100754664())
  {
    for (k = 0; ; ++k)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v11 = sub_100754574();
      }

      else
      {
        if (k >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v11 = *(a2 + 8 * k + 32);
      }

      v12 = v11;
      v13 = k + 1;
      if (__OFADD__(k, 1))
      {
        break;
      }

      [v11 setAlpha:1.0];

      if (v13 == j)
      {
        return;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }
}

void sub_1001F6FB8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v5 = sub_100754574();
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(a2 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v5 setHidden:1];

      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_1001F7090(void *a1)
{
  sub_100747014();
  sub_10000C620((a1 + 15));
  sub_100012160(&v6, (a1 + 15));
  v2 = sub_100746FD4();
  if ((v4 & 1) == 0)
  {
    a1[13] = v2;
    a1[14] = v3;
  }

  result = sub_100746F94();
  a1[12] = result;
  return result;
}

uint64_t sub_1001F70EC(void *a1)
{
  sub_100746F34();
  *a1 = v2;
  a1[1] = v3;
  sub_100746F74();
  v10 = &type metadata for CGFloat;
  v11 = &protocol witness table for CGFloat;
  *&v9 = v4;
  sub_10000C620((a1 + 2));
  sub_100012160(&v9, (a1 + 2));
  sub_100747014();
  sub_10000C620((a1 + 15));
  sub_100012160(&v9, (a1 + 15));
  v5 = sub_100746FD4();
  if ((v7 & 1) == 0)
  {
    a1[13] = v5;
    a1[14] = v6;
  }

  result = sub_100746F94();
  a1[12] = result;
  return result;
}

uint64_t sub_1001F7288(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkPresenter;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_1001F7344()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkTitleLabel];
  v2 = sub_100753064();
  [v1 setText:v2];

  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkSubtitleLabel];
  v4 = sub_100753064();
  [v3 setText:v4];

  return [v0 setNeedsLayout];
}

uint64_t sub_1001F746C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001F74B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001F74CC()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1001F750C()
{
  result = qword_1009332C0;
  if (!qword_1009332C0)
  {
    sub_10074C3E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009332C0);
  }

  return result;
}

unint64_t sub_1001F756C()
{
  result = qword_10092D9D8;
  if (!qword_10092D9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092D9D8);
  }

  return result;
}

void sub_1001F76CC()
{
  v1 = sub_10074AB44();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView;
  sub_1007433C4();
  *(v0 + v8) = sub_1007431D4();
  v22 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkTitleLabel;
  if (qword_100920F40 != -1)
  {
    swift_once();
  }

  v9 = sub_100750534();
  v10 = sub_10000D0FC(v9, qword_100980B10);
  v11 = *(v9 - 8);
  v21 = *(v11 + 16);
  v21(v7, v10, v9);
  v20 = *(v11 + 56);
  v20(v7, 0, 1, v9);
  v12 = enum case for DirectionalTextAlignment.none(_:);
  v13 = v2 + 104;
  v14 = *(v2 + 104);
  v23 = v13;
  v24 = v1;
  v14(v4, enum case for DirectionalTextAlignment.none(_:), v1);
  v15 = sub_100745C84();
  v16 = objc_allocWithZone(v15);
  *(v0 + v22) = sub_100745C74();
  v22 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkSubtitleLabel;
  if (qword_100920F48 != -1)
  {
    swift_once();
  }

  v17 = sub_10000D0FC(v9, qword_100980B28);
  v21(v7, v17, v9);
  v20(v7, 0, 1, v9);
  v14(v4, v12, v24);
  v18 = objc_allocWithZone(v15);
  *(v0 + v22) = sub_100745C74();
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_allowsGroupBlending) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkPresenter) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView____lazy_storage___lockupViews) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView____lazy_storage___crossLinkViews) = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_1001F7A68(uint64_t a1)
{
  v29 = a1;
  v2 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v26 = &v25 - v6;
  v7 = sub_10000C518(&unk_100924290);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = sub_10000C518(&qword_1009242B8);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  v17 = OBJC_IVAR____TtC22SubscribePageExtension45InteractiveSectionBackgroundScrollCoordinator_currentState;
  swift_beginAccess();
  v18 = *(v14 + 56);
  v28 = v1;
  sub_100016B4C(v1 + v17, v16, &unk_100924290);
  sub_100016B4C(v29, &v16[v18], &unk_100924290);
  v19 = *(v3 + 48);
  if (v19(v16, 1, v2) == 1)
  {
    if (v19(&v16[v18], 1, v2) == 1)
    {
      return sub_10000C8CC(v16, &unk_100924290);
    }

    goto LABEL_6;
  }

  sub_100016B4C(v16, v12, &unk_100924290);
  if (v19(&v16[v18], 1, v2) == 1)
  {
    sub_100052BD8(v12);
LABEL_6:
    v21 = &qword_1009242B8;
    goto LABEL_13;
  }

  v22 = v26;
  sub_100052B74(&v16[v18], v26);
  if (sub_1007457A4() & 1) != 0 && *&v12[*(v2 + 20)] == *(v22 + *(v2 + 20)) && (sub_100741734())
  {
    v23 = sub_1007457A4();
    sub_100052BD8(v22);
    sub_100052BD8(v12);
    result = sub_10000C8CC(v16, &unk_100924290);
    if (v23)
    {
      return result;
    }

    goto LABEL_14;
  }

  sub_100052BD8(v22);
  sub_100052BD8(v12);
  v21 = &unk_100924290;
LABEL_13:
  sub_10000C8CC(v16, v21);
LABEL_14:
  sub_100016B4C(v28 + v17, v9, &unk_100924290);
  if (v19(v9, 1, v2) == 1)
  {
    return sub_10000C8CC(v9, &unk_100924290);
  }

  v24 = v27;
  sub_100052B74(v9, v27);
  sub_1001F7E48();
  return sub_100052BD8(v24);
}

uint64_t sub_1001F7E48()
{
  v0 = sub_1007417F4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741764();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v5 = Strong, type metadata accessor for InteractiveSectionBackgroundView(), sub_1007539C4(), v6 = sub_100753064(), , isa = sub_100741704().super.isa, v8 = [v5 _visibleDecorationViewOfKind:v6 atIndexPath:isa], v5, v6, isa, !v8) || (*&v16[0] = v8, sub_100052C98(), sub_10000C518(&unk_1009242E0), (swift_dynamicCast() & 1) == 0))
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
  }

  sub_1001F80E0(v18);
  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9 || (v10 = v9, v11 = UICollectionElementKindSectionHeader, v12 = sub_100741704().super.isa, v13 = [v10 _visibleSupplementaryViewOfKind:v11 atIndexPath:v12], v10, v11, v12, !v13) || (v15[1] = v13, sub_100052C98(), sub_10000C518(&unk_1009242E0), (swift_dynamicCast() & 1) == 0))
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
  }

  sub_1001F80E0(v16);
  (*(v1 + 8))(v3, v0);
  sub_10000C8CC(v16, &unk_1009242D0);
  return sub_10000C8CC(v18, &unk_1009242D0);
}

uint64_t sub_1001F80E0(uint64_t a1)
{
  v49 = sub_10000C518(&qword_1009242B8);
  __chkstk_darwin(v49);
  v50 = &v43 - v3;
  v4 = sub_10000C518(&unk_100924290);
  __chkstk_darwin(v4 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v43 - v8;
  __chkstk_darwin(v10);
  v12 = &v43 - v11;
  __chkstk_darwin(v13);
  v15 = (&v43 - v14);
  v16 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v43 - v21;
  sub_100016B4C(a1, &v51, &unk_1009242D0);
  if (!v52)
  {
    return sub_10000C8CC(&v51, &unk_1009242D0);
  }

  v47 = v12;
  v48 = v22;
  sub_100032CCC(&v51, v54);
  v23 = OBJC_IVAR____TtC22SubscribePageExtension45InteractiveSectionBackgroundScrollCoordinator_currentState;
  swift_beginAccess();
  sub_100016B4C(v1 + v23, v15, &unk_100924290);
  v24 = *(v17 + 48);
  if (v24(v15, 1, v16) == 1)
  {
    v25 = &unk_100924290;
    v26 = v15;
LABEL_21:
    sub_10000C8CC(v26, v25);
    return sub_10000C620(v54);
  }

  v43 = v19;
  v44 = v6;
  v45 = a1;
  v46 = v1;
  v28 = v48;
  sub_100052B74(v15, v48);
  v29 = v55;
  v30 = v56;
  sub_10000C888(v54, v55);
  v31 = v47;
  (*(v30 + 8))(v29, v30);
  sub_100052C34(v28, v9);
  (*(v17 + 56))(v9, 0, 1, v16);
  v32 = v50;
  v33 = *(v49 + 48);
  sub_100016B4C(v31, v50, &unk_100924290);
  sub_100016B4C(v9, v32 + v33, &unk_100924290);
  if (v24(v32, 1, v16) == 1)
  {
    sub_10000C8CC(v9, &unk_100924290);
    sub_10000C8CC(v31, &unk_100924290);
    if (v24((v32 + v33), 1, v16) == 1)
    {
      sub_10000C8CC(v32, &unk_100924290);
LABEL_8:
      sub_100052BD8(v48);
      return sub_10000C620(v54);
    }

    goto LABEL_11;
  }

  v34 = v44;
  sub_100016B4C(v32, v44, &unk_100924290);
  if (v24((v32 + v33), 1, v16) == 1)
  {
    sub_10000C8CC(v9, &unk_100924290);
    sub_10000C8CC(v47, &unk_100924290);
    sub_100052BD8(v34);
LABEL_11:
    sub_10000C8CC(v32, &qword_1009242B8);
    v35 = v46;
    goto LABEL_18;
  }

  v36 = v43;
  sub_100052B74(v32 + v33, v43);
  v37 = sub_1007457A4();
  v35 = v46;
  if (v37 & 1) != 0 && *(v34 + *(v16 + 20)) == *(v36 + *(v16 + 20)) && (sub_100741734())
  {
    v38 = sub_1007457A4();
    sub_100052BD8(v36);
    sub_10000C8CC(v9, &unk_100924290);
    sub_10000C8CC(v47, &unk_100924290);
    sub_100052BD8(v34);
    sub_10000C8CC(v32, &unk_100924290);
    if (v38)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_100052BD8(v36);
    sub_10000C8CC(v9, &unk_100924290);
    sub_10000C8CC(v47, &unk_100924290);
    sub_100052BD8(v34);
    sub_10000C8CC(v32, &unk_100924290);
  }

LABEL_18:
  sub_100016B4C(v45, &v51, &unk_1009242D0);
  v39 = v52;
  if (!v52)
  {
    sub_100052BD8(v48);
    v25 = &unk_1009242D0;
    v26 = &v51;
    goto LABEL_21;
  }

  v40 = v53;
  sub_10000C888(&v51, v52);
  v41 = *(v35 + 80);
  v42 = v48;
  (*(v40 + 16))(v48, v41, v39, v40);
  sub_100052BD8(v42);
  sub_10000C620(&v51);
  return sub_10000C620(v54);
}

uint64_t sub_1001F86F4()
{
  swift_unknownObjectWeakDestroy();

  swift_unknownObjectRelease();
  sub_10000C8CC(v0 + OBJC_IVAR____TtC22SubscribePageExtension45InteractiveSectionBackgroundScrollCoordinator_currentState, &unk_100924290);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InteractiveSectionBackgroundScrollCoordinator()
{
  result = qword_10092DA08;
  if (!qword_10092DA08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001F87D4()
{
  sub_1000501F0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1001F88B4(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1000518C8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1001F8930(v6);
  return sub_1007545B4();
}

void sub_1001F8930(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_100754704(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000C518(&qword_1009242C0);
        v6 = sub_100753324();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1001F8C68(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1001F8A40(0, v2, 1, a1);
  }
}

void sub_1001F8A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = sub_1007417F4();
  __chkstk_darwin(v33);
  v32 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  v28 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v34 = *a4;
    v14 = v34 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v30 = v14;
    v31 = a3;
    v16 = *(v34 + 8 * a3);
    v29 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v19 = [v16 indexPath];
      sub_100741744();

      v20 = [v18 indexPath];
      v21 = v32;
      sub_100741744();

      LOBYTE(v20) = sub_100741724();
      v22 = *v13;
      v23 = v21;
      v24 = v33;
      (*v13)(v23, v33);
      v22(v12, v24);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if ((v20 & 1) == 0)
      {
LABEL_4:
        a3 = v31 + 1;
        v14 = v30 + 8;
        v15 = v29 - 1;
        if (v31 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v25;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1001F8C68(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v111 = a1;
  v120 = sub_1007417F4();
  __chkstk_darwin(v120);
  v119 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v118 = &v105 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v111;
    if (!*v111)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v100 = a4;
    }

    else
    {
LABEL_121:
      v100 = sub_10005171C(a4);
    }

    v121 = v100;
    v101 = *(v100 + 2);
    if (v101 >= 2)
    {
      while (*v16)
      {
        a4 = *&v100[16 * v101];
        v102 = v100;
        v103 = *&v100[16 * v101 + 24];
        sub_1001F94F0((*v16 + 8 * a4), (*v16 + 8 * *&v100[16 * v101 + 16]), (*v16 + 8 * v103), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v103 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_10005171C(v102);
        }

        if (v101 - 2 >= *(v102 + 2))
        {
          goto LABEL_115;
        }

        v104 = &v102[16 * v101];
        *v104 = a4;
        v104[1] = v103;
        v121 = v102;
        sub_100051690(v101 - 1);
        v100 = v121;
        v101 = *(v121 + 2);
        if (v101 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v117 = (v11 + 8);
  v15 = _swiftEmptyArrayStorage;
  v110 = a4;
  v106 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v115 = v13;
      v108 = v15;
      v109 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v114 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v21 = [v18 indexPath];
      v22 = v118;
      sub_100741744();

      v23 = [v20 indexPath];
      v24 = v119;
      sub_100741744();

      LODWORD(v116) = sub_100741724();
      v25 = *v117;
      v26 = v120;
      (*v117)(v24, v120);
      v25(v22, v26);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v107 = v16;
      v27 = (v16 + 2);
      while (1)
      {
        v14 = v115;
        if (v115 == v27)
        {
          break;
        }

        v28 = *(v5 - 8);
        v29 = *v5;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v30 = [v29 indexPath];
        v31 = v118;
        sub_100741744();

        v32 = [v28 indexPath];
        v33 = v119;
        sub_100741744();

        LODWORD(v32) = sub_100741724() & 1;
        v34 = v33;
        v35 = v120;
        v25(v34, v120);
        v25(v31, v35);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        ++v27;
        v5 += 8;
        if ((v116 & 1) != v32)
        {
          v14 = (v27 - 1);
          break;
        }
      }

      v15 = v108;
      v6 = v109;
      a4 = v110;
      v16 = v107;
      v36 = v114;
      if (v116)
      {
        if (v14 < v107)
        {
          goto LABEL_118;
        }

        a3 = v106;
        if (v107 < v14)
        {
          v37 = 8 * v14 - 8;
          v38 = v14;
          v39 = v107;
          do
          {
            if (v39 != --v38)
            {
              v41 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v40 = *(v41 + v36);
              *(v41 + v36) = *(v41 + v37);
              *(v41 + v37) = v40;
            }

            v39 = (v39 + 1);
            v37 -= 8;
            v36 += 8;
          }

          while (v39 < v38);
        }
      }

      else
      {
        a3 = v106;
      }
    }

    v42 = a3[1];
    if (v14 < v42)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v43 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v43 >= v42)
        {
          v43 = a3[1];
        }

        if (v43 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v43)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v56 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v56;
    }

    else
    {
      v15 = sub_1002558E0(0, *(v56 + 2) + 1, 1, v56);
    }

    a4 = *(v15 + 2);
    v57 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v57 >> 1)
    {
      v15 = sub_1002558E0((v57 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v58 = &v15[16 * a4];
    *(v58 + 4) = v16;
    *(v58 + 5) = v14;
    v59 = *v111;
    if (!*v111)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v60 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v61 = *(v15 + 4);
          v62 = *(v15 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_56:
          if (v64)
          {
            goto LABEL_105;
          }

          v77 = &v15[16 * v5];
          v79 = *v77;
          v78 = *(v77 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_108;
          }

          v83 = &v15[16 * v60 + 32];
          v85 = *v83;
          v84 = *(v83 + 1);
          v71 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v71)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v81, v86))
          {
            goto LABEL_112;
          }

          if (v81 + v86 >= v63)
          {
            if (v63 < v86)
            {
              v60 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v87 = &v15[16 * v5];
        v89 = *v87;
        v88 = *(v87 + 1);
        v71 = __OFSUB__(v88, v89);
        v81 = v88 - v89;
        v82 = v71;
LABEL_70:
        if (v82)
        {
          goto LABEL_107;
        }

        v90 = &v15[16 * v60];
        v92 = *(v90 + 4);
        v91 = *(v90 + 5);
        v71 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v71)
        {
          goto LABEL_110;
        }

        if (v93 < v81)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v60 - 1;
        if (v60 - 1 >= v5)
        {
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v98 = v15;
        v5 = *&v15[16 * a4 + 32];
        v16 = *&v15[16 * v60 + 40];
        sub_1001F94F0((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v60 + 32]), (*a3 + 8 * v16), v59);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_10005171C(v98);
        }

        if (a4 >= *(v98 + 2))
        {
          goto LABEL_102;
        }

        v99 = &v98[16 * a4];
        *(v99 + 4) = v5;
        *(v99 + 5) = v16;
        v121 = v98;
        a4 = &v121;
        sub_100051690(v60);
        v15 = v121;
        v5 = *(v121 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v65 = &v15[16 * v5 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_103;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_104;
      }

      v72 = &v15[16 * v5];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_106;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_109;
      }

      if (v76 >= v68)
      {
        v94 = &v15[16 * v60 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_113;
        }

        if (v63 < v97)
        {
          v60 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v110;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v108 = v15;
  v109 = v6;
  v116 = *a3;
  v44 = v116 + 8 * v14 - 8;
  v107 = v16;
  a4 = v16 - v14;
  v112 = v43;
LABEL_29:
  v114 = v44;
  v115 = v14;
  v5 = *(v116 + 8 * v14);
  v113 = a4;
  v45 = v44;
  while (1)
  {
    v46 = *v45;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v47 = [v5 indexPath];
    v48 = v118;
    sub_100741744();

    v49 = [v46 indexPath];
    v50 = v119;
    sub_100741744();

    LOBYTE(v49) = sub_100741724();
    v51 = *v117;
    v52 = v50;
    v53 = v120;
    (*v117)(v52, v120);
    v51(v48, v53);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v49 & 1) == 0)
    {
LABEL_28:
      v14 = v115 + 1;
      v44 = v114 + 8;
      a4 = v113 - 1;
      if ((v115 + 1) != v112)
      {
        goto LABEL_29;
      }

      v14 = v112;
      v15 = v108;
      v6 = v109;
      a3 = v106;
      v16 = v107;
      goto LABEL_36;
    }

    if (!v116)
    {
      break;
    }

    v54 = *v45;
    v5 = *(v45 + 8);
    *v45 = v5;
    *(v45 + 8) = v54;
    v45 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_1001F94F0(void **a1, void **a2, void **a3, void **a4)
{
  v51 = sub_1007417F4();
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v49 = &v45 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v52 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v54 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v52)
    {
      v46 = a4;
      v47 = (v8 + 8);
LABEL_27:
      v45 = a1;
      v29 = a1 - 1;
      v30 = a3 - 1;
      v31 = v54;
      v48 = a1 - 1;
      do
      {
        v53 = v30;
        v32 = v30 + 1;
        v33 = *--v31;
        v34 = *v29;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v35 = [v33 indexPath];
        v36 = v49;
        sub_100741744();

        v37 = [v34 indexPath];
        v38 = v50;
        sub_100741744();

        LOBYTE(v37) = sub_100741724();
        v39 = *v47;
        v40 = v38;
        v41 = v51;
        (*v47)(v40, v51);
        v39(v36, v41);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v37)
        {
          a4 = v46;
          a3 = v53;
          v43 = v48;
          if (v32 != v45)
          {
            *v53 = *v48;
          }

          if (v54 <= a4 || (a1 = v43, v43 <= v52))
          {
            a1 = v43;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v46;
        v42 = v53;
        if (v32 != v54)
        {
          *v53 = *v31;
        }

        v30 = v42 - 1;
        v54 = v31;
        v29 = v48;
      }

      while (v31 > a4);
      v54 = v31;
      a1 = v45;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v54 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v52 = a1;
        v17 = *a2;
        v18 = *a4;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v19 = [v17 indexPath];
        v20 = v49;
        sub_100741744();

        v21 = [v18 indexPath];
        v22 = v50;
        sub_100741744();

        LOBYTE(v21) = sub_100741724();
        v23 = *v16;
        v24 = v22;
        v25 = v51;
        (*v16)(v24, v51);
        v23(v20, v25);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if ((v21 & 1) == 0)
        {
          break;
        }

        v26 = a2;
        v27 = v52;
        v28 = v52 == a2++;
        if (!v28)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v27 + 1;
        if (a4 >= v54 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v26 = a4;
      v27 = v52;
      v28 = v52 == a4++;
      if (v28)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v27 = *v26;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v54 - a4 + (v54 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v54 - a4));
  }

  return 1;
}
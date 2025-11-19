double sub_2EB578(uint64_t a1, uint64_t a2)
{
  v3 = sub_76A920();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ProductLockupLayout(0);
  sub_1ED18(a2 + *(v7 + 52), &v22, &qword_9417D0);
  if (!v23)
  {
    sub_10A2C(&v22, &qword_9417D0);
    return 0.0;
  }

  sub_10914(&v22, v24);
  sub_1ED18(a2 + *(v7 + 56), &v20, &qword_9417D0);
  if (!v21)
  {
    sub_10A2C(&v20, &qword_9417D0);
    sub_BEB8(v24);
    return 0.0;
  }

  sub_10914(&v20, &v22);
  sub_B170(v24, v24[3]);
  sub_7665A0();
  v9 = v8;
  v11 = v10;
  sub_B170(&v22, v23);
  sub_7665A0();
  v13 = v12;
  v14 = type metadata accessor for ProductLockupLayout.Metrics(0);
  sub_B170((a2 + *(v14 + 84)), *(a2 + *(v14 + 84) + 24));
  sub_33964();
  sub_766700();
  v16 = v15;
  (*(v4 + 8))(v6, v3);
  v17 = v13 + v9 - v11 + v16;
  sub_BEB8(&v22);
  sub_BEB8(v24);
  return v17;
}

double sub_2EB7F4(void *a1, uint64_t a2)
{
  v4 = sub_76A920();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 traitCollection];
  v54 = sub_7699E0();

  v10 = type metadata accessor for ProductLockupLayout.Metrics(0);
  *&v55 = a1;
  v11 = sub_BD88(&qword_940AD0);
  sub_7592B0();
  v12 = *v58;
  v13 = v10;
  *&v55 = a1;
  v53 = v11;
  sub_7592B0();
  v14 = *v58;
  v15 = type metadata accessor for ProductLockupLayout(0);
  v16 = v15[10];
  sub_1ED18(a2 + v16, v58, &unk_943B10);
  if (v59)
  {
    sub_B170(v58, v59);
    sub_7665B0();
    sub_BEB8(v58);
  }

  else
  {
    sub_10A2C(v58, &unk_943B10);
  }

  sub_1ED18(a2 + v16, v58, &unk_943B10);
  v17 = v59;
  sub_10A2C(v58, &unk_943B10);
  if (v17)
  {
    sub_B170((a2 + *(v13 + 80)), *(a2 + *(v13 + 80) + 24));
    sub_33964();
    sub_766700();
    (*(v5 + 8))(v8, v4);
  }

  v18 = (a2 + v15[6]);
  sub_B170(v18, v18[3]);
  sub_7665A0();
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

  sub_B170(v18, v18[3]);
  sub_7669E0();
  v29 = v23 - v26 + v27 + v28;
  sub_134D8(v18, v58);
  *&v55 = a1;
  sub_BD88(&unk_94B6E0);
  sub_7592B0();
  v30 = v15[9];
  sub_1ED18(a2 + v30, &v55, &qword_9417D0);
  sub_10A2C(&v55, &qword_9417D0);
  sub_B170(v58, v59);
  v60.var0 = v21;
  v60.var1 = v23;
  v60.var2 = v24;
  v60.var3 = v26;
  sub_766A10(v60);
  sub_BEB8(v58);
  v31 = (a2 + v15[8]);
  sub_B170(v31, v31[3]);
  sub_7669D0();
  v32 = (a2 + v15[7]);
  sub_B170(v32, v32[3]);
  sub_7669D0();
  sub_B170(v31, v31[3]);
  sub_7665A0();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_B170(v32, v32[3]);
  sub_7665A0();
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
  sub_1ED18(a2 + v30, &v55, &qword_9417D0);
  if (v56)
  {
    sub_10914(&v55, v58);
    v57 = a1;
    sub_7592B0();
    v47 = *&v55;
    sub_B170(v58, v59);
    sub_7665A0();
    v49 = v48;
    v46 = v46 + v47 - v50 + v51 - v48;
    sub_BEB8(v58);
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

    sub_10A2C(&v55, &qword_9417D0);
  }

  return v46 + v49;
}

uint64_t sub_2EBDD4(double a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, CGFloat a19, CGFloat a20, CGFloat a21, CGFloat a22)
{
  v123 = a16;
  v118 = a15;
  v137 = a8;
  v125 = a6;
  v130 = a5;
  v129 = a4;
  v136 = a3;
  v116 = a1;
  v128 = COERCE_DOUBLE(sub_76A920());
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
  sub_1ED18(a12 + v42, &v139, &unk_943B10);
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
    sub_10914(&v139, &v141);
    sub_B170((a12 + v41[6]), *(a12 + v41[6] + 24));
    sub_766520();
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
    sub_B170(&v141, v142);
    sub_769D20();
    a12 = v135;
    sub_766530();
    sub_BEB8(&v141);
  }

  else
  {
    sub_10A2C(&v139, &unk_943B10);
  }

  v116 = *&v41;
  v43 = a12;
  v44 = (a12 + v41[12]);
  sub_B170(v44, v44[3]);
  v45 = sub_766540();
  v46 = v125;
  v47 = v129;
  if (v45)
  {
    sub_B170(v44, v44[3]);
    sub_766530();
    v48 = v124;
    v49 = v126;
  }

  else
  {
    v117 = v29;
    sub_1ED18(v43 + v42, &v141, &unk_943B10);
    v50 = v142;
    sub_10A2C(&v141, &unk_943B10);
    v51 = v131;
    if (v50)
    {
      v52 = type metadata accessor for ProductLockupLayout.Metrics(0);
      sub_B170((v43 + *(v52 + 80)), *(v43 + *(v52 + 80) + 24));
      v53 = v127;
      sub_33964();
      sub_766700();
      (*(v117 + 8))(v53, COERCE_DOUBLE(*&v128));
    }

    v54 = v132;
    v55 = v124;
    sub_1ED18(v43 + v42, &v141, &unk_943B10);
    v56 = v126;
    v114 = a14;
    v113 = a13;
    if (v142)
    {
      sub_B170(&v141, v142);
      sub_7665B0();
      sub_BEB8(&v141);
    }

    else
    {
      sub_10A2C(&v141, &unk_943B10);
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
    sub_B170(v62, v63);
    v64 = v127;
    sub_33964();
    sub_766700();
    v65 = a11;
    v66 = *(v57 + 8);
    v67 = v128;
    v66(v64, *&v128);
    v68 = v136;
    v69 = v58;
    v47 = v129;
    sub_B170((v60 + *(v61 + 24)), *(v60 + *(v61 + 24) + 24));
    sub_33964();
    sub_766700();
    v115 = *&v66;
    v66(v64, *&v67);
    a11 = v65;
    sub_B170(v44, v44[3]);
    v46 = v59;
    sub_7665A0();
    v71 = v70;
    v148.origin.x = v68;
    v148.origin.y = v47;
    v148.size.width = v69;
    v148.size.height = v59;
    CGRectGetMidY(v148);
    v72 = (v135 + *(*&v116 + 44));
    sub_B170(v72, v72[3]);
    if ((sub_766540() & 1) != 0 || (v149.origin.x = v68, v149.origin.y = v47, v149.size.width = v69, v149.size.height = v59, CGRectGetHeight(v149) < v71))
    {
      v150.origin.x = v68;
      v150.origin.y = v47;
      v150.size.width = v69;
      v150.size.height = v59;
      CGRectGetMinY(v150);
    }

    a14 = v114;
    sub_B170(v72, v72[3]);
    v73 = sub_766540();
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
      sub_B170(v112, v112[3]);
      v78 = v29;
      v79 = v127;
      sub_33964();
      sub_766700();
      v80 = v79;
      v29 = v78;
      (*&v115)(v80, *&v128);
    }

    a13 = v113;
    sub_B170(v44, v44[3]);
    sub_769D20();
    sub_766530();
    v48 = v124;
  }

  v81 = v47;
  sub_B170(v44, v44[3]);
  v82 = v132;
  v83 = v48;
  sub_7665A0();
  v85 = v84;
  sub_B170(v44, v44[3]);
  v86 = sub_766540();
  v87 = 0.0;
  v88 = v135;
  if ((v86 & 1) == 0)
  {
    v89 = v88 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 76);
    v90 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    sub_B170((v89 + *(v90 + 28)), *(v89 + *(v90 + 28) + 24));
    v91 = v127;
    sub_33964();
    sub_766700();
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
  sub_BD88(&qword_940AD0);
  sub_7592B0();
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
  sub_7665A0();
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

  sub_769D20();
  sub_766530();
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
  sub_7665A0();
  v130 = v110;
  v158.origin.x = v107;
  v158.origin.y = v49;
  v158.size.width = v108;
  v158.size.height = v83;
  CGRectGetMaxX(v158);
  sub_B170((v88 + *(v97 + 84)), *(v88 + *(v97 + 84) + 24));
  sub_766720();
  sub_769D20();
  sub_766530();
  (*(v120 + 8))(v99, a13);
  return (*(v122 + 8))(v109, a14);
}

uint64_t sub_2ECAE8(uint64_t a1)
{
  *(a1 + 8) = sub_2ECB6C(&unk_94E5F0, type metadata accessor for ProductLockupLayout);
  result = sub_2ECB6C(&qword_94E7C0, type metadata accessor for ProductLockupLayout);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2ECB6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2ECBC8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_2ECC9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void sub_2ECD58()
{
  type metadata accessor for ProductLockupLayout.Metrics(319);
  if (v0 <= 0x3F)
  {
    sub_70B18(319, &unk_94E830);
    if (v1 <= 0x3F)
    {
      sub_70B18(319, &qword_941880);
      if (v2 <= 0x3F)
      {
        sub_7E0B0(319, &unk_94E840, &unk_941890);
        if (v3 <= 0x3F)
        {
          sub_7E0B0(319, &qword_94E850, &unk_9418A0);
          if (v4 <= 0x3F)
          {
            sub_1994D4();
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

uint64_t sub_2ECED8(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_BD88(&qword_940AD0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_BD88(&unk_94E7B0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v13 = sub_BD88(&unk_94B6E0);
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

uint64_t sub_2ED0C4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
    return result;
  }

  v8 = sub_BD88(&qword_940AD0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_BD88(&unk_94E7B0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v13 = sub_BD88(&unk_94B6E0);
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

void sub_2ED29C()
{
  type metadata accessor for UIEdgeInsets(319);
  if (v0 <= 0x3F)
  {
    sub_70B18(319, &qword_943C60);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        sub_2ED488(319, qword_941970);
        if (v3 <= 0x3F)
        {
          sub_2ED414();
          if (v4 <= 0x3F)
          {
            sub_2ED488(319, &unk_94E948);
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

void sub_2ED414()
{
  if (!qword_94E938)
  {
    sub_133D8(&qword_93FBE0);
    sub_26F08();
    v0 = sub_7593A0();
    if (!v1)
    {
      atomic_store(v0, &qword_94E938);
    }
  }
}

void sub_2ED488(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_133D8(&qword_93FBE0);
    v3 = sub_7593A0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_2ED508(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_BD88(&unk_94E7B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2ED5D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_BD88(&unk_94E7B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2ED688()
{
  sub_70B18(319, &qword_943C60);
  if (v0 <= 0x3F)
  {
    sub_2ED414();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2ED728()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_2ED768()
{
  result = qword_94EA70;
  if (!qword_94EA70)
  {
    sub_133D8(&unk_94EA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94EA70);
  }

  return result;
}

uint64_t sub_2ED7CC(uint64_t a1)
{

  return a1;
}

uint64_t sub_2ED828(void *a1)
{
  [a1 _systemContentInset];
  v4 = v3;
  [a1 contentOffset];
  v6 = v5;
  v7 = [a1 contentInset];
  v8.n128_f64[0] = fmin((v4 + v6 + v8.n128_f64[0] - *(v1 + 32)) / *(v1 + 40), 1.0);
  if (v8.n128_f64[0] < 0.0)
  {
    v8.n128_f64[0] = 0.0;
  }

  return (*(v1 + 16))(v7, v8);
}

void *sub_2ED8B8(void *result, double a2)
{
  if (*(v2 + 32) != a2)
  {
    *(v2 + 32) = a2;
    v3 = result;
    [result _systemContentInset];
    v5 = v4;
    [v3 contentOffset];
    v7 = v6;
    v8 = [v3 contentInset];
    v9.n128_f64[0] = fmin((v5 + v7 + v9.n128_f64[0] - *(v2 + 32)) / *(v2 + 40), 1.0);
    if (v9.n128_f64[0] < 0.0)
    {
      v9.n128_f64[0] = 0.0;
    }

    return (*(v2 + 16))(v8, v9);
  }

  return result;
}

uint64_t sub_2ED958()
{

  return swift_deallocClassInstance();
}

double sub_2ED9E4()
{
  sub_B170(v0, v0[3]);
  sub_7673F0();
  return ceil(v1);
}

__n128 sub_2EDA50(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2EDA64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2EDAAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2EDB80()
{
  ObjectType = swift_getObjectType();
  v2 = sub_BD88(&qword_94EC40);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v17[-v4];
  v18.receiver = v0;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "prepareForReuse", v3);
  v6 = &v0[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_titleText];
  *v6 = 0;
  *(v6 + 1) = 0;

  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_titleLabel] setText:0];
  [v0 setNeedsLayout];
  v7 = &v0[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_explicitSummary];
  *v7 = 0;
  *(v7 + 1) = 0;

  sub_2F0D68();
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_disclosureView] setHidden:0];
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_detailItems] = _swiftEmptyArrayStorage;

  v8 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_detailViews;
  result = swift_beginAccess();
  v10 = *&v0[v8];
  if (!(v10 >> 62))
  {
    v11 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_10:
    *&v0[v8] = _swiftEmptyArrayStorage;

    v15 = sub_BD88(&unk_950960);
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    v16 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_linkAction;
    swift_beginAccess();
    sub_13EA74(v5, &v0[v16]);
    swift_endAccess();
    sub_2F0EF0();
    return sub_10A2C(v5, &qword_94EC40);
  }

  result = sub_76A860();
  v11 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v11 >= 1)
  {

    for (i = 0; i != v11; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = sub_76A770();
      }

      else
      {
        v13 = *(v10 + 8 * i + 32);
      }

      v14 = v13;
      [v13 removeFromSuperview];
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_2EDE24()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_760620();
  sub_161DC(v4, qword_99C860);
  v30 = sub_BE38(v4, qword_99C860);
  if (qword_93C980 != -1)
  {
    swift_once();
  }

  v5 = qword_94EB90;
  [v5 size];

  v6 = qword_94EB90;
  [v6 contentInsets];

  v52[8] = &type metadata for Double;
  v52[9] = &protocol witness table for Double;
  v52[5] = 0x401C000000000000;
  if (qword_93D6D8 != -1)
  {
    swift_once();
  }

  v7 = sub_7666D0();
  v8 = sub_BE38(v7, qword_99EC80);
  v9 = *(v7 - 8);
  v32 = *(v9 + 16);
  v10 = v9 + 16;
  v11 = v8;
  v34 = v7;
  v32(v3);
  v31 = enum case for FontSource.useCase(_:);
  v37 = v1[13];
  v38 = v1 + 13;
  v37(v3);
  v36 = sub_766CA0();
  v52[3] = v36;
  v52[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v52);
  v50 = v0;
  v51 = &protocol witness table for FontSource;
  v12 = sub_B1B4(v49);
  v35 = v1[2];
  v35(v12, v3, v0);
  v29 = v1 + 2;
  sub_766CB0();
  v33 = v1[1];
  v33(v3, v0);
  v27 = v10;
  v28 = v1 + 1;
  v26 = v11;
  v13 = v7;
  v14 = v32;
  (v32)(v3, v11, v13);
  v15 = v31;
  (v37)(v3, v31, v0);
  v50 = v36;
  v51 = &protocol witness table for StaticDimension;
  sub_B1B4(v49);
  v47 = v0;
  v48 = &protocol witness table for FontSource;
  v16 = sub_B1B4(v46);
  v35(v16, v3, v0);
  sub_766CB0();
  v33(v3, v0);
  v48 = &protocol witness table for Double;
  v47 = &type metadata for Double;
  v46[0] = 0x4030000000000000;
  v14(v3, v11, v34);
  v17 = v15;
  v18 = v37;
  (v37)(v3, v17, v0);
  v19 = v36;
  v45[3] = v36;
  v45[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v45);
  v43 = v0;
  v44 = &protocol witness table for FontSource;
  v20 = sub_B1B4(v42);
  v21 = v35;
  v35(v20, v3, v0);
  sub_766CB0();
  v22 = v33;
  v33(v3, v0);
  (v32)(v3, v26, v34);
  (v18)(v3, v31, v0);
  v43 = v19;
  v44 = &protocol witness table for StaticDimension;
  sub_B1B4(v42);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v23 = sub_B1B4(v39);
  v21(v23, v3, v0);
  sub_766CB0();
  v22(v3, v0);
  v41 = &protocol witness table for Double;
  v40 = &type metadata for Double;
  v39[0] = 0x4034000000000000;
  return sub_7605E0();
}

uint64_t sub_2EE3A8()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_760620();
  sub_161DC(v4, qword_99C878);
  v24[2] = sub_BE38(v4, qword_99C878);
  if (qword_93C980 != -1)
  {
    swift_once();
  }

  v5 = qword_94EB90;
  [v5 size];

  v6 = qword_94EB90;
  [v6 contentInsets];

  v45[8] = &type metadata for Double;
  v45[9] = &protocol witness table for Double;
  v45[5] = 0x401C000000000000;
  if (qword_93D6D0 != -1)
  {
    swift_once();
  }

  v7 = sub_7666D0();
  v8 = sub_BE38(v7, qword_99EC68);
  v9 = *(v7 - 8);
  v10 = *(v9 + 16);
  v29 = v8;
  v31 = v10;
  v11 = v9 + 16;
  (v10)(v3);
  v12 = v1[13];
  v27 = enum case for FontSource.useCase(_:);
  v28 = v1 + 13;
  v13 = v12;
  (v12)(v3);
  v26 = sub_766CA0();
  v45[3] = v26;
  v45[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v45);
  v43 = v0;
  v44 = &protocol witness table for FontSource;
  v14 = sub_B1B4(v42);
  v30 = v1[2];
  v30(v14, v3, v0);
  sub_766CB0();
  v25 = v1[1];
  v25(v3, v0);
  if (qword_93D6D8 != -1)
  {
    swift_once();
  }

  v15 = sub_BE38(v7, qword_99EC80);
  v31(v3, v15, v7);
  v24[0] = v7;
  v24[1] = v11;
  v13(v3, v27, v0);
  v43 = v26;
  v44 = &protocol witness table for StaticDimension;
  sub_B1B4(v42);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v16 = sub_B1B4(v39);
  v30(v16, v3, v0);
  sub_766CB0();
  v25(v3, v0);
  v41 = &protocol witness table for Double;
  v40 = &type metadata for Double;
  v39[0] = 0x4030000000000000;
  v31(v3, v29, v7);
  v17 = v27;
  v18 = v13;
  v13(v3, v27, v0);
  v19 = v26;
  v38[3] = v26;
  v38[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v38);
  v36 = v0;
  v37 = &protocol witness table for FontSource;
  v20 = sub_B1B4(v35);
  v30(v20, v3, v0);
  sub_766CB0();
  v21 = v25;
  v25(v3, v0);
  v31(v3, v29, v24[0]);
  v18(v3, v17, v0);
  v36 = v19;
  v37 = &protocol witness table for StaticDimension;
  sub_B1B4(v35);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v22 = sub_B1B4(v32);
  v30(v22, v3, v0);
  sub_766CB0();
  v21(v3, v0);
  v34 = &protocol witness table for Double;
  v33 = &type metadata for Double;
  v32[0] = 0x4034000000000000;
  return sub_7605E0();
}

uint64_t sub_2EE95C()
{
  v0 = sub_7666D0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_BD88(&qword_94E610);
  sub_161DC(v7, qword_94EB30);
  sub_BE38(v7, qword_94EB30);
  if (qword_93D6D8 != -1)
  {
    swift_once();
  }

  v8 = sub_BE38(v0, qword_99EC80);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_93D6D0 != -1)
  {
    swift_once();
  }

  v10 = sub_BE38(v0, qword_99EC68);
  v9(v3, v10, v0);
  sub_BD88(&qword_93FBE0);
  return sub_7592D0();
}

uint64_t sub_2EEB3C()
{
  v0 = sub_760620();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_BD88(&unk_94EC48);
  sub_161DC(v7, qword_99C890);
  sub_BE38(v7, qword_99C890);
  if (qword_93C948 != -1)
  {
    swift_once();
  }

  v8 = sub_BE38(v0, qword_99C860);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_93C950 != -1)
  {
    swift_once();
  }

  v10 = sub_BE38(v0, qword_99C878);
  v9(v3, v10, v0);
  sub_BD88(&qword_93FBE0);
  return sub_7592D0();
}

uint64_t sub_2EED28()
{
  v0 = sub_BD88(&unk_93F8F0);
  sub_161DC(v0, qword_94EB60);
  sub_BE38(v0, qword_94EB60);
  sub_BD88(&qword_93FBE0);
  type metadata accessor for NSTextAlignment(0);
  return sub_7593B0();
}

uint64_t sub_2EEDC4@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = sub_7699F0();

  result = sub_7605D0();
  v6 = 2;
  if ((v4 ^ result))
  {
    v6 = 0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_2EEE40()
{
  v0 = sub_759950();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.chevronDown(_:), v0, v2);
  v5 = sub_759930();
  result = (*(v1 + 8))(v4, v0);
  qword_94EB90 = v5;
  return result;
}

char *sub_2EEF38(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_BD88(&qword_94EC10);
  __chkstk_darwin(v10);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_itemLayoutContext;
  v12 = sub_75C840();
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_linkLabel] = 0;
  _s8ItemViewCMa();
  sub_7667C0();
  sub_16194(&qword_94EC18, &qword_94EC10);
  sub_767480();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_detailViews] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_separatorLineView] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_isSeparatorDisplayed] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_isExpanded] = 0;
  v13 = &v4[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_titleText];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v4[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_explicitSummary];
  *v14 = 0;
  v14[1] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_detailItems] = _swiftEmptyArrayStorage;
  v15 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_linkAction;
  v16 = sub_BD88(&unk_950960);
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  if (qword_93C980 != -1)
  {
    swift_once();
  }

  v17 = [objc_allocWithZone(UIImageView) initWithImage:qword_94EB90];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_disclosureView] = v17;
  sub_75BB20();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_titleLabel] = v19;
  v20 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_summaryLabel] = v20;
  v44.receiver = v4;
  v44.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v44, "initWithFrame:", a1, a2, a3, a4);
  v22 = [v21 contentView];
  sub_BE70(0, &qword_93E540);
  v23 = sub_76A000();
  [v22 setBackgroundColor:v23];

  v24 = [v21 contentView];
  [v24 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v25 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_disclosureView;
  v26 = *&v21[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_disclosureView];
  v27 = sub_769FF0();
  [v26 setTintColor:v27];

  v28 = [v21 contentView];
  [v28 addSubview:*&v21[v25]];

  v29 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_titleLabel;
  v30 = *&v21[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_titleLabel];
  sub_75BAD0();

  [*&v21[v29] setNumberOfLines:1];
  v31 = *&v21[v29];
  v32 = sub_769FF0();
  [v31 setTextColor:v32];

  v33 = *&v21[v29];
  v34 = sub_76A000();
  [v33 setBackgroundColor:v34];

  v35 = [v21 contentView];
  [v35 addSubview:*&v21[v29]];

  v36 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_summaryLabel;
  v37 = *&v21[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_summaryLabel];
  sub_75BAD0();

  [*&v21[v36] setNumberOfLines:1];
  v38 = *&v21[v36];
  v39 = sub_769FD0();
  [v38 setTextColor:v39];

  v40 = *&v21[v36];
  v41 = sub_76A000();
  [v40 setBackgroundColor:v41];

  v42 = [v21 contentView];
  [v42 addSubview:*&v21[v36]];

  sub_2EF4C8();
  return v21;
}

void sub_2EF4C8()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_titleLabel];
  if (qword_93C968 != -1)
  {
    swift_once();
  }

  v2 = sub_BD88(&unk_93F8F0);
  sub_BE38(v2, qword_94EB48);
  v3 = v0;
  sub_7592B0();

  [v1 setTextAlignment:{v11, v0}];
  v4 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_summaryLabel];
  if (qword_93C970 != -1)
  {
    swift_once();
  }

  sub_BE38(v2, qword_94EB60);
  v5 = v3;
  sub_7592B0();

  [v4 setTextAlignment:{v11, v3}];
  v6 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_linkLabel];
  if (v6)
  {
    v7 = qword_93C978;
    v8 = v6;
    if (v7 != -1)
    {
      swift_once();
    }

    sub_BE38(v2, qword_94EB78);
    v10 = v5;
    v9 = v5;
    sub_7592B0();

    [v8 setTextAlignment:{v11, v10}];
  }
}

uint64_t sub_2EF73C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v63 = sub_7674E0();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v64 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_767510();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_7664F0();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_760640();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_760620();
  v73 = *(v66 - 8);
  __chkstk_darwin(v66);
  v55 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v72 = &v52 - v9;
  v10 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v10 - 8);
  v12 = &v52 - v11;
  v13 = sub_7666D0();
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88.receiver = v1;
  v88.super_class = ObjectType;
  objc_msgSendSuper2(&v88, "layoutSubviews", v15);
  v18 = [v1 contentView];
  sub_BE70(0, &qword_93E550);
  sub_75D650();

  if (qword_93C958 != -1)
  {
    swift_once();
  }

  v19 = sub_BD88(&qword_94E610);
  sub_BE38(v19, qword_94EB30);
  v85 = v1;
  v20 = v1;
  sub_7592B0();

  v21 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_titleLabel];
  v22 = *(v14 + 16);
  v22(v12, v17, v13);
  v61 = v14;
  v23 = *(v14 + 56);
  v23(v12, 0, 1, v13);
  v54 = v21;
  sub_75BA40();
  v24 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_summaryLabel];
  v22(v12, v17, v13);
  v23(v12, 0, 1, v13);
  sub_75BA40();
  v53 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_linkLabel;
  v25 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_linkLabel];
  if (v25)
  {
    v22(v12, v17, v13);
    v23(v12, 0, 1, v13);
    v26 = v25;
    sub_75BA40();
  }

  v59 = v13;
  v60 = v17;
  v27 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_isExpanded;
  [v24 setHidden:v20[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_isExpanded]];
  v28 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_disclosureView];
  if (v20[v27])
  {
    LOBYTE(v29) = 1;
  }

  else
  {
    v29 = !sub_2F0214();
  }

  v30 = v66;
  v31 = v55;
  [v28 setHidden:v29];
  if (qword_93C960 != -1)
  {
    swift_once();
  }

  v32 = sub_BD88(&unk_94EC48);
  sub_BE38(v32, qword_99C890);
  v85 = v20;
  v33 = v72;
  sub_7592B0();
  sub_7605F0();
  v34 = [v20 traitCollection];
  _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

  sub_769D60();
  sub_760600();
  (*(v73 + 16))(v31, v33, v30);
  v35 = sub_75BB20();
  v86 = v35;
  v87 = &protocol witness table for UILabel;
  v36 = v54;
  v84 = &protocol witness table for UILabel;
  v85 = v54;
  v83 = v35;
  v82 = v24;
  swift_beginAccess();
  v37 = v36;
  v38 = v24;

  sub_141154(v39);

  v40 = *&v20[v53];
  if (v40)
  {
    v41 = &protocol witness table for UIView;
  }

  else
  {
    v35 = 0;
    v41 = 0;
    v79 = 0;
    v78 = 0;
  }

  v77 = v40;
  v80 = v35;
  v81 = v41;
  v42 = sub_BE70(0, &qword_949D90);
  v76 = &protocol witness table for UIView;
  v75 = v42;
  v74 = v28;
  v43 = v28;
  v44 = v40;
  v45 = v65;
  sub_760630();
  v46 = v56;
  sub_7605C0();
  (*(v57 + 8))(v46, v58);
  (*(v62 + 104))(v64, enum case for Separator.Position.bottom(_:), v63);
  v86 = sub_766970();
  v87 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v85);
  sub_766960();
  v47 = v69;
  sub_7674F0();
  v48 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_separatorLineView;
  swift_beginAccess();
  v49 = *&v20[v48];
  if (v49)
  {
    swift_endAccess();
    v50 = v49;
    sub_7674C0();
    [v50 setFrame:?];

    (*(v70 + 8))(v47, v71);
    (*(v67 + 8))(v45, v68);
    (*(v73 + 8))(v72, v30);
    return (*(v61 + 8))(v60, v59);
  }

  else
  {
    (*(v70 + 8))(v47, v71);
    (*(v67 + 8))(v45, v68);
    (*(v73 + 8))(v72, v30);
    (*(v61 + 8))(v60, v59);
    return swift_endAccess();
  }
}

BOOL sub_2F0214()
{
  ObjectType = swift_getObjectType();
  v3 = sub_7666D0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_76A920();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_760620();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&unk_950960);
  __chkstk_darwin(v15);
  v19 = &v68 - v18;
  if (*&v0[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_explicitSummary + 8])
  {
    return 1;
  }

  v71 = v10;
  v72 = v8;
  v74 = v4;
  v75 = v14;
  v73 = v12;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_detailItems;
  v21 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_detailItems];
  if (v21 >> 62)
  {
    v69 = v16;
    v61 = v17;
    v62 = v19;
    v63 = sub_76A860();
    v19 = v62;
    v17 = v61;
    v22 = v63;
    v16 = v69;
  }

  else
  {
    v22 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
  }

  v23 = v3;
  if (v22 != 1)
  {
    return 1;
  }

  v24 = v11;
  v25 = *&v0[v20];
  if (v25 >> 62)
  {
    v69 = v16;
    v64 = v17;
    v65 = v19;
    v66 = sub_76A860();
    v19 = v65;
    v17 = v64;
    v67 = v66;
    v16 = v69;
    v26 = v6;
    if (!v67)
    {
      return 1;
    }
  }

  else
  {
    v26 = v6;
    if (!*(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)))
    {
      return 1;
    }
  }

  v69 = v16;
  v70 = v0;
  if ((v25 & 0xC000000000000001) != 0)
  {
    v27 = v19;
    v28 = v17;

    sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
LABEL_34:
      swift_once();
      goto LABEL_17;
    }

    v27 = v19;
    v28 = v17;
  }

  v29 = sub_75AA10();
  if (v29 >> 62)
  {
    v30 = sub_76A860();
  }

  else
  {
    v30 = *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8));
  }

  v31 = v70;

  if (v30)
  {

    return 1;
  }

  v33 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_linkAction;
  swift_beginAccess();
  if (!(*(v28 + 48))(&v31[v33], 1, v69))
  {
    v49 = &v31[v33];
    v50 = v69;
    (*(v28 + 16))(v27, v49, v69);
    sub_75B470();
    (*(v28 + 8))(v27, v50);
    sub_764C60();
    v31 = v70;
    v52 = v51;

    if (v52)
    {

      return 1;
    }
  }

  v34 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_titleLabel];
  sub_75D650();
  [v34 sizeThatFits:{v35, v36}];
  v1 = v37;
  v2 = v38;
  if (qword_93C960 != -1)
  {
    goto LABEL_34;
  }

LABEL_17:
  v39 = sub_BD88(&unk_94EC48);
  sub_BE38(v39, qword_99C890);
  v77[0] = v70;
  v40 = v70;
  sub_7592B0();

  if (sub_7605D0())
  {
    sub_75D650();
    Width = CGRectGetWidth(v80);
    sub_75D650();
    Height = CGRectGetHeight(v81) - v2;
  }

  else
  {
    sub_760610();
    sub_B170(v77, v78);
    v43 = v71;
    sub_33964();
    sub_766700();
    v45 = v44;
    (*(v72 + 8))(v43, v7);
    sub_BEB8(v77);
    sub_75D650();
    Width = CGRectGetWidth(v82) - (v1 + v45);
    sub_75D650();
    Height = CGRectGetHeight(v83);
  }

  v46 = *&v40[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_summaryLabel];
  v47 = [v46 text];
  if (v47)
  {
    v48 = v47;
    ObjectType = sub_769240();
  }

  else
  {
    ObjectType = 0;
  }

  if (qword_93C958 != -1)
  {
    swift_once();
  }

  v53 = sub_BD88(&qword_94E610);
  sub_BE38(v53, qword_94EB30);
  v77[0] = v40;
  v54 = v40;
  sub_7592B0();

  [v46 numberOfLines];
  v55 = sub_7653B0();
  v78 = v55;
  v79 = sub_2F2A50(&qword_93F9B0, &type metadata accessor for Feature);
  v56 = sub_B1B4(v77);
  (*(*(v55 - 8) + 104))(v56, enum case for Feature.measurement_with_labelplaceholder(_:), v55);
  sub_765C30();
  sub_BEB8(v77);
  sub_762CB0();
  v58 = v57;

  (*(v74 + 8))(v26, v23);
  [v46 sizeThatFits:{Width, Height}];
  v60 = v59;

  (*(v73 + 8))(v75, v24);
  return floor(v60 - v58) > 0.0;
}

void sub_2F0ABC()
{
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_isExpanded] != 1)
  {
    [*&v0[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_disclosureView] setHidden:0];
LABEL_15:
    [v0 setNeedsLayout];
    return;
  }

  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_detailItems];
  if (!(v1 >> 62))
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_14:
    [*&v0[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_disclosureView] setHidden:1];
    goto LABEL_15;
  }

  v2 = sub_76A860();
  if (!v2)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (v2 >= 1)
  {
    v3 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_detailViews;

    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = sub_76A770();
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      swift_beginAccess();
      sub_BD88(&unk_94EC30);
      sub_767450();
      swift_endAccess();
      sub_5203C4(v5);
      v6 = [v0 contentView];
      [v6 addSubview:v8];

      swift_beginAccess();
      v7 = v8;
      sub_769440();
      if (*(&dword_10 + (*&v0[v3] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v0[v3] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      ++v4;
      sub_769500();
      swift_endAccess();
    }

    while (v2 != v4);

    goto LABEL_14;
  }

  __break(1u);
}

id sub_2F0D1C@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(_s8ItemViewCMa()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *a1 = result;
  return result;
}

id sub_2F0D68()
{
  if (!*&v0[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_explicitSummary + 8])
  {
    v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_summaryLabel];
    v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_detailItems];
    if (v4 >> 62)
    {
      result = sub_76A860();
      if (result)
      {
        goto LABEL_5;
      }
    }

    else
    {
      result = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
LABEL_5:
        if ((v4 & 0xC000000000000001) != 0)
        {
          v6 = v0;

          sub_76A770();
        }

        else
        {
          if (!*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return result;
          }

          v6 = v0;
        }

        sub_75A9B0();
        v8 = v7;

        if (v8)
        {
          v2 = sub_769210();
        }

        else
        {
          v2 = 0;
        }

        v0 = v6;
        goto LABEL_14;
      }
    }

    v2 = 0;
LABEL_14:
    [v3 setText:v2];
    goto LABEL_15;
  }

  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_summaryLabel];

  v2 = sub_769210();

  [v1 setText:v2];
LABEL_15:

  return [v0 setNeedsLayout];
}

void sub_2F0EF0()
{
  v1 = sub_BD88(&unk_950960);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - v3;
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_isExpanded] == 1 && (v5 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_linkAction, swift_beginAccess(), !(*(v2 + 48))(&v0[v5], 1, v1)) && ((*(v2 + 16))(v4, &v0[v5], v1), v9 = v0, sub_75B470(), (*(v2 + 8))(v4, v1), sub_764C60(), v11 = v10, , v11))
  {
    sub_75BB20();
    v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    sub_75BA70();

    sub_BE70(0, &qword_93E540);
    v13 = v12;
    v14 = sub_76A0F0();
    [v13 setTextColor:v14];

    v15 = v13;
    v16 = sub_76A000();
    [v15 setBackgroundColor:v16];

    [v15 setUserInteractionEnabled:1];
    v17 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v9 action:"linkLabelTapped:"];
    [v15 addGestureRecognizer:v17];

    v18 = [v9 contentView];
    [v18 addSubview:v15];

    v19 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_linkLabel];
    *&v9[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_linkLabel] = v15;
    v8 = v15;

    [v9 setNeedsLayout];
  }

  else
  {
    v6 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_linkLabel;
    v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_linkLabel];
    if (v7)
    {
      [v7 removeFromSuperview];
      v8 = *&v0[v6];
    }

    else
    {
      v8 = 0;
    }

    *&v0[v6] = 0;
  }
}

void sub_2F1260(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = sub_7699F0();

  if (!a1 || (sub_7699F0() & 1) != (v4 & 1))
  {
    sub_2EF4C8();
  }
}

char *sub_2F13CC()
{
  isUniquelyReferenced_nonNull_native = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_detailItems);
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_44;
  }

  for (i = *(&dword_10 + (isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8)); i; isUniquelyReferenced_nonNull_native = v44)
  {
    v48 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v46 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;

    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    v47 = i;
    while (v48)
    {
      isUniquelyReferenced_nonNull_native = sub_76A770();
      v5 = __OFADD__(v3, 1);
      v6 = v3 + 1;
      if (v5)
      {
        goto LABEL_41;
      }

LABEL_10:
      sub_BD88(&unk_94EC60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_77DC20;
      *(inited + 32) = sub_75A9C0();
      *(inited + 40) = v8;
      *(inited + 48) = sub_75A9B0();
      *(inited + 56) = v9;
      *(inited + 64) = sub_75AA00();
      *(inited + 72) = v10;
      isUniquelyReferenced_nonNull_native = sub_75AA10();
      v11 = isUniquelyReferenced_nonNull_native;
      if (isUniquelyReferenced_nonNull_native >> 62)
      {
        isUniquelyReferenced_nonNull_native = sub_76A860();
        v12 = isUniquelyReferenced_nonNull_native;
      }

      else
      {
        v12 = *(&dword_10 + (isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8));
      }

      v49 = v6;
      v50 = v4;
      if (v12)
      {
        if (v12 < 1)
        {
          goto LABEL_42;
        }

        v13 = 0;
        do
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            sub_76A770();
          }

          else
          {
          }

          v14 = sub_75A9D0();
          v17 = *(inited + 16);
          v16 = *(inited + 24);
          if (v17 >= v16 >> 1)
          {
            v25 = v14;
            v26 = v15;
            v27 = sub_7C180((v16 > 1), v17 + 1, 1, inited);
            v15 = v26;
            inited = v27;
            v14 = v25;
          }

          *(inited + 16) = v17 + 1;
          v18 = inited + 16 * v17;
          *(v18 + 32) = v14;
          *(v18 + 40) = v15;
          v19 = sub_75A9E0();
          v21 = v20;
          v23 = *(inited + 16);
          v22 = *(inited + 24);
          if (v23 >= v22 >> 1)
          {
            inited = sub_7C180((v22 > 1), v23 + 1, 1, inited);
          }

          ++v13;

          *(inited + 16) = v23 + 1;
          v24 = inited + 16 * v23;
          *(v24 + 32) = v19;
          *(v24 + 40) = v21;
        }

        while (v12 != v13);
      }

      v28 = 0;
      v29 = *(inited + 16);
      v30 = _swiftEmptyArrayStorage;
LABEL_24:
      v31 = 16 * v28 + 40;
      while (v29 != v28)
      {
        if (v28 >= *(inited + 16))
        {
          __break(1u);
          goto LABEL_41;
        }

        ++v28;
        v32 = v31 + 16;
        v33 = *(inited + v31);
        v31 += 16;
        if (v33)
        {
          v34 = *(inited + v32 - 24);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_7B5CC(0, *(v30 + 2) + 1, 1, v30);
            v30 = isUniquelyReferenced_nonNull_native;
          }

          v36 = *(v30 + 2);
          v35 = *(v30 + 3);
          if (v36 >= v35 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_7B5CC((v35 > 1), v36 + 1, 1, v30);
            v30 = isUniquelyReferenced_nonNull_native;
          }

          *(v30 + 2) = v36 + 1;
          v37 = &v30[16 * v36];
          *(v37 + 4) = v34;
          *(v37 + 5) = v33;
          goto LABEL_24;
        }
      }

      sub_BD88(&unk_947FF0);
      sub_16194(&qword_94EC70, &unk_947FF0);
      v38 = sub_7691A0();
      v40 = v39;

      v4 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_7B5CC(0, *(v50 + 2) + 1, 1, v50);
      }

      v3 = v49;
      v42 = *(v4 + 2);
      v41 = *(v4 + 3);
      if (v42 >= v41 >> 1)
      {
        v4 = sub_7B5CC((v41 > 1), v42 + 1, 1, v4);
      }

      *(v4 + 2) = v42 + 1;
      v43 = &v4[16 * v42];
      *(v43 + 4) = v38;
      *(v43 + 5) = v40;
      if (v49 == v47)
      {

        return v4;
      }
    }

    if (v3 >= *(v46 + 16))
    {
      goto LABEL_43;
    }

    v5 = __OFADD__(v3, 1);
    v6 = v3 + 1;
    if (!v5)
    {
      goto LABEL_10;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v44 = isUniquelyReferenced_nonNull_native;
    i = sub_76A860();
  }

  return _swiftEmptyArrayStorage;
}

uint64_t type metadata accessor for AnnotationCollectionViewCell()
{
  result = qword_94EBF0;
  if (!qword_94EBF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2F1AB4()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    sub_2F1BFC();
    if (v1 <= 0x3F)
    {
      sub_2F1CA0();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2F1BFC()
{
  if (!qword_94EC08)
  {
    sub_133D8(&qword_94EC10);
    sub_16194(&qword_94EC18, &qword_94EC10);
    v0 = sub_767490();
    if (!v1)
    {
      atomic_store(v0, &qword_94EC08);
    }
  }
}

void sub_2F1CA0()
{
  if (!qword_94EC20)
  {
    sub_133D8(&unk_950960);
    v0 = sub_76A480();
    if (!v1)
    {
      atomic_store(v0, &qword_94EC20);
    }
  }
}

void *sub_2F1D04(char *a1, int a2, void *a3)
{
  v76 = a2;
  v5 = sub_760640();
  v80 = *(v5 - 8);
  v81 = v5;
  __chkstk_darwin(v5);
  v77 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_760620();
  v86 = *(v78 - 8);
  __chkstk_darwin(v78);
  v84 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v85 = &v68 - v9;
  v83 = sub_762D10();
  v87 = *(v83 - 8);
  __chkstk_darwin(v83);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_7666D0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BE70(0, &qword_93F900);
  if (qword_93C958 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v16 = sub_BD88(&qword_94E610);
    sub_BE38(v16, qword_94EB30);
    v106[0] = a3;
    sub_7592B0();
    v79 = a3;
    v17 = [a3 traitCollection];
    v18 = sub_769E10();

    (*(v13 + 8))(v15, v12);
    sub_7589E0();
    v19 = sub_7653B0();
    v106[3] = v19;
    v82 = sub_2F2A50(&qword_93F9B0, &type metadata accessor for Feature);
    v106[4] = v82;
    v20 = sub_B1B4(v106);
    v88 = a1;
    v21 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v22 = *(v19 - 8);
    v23 = *(v22 + 104);
    v24 = v22 + 104;
    v23(v20, enum case for Feature.measurement_with_labelplaceholder(_:), v19);
    v91 = v18;
    sub_765C30();
    sub_BEB8(v106);
    sub_762D00();
    sub_762CE0();
    v25 = v87 + 8;
    v26 = *(v87 + 8);
    v27 = v83;
    v26(v11, v83);
    sub_7589F0();
    v90 = v28;
    v105[3] = v19;
    v105[4] = v82;
    v29 = sub_B1B4(v105);
    v73 = v21;
    v30 = v21;
    v31 = v19;
    v71 = v24;
    v72 = v23;
    v23(v29, v30, v19);
    v32 = v91;
    v15 = sub_765C30();
    sub_BEB8(v105);
    sub_762D00();
    sub_762CE0();
    v70 = v26;
    v26(v11, v27);
    v33 = sub_7589D0();
    v34 = v33;
    v13 = v33 >> 62;
    v35 = v33 >> 62 ? sub_76A860() : *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8));
    v87 = v25;
    v74 = v31;
    v75 = v11;
    if (!v35)
    {
      break;
    }

    *&v99 = _swiftEmptyArrayStorage;
    result = sub_1439B8(0, v35 & ~(v35 >> 63), 0);
    if (v35 < 0)
    {
      __break(1u);
      return result;
    }

    a3 = v99;
    v69 = v32;
    v90 = v35;
    v89 = v34 & 0xFFFFFFFFFFFFFF8;
    if (v13)
    {
      v37 = sub_76A860();
    }

    else
    {
      v37 = *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8));
    }

    v12 = v34;
    v91 = (v34 & 0xC000000000000001);
    v41 = _s8ItemViewCMa();
    a1 = 0;
    v11 = (v37 & ~(v37 >> 63));
    while (v11 != a1)
    {
      if (v91)
      {
        v42 = sub_76A770();
      }

      else
      {
        if (a1 >= *(v89 + 16))
        {
          goto LABEL_30;
        }

        v42 = *(v12 + 8 * a1 + 32);
      }

      v43 = swift_allocObject();
      *(v43 + 16) = v41;
      *(v43 + 24) = v42;
      v44 = sub_7670D0();
      swift_allocObject();

      v45 = sub_767090();
      *(&v103 + 1) = v44;
      v104 = &protocol witness table for LayoutViewPlaceholder;

      *&v102 = v45;
      *&v99 = a3;
      v47 = a3[2];
      v46 = a3[3];
      if (v47 >= v46 >> 1)
      {
        sub_1439B8((v46 > 1), v47 + 1, 1);
      }

      ++a1;
      v48 = *(&v103 + 1);
      v13 = v104;
      v49 = sub_10974(&v102, *(&v103 + 1));
      v50 = __chkstk_darwin(v49);
      v15 = &v68 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v52 + 16))(v15, v50);
      sub_146570(v47, v15, &v99, v48, v13);
      sub_BEB8(&v102);
      a3 = v99;
      if (v90 == a1)
      {

        v39 = v80;
        v38 = v81;
        v40 = v79;
        v32 = v69;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }

  v39 = v80;
  v38 = v81;
  v40 = v79;
LABEL_20:
  v104 = 0;
  v102 = 0u;
  v103 = 0u;
  if (sub_7589B0())
  {
    sub_764C60();
    v54 = v53;

    if (v54)
    {
      v55 = v74;
      *(&v100 + 1) = v74;
      v101 = v82;
      v56 = sub_B1B4(&v99);
      v72(v56, v73, v55);
      v57 = v32;
      sub_765C30();
      sub_BEB8(&v99);
      v58 = v75;
      sub_762D00();
      sub_762CE0();
      v70(v58, v83);
      sub_10A2C(&v102, &qword_9417D0);
      v102 = v99;
      v103 = v100;
      v104 = v101;
    }
  }

  if (qword_93C960 != -1)
  {
    swift_once();
  }

  v59 = sub_BD88(&unk_94EC48);
  sub_BE38(v59, qword_99C890);
  *&v99 = v40;
  v60 = v85;
  sub_7592B0();
  sub_7605F0();
  v61 = [v40 traitCollection];
  _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

  sub_769D60();
  sub_760600();
  v62 = v78;
  (*(v86 + 16))(v84, v60, v78);
  sub_134D8(v106, &v99);
  sub_134D8(v105, &v98);
  sub_1ED18(&v102, &v92, &qword_9417D0);
  v63 = *(&v93 + 1);
  if (*(&v93 + 1))
  {
    v64 = v94;
    v65 = sub_B170(&v92, *(&v93 + 1));
    *(&v96 + 1) = v63;
    v97 = *(v64 + 8);
    v66 = sub_B1B4(&v95);
    (*(*(v63 - 8) + 16))(v66, v65, v63);
    sub_BEB8(&v92);
  }

  else
  {
    sub_10A2C(&v92, &qword_9417D0);
    v95 = 0u;
    v96 = 0u;
    v97 = 0;
  }

  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  v67 = v77;
  sub_760630();
  sub_2F2A50(&qword_94EC58, &type metadata accessor for ProductAnnotationLayout);
  sub_7665A0();

  (*(v39 + 8))(v67, v38);
  (*(v86 + 8))(v85, v62);
  sub_10A2C(&v102, &qword_9417D0);
  sub_BEB8(v105);
  return sub_BEB8(v106);
}

uint64_t sub_2F28AC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_detailViews;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  if (!(v4 >> 62))
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    *(v1 + v2) = _swiftEmptyArrayStorage;
  }

  result = sub_76A860();
  v5 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v5 >= 1)
  {

    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_76A770();
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      swift_beginAccess();
      sub_BD88(&unk_94EC30);
      sub_767470();
      swift_endAccess();
    }

    while (v5 != v6);

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_2F2A10()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2F2A50(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2F2A98()
{
  v1 = sub_BD88(&qword_94EC10);
  __chkstk_darwin(v1);
  v2 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_itemLayoutContext;
  v3 = sub_75C840();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_linkLabel) = 0;
  _s8ItemViewCMa();
  sub_7667C0();
  sub_16194(&qword_94EC18, &qword_94EC10);
  sub_767480();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_detailViews) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_separatorLineView) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_isSeparatorDisplayed) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_isExpanded) = 0;
  v4 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_titleText);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_explicitSummary);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_detailItems) = _swiftEmptyArrayStorage;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_linkAction;
  v7 = sub_BD88(&unk_950960);
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  sub_76A840();
  __break(1u);
}

uint64_t sub_2F2CC4()
{
  v1 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_BD88(&qword_94EC40);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_BD88(&unk_950960);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_linkAction;
  swift_beginAccess();
  sub_1ED18(v0 + v11, v6, &qword_94EC40);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v12 = &qword_94EC40;
    v13 = v6;
    return sub_10A2C(v13, v12);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_75B460();
  v14 = sub_BD88(&unk_93F630);
  sub_768860();

  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v3, 1, v14) == 1)
  {
    (*(v8 + 8))(v10, v7);
    v12 = &unk_93F980;
    v13 = v3;
    return sub_10A2C(v13, v12);
  }

  sub_75B470();
  v17 = sub_75B460();
  sub_32A6C0(v18, 1, v17, v3);

  (*(v8 + 8))(v10, v7);

  return (*(v15 + 8))(v3, v14);
}

uint64_t sub_2F2FF8@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MixedMediaLockupLayout.LockupPosition.top(_:);
  v3 = sub_75FDA0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t type metadata accessor for ScreenshotsLockupCollectionViewCell()
{
  result = qword_94ECA0;
  if (!qword_94ECA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2F318C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v30 = a3;
  v6 = sub_75DAB0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_94F1F0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v28 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  v16 = a1;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v17 = *(v11 + 8);
  v17(v15, v10);
  swift_beginAccess();
  v18 = *(v4 + 16);
  if (!*(v18 + 16))
  {
    goto LABEL_5;
  }

  v19 = sub_663E34(v32);
  if ((v20 & 1) == 0)
  {

LABEL_5:
    sub_1EB60(v32);
    (*(v7 + 16))(v9, v16, v6);
    type metadata accessor for InteractiveSectionBackgroundScrollObserver(0);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = v17;
    v22 = OBJC_IVAR____TtC18ASMessagesProvider42InteractiveSectionBackgroundScrollObserver_currentState;
    v23 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
    (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
    (*(v7 + 32))(v21 + OBJC_IVAR____TtC18ASMessagesProvider42InteractiveSectionBackgroundScrollObserver_shelfLayoutContext, v9, v6);
    swift_unknownObjectWeakAssign();
    *(v21 + OBJC_IVAR____TtC18ASMessagesProvider42InteractiveSectionBackgroundScrollObserver_objectGraph) = v30;

    v24 = v28;
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    v27(v24, v10);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v4 + 16);
    *(v4 + 16) = 0x8000000000000000;
    sub_459CD8(v21, v32, isUniquelyReferenced_nonNull_native);
    *(v4 + 16) = v31;
    swift_endAccess();
    sub_1EB60(v32);
    return v21;
  }

  v21 = *(*(v18 + 56) + 8 * v19);

  sub_1EB60(v32);

  return v21;
}

uint64_t sub_2F354C()
{

  return swift_deallocClassInstance();
}

double sub_2F35F8()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75B610();
  sub_2F37F4(&qword_949660, &type metadata accessor for PrivacyCategory);
  sub_75C750();
  v4 = v10;
  if (!v10)
  {
    return 0.0;
  }

  swift_getKeyPath();
  sub_75C7B0();

  sub_765630();
  (*(v1 + 8))(v3, v0);
  v5 = sub_527DE4();
  type metadata accessor for PrivacyCategoryView();
  swift_getObjectType();
  v10 = sub_4DBE18(v4, v5);
  sub_7670D0();
  sub_7665A0();
  v7 = v6;

  swift_unknownObjectRelease();

  return v7;
}

uint64_t sub_2F37F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2F3840()
{
  v1 = ASKDeviceTypeGetCurrent();
  v2 = sub_769240();
  v4 = v3;
  if (v2 == sub_769240() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_76A950();

    if ((v7 & 1) == 0)
    {
      result = sub_769A00();
      if ((result & 1) == 0)
      {
        if (*(*(v0 + 88) + 16))
        {
          return sub_663D5C(*(*(v0 + 96) + 16));
        }
      }
    }
  }

  return result;
}

uint64_t sub_2F399C@<X0>(char a1@<W0>, double *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v103 = sub_76A920();
  v13 = *(v103 - 8);
  __chkstk_darwin(v103);
  v102 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10CF28(_swiftEmptyArrayStorage);
  v109.origin.x = a3;
  v109.origin.y = a4;
  v109.size.width = a5;
  v109.size.height = a6;
  Width = CGRectGetWidth(v109);
  v17 = 0;
  v18 = *v6;
  v19 = *(v6 + 8);
  v106 = *(v6 + 16);
  v104 = *(v6 + 40);
  v20 = *(v6 + 48);
  if (Width <= 0.0)
  {
    goto LABEL_12;
  }

  v17 = 0;
  v21 = 0.0;
  while (1)
  {
    if (v18 + v21 <= Width)
    {
      v22 = __OFADD__(v17++, 1);
      if (v22)
      {
        break;
      }
    }

    v21 = v18 + *(v6 + 24) + v21;
    if (v21 >= Width)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_8:
  if (v104 < 2 || v17 <= 0)
  {
LABEL_12:
    sub_BD88(&qword_94ED88);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_77B6D0;
    *(v23 + 32) = *(v6 + 96);

    v24 = 1;
  }

  else
  {
    sub_BD88(&unk_9418A0);
    v23 = sub_7694A0();
    v24 = *(v23 + 16);
    if (!v24)
    {

      v26 = 0.0;
      v27 = 0.0;
      v28 = 0.0;
      v29 = 0.0;
LABEL_65:
      *a2 = v15;
      a2[1] = v26;
      a2[2] = v27;
      a2[3] = v28;
      a2[4] = v29;
      return result;
    }
  }

  v30 = *(v23 + 32);
  v90 = v23 + 32;
  v31 = *(v30 + 16);
  if (v17 < v31)
  {
    v31 = v17;
  }

  v32 = v18 * v31;
  v96 = v31;
  v33 = v31 + -1.0;
  v105 = a6;
  v100 = a3;
  if (v33 >= 0.0)
  {
    v34 = v32 + v106 * v33;
    if ((v20 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_19:
    v111.origin.x = a3;
    v111.origin.y = a4;
    v111.size.width = a5;
    v111.size.height = a6;
    v38 = CGRectGetWidth(v111);
    v101 = v34;
    v39 = (v38 - v34) * 0.5;
    v112.origin.x = a3;
    v35 = a4;
    v112.origin.y = a4;
    v36 = a5;
    v112.size.width = a5;
    v112.size.height = a6;
    MinX = CGRectGetMinX(v112) + v39;
    goto LABEL_20;
  }

  v34 = v106 * 0.0 + v32;
  if (v20)
  {
    goto LABEL_19;
  }

LABEL_17:
  v101 = v34;
  v110.origin.x = a3;
  v35 = a4;
  v110.origin.y = a4;
  v36 = a5;
  v110.size.width = a5;
  v110.size.height = a6;
  MinX = CGRectGetMinX(v110);
LABEL_20:
  v97 = 0.0;
  if (a1)
  {
    v40 = MinX;
  }

  else
  {
    v40 = 0.0;
  }

  v41 = v104;
  if (v104 >= v24)
  {
    v41 = v24;
  }

  v42 = v19 * v41 + v106 * (v24 - 1);
  v43 = 0.0;
  if (a1)
  {
    v44 = v100;
    v113.origin.x = v100;
    v113.origin.y = v35;
    v113.size.width = v36;
    v45 = v105;
    v113.size.height = v105;
    v99 = (CGRectGetHeight(v113) - v42) * 0.5;
    v114.origin.x = v44;
    v114.origin.y = v35;
    v114.size.width = v36;
    v114.size.height = v45;
    v43 = CGRectGetMinY(v114) + v99;
  }

  v87 = a2;
  v89 = *(v23 + 16);
  if (!v89)
  {
    v94 = 0.0;
    v93 = 0.0;
    v95 = 0.0;
LABEL_64:

    a2 = v87;
    v29 = v97;
    v26 = v95;
    v28 = v94;
    v27 = v93;
    goto LABEL_65;
  }

  v46 = 0;
  LODWORD(v100) = enum case for FloatingPointRoundingRule.down(_:);
  v47 = (v13 + 104);
  v48 = (v13 + 8);
  v49 = 0.0;
  v92 = v96;
  v95 = 0.0;
  v93 = 0.0;
  v94 = 0.0;
  v97 = 0.0;
  v88 = v23;
LABEL_30:
  if (*&v49 < *(v23 + 16))
  {
    v50 = *(v90 + 8 * *&v49);
    *&v91 = *&v49 + 1;
    v51 = *(*&v50 + 16);
    v98 = *&v50 + 32;
    v99 = v50;

    v52 = 0;
    v105 = v49;
    while (1)
    {
      v53 = 0uLL;
      v54 = v51;
      v55 = 0uLL;
      v56 = 0uLL;
      if (v52 != v51)
      {
        if (v52 >= *(*&v99 + 16))
        {
          goto LABEL_68;
        }

        v54 = v52 + 1;
        *&v107[0] = v52;
        sub_134D8(v98 + 40 * v52, v107 + 8);
        v53 = v107[0];
        v55 = v107[1];
        v56 = v107[2];
      }

      v108[0] = v53;
      v108[1] = v55;
      v108[2] = v56;
      if (!v56)
      {

        v49 = v91;
        v23 = v88;
        if (*&v91 == v89)
        {
          goto LABEL_64;
        }

        goto LABEL_30;
      }

      v57 = v53;
      v58 = v102;
      v59 = v103;
      (*v47)(v102, LODWORD(v100), v103);
      sub_769F80();
      v61 = v60;
      v63 = v62;
      (*v48)(v58, v59);
      v115.origin.x = v61;
      v115.origin.y = v63;
      v115.size.width = v18;
      v115.size.height = v19;
      v120.origin.x = v40;
      v120.origin.y = v43;
      v120.size.width = v101;
      v120.size.height = v42;
      v64 = CGRectIntersectsRect(v115, v120);
      v65 = 0;
      if (*&v49 < v104 && v64)
      {
        if (v96 <= -9.22337204e18)
        {
          goto LABEL_69;
        }

        if (v96 >= 9.22337204e18)
        {
          goto LABEL_70;
        }

        if (v57 >= v92)
        {
          v65 = 0;
        }

        else
        {
          v116.origin.x = v61;
          v116.origin.y = v63;
          v116.size.width = v18;
          v116.size.height = v19;
          v66 = CGRectGetMinX(v116);
          v67 = v95;
          if (v66 < v95)
          {
            v67 = v66;
          }

          v95 = v67;
          v117.origin.x = v61;
          v117.origin.y = v63;
          v117.size.width = v18;
          v117.size.height = v19;
          MinY = CGRectGetMinY(v117);
          v69 = v93;
          if (MinY < v93)
          {
            v69 = MinY;
          }

          v93 = v69;
          v118.origin.x = v61;
          v118.origin.y = v63;
          v118.size.width = v18;
          v118.size.height = v19;
          MaxX = CGRectGetMaxX(v118);
          v71 = v94;
          if (v94 <= MaxX)
          {
            v71 = MaxX;
          }

          v94 = v71;
          v119.origin.x = v61;
          v119.origin.y = v63;
          v119.size.width = v18;
          v119.size.height = v19;
          MaxY = CGRectGetMaxY(v119);
          v73 = v97;
          if (v97 <= MaxY)
          {
            v73 = MaxY;
          }

          v97 = v73;
          v65 = 1;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v107[0] = v15;
      v75 = sub_663D5C(v46);
      v77 = v15[2];
      v78 = (v76 & 1) == 0;
      v22 = __OFADD__(v77, v78);
      v79 = v77 + v78;
      if (v22)
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v80 = v76;
      if (v15[3] < v79)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_56;
      }

      v83 = v75;
      sub_45AEA8();
      v75 = v83;
      v15 = *&v107[0];
      if (v80)
      {
LABEL_57:
        v82 = v15[7] + 40 * v75;
        *v82 = v61;
        *(v82 + 8) = v63;
        *(v82 + 16) = v18;
        *(v82 + 24) = v19;
        *(v82 + 32) = v65;
        goto LABEL_61;
      }

LABEL_59:
      v15[(v75 >> 6) + 8] |= 1 << v75;
      *(v15[6] + 8 * v75) = v46;
      v84 = v15[7] + 40 * v75;
      *v84 = v61;
      *(v84 + 8) = v63;
      *(v84 + 16) = v18;
      *(v84 + 24) = v19;
      *(v84 + 32) = v65;
      v85 = v15[2];
      v22 = __OFADD__(v85, 1);
      v86 = v85 + 1;
      if (v22)
      {
        goto LABEL_71;
      }

      v15[2] = v86;
LABEL_61:
      v49 = v105;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_67;
      }

      sub_BEB8(v108 + 8);
      ++v46;
      v52 = v54;
    }

    sub_45447C(v79, isUniquelyReferenced_nonNull_native);
    v75 = sub_663D5C(v46);
    if ((v80 & 1) != (v81 & 1))
    {
      goto LABEL_73;
    }

LABEL_56:
    v15 = *&v107[0];
    if (v80)
    {
      goto LABEL_57;
    }

    goto LABEL_59;
  }

LABEL_72:
  __break(1u);
LABEL_73:
  result = sub_76A9B0();
  __break(1u);
  return result;
}

void sub_2F422C(char a1@<W0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v13 = sub_10CF28(_swiftEmptyArrayStorage);
  v14 = ASKDeviceTypeGetCurrent();
  v15 = sub_769240();
  v17 = v16;
  if (v15 == sub_769240() && v17 == v18)
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_76A950();
  }

  v71.origin.x = a3;
  v71.origin.y = a4;
  v71.size.width = a5;
  v71.size.height = a6;
  Width = CGRectGetWidth(v71);
  v22 = *(v6 + 16);
  v23 = v22;
  if ((v20 & 1) == 0)
  {
    v23 = *(v6 + 24);
  }

  v24 = *v6;
  v25 = *(v6 + 8);
  v26 = 0;
  if (Width > 0.0)
  {
    v27 = v24 + v23;
    v28 = 0.0;
    while (1)
    {
      if (v24 + v28 <= Width)
      {
        v29 = __OFADD__(v26++, 1);
        if (v29)
        {
          break;
        }
      }

      v28 = v27 + v28;
      if (v28 >= Width)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

LABEL_16:
  v30 = *(v6 + 96);
  v31 = *(v30 + 16);
  if (v31 >= v26)
  {
    v32 = v26;
  }

  else
  {
    v32 = *(v30 + 16);
  }

  v33 = v32 - 1;
  if (__OFSUB__(v32, 1))
  {
    goto LABEL_59;
  }

  if (v33 <= 0)
  {
    v68 = 0.0;
    if ((v20 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_24:
    v68 = v22;
    goto LABEL_25;
  }

  v72.origin.x = a3;
  v72.origin.y = a4;
  v72.size.width = a5;
  v72.size.height = a6;
  v34 = CGRectGetWidth(v72);
  if (v20)
  {
    goto LABEL_24;
  }

  v68 = (v34 - v24 * v32) / v33;
LABEL_25:
  v73.origin.x = a3;
  v73.origin.y = a4;
  v73.size.width = a5;
  v73.size.height = a6;
  MinX = CGRectGetMinX(v73);
  v36 = 0.0;
  v37 = a5;
  v38 = 0.0;
  if (a1)
  {
    v39 = a3;
    v40 = a4;
    v41 = a6;
    v38 = floor(CGRectGetMidY(*(&v37 - 2)) + v25 * -0.5);
  }

  v42 = 0;
  v43 = 0.0;
  v44 = 0.0;
  v45 = 0.0;
  while (1)
  {
    v47 = 0uLL;
    v48 = v31;
    v49 = 0uLL;
    v50 = 0uLL;
    if (v42 != v31)
    {
      if (v42 >= v31)
      {
        goto LABEL_56;
      }

      v48 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        goto LABEL_57;
      }

      *&v69[0] = v42;
      sub_134D8(v30 + 32 + 40 * v42, v69 + 8);
      v47 = v69[0];
      v49 = v69[1];
      v50 = v69[2];
    }

    v70[0] = v47;
    v70[1] = v49;
    v70[2] = v50;
    if (!v50)
    {
      *a2 = v13;
      *(a2 + 8) = v45;
      *(a2 + 16) = v44;
      *(a2 + 24) = v43;
      *(a2 + 32) = v36;
      return;
    }

    v51 = v47;
    if (v47 < v26)
    {
      v75.origin.x = MinX;
      v75.origin.y = v38;
      v75.size.width = v24;
      v75.size.height = v25;
      v52 = CGRectGetMinX(v75);
      if (v52 < v45)
      {
        v45 = v52;
      }

      v76.origin.x = MinX;
      v76.origin.y = v38;
      v76.size.width = v24;
      v76.size.height = v25;
      MinY = CGRectGetMinY(v76);
      if (MinY < v44)
      {
        v44 = MinY;
      }

      v77.origin.x = MinX;
      v77.origin.y = v38;
      v77.size.width = v24;
      v77.size.height = v25;
      MaxX = CGRectGetMaxX(v77);
      if (v43 <= MaxX)
      {
        v43 = MaxX;
      }

      v78.origin.x = MinX;
      v78.origin.y = v38;
      v78.size.width = v24;
      v78.size.height = v25;
      MaxY = CGRectGetMaxY(v78);
      if (v36 <= MaxY)
      {
        v36 = MaxY;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v69[0] = v13;
    v57 = sub_663D5C(v51);
    v59 = v13[2];
    v60 = (v58 & 1) == 0;
    v29 = __OFADD__(v59, v60);
    v61 = v59 + v60;
    if (v29)
    {
      break;
    }

    v62 = v58;
    if (v13[3] < v61)
    {
      sub_45447C(v61, isUniquelyReferenced_nonNull_native);
      v57 = sub_663D5C(v51);
      if ((v62 & 1) != (v63 & 1))
      {
        goto LABEL_60;
      }

LABEL_49:
      if (v62)
      {
        goto LABEL_28;
      }

      goto LABEL_50;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_49;
    }

    v67 = v57;
    sub_45AEA8();
    v57 = v67;
    v13 = *&v69[0];
    if (v62)
    {
LABEL_28:
      v46 = v13[7] + 40 * v57;
      *v46 = MinX;
      *(v46 + 8) = v38;
      *(v46 + 16) = v24;
      *(v46 + 24) = v25;
      *(v46 + 32) = v51 < v26;
      goto LABEL_29;
    }

LABEL_50:
    v13[(v57 >> 6) + 8] |= 1 << v57;
    *(v13[6] + 8 * v57) = v51;
    v64 = v13[7] + 40 * v57;
    *v64 = MinX;
    *(v64 + 8) = v38;
    *(v64 + 16) = v24;
    *(v64 + 24) = v25;
    *(v64 + 32) = v51 < v26;
    v65 = v13[2];
    v29 = __OFADD__(v65, 1);
    v66 = v65 + 1;
    if (v29)
    {
      goto LABEL_58;
    }

    v13[2] = v66;
LABEL_29:
    v74.origin.x = MinX;
    v74.origin.y = v38;
    v74.size.width = v24;
    v74.size.height = v25;
    MinX = v68 + CGRectGetMaxX(v74);
    sub_BEB8(v70 + 8);
    v42 = v48;
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  sub_76A9B0();
  __break(1u);
}

void sub_2F4694(void *a1)
{
  v2 = v1;
  v4 = [a1 traitCollection];
  sub_2F3840();

  sub_769D10();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [a1 traitCollection];
  LOBYTE(v4) = sub_769A00();

  if (v4)
  {
    sub_2F399C(1, v31, v6, v8, v10, v12);
  }

  else
  {
    sub_2F422C(1, v31, v6, v8, v10, v12);
  }

  v14 = 0;
  v23 = v31[4];
  v24 = v31[3];
  v15 = v31[0];
  v16 = *(v2 + 96);
  v17 = *(v16 + 16);
  v25 = v16 + 32;
  while (1)
  {
    v18 = 0uLL;
    v19 = v17;
    v20 = 0uLL;
    v21 = 0uLL;
    if (v14 == v17)
    {
      goto LABEL_10;
    }

    if (v14 >= v17)
    {
      break;
    }

    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_17;
    }

    *&v27 = v14;
    sub_134D8(v25 + 40 * v14, &v27 + 8);
    v18 = v27;
    v20 = v28;
    v21 = v29;
LABEL_10:
    v30[0] = v18;
    v30[1] = v20;
    v30[2] = v21;
    if (!v21)
    {

      sub_769D50();
      sub_7664B0();
      return;
    }

    v26 = v18;
    sub_10914((v30 + 8), &v27);
    sub_B170(&v27, *(&v28 + 1));
    v22 = [a1 traitCollection];
    if (*(*&v15 + 16))
    {
      sub_663D5C(v26);
    }

    sub_769CA0();

    sub_766530();
    sub_B170(&v27, *(&v28 + 1));
    if (*(*&v15 + 16))
    {
      sub_663D5C(v26);
    }

    sub_766550();
    sub_BEB8(&v27);
    v14 = v19;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_2F4A24(void *a1)
{
  v3 = v1[5];
  v6[4] = v1[4];
  v7[0] = v3;
  *(v7 + 10) = *(v1 + 90);
  v4 = v1[1];
  v6[0] = *v1;
  v6[1] = v4;
  v5 = v1[3];
  v6[2] = v1[2];
  v6[3] = v5;
  swift_getObjectType();
  sub_2F4AE4(a1, v6);
}

uint64_t sub_2F4A98@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v10 = v1[2];
  v11 = v2;
  v4 = v1[5];
  v12 = v1[4];
  v3 = v12;
  v13 = v4;
  v6 = v1[1];
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_2F4E74(v9, &v8);
}

void sub_2F4AE4(void *a1, uint64_t a2)
{
  v4 = [a1 traitCollection];
  sub_2F3840();

  sub_769DA0();
  v6 = v5;
  v8 = v7;
  v9 = [a1 traitCollection];
  LOBYTE(v4) = sub_769A00();

  if (v4)
  {
    sub_2F399C(0, v12, 0.0, 0.0, v6, v8);
  }

  else
  {
    sub_2F422C(0, v12, 0.0, 0.0, v6, v8);
  }

  sub_2F4CC4(v12);
  sub_769DC0();
  v10 = [a1 traitCollection];
  v11 = v10;
  if ((*(a2 + 105) & 1) == 0 && *(a2 + 104) == 6)
  {
    sub_769A00();
  }

  else
  {
  }
}

uint64_t sub_2F4CF4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2F4D3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_2F4D94(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_2F4DC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 106))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2F4E08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 106) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 106) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2F4EAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2F4EF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_2F4F5C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_760370();
  __chkstk_darwin(v9 - 8);
  v10 = sub_7603D0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_7602F0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_headerView;
  type metadata accessor for CarouselItemModuleHeaderView();
  *&v4[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_lockupView;
  type metadata accessor for CarouselItemModuleLockupView();
  *&v4[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_tapGestureRecognizer;
  *&v4[v20] = [objc_allocWithZone(UITapGestureRecognizer) init];
  (*(v15 + 104))(v17, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v14);
  (*(v11 + 104))(v13, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v10);
  sub_760360();
  sub_760300();
  v21 = &v4[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_selectionHandler];
  *v21 = 0;
  *(v21 + 1) = 0;
  v34.receiver = v4;
  v34.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v34, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v26 = v22;
  [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v26 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v27 = [v26 layer];
  [v27 setAllowsGroupOpacity:0];

  v28 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_tapGestureRecognizer;
  [*&v26[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_tapGestureRecognizer] setEnabled:0];
  [*&v26[v28] addTarget:v26 action:"handleSelection:"];
  v29 = *&v26[v28];
  [v29 setDelegate:v26];

  [v26 addGestureRecognizer:*&v26[v28]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_headerView]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_lockupView]];
  sub_BD88(&qword_9477F0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_77B6D0;
  *(v30 + 32) = sub_767B80();
  *(v30 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_769F20();

  swift_unknownObjectRelease();

  return v26;
}

uint64_t sub_2F53FC@<X0>(uint64_t *a1@<X8>)
{
  v22 = a1;
  v2 = sub_766950();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v9 = sub_766880();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_766850();
  *(swift_allocObject() + 16) = v1;
  v13 = v1;
  sub_766930();
  v14 = *&v13[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_headerView];
  v25 = type metadata accessor for CarouselItemModuleHeaderView();
  v26 = sub_2F67DC(&qword_957980, type metadata accessor for CarouselItemModuleHeaderView);
  v24[0] = v14;
  v15 = v14;
  sub_766940();
  v16 = *(v3 + 8);
  v16(v5, v2);
  sub_BEB8(v24);
  v17 = *&v13[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_lockupView];
  v23[3] = type metadata accessor for CarouselItemModuleLockupView();
  v23[4] = sub_2F67DC(&unk_94EDF0, type metadata accessor for CarouselItemModuleLockupView);
  v23[0] = v17;
  v25 = v2;
  v26 = &protocol witness table for VerticalStack;
  sub_B1B4(v24);
  v18 = v17;
  sub_766940();
  v16(v8, v2);
  sub_BEB8(v23);
  v19 = v22;
  v22[3] = v9;
  v19[4] = &protocol witness table for DisjointStack;
  sub_B1B4(v19);
  sub_766870();
  (*(v10 + 8))(v12, v9);
  return sub_BEB8(v24);
}

uint64_t sub_2F5834()
{
  v0 = sub_766840();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3[3] = sub_766970();
  v3[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v3);
  sub_766960();
  (*(v1 + 104))(v3, enum case for DisjointStack.EdgePosition.anchored(_:), v0);
  return sub_7667F0();
}

uint64_t sub_2F5928(uint64_t a1, uint64_t a2)
{
  v3 = sub_7603D0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7603E0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_displayOptions;
  swift_beginAccess();
  (*(v8 + 16))(v10, a2 + v11, v7);
  sub_760390();
  (*(v8 + 8))(v10, v7);
  sub_7603B0();
  (*(v4 + 8))(v6, v3);
  return sub_7668E0();
}

id sub_2F5C60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_7603E0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7603F0();
  v10 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_displayOptions;
  swift_beginAccess();
  (*(v7 + 40))(&v3[v10], v9, v6);
  swift_endAccess();
  sub_285158(a1, a2);
  sub_7603F0();
  v11 = sub_760450();
  v13 = v12;
  v14 = sub_760410();
  sub_703558(v9, v11, v13, v14, v15);

  (*(v7 + 8))(v9, v6);
  return [v3 setNeedsLayout];
}

void sub_2F5E10()
{
  v1 = sub_7652D0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_765240();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_lockupView);
  if (sub_760440())
  {
    v7 = sub_764F20();

    if (v7)
    {
      sub_765250();
      sub_765210();
      (*(v3 + 8))(v5, v2);
      if (qword_93C668 != -1)
      {
        swift_once();
      }

      v8 = sub_75CF00();
      sub_BE38(v8, qword_99B898);
      sub_75CDD0();
      sub_765330();
      v9 = OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleLockupView_smallLockupView;
      v10 = *(*(v6 + OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleLockupView_smallLockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
      sub_7652E0();
      sub_7591B0();
      [v10 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540);
        sub_76A030();
      }

      sub_759070();

      v11 = *(*(v6 + v9) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
      sub_759210();
      sub_2F67DC(&qword_945810, &type metadata accessor for ArtworkView);
      v12 = v11;
      sub_75A050();
    }
  }
}

uint64_t type metadata accessor for CarouselItemSingleModuleOverlay()
{
  result = qword_94EDD8;
  if (!qword_94EDD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2F61FC()
{
  result = sub_7603E0();
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

uint64_t sub_2F62A8(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_selectionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_selectionHandler);
  *v4 = a1;
  v4[1] = a2;
  sub_F714(a1);
  sub_F714(a1);
  sub_F704(v5);
  v6 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_tapGestureRecognizer);
  if (a1)
  {
    sub_F704(a1);
  }

  [v6 setEnabled:a1 != 0];

  return sub_F704(a1);
}

void sub_2F6360()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleLockupView_smallLockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  sub_759210();
  sub_2F67DC(&qword_945810, &type metadata accessor for ArtworkView);
  v2 = v1;
  sub_75A0C0();
}

void sub_2F6430()
{
  v1 = sub_760370();
  __chkstk_darwin(v1 - 8);
  v2 = sub_7603D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7602F0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_headerView;
  type metadata accessor for CarouselItemModuleHeaderView();
  *(v0 + v10) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_lockupView;
  type metadata accessor for CarouselItemModuleLockupView();
  *(v0 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_tapGestureRecognizer;
  *(v0 + v12) = [objc_allocWithZone(UITapGestureRecognizer) init];
  (*(v7 + 104))(v9, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v6);
  (*(v3 + 104))(v5, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v2);
  sub_760360();
  sub_760300();
  v13 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_selectionHandler);
  *v13 = 0;
  v13[1] = 0;
  sub_76A840();
  __break(1u);
}

BOOL sub_2F66C4(void *a1)
{
  v2 = [a1 touchesForView:*(*(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleLockupView_smallLockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton)];
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  sub_BE70(0, &qword_963060);
  sub_5A800();
  v4 = sub_769640();

  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = sub_76A630();
  }

  else
  {
    v5 = *(v4 + 16);
  }

  return v5 == 0;
}

uint64_t sub_2F679C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2F67DC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2F6824(void *a1, uint64_t a2, void *a3)
{
  v7 = sub_BD88(&unk_94EE60);
  __chkstk_darwin(v7 - 8);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v68 - v11;
  v13 = sub_757640();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v68 - v18;
  swift_getObjectType();
  v20 = swift_conformsToProtocol2();
  v21 = 0;
  if (v20 && a1)
  {
    v72 = v14;
    v22 = (v3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
    v23 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
    *v22 = a1;
    v22[1] = v20;
    v71 = a1;

    swift_unknownObjectWeakAssign();
    v24 = sub_32CB94(a3);
    v25 = &unk_99C000;
    if (!v24)
    {
      v32 = 0;
LABEL_29:
      v48 = v71;
      v46 = v72;
      goto LABEL_33;
    }

    v26 = v24;
    v70 = a2;
    v27 = [v24 visibleViewController];
    if (v27)
    {
      v28 = v27;
      type metadata accessor for SearchViewController();
      v29 = swift_dynamicCastClass();
      if (v29)
      {
        v30 = v29;

        v31 = *(v30 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchResultsContainerViewController);
        v32 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_activeSearchSectionViewController];
        v33 = v32;

        if (!v32)
        {
          goto LABEL_32;
        }

        v34 = v33;
LABEL_13:
        v36 = v33;
        swift_unknownObjectWeakAssign();
        v37 = [v34 collectionView];
        v38 = v37;
        if (v37)
        {
          v39 = [v37 indexPathsForSelectedItems];
          if (v39)
          {
            v40 = v39;
            v69 = v38;
            v41 = sub_769460();

            if (*(v41 + 16))
            {
              v42 = v72;
              (*(v72 + 16))(v16, v41 + ((*(v72 + 80) + 32) & ~*(v72 + 80)), v13);

              (*(v42 + 32))(v19, v16, v13);
              v43 = v69;
              isa = sub_757550().super.isa;
              v45 = [v43 cellForItemAtIndexPath:isa];

              v46 = v72;
              (*(v46 + 8))(v19, v13);
              v47 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell);
              *(v3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell) = v45;

              v25 = &unk_99C000;
              a2 = v70;
              v48 = v71;
              goto LABEL_33;
            }

            v38 = v69;
          }
        }

        v49 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_originatingView);
        if (v49)
        {
          v69 = v38;
          v50 = v49;
          objc_opt_self();
          v51 = swift_dynamicCastObjCClass();
          if (v51)
          {
            v52 = v51;
            v53 = v50;
            a2 = v70;
LABEL_28:

            v56 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell);
            *(v3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell) = v52;

            v25 = &unk_99C000;
            goto LABEL_29;
          }

          v53 = v50;
          v68 = v50;
          while (1)
          {

            v54 = [v53 superview];
            if (!v54)
            {
              break;
            }

            v53 = v54;
            objc_opt_self();
            v55 = swift_dynamicCastObjCClass();
            if (v55)
            {
              v52 = v55;
              a2 = v70;
              v50 = v68;
              goto LABEL_28;
            }
          }
        }

        else
        {
        }

LABEL_32:
        a2 = v70;
        v48 = v71;
        v46 = v72;
        v25 = &unk_99C000;
LABEL_33:
        v57 = *(v3 + v25[287]);
        if (!v57)
        {
LABEL_43:
          v64 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPagePresentationController());
          v65 = v48;
          v66 = [v64 initWithPresentedViewController:v65 presentingViewController:a2];

          return v66;
        }

        if (v32)
        {
          v58 = v57;
          v59 = [v32 collectionView];
          if (v59)
          {
            v60 = v59;
            v61 = [v59 indexPathForCell:v58];

            if (v61)
            {
              sub_757590();

              v62 = 0;
            }

            else
            {
              v62 = 1;
            }

            (*(v72 + 56))(v9, v62, 1, v13);
            sub_2F8C4C(v9, v12);
            goto LABEL_42;
          }
        }

        (*(v46 + 56))(v12, 1, 1, v13);
LABEL_42:
        v63 = OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceIndexPath;
        swift_beginAccess();
        sub_127C68(v12, v3 + v63);
        swift_endAccess();
        goto LABEL_43;
      }
    }

    v33 = [v26 visibleViewController];

    if (!v33)
    {
      v32 = 0;
      goto LABEL_32;
    }

    objc_opt_self();
    v35 = swift_dynamicCastObjCClass();
    if (!v35)
    {

      v32 = 0;
      goto LABEL_32;
    }

    v34 = v35;
    v32 = v35;
    goto LABEL_13;
  }

  return v21;
}

void sub_2F6F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell;
  v5 = *(a3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell);
  if (!v5 || (*&v39 = *(a3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell), sub_127C1C(), v6 = v5, sub_BD88(&qword_94EE70), (swift_dynamicCast() & 1) == 0))
  {
    *&v49 = 0;
    v47 = 0u;
    v48 = 0u;
    goto LABEL_7;
  }

  v7 = *(&v48 + 1);
  if (!*(&v48 + 1))
  {
LABEL_7:
    sub_10A2C(&v47, &qword_94DAB0);
    goto LABEL_8;
  }

  v8 = v49;
  sub_B170(&v47, *(&v48 + 1));
  v9 = (*(v8 + 8))(v7, v8);
  sub_BEB8(&v47);
  v10 = [v9 layer];

  v11 = [v10 presentationLayer];
  if (v11)
  {
    [v11 transform];

    goto LABEL_14;
  }

LABEL_8:
  v12 = *(a3 + v4);
  if (v12 && (*&v47 = *(a3 + v4), sub_127C1C(), v13 = v12, sub_BD88(&qword_94EE70), (swift_dynamicCast() & 1) != 0))
  {
    v14 = *(&v40 + 1);
    if (*(&v40 + 1))
    {
      v15 = v41;
      sub_B170(&v39, *(&v40 + 1));
      v16 = (*(v15 + 8))(v14, v15);
      sub_BEB8(&v39);
      v17 = [v16 layer];

      [v17 transform];
      goto LABEL_14;
    }
  }

  else
  {
    *&v41 = 0;
    v39 = 0u;
    v40 = 0u;
  }

  sub_10A2C(&v39, &qword_94DAB0);
  v18 = *&CATransform3DIdentity.m33;
  v51 = *&CATransform3DIdentity.m31;
  v52 = v18;
  v19 = *&CATransform3DIdentity.m43;
  v53 = *&CATransform3DIdentity.m41;
  v54 = v19;
  v20 = *&CATransform3DIdentity.m13;
  v47 = *&CATransform3DIdentity.m11;
  v48 = v20;
  v21 = *&CATransform3DIdentity.m23;
  v49 = *&CATransform3DIdentity.m21;
  v50 = v21;
LABEL_14:
  v22 = *(a3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
  if (v22)
  {
    v23 = *(a3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_detailPageViewController + 8);
    ObjectType = swift_getObjectType();
    *&v39 = v22;
    v25 = (*(*(v23 + 8) + 8))(ObjectType);
    v26 = [v25 layer];

    v43 = v51;
    v44 = v52;
    v45 = v53;
    v46 = v54;
    v39 = v47;
    v40 = v48;
    v41 = v49;
    v42 = v50;
    [v26 setTransform:&v39];
  }

  v27 = *(a3 + v4);
  if (v27 && (sub_127C1C(), v28 = v27, sub_BD88(&qword_94EE70), (swift_dynamicCast() & 1) != 0))
  {
    v29 = *(&v40 + 1);
    if (*(&v40 + 1))
    {
      v30 = v41;
      sub_B170(&v39, *(&v40 + 1));
      v31 = (*(v30 + 8))(v29, v30);
      sub_BEB8(&v39);
      v32 = [v31 layer];

      [v32 removeAllAnimations];
      v33 = *(a3 + v4);
      if (!v33)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }
  }

  else
  {
    *&v41 = 0;
    v39 = 0u;
    v40 = 0u;
  }

  sub_10A2C(&v39, &qword_94DAB0);
  v33 = *(a3 + v4);
  if (!v33)
  {
LABEL_26:
    *&v41 = 0;
    v39 = 0u;
    v40 = 0u;
    goto LABEL_27;
  }

LABEL_23:
  sub_127C1C();
  v34 = v33;
  sub_BD88(&qword_94EE70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v35 = *(&v40 + 1);
  if (*(&v40 + 1))
  {
    v36 = v41;
    sub_B170(&v39, *(&v40 + 1));
    v37 = (*(v36 + 8))(v35, v36);
    sub_BEB8(&v39);
    v38 = [v37 layer];

    v43 = v51;
    v44 = v52;
    v45 = v53;
    v46 = v54;
    v39 = v47;
    v40 = v48;
    v41 = v49;
    v42 = v50;
    [v38 setTransform:&v39];

    return;
  }

LABEL_27:
  sub_10A2C(&v39, &qword_94DAB0);
}

void sub_2F744C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell);
  if (v4 && (*&v24 = *(a3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell), sub_127C1C(), v5 = v4, sub_BD88(&qword_94EE70), (swift_dynamicCast() & 1) != 0))
  {
    v6 = *(&v33 + 1);
    if (*(&v33 + 1))
    {
      v7 = v34;
      sub_B170(&v32, *(&v33 + 1));
      v8 = (*(v7 + 8))(v6, v7);
      sub_BEB8(&v32);
      v9 = [v8 layer];

      v10 = *&CATransform3DIdentity.m33;
      v28 = *&CATransform3DIdentity.m31;
      v29 = v10;
      v11 = *&CATransform3DIdentity.m43;
      v30 = *&CATransform3DIdentity.m41;
      v31 = v11;
      v12 = *&CATransform3DIdentity.m13;
      v24 = *&CATransform3DIdentity.m11;
      v25 = v12;
      v13 = *&CATransform3DIdentity.m23;
      v26 = *&CATransform3DIdentity.m21;
      v27 = v13;
      [v9 setTransform:&v24];

      goto LABEL_7;
    }
  }

  else
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
  }

  sub_10A2C(&v32, &qword_94DAB0);
LABEL_7:
  v14 = a3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_detailPageViewController;
  v15 = *(a3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
  if (v15)
  {
    v16 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    *&v24 = v15;
    v18 = (*(*(v16 + 8) + 8))(ObjectType);
    v19 = [v18 layer];

    v20 = *&CATransform3DIdentity.m33;
    v28 = *&CATransform3DIdentity.m31;
    v29 = v20;
    v21 = *&CATransform3DIdentity.m43;
    v30 = *&CATransform3DIdentity.m41;
    v31 = v21;
    v22 = *&CATransform3DIdentity.m13;
    v24 = *&CATransform3DIdentity.m11;
    v25 = v22;
    v23 = *&CATransform3DIdentity.m23;
    v26 = *&CATransform3DIdentity.m21;
    v27 = v23;
    [v19 setTransform:&v24];
  }
}

void sub_2F763C(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *(a3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
    if (v3)
    {
      v4 = *(a3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_detailPageViewController + 8);
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 48);
      v7 = v3;
      v6(ObjectType, v4);
    }
  }
}

char *sub_2F7770(void *a1)
{
  v3 = sub_BD88(&unk_94EE60);
  __chkstk_darwin(v3 - 8);
  v5 = &v112 - v4;
  v6 = sub_757640();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [Strong collectionView];

    if (v12)
    {
      v13 = OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceIndexPath;
      swift_beginAccess();
      sub_E5A10(&v1[v13], v5);
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {

        sub_10A2C(v5, &unk_94EE60);
      }

      else
      {
        (*(v7 + 32))(v9, v5, v6);
        isa = sub_757550().super.isa;
        v15 = [v12 cellForItemAtIndexPath:isa];

        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          v16 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell];
          *&v1[OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell] = v15;
        }
      }
    }
  }

  v17 = OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell;
  v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell];
  if (!v18)
  {
    goto LABEL_24;
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (!v19)
  {
    goto LABEL_24;
  }

  v20 = v19;
  v119 = v18;
  sub_127C1C();
  v21 = v18;
  sub_BD88(&qword_94EE70);
  if (swift_dynamicCast())
  {
    v22 = *(&v121 + 1);
    if (*(&v121 + 1))
    {
      v23 = v122;
      sub_B170(&v120, *(&v121 + 1));
      v24 = *(v23 + 8);
      v117 = v1;
      v25 = v24(v22, v23);
      v1 = v117;
      v26 = v25;
      sub_BEB8(&v120);
      v27 = *&v1[v17];
      if (!v27)
      {

LABEL_39:
        v122 = 0;
        v120 = 0u;
        v121 = 0u;
        goto LABEL_23;
      }

      v119 = *&v1[v17];
      v28 = v27;
      if (swift_dynamicCast())
      {
        v29 = *(&v121 + 1);
        if (*(&v121 + 1))
        {
          v116 = v21;
          v30 = v122;
          sub_B170(&v120, *(&v121 + 1));
          v31 = (*(v30 + 16))(v29, v30);
          v1 = v117;
          v32 = v31;
          sub_BEB8(&v120);
          v33 = *&v1[v17];
          if (v33)
          {
            v119 = *&v1[v17];
            v34 = v33;
            if (swift_dynamicCast())
            {
              v35 = *(&v121 + 1);
              if (*(&v121 + 1))
              {
                v115 = v32;
                v36 = v122;
                sub_B170(&v120, *(&v121 + 1));
                v37 = (*(v36 + 40))(v35, v36);
                v1 = v117;
                v38 = v37;
                v40 = v39;
                sub_BEB8(&v120);
                v41 = *&v1[v17];
                if (v41)
                {
                  v119 = *&v1[v17];
                  v42 = v41;
                  v43 = swift_dynamicCast();
                  v44 = v116;
                  if (v43)
                  {
                    v45 = *(&v121 + 1);
                    if (*(&v121 + 1))
                    {
                      v46 = v122;
                      sub_B170(&v120, *(&v121 + 1));
                      v47 = (*(v46 + 32))(v45, v46);
                      v1 = v117;
                      v114 = v47;
                      v113 = v48;
                      v50 = v49;
                      v52 = v51;
                      sub_BEB8(&v120);
                      [v44 bounds];
                      v54 = v53;
                      v56 = v55;
                      v58 = v57;
                      v60 = v59;
                      v61 = [v20 view];
                      [v44 convertRect:v61 toView:{v54, v56, v58, v60}];
                      v63 = v62;
                      v65 = v64;

                      v66 = v115;
                      [v115 bounds];
                      [v66 convertRect:v44 toCoordinateSpace:?];
                      v68 = v38 + v63 + v67;
                      v70 = v40 + v65 + v69;
                      v71 = swift_unknownObjectWeakLoadStrong();
                      v72 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_detailPageViewController];
                      v73 = type metadata accessor for AppPromotionDetailPageCloseAnimation();
                      v74 = objc_allocWithZone(v73);
                      *&v74[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageCloseAnimation_toCardView] = v26;
                      *&v74[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageCloseAnimation_toCollectionViewController] = v71;
                      v75 = &v74[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageCloseAnimation_toBounds];
                      v76 = v113;
                      *v75 = v114;
                      *(v75 + 1) = v76;
                      *(v75 + 2) = v50;
                      *(v75 + 3) = v52;
                      v75[32] = 0;
                      v77 = &v74[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageCloseAnimation_toCenter];
                      *v77 = v68;
                      v77[1] = v70;
                      *(v77 + 16) = 0;
                      *&v74[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageCloseAnimation_detailPageViewController] = v72;
                      v118.receiver = v74;
                      v118.super_class = v73;
                      v78 = v72;
                      v79 = v26;
                      v80 = v71;
                      v81 = objc_msgSendSuper2(&v118, "init");

                      goto LABEL_25;
                    }
                  }

                  else
                  {
                    v122 = 0;
                    v120 = 0u;
                    v121 = 0u;
                  }

                  goto LABEL_23;
                }

                goto LABEL_43;
              }
            }

            else
            {
              v122 = 0;
              v120 = 0u;
              v121 = 0u;
            }

            goto LABEL_23;
          }

LABEL_43:
          goto LABEL_39;
        }
      }

      else
      {
        v122 = 0;
        v120 = 0u;
        v121 = 0u;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v122 = 0;
    v120 = 0u;
    v121 = 0u;
  }

LABEL_23:
  sub_10A2C(&v120, &qword_94DAB0);
LABEL_24:
  v82 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_detailPageViewController];
  v83 = type metadata accessor for AppPromotionDetailPageCloseAnimation();
  v84 = objc_allocWithZone(v83);
  *&v84[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageCloseAnimation_toCardView] = 0;
  *&v84[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageCloseAnimation_toCollectionViewController] = 0;
  v85 = &v84[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageCloseAnimation_toBounds];
  *v85 = 0u;
  *(v85 + 1) = 0u;
  v85[32] = 1;
  v86 = &v84[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageCloseAnimation_toCenter];
  *v86 = 0;
  *(v86 + 1) = 0;
  v86[16] = 1;
  *&v84[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageCloseAnimation_detailPageViewController] = v82;
  v123.receiver = v84;
  v123.super_class = v83;
  v87 = v82;
  v81 = objc_msgSendSuper2(&v123, "init");
LABEL_25:
  v88 = swift_allocObject();
  *(v88 + 16) = v1;
  v89 = OBJC_IVAR____TtC18ASMessagesProvider27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v90 = *&v81[v89];
  v91 = v81;
  v92 = v1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v81[v89] = v90;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v90 = sub_7BB70(0, *(v90 + 2) + 1, 1, v90);
    *&v81[v89] = v90;
  }

  v95 = *(v90 + 2);
  v94 = *(v90 + 3);
  if (v95 >= v94 >> 1)
  {
    v90 = sub_7BB70((v94 > 1), v95 + 1, 1, v90);
  }

  *(v90 + 2) = v95 + 1;
  v96 = &v90[24 * v95];
  *(v96 + 4) = sub_2F8C14;
  *(v96 + 5) = v88;
  v96[48] = 0;
  *&v81[v89] = v90;
  swift_endAccess();

  v97 = swift_allocObject();
  *(v97 + 16) = a1;
  swift_beginAccess();
  v98 = *&v81[v89];
  v99 = a1;

  v100 = swift_isUniquelyReferenced_nonNull_native();
  *&v81[v89] = v98;
  if ((v100 & 1) == 0)
  {
    v98 = sub_7BB70(0, *(v98 + 2) + 1, 1, v98);
    *&v81[v89] = v98;
  }

  v102 = *(v98 + 2);
  v101 = *(v98 + 3);
  if (v102 >= v101 >> 1)
  {
    v98 = sub_7BB70((v101 > 1), v102 + 1, 1, v98);
  }

  *(v98 + 2) = v102 + 1;
  v103 = &v98[24 * v102];
  *(v103 + 4) = sub_2F8C1C;
  *(v103 + 5) = v97;
  v103[48] = 1;
  *&v81[v89] = v98;
  swift_endAccess();

  v104 = swift_allocObject();
  *(v104 + 16) = v92;
  swift_beginAccess();
  v105 = *&v81[v89];
  v106 = v92;

  v107 = swift_isUniquelyReferenced_nonNull_native();
  *&v81[v89] = v105;
  if ((v107 & 1) == 0)
  {
    v105 = sub_7BB70(0, *(v105 + 2) + 1, 1, v105);
    *&v81[v89] = v105;
  }

  v109 = *(v105 + 2);
  v108 = *(v105 + 3);
  if (v109 >= v108 >> 1)
  {
    v105 = sub_7BB70((v108 > 1), v109 + 1, 1, v105);
  }

  *(v105 + 2) = v109 + 1;
  v110 = &v105[24 * v109];
  *(v110 + 4) = sub_2F8C24;
  *(v110 + 5) = v104;
  v110[48] = 2;
  *&v81[v89] = v105;
  swift_endAccess();

  return v91;
}

void sub_2F81E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v8[4] = sub_2F8C2C;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_23F0CC;
  v8[3] = &unk_88CE30;
  v6 = _Block_copy(v8);
  v7 = a3;

  [v4 animateWithDuration:v6 animations:0.1];
  _Block_release(v6);
}

void sub_2F82D4(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
  if (v1)
  {
    v2 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_detailPageViewController + 8);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 32);
    v5 = v1;
    v4(1, ObjectType, v2);
  }
}

void sub_2F8388(int a1, int a2, id a3)
{
  v3 = [a3 _existingPresentationControllerImmediate:1 effective:1];
  if (v3)
  {
    v8 = v3;
    type metadata accessor for AppPromotionDetailPagePresentationController();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4 + OBJC_IVAR____TtC18ASMessagesProvider44AppPromotionDetailPagePresentationController_interactiveDismissal;
      swift_beginAccess();
      if (*(v5 + 24))
      {
        sub_134D8(v5, v9);
        v6 = v10;
        v7 = v11;
        sub_B170(v9, v10);
        (*(v7 + 24))(v6, v7);

        sub_BEB8(v9);
        return;
      }
    }
  }
}

void sub_2F849C(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_757640();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    return;
  }

  v9 = OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell;
  v10 = *(a3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell);
  if (!v10)
  {
    goto LABEL_13;
  }

  v43 = *(a3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell);
  sub_127C1C();
  v11 = v10;
  sub_BD88(&qword_94EE70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
LABEL_14:
    sub_10A2C(&v44, &qword_94DAB0);
    goto LABEL_15;
  }

  v13 = v46;
  sub_B170(&v44, *(&v45 + 1));
  v14 = (*(v13 + 8))(v12, v13);
  sub_BEB8(&v44);
  v15 = *(a3 + v9);
  if (!v15)
  {

LABEL_13:
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    goto LABEL_14;
  }

  v43 = *(a3 + v9);
  v16 = v15;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    goto LABEL_25;
  }

  v17 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
LABEL_25:

    goto LABEL_14;
  }

  v42 = v14;
  v18 = v46;
  sub_B170(&v44, *(&v45 + 1));
  v19 = *(v18 + 16);
  v20 = v18;
  v21 = v42;
  v22 = v19(v17, v20);
  sub_BEB8(&v44);
  [v22 addSubview:v21];
  v23 = *(a3 + v9);
  if (!v23)
  {

    goto LABEL_13;
  }

  v43 = *(a3 + v9);
  v24 = v23;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    goto LABEL_28;
  }

  v25 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
LABEL_28:

    goto LABEL_14;
  }

  v26 = v46;
  sub_B170(&v44, *(&v45 + 1));
  v27 = (*(v26 + 24))(v25, v26);
  [v27 setNeedsLayout];

  sub_BEB8(&v44);
LABEL_15:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v30 = [Strong collectionView];

    if (v30)
    {
      v31 = [v30 indexPathsForSelectedItems];
      if (v31)
      {
        v32 = v31;
        v33 = sub_769460();

        v34 = *(v33 + 16);
        if (v34)
        {
          v37 = *(v6 + 16);
          v36 = v6 + 16;
          v35 = v37;
          v38 = (*(v36 + 64) + 32) & ~*(v36 + 64);
          v42 = v33;
          v39 = v33 + v38;
          v40 = *(v36 + 56);
          do
          {
            v35(v8, v39, v5);
            isa = sub_757550().super.isa;
            (*(v36 - 8))(v8, v5);
            [v30 deselectItemAtIndexPath:isa animated:{0, v42}];

            v39 += v40;
            --v34;
          }

          while (v34);
        }
      }
    }
  }
}

id sub_2F8910()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppPromotionDetailPageTransitioningDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AppPromotionDetailPageTransitioningDelegate()
{
  result = qword_94EE48;
  if (!qword_94EE48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2F8A38()
{
  sub_127A0C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_2F8AE8(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_originatingView;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_originatingView] = 0;
  v4 = &v1[OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_detailPageViewController];
  *v4 = 0;
  *(v4 + 1) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceIndexPath;
  v6 = sub_757640();
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell] = 0;
  v7 = *&v1[v3];
  *&v1[v3] = a1;
  v8 = a1;

  v10.receiver = v1;
  v10.super_class = type metadata accessor for AppPromotionDetailPageTransitioningDelegate();
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t sub_2F8BDC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2F8C34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2F8C4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_94EE60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_2F8CBC()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell];
  if (!v2)
  {
    v29 = 0.0;
    v28 = 1;
    v4 = 0.0;
    goto LABEL_14;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = 0.0;
  if (!Strong)
  {
LABEL_10:
    v28 = 1;
    v29 = 0.0;
    v30 = *&v0[v1];
    if (v30)
    {
      goto LABEL_11;
    }

LABEL_14:
    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    goto LABEL_15;
  }

  v5 = Strong;
  sub_127C1C();
  v6 = v2;
  sub_BD88(&qword_94EE70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    goto LABEL_9;
  }

  v7 = *(&v65 + 1);
  if (!*(&v65 + 1))
  {
LABEL_9:

    sub_10A2C(&v64, &qword_94DAB0);
    goto LABEL_10;
  }

  v8 = v66;
  sub_B170(&v64, *(&v65 + 1));
  v9 = (*(v8 + 8))(v7, v8);
  sub_BEB8(&v64);
  [v6 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [v5 view];
  [v6 convertRect:v18 toView:{v11, v13, v15, v17}];
  v20 = v19;
  v22 = v21;

  [v9 bounds];
  [v9 convertRect:v6 toCoordinateSpace:?];
  x = v67.origin.x;
  y = v67.origin.y;
  width = v67.size.width;
  height = v67.size.height;
  v4 = v20 + CGRectGetMidX(v67);
  v68.origin.x = x;
  v68.origin.y = y;
  v68.size.width = width;
  v68.size.height = height;
  MidY = CGRectGetMidY(v68);

  v28 = 0;
  v29 = v22 + MidY;
  v30 = *&v0[v1];
  if (!v30)
  {
    goto LABEL_14;
  }

LABEL_11:
  sub_127C1C();
  v31 = v30;
  sub_BD88(&qword_94EE70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v32 = *(&v65 + 1);
  if (*(&v65 + 1))
  {
    v33 = v66;
    sub_B170(&v64, *(&v65 + 1));
    v34 = (*(v33 + 8))(v32, v33);
    sub_BEB8(&v64);
    goto LABEL_16;
  }

LABEL_15:
  sub_10A2C(&v64, &qword_94DAB0);
  v34 = 0;
LABEL_16:
  v35 = swift_unknownObjectWeakLoadStrong();
  v36 = type metadata accessor for AppPromotionPageOpenAnimation();
  v37 = objc_allocWithZone(v36);
  *&v37[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionPageOpenAnimation_fromCardView] = v34;
  *&v37[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionPageOpenAnimation_fromCollectionViewController] = v35;
  v38 = &v37[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionPageOpenAnimation_fromCenter];
  *v38 = v4;
  v38[1] = v29;
  *(v38 + 16) = v28;
  v63.receiver = v37;
  v63.super_class = v36;
  v39 = objc_msgSendSuper2(&v63, "init");
  v40 = swift_allocObject();
  *(v40 + 16) = v0;
  v41 = OBJC_IVAR____TtC18ASMessagesProvider27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v42 = *&v39[v41];
  v43 = v0;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v39[v41] = v42;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v42 = sub_7BB70(0, *(v42 + 2) + 1, 1, v42);
    *&v39[v41] = v42;
  }

  v46 = *(v42 + 2);
  v45 = *(v42 + 3);
  if (v46 >= v45 >> 1)
  {
    v42 = sub_7BB70((v45 > 1), v46 + 1, 1, v42);
  }

  *(v42 + 2) = v46 + 1;
  v47 = &v42[24 * v46];
  *(v47 + 4) = sub_2F92D4;
  *(v47 + 5) = v40;
  v47[48] = 0;
  *&v39[v41] = v42;
  swift_endAccess();

  v48 = swift_allocObject();
  *(v48 + 16) = v43;
  swift_beginAccess();
  v49 = *&v39[v41];
  v50 = v43;

  v51 = swift_isUniquelyReferenced_nonNull_native();
  *&v39[v41] = v49;
  if ((v51 & 1) == 0)
  {
    v49 = sub_7BB70(0, *(v49 + 2) + 1, 1, v49);
    *&v39[v41] = v49;
  }

  v53 = *(v49 + 2);
  v52 = *(v49 + 3);
  if (v53 >= v52 >> 1)
  {
    v49 = sub_7BB70((v52 > 1), v53 + 1, 1, v49);
  }

  *(v49 + 2) = v53 + 1;
  v54 = &v49[24 * v53];
  *(v54 + 4) = sub_2F92DC;
  *(v54 + 5) = v48;
  v54[48] = 1;
  *&v39[v41] = v49;
  swift_endAccess();

  v55 = swift_allocObject();
  *(v55 + 16) = v50;
  swift_beginAccess();
  v56 = *&v39[v41];
  v57 = v50;

  v58 = swift_isUniquelyReferenced_nonNull_native();
  *&v39[v41] = v56;
  if ((v58 & 1) == 0)
  {
    v56 = sub_7BB70(0, *(v56 + 2) + 1, 1, v56);
    *&v39[v41] = v56;
  }

  v60 = *(v56 + 2);
  v59 = *(v56 + 3);
  if (v60 >= v59 >> 1)
  {
    v56 = sub_7BB70((v59 > 1), v60 + 1, 1, v56);
  }

  *(v56 + 2) = v60 + 1;
  v61 = &v56[24 * v60];
  *(v61 + 4) = sub_2F92E4;
  *(v61 + 5) = v55;
  v61[48] = 2;
  *&v39[v41] = v56;
  swift_endAccess();

  return v39;
}

uint64_t SubscriptionLockupPresenter.iapAdamId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_iapAdamId;
  v4 = sub_764CF0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionLockupPresenter.isIapVisible.getter()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_isIapVisible;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2F93D8(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_isIapVisible;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    v7 = v1 + OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_view;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      (*(v8 + 32))(a1 & 1, 1, ObjectType, v8);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t SubscriptionLockupPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_isIapVisible;
    swift_beginAccess();
    (*(v5 + 32))(*(v2 + v7), 1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

void (*SubscriptionLockupPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_2F9664;
}

void sub_2F9664(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = v3[5];
      v5 = *(v4 + v3[6] + 8);
      ObjectType = swift_getObjectType();
      v7 = OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_isIapVisible;
      swift_beginAccess();
      (*(v5 + 32))(*(v4 + v7), 1, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

uint64_t SubscriptionLockupPresenter.__allocating_init(subscriptionFamilyId:iapAdamId:view:iapDataSource:appStateController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  SubscriptionLockupPresenter.init(subscriptionFamilyId:iapAdamId:view:iapDataSource:appStateController:)(a1, a2, a3, a4, a5, a6, a7, a8);
  return v16;
}

char *SubscriptionLockupPresenter.init(subscriptionFamilyId:iapAdamId:view:iapDataSource:appStateController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v59 = a8;
  v60 = a5;
  v62 = a7;
  v63 = a4;
  v65 = a6;
  v61 = a1;
  v53 = *v8;
  v12 = sub_764CF0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v51 = v14;
  v52 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_757A90();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  v22 = &v8[OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_view];
  *(v22 + 1) = 0;
  swift_unknownObjectWeakInit();
  v56 = v13;
  v23 = *(v13 + 16);
  v64 = v12;
  v50 = v23;
  v23(&v9[OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_iapAdamId], a3, v12);
  swift_beginAccess();
  *(v22 + 1) = v60;
  swift_unknownObjectWeakAssign();
  swift_getObjectType();
  v24 = sub_758330();
  v25 = &v9[OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_iapStateMachine];
  *v25 = v24;
  v25[1] = v26;

  sub_757D70();
  v54 = a2;

  v27 = *(v16 + 16);
  v55 = v21;
  v27(v18, v21, v15);
  v58 = v15;
  v59 = v16;
  v28 = (*(v16 + 88))(v18, v15);
  v30 = v28 == enum case for InAppPurchaseState.buyable(_:) || v28 == enum case for InAppPurchaseState.indeterminateProgress(_:) || v28 == enum case for InAppPurchaseState.unknown(_:);
  v31 = v30;
  if (!v30)
  {
    (*(v59 + 8))(v18, v58);
  }

  v49 = OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_isIapVisible;
  v9[OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_isIapVisible] = v31;
  if (*&v9[OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_iapStateMachine])
  {
    swift_getObjectType();
    swift_allocObject();
    swift_weakInit();

    sub_7581F0();
  }

  v32 = swift_allocObject();
  swift_weakInit();
  v33 = v52;
  v57 = a3;
  v34 = a3;
  v35 = v64;
  v50(v52, v34, v64);
  v36 = v56;
  v37 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v38 = (v51 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  (*(v36 + 32))(v40 + v37, v33, v35);
  v41 = (v40 + v38);
  v42 = v54;
  *v41 = v61;
  v41[1] = v42;
  *(v40 + v39) = v32;
  *(v40 + ((v39 + 15) & 0xFFFFFFFFFFFFFFF8)) = v53;

  sub_757D50();

  if (v63)
  {
    ObjectType = swift_getObjectType();
    v44 = v49;
    swift_beginAccess();
    v45 = v9[v44];
    v46 = v60;
    v47 = *(v60 + 32);
    swift_unknownObjectRetain();
    v47(v45, 0, ObjectType, v46);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease_n();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  (*(v36 + 8))(v57, v64);
  (*(v59 + 8))(v55, v58);
  return v9;
}

uint64_t sub_2F9D8C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2F9DC4()
{
  v0 = sub_7580D0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_758220();
  if ((*(v1 + 88))(v3, v0) != enum case for LegacyAppState.purchased(_:))
  {
    return (*(v1 + 8))(v3, v0);
  }

  (*(v1 + 96))(v3, v0);
  v4 = sub_759E00();
  (*(*(v4 - 8) + 8))(v3, v4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2F93D8(0);
  }

  return result;
}

uint64_t sub_2F9F60()
{
  v0 = sub_757A90();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  sub_757D70();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v1 + 16))(v3, v6, v0);
    v7 = (*(v1 + 88))(v3, v0);
    v9 = v7 == enum case for InAppPurchaseState.buyable(_:) || v7 == enum case for InAppPurchaseState.indeterminateProgress(_:) || v7 == enum case for InAppPurchaseState.unknown(_:);
    v10 = v9;
    if (!v9)
    {
      (*(v1 + 8))(v3, v0);
    }

    sub_2F93D8(v10);
  }

  return (*(v1 + 8))(v6, v0);
}

uint64_t sub_2FA144()
{
  v1 = sub_764CF0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_2FA204()
{
  sub_764CF0();

  return sub_2F9F60();
}

uint64_t SubscriptionLockupPresenter.deinit()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_iapStateMachine))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_758210();
    swift_unknownObjectRelease();
  }

  sub_7576E0();
  if (sub_7576C0())
  {
    sub_757D60();
  }

  v2 = OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_iapAdamId;
  v3 = sub_764CF0();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  sub_13238(v1 + OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_view);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t SubscriptionLockupPresenter.__deallocating_deinit()
{
  SubscriptionLockupPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2FA414@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_isIapVisible;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t type metadata accessor for SubscriptionLockupPresenter()
{
  result = qword_94EEA8;
  if (!qword_94EEA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2FA4E8()
{
  result = sub_764CF0();
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

uint64_t sub_2FA594()
{
  v1 = v0;
  v2 = sub_BD88(&unk_944E70);
  __chkstk_darwin(v2 - 8);
  v4 = v8 - v3;
  sub_759D00();
  sub_2FA840();
  result = sub_75C750();
  if (v8[1])
  {
    sub_768900();
    sub_768820();
    v6 = sub_BD88(&unk_944E80);
    (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
    v7 = OBJC_IVAR____TtC18ASMessagesProvider30LinkableTextCollectionViewCell_bodyText;
    swift_beginAccess();
    sub_2FA898(v4, v1 + v7);
    swift_endAccess();
    sub_3B4D34();

    return sub_2FA908(v4);
  }

  return result;
}

uint64_t sub_2FA718@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider30LinkableTextCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1799C(v1 + v3, a1);
}

uint64_t sub_2FA774(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider30LinkableTextCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

unint64_t sub_2FA840()
{
  result = qword_9513B0;
  if (!qword_9513B0)
  {
    sub_759D00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9513B0);
  }

  return result;
}

uint64_t sub_2FA898(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_944E70);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2FA908(uint64_t a1)
{
  v2 = sub_BD88(&unk_944E70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2FA970(uint64_t a1)
{
  v3 = sub_7666D0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v40 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v38[-v7];
  v9 = sub_BD88(&qword_94EFA8);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v38[-v11];
  v13 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v13 - 8);
  v42 = &v38[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v38[-v16];
  __chkstk_darwin(v18);
  v20 = &v38[-v19];
  __chkstk_darwin(v21);
  v23 = &v38[-v22];
  v43 = v1;
  v41 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_headingLabel];
  sub_75BA30();
  v24 = *(v10 + 56);
  sub_1E9A94(v23, v12);
  v45 = a1;
  sub_1E9A94(a1, &v12[v24]);
  v44 = v4;
  v25 = *(v4 + 48);
  if (v25(v12, 1, v3) == 1)
  {
    sub_10A2C(v23, &unk_93E530);
    if (v25(&v12[v24], 1, v3) == 1)
    {
      sub_10A2C(v12, &unk_93E530);
      return sub_10A2C(v45, &unk_93E530);
    }
  }

  else
  {
    sub_1E9A94(v12, v20);
    if (v25(&v12[v24], 1, v3) != 1)
    {
      v36 = v44;
      (*(v44 + 32))(v8, &v12[v24], v3);
      sub_2FC64C(&qword_94EFB0, &type metadata accessor for FontUseCase);
      v39 = sub_7691C0();
      v37 = *(v36 + 8);
      v37(v8, v3);
      sub_10A2C(v23, &unk_93E530);
      v37(v20, v3);
      sub_10A2C(v12, &unk_93E530);
      if (v39)
      {
        return sub_10A2C(v45, &unk_93E530);
      }

      goto LABEL_7;
    }

    sub_10A2C(v23, &unk_93E530);
    (*(v44 + 8))(v20, v3);
  }

  sub_10A2C(v12, &qword_94EFA8);
LABEL_7:
  v26 = v45;
  sub_1E9A94(v45, v17);
  sub_75BA40();
  v27 = v43;
  v28 = *&v43[OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_imageView];
  v29 = [v43 traitCollection];
  v30 = v42;
  sub_1E9A94(v26, v42);
  if (v25(v30, 1, v3) == 1)
  {

    sub_10A2C(v30, &unk_93E530);
  }

  else
  {
    v31 = v44;
    v32 = v40;
    (*(v44 + 32))(v40, v30, v3);
    sub_26F08();
    v33 = sub_769E10();
    v34 = [objc_opt_self() configurationWithFont:v33];
    [v28 setPreferredSymbolConfiguration:v34];

    (*(v31 + 8))(v32, v3);
  }

  [v27 setNeedsLayout];
  return sub_10A2C(v45, &unk_93E530);
}

char *sub_2FAED0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_760AD0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v14 - 8);
  v16 = &v35 - v15;
  v17 = &v5[OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_metrics];
  *(v17 + 3) = &type metadata for Double;
  *(v17 + 4) = &protocol witness table for Double;
  *v17 = 0;
  v18 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_imageView] = v18;
  *v16 = UIFontTextStyleBody;
  *(v16 + 2) = 0;
  v19 = enum case for FontUseCase.preferredFont(_:);
  v20 = sub_7666D0();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v16, v19, v20);
  (*(v21 + 56))(v16, 0, 1, v20);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  objc_allocWithZone(sub_75BB20());
  v22 = UIFontTextStyleBody;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_headingLabel] = sub_75BB10();
  v37.receiver = v5;
  v37.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v37, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_imageView;
  [v27 addSubview:*&v27[OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_imageView]];
  v29 = *&v27[v28];
  v30 = [v27 tintColor];
  [v29 setTintColor:v30];

  v31 = OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_headingLabel;
  [v27 addSubview:*&v27[OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_headingLabel]];
  v32 = *&v27[v31];
  v33 = [v27 tintColor];

  [v32 setTextColor:v33];
  return v27;
}

uint64_t sub_2FB324()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7664F0();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14.receiver = v1;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "layoutSubviews", v5);
  v8 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_imageView];
  v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_headingLabel];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_metrics;
  swift_beginAccess();
  sub_16D2A4(&v1[v10], v12);
  sub_2FB4BC(v8, &protocol witness table for UIView, v9, &protocol witness table for UIView, v12, v13);
  sub_16D35C(v12);
  sub_B170(v13, v13[3]);
  sub_75D650();
  sub_7672C0();
  (*(v4 + 8))(v7, v3);
  return sub_BEB8(v13);
}

uint64_t sub_2FB4BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t)@<X3>, void (*a5)(char *, uint64_t)@<X4>, uint64_t *a6@<X8>)
{
  v101 = a5;
  v100 = a4;
  v99 = a3;
  v105 = a2;
  v104 = a1;
  v106 = a6;
  v112 = sub_761400();
  v118 = *(v112 - 8);
  __chkstk_darwin(v112);
  v111 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_761410();
  v119 = *(v116 - 8);
  __chkstk_darwin(v116);
  v110 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_7613E0();
  v8 = *(v109 - 8);
  __chkstk_darwin(v109);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_761450();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_761440();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_761430();
  v117 = *(v114 - 8);
  __chkstk_darwin(v114);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_761470();
  v102 = *(v115 - 8);
  v103 = v115 - 8;
  v113 = v102;
  __chkstk_darwin(v115 - 8);
  v98 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v108 = &v77 - v24;
  v83 = *(v16 + 104);
  v84 = v16 + 104;
  v107 = v18;
  (v83)(v18, enum case for HorizontalAlignmentLayout.ChildSourceOffset.minY(_:), v15, v23);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v26 = v14;
  v81 = v14;
  *v14 = v25;
  v27 = *(v12 + 104);
  v96 = v12 + 104;
  v97 = v27;
  v88 = v11;
  v27(v14, enum case for HorizontalAlignmentLayout.ContainerDestinationOffset.absolute(_:), v11);
  v28 = v20;
  sub_761420();
  v29 = *(v12 + 8);
  v94 = v12 + 8;
  v95 = v29;
  v29(v26, v11);
  v30 = *(v16 + 8);
  v92 = v16 + 8;
  v93 = v30;
  v30(v18, v15);
  v122 = &type metadata for Double;
  v123 = &protocol witness table for Double;
  v121 = 0;
  v91 = enum case for HorizontalAlignmentLayout.HorizontalGravity.leading(_:);
  v31 = v8;
  v32 = *(v8 + 104);
  v89 = v8 + 104;
  v90 = v32;
  v33 = v10;
  v34 = v10;
  v35 = v109;
  v32(v34);
  v87 = enum case for HorizontalAlignmentLayout.SizingPolicy.Priority.default(_:);
  v36 = v118;
  v37 = *(v118 + 104);
  v85 = v118 + 104;
  v86 = v37;
  v39 = v111;
  v38 = v112;
  v37(v111);
  v40 = v110;
  sub_7613F0();
  v41 = *(v36 + 8);
  v118 = v36 + 8;
  v82 = v41;
  v41(v39, v38);
  v42 = v108;
  v78 = v28;
  v79 = v33;
  sub_761460();
  v43 = *(v119 + 8);
  v119 += 8;
  v101 = v43;
  v43(v40, v116);
  v44 = *(v31 + 8);
  v99 = v31 + 8;
  v100 = v44;
  v44(v33, v35);
  v45 = *(v117 + 8);
  v117 += 8;
  v80 = v45;
  v45(v28, v114);
  sub_BEB8(&v121);
  v122 = &type metadata for CGFloat;
  v123 = &protocol witness table for CGFloat;
  v121 = 0;
  v46 = enum case for HorizontalAlignmentLayout.ChildSourceOffset.midY(_:);
  v47 = v83;
  v83(v107, enum case for HorizontalAlignmentLayout.ChildSourceOffset.midY(_:), v15);
  v48 = sub_BD88(&qword_94EF88);
  v49 = swift_allocBox();
  v51 = v50;
  v52 = *(v48 + 48);
  v53 = *(v113 + 16);
  v53(v50, v42, v115);
  v47(v51 + v52, v46, v15);
  v54 = v81;
  *v81 = v49;
  v55 = v88;
  v97(v54, enum case for HorizontalAlignmentLayout.ContainerDestinationOffset.relative(_:), v88);
  v56 = v78;
  v57 = v107;
  sub_761420();
  v95(v54, v55);
  v93(v57, v15);
  v120[4] = &protocol witness table for Double;
  v120[3] = &type metadata for Double;
  v120[0] = 0;
  v58 = v79;
  v59 = v109;
  v90(v79, v91, v109);
  v61 = v111;
  v60 = v112;
  v86(v111, v87, v112);
  v62 = v110;
  sub_7613F0();
  v82(v61, v60);
  v63 = v98;
  sub_761460();
  v101(v62, v116);
  v100(v58, v59);
  v80(v56, v114);
  sub_BEB8(v120);
  sub_BEB8(&v121);
  sub_BD88(&qword_94EF90);
  v64 = *(v102 + 72);
  v65 = v113;
  v66 = (*(v113 + 80) + 32) & ~*(v113 + 80);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_77E280;
  v68 = v67 + v66;
  v69 = v63;
  v70 = v63;
  v71 = v115;
  v53(v68, v69, v115);
  v72 = v108;
  v53(v68 + v64, v108, v71);
  v73 = sub_761490();
  v74 = v106;
  v106[3] = v73;
  v74[4] = sub_2FC64C(&qword_94EF98, &type metadata accessor for HorizontalAlignmentLayout);
  v74[5] = sub_2FC64C(&qword_94EFA0, &type metadata accessor for HorizontalAlignmentLayout);
  sub_B1B4(v74);
  sub_761480();
  v75 = *(v65 + 8);
  v75(v70, v71);
  return (v75)(v72, v71);
}

uint64_t sub_2FBFF4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_7666D0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v9 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v34 - v14;
  v36.receiver = v2;
  v36.super_class = ObjectType;
  objc_msgSendSuper2(&v36, "traitCollectionDidChange:", a1, v13);
  v16 = [v2 traitCollection];
  v17 = [v16 preferredContentSizeCategory];

  if (!a1)
  {
    v35 = v8;
    v24 = v6;

LABEL_7:
    v26 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_imageView];
    sub_75BA30();
    v27 = [v2 traitCollection];
    sub_1E9A94(v15, v11);
    v28 = v24;
    if ((*(v24 + 48))(v11, 1, v5) == 1)
    {

      sub_10A2C(v15, &unk_93E530);
      v29 = v11;
    }

    else
    {
      v30 = *(v24 + 32);
      v31 = v35;
      v30(v35, v11, v5);
      sub_26F08();
      v32 = sub_769E10();
      v33 = [objc_opt_self() configurationWithFont:v32];
      [v26 setPreferredSymbolConfiguration:v33];

      (*(v28 + 8))(v31, v5);
      v29 = v15;
    }

    return sub_10A2C(v29, &unk_93E530);
  }

  v18 = [a1 preferredContentSizeCategory];
  v19 = sub_769240();
  v21 = v20;
  if (v19 == sub_769240() && v21 == v22)
  {
  }

  v35 = v8;
  v24 = v6;
  v25 = sub_76A950();

  if ((v25 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

double sub_2FC404()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_imageView);
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_headingLabel);
  v3 = OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_metrics;
  swift_beginAccess();
  sub_16D2A4(v0 + v3, v7);
  sub_2FB4BC(v1, &protocol witness table for UIView, v2, &protocol witness table for UIView, v7, v8);
  sub_16D35C(v7);
  sub_B170(v8, v8[3]);
  sub_7665A0();
  v5 = v4;
  sub_BEB8(v8);
  return v5;
}

uint64_t sub_2FC64C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_2FC694(void *a1)
{
  v2 = sub_759950();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 traitCollection];
  if (qword_93CA20 != -1)
  {
    swift_once();
  }

  v18.is_nil = qword_94F4F0;
  v18.value._rawValue = 0;
  isa = sub_7699C0(v18, v7).super.isa;
  sub_1582B4();
  v10 = sub_769C60();
  (*(v3 + 104))(v6, enum case for SystemImage.starFill(_:), v2);
  v11 = [v10 configurationWithTraitCollection:isa];
  v12 = sub_759930();

  (*(v3 + 8))(v6, v2);
  v13 = [v12 imageWithRenderingMode:2];

  [v13 size];
  v15 = v14;

  return (v15 + 12.0) * 5.0 + -12.0;
}

id sub_2FC8C8(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v51 = a3;
  LODWORD(v5) = a2;
  v53 = a1;
  swift_getObjectType();
  v6 = sub_BD88(&qword_93FAE8);
  __chkstk_darwin(v6 - 8);
  v54 = &v42 - v7;
  v8 = sub_767030();
  v48 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v42 - v12;
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  __chkstk_darwin(v17);
  v18 = sub_766D70();
  v49 = *(v18 - 8);
  v50 = v18;
  __chkstk_darwin(v18);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider20ProductTapToRateView_titleLabel];
  sub_75D650();
  v22 = v21;
  v55[5] = *&v3[OBJC_IVAR____TtC18ASMessagesProvider20ProductTapToRateView_ratingControl];
  type metadata accessor for StarRatingControl();
  sub_7665D0();
  v23 = [v3 traitCollection];
  if (qword_93C1C0 != -1)
  {
    swift_once();
  }

  if (sub_769A00() & 1) != 0 || (sub_7699D0())
  {

    sub_BEB8(v55);
LABEL_6:
    v24._countAndFlagsBits = 0x525F4F545F504154;
    v24._object = 0xEB00000000455441;
    goto LABEL_7;
  }

  v46 = v20;
  v47 = v5;
  v43 = "ion";
  v56._object = 0x80000000007C9F90;
  v56._countAndFlagsBits = 0xD000000000000016;
  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  v32 = sub_75B750(v56, v58);
  v44 = v33;
  v45 = v32;
  sub_767020();
  if (qword_93D758 != -1)
  {
    swift_once();
  }

  v34 = sub_7666D0();
  sub_BE38(v34, qword_99EE00);
  sub_766FF0();
  v35 = *(v48 + 8);
  v35(v10, v8);
  sub_767010();
  v35(v13, v8);
  sub_767000();
  v35(v16, v8);
  sub_766D50();
  v5 = v46;
  sub_766D90();
  sub_766D60();
  v37 = v36;
  sub_B170(v55, v55[3]);
  sub_7673F0();
  v39 = v38;
  sub_B170(qword_999FA0, qword_999FB8);
  sub_766710();
  v41 = v40;

  (*(v49 + 8))(v5, v50);
  sub_BEB8(v55);
  LOBYTE(v5) = v47;
  if (v22 < v39 + v37 + v41)
  {
    goto LABEL_6;
  }

  v24._object = (v43 | 0x8000000000000000);
  v24._countAndFlagsBits = 0xD000000000000016;
LABEL_7:
  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  sub_75B750(v24, v57);
  v25 = v54;
  v26 = sub_769210();

  [v52 setText:v26];

  v27 = sub_765A00();
  if (v27)
  {
    v55[0] = v27;
    sub_758E30();
    sub_768900();
    sub_2FCF50();
    sub_768820();

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = sub_BD88(&qword_93FAE0);
  (*(*(v29 - 8) + 56))(v25, v28, 1, v29);
  v30 = OBJC_IVAR____TtC18ASMessagesProvider20ProductTapToRateView_rateAction;
  swift_beginAccess();
  sub_2FCEE0(v25, &v4[v30]);
  swift_endAccess();
  v4[OBJC_IVAR____TtC18ASMessagesProvider20ProductTapToRateView_isSingleColumn] = v5 & 1;
  [v4 setNeedsLayout];
  return [v4 setNeedsLayout];
}

uint64_t sub_2FCEE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_93FAE8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2FCF50()
{
  result = qword_94EFB8;
  if (!qword_94EFB8)
  {
    sub_758E30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94EFB8);
  }

  return result;
}

double sub_2FCFA8(void *a1, double a2)
{
  v4 = sub_767030();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v69 = &v61 - v9;
  __chkstk_darwin(v10);
  v12 = &v61 - v11;
  __chkstk_darwin(v13);
  v70 = &v61 - v14;
  v15 = sub_766D70();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v73 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v64 = &v61 - v19;
  v20 = sub_7670D0();
  swift_allocObject();
  v72 = sub_767090();
  v74[0] = v72;
  v66 = v20;
  sub_7665D0();
  v67 = a1;
  v21 = [a1 traitCollection];
  if (qword_93C1C0 != -1)
  {
    swift_once();
  }

  v22 = sub_769A00();
  v23 = &qword_93D000;
  v65 = v7;
  v68 = v15;
  v71 = v16;
  if (v22 & 1) != 0 || (v23 = &qword_93D000, (sub_7699D0()))
  {

    sub_BEB8(v75);
LABEL_6:
    v24 = v5;
    v25._countAndFlagsBits = 0x525F4F545F504154;
    v25._object = 0xEB00000000455441;
    goto LABEL_7;
  }

  v63 = "ion";
  v80._object = 0x80000000007C9F90;
  v80._countAndFlagsBits = 0xD000000000000016;
  v84._countAndFlagsBits = 0;
  v84._object = 0xE000000000000000;
  sub_75B750(v80, v84);
  sub_767020();
  if (qword_93D758 != -1)
  {
    swift_once();
  }

  v37 = sub_7666D0();
  sub_BE38(v37, qword_99EE00);
  v38 = v69;
  sub_766FF0();
  v39 = *(v5 + 8);
  v39(v65, v4);
  sub_767010();
  v39(v38, v4);
  sub_767000();
  v39(v12, v4);
  v7 = v65;
  sub_766D50();
  v40 = v64;
  sub_766D90();
  sub_766D60();
  v42 = v41;
  sub_B170(v75, v76);
  sub_7673F0();
  v44 = v43;
  sub_B170(qword_999FA0, qword_999FB8);
  sub_766710();
  v46 = v45;

  (*(v71 + 8))(v40, v68);
  sub_BEB8(v75);
  v23 = &qword_93D000;
  if (v44 + v42 + v46 > a2)
  {
    goto LABEL_6;
  }

  v24 = v5;
  v25._object = (v63 | 0x8000000000000000);
  v25._countAndFlagsBits = 0xD000000000000016;
LABEL_7:
  v82._countAndFlagsBits = 0;
  v82._object = 0xE000000000000000;
  v79._countAndFlagsBits = sub_75B750(v25, v82);
  v26 = v12;
  v83._countAndFlagsBits = 0;
  v83._object = 0xE000000000000000;
  sub_75B750(v79, v83);

  sub_767020();
  if (v23[235] != -1)
  {
    swift_once();
  }

  v27 = sub_7666D0();
  sub_BE38(v27, qword_99EE00);
  v28 = v69;
  sub_766FF0();
  v29 = v7;
  v30 = *(v24 + 8);
  v30(v29, v4);
  v31 = 1;
  sub_767010();
  v30(v28, v4);
  sub_767000();
  v62 = v26;
  v63 = v4;
  v30(v26, v4);
  sub_766D50();
  v32 = v73;
  sub_766D90();
  sub_337B0(qword_999FA0, v75);
  v33 = v68;
  v77[3] = v68;
  v77[4] = &protocol witness table for LabelPlaceholder;
  v34 = sub_B1B4(v77);
  v35 = v71;
  (*(v71 + 16))(v34, v32, v33);
  v74[0] = v72;
  sub_7665D0();
  v36 = [v67 traitCollection];
  if ((sub_769A00() & 1) == 0)
  {
    if (sub_7699D0())
    {
      v31 = 1;
      v35 = v71;
    }

    else
    {
      v81._object = 0x80000000007C9F90;
      v81._countAndFlagsBits = 0xD000000000000016;
      v85._countAndFlagsBits = 0;
      v85._object = 0xE000000000000000;
      sub_75B750(v81, v85);
      v47 = v65;
      sub_767020();
      v48 = v69;
      sub_766FF0();
      v49 = v63;
      v30(v47, v63);
      v50 = v62;
      sub_767010();
      v30(v48, v49);
      sub_767000();
      v30(v50, v49);
      sub_766D50();
      v51 = v64;
      sub_766D90();
      sub_766D60();
      v53 = v52;
      sub_B170(v78, v78[3]);
      sub_7673F0();
      v55 = v54;
      sub_B170(v75, v76);
      sub_766710();
      v57 = v56;
      v35 = v71;
      (*(v71 + 8))(v51, v33);
      v31 = v55 + v53 + v57 > a2;
    }
  }

  sub_5AA3E4(v31, v74);
  sub_B170(v74, v74[3]);
  sub_7673F0();
  v59 = v58;

  (*(v35 + 8))(v73, v33);
  sub_BEB8(v74);
  sub_33860(v75);
  return v59;
}

uint64_t sub_2FD90C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

char *sub_2FD950()
{
  v1 = *(v0 + 16);
  if (!(v1 >> 62))
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:
    v13 = *&_swiftEmptyArrayStorage[2];
    if (!v13)
    {
    }

LABEL_14:
    v14 = _swiftEmptyArrayStorage[4];
    v15 = v13 - 1;
    if (v13 != 1)
    {
      v16 = &_swiftEmptyArrayStorage[5];
      do
      {
        v17 = *v16++;
        v18 = v17;
        if (v14 < v17)
        {
          v14 = v18;
        }

        --v15;
      }

      while (v15);
    }
  }

  v2 = sub_76A860();
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  result = sub_143C5C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = sub_76A770();
      }

      else
      {
        v5 = *(v1 + 8 * i + 32);
      }

      v6 = v5;
      [v5 contentOffset];
      v8 = v7;
      [v6 adjustedContentInset];
      v10 = v9;

      v12 = *&_swiftEmptyArrayStorage[2];
      v11 = *&_swiftEmptyArrayStorage[3];
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        sub_143C5C((v11 > 1), v12 + 1, 1);
      }

      *&_swiftEmptyArrayStorage[2] = v13;
      _swiftEmptyArrayStorage[v12 + 4] = v8 + v10;
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_2FDB14()
{

  sub_F704(*(v0 + 24));

  return swift_deallocClassInstance();
}

char *sub_2FDB78()
{
  result = sub_2FD950();
  v3 = *(v0 + 24);
  if (v3)
  {
    v4 = v2;

    v3(v5, v4);

    return sub_F704(v3);
  }

  return result;
}

unint64_t sub_2FDC00()
{
  result = qword_94F068;
  if (!qword_94F068)
  {
    sub_75C610();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94F068);
  }

  return result;
}

uint64_t sub_2FDC58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = a2;
  v5 = sub_7687C0();
  v41 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_760280();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&qword_94DDC0);
  v12 = sub_768F90();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v14 = [Strong presentedViewController];

  if (v14)
  {

    v15 = swift_unknownObjectUnownedLoadStrong();
    sub_2FE650(v3, v44);
    v16 = swift_allocObject();
    sub_2FE6D8(v44, (v16 + 2));
    v17 = v42;
    v16[3] = a1;
    v16[4] = v17;
    v16[5] = v12;
    aBlock[4] = sub_2FE710;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    aBlock[3] = &unk_88D0A8;
    v18 = _Block_copy(aBlock);

    [v15 dismissViewControllerAnimated:1 completion:v18];
    _Block_release(v18);
  }

  else
  {
    v19 = v42;
    v38 = v3;
    v39 = v9;
    v40 = v7;
    v37 = v12;
    v20 = sub_75C5F0();
    sub_75C5E0();
    if (sub_75C600())
    {
      type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
      v21 = type metadata accessor for StoreNavigationController();
      v22 = objc_allocWithZone(v21);
      *&v22[OBJC_IVAR____TtC18ASMessagesProvider25StoreNavigationController_objectGraph] = v19;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v45.receiver = v22;
      v45.super_class = v21;

      v24 = v11;
      v25 = objc_msgSendSuper2(&v45, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
      [v25 setDelegate:v25];
      sub_BE70(0, &qword_955FA0);
      swift_allocObject();
      v26 = swift_unknownObjectUnownedLoadStrong();
      swift_unknownObjectWeakInit();

      v27 = sub_76A1F0();
      sub_392A30(v20, v27);

      sub_BD88(&unk_93F5C0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_77D9F0;
      *(v28 + 32) = v20;
      sub_BE70(0, &qword_9434E0);
      v29 = v20;
      isa = sub_769450().super.isa;

      [v25 setViewControllers:isa];

      v31 = swift_unknownObjectUnownedLoadStrong();
      [v31 presentViewController:v25 animated:0 completion:0];

      v20 = v25;
      v11 = v24;
    }

    else
    {
      v31 = swift_unknownObjectUnownedLoadStrong();
      [v31 presentViewController:v20 animated:0 completion:0];
    }

    v32 = v39;
    v33 = v40;

    (*(v32 + 8))(v11, v8);
    v34 = v41;
    (*(v41 + 104))(v33, enum case for ActionOutcome.performed(_:), v5);
    v12 = v37;
    sub_768F60();
    (*(v34 + 8))(v33, v5);
  }

  return v12;
}

uint64_t sub_2FE198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a1;
  v6 = sub_7687C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_760280();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_75C5F0();
  sub_75C5E0();
  if (sub_75C600())
  {
    type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
    v15 = type metadata accessor for StoreNavigationController();
    v29 = v10;
    v16 = v15;
    v17 = objc_allocWithZone(v15);
    v30 = a4;
    v18 = v17;
    *&v17[OBJC_IVAR____TtC18ASMessagesProvider25StoreNavigationController_objectGraph] = a3;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v32.receiver = v18;
    v32.super_class = v16;

    v20 = objc_msgSendSuper2(&v32, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
    [v20 setDelegate:v20];
    sub_BE70(0, &qword_955FA0);
    swift_allocObject();
    v28 = v6;
    Strong = swift_unknownObjectUnownedLoadStrong();
    swift_unknownObjectWeakInit();

    v10 = v29;
    v22 = sub_76A1F0();
    sub_392A30(v14, v22);

    sub_BD88(&unk_93F5C0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_77D9F0;
    *(v23 + 32) = v14;
    sub_BE70(0, &qword_9434E0);
    v24 = v14;
    isa = sub_769450().super.isa;

    [v20 setViewControllers:isa];

    v6 = v28;
    v26 = swift_unknownObjectUnownedLoadStrong();
    [v26 presentViewController:v20 animated:0 completion:0];

    v14 = v20;
  }

  else
  {
    v26 = swift_unknownObjectUnownedLoadStrong();
    [v26 presentViewController:v14 animated:0 completion:0];
  }

  (*(v11 + 8))(v13, v10);
  (*(v7 + 104))(v9, enum case for ActionOutcome.performed(_:), v6);
  sub_768F60();
  return (*(v7 + 8))(v9, v6);
}

void sub_2FE580()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong presentedViewController];

    if (v2)
    {
      [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_2FE610()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2FE688()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_2FE720(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_2FE784(void *a1, double a2)
{
  v4 = sub_75CF00();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_75FC00())
  {
    swift_getKeyPath();
    sub_75C7B0();

    v8 = v12;
    v9 = [v12 userInterfaceIdiom];

    if (v9 == &dword_0 + 2)
    {
    }

    else
    {
      type metadata accessor for SmallLockupView();
      sub_2221DC(v7);
      swift_getObjectType();
      a2 = sub_1FE304(v7, a1);

      (*(v5 + 8))(v7, v4);
    }
  }

  return a2;
}

double sub_2FE964(uint64_t a1)
{
  v3 = sub_762760();
  __chkstk_darwin(v3 - 8);
  v5 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_762780();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_75C840();
  v61 = *(v10 - 8);
  v62 = v10;
  __chkstk_darwin(v10);
  v59 = v11;
  v60 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_7656C0();
  v57 = *(v12 - 8);
  v58 = v12;
  __chkstk_darwin(v12);
  v56 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_762D10();
  v64 = *(v71 - 8);
  __chkstk_darwin(v71);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75FC20();
  sub_2FF564(&unk_94ABE0, &type metadata accessor for GameCenterReengagement);
  sub_75C750();
  v16 = v88[0];
  if (!v88[0])
  {
    return 0.0;
  }

  v50 = v1;
  v52 = v5;
  v54 = v7;
  v51 = sub_527DE4();
  v63 = sub_75FBE0();
  v49[1] = v17;
  v18 = sub_26F08();
  v70 = v16;
  if (qword_93DB70 != -1)
  {
    swift_once();
  }

  v53 = v9;
  v55 = v6;
  v19 = sub_7666D0();
  sub_BE38(v19, qword_99FA48);
  swift_getKeyPath();
  sub_75C7B0();

  v20 = v88[0];
  sub_769E10();

  v21 = sub_7653B0();
  v88[3] = v21;
  v68 = sub_2FF564(&qword_93F9B0, &type metadata accessor for Feature);
  v88[4] = v68;
  v22 = sub_B1B4(v88);
  v23 = *(v21 - 8);
  v24 = *(v23 + 104);
  v69 = a1;
  v67 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v65 = v23 + 104;
  v66 = v24;
  v24(v22);
  sub_765C30();
  sub_BEB8(v88);
  sub_762D00();
  sub_762CE0();
  v63 = v18;
  v64 = *(v64 + 8);
  (v64)(v15, v71);
  sub_75FBF0();
  if (qword_93DB78 != -1)
  {
    swift_once();
  }

  sub_BE38(v19, qword_99FA60);
  swift_getKeyPath();
  sub_75C7B0();

  v25 = v87[0];
  sub_769E10();

  v87[3] = v21;
  v87[4] = v68;
  v26 = sub_B1B4(v87);
  v66(v26, v67, v21);
  sub_765C30();
  sub_BEB8(v87);
  sub_762D00();
  sub_762CE0();
  (v64)(v15, v71);
  sub_75FC10();
  if (qword_93DB80 != -1)
  {
    swift_once();
  }

  sub_BE38(v19, qword_99FA78);
  swift_getKeyPath();
  v27 = v69;
  sub_75C7B0();

  v28 = v86[0];
  sub_769E10();

  v86[3] = v21;
  v86[4] = v68;
  v29 = sub_B1B4(v86);
  v66(v29, v67, v21);
  sub_765C30();
  sub_BEB8(v86);
  sub_762D00();
  sub_762CE0();
  (v64)(v15, v71);
  swift_getKeyPath();
  v30 = v56;
  v31 = v27;
  sub_75C7B0();

  sub_765630();
  (*(v57 + 8))(v30, v58);
  v32 = sub_7670D0();
  swift_allocObject();
  v33 = sub_7670A0();
  v35 = v60;
  v34 = v61;
  v36 = v62;
  (*(v61 + 16))(v60, v31, v62);
  v37 = (*(v34 + 80) + 24) & ~*(v34 + 80);
  v38 = (v59 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v39 + 16) = v70;
  (*(v34 + 32))(v39 + v37, v35, v36);
  *(v39 + v38) = v50;
  swift_allocObject();

  v40 = sub_767090();
  v41 = swift_unknownObjectRetain();
  sub_48E270(v41, v52);
  swift_unknownObjectRelease();
  v85 = 0;
  *&v83[40] = 0u;
  v84 = 0u;
  sub_134D8(v88, v83);
  sub_134D8(v87, &v82);
  sub_134D8(v86, &v81);
  v79 = v32;
  v80 = &protocol witness table for LayoutViewPlaceholder;
  v71 = v33;
  v78 = v33;
  swift_getKeyPath();

  sub_75C7B0();

  v42 = v75;
  sub_767500();

  swift_allocObject();
  v43 = sub_7670B0();
  v76 = v32;
  v77 = &protocol witness table for LayoutViewPlaceholder;
  v74 = &protocol witness table for LayoutViewPlaceholder;
  v75 = v43;
  v73 = v32;
  v72 = v40;

  v44 = v53;
  sub_762770();
  swift_getKeyPath();
  sub_75C7B0();

  sub_2FF564(&unk_94F080, &type metadata accessor for GameCenterReengagementLayout);
  v45 = v55;
  sub_7665A0();
  v47 = v46;

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  (*(v54 + 8))(v44, v45);
  sub_BEB8(v86);
  sub_BEB8(v87);
  sub_BEB8(v88);
  return v47;
}

uint64_t sub_2FF3D8()
{
  v1 = sub_75C840();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

double sub_2FF4A8(void *a1, double a2)
{
  sub_75C840();

  return sub_2FE784(a1, a2);
}

uint64_t sub_2FF564(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2FF5AC()
{
  v0 = sub_764930();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&unk_94F1F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v17 - v9;
  swift_getKeyPath();
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

  v11 = *(v5 + 8);
  v11(v10, v4);
  v12 = (*(v1 + 88))(v3, v0);
  if (v12 == enum case for Shelf.ContentType.annotation(_:))
  {
    v13 = 1;
    return v13 & 1;
  }

  if (v12 != enum case for Shelf.ContentType.productBadge(_:))
  {
    v13 = sub_61BEA4();
    (*(v1 + 8))(v3, v0);
    return v13 & 1;
  }

  result = sub_75C7F0();
  v15 = result + 1;
  if (!__OFADD__(result, 1))
  {
    swift_getKeyPath();
    sub_75C7B0();

    swift_getKeyPath();
    sub_768750();

    v11(v7, v4);
    v16 = *(v17[1] + 16);

    v13 = v15 < v16;
    return v13 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_2FF874()
{
  sub_BEB8(v0 + 16);

  return swift_deallocClassInstance();
}

double sub_2FF8DC(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v58 = a3;
  v57 = a2;
  v65 = a1;
  v63 = sub_75FE00();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_762D10();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_75FDA0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v64 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v52 - v12;
  __chkstk_darwin(v14);
  v16 = &v52 - v15;
  v17 = sub_BD88(&qword_94DF10);
  __chkstk_darwin(v17 - 8);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v52 - v21;
  v60 = sub_75FDE0();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v56 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v66 = &v52 - v25;
  swift_getObjectType();
  sub_3030B0();
  (*(v9 + 56))(v22, 1, 1, v8);
  sub_1ED18(v22, v19, &qword_94DF10);
  v26 = *(v9 + 48);
  if (v26(v19, 1, v8) == 1)
  {
    (*(v4 + 224))();
    if (v26(v19, 1, v8) != 1)
    {
      sub_10A2C(v19, &qword_94DF10);
    }
  }

  else
  {
    (*(v9 + 32))(v16, v19, v8);
  }

  v27 = *(v9 + 16);
  v27(v13, v16, v8);
  v28 = (*(v9 + 88))(v13, v8);
  if (v28 == enum case for MixedMediaLockupLayout.LockupPosition.top(_:))
  {
    if (qword_93C8C0 != -1)
    {
      swift_once();
    }

    sub_134D8(qword_99C688, &v72);
  }

  else if (v28 == enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:))
  {
    if (qword_93C8B8 != -1)
    {
      swift_once();
    }

    sub_134D8(qword_99C660, &v72);
  }

  else
  {
    if (qword_93C8C0 != -1)
    {
      swift_once();
    }

    sub_134D8(qword_99C688, &v72);
    (*(v9 + 8))(v13, v8);
  }

  v27(v64, v16, v8);
  sub_134D8(&v72, v71);
  sub_BE70(0, &qword_93F900);
  if (qword_93DA80 != -1)
  {
    swift_once();
  }

  v29 = sub_7666D0();
  sub_BE38(v29, qword_99F778);
  v55 = a4;
  v30 = [a4 traitCollection];
  sub_769E10();

  if (qword_93DCE0 != -1)
  {
    swift_once();
  }

  v31 = sub_766CA0();
  v32 = sub_BE38(v31, qword_99FDE8);
  v69 = v31;
  v70 = &protocol witness table for StaticDimension;
  v33 = sub_B1B4(v68);
  (*(*(v31 - 8) + 16))(v33, v32, v31);
  v34 = v65;
  sub_75FDC0();
  sub_BEB8(&v72);
  (*(v9 + 8))(v16, v8);
  sub_10A2C(v22, &qword_94DF10);
  v35 = sub_7670D0();
  swift_allocObject();
  v36 = sub_767090();
  if (v58)
  {
    v37 = HIBYTE(v58) & 0xF;
    if ((v58 & 0x2000000000000000) == 0)
    {
      v37 = v57 & 0xFFFFFFFFFFFFLL;
    }

    v38 = v55;
    if (!v37 && (v34 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_27:

    v39 = [v38 traitCollection];
    sub_769E10();

    v40 = sub_7653B0();
    *(&v73 + 1) = v40;
    v74 = sub_3054B4(&qword_93F9B0, &type metadata accessor for Feature);
    v41 = sub_B1B4(&v72);
    (*(*(v40 - 8) + 104))(v41, enum case for Feature.measurement_with_labelplaceholder(_:), v40);
    sub_765C30();
    sub_BEB8(&v72);
    v42 = v52;
    sub_762D00();
    sub_762CE0();
    (*(v53 + 8))(v42, v54);
    goto LABEL_28;
  }

  v38 = v55;
  if (v34)
  {
    goto LABEL_27;
  }

LABEL_25:
  v74 = 0;
  v72 = 0u;
  v73 = 0u;
LABEL_28:
  v43 = v59;
  v44 = v66;
  v45 = v60;
  (*(v59 + 16))(v56, v66, v60);
  v71[3] = v35;
  v71[4] = &protocol witness table for LayoutViewPlaceholder;
  v71[0] = v36;
  swift_allocObject();

  v46 = sub_7670B0();
  v69 = v35;
  v70 = &protocol witness table for LayoutViewPlaceholder;
  v68[0] = v46;
  sub_1ED18(&v72, v67, &qword_9417D0);
  v47 = v61;
  sub_75FDF0();
  sub_3054B4(&qword_94F1B0, &type metadata accessor for MixedMediaLockupLayout);
  v48 = v63;
  sub_7665A0();
  v50 = v49;

  (*(v62 + 8))(v47, v48);
  sub_10A2C(&v72, &qword_9417D0);
  (*(v43 + 8))(v44, v45);
  return v50;
}

unint64_t sub_3003DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, void, uint64_t, uint64_t), uint64_t a5, void *a6)
{
  v7 = v6;
  v237 = a5;
  v246 = a4;
  v257 = a3;
  ObjectType = swift_getObjectType();
  v10 = sub_BD88(&qword_946D98);
  __chkstk_darwin(v10 - 8);
  v219 = &v215 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v224 = &v215 - v13;
  v236 = sub_764A60();
  v248 = *(v236 - 8);
  __chkstk_darwin(v236);
  v15 = &v215 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_BD88(&unk_948710);
  __chkstk_darwin(v16 - 8);
  v232 = &v215 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v233 = &v215 - v19;
  v20 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v20 - 8);
  v231 = &v215 - v21;
  v22 = sub_75A6B0();
  __chkstk_darwin(v22 - 8);
  v223 = &v215 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v222 = &v215 - v25;
  __chkstk_darwin(v26);
  v228 = &v215 - v27;
  __chkstk_darwin(v28);
  v227 = &v215 - v29;
  v230 = sub_75A6E0();
  v229 = *(v230 - 8);
  __chkstk_darwin(v230);
  v221 = &v215 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v226 = &v215 - v32;
  v235 = sub_75DC30();
  v234 = *(v235 - 8);
  __chkstk_darwin(v235);
  v225 = &v215 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v250 = &v215 - v35;
  v218 = type metadata accessor for ScreenshotDisplayConfiguration();
  v217 = *(v218 - 8);
  __chkstk_darwin(v218);
  v242 = &v215 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = sub_766690();
  v265 = *(v256 - 8);
  __chkstk_darwin(v256);
  v247 = &v215 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = sub_75C9A0();
  v239 = *(v240 - 8);
  __chkstk_darwin(v240);
  v238 = &v215 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_75C930();
  v261 = *(v39 - 8);
  v262 = v39;
  __chkstk_darwin(v39);
  v216 = &v215 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v251 = (&v215 - v42);
  __chkstk_darwin(v43);
  v260 = &v215 - v44;
  v259 = sub_760770();
  v266 = *(v259 - 8);
  __chkstk_darwin(v259);
  v241 = &v215 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v267 = &v215 - v47;
  v245 = sub_75FA00();
  v244 = *(v245 - 8);
  __chkstk_darwin(v245);
  v243 = &v215 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_BD88(&unk_948720);
  __chkstk_darwin(v49 - 8);
  v220 = &v215 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v255 = &v215 - v52;
  __chkstk_darwin(v53);
  v268 = &v215 - v54;
  v55 = sub_BD88(&unk_9457D0);
  __chkstk_darwin(v55 - 8);
  v264 = &v215 - v56;
  v57 = sub_BD88(&unk_94AC40);
  __chkstk_darwin(v57 - 8);
  v269 = &v215 - v58;
  v59 = sub_BD88(&unk_9457E0);
  __chkstk_darwin(v59 - 8);
  v263 = &v215 - v60;
  v61 = sub_BD88(&unk_94A780);
  __chkstk_darwin(v61 - 8);
  v258 = &v215 - v62;
  v63 = sub_BD88(&unk_948730);
  __chkstk_darwin(v63 - 8);
  v65 = (&v215 - v64);
  v66 = sub_75BC60();
  v67 = *(v66 - 8);
  __chkstk_darwin(v66);
  v69 = &v215 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_BD88(&qword_94F1A8);
  __chkstk_darwin(v70 - 8);
  v72 = &v215 - v71;
  v73 = sub_BD88(&qword_94DF10);
  *&v74 = __chkstk_darwin(v73 - 8).n128_u64[0];
  v76 = &v215 - v75;
  v77 = [a6 snapshotPageTraitEnvironment];
  *&v7[OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_pageTraits] = v77;
  swift_unknownObjectRelease();
  v253 = a1;
  sub_75BC50();
  v78 = (*(v67 + 48))(v72, 1, v66);
  v254 = v7;
  v249 = v15;
  if (v78 == 1)
  {
    sub_10A2C(v72, &qword_94F1A8);
    v79 = sub_75FDA0();
    (*(*(v79 - 8) + 56))(v76, 1, 1, v79);
  }

  else
  {
    (*(v67 + 16))(v69, v72, v66);
    v80 = (*(v67 + 88))(v69, v66);
    if (v80 == enum case for MixedMediaLockup.LockupPosition.top(_:))
    {
      v81 = enum case for MixedMediaLockupLayout.LockupPosition.top(_:);
      v82 = sub_75FDA0();
      (*(*(v82 - 8) + 104))(v76, v81, v82);
    }

    else
    {
      v83 = v80;
      v84 = enum case for MixedMediaLockup.LockupPosition.bottom(_:);
      v82 = sub_75FDA0();
      v85 = *(*(v82 - 8) + 104);
      if (v83 == v84)
      {
        v85(v76, enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:), v82);
      }

      else
      {
        v85(v76, enum case for MixedMediaLockupLayout.LockupPosition.top(_:), v82);
        (*(v67 + 8))(v69, v66);
      }
    }

    (*(v67 + 8))(v72, v66);
    sub_75FDA0();
    (*(*(v82 - 8) + 56))(v76, 0, 1, v82);
    v7 = v254;
  }

  v86 = ObjectType;
  v87 = OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_overrideLockupPosition;
  swift_beginAccess();
  sub_303040(v76, &v7[v87]);
  swift_endAccess();
  [v7 setNeedsLayout];
  sub_10A2C(v76, &qword_94DF10);
  v88 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_lockupView];
  v89 = sub_BD88(&unk_948740);
  (*(*(v89 - 8) + 56))(v65, 1, 1, v89);
  v90 = sub_758C70();
  v91 = v258;
  (*(*(v90 - 8) + 56))(v258, 1, 1, v90);
  v92 = sub_75BD30();
  v93 = v263;
  (*(*(v92 - 8) + 56))(v263, 1, 1, v92);
  v94 = sub_BD88(&unk_9457F0);
  v95 = v269;
  (*(*(v94 - 8) + 56))(v269, 1, 1, v94);
  v96 = sub_765870();
  v97 = v264;
  (*(*(v96 - 8) + 56))(v264, 1, 1, v96);
  v98 = v88;
  v99 = v253;
  sub_4A18A4(v253, v98, v65, v257, 0, 0, v91, v93, v97, v95);
  sub_10A2C(v97, &unk_9457D0);
  v98[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_1FD89C();
  [v98 setNeedsLayout];

  sub_10A2C(v95, &unk_94AC40);
  sub_10A2C(v93, &unk_9457E0);
  sub_10A2C(v91, &unk_94A780);
  v100 = sub_10A2C(v65, &unk_948730);
  v101 = (*(v86 + 192))(v100);
  v264 = 0;
  v102 = v268;
  if ((v101 & 1) == 0)
  {
    goto LABEL_19;
  }

  result = sub_75BC70();
  if (result >> 62)
  {
    v104 = result;
    v105 = sub_76A860();
    result = v104;
    if (v105)
    {
      goto LABEL_13;
    }

LABEL_18:

    v264 = 0;
    goto LABEL_19;
  }

  if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((result & 0xC000000000000001) != 0)
  {
    v264 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_90;
    }

    v264 = *(result + 32);
  }

LABEL_19:
  if (((*(v86 + 216))() & 1) == 0)
  {
    v106 = 0;
    v263 = 0;
    goto LABEL_30;
  }

  result = sub_75BCF0();
  if (!(result >> 62))
  {
    if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_22;
    }

LABEL_28:

    v263 = 0;
    goto LABEL_29;
  }

  v107 = result;
  v108 = sub_76A860();
  result = v107;
  if (!v108)
  {
    goto LABEL_28;
  }

LABEL_22:
  if ((result & 0xC000000000000001) != 0)
  {
    v263 = sub_76A770();
    goto LABEL_25;
  }

  if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v263 = *(result + 32);

LABEL_25:

LABEL_29:
  v106 = sub_75BC80();
LABEL_30:
  v269 = v106;
  v258 = sub_75BCA0();
  v109 = v243;
  sub_75F9E0();
  sub_3054B4(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions);
  v110 = v245;
  v111 = sub_76A520();
  (*(v244 + 8))(v109, v110);
  if (v111)
  {
    v112 = 1;
  }

  else
  {
    v113 = ASKDeviceTypeGetCurrent();
    sub_2BA684();

    v112 = 0;
  }

  v114 = *(v265 + 56);
  v265 += 56;
  v246 = v114;
  v114(v102, v112, 1, v256);
  v115 = v267;
  sub_75BCC0();
  v99 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_mediaView];
  v116 = sub_75BCA0();
  v117 = sub_75BC80();
  v118 = ASKDeviceTypeGetCurrent();
  v119 = v260;
  v121 = v263;
  v120 = v264;
  (*(v86 + 456))(v116, v117, v264, v263, v118, v115);

  v271[3] = &type metadata for CGFloat;
  v271[4] = &protocol witness table for CGFloat;
  v271[0] = 0x4021000000000000;
  sub_134D8(v271, v270);
  v97 = *(v261 + 16);
  (v97)(v251, v119, v262);
  if (v269 | v258)
  {
    sub_7666A0();
    v93 = v249;
    v122 = v120;
    v65 = &unk_90D000;
  }

  else
  {
    result = sub_55BABC(v120, v121, 0, 1);
    v122 = v120;
    if (result >> 62)
    {
      v192 = result;
      v123 = sub_76A860();
      result = v192;
    }

    else
    {
      v123 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    }

    v93 = v249;
    v65 = &unk_90D000;
    if (v123)
    {
      if ((result & 0xC000000000000001) != 0)
      {
        sub_76A770();
        goto LABEL_40;
      }

      if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
      {

LABEL_40:

        sub_765260();
        sub_7666A0();

        goto LABEL_43;
      }

LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    sub_7666A0();
  }

LABEL_43:
  sub_1ED18(v268, v255, &unk_948720);
  v124 = v238;
  sub_75C970();
  sub_BEB8(v271);
  v125 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_metrics;
  swift_beginAccess();
  v126 = v239;
  v127 = &v99[v125];
  v128 = v240;
  (*(v239 + 24))(v127, v124, v240);
  swift_endAccess();
  [v99 v65[463]];
  (*(v126 + 8))(v124, v128);
  if (v122)
  {
    v129 = sub_759690();
  }

  else
  {
    v129 = 0;
  }

  sub_7596B0();
  v130 = v242;
  sub_6C14C(v129, v242);

  v131 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayConfiguration;
  swift_beginAccess();
  sub_163BAC(v130, &v99[v131]);
  swift_endAccess();
  sub_559BA0();
  sub_161D14(v130);
  if (v122)
  {
    v122 = sub_759690();
  }

  v132 = v241;
  *&v99[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_platform] = v122;

  sub_559DA4();

  v133 = v266;
  v134 = v259;
  (*(v266 + 16))(v132, v267, v259);
  v135 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (*(v133 + 24))(&v99[v135], v132, v134);
  swift_endAccess();
  [v99 v65[463]];
  v136 = *(v133 + 8);
  v266 = v133 + 8;
  v251 = v136;
  v136(v132, v134);
  if (!v269)
  {
    if (!v263)
    {
      goto LABEL_94;
    }

    result = sub_765750();
    if (!(result >> 62))
    {
      if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_62;
      }

LABEL_93:

LABEL_94:
      v195 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
      v196 = *&v99[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView];
      if (v196)
      {
        [v196 removeFromSuperview];
        v197 = *&v99[v195];
      }

      else
      {
        v197 = 0;
      }

      v156 = v254;
      v157 = v248;
      *&v99[v195] = 0;

      v152 = v65;
      [v99 v65[463]];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_103;
      }

      v199 = Strong;
      sub_3054B4(&qword_93F500, type metadata accessor for VideoView);
      v200 = [v199 superview];
      if (v200)
      {
        v201 = v200;
        sub_BE70(0, &qword_93E550);
        v202 = v99;
        v203 = sub_76A1C0();

        v157 = v248;
        if ((v203 & 1) == 0)
        {
          goto LABEL_103;
        }

        v204 = swift_unknownObjectWeakLoadStrong();
        if (!v204)
        {
          goto LABEL_103;
        }

        v199 = v204;
        [v204 removeFromSuperview];
      }

LABEL_103:
      swift_unknownObjectWeakAssign();
      v205 = swift_unknownObjectWeakLoadStrong();
      if (v205)
      {
        v206 = v205;
        [v99 addSubview:v205];
      }

      sub_55A7A8();
      [v99 v65[463]];
      goto LABEL_106;
    }

LABEL_92:
    v193 = result;
    v194 = sub_76A860();
    result = v193;
    if (v194)
    {
LABEL_62:
      if ((result & 0xC000000000000001) != 0)
      {
        v255 = sub_76A770();
      }

      else
      {
        if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return result;
        }

        v255 = *(result + 32);
      }

      v159 = v216;
      v160 = v262;
      (v97)(v216, v260, v262);
      v161 = v261;
      v162 = (*(v261 + 88))(v159, v160);
      v163 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
      (*(v161 + 8))(v159, v160);
      if (v162 == v163)
      {
        v164 = 1;
        v156 = v254;
        v93 = v249;
        v165 = v224;
      }

      else
      {
        v167 = sub_765740();
        v165 = v224;
        sub_6C14C(v167, v224);

        v164 = 0;
        v156 = v254;
        v93 = v249;
      }

      v168 = v217;
      v169 = v218;
      (*(v217 + 56))(v165, v164, 1, v218);
      (*(v229 + 104))(v221, enum case for VideoFillMode.scaleAspectFill(_:), v230);
      sub_764BC0();
      sub_765260();
      v170 = v220;
      sub_7666A0();

      v246(v170, 0, 1, v256);
      sub_764B60();
      sub_764BA0();
      LODWORD(v265) = sub_764B70();
      sub_764B50();
      sub_764BB0();
      v171 = v219;
      sub_1ED18(v165, v219, &qword_946D98);
      if ((*(v168 + 48))(v171, 1, v169) == 1)
      {
        sub_10A2C(v171, &qword_946D98);
      }

      else
      {
        sub_161D14(v171);
      }

      sub_75DC10();
      sub_75C360();
      sub_768880();
      v172 = v271[0];
      sub_764B40();
      v173 = v231;
      sub_764BD0();
      v174 = sub_7570A0();
      (*(*(v174 - 8) + 56))(v173, 0, 1, v174);
      v175 = v233;
      sub_764B90();
      v176 = v232;
      sub_764B80();
      type metadata accessor for VideoView();
      sub_3054B4(&qword_93F500, type metadata accessor for VideoView);
      v265 = v172;
      v177 = sub_75C340();
      sub_10A2C(v176, &unk_948710);
      sub_10A2C(v175, &unk_948710);
      sub_10A2C(v173, &unk_93FD30);
      sub_10A2C(v271, &unk_9443A0);
      v178 = swift_unknownObjectWeakLoadStrong();
      if (!v178)
      {
        goto LABEL_79;
      }

      v179 = v178;
      v180 = [v178 superview];
      if (v180)
      {
        v181 = v180;
        sub_BE70(0, &qword_93E550);
        v182 = v99;
        v183 = sub_76A1C0();

        v156 = v254;
        if ((v183 & 1) == 0)
        {
          goto LABEL_79;
        }

        v184 = swift_unknownObjectWeakLoadStrong();
        if (!v184)
        {
          goto LABEL_79;
        }

        v179 = v184;
        [v184 removeFromSuperview];
      }

LABEL_79:
      swift_unknownObjectWeakAssign();
      v185 = swift_unknownObjectWeakLoadStrong();
      if (v185)
      {
        v186 = v185;
        [v99 addSubview:v185];
      }

      sub_55A7A8();
      [v99 setNeedsLayout];

      v187 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
      v188 = *&v99[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView];
      v157 = v248;
      v189 = v224;
      if (v188)
      {
        [v188 removeFromSuperview];
        v190 = *&v99[v187];
      }

      else
      {
        v190 = 0;
      }

      v191 = v235;
      *&v99[v187] = 0;

      v152 = &unk_90D000;
      [v99 setNeedsLayout];

      (*(v234 + 8))(v225, v191);
      sub_10A2C(v189, &qword_946D98);
      goto LABEL_106;
    }

    goto LABEL_93;
  }

  (*(v229 + 104))(v226, enum case for VideoFillMode.scaleAspectFill(_:), v230);

  sub_764BC0();
  sub_765260();
  v137 = v93;
  v138 = v255;
  sub_7666A0();

  v246(v138, 0, 1, v256);
  sub_764B60();
  sub_764BA0();
  sub_764B70();
  sub_764B50();
  sub_764BB0();
  v93 = v137;
  sub_75DC10();
  sub_75C360();
  sub_768880();
  sub_764B40();
  v139 = v231;
  sub_764BD0();
  v140 = sub_7570A0();
  (*(*(v140 - 8) + 56))(v139, 0, 1, v140);
  v141 = v233;
  sub_764B90();
  v142 = v232;
  sub_764B80();
  type metadata accessor for VideoView();
  sub_3054B4(&qword_93F500, type metadata accessor for VideoView);
  v143 = sub_75C340();
  sub_10A2C(v142, &unk_948710);
  sub_10A2C(v141, &unk_948710);
  sub_10A2C(v139, &unk_93FD30);
  sub_10A2C(v271, &unk_9443A0);
  v144 = swift_unknownObjectWeakLoadStrong();
  if (v144)
  {
    v145 = v144;
    v146 = [v144 superview];
    if (v146)
    {
      v147 = v146;
      sub_BE70(0, &qword_93E550);
      v148 = v99;
      v149 = sub_76A1C0();

      if ((v149 & 1) == 0)
      {
        goto LABEL_55;
      }

      v150 = swift_unknownObjectWeakLoadStrong();
      if (!v150)
      {
        goto LABEL_55;
      }

      v145 = v150;
      [v150 removeFromSuperview];
    }
  }

LABEL_55:
  swift_unknownObjectWeakAssign();
  v151 = swift_unknownObjectWeakLoadStrong();
  v152 = &unk_90D000;
  if (v151)
  {
    v153 = v151;
    [v99 addSubview:v151];
  }

  sub_55A7A8();
  [v99 setNeedsLayout];

  v154 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
  v155 = *&v99[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView];
  v156 = v254;
  v157 = v248;
  if (v155)
  {
    [v155 removeFromSuperview];
    v158 = *&v99[v154];
  }

  else
  {
    v158 = 0;
  }

  v166 = v235;
  *&v99[v154] = 0;

  [v99 setNeedsLayout];

  (*(v234 + 8))(v250, v166);
LABEL_106:
  v207 = v152;
  [v99 v152[463]];

  (*(v261 + 8))(v260, v262);
  v208 = *&v156[OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_taglineLabel];
  sub_764A20();
  sub_3054B4(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints);
  v209 = v236;
  v210 = sub_76A520();
  v211 = *(v157 + 8);
  v211(v93, v209);
  if ((v210 & 1) != 0 && ((*(ObjectType + 472))(v253), v212))
  {
    v213 = sub_769210();
    v207 = 9490432;
  }

  else
  {
    v213 = 0;
  }

  [v208 setText:v213];

  sub_764A20();
  v214 = sub_76A520();
  v211(v93, v209);
  v156[OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_alwaysIncludeTaglineSpace] = v214 & 1;
  [v156 *(v207 + 3704)];
  [v156 *(v207 + 3704)];

  v251(v267, v259);
  return sub_10A2C(v268, &unk_948720);
}

double sub_3028D0(uint64_t a1, void *a2)
{
  v27 = sub_75FDE0();
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75FE00();
  v28 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_762D10();
  v25 = *(v26 - 8);
  __chkstk_darwin(v26);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_3030B0();
  v12 = sub_7670D0();
  swift_allocObject();
  v13 = sub_767090();
  if (sub_75FDD0())
  {
    v23 = a1;
    v24 = v7;
    sub_BE70(0, &qword_93F900);
    if (qword_93DA80 != -1)
    {
      swift_once();
    }

    v14 = sub_7666D0();
    sub_BE38(v14, qword_99F778);
    v15 = [a2 traitCollection];
    sub_769E10();

    v16 = sub_7653B0();
    *(&v37 + 1) = v16;
    v38 = sub_3054B4(&qword_93F9B0, &type metadata accessor for Feature);
    v17 = sub_B1B4(&v36);
    (*(*(v16 - 8) + 104))(v17, enum case for Feature.measurement_with_labelplaceholder(_:), v16);
    sub_765C30();
    sub_BEB8(&v36);
    sub_762D00();
    sub_762CE0();
    (*(v25 + 8))(v11, v26);
    v7 = v24;
    a1 = v23;
  }

  else
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
  }

  (*(v4 + 16))(v6, a1, v27);
  v34 = v12;
  v35 = &protocol witness table for LayoutViewPlaceholder;
  v33 = v13;
  swift_allocObject();

  v18 = sub_7670B0();
  v31 = v12;
  v32 = &protocol witness table for LayoutViewPlaceholder;
  v30 = v18;
  sub_1ED18(&v36, v29, &qword_9417D0);
  sub_75FDF0();
  sub_3054B4(&qword_94F1B0, &type metadata accessor for MixedMediaLockupLayout);
  sub_7665A0();
  v20 = v19;

  (*(v28 + 8))(v9, v7);
  sub_10A2C(&v36, &qword_9417D0);
  return v20;
}

void sub_302E0C(void *a1)
{
  type metadata accessor for SmallLockupView();
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v2 = sub_75CF00();
  v3 = sub_BE38(v2, qword_99B898);
  swift_getObjectType();
  sub_1FE304(v3, a1);
}

void sub_302F0C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_lockupView);
  sub_219128(a1, a2);
}

uint64_t sub_303040(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_94DF10);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_3030B0()
{
  v0 = sub_75C9A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766690();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = ASKDeviceTypeGetCurrent();
  sub_2BA684();

  sub_558ED0(v7, v3);
  sub_75C9D0();
  sub_3054B4(&qword_946D78, &type metadata accessor for LockupMediaLayout);
  sub_766ED0();
  v10 = v9;
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v10;
}

double sub_3032BC(char *a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v135 = a5;
  v126 = sub_75FE00();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v124 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_762D10();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v105 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_75FDA0();
  v136 = *(v131 - 8);
  __chkstk_darwin(v131);
  v132 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v109 = &v103 - v12;
  __chkstk_darwin(v13);
  v110 = &v103 - v14;
  v123 = sub_75FDE0();
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v119 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v134 = &v103 - v17;
  v118 = sub_75C930();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v116 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_BD88(&unk_948720);
  __chkstk_darwin(v19 - 8);
  v115 = &v103 - v20;
  v121 = sub_760770();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v133 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_75BC60();
  v130 = *(v113 - 8);
  __chkstk_darwin(v113);
  v104 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_BD88(&qword_94F1A8);
  __chkstk_darwin(v23 - 8);
  v129 = &v103 - v24;
  v25 = sub_BD88(&qword_94DF10);
  __chkstk_darwin(v25 - 8);
  v114 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v137 = &v103 - v28;
  v29 = sub_75FA00();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v103 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75F9E0();
  sub_3054B4(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions);
  v33 = sub_76A520();
  v34 = *(v30 + 8);
  v34(v32, v29);
  v35 = *(v5 + 472);
  v128 = a1;
  v36 = a1;
  v37 = v5;
  v112 = v5 + 472;
  v111 = v35;
  v127 = (v35)(v36);
  v39 = v38;
  sub_75F9D0();
  v40 = sub_76A520();
  v34(v32, v29);
  if ((v33 & 1) == 0)
  {
    sub_2FF8DC(v40 & 1, v127, v39, v135);

    return a2;
  }

  v41 = v128;
  v127 = sub_75BCA0();
  v42 = (*(v5 + 216))();
  v43 = v5;
  if (v42)
  {
    v108 = sub_75BC80();
  }

  else
  {
    v108 = 0;
  }

  v44 = v131;
  v45 = v136;
  v46 = v130;
  v47 = v129;
  if (((*(v5 + 192))() & 1) == 0)
  {
LABEL_16:
    v130 = 0;
    if ((v42 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  v48 = v41;
  v49 = sub_75BC70();
  if (v49 >> 62)
  {
    v48 = v49;
    v50 = sub_76A860();
    v49 = v48;
    if (v50)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  if (!*(&dword_10 + (v49 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_9:
  if ((v49 & 0xC000000000000001) != 0)
  {
    v130 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v49 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_61;
    }

    v130 = *(v49 + 32);
  }

  if ((v42 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_17:
  v48 = v41;
  v51 = sub_75BCF0();
  if (v51 >> 62)
  {
    v52 = v51;
    v53 = sub_76A860();
    v51 = v52;
    if (v53)
    {
      goto LABEL_19;
    }
  }

  else if (*(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_19:
    if ((v51 & 0xC000000000000001) != 0)
    {
      v129 = sub_76A770();
      goto LABEL_22;
    }

    if (*(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8)))
    {
      v129 = *(v51 + 32);

LABEL_22:

      goto LABEL_26;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    swift_once();
    goto LABEL_44;
  }

LABEL_25:
  v129 = 0;
LABEL_26:
  v54 = (v111)(v41);
  v131 = v55;
  sub_75BC50();
  v56 = v113;
  v57 = (*(v46 + 48))(v47, 1, v113);
  v112 = v54;
  if (v57 == 1)
  {
    sub_10A2C(v47, &qword_94F1A8);
    v58 = 1;
  }

  else
  {
    v59 = v104;
    (*(v46 + 16))(v104, v47, v56);
    v60 = (*(v46 + 88))(v59, v56);
    if (v60 == enum case for MixedMediaLockup.LockupPosition.top(_:))
    {
      (*(v45 + 104))(v137, enum case for MixedMediaLockupLayout.LockupPosition.top(_:), v44);
    }

    else
    {
      v61 = *(v45 + 104);
      if (v60 == enum case for MixedMediaLockup.LockupPosition.bottom(_:))
      {
        v61(v137, enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:), v44);
      }

      else
      {
        v61(v137, enum case for MixedMediaLockupLayout.LockupPosition.top(_:), v44);
        (*(v46 + 8))(v104, v56);
      }
    }

    (*(v46 + 8))(v47, v56);
    v58 = 0;
  }

  (*(v45 + 56))(v137, v58, 1, v44);
  v62 = v133;
  sub_75BCC0();
  v63 = ASKDeviceTypeGetCurrent();
  v113 = type metadata accessor for LockupMediaView();
  v64 = sub_766690();
  v65 = v115;
  (*(*(v64 - 8) + 56))(v115, 1, 1, v64);
  v66 = *(v37 + 456);
  v67 = v116;
  v68 = v127;
  v69 = v108;
  v70 = v130;
  v71 = v43;
  v72 = v129;
  v128 = v63;
  v111 = v71;
  v66(v127, v108, v130, v129, v63, v62);
  v73 = v135;
  swift_getObjectType();
  sub_161888(v68, v69, v70, v72, v65, v67, v73, v62);
  (*(v117 + 8))(v67, v118);
  sub_10A2C(v65, &unk_948720);
  v74 = v114;
  sub_1ED18(v137, v114, &qword_94DF10);
  v75 = v136;
  v76 = *(v136 + 48);
  v77 = v136;
  if (v76(v74, 1, v44) == 1)
  {
    v41 = v110;
    v111[28]();
    v78 = v76(v74, 1, v44);
    v79 = v109;
    v80 = v131;
    if (v78 != 1)
    {
      sub_10A2C(v74, &qword_94DF10);
    }
  }

  else
  {
    v41 = v110;
    (*(v75 + 32))(v110, v74, v44);
    v79 = v109;
    v80 = v131;
  }

  v48 = *(v77 + 16);
  v48(v79, v41, v44);
  v81 = (*(v77 + 88))(v79, v44);
  if (v81 == enum case for MixedMediaLockupLayout.LockupPosition.top(_:))
  {
    v43 = v80;
    if (qword_93C8C0 != -1)
    {
      swift_once();
    }

    v82 = qword_99C688;
    goto LABEL_45;
  }

  v43 = v80;
  if (v81 != enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:))
  {
    if (qword_93C8C0 != -1)
    {
      swift_once();
    }

    sub_134D8(qword_99C688, &v143);
    (*(v77 + 8))(v79, v44);
    goto LABEL_49;
  }

  if (qword_93C8B8 != -1)
  {
    goto LABEL_62;
  }

LABEL_44:
  v82 = qword_99C660;
LABEL_45:
  sub_134D8(v82, &v143);
LABEL_49:
  v83 = v135;
  v48(v132, v41, v44);
  sub_134D8(&v143, v142);
  sub_BE70(0, &qword_93F900);
  if (qword_93DA80 != -1)
  {
    swift_once();
  }

  v84 = sub_7666D0();
  sub_BE38(v84, qword_99F778);
  v85 = [v83 traitCollection];
  sub_769E10();

  if (qword_93DCE0 != -1)
  {
    swift_once();
  }

  v86 = sub_766CA0();
  v87 = sub_BE38(v86, qword_99FDE8);
  v140 = v86;
  v141 = &protocol witness table for StaticDimension;
  v88 = sub_B1B4(&v139);
  (*(*(v86 - 8) + 16))(v88, v87, v86);
  sub_75FDC0();
  sub_BEB8(&v143);
  (*(v136 + 8))(v41, v44);
  v89 = sub_7670D0();
  swift_allocObject();
  v90 = sub_767090();
  if (v43)
  {

    v91 = [v83 traitCollection];
    sub_769E10();

    v92 = sub_7653B0();
    *(&v144 + 1) = v92;
    v145 = sub_3054B4(&qword_93F9B0, &type metadata accessor for Feature);
    v93 = sub_B1B4(&v143);
    (*(*(v92 - 8) + 104))(v93, enum case for Feature.measurement_with_labelplaceholder(_:), v92);
    sub_765C30();
    sub_BEB8(&v143);
    v94 = v105;
    sub_762D00();
    sub_762CE0();
    (*(v106 + 8))(v94, v107);
  }

  else
  {
    v131 = 0;
    v145 = 0;
    v143 = 0u;
    v144 = 0u;
  }

  v95 = v128;
  v96 = v122;
  v97 = v134;
  v98 = v123;
  (*(v122 + 16))(v119, v134, v123);
  v142[3] = v89;
  v142[4] = &protocol witness table for LayoutViewPlaceholder;
  v142[0] = v90;
  swift_allocObject();

  v99 = sub_7670B0();
  v140 = v89;
  v141 = &protocol witness table for LayoutViewPlaceholder;
  v139 = v99;
  sub_1ED18(&v143, v138, &qword_9417D0);
  v100 = v124;
  sub_75FDF0();
  sub_3054B4(&qword_94F1B0, &type metadata accessor for MixedMediaLockupLayout);
  v101 = v126;
  sub_7665A0();

  (*(v125 + 8))(v100, v101);
  sub_10A2C(&v143, &qword_9417D0);
  (*(v96 + 8))(v97, v98);
  (*(v120 + 8))(v133, v121);
  sub_10A2C(v137, &qword_94DF10);
  return a2;
}

unint64_t sub_3046F4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_75C930();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v62 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_948720);
  __chkstk_darwin(v9 - 8);
  v61 = &v49 - v10;
  v11 = sub_760770();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_7652D0();
  __chkstk_darwin(v15 - 8);
  sub_134D8(a1, v65);
  sub_BD88(&unk_93F520);
  sub_75BD00();
  result = swift_dynamicCast();
  if (result)
  {
    v57 = v7;
    v58 = v6;
    v59 = v12;
    v17 = v64;
    v18 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_pageTraits);
    if (!v18)
    {
    }

    v56 = v11;

    swift_unknownObjectRetain();
    v19 = sub_764EE0();

    v60 = v3;
    if (v19)
    {
      v21 = qword_93C668;
      v22 = *(*(v3 + OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
      if (v21 != -1)
      {
        swift_once();
      }

      v23 = sub_75CF00();
      sub_BE38(v23, qword_99B898);
      sub_75CDD0();
      [v22 contentMode];
      sub_765330();
      sub_7652E0();
      sub_7591B0();
      [v22 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540);
        sub_76A030();
      }

      sub_759070();
      sub_759210();
      sub_3054B4(&qword_945810, &type metadata accessor for ArtworkView);
      sub_75A050();
    }

    v24 = ObjectType;
    v25 = (*(ObjectType + 192))(v20);
    if (v25)
    {
      result = sub_75BC70();
      if (result >> 62)
      {
        v27 = result;
        v28 = sub_76A860();
        result = v27;
        if (v28)
        {
          goto LABEL_12;
        }
      }

      else if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_12:
        if ((result & 0xC000000000000001) != 0)
        {
          v26 = sub_76A770();
        }

        else
        {
          if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_36;
          }

          v26 = *(result + 32);
        }

LABEL_20:
        v29 = (*(v24 + 216))(v25);
        v54 = v26;
        v55 = a2;
        v53 = v18;
        if ((v29 & 1) == 0)
        {
          v31 = v14;
          v50 = sub_75BCA0();
          v32 = 0;
          v33 = 0;
LABEL_31:
          v36 = v31;
          sub_75BCC0();
          v37 = ASKDeviceTypeGetCurrent();
          type metadata accessor for MixedMediaLockupCollectionViewCell();
          sub_75D650();
          v51 = type metadata accessor for LockupMediaView();
          v52 = v17;
          v38 = sub_766690();
          v39 = v61;
          (*(*(v38 - 8) + 56))(v61, 1, 1, v38);
          v40 = v62;
          v41 = v50;
          v42 = v33;
          v43 = v33;
          v44 = v54;
          v45 = v37;
          (*(ObjectType + 456))(v50, v43, v54, v32, v37, v36);
          v46 = v53;
          swift_getObjectType();
          sub_161888(v41, v42, v44, v32, v39, v40, v46, v36);

          (*(v57 + 8))(v40, v58);
          sub_10A2C(v39, &unk_948720);
          v47 = *(v60 + OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_mediaView);
          v48 = [v46 traitCollection];
          sub_1600F8(v41, v42, v44, v32, v48, v55, v36);

          swift_unknownObjectRelease();

          return (*(v59 + 8))(v36, v56);
        }

        result = sub_75BCF0();
        if (result >> 62)
        {
          v34 = result;
          v35 = sub_76A860();
          result = v34;
          if (v35)
          {
            goto LABEL_23;
          }
        }

        else if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
        {
LABEL_23:
          if ((result & 0xC000000000000001) != 0)
          {
            v30 = sub_76A770();
            goto LABEL_26;
          }

          if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
          {
            v30 = *(result + 32);

LABEL_26:
            v31 = v14;

LABEL_30:
            v50 = sub_75BCA0();
            v33 = sub_75BC80();
            v32 = v30;
            goto LABEL_31;
          }

LABEL_36:
          __break(1u);
          return result;
        }

        v31 = v14;

        v30 = 0;
        goto LABEL_30;
      }
    }

    v26 = 0;
    goto LABEL_20;
  }

  return result;
}

id sub_304EC8(uint64_t a1, void *a2)
{
  v3 = sub_764A60();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v8 = v7;
  sub_764A20();
  sub_3054B4(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints);
  v9 = sub_76A520();
  (*(v4 + 8))(v6, v3);
  v10 = sub_2FF8DC(v9 & 1, 0, 0xE000000000000000, a2);
  v11 = objc_opt_self();
  v12 = [v11 absoluteDimension:v8];
  v13 = [v11 absoluteDimension:v10];
  v14 = [objc_opt_self() sizeWithWidthDimension:v12 heightDimension:v13];

  v15 = [objc_opt_self() itemWithLayoutSize:v14];
  v16 = objc_opt_self();
  sub_BD88(&unk_93F5C0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_77D9F0;
  *(v17 + 32) = v15;
  sub_BE70(0, &qword_957F90);
  v18 = v15;
  isa = sub_769450().super.isa;

  v20 = [v16 verticalGroupWithLayoutSize:v14 subitems:isa];

  return v20;
}

void sub_30518C()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  sub_759050();
  sub_759210();
  sub_3054B4(&qword_945810, &type metadata accessor for ArtworkView);
  sub_75A0C0();
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_mediaView);
  v3 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_imageViews;
  swift_beginAccess();
  v4 = *&v2[v3];
  if (v4 >> 62)
  {
    v5 = sub_76A860();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_11:
    v13 = v2;
    goto LABEL_12;
  }

  v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  v17 = v2;
  v6 = v2;

  v7 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = sub_76A770();
    }

    else
    {
      v8 = *(v4 + 8 * v7 + 32);
    }

    v9 = v8;
    ++v7;
    type metadata accessor for BorderedScreenshotView();
    sub_3054B4(&qword_946D80, type metadata accessor for BorderedScreenshotView);
    v10 = v9;
    sub_76A6E0();
    sub_75A0B0();
    sub_1EB60(v18);
    v11 = *&v10[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView];
    v19.value.super.isa = 0;
    v19.is_nil = 0;
    sub_7591D0(v19, v12);
  }

  while (v5 != v7);

  v2 = v17;
LABEL_12:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    [*(Strong + qword_940590) setImage:0];
    type metadata accessor for VideoView();
    sub_3054B4(&qword_952550, type metadata accessor for VideoView);
    v16 = v15;
    sub_76A6E0();
    sub_75A0B0();

    sub_1EB60(v18);
  }

  else
  {
  }
}

uint64_t sub_3054B4(unint64_t *a1, void (*a2)(uint64_t))
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

UIColor sub_305500()
{
  sub_396E8();
  v0 = [objc_allocWithZone(UIColor) initWithRed:0.929411765 green:0.964705882 blue:1.0 alpha:1.0];
  v1.super.isa = [objc_allocWithZone(UIColor) initWithRed:0.11372549 green:0.137254902 blue:0.176470588 alpha:1.0];
  v2.super.isa = v0;
  result.super.isa = sub_76A0C0(v2, v1).super.isa;
  qword_99C918 = result.super.isa;
  return result;
}

UIColor sub_3055A4()
{
  sub_396E8();
  v0 = objc_opt_self();
  v1 = [v0 systemBlueColor];
  v2 = [v1 colorWithAlphaComponent:0.07];

  v3 = [v0 whiteColor];
  v4 = [v3 colorWithAlphaComponent:0.05];

  v5.super.isa = v2;
  v6.super.isa = v4;
  result.super.isa = sub_76A0C0(v5, v6).super.isa;
  qword_99C920 = result.super.isa;
  return result;
}

id sub_305678(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC18ASMessagesProvider16AdBackgroundView_isBorderHidden] = 0;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  v11 = qword_93C988;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  [v12 setBackgroundColor:qword_99C918];
  v13 = [v12 layer];
  if (qword_93C990 != -1)
  {
    swift_once();
  }

  v14 = [qword_99C920 CGColor];
  [v13 setBorderColor:v14];

  v15 = [v12 layer];
  [v15 setBorderWidth:1.0];

  [v12 setUserInteractionEnabled:0];
  sub_BD88(&qword_9477F0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_77B6D0;
  *(v16 + 32) = sub_7677C0();
  *(v16 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_769F40();

  swift_unknownObjectRelease();

  return v12;
}

void sub_305960(void *a1)
{
  if ((*(a1 + OBJC_IVAR____TtC18ASMessagesProvider16AdBackgroundView_isBorderHidden) & 1) == 0)
  {
    v2 = [a1 layer];
    if (qword_93C990 != -1)
    {
      swift_once();
    }

    v3 = [qword_99C920 CGColor];
    [v2 setBorderColor:v3];
  }
}

unint64_t sub_305A2C()
{
  sub_76A730(34);

  sub_7575D0();
  v1._countAndFlagsBits = sub_76A910();
  sub_769370(v1);

  v2._countAndFlagsBits = 45;
  v2._object = 0xE100000000000000;
  sub_769370(v2);
  sub_7575C0();
  v3._countAndFlagsBits = sub_76A910();
  sub_769370(v3);

  return 0xD00000000000001DLL;
}

uint64_t sub_305B20@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = sub_75D3C0();
  v36 = *(v1 - 8);
  v37 = v1;
  __chkstk_darwin(v1);
  v35 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_76A920();
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&qword_940AD0);
  v29 = *(v5 - 8);
  v30 = v5;
  __chkstk_darwin(v5);
  v28 = &v27 - v6;
  v7 = sub_BD88(&qword_944E50);
  v27 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v34 = sub_75D6B0();
  v10 = *(v34 - 8);
  __chkstk_darwin(v34);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&unk_94F1F0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v27 - v15;
  swift_getKeyPath();
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

  (*(v14 + 8))(v16, v13);
  if (v41 && (v17 = sub_759880(), , (v17 & 1) != 0))
  {
    v18 = 1;
    v19 = v38;
  }

  else
  {
    swift_getKeyPath();
    sub_75C7B0();

    v20 = v41;
    sub_278FB0(v12);

    swift_getKeyPath();
    sub_75C7B0();

    v21 = v41;
    v22 = sub_769A00();

    if ((v22 & 1) == 0)
    {
      sub_75D680();
      swift_getKeyPath();
      sub_75C7B0();

      v39 = v40;
      sub_7592B0();
      swift_unknownObjectRelease();
      (*(v27 + 8))(v9, v7);
      v23 = v28;
      sub_75D690();
      swift_getKeyPath();
      sub_75C7B0();

      v24 = v31;
      sub_766470();
      sub_759360();
      swift_unknownObjectRelease();
      (*(v32 + 8))(v24, v33);
      (*(v29 + 8))(v23, v30);
    }

    (*(v36 + 104))(v35, enum case for ComponentSeparator.Position.bottom(_:), v37);
    v19 = v38;
    sub_75D3D0();
    (*(v10 + 8))(v12, v34);
    v18 = 0;
  }

  v25 = sub_75D400();
  return (*(*(v25 - 8) + 56))(v19, v18, 1, v25);
}

char *sub_306120(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProvider34ProductTapToRateCollectionViewCell_productTapToRateView;
  type metadata accessor for ProductTapToRateView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider34ProductTapToRateCollectionViewCell_separatorView] = v10;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for ProductTapToRateCollectionViewCell();
  v11 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v12 = [v11 contentView];
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v13 = OBJC_IVAR____TtC18ASMessagesProvider34ProductTapToRateCollectionViewCell_separatorView;
  v14 = *&v11[OBJC_IVAR____TtC18ASMessagesProvider34ProductTapToRateCollectionViewCell_separatorView];
  sub_BE70(0, &qword_93E540);
  v15 = v14;
  v16 = sub_769FB0();
  [v15 setBackgroundColor:v16];

  v17 = [v11 contentView];
  [v17 addSubview:*&v11[v13]];

  v18 = [v11 contentView];
  [v18 addSubview:*&v11[OBJC_IVAR____TtC18ASMessagesProvider34ProductTapToRateCollectionViewCell_productTapToRateView]];

  return v11;
}

id sub_3063A4()
{
  v1 = v0;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for ProductTapToRateCollectionViewCell();
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v2 = [v0 contentView];
  sub_BE70(0, &qword_93E550);
  sub_75D650();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  if (qword_93D2C8 != -1)
  {
    swift_once();
  }

  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  CGRectGetMinX(v18);
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  CGRectGetMinY(v19);
  v20.origin.x = v4;
  v20.origin.y = v6;
  v20.size.width = v8;
  v20.size.height = v10;
  CGRectGetWidth(v20);
  v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider34ProductTapToRateCollectionViewCell_separatorView];
  sub_769D20();
  [v11 setFrame:?];
  if (([v11 isHidden] & 1) == 0)
  {
    sub_769D10();
    v4 = v12;
    v6 = v13;
    v8 = v14;
    v10 = v15;
  }

  return [*&v1[OBJC_IVAR____TtC18ASMessagesProvider34ProductTapToRateCollectionViewCell_productTapToRateView] setFrame:{v4, v6, v8, v10}];
}

id sub_306654()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductTapToRateCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}
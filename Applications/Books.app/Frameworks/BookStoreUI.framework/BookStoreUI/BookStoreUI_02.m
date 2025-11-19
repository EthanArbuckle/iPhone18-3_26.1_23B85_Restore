uint64_t sub_6A00C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a1;
  v98 = a2;
  v3 = sub_6620C(&qword_3BC8F0);
  v95 = *(v3 - 8);
  v96 = v3;
  __chkstk_darwin(v3);
  v80 = (&v80 - v4);
  v83 = sub_2C30F8();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3BC8F8);
  v7 = __chkstk_darwin(v6 - 8);
  v97 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v94 = &v80 - v9;
  v89 = sub_6620C(&qword_3BC938);
  v10 = __chkstk_darwin(v89);
  v88 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v85 = &v80 - v12;
  v13 = sub_2C29C8();
  v104 = *(v13 - 8);
  v105 = v13;
  v14 = __chkstk_darwin(v13);
  v103 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v102 = &v80 - v16;
  v87 = sub_6620C(&qword_3BC940);
  __chkstk_darwin(v87);
  v86 = &v80 - v17;
  v84 = sub_6620C(&qword_3BC990);
  __chkstk_darwin(v84);
  v19 = &v80 - v18;
  v20 = sub_6620C(&qword_3BC998);
  v92 = *(v20 - 8);
  v93 = v20;
  v21 = __chkstk_darwin(v20);
  v91 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v106 = &v80 - v23;
  v24 = sub_2C3308();
  v100 = *(v24 - 8);
  v101 = v24;
  __chkstk_darwin(v24);
  v99 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_2C3678();
  v26 = *(v107 - 1);
  __chkstk_darwin(v107);
  v28 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_6620C(&qword_3BC9A0);
  __chkstk_darwin(v29);
  v31 = &v80 - v30;
  v32 = sub_6620C(&qword_3BC9A8);
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = &v80 - v34;
  v36 = sub_6620C(&qword_3BC9B0);
  v37 = __chkstk_darwin(v36 - 8);
  v90 = &v80 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v40 = &v80 - v39;
  *v31 = sub_2C3328();
  *(v31 + 1) = 0;
  v31[16] = 0;
  v41 = sub_6620C(&qword_3BC9B8);
  sub_6AD24(a1, &v31[*(v41 + 44)]);
  *&v31[*(v29 + 36)] = 0x3FF0000000000000;
  sub_2C3658();
  v42 = sub_72250();
  sub_2C3FA8();
  v43 = v28;
  v44 = v102;
  (*(v26 + 8))(v43, v107);
  v45 = v103;
  sub_69198(v31, &qword_3BC9A0);
  v46 = v99;
  sub_2C32B8();
  v109 = v29;
  v110 = v42;
  swift_getOpaqueTypeConformance2();
  v107 = v40;
  sub_2C3FE8();
  (*(v100 + 8))(v46, v101);
  (*(v33 + 8))(v35, v32);
  *v19 = sub_2C3348();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v47 = *(sub_6620C(&qword_3BC9E8) + 44);
  v101 = v19;
  sub_6BA10(v108, &v19[v47]);
  v48 = v105;
  v49 = v104;
  v50 = *(v104 + 104);
  v50(v44, enum case for DynamicTypeSize.xSmall(_:), v105);
  v50(v45, enum case for DynamicTypeSize.accessibility1(_:), v48);
  sub_712BC(&qword_3BC950, &type metadata accessor for DynamicTypeSize);
  result = sub_2C5868();
  if (result)
  {
    v52 = *(v49 + 32);
    v53 = v85;
    v52(v85, v44, v48);
    v54 = v89;
    v52((v53 + *(v89 + 48)), v45, v48);
    v55 = v88;
    sub_6932C(v53, v88, &qword_3BC938);
    v56 = *(v54 + 48);
    v57 = v86;
    v52(v86, v55, v48);
    v58 = *(v49 + 8);
    v58(v55 + v56, v48);
    sub_69130(v53, v55, &qword_3BC938);
    v52((v57 + *(v87 + 36)), (v55 + *(v54 + 48)), v48);
    v58(v55, v48);
    sub_72B74(&qword_3BC9F0, &qword_3BC990);
    sub_72B74(&qword_3BC960, &qword_3BC940);
    v59 = v106;
    v60 = v101;
    sub_2C3F48();
    sub_69198(v57, &qword_3BC940);
    sub_69198(v60, &qword_3BC990);
    v61 = v108 + *(type metadata accessor for RatingSummaryView(0) + 36);
    v62 = *v61;
    v63 = v59;
    if (*(v61 + 8) == 1)
    {
      v64 = v94;
      if (v62)
      {
        goto LABEL_8;
      }
    }

    else
    {

      sub_2C5DD8();
      v65 = sub_2C3718();
      sub_2C0058();

      v66 = v81;
      sub_2C30E8();
      swift_getAtKeyPath();
      sub_71AF4(v62, 0);
      (*(v82 + 8))(v66, v83);
      v64 = v94;
      if (v109)
      {
        goto LABEL_8;
      }
    }

    if (*(v108 + *(type metadata accessor for RatingSummaryComponentModel() + 52) + 8))
    {
      v67 = sub_2C3328();
      v68 = v80;
      *v80 = v67;
      *(v68 + 8) = 0x4020000000000000;
      *(v68 + 16) = 0;
      v69 = sub_6620C(&qword_3BC928);
      sub_6E828(v108, (v68 + *(v69 + 44)));
      sub_69130(v68, v64, &qword_3BC8F0);
      v70 = 0;
LABEL_9:
      (*(v95 + 56))(v64, v70, 1, v96);
      v71 = v90;
      sub_6932C(v107, v90, &qword_3BC9B0);
      v73 = v91;
      v72 = v92;
      v74 = *(v92 + 16);
      v75 = v93;
      v74(v91, v63, v93);
      v76 = v97;
      sub_6932C(v64, v97, &qword_3BC8F8);
      v77 = v98;
      sub_6932C(v71, v98, &qword_3BC9B0);
      v78 = sub_6620C(&qword_3BC9F8);
      v74((v77 + *(v78 + 48)), v73, v75);
      sub_6932C(v76, v77 + *(v78 + 64), &qword_3BC8F8);
      sub_69198(v64, &qword_3BC8F8);
      v79 = *(v72 + 8);
      v79(v106, v75);
      sub_69198(v107, &qword_3BC9B0);
      sub_69198(v76, &qword_3BC8F8);
      v79(v73, v75);
      return sub_69198(v71, &qword_3BC9B0);
    }

LABEL_8:
    v70 = 1;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_6AD24@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v147 = a1;
  v127 = a2;
  v3 = sub_6620C(&qword_3BCA00);
  v128 = *(v3 - 8);
  v129 = v3;
  v4 = __chkstk_darwin(v3);
  v137 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v143 = &v118 - v6;
  v141 = sub_6620C(&qword_3BC938);
  v7 = __chkstk_darwin(v141);
  v140 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v139 = &v118 - v9;
  v151 = sub_2C29C8();
  v146 = *(v151 - 1);
  v10 = __chkstk_darwin(v151);
  v150 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v149 = &v118 - v12;
  v138 = sub_6620C(&qword_3BC940);
  __chkstk_darwin(v138);
  v145 = &v118 - v13;
  v142 = sub_2C0D48();
  v148 = *(v142 - 8);
  __chkstk_darwin(v142);
  v15 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_6620C(&qword_3BCB28);
  __chkstk_darwin(v16 - 8);
  v18 = &v118 - v17;
  v19 = sub_6620C(&qword_3BCB30);
  v125 = *(v19 - 8);
  v126 = v19;
  v20 = __chkstk_darwin(v19);
  v124 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v144 = &v118 - v22;
  v130 = type metadata accessor for RatingSummaryComponentModel();
  v23 = (a1 + *(v130 + 28));
  v24 = v23[1];
  *&v160[0] = *v23;
  *(&v160[0] + 1) = v24;
  v25 = sub_7212C();

  v133 = v25;
  v26 = sub_2C3A48();
  v28 = v27;
  v30 = v29;
  sub_2C3888();
  sub_2C3828();
  sub_2C3898();
  sub_69198(v18, &qword_3BCB28);
  v31 = sub_2C39E8();
  v33 = v32;
  LOBYTE(v24) = v34;
  v136 = v35;

  sub_72180(v26, v28, v30 & 1);

  v132 = *(type metadata accessor for RatingSummaryView(0) + 32);
  sub_29A87C(v15);
  v36 = sub_2C0D38();
  v37 = *(v148 + 8);
  v134 = v15;
  v148 += 8;
  v131 = v37;
  v37(v15, v142);
  *&v160[0] = v36;
  v135 = sub_2C39A8();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = v146;
  sub_72180(v31, v33, v24 & 1);

  LOBYTE(v36) = sub_2C3768();
  sub_2C24D8();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  LOBYTE(v160[0]) = v41 & 1;
  LOBYTE(v152) = 0;
  LOBYTE(v24) = sub_2C3778();
  sub_2C24D8();
  v159 = 0;
  *&v152 = v135;
  *(&v152 + 1) = v39;
  LOBYTE(v153) = v41 & 1;
  *(&v153 + 1) = v43;
  LOBYTE(v154) = v36;
  *(&v154 + 1) = v46;
  *&v155 = v48;
  *(&v155 + 1) = v50;
  *&v156 = v52;
  BYTE8(v156) = 0;
  LOBYTE(v157) = v24;
  *(&v157 + 1) = v53;
  *&v158[0] = v54;
  *(&v158[0] + 1) = v55;
  *&v158[1] = v56;
  BYTE8(v158[1]) = 0;
  v57 = enum case for DynamicTypeSize.xSmall(_:);
  v58 = v44[13];
  v59 = v151;
  v58(v149, enum case for DynamicTypeSize.xSmall(_:), v151);
  v58(v150, enum case for DynamicTypeSize.medium(_:), v59);
  v60 = sub_712BC(&qword_3BC950, &type metadata accessor for DynamicTypeSize);
  result = sub_2C5868();
  if (result)
  {
    v136 = v60;
    v62 = v44[4];
    v63 = v139;
    v64 = v151;
    v62(v139, v149, v151);
    v135 = v58;
    v65 = v141;
    v62((v63 + *(v141 + 48)), v150, v64);
    v123 = v57;
    v66 = v140;
    sub_6932C(v63, v140, &qword_3BC938);
    v122 = v44 + 13;
    v67 = *(v65 + 48);
    v62(v145, v66, v64);
    v68 = v44[1];
    v68(v66 + v67, v64);
    sub_69130(v63, v66, &qword_3BC938);
    v69 = v145;
    v70 = &v145[*(v138 + 36)];
    v71 = v66 + *(v65 + 48);
    v120 = v62;
    v121 = v44 + 4;
    v62(v70, v71, v64);
    v146 = v44 + 1;
    v119 = v68;
    v68(v66, v64);
    sub_6620C(&qword_3BCB38);
    sub_72C44();
    v118 = sub_72B74(&qword_3BC960, &qword_3BC940);
    sub_2C3F48();
    sub_69198(v69, &qword_3BC940);
    v160[4] = v156;
    v160[5] = v157;
    v161[0] = v158[0];
    *(v161 + 9) = *(v158 + 9);
    v160[0] = v152;
    v160[1] = v153;
    v160[2] = v154;
    v160[3] = v155;
    sub_69198(v160, &qword_3BCB38);
    v72 = (v147 + *(v130 + 32));
    v73 = v72[1];
    *&v152 = *v72;
    *(&v152 + 1) = v73;

    v74 = sub_2C3A48();
    v76 = v75;
    LOBYTE(v67) = v77;
    sub_2C37D8();
    v78 = sub_2C39E8();
    v80 = v79;
    LOBYTE(v64) = v81;

    sub_72180(v74, v76, v67 & 1);

    sub_2C3878();
    v82 = sub_2C3988();
    v84 = v83;
    LOBYTE(v66) = v85;
    sub_72180(v78, v80, v64 & 1);

    v86 = v134;
    sub_29A87C(v134);
    v87 = sub_2C0D38();
    v131(v86, v142);
    *&v152 = v87;
    v88 = sub_2C39A8();
    v90 = v89;
    v92 = v91;
    v94 = v93;
    sub_72180(v82, v84, v66 & 1);

    *&v152 = v88;
    *(&v152 + 1) = v90;
    v95 = v92 & 1;
    LOBYTE(v153) = v95;
    *(&v153 + 1) = v94;
    v96 = v151;
    v97 = v135;
    v135(v149, v123, v151);
    v97(v150, enum case for DynamicTypeSize.xxxLarge(_:), v96);
    result = sub_2C5868();
    if (result)
    {
      v148 = v94;
      v98 = v139;
      v99 = v149;
      v149 = v88;
      v100 = v151;
      v101 = v120;
      v120(v139, v99, v151);
      v102 = v141;
      v101(v98 + *(v141 + 48), v150, v100);
      LODWORD(v150) = v95;
      v103 = v140;
      sub_6932C(v98, v140, &qword_3BC938);
      v104 = *(v102 + 48);
      v147 = v90;
      v105 = v145;
      v101(v145, v103, v100);
      v106 = v119;
      v119(v103 + v104, v100);
      sub_69130(v98, v103, &qword_3BC938);
      v101(v105 + *(v138 + 36), (v103 + *(v102 + 48)), v100);
      v106(v103, v100);
      sub_2C3F48();
      sub_69198(v105, &qword_3BC940);
      sub_72180(v149, v147, v150);

      v108 = v124;
      v107 = v125;
      v109 = *(v125 + 16);
      v110 = v126;
      v109(v124, v144, v126);
      v112 = v128;
      v111 = v129;
      v151 = *(v128 + 16);
      (v151)(v137, v143, v129);
      v113 = v127;
      v109(v127, v108, v110);
      v114 = &v113[*(sub_6620C(&qword_3BCB58) + 48)];
      v115 = v137;
      (v151)(v114, v137, v111);
      v116 = *(v112 + 8);
      v116(v143, v111);
      v117 = *(v107 + 8);
      v117(v144, v110);
      v116(v115, v111);
      return (v117)(v108, v110);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_6BA10@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v98 = a2;
  v95 = sub_6620C(&qword_3BC938);
  v3 = __chkstk_darwin(v95);
  v92 = v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v86 = v82 - v5;
  v6 = sub_2C29C8();
  v105 = *(v6 - 8);
  v106 = v6;
  v7 = __chkstk_darwin(v6);
  v104 = v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v103 = v82 - v9;
  v96 = sub_6620C(&qword_3BC940);
  __chkstk_darwin(v96);
  v87 = v82 - v10;
  v11 = sub_2C0D48();
  v101 = *(v11 - 8);
  v102 = v11;
  __chkstk_darwin(v11);
  v100 = v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_6620C(&qword_3BCA00);
  v91 = *(v94 - 8);
  __chkstk_darwin(v94);
  v89 = v82 - v13;
  v14 = sub_6620C(&qword_3BCA08);
  v15 = __chkstk_darwin(v14 - 8);
  v97 = v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v93 = v82 - v17;
  v18 = type metadata accessor for RatingSummaryView(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v90 = sub_6620C(&qword_3BCA10);
  v88 = *(v90 - 8);
  v21 = __chkstk_darwin(v90);
  v85 = v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = v82 - v23;
  v109 = xmmword_2E3510;
  swift_getKeyPath();
  v99 = a1;
  sub_71A88(a1, v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RatingSummaryView);
  v25 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v26 = swift_allocObject();
  sub_725C0(v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for RatingSummaryView);
  sub_6620C(&qword_3BCA18);
  sub_6620C(&qword_3BCA20);
  sub_723B4();
  sub_72494();
  v84 = v24;
  sub_2C4558();
  v27 = (a1 + *(type metadata accessor for RatingSummaryComponentModel() + 36));
  v28 = v27[1];
  v82[0] = *v27;
  *&v109 = v82[0];
  *(&v109 + 1) = v28;
  v29 = sub_7212C();
  v83 = v28;
  swift_bridgeObjectRetain_n();
  v82[1] = v29;
  v30 = sub_2C3A48();
  v32 = v31;
  v34 = v33;
  sub_2C37D8();
  v35 = sub_2C39E8();
  v37 = v36;
  LOBYTE(v25) = v38;

  sub_72180(v30, v32, v34 & 1);

  sub_2C3878();
  v39 = sub_2C3988();
  v41 = v40;
  LOBYTE(v30) = v42;
  v43 = v35;
  v44 = v103;
  sub_72180(v43, v37, v25 & 1);

  v45 = v100;
  sub_29A87C(v100);
  v46 = sub_2C0D38();
  (*(v101 + 8))(v45, v102);
  *&v109 = v46;
  v47 = sub_2C39A8();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_72180(v39, v41, v30 & 1);

  v101 = v49;
  v102 = v47;
  *&v109 = v47;
  *(&v109 + 1) = v49;
  LOBYTE(v110) = v51 & 1;
  v111 = v53;
  v54 = v106;
  v55 = v105;
  v56 = *(v105 + 104);
  v56(v44, enum case for DynamicTypeSize.xSmall(_:), v106);
  v57 = v104;
  v56(v104, enum case for DynamicTypeSize.xxxLarge(_:), v54);
  v58 = v57;
  sub_712BC(&qword_3BC950, &type metadata accessor for DynamicTypeSize);
  result = sub_2C5868();
  if (result)
  {
    LODWORD(v100) = v51 & 1;
    v60 = *(v55 + 32);
    v61 = v86;
    v60(v86, v44, v54);
    v62 = v95;
    v60((v61 + *(v95 + 48)), v58, v54);
    v63 = v92;
    sub_6932C(v61, v92, &qword_3BC938);
    v64 = *(v62 + 48);
    v65 = v87;
    v60(v87, v63, v54);
    v104 = v53;
    v66 = *(v55 + 8);
    v66(v63 + v64, v54);
    sub_69130(v61, v63, &qword_3BC938);
    v67 = *(v62 + 48);
    v68 = v96;
    v60((v65 + *(v96 + 36)), (v63 + v67), v54);
    v66(v63, v54);
    v69 = sub_72B74(&qword_3BC960, &qword_3BC940);
    v70 = v89;
    sub_2C3F48();
    sub_69198(v65, &qword_3BC940);
    sub_72180(v102, v101, v100);

    v107 = v82[0];
    v108 = v83;
    *&v109 = &type metadata for Text;
    *(&v109 + 1) = v68;
    v110 = &protocol witness table for Text;
    v111 = v69;
    swift_getOpaqueTypeConformance2();
    v71 = v93;
    v72 = v94;
    sub_2C3F78();

    (*(v91 + 8))(v70, v72);
    v73 = v88;
    v74 = *(v88 + 16);
    v75 = v85;
    v76 = v84;
    v77 = v90;
    v74(v85, v84, v90);
    v78 = v97;
    sub_6932C(v71, v97, &qword_3BCA08);
    v79 = v98;
    v74(v98, v75, v77);
    v80 = sub_6620C(&qword_3BCA58);
    sub_6932C(v78, &v79[*(v80 + 48)], &qword_3BCA08);
    sub_69198(v71, &qword_3BCA08);
    v81 = *(v73 + 8);
    v81(v76, v77);
    sub_69198(v78, &qword_3BCA08);
    return (v81)(v75, v77);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_6C520@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v25 = sub_2C3678();
  v5 = *(v25 - 8);
  __chkstk_darwin(v25);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&qword_3BCA40);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = sub_6620C(&qword_3BCA60);
  v22 = *(v11 - 8);
  v23 = v11;
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  v14 = *a1;
  *v10 = sub_2C3178();
  *(v10 + 1) = 0x4024000000000000;
  v10[16] = 0;
  v15 = sub_6620C(&qword_3BCA68);
  sub_6C898(v14, a2, &v10[*(v15 + 44)]);
  sub_2C3658();
  v16 = sub_72B74(&qword_3BCA48, &qword_3BCA40);
  sub_2C3FA8();
  (*(v5 + 8))(v7, v25);
  sub_69198(v10, &qword_3BCA40);
  result = type metadata accessor for RatingSummaryComponentModel();
  if (__OFSUB__(5, v14))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(5 - v14, 1))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v26 = *(a2 + *(result + 60));
  v28 = 4 - v14;
  sub_6620C(&qword_3BCA70);
  sub_72B74(&qword_3BCA78, &qword_3BCA70);
  sub_2C5D38();
  v18 = v29;
  if (v30)
  {
    v19 = v30;
  }

  else
  {
    v18 = 0;
    v19 = 0xE000000000000000;
  }

  v29 = v18;
  v30 = v19;
  v26 = v8;
  v27 = v16;
  swift_getOpaqueTypeConformance2();
  sub_7212C();
  v20 = v23;
  sub_2C3F78();

  return (*(v22 + 8))(v13, v20);
}

uint64_t sub_6C898@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a1;
  v84 = a3;
  v5 = type metadata accessor for RatingSummaryView(0);
  v6 = *(v5 - 8);
  v80 = v5 - 8;
  v83 = v6;
  v82 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v81 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_2C0D48();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2C2AA8();
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_6620C(&qword_3BCA80);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v70 - v15;
  v17 = sub_6620C(&qword_3BCA88);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v70 - v19;
  v21 = sub_6620C(&qword_3BCA90);
  v22 = v21 - 8;
  __chkstk_darwin(v21);
  v71 = &v70 - v23;
  v75 = sub_6620C(&qword_3BCA98) - 8;
  v24 = __chkstk_darwin(v75);
  v77 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v73 = &v70 - v27;
  __chkstk_darwin(v26);
  v74 = &v70 - v28;
  v29 = sub_6620C(&qword_3BCAA0);
  v30 = __chkstk_darwin(v29 - 8);
  v72 = &v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v70 - v32;
  *v33 = sub_2C3178();
  *(v33 + 1) = 0;
  v33[16] = 0;
  v34 = sub_6620C(&qword_3BCAA8);
  sub_6D06C(a1, a2, &v33[*(v34 + 44)]);
  v35 = *(v10 + 28);
  v36 = enum case for RoundedCornerStyle.circular(_:);
  v37 = sub_2C31A8();
  (*(*(v37 - 8) + 104))(&v12[v35], v36, v37);
  __asm { FMOV            V0.2D, #10.0 }

  *v12 = _Q0;
  sub_2C46A8();
  sub_2C2AD8();
  sub_725C0(v12, v16, &type metadata accessor for RoundedRectangle);
  v43 = &v16[*(v14 + 44)];
  v44 = v90;
  *(v43 + 4) = v89;
  *(v43 + 5) = v44;
  *(v43 + 6) = v91;
  v45 = v86;
  *v43 = v85;
  *(v43 + 1) = v45;
  v46 = v88;
  *(v43 + 2) = v87;
  *(v43 + 3) = v46;
  sub_2C46A8();
  sub_2C2708();
  sub_69130(v16, v20, &qword_3BCA80);
  v47 = &v20[*(v18 + 44)];
  v48 = v93;
  *v47 = v92;
  *(v47 + 1) = v48;
  *(v47 + 2) = v94;
  v49 = a2;
  v50 = v76;
  sub_29A87C(v76);
  v51 = sub_2C0CF8();
  (*(v78 + 8))(v50, v79);
  KeyPath = swift_getKeyPath();
  v53 = v71;
  sub_69130(v20, v71, &qword_3BCA88);
  v54 = (v53 + *(v22 + 44));
  *v54 = KeyPath;
  v54[1] = v51;
  v55 = sub_2C46B8();
  v57 = v56;
  v58 = v81;
  sub_71A88(v49, v81, type metadata accessor for RatingSummaryView);
  v59 = (*(v83 + 80) + 16) & ~*(v83 + 80);
  v60 = (v82 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  sub_725C0(v58, v61 + v59, type metadata accessor for RatingSummaryView);
  *(v61 + v60) = v70;
  v62 = v73;
  sub_69130(v53, v73, &qword_3BCA90);
  v63 = (v62 + *(v75 + 44));
  *v63 = sub_72958;
  v63[1] = v61;
  v63[2] = v55;
  v63[3] = v57;
  v64 = v74;
  sub_69130(v62, v74, &qword_3BCA98);
  v65 = v72;
  sub_6932C(v33, v72, &qword_3BCAA0);
  v66 = v77;
  sub_6932C(v64, v77, &qword_3BCA98);
  v67 = v84;
  sub_6932C(v65, v84, &qword_3BCAA0);
  v68 = sub_6620C(&qword_3BCAB0);
  sub_6932C(v66, v67 + *(v68 + 48), &qword_3BCA98);
  sub_69198(v64, &qword_3BCA98);
  sub_69198(v33, &qword_3BCAA0);
  sub_69198(v66, &qword_3BCA98);
  return sub_69198(v65, &qword_3BCAA0);
}

uint64_t sub_6D06C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v43 = a3;
  v5 = type metadata accessor for RatingSummaryView(0);
  v42 = *(v5 - 8);
  v6 = *(v42 + 64);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&qword_3BCAD8);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v40 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v32 - v13;
  v15 = __chkstk_darwin(v12);
  v41 = &v32 - v16;
  result = __chkstk_darwin(v15);
  v19 = &v32 - v18;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v39 = v6;
    v37 = a2;
    v44 = 0;
    v45 = a1;
    swift_getKeyPath();
    v20 = sub_6620C(&qword_3BCA18);
    v21 = sub_6620C(&qword_3BCAE0);
    v22 = sub_723B4();
    v34 = sub_72A04();
    v38 = v20;
    v35 = v22;
    v36 = v21;
    result = sub_2C4558();
    if (a1 <= 5)
    {
      v44 = 0;
      v45 = 5 - a1;
      swift_getKeyPath();
      v33 = v19;
      sub_71A88(v37, v7, type metadata accessor for RatingSummaryView);
      v23 = v41;
      v24 = v43;
      v25 = (*(v42 + 80) + 16) & ~*(v42 + 80);
      v26 = v40;
      v27 = swift_allocObject();
      sub_725C0(v7, v27 + v25, type metadata accessor for RatingSummaryView);
      sub_2C4558();
      v28 = *(v9 + 16);
      v29 = v33;
      v28(v14, v33, v8);
      v28(v26, v23, v8);
      v28(v24, v14, v8);
      v30 = sub_6620C(&qword_3BCB20);
      v28(&v24[*(v30 + 48)], v26, v8);
      v31 = *(v9 + 8);
      v31(v23, v8);
      v31(v29, v8);
      v31(v26, v8);
      return (v31)(v14, v8);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_6D480@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_6620C(&qword_3BCB28);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_2C42B8();
  v6 = sub_2C4208();
  KeyPath = swift_getKeyPath();
  v8 = sub_2C3848();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = sub_2C3898();
  sub_69198(v4, &qword_3BCB28);
  result = swift_getKeyPath();
  *a1 = v5;
  a1[1] = KeyPath;
  a1[2] = v6;
  a1[3] = result;
  a1[4] = v9;
  return result;
}

uint64_t sub_6D5C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_6620C(&qword_3BCB28);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_2C0D48();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2C42B8();
  type metadata accessor for RatingSummaryView(0);
  sub_29A87C(v8);
  v10 = sub_2C0D08();
  (*(v6 + 8))(v8, v5);
  KeyPath = swift_getKeyPath();
  v12 = sub_2C3848();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = sub_2C3898();
  sub_69198(v4, &qword_3BCB28);
  result = swift_getKeyPath();
  *a1 = v9;
  a1[1] = KeyPath;
  a1[2] = v10;
  a1[3] = result;
  a1[4] = v13;
  return result;
}

uint64_t sub_6D7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28[1] = a1;
  v7 = sub_2C0D48();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6620C(&qword_3BCAB8);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = v28 - v13;
  v15 = *(sub_2C2AA8() + 20);
  v16 = enum case for RoundedCornerStyle.circular(_:);
  v17 = sub_2C31A8();
  (*(*(v17 - 8) + 104))(&v14[v15], v16, v17);
  __asm { FMOV            V0.2D, #10.0 }

  *v14 = _Q0;
  type metadata accessor for RatingSummaryView(0);
  sub_29A87C(v10);
  v23 = sub_2C0D08();
  (*(v8 + 8))(v10, v7);
  *&v14[*(v12 + 60)] = v23;
  *&v14[*(v12 + 64)] = 256;
  result = type metadata accessor for RatingSummaryComponentModel();
  if (__OFSUB__(5, a3))
  {
    __break(1u);
  }

  else if (!__OFSUB__(5 - a3, 1))
  {
    v25 = *(a2 + *(result + 56));
    v28[2] = 4 - a3;
    v28[3] = v25;
    sub_6620C(&qword_3BCAC0);
    sub_72B74(&qword_3BCAC8, &qword_3BCAC0);
    sub_2C5D38();
    sub_2C2728();
    sub_2C46A8();
    sub_2C2708();
    sub_69130(v14, a4, &qword_3BCAB8);
    result = sub_6620C(&qword_3BCAD0);
    v26 = (a4 + *(result + 36));
    v27 = v30;
    *v26 = v29;
    v26[1] = v27;
    v26[2] = v31;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_6DAB8()
{
  type metadata accessor for RatingSummaryView(0);
  sub_6620C(&qword_3BC8E8);
  result = sub_2C4378();
  if (v1)
  {
    sub_6FB1C();
  }

  return result;
}

uint64_t sub_6DB28(uint64_t a1, double *a2, uint64_t a3)
{
  v62 = sub_2BFF28();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_2BE828();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v66 = (&v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = sub_2BE858();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&unk_3CA260);
  __chkstk_darwin(v8 - 8);
  v65 = &v56 - v9;
  v67 = type metadata accessor for JSAction();
  __chkstk_darwin(v67);
  v72 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v64 = sub_2C22F8();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2C2208();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2C2178();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_2C4BF8();
  v70 = *(v71 - 8);
  v21 = __chkstk_darwin(v71);
  v59 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v56 - v23;
  v25 = *a2;
  result = type metadata accessor for RatingSummaryComponentModel();
  v27 = *(result + 52);
  v76 = a3;
  v28 = (a3 + v27);
  v29 = v28[1];
  if (v29)
  {
    v57 = *v28;
    v58 = type metadata accessor for RatingSummaryView(0);
    v30 = (v76 + *(v58 + 40));
    v31 = *v30;
    v32 = v30[1];
    v78[0] = v31;
    v78[1] = v32;

    sub_6620C(&qword_3BC8C0);
    sub_2C4378();
    if (v77[0] <= 0.0)
    {
    }

    else
    {
      v33 = ceil(v25) / 5.0;
      (*(v18 + 104))(v20, enum case for Metrics.TargetType.button(_:), v17);
      (*(v14 + 104))(v16, enum case for Metrics.ClickActionType.rate(_:), v13);
      sub_2C21C8();
      sub_2C22A8();
      v56 = v24;
      v34 = v57;
      sub_2C2118();

      (*(v63 + 8))(v12, v64);
      (*(v14 + 8))(v16, v13);
      (*(v18 + 8))(v20, v17);
      v35 = v72;
      sub_2C4BE8();
      sub_6620C(&qword_3BC8E0);
      inited = swift_initStackObject();
      v64 = xmmword_2E15C0;
      *(inited + 16) = xmmword_2E15C0;
      *(inited + 32) = 0x64496D616461;
      *(inited + 40) = 0xE600000000000000;
      *(inited + 48) = v34;
      v37 = v34;
      *(inited + 56) = v29;
      *(inited + 72) = &type metadata for String;
      *(inited + 80) = 0x676E69746172;
      *(inited + 88) = 0xE600000000000000;
      *(inited + 120) = &type metadata for Double;
      *(inited + 96) = v33;

      v38 = sub_6759C(inited);
      swift_setDeallocating();
      sub_6620C(&qword_3BC318);
      swift_arrayDestroy();
      v39 = sub_2BF088();
      v40 = *(*(v39 - 8) + 56);
      v41 = v65;
      v40(v65, 1, 1, v39);
      v42 = v67;
      v43 = *(v67 + 28);
      v40((v35 + v43), 1, 1, v39);
      v44 = v35 + *(v42 + 20);
      strcpy(v44, "SubmitReview");
      *(v44 + 13) = 0;
      *(v44 + 14) = -5120;
      *(v35 + *(v42 + 24)) = v38;
      sub_71FB4(v41, v35 + v43);
      v45 = v66;
      *v66 = v37;
      *(v45 + 1) = v29;
      v45[2] = v33;
      (v68[13])(v45, enum case for AppAnalyticsAction.Type.reportRatingEvent(_:), v69);
      v46 = v73;
      sub_2BE838();
      sub_29A8A4(v78);
      if (v79)
      {
        v69 = v80;
        v68 = sub_72084(v78, v79);
        v47 = v70;
        v48 = v56;
        v49 = v71;
        (*(v70 + 16))(v59, v56, v71);
        sub_6620C(&qword_3BC240);
        v50 = swift_allocObject();
        *(v50 + 16) = v64;
        *(v50 + 56) = v42;
        *(v50 + 64) = sub_712BC(&qword_3BD470, type metadata accessor for JSAction);
        v51 = sub_720C8((v50 + 32));
        sub_71A88(v35, v51, type metadata accessor for JSAction);
        v52 = v75;
        *(v50 + 96) = v75;
        *(v50 + 104) = sub_712BC(&qword_3CA250, &type metadata accessor for AppAnalyticsAction);
        v53 = sub_720C8((v50 + 72));
        v54 = v74;
        (*(v74 + 16))(v53, v46, v52);
        *&v77[3] = sub_2C4D28();
        *&v77[4] = &protocol witness table for CompoundAction;
        sub_720C8(v77);
        sub_2C4D18();
        v55 = v60;
        sub_29A8B8(v60);
        sub_2BFCD8();
        (*(v61 + 8))(v55, v62);
        (*(v54 + 8))(v46, v52);
        (*(v47 + 8))(v48, v49);
        sub_72024(v35, type metadata accessor for JSAction);
        sub_68CD0(v77);
        return sub_68CD0(v78);
      }

      else
      {
        (*(v74 + 8))(v46, v75);
        (*(v70 + 8))(v56, v71);
        sub_72024(v35, type metadata accessor for JSAction);
        return sub_69198(v78, &qword_3BC840);
      }
    }
  }

  return result;
}

uint64_t sub_6E674()
{
  v1 = v0;
  type metadata accessor for RatingSummaryView(0);
  sub_6620C(&qword_3BC8E8);
  sub_2C4378();
  if (v8)
  {
    swift_getKeyPath();
    sub_712BC(&qword_3BC788, type metadata accessor for RatingUpdateProvider);
    sub_2BE6F8();

    if (*(v8 + 25) > 1u)
    {
      if (*(v8 + 25) == 2)
      {

        v5 = (type metadata accessor for RatingSummaryComponentModel() + 48);
        goto LABEL_12;
      }
    }

    else if (*(v8 + 25))
    {
      swift_getKeyPath();
      sub_2BE6F8();

      v2 = *(v8 + 16);
      v3 = *(v8 + 24);

      v4 = type metadata accessor for RatingSummaryComponentModel();
      if ((v3 & 1) != 0 || v2 != 0.0)
      {
        v5 = (v4 + 44);
LABEL_12:
        v6 = *(v1 + *v5);

        return v6;
      }

LABEL_11:
      v5 = (v4 + 40);
      goto LABEL_12;
    }

    v4 = type metadata accessor for RatingSummaryComponentModel();
    goto LABEL_11;
  }

  return 0;
}

uint64_t sub_6E828@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v107 = a2;
  v115 = sub_2C0D48();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v112 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_6620C(&qword_3BC930);
  v106 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v105 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v122 = &v91 - v7;
  v120 = sub_6620C(&qword_3BC938);
  v8 = __chkstk_darwin(v120);
  v119 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v118 = &v91 - v10;
  v121 = sub_2C29C8();
  v124 = *(v121 - 8);
  v11 = __chkstk_darwin(v121);
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v91 - v14;
  v117 = sub_6620C(&qword_3BC940);
  __chkstk_darwin(v117);
  v116 = &v91 - v16;
  v110 = sub_2C1C18();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v18 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_6620C(&qword_3BC948);
  v103 = *(v104 - 8);
  v19 = __chkstk_darwin(v104);
  v102 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v123 = &v91 - v21;
  v22 = type metadata accessor for RatingSummaryView(0);
  v23 = (a1 + *(v22 + 40));
  v24 = *v23;
  v25 = v23[1];
  v130 = v24;
  v131 = v25;
  sub_6620C(&qword_3BC8C0);
  sub_2C4398();
  v111 = v22;
  v26 = *(v22 + 20);
  v113 = a1;
  v125 = *(a1 + v26);
  sub_6620C(&qword_3BC8E8);
  sub_2C4378();
  v27 = v130;
  if (v130)
  {
    swift_getKeyPath();
    *&v125 = v27;
    sub_712BC(&qword_3BC788, type metadata accessor for RatingUpdateProvider);
    sub_2BE6F8();
  }

  sub_2C1C08();
  v28 = v124;
  v29 = v124 + 104;
  v30 = *(v124 + 104);
  v108 = enum case for DynamicTypeSize.xSmall(_:);
  v31 = v121;
  v30(v15);
  v32 = v13;
  (v30)(v13, enum case for DynamicTypeSize.xxxLarge(_:), v31);
  v33 = sub_712BC(&qword_3BC950, &type metadata accessor for DynamicTypeSize);
  result = sub_2C5868();
  v35 = v120;
  if (result)
  {
    v95 = v4;
    v101 = v29;
    v96 = v18;
    v36 = *(v28 + 32);
    v100 = v30;
    v37 = v118;
    v36(v118, v15, v31);
    v36((v37 + *(v35 + 48)), v32, v31);
    v97 = v32;
    v98 = v15;
    v38 = v119;
    sub_6932C(v37, v119, &qword_3BC938);
    v99 = v33;
    v39 = *(v35 + 48);
    v40 = v116;
    v36(v116, v38, v31);
    v41 = *(v28 + 8);
    v124 = v28 + 8;
    v41(v38 + v39, v31);
    sub_69130(v37, v38, &qword_3BC938);
    v42 = v40 + *(v117 + 36);
    v43 = v38 + *(v35 + 48);
    v94 = v28 + 32;
    v93 = v36;
    v36(v42, v43, v31);
    v92 = v41;
    v41(v38, v31);
    sub_712BC(&qword_3BC958, &type metadata accessor for InteractiveStarRatingView);
    v44 = sub_72B74(&qword_3BC960, &qword_3BC940);
    v45 = v110;
    v91 = v44;
    v46 = v96;
    sub_2C3F48();
    sub_69198(v40, &qword_3BC940);
    (*(v109 + 8))(v46, v45);
    *&v125 = sub_6E674();
    *(&v125 + 1) = v47;
    sub_7212C();
    v48 = sub_2C3A48();
    v50 = v49;
    LOBYTE(v45) = v51;
    sub_2C37D8();
    v110 = sub_2C39E8();
    v53 = v52;
    LOBYTE(v38) = v54;
    v109 = v55;

    sub_72180(v48, v50, v45 & 1);

    v56 = v112;
    sub_29A87C(v112);
    v57 = sub_2C0D08();
    v58 = v97;
    (*(v114 + 8))(v56, v115);
    *&v125 = v57;
    v59 = v110;
    v60 = sub_2C39A8();
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v67 = v59;
    v68 = v121;
    sub_72180(v67, v53, v38 & 1);

    KeyPath = swift_getKeyPath();
    *&v125 = v60;
    *(&v125 + 1) = v62;
    v115 = v62;
    v70 = v64 & 1;
    v71 = v98;
    LOBYTE(v126) = v70;
    v127 = v66;
    v128 = KeyPath;
    v114 = KeyPath;
    v129 = 1;
    v72 = v100;
    (v100)(v98, v108, v68);
    (v72)(v58, enum case for DynamicTypeSize.accessibility3(_:), v68);
    result = sub_2C5868();
    if (result)
    {
      LODWORD(v112) = v70;
      v73 = v118;
      v111 = v60;
      v113 = v66;
      v74 = v93;
      v93(v118, v71, v68);
      v75 = v120;
      v74(v73 + *(v120 + 48), v58, v68);
      v76 = v119;
      sub_6932C(v73, v119, &qword_3BC938);
      v77 = *(v75 + 48);
      v78 = v116;
      v74(v116, v76, v68);
      v79 = v92;
      v92(v76 + v77, v68);
      sub_69130(v73, v76, &qword_3BC938);
      v74(v78 + *(v117 + 36), (v76 + *(v75 + 48)), v68);
      v79(v76, v68);
      sub_6620C(&qword_3BC968);
      sub_72198();
      sub_2C3F48();
      sub_69198(v78, &qword_3BC940);
      sub_72180(v111, v115, v112);

      v80 = v103;
      v81 = *(v103 + 16);
      v82 = v102;
      v83 = v104;
      v81(v102, v123, v104);
      v84 = v106;
      v124 = *(v106 + 16);
      v85 = v105;
      v86 = v95;
      (v124)(v105, v122, v95);
      v87 = v107;
      v81(v107, v82, v83);
      v88 = sub_6620C(&qword_3BC988);
      (v124)(&v87[*(v88 + 48)], v85, v86);
      v89 = *(v84 + 8);
      v89(v122, v86);
      v90 = *(v80 + 8);
      v90(v123, v83);
      v89(v85, v86);
      return (v90)(v82, v83);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_6F574()
{
  swift_getKeyPath();
  sub_712BC(&qword_3BC788, type metadata accessor for RatingUpdateProvider);
  sub_2BE6F8();

  return *(v0 + 16);
}

uint64_t sub_6F618@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_712BC(&qword_3BC788, type metadata accessor for RatingUpdateProvider);
  sub_2BE6F8();

  v5 = *(v3 + 24);
  *a2 = *(v3 + 16);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_6F6C8(uint64_t result, char a2)
{
  if ((*(v2 + 24) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 16) != *&result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 16) = *&result;
    *(v2 + 24) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_712BC(&qword_3BC788, type metadata accessor for RatingUpdateProvider);
  sub_2BE6E8();
  *&result = COERCE_DOUBLE();
  return result;
}

uint64_t sub_6F800()
{
  swift_getKeyPath();
  sub_712BC(&qword_3BC788, type metadata accessor for RatingUpdateProvider);
  sub_2BE6F8();

  return *(v0 + 25);
}

uint64_t sub_6F8A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_712BC(&qword_3BC788, type metadata accessor for RatingUpdateProvider);
  sub_2BE6F8();

  *a2 = *(v3 + 25);
  return result;
}

uint64_t sub_6F948(uint64_t result)
{
  if (*(v1 + 25) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_712BC(&qword_3BC788, type metadata accessor for RatingUpdateProvider);
    sub_2BE6E8();
  }

  return result;
}

Swift::Int Page.UpdateError.hashValue.getter()
{
  v1 = *v0;
  sub_2C6738();
  sub_2C6748(v1);
  return sub_2C6778();
}

Swift::Int sub_6FAD8()
{
  v1 = *v0;
  sub_2C6738();
  sub_2C6748(v1);
  return sub_2C6778();
}

uint64_t sub_6FB1C()
{
  v1 = objc_opt_self();
  v2 = sub_2C5888();
  v3 = swift_allocObject();
  swift_weakInit();
  v22 = sub_70E4C;
  v23 = v3;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_70280;
  v21 = &unk_38A8F0;
  v4 = _Block_copy(&v18);

  [v1 getRatingForItem:v2 forceFetch:0 shouldSuppressMetrics:0 completion:v4];
  _Block_release(v4);

  v5 = objc_opt_self();
  v6 = [v5 defaultCenter];
  v7 = objc_opt_self();
  v8 = [v7 mainQueue];
  v9 = swift_allocObject();
  swift_weakInit();
  v22 = sub_70E6C;
  v23 = v9;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_70688;
  v21 = &unk_38A918;
  v10 = _Block_copy(&v18);

  v11 = [v6 addObserverForName:@"BSUICloudAssetRateContentNotification" object:0 queue:v8 usingBlock:v10];
  _Block_release(v10);

  *(v0 + 48) = v11;
  swift_unknownObjectRelease();
  v12 = [v5 defaultCenter];
  v13 = [v7 mainQueue];
  v14 = swift_allocObject();
  swift_weakInit();
  v22 = sub_70E74;
  v23 = v14;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_70688;
  v21 = &unk_38A940;
  v15 = _Block_copy(&v18);

  v16 = [v12 addObserverForName:@"BSUICloudAssetRatingRemovalNotification" object:0 queue:v13 usingBlock:v15];
  _Block_release(v15);

  *(v0 + 56) = v16;
  return swift_unknownObjectRelease();
}

uint64_t sub_6FE70(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_2C5C58();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_2C5C18();
  v9 = a3;

  v10 = sub_2C5C08();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v8;
  v11[5] = a3;

  sub_249B98(0, 0, v6, &unk_2E36A8, v11);
}

uint64_t sub_70000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  sub_2C5C18();
  v5[8] = sub_2C5C08();
  v7 = sub_2C5BB8();

  return _swift_task_switch(sub_70098, v7, v6);
}

uint64_t sub_70098()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[7];
    if (v3)
    {
      v4 = v3;
      sub_2C5CA8();
      sub_6F6C8(COERCE__INT64(v5 * 5.0), 0);
    }

    else
    {
      sub_6F6C8(0, 0);
    }

    swift_getKeyPath();
    v0[5] = v2;
    sub_712BC(&qword_3BC788, type metadata accessor for RatingUpdateProvider);
    sub_2BE6F8();

    if (*(v2 + 25))
    {
    }

    else
    {
      swift_getKeyPath();
      v6 = swift_task_alloc();
      *(v6 + 16) = v2;
      *(v6 + 24) = 1;
      v0[5] = v2;
      sub_2BE6E8();
    }
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_70280(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v18 = *(a1 + 32);
  if (a5)
  {
    v10 = sub_2C58C8();
    v12 = v11;
    if (v6)
    {
LABEL_3:
      v13 = sub_2C58C8();
      v6 = v14;
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    v12 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:

  v15 = a3;
  v16 = a4;
  v18(a2, a3, a4, v10, v12, v13, v6);
}

void sub_70384()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = sub_2BE258();
  if (!v2)
  {
LABEL_15:

    return;
  }

  v3 = v2;
  v12 = sub_2C58C8();
  v14 = v4;
  sub_2C61A8();
  if (!*(v3 + 16) || (v5 = sub_5D2A0(v15), (v6 & 1) == 0))
  {
LABEL_16:

    sub_68D90(v15);
    return;
  }

  sub_68C64(*(v3 + 56) + 32 * v5, v16);
  sub_68D90(v15);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  if (*(v1 + 32) != v12 || *(v1 + 40) != v14)
  {
    v7 = sub_2C65B8();

    if (v7)
    {
      goto LABEL_10;
    }

LABEL_17:

    return;
  }

LABEL_10:
  v13 = sub_2C58C8();
  sub_2C61A8();
  if (!*(v3 + 16))
  {
    goto LABEL_16;
  }

  v8 = sub_5D2A0(v15);
  if ((v9 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_68C64(*(v3 + 56) + 32 * v8, v16);
  sub_68D90(v15);

  sub_70EB8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_2C5CA8();
  sub_6F6C8(COERCE__INT64(v10 * 5.0), 0);
  if (*(v1 + 25) == 2)
  {

    *(v1 + 25) = 2;
    goto LABEL_15;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v15[0] = v1;
  sub_712BC(&qword_3BC788, type metadata accessor for RatingUpdateProvider);
  sub_2BE6E8();
}

uint64_t sub_70688(uint64_t a1)
{
  v2 = sub_2BE268();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_2BE238();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_7077C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_2BE258();
    if (v2)
    {
      v3 = v2;
      v9 = sub_2C58C8();
      v10 = v4;
      sub_2C61A8();
      if (!*(v3 + 16) || (v5 = sub_5D2A0(v11), (v6 & 1) == 0))
      {

        return sub_68D90(v11);
      }

      sub_68C64(*(v3 + 56) + 32 * v5, v12);
      sub_68D90(v11);

      if (swift_dynamicCast())
      {
        if (*(v1 + 32) == v9 && *(v1 + 40) == v10)
        {

          goto LABEL_11;
        }

        v7 = sub_2C65B8();

        if (v7)
        {
LABEL_11:
          sub_6F6C8(0, 0);
          if (*(v1 + 25) != 3)
          {
            KeyPath = swift_getKeyPath();
            __chkstk_darwin(KeyPath);
            v11[0] = v1;
            sub_712BC(&qword_3BC788, type metadata accessor for RatingUpdateProvider);
            sub_2BE6E8();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_709C8()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v1 name:@"BSUICloudAssetRateContentNotification" object:0];
    swift_unknownObjectRelease();
  }

  v4 = *(v0 + 56);
  if (v4)
  {
    v5 = objc_opt_self();
    swift_unknownObjectRetain();
    v6 = [v5 defaultCenter];
    [v6 removeObserver:v4 name:@"BSUICloudAssetRatingRemovalNotification" object:0];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v7 = OBJC_IVAR____TtC11BookStoreUIP33_478A1F1FC78ADA53CFC880D079DC87E220RatingUpdateProvider___observationRegistrar;
  v8 = sub_2BE738();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t sub_70B14()
{
  sub_709C8();

  return swift_deallocClassInstance();
}

uint64_t sub_70B90()
{
  result = sub_2BE738();
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

uint64_t getEnumTagSinglePayload for RatingUpdateProvider.Status(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RatingUpdateProvider.Status(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_70DC0()
{
  result = qword_3BC780;
  if (!qword_3BC780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BC780);
  }

  return result;
}

uint64_t sub_70E14()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_70E54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_70EB8()
{
  result = qword_3BC790;
  if (!qword_3BC790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3BC790);
  }

  return result;
}

uint64_t sub_70F04()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_70F4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_7100C;

  return sub_70000(a1, v4, v5, v7, v6);
}

uint64_t sub_7100C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_71138()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 24) = v2;
}

unint64_t sub_711AC()
{
  result = qword_3BC798;
  if (!qword_3BC798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BC798);
  }

  return result;
}

unint64_t sub_71204()
{
  result = qword_3BC7A0;
  if (!qword_3BC7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BC7A0);
  }

  return result;
}

uint64_t sub_712BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_7136C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_713C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for RatingSummaryComponentModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_6620C(&qword_3BC7B8);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v16 = sub_6620C(&qword_3BC7C0);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[8];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_71574(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for RatingSummaryComponentModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5]) = a2;
    return result;
  }

  v13 = sub_6620C(&qword_3BC7B8);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = sub_6620C(&qword_3BC7C0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

void sub_71700()
{
  type metadata accessor for RatingSummaryComponentModel();
  if (v0 <= 0x3F)
  {
    sub_7191C(319, &qword_3BC830, &qword_3BC7B0, &unk_2E37B0, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_7191C(319, &qword_3BC838, &qword_3BC840, &unk_2ED0A0, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_71980(319, &qword_3BC848, &type metadata accessor for OpaqueMetricsFieldsContext);
        if (v3 <= 0x3F)
        {
          sub_71980(319, &qword_3BC850, &type metadata accessor for ColorConstants);
          if (v4 <= 0x3F)
          {
            sub_719D4(319, &qword_3BC858, &type metadata for Bool, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              sub_719D4(319, &unk_3BC860, &type metadata for Double, &type metadata accessor for State);
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

uint64_t sub_718D4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_7191C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_718D4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_71980(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2C2558();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_719D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_71A88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_71AF4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_71B00()
{
  type metadata accessor for RatingSummaryView(0);

  return sub_6DAB8();
}

uint64_t sub_71B60()
{
  v1 = type metadata accessor for RatingSummaryView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_68CD0(v0 + v3);
  if (*(v0 + v3 + 64))
  {
    sub_68CD0(v5 + 40);
  }

  v6 = *(type metadata accessor for RatingSummaryComponentModel() + 24);
  v7 = sub_2C5018();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = v5 + v1[6];
  if (*(v9 + 40))
  {
    if (*(v9 + 24))
    {
      sub_68CD0(v9);
    }
  }

  else
  {
  }

  v10 = v1[7];
  sub_6620C(&unk_3C4360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2BFF28();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  v12 = v1[8];
  sub_6620C(&unk_3C8530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2C0D48();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
  }

  sub_71AF4(*(v5 + v1[9]), *(v5 + v1[9] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_71E7C(uint64_t a1, double *a2)
{
  v5 = *(type metadata accessor for RatingSummaryView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_6DB28(a1, a2, v6);
}

unint64_t sub_71EFC()
{
  result = qword_3BC8C8;
  if (!qword_3BC8C8)
  {
    sub_718D4(&qword_3BC8B0);
    sub_72B74(&qword_3BC8D0, &qword_3BC8D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BC8C8);
  }

  return result;
}

uint64_t sub_71FB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&unk_3CA260);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_72024(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_72084(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *sub_720C8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_7212C()
{
  result = qword_3C41E0;
  if (!qword_3C41E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C41E0);
  }

  return result;
}

uint64_t sub_72180(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_72198()
{
  result = qword_3BC970;
  if (!qword_3BC970)
  {
    sub_718D4(&qword_3BC968);
    sub_72B74(&qword_3BC978, &qword_3BC980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BC970);
  }

  return result;
}

unint64_t sub_72250()
{
  result = qword_3BC9C0;
  if (!qword_3BC9C0)
  {
    sub_718D4(&qword_3BC9A0);
    sub_72B74(&qword_3BC9C8, &qword_3BC9D0);
    sub_72B74(&qword_3BC9D8, &qword_3BC9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BC9C0);
  }

  return result;
}

uint64_t sub_72334@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RatingSummaryView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_6C520(a1, v6, a2);
}

unint64_t sub_723B4()
{
  result = qword_3BCA28;
  if (!qword_3BCA28)
  {
    sub_718D4(&qword_3BCA18);
    sub_72440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BCA28);
  }

  return result;
}

unint64_t sub_72440()
{
  result = qword_3BCA30;
  if (!qword_3BCA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BCA30);
  }

  return result;
}

unint64_t sub_72494()
{
  result = qword_3BCA38;
  if (!qword_3BCA38)
  {
    sub_718D4(&qword_3BCA20);
    sub_718D4(&qword_3BCA40);
    sub_72B74(&qword_3BCA48, &qword_3BCA40);
    swift_getOpaqueTypeConformance2();
    sub_712BC(&qword_3BCA50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BCA38);
  }

  return result;
}

uint64_t sub_725C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_72630()
{
  v1 = type metadata accessor for RatingSummaryView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_68CD0(v0 + v3);
  if (*(v0 + v3 + 64))
  {
    sub_68CD0(v5 + 40);
  }

  v6 = *(type metadata accessor for RatingSummaryComponentModel() + 24);
  v7 = sub_2C5018();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = v5 + v1[6];
  if (*(v9 + 40))
  {
    if (*(v9 + 24))
    {
      sub_68CD0(v9);
    }
  }

  else
  {
  }

  v10 = v1[7];
  sub_6620C(&unk_3C4360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2BFF28();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  v12 = v1[8];
  sub_6620C(&unk_3C8530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2C0D48();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
  }

  sub_71AF4(*(v5 + v1[9]), *(v5 + v1[9] + 8));

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_72958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RatingSummaryView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_6D7C8(a1, v2 + v6, v7, a2);
}

unint64_t sub_72A04()
{
  result = qword_3BCAE8;
  if (!qword_3BCAE8)
  {
    sub_718D4(&qword_3BCAE0);
    sub_72ABC();
    sub_72B74(&qword_3BCB10, &qword_3BCB18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BCAE8);
  }

  return result;
}

unint64_t sub_72ABC()
{
  result = qword_3BCAF0;
  if (!qword_3BCAF0)
  {
    sub_718D4(&qword_3BCAF8);
    sub_72B74(&qword_3BCB00, &qword_3BCB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BCAF0);
  }

  return result;
}

uint64_t sub_72B74(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_718D4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_72BBC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RatingSummaryView(0);

  return sub_6D5C8(a1);
}

unint64_t sub_72C44()
{
  result = qword_3BCB40;
  if (!qword_3BCB40)
  {
    sub_718D4(&qword_3BCB38);
    sub_72CD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BCB40);
  }

  return result;
}

unint64_t sub_72CD0()
{
  result = qword_3BCB48;
  if (!qword_3BCB48)
  {
    sub_718D4(&qword_3BCB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BCB48);
  }

  return result;
}

uint64_t sub_72D54()
{
  sub_718D4(&qword_3BC8B0);
  sub_71EFC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t RootHostingControllerConfiguration.init(navigationContext:pageMetadata:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = *a1;
  v5 = *(type metadata accessor for RootHostingControllerConfiguration(0) + 20);
  v6 = sub_2C0838();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_72F04(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_3BCB60;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_72F70(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = qword_3BCB60;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_73010;
}

void sub_73010(uint64_t a1, char a2)
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
  }

  free(v3);
}

void sub_730E4(uint64_t a1)
{
  *(a1 + qword_3BCB60 + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v2 = a1 + qword_3BCC58;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(a1 + qword_3BCB80) = 0;
  *(a1 + qword_3BCC60) = &_swiftEmptySetSingleton;
  sub_2C6378();
  __break(1u);
}

uint64_t sub_731AC()
{
  sub_6620C(&qword_3BCE08);
  sub_72B74(&qword_3BCE10, &qword_3BCE08);
  sub_2C2408();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_6620C(&qword_3BCE18);
  sub_72B74(&qword_3BCE20, &qword_3BCE18);
  sub_2C2458();

  swift_beginAccess();
  sub_2C23B8();
  swift_endAccess();
}

void sub_73334(uint64_t a1)
{
  v2 = type metadata accessor for HostProxy.Event(0);
  __chkstk_darwin(v2);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_77C78(a1, v4, type metadata accessor for HostProxy.Event);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v15 = *v4;
      [v6 ba_setAnalyticsTracker:v15];

LABEL_10:
      return;
    }

    if (!EnumCaseMultiPayload)
    {
      v8 = *v4;
      if ((_UISolariumEnabled() & 1) == 0)
      {
        v9 = [v6 navigationItem];
        [v9 _setManualScrollEdgeAppearanceEnabled:v8];

        if (v8)
        {
          v10 = [v6 contentScrollViewForEdge:1];
          [v6 setContentScrollView:0 forEdge:1];
          [v6 setContentScrollView:v10 forEdge:1];
        }
      }

      v11 = &v6[qword_3BCC58];
      *v11 = v8;
      v11[8] = v8 ^ 1;
      v12 = &v6[qword_3BCB60];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v13 = *(v12 + 1);
        ObjectType = swift_getObjectType();
        (*(v13 + 16))(v8, v8 ^ 1, v6, ObjectType, v13);

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_10;
    }

    sub_77CE0(v4, type metadata accessor for HostProxy.Event);
  }
}

id sub_73578()
{
  v1 = v0;
  v2 = sub_2C1A28();
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin(v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RootHostingControllerConfiguration(0);
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  v24 = qword_3E8830;
  sub_77C78(v0 + qword_3E8830, &v23 - v9, type metadata accessor for RootHostingControllerConfiguration);
  v11 = *(v5 + 20);
  sub_2C0818();
  v13 = v12;
  v14 = sub_2C0838();
  v23 = *(*(v14 - 8) + 8);
  v23(&v10[v11], v14);
  if (v13 || (sub_2C33A8(), v15 = v28, , sub_77C1C(v27), v15))
  {
    v16 = [v1 navigationItem];
    v17 = sub_2C5888();

    [v16 setTitle:v17];
  }

  v18 = [v1 navigationItem];
  sub_77C78(v1 + v24, v7, type metadata accessor for RootHostingControllerConfiguration);
  v19 = *(v5 + 20);
  sub_2C07F8();
  v23(&v7[v19], v14);
  v20 = sub_2C1A18();
  (*(v25 + 8))(v4, v26);
  [v18 setLargeTitleDisplayMode:v20];

  v21 = [v1 navigationItem];
  [v21 _setSupportsTwoLineLargeTitles:1];

  return [v1 bc_setNavBarVisible:1];
}

uint64_t sub_738D8()
{
  sub_77BF4(v0 + qword_3BCB60);

  sub_77CE0(v0 + qword_3E8830, type metadata accessor for RootHostingControllerConfiguration);

  sub_77BF4(v0 + qword_3BCBB0);
}

uint64_t sub_739C4(uint64_t a1)
{
  sub_77BF4(a1 + qword_3BCB60);

  sub_77CE0(a1 + qword_3E8830, type metadata accessor for RootHostingControllerConfiguration);

  sub_77BF4(a1 + qword_3BCBB0);
}

Swift::Void __swiftcall RootHostingController.viewSafeAreaInsetsDidChange()()
{
  v30.receiver = v0;
  v30.super_class = type metadata accessor for RootHostingController(0);
  objc_msgSendSuper2(&v30, "viewSafeAreaInsetsDidChange");
  v1 = [v0 traitCollection];
  v2 = [v1 isInCard];

  if (v2)
  {
    v3 = [v0 traitCollection];
    v4 = [v3 isInactiveCard];

    if (v4)
    {
      v5 = [v0 navigationController];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 navigationBar];

        if (v7)
        {
          v8 = v7;
          [v8 alpha];
          if (v9 == 0.0)
          {
            [v0 additionalSafeAreaInsets];
            if (v10 == 0.0)
            {
              [v8 bounds];
              v12 = v11;
              v14 = v13;
              v16 = v15;
              v18 = v17;

              v31.origin.x = v12;
              v31.origin.y = v14;
              v31.size.width = v16;
              v31.size.height = v18;
              Height = CGRectGetHeight(v31);
              [v0 additionalSafeAreaInsets];
              [v0 setAdditionalSafeAreaInsets:Height];
            }

            else
            {
            }

            goto LABEL_12;
          }
        }
      }
    }
  }

  [v0 additionalSafeAreaInsets];
  if (v20 != 0.0)
  {
    [v0 additionalSafeAreaInsets];
    [v0 setAdditionalSafeAreaInsets:0.0];
  }

LABEL_12:
  v21 = [v0 view];
  if (v21)
  {
    v22 = v21;
    [v21 safeAreaInsets];
    v24 = v23;
    v26 = v25;

    v27 = *&v0[qword_3BCB68];
    swift_getKeyPath();
    sub_77DB0(&qword_3BCB70);
    sub_2BE6F8();

    swift_beginAccess();
    if (*(v27 + 40) != v24)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_2BE6E8();
    }

    swift_getKeyPath();
    sub_2BE6F8();

    swift_beginAccess();
    if (*(v27 + 48) != v26)
    {
      v29 = swift_getKeyPath();
      __chkstk_darwin(v29);
      sub_2BE6E8();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_73E94(void *a1)
{
  v1 = a1;
  RootHostingController.viewSafeAreaInsetsDidChange()();
}

Swift::Void __swiftcall RootHostingController.viewWillLayoutSubviews()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for RootHostingController(0);
  objc_msgSendSuper2(&v4, "viewWillLayoutSubviews");
  v1 = [v0 navigationItem];
  isa = [v1 trailingItemGroups];

  if (!isa)
  {
    sub_76AD4();
    sub_2C5B28();
    isa = sub_2C5B18().super.isa;
  }

  v3 = [v0 navigationItem];
  [v3 setTrailingItemGroups:isa];

  if ((*(v0 + qword_3BCB80) & 1) == 0)
  {
    *(v0 + qword_3BCB80) = 1;
    [v0 bsui_configureHideSmallTitleOnScroll:{objc_msgSend(v0, "bsui_hasLargeTitle")}];
  }
}

void sub_73FFC(void *a1)
{
  v1 = a1;
  RootHostingController.viewWillLayoutSubviews()();
}

Swift::Void __swiftcall RootHostingController.viewWillAppear(_:)(Swift::Bool a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for RootHostingController(0);
  objc_msgSendSuper2(&v7, "viewWillAppear:", a1);
  v3 = [v1 presentedViewController];
  if (!v3)
  {
    v4 = [v1 navigationController];
    if (!v4)
    {
      return;
    }

    v5 = v4;
    v6 = [v4 isNavigationBarHidden];
    if (v6 == [v1 bc_navBarVisible])
    {
      [v5 setNavigationBarHidden:objc_msgSend(v5 animated:{"isNavigationBarHidden") ^ 1, a1}];
    }

    v3 = v5;
  }
}

void sub_7412C(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  RootHostingController.viewWillAppear(_:)(a3);
}

Swift::Void __swiftcall RootHostingController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for RootHostingController(0);
  objc_msgSendSuper2(&v16, "viewWillDisappear:", a1);
  [v1 bc_analyticsVisibilitySubtreeWillDisappear];
  v3 = [v1 transitionCoordinator];
  if (v3)
  {
    v4 = v3;
    if ([v3 isInteractive])
    {
      v14 = ContextActionItemCoverProvider.init();
      v15 = 0;
      v10 = _NSConcreteStackBlock;
      v11 = 1107296256;
      v12 = sub_74394;
      v13 = &unk_38AA78;
      v5 = _Block_copy(&v10);
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = sub_76B70;
      v15 = v6;
      v10 = _NSConcreteStackBlock;
      v11 = 1107296256;
      v12 = sub_74394;
      v13 = &unk_38AAC8;
      v7 = _Block_copy(&v10);

      [v4 animateAlongsideTransition:v5 completion:v7];
      _Block_release(v7);
      _Block_release(v5);
    }

    swift_unknownObjectRelease();
  }

  v8 = [v1 navigationController];
  if (v8)
  {
    v9 = v8;
    if ([v8 isNavigationBarHidden])
    {
      if ([v1 bc_navBarVisible])
      {
        [v9 setNavigationBarHidden:0 animated:0];
      }
    }
  }
}

uint64_t sub_74394(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void sub_743F4(void *a1)
{
  if ([a1 isCancelled])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = [Strong viewIfLoaded];

      v4 = [v3 window];
      if (v4)
      {

        swift_beginAccess();
        v5 = swift_unknownObjectWeakLoadStrong();
        if (v5)
        {
          v6 = v5;
          _s11BookStoreUI21RootHostingControllerC33didBecomeVisibleContentScrollViewyyF_0();
        }
      }
    }
  }
}

void _s11BookStoreUI21RootHostingControllerC33didBecomeVisibleContentScrollViewyyF_0()
{
  v1 = [v0 traitCollection];
  v2 = [v1 isInCard];

  if (v2)
  {
    v3 = [v0 presentingViewController];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 tabBarController];

      if (v5)
      {
        [v5 bc_setPreferredTabBarScrollEdgeAppearance:0];
      }
    }

    v10 = [v0 contentScrollViewForEdge:1];
    v6 = [v0 presentingViewController];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 tabBarController];

      if (v8)
      {
        v9 = [v8 selectedViewController];

        if (v9)
        {
          [v9 setContentScrollView:v10 forEdge:15];
        }
      }
    }
  }
}

void sub_7464C(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  RootHostingController.viewWillDisappear(_:)(a3);
}

id sub_746DC(char a1, SEL *a2, SEL *a3)
{
  v8.receiver = v3;
  v8.super_class = type metadata accessor for RootHostingController(0);
  objc_msgSendSuper2(&v8, *a2, a1 & 1);
  return [v3 *a3];
}

void sub_74750(void *a1, uint64_t a2, uint64_t a3, const char **a4, SEL *a5)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for RootHostingController(0);
  v8 = *a4;
  v9 = v10.receiver;
  objc_msgSendSuper2(&v10, v8, a3);
  [v9 *a5];
}

id sub_747E8(void *a1, uint64_t a2, SEL *a3)
{
  v5 = sub_6620C(&qword_3BCB88);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  v9 = qword_3BB738;
  v10 = a1;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = sub_57AD8(v5, qword_3BF998);
  (*(v6 + 16))(v8, v11, v5);
  sub_2BF448();
  (*(v6 + 8))(v8, v5);
  if (v17 == 1)
  {
    v12 = type metadata accessor for RootHostingController(0);
    v16.receiver = v10;
    v16.super_class = v12;
    v13 = objc_msgSendSuper2(&v16, *a3);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id sub_7498C(SEL *a1)
{
  v3 = v1;
  v4 = sub_6620C(&qword_3BCB88);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  if (qword_3BB738 != -1)
  {
    swift_once();
  }

  v8 = sub_57AD8(v4, qword_3BF998);
  (*(v5 + 16))(v7, v8, v4);
  sub_2BF448();
  (*(v5 + 8))(v7, v4);
  if (v13 != 1)
  {
    return 0;
  }

  v9 = type metadata accessor for RootHostingController(0);
  v12.receiver = v3;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, *a1);
}

uint64_t sub_74B3C(SEL *a1, unsigned int *a2)
{
  v5 = sub_2BEE58();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RootHostingController(0);
  v11.receiver = v2;
  v11.super_class = v9;
  objc_msgSendSuper2(&v11, *a1);
  (*(v6 + 104))(v8, *a2, v5);
  sub_2BEEA8();
  return (*(v6 + 8))(v8, v5);
}

void sub_74C68(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  v7 = sub_2BEE58();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RootHostingController(0);
  v14.receiver = a1;
  v14.super_class = v11;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v14, v12);
  (*(v8 + 104))(v10, *a4, v7);
  sub_2BEEA8();
  (*(v8 + 8))(v10, v7);
}

void RootHostingController.present(_:animated:completion:)(void *a1, char a2, void (*a3)(uint64_t a1, char a2, uint64_t a3, uint64_t a4), void *a4)
{
  v5 = v4;
  if (a3)
  {
    v29 = a3;
    v30 = a4;
    v25 = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_750DC;
    v28 = &unk_38AB68;
    v8 = _Block_copy(&v25);
  }

  else
  {
    v8 = 0;
  }

  v9 = type metadata accessor for RootHostingController(0);
  v31.receiver = v5;
  v31.super_class = v9;
  objc_msgSendSuper2(&v31, "presentViewController:animated:completion:", a1, a2 & 1, v8);
  _Block_release(v8);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    v12 = qword_3BB838;
    v13 = a1;
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = sub_2C00B8();
    sub_57AD8(v14, qword_3C3140);
    v15 = sub_2C0098();
    v16 = sub_2C5DE8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "Applying workaround for rdar://108212936. View is becoming non-interactive", v17, 2u);
    }

    v18 = [v5 view];
    if (v18)
    {
      v19 = v18;
      [v18 setUserInteractionEnabled:0];

      v20 = [v11 completionWithItemsHandler];
      if (v20)
      {
        v21 = swift_allocObject();
        *(v21 + 16) = v20;
        v20 = sub_76C04;
      }

      else
      {
        v21 = 0;
      }

      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = swift_allocObject();
      v23[2] = v22;
      v23[3] = v20;
      v23[4] = v21;
      v29 = sub_76BC0;
      v30 = v23;
      v25 = _NSConcreteStackBlock;
      v26 = 1107296256;
      v27 = sub_7536C;
      v28 = &unk_38AB18;
      v24 = _Block_copy(&v25);
      sub_77DF4(v20);

      [v11 setCompletionWithItemsHandler:v24];
      _Block_release(v24);
      sub_77BDC(v20);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_750DC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_75120(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v9.super.isa = sub_2C5B18().super.isa;
    if (a4)
    {
LABEL_3:
      v10 = sub_2BE348();
      goto LABEL_6;
    }
  }

  else
  {
    v9.super.isa = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  v11 = v10;
  (*(a5 + 16))(a5, a1, a2 & 1, v9.super.isa);
}

void sub_751D8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, void, uint64_t, uint64_t))
{
  if (qword_3BB838 != -1)
  {
    swift_once();
  }

  v11 = sub_2C00B8();
  sub_57AD8(v11, qword_3C3140);
  v12 = sub_2C0098();
  v13 = sub_2C5DE8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "Disabling workaround for rdar://108212936. View is becoming interactive", v14, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = [Strong view];

    if (!v17)
    {
      __break(1u);
      return;
    }

    [v17 setUserInteractionEnabled:1];
  }

  if (a6)
  {
    a6(a1, a2 & 1, a3, a4);
  }
}

uint64_t sub_7536C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  if (a4)
  {
    v9 = sub_2C5B28();
  }

  else
  {
    v9 = 0;
  }

  v10 = a2;
  v11 = a5;
  v8(a2, a3, v9, a5);
}

void sub_75428(void *a1, int a2, void *a3, char a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  if (v8)
  {
    v9 = swift_allocObject();
    v9[2] = v8;
    v8 = sub_77BEC;
  }

  else
  {
    v9 = 0;
  }

  v10 = a3;
  v11 = a1;
  RootHostingController.present(_:animated:completion:)(v10, a4, v8, v9);
  sub_77BDC(v8);
}

uint64_t sub_75500(void *a1)
{
  v1 = a1;
  v2 = RootHostingController.supportedInterfaceOrientations.getter();

  return v2;
}

uint64_t RootHostingController.supportedInterfaceOrientations.getter()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {
    v2 = v1;
    if (swift_dynamicCastObjCProtocolConditional())
    {
      v3 = [v2 supportedInterfaceOrientations];

      return v3;
    }
  }

  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == &dword_0 + 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

Swift::Void __swiftcall RootHostingController.setContentScrollView(_:for:)(UIScrollView_optional _, NSDirectionalRectEdge a2)
{
  v3 = v2;
  v4 = *&_.is_nil;
  isa = _.value.super.super.super.isa;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for RootHostingController(0);
  objc_msgSendSuper2(&v10, "setContentScrollView:forEdge:", isa, v4);
  _s11BookStoreUI21RootHostingControllerC33didBecomeVisibleContentScrollViewyyF_0();
  v6 = &v3[qword_3BCB60];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(v3, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  v9 = [v3 cardContentDelegate];
  if (v9)
  {
    [v9 scrollViewDidChange];
    swift_unknownObjectRelease();
  }
}

void sub_756F8(void *a1, uint64_t a2, void *a3, Swift::Bool a4)
{
  v7 = a3;
  v8 = a1;
  v10.value.super.super.super.isa = a3;
  v10.is_nil = a4;
  RootHostingController.setContentScrollView(_:for:)(v10, v8);
}

void sub_75770(void *a1)
{
  v1 = a1;
  _s11BookStoreUI21RootHostingControllerC33didBecomeVisibleContentScrollViewyyF_0();
}

id sub_757BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = sub_6620C(&qword_3BCE68);
  __chkstk_darwin(v10 - 8);
  v12 = &v49 - v11;
  v13 = sub_2C1898();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 0;
  }

  if (a4)
  {
    v54 = a1;
    v55 = a2;

    v57._countAndFlagsBits = 45;
    v57._object = 0xE100000000000000;
    sub_2C5978(v57);
    v58._countAndFlagsBits = a3;
    v58._object = a4;
    sub_2C5978(v58);
    a1 = v54;
    a2 = v55;
  }

  else
  {
    swift_bridgeObjectRetain_n();
  }

  v51 = a1;
  v52 = a2;
  sub_2C61A8();
  sub_2C0988();
  sub_68D90(v53);
  if (!v56)
  {

    sub_69198(&v54, &qword_3BCE70);
    (*(v14 + 56))(v12, 1, 1, v13);
    goto LABEL_9;
  }

  sub_6620C(&qword_3BCE78);
  v17 = swift_dynamicCast();
  (*(v14 + 56))(v12, v17 ^ 1u, 1, v13);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {

LABEL_9:
    sub_69198(v12, &qword_3BCE68);
    return 0;
  }

  (*(v14 + 32))(v16, v12, v13);
  result = [v4 view];
  if (result)
  {
    v19 = result;
    [result safeAreaInsets];
    v21 = v20;
    v23 = v22;

    v24 = [v5 navigationItem];
    v25 = [v24 _isManualScrollEdgeAppearanceEnabled];

    if (v25 & 1) != 0 || (sub_2C1888())
    {
      sub_2C1868();
      v27 = v26;
      v29 = v28;
      Width = v30;
      Height = v32;
    }

    else
    {
      sub_2C1868();
      v27 = v23 + v34;
      sub_2C1868();
      v29 = v21 + v35;
      sub_2C1868();
      Width = CGRectGetWidth(v59);
      sub_2C1868();
      Height = CGRectGetHeight(v60);
    }

    v49 = a1;
    v36 = sub_2C1878();
    result = [v5 view];
    if (result)
    {
      v37 = result;
      v38 = sub_2C1858();
      v40 = v39;
      v42 = v41;
      v43 = type metadata accessor for SwiftUICoverAnimationProvider();
      v44 = objc_allocWithZone(v43);
      *&v44[OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_cardStackTransitioningCoverSourceExtraXOffset] = 0;
      v45 = &v44[OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_sourceFrame];
      *v45 = v27;
      v45[1] = v29;
      v45[2] = Width;
      v45[3] = Height;
      v46 = &v44[OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_imageViewIdentifier];
      *v46 = v49;
      v46[1] = a2;
      *&v44[OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_sourceReferenceView] = v37;
      *&v44[OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_coverSourceImage] = v36;
      v44[OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_isInNonHorizontalLayout] = 0;
      v47 = &v44[OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider__isVisible];
      *v47 = v38;
      *(v47 + 1) = v40;
      v47[16] = v42 & 1;
      v50.receiver = v44;
      v50.super_class = v43;
      v48 = objc_msgSendSuper2(&v50, "init");
      (*(v14 + 8))(v16, v13);
      return v48;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t RootHostingController.coverSource(forRepresentedObject:)()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    sub_2C57D8();
    return 0;
  }

  return result;
}

id sub_75E58(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = RootHostingController.coverSource(forRepresentedObject:)();

  return v6;
}

id sub_75EBC(void *a1)
{
  v1 = a1;
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  v4 = [result superview];

  if (!v4)
  {
    result = [v1 view];
    if (result)
    {
      v4 = result;
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return result;
  }

LABEL_5:

  return v4;
}

id RootHostingController.containerViewForHostingCoversDuringAnimation.getter()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [result superview];

  if (v3)
  {
    return v3;
  }

  result = [v0 view];
  if (!result)
  {
    goto LABEL_7;
  }

  return result;
}

id sub_75FF0(void *a1, uint64_t a2, void *a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = _s11BookStoreUI21RootHostingControllerC10visibility2of13ignoringYAxisSo45BCCardStackTransitioningCoverSourceVisibilityVSo0klmnO0_p_SbtF_0(a3);
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_76078()
{
  result = *(v0 + OBJC_IVAR____TtCC11BookStoreUI21RootHostingControllerP33_33EEA6210FEC2640A5148301F86EE4A328FallbackCoverAnimatingSource_adamID + 8);
  if (result)
  {
    v2 = *(v0 + OBJC_IVAR____TtCC11BookStoreUI21RootHostingControllerP33_33EEA6210FEC2640A5148301F86EE4A328FallbackCoverAnimatingSource_instanceID + 8);
    if (v2)
    {
      v3 = *(v0 + OBJC_IVAR____TtCC11BookStoreUI21RootHostingControllerP33_33EEA6210FEC2640A5148301F86EE4A328FallbackCoverAnimatingSource_instanceID);

      v5._countAndFlagsBits = 45;
      v5._object = 0xE100000000000000;
      sub_2C5978(v5);
      v6._countAndFlagsBits = v3;
      v6._object = v2;
      sub_2C5978(v6);

      v4 = sub_2C5F68();

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_761F8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_762B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = sub_6620C(&qword_3BCE00);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  if (a3)
  {
    sub_2BE5A8();
    v14 = sub_2BE5C8();
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  }

  else
  {
    v15 = sub_2BE5C8();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  }

  if (a4)
  {
    sub_2C58C8();
  }

  if (a5)
  {
    v16 = sub_2C58C8();
    a5 = v17;
  }

  else
  {
    v16 = 0;
  }

  v18 = a6;
  v19 = a1;
  if (v18)
  {
    v20 = sub_2C58C8();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = sub_7759C(v13, v16, a5, v20, v22);

  sub_69198(v13, &qword_3BCE00);

  return v23;
}

id RootHostingController.coverAnimationHostSource(forItem:)()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = type metadata accessor for RootHostingController.FallbackCoverAnimatingSource();
    v4 = objc_allocWithZone(v3);
    v5 = &v4[OBJC_IVAR____TtCC11BookStoreUI21RootHostingControllerP33_33EEA6210FEC2640A5148301F86EE4A328FallbackCoverAnimatingSource_adamID];
    v6 = &v4[OBJC_IVAR____TtCC11BookStoreUI21RootHostingControllerP33_33EEA6210FEC2640A5148301F86EE4A328FallbackCoverAnimatingSource_instanceID];
    *&v4[OBJC_IVAR____TtCC11BookStoreUI21RootHostingControllerP33_33EEA6210FEC2640A5148301F86EE4A328FallbackCoverAnimatingSource_referenceView] = v2;
    *v5 = 0;
    *(v5 + 1) = 0;
    *v6 = 0;
    *(v6 + 1) = 0;
    v7.receiver = v4;
    v7.super_class = v3;
    return objc_msgSendSuper2(&v7, "init");
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_7652C(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_2C6128();
  swift_unknownObjectRelease();
  result = [v2 view];
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for RootHostingController.FallbackCoverAnimatingSource();
    v6 = objc_allocWithZone(v5);
    v7 = &v6[OBJC_IVAR____TtCC11BookStoreUI21RootHostingControllerP33_33EEA6210FEC2640A5148301F86EE4A328FallbackCoverAnimatingSource_adamID];
    v8 = &v6[OBJC_IVAR____TtCC11BookStoreUI21RootHostingControllerP33_33EEA6210FEC2640A5148301F86EE4A328FallbackCoverAnimatingSource_instanceID];
    *&v6[OBJC_IVAR____TtCC11BookStoreUI21RootHostingControllerP33_33EEA6210FEC2640A5148301F86EE4A328FallbackCoverAnimatingSource_referenceView] = v4;
    *v7 = 0;
    *(v7 + 1) = 0;
    *v8 = 0;
    *(v8 + 1) = 0;
    v10.receiver = v6;
    v10.super_class = v5;
    v9 = objc_msgSendSuper2(&v10, "init");

    sub_68CD0(v11);

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_76638(void *a1)
{
  v1 = [a1 contentScrollViewForEdge:1];

  return v1;
}

id RootHostingController.scrollView.getter()
{
  v1 = [v0 contentScrollViewForEdge:1];

  return v1;
}

id sub_766B0()
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t RootHostingController.cardContentDelegate.setter()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall RootHostingController.scrollToTop(animated:)(Swift::Bool animated)
{
  v3 = [v1 contentScrollViewForEdge:1];
  if (v3)
  {
    v5 = v3;
    [v3 adjustedContentInset];
    [v5 setContentOffset:animated animated:{0.0, -v4}];
  }
}

void sub_76804(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1;
  v4 = [v7 contentScrollViewForEdge:1];
  if (v4)
  {
    v5 = v4;
    [v4 adjustedContentInset];
    [v5 setContentOffset:a3 animated:{0.0, -v6}];
  }
}

double sub_7689C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_77DB0(&qword_3BCB70);
  sub_2BE6F8();

  swift_beginAccess();
  result = *(v3 + 40);
  *a2 = result;
  return result;
}

double sub_7696C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_77DB0(&qword_3BCB70);
  sub_2BE6F8();

  swift_beginAccess();
  result = *(v3 + 48);
  *a2 = result;
  return result;
}

unint64_t sub_76AD4()
{
  result = qword_3BCB78;
  if (!qword_3BCB78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3BCB78);
  }

  return result;
}

uint64_t sub_76B20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_76B38()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_76B78()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_76BCC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id sub_76C0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v47 = a8;
  v46 = a7;
  v51 = a6;
  v50 = a5;
  v53 = a3;
  v38 = a2;
  v45 = a1;
  v49 = a9;
  v48 = a10;
  v52 = type metadata accessor for RootHostingControllerConfiguration(0);
  __chkstk_darwin(v52);
  v44 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_6620C(&qword_3BCE28);
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  *(v10 + qword_3BCB60 + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v17 = v10 + qword_3BCC58;
  *v17 = 0;
  *(v17 + 8) = 1;
  *(v10 + qword_3BCB80) = 0;
  *(v10 + qword_3BCC60) = &_swiftEmptySetSingleton;
  v18 = type metadata accessor for HostProxy(0);
  swift_allocObject();
  v19 = sub_C2644();
  v39 = qword_3BCB68;
  *(v10 + qword_3BCB68) = v19;
  sub_2C09A8();
  swift_allocObject();
  v20 = sub_2C0998();
  v37 = qword_3BCC48;
  *(v10 + qword_3BCC48) = v20;
  v41 = type metadata accessor for NavigationProvider();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = qword_3BCC50;
  *(v11 + qword_3BCC50) = v21;
  sub_2BEED8();
  swift_allocObject();
  v22 = sub_2BEEC8();
  v36 = qword_3BCB90;
  *(v11 + qword_3BCB90) = v22;
  v43 = type metadata accessor for RootHostingControllerConfiguration;
  sub_77C78(a4, v11 + qword_3E8830, type metadata accessor for RootHostingControllerConfiguration);
  sub_6620C(&qword_3BC330);
  sub_2C4968();
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_2E3BC0;
  sub_77D40(v53, v16);
  sub_2C4958();
  sub_2BF028();
  v55[0] = v38;
  v23 = v38;
  sub_2C4958();
  sub_2BEC48();
  swift_allocObject();
  v55[0] = sub_2BEC38();
  sub_2C4958();
  LOBYTE(v55[0]) = sub_2C07D8() & 1;
  sub_2C4958();
  v55[0] = *(v11 + v37);

  sub_2C4958();
  v55[0] = *(v11 + v36);

  sub_2C4958();
  v24 = v39;
  v55[0] = *(v11 + v39);

  sub_2C4958();
  sub_6620C(&unk_3BFED0);
  sub_2C53F8();
  v55[0] = sub_2C53E8();
  v55[1] = &protocol witness table for BasicImpressionsTracker;
  sub_2C4958();
  sub_6620C(&qword_3BCE30);
  v25 = *(v11 + v40);
  v56 = v41;
  v57 = &protocol witness table for NavigationProvider;
  v55[0] = v25;

  sub_2C4958();
  type metadata accessor for PageLifecycleHandler();
  v26 = swift_allocObject();
  type metadata accessor for Page.LifecycleInfo();
  v27 = swift_allocObject();
  *(v27 + 16) = &_swiftEmptyDictionarySingleton;
  *(v26 + 16) = v27;
  v55[0] = v26;
  sub_2C4958();
  sub_6620C(&qword_3BCE38);
  v28 = *(v11 + v24);
  v56 = v18;
  v57 = sub_77DB0(&qword_3BCE40);
  v55[0] = v28;

  sub_2C4958();
  sub_6620C(&qword_3BCE48);
  v29 = *(v11 + v24);
  v56 = v18;
  v57 = sub_77DB0(&unk_3BCE50);
  v55[0] = v29;

  sub_2C4958();
  v30 = v43;
  sub_77C78(a4, v44, v43);
  sub_2C4958();
  v55[0] = v42;
  sub_6620C(&unk_3BD220);
  sub_72B74(&qword_3BCE60, &unk_3BD220);
  v31 = sub_2C4DF8();

  v32 = v46;
  sub_77DF4(v46);
  sub_125A4C(v31, v32, v49, v48, v55);
  sub_77E04(v55, v54);
  v33 = sub_2C3398();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v34 = v33;
  sub_731AC();
  sub_73578();

  sub_77BDC(v32);

  sub_77CE0(a4, v30);
  sub_69198(v53, &qword_3BCE28);
  sub_77C1C(v55);
  return v34;
}

id _s11BookStoreUI21RootHostingControllerC10visibility2of13ignoringYAxisSo45BCCardStackTransitioningCoverSourceVisibilityVSo0klmnO0_p_SbtF_0(void *a1)
{
  [a1 cardStackTransitioningCoverSourceFrame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = result;
  [result bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v32.origin.x = v13;
  v32.origin.y = v15;
  v32.size.width = v17;
  v32.size.height = v19;
  v34.origin.x = v3;
  v34.origin.y = v5;
  v34.size.width = v7;
  v34.size.height = v9;
  v20 = CGRectContainsRect(v32, v34);
  result = [v1 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v21 = result;
  [result bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v33.origin.x = v23;
  v33.origin.y = v25;
  v33.size.width = v27;
  v33.size.height = v29;
  v35.origin.x = v3;
  v35.origin.y = v5;
  v35.size.width = v7;
  v35.size.height = v9;
  v30 = CGRectIntersectsRect(v33, v35);
  v31 = 1;
  if (!v30)
  {
    v31 = 2;
  }

  if (v20)
  {
    return 0;
  }

  else
  {
    return v31;
  }
}

id sub_7759C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = sub_757BC(a2, a3, a4, a5);
  if (!result)
  {
    result = [v5 view];
    if (result)
    {
      v11 = result;
      v12 = type metadata accessor for RootHostingController.FallbackCoverAnimatingSource();
      v13 = objc_allocWithZone(v12);
      v14 = &v13[OBJC_IVAR____TtCC11BookStoreUI21RootHostingControllerP33_33EEA6210FEC2640A5148301F86EE4A328FallbackCoverAnimatingSource_adamID];
      *v14 = 0;
      v14[1] = 0;
      v15 = &v13[OBJC_IVAR____TtCC11BookStoreUI21RootHostingControllerP33_33EEA6210FEC2640A5148301F86EE4A328FallbackCoverAnimatingSource_instanceID];
      *v15 = 0;
      v15[1] = 0;
      *&v13[OBJC_IVAR____TtCC11BookStoreUI21RootHostingControllerP33_33EEA6210FEC2640A5148301F86EE4A328FallbackCoverAnimatingSource_referenceView] = v11;
      *v14 = a2;
      v14[1] = a3;
      *v15 = a4;
      v15[1] = a5;
      v16.receiver = v13;
      v16.super_class = v12;

      return objc_msgSendSuper2(&v16, "init");
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_776AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + qword_3BCB60;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_77708(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + qword_3BCB60;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

id sub_77778@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 cardContentDelegate];
  *a2 = result;
  return result;
}

uint64_t sub_77808(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_2C0838();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_778C8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_2C0838();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_77968()
{
  result = sub_2C0838();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_779E4()
{
  result = type metadata accessor for RootHostingControllerConfiguration(319);
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_77BDC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_77C78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_77CE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_77D40(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BCE28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_77DB0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HostProxy(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_77DF4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id Defaults.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NavigationBarInsets.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavigationBarInsets();
  return objc_msgSendSuper2(&v2, "init");
}

id NavigationBarInsets.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavigationBarInsets();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_78068(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2BF738();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_2C4BF8();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v15 = sub_6620C(&unk_3CA260);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_78200(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_2BF738();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 24) = (a2 - 1);
    return result;
  }

  v13 = sub_2C4BF8();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = sub_6620C(&unk_3CA260);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for SeriesListSortAction()
{
  result = qword_3BCF60;
  if (!qword_3BCF60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_783D0()
{
  sub_2BF738();
  if (v0 <= 0x3F)
  {
    sub_7848C();
    if (v1 <= 0x3F)
    {
      sub_2C4BF8();
      if (v2 <= 0x3F)
      {
        sub_784F0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_7848C()
{
  result = qword_3BCF70;
  if (!qword_3BCF70)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_3BCF70);
  }

  return result;
}

void sub_784F0()
{
  if (!qword_3BCF78)
  {
    sub_2BF088();
    v0 = sub_2C60B8();
    if (!v1)
    {
      atomic_store(v0, &qword_3BCF78);
    }
  }
}

uint64_t sub_78558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_2C4BF8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t sub_785D0()
{
  result = qword_3BCFB8;
  if (!qword_3BCFB8)
  {
    type metadata accessor for SeriesListSortAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BCFB8);
  }

  return result;
}

uint64_t sub_78628(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&unk_3CA260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PageControllerFactory.create<A>(intent:parentTracker:origin:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a5;
  v7[7] = a6;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  type metadata accessor for RootHostingControllerConfiguration(0);
  v7[8] = swift_task_alloc();
  sub_6620C(&qword_3BCE28);
  v7[9] = swift_task_alloc();
  v7[10] = *(a5 - 8);
  v9 = swift_task_alloc();
  v10 = *v6;
  v7[11] = v9;
  v7[12] = v10;
  sub_2C5C18();
  v7[13] = sub_2C5C08();
  v12 = sub_2C5BB8();
  v7[14] = v12;
  v7[15] = v11;

  return _swift_task_switch(sub_787FC, v12, v11);
}

uint64_t sub_787FC()
{
  (*(v0[10] + 16))(v0[11], v0[2], v0[6]);
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_788AC;

  return BaseObjectGraph.withSyncDependenciesForSwiftUI.getter();
}

uint64_t sub_788AC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    (*(v4[10] + 8))(v4[11], v4[6]);
    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_78B18;
  }

  else
  {
    v4[18] = a1;
    v4[19] = type metadata accessor for PageHostingController();
    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_789F4;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_789F4()
{
  v1 = v0[18];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[6];
  v14 = v0[7];
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];

  sub_77D40(v8, v5);
  sub_78BA4(v7, v4);
  v10 = v9;
  v11 = sub_C00B0(v2, v1, v10, v5, v4, v6, v14);

  (*(v3 + 8))(v2, v6);

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_78B18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_78BA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootHostingControllerConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *initializeBufferWithCopyOfBuffer for PageControllerFactory(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *assignWithCopy for PageControllerFactory(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *assignWithTake for PageControllerFactory(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for PageControllerFactory(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for PageControllerFactory(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_78E0C(id a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v17[4] = a3;
    v17[5] = a4;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 1107296256;
    v17[2] = sub_750DC;
    v17[3] = &unk_38AC80;
    v7 = _Block_copy(v17);
  }

  else
  {
    v7 = 0;
  }

  v8 = type metadata accessor for BSUISearchFeedViewController();
  v18.receiver = v4;
  v18.super_class = v8;
  objc_msgSendSuper2(&v18, "presentViewController:animated:completion:", a1, a2 & 1, v7);
  _Block_release(v7);
  v9 = [v4 navigationItem];
  v10 = [v9 searchController];

  if (v10)
  {

    if (v10 == a1)
    {
      v11 = [v4 navigationController];
      if (v11)
      {
        v12 = v11;
        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();
        if (v13)
        {
          v14 = v13;
          v15 = [v4 transitionCoordinator];
          if (v15)
          {
            v16 = [v15 isInteractive];
            swift_unknownObjectRelease();
          }

          else
          {
            v16 = 0;
          }

          [v14 _updateLayoutMarginsForViewController:v4 forInteractiveTransition:v16];
        }
      }
    }
  }
}

uint64_t sub_78FD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_790C0(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v15[4] = a2;
    v15[5] = a3;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_750DC;
    v15[3] = &unk_38ACA8;
    v5 = _Block_copy(v15);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for BSUISearchFeedViewController();
  v16.receiver = v3;
  v16.super_class = v6;
  objc_msgSendSuper2(&v16, "dismissViewControllerAnimated:completion:", a1 & 1, v5);
  _Block_release(v5);
  v7 = [v3 presentedViewController];
  v8 = [v3 navigationItem];
  v9 = [v8 searchController];

  if (v7)
  {
    if (!v9)
    {
      v9 = v7;
      goto LABEL_16;
    }

    if (v7 != v9)
    {
      return;
    }
  }

  else if (v9)
  {
    goto LABEL_16;
  }

  v10 = [v3 navigationController];
  if (!v10)
  {
    return;
  }

  v9 = v10;
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    v13 = [v3 transitionCoordinator];
    if (v13)
    {
      v14 = [v13 isInteractive];
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0;
    }

    [v12 _updateLayoutMarginsForViewController:v3 forInteractiveTransition:v14];
  }

LABEL_16:
}

id sub_79464()
{
  v1 = [v0 bc_childPresentedViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 navigationItem];
    v4 = [v3 searchController];

    if (v4)
    {

      if (v2 == v4)
      {
        return 0;
      }
    }

    else
    {
    }
  }

  v6.receiver = v0;
  v6.super_class = type metadata accessor for BSUISearchFeedViewController();
  return objc_msgSendSuper2(&v6, "bc_navBarVisible");
}

void sub_795AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v11[4] = a2;
    v11[5] = a3;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_79714;
    v11[3] = &unk_38ACD0;
    v5 = _Block_copy(v11);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for BSUISearchFeedViewController();
  v12.receiver = v3;
  v12.super_class = v6;
  objc_msgSendSuper2(&v12, "feedController:dismissKeyboard:", a1, v5);
  _Block_release(v5);
  v7 = [v3 navigationItem];
  v8 = [v7 searchController];

  if (v8)
  {
    v9 = [v8 searchBar];

    v10 = [v9 searchTextField];
    [v10 resignFirstResponder];
  }
}

uint64_t sub_79714(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_2C5B28();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

void sub_79864(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3.super.isa = sub_2C5B18().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  (*(a2 + 16))(a2);
}

void sub_798D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6, uint64_t a7)
{
  v8 = v7;
  v14 = [v8 navigationItem];
  v15 = [v14 searchController];

  if (v15)
  {
    v16 = [v15 searchBar];

    v17 = [v16 searchTextField];
    [v17 resignFirstResponder];
  }

  sub_6620C(&qword_3BC1F8);
  v18.super.isa = sub_2C5B18().super.isa;
  v19.super.isa = sub_2C57C8().super.isa;
  if (a6)
  {
    v21[4] = a6;
    v21[5] = a7;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_750DC;
    v21[3] = &unk_38ACF8;
    a6 = _Block_copy(v21);
  }

  v20 = type metadata accessor for BSUISearchFeedViewController();
  v22.receiver = v8;
  v22.super_class = v20;
  objc_msgSendSuper2(&v22, "feedController:wantsToPresentCardsWithCardArray:focusedIndex:animated:options:completion:", a1, v18.super.isa, a3, a4 & 1, v19.super.isa, a6);
  _Block_release(a6);
}

uint64_t sub_79C04(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = sub_79C80(a2, a3);
  if ((result & 1) == 0)
  {
    v7 = (v3 + OBJC_IVAR____TtC11BookStoreUI28BSUISearchFeedViewController_pendingSearchText);
    *v7 = a2;
    v7[1] = a3;
  }

  return result;
}

uint64_t sub_79C80(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_2C4908();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_66278(0, &qword_3BFEF0);
  *v9 = sub_2C5E88();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = sub_2C4928();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v12 = [v3 navigationItem];
    v13 = [v12 searchController];

    if (!v13)
    {
      return v13 != 0;
    }

    v14 = [v13 searchBar];
    v15 = [v14 text];

    if (v15)
    {
      v16 = sub_2C58C8();
      v18 = v17;

      if (v16 == a1 && v18 == a2)
      {

LABEL_11:
        v23 = HIBYTE(a2) & 0xF;
        if ((a2 & 0x2000000000000000) == 0)
        {
          v23 = a1 & 0xFFFFFFFFFFFFLL;
        }

        if (v23)
        {
          v24 = [v3 presentedViewController];
          if (v24)
          {
            v25 = v24;

LABEL_18:
            return v13 != 0;
          }

          [v13 setActive:1];
        }

        v25 = v13;
        goto LABEL_18;
      }

      v20 = sub_2C65B8();

      if (v20)
      {
        goto LABEL_11;
      }
    }

    v21 = [v13 searchBar];
    v22 = sub_2C5888();
    [v21 setText:v22];

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

double sub_79FE4()
{
  v24.receiver = v0;
  v24.super_class = type metadata accessor for BSUISearchFeedViewController();
  objc_msgSendSuper2(&v24, "navigationBarMetricsLayoutMargins");
  v5 = v4;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  if (v4 == UIEdgeInsetsZero.top && v1 == left && v2 == bottom && v3 == right)
  {
    v12 = [v0 traitCollection];
    v13 = [v12 horizontalSizeClass];

    v5 = v13 == &dword_0 + 1 ? 0.0 : UIEdgeInsetsZero.top;
    v14 = v13 == &dword_0 + 1 ? 16.0 : left;
    v15 = v13 == &dword_0 + 1 ? 0.0 : bottom;
    v16 = v13 == &dword_0 + 1 ? 16.0 : right;
    v17 = [v0 navigationItem];
    v18 = [v17 searchController];

    if (!v18)
    {
      return UIEdgeInsetsZero.top;
    }

    v19 = [v18 isActive];

    if (!v19)
    {
      return UIEdgeInsetsZero.top;
    }

    v20 = v5 == UIEdgeInsetsZero.top && v14 == left;
    v21 = v20 && v15 == bottom;
    if (v21 && v16 == right)
    {
      return UIEdgeInsetsZero.top;
    }
  }

  return v5;
}

id sub_7A1B0(uint64_t a1, uint64_t a2, uint64_t a3, Class isa)
{
  sub_7A788(a1, v19);
  v8 = v20;
  if (v20)
  {
    v9 = sub_72084(v19, v20);
    v10 = *(v8 - 8);
    __chkstk_darwin(v9);
    v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v12);
    v13 = sub_2C6598();
    (*(v10 + 8))(v12, v8);
    sub_68CD0(v19);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_12:
    v14 = 0;
    if (!isa)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v13 = 0;
  if (!a3)
  {
    goto LABEL_12;
  }

LABEL_3:
  v14 = sub_2C5888();
  if (isa)
  {
LABEL_4:
    isa = sub_2C57C8().super.isa;
  }

LABEL_5:
  v15 = type metadata accessor for BSUISearchFeedViewController();
  v18.receiver = v4;
  v18.super_class = v15;
  v16 = objc_msgSendSuper2(&v18, "handleActionForObject:withName:arguments:", v13, v14, isa);
  swift_unknownObjectRelease();

  if (a3 && (a2 == 0x475F5443454C4553 && a3 == 0xEC00000050554F52 || (sub_2C65B8() & 1) != 0))
  {
    UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, 0);
  }

  return v16;
}

id BSUIProductFeedViewController.__allocating_init(options:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = sub_2C57C8().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithOptions:v2.super.isa];

  return v3;
}

id BSUISearchFeedViewController.init(options:)(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC11BookStoreUI28BSUISearchFeedViewController_pendingSearchText];
  *v2 = 0;
  *(v2 + 1) = 0;
  if (a1)
  {
    v3.super.isa = sub_2C57C8().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  v6.receiver = v1;
  v6.super_class = type metadata accessor for BSUISearchFeedViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithOptions:", v3.super.isa);

  if (v4)
  {
  }

  return v4;
}

id BSUISearchFeedViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BSUISearchFeedViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_7A788(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(qword_3C0250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7A844(uint64_t a1)
{
  v2 = sub_6620C(qword_3C0250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_7A8AC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_7A934()
{
  v0[5] = sub_66278(0, &unk_3BD190);
  v0[2] = v0 + 5;
  v0[6] = sub_6620C(&unk_3BDC20);
  v0[3] = v0 + 6;
  v0[7] = sub_6620C(&unk_3BD1A0);
  v0[4] = v0 + 7;
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_7AA48;

  return (sub_7F534)(v0 + 2);
}

uint64_t sub_7AA48(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 80) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_7AB84, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_7AB84()
{
  if (qword_3BB7A0 != -1)
  {
    swift_once();
  }

  v1 = sub_2C00B8();
  sub_57AD8(v1, qword_3C2F90);
  swift_errorRetain();
  v2 = sub_2C0098();
  v3 = sub_2C5DD8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v2, v3, "Failed to resolve dependencies for SwiftUI: %@", v4, 0xCu);
    sub_69198(v5, &qword_3BFEE0);
  }

  swift_willThrow();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t static PartialObjectGraphProvider.buildPartialObjectGraph()()
{
  v0 = sub_2C4968();
  v51 = *(v0 - 8);
  v52 = v0 - 8;
  v1 = v51;
  v2 = __chkstk_darwin(v0);
  v58 = v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v73 = v50 - v5;
  v6 = __chkstk_darwin(v4);
  v71 = v50 - v7;
  v8 = __chkstk_darwin(v6);
  v69 = v50 - v9;
  v10 = __chkstk_darwin(v8);
  v68 = v50 - v11;
  v12 = __chkstk_darwin(v10);
  v57 = v50 - v13;
  v14 = __chkstk_darwin(v12);
  v56 = v50 - v15;
  v16 = __chkstk_darwin(v14);
  v55 = v50 - v17;
  v18 = __chkstk_darwin(v16);
  v54 = v50 - v19;
  v20 = __chkstk_darwin(v18);
  v53 = v50 - v21;
  v22 = __chkstk_darwin(v20);
  v67 = v50 - v23;
  v24 = __chkstk_darwin(v22);
  v70 = v50 - v25;
  v26 = __chkstk_darwin(v24);
  v72 = v50 - v27;
  v28 = __chkstk_darwin(v26);
  v74 = v50 - v29;
  v30 = __chkstk_darwin(v28);
  v59 = v50 - v31;
  v32 = __chkstk_darwin(v30);
  v60 = v50 - v33;
  v34 = __chkstk_darwin(v32);
  v61 = v50 - v35;
  v36 = __chkstk_darwin(v34);
  v62 = v50 - v37;
  v38 = __chkstk_darwin(v36);
  v63 = v50 - v39;
  v40 = __chkstk_darwin(v38);
  v64 = v50 - v41;
  v42 = __chkstk_darwin(v40);
  v65 = v50 - v43;
  __chkstk_darwin(v42);
  v66 = v50 - v44;
  sub_6620C(&qword_3BD1B0);
  sub_2C4948();
  sub_6620C(&qword_3BD1B8);
  sub_2C4948();
  sub_66278(0, &qword_3BD1C0);
  sub_2C4948();
  sub_2C5568();
  sub_2C4948();
  sub_6620C(&qword_3BD1C8);
  sub_2C4948();
  sub_6620C(&qword_3BD1D0);
  sub_2C4948();
  sub_6620C(&qword_3BD1D8);
  sub_2C4948();
  sub_6620C(&qword_3BD1E0);
  sub_2C4948();
  sub_6620C(&qword_3BD1E8);
  sub_2C4948();
  sub_6620C(&qword_3BD1F0);
  sub_2C4948();
  sub_6620C(&qword_3BD1F8);
  sub_2C4948();
  sub_2C4B78();
  sub_2C4948();
  sub_6620C(&qword_3BD200);
  sub_2C4948();
  sub_6620C(&qword_3BD208);
  sub_2C4948();
  sub_6620C(&unk_3BD1A0);
  sub_2C4938();
  type metadata accessor for LocalizerManager();
  sub_2C4938();
  sub_2BF548();
  sub_2C4948();
  sub_6620C(&unk_3BD210);
  sub_2C4948();
  sub_2C4E58();
  sub_2C4948();
  sub_2C4948();
  sub_2C1498();
  sub_2C4948();
  sub_2C2098();
  sub_2C4948();
  sub_2C4E28();
  sub_6620C(&qword_3BC330);
  v45 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_2E3F30;
  (*(v1 + 16))(v46 + v45, v66, v0);
  v51 = sub_2C4DD8();
  v50[12] = sub_2C4DE8();
  v50[11] = sub_2C4DE8();
  v50[10] = sub_2C4DE8();
  v50[9] = sub_2C4DE8();
  v50[8] = sub_2C4DE8();
  v50[7] = sub_2C4DE8();
  v50[6] = sub_2C4DE8();
  v50[5] = sub_2C4DE8();
  v50[4] = sub_2C4DE8();
  v50[3] = sub_2C4DE8();
  v50[2] = sub_2C4DE8();
  v50[1] = sub_2C4DE8();
  v50[0] = sub_2C4DE8();
  sub_2C4DE8();
  sub_2C4DE8();
  sub_2C4DE8();
  sub_2C4DE8();
  sub_2C4DE8();
  sub_2C4DE8();
  sub_2C4DE8();
  v47 = v58;
  v52 = sub_2C4DE8();

  v48 = *(v1 + 8);
  v48(v47, v0);
  v48(v73, v0);
  v48(v71, v0);
  v48(v69, v0);
  v48(v68, v0);
  v48(v57, v0);
  v48(v56, v0);
  v48(v55, v0);
  v48(v54, v0);
  v48(v53, v0);
  v48(v67, v0);
  v48(v70, v0);
  v48(v72, v0);
  v48(v74, v0);
  v48(v59, v0);
  v48(v60, v0);
  v48(v61, v0);
  v48(v62, v0);
  v48(v63, v0);
  v48(v64, v0);
  v48(v65, v0);
  v48(v66, v0);
  return v52;
}

uint64_t sub_7BA4C()
{
  v0 = sub_6620C(&qword_3BD1B0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  sub_7BB20(&v5 - v2);
  sub_2C4F08();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_7BB20@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v63 = sub_6620C(&qword_3BD4B0);
  v65 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = v58 - v1;
  v2 = sub_6620C(&qword_3BD4B8);
  v3 = *(v2 - 8);
  v60 = v2;
  v61 = v3;
  __chkstk_darwin(v2);
  v59 = v58 - v4;
  v5 = sub_6620C(&qword_3BD1B0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v64 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v77 = v58 - v10;
  v11 = __chkstk_darwin(v9);
  v76 = v58 - v12;
  v13 = __chkstk_darwin(v11);
  v74 = v58 - v14;
  v15 = __chkstk_darwin(v13);
  v75 = v58 - v16;
  v17 = __chkstk_darwin(v15);
  v78 = v58 - v18;
  v19 = __chkstk_darwin(v17);
  v79 = v58 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = v58 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = v58 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = v58 - v28;
  __chkstk_darwin(v27);
  v31 = v58 - v30;
  v72 = v58 - v30;
  v32 = sub_2C4E28();
  sub_2C4F38();
  v33 = *(v6 + 16);
  (v33)(v31, v29, v5);
  sub_81FE4();
  sub_2C4EF8();
  v34 = *(v6 + 8);
  v34(v29, v5);
  v68 = v34;
  sub_2C4F38();
  v70 = v29;
  (v33)(v29, v26, v5);
  sub_82038();
  sub_2C4EF8();
  v34(v26, v5);
  v35 = v59;
  v73 = v32;
  sub_2BFF48();
  sub_2C4F38();
  v71 = v26;
  (v33)(v26, v23, v5);
  sub_72B74(&qword_3BD4D0, &qword_3BD4B8);
  v36 = v60;
  sub_2C4EF8();
  v37 = v68;
  v68(v23, v5);
  (*(v61 + 8))(v35, v36);
  v38 = v79;
  sub_2C4F38();
  v69 = v23;
  v39 = v38;
  (v33)(v23, v38, v5);
  sub_8208C();
  sub_2C4EF8();
  v40 = v37;
  v37(v38, v5);
  v41 = v78;
  sub_2C4F38();
  (v33)(v39, v41, v5);
  v67 = v33;
  sub_820E0();
  sub_2C4EF8();
  v37(v41, v5);
  v42 = v75;
  sub_2C4F38();
  v43 = v42;
  (v33)(v41, v42, v5);
  sub_82134();
  sub_2C4EF8();
  v37(v42, v5);
  type metadata accessor for Page();
  type metadata accessor for Shelf();
  sub_80DF8(&qword_3BD4F0, type metadata accessor for Page);
  sub_80DF8(&qword_3BD4F8, type metadata accessor for Shelf);
  v44 = v62;
  sub_2C1F78();
  v45 = v74;
  sub_2C4F38();
  v46 = v45;
  (v67)(v43, v45, v5);
  sub_72B74(&qword_3BD500, &qword_3BD4B0);
  v47 = v63;
  sub_2C4EF8();
  v40(v45, v5);
  (*(v65 + 8))(v44, v47);
  v48 = v76;
  sub_2C4F38();
  v49 = v48;
  v50 = v67;
  (v67)(v46, v48, v5);
  sub_82188();
  sub_2C4EF8();
  v40(v48, v5);
  v51 = v77;
  sub_2C4F38();
  (v50)(v49, v51, v5);
  sub_821DC();
  sub_2C4EF8();
  v40(v51, v5);
  v52 = v64;
  sub_2C4F38();
  (v50)(v51, v52, v5);
  sub_82230();
  sub_2C4EF8();
  v40(v52, v5);
  sub_6620C(&qword_3BD520);
  v58[1] = v6 + 8;
  v53 = *(v6 + 72);
  v54 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v65 = swift_allocObject();
  v55 = v65 + v54;
  (v50)(v65 + v54, v72, v5);
  (v50)(v55 + v53, v70, v5);
  (v50)(v55 + 2 * v53, v71, v5);
  (v50)(v55 + 3 * v53, v69, v5);
  (v50)(v55 + 4 * v53, v79, v5);
  v64 = 5 * v53;
  (v50)(v55 + 5 * v53, v78, v5);
  v63 = v55 + 6 * v53;
  v50();
  v62 = 7 * v53;
  (v50)(v55 + 7 * v53, v74, v5);
  (v50)(v55 + 8 * v53, v76, v5);
  (v50)(v55 + 9 * v53, v77, v5);
  sub_2C4F38();
  sub_2C4EE8();
  sub_2C4EE8();
  sub_2C4EE8();
  sub_2C4EE8();
  sub_2C4EE8();
  sub_2C4EE8();
  sub_2C4EE8();
  sub_2C4EE8();
  sub_2C4EE8();
  sub_2C4EE8();
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v56 = v68;
  v68(v77, v5);
  v56(v76, v5);
  v56(v74, v5);
  v56(v75, v5);
  v56(v78, v5);
  v56(v79, v5);
  v56(v69, v5);
  v56(v71, v5);
  v56(v70, v5);
  return (v56)(v72, v5);
}

uint64_t sub_7C654@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for JSAction();
  sub_80DF8(&qword_3BD470, type metadata accessor for JSAction);
  sub_2C4A38();
  sub_6620C(&qword_3BD478);
  sub_72B74(&qword_3BD480, &qword_3BD478);
  sub_2C4A38();
  sub_2C0368();
  sub_80DF8(&qword_3BD488, &type metadata accessor for BooksAlertAction);
  sub_2C4A38();
  sub_2C0518();
  sub_2C1658();
  sub_6620C(&qword_3BD490);
  sub_72B74(&qword_3BD498, &qword_3BD490);
  sub_2C1658();
  sub_81F90();
  sub_2C1658();
  v2 = sub_2C0598();
  result = sub_80DF8(&qword_3BD4A8, &type metadata accessor for ActionKinds);
  *a1 = v2;
  a1[1] = result;
  return result;
}

id sub_7C8CC@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() defaultBag];
  *a1 = result;
  return result;
}

uint64_t sub_7C910()
{
  sub_2C4E28();
  sub_2C4E08();
  sub_66278(0, &qword_3BD1C0);
  sub_2C4DB8();

  return sub_2C5558();
}

id sub_7C9D4@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_2C4E28();
  v8 = sub_2C4E08();
  v9 = a1(0);
  v10 = objc_allocWithZone(v9);
  *&v10[*a2] = v8;
  v12.receiver = v10;
  v12.super_class = v9;
  result = objc_msgSendSuper2(&v12, "init");
  *a4 = result;
  a4[1] = a3;
  return result;
}

id sub_7CA60@<X0>(void *a1@<X8>)
{
  if (qword_3BB710 != -1)
  {
    swift_once();
  }

  v3 = qword_3BB718;
  a1[3] = type metadata accessor for BSUISharedWithYouController();
  a1[4] = sub_80DF8(&qword_3BD380, type metadata accessor for BSUISharedWithYouController);
  *a1 = v3;

  return v3;
}

unint64_t sub_7CB20@<X0>(void *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 manager];
  v4 = [v3 imageResourceCache];

  v5 = [v2 manager];
  v6 = [v5 resourceRegistry];

  a1[3] = &type metadata for ImageResourceProvider;
  result = sub_812D8();
  a1[4] = result;
  *a1 = v4;
  a1[1] = v6;
  return result;
}

uint64_t sub_7CBE0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2C53B8();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v4);
  v8 = &v13[-v7 - 8];
  sub_7CDB4(&v13[-v7 - 8]);
  sub_2C5388();
  v9 = *(v3 + 8);
  v9(v8, v2);
  v10 = [objc_opt_self() sharedInstance];
  v14[3] = sub_66278(0, &qword_3BD330);
  v14[4] = sub_810CC();
  v14[0] = v10;
  a1[3] = v2;
  a1[4] = &protocol witness table for NativeIntentDispatcher;
  sub_720C8(a1);
  (*(v3 + 16))();
  sub_6932C(v14, v13, &qword_3BD340);
  sub_2C5378();
  v9(v6, v2);
  return sub_69198(v14, &qword_3BD340);
}

uint64_t sub_7CDB4@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_2C53B8();
  v30 = *(v1 - 8);
  v2 = v30;
  v28 = v30;
  v3 = __chkstk_darwin(v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v26 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v26 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v26 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v26 - v16;
  __chkstk_darwin(v15);
  v36 = &v26 - v18;
  sub_2C53A8();
  sub_81134();
  sub_2C5368();
  v19 = *(v2 + 8);
  v35 = v17;
  v19(v17, v1);
  sub_2C53A8();
  sub_81188();
  sub_2C5368();
  v33 = v14;
  v19(v14, v1);
  v37 = 15;
  sub_2C53A8();
  sub_811DC();
  sub_2C5368();
  v32 = v11;
  v19(v11, v1);
  sub_2C53A8();
  sub_81230();
  sub_2C5368();
  v31 = v8;
  v19(v8, v1);
  sub_2C53A8();
  sub_81284();
  sub_2C5368();
  v19(v5, v1);
  sub_6620C(&qword_3BD370);
  v20 = *(v30 + 72);
  v21 = v28;
  v22 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v30 = 4 * v20;
  v29 = swift_allocObject();
  v23 = v29 + v22;
  v24 = *(v21 + 16);
  v24(v29 + v22, v36, v1);
  v24(v23 + v20, v35, v1);
  v27 = 2 * v20;
  v24(v23 + 2 * v20, v33, v1);
  v28 = 3 * v20;
  v24(v23 + 3 * v20, v32, v1);
  v24(v23 + v30, v31, v1);
  sub_2C53A8();
  v24(v5, v23, v1);
  sub_2C5398();
  v19(v5, v1);
  v24(v5, (v23 + v20), v1);
  sub_2C5398();
  v19(v5, v1);
  v24(v5, (v23 + v27), v1);
  sub_2C5398();
  v19(v5, v1);
  v24(v5, (v23 + v28), v1);
  sub_2C5398();
  v19(v5, v1);
  v24(v5, (v23 + v30), v1);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2C5398();
  v19(v5, v1);
  v19(v31, v1);
  v19(v32, v1);
  v19(v33, v1);
  v19(v35, v1);
  return (v19)(v36, v1);
}

uint64_t sub_7D2F8@<X0>(uint64_t *a1@<X8>)
{
  sub_6620C(&qword_3BD2D8);
  sub_72B74(&qword_3BD2E0, &qword_3BD2D8);
  sub_2C4A98();
  sub_80F7C();
  sub_2C4A98();
  type metadata accessor for JSShelfPaginationIntent();
  sub_80DF8(&qword_3BD2F0, type metadata accessor for JSShelfPaginationIntent);
  sub_2C4A98();
  sub_80FD0();
  sub_2C4A98();
  type metadata accessor for SeriesRoomPageIntent();
  sub_80DF8(&qword_3BD300, type metadata accessor for SeriesRoomPageIntent);
  sub_2C4A98();
  type metadata accessor for SeriesSeeAllPageIntent();
  sub_80DF8(&qword_3BD308, type metadata accessor for SeriesSeeAllPageIntent);
  sub_2C4A98();
  type metadata accessor for SeriesSeeAllPaginationIntent();
  sub_80DF8(&qword_3BD310, type metadata accessor for SeriesSeeAllPaginationIntent);
  sub_2C4A98();
  sub_81024();
  sub_2C4A98();
  sub_81078();
  sub_2C4A98();
  v2 = sub_2C0678();
  result = sub_80DF8(&qword_3BD328, &type metadata accessor for IntentKinds);
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_7D54C@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v86 = sub_6620C(&qword_3BD290);
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v83 = &v48 - v1;
  v2 = sub_6620C(&qword_3BD298);
  v81 = *(v2 - 8);
  v82 = v2;
  __chkstk_darwin(v2);
  v79 = &v48 - v3;
  v78 = sub_2BF7D8();
  v80 = *(v78 - 8);
  __chkstk_darwin(v78);
  v77 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_6620C(&qword_3BD2A0);
  v75 = *(v5 - 8);
  v76 = v5;
  __chkstk_darwin(v5);
  v74 = &v48 - v6;
  v73 = sub_6620C(&qword_3BD2A8);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v48 - v7;
  v70 = sub_6620C(&qword_3BD2B0);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v66 = &v48 - v8;
  v65 = sub_6620C(&qword_3BD2B8);
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v61 = &v48 - v9;
  v60 = sub_6620C(&qword_3BD2C0);
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v53 = &v48 - v10;
  v57 = sub_2C4B78();
  v54 = *(v57 - 8);
  v11 = __chkstk_darwin(v57);
  v50 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v51 = &v48 - v14;
  v15 = __chkstk_darwin(v13);
  v52 = &v48 - v16;
  v17 = __chkstk_darwin(v15);
  v56 = &v48 - v18;
  v19 = __chkstk_darwin(v17);
  v59 = &v48 - v20;
  v21 = __chkstk_darwin(v19);
  v62 = &v48 - v22;
  __chkstk_darwin(v21);
  v63 = &v48 - v23;
  v55 = sub_2C4C58();
  v68 = *(v55 - 8);
  __chkstk_darwin(v55);
  v87 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_2C4C98();
  v67 = *(v89 - 8);
  __chkstk_darwin(v89);
  v88 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2C4E28();
  sub_2C4E08();
  sub_6620C(&qword_3BD1F8);
  sub_2C4DB8();

  v26 = v90;
  sub_2C4CA8();
  sub_2C4E08();
  sub_6620C(&qword_3BD1B8);
  sub_2C4DB8();

  v27 = v90;
  sub_2C4C68();
  sub_2C4E08();
  v49 = sub_6620C(&qword_3BD1C8);
  sub_2C4DB8();

  v48 = v90;
  v28 = v50;
  sub_2C4B68();
  v90 = v26;
  v29 = v53;
  sub_2C4B08();
  v30 = v51;
  sub_2C4AE8();
  (*(v58 + 8))(v29, v60);
  v31 = *(v54 + 8);
  v32 = v57;
  v31(v28, v57);
  v33 = v61;
  sub_2C4B38();
  v34 = v52;
  sub_2C4AE8();
  (*(v64 + 8))(v33, v65);
  v31(v30, v32);
  v90 = v27;
  v35 = v66;
  sub_2C4B48();
  v36 = v56;
  sub_2C4AE8();
  (*(v69 + 8))(v35, v70);
  v31(v34, v32);
  v37 = v71;
  sub_2C4B28();
  v38 = v59;
  v39 = v55;
  sub_2C4AE8();
  (*(v72 + 8))(v37, v73);
  v31(v36, v32);
  v90 = v48;
  v40 = v74;
  sub_2C4B18();
  v41 = v62;
  sub_2C4AE8();
  (*(v75 + 8))(v40, v76);
  v31(v38, v32);
  v42 = v77;
  sub_2BF7C8();
  v43 = v79;
  sub_2C4AF8();
  v44 = v63;
  v45 = v78;
  sub_2C4AE8();
  (*(v81 + 8))(v43, v82);
  (*(v80 + 8))(v42, v45);
  v31(v41, v32);
  v91 = &type metadata for PartialObjectGraphProvider.InitFailureObserver;
  v92 = sub_80F28();
  v46 = v83;
  sub_2C4B58();
  sub_6620C(&qword_3BD2D0);
  sub_2C4AE8();
  (*(v84 + 8))(v46, v86);
  v31(v44, v32);
  (*(v68 + 8))(v87, v39);
  (*(v67 + 8))(v88, v89);
  return sub_68CD0(&v90);
}

uint64_t sub_7E0BC@<X0>(void *a1@<X8>)
{
  sub_2C4E28();
  sub_2C4E08();
  v2 = type metadata accessor for LibraryAssetStateObserverProvider();
  v3 = swift_allocObject();
  v3[4] = [objc_opt_self() strongToWeakObjectsMapTable];
  sub_6620C(&unk_3BDC20);
  sub_2C5668();
  v3[2] = v5;
  sub_66278(0, &unk_3BD190);
  sub_2C5668();

  v3[3] = v5;
  a1[3] = v2;
  result = sub_80DF8(&qword_3BD288, type metadata accessor for LibraryAssetStateObserverProvider);
  a1[4] = result;
  *a1 = v3;
  return result;
}

id sub_7E1F8@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    v8 = sub_66278(0, &qword_3BD280);
    v9 = &protocol witness table for JSAStore;
    *&v7 = v3;
    v4 = sub_2C0178();
    v5 = sub_2C0158();
    a1[3] = &type metadata for MenuLikeStateController;
    a1[4] = &protocol witness table for MenuLikeStateController;
    v6 = swift_allocObject();
    *a1 = v6;
    v6[10] = v4;
    v6[11] = &protocol witness table for AccountController;
    v6[7] = v5;
    return sub_68D1C(&v7, (v6 + 2));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_7E2FC()
{
  sub_2C4E28();
  *(v0 + 32) = sub_2C4E08();
  v1 = type metadata accessor for LocalizerManager();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_7E3C0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 16, v1, v1);
}

uint64_t sub_7E3C0()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_7E81C;
    v4 = 0;
  }

  else
  {

    v4 = *(v2 + 16);
    *(v2 + 56) = v4;
    v3 = sub_7E4E8;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_7E4E8()
{
  v1 = *(v0[7] + 160);
  v0[8] = v1;

  v2 = swift_task_alloc();
  v0[9] = v2;
  v3 = sub_6620C(&unk_3BD1A0);
  v4 = sub_6620C(&unk_3BF5A0);
  *v2 = v0;
  v2[1] = sub_7E5E0;
  v5 = v0[3];

  return Task.value.getter(v5, v1, v3, v4, &protocol self-conformance witness table for Error);
}

uint64_t sub_7E5E0()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_7E794;
  }

  else
  {
    v4 = sub_7E70C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_7E70C()
{

  return _swift_task_switch(sub_7E77C, 0, 0);
}

uint64_t sub_7E794()
{

  return _swift_task_switch(sub_7E804, 0, 0);
}

uint64_t sub_7E81C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_7E8A0()
{
  sub_2C4E28();
  v1 = sub_2C4E08();
  type metadata accessor for LocalizerManager();
  swift_allocObject();
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_7E964;

  return LocalizerManager.init(objectGraph:)(v1);
}

uint64_t sub_7E964(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_7EA64, 0, 0);
}

uint64_t sub_7EA88()
{
  v0 = sub_2BF7D8();
  __chkstk_darwin(v0 - 8);
  sub_2BF7C8();
  sub_2C4E28();
  sub_2C4E08();
  sub_80E94();
  return sub_2BF538();
}

uint64_t sub_7EB40@<X0>(uint64_t *a1@<X8>)
{
  sub_2C01A8();
  v2 = sub_2C0188();
  sub_2C0198();

  sub_2C21A8();
  v3 = sub_2C53D8();
  swift_allocObject();
  result = sub_2C53C8();
  a1[3] = v3;
  a1[4] = &protocol witness table for AMSMetricsEventRecorder;
  *a1 = result;
  return result;
}

uint64_t sub_7EBDC@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = sub_2C54F8();
  v33 = *(v1 - 8);
  v34 = v1;
  __chkstk_darwin(v1);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2C5528();
  v4 = *(v28 - 8);
  __chkstk_darwin(v28);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2C5458();
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = __chkstk_darwin(v7);
  v30 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  v12 = sub_2C5568();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v28 - v17;
  sub_2C4E28();
  sub_2C4E08();
  sub_2C4DB8();

  sub_2C4E08();
  sub_6620C(&unk_3BD210);
  sub_2C4DB8();

  v29 = sub_2C4E08();
  (*(v13 + 16))(v16, v18, v12);
  v19 = [objc_opt_self() ams_sharedAccountStore];
  v38 = sub_66278(0, &qword_3BD248);
  v39 = &protocol witness table for ACAccountStore;
  v37[0] = v19;
  v20 = [objc_opt_self() mainBundle];
  sub_2C5448();
  v38 = sub_2C1DE8();
  v39 = sub_80DF8(&qword_3BD250, &type metadata accessor for ActionContextFieldProvider);
  sub_720C8(v37);
  sub_2C1DD8();
  sub_2C5508();
  sub_2C5428();
  v21 = *(v4 + 8);
  v22 = v28;
  v21(v6, v28);
  sub_68CD0(v37);
  v38 = sub_2C16A8();
  v39 = sub_80DF8(&qword_3BD258, &type metadata accessor for LocationFieldProvider);
  sub_720C8(v37);
  sub_2C1698();
  sub_2C5518();
  sub_2C5428();
  v21(v6, v22);
  sub_68CD0(v37);
  v23 = type metadata accessor for JSPageHistoryFieldProvider();
  v24 = swift_allocObject();
  v38 = v23;
  v39 = sub_80DF8(&qword_3BD260, type metadata accessor for JSPageHistoryFieldProvider);
  v37[0] = v24;
  sub_2C54E8();
  sub_2C5438();
  (*(v33 + 8))(v3, v34);
  sub_68CD0(v37);
  sub_2C5538();
  v25 = v31;
  v26 = v32;
  (*(v31 + 16))(v30, v11, v32);
  v38 = &_s20JSMetricsEventLinterVN;
  v39 = sub_80E40();
  v37[0] = v29;
  sub_691F8(v40, v36);
  sub_2C4E48();
  (*(v25 + 8))(v11, v26);
  sub_68CD0(v40);
  return (*(v13 + 8))(v18, v12);
}

uint64_t sub_7F1C0@<X0>(uint64_t *a1@<X8>)
{
  sub_2C4E28();
  result = sub_2C4E08();
  *a1 = result;
  return result;
}

id sub_7F1F4@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(sub_2C1498()) init];
  *a1 = result;
  return result;
}

uint64_t sub_7F25C@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = sub_2C2098();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v17 - v7;
  __chkstk_darwin(v6);
  v21 = &v17 - v9;
  sub_2C2088();
  sub_80D50();
  sub_2C2058();
  v10 = *(v2 + 8);
  v19 = v8;
  v10(v8, v1);
  v18 = v10;
  sub_2C2088();
  sub_80DA4();
  sub_2C2058();
  v10(v5, v1);
  sub_6620C(&qword_3BD240);
  v11 = *(v2 + 72);
  v12 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v13 = swift_allocObject() + v12;
  v14 = *(v2 + 16);
  v14(v13, v21, v1);
  v14(v13 + v11, v19, v1);
  sub_2C2088();
  v14(v5, v13, v1);
  sub_2C2078();
  v18(v5, v1);
  v14(v5, (v13 + v11), v1);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2C2078();
  v15 = v18;
  v18(v5, v1);
  v15(v19, v1);
  return (v15)(v21, v1);
}

uint64_t sub_7F534()
{
  v1[17] = v0;
  v2 = sub_2C4968();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_7F60C, 0, 0);
}

uint64_t sub_7F60C()
{
  v1 = sub_66278(0, &unk_3BD190);
  v2 = v0 + *(sub_6620C(&qword_3BD528) + 32);
  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  *v3 = v0;
  v3[1] = sub_7F6F0;

  return BaseObjectGraph.inject<A>(_:)(v2 + 16, v1, v1);
}

uint64_t sub_7F6F0()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_80090;
  }

  else
  {
    v2 = sub_7F804;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_7F804()
{
  v1 = sub_6620C(&unk_3BDC20);
  v2 = sub_6620C(&qword_3BD528);
  *(v0 + 200) = v2;
  v3 = v0 + *(v2 + 48);
  v4 = swift_task_alloc();
  *(v0 + 208) = v4;
  *v4 = v0;
  v4[1] = sub_7F8E8;

  return BaseObjectGraph.inject<A>(_:)(v3 + 16, v1, v1);
}

uint64_t sub_7F8E8()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[25];
    v2[30] = v0;
    v2[31] = 1;
    v2[29] = v3;
    v4 = sub_80110;
  }

  else
  {
    v4 = sub_7FA14;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_7FA14()
{
  v1 = sub_6620C(&unk_3BD1A0);
  v2 = sub_6620C(&qword_3BD528);
  *(v0 + 216) = v2;
  v3 = v0 + *(v2 + 64);
  v4 = swift_task_alloc();
  *(v0 + 224) = v4;
  *v4 = v0;
  v4[1] = sub_7FAF8;

  return BaseObjectGraph.inject<A>(_:)(v3 + 16, v1, v1);
}

uint64_t sub_7FAF8()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[27];
    v2[30] = v0;
    v2[31] = 2;
    v2[29] = v3;
    v4 = sub_80110;
  }

  else
  {
    v4 = sub_7FC24;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_7FC24()
{
  sub_6932C((v0 + 2), (v0 + 9), &qword_3BD528);
  v1 = *(sub_66278(0, &unk_3BD190) - 8);
  swift_task_alloc();
  (*(v1 + 16))();
  sub_2C4958();

  v2 = sub_5BA4C(0, 1, 1, &_swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_5BA4C(v3 > 1, v4 + 1, 1, v2);
  }

  v5 = v0[22];
  v6 = v0[18];
  v7 = v0[19];
  *(v2 + 2) = v4 + 1;
  v9 = *(v7 + 32);
  v7 += 32;
  v8 = v9;
  v10 = (*(v7 + 48) + 32) & ~*(v7 + 48);
  v11 = *(v7 + 40);
  v9(&v2[v10 + v11 * v4], v5, v6);
  v12 = *(sub_6620C(&unk_3BDC20) - 8);
  swift_task_alloc();
  (*(v12 + 16))();
  sub_2C4958();

  v14 = *(v2 + 2);
  v13 = *(v2 + 3);
  if (v14 >= v13 >> 1)
  {
    v2 = sub_5BA4C(v13 > 1, v14 + 1, 1, v2);
  }

  v15 = v0[21];
  v16 = v0[18];
  *(v2 + 2) = v14 + 1;
  v25 = v11;
  v8(&v2[v10 + v14 * v11], v15, v16);
  v17 = *(sub_6620C(&unk_3BD1A0) - 8);
  swift_task_alloc();
  (*(v17 + 16))();
  sub_2C4958();

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_5BA4C(v18 > 1, v19 + 1, 1, v2);
  }

  v20 = v0[20];
  v21 = v0[18];
  *(v2 + 2) = v19 + 1;
  v8(&v2[v10 + v19 * v25], v20, v21);
  v0[16] = v2;
  sub_6620C(&unk_3BD220);
  sub_72B74(&qword_3BCE60, &unk_3BD220);
  v22 = sub_2C4DF8();

  sub_69198((v0 + 9), &qword_3BD528);
  sub_69198((v0 + 2), &qword_3BD528);

  v23 = v0[1];

  return v23(v22);
}

uint64_t sub_80090()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_80110()
{
  v1 = v0[31];
  v2 = 16 * v1 + 16;
  do
  {
    if (--v1)
    {
      v3 = sub_6620C(&unk_3BDC20);
    }

    else
    {
      v3 = sub_66278(0, &unk_3BD190);
    }

    (*(*(v3 - 8) + 8))(v0 + *(v0[29] + v2) + 16, v3);
    v2 -= 16;
  }

  while (v1);

  v4 = v0[1];

  return v4();
}

uint64_t BaseObjectGraph.withAsyncDependenciesResolved<each A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[3] = a2;
  v7 = sub_2C4968();
  v4[6] = v7;
  v4[7] = *(v7 - 8);
  v4[8] = swift_task_alloc();
  if (a2 == 1)
  {
    TupleTypeMetadata = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v9 = swift_task_alloc();
    if (a2)
    {
      v10 = 0;
      v11 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (v9 - v11 < 0x20)
      {
        goto LABEL_9;
      }

      v10 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v12 = (v11 + 16);
      v13 = (v9 + 16);
      v14 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v15 = *v12;
        *(v13 - 1) = *(v12 - 1);
        *v13 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      if (v10 != a2)
      {
LABEL_9:
        v16 = a2 - v10;
        v17 = 8 * v10;
        v18 = (v9 + 8 * v10);
        v19 = (v11 + v17);
        do
        {
          v20 = *v19++;
          *v18++ = v20;
          --v16;
        }

        while (v16);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v4[9] = TupleTypeMetadata;
  v4[10] = *(TupleTypeMetadata - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_8042C, 0, 0);
}

uint64_t sub_8042C()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = 0;
    v3 = (v0[4] & 0xFFFFFFFFFFFFFFFELL);
    v0[13] = 0;
    v4 = *v3;
    if (v1 != 1)
    {
      v2 = *(v0[9] + 32);
    }

    v5 = v0[12];
    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_80650;

    return BaseObjectGraph.inject<A>(_:)(v5 + v2, v4, v4);
  }

  else
  {
    (*(v0[10] + 16))(v0[11], v0[12], v0[9]);
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[9];
    v10 = v0[10];
    v0[2] = &_swiftEmptyArrayStorage;
    sub_6620C(&unk_3BD220);
    sub_72B74(&qword_3BCE60, &unk_3BD220);
    v11 = sub_2C4DF8();

    v12 = *(v10 + 8);
    v12(v8, v9);
    v12(v7, v9);

    v13 = v0[1];

    return v13(v11);
  }
}

uint64_t sub_80650()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_80B20;
  }

  else
  {
    v2 = sub_80764;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_80764()
{
  v1 = v0[3];
  v2 = v0[13] + 1;
  if (v2 == v1)
  {
    (*(v0[10] + 16))(v0[11], v0[12], v0[9]);
    v3 = 0;
    v23 = v0[4] & 0xFFFFFFFFFFFFFFFELL;
    v25 = v0[7];
    v4 = &_swiftEmptyArrayStorage;
    v5 = 32;
    do
    {
      v6 = *(*(v23 + 8 * v3) - 8);
      swift_task_alloc();
      (*(v6 + 16))();
      sub_2C4958();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_5BA4C(0, v4[2] + 1, 1, v4);
      }

      v8 = v4[2];
      v7 = v4[3];
      if (v8 >= v7 >> 1)
      {
        v4 = sub_5BA4C(v7 > 1, v8 + 1, 1, v4);
      }

      v9 = v0[8];
      v10 = v0[6];
      v11 = v0[3];
      v4[2] = v8 + 1;
      (*(v25 + 32))(v4 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v8, v9, v10);
      ++v3;
      v5 += 16;
    }

    while (v3 != v11);
    v14 = v0[12];
    v16 = v0[9];
    v15 = v0[10];
    v24 = v0[11];
    v0[2] = v4;
    sub_6620C(&unk_3BD220);
    sub_72B74(&qword_3BCE60, &unk_3BD220);
    v17 = sub_2C4DF8();

    v18 = *(v15 + 8);
    v18(v24, v16);
    v18(v14, v16);

    v19 = v0[1];

    return v19(v17);
  }

  else
  {
    v0[13] = v2;
    v12 = *((v0[4] & 0xFFFFFFFFFFFFFFFELL) + 8 * v2);
    if (v1 == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(v0[9] + 16 * v2 + 32);
    }

    v21 = v0[12];
    v22 = swift_task_alloc();
    v0[14] = v22;
    *v22 = v0;
    v22[1] = sub_80650;

    return BaseObjectGraph.inject<A>(_:)(v21 + v13, v12, v12);
  }
}

uint64_t sub_80B20()
{
  v1 = v0[13];
  if (v1)
  {
    v2 = v1 - 1;
    v3 = 16 * v1 + 16;
    do
    {
      (*(*(*((v0[4] & 0xFFFFFFFFFFFFFFFELL) + 8 * v2--) - 8) + 8))(v0[12] + *(v0[9] + v3));
      v3 -= 16;
    }

    while (v2 != -1);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_80C04@<X0>(uint64_t *a1@<X8>)
{
  sub_814F8();
  v2 = sub_2C0D68();
  result = sub_80DF8(&qword_3BD388, &type metadata accessor for ComponentKinds);
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PartialObjectGraphProvider(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PartialObjectGraphProvider(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_80D50()
{
  result = qword_3BD230;
  if (!qword_3BD230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD230);
  }

  return result;
}

unint64_t sub_80DA4()
{
  result = qword_3BD238;
  if (!qword_3BD238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD238);
  }

  return result;
}

uint64_t sub_80DF8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_80E40()
{
  result = qword_3BD268;
  if (!qword_3BD268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD268);
  }

  return result;
}

unint64_t sub_80E94()
{
  result = qword_3BD270;
  if (!qword_3BD270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD270);
  }

  return result;
}

uint64_t sub_80EE8()
{
  sub_68CD0(v0 + 16);
  sub_68CD0(v0 + 56);

  return _swift_deallocObject(v0, 96, 7);
}

unint64_t sub_80F28()
{
  result = qword_3BD2C8;
  if (!qword_3BD2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD2C8);
  }

  return result;
}

unint64_t sub_80F7C()
{
  result = qword_3BD2E8;
  if (!qword_3BD2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD2E8);
  }

  return result;
}

unint64_t sub_80FD0()
{
  result = qword_3BD2F8;
  if (!qword_3BD2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD2F8);
  }

  return result;
}

unint64_t sub_81024()
{
  result = qword_3BD318;
  if (!qword_3BD318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD318);
  }

  return result;
}

unint64_t sub_81078()
{
  result = qword_3BD320;
  if (!qword_3BD320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD320);
  }

  return result;
}

unint64_t sub_810CC()
{
  result = qword_3BD338;
  if (!qword_3BD338)
  {
    sub_66278(255, &qword_3BD330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD338);
  }

  return result;
}

unint64_t sub_81134()
{
  result = qword_3BD348;
  if (!qword_3BD348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD348);
  }

  return result;
}

unint64_t sub_81188()
{
  result = qword_3BD350;
  if (!qword_3BD350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD350);
  }

  return result;
}

unint64_t sub_811DC()
{
  result = qword_3BD358;
  if (!qword_3BD358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD358);
  }

  return result;
}

unint64_t sub_81230()
{
  result = qword_3BD360;
  if (!qword_3BD360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD360);
  }

  return result;
}

unint64_t sub_81284()
{
  result = qword_3BD368;
  if (!qword_3BD368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD368);
  }

  return result;
}

unint64_t sub_812D8()
{
  result = qword_3BD378;
  if (!qword_3BD378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD378);
  }

  return result;
}

void sub_8132C()
{
  if (qword_3BB7C8 != -1)
  {
    swift_once();
  }

  v0 = sub_2C00B8();
  sub_57AD8(v0, qword_3C3008);
  swift_errorRetain();
  oslog = sub_2C0098();
  v1 = sub_2C5DC8();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v2 = 136315394;
    v5 = sub_2C67E8();
    v7 = sub_5CCF4(v5, v6, &v10);

    *(v2 + 4) = v7;
    *(v2 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 14) = v8;
    *v3 = v8;
    _os_log_impl(&dword_0, oslog, v1, "Failed to initialize %s with error: %@", v2, 0x16u);
    sub_69198(v3, &qword_3BFEE0);

    sub_68CD0(v4);
  }
}

uint64_t sub_814F8()
{
  type metadata accessor for BrickComponentModel();
  sub_80DF8(&qword_3BD390, type metadata accessor for BrickComponentModel);
  sub_2C4CD8();
  type metadata accessor for ChartComponentModel();
  sub_80DF8(&qword_3BD398, type metadata accessor for ChartComponentModel);
  sub_2C4CD8();
  type metadata accessor for ChartSwooshItemComponentModel();
  sub_80DF8(&qword_3BD3A0, type metadata accessor for ChartSwooshItemComponentModel);
  sub_2C4CD8();
  type metadata accessor for ContentUnavailableComponentModel();
  sub_80DF8(&qword_3BD3A8, type metadata accessor for ContentUnavailableComponentModel);
  sub_2C4CD8();
  type metadata accessor for DescriptionHeaderComponentModel();
  sub_80DF8(&qword_3BD3B0, type metadata accessor for DescriptionHeaderComponentModel);
  sub_2C4CD8();
  type metadata accessor for DividerComponentModel();
  sub_80DF8(&qword_3BD3B8, type metadata accessor for DividerComponentModel);
  sub_2C4CD8();
  sub_2C1418();
  sub_80DF8(&qword_3BD3C0, &type metadata accessor for EmptyComponentModel);
  sub_2C4CD8();
  type metadata accessor for FanComponentModel();
  sub_80DF8(&qword_3BD3C8, type metadata accessor for FanComponentModel);
  sub_2C4CD8();
  type metadata accessor for GridItemComponentModel();
  sub_80DF8(&qword_3BD3D0, type metadata accessor for GridItemComponentModel);
  sub_2C4CD8();
  type metadata accessor for HeroComponentModel();
  sub_80DF8(&qword_3BD3D8, type metadata accessor for HeroComponentModel);
  sub_2C4CD8();
  type metadata accessor for InfoItemComponentModel(0);
  sub_80DF8(&qword_3BD3E0, type metadata accessor for InfoItemComponentModel);
  sub_2C4CD8();
  sub_2C1A08();
  sub_80DF8(&qword_3BD3E8, &type metadata accessor for LabelItemComponentModel);
  sub_2C4CD8();
  type metadata accessor for LargeNavigationBarComponentModel();
  sub_80DF8(&qword_3BD3F0, type metadata accessor for LargeNavigationBarComponentModel);
  sub_2C4CD8();
  type metadata accessor for ListItemComponentModel();
  sub_80DF8(&qword_3BD3F8, type metadata accessor for ListItemComponentModel);
  sub_2C4CD8();
  type metadata accessor for RatingSummaryComponentModel();
  sub_80DF8(&qword_3BD400, type metadata accessor for RatingSummaryComponentModel);
  sub_2C4CD8();
  type metadata accessor for RecommendationItemComponentModel();
  sub_80DF8(&qword_3BD408, type metadata accessor for RecommendationItemComponentModel);
  sub_2C4CD8();
  type metadata accessor for ReviewBrickComponentModel();
  sub_80DF8(&qword_3BD410, type metadata accessor for ReviewBrickComponentModel);
  sub_2C4CD8();
  type metadata accessor for ReviewsHeaderComponentModel(0);
  sub_80DF8(&qword_3BD418, type metadata accessor for ReviewsHeaderComponentModel);
  sub_2C4CD8();
  type metadata accessor for SeriesEntityCardComponentModel();
  sub_80DF8(&qword_3BD420, type metadata accessor for SeriesEntityCardComponentModel);
  sub_2C4CD8();
  type metadata accessor for SeriesRoomHeaderComponentModel();
  sub_80DF8(&qword_3BD428, type metadata accessor for SeriesRoomHeaderComponentModel);
  sub_2C4CD8();
  type metadata accessor for SheetHeaderComponentModel();
  sub_80DF8(&qword_3BD430, type metadata accessor for SheetHeaderComponentModel);
  sub_2C4CD8();
  sub_2C1FD8();
  sub_80DF8(&qword_3BD438, &type metadata accessor for ShelfFooterSeeAllComponentModel);
  sub_2C4CD8();
  sub_2C1F98();
  sub_80DF8(&qword_3BD440, &type metadata accessor for ShelfHeaderTitleComponentModel);
  sub_2C4CD8();
  type metadata accessor for SingleBookWidgetComponentModel();
  sub_80DF8(&qword_3BD448, type metadata accessor for SingleBookWidgetComponentModel);
  sub_2C4CD8();
  type metadata accessor for SwooshItemComponentModel();
  sub_80DF8(&unk_3BD450, type metadata accessor for SwooshItemComponentModel);
  sub_2C4CD8();
  sub_6620C(&unk_3C85C0);
  sub_72B74(&qword_3BD460, &unk_3C85C0);
  sub_2C4CD8();
  type metadata accessor for TextComponentModel(0);
  sub_80DF8(&qword_3BD468, type metadata accessor for TextComponentModel);
  return sub_2C4CD8();
}

unint64_t sub_81F90()
{
  result = qword_3BD4A0;
  if (!qword_3BD4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD4A0);
  }

  return result;
}

unint64_t sub_81FE4()
{
  result = qword_3BD4C0;
  if (!qword_3BD4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD4C0);
  }

  return result;
}

unint64_t sub_82038()
{
  result = qword_3BD4C8;
  if (!qword_3BD4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD4C8);
  }

  return result;
}

unint64_t sub_8208C()
{
  result = qword_3BD4D8;
  if (!qword_3BD4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD4D8);
  }

  return result;
}

unint64_t sub_820E0()
{
  result = qword_3BD4E0;
  if (!qword_3BD4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD4E0);
  }

  return result;
}

unint64_t sub_82134()
{
  result = qword_3BD4E8;
  if (!qword_3BD4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD4E8);
  }

  return result;
}

unint64_t sub_82188()
{
  result = qword_3BD508;
  if (!qword_3BD508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD508);
  }

  return result;
}

unint64_t sub_821DC()
{
  result = qword_3BD510;
  if (!qword_3BD510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD510);
  }

  return result;
}

unint64_t sub_82230()
{
  result = qword_3BD518;
  if (!qword_3BD518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD518);
  }

  return result;
}

uint64_t sub_82294@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2C30F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&qword_3BD530);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for EditFinishedDateSheetRootView();
  sub_6932C(v1 + *(v10 + 24), v9, &qword_3BD530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2C0C98();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2C5DD8();
    v13 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t EditFinishedDateSheetRootView.init(assetInfo:objectGraph:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for EditFinishedDateSheetRootView() + 24);
  *(a3 + v6) = swift_getKeyPath();
  sub_6620C(&qword_3BD530);
  swift_storeEnumTagMultiPayload();
  result = sub_693D0(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t type metadata accessor for EditFinishedDateSheetRootView()
{
  result = qword_3BD5E8;
  if (!qword_3BD5E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EditFinishedDateSheetRootView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v61 = sub_2C0BB8();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_2C0C68();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_2C0C98();
  v65 = *(v63 - 8);
  __chkstk_darwin(v63);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&qword_3BD538);
  __chkstk_darwin(v7 - 8);
  v9 = &v48 - v8;
  v49 = sub_6620C(&qword_3BD540);
  __chkstk_darwin(v49);
  v11 = &v48 - v10;
  v53 = sub_6620C(&qword_3BD548);
  __chkstk_darwin(v53);
  v13 = &v48 - v12;
  v55 = sub_6620C(&qword_3BD550);
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v52 = &v48 - v14;
  v58 = sub_6620C(&qword_3BD558);
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v48 - v15;
  sub_691F8(v1, v68);
  v64 = v1;
  v67 = v1;
  sub_835A4(v68, 0, sub_85304, v66, v9);
  sub_6620C(&qword_3BD560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2E4110;
  v17 = sub_2C3768();
  *(inited + 32) = v17;
  v18 = sub_2C3788();
  *(inited + 33) = v18;
  v19 = sub_2C37A8();
  *(inited + 34) = v19;
  v20 = sub_2C3798();
  sub_2C3798();
  if (sub_2C3798() != v17)
  {
    v20 = sub_2C3798();
  }

  sub_2C3798();
  if (sub_2C3798() != v18)
  {
    v20 = sub_2C3798();
  }

  sub_2C3798();
  if (sub_2C3798() != v19)
  {
    v20 = sub_2C3798();
  }

  sub_82294(v6);
  sub_2C0C78();
  v21 = *(v65 + 8);
  v65 += 8;
  v21(v6, v63);
  sub_2C0C58();
  (*(v50 + 8))(v4, v51);
  sub_2C24D8();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_69130(v9, v11, &qword_3BD538);
  v30 = &v11[*(v49 + 36)];
  *v30 = v20;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  sub_2C46A8();
  sub_2C2AD8();
  sub_69130(v11, v13, &qword_3BD540);
  v31 = v53;
  v32 = &v13[*(v53 + 36)];
  v33 = v68[5];
  *(v32 + 4) = v68[4];
  *(v32 + 5) = v33;
  *(v32 + 6) = v68[6];
  v34 = v68[1];
  *v32 = v68[0];
  *(v32 + 1) = v34;
  v35 = v68[3];
  *(v32 + 2) = v68[2];
  *(v32 + 3) = v35;
  sub_2BF028();
  sub_2C4DB8();
  v36 = v69;
  v37 = sub_8530C();
  v38 = v52;
  sub_2C3DD8();

  sub_85450(v13);
  sub_2C4DB8();
  if (v69 == 1)
  {
  }

  else
  {
    sub_2C4E58();
    sub_2C4DC8();
  }

  sub_2C4E28();
  v69 = v31;
  v70 = v37;
  swift_getOpaqueTypeConformance2();
  v39 = v56;
  v40 = v55;
  sub_2C3AD8();

  (*(v54 + 8))(v38, v40);
  sub_2C3778();
  sub_82294(v6);
  v41 = v59;
  sub_2C0BE8();
  v21(v6, v63);
  sub_2C0B98();
  (*(v60 + 8))(v41, v61);
  sub_2C24D8();
  v69 = v42;
  v70 = v43;
  v71 = v44;
  v72 = v45;
  v73 = 0;
  sub_6620C(&qword_3BD580);
  v46 = v62;
  sub_2C35C8();
  return (*(v57 + 32))(v46, v39, v58);
}

uint64_t sub_82E20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v56 = sub_6620C(&qword_3BD6A0);
  v57 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = v44 - v3;
  v53 = sub_6620C(&qword_3BD6A8);
  v54 = *(v53 - 8);
  __chkstk_darwin(v53);
  v51 = v44 - v4;
  v48 = sub_2C0C98();
  v49 = *(v48 - 8);
  __chkstk_darwin(v48);
  v46 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3BCB28);
  __chkstk_darwin(v6 - 8);
  v8 = v44 - v7;
  v9 = sub_2C3918();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_6620C(&qword_3BD6B0);
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v44[0] = v44 - v13;
  v47 = sub_6620C(&qword_3BD6B8) - 8;
  __chkstk_darwin(v47);
  v45 = v44 - v14;
  v44[1] = a1;
  sub_72084(a1, a1[3]);
  sub_2BFA28();
  v15 = sub_1DA078();
  v17 = v16;
  KeyPath = swift_getKeyPath();
  (*(v10 + 104))(v12, enum case for Font.TextStyle.title2(_:), v9);
  v19 = enum case for Font.Design.serif (_:);
  v20 = sub_2C3848();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v8, v19, v20);
  (*(v21 + 56))(v8, 0, 1, v20);
  v22 = sub_2C38A8();
  sub_69198(v8, &qword_3BCB28);
  (*(v10 + 8))(v12, v9);
  v23 = swift_getKeyPath();
  v64 = 0;
  *&v59 = v15;
  *(&v59 + 1) = v17;
  LOBYTE(v60) = 0;
  *(&v60 + 1) = &_swiftEmptyArrayStorage;
  *&v61 = KeyPath;
  BYTE8(v61) = 1;
  *&v62 = v23;
  *(&v62 + 1) = v22;
  sub_6620C(&qword_3BD6C0);
  sub_85A38();
  v24 = v44[0];
  sub_2C4058();
  v63[0] = v59;
  v63[1] = v60;
  v63[2] = v61;
  v63[3] = v62;
  sub_69198(v63, &qword_3BD6C0);
  LOBYTE(v8) = sub_2C3778();
  v25 = v46;
  sub_82294(v46);
  v26 = v51;
  v27 = v48;
  sub_2C1768();
  (*(v49 + 8))(v25, v27);
  swift_getKeyPath();
  v28 = v55;
  v29 = v53;
  sub_2C0BC8();

  (*(v54 + 8))(v26, v29);
  swift_getKeyPath();
  sub_85AF8();
  v30 = v56;
  sub_2C0BD8();

  (*(v57 + 8))(v28, v30);
  sub_2C24D8();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = v45;
  (*(v50 + 32))(v45, v24, v52);
  v40 = &v39[*(v47 + 44)];
  *v40 = v8;
  *(v40 + 1) = v32;
  *(v40 + 2) = v34;
  *(v40 + 3) = v36;
  *(v40 + 4) = v38;
  v40[40] = 0;
  v41 = v39;
  v42 = v58;
  sub_69130(v41, v58, &qword_3BD6B8);
  result = sub_6620C(&qword_3BD6D8);
  *(v42 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_835A4@<X0>(void *a1@<X0>, int a2@<W1>, void (*a3)(uint64_t)@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v102 = a4;
  v103 = a3;
  LODWORD(v101) = a2;
  v105 = a5;
  v6 = sub_6620C(&qword_3BD648);
  __chkstk_darwin(v6 - 8);
  v89 = &v86 - v7;
  v8 = sub_2BE6D8();
  v90 = *(v8 - 8);
  v91 = v8;
  v9 = __chkstk_darwin(v8);
  v88 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v93 = &v86 - v11;
  v100 = sub_2BF568();
  v96 = *(v100 - 8);
  __chkstk_darwin(v100);
  v87 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_6620C(&qword_3BD650);
  __chkstk_darwin(v94);
  v99 = &v86 - v13;
  v14 = sub_6620C(&qword_3BD658);
  v15 = __chkstk_darwin(v14 - 8);
  v92 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v95 = &v86 - v18;
  __chkstk_darwin(v17);
  v98 = &v86 - v19;
  v104 = sub_2BF558();
  v20 = *(v104 - 8);
  v21 = __chkstk_darwin(v104);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v97 = &v86 - v24;
  v25 = sub_6620C(&qword_3BC418);
  __chkstk_darwin(v25 - 8);
  v27 = &v86 - v26;
  v28 = sub_2BE588();
  v107 = *(v28 - 8);
  v29 = __chkstk_darwin(v28);
  v31 = &v86 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v106 = &v86 - v32;
  v33 = sub_6620C(&qword_3BD538);
  v34 = __chkstk_darwin(v33);
  v36 = &v86 - v35;
  v37 = &v86 + *(v34 + 52) - v35;
  LOBYTE(v108) = 0;
  sub_2C4368();
  v38 = v110;
  *v37 = v109;
  *(v37 + 1) = v38;
  v39 = &v36[v33[14]];
  v108 = 0;
  sub_2C4368();
  v40 = v110;
  *v39 = v109;
  *(v39 + 1) = v40;
  v41 = &v36[v33[15]];
  v108 = 0;
  sub_2C4368();
  v42 = v110;
  *v41 = v109;
  *(v41 + 1) = v42;
  v43 = &v36[v33[16]];
  v108 = sub_676CC(&_swiftEmptyArrayStorage);
  sub_6620C(&qword_3BD668);
  sub_2C4368();
  v44 = v110;
  *v43 = v109;
  *(v43 + 1) = v44;
  v45 = v33[17];
  *&v36[v45] = swift_getKeyPath();
  sub_6620C(&qword_3BD670);
  swift_storeEnumTagMultiPayload();
  v46 = v33[18];
  *&v36[v46] = swift_getKeyPath();
  sub_6620C(&qword_3BD530);
  swift_storeEnumTagMultiPayload();
  v47 = sub_691F8(a1, v36);
  v36[v33[10]] = v101;
  v103(v47);
  sub_72084(a1, a1[3]);
  v48 = v107;
  sub_2BF978();
  if ((*(v48 + 48))(v27, 1, v28) == 1)
  {
    sub_69198(v27, &qword_3BC418);
LABEL_10:
    v54 = v106;
    sub_2BE548();
    v66 = v104;
    (*(v20 + 104))(v23, enum case for BooksFeatureFlag.fuzzyFinishedDate(_:), v104);
    sub_85984(&qword_3BD678, &type metadata accessor for BooksFeatureFlag);
    sub_72B74(&qword_3BD680, &qword_3BD688);
    v67 = sub_2C5A78();
    (*(v20 + 8))(v23, v66);
    v68 = v67 ^ 1;
    v69 = *(v48 + 32);
LABEL_11:
    v70 = &v36[v33[11]];
    *&v70[*(sub_6620C(&qword_3BD690) + 28)] = 0;
    v69(v70, v54, v28);
    v71 = &v36[v33[12]];
    *v71 = v68 & 1;
    *(v71 + 1) = 0;
    sub_69130(v36, v105, &qword_3BD538);
    return sub_68CD0(a1);
  }

  v49 = *(v48 + 32);
  v102 = v31;
  v103 = v28;
  v101 = v49;
  v49(v31, v27, v28);
  sub_72084(a1, a1[3]);
  v50 = sub_2BFA28();
  if (v50 == 2 || (v50 & 1) == 0)
  {
    v48 = v107;
    v28 = v103;
    (*(v107 + 8))(v102, v103);
    goto LABEL_10;
  }

  v51 = v97;
  v52 = v104;
  (*(v20 + 104))(v97, enum case for BooksFeatureFlag.fuzzyFinishedDate(_:), v104);
  sub_85984(&qword_3BD678, &type metadata accessor for BooksFeatureFlag);
  sub_72B74(&qword_3BD680, &qword_3BD688);
  v53 = sub_2C5A78();
  (*(v20 + 8))(v51, v52);
  v54 = v106;
  if ((v53 & 1) == 0)
  {
LABEL_15:
    v28 = v103;
    v69 = v101;
    v101(v54, v102, v103);
    v68 = 1;
    goto LABEL_11;
  }

  sub_72084(a1, a1[3]);
  v55 = v98;
  sub_2BFA18();
  v56 = v95;
  v57 = v96;
  v58 = v100;
  (*(v96 + 104))(v95, enum case for FinishedDateKind.yearOnly(_:), v100);
  (*(v57 + 56))(v56, 0, 1, v58);
  v59 = *(v94 + 48);
  v60 = v55;
  v61 = v99;
  sub_6932C(v60, v99, &qword_3BD658);
  v104 = v59;
  v62 = v61 + v59;
  v63 = v61;
  sub_6932C(v56, v62, &qword_3BD658);
  v64 = *(v57 + 48);
  if (v64(v61, 1, v58) == 1)
  {
    sub_69198(v56, &qword_3BD658);
    v65 = v99;
    sub_69198(v98, &qword_3BD658);
    if (v64(v65 + v104, 1, v100) == 1)
    {
      sub_69198(v65, &qword_3BD658);
      v54 = v106;
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v73 = v92;
  sub_6932C(v61, v92, &qword_3BD658);
  v74 = v100;
  if (v64(v61 + v104, 1, v100) == 1)
  {
    sub_69198(v95, &qword_3BD658);
    v65 = v99;
    sub_69198(v98, &qword_3BD658);
    (*(v96 + 8))(v73, v74);
LABEL_14:
    sub_69198(v65, &qword_3BD650);
    v54 = v106;
    goto LABEL_15;
  }

  v75 = v96;
  v76 = v87;
  (*(v96 + 32))(v87, v63 + v104, v74);
  sub_85984(&qword_3BD698, &type metadata accessor for FinishedDateKind);
  LODWORD(v104) = sub_2C5878();
  v77 = *(v75 + 8);
  v77(v76, v74);
  sub_69198(v95, &qword_3BD658);
  sub_69198(v98, &qword_3BD658);
  v77(v92, v74);
  sub_69198(v99, &qword_3BD658);
  v54 = v106;
  if ((v104 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_17:
  v78 = v93;
  sub_2BE6C8();
  v79 = v89;
  sub_2BE6A8();
  v81 = v90;
  v80 = v91;
  result = (*(v90 + 48))(v79, 1, v91);
  if (result != 1)
  {
    v82 = v88;
    (*(v81 + 32))(v88, v79, v80);
    v83 = v78;
    v84 = v102;
    sub_29A268(v83, v82, v54);
    v85 = *(v81 + 8);
    v85(v82, v80);
    v85(v93, v80);
    v28 = v103;
    (*(v107 + 8))(v84, v103);
    v68 = 0;
    v69 = v101;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_842D4@<X0>(void *a1@<X0>, int a2@<W1>, void (*a3)(uint64_t)@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v102 = a4;
  v103 = a3;
  LODWORD(v101) = a2;
  v105 = a5;
  v6 = sub_6620C(&qword_3BD648);
  __chkstk_darwin(v6 - 8);
  v89 = &v86 - v7;
  v8 = sub_2BE6D8();
  v90 = *(v8 - 8);
  v91 = v8;
  v9 = __chkstk_darwin(v8);
  v88 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v93 = &v86 - v11;
  v100 = sub_2BF568();
  v96 = *(v100 - 8);
  __chkstk_darwin(v100);
  v87 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_6620C(&qword_3BD650);
  __chkstk_darwin(v94);
  v99 = &v86 - v13;
  v14 = sub_6620C(&qword_3BD658);
  v15 = __chkstk_darwin(v14 - 8);
  v92 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v95 = &v86 - v18;
  __chkstk_darwin(v17);
  v98 = &v86 - v19;
  v104 = sub_2BF558();
  v20 = *(v104 - 8);
  v21 = __chkstk_darwin(v104);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v97 = &v86 - v24;
  v25 = sub_6620C(&qword_3BC418);
  __chkstk_darwin(v25 - 8);
  v27 = &v86 - v26;
  v28 = sub_2BE588();
  v107 = *(v28 - 8);
  v29 = __chkstk_darwin(v28);
  v31 = &v86 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v106 = &v86 - v32;
  v33 = sub_6620C(&qword_3BD660);
  v34 = __chkstk_darwin(v33);
  v36 = &v86 - v35;
  v37 = &v86 + *(v34 + 52) - v35;
  LOBYTE(v108) = 0;
  sub_2C4368();
  v38 = v110;
  *v37 = v109;
  *(v37 + 1) = v38;
  v39 = &v36[v33[14]];
  v108 = 0;
  sub_2C4368();
  v40 = v110;
  *v39 = v109;
  *(v39 + 1) = v40;
  v41 = &v36[v33[15]];
  v108 = 0;
  sub_2C4368();
  v42 = v110;
  *v41 = v109;
  *(v41 + 1) = v42;
  v43 = &v36[v33[16]];
  v108 = sub_676CC(&_swiftEmptyArrayStorage);
  sub_6620C(&qword_3BD668);
  sub_2C4368();
  v44 = v110;
  *v43 = v109;
  *(v43 + 1) = v44;
  v45 = v33[17];
  *&v36[v45] = swift_getKeyPath();
  sub_6620C(&qword_3BD670);
  swift_storeEnumTagMultiPayload();
  v46 = v33[18];
  *&v36[v46] = swift_getKeyPath();
  sub_6620C(&qword_3BD530);
  swift_storeEnumTagMultiPayload();
  v47 = sub_691F8(a1, v36);
  v36[v33[10]] = v101;
  v103(v47);
  sub_72084(a1, a1[3]);
  v48 = v107;
  sub_2BF978();
  if ((*(v48 + 48))(v27, 1, v28) == 1)
  {
    sub_69198(v27, &qword_3BC418);
LABEL_10:
    v54 = v106;
    sub_2BE548();
    v66 = v104;
    (*(v20 + 104))(v23, enum case for BooksFeatureFlag.fuzzyFinishedDate(_:), v104);
    sub_85984(&qword_3BD678, &type metadata accessor for BooksFeatureFlag);
    sub_72B74(&qword_3BD680, &qword_3BD688);
    v67 = sub_2C5A78();
    (*(v20 + 8))(v23, v66);
    v68 = v67 ^ 1;
    v69 = *(v48 + 32);
LABEL_11:
    v70 = &v36[v33[11]];
    *&v70[*(sub_6620C(&qword_3BD690) + 28)] = 0;
    v69(v70, v54, v28);
    v71 = &v36[v33[12]];
    *v71 = v68 & 1;
    *(v71 + 1) = 0;
    sub_85914(v36, v105);
    return sub_68CD0(a1);
  }

  v49 = *(v48 + 32);
  v102 = v31;
  v103 = v28;
  v101 = v49;
  v49(v31, v27, v28);
  sub_72084(a1, a1[3]);
  v50 = sub_2BFA28();
  if (v50 == 2 || (v50 & 1) == 0)
  {
    v48 = v107;
    v28 = v103;
    (*(v107 + 8))(v102, v103);
    goto LABEL_10;
  }

  v51 = v97;
  v52 = v104;
  (*(v20 + 104))(v97, enum case for BooksFeatureFlag.fuzzyFinishedDate(_:), v104);
  sub_85984(&qword_3BD678, &type metadata accessor for BooksFeatureFlag);
  sub_72B74(&qword_3BD680, &qword_3BD688);
  v53 = sub_2C5A78();
  (*(v20 + 8))(v51, v52);
  v54 = v106;
  if ((v53 & 1) == 0)
  {
LABEL_15:
    v28 = v103;
    v69 = v101;
    v101(v54, v102, v103);
    v68 = 1;
    goto LABEL_11;
  }

  sub_72084(a1, a1[3]);
  v55 = v98;
  sub_2BFA18();
  v56 = v95;
  v57 = v96;
  v58 = v100;
  (*(v96 + 104))(v95, enum case for FinishedDateKind.yearOnly(_:), v100);
  (*(v57 + 56))(v56, 0, 1, v58);
  v59 = *(v94 + 48);
  v60 = v55;
  v61 = v99;
  sub_6932C(v60, v99, &qword_3BD658);
  v104 = v59;
  v62 = v61 + v59;
  v63 = v61;
  sub_6932C(v56, v62, &qword_3BD658);
  v64 = *(v57 + 48);
  if (v64(v61, 1, v58) == 1)
  {
    sub_69198(v56, &qword_3BD658);
    v65 = v99;
    sub_69198(v98, &qword_3BD658);
    if (v64(v65 + v104, 1, v100) == 1)
    {
      sub_69198(v65, &qword_3BD658);
      v54 = v106;
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v73 = v92;
  sub_6932C(v61, v92, &qword_3BD658);
  v74 = v100;
  if (v64(v61 + v104, 1, v100) == 1)
  {
    sub_69198(v95, &qword_3BD658);
    v65 = v99;
    sub_69198(v98, &qword_3BD658);
    (*(v96 + 8))(v73, v74);
LABEL_14:
    sub_69198(v65, &qword_3BD650);
    v54 = v106;
    goto LABEL_15;
  }

  v75 = v96;
  v76 = v87;
  (*(v96 + 32))(v87, v63 + v104, v74);
  sub_85984(&qword_3BD698, &type metadata accessor for FinishedDateKind);
  LODWORD(v104) = sub_2C5878();
  v77 = *(v75 + 8);
  v77(v76, v74);
  sub_69198(v95, &qword_3BD658);
  sub_69198(v98, &qword_3BD658);
  v77(v92, v74);
  sub_69198(v99, &qword_3BD658);
  v54 = v106;
  if ((v104 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_17:
  v78 = v93;
  sub_2BE6C8();
  v79 = v89;
  sub_2BE6A8();
  v81 = v90;
  v80 = v91;
  result = (*(v90 + 48))(v79, 1, v91);
  if (result != 1)
  {
    v82 = v88;
    (*(v81 + 32))(v88, v79, v80);
    v83 = v78;
    v84 = v102;
    sub_29A268(v83, v82, v54);
    v85 = *(v81 + 8);
    v85(v82, v80);
    v85(v93, v80);
    v28 = v103;
    (*(v107 + 8))(v84, v103);
    v68 = 0;
    v69 = v101;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_84FF4()
{
  v0 = type metadata accessor for AssetActionImplementation();
  __chkstk_darwin(v0);
  v2 = v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_6620C(&qword_3BD1B0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v15 - v8;
  sub_2BEF48();
  v15[1] = sub_2C4E28();
  sub_2C4F38();
  v10 = *(v4 + 16);
  v10(v9, v7, v3);
  sub_85984(&unk_3BFEA0, type metadata accessor for AssetActionImplementation);
  sub_2C4EF8();
  v11 = *(v4 + 8);
  v11(v7, v3);
  sub_859CC(v2);
  sub_6620C(&qword_3BD520);
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  v10((v13 + v12), v9, v3);
  sub_2C4F38();
  v10(v7, (v13 + v12), v3);
  swift_setDeallocating();
  v11((v13 + v12), v3);
  swift_deallocClassInstance();
  sub_2C4EE8();
  v11(v7, v3);
  return (v11)(v9, v3);
}

unint64_t sub_8530C()
{
  result = qword_3BD568;
  if (!qword_3BD568)
  {
    sub_718D4(&qword_3BD548);
    sub_85398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD568);
  }

  return result;
}

unint64_t sub_85398()
{
  result = qword_3BD570;
  if (!qword_3BD570)
  {
    sub_718D4(&qword_3BD540);
    sub_72B74(&qword_3BD578, &qword_3BD538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD570);
  }

  return result;
}

uint64_t sub_85450(uint64_t a1)
{
  v2 = sub_6620C(&qword_3BD548);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_854E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_6620C(&qword_3BD588);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_855B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_6620C(&qword_3BD588);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_85668()
{
  sub_85704();
  if (v0 <= 0x3F)
  {
    sub_2C4E28();
    if (v1 <= 0x3F)
    {
      sub_85768();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_85704()
{
  result = qword_3BD5F8;
  if (!qword_3BD5F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_3BD5F8);
  }

  return result;
}

void sub_85768()
{
  if (!qword_3BD600)
  {
    sub_2C0C98();
    v0 = sub_2C2558();
    if (!v1)
    {
      atomic_store(v0, &qword_3BD600);
    }
  }
}

unint64_t sub_857C4()
{
  result = qword_3BD638;
  if (!qword_3BD638)
  {
    sub_718D4(&qword_3BD580);
    sub_718D4(&qword_3BD550);
    sub_2C4E28();
    sub_718D4(&qword_3BD548);
    sub_8530C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_85984(&qword_3BD640, &type metadata accessor for SafeAreaPaddingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD638);
  }

  return result;
}

uint64_t sub_85914(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BD660);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_85984(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_859CC(uint64_t a1)
{
  v2 = type metadata accessor for AssetActionImplementation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_85A38()
{
  result = qword_3BD6C8;
  if (!qword_3BD6C8)
  {
    sub_718D4(&qword_3BD6C0);
    sub_72198();
    sub_72B74(&qword_3BCB10, &qword_3BCB18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD6C8);
  }

  return result;
}

unint64_t sub_85AF8()
{
  result = qword_3BD6D0;
  if (!qword_3BD6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD6D0);
  }

  return result;
}

uint64_t sub_85B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_6620C(&qword_3BD588);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_85C30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_6620C(&qword_3BD588);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PriceTrackingOptInView()
{
  result = qword_3BD738;
  if (!qword_3BD738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_85D2C()
{
  sub_85DC0();
  if (v0 <= 0x3F)
  {
    sub_85768();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_85DC0()
{
  result = qword_3BD748;
  if (!qword_3BD748)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_3BD748);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SeriesRoomType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NavigationContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_85F70()
{
  result = qword_3BD780;
  if (!qword_3BD780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD780);
  }

  return result;
}

uint64_t sub_85FC4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2C30F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&qword_3BD530);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for PriceTrackingOptInView();
  sub_6932C(v1 + *(v10 + 28), v9, &qword_3BD530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2C0C98();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2C5DD8();
    v13 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_86200@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = sub_2BFDD8();
  v3 = __chkstk_darwin(v2 - 8);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v31 = &v27 - v5;
  v6 = type metadata accessor for PriceTrackingOptInView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = sub_2C4BF8();
  __chkstk_darwin(v9 - 8);
  v10 = sub_2C4C28();
  v34 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v30 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v29 = &v27 - v14;
  v15 = __chkstk_darwin(v13);
  v27 = &v27 - v16;
  __chkstk_darwin(v15);
  v28 = &v27 - v17;
  sub_2C4BE8();
  sub_88140(v1, &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  sub_881A8(&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  sub_2C4C18();
  sub_2C4BE8();
  sub_88140(v1, &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = swift_allocObject();
  sub_881A8(&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v18);
  sub_2C4C18();
  sub_8665C();
  sub_2BFDC8();

  sub_867F4();
  sub_2BFDC8();

  sub_88140(v1, &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = swift_allocObject();
  sub_881A8(&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v18);
  v22 = *(v34 + 16);
  v23 = v28;
  v22(v29, v28, v10);
  v24 = v27;
  v22(v30, v27, v10);
  sub_6620C(&qword_3BD788);
  sub_88494();
  sub_2C1098();
  v25 = *(v34 + 8);
  v25(v24, v10);
  return (v25)(v23, v10);
}

uint64_t sub_8665C()
{
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = sub_2C5888();
  v3 = sub_2C5888();
  v4 = sub_2C5888();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_2C58C8();
  return v6;
}

uint64_t sub_867F4()
{
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = sub_2C5888();
  v3 = sub_2C5888();
  v4 = sub_2C5888();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_2C58C8();
  return v6;
}

uint64_t sub_8690C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2C0C68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2C0C98();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = sub_2C3328();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v12 = sub_6620C(&qword_3BD7A8);
  sub_86B20(a1, a2 + *(v12 + 44));
  v13 = sub_2C3778();
  sub_85FC4(v11);
  sub_2C0C78();
  (*(v9 + 8))(v11, v8);
  sub_2C0C58();
  (*(v5 + 8))(v7, v4);
  sub_2C24D8();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  result = sub_6620C(&qword_3BD788);
  v23 = a2 + *(result + 36);
  *v23 = v13;
  *(v23 + 8) = v15;
  *(v23 + 16) = v17;
  *(v23 + 24) = v19;
  *(v23 + 32) = v21;
  *(v23 + 40) = 0;
  return result;
}

uint64_t sub_86B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a1;
  v109 = a2;
  v2 = sub_6620C(&qword_3BD6A0);
  v3 = *(v2 - 8);
  v107 = v2;
  v108 = v3;
  __chkstk_darwin(v2);
  v106 = &v90 - v4;
  v5 = sub_6620C(&qword_3BD6A8);
  v6 = *(v5 - 8);
  v104 = v5;
  v105 = v6;
  __chkstk_darwin(v5);
  v102 = &v90 - v7;
  v8 = sub_6620C(&qword_3BCB28);
  __chkstk_darwin(v8 - 8);
  v99 = &v90 - v9;
  v10 = sub_6620C(&qword_3BD7B0);
  v11 = *(v10 - 8);
  v100 = v10;
  v101 = v11;
  __chkstk_darwin(v10);
  v98 = &v90 - v12;
  v103 = sub_6620C(&qword_3BD7B8) - 8;
  v13 = __chkstk_darwin(v103);
  v113 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v115 = &v90 - v15;
  v16 = sub_2C0C68();
  v95 = *(v16 - 8);
  v96 = v16;
  __chkstk_darwin(v16);
  v94 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_2C0C98();
  v114 = *(v111 - 8);
  __chkstk_darwin(v111);
  v93 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2C29C8();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_6620C(&qword_3BD7C0);
  __chkstk_darwin(v91);
  v24 = &v90 - v23;
  v92 = sub_6620C(&qword_3BD7C8) - 8;
  v25 = __chkstk_darwin(v92);
  v112 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v110 = &v90 - v27;
  v28 = sub_2C42B8();
  v29 = sub_2C37C8();
  KeyPath = swift_getKeyPath();
  *&v128 = v28;
  *(&v128 + 1) = KeyPath;
  *&v129 = v29;
  (*(v20 + 104))(v22, enum case for DynamicTypeSize.medium(_:), v19);
  sub_6620C(&qword_3BD7D0);
  sub_88554();
  sub_2C3F38();
  (*(v20 + 8))(v22, v19);

  v31 = &v24[*(sub_6620C(&qword_3BD7E0) + 36)];
  v32 = *(sub_6620C(&qword_3BD7E8) + 28);
  v33 = enum case for Image.Scale.large(_:);
  v34 = sub_2C42D8();
  (*(*(v34 - 8) + 104))(v31 + v32, v33, v34);
  *v31 = swift_getKeyPath();
  *&v24[*(v91 + 36)] = sub_2C3538();
  sub_88614();
  v35 = v110;
  sub_2C3F88();
  sub_69198(v24, &qword_3BD7C0);
  sub_2C46A8();
  sub_2C2708();
  v36 = (v35 + *(sub_6620C(&qword_3BD818) + 36));
  v37 = v35;
  v38 = v117;
  *v36 = v116;
  v36[1] = v38;
  v36[2] = v118;
  LOBYTE(v35) = sub_2C3778();
  v39 = v93;
  sub_85FC4(v93);
  v40 = v94;
  sub_2C0C78();
  v41 = *(v114 + 8);
  v114 += 8;
  v91 = v41;
  v41(v39, v111);
  sub_2C0BF8();
  (*(v95 + 8))(v40, v96);
  sub_2C24D8();
  v42 = v37 + *(v92 + 44);
  *v42 = v35;
  *(v42 + 8) = v43;
  *(v42 + 16) = v44;
  *(v42 + 24) = v45;
  *(v42 + 32) = v46;
  *(v42 + 40) = 0;
  v47 = sub_877A4();
  v49 = v48;
  v50 = swift_getKeyPath();
  v51 = sub_2C3818();
  v52 = swift_getKeyPath();
  LOBYTE(v124) = 0;
  *&v128 = v47;
  *(&v128 + 1) = v49;
  LOBYTE(v129) = 0;
  *(&v129 + 1) = *v120;
  DWORD1(v129) = *&v120[3];
  *(&v129 + 1) = &_swiftEmptyArrayStorage;
  *&v130 = v50;
  BYTE8(v130) = 1;
  *(&v130 + 9) = *v119;
  HIDWORD(v130) = *&v119[3];
  *&v131 = v52;
  *(&v131 + 1) = v51;
  v53 = v99;
  sub_2C3828();
  v54 = sub_6620C(&qword_3BD6C0);
  v55 = sub_85A38();
  v56 = v98;
  sub_2C3E08();
  sub_69198(v53, &qword_3BCB28);
  v121[0] = v128;
  v121[1] = v129;
  v121[2] = v130;
  v121[3] = v131;
  sub_69198(v121, &qword_3BD6C0);
  *&v128 = v54;
  *(&v128 + 1) = v55;
  swift_getOpaqueTypeConformance2();
  v57 = v115;
  v58 = v100;
  sub_2C4058();
  (*(v101 + 8))(v56, v58);
  *(v57 + *(sub_6620C(&qword_3BD820) + 36)) = 256;
  LOBYTE(v54) = sub_2C3778();
  sub_85FC4(v39);
  v59 = v102;
  v60 = v111;
  sub_2C1768();
  (v91)(v39, v60);
  swift_getKeyPath();
  v61 = v106;
  v62 = v104;
  sub_2C0BC8();

  (*(v105 + 8))(v59, v62);
  swift_getKeyPath();
  sub_85AF8();
  v63 = v107;
  sub_2C0BD8();

  (*(v108 + 8))(v61, v63);
  sub_2C24D8();
  v64 = v115;
  v65 = v115 + *(v103 + 44);
  *v65 = v54;
  *(v65 + 8) = v66;
  *(v65 + 16) = v67;
  *(v65 + 24) = v68;
  *(v65 + 32) = v69;
  *(v65 + 40) = 0;
  v70 = sub_878C0();
  v108 = v71;
  v111 = swift_getKeyPath();
  v114 = sub_2C37F8();
  v72 = swift_getKeyPath();
  LOBYTE(v128) = 0;
  LODWORD(v107) = sub_2C3538();
  v73 = v110;
  v74 = v112;
  sub_6932C(v110, v112, &qword_3BD7C8);
  v75 = v64;
  v76 = v113;
  sub_6932C(v75, v113, &qword_3BD7B8);
  v77 = v74;
  v78 = v109;
  sub_6932C(v77, v109, &qword_3BD7C8);
  v79 = sub_6620C(&qword_3BD828);
  sub_6932C(v76, v78 + *(v79 + 48), &qword_3BD7B8);
  v80 = v78 + *(v79 + 64);
  v81 = v108;
  *&v124 = v70;
  *(&v124 + 1) = v108;
  LOBYTE(v125) = 0;
  *(&v125 + 1) = *v123;
  DWORD1(v125) = *&v123[3];
  v82 = v111;
  *(&v125 + 1) = &_swiftEmptyArrayStorage;
  *&v126 = v111;
  BYTE8(v126) = 1;
  *(&v126 + 9) = *v122;
  HIDWORD(v126) = *&v122[3];
  v83 = v72;
  *v127 = v72;
  v84 = v114;
  *&v127[8] = v114;
  LODWORD(v79) = v107;
  *&v127[16] = v107;
  *&v127[20] = 256;
  v85 = v124;
  v86 = v125;
  v87 = v126;
  v88 = *v127;
  *(v80 + 62) = *&v127[14];
  *(v80 + 32) = v87;
  *(v80 + 48) = v88;
  *v80 = v85;
  *(v80 + 16) = v86;
  sub_6932C(&v124, &v128, &qword_3BD830);
  sub_69198(v115, &qword_3BD7B8);
  sub_69198(v73, &qword_3BD7C8);
  *&v128 = v70;
  *(&v128 + 1) = v81;
  LOBYTE(v129) = 0;
  *(&v129 + 1) = *v123;
  DWORD1(v129) = *&v123[3];
  *(&v129 + 1) = &_swiftEmptyArrayStorage;
  *&v130 = v82;
  BYTE8(v130) = 1;
  *(&v130 + 9) = *v122;
  HIDWORD(v130) = *&v122[3];
  *&v131 = v83;
  *(&v131 + 1) = v84;
  v132 = v79;
  v133 = 256;
  sub_69198(&v128, &qword_3BD830);
  sub_69198(v113, &qword_3BD7B8);
  return sub_69198(v112, &qword_3BD7C8);
}

uint64_t sub_877A4()
{
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = sub_2C5888();
  v3 = sub_2C5888();
  v4 = sub_2C5888();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_2C58C8();
  return v6;
}

uint64_t sub_878C0()
{
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = sub_2C5888();
  v3 = sub_2C5888();
  v4 = sub_2C5888();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_2C58C8();
  return v6;
}

uint64_t sub_879DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 16) = a4;
  sub_2C5C18();
  *(v5 + 24) = sub_2C5C08();
  v7 = sub_2C5BB8();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  return _swift_task_switch(sub_87A78, v7, v6);
}

uint64_t sub_87A78()
{
  v3 = (*(*(v0 + 16) + 8) + **(*(v0 + 16) + 8));
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_87B64;

  return v3();
}

uint64_t sub_87B64()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_87C84, v3, v2);
}

uint64_t sub_87C84()
{
  if (*(v0 + 64) == 1)
  {
    v4 = (*(*(v0 + 16) + 24) + **(*(v0 + 16) + 24));
    v1 = swift_task_alloc();
    *(v0 + 56) = v1;
    *v1 = v0;
    v1[1] = sub_87DB4;

    return v4();
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_87DB4()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_87ED4, v3, v2);
}

uint64_t sub_87ED4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_87F34(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v22 = a4;
  v6 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for PriceTrackingOptInView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9 - 8);
  v13 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v21 - v14;
  sub_88140(a1, &v21 - v14);
  v16 = sub_2C5C58();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  sub_88140(v15, v13);
  sub_2C5C18();
  v17 = sub_2C5C08();
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = &protocol witness table for MainActor;
  sub_881A8(v13, v19 + v18);
  *(v19 + v18 + v11) = a3;
  sub_249B98(0, 0, v8, v22, v19);

  return sub_888EC(v15);
}

uint64_t sub_88140(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PriceTrackingOptInView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_881A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PriceTrackingOptInView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_88300()
{
  v1 = (type metadata accessor for PriceTrackingOptInView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  sub_6620C(&qword_3BD530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2C0C98();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_88424@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PriceTrackingOptInView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_8690C(v4, a1);
}

unint64_t sub_88494()
{
  result = qword_3BD790;
  if (!qword_3BD790)
  {
    sub_718D4(&qword_3BD788);
    sub_72B74(&qword_3BD798, &qword_3BD7A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD790);
  }

  return result;
}

unint64_t sub_88554()
{
  result = qword_3BD7D8;
  if (!qword_3BD7D8)
  {
    sub_718D4(&qword_3BD7D0);
    sub_72B74(&qword_3BCB10, &qword_3BCB18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD7D8);
  }

  return result;
}

unint64_t sub_88614()
{
  result = qword_3BD7F0;
  if (!qword_3BD7F0)
  {
    sub_718D4(&qword_3BD7C0);
    sub_886CC();
    sub_72B74(&qword_3BD808, &qword_3BD810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD7F0);
  }

  return result;
}

unint64_t sub_886CC()
{
  result = qword_3BD7F8;
  if (!qword_3BD7F8)
  {
    sub_718D4(&qword_3BD7E0);
    sub_718D4(&qword_3BD7D0);
    sub_88554();
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3BD800, &qword_3BD7E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD7F8);
  }

  return result;
}

uint64_t sub_887D4(uint64_t a1)
{
  v4 = *(type metadata accessor for PriceTrackingOptInView() - 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8 = *(v7 + *(v4 + 64));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_88BE0;

  return sub_879DC(a1, v5, v6, v7, v8);
}

uint64_t sub_888EC(uint64_t a1)
{
  v2 = type metadata accessor for PriceTrackingOptInView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_88948()
{
  v1 = (type metadata accessor for PriceTrackingOptInView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[9];
  sub_6620C(&qword_3BD530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2C0C98();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_88A78(uint64_t a1)
{
  v4 = *(type metadata accessor for PriceTrackingOptInView() - 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8 = *(v7 + *(v4 + 64));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_7100C;

  return sub_879DC(a1, v5, v6, v7, v8);
}

id JetActionHandler.__allocating_init(objectGraph:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11BookStoreUI16JetActionHandler_objectGraph] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t UIViewController.jetActionHandlerInContext.getter()
{
  if ([v0 im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BSUIJetActionHandling])
  {
    sub_2C6128();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (*(&v15 + 1))
  {
    sub_6620C(&qword_3BD1D0);
    if (swift_dynamicCast())
    {
      return v13;
    }
  }

  else
  {
    sub_7A844(v16);
  }

  v2 = v0;
  v3 = [v2 description];
  v4 = sub_2C58C8();
  v6 = v5;

  if (qword_3BB7B8 != -1)
  {
    swift_once();
  }

  v7 = sub_2C00B8();
  sub_57AD8(v7, qword_3C2FD8);

  v8 = sub_2C0098();
  v9 = sub_2C5DD8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v16[0] = v11;
    *v10 = 136315138;
    v12 = sub_5CCF4(v4, v6, v16);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_0, v8, v9, "jetActionHandler not found on %s", v10, 0xCu);
    sub_68CD0(v11);
  }

  else
  {
  }

  sub_8A7C4();
  swift_allocError();
  return swift_willThrow();
}

uint64_t UIViewController.objectGraphInContext.getter()
{
  result = UIViewController.jetActionHandlerInContext.getter();
  if (!v0)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 8))(ObjectType, v3);
    swift_unknownObjectRelease();
    return v5;
  }

  return result;
}

uint64_t sub_88FA0()
{
  result = UIViewController.jetActionHandlerInContext.getter();
  if (!v0)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 8))(ObjectType, v3);
    swift_unknownObjectRelease();
    return v5;
  }

  return result;
}

Swift::Int Shelf.ValidationError.hashValue.getter()
{
  sub_2C6738();
  sub_2C6748(0);
  return sub_2C6778();
}

Swift::Int sub_89078()
{
  sub_2C6738();
  sub_2C6748(0);
  return sub_2C6778();
}

id JetActionHandler.init(objectGraph:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC11BookStoreUI16JetActionHandler_objectGraph] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t JetActionHandler.perform(rawActionModel:parentTracker:shouldReportFigaro:sourceViewController:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 152) = a4;
  *(v5 + 160) = v4;
  *(v5 + 417) = a3;
  *(v5 + 136) = a1;
  *(v5 + 144) = a2;
  v6 = sub_6620C(&qword_3BD858);
  *(v5 + 168) = v6;
  *(v5 + 176) = *(v6 - 8);
  *(v5 + 184) = swift_task_alloc();
  v7 = sub_2C4C08();
  *(v5 + 192) = v7;
  *(v5 + 200) = *(v7 - 8);
  *(v5 + 208) = swift_task_alloc();
  v8 = sub_6620C(&qword_3BD1B0);
  *(v5 + 216) = v8;
  *(v5 + 224) = *(v8 - 8);
  *(v5 + 232) = swift_task_alloc();
  v9 = sub_2C4B78();
  *(v5 + 240) = v9;
  *(v5 + 248) = *(v9 - 8);
  *(v5 + 256) = swift_task_alloc();
  *(v5 + 264) = swift_task_alloc();
  v10 = sub_2C1398();
  *(v5 + 272) = v10;
  *(v5 + 280) = *(v10 - 8);
  *(v5 + 288) = swift_task_alloc();
  v11 = sub_2C49F8();
  *(v5 + 296) = v11;
  *(v5 + 304) = *(v11 - 8);
  *(v5 + 312) = swift_task_alloc();
  sub_2C5C18();
  *(v5 + 320) = sub_2C5C08();
  v13 = sub_2C5BB8();
  *(v5 + 328) = v13;
  *(v5 + 336) = v12;

  return _swift_task_switch(sub_89414, v13, v12);
}

uint64_t sub_89414()
{
  v1 = v0[20];
  sub_6620C(&qword_3BD860);

  sub_2C49E8();
  v0[43] = *(v1 + OBJC_IVAR____TtC11BookStoreUI16JetActionHandler_objectGraph);
  v2 = swift_task_alloc();
  v0[44] = v2;
  *v2 = v0;
  v2[1] = sub_89508;
  v3 = v0[33];
  v4 = v0[30];

  return BaseObjectGraph.inject<A>(_:)(v3, v4, v4);
}

uint64_t sub_89508()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 336);
  v4 = *(v2 + 328);
  if (v0)
  {
    v5 = sub_89EEC;
  }

  else
  {
    v5 = sub_89644;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_89644()
{
  v1 = *(v0 + 360);
  (*(*(v0 + 248) + 16))(*(v0 + 256), *(v0 + 264), *(v0 + 240));
  sub_2C5808();
  sub_8A818();
  sub_2C49B8();
  if (v1)
  {
    v2 = *(v0 + 312);
    v3 = *(v0 + 296);
    v4 = *(v0 + 304);
    v5 = *(v0 + 264);
    v6 = *(v0 + 240);
    v7 = *(v0 + 248);

    (*(v7 + 8))(v5, v6);
    (*(v4 + 8))(v2, v3);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 280);
    v11 = *(v0 + 288);
    v12 = *(v0 + 272);
    v21 = *(v0 + 417);
    v13 = *(v0 + 144);
    (*(*(v0 + 248) + 8))(*(v0 + 264), *(v0 + 240));

    sub_2C1388();
    (*(v10 + 8))(v11, v12);
    v14 = type metadata accessor for NavigationProvider();
    v15 = swift_allocObject();
    *(v0 + 368) = v15;
    swift_unknownObjectWeakInit();
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    sub_6620C(&qword_3BC330);
    sub_2C4968();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2E4110;
    sub_2BF028();
    *(v0 + 120) = v13;
    v17 = v13;
    sub_2C4958();
    sub_6620C(&qword_3BCE30);
    *(v0 + 80) = v14;
    *(v0 + 88) = &protocol witness table for NavigationProvider;
    *(v0 + 56) = v15;

    sub_2C4958();
    *(v0 + 416) = v21;
    sub_2C4958();
    *(v0 + 128) = v16;
    sub_6620C(&unk_3BD220);
    sub_8A870();
    *(v0 + 376) = sub_2C4DF8();

    v18 = swift_task_alloc();
    *(v0 + 384) = v18;
    *v18 = v0;
    v18[1] = sub_89A54;
    v19 = *(v0 + 232);
    v20 = *(v0 + 216);

    return BaseObjectGraph.inject<A>(_:)(v19, v20, v20);
  }
}
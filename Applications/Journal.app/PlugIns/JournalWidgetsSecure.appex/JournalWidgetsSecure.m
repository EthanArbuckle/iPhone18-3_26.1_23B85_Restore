uint64_t sub_100002370()
{
  v0 = sub_1000DAFF4();
  sub_100007EF4(v0, qword_10011F978);
  v1 = sub_100007EBC(v0, qword_10011F978);
  if (qword_10011FA68 != -1)
  {
    swift_once();
  }

  v2 = sub_100007EBC(v0, qword_1001270F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100002438()
{
  if (qword_10011FBA0 != -1)
  {
    swift_once();
  }

  v1 = qword_100127358;
  qword_100126ED0 = qword_100127358;

  return v1;
}

void sub_10000249C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v132 = a3;
  v7 = sub_100007BC0(&qword_10011FD58);
  __chkstk_darwin(v7 - 8);
  v122 = v112 - v8;
  v9 = sub_100007BC0(&qword_10011FD48);
  __chkstk_darwin(v9 - 8);
  v121 = v112 - v10;
  v11 = sub_100007BC0(&qword_10011FD50);
  __chkstk_darwin(v11 - 8);
  v131 = v112 - v12;
  v13 = sub_100007BC0(&qword_10011FD38);
  __chkstk_darwin(v13 - 8);
  v115 = v112 - v14;
  v15 = sub_100007BC0(&qword_10011FDF8);
  __chkstk_darwin(v15 - 8);
  v118 = v112 - v16;
  v120 = sub_1000DA854();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v114 = v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100007BC0(&qword_10011FD30);
  __chkstk_darwin(v18 - 8);
  v117 = v112 - v19;
  v20 = sub_100007BC0(&qword_10011FE00);
  __chkstk_darwin(v20 - 8);
  v128 = v112 - v21;
  v22 = sub_1000DAA74();
  v129 = *(v22 - 8);
  v130 = v22;
  __chkstk_darwin(v22);
  v116 = v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100007BC0(&qword_10011FD40);
  __chkstk_darwin(v24 - 8);
  v126 = v112 - v25;
  v127 = sub_1000DA604();
  v125 = *(v127 - 8);
  __chkstk_darwin(v127);
  v124 = v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000DBB34();
  __chkstk_darwin(v27 - 8);
  v28 = sub_1000DA484();
  v123.i64[0] = *(v28 - 8);
  v29 = __chkstk_darwin(v28);
  v31 = v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = v112 - v32;
  v34 = sub_100007BC0(&qword_10011FD60);
  __chkstk_darwin(v34 - 8);
  v36 = v112 - v35;
  sub_1000DAB94();
  sub_100006814(&qword_10011FCC8, &type metadata accessor for MergeableTextAttributeScope);
  v37 = a4;
  sub_1000DBAF4();
  if (!*(a1 + 16) || (v38 = sub_100064A78(NSFontAttributeName), (v39 & 1) == 0) || (sub_10000800C(*(a1 + 56) + 32 * v38, v135), sub_100008068(0, &qword_10011FD18), (swift_dynamicCast() & 1) == 0))
  {
LABEL_8:
    v48 = v37;
    if (!*(a1 + 16))
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v113 = a2;
  v40 = *&v134[0];
  v41 = [*&v134[0] fontDescriptor];
  v42 = [v41 symbolicTraits];

  if ((v42 & 3) == 0)
  {

    a2 = v113;
    goto LABEL_8;
  }

  v112[1] = swift_getKeyPath();
  v43 = v40;
  v44 = [v43 fontDescriptor];
  v45 = [v44 symbolicTraits];

  sub_1000501D8(v45);
  v46 = v123.i64[0];
  (*(v123.i64[0] + 16))(v31, v33, v28);
  sub_1000DBB24();
  sub_1000DA494();

  (*(v46 + 8))(v33, v28);
  v47 = sub_1000DA4B4();
  (*(*(v47 - 8) + 56))(v36, 0, 1, v47);
  sub_100007BC0(&qword_10011FD68);
  sub_100006814(&qword_10011FD70, &type metadata accessor for MergeableTextAttributeScope.FontAttribute);
  v48 = v37;
  sub_1000DBAE4();

  a2 = v113;
  if (!*(a1 + 16))
  {
    goto LABEL_13;
  }

LABEL_9:
  v49 = sub_100064A78(NSUnderlineStyleAttributeName);
  if (v50)
  {
    sub_10000800C(*(a1 + 56) + 32 * v49, v135);
    if (swift_dynamicCast())
    {
      v51 = *&v134[0];
      if (*&v134[0])
      {
        swift_getKeyPath();
        *&v135[0] = v51;
        BYTE8(v135[0]) = 0;
        sub_100007BC0(&qword_10011FD68);
        sub_100006814(&qword_10011FD88, &type metadata accessor for MergeableTextAttributeScope.UnderlineAttribute);
        sub_1000DBAE4();
      }
    }
  }

LABEL_13:
  if (*(a1 + 16))
  {
    v52 = sub_100064A78(NSStrikethroughStyleAttributeName);
    if (v53)
    {
      sub_10000800C(*(a1 + 56) + 32 * v52, v135);
      if (swift_dynamicCast())
      {
        v54 = *&v134[0];
        if (*&v134[0])
        {
          swift_getKeyPath();
          *&v135[0] = v54;
          BYTE8(v135[0]) = 0;
          sub_100007BC0(&qword_10011FD68);
          sub_100006814(&qword_10011FD90, &type metadata accessor for MergeableTextAttributeScope.StrikethroughAttribute);
          sub_1000DBAE4();
        }
      }
    }
  }

  if (*(a1 + 16))
  {
    v55 = sub_100064A78(NSParagraphStyleAttributeName);
    if (v56)
    {
      sub_10000800C(*(a1 + 56) + 32 * v55, v135);
      sub_100008068(0, &qword_10011FE18);
      if (swift_dynamicCast())
      {
        v57 = a2;
        v58 = *&v134[0];
        [*&v134[0] firstLineHeadIndent];
        *v60.i64 = *v59.i64 - trunc(*v59.i64);
        v61.f64[0] = NAN;
        v61.f64[1] = NAN;
        v123 = vnegq_f64(v61);
        v62 = *vbslq_s8(v123, v60, v59).i64 + -0.1;
        [v58 headIndent];
        if (fabs(v62) < 0.01)
        {
          *v64.i64 = *v63.i64 - trunc(*v63.i64);
          if (fabs(*vbslq_s8(v123, v64, v63).i64 + -0.1) < 0.01)
          {
            swift_getKeyPath();
            LOBYTE(v135[0]) = 1;
            sub_100007BC0(&qword_10011FD68);
            sub_100006814(&qword_10011FD80, &type metadata accessor for MergeableTextAttributeScope.BlockQuoteAttribute);
            sub_1000DBAE4();
          }
        }

        v65 = [v58 textLists];
        sub_100008068(0, &qword_10011FDD8);
        v66 = sub_1000DC134();

        if (v66 >> 62)
        {
          v111 = sub_1000DCB14();

          if (!v111)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (!v67)
          {
LABEL_27:
            a2 = v57;
            if ([v58 baseWritingDirection] != -1)
            {
              v74 = [v58 baseWritingDirection];
              v75 = v128;
              sub_10004F6EC(v74, v128);
              v77 = v129;
              v76 = v130;
              if ((*(v129 + 48))(v75, 1, v130) == 1)
              {
                sub_1000080B0(v75, &qword_10011FE00);
              }

              else
              {
                v78 = v116;
                (*(v77 + 32))(v116, v75, v76);
                swift_getKeyPath();
                v79 = v117;
                (*(v77 + 16))(v117, v78, v76);
                v80 = sub_100007BC0(&qword_10011FDD0);
                swift_storeEnumTagMultiPayload();
                (*(*(v80 - 8) + 56))(v79, 0, 1, v80);
                sub_100007BC0(&qword_10011FD68);
                sub_100006814(&qword_10011FDC8, &type metadata accessor for MergeableTextAttributeScope.WritingDirectionAttribute);
                a2 = v57;
                sub_1000DBAE4();
                (*(v77 + 8))(v78, v76);
              }
            }

            if ([v58 alignment] == 4)
            {
            }

            else
            {
              v81 = [v58 alignment];
              v82 = v118;
              sub_10004F9BC(v81, v118);
              v83 = v119;
              v84 = v120;
              if ((*(v119 + 48))(v82, 1, v120) == 1)
              {

                sub_1000080B0(v82, &qword_10011FDF8);
              }

              else
              {
                v85 = v114;
                (*(v83 + 32))(v114, v82, v84);
                swift_getKeyPath();
                v86 = v115;
                (*(v83 + 16))(v115, v85, v84);
                v87 = sub_100007BC0(&qword_10011FDC0);
                swift_storeEnumTagMultiPayload();
                (*(*(v87 - 8) + 56))(v86, 0, 1, v87);
                sub_100007BC0(&qword_10011FD68);
                sub_100006814(&qword_10011FDB8, &type metadata accessor for MergeableTextAttributeScope.AlignmentAttribute);
                a2 = v57;
                sub_1000DBAE4();

                (*(v83 + 8))(v85, v84);
              }
            }

            goto LABEL_36;
          }
        }

        v68 = [v58 textLists];
        v69 = sub_1000DC134();

        v70 = v124;
        sub_10004F310(v69, v124);
        swift_getKeyPath();
        v72 = v125;
        v71 = v126;
        v73 = v127;
        (*(v125 + 16))(v126, v70, v127);
        (*(v72 + 56))(v71, 0, 1, v73);
        sub_100007BC0(&qword_10011FD68);
        sub_100006814(&qword_10011FDB0, &type metadata accessor for MergeableTextAttributeScope.TextListsAttribute);
        sub_1000DBAE4();
        (*(v72 + 8))(v70, v73);
        goto LABEL_27;
      }
    }
  }

LABEL_36:
  if (!*(a1 + 16) || (v88 = sub_100064A78(NSParagraphAttachmentAttributeName), (v89 & 1) == 0) || (sub_10000800C(*(a1 + 56) + 32 * v88, v135), sub_100008068(0, &qword_10011FDE8), (swift_dynamicCast() & 1) == 0))
  {
LABEL_42:
    if (!*(a1 + 16))
    {
      goto LABEL_50;
    }

    goto LABEL_43;
  }

  v90 = *&v134[0];
  v91 = [*&v134[0] textAttachment];
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v91)
  {
    swift_getKeyPath();
    v92 = a2;
    v93 = v91;
    v94 = v131;
    sub_1000DAC04();
    v95 = sub_1000DAC24();
    (*(*(v95 - 8) + 56))(v94, 0, 1, v95);
    sub_100007BC0(&qword_10011FD68);
    sub_100006814(&qword_10011FD98, &type metadata accessor for MergeableTextAttributeScope.AssetTextAttachmentAttribute);
    sub_1000DBAE4();

    a2 = v92;
    goto LABEL_42;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_50;
  }

LABEL_43:
  v96 = sub_100064A78(NSAttachmentAttributeName);
  if (v97)
  {
    sub_10000800C(*(a1 + 56) + 32 * v96, v134);
    sub_100007EAC(v134, v135);
    sub_10000800C(v135, v134);
    sub_100007BC0(&qword_10011FE08);
    if (swift_dynamicCast())
    {
      v98 = v133;
      swift_getKeyPath();
      v99 = a2;
      v100 = v98;
      v101 = v131;
      sub_1000DAC04();
      v102 = sub_1000DAC24();
      (*(*(v102 - 8) + 56))(v101, 0, 1, v102);
      sub_100007BC0(&qword_10011FD68);
      v103 = &qword_10011FD98;
      v104 = &type metadata accessor for MergeableTextAttributeScope.AssetTextAttachmentAttribute;
    }

    else
    {
      sub_10000800C(v135, v134);
      sub_100007BC0(&qword_10011FE10);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_49:
        sub_100007FC0(v135);
        goto LABEL_50;
      }

      v105 = v133;
      swift_getKeyPath();
      v99 = a2;
      v100 = v105;
      v106 = v121;
      sub_1000DACE4();
      v107 = sub_1000DAD04();
      (*(*(v107 - 8) + 56))(v106, 0, 1, v107);
      sub_100007BC0(&qword_10011FD68);
      v103 = &unk_10011FDA0;
      v104 = &type metadata accessor for MergeableTextAttributeScope.FollowUpPromptAttachmentAttribute;
    }

    sub_100006814(v103, v104);
    a2 = v99;
    sub_1000DBAE4();

    goto LABEL_49;
  }

LABEL_50:
  if (!*(a1 + 16) || (v108 = sub_100064A78(NSForegroundColorAttributeName), (v109 & 1) == 0))
  {

    goto LABEL_56;
  }

  sub_10000800C(*(a1 + 56) + 32 * v108, v135);

  sub_100008068(0, &qword_10011FD20);
  if (swift_dynamicCast())
  {
    v110 = *&v134[0];
    if (sub_100003D98(*&v134[0], v48, v132))
    {
      swift_getKeyPath();
      sub_1000DA4C4();
      sub_100007BC0(&qword_10011FD68);
      sub_100006814(&qword_10011FD78, &type metadata accessor for MergeableTextAttributeScope.ColorAttribute);
      sub_1000DBAE4();

LABEL_56:
      sub_100007FC0(v132);
      return;
    }

    sub_100007FC0(v132);
  }

  else
  {
    sub_100007FC0(v132);
  }
}

BOOL sub_100003D98(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getKeyPath();
  sub_100007BC0(&qword_10011FD68);
  sub_100006814(&qword_10011FD80, &type metadata accessor for MergeableTextAttributeScope.BlockQuoteAttribute);
  sub_1000DBAD4();

  if (v8 == 2 || (v8 & 1) == 0)
  {
    sub_100007E68(a3, a3[3]);
    v4 = sub_1000DBB74();
  }

  else
  {
    if (qword_10011F990 != -1)
    {
      swift_once();
    }

    v4 = qword_100126ED0;
  }

  v5 = v4;
  sub_100008068(0, &qword_10011FD20);
  v6 = sub_1000DC764();

  return (v6 & 1) == 0;
}

void sub_100003F28(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t))
{
  a4(0);
  v6 = __chkstk_darwin();
  a5(v6);
  __break(1u);
}

uint64_t sub_100003FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  __chkstk_darwin();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_10000408C(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_100007BC0(&qword_10011FD30);
  __chkstk_darwin(v5 - 8);
  v191 = &v163[-v6];
  v7 = sub_100007BC0(&qword_10011FD38);
  __chkstk_darwin(v7 - 8);
  v175 = &v163[-v8];
  v170 = sub_1000DA5A4();
  v169 = *(v170 - 8);
  __chkstk_darwin(v170);
  v168 = &v163[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_100007BC0(&qword_10011FD40);
  __chkstk_darwin(v10 - 8);
  v173 = &v163[-v11];
  v178 = sub_1000DA604();
  v177 = *(v178 - 8);
  __chkstk_darwin(v178);
  v174 = &v163[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_100007BC0(&qword_10011FD48);
  __chkstk_darwin(v13 - 8);
  v190 = &v163[-v14];
  v15 = sub_1000DAD04();
  v16 = *(v15 - 8);
  v183 = v15;
  v184 = v16;
  v17 = __chkstk_darwin(v15);
  v172 = &v163[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v187 = &v163[-v19];
  v167 = sub_1000DA0E4();
  v166 = *(v167 - 8);
  __chkstk_darwin(v167);
  v165 = &v163[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_100007BC0(&qword_10011FD50);
  __chkstk_darwin(v21 - 8);
  v180 = &v163[-v22];
  v23 = sub_1000DAC24();
  v188 = *(v23 - 8);
  v189 = v23;
  v24 = __chkstk_darwin(v23);
  v171 = &v163[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v182 = &v163[-v26];
  v27 = sub_100007BC0(&qword_10011FD58);
  __chkstk_darwin(v27 - 8);
  v185 = &v163[-v28];
  v29 = sub_1000DA484();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v33 = &v163[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v31);
  v35 = &v163[-v34];
  v36 = sub_100007BC0(&qword_10011FD60);
  __chkstk_darwin(v36 - 8);
  v38 = &v163[-v37];
  v179 = sub_100063FE4(&_swiftEmptyArrayStorage);
  v39 = a2[3];
  v192 = a2;
  sub_100007E68(a2, v39);
  v40 = sub_1000DBB64();
  swift_getKeyPath();
  v41 = sub_100007BC0(&qword_10011FD68);
  sub_100006814(&qword_10011FD70, &type metadata accessor for MergeableTextAttributeScope.FontAttribute);
  v186 = v41;
  sub_1000DBAD4();

  v42 = sub_1000DA4B4();
  v43 = *(v42 - 8);
  if ((*(v43 + 48))(v38, 1, v42) == 1)
  {
    sub_1000080B0(v38, &qword_10011FD60);
    v44 = v191;
  }

  else
  {
    sub_1000DA4A4();
    (*(v43 + 8))(v38, v42);
    sub_1000DA474();
    sub_100006814(&qword_10011FDF0, &type metadata accessor for MergeableFont.Traits);
    v45 = sub_1000DC874();
    v46 = *(v30 + 8);
    v46(v33, v29);
    v176 = v3;
    sub_1000DA464();
    v47 = sub_1000DC874();
    v46(v33, v29);
    v46(v35, v29);
    if (v47)
    {
      v48 = v45 & 1 | 2;
    }

    else
    {
      v48 = v45 & 1;
    }

    v44 = v191;
    v3 = v176;
    v49 = sub_100062830(v48);

    v40 = v49;
  }

  v196 = sub_100008068(0, &qword_10011FD18);
  *&v195 = v40;
  sub_100007EAC(&v195, &v194);
  v181 = v40;
  v50 = v179;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v193 = v50;
  sub_1000D0B94(&v194, NSFontAttributeName, isUniquelyReferenced_nonNull_native);
  v52 = v193;
  swift_getKeyPath();
  sub_100006814(&qword_10011FD78, &type metadata accessor for MergeableTextAttributeScope.ColorAttribute);
  v53 = v185;
  sub_1000DBAD4();

  v54 = sub_1000DA4D4();
  v55 = *(v54 - 8);
  v56 = (*(v55 + 48))(v53, 1, v54);
  v57 = v187;
  if (v56 == 1)
  {
    sub_1000080B0(v53, &qword_10011FD58);
  }

  else
  {
    v58 = sub_10004FCBC();
    (*(v55 + 8))(v53, v54);
    if (v58)
    {
      goto LABEL_17;
    }
  }

  swift_getKeyPath();
  sub_100006814(&qword_10011FD80, &type metadata accessor for MergeableTextAttributeScope.BlockQuoteAttribute);
  sub_1000DBAD4();

  if (v195 == 2 || (v195 & 1) == 0)
  {
    sub_100007E68(v192, v192[3]);
    v59 = sub_1000DBB74();
  }

  else
  {
    if (qword_10011F990 != -1)
    {
      swift_once();
    }

    v59 = qword_100126ED0;
  }

  v58 = v59;
LABEL_17:
  v196 = sub_100008068(0, &qword_10011FD20);
  *&v195 = v58;
  sub_100007EAC(&v195, &v194);
  v60 = v58;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v193 = v52;
  sub_1000D0B94(&v194, NSForegroundColorAttributeName, v61);
  v62 = v193;
  swift_getKeyPath();
  sub_100006814(&qword_10011FD88, &type metadata accessor for MergeableTextAttributeScope.UnderlineAttribute);
  sub_1000DBAD4();

  if (BYTE8(v195))
  {
    v63 = v190;
  }

  else
  {
    v63 = v190;
    if (v195)
    {
      v196 = &type metadata for Int;
      sub_100007EAC(&v195, &v194);
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v193 = v62;
      sub_1000D0B94(&v194, NSUnderlineStyleAttributeName, v64);
      v62 = v193;
    }
  }

  v65 = v44;
  swift_getKeyPath();
  sub_100006814(&qword_10011FD90, &type metadata accessor for MergeableTextAttributeScope.StrikethroughAttribute);
  sub_1000DBAD4();

  if (BYTE8(v195))
  {
    v66 = v60;
  }

  else
  {
    v66 = v60;
    if (v195)
    {
      v67 = v57;
      v196 = &type metadata for Int;
      sub_100007EAC(&v195, &v194);
      v68 = swift_isUniquelyReferenced_nonNull_native();
      v193 = v62;
      sub_1000D0B94(&v194, NSStrikethroughStyleAttributeName, v68);
      v62 = v193;
      goto LABEL_26;
    }
  }

  v67 = v57;
LABEL_26:
  swift_getKeyPath();
  sub_100006814(&qword_10011FD98, &type metadata accessor for MergeableTextAttributeScope.AssetTextAttachmentAttribute);
  v69 = v180;
  sub_1000DBAD4();

  v71 = v188;
  v70 = v189;
  if ((*(v188 + 48))(v69, 1, v189) == 1)
  {
    sub_1000080B0(v69, &qword_10011FD50);
    v72 = v67;
LABEL_37:
    v100 = v66;
    v101 = v65;
    v89 = v183;
    goto LABEL_38;
  }

  v185 = v62;
  (*(v71 + 32))(v182, v69, v70);
  sub_100007E68(v192, v192[3]);
  v73 = sub_1000DBB54();
  if (v73)
  {
    v74 = v73;
    ObjectType = swift_getObjectType();
    v76 = sub_1000DBB94();
    v72 = v67;
    if (v77)
    {
      v196 = ObjectType;
      *&v195 = v74;
      sub_100007EAC(&v195, &v194);
      v78 = v74;
      v79 = v185;
      v80 = swift_isUniquelyReferenced_nonNull_native();
      v193 = v79;
      sub_1000D0B94(&v194, NSAttachmentAttributeName, v80);
    }

    else
    {
      v102 = [objc_allocWithZone(NSTextParagraphAnchoredAttachment) initWithTextAttachment:v74 position:v76];
      v103 = NSParagraphAttachmentAttributeName;
      v196 = sub_100008068(0, &qword_10011FDE8);
      *&v195 = v102;
      sub_100007EAC(&v195, &v194);
      v104 = v102;
      v105 = v185;
      v106 = swift_isUniquelyReferenced_nonNull_native();
      v193 = v105;
      sub_1000D0B94(&v194, v103, v106);
    }

    (*(v188 + 8))(v182, v189);
    v62 = v193;
    v63 = v190;
    goto LABEL_37;
  }

  v180 = v66;
  v72 = v67;
  if (qword_10011F970 != -1)
  {
    swift_once();
  }

  v81 = sub_1000DAFF4();
  sub_100007EBC(v81, qword_10011F978);
  v82 = v188;
  v83 = v189;
  v84 = v171;
  v85 = v182;
  (*(v188 + 16))(v171, v182, v189);
  v86 = sub_1000DAFD4();
  v87 = sub_1000DC4C4();
  v88 = os_log_type_enabled(v86, v87);
  v89 = v183;
  if (v88)
  {
    v90 = swift_slowAlloc();
    v179 = swift_slowAlloc();
    *&v195 = v179;
    *v90 = 136315138;
    v91 = v165;
    v164 = v87;
    sub_1000DAC14();
    sub_100006814(&qword_10011FDE0, &type metadata accessor for UUID);
    v92 = v167;
    v93 = sub_1000DCC44();
    v95 = v94;
    (*(v166 + 8))(v91, v92);
    v176 = v3;
    v96 = *(v82 + 8);
    v96(v84, v83);
    v97 = sub_10001A58C(v93, v95, &v195);
    v98 = v180;
    v89 = v183;

    *(v90 + 4) = v97;
    _os_log_impl(&_mh_execute_header, v86, v164, "Attachment not found for ID: %s", v90, 0xCu);
    sub_100007FC0(v179);

    v99 = v83;
    v100 = v98;
    v96(v182, v99);
    v63 = v190;
    v101 = v191;
    v3 = v176;
    v72 = v187;
    v62 = v185;
  }

  else
  {

    v131 = *(v82 + 8);
    v131(v84, v83);
    v131(v85, v83);
    v62 = v185;
    v63 = v190;
    v101 = v191;
    v100 = v180;
  }

LABEL_38:
  swift_getKeyPath();
  sub_100006814(&qword_10011FDA0, &type metadata accessor for MergeableTextAttributeScope.FollowUpPromptAttachmentAttribute);
  sub_1000DBAD4();

  v107 = v184;
  if ((*(v184 + 48))(v63, 1, v89) == 1)
  {
    sub_1000080B0(v63, &qword_10011FD48);
  }

  else
  {
    v185 = v62;
    (*(v107 + 32))(v72, v63, v89);
    sub_100007E68(v192, v192[3]);
    v108 = sub_1000DBB84();
    if (v108)
    {
      v109 = v108;
      v196 = swift_getObjectType();
      *&v195 = v109;
      sub_100007EAC(&v195, &v194);
      v110 = v109;
      v111 = v185;
      v112 = swift_isUniquelyReferenced_nonNull_native();
      v193 = v111;
      sub_1000D0B94(&v194, NSAttachmentAttributeName, v112);

      (*(v107 + 8))(v72, v89);
      v62 = v193;
    }

    else
    {
      v113 = v100;
      if (qword_10011F970 != -1)
      {
        swift_once();
      }

      v114 = sub_1000DAFF4();
      sub_100007EBC(v114, qword_10011F978);
      v115 = v184;
      v116 = v172;
      v117 = v187;
      (*(v184 + 16))(v172, v187, v89);
      v118 = sub_1000DAFD4();
      v119 = sub_1000DC4C4();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        *&v195 = v121;
        *v120 = 136315138;
        v122 = sub_1000DACF4();
        v123 = v89;
        v124 = v113;
        v126 = v125;
        v176 = v3;
        v127 = *(v115 + 8);
        v128 = v116;
        v129 = v123;
        v127(v128, v123);
        v130 = sub_10001A58C(v122, v126, &v195);

        *(v120 + 4) = v130;
        _os_log_impl(&_mh_execute_header, v118, v119, "Attachment not found for prompt: %s", v120, 0xCu);
        sub_100007FC0(v121);

        v127(v187, v129);
        v100 = v124;
        v101 = v191;
        v3 = v176;
        v62 = v185;
      }

      else
      {

        v132 = *(v115 + 8);
        v132(v116, v89);
        v132(v117, v89);
        v101 = v191;
        v62 = v185;
        v100 = v113;
      }
    }
  }

  v133 = sub_100008068(0, &qword_10011FDA8);
  v134 = sub_1000A7520();
  if (sub_100005BE8())
  {
    swift_getKeyPath();
    sub_100006814(&qword_10011FD80, &type metadata accessor for MergeableTextAttributeScope.BlockQuoteAttribute);
    sub_1000DBAD4();

    if (v195 != 2 && (v195 & 1) != 0)
    {
      v135 = [objc_allocWithZone(NSMutableParagraphStyle) init];
      [v135 setParagraphStyle:v134];
      [v135 setFirstLineHeadIndent:14.1];
      [v135 setHeadIndent:14.1];

      v134 = v135;
    }

    swift_getKeyPath();
    sub_100006814(&qword_10011FDB0, &type metadata accessor for MergeableTextAttributeScope.TextListsAttribute);
    v136 = v173;
    sub_1000DBAD4();
    v137 = v136;

    v138 = v177;
    v139 = v136;
    v140 = v178;
    if ((*(v177 + 48))(v139, 1, v178) == 1)
    {
      sub_1000080B0(v137, &qword_10011FD40);
    }

    else
    {
      v190 = v133;
      v180 = v100;
      (*(v138 + 32))(v174, v137, v140);
      v141 = sub_1000DA5F4();
      v142 = *(v141 + 16);
      if (v142)
      {
        v189 = v134;
        v185 = v62;
        v176 = v3;
        *&v195 = &_swiftEmptyArrayStorage;
        sub_1000DCAB4();
        v192 = *(v169 + 16);
        v143 = *(v169 + 80);
        v188 = v141;
        v144 = v141 + ((v143 + 32) & ~v143);
        v145 = *(v169 + 72);
        v146 = (v169 + 8);
        v147 = v170;
        v148 = v168;
        do
        {
          (v192)(v148, v144, v147);
          sub_1000DA574();
          v149 = sub_1000DBF04();

          [objc_allocWithZone(NSTextList) initWithMarkerFormat:v149 options:0 startingItemNumber:sub_1000DA594()];

          (*v146)(v148, v147);
          sub_1000DCA94();
          sub_1000DCAC4();
          sub_1000DCAD4();
          sub_1000DCAA4();
          v144 += v145;
          --v142;
        }

        while (v142);

        v101 = v191;
        v62 = v185;
        v134 = v189;
      }

      else
      {
      }

      sub_100008068(0, &qword_10011FDD8);
      isa = sub_1000DC124().super.isa;

      [v134 setTextLists:isa];

      (*(v177 + 8))(v174, v178);
      v100 = v180;
      v133 = v190;
    }

    swift_getKeyPath();
    sub_100006814(&qword_10011FDB8, &type metadata accessor for MergeableTextAttributeScope.AlignmentAttribute);
    v151 = v175;
    sub_1000DBAD4();

    v152 = sub_100007BC0(&qword_10011FDC0);
    if ((*(*(v152 - 8) + 48))(v151, 1, v152) == 1)
    {
      sub_1000080B0(v151, &qword_10011FD38);
    }

    else
    {
      v153 = sub_1000060FC();
      v155 = v154;
      sub_1000080B0(v151, &qword_10011FDC0);
      if ((v155 & 1) == 0)
      {
        [v134 setAlignment:v153];
      }
    }

    swift_getKeyPath();
    sub_100006814(&qword_10011FDC8, &type metadata accessor for MergeableTextAttributeScope.WritingDirectionAttribute);
    sub_1000DBAD4();

    v156 = sub_100007BC0(&qword_10011FDD0);
    if ((*(*(v156 - 8) + 48))(v101, 1, v156) == 1)
    {
      sub_1000080B0(v101, &qword_10011FD30);
    }

    else
    {
      v157 = sub_100006394();
      v159 = v158;
      sub_1000080B0(v101, &qword_10011FDD0);
      if ((v159 & 1) == 0)
      {
        [v134 setBaseWritingDirection:v157];
      }
    }
  }

  v196 = v133;
  *&v195 = v134;
  sub_100007EAC(&v195, &v194);
  v160 = v134;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v193 = v62;
  sub_1000D0B94(&v194, NSParagraphStyleAttributeName, v161);

  return v193;
}

uint64_t sub_100005BE8()
{
  v0 = sub_100007BC0(&qword_10011FD48);
  __chkstk_darwin(v0 - 8);
  v2 = &v21[-v1];
  v3 = sub_100007BC0(&qword_10011FD38);
  __chkstk_darwin(v3 - 8);
  v5 = &v21[-v4];
  v6 = sub_100007BC0(&qword_10011FD30);
  __chkstk_darwin(v6 - 8);
  v8 = &v21[-v7];
  v9 = sub_100007BC0(&qword_10011FD40);
  __chkstk_darwin(v9 - 8);
  v11 = &v21[-v10];
  swift_getKeyPath();
  sub_100007BC0(&qword_10011FD68);
  sub_100006814(&qword_10011FD80, &type metadata accessor for MergeableTextAttributeScope.BlockQuoteAttribute);
  sub_1000DBAD4();

  if (v21[15] != 2)
  {
    return 1;
  }

  swift_getKeyPath();
  sub_100006814(&qword_10011FDB0, &type metadata accessor for MergeableTextAttributeScope.TextListsAttribute);
  sub_1000DBAD4();

  v12 = sub_1000DA604();
  v13 = 1;
  v14 = (*(*(v12 - 8) + 48))(v11, 1, v12);
  sub_1000080B0(v11, &qword_10011FD40);
  if (v14 == 1)
  {
    swift_getKeyPath();
    sub_100006814(&qword_10011FDC8, &type metadata accessor for MergeableTextAttributeScope.WritingDirectionAttribute);
    sub_1000DBAD4();

    v15 = sub_100007BC0(&qword_10011FDD0);
    v16 = (*(*(v15 - 8) + 48))(v8, 1, v15);
    sub_1000080B0(v8, &qword_10011FD30);
    if (v16 == 1)
    {
      swift_getKeyPath();
      sub_100006814(&qword_10011FDB8, &type metadata accessor for MergeableTextAttributeScope.AlignmentAttribute);
      sub_1000DBAD4();

      v17 = sub_100007BC0(&qword_10011FDC0);
      v18 = (*(*(v17 - 8) + 48))(v5, 1, v17);
      sub_1000080B0(v5, &qword_10011FD38);
      if (v18 == 1)
      {
        swift_getKeyPath();
        sub_100006814(&qword_10011FDA0, &type metadata accessor for MergeableTextAttributeScope.FollowUpPromptAttachmentAttribute);
        sub_1000DBAD4();

        v19 = sub_1000DAD04();
        v13 = (*(*(v19 - 8) + 48))(v2, 1, v19) != 1;
        sub_1000080B0(v2, &qword_10011FD48);
      }
    }
  }

  return v13;
}

uint64_t sub_1000060FC()
{
  v1 = sub_100007BC0(&qword_10011FDC0);
  __chkstk_darwin(v1);
  v3 = &v14 - v2;
  v4 = sub_1000DA854();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  sub_100007F58(v0, v3, &qword_10011FDC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000080B0(v3, &qword_10011FDC0);
    return 0;
  }

  (*(v5 + 32))(v10, v3, v4);
  (*(v5 + 16))(v8, v10, v4);
  v12 = (*(v5 + 88))(v8, v4);
  if (v12 == enum case for MergeableTextAlignment.natural(_:))
  {
    v11 = 4;
LABEL_13:
    (*(v5 + 8))(v10, v4);
    return v11;
  }

  if (v12 == enum case for MergeableTextAlignment.left(_:))
  {
    v11 = 0;
    goto LABEL_13;
  }

  if (v12 == enum case for MergeableTextAlignment.right(_:))
  {
    v11 = 2;
    goto LABEL_13;
  }

  if (v12 == enum case for MergeableTextAlignment.center(_:))
  {
    v11 = 1;
    goto LABEL_13;
  }

  if (v12 == enum case for MergeableTextAlignment.justified(_:))
  {
    v11 = 3;
    goto LABEL_13;
  }

  result = sub_1000DCC64();
  __break(1u);
  return result;
}

uint64_t sub_100006394()
{
  v1 = sub_100007BC0(&qword_10011FDD0);
  __chkstk_darwin(v1);
  v3 = &v14 - v2;
  v4 = sub_1000DAA74();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  sub_100007F58(v0, v3, &qword_10011FDD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000080B0(v3, &qword_10011FDD0);
    return 0;
  }

  (*(v5 + 32))(v10, v3, v4);
  (*(v5 + 16))(v8, v10, v4);
  v12 = (*(v5 + 88))(v8, v4);
  if (v12 == enum case for MergeableWritingDirection.natural(_:))
  {
    v11 = -1;
LABEL_9:
    (*(v5 + 8))(v10, v4);
    return v11;
  }

  if (v12 == enum case for MergeableWritingDirection.leftToRight(_:))
  {
    v11 = 0;
    goto LABEL_9;
  }

  if (v12 == enum case for MergeableWritingDirection.rightToLeft(_:))
  {
    v11 = 1;
    goto LABEL_9;
  }

  result = sub_1000DCC64();
  __break(1u);
  return result;
}

void protocol witness for static AttributeConverter.crAttributes(from:traitCollection:customAttributeProvider:) in conformance MergeableTextAttributeScope(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_100006658(a3, v7);

  sub_10000249C(a1, a2, v7, a4);
}

uint64_t sub_100006658(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t protocol witness for static AttributeConverter.preferredAttributeProvider.getter in conformance MergeableTextAttributeScope()
{
  v0 = type metadata accessor for CustomAttributeProviderConcrete();
  sub_100006814(&qword_10011FC58, type metadata accessor for CustomAttributeProviderConcrete);
  return v0;
}

id sub_100006760()
{
  v0 = [objc_opt_self() labelColor];

  return v0;
}

uint64_t protocol witness for static AttributeConverter.crAttributes(from:traitCollection:customAttributeProvider:) in conformance MergeableTitleAttributeScope()
{
  sub_100006814(&qword_10011FC60, &type metadata accessor for MergeableTitleAttributeScope);

  return sub_1000DBAF4();
}

uint64_t sub_100006814(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_1000068E8(_DWORD *a1, int *a2)
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

_DWORD *sub_100006918@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_100006944@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_100006A44(uint64_t a1, uint64_t a2)
{
  result = sub_1000DA304();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_100006A98(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000DA314();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_100006AF0@<X0>(void *a1@<X8>)
{
  result = sub_1000DA324();
  *a1 = v3;
  return result;
}

uint64_t sub_100006B18(uint64_t a1, id *a2)
{
  result = sub_1000DBF24();
  *a2 = 0;
  return result;
}

uint64_t sub_100006B90(uint64_t a1, id *a2)
{
  v3 = sub_1000DBF34();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100006C10@<X0>(void *a1@<X8>)
{
  sub_1000DBF44();
  v2 = sub_1000DBF04();

  *a1 = v2;
  return result;
}

uint64_t sub_100006C58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000DBF44();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100006C9C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_1000078F0(a1);

  *a2 = v3;
  return result;
}

_DWORD *sub_100006CDC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_100006CF8()
{
  sub_100006814(&qword_1001200C0, type metadata accessor for FileProtectionType);
  sub_100006814(&qword_1001200C8, type metadata accessor for FileProtectionType);

  return sub_1000DCB54();
}

uint64_t sub_100006DB4()
{
  sub_100006814(&qword_10011FF50, type metadata accessor for Key);
  sub_100006814(&qword_10011FF58, type metadata accessor for Key);

  return sub_1000DCB54();
}

uint64_t sub_100006E70()
{
  sub_100006814(&qword_10011FF30, type metadata accessor for MKPointOfInterestCategory);
  sub_100006814(&qword_10011FF38, type metadata accessor for MKPointOfInterestCategory);

  return sub_1000DCB54();
}

uint64_t sub_100006F2C()
{
  sub_100006814(&qword_10011FD00, type metadata accessor for DynamicRange);
  sub_100006814(&qword_10011FD08, type metadata accessor for DynamicRange);

  return sub_1000DCB54();
}

uint64_t sub_100006FE8()
{
  sub_100006814(&qword_10011FF98, type metadata accessor for AttributeName);
  sub_100006814(&qword_10011FFA0, type metadata accessor for AttributeName);

  return sub_1000DCB54();
}

uint64_t sub_1000070A4()
{
  sub_100006814(&qword_10011FF60, type metadata accessor for FeatureKey);
  sub_100006814(&qword_10011FF68, type metadata accessor for FeatureKey);

  return sub_1000DCB54();
}

uint64_t sub_100007160()
{
  sub_100006814(&qword_10011FF88, type metadata accessor for TraitKey);
  sub_100006814(&qword_10011FF90, type metadata accessor for TraitKey);

  return sub_1000DCB54();
}

void *sub_10000721C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

double sub_10000722C@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_100007238()
{
  sub_100006814(&qword_10011FF70, type metadata accessor for Weight);
  sub_100006814(&qword_10011FF78, type metadata accessor for Weight);
  sub_100008950();
  return sub_1000DCB54();
}

uint64_t sub_100007300()
{
  sub_100006814(&qword_100120000, type metadata accessor for SystemDesign);
  sub_100006814(&qword_100120008, type metadata accessor for SystemDesign);

  return sub_1000DCB54();
}

uint64_t sub_1000073BC()
{
  sub_100006814(&qword_100120080, type metadata accessor for NLTagScheme);
  sub_100006814(&qword_100120088, type metadata accessor for NLTagScheme);

  return sub_1000DCB54();
}

uint64_t sub_100007478()
{
  sub_100006814(&qword_100120070, type metadata accessor for NLTag);
  sub_100006814(&qword_100120078, type metadata accessor for NLTag);

  return sub_1000DCB54();
}

uint64_t sub_100007534()
{
  sub_100006814(&qword_10011FF40, type metadata accessor for OptionKey);
  sub_100006814(&qword_10011FF48, type metadata accessor for OptionKey);

  return sub_1000DCB54();
}

uint64_t sub_1000075F0@<X0>(void *a1@<X8>)
{
  v2 = sub_1000DBF04();

  *a1 = v2;
  return result;
}

uint64_t sub_100007638()
{
  sub_100006814(&qword_100120090, type metadata accessor for GEOPOICategory);
  sub_100006814(&qword_100120098, type metadata accessor for GEOPOICategory);

  return sub_1000DCB54();
}

void sub_1000076FC()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_1000DCD54(*&v1);
}

uint64_t sub_100007750()
{
  sub_1000DBF44();
  v0 = sub_1000DC044();

  return v0;
}

uint64_t sub_10000778C()
{
  sub_1000DBF44();
  sub_1000DBFD4();
}

Swift::Int sub_1000077E0()
{
  sub_1000DBF44();
  sub_1000DCD24();
  sub_1000DBFD4();
  v0 = sub_1000DCD74();

  return v0;
}

uint64_t sub_100007868()
{
  v0 = sub_1000DBF44();
  v2 = v1;
  if (v0 == sub_1000DBF44() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1000DCC74();
  }

  return v5 & 1;
}

uint64_t sub_1000078F0(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t _s13JournalShared28MergeableTitleAttributeScopeV0A2UI0E9Converter0A13WidgetsSecureAdEP12nsAttributes4from15traitCollection06customE8ProviderSDySo21NSAttributedStringKeyaypG9Coherence012CRAttributedS0V0L0Vyx_G_So07UITraitO0CAD06CustomeQ0_ptFZTW_0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100007BC0(&qword_10011FD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000DE2C0;
  *(inited + 32) = NSFontAttributeName;
  sub_100007E68(a3, a3[3]);
  v5 = NSFontAttributeName;
  v6 = sub_1000DBB64();
  v7 = sub_100008068(0, &qword_10011FD18);
  *(inited + 40) = v6;
  *(inited + 64) = v7;
  *(inited + 72) = NSForegroundColorAttributeName;
  sub_100007E68(a3, a3[3]);
  v8 = NSForegroundColorAttributeName;
  v9 = sub_1000DBB74();
  *(inited + 104) = sub_100008068(0, &qword_10011FD20);
  *(inited + 80) = v9;
  v10 = sub_100063FE4(inited);
  swift_setDeallocating();
  sub_100007BC0(&qword_10011FD28);
  swift_arrayDestroy();
  return v10;
}

unint64_t sub_100007A8C()
{
  result = qword_10011FC68;
  if (!qword_10011FC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FC68);
  }

  return result;
}

uint64_t sub_100007AE0(__int128 *a1)
{
  v2 = *a1;
  if (sub_1000D930C(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeMetadata2();
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100007B54(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (sub_1000D930C(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeConformance2();
  }

  return v1;
}

uint64_t sub_100007BC0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100007C08(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100007C50()
{
  result = qword_10011FC98;
  if (!qword_10011FC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FC98);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for StreaksWidgetStreak(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void *sub_100007E68(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

_OWORD *sub_100007EAC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100007EBC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100007EF4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100007F58(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100007BC0(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100007FC0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_10000800C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100008068(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1000080B0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100007BC0(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_100008110(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100008124(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100008144(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_100008190(uint64_t a1, int a2)
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

uint64_t sub_1000081B0(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for Coordinate(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Coordinate(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

__n128 sub_10000825C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100008268(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100008288(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_100008950()
{
  result = qword_10011FF80;
  if (!qword_10011FF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FF80);
  }

  return result;
}

void sub_100008EC4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id sub_10000901C()
{
  result = [objc_allocWithZone(type metadata accessor for OperationsManager()) init];
  qword_1001200D0 = result;
  return result;
}

id sub_10000904C()
{
  v1 = &v0[OBJC_IVAR____TtC20JournalWidgetsSecure17OperationsManager_mapTableFileAttachmentsQueue];
  v2 = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
  *v1 = 0;
  *(v1 + 1) = v2;
  v3 = &v0[OBJC_IVAR____TtC20JournalWidgetsSecure17OperationsManager_mapTableAssetMetadataQueue];
  v4 = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
  *v3 = 0;
  *(v3 + 1) = v4;
  v5 = [objc_allocWithZone(NSOperationQueue) init];
  v6 = OBJC_IVAR____TtC20JournalWidgetsSecure17OperationsManager_cacheQueueLowPriority;
  *&v0[OBJC_IVAR____TtC20JournalWidgetsSecure17OperationsManager_cacheQueueLowPriority] = v5;
  v7 = qword_10011FAE8;
  v8 = v5;
  if (v7 != -1)
  {
    swift_once();
  }

  [v8 setUnderlyingQueue:qword_1001271E0];

  v9 = *&v0[v6];
  v10 = sub_1000DBF04();
  [v9 setName:v10];

  [*&v0[v6] setMaxConcurrentOperationCount:6];
  [*&v0[v6] setQualityOfService:9];
  v11 = [objc_allocWithZone(NSOperationQueue) init];
  v12 = OBJC_IVAR____TtC20JournalWidgetsSecure17OperationsManager_cacheQueueRegularPriority;
  *&v0[OBJC_IVAR____TtC20JournalWidgetsSecure17OperationsManager_cacheQueueRegularPriority] = v11;
  v13 = qword_10011FAF0;
  v14 = v11;
  if (v13 != -1)
  {
    swift_once();
  }

  [v14 setUnderlyingQueue:qword_1001271E8];

  v15 = *&v0[v12];
  v16 = sub_1000DBF04();
  [v15 setName:v16];

  [*&v0[v12] setMaxConcurrentOperationCount:6];
  [*&v0[v12] setQualityOfService:-1];
  v17 = [objc_allocWithZone(NSOperationQueue) init];
  v18 = OBJC_IVAR____TtC20JournalWidgetsSecure17OperationsManager_cacheQueueHighPriority;
  *&v0[OBJC_IVAR____TtC20JournalWidgetsSecure17OperationsManager_cacheQueueHighPriority] = v17;
  v19 = qword_10011FAF8;
  v20 = v17;
  if (v19 != -1)
  {
    swift_once();
  }

  [v20 setUnderlyingQueue:qword_1001271F0];

  v21 = *&v0[v18];
  v22 = sub_1000DBF04();
  [v21 setName:v22];

  [*&v0[v18] setMaxConcurrentOperationCount:2];
  [*&v0[v18] setQualityOfService:33];
  v23 = [objc_allocWithZone(NSOperationQueue) init];
  v24 = OBJC_IVAR____TtC20JournalWidgetsSecure17OperationsManager_fileAttachmentsQueue;
  *&v0[OBJC_IVAR____TtC20JournalWidgetsSecure17OperationsManager_fileAttachmentsQueue] = v23;
  v25 = qword_10011FA08;
  v26 = v23;
  if (v25 != -1)
  {
    swift_once();
  }

  [v26 setUnderlyingQueue:qword_100126F68];

  v27 = *&v0[v24];
  v28 = sub_1000DBF04();
  [v27 setName:v28];

  [*&v0[v24] setMaxConcurrentOperationCount:2];
  [*&v0[v24] setQualityOfService:-1];
  v29 = [objc_allocWithZone(NSOperationQueue) init];
  v30 = OBJC_IVAR____TtC20JournalWidgetsSecure17OperationsManager_assetMetadataQueue;
  *&v0[OBJC_IVAR____TtC20JournalWidgetsSecure17OperationsManager_assetMetadataQueue] = v29;
  v31 = qword_10011FA10;
  v32 = v29;
  if (v31 != -1)
  {
    swift_once();
  }

  [v32 setUnderlyingQueue:qword_100126F70];

  v33 = *&v0[v30];
  v34 = sub_1000DBF04();
  [v33 setName:v34];

  [*&v0[v30] setMaxConcurrentOperationCount:2];
  [*&v0[v30] setQualityOfService:-1];
  v35 = [objc_allocWithZone(NSOperationQueue) init];
  v36 = OBJC_IVAR____TtC20JournalWidgetsSecure17OperationsManager_batchRecordDownloadQueue;
  *&v0[OBJC_IVAR____TtC20JournalWidgetsSecure17OperationsManager_batchRecordDownloadQueue] = v35;
  v37 = qword_10011FA18;
  v38 = v35;
  if (v37 != -1)
  {
    swift_once();
  }

  [v38 setUnderlyingQueue:qword_100126F78];

  v39 = *&v0[v36];
  v40 = sub_1000DBF04();
  [v39 setName:v40];

  [*&v0[v36] setMaxConcurrentOperationCount:1];
  [*&v0[v36] setQualityOfService:9];
  v42.receiver = v0;
  v42.super_class = type metadata accessor for OperationsManager();
  return objc_msgSendSuper2(&v42, "init");
}

id sub_100009640()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OperationsManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_10000974C()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100007BC0(&qword_100120140);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

id sub_10000977C(uint64_t a1)
{
  if (qword_10011F998 != -1)
  {
    swift_once();
  }

  v2 = qword_1001200D0;
  sub_100008068(0, qword_100120158);
  if (qword_10011FAE8 != -1)
  {
    swift_once();
  }

  if (sub_1000DC764())
  {
    v3 = &OBJC_IVAR____TtC20JournalWidgetsSecure17OperationsManager_cacheQueueLowPriority;
  }

  else
  {
    if (qword_10011FAF8 != -1)
    {
      swift_once();
    }

    v4 = sub_1000DC764();
    v3 = &OBJC_IVAR____TtC20JournalWidgetsSecure17OperationsManager_cacheQueueRegularPriority;
    if (v4)
    {
      v3 = &OBJC_IVAR____TtC20JournalWidgetsSecure17OperationsManager_cacheQueueHighPriority;
    }
  }

  v5 = *(v2 + *v3);

  return [v5 addOperation:a1];
}

void *sub_1000098C8(uint64_t a1, uint64_t a2)
{
  if (qword_10011F998 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v4 = qword_1001200D0;
    sub_100008068(0, qword_100120158);
    if (qword_10011FAE8 != -1)
    {
      swift_once();
    }

    if (sub_1000DC764())
    {
      v5 = &OBJC_IVAR____TtC20JournalWidgetsSecure17OperationsManager_cacheQueueLowPriority;
    }

    else
    {
      if (qword_10011FAF8 != -1)
      {
        swift_once();
      }

      v6 = sub_1000DC764();
      v5 = &OBJC_IVAR____TtC20JournalWidgetsSecure17OperationsManager_cacheQueueRegularPriority;
      if (v6)
      {
        v5 = &OBJC_IVAR____TtC20JournalWidgetsSecure17OperationsManager_cacheQueueHighPriority;
      }
    }

    v7 = [*(v4 + *v5) operations];
    sub_100008068(0, &qword_100120150);
    v8 = sub_1000DC134();

    if (v8 >> 62)
    {
      break;
    }

    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_32;
    }

LABEL_12:
    v10 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = sub_1000DCA24();
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      type metadata accessor for ThumbnailCacheOperation();
      v14 = swift_dynamicCastClass();
      if (v14)
      {
        v15 = v14;
        v16 = *(v14 + qword_100124898) == a1 && *(v14 + qword_100124898 + 8) == a2;
        if (v16 || (sub_1000DCC74()) && ![v15 isCancelled])
        {

          return v15;
        }
      }

      ++v10;
      if (v13 == v9)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
  }

  v9 = sub_1000DCB14();
  if (v9)
  {
    goto LABEL_12;
  }

LABEL_32:

  return 0;
}

void sub_100009B68(uint64_t a1, uint64_t a2)
{
  if (qword_10011F998 != -1)
  {
    swift_once();
  }

  v4 = qword_1001200D0;
  sub_100007BC0(&qword_100120148);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000DFDA0;
  v6 = *(v4 + OBJC_IVAR____TtC20JournalWidgetsSecure17OperationsManager_cacheQueueHighPriority);
  *(inited + 32) = v6;
  v7 = *(v4 + OBJC_IVAR____TtC20JournalWidgetsSecure17OperationsManager_cacheQueueRegularPriority);
  *(inited + 40) = v7;
  v8 = *(v4 + OBJC_IVAR____TtC20JournalWidgetsSecure17OperationsManager_cacheQueueLowPriority);
  *(inited + 48) = v8;
  v9 = inited & 0xC000000000000001;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  if ((inited & 0xC000000000000001) != 0)
  {
    v13 = sub_1000DCA24();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

    v13 = v10;
  }

  v14 = v13;
  v15 = [v13 underlyingQueue];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1000098C8(a1, a2);

    if (v17)
    {
      goto LABEL_23;
    }

    v14 = v16;
  }

  if (v9)
  {
    v18 = sub_1000DCA24();
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      goto LABEL_26;
    }

    v18 = *(inited + 40);
  }

  v19 = v18;
  v20 = [v18 underlyingQueue];
  if (v20)
  {
    v21 = v20;
    v22 = sub_1000098C8(a1, a2);

    if (!v22)
    {
      v19 = v21;
      goto LABEL_17;
    }

LABEL_23:

    return;
  }

LABEL_17:

  if (!v9)
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v23 = *(inited + 48);
      goto LABEL_21;
    }

LABEL_26:
    __break(1u);
    return;
  }

  v23 = sub_1000DCA24();
LABEL_21:
  v24 = v23;
  v25 = [v23 underlyingQueue];
  if (v25)
  {
    v26 = v25;
    v27 = sub_1000098C8(a1, a2);

    if (v27)
    {
      goto LABEL_23;
    }

    v24 = v26;
  }
}

void sub_100009DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  if (qword_10011F998 != -1)
  {
LABEL_31:
    swift_once();
  }

  v5 = qword_1001200D0;
  sub_100007BC0(&qword_100120148);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000DFDA0;
  v7 = *(v5 + OBJC_IVAR____TtC20JournalWidgetsSecure17OperationsManager_cacheQueueHighPriority);
  *(inited + 32) = v7;
  v31 = inited + 32;
  v8 = *(v5 + OBJC_IVAR____TtC20JournalWidgetsSecure17OperationsManager_cacheQueueRegularPriority);
  *(inited + 40) = v8;
  v9 = *(v5 + OBJC_IVAR____TtC20JournalWidgetsSecure17OperationsManager_cacheQueueLowPriority);
  *(inited + 48) = v9;
  v10 = inited & 0xC000000000000001;
  v29 = inited & 0xFFFFFFFFFFFFFF8;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = 0;
  v30 = v10;
  do
  {
    v32 = v14;
    if (v10)
    {
      v15 = sub_1000DCA24();
    }

    else
    {
      if (v14 >= *(v29 + 16))
      {
        goto LABEL_30;
      }

      v15 = *(v31 + 8 * v14);
    }

    v33 = v15;
    v16 = [v15 operations];
    sub_100008068(0, &qword_100120150);
    v17 = sub_1000DC134();

    if (v17 >> 62)
    {
      v18 = sub_1000DCB14();
      if (v18)
      {
LABEL_10:
        v19 = 0;
        while (1)
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v20 = sub_1000DCA24();
          }

          else
          {
            if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v20 = *(v17 + 8 * v19 + 32);
          }

          v21 = v20;
          v22 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          type metadata accessor for ThumbnailCacheOperation();
          v23 = swift_dynamicCastClass();
          if (v23)
          {
            v24 = v23;
            v25 = *(v23 + qword_100124898) == a1 && *(v23 + qword_100124898 + 8) == a2;
            if (v25 || (sub_1000DCC74() & 1) != 0)
            {
              v26 = v21;

              swift_setDeallocating();
              swift_arrayDestroy();
              v27 = v26;
              [v24 setQueuePriority:v28];

              return;
            }
          }

          ++v19;
          if (v22 == v18)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        goto LABEL_10;
      }
    }

LABEL_3:
    v14 = v32 + 1;

    v10 = v30;
  }

  while (v32 != 2);
  swift_setDeallocating();
  swift_arrayDestroy();
}

uint64_t sub_10000A140()
{
  sub_100007BC0(&qword_100120218);
  v0 = swift_allocObject();
  v0[2] = [objc_allocWithZone(sub_100007BC0(&qword_100120220)) init];
  sub_100007BC0(&qword_100120228);
  result = swift_allocObject();
  v0[3] = result;
  v0[4] = 0xD000000000000011;
  v0[5] = 0x80000001000E7C60;
  qword_100126ED8 = v0;
  return result;
}

uint64_t sub_10000A1F0()
{
  v0 = sub_1000DC554();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000DC544();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000DBAA4();
  __chkstk_darwin(v5 - 8);
  sub_10000A41C();
  sub_1000DBA94();
  sub_1000DC534();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = sub_1000DC594();
  qword_100126EE0 = result;
  return result;
}

uint64_t sub_10000A3A0()
{

  return v0;
}

uint64_t sub_10000A3D0()
{
  sub_10000A3A0();

  return swift_deallocClassInstance();
}

unint64_t sub_10000A41C()
{
  result = qword_100120210;
  if (!qword_100120210)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100120210);
  }

  return result;
}

uint64_t sub_10000A4CC(double *a1, double a2, double a3)
{
  v7 = *v3;
  sub_1000DCD24();
  sub_1000D203C(a2, a3);
  v8 = sub_1000DCD74();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      if (*v12 == a2 && v12[1] == a3)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
    a2 = *v12;
    a3 = v12[1];
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_10000CF04(v10, isUniquelyReferenced_nonNull_native, a2, a3);
    *v3 = v16;
    result = 1;
  }

  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t sub_10000A5E8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v2;
  v8 = *v2;
  sub_1000DCD24();
  v21 = v4;
  sub_1000DA0E4();
  sub_10001068C(&qword_1001202E8);
  v9 = a2;
  sub_1000DBDC4();
  v10 = sub_1000DCD74();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v5 + 72);
    while (1)
    {
      sub_100010568(*(v8 + 48) + v14 * v12, v7);
      v15 = sub_1000DA0B4();
      sub_1000105CC(v7);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1000105CC(a2);
    sub_100010568(*(v8 + 48) + v14 * v12, v20);
    return 0;
  }

  else
  {
LABEL_5:
    v16 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100010568(v9, v7);
    v22 = *v16;
    sub_10000D06C(v7, v12, isUniquelyReferenced_nonNull_native);
    *v16 = v22;
    sub_100010628(v9, v20);
    return 1;
  }
}

uint64_t sub_10000A808(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1000DA0E4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10001068C(&qword_1001202E8);
  v33 = a2;
  v11 = sub_1000DBDB4();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10001068C(&qword_1001202F8);
      v21 = sub_1000DBE64();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_10000D2AC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10000AAC0(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  sub_1000DCD24();
  sub_1000DCD34(a2);
  v6 = sub_1000DCD74();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_10000D528(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10000ABB8(_BYTE *a1, Swift::Int a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000DCD24();
  sub_10009413C(a2);
  sub_1000DBFD4();

  v6 = sub_1000DCD74();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_45:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_10000D688(a2, v8, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    result = 1;
    goto LABEL_48;
  }

  v9 = ~v7;
  while (2)
  {
    v10 = 0xE400000000000000;
    v11 = 1954047348;
    switch(*(*(v5 + 48) + v8))
    {
      case 1:
        v11 = 0x64724F7465737361;
        v10 = 0xED0000676E697265;
        break;
      case 2:
        v11 = 0xD000000000000015;
        v10 = 0x80000001000E7860;
        break;
      case 3:
        v10 = 0xE500000000000000;
        v11 = 0x656C746974;
        break;
      case 4:
        v11 = 0x7461447972746E65;
        v10 = 0xE900000000000065;
        break;
      case 5:
        v10 = 0xE800000000000000;
        v11 = 0x6449656C646E7562;
        break;
      case 6:
        v10 = 0xEA00000000006574;
        v11 = 0x6144656C646E7562;
        break;
      case 7:
        v11 = 0x72756F5365746164;
        v10 = 0xEA00000000006563;
        break;
      case 8:
        v10 = 0xE700000000000000;
        v11 = 0x64656767616C66;
        break;
      case 9:
        v10 = 0xE600000000000000;
        v11 = 0x74706D6F7270;
        break;
      case 0xA:
        v11 = 0xD000000000000013;
        v10 = 0x80000001000E78C0;
        break;
      case 0xB:
        v11 = 0xD000000000000011;
        v10 = 0x80000001000E78E0;
        break;
      case 0xC:
        v10 = 0xE500000000000000;
        v11 = 0x726568746FLL;
        break;
      default:
        break;
    }

    v12 = 0xE400000000000000;
    v13 = 1954047348;
    switch(a2)
    {
      case 1:
        v12 = 0xED0000676E697265;
        if (v11 == 0x64724F7465737361)
        {
          goto LABEL_39;
        }

        goto LABEL_40;
      case 2:
        v12 = 0x80000001000E7860;
        if (v11 != 0xD000000000000015)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 3:
        v12 = 0xE500000000000000;
        if (v11 != 0x656C746974)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 4:
        v12 = 0xE900000000000065;
        if (v11 != 0x7461447972746E65)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 5:
        v12 = 0xE800000000000000;
        if (v11 != 0x6449656C646E7562)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 6:
        v12 = 0xEA00000000006574;
        if (v11 != 0x6144656C646E7562)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 7:
        v12 = 0xEA00000000006563;
        if (v11 != 0x72756F5365746164)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 8:
        v12 = 0xE700000000000000;
        if (v11 != 0x64656767616C66)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 9:
        v12 = 0xE600000000000000;
        if (v11 != 0x74706D6F7270)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 10:
        v13 = 0xD000000000000013;
        v12 = 0x80000001000E78C0;
        goto LABEL_38;
      case 11:
        v12 = 0x80000001000E78E0;
        if (v11 != 0xD000000000000011)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 12:
        v12 = 0xE500000000000000;
        if (v11 != 0x726568746FLL)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      default:
LABEL_38:
        if (v11 != v13)
        {
          goto LABEL_40;
        }

LABEL_39:
        if (v10 != v12)
        {
LABEL_40:
          v14 = sub_1000DCC74();

          if (v14)
          {
            goto LABEL_47;
          }

          v8 = (v8 + 1) & v9;
          if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            goto LABEL_45;
          }

          continue;
        }

LABEL_47:
        result = 0;
        LOBYTE(a2) = *(*(v5 + 48) + v8);
LABEL_48:
        *a1 = a2;
        return result;
    }
  }
}

uint64_t sub_10000B0DC(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  sub_1000DCD24();
  sub_1000DBDD4();
  v8 = sub_1000DCD74();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1000DCC74() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_10000DBE0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10000B254(void *a1, void *a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  v6 = v5;
  v9 = *v5;
  sub_1000DBF44();
  sub_1000DCD24();
  sub_1000DBFD4();
  v10 = sub_1000DCD74();

  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = sub_1000DBF44();
      v16 = v15;
      if (v14 == sub_1000DBF44() && v16 == v17)
      {

        goto LABEL_12;
      }

      v19 = sub_1000DCC74();

      if (v19)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v23 = *(*(v9 + 48) + 8 * v12);
    *a1 = v23;
    v24 = v23;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v6;
    v21 = a2;
    sub_10000DD60(v21, v12, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v6 = v28;
    *a1 = v21;
    return 1;
  }
}

uint64_t sub_10000B410(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1000DC944();

    if (v9)
    {

      sub_100008068(0, &qword_100120308);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_1000DC934();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_10000B648(v7, result + 1);
    if (v19[3] <= v19[2])
    {
      sub_10000CC58();
    }

    v18 = v8;
    sub_10000CE80(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100008068(0, &qword_100120308);
  v11 = sub_1000DC754(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_10000DF6C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1000DC764();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

Swift::Int sub_10000B648(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100007BC0(&qword_100120310);
    v2 = sub_1000DC9D4();
    v14 = v2;
    sub_1000DC924();
    if (sub_1000DC964())
    {
      sub_100008068(0, &qword_100120308);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_10000CC58();
        }

        v2 = v14;
        result = sub_1000DC754(*(v14 + 40));
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_1000DC964());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_10000B838()
{
  v1 = *v0;
  sub_100007BC0(&qword_1001202D0);
  result = sub_1000DC9C4();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = (v1 + 56);
    v6 = 1 << *(v1 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v1 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v1 + 48) + 16 * (v13 | (v4 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1000DCD24();
      if (v17 == 0.0)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = v17;
      }

      sub_1000DCD54(*&v19);
      if (v18 == 0.0)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = v18;
      }

      sub_1000DCD54(*&v20);
      result = sub_1000DCD74();
      v21 = -1 << *(v3 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v10 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v10 + 8 * v23);
          if (v27 != -1)
          {
            v11 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v11 = __clz(__rbit64((-1 << v22) & ~*(v10 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v3 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v3 + 16);
    }

    v14 = v4;
    while (1)
    {
      v4 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v4 >= v9)
      {
        break;
      }

      v15 = v5[v4];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v1 + 32);
    if (v28 >= 64)
    {
      bzero((v1 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v5 = -1 << v28;
    }

    *(v1 + 16) = 0;
  }

  *v0 = v3;
  return result;
}

uint64_t sub_10000BAB8()
{
  v1 = v0;
  v2 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_100007BC0(&qword_1001202F0);
  result = sub_1000DC9C4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v0;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v32 + 72);
      sub_100010628(v19 + v20 * (v16 | (v8 << 6)), v4);
      sub_1000DCD24();
      sub_1000DA0E4();
      sub_10001068C(&qword_1001202E8);
      sub_1000DBDC4();
      result = sub_1000DCD74();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_100010628(v4, *(v7 + 48) + v15 * v20);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v1 = v30;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_10000BDDC()
{
  v1 = v0;
  v35 = sub_1000DA0E4();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_100007BC0(&qword_100120300);
  result = sub_1000DC9C4();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_10001068C(&qword_1001202E8);
      result = sub_1000DBDB4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_10000C124()
{
  v1 = v0;
  v2 = *v0;
  sub_100007BC0(&qword_1001202E0);
  result = sub_1000DC9C4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_1000DCD24();
      sub_1000DCD34(v16);
      result = sub_1000DCD74();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_10000C374()
{
  v1 = v0;
  v2 = *v0;
  sub_100007BC0(&qword_1001202D8);
  v3 = sub_1000DC9C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v3 + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v20 = *(*(v2 + 48) + (v17 | (v5 << 6)));
      sub_1000DCD24();
      sub_1000DBFD4();

      v12 = sub_1000DCD74();
      v13 = -1 << *(v4 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v11 + 8 * (v14 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v14) & ~*(v11 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        do
        {
          if (++v15 == v22 && (v21 & 1) != 0)
          {
            goto LABEL_31;
          }

          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v15);
        }

        while (v24 == -1);
        v16 = __clz(__rbit64(~v24)) + (v15 << 6);
      }

      *(v11 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v4 + 48) + v16) = v20;
      ++*(v4 + 16);
    }

    v18 = v5;
    while (1)
    {
      v5 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        JUMPOUT(0x10000C750);
      }

      if (v5 >= v10)
      {
        break;
      }

      v19 = v6[v5];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_10000C784()
{
  v1 = v0;
  v2 = *v0;
  sub_100007BC0(&qword_100120328);
  result = sub_1000DC9C4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1000DCD24();
      sub_1000DBDD4();
      result = sub_1000DCD74();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_10000C9E4(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_100007BC0(a2);
  result = sub_1000DC9C4();
  v6 = result;
  if (*(v4 + 16))
  {
    v28 = v2;
    v29 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      sub_1000DBF44();
      sub_1000DCD24();
      sub_1000DBFD4();
      v19 = sub_1000DCD74();

      v20 = -1 << *(v6 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v4 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v3 = v28;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_10000CC58()
{
  v1 = v0;
  v2 = *v0;
  sub_100007BC0(&qword_100120310);
  result = sub_1000DC9C4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1000DC754(*(v4 + 40));
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_10000CE80(uint64_t a1, void *a2)
{
  sub_1000DC754(a2[5]);
  result = sub_1000DC914();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

unint64_t sub_10000CF04(unint64_t result, char a2, double a3, double a4)
{
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a2 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a2)
  {
    sub_10000B838();
  }

  else
  {
    if (v8 > v7)
    {
      v9 = result;
      sub_10000E0DC();
      result = v9;
      goto LABEL_15;
    }

    sub_10000EB58();
  }

  v10 = *v4;
  sub_1000DCD24();
  sub_1000D203C(a3, a4);
  v11 = sub_1000DCD74();
  v12 = -1 << *(v10 + 32);
  result = v11 & ~v12;
  if ((*(v10 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * result);
      if (*v14 == a3 && v14[1] == a4)
      {
        goto LABEL_18;
      }

      result = (result + 1) & v13;
    }

    while (((*(v10 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

LABEL_15:
  v16 = *v4;
  *(*v4 + 8 * (result >> 6) + 56) |= 1 << result;
  v17 = (*(v16 + 48) + 16 * result);
  *v17 = a3;
  v17[1] = a4;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_18:
  result = sub_1000DCCB4();
  __break(1u);
  return result;
}

uint64_t sub_10000D06C(uint64_t a1, unint64_t a2, char a3)
{
  v7 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v25 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v24 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10000BAB8();
  }

  else
  {
    if (v11 > v10)
    {
      sub_10000E220();
      goto LABEL_12;
    }

    sub_10000ED9C();
  }

  v12 = *v3;
  sub_1000DCD24();
  sub_1000DA0E4();
  sub_10001068C(&qword_1001202E8);
  sub_1000DBDC4();
  v13 = sub_1000DCD74();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v16 = *(v25 + 72);
    do
    {
      sub_100010568(*(v12 + 48) + v16 * a2, v9);
      v17 = sub_1000DA0B4();
      sub_1000105CC(v9);
      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v24;
  *(*v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100010628(a1, *(v18 + 48) + *(v25 + 72) * a2);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1000DCCB4();
  __break(1u);
  return result;
}

uint64_t sub_10000D2AC(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1000DA0E4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10000BDDC();
  }

  else
  {
    if (v11 > v10)
    {
      sub_10000E404();
      goto LABEL_12;
    }

    sub_10000F090();
  }

  v12 = *v3;
  sub_10001068C(&qword_1001202E8);
  v13 = sub_1000DBDB4();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_10001068C(&qword_1001202F8);
      v21 = sub_1000DBE64();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1000DCCB4();
  __break(1u);
  return result;
}

Swift::Int sub_10000D528(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10000C124();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_10000E63C(&qword_1001202E0);
      a2 = v7;
      goto LABEL_12;
    }

    sub_10000F398();
  }

  v8 = *v3;
  sub_1000DCD24();
  sub_1000DCD34(v4);
  result = sub_1000DCD74();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1000DCCB4();
  __break(1u);
  return result;
}

Swift::Int sub_10000D688(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_10000C374();
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_10000E63C(&qword_1001202D8);
        goto LABEL_52;
      }

      sub_10000F5B8();
    }

    v9 = *v3;
    sub_1000DCD24();
    sub_10009413C(v6);
    sub_1000DBFD4();

    result = sub_1000DCD74();
    v10 = -1 << *(v9 + 32);
    a2 = result & ~v10;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      while (2)
      {
        v12 = 0xE400000000000000;
        v13 = 1954047348;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v13 = 0x64724F7465737361;
            v12 = 0xED0000676E697265;
            break;
          case 2:
            v13 = 0xD000000000000015;
            v12 = 0x80000001000E7860;
            break;
          case 3:
            v12 = 0xE500000000000000;
            v13 = 0x656C746974;
            break;
          case 4:
            v13 = 0x7461447972746E65;
            v12 = 0xE900000000000065;
            break;
          case 5:
            v12 = 0xE800000000000000;
            v13 = 0x6449656C646E7562;
            break;
          case 6:
            v12 = 0xEA00000000006574;
            v13 = 0x6144656C646E7562;
            break;
          case 7:
            v13 = 0x72756F5365746164;
            v12 = 0xEA00000000006563;
            break;
          case 8:
            v12 = 0xE700000000000000;
            v13 = 0x64656767616C66;
            break;
          case 9:
            v12 = 0xE600000000000000;
            v13 = 0x74706D6F7270;
            break;
          case 0xA:
            v13 = 0xD000000000000013;
            v12 = 0x80000001000E78C0;
            break;
          case 0xB:
            v13 = 0xD000000000000011;
            v12 = 0x80000001000E78E0;
            break;
          case 0xC:
            v12 = 0xE500000000000000;
            v13 = 0x726568746FLL;
            break;
          default:
            break;
        }

        v14 = 0xE400000000000000;
        v15 = 1954047348;
        switch(v6)
        {
          case 1:
            v14 = 0xED0000676E697265;
            if (v13 != 0x64724F7465737361)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 2:
            v14 = 0x80000001000E7860;
            if (v13 != 0xD000000000000015)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 3:
            v14 = 0xE500000000000000;
            if (v13 != 0x656C746974)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 4:
            v14 = 0xE900000000000065;
            if (v13 != 0x7461447972746E65)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 5:
            v14 = 0xE800000000000000;
            if (v13 != 0x6449656C646E7562)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 6:
            v14 = 0xEA00000000006574;
            if (v13 != 0x6144656C646E7562)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 7:
            v14 = 0xEA00000000006563;
            if (v13 != 0x72756F5365746164)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 8:
            v14 = 0xE700000000000000;
            if (v13 != 0x64656767616C66)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 9:
            v14 = 0xE600000000000000;
            if (v13 != 0x74706D6F7270)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 10:
            v15 = 0xD000000000000013;
            v14 = 0x80000001000E78C0;
            goto LABEL_45;
          case 11:
            v14 = 0x80000001000E78E0;
            if (v13 != 0xD000000000000011)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 12:
            v14 = 0xE500000000000000;
            if (v13 != 0x726568746FLL)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          default:
LABEL_45:
            if (v13 != v15)
            {
              goto LABEL_47;
            }

LABEL_46:
            if (v12 == v14)
            {
              goto LABEL_55;
            }

LABEL_47:
            v16 = sub_1000DCC74();

            if (v16)
            {
              goto LABEL_56;
            }

            a2 = (a2 + 1) & v11;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_52:
  v17 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v6;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_55:

LABEL_56:
    sub_1000DCCB4();
    __break(1u);
    JUMPOUT(0x10000DB78);
  }

  *(v17 + 16) = v20;
  return result;
}

Swift::Int sub_10000DBE0(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10000C784();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10000E76C();
      goto LABEL_16;
    }

    sub_10000F998();
  }

  v10 = *v4;
  sub_1000DCD24();
  sub_1000DBDD4();
  result = sub_1000DCD74();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1000DCC74();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1000DCCB4();
  __break(1u);
  return result;
}

uint64_t sub_10000DD60(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v7 = v6;
  v9 = result;
  v10 = *(*v6 + 16);
  v11 = *(*v6 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    v12 = a6;
    sub_10000C9E4(v10 + 1, a4);
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_10000E8C8(a4);
      goto LABEL_16;
    }

    v12 = a6;
    sub_10000FBD0(v10 + 1, a4);
  }

  v13 = *v6;
  sub_1000DBF44();
  sub_1000DCD24();
  sub_1000DBFD4();
  v14 = sub_1000DCD74();

  v15 = -1 << *(v13 + 32);
  a2 = v14 & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v12(0);
    do
    {
      v17 = sub_1000DBF44();
      v19 = v18;
      if (v17 == sub_1000DBF44() && v19 == v20)
      {
        goto LABEL_19;
      }

      v22 = sub_1000DCC74();

      if (v22)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v23 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v23 + 48) + 8 * a2) = v9;
  v24 = *(v23 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v23 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_1000DCCB4();
  __break(1u);
  return result;
}

void sub_10000DF6C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10000CC58();
  }

  else
  {
    if (v7 > v6)
    {
      sub_10000EA08();
      goto LABEL_12;
    }

    sub_10000FE1C();
  }

  v8 = *v3;
  v9 = sub_1000DC754(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100008068(0, &qword_100120308);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1000DC764();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1000DCCB4();
  __break(1u);
}

void *sub_10000E0DC()
{
  v1 = v0;
  sub_100007BC0(&qword_1001202D0);
  v2 = *v0;
  v3 = sub_1000DC9B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10000E220()
{
  v1 = v0;
  v2 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007BC0(&qword_1001202F0);
  v6 = *v0;
  v7 = sub_1000DC9B4();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_100010568(*(v6 + 48) + v21, v5);
        result = sub_100010628(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_10000E404()
{
  v1 = v0;
  v2 = sub_1000DA0E4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007BC0(&qword_100120300);
  v6 = *v0;
  v7 = sub_1000DC9B4();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_10000E63C(uint64_t *a1)
{
  v2 = v1;
  sub_100007BC0(a1);
  v3 = *v1;
  v4 = sub_1000DC9B4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + v15) = *(*(v3 + 48) + v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_10000E76C()
{
  v1 = v0;
  sub_100007BC0(&qword_100120328);
  v2 = *v0;
  v3 = sub_1000DC9B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_10000E8C8(uint64_t *a1)
{
  v2 = v1;
  sub_100007BC0(a1);
  v3 = *v1;
  v4 = sub_1000DC9B4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

id sub_10000EA08()
{
  v1 = v0;
  sub_100007BC0(&qword_100120310);
  v2 = *v0;
  v3 = sub_1000DC9B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10000EB58()
{
  v1 = *v0;
  sub_100007BC0(&qword_1001202D0);
  result = sub_1000DC9C4();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v1 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = result + 56;
    while (v7)
    {
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_15:
      v15 = (*(v1 + 48) + 16 * (v12 | (v4 << 6)));
      v16 = *v15;
      v17 = v15[1];
      sub_1000DCD24();
      if (v16 == 0.0)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = v16;
      }

      sub_1000DCD54(*&v18);
      if (v17 == 0.0)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = v17;
      }

      sub_1000DCD54(*&v19);
      result = sub_1000DCD74();
      v20 = -1 << *(v3 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v9 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v9 + 8 * v22);
          if (v26 != -1)
          {
            v10 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_32;
      }

      v10 = __clz(__rbit64((-1 << v21) & ~*(v9 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v9 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      v11 = (*(v3 + 48) + 16 * v10);
      *v11 = v16;
      v11[1] = v17;
      ++*(v3 + 16);
    }

    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        goto LABEL_30;
      }

      v14 = *(v1 + 56 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v7 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
LABEL_30:

    *v0 = v3;
  }

  return result;
}

uint64_t sub_10000ED9C()
{
  v1 = v0;
  v2 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_100007BC0(&qword_1001202F0);
  result = sub_1000DC9C4();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v30 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v31 + 72);
      sub_100010568(v19 + v20 * (v16 | (v8 << 6)), v4);
      sub_1000DCD24();
      sub_1000DA0E4();
      sub_10001068C(&qword_1001202E8);
      sub_1000DBDC4();
      result = sub_1000DCD74();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_100010628(v4, *(v7 + 48) + v15 * v20);
      ++*(v7 + 16);
      v5 = v30;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v29;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_10000F090()
{
  v1 = v0;
  v32 = sub_1000DA0E4();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_100007BC0(&qword_100120300);
  v6 = sub_1000DC9C4();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_10001068C(&qword_1001202E8);
      result = sub_1000DBDB4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_10000F398()
{
  v1 = v0;
  v2 = *v0;
  sub_100007BC0(&qword_1001202E0);
  result = sub_1000DC9C4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_1000DCD24();
      sub_1000DCD34(v15);
      result = sub_1000DCD74();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_10000F5B8()
{
  v1 = v0;
  v2 = *v0;
  sub_100007BC0(&qword_1001202D8);
  v3 = sub_1000DC9C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 56;
    while (v8)
    {
      v17 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_17:
      v20 = *(*(v2 + 48) + (v17 | (v5 << 6)));
      sub_1000DCD24();
      sub_1000DBFD4();

      v12 = sub_1000DCD74();
      v13 = -1 << *(v4 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v10 + 8 * (v14 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v14) & ~*(v10 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        do
        {
          if (++v15 == v22 && (v21 & 1) != 0)
          {
            goto LABEL_29;
          }

          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v10 + 8 * v15);
        }

        while (v24 == -1);
        v16 = __clz(__rbit64(~v24)) + (v15 << 6);
      }

      *(v10 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v4 + 48) + v16) = v20;
      ++*(v4 + 16);
    }

    v18 = v5;
    while (1)
    {
      v5 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        JUMPOUT(0x10000F964);
      }

      if (v5 >= v9)
      {
        break;
      }

      v19 = *(v2 + 56 + 8 * v5);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v8 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v1 = v0;
  }

  else
  {
  }

  *v1 = v4;
  return result;
}

uint64_t sub_10000F998()
{
  v1 = v0;
  v2 = *v0;
  sub_100007BC0(&qword_100120328);
  result = sub_1000DC9C4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v18 = *v16;
      v17 = v16[1];
      sub_1000DCD24();
      sub_1000DBDD4();
      result = sub_1000DCD74();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v18;
      v12[1] = v17;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_10000FBD0(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_100007BC0(a2);
  result = sub_1000DC9C4();
  v6 = result;
  if (*(v4 + 16))
  {
    v28 = v2;
    v29 = v4;
    v7 = 0;
    v8 = v4 + 56;
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      sub_1000DBF44();
      sub_1000DCD24();
      v19 = v18;
      sub_1000DBFD4();
      v20 = sub_1000DCD74();

      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v19;
      ++*(v6 + 16);
      v4 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v3 = v28;
        goto LABEL_26;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

uint64_t sub_10000FE1C()
{
  v1 = v0;
  v2 = *v0;
  sub_100007BC0(&qword_100120310);
  result = sub_1000DC9C4();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(v4 + 40);
      v16 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_1000DC754(v15);
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v10 + 8 * v19);
          if (v23 != -1)
          {
            v11 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v16;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v24;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

double *sub_100010030(uint64_t a1)
{
  v2 = sub_1000DA714();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = &_swiftEmptySetSingleton;
  v6 = *(a1 + 16);
  if (v6)
  {
    v8 = *(v3 + 16);
    v7 = v3 + 16;
    v47 = v8;
    v9 = a1 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v10 = (v7 - 8);
    v11 = _swiftEmptyArrayStorage;
    v46 = *(v7 + 56);
    v43[1] = v7;
    v8(v5, v9, v2);
    while (1)
    {
      v12 = sub_1000DA6D4();
      if (v13 & 1) != 0 || (v14 = *&v12, v15 = sub_1000DA6E4(), (v16) || (v17 = *&v15, (sub_10000A4CC(v54, v14, *&v15) & 1) == 0))
      {
        (*v10)(v5, v2);
      }

      else
      {
        v45 = v11;
        v44 = sub_1000DA6C4();
        v18 = sub_1000DA664();
        if (v19 >> 60 == 15)
        {
          v20 = 0;
        }

        else
        {
          v21 = v18;
          v22 = v19;
          sub_100008068(0, &qword_1001202C8);
          v23 = sub_1000DC734();
          v24 = v21;
          v20 = v23;
          sub_100010500(v24, v22);
        }

        v25 = sub_1000DA6B4();
        v11 = v45;
        if (v26 & 1) != 0 && (v25 = sub_1000DA6A4(), (v27))
        {
          if (v20)
          {
            v28 = [v20 location];
            [v28 horizontalAccuracy];
            v30 = v29;
          }

          else
          {
            v30 = 0;
          }
        }

        else
        {
          v30 = v25;
        }

        v31 = sub_1000DA6F4();
        v48[72] = 1;
        if (v32)
        {
          v33 = v31;
        }

        else
        {
          v33 = 0;
        }

        v34 = 0xE000000000000000;
        if (v32)
        {
          v34 = v32;
        }

        *&v49 = v14;
        *(&v49 + 1) = v17;
        v50 = v20;
        LOBYTE(v51) = 1;
        *(&v51 + 1) = v33;
        *&v52 = v34;
        BYTE8(v52) = v44 & 1;
        v53 = v30;
        v54[0] = v14;
        v54[1] = v17;
        *&v54[2] = v20;
        v54[3] = 0.0;
        v55 = 1;
        v56 = v33;
        v57 = v34;
        v58 = v44 & 1;
        v59 = v30;
        v35 = v20;
        sub_100010450(&v49, v48);
        sub_1000104AC(v54);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_100046DB8(0, *(v11 + 2) + 1, 1, v11);
        }

        v37 = *(v11 + 2);
        v36 = *(v11 + 3);
        if (v37 >= v36 >> 1)
        {
          v11 = sub_100046DB8((v36 > 1), v37 + 1, 1, v11);
        }

        (*v10)(v5, v2);
        *(v11 + 2) = v37 + 1;
        v38 = &v11[9 * v37];
        *(v38 + 2) = v49;
        v39 = v50;
        v40 = v51;
        v41 = v52;
        *(v38 + 12) = v53;
        *(v38 + 4) = v40;
        *(v38 + 5) = v41;
        *(v38 + 3) = v39;
      }

      v9 += v46;
      if (!--v6)
      {
        break;
      }

      v47(v5, v9, v2);
    }
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  return v11;
}

BOOL sub_1000103F0(double a1, double a2, double a3, double a4)
{
  result = 0;
  v5 = fabs(a2);
  if (fabs(a1) <= 90.0 && v5 <= 180.0 && a3 >= 0.0 && a3 <= 180.0)
  {
    return a4 <= 360.0 && a4 >= 0.0;
  }

  return result;
}

uint64_t sub_100010500(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100010514(a1, a2);
  }

  return a1;
}

uint64_t sub_100010514(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100010568(uint64_t a1, uint64_t a2)
{
  v4 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000105CC(uint64_t a1)
{
  v2 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100010628(uint64_t a1, uint64_t a2)
{
  v4 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001068C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000DA0E4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000106D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_1001203C8);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007BC0(&qword_1001203D0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100007F58(v1 + v12, v11, &qword_1001203D0);
  v13 = sub_100007BC0(&qword_1001203B0);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001865C(v11, a1, &qword_1001203B0);
  }

  sub_1000080B0(v11, &qword_1001203D0);
  sub_100007F58(v1 + *(*v1 + 120), v5, &qword_1001203C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000DA5D4();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_1000DA5D4();
    sub_100018614(&qword_100120368, &type metadata accessor for AudioAssetMetadata);
    sub_1000D9DD4();
    sub_100010514(v19, v18);
  }

  sub_100007F58(a1, v9, &qword_1001203B0);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_1000185AC(v9, v1 + v12, &qword_1001203D0);
  return swift_endAccess();
}

uint64_t sub_100010A74@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_1001203E0);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007BC0(&qword_1001203F8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100007F58(v1 + v12, v11, &qword_1001203F8);
  v13 = sub_100007BC0(&qword_1001203F0);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001865C(v11, a1, &qword_1001203F0);
  }

  sub_1000080B0(v11, &qword_1001203F8);
  sub_100007F58(v1 + *(*v1 + 120), v5, &qword_1001203E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000DA764();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_1000DA764();
    sub_100018614(&qword_100120400, &type metadata accessor for DrawingAssetMetadata);
    sub_1000D9DD4();
    sub_100010514(v19, v18);
  }

  sub_100007F58(a1, v9, &qword_1001203F0);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_1000185AC(v9, v1 + v12, &qword_1001203F8);
  return swift_endAccess();
}

uint64_t sub_100010E18@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_100120408);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007BC0(&qword_100120420);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100007F58(v1 + v12, v11, &qword_100120420);
  v13 = sub_100007BC0(&qword_100120418);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001865C(v11, a1, &qword_100120418);
  }

  sub_1000080B0(v11, &qword_100120420);
  sub_100007F58(v1 + *(*v1 + 120), v5, &qword_100120408);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000DAAA4();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_1000DAAA4();
    sub_100018614(&qword_100120428, &type metadata accessor for PhotoLibraryAssetMetadata);
    sub_1000D9DD4();
    sub_100010514(v19, v18);
  }

  sub_100007F58(a1, v9, &qword_100120418);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_1000185AC(v9, v1 + v12, &qword_100120420);
  return swift_endAccess();
}

uint64_t sub_1000111BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_1001204E8);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007BC0(&qword_1001204F0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100007F58(v1 + v12, v11, &qword_1001204F0);
  v13 = sub_100007BC0(&qword_1001204F8);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001865C(v11, a1, &qword_1001204F8);
  }

  sub_1000080B0(v11, &qword_1001204F0);
  sub_100007F58(v1 + *(*v1 + 120), v5, &qword_1001204E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000DA984();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_1000DA984();
    sub_100018614(&qword_100120500, &type metadata accessor for MultiPinMapAssetMetadata);
    sub_1000D9DD4();
    sub_100010514(v19, v18);
  }

  sub_100007F58(a1, v9, &qword_1001204F8);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_1000185AC(v9, v1 + v12, &qword_1001204F0);
  return swift_endAccess();
}

uint64_t sub_100011560@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_100120550);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007BC0(&qword_100120558);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100007F58(v1 + v12, v11, &qword_100120558);
  v13 = sub_100007BC0(&qword_100120560);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001865C(v11, a1, &qword_100120560);
  }

  sub_1000080B0(v11, &qword_100120558);
  sub_100007F58(v1 + *(*v1 + 120), v5, &qword_100120550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000DA874();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_1000DA874();
    sub_100018614(&qword_100120568, &type metadata accessor for GenericMapAssetMetadata);
    sub_1000D9DD4();
    sub_100010514(v19, v18);
  }

  sub_100007F58(a1, v9, &qword_100120560);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_1000185AC(v9, v1 + v12, &qword_100120558);
  return swift_endAccess();
}

uint64_t sub_100011904@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_100120478);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007BC0(&qword_100120480);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100007F58(v1 + v12, v11, &qword_100120480);
  v13 = sub_100007BC0(&qword_100120488);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001865C(v11, a1, &qword_100120488);
  }

  sub_1000080B0(v11, &qword_100120480);
  sub_100007F58(v1 + *(*v1 + 120), v5, &qword_100120478);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000DAB44();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_1000DAB44();
    sub_100018614(&qword_100120490, &type metadata accessor for WorkoutRouteAssetMetadata);
    sub_1000D9DD4();
    sub_100010514(v19, v18);
  }

  sub_100007F58(a1, v9, &qword_100120488);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_1000185AC(v9, v1 + v12, &qword_100120480);
  return swift_endAccess();
}

uint64_t sub_100011CA8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_100120430);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007BC0(&qword_100120448);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100007F58(v1 + v12, v11, &qword_100120448);
  v13 = sub_100007BC0(&qword_100120440);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001865C(v11, a1, &qword_100120440);
  }

  sub_1000080B0(v11, &qword_100120448);
  sub_100007F58(v1 + *(*v1 + 120), v5, &qword_100120430);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000DA894();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_1000DA894();
    sub_100018614(&qword_100120450, &type metadata accessor for ReflectionAssetMetadata);
    sub_1000D9DD4();
    sub_100010514(v19, v18);
  }

  sub_100007F58(a1, v9, &qword_100120440);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_1000185AC(v9, v1 + v12, &qword_100120448);
  return swift_endAccess();
}

uint64_t sub_10001204C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_100120458);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007BC0(&qword_100120460);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100007F58(v1 + v12, v11, &qword_100120460);
  v13 = sub_100007BC0(&qword_100120468);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001865C(v11, a1, &qword_100120468);
  }

  sub_1000080B0(v11, &qword_100120460);
  sub_100007F58(v1 + *(*v1 + 120), v5, &qword_100120458);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000DA564();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_1000DA564();
    sub_100018614(&qword_100120470, &type metadata accessor for LinkAssetMetadata);
    sub_1000D9DD4();
    sub_100010514(v19, v18);
  }

  sub_100007F58(a1, v9, &qword_100120468);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_1000185AC(v9, v1 + v12, &qword_100120460);
  return swift_endAccess();
}

uint64_t sub_1000123F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_100120498);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007BC0(&qword_1001204B0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100007F58(v1 + v12, v11, &qword_1001204B0);
  v13 = sub_100007BC0(&qword_1001204A8);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001865C(v11, a1, &qword_1001204A8);
  }

  sub_1000080B0(v11, &qword_1001204B0);
  sub_100007F58(v1 + *(*v1 + 120), v5, &qword_100120498);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000DA9C4();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_1000DA9C4();
    sub_100018614(&qword_1001204B8, &type metadata accessor for StateOfMindAssetMetadata);
    sub_1000D9DD4();
    sub_100010514(v19, v18);
  }

  sub_100007F58(a1, v9, &qword_1001204A8);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_1000185AC(v9, v1 + v12, &qword_1001204B0);
  return swift_endAccess();
}

uint64_t sub_100012794@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_1001204C0);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007BC0(&qword_1001204D8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100007F58(v1 + v12, v11, &qword_1001204D8);
  v13 = sub_100007BC0(&qword_1001204D0);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001865C(v11, a1, &qword_1001204D0);
  }

  sub_1000080B0(v11, &qword_1001204D8);
  sub_100007F58(v1 + *(*v1 + 120), v5, &qword_1001204C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000DA534();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_1000DA534();
    sub_100018614(&qword_1001204E0, &type metadata accessor for BookAssetMetadata);
    sub_1000D9DD4();
    sub_100010514(v19, v18);
  }

  sub_100007F58(a1, v9, &qword_1001204D0);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_1000185AC(v9, v1 + v12, &qword_1001204D8);
  return swift_endAccess();
}

uint64_t sub_100012B38@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_100120508);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007BC0(&qword_100120520);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100007F58(v1 + v12, v11, &qword_100120520);
  v13 = sub_100007BC0(&qword_100120518);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001865C(v11, a1, &qword_100120518);
  }

  sub_1000080B0(v11, &qword_100120520);
  sub_100007F58(v1 + *(*v1 + 120), v5, &qword_100120508);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000DA7A4();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_1000DA7A4();
    sub_100018614(&qword_100120528, &type metadata accessor for PodcastAssetMetadata);
    sub_1000D9DD4();
    sub_100010514(v19, v18);
  }

  sub_100007F58(a1, v9, &qword_100120518);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_1000185AC(v9, v1 + v12, &qword_100120520);
  return swift_endAccess();
}

uint64_t sub_100012EDC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_100120530);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007BC0(&qword_100120538);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100007F58(v1 + v12, v11, &qword_100120538);
  v13 = sub_100007BC0(&qword_100120540);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001865C(v11, a1, &qword_100120540);
  }

  sub_1000080B0(v11, &qword_100120538);
  sub_100007F58(v1 + *(*v1 + 120), v5, &qword_100120530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000DABE4();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_1000DABE4();
    sub_100018614(&qword_100120548, &type metadata accessor for MotionActivityAssetMetadata);
    sub_1000D9DD4();
    sub_100010514(v19, v18);
  }

  sub_100007F58(a1, v9, &qword_100120540);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_1000185AC(v9, v1 + v12, &qword_100120538);
  return swift_endAccess();
}

uint64_t sub_100013280@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_100120570);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007BC0(&qword_100120588);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100007F58(v1 + v12, v11, &qword_100120588);
  v13 = sub_100007BC0(&qword_100120580);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001865C(v11, a1, &qword_100120580);
  }

  sub_1000080B0(v11, &qword_100120588);
  sub_100007F58(v1 + *(*v1 + 120), v5, &qword_100120570);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000DA744();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_1000DA744();
    sub_100018614(&qword_100120590, &type metadata accessor for ContactAssetMetadata);
    sub_1000D9DD4();
    sub_100010514(v19, v18);
  }

  sub_100007F58(a1, v9, &qword_100120580);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_1000185AC(v9, v1 + v12, &qword_100120588);
  return swift_endAccess();
}

uint64_t sub_100013624@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_100120598);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007BC0(&qword_1001205B0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100007F58(v1 + v12, v11, &qword_1001205B0);
  v13 = sub_100007BC0(&qword_1001205A8);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001865C(v11, a1, &qword_1001205A8);
  }

  sub_1000080B0(v11, &qword_1001205B0);
  sub_100007F58(v1 + *(*v1 + 120), v5, &qword_100120598);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000DA654();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_1000DA654();
    sub_100018614(&qword_1001205B8, &type metadata accessor for MusicAssetMetadata);
    sub_1000D9DD4();
    sub_100010514(v19, v18);
  }

  sub_100007F58(a1, v9, &qword_1001205A8);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_1000185AC(v9, v1 + v12, &qword_1001205B0);
  return swift_endAccess();
}

uint64_t sub_1000139C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_1001205C0);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007BC0(&qword_1001205C8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100007F58(v1 + v12, v11, &qword_1001205C8);
  v13 = sub_100007BC0(&qword_1001205D0);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001865C(v11, a1, &qword_1001205D0);
  }

  sub_1000080B0(v11, &qword_1001205C8);
  sub_100007F58(v1 + *(*v1 + 120), v5, &qword_1001205C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000DAA64();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_1000DAA64();
    sub_100018614(&qword_1001205D8, &type metadata accessor for WorkoutIconAssetMetadata);
    sub_1000D9DD4();
    sub_100010514(v19, v18);
  }

  sub_100007F58(a1, v9, &qword_1001205D0);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_1000185AC(v9, v1 + v12, &qword_1001205C8);
  return swift_endAccess();
}

uint64_t sub_100013D6C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_1001206B8);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007BC0(&qword_1001206C0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100007F58(v1 + v12, v11, &qword_1001206C0);
  v13 = sub_100007BC0(&qword_1001206C8);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001865C(v11, a1, &qword_1001206C8);
  }

  sub_1000080B0(v11, &qword_1001206C0);
  sub_100007F58(v1 + *(*v1 + 120), v5, &qword_1001206B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000DA444();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_1000DA444();
    sub_100018614(&qword_1001206D0, &type metadata accessor for StreakEvent);
    sub_1000D9DD4();
    sub_100010514(v19, v18);
  }

  sub_100007F58(a1, v9, &qword_1001206C8);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_1000185AC(v9, v1 + v12, &qword_1001206C0);
  return swift_endAccess();
}

uint64_t sub_100014110@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_1001205E8);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007BC0(&qword_100120600);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100007F58(v1 + v12, v11, &qword_100120600);
  v13 = sub_100007BC0(&qword_1001205F8);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001865C(v11, a1, &qword_1001205F8);
  }

  sub_1000080B0(v11, &qword_100120600);
  sub_100007F58(v1 + *(*v1 + 120), v5, &qword_1001205E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000DA7F4();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_1000DA7F4();
    sub_100018614(&qword_100120608, &type metadata accessor for ConfettiAssetMetadata);
    sub_1000D9DD4();
    sub_100010514(v19, v18);
  }

  sub_100007F58(a1, v9, &qword_1001205F8);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_1000185AC(v9, v1 + v12, &qword_100120600);
  return swift_endAccess();
}

uint64_t sub_1000144B4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_100120610);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007BC0(&qword_100120628);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100007F58(v1 + v12, v11, &qword_100120628);
  v13 = sub_100007BC0(&qword_100120620);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001865C(v11, a1, &qword_100120620);
  }

  sub_1000080B0(v11, &qword_100120628);
  sub_100007F58(v1 + *(*v1 + 120), v5, &qword_100120610);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000DAC94();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_1000DAC94();
    sub_100018614(&qword_100120630, &type metadata accessor for ThirdPartyMediaAssetMetadata);
    sub_1000D9DD4();
    sub_100010514(v19, v18);
  }

  sub_100007F58(a1, v9, &qword_100120620);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_1000185AC(v9, v1 + v12, &qword_100120628);
  return swift_endAccess();
}

id sub_100014868()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AudioAsset()
{
  result = qword_100120358;
  if (!qword_100120358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100014970@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_1001203C8);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC20JournalWidgetsSecure10AudioAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure10AudioAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000D9DF4();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_100007BC0(&qword_1001203D8);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_100007BC0(&qword_1001203B0);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_1000DFEE0;
      sub_10001865C(v5, v13 + *(*v13 + 120), &qword_1001203C8);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_1000106D0(a1);
  }

  else
  {
    v17 = sub_1000DA5D4();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_100014BAC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_1001203E0);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC20JournalWidgetsSecure12DrawingAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure12DrawingAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000D9DF4();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_100007BC0(&qword_1001203E8);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_100007BC0(&qword_1001203F0);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_1000DFEE0;
      sub_10001865C(v5, v13 + *(*v13 + 120), &qword_1001203E0);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_100010A74(a1);
  }

  else
  {
    v17 = sub_1000DA764();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_100014DEC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_100120408);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC20JournalWidgetsSecure10PhotoAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure10PhotoAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000D9DF4();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_100007BC0(&qword_100120410);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_100007BC0(&qword_100120418);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_1000DFEE0;
      sub_10001865C(v5, v13 + *(*v13 + 120), &qword_100120408);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_100010E18(a1);
  }

  else
  {
    v17 = sub_1000DAAA4();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_10001502C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_100120550);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC20JournalWidgetsSecure15GenericMapAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure15GenericMapAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000D9DF4();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_100007BC0(&qword_100120660);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_100007BC0(&qword_100120560);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_1000DFEE0;
      sub_10001865C(v5, v13 + *(*v13 + 120), &qword_100120550);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_100011560(a1);
  }

  else
  {
    v17 = sub_1000DA874();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_10001526C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_1001204E8);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC20JournalWidgetsSecure16MultiPinMapAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure16MultiPinMapAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000D9DF4();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_100007BC0(&qword_100120668);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_100007BC0(&qword_1001204F8);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_1000DFEE0;
      sub_10001865C(v5, v13 + *(*v13 + 120), &qword_1001204E8);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_1000111BC(a1);
  }

  else
  {
    v17 = sub_1000DA984();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_1000154AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_100120478);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC20JournalWidgetsSecure17WorkoutRouteAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure17WorkoutRouteAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000D9DF4();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_100007BC0(&qword_100120680);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_100007BC0(&qword_100120488);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_1000DFEE0;
      sub_10001865C(v5, v13 + *(*v13 + 120), &qword_100120478);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_100011904(a1);
  }

  else
  {
    v17 = sub_1000DAB44();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_1000156EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_100120430);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC20JournalWidgetsSecure15ReflectionAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure15ReflectionAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000D9DF4();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_100007BC0(&qword_100120438);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_100007BC0(&qword_100120440);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_1000DFEE0;
      sub_10001865C(v5, v13 + *(*v13 + 120), &qword_100120430);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_100011CA8(a1);
  }

  else
  {
    v17 = sub_1000DA894();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_10001592C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_100120498);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC20JournalWidgetsSecure16StateOfMindAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure16StateOfMindAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000D9DF4();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_100007BC0(&qword_1001204A0);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_100007BC0(&qword_1001204A8);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_1000DFEE0;
      sub_10001865C(v5, v13 + *(*v13 + 120), &qword_100120498);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_1000123F0(a1);
  }

  else
  {
    v17 = sub_1000DA9C4();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_100015B6C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_1001204C0);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC20JournalWidgetsSecure9BookAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure9BookAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000D9DF4();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_100007BC0(&qword_1001204C8);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_100007BC0(&qword_1001204D0);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_1000DFEE0;
      sub_10001865C(v5, v13 + *(*v13 + 120), &qword_1001204C0);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_100012794(a1);
  }

  else
  {
    v17 = sub_1000DA534();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_100015DAC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_100120408);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC20JournalWidgetsSecure10VideoAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure10VideoAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000D9DF4();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_100007BC0(&qword_100120410);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_100007BC0(&qword_100120418);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_1000DFEE0;
      sub_10001865C(v5, v13 + *(*v13 + 120), &qword_100120408);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_100010E18(a1);
  }

  else
  {
    v17 = sub_1000DAAA4();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_100015FEC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_100120508);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC20JournalWidgetsSecure12PodcastAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure12PodcastAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000D9DF4();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_100007BC0(&qword_100120510);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_100007BC0(&qword_100120518);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_1000DFEE0;
      sub_10001865C(v5, v13 + *(*v13 + 120), &qword_100120508);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_100012B38(a1);
  }

  else
  {
    v17 = sub_1000DA7A4();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_10001622C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_100120570);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC20JournalWidgetsSecure12ContactAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure12ContactAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000D9DF4();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_100007BC0(&qword_100120578);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_100007BC0(&qword_100120580);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_1000DFEE0;
      sub_10001865C(v5, v13 + *(*v13 + 120), &qword_100120570);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_100013280(a1);
  }

  else
  {
    v17 = sub_1000DA744();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_10001646C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_100120598);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC20JournalWidgetsSecure10MusicAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure10MusicAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000D9DF4();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_100007BC0(&qword_1001205A0);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_100007BC0(&qword_1001205A8);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_1000DFEE0;
      sub_10001865C(v5, v13 + *(*v13 + 120), &qword_100120598);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_100013624(a1);
  }

  else
  {
    v17 = sub_1000DA654();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_1000166AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_100120408);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC20JournalWidgetsSecure14LivePhotoAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure14LivePhotoAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000D9DF4();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_100007BC0(&qword_100120410);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_100007BC0(&qword_100120418);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_1000DFEE0;
      sub_10001865C(v5, v13 + *(*v13 + 120), &qword_100120408);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_100010E18(a1);
  }

  else
  {
    v17 = sub_1000DAAA4();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_1000168EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_1001205E8);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC20JournalWidgetsSecure13ConfettiAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure13ConfettiAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000D9DF4();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_100007BC0(&qword_1001205F0);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_100007BC0(&qword_1001205F8);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_1000DFEE0;
      sub_10001865C(v5, v13 + *(*v13 + 120), &qword_1001205E8);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_100014110(a1);
  }

  else
  {
    v17 = sub_1000DA7F4();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_100016B2C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_100120610);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC20JournalWidgetsSecure20ThirdPartyMediaAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure20ThirdPartyMediaAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000D9DF4();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_100007BC0(&qword_100120618);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_100007BC0(&qword_100120620);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_1000DFEE0;
      sub_10001865C(v5, v13 + *(*v13 + 120), &qword_100120610);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_1000144B4(a1);
  }

  else
  {
    v17 = sub_1000DAC94();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_100016D6C()
{
  v36 = sub_1000DAB84();
  v0 = *(v36 - 8);
  __chkstk_darwin(v36);
  v2 = v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100007BC0(&qword_1001203B0);
  __chkstk_darwin(v3 - 8);
  v5 = v32 - v4;
  sub_100014970(v32 - v4);
  v6 = sub_1000DA5D4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000080B0(v5, &qword_1001203B0);
    return 0;
  }

  v8 = sub_1000DA5C4();
  (*(v7 + 8))(v5, v6);
  if (!v8)
  {
    return 0;
  }

  v9 = *(v8 + 16);
  if (v9)
  {
    v37 = _swiftEmptyArrayStorage;
    sub_10001793C(0, v9, 0);
    v10 = v37;
    v12 = *(v0 + 16);
    v11 = v0 + 16;
    v13 = *(v11 + 64);
    v32[1] = v8;
    v14 = v8 + ((v13 + 32) & ~v13);
    v33 = *(v11 + 56);
    v34 = v12;
    v35 = v11;
    v15 = (v11 - 8);
    do
    {
      v16 = v36;
      v34(v2, v14, v36);
      v17 = sub_1000DAB74();
      v19 = v18;
      (*v15)(v2, v16);
      v37 = v10;
      v21 = *(v10 + 2);
      v20 = *(v10 + 3);
      if (v21 >= v20 >> 1)
      {
        sub_10001793C((v20 > 1), v21 + 1, 1);
        v10 = v37;
      }

      *(v10 + 2) = v21 + 1;
      v22 = &v10[16 * v21];
      *(v22 + 4) = v17;
      *(v22 + 5) = v19;
      v14 += v33;
      --v9;
    }

    while (v9);

    v24 = *(v10 + 2);
    if (v24)
    {
LABEL_12:
      v25 = 0;
      v26 = 0;
      v27 = (v10 + 40);
      v28 = 0xE000000000000000;
      while (v26 < *(v10 + 2))
      {
        ++v26;
        v30 = *(v27 - 1);
        v29 = *v27;
        v37 = v25;
        v38 = v28;

        v39._countAndFlagsBits = v30;
        v39._object = v29;
        sub_1000DBFE4(v39);

        v25 = v37;
        v28 = v38;
        v27 += 2;
        if (v24 == v26)
        {
          v31 = v37;
          goto LABEL_18;
        }
      }

      __break(1u);
      return result;
    }
  }

  else
  {

    v10 = _swiftEmptyArrayStorage;
    v24 = _swiftEmptyArrayStorage[2];
    if (v24)
    {
      goto LABEL_12;
    }
  }

  v31 = 0;
LABEL_18:

  return v31;
}

id sub_1000170CC()
{
  v1 = sub_1000DA124();
  __chkstk_darwin(v1 - 8);
  v3 = v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000DBED4();
  __chkstk_darwin(v4 - 8);
  v56 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000DA5D4();
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v52 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007BC0(&qword_1001203B0);
  __chkstk_darwin(v8 - 8);
  v10 = v51 - v9;
  v11 = sub_100007BC0(&qword_1001203B8);
  v12 = __chkstk_darwin(v11 - 8);
  v55 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v51 - v14;
  v16 = sub_1000DAF04();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v0;
  v21 = sub_100016D6C();
  if (v22)
  {
    v23 = v21;
    v24 = v22;
    v25 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v25 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      v51[1] = v3;
      sub_1000DAE94();
      v26 = objc_allocWithZone(CSSearchableItemAttributeSet);
      isa = sub_1000DAE64().super.isa;
      v28 = [v26 initWithContentType:isa];

      (*(v17 + 8))(v19, v16);
      sub_100046898(0, 0, v23, v24);

      v29 = v55;
      if (*(v20 + OBJC_IVAR____TtC20JournalWidgetsSecure10AudioAsset_metadata))
      {

        sub_1000106D0(v10);

        v31 = v53;
        v30 = v54;
        if (!(*(v53 + 48))(v10, 1, v54))
        {
          v39 = v52;
          (*(v31 + 16))(v52, v10, v30);
          sub_1000080B0(v10, &qword_1001203B0);
          sub_1000DA5B4();
          (*(v31 + 8))(v39, v30);
          v40 = sub_1000DA084();
          v41 = *(v40 - 8);
          if ((*(v41 + 48))(v29, 1, v40) != 1)
          {
            (*(v41 + 32))(v15, v29, v40);
            (*(v41 + 56))(v15, 0, 1, v40);
LABEL_19:
            sub_1000DBE74();
            sub_1000DA114();
            v42 = sub_1000DBF64();
            v44 = v43;
            sub_100007BC0(&qword_1001203C0);
            v45 = swift_allocObject();
            *(v45 + 16) = xmmword_1000DFEF0;
            v46 = sub_1000478A0(v42, v44, v15);
            v48 = v47;

            *(v45 + 32) = v46;
            *(v45 + 40) = v48;
            v49 = sub_1000DC124().super.isa;

            [v28 setAlternateNames:v49];

            sub_1000080B0(v15, &qword_1001203B8);
            return v28;
          }

LABEL_9:
          v33 = *(v20 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
          if (v33 && (v34 = [v33 entry]) != 0)
          {
            v35 = v34;
            sub_1000DA3A4();

            v36 = 0;
          }

          else
          {
            v36 = 1;
          }

          v37 = sub_1000DA084();
          v38 = *(v37 - 8);
          (*(v38 + 56))(v15, v36, 1, v37);
          if ((*(v38 + 48))(v29, 1, v37) != 1)
          {
            sub_1000080B0(v29, &qword_1001203B8);
          }

          goto LABEL_19;
        }

        sub_1000080B0(v10, &qword_1001203B0);
      }

      v32 = sub_1000DA084();
      (*(*(v32 - 8) + 56))(v29, 1, 1, v32);
      goto LABEL_9;
    }
  }

  return 0;
}

size_t sub_100017864(size_t a1, int64_t a2, char a3)
{
  result = sub_1000181DC(a1, a2, a3, *v3, &qword_100120688, &unk_1000E01D8, &type metadata accessor for MergeableTextList);
  *v3 = result;
  return result;
}

size_t sub_1000178A8(size_t a1, int64_t a2, char a3)
{
  result = sub_1000181DC(a1, a2, a3, *v3, &qword_100120650, &unk_1000E01A0, _s30MOSuggestionAssetMapsClustererC7ClusterVMa);
  *v3 = result;
  return result;
}

double *sub_1000178EC(double *a1, int64_t a2, char a3)
{
  result = sub_100017B44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_10001790C(double *a1, int64_t a2, char a3)
{
  result = sub_100017D78(a1, a2, a3, *v3, &qword_100120640);
  *v3 = result;
  return result;
}

char *sub_10001793C(char *a1, int64_t a2, char a3)
{
  result = sub_100017C6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10001795C(size_t a1, int64_t a2, char a3)
{
  result = sub_1000181DC(a1, a2, a3, *v3, &qword_100120638, &unk_1000E0188, type metadata accessor for AssetAttachment.AssetType);
  *v3 = result;
  return result;
}

size_t sub_1000179A0(size_t a1, int64_t a2, char a3)
{
  result = sub_1000181DC(a1, a2, a3, *v3, &qword_100120690, &unk_1000E01E0, type metadata accessor for StreaksWidgetTimelineEntry);
  *v3 = result;
  return result;
}

double *sub_1000179E4(double *a1, int64_t a2, char a3)
{
  result = sub_100017D78(a1, a2, a3, *v3, &qword_100120670);
  *v3 = result;
  return result;
}

char *sub_100017A14(char *a1, int64_t a2, char a3)
{
  result = sub_100017E74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_100017A34(double *a1, int64_t a2, char a3)
{
  result = sub_100017FA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_100017A54(double *a1, int64_t a2, char a3)
{
  result = sub_100018094(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100017A74(size_t a1, int64_t a2, char a3)
{
  result = sub_1000181DC(a1, a2, a3, *v3, &qword_1001206A8, &unk_1000E01F8, type metadata accessor for InsightsDataManager.TopAssetCategory);
  *v3 = result;
  return result;
}

size_t sub_100017AB8(size_t a1, int64_t a2, char a3)
{
  result = sub_1000183B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100017AD8(size_t a1, int64_t a2, char a3)
{
  result = sub_1000181DC(a1, a2, a3, *v3, &qword_1001205E0, &unk_1000E0140, &type metadata accessor for Date);
  *v3 = result;
  return result;
}

double *sub_100017B44(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100007BC0(&qword_100120648);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100017C6C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100007BC0(&qword_1001203C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_100017D78(double *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 16);
  if (v8 <= v9)
  {
    v10 = *(a4 + 16);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_100007BC0(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = (v11 + 4);
  v15 = (a4 + 32);
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

char *sub_100017E74(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100007BC0(&qword_100120678);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

double *sub_100017FA0(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100007BC0(&qword_100120658);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

double *sub_100018094(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100007BC0(&qword_1001206B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1000181DC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100007BC0(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_1000183B8(size_t result, int64_t a2, char a3, unint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100007BC0(&qword_100120698);
  v10 = *(sub_100007BC0(&qword_1001206A0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  *(v13 + 2) = v8;
  *(v13 + 3) = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100007BC0(&qword_1001206A0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1000185AC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100007BC0(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_100018614(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001865C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100007BC0(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1000186C4(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20JournalWidgetsSecure16JournalAssetView_fallbackView;
  type metadata accessor for CanvasFallbackAssetView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4[OBJC_IVAR____TtC20JournalWidgetsSecure16JournalAssetView_hasCalledSizeTypeUpdated] = 0;
  v4[OBJC_IVAR____TtC20JournalWidgetsSecure16JournalAssetView_sizeType] = 6;
  *&v4[OBJC_IVAR____TtC20JournalWidgetsSecure16JournalAssetView_loadingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC20JournalWidgetsSecure16JournalAssetView_isAssetFinishedLoading] = 0;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for JournalAssetView();
  return objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
}

id sub_1000187BC(void *a1)
{
  v3 = OBJC_IVAR____TtC20JournalWidgetsSecure16JournalAssetView_fallbackView;
  type metadata accessor for CanvasFallbackAssetView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1[OBJC_IVAR____TtC20JournalWidgetsSecure16JournalAssetView_hasCalledSizeTypeUpdated] = 0;
  v1[OBJC_IVAR____TtC20JournalWidgetsSecure16JournalAssetView_sizeType] = 6;
  *&v1[OBJC_IVAR____TtC20JournalWidgetsSecure16JournalAssetView_loadingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC20JournalWidgetsSecure16JournalAssetView_isAssetFinishedLoading] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for JournalAssetView();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1000188B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalAssetView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10001897C()
{
  sub_1000DC7C4();
  result = sub_1000DC7C4();
  if (v1 <= 0x3F)
  {
    result = _s8MetadataC5InputOMa();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100018A6C(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_100018AAC(a1);
  return v2;
}

uint64_t sub_100018AAC(uint64_t a1)
{
  v3 = *(*v1 + 104);
  v4 = sub_1000DC7C4();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + *(*v1 + 112)) = xmmword_1000DFEE0;
  v5 = *(*v1 + 120);
  v6 = _s8MetadataC5InputOMa();
  (*(*(v6 - 8) + 32))(v1 + v5, a1, v6);
  return v1;
}

uint64_t sub_100018BEC()
{
  v1 = *(*v0 + 104);
  sub_1000DC7C4();
  v2 = sub_1000DC7C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100019138(*(v0 + *(*v0 + 112)), *(v0 + *(*v0 + 112) + 8));
  v3 = *(*v0 + 120);
  v4 = _s8MetadataC5InputOMa();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_100018D20()
{
  sub_100018BEC();

  return swift_deallocClassInstance();
}

uint64_t sub_100018DB0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100018E20(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_100018F38(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}
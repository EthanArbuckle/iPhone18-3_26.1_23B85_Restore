void sub_1001C1510(objc_class *a1@<X3>, uint64_t a2@<X8>)
{
  v14[1] = a2;
  v14[0] = sub_1007504F4();
  v3 = *(v14[0] - 8);
  __chkstk_darwin(v14[0]);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100750304();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921488 != -1)
  {
    swift_once();
  }

  v10 = sub_100750534();
  v11 = sub_10000D0FC(v10, qword_100981AD0);
  (*(*(v10 - 8) + 16))(v9, v11, v10);
  (*(v7 + 104))(v9, enum case for FontSource.useCase(_:), v6);
  v12.super.isa = a1;
  isa = sub_1007502F4(v12).super.isa;
  (*(v7 + 8))(v9, v6);
  [(objc_class *)isa lineHeight];
  sub_100750504();
  sub_1007504B4();
  (*(v3 + 8))(v5, v14[0]);
  v14[35] = &type metadata for Double;
  v14[36] = &protocol witness table for Double;
  v14[31] = &protocol witness table for Double;
  v14[32] = 0x4020000000000000;
  v14[30] = &type metadata for Double;
  v14[27] = 0x4024000000000000;
  v14[25] = &type metadata for Double;
  v14[26] = &protocol witness table for Double;
  v14[21] = &protocol witness table for Double;
  v14[22] = 0x402C000000000000;
  v14[20] = &type metadata for Double;
  v14[16] = &protocol witness table for Double;
  v14[17] = 0;
  v14[15] = &type metadata for Double;
  v14[11] = &protocol witness table for Double;
  v14[12] = 0;
  v14[10] = &type metadata for Double;
  v14[6] = &protocol witness table for Double;
  v14[7] = 0x4010000000000000;
  v14[5] = &type metadata for Double;
  v14[2] = 0x4010000000000000;
  sub_10074A784();
}

uint64_t sub_1001C1B28(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_10000C518(&unk_100923210);
    sub_1007526C4();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {

      return sub_10000C8CC(v5, &unk_100923960);
    }

    else
    {
      sub_1003C0E00(a2, 1, v7, v5);

      return (*(v9 + 8))(v5, v8);
    }
  }

  return result;
}

uint64_t type metadata accessor for RibbonBarItemCollectionViewCell()
{
  result = qword_10092C048;
  if (!qword_10092C048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001C1DD0()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1001C1EB8()
{
  sub_100743204();
  sub_1007433C4();
  sub_1001C3884(&qword_100925570, &type metadata accessor for ArtworkView);
  return sub_100744274();
}

uint64_t sub_1001C1F50(uint64_t a1)
{
  result = sub_1001C3884(&qword_10092C058, type metadata accessor for RibbonBarItemCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

void *sub_1001C1FA8(unint64_t a1, uint64_t a2, double a3, double a4)
{
  v10 = sub_100750304();
  v115 = *(v10 - 8);
  v116 = v10;
  __chkstk_darwin(v10);
  v114 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100750B04();
  v118 = *(v12 - 8);
  v119 = v12;
  __chkstk_darwin(v12);
  v117 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_10000C518(&qword_10092C060);
  v14 = *(v142 - 8);
  __chkstk_darwin(v142);
  v141 = &v113 - v15;
  v140 = sub_100750954();
  v16 = *(v140 - 8);
  __chkstk_darwin(v140);
  v139 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v138 = &v113 - v19;
  __chkstk_darwin(v20);
  v137 = &v113 - v21;
  __chkstk_darwin(v22);
  v136 = &v113 - v23;
  __chkstk_darwin(v24);
  v135 = &v113 - v25;
  __chkstk_darwin(v26);
  v134 = &v113 - v27;
  v133 = sub_100750BD4();
  v28 = *(v133 - 8);
  __chkstk_darwin(v133);
  *&v153 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_10074A7B4();
  v30 = *(v144 - 8);
  __chkstk_darwin(v144);
  v32 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v113 - v34;
  __chkstk_darwin(v36);
  v121 = &v113 - v37;
  __chkstk_darwin(v38);
  v122 = &v113 - v39;
  if (a1 >> 62)
  {
LABEL_55:
    v40 = sub_100754664();
  }

  else
  {
    v40 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v145 = a2;
  if (v40)
  {
    v152 = v14;
    v175 = _swiftEmptyArrayStorage;
    v143 = v40;
    sub_10001E46C(0, v40 & ~(v40 >> 63), 0);
    if (v143 < 0)
    {
      __break(1u);
LABEL_57:
      swift_once();
      goto LABEL_43;
    }

    v130 = v35;
    v131 = v32;
    v35 = v175;
    v4 = JUMeasuringSizeExpanded[0];
    v5 = JUMeasuringSizeExpanded[1];
    v41 = sub_100016C60(0, &qword_100923AB0);
    v42 = v30;
    v43 = 0;
    v44 = a1;
    v128 = a1 & 0xC000000000000001;
    v129 = v41;
    v120 = v42;
    v126 = (v42 + 32);
    v127 = v16 + 8;
    v124 = (v152 + 8);
    v125 = (v28 + 16);
    v123 = (v28 + 8);
    v132 = a1;
    v16 += 8;
    do
    {
      if (v128)
      {
        v45 = sub_100754574();
      }

      else
      {
        v45 = *(v44 + 8 * v43 + 32);
      }

      v152 = v35;
      v46 = sub_1007446E4();
      v148 = v47;
      v149 = v46;
      v48 = sub_1007446F4();
      if (v48)
      {
        sub_10074F2A4();
        v50 = v49;
        v52 = v51;

        v146 = v52;
        v147 = v50;
      }

      else
      {
        v146 = 0;
        v147 = 0;
      }

      v151 = v45;
      v53 = sub_1007446F4();
      if (v53)
      {
      }

      if (qword_100921488 != -1)
      {
        swift_once();
      }

      v54 = sub_100750534();
      sub_10000D0FC(v54, qword_100981AD0);
      v55 = sub_100753C14();
      v56 = v139;
      sub_100750944();
      v57 = v138;
      v150 = v55;
      sub_100750934();
      v58 = *v16;
      v59 = v140;
      (*v16)(v56, v140);
      v60 = v137;
      sub_100750894();
      v58(v57, v59);
      v61 = v136;
      sub_1007508F4();
      v58(v60, v59);
      v62 = v135;
      sub_1007508E4();
      v58(v61, v59);
      sub_100750904();
      v58(v62, v59);
      v63 = v145;
      sub_100750BB4();
      sub_100750BE4();
      if (sub_100753804())
      {
        v64 = v131;
        sub_1001C1510(v63, v131);
        v65 = v130;
      }

      else
      {
        v65 = v130;
        v64 = v131;
        if (v48)
        {
          sub_100753B74();
          v174 = &protocol witness table for Double;
          *(&v173 + 1) = &type metadata for Double;
          v171 = &protocol witness table for Double;
          *&v172 = 0x4020000000000000;
          v170 = &type metadata for Double;
          v169[0] = 0x4024000000000000;
          v168 = &protocol witness table for Double;
          v167 = &type metadata for Double;
          v165 = &protocol witness table for Double;
          v166 = 0x4028000000000000;
          v164 = &type metadata for Double;
          v162 = &protocol witness table for Double;
          v163 = 0x401C000000000000;
          v161 = &type metadata for Double;
          v159 = &protocol witness table for Double;
          v160 = 0x401C000000000000;
          v158 = &type metadata for Double;
          v156 = &protocol witness table for Double;
          v157 = 0;
          v155 = &type metadata for Double;
          v154 = 0;
        }

        else
        {
          v174 = &protocol witness table for Double;
          *(&v173 + 1) = &type metadata for Double;
          v171 = &protocol witness table for Double;
          *&v172 = 0x4020000000000000;
          v170 = &type metadata for Double;
          v169[0] = 0x4024000000000000;
          v168 = &protocol witness table for Double;
          v167 = &type metadata for Double;
          v165 = &protocol witness table for Double;
          v166 = 0x4024000000000000;
          v164 = &type metadata for Double;
          v162 = &protocol witness table for Double;
          v163 = 0x401C000000000000;
          v161 = &type metadata for Double;
          v159 = &protocol witness table for Double;
          v160 = 0x401C000000000000;
          v158 = &type metadata for Double;
          v156 = &protocol witness table for Double;
          v157 = 0x4024000000000000;
          v155 = &type metadata for Double;
          v154 = 0x4024000000000000;
        }

        sub_10074A784();
      }

      (*v126)(v65, v64, v144);
      if (v53)
      {
        v66 = sub_100744D34();
        swift_allocObject();
        v67 = sub_100744D24();
        *(&v173 + 1) = v66;
        v174 = sub_1001C3884(&qword_100923048, &type metadata accessor for EmptyPlaceable);
        *&v172 = v67;
      }

      else
      {
        v174 = 0;
        v172 = 0u;
        v173 = 0u;
      }

      v68 = v133;
      v170 = v133;
      v171 = &protocol witness table for LabelPlaceholder;
      v69 = sub_10000D134(v169);
      v70 = v153;
      (*v125)(v69, v153, v68);
      sub_10074A7D4();
      swift_allocObject();
      *&v172 = sub_10074A7C4();
      sub_1001C3884(&qword_10092C068, &type metadata accessor for RibbonBarItemCellLayout);
      v71 = v141;
      sub_100750594();
      swift_getOpaqueTypeConformance2();
      v72 = v142;
      sub_100751254();
      v74 = v73;

      (*v124)(v71, v72);
      (*v123)(v70, v68);
      v35 = v152;
      v175 = v152;
      v76 = *(v152 + 2);
      v75 = *(v152 + 3);
      if (v76 >= v75 >> 1)
      {
        sub_10001E46C((v75 > 1), v76 + 1, 1);
        v35 = v175;
      }

      ++v43;
      *(v35 + 2) = v76 + 1;
      *&v35[8 * v76 + 32] = v74;
      a2 = v63;
      v44 = v132;
    }

    while (v143 != v43);
    v30 = v120;
  }

  else
  {
    v35 = _swiftEmptyArrayStorage;
  }

  v77 = v121;
  if (sub_100753804())
  {
    sub_1001C1510(a2, v77);
  }

  else
  {
    sub_1001C1848();
  }

  a1 = v122;
  v78 = v77;
  v79 = v144;
  (*(v30 + 32))(v122, v78, v144);
  sub_10074A7A4();
  (*(v30 + 8))(a1, v79);
  v30 = *(v35 + 2);
  if (!v30)
  {
    goto LABEL_51;
  }

  v32 = 0;
  v80 = 0.0;
  v14 = &unk_1009231A0;
  v28 = &unk_1007A5810;
  v153 = xmmword_1007A5CF0;
  while (1)
  {
    if (v32 >= *(v35 + 2))
    {
      __break(1u);
      goto LABEL_55;
    }

    v81 = *&v35[8 * v32 + 32];
    v5 = v80 + v81;
    if (v80 + v81 == a3)
    {
      goto LABEL_51;
    }

    if (v80 + v81 >= a3)
    {
      break;
    }

    ++v32;
    sub_10074A7D4();
    sub_10074A754();
    sub_100751034();
    sub_10000C518(&unk_1009231A0);
    a2 = swift_allocObject();
    *(a2 + 16) = v153;
    v82 = v145;
    *(a2 + 32) = v145;
    v83 = v82;
    a1 = sub_100751044();
    sub_100753454();
    v4 = v84;

    v80 = v5 + v4;
    if (v30 == v32)
    {
      goto LABEL_51;
    }
  }

  sub_10000C888(&v172, *(&v173 + 1));
  a2 = v145;
  sub_100750574();
  v86 = a3 + a4 + v85;
  if (v86 <= v5)
  {
LABEL_51:
    v107 = v35;
    goto LABEL_52;
  }

  v16 = v35;
  a3 = v86 - v5;
  v4 = (v32 + 1);
  v5 = (v86 - v5) / v4 * 0.5;
  if (qword_100921488 != -1)
  {
    goto LABEL_57;
  }

LABEL_43:
  v87 = sub_100750534();
  v88 = sub_10000D0FC(v87, qword_100981AD0);
  v89 = v114;
  (*(*(v87 - 8) + 16))(v114, v88, v87);
  v91 = v115;
  v90 = v116;
  (*(v115 + 104))(v89, enum case for FontSource.useCase(_:), v116);
  v170 = v90;
  v171 = &protocol witness table for FontSource;
  v92 = sub_10000D134(v169);
  (*(v91 + 16))(v92, v89, v90);
  v93 = v117;
  sub_100750B14();
  (*(v91 + 8))(v89, v90);
  sub_100751034();
  sub_10000C518(&unk_1009231A0);
  v94 = swift_allocObject();
  *(v94 + 16) = v153;
  *(v94 + 32) = a2;
  v95 = a2;
  v96 = sub_100751044();
  v97 = v119;
  sub_100750544();
  v99 = v98;

  (*(v118 + 8))(v93, v97);
  v100 = (a3 + v5 + v99) / v4;
  v101 = swift_allocObject();
  *(v101 + 16) = v153;
  *(v101 + 32) = v95;
  v102 = v95;
  v103 = sub_100751044();
  sub_100753454();
  v105 = v104;

  if (v100 < v105)
  {
    v105 = v100;
  }

  v106 = *(v16 + 2);
  if (v106)
  {
    v169[0] = _swiftEmptyArrayStorage;
    sub_10001E46C(0, v106, 0);
    v107 = v169[0];
    v108 = *(v169[0] + 16);
    v109 = 32;
    do
    {
      v110 = *&v16[v109];
      v169[0] = v107;
      v111 = v107[3];
      if (v108 >= v111 >> 1)
      {
        sub_10001E46C((v111 > 1), v108 + 1, 1);
        v107 = v169[0];
      }

      v107[2] = v108 + 1;
      *&v107[v108 + 4] = v105 + v110;
      v109 += 8;
      ++v108;
      --v106;
    }

    while (v106);
  }

  else
  {

    v107 = _swiftEmptyArrayStorage;
  }

LABEL_52:
  sub_10000C620(&v172);
  return v107;
}

void sub_1001C2EB0()
{
  v1 = v0;
  v2 = sub_10074AB44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_itemLayoutContext;
  v10 = sub_1007469A4();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_titleLabel;
  if (qword_100921488 != -1)
  {
    swift_once();
  }

  v12 = sub_100750534();
  v13 = sub_10000D0FC(v12, qword_100981AD0);
  v14 = *(v12 - 8);
  (*(v14 + 16))(v8, v13, v12);
  (*(v14 + 56))(v8, 0, 1, v12);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v15 = objc_allocWithZone(sub_100745C84());
  *(v1 + v11) = sub_100745C74();
  v16 = OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_shadowView;
  sub_100743034();
  *(v1 + v16) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_roundedCornerView;
  sub_100746ED4();
  *(v1 + v17) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v18 = v1 + OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_artworkSize;
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_hasArtwork) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_clickAction) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_objectGraph) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_gestureRecognizer) = 0;
  v19 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_tapAction);
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_artworkView;
  sub_1007433C4();
  *(v1 + v20) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_100754644();
  __break(1u);
}

double sub_1001C3210(uint64_t a1, void *a2)
{
  v3 = sub_10000C518(&qword_10092C060);
  v55 = *(v3 - 8);
  v56 = v3;
  __chkstk_darwin(v3);
  v54 = v44 - v4;
  v5 = sub_10074A7B4();
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v48 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v52 = v44 - v8;
  v9 = sub_100750954();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v44 - v14;
  __chkstk_darwin(v16);
  v18 = v44 - v17;
  __chkstk_darwin(v19);
  v21 = v44 - v20;
  __chkstk_darwin(v22);
  v24 = v44 - v23;
  __chkstk_darwin(v25);
  v46 = v44 - v26;
  v53 = sub_100750BD4();
  v51 = *(v53 - 8);
  *&v27 = __chkstk_darwin(v53).n128_u64[0];
  v45 = v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = [a2 traitCollection];
  v44[2] = sub_1007446E4();
  v44[1] = v30;
  sub_100016C60(0, &qword_100923AB0);
  if (qword_100921488 != -1)
  {
    swift_once();
  }

  v31 = sub_100750534();
  sub_10000D0FC(v31, qword_100981AD0);
  v32 = sub_100753C14();
  sub_100750944();
  v47 = v32;
  sub_100750934();
  v33 = *(v10 + 8);
  v33(v12, v9);
  sub_100750894();
  v33(v15, v9);
  sub_1007508F4();
  v33(v18, v9);
  sub_1007508E4();
  v33(v21, v9);
  sub_100750904();
  v33(v24, v9);
  sub_100750BB4();
  v34 = v45;
  sub_100750BE4();
  if (sub_100753804())
  {
    v35 = v48;
    sub_1001C1510(v29, v48);
  }

  else
  {
    v35 = v48;
    sub_1001C1848();
  }

  (*(v49 + 32))(v52, v35, v50);
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v36 = v53;
  v57[3] = v53;
  v57[4] = &protocol witness table for LabelPlaceholder;
  v37 = sub_10000D134(v57);
  v38 = v51;
  (*(v51 + 16))(v37, v34, v36);
  sub_10074A7D4();
  swift_allocObject();
  *&v58 = sub_10074A7C4();
  sub_1001C3884(&qword_10092C068, &type metadata accessor for RibbonBarItemCellLayout);
  v39 = v54;
  sub_100750594();
  swift_getOpaqueTypeConformance2();
  v40 = v56;
  sub_100751254();
  v42 = v41;

  (*(v55 + 8))(v39, v40);
  (*(v38 + 8))(v34, v36);
  return v42;
}

uint64_t sub_1001C3884(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1001C38CC(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension26SearchResultBackgroundView_borderColor);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension26SearchResultBackgroundView_borderColor) = a1;
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    v7 = v3;
    goto LABEL_8;
  }

  v7 = v3;
  if (!v3)
  {
    a1 = a1;
    goto LABEL_8;
  }

  sub_10000D198();
  a1 = a1;
  v4 = v7;
  v5 = sub_100753FC4();

  if ((v5 & 1) == 0)
  {
LABEL_8:
    sub_1001C3C14();

    v6 = v7;
    goto LABEL_9;
  }

  v6 = v4;
LABEL_9:
}

uint64_t sub_1001C39AC(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension26SearchResultBackgroundView_backgroundGradientColors);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension26SearchResultBackgroundView_backgroundGradientColors) = result;
  if (!result)
  {
    if (!v2)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (!v2 || (v3 = , v4 = sub_10011CDF0(v3, v2), , (v4 & 1) == 0))
  {
LABEL_6:
    sub_1001C3D1C();
  }
}

void sub_1001C3A44(void *a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for SearchResultBackgroundView();
  objc_msgSendSuper2(&v10, "applyLayoutAttributes:", a1);
  type metadata accessor for SearchCollectionLayoutAttributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    v6 = [v1 layer];
    [v6 setCornerRadius:*(v4 + OBJC_IVAR____TtC22SubscribePageExtension32SearchCollectionLayoutAttributes_cornerRadius)];

    [v1 setBackgroundColor:*(v4 + OBJC_IVAR____TtC22SubscribePageExtension32SearchCollectionLayoutAttributes_backgroundColor)];
    v7 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension32SearchCollectionLayoutAttributes_borderColor);
    v8 = v7;
    sub_1001C38CC(v7);

    sub_1001C39AC(v9);
  }
}

void sub_1001C3BBC(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for SearchResultBackgroundView();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  sub_1001C3C14();
  sub_1001C3D1C();
}

void sub_1001C3C14()
{
  v1 = [v0 layer];
  v2 = v1;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension26SearchResultBackgroundView_borderColor;
  v4 = 1.0;
  if (!*&v0[OBJC_IVAR____TtC22SubscribePageExtension26SearchResultBackgroundView_borderColor])
  {
    v4 = 0.0;
  }

  [v1 setBorderWidth:v4];

  v5 = [v0 layer];
  v6 = *&v0[v3];
  if (v6)
  {
    v7 = [v6 CGColor];
  }

  else
  {
    v7 = 0;
  }

  [v5 setBorderColor:v7];

  v8 = [v0 layer];
  [v8 setNeedsDisplay];
}

char *sub_1001C3D1C()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension26SearchResultBackgroundView_backgroundGradientColors];
  v2 = &OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_clickAction;
  if (!v1)
  {
    v5 = OBJC_IVAR____TtC22SubscribePageExtension26SearchResultBackgroundView_gradientLayer;
    v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension26SearchResultBackgroundView_gradientLayer];
    if (v6)
    {
      [v6 removeFromSuperlayer];
      v7 = *&v0[v5];
    }

    else
    {
      v7 = 0;
    }

    *&v0[v5] = 0;

    goto LABEL_25;
  }

  v3 = OBJC_IVAR____TtC22SubscribePageExtension26SearchResultBackgroundView_gradientLayer;
  v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension26SearchResultBackgroundView_gradientLayer];
  if (v4)
  {
  }

  else
  {
    v8 = objc_allocWithZone(CAGradientLayer);

    v9 = [v8 init];
    v10 = [v0 layer];
    [v10 addSublayer:v9];

    v11 = *&v0[v3];
    *&v0[v3] = v9;

    v4 = *&v0[v3];
    if (!v4)
    {
LABEL_19:

      goto LABEL_25;
    }
  }

  v12 = v4;
  v13 = [v0 layer];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [v12 setFrame:{v15, v17, v19, v21}];
  v22 = *&v0[v3];
  if (!v22)
  {
    goto LABEL_19;
  }

  if (v1 >> 62)
  {
    v23 = sub_100754664();
    if (v23)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v23 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
LABEL_10:
      v35 = v0;
      v38 = _swiftEmptyArrayStorage;
      v24 = v22;
      result = sub_10001E288(0, v23 & ~(v23 >> 63), 0);
      if (v23 < 0)
      {
        __break(1u);
        return result;
      }

      v26 = 0;
      v27 = v38;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v28 = sub_100754574();
        }

        else
        {
          v28 = *(v1 + 8 * v26 + 32);
        }

        v29 = v28;
        v30 = [v28 CGColor];
        type metadata accessor for CGColor(0);
        v37 = v31;

        *&v36 = v30;
        v38 = v27;
        v33 = v27[2];
        v32 = v27[3];
        if (v33 >= v32 >> 1)
        {
          sub_10001E288((v32 > 1), v33 + 1, 1);
          v0 = v35;
          v27 = v38;
        }

        ++v26;
        v27[2] = v33 + 1;
        sub_10000C610(&v36, &v27[4 * v33 + 4]);
      }

      while (v23 != v26);

      v2 = &OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_clickAction;
      goto LABEL_24;
    }
  }

  v24 = v22;

LABEL_24:
  isa = sub_100753294().super.isa;

  [v24 setColors:isa];

LABEL_25:
  result = *&v0[v2[17]];
  if (result)
  {
    return [result setNeedsDisplay];
  }

  return result;
}

id sub_1001C40E0(void *a1)
{
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension26SearchResultBackgroundView_borderColor] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension26SearchResultBackgroundView_backgroundGradientColors] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension26SearchResultBackgroundView_gradientLayer] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SearchResultBackgroundView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1001C4194()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchResultBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t SmallGameCenterPlayerLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v106 = a1;
  v102 = a2;
  v101 = sub_100750354();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_100750F54();
  v93 = *(v95 - 8);
  __chkstk_darwin(v95);
  v96 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v92 = &v66 - v15;
  v98 = sub_100750F84();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v94 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_100748884();
  v109 = *(v105 - 8);
  v17 = v109;
  __chkstk_darwin(v105);
  v88 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1007488A4();
  v108 = *(v104 - 8);
  __chkstk_darwin(v104);
  v85 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1007488C4();
  v107 = *(v75 - 8);
  v20 = v107;
  __chkstk_darwin(v75);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v22;
  v90 = sub_1007488F4();
  v91 = *(v90 - 8);
  __chkstk_darwin(v90);
  v89 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C888(v6 + 21, v6[24]);
  v123.origin.x = a3;
  v123.origin.y = a4;
  v123.size.width = a5;
  v123.size.height = a6;
  CGRectGetMinX(v123);
  v124.origin.x = a3;
  v124.origin.y = a4;
  v124.size.width = a5;
  v124.size.height = a6;
  CGRectGetMinY(v124);
  sub_100753B24();
  sub_100750394();
  sub_10000C518(&qword_10092C0B8);
  v24 = *(sub_1007488D4() - 8);
  v86 = *(v24 + 72);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  v87 = v26;
  *(v26 + 16) = xmmword_1007A6580;
  v69 = v26 + v25;
  v103 = v7;
  v27 = v7[34];
  v28 = v7[35];
  v29 = sub_10000C888(v7 + 31, v27);
  v121 = v27;
  v122 = *(v28 + 8);
  v30 = sub_10000D134(&v120);
  (*(*(v27 - 8) + 16))(v30, v29, v27);
  v82 = enum case for _VerticalFlowLayout.Child.Placement.firstBaseline(_:);
  v31 = *(v20 + 104);
  v83 = v20 + 104;
  v84 = v31;
  v31(v22);
  v81 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.leading(_:);
  v32 = v108;
  v33 = *(v108 + 104);
  v79 = v108 + 104;
  v80 = v33;
  v34 = v85;
  v33(v85);
  v118 = &type metadata for Double;
  v119 = &protocol witness table for Double;
  v117 = 0;
  v78 = sub_10000C518(&unk_100931370);
  v77 = *(v17 + 72);
  v35 = v109;
  v36 = swift_allocObject();
  v76 = xmmword_1007A5A00;
  *(v36 + 16) = xmmword_1007A5A00;
  sub_100748854();
  v114 = v36;
  v73 = sub_1001C5D68(&qword_10092C0C0, &type metadata accessor for _VerticalFlowLayout.ExclusionCondition);
  v72 = sub_10000C518(&unk_100931380);
  v74 = sub_1001C4F00();
  v37 = v88;
  v38 = v105;
  sub_1007543A4();
  v39 = v103;
  v40 = v67;
  sub_1007488B4();
  v41 = *(v35 + 8);
  v109 = v35 + 8;
  v71 = v41;
  v41(v37, v38);
  v42 = *(v32 + 8);
  v108 = v32 + 8;
  v70 = v42;
  v43 = v34;
  v44 = v104;
  v42(v34, v104);
  v45 = *(v107 + 8);
  v107 += 8;
  v68 = v45;
  v46 = v75;
  v45(v40, v75);
  sub_1000F4268(&v117);
  sub_10000C620(&v120);
  v47 = v39;
  v48 = v39[29];
  v49 = v47[30];
  v50 = sub_10000C888(v47 + 26, v48);
  v121 = v48;
  v122 = *(v49 + 8);
  v51 = sub_10000D134(&v120);
  (*(*(v48 - 8) + 16))(v51, v50, v48);
  v84(v40, v82, v46);
  v80(v43, v81, v44);
  v119 = &protocol witness table for Double;
  v118 = &type metadata for Double;
  v117 = 0;
  v52 = swift_allocObject();
  *(v52 + 16) = v76;
  sub_100748854();
  v114 = v52;
  v53 = v105;
  sub_1007543A4();
  v54 = v103;
  sub_1007488B4();
  v71(v37, v53);
  v70(v43, v44);
  v68(v40, v46);
  sub_1000F4268(&v117);
  sub_10000C620(&v120);
  v55 = v89;
  sub_100748894();
  v56 = v90;
  v121 = v90;
  v122 = sub_1001C5D68(&qword_10092C0D0, &type metadata accessor for _VerticalFlowLayout);
  v57 = sub_10000D134(&v120);
  v58 = v91;
  (*(v91 + 16))(v57, v55, v56);
  sub_10000C824((v54 + 21), &v117);
  v59 = v54[5];
  v115 = &type metadata for CGFloat;
  v116 = &protocol witness table for CGFloat;
  v114 = v59;
  v60 = enum case for FlankedHorizontalLayout.ViewAlignment.center(_:);
  v61 = *(v93 + 104);
  v62 = v95;
  v61(v92, enum case for FlankedHorizontalLayout.ViewAlignment.center(_:), v95);
  v113 = 0;
  v112 = 0u;
  v111 = 0u;
  v110[3] = sub_1007507D4();
  v110[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v110);
  sub_1007507C4();
  v61(v96, v60, v62);
  v63 = v94;
  sub_100750F74();
  v64 = v99;
  sub_100750F64();
  (*(v100 + 8))(v64, v101);
  sub_100750314();
  (*(v97 + 8))(v63, v98);
  return (*(v58 + 8))(v55, v56);
}

unint64_t sub_1001C4F00()
{
  result = qword_10092C0C8;
  if (!qword_10092C0C8)
  {
    sub_10000C724(&unk_100931380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092C0C8);
  }

  return result;
}

void SmallGameCenterPlayerLayout.Metrics.avatarInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

uint64_t SmallGameCenterPlayerLayout.Metrics.aliasTopSpace.setter(__int128 *a1)
{
  sub_10000C620(v1 + 48);

  return sub_100012160(a1, v1 + 48);
}

uint64_t SmallGameCenterPlayerLayout.Metrics.displayNameTopSpace.setter(__int128 *a1)
{
  sub_10000C620(v1 + 88);

  return sub_100012160(a1, v1 + 88);
}

uint64_t SmallGameCenterPlayerLayout.Metrics.displayNameBottomSpace.setter(__int128 *a1)
{
  sub_10000C620(v1 + 128);

  return sub_100012160(a1, v1 + 128);
}

double SmallGameCenterPlayerLayout.measurements(fitting:in:)(uint64_t a1, double a2)
{
  swift_getObjectType();

  return sub_1001C51C4(a1, v2, a2);
}

double sub_1001C51C4(uint64_t a1, void *a2, double a3)
{
  v73 = a1;
  v75 = sub_100754724();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_100748884();
  v79 = *(v77 - 8);
  v6 = v79;
  __chkstk_darwin(v77);
  v66 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1007488A4();
  v80 = *(v76 - 8);
  __chkstk_darwin(v76);
  v59 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1007488C4();
  v78 = *(v55 - 8);
  v9 = v78;
  __chkstk_darwin(v55);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v11;
  v70 = sub_1007488F4();
  v71 = *(v70 - 8);
  __chkstk_darwin(v70);
  v69 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&qword_10092C0B8);
  v13 = *(sub_1007488D4() - 8);
  v67 = *(v13 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  v68 = v15;
  *(v15 + 16) = xmmword_1007A6580;
  v48 = v15 + v14;
  v16 = a2[34];
  v17 = a2[35];
  v18 = sub_10000C888(a2 + 31, v16);
  v86 = v16;
  v87 = *(v17 + 8);
  v19 = sub_10000D134(v85);
  (*(*(v16 - 8) + 16))(v19, v18, v16);
  v63 = enum case for _VerticalFlowLayout.Child.Placement.firstBaseline(_:);
  v20 = *(v9 + 104);
  v64 = v9 + 104;
  v65 = v20;
  v20(v11);
  v62 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.leading(_:);
  v21 = *(v80 + 104);
  v60 = v80 + 104;
  v61 = v21;
  v22 = v59;
  v23 = v76;
  v21(v59);
  v83 = &type metadata for Double;
  v84 = &protocol witness table for Double;
  v82 = 0;
  v58 = sub_10000C518(&unk_100931370);
  v57 = *(v6 + 72);
  v24 = v79;
  v51 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  v25 = swift_allocObject();
  v56 = xmmword_1007A5A00;
  *(v25 + 16) = xmmword_1007A5A00;
  sub_100748854();
  v81 = v25;
  v53 = sub_1001C5D68(&qword_10092C0C0, &type metadata accessor for _VerticalFlowLayout.ExclusionCondition);
  v52 = sub_10000C518(&unk_100931380);
  v54 = sub_1001C4F00();
  v26 = v66;
  v27 = v77;
  sub_1007543A4();
  v28 = v47;
  v29 = v22;
  sub_1007488B4();
  v30 = *(v24 + 8);
  v79 = v24 + 8;
  v50 = v30;
  v31 = v26;
  v30(v26, v27);
  v32 = *(v80 + 8);
  v80 += 8;
  v49 = v32;
  v32(v29, v23);
  v46 = *(v78 + 8);
  v78 += 8;
  v33 = v28;
  v34 = v55;
  v46(v28, v55);
  sub_1000F4268(&v82);
  sub_10000C620(v85);
  v36 = a2[29];
  v35 = a2[30];
  v37 = sub_10000C888(a2 + 26, v36);
  v86 = v36;
  v87 = *(v35 + 8);
  v38 = sub_10000D134(v85);
  (*(*(v36 - 8) + 16))(v38, v37, v36);
  v65(v33, v63, v34);
  v39 = v76;
  v61(v29, v62, v76);
  v84 = &protocol witness table for Double;
  v83 = &type metadata for Double;
  v82 = 0;
  v40 = swift_allocObject();
  *(v40 + 16) = v56;
  sub_100748854();
  v81 = v40;
  v41 = v77;
  sub_1007543A4();
  sub_1007488B4();
  v50(v31, v41);
  v49(v29, v39);
  v46(v33, v34);
  sub_1000F4268(&v82);
  sub_10000C620(v85);
  v42 = v69;
  sub_100748894();
  sub_1001C5D68(&qword_10092C0D8, &type metadata accessor for _VerticalFlowLayout);
  v43 = v70;
  sub_100750404();
  sub_10000C888(a2 + 16, a2[19]);
  v44 = v72;
  sub_100536120();
  sub_100750564();
  (*(v74 + 8))(v44, v75);
  (*(v71 + 8))(v42, v43);
  return a3;
}

uint64_t sub_1001C5B88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001C5BD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1001C5C6C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1001C5CA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001C5CF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001C5D68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001C5DB0()
{
  v1 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v1 - 8);
  v59 = v48 - v2;
  v3 = sub_10000C518(&unk_10092E4C0);
  __chkstk_darwin(v3 - 8);
  v5 = v48 - v4;
  v6 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v6 - 8);
  v8 = v48 - v7;
  v9 = sub_100752874();
  __chkstk_darwin(v9 - 8);
  v56 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100752614();
  v60 = *(v11 - 8);
  v61 = v11;
  __chkstk_darwin(v11);
  v58 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v62 = v48 - v14;
  v15 = sub_1007440E4();
  v63 = *(v15 - 8);
  __chkstk_darwin(v15);
  v57 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v64 = v48 - v18;
  v19 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_textField);
  swift_getObjectType();
  v20 = swift_conformsToProtocol2();
  v21 = 0xE600000000000000;
  v22 = 0x74696D627573;
  v23 = &enum case for SearchOrigin.userText(_:);
  if (v20 && v19)
  {
    v24 = v20;
    ObjectType = swift_getObjectType();
    v26 = v19;
    if (sub_10044C114(ObjectType, v24))
    {
      (*(v24 + 32))(ObjectType, v24);
      v21 = 0xE900000000000074;
      v22 = 0x6E694874736F6867;
      v23 = &enum case for SearchOrigin.ghostHint(_:);
    }

    else
    {
      v23 = &enum case for SearchOrigin.userText(_:);
    }
  }

  v27 = v64;
  (*(v63 + 104))(v64, *v23, v15);
  v28 = [v19 text];
  if (v28)
  {
    v29 = v28;
    v30 = sub_100753094();
    v32 = v31;

    v33 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v33 = v30 & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {
      v51 = sub_10000C518(&qword_10092C1F8);
      inited = swift_initStackObject();
      v53 = v5;
      v35 = inited;
      v50 = xmmword_1007A97A0;
      *(inited + 16) = xmmword_1007A97A0;
      v54 = v8;
      v55 = v15;
      *(inited + 32) = 0x79546E6F69746361;
      *(inited + 40) = 0xEA00000000006570;
      *(inited + 48) = v22;
      v49 = v22;
      *(inited + 56) = v21;
      *(inited + 72) = &type metadata for String;
      *(inited + 80) = 0x6570795465676170;
      *(inited + 88) = 0xE800000000000000;
      *(inited + 96) = 0x686372616553;
      *(inited + 104) = 0xE600000000000000;
      *(inited + 120) = &type metadata for String;
      *(inited + 128) = 0x6554686372616573;
      *(inited + 136) = 0xEA00000000006D72;
      *(inited + 144) = v30;
      *(inited + 152) = v32;
      *(inited + 168) = &type metadata for String;
      *(inited + 176) = 0x72556E6F69746361;
      *(inited + 216) = &type metadata for String;
      *(inited + 184) = 0xE90000000000006CLL;
      *(inited + 192) = 0;
      *(inited + 200) = 0xE000000000000000;

      sub_100414AE8(v35);
      swift_setDeallocating();
      v48[2] = sub_10000C518(&qword_10092C200);
      swift_arrayDestroy();
      sub_10000C518(&qword_10092C208);
      sub_100752C84();
      v52 = v30;
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1007A5620;
      sub_100752C44();
      sub_100752C74();
      sub_100752C54();
      sub_1001A994C(v36);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1007465E4();
      swift_allocObject();
      v48[1] = sub_1007465D4();
      v37 = swift_initStackObject();
      *(v37 + 16) = v50;
      *(v37 + 32) = 0x79546E6F69746361;
      v38 = v49;
      *(v37 + 40) = 0xEA00000000006570;
      *(v37 + 48) = v38;
      *(v37 + 56) = v21;
      *(v37 + 72) = &type metadata for String;
      *(v37 + 80) = 0x6570795465676170;
      *(v37 + 88) = 0xE800000000000000;
      *(v37 + 96) = 0x686372616553;
      *(v37 + 104) = 0xE600000000000000;
      *(v37 + 120) = &type metadata for String;
      *(v37 + 128) = 1836213620;
      *(v37 + 136) = 0xE400000000000000;
      *(v37 + 144) = v30;
      *(v37 + 152) = v32;
      *(v37 + 168) = &type metadata for String;
      *(v37 + 176) = 0x7954746567726174;
      *(v37 + 216) = &type metadata for String;
      *(v37 + 184) = 0xEA00000000006570;
      *(v37 + 192) = 0x6E6F74747562;
      *(v37 + 200) = 0xE600000000000000;

      sub_100414AE8(v37);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_100747B14();
      swift_allocObject();
      v51 = sub_100747B04();
      sub_10000C518(&unk_10092C210);
      sub_1007524D4();
      *(swift_allocObject() + 16) = xmmword_1007A6580;
      sub_100743EC4();
      sub_100743EC4();
      sub_100752864();
      v39 = v62;
      sub_100752604();
      v40 = sub_100741264();
      (*(*(v40 - 8) + 56))(v54, 1, 1, v40);
      v41 = v63;
      (*(v63 + 16))(v57, v64, v55);
      v42 = sub_1007440D4();
      (*(*(v42 - 8) + 56))(v53, 1, 1, v42);
      v44 = v60;
      v43 = v61;
      (*(v60 + 16))(v58, v39, v61);
      v45 = sub_100743FE4();
      (*(*(v45 - 8) + 56))(v59, 1, 1, v45);
      sub_1007440C4();
      swift_allocObject();

      v46 = sub_100744084();

      (*(v44 + 8))(v62, v43);
      (*(v41 + 8))(v64, v55);
      return v46;
    }

    (*(v63 + 8))(v64, v15);
  }

  else
  {
    (*(v63 + 8))(v27, v15);
  }

  return 0;
}

char *sub_1001C67FC(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_100752AC4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_scribbleInteraction] = 0;
  v8 = OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_onSnapshotDidUpdate;
  sub_10000C518(&unk_10092C220);
  swift_allocObject();
  *&v1[v8] = sub_100752F04();
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_textField] = a1;
  v1[OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_isTextExpansionDisabled] = 0;
  v1[OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_isPerformingUpdate] = 0;
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v9 = a1;
  v10 = objc_msgSendSuper2(&v15, "init");
  [v9 setDelegate:v10];
  [v9 addTarget:v10 action:"textFieldDidEdit:" forControlEvents:983040];
  v11 = [objc_allocWithZone(UIScribbleInteraction) initWithDelegate:v10];
  v12 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_scribbleInteraction];
  *&v10[OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_scribbleInteraction] = v11;
  v13 = v11;

  [v9 addInteraction:v13];
  sub_100752A44();
  sub_100753C74();

  (*(v5 + 8))(v7, v4);
  return v10;
}

void sub_1001C6A10(uint64_t a1)
{
  v2 = sub_100747B34();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_isPerformingUpdate;
  if ((*(a1 + OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_isPerformingUpdate) & 1) == 0)
  {
    *(a1 + OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_isPerformingUpdate) = 1;
    v7 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_textField);
    swift_getObjectType();
    v8 = swift_conformsToProtocol2();
    if (v8)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = v8;
      v36 = v5;
      ObjectType = swift_getObjectType();
      v13 = v10 + 8;
      v12 = *(v10 + 8);
      v14 = v7;
      v15 = v10;
      v16 = v14;
      v34 = ObjectType;
      v35 = v13;
      v32 = v15;
      v33 = v12;
      (v12)(ObjectType);
      if (v17)
      {
        v30 = v3;
        v31 = v2;
        v29 = v16;
        v18 = [v16 text];
        if (v18)
        {
          v19 = v18;
          v20 = sub_100753094();
          v22 = v21;
        }

        else
        {
          v20 = 0;
          v22 = 0;
        }

        v5 = v36;
        v37.value._countAndFlagsBits = v20;
        v37.value._object = v22;
        v23 = sub_100753134(v37);

        v3 = v30;
        if (v23)
        {
          v24 = v29;
          v33(v34, v32);
        }

        else
        {
        }

        v2 = v31;
      }

      else
      {

        v5 = v36;
      }
    }

    *(a1 + v6) = 0;
    v25 = [v7 text];
    if (v25)
    {
      v26 = v3;
      v27 = v25;
      sub_100753094();

      v3 = v26;
    }

    v28 = [v7 markedTextRange];
    if (v28)
    {
    }

    sub_100747B24();
    sub_100752EF4();
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1001C6D38(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = [a1 selectedTextRange];
  if (!v7)
  {
    v13 = 1;
    return v13 & 1;
  }

  v8 = v7;
  sub_1001C756C();
  v9 = [v8 end];
  v10 = [a1 endOfDocument];
  v11 = sub_100753FC4();

  v12 = a3 < 1 || sub_100753194() != 0;
  v14 = [a1 markedTextRange];
  if (v14)
  {
  }

  else if (!v12 && (v11 & 1) != 0)
  {
    v15 = 1;
    goto LABEL_10;
  }

  v15 = 0;
LABEL_10:
  v16 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_scribbleInteraction);
  v17 = v15;
  if (v16)
  {
    v17 = v15 | [v16 isHandlingWriting];
  }

  *(v4 + OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_isTextExpansionDisabled) = v17 & 1;
  swift_getObjectType();
  v18 = swift_conformsToProtocol2();
  if (v18)
  {
    v19 = a1 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = v15;
  }

  if (v20 == 1)
  {
    v21 = v18;
    ObjectType = swift_getObjectType();
    v23 = a1;
    v24 = sub_10044C114(ObjectType, v21);
    if (v24)
    {
      (*(v21 + 16))(0, 0, ObjectType, v21);
    }

    v13 = !v24;
  }

  else
  {
    v13 = 1;
  }

  return v13 & 1;
}

uint64_t sub_1001C714C(uint64_t a1, uint64_t a2)
{
  if (*(*v2 + OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_isTextExpansionDisabled))
  {
    return 0;
  }

  v5 = *(*v2 + OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_textField);
  swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  if (!v6 || v5 == 0)
  {
    return 0;
  }

  v8 = v6;
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 40);
  v11 = v5;
  v12 = v10(a1, a2, ObjectType, v8);

  return v12 & 1;
}

void sub_1001C725C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100747B34();
  __chkstk_darwin(v9);
  v13 = OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_isPerformingUpdate;
  if ((*(a1 + OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_isPerformingUpdate) & 1) == 0)
  {
    v38 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = v12;
    v40 = v10;
    *(a1 + OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_isPerformingUpdate) = 1;
    ObjectType = swift_getObjectType();
    v15 = *(a3 + 16);

    v15(a4, a5, ObjectType, a3);
    v16 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_textField);
    swift_getObjectType();
    v17 = swift_conformsToProtocol2();
    if (v17)
    {
      v18 = v16 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      v19 = v17;
      v20 = swift_getObjectType();
      v21 = *(v19 + 8);
      v22 = v16;
      v37 = v21;
      v21(v20, v19);
      if (v23)
      {
        v35 = v20;
        v36 = v22;
        v24 = [v22 text];
        if (v24)
        {
          v25 = v24;
          v26 = sub_100753094();
          v28 = v27;
        }

        else
        {
          v26 = 0;
          v28 = 0;
        }

        v41.value._countAndFlagsBits = v26;
        v41.value._object = v28;
        v29 = sub_100753134(v41);

        v30 = v36;
        if (v29)
        {
          v37(v35, v19);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    *(a1 + v13) = 0;
    v31 = [v16 text];
    if (v31)
    {
      v32 = v31;
      sub_100753094();
    }

    v33 = [v16 markedTextRange];
    if (v33)
    {
    }

    v34 = v38;
    sub_100747B24();
    sub_100752EF4();
    (*(v39 + 8))(v34, v40);
  }
}

unint64_t sub_1001C756C()
{
  result = qword_1009327F0;
  if (!qword_1009327F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009327F0);
  }

  return result;
}

id sub_1001C75CC()
{
  v0 = sub_100746C54();
  sub_10014A070(v0, v1);
  v2 = sub_100746C44();

  return sub_10014A07C(v2, v3);
}

double sub_1001C76B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = sub_10074A5B4();
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v39 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10074A5D4();
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v40 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10074CD14();
  v45 = *(v43 - 8);
  __chkstk_darwin(v43);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100038D38();
  if (qword_100921290 != -1)
  {
    swift_once();
  }

  v35 = sub_100750534();
  sub_10000D0FC(v35, qword_1009814E8);
  v11 = [a4 traitCollection];
  v44 = a4;
  v12 = v11;
  v13 = sub_100753C14();

  sub_100746C54();
  v14 = sub_10074F3F4();
  v49[3] = v14;
  v15 = sub_1001C7CF8(&qword_10092AC70, &type metadata accessor for Feature);
  v34[1] = a1;
  v16 = v15;
  v49[4] = v15;
  v17 = sub_10000D134(v49);
  v18 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v19 = *(*(v14 - 8) + 104);
  v19(v17, enum case for Feature.measurement_with_labelplaceholder(_:), v14);
  v20 = v13;
  v34[0] = v10;
  v21 = v20;
  sub_10074FC74();
  sub_10000C620(v49);
  v36 = v21;
  sub_10074CD04();
  sub_10074CCE4();
  v22 = *(v45 + 8);
  v45 += 8;
  v22(v9, v43);
  if (qword_100921298 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v35, qword_100981500);
  v23 = [v44 traitCollection];
  v24 = sub_100753C14();

  sub_100746C44();
  v48[3] = v14;
  v48[4] = v16;
  v25 = sub_10000D134(v48);
  v19(v25, v18, v14);
  v26 = v24;
  sub_10074FC74();
  sub_10000C620(v48);
  sub_10074CD04();
  sub_10074CCE4();
  v22(v9, v43);
  if (qword_100920348 != -1)
  {
    swift_once();
  }

  v27 = v38;
  v28 = sub_10000D0FC(v38, qword_10097DCE0);
  (*(v37 + 16))(v39, v28, v27);
  sub_10000C824(v49, v47);
  sub_10000C824(v48, v46);
  v29 = v40;
  sub_10074A5C4();
  sub_1001C7CF8(&unk_100933220, &type metadata accessor for PrivacyDefinitionLayout);
  v30 = v42;
  sub_100750404();
  v32 = v31;

  (*(v41 + 8))(v29, v30);
  sub_10000C620(v48);
  sub_10000C620(v49);
  return v32;
}

uint64_t sub_1001C7CF8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001C7D54()
{
  result = qword_10092C280;
  if (!qword_10092C280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092C280);
  }

  return result;
}

uint64_t sub_1001C7DF0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v71 = a5;
  v9 = sub_100742CF4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1007493D4();
  v67 = *(v13 - 8);
  v68 = v13;
  __chkstk_darwin(v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_10074A304();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100752614();
  __chkstk_darwin(v18 - 8);
  v66 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v20 - 8);
  v63 = &v55 - v21;
  v22 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v22 - 8);
  v70 = &v55 - v23;
  v62 = sub_10074F4D4();
  v61 = *(v62 - 1);
  __chkstk_darwin(v62);
  v69 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v25 - 8);
  v72 = &v55 - v26;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v55 = v17;
    v56 = v10;
    v57 = v15;
    v58 = v9;
    v59 = v12;
    v60 = *(result + 32);

    v28 = sub_1001C8814(a1, a4);
    if (v29)
    {
      v30 = 0;
    }

    else
    {
      v30 = v28;
    }

    v31 = sub_10041434C(_swiftEmptyArrayStorage);
    v32 = sub_1006B94B0(a6, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000012, 0x800000010076FAC0);
    v33 = objc_allocWithZone(type metadata accessor for ScreenshotsGalleryViewController());
    v34 = OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_fullScreenshotFetcher;
    type metadata accessor for ScreenshotFetcher();
    v35 = swift_allocObject();
    *(v35 + 16) = sub_10041434C(_swiftEmptyArrayStorage);
    *(v35 + 32) = 0;
    swift_unknownObjectWeakInit();
    *(v35 + 32) = 0;
    swift_unknownObjectWeakAssign();
    *&v33[v34] = v35;
    v36 = OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_galleryLayout;
    *&v33[v36] = [objc_allocWithZone(type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout()) init];
    *&v33[OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_artworks] = a4;
    *&v33[OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_platform] = v71;
    *&v33[OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_placeholderImages] = v31;
    sub_1007442C4();
    sub_100752764();

    sub_100752D34();
    *&v33[OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_artworkLoader] = v75;
    *&v33[OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_selectedIndex] = v30;
    v37 = *&v33[v36];

    v38 = sub_10062DFAC(v37, v32);

    v39 = v38;
    v40 = [v39 navigationItem];
    v41 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v39 action:"dismissFrom:"];
    [v40 setRightBarButtonItem:v41];

    *(*&v39[OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_fullScreenshotFetcher] + 32) = &off_10086AF38;
    swift_unknownObjectWeakAssign();

    type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
    v42 = type metadata accessor for StoreNavigationController();
    v43 = objc_allocWithZone(v42);
    *&v43[OBJC_IVAR____TtC22SubscribePageExtension25StoreNavigationController_objectGraph] = a6;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v78.receiver = v43;
    v78.super_class = v42;

    v45 = objc_msgSendSuper2(&v78, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
    [v45 setDelegate:v45];
    [v45 setModalPresentationStyle:0];
    sub_10000C518(&unk_1009231A0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1007A5CF0;
    *(v46 + 32) = v39;
    sub_100016C60(0, &qword_10092B0C0);
    isa = sub_100753294().super.isa;

    [v45 setViewControllers:isa];

    v48 = sub_10000C518(&unk_100923210);
    v49 = v72;
    v71 = a6;
    sub_1007526C4();
    v50 = *(v48 - 8);
    if ((*(v50 + 48))(v49, 1, v48) == 1)
    {

      return sub_10000C8CC(v72, &unk_100923960);
    }

    else
    {
      v77 = 0;
      v75 = 0u;
      v76 = 0u;
      (*(v61 + 104))(v69, enum case for FlowPage.viewController(_:), v62);
      v51 = sub_100741264();
      (*(*(v51 - 8) + 56))(v70, 1, 1, v51);
      v52 = sub_100743FE4();
      (*(*(v52 - 8) + 56))(v63, 1, 1, v52);
      v74 = v42;
      v73 = v45;
      v62 = v45;
      sub_1007525F4();
      (*(v64 + 104))(v55, enum case for FlowPresentationContext.infer(_:), v65);
      (*(v67 + 104))(v57, enum case for FlowAnimationBehavior.infer(_:), v68);
      (*(v56 + 104))(v59, enum case for FlowOrigin.inapp(_:), v58);
      sub_100752B44();
      sub_100742CD4();
      swift_allocObject();
      v53 = sub_100742C84();
      v54 = v72;
      sub_1003C1424(v53, 1, v71, v72);

      return (*(v50 + 8))(v54, v48);
    }
  }

  return result;
}

unint64_t sub_1001C8814(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_18:
    v4 = sub_100754664();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      sub_100754574();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    sub_10074F3D4();
    sub_1001CB934(&unk_100928A50, &type metadata accessor for Artwork);
    v6 = sub_100753014();

    if (v6)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_17;
    }
  }
}

unint64_t sub_1001C8980(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v6 = sub_100754664();
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = sub_100754574();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = *(a2 + 8 * v7 + 32);
    }

    v9 = v8;
    sub_100016C60(0, a3);
    v10 = sub_100753FC4();

    if (v10)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_16;
    }
  }
}

void sub_1001C8A88(char a1)
{
  v2 = sub_10000C518(&unk_10092E450);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v6 - v4;
  if (a1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      sub_100746914();

      memset(v6, 0, sizeof(v6));
      sub_10074C914();

      sub_10000C8CC(v6, &unk_100923520);
      (*(v3 + 8))(v5, v2);
    }
  }
}

void sub_1001C8BE0(char a1)
{
  v2 = sub_10000C518(&unk_10092E450);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v6 - v4;
  if (a1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_100747C04();
      memset(v6, 0, sizeof(v6));
      sub_10074C914();

      sub_10000C8CC(v6, &unk_100923520);
      (*(v3 + 8))(v5, v2);
    }
  }
}

uint64_t sub_1001C8D20()
{
  swift_weakDestroy();
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void sub_1001C8DA4(void *a1, uint64_t a2, uint64_t a3)
{
  v104 = a3;
  v5 = sub_1007469A4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v101 = v7;
  v102 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074E984();
  v107 = *(v8 - 8);
  __chkstk_darwin(v8);
  v98 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_10000C518(&qword_10092C380);
  __chkstk_darwin(v106);
  v108 = &v90 - v10;
  v11 = sub_10000C518(&unk_10092E450);
  v105 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v90 - v12;
  v14 = sub_10000C518(&qword_100923228);
  __chkstk_darwin(v14);
  v16 = &v90 - v15;
  v17 = sub_10000C518(&unk_10093D6E0);
  __chkstk_darwin(v17 - 8);
  v19 = &v90 - v18;
  v20 = sub_10000C518(&unk_100933370);
  __chkstk_darwin(v20 - 8);
  v100 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v109 = &v90 - v23;
  __chkstk_darwin(v24);
  v110 = &v90 - v25;
  type metadata accessor for ProductMediaCollectionViewCell();
  v111 = swift_dynamicCastClass();
  if (!v111)
  {
    return;
  }

  v103 = v8;
  v96 = v6;
  v97 = v5;
  sub_100743FA4();
  sub_1001CB934(&qword_10092C388, &type metadata accessor for ProductMedia);
  v26 = a1;
  sub_1007468B4();
  v27 = v113;
  if (!v113)
  {

    return;
  }

  v99 = v26;
  if (!swift_weakLoadStrong())
  {

    return;
  }

  v93 = sub_100743F94();
  v95 = v27;
  v91 = sub_100743F34();
  swift_getKeyPath();
  v94 = a2;
  sub_100746914();

  sub_100028CD0(&v16[*(v14 + 48)], v19);
  v28 = v105;
  if ((*(v105 + 48))(v19, 1, v11) == 1)
  {
    sub_10000C8CC(v16, &unk_10093D6E0);
    sub_10000C8CC(v19, &unk_10093D6E0);
    v29 = v107;
    v30 = v110;
    v90 = *(v107 + 56);
    v90(v110, 1, 1, v103);
  }

  else
  {
    swift_getKeyPath();
    v30 = v110;
    sub_1007525B4();

    (*(v28 + 8))(v19, v11);
    v29 = v107;
    v90 = *(v107 + 56);
    v90(v30, 0, 1, v103);
    sub_10000C8CC(v16, &unk_10093D6E0);
  }

  v31 = v108;
  swift_getKeyPath();
  sub_100746914();

  swift_getKeyPath();
  v32 = v109;
  sub_1007525B4();

  v33 = v13;
  v34 = v32;
  (*(v28 + 8))(v33, v11);
  v35 = v103;
  v90(v32, 0, 1, v103);
  v36 = *(v106 + 48);
  sub_100028D40(v30, v31);
  sub_100028D40(v34, v31 + v36);
  v37 = *(v29 + 48);
  if (v37(v31, 1, v35) == 1)
  {
    sub_10000C8CC(v34, &unk_100933370);
    sub_10000C8CC(v30, &unk_100933370);
    v38 = v37(v31 + v36, 1, v35);
    v39 = v99;
    v40 = v91;
    if (v38 == 1)
    {
      sub_10000C8CC(v31, &unk_100933370);
      v41 = v97;
      goto LABEL_27;
    }

    goto LABEL_14;
  }

  v42 = v100;
  sub_100028D40(v31, v100);
  v43 = v37(v31 + v36, 1, v35);
  v39 = v99;
  if (v43 == 1)
  {
    sub_10000C8CC(v109, &unk_100933370);
    sub_10000C8CC(v110, &unk_100933370);
    (*(v29 + 8))(v42, v103);
    v40 = v91;
LABEL_14:
    sub_10000C8CC(v31, &qword_10092C380);
    v41 = v97;
    goto LABEL_15;
  }

  v52 = v31 + v36;
  v53 = v98;
  v54 = v103;
  (*(v29 + 32))(v98, v52, v103);
  sub_1001CB934(&qword_1009350D0, &type metadata accessor for Shelf.ContentType);
  v55 = sub_100753014();
  v56 = *(v29 + 8);
  v56(v53, v54);
  sub_10000C8CC(v109, &unk_100933370);
  sub_10000C8CC(v110, &unk_100933370);
  v56(v42, v54);
  sub_10000C8CC(v31, &unk_100933370);
  v41 = v97;
  v40 = v91;
  if (v55)
  {
    goto LABEL_27;
  }

LABEL_15:
  v44 = v40 >> 62;
  if (v40 >> 62)
  {
    v45 = sub_100754664();
  }

  else
  {
    v45 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v46 = v93;
  if (!v45)
  {

    v113 = v46;
    goto LABEL_29;
  }

  v47 = v45 - 1;
  if (__OFSUB__(v45, 1))
  {
    goto LABEL_78;
  }

  if ((v40 & 0xC000000000000001) != 0)
  {
    goto LABEL_79;
  }

  if ((v47 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    return;
  }

  if (v47 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_82;
  }

  v48 = *(v40 + 8 * v47 + 32);

  v113 = v46;
  if (!v48)
  {
    goto LABEL_29;
  }

LABEL_23:
  v112 = v48;
  sub_100744514();
  sub_1001CB934(&qword_100929290, &type metadata accessor for MediaPlatform);
  v49 = sub_100753014();

  if (v49)
  {
LABEL_27:

    LODWORD(v110) = 0;
  }

  else
  {
    v50 = v40 & 0xFFFFFFFFFFFFFF8;
    if (v44)
    {
LABEL_30:
      v51 = sub_100754664();
    }

    else
    {
LABEL_25:
      v51 = *(v50 + 16);
    }

    LODWORD(v110) = v51 > 1;
  }

  v57 = sub_100743F84();
  v44 = v57;
  v113 = _swiftEmptyArrayStorage;
  if (!(v57 >> 62))
  {
    v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_34;
  }

  while (1)
  {
    v58 = sub_100754664();
LABEL_34:
    if (v58)
    {
      v40 = 0;
      v39 = (v44 & 0xC000000000000001);
      v41 = v44 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v39)
        {
          sub_100754574();
          v59 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
LABEL_45:
            __break(1u);
LABEL_46:
            v60 = v113;
            v41 = v97;
            v39 = v99;
            goto LABEL_48;
          }
        }

        else
        {
          if (v40 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_62;
          }

          v59 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            goto LABEL_45;
          }
        }

        if (sub_100746004())
        {

          sub_1007545A4();
          sub_1007545D4();
          sub_1007545E4();
          sub_1007545B4();
        }

        else
        {
        }

        ++v40;
        if (v59 == v58)
        {
          goto LABEL_46;
        }
      }
    }

    v60 = _swiftEmptyArrayStorage;
LABEL_48:

    v44 = *(v60 + 16);
    if (!v44)
    {
      goto LABEL_66;
    }

LABEL_51:
    v113 = _swiftEmptyArrayStorage;
    v46 = &v113;
    sub_1007545C4();
    if ((v44 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:

      v48 = sub_100754574();
      v113 = v46;
      if (v48)
      {
        goto LABEL_23;
      }

LABEL_29:

      v50 = v40 & 0xFFFFFFFFFFFFFF8;
      if (!v44)
      {
        goto LABEL_25;
      }

      goto LABEL_30;
    }

    v40 = 0;
    while (1)
    {
      v39 = (v40 + 1);
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if ((v60 & 0xC000000000000001) != 0)
      {
        sub_100754574();
        if (!sub_100746004())
        {
          goto LABEL_83;
        }
      }

      else
      {
        if (v40 >= *(v60 + 16))
        {
          goto LABEL_63;
        }

        if (!sub_100746004())
        {
          goto LABEL_83;
        }
      }

      sub_1007545A4();
      sub_1007545D4();
      sub_1007545E4();
      sub_1007545B4();
      ++v40;
      if (v39 == v44)
      {

        v61 = v113;
        v39 = v99;
        goto LABEL_67;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
  }

  v44 = sub_100754664();
  if (v44)
  {
    goto LABEL_51;
  }

LABEL_66:

  v61 = _swiftEmptyArrayStorage;
LABEL_67:
  v62 = swift_allocObject();
  swift_weakInit();
  v63 = swift_allocObject();
  *(v63 + 2) = v62;
  *(v63 + 3) = v61;
  v64 = v104;
  *(v63 + 4) = v93;
  *(v63 + 5) = v64;
  v65 = v111;
  v66 = (v111 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_screenshotSelectionHandler);
  v67 = *(v111 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_screenshotSelectionHandler);
  *v66 = sub_1001CBA14;
  v66[1] = v63;

  sub_1000164A8(v67);

  v68 = *(v65 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryView);
  if (v68)
  {
    type metadata accessor for PlatformSelectorView();
    v69 = swift_dynamicCastClass();
    if (v69)
    {
      v70 = v69;
      v71 = swift_allocObject();
      swift_weakInit();
      v72 = v96;
      v73 = v102;
      (*(v96 + 16))(v102, v94, v41);
      v74 = (*(v72 + 80) + 32) & ~*(v72 + 80);
      v75 = swift_allocObject();
      *(v75 + 16) = v110;
      *(v75 + 24) = v71;
      (*(v72 + 32))(v75 + v74, v73, v41);
      v76 = (v70 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_didSelectHandler);
      v77 = *(v70 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_didSelectHandler);
      *v76 = sub_1001CBB04;
      v76[1] = v75;
      v78 = v68;

      sub_1000164A8(v77);
    }
  }

  v79 = *(v111 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_bottomAccessoryView);
  v80 = v79;

  if (v79)
  {
    type metadata accessor for PlatformSelectorView();
    v81 = swift_dynamicCastClass();
    if (v81)
    {
      v82 = v81;
      v83 = swift_allocObject();
      swift_weakInit();

      v84 = v96;
      v85 = v102;
      (*(v96 + 16))(v102, v94, v41);
      v86 = (*(v84 + 80) + 32) & ~*(v84 + 80);
      v87 = swift_allocObject();
      *(v87 + 16) = v110;
      *(v87 + 24) = v83;
      (*(v84 + 32))(v87 + v86, v85, v41);
      v88 = (v82 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_didSelectHandler);
      v89 = *(v82 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_didSelectHandler);
      *v88 = sub_1001CBB68;
      v88[1] = v87;

      sub_1000164A8(v89);
    }
  }

  else
  {
  }
}

uint64_t sub_1001C9CCC(void *a1, uint64_t a2)
{
  v84 = a2;
  v78 = sub_100742CF4();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v79 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1007493D4();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v77 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_10074A304();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v75 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100752614();
  __chkstk_darwin(v6 - 8);
  v72 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v8 - 8);
  v82 = &v66 - v9;
  v10 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v10 - 8);
  v81 = &v66 - v11;
  v69 = sub_10074F4D4();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v80 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v13 - 8);
  v83 = &v66 - v14;
  v15 = sub_10074EA34();
  v88 = *(v15 - 8);
  v89 = v15;
  __chkstk_darwin(v15);
  v87 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100748D64();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000C518(&unk_10092E450);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v86 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v66 - v25;
  swift_getKeyPath();
  v93 = a1;
  sub_100746914();

  swift_getKeyPath();
  sub_1007525B4();

  v85 = *(v22 + 8);
  v85(v26, v21);
  v98 = _swiftEmptyArrayStorage;
  v27 = *(v99 + 16);
  if (!v27)
  {

    v29 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_11;
    }

LABEL_21:
    if (sub_100754664())
    {
      goto LABEL_12;
    }
  }

  v90 = v20;
  v91 = v18;
  v92 = v17;
  v28 = v99 + 32;
  v29 = _swiftEmptyArrayStorage;
  do
  {
    sub_10000C824(v28, v96);
    sub_10000C824(v96, v95);
    sub_10000C518(&qword_1009242A0);
    sub_100746024();
    if (swift_dynamicCast())
    {
      v30 = sub_100746004();

      sub_10000C620(v96);
      if (v30)
      {
        sub_100753284();
        if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();
        v29 = v98;
      }
    }

    else
    {
      sub_10000C620(v96);
    }

    v28 += 40;
    --v27;
  }

  while (v27);

  v18 = v91;
  v17 = v92;
  v20 = v90;
  if (v29 >> 62)
  {
    goto LABEL_21;
  }

LABEL_11:
  if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
  }

LABEL_12:
  sub_100746024();
  sub_1001CB934(&qword_100923AF8, &type metadata accessor for ProductMediaItem);
  sub_1007468B4();
  if (!*&v96[0])
  {
  }

  v31 = sub_100746004();

  if (!v31)
  {
  }

  v67 = v31;
  swift_getKeyPath();
  v32 = v86;
  sub_100746914();

  swift_getKeyPath();
  v33 = v87;
  sub_1007525B4();

  v85(v32, v21);
  v35 = v88;
  v34 = v89;
  if ((*(v88 + 88))(v33, v89) == enum case for Shelf.ContentsMetadata.productMedia(_:))
  {
    (*(v35 + 96))(v33, v34);
    (*(v18 + 32))(v20, v33, v17);
    v36 = sub_1001C8814(v67, v29);
    v38 = v20;
    if (v37)
    {
      v39 = 0;
    }

    else
    {
      v39 = v36;
    }

    v90 = v38;
    v40 = sub_100748D54();
    v92 = v17;
    v41 = sub_10041434C(_swiftEmptyArrayStorage);
    v42 = v84;
    v43 = sub_1006B94B0(v84, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000012, 0x800000010076FAC0);
    v44 = objc_allocWithZone(type metadata accessor for ScreenshotsGalleryViewController());
    v91 = v18;
    v45 = OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_fullScreenshotFetcher;
    type metadata accessor for ScreenshotFetcher();
    v46 = swift_allocObject();
    *(v46 + 16) = sub_10041434C(_swiftEmptyArrayStorage);
    *(v46 + 32) = 0;
    swift_unknownObjectWeakInit();
    *(v46 + 32) = 0;
    swift_unknownObjectWeakAssign();
    *&v44[v45] = v46;
    v47 = OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_galleryLayout;
    *&v44[v47] = [objc_allocWithZone(type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout()) init];
    *&v44[OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_artworks] = v29;
    *&v44[OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_platform] = v40;
    *&v44[OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_placeholderImages] = v41;
    sub_1007442C4();
    sub_100752764();

    sub_100752D34();
    *&v44[OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_artworkLoader] = *&v96[0];
    *&v44[OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_selectedIndex] = v39;
    v48 = *&v44[v47];

    v49 = sub_10062DFAC(v48, v43);

    v50 = v49;
    v51 = [v50 navigationItem];
    v52 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v50 action:"dismissFrom:"];
    [v51 setRightBarButtonItem:v52];

    *(*&v50[OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_fullScreenshotFetcher] + 32) = &off_10086AF38;
    swift_unknownObjectWeakAssign();

    type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
    v53 = type metadata accessor for StoreNavigationController();
    v54 = objc_allocWithZone(v53);
    *&v54[OBJC_IVAR____TtC22SubscribePageExtension25StoreNavigationController_objectGraph] = v42;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v94.receiver = v54;
    v94.super_class = v53;

    v56 = objc_msgSendSuper2(&v94, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
    [v56 setDelegate:v56];
    [v56 setModalPresentationStyle:0];
    sub_10000C518(&unk_1009231A0);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1007A5CF0;
    *(v57 + 32) = v50;
    sub_100016C60(0, &qword_10092B0C0);
    isa = sub_100753294().super.isa;

    [v56 setViewControllers:isa];

    v59 = sub_10000C518(&unk_100923210);
    v60 = v83;
    sub_1007526C4();
    v61 = *(v59 - 8);
    if ((*(v61 + 48))(v60, 1, v59) == 1)
    {
      (*(v91 + 8))(v90, v92);

      return sub_10000C8CC(v60, &unk_100923960);
    }

    else
    {
      v97 = 0;
      memset(v96, 0, sizeof(v96));
      (*(v68 + 104))(v80, enum case for FlowPage.viewController(_:), v69);
      v63 = sub_100741264();
      (*(*(v63 - 8) + 56))(v81, 1, 1, v63);
      v64 = sub_100743FE4();
      (*(*(v64 - 8) + 56))(v82, 1, 1, v64);
      v95[3] = v53;
      v95[0] = v56;
      v93 = v56;
      sub_1007525F4();
      (*(v70 + 104))(v75, enum case for FlowPresentationContext.infer(_:), v71);
      (*(v73 + 104))(v77, enum case for FlowAnimationBehavior.infer(_:), v74);
      (*(v76 + 104))(v79, enum case for FlowOrigin.inapp(_:), v78);
      sub_100752B44();
      sub_100742CD4();
      swift_allocObject();
      v65 = sub_100742C84();
      sub_1003C1424(v65, 1, v84, v60);

      (*(v91 + 8))(v90, v92);
      return (*(v61 + 8))(v60, v59);
    }
  }

  else
  {

    return (*(v35 + 8))(v33, v34);
  }
}

void sub_1001CAC30(void *a1, uint64_t a2)
{
  v108 = a2;
  v3 = sub_100747C14();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v94 = v5;
  v95 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_10074E984();
  v107 = *(v102 - 8);
  __chkstk_darwin(v102);
  v91 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_10000C518(&qword_10092C380);
  __chkstk_darwin(v100);
  v104 = &v83 - v7;
  v8 = sub_10000C518(&unk_10093D6E0);
  __chkstk_darwin(v8 - 8);
  v98 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v96 = &v83 - v11;
  __chkstk_darwin(v12);
  v99 = &v83 - v13;
  v14 = sub_10000C518(&unk_100933370);
  __chkstk_darwin(v14 - 8);
  v92 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v103 = &v83 - v17;
  __chkstk_darwin(v18);
  v101 = &v83 - v19;
  v20 = sub_10074EA34();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000C518(&unk_10092E450);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v97 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v83 - v28;
  v106 = sub_100748D64();
  v30 = *(v106 - 8);
  __chkstk_darwin(v106);
  v105 = &v83 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlatformSelectorView();
  v32 = swift_dynamicCastClass();
  if (v32)
  {
    v93 = v30;
    v88 = v32;
    v90 = v4;
    v89 = v3;
    v33 = a1;
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    v34 = *(v25 + 8);
    v34(v29, v24);
    if ((*(v21 + 88))(v23, v20) != enum case for Shelf.ContentsMetadata.productMedia(_:))
    {

      (*(v21 + 8))(v23, v20);
      return;
    }

    v35 = v34;
    (*(v21 + 96))(v23, v20);
    (*(v93 + 32))(v105, v23, v106);
    v36 = sub_100748D54();
    v87 = sub_100748D14();
    v37 = v96;
    v38 = v98;
    sub_100747BB4();
    sub_10000C8CC(v37, &unk_10093D6E0);
    v39 = v99;
    sub_100028CD0(v38, v99);
    v40 = (*(v25 + 48))(v39, 1, v24);
    v84 = v33;
    v86 = v36;
    v85 = v35;
    if (v40 == 1)
    {
      sub_10000C8CC(v39, &unk_10093D6E0);
      v41 = 1;
      v42 = v101;
    }

    else
    {
      swift_getKeyPath();
      v42 = v101;
      sub_1007525B4();

      v35(v39, v24);
      v41 = 0;
    }

    v43 = *(v107 + 56);
    v44 = v102;
    v43(v42, v41, 1, v102);
    v45 = v97;
    sub_100747C04();
    swift_getKeyPath();
    v46 = v103;
    sub_1007525B4();

    v47 = v45;
    v48 = v42;
    v85(v47, v24);
    v43(v46, 0, 1, v44);
    v49 = *(v100 + 48);
    v50 = v104;
    sub_100028D40(v42, v104);
    sub_100028D40(v46, v50 + v49);
    v51 = *(v107 + 48);
    if (v51(v50, 1, v44) == 1)
    {
      sub_10000C8CC(v46, &unk_100933370);
      v52 = v104;
      sub_10000C8CC(v42, &unk_100933370);
      v53 = v51(v52 + v49, 1, v44);
      v54 = v90;
      v55 = v93;
      v56 = v86;
      if (v53 == 1)
      {
        sub_10000C8CC(v52, &unk_100933370);
LABEL_24:

        v75 = 0;
LABEL_30:
        v76 = swift_allocObject();
        swift_weakLoadStrong();

        (*(v55 + 8))(v105, v106);
        swift_weakInit();

        v77 = v95;
        v78 = v89;
        (*(v54 + 16))(v95, v108, v89);
        v79 = (*(v54 + 80) + 32) & ~*(v54 + 80);
        v80 = swift_allocObject();
        *(v80 + 16) = v75;
        *(v80 + 24) = v76;
        (*(v54 + 32))(v80 + v79, v77, v78);
        v81 = (v88 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_didSelectHandler);
        v82 = *(v88 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_didSelectHandler);
        *v81 = sub_1001CB8C4;
        v81[1] = v80;

        sub_1000164A8(v82);

        return;
      }
    }

    else
    {
      v57 = v92;
      sub_100028D40(v50, v92);
      v58 = v51(v50 + v49, 1, v44);
      v54 = v90;
      if (v58 != 1)
      {
        v67 = v48;
        v68 = v57;
        v69 = v107;
        v70 = v50 + v49;
        v71 = v91;
        (*(v107 + 32))(v91, v70, v44);
        sub_1001CB934(&qword_1009350D0, &type metadata accessor for Shelf.ContentType);
        v72 = v50;
        v73 = sub_100753014();
        v74 = *(v69 + 8);
        v74(v71, v44);
        sub_10000C8CC(v103, &unk_100933370);
        sub_10000C8CC(v67, &unk_100933370);
        v74(v68, v44);
        sub_10000C8CC(v72, &unk_100933370);
        v55 = v93;
        v56 = v86;
        v59 = v87;
        if (v73)
        {
          goto LABEL_24;
        }

LABEL_13:
        v60 = v59 >> 62;
        if (v59 >> 62)
        {
          v61 = sub_100754664();
          if (v61)
          {
LABEL_15:
            v62 = v61 - 1;
            if (__OFSUB__(v61, 1))
            {
              __break(1u);
            }

            else if ((v59 & 0xC000000000000001) == 0)
            {
              if ((v62 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v62 < *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v63 = *(v59 + 8 * v62 + 32);

                v110 = v56;
                if (v63)
                {
                  goto LABEL_20;
                }

                goto LABEL_27;
              }

              __break(1u);
              return;
            }

            v63 = sub_100754574();
            v110 = v56;
            if (v63)
            {
LABEL_20:
              v109 = v63;
              sub_100744514();
              sub_1001CB934(&qword_100929290, &type metadata accessor for MediaPlatform);
              v64 = sub_100753014();

              if (v64)
              {
                goto LABEL_24;
              }

              v65 = v59 & 0xFFFFFFFFFFFFFF8;
              if (!v60)
              {
                goto LABEL_22;
              }

              goto LABEL_28;
            }

LABEL_27:

            v65 = v59 & 0xFFFFFFFFFFFFFF8;
            if (!v60)
            {
LABEL_22:
              v66 = *(v65 + 16);
LABEL_29:

              v75 = v66 > 1;
              goto LABEL_30;
            }

LABEL_28:
            v66 = sub_100754664();
            goto LABEL_29;
          }
        }

        else
        {
          v61 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v61)
          {
            goto LABEL_15;
          }
        }

        goto LABEL_27;
      }

      sub_10000C8CC(v103, &unk_100933370);
      v52 = v104;
      sub_10000C8CC(v48, &unk_100933370);
      (*(v107 + 8))(v57, v44);
      v55 = v93;
      v56 = v86;
    }

    sub_10000C8CC(v52, &qword_10092C380);
    v59 = v87;
    goto LABEL_13;
  }
}

uint64_t sub_1001CB874()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1001CB8C4()
{
  sub_100747C14();
  v1 = *(v0 + 16);

  sub_1001C8BE0(v1);
}

uint64_t sub_1001CB934(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001CB9C4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001CBA38(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_1001CBB70()
{
  v0 = sub_1007507B4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v13[-1] - v5;
  __chkstk_darwin(v7);
  v9 = &v13[-1] - v8;
  sub_100750794();
  sub_100750794();

  sub_1007507A4();

  v10 = *(v1 + 8);
  v10(v3, v0);
  v13[3] = v0;
  v13[4] = &protocol witness table for VerticalStack;
  sub_10000D134(v13);
  sub_1007507A4();
  v10(v6, v0);

  sub_1007507A4();

  v10(v9, v0);
  return sub_10000C620(v13);
}

uint64_t sub_1001CBD7C(uint64_t a1, uint64_t a2)
{
  sub_1001CC150(a2 + 16, v4);
  sub_100012160(v4, v3);
  return sub_100750714();
}

uint64_t sub_1001CBDC4()
{
  sub_1001CC1BC(v0 + 16);
  sub_10000C620(v0 + 64);
  sub_10000C620(v0 + 104);

  return swift_deallocClassInstance();
}

__n128 sub_1001CBE30(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1001CBE44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1001CBE8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001CBF1C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  WitnessTable = swift_getWitnessTable();
  v9.n128_f64[0] = a3;
  v10.n128_f64[0] = a4;

  return CustomLayout.measure(toFit:with:)(a1, a2, WitnessTable, v9, v10);
}

uint64_t sub_1001CBF94(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  WitnessTable = swift_getWitnessTable();
  v13.n128_f64[0] = a3;
  v14.n128_f64[0] = a4;
  v15.n128_f64[0] = a5;
  v16.n128_f64[0] = a6;

  return CustomLayout.place(at:with:)(a1, a2, WitnessTable, v13, v14, v15, v16);
}

uint64_t sub_1001CC024(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, WitnessTable);
}

uint64_t sub_1001CC0F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ShelfFooterViewLayout();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001CC1F8(void *a1)
{
  if (*v1 == *a1)
  {
    return sub_1007544C4();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001CC284()
{
  sub_100016994(v0 + 16);

  return swift_deallocClassInstance();
}

Swift::Int sub_1001CC2E0()
{
  v1 = *v0;
  sub_100754834();
  (*(*v1 + 104))(v3);
  return sub_100754884();
}

Swift::Int sub_1001CC388()
{
  sub_100754834();
  (*(**v0 + 104))(v2);
  return sub_100754884();
}

unint64_t sub_1001CC438()
{
  result = qword_10092C510;
  if (!qword_10092C510)
  {
    type metadata accessor for DebugSetting();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092C510);
  }

  return result;
}

uint64_t sub_1001CC48C()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100747064();
  sub_100039C50(v4, qword_10097E3A8);
  v44 = sub_10000D0FC(v4, qword_10097E3A8);
  if (qword_100920ED0 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_1009809C0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  v7 = v1[13];
  (v7)(v3, enum case for FontSource.useCase(_:), v0);
  v8 = v7;
  v50 = v7;
  v86 = sub_100750B04();
  v87 = &protocol witness table for StaticDimension;
  v9 = v86;
  v51 = v86;
  sub_10000D134(v85);
  v83 = v0;
  v84 = &protocol witness table for FontSource;
  v10 = sub_10000D134(v82);
  v49 = v1[2];
  v49(v10, v3, v0);
  sub_100750B14();
  v46 = v1[1];
  v46(v3, v0);
  *v3 = UIFontTextStyleBody;
  v47 = enum case for FontSource.textStyle(_:);
  v8(v3);
  v48 = v1 + 13;
  v83 = v9;
  v84 = &protocol witness table for StaticDimension;
  sub_10000D134(v82);
  v80 = v0;
  v81 = &protocol witness table for FontSource;
  v11 = sub_10000D134(v79);
  v12 = v49;
  v49(v11, v3, v0);
  v13 = UIFontTextStyleBody;
  sub_100750B14();
  v14 = v46;
  v46(v3, v0);
  *v3 = v13;
  v15 = v47;
  v50(v3, v47, v0);
  v80 = v51;
  v81 = &protocol witness table for StaticDimension;
  sub_10000D134(v79);
  v77 = v0;
  v78 = &protocol witness table for FontSource;
  v16 = sub_10000D134(v76);
  v12(v16, v3, v0);
  v17 = v13;
  sub_100750B14();
  v14(v3, v0);
  *v3 = v17;
  v18 = v50;
  v50(v3, v15, v0);
  v19 = v51;
  v77 = v51;
  v78 = &protocol witness table for StaticDimension;
  v42 = sub_10000D134(v76);
  v74 = v0;
  v75 = &protocol witness table for FontSource;
  v20 = sub_10000D134(v73);
  v49(v20, v3, v0);
  v21 = v17;
  sub_100750B14();
  v14(v3, v0);
  *v3 = v21;
  v22 = v47;
  v18(v3, v47, v0);
  v74 = v19;
  v75 = &protocol witness table for StaticDimension;
  sub_10000D134(v73);
  v71 = v0;
  v72 = &protocol witness table for FontSource;
  v23 = sub_10000D134(v70);
  v24 = v49;
  v49(v23, v3, v0);
  v45 = v1 + 2;
  v25 = v21;
  sub_100750B14();
  v46(v3, v0);
  *v3 = UIFontTextStyleFootnote;
  v18(v3, v22, v0);
  v71 = v51;
  v72 = &protocol witness table for StaticDimension;
  sub_10000D134(v70);
  v68 = v0;
  v69 = &protocol witness table for FontSource;
  v26 = sub_10000D134(v67);
  v24(v26, v3, v0);
  v27 = UIFontTextStyleFootnote;
  sub_100750B14();
  v28 = v46;
  v46(v3, v0);
  v43 = v1 + 1;
  *v3 = v27;
  v29 = v47;
  v18(v3, v47, v0);
  v30 = v51;
  v68 = v51;
  v69 = &protocol witness table for StaticDimension;
  v42 = sub_10000D134(v67);
  v65 = v0;
  v66 = &protocol witness table for FontSource;
  v31 = sub_10000D134(v64);
  v24(v31, v3, v0);
  v32 = v27;
  sub_100750B14();
  v28(v3, v0);
  *v3 = v32;
  v50(v3, v29, v0);
  v65 = v30;
  v66 = &protocol witness table for StaticDimension;
  sub_10000D134(v64);
  v62 = v0;
  v63 = &protocol witness table for FontSource;
  v33 = sub_10000D134(v61);
  v24(v33, v3, v0);
  v34 = v32;
  sub_100750B14();
  v28(v3, v0);
  *v3 = v34;
  v35 = v50;
  v50(v3, v29, v0);
  v62 = v51;
  v63 = &protocol witness table for StaticDimension;
  v42 = sub_10000D134(v61);
  v59 = v0;
  v60 = &protocol witness table for FontSource;
  v36 = sub_10000D134(v58);
  v24(v36, v3, v0);
  v37 = v34;
  sub_100750B14();
  v28(v3, v0);
  *v3 = v37;
  v35(v3, v47, v0);
  v59 = v51;
  v60 = &protocol witness table for StaticDimension;
  sub_10000D134(v58);
  v56 = v0;
  v57 = &protocol witness table for FontSource;
  v38 = sub_10000D134(v55);
  v49(v38, v3, v0);
  v39 = v37;
  sub_100750B14();
  v28(v3, v0);
  v56 = sub_1007507D4();
  v57 = &protocol witness table for ZeroDimension;
  sub_10000D134(v55);
  sub_1007507C4();
  v53 = &type metadata for Double;
  v54 = &protocol witness table for Double;
  v52 = 0x4024000000000000;
  return sub_100746F24();
}

uint64_t sub_1001CCD48()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100747064();
  sub_100039C50(v4, qword_10097E3C0);
  v41[0] = sub_10000D0FC(v4, qword_10097E3C0);
  if (qword_1009215D0 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_100981EA8);
  v7 = *(v5 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v8(v3, v6, v5);
  v45 = v9;
  v10 = v8;
  v51 = enum case for FontSource.useCase(_:);
  v11 = v1[13];
  v44 = v1 + 13;
  v50 = v11;
  v11(v3);
  v47 = sub_100750B04();
  v84[3] = v47;
  v84[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v84);
  v82 = v0;
  v83 = &protocol witness table for FontSource;
  v12 = sub_10000D134(v81);
  v48 = v1[2];
  v49 = v1 + 2;
  v48(v12, v3, v0);
  sub_100750B14();
  v43 = v1[1];
  v41[1] = v1 + 1;
  v43(v3, v0);
  v46 = v6;
  v42 = v5;
  v52 = v8;
  v8(v3, v6, v5);
  v13 = v51;
  v50(v3, v51, v0);
  v14 = v47;
  v82 = v47;
  v83 = &protocol witness table for StaticDimension;
  sub_10000D134(v81);
  v79 = v0;
  v80 = &protocol witness table for FontSource;
  v15 = sub_10000D134(v78);
  v48(v15, v3, v0);
  sub_100750B14();
  v16 = v43;
  v43(v3, v0);
  v10(v3, v6, v5);
  v17 = v50;
  v50(v3, v13, v0);
  v79 = v14;
  v80 = &protocol witness table for StaticDimension;
  sub_10000D134(v78);
  v76 = v0;
  v77 = &protocol witness table for FontSource;
  v18 = sub_10000D134(v75);
  v19 = v48;
  v48(v18, v3, v0);
  sub_100750B14();
  v16(v3, v0);
  v20 = v42;
  v52(v3, v46, v42);
  v17(v3, v51, v0);
  v76 = v47;
  v77 = &protocol witness table for StaticDimension;
  sub_10000D134(v75);
  v73 = v0;
  v74 = &protocol witness table for FontSource;
  v21 = sub_10000D134(v72);
  v19(v21, v3, v0);
  sub_100750B14();
  v22 = v43;
  v43(v3, v0);
  v52(v3, v46, v20);
  v50(v3, v51, v0);
  v23 = v47;
  v73 = v47;
  v74 = &protocol witness table for StaticDimension;
  sub_10000D134(v72);
  v70 = v0;
  v71 = &protocol witness table for FontSource;
  v24 = sub_10000D134(v69);
  v48(v24, v3, v0);
  sub_100750B14();
  v22(v3, v0);
  if (qword_1009215D8 != -1)
  {
    swift_once();
  }

  v25 = v42;
  v26 = sub_10000D0FC(v42, qword_100981EC0);
  v52(v3, v26, v25);
  v27 = v50;
  v50(v3, v51, v0);
  v70 = v23;
  v71 = &protocol witness table for StaticDimension;
  sub_10000D134(v69);
  *(&v67 + 1) = v0;
  v68 = &protocol witness table for FontSource;
  v28 = sub_10000D134(&v66);
  v48(v28, v3, v0);
  sub_100750B14();
  v43(v3, v0);
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v52(v3, v46, v42);
  v29 = v27;
  v27(v3, v51, v0);
  v30 = v47;
  v65[3] = v47;
  v65[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v65);
  v63 = v0;
  v64 = &protocol witness table for FontSource;
  v31 = sub_10000D134(v62);
  v48(v31, v3, v0);
  sub_100750B14();
  v43(v3, v0);
  *v3 = UIFontTextStyleFootnote;
  v29(v3, enum case for FontSource.textStyle(_:), v0);
  v63 = v30;
  v64 = &protocol witness table for StaticDimension;
  sub_10000D134(v62);
  v60 = v0;
  v61 = &protocol witness table for FontSource;
  v32 = sub_10000D134(v59);
  v33 = v48;
  v48(v32, v3, v0);
  v34 = UIFontTextStyleFootnote;
  sub_100750B14();
  v35 = v43;
  v43(v3, v0);
  v36 = v42;
  v52(v3, v46, v42);
  v37 = v51;
  v50(v3, v51, v0);
  v60 = v47;
  v61 = &protocol witness table for StaticDimension;
  sub_10000D134(v59);
  v57 = v0;
  v58 = &protocol witness table for FontSource;
  v38 = sub_10000D134(v56);
  v33(v38, v3, v0);
  sub_100750B14();
  v35(v3, v0);
  v52(v3, v46, v36);
  v50(v3, v37, v0);
  v57 = v47;
  v58 = &protocol witness table for StaticDimension;
  sub_10000D134(v56);
  v54 = v0;
  v55 = &protocol witness table for FontSource;
  v39 = sub_10000D134(v53);
  v33(v39, v3, v0);
  sub_100750B14();
  v35(v3, v0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  v53[0] = 0x4024000000000000;
  return sub_100746F24();
}

uint64_t sub_1001CD6EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1 == 3)
  {
    if (qword_100920370 != -1)
    {
      swift_once();
    }

    v3 = sub_100750B04();
    v4 = v3;
    v5 = qword_10097DD60;
  }

  else
  {
    if (a1 != 2 && a1 != 1)
    {
      a2[3] = sub_1007507D4();
      a2[4] = &protocol witness table for ZeroDimension;
      sub_10000D134(a2);
      return sub_1007507C4();
    }

    if (qword_100920368 != -1)
    {
      swift_once();
    }

    v3 = sub_100750B04();
    v4 = v3;
    v5 = qword_10097DD48;
  }

  v6 = sub_10000D0FC(v3, v5);
  a2[3] = v4;
  a2[4] = &protocol witness table for StaticDimension;
  v7 = sub_10000D134(a2);
  v8 = *(*(v4 - 8) + 16);

  return v8(v7, v6, v4);
}

void sub_1001CD868(char a1)
{
  v2 = v1;
  v4 = sub_100741E54();
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_iconType];
  v2[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_iconType] = a1 & 1;
  if (v8 != (a1 & 1))
  {
    if (a1)
    {
      v9 = [v2 traitCollection];
      sub_100753804();

      sub_100741DD4();
      v10 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
      v11 = sub_10027562C(v7, 1);
      v12 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_inAppPurchaseIcon;
      v13 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_inAppPurchaseIcon];
      if (v13)
      {
        [v13 removeFromSuperview];
        v14 = *&v2[v12];
      }

      else
      {
        v14 = 0;
      }

      *&v2[v12] = v11;
      v18 = v11;

      [v2 addSubview:v18];
      [*&v2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView] setHidden:1];
    }

    else
    {
      v15 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_inAppPurchaseIcon;
      v16 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_inAppPurchaseIcon];
      if (v16)
      {
        [v16 removeFromSuperview];
        v17 = *&v2[v15];
      }

      else
      {
        v17 = 0;
      }

      *&v2[v15] = 0;

      [*&v2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView] setHidden:0];
    }

    [v2 setNeedsLayout];
  }
}

uint64_t sub_1001CDA40@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  v4 = sub_100747064();
  (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
  v5 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton);
  type metadata accessor for BaseLockupView();
  sub_1007477B4();
  v6 = v5 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize;
  if (*(v5 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize + 16))
  {
    v7 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000C824(v5 + v7, v13);
    sub_10000C888(v13, v13[3]);
    sub_10074AE54();
    v9 = v8;
    v11 = v10;
    sub_10000C620(v13);
    *v6 = v9;
    *(v6 + 8) = v11;
    *(v6 + 16) = 0;
  }

  return sub_100746FE4();
}

uint64_t sub_1001CDEE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v61 = sub_100747084();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100747064();
  v62 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v53 - v8;
  __chkstk_darwin(v10);
  v12 = &v53 - v11;
  sub_1001CDA40(&v53 - v11);
  v13 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall;
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_isDisplayingSearchAd] == 1 && (v1[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] & 1) == 0)
  {
    sub_10074F4B4();
    v14 = v62;
    (*(v62 + 8))(v12, v4);
    (*(v14 + 32))(v12, v9, v4);
    v13 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall;
  }

  v55 = v9;
  if (v2[v13] == 1)
  {
    v15 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_searchAdTertiaryLabel];
    v16 = sub_100745C84();
    *(&v80 + 1) = v16;
    v81 = &protocol witness table for UILabel;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel];
    }

    *&v79 = v17;
    sub_100032CCC(&v79, v82);
    v20 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel];
    if (v20)
    {
      v21 = v16;
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      v22 = &protocol witness table for UILabel;
    }

    else
    {
      v22 = 0;
    }

    v79 = v20;
    *&v80 = 0;
    *(&v80 + 1) = v21;
    v81 = v22;
    v23 = v20;
  }

  else
  {
    v18 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel];
    v19 = sub_100745C84();
    v82[3] = v19;
    v82[4] = &protocol witness table for UILabel;
    v82[0] = v18;
    v15 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_searchAdTertiaryLabel];
    if (v15)
    {
      *(&v80 + 1) = type metadata accessor for SearchAdTransparencyLabel();
      v81 = &protocol witness table for UILabel;
      *&v79 = v15;
      sub_100032CCC(&v79, &v76);
    }

    else
    {
      v24 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel];
      if (v24)
      {
        v25 = &protocol witness table for UILabel;
      }

      else
      {
        v19 = 0;
        v25 = 0;
        *(&v76 + 1) = 0;
        *&v77 = 0;
      }

      *&v76 = v24;
      *(&v77 + 1) = v19;
      v78 = v25;
      v26 = v18;
      v15 = 0;
      v18 = v24;
    }

    v27 = v18;
    v79 = v76;
    v80 = v77;
    v81 = v78;
  }

  v28 = v15;
  v29 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_inAppPurchaseIcon;
  if (*&v2[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_inAppPurchaseIcon])
  {
    [*&v2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView] setHidden:1];
  }

  v30 = *(v62 + 16);
  v56 = v12;
  v54 = v30;
  v30(v6, v12, v4);
  v31 = *&v2[v29];
  *(&v77 + 1) = sub_100016C60(0, &qword_100922300);
  v78 = &protocol witness table for UIView;
  v57 = v6;
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView];
  }

  *&v76 = v32;
  v33 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_ordinalLabel];
  v34 = sub_100745C84();
  v75[3] = v34;
  v75[4] = &protocol witness table for UILabel;
  v75[0] = v33;
  v35 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel];
  v36 = v4;
  if (v35)
  {
    v37 = &protocol witness table for UILabel;
    v38 = v34;
  }

  else
  {
    v38 = 0;
    v37 = 0;
    v74[2] = 0;
    v74[1] = 0;
  }

  v74[0] = v35;
  v74[3] = v38;
  v74[4] = v37;
  v39 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel];
  v73[4] = &protocol witness table for UILabel;
  v73[3] = v34;
  v72[4] = &protocol witness table for UILabel;
  v73[0] = v39;
  v40 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel];
  v72[3] = v34;
  v72[0] = v40;
  v41 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton];
  v71[3] = type metadata accessor for OfferButton();
  v71[4] = &protocol witness table for UIView;
  v71[0] = v41;
  v42 = v31;
  v43 = v33;
  v44 = v35;
  v45 = v39;
  v46 = v40;
  v47 = v41;

  v48 = v57;
  v54(v55, v57, v36);
  sub_10000C824(&v76, &v70);
  sub_10000C824(v75, &v69);
  sub_100016B4C(v74, &v68, &qword_10092BC30);
  sub_10000C824(v73, &v67);
  sub_10000C824(v82, &v66);
  sub_100016B4C(&v79, &v65, &qword_10092BC30);
  sub_100016B4C(v72, &v64, &qword_10092BC30);
  sub_100016B4C(v71, &v63, &unk_100928A00);
  v49 = v58;
  sub_100747074();
  sub_1001CF4A0();
  v50 = v61;
  sub_100750434();
  (*(v59 + 8))(v49, v50);
  v51 = *(v62 + 8);
  v51(v48, v36);
  sub_10000C8CC(&v79, &qword_10092BC30);
  v51(v56, v36);
  sub_10000C620(v82);
  sub_10000C8CC(v71, &unk_100928A00);
  sub_10000C8CC(v72, &qword_10092BC30);
  sub_10000C620(v73);
  sub_10000C8CC(v74, &qword_10092BC30);
  sub_10000C620(v75);
  return sub_10000C620(&v76);
}

uint64_t sub_1001CE5B0()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = (v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = UIFontTextStyleFootnote;
  (*(v1 + 104))(v4, enum case for FontSource.textStyle(_:), v0, v2);
  v9[3] = sub_100750B04();
  v9[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v9);
  v8[3] = v0;
  v8[4] = &protocol witness table for FontSource;
  v5 = sub_10000D134(v8);
  (*(v1 + 16))(v5, v4, v0);
  v6 = UIFontTextStyleFootnote;
  sub_100750B14();
  (*(v1 + 8))(v4, v0);
  return sub_100747044();
}

void sub_1001CE71C()
{
  v1 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_searchAdTertiaryLabel);
  if (v4)
  {
    if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall) == 1)
    {
      v5 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel);
      v6 = v4;
      [v5 setHidden:1];
      v7 = v6;
      sub_100745B94();
      sub_100745BA4();

      v8 = v7;
      v9 = [v5 textColor];
    }

    else
    {
      v10 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel);
      v11 = v4;
      if (v10)
      {
        [v10 setHidden:1];
      }

      v12 = qword_100920F28;
      v13 = v4;
      if (v12 != -1)
      {
        swift_once();
      }

      v14 = sub_100750534();
      v15 = sub_10000D0FC(v14, qword_100980AC8);
      v16 = *(v14 - 8);
      (*(v16 + 16))(v3, v15, v14);
      (*(v16 + 56))(v3, 0, 1, v14);
      sub_100745BA4();

      sub_100016C60(0, &qword_100923500);
      v17 = v13;
      v9 = sub_100753DF4();
    }

    v18 = v9;
    [v4 setTextColor:v9];
  }
}

uint64_t sub_1001CE970(void *a1, void *a2)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_lockupTapGestureRecognizer];
  if (v4 && (sub_100016C60(0, &unk_10092C570), v7 = a1, v8 = v4, LOBYTE(a1) = sub_100753FC4(), v8, v7, (a1 & 1) != 0))
  {
    [a2 locationInView:v3];
    v9 = [v3 hitTest:0 withEvent:?];
    if (v9)
    {
      v10 = v9;
      v11 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton];
      sub_100016C60(0, &qword_100922300);
      v12 = v11;
      v13 = v10;
      v14 = sub_100753FC4();

      v15 = v14 ^ 1;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

void sub_1001CEBE8()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_lockupTapGestureRecognizer;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_lockupTapGestureRecognizer];
  if (*&v0[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_lockupTapBlock])
  {
    if (v2)
    {
      return;
    }

    v3 = [objc_allocWithZone(UITapGestureRecognizer) init];
    [v3 addTarget:v0 action:"lockupTapGestureRecognized"];
    [v3 setDelegate:v0];

    [v0 addGestureRecognizer:v3];
    v2 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = v3;
}

uint64_t sub_1001CED48()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
  v2 = sub_100747064();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_lockupTapBlock);

  return sub_1000164A8(v3);
}

id sub_1001CEDF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmallLockupView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SmallLockupView()
{
  result = qword_10092C558;
  if (!qword_10092C558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001CEF30()
{
  result = sub_100747064();
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

double sub_1001CEFE8()
{
  v1 = sub_100747064();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1001CDA40(v4);
  [v5 layoutMargins];
  v6 = sub_1001CF184(v4, v5);
  (*(v2 + 8))(v4, v1);
  return v6;
}

unint64_t sub_1001CF12C()
{
  result = qword_10092C568;
  if (!qword_10092C568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092C568);
  }

  return result;
}

double sub_1001CF184(uint64_t a1, void *a2)
{
  v4 = sub_1007479B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v11 = sub_100747064();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a2 traitCollection];
  (*(v12 + 16))(v15, a1, v11);
  v17 = sub_100746FD4();
  if ((v19 & 1) == 0 && ((v17 | v18) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_100753804())
    {
      if (qword_100921988 != -1)
      {
        swift_once();
      }

      v20 = qword_10093FF40;
    }

    else
    {
      if (qword_100921990 != -1)
      {
        swift_once();
      }

      v20 = qword_10093FF58;
    }

    v21 = sub_10000D0FC(v4, v20);
    (*(v5 + 16))(v7, v21, v4);
    (*(v5 + 32))(v10, v7, v4);
    sub_100747964();
    sub_100747994();
    sub_100746FE4();
    (*(v5 + 8))(v10, v4);
  }

  sub_100746F14();
  v23 = v22;

  (*(v12 + 8))(v15, v11);
  return v23;
}

unint64_t sub_1001CF4A0()
{
  result = qword_10092C580;
  if (!qword_10092C580)
  {
    sub_100747084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092C580);
  }

  return result;
}

id sub_1001CF4F8()
{
  v1 = sub_100751504();
  __chkstk_darwin(v1);
  v2 = sub_100751A14();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_iconType] = 0;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v7 = sub_100747064();
  v8 = sub_10000D0FC(v7, qword_10097E3A8);
  (*(*(v7 - 8) + 16))(&v0[v6], v8, v7);
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_searchAdTertiaryLabel] = 0;
  v0[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  v0[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_isDisplayingSearchAd] = 0;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_inAppPurchaseIcon] = 0;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_lockupTapGestureRecognizer] = 0;
  v9 = &v0[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_lockupTapBlock];
  v10 = type metadata accessor for SmallLockupView();
  *v9 = 0;
  v9[1] = 0;
  v14.receiver = v0;
  v14.super_class = v10;
  v11 = objc_msgSendSuper2(&v14, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  (*(v3 + 104))(v5, enum case for UITypesettingLanguageAwareLineHeightRatio.legacy(_:), v2);
  v12 = v11;
  sub_100753CE4();
  sub_1007514E4();
  sub_100753CF4();

  return v12;
}

void sub_1001CF770(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v2[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_isDisplayingSearchAd] = 1;

    [v2 setNeedsLayout];
    v6 = [objc_allocWithZone(type metadata accessor for SearchAdTransparencyButton()) init];
    sub_10074F774();
    sub_10074ECB4();
    v8 = v7;

    if (v8)
    {
      v9 = sub_100753064();
    }

    else
    {
      v9 = 0;
    }

    [v6 setTitle:v9 forState:0];

    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a1;
    v14 = &v6[qword_100934DD0];
    v15 = *&v6[qword_100934DD0];
    *v14 = sub_1001CFD08;
    v14[1] = v13;

    sub_1000164A8(v15);
    v16 = objc_allocWithZone(type metadata accessor for SearchAdTransparencyLabel());
    v17 = v6;
    v18 = sub_100026898(v17);
    if (v3[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] == 1)
    {
      v19 = [*&v3[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel] text];
      if (v19)
      {
        v20 = v19;
        v21 = sub_100753094();
        v23 = v22;
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }
    }

    else
    {
      v21 = sub_10074F764();
      v23 = v24;
    }

    v26 = &v18[qword_1009234A0];
    *v26 = v21;
    v26[1] = v23;

    sub_100026F24();
    v27 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_searchAdTertiaryLabel;
    v28 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_searchAdTertiaryLabel];
    v29 = v18;
    if (v28)
    {
      [v28 removeFromSuperview];
      v28 = *&v3[v27];
    }

    *&v3[v27] = v18;
    v30 = v18;

    sub_1001CE71C();
    [v3 addSubview:v30];

    v31 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel;
    v32 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel];
    if (v32 && ([v32 isHidden] & 1) == 0 && (v33 = *&v3[v31]) != 0)
    {
      v34 = [v33 hasContent];
    }

    else
    {
      v34 = 0;
    }

    v35 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabelPresenter;
    swift_beginAccess();
    sub_100032C04(&v3[v35], v37);
    v36 = v38;
    sub_10000C8CC(v37, &unk_100923520);
    if (v36 || v34)
    {
      [*&v3[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel] setHidden:1];
    }

    [v3 setNeedsLayout];
  }

  else
  {
    v2[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_isDisplayingSearchAd] = 0;
    [v2 setNeedsLayout];
    v10 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_searchAdTertiaryLabel;
    v11 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_searchAdTertiaryLabel];
    if (v11)
    {
      [v11 removeFromSuperview];
      v12 = *&v3[v10];
    }

    else
    {
      v12 = 0;
    }

    *&v3[v10] = 0;

    v25 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel];
    if (v25)
    {

      [v25 setHidden:0];
    }
  }
}

uint64_t sub_1001CFB50(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_10000C518(&unk_100923210);
  sub_1007526C4();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10000C8CC(v4, &unk_100923960);
  }

  v8 = sub_10074F774();
  sub_1003C0E00(v8, 1, a1, v4);

  return (*(v6 + 8))(v4, v5);
}

uint64_t sub_1001CFCC8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001CFD10()
{
  v0 = sub_10000C518(&qword_100923E88);
  __chkstk_darwin(v0 - 8);
  v2 = &v32 - v1;
  v40 = sub_10074F654();
  v47 = *(v40 - 8);
  __chkstk_darwin(v40);
  v4 = (&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10000C518(&qword_100923230);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  sub_10000C518(&qword_100923E90);
  v15 = *(sub_10074F584() - 8);
  v45 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v37 = v17;
  *(v17 + 16) = xmmword_1007A7250;
  v43 = v17 + v16;
  v49 = 0x3FF8000000000000;
  sub_10001CC10();
  sub_10074F614();
  v48 = 0x4030000000000000;
  v49 = 0x4020000000000000;
  sub_10074F5F4();
  v49 = 0x4034000000000000;
  sub_10074F614();
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  v46 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v23 = *(v47 + 104);
  v47 += 104;
  v44 = v23;
  v24 = v40;
  v23(v4);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v49) = 0;
  v39 = v2;
  sub_10074F614();
  v49 = 0;
  v42 = v7;
  sub_10074F614();
  v38 = v14;
  v41 = v11;
  sub_10074F544();
  v49 = 0x3FF8000000000000;
  sub_10074F614();
  v48 = 0x4034000000000000;
  v49 = 0x4024000000000000;
  sub_10074F5F4();
  v49 = 0x4034000000000000;
  sub_10074F614();
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  v44(v4, v46, v24);
  LOBYTE(v49) = 0;
  sub_10074F614();
  v49 = 0;
  sub_10074F614();
  v27 = v45;
  top = UIEdgeInsetsZero.top;
  v36 = left;
  sub_10074F544();
  v49 = 0x4000000000000000;
  sub_10074F614();
  v49 = 0x4034000000000000;
  sub_10074F614();
  v49 = 0x4034000000000000;
  sub_10074F614();
  v34 = vdupq_n_s64(0x4041000000000000uLL);
  *v4 = v34;
  v28 = v40;
  v29 = v44;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  sub_10074F614();
  v49 = 0;
  sub_10074F614();
  sub_10074F544();
  v33 = 2 * v27 + v45;
  v49 = 0x4004000000000000;
  sub_10074F614();
  v49 = 0x4034000000000000;
  sub_10074F614();
  v49 = 0x4034000000000000;
  sub_10074F614();
  *v4 = v34;
  v29(v4, v46, v28);
  sub_1007535A4();
  LOBYTE(v49) = 0;
  sub_10074F614();
  v49 = 0;
  sub_10074F614();
  sub_10074F544();
  v33 = 4 * v45;
  v49 = 0x4010000000000000;
  sub_10074F614();
  v49 = 0x4038000000000000;
  sub_10074F614();
  v49 = 0x4034000000000000;
  sub_10074F614();
  v34 = vdupq_n_s64(0x404A000000000000uLL);
  *v4 = v34;
  v30 = v40;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  sub_10074F614();
  v49 = 0;
  sub_10074F614();
  sub_10074F544();
  v49 = 0x4014000000000000;
  sub_10074F614();
  v49 = 0x4038000000000000;
  sub_10074F614();
  v49 = 0x4034000000000000;
  sub_10074F614();
  *v4 = v34;
  v44(v4, v46, v30);
  LOBYTE(v49) = 0;
  sub_10074F614();
  v49 = 0;
  sub_10074F614();
  result = sub_10074F544();
  qword_10092C590 = v37;
  return result;
}

uint64_t NotifyMeButtonPresenter.__allocating_init(userNotificationsManager:notificationConfig:view:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1007527A4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v14 = v13 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_view;
  *(v13 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v13 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer) = 0;
  *(v13 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  swift_beginAccess();
  *(v14 + 8) = a4;
  swift_unknownObjectWeakAssign();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  sub_100752764();

  sub_100752D34();
  (*(v10 + 32))(v13 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_metricsPipeline, v12, v9);
  *(v13 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_objectGraph) = a5;
  sub_100744AC4();

  sub_100752D34();
  *(v13 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_bag) = v18;
  sub_1001D0C08();
  sub_1001D1314();
  v15 = [objc_opt_self() defaultCenter];
  sub_10074B0C4();

  v16 = sub_10074B034();
  [v15 addObserver:v13 selector:"userNotificationsDidChangeNotification:" name:v16 object:0];

  swift_unknownObjectRelease();

  return v13;
}

Swift::Void __swiftcall NotifyMeButtonPresenter.tearDown()()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer);
  if (v2)
  {
    [v2 invalidate];
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
}

Swift::Void __swiftcall NotifyMeButtonPresenter.didTapButton(sender:)(UIButton sender)
{
  v2 = *(v1 + 24);
  if (v2 && (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_isSchedulingNotification) & 1) == 0)
  {

    if (sub_1007448B4())
    {
      if (sub_10074B0A4())
      {
        sub_1001D2AC0(v2);
      }

      else
      {
        sub_1001D2F10(v2);
      }
    }

    else
    {
      sub_10074B074();
      v4 = swift_allocObject();
      swift_weakInit();
      v5 = swift_allocObject();
      swift_weakInit();
      v6 = swift_allocObject();
      v6[2].super.super.super.super.isa = v4;
      v6[3].super.super.super.super.isa = v5;
      v6[4].super.super.super.super.isa = v2;
      v6[5].super.super.super.super.isa = sender.super.super.super.super.isa;
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      *(v8 + 24) = v2;
      v9 = sub_100016C60(0, &qword_100926D00);
      swift_retain_n();
      v10 = sender.super.super.super.super.isa;

      v11[3] = v9;
      v11[4] = &protocol witness table for OS_dispatch_queue;
      v11[0] = sub_100753774();
      sub_100752D64();

      sub_10000C620(v11);
    }
  }
}

uint64_t sub_1001D0C08()
{
  v1 = sub_100741454();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  if (!*(v0 + 24))
  {
    v16 = v0 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_view;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v18 = *(v16 + 8);
    ObjectType = swift_getObjectType();
    (*(v18 + 40))(1, 0, ObjectType, v18);
    return swift_unknownObjectRelease();
  }

  sub_1007426B4();
  sub_100741444();
  sub_1001D3590(&qword_10092C6A0, &type metadata accessor for Date);
  v8 = sub_100753004();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  v10 = sub_10074B0A4();
  v11 = v0 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 8);
    v13 = swift_getObjectType();
    (*(v12 + 40))((v8 & 1) == 0, 0, v13, v12);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v11 + 8);
    v15 = swift_getObjectType();
    (*(v14 + 32))(v10 & 1, 0, v15, v14);

    return swift_unknownObjectRelease();
  }
}

uint64_t NotifyMeButtonPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_1001D0C08();
  return swift_unknownObjectRelease();
}

void (*NotifyMeButtonPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1001D1010;
}

void sub_1001D1010(uint64_t a1, char a2)
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
    sub_1001D0C08();
  }

  free(v3);
}

uint64_t NotifyMeButtonPresenter.init(userNotificationsManager:notificationConfig:view:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_1007527A4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v6 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_view;
  *(v6 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer) = 0;
  *(v6 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  swift_beginAccess();
  *(v15 + 8) = a4;
  swift_unknownObjectWeakAssign();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_100752764();

  sub_100752D34();
  (*(v12 + 32))(v6 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_metricsPipeline, v14, v11);
  *(v6 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_objectGraph) = a5;
  sub_100744AC4();

  sub_100752D34();
  *(v6 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_bag) = v19;
  sub_1001D0C08();
  sub_1001D1314();
  v16 = [objc_opt_self() defaultCenter];
  sub_10074B0C4();

  v17 = sub_10074B034();
  [v16 addObserver:v6 selector:"userNotificationsDidChangeNotification:" name:v17 object:0];

  swift_unknownObjectRelease();

  return v6;
}

void sub_1001D1314()
{
  v1 = v0;
  v2 = sub_100741454();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  if (*(v0 + 24))
  {
    sub_1007426B4();
    (*(v3 + 32))(v11, v8, v2);
    sub_100741444();
    v12 = sub_1007413E4();
    v13 = *(v3 + 8);
    v13(v5, v2);
    if ((v12 & 1) != 0 && (v14 = OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer, !*(v1 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer)))
    {
      isa = sub_1007413D4().super.isa;

      v16 = [objc_allocWithZone(NSTimer) initWithFireDate:isa interval:v1 target:"displayTimeReached" selector:0 userInfo:0 repeats:0.0];

      v17 = [objc_opt_self() mainRunLoop];
      [v17 addTimer:v16 forMode:NSRunLoopCommonModes];

      v13(v11, v2);
      v18 = *(v1 + v14);
      *(v1 + v14) = v16;
    }

    else
    {
      v13(v11, v2);
    }
  }
}

uint64_t sub_1001D1554()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t NotifyMeButtonPresenter.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v2 = OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_metricsPipeline;
  v3 = sub_1007527A4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  sub_10000C4F0(v0 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_view);

  return v0;
}

uint64_t NotifyMeButtonPresenter.__deallocating_deinit()
{
  NotifyMeButtonPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1001D16CC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v6 - 8);
  v8 = &v18[-v7];
  v9 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
    }

    v12 = Strong;
    if (v9)
    {

      v13 = sub_10074B0A4();

      if (v13)
      {
        sub_1001D2AC0(a4);
      }

      else
      {
        sub_1001D2F10(a4);
      }

      goto LABEL_11;
    }

    v14 = sub_1007426E4();
    if (!v14)
    {
LABEL_11:
    }

    v15 = v14;
    v16 = sub_10000C518(&unk_100923210);
    sub_1007526C4();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v8, 1, v16) == 1)
    {

      return sub_10000C8CC(v8, &unk_100923960);
    }

    else
    {
      sub_1003C0E00(v15, 1, v12, v8);

      return (*(v17 + 8))(v8, v16);
    }
  }

  return result;
}

uint64_t sub_1001D1914()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001D1970()
{
  v0 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_1007426C4();
    if (v5)
    {
      v6 = v5;
      v7 = sub_10000C518(&unk_100923210);
      sub_1007526C4();
      v8 = *(v7 - 8);
      if ((*(v8 + 48))(v2, 1, v7) == 1)
      {

        return sub_10000C8CC(v2, &unk_100923960);
      }

      else
      {
        sub_1003C0E00(v6, 1, v4, v2);

        return (*(v8 + 8))(v2, v7);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1001D1B20()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001D1B68(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v2 - 8);
  v4 = &v22[-v3];
  v5 = sub_10074B084();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    (*(v6 + 16))(v8, a1, v5);
    v11 = (*(v6 + 88))(v8, v5);
    if (v11 == enum case for UserNotificationsManager.SchedulingResult.scheduleChanged(_:) || v11 == enum case for UserNotificationsManager.SchedulingResult.scheduleAlreadyExists(_:))
    {
      v13 = sub_1007426D4();
      if (v13)
      {
        v14 = v13;
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v16 = Strong;
          v17 = sub_10000C518(&unk_100923210);
          sub_1007526C4();
          v18 = *(v17 - 8);
          if ((*(v18 + 48))(v4, 1, v17) == 1)
          {

            sub_10000C8CC(v4, &unk_100923960);
          }

          else
          {
            sub_1003C0E00(v14, 1, v16, v4);

            (*(v18 + 8))(v4, v17);
          }
        }

        else
        {
        }
      }
    }

    else
    {
      if (v11 != enum case for UserNotificationsManager.SchedulingResult.signInDidNotComplete(_:))
      {
        result = sub_100754744();
        __break(1u);
        return result;
      }

      v19 = v10 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v20 = *(v19 + 8);
        ObjectType = swift_getObjectType();
        (*(v20 + 32))(0, 0, ObjectType, v20);
        swift_unknownObjectRelease();
      }
    }

    *(v10 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  }

  return result;
}

uint64_t sub_1001D1EBC(uint64_t a1)
{
  v2 = sub_10074B084();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    (*(v3 + 16))(v5, a1, v2);
    v8 = (*(v3 + 88))(v5, v2);
    if (v8 != enum case for UserNotificationsManager.SchedulingResult.scheduleChanged(_:) && v8 != enum case for UserNotificationsManager.SchedulingResult.scheduleAlreadyExists(_:))
    {
      if (v8 != enum case for UserNotificationsManager.SchedulingResult.signInDidNotComplete(_:))
      {
        result = sub_100754744();
        __break(1u);
        return result;
      }

      v10 = v7 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v11 = *(v10 + 8);
        ObjectType = swift_getObjectType();
        (*(v11 + 32))(1, 0, ObjectType, v11);
        swift_unknownObjectRelease();
      }
    }

    *(v7 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  }

  return result;
}

uint64_t sub_1001D208C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = sub_1007426C4();
    if (v11)
    {
      v12 = v11;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v14 = Strong;
        v15 = sub_10000C518(&unk_100923210);
        sub_1007526C4();
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(v8, 1, v15) == 1)
        {

          sub_10000C8CC(v8, &unk_100923960);
        }

        else
        {
          sub_1003C0E00(v12, 1, v14, v8);

          (*(v16 + 8))(v8, v15);
        }
      }

      else
      {
      }
    }

    v17 = v10 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v17 + 8);
      ObjectType = swift_getObjectType();
      (*(v18 + 32))(a5 & 1, 0, ObjectType, v18);
      swift_unknownObjectRelease();
    }

    *(v10 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  }

  return result;
}

void sub_1001D22E4()
{
  v1 = sub_1007521E4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100752224();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 24))
  {
    v29 = v7;

    v10 = sub_100740E94();
    if (v10)
    {
      v11 = v10;
      sub_10074B0C4();
      v30 = sub_10074B054();
      v31 = v12;
      sub_1007544E4();
      if (*(v11 + 16) && (v13 = sub_100412148(aBlock), (v14 & 1) != 0))
      {
        sub_10000C5B4(*(v11 + 56) + 32 * v13, v32);
        sub_100016994(aBlock);

        if (swift_dynamicCast())
        {
          v15 = v31;
          v28 = v30;
          if (v28 == sub_1007426A4() && v15 == v16)
          {
          }

          else
          {
            LODWORD(v28) = sub_100754754();

            if ((v28 & 1) == 0)
            {
LABEL_21:

              return;
            }
          }
        }
      }

      else
      {

        sub_100016994(aBlock);
      }
    }

    v17 = sub_100740E94();
    if (v17)
    {
      v18 = v17;
      sub_10074B0C4();
      v30 = sub_10074B064();
      v31 = v19;
      sub_1007544E4();
      if (*(v18 + 16) && (v20 = sub_100412148(aBlock), (v21 & 1) != 0))
      {
        sub_10000C5B4(*(v18 + 56) + 32 * v20, v32);
        sub_100016994(aBlock);

        sub_100016C60(0, &qword_100922300);
        if (swift_dynamicCast())
        {
          v22 = v30;
          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v24 = Strong;
            swift_unknownObjectRelease();

            if (v22 == v24)
            {
              goto LABEL_21;
            }
          }

          else
          {
          }
        }
      }

      else
      {

        sub_100016994(aBlock);
      }
    }

    sub_100016C60(0, &qword_100926D00);
    v25 = sub_100753774();
    v26 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1001D34C8;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CF7B0;
    aBlock[3] = &unk_10086BDA8;
    v27 = _Block_copy(aBlock);

    sub_100752204();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1001D3590(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000C518(&unk_10092F750);
    sub_1000A8054();
    sub_1007543A4();
    sub_100753784();

    _Block_release(v27);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v9, v29);
  }
}

uint64_t sub_1001D2800()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001D0C08();
  }

  return result;
}

uint64_t sub_1001D2AC0(uint64_t a1)
{
  v24 = sub_100752B34();
  v3 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_1009281C0);
  __chkstk_darwin(v6 - 8);
  v8 = v22 - v7;
  v9 = sub_1007524D4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v23 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_isSchedulingNotification) = 1;
  v12 = v1 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v22[1] = v1;
    v13 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    (*(v13 + 32))(0, 1, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  sub_100742694();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000C8CC(v8, &unk_1009281C0);
  }

  else
  {
    v15 = v23;
    (*(v10 + 32))(v23, v8, v9);
    sub_100752B14();
    sub_100752794();

    (*(v3 + 8))(v5, v24);
    (*(v10 + 8))(v15, v9);
  }

  swift_unknownObjectWeakLoadStrong();
  sub_10074B0B4();
  swift_unknownObjectRelease();
  swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = a1;
  v18[4] = v17;
  v19 = sub_100016C60(0, &qword_100926D00);

  v20 = sub_100753774();
  v25[3] = v19;
  v25[4] = &protocol witness table for OS_dispatch_queue;
  v25[0] = v20;
  sub_100752D64();

  sub_10000C620(v25);
}

uint64_t sub_1001D2F10(uint64_t a1)
{
  v28 = sub_100752B34();
  v3 = *(v28 - 8);
  __chkstk_darwin(v28);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_1009281C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_1007524D4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v27 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_isSchedulingNotification) = 1;
  v12 = v1 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v26 = v10;
    v13 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    v10 = v26;
    (*(v13 + 32))(1, 1, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  sub_100742684();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000C8CC(v8, &unk_1009281C0);
  }

  else
  {
    v15 = v27;
    (*(v10 + 32))(v27, v8, v9);
    sub_100752B14();
    sub_100752794();

    (*(v3 + 8))(v5, v28);
    (*(v10 + 8))(v15, v9);
  }

  swift_unknownObjectWeakLoadStrong();
  sub_10074B094();
  swift_unknownObjectRelease();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = a1;
  v18[4] = v17;
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = a1;
  v21[4] = v20;
  v22 = sub_100016C60(0, &qword_100926D00);
  swift_retain_n();

  v23 = sub_100753774();
  v29[3] = v22;
  v29[4] = &protocol witness table for OS_dispatch_queue;
  v29[0] = v23;
  sub_100752D64();

  sub_10000C620(v29);
}

uint64_t type metadata accessor for NotifyMeButtonPresenter()
{
  result = qword_10092C5E0;
  if (!qword_10092C5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001D3400()
{
  result = sub_1007527A4();
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

uint64_t sub_1001D34D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001D3524()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001D3590(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1001D35E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = sub_100746D84();
  v9 = v8;
  v10 = sub_100746DA4();
  v11 = sub_100746D94();
  swift_getObjectType();
  v12 = sub_1001BF6CC(v7, v9, v10, v11, a6);

  return v12;
}

void *sub_1001D3738(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    sub_10001E1C8(0, v3, 0);
    v37 = _swiftEmptyArrayStorage;
    v5 = a1 + 64;
    result = sub_1007543B4();
    v6 = result;
    v7 = 0;
    v8 = *(a1 + 36);
    v32 = v3;
    v33 = v8;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v11 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      if (v8 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v12 = (*(a1 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      v15 = *(*(a1 + 56) + 8 * v6);

      v16 = a2(v13, v14, v15);
      v35 = v18;
      v36 = v17;
      v20 = v19;

      v21 = v37;
      v23 = v37[2];
      v22 = v37[3];
      if (v23 >= v22 >> 1)
      {
        result = sub_10001E1C8((v22 > 1), v23 + 1, 1);
        v21 = v37;
      }

      v21[2] = v23 + 1;
      v24 = &v21[4 * v23];
      v24[4] = v16;
      v24[5] = v36;
      v24[6] = v35;
      v24[7] = v20;
      v9 = 1 << *(a1 + 32);
      if (v6 >= v9)
      {
        goto LABEL_25;
      }

      v5 = a1 + 64;
      v25 = *(a1 + 64 + 8 * v11);
      if ((v25 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      v37 = v21;
      v8 = v33;
      if (v33 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v26 = v25 & (-2 << (v6 & 0x3F));
      if (v26)
      {
        v9 = __clz(__rbit64(v26)) | v6 & 0x7FFFFFFFFFFFFFC0;
        v10 = v32;
      }

      else
      {
        v27 = v11 << 6;
        v28 = v11 + 1;
        v10 = v32;
        v29 = (a1 + 72 + 8 * v11);
        while (v28 < (v9 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_1001D3DC4(v6, v33, 0);
            v9 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        result = sub_1001D3DC4(v6, v33, 0);
      }

LABEL_4:
      ++v7;
      v6 = v9;
      if (v7 == v10)
      {
        return v37;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

id sub_1001D39CC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_titleLabel];
  sub_100746D84();
  v3 = sub_100753064();

  [v2 setText:v3];

  sub_100746DA4();
  v4 = sub_100746D74();
  v5 = sub_100743EA4();
  v6 = sub_1001D3738(v5, sub_1000E12F0);

  v7 = sub_100743E94();
  sub_10004DF04(v7, v4, v6);

  v8 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_iconImageView];
  v9 = sub_100746D64();
  [v8 setTintColor:v9];

  *&v1[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_icon] = sub_100746D94();

  return [v1 setNeedsLayout];
}

void sub_1001D3B64()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_icon);
  if (v1)
  {

    if (sub_10074F1A4())
    {
      v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_iconImageView);
      if (sub_10074F1D4())
      {
        v3 = sub_100743AC4();
      }

      else if (sub_10074F1C4())
      {
        v3 = sub_10056028C(v1, 0);
      }

      else
      {
        v3 = 0;
      }

      [v2 setImage:v3];
    }

    else
    {
      v4 = qword_100920540;

      if (v4 != -1)
      {
        swift_once();
      }

      v5 = sub_100743AC4();
      if (v5)
      {
        v6 = v5;
        [v5 size];
      }

      sub_10074F364();
      sub_1001A28CC();
      sub_1001D3D7C(&qword_1009281E0, sub_1001A28CC);
      sub_100744204();
    }
  }
}

uint64_t sub_1001D3D7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001D3DC4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_1001D3DFC(void *a1)
{
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    swift_getObjectType();
    v2 = a1;
    sub_10074BFF4();
  }
}

uint64_t sub_1001D3EA4(void *a1, uint64_t a2, uint64_t a3)
{
  v57[1] = a3;
  v61 = a1;
  v3 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v3 - 8);
  v57[0] = v57 - v4;
  v60 = sub_1007457B4();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_10074E984();
  v6 = *(v62 - 8);
  __chkstk_darwin(v62);
  v8 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v57 - v10;
  v12 = sub_10000C518(&unk_100930810);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v57 - v14;
  v16 = sub_10000C518(&unk_10092E450);
  v63 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = v57 - v17;
  swift_getKeyPath();
  sub_100746914();
  v19 = v16;

  sub_100746944();
  sub_1007525C4();
  (*(v13 + 8))(v15, v12);
  swift_getKeyPath();
  sub_1007525B4();
  v20 = v62;

  (*(v6 + 32))(v8, v11, v20);
  v21 = (*(v6 + 88))(v8, v20);
  if (v21 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v21 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    (*(v6 + 8))(v8, v20);
    swift_getKeyPath();
    v22 = v58;
    sub_1007525B4();

    v23 = sub_1002EF020();
    (*(v59 + 8))(v22, v60);
    v24 = v61;
    if ([v61 overrideUserInterfaceStyle] != v23)
    {
      [v24 setOverrideUserInterfaceStyle:v23];
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v24)
    {
      sub_10000C824(v68, v66);
      v25 = v24;
      sub_10000C518(&qword_1009242A0);
      sub_10000C518(&qword_1009253C0);
      if (swift_dynamicCast())
      {
        sub_100032CCC(v64, v67);
        sub_10000C888(v67, v67[3]);
        if (sub_10074CA14())
        {
          sub_100748644();
        }

        swift_getObjectType();
        sub_100747AF4();

        sub_10000C620(v67);
      }

      else
      {

        v65 = 0;
        memset(v64, 0, sizeof(v64));
        sub_10000C8CC(v64, &qword_1009253C8);
      }
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v24)
    {
      swift_getObjectType();
      v26 = v24;
      sub_10074BFE4();
    }

    swift_getObjectType();
    v27 = swift_conformsToProtocol2();
    if (v27 && v24)
    {
      v28 = v27;
      ObjectType = swift_getObjectType();
      v30 = v19;
      v31 = *(v28 + 8);
      v32 = v24;
      v33 = v31(ObjectType, v28);
      v19 = v30;
      v34 = v33;
      v35 = (v33 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreTapHandler);
      v36 = *(v33 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreTapHandler);
      *v35 = 0;
      v35[1] = 0;
      sub_1000164A8(v36);
      [*&v34[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreButton] setUserInteractionEnabled:0];
    }

    v37 = [objc_opt_self() standardUserDefaults];
    v38 = sub_1006FE690();

    if (v38)
    {
      v39 = v61;
      [v61 bounds];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v48 = [objc_opt_self() blueColor];
      v49 = objc_allocWithZone(type metadata accessor for ImpressionMetricsDebugOverlay());
      v50 = sub_10020836C(v48, v41, v43, v45, v47);
      v51 = v18;
      sub_10000C888(v68, v68[3]);
      v52 = v57[0];
      sub_100752F24();
      sub_100207F4C(v52);
      sub_10000C8CC(v52, &unk_100925380);
      v53 = [v39 contentView];
      v54 = [v53 viewWithTag:58236912];

      [v54 removeFromSuperview];
      v55 = [v39 contentView];
      [v55 addSubview:v50];

      v18 = v51;
    }
  }

  (*(v63 + 8))(v18, v19);
  return sub_10000C620(v68);
}

void sub_1001D4720(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v9 - 8);
  v11 = &v38[-1] - v10;
  v12 = sub_10000C518(&unk_10092E450);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v38[-1] - v14;
  swift_getObjectType();
  v16 = swift_conformsToProtocol2();
  if (v16 && a1)
  {
    v17 = v16;
    ObjectType = swift_getObjectType();
    sub_100274ED8(a2, a5, ObjectType, v17);
  }

  else
  {
    type metadata accessor for TodayDebugSectionBackgroundView();
    if (swift_dynamicCastClass())
    {
      sub_1004B6708(a2);
    }

    else
    {
      v19 = type metadata accessor for InteractiveSectionBackgroundView();
      v20 = swift_dynamicCastClass();
      if (v20)
      {
        v21 = v20;
        type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
        v37 = v19;
        sub_100752764();
        sub_100752D34();
        sub_10031557C(a2, a4, a5);
        v38[3] = v37;
        v38[4] = &off_1008761A8;
        v38[0] = v21;
        v22 = a1;
        sub_10004F9EC(v38);

        sub_10000C8CC(v38, &unk_1009242D0);
      }
    }
  }

  v23 = [objc_opt_self() standardUserDefaults];
  v24 = sub_1006FE690();

  if (v24)
  {
    [a1 bounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = [objc_opt_self() redColor];
    v34 = objc_allocWithZone(type metadata accessor for ImpressionMetricsDebugOverlay());
    v35 = sub_10020836C(v33, v26, v28, v30, v32);
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    (*(v13 + 8))(v15, v12);
    sub_100207F4C(v11);
    sub_10000C8CC(v11, &unk_100925380);
    v36 = [a1 viewWithTag:58236912];
    [v36 removeFromSuperview];

    [a1 addSubview:v35];
  }
}

unint64_t sub_1001D4B24()
{
  result = qword_10092C7A8;
  if (!qword_10092C7A8)
  {
    sub_100746E14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092C7A8);
  }

  return result;
}

uint64_t sub_1001D4B84(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v50 = a1;
  v2 = sub_100741454();
  v44 = *(v2 - 8);
  v45 = v2;
  __chkstk_darwin(v2);
  v43 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&qword_10092C7B0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v48 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v43 - v8;
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  sub_10000C518(&qword_100930CA0);
  v49 = sub_100752DE4();
  sub_100752854();
  sub_100752844();
  sub_100746E14();
  sub_100746DE4();
  sub_10000C518(&qword_10092C7B8);
  sub_100752534();

  v14 = *(v5 + 8);
  v51 = v4;
  v14(v13, v4);
  if (v53)
  {
  }

  else
  {
    sub_100752844();
    sub_100746DE4();
    v53 = &_swiftEmptyDictionarySingleton;
    sub_100752544();
  }

  sub_100752844();
  sub_100746DE4();
  sub_100752534();

  v46 = v14;
  v14(v9, v51);
  v15 = v53;
  v16 = v48;
  if (!v53)
  {
    goto LABEL_13;
  }

  v17 = sub_100746DF4();
  if (!v15[2])
  {

    goto LABEL_12;
  }

  v19 = sub_1003861D0(v17, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_12:

LABEL_13:
    sub_100746E04();
LABEL_14:
    sub_100752844();
    sub_100746DE4();
    v32 = sub_100752524();
    if (*v31)
    {
      v33 = v31;
      v34 = sub_100746DF4();
      v36 = v35;
      v37 = v43;
      sub_100741444();
      sub_100741424();
      v39 = v38;
      (*(v44 + 8))(v37, v45);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = *v33;
      *v33 = 0x8000000000000000;
      sub_100673F08(v34, v36, isUniquelyReferenced_nonNull_native, v39);

      *v33 = v52;
    }

    v32(&v53, 0);

    v46(v16, v51);
    v41 = sub_100746DC4();
    sub_10052AB60(v41, 1, v47);

    v30 = v49;
    sub_100752D54();
    goto LABEL_17;
  }

  v22 = *(v15[7] + 8 * v19);

  *&v23 = COERCE_DOUBLE(sub_100746E04());
  if ((v24 & 1) == 0)
  {
    v25 = *&v23;
    v26 = v43;
    sub_100741444();
    sub_100741424();
    v28 = v27;
    (*(v44 + 8))(v26, v45);
    if (v28 - v22 > v25)
    {
      goto LABEL_14;
    }
  }

  v29 = sub_100746DD4();
  if (!v29)
  {
    sub_1001D5110();
    swift_allocError();
    v30 = v49;
    sub_100752DA4();

    return v30;
  }

  sub_10052AB60(v29, 1, v47);
  v30 = v49;
  sub_100752D54();

LABEL_17:

  return v30;
}

unint64_t sub_1001D5110()
{
  result = qword_10092C7C0;
  if (!qword_10092C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092C7C0);
  }

  return result;
}

unint64_t sub_1001D5178()
{
  result = qword_10092C7C8;
  if (!qword_10092C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092C7C8);
  }

  return result;
}

uint64_t sub_1001D51CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074EB34();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1001D51F8()
{
  qword_10092C7E8 = sub_1007457D4();
  qword_10092C7F0 = sub_1001D72CC(&qword_10092C838, &type metadata accessor for SpacerDimension);
  sub_10000D134(qword_10092C7D0);
  return sub_1007457C4();
}

uint64_t sub_1001D5274()
{
  v0 = sub_100743B04();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.chevronDown(_:), v0, v2);
  v5 = sub_100743AE4();
  result = (*(v1 + 8))(v4, v0);
  qword_10092C7F8 = v5;
  return result;
}

char *sub_1001D536C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10074AB44();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v15 - 8);
  v17 = &v31 - v16;
  if (qword_1009210F8 != -1)
  {
    swift_once();
  }

  v18 = sub_100750534();
  v19 = sub_10000D0FC(v18, qword_100981020);
  v20 = *(v18 - 8);
  (*(v20 + 16))(v17, v19, v18);
  (*(v20 + 56))(v17, 0, 1, v18);
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v21 = objc_allocWithZone(sub_100745C84());
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension29ProductReviewsShelfHeaderView_titleLabel] = sub_100745C74();
  v22 = [objc_allocWithZone(UIButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension29ProductReviewsShelfHeaderView_sortButton] = v22;
  v31.receiver = v5;
  v31.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC22SubscribePageExtension29ProductReviewsShelfHeaderView_titleLabel;
  [*&v27[OBJC_IVAR____TtC22SubscribePageExtension29ProductReviewsShelfHeaderView_titleLabel] setHidden:1];
  [v27 addSubview:*&v27[v28]];
  v29 = OBJC_IVAR____TtC22SubscribePageExtension29ProductReviewsShelfHeaderView_sortButton;
  [*&v27[OBJC_IVAR____TtC22SubscribePageExtension29ProductReviewsShelfHeaderView_sortButton] setHidden:1];
  [v27 addSubview:*&v27[v29]];

  return v27;
}

id sub_1001D5714()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10000C518(&qword_100932470);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v10 - v4;
  v10.receiver = v0;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, "prepareForReuse", v3);
  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29ProductReviewsShelfHeaderView_titleLabel];
  [v6 setText:0];
  [v6 setHidden:1];
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29ProductReviewsShelfHeaderView_sortButton];
  v8 = sub_1007541F4();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_100754224();
  [v7 setMenu:0];
  [v7 setShowsMenuAsPrimaryAction:0];
  return [v7 setHidden:1];
}

id sub_1001D58B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = a4;
  v39 = a2;
  v42 = a3;
  ObjectType = swift_getObjectType();
  v5 = sub_10000C518(&qword_100932470);
  __chkstk_darwin(v5 - 8);
  v37 = &ObjectType - v6;
  v41 = sub_10074EAB4();
  v7 = *(v41 - 8);
  __chkstk_darwin(v41);
  v9 = &ObjectType - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &ObjectType - v11;
  v13 = sub_10000C518(&unk_10092E450);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &ObjectType - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &ObjectType - v18;
  v40 = a1;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v20 = *(v14 + 8);
  v20(v19, v13);
  if (v44 && (sub_1007530F4(), v22 = v21, , v22))
  {
    v23 = *&v43[OBJC_IVAR____TtC22SubscribePageExtension29ProductReviewsShelfHeaderView_titleLabel];
    v24 = sub_100753064();

    [v23 setText:{v24, ObjectType}];

    [v23 setHidden:{0, ObjectType}];
  }

  else
  {
    [*&v43[OBJC_IVAR____TtC22SubscribePageExtension29ProductReviewsShelfHeaderView_titleLabel] setHidden:{1, ObjectType}];
  }

  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v20(v16, v13);
  sub_10074EAA4();
  sub_1001D72CC(&unk_100925360, &type metadata accessor for Shelf.PresentationHints);
  v25 = v41;
  v26 = sub_100754324();
  v27 = *(v7 + 8);
  v27(v9, v25);
  v27(v12, v25);
  v28 = v43;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (!v42)
  {
    goto LABEL_11;
  }

  sub_1007530F4();
  if (!v29)
  {
    goto LABEL_11;
  }

  if (!v38)
  {

LABEL_11:
    v34 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension29ProductReviewsShelfHeaderView_sortButton];
    [v34 setMenu:0];
    [v34 setShowsMenuAsPrimaryAction:0];
    [v34 setHidden:1];
    return [v28 setNeedsLayout];
  }

  v30 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension29ProductReviewsShelfHeaderView_sortButton];
  v31 = v38;
  v32 = v37;
  sub_1001D5DC8();

  v33 = sub_1007541F4();
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  sub_100754224();
  [v30 setMenu:v31];
  [v30 setShowsMenuAsPrimaryAction:1];
  [v30 setHidden:0];

  return [v28 setNeedsLayout];
}

void sub_1001D5DC8()
{
  v0 = sub_1007410D4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_10000C518(&qword_100923030);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_100038D38();
  if (qword_100921100 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  sub_10000D0FC(v5, qword_100981038);
  v6 = sub_100753C04();
  sub_1007541A4();
  sub_10000C518(&unk_100929CA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A5A00;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = v4;
  *(inited + 40) = v6;

  v8 = NSFontAttributeName;
  v9 = v6;
  sub_100413A18(inited);
  swift_setDeallocating();
  sub_10000C8CC(inited + 32, &unk_100923510);
  sub_1007410F4();
  sub_100741094();
  v10 = sub_100741084();
  (*(*(v10 - 8) + 56))(v3, 0, 1, v10);
  sub_1007540F4();
  v11 = [objc_opt_self() configurationWithFont:v9 scale:1];
  sub_100754024();
  if (qword_100920568 != -1)
  {
    swift_once();
  }

  v12 = qword_10092C7F8;
  sub_100754194();
  sub_100754094();
  sub_1007540D4();
  sub_1007540C4();
}

void sub_1001D60A4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C518(&qword_100932470);
  __chkstk_darwin(v4 - 8);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v27 - v8;
  v10 = sub_10074AB44();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  (*(v11 + 16))(v13, a1, v10);
  v15 = (*(v11 + 88))(v13, v10);
  if (v15 == enum case for DirectionalTextAlignment.leading(_:))
  {
    v16 = [v2 traitCollection];
    v17 = sub_1007537F4();

    if (v17)
    {
      v18 = 2;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    if (v15 != enum case for DirectionalTextAlignment.trailing(_:))
    {

      (*(v11 + 8))(v13, v10);
      return;
    }

    v19 = [v2 traitCollection];
    v20 = sub_1007537F4();

    if (v20)
    {
      v18 = 0;
    }

    else
    {
      v18 = 2;
    }
  }

  [v14 setAlignment:v18];
  sub_100754214();
  v21 = sub_1007541F4();
  if ((*(*(v21 - 8) + 48))(v9, 1, v21))
  {
LABEL_12:
    sub_10003BB1C(v9, v6);
    sub_100754224();

    sub_10000C8CC(v9, &qword_100932470);
    return;
  }

  v22 = sub_1007540E4();
  v24 = v23;
  v25 = sub_100741084();
  if ((*(*(v25 - 8) + 48))(v24, 1, v25))
  {
    v22(v28, 0);
    goto LABEL_12;
  }

  v27[1] = v14;
  sub_1001D7314();
  v26 = v14;
  sub_1007410A4();
  v22(v28, 0);
  sub_100754224();
}

id sub_1001D6438()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10074AB44();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.receiver = v0;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "layoutSubviews", v4);
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29ProductReviewsShelfHeaderView_titleLabel];
  sub_1007477B4();
  v8 = [v0 traitCollection];
  sub_100753F74();
  v10 = v9;
  v12 = v11;

  sub_1007477B4();
  v14 = v13;
  v16 = v15;
  v17 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29ProductReviewsShelfHeaderView_sortButton];
  sub_1007477B4();
  v18 = [v0 traitCollection];
  sub_100754004();
  v20 = v19;

  sub_1007477B4();
  CGRectGetMaxX(v28);
  sub_1007477B4();
  CGRectGetMinY(v29);
  if (([v7 isHidden] & 1) != 0 || (objc_msgSend(v17, "isHidden") & 1) != 0 || (v26 = v10, v21 = v10 + 16.0 + v20, sub_1007477B4(), Width = CGRectGetWidth(v30), v23 = v26, Width >= v21))
  {
    (*(v3 + 104))(v6, enum case for DirectionalTextAlignment.trailing(_:), v2);
    sub_1001D60A4(v6);
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    (*(v3 + 104))(v6, enum case for DirectionalTextAlignment.leading(_:), v2);
    sub_1001D60A4(v6);
    (*(v3 + 8))(v6, v2);
    sub_1007477B4();
    v31.origin.x = v14;
    v31.origin.y = v16;
    v31.size.width = v23;
    v31.size.height = v12;
    CGRectGetMaxY(v31);
  }

  sub_1007477B4();
  sub_100753B24();
  [v7 setFrame:?];
  sub_1007477B4();
  sub_100753B24();
  return [v17 setFrame:?];
}

uint64_t sub_1001D6864@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074EB34();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_1001D68B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v83 = a3;
  v69 = a2;
  v4 = sub_100754724();
  v85 = *(v4 - 8);
  v86 = v4;
  __chkstk_darwin(v4);
  v84 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074EAB4();
  v81 = *(v6 - 8);
  v82 = v6;
  __chkstk_darwin(v6);
  v80 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v67 - v9;
  v73 = sub_100750E94();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v70 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v71 = &v67 - v13;
  v76 = sub_100750BD4();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&unk_10092E450);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v67 - v20;
  v22 = sub_10074F704();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747BC4();
  sub_10074FC24();
  sub_10074F674();
  v27 = v26;
  (*(v23 + 8))(v25, v22);
  v88 = sub_100747B94();
  v79 = a1;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v28 = *(v16 + 8);
  v28(v21, v15);
  if (v90 && (sub_1007530F4(), v30 = v29, , v30))
  {
    v31 = v70;
    sub_100750E84();
    v32 = v74;
    if (qword_1009210F8 != -1)
    {
      swift_once();
    }

    v33 = sub_100750534();
    sub_10000D0FC(v33, qword_100981020);
    sub_100750E54();
    (*(v72 + 8))(v31, v73);
    sub_100750BB4();
    sub_100750BF4();
    sub_100750BC4();
    v87 = v34;
    v89 = v35;
    v78 = v36;
    v77 = v37;
    (*(v75 + 8))(v32, v76);
  }

  else
  {
    v38 = JUMeasurementsZero[1];
    v87 = JUMeasurementsZero[0];
    v89 = v38;
    v39 = JUMeasurementsZero[3];
    v78 = JUMeasurementsZero[2];
    v77 = v39;
  }

  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v28(v18, v15);
  v40 = v80;
  sub_10074EAA4();
  sub_1001D72CC(&unk_100925360, &type metadata accessor for Shelf.PresentationHints);
  v41 = v82;
  v42 = sub_100754324();
  v43 = *(v81 + 8);
  v43(v40, v41);
  v43(v10, v41);
  v68 = v27;
  if ((v42 & 1) != 0 && v83 && (sub_1007530F4(), v44))
  {
    v45 = v70;
    sub_100750E84();
    v46 = v88;
    if (qword_100921100 != -1)
    {
      swift_once();
    }

    v47 = sub_100750534();
    sub_10000D0FC(v47, qword_100981038);
    sub_100750E54();
    (*(v72 + 8))(v45, v73);
    sub_100750BB4();
    v48 = v74;
    sub_100750BF4();
    _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();
    v50 = v49;
    if (qword_100920568 != -1)
    {
      swift_once();
    }

    [qword_10092C7F8 size];
    v52 = v50 * v51 + 4.0;
    sub_100750BC4();
    v54 = v53;
    v56 = v55;
    (*(v75 + 8))(v48, v76);
    v57 = v54 + v52;
  }

  else
  {
    v56 = JUMeasurementsZero[1];
    v57 = JUMeasurementsZero[0];
    v46 = v88;
  }

  if ((JUMeasurementsEqual() & 1) != 0 || (JUMeasurementsEqual() & 1) != 0 || v68 >= v87 + 16.0 + v57)
  {
    if (v89 > v56)
    {
      v58 = v89;
    }

    else
    {
      v58 = v56;
    }
  }

  else
  {
    v58 = v89 + v56 + 8.0;
  }

  v59 = objc_opt_self();
  v60 = [v59 fractionalWidthDimension:1.0];
  if (qword_100920560 != -1)
  {
    swift_once();
  }

  sub_10000C888(qword_10092C7D0, qword_10092C7E8);
  sub_100747BA4();
  v61 = v84;
  sub_100536120();
  sub_100750564();
  v63 = v62;
  swift_unknownObjectRelease();
  (*(v85 + 8))(v61, v86);
  v64 = [v59 absoluteDimension:v58 + v63];
  v65 = [objc_opt_self() sizeWithWidthDimension:v60 heightDimension:v64];

  return v65;
}

uint64_t sub_1001D72CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001D7314()
{
  result = qword_10092C840;
  if (!qword_10092C840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092C840);
  }

  return result;
}

uint64_t DebugMenuPage.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DebugMenuPage.debugSettingsProviders.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1001D7408(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001D7450(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void PageTraitEnvironment.pageColumnWidth.getter()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_1007537B4();

  if (v3)
  {
    [v1 pageContainerSize];
    sub_1001D7694(v4, v5);
    PageTraitEnvironment.pageColumnMargin.getter();
  }

  else
  {
    [v1 pageMarginInsets];
    [v1 pageContainerSize];
  }
}

void PageTraitEnvironment.defaultPageMargin.getter()
{
  [v0 pageContainerSize];
  v2 = v1;
  v4 = v3;
  v5 = [v0 traitCollection];
  v6 = sub_1007537B4();

  if ((v6 & 1) == 0)
  {
    if (v4 < v2)
    {
LABEL_5:
      JUScreenClassGetLandscapeWidth();
      return;
    }

    goto LABEL_10;
  }

  if (v4 >= v2)
  {
    if (v2 == 744.0)
    {
      return;
    }

    JUScreenClassGetPortraitWidth();
    if (v2 <= v8)
    {
      return;
    }

LABEL_10:
    JUScreenClassGetPortraitWidth();
    return;
  }

  if (v2 != 1133.0)
  {
    JUScreenClassGetLandscapeWidth();
    if (v2 > v7)
    {
      goto LABEL_5;
    }
  }
}

uint64_t sub_1001D7694(double a1, double a2)
{
  if (a2 >= a1)
  {
    if (a1 != 744.0)
    {
      result = JUScreenClassGetPortraitWidth();
      if (v5 < a1)
      {
        return JUScreenClassGetPortraitWidth();
      }
    }
  }

  else if (a1 != 1133.0)
  {
    result = JUScreenClassGetLandscapeWidth();
    if (v4 < a1)
    {
      return JUScreenClassGetLandscapeWidth();
    }
  }

  return result;
}

double PageTraitEnvironment.pageContentSize.getter()
{
  [v0 pageContainerSize];
  v2 = v1;
  [v0 pageMarginInsets];
  return v2 - v3 - v4;
}

void (*sub_1001D77A0(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_videoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_screenshots);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1001D7804;
}

void sub_1001D7804(id *a1, char a2)
{
  v4 = a1[1];
  v26 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_1001D9234(&qword_1009230E0, 255, type metadata accessor for VideoView);
      v7 = v26;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_100009D34();
        v10 = v4;
        v11 = sub_100753FC4();

        if (v11)
        {
          v12 = swift_unknownObjectWeakLoadStrong();
          if (v12)
          {
            v13 = v12;
            [v12 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v26;
    }

    swift_unknownObjectWeakAssign();
    v23 = swift_unknownObjectWeakLoadStrong();
    v24 = a1[1];
    if (v23)
    {
      v25 = v23;
      [a1[1] addSubview:v23];
    }

    sub_10062FDFC();
    [v24 setNeedsLayout];

    v22 = *a1;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_1001D9234(&qword_1009230E0, 255, type metadata accessor for VideoView);
    v14 = [v6 superview];
    if (v14)
    {
      v15 = v14;
      sub_100009D34();
      v16 = v4;
      v17 = sub_100753FC4();

      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }

      v18 = swift_unknownObjectWeakLoadStrong();
      if (!v18)
      {
        goto LABEL_13;
      }

      v6 = v18;
      [v18 removeFromSuperview];
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v19 = swift_unknownObjectWeakLoadStrong();
  v20 = a1[1];
  if (v19)
  {
    v21 = v19;
    [a1[1] addSubview:v19];
  }

  sub_10062FDFC();
  [v20 setNeedsLayout];
  v22 = v26;
LABEL_21:
}

char *sub_1001D7AA8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_screenshots;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for LockupMediaView()) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_preferredImageSizes] = &_swiftEmptyDictionarySingleton;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for ContentSearchResultCollectionViewCell();
  v11 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v15 = v11;
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v16 = [v15 contentView];
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v17 = [v15 contentView];
  [v17 addSubview:*&v15[OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_lockupView]];

  v18 = [v15 contentView];
  [v18 addSubview:*&v15[OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_screenshots]];

  return v15;
}

id sub_1001D7D60()
{
  v1 = v0;
  v33.receiver = v0;
  v33.super_class = type metadata accessor for ContentSearchResultCollectionViewCell();
  objc_msgSendSuper2(&v33, "layoutSubviews");
  v2 = [v0 contentView];
  sub_100009D34();
  sub_1007477B4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_lockupView];
  sub_10017CB48();
  sub_100753B24();
  [v11 setFrame:?];
  v34.origin.x = v4;
  v34.origin.y = v6;
  v34.size.width = v8;
  v34.size.height = v10;
  CGRectGetMinX(v34);
  [v11 frame];
  CGRectGetMaxY(v35);
  if (qword_100921708 != -1)
  {
    swift_once();
  }

  v12 = sub_100750B04();
  sub_10000D0FC(v12, qword_100982098);
  v13 = [v1 traitCollection];
  sub_100751034();
  sub_10000C518(&unk_1009231A0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1007A5CF0;
  *(v14 + 32) = v13;
  v15 = v13;
  v16 = sub_100751044();
  sub_100750544();

  v18 = *&v11[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_title];
  v17 = *&v11[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_title + 8];
  v19 = *&v11[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel];

  v20 = [v19 text];
  if (v20)
  {
    v21 = v20;
    v22 = sub_100753094();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  v25 = [*&v11[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_descriptionLabel] text];
  if (v25)
  {
    v26 = v25;
    v27 = sub_100753094();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  v30 = [v1 traitCollection];
  sub_1001D8750(v18, v8, v17, v22, v24, v27, v29, v30);

  v31 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_screenshots];
  [v1 bounds];
  sub_100753B24();
  return [v31 setFrame:?];
}

id sub_1001D81B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContentSearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001D8284(void *a1)
{
  sub_1001D85EC();
}

uint64_t (*sub_1001D82BC(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1001D77A0(v2);
  return sub_1000181A8;
}

uint64_t sub_1001D832C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_1001D8380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_1001D83EC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_getWitnessTable();
  *(v3 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

uint64_t sub_1001D8488(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_screenshots);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_100009D34();
  v5 = v2;
  v6 = sub_100753FC4();

  return v6 & 1;
}

id sub_1001D85EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_screenshots);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1001D9234(&qword_1009230E0, 255, type metadata accessor for VideoView);
    v4 = [v3 superview];
    if (!v4)
    {
LABEL_6:

      goto LABEL_7;
    }

    v5 = v4;
    sub_100009D34();
    v6 = v1;
    v7 = sub_100753FC4();

    if (v7)
    {
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v3 = v8;
        [v8 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    [v1 addSubview:v9];
  }

  sub_10062FDFC();

  return [v1 setNeedsLayout];
}

double sub_1001D8750(NSString *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v80 = a6;
  v81 = a7;
  v75 = a4;
  v76 = a5;
  v69 = a1;
  v10 = sub_10074A8C4();
  v86 = *(v10 - 8);
  v87 = v10;
  __chkstk_darwin(v10);
  v85 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10074CD14();
  v78 = *(v12 - 8);
  v79 = v12;
  __chkstk_darwin(v12);
  v70 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1007479B4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v65 - v19;
  v21 = sub_10074A8A4();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v83 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v65 - v25;
  if (qword_100920410 != -1)
  {
    swift_once();
  }

  v27 = sub_10000D0FC(v21, qword_10097E010);
  v28 = *(v22 + 16);
  v92 = v21;
  v72 = v28;
  v73 = v22 + 16;
  v28(v26, v27, v21);
  v29 = sub_100753804();
  v84 = v22;
  if (v29)
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v30 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v30 = qword_10093FF58;
  }

  v31 = sub_10000D0FC(v14, v30);
  v32 = v15;
  (*(v15 + 16))(v17, v31, v14);
  (*(v15 + 32))(v20, v17, v14);
  v33 = [a8 preferredContentSizeCategory];
  sub_100753924();
  v82 = v14;

  sub_100747964();
  sub_100747994();
  v91 = v26;
  sub_10074A894();
  sub_10074A884();
  v34 = sub_100750F34();
  v74 = a8;
  v35 = v34;
  swift_allocObject();
  v90 = sub_100750F14();
  v36 = objc_opt_self();

  v66 = v36;
  v37 = [v36 preferredFontForTextStyle:UIFontTextStyleBody];
  v38 = sub_10074F3F4();
  v77 = v20;
  v39 = v38;
  v129[3] = v38;
  *&v89 = sub_1001D9234(&qword_10092AC70, 255, &type metadata accessor for Feature);
  v129[4] = v89;
  v40 = sub_10000D134(v129);
  v68 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v41 = *(v39 - 8);
  v42 = *(v41 + 104);
  v71 = v32;
  v88 = v41 + 104;
  v42(v40);
  v67 = v42;
  sub_10074FC74();
  sub_10000C620(v129);
  v43 = v70;
  sub_10074CD04();
  sub_10074CCE4();
  v44 = v79;
  v78 = *(v78 + 8);
  (v78)(v43, v79);
  v69 = UIFontTextStyleFootnote;

  v45 = [v36 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v128[3] = v39;
  v128[4] = v89;
  v46 = sub_10000D134(v128);
  v47 = v68;
  (v42)(v46, v68, v39);
  sub_10074FC74();
  sub_10000C620(v128);
  sub_10074CD04();
  sub_10074CCE4();
  v48 = v78;
  (v78)(v43, v44);

  v49 = [v66 preferredFontForTextStyle:v69];
  v127[3] = v39;
  v127[4] = v89;
  v50 = sub_10000D134(v127);
  v67(v50, v47, v39);
  sub_10074FC74();
  sub_10000C620(v127);
  sub_10074CD04();
  sub_10074CCE4();
  v48(v43, v44);
  sub_10001BB7C(0, 0);
  swift_allocObject();
  v51 = sub_100750F14();

  sub_10001BB7C(0, 0);
  swift_allocObject();
  v52 = sub_100750F14();
  v72(v83, v91, v92);
  v126 = &protocol witness table for LayoutViewPlaceholder;
  v125 = v35;
  v124 = v90;
  v123 = 0;
  *&v121[40] = 0u;
  v122 = 0u;
  sub_10000C824(v129, v121);
  sub_10000C824(v128, &v120);
  v119 = 0;
  v117 = 0u;
  v118 = 0u;
  v116 = 0;
  v114 = 0u;
  v115 = 0u;

  v53 = sub_100750F24();
  v113 = &protocol witness table for LayoutViewPlaceholder;
  v112 = v35;
  v111 = v53;
  v110 = 0;
  v108 = 0u;
  v109 = 0u;
  v107 = 0;
  v105 = 0u;
  v106 = 0u;
  v104 = 0;
  v102 = 0u;
  v103 = 0u;
  v101 = 0;
  v100 = 0u;
  *&v99[40] = 0u;
  sub_10000C824(v127, v99);
  v97 = v35;
  v98 = &protocol witness table for LayoutViewPlaceholder;
  v95 = &protocol witness table for LayoutViewPlaceholder;
  v96 = v51;
  v94 = v35;
  v93 = v52;
  v54 = v85;
  sub_10074A8B4();
  sub_100751034();
  sub_10000C518(&unk_1009231A0);
  v55 = swift_allocObject();
  v89 = xmmword_1007A5CF0;
  *(v55 + 16) = xmmword_1007A5CF0;
  v56 = v74;
  *(v55 + 32) = v74;
  v57 = v56;
  v58 = sub_100751044();
  sub_1001D9234(&unk_10092AC80, 255, &type metadata accessor for SmallSearchLockupLayout);
  v59 = v87;
  sub_100750404();

  (*(v86 + 8))(v54, v59);
  sub_10000C620(v127);
  sub_10000C620(v128);
  sub_10000C620(v129);
  (*(v71 + 8))(v77, v82);
  (*(v84 + 8))(v91, v92);
  if (qword_100921708 != -1)
  {
    swift_once();
  }

  v60 = sub_100750B04();
  sub_10000D0FC(v60, qword_100982098);
  v61 = swift_allocObject();
  *(v61 + 16) = v89;
  *(v61 + 32) = v57;
  v62 = v57;
  v63 = sub_100751044();
  sub_100750544();

  return a2;
}

uint64_t sub_1001D9234(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t ProductLockupLayout.Metrics.init(layoutMargins:bannerViewHeight:secondaryBannerViewHeight:iconSize:iconHorizontalMargin:titleSpace:titleFont:titleMaxNumberOfLines:subtitleSpace:subtitleFont:subtitleMaxNumberOfLines:tertiaryTitleSpace:tertiaryTitleFont:tertiaryTitleMaxNumberOfLines:offerTopSpace:offerSubtitleMetrics:shareButtonLeadingMargin:expandedOfferSubtitleSpace:expandedOfferHorizontalMargin:compactExpandedOfferShareButtonTopSpace:bottomSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 *a20, uint64_t a21, __int128 *a22, __int128 *a23, uint64_t a24, __int128 *a25, __int128 *a26)
{
  *a9 = a10;
  a9[1] = a11;
  a9[2] = a12;
  a9[3] = a13;
  sub_100012160(a1, (a9 + 4));
  sub_100012160(a2, (a9 + 9));
  a9[14] = a14;
  a9[15] = a15;
  v33 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v34 = v33[8];
  v35 = sub_10000C518(&unk_1009249B0);
  v44 = *(*(v35 - 8) + 32);
  v44(a9 + v34, a3, v35);
  v44(a9 + v33[9], a4, v35);
  v36 = v33[10];
  v37 = sub_10000C518(&unk_100923C20);
  v43 = *(*(v37 - 8) + 32);
  v43(a9 + v36, a5, v37);
  v38 = v33[11];
  v39 = sub_10000C518(&unk_10092BC10);
  v40 = *(*(v39 - 8) + 32);
  v40(a9 + v38, a6, v39);
  v44(a9 + v33[12], a7, v35);
  v43(a9 + v33[13], a8, v37);
  v40(a9 + v33[14], a16, v39);
  v44(a9 + v33[15], a17, v35);
  v43(a9 + v33[16], a18, v37);
  v40(a9 + v33[17], a19, v39);
  sub_100012160(a20, a9 + v33[18]);
  sub_1001D97E4(a21, a9 + v33[19], type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
  sub_100012160(a22, a9 + v33[20]);
  sub_100012160(a23, a9 + v33[21]);
  v44(a9 + v33[22], a24, v35);
  sub_100012160(a25, a9 + v33[23]);
  v41 = a9 + v33[24];

  return sub_100012160(a26, v41);
}

__n128 ProductLockupLayout.init(metrics:iconView:titleLabel:developerLabel:taglineLabel:tertiaryTitleLabel:shareButton:offerButton:offerSubtitleLabel:expandedOfferTitleLabel:expandedOfferSubtitleLabel:hasExpandedOffer:offerSubtitleText:bannerView:secondaryBannerView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_1001D97E4(a1, a9, type metadata accessor for ProductLockupLayout.Metrics);
  v23 = type metadata accessor for ProductLockupLayout(0);
  sub_100012160(a2, a9 + v23[5]);
  sub_100012160(a3, a9 + v23[6]);
  sub_100012160(a4, a9 + v23[7]);
  sub_100012160(a5, a9 + v23[8]);
  v24 = a9 + v23[9];
  v25 = *(a6 + 16);
  *v24 = *a6;
  *(v24 + 16) = v25;
  *(v24 + 32) = *(a6 + 32);
  v26 = a9 + v23[10];
  v27 = *(a7 + 16);
  *v26 = *a7;
  *(v26 + 16) = v27;
  *(v26 + 32) = *(a7 + 32);
  sub_100012160(a8, a9 + v23[11]);
  sub_100012160(a10, a9 + v23[12]);
  v28 = a9 + v23[13];
  v29 = *(a11 + 16);
  *v28 = *a11;
  *(v28 + 16) = v29;
  *(v28 + 32) = *(a11 + 32);
  v30 = a9 + v23[14];
  v31 = *(a12 + 16);
  *v30 = *a12;
  *(v30 + 16) = v31;
  *(v30 + 32) = *(a12 + 32);
  *(a9 + v23[15]) = a13;
  v32 = (a9 + v23[16]);
  *v32 = a14;
  v32[1] = a15;
  v33 = a9 + v23[17];
  *(v33 + 32) = *(a16 + 32);
  v34 = *(a16 + 16);
  *v33 = *a16;
  *(v33 + 16) = v34;
  v35 = a9 + v23[18];
  *(v35 + 32) = *(a17 + 32);
  result = *(a17 + 16);
  *v35 = *a17;
  *(v35 + 16) = result;
  return result;
}

uint64_t sub_1001D97E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ProductLockupLayout.offerSubtitleText.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProductLockupLayout(0) + 64));

  return v1;
}

uint64_t ProductLockupLayout.Metrics.OfferSubtitleMetrics.font.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 20);
  v4 = sub_10000C518(&unk_100923C20);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.OfferSubtitleMetrics.font.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 20);
  v4 = sub_10000C518(&unk_100923C20);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.OfferSubtitleMetrics.maxWidth.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 24);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.OfferSubtitleMetrics.leadingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 28);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

void ProductLockupAccessibilityLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t ProductLockupAccessibilityLayout.Metrics.bannerViewHeight.setter(__int128 *a1)
{
  sub_10000C620(v1 + 32);

  return sub_100012160(a1, v1 + 32);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.secondaryBannerViewHeight.setter(__int128 *a1)
{
  sub_10000C620(v1 + 72);

  return sub_100012160(a1, v1 + 72);
}

uint64_t ProductLockupLayout.Metrics.iconHorizontalMargin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 32);
  v4 = sub_10000C518(&unk_1009249B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.iconHorizontalMargin.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 32);
  v4 = sub_10000C518(&unk_1009249B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.titleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 36);
  v4 = sub_10000C518(&unk_1009249B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.titleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 36);
  v4 = sub_10000C518(&unk_1009249B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.titleFont.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 40);
  v4 = sub_10000C518(&unk_100923C20);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.titleMaxNumberOfLines.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 44);
  v4 = sub_10000C518(&unk_10092BC10);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 48);
  v4 = sub_10000C518(&unk_1009249B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 48);
  v4 = sub_10000C518(&unk_1009249B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleFont.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 52);
  v4 = sub_10000C518(&unk_100923C20);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleMaxNumberOfLines.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 56);
  v4 = sub_10000C518(&unk_10092BC10);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleMaxNumberOfLines.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 56);
  v4 = sub_10000C518(&unk_10092BC10);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 60);
  v4 = sub_10000C518(&unk_1009249B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 60);
  v4 = sub_10000C518(&unk_1009249B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleFont.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 64);
  v4 = sub_10000C518(&unk_100923C20);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleMaxNumberOfLines.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 68);
  v4 = sub_10000C518(&unk_10092BC10);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleMaxNumberOfLines.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 68);
  v4 = sub_10000C518(&unk_10092BC10);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.offerTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 72);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t sub_1001DABAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ProductLockupLayout.Metrics.offerSubtitleMetrics.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 76);

  return sub_1001DAC58(a1, v3);
}

uint64_t sub_1001DAC58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ProductLockupLayout.Metrics.shareButtonLeadingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 80);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.expandedOfferSubtitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 84);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.expandedOfferHorizontalMargin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 88);
  v4 = sub_10000C518(&unk_1009249B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.expandedOfferHorizontalMargin.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 88);
  v4 = sub_10000C518(&unk_1009249B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.compactExpandedOfferShareButtonTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 92);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 96);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

double ProductLockupLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();

  return sub_1001DFA40(a1, v3, ObjectType, a2, a3);
}

uint64_t ProductLockupLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v260 = a6;
  v261 = a3;
  v242 = a2;
  v13 = sub_100754724();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v224 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C888((*&v6 + 32), *(*&v6 + 56));
  sub_100536120();
  sub_100750564();
  v18 = v17;
  v21 = *(v14 + 8);
  v19 = v14 + 8;
  v20 = v21;
  v21(v16, v13);
  sub_10000C888((*&v7 + 72), *(*&v7 + 96));
  sub_100536120();
  sub_100750564();
  v23 = v22;
  v259 = v13;
  v21(v16, v13);
  v24 = **&v6;
  v25 = *(*&v6 + 8);
  v231 = v18;
  v232 = v23;
  v26 = sub_10010FD98(a3, a4, a5, a6, v18 + v24, v25);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = *(*&v6 + 112);
  v33 = *(*&v6 + 120);
  *&v35 = COERCE_DOUBLE(type metadata accessor for ProductLockupLayout(0));
  sub_10000C888((*&v7 + v35[5]), *(*&v7 + v35[5] + 24));
  v257 = a4;
  v256 = a5;
  sub_100753B24();
  sub_100750394();
  v278.origin.x = v26;
  v278.origin.y = v28;
  v278.size.width = v34;
  v243 = v33;
  v278.size.height = v33;
  MaxX = CGRectGetMaxX(v278);
  v36 = type metadata accessor for ProductLockupLayout.Metrics(0);
  *&v272 = a1;
  v37 = sub_10000C518(&unk_1009249B0);
  sub_100743464();
  v38 = v275;
  v279.origin.x = v26;
  v279.origin.y = v28;
  v279.size.width = v30;
  v279.size.height = v32;
  MinY = CGRectGetMinY(v279);
  v280.origin.x = v26;
  v280.origin.y = v28;
  v280.size.width = v30;
  v280.size.height = v32;
  Width = CGRectGetWidth(v280);
  *&v272 = a1;
  *&v240 = v37;
  sub_100743464();
  v244 = v34;
  v40 = v34 + v275;
  v266 = v26;
  v281.origin.x = v26;
  v267 = v28;
  v281.origin.y = v28;
  v281.size.width = v30;
  v281.size.height = v32;
  Height = CGRectGetHeight(v281);
  v250 = v35[10];
  sub_100016B4C(*&v6 + v250, &v275, &unk_100928A00);
  v263 = v30;
  if (v276)
  {
    sub_10000C888(&v275, v276);
    sub_100750414();
    v252 = v41;
    v228 = v42;
    sub_10000C620(&v275);
  }

  else
  {
    sub_10000C8CC(&v275, &unk_100928A00);
    v252 = 0.0;
    v228 = 0.0;
  }

  v43 = v32;
  v44 = MaxX + v38;
  v45 = Width - v40;
  sub_100016B4C(*&v6 + v250, &v275, &unk_100928A00);
  v46 = v276;
  sub_10000C8CC(&v275, &unk_100928A00);
  v47 = 0.0;
  if (v46)
  {
    sub_10000C888((*&v6 + *(v36 + 80)), *(*&v6 + *(v36 + 80) + 24));
    sub_100536120();
    sub_100750564();
    v47 = v48;
    v20(v16, v259);
  }

  v248 = v36;
  v49 = (*&v6 + v35[11]);
  v50 = v49[3];
  v241 = v49;
  sub_10000C888(v49, v50);
  v282.origin.x = v44;
  v282.origin.y = MinY;
  v282.size.width = v45;
  v282.size.height = Height;
  CGRectGetWidth(v282);
  v265 = v45;
  v51 = v266;
  v283.origin.x = v266;
  v52 = v267;
  v283.origin.y = v267;
  v283.size.width = v263;
  v255 = v47;
  v53 = v263;
  v283.size.height = v43;
  CGRectGetHeight(v283);
  sub_100750414();
  v55 = v54;
  v251 = v56;
  v284.origin.x = v51;
  v284.origin.y = v52;
  v284.size.width = v53;
  v284.size.height = v43;
  v262 = v43;
  CGRectGetWidth(v284);
  v57 = *&v6 + *(v36 + 76);
  v58 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v59 = (v57 + *(v58 + 28));
  v60 = v59[3];
  v226 = v59;
  sub_10000C888(v59, v60);
  MaxX = v7;
  v61 = v35;
  v62 = a1;
  v63 = v20;
  sub_100536120();
  sub_100750564();
  v64 = v259;
  v63(v16, v259);
  v245 = v55;
  v65 = v44;
  v66 = v252;
  v67 = (v57 + *(v58 + 24));
  v68 = v67[3];
  v224 = v67;
  sub_10000C888(v67, v68);
  sub_100536120();
  sub_100750564();
  v246 = v16;
  v247 = v19;
  v253 = v63;
  v63(v16, v64);
  v69 = v62;
  v70 = (*&MaxX + v61[12]);
  v71 = v70[3];
  v227 = v70;
  sub_10000C888(v70, v71);
  v285.origin.x = v51;
  v72 = v52;
  v285.origin.y = v52;
  v73 = v263;
  v285.size.width = v263;
  v285.size.height = v43;
  CGRectGetHeight(v285);
  sub_100750404();
  v239 = v74;
  v75 = [v62 traitCollection];
  LOBYTE(v71) = sub_1007537D4();

  v286.origin.x = v65;
  v76 = v65;
  v258 = v65;
  v77 = MinY;
  v286.origin.y = MinY;
  v286.size.width = v265;
  v78 = Height;
  v286.size.height = Height;
  v79 = CGRectGetWidth(v286);
  if (v71)
  {
    v80 = v79;
  }

  else
  {
    v80 = v79 - v66 - v255;
  }

  v238 = v80;
  v81 = (*&MaxX + v61[6]);
  sub_10000C888(v81, v81[3]);
  v287.origin.x = v51;
  v287.origin.y = v72;
  v287.size.width = v73;
  v82 = v262;
  v287.size.height = v262;
  CGRectGetHeight(v287);
  sub_100750404();
  v255 = v83;
  v236 = v84;
  v86 = v85;
  v249 = v85;
  v254 = v87;
  v88 = v248;
  *&v272 = v69;
  sub_100743464();
  v89 = v51;
  v90 = v275;
  v288.origin.x = v76;
  v288.origin.y = v77;
  v288.size.width = v265;
  v288.size.height = v78;
  MinX = CGRectGetMinX(v288);
  v289.origin.x = v89;
  v91 = v267;
  v289.origin.y = v267;
  v289.size.width = v73;
  v289.size.height = v82;
  v92 = CGRectGetMinY(v289);
  if (v90 - v86 > 0.0)
  {
    v93 = v90 - v86;
  }

  else
  {
    v93 = 0.0;
  }

  sub_10000C888(v81, v81[3]);
  sub_100750844();
  if (v255 >= v238)
  {
    v95 = v238;
  }

  else
  {
    v95 = v255;
  }

  v96 = v92 + v93 + v94;
  v290.origin.x = MinX;
  v290.origin.y = v96;
  v290.size.width = v95;
  v97 = v236;
  v290.size.height = v236;
  v237 = CGRectGetMaxY(v290) - v254;
  sub_10000C888(v81, v81[3]);
  v98 = v91;
  sub_100753B24();
  sub_100750394();
  v225 = v81;
  sub_10000C824(v81, &v275);
  *&v272 = v69;
  sub_10000C518(&unk_10092BC10);
  sub_100743464();
  *&v238 = v61[9];
  sub_100016B4C(*&MaxX + *&v238, &v272, &qword_10092BC30);
  sub_10000C8CC(&v272, &qword_10092BC30);
  sub_10000C888(&v275, v276);
  v291.var0 = v255;
  v291.var1 = v97;
  v291.var2 = v249;
  v291.var3 = v254;
  sub_100750874(v291);
  sub_10000C620(&v275);
  v99 = (*&MaxX + v61[7]);
  sub_10000C888(v99, v99[3]);
  sub_100750834();
  v249 = *&v61;
  v100 = v61[8];
  v101 = *&MaxX;
  v102 = (*&MaxX + v100);
  sub_10000C888((*&MaxX + v100), *(*&MaxX + v100 + 24));
  sub_100750834();
  *&v272 = v69;
  sub_100743464();
  v103 = v275;
  sub_10000C888(v99, v99[3]);
  v104 = v258;
  v292.origin.x = v258;
  v105 = MinY;
  v292.origin.y = MinY;
  v106 = v265;
  v292.size.width = v265;
  v107 = Height;
  v292.size.height = Height;
  CGRectGetWidth(v292);
  v293.origin.x = v266;
  v293.origin.y = v98;
  v108 = v263;
  v293.size.width = v263;
  v293.size.height = v262;
  CGRectGetHeight(v293);
  sub_100750404();
  v110 = v109;
  v236 = v111;
  v113 = v112;
  v230 = v114;
  v294.origin.x = v104;
  v294.origin.y = v105;
  v294.size.width = v106;
  v294.size.height = v107;
  MinX = CGRectGetMinX(v294);
  v295.origin.x = v104;
  v295.origin.y = v105;
  v295.size.width = v106;
  v295.size.height = v107;
  v115 = CGRectGetWidth(v295);
  if (v110 < v115)
  {
    v115 = v110;
  }

  v255 = v115;
  v116 = v237 + v103;
  v254 = v237 + v103 - v113;
  sub_10000C888(v102, v102[3]);
  v296.origin.x = v104;
  v296.origin.y = v105;
  v296.size.width = v106;
  v296.size.height = v107;
  CGRectGetWidth(v296);
  v297.origin.x = v266;
  v297.origin.y = v267;
  v297.size.width = v108;
  v297.size.height = v262;
  CGRectGetHeight(v297);
  sub_100750404();
  v118 = v117;
  v237 = v119;
  v121 = v120;
  v229 = v122;
  v298.origin.x = v104;
  v298.origin.y = v105;
  v298.size.width = v106;
  v298.size.height = v107;
  v234 = CGRectGetMinX(v298);
  v299.origin.x = v104;
  v299.origin.y = v105;
  v299.size.width = v106;
  v299.size.height = v107;
  v123 = CGRectGetWidth(v299);
  if (v118 >= v123)
  {
    v118 = v123;
  }

  v124 = v116 - v121;
  sub_10000C888(v99, v99[3]);
  v125 = MinX;
  v126 = v236;
  sub_100753B24();
  sub_100750394();
  sub_10000C888(v102, v102[3]);
  v127 = v234;
  v233 = v124;
  v128 = v237;
  sub_100753B24();
  sub_100750394();
  v300.origin.x = v127;
  v129 = v127;
  v300.origin.y = v124;
  v300.size.width = v118;
  v300.size.height = v128;
  v130 = v128;
  MaxY = CGRectGetMaxY(v300);
  v132 = v125;
  v301.origin.x = v125;
  v133 = v254;
  v301.origin.y = v254;
  v134 = v255;
  v301.size.width = v255;
  v301.size.height = v126;
  v135 = CGRectGetMaxY(v301) < MaxY;
  v136 = v129;
  if (v135)
  {
    v137 = v129;
  }

  else
  {
    v137 = v132;
  }

  v138 = v233;
  if (v135)
  {
    v139 = v233;
  }

  else
  {
    v139 = v133;
  }

  v140 = v118;
  if (!v135)
  {
    v118 = v134;
  }

  v141 = v130;
  if (!v135)
  {
    v130 = v126;
  }

  v237 = CGRectGetMaxY(*&v136);
  v302.origin.x = v132;
  v302.origin.y = v133;
  v302.size.width = v134;
  v302.size.height = v126;
  v142 = CGRectGetMaxY(v302);
  v303.origin.x = v137;
  v303.origin.y = v139;
  v303.size.width = v118;
  v303.size.height = v130;
  v143 = CGRectGetMaxY(v303);
  sub_100016B4C(v101 + *&v238, &v272, &qword_10092BC30);
  if (v273)
  {
    v144 = v230;
    if (v142 < v237)
    {
      v144 = v229;
    }

    v255 = v143 - v144;
    sub_100012160(&v272, &v275);
    *&v270 = v69;
    sub_100743464();
    v254 = *&v272;
    sub_10000C888(&v275, v276);
    v145 = v258;
    v304.origin.x = v258;
    v146 = MinY;
    v304.origin.y = MinY;
    v147 = v265;
    v304.size.width = v265;
    v148 = Height;
    v304.size.height = Height;
    CGRectGetWidth(v304);
    v305.origin.x = v266;
    v305.origin.y = v267;
    v305.size.width = v263;
    v305.size.height = v262;
    CGRectGetHeight(v305);
    sub_100750404();
    v150 = v149;
    v152 = v151;
    v154 = v153;
    v306.origin.x = v145;
    v306.origin.y = v146;
    v306.size.width = v147;
    v306.size.height = v148;
    v155 = CGRectGetMinX(v306);
    v307.origin.x = v145;
    v307.origin.y = v146;
    v307.size.width = v147;
    v307.size.height = v148;
    v156 = CGRectGetWidth(v307);
    if (v150 >= v156)
    {
      v150 = v156;
    }

    v157 = v255 + v254 - v154;
    sub_10000C888(&v275, v276);
    sub_100753B24();
    sub_100750394();
    v308.origin.x = v155;
    v308.origin.y = v157;
    v308.size.width = v150;
    v308.size.height = v152;
    v158 = CGRectGetMaxY(v308);
    v309.origin.x = v155;
    v309.origin.y = v157;
    v309.size.width = v150;
    v309.size.height = v152;
    CGRectGetMaxY(v309);
    sub_10000C620(&v275);
    v159 = v88;
  }

  else
  {
    sub_10000C8CC(&v272, &qword_10092BC30);
    v159 = v88;
    v158 = v143;
  }

  v160 = v241;
  sub_10000C888(v241, v241[3]);
  v161 = sub_1007503A4();
  v310.origin.x = v266;
  v310.origin.y = v267;
  v310.size.width = v244;
  v310.size.height = v243;
  v162 = CGRectGetMaxY(v310);
  v163 = v239;
  if ((v161 & 1) == 0)
  {
    v163 = v251;
  }

  v164 = v162 - v163;
  sub_10000C888((v101 + *(v159 + 72)), *(v101 + *(v159 + 72) + 24));
  v165 = v246;
  sub_100536120();
  sub_100750564();
  v167 = v166;
  v253(v165, v259);
  v240 = v158;
  v168 = v158 + v167;
  v311.origin.x = v258;
  v169 = MinY;
  v311.origin.y = MinY;
  v311.size.width = v265;
  v311.size.height = Height;
  v170 = CGRectGetMinX(v311);
  if (v164 <= v168)
  {
    v164 = v168;
  }

  sub_10000C888(v160, v160[3]);
  v171 = v261;
  v172 = v260;
  v254 = v170;
  v255 = v164;
  v173 = v245;
  sub_100753B24();
  sub_100750394();
  v174 = *&v249;
  if (*(v101 + *(*&v249 + 60)) == 1)
  {
    v175 = *(*&v249 + 52);
    sub_100016B4C(v101 + v175, &v272, &qword_10092BC30);
    if (v273)
    {
      sub_100012160(&v272, &v275);
      sub_100016B4C(v101 + v174[14], &v270, &qword_10092BC30);
      v176 = v172;
      v177 = v257;
      if (v271)
      {
        v178 = v159;
        sub_100012160(&v270, &v272);
        v179 = [v69 traitCollection];
        v180 = sub_1007537D4();

        v181 = v276;
        v182 = v277;
        v183 = sub_10000C888(&v275, v276);
        v184 = v273;
        v185 = v274;
        v186 = sub_10000C888(&v272, v273);
        v187 = *(v182 + 8);
        v188 = *(v185 + 8);
        if (v180)
        {
          sub_1001DE9EC(v266, v267, v244, v243, v252, v228, v254, v255, v183, v186, v69, v101, v181, v184, v187, v188, v173, v251, v240, v266, v267, v263, v262);
        }

        else
        {
          sub_1001E1824(v252, v228, v254, v255, v173, v251, v266, v267, v183, v186, v69, v101, v181, v184, v187, v188, *&v263, *&v262, v258, v169, v265, Height);
        }

        sub_10000C620(&v272);
        sub_10000C620(&v275);
        v174 = *&v249;
        v159 = v178;
        goto LABEL_67;
      }

      sub_10000C8CC(&v270, &qword_10092BC30);
      sub_10000C620(&v275);
    }

    else
    {
      sub_10000C8CC(&v272, &qword_10092BC30);
      v176 = v172;
      v177 = v257;
    }

    sub_100016B4C(v101 + v175, &v275, &qword_10092BC30);
    v201 = v256;
    if (v276)
    {
      sub_10000C888(&v275, v276);
      sub_100750394();
      sub_10000C620(&v275);
    }

    else
    {
      sub_10000C8CC(&v275, &qword_10092BC30);
    }

    sub_100016B4C(v101 + v174[14], &v275, &qword_10092BC30);
    if (v276)
    {
      sub_10000C888(&v275, v276);
LABEL_81:
      sub_100750394();
      sub_10000C620(&v275);
      goto LABEL_84;
    }

    v204 = &qword_10092BC30;
    v205 = &v275;
  }

  else
  {
    sub_100016B4C(v101 + *(*&v249 + 52), &v275, &qword_10092BC30);
    if (v276)
    {
      sub_10000C888(&v275, v276);
      sub_100750394();
      sub_10000C620(&v275);
    }

    else
    {
      sub_10000C8CC(&v275, &qword_10092BC30);
    }

    v189 = *&v263;
    v176 = v172;
    v177 = v257;
    sub_100016B4C(v101 + v174[14], &v275, &qword_10092BC30);
    if (v276)
    {
      sub_10000C888(&v275, v276);
      sub_100750394();
      sub_10000C620(&v275);
    }

    else
    {
      sub_10000C8CC(&v275, &qword_10092BC30);
    }

    v190 = Height;
    v191 = [v69 traitCollection];
    v192 = sub_1007537D4();

    if (v192)
    {
      sub_1001DD204(v69, v254, v255, v173, v251, v252, v228, v266, v267, v193, v194, v195, v196, v197, v198, v199, v189, *&v262, v258, v169, v265, v190);
LABEL_67:
      v201 = v256;
      goto LABEL_84;
    }

    v200 = v227;
    sub_10000C888(v227, v227[3]);
    if (sub_1007503A4())
    {
      sub_10000C888(v200, v200[3]);
      sub_100750394();
      v159 = v248;
      v201 = v256;
    }

    else
    {
      sub_100016B4C(v101 + v250, &v275, &unk_100928A00);
      v202 = v276;
      sub_10000C8CC(&v275, &unk_100928A00);
      if (v202)
      {
        sub_10000C888((v101 + *(v248 + 80)), *(v101 + *(v248 + 80) + 24));
        sub_100536120();
        sub_100750564();
        v244 = v203;
        v253(v165, v259);
      }

      else
      {
        v244 = 0.0;
      }

      v206 = v265;
      v207 = v254;
      sub_100016B4C(v101 + v250, &v275, &unk_100928A00);
      if (v276)
      {
        sub_10000C888(&v275, v276);
        sub_100750414();
        sub_10000C620(&v275);
      }

      else
      {
        sub_10000C8CC(&v275, &unk_100928A00);
      }

      v312.origin.x = v258;
      v312.origin.y = v169;
      v312.size.width = v206;
      v312.size.height = v190;
      CGRectGetWidth(v312);
      v313.origin.x = v207;
      v208 = v255;
      v313.origin.y = v255;
      v313.size.width = v173;
      v209 = v251;
      v313.size.height = v251;
      CGRectGetWidth(v313);
      sub_10000C888(v226, v226[3]);
      sub_100536120();
      sub_100750564();
      v210 = v165;
      v211 = v259;
      v212 = v165;
      v213 = v253;
      v253(v210, v259);
      v214 = v254;
      v215 = v173;
      sub_10000C888(v224, v224[3]);
      sub_100536120();
      sub_100750564();
      v213(v212, v211);
      sub_10000C888(v227, v227[3]);
      sub_100750404();
      v217 = v216;
      v314.origin.x = v214;
      v314.origin.y = v208;
      v314.size.width = v215;
      v314.size.height = v209;
      CGRectGetMidY(v314);
      sub_10000C888(v160, v160[3]);
      if ((sub_1007503A4() & 1) != 0 || (v315.origin.x = v214, v315.origin.y = v208, v315.size.width = v215, v315.size.height = v209, CGRectGetHeight(v315) < v217))
      {
        v316.origin.x = v214;
        v316.origin.y = v208;
        v316.size.width = v215;
        v316.size.height = v209;
        CGRectGetMinY(v316);
      }

      v201 = v256;
      sub_10000C888(v160, v160[3]);
      v218 = sub_1007503A4();
      v165 = v246;
      v159 = v248;
      v219 = v214;
      v220 = v255;
      v221 = v245;
      v222 = v209;
      if (v218)
      {
        CGRectGetMinX(*&v219);
      }

      else
      {
        CGRectGetMaxX(*&v219);
        sub_10000C888(v226, v226[3]);
        sub_100536120();
        sub_100750564();
        v253(v165, v259);
      }

      v177 = v257;
      sub_10000C888(v227, v227[3]);
      sub_100753B24();
      sub_100750394();
      v171 = v261;
      v169 = MinY;
      v190 = Height;
    }

    sub_100016B4C(v101 + v250, &v272, &unk_100928A00);
    v174 = *&v249;
    if (v273)
    {
      sub_100012160(&v272, &v275);
      sub_10000C888(v225, v225[3]);
      sub_100750384();
      CGRectGetMidY(v317);
      v318.size.height = v190;
      v318.origin.x = v258;
      v318.origin.y = v169;
      v318.size.width = v265;
      CGRectGetMaxX(v318);
      sub_10000C888(&v275, v276);
      sub_100753B24();
      goto LABEL_81;
    }

    v204 = &unk_100928A00;
    v205 = &v272;
  }

  sub_10000C8CC(v205, v204);
LABEL_84:
  sub_100016B4C(v101 + v174[17], &v272, &unk_100928A00);
  if (v273)
  {
    sub_100012160(&v272, &v275);
    sub_10000C888(&v275, v276);
    v319.origin.x = v171;
    v319.origin.y = v177;
    v319.size.width = v201;
    v319.size.height = v176;
    CGRectGetMinX(v319);
    v320.origin.x = v171;
    v320.origin.y = v177;
    v320.size.width = v201;
    v320.size.height = v176;
    CGRectGetMinY(v320);
    v321.origin.x = v171;
    v321.origin.y = v177;
    v321.size.width = v201;
    v321.size.height = v176;
    CGRectGetWidth(v321);
    sub_100750394();
    sub_10000C620(&v275);
  }

  else
  {
    sub_10000C8CC(&v272, &unk_100928A00);
  }

  sub_100016B4C(v101 + v174[18], &v272, &unk_100928A00);
  if (v273)
  {
    sub_100012160(&v272, &v275);
    sub_10000C888(&v275, v276);
    v322.origin.x = v171;
    v322.origin.y = v177;
    v322.size.width = v201;
    v322.size.height = v176;
    CGRectGetMinX(v322);
    v323.origin.x = v171;
    v323.origin.y = v177;
    v323.size.width = v201;
    v323.size.height = v176;
    CGRectGetMaxY(v323);
    sub_10000C888((v101 + *(v159 + 96)), *(v101 + *(v159 + 96) + 24));
    sub_100536120();
    sub_100750564();
    v253(v165, v259);
    v324.origin.x = v171;
    v324.origin.y = v177;
    v324.size.width = v201;
    v324.size.height = v176;
    CGRectGetWidth(v324);
    sub_100750394();
    sub_10000C620(&v275);
  }

  else
  {
    sub_10000C8CC(&v272, &unk_100928A00);
  }

  return sub_100750314();
}

uint64_t sub_1001DD204(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, CGFloat a19, double a20, CGFloat a21, CGFloat a22)
{
  v23 = v22;
  v169 = a9;
  v168 = a8;
  v164 = a7;
  v174 = a2;
  v29 = a21;
  v30 = a22;
  v173 = a20;
  v31 = a19;
  v179 = sub_10074CD14();
  v32 = *(v179 - 8);
  __chkstk_darwin(v179);
  v34 = &v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v178 = &v145 - v36;
  v176 = sub_100740E74();
  v151 = *(v176 - 1);
  __chkstk_darwin(v176);
  v150 = &v145 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_100754724();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = &v145 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for ProductLockupLayout(0);
  v171 = *(v177 + 40);
  sub_100016B4C(v22 + v171, v182, &unk_100928A00);
  v42 = v183;
  sub_10000C8CC(v182, &unk_100928A00);
  v147 = v34;
  v175 = v32;
  if (v42)
  {
    v43 = type metadata accessor for ProductLockupLayout.Metrics(0);
    sub_10000C888((v22 + *(v43 + 80)), *(v22 + *(v43 + 80) + 24));
    sub_100536120();
    sub_100750564();
    v153 = v44;
    (*(v39 + 8))(v41, v38);
  }

  else
  {
    v153 = 0.0;
  }

  v166 = a18;
  v165 = a17;
  v185.origin.x = a19;
  v45 = v173;
  v185.origin.y = v173;
  v185.size.width = a21;
  v185.size.height = a22;
  Width = CGRectGetWidth(v185);
  v186.origin.x = v174;
  v186.origin.y = a3;
  v167 = a4;
  v186.size.width = a4;
  v172 = a5;
  v186.size.height = a5;
  v46 = CGRectGetWidth(v186);
  v148 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v47 = (v22 + *(v148 + 76));
  v48 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v49 = (v47 + *(v48 + 28));
  v50 = v49[3];
  v154 = v49;
  sub_10000C888(v49, v50);
  sub_100536120();
  sub_100750564();
  v52 = v51;
  v53 = *(v39 + 8);
  v159 = v41;
  v160 = v39 + 8;
  v158 = v53;
  v53(v41, v38);
  v54 = v177;
  v55 = (v22 + *(v177 + 64));
  v56 = *(v55 + 1);
  v163 = *v55;
  v149 = v48;
  v182[0] = a1;
  sub_10000C518(&unk_100923C20);
  v157 = v47;
  v57 = v56;
  sub_100743464();
  v58 = v180;
  v59 = *(v22 + *(v54 + 60));
  v60 = (v22 + *(v54 + 44));
  v61 = v60[3];
  v170 = v60;
  sub_10000C888(v60, v61);
  v62 = sub_1007503A4();
  v187.origin.x = a19;
  v187.origin.y = v45;
  v187.size.width = a21;
  v187.size.height = a22;
  CGRectGetWidth(v187);
  if (v57 == 0.0)
  {

    v65 = v172;
    v66 = v177;
    goto LABEL_21;
  }

  v63 = a6;
  v155 = a22;
  v156 = a21;
  v161 = a19;
  v162 = a3;
  v146 = v38;
  if (v62)
  {

    v64 = 0;
    v65 = v172;
LABEL_19:
    v80 = v177;
LABEL_20:
    v110 = (v23 + *(v80 + 48));
    v66 = v80;
    sub_10000C888(v110, v110[3]);
    if ((sub_1007503A4() & 1) == 0)
    {
      v145 = v63;
      if (v64)
      {
        v112 = v174;
        sub_10000C888(v110, v110[3]);
        sub_100750404();
        v114 = v113;
        sub_10000C888(v157, v157[3]);
        v179 = v114;
        sub_100750584();
        v189.origin.x = v112;
        v189.origin.y = a3;
        v115 = v167;
        v189.size.width = v167;
        v189.size.height = v65;
        CGRectGetMinX(v189);
        v190.origin.x = v112;
        v190.origin.y = a3;
        v190.size.width = v115;
        v190.size.height = v65;
        CGRectGetWidth(v190);
        sub_10000C888(v170, v170[3]);
        v116 = sub_1007503A4();
        v117 = v112;
        v118 = a3;
        v119 = v115;
        v120 = v65;
        if (v116)
        {
          CGRectGetMinY(*&v117);
        }

        else
        {
          CGRectGetMaxY(*&v117);
        }

        v29 = v156;
        v111 = v171;
      }

      else
      {
        v121 = v171;
        sub_100016B4C(v23 + v171, v182, &unk_100928A00);
        v122 = v183;
        sub_10000C8CC(v182, &unk_100928A00);
        if (v122)
        {
          sub_10000C888((v23 + *(v148 + 80)), *(v23 + *(v148 + 80) + 24));
          v123 = v159;
          sub_100536120();
          sub_100750564();
          v179 = v124;
          v158(v123, v146);
        }

        else
        {
          v179 = 0;
        }

        sub_100016B4C(v23 + v121, v182, &unk_100928A00);
        if (v183)
        {
          sub_10000C888(v182, v183);
          sub_100750414();
          v178 = v125;
          sub_10000C620(v182);
        }

        else
        {
          sub_10000C8CC(v182, &unk_100928A00);
          v178 = 0;
        }

        v191.origin.x = v161;
        v191.origin.y = v173;
        v191.size.width = v29;
        v191.size.height = v30;
        CGRectGetWidth(v191);
        v126 = v174;
        v192.origin.x = v174;
        v192.origin.y = a3;
        v127 = v167;
        v192.size.width = v167;
        v128 = v172;
        v192.size.height = v172;
        CGRectGetWidth(v192);
        sub_10000C888(v154, v154[3]);
        v129 = v159;
        sub_100536120();
        sub_100750564();
        v130 = a3;
        v131 = v146;
        v132 = v158;
        v158(v129, v146);
        v133 = v128;
        sub_10000C888((v157 + *(v149 + 24)), *(v157 + *(v149 + 24) + 24));
        sub_100536120();
        sub_100750564();
        v134 = v129;
        v135 = v131;
        v132(v134, v131);
        sub_10000C888(v110, v110[3]);
        sub_100750404();
        v137 = v136;
        v193.origin.x = v126;
        v193.origin.y = v130;
        v193.size.width = v127;
        v193.size.height = v133;
        CGRectGetMidY(v193);
        sub_10000C888(v170, v170[3]);
        if ((sub_1007503A4() & 1) != 0 || (v194.origin.x = v126, v194.origin.y = v130, v194.size.width = v127, v194.size.height = v133, CGRectGetHeight(v194) < v137))
        {
          v138 = v126;
          v195.origin.x = v126;
          v195.origin.y = v130;
          v195.size.width = v127;
          v195.size.height = v133;
          CGRectGetMinY(v195);
        }

        else
        {
          v138 = v126;
        }

        sub_10000C888(v170, v170[3]);
        v139 = sub_1007503A4();
        v111 = v171;
        v140 = v138;
        v141 = v162;
        v142 = v127;
        v143 = v172;
        if (v139)
        {
          CGRectGetMinX(*&v140);
        }

        else
        {
          CGRectGetMaxX(*&v140);
          sub_10000C888(v154, v154[3]);
          v144 = v159;
          sub_100536120();
          sub_100750564();
          v158(v144, v135);
        }

        v29 = v156;
      }

      sub_10000C888(v110, v110[3]);
      sub_100753B24();
      sub_100750394();
      v30 = v155;
      v31 = v161;
      v65 = v172;
      a3 = v162;
      goto LABEL_44;
    }

LABEL_21:
    sub_10000C888((v23 + *(v66 + 48)), *(v23 + *(v66 + 48) + 24));
    sub_100750394();
    v111 = v171;
LABEL_44:
    sub_100016B4C(v23 + v111, &v180, &unk_100928A00);
    if (!v181)
    {
      return sub_10000C8CC(&v180, &unk_100928A00);
    }

    sub_100012160(&v180, v182);
    sub_10000C888(v170, v170[3]);
    if (sub_1007503A4())
    {
      v196.origin.x = v174;
      v196.origin.y = a3;
      v196.size.width = v167;
      v196.size.height = v65;
      CGRectGetMinY(v196);
    }

    else
    {
      v197.origin.x = v174;
      v197.origin.y = a3;
      v197.size.width = v167;
      v197.size.height = v65;
      CGRectGetMidY(v197);
    }

    v198.origin.x = v31;
    v198.origin.y = v173;
    v198.size.width = v29;
    v198.size.height = v30;
    CGRectGetMaxX(v198);
    sub_10000C888(v182, v183);
    sub_100753B24();
    sub_100750394();
    return sub_10000C620(v182);
  }

  v67 = v46;
  v68 = v63;
  v69 = objc_opt_self();

  v70 = [v69 mainScreen];
  [v70 bounds];
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;

  v188.origin.x = v72;
  v188.origin.y = v74;
  v188.size.width = v76;
  v188.size.height = v78;
  v79 = CGRectGetWidth(v188);
  JUScreenClassGetPortraitWidth();
  v80 = v177;
  if (v79 <= v81)
  {
    v82 = v150;
    sub_100740E64();
    v182[0] = v163;
    *&v182[1] = v57;
    sub_1000D5C0C();
    sub_1007542C4();
    v84 = v83;
    (*(v151 + 8))(v82, v176);
    if ((v84 & 1) == 0)
    {

      v64 = 1;
      v63 = v68;
      v30 = v155;
      v29 = v156;
      v31 = v161;
      v65 = v172;
      a3 = v162;
      goto LABEL_20;
    }
  }

  v63 = v68;
  v29 = v156;
  a3 = v162;
  if (v59)
  {
    v85 = [a1 traitCollection];
    v86 = sub_1007537E4();

    if ((v86 & 1) == 0)
    {

      v64 = 1;
      v30 = v155;
      v31 = v161;
      v65 = v172;
      goto LABEL_20;
    }
  }

  v176 = v58;
  v151 = v23;
  v87 = Width - (v153 + v67 + v52 + v68);
  v153 = v57;
  result = sub_1001DE490();
  v89 = result;
  v90 = *(result + 16);
  v91 = (v175 + 8);
  LODWORD(v175) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v92 = result + 40;
  v93 = -v90;
  v94 = -1;
  v31 = v161;
  v65 = v172;
  while (1)
  {
    if (v93 + v94 == -1)
    {

      v103 = sub_10074F3F4();
      v183 = v103;
      v184 = sub_1001E25BC(&qword_10092AC70, &type metadata accessor for Feature);
      v104 = sub_10000D134(v182);
      (*(*(v103 - 8) + 104))(v104, v175, v103);
      v105 = v176;
      sub_10074FC74();
      sub_10000C620(v182);
      v106 = v147;
      sub_10074CD04();
      sub_1001E25BC(&unk_10092CB50, &type metadata accessor for LabelPlaceholderCompatibility);
      v107 = v179;
      sub_100750404();
      v109 = v108;

      (*v91)(v106, v107);
      v64 = v87 < v109;
      goto LABEL_18;
    }

    if (++v94 >= *(v89 + 16))
    {
      break;
    }

    v95 = v92 + 16;
    v96 = sub_10074F3F4();
    v183 = v96;
    v184 = sub_1001E25BC(&qword_10092AC70, &type metadata accessor for Feature);
    v97 = sub_10000D134(v182);
    (*(*(v96 - 8) + 104))(v97, v175, v96);

    v98 = v176;
    sub_10074FC74();
    sub_10000C620(v182);
    v99 = v178;
    sub_10074CD04();
    sub_1001E25BC(&unk_10092CB50, &type metadata accessor for LabelPlaceholderCompatibility);
    v100 = v179;
    sub_100750404();
    v102 = v101;
    result = (*v91)(v99, v100);
    v92 = v95;
    if (v87 < v102)
    {

      v64 = 1;
LABEL_18:
      v30 = v155;
      v23 = v151;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}
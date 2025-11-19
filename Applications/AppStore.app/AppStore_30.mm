uint64_t sub_10035B994@<X0>(uint64_t *a1@<X8>)
{
  v147 = a1;
  v1 = type metadata accessor for ShelfBackground();
  v141 = *(v1 - 8);
  v142 = v1;
  __chkstk_darwin(v1);
  v140 = &v130 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v139 = &v130 - v4;
  v146 = sub_10002849C(&qword_100972A48);
  __chkstk_darwin(v146);
  v150 = &v130 - v5;
  v6 = type metadata accessor for Shelf.ContentType();
  v7 = *(v6 - 8);
  v148 = v6;
  v149 = v7;
  __chkstk_darwin(v6);
  v9 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&unk_1009731F0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v144 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v130 - v14;
  v16 = sub_10002849C(&unk_10098FFB0);
  __chkstk_darwin(v16 - 8);
  v18 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v130 - v20;
  __chkstk_darwin(v22);
  v24 = &v130 - v23;
  v25 = sub_10002849C(&unk_100992460);
  __chkstk_darwin(v25 - 8);
  v131 = &v130 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v130 = &v130 - v28;
  __chkstk_darwin(v29);
  v138 = &v130 - v30;
  __chkstk_darwin(v31);
  v135 = &v130 - v32;
  __chkstk_darwin(v33);
  v145 = &v130 - v34;
  __chkstk_darwin(v35);
  v136 = &v130 - v36;
  __chkstk_darwin(v37);
  v143 = &v130 - v38;
  __chkstk_darwin(v39);
  v137 = &v130 - v40;
  __chkstk_darwin(v41);
  v134 = &v130 - v42;
  __chkstk_darwin(v43);
  v133 = &v130 - v44;
  __chkstk_darwin(v45);
  v132 = &v130 - v46;
  __chkstk_darwin(v47);
  v49 = &v130 - v48;
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v21, &unk_10098FFB0);
  sub_100094E74(v18, v24);
  if ((*(v11 + 48))(v24, 1, v10) == 1)
  {
    sub_10002B894(v24, &unk_10098FFB0);
    v50 = 1;
  }

  else
  {
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    (*(v11 + 8))(v24, v10);
    v50 = 0;
  }

  v51 = v148;
  v52 = v149;
  (*(v149 + 56))(v49, v50, 1, v148);
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v53 = v49;
  v54 = *(v11 + 8);
  v55 = v15;
  v56 = v51;
  v54(v55, v10);
  v57 = *(v52 + 32);
  v58 = v150;
  v59 = v9;
  v60 = v52;
  v61 = *(v146 + 48);
  v57(v150, v59, v56);
  v146 = v53;
  sub_100031660(v53, &v58[v61], &unk_100992460);
  v62 = *(v60 + 88);
  v63 = v62(v58, v56);
  if (v63 == enum case for Shelf.ContentType.productTopLockup(_:))
  {
LABEL_5:
    sub_10002B894(&v58[v61], &unk_100992460);
    (*(v60 + 8))(v58, v56);
    if (qword_10096E6C8 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for StaticDimension();
    v65 = v64;
    v66 = qword_1009D2478;
LABEL_12:
    v67 = sub_1000056A8(v64, v66);
    v68 = v147;
    v147[3] = v65;
    v68[4] = &protocol witness table for StaticDimension;
    v69 = sub_1000056E0(v68);
    (*(*(v65 - 8) + 16))(v69, v67, v65);
    v70 = &unk_100992460;
    v71 = v146;
    return sub_10002B894(v71, v70);
  }

  if (v63 == enum case for Shelf.ContentType.annotation(_:))
  {
LABEL_9:
    sub_10002B894(&v58[v61], &unk_100992460);
    (*(v60 + 8))(v58, v56);
    if (qword_10096E6D0 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for StaticDimension();
    v65 = v64;
    v66 = qword_1009D2490;
    goto LABEL_12;
  }

  if (v63 == enum case for Shelf.ContentType.titledParagraph(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) != 1)
    {
      v73 = v143;
      sub_100031660(&v58[v61], v143, &unk_100992460);
      v74 = v62(v73, v56);
      v145 = v73;
      if (v74 == enum case for Shelf.ContentType.productMediaItem(_:))
      {
        goto LABEL_5;
      }

      goto LABEL_52;
    }

LABEL_53:
    if (qword_10096E6E0 != -1)
    {
      swift_once();
    }

    v106 = type metadata accessor for StaticDimension();
    v107 = sub_1000056A8(v106, qword_1009D24C0);
    v108 = v147;
    v147[3] = v106;
    v108[4] = &protocol witness table for StaticDimension;
    v109 = sub_1000056E0(v108);
    (*(*(v106 - 8) + 16))(v109, v107, v106);
    sub_10002B894(v146, &unk_100992460);
    v70 = &qword_100972A48;
    v71 = v58;
    return sub_10002B894(v71, v70);
  }

  if (v63 == enum case for Shelf.ContentType.reviewSummary(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_53;
    }

    v75 = v138;
    sub_100031660(&v58[v61], v138, &unk_100992460);
    v76 = v62(v75, v56);
    v145 = v75;
    if (v76 == enum case for Shelf.ContentType.productReview(_:))
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

  if (v63 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    v78 = v61;
    v79 = v139;
    v80 = v144;
    ReadOnlyLens.subscript.getter();

    v54(v80, v10);
    v82 = v140;
    v81 = v141;
    v83 = v142;
    (*(v141 + 104))(v140, enum case for ShelfBackground.editorsChoice(_:), v142);
    v84 = static ShelfBackground.== infix(_:_:)();
    v85 = *(v81 + 8);
    v85(v82, v83);
    v85(v79, v83);
    if ((v84 & 1) == 0)
    {
      goto LABEL_53;
    }

    v86 = v146;
    v87 = v147;
    v147[3] = &type metadata for CGFloat;
    v87[4] = &protocol witness table for CGFloat;
    *v87 = 0x403E000000000000;
    sub_10002B894(v86, &unk_100992460);
    v88 = &v58[v78];
    goto LABEL_35;
  }

  if (v63 == enum case for Shelf.ContentType.productMediaItem(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_5;
    }

    v89 = v137;
    sub_100031660(&v58[v61], v137, &unk_100992460);
    if (v62(v89, v56) != enum case for Shelf.ContentType.productRatings(_:))
    {
      (*(v60 + 8))(v89, v56);
      goto LABEL_5;
    }

    if (qword_10096E6E0 != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for StaticDimension();
    v91 = v90;
    v92 = qword_1009D24C0;
    goto LABEL_31;
  }

  if (v63 == enum case for Shelf.ContentType.productRatings(_:))
  {
LABEL_33:
    v96 = type metadata accessor for SpacerDimension();
    v97 = v147;
    v147[3] = v96;
    v97[4] = sub_10035CE6C(&qword_10097A038, &type metadata accessor for SpacerDimension);
    sub_1000056E0(v97);
    SpacerDimension.init(constant:)();
    goto LABEL_34;
  }

  v98 = enum case for Shelf.ContentType.productReview(_:);
  if (v63 == enum case for Shelf.ContentType.productReview(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_53;
    }

    v99 = v145;
    sub_100031660(&v58[v61], v145, &unk_100992460);
    v100 = v62(v99, v56);
    if (v100 != enum case for Shelf.ContentType.productReviewAction(_:))
    {
      if (v100 == enum case for Shelf.ContentType.linkableText(_:))
      {
LABEL_21:
        v77 = v147;
        v147[3] = &type metadata for Double;
        v77[4] = &protocol witness table for Double;
        *v77 = 0;
LABEL_34:
        sub_10002B894(v146, &unk_100992460);
        v88 = &v58[v61];
LABEL_35:
        sub_10002B894(v88, &unk_100992460);
        return (*(v60 + 8))(v58, v56);
      }

LABEL_52:
      (*(v60 + 8))(v145, v56);
      goto LABEL_53;
    }

    goto LABEL_33;
  }

  v101 = enum case for Shelf.ContentType.productReviewAction(_:);
  if (v63 == enum case for Shelf.ContentType.productReviewAction(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) != 1)
    {
      v102 = v136;
      sub_100031660(&v58[v61], v136, &unk_100992460);
      v103 = v62(v102, v56);
      v145 = v102;
      if (v103 == v98)
      {
        goto LABEL_9;
      }

      goto LABEL_52;
    }

    goto LABEL_53;
  }

  if (v63 == enum case for Shelf.ContentType.linkableText(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_53;
    }

    v104 = v135;
    sub_100031660(&v58[v61], v135, &unk_100992460);
    v105 = v62(v104, v56);
    v145 = v104;
    if (v105 != v101)
    {
      goto LABEL_52;
    }

    goto LABEL_48;
  }

  if (v63 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    goto LABEL_57;
  }

  if (v63 == enum case for Shelf.ContentType.privacyHeader(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_53;
    }

    v111 = v134;
    sub_100031660(&v58[v61], v134, &unk_100992460);
    v112 = v62(v111, v56);
    v145 = v111;
    if (v112 != enum case for Shelf.ContentType.privacyType(_:))
    {
      goto LABEL_52;
    }

LABEL_48:
    if (qword_10096E6D8 != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for StaticDimension();
    v91 = v90;
    v92 = qword_1009D24A8;
LABEL_31:
    v93 = sub_1000056A8(v90, v92);
    v94 = v147;
    v147[3] = v91;
    v94[4] = &protocol witness table for StaticDimension;
    v95 = sub_1000056E0(v94);
    (*(*(v91 - 8) + 16))(v95, v93, v91);
    goto LABEL_34;
  }

  if (v63 == enum case for Shelf.ContentType.privacyType(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_53;
    }

    v113 = v133;
    sub_100031660(&v58[v61], v133, &unk_100992460);
    v114 = v62(v113, v56);
    v145 = v113;
    if (v114 != enum case for Shelf.ContentType.privacyFooter(_:))
    {
      goto LABEL_52;
    }

    goto LABEL_57;
  }

  if (v63 != enum case for Shelf.ContentType.productBadge(_:))
  {
    v122 = enum case for Shelf.ContentType.accessibilityFeatures(_:);
    if (v63 == enum case for Shelf.ContentType.accessibilityFeatures(_:))
    {
      if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
      {
        goto LABEL_53;
      }

      v123 = v131;
      sub_100031660(&v58[v61], v131, &unk_100992460);
      v124 = v62(v123, v56);
      v145 = v123;
      if (v124 != enum case for Shelf.ContentType.accessibilityParagraph(_:))
      {
        goto LABEL_52;
      }
    }

    else
    {
      v127 = v63;
      if (v63 != enum case for Shelf.ContentType.accessibilityParagraph(_:) || (*(v60 + 48))(&v58[v61], 1, v56) == 1)
      {
        goto LABEL_53;
      }

      v128 = v130;
      sub_100031660(&v58[v61], v130, &unk_100992460);
      v129 = v62(v128, v56);
      if (v129 != v122)
      {
        v145 = v130;
        if (v129 != v127)
        {
          goto LABEL_52;
        }
      }
    }

    sub_10002B894(&v58[v61], &unk_100992460);
    (*(v60 + 8))(v58, v56);
    v125 = type metadata accessor for SpacerDimension();
    v126 = v147;
    v147[3] = v125;
    v126[4] = sub_10035CE6C(&qword_10097A038, &type metadata accessor for SpacerDimension);
    sub_1000056E0(v126);
    SpacerDimension.init(constant:)();
LABEL_58:
    v71 = v146;
    v70 = &unk_100992460;
    return sub_10002B894(v71, v70);
  }

  if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
  {
LABEL_57:
    sub_10002B894(&v58[v61], &unk_100992460);
    (*(v60 + 8))(v58, v56);
    v110 = v147;
    v147[3] = &type metadata for Double;
    v110[4] = &protocol witness table for Double;
    *v110 = 0;
    goto LABEL_58;
  }

  v115 = &v58[v61];
  v116 = v132;
  sub_100031660(v115, v132, &unk_100992460);
  if (v62(v116, v56) != enum case for Shelf.ContentType.smallLockup(_:))
  {
    v56 = v148;
    v60 = v149;
    (*(v149 + 8))(v132, v148);
    v58 = v150;
    goto LABEL_57;
  }

  if (qword_10096E6D0 != -1)
  {
    swift_once();
  }

  v117 = type metadata accessor for StaticDimension();
  v118 = sub_1000056A8(v117, qword_1009D2490);
  v119 = v147;
  v147[3] = v117;
  v119[4] = &protocol witness table for StaticDimension;
  v120 = sub_1000056E0(v119);
  (*(*(v117 - 8) + 16))(v120, v118, v117);
  sub_10002B894(v146, &unk_100992460);
  v121 = v150;
  sub_10002B894(&v150[v61], &unk_100992460);
  return (*(v149 + 8))(v121, v148);
}

uint64_t sub_10035CDA0@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, void *a2@<X8>)
{
  v4 = ShelfLayoutContext.traitCollection.getter();
  UITraitCollection.isSizeClassCompact.getter();

  return sub_1003590DC(a1, a2);
}

uint64_t sub_10035CDEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = ShelfLayoutContext.traitCollection.getter();
  v5 = UITraitCollection.isSizeClassCompact.getter();

  if (v5)
  {

    return sub_10035A2E4(a1, a2);
  }

  else
  {

    return sub_10035B994(a2);
  }
}

uint64_t sub_10035CE6C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_10035CF28(double *a1)
{
  v236 = a1;
  v1 = type metadata accessor for TitleHeaderLayout.AccessoryHorizontalAlignment();
  v206 = *(v1 - 8);
  v207 = v1;
  __chkstk_darwin(v1);
  v205 = &v184 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
  v202 = *(v3 - 8);
  v203 = v3;
  __chkstk_darwin(v3);
  v204 = &v184 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
  v199 = *(v5 - 8);
  v200 = v5;
  __chkstk_darwin(v5);
  v201 = &v184 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = type metadata accessor for TitleHeaderLayout();
  v208 = *(v194 - 8);
  __chkstk_darwin(v194);
  v193 = &v184 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LabelPlaceholderCompatibility();
  v196 = *(v8 - 8);
  v197 = v8;
  __chkstk_darwin(v8);
  v195 = &v184 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TitleHeaderLayout.Child();
  v11 = *(v10 - 8);
  v234 = v10;
  v235 = v11;
  __chkstk_darwin(v10);
  v188 = &v184 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v233 = &v184 - v14;
  __chkstk_darwin(v15);
  v232 = &v184 - v16;
  __chkstk_darwin(v17);
  v222 = &v184 - v18;
  v19 = type metadata accessor for CharacterSet();
  v213 = *(v19 - 8);
  __chkstk_darwin(v19);
  v212 = (&v184 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v221 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v221);
  v22 = &v184 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_10002849C(&unk_100984360);
  v198 = *(v192 - 8);
  __chkstk_darwin(v192);
  v187 = &v184 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v231 = &v184 - v25;
  __chkstk_darwin(v26);
  v228 = &v184 - v27;
  __chkstk_darwin(v28);
  v191 = &v184 - v29;
  __chkstk_darwin(v30);
  v230 = &v184 - v31;
  __chkstk_darwin(v32);
  v229 = &v184 - v33;
  __chkstk_darwin(v34);
  v220 = &v184 - v35;
  __chkstk_darwin(v36);
  v223 = &v184 - v37;
  v38 = type metadata accessor for PageGrid.Direction();
  v210 = *(v38 - 8);
  v211 = v38;
  __chkstk_darwin(v38);
  v209 = &v184 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v217 = &v184 - v41;
  v42 = type metadata accessor for Uber.Style();
  v215 = *(v42 - 8);
  v216 = v42;
  __chkstk_darwin(v42);
  v214 = &v184 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10002849C(qword_10097DB40);
  __chkstk_darwin(v44 - 8);
  v219 = sub_10002849C(&qword_1009812D8);
  v45 = *(v219 - 8);
  __chkstk_darwin(v219);
  v227 = &v184 - v46;
  v226 = type metadata accessor for PageGrid();
  v47 = *(v226 - 8);
  __chkstk_darwin(v226);
  v224 = &v184 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v51 = &v184 - v50;
  __chkstk_darwin(v52);
  v54 = &v184 - v53;
  type metadata accessor for Uber();
  sub_10035EFC8(&qword_1009812E0, &type metadata accessor for Uber);
  ItemLayoutContext.typedModel<A>(as:)();
  v55 = v266[0];
  if (!v266[0])
  {
    return 0.0;
  }

  v186 = v19;
  v189 = v45;
  v218 = v22;
  swift_getKeyPath();
  v225 = v55;
  ItemLayoutContext.subscript.getter();

  PageGrid.containerHeight.getter();
  v57 = v56;
  v60 = *(v47 + 8);
  v58 = v47 + 8;
  v59 = v60;
  v61 = v226;
  v60(v54, v226);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.safeAreaInsets.getter();
  v63 = v62;
  v60(v51, v61);
  *&v64 = v57 - v63;
  ItemLayoutContext.state.getter();
  StateLens.init(_:)();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v190 = v266[0];
  v65 = v214;
  Uber.style.getter();
  swift_getKeyPath();
  sub_1001F1774();
  v66 = v219;
  StateLens<A>.subscript.getter();

  LOBYTE(v61) = v264[0];
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.containerWidth.getter();
  v68 = v67;
  v69 = v226;
  v60(v54, v226);
  v70 = v190;
  sub_1001158BC(v190, v65, (v61 & 1) == 0, v68, v64, 0);
  v72 = v71;

  (*(v215 + 8))(v65, v216);
  v74 = Uber.title.getter();
  if (v73)
  {
    v75 = v69;
    v215 = v73;
    v190 = v74;
    v77 = v210;
    v76 = v211;
    (*(v210 + 13))(v217, enum case for PageGrid.Direction.vertical(_:), v211);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.componentMeasuringSize(spanning:)();
    v59(v54, v75);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.safeAreaInsets.getter();
    v59(v54, v75);
    v78 = v217;
    (*(v77 + 2))(v209, v217, v76);
    sub_10069F96C(0.0);
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    (*(v77 + 1))(v78, v76);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.componentMeasuringSize(spanning:)();
    v210 = v59;
    v211 = v58;
    v59(v54, v75);
    if (qword_10096D398 != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for TitleHeaderView.Style(0);
    v80 = sub_1000056A8(v79, qword_1009CE818);
    PageGrid.horizontalMargins.getter();
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v214 = v267;
    v81 = [v267 traitCollection];
    v82 = v234;
    v83 = (v235 + 56);
    v84 = *(v235 + 56);
    v84(v223, 1, 1, v234);
    v236 = v83;
    v185 = v84;
    v84(v220, 1, 1, v82);
    memset(v266, 0, sizeof(v266));
    v265 = 0;
    memset(v264, 0, sizeof(v264));
    v216 = v79;
    v217 = v80;
    v184 = *(v79 + 20);
    v85 = v218;
    sub_1001EFDF0(v80 + v184, v218);
    sub_1000367E8();
    v86 = v221;
    v209 = v81;
    v87 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
    *&v261 = v190;
    v88 = v215;
    *(&v261 + 1) = v215;

    v89 = v212;
    static CharacterSet.excessiveLeading.getter();
    sub_10007FED4();
    StringProtocol.rangeOfCharacter(from:options:range:)();
    v91 = v90;
    v213[1](v89, v186);

    v92 = 0uLL;
    v93 = 0;
    if (v91)
    {
      goto LABEL_10;
    }

    [v87 lineHeight];
    v95 = ceil(v94 * 1.3);
    if ((*&v95 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v95 > -9.22337204e18)
    {
      if (v95 >= 9.22337204e18)
      {
        __break(1u);
        goto LABEL_69;
      }

      v85 = v218;
      v92 = 0uLL;
LABEL_10:
      v263 = 0;
      v261 = v92;
      v262 = v92;
      v96 = type metadata accessor for Feature();
      v259 = v96;
      v260 = sub_10035EFC8(&qword_100972E50, &type metadata accessor for Feature);
      v97 = sub_1000056E0(&v257);
      (*(*(v96 - 8) + 104))(v97, enum case for Feature.measurement_with_labelplaceholder(_:), v96);
      v98 = v87;
      isFeatureEnabled(_:)();
      sub_100007000(&v257);
      v99 = v195;
      v213 = v98;
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      (*(v196 + 8))(v99, v197);
      sub_100031660(&v261, v256, &qword_100975610);
      v100 = v259;
      v101 = v260;
      v102 = sub_10002A400(&v257, v259);
      v255[3] = v100;
      v255[4] = *(v101 + 8);
      v103 = sub_1000056E0(v255);
      (*(*(v100 - 8) + 16))(v103, v102, v100);
      v104 = *(v85 + *(v86 + 32));
      v253 = &type metadata for Float;
      v254 = &protocol witness table for Float;
      v252 = v104;
      v105 = *(v86 + 36);
      v106 = type metadata accessor for StaticDimension();
      v251[3] = v106;
      v251[4] = &protocol witness table for StaticDimension;
      v107 = sub_1000056E0(v251);
      v108 = v86;
      v109 = *(*(v106 - 8) + 16);
      v109(v107, v85 + v105, v106);
      v110 = *(v108 + 40);
      v250[3] = v106;
      v250[4] = &protocol witness table for StaticDimension;
      v111 = sub_1000056E0(v250);
      v109(v111, v85 + v110, v106);
      sub_100031660(v266, &v244, &unk_10097E890);
      v112 = *(&v245 + 1);
      if (*(&v245 + 1))
      {
        v113 = v246;
        v114 = sub_10002A400(&v244, *(&v245 + 1));
        *(&v248 + 1) = v112;
        v249 = *(v113 + 8);
        v115 = sub_1000056E0(&v247);
        (*(*(v112 - 8) + 16))(v115, v114, v112);
        sub_100007000(&v244);
      }

      else
      {
        sub_10002B894(&v244, &unk_10097E890);
        v247 = 0u;
        v248 = 0u;
        v249 = 0;
      }

      sub_100031660(v264, v241, &unk_10097E890);
      v116 = v242;
      v117 = v221;
      if (v242)
      {
        v118 = v243;
        v119 = sub_10002A400(v241, v242);
        *(&v245 + 1) = v116;
        v246 = *(v118 + 8);
        v120 = sub_1000056E0(&v244);
        (*(*(v116 - 8) + 16))(v120, v119, v116);
        sub_100007000(v241);
      }

      else
      {
        sub_10002B894(v241, &unk_10097E890);
        v244 = 0u;
        v245 = 0u;
        v246 = 0;
      }

      v121 = v228;
      v122 = v218;
      sub_10002C0AC(&v218[*(v117 + 48)], v241);
      sub_10002C0AC(v122 + *(v117 + 52), &v240);
      v238 = &type metadata for Double;
      v239 = &protocol witness table for Double;
      v237 = 0x4020000000000000;
      TitleHeaderLayout.Child.init(decorationView:contentView:decorationViewMargin:firstLineSpace:bottomSpace:trailingView:shortTrailingView:trailingViewMargin:trailingFirstLineSpace:trailingBottomSpace:)();
      sub_100007000(&v257);
      sub_10002B894(&v261, &qword_100975610);
      v123 = v217[v216[9]];
      sub_10002849C(&qword_1009812E8);
      v124 = *(v198 + 72);
      v125 = (*(v198 + 80) + 32) & ~*(v198 + 80);
      if (v123)
      {
        if (v123 == 1)
        {
          v215 = swift_allocObject();
          v126 = v215 + v125;
          sub_100031660(v223, v215 + v125, &unk_100984360);
          v127 = v235 + 16;
          (*(v235 + 16))(v126 + v124, v222, v82);
          v128 = v82;
          v185(v126 + v124, 0, 1, v82);
          sub_100031660(v220, v126 + 2 * v124, &unk_100984360);
          v129 = (v127 + 32);
          v232 = (v127 + 16);
          v236 = _swiftEmptyArrayStorage;
          v130 = 3;
          v229 = v126;
          do
          {
            v131 = v124;
            v132 = v230;
            sub_100031660(v126, v230, &unk_100984360);
            v133 = v132;
            v134 = v231;
            sub_10035EF58(v133, v231);
            if ((*v129)(v134, 1, v128) == 1)
            {
              sub_10002B894(v134, &unk_100984360);
            }

            else
            {
              v135 = v134;
              v136 = *v232;
              (*v232)(v233, v135, v128);
              v137 = v236;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v137 = sub_100033A68(0, *(v137 + 2) + 1, 1, v137);
              }

              v139 = *(v137 + 2);
              v138 = *(v137 + 3);
              if (v139 >= v138 >> 1)
              {
                v137 = sub_100033A68(v138 > 1, v139 + 1, 1, v137);
              }

              *(v137 + 2) = v139 + 1;
              v140 = (*(v235 + 80) + 32) & ~*(v235 + 80);
              v236 = v137;
              v128 = v234;
              v136(v137 + v140 + *(v235 + 72) * v139, v233);
            }

            v124 = v131;
            v126 += v131;
            --v130;
          }

          while (v130);
          swift_setDeallocating();
          swift_arrayDestroy();
          v88 = v193;
          v87 = v194;
          v82 = v128;
        }

        else
        {
          v215 = swift_allocObject();
          v153 = v215 + v125;
          sub_100031660(v223, v153, &unk_100984360);
          v154 = v235;
          (*(v235 + 16))(v153 + v124, v222, v82);
          v185(v153 + v124, 0, 1, v82);
          v155 = v191;
          sub_100031660(v153, v191, &unk_100984360);
          v156 = v187;
          sub_10035EF58(v155, v187);
          v157 = *(v154 + 48);
          v158 = (v154 + 32);
          if (v157(v156, 1, v82) == 1)
          {
            sub_10002B894(v156, &unk_100984360);
            v159 = _swiftEmptyArrayStorage;
          }

          else
          {
            v160 = *v158;
            (*v158)(v188, v156, v82);
            v161 = _swiftEmptyArrayStorage;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v161 = sub_100033A68(0, *&_swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
            }

            v163 = *(v161 + 2);
            v162 = *(v161 + 3);
            v159 = v161;
            if (v163 >= v162 >> 1)
            {
              v159 = sub_100033A68(v162 > 1, v163 + 1, 1, v161);
            }

            *(v159 + 2) = v163 + 1;
            v164 = v159 + ((*(v235 + 80) + 32) & ~*(v235 + 80)) + *(v235 + 72) * v163;
            v82 = v234;
            v160(v164, v188, v234);
            v156 = v187;
          }

          v165 = v153 + v124;
          v166 = v191;
          sub_100031660(v165, v191, &unk_100984360);
          sub_10035EF58(v166, v156);
          if (v157(v156, 1, v82) == 1)
          {
            sub_10002B894(v156, &unk_100984360);
          }

          else
          {
            v167 = *v158;
            v168 = v188;
            (*v158)(v188, v156, v82);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v159 = sub_100033A68(0, *(v159 + 2) + 1, 1, v159);
            }

            v170 = *(v159 + 2);
            v169 = *(v159 + 3);
            v171 = v159;
            if (v170 >= v169 >> 1)
            {
              v171 = sub_100033A68(v169 > 1, v170 + 1, 1, v159);
            }

            *(v171 + 16) = v170 + 1;
            v167((v171 + ((*(v235 + 80) + 32) & ~*(v235 + 80)) + *(v235 + 72) * v170), v168, v82);
          }

          v88 = v193;
          v87 = v194;
          swift_setDeallocating();
          swift_arrayDestroy();
        }
      }

      else
      {
        v215 = swift_allocObject();
        v141 = v215 + v125;
        sub_100031660(v223, v215 + v125, &unk_100984360);
        sub_100031660(v220, v141 + v124, &unk_100984360);
        v142 = v235 + 16;
        (*(v235 + 16))(v141 + 2 * v124, v222, v82);
        v143 = v82;
        v185(v141 + 2 * v124, 0, 1, v82);
        v144 = (v142 + 32);
        v233 = (v142 + 16);
        v236 = _swiftEmptyArrayStorage;
        v145 = 3;
        v231 = v141;
        do
        {
          v146 = v229;
          sub_100031660(v141, v229, &unk_100984360);
          sub_10035EF58(v146, v121);
          if ((*v144)(v121, 1, v143) == 1)
          {
            sub_10002B894(v121, &unk_100984360);
          }

          else
          {
            v147 = *v233;
            (*v233)(v232, v121, v143);
            v148 = v236;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v148 = sub_100033A68(0, *(v148 + 2) + 1, 1, v148);
            }

            v150 = *(v148 + 2);
            v149 = *(v148 + 3);
            if (v150 >= v149 >> 1)
            {
              v148 = sub_100033A68(v149 > 1, v150 + 1, 1, v148);
            }

            *(v148 + 2) = v150 + 1;
            v151 = (*(v235 + 80) + 32) & ~*(v235 + 80);
            v236 = v148;
            v152 = v148 + v151 + *(v235 + 72) * v150;
            v143 = v234;
            v147(v152, v232);
            v121 = v228;
          }

          v141 += v124;
          --v145;
        }

        while (v145);
        swift_setDeallocating();
        swift_arrayDestroy();
        v88 = v193;
        v87 = v194;
        v82 = v143;
      }

      swift_deallocClassInstance();
      v263 = 0;
      v261 = 0u;
      v262 = 0u;
      sub_100031660(&v261, &v257, &qword_100975610);
      v173 = v216;
      v172 = v217;
      v174 = *&v217[v216[14]];
      v256[3] = &type metadata for CGFloat;
      v256[4] = &protocol witness table for CGFloat;
      v256[0] = v174;
      (*(v199 + 16))(v201, &v217[v216[10]], v200);
      (*(v202 + 16))(v204, &v172[v173[11]], v203);
      (*(v206 + 104))(v205, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v207);
      TitleHeaderLayout.init(accessoryView:accessoryMargin:accessoryVerticalAlignment:accessoryHorizontalAlignment:children:childrenHorizontalAlignment:allowsAccessibilityLayouts:)();
      CGSize.subtracting(insets:)();
      sub_10035EFC8(&unk_1009812F0, &type metadata accessor for TitleHeaderLayout);
      dispatch thunk of Measurable.measurements(fitting:in:)();
      v257 = v175;
      v258 = v176;
      CGSize.add(outsets:)();
      Main = JUScreenClassGetMain();
      v89 = v208;
      if (Main != 1)
      {

        swift_unknownObjectRelease();

        v89[1](v88, v87);
        (*(v235 + 8))(v222, v82);
        sub_1001EFF9C(v218);
        sub_10002B894(v264, &unk_10097E890);
        sub_10002B894(v266, &unk_10097E890);
        sub_10002B894(v220, &unk_100984360);
        sub_10002B894(v223, &unk_100984360);
        v210(v224, v226);
        (*(v189 + 8))(v227, v219);
        v179 = 0.0;
        goto LABEL_63;
      }

      v91 = v218;
      v85 = v189;
      v86 = v226;
      if (qword_10096E760 == -1)
      {
LABEL_57:
        v178 = sub_1000056A8(v221, qword_1009D2688);
        v93 = v184;
        if (sub_1003FA6EC(&v217[v184], v178))
        {

          swift_unknownObjectRelease();

          v89[1](v88, v87);
          (*(v235 + 8))(v222, v82);
          sub_1001EFF9C(v91);
          sub_10002B894(v264, &unk_10097E890);
          sub_10002B894(v266, &unk_10097E890);
          sub_10002B894(v220, &unk_100984360);
          sub_10002B894(v223, &unk_100984360);
          v210(v224, v86);
          (*(v85 + 8))(v227, v219);
          v179 = 5.0;
LABEL_63:
          v182 = v258 - v179;
          sub_10002B894(&v261, &qword_100975610);
          return v72 + v182;
        }

        if (qword_10096E768 == -1)
        {
LABEL_61:
          v180 = sub_1000056A8(v221, qword_1009D26A0);
          v181 = sub_1003FA6EC(&v217[v93], v180);

          swift_unknownObjectRelease();

          v89[1](v88, v87);
          (*(v235 + 8))(v222, v82);
          sub_1001EFF9C(v91);
          sub_10002B894(v264, &unk_10097E890);
          sub_10002B894(v266, &unk_10097E890);
          sub_10002B894(v220, &unk_100984360);
          sub_10002B894(v223, &unk_100984360);
          v210(v224, v86);
          (*(v85 + 8))(v227, v219);
          v179 = 0.0;
          if (v181)
          {
            v179 = 5.0;
          }

          goto LABEL_63;
        }

LABEL_69:
        swift_once();
        goto LABEL_61;
      }

LABEL_67:
      swift_once();
      goto LABEL_57;
    }

    __break(1u);
    goto LABEL_67;
  }

  (*(v189 + 8))(v227, v66);

  return v72;
}

uint64_t sub_10035EF58(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100984360);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10035EFC8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10035F010()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_10097CC90);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  v10 = [objc_opt_self() buttonWithType:7];
  static UIButton.Configuration.glass()();
  v11 = type metadata accessor for UIButton.Configuration();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v9, 0, 1, v11);
  UIButton.configuration.setter();
  UIButton.configuration.getter();
  if ((*(v12 + 48))(v6, 1, v11))
  {
    sub_100146A44(v6, v9);
    UIButton.configuration.setter();
    sub_1001AF7BC(v6);
  }

  else
  {
    v13 = [objc_opt_self() configurationWithWeight:5];
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    UIButton.configuration.setter();
  }

  v14 = v10;
  [v14 setMinimumContentSizeCategory:UIContentSizeCategoryLarge];
  [v14 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraLarge];
  v15 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  [v14 addInteraction:v15];

  [v14 setShowsLargeContentViewer:1];
  [v14 setScalesLargeContentImage:1];
  (*(v1 + 104))(v3, enum case for SystemImage.xmark(_:), v0);
  v16 = static SystemImage.load(_:with:)();
  (*(v1 + 8))(v3, v0);
  [v14 setLargeContentImage:v16];

  v17._object = 0x800000010080E740;
  v17._countAndFlagsBits = 0xD00000000000001DLL;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  localizedString(_:comment:)(v17, v18);
  v19 = String._bridgeToObjectiveC()();

  [v14 setLargeContentTitle:v19];

  return v14;
}

uint64_t sub_10035F3AC(char a1)
{
  v2 = sub_10002849C(&qword_100970EE0);
  __chkstk_darwin(v2 - 8);
  v58 = &v45 - v3;
  v56 = type metadata accessor for PageGrid.HorizontalMargins();
  v4 = *(v56 - 8);
  __chkstk_darwin(v56);
  v6 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10002849C(&qword_100970EE8);
  __chkstk_darwin(v7 - 8);
  v52 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49.i64[0] = &v45 - v10;
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  __chkstk_darwin(v14);
  v61 = &v45 - v15;
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  __chkstk_darwin(v19);
  sub_10002849C(&qword_100970EF0);
  v20 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v57 = *(v20 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v50 = v22;
  *(v22 + 16) = xmmword_1007B23A0;
  v54 = v22 + v21;
  if (a1)
  {
    v23 = 1.5;
  }

  else
  {
    v23 = 2.0;
  }

  v63 = *&v23;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v62 = 0x4030000000000000;
  v63 = 0x4020000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v63 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v6 = _Q0;
  v60 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v29 = *(v4 + 104);
  v59 = v4 + 104;
  v55 = v29;
  v30 = v56;
  (v29)(v6);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v63) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0;
  v45 = v13;
  PageGrid.DirectionalValue.init(_:)();
  v53 = v18;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v63 = *&v23;
  PageGrid.DirectionalValue.init(_:)();
  v62 = 0x4034000000000000;
  v63 = 0x4024000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v63 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #20.0 }

  *v6 = _Q0;
  v33 = v60;
  v34 = v55;
  v55(v6, v60, v30);
  LOBYTE(v63) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v35 = v57;
  top = UIEdgeInsetsZero.top;
  v48 = left;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v46 = 2 * v35;
  v63 = 0x4008000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = vdupq_n_s64(0x4041000000000000uLL);
  v51 = v6;
  *v6 = v49;
  v36 = v56;
  v34(v6, v33, v56);
  LOBYTE(v63) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v37 = v46;
  v38 = v51;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v39 = v57;
  v46 = v37 + v57;
  v63 = 0x4010000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v38 = v49;
  v40 = v36;
  v41 = v55;
  v55(v38, v60, v40);
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v63) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v42 = v51;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v46 = 4 * v39;
  v63 = 0x4014000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = vdupq_n_s64(0x404A000000000000uLL);
  *v42 = v49;
  v43 = v56;
  v41(v42, v60, v56);
  LOBYTE(v63) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v63 = 0x4018000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v42 = v49;
  v55(v42, v60, v43);
  LOBYTE(v63) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  return v50;
}

uint64_t sub_10035FDE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void (*a4)(void, void, void)@<X8>)
{
  v56 = a3;
  v49 = a2;
  v48 = type metadata accessor for PrivacyTypeLayout.Metrics.HorizontalAlignment();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v46 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PrivacyTypeStyle();
  v50 = *(v7 - 8);
  v51 = v7;
  __chkstk_darwin(v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FloatingPointRoundingRule();
  v54 = *(v10 - 8);
  v55 = v10;
  __chkstk_darwin(v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FontSource();
  v52 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = (&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for StaticDimension();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096D9E8 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for PrivacyTypeLayout.Metrics();
  v21 = sub_1000056A8(v20, qword_1009CFBF8);
  v22 = *(*(v20 - 8) + 16);
  v53 = a4;
  v22(a4, v21, v20);
  if (!a1)
  {
    goto LABEL_14;
  }

  if (dispatch thunk of Artwork.isLocalImage.getter())
  {
    if (qword_10096D9D8 != -1)
    {
      swift_once();
    }

    v23 = qword_100981308;
    if (dispatch thunk of Artwork.isSystemImage.getter())
    {
      v24 = static SystemImage.load(artwork:with:includePrivateImages:)();
      if (!v24)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if ((dispatch thunk of Artwork.isBundleImage.getter() & 1) == 0)
      {
        goto LABEL_13;
      }

      v24 = sub_100330100(a1, v23);
      if (!v24)
      {
        goto LABEL_13;
      }
    }

    [v24 size];
    v25 = v53;
    PrivacyTypeLayout.Metrics.iconSize.setter();
    UIImage.baselineOffsetFromBottom.getter();
    PrivacyTypeLayout.Metrics.iconBaseline.setter();
    v26 = v25;

    v27 = v52;
    goto LABEL_17;
  }

LABEL_13:

LABEL_14:
  if (qword_10096E080 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for FontUseCase();
  v29 = sub_1000056A8(v28, qword_1009D1100);
  (*(*(v28 - 8) + 16))(v15, v29, v28);
  v27 = v52;
  v52[13](v15, enum case for FontSource.useCase(_:), v13);
  v61 = v13;
  v62 = &protocol witness table for FontSource;
  v30 = sub_1000056E0(v60);
  (v27)[2](v30, v15, v13);
  StaticDimension.init(_:scaledLike:)();
  (v27[1])(v15, v13);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v54[1](v12, v55);
  v26 = v53;
  PrivacyTypeLayout.Metrics.iconSize.setter();
  (*(v17 + 8))(v19, v16);
LABEL_17:
  v31 = v50;
  v32 = v51;
  (*(v50 + 16))(v9, v49, v51);
  v33 = (*(v31 + 88))(v9, v32);
  if (v33 == enum case for PrivacyTypeStyle.productPage(_:))
  {
    return sub_1003637BC(v26, v56);
  }

  if (v33 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v33 == enum case for PrivacyTypeStyle.detailPage(_:))
  {
    v61 = &type metadata for Double;
    v62 = &protocol witness table for Double;
    v60[0] = 0;
    PrivacyTypeLayout.Metrics.compactBottomMargin.setter();
    if (qword_10096E6B8 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v16, qword_1009D2448);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v36 = v35;
    v54[1](v12, v55);
    v61 = &type metadata for CGFloat;
    v62 = &protocol witness table for CGFloat;
    v60[0] = v36;
    PrivacyTypeLayout.Metrics.regularBottomMargin.setter();
    (*(v47 + 104))(v46, enum case for PrivacyTypeLayout.Metrics.HorizontalAlignment.leading(_:), v48);
    PrivacyTypeLayout.Metrics.horizontalAlignment.setter();
    if (qword_10096D9D0 != -1)
    {
      swift_once();
    }

    v37 = qword_100981300;
    *v15 = qword_100981300;
    v56 = v27[13];
    (v56)(v15, enum case for FontSource.textStyle(_:), v13);
    v61 = v16;
    v62 = &protocol witness table for StaticDimension;
    sub_1000056E0(v60);
    v58 = v13;
    v59 = &protocol witness table for FontSource;
    v38 = sub_1000056E0(v57);
    v55 = v27[2];
    v55(v38, v15, v13);
    v39 = v37;
    StaticDimension.init(_:scaledLike:)();
    v54 = v27[1];
    (v54)(v15, v13);
    PrivacyTypeLayout.Metrics.iconTopSpace.setter();
    if (qword_10096E090 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for FontUseCase();
    v41 = sub_1000056A8(v40, qword_1009D1130);
    v53 = *(*(v40 - 8) + 16);
    v53(v15, v41, v40);
    v42 = enum case for FontSource.useCase(_:);
    (v56)(v15, enum case for FontSource.useCase(_:), v13);
    v61 = v16;
    v62 = &protocol witness table for StaticDimension;
    sub_1000056E0(v60);
    v52 = v16;
    v58 = v13;
    v59 = &protocol witness table for FontSource;
    v43 = sub_1000056E0(v57);
    v55(v43, v15, v13);
    StaticDimension.init(_:scaledLike:)();
    (v54)(v15, v13);
    PrivacyTypeLayout.Metrics.titleTopSpace.setter();
    if (qword_10096E098 != -1)
    {
      swift_once();
    }

    v44 = sub_1000056A8(v40, qword_1009D1148);
    v53(v15, v44, v40);
    (v56)(v15, v42, v13);
    v61 = v52;
    v62 = &protocol witness table for StaticDimension;
    sub_1000056E0(v60);
    v58 = v13;
    v59 = &protocol witness table for FontSource;
    v45 = sub_1000056E0(v57);
    v55(v45, v15, v13);
    StaticDimension.init(_:scaledLike:)();
    (v54)(v15, v13);
    return PrivacyTypeLayout.Metrics.detailTopSpace.setter();
  }

  else
  {
    sub_1003637BC(v26, v56);
    return (*(v31 + 8))(v9, v32);
  }
}

void sub_100360884()
{
  if (qword_10096D9D0 != -1)
  {
    swift_once();
  }

  v0 = qword_100981300;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithTextStyle:v2];

  qword_100981308 = v3;
}

UIColor sub_10036091C()
{
  sub_100005744(0, &qword_100970180);
  v0 = objc_opt_self();
  result.super.isa = UIColor.init(light:dark:)([v0 systemBackgroundColor], objc_msgSend(v0, "secondarySystemBackgroundColor")).super.isa;
  qword_100981310 = result.super.isa;
  return result;
}

uint64_t sub_1003609B0()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for PrivacyTypeLayout.Metrics.HorizontalAlignment();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PrivacyTypeLayout.Metrics();
  sub_100005644(v8, qword_1009CFBF8);
  v33 = sub_1000056A8(v8, qword_1009CFBF8);
  v9 = *(v5 + 104);
  v34 = v7;
  v9(v7, enum case for PrivacyTypeLayout.Metrics.HorizontalAlignment.center(_:), v4);
  if (qword_10096D9D0 != -1)
  {
    swift_once();
  }

  v10 = qword_100981300;
  *v3 = qword_100981300;
  v11 = v1[13];
  v32 = enum case for FontSource.textStyle(_:);
  v11(v3);
  v38 = type metadata accessor for StaticDimension();
  v67[3] = v38;
  v67[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v67);
  v65 = v0;
  v66 = &protocol witness table for FontSource;
  v12 = sub_1000056E0(v64);
  v13 = v1 + 2;
  v37 = v1[2];
  v37(v12, v3, v0);
  v14 = v10;
  StaticDimension.init(_:scaledLike:)();
  v15 = v1[1];
  v35 = v1 + 1;
  v36 = v15;
  v15(v3, v0);
  if (qword_10096E088 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for FontUseCase();
  v17 = sub_1000056A8(v16, qword_1009D1118);
  v18 = *(*(v16 - 8) + 16);
  v18(v3, v17, v16);
  v19 = enum case for FontSource.useCase(_:);
  (v11)(v3, enum case for FontSource.useCase(_:), v0);
  v65 = v38;
  v66 = &protocol witness table for StaticDimension;
  sub_1000056E0(v64);
  v31 = v11;
  v62 = v0;
  v63 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(v61);
  v37(v20, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v36(v3, v0);
  if (qword_10096E098 != -1)
  {
    swift_once();
  }

  v21 = sub_1000056A8(v16, qword_1009D1148);
  v18(v3, v21, v16);
  v22 = v31;
  (v31)(v3, v19, v0);
  v23 = v38;
  v62 = v38;
  v63 = &protocol witness table for StaticDimension;
  sub_1000056E0(v61);
  *(&v59 + 1) = v0;
  v60 = &protocol witness table for FontSource;
  v24 = sub_1000056E0(&v58);
  v25 = v37;
  v37(v24, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v30 = v13;
  v26 = v36;
  v36(v3, v0);
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  *v3 = UIFontTextStyleBody;
  (v22)(v3, v32, v0);
  v57[3] = v23;
  v57[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v0;
  v56 = &protocol witness table for FontSource;
  v27 = sub_1000056E0(v54);
  v25(v27, v3, v0);
  v28 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  v26(v3, v0);
  v55 = &type metadata for Double;
  v56 = &protocol witness table for Double;
  v53 = &protocol witness table for Double;
  v54[0] = 0x402A000000000000;
  v52 = &type metadata for Double;
  v50 = &protocol witness table for Double;
  v51 = 0x4034000000000000;
  v49 = &type metadata for Double;
  v47 = &protocol witness table for Double;
  v48 = 0x4034000000000000;
  v46 = &type metadata for Double;
  v44 = &protocol witness table for Double;
  v45 = 0x4034000000000000;
  v43 = &type metadata for Double;
  v41 = &protocol witness table for Double;
  v42 = 0x4024000000000000;
  v40 = &type metadata for Double;
  v39 = 0x403E000000000000;
  return PrivacyTypeLayout.Metrics.init(horizontalAlignment:iconTopSpace:iconSize:iconBaseline:titleTopSpace:detailTopSpace:maxTextWidth:minimumCategoriesColumnWidth:categoriesTopSpace:categoriesHorizontalPadding:categoriesBottomSpace:horizontalMargin:compactBottomMargin:regularBottomMargin:)();
}

id sub_100360F94()
{
  v1 = v0;
  v24 = type metadata accessor for DirectionalTextAlignment();
  v2 = *(v24 - 8);
  __chkstk_darwin(v24);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for PrivacyTypeStyle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = &v22[-v11];
  v13 = [v0 traitCollection];
  v14 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if ((v14 & 1) == 0)
  {
    v15 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_style;
    swift_beginAccess();
    (*(v6 + 16))(v12, &v1[v15], v5);
    (*(v6 + 104))(v8, enum case for PrivacyTypeStyle.detailPage(_:), v5);
    sub_100364070();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v27 == v25 && v28 == v26)
    {
      v16 = *(v6 + 8);
      v16(v8, v5);
      v16(v12, v5);
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v17 = *(v6 + 8);
      v17(v8, v5);
      v17(v12, v5);

      if ((v23 & 1) == 0)
      {
        [*&v1[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_titleLabel] setTextAlignment:1];
        [*&v1[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_detailLabel] setTextAlignment:1];
        return [v1 setNeedsLayout];
      }
    }
  }

  v18 = enum case for DirectionalTextAlignment.leading(_:);
  v19 = *(v2 + 104);
  v20 = v24;
  v19(v4, enum case for DirectionalTextAlignment.leading(_:), v24);
  dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();
  v19(v4, v18, v20);
  dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();
  return [v1 setNeedsLayout];
}

id sub_10036135C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CornerStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_100981210);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v20 - v10;
  if (a1)
  {
    [a1 removeFromSuperview];
  }

  v12 = *&v2[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_shadowView];
  if (v12)
  {
    v13 = qword_10096DA68;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Shadow();
    v16 = sub_1000056A8(v15, qword_1009CFD98);
    v17 = *(v15 - 8);
    (*(v17 + 16))(v11, v16, v15);
    (*(v17 + 56))(v11, 0, 1, v15);
    dispatch thunk of ShadowView.shadow.setter();
    (*(v5 + 104))(v7, enum case for CornerStyle.continuous(_:), v4);
    dispatch thunk of ShadowView.setCorner(radius:style:)();
    (*(v5 + 8))(v7, v4);
    v18 = [v2 contentView];
    [v18 insertSubview:v14 atIndex:0];
  }

  return [v2 setNeedsLayout];
}

id sub_1003615DC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CornerStyle();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    [a1 removeFromSuperview];
  }

  v9 = *&v2[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_roundedCornerView];
  if (v9)
  {
    v10 = qword_10096D9E0;
    v11 = v9;
    if (v10 != -1)
    {
      swift_once();
    }

    [v11 setBackgroundColor:qword_100981310];
    (*(v5 + 104))(v8, enum case for CornerStyle.continuous(_:), v4);
    dispatch thunk of RoundedCornerView.setCorner(radius:style:)();
    (*(v5 + 8))(v8, v4);
    v12 = *&v2[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_shadowView];
    if (v12)
    {
      v13 = v12;
      v14 = [v2 contentView];
      [v14 insertSubview:v11 aboveSubview:v13];
    }

    else
    {
      v14 = [v2 contentView];
      [v14 insertSubview:v11 atIndex:0];
    }
  }

  return [v2 setNeedsLayout];
}

void sub_1003617FC()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_categories];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_12:
    [v0 setNeedsLayout];
    return;
  }

  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (!v2)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_categoryViews;
    v7 = v1 & 0xC000000000000001;
    v8 = *&v0[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_contentContainerView];

    v4 = 0;
    do
    {
      if (v7)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      swift_beginAccess();
      sub_10002849C(&qword_1009813A0);
      ReusePool.dequeue(or:)();
      swift_endAccess();
      *&v9[OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_category] = v5;
      swift_retain_n();

      sub_100378DCC();

      [v8 addSubview:v9];
      swift_beginAccess();
      v6 = v9;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v0[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v0[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v4;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
    }

    while (v2 != v4);

    goto LABEL_12;
  }

  __break(1u);
}

id sub_100361A2C@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for PrivacyCategoryView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *a1 = result;
  return result;
}

id sub_100361A78()
{
  v1 = v0;
  v2 = type metadata accessor for Separator.Position();
  v50 = *(v2 - 8);
  v51 = v2;
  __chkstk_darwin(v2);
  v52 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v4 - 8);
  v57 = &v50 - v5;
  v6 = sub_10002849C(&unk_100970E10);
  __chkstk_darwin(v6 - 8);
  v53 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v55 = &v50 - v9;
  v10 = type metadata accessor for PrivacyTypeStyle();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v56 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v50 - v14;
  v16 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_style;
  swift_beginAccess();
  v17 = *(v11 + 16);
  v17(v15, &v1[v16], v10);
  v54 = v11;
  v18 = *(v11 + 88);
  v19 = v18(v15, v10);
  v20 = enum case for PrivacyTypeStyle.productPage(_:);
  if (v19 == enum case for PrivacyTypeStyle.productPage(_:))
  {
    sub_100363CCC(v1);
    v21 = v1;
  }

  else if (v19 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v19 == enum case for PrivacyTypeStyle.detailPage(_:))
  {
    v21 = v1;
    sub_100362294(v1);
  }

  else
  {
    sub_100363CCC(v1);
    v23 = v15;
    v21 = v1;
    (*(v54 + 8))(v23, v10);
  }

  v24 = v56;
  v17(v56, &v21[v16], v10);
  v25 = v18(v24, v10);
  if (v25 == v20)
  {
    v26 = type metadata accessor for Separator();
    v27 = v55;
    (*(*(v26 - 8) + 56))(v55, 1, 1, v26);
    v28 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_separator;
    swift_beginAccess();
    sub_10005A354(v27, &v21[v28]);
    swift_endAccess();
    sub_100362358();
    sub_10002B894(v27, &unk_100970E10);
    if (qword_10096E088 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for FontUseCase();
    v30 = v29;
    v31 = qword_1009D1118;
LABEL_23:
    v46 = sub_1000056A8(v29, v31);
    v47 = *(v30 - 8);
    v48 = v57;
    (*(v47 + 16))(v57, v46, v30);
    (*(v47 + 56))(v48, 0, 1, v30);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
    goto LABEL_24;
  }

  if (v25 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v25 == enum case for PrivacyTypeStyle.detailPage(_:))
  {
    v39 = v21;
    v40 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_separator;
    swift_beginAccess();
    v41 = v53;
    sub_10005A3C4(&v39[v40], v53);
    v42 = type metadata accessor for Separator();
    v43 = *(v42 - 8);
    v44 = (*(v43 + 48))(v41, 1, v42);
    sub_10002B894(v41, &unk_100970E10);
    if (v44 == 1)
    {
      (*(v50 + 104))(v52, enum case for Separator.Position.top(_:), v51);
      v58[3] = type metadata accessor for ZeroDimension();
      v58[4] = &protocol witness table for ZeroDimension;
      sub_1000056E0(v58);
      static ZeroDimension.zero.getter();
      v45 = v55;
      Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
      (*(v43 + 56))(v45, 0, 1, v42);
      swift_beginAccess();
      sub_10005A354(v45, &v39[v40]);
      swift_endAccess();
      sub_100362358();
      sub_10002B894(v45, &unk_100970E10);
    }

    v21 = v39;
    if (qword_10096E090 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for FontUseCase();
    v30 = v29;
    v31 = qword_1009D1130;
    goto LABEL_23;
  }

  v32 = type metadata accessor for Separator();
  v33 = v55;
  (*(*(v32 - 8) + 56))(v55, 1, 1, v32);
  v34 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_separator;
  swift_beginAccess();
  sub_10005A354(v33, &v21[v34]);
  swift_endAccess();
  sub_100362358();
  sub_10002B894(v33, &unk_100970E10);
  if (qword_10096E088 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for FontUseCase();
  v36 = sub_1000056A8(v35, qword_1009D1118);
  v37 = *(v35 - 8);
  v38 = v57;
  (*(v37 + 16))(v57, v36, v35);
  (*(v37 + 56))(v38, 0, 1, v35);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  (*(v54 + 8))(v24, v10);
LABEL_24:
  sub_100360F94();
  return [v21 setNeedsLayout];
}

id sub_100362294(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_shadowView);
  *(a1 + OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_shadowView) = 0;
  sub_10036135C(v2);

  v3 = *(a1 + OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_roundedCornerView);
  if (v3)
  {
    [v3 setHidden:1];
  }

  v4 = *(a1 + OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_contentContainerView);
  sub_100005744(0, &qword_100970180);
  v5 = static UIColor.defaultBackground.getter();
  [v4 setBackgroundColor:v5];

  return [v4 _setContinuousCornerRadius:0.0];
}

id sub_100362358()
{
  v1 = sub_10002849C(&unk_100970E10);
  __chkstk_darwin(v1 - 8);
  v3 = &v28 - v2;
  v4 = type metadata accessor for Separator();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v11 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_separator;
  swift_beginAccess();
  sub_10005A3C4(&v0[v11], v3);
  v12 = &StringUserDefaultsDebugSetting;
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10002B894(v3, &unk_100970E10);
    v13 = *&v0[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_separatorView];
    if (v13)
    {
      [v13 setHidden:1];
    }
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    v14 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_separatorView;
    v15 = *&v0[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_separatorView];
    if (v15)
    {
      (*(v5 + 16))(v7, v10, v4);
      v16 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
      swift_beginAccess();
      v17 = *(v5 + 24);
      v18 = v15;
      v17(&v15[v16], v7, v4);
      swift_endAccess();
      v19 = v18;
      v12 = &StringUserDefaultsDebugSetting;
      [v19 setNeedsLayout];
      v20 = *(v5 + 8);
      v20(v7, v4);
      [v19 setHidden:0];

      v20(v10, v4);
    }

    else
    {
      (*(v5 + 16))(v7, v10, v4);
      v21 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v22 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
      swift_beginAccess();
      v29 = *(v5 + 40);
      v23 = v21;
      v29(&v21[v22], v7, v4);
      swift_endAccess();

      v24 = *&v0[v14];
      if (v24)
      {
        [v24 removeFromSuperview];
        v25 = *&v0[v14];
      }

      else
      {
        v25 = 0;
      }

      *&v0[v14] = v23;
      v26 = v23;

      [*&v0[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_contentContainerView] addSubview:v26];
      v12 = &StringUserDefaultsDebugSetting;
      [v0 setNeedsLayout];

      (*(v5 + 8))(v10, v4);
    }
  }

  return [v0 v12[41].base_meths];
}

uint64_t sub_100362738()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LayoutRect();
  v57 = *(v3 - 8);
  v58 = v3;
  __chkstk_darwin(v3);
  v56 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PrivacyTypeStyle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PrivacyTypeLayout.Metrics();
  __chkstk_darwin(v9 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for PrivacyTypeLayout();
  v53 = *(v55 - 8);
  *&v12 = __chkstk_darwin(v55).n128_u64[0];
  v51 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86.receiver = v1;
  v86.super_class = ObjectType;
  objc_msgSendSuper2(&v86, "layoutSubviews", v12);
  v14 = [v1 contentView];
  v15 = sub_100005744(0, &qword_100972EB0);
  LayoutMarginsAware<>.layoutFrame.getter();

  v16 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_style;
  swift_beginAccess();
  v17 = *(v6 + 16);
  v49 = v6 + 16;
  v50 = v16;
  v48 = v17;
  v17(v8, &v1[v16], v5);

  v52 = v11;
  sub_10035FDE8(v18, v8, v1, v11);

  v19 = *(v6 + 8);
  v54 = v5;
  v19(v8, v5);
  v20 = *&v1[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_shadowView];
  v47 = v20;
  if (v20)
  {
    v21 = type metadata accessor for ShadowView();
    v22 = &protocol witness table for UIView;
    v23 = v20;
  }

  else
  {
    v23 = 0;
    v21 = 0;
    v22 = 0;
    v82 = 0;
    v83 = 0;
  }

  v81 = v23;
  v84 = v21;
  v85 = v22;
  v24 = *&v1[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_roundedCornerView];
  if (v24)
  {
    v25 = type metadata accessor for RoundedCornerView();
    v26 = &protocol witness table for UIView;
    v27 = v24;
  }

  else
  {
    v27 = 0;
    v25 = 0;
    v26 = 0;
    v77 = 0;
    v78 = 0;
  }

  v76 = v27;
  v79 = v25;
  v80 = v26;
  v28 = *&v1[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_contentContainerView];
  v74 = v15;
  v75 = &protocol witness table for UIView;
  v73 = v28;
  v29 = *&v1[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_separatorView];
  if (v29)
  {
    v30 = type metadata accessor for SeparatorView();
    v31 = &protocol witness table for UIView;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v69 = 0;
    v70 = 0;
  }

  v68 = v29;
  v71 = v30;
  v72 = v31;
  v32 = *&v1[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_iconView];
  v66 = type metadata accessor for ArtworkView();
  v67 = &protocol witness table for UIView;
  v65 = v32;
  v33 = *&v1[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_titleLabel];
  v63 = type metadata accessor for DynamicTypeLabel();
  v64 = &protocol witness table for UILabel;
  v34 = *&v1[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_detailLabel];
  v61 = &protocol witness table for UILabel;
  v62 = v33;
  v60 = v63;
  v59 = v34;
  v35 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_categoryViews;
  swift_beginAccess();
  v36 = *&v1[v35];
  v37 = v24;
  v38 = v28;
  v39 = v29;
  v40 = v32;
  v41 = v33;
  v42 = v34;

  v43 = v47;
  sub_1002A5F04(v36);

  v48(v8, &v1[v50], v54);
  v44 = v51;
  PrivacyTypeLayout.init(metrics:shadowView:roundedCornerView:contentContainerView:separatorView:iconView:titleLabel:detailLabel:categoryViews:style:)();
  v45 = v56;
  PrivacyTypeLayout.placeChildren(relativeTo:in:)();
  (*(v57 + 8))(v45, v58);
  return (*(v53 + 8))(v44, v55);
}

id sub_100362E98(uint64_t a1, double a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_roundedCornerView);
  if (v4)
  {
    [v4 setAlpha:a2];
  }

  result = *(a1 + OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_shadowView);
  if (result)
  {

    return [result setAlpha:a2];
  }

  return result;
}

uint64_t type metadata accessor for PrivacyTypeCollectionViewCell()
{
  result = qword_100981378;
  if (!qword_100981378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003631A0()
{
  sub_10005A300(319, &qword_100973090, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_100363348();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PrivacyTypeStyle();
      if (v2 <= 0x3F)
      {
        sub_10005A300(319, &unk_100970DF0, &type metadata accessor for Separator);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_100363348()
{
  if (!qword_100981388)
  {
    sub_10002D1A8(&qword_100981390);
    sub_1003633B8();
    v0 = type metadata accessor for ReusePool();
    if (!v1)
    {
      atomic_store(v0, &qword_100981388);
    }
  }
}

unint64_t sub_1003633B8()
{
  result = qword_100981398;
  if (!qword_100981398)
  {
    sub_10002D1A8(&qword_100981390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981398);
  }

  return result;
}

void sub_10036341C()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_1003640E8;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100007A08;
  v5[3] = &unk_1008BF2B8;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 animateWithDuration:v3 animations:0.5];
  _Block_release(v3);
}

void sub_100363504()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_1003640C8;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100007A08;
  v5[3] = &unk_1008BF268;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 animateWithDuration:v3 animations:0.4];
  _Block_release(v3);
}

void *sub_1003635F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_contentContainerView);
  v2 = v1;
  return v1;
}

id sub_100363620(char *a1)
{
  v2 = type metadata accessor for PrivacyTypeStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_style;
  swift_beginAccess();
  (*(v3 + 16))(v5, &a1[v6], v2);
  v7 = (*(v3 + 88))(v5, v2);
  if (v7 == enum case for PrivacyTypeStyle.productPage(_:))
  {
    return sub_100363CCC(a1);
  }

  if (v7 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v7 == enum case for PrivacyTypeStyle.detailPage(_:))
  {
    return sub_100362294(a1);
  }

  sub_100363CCC(a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1003637BC(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for FontSource();
  v31 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PrivacyTypeLayout.Metrics.HorizontalAlignment();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = &type metadata for Double;
  v37 = &protocol witness table for Double;
  v35[0] = 0x4024000000000000;
  PrivacyTypeLayout.Metrics.compactBottomMargin.setter();
  v36 = &type metadata for Double;
  v37 = &protocol witness table for Double;
  v35[0] = 0x402E000000000000;
  PrivacyTypeLayout.Metrics.regularBottomMargin.setter();
  v11 = [a2 traitCollection];
  LOBYTE(a2) = UITraitCollection.prefersAccessibilityLayouts.getter();

  v12 = &enum case for PrivacyTypeLayout.Metrics.HorizontalAlignment.leading(_:);
  if ((a2 & 1) == 0)
  {
    v12 = &enum case for PrivacyTypeLayout.Metrics.HorizontalAlignment.center(_:);
  }

  (*(v8 + 104))(v10, *v12, v7);
  PrivacyTypeLayout.Metrics.horizontalAlignment.setter();
  if (qword_10096D9D0 != -1)
  {
    swift_once();
  }

  v13 = qword_100981300;
  *v6 = qword_100981300;
  v14 = v31;
  v30 = *(v31 + 104);
  v30(v6, enum case for FontSource.textStyle(_:), v4);
  v29 = type metadata accessor for StaticDimension();
  v36 = v29;
  v37 = &protocol witness table for StaticDimension;
  sub_1000056E0(v35);
  v33 = v4;
  v34 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(v32);
  v28 = *(v14 + 16);
  v28(v15, v6, v4);
  v16 = v13;
  StaticDimension.init(_:scaledLike:)();
  v17 = *(v14 + 8);
  v31 = v14 + 8;
  v27 = v17;
  v17(v6, v4);
  PrivacyTypeLayout.Metrics.iconTopSpace.setter();
  v26 = a1;
  if (qword_10096E088 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for FontUseCase();
  v19 = sub_1000056A8(v18, qword_1009D1118);
  v20 = *(*(v18 - 8) + 16);
  v20(v6, v19, v18);
  v21 = enum case for FontSource.useCase(_:);
  v30(v6, enum case for FontSource.useCase(_:), v4);
  v36 = v29;
  v37 = &protocol witness table for StaticDimension;
  sub_1000056E0(v35);
  v33 = v4;
  v34 = &protocol witness table for FontSource;
  v22 = sub_1000056E0(v32);
  v28(v22, v6, v4);
  StaticDimension.init(_:scaledLike:)();
  v27(v6, v4);
  PrivacyTypeLayout.Metrics.titleTopSpace.setter();
  if (qword_10096E098 != -1)
  {
    swift_once();
  }

  v23 = sub_1000056A8(v18, qword_1009D1148);
  v20(v6, v23, v18);
  v30(v6, v21, v4);
  v36 = v29;
  v37 = &protocol witness table for StaticDimension;
  sub_1000056E0(v35);
  v33 = v4;
  v34 = &protocol witness table for FontSource;
  v24 = sub_1000056E0(v32);
  v28(v24, v6, v4);
  StaticDimension.init(_:scaledLike:)();
  v27(v6, v4);
  return PrivacyTypeLayout.Metrics.detailTopSpace.setter();
}

id sub_100363CCC(char *a1)
{
  v2 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_shadowView;
  v3 = *&a1[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_shadowView];
  if (v3)
  {
    goto LABEL_2;
  }

  v7 = [a1 traitCollection];
  v8 = [v7 userInterfaceStyle];

  if (v8 != 2)
  {
    type metadata accessor for ShadowView();
    v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v4 = *&a1[v2];
    *&a1[v2] = v9;
    v10 = v9;
    sub_10036135C(v4);

    goto LABEL_7;
  }

  v3 = *&a1[v2];
  if (v3)
  {
LABEL_2:
    v4 = v3;
    v5 = [a1 traitCollection];
    v6 = [v5 userInterfaceStyle];

    [v4 setHidden:v6 == 2];
LABEL_7:
  }

  v11 = *&a1[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_contentContainerView];
  if (qword_10096D9E0 != -1)
  {
    swift_once();
  }

  [v11 setBackgroundColor:qword_100981310];
  [v11 _setContinuousCornerRadius:20.0];
  v12 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_roundedCornerView;
  result = *&a1[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_roundedCornerView];
  if (result || (type metadata accessor for RoundedCornerView(), v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init], v15 = *&a1[v12], *&a1[v12] = v14, v16 = v14, sub_1003615DC(v15), v16, v15, (result = *&a1[v12]) != 0))
  {

    return [result setHidden:0];
  }

  return result;
}

uint64_t sub_100363EC8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_categoryViews;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    *(v1 + v2) = _swiftEmptyArrayStorage;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
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
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      swift_beginAccess();
      sub_10002849C(&qword_1009813A0);
      ReusePool.recycle(_:)();
      swift_endAccess();
      *&v8[OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_category] = 0;

      sub_100378DCC();
      v10.value.super.isa = 0;
      v10.is_nil = 0;
      ArtworkView.setImage(image:animated:)(v10, v9);
      [v8 removeFromSuperview];
    }

    while (v5 != v6);

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

unint64_t sub_100364070()
{
  result = qword_1009813A8;
  if (!qword_1009813A8)
  {
    type metadata accessor for PrivacyTypeStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009813A8);
  }

  return result;
}

char *sub_100364108()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  *&v59 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v5 - 8);
  v7 = &v53 - v6;
  v8 = sub_10002849C(&qword_100981390);
  __chkstk_darwin(v8);
  v9 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_contentContainerView;
  *&v0[v9] = [objc_allocWithZone(UIView) init];
  v10 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_itemLayoutContext;
  v11 = type metadata accessor for ItemLayoutContext();
  (*(*(v11 - 8) + 56))(&v0[v10], 1, 1, v11);
  *&v0[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_shadowView] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_roundedCornerView] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_artwork] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_categories] = _swiftEmptyArrayStorage;
  type metadata accessor for PrivacyCategoryView();
  ViewRecycler.init()();
  sub_1003633B8();
  ReusePool.init(recycler:limit:)();
  v12 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_style;
  v13 = enum case for PrivacyTypeStyle.productPage(_:);
  v14 = type metadata accessor for PrivacyTypeStyle();
  (*(*(v14 - 8) + 104))(&v1[v12], v13, v14);
  *&v1[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_separatorView] = 0;
  v15 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_separator;
  v16 = type metadata accessor for Separator();
  (*(*(v16 - 8) + 56))(&v1[v15], 1, 1, v16);
  *&v1[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_iconView] = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_10096E088 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for FontUseCase();
  v18 = sub_1000056A8(v17, qword_1009D1118);
  v19 = *(v17 - 8);
  v57 = *(v19 + 16);
  v57(v7, v18, v17);
  v56 = *(v19 + 56);
  v56(v7, 0, 1, v17);
  v20 = enum case for DirectionalTextAlignment.none(_:);
  v55 = *(v3 + 104);
  v55(v59, enum case for DirectionalTextAlignment.none(_:), v2);
  v21 = type metadata accessor for DynamicTypeLabel();
  v54 = v2;
  v22 = v21;
  v23 = objc_allocWithZone(v21);
  *&v1[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096E098 != -1)
  {
    swift_once();
  }

  v24 = sub_1000056A8(v17, qword_1009D1148);
  v57(v7, v24, v17);
  v56(v7, 0, 1, v17);
  v55(v59, v20, v54);
  v25 = objc_allocWithZone(v22);
  *&v1[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_detailLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *&v1[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_categoryViews] = _swiftEmptyArrayStorage;
  v60.receiver = v1;
  v60.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v60, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v27 = [v26 contentView];
  [v27 setClipsToBounds:0];

  v28 = [v26 contentView];
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v29 = [v26 contentView];
  sub_100005744(0, &qword_100970180);
  v30 = static UIColor.defaultBackground.getter();
  [v29 setBackgroundColor:v30];

  v31 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_contentContainerView;
  v32 = *&v26[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_contentContainerView];
  v33 = static UIColor.defaultBackground.getter();
  [v32 setBackgroundColor:v33];

  v34 = [v26 contentView];
  [v34 addSubview:*&v26[v31]];

  v35 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_iconView;
  v36 = *&v26[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_iconView];
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 clearColor];
  ArtworkView.backgroundColor.setter();

  v40 = qword_10096D9D8;
  v41 = *&v26[v35];
  if (v40 != -1)
  {
    swift_once();
  }

  v42 = qword_100981308;
  ArtworkView.preferredSymbolConfiguration.setter();

  [*&v26[v31] addSubview:*&v26[v35]];
  v43 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_titleLabel;
  v44 = *&v26[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_titleLabel];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  [*&v26[v31] addSubview:*&v26[v43]];
  v45 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_detailLabel;
  v46 = *&v26[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_detailLabel];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  v47 = *&v26[v45];
  v48 = static UIColor.secondaryText.getter();
  [v47 setTextColor:v48];

  [*&v26[v31] addSubview:*&v26[v45]];
  sub_100360F94();
  v49 = [objc_opt_self() defaultCenter];
  [v49 addObserver:v26 selector:"lowMemoryWarning:" name:UIApplicationDidReceiveMemoryWarningNotification object:0];

  sub_10002849C(&qword_10097B110);
  v50 = swift_allocObject();
  v59 = xmmword_1007B10D0;
  *(v50 + 16) = xmmword_1007B10D0;
  *(v50 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v50 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v51 = swift_allocObject();
  *(v51 + 16) = v59;
  *(v51 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v51 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v26;
}

void sub_100364A24()
{
  v1 = sub_10002849C(&qword_100981390);
  __chkstk_darwin(v1);
  v2 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_contentContainerView;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_itemLayoutContext;
  v4 = type metadata accessor for ItemLayoutContext();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_shadowView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_roundedCornerView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_artwork) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_categories) = _swiftEmptyArrayStorage;
  type metadata accessor for PrivacyCategoryView();
  ViewRecycler.init()();
  sub_1003633B8();
  ReusePool.init(recycler:limit:)();
  v5 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_style;
  v6 = enum case for PrivacyTypeStyle.productPage(_:);
  v7 = type metadata accessor for PrivacyTypeStyle();
  (*(*(v7 - 8) + 104))(v0 + v5, v6, v7);
  *(v0 + OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_separatorView) = 0;
  v8 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_separator;
  v9 = type metadata accessor for Separator();
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100364C8C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10002849C(&unk_100973220);
  sub_100005644(v3, a2);
  sub_1000056A8(v3, a2);
  __asm { FMOV            V0.2D, #16.0 }

  sub_10002849C(&qword_100973F50);
  type metadata accessor for UIEdgeInsets(0);
  return Conditional<>.init(regularValue:compactValue:)();
}

uint64_t sub_100364D38()
{
  v0 = sub_10002849C(&qword_1009755B0);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10002849C(&unk_100973220);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v8 - v3;
  v5 = type metadata accessor for AchievementSummaryLayout.Metrics();
  sub_100005644(v5, qword_1009CFC78);
  sub_1000056A8(v5, qword_1009CFC78);
  if (qword_10096D9F0 != -1)
  {
    swift_once();
  }

  v6 = sub_1000056A8(v1, qword_1009CFC48);
  (*(v2 + 16))(v4, v6, v1);
  v8[24] = &type metadata for Double;
  v8[25] = &protocol witness table for Double;
  v8[20] = &protocol witness table for Double;
  v8[21] = 0x4000000000000000;
  v8[19] = &type metadata for Double;
  v8[15] = &protocol witness table for Double;
  v8[16] = 0x4028000000000000;
  v8[14] = &type metadata for Double;
  v8[10] = &protocol witness table for Double;
  v8[11] = 0x4028000000000000;
  v8[9] = &type metadata for Double;
  v8[5] = &protocol witness table for Double;
  v8[6] = 0x406B800000000000;
  v8[4] = &type metadata for Double;
  v8[1] = 0x4066800000000000;
  sub_10002849C(&qword_100973F50);
  sub_10002849C(&qword_1009755B8);
  Conditional<>.init(regularValue:compactValue:)();
  return AchievementSummaryLayout.Metrics.init(achievementStackInsets:outOfTotalLeadingMargin:chevronLeadingMargin:chevronTrailingMargin:componentHeight:)();
}

char *sub_100364F7C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10002849C(&unk_100981210);
  __chkstk_darwin(v10 - 8);
  v71 = &v68 - v11;
  v12 = type metadata accessor for DirectionalTextAlignment();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v16 - 8);
  v18 = &v68 - v17;
  v19 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_itemLayoutContext;
  v20 = type metadata accessor for ItemLayoutContext();
  (*(*(v20 - 8) + 56))(&v4[v19], 1, 1, v20);
  v21 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_shadowView;
  type metadata accessor for ShadowView();
  *&v4[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_containerView;
  *&v4[v22] = [objc_allocWithZone(UIView) init];
  *&v4[OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_achievementGroupView] = 0;
  v69 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_numberCompletedLabel;
  if (qword_10096E040 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for FontUseCase();
  v24 = sub_1000056A8(v23, qword_1009D1040);
  v25 = *(v23 - 8);
  v75 = *(v25 + 16);
  v75(v18, v24, v23);
  v74 = *(v25 + 56);
  v74(v18, 0, 1, v23);
  v26 = enum case for DirectionalTextAlignment.leading(_:);
  v73 = *(v13 + 104);
  v73(v15, enum case for DirectionalTextAlignment.leading(_:), v12);
  v27 = type metadata accessor for DynamicTypeLabel();
  v72 = v12;
  v28 = v27;
  v29 = objc_allocWithZone(v27);
  *&v4[v69] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v69 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_outOfTotalLabel;
  if (qword_10096E048 != -1)
  {
    swift_once();
  }

  v30 = sub_1000056A8(v23, qword_1009D1058);
  v75(v18, v30, v23);
  v74(v18, 0, 1, v23);
  v73(v15, v26, v72);
  v31 = objc_allocWithZone(v28);
  *&v4[v69] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v69 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_completedLabel;
  if (qword_10096E050 != -1)
  {
    swift_once();
  }

  v32 = sub_1000056A8(v23, qword_1009D1070);
  v75(v18, v32, v23);
  v74(v18, 0, 1, v23);
  v73(v15, v26, v72);
  v33 = objc_allocWithZone(v28);
  *&v4[v69] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096DA00 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for AchievementSummaryLayout.Metrics();
  v35 = sub_1000056A8(v34, qword_1009CFC78);
  (*(*(v34 - 8) + 16))(v5 + OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_metrics, v35, v34);
  v76.receiver = v5;
  v76.super_class = ObjectType;
  v36 = objc_msgSendSuper2(&v76, "initWithFrame:", a1, a2, a3, a4);
  v37 = [v36 contentView];
  [v37 _setContinuousCornerRadius:20.0];

  v38 = [v36 contentView];
  [v38 setClipsToBounds:0];

  v39 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_shadowView;
  v40 = qword_10096DAC8;
  v41 = *&v36[OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_shadowView];
  if (v40 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Shadow();
  v43 = sub_1000056A8(v42, qword_1009CFEB8);
  v44 = *(v42 - 8);
  v45 = v71;
  (*(v44 + 16))(v71, v43, v42);
  (*(v44 + 56))(v45, 0, 1, v42);
  dispatch thunk of ShadowView.shadow.setter();

  [*&v36[v39] _setContinuousCornerRadius:20.0];
  v46 = [v36 contentView];
  [v46 addSubview:*&v36[v39]];

  v47 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_containerView;
  [*&v36[OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_containerView] setClipsToBounds:1];
  v48 = [v36 contentView];
  [v48 addSubview:*&v36[v47]];

  v49 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_numberCompletedLabel;
  v50 = *&v36[OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_numberCompletedLabel];
  sub_100028BB8();
  v51 = v50;
  v52 = static UIColor.primaryText.getter();
  [v51 setTextColor:v52];

  v53 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_outOfTotalLabel;
  v54 = *&v36[OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_outOfTotalLabel];
  v55 = static UIColor.primaryText.getter();
  [v54 setTextColor:v55];

  v56 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_completedLabel;
  v57 = *&v36[OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_completedLabel];
  v58 = static UIColor.primaryText.getter();
  [v57 setTextColor:v58];

  [*&v36[v49] setAdjustsFontSizeToFitWidth:1];
  [*&v36[v56] setAdjustsFontSizeToFitWidth:1];
  [*&v36[v53] setAdjustsFontSizeToFitWidth:1];
  [*&v36[v49] _setMinimumFontSize:20.0];
  [*&v36[v56] _setMinimumFontSize:11.0];
  [*&v36[v53] _setMinimumFontSize:11.0];
  v59 = [v36 contentView];
  [v59 addSubview:*&v36[v53]];

  v60 = [v36 contentView];
  [v60 addSubview:*&v36[v49]];

  v61 = [v36 contentView];
  [v61 addSubview:*&v36[v56]];

  v62 = [v36 traitCollection];
  v63 = [v62 userInterfaceStyle];

  if (v63 == 2)
  {
    v64 = static UIColor.placeholderBackground.getter();
  }

  else
  {
    v64 = static UIColor.defaultBackground.getter();
  }

  v65 = v64;
  [*&v36[v39] setBackgroundColor:v64];

  sub_10002849C(&qword_10097B110);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1007B10D0;
  *(v66 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v66 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges(_:action:)();

  swift_unknownObjectRelease();

  return v36;
}

void sub_10036595C()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceStyle];

  sub_100028BB8();
  if (v3 == 2)
  {
    v4 = static UIColor.placeholderBackground.getter();
  }

  else
  {
    v4 = static UIColor.defaultBackground.getter();
  }

  v5 = v4;
  [*&v1[OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_shadowView] setBackgroundColor:?];
}

id sub_100365A5C()
{
  ObjectType = swift_getObjectType();
  v25 = type metadata accessor for LayoutRect();
  v2 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AchievementSummaryLayout.Metrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for AchievementSummaryLayout();
  v26 = *(v27 - 8);
  *&v9 = __chkstk_darwin(v27).n128_u64[0];
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43.receiver = v0;
  v43.super_class = ObjectType;
  objc_msgSendSuper2(&v43, "layoutSubviews", v9);
  v12 = *&v0[OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_shadowView];
  [v0 bounds];
  [v12 setFrame:?];
  v13 = *&v0[OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_containerView];
  [v0 bounds];
  result = [v13 setFrame:?];
  v15 = *&v0[OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_achievementGroupView];
  if (v15)
  {
    v16 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_metrics;
    swift_beginAccess();
    (*(v6 + 16))(v8, &v0[v16], v5);
    v41 = type metadata accessor for AchievementGroupView();
    v42 = &protocol witness table for UIView;
    v40 = v15;
    v17 = *&v0[OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_numberCompletedLabel];
    v38 = type metadata accessor for DynamicTypeLabel();
    v39 = &protocol witness table for UILabel;
    v36 = &protocol witness table for UILabel;
    v37 = v17;
    v18 = *&v0[OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_outOfTotalLabel];
    v35 = v38;
    v33 = &protocol witness table for UILabel;
    v34 = v18;
    v19 = *&v0[OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_completedLabel];
    v32 = v38;
    v31 = v19;
    v30 = 0;
    v29 = 0u;
    v28 = 0u;
    v20 = v15;
    v21 = v17;
    v22 = v18;
    v23 = v19;
    AchievementSummaryLayout.init(metrics:achievementGroupView:numberCompletedLabel:outOfTotalLabel:completedLabel:chevronView:)();
    [v0 bounds];
    AchievementSummaryLayout.placeChildren(relativeTo:in:)();

    (*(v2 + 8))(v4, v25);
    return (*(v26 + 8))(v11, v27);
  }

  return result;
}

uint64_t type metadata accessor for AchievementSummaryCollectionViewCell()
{
  result = qword_1009813E8;
  if (!qword_1009813E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100365FB0()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AchievementSummaryLayout.Metrics();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10036609C()
{
  v29 = type metadata accessor for DirectionalTextAlignment();
  v1 = *(v29 - 8);
  __chkstk_darwin(v29);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_itemLayoutContext;
  v8 = type metadata accessor for ItemLayoutContext();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_shadowView;
  type metadata accessor for ShadowView();
  *(v0 + v9) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_containerView;
  *(v0 + v10) = [objc_allocWithZone(UIView) init];
  v30 = v0;
  *(v0 + OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_achievementGroupView) = 0;
  v11 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_numberCompletedLabel;
  if (qword_10096E040 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for FontUseCase();
  v13 = sub_1000056A8(v12, qword_1009D1040);
  v14 = *(v12 - 8);
  v27 = *(v14 + 16);
  v27(v6, v13, v12);
  v26 = *(v14 + 56);
  v26(v6, 0, 1, v12);
  v15 = enum case for DirectionalTextAlignment.leading(_:);
  v16 = *(v1 + 104);
  v28 = v1 + 104;
  v16(v3, enum case for DirectionalTextAlignment.leading(_:), v29);
  v17 = type metadata accessor for DynamicTypeLabel();
  v18 = objc_allocWithZone(v17);
  *(v30 + v11) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v19 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_outOfTotalLabel;
  if (qword_10096E048 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v12, qword_1009D1058);
  v27(v6, v20, v12);
  v26(v6, 0, 1, v12);
  v16(v3, v15, v29);
  v21 = objc_allocWithZone(v17);
  *(v30 + v19) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v22 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_completedLabel;
  if (qword_10096E050 != -1)
  {
    swift_once();
  }

  v23 = sub_1000056A8(v12, qword_1009D1070);
  v27(v6, v23, v12);
  v26(v6, 0, 1, v12);
  v16(v3, v15, v29);
  v24 = objc_allocWithZone(v17);
  *(v30 + v22) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1003668A0()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F8CardView_tintView];
  [v1 _setCornerRadius:20.0];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v1];
  v2 = objc_opt_self();
  sub_10002849C(&qword_100973210);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1007BB060;
  v4 = [v1 topAnchor];
  v5 = [v0 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v3 + 32) = v6;
  v7 = [v1 leftAnchor];
  v8 = [v0 leftAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v3 + 40) = v9;
  v10 = [v1 bottomAnchor];
  v11 = [v0 bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v3 + 48) = v12;
  v13 = [v1 rightAnchor];
  v14 = [v0 rightAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v3 + 56) = v15;
  sub_100005744(0, &qword_1009766E0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:isa];

  [v0 _setCornerRadius:20.0];
  [v0 setLayoutMargins:{8.0, 16.0, 8.0, 16.0}];
  [v0 setClipsToBounds:1];
  v17 = [objc_opt_self() whiteColor];
  [v0 setBackgroundColor:v17];

  v18 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"didTapFrom:"];
  [v0 addGestureRecognizer:v18];
}

id sub_100366CF0(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F8CardView_tintView;
  *&v1[v4] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F8CardView_viewConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F8CardView_view] = 0;
  v5 = &v1[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F8CardView_tapAction];
  *v5 = 0;
  *(v5 + 1) = 0;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_1003668A0();
  }

  return v7;
}

void sub_100366DF0(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F8CardView_viewConstraints;
  sub_100005744(0, &qword_1009766E0);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 deactivateConstraints:isa];

  *(v1 + v4) = a1;

  v6 = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:v6];
}

id sub_100366EF0()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F8CardView_view];
  if (v1)
  {
    v2 = v1;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v0 addSubview:v2];
    v3 = [v2 bottomAnchor];
    v4 = [v0 layoutMarginsGuide];
    v5 = [v4 bottomAnchor];

    v6 = [v3 constraintEqualToAnchor:v5];
    LODWORD(v7) = 1140457472;
    [v6 setPriority:v7];
    sub_10002849C(&qword_100973210);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1007BB060;
    v9 = [v2 topAnchor];
    v10 = [v0 layoutMarginsGuide];
    v11 = [v10 topAnchor];

    v12 = [v9 constraintEqualToAnchor:v11];
    *(v8 + 32) = v12;
    v13 = [v2 leftAnchor];
    v14 = [v0 layoutMarginsGuide];
    v15 = [v14 leftAnchor];

    v16 = [v13 constraintEqualToAnchor:v15];
    *(v8 + 40) = v16;
    *(v8 + 48) = v6;
    v17 = v6;
    v18 = [v2 rightAnchor];
    v19 = [v0 layoutMarginsGuide];
    v20 = [v19 rightAnchor];

    v21 = [v18 constraintEqualToAnchor:v20];
    *(v8 + 56) = v21;
    sub_100366DF0(v8);
  }

  else
  {
    sub_100366DF0(&_swiftEmptyArrayStorage);
  }

  return [v0 invalidateIntrinsicContentSize];
}

void sub_100367330()
{
  v39.receiver = v0;
  v39.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v39, "viewDidLoad");
  v1 = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_cardStackView;
  v3 = *&v0[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_cardStackView];
  *&v0[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_cardStackView] = v1;
  v4 = v1;

  if (!v4)
  {
    __break(1u);
    goto LABEL_18;
  }

  [v4 setAxis:1];

  v5 = *&v0[v2];
  if (!v5)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v5 setAlignment:0];
  v6 = *&v0[v2];
  if (!v6)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v6 setDistribution:3];
  v7 = *&v0[v2];
  if (!v7)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v7 setSpacing:16.0];
  v8 = *&v0[v2];
  if (!v8)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!*&v0[v2])
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v10 = v9;
  [v9 addSubview:?];

  v11 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = *&v0[v2];
  if (!v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v12 addArrangedSubview:v11];
  sub_10002849C(&qword_100973210);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1007B48F0;
  v14 = *&v0[v2];
  if (!v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = [v14 topAnchor];
  v16 = [v0 view];
  if (!v16)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = v16;
  v18 = [v16 layoutMarginsGuide];

  v19 = [v18 topAnchor];
  v20 = [v15 constraintEqualToAnchor:v19];

  *(v13 + 32) = v20;
  v21 = *&v0[v2];
  if (!v21)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v22 = [v21 leftAnchor];
  v23 = [v0 view];
  if (!v23)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v24 = v23;
  v25 = [v23 layoutMarginsGuide];

  v26 = [v25 leftAnchor];
  v27 = [v22 constraintEqualToAnchor:v26];

  *(v13 + 40) = v27;
  v28 = *&v0[v2];
  if (!v28)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v29 = [v28 rightAnchor];
  v30 = [v0 view];
  if (!v30)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v31 = v30;
  v32 = objc_opt_self();
  v33 = [v31 layoutMarginsGuide];

  v34 = [v33 rightAnchor];
  v35 = [v29 constraintEqualToAnchor:v34];

  *(v13 + 48) = v35;
  sub_100005744(0, &qword_1009766E0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v32 activateConstraints:isa];

  v37 = [v0 view];
  if (v37)
  {
    v38 = v37;
    [v37 layoutIfNeeded];

    return;
  }

LABEL_31:
  __break(1u);
}

void sub_100367878(void *a1)
{
  [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v1 selector:"popWithCard:" object:a1];
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v15 = sub_1003692B0;
  v16 = v4;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100007A08;
  v14 = &unk_1008BF488;
  v5 = _Block_copy(&v11);
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v1;
  v15 = sub_1003692CC;
  v16 = v7;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100504C5C;
  v14 = &unk_1008BF4D8;
  v8 = _Block_copy(&v11);
  v9 = v6;
  v10 = v1;

  [v3 animateWithDuration:v5 animations:v8 completion:0.3];
  _Block_release(v8);
  _Block_release(v5);
}

void *sub_100367A3C(int a1, id a2, uint64_t a3)
{
  [a2 removeFromSuperview];
  result = *(a3 + OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_cardStackView);
  if (!result)
  {
    goto LABEL_15;
  }

  v5 = [result arrangedSubviews];
  sub_100005744(0, &qword_100972EB0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v7, 1))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (v7 == 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8 = result[2];
      if (v8)
      {
        v9 = v8;
        [v9 setHidden:1];
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_100367BD4()
{
  v30 = OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_cardStackView;
  v2 = *&v1[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_cardStackView];
  if (!v2)
  {
    goto LABEL_32;
  }

  v3 = [v2 arrangedSubviews];
  sub_100005744(0, &qword_100972EB0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
LABEL_25:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v5, 1))
  {
    __break(1u);
    goto LABEL_27;
  }

  v0 = OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_maximumNumberOfCards;
  if (*&v1[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_maximumNumberOfCards] < v5 - 1)
  {
    v6 = *&v1[v30];
    if (!v6)
    {
LABEL_33:
      __break(1u);
      return;
    }

    v7 = [v6 arrangedSubviews];
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v8 >> 62))
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_9;
    }

LABEL_27:
    v9 = _CocoaArrayWrapper.endIndex.getter();
LABEL_9:

    v10 = v9 - 1;
    if (__OFSUB__(v9, 1))
    {
      __break(1u);
    }

    else
    {
      v11 = *&v1[v0];
      v12 = __OFSUB__(v10, v11);
      v13 = v10 - v11;
      if (!v12)
      {
        if (v13 >= 1)
        {
          v29 = v11 - v9 + 2;
          v14 = 5;
          while (1)
          {
            v15 = *&v1[v30];
            if (!v15)
            {
              goto LABEL_31;
            }

            v16 = v14 - 4;
            v17 = [v15 arrangedSubviews];
            v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if ((v18 & 0xC000000000000001) != 0)
            {
              v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v16 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
LABEL_24:
                __break(1u);
                goto LABEL_25;
              }

              v19 = *(v18 + 8 * v14);
            }

            v20 = v19;
            v0 = v29 + v14;

            [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v1 selector:"popWithCard:" object:v20];
            v21 = objc_opt_self();
            v22 = swift_allocObject();
            *(v22 + 16) = v20;
            v35 = sub_100369170;
            v36 = v22;
            aBlock = _NSConcreteStackBlock;
            v32 = 1107296256;
            v33 = sub_100007A08;
            v34 = &unk_1008BF3E8;
            v23 = _Block_copy(&aBlock);
            v24 = v20;

            v25 = swift_allocObject();
            *(v25 + 16) = v24;
            *(v25 + 24) = v1;
            v35 = sub_100369184;
            v36 = v25;
            aBlock = _NSConcreteStackBlock;
            v32 = 1107296256;
            v33 = sub_100504C5C;
            v34 = &unk_1008BF438;
            v26 = _Block_copy(&aBlock);
            v27 = v24;
            v28 = v1;

            [v21 animateWithDuration:v23 animations:v26 completion:0.3];
            _Block_release(v26);
            _Block_release(v23);

            if (v29 + v14 == 5)
            {
              return;
            }

            ++v14;
            if (__OFADD__(v16, 1))
            {
              goto LABEL_24;
            }
          }
        }

LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    __break(1u);
    goto LABEL_30;
  }
}

char *sub_100367F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for CardView();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [*&v8[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F8CardView_tintView] setBackgroundColor:a3];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 2) = v10;
  *(v11 + 3) = v9;
  *(v11 + 4) = a4;
  *(v11 + 5) = a5;
  v12 = &v8[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F8CardView_tapAction];
  v13 = *&v8[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F8CardView_tapAction];
  *v12 = sub_10036918C;
  v12[1] = v11;

  sub_10000827C(a4);
  sub_10001F63C(v13);

  v14 = [objc_allocWithZone(UILabel) init];
  v15 = objc_opt_self();
  sub_100005744(0, &qword_100972780);
  v16 = static UITraitCollection.withSystemPreferredContentSizeCategory.getter();
  v17 = [v15 preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v16];

  [v14 setFont:v17];
  [v14 setNumberOfLines:5];
  [v14 setLineBreakMode:0];
  v18 = String._bridgeToObjectiveC()();
  [v14 setText:v18];

  v19 = OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F8CardView_view;
  v20 = *&v8[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F8CardView_view];
  v21 = v14;
  if (v20)
  {
    [v20 removeFromSuperview];
    v20 = *&v8[v19];
  }

  *&v8[v19] = v14;
  v22 = v14;

  sub_100366EF0();
  return v8;
}

void sub_100368224(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      sub_100367878(v5);
    }

    if (a3)
    {
      a3();
    }
  }
}

void sub_1003682C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v8 = OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_cardStackView;
  v9 = *&v6[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_cardStackView];
  if (!v9)
  {
    goto LABEL_14;
  }

  v15 = [v9 arrangedSubviews];
  sub_100005744(0, &qword_100972EB0);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v16 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v17, 1))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v17 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = *(Strong + 16);
      if (v19)
      {
        v20 = v19;
        [v20 setHidden:0];
      }

      swift_unknownObjectRelease();
    }
  }

  v21 = sub_100367F98(a1, a2, a3, a4, a5);
  [v21 setHidden:1];
  v22 = *&v6[v8];
  if (v22)
  {
    [v22 addArrangedSubview:v21];
    sub_100367BD4();
    v23 = objc_opt_self();
    v24 = swift_allocObject();
    *(v24 + 16) = v21;
    v35 = sub_100369134;
    v36 = v24;
    v31 = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_100007A08;
    v34 = &unk_1008BF348;
    v25 = _Block_copy(&v31);
    v26 = v21;

    v27 = swift_allocObject();
    *(v27 + 16) = a6;
    *(v27 + 24) = v6;
    *(v27 + 32) = v26;
    v35 = sub_100369148;
    v36 = v27;
    v31 = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_100504C5C;
    v34 = &unk_1008BF398;
    v28 = _Block_copy(&v31);
    v29 = v26;
    v30 = v6;

    [v23 animateWithDuration:v25 animations:v28 completion:0.3];
    _Block_release(v28);
    _Block_release(v25);

    return;
  }

LABEL_15:
  __break(1u);
}

id sub_1003685B0(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_cardStackView] = 0;
  *&v3[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_maximumNumberOfCards] = 3;
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id sub_1003686E0(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_cardStackView] = 0;
  *&v1[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_maximumNumberOfCards] = 3;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

void sub_10036881C()
{
  if (!*(v0 + 16))
  {
    v1 = [objc_opt_self() mainScreen];
    [v1 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v10 = [objc_allocWithZone(type metadata accessor for StatusBarOverlayWindow()) initWithFrame:{v3, v5, v7, v9}];
    v11 = *(v0 + 16);
    *(v0 + 16) = v10;

    type metadata accessor for CardStackViewController();
    v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v13 = *(v0 + 24);
    *(v0 + 24) = v12;

    v14 = *(v0 + 16);
    if (v14)
    {
      [v14 setRootViewController:*(v0 + 24)];
      v15 = *(v0 + 16);
      if (v15)
      {
        v16 = *(v0 + 24);
        if (v16)
        {
          v17 = v15;
          v18 = v16;
          [v18 loadViewIfNeeded];
          v19 = *&v18[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_cardStackView];
          if (!v19)
          {
            __break(1u);
            return;
          }

          v20 = v19;
        }

        else
        {
          v17 = v15;
          v19 = 0;
        }

        v21 = *&v17[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F22StatusBarOverlayWindow_interactionView];
        *&v17[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F22StatusBarOverlayWindow_interactionView] = v19;
      }
    }

    v22 = *(v0 + 24);
    if (v22)
    {
      *(v22 + OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_delegate + 8) = &off_1008BF2E0;

      swift_unknownObjectWeakAssign();
    }
  }
}

uint64_t sub_1003689F4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for JSIncident();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = JSIncident.problemSummary.getter();
  v10 = v9;
  (*(v5 + 16))(v7, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v7, v4);
  v13 = [objc_opt_self() standardUserDefaults];
  LOBYTE(v4) = sub_100737B84();

  if (v4)
  {
    v14 = [objc_opt_self() sharedApplication];
    v15 = [v14 launchedToTest];

    if ((v15 & 1) == 0)
    {
      sub_10036881C();
      v16 = *(v2 + 24);
      if (v16)
      {
        sub_100005744(0, &qword_100970180);
        v17 = v16;
        isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 0.58431, 0.0, 0.5).super.isa;
        sub_1003682C8(v8, v10, isa, sub_1003690D4, v12, 3.0);
      }
    }
  }
}

void sub_100368C24(uint64_t a1)
{
  v2 = type metadata accessor for JSIncident();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  if (qword_10096D518 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v6 = *(Strong + OBJC_IVAR____TtC8AppStore11AppDelegate_window), v7 = [v6 rootViewController], v6, swift_unknownObjectRelease(), v7))
  {
    JSIncident.contextSummary.getter();
    JSIncident.problemSummary.getter();
    v8 = String._bridgeToObjectiveC()();

    v9 = String._bridgeToObjectiveC()();

    v10 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

    (*(v3 + 16))(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
    v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v12 = swift_allocObject();
    (*(v3 + 32))(v12 + v11, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
    v13 = String._bridgeToObjectiveC()();
    aBlock[4] = sub_100369228;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100768994;
    aBlock[3] = &unk_1008BF5A0;
    v14 = _Block_copy(aBlock);

    v15 = objc_opt_self();
    v16 = [v15 actionWithTitle:v13 style:0 handler:v14];
    _Block_release(v14);

    [v10 addAction:v16];
    v17 = String._bridgeToObjectiveC()();
    v18 = [v15 actionWithTitle:v17 style:0 handler:0];

    [v10 addAction:v18];
    [v7 presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    if (qword_10096D110 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for OSLogger();
    sub_1000056A8(v19, qword_1009CE1E8);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.debug(_:)();
  }
}

void sub_1003690D4()
{
  v1 = *(type metadata accessor for JSIncident() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_100368C24(v2);
}

id sub_100369148()
{
  if (*(v0 + 16) >= 0.0)
  {
    return [*(v0 + 24) performSelector:"popWithCard:" withObject:*(v0 + 32) afterDelay:?];
  }

  return result;
}

void sub_100369198()
{
  v0 = [objc_opt_self() generalPasteboard];
  JSIncident.description.getter();
  v1 = String._bridgeToObjectiveC()();

  [v0 setString:v1];
}

void sub_100369228()
{
  type metadata accessor for JSIncident();

  sub_100369198();
}

void sub_1003692D0(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for OfferButtonMetrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  if (a1 >= 1)
  {
    __chkstk_darwin(v10);
    *(&v20 - 2) = v2;
    *(&v20 - 1) = a2;
    v21 = UITraitCollection.modifyingTraits(_:)();
    if (qword_10096EFE0 != -1)
    {
      swift_once();
    }

    if (qword_10096EFE8 != -1)
    {
      swift_once();
    }

    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      v13 = &xmmword_1009D4040;
    }

    else
    {
      v13 = &xmmword_1009D3ED0;
    }

    sub_10003B8E8(v13, v22);
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v14 = qword_100991010;
    }

    else
    {
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v14 = qword_100991028;
    }

    v15 = sub_1000056A8(v5, v14);
    (*(v6 + 16))(v8, v15, v5);
    (*(v6 + 32))(v12, v8, v5);
    if ((v25 & 1) == 0 && v23 == 0.0 && v24 == 0.0)
    {
      OfferButtonMetrics.minimumSize.getter();
      v17 = v16;
      OfferButtonMetrics.minimumSize.getter();
      v23 = v17;
      v24 = v18;
      v25 = 0;
    }

    v19 = _s8AppStore21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v22, a2, 0.0);
    (*(v6 + 8))(v12, v5, v19);
    sub_10003B944(v22);
  }
}

uint64_t sub_10036961C(void *a1)
{
  v2 = type metadata accessor for OfferButtonMetrics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v6);
  v8 = &v19[-v7 - 8];
  if (qword_10096EFE0 != -1)
  {
    swift_once();
  }

  if (qword_10096EFE8 != -1)
  {
    swift_once();
  }

  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    v9 = &xmmword_1009D4040;
  }

  else
  {
    v9 = &xmmword_1009D3ED0;
  }

  sub_10003B8E8(v9, v19);
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v10 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v10 = qword_100991028;
  }

  v11 = sub_1000056A8(v2, v10);
  (*(v3 + 16))(v5, v11, v2);
  (*(v3 + 32))(v8, v5, v2);
  if ((v22 & 1) == 0 && v20 == 0.0 && v21 == 0.0)
  {
    OfferButtonMetrics.minimumSize.getter();
    v13 = v12;
    OfferButtonMetrics.minimumSize.getter();
    v20 = v13;
    v21 = v14;
    v22 = 0;
  }

  v15 = _s8AppStore21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v19, a1, 0.0);
  (*(v3 + 8))(v8, v2, v15);
  sub_10003B944(v19);
  sub_10036DA1C(a1);
  v16 = [a1 preferredContentSizeCategory];
  static UIContentSizeCategory.> infix(_:_:)();

  static UIEdgeInsets.vertical(top:bottom:)();
  return VerticalFlexStackLayout.Metrics.init(fixedChildHeight:minInterChildSpacing:maxInterChildSpacing:layoutMargins:)();
}

id sub_100369968(double a1, double a2, double a3, double a4)
{
  swift_weakInit();
  swift_weakInit();
  v4[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isExpanded] = 0;
  swift_weakInit();
  v9 = &v4[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_impressionsUpdateBlock];
  *v9 = 0;
  v9[1] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_lockups] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_limit] = 0;
  v4[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_lastContentWidth] = 0;
  v10 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_listCells;
  *&v4[v10] = sub_10039910C(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_prefetchedLockupImages] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_currentTouch] = 0;
  v4[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isDragging] = 0;
  v11 = &v4[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_indexForHighlightedLockup];
  *v11 = 0;
  v11[8] = 1;
  v12 = type metadata accessor for TodayListCardLockupContainer();
  v21.receiver = v4;
  v21.super_class = v12;
  v13 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  sub_10036A868();
  sub_10002849C(&qword_10097B110);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1007B10D0;
  *(v18 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v18 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v20[3] = v12;
  v20[0] = v17;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100007000(v20);
  return v17;
}

void sub_100369C9C(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for TodayListCardLockupContainer();
  v21.receiver = v4;
  v21.super_class = v9;
  objc_msgSendSuper2(&v21, "frame");
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v20.receiver = v4;
  v20.super_class = v9;
  objc_msgSendSuper2(&v20, "setFrame:", a1, a2, a3, a4);
  [v4 frame];
  Height = CGRectGetHeight(v22);
  v23.origin.x = v11;
  v23.origin.y = v13;
  v23.size.width = v15;
  v23.size.height = v17;
  if (Height != CGRectGetHeight(v23))
  {
    v19 = v4[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid];
    v4[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid] = 1;
    sub_100369D90(v19);
  }
}

uint64_t sub_100369D90(uint64_t result)
{
  if (v1[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid] == 1 && (result & 1) == 0)
  {
    v2 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_listCells;
    swift_beginAccess();
    v3 = *&v1[v2];
    v4 = 1 << *(v3 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v3 + 64);
    v7 = (v4 + 63) >> 6;

    for (i = 0; v6; result = [*(*(*(v3 + 56) + ((v9 << 9) | (8 * v10))) + OBJC_IVAR____TtC8AppStore38TodayCardSmallLockupCollectionViewCell_lockupView) setNeedsLayout])
    {
      v9 = i;
LABEL_11:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
    }

    while (1)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        return [v1 setNeedsLayout];
      }

      v6 = *(v3 + 64 + 8 * v9);
      ++i;
      if (v6)
      {
        i = v9;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100369ECC()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for VerticalFlexStackLayout.Metrics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TodayListCardLockupContainer();
  v19.receiver = v0;
  v19.super_class = v6;
  objc_msgSendSuper2(&v19, "layoutSubviews");
  v7 = *&v0[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_lockups];
  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v0[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isExpanded];
  LayoutMarginsAware<>.layoutFrame.getter();
  v10 = [v0 traitCollection];
  if (v9 == 1)
  {
  }

  else
  {
    v11 = v10;
    sub_10036961C(v10);
    v12 = static VerticalFlexStackLayout.estimatedChildFitCount(in:metrics:)();
    v14 = v13;

    (*(v3 + 8))(v5, v2);
    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = v12;
    }

    if (v8 >= v15)
    {
      v8 = v15;
    }
  }

  v16 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_lastContentWidth;
  v17 = *&v1[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_lastContentWidth];
  LayoutMarginsAware<>.layoutFrame.getter();
  if (v17 != CGRectGetWidth(v20) || *&v1[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_limit] != v8)
  {
    v18 = v1[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid];
    v1[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid] = 1;
    sub_100369D90(v18);
  }

  if (v1[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid] == 1)
  {
    if (swift_weakLoadStrong())
    {

      *&v1[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_limit] = v8;
      sub_10036AC74(v8);
      sub_10036A17C();
      LayoutMarginsAware<>.layoutFrame.getter();
      *&v1[v16] = CGRectGetWidth(v21);
    }
  }
}

void sub_10036A17C()
{
  v2 = v0;
  swift_getObjectType();
  v3 = type metadata accessor for VerticalFlexStackLayout.Metrics();
  __chkstk_darwin(v3 - 8);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VerticalFlexStackLayout();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  __chkstk_darwin(v9);
  v11 = &v43 - v10;
  if (!swift_weakLoadStrong())
  {
    return;
  }

  if (v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid] != 1)
  {
    return;
  }

  v12 = *&v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_limit];
  if ((v12 & 0x8000000000000000) == 0)
  {
    v51 = v7;
    v52 = v5;
    v47 = v8;
    v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v46 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid;
    v50 = v11;
    v8 = _swiftEmptyArrayStorage;
    *&aBlock = _swiftEmptyArrayStorage;
    v1 = v2;
    v13 = 0;
    v5 = _swiftEmptyArrayStorage;
    while (v12 != v13)
    {
      if (v13 >= v12)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_24;
      }

      if (sub_10036AE04(v13++))
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v5 = aBlock;
        v13 = v14;
      }
    }

    v16 = [v1 traitCollection];
    sub_10036961C(v16);

    swift_getKeyPath();
    v44 = v2;
    v45 = v5 >> 62;
    v49 = v6;
    if (v5 >> 62)
    {
      goto LABEL_26;
    }

    v17 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_14;
    }

LABEL_27:

    goto LABEL_28;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  v17 = _CocoaArrayWrapper.endIndex.getter();
  if (!v17)
  {
    goto LABEL_27;
  }

LABEL_14:
  v59 = v8;
  sub_100144490(0, v17 & ~(v17 >> 63), 0);
  if (v17 < 0)
  {
LABEL_48:
    __break(1u);
    return;
  }

  v18 = 0;
  v19 = v59;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v20 = *(v5 + 8 * v18 + 32);
    }

    v58 = v20;
    v21 = v20;
    swift_getAtKeyPath();

    v59 = v19;
    v23 = *(v19 + 2);
    v22 = *(v19 + 3);
    if (v23 >= v22 >> 1)
    {
      sub_100144490((v22 > 1), v23 + 1, 1);
      v19 = v59;
    }

    ++v18;
    *(v19 + 2) = v23 + 1;
    sub_100005A38(&aBlock, &v19[5 * v23 + 4]);
  }

  while (v17 != v18);

  v6 = v49;
LABEL_28:
  v24 = v50;
  VerticalFlexStackLayout.init(metrics:children:)();
  v25 = objc_opt_self();
  v26 = v51;
  v27 = v48;
  (*(v51 + 16))(v48, v24, v6);
  v28 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v29 = (v47 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v26 + 32))(v30 + v28, v27, v6);
  *(v30 + v29) = v1;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_10036E21C;
  *(v31 + 24) = v30;
  v56 = sub_10006F094;
  v57 = v31;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v54 = sub_1000489A8;
  v55 = &unk_1008BF690;
  v32 = _Block_copy(&aBlock);
  v33 = v1;

  [v25 performWithoutAnimation:v32];
  _Block_release(v32);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (!v45)
  {
    v34 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v34)
    {
      goto LABEL_41;
    }

    goto LABEL_33;
  }

  v34 = _CocoaArrayWrapper.endIndex.getter();
  if (v34)
  {
LABEL_33:
    v35 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v35 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v36 = *(v5 + 8 * v35 + 32);
      }

      v37 = v36;
      v38 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      sub_10036C718(v36, v35);

      ++v35;
      if (v38 == v34)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_41:

  v39 = &v33[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_impressionsUpdateBlock];
  swift_beginAccess();
  v40 = *v39;
  if (*v39)
  {

    v40(v41);
    sub_10001F63C(v40);
  }

  v42 = v44[v46];
  v44[v46] = 0;
  sub_100369D90(v42);
  (*(v51 + 8))(v50, v49);
}

void sub_10036A7C8(int a1, id a2)
{
  [a2 bounds];
  v3 = [a2 traitCollection];
  VerticalFlexStackLayout.place(at:with:)();
}

uint64_t sub_10036A868()
{
  v1 = [v0 traitCollection];
  v2 = [(NSString *)v1 preferredContentSizeCategory];
  v3 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v4 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  result = static UIContentSizeCategory.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (static UIContentSizeCategory.>= infix(_:_:)())
  {
    v6 = static UIContentSizeCategory.<= infix(_:_:)();

    if (v6)
    {
      v7 = v3;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v8 = [(NSString *)v1 preferredContentSizeCategory];
  v9 = UIContentSizeCategoryAccessibilityMedium;
  v10 = UIContentSizeCategoryAccessibilityExtraLarge;
  result = static UIContentSizeCategory.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (static UIContentSizeCategory.>= infix(_:_:)())
  {
    v11 = static UIContentSizeCategory.<= infix(_:_:)();

    if (v11)
    {
      v7 = UIContentSizeCategoryAccessibilityLarge;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {

    v7 = 0;
    v1 = v9;
  }

LABEL_12:

  [v0 setMaximumContentSizeCategory:v7];
  v12 = v0[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid];
  v0[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid] = 1;
  sub_100369D90(v12);

  return [v0 setNeedsLayout];
}

uint64_t sub_10036AAA4()
{
  if (!swift_weakLoadStrong())
  {
    goto LABEL_15;
  }

  if (!swift_weakLoadStrong())
  {
LABEL_14:

LABEL_15:
    *(v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_lockups) = _swiftEmptyArrayStorage;

    *(v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_prefetchedLockupImages) = 0;

    swift_weakAssign();
    v13 = *(v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid);
    *(v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid) = 1;
    return sub_100369D90(v13);
  }

  v1 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_listCells;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = sub_100007000(v14))
  {
    v9 = i;
LABEL_11:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(v2 + 56) + ((v9 << 9) | (8 * v10)));
    v14[3] = type metadata accessor for TodayCardSmallLockupCollectionViewCell();
    v14[0] = v11;
    v12 = v11;
    tryToCancelArtworkFetch(into:on:asPartOf:deprioritizingFetches:)();
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      goto LABEL_14;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10036AC74(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_listCells;
  result = swift_beginAccess();
  v6 = *(*(v1 + v4) + 16);
  if (v6 > a1)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      if (swift_weakLoadStrong())
      {
        do
        {
          swift_beginAccess();
          v7 = sub_1003D7340(a1);
          if (v8)
          {
            v9 = v7;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v11 = *(v2 + v4);
            v16 = v11;
            *(v2 + v4) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_100054F8C();
              v11 = v16;
            }

            v12 = v9;
            v13 = *(*(v11 + 56) + 8 * v9);
            sub_100056290(v12, v11);
            *(v2 + v4) = v11;
            swift_endAccess();
            v15[3] = type metadata accessor for TodayCardSmallLockupCollectionViewCell();
            v15[0] = v13;
            v14 = v13;
            tryToCancelArtworkFetch(into:on:asPartOf:deprioritizingFetches:)();
            sub_100007000(v15);
            [v14 removeFromSuperview];
          }

          else
          {
            swift_endAccess();
          }

          ++a1;
        }

        while (v6 != a1);
      }
    }
  }

  return result;
}

uint64_t sub_10036AE04(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10002849C(&unk_100970150);
  __chkstk_darwin(v4 - 8);
  v6 = &v47 - v5;
  v7 = sub_10002849C(&unk_100973AD0);
  __chkstk_darwin(v7 - 8);
  v9 = &v47 - v8;
  v10 = sub_10002849C(&unk_100970160);
  __chkstk_darwin(v10 - 8);
  v12 = &v47 - v11;
  v13 = sub_10002849C(&qword_100973AE0);
  __chkstk_darwin(v13 - 8);
  v15 = &v47 - v14;
  v16 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v16 - 8);
  v18 = &v47 - v17;
  v19 = type metadata accessor for ComponentLayoutOptions();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_lockups;
  v24 = *&v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_lockups];
  if (!(v24 >> 62))
  {
    result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result > a1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v52 = v20;
  v46 = v22;
  result = _CocoaArrayWrapper.endIndex.getter();
  v22 = v46;
  v20 = v52;
  if (result <= a1)
  {
    return 0;
  }

LABEL_3:
  v51 = v12;
  v26 = *&v2[v23];
  v53 = v22;
  if ((v26 & 0xC000000000000001) != 0)
  {

    v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_7:
    v50 = v9;
    v27 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_listCells;
    swift_beginAccess();
    v28 = *&v2[v27];
    if (*(v28 + 16) && (v29 = sub_1003D7340(a1), (v30 & 1) != 0))
    {
      v31 = *(*(v28 + 56) + 8 * v29);
    }

    else
    {
      v32 = sub_10036DEE0();
      [v32 setAutoresizingMask:2];
      [v2 addSubview:v32];
      swift_beginAccess();
      v31 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = *&v2[v27];
      *&v2[v27] = 0x8000000000000000;
      sub_10005250C(v31, a1, isUniquelyReferenced_nonNull_native);
      *&v2[v27] = v54;
      swift_endAccess();
    }

    v34 = [v31 contentView];
    [v34 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v49 = Strong;
      sub_10002849C(&qword_10097DB08);
      v36 = v6;
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1007B1890;
      static ComponentLayoutOptions.separatorHidden.getter();
      static ComponentLayoutOptions.fixedHeightContainer.getter();
      v55 = v37;
      sub_10036E170(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions);
      sub_10002849C(&qword_10097DB18);
      sub_10036E1B8();
      dispatch thunk of SetAlgebra.init<A>(_:)();

      v38 = *&v31[OBJC_IVAR____TtC8AppStore38TodayCardSmallLockupCollectionViewCell_lockupView];
      v39 = sub_10002849C(&unk_100973240);
      (*(*(v39 - 8) + 56))(v18, 1, 1, v39);
      v40 = type metadata accessor for OfferStyle();
      (*(*(v40 - 8) + 56))(v15, 1, 1, v40);
      v41 = type metadata accessor for OfferEnvironment();
      v42 = v51;
      (*(*(v41 - 8) + 56))(v51, 1, 1, v41);
      v43 = type metadata accessor for OfferTint();
      v44 = v50;
      (*(*(v43 - 8) + 56))(v50, 1, 1, v43);
      v45 = sub_10002849C(&unk_1009701A0);
      (*(*(v45 - 8) + 56))(v36, 1, 1, v45);
      v48 = v19;
      sub_1004F3190(v52, v38, v18, v49, 0, 0, v15, v42, v44, v36);
      v38[OBJC_IVAR____TtC8AppStore19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] = 0;
      sub_100776DD8();
      [v38 setNeedsLayout];
      sub_100776DD8();
      sub_10002B894(v36, &unk_100970150);
      sub_10002B894(v44, &unk_100973AD0);
      sub_10002B894(v42, &unk_100970160);
      sub_10002B894(v15, &qword_100973AE0);
      sub_10002B894(v18, &unk_100973230);
      [v31 setNeedsLayout];

      (*(v20 + 8))(v53, v48);
    }

    else
    {
    }

    return v31;
  }

  if (a1 < 0)
  {
    __break(1u);
  }

  else if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v52 = *(v26 + 8 * a1 + 32);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_10036B5A0()
{
  if ((*(v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isExpanded) & 1) == 0 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0 && (Strong, (v2 = [v0 window]) != 0))
  {
    v3 = v2;
    [v0 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = v3;
    [v12 convertRect:v0 fromCoordinateSpace:{v5, v7, v9, v11}];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [v12 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v33.origin.x = v22;
    v33.origin.y = v24;
    v33.size.width = v26;
    v33.size.height = v28;
    v35.origin.x = v14;
    v35.origin.y = v16;
    v35.size.width = v18;
    v35.size.height = v20;
    v34 = CGRectIntersection(v33, v35);
    x = v34.origin.x;
    y = v34.origin.y;
    width = v34.size.width;
    height = v34.size.height;
    if (!CGRectIsEmpty(v34))
    {
      [v12 convertRect:v0 toCoordinateSpace:{x, y, width, height}];
    }
  }

  else
  {
    [v0 bounds];
  }
}

void sub_10036B760(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong _removeScrollViewScrollObserver:v1];
  }

  swift_unknownObjectWeakAssign();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    [v4 _addScrollViewScrollObserver:v1];
  }
}

void sub_10036B800()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for TodayListCardLockupContainer();
  objc_msgSendSuper2(&v12, "didMoveToSuperview");
  v1 = [v0 superview];
  if (v1)
  {
    v2 = v1;
    while (1)
    {
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (v3)
      {
        break;
      }

      v4 = [v2 superview];

      v2 = v4;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    v7 = v3;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      sub_100005744(0, &qword_100978E50);
      v10 = v2;
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {

        return;
      }
    }

    v6 = v7;
  }

  else
  {
LABEL_5:
    v5 = swift_unknownObjectWeakLoadStrong();
    if (!v5)
    {
      return;
    }

    v6 = 0;
  }

  sub_10036B760(v6);
}

unint64_t sub_10036B9E8(unint64_t result, char a2)
{
  v4 = result;
  v5 = v2 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_indexForHighlightedLockup;
  if ((*(v2 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_indexForHighlightedLockup + 8) & 1) == 0)
  {
    v6 = *v5;
    v7 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_listCells;
    result = swift_beginAccess();
    v8 = *(v2 + v7);
    if (*(v8 + 16))
    {
      result = sub_1003D7340(v6);
      if (v9)
      {
        result = [*(*(v8 + 56) + 8 * result) setHighlighted:0];
      }
    }
  }

  *v5 = v4;
  *(v5 + 8) = a2 & 1;
  if ((a2 & 1) == 0)
  {
    v10 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_listCells;
    result = swift_beginAccess();
    v11 = *(v2 + v10);
    if (*(v11 + 16))
    {
      result = sub_1003D7340(v4);
      if (v12)
      {
        return [*(*(v11 + 56) + 8 * result) setHighlighted:1];
      }
    }
  }

  return result;
}

void sub_10036BAF4(uint64_t a1, double a2, double a3)
{
  v7 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_listCells;
  swift_beginAccess();
  v8 = *(v3 + v7);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  while (v11)
  {
    v14 = v13;
LABEL_10:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = *(*(v8 + 56) + ((v14 << 9) | (8 * v15)));
    [v16 convertPoint:v3 fromCoordinateSpace:{a2, a3}];
    v17 = [v16 pointInside:a1 withEvent:?];

    if (v17)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {
      goto LABEL_11;
    }

    v11 = *(v8 + 64 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_10036BC5C(unint64_t a1)
{
  v2 = v1;
  v4 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(v2 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_lockups);
  if ((v7 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {

      goto LABEL_5;
    }

    __break(1u);
    return;
  }

  specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_5:
  v8 = Lockup.clickAction.getter();
  if (v8)
  {
    v9 = v8;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = sub_10002849C(&unk_100974490);
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(v6, 1, v12) == 1)
      {

        sub_10002B894(v6, &unk_100972A00);
      }

      else
      {
        sub_1005F9AF4(v9, 1, v11, v6);

        (*(v13 + 8))(v6, v12);
      }

      return;
    }
  }
}

void sub_10036BEA4(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isExpanded) == 1)
  {
    v5 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_currentTouch;
    v6 = *(v2 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_currentTouch);
    if (!v6 || [v6 phase] == 3 || (v7 = *(v2 + v5)) != 0 && objc_msgSend(v7, "phase") == 4)
    {
      v8 = sub_10066D4C4(a1);
      if (v8)
      {
        v9 = v8;
        [v8 locationInView:v2];
        sub_10036BAF4(a2, v10, v11);
        sub_10036B9E8(v13, v12 & 1);
        v14 = *(v2 + v5);
        *(v2 + v5) = v9;

        sub_100005744(0, &qword_100981660);
        sub_10008DB40();
        v15.super.isa = Set._bridgeToObjectiveC()().super.isa;
        v17.super_class = type metadata accessor for TodayListCardLockupContainer();
        objc_msgSendSuper2(&v17, "touchesBegan:withEvent:", v15.super.isa, a2, v16.receiver, v16.super_class, v2, v17.super_class, v18.receiver, v18.super_class, v19.receiver, v19.super_class);
      }

      else
      {
        sub_100005744(0, &qword_100981660);
        sub_10008DB40();
        v15.super.isa = Set._bridgeToObjectiveC()().super.isa;
        v18.super_class = type metadata accessor for TodayListCardLockupContainer();
        objc_msgSendSuper2(&v18, "touchesBegan:withEvent:", v15.super.isa, a2, v16.receiver, v16.super_class, v17.receiver, v17.super_class, v2, v18.super_class, v19.receiver, v19.super_class);
      }
    }

    else
    {
      sub_100005744(0, &qword_100981660);
      sub_10008DB40();
      v15.super.isa = Set._bridgeToObjectiveC()().super.isa;
      v16.super_class = type metadata accessor for TodayListCardLockupContainer();
      objc_msgSendSuper2(&v16, "touchesBegan:withEvent:", v15.super.isa, a2, v2, v16.super_class, v17.receiver, v17.super_class, v18.receiver, v18.super_class, v19.receiver, v19.super_class);
    }
  }

  else
  {
    sub_100005744(0, &qword_100981660);
    sub_10008DB40();
    v15.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v19.super_class = type metadata accessor for TodayListCardLockupContainer();
    objc_msgSendSuper2(&v19, "touchesBegan:withEvent:", v15.super.isa, a2, v16.receiver, v16.super_class, v17.receiver, v17.super_class, v18.receiver, v18.super_class, v2, v19.super_class);
  }
}

void sub_10036C0BC(uint64_t a1, uint64_t a2)
{
  if (v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isExpanded] != 1)
  {
    sub_100005744(0, &qword_100981660);
    sub_10008DB40();
    v15.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v18.receiver = v2;
    v18.super_class = type metadata accessor for TodayListCardLockupContainer();
    objc_msgSendSuper2(&v18, "touchesEnded:withEvent:", v15.super.isa, a2);
    goto LABEL_15;
  }

  v5 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_currentTouch;
  v6 = *&v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_currentTouch];
  if (!v6)
  {
LABEL_14:
    sub_100005744(0, &qword_100981660);
    sub_10008DB40();
    v15.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v17.receiver = v2;
    v17.super_class = type metadata accessor for TodayListCardLockupContainer();
    objc_msgSendSuper2(&v17, "touchesEnded:withEvent:", v15.super.isa, a2);
    goto LABEL_15;
  }

  v7 = v6;
  if ((sub_100296044(v7, a1) & 1) == 0)
  {

    goto LABEL_14;
  }

  v8 = *&v2[v5];
  *&v2[v5] = 0;

  v9 = &v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_indexForHighlightedLockup];
  if ((v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_indexForHighlightedLockup + 8] & 1) == 0)
  {
    v10 = *v9;
    if (v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isDragging])
    {
LABEL_8:
      v11 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_listCells;
      swift_beginAccess();
      v12 = *&v2[v11];
      if (*(v12 + 16))
      {
        v13 = sub_1003D7340(v10);
        if (v14)
        {
          [*(*(v12 + 56) + 8 * v13) setHighlighted:0];
        }
      }

      goto LABEL_11;
    }

    sub_10036BC5C(*v9);
    if ((v9[8] & 1) == 0)
    {
      v10 = *v9;
      goto LABEL_8;
    }
  }

LABEL_11:
  *v9 = 0;
  v9[8] = 1;

  sub_100005744(0, &qword_100981660);
  sub_10008DB40();
  v15.super.isa = Set._bridgeToObjectiveC()().super.isa;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for TodayListCardLockupContainer();
  objc_msgSendSuper2(&v16, "touchesEnded:withEvent:", v15.super.isa, a2);
LABEL_15:
}

uint64_t sub_10036C2F4(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_100005744(0, &qword_100981660);
  sub_10008DB40();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);
}

void sub_10036C3A4(uint64_t a1, uint64_t a2)
{
  if (v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isExpanded] == 1)
  {
    v4 = *&v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_currentTouch];
    *&v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_currentTouch] = 0;

    v5 = &v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_indexForHighlightedLockup];
    if ((v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_indexForHighlightedLockup + 8] & 1) == 0)
    {
      v6 = *v5;
      v7 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_listCells;
      swift_beginAccess();
      v8 = *&v2[v7];
      if (*(v8 + 16))
      {
        v9 = sub_1003D7340(v6);
        if (v10)
        {
          [*(*(v8 + 56) + 8 * v9) setHighlighted:0];
        }
      }
    }

    *v5 = 0;
    v5[8] = 1;
    sub_100005744(0, &qword_100981660);
    sub_10008DB40();
    v11.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v12.receiver = v2;
    v12.super_class = type metadata accessor for TodayListCardLockupContainer();
    objc_msgSendSuper2(&v12, "touchesCancelled:withEvent:", v11.super.isa, a2);
  }

  else
  {
    sub_100005744(0, &qword_100981660);
    sub_10008DB40();
    v11.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v13.receiver = v2;
    v13.super_class = type metadata accessor for TodayListCardLockupContainer();
    objc_msgSendSuper2(&v13, "touchesCancelled:withEvent:", v11.super.isa, a2);
  }
}

void sub_10036C540(uint64_t a1, int a2, id a3)
{
  v5 = [a3 preferredContentSizeCategory];
  v6 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v7 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  if ((static UIContentSizeCategory.<= infix(_:_:)() & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (static UIContentSizeCategory.>= infix(_:_:)())
  {
    v8 = static UIContentSizeCategory.<= infix(_:_:)();

    if (v8)
    {
LABEL_10:
      v12 = v6;
      sub_100047650(a1, *(a1 + 24));
      UIMutableTraits.preferredContentSizeCategory.setter();
      return;
    }
  }

  else
  {
  }

  v9 = [a3 preferredContentSizeCategory];
  v13 = UIContentSizeCategoryAccessibilityMedium;
  v10 = UIContentSizeCategoryAccessibilityExtraLarge;
  if ((static UIContentSizeCategory.<= infix(_:_:)() & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return;
  }

  if (static UIContentSizeCategory.>= infix(_:_:)())
  {
    v11 = static UIContentSizeCategory.<= infix(_:_:)();

    if ((v11 & 1) == 0)
    {
      return;
    }

    v6 = UIContentSizeCategoryAccessibilityLarge;
    goto LABEL_10;
  }
}

uint64_t sub_10036C718(char *a1, unint64_t a2)
{
  v5 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for Artwork.Crop();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(v2 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_lockups);
    v25 = result;
    if ((v11 & 0xC000000000000001) == 0)
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
      {
        v12 = *(v11 + 8 * a2 + 32);

LABEL_7:
        v13 = *(v2 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_prefetchedLockupImages);
        if (v13)
        {
          if (*(v13 + 16))
          {
            v14 = sub_1003D7340(a2);
            if (v15)
            {
              v16 = *(*(v13 + 56) + 8 * v14);
              if (dispatch thunk of Lockup.artwork.getter())
              {
                Artwork.crop.getter();
                v17 = Artwork.Crop.preferredContentMode.getter();
                v18 = v9;
                v19 = v17;
                (*(v7 + 8))(v18, v6);
                v20 = *&a1[OBJC_IVAR____TtC8AppStore38TodayCardSmallLockupCollectionViewCell_lockupView];
                swift_beginAccess();
                Artwork.config(_:mode:prefersLayeredImage:)();
                v21 = *(v20 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
                Artwork.style.getter();
                ArtworkView.style.setter();
                [v21 setContentMode:{Artwork.contentMode.getter(), v25}];
                ArtworkLoaderConfig.size.getter();
                ArtworkView.imageSize.setter();
                if (!Artwork.backgroundColor.getter())
                {
                  sub_100005744(0, &qword_100970180);
                  static UIColor.placeholderBackground.getter();
                }

                ArtworkView.backgroundColor.setter();
                [v21 setContentMode:v19];
                v22 = v16;
                v29.value.super.isa = v16;
                v29.is_nil = 0;
                ArtworkView.setImage(image:animated:)(v29, v23);
              }
            }
          }
        }

        v27[3] = type metadata accessor for Lockup();
        v27[4] = sub_10036E170(&qword_100974480, &type metadata accessor for Lockup);
        v27[0] = v12;
        v26[3] = type metadata accessor for TodayCardSmallLockupCollectionViewCell();
        v26[0] = a1;

        v24 = a1;
        tryToFetch(artworkFor:into:on:asPartOf:)();

        sub_100007000(v26);
        return sub_10002B894(v27, &unk_10097DBE0);
      }

      __break(1u);
      return result;
    }

    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_7;
  }
}

id sub_10036CB48(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_lockups] = a1;

  swift_weakAssign();
  swift_weakAssign();
  *&v1[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_limit] = 0;
  v2 = v1[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid];
  v1[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid] = 1;
  sub_100369D90(v2);

  return [v1 setNeedsLayout];
}

id sub_10036CBF8(char *a1)
{
  v2 = v1;
  v4 = [a1 maximumContentSizeCategory];
  [v2 setMaximumContentSizeCategory:v4];

  *&v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_lockups] = *&a1[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_lockups];

  swift_weakLoadStrong();
  swift_weakAssign();

  swift_weakLoadStrong();
  swift_weakAssign();

  *&v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_limit] = 0;
  v5 = v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid];
  v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid] = 1;
  sub_100369D90(v5);
  v6 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_listCells;
  swift_beginAccess();
  v7 = *&a1[v6];
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v38 = &_swiftEmptyDictionarySingleton;
  while (1)
  {
    v13 = v12;
    if (!v10)
    {
      break;
    }

LABEL_8:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = (v12 << 9) | (8 * v14);
    v16 = *(*(v7 + 48) + v15);
    v17 = *(*(v7 + 56) + v15);
    v18 = *(*&v17[OBJC_IVAR____TtC8AppStore38TodayCardSmallLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
    v19 = v17;
    v20 = v18;
    v21 = ArtworkView.image.getter();

    if (v21)
    {
      v37 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v38;
      v23 = sub_1003D7340(v16);
      v25 = v38[2];
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      if (v38[3] >= v28)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v40 = v23;
          v35 = v24;
          sub_100054834();
          v24 = v35;
          v23 = v40;
        }
      }

      else
      {
        v39 = v24;
        sub_10004E848(v28, isUniquelyReferenced_nonNull_native);
        v23 = sub_1003D7340(v16);
        v30 = v29 & 1;
        v24 = v39;
        if ((v39 & 1) != v30)
        {
          goto LABEL_26;
        }
      }

      v38 = v41;
      if (v24)
      {
        v31 = v41[7];
        v32 = *(v31 + 8 * v23);
        *(v31 + 8 * v23) = v37;
      }

      else
      {
        v41[(v23 >> 6) + 8] |= 1 << v23;
        *(v41[6] + 8 * v23) = v16;
        *(v41[7] + 8 * v23) = v37;

        v33 = v41[2];
        v27 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v27)
        {
          goto LABEL_25;
        }

        v41[2] = v34;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v12 >= v11)
    {
      break;
    }

    v10 = *(v7 + 64 + 8 * v12);
    ++v13;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  if (v38[2])
  {
    *&v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_prefetchedLockupImages] = v38;
  }

  return [v2 setNeedsLayout];
}

void sub_10036CF80()
{
  v1 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v1 - 8);
  v41 = &v32 - v2;
  v3 = type metadata accessor for ImpressionMetrics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v8 = *&v7[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_limit];
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_34;
      }

      v40 = v3;
      v0 = _swiftEmptyArrayStorage;
      v42 = _swiftEmptyArrayStorage;
      v7 = v7;
      v9 = 0;
      while (1)
      {
        if (v8 == v9)
        {

          if (v0 >> 62)
          {
            goto LABEL_35;
          }

          v12 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v12)
          {
            goto LABEL_14;
          }

          goto LABEL_36;
        }

        if (v9 >= v8)
        {
          break;
        }

        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_30;
        }

        if (sub_10036AE04(v9++))
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v0 = v42;
          v9 = v10;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        v12 = _CocoaArrayWrapper.endIndex.getter();
        if (!v12)
        {
          break;
        }

LABEL_14:
        v36 = v0;
        v37 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_lockups;
        v38 = v0 & 0xFFFFFFFFFFFFFF8;
        v39 = v0 & 0xC000000000000001;
        v13 = (v4 + 48);
        v32 = (v4 + 8);
        v33 = (v4 + 32);
        v14 = 4;
        while (1)
        {
          v15 = v14 - 4;
          if (v39)
          {
            v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v15 >= *(v38 + 16))
            {
              goto LABEL_32;
            }

            v16 = *(v0 + 8 * v14);
          }

          v4 = v16;
          v17 = v14 - 3;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          v18 = *&v7[v37];
          if ((v18 & 0xC000000000000001) != 0)
          {

            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v15 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_33;
            }
          }

          v19 = v41;
          Lockup.impressionMetrics.getter();
          v20 = v40;
          if ((*v13)(v19, 1, v40) == 1)
          {

            sub_10002B894(v19, &qword_100973D30);
          }

          else
          {
            v21 = v19;
            v22 = v35;
            (*v33)(v35, v21, v20);
            [v4 frame];
            v24 = v23;
            v26 = v25;
            v28 = v27;
            v30 = v29;
            v31 = [v7 superview];
            [v7 convertRect:v31 toView:{v24, v26, v28, v30}];

            ImpressionsCalculator.addElement(_:at:)();

            (*v32)(v22, v20);
          }

          ++v14;
          v0 = v36;
          if (v17 == v12)
          {
            goto LABEL_36;
          }
        }
      }

LABEL_36:
    }

    else
    {
    }
  }
}

id sub_10036D40C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayListCardLockupContainer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10036D56C()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_10036D5CC(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100078E88;
}

uint64_t sub_10036D664()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1);
  return v2;
}

uint64_t sub_10036D6C0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6);
}

void (*sub_10036D780())()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  return sub_10036D828;
}

uint64_t sub_10036D830(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_22:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_23;
    }
  }

  v4 = 0;
  do
  {
    v5 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v4 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v5 >= *(v2 + 16))
        {
          goto LABEL_21;
        }

        v4 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      if (Lockup.icon.getter())
      {
        break;
      }

      ++v5;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    if (qword_10096EFE8 != -1)
    {
      swift_once();
    }

    Artwork.config(_:mode:prefersLayeredImage:)();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v4 != v3);
LABEL_23:
  ArtworkLoader.prefetchArtwork(using:)(_swiftEmptyArrayStorage);
}

double sub_10036DA1C(void *a1)
{
  v1 = [a1 preferredContentSizeCategory];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    goto LABEL_15;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
LABEL_6:

    return 20.0;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
  {
LABEL_15:

    return 20.0;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    goto LABEL_6;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {
LABEL_14:

    return 0.0;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_18;
  }

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {
    goto LABEL_14;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
    goto LABEL_18;
  }

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
  {

    return 8.0;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {

    return 8.0;
  }

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;
  if (v30 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v32 == v33)
  {
    goto LABEL_14;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v34)
  {
LABEL_18:

    return 0.0;
  }

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;
  if (v35 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v37 == v38)
  {
    goto LABEL_14;
  }

  v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 8.0;
  if (v39)
  {
    return 0.0;
  }

  return result;
}

void sub_10036DD90()
{
  swift_weakInit();
  swift_weakInit();
  *(v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isExpanded) = 0;
  swift_weakInit();
  v1 = (v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_impressionsUpdateBlock);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_lockups) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_limit) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_lastContentWidth) = 0;
  v2 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_listCells;
  *(v0 + v2) = sub_10039910C(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_prefetchedLockupImages) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_currentTouch) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isDragging) = 0;
  v3 = v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_indexForHighlightedLockup;
  *v3 = 0;
  *(v3 + 8) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

char *sub_10036DEE0()
{
  v0 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v0 - 8);
  v2 = &v20 - v1;
  v3 = [objc_allocWithZone(type metadata accessor for TodayCardSmallLockupCollectionViewCell()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v7 = *&v3[OBJC_IVAR____TtC8AppStore38TodayCardSmallLockupCollectionViewCell_lockupView];
  [v7 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v8 = *&v7[OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel];
  v9 = qword_10096DD10;
  v10 = v7;
  v11 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for FontUseCase();
  v13 = sub_1000056A8(v12, qword_1009D06C8);
  v14 = *(v12 - 8);
  v15 = *(v14 + 16);
  v15(v2, v13, v12);
  v16 = *(v14 + 56);
  v16(v2, 0, 1, v12);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v17 = *&v10[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel];
  if (qword_10096DD38 != -1)
  {
    swift_once();
  }

  v18 = sub_1000056A8(v12, qword_1009D0740);
  v15(v2, v18, v12);
  v16(v2, 0, 1, v12);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  return v3;
}

uint64_t sub_10036E170(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10036E1B8()
{
  result = qword_10097DB20;
  if (!qword_10097DB20)
  {
    sub_10002D1A8(&qword_10097DB18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DB20);
  }

  return result;
}

void sub_10036E21C()
{
  v1 = *(type metadata accessor for VerticalFlexStackLayout() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10036A7C8(v0 + v2, v3);
}

void sub_10036E2A8()
{
  v1 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_listCells;
  swift_beginAccess();
  if (*(*(v0 + v1) + 16) < *(v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_limit))
  {
    sub_10036B5A0();
    if (CGRectGetHeight(v2) > COERCE_DOUBLE(1))
    {
      sub_10036A17C();
    }
  }
}

uint64_t sub_10036E328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC8AppStore24OnboardingViewController_navController;
  *&v4[v9] = [objc_allocWithZone(UINavigationController) init];
  *&v4[OBJC_IVAR____TtC8AppStore24OnboardingViewController_presenter] = a1;
  v10 = &v4[OBJC_IVAR____TtC8AppStore24OnboardingViewController_completionCallback];
  *v10 = a2;
  *(v10 + 1) = a3;
  v16.receiver = v4;
  v16.super_class = ObjectType;

  v11 = objc_msgSendSuper2(&v16, "initWithNibName:bundle:", 0, 0);
  if (*(a1 + 16) > 1u)
  {
    if (*(a1 + 16) != 2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_6;
    }
  }

  v12 = 2;
LABEL_6:
  v13 = v11;
  [v13 setModalPresentationStyle:v12];
  if (*(a1 + 16) <= 1u)
  {
    if (*(a1 + 16))
    {
      v14 = 0;
LABEL_11:
      [*&v13[OBJC_IVAR____TtC8AppStore24OnboardingViewController_navController] setModalPresentationStyle:v14];
      [v13 setModalInPresentation:1];

      return v13;
    }

LABEL_10:
    v14 = 2;
    goto LABEL_11;
  }

  if (*(a1 + 16) == 2)
  {
    goto LABEL_10;
  }

LABEL_12:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_10036E570()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "viewDidLoad");
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = result;
  v3 = [objc_opt_self() systemBlueColor];
  [v2 setTintColor:v3];

  v4 = *&v0[OBJC_IVAR____TtC8AppStore24OnboardingViewController_navController];
  [v4 setNavigationBarHidden:1 animated:0];
  [v0 addChildViewController:v4];
  result = [v4 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  [result bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v5 setFrame:{v8, v10, v12, v14}];
  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = result;
  result = [v4 view];
  if (result)
  {
    v16 = result;
    [v15 addSubview:result];

    [v4 didMoveToParentViewController:v0];
    return sub_10036E764();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_10036E764()
{
  v1 = v0;
  v2 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  v3 = *&v0[OBJC_IVAR____TtC8AppStore24OnboardingViewController_presenter];
  swift_beginAccess();
  v4 = *(v3 + 32);
  if (*(v4 + 16))
  {
    sub_10002C0AC(v4 + 32, v20);
    v5 = sub_10036EF54(v20);
    if (v5)
    {
      v6 = v5;
      if (qword_10096D138 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for OSLogger();
      sub_1000056A8(v7, qword_1009CE260);
      sub_10002849C(&unk_100972A10);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v8._countAndFlagsBits = 0x69746E6573657250;
      v8._object = 0xEB0000000020676ELL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v8);
      v19 = sub_100005744(0, &qword_1009711C0);
      v18[0] = v6;
      v9 = v6;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002B894(v18, &unk_1009711D0);
      v10._countAndFlagsBits = 0x65747320726F6620;
      v10._object = 0xEA00000000002070;
      LogMessage.StringInterpolation.appendLiteral(_:)(v10);
      v11 = v21;
      v12 = sub_10002A400(v20, v21);
      v19 = v11;
      v13 = sub_1000056E0(v18);
      (*(*(v11 - 8) + 16))(v13, v12, v11);
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002B894(v18, &unk_1009711D0);
      v14._countAndFlagsBits = 0;
      v14._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v14);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      [v9 preferredContentSize];
      [v1 setPreferredContentSize:?];
      [*&v1[OBJC_IVAR____TtC8AppStore24OnboardingViewController_navController] showViewController:v9 sender:v1];
    }

    else
    {
      v17 = sub_1004D32CC(v20, 0xD00000000000002ALL, 0x800000010080EDD0);
      sub_10036E764(v17);
    }

    return sub_100007000(v20);
  }

  else
  {
    if (qword_10096D138 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for OSLogger();
    sub_1000056A8(v15, qword_1009CE260);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    (*&v0[OBJC_IVAR____TtC8AppStore24OnboardingViewController_completionCallback])(v0);
    if (qword_10096DA08 != -1)
    {
      swift_once();
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_10044089C();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10036ECA8(char a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "viewWillAppear:", a1 & 1);
  v4 = *&v2[OBJC_IVAR____TtC8AppStore24OnboardingViewController_presenter];
  swift_beginAccess();
  v5 = *(v4 + 32);
  if (*(v5 + 16))
  {
    sub_10002C0AC(v5 + 32, v8);
    return sub_10002B894(v8, &qword_1009816A8);
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_10002B894(v8, &qword_1009816A8);
    if (qword_10096D138 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for OSLogger();
    sub_1000056A8(v7, qword_1009CE260);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    (*&v2[OBJC_IVAR____TtC8AppStore24OnboardingViewController_completionCallback])(v2);
    if (qword_10096DA08 != -1)
    {
      swift_once();
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_10044089C();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10036EF54(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WelcomeOnboardingStep();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  sub_10002C0AC(a1, v41);
  sub_10002849C(&unk_10097A950);
  if (swift_dynamicCast())
  {
    v17 = *(v5 + 16);
    v17(v13, v16, v4);
    if (*(*&v2[OBJC_IVAR____TtC8AppStore24OnboardingViewController_presenter] + 16) == 2)
    {
      v18 = sub_10036F524();
      v19 = *(v5 + 8);
      v19(v13, v4);
      v19(v16, v4);
      goto LABEL_8;
    }

    v37 = v7;
    v38 = v2;
    v20 = *(v5 + 8);
    v20(v13, v4);
    (*(v5 + 32))(v10, v16, v4);
    v21 = v37;
    v17(v37, v10, v4);
    v22 = ASKBagContract.isArcadeSupported.getter();
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    objc_allocWithZone(type metadata accessor for OnboardingWelcomeViewController());

    v18 = sub_100137718(v21, v22 & 1, sub_100370368, v23);

    v20(v10, v4);
    v2 = v38;
LABEL_7:

    goto LABEL_8;
  }

  type metadata accessor for AdPrivacyOnboardingStep();
  if (swift_dynamicCast())
  {
    v18 = sub_10036F8D4();
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    sub_1003702DC(aBlock);
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = objc_allocWithZone(type metadata accessor for OnboardingLocationPrivacyViewController());
    v18 = sub_1005FA8E8(sub_100370330, v30, sub_100370360, v31);
  }

  else
  {
    type metadata accessor for JourneyDrivenOnboardingStep();
    if (!swift_dynamicCast())
    {
      goto LABEL_20;
    }

    v33 = v39;
    v18 = *&v39[OBJC_IVAR____TtC8AppStore27JourneyDrivenOnboardingStep_engagementViewController];
    if (!v18)
    {

      sub_100007000(v41);
      return v18;
    }

    v34 = [v18 startEngagement];
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1003702D4;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100182E7C;
    aBlock[3] = &unk_1008BF6E0;
    v36 = _Block_copy(aBlock);

    [v34 addFinishBlock:v36];
    _Block_release(v36);
  }

LABEL_8:
  sub_100007000(v41);
  v24 = [v18 view];
  if (v24)
  {
    v25 = v24;
    v26 = [v2 view];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 tintColor];

      [v25 setTintColor:v28];
      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_10036F524()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  WelcomeOnboardingStep.privacyIdentifiers.getter();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = [v6 linkWithBundleIdentifiers:isa];

  if (v8)
  {
    v9 = v8;
    [v9 setModalPresentationStyle:{objc_msgSend(v1, "modalPresentationStyle")}];

    v10 = v9;
    static Locale.storefront.getter();
    Locale.identifier.getter();
    (*(v3 + 8))(v5, v2);
    v11 = String._bridgeToObjectiveC()();

    [v10 setDisplayLanguage:v11];
  }

  v12 = sub_10032FEB0(0xD000000000000017, 0x800000010080EEE0, 0);
  v13._countAndFlagsBits = 0xD00000000000001FLL;
  v13._object = 0x800000010080EF00;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  localizedString(_:comment:)(v13, v14);
  v15._countAndFlagsBits = 0xD000000000000025;
  v15._object = 0x800000010080EF20;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  localizedString(_:comment:)(v15, v16);
  v28[1] = v1;
  v17._object = 0x800000010080EF50;
  v17._countAndFlagsBits = 0xD000000000000013;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  localizedString(_:comment:)(v17, v18);
  v19 = objc_allocWithZone(AMSUIOnboardingViewController);
  v20 = v8;
  v21 = String._bridgeToObjectiveC()();

  v22 = String._bridgeToObjectiveC()();

  v23 = String._bridgeToObjectiveC()();

  v24 = [v19 initWithHeaderImage:v12 titleText:v21 descriptionText:v22 primaryButtonText:v23 privacyLinkController:v20];

  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1003703B8;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080D48;
  aBlock[3] = &unk_1008BF708;
  v26 = _Block_copy(aBlock);

  [v24 setPrimaryButtonCallback:v26];

  _Block_release(v26);
  return v24;
}

id sub_10036F8D4()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10003C660();
  static Locale.current.getter();
  v5 = Locale.identifier.getter();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  v8 = ASKBagContract.personalizedAdsScrollRequiredDisabledRegionCodes.getter();
  v15[0] = v5;
  v15[1] = v7;
  v14 = v15;
  v9 = sub_10003C224(sub_1001835EC, v13, v8);

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = objc_allocWithZone(type metadata accessor for OnboardingAdPrivacyViewController());
  return sub_10039C500(v4, (v9 & 1) == 0, sub_100370398, v10);
}

void sub_10036FA84(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_7;
    }

    v3 = Strong;

    sub_1004D37D0();
  }

  else
  {
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (!v4)
    {
      goto LABEL_7;
    }

    v5 = v4;

    sub_1004D37D8();
  }

LABEL_7:
  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    sub_10036E764();
  }
}

void sub_10036FB6C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    a3();
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    sub_10036E764();
  }
}

void sub_10036FC18()
{
  v0 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v0 - 8);
  v2 = &v16[-v1];
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;

    sub_1004D38BC();
  }

  URL.init(string:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_10002B894(v2, &qword_100982460);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v9 = [objc_opt_self() defaultWorkspace];
    if (!v9)
    {
      __break(1u);
      return;
    }

    v11 = v9;
    URL._bridgeToObjectiveC()(v10);
    v13 = v12;
    [v11 openSensitiveURL:v12 withOptions:0];

    (*(v4 + 8))(v6, v3);
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    sub_10036E764();
  }
}

uint64_t sub_10036FE84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005744(0, &qword_1009729E0);
  v12 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1003703A0;
  aBlock[5] = a3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008BF730;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002D150();
  sub_10002849C(&unk_1009729F0);
  sub_1000079A4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

void sub_100370104()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC8AppStore24OnboardingViewController_presenter);
    v2 = Strong;

    swift_beginAccess();
    v3 = *(v1 + 32);
    if (*(v3 + 16))
    {
      sub_10002C0AC(v3 + 32, v7);
      sub_10002849C(&unk_10097A950);
      type metadata accessor for JourneyDrivenOnboardingStep();
      if (swift_dynamicCast())
      {
        sub_1004D4280(v6, v1);
      }
    }
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    sub_10036E764();
  }
}

uint64_t sub_100370424@<X0>(uint64_t a1@<X2>, char *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v30 - v13;
  __chkstk_darwin(v15);
  v17 = v30 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = [Strong collectionView];

    if (v20)
    {
      v21 = [v20 indexPathForItemAtPoint:{a3, a4}];
      if (v21)
      {
        v22 = v21;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v30[1] = a1;
        v31 = *(v9 + 32);
        v31(v17, v14, v8);
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v24 = [v20 cellForItemAtIndexPath:isa];
        v30[0] = v24;

        (*(v9 + 16))(v11, v17, v8);
        swift_getObjectType();
        v25 = v24;
        v26 = dispatch thunk of FlowPreviewablePresenter.flowPreviewBackgroundColor(at:)();

        (*(v9 + 8))(v17, v8);
        v31(a2, v11, v8);
        v27 = type metadata accessor for PreviewItem();
        *&a2[*(v27 + 20)] = v30[0];
        *&a2[*(v27 + 24)] = v26;
        return (*(*(v27 - 8) + 56))(a2, 0, 1, v27);
      }
    }
  }

  v29 = type metadata accessor for PreviewItem();
  return (*(*(v29 - 8) + 56))(a2, 1, 1, v29);
}

uint64_t sub_100370728@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a1;
  v5 = sub_10002849C(&unk_100981870);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_getObjectType();
    dispatch thunk of FlowPreviewablePresenter.flowPreviewDestinationForItem(at:)();
    ObjectType = dispatch thunk of FlowPreviewablePresenter.actionPresenterView.getter();
    v14 = ObjectType;
    if (ObjectType)
    {
      ObjectType = swift_getObjectType();
    }

    else
    {
      v33[1] = 0;
      v33[2] = 0;
    }

    v33[0] = v14;
    v33[3] = ObjectType;
    v18 = dispatch thunk of FlowPreviewablePresenter.flowPreviewActionsConfiguration(at:sender:)();
    sub_10002B894(v33, &unk_1009711D0);
    if (v18)
    {
      v27 = v12;
      v28 = v7;

      v19 = FlowPreviewActionsConfiguration.actions.getter();
      v20 = v19;
      v33[0] = _swiftEmptyArrayStorage;
      v29 = v10;
      v30 = a2;
      v21 = v19 & 0xFFFFFFFFFFFFFF8;
      if (v19 >> 62)
      {
LABEL_27:
        v22 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v22 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v23 = 0;
      v31 = _swiftEmptyArrayStorage;
      while (v22 != v23)
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v25 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v23 >= *(v21 + 16))
          {
            goto LABEL_26;
          }

          v24 = *(v20 + 8 * v23 + 32);

          v25 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        v26 = sub_1003719A8(v23, v24, v18, v3, v32);

        ++v23;
        if (v26)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v33[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v31 = v33[0];
          v23 = v25;
        }
      }

      v10 = v29;
      v7 = v28;
    }

    sub_100031660(v10, v7, &unk_100981870);
    FlowPreview.init(destination:actions:)();

    swift_unknownObjectRelease();
    return sub_10002B894(v10, &unk_100981870);
  }

  else
  {
    v15 = type metadata accessor for FlowPreview();
    v16 = *(*(v15 - 8) + 56);

    return v16(a2, 1, 1, v15);
  }
}

unint64_t sub_100370AA0()
{
  v0 = type metadata accessor for FlowPreviewDestination.ContentType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&unk_100981870);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for FlowPreviewDestination();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  FlowPreview.destination.getter();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10002B894(v6, &unk_100981870);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    FlowPreviewDestination.contentType.getter();
    v12 = (*(v1 + 88))(v3, v0);
    if (v12 == enum case for FlowPreviewDestination.ContentType.source(_:))
    {
      sub_100372FD0();
      (*(v8 + 8))(v10, v7);
      return 0;
    }

    else if (v12 == enum case for FlowPreviewDestination.ContentType.flowDestination(_:))
    {
      v13 = sub_100372498();
      (*(v8 + 8))(v10, v7);
      return v13;
    }

    else
    {
      (*(v8 + 8))(v10, v7);
      (*(v1 + 8))(v3, v0);
      return 0;
    }
  }
}

UIMenu sub_100370DB8()
{
  v0 = FlowPreview.actions.getter();
  if (v0 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();

    if (v6)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v1)
  {
    return 0;
  }

LABEL_3:
  v2 = FlowPreview.actions.getter();
  if (v2 >> 62)
  {
    sub_100005744(0, &qword_1009818C0);
    preferredElementSize = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100005744(0, &qword_1009818C0);
    preferredElementSize = v2;
  }

  sub_100005744(0, &qword_10097AAF0);
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v8.value.super.isa = 0;
  v8.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v4, 0, v8, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v7);
}

id sub_100370EF8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_1003746C0(v4);

  return v6;
}

uint64_t sub_100370F58(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v2 - 8);
  v41[0] = v41 - v3;
  v4 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v4 - 8);
  v41[1] = v41 - v5;
  v6 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10002849C(&unk_100981870);
  __chkstk_darwin(v7 - 8);
  v9 = v41 - v8;
  v10 = type metadata accessor for FlowPreviewDestination();
  v43 = *(v10 - 8);
  v44 = v10;
  __chkstk_darwin(v10);
  v42 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for IndexPath();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10002849C(&unk_100981860);
  __chkstk_darwin(v16 - 8);
  v18 = v41 - v17;
  v19 = type metadata accessor for FlowPreview();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, v12, v21);
  v24 = *(a1 + *(type metadata accessor for PreviewItem() + 20));
  if (v24)
  {
    v25 = sub_100005744(0, &qword_100972EB0);
  }

  else
  {
    v25 = 0;
    *(&v46 + 1) = 0;
    *&v47 = 0;
  }

  *&v46 = v24;
  *(&v47 + 1) = v25;
  v26 = v24;
  sub_100370728(&v46, v18);
  (*(v13 + 8))(v15, v12);
  sub_10002B894(&v46, &unk_1009711D0);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v27 = &unk_100981860;
    v28 = v18;
    return sub_10002B894(v28, v27);
  }

  (*(v20 + 32))(v23, v18, v19);
  FlowPreview.destination.getter();
  v30 = v43;
  v29 = v44;
  if ((*(v43 + 48))(v9, 1, v44) == 1)
  {
    (*(v20 + 8))(v23, v19);
    v27 = &unk_100981870;
    v28 = v9;
    return sub_10002B894(v28, v27);
  }

  v32 = v42;
  (*(v30 + 32))(v42, v9, v29);
  if (!FlowPreviewDestination.flowAction.getter())
  {
    (*(v30 + 8))(v32, v29);
    return (*(v20 + 8))(v23, v19);
  }

  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  Action.title.getter();
  Action.actionMetrics.getter();
  Action.impressionMetrics.getter();
  type metadata accessor for BlankAction();
  swift_allocObject();
  v33 = BlankAction.init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v36 = v42;
      FlowPreviewDestination.sender.getter();
      dispatch thunk of ActionPresenterView.perform(action:sender:)();

      sub_10002B894(&v46, &unk_1009711D0);
      (*(v43 + 8))(v36, v44);
      return (*(v20 + 8))(v23, v19);
    }
  }

  v37 = *(v45 + qword_1009816C8);
  v38 = sub_10002849C(&unk_100974490);
  v39 = v41[0];
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v40 = *(v38 - 8);
  if ((*(v40 + 48))(v39, 1, v38) != 1)
  {
    sub_1005FA048(v33, 1, v37, v39);

    (*(v43 + 8))(v42, v44);
    (*(v20 + 8))(v23, v19);
    return (*(v40 + 8))(v39, v38);
  }

  (*(v43 + 8))(v42, v44);
  (*(v20 + 8))(v23, v19);
  v27 = &unk_100972A00;
  v28 = v39;
  return sub_10002B894(v28, v27);
}

void sub_10037170C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, uint64_t))
{
  v10 = a3;
  v11 = a4;
  swift_unknownObjectRetain();
  v12 = a1;
  a6(v10, a5);

  swift_unknownObjectRelease();
}

void sub_1003717AC(void *a1, void (*a2)(void))
{
  if (a1 && a2)
  {
    v3 = a1;
    a2();
  }
}

void sub_100371814(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = a1;
  sub_1003753E4(v8, a5);

  swift_unknownObjectRelease();
}

id sub_1003718AC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_100375994(v6);

  return v9;
}

id sub_10037191C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  swift_unknownObjectRetain();
  v8 = a1;
  v9 = sub_100375CA8(v6);

  swift_unknownObjectRelease();

  return v9;
}

uint64_t sub_1003719A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = FlowPreviewActionsConfiguration.offerActionIndex.getter();
  v11 = v10;
  v12 = v9 == a1;
  v13 = FlowPreviewActionsConfiguration.destructiveActionIndex.getter() == a1;
  return sub_100371A28(a2, a3, v12 & ~v11, v13 & ~v14, a5);
}

uint64_t sub_100371A28(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  v54 = a5;
  v57 = a1;
  v55 = swift_isaMask & *v5;
  v8 = sub_10002849C(&unk_100981890);
  __chkstk_darwin(v8 - 8);
  v10 = &v46 - v9;
  v56 = type metadata accessor for FlowPreviewOfferPresenter();
  v11 = *(v56 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v56);
  v53 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v46 - v14;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    v17 = dispatch thunk of FlowPreviewablePresenter.actionPresenterView.getter();
    v52 = v18;
    swift_unknownObjectRelease();
    if (!v17)
    {
      return 0;
    }

    if (a3)
    {
      v55 = v17;
      FlowPreviewActionsConfiguration.offerDisplayProperties.getter();
      if (a4)
      {
        v19 = 2;
      }

      else
      {
        v19 = 0;
      }

      FlowPreviewOfferPresenter.init(displayProperties:offerAction:asPartOf:)();
      v20 = v56;
      if ((*(v11 + 48))(v10, 1, v56) == 1)
      {
        swift_unknownObjectRelease();

        sub_10002B894(v10, &unk_100981890);
        return 0;
      }

      v54 = v19;
      v28 = *(v11 + 32);
      v28(v15, v10, v20);
      v29 = FlowPreviewOfferPresenter.offerTitles.getter();
      if (v30 != 1)
      {
        v33 = v29;
        v34 = v30;
        v35 = v31;
        v51 = v32;

        if (v34)
        {
          v50 = v35;
          v36 = Action.artwork.getter();
          v49 = v33;
          if (v36)
          {
            v37 = v36;
            if (dispatch thunk of Artwork.isSystemImage.getter())
            {
              v57 = static SystemImage.load(artwork:with:includePrivateImages:)();
            }

            else if (dispatch thunk of Artwork.isBundleImage.getter())
            {
              v57 = sub_100330100(v37, 0);
            }

            else
            {
              v57 = 0;
            }
          }

          else
          {
            v57 = 0;
          }

          v48 = sub_100005744(0, &qword_10097CD40);
          v38 = v53;
          (*(v11 + 16))(v53, v15, v20);
          v39 = (*(v11 + 80) + 16) & ~*(v11 + 80);
          v40 = swift_allocObject();
          v47 = v15;
          v41 = v11;
          v42 = v20;
          v43 = v40;
          v28((v40 + v39), v38, v42);
          v44 = (v43 + ((v12 + v39 + 7) & 0xFFFFFFFFFFFFFFF8));
          v45 = v52;
          *v44 = v55;
          v44[1] = v45;
          swift_unknownObjectRetain();

          v26 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
          swift_unknownObjectRelease();

          (*(v41 + 8))(v47, v42);
          return v26;
        }

        sub_1003761C0(v33, 0);
      }

      swift_unknownObjectRelease();

      (*(v11 + 8))(v15, v20);
      return 0;
    }

    if (a4)
    {
      v21 = 2;
    }

    else
    {
      v21 = 0;
    }

    v22 = sub_100005744(0, &qword_10097CD40);
    sub_100031660(v54, v58, &unk_1009711D0);
    v23 = v17;
    ObjectType = swift_getObjectType();
    v25 = v57;

    swift_unknownObjectRetain();
    v26 = sub_1003742BC(v25, v23, v21, v58, v22, ObjectType, v52);
    if (sub_100374478())
    {
      v27 = sub_100371FA4();
      swift_unknownObjectRelease();
      if ((v27 & 1) == 0)
      {

        return 0;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return v26;
  }

  return result;
}

uint64_t sub_100371FA4()
{
  v26 = type metadata accessor for LegacyAppState();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v1 = &v24 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10002849C(&unk_1009796F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  v5 = type metadata accessor for FlowDestination();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  v25 = type metadata accessor for AdamId();
  v12 = *(v25 - 8);
  __chkstk_darwin(v25);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FlowAction();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;
    memset(v27, 0, sizeof(v27));

    sub_100462678(v16, v27, v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_10002B894(v4, &unk_1009796F0);
    }

    else
    {
      sub_100376064(v4, v11, type metadata accessor for FlowDestination);
      sub_100376064(v11, v8, type metadata accessor for FlowDestination);
      if (swift_getEnumCaseMultiPayload() == 25)
      {
        v17 = sub_10002849C(&unk_1009835A0);
        v18 = v25;
        (*(v12 + 32))(v14, &v8[*(v17 + 48)], v25);
        v19 = type metadata accessor for URL();
        (*(*(v19 - 8) + 8))(v8, v19);
        goto LABEL_9;
      }

      sub_1003760CC(v8, type metadata accessor for FlowDestination);
    }
  }

  type metadata accessor for WriteReviewAction();
  if (swift_dynamicCastClass())
  {

    WriteReviewAction.adamId.getter();

    v18 = v25;
LABEL_9:
    sub_10002849C(&unk_100973AF0);
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    swift_getObjectType();
    dispatch thunk of AppStateController.stateMachine(forApp:)();
    swift_getObjectType();
    dispatch thunk of AppStateMachine.currentState.getter();
    swift_unknownObjectRelease();
    v20 = LegacyAppState.hasBeenPurchased.getter();
    (*(v24 + 8))(v1, v26);
    if (swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for ProductPresenter();
      if (swift_dynamicCastClass())
      {
        v21 = dispatch thunk of ProductPresenter.alwaysAllowReviews.getter();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
LABEL_16:
        (*(v12 + 8))(v14, v18);
        v22 = v20 | v21;
        return v22 & 1;
      }

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    v21 = 0;
    goto LABEL_16;
  }

  v22 = 0;
  return v22 & 1;
}

unint64_t sub_100372498()
{
  v1 = swift_isaMask & *v0;
  v104 = v0;
  v101 = v1;
  v2 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v86 - v3;
  v5 = type metadata accessor for FlowPresentationContext();
  v99 = *(v5 - 8);
  v100 = v5;
  __chkstk_darwin(v5);
  v97 = v6;
  v98 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v103 = &v86 - v8;
  v9 = type metadata accessor for FlowPresentationHints();
  __chkstk_darwin(v9);
  v102 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&unk_1009796F0);
  __chkstk_darwin(v11 - 8);
  v95 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v86 - v14;
  v16 = type metadata accessor for FlowDestination();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v96 = (&v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v105 = &v86 - v20;
  v21 = sub_10002849C(&unk_100981870);
  __chkstk_darwin(v21 - 8);
  v23 = &v86 - v22;
  v24 = type metadata accessor for FlowPreviewDestination();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  FlowPreview.destination.getter();
  v28 = v24;
  v29 = v25;
  if ((*(v25 + 48))(v23, 1, v28) == 1)
  {
    v30 = &unk_100981870;
    v31 = v23;
LABEL_6:
    sub_10002B894(v31, v30);
    return 0;
  }

  v93 = v4;
  (*(v25 + 32))(v27, v23, v28);
  v32 = FlowPreviewDestination.flowAction.getter();
  v33 = v27;
  if (!v32)
  {
    (*(v25 + 8))(v27, v28);
    return 0;
  }

  v34 = v32;
  v35 = v29;
  v94 = v28;

  FlowPreviewDestination.sender.getter();
  sub_100462678(v34, v107, v15);
  v36 = *(v17 + 48);
  if (v36(v15, 1, v16) == 1)
  {
    (*(v29 + 8))(v33, v94);

    v30 = &unk_1009796F0;
    v31 = v15;
    goto LABEL_6;
  }

  v91 = v36;
  v37 = v105;
  sub_100376064(v15, v105, type metadata accessor for FlowDestination);
  v38 = v104;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    sub_1003760CC(v37, type metadata accessor for FlowDestination);
    (*(v35 + 8))(v33, v94);
    return 0;
  }

  v87 = v35;
  v90 = v33;
  v92 = Strong;
  v40 = [Strong traitCollection];

  FlowAction.presentationContext.getter();
  FlowAction.animationBehavior.getter();

  sub_10065DB50(v103);
  v41 = sub_10040BB0C();
  v88 = v34;
  v89 = v40;
  if (v41)
  {
    v108 = 0;
    memset(v107, 0, sizeof(v107));
    v42 = *(v38 + qword_1009816C8);

    dispatch thunk of Action.clickSender.getter();
    v43 = v95;
    sub_100462678(v34, v106, v95);
    v44 = v91;
    if (v91(v43, 1, v16) == 1)
    {
      v45 = v96;
      swift_storeEnumTagMultiPayload();
      if (v44(v43, 1, v16) != 1)
      {
        sub_10002B894(v43, &unk_1009796F0);
      }
    }

    else
    {
      v45 = v96;
      sub_100376064(v43, v96, type metadata accessor for FlowDestination);
    }

    v48 = FlowAction.referrerUrl.getter();
    v50 = v49;
    v51 = v93;
    FlowAction.referrerData.getter();
    sub_1003C1668(v45, v40, v48, v50, v51, v107, v42, 1);
    v46 = v52;

    sub_10002B894(v51, &unk_1009767C0);
    sub_1003760CC(v45, type metadata accessor for FlowDestination);
    sub_10002B894(v107, &unk_100981880);
    if (!v46)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v46 = sub_1003C8A6C(v34, v40, *(v38 + qword_1009816C8));
    if (!v46)
    {
LABEL_33:
      v75 = v105;
      v76 = v90;
      v77 = v94;
      v62 = v92;
      v68 = v89;
LABEL_39:

      sub_1003760CC(v102, type metadata accessor for FlowPresentationHints);
      sub_1003760CC(v75, type metadata accessor for FlowDestination);
      (*(v87 + 8))(v76, v77);
      v78 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v79 = v98;
      v81 = v99 + 32;
      v80 = *(v99 + 32);
      v82 = v100;
      v80(v98, v103, v100);
      v83 = (*(v81 + 48) + 48) & ~*(v81 + 48);
      v84 = swift_allocObject();
      v85 = v101;
      *(v84 + 2) = *(v101 + 80);
      *(v84 + 3) = *(v85 + 88);
      *(v84 + 4) = v78;
      *(v84 + 5) = v88;
      v80(&v84[v83], v79, v82);
      return v46;
    }
  }

  v53 = v46;
  ObjectType = swift_getObjectType();
  v55 = swift_conformsToProtocol2();
  v56 = v53;
  if (v55)
  {
    v57 = v55;
    (*(v55 + 16))(1, ObjectType, v55);
    v58 = *(v57 + 32);
    v59 = v92;
    v56 = v92;
    v58(v59, ObjectType, v57);
  }

  objc_opt_self();
  v60 = swift_dynamicCastObjCClass();
  if (!v60)
  {
    goto LABEL_33;
  }

  v61 = v60;
  v62 = v53;
  v63 = [v61 viewControllers];
  sub_100005744(0, &qword_1009711C0);
  v64 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v64 >> 62))
  {
    v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v65)
    {
      goto LABEL_25;
    }

LABEL_37:

    v68 = v89;
    v76 = v90;
    v74 = v92;
LABEL_38:

    v75 = v105;
    v77 = v94;
    goto LABEL_39;
  }

  v65 = _CocoaArrayWrapper.endIndex.getter();
  if (!v65)
  {
    goto LABEL_37;
  }

LABEL_25:
  v66 = __OFSUB__(v65, 1);
  result = v65 - 1;
  if (v66)
  {
    __break(1u);
    goto LABEL_41;
  }

  if ((v64 & 0xC000000000000001) != 0)
  {
LABEL_41:
    v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_30:
    v68 = v67;

    swift_getObjectType();
    v69 = swift_conformsToProtocol2();
    if (v69 && v68)
    {
      v70 = v69;
      v71 = swift_getObjectType();
      (*(v70 + 16))(1, v71, v70);
      v72 = *(v70 + 32);
      v73 = v92;
      v74 = v92;
      v72(v73, v71, v70);

      v68 = v89;
    }

    else
    {

      v74 = v62;
      v62 = v89;
    }

    v76 = v90;
    goto LABEL_38;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v67 = *(v64 + 8 * result + 32);
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t sub_100372FD0()
{
  v1 = swift_isaMask & *v0;
  v2 = sub_10002849C(&unk_100981870);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for FlowPreviewDestination();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  FlowPreview.destination.getter();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10002B894(v4, &unk_100981870);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v9 = FlowPreviewDestination.flowAction.getter();
    (*(v6 + 8))(v8, v5);
    if (v9)
    {
      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = swift_allocObject();
      v11[2] = *(v1 + 80);
      v11[3] = *(v1 + 88);
      v11[4] = v10;
      v11[5] = v9;
    }
  }

  return 0;
}

uint64_t sub_100373214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = qword_1009816C8;
    v10 = sub_10002849C(&unk_100974490);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v6, 1, v10) == 1)
    {

      return sub_10002B894(v6, &unk_100972A00);
    }

    else
    {
      v12 = *&v8[v9];

      sub_1005F9C8C(a3, 1, v12, v6);

      return (*(v11 + 8))(v6, v10);
    }
  }

  return result;
}

void sub_1003733B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v79 = a4;
  v83 = a1;
  v4 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v4 - 8);
  v80 = &v68 - v5;
  v75 = type metadata accessor for FlowOrigin();
  v78 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FlowAnimationBehavior();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v71 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for FlowPresentationContext();
  v74 = *(v72 - 8);
  __chkstk_darwin(v72);
  v77 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v11 - 8);
  v76 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v13 - 8);
  v15 = &v68 - v14;
  v16 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v16 - 8);
  v18 = &v68 - v17;
  v19 = type metadata accessor for FlowPage();
  v20 = *(v19 - 1);
  __chkstk_darwin(v19);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v69 = v8;
  v70 = v7;
  swift_getObjectType();
  v81 = &protocol descriptor for FlowPreviewingViewController;
  v23 = swift_conformsToProtocol2();
  if (v23 && v83)
  {
    v24 = v23;
    v25 = v19;
    v26 = v83;
    ObjectType = swift_getObjectType();
    v28 = v26;
    v29 = v22;
    v30 = *(v24 + 40);
    v31 = v28;
    v30(ObjectType, v24);
    v22 = v29;
    v19 = v25;
  }

  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (v32)
  {
    v33 = v32;
    v34 = v83;
    v35 = [v33 viewControllers];
    sub_100005744(0, &qword_1009711C0);
    v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v36 >> 62)
    {
      v37 = _CocoaArrayWrapper.endIndex.getter();
      if (v37)
      {
LABEL_8:
        v38 = __OFSUB__(v37, 1);
        v39 = v37 - 1;
        if (v38)
        {
          __break(1u);
        }

        else if ((v36 & 0xC000000000000001) == 0)
        {
          if ((v39 & 0x8000000000000000) != 0)
          {
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          if (v39 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_48;
          }

          v40 = *(v36 + 8 * v39 + 32);
          goto LABEL_13;
        }

        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_13:
        v41 = v40;

        swift_getObjectType();
        v42 = swift_conformsToProtocol2();
        if (v42 && v41)
        {
          v43 = v42;
          v44 = swift_getObjectType();
          (*(v43 + 40))(v44, v43);
        }

        goto LABEL_19;
      }
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v37)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_19:
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  (*(v20 + 104))(v22, enum case for FlowPage.viewController(_:), v19);
  v45 = type metadata accessor for URL();
  (*(*(v45 - 8) + 56))(v18, 1, 1, v45);
  v46 = type metadata accessor for ReferrerData();
  (*(*(v46 - 8) + 56))(v15, 1, 1, v46);
  v68 = sub_100005744(0, &qword_1009711C0);
  v85 = v68;
  v84 = v83;
  v47 = v83;
  static ActionMetrics.notInstrumented.getter();
  (*(v74 + 16))(v77, v79, v72);
  (*(v69 + 104))(v71, enum case for FlowAnimationBehavior.infer(_:), v70);
  (*(v78 + 104))(v73, enum case for FlowOrigin.inapp(_:), v75);
  static FlowActionPresentation.stackPush.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v48 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  v49 = qword_1009816C8;
  v50 = sub_10002849C(&unk_100974490);
  v51 = v80;
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v52 = *(v50 - 8);
  if ((*(v52 + 48))(v51, 1, v50) == 1)
  {
    sub_10002B894(v51, &unk_100972A00);
  }

  else
  {
    v53 = *&Strong[v49];

    sub_1005F9C8C(v48, 1, v53, v51);

    (*(v52 + 8))(v51, v50);
  }

  swift_getObjectType();
  v54 = swift_conformsToProtocol2();
  if (v54 && v83)
  {
    v55 = v54;
    v56 = swift_getObjectType();
    (*(v55 + 48))(v56, v55);
  }

  objc_opt_self();
  v57 = swift_dynamicCastObjCClass();
  if (!v57)
  {

LABEL_40:

    return;
  }

  v58 = v57;
  v19 = v47;
  v59 = [v58 viewControllers];
  v60 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v60 >> 62))
  {
    v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v61)
    {
      goto LABEL_28;
    }

    goto LABEL_39;
  }

  v61 = _CocoaArrayWrapper.endIndex.getter();
  if (!v61)
  {
LABEL_39:

    goto LABEL_40;
  }

LABEL_28:
  v38 = __OFSUB__(v61, 1);
  v62 = v61 - 1;
  if (v38)
  {
    __break(1u);
    goto LABEL_45;
  }

  if ((v60 & 0xC000000000000001) != 0)
  {
LABEL_46:
    v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_33;
  }

  if ((v62 & 0x8000000000000000) != 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v62 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_49:
    __break(1u);
    return;
  }

  v63 = *(v60 + 8 * v62 + 32);
LABEL_33:
  v64 = v63;

  swift_getObjectType();
  v65 = swift_conformsToProtocol2();
  if (v65)
  {
    if (v64)
    {
      v66 = v65;
      v67 = swift_getObjectType();
      (*(v66 + 48))(v67, v66);
    }
  }
}

uint64_t sub_100373E24(uint64_t a1)
{

  sub_10001F64C(a1 + qword_1009816B8);
  swift_unknownObjectWeakDestroy();
}

uint64_t type metadata accessor for PreviewItem()
{
  result = qword_100981808;
  if (!qword_100981808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100373F20()
{
  type metadata accessor for IndexPath();
  if (v0 <= 0x3F)
  {
    sub_100373FEC(319, qword_100981818, &qword_100972EB0);
    if (v1 <= 0x3F)
    {
      sub_100373FEC(319, qword_100984200, &qword_100970180);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100373FEC(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_100005744(255, a3);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100374098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_10002849C(&unk_100974490);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10002B894(v7, &unk_100972A00);
  }

  sub_1005F9AF4(a3, 1, a2, v7);

  return (*(v9 + 8))(v7, v8);
}

id sub_1003741DC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_10037422C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100005744(0, &qword_1009818C0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = v1(v2);

  return v3;
}

uint64_t sub_1003742BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  Action.title.getter();
  if (v11)
  {
    v12 = Action.artwork.getter();
    if (v12)
    {
      v13 = v12;
      if (dispatch thunk of Artwork.isSystemImage.getter())
      {
        static SystemImage.load(artwork:with:includePrivateImages:)();
      }

      else if (dispatch thunk of Artwork.isBundleImage.getter())
      {
        sub_100330100(v13, 0);
      }
    }

    sub_100031660(a4, v18, &unk_1009711D0);
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a7;
    *(v15 + 32) = a1;
    v16 = v18[1];
    *(v15 + 40) = v18[0];
    *(v15 + 56) = v16;
    v14 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_10002B894(a4, &unk_1009711D0);
  }

  else
  {
    sub_10002B894(a4, &unk_1009711D0);

    swift_unknownObjectRelease();
    return 0;
  }

  return v14;
}

BOOL sub_100374478()
{
  v0 = type metadata accessor for FlowPage();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v11 - v5;
  type metadata accessor for FlowAction();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_7;
  }

  FlowAction.page.getter();
  (*(v1 + 104))(v3, enum case for FlowPage.writeReview(_:), v0);
  sub_100376294();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v11[2] == v11[0] && v11[3] == v11[1])
  {

    v7 = *(v1 + 8);
    v7(v3, v0);
    v7(v6, v0);

    return 1;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v10 = *(v1 + 8);
  v10(v3, v0);
  v10(v6, v0);

  if (v9)
  {
    return 1;
  }

LABEL_7:
  type metadata accessor for WriteReviewAction();
  return swift_dynamicCastClass() != 0;
}

id sub_1003746C0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v64 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&unk_100981860);
  __chkstk_darwin(v7 - 8);
  v9 = &v58 - v8;
  v67 = type metadata accessor for FlowPreview();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v62 = v10;
  v63 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v66 = &v58 - v12;
  v13 = sub_10002849C(&qword_100981858);
  __chkstk_darwin(v13 - 8);
  v15 = &v58 - v14;
  v16 = type metadata accessor for PreviewItem();
  v17 = *(v16 - 8);
  *&v18 = __chkstk_darwin(v16).n128_u64[0];
  v68 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a1 view];
  [a1 locationInView:v20];
  v22 = v21;
  v24 = v23;

  result = [a1 view];
  if (!result)
  {
    return result;
  }

  v26 = result;
  (*(v2 + qword_1009816B0))(v22, v24);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {

    v27 = &qword_100981858;
    v28 = v15;
    goto LABEL_9;
  }

  v61 = v2;
  v29 = v68;
  sub_100376064(v15, v68, type metadata accessor for PreviewItem);
  v30 = v64;
  (*(v64 + 2))(v6, v29, v4);
  v31 = *(v29 + *(v16 + 20));
  if (v31)
  {
    v32 = sub_100005744(0, &qword_100972EB0);
    v33 = v31;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    *(&aBlock + 1) = 0;
    *&v71 = 0;
  }

  v34 = v67;
  v35 = v65;
  *&aBlock = v33;
  *(&v71 + 1) = v32;
  v36 = v33;
  sub_100370728(&aBlock, v9);
  (*(v30 + 1))(v6, v4);
  sub_10002B894(&aBlock, &unk_1009711D0);
  if (v35[6](v9, 1, v34) == 1)
  {
    sub_1003760CC(v68, type metadata accessor for PreviewItem);

    v27 = &unk_100981860;
    v28 = v9;
LABEL_9:
    sub_10002B894(v28, v27);
    return 0;
  }

  v64 = v35[4];
  v64(v66, v9, v34);
  if (v31)
  {
    v37 = v36;
    [v26 convertPoint:v37 toCoordinateSpace:{v22, v24}];
    v38 = [v37 hitTest:0 withEvent:?];
    if (v38)
    {
      v60 = v37;
      v39 = v38;
      sub_100005744(0, &qword_100972EB0);
      v59 = v39;
      do
      {
        v69 = v39;
        v40 = v39;
        sub_10002849C(&qword_1009818B0);
        if (swift_dynamicCast())
        {
          v41 = *(&v71 + 1);
          sub_10002B894(&aBlock, &qword_1009818B8);
          if (v41)
          {

            (*(v65 + 1))(v66, v67);
            sub_1003760CC(v68, type metadata accessor for PreviewItem);
            return 0;
          }
        }

        else
        {
          v72 = 0;
          aBlock = 0u;
          v71 = 0u;
          sub_10002B894(&aBlock, &qword_1009818B8);
        }

        v39 = [v40 superview];
      }

      while (v39);

      v34 = v67;
      v35 = v65;
      v37 = v60;
    }
  }

  v42 = v66;
  v43 = sub_100370AA0();
  v45 = v44;
  v61 = v44;
  v47 = v46;
  v48 = swift_allocObject();
  v48[2] = v43;
  v48[3] = v45;
  v65 = v43;
  v48[4] = v47;
  v49 = v63;
  v35[2](v63, v42, v34);
  v50 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v51 = swift_allocObject();
  v64((v51 + v50), v49, v34);
  v64 = objc_opt_self();
  v72 = sub_100376338;
  v73 = v48;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v52 = v35;
  *&v71 = sub_1003741DC;
  *(&v71 + 1) = &unk_1008BF978;
  v53 = _Block_copy(&aBlock);
  v54 = v43;
  v55 = v61;
  sub_1003763E0(v54, v61);

  v72 = sub_100376370;
  v73 = v51;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v71 = sub_10037422C;
  *(&v71 + 1) = &unk_1008BF9A0;
  v56 = _Block_copy(&aBlock);

  v57 = [v64 configurationWithIdentifier:0 previewProvider:v53 actionProvider:v56];

  _Block_release(v56);
  _Block_release(v53);

  sub_100376020(v65, v55);
  v52[1](v66, v67);
  sub_1003760CC(v68, type metadata accessor for PreviewItem);
  return v57;
}

uint64_t sub_100374F3C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10002849C(&qword_100981858);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = type metadata accessor for PreviewItem();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 view];
  [a1 locationInView:v14];
  v16 = v15;
  v18 = v17;

  (*(v3 + qword_1009816B0))(v16, v18);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10002B894(v8, &qword_100981858);
  }

  sub_100376064(v8, v13, type metadata accessor for PreviewItem);
  sub_100370F58(v13);
  v20 = *&v13[*(v9 + 20)];
  if (v20)
  {
    ObjectType = swift_getObjectType();
    v22 = swift_conformsToProtocol2();
    if (v22)
    {
      v23 = *(v22 + 16);
      v24 = v22;
      v25 = v20;
      v23(a2, ObjectType, v24);
    }
  }

  return sub_1003760CC(v13, type metadata accessor for PreviewItem);
}

uint64_t sub_100375198(void *a1, uint64_t a2)
{
  v5 = sub_10002849C(&qword_100981858);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = type metadata accessor for PreviewItem();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 view];
  [a1 locationInView:v13];
  v15 = v14;
  v17 = v16;

  (*(v2 + qword_1009816B0))(v15, v17);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10002B894(v7, &qword_100981858);
  }

  sub_100376064(v7, v12, type metadata accessor for PreviewItem);
  v19 = *&v12[*(v8 + 20)];
  if (v19)
  {
    ObjectType = swift_getObjectType();
    v21 = swift_conformsToProtocol2();
    if (v21)
    {
      v22 = *(v21 + 24);
      v23 = v21;
      v24 = v19;
      v22(a2, ObjectType, v23);
    }
  }

  return sub_1003760CC(v12, type metadata accessor for PreviewItem);
}

uint64_t sub_1003753E4(void *a1, void *a2)
{
  v3 = v2;
  v46 = a2;
  v5 = type metadata accessor for IndexPath();
  v47 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_100981860);
  __chkstk_darwin(v8 - 8);
  v10 = &v45 - v9;
  v11 = type metadata accessor for FlowPreview();
  v49 = *(v11 - 8);
  v50 = v11;
  __chkstk_darwin(v11);
  v48 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_100981858);
  __chkstk_darwin(v13 - 8);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PreviewItem();
  v17 = *(v16 - 8);
  *&v18 = __chkstk_darwin(v16).n128_u64[0];
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a1 view];
  [a1 locationInView:v21];
  v23 = v22;
  v25 = v24;

  (*(v3 + qword_1009816B0))(v23, v25);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_10002B894(v15, &qword_100981858);
  }

  sub_100376064(v15, v20, type metadata accessor for PreviewItem);
  v27 = v47;
  (*(v47 + 16))(v7, v20, v5);
  v28 = *&v20[*(v16 + 20)];
  if (v28)
  {
    v29 = sub_100005744(0, &qword_100972EB0);
  }

  else
  {
    v29 = 0;
    v52 = 0;
    v53 = 0;
  }

  v30 = v49;
  aBlock = v28;
  v54 = v29;
  v31 = v28;
  sub_100370728(&aBlock, v10);
  (*(v27 + 8))(v7, v5);
  sub_10002B894(&aBlock, &unk_1009711D0);
  v32 = v50;
  if ((*(v30 + 48))(v10, 1, v50) == 1)
  {
    sub_1003760CC(v20, type metadata accessor for PreviewItem);
    return sub_10002B894(v10, &unk_100981860);
  }

  else
  {
    (*(v30 + 32))(v48, v10, v32);
    v33 = sub_100370AA0();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    if (v35 && (v39 = v33, (Strong = v34) != 0) || (Strong = swift_unknownObjectWeakLoadStrong(), v36))
    {

      v41 = v38;
    }

    else
    {
      v41 = 0;
    }

    v42 = swift_allocObject();
    v42[2] = Strong;
    v42[3] = v36;
    v42[4] = v41;
    v55 = sub_100376014;
    v56 = v42;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_100007A08;
    v54 = &unk_1008BF838;
    v43 = _Block_copy(&aBlock);
    v44 = Strong;
    sub_10000827C(v36);

    [v46 addCompletion:v43];
    _Block_release(v43);
    sub_10001F63C(v36);

    sub_100376020(v34, v36);
    (*(v30 + 8))(v48, v32);
    return sub_1003760CC(v20, type metadata accessor for PreviewItem);
  }
}

id sub_100375994(void *a1)
{
  v3 = sub_10002849C(&qword_100981858);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = type metadata accessor for PreviewItem();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 view];
  [a1 locationInView:v11];
  v13 = v12;
  v15 = v14;

  (*(v1 + qword_1009816B0))(v13, v15);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10002B894(v5, &qword_100981858);
    return 0;
  }

  else
  {
    sub_100376064(v5, v10, type metadata accessor for PreviewItem);
    v17 = *&v10[*(v6 + 20)];
    if (v17)
    {
      v18 = objc_allocWithZone(UIPreviewParameters);
      v19 = v17;
      v20 = [v18 init];
      [v20 setBackgroundColor:*&v10[*(v6 + 24)]];
      ObjectType = swift_getObjectType();
      v22 = swift_conformsToProtocol2();
      if (v22)
      {
        v23 = v22;
        v24 = *(v22 + 8);
        v25 = v19;
        v24(ObjectType, v23);
        v26 = (*(v23 + 40))(ObjectType, v23);
        if (v26)
        {
          v27 = v26;

          v25 = v27;
        }
      }

      else
      {
        v25 = v19;
      }

      v28 = [objc_allocWithZone(UITargetedPreview) initWithView:v25 parameters:v20];

      sub_1003760CC(v10, type metadata accessor for PreviewItem);
      return v28;
    }

    else
    {
      sub_1003760CC(v10, type metadata accessor for PreviewItem);
      return 0;
    }
  }
}

id sub_100375CA8(void *a1)
{
  v3 = sub_10002849C(&qword_100981858);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - v4;
  v6 = type metadata accessor for PreviewItem();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 view];
  [a1 locationInView:v11];
  v13 = v12;
  v15 = v14;

  (*(v1 + qword_1009816B0))(v13, v15);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10002B894(v5, &qword_100981858);
  }

  else
  {
    sub_100376064(v5, v10, type metadata accessor for PreviewItem);
    v16 = *&v10[*(v6 + 20)];
    if (v16)
    {
      v17 = objc_allocWithZone(UIPreviewParameters);
      v18 = v16;
      v19 = [v17 init];
      [v19 setBackgroundColor:*&v10[*(v6 + 24)]];
      ObjectType = swift_getObjectType();
      v21 = swift_conformsToProtocol2();
      if (v21)
      {
        v22 = v21;
        v23 = *(v21 + 32);
        v24 = v18;
        v23(ObjectType, v22);
        v25 = (*(v22 + 40))(ObjectType, v22);
        if (v25)
        {
          v26 = v25;

          v24 = v26;
        }
      }

      else
      {
        v24 = v18;
      }

      v27 = [v24 window];
      if (v27)
      {

        v28 = [objc_allocWithZone(UITargetedPreview) initWithView:v24 parameters:v19];
        sub_1003760CC(v10, type metadata accessor for PreviewItem);
        return v28;
      }
    }

    sub_1003760CC(v10, type metadata accessor for PreviewItem);
  }

  return 0;
}

void sub_100376020(void *a1, uint64_t a2)
{
  if (a2)
  {
  }
}

uint64_t sub_100376064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003760CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10037612C(void *a1)
{
  v3 = *(type metadata accessor for FlowPresentationContext() - 8);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  sub_1003733B8(a1, v4, v5, v6);
}

uint64_t sub_1003761C0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_100376294()
{
  result = qword_1009818A0;
  if (!qword_1009818A0)
  {
    type metadata accessor for FlowPage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009818A0);
  }

  return result;
}

void *sub_100376338()
{
  if (!*(v0 + 24))
  {
    return 0;
  }

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

UIMenu sub_100376370()
{
  type metadata accessor for FlowPreview();

  return sub_100370DB8();
}

void *sub_1003763E0(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
  }

  return result;
}

void sub_1003765E4()
{
  v1 = type metadata accessor for SystemImage();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v5);
  v8 = &v17 - v7;
  v9 = OBJC_IVAR____TtC8AppStore18RoundChevronButton_chevronImageView;
  v10 = *(v0 + OBJC_IVAR____TtC8AppStore18RoundChevronButton_chevronImageView);
  (*(v2 + 104))(v4, **(&off_1008BFAD8 + *(v0 + OBJC_IVAR____TtC8AppStore18RoundChevronButton_chevronDirection)), v1, v6);
  (*(v2 + 32))(v8, v4, v1);
  v11 = v10;
  v12 = static SystemImage.load(_:with:)();
  (*(v2 + 8))(v8, v1);
  [v11 setImage:v12];

  v13 = *(v0 + v9);
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 configurationWithPointSize:6 weight:15.0];
  [v15 setPreferredSymbolConfiguration:v16];
}

char *sub_1003767C0()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC8AppStore18RoundChevronButton_contentView;
  *&v0[v2] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC8AppStore18RoundChevronButton_blurEffect;
  *&v0[v3] = [objc_opt_self() effectWithStyle:9];
  v4 = OBJC_IVAR____TtC8AppStore18RoundChevronButton_chevronImageView;
  *&v0[v4] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  __asm { FMOV            V0.2D, #28.0 }

  *&v0[OBJC_IVAR____TtC8AppStore18RoundChevronButton_visibleSize] = _Q0;
  *&v0[OBJC_IVAR____TtC8AppStore18RoundChevronButton_tapSize] = xmmword_1007C9250;
  v0[OBJC_IVAR____TtC8AppStore18RoundChevronButton_chevronDirection] = 1;
  v0[OBJC_IVAR____TtC8AppStore18RoundChevronButton_shouldUseDirectionalChevron] = 1;
  v10 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:*&v0[v3]];
  *&v0[OBJC_IVAR____TtC8AppStore18RoundChevronButton_blurView] = v10;
  v11 = [objc_opt_self() effectForBlurEffect:*&v0[v3] style:4];
  v12 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v11];

  *&v0[OBJC_IVAR____TtC8AppStore18RoundChevronButton_vibrancyView] = v12;
  v25.receiver = v0;
  v25.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, 68.0, 44.0);
  v14 = OBJC_IVAR____TtC8AppStore18RoundChevronButton_contentView;
  v15 = *&v13[OBJC_IVAR____TtC8AppStore18RoundChevronButton_contentView];
  v16 = v13;
  [v15 setUserInteractionEnabled:0];
  v16[OBJC_IVAR____TtC8AppStore18RoundChevronButton_chevronDirection] = 1;
  v17 = OBJC_IVAR____TtC8AppStore18RoundChevronButton_chevronImageView;
  [*&v16[OBJC_IVAR____TtC8AppStore18RoundChevronButton_chevronImageView] setContentMode:4];
  sub_1003765E4();
  v18 = OBJC_IVAR____TtC8AppStore18RoundChevronButton_blurView;
  [*&v13[v14] addSubview:*&v16[OBJC_IVAR____TtC8AppStore18RoundChevronButton_blurView]];
  v19 = OBJC_IVAR____TtC8AppStore18RoundChevronButton_vibrancyView;
  v20 = [*&v16[OBJC_IVAR____TtC8AppStore18RoundChevronButton_vibrancyView] contentView];
  [v20 addSubview:*&v16[v17]];

  v21 = [*&v16[v18] contentView];
  [v21 addSubview:*&v16[v19]];

  v22 = *&v13[v14];
  v23 = v16;
  [v23 addSubview:v22];
  [v23 setOverrideUserInterfaceStyle:1];

  return v23;
}

void sub_100376AD8()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, "layoutSubviews");
  [v0 bounds];
  v2 = (CGRectGetWidth(v24) + -28.0) * 0.5;
  [v0 bounds];
  v3 = (CGRectGetHeight(v25) + -28.0) * 0.5;
  v4 = *&v0[OBJC_IVAR____TtC8AppStore18RoundChevronButton_contentView];
  [v4 setFrame:{v2, v3, 28.0, 28.0}];
  v5 = OBJC_IVAR____TtC8AppStore18RoundChevronButton_chevronImageView;
  v6 = [*&v0[OBJC_IVAR____TtC8AppStore18RoundChevronButton_chevronImageView] image];
  if (v6)
  {
    v7 = v6;
    [*&v0[v5] setContentMode:1];
    v8 = [v0 traitCollection];
    v9 = UITraitCollection.prefersRightToLeftLayouts.getter();

    if (v9)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = 0.0;
    }

    v11 = *&v1[v5];
    [v4 frame];
    Width = CGRectGetWidth(v26);
    [v7 size];
    v14 = floor(v10 + (Width - v13) * 0.5);
    [v4 frame];
    Height = CGRectGetHeight(v27);
    [v7 size];
    v17 = floor((Height - v16) * 0.5);
    [v7 size];
    v19 = v18;
    [v7 size];
    [v11 setFrame:{v14, v17, v19, v20}];
  }

  v21 = OBJC_IVAR____TtC8AppStore18RoundChevronButton_blurView;
  [*&v1[OBJC_IVAR____TtC8AppStore18RoundChevronButton_blurView] setFrame:{0.0, 0.0, 28.0, 28.0}];
  [*&v1[OBJC_IVAR____TtC8AppStore18RoundChevronButton_vibrancyView] setFrame:{0.0, 0.0, 28.0, 28.0}];
  v22 = *&v1[v21];
  v28.size.width = 28.0;
  v28.size.height = 28.0;
  v28.origin.x = v2;
  v28.origin.y = v3;
  [v22 _setCornerRadius:CGRectGetHeight(v28) * 0.5];
}

unint64_t sub_100376E84()
{
  result = qword_100981960;
  if (!qword_100981960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981960);
  }

  return result;
}

void sub_100376ED8()
{
  v1 = OBJC_IVAR____TtC8AppStore18RoundChevronButton_contentView;
  *(v0 + v1) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC8AppStore18RoundChevronButton_blurEffect;
  *(v0 + v2) = [objc_opt_self() effectWithStyle:9];
  v3 = OBJC_IVAR____TtC8AppStore18RoundChevronButton_chevronImageView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  __asm { FMOV            V0.2D, #28.0 }

  *(v0 + OBJC_IVAR____TtC8AppStore18RoundChevronButton_visibleSize) = _Q0;
  *(v0 + OBJC_IVAR____TtC8AppStore18RoundChevronButton_tapSize) = xmmword_1007C9250;
  *(v0 + OBJC_IVAR____TtC8AppStore18RoundChevronButton_chevronDirection) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore18RoundChevronButton_shouldUseDirectionalChevron) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100377024()
{
  v1 = v0;
  v2 = sub_10002849C(&unk_100993020);
  __chkstk_darwin(v2 - 8);
  v4 = v8 - v3;
  v8[1] = PrivacyFooter.bodyText.getter();
  type metadata accessor for LinkableText();
  type metadata accessor for BaseObjectGraph();
  sub_100377948(&qword_100973290, &type metadata accessor for LinkableText);
  ComponentModel.pairedWith<A>(objectGraph:)();

  v5 = sub_10002849C(&unk_100993030);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = OBJC_IVAR____TtC8AppStore31PrivacyFooterCollectionViewCell_bodyText;
  swift_beginAccess();
  sub_1003773A0(v4, v1 + v6);
  swift_endAccess();
  sub_100287C10();
  return sub_100377410(v4);
}

uint64_t sub_1003771C8()
{
  v0 = type metadata accessor for FloatingPointRoundingRule();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E6C0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for StaticDimension();
  sub_1000056A8(v4, qword_1009D2460);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_1003773A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100993020);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100377410(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100993020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_100377478(void *a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v33[0] = a1;
  v7 = type metadata accessor for PrivacyFooterLayout.Metrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PrivacyFooterLayout();
  v34 = *(v11 - 8);
  v35 = v11;
  __chkstk_darwin(v11);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LabelPlaceholderCompatibility();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000367E8();
  if (qword_10096E078 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for FontUseCase();
  sub_1000056A8(v18, qword_1009D10E8);
  v19 = [a5 traitCollection];
  v33[1] = a5;
  v20 = v19;
  v21 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  PrivacyFooter.bodyText.getter();
  LinkableText.styledText.getter();

  v22 = dispatch thunk of StyledText.asAttributedString(using:)();

  v23 = type metadata accessor for Feature();
  v38 = v23;
  v39 = sub_100377948(&qword_100972E50, &type metadata accessor for Feature);
  v24 = sub_1000056E0(v37);
  (*(*(v23 - 8) + 104))(v24, enum case for Feature.measurement_with_labelplaceholder(_:), v23);
  v33[0] = v22;
  v25 = v21;
  isFeatureEnabled(_:)();
  sub_100007000(v37);
  LabelPlaceholderCompatibility.init(attributedText:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v15 + 8))(v17, v14);
  if (qword_10096D520 != -1)
  {
    swift_once();
  }

  v26 = sub_1000056A8(v7, qword_1009CEBE8);
  (*(v8 + 16))(v10, v26, v7);
  v27 = v38;
  v28 = v39;
  v29 = sub_10002A400(v37, v38);
  v36[3] = v27;
  v36[4] = *(v28 + 8);
  v30 = sub_1000056E0(v36);
  (*(*(v27 - 8) + 16))(v30, v29, v27);
  PrivacyFooterLayout.init(metrics:bodyLabel:actionButtons:)();
  sub_100377948(&unk_10098DE10, &type metadata accessor for PrivacyFooterLayout);
  v31 = v35;
  dispatch thunk of Measurable.measurements(fitting:in:)();

  (*(v34 + 8))(v13, v31);
  sub_100007000(v37);
  return a2;
}

uint64_t sub_100377948(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1003779A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v9 = [v7 contentView];
  [a6 pageMarginInsets];
  [v9 setLayoutMargins:?];

  v10 = EditorialQuote.text.getter();
  sub_1002804BC(v10, v11);
  v12 = EditorialQuote.attribution.getter();

  return sub_1002804C8(v12, v13);
}

double sub_100377ACC(uint64_t a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v47 = type metadata accessor for EditorialQuoteLayout.Metrics();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for EditorialQuoteLayout();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for LabelPlaceholderCompatibility();
  v55 = *(v54 - 8);
  *&v10 = __chkstk_darwin(v54).n128_u64[0];
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a5 pageMarginInsets];
  CGSize.subtracting(insets:)();
  v13 = [a5 traitCollection];
  v14 = UITraitCollection.isSizeClassCompact.getter();

  v15 = 4;
  if ((v14 & 1) == 0)
  {
    v15 = 1;
  }

  v52 = v15;
  v45 = a1;
  EditorialQuote.text.getter();
  v44 = v16;
  v17 = sub_1000367E8();
  if (qword_10096D4F8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for FontUseCase();
  sub_1000056A8(v18, qword_1009CEBA8);
  v19 = [a5 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v20 = type metadata accessor for Feature();
  v62 = v20;
  v21 = sub_1003781FC(&qword_100972E50, &type metadata accessor for Feature);
  v63 = v21;
  v22 = sub_1000056E0(v61);
  v23 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v24 = *(v20 - 8);
  v43 = v17;
  v25 = *(v24 + 104);
  v25(v22, enum case for Feature.measurement_with_labelplaceholder(_:), v20);
  isFeatureEnabled(_:)();
  v53 = a5;
  sub_100007000(v61);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v26 = *(v55 + 8);
  v55 += 8;
  v26(v12, v54);
  v45 = EditorialQuote.attribution.getter();
  v44 = v27;
  if (qword_10096D500 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v18, qword_1009CEBC0);
  v28 = [v53 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v59 = v20;
  v60 = v21;
  v29 = sub_1000056E0(v58);
  v25(v29, v23, v20);
  isFeatureEnabled(_:)();
  sub_100007000(v58);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v26(v12, v54);
  if (qword_10096D4F0 != -1)
  {
    swift_once();
  }

  v30 = v47;
  v31 = sub_1000056A8(v47, qword_1009CEB90);
  (*(v46 + 16))(v48, v31, v30);
  v32 = v62;
  v33 = v63;
  v34 = sub_10002A400(v61, v62);
  v57[3] = v32;
  v57[4] = *(v33 + 8);
  v35 = sub_1000056E0(v57);
  (*(*(v32 - 8) + 16))(v35, v34, v32);
  v36 = v59;
  v37 = v60;
  v38 = sub_10002A400(v58, v59);
  v56[3] = v36;
  v56[4] = *(v37 + 8);
  v39 = sub_1000056E0(v56);
  (*(*(v36 - 8) + 16))(v39, v38, v36);
  v40 = v49;
  EditorialQuoteLayout.init(metrics:quoteLabel:attributionLabel:)();
  sub_1003781FC(&unk_10098D260, &type metadata accessor for EditorialQuoteLayout);
  v41 = v51;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  (*(v50 + 8))(v40, v41);
  sub_100007000(v58);
  sub_100007000(v61);
  return a2;
}
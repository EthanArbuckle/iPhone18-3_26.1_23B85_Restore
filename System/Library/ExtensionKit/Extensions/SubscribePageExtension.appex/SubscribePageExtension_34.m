uint64_t sub_1003DC16C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10074EB64();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1003DC19C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v145 = a2;
  v116 = sub_10074F704();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_100754724();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_100750304();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v125 = (&v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v146 = sub_1007457B4();
  v141 = *(v146 - 8);
  __chkstk_darwin(v146);
  v123 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v124 = &v114 - v8;
  __chkstk_darwin(v9);
  v138 = &v114 - v10;
  __chkstk_darwin(v11);
  v131 = &v114 - v12;
  v13 = sub_10000C518(&unk_10093D6E0);
  __chkstk_darwin(v13 - 8);
  v137 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v136 = &v114 - v16;
  __chkstk_darwin(v17);
  v140 = &v114 - v18;
  __chkstk_darwin(v19);
  v130 = &v114 - v20;
  __chkstk_darwin(v21);
  v128 = (&v114 - v22);
  __chkstk_darwin(v23);
  v25 = &v114 - v24;
  v26 = sub_10074E984();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v142 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v143 = &v114 - v30;
  __chkstk_darwin(v31);
  v33 = &v114 - v32;
  __chkstk_darwin(v34);
  v36 = &v114 - v35;
  v37 = sub_10000C518(&unk_10092E450);
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v139 = &v114 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v129 = &v114 - v41;
  __chkstk_darwin(v42);
  v44 = &v114 - v43;
  v150 = a1;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v45 = *(v38 + 8);
  v147 = v37;
  v148 = v45;
  v46 = v37;
  v47 = v38 + 8;
  v45(v44, v46);
  v48 = *(v27 + 104);
  v135 = v27 + 104;
  v134 = v48;
  v48(v33, enum case for Shelf.ContentType.todayCard(_:), v26);
  v49 = sub_1003DD1F0(&qword_100926DD0, &type metadata accessor for Shelf.ContentType);
  sub_100753274();
  v149 = v26;
  v133 = v49;
  sub_100753274();
  if (v151 == v155 && v152 == v156)
  {
    v122 = 1;
  }

  else
  {
    v122 = sub_100754754();
  }

  v50 = *(v27 + 8);
  v51 = v33;
  v52 = v149;
  v50(v51, v149);
  v132 = v50;
  v50(v36, v52);

  v53 = v128;
  v54 = v130;
  sub_100747BB4();
  sub_10000C8CC(v53, &unk_10093D6E0);
  sub_100028CD0(v54, v25);
  v55 = *(v38 + 48);
  v56 = v147;
  v130 = (v38 + 48);
  v128 = v55;
  v57 = v55(v25, 1, v147);
  v144 = v27 + 8;
  if (v57 == 1)
  {
    sub_10000C8CC(v25, &unk_10093D6E0);
    v117 = 0;
    v58 = v146;
    v59 = v141;
    v60 = v131;
    v61 = v148;
  }

  else
  {
    swift_getKeyPath();
    sub_1007525B4();

    v62 = v151;
    v61 = v148;
    v148(v25, v56);
    v58 = v146;
    v59 = v141;
    v60 = v131;
    if (v62)
    {

      v117 = 1;
    }

    else
    {
      v117 = 0;
    }
  }

  v63 = v129;
  sub_100747C04();
  swift_getKeyPath();
  v64 = v147;
  sub_1007525B4();

  v61(v63, v64);
  v65 = *(v59 + 104);
  v66 = v138;
  LODWORD(v141) = enum case for ShelfBackground.none(_:);
  v131 = v65;
  (v65)(v138);
  v129 = sub_1003DD1F0(&qword_100940610, &type metadata accessor for ShelfBackground);
  v121 = sub_100753014();
  v67 = *(v59 + 8);
  v67(v66, v58);
  v67(v60, v58);
  v146 = v47;
  v68 = v136;
  v69 = v137;
  sub_100747BB4();
  v70 = v68;
  v71 = v64;
  sub_10000C8CC(v70, &unk_10093D6E0);
  v72 = v140;
  sub_100028CD0(v69, v140);
  if (v128(v72, 1, v64) == 1)
  {
    sub_10000C8CC(v72, &unk_10093D6E0);
    v73 = 1;
  }

  else
  {
    swift_getKeyPath();
    v74 = v123;
    sub_1007525B4();

    v148(v72, v64);
    v75 = v124;
    (*(v59 + 32))(v124, v74, v58);
    (v131)(v60, v141, v58);
    v73 = sub_100753014();
    v67(v60, v58);
    v67(v75, v58);
  }

  v76 = v143;
  v77 = sub_100747B94();
  v78 = sub_1007537E4();

  v79 = v139;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v148(v79, v71);
  v80 = v142;
  v134(v142, enum case for Shelf.ContentType.unifiedMessage(_:), v149);
  sub_100753274();
  sub_100753274();
  if (v151 == v155 && v152 == v156)
  {
    v81 = v80;
    v82 = v149;
    v83 = v132;
    v132(v81, v149);
    v83(v76, v82);

LABEL_17:
    v87 = v125;
    *v125 = UIFontTextStyleBody;
    v88 = v126;
    v89 = v127;
    (*(v126 + 104))(v87, enum case for FontSource.textStyle(_:), v127);
    v90 = sub_100750B04();
    v91 = v145;
    v145[3] = v90;
    v91[4] = &protocol witness table for StaticDimension;
    sub_10000D134(v91);
    v153 = v89;
    v154 = &protocol witness table for FontSource;
    v92 = sub_10000D134(&v151);
    (*(v88 + 16))(v92, v87, v89);
    v93 = UIFontTextStyleBody;
    sub_100750B14();
    return (*(v88 + 8))(v87, v89);
  }

  v84 = sub_100754754();
  v85 = v149;
  v86 = v132;
  v132(v80, v149);
  v86(v76, v85);

  if (v84)
  {
    goto LABEL_17;
  }

  if ((v122 & 1) == 0)
  {
LABEL_23:
    v99 = sub_100750B04();
    v100 = v145;
    v145[3] = v99;
    v100[4] = &protocol witness table for StaticDimension;
    v101 = sub_10000D134(v100);
    if (v78)
    {
      if (qword_100921710 != -1)
      {
        swift_once();
      }

      v102 = qword_1009820B0;
    }

    else
    {
      if (qword_100921708 != -1)
      {
        swift_once();
      }

      v102 = qword_100982098;
    }

    v103 = sub_10000D0FC(v99, v102);
    return (*(*(v99 - 8) + 16))(v101, v103, v99);
  }

  if (v121 & v73)
  {
    if (v117)
    {
      if (v78)
      {
        v95 = v114;
        sub_100747B84();
        sub_10074F5B4();
        v97 = v96;
        result = (*(v115 + 8))(v95, v116);
        v98 = v145;
        v145[3] = &type metadata for CGFloat;
        v98[4] = &protocol witness table for CGFloat;
        *v98 = v97;
      }

      else
      {
        if (qword_100921718 != -1)
        {
          swift_once();
        }

        v110 = sub_100750B04();
        v111 = sub_10000D0FC(v110, qword_1009820C8);
        v112 = v145;
        v145[3] = v110;
        v112[4] = &protocol witness table for StaticDimension;
        v113 = sub_10000D134(v112);
        return (*(*(v110 - 8) + 16))(v113, v111, v110);
      }

      return result;
    }

    goto LABEL_23;
  }

  if (qword_100921710 != -1)
  {
    swift_once();
  }

  v104 = sub_100750B04();
  sub_10000D0FC(v104, qword_1009820B0);
  v105 = sub_100747B94();
  v106 = v118;
  sub_1007502D4();
  sub_100750AD4();
  v108 = v107;

  result = (*(v119 + 8))(v106, v120);
  v109 = v145;
  v145[3] = &type metadata for CGFloat;
  v109[4] = &protocol witness table for CGFloat;
  *v109 = v108 + v108;
  return result;
}

uint64_t sub_1003DD1C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10074EB64();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1003DD1F0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1003DD238(uint64_t a1)
{
  v2 = v1;
  if (a1 >= 1)
  {
    [v2 setLineSpacing:a1];
    v4 = [v2 font];
    if (v4)
    {
      v5 = v4;
      [v4 lineHeight];
      v7 = v6;

      v8 = [objc_allocWithZone(NSNumber) initWithDouble:a1 - v7];
      v9 = sub_10014D2B8();
      *(&v23 + 1) = v9;
      *&v22 = v8;
      v10 = [v2 _defaultAttributes];
      if (v10)
      {
        v11 = v10;
        type metadata accessor for Key(0);
        sub_1003DE2B0(&qword_1009276F0, type metadata accessor for Key);
        v12 = sub_100752F44();

        v21 = v12;
        if (v9)
        {
          sub_10000C610(&v22, v20);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v19 = v12;
          sub_1006734F4(v20, NSBaselineOffsetAttributeName, isUniquelyReferenced_nonNull_native);
          v21 = v12;
          if (v12)
          {
LABEL_6:
            v14.super.isa = sub_100752F34().super.isa;

LABEL_12:
            [v2 _setDefaultAttributes:{v14.super.isa, v19}];

            return;
          }
        }

        else
        {
          sub_1000277BC(&v22);
          sub_1003DD56C(NSBaselineOffsetAttributeName, v20);
          sub_1000277BC(v20);
          if (v21)
          {
            goto LABEL_6;
          }
        }

        v14.super.isa = 0;
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  [v1 setLineSpacing:0];
  v22 = 0u;
  v23 = 0u;
  v15 = [v1 _defaultAttributes];
  if (!v15)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v16 = v15;
  type metadata accessor for Key(0);
  sub_1003DE2B0(&qword_1009276F0, type metadata accessor for Key);
  v17 = sub_100752F44();

  v21 = v17;
  sub_1000277BC(&v22);
  sub_1003DD56C(NSBaselineOffsetAttributeName, v20);
  sub_1000277BC(v20);
  if (v21)
  {
    v18.super.isa = sub_100752F34().super.isa;
  }

  else
  {
    v18.super.isa = 0;
  }

  [v2 _setDefaultAttributes:v18.super.isa];
}

double sub_1003DD56C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_100415ADC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100674F6C();
      v9 = v11;
    }

    sub_10000C610((*(v9 + 56) + 32 * v7), a2);
    sub_1003DD748(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1003DD60C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1003861D0(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10067677C();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1003DDF50(v6, v8);
  *v3 = v8;
  return v9;
}

double sub_1003DD6A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1003861D0(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1006768E8();
      v10 = v12;
    }

    sub_10000C610((*(v10 + 56) + 32 * v8), a3);
    sub_1003DE100(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void sub_1003DD748(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1007543C4() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_100753094();
      sub_100754834();
      v11 = v10;
      sub_100753174();
      v12 = sub_100754884();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_1003DD914(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1007543C4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_100754824();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1003DDA84(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1007543C4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_100754824();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_100752914() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1003DDC30(int64_t a1, uint64_t a2)
{
  v38 = sub_10074F7D4();
  v4 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_1007543C4();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_1003DE2B0(&qword_100936108, &type metadata accessor for BadgeType);
      v22 = sub_100752FA4();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

uint64_t sub_1003DDF50(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1007543C4() + 1) & ~v5;
    do
    {
      sub_100754834();

      sub_100753174();
      v9 = sub_100754884();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1003DE100(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1007543C4() + 1) & ~v5;
    do
    {
      sub_100754834();

      sub_100753174();
      v10 = sub_100754884();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1003DE2B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003DE2FC()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007484E4();
  sub_100039C50(v4, qword_100980170);
  v24 = sub_10000D0FC(v4, qword_100980170);
  if (qword_100921240 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_1009813F8);
  v26 = *(*(v5 - 8) + 16);
  v31 = v5;
  v26(v3, v6, v5);
  v7 = enum case for FontSource.useCase(_:);
  v25 = v1[13];
  v23 = v1 + 13;
  v25(v3, enum case for FontSource.useCase(_:), v0);
  v32 = sub_100750B04();
  v54[3] = v32;
  v54[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v54);
  v52 = v0;
  v53 = &protocol witness table for FontSource;
  v8 = sub_10000D134(v51);
  v9 = v1[2];
  v27 = v1 + 2;
  v28 = v9;
  v9(v8, v3, v0);
  sub_100750B14();
  v10 = v1[1];
  v29 = v1 + 1;
  v30 = v10;
  v10(v3, v0);
  v22 = v6;
  v11 = v5;
  v12 = v26;
  v26(v3, v6, v11);
  HIDWORD(v21) = v7;
  v13 = v25;
  v25(v3, v7, v0);
  v52 = v32;
  v53 = &protocol witness table for StaticDimension;
  sub_10000D134(v51);
  v49 = v0;
  v50 = &protocol witness table for FontSource;
  v14 = sub_10000D134(v48);
  v28(v14, v3, v0);
  sub_100750B14();
  v30(v3, v0);
  v12(v3, v6, v31);
  v13(v3, v7, v0);
  v15 = v32;
  v49 = v32;
  v50 = &protocol witness table for StaticDimension;
  sub_10000D134(v48);
  v46 = v0;
  v47 = &protocol witness table for FontSource;
  v16 = sub_10000D134(v45);
  v17 = v28;
  v28(v16, v3, v0);
  sub_100750B14();
  v18 = v30;
  v30(v3, v0);
  v26(v3, v22, v31);
  v25(v3, HIDWORD(v21), v0);
  v46 = v15;
  v47 = &protocol witness table for StaticDimension;
  sub_10000D134(v45);
  v43 = v0;
  v44 = &protocol witness table for FontSource;
  v19 = sub_10000D134(v42);
  v17(v19, v3, v0);
  sub_100750B14();
  v18(v3, v0);
  v43 = &type metadata for Double;
  v44 = &protocol witness table for Double;
  v41 = &protocol witness table for Double;
  v42[0] = 0;
  v40 = &type metadata for Double;
  v38 = &protocol witness table for Double;
  v39 = 0;
  v37 = &type metadata for Double;
  v36 = 0;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  return sub_1007484D4();
}

id sub_1003DE7E0()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100933290);
  __chkstk_darwin(v2 - 8);
  v4 = &v14[-v3];
  v5 = sub_10000C518(&unk_1009332A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_bodyText;
  swift_beginAccess();
  sub_100016B4C(&v1[v9], v4, &unk_100933290);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000C8CC(v4, &unk_100933290);
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_bodyLabel] setAttributedText:0];
    return [v1 setNeedsLayout];
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_1007455C4();
    sub_1007455B4();
    v11 = sub_100743EA4();
    v12 = sub_1001D3738(v11, sub_1000E12F0);

    v13 = sub_100743E94();
    sub_10004DF04(v13, 0, v12);

    [v1 setNeedsLayout];
    return (*(v6 + 8))(v8, v5);
  }
}

void sub_1003DEA84()
{
  v1 = v0;
  v64 = sub_10074AB44();
  v2 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_10000C518(&unk_100935110);
  v4 = *(v62 - 8);
  *&v5 = __chkstk_darwin(v62).n128_u64[0];
  v61 = &v49 - v6;
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_supplementaryItems];
  v54 = *(v7 + 16);
  if (v54)
  {
    v8 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_supplementaryItemLabels;
    v59 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v60 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_supplementaryItemReusePool;
    v58 = v4 + 16;
    v57 = enum case for DirectionalTextAlignment.leading(_:);
    v56 = (v2 + 104);
    v55 = v4 + 8;

    v9 = 0;
    v52 = v0;
    v51 = v4;
    v50 = v7;
    v53 = v8;
    while (v9 < *(v7 + 16))
    {
      v10 = *(v4 + 72);
      v67 = v9;
      v12 = v61;
      v11 = v62;
      (*(v4 + 16))(v61, v59 + v10 * v9, v62);
      swift_beginAccess();
      sub_10000C518(&qword_100936178);
      sub_1007512B4();
      swift_endAccess();
      v13 = v76;
      (*v56)(v63, v57, v64);
      v14 = v13;
      sub_100745BF4();

      v15 = [v1 contentView];
      v66 = v14;
      [v15 addSubview:v14];

      sub_1007455C4();
      v16 = sub_10074CFD4();

      v17 = sub_1007455B4();
      (*(v4 + 8))(v12, v11);
      v65 = v16;
      v18 = sub_100743EA4();
      v19 = *(v18 + 16);
      if (v19)
      {
        v76 = _swiftEmptyArrayStorage;
        sub_10001E1C8(0, v19, 0);
        v75 = v76;
        v20 = v18 + 64;
        v21 = sub_1007543B4();
        v22 = 0;
        v68 = v18 + 72;
        v69 = v19;
        v70 = v18 + 64;
        while ((v21 & 0x8000000000000000) == 0 && v21 < 1 << *(v18 + 32))
        {
          v25 = v21 >> 6;
          if ((*(v20 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
          {
            goto LABEL_30;
          }

          v26 = *(v18 + 36);
          v71 = v22;
          v72 = v26;
          v27 = (*(v18 + 48) + 16 * v21);
          v28 = *v27;
          v29 = v27[1];
          v30 = *(*(v18 + 56) + 8 * v21);
          v31 = v75;
          v76 = v75;
          v33 = v75[2];
          v32 = v75[3];
          v73 = v28;
          v74 = v33 + 1;

          if (v33 >= v32 >> 1)
          {
            sub_10001E1C8((v32 > 1), v74, 1);
            v31 = v76;
          }

          v34 = v73;
          v31[2] = v74;
          v75 = v31;
          v35 = &v31[4 * v33];
          v35[4] = v34;
          v35[5] = v29;
          v35[6] = v30;
          v35[7] = v17;
          v23 = 1 << *(v18 + 32);
          if (v21 >= v23)
          {
            goto LABEL_31;
          }

          v20 = v70;
          v36 = *(v70 + 8 * v25);
          if ((v36 & (1 << v21)) == 0)
          {
            goto LABEL_32;
          }

          if (v72 != *(v18 + 36))
          {
            goto LABEL_33;
          }

          v37 = v36 & (-2 << (v21 & 0x3F));
          if (v37)
          {
            v23 = __clz(__rbit64(v37)) | v21 & 0x7FFFFFFFFFFFFFC0;
            v24 = v69;
          }

          else
          {
            v38 = v25 << 6;
            v39 = v25 + 1;
            v24 = v69;
            v40 = (v68 + 8 * v25);
            while (v39 < (v23 + 63) >> 6)
            {
              v42 = *v40++;
              v41 = v42;
              v38 += 64;
              ++v39;
              if (v42)
              {
                sub_1001D3DC4(v21, v72, 0);
                v23 = __clz(__rbit64(v41)) + v38;
                goto LABEL_7;
              }
            }

            sub_1001D3DC4(v21, v72, 0);
          }

LABEL_7:
          v22 = v71 + 1;
          v21 = v23;
          if (v71 + 1 == v24)
          {

            v1 = v52;
            v4 = v51;
            v7 = v50;
            v43 = v75;
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        break;
      }

      v43 = _swiftEmptyArrayStorage;
LABEL_24:
      v44 = sub_100743E94();
      v45 = v66;
      sub_10004DF04(v44, 0, v43);

      v46 = v53;
      swift_beginAccess();
      v47 = v45;
      sub_100753284();
      if (*((*(v1 + v46) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v46) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      v48 = v67 + 1;
      sub_100753344();
      swift_endAccess();

      v9 = v48;
      if (v48 == v54)
      {

        goto LABEL_28;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_28:
    [v1 setNeedsLayout];
  }
}

id sub_1003DF118@<X0>(void *a1@<X8>)
{
  v2 = sub_100750534();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921240 != -1)
  {
    swift_once();
  }

  v6 = sub_10000D0FC(v2, qword_1009813F8);
  (*(v3 + 16))(v5, v6, v2);
  v7 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  result = sub_10004DA8C(v5, 0, 0);
  *a1 = result;
  return result;
}

id sub_1003DF268(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_10000C518(&qword_100933250);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  v8 = sub_100751374();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  v15 = *a1;
  swift_beginAccess();
  sub_100016B4C(&v2[v15], v7, &qword_100933250);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000C8CC(v7, &qword_100933250);
    result = *&v2[*a2];
    if (result)
    {
      return [result setHidden:1];
    }
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    v17 = *a2;
    v18 = *&v2[*a2];
    if (v18)
    {
      (*(v9 + 16))(v11, v14, v8);
      v19 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
      swift_beginAccess();
      v20 = *(v9 + 24);
      v21 = v18;
      v20(&v18[v19], v11, v8);
      swift_endAccess();
      v22 = v21;
      [v22 setNeedsLayout];
      v23 = *(v9 + 8);
      v23(v11, v8);
      [v22 setHidden:0];

      return (v23)(v14, v8);
    }

    else
    {
      (*(v9 + 16))(v11, v14, v8);
      v24 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v25 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
      swift_beginAccess();
      v32 = *(v9 + 40);
      v26 = v24;
      v32(&v24[v25], v11, v8);
      swift_endAccess();

      v27 = *&v2[v17];
      if (v27)
      {
        [v27 removeFromSuperview];
        v28 = *&v2[v17];
      }

      else
      {
        v28 = 0;
      }

      *&v2[v17] = v26;
      v29 = v26;

      v30 = [v2 contentView];
      [v30 addSubview:v29];

      [v2 setNeedsLayout];
      return (*(v9 + 8))(v14, v8);
    }
  }

  return result;
}

uint64_t sub_1003DF658()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v31 = sub_100750354();
  v3 = *(v31 - 8);
  __chkstk_darwin(v31);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007484E4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100748504();
  v10 = *(v30 - 8);
  *&v11 = __chkstk_darwin(v30).n128_u64[0];
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45.receiver = v1;
  v45.super_class = ObjectType;
  objc_msgSendSuper2(&v45, "layoutSubviews", v11);
  v14 = [v1 contentView];
  sub_100009D34();
  sub_1007477B4();

  if (qword_100920B80 != -1)
  {
    swift_once();
  }

  v15 = sub_10000D0FC(v6, qword_100980170);
  (*(v7 + 16))(v9, v15, v6);
  v16 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_bodyLabel];
  v43 = type metadata accessor for DynamicTypeLinkedLabel();
  v44 = &protocol witness table for UIView;
  v42 = v16;
  swift_beginAccess();
  v17 = v16;

  sub_100158374(v18);

  v19 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_topSeparatorView];
  if (v19)
  {
    v20 = type metadata accessor for SeparatorView();
    v21 = &protocol witness table for UIView;
    v22 = v19;
  }

  else
  {
    v22 = 0;
    v20 = 0;
    v21 = 0;
    v38 = 0;
    v39 = 0;
  }

  v37 = v22;
  v40 = v20;
  v41 = v21;
  v23 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_middleSeparatorView];
  if (v23)
  {
    v24 = type metadata accessor for SeparatorView();
    v25 = &protocol witness table for UIView;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v34 = 0;
    v33 = 0;
  }

  v32 = v23;
  v35 = v24;
  v36 = v25;
  v26 = v19;
  v27 = v23;
  sub_1007484F4();
  sub_1007484C4();
  (*(v3 + 8))(v5, v31);
  return (*(v10 + 8))(v13, v30);
}

id sub_1003DFA9C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_1003E000C();
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_supplementaryItems] = _swiftEmptyArrayStorage;

  sub_1003DEA84();
  result = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_middleSeparatorView];
  if (result)
  {
    return [result setHidden:1];
  }

  return result;
}

uint64_t type metadata accessor for PrivacyHeaderCollectionViewCell()
{
  result = qword_100936150;
  if (!qword_100936150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003DFD8C()
{
  sub_1002296F8(319, &qword_100928E60, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_10014CB10();
    if (v1 <= 0x3F)
    {
      sub_1003DFF38();
      if (v2 <= 0x3F)
      {
        sub_1002296F8(319, &qword_10092F000, &type metadata accessor for Separator);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1003DFF38()
{
  if (!qword_100936160)
  {
    sub_10000C724(&qword_100936168);
    sub_1003DFFA8();
    v0 = sub_1007512F4();
    if (!v1)
    {
      atomic_store(v0, &qword_100936160);
    }
  }
}

unint64_t sub_1003DFFA8()
{
  result = qword_100936170;
  if (!qword_100936170)
  {
    sub_10000C724(&qword_100936168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936170);
  }

  return result;
}

uint64_t sub_1003E000C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_supplementaryItemLabels;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:
    *(v1 + v2) = _swiftEmptyArrayStorage;
  }

  result = sub_100754664();
  v5 = result;
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v13 = v2;
    v6 = UIAccessibilityTraitLink;
    v7 = UIAccessibilityTraitStaticText;

    v8 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = sub_100754574();
      }

      else
      {
        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      ++v8;
      swift_beginAccess();
      sub_10000C518(&qword_100936178);
      sub_1007512D4();
      swift_endAccess();
      [v10 setAttributedText:0];
      *&v10[qword_100924038] = 0;

      v11 = qword_100924030;
      swift_beginAccess();
      *&v10[v11] = _swiftEmptyArrayStorage;

      if (*(*&v10[v11] + 16))
      {
        v12 = v6;
      }

      else
      {
        v12 = v7;
      }

      [v10 setAccessibilityTraits:v12];
      [v10 removeFromSuperview];
    }

    while (v5 != v8);

    v2 = v13;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

char *sub_1003E0208()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_100752AC4();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v4 = &ObjectType - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074AB44();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v33 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100750534();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&qword_100936168);
  __chkstk_darwin(v11);
  v12 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_itemLayoutContext;
  v13 = sub_1007469A4();
  (*(*(v13 - 8) + 56))(&v1[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_bodyText;
  v15 = sub_10000C518(&unk_1009332A0);
  (*(*(v15 - 8) + 56))(&v1[v14], 1, 1, v15);
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_supplementaryItemLabels] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_supplementaryItems] = _swiftEmptyArrayStorage;
  v16 = type metadata accessor for DynamicTypeLinkedLabel();
  sub_100750624();
  sub_1003DFFA8();
  sub_1007512E4();
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_topSeparatorView] = 0;
  v17 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_topSeparator;
  v18 = sub_100751374();
  v19 = *(*(v18 - 8) + 56);
  v19(&v1[v17], 1, 1, v18);
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_middleSeparatorView] = 0;
  v19(&v1[OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_middleSeparator], 1, 1, v18);
  v1[OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_isDetailHeader] = 0;
  if (qword_100921240 != -1)
  {
    swift_once();
  }

  v20 = sub_10000D0FC(v7, qword_1009813F8);
  (*(v8 + 16))(v10, v20, v7);
  v21 = objc_allocWithZone(v16);
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_bodyLabel] = sub_10004DA8C(v10, 0, 0);
  v40.receiver = v1;
  v40.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v40, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v23 = [v22 contentView];
  [v23 setClipsToBounds:0];

  v24 = [v22 contentView];
  [v24 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v25 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_bodyLabel;
  v26 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_bodyLabel];
  (*(v34 + 104))(v33, enum case for DirectionalTextAlignment.leading(_:), v35);
  v27 = v26;
  sub_100745BF4();

  v28 = *&v22[v25];
  memset(v39, 0, sizeof(v39));
  memset(v38, 0, sizeof(v38));
  v29 = v28;
  sub_100752A74();
  sub_10000C8CC(v38, &unk_100923520);
  sub_10000C8CC(v39, &unk_100923520);
  sub_100753C74();

  (*(v36 + 8))(v4, v37);
  v30 = [v22 contentView];

  [v30 addSubview:*&v22[v25]];
  return v22;
}

void sub_1003E07D4()
{
  v1 = sub_10000C518(&qword_100936168);
  __chkstk_darwin(v1);
  v2 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_itemLayoutContext;
  v3 = sub_1007469A4();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_bodyText;
  v5 = sub_10000C518(&unk_1009332A0);
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_supplementaryItemLabels) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_supplementaryItems) = _swiftEmptyArrayStorage;
  type metadata accessor for DynamicTypeLinkedLabel();
  sub_100750624();
  sub_1003DFFA8();
  sub_1007512E4();
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_topSeparatorView) = 0;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_topSeparator;
  v7 = sub_100751374();
  v8 = *(*(v7 - 8) + 56);
  v8(v0 + v6, 1, 1, v7);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_middleSeparatorView) = 0;
  v8(v0 + OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_middleSeparator, 1, 1, v7);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_isDetailHeader) = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_1003E0A44()
{
  v1 = sub_100742F54();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100742F74();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PageFacetsViewController.Item(0);
  __chkstk_darwin(v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003E75F0(v0, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(sub_10000C518(&qword_1009362B8) + 48);
    (*(v6 + 32))(v8, v11, v5);
    (*(v2 + 32))(v4, &v11[v12], v1);
    sub_100754844(1uLL);
    sub_1003E7654(&qword_1009362C0, &type metadata accessor for PageFacets.Facet);
    sub_100752FB4();
    sub_1003E7654(&qword_100925BC0, &type metadata accessor for PageFacets.Facet.Option);
    sub_100752FB4();
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    sub_100754844(0);
    sub_1003E7654(&qword_1009362C0, &type metadata accessor for PageFacets.Facet);
    sub_100752FB4();
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int sub_1003E0D80()
{
  sub_100754834();
  sub_1003E0A44();
  return sub_100754884();
}

Swift::Int sub_1003E0DC4()
{
  sub_100754834();
  sub_1003E0A44();
  return sub_100754884();
}

void sub_1003E0E04()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(v3 + 8))(v1, ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1003E0ED8(uint64_t a1)
{
  v3 = sub_100742F84();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&qword_100932510);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  v10 = sub_10000C518(&qword_100936318);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  v14 = OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_pageFacets;
  swift_beginAccess();
  v15 = *(v11 + 56);
  sub_1003E8B0C(v1 + v14, v13);
  sub_1003E8B0C(a1, &v13[v15]);
  v16 = *(v4 + 48);
  if (v16(v13, 1, v3) == 1)
  {
    if (v16(&v13[v15], 1, v3) == 1)
    {
      return sub_10000C8CC(v13, &qword_100932510);
    }

    goto LABEL_6;
  }

  sub_1003E8B0C(v13, v9);
  if (v16(&v13[v15], 1, v3) == 1)
  {
    (*(v4 + 8))(v9, v3);
LABEL_6:
    sub_10000C8CC(v13, &qword_100936318);
    return sub_1003E11F4();
  }

  (*(v4 + 32))(v6, &v13[v15], v3);
  sub_1003E7654(&qword_100936320, &type metadata accessor for PageFacets);
  v18 = sub_100753014();
  v19 = *(v4 + 8);
  v19(v6, v3);
  v19(v9, v3);
  result = sub_10000C8CC(v13, &qword_100932510);
  if ((v18 & 1) == 0)
  {
    return sub_1003E11F4();
  }

  return result;
}

uint64_t sub_1003E11F4()
{
  v1 = v0;
  v2 = sub_10000C518(&qword_1009362E0);
  __chkstk_darwin(v2 - 8);
  v82 = &v67 - v3;
  v4 = type metadata accessor for PageFacetsViewController.Item(0);
  v100 = *(v4 - 8);
  v101 = v4;
  __chkstk_darwin(v4);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v98 = &v67 - v8;
  v9 = sub_100742F74();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100742E54();
  v86 = *(v13 - 8);
  __chkstk_darwin(v13);
  v83 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&qword_100932510);
  __chkstk_darwin(v15 - 8);
  v17 = &v67 - v16;
  v18 = sub_100742F84();
  v71 = *(v18 - 8);
  __chkstk_darwin(v18);
  v70 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_10000C518(&qword_1009362E8);
  v69 = *(v88 - 8);
  __chkstk_darwin(v88);
  v21 = &v67 - v20;
  sub_1003E7654(&qword_1009362F0, &type metadata accessor for PageFacets.FacetGroup);
  sub_1003E7654(&qword_1009362F8, type metadata accessor for PageFacetsViewController.Item);
  v87 = v21;
  v85 = v13;
  sub_100751784();
  v22 = OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_pageFacets;
  swift_beginAccess();
  v23 = v1 + v22;
  v24 = v71;
  sub_1003E8B0C(v23, v17);
  if ((*(v24 + 48))(v17, 1, v18) == 1)
  {
    result = sub_10000C8CC(v17, &qword_100932510);
    v26 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_diffableDataSource);
    if (v26)
    {
      v27 = v26;
      v28 = v87;
      sub_1007518C4();

      return (*(v69 + 8))(v28, v88);
    }

    goto LABEL_33;
  }

  v29 = *(v24 + 32);
  v68 = v18;
  v29(v70, v17, v18);
  result = sub_100742E64();
  v81 = *(result + 16);
  if (v81)
  {
    v30 = 0;
    v80 = *(v86 + 80);
    v79 = (v80 + 32) & ~v80;
    v78 = result + v79;
    v77 = v86 + 16;
    v76 = v86 + 8;
    v99 = v10 + 16;
    v91 = (v10 + 8);
    v72 = (v86 + 56);
    v75 = xmmword_1007A5A00;
    v74 = v1;
    v89 = v10;
    v90 = v6;
    v97 = v12;
    v73 = result;
    while (v30 < *(result + 16))
    {
      v33 = v85;
      v34 = *(v86 + 72);
      v84 = v30;
      v96 = *(v86 + 16);
      v35 = v83;
      v96(v83, v78 + v34 * v30, v85);
      sub_10000C518(&qword_100936300);
      v36 = v79;
      v37 = swift_allocObject();
      *(v37 + 1) = v75;
      v96(&v37[v36], v35, v33);
      v38._rawValue = v37;
      sub_100751724(v38);

      v39 = sub_100742E44();
      result = (*(v86 + 8))(v35, v33);
      v95 = *(v39 + 16);
      if (v95)
      {
        v40 = 0;
        v93 = v39 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        v41 = _swiftEmptyArrayStorage;
        v42 = v91;
        v94 = v39;
        while (v40 < *(v39 + 16))
        {
          v43 = *(v10 + 72);
          v96 = v40;
          v44 = *(v10 + 16);
          v44(v12, v93 + v43 * v40, v9);
          if (sub_100742EB4())
          {
            v45 = sub_100742F64();
            v46 = *(v45 + 16);
            if (v46)
            {
              v47 = v9;
              v48 = sub_100742F54();
              v49 = *(v48 - 8);
              v50 = *(v49 + 80);
              v92 = v45;
              v51 = v45 + ((v50 + 32) & ~v50);
              v52 = *(v49 + 72);
              v53 = (v49 + 16);
              v54 = v98;
              do
              {
                v55 = *(sub_10000C518(&qword_1009362B8) + 48);
                v44(v54, v97, v47);
                (*v53)(v54 + v55, v51, v48);
                swift_storeEnumTagMultiPayload();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v41 = sub_1002561A0(0, v41[2] + 1, 1, v41);
                }

                v57 = v41[2];
                v56 = v41[3];
                if (v57 >= v56 >> 1)
                {
                  v41 = sub_1002561A0(v56 > 1, v57 + 1, 1, v41);
                }

                v41[2] = v57 + 1;
                v58 = v41 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v57;
                v54 = v98;
                sub_1003E898C(v98, v58);
                v51 += v52;
                --v46;
              }

              while (v46);

              v9 = v47;
              v10 = v89;
              v6 = v90;
              v12 = v97;
              v42 = v91;
            }

            else
            {
            }

            result = (*v42)(v12, v9);
          }

          else
          {
            v44(v6, v12, v9);
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v41 = sub_1002561A0(0, v41[2] + 1, 1, v41);
            }

            v60 = v41[2];
            v59 = v41[3];
            if (v60 >= v59 >> 1)
            {
              v41 = sub_1002561A0(v59 > 1, v60 + 1, 1, v41);
            }

            (*v42)(v12, v9);
            v41[2] = v60 + 1;
            result = sub_1003E898C(v6, v41 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v60);
          }

          v39 = v94;
          v40 = v96 + 1;
          if (v96 + 1 == v95)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        break;
      }

LABEL_6:

      v31 = v84 + 1;
      v32 = v82;
      (*v72)(v82, 1, 1, v85);
      sub_100751704();
      v30 = v31;

      sub_10000C8CC(v32, &qword_1009362E0);
      v1 = v74;
      result = v73;
      if (v31 == v81)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_29:

  v61 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_diffableDataSource);
  v62 = v68;
  v63 = v71;
  v64 = v70;
  if (v61)
  {
    v65 = v61;
    v66 = v87;
    sub_1007518C4();

    (*(v63 + 8))(v64, v62);
    return (*(v69 + 8))(v66, v88);
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_1003E1CD0()
{
  v1 = v0;
  v2 = sub_100742E54();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&qword_1009362E8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - v8;
  v10 = OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_diffableDataSource;
  v11 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_diffableDataSource];
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = v11;
  sub_1007518F4();

  v13 = sub_100751774();
  v14 = *(v13 + 16);
  if (!v14)
  {

    v26 = *&v1[v10];
    if (v26)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v34 = v10;
  v35 = v1;
  v36 = v7;
  v37 = v13;
  v15 = v2;
  v17 = *(v3 + 16);
  v16 = v3 + 16;
  v38 = v17;
  v18 = v9;
  v19 = v13 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
  v20 = *(v16 + 56);
  v21 = v6;
  v22 = (v16 - 8);
  do
  {
    v38(v5, v19, v15);
    v23 = v16;
    v24 = sub_100751734();
    (*v22)(v5, v15);
    v25._rawValue = v24;
    sub_100751714(v25);
    v16 = v23;

    v19 += v20;
    --v14;
  }

  while (v14);

  v6 = v21;
  v1 = v35;
  v7 = v36;
  v9 = v18;
  v26 = *&v35[v34];
  if (!v26)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_6:
  v27 = v26;
  sub_1007518C4();

  v28 = &v1[OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_preselectionContentOffset];
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_preselectionContentOffset + 16])
  {
    (*(v7 + 8))(v9, v6);
    return;
  }

  v30 = *v28;
  v29 = v28[1];
  v31 = [v1 collectionView];
  if (v31)
  {
    v32 = v31;
    [v31 setContentOffset:{v30, v29}];

    (*(v7 + 8))(v9, v6);
    *v28 = 0.0;
    v28[1] = 0.0;
    *(v28 + 16) = 1;
    return;
  }

LABEL_13:
  __break(1u);
}

id sub_1003E1FD8()
{
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "viewDidLoad");
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = result;
  v3 = objc_opt_self();
  v4 = [v3 systemBackgroundColor];
  [v2 setBackgroundColor:v4];

  result = [v0 collectionView];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  v6 = [v3 systemBackgroundColor];
  [v5 setBackgroundColor:v6];

  v7 = sub_1003E2214();
  v8 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_diffableDataSource];
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_diffableDataSource] = v7;

  result = [v0 collectionView];
  if (result)
  {
    v9 = result;
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = objc_allocWithZone(UICollectionViewCompositionalLayout);
    v14[4] = sub_1003E8B04;
    v14[5] = v10;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_1002B6430;
    v14[3] = &unk_100874460;
    v12 = _Block_copy(v14);

    v13 = [v11 initWithSectionProvider:v12];
    _Block_release(v12);

    [v9 setCollectionViewLayout:v13];

    sub_1003E2628();
    return sub_1003E11F4();
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_1003E2214()
{
  v27 = sub_10000C518(&qword_100936328);
  v1 = *(v27 - 8);
  __chkstk_darwin(v27);
  v23[1] = v2;
  v24 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = v23 - v4;
  v25 = sub_10000C518(&qword_100936330);
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v25);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v23 - v10;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100016C60(0, &qword_100925218);
  type metadata accessor for PageFacetsViewController.Item(0);
  sub_100753674();
  sub_100753094();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100016C60(0, &qword_100925390);
  v26 = v5;
  sub_100753684();
  result = [v0 collectionView];
  if (result)
  {
    v13 = v25;
    (*(v6 + 16))(v8, v11, v25);
    v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v15 = swift_allocObject();
    (*(v6 + 32))(v15 + v14, v8, v13);
    v16 = objc_allocWithZone(sub_10000C518(&qword_100936338));
    v17 = sub_100751884();
    v18 = v24;
    v19 = v26;
    v20 = v27;
    (*(v1 + 16))(v24, v26, v27);
    v21 = (*(v1 + 80) + 16) & ~*(v1 + 80);
    v22 = swift_allocObject();
    (*(v1 + 32))(v22 + v21, v18, v20);
    sub_100751894();
    (*(v1 + 8))(v19, v20);
    (*(v6 + 8))(v11, v13);
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003E2628()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10000C518(&unk_10093EC70);
  v19 = *(v1 - 8);
  v20 = v1;
  __chkstk_darwin(v1);
  v18 = v15 - v2;
  v3 = sub_10000C518(&qword_1009324C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - v5;
  sub_100748394();
  v7 = sub_100016C60(0, &qword_100926D00);
  v8 = sub_100753774();
  v22 = v7;
  v23 = &protocol witness table for OS_dispatch_queue;
  v21[0] = v8;
  v15[1] = sub_10000C518(&unk_10093EC80);
  sub_10002DDC8(&unk_1009324F0, &unk_10093EC80);
  v16 = v0;
  sub_100752584();

  v9 = v4 + 8;
  v10 = *(v4 + 8);
  v15[0] = v9;
  v10(v6, v3);
  sub_10000C620(v21);
  sub_1007483A4();
  v11 = sub_100753774();
  v22 = v7;
  v23 = &protocol witness table for OS_dispatch_queue;
  v21[0] = v11;
  sub_100752584();

  v10(v6, v3);
  sub_10000C620(v21);
  sub_100748344();
  v12 = sub_100753774();
  v22 = v7;
  v23 = &protocol witness table for OS_dispatch_queue;
  v21[0] = v12;
  sub_10000C518(&unk_10093EC90);
  sub_10002DDC8(&unk_100932500, &unk_10093EC90);
  v13 = v18;
  sub_100752584();

  (*(v19 + 8))(v13, v20);
  return sub_10000C620(v21);
}

void sub_1003E2A24(unint64_t a1, uint64_t a2)
{
  v53 = a2;
  v50 = a1;
  v2 = sub_10000C518(&qword_1009362E8);
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v4 = &v45 - v3;
  v5 = sub_100742E54();
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v45 = &v45 - v9;
  v10 = sub_100751994();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100751974();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1007519D4();
  v51 = *(v18 - 8);
  v52 = v18;
  v19 = __chkstk_darwin(v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v17, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v14, v19);
  sub_1007519A4();
  (*(v11 + 104))(v13, enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:), v10);
  sub_1007519C4();
  sub_100016C60(0, &unk_10093FE00);
  v22 = sub_100753A54();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_11:
    (*(v51 + 8))(v21, v52);
    return;
  }

  v24 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_diffableDataSource);
  v25 = Strong;
  v26 = v24;

  if (v24)
  {
    sub_1007518F4();

    v27 = v49;
    v28 = sub_100751774();
    (*(v48 + 8))(v4, v27);
    if ((v50 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v28 + 16) > v50)
    {
      v30 = v46;
      v29 = v47;
      (*(v46 + 16))(v7, v28 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v50, v47);

      v31 = v45;
      (*(v30 + 32))(v45, v7, v29);
      v32 = sub_100742E34();
      if (v33)
      {
        v34 = v32;
        v35 = v33;

        v36 = HIBYTE(v35) & 0xF;
        if ((v35 & 0x2000000000000000) == 0)
        {
          v36 = v34 & 0xFFFFFFFFFFFFLL;
        }

        if (v36)
        {
          v37 = objc_opt_self();
          v38 = [v37 fractionalWidthDimension:1.0];
          v39 = [v37 estimatedDimension:44.0];
          v40 = [objc_opt_self() sizeWithWidthDimension:v38 heightDimension:v39];

          v41 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v40 elementKind:UICollectionElementKindSectionHeader alignment:1];
          sub_10000C518(&unk_1009231A0);
          v42 = swift_allocObject();
          *(v42 + 16) = xmmword_1007A5CF0;
          *(v42 + 32) = v41;
          sub_100016C60(0, &qword_10092E460);
          v43 = v41;
          isa = sub_100753294().super.isa;

          [v22 setBoundarySupplementaryItems:isa];
        }
      }

      (*(v30 + 8))(v31, v29);
      goto LABEL_11;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1003E3034(void *a1, uint64_t a2, void (*a3)(void, void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1003E30AC(a1, a2, a3);
  }
}

uint64_t sub_1003E30AC(void *a1, uint64_t a2, void (*a3)(void, void))
{
  v167 = a3;
  v171 = a1;
  v143 = sub_100751454();
  v142 = *(v143 - 8);
  __chkstk_darwin(v143);
  v141 = &v134 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_100751464();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v149 = &v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_100751404();
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v148 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_100742E74();
  v172 = *(v157 - 8);
  __chkstk_darwin(v157);
  v138 = &v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v139 = &v134 - v8;
  __chkstk_darwin(v9);
  v145 = &v134 - v10;
  __chkstk_darwin(v11);
  v158 = &v134 - v12;
  __chkstk_darwin(v13);
  v156 = &v134 - v14;
  __chkstk_darwin(v15);
  v155 = &v134 - v16;
  v17 = sub_10000C518(&qword_100925220);
  __chkstk_darwin(v17 - 8);
  v160 = &v134 - v18;
  v137 = sub_1007513C4();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v135 = &v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_100751394();
  v159 = *(v163 - 8);
  __chkstk_darwin(v163);
  v152 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_100742F54();
  v154 = *(v165 - 8);
  __chkstk_darwin(v165);
  v22 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100742F74();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v153 = &v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v144 = &v134 - v27;
  __chkstk_darwin(v28);
  v30 = &v134 - v29;
  __chkstk_darwin(v31);
  v166 = &v134 - v32;
  v33 = type metadata accessor for PageFacetsViewController.Item(0);
  __chkstk_darwin(v33);
  v35 = &v134 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v134 - v37;
  __chkstk_darwin(v39);
  v41 = &v134 - v40;
  v42 = sub_1007516E4();
  v169 = *(v42 - 8);
  v170 = v42;
  __chkstk_darwin(v42);
  v140 = &v134 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v46 = &v134 - v45;
  sub_1007516B4();
  sub_1003E75F0(v167, v41);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v168 = v24;
  if (EnumCaseMultiPayload != 1)
  {
    v162 = v46;
    v166 = v41;
    sub_1003E75F0(v41, v35);
    v69 = *(v24 + 16);
    v165 = v35;
    v161 = v23;
    v135 = v69;
    (v69)(v30, v35, v23);
    v70 = v155;
    sub_100742E84();
    v71 = v172;
    v72 = v156;
    v73 = v157;
    v136 = *(v172 + 13);
    v154 = v172 + 104;
    (v136)(v156, enum case for PageFacets.Facet.DisplayType.toggle(_:), v157);
    v74 = sub_1003E7654(&qword_100925BA0, &type metadata accessor for PageFacets.Facet.DisplayType);
    sub_100753274();
    v137 = v74;
    sub_100753274();
    v167 = v30;
    if (v175 == v173 && v176 == v174)
    {
      v75 = 1;
    }

    else
    {
      v75 = sub_100754754();
    }

    v76 = *(v71 + 8);
    v76(v72, v73);
    v172 = (v71 + 8);
    v156 = v76;
    v76(v70, v73);

    if (v75)
    {
      sub_100742F04();
      sub_1007516C4();
      sub_100016C60(0, &qword_100929CC0);
      v77 = swift_allocObject();
      v78 = v164;
      swift_unknownObjectWeakInit();
      v79 = v144;
      v80 = v161;
      (v135)(v144, v167, v161);
      v81 = v168;
      v82 = (*(v168 + 80) + 24) & ~*(v168 + 80);
      v83 = swift_allocObject();
      *(v83 + 16) = v77;
      v84 = v167;
      (*(v81 + 32))(v83 + v82, v79, v80);
      v85 = sub_100753FF4();
      v86 = [objc_allocWithZone(UISwitch) initWithFrame:v85 primaryAction:{0.0, 0.0, 0.0, 0.0}];

      v87 = OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_selectedFacetOptions;
      swift_beginAccess();
      v88 = *(v78 + v87);
      v60 = v169;
      if (*(v88 + 16) && (v89 = sub_100412840(v84), (v90 & 1) != 0))
      {
        v91 = *(*(v88 + 56) + 8 * v89);
        swift_endAccess();
        v92 = *(v91 + 16) != 0;
      }

      else
      {
        swift_endAccess();
        v92 = 0;
      }

      v100 = v171;
      [v86 setOn:v92];
      sub_10000C518(&qword_100925228);
      sub_100751484();
      *(swift_allocObject() + 16) = xmmword_1007A5A00;
      v101 = sub_10000C518(&qword_100925238);
      v102 = v149;
      v103 = &v149[*(v101 + 48)];
      (*(v159 + 104))(v149, enum case for UICellAccessory.DisplayedState.always(_:), v163);
      *v103 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v103[1] = 0;
      (*(v146 + 104))(v102, enum case for UICellAccessory.Placement.trailing(_:), v147);
      v104 = sub_1007513A4();
      (*(*(v104 - 8) + 56))(v160, 1, 1, v104);
      v105 = v86;
      v106 = v148;
      sub_1007513F4();
      sub_100751384();
      (*(v150 + 8))(v106, v151);
      sub_100753A14();
      v175 = 0x2D7465636166;
      v176 = 0xE600000000000000;
      v107 = v167;
      v179._countAndFlagsBits = sub_100742EF4();
      sub_1007531B4(v179);

      v108 = sub_100753064();

      [v100 setAccessibilityIdentifier:v108];

      v109 = *(v81 + 8);
      v109(v107, v80);
      v109(v165, v80);
      v59 = v170;
      goto LABEL_25;
    }

    v93 = v167;
    v94 = v168;
    v95 = v161;
    v167 = *(v168 + 8);
    v167(v93, v161);
    v96 = v153;
    (*(v94 + 32))(v153, v165, v95);
    sub_100742E84();
    v97 = v145;
    v98 = v136;
    (v136)(v145, enum case for PageFacets.Facet.DisplayType.singleSelection(_:), v73);
    sub_100753274();
    sub_100753274();
    v60 = v169;
    if (v175 == v173 && v176 == v174)
    {
      v99 = v156;
      (v156)(v97, v73);
      v99(v158, v73);
    }

    else
    {
      v110 = sub_100754754();
      v111 = v156;
      (v156)(v97, v73);
      v111(v158, v73);

      if (v110)
      {
        goto LABEL_22;
      }

      sub_100742E84();
      v98(v138, enum case for PageFacets.Facet.DisplayType.multipleSelection(_:), v73);
      sub_100753274();
      sub_100753274();
      if (v175 != v173 || v176 != v174)
      {
        v132 = sub_100754754();
        v133 = v156;
        (v156)(v138, v73);
        v133(v139, v73);

        if ((v132 & 1) == 0)
        {
          v167(v96, v161);
          sub_100753A14();
          v59 = v170;
LABEL_25:
          v41 = v166;
          v46 = v162;
          goto LABEL_30;
        }

LABEL_22:
        v112 = v140;
        sub_1007516D4();
        v113 = v162;
        v59 = v170;
        (*(v60 + 8))(v162, v170);
        (*(v60 + 32))(v113, v112, v59);
        sub_100742F04();
        sub_1007516C4();
        v114 = OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_selectedFacetOptions;
        v115 = v164;
        swift_beginAccess();
        v116 = *(v115 + v114);

        sub_1003E4E14(v96, v116);

        sub_100751654();
        sub_10000C518(&qword_100925228);
        sub_100751484();
        *(swift_allocObject() + 16) = xmmword_1007A5A00;
        v117 = v159;
        v118 = v152;
        v119 = v163;
        (*(v159 + 104))(v152, enum case for UICellAccessory.DisplayedState.always(_:), v163);
        v120 = sub_1007513A4();
        (*(*(v120 - 8) + 56))(v160, 1, 1, v120);
        v121 = v141;
        sub_100751444();
        sub_1007513E4();
        v122 = v153;
        (*(v142 + 8))(v121, v143);
        (*(v117 + 8))(v118, v119);
        v123 = v171;
        sub_100753A14();
        v124._countAndFlagsBits = sub_100742EC4();
        if (v124._object)
        {
          v175 = 0x2D7465636166;
          v176 = 0xE600000000000000;
          sub_1007531B4(v124);

          v125 = sub_100753064();

          [v123 setAccessibilityIdentifier:v125];
        }

        v167(v122, v161);
        goto LABEL_25;
      }

      v131 = v156;
      (v156)(v138, v73);
      v131(v139, v73);
    }

    goto LABEL_22;
  }

  v48 = v171;
  sub_1003E75F0(v41, v38);
  v49 = *(sub_10000C518(&qword_1009362B8) + 48);
  v50 = v166;
  (*(v24 + 32))(v166, v38, v23);
  v51 = v154;
  (*(v154 + 4))(v22, &v38[v49], v165);
  v172 = v22;
  sub_100742F44();
  sub_1007516C4();
  v52 = OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_selectedFacetOptions;
  v53 = v164;
  swift_beginAccess();
  v54 = *(v53 + v52);
  if (*(v54 + 16) && (v55 = sub_100412840(v50), (v56 & 1) != 0))
  {
    v161 = v23;
    v57 = *(*(v54 + 56) + 8 * v55);
    swift_endAccess();

    v58 = sub_1002A4FE8(v172, v57);

    v60 = v169;
    v59 = v170;
    v61 = v48;
    if (v58)
    {
      sub_10000C518(&qword_100925228);
      v62 = *(sub_100751484() - 8);
      v167 = ((*(v62 + 80) + 32) & ~*(v62 + 80));
      *(swift_allocObject() + 16) = xmmword_1007A5A00;
      v63 = v159;
      v64 = *(v159 + 104);
      v162 = v46;
      v65 = v152;
      v64(v152, enum case for UICellAccessory.DisplayedState.always(_:), v163);
      v66 = sub_1007513A4();
      (*(*(v66 - 8) + 56))(v160, 1, 1, v66);
      v67 = v135;
      sub_1007513B4();
      sub_100751474();
      (*(v136 + 8))(v67, v137);
      v68 = v65;
      v46 = v162;
      (*(v63 + 8))(v68, v163);
    }

    v23 = v161;
  }

  else
  {
    swift_endAccess();
    v60 = v169;
    v59 = v170;
    v61 = v48;
  }

  sub_100753A14();
  v126 = v172;
  v127._countAndFlagsBits = sub_100742F14();
  if (v127._object)
  {
    v175 = 0x2D7465636166;
    v176 = 0xE600000000000000;
    sub_1007531B4(v127);

    v128 = sub_100753064();

    [v61 setAccessibilityIdentifier:v128];
  }

  (*(v51 + 1))(v126, v165);
  (*(v168 + 8))(v166, v23);
LABEL_30:
  sub_1003E8058(v41);
  v177 = v59;
  v178 = &protocol witness table for UIListContentConfiguration;
  v129 = sub_10000D134(&v175);
  (*(v60 + 16))(v129, v46, v59);
  sub_1007538E4();
  return (*(v60 + 8))(v46, v59);
}

unint64_t sub_1003E4718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v26 = a4;
  v4 = sub_1007516E4();
  v24 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&qword_1009362E8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - v9;
  v11 = sub_100742E54();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v23 = v4;
    v17 = *(result + OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_diffableDataSource);
    if (v17)
    {
      v18 = v17;
      sub_1007518F4();

      v19 = sub_100751774();
      (*(v8 + 8))(v10, v7);
      result = sub_100741804();
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *(v19 + 16))
      {
        (*(v12 + 16))(v14, v19 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * result, v11);

        sub_100751644();
        sub_100742E34();
        sub_1007516C4();
        v20 = v23;
        v27[3] = v23;
        v27[4] = &protocol witness table for UIListContentConfiguration;
        v21 = sub_10000D134(v27);
        v22 = v24;
        (*(v24 + 16))(v21, v6, v20);
        sub_1007538E4();

        (*(v22 + 8))(v6, v20);
        return (*(v12 + 8))(v14, v11);
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1003E4A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C518(&qword_1009362D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  sub_1003E75F0(a3, &v10 - v5);
  v7 = type metadata accessor for PageFacetsViewController.Item(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  sub_100016C60(0, &qword_100925218);
  v8 = sub_100753694();
  sub_10000C8CC(v6, &qword_1009362D0);
  return v8;
}

void sub_1003E4B70()
{
  v0 = sub_10000C518(&qword_100925BB8);
  __chkstk_darwin(v0 - 8);
  v2 = &v19 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    v6 = v5;
    if (v5)
    {
      v7 = [v5 collectionView];

      if (!v7)
      {
        __break(1u);
        return;
      }

      [v7 contentOffset];
      v19 = v8;
      v20 = v9;

      *&v10 = v19;
      *(&v10 + 1) = v20;
    }

    else
    {
      v10 = 0uLL;
    }

    v11 = &v4[OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_preselectionContentOffset];
    *v11 = v10;
    v11[16] = v6 == 0;
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;

    v14 = sub_100742F64();
    if (*(v14 + 16))
    {
      v15 = v14;
      v16 = sub_100742F54();
      v17 = *(v16 - 8);
      (*(v17 + 16))(v2, v15 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v16);

      (*(v17 + 56))(v2, 0, 1, v16);
    }

    else
    {

      v18 = sub_100742F54();
      (*(*(v18 - 8) + 56))(v2, 1, 1, v18);
    }

    sub_1007483C4();

    sub_10000C8CC(v2, &qword_100925BB8);
  }
}

uint64_t sub_1003E4E14(uint64_t a1, uint64_t a2)
{
  v4 = sub_100742F54();
  v57 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v51 - v8;
  __chkstk_darwin(v10);
  v12 = &v51 - v11;
  v13 = sub_100742ED4();
  result = 0;
  if (v13)
  {
    if (*(a2 + 16) && (v15 = sub_100412840(a1), (v16 & 1) != 0))
    {
      v17 = *(*(a2 + 56) + 8 * v15);
      v18 = *(v17 + 16);

      v19 = *(sub_100742F64() + 16);

      if (v18 == v19)
      {

        v62._countAndFlagsBits = 0xD000000000000025;
        v62._object = 0x800000010077AF00;
        v65._countAndFlagsBits = 0;
        v65._object = 0xE000000000000000;
        return sub_1007458B4(v62, v65);
      }

      else
      {
        v60 = v17;
        result = sub_100742F64();
        v55 = *(result + 16);
        if (v55)
        {
          v52 = v6;
          v23 = 0;
          v24 = v60;
          v58 = (v60 + 56);
          v59 = v57 + 16;
          v25 = (v57 + 8);
          v53 = _swiftEmptyArrayStorage;
          v54 = result;
          v51 = (v57 + 32);
          while (v23 < *(result + 16))
          {
            v56 = (*(v57 + 80) + 32) & ~*(v57 + 80);
            v26 = *(v57 + 72);
            v27 = *(v57 + 16);
            v27(v12, result + v56 + v26 * v23, v4);
            if (*(v24 + 16) && (sub_1003E7654(&qword_100925BC0, &type metadata accessor for PageFacets.Facet.Option), v28 = sub_100752FA4(), v24 = v60, v29 = -1 << *(v60 + 32), v30 = v28 & ~v29, ((*(v58 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) != 0))
            {
              v31 = ~v29;
              while (1)
              {
                v27(v9, *(v24 + 48) + v30 * v26, v4);
                sub_1003E7654(&qword_100925BC8, &type metadata accessor for PageFacets.Facet.Option);
                v32 = sub_100753014();
                (*v25)(v9, v4);
                if (v32)
                {
                  break;
                }

                v30 = (v30 + 1) & v31;
                v24 = v60;
                if (((*(v58 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
                {
                  goto LABEL_11;
                }
              }

              v33 = *v51;
              (*v51)(v52, v12, v4);
              v34 = v53;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v36 = v34;
              v61 = v34;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_10001E6B8(0, v34[2] + 1, 1);
                v36 = v61;
              }

              v24 = v60;
              v38 = v36[2];
              v37 = v36[3];
              if (v38 >= v37 >> 1)
              {
                sub_10001E6B8(v37 > 1, v38 + 1, 1);
                v24 = v60;
                v36 = v61;
              }

              v36[2] = v38 + 1;
              v53 = v36;
              v33(v36 + v56 + v38 * v26, v52, v4);
            }

            else
            {
LABEL_11:
              (*v25)(v12, v4);
            }

            ++v23;
            result = v54;
            if (v23 == v55)
            {
              goto LABEL_26;
            }
          }

          __break(1u);
        }

        else
        {
          v53 = _swiftEmptyArrayStorage;
LABEL_26:

          v39 = v53[2];
          if (v39)
          {
            v61 = _swiftEmptyArrayStorage;
            v40 = v53;
            sub_10001E1E8(0, v39, 0);
            v41 = v61;
            v42 = *(v57 + 16);
            v43 = v40 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
            v59 = *(v57 + 72);
            v60 = v42;
            v57 += 16;
            v58 = (v57 - 8);
            do
            {
              (v60)(v9, v43, v4);
              v44 = sub_100742F44();
              v46 = v45;
              (*v58)(v9, v4);
              v61 = v41;
              v48 = v41[2];
              v47 = v41[3];
              if (v48 >= v47 >> 1)
              {
                sub_10001E1E8((v47 > 1), v48 + 1, 1);
                v41 = v61;
              }

              v41[2] = v48 + 1;
              v49 = &v41[2 * v48];
              v49[4] = v44;
              v49[5] = v46;
              v43 += v59;
              --v39;
            }

            while (v39);
          }

          else
          {

            v41 = _swiftEmptyArrayStorage;
          }

          v61 = v41;
          v64._object = 0x800000010077AEE0;
          v64._countAndFlagsBits = 0xD00000000000001DLL;
          v67._countAndFlagsBits = 0;
          v67._object = 0xE000000000000000;
          sub_1007458B4(v64, v67);
          sub_10000C518(&unk_100928A70);
          sub_10002DDC8(&qword_10092FA00, &unk_100928A70);
          v50 = sub_100752FF4();

          return v50;
        }
      }
    }

    else
    {
      v20 = sub_100742F64();
      __chkstk_darwin(v20);
      *(&v51 - 2) = a1;
      v21 = sub_10047B2D4(sub_1003E9008, (&v51 - 4), v20);

      if (*(v21 + 16))
      {
        v61 = v21;
        v63._object = 0x800000010077AEE0;
        v63._countAndFlagsBits = 0xD00000000000001DLL;
        v66._countAndFlagsBits = 0;
        v66._object = 0xE000000000000000;
        sub_1007458B4(v63, v66);
        sub_10000C518(&unk_100928A70);
        sub_10002DDC8(&qword_10092FA00, &unk_100928A70);
        v22 = sub_100752FF4();

        return v22;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1003E5570(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C518(&qword_100932510);
  __chkstk_darwin(v3 - 8);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v11[-v7];
  sub_100748364();
  v9 = OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_pageFacets;
  swift_beginAccess();
  sub_1003E8B0C(a2 + v9, v5);
  swift_beginAccess();
  sub_1003E8C74(v8, a2 + v9);
  swift_endAccess();
  sub_1003E0ED8(v5);
  sub_10000C8CC(v5, &qword_100932510);
  return sub_10000C8CC(v8, &qword_100932510);
}

uint64_t (*sub_1003E56A8(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1003E8C6C;
}

void (*sub_1003E570C(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1003E8BF4;
}

void sub_1003E5770(uint64_t a1, uint64_t a2)
{
  v3 = sub_100748354();
  v4 = OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_selectedFacetOptions;
  swift_beginAccess();
  v5 = *(a2 + v4);
  *(a2 + v4) = v3;

  sub_1003E7718(v6, v5);
  LOBYTE(v4) = v7;

  if ((v4 & 1) == 0)
  {
    sub_1003E1CD0();
  }
}

uint64_t sub_1003E5800(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_objectGraph);
  v8 = sub_10000C518(&unk_100923210);
  sub_1007526C4();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    return sub_10000C8CC(v6, &unk_100923960);
  }

  sub_1003C0E00(a1, 1, v7, v6);

  return (*(v9 + 8))(v6, v8);
}

uint64_t (*sub_1003E5950(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1003E8BB4;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1000C0B24;
}

void sub_1003E59E0(void *a1, uint64_t a2)
{
  v163 = a2;
  v154 = a1;
  v147 = sub_1007521E4();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v144 = &v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_100752224();
  v143 = *(v145 - 8);
  __chkstk_darwin(v145);
  v142 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_1007417F4();
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v136 = v5;
  v137 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_100752244();
  v141 = *(v150 - 8);
  __chkstk_darwin(v150);
  v135 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v140 = &v124 - v8;
  v9 = sub_10000C518(&qword_100925220);
  __chkstk_darwin(v9 - 8);
  v128 = &v124 - v10;
  v130 = sub_1007513C4();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v126 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_100751394();
  v125 = *(v127 - 8);
  __chkstk_darwin(v127);
  v124 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&qword_100925BB8);
  __chkstk_darwin(v13 - 8);
  v134 = &v124 - v14;
  v157 = sub_100742E74();
  v164 = *(v157 - 8);
  __chkstk_darwin(v157);
  v148 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v132 = &v124 - v17;
  __chkstk_darwin(v18);
  v20 = &v124 - v19;
  __chkstk_darwin(v21);
  v23 = &v124 - v22;
  __chkstk_darwin(v24);
  v131 = &v124 - v25;
  __chkstk_darwin(v26);
  v28 = &v124 - v27;
  __chkstk_darwin(v29);
  v152 = &v124 - v30;
  __chkstk_darwin(v31);
  v153 = &v124 - v32;
  __chkstk_darwin(v33);
  v35 = &v124 - v34;
  __chkstk_darwin(v36);
  v38 = &v124 - v37;
  v39 = sub_100742F54();
  v155 = *(v39 - 8);
  v156 = v39;
  __chkstk_darwin(v39);
  v158 = &v124 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100742F74();
  v42 = *(v41 - 8);
  v161 = v41;
  v162 = v42;
  __chkstk_darwin(v41);
  v133 = &v124 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v151 = &v124 - v45;
  __chkstk_darwin(v46);
  v159 = &v124 - v47;
  v48 = sub_10000C518(&qword_1009362D0);
  __chkstk_darwin(v48 - 8);
  v50 = &v124 - v49;
  v51 = type metadata accessor for PageFacetsViewController.Item(0);
  v52 = *(v51 - 8);
  __chkstk_darwin(v51);
  v54 = &v124 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v160 = &v124 - v56;
  v149 = v2;
  v57 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_diffableDataSource];
  if (!v57)
  {
    __break(1u);
    return;
  }

  v58 = v57;
  sub_1007518A4();

  if ((*(v52 + 48))(v50, 1, v51) == 1)
  {
    sub_10000C8CC(v50, &qword_1009362D0);
    return;
  }

  v59 = v160;
  sub_1003E898C(v50, v160);
  sub_1003E75F0(v59, v54);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v162 + 32))(v151, v54, v161);
    sub_100742E84();
    v64 = *(v164 + 104);
    v64(v20, enum case for PageFacets.Facet.DisplayType.singleSelection(_:), v157);
    sub_1003E7654(&qword_100925BA0, &type metadata accessor for PageFacets.Facet.DisplayType);
    sub_100753274();
    sub_100753274();
    if (aBlock == v171 && v166 == v172)
    {
      v65 = 1;
    }

    else
    {
      v65 = sub_100754754();
    }

    v77 = *(v164 + 8);
    v78 = v20;
    v79 = v157;
    v77(v78, v157);
    v77(v23, v79);

    v76 = v151;
    if ((v65 & 1) == 0)
    {
      v80 = v132;
      sub_100742E84();
      v64(v148, enum case for PageFacets.Facet.DisplayType.multipleSelection(_:), v79);
      sub_100753274();
      sub_100753274();
      if (aBlock == v171 && v166 == v172)
      {
        v77(v148, v79);
        v77(v80, v79);
      }

      else
      {
        v92 = sub_100754754();
        v77(v148, v79);
        v77(v80, v79);

        if ((v92 & 1) == 0)
        {
          goto LABEL_43;
        }
      }
    }

    v93 = v161;
    v94 = v133;
    (*(v162 + 16))(v133, v76, v161);
    v95 = v149;
    v96 = *&v149[OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_facetsPresenter];
    v97 = v149[OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_showDoneButton];
    v98 = objc_allocWithZone(type metadata accessor for PageFacetOptionsViewController());

    v99 = sub_1002132B8(v94, v96, v97);

    *&v99[OBJC_IVAR____TtC22SubscribePageExtension30PageFacetOptionsViewController_delegate + 8] = &off_1008743D8;
    swift_unknownObjectWeakAssign();
    v100 = [v95 navigationController];
    if (v100)
    {
      v101 = v100;
      [v100 pushViewController:v99 animated:1];

      v99 = v101;
    }

    (*(v162 + 8))(v76, v93);
    goto LABEL_48;
  }

  v148 = v28;
  v60 = *(sub_10000C518(&qword_1009362B8) + 48);
  (*(v162 + 32))(v159, v54, v161);
  (*(v155 + 32))(v158, &v54[v60], v156);
  sub_100742E84();
  v61 = enum case for PageFacets.Facet.DisplayType.multipleSelection(_:);
  v62 = v157;
  v151 = *(v164 + 104);
  (v151)(v35, enum case for PageFacets.Facet.DisplayType.multipleSelection(_:), v157);
  sub_1003E7654(&qword_100925BA0, &type metadata accessor for PageFacets.Facet.DisplayType);
  sub_100753274();
  sub_100753274();
  LODWORD(v133) = v61;
  if (aBlock == v171 && v166 == v172)
  {
    v63 = 1;
  }

  else
  {
    v63 = sub_100754754();
  }

  v66 = v164 + 8;
  v67 = *(v164 + 8);
  v67(v35, v62);
  v164 = v66;
  v67(v38, v62);

  v68 = v149;
  if ((v63 & 1) == 0)
  {
    v69 = OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_selectedFacetOptions;
    swift_beginAccess();
    v70 = *&v68[v69];
    if (*(v70 + 16) && (v71 = sub_100412840(v159), (v72 & 1) != 0))
    {
      v73 = *(*(v70 + 56) + 8 * v71);
      swift_endAccess();

      v74 = sub_1002A4FE8(v158, v73);

      if (v74)
      {
        v75 = 0;
        v76 = v159;
        goto LABEL_24;
      }
    }

    else
    {
      swift_endAccess();
    }
  }

  [v154 contentOffset];
  v81 = &v68[OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_preselectionContentOffset];
  *v81 = v82;
  *(v81 + 1) = v83;
  v81[16] = 0;
  v85 = v155;
  v84 = v156;
  v86 = v134;
  (*(v155 + 16))(v134, v158, v156);
  v75 = 1;
  (*(v85 + 56))(v86, 0, 1, v84);
  v76 = v159;
  sub_1007483C4();
  sub_10000C8CC(v86, &qword_100925BB8);
LABEL_24:
  sub_100742E84();
  (v151)(v152, enum case for PageFacets.Facet.DisplayType.singleSelection(_:), v62);
  sub_100753274();
  sub_100753274();
  if (aBlock == v171 && v166 == v172)
  {
    v67(v152, v62);
    v67(v153, v62);

LABEL_27:

    goto LABEL_29;
  }

  v87 = sub_100754754();
  v67(v152, v62);
  v67(v153, v62);

  if (v87)
  {
    goto LABEL_29;
  }

  sub_100742E84();
  v102 = v131;
  (v151)(v131, v133, v62);
  sub_100753274();
  sub_100753274();
  if (aBlock == v171 && v166 == v172)
  {
    v67(v102, v62);
    v67(v148, v62);

    goto LABEL_27;
  }

  v103 = sub_100754754();
  v67(v102, v62);
  v67(v148, v62);

  if (v103)
  {
LABEL_29:
    v88 = v163;
    if (v75)
    {
      isa = sub_100741704().super.isa;
      v90 = [v154 cellForItemAtIndexPath:isa];

      if (v90)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v91 = *(sub_100753A04() + 16);

          if (!v91)
          {
            sub_10000C518(&qword_100925228);
            sub_100751484();
            *(swift_allocObject() + 16) = xmmword_1007A5A00;
            v104 = v125;
            v105 = v124;
            v106 = v127;
            (*(v125 + 104))(v124, enum case for UICellAccessory.DisplayedState.always(_:), v127);
            v107 = sub_1007513A4();
            (*(*(v107 - 8) + 56))(v128, 1, 1, v107);
            v108 = v126;
            sub_1007513B4();
            sub_100751474();
            (*(v129 + 8))(v108, v130);
            (*(v104 + 8))(v105, v106);
          }

          sub_100753A14();
        }
      }
    }

    sub_100016C60(0, &qword_100926D00);
    v109 = sub_100753774();
    v110 = v135;
    sub_100752234();
    v111 = v140;
    sub_1007522B4();
    v164 = *(v141 + 8);
    (v164)(v110, v150);
    v112 = v138;
    v113 = v137;
    v114 = v88;
    v115 = v139;
    (*(v138 + 16))(v137, v114, v139);
    v116 = (*(v112 + 80) + 24) & ~*(v112 + 80);
    v117 = swift_allocObject();
    v118 = v154;
    *(v117 + 16) = v154;
    (*(v112 + 32))(v117 + v116, v113, v115);
    v169 = sub_1002138C8;
    v170 = v117;
    aBlock = _NSConcreteStackBlock;
    v166 = 1107296256;
    v167 = sub_1000CF7B0;
    v168 = &unk_100874410;
    v119 = _Block_copy(&aBlock);
    v120 = v118;

    v121 = v142;
    sub_100752204();
    aBlock = _swiftEmptyArrayStorage;
    sub_1003E7654(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000C518(&unk_10092F750);
    sub_10002DDC8(&qword_1009236C0, &unk_10092F750);
    v122 = v144;
    v123 = v147;
    sub_1007543A4();
    sub_100753734();
    _Block_release(v119);

    (*(v146 + 8))(v122, v123);
    (*(v143 + 8))(v121, v145);
    (v164)(v111, v150);
    (*(v155 + 8))(v158, v156);
    (*(v162 + 8))(v159, v161);
    goto LABEL_48;
  }

  (*(v155 + 8))(v158, v156);
LABEL_43:
  (*(v162 + 8))(v76, v161);
LABEL_48:
  sub_1003E8058(v160);
}

uint64_t sub_1003E7100(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1007417F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  v9 = a3;
  v10 = a1;
  sub_1003E853C();
  LOBYTE(a1) = v11;

  (*(v6 + 8))(v8, v5);
  return a1 & 1;
}

void sub_1003E7324()
{
  sub_1003E73F8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1003E73F8()
{
  if (!qword_1009361F8)
  {
    sub_100742F84();
    v0 = sub_100754284();
    if (!v1)
    {
      atomic_store(v0, &qword_1009361F8);
    }
  }
}

void sub_1003E74C0()
{
  sub_100742F74();
  if (v0 <= 0x3F)
  {
    sub_1003E7534();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1003E7534()
{
  if (!qword_100936280)
  {
    sub_100742F74();
    sub_100742F54();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100936280);
    }
  }
}

uint64_t sub_1003E75F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageFacetsViewController.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003E7654(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003E769C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100742E94();
  v5 = sub_1002A4FE8(a1, v4);

  if (v5)
  {
    result = sub_100742F44();
  }

  else
  {
    result = 0;
    v7 = 0;
  }

  *a2 = result;
  a2[1] = v7;
  return result;
}

void sub_1003E7718(uint64_t a1, uint64_t a2)
{
  v55 = sub_100742F74();
  v50 = *(v55 - 8);
  __chkstk_darwin(v55);
  v51 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v49 = v45 - v6;
  v7 = sub_10000C518(&qword_100936308);
  __chkstk_darwin(v7 - 8);
  v52 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v48 = v45 - v10;
    v12 = 0;
    v46 = a1;
    v15 = *(a1 + 64);
    v14 = a1 + 64;
    v13 = v15;
    v16 = 1 << *(v14 - 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v13;
    v19 = (v16 + 63) >> 6;
    v45[0] = v14;
    v45[1] = v50 + 16;
    v53 = (v50 + 32);
    v47 = (v50 + 8);
    while (v18)
    {
      v54 = (v18 - 1) & v18;
      v20 = __clz(__rbit64(v18)) | (v12 << 6);
LABEL_16:
      v25 = v46;
      v26 = v49;
      v27 = v50;
      v28 = v55;
      (*(v50 + 16))(v49, *(v46 + 48) + *(v50 + 72) * v20, v55, v11);
      v29 = *(*(v25 + 56) + 8 * v20);
      v30 = sub_10000C518(&qword_100936310);
      v31 = *(v30 + 48);
      v32 = *(v27 + 32);
      v33 = v52;
      v32(v52, v26, v28);
      *(v33 + v31) = v29;
      (*(*(v30 - 8) + 56))(v33, 0, 1, v30);

LABEL_17:
      v34 = v48;
      sub_1003E8BFC(v33, v48);
      v35 = sub_10000C518(&qword_100936310);
      if ((*(*(v35 - 8) + 48))(v34, 1, v35) == 1)
      {
        return;
      }

      v36 = *(v35 + 48);
      v37 = v51;
      v38 = v55;
      (*v53)(v51, v34, v55);
      v39 = *(v34 + v36);
      sub_100412840(v37);
      LOBYTE(v36) = v40;
      (*v47)(v37, v38);
      if ((v36 & 1) == 0)
      {

        return;
      }

      sub_100212F08(v41, v39);
      v43 = v42;

      v18 = v54;
      if ((v43 & 1) == 0)
      {
        return;
      }
    }

    if (v19 <= v12 + 1)
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = v19;
    }

    v22 = v21 - 1;
    while (1)
    {
      v23 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v23 >= v19)
      {
        v44 = sub_10000C518(&qword_100936310);
        v33 = v52;
        (*(*(v44 - 8) + 56))(v52, 1, 1, v44);
        v54 = 0;
        v12 = v22;
        goto LABEL_17;
      }

      v24 = *(v45[0] + 8 * v23);
      ++v12;
      if (v24)
      {
        v54 = (v24 - 1) & v24;
        v20 = __clz(__rbit64(v24)) | (v23 << 6);
        v12 = v23;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1003E7B94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100742F54();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v43 - v7;
  v8 = sub_100742F74();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v45 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  v14 = type metadata accessor for PageFacetsViewController.Item(0);
  __chkstk_darwin(v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  v20 = sub_10000C518(&qword_1009362C8);
  __chkstk_darwin(v20 - 8);
  v22 = &v43 - v21;
  v24 = &v43 + *(v23 + 56) - v21;
  sub_1003E75F0(a1, &v43 - v21);
  sub_1003E75F0(a2, v24);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1003E75F0(v22, v19);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v9 + 32))(v13, v24, v8);
      v35 = sub_100742EE4();
      v39 = *(v9 + 8);
      v39(v13, v8);
      v39(v19, v8);
      goto LABEL_11;
    }

    v16 = v19;
    goto LABEL_8;
  }

  sub_1003E75F0(v22, v16);
  v25 = *(sub_10000C518(&qword_1009362B8) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v47 + 8))(&v16[v25], v48);
LABEL_8:
    (*(v9 + 8))(v16, v8);
    sub_10000C8CC(v22, &qword_1009362C8);
    goto LABEL_9;
  }

  (*(v9 + 32))(v45, v24, v8);
  v26 = v47;
  v27 = *(v47 + 32);
  v28 = v48;
  v27(v46, &v16[v25], v48);
  v29 = &v24[v25];
  v30 = v44;
  v27(v44, v29, v28);
  v31 = v45;
  v32 = sub_100742EE4();
  v33 = *(v9 + 8);
  v33(v16, v8);
  if (v32)
  {
    v34 = v46;
    v35 = sub_100742F34();
    v36 = *(v26 + 8);
    v37 = v30;
    v38 = v48;
    v36(v37, v48);
    v36(v34, v38);
    v33(v31, v8);
LABEL_11:
    sub_1003E8058(v22);
    return v35 & 1;
  }

  v41 = *(v26 + 8);
  v42 = v48;
  v41(v30, v48);
  v41(v46, v42);
  v33(v31, v8);
  sub_1003E8058(v22);
LABEL_9:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_1003E8058(uint64_t a1)
{
  v2 = type metadata accessor for PageFacetsViewController.Item(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1003E80B4(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_10000C518(&qword_100932510);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_pageFacets;
  v13 = sub_100742F84();
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_selectedFacetOptions;
  *&v4[v14] = sub_100415244(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_diffableDataSource] = 0;
  v15 = &v4[OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_preselectionContentOffset];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_facetsPresenter] = a1;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_objectGraph] = a3;

  sub_100748324();
  swift_beginAccess();
  sub_1003E9024(v11, &v4[v12]);
  swift_endAccess();

  v16 = sub_100748384();

  swift_beginAccess();
  *&v4[v14] = v16;

  v4[OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_showDoneButton] = a2;
  v17 = [objc_allocWithZone(UICollectionViewLayout) init];
  v25.receiver = v4;
  v25.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v25, "initWithCollectionViewLayout:", v17);

  if (a2)
  {
    v19 = [v18 navigationItem];
    sub_100016C60(0, &qword_100925250);
    sub_100016C60(0, &qword_100929CC0);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v26.value.super.super.isa = sub_100753FF4();
    v26.is_nil = 0;
    isa = sub_100753634(UIBarButtonSystemItemDone, v26, v27).super.super.isa;
    [v19 setRightBarButtonItem:isa];
  }

  v21 = [v18 navigationItem];
  v28._object = 0x800000010077AF70;
  v28._countAndFlagsBits = 0xD000000000000019;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_1007458B4(v28, v29);
  v22 = sub_100753064();

  [v21 setTitle:v22];

  return v18;
}

void sub_1003E843C()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_pageFacets;
  v2 = sub_100742F84();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_selectedFacetOptions;
  *(v0 + v3) = sub_100415244(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_diffableDataSource) = 0;
  v4 = v0 + OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_preselectionContentOffset;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  sub_100754644();
  __break(1u);
}

void sub_1003E853C()
{
  v1 = sub_100742E74();
  v30 = *(v1 - 8);
  __chkstk_darwin(v1);
  v29 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v29 - v4;
  v6 = sub_100742F74();
  v31 = *(v6 - 8);
  v32 = v6;
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&qword_1009362D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for PageFacetsViewController.Item(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v29 - v17;
  v19 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_diffableDataSource);
  if (v19)
  {
    v20 = v19;
    sub_1007518A4();

    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_10000C8CC(v11, &qword_1009362D0);
    }

    else
    {
      sub_1003E898C(v11, v18);
      sub_1003E75F0(v18, v15);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v22 = v31;
      v23 = (v31 + 8);
      if (EnumCaseMultiPayload == 1)
      {
        sub_1003E8058(v18);
        v24 = *(sub_10000C518(&qword_1009362B8) + 48);
        v25 = sub_100742F54();
        (*(*(v25 - 8) + 8))(&v15[v24], v25);
        (*v23)(v15, v32);
      }

      else
      {
        (*(v31 + 32))(v8, v15, v32);
        sub_100742E84();
        v27 = v29;
        v26 = v30;
        (*(v30 + 104))(v29, enum case for PageFacets.Facet.DisplayType.toggle(_:), v1);
        sub_1003E7654(&qword_1009362D8, &type metadata accessor for PageFacets.Facet.DisplayType);
        sub_100753014();
        v28 = *(v26 + 8);
        v28(v27, v1);
        v28(v5, v1);
        (*(v22 + 8))(v8, v32);
        sub_1003E8058(v18);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003E898C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageFacetsViewController.Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003E89F0()
{
  v1 = sub_1007417F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1003E8AB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003E8ACC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003E8B0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100932510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003E8B7C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003E8BBC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003E8BFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100936308);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003E8C74(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100932510);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003E8D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000C518(&qword_100936330);

  return sub_1003E4A3C(a1, a2, a3);
}

uint64_t sub_1003E8DB0(uint64_t *a1)
{
  v2 = sub_10000C518(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_1003E8E34()
{
  sub_10000C518(&qword_100936328);
  sub_100016C60(0, &qword_100925390);
  return sub_1007536A4();
}

uint64_t sub_1003E8ED0()
{
  v1 = sub_100742F74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1003E8F94()
{
  sub_100742F74();

  sub_1003E4B70();
}

uint64_t sub_1003E9024(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100932510);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003E910C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1007521E4();
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100752224();
  v9 = *(v16 - 8);
  __chkstk_darwin(v16);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A7FA0();
  v12 = sub_100753774();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = a3;
  aBlock[4] = sub_1003E97A8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_100874638;
  v14 = _Block_copy(aBlock);

  swift_errorRetain();

  sub_100752204();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1003E97B4(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000C518(&unk_10092F750);
  sub_1000A8054();
  sub_1007543A4();
  sub_100753784();
  _Block_release(v14);

  (*(v17 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v16);
}

uint64_t sub_1003E93E4(uint64_t a1, uint64_t a2)
{
  v3 = sub_100752624();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100748214();
  v7(a2);

  if (a2)
  {
    swift_errorRetain();
    sub_100752DA4();
  }

  else
  {
    (*(v4 + 104))(v6, enum case for ActionOutcome.performed(_:), v3);
    sub_100752DB4();
    return (*(v4 + 8))(v6, v3);
  }
}

void sub_1003E9548(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1003E95BC(uint64_t a1)
{
  sub_10000C518(&qword_100930CA0);
  v2 = sub_100752DE4();
  v3 = objc_opt_self();
  sub_100748224();
  v4 = sub_100753064();

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v2;
  v8[4] = sub_1003E9740;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1003E9548;
  v8[3] = &unk_1008745E8;
  v6 = _Block_copy(v8);

  [v3 localApproveRequestWithItemIdentifier:v4 completion:v6];
  _Block_release(v6);

  return v2;
}

uint64_t sub_1003E9700()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003E9748(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003E9760()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1003E97B4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1003E9870()
{
  v1 = [v0 viewControllers];
  sub_100016C60(0, &qword_10092B0C0);
  v2 = sub_1007532A4();

  if (v2 >> 62)
  {
    v3 = sub_100754664();
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_100754574();
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    type metadata accessor for CategoryListViewController();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = v7;
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v10 = (v8 + OBJC_IVAR____TtC22SubscribePageExtensionP33_E8A3C8C9EB70237120159EB97F20AEB326CategoryListViewController_selectionHandler);
      v11 = *(v8 + OBJC_IVAR____TtC22SubscribePageExtensionP33_E8A3C8C9EB70237120159EB97F20AEB326CategoryListViewController_selectionHandler);
      *v10 = sub_1003EB55C;
      v10[1] = v9;

      sub_1000164A8(v11);
    }

    else
    {
    }
  }

LABEL_13:
}

void sub_1003E9A0C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&Strong[OBJC_IVAR____TtC22SubscribePageExtension28SelectCategoryViewController_selectionHandler];
    if (v4)
    {
      sub_10001B5AC(*&Strong[OBJC_IVAR____TtC22SubscribePageExtension28SelectCategoryViewController_selectionHandler]);

      v4(a1);
      sub_1000164A8(v4);
    }

    else
    {
    }
  }
}

void sub_1003E9BF0()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewDidLoad");
  v1 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 contentScaleFactor];
    v5 = v4;

    [v1 setScale:v5];
    [v1 setPreferredRange:1];
    v6 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v1 format:{22.0, 22.0}];
    v10[4] = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
    v10[5] = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10002684C;
    v10[3] = &unk_1008746B0;
    v7 = _Block_copy(v10);

    v8 = [v6 imageWithActions:v7];

    _Block_release(v7);
    if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
    {
      v9 = *&v0[OBJC_IVAR____TtC22SubscribePageExtensionP33_E8A3C8C9EB70237120159EB97F20AEB326CategoryListViewController_placeholderImage];
      *&v0[OBJC_IVAR____TtC22SubscribePageExtensionP33_E8A3C8C9EB70237120159EB97F20AEB326CategoryListViewController_placeholderImage] = v8;

      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1003E9F00(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  sub_100744254();
}

id sub_1003EA134(void *a1, uint64_t a2)
{
  v3 = v2;
  v37 = sub_1007417F4();
  v6 = *(v37 - 8);
  __chkstk_darwin(v37);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100753064();
  v10 = [a1 dequeueReusableCellWithIdentifier:v9];

  if (!v10)
  {
    v11 = objc_allocWithZone(UITableViewCell);
    v12 = sub_100753064();
    v10 = [v11 initWithStyle:0 reuseIdentifier:v12];
  }

  v13 = [v10 imageView];
  if (v13)
  {
    v14 = v13;
    v15 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtensionP33_E8A3C8C9EB70237120159EB97F20AEB326CategoryListViewController_placeholderImage);
    [v14 setImage:v15];
  }

  v16 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtensionP33_E8A3C8C9EB70237120159EB97F20AEB326CategoryListViewController_dataSource);
  v36[1] = a2;
  sub_100741754();
  sub_1007417D4();
  sub_10000C888((v16 + 16), *(v16 + 40));
  v17 = sub_10074CAC4();
  v36[0] = *(v6 + 8);
  (v36[0])(v8, v37);
  if (v17)
  {
    v18 = [v10 imageView];
    if (v18)
    {
      v19 = v18;
      v20 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtensionP33_E8A3C8C9EB70237120159EB97F20AEB326CategoryListViewController_placeholderImage);
      [v19 setImage:v20];
    }

    sub_10074F374();
    v21 = [v10 imageView];
    if (v21)
    {
      v38 = v21;
      sub_100016C60(0, &qword_10092BFC0);
      sub_1003EB7E4();
      sub_1007544E4();
    }

    else
    {
      v40 = 0;
      memset(v39, 0, sizeof(v39));
    }

    *(swift_allocObject() + 16) = v10;
    v24 = v10;
    sub_1007441F4();

    sub_10000C8CC(v39, &unk_1009276E0);
  }

  else
  {
    v22 = [v10 imageView];
    if (v22)
    {
      v23 = v22;
      [v22 setImage:0];
    }
  }

  v25 = [v10 textLabel];
  if (v25)
  {
    v26 = v25;
    sub_100741754();
    sub_1007417D4();
    sub_10000C888((v16 + 16), *(v16 + 40));
    sub_10074CAB4();
    v28 = v27;
    (v36[0])(v8, v37);
    if (v28)
    {
      v29 = sub_100753064();
    }

    else
    {
      v29 = 0;
    }

    [v26 setText:v29];
  }

  sub_100741754();
  sub_1007417D4();
  sub_10000C888((v16 + 16), *(v16 + 40));
  v30 = sub_10074CA94();
  v31 = v37;
  v32 = v36[0];
  (v36[0])(v8, v37);
  if (v30)
  {
    [v10 setAccessoryType:1];
  }

  else
  {
    sub_100741754();
    sub_1007417D4();
    sub_10000C888((v16 + 16), *(v16 + 40));
    v33 = sub_10074CAD4();
    v32(v8, v31);
    if (v33)
    {
      v34 = 3;
    }

    else
    {
      v34 = 0;
    }

    [v10 setAccessoryType:v34];
  }

  return v10;
}

uint64_t type metadata accessor for CategoryListViewController()
{
  result = qword_100936430;
  if (!qword_100936430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003EAB58()
{
  result = sub_1007417F4();
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

uint64_t sub_1003EAC14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_100742CF4();
  v59 = *(v6 - 8);
  v60 = v6;
  __chkstk_darwin(v6);
  v62 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007493D4();
  v56 = *(v8 - 8);
  v57 = v8;
  __chkstk_darwin(v8);
  v61 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074A304();
  v52 = *(v10 - 8);
  v53 = v10;
  __chkstk_darwin(v10);
  v58 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100752614();
  __chkstk_darwin(v12 - 8);
  v54 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v14 - 8);
  v16 = &v50 - v15;
  v17 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v17 - 8);
  v19 = &v50 - v18;
  v20 = sub_10074F4D4();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v24 - 8);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28 = __chkstk_darwin(v27).n128_u64[0];
  v30 = &v50 - v29;
  v63 = a2;
  if (a1)
  {
    [v3 setModalPresentationStyle:{7, v28}];
    v31 = [v3 popoverPresentationController];
    [v31 setBarButtonItem:a1];

    v32 = sub_10000C518(&unk_100923210);
    sub_1007526C4();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v30, 1, v32) == 1)
    {
      v34 = v30;
      return sub_10000C8CC(v34, &unk_100923960);
    }

    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    v38 = *(v21 + 104);
    v51 = v23;
    v38(v23, enum case for FlowPage.viewController(_:), v20);
    v39 = sub_100741264();
    v40 = *(*(v39 - 8) + 56);
    v50 = v19;
    v40(v19, 1, 1, v39);
    v41 = sub_100743FE4();
    (*(*(v41 - 8) + 56))(v16, 1, 1, v41);
    v65 = ObjectType;
    v64 = v3;
    v42 = v3;
    sub_1007525F4();
    (*(v52 + 104))(v58, enum case for FlowPresentationContext.infer(_:), v53);
    (*(v56 + 104))(v61, enum case for FlowAnimationBehavior.infer(_:), v57);
    (*(v59 + 104))(v62, enum case for FlowOrigin.inapp(_:), v60);
    sub_100752B44();
    sub_100742CD4();
    swift_allocObject();
    v43 = sub_100742C84();
    sub_1003C1424(v43, 1, v63, v30);

    return (*(v33 + 8))(v30, v32);
  }

  else
  {
    v35 = sub_10000C518(&unk_100923210);
    sub_1007526C4();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v26, 1, v35) == 1)
    {
      v34 = v26;
      return sub_10000C8CC(v34, &unk_100923960);
    }

    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    v44 = *(v21 + 104);
    v51 = v23;
    v44(v23, enum case for FlowPage.viewController(_:), v20);
    v45 = sub_100741264();
    v46 = *(*(v45 - 8) + 56);
    v50 = v19;
    v46(v19, 1, 1, v45);
    v47 = sub_100743FE4();
    (*(*(v47 - 8) + 56))(v16, 1, 1, v47);
    v65 = ObjectType;
    v64 = v3;
    v48 = v3;
    sub_1007525F4();
    (*(v52 + 104))(v58, enum case for FlowPresentationContext.infer(_:), v53);
    (*(v56 + 104))(v61, enum case for FlowAnimationBehavior.infer(_:), v57);
    (*(v59 + 104))(v62, enum case for FlowOrigin.inapp(_:), v60);
    sub_100752B44();
    sub_100742CD4();
    swift_allocObject();
    v49 = sub_100742C84();
    sub_1003C1424(v49, 1, v63, v26);

    return (*(v36 + 8))(v26, v35);
  }
}

uint64_t sub_1003EB524()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1003EB564()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1007417F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtensionP33_E8A3C8C9EB70237120159EB97F20AEB326CategoryListViewController_dataSource];
  sub_100741754();
  sub_1007417D4();
  sub_10000C888((v6 + 16), *(v6 + 40));
  v7 = sub_10074CA94();
  v8 = *(v3 + 8);
  v8(v5, v2);
  if (v7)
  {
    v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_E8A3C8C9EB70237120159EB97F20AEB326CategoryListViewController_artworkLoader];
    swift_unknownObjectRetain();

    sub_100741754();
    sub_1007417D4();
    v10 = sub_1006DC804(v6, v9, v5, objc_allocWithZone(ObjectType));
    v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_E8A3C8C9EB70237120159EB97F20AEB326CategoryListViewController_selectionHandler];
    v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_E8A3C8C9EB70237120159EB97F20AEB326CategoryListViewController_selectionHandler + 8];
    v13 = &v10[OBJC_IVAR____TtC22SubscribePageExtensionP33_E8A3C8C9EB70237120159EB97F20AEB326CategoryListViewController_selectionHandler];
    v14 = *&v10[OBJC_IVAR____TtC22SubscribePageExtensionP33_E8A3C8C9EB70237120159EB97F20AEB326CategoryListViewController_selectionHandler];
    *v13 = v11;
    v13[1] = v12;
    sub_10001B5AC(v11);
    sub_1000164A8(v14);
    v15 = [v1 navigationController];
    if (v15)
    {
      v16 = v15;
      [v15 pushViewController:v10 animated:1];
    }
  }

  else
  {
    v17 = &v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_E8A3C8C9EB70237120159EB97F20AEB326CategoryListViewController_selectionHandler];
    v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_E8A3C8C9EB70237120159EB97F20AEB326CategoryListViewController_selectionHandler];
    if (v18)
    {

      sub_100741754();
      sub_1007417D4();
      v18(v5);
      sub_1000164A8(v18);
      v8(v5, v2);
    }

    [v1 dismissViewControllerAnimated:1 completion:0];
    v19 = *v17;
    *v17 = 0;
    v17[1] = 0;
    sub_1000164A8(v19);
  }
}

unint64_t sub_1003EB7E4()
{
  result = qword_100936440;
  if (!qword_100936440)
  {
    sub_100016C60(255, &qword_10092BFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936440);
  }

  return result;
}

uint64_t sub_1003EB84C()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1003EB884(uint64_t a1)
{
  v3 = [*(v1 + 16) imageView];
  [v3 setImage:a1];
}

uint64_t sub_1003EB8EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_1003EB904(double a1)
{
  v3 = sub_100750E94();
  v34 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v31 - v7;
  __chkstk_darwin(v9);
  v11 = v31 - v10;
  __chkstk_darwin(v12);
  v13 = sub_100750BD4();
  v35 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100753804() & 1) != 0 || (sub_1007537D4())
  {
    v16 = 1;
  }

  else
  {
    v32 = v1;
    v33 = v13;
    v37._object = 0x8000000100765D00;
    v37._countAndFlagsBits = 0xD000000000000016;
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    v17 = sub_1007458B4(v37, v38);
    v31[1] = v18;
    v31[2] = v17;
    sub_100750E84();
    if (qword_100921138 != -1)
    {
      swift_once();
    }

    v19 = sub_100750534();
    sub_10000D0FC(v19, qword_1009810E0);
    sub_100750E54();
    v20 = *(v34 + 8);
    v20(v5, v3);
    sub_100750E74();
    v20(v8, v3);
    sub_100750E64();
    v20(v11, v3);
    sub_100750BB4();
    sub_100750BF4();
    sub_100750BC4();
    v22 = v21;
    v23 = v32;
    sub_10000C888(v32 + 16, v32[19]);
    sub_100751254();
    v25 = v24;
    sub_10000C888(v23, v23[3]);
    sub_100750574();
    v27 = v26;
    (*(v35 + 8))(v15, v33);
    v16 = v25 + v22 + v27 > a1;
  }

  sub_1003EBCE8(v16, v36);
  sub_10000C888(v36, v36[3]);
  sub_100751254();
  v29 = v28;
  sub_10000C620(v36);
  return v29;
}

uint64_t sub_1003EBCE8@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v37 = a2;
  v5 = sub_100750A34();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v12 = sub_1007507B4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  if (a1)
  {
    sub_100750794();
    sub_1003EC6B4(v3, &v38);
    v19 = swift_allocObject();
    v20 = v47;
    *(v19 + 144) = v46;
    *(v19 + 160) = v20;
    *(v19 + 176) = v48;
    v21 = v43;
    *(v19 + 80) = v42;
    *(v19 + 96) = v21;
    v22 = v45;
    *(v19 + 112) = v44;
    *(v19 + 128) = v22;
    v23 = v39;
    *(v19 + 16) = v38;
    *(v19 + 32) = v23;
    v24 = v41;
    *(v19 + 48) = v40;
    *(v19 + 64) = v24;
    sub_1007507A4();

    v25 = *(v13 + 8);
    v25(v15, v12);
    v26 = v37;
    v37[3] = v12;
    v26[4] = &protocol witness table for VerticalStack;
    sub_10000D134(v26);
    sub_1007507A4();
    return (v25)(v18, v12);
  }

  else
  {
    sub_100750A04();
    sub_1003EC6B4(v3, &v38);
    v28 = swift_allocObject();
    v29 = v47;
    *(v28 + 144) = v46;
    *(v28 + 160) = v29;
    *(v28 + 176) = v48;
    v30 = v43;
    *(v28 + 80) = v42;
    *(v28 + 96) = v30;
    v31 = v45;
    *(v28 + 112) = v44;
    *(v28 + 128) = v31;
    v32 = v39;
    *(v28 + 16) = v38;
    *(v28 + 32) = v32;
    v33 = v41;
    *(v28 + 48) = v40;
    *(v28 + 64) = v33;
    sub_100750A14();

    v34 = *(v6 + 8);
    v34(v8, v5);
    v35 = v37;
    v37[3] = v5;
    v35[4] = &protocol witness table for HorizontalStack;
    sub_10000D134(v35);
    sub_100750A14();
    return (v34)(v11, v5);
  }
}

uint64_t sub_1003EC070(void *a1, double a2, double a3, double a4)
{
  v48 = sub_1007506E4();
  v6 = *(v48 - 8);
  __chkstk_darwin(v48);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v41 - v10;
  v12 = sub_100750E94();
  v44 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v41 - v16;
  __chkstk_darwin(v18);
  v20 = v41 - v19;
  __chkstk_darwin(v21);
  v22 = sub_100750BD4();
  v45 = *(v22 - 8);
  v46 = v22;
  __chkstk_darwin(v22);
  v24 = v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100753804();
  v49 = a1;
  if (v25 & 1) != 0 || (sub_1007537D4())
  {
    v26 = 0;
    v27 = 1;
  }

  else
  {
    v42 = v11;
    v43 = v6;
    v51._object = 0x8000000100765D00;
    v51._countAndFlagsBits = 0xD000000000000016;
    v52._countAndFlagsBits = 0;
    v52._object = 0xE000000000000000;
    v41[1] = sub_1007458B4(v51, v52);
    v41[0] = v28;
    sub_100750E84();
    if (qword_100921138 != -1)
    {
      swift_once();
    }

    v29 = sub_100750534();
    sub_10000D0FC(v29, qword_1009810E0);
    sub_100750E54();
    v30 = *(v44 + 8);
    v30(v14, v12);
    v27 = 1;
    sub_100750E74();
    v30(v17, v12);
    sub_100750E64();
    v30(v20, v12);
    sub_100750BB4();
    sub_100750BF4();
    sub_100750BC4();
    v32 = v31;
    v33 = v47;
    sub_10000C888((v47 + 128), *(v47 + 152));
    sub_100751254();
    v35 = v34;
    sub_10000C888(v33, *(v33 + 24));
    sub_100750574();
    v37 = v36;
    (*(v45 + 8))(v24, v46);
    if (v35 + v32 + v37 <= a4)
    {
      v27 = 0;
      v26 = *(v33 + 40) ^ 1;
    }

    else
    {
      v26 = 0;
    }

    v6 = v43;
    v11 = v42;
  }

  sub_1003EBCE8(v27, v50);
  sub_1007506B4();
  *(swift_allocObject() + 16) = v26 & 1;
  sub_1007506D4();

  v38 = *(v6 + 8);
  v39 = v48;
  v38(v8, v48);
  sub_100458D00(v49);
  v38(v11, v39);
  return sub_10000C620(v50);
}

void sub_1003EC5B0(uint64_t a1, char a2)
{
  v3 = sub_1007506A4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v6[3] = sub_1007507D4();
    v6[4] = &protocol witness table for ZeroDimension;
    sub_10000D134(v6);
    sub_1007507C4();
    (*(v4 + 104))(v6, enum case for DisjointStack.EdgePosition.anchored(_:), v3);
    sub_100750664();
  }
}

uint64_t sub_1003EC730()
{
  sub_10000C620(v0 + 16);
  sub_10000C620(v0 + 64);
  sub_10000C620(v0 + 104);
  sub_10000C620(v0 + 144);

  return _swift_deallocObject(v0, 184, 7);
}

uint64_t sub_1003EC7E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_1003EC828(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1003EC8A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1003EC8E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1003EC960()
{
  result = qword_1009364B0;
  if (!qword_1009364B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009364B0);
  }

  return result;
}

uint64_t sub_1003EC9B8@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v76 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v76);
  v2 = &v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100747144();
  v71 = *(v3 - 8);
  v72 = v3;
  __chkstk_darwin(v3);
  v70 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&qword_100928A88);
  __chkstk_darwin(v5 - 8);
  v77 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v75 = &v58 - v8;
  v9 = sub_10000C518(&unk_100940600);
  __chkstk_darwin(v9 - 8);
  v68 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v64 = &v58 - v12;
  v13 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v61 = *(v13 - 8);
  v62 = v13;
  __chkstk_darwin(v13);
  v65 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v63 = &v58 - v16;
  __chkstk_darwin(v17);
  v74 = (&v58 - v18);
  v19 = sub_10000C518(&unk_100928A90);
  __chkstk_darwin(v19 - 8);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v73 = &v58 - v23;
  v24 = sub_10074E984();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10000C518(&unk_10092E450);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v58 - v30;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v29 + 8))(v31, v28);
  v66 = v27;
  v67 = v25;
  v32 = *(v25 + 88);
  v69 = v24;
  v33 = v32(v27, v24);
  if (v33 == enum case for Shelf.ContentType.paragraph(_:) || v33 == enum case for Shelf.ContentType.titledParagraph(_:))
  {
    if (qword_100921E90 != -1)
    {
      swift_once();
    }

    v39 = sub_10000D0FC(v76, qword_100983148);
    return sub_10010A978(v39, v78, type metadata accessor for TitleHeaderView.Style);
  }

  else
  {
    v34 = sub_1007439C4();
    v35 = *(v34 - 8);
    v36 = v73;
    (*(v35 + 56))(v73, 1, 1, v34);
    v37 = sub_100747134();
    v58 = *(v37 - 8);
    v59 = v37;
    (*(v58 + 56))(v75, 1, 1);
    sub_100016B4C(v36, v21, &unk_100928A90);
    if ((*(v35 + 48))(v21, 1, v34) == 1)
    {
      sub_10000C8CC(v21, &unk_100928A90);
      v38 = 0;
    }

    else
    {
      v38 = sub_100743964();
      (*(v35 + 8))(v21, v34);
    }

    v41 = v74;
    v60 = v2;
    sub_1003AFADC(v38, v74);

    if (qword_100920AE8 != -1)
    {
      swift_once();
    }

    v42 = v62;
    v43 = sub_10000D0FC(v62, qword_10097FF70);
    v44 = v64;
    (*(v61 + 56))(v64, 1, 1, v42);
    v45 = v63;
    sub_10010A978(v41, v63, type metadata accessor for TitleHeaderView.TextConfiguration);
    v46 = v65;
    sub_10010A978(v43, v65, type metadata accessor for TitleHeaderView.TextConfiguration);
    v47 = v68;
    sub_100016B4C(v44, v68, &unk_100940600);
    v48 = v75;
    sub_100016B4C(v75, v77, &qword_100928A88);
    v49 = v70;
    v50 = v71;
    v51 = v72;
    (*(v71 + 104))(v70, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v72);
    sub_10000D198();
    v62 = sub_100753DB4();
    sub_10000C8CC(v48, &qword_100928A88);
    sub_10000C8CC(v44, &unk_100940600);
    sub_1003B6E50(v74);
    sub_10000C8CC(v73, &unk_100928A90);
    v52 = v76;
    v53 = v76[8];
    v54 = v60;
    sub_1003ED344(v45, v60, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_1003ED344(v46, v54 + v52[5], type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_100150344(v47, v54 + v52[6]);
    *(v54 + v52[7]) = 0;
    *(v54 + v53) = 0;
    *(v54 + v52[9]) = 0;
    *(v54 + v52[14]) = 0x4030000000000000;
    *(v54 + v52[12]) = 0;
    *(v54 + v52[13]) = v62;
    v55 = v77;
    (*(v50 + 32))(v54 + v52[11], v49, v51);
    v57 = v58;
    v56 = v59;
    if ((*(v58 + 48))(v55, 1, v59) == 1)
    {
      sub_10000C8CC(v55, &qword_100928A88);
      (*(v57 + 104))(v54 + v52[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v56);
    }

    else
    {
      (*(v57 + 32))(v54 + v52[10], v55, v56);
    }

    sub_1003ED344(v54, v78, type metadata accessor for TitleHeaderView.Style);
    return (*(v67 + 8))(v66, v69);
  }
}

uint64_t sub_1003ED344(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003ED3AC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1003ED40C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UberedPageScrollObserver();
  v5 = swift_allocObject();
  v6 = sub_1003CBA1C(v2, v5, a1, a2);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v7;
  v9 = *(v6 + 72);
  *(v6 + 72) = sub_1003EE518;
  *(v6 + 80) = v8;

  sub_1000164A8(v9);

  return v6;
}

uint64_t sub_1003ED4E4(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 16))();
  (*(a2 + 8))(a1, a2);
  sub_1003EE5F4();
  sub_100749AD4();
}

void sub_1003ED574(uint64_t a1, uint64_t a2)
{
  if (sub_1003EDCC8())
  {
    v5 = *(a2 + 8);
    *(v5(a1, a2) + 88) = 1;

    v6 = [v2 transitionCoordinator];
    if (v6)
    {
      v7 = v6;
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9 = swift_allocObject();
      v9[2] = a1;
      v9[3] = a2;
      v9[4] = v8;
      v20 = sub_1003EE5C8;
      v21 = v9;
      aBlock = _NSConcreteStackBlock;
      v17 = 1107296256;
      v18 = sub_1003ED3AC;
      v19 = &unk_100874A80;
      v10 = _Block_copy(&aBlock);

      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      v12[2] = a1;
      v12[3] = a2;
      v12[4] = v11;
      v20 = sub_1003EE5E8;
      v21 = v12;
      aBlock = _NSConcreteStackBlock;
      v17 = 1107296256;
      v18 = sub_1003ED3AC;
      v19 = &unk_100874AD0;
      v13 = _Block_copy(&aBlock);

      [v7 animateAlongsideTransition:v10 completion:v13];
      _Block_release(v13);
      _Block_release(v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v5(a1, a2);
      v14 = [v2 collectionView];
      if (v14)
      {
        v15 = v14;
        sub_1003CA534(v14);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1003ED808(uint64_t a1, uint64_t a2)
{
  v5 = [v2 presentedViewController];
  if (v5)
  {
  }

  else
  {
    if ((*(a2 + 24))(a1, a2))
    {
      (*(a2 + 8))(a1, a2);
      sub_1003CA470();
    }

    else
    {
      v6 = [v2 transitionCoordinator];
      v7 = (*(a2 + 8))(a1, a2);
      if (v6)
      {
        v16 = sub_100362DBC;
        v17 = v7;
        v12 = _NSConcreteStackBlock;
        v13 = 1107296256;
        v14 = sub_1003ED3AC;
        v15 = &unk_1008749E0;
        v8 = _Block_copy(&v12);

        v9 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v10 = swift_allocObject();
        v10[2] = a1;
        v10[3] = a2;
        v10[4] = v9;
        v16 = sub_1003EE5BC;
        v17 = v10;
        v12 = _NSConcreteStackBlock;
        v13 = 1107296256;
        v14 = sub_1003ED3AC;
        v15 = &unk_100874A30;
        v11 = _Block_copy(&v12);

        [v6 animateAlongsideTransition:v8 completion:v11];
        _Block_release(v11);
        _Block_release(v8);
        swift_unknownObjectRelease();
        return;
      }

      sub_1003CA470();
    }
  }
}

void sub_1003EDAA0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v9[4] = sub_1003EE670;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1003ED3AC;
  v9[3] = &unk_1008749B8;
  v8 = _Block_copy(v9);

  [a1 animateAlongsideTransition:v8 completion:0];
  _Block_release(v8);
}

uint64_t sub_1003EDBAC(char a1)
{
  v3 = (*((swift_isaMask & *v1) + 0xC0))((a1 & 8) == 0);
  if (a1 & 1) != 0 || (a1 & 2) != 0 && (v3 = (*((swift_isaMask & *v1) + 0x150))(v3), (v3))
  {
    v4 = (*((swift_isaMask & *v1) + 0xB8))(v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *((swift_isaMask & *v1) + 0x188);
  v6 = v4 & 1;

  return v5(v6);
}

BOOL sub_1003EDCC8()
{
  v1 = (*((swift_isaMask & *v0) + 0x160))();
  v2 = v1 == 0;
  if (!v1)
  {
    v3 = [v0 navigationController];
    if (!v3)
    {
      return 0;
    }

    v4 = v3;
    v5 = [v3 navigationBar];

    v1 = v5;
    if (!v5)
    {
      return 0;
    }
  }

  return v2;
}

void sub_1003EDD88(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_100743B54();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &aBlock[-1] - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v18 = Strong, v19 = COERCE_DOUBLE((*((swift_isaMask & *Strong) + 0x1B8))()), v21 = v20, v18, (v21 & 1) != 0))
  {
    if (a4 == 1.79769313e308)
    {
      return;
    }

    goto LABEL_4;
  }

  if (v19 != a4)
  {
LABEL_4:
    sub_100743B14();
    sub_100743B34();
    v23 = v22;
    v25 = v24;
    v26 = *(v11 + 8);
    v26(v16, v10);
    sub_100743B14();
    sub_100743B44();
    v28 = v27;
    v30 = v29;
    v26(v13, v10);
    v31 = swift_allocObject();
    *(v31 + 16) = a2;
    *(v31 + 24) = a3;
    *(v31 + 32) = a1;
    *(v31 + 40) = a4;
    v32 = objc_allocWithZone(UIViewPropertyAnimator);
    aBlock[4] = sub_1003EE55C;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CF7B0;
    aBlock[3] = &unk_100874968;
    v33 = _Block_copy(aBlock);

    v34 = [v32 initWithDuration:v33 controlPoint1:a5 controlPoint2:v23 animations:{v25, v28, v30}];
    _Block_release(v33);
    [v34 startAnimation];
  }
}

void sub_1003EE070(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    (*((swift_isaMask & *Strong) + 0x1C0))(*&a1, 0);
  }
}

void sub_1003EE110(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
    if (v9)
    {
      v10 = v9;
      sub_100032B70();
      v11 = v8;
      v12 = sub_100753FC4();

      if (v12)
      {
        if ([a1 isCancelled])
        {
          (*(a4 + 8))(a3, a4);
          sub_1003CA470();
        }
      }
    }
  }
}

void sub_1003EE224(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3)
  {

    v3(v4, 1.0, 0.0);
    sub_1000164A8(v3);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong navigationController];

    if (v7)
    {
      v8 = [v7 navigationBar];

      [v8 _setTitleOpacity:1.0];
    }
  }

  *(a2 + 88) = 0;
}

void sub_1003EE2E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if ([a1 isCancelled])
    {
      v9 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
      if (v9)
      {
        v10 = v9;
        sub_100032B70();
        v11 = v8;
        v12 = sub_100753FC4();

        if ((v12 & 1) != 0 && sub_1003EDCC8())
        {
          (*(a4 + 8))(a3, a4);
          v13 = [v11 collectionView];
          if (!v13)
          {
            __break(1u);
            return;
          }

          v14 = v13;
          sub_1003CA534(v13);
        }
      }
    }
  }
}

void sub_1003EE428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    (*(a4 + 8))(a3, a4);
    v8 = [v7 collectionView];
    if (v8)
    {
      v9 = v8;
      sub_1003CA534(v8);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1003EE4E0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003EE524()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1003EE56C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003EE584()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1003EE5F4()
{
  result = qword_100933F80;
  if (!qword_100933F80)
  {
    type metadata accessor for UberedPageScrollObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100933F80);
  }

  return result;
}

double sub_1003EE6D0(void *a1, double a2)
{
  v4 = sub_100747064();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100749C94())
  {
    swift_getKeyPath();
    sub_100746914();

    v8 = v12;
    v9 = [v12 userInterfaceIdiom];

    if (v9 == 2)
    {
    }

    else
    {
      type metadata accessor for SmallLockupView();
      sub_1003F58E8(v7);
      swift_getObjectType();
      a2 = sub_1001CF184(v7, a1);

      (*(v5 + 8))(v7, v4);
    }
  }

  return a2;
}

double sub_1003EE8B0(uint64_t a1)
{
  v3 = sub_10074C764();
  __chkstk_darwin(v3 - 8);
  v5 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074C784();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007469A4();
  v61 = *(v10 - 8);
  v62 = v10;
  __chkstk_darwin(v10);
  v59 = v11;
  v60 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10074F704();
  v57 = *(v12 - 8);
  v58 = v12;
  __chkstk_darwin(v12);
  v56 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_10074CD14();
  v64 = *(v71 - 8);
  __chkstk_darwin(v71);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100749CB4();
  sub_1003EF4B0(&unk_100936730, &type metadata accessor for GameCenterReengagement);
  sub_1007468B4();
  v16 = v88[0];
  if (!v88[0])
  {
    return 0.0;
  }

  v50 = v1;
  v52 = v5;
  v54 = v7;
  v51 = sub_10007DC04();
  v63 = sub_100749C74();
  v49[1] = v17;
  v18 = sub_100038D38();
  v70 = v16;
  if (qword_100921550 != -1)
  {
    swift_once();
  }

  v53 = v9;
  v55 = v6;
  v19 = sub_100750534();
  sub_10000D0FC(v19, qword_100981D28);
  swift_getKeyPath();
  sub_100746914();

  v20 = v88[0];
  sub_100753C14();

  v21 = sub_10074F3F4();
  v88[3] = v21;
  v68 = sub_1003EF4B0(&qword_10092AC70, &type metadata accessor for Feature);
  v88[4] = v68;
  v22 = sub_10000D134(v88);
  v23 = *(v21 - 8);
  v24 = *(v23 + 104);
  v69 = a1;
  v67 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v65 = v23 + 104;
  v66 = v24;
  v24(v22);
  sub_10074FC74();
  sub_10000C620(v88);
  sub_10074CD04();
  sub_10074CCE4();
  v63 = v18;
  v64 = *(v64 + 8);
  (v64)(v15, v71);
  sub_100749C84();
  if (qword_100921558 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v19, qword_100981D40);
  swift_getKeyPath();
  sub_100746914();

  v25 = v87[0];
  sub_100753C14();

  v87[3] = v21;
  v87[4] = v68;
  v26 = sub_10000D134(v87);
  v66(v26, v67, v21);
  sub_10074FC74();
  sub_10000C620(v87);
  sub_10074CD04();
  sub_10074CCE4();
  (v64)(v15, v71);
  sub_100749CA4();
  if (qword_100921560 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v19, qword_100981D58);
  swift_getKeyPath();
  v27 = v69;
  sub_100746914();

  v28 = v86[0];
  sub_100753C14();

  v86[3] = v21;
  v86[4] = v68;
  v29 = sub_10000D134(v86);
  v66(v29, v67, v21);
  sub_10074FC74();
  sub_10000C620(v86);
  sub_10074CD04();
  sub_10074CCE4();
  (v64)(v15, v71);
  swift_getKeyPath();
  v30 = v56;
  v31 = v27;
  sub_100746914();

  sub_10074F674();
  (*(v57 + 8))(v30, v58);
  v32 = sub_100750F34();
  swift_allocObject();
  v33 = sub_100750F04();
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

  v40 = sub_100750EF4();
  v41 = swift_unknownObjectRetain();
  sub_10027FF90(v41, v52);
  swift_unknownObjectRelease();
  v85 = 0;
  *&v83[40] = 0u;
  v84 = 0u;
  sub_10000C824(v88, v83);
  sub_10000C824(v87, &v82);
  sub_10000C824(v86, &v81);
  v79 = v32;
  v80 = &protocol witness table for LayoutViewPlaceholder;
  v71 = v33;
  v78 = v33;
  swift_getKeyPath();

  sub_100746914();

  v42 = v75;
  sub_100751364();

  swift_allocObject();
  v43 = sub_100750F14();
  v76 = v32;
  v77 = &protocol witness table for LayoutViewPlaceholder;
  v74 = &protocol witness table for LayoutViewPlaceholder;
  v75 = v43;
  v73 = v32;
  v72 = v40;

  v44 = v53;
  sub_10074C774();
  swift_getKeyPath();
  sub_100746914();

  sub_1003EF4B0(&qword_100933280, &type metadata accessor for GameCenterReengagementLayout);
  v45 = v55;
  sub_100750404();
  v47 = v46;

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  (*(v54 + 8))(v44, v45);
  sub_10000C620(v86);
  sub_10000C620(v87);
  sub_10000C620(v88);
  return v47;
}

uint64_t sub_1003EF324()
{
  v1 = sub_1007469A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

double sub_1003EF3F4(void *a1, double a2)
{
  sub_1007469A4();

  return sub_1003EE6D0(a1, a2);
}

uint64_t sub_1003EF4B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1003EF50C()
{
  result = qword_100936648;
  if (!qword_100936648)
  {
    sub_1007421C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936648);
  }

  return result;
}

uint64_t sub_1003EF56C()
{
  v0 = sub_100752624();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074D8D4();
  sub_100752764();
  sub_100752D34();
  v4 = v9;
  sub_10074D8C4();
  sub_100742B14();
  sub_100752D34();
  v5 = v9;
  sub_100742B04();
  sub_10000C518(&qword_100930CA0);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  v6 = sub_100752D84();

  return v6;
}

uint64_t type metadata accessor for GenericPageLayoutSectionProvider()
{
  result = qword_100936650;
  if (!qword_100936650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1003EF768(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v38 = a6;
  v39 = a7;
  v40 = a8;
  v41 = a4;
  v42 = a5;
  v13 = sub_10074E984();
  v34 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000C518(&unk_10092E450);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v32 - v18;
  v35 = a2;
  v36 = a3;
  v44 = a2;
  v45 = a3;
  sub_10074CBA4();
  v20 = sub_10074CBB4();
  v37 = a10;
  v33 = a9;
  v21 = v13;
  v22 = v20(a1, sub_10021EE3C, v43, v41, v42, v38, v39, v40, a9, a10);
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v17 + 8))(v19, v16);
  v23 = v34;
  v24 = (*(v34 + 88))(v15, v21);
  if (v24 == enum case for Shelf.ContentType.ribbonBar(_:))
  {
    v25 = v35();
    v26 = sub_1003EFB6C(a1, v25, v41, v42, v38, v39, v40, v33, v37);

LABEL_5:

    return v26;
  }

  v27 = v37;
  v28 = v41;
  v29 = v42;
  if (v24 == enum case for Shelf.ContentType.ribbonFlow(_:))
  {
    v30 = v35();
    v26 = sub_1003F0EB0(a1, v30, v28, v29, v38, v39, v40, v33, v27);

    goto LABEL_5;
  }

  if (v24 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
    [v22 setOrthogonalScrollingBehavior:2];
  }

  else
  {
    (*(v23 + 8))(v15, v21);
  }

  return v22;
}

uint64_t sub_1003EFACC(uint64_t a1)
{
  swift_allocObject();
  sub_10000C824(a1, v4);
  v2 = sub_10074CB64();
  sub_10000C620(a1);
  return v2;
}

uint64_t sub_1003EFB6C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v159 = a8;
  v160 = a7;
  v133 = a6;
  v132 = a5;
  v134 = a4;
  v135 = a3;
  v156 = a1;
  v10 = sub_10000C518(&qword_100942730);
  __chkstk_darwin(v10 - 8);
  v142 = &v128 - v11;
  v153 = sub_10000C518(&qword_10092C060);
  v152 = *(v153 - 8);
  __chkstk_darwin(v153);
  v151 = &v128 - v12;
  v147 = sub_10074A7B4();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v145 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v149 = &v128 - v15;
  v144 = sub_100750954();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v136 = &v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v137 = &v128 - v18;
  __chkstk_darwin(v19);
  v138 = &v128 - v20;
  __chkstk_darwin(v21);
  v139 = &v128 - v22;
  __chkstk_darwin(v23);
  v140 = &v128 - v24;
  __chkstk_darwin(v25);
  v141 = &v128 - v26;
  v150 = sub_100750BD4();
  v148 = *(v150 - 8);
  __chkstk_darwin(v150);
  v158 = &v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_10074F704();
  v157 = *(v155 - 8);
  __chkstk_darwin(v155);
  v154 = &v128 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1007469A4();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v128 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&aBlock = _swiftEmptyArrayStorage;
  v33 = *(a2 + 16);
  v161 = v30;
  v130 = a2;
  v131 = v33;
  if (v33)
  {
    sub_100744704();
    v35 = *(v30 + 16);
    v34 = v30 + 16;
    *&v163 = v35;
    v36 = a2 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
    v37 = *(v34 + 56);
    v162 = _swiftEmptyArrayStorage;
    v35(v32, v36, v29);
    while (1)
    {
      sub_1003F2A60(&qword_1009366A0, &type metadata accessor for RibbonBarItem);
      sub_1007468B4();
      (*(v34 - 8))(v32, v29);
      if (v168[0])
      {
        sub_100753284();
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v162 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_100753304();
        }

        sub_100753344();
        v162 = aBlock;
      }

      v36 += v37;
      if (!--v33)
      {
        break;
      }

      (v163)(v32, v36, v29);
    }
  }

  else
  {
    v162 = _swiftEmptyArrayStorage;
  }

  v38 = v154;
  v39 = v156;
  sub_100747B84();
  sub_10074F5C4();
  v41 = v40;
  v42 = v157 + 8;
  v43 = *(v157 + 8);
  v44 = v155;
  v43(v38, v155);
  v45 = sub_100747B94();
  v46 = type metadata accessor for SnapshotPageTraitEnvironment();
  v47 = objc_allocWithZone(v46);
  v48 = &v47[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v48 = v41;
  *(v48 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v47[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_traitCollection] = v45;
  v169.receiver = v47;
  v169.super_class = v46;
  v49 = objc_msgSendSuper2(&v169, "init");
  v50 = [v49 traitCollection];

  sub_100747B84();
  sub_10074F674();
  v52 = v51;
  v43(v38, v44);
  sub_100747B84();
  sub_10074F664();
  v54 = v53;
  v43(v38, v44);
  v55 = sub_1001C1FA8(v162, v50, v52, v54);

  if ((sub_1007532D4() & 1) == 0)
  {

    sub_100016C60(0, &unk_10093FE00);
    v67 = sub_100747C14();
    v68 = *(v67 - 8);
    v69 = v142;
    (*(v68 + 16))(v142, v39, v67);
    (*(v68 + 56))(v69, 0, 1, v67);
    v70 = sub_100753A44();

    sub_10000C8CC(v69, &qword_100942730);
    return v70;
  }

  v142 = v43;
  sub_100016C60(0, &qword_100923AB0);
  if (qword_100921488 != -1)
  {
    swift_once();
  }

  v162 = a9;
  v56 = sub_100750534();
  sub_10000D0FC(v56, qword_100981AD0);
  v57 = sub_100753C14();
  v58 = v136;
  sub_100750944();
  v59 = v137;
  *&v163 = v57;
  sub_100750934();
  v60 = *(v143 + 8);
  v61 = v144;
  v60(v58, v144);
  v62 = v138;
  sub_100750894();
  v60(v59, v61);
  v63 = v139;
  sub_1007508F4();
  v60(v62, v61);
  v64 = v140;
  sub_1007508E4();
  v60(v63, v61);
  sub_100750904();
  v60(v64, v61);
  sub_100750BB4();
  sub_100750BE4();
  v65 = sub_100753804();
  v129 = v55;
  v66 = v145;
  if (v65)
  {
    sub_1001C1510(v50, v145);
  }

  else
  {
    sub_1001C1848();
  }

  (*(v146 + 32))(v149, v66, v147);
  v166 = 0;
  aBlock = 0u;
  v165 = 0u;
  v71 = v150;
  v168[3] = v150;
  v168[4] = &protocol witness table for LabelPlaceholder;
  v72 = sub_10000D134(v168);
  v73 = v148;
  v74 = v158;
  (*(v148 + 16))(v72, v158, v71);
  v75 = sub_10074A7D4();
  swift_allocObject();
  *&aBlock = sub_10074A7C4();
  sub_1003F2A60(&qword_10092C068, &type metadata accessor for RibbonBarItemCellLayout);
  v76 = v151;
  v149 = v75;
  sub_100750594();
  swift_getOpaqueTypeConformance2();
  v77 = v153;
  sub_100751254();
  v79 = v78;

  (*(v152 + 8))(v76, v77);
  (*(v73 + 8))(v74, v71);
  v168[0] = _swiftEmptyArrayStorage;
  v80 = v129;
  *&v163 = v129[2];
  v157 = v42;
  if (!v163)
  {
    v86 = 0.0;
LABEL_26:

    v95 = (v163 - 1);
    sub_10074A754();
    sub_100751034();
    sub_10000C518(&unk_1009231A0);
    v96 = swift_allocObject();
    v163 = xmmword_1007A5CF0;
    *(v96 + 16) = xmmword_1007A5CF0;
    *(v96 + 32) = v50;
    v97 = v50;
    v98 = sub_100751044();
    sub_100753454();
    v100 = v99;

    v101 = objc_opt_self();
    v102 = objc_opt_self();
    v103 = [v102 absoluteDimension:v86 + v100 * v95];
    v104 = [v102 absoluteDimension:v79];
    v105 = [objc_opt_self() sizeWithWidthDimension:v103 heightDimension:v104];

    sub_100016C60(0, &qword_100923478);
    isa = sub_100753294().super.isa;

    v107 = [v101 horizontalGroupWithLayoutSize:v105 subitems:isa];

    v108 = objc_opt_self();
    sub_10074A754();
    v109 = swift_allocObject();
    *(v109 + 16) = v163;
    *(v109 + 32) = v97;
    *&v163 = v97;
    v110 = sub_100751044();
    sub_100753454();
    v112 = v111;

    v113 = [v108 fixedSpacing:v112];
    [v107 setInterItemSpacing:v113];

    v70 = [objc_opt_self() sectionWithGroup:v107];
    swift_getObjectType();
    v114 = v134;
    sub_10074BE74();
    sub_100016C60(0, &qword_10092E460);
    v115 = sub_100753294().super.isa;

    [v70 setBoundarySupplementaryItems:v115];

    sub_10074BE64();
    sub_100016C60(0, &qword_10092E468);
    v116 = sub_100753294().super.isa;

    [v70 setDecorationItems:v116];

    v117 = v154;
    sub_100747B84();
    sub_10074F694();
    v119 = v118;
    v121 = v120;
    (v142)(v117, v155);
    sub_10000C888(v114, v114[3]);
    sub_10074BE34();
    v123 = v122;
    sub_10000C888(v114, v114[3]);
    sub_10074BE54();
    [v70 setContentInsets:{v123, v119, v124, v121}];
    [v70 setOrthogonalScrollingBehavior:1];
    sub_10074CB94();
    v125 = sub_1007532C4();
    v127 = v126;

    if (v125)
    {
      v166 = v125;
      v167 = v127;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v165 = sub_1005D5E28;
      *(&v165 + 1) = &unk_100874B40;
      v125 = _Block_copy(&aBlock);
    }

    [v70 setVisibleItemsInvalidationHandler:v125];
    _Block_release(v125);

    return v70;
  }

  v81 = objc_opt_self();
  v158 = objc_opt_self();
  result = objc_opt_self();
  if (v131)
  {
    if (v163 <= v131)
    {
      v83 = result;
      v153 = v50;
      swift_getObjectType();
      v84 = 0;
      v85 = v80 + 4;
      v86 = 0.0;
      do
      {
        v87 = *&v85[v84];
        v88 = [v81 absoluteDimension:v87];
        v89 = [v81 absoluteDimension:v79];
        v90 = [v158 sizeWithWidthDimension:v88 heightDimension:v89];

        sub_10074B564();
        sub_100016C60(0, &unk_10092E470);
        v91 = v90;
        v92 = sub_100753294().super.isa;

        v93 = [v83 itemWithLayoutSize:v91 supplementaryItems:v92];

        v94 = v93;
        sub_100753284();
        if (*((v168[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v168[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        ++v84;
        sub_100753344();

        v86 = v86 + v87;
      }

      while (v163 != v84);
      v50 = v153;
      goto LABEL_26;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003F0EB0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v187 = a4;
  v227 = a8;
  v230 = a7;
  v185 = a5;
  v186 = a6;
  v188 = a3;
  v193 = a1;
  v10 = sub_10000C518(&qword_100942730);
  __chkstk_darwin(v10 - 8);
  v189 = &v182 - v11;
  v12 = sub_10000C518(&qword_10092F168);
  v13 = *(v12 - 8);
  v233 = v12;
  v234 = v13;
  __chkstk_darwin(v12);
  v226 = &v182 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v203 = &v182 - v16;
  v215 = sub_10000C518(&qword_10092C060);
  v224 = *(v215 - 8);
  __chkstk_darwin(v215);
  v214 = &v182 - v17;
  v213 = sub_10074A7B4();
  v223 = *(v213 - 8);
  __chkstk_darwin(v213);
  v212 = &v182 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v231 = &v182 - v20;
  v211 = sub_100750954();
  v222 = *(v211 - 8);
  __chkstk_darwin(v211);
  v210 = &v182 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v209 = &v182 - v23;
  __chkstk_darwin(v24);
  v208 = &v182 - v25;
  __chkstk_darwin(v26);
  v207 = &v182 - v27;
  __chkstk_darwin(v28);
  v206 = &v182 - v29;
  __chkstk_darwin(v30);
  v205 = &v182 - v31;
  v204 = sub_100750BD4();
  v221 = *(v204 - 8);
  __chkstk_darwin(v204);
  v229 = &v182 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_10074F704();
  v194 = *(v192 - 8);
  __chkstk_darwin(v192);
  v191 = &v182 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_1007469A4();
  v34 = *(v232 - 1);
  __chkstk_darwin(v232);
  v217 = &v182 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v182 - v37;
  *&v235 = _swiftEmptyArrayStorage;
  v39 = *(a2 + 16);
  v182 = a2;
  v183 = v34;
  v184 = v39;
  if (v39)
  {
    sub_100744704();
    v41 = *(v34 + 16);
    v40 = v34 + 16;
    ObjectType = v41;
    v42 = a2 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v225 = *(v40 + 56);
    v218 = _swiftEmptyArrayStorage;
    do
    {
      v43 = v232;
      (ObjectType)(v38, v42, v232);
      sub_1003F2A60(&qword_1009366A0, &type metadata accessor for RibbonBarItem);
      sub_1007468B4();
      (*(v40 - 8))(v38, v43);
      if (v254[0])
      {
        sub_100753284();
        if (*((v235 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v235 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();
        v218 = v235;
      }

      v42 += v225;
      --v39;
    }

    while (v39);
  }

  else
  {
    v218 = _swiftEmptyArrayStorage;
  }

  v44 = v191;
  sub_100747B84();
  sub_10074F5C4();
  v46 = v45;
  v47 = *(v194 + 8);
  v194 += 8;
  v190 = v47;
  v47(v44, v192);
  v48 = sub_100747B94();
  v49 = type metadata accessor for SnapshotPageTraitEnvironment();
  v50 = objc_allocWithZone(v49);
  v51 = &v50[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v51 = v46;
  *(v51 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v50[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_traitCollection] = v48;
  v258.receiver = v50;
  v258.super_class = v49;
  v52 = objc_msgSendSuper2(&v258, "init");
  v53 = [v52 traitCollection];

  v54 = v218;
  if (v218 >> 62)
  {
    v94 = v218;
    v55 = sub_100754664();
    v54 = v94;
    if (v55)
    {
      goto LABEL_11;
    }

LABEL_37:

    v57 = _swiftEmptyArrayStorage;
    goto LABEL_38;
  }

  v55 = *((v218 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v55)
  {
    goto LABEL_37;
  }

LABEL_11:
  v56 = v54;
  v257 = _swiftEmptyArrayStorage;
  sub_10001E554(0, v55 & ~(v55 >> 63), 0);
  if (v55 < 0)
  {
    goto LABEL_94;
  }

  v57 = v257;
  v58 = sub_100016C60(0, &qword_100923AB0);
  v59 = 0;
  v60 = v56;
  v200 = v56 & 0xC000000000000001;
  v201 = v58;
  v198 = (v223 + 32);
  v199 = (v222 + 8);
  v196 = v224 + 1;
  v197 = (v221 + 2);
  v195 = (v221 + 1);
  v216 = v53;
  v202 = v55;
  do
  {
    if (v200)
    {
      v61 = sub_100754574();
    }

    else
    {
      v61 = *(v60 + 8 * v59 + 32);
    }

    v62 = sub_1007446E4();
    v221 = v63;
    v222 = v62;
    v64 = sub_1007446F4();
    ObjectType = v57;
    if (v64)
    {
      sub_10074F2A4();
      v66 = v65;
      v68 = v67;

      v219 = v68;
      v220 = v66;
    }

    else
    {
      v219 = 0;
      v220 = 0;
    }

    v69 = sub_1007446F4();
    if (v69)
    {
    }

    v223 = v69;
    v225 = v61;
    if (qword_100921488 != -1)
    {
      swift_once();
    }

    v70 = sub_100750534();
    sub_10000D0FC(v70, qword_100981AD0);
    v53 = v216;
    v71 = sub_100753C14();
    v72 = v210;
    sub_100750944();
    v73 = v209;
    v224 = v71;
    sub_100750934();
    v74 = *v199;
    v75 = v211;
    (*v199)(v72, v211);
    v76 = v208;
    sub_100750894();
    v74(v73, v75);
    v77 = v207;
    sub_1007508F4();
    v74(v76, v75);
    v78 = v206;
    sub_1007508E4();
    v74(v77, v75);
    sub_100750904();
    v74(v78, v75);
    sub_100750BB4();
    sub_100750BE4();
    if (sub_100753804())
    {
      v79 = v212;
      sub_1001C1510(v53, v212);
    }

    else
    {
      v79 = v212;
      if (v64)
      {
        sub_100753B74();
        v237 = &protocol witness table for Double;
        *(&v236 + 1) = &type metadata for Double;
        *&v235 = 0x4020000000000000;
        v255 = &type metadata for Double;
        v256 = &protocol witness table for Double;
        v253 = &protocol witness table for Double;
        v254[0] = 0x4024000000000000;
        v252 = &type metadata for Double;
        v251 = 0x4028000000000000;
        v250 = &protocol witness table for Double;
        v249 = &type metadata for Double;
        v248 = 0x401C000000000000;
        v247 = &protocol witness table for Double;
        v246 = &type metadata for Double;
        v245 = 0x401C000000000000;
        v244 = &protocol witness table for Double;
        v243 = &type metadata for Double;
        v242 = 0;
        v240 = &type metadata for Double;
        v241 = &protocol witness table for Double;
        v239 = 0;
      }

      else
      {
        v237 = &protocol witness table for Double;
        *(&v236 + 1) = &type metadata for Double;
        *&v235 = 0x4020000000000000;
        v255 = &type metadata for Double;
        v256 = &protocol witness table for Double;
        v253 = &protocol witness table for Double;
        v254[0] = 0x4024000000000000;
        v252 = &type metadata for Double;
        v251 = 0x4024000000000000;
        v250 = &protocol witness table for Double;
        v249 = &type metadata for Double;
        v248 = 0x401C000000000000;
        v247 = &protocol witness table for Double;
        v246 = &type metadata for Double;
        v245 = 0x401C000000000000;
        v244 = &protocol witness table for Double;
        v243 = &type metadata for Double;
        v242 = 0x4024000000000000;
        v240 = &type metadata for Double;
        v241 = &protocol witness table for Double;
        v239 = 0x4024000000000000;
      }

      sub_10074A784();
      v53 = v216;
    }

    (*v198)(v231, v79, v213);
    if (v223)
    {
      v80 = sub_100744D34();
      swift_allocObject();
      v81 = sub_100744D24();
      *(&v236 + 1) = v80;
      v237 = sub_1003F2A60(&qword_100923048, &type metadata accessor for EmptyPlaceable);
      *&v235 = v81;
    }

    else
    {
      v237 = 0;
      v235 = 0u;
      v236 = 0u;
    }

    v82 = v204;
    v255 = v204;
    v256 = &protocol witness table for LabelPlaceholder;
    v83 = sub_10000D134(v254);
    v84 = v229;
    (*v197)(v83, v229, v82);
    sub_10074A7D4();
    swift_allocObject();
    *&v235 = sub_10074A7C4();
    sub_1003F2A60(&qword_10092C068, &type metadata accessor for RibbonBarItemCellLayout);
    v85 = v214;
    sub_100750594();
    swift_getOpaqueTypeConformance2();
    v86 = v215;
    sub_100751254();
    v88 = v87;
    v90 = v89;

    (*v196)(v85, v86);
    (*v195)(v84, v82);
    v57 = ObjectType;
    v257 = ObjectType;
    v92 = *(ObjectType + 16);
    v91 = *(ObjectType + 24);
    if (v92 >= v91 >> 1)
    {
      sub_10001E554((v91 > 1), v92 + 1, 1);
      v57 = v257;
    }

    ++v59;
    v57[2] = v92 + 1;
    v93 = &v57[2 * v92];
    v93[4] = v88;
    v93[5] = v90;
    v60 = v218;
  }

  while (v202 != v59);

LABEL_38:
  type metadata accessor for CGSize(0);
  if ((sub_1007532D4() & 1) == 0)
  {

    sub_100016C60(0, &unk_10093FE00);
    v129 = sub_100747C14();
    v130 = *(v129 - 8);
    v131 = v189;
    (*(v130 + 16))(v189, v193, v129);
    (*(v130 + 56))(v131, 0, 1, v129);
    v132 = sub_100753A44();

    sub_10000C8CC(v131, &qword_100942730);
    return v132;
  }

  sub_10074A7D4();
  sub_10074A754();
  sub_100751034();
  sub_10000C518(&unk_1009231A0);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_1007A5CF0;
  *(v95 + 32) = v53;
  v96 = v53;
  v97 = sub_100751044();
  sub_100753454();
  v99 = v98;

  v100 = v191;
  sub_100747B84();
  sub_10074FC24();
  sub_10074F674();
  v102 = v101;
  result = v190(v100, v192);
  v104 = v57[2];
  v105 = _swiftEmptyArrayStorage;
  v216 = v96;
  ObjectType = v57;
  if (!v104)
  {
    v224 = _swiftEmptyArrayStorage;
LABEL_67:
    v225 = a9;

    v55 = _swiftEmptyArrayStorage;
    v254[0] = _swiftEmptyArrayStorage;
    v222 = v105[2];
    if (!v222)
    {

      v159 = _swiftEmptyArrayStorage;
      v134 = 0.0;
LABEL_86:
      v160 = objc_opt_self();
      v161 = [v160 absoluteDimension:v102];
      v162 = [v160 absoluteDimension:v134];
      v55 = [objc_opt_self() sizeWithWidthDimension:v161 heightDimension:v162];

      if (!(v159 >> 62))
      {

        sub_100754764();
        sub_100016C60(0, &qword_100923478);
LABEL_88:

        v163 = objc_opt_self();
        sub_100016C60(0, &qword_100923478);
        isa = sub_100753294().super.isa;

        v165 = [v163 verticalGroupWithLayoutSize:v55 subitems:isa];

        v166 = [objc_opt_self() fixedSpacing:10.0];
        [v165 setInterItemSpacing:v166];

        v167 = objc_opt_self();
        v234 = v165;
        v132 = [v167 sectionWithGroup:v165];
        swift_getObjectType();
        v168 = v187;
        sub_10074BE74();
        sub_100016C60(0, &qword_10092E460);
        v169 = sub_100753294().super.isa;

        [v132 setBoundarySupplementaryItems:v169];

        sub_10074BE64();
        sub_100016C60(0, &qword_10092E468);
        v170 = sub_100753294().super.isa;

        [v132 setDecorationItems:v170];

        v171 = v191;
        sub_100747B84();
        sub_10074F694();
        v173 = v172;
        v175 = v174;
        v190(v171, v192);
        sub_10000C888(v168, v168[3]);
        sub_10074BE34();
        v177 = v176;
        sub_10000C888(v168, v168[3]);
        sub_10074BE54();
        [v132 setContentInsets:{v177, v173, v178, v175}];
        sub_10074CB94();
        v179 = sub_1007532C4();
        v181 = v180;

        if (v179)
        {
          v237 = v179;
          v238 = v181;
          *&v235 = _NSConcreteStackBlock;
          *(&v235 + 1) = 1107296256;
          *&v236 = sub_1005D5E28;
          *(&v236 + 1) = &unk_100874B68;
          v179 = _Block_copy(&v235);
        }

        [v132 setVisibleItemsInvalidationHandler:{v179, v182, v183}];
        _Block_release(v179);

        return v132;
      }

LABEL_95:
      sub_100016C60(0, &qword_100923478);

      sub_100754654();

      goto LABEL_88;
    }

    v221 = v105 + 4;
    v219 = objc_opt_self();
    v232 = objc_opt_self();
    v231 = objc_opt_self();
    v218 = objc_opt_self();
    v133 = 0;
    v134 = 0.0;
    v220 = v105;
    while (v133 < v105[2])
    {
      v223 = v133;
      v135 = v221[v133];
      v136 = *(v135 + 16);
      if (v136)
      {
        *&v235 = _swiftEmptyArrayStorage;

        sub_1007545C4();
        v229 = (v135 + ((v234[80] + 32) & ~v234[80]));
        ObjectType = swift_getObjectType();
        v137 = objc_opt_self();
        v138 = 0;
        v139 = 0.0;
        v140 = 0.0;
        while (v138 < *(v135 + 16))
        {
          v141 = v226;
          sub_1003F29F0(&v229[*(v234 + 9) * v138], v226);
          v142 = (v141 + *(v233 + 48));
          v143 = *v142;
          v144 = v142[1];
          if (v140 <= v144)
          {
            v140 = v142[1];
          }

          ++v138;
          v139 = v139 + v143;
          sub_10074B564();
          v145 = v232;
          v146 = [v232 absoluteDimension:v143];
          v147 = [v145 absoluteDimension:v144];
          v55 = [v231 sizeWithWidthDimension:v146 heightDimension:v147];

          sub_100016C60(0, &unk_10092E470);
          v148 = sub_100753294().super.isa;

          v149 = [v137 itemWithLayoutSize:v55 supplementaryItems:v148];

          sub_10000C8CC(v141, &qword_10092F168);
          sub_1007545A4();
          sub_1007545D4();
          sub_1007545E4();
          sub_1007545B4();
          if (v136 == v138)
          {

            v55 = _swiftEmptyArrayStorage;
            goto LABEL_78;
          }
        }

        __break(1u);
        break;
      }

      v139 = 0.0;
      v140 = 0.0;
LABEL_78:
      if (v136 <= 1)
      {
        v150 = 1;
      }

      else
      {
        v150 = v136;
      }

      v151 = v232;
      v152 = [v232 absoluteDimension:{v99 * (v150 - 1) + v139, v182, v183}];
      v153 = [v151 absoluteDimension:v140];
      v154 = [v231 sizeWithWidthDimension:v152 heightDimension:v153];

      sub_100016C60(0, &qword_100923478);
      v155 = sub_100753294().super.isa;

      v156 = [v219 horizontalGroupWithLayoutSize:v154 subitems:v155];

      v157 = [v218 fixedSpacing:v99];
      [v156 setInterItemSpacing:v157];

      v158 = v156;
      sub_100753284();
      if (*((v254[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v254[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      v133 = v223 + 1;
      sub_100753344();

      v134 = v134 + v140 + 10.0;
      v105 = v220;
      if (v133 == v222)
      {
        v159 = v254[0];

        goto LABEL_86;
      }
    }

    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  if (v184)
  {
    if (v104 <= v184)
    {
      v106 = *(v183 + 16);
      v107 = v182 + ((*(v183 + 80) + 32) & ~*(v183 + 80));
      v231 = *(v183 + 72);
      v108 = (v183 + 8);
      v109 = (v57 + 5);
      v110 = v102;
      v224 = _swiftEmptyArrayStorage;
      do
      {
        v111 = *(v109 - 1);
        v112 = *v109;
        (v106)(v217, v107, v232);
        v113 = ceil(v111);
        if (v102 > v111)
        {
          v114 = v113;
        }

        else
        {
          v114 = v102;
        }

        if (v110 >= v114)
        {
          v117 = v105;
          v118 = v224;
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v105 = sub_100255D2C(0, v105[2] + 1, 1, v105);
          }

          v116 = v105[2];
          v115 = v105[3];
          v117 = v105;
          if (v116 >= v115 >> 1)
          {
            v117 = sub_100255D2C((v115 > 1), v116 + 1, 1, v105);
          }

          v117[2] = v116 + 1;
          v117[v116 + 4] = v224;
          v110 = v102;
          v118 = _swiftEmptyArrayStorage;
        }

        v119 = (v203 + *(v233 + 48));
        v106();
        *v119 = v114;
        v119[1] = v112;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v121 = v118;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v121 = sub_100255D08(0, v118[2] + 1, 1, v118);
        }

        v123 = v121[2];
        v122 = v121[3];
        v224 = v121;
        if (v123 >= v122 >> 1)
        {
          v224 = sub_100255D08(v122 > 1, v123 + 1, 1, v224);
        }

        v124 = v224;
        v224[2] = (v123 + 1);
        sub_1003F2980(v203, v124 + ((v234[80] + 32) & ~v234[80]) + *(v234 + 9) * v123);
        if (v104 == 1)
        {

          v125 = v117;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v125 = sub_100255D2C(0, v117[2] + 1, 1, v117);
          }

          v127 = v125[2];
          v126 = v125[3];
          v128 = v125;
          if (v127 >= v126 >> 1)
          {
            v128 = sub_100255D2C((v126 > 1), v127 + 1, 1, v125);
          }

          (*v108)(v217, v232);
          v128[2] = v127 + 1;
          v105 = v128;
          v128[v127 + 4] = v224;
        }

        else
        {
          (*v108)(v217, v232);
          v105 = v117;
        }

        v110 = v110 - (v99 + v114);
        v107 += v231;
        v109 += 2;
        --v104;
      }

      while (v104);
      goto LABEL_67;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003F2968(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003F2980(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_10092F168);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003F29F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_10092F168);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003F2A60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003F2AB4()
{
  sub_10000C518(&qword_1009366A8);
  sub_100752754();
  sub_100745584();
  sub_100745564();
  sub_100745514();

  sub_100745564();
  sub_100745574();

  sub_100745564();
  sub_100745554();

  v0 = sub_10074CE34();
  sub_100752754();
  if (v3[0])
  {
    v1 = &protocol witness table for SearchGhostHintMetricsTracker;
  }

  else
  {
    v0 = 0;
    v1 = 0;
    v3[1] = 0;
    v3[2] = 0;
  }

  v3[3] = v0;
  v3[4] = v1;
  sub_100745564();
  sub_100745504();

  sub_10000C518(&qword_1009366B0);
  sub_100752754();
  sub_100752B24();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_10000C8CC(v4, &qword_100935468);
  return sub_10000C8CC(v3, &qword_100935460);
}

uint64_t sub_1003F2CAC@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = sub_100747524();
  v36 = *(v1 - 8);
  v37 = v1;
  __chkstk_darwin(v1);
  v35 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100754724();
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_1009249B0);
  v29 = *(v5 - 8);
  v30 = v5;
  __chkstk_darwin(v5);
  v28 = &v27 - v6;
  v7 = sub_10000C518(&qword_100928550);
  v27 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v34 = sub_100747814();
  v10 = *(v34 - 8);
  __chkstk_darwin(v34);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&unk_10092E450);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v27 - v15;
  swift_getKeyPath();
  sub_100746914();

  swift_getKeyPath();
  sub_1007525B4();

  (*(v14 + 8))(v16, v13);
  if (v41 && (v17 = sub_100743A34(), , (v17 & 1) != 0))
  {
    v18 = 1;
    v19 = v38;
  }

  else
  {
    swift_getKeyPath();
    sub_100746914();

    v20 = v41;
    sub_10024BBC0(v12);

    swift_getKeyPath();
    sub_100746914();

    v21 = v41;
    v22 = sub_100753804();

    if ((v22 & 1) == 0)
    {
      sub_1007477E4();
      swift_getKeyPath();
      sub_100746914();

      v39 = v40;
      sub_100743464();
      swift_unknownObjectRelease();
      (*(v27 + 8))(v9, v7);
      v23 = v28;
      sub_1007477F4();
      swift_getKeyPath();
      sub_100746914();

      v24 = v31;
      sub_1007502D4();
      sub_100743514();
      swift_unknownObjectRelease();
      (*(v32 + 8))(v24, v33);
      (*(v29 + 8))(v23, v30);
    }

    (*(v36 + 104))(v35, enum case for ComponentSeparator.Position.bottom(_:), v37);
    v19 = v38;
    sub_100747534();
    (*(v10 + 8))(v12, v34);
    v18 = 0;
  }

  v25 = sub_100747564();
  return (*(*(v25 - 8) + 56))(v19, v18, 1, v25);
}

uint64_t sub_1003F32AC()
{
  sub_10000C518(&unk_10093E480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A7250;
  *(inited + 32) = UIActivityTypeAirDrop;
  *(inited + 40) = UIActivityTypeCopyToPasteboard;
  *(inited + 48) = UIActivityTypeMessage;
  *(inited + 56) = UIActivityTypePostToFacebook;
  *(inited + 64) = UIActivityTypePostToTwitter;
  *(inited + 72) = UIActivityTypePostToWeibo;
  v1 = UIActivityTypeAirDrop;
  v2 = UIActivityTypeCopyToPasteboard;
  v3 = UIActivityTypeMessage;
  v4 = UIActivityTypePostToFacebook;
  v5 = UIActivityTypePostToTwitter;
  v6 = UIActivityTypePostToWeibo;
  v7 = sub_1001A92FC(inited);
  swift_setDeallocating();
  type metadata accessor for ActivityType(0);
  result = swift_arrayDestroy();
  qword_1009366B8 = v7;
  return result;
}

id sub_1003F3614()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextActivityItemProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003F36BC@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_100750304();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[18] = &type metadata for Double;
  v26[19] = &protocol witness table for Double;
  v26[14] = &protocol witness table for Double;
  v26[15] = 0x4046000000000000;
  v26[13] = &type metadata for Double;
  v26[10] = 0x4030000000000000;
  v26[8] = &type metadata for Double;
  v26[9] = &protocol witness table for Double;
  v26[5] = 0x4020000000000000;
  if (qword_100920F10 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v16 = sub_10000D0FC(v5, qword_100980A80);
  v6 = *(v5 - 8);
  v15 = *(v6 + 16);
  v17 = v6 + 16;
  v15(v4, v16, v5);
  v14 = enum case for FontSource.useCase(_:);
  v13 = v2[13];
  v13(v4);
  v7 = sub_100750B04();
  v26[3] = v7;
  v26[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v26);
  v24 = v1;
  v25 = &protocol witness table for FontSource;
  v8 = sub_10000D134(v23);
  v9 = v2[2];
  v9(v8, v4, v1);
  sub_100750B14();
  v10 = v2[1];
  v10(v4, v1);
  v25 = &protocol witness table for Double;
  v24 = &type metadata for Double;
  v23[0] = 0;
  v15(v4, v16, v5);
  (v13)(v4, v14, v1);
  v22[3] = v7;
  v22[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v22);
  v20 = v1;
  v21 = &protocol witness table for FontSource;
  v11 = sub_10000D134(v19);
  v9(v11, v4, v1);
  sub_100750B14();
  v10(v4, v1);
  v21 = &protocol witness table for Double;
  v20 = &type metadata for Double;
  v19[0] = 0x4020000000000000;
  return sub_100747404();
}

char *sub_1003F3A04()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100751A34();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10000C518(&qword_100936728);
  __chkstk_darwin(v4 - 8);
  v6 = &v30[-1] - v5;
  v7 = sub_100747424();
  __chkstk_darwin(v7 - 8);
  v9 = &v30[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100750534();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920F08 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v10, qword_100980A68);
  (*(v11 + 16))(v13, v14, v10);
  v15 = [objc_opt_self() currentTraitCollection];
  sub_1003F36BC(v9);

  v16 = objc_allocWithZone(type metadata accessor for ArcadeLockupView());
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension24ArcadeFloatingBannerView_lockupView] = sub_1004AE6A0(v13, v9, 0, 0.0, 0.0, 0.0, 0.0);
  v31.receiver = v1;
  v31.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v31, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v17 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v18 = v17;
  sub_1007539A4();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [v18 setLayoutMargins:{v20, v22, v24, v26}];
  [v18 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  sub_1007517D4();
  v27 = sub_1007517E4();
  (*(*(v27 - 8) + 56))(v6, 0, 1, v27);
  sub_100753D64();
  sub_100751A24();
  v30[3] = sub_100751A44();
  v30[4] = &protocol witness table for _Glass;
  sub_10000D134(v30);
  sub_100751A54();
  sub_100753CA4();

  [v18 addSubview:*&v18[OBJC_IVAR____TtC22SubscribePageExtension24ArcadeFloatingBannerView_lockupView]];
  return v18;
}

uint64_t ArcadeSubscribePageLayout.init(metrics:headerView:contentView:detailsView:offerButton:dismissButton:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  memcpy(a7, __src, 0x108uLL);
  v13 = *(a2 + 16);
  *(a7 + 264) = *a2;
  *(a7 + 280) = v13;
  *(a7 + 296) = *(a2 + 32);
  v14 = *(a3 + 16);
  *(a7 + 304) = *a3;
  *(a7 + 320) = v14;
  *(a7 + 336) = *(a3 + 32);
  sub_100012160(a4, a7 + 344);
  sub_100012160(a5, a7 + 384);

  return sub_100012160(a6, a7 + 424);
}

uint64_t AppPromotionFormattedDateLayout.Metrics.textBottomSpace.setter(__int128 *a1)
{
  sub_10000C620(v1 + 40);

  return sub_100012160(a1, v1 + 40);
}

void ArcadeSubscribePageLayout.Metrics.detailsMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[10] = a1;
  v4[11] = a2;
  v4[12] = a3;
  v4[13] = a4;
}

void ArcadeSubscribePageLayout.Metrics.offerButtonMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[19] = a1;
  v4[20] = a2;
  v4[21] = a3;
  v4[22] = a4;
}

uint64_t ArcadeSubscribePageLayout.Metrics.buttonsSpacing.setter(__int128 *a1)
{
  sub_10000C620(v1 + 184);

  return sub_100012160(a1, v1 + 184);
}

uint64_t ArcadeSubscribePageLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  sub_10000C620(v1 + 224);

  return sub_100012160(a1, v1 + 224);
}

double ArcadeSubscribePageLayout.contentViewSize(fitting:in:)(uint64_t a1, double a2)
{
  swift_getObjectType();

  return sub_1003F4EB0(a1, v2, a2);
}

uint64_t ArcadeSubscribePageLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v52 = a2;
  v53 = sub_100750354();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v49 = sub_100754724();
  v13 = *(v49 - 8);
  __chkstk_darwin(v49);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CD5F0(v6 + 264, &v59);
  v16 = *(&v60 + 1);
  if (*(&v60 + 1))
  {
    sub_100012160(&v59, v54);
    sub_10000C888(v54, v55);
    sub_100750414();
    v18 = v17;
    v20 = v19;
    v65.origin.x = a3;
    v65.origin.y = a4;
    v65.size.width = a5;
    v65.size.height = a6;
    v21 = CGRectGetMidX(v65) + v18 * -0.5;
    v66.origin.x = a3;
    v66.origin.y = a4;
    v66.size.width = a5;
    v66.size.height = a6;
    MinY = CGRectGetMinY(v66);
    sub_10000C888(v54, v55);
    sub_100753B24();
    sub_100750394();
    sub_10000C620(v54);
  }

  else
  {
    sub_1002C9F48(&v59);
    v21 = 0.0;
    MinY = 0.0;
    v18 = 0.0;
    v20 = 0;
  }

  sub_1000CD5F0(v6 + 304, &v59);
  v23 = *(&v60 + 1);
  if (*(&v60 + 1))
  {
    *&v47 = v20;
    sub_100012160(&v59, v54);
    swift_getObjectType();
    sub_1003F4EB0(a1, v6, a5);
    *&v48 = v24;
    sub_10000C888(v6, *(v6 + 24));
    sub_100536120();
    sub_100750564();
    v26 = v25;
    (*(v13 + 8))(v15, v49);
    if (v16)
    {
      v67.origin.x = v21;
      v67.origin.y = MinY;
      v67.size.width = v18;
      *&v67.size.height = v47;
      v26 = v26 + CGRectGetMaxY(v67);
    }

    v68.origin.x = a3;
    v68.origin.y = a4;
    v68.size.width = a5;
    v68.size.height = a6;
    MinX = CGRectGetMinX(v68);
    v69.origin.x = a3;
    v69.origin.y = a4;
    v69.size.width = a5;
    v69.size.height = a6;
    Width = CGRectGetWidth(v69);
    sub_10000C888(v54, v55);
    v44 = Width;
    v45 = MinX;
    v29 = v26;
    v30 = *&v48;
    sub_100753B24();
    sub_100750394();
    sub_10000C620(v54);
  }

  else
  {
    sub_1002C9F48(&v59);
    v44 = 0.0;
    v45 = 0.0;
    v29 = 0.0;
    v30 = 0.0;
  }

  v31 = *(v6 + 80);
  v48 = *(v6 + 96);
  v49 = v31;
  sub_10000C824(v6 + 112, v61);
  v32 = *(v6 + 152);
  v46 = *(v6 + 168);
  v47 = v32;
  sub_10000C824(v6 + 184, &v63);
  sub_10000C824(v6 + 224, &v64);
  v59 = v49;
  v60 = v48;
  v62 = v46;
  *&v61[40] = v47;
  sub_1003F5168(&v59, v54);
  sub_10000C824(v6 + 344, &v56);
  sub_10000C824(v6 + 384, &v57);
  sub_10000C824(v6 + 424, &v58);
  swift_getObjectType();
  sub_1003F51A0(a5, a1, v54);
  v34 = v33;
  if (v23 && (v70.size.width = v44, v70.origin.x = v45, v70.origin.y = v29, v43 = v29, v70.size.height = v30, v35 = v30, v36 = v34 + CGRectGetMaxY(v70), v71.origin.x = a3, v71.origin.y = a4, v71.size.width = a5, v71.size.height = a6, CGRectGetMaxY(v71) < v36))
  {
    v72.size.width = v44;
    v72.origin.x = v45;
    v72.origin.y = v43;
    v72.size.height = v35;
    MaxY = CGRectGetMaxY(v72);
  }

  else
  {
    v73.origin.x = a3;
    v73.origin.y = a4;
    v73.size.width = a5;
    v73.size.height = a6;
    MaxY = CGRectGetMaxY(v73) - v34;
  }

  v74.origin.x = a3;
  v74.origin.y = a4;
  v74.size.width = a5;
  v74.size.height = a6;
  v38 = CGRectGetMinX(v74);
  v75.origin.x = a3;
  v75.origin.y = a4;
  v75.size.width = a5;
  v75.size.height = a6;
  v39 = CGRectGetWidth(v75);
  v40 = v50;
  sub_1003F490C(v38, MaxY, v39, v34);
  sub_100750344();
  sub_100750334();
  v76.origin.x = a3;
  v76.origin.y = a4;
  v76.size.width = a5;
  v76.size.height = a6;
  CGRectGetHeight(v76);
  v77.origin.x = a3;
  v77.origin.y = a4;
  v77.size.width = a5;
  v77.size.height = a6;
  CGRectGetMinX(v77);
  v78.origin.x = a3;
  v78.origin.y = a4;
  v78.size.width = a5;
  v78.size.height = a6;
  CGRectGetMinY(v78);
  v79.origin.x = a3;
  v79.origin.y = a4;
  v79.size.width = a5;
  v79.size.height = a6;
  CGRectGetWidth(v79);
  sub_100750314();
  (*(v51 + 8))(v40, v53);
  sub_1003F54A8(v54);
  return sub_1003F54D8(&v59);
}

uint64_t sub_1003F490C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = sub_100754724();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + 16);
  v36 = *v4;
  v37 = v14;
  sub_10000C888((v4 + 104), *(v4 + 128));
  sub_100536120();
  sub_100750564();
  v35 = v15;
  v16 = *(v11 + 8);
  v16(v13, v10);
  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = a4;
  CGRectGetWidth(v38);
  v39.origin.x = a1;
  v39.origin.y = a2;
  v39.size.width = a3;
  v39.size.height = a4;
  CGRectGetHeight(v39);
  sub_10000C888(v5 + 23, v5[26]);
  sub_100750414();
  v18 = v17;
  v20 = v19;
  v40.origin.x = a1;
  v40.origin.y = a2;
  v40.size.width = a3;
  v40.size.height = a4;
  v21 = CGRectGetMidX(v40) + v18 * -0.5;
  v41.origin.x = a1;
  v41.origin.y = a2;
  v41.size.width = a3;
  v41.size.height = a4;
  v22 = v36 + CGRectGetMinY(v41);
  sub_10000C888(v5 + 23, v5[26]);
  sub_100753B24();
  sub_100750394();
  v34 = v21;
  v42.origin.x = v21;
  v42.origin.y = v22;
  v42.size.width = v18;
  v36 = v20;
  v42.size.height = v20;
  CGRectGetMaxY(v42);
  sub_10000C888(v5 + 28, v5[31]);
  if (sub_1007503A4())
  {
    sub_10000C888((v4 + 224), *(v4 + 248));
    sub_100750394();
  }

  else
  {
    sub_10000C888((v4 + 32), *(v4 + 56));
    sub_100536120();
    sub_100750564();
    v33 = v23;
    v16(v13, v10);
    v43.origin.x = a1;
    v43.origin.y = a2;
    v43.size.width = a3;
    v43.size.height = a4;
    v24 = CGRectGetWidth(v43) - *(v4 + 80) - *(v4 + 96);
    sub_10000C888((v4 + 224), *(v4 + 248));
    v44.origin.x = a1;
    v44.origin.y = a2;
    v44.size.width = a3;
    v44.size.height = a4;
    CGRectGetWidth(v44);
    sub_100750414();
    if (v24 <= v25)
    {
      v24 = v25;
    }

    v45.origin.x = a1;
    v45.origin.y = a2;
    v45.size.width = a3;
    v45.size.height = a4;
    Width = CGRectGetWidth(v45);
    if (Width < v24)
    {
      v24 = Width;
    }

    v46.origin.x = a1;
    v46.origin.y = a2;
    v46.size.width = a3;
    v46.size.height = a4;
    v27 = CGRectGetMidX(v46) + v24 * -0.5;
    v47.origin.x = v34;
    v47.origin.y = v22;
    v47.size.width = v18;
    v47.size.height = v36;
    v28 = v37 + CGRectGetMaxY(v47);
    sub_10000C888((v4 + 224), *(v4 + 248));
    v29 = v33;
    sub_100753B24();
    sub_100750394();
    v48.origin.x = v27;
    v48.origin.y = v28;
    v48.size.width = v24;
    v48.size.height = v29;
    CGRectGetMaxY(v48);
  }

  sub_10000C888((v4 + 264), *(v4 + 288));
  v30 = sub_1007503A4();
  sub_10000C888((v4 + 264), *(v4 + 288));
  if ((v30 & 1) == 0)
  {
    sub_100750414();
    v49.origin.x = a1;
    v49.origin.y = a2;
    v49.size.width = a3;
    v49.size.height = a4;
    CGRectGetMidX(v49);
    sub_10000C888((v4 + 264), *(v4 + 288));
    sub_100753B24();
  }

  sub_100750394();
  return sub_100750314();
}

double sub_1003F4E54(uint64_t a1, double a2)
{
  swift_getObjectType();

  return sub_1003F51A0(a2, a1, v2);
}

double sub_1003F4EB0(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_100754724();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 80);
  v16 = *(a2 + 96);
  v17 = v10;
  sub_10000C824(a2 + 112, v26);
  v11 = *(a2 + 152);
  v14 = *(a2 + 168);
  v15 = v11;
  sub_10000C824(a2 + 184, &v28);
  sub_10000C824(a2 + 224, &v29);
  v25[0] = v17;
  v25[1] = v16;
  v27 = v14;
  *&v26[40] = v15;
  sub_1003F5168(v25, v21);
  sub_10000C824(a2 + 344, &v22);
  sub_10000C824(a2 + 384, &v23);
  sub_10000C824(a2 + 424, &v24);
  sub_10000C888(a2, *(a2 + 24));
  sub_100536120();
  sub_100750564();
  v12 = *(v7 + 8);
  v12(v9, v6);
  sub_1003F51A0(a3, a1, v21);
  sub_1000CD5F0(a2 + 264, &v18);
  if (v19)
  {
    sub_100012160(&v18, v20);
    sub_10000C888(v20, v20[3]);
    sub_100750414();
    sub_10000C620(v20);
  }

  else
  {
    sub_1002C9F48(&v18);
  }

  sub_10000C888((a2 + 40), *(a2 + 64));
  sub_100536120();
  sub_100750564();
  v12(v9, v6);
  sub_1003F54A8(v21);
  sub_1003F54D8(v25);
  return a3;
}

double sub_1003F51A0(double a1, uint64_t a2, void *a3)
{
  v5 = sub_100754724();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C888(a3 + 23, a3[26]);
  sub_100750414();
  sub_10000C888(a3 + 18, a3[21]);
  sub_100536120();
  sub_100750564();
  v9 = *(v6 + 8);
  v9(v8, v5);
  sub_10000C888(a3 + 28, a3[31]);
  if ((sub_1007503A4() & 1) == 0)
  {
    sub_10000C888(a3 + 4, a3[7]);
    sub_100536120();
    sub_100750564();
    v9(v8, v5);
  }

  sub_10000C888(a3 + 33, a3[36]);
  if ((sub_1007503A4() & 1) == 0)
  {
    sub_10000C888(a3 + 33, a3[36]);
    sub_100750414();
  }

  sub_10000C888(a3 + 28, a3[31]);
  if ((sub_1007503A4() & 1) == 0)
  {
    sub_10000C888(a3 + 33, a3[36]);
    if ((sub_1007503A4() & 1) == 0)
    {
      sub_10000C888(a3 + 13, a3[16]);
      sub_100536120();
      sub_100750564();
      v9(v8, v5);
    }
  }

  return a1;
}

uint64_t sub_1003F5510(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 464))
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

uint64_t sub_1003F5558(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 456) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 464) = 1;
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

    *(result + 464) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003F5628(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 264))
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

uint64_t sub_1003F5670(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003F5700(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 304))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003F5748(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
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
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1003F57E8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1003F5824(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003F586C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003F58E8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100750304();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v6 = sub_100747064();
  v7 = sub_10000D0FC(v6, qword_10097E3A8);
  (*(*(v6 - 8) + 16))(a1, v7, v6);
  sub_10074EFB4();
  if (v8)
  {
  }

  else
  {
    if (qword_100920ED0 != -1)
    {
      swift_once();
    }

    v9 = sub_100750534();
    v10 = sub_10000D0FC(v9, qword_1009809C0);
    (*(*(v9 - 8) + 16))(v5, v10, v9);
    (*(v3 + 104))(v5, enum case for FontSource.useCase(_:), v2);
    v15 = sub_100750B04();
    v16 = &protocol witness table for StaticDimension;
    sub_10000D134(v14);
    v13[3] = v2;
    v13[4] = &protocol witness table for FontSource;
    v11 = sub_10000D134(v13);
    (*(v3 + 16))(v11, v5, v2);
    sub_100750B14();
    (*(v3 + 8))(v5, v2);
    sub_100746F64();
  }

  v15 = &type metadata for Double;
  v16 = &protocol witness table for Double;
  v14[0] = 0;
  sub_100746F54();
  sub_100746F44();
  return sub_100746F84();
}

double sub_1003F5B90(void *a1, double a2, uint64_t a3, void *a4)
{
  v7 = sub_100747064();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100749C94())
  {
    v11 = [a4 traitCollection];
    v12 = [v11 userInterfaceIdiom];

    if (v12 == 2)
    {
    }

    else
    {
      type metadata accessor for SmallLockupView();
      sub_1003F58E8(v10);
      swift_getObjectType();
      a2 = sub_1001CF184(v10, a1);

      (*(v8 + 8))(v10, v7);
    }
  }

  return a2;
}

uint64_t sub_1003F5D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v97 = a2;
  v8 = sub_10074F284();
  v87 = *(v8 - 8);
  v88 = v8;
  __chkstk_darwin(v8);
  v86 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_100925520);
  __chkstk_darwin(v10 - 8);
  v93 = &v82 - v11;
  v12 = sub_10000C518(&unk_100925990);
  __chkstk_darwin(v12 - 8);
  v92 = &v82 - v13;
  v14 = sub_10000C518(&unk_1009259A0);
  __chkstk_darwin(v14 - 8);
  v91 = &v82 - v15;
  v16 = sub_10000C518(&unk_100925530);
  __chkstk_darwin(v16 - 8);
  v90 = &v82 - v17;
  v18 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v18 - 8);
  v89 = &v82 - v19;
  v20 = sub_100747064();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v94 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10074F314();
  __chkstk_darwin(v23 - 8);
  v96 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000C518(&qword_100936790);
  *&v26 = __chkstk_darwin(v25 - 8).n128_u64[0];
  v28 = &v82 - v27;
  v29 = [a5 snapshotPageTraitEnvironment];
  *&v6[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_pageTraits] = v29;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v6 setNeedsLayout];
  swift_unknownObjectRelease();
  v30 = sub_100749C54();
  [v6 setBackgroundColor:v30];

  sub_100749C14();
  if (v31)
  {
    v32 = sub_100753064();
  }

  else
  {
    v32 = 0;
  }

  v33 = [objc_opt_self() _systemImageNamed:v32];

  v34 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_badgeGlyph];
  if (v33)
  {
    [v34 setImage:v33];
  }

  else
  {
    [v34 setImage:0];
  }

  v95 = v20;
  v35 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_badge];
  sub_100749C74();
  if (v36)
  {
    v37 = sub_100753064();
  }

  else
  {
    v37 = 0;
  }

  [v35 setText:v37];

  v38 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_title];
  sub_100749C84();
  v39 = sub_100753064();

  [v38 setText:v39];

  v40 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_subtitle];
  sub_100749CA4();
  if (v41)
  {
    v42 = sub_100753064();
  }

  else
  {
    v42 = 0;
  }

  [v40 setText:v42];

  v43 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_heroContent];
  sub_100749C34();
  v44 = sub_10074FCD4();
  (*(*(v44 - 8) + 56))(v28, 0, 1, v44);
  sub_10074FD24();
  v45 = sub_100749C44();
  if (v45)
  {
    v46 = v45;
    v47 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_button];
    v48 = swift_allocObject();
    *(v48 + 16) = v97;
    *(v48 + 24) = v46;

    sub_100747774();
    sub_10074ECB4();
    if (v49)
    {
      v50 = sub_100753064();
    }

    else
    {
      v50 = 0;
    }

    [v47 setTitle:v50 forState:0];
  }

  else
  {
    [*&v6[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_button] setHidden:1];
  }

  [v43 removeAllGestureRecognizers];
  v51 = sub_100749C24();
  if (v51)
  {
    v52 = v51;
    v53 = type metadata accessor for TapActionGestureRecognizer();
    v54 = objc_allocWithZone(v53);
    *&v54[OBJC_IVAR____TtC22SubscribePageExtension26TapActionGestureRecognizer_action] = v52;
    *&v54[OBJC_IVAR____TtC22SubscribePageExtension26TapActionGestureRecognizer_objectGraph] = v97;
    v98.receiver = v54;
    v98.super_class = v53;

    v55 = objc_msgSendSuper2(&v98, "initWithTarget:action:", 0, 0);
    [v55 addTarget:v55 action:"execute"];
    [v43 addGestureRecognizer:v55];
  }

  if (sub_100749C64())
  {
    v56 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_backgroundImage];
    [v56 setHidden:0];
    [v6 frame];
    [v6 frame];
    sub_10074F364();
    sub_10074F324();
    sub_100743364();
    [v56 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500);
      sub_100753E34();
    }

    sub_100743224();
    sub_1007442C4();
    sub_100752764();
    sub_100752D34();
    sub_1007433C4();
    sub_1003F754C(&qword_100925570, &type metadata accessor for ArtworkView);
    sub_100744204();
  }

  else
  {
    [*&v6[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_backgroundImage] setHidden:1];
  }

  result = sub_100749C94();
  v58 = v94;
  if (result)
  {
    v85 = v6;
    v59 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_lockup];
    v60 = result;
    sub_1003F58E8(v94);
    v61 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
    swift_beginAccess();
    v62 = v21;
    v63 = *(v21 + 24);
    v84 = v61;
    v64 = &v59[v61];
    v65 = v95;
    v63(v64, v58, v95);
    swift_endAccess();
    [v59 setNeedsLayout];
    v83 = *(v21 + 8);
    v83(v58, v65);
    v66 = sub_10000C518(&unk_10092EEA0);
    v67 = v89;
    (*(*(v66 - 8) + 56))(v89, 1, 1, v66);
    v68 = sub_100742E24();
    v69 = v90;
    (*(*(v68 - 8) + 56))(v90, 1, 1, v68);
    v70 = sub_100745E94();
    v71 = v91;
    (*(*(v70 - 8) + 56))(v91, 1, 1, v70);
    v72 = sub_10000C518(&unk_100925560);
    v73 = v92;
    (*(*(v72 - 8) + 56))(v92, 1, 1, v72);
    v74 = sub_10074F8B4();
    v75 = v93;
    (*(*(v74 - 8) + 56))(v93, 1, 1, v74);
    sub_100656038(v60, v59, v67, v97, 0, 0, v69, v71, v75, v73);
    sub_10000C8CC(v75, &unk_100925520);
    v59[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1001CE71C();
    [v59 setNeedsLayout];
    sub_10000C8CC(v73, &unk_100925990);
    sub_10000C8CC(v71, &unk_1009259A0);
    sub_10000C8CC(v69, &unk_100925530);
    sub_10000C8CC(v67, &unk_100925540);
    v93 = v60;
    if (sub_10074EF24())
    {
      v76 = v95;
      (*(v62 + 16))(v58, &v59[v84], v95);
      sub_100746F34();
      v83(v58, v76);
      v77 = v86;
      sub_10074F294();
      sub_10074F254();
      (*(v87 + 8))(v77, v88);
      sub_10074F374();
      v78 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
      v79 = *&v59[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView];
      sub_10074F324();
      sub_100743364();
      [v79 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500);
        sub_100753E34();
      }

      sub_100743224();

      [v59 setContentMode:{objc_msgSend(v85, "contentMode")}];
      sub_1007442C4();
      sub_100752764();
      sub_100752D34();
      v80 = *&v59[v78];
      sub_1007433C4();
      sub_1003F754C(&qword_100925570, &type metadata accessor for ArtworkView);
      v81 = v80;
      sub_100744204();
    }
  }

  return result;
}

uint64_t sub_1003F6B54(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_10000C518(&unk_100923210);
  sub_1007526C4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000C8CC(v6, &unk_100923960);
  }

  sub_1003C0E00(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

double sub_1003F6D78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_10074C764();
  __chkstk_darwin(v6 - 8);
  v36 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074C784();
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v37 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074CD14();
  v46 = *(v10 - 8);
  v47 = v10;
  __chkstk_darwin(v10);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100749C74();
  v13 = sub_100016C60(0, &qword_100923AB0);
  if (qword_100921550 != -1)
  {
    swift_once();
  }

  v45 = sub_100750534();
  sub_10000D0FC(v45, qword_100981D28);
  v14 = [a4 traitCollection];
  sub_100753C14();

  v15 = sub_10074F3F4();
  v64[3] = v15;
  v44 = sub_1003F754C(&qword_10092AC70, &type metadata accessor for Feature);
  v64[4] = v44;
  v16 = sub_10000D134(v64);
  v17 = *(v15 - 8);
  v18 = *(v17 + 104);
  v43 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v41 = v17 + 104;
  v42 = v18;
  v18(v16);
  sub_10074FC74();
  sub_10000C620(v64);
  sub_10074CD04();
  sub_10074CCE4();
  v40 = v13;
  v19 = *(v46 + 8);
  v19(v12, v47);
  sub_100749C84();
  v46 = a1;
  if (qword_100921558 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v45, qword_100981D40);
  v20 = [a4 traitCollection];
  sub_100753C14();

  v63[3] = v15;
  v63[4] = v44;
  v21 = sub_10000D134(v63);
  v42(v21, v43, v15);
  sub_10074FC74();
  sub_10000C620(v63);
  sub_10074CD04();
  sub_10074CCE4();
  v19(v12, v47);
  sub_100749CA4();
  if (qword_100921560 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v45, qword_100981D58);
  v22 = [a4 traitCollection];
  sub_100753C14();

  v62[3] = v15;
  v62[4] = v44;
  v23 = sub_10000D134(v62);
  v42(v23, v43, v15);
  sub_10074FC74();
  sub_10000C620(v62);
  sub_10074CD04();
  sub_10074CCE4();
  v19(v12, v47);
  v24 = sub_100750F34();
  swift_allocObject();
  v25 = sub_100750F04();
  v26 = swift_allocObject();
  v26[2] = v46;
  v26[3] = a4;
  v26[4] = v35[1];
  swift_allocObject();

  swift_unknownObjectRetain();
  v27 = sub_100750EF4();
  sub_10027FF90(a4, v36);
  v61 = 0;
  *&v59[40] = 0u;
  v60 = 0u;
  sub_10000C824(v64, v59);
  sub_10000C824(v63, &v58);
  sub_10000C824(v62, &v57);
  v55 = v24;
  v56 = &protocol witness table for LayoutViewPlaceholder;
  v54 = v25;

  v28 = [a4 traitCollection];
  sub_100751364();

  swift_allocObject();
  v29 = sub_100750F14();
  v52 = v24;
  v53 = &protocol witness table for LayoutViewPlaceholder;
  v50 = &protocol witness table for LayoutViewPlaceholder;
  v51 = v29;
  v49 = v24;
  v48 = v27;

  v30 = v37;
  sub_10074C774();
  sub_1003F754C(&qword_100933280, &type metadata accessor for GameCenterReengagementLayout);
  v31 = v39;
  sub_100750404();
  v33 = v32;

  (*(v38 + 8))(v30, v31);
  sub_10000C620(v62);
  sub_10000C620(v63);
  sub_10000C620(v64);
  return v33;
}

uint64_t sub_1003F754C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1003F7594(uint64_t a1, char a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ((sub_10062AA10() & 1) == 0)
    {
      goto LABEL_10;
    }

    v7 = [v6 view];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for InsetCollectionViewControllerContentView();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = *(v9 + OBJC_IVAR____TtC22SubscribePageExtensionP33_D5EB93F8F29FA420E99B1898AD0B2EE640InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

        if (v10 & 1) == 0 && (a2)
        {

          if ((a3 & 1) != 0 || (v11 = *&v6[qword_10097D2C8]) == 0)
          {
            v12 = 1;
          }

          else
          {
            [*(v11 + OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_lockupView) setAlpha:1.0];
            v12 = 1;
          }

LABEL_24:
          sub_1003F77FC(v12);
LABEL_25:

          return;
        }

LABEL_10:
        v13 = *&v6[qword_10097D2D0];
        if (v13)
        {
          v14 = *&v6[qword_10097D2C8];

          if (v14 || (v15 = [v6 traitCollection], v16 = sub_1007537B4(), v15, (v16 & 1) != 0))
          {
            v17 = [v6 collectionView];

            if (v17)
            {
              [v17 _systemContentInset];
              v19 = v18;
              [v17 contentOffset];
              v21 = v20;
              v22 = [v17 contentInset];
              v23.n128_f64[0] = fmin((v19 + v21 + v23.n128_f64[0] - *(v13 + 32)) / *(v13 + 40), 1.0);
              if (v23.n128_f64[0] < 0.0)
              {
                v23.n128_f64[0] = 0.0;
              }

              (*(v13 + 16))(v22, v23);

              goto LABEL_25;
            }

LABEL_29:
            __break(1u);
            return;
          }
        }

        v24 = *&v6[qword_10097D2C8];
        if (v24)
        {
          v25 = 0.0;
          if (a2)
          {
            v25 = 1.0;
          }

          [*(v24 + OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_lockupView) setAlpha:v25];
        }

        v12 = a2 & 1;
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_29;
  }
}

void sub_1003F77FC(char a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = sub_1007537B4();

  if (v5)
  {
    if (a1)
    {
      sub_10000D198();
      v6 = sub_100753EF4();
    }

    else
    {
      v6 = [objc_opt_self() whiteColor];
    }

    v12 = v6;
    v10 = [v2 navigationItem];
    v11 = [v10 rightBarButtonItem];

    if (!v11)
    {
      goto LABEL_13;
    }

    v9 = [v11 customView];

    if (!v9)
    {
      goto LABEL_13;
    }

    [v9 setTintColor:v12];
  }

  else
  {
    v7 = [v2 navigationItem];
    v8 = [v7 rightBarButtonItem];

    if (!v8)
    {
      return;
    }

    v9 = [v8 customView];

    if (!v9)
    {
      return;
    }

    v12 = [objc_opt_self() whiteColor];
    [v9 setTintColor:v12];
  }

LABEL_13:
}

id sub_1003F79D0()
{
  result = [objc_opt_self() systemGray6Color];
  qword_1009801D8 = result;
  return result;
}

void sub_1003F7A0C()
{
  v0 = [objc_opt_self() systemBlackColor];
  v1 = [v0 colorWithAlphaComponent:0.05];

  qword_1009801E0 = v1;
}

id sub_1003F7A78(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC22SubscribePageExtension38CondensedSearchEditorialBackgroundView_isBorderHidden] = 0;
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v11 = qword_100920B90;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  [v12 setBackgroundColor:qword_1009801D8];
  v13 = [v12 layer];
  if (qword_100920B98 != -1)
  {
    swift_once();
  }

  v14 = [qword_1009801E0 CGColor];
  [v13 setBorderColor:v14];

  v15 = [v12 layer];
  v16 = [objc_opt_self() mainScreen];
  [v16 scale];
  v18 = v17;

  [v15 setBorderWidth:1.0 / v18];
  [v12 _setContinuousCornerRadius:16.0];

  return v12;
}

void sub_1003F7CF0(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v3 = [a1 userInterfaceStyle];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 traitCollection];
  v5 = [v4 userInterfaceStyle];

  if ((!a1 || v3 != v5) && (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension38CondensedSearchEditorialBackgroundView_isBorderHidden) & 1) == 0)
  {
    v6 = [v1 layer];
    if (qword_100920B98 != -1)
    {
      swift_once();
    }

    v7 = [qword_1009801E0 CGColor];
    [v6 setBorderColor:v7];
  }
}

uint64_t sub_1003F7F08(void *a1)
{
  if (a1)
  {
    v2 = [a1 superview];
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 contentView];
  v4 = v3;
  if (v2)
  {
    if (v3)
    {
      sub_100009D34();
      v5 = sub_100753FC4();
    }

    else
    {
      v5 = 0;
    }

    v4 = v2;
  }

  else
  {
    if (!v3)
    {
      v5 = 1;
      return v5 & 1;
    }

    v5 = 0;
  }

  return v5 & 1;
}

void sub_1003F7FBC(void *a1)
{
  sub_1003F89C8();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 contentView];
    [v4 addSubview:v3];

    [v1 setNeedsLayout];
  }
}

void (*sub_1003F806C(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension23VideoCollectionViewCell_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1003F80C0;
}

void sub_1003F80C0(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_1003F89C8();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [v2 contentView];
      [v6 addSubview:v5];

      [v2 setNeedsLayout];
    }

    v9 = v3;
  }

  else
  {
    v9 = *a1;
    sub_1003F89C8();
    swift_unknownObjectWeakAssign();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      goto LABEL_8;
    }

    v3 = v7;
    v8 = [v2 contentView];
    [v8 addSubview:v3];

    [v2 setNeedsLayout];
  }

LABEL_8:
}

void sub_1003F8354()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for VideoCollectionViewCell();
  objc_msgSendSuper2(&v4, "prepareForReuse");
  sub_1003F89C8();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [v0 contentView];
    [v3 addSubview:v2];

    [v0 setNeedsLayout];
  }
}

id sub_1003F8524()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for VideoCollectionViewCell()
{
  result = qword_1009367F0;
  if (!qword_1009367F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003F862C()
{
  result = sub_100747D94();
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

uint64_t (*sub_1003F86D8(uint64_t **a1))()
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
  v2[4] = sub_1003F806C(v2);
  return sub_10001BB78;
}

uint64_t sub_1003F8748(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_1003F879C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_1003F8808(uint64_t *a1))()
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
  return sub_1000181A8;
}

uint64_t sub_1003F8980(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1003F89C8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    sub_1003F8980(&qword_1009230E0, type metadata accessor for VideoView);
    Strong = v1;
  }

  v2 = sub_1003F7F08(Strong);

  if (v2)
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v3 removeFromSuperview];
    }
  }
}

uint64_t ButtonPlaceholder.__allocating_init(configuration:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension17ButtonPlaceholder____lazy_storage___button) = 0;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension17ButtonPlaceholder_configuration;
  v4 = sub_1007541F4();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t ButtonPlaceholder.init(configuration:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension17ButtonPlaceholder____lazy_storage___button) = 0;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension17ButtonPlaceholder_configuration;
  v4 = sub_1007541F4();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t ButtonPlaceholder.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension17ButtonPlaceholder_configuration;
  v4 = sub_1007541F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_1003F8C1C()
{
  v1 = sub_1007541F4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC22SubscribePageExtension17ButtonPlaceholder____lazy_storage___button;
  v6 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension17ButtonPlaceholder____lazy_storage___button);
  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension17ButtonPlaceholder____lazy_storage___button);
  }

  else
  {
    sub_1003F9034();
    (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC22SubscribePageExtension17ButtonPlaceholder_configuration, v1);
    v8 = v0;
    v9 = sub_100754204();
    v10 = *(v0 + v5);
    *(v8 + v5) = v9;
    v7 = v9;

    v6 = 0;
  }

  v11 = v6;
  return v7;
}

double ButtonPlaceholder.measure(toFit:with:)()
{
  v0 = sub_1003F8C1C();
  sub_100754004();
  v2 = v1;

  return v2;
}

uint64_t ButtonPlaceholder.deinit()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension17ButtonPlaceholder_configuration;
  v2 = sub_1007541F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ButtonPlaceholder.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension17ButtonPlaceholder_configuration;
  v2 = sub_1007541F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_1003F8ED0()
{
  v0 = sub_1003F8C1C();
  sub_100754004();
  v2 = v1;

  return v2;
}

uint64_t type metadata accessor for ButtonPlaceholder()
{
  result = qword_100936838;
  if (!qword_100936838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003F8F9C()
{
  result = sub_1007541F4();
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
uint64_t Page.backgroundColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for Page() + 96));

  return v1;
}

uint64_t Page.backgroundColor.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Page() + 96));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Page.backgroundTintInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Page() + 100));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  return sub_1825C8(v4, v5);
}

__n128 Page.backgroundTintInfo.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + *(type metadata accessor for Page() + 100);
  sub_18260C(*v4, *(v4 + 8));
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

size_t sub_17E898()
{
  v32 = sub_6620C(&qword_3C3AB0);
  __chkstk_darwin(v32);
  v2 = (&v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v31 = &v24 - v4;
  v5 = type metadata accessor for Shelf();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(type metadata accessor for Page() + 60);
  v10 = *(v0 + v9);
  v11 = *(v10 + 16);
  if (v11)
  {
    v28 = v8;
    v24 = v9;
    v25 = v0;
    v33 = _swiftEmptyArrayStorage;
    result = sub_64868(0, v11, 0);
    v13 = 0;
    v14 = v33;
    v15 = *(v10 + 16);
    v29 = v10;
    v30 = v15;
    v27 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v26 = v10 + v27;
    while (v30 != v13)
    {
      if (v13 >= *(v10 + 16))
      {
        goto LABEL_12;
      }

      v17 = v31;
      v16 = v32;
      v18 = *(v32 + 48);
      v19 = v6;
      v20 = *(v6 + 72);
      sub_181138(v26 + v20 * v13, &v31[v18], type metadata accessor for Shelf);
      *v2 = v13;
      sub_181EF0(&v17[v18], v2 + *(v16 + 48), type metadata accessor for Shelf);
      v21 = v28;
      Shelf.withMetricsIndex(_:)(v13, v28);
      sub_69198(v2, &qword_3C3AB0);
      v33 = v14;
      v23 = v14[2];
      v22 = v14[3];
      if (v23 >= v22 >> 1)
      {
        sub_64868(v22 > 1, v23 + 1, 1);
        v14 = v33;
      }

      ++v13;
      v14[2] = v23 + 1;
      result = sub_181EF0(v21, v14 + v27 + v23 * v20, type metadata accessor for Shelf);
      v6 = v19;
      v10 = v29;
      if (v11 == v13)
      {

        v9 = v24;
        v0 = v25;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {

    v14 = _swiftEmptyArrayStorage;
LABEL_10:
    *(v0 + v9) = v14;
  }

  return result;
}

unint64_t sub_17EB74(char a1)
{
  result = 0x756F72676B636162;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x726562557369;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x697461676976616ELL;
      break;
    case 5:
      result = 0x6174614465676170;
      break;
    case 6:
      result = 0x444965676170;
      break;
    case 7:
      result = 0x7274654D65676170;
      break;
    case 8:
      result = 0x6570795465676170;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x7365766C656873;
      break;
    case 11:
      result = 0x7079546B63617473;
      break;
    case 12:
      result = 0x656C746974627573;
      break;
    case 13:
      result = 0x656C746974;
      break;
    case 14:
      result = 0xD000000000000017;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0xD000000000000014;
      break;
    case 17:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_17EDD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 76);
  v5 = sub_2C4BB8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_17EE48@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_17EE54(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_17EB74(*a1);
  v5 = v4;
  if (v3 == sub_17EB74(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2C65B8();
  }

  return v8 & 1;
}

Swift::Int sub_17EEDC()
{
  v1 = *v0;
  sub_2C6738();
  sub_17EB74(v1);
  sub_2C5958();

  return sub_2C6778();
}

uint64_t sub_17EF40()
{
  sub_17EB74(*v0);
  sub_2C5958();
}

Swift::Int sub_17EF94()
{
  v1 = *v0;
  sub_2C6738();
  sub_17EB74(v1);
  sub_2C5958();

  return sub_2C6778();
}

uint64_t sub_17EFF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_181558();
  *a1 = result;
  return result;
}

unint64_t sub_17F024@<X0>(unint64_t *a1@<X8>)
{
  result = sub_17EB74(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_17F06C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_181558();
  *a1 = result;
  return result;
}

uint64_t sub_17F094(uint64_t a1)
{
  v2 = sub_182650();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_17F0D0(uint64_t a1)
{
  v2 = sub_182650();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Page.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a2;
  v132 = sub_6620C(&qword_3C2070);
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v130 = &v124 - v3;
  v4 = sub_6620C(&qword_3C3AE8);
  __chkstk_darwin(v4 - 8);
  v137 = &v124 - v5;
  v6 = sub_6620C(&qword_3C4350);
  __chkstk_darwin(v6 - 8);
  v134 = &v124 - v7;
  v8 = sub_2C4BB8();
  v144 = *(v8 - 8);
  v145 = v8;
  __chkstk_darwin(v8);
  v133 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_2BE5C8();
  v136 = *(v138 - 8);
  __chkstk_darwin(v138);
  v135 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6620C(&unk_3C4340);
  __chkstk_darwin(v11 - 8);
  v141 = &v124 - v12;
  v147 = sub_2BEF78();
  v142 = *(v147 - 8);
  __chkstk_darwin(v147);
  v139 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_6620C(&qword_3C3AF0);
  __chkstk_darwin(v14 - 8);
  v143 = &v124 - v15;
  v16 = sub_6620C(&qword_3C3AF8);
  __chkstk_darwin(v16 - 8);
  v140 = &v124 - v17;
  v146 = sub_2C1A28();
  *&v148 = *(v146 - 8);
  __chkstk_darwin(v146);
  v19 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_6620C(&qword_3BEF80);
  __chkstk_darwin(v20 - 8);
  v22 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  *&v149 = &v124 - v24;
  v25 = sub_6620C(&qword_3C3B00);
  v150 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = &v124 - v26;
  v28 = type metadata accessor for Page();
  __chkstk_darwin(v28);
  v30 = &v124 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = &v30[*(v31 + 100)];
  *(v32 + 4) = 0;
  *v32 = 0u;
  *(v32 + 1) = 0u;
  v152 = a1;
  v153 = v32;
  sub_72084(a1, a1[3]);
  sub_182650();
  v33 = v151;
  sub_2C67A8();
  if (v33)
  {
    sub_68CD0(v152);
    goto LABEL_4;
  }

  v151 = v19;
  v128 = v28;
  v127 = v30;
  sub_2BFDD8();
  LOBYTE(v154) = 13;
  sub_182BC4(&qword_3C36D8, &type metadata accessor for LocalizerRequest);
  v34 = v149;
  sub_2C6458();
  v35 = v25;
  v38 = v128;
  v39 = v127;
  sub_1826A4(v34, v127 + v128[5]);
  LOBYTE(v154) = 12;
  sub_2C6458();
  sub_1826A4(v22, v39 + v38[6]);
  v40 = sub_6620C(&qword_3C3B10);
  LOBYTE(v154) = 14;
  sub_182A94(&qword_3C3B18, &qword_3C3B10, &unk_2EFED8, sub_182714);
  v41 = v143;
  sub_2C6458();
  v125 = v35;
  *&v149 = 0;
  v126 = v27;
  v42 = (*(*(v40 - 8) + 48))(v41, 1, v40);
  v43 = v146;
  v44 = v148;
  if (v42 == 1)
  {
    sub_69198(v41, &qword_3C3AF0);
    v45 = v140;
    (*(v44 + 56))(v140, 1, 1, v43);
    v46 = v147;
    v47 = v141;
    v48 = v127;
  }

  else
  {
    v49 = v41;
    v50 = v41;
    v45 = v140;
    sub_6932C(v49, v140, &qword_3C3AF8);
    sub_69198(v50, &qword_3C3B10);
    v51 = (*(v44 + 48))(v45, 1, v43);
    v46 = v147;
    v47 = v141;
    v48 = v127;
    if (v51 != 1)
    {
      v52 = v151;
      (*(v44 + 32))(v151, v45, v43);
      goto LABEL_12;
    }
  }

  v52 = v151;
  (*(v44 + 104))(v151, enum case for NavigationBarTitleStyle.automatic(_:), v43);
  if ((*(v44 + 48))(v45, 1, v43) != 1)
  {
    sub_69198(v45, &qword_3C3AF8);
  }

LABEL_12:
  (*(v44 + 32))(&v48[v128[7]], v52, v43);
  sub_2C1A58();
  LOBYTE(v154) = 5;
  sub_182BC4(&qword_3C3B30, &type metadata accessor for PageData);
  sub_2C6458();
  v53 = v142;
  v54 = *(v142 + 48);
  if (v54(v47, 1, v46) == 1)
  {
    LOBYTE(v154) = 6;
    sub_2C6418();
    v70 = v54;
    LOBYTE(v154) = 8;
    sub_2C6468();
    sub_2BEF48();
    v85 = v141;
    v46 = v147;
    v86 = v70(v141, 1, v147);
    v53 = v142;
    if (v86 != 1)
    {
      sub_69198(v85, &unk_3C4340);
    }

    v48 = v127;
    v55 = v139;
  }

  else
  {
    v55 = v139;
    (*(v53 + 32))(v139, v47, v46);
  }

  (*(v53 + 16))(&v48[v128[17]], v55, v46);
  *&v154 = sub_2BEF68();
  *(&v154 + 1) = v56;
  v158._countAndFlagsBits = 45;
  v158._object = 0xE100000000000000;
  sub_2C5978(v158);
  v57._countAndFlagsBits = sub_2BEF58();
  v58 = v138;
  if (v57._object)
  {
    object = v57._object;
  }

  else
  {
    v60 = v135;
    sub_2BE5B8();
    v61 = sub_2BE598();
    object = v62;
    (*(v136 + 8))(v60, v58);
    v57._countAndFlagsBits = v61;
  }

  v57._object = object;
  sub_2C5978(v57);

  v63 = *(&v154 + 1);
  *v48 = v154;
  *(v48 + 1) = v63;
  LOBYTE(v154) = 2;
  v64 = sub_2C6478();
  LODWORD(v143) = 1;
  v65 = v128;
  v48[v128[9]] = v64 & 1;
  *&v48[v65[18]] = _swiftEmptyArrayStorage;
  v66 = sub_6620C(&qword_3C3B38);
  LOBYTE(v154) = 7;
  sub_182A94(&qword_3C3B40, &qword_3C3B38, &unk_2EFEE0, sub_1827C8);
  v67 = v137;
  sub_2C6458();
  v80 = (*(*(v66 - 8) + 48))(v67, 1, v66);
  v82 = v144;
  v81 = v145;
  if (v80 == 1)
  {
    sub_69198(v67, &qword_3C3AE8);
    v83 = v134;
    (*(v82 + 56))(v134, 1, 1, v81);
    v84 = v133;
  }

  else
  {
    v83 = v134;
    sub_6932C(v67, v134, &qword_3C4350);
    sub_69198(v67, &qword_3C3B38);
    v87 = (*(v82 + 48))(v83, 1, v81);
    v84 = v133;
    if (v87 != 1)
    {
      (*(v82 + 32))(v133, v83, v81);
      goto LABEL_39;
    }
  }

  sub_2C4BA8();
  if ((*(v82 + 48))(v83, 1, v81) != 1)
  {
    sub_69198(v83, &qword_3C4350);
  }

LABEL_39:
  v88 = v128;
  (*(v82 + 32))(&v48[v128[19]], v84, v81);
  v157 = 11;
  sub_18287C();
  v89 = v125;
  sub_2C6458();
  v48[v88[14]] = v154 & 1;
  sub_6620C(&qword_3C3B60);
  v157 = 10;
  sub_182A94(&qword_3C3B68, &qword_3C3B60, &unk_2EFEE8, sub_1828D0);
  sub_2C64A8();
  *&v48[v88[15]] = v154;
  LOBYTE(v154) = 9;
  v90 = sub_2C6418();
  v91 = (v127 + v128[16]);
  *v91 = v90;
  v91[1] = v92;
  sub_6620C(&qword_3C3B88);
  v157 = 3;
  sub_182984();
  v93 = v89;
  sub_2C6458();
  v151 = 0;
  if (v154)
  {
    v94 = v151;
    v95 = sub_18130C(v154);
    v151 = v94;
  }

  else
  {
    v95 = sub_67F44(_swiftEmptyArrayStorage);
  }

  v96 = v128;
  v97 = v127;
  *(v127 + v128[21]) = v95;
  v98 = v96[10];
  v99 = sub_2C15F8();
  (*(*(v99 - 8) + 56))(&v97[v98], 1, 1, v99);
  sub_6620C(&qword_3C3BA0);
  v157 = 15;
  sub_182A94(&qword_3C3BA8, &qword_3C3BA0, &unk_2EFF00, sub_182B10);
  v100 = v151;
  sub_2C6458();
  v151 = v100;
  if (v100)
  {
    (*(v142 + 8))(v139, v147);
    (*(v150 + 8))(v126, v89);
    sub_68CD0(v152);
    v101 = 0;
    v102 = 0;
    LODWORD(v152) = 0;
    *&v149 = 0;
LABEL_52:
    LODWORD(v150) = 1;
    goto LABEL_19;
  }

  v103 = v154;
  if (!v154)
  {
    v103 = _swiftEmptyArrayStorage;
  }

  *(v127 + v128[11]) = v103;
  v157 = 16;
  v104 = v151;
  sub_2C6458();
  v151 = v104;
  if (v104)
  {
    (*(v142 + 8))(v139, v147);
    (*(v150 + 8))(v126, v89);
    sub_68CD0(v152);
    v102 = 0;
    LODWORD(v152) = 0;
    *&v149 = 0;
    v101 = 1;
    goto LABEL_52;
  }

  v105 = v154;
  if (!v154)
  {
    v105 = _swiftEmptyArrayStorage;
  }

  *(v127 + v128[12]) = v105;
  sub_6620C(&qword_3C3BC8);
  v157 = 17;
  sub_182C0C();
  v106 = v151;
  sub_2C6458();
  v151 = v106;
  if (v106)
  {
    (*(v142 + 8))(v139, v147);
    (*(v150 + 8))(v126, v89);
    sub_68CD0(v152);
    LODWORD(v152) = 0;
    *&v149 = 0;
    v101 = 1;
    v102 = 1;
    goto LABEL_52;
  }

  v107 = v128;
  v108 = v127;
  *(v127 + v128[13]) = v154 & 1;
  sub_6620C(&qword_3BD478);
  v109 = v130;
  sub_2C23F8();
  sub_182C88();
  v110 = v132;
  v111 = sub_2C2408();
  (*(v131 + 8))(v109, v110);
  *(v108 + v107[22]) = v111;
  *(v108 + v107[23]) = 0;
  LOBYTE(v154) = 0;
  v112 = v151;
  v113 = sub_2C6418();
  *&v149 = v114;
  v151 = v112;
  if (v112)
  {
    (*(v142 + 8))(v139, v147);
    (*(v150 + 8))(v126, v93);
    sub_68CD0(v152);
    *&v149 = 0;
LABEL_57:
    v101 = 1;
    v102 = 1;
    LODWORD(v150) = 1;
    LODWORD(v152) = 1;
LABEL_19:
    v68 = v127;

    v69 = v128;
    sub_69198(v68 + v128[5], &qword_3BEF80);
    sub_69198(v68 + v69[6], &qword_3BEF80);
    v71 = v128;
    v72 = v127;
    (*(v148 + 8))(v127 + v128[7], v146);
    v73 = v71[8];
    v74 = sub_2C1A68();
    (*(*(v74 - 8) + 8))(&v72[v73], v74);
    sub_69198(&v72[v71[10]], &qword_3C1598);
    if (v101)
    {
      v76 = v127;

      v75 = v147;
      if (v102)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v75 = v147;
      v76 = v127;
      if (v102)
      {
LABEL_21:
        v77 = v128;

        goto LABEL_27;
      }
    }

    v77 = v128;
LABEL_27:

    (*(v142 + 8))(&v76[v77[17]], v75);
    v79 = v144;
    v78 = v145;
    if (v143)
    {

      if ((v150 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (!v150)
    {
      goto LABEL_23;
    }

    (*(v79 + 8))(&v76[v77[19]], v78);
LABEL_23:

    if (v152)
    {

      v36 = v153;
      return sub_18260C(*v36, v36[1]);
    }

LABEL_4:
    v36 = v153;

    return sub_18260C(*v36, v36[1]);
  }

  v115 = (v127 + v128[24]);
  v116 = v149;
  *v115 = v113;
  v115[1] = v116;
  v157 = 1;
  sub_BAA70();
  v117 = v151;
  sub_2C6458();
  v151 = v117;
  if (v117)
  {
    (*(v142 + 8))(v139, v147);
    (*(v150 + 8))(v126, v93);
    sub_68CD0(v152);
    goto LABEL_57;
  }

  v118 = v156;
  v119 = v153;
  v120 = *v153;
  v121 = v153[1];
  v148 = v155;
  v149 = v154;
  sub_18260C(v120, v121);
  v122 = v148;
  *v119 = v149;
  *(v119 + 1) = v122;
  v119[4] = v118;
  v123 = v127;
  *(v127 + v128[20]) = 0;
  sub_17E898();
  (*(v142 + 8))(v139, v147);
  (*(v150 + 8))(v126, v93);
  sub_181138(v123, v129, type metadata accessor for Page);
  sub_68CD0(v152);
  return sub_181DBC(v123, type metadata accessor for Page);
}

uint64_t sub_180C70(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    type metadata accessor for Shelf();

    return sub_10F7C0(v16);
  }

  v38 = v2;
  v39 = *(type metadata accessor for Shelf() + 68);
  v4 = *(v2 + v39);
  v5 = v4[2];
  if (v5 >= 0x28)
  {
    v6 = v5 - 40;
  }

  else
  {
    v6 = 0;
  }

  v7 = _swiftEmptyArrayStorage;
  v8 = v5 - v6;
  if (v5 == v6)
  {
LABEL_14:
    v17 = sub_2B6344(v7);

    v47 = v17;
    v18 = *(a1 + 16);
    if (!v18)
    {
    }

    v19 = 0;
    v40 = a1 + 32;
    v20 = v38;
    while (1)
    {
      sub_691F8(v40 + 40 * v19, &v44);
      sub_72084(&v44, *(&v45 + 1));
      sub_2C4CB8();
      v21 = v47;
      if (*(v47 + 16) && (v22 = sub_2C6188(*(v47 + 40)), v23 = -1 << *(v21 + 32), v24 = v22 & ~v23, ((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0))
      {
        v25 = ~v23;
        while (1)
        {
          sub_68D34(*(v21 + 48) + 40 * v24, v42);
          v26 = sub_2C6198();
          sub_68D90(v42);
          if (v26)
          {
            break;
          }

          v24 = (v24 + 1) & v25;
          if (((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        if (qword_3BB7F0 != -1)
        {
          swift_once();
        }

        v29 = sub_2C00B8();
        sub_57AD8(v29, qword_3C3080);
        sub_68D34(v43, v42);
        v30 = sub_2C0098();
        v31 = sub_2C5DC8();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v41[0] = v33;
          *v32 = 136315138;
          v34 = sub_2C6178();
          v36 = v35;
          sub_68D90(v42);
          v37 = sub_5CCF4(v34, v36, v41);

          *(v32 + 4) = v37;
          _os_log_impl(&dword_0, v30, v31, "Pagination update: Dropping duplicated item: %s", v32, 0xCu);
          sub_68CD0(v33);

          v20 = v38;

          goto LABEL_18;
        }
      }

      else
      {
LABEL_24:
        sub_691F8(&v44, v42);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_5C134(0, v4[2] + 1, 1, v4);
        }

        v28 = v4[2];
        v27 = v4[3];
        if (v28 >= v27 >> 1)
        {
          v4 = sub_5C134((v27 > 1), v28 + 1, 1, v4);
        }

        v4[2] = v28 + 1;
        sub_68D1C(v42, &v4[5 * v28 + 4]);
        *(v20 + v39) = v4;
        sub_68D34(v43, v41);
        sub_2B379C(v42, v41);
      }

      sub_68D90(v42);
LABEL_18:
      sub_68D90(v43);
      ++v19;
      sub_68CD0(&v44);
      if (v19 == v18)
      {
      }
    }
  }

  *&v42[0] = _swiftEmptyArrayStorage;

  result = sub_64954(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v7 = *&v42[0];
    v10 = v4 + 40 * v5 - 40 * v8 + 32;
    while (v6 < v5)
    {
      sub_691F8(v10, v43);
      sub_72084(v43, v43[3]);
      sub_2C4CB8();
      result = sub_68CD0(v43);
      *&v42[0] = v7;
      v12 = v7[2];
      v11 = v7[3];
      if (v12 >= v11 >> 1)
      {
        result = sub_64954((v11 > 1), v12 + 1, 1);
        v7 = *&v42[0];
      }

      v7[2] = v12 + 1;
      v13 = &v7[5 * v12];
      v14 = v44;
      v15 = v45;
      v13[8] = v46;
      *(v13 + 2) = v14;
      *(v13 + 3) = v15;
      ++v6;
      v10 += 40;
      if (!--v8)
      {

        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_181110(unint64_t result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *(*v1 + 16);
      v3 = v2 >= result;
      result = v2 - result;
      if (v3)
      {
        return sub_181CFC(result, v2);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_181138(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1811A0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  sub_6620C(&qword_3BC408);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 40 * a3;
      v15 = (v9 + 32 + 40 * a2);
      if (result != v15 || result >= v15 + 40 * v14)
      {
        result = memmove(result, v15, 40 * v14);
      }

      v16 = *(v9 + 16);
      v11 = __OFADD__(v16, v12);
      v17 = v16 + v12;
      if (!v11)
      {
        *(v9 + 16) = v17;
        goto LABEL_10;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
  if (a3 < 1)
  {
    return sub_69198(a4, &qword_3C3D08);
  }

  result = sub_691F8(a4, v10);
  if (a3 == 1)
  {
    return sub_69198(a4, &qword_3C3D08);
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_18130C(uint64_t a1)
{
  v32 = sub_2C1398();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v30 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6620C(&qword_3BC1C8);
  result = sub_2C63A8();
  v5 = result;
  v6 = 0;
  v34 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v31 = v2;
  v27 = v2 + 8;
  v28 = v2 + 16;
  v26 = result + 64;
  v29 = result;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = *(*(v34 + 48) + v17);
      v19 = v30;
      v20 = v31;
      v21 = v32;
      (*(v31 + 16))(v30, *(v34 + 56) + *(v31 + 72) * v17, v32);
      sub_2C1388();
      (*(v20 + 8))(v19, v21);
      *(v26 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v5 = v29;
      *(*(v29 + 48) + v17) = v18;
      result = sub_68D1C(&v33, *(v5 + 56) + 40 * v17);
      v22 = *(v5 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      *(v5 + 16) = v24;
      if (!v12)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return v5;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_181558()
{
  v0 = sub_2C6628();

  if (v0 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1815AC()
{
  result = qword_3C3AB8;
  if (!qword_3C3AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C3AB8);
  }

  return result;
}

uint64_t sub_181600(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Shelf();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_181664(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v5 = a2 + 56;
  v6 = 0;
  v7 = *(type metadata accessor for Shelf() - 8);
  v19 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v18 = *(v7 + 72);
  while (1)
  {
    if (*(a2 + 16))
    {
      v8 = (v19 + v18 * v6);
      v9 = *v8;
      v10 = v8[1];
      sub_2C6738();
      sub_2C5958();
      v11 = sub_2C6778();
      v12 = -1 << *(a2 + 32);
      v13 = v11 & ~v12;
      if ((*(v5 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
      {
        break;
      }
    }

LABEL_3:
    if (++v6 == v2)
    {
      return 0;
    }
  }

  v14 = ~v12;
  while (1)
  {
    v15 = (*(a2 + 48) + 16 * v13);
    v16 = *v15 == v9 && v15[1] == v10;
    if (v16 || (sub_2C65B8() & 1) != 0)
    {
      return v6;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v5 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_3;
    }
  }
}

uint64_t sub_181808(uint64_t *a1, uint64_t a2)
{
  v6 = type metadata accessor for Shelf();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v39 - v11;
  __chkstk_darwin(v13);
  v15 = (&v39 - v14);
  v16 = *a1;
  result = sub_181664(*a1, a2);
  if (v2)
  {
    return v3;
  }

  if (v18)
  {
    return v16[2];
  }

  v3 = result;
  v41 = v9;
  v42 = v12;
  v40 = a1;
  v19 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v39 = 0;
    v20 = a2 + 56;
    v43 = v7;
    while (1)
    {
      v22 = v16[2];
      if (v19 == v22)
      {
        return v3;
      }

      if (v19 >= v22)
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        break;
      }

      v23 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v48 = v16;
      v44 = v23;
      v45 = *(v7 + 72);
      v46 = v16 + v23;
      v47 = v45 * v19;
      v24 = v16 + v23 + v45 * v19;
      v25 = v15;
      sub_181138(v24, v15, type metadata accessor for Shelf);
      if (*(a2 + 16) && (v26 = *v15, v27 = v15[1], sub_2C6738(), sub_2C5958(), v28 = sub_2C6778(), v29 = -1 << *(a2 + 32), v30 = v28 & ~v29, ((*(v20 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) != 0))
      {
        v31 = ~v29;
        while (1)
        {
          v32 = (*(a2 + 48) + 16 * v30);
          v33 = *v32 == v26 && v32[1] == v27;
          if (v33 || (sub_2C65B8() & 1) != 0)
          {
            break;
          }

          v30 = (v30 + 1) & v31;
          if (((*(v20 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        v15 = v25;
        result = sub_181DBC(v25, type metadata accessor for Shelf);
        v16 = v48;
      }

      else
      {
LABEL_20:
        v15 = v25;
        result = sub_181DBC(v25, type metadata accessor for Shelf);
        if (v3 == v19)
        {
          v16 = v48;
          v21 = __OFADD__(v3++, 1);
          if (v21)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v16 = v48;
          if ((v3 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v34 = v48[2];
          if (v3 >= v34)
          {
            goto LABEL_39;
          }

          v35 = v20;
          v36 = v46;
          v37 = v45 * v3;
          result = sub_181138(&v46[v45 * v3], v42, type metadata accessor for Shelf);
          if (v19 >= v34)
          {
            goto LABEL_40;
          }

          sub_181138(&v36[v47], v41, type metadata accessor for Shelf);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_1812BC(v16);
          }

          v20 = v35;
          v38 = v16 + v44;
          result = sub_181600(v41, v16 + v44 + v37);
          if (v19 >= v16[2])
          {
            goto LABEL_41;
          }

          result = sub_181600(v42, &v38[v47]);
          *v40 = v16;
          v21 = __OFADD__(v3++, 1);
          if (v21)
          {
            goto LABEL_37;
          }
        }
      }

      v21 = __OFADD__(v19++, 1);
      v7 = v43;
      if (v21)
      {
        goto LABEL_36;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_181BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for Shelf();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_181CFC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_5C10C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_181BB4(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_181DBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_181E1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Shelf();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_181E80(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C2AC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_181EF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_181F58(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 32;
  do
  {
    sub_72084((v5 + 40 * v4), *(v5 + 40 * v4 + 24));
    sub_2C4CB8();
    v7 = *(a2 + 16) + 1;
    v8 = v6;
    while (--v7)
    {
      v9 = v8 + 40;
      v10 = sub_2C6198();
      v8 = v9;
      if (v10)
      {
        sub_68D90(v12);
        return v4;
      }
    }

    sub_68D90(v12);
    ++v4;
  }

  while (v4 != v2);
  return 0;
}

unint64_t sub_182058(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  sub_6620C(&qword_3BC278);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t *sub_182144(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

unint64_t sub_182360(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(result + 48);
  v10 = *a3;

  result = sub_5D228(v8, v7);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_5E708(v15, v5 & 1);
    result = sub_5D228(v8, v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_2C6678();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v18 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18[(result >> 6) + 8] |= 1 << result;
    v22 = (v18[6] + 16 * result);
    *v22 = v8;
    v22[1] = v7;
    *(v18[7] + 8 * result) = v9;
    v23 = v18[2];
    v14 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v18[2] = v24;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v21 = result;
  sub_632BC();
  result = v21;
  v18 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v19 = *(v18[7] + 8 * result);
  v20 = result;

  *(v18[7] + 8 * v20) = v19;
  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = (v6 + 72);
    v3 = 1;
    while (1)
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v9 = *v5;
      v27 = *a3;

      result = sub_5D228(v7, v6);
      v29 = v27[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v8 = v28;
      if (v27[3] < v31)
      {
        sub_5E708(v31, 1);
        result = sub_5D228(v7, v6);
        if ((v8 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      v33 = *a3;
      if (v8)
      {
        v25 = *(v33[7] + 8 * result);
        v26 = result;

        *(v33[7] + 8 * v26) = v25;
      }

      else
      {
        v33[(result >> 6) + 8] |= 1 << result;
        v34 = (v33[6] + 16 * result);
        *v34 = v7;
        v34[1] = v6;
        *(v33[7] + 8 * result) = v9;
        v35 = v33[2];
        v14 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v33[2] = v36;
      }

      v5 += 3;
      if (!--v16)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1825C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_18260C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_182650()
{
  result = qword_3C3B08;
  if (!qword_3C3B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C3B08);
  }

  return result;
}

uint64_t sub_1826A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BEF80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_182714()
{
  result = qword_3C3B20;
  if (!qword_3C3B20)
  {
    sub_718D4(&qword_3C3AF8);
    sub_182BC4(&qword_3C3B28, &type metadata accessor for NavigationBarTitleStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C3B20);
  }

  return result;
}

unint64_t sub_1827C8()
{
  result = qword_3C3B48;
  if (!qword_3C3B48)
  {
    sub_718D4(&qword_3C4350);
    sub_182BC4(&qword_3C3B50, &type metadata accessor for PageMetrics);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C3B48);
  }

  return result;
}

unint64_t sub_18287C()
{
  result = qword_3C3B58;
  if (!qword_3C3B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C3B58);
  }

  return result;
}

unint64_t sub_1828D0()
{
  result = qword_3C3B70;
  if (!qword_3C3B70)
  {
    sub_718D4(&qword_3C3B78);
    sub_182BC4(&qword_3C3B80, type metadata accessor for Shelf);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C3B70);
  }

  return result;
}

unint64_t sub_182984()
{
  result = qword_3C3B90;
  if (!qword_3C3B90)
  {
    sub_718D4(&qword_3C3B88);
    sub_182A40();
    sub_182BC4(&qword_3BD868, &type metadata accessor for CodeAnyActionModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C3B90);
  }

  return result;
}

unint64_t sub_182A40()
{
  result = qword_3C3B98;
  if (!qword_3C3B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C3B98);
  }

  return result;
}

uint64_t sub_182A94(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_718D4(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_182B10()
{
  result = qword_3C3BB0;
  if (!qword_3C3BB0)
  {
    sub_718D4(&qword_3C3BB8);
    sub_182BC4(&qword_3C3BC0, &type metadata accessor for ToolbarItemType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C3BB0);
  }

  return result;
}

uint64_t sub_182BC4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_182C0C()
{
  result = qword_3C3BD0;
  if (!qword_3C3BD0)
  {
    sub_718D4(&qword_3C3BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C3BD0);
  }

  return result;
}

unint64_t sub_182C88()
{
  result = qword_3C2078;
  if (!qword_3C2078)
  {
    sub_718D4(&qword_3C2070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2078);
  }

  return result;
}

unint64_t sub_182CF0()
{
  result = qword_3C3BD8;
  if (!qword_3C3BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C3BD8);
  }

  return result;
}

unint64_t sub_182D48()
{
  result = qword_3C3BE0;
  if (!qword_3C3BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C3BE0);
  }

  return result;
}

uint64_t sub_182DB0(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_6620C(&qword_3BEF80);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_15:
    v16 = *(v10 + 48);

    return v16(a1 + v11, a2, v9);
  }

  v12 = sub_2C1A28();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_15;
  }

  v13 = sub_2C1A68();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_15;
  }

  v14 = sub_6620C(&qword_3C1598);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[10];
    goto LABEL_15;
  }

  v15 = sub_2BEF78();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[17];
    goto LABEL_15;
  }

  v17 = sub_2C4BB8();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[19];

  return v18(v19, a2, v17);
}

uint64_t sub_183020(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_6620C(&qword_3BEF80);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_13:
    v16 = *(v10 + 56);

    return v16(v5 + v11, a2, a2, v9);
  }

  v12 = sub_2C1A28();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_13;
  }

  v13 = sub_2C1A68();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_13;
  }

  v14 = sub_6620C(&qword_3C1598);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[10];
    goto LABEL_13;
  }

  v15 = sub_2BEF78();
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[17];
    goto LABEL_13;
  }

  v17 = sub_2C4BB8();
  v18 = *(*(v17 - 8) + 56);
  v19 = v5 + a4[19];

  return v18(v19, a2, a2, v17);
}

void sub_18327C()
{
  sub_18352C(319, &qword_3C2298, &type metadata accessor for LocalizerRequest, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_2C1A28();
    if (v1 <= 0x3F)
    {
      sub_2C1A68();
      if (v2 <= 0x3F)
      {
        sub_18352C(319, &qword_3C3C50, &type metadata accessor for ToolbarPrincipalType, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_18352C(319, &qword_3C3C58, &type metadata accessor for ToolbarItemType, &type metadata accessor for Array);
          if (v4 <= 0x3F)
          {
            sub_18352C(319, &qword_3C3C60, type metadata accessor for Shelf, &type metadata accessor for Array);
            if (v5 <= 0x3F)
            {
              sub_E1018(319, &qword_3BE2E0);
              if (v6 <= 0x3F)
              {
                sub_2BEF78();
                if (v7 <= 0x3F)
                {
                  sub_183590();
                  if (v8 <= 0x3F)
                  {
                    sub_2C4BB8();
                    if (v9 <= 0x3F)
                    {
                      sub_D6D1C();
                      if (v10 <= 0x3F)
                      {
                        sub_1835F4();
                        if (v11 <= 0x3F)
                        {
                          sub_E1018(319, &unk_3BEAF8);
                          if (v12 <= 0x3F)
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
          }
        }
      }
    }
  }
}

void sub_18352C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_183590()
{
  if (!qword_3C3470)
  {
    sub_718D4(&qword_3BC1A8);
    v0 = sub_2C5B98();
    if (!v1)
    {
      atomic_store(v0, &qword_3C3470);
    }
  }
}

void sub_1835F4()
{
  if (!qword_3C3C68)
  {
    sub_718D4(&qword_3BD478);
    v0 = sub_2C23A8();
    if (!v1)
    {
      atomic_store(v0, &qword_3C3C68);
    }
  }
}

unint64_t sub_18369C()
{
  result = qword_3C3CE8;
  if (!qword_3C3CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C3CE8);
  }

  return result;
}

unint64_t sub_1836F4()
{
  result = qword_3C3CF0;
  if (!qword_3C3CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C3CF0);
  }

  return result;
}

unint64_t sub_18374C()
{
  result = qword_3C3CF8;
  if (!qword_3C3CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C3CF8);
  }

  return result;
}

unint64_t sub_1837A0()
{
  result = qword_3C3D00;
  if (!qword_3C3D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C3D00);
  }

  return result;
}

uint64_t sub_1837F4()
{
  v0 = sub_2C2588();
  sub_68DE4(v0, qword_3E8898);
  sub_57AD8(v0, qword_3E8898);
  return sub_2C2598();
}

uint64_t sub_183858()
{
  v0 = sub_2C2588();
  sub_68DE4(v0, qword_3E88B0);
  sub_57AD8(v0, qword_3E88B0);
  return sub_2C2598();
}

uint64_t sub_1838BC()
{
  v0 = sub_2C2588();
  sub_68DE4(v0, qword_3E88C8);
  sub_57AD8(v0, qword_3E88C8);
  return sub_2C2598();
}

uint64_t sub_183998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a4;
  v45 = a5;
  v43 = a3;
  v40 = a1;
  v41 = a2;
  v47 = sub_2C48B8();
  v50 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2C48D8();
  v48 = *(v6 - 8);
  v49 = v6;
  __chkstk_darwin(v6);
  v42 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2C2A38();
  v8 = *(v34 - 8);
  v35 = *(v8 + 64);
  __chkstk_darwin(v34);
  v33 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2C25A8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2C48F8();
  v38 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v36 = &v32 - v19;
  sub_183EBC();
  v37 = sub_2C5E88();
  sub_2C48E8();
  sub_2C4918();
  v39 = *(v15 + 8);
  v39(v17, v14);
  (*(v11 + 16))(v13, v40, v10);
  v20 = v33;
  v21 = v34;
  (*(v8 + 16))(v33, v41, v34);
  v22 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v23 = (v12 + *(v8 + 80) + v22) & ~*(v8 + 80);
  v24 = swift_allocObject();
  (*(v11 + 32))(v24 + v22, v13, v10);
  (*(v8 + 32))(v24 + v23, v20, v21);
  aBlock[4] = v44;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_750DC;
  aBlock[3] = v45;
  v25 = _Block_copy(aBlock);

  v26 = v42;
  sub_2C48C8();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_158098();
  sub_6620C(&qword_3C2BC8);
  sub_1580F0();
  v28 = v46;
  v27 = v47;
  sub_2C6158();
  v30 = v36;
  v29 = v37;
  sub_2C5E68();
  _Block_release(v25);

  (*(v50 + 8))(v28, v27);
  (*(v48 + 8))(v26, v49);
  return (v39)(v30, v38);
}

unint64_t sub_183EBC()
{
  result = qword_3BFEF0;
  if (!qword_3BFEF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3BFEF0);
  }

  return result;
}

uint64_t sub_183F0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_183F28()
{
  v1 = sub_2C25A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2C2A38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_184070()
{
  sub_2C25A8();
  sub_2C2A38();
  return sub_2C2578();
}

uint64_t sub_184170(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_6620C(&qword_3BD588);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_6620C(&qword_3BE400);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1842C0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_6620C(&qword_3BD588);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_6620C(&qword_3BE400);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for PageErrorView()
{
  result = qword_3C3D68;
  if (!qword_3C3D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_184448()
{
  sub_1310F0();
  if (v0 <= 0x3F)
  {
    sub_85DC0();
    if (v1 <= 0x3F)
    {
      sub_2C4E28();
      if (v2 <= 0x3F)
      {
        sub_18456C(319, &qword_3BD600, &type metadata accessor for SizeConstants);
        if (v3 <= 0x3F)
        {
          sub_18456C(319, &qword_3BE478, &type metadata accessor for FontConstants);
          if (v4 <= 0x3F)
          {
            sub_D6DE8();
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

void sub_18456C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1845C0@<X0>(void *a1@<X8>)
{
  result = sub_2C0C08();
  *a1 = v3;
  return result;
}

uint64_t sub_1845EC@<X0>(void *a1@<X8>)
{
  result = sub_2C0BF8();
  *a1 = v3;
  return result;
}

uint64_t sub_184618()
{
  v0 = sub_2C5418();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2C5288();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2C5278();
  (*(v1 + 104))(v3, enum case for LocalizerLookupStrategy.default(_:), v0);
  sub_2BFD98();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_18499C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_2C5418();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2C5288();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1)
  {
    v12 = sub_2BFDD8();
    v13 = *(*(v12 - 8) + 56);

    return v13(a2, 1, 1, v12);
  }

  else
  {
    sub_2C5278();
    (*(v5 + 104))(v7, enum case for LocalizerLookupStrategy.default(_:), v4);
    sub_2BFD98();
    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
    v15 = sub_2BFDD8();
    return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
  }
}

unint64_t sub_184D78@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1896B0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_184DB4()
{
  result = qword_3C3DB8;
  if (!qword_3C3DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C3DB8);
  }

  return result;
}

uint64_t sub_184E08(uint64_t a1, uint64_t a2)
{
  v4 = sub_189608();
  v5 = sub_18965C();

  return Error<>._code.getter(a1, a2, v4, v5);
}

uint64_t sub_184E7C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = sub_6620C(&qword_3BFEC0);
  __chkstk_darwin(v3 - 8);
  v48 = &v38 - v4;
  v5 = sub_2C21F8();
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2BE9B8();
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin(v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_6620C(&unk_3C4340);
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v38 - v14;
  v38 = sub_6620C(&qword_3C3DC0);
  __chkstk_darwin(v38);
  v17 = &v38 - v16;
  v18 = sub_6620C(&qword_3C3DC8);
  v42 = *(v18 - 8);
  v43 = v18;
  __chkstk_darwin(v18);
  v41 = &v38 - v19;
  v20 = sub_6620C(&qword_3C3DD0);
  __chkstk_darwin(v20);
  v22 = &v38 - v21;
  *v17 = sub_2C3328();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v23 = &v17[*(sub_6620C(&qword_3C3DD8) + 44)];
  v44 = v2;
  sub_1855B0(v2, v23);
  sub_2BEF48();
  v24 = sub_2BEF78();
  v25 = *(v24 - 8);
  (*(v25 + 56))(v15, 0, 1, v24);
  sub_2BE9A8();
  sub_6620C(&qword_3BC020);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2E3F30;
  sub_6932C(v15, v12, &unk_3C4340);
  if ((*(v25 + 48))(v12, 1, v24) == 1)
  {
    sub_69198(v12, &unk_3C4340);
    *(v26 + 32) = 0u;
    *(v26 + 48) = 0u;
    *(v26 + 64) = 0u;
  }

  else
  {
    *(v26 + 56) = v24;
    *(v26 + 64) = sub_189B24(&unk_3C0040, &type metadata accessor for PageData);
    *(v26 + 72) = sub_189B24(&unk_3C4400, &type metadata accessor for PageData);
    v27 = sub_720C8((v26 + 32));
    (*(v25 + 32))(v27, v12, v24);
  }

  sub_72B74(&qword_3C3DE0, &qword_3C3DC0);
  v28 = v41;
  sub_2C3D88();

  (*(v39 + 8))(v9, v40);
  sub_69198(v15, &unk_3C4340);
  sub_69198(v17, &qword_3C3DC0);
  v29 = *(v44 + 32);
  v30 = &v22[*(v20 + 36)];
  v31 = type metadata accessor for PageViewEventViewModifier();
  sub_2BEF48();
  v33 = v45;
  v32 = v46;
  v34 = v47;
  (*(v46 + 104))(v45, enum case for Metrics.NavigationType.forward(_:), v47);
  v35 = sub_2C54D8();
  v36 = v48;
  (*(*(v35 - 8) + 56))(v48, 1, 1, v35);
  sub_2C2108();
  sub_69198(v36, &qword_3BFEC0);
  (*(v32 + 8))(v33, v34);
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  *(v30 + 2) = v29;
  *&v30[*(v31 + 28)] = _swiftEmptyArrayStorage;
  (*(v42 + 32))(v22, v28, v43);
  sub_69130(v22, v49, &qword_3C3DD0);
}

uint64_t sub_1855B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v216 = a2;
  v200 = sub_2C0EC8();
  v199 = *(v200 - 8);
  __chkstk_darwin(v200);
  v198 = (&v162 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v197 = sub_2C5418();
  v196 = *(v197 - 8);
  __chkstk_darwin(v197);
  v194 = &v162 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_2C5288();
  v193 = *(v195 - 8);
  __chkstk_darwin(v195);
  v190 = &v162 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_2C0F28();
  v189 = *(v191 - 8);
  __chkstk_darwin(v191);
  v192 = &v162 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_2C0F18();
  v186 = *(v187 - 8);
  __chkstk_darwin(v187);
  v212 = &v162 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_2C0ED8();
  v183 = *(v184 - 8);
  __chkstk_darwin(v184);
  v211 = &v162 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_2C0F08();
  v181 = *(v182 - 8);
  __chkstk_darwin(v182);
  v210 = &v162 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_2C0EE8();
  v179 = *(v180 - 8);
  __chkstk_darwin(v180);
  v209 = &v162 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2C0F38();
  __chkstk_darwin(v11 - 8);
  v185 = &v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = sub_6620C(&qword_3C3DE8);
  v213 = *(v229 - 8);
  __chkstk_darwin(v229);
  v188 = &v162 - v13;
  v14 = sub_6620C(&qword_3C3DF0);
  __chkstk_darwin(v14 - 8);
  v215 = &v162 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v230 = &v162 - v17;
  v223 = sub_6620C(&qword_3C3DF8);
  v206 = *(v223 - 8);
  __chkstk_darwin(v223);
  v163 = &v162 - v18;
  v19 = sub_6620C(&qword_3C3E00);
  __chkstk_darwin(v19 - 8);
  v214 = &v162 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v236 = &v162 - v22;
  v222 = sub_6620C(&qword_3BD6A0);
  v221 = *(v222 - 8);
  __chkstk_darwin(v222);
  v228 = &v162 - v23;
  v220 = sub_2C0C68();
  v219 = *(v220 - 8);
  __chkstk_darwin(v220);
  v218 = &v162 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_2C0C98();
  v227 = *(v217 - 8);
  __chkstk_darwin(v217);
  v203 = &v162 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_6620C(&qword_3C3E08);
  v205 = *(v204 - 8);
  __chkstk_darwin(v204);
  v178 = &v162 - v26;
  v27 = sub_6620C(&qword_3BEF80);
  __chkstk_darwin(v27 - 8);
  v202 = &v162 - v28;
  v29 = sub_6620C(&qword_3C3E10);
  __chkstk_darwin(v29 - 8);
  v208 = &v162 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v235 = &v162 - v32;
  v33 = sub_6620C(&qword_3BCB28);
  __chkstk_darwin(v33 - 8);
  v35 = &v162 - v34;
  v36 = sub_2C3918();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v162 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = sub_2C0978();
  v237 = *(v224 - 8);
  __chkstk_darwin(v224);
  v41 = &v162 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = v41;
  v42 = sub_2BFDD8();
  v43 = *(v42 - 8);
  v225 = v42;
  v226 = v43;
  __chkstk_darwin(v42);
  v177 = &v162 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v47 = &v162 - v46;
  v48 = sub_6620C(&qword_3C3E18);
  v49 = v48 - 8;
  __chkstk_darwin(v48);
  v234 = &v162 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v53 = &v162 - v52;
  v231 = *(a1 + 8);
  sub_184618();
  v172 = v47;
  sub_2BFCC8();
  v232 = type metadata accessor for PageErrorView();
  v207 = a1;
  sub_29AD08(v41);
  v171 = *(v37 + 104);
  v169 = v37 + 104;
  v171(v39, enum case for Font.TextStyle.title2(_:), v36);
  v54 = enum case for Font.Design.serif (_:);
  v55 = sub_2C3848();
  v56 = *(v55 - 8);
  v168 = *(v56 + 104);
  v166 = v56 + 104;
  v168(v35, v54, v55);
  v57 = *(v56 + 56);
  v170 = v55;
  v167 = v57;
  v57(v35, 0, 1, v55);
  sub_2C3858();
  v58 = sub_2C38A8();
  v175 = v35;
  sub_69198(v35, &qword_3BCB28);
  v59 = *(v37 + 8);
  v173 = v39;
  v176 = v36;
  v174 = v37 + 8;
  v165 = v59;
  v59(v39, v36);
  v60 = *(v237 + 8);
  v61 = v201;
  v237 += 8;
  v164 = v60;
  v60();
  KeyPath = swift_getKeyPath();
  v63 = sub_6620C(&qword_3C3E20);
  v64 = &v53[*(v63 + 36)];
  *v64 = KeyPath;
  v64[1] = v58;
  v65 = sub_2C4258();
  v66 = swift_getKeyPath();
  v67 = *(v49 + 44);
  v233 = v53;
  v68 = &v53[v67];
  *v68 = v66;
  v68[1] = v65;
  v69 = v202;
  sub_18499C(v231, v202);
  v70 = v226;
  v71 = v225;
  if ((*(v226 + 48))(v69, 1) == 1)
  {
    v72 = v203;
    sub_69198(v69, &qword_3BEF80);
    v73 = 1;
    v74 = v207;
    v75 = v235;
    v76 = v228;
    v77 = v204;
  }

  else
  {
    v78 = v177;
    (*(v70 + 32))(v177, v69, v71);
    (*(v70 + 16))(v172, v78, v71);
    v79 = v178;
    sub_2BFCC8();
    v80 = v61;
    sub_29AD08(v61);
    v81 = v173;
    v82 = v176;
    v171(v173, enum case for Font.TextStyle.body(_:), v176);
    v83 = v175;
    v84 = v170;
    v168(v175, enum case for Font.Design.default(_:), v170);
    v167(v83, 0, 1, v84);
    v85 = sub_2C38A8();
    sub_69198(v83, &qword_3BCB28);
    v165(v81, v82);
    (v164)(v80, v224);
    v86 = swift_getKeyPath();
    v87 = &v79[*(v63 + 36)];
    *v87 = v86;
    v87[1] = v85;
    v88 = swift_getKeyPath();
    v89 = &v79[*(sub_6620C(&qword_3C3E30) + 36)];
    *v89 = v88;
    v89[8] = 1;
    v90 = [objc_opt_self() bc_booksGray];
    v91 = sub_2C4288();
    v92 = swift_getKeyPath();
    v93 = &v79[*(sub_6620C(&qword_3C3E38) + 36)];
    *v93 = v92;
    v93[1] = v91;
    v94 = sub_2C3768();
    v95 = v207;
    v96 = v203;
    sub_29AAE0(v203);
    v97 = v218;
    sub_2C0C78();
    v72 = v96;
    (*(v227 + 8))(v96, v217);
    v98 = v228;
    v99 = v220;
    sub_2C1768();
    (*(v219 + 8))(v97, v99);
    swift_getKeyPath();
    sub_85AF8();
    v100 = v222;
    sub_2C0BD8();

    (*(v221 + 8))(v98, v100);
    sub_2C24D8();
    v102 = v101;
    v104 = v103;
    v106 = v105;
    v108 = v107;
    (*(v226 + 8))(v78, v225);
    v109 = v204;
    v110 = &v79[*(v204 + 36)];
    *v110 = v94;
    *(v110 + 1) = v102;
    *(v110 + 2) = v104;
    *(v110 + 3) = v106;
    *(v110 + 4) = v108;
    v110[40] = 0;
    v111 = v79;
    v112 = v235;
    sub_69130(v111, v235, &qword_3C3E08);
    v73 = 0;
    v113 = v95;
    v75 = v112;
    v76 = v98;
    v74 = v113;
    v77 = v109;
  }

  v114 = 1;
  (*(v205 + 56))(v75, v73, 1, v77);
  v115 = sub_2BF478();
  v116 = v229;
  v117 = v227;
  if (v115)
  {
    v118 = (v74 + *(v232 + 40));
    v119 = *v118;
    v120 = *(v118 + 1);
    LOBYTE(v239) = v119;
    v240 = v120;
    sub_6620C(&qword_3BFC48);
    sub_2C4378();
    if ((v238 & 1) == 0)
    {
      v121 = v163;
      sub_187018(v163);
      v122 = sub_2C3768();
      sub_29AAE0(v72);
      v123 = v218;
      sub_2C0C78();
      (*(v117 + 8))(v72, v217);
      v124 = v123;
      v125 = v220;
      sub_2C1768();
      (*(v219 + 8))(v124, v125);
      swift_getKeyPath();
      sub_85AF8();
      v126 = v222;
      sub_2C0BD8();

      (*(v221 + 8))(v76, v126);
      sub_2C24D8();
      v127 = v121 + *(v223 + 36);
      *v127 = v122;
      *(v127 + 8) = v128;
      *(v127 + 16) = v129;
      *(v127 + 24) = v130;
      *(v127 + 32) = v131;
      *(v127 + 40) = 0;
      sub_69130(v121, v236, &qword_3C3DF8);
      v114 = 0;
    }
  }

  v132 = 1;
  (*(v206 + 56))(v236, v114, 1, v223);
  if (v231 >= 2)
  {
    (*(v179 + 104))(v209, enum case for ButtonViewModel.Size.small(_:), v180);
    (*(v181 + 104))(v210, enum case for ButtonViewModel.Shape.capsule(_:), v182);
    (*(v183 + 104))(v211, enum case for ButtonViewModel.Kind.solid(_:), v184);
    (*(v186 + 104))(v212, enum case for ButtonViewModel.Style.primary(_:), v187);
    v133 = v218;
    v134 = v190;
    sub_2C5278();
    v135 = v117;
    v136 = v196;
    v137 = v72;
    v138 = v194;
    v139 = v197;
    (*(v196 + 104))(v194, enum case for LocalizerLookupStrategy.default(_:), v197);
    v140 = v192;
    sub_2BFD98();
    (*(v136 + 8))(v138, v139);
    (*(v193 + 8))(v134, v195);
    (*(v189 + 104))(v140, enum case for ButtonViewModel.Content.title(_:), v191);
    v141 = v198;
    sub_187358(v198);
    (*(v199 + 104))(v141, enum case for ButtonViewModel.ActionKind.actionModel(_:), v200);
    v116 = v229;
    sub_2C0EF8();
    v142 = v188;
    sub_2C0448();
    LOBYTE(v141) = sub_2C3768();
    sub_29AAE0(v137);
    sub_2C0C78();
    (*(v135 + 8))(v137, v217);
    v143 = v228;
    v144 = v220;
    sub_2C1768();
    (*(v219 + 8))(v133, v144);
    swift_getKeyPath();
    sub_85AF8();
    v145 = v222;
    sub_2C0BD8();

    (*(v221 + 8))(v143, v145);
    sub_2C24D8();
    v146 = v142 + *(v116 + 36);
    *v146 = v141;
    *(v146 + 8) = v147;
    *(v146 + 16) = v148;
    *(v146 + 24) = v149;
    *(v146 + 32) = v150;
    *(v146 + 40) = 0;
    sub_69130(v142, v230, &qword_3C3DE8);
    v132 = 0;
  }

  v151 = v230;
  (*(v213 + 56))(v230, v132, 1, v116);
  v152 = v234;
  sub_6932C(v233, v234, &qword_3C3E18);
  v153 = v235;
  v154 = v208;
  sub_6932C(v235, v208, &qword_3C3E10);
  v155 = v236;
  v156 = v214;
  sub_6932C(v236, v214, &qword_3C3E00);
  v157 = v215;
  sub_6932C(v151, v215, &qword_3C3DF0);
  v158 = v152;
  v159 = v216;
  sub_6932C(v158, v216, &qword_3C3E18);
  v160 = sub_6620C(&qword_3C3E28);
  sub_6932C(v154, v159 + v160[12], &qword_3C3E10);
  sub_6932C(v156, v159 + v160[16], &qword_3C3E00);
  sub_6932C(v157, v159 + v160[20], &qword_3C3DF0);
  sub_69198(v151, &qword_3C3DF0);
  sub_69198(v155, &qword_3C3E00);
  sub_69198(v153, &qword_3C3E10);
  sub_69198(v233, &qword_3C3E18);
  sub_69198(v157, &qword_3C3DF0);
  sub_69198(v156, &qword_3C3E00);
  sub_69198(v154, &qword_3C3E10);
  return sub_69198(v234, &qword_3C3E18);
}

__n128 sub_187018@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_2C0B68();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2C0C98();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6620C(&qword_3C3E40);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = (v27 - v13);
  *v14 = sub_2C4648();
  v14[1] = v15;
  v16 = sub_6620C(&qword_3C3E48);
  sub_1878C4(v1, v14 + *(v16 + 44));
  type metadata accessor for PageErrorView();
  sub_29AAE0(v10);
  sub_2C0B78();
  (*(v8 + 8))(v10, v7);
  sub_2C0B48();
  v18 = v17;
  (*(v4 + 8))(v6, v3);
  v19 = v14 + *(v12 + 44);
  v20 = *(sub_2C2AA8() + 20);
  v21 = enum case for RoundedCornerStyle.continuous(_:);
  v22 = sub_2C31A8();
  (*(*(v22 - 8) + 104))(&v19[v20], v21, v22);
  *v19 = v18;
  *(v19 + 1) = v18;
  *&v19[*(sub_6620C(&qword_3C3E50) + 36)] = 256;
  sub_2C46A8();
  sub_2C2AD8();
  sub_69130(v14, a1, &qword_3C3E40);
  v23 = a1 + *(sub_6620C(&qword_3C3E58) + 36);
  v24 = v27[5];
  *(v23 + 64) = v27[4];
  *(v23 + 80) = v24;
  *(v23 + 96) = v27[6];
  v25 = v27[1];
  *v23 = v27[0];
  *(v23 + 16) = v25;
  result = v27[3];
  *(v23 + 32) = v27[2];
  *(v23 + 48) = result;
  return result;
}

uint64_t sub_187358@<X0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  v1 = type metadata accessor for PageErrorView();
  v33 = *(v1 - 8);
  v32 = *(v33 + 64);
  __chkstk_darwin(v1 - 8);
  v31 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2C22F8();
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2C2208();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2C2178();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2C4BF8();
  v14 = *(v28 - 8);
  __chkstk_darwin(v28);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v28 - v19;
  (*(v11 + 104))(v13, enum case for Metrics.TargetType.button(_:), v10, v18);
  (*(v7 + 104))(v9, enum case for Metrics.ClickActionType.reload(_:), v6);
  sub_2C22A8();
  sub_2C2118();
  (*(v29 + 8))(v5, v30);
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
  v21 = v28;
  (*(v14 + 16))(v16, v20, v28);
  v22 = v31;
  sub_189258(v34, v31);
  v23 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v24 = swift_allocObject();
  sub_1892C0(v22, v24 + v23);
  v25 = sub_2C4C28();
  v26 = v35;
  v35[3] = v25;
  v26[4] = &protocol witness table for ClosureAction;
  sub_720C8(v26);
  sub_2C4C18();
  return (*(v14 + 8))(v20, v21);
}

uint64_t sub_1877A4()
{
  v1 = *v0;
  v6 = *v0;
  swift_errorRetain();
  sub_6620C(&unk_3BF5A0);
  sub_6620C(&qword_3C3EC8);
  if (swift_dynamicCast())
  {
    sub_68D1C(v4, v7);
    sub_72084(v7, v7[3]);
    v2 = sub_2C66B8();
    sub_68CD0(v7);
    return v2;
  }

  else
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    sub_69198(v4, &qword_3C3ED0);
    v7[0] = 0;
    v7[1] = 0xE000000000000000;
    *&v4[0] = v1;
    sub_2C6368();
    return v7[0];
  }
}

uint64_t sub_1878C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = sub_6620C(&qword_3C3E60);
  __chkstk_darwin(v3 - 8);
  v70 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v69 = (&v60 - v6);
  v64 = sub_6620C(&qword_3BD6A0);
  v79 = *(v64 - 8);
  __chkstk_darwin(v64);
  v8 = &v60 - v7;
  v9 = sub_2C0C68();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2C0C98();
  v71 = v13;
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = *(type metadata accessor for PageErrorView() + 32);
  sub_29AAE0(v16);
  sub_2C0C78();
  v17 = *(v14 + 8);
  v62 = v14 + 8;
  v63 = v17;
  v17(v16, v13);
  v60 = v9;
  sub_2C1768();
  v18 = *(v10 + 8);
  v74 = v10 + 8;
  v75 = v18;
  v18(v12, v9);
  swift_getKeyPath();
  v73 = sub_85AF8();
  v19 = v64;
  sub_2C0BD8();

  v61 = *(v79 + 8);
  v79 += 8;
  v61(v8, v19);
  v68 = v96[0];
  v78 = sub_2C3328();
  LOBYTE(v87) = 0;
  v72 = a1;
  sub_1880BC(v86);
  *&v80[7] = v86[0];
  *&v80[23] = v86[1];
  *&v80[39] = v86[2];
  *&v80[55] = v86[3];
  v77 = v87;
  v67 = sub_2C3748();
  sub_29AAE0(v16);
  sub_2C0C78();
  v20 = v63;
  v63(v16, v71);
  v21 = v60;
  sub_2C1768();
  v75(v12, v21);
  swift_getKeyPath();
  sub_2C0BD8();

  v22 = v61;
  v61(v8, v19);
  sub_2C24D8();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v81 = 0;
  v65 = sub_2C37B8();
  sub_29AAE0(v16);
  sub_2C0C78();
  v20(v16, v71);
  sub_2C1768();
  v75(v12, v21);
  swift_getKeyPath();
  sub_2C0BD8();

  v22(v8, v19);
  sub_2C24D8();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  LOBYTE(v87) = 0;
  v39 = [objc_opt_self() secondarySystemBackgroundColor];
  v40 = sub_2C4288();
  v79 = v40;
  LOBYTE(v12) = sub_2C3758();
  v41 = sub_2C3328();
  v42 = v69;
  *v69 = v41;
  *(v42 + 8) = 0;
  *(v42 + 16) = 1;
  v43 = sub_6620C(&qword_3C3E68);
  sub_18825C(v72, v42 + *(v43 + 44));
  v44 = v70;
  sub_6932C(v42, v70, &qword_3C3E60);
  v45 = v68;
  *&v87 = v78;
  *(&v87 + 1) = v68;
  LOBYTE(v88[0]) = v77;
  *(&v88[1] + 1) = *&v80[16];
  *(&v88[2] + 1) = *&v80[32];
  *(&v88[3] + 1) = *&v80[48];
  *&v88[4] = *&v80[63];
  *(v88 + 1) = *v80;
  LOBYTE(v19) = v67;
  BYTE8(v88[4]) = v67;
  *(&v88[4] + 9) = *v82;
  HIDWORD(v88[4]) = *&v82[3];
  *&v89 = v24;
  *(&v89 + 1) = v26;
  *&v90 = v28;
  *(&v90 + 1) = v30;
  LOBYTE(v91) = 0;
  DWORD1(v91) = *&v84[3];
  *(&v91 + 1) = *v84;
  v46 = v65;
  BYTE8(v91) = v65;
  *(&v91 + 9) = *v83;
  HIDWORD(v91) = *&v83[3];
  *&v92 = v32;
  *(&v92 + 1) = v34;
  *&v93 = v36;
  *(&v93 + 1) = v38;
  LOBYTE(v94) = 0;
  DWORD1(v94) = *&v85[3];
  *(&v94 + 1) = *v85;
  *(&v94 + 1) = v40;
  v95 = v12;
  v47 = v93;
  v48 = v94;
  v49 = v66;
  *(v66 + 192) = v12;
  v49[10] = v47;
  v49[11] = v48;
  v50 = v87;
  v51 = v88[0];
  v52 = v88[2];
  v49[2] = v88[1];
  v49[3] = v52;
  *v49 = v50;
  v49[1] = v51;
  v53 = v88[3];
  v54 = v88[4];
  v55 = v92;
  v49[8] = v91;
  v49[9] = v55;
  v56 = v90;
  v49[6] = v89;
  v49[7] = v56;
  v49[4] = v53;
  v49[5] = v54;
  v57 = v49;
  v58 = sub_6620C(&qword_3C3E70);
  sub_6932C(v44, v57 + *(v58 + 48), &qword_3C3E60);
  sub_6932C(&v87, v96, &qword_3C3E78);
  sub_69198(v42, &qword_3C3E60);
  sub_69198(v44, &qword_3C3E60);
  v99 = *&v80[16];
  v100 = *&v80[32];
  *v101 = *&v80[48];
  v96[0] = v78;
  v96[1] = v45;
  v97 = v77;
  *&v101[15] = *&v80[63];
  v98 = *v80;
  v102 = v19;
  *v103 = *v82;
  *&v103[3] = *&v82[3];
  v104 = v24;
  v105 = v26;
  v106 = v28;
  v107 = v30;
  v108 = 0;
  *&v109[3] = *&v84[3];
  *v109 = *v84;
  v110 = v46;
  *&v111[3] = *&v83[3];
  *v111 = *v83;
  v112 = v32;
  v113 = v34;
  v114 = v36;
  v115 = v38;
  v116 = 0;
  *v117 = *v85;
  *&v117[3] = *&v85[3];
  v118 = v79;
  v119 = v12;
  return sub_69198(v96, &qword_3C3E78);
}

uint64_t sub_1880BC@<X0>(uint64_t a1@<X8>)
{
  sub_2C3908();
  v2 = sub_2C39E8();
  v20 = v3;
  v21 = v2;
  v19 = v4;
  v22 = v5;

  sub_1877A4();
  sub_7212C();
  v6 = sub_2C3A48();
  v8 = v7;
  v10 = v9;
  sub_2C38D8();
  v11 = sub_2C39E8();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_72180(v6, v8, v10 & 1);

  *a1 = v21;
  *(a1 + 8) = v20;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v22;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15 & 1;
  *(a1 + 56) = v17;
  sub_BE2CC(v21, v20, v19 & 1);

  sub_BE2CC(v11, v13, v15 & 1);

  sub_72180(v11, v13, v15 & 1);

  sub_72180(v21, v20, v19 & 1);
}

uint64_t sub_18825C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_6620C(&qword_3C3E80);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  __chkstk_darwin(v13);
  v15 = &v19 - v14;
  *v15 = sub_2C3178();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = sub_6620C(&qword_3C3E88);
  sub_188674(a1, &unk_390008, sub_18933C, sub_1885F0, &v15[*(v16 + 44)]);
  *v12 = sub_2C3178();
  *(v12 + 1) = 0;
  v12[16] = 1;
  sub_188674(a1, &unk_38FFE0, sub_189324, sub_188F38, &v12[*(v16 + 44)]);
  sub_6932C(v15, v9, &qword_3C3E80);
  sub_6932C(v12, v6, &qword_3C3E80);
  sub_6932C(v9, a2, &qword_3C3E80);
  v17 = sub_6620C(&qword_3C3E90);
  sub_6932C(v6, a2 + *(v17 + 48), &qword_3C3E80);
  sub_69198(v12, &qword_3C3E80);
  sub_69198(v15, &qword_3C3E80);
  sub_69198(v6, &qword_3C3E80);
  return sub_69198(v9, &qword_3C3E80);
}

uint64_t sub_1884B8()
{
  sub_2C46E8();
  sub_2C2848();
}

uint64_t sub_188534()
{
  type metadata accessor for PageErrorView();

  sub_6620C(&qword_3BFC48);
  sub_2C4378();
  sub_2C4388();
}

uint64_t sub_1885F0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2C42B8();
  v3 = [objc_opt_self() tertiaryLabelColor];
  v4 = sub_2C4288();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v4;
  return result;
}

uint64_t sub_188674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a4;
  v54 = a3;
  v52 = a2;
  v68 = a5;
  v6 = sub_2C0C68();
  v66 = *(v6 - 8);
  v67 = v6;
  __chkstk_darwin(v6);
  v65 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2C0C98();
  v62 = *(v8 - 8);
  v63 = v8;
  __chkstk_darwin(v8);
  v61 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_2C33E8();
  v57 = *(v56 - 8);
  __chkstk_darwin(v56);
  v53 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_2C34B8();
  v51 = *(v50 - 8);
  __chkstk_darwin(v50);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for PageErrorView();
  v13 = *(v60 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v60);
  v15 = sub_6620C(&qword_3C3E98);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v47 - v17;
  v48 = sub_6620C(&qword_3C3EA0);
  v49 = *(v48 - 8);
  __chkstk_darwin(v48);
  v20 = &v47 - v19;
  v59 = sub_6620C(&qword_3C3EA8);
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v22 = &v47 - v21;
  v64 = a1;
  sub_189258(a1, &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v24 = swift_allocObject();
  sub_1892C0(&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  sub_6620C(&qword_3BCAF8);
  sub_72ABC();
  sub_2C43C8();
  sub_2C34A8();
  v25 = sub_72B74(&qword_3C3EB0, &qword_3C3E98);
  v26 = sub_189B24(&qword_3C3EB8, &type metadata accessor for BorderlessButtonStyle);
  v27 = v50;
  sub_2C3E38();
  (*(v51 + 8))(v12, v27);
  (*(v16 + 8))(v18, v15);
  v28 = v53;
  sub_2C2B18();
  v69 = v15;
  v70 = v27;
  v71 = v25;
  v72 = v26;
  swift_getOpaqueTypeConformance2();
  sub_189B24(&qword_3BF960, &type metadata accessor for AutomaticHoverEffect);
  v29 = v48;
  v30 = v56;
  sub_2C3E88();
  (*(v57 + 8))(v28, v30);
  (*(v49 + 8))(v20, v29);
  sub_6620C(&qword_3BD560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2E15C0;
  LOBYTE(v15) = sub_2C3768();
  *(inited + 32) = v15;
  v32 = sub_2C37A8();
  *(inited + 33) = v32;
  v33 = sub_2C3798();
  sub_2C3798();
  if (sub_2C3798() != v15)
  {
    v33 = sub_2C3798();
  }

  sub_2C3798();
  if (sub_2C3798() != v32)
  {
    v33 = sub_2C3798();
  }

  v34 = v61;
  sub_29AAE0(v61);
  v35 = v65;
  sub_2C0C78();
  (*(v62 + 8))(v34, v63);
  sub_2C0C38();
  (*(v66 + 8))(v35, v67);
  sub_2C24D8();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = v68;
  (*(v58 + 32))(v68, v22, v59);
  result = sub_6620C(&qword_3C3EC0);
  v46 = v44 + *(result + 36);
  *v46 = v33;
  *(v46 + 8) = v37;
  *(v46 + 16) = v39;
  *(v46 + 24) = v41;
  *(v46 + 32) = v43;
  *(v46 + 40) = 0;
  return result;
}

void sub_188EA8()
{
  v0 = [objc_opt_self() generalPasteboard];
  sub_1877A4();
  v1 = sub_2C5888();

  [v0 setString:v1];
}

uint64_t sub_188F38@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2C42B8();
  v3 = [objc_opt_self() tertiaryLabelColor];
  v4 = sub_2C4288();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v4;
  return result;
}

uint64_t sub_188FC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2C2F98();
  *a1 = result;
  return result;
}

uint64_t sub_189020@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2C3038();
  *a1 = result;
  return result;
}

uint64_t sub_18904C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2C3038();
  *a1 = result;
  return result;
}

uint64_t sub_1890D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2C2F98();
  *a1 = result;
  return result;
}

uint64_t sub_18912C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2C3018();
  *a1 = result;
  return result;
}

uint64_t sub_189158@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2C3018();
  *a1 = result;
  return result;
}

uint64_t sub_1891D4@<X0>(void *a1@<X8>)
{
  result = sub_2C0C08();
  *a1 = v3;
  return result;
}

uint64_t sub_189200@<X0>(void *a1@<X8>)
{
  result = sub_2C0BF8();
  *a1 = v3;
  return result;
}

uint64_t sub_18922C@<X0>(void *a1@<X8>)
{
  result = sub_2C0C28();
  *a1 = v3;
  return result;
}

uint64_t sub_189258(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageErrorView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1892C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageErrorView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_189354(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PageErrorView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1893E4()
{
  v1 = type metadata accessor for PageErrorView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 32);
  sub_6620C(&qword_3BD530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2C0C98();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 36);
  sub_6620C(&qword_3C0C88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_2C0978();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_189608()
{
  result = qword_3C3ED8;
  if (!qword_3C3ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C3ED8);
  }

  return result;
}

unint64_t sub_18965C()
{
  result = qword_3C3EE0;
  if (!qword_3C3EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C3EE0);
  }

  return result;
}

unint64_t sub_1896B0(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

uint64_t sub_1896C0(uint64_t a1)
{
  v2 = sub_6620C(&qword_3C3EE8);
  __chkstk_darwin(v2 - 8);
  v4 = &v20[-v3];
  v5 = sub_2C5698();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v20[-v10];
  v21 = a1;
  swift_errorRetain();
  sub_6620C(&unk_3BF5A0);
  if (swift_dynamicCast())
  {

    v12 = v20[7];
    goto LABEL_12;
  }

  v21 = a1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    (*(v6 + 32))(v8, v11, v5);
    sub_2C5688();
    v13 = sub_2C4FB8();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v4, 1, v13) == 1)
    {
      (*(v6 + 8))(v8, v5);

      sub_69198(v4, &qword_3C3EE8);
    }

    else
    {
      v16 = sub_2C4FA8();
      v18 = v17;

      (*(v6 + 8))(v8, v5);
      (*(v14 + 8))(v4, v13);
      if ((v18 & 1) == 0)
      {
        v12 = sub_1896B0(v16);
        if (v12 != 6)
        {
          goto LABEL_12;
        }
      }
    }

    v12 = 2;
LABEL_12:

    return v12;
  }

  v21 = a1;
  v15 = swift_dynamicCast();

  if (v15)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

unint64_t sub_1899F8()
{
  result = qword_3C3EF0;
  if (!qword_3C3EF0)
  {
    sub_718D4(&qword_3C3DD0);
    sub_718D4(&qword_3C3DC0);
    sub_72B74(&qword_3C3DE0, &qword_3C3DC0);
    swift_getOpaqueTypeConformance2();
    sub_189B24(&qword_3C3400, type metadata accessor for PageViewEventViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C3EF0);
  }

  return result;
}

uint64_t sub_189B24(unint64_t *a1, void (*a2)(uint64_t))
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

id PageHostingControllerProvider.__allocating_init(objectGraph:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___BKPageHostingControllerProvider_objectGraph] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

id PageHostingControllerProvider.init(objectGraph:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___BKPageHostingControllerProvider_objectGraph] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t PageHostingControllerProvider.create(_:_:_:_:)(uint64_t a1, char a2, void *a3, void *a4)
{
  v9 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v9 - 8);
  v11 = &v21[-v10];
  sub_6620C(&unk_3C43A0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x80000000003057F0;
  *(inited + 16) = xmmword_2E15C0;
  *(inited + 48) = a2;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0xD000000000000017;
  *(inited + 120) = &type metadata for String;
  *(inited + 88) = 0x80000000003006B0;
  *(inited + 96) = 0x656E696C6E69;
  *(inited + 104) = 0xE600000000000000;
  v13 = sub_67AC8(inited);
  swift_setDeallocating();
  sub_6620C(&qword_3BC220);
  swift_arrayDestroy();
  v14 = sub_2C5C58();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  sub_2C5C18();

  v15 = v4;
  v16 = a3;
  v17 = a4;
  v18 = sub_2C5C08();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = a1;
  v19[5] = v15;
  v19[6] = v13;
  v19[7] = v16;
  v19[8] = v17;
  sub_249B98(0, 0, v11, &unk_2F0760, v19);
}

uint64_t PageHostingControllerProvider.createPage(_:_:_:_:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = sub_2C5C58();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_2C5C18();

  v13 = v4;

  v14 = a2;
  v15 = a4;
  v16 = sub_2C5C08();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = a1;
  v17[5] = v13;
  v17[6] = a3;
  v17[7] = v14;
  v17[8] = v15;
  sub_249B98(0, 0, v11, &unk_2F0768, v17);
}

uint64_t sub_18A07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[13] = a4;
  v8[18] = type metadata accessor for RootHostingControllerConfiguration(0);
  v8[19] = swift_task_alloc();
  sub_6620C(&qword_3BCE28);
  v8[20] = swift_task_alloc();
  sub_6620C(&qword_3C3F28);
  v8[21] = swift_task_alloc();
  v8[22] = sub_6620C(&qword_3C3F30);
  v8[23] = swift_task_alloc();
  v9 = sub_2C0838();
  v8[24] = v9;
  v8[25] = *(v9 - 8);
  v8[26] = swift_task_alloc();
  v10 = sub_6620C(&qword_3C3F38);
  v8[27] = v10;
  v8[28] = *(v10 - 8);
  v8[29] = swift_task_alloc();
  sub_6620C(&qword_3C2810);
  v8[30] = swift_task_alloc();
  v11 = sub_2C4B78();
  v8[31] = v11;
  v8[32] = *(v11 - 8);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v12 = sub_2C49F8();
  v8[35] = v12;
  v8[36] = *(v12 - 8);
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  sub_2C5C18();
  v8[39] = sub_2C5C08();
  v14 = sub_2C5BB8();
  v8[40] = v14;
  v8[41] = v13;

  return _swift_task_switch(sub_18A3C4, v14, v13);
}

uint64_t sub_18A3C4()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];
  v0[42] = sub_6620C(&qword_3BD860);

  sub_2C49E8();
  sub_2C4E18();
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v6 = v0[30];
    v5 = v0[31];
    sub_2C4B68();
    if (v4(v6, 1, v5) != 1)
    {
      sub_69198(v0[30], &qword_3C2810);
    }
  }

  else
  {
    (*(v0[32] + 32))(v0[34], v0[30], v0[31]);
  }

  v8 = v0[33];
  v7 = v0[34];
  v9 = v0[31];
  v10 = v0[32];
  v11 = *(v10 + 16);
  v0[43] = v11;
  v0[44] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v8, v7, v9);
  sub_2C5808();
  sub_18BD6C();
  sub_2C49B8();
  v13 = v0[28];
  v12 = v0[29];
  v14 = v0[27];

  sub_2C13A8();
  (*(v13 + 8))(v12, v14);
  v15 = swift_task_alloc();
  v0[45] = v15;
  *v15 = v0;
  v15[1] = sub_18A8AC;

  return BaseObjectGraph.inject<A>(_:)(v0 + 11, &type metadata for PageControllerFactory, &type metadata for PageControllerFactory);
}

uint64_t sub_18A8AC()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  v3 = *(v2 + 328);
  v4 = *(v2 + 320);
  if (v0)
  {
    v5 = sub_18B2C8;
  }

  else
  {
    v5 = sub_18A9E8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_18A9E8()
{
  v55 = v0;
  v1 = v0[46];
  v2 = v0[43];
  v3 = v0[42];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[31];
  v7 = v0[15];
  v8 = v0[11];
  v0[47] = v8;
  v54[3] = v3;
  v52 = v1;
  v54[0] = v7;

  sub_2C49E8();
  v2(v5, v4, v6);
  sub_2C5808();
  sub_18BDD0();
  sub_2C49B8();
  if (v52)
  {
    v9 = v0[38];
    v10 = v0[36];
    v11 = v0[37];
    v12 = v0[34];
    v13 = v0[35];
    v14 = v0[31];
    v15 = v0[32];

    v16 = *(v10 + 8);
    v16(v11, v13);
    (*(v15 + 8))(v12, v14);
    v16(v9, v13);
    sub_68CD0((v0 + 2));
    if (qword_3BB800 != -1)
    {
      swift_once();
    }

    v17 = sub_2C00B8();
    sub_57AD8(v17, qword_3C30B0);
    swift_errorRetain();
    v18 = sub_2C0098();
    v19 = sub_2C5DD8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v54[0] = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v22 = sub_2C66B8();
      v24 = sub_5CCF4(v22, v23, v54);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_0, v18, v19, "pageHostingControllerProvider not able to provide page hosting controller: %s", v20, 0xCu);
      sub_68CD0(v21);
    }

    v25 = v0[17];
    v26 = [objc_opt_self() sharedInstance];
    v57.value._rawValue = _swiftEmptyArrayStorage;
    v58._countAndFlagsBits = 0x8000000000305880;
    v27.super.isa = v25;
    v57.is_nil = 123;
    v58._object = &stru_20 + 58;
    sub_2C6078(v27, v57, v58, v28);

    v29 = v0[1];

    return v29();
  }

  else
  {
    v53 = v8;
    v31 = v0[24];
    v32 = v0[25];
    v33 = v0[23];
    v34 = v0[21];

    sub_18BF30(v33, v34);
    v35 = *(v32 + 48);
    if (v35(v34, 1, v31) == 1)
    {
      v36 = v0[24];
      v37 = v0[21];
      sub_2C0828();
      if (v35(v37, 1, v36) != 1)
      {
        sub_69198(v0[21], &qword_3C3F28);
      }
    }

    else
    {
      (*(v0[25] + 32))(v0[26], v0[21], v0[24]);
    }

    v38 = v0[25];
    v39 = v0[26];
    v40 = v0[24];
    v42 = v0[19];
    v41 = v0[20];
    v43 = v0[18];
    v44 = v0[5];
    v51 = v0[6];
    v45 = sub_72084(v0 + 2, v44);
    v0[12] = v53;
    v46 = sub_2C0778();
    (*(*(v46 - 8) + 56))(v41, 1, 1, v46);
    (*(v38 + 16))(&v42[*(v43 + 20)], v39, v40);
    *v42 = 0;
    v47 = swift_task_alloc();
    v0[48] = v47;
    *v47 = v0;
    v47[1] = sub_18AF38;
    v49 = v0[19];
    v48 = v0[20];
    v50 = v0[16];

    return PageControllerFactory.create<A>(intent:parentTracker:origin:configuration:)(v45, v50, v48, v49, v44, v51);
  }
}

uint64_t sub_18AF38(uint64_t a1)
{
  v4 = *v2;
  (*v2)[49] = v1;

  if (v1)
  {
    v5 = v4[20];
    sub_E060C(v4[19]);
    sub_69198(v5, &qword_3BCE28);
    v6 = v4[40];
    v7 = v4[41];
    v8 = sub_18B598;
  }

  else
  {
    v9 = v4[19];
    v10 = v4[20];
    v4[50] = a1;
    sub_E060C(v9);
    sub_69198(v10, &qword_3BCE28);
    v6 = v4[40];
    v7 = v4[41];
    v8 = sub_18B09C;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_18B09C()
{
  v1 = v0[50];
  v2 = v0[36];
  v3 = v0[35];
  v19 = v0[34];
  v20 = v0[38];
  v4 = v0[32];
  v17 = v0[37];
  v18 = v0[31];
  v5 = v0[25];
  v16 = v0[26];
  v15 = v0[24];
  v6 = v0[17];

  v7 = [objc_opt_self() sharedInstance];
  sub_6620C(&qword_3BC308);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2E3F30;
  *(v8 + 56) = sub_C17C4();
  *(v8 + 32) = v1;
  v9 = v1;
  v23._countAndFlagsBits = 0x8000000000305880;
  v10.super.isa = v6;
  v22.value._rawValue = v8;
  v22.is_nil = 123;
  v23._object = &stru_20 + 55;
  sub_2C6078(v10, v22, v23, v11);

  (*(v5 + 8))(v16, v15);
  v12 = *(v2 + 8);
  v12(v17, v3);
  (*(v4 + 8))(v19, v18);
  v12(v20, v3);
  sub_68CD0((v0 + 2));

  v13 = v0[1];

  return v13();
}

uint64_t sub_18B2C8()
{
  v22 = v0;
  v1 = v0[38];
  v2 = v0[35];
  v3 = v0[36];
  v4 = v0[34];
  v5 = v0[31];
  v6 = v0[32];

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);
  sub_68CD0((v0 + 2));
  if (qword_3BB800 != -1)
  {
    swift_once();
  }

  v7 = sub_2C00B8();
  sub_57AD8(v7, qword_3C30B0);
  swift_errorRetain();
  v8 = sub_2C0098();
  v9 = sub_2C5DD8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = sub_2C66B8();
    v14 = sub_5CCF4(v12, v13, &v21);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_0, v8, v9, "pageHostingControllerProvider not able to provide page hosting controller: %s", v10, 0xCu);
    sub_68CD0(v11);
  }

  v15 = v0[17];
  v16 = [objc_opt_self() sharedInstance];
  v24.value._rawValue = _swiftEmptyArrayStorage;
  v25._countAndFlagsBits = 0x8000000000305880;
  v17.super.isa = v15;
  v24.is_nil = 123;
  v25._object = &stru_20 + 58;
  sub_2C6078(v17, v24, v25, v18);

  v19 = v0[1];

  return v19();
}

uint64_t sub_18B598()
{
  v27 = v0;
  v25 = v0[38];
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[25];
  v8 = v0[26];
  v9 = v0[24];

  (*(v7 + 8))(v8, v9);
  v10 = *(v2 + 8);
  v10(v1, v3);
  (*(v5 + 8))(v4, v6);
  v10(v25, v3);

  sub_68CD0((v0 + 2));
  if (qword_3BB800 != -1)
  {
    swift_once();
  }

  v11 = sub_2C00B8();
  sub_57AD8(v11, qword_3C30B0);
  swift_errorRetain();
  v12 = sub_2C0098();
  v13 = sub_2C5DD8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v14 = 136315138;
    swift_getErrorValue();
    v16 = sub_2C66B8();
    v18 = sub_5CCF4(v16, v17, &v26);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v12, v13, "pageHostingControllerProvider not able to provide page hosting controller: %s", v14, 0xCu);
    sub_68CD0(v15);
  }

  v19 = v0[17];
  v20 = [objc_opt_self() sharedInstance];
  v29.value._rawValue = _swiftEmptyArrayStorage;
  v30._countAndFlagsBits = 0x8000000000305880;
  v21.super.isa = v19;
  v29.is_nil = 123;
  v30._object = &stru_20 + 58;
  sub_2C6078(v21, v29, v30, v22);

  v23 = v0[1];

  return v23();
}

uint64_t sub_18BAF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_88BE0;

  return sub_18A07C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_18BC30()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_18BC90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_7100C;

  return sub_18A07C(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_18BD6C()
{
  result = qword_3C3F40;
  if (!qword_3C3F40)
  {
    sub_718D4(&qword_3C3F38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C3F40);
  }

  return result;
}

unint64_t sub_18BDD0()
{
  result = qword_3C3F48;
  if (!qword_3C3F48)
  {
    sub_718D4(&qword_3C3F30);
    sub_18BE54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C3F48);
  }

  return result;
}

unint64_t sub_18BE54()
{
  result = qword_3C3F50;
  if (!qword_3C3F50)
  {
    sub_718D4(&qword_3C3F28);
    sub_18BED8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C3F50);
  }

  return result;
}

unint64_t sub_18BED8()
{
  result = qword_3C3F58;
  if (!qword_3C3F58)
  {
    sub_2C0838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C3F58);
  }

  return result;
}

uint64_t sub_18BF30(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C3F28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BFBC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2BEF78();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_18C07C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2BEF78();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for YearInReviewPage()
{
  result = qword_3C3FB8;
  if (!qword_3C3FB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18C16C()
{
  sub_18C210();
  if (v0 <= 0x3F)
  {
    sub_2BEF78();
    if (v1 <= 0x3F)
    {
      sub_D6D1C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_18C210()
{
  if (!qword_3C3FC8)
  {
    sub_718D4(&qword_3BC408);
    v0 = sub_2C5B98();
    if (!v1)
    {
      atomic_store(v0, &qword_3C3FC8);
    }
  }
}

__n128 sub_18C280(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_18C2A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_18C2EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18C370@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_6620C(&qword_3C4000);
  v14 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  sub_72084(v1, v1[3]);
  v7 = sub_2BFA08();
  if (v7)
  {
    v8 = v7;
    sub_72084(v1, v1[3]);
    if (sub_2BFA38())
    {
      v9 = sub_18C604(v1);
      v15 = sub_1DA078();
      v16 = v10;
      __chkstk_darwin(v15);
      *(&v13 - 4) = v8;
      *(&v13 - 3) = v9;
      *(&v13 - 2) = v2;
      sub_6620C(&qword_3C4008);
      sub_18E3E8();
      sub_7212C();
      sub_2C4578();

      (*(v14 + 32))(a1, v6, v4);
      return (*(v14 + 56))(a1, 0, 1, v4);
    }
  }

  v12 = *(v14 + 56);

  return v12(a1, 1, 1, v4);
}

uint64_t sub_18C604(void *a1)
{
  sub_72084(a1, a1[3]);
  v1 = sub_2BFA08();
  if (v1)
  {
    v2 = v1;
    swift_getKeyPath();
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v2 + 32;
      v5 = _swiftEmptyArrayStorage;
      do
      {
        sub_691F8(v4, v35);
        swift_getAtKeyPath();
        sub_68CD0(v35);
        if (v34)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_5BB78(0, *(v5 + 2) + 1, 1, v5);
          }

          v8 = *(v5 + 2);
          v7 = *(v5 + 3);
          if (v8 >= v7 >> 1)
          {
            v5 = sub_5BB78((v7 > 1), v8 + 1, 1, v5);
          }

          *(v5 + 2) = v8 + 1;
          v6 = &v5[16 * v8];
          *(v6 + 4) = v33;
          *(v6 + 5) = v34;
        }

        v4 += 40;
        --v3;
      }

      while (v3);

      goto LABEL_14;
    }
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_14:
  v9 = sub_67BF8(_swiftEmptyArrayStorage);
  v10 = *(v5 + 2);
  if (!v10)
  {
LABEL_30:

    return v9;
  }

  v11 = 0;
  v12 = (v5 + 40);
  while (v11 < *(v5 + 2))
  {
    v14 = *(v12 - 1);
    v13 = *v12;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35[0] = v9;
    v16 = sub_5D228(v14, v13);
    v18 = v9[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      goto LABEL_32;
    }

    v22 = v17;
    if (v9[3] >= v21)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = v16;
        sub_632BC();
        v16 = v31;
        v9 = v35[0];
        if (v22)
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }
    }

    else
    {
      sub_5E708(v21, isUniquelyReferenced_nonNull_native);
      v9 = v35[0];
      v16 = sub_5D228(v14, v13);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_35;
      }
    }

    if (v22)
    {
      goto LABEL_25;
    }

LABEL_23:
    v9[(v16 >> 6) + 8] |= 1 << v16;
    v24 = (v9[6] + 16 * v16);
    *v24 = v14;
    v24[1] = v13;
    *(v9[7] + 8 * v16) = 0;
    v25 = v9[2];
    v20 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v20)
    {
      goto LABEL_34;
    }

    v9[2] = v26;
    v27 = v16;

    v16 = v27;
LABEL_25:
    v28 = v9[7];
    v29 = *(v28 + 8 * v16);
    v20 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v20)
    {
      goto LABEL_33;
    }

    ++v11;
    *(v28 + 8 * v16) = v30;

    v12 += 2;
    if (v10 == v11)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_2C6678();
  __break(1u);
  return result;
}

uint64_t sub_18C8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6620C(&qword_3BDC30);
  __chkstk_darwin(v6);
  *&v15[0] = a1;

  sub_6620C(&qword_3BDC38);
  sub_72B74(&qword_3BDC40, &qword_3BDC38);
  sub_2BFF38();
  swift_getKeyPath();
  sub_18E57C(a3, v15);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = v15[3];
  *(v7 + 56) = v15[2];
  *(v7 + 72) = v8;
  *(v7 + 88) = v15[4];
  *(v7 + 104) = v16;
  v9 = v15[1];
  *(v7 + 24) = v15[0];
  *(v7 + 40) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_18E610;
  *(v10 + 24) = v7;

  sub_6620C(&qword_3C4028);
  sub_72B74(&qword_3C4030, &qword_3BDC30);
  v11 = sub_718D4(&qword_3C4018);
  v12 = sub_18E4D4();
  *&v15[0] = &_s18WantToReadMenuItemVN;
  *(&v15[0] + 1) = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v15[0] = v11;
  *(&v15[0] + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  return sub_2C4558();
}

uint64_t sub_18CB8C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_6620C(&qword_3C4018);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_72084(a2, a2[3]);
  v9 = sub_2BF928();
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  if (*(a3 + 16))
  {
    v19 = v6;
    if (!v10)
    {
      v9 = 0;
    }

    v12 = sub_5D228(v9, v11);
    v14 = v13;

    v15 = (v14 & 1) != 0 && *(*(a3 + 56) + 8 * v12) > 1;
    v6 = v19;
  }

  else
  {

    v15 = 0;
  }

  sub_691F8(a2, v22);
  v22[40] = v15;
  KeyPath = swift_getKeyPath();
  v24 = 0;
  v16 = sub_18E4D4();
  sub_2C3D08();
  sub_18E65C(v22);
  sub_72084(a2, a2[3]);
  sub_2BF3B8();
  sub_29AB08(v22);
  v20 = &_s18WantToReadMenuItemVN;
  v21 = v16;
  swift_getOpaqueTypeConformance2();
  sub_2C3CD8();

  sub_68CD0(v22);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_18CE10@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v2 = sub_2BE5C8();
  v68 = *(v2 - 8);
  v69 = v2;
  __chkstk_darwin(v2);
  v67 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_6620C(&unk_3CA260);
  __chkstk_darwin(v4 - 8);
  v66 = &v50 - v5;
  v56 = sub_2C2198();
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v62 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&unk_3BDC80);
  __chkstk_darwin(v7 - 8);
  v76 = &v50 - v8;
  v9 = sub_2C22F8();
  v64 = *(v9 - 8);
  v65 = v9;
  __chkstk_darwin(v9);
  v60 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6620C(&unk_3C4370);
  __chkstk_darwin(v11 - 8);
  v13 = &v50 - v12;
  v14 = sub_2C2178();
  v74 = *(v14 - 8);
  v75 = v14;
  __chkstk_darwin(v14);
  v73 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2C4BF8();
  __chkstk_darwin(v16 - 8);
  v77 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_2C0608();
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v58 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v50 - v20;
  v22 = sub_2C30F8();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2C2208();
  v71 = *(v26 - 8);
  v72 = v26;
  __chkstk_darwin(v26);
  v78 = &v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_72084(v1, *(v1 + 24));
  v54 = sub_2BF3B8();
  v57 = v28;
  v29 = *(v1 + 48);
  v30 = *(v1 + 56);
  if (v30 == 1)
  {
    if (v29)
    {
LABEL_3:
      v31 = &enum case for Metrics.ClickActionType.removeFromWantToRead(_:);
      goto LABEL_6;
    }
  }

  else
  {

    sub_2C5DD8();
    v32 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v29, 0);
    (*(v23 + 8))(v25, v22);
    if (v81)
    {
      goto LABEL_3;
    }
  }

  v31 = &enum case for Metrics.ClickActionType.addToWantToRead(_:);
LABEL_6:
  (*(v71 + 104))(v78, *v31, v72);
  v59 = v21;
  v51 = v22;
  v50 = v23;
  v52 = v30;
  if (v30)
  {
    if ((v29 & 1) == 0)
    {
LABEL_8:
      sub_2C05E8();
      goto LABEL_11;
    }
  }

  else
  {

    sub_2C5DD8();
    v33 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v29, 0);
    (*(v23 + 8))(v25, v22);
    if (v80 != 1)
    {
      goto LABEL_8;
    }
  }

  sub_2C05F8();
LABEL_11:
  sub_72084(v1, *(v1 + 24));
  v53 = sub_2BF908();
  (*(v74 + 104))(v73, enum case for Metrics.TargetType.button(_:), v75);
  sub_2C21B8();
  sub_72084(v1, *(v1 + 24));
  sub_2BF968();
  v34 = sub_2BE3B8();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v13, 1, v34) == 1)
  {
    sub_69198(v13, &unk_3C4370);
  }

  else
  {
    sub_2BE378();
    (*(v35 + 8))(v13, v34);
  }

  v36 = sub_2C2258();
  (*(*(v36 - 8) + 56))(v76, 1, 1, v36);
  (*(v55 + 104))(v62, enum case for Metrics.LocationType.button(_:), v56);
  if (!v52)
  {

    sub_2C5DD8();
    v39 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v29, 0);
    (*(v50 + 8))(v25, v51);
    if (v79 != 1)
    {
      goto LABEL_16;
    }

LABEL_18:
    v40 = *(v1 + 24);
    v41 = sub_72084(v1, v40);
    sub_18ECD4(v41, v40);
    goto LABEL_19;
  }

  if (v29)
  {
    goto LABEL_18;
  }

LABEL_16:
  v37 = *(v1 + 24);
  v38 = sub_72084(v1, v37);
  sub_18EF24(v38, v37);
LABEL_19:
  swift_bridgeObjectRetain_n();
  v42 = v60;
  sub_2C22E8();
  v43 = v73;
  sub_2C2118();

  (*(v64 + 8))(v42, v65);
  (*(v74 + 8))(v43, v75);
  v44 = v61;
  v45 = v59;
  v46 = v63;
  (*(v61 + 16))(v58, v59, v63);
  v47 = sub_2BF088();
  (*(*(v47 - 8) + 56))(v66, 1, 1, v47);
  v48 = v67;
  sub_2BE5B8();
  sub_2BE598();
  (*(v68 + 8))(v48, v69);
  sub_2C05D8();
  (*(v44 + 8))(v45, v46);
  return (*(v71 + 8))(v78, v72);
}

uint64_t sub_18D974()
{
  sub_6620C(&qword_3C4060);
  sub_72B74(&qword_3C4068, &qword_3C4060);
  return sub_2C24E8();
}

uint64_t sub_18DA18@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_6620C(&qword_3C4070);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v26[-v9];
  v28 = a1;
  v27 = a1;
  sub_2C08C8();
  sub_18E99C(&qword_3BFA68, &type metadata accessor for FlatCoverView);
  sub_2C42F8();
  if (*(a1 + 40) != 1)
  {
    goto LABEL_5;
  }

  sub_72084(a1, *(a1 + 24));
  v11 = sub_2BF8F8();
  if (!v11)
  {
    v19 = *(a1 + 24);
    v20 = *(a1 + 32);
    v21 = sub_72084(a1, v19);
    v14 = sub_18F0DC(v21, v19, v20);
    goto LABEL_8;
  }

  if (v11 != 1)
  {
LABEL_5:
    v16 = 0;
    v17 = 0;
    goto LABEL_6;
  }

  v12 = *(a1 + 24);
  v13 = sub_72084(a1, v12);
  v14 = sub_18F350(v13, v12);
LABEL_8:
  v16 = v14;
  v17 = v15;
  if (v15)
  {

    v18 = _swiftEmptyArrayStorage;
    goto LABEL_10;
  }

  v16 = 0;
LABEL_6:
  v18 = 0;
LABEL_10:
  v22 = *(v5 + 16);
  v22(v7, v10, v4);
  v22(a2, v7, v4);
  v23 = &a2[*(sub_6620C(&qword_3C4078) + 48)];
  sub_BE288(v16, v17, 0, v18);
  sub_BE2DC(v16, v17, 0, v18);
  *v23 = v16;
  v23[1] = v17;
  v23[2] = 0;
  v23[3] = v18;
  v24 = *(v5 + 8);
  v24(v10, v4);
  sub_BE2DC(v16, v17, 0, v18);
  return (v24)(v7, v4);
}

uint64_t sub_18DD10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2C30F8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(a1 + 48);
  if (*(a1 + 56) != 1)
  {

    sub_2C5DD8();
    v13 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v8, 0);
    (*(v5 + 8))(v7, v4);
    if (v16[15] != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = *(a1 + 24);
    v15 = sub_72084(a1, v14);
    result = sub_18ECD4(v15, v14);
    goto LABEL_6;
  }

  if (v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = *(a1 + 24);
  v10 = sub_72084(a1, v9);
  result = sub_18EF24(v10, v9);
LABEL_6:
  *a2 = result;
  *(a2 + 8) = v12;
  *(a2 + 16) = 0;
  *(a2 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_18DEC8(void *a1)
{
  sub_691F8(a1, v8);
  sub_72084(a1, a1[3]);
  sub_2BF8F8();
  v2 = sub_2BFA98();
  v4 = v3;
  if (v2 != sub_2BFA98() || v4 != v5)
  {
    sub_2C65B8();
  }

  return sub_2C08B8();
}

uint64_t sub_18DFB4()
{
  v1 = v0;
  v2 = sub_6620C(&qword_3BF750);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  sub_18E68C(v1, &v9 - v3);
  v5 = sub_2C1278();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_69198(v4, &qword_3BF750);
    v7 = 0;
  }

  else
  {
    v7 = sub_2C1238();
    (*(v6 + 8))(v4, v5);
  }

  return v7 & 1;
}

uint64_t sub_18E0D8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_6620C(&qword_3BF750);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  sub_18E68C(a1, &v11 - v5);
  v7 = sub_2C1278();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = sub_69198(v6, &qword_3BF750);
    v10 = 0;
  }

  else
  {
    v10 = sub_2C1238();
    result = (*(v8 + 8))(v6, v7);
  }

  *a2 = v10 & 1;
  return result;
}

uint64_t sub_18E20C()
{
  v1 = sub_6620C(&unk_3C43D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = sub_2C24B8();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v12[3] = sub_2C0638();
  v12[4] = sub_18E99C(&qword_3BDC68, &type metadata accessor for AssetAction);
  v5 = sub_720C8(v12);
  sub_18CE10(v5);
  sub_18E900(v0, v10);
  v6 = swift_allocObject();
  v7 = v10[1];
  v6[1] = v10[0];
  v6[2] = v7;
  v6[3] = v11[0];
  *(v6 + 57) = *(v11 + 9);
  sub_6620C(&qword_3C4050);
  sub_72B74(&qword_3C4058, &qword_3C4050);
  return sub_2C0388();
}

unint64_t sub_18E3E8()
{
  result = qword_3C4010;
  if (!qword_3C4010)
  {
    sub_718D4(&qword_3C4008);
    sub_718D4(&qword_3C4018);
    sub_18E4D4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4010);
  }

  return result;
}

unint64_t sub_18E4D4()
{
  result = qword_3C4020;
  if (!qword_3C4020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4020);
  }

  return result;
}

uint64_t sub_18E530@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_72084(a1, a1[3]);
  result = sub_2BF3B8();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_18E5B4()
{

  sub_68CD0(v0 + 24);
  if (*(v0 + 104))
  {
    sub_68CD0(v0 + 64);
  }

  else
  {
  }

  return _swift_deallocObject(v0, 105, 7);
}

uint64_t sub_18E61C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_18E68C(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BF750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_18E700(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_18E71C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_18E764(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_18E7C8()
{
  result = qword_3C4038;
  if (!qword_3C4038)
  {
    sub_718D4(&qword_3C4040);
    sub_18E84C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4038);
  }

  return result;
}

unint64_t sub_18E84C()
{
  result = qword_3C4048;
  if (!qword_3C4048)
  {
    sub_718D4(&qword_3C4000);
    sub_18E3E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4048);
  }

  return result;
}

uint64_t sub_18E938()
{
  sub_68CD0(v0 + 16);
  sub_71AF4(*(v0 + 64), *(v0 + 72));

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_18E99C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static ContextActionStringBuilder.editionKindTitle(for:)(void *a1)
{
  return sub_18EA8C(a1, sub_18EF24);
}

{
  v2 = a1[3];
  v3 = a1[4];
  sub_72084(a1, v2);
  (*(v3 + 344))(&v10, v2, v3);
  if (v11)
  {
    sub_693D0(&v10, v12);
    v4 = v13;
    v5 = sub_72084(v12, v13);
    v6 = sub_18EF24(v5, v4);
    sub_68CD0(v12);
    return v6;
  }

  else
  {
    sub_69198(&v10, &unk_3C2550);
    v8 = a1[3];
    v9 = a1[4];
    sub_72084(a1, v8);
    return (*(v9 + 56))(v8, v9);
  }
}

uint64_t static ContextActionStringBuilder.narratedByString(for:)(void *a1)
{
  return sub_18EA8C(a1, sub_18F0DC);
}

{
  return sub_18EC04(a1, sub_18F0DC);
}

uint64_t static ContextActionStringBuilder.publishedByString(for:)(void *a1)
{
  return sub_18EA8C(a1, sub_18F350);
}

{
  return sub_18EC04(a1, sub_18F350);
}

uint64_t sub_18EA8C(void *a1, uint64_t (*a2)(void *, uint64_t, uint64_t))
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = sub_72084(a1, v2);

  return a2(v4, v2, v3);
}

uint64_t sub_18EC04(void *a1, uint64_t (*a2)(void *, uint64_t, uint64_t))
{
  v3 = a1[3];
  v4 = a1[4];
  sub_72084(a1, v3);
  (*(v4 + 344))(&v10, v3, v4);
  if (v11)
  {
    sub_693D0(&v10, v12);
    v5 = v13;
    v6 = v14;
    v7 = sub_72084(v12, v13);
    v8 = a2(v7, v5, v6);
    sub_68CD0(v12);
  }

  else
  {
    sub_69198(&v10, &unk_3C2550);
    return 0;
  }

  return v8;
}

uint64_t sub_18ECD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  __chkstk_darwin(a1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5);
  sub_2BF8F8();
  v6 = sub_2BFA98();
  v8 = v7;
  if (v6 != sub_2BFA98() || v8 != v9)
  {
    sub_2C65B8();
  }

  v11 = sub_1DA078();
  v13 = v12;
  v14 = sub_2BF928();
  if (v15)
  {
    v16 = v14;
    v17 = v15;

    v11 = v16;
    v13 = v17;
  }

  sub_1DA078();
  sub_6620C(&qword_3BE868);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2E3F30;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_B1BAC();
  *(v18 + 32) = v11;
  *(v18 + 40) = v13;
  v19 = sub_2C5898();

  (*(v3 + 8))(v5, a2);
  return v19;
}

uint64_t sub_18EF24(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  __chkstk_darwin(a1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5);
  sub_2BF8F8();
  v6 = sub_2BFA98();
  v8 = v7;
  if (v6 != sub_2BFA98() || v8 != v9)
  {
    sub_2C65B8();
  }

  v11 = sub_1DA078();
  v12 = sub_2BF928();
  if (v13)
  {
    v14 = v12;

    v11 = v14;
  }

  (*(v3 + 8))(v5, a2);
  return v11;
}

uint64_t sub_18F0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6620C(&qword_3C04C8);
  __chkstk_darwin(v6 - 8);
  v8 = &v20[-v7];
  v21[3] = a2;
  v21[4] = a3;
  v9 = sub_720C8(v21);
  (*(*(a2 - 8) + 16))(v9, a1, a2);
  sub_691F8(v21, v20);
  sub_6620C(&qword_3BC2C8);
  v10 = sub_2BF4A8();
  v11 = swift_dynamicCast();
  v12 = *(*(v10 - 8) + 56);
  if (!v11)
  {
    v12(v8, 1, 1, v10);
    sub_69198(v8, &qword_3C04C8);
    goto LABEL_5;
  }

  v13 = *(v10 - 8);
  v12(v8, 0, 1, v10);
  v14 = sub_2BF498();
  v16 = v15;
  (*(v13 + 8))(v8, v10);
  if (!v16)
  {
LABEL_5:
    v18 = 0;
    goto LABEL_6;
  }

  sub_1DA078();
  sub_6620C(&qword_3BE868);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2E3F30;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_B1BAC();
  *(v17 + 32) = v14;
  *(v17 + 40) = v16;
  v18 = sub_2C5898();

LABEL_6:
  sub_68CD0(v21);
  return v18;
}

uint64_t sub_18F350(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  __chkstk_darwin(a1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5);
  v6 = sub_2BF988();
  v8 = v7;
  if (v7)
  {
    v9 = sub_18F524(v5, a2);
    if (v10)
    {
      v11 = v9;
      v12 = v10;
      v16[1] = sub_1DA078();
      sub_6620C(&qword_3BE868);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_2E15C0;
      *(v13 + 56) = &type metadata for String;
      v14 = sub_B1BAC();
      *(v13 + 32) = v6;
      *(v13 + 40) = v8;
      *(v13 + 96) = &type metadata for String;
      *(v13 + 104) = v14;
      *(v13 + 64) = v14;
      *(v13 + 72) = v11;
      *(v13 + 80) = v12;
      v6 = sub_2C5898();
    }
  }

  (*(v3 + 8))(v5, a2);
  return v6;
}

uint64_t sub_18F524(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BC418);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_2BE588();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 - 8);
  __chkstk_darwin(v9);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a1, a2);
  sub_2BF958();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_69198(v6, &qword_3BC418);
    v15 = 0;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v16 = [objc_allocWithZone(NSDateFormatter) init];
    v17 = sub_2C5888();
    [v16 setDateFormat:v17];

    isa = sub_2BE4F8().super.isa;
    v19 = [v16 stringFromDate:isa];

    v15 = sub_2C58C8();
    (*(v8 + 8))(v11, v7);
  }

  (*(v12 + 8))(v14, a2);
  return v15;
}

uint64_t ImageResourceProvider.init(cache:registry:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

id sub_18F810()
{
  result = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:517];
  qword_3C4090 = result;
  return result;
}

id sub_18F854(uint64_t a1, unint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v13 = sub_6620C(&qword_3BDCA8);
  __chkstk_darwin(v13 - 8);
  v15 = &v32 - v14;
  v16 = sub_2C0668();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v6;
  v21 = sub_2C5888();
  v22 = [v20 imageResourceForTemplatedURL:v21 baseURL:0 naturalSize:a4 contentsScale:{a5, a6}];

  if (v22)
  {
    sub_6932C(a3, v15, &qword_3BDCA8);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_69198(v15, &qword_3BDCA8);
    }

    else
    {
      (*(v17 + 32))(v19, v15, v16);
      swift_unknownObjectRetain();
      sub_2C0658();
      v28 = sub_2C5888();

      sub_67AC8(_swiftEmptyArrayStorage);
      isa = sub_2C57C8().super.isa;

      v30 = [v20 imageResource:v22 naturalSize:v28 contentsScale:isa withFilter:a4 filterOptions:{a5, a6}];
      swift_unknownObjectRelease();

      (*(v17 + 8))(v19, v16);
      if (v30)
      {
        swift_unknownObjectRelease();
        return v30;
      }
    }
  }

  else
  {
    if (qword_3BB7B0 != -1)
    {
      swift_once();
    }

    v23 = sub_2C00B8();
    sub_57AD8(v23, qword_3C2FC0);
    v24 = sub_2C5DC8();

    v25 = sub_2C0098();

    if (os_log_type_enabled(v25, v24))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_5CCF4(a1, a2, &v33);
      _os_log_impl(&dword_0, v25, v24, "Failed to create image resource for: %s", v26, 0xCu);
      sub_68CD0(v27);
    }

    return 0;
  }

  return v22;
}

uint64_t ImageResourceProvider.mediaBackdrop(from:size:displayScale:)(uint64_t a1, double a2, double a3, double a4)
{
  v9 = sub_2C1438();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_6620C(&qword_3BDCA8);
  __chkstk_darwin(v13 - 8);
  v15 = &v37 - v14;
  v17 = *v4;
  v16 = *(v4 + 8);
  v18 = sub_2C0668();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  (*(v10 + 16))(v12, a1, v9);
  v19 = (*(v10 + 88))(v12, v9);
  if (v19 == enum case for ImageResourceSource.persistedCache(_:))
  {
    (*(v10 + 96))(v12, v9);
    v20 = *v12;
    v21 = v12[1];
    v42 = v17;
    v43 = v16;
    v41 = &type metadata for String;
    v39 = v20;
    v40 = v21;
    v22 = sub_678C8(&off_38A198);
    sub_69198(&unk_38A1B8, &qword_3C40A0);
    v38[3] = sub_6620C(&unk_3C40A8);
    v38[0] = v22;
    v23 = sub_1909B8(&v39, v38, v15, a2, a3, a4);
    sub_69198(v15, &qword_3BDCA8);
    sub_69198(v38, qword_3C0250);
    sub_68CD0(&v39);
    if (!v23)
    {
      return 0;
    }
  }

  else
  {
    if (v19 != enum case for ImageResourceSource.network(_:))
    {
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_2C61F8(42);
      v44._object = 0x8000000000305A10;
      v44._countAndFlagsBits = 0xD000000000000028;
      sub_2C5978(v44);
      sub_2C6368();
      result = sub_2C6378();
      __break(1u);
      return result;
    }

    (*(v10 + 96))(v12, v9);
    v24 = *v12;
    v25 = v12[1];
    v39 = v17;
    v40 = v16;
    v23 = sub_18F854(v24, v25, v15, a2, a3, a4);

    sub_69198(v15, &qword_3BDCA8);
    if (!v23)
    {
      return 0;
    }
  }

  v26 = [v17 mediaBackdropImageResourceFrom:v23 naturalSize:a2 contentScale:{a3, a4}];
  if (!v26)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v27 = v26;
  if (qword_3BB8F0 != -1)
  {
    swift_once();
  }

  v28 = qword_3C4090;
  v29 = [qword_3C4090 objectForKey:v27];
  if (!v29)
  {
    v30 = type metadata accessor for ImageResourceAdaptor();
    v31 = objc_allocWithZone(v30);
    *&v31[OBJC_IVAR____TtC11BookStoreUIP33_5F65FBF02658678FCCE73175674AAD1F20ImageResourceAdaptor_resource] = v27;
    v32 = objc_opt_self();
    swift_unknownObjectRetain();
    v33 = [v32 hashTableWithOptions:5];
    *&v31[OBJC_IVAR____TtC11BookStoreUIP33_5F65FBF02658678FCCE73175674AAD1F20ImageResourceAdaptor_observers] = v33;
    v37.receiver = v31;
    v37.super_class = v30;
    v34 = objc_msgSendSuper2(&v37, "init");
    [*&v34[OBJC_IVAR____TtC11BookStoreUIP33_5F65FBF02658678FCCE73175674AAD1F20ImageResourceAdaptor_resource] addObserver:v34];
    v35 = v34;
    [v28 setObject:v35 forKey:v27];
    v29 = v35;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v29;
}

uint64_t ImageResourceProvider.resource(from:size:displayScale:filter:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v11 = sub_2C1438();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = (&v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *v5;
  v16 = v5[1];
  (*(v12 + 16))(v15, a1, v11, v13);
  v18 = (*(v12 + 88))(v15, v11);
  if (v18 == enum case for ImageResourceSource.persistedCache(_:))
  {
    (*(v12 + 96))(v15, v11);
    v19 = *v15;
    v20 = v15[1];
    v38 = v17;
    v39 = v16;
    v37 = &type metadata for String;
    v35 = v19;
    v36 = v20;
    v21 = sub_678C8(&off_389E60);
    sub_69198(&unk_389E80, &qword_3C40A0);
    v34[3] = sub_6620C(&unk_3C40A8);
    v34[0] = v21;
    v22 = sub_1909B8(&v35, v34, a2, a3, a4, a5);
    sub_69198(v34, qword_3C0250);
    sub_68CD0(&v35);
    if (v22)
    {
LABEL_3:
      if (qword_3BB8F0 != -1)
      {
        swift_once();
      }

      v23 = qword_3C4090;
      v24 = [qword_3C4090 objectForKey:v22];
      if (!v24)
      {
        v25 = type metadata accessor for ImageResourceAdaptor();
        v26 = objc_allocWithZone(v25);
        *&v26[OBJC_IVAR____TtC11BookStoreUIP33_5F65FBF02658678FCCE73175674AAD1F20ImageResourceAdaptor_resource] = v22;
        v27 = objc_opt_self();
        swift_unknownObjectRetain();
        v28 = [v27 hashTableWithOptions:5];
        *&v26[OBJC_IVAR____TtC11BookStoreUIP33_5F65FBF02658678FCCE73175674AAD1F20ImageResourceAdaptor_observers] = v28;
        v33.receiver = v26;
        v33.super_class = v25;
        v29 = objc_msgSendSuper2(&v33, "init");
        [*&v29[OBJC_IVAR____TtC11BookStoreUIP33_5F65FBF02658678FCCE73175674AAD1F20ImageResourceAdaptor_resource] addObserver:v29];
        v24 = v29;
        [v23 setObject:v24 forKey:v22];
      }

      swift_unknownObjectRelease();
      return v24;
    }

    return 0;
  }

  if (v18 == enum case for ImageResourceSource.network(_:))
  {
    (*(v12 + 96))(v15, v11);
    v30 = *v15;
    v31 = v15[1];
    v35 = v17;
    v36 = v16;
    v22 = sub_18F854(v30, v31, a2, a3, a4, a5);

    if (v22)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v35 = 0;
  v36 = 0xE000000000000000;
  sub_2C61F8(42);
  v40._object = 0x8000000000305A10;
  v40._countAndFlagsBits = 0xD000000000000028;
  sub_2C5978(v40);
  sub_2C6368();
  result = sub_2C6378();
  __break(1u);
  return result;
}

id sub_190544()
{
  [*&v0[OBJC_IVAR____TtC11BookStoreUIP33_5F65FBF02658678FCCE73175674AAD1F20ImageResourceAdaptor_resource] removeObserver:v0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImageResourceAdaptor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_190690()
{
  result = [*(v0 + OBJC_IVAR____TtC11BookStoreUIP33_5F65FBF02658678FCCE73175674AAD1F20ImageResourceAdaptor_resource) imageContentWithOptions:1];
  if (result)
  {
    v2 = result;
    result = [result image];
    if (result)
    {
      v3 = [result newImage];
      swift_unknownObjectRelease();
      if (v3)
      {
        [v2 insets];
        v4 = [v3 imageWithAlignmentRectInsets:?];

        return v4;
      }

      else
      {

        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_190760()
{
  result = [*(v0 + OBJC_IVAR____TtC11BookStoreUIP33_5F65FBF02658678FCCE73175674AAD1F20ImageResourceAdaptor_resource) loadImage];
  if (result)
  {
    v2 = result;
    result = [result image];
    if (result)
    {
      v3 = [result newImage];
      swift_unknownObjectRelease();
      if (v3)
      {
        [v2 insets];
        v4 = [v3 imageWithAlignmentRectInsets:?];

        return v4;
      }

      else
      {

        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_190948(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_191134(a4);
  swift_unknownObjectRelease();
}

id sub_1909B8(void *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v57 = a3;
  v12 = sub_6620C(&qword_3BDCA8);
  __chkstk_darwin(v12 - 8);
  v14 = v55 - v13;
  v15 = sub_2C0668();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v6 + 8);
  v56 = *v6;
  v20 = sub_2C5888();
  v21 = [v19 imageProviderForKind:v20];

  if (!v21)
  {
    if (qword_3BB7B0 != -1)
    {
      swift_once();
    }

    v34 = sub_2C00B8();
    sub_57AD8(v34, qword_3C2FC0);
    v35 = sub_2C5DC8();
    v36 = sub_2C0098();
    if (os_log_type_enabled(v36, v35))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v58[0] = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_5CCF4(0x497972617262696CLL, 0xEB000000006D6574, v58);
      _os_log_impl(&dword_0, v36, v35, "No provider found in registry for: %s", v37, 0xCu);
      sub_68CD0(v38);
    }

    return 0;
  }

  sub_72084(a1, a1[3]);
  v22 = sub_2C6598();
  sub_6932C(a2, v58, qword_3C0250);
  v23 = v59;
  if (v59)
  {
    v24 = sub_72084(v58, v59);
    v55[1] = v55;
    v25 = v21;
    v26 = v15;
    v27 = v18;
    v28 = v16;
    v29 = *(v23 - 8);
    v30 = __chkstk_darwin(v24);
    v32 = v55 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v29 + 16))(v32, v30);
    v33 = sub_2C6598();
    (*(v29 + 8))(v32, v23);
    v16 = v28;
    v18 = v27;
    v15 = v26;
    v21 = v25;
    sub_68CD0(v58);
  }

  else
  {
    v33 = 0;
  }

  v39 = [v21 imageResourceForNaturalSize:v22 contentsScale:v33 instance:a4 options:{a5, a6}];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v39)
  {
    if (qword_3BB7B0 != -1)
    {
      swift_once();
    }

    v40 = sub_2C00B8();
    sub_57AD8(v40, qword_3C2FC0);
    v41 = sub_2C5DC8();
    swift_unknownObjectRetain();
    v42 = sub_2C0098();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v42, v41))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v58[0] = v44;
      *v43 = 136315138;
      v45 = [v21 description];
      v46 = sub_2C58C8();
      v48 = v47;

      v49 = sub_5CCF4(v46, v48, v58);

      *(v43 + 4) = v49;
      _os_log_impl(&dword_0, v42, v41, "Failed to create image resource for using provider: %s", v43, 0xCu);
      sub_68CD0(v44);
    }

    swift_unknownObjectRelease();

    return 0;
  }

  sub_6932C(v57, v14, &qword_3BDCA8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    swift_unknownObjectRelease();
    sub_69198(v14, &qword_3BDCA8);
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    swift_unknownObjectRetain();
    sub_2C0658();
    v51 = sub_2C5888();

    sub_67AC8(_swiftEmptyArrayStorage);
    isa = sub_2C57C8().super.isa;

    v53 = v16;
    v54 = [v56 imageResource:v39 naturalSize:v51 contentsScale:isa withFilter:a4 filterOptions:{a5, a6}];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v53 + 8))(v18, v15);
    if (v54)
    {
      swift_unknownObjectRelease();
      return v54;
    }
  }

  return v39;
}

uint64_t sub_1910A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1910E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_191134(SEL *a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC11BookStoreUIP33_5F65FBF02658678FCCE73175674AAD1F20ImageResourceAdaptor_observers) allObjects];
  sub_6620C(&unk_3C4150);
  v4 = sub_2C5B28();

  if (v4 >> 62)
  {
    v5 = sub_2C6398();
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_2C6208();
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    [v7 *a1];
    swift_unknownObjectRelease();
  }

LABEL_10:
}

id ContextActionDataModel.Asset.__allocating_init(assetInfo:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___BSUIContextActionDataAssetModel_initType];
  sub_691F8(a1, &v3[OBJC_IVAR___BSUIContextActionDataAssetModel_initType]);
  v4[40] = 3;
  v7.receiver = v3;
  v7.super_class = v1;
  v5 = objc_msgSendSuper2(&v7, "init");
  sub_68CD0(a1);
  return v5;
}

void *ContextActionDataModel.initType.getter()
{
  v1 = *(v0 + OBJC_IVAR___BSUIContextActionDataModel_initType);
  sub_193808(v1, *(v0 + OBJC_IVAR___BSUIContextActionDataModel_initType + 8), *(v0 + OBJC_IVAR___BSUIContextActionDataModel_initType + 16));
  return v1;
}

uint64_t sub_1914C8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___BSUIContextActionDataModel_originatingLocation;
  swift_beginAccess();
  return sub_7A788(v1 + v3, a1);
}

uint64_t sub_1915B0(uint64_t a1)
{
  v3 = OBJC_IVAR___BSUIContextActionDataModel_originatingLocation;
  swift_beginAccess();
  sub_CEFB8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_191610(uint64_t a1, uint64_t *a2)
{
  sub_7A788(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR___BSUIContextActionDataModel_originatingLocation;
  swift_beginAccess();
  sub_CEFB8(v6, v3 + v4);
  return swift_endAccess();
}

id sub_191800(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  if (*(v3 + 8))
  {

    v4 = sub_2C5888();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_191894(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_1918F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_2C58C8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_19197C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_1919D8(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_191AE8()
{
  v1 = OBJC_IVAR___BSUIContextActionDataModel_shouldReportFigaro;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_191B80(char a1)
{
  v3 = OBJC_IVAR___BSUIContextActionDataModel_shouldReportFigaro;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_191C78()
{
  v1 = OBJC_IVAR___BSUIContextActionDataModel_isAnODPRecommendation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_191D10(char a1)
{
  v3 = OBJC_IVAR___BSUIContextActionDataModel_isAnODPRecommendation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_191E08()
{
  v1 = OBJC_IVAR___BSUIContextActionDataModel_supportsSuggestionContextMenu;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_191EA0(char a1)
{
  v3 = OBJC_IVAR___BSUIContextActionDataModel_supportsSuggestionContextMenu;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_192050(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1920AC(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR___BSUIContextActionDataModel_sourceBarButtonItem;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_192144;
}

void sub_192144(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

void *sub_19220C()
{
  v1 = OBJC_IVAR___BSUIContextActionDataModel_sourcePoint;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1922B8(uint64_t a1)
{
  v3 = OBJC_IVAR___BSUIContextActionDataModel_sourcePoint;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_192310(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___BSUIContextActionDataModel_sourcePoint;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_19246C()
{
  swift_beginAccess();
  v0 = swift_unknownObjectRetain();

  return v0;
}

uint64_t sub_192520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  *(a1 + v6) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_192590(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1925E4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1926A8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_2BE7E8();
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_193854(a1, v6);
  v7 = *a2;
  v8 = OBJC_IVAR___BSUIContextActionDataModel_analyticsAttributes;
  swift_beginAccess();
  sub_CF028(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_192760@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___BSUIContextActionDataModel_analyticsAttributes;
  swift_beginAccess();
  return sub_193854(v1 + v3, a1);
}

uint64_t sub_1927B8(uint64_t a1)
{
  v3 = OBJC_IVAR___BSUIContextActionDataModel_analyticsAttributes;
  swift_beginAccess();
  sub_CF028(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_192878()
{
  v1 = OBJC_IVAR___BSUIContextActionDataModel_actionItemNeedsDifferentiation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1928BC(char a1)
{
  v3 = OBJC_IVAR___BSUIContextActionDataModel_actionItemNeedsDifferentiation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id ContextActionDataModel.init(assets:)(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR___BSUIContextActionDataModel_originatingLocation];
  *v3 = 0u;
  v3[1] = 0u;
  v4 = &v1[OBJC_IVAR___BSUIContextActionDataModel_presentationRefID];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v1[OBJC_IVAR___BSUIContextActionDataModel_presentationRefInstance];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v1[OBJC_IVAR___BSUIContextActionDataModel_presentationUID];
  *v6 = 0;
  v6[1] = 0;
  v1[OBJC_IVAR___BSUIContextActionDataModel_shouldReportFigaro] = 0;
  v1[OBJC_IVAR___BSUIContextActionDataModel_isAnODPRecommendation] = 0;
  v1[OBJC_IVAR___BSUIContextActionDataModel_supportsSuggestionContextMenu] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___BSUIContextActionDataModel_sourcePoint] = 0;
  *&v1[OBJC_IVAR___BSUIContextActionDataModel_transaction] = 0;
  *&v1[OBJC_IVAR___BSUIContextActionDataModel_transactionProvider] = 0;
  v7 = OBJC_IVAR___BSUIContextActionDataModel_analyticsAttributes;
  v8 = sub_2BEC68();
  (*(*(v8 - 8) + 56))(&v1[v7], 1, 1, v8);
  v1[OBJC_IVAR___BSUIContextActionDataModel_actionItemNeedsDifferentiation] = 0;
  v9 = &v1[OBJC_IVAR___BSUIContextActionDataModel_initType];
  *v9 = a1;
  *(v9 + 1) = 0;
  v9[16] = 1;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for ContextActionDataModel();
  return objc_msgSendSuper2(&v11, "init");
}

id ContextActionDataModel.init(asset:sourceView:)(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR___BSUIContextActionDataModel_originatingLocation];
  *v5 = 0u;
  v5[1] = 0u;
  v6 = &v2[OBJC_IVAR___BSUIContextActionDataModel_presentationRefID];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v2[OBJC_IVAR___BSUIContextActionDataModel_presentationRefInstance];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v2[OBJC_IVAR___BSUIContextActionDataModel_presentationUID];
  *v8 = 0;
  v8[1] = 0;
  v2[OBJC_IVAR___BSUIContextActionDataModel_shouldReportFigaro] = 0;
  v2[OBJC_IVAR___BSUIContextActionDataModel_isAnODPRecommendation] = 0;
  v2[OBJC_IVAR___BSUIContextActionDataModel_supportsSuggestionContextMenu] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___BSUIContextActionDataModel_sourcePoint] = 0;
  *&v2[OBJC_IVAR___BSUIContextActionDataModel_transaction] = 0;
  *&v2[OBJC_IVAR___BSUIContextActionDataModel_transactionProvider] = 0;
  v9 = OBJC_IVAR___BSUIContextActionDataModel_analyticsAttributes;
  v10 = sub_2BEC68();
  (*(*(v10 - 8) + 56))(&v2[v9], 1, 1, v10);
  v2[OBJC_IVAR___BSUIContextActionDataModel_actionItemNeedsDifferentiation] = 0;
  v11 = &v2[OBJC_IVAR___BSUIContextActionDataModel_initType];
  *v11 = a1;
  *(v11 + 1) = a2;
  v11[16] = 0;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for ContextActionDataModel();
  return objc_msgSendSuper2(&v13, "init");
}

void sub_192CCC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2BE7E8();
  __chkstk_darwin(v4 - 8);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_6620C(&qword_3C41D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v19[-v8];
  v10 = sub_2BEC68();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + 16))
  {
    v14 = sub_5D228(0x6F7361655250444FLL, 0xE90000000000006ELL);
    if (v15)
    {
      sub_68C64(*(a1 + 56) + 32 * v14, v19);
      if (swift_dynamicCast())
      {
        sub_2BEC58();
        if ((*(v11 + 48))(v9, 1, v10) == 1)
        {
          sub_69198(v9, &qword_3C41D0);
        }

        else
        {
          v16 = *(v11 + 32);
          v16(v13, v9, v10);
          v16(v6, v13, v10);
          (*(v11 + 56))(v6, 0, 1, v10);
          v17 = OBJC_IVAR___BSUIContextActionDataModel_analyticsAttributes;
          swift_beginAccess();
          sub_CF028(v6, v2 + v17);
          swift_endAccess();
        }
      }
    }
  }
}

id ContextActionDataModel.Asset.__allocating_init(adamID:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___BSUIContextActionDataAssetModel_initType];
  *v6 = a1;
  *(v6 + 1) = a2;
  v6[40] = 0;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, "init");
}

id ContextActionDataModel.Asset.init(adamID:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR___BSUIContextActionDataAssetModel_initType];
  *v3 = a1;
  *(v3 + 1) = a2;
  v3[40] = 0;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for ContextActionDataModel.Asset();
  return objc_msgSendSuper2(&v5, "init");
}

id ContextActionDataModel.Asset.init(libraryAsset:productProfile:)(void *a1, void *a2)
{
  v3 = v2;
  swift_getObjectType();
  sub_6620C(&qword_3C41D8);
  v13 = sub_2C5918();
  v14 = v6;
  strcpy(v12, "BKLibraryAsset");
  v12[15] = -18;
  sub_7212C();
  v7 = sub_2C6108();

  if (v7)
  {
    v8 = &v3[OBJC_IVAR___BSUIContextActionDataAssetModel_initType];
    v9 = sub_193A20();
    *v8 = a1;
    *(v8 + 3) = v9;
    *(v8 + 4) = a2;
    v8[40] = 1;
    v11.receiver = v3;
    v11.super_class = type metadata accessor for ContextActionDataModel.Asset();
    return objc_msgSendSuper2(&v11, "init");
  }

  else
  {

    type metadata accessor for ContextActionDataModel.Asset();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

id ContextActionDataModel.Asset.init(mResourceRawData:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2BF7D8();
  __chkstk_darwin(v4 - 8);
  v5 = sub_2BFB08();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, enum case for MResource.Keys.type(_:), v5, v7);
  v10 = sub_2BFAF8();
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  v22 = v10;
  v23 = v12;
  sub_2C61A8();
  if (*(a1 + 16) && (v13 = sub_5D2A0(v24), (v14 & 1) != 0))
  {
    sub_68C64(*(a1 + 56) + 32 * v13, v25);
    sub_68D90(v24);
    if ((swift_dynamicCast() & 1) != 0 && (v15 = sub_2BF4C8(), , v15))
    {
      sub_2BF7C8();
      v16 = sub_2BFB28();
      if (v16)
      {
        v17 = &v2[OBJC_IVAR___BSUIContextActionDataAssetModel_initType];
        *v17 = v16;
        v17[40] = 2;
        v18 = type metadata accessor for ContextActionDataModel.Asset();
        v21.receiver = v2;
        v21.super_class = v18;
        return objc_msgSendSuper2(&v21, "init");
      }
    }

    else
    {
    }
  }

  else
  {

    sub_68D90(v24);
  }

  type metadata accessor for ContextActionDataModel.Asset();
  swift_deallocPartialClassInstance();
  return 0;
}

id ContextActionDataModel.Asset.__allocating_init(mAsset:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___BSUIContextActionDataAssetModel_initType];
  *v4 = a1;
  v4[40] = 2;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, "init");
}

id ContextActionDataModel.Asset.init(mAsset:)(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR___BSUIContextActionDataAssetModel_initType];
  *v2 = a1;
  v2[40] = 2;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ContextActionDataModel.Asset();
  return objc_msgSendSuper2(&v4, "init");
}

id ContextActionDataModel.Asset.init(assetInfo:)(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR___BSUIContextActionDataAssetModel_initType];
  sub_691F8(a1, &v1[OBJC_IVAR___BSUIContextActionDataAssetModel_initType]);
  v3[40] = 3;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for ContextActionDataModel.Asset();
  v4 = objc_msgSendSuper2(&v6, "init");
  sub_68CD0(a1);
  return v4;
}

id sub_193808(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    v5 = a2;

    return a1;
  }
}

uint64_t sub_193854(uint64_t a1, uint64_t a2)
{
  v4 = sub_2BE7E8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ContextActionDataModel()
{
  result = qword_3C4218;
  if (!qword_3C4218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_19397C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_193A20()
{
  result = qword_3C41E8;
  if (!qword_3C41E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3C41E8);
  }

  return result;
}

uint64_t sub_193A6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___BSUIContextActionDataModel_originatingLocation;
  swift_beginAccess();
  return sub_7A788(v3 + v4, a2);
}

uint64_t sub_193B30@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

uint64_t sub_193BEC@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

id sub_193CA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___BSUIContextActionDataModel_sourcePoint;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_193D48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
  return swift_unknownObjectRetain();
}

uint64_t sub_193DC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___BSUIContextActionDataModel_analyticsAttributes;
  swift_beginAccess();
  return sub_193854(v3 + v4, a2);
}

uint64_t sub_193E2C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t sub_193E8C(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_193EE4()
{
  result = sub_2BE7E8();
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

uint64_t sub_1949C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1949FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_194A48(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

void sub_194AB0(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_194AFC(uint64_t a1)
{
  v2 = sub_2BE7E8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SeriesQuickActionButtonViewModel.init<A>(for:seriesPromotionState:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v74 = a3;
  v76 = a1;
  v77 = a2;
  v71 = a6;
  v8 = sub_2BE8F8();
  __chkstk_darwin(v8 - 8);
  v70 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2BE988();
  __chkstk_darwin(v10 - 8);
  v65 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_2BEF08();
  v66 = *(v67 - 1);
  __chkstk_darwin(v67);
  v64 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_6620C(&qword_3BDCF8);
  __chkstk_darwin(v13 - 8);
  v15 = v59 - v14;
  v73 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v63 = AssociatedTypeWitness;
  v17 = sub_2BF6B8();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v59 - v19;
  v21 = sub_2C2028();
  v68 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v69 = v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = v59 - v25;
  __chkstk_darwin(v24);
  v75 = (v59 - v27);
  sub_91668(v77, &v81);
  if (v85 < 4u)
  {
    v28 = v21;
    sub_693D0(&v81, &v86);
    sub_2BF378();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v45 = v63;

      (*(*(v45 - 8) + 8))(v20, v45);
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload == 1)
    {
      (*(v18 + 8))(v20, v17);
LABEL_11:
      v46 = v73;
      v21 = v28;
      v47 = v75;
      sub_693D0(&v86, v75);
      v43 = v68;
      (*(v68 + 104))(v47, enum case for SeriesQuickActionButtonViewModel.Style.quickActionBuy(_:), v21);
      v32 = v76;
      goto LABEL_24;
    }

    sub_68CD0(&v86);
    (*(v18 + 8))(v20, v17);
    v46 = v73;
    v32 = v76;
    v48 = sub_2BF308();
    v47 = v75;
    if (v48)
    {
      if (*(v48 + 16))
      {
        sub_691F8(v48 + 32, &v78);

        sub_693D0(&v78, &v81);
        sub_72084(&v81, v83);
        v79 = a4;
        v80 = v46;
        v49 = sub_720C8(&v78);
        (*(*(a4 - 8) + 16))(v49, v32, a4);
        v47 = v75;
        sub_2BFA78();
        sub_68CD0(&v78);
        v43 = v68;
        (*(v68 + 104))(v47, enum case for SeriesQuickActionButtonViewModel.Style.quickActionBuy(_:), v21);
        sub_68CD0(&v81);
        goto LABEL_24;
      }
    }

    v54 = enum case for SeriesQuickActionButtonViewModel.Style.placeholder(_:);
    v43 = v68;
LABEL_23:
    (*(v43 + 104))(v47, v54, v21);
    goto LABEL_24;
  }

  v30 = v66;
  v31 = v67;
  v62 = v26;
  v63 = v15;
  v32 = v76;
  if (v85 != 4)
  {
    v46 = v73;
    v43 = v68;
    v47 = v75;
    if (v83 | v84 | v81 | v82 | *(&v81 + 1))
    {
      v50 = &enum case for SeriesQuickActionButtonViewModel.Style.placeholder(_:);
    }

    else
    {
      v75[3] = a4;
      v47[4] = v46;
      v53 = sub_720C8(v47);
      (*(*(a4 - 8) + 16))(v53, v32, a4);
      v50 = &enum case for SeriesQuickActionButtonViewModel.Style.share(_:);
    }

    v54 = *v50;
    goto LABEL_23;
  }

  v61 = v21;
  sub_693D0(&v81, &v86);
  sub_691F8(&v86, &v78);
  v33 = v63;
  sub_2C2318();
  sub_1785A8();
  sub_2C4DB8();
  v34 = v78;
  v60 = sub_6620C(&qword_3C4250);
  v35 = *(v60 + 48);
  v36 = v62;
  sub_691F8(&v86, v62);
  sub_195604(v33, v36 + v35);
  v37 = sub_2BF348();
  v38 = &enum case for AltType.nextInSeries(_:);
  if ((v37 & 1) == 0)
  {
    v38 = &enum case for AltType.moreInSeries(_:);
  }

  (*(v30 + 104))(v64, *v38, v31);
  sub_72084(&v86, v87);
  sub_2BF8F8();
  sub_2BE978();
  sub_72084(&v86, v87);
  v66 = sub_2BF3B8();
  v59[1] = v39;
  sub_72084(&v86, v87);
  sub_2BF9C8();
  v67 = v34;
  v40 = [v34 currencyCode];
  *&v78 = 0;
  v41 = [v40 valueWithError:&v78];

  v42 = v78;
  v43 = v68;
  if (v41)
  {
    sub_2C58C8();
    v44 = v42;
  }

  else
  {
    v51 = v78;
    sub_2BE358();

    swift_willThrow();

    v72 = 0;
  }

  v52 = v62;
  sub_2BEE08();

  sub_195674(v63);
  v21 = v61;
  (*(v43 + 104))(v52, enum case for SeriesQuickActionButtonViewModel.Style.listItem(_:), v61);
  v47 = v75;
  (*(v43 + 32))(v75, v52, v21);
  sub_68CD0(&v86);
  v46 = v73;
LABEL_24:
  (*(v43 + 16))(v69, v47, v21);
  v83 = a4;
  v84 = v46;
  v55 = sub_720C8(&v81);
  v56 = v47;
  v57 = *(a4 - 8);
  (*(v57 + 16))(v55, v32, a4);
  sub_2B7838(a4, v46, v70);
  sub_2C2038();

  sub_9150C(v77);
  (*(v57 + 8))(v32, a4);
  return (*(v43 + 8))(v56, v21);
}

uint64_t sub_195604(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BDCF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_195674(uint64_t a1)
{
  v2 = sub_6620C(&qword_3BDCF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1956F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1957C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for IveReadThisHeaderView()
{
  result = qword_3C42B0;
  if (!qword_3C42B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1958BC()
{
  sub_85704();
  if (v0 <= 0x3F)
  {
    sub_85768();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_19596C@<X0>(void *a1@<X8>)
{
  result = sub_2C0C18();
  *a1 = v3;
  return result;
}

uint64_t sub_195998()
{
  sub_2C42B8();
  v0 = sub_2C3A58();
  v2 = v1;
  v4 = v3;
  sub_2C41E8();
  v5 = sub_2C39A8();
  v7 = v6;
  v9 = v8;
  sub_72180(v0, v2, v4 & 1);

  v29 = sub_2C39C8();
  v11 = v10;
  LOBYTE(v2) = v12;
  sub_72180(v5, v7, v9 & 1);

  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v15 = sub_2C5888();
  v16 = sub_2C5888();
  v17 = sub_2C5888();
  v18 = [v14 localizedStringForKey:v15 value:v16 table:v17];

  sub_2C58C8();
  sub_2C3548();
  v19 = sub_2C39A8();
  v21 = v20;
  LOBYTE(v16) = v22;

  v23 = sub_2C39C8();
  v25 = v24;
  LOBYTE(v0) = v26;
  sub_72180(v19, v21, v16 & 1);

  sub_72180(v29, v11, v2 & 1);

  sub_2C37F8();
  v27 = sub_2C39E8();

  sub_72180(v23, v25, v0 & 1);

  return v27;
}

uint64_t sub_195CAC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v107 = a2;
  v3 = sub_2C0D88();
  __chkstk_darwin(v3 - 8);
  v104 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2C0DB8();
  __chkstk_darwin(v5 - 8);
  v103 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_6620C(&qword_3C42F8) - 8;
  __chkstk_darwin(v105);
  v106 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v112 = &v81 - v9;
  v10 = sub_6620C(&qword_3BCB28);
  __chkstk_darwin(v10 - 8);
  v98 = &v81 - v11;
  v12 = sub_2C3918();
  v96 = *(v12 - 8);
  v97 = v12;
  __chkstk_darwin(v12);
  v94 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_6620C(&qword_3BD6D8) - 8;
  __chkstk_darwin(v99);
  v102 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v110 = &v81 - v16;
  v109 = sub_6620C(&qword_3BD6A0);
  v115 = *(v109 - 8);
  __chkstk_darwin(v109);
  v18 = &v81 - v17;
  v19 = sub_6620C(&qword_3BD6A8);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v81 - v21;
  v23 = sub_2C0C98();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = a1;
  v100 = sub_195998();
  v113 = v27;
  v114 = v28;
  v111 = v29;
  v101 = sub_2C3778();
  v95 = *(type metadata accessor for IveReadThisHeaderView() + 24);
  sub_29AAE0(v26);
  v89 = v23;
  sub_2C1768();
  v30 = *(v24 + 8);
  v92 = v24 + 8;
  v93 = v30;
  v30(v26, v23);
  swift_getKeyPath();
  v85 = v22;
  v86 = v19;
  sub_2C0BC8();

  v31 = *(v20 + 8);
  v90 = v20 + 8;
  v91 = v31;
  v31(v22, v19);
  swift_getKeyPath();
  v88 = sub_85AF8();
  v32 = v109;
  v84 = v18;
  sub_2C0BD8();

  v33 = *(v115 + 8);
  v115 += 8;
  v87 = v33;
  v33(v18, v32);
  sub_2C24D8();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  LOBYTE(v122) = 0;
  v111 &= 1u;
  v42 = v108[1];
  v83 = *v108;
  KeyPath = swift_getKeyPath();
  v43 = v96;
  v44 = v97;
  v45 = v94;
  (*(v96 + 104))(v94, enum case for Font.TextStyle.title2(_:), v97);
  v46 = enum case for Font.Design.serif (_:);
  v47 = sub_2C3848();
  v48 = *(v47 - 8);
  v49 = v98;
  (*(v48 + 104))(v98, v46, v47);
  (*(v48 + 56))(v49, 0, 1, v47);

  v50 = sub_2C38A8();
  sub_69198(v49, &qword_3BCB28);
  (*(v43 + 8))(v45, v44);
  v51 = swift_getKeyPath();
  LOBYTE(v122) = 0;
  *&v126 = v83;
  *(&v126 + 1) = v42;
  LOBYTE(v127) = 0;
  *(&v127 + 1) = _swiftEmptyArrayStorage;
  *&v128 = KeyPath;
  BYTE8(v128) = 1;
  *&v129 = v51;
  *(&v129 + 1) = v50;
  sub_6620C(&qword_3BD6C0);
  sub_85A38();
  v52 = v110;
  sub_2C4058();
  v121[0] = v126;
  v121[1] = v127;
  v121[2] = v128;
  v121[3] = v129;
  sub_69198(v121, &qword_3BD6C0);
  LOBYTE(v48) = sub_2C3778();
  v53 = v108;
  sub_29AAE0(v26);
  v54 = v85;
  v55 = v89;
  sub_2C1768();
  v93(v26, v55);
  swift_getKeyPath();
  v56 = v84;
  v57 = v86;
  sub_2C0BC8();

  v91(v54, v57);
  swift_getKeyPath();
  v58 = v109;
  sub_2C0BD8();

  v87(v56, v58);
  sub_2C24D8();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v67 = v52 + *(sub_6620C(&qword_3BD6B8) + 36);
  *v67 = v48;
  *(v67 + 8) = v60;
  *(v67 + 16) = v62;
  *(v67 + 24) = v64;
  *(v67 + 32) = v66;
  *(v67 + 40) = 0;
  *(v52 + *(v99 + 44)) = 256;
  sub_72084(v53 + 2, v53[5]);
  sub_2BF9F8();
  sub_2C5F48();
  sub_2C0D78();
  sub_2C0DA8();
  v68 = v112;
  sub_2C2378();
  sub_72084(v53 + 2, v53[5]);
  sub_2BF9F8();
  sub_2C5F48();
  sub_2C46A8();
  sub_2C2708();
  v69 = (v68 + *(v105 + 44));
  v70 = v119;
  *v69 = v118;
  v69[1] = v70;
  v69[2] = v120;
  v71 = v102;
  sub_1968A4(v52, v102);
  v72 = v106;
  sub_6932C(v68, v106, &qword_3C42F8);
  v73 = v100;
  *&v122 = v100;
  *(&v122 + 1) = v113;
  LOBYTE(v123) = v111;
  *(&v123 + 1) = v117[0];
  DWORD1(v123) = *(v117 + 3);
  *(&v123 + 1) = v114;
  LOBYTE(v68) = v101;
  LOBYTE(v124) = v101;
  *(&v124 + 1) = *v116;
  DWORD1(v124) = *&v116[3];
  *(&v124 + 1) = v35;
  *&v125[0] = v37;
  *(&v125[0] + 1) = v39;
  *&v125[1] = v41;
  BYTE8(v125[1]) = 0;
  v74 = v122;
  v75 = v123;
  v76 = v107;
  *(v107 + 57) = *(v125 + 9);
  v77 = v125[0];
  v76[2] = v124;
  v76[3] = v77;
  *v76 = v74;
  v76[1] = v75;
  v78 = v76;
  v79 = sub_6620C(&qword_3C4300);
  sub_1968A4(v71, v78 + *(v79 + 48));
  sub_6932C(v72, v78 + *(v79 + 64), &qword_3C42F8);
  sub_6932C(&v122, &v126, &qword_3BCB50);
  sub_69198(v112, &qword_3C42F8);
  sub_196914(v110);
  sub_69198(v72, &qword_3C42F8);
  sub_196914(v71);
  *&v126 = v73;
  *(&v126 + 1) = v113;
  LOBYTE(v127) = v111;
  *(&v127 + 1) = v117[0];
  DWORD1(v127) = *(v117 + 3);
  *(&v127 + 1) = v114;
  LOBYTE(v128) = v68;
  *(&v128 + 1) = *v116;
  DWORD1(v128) = *&v116[3];
  *(&v128 + 1) = v35;
  *&v129 = v37;
  *(&v129 + 1) = v39;
  v130 = v41;
  v131 = 0;
  return sub_69198(&v126, &qword_3BCB50);
}

uint64_t sub_196810@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2C3328();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_6620C(&qword_3C42F0);
  return sub_195CAC(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_196864@<X0>(void *a1@<X8>)
{
  result = sub_2C0C18();
  *a1 = v3;
  return result;
}

uint64_t sub_1968A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BD6D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_196914(uint64_t a1)
{
  v2 = sub_6620C(&qword_3BD6D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1969C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_2C5418();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2C5288();
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v26 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2BF408();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_72084(a1, a1[3]);
  v10 = sub_2BF2C8();
  v32 = v11;
  sub_72084(a1, a1[3]);
  v12 = sub_2BF2F8();
  v14 = v13;
  sub_72084(a1, a1[3]);
  sub_2BF288();
  v15 = (*(v7 + 88))(v9, v6);
  if (v15 == enum case for ContentKind.pdf(_:))
  {
    v16 = sub_2BFDD8();
    return (*(*(v16 - 8) + 56))(v33, 1, 1, v16);
  }

  v18 = v33;
  if (v15 == enum case for ContentKind.audiobook(_:) || v15 == enum case for ContentKind.regularBook(_:))
  {
    goto LABEL_5;
  }

  if (v15 == enum case for ContentKind.manga(_:))
  {
    v21 = v26;
    sub_2C5278();
    v23 = v30;
    v22 = v31;
    v24 = v28;
    (*(v30 + 104))(v28, enum case for LocalizerLookupStrategy.default(_:), v31);
    sub_2BFD98();
    (*(v23 + 8))(v24, v22);
    (*(v27 + 8))(v21, v29);
    goto LABEL_6;
  }

  if (v15 == enum case for ContentKind.unknownBook(_:))
  {
LABEL_5:
    v19 = swift_allocObject();
    *(v19 + 16) = v10;
    *(v19 + 24) = v32 & 1;
    *(v19 + 32) = v12;
    *(v19 + 40) = v14 & 1;
    sub_2BFD88();

LABEL_6:
    v20 = sub_2BFDD8();
    return (*(*(v20 - 8) + 56))(v18, 0, 1, v20);
  }

  v25 = sub_2BFDD8();
  (*(*(v25 - 8) + 56))(v18, 1, 1, v25);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_196E9C(void *a1, uint64_t a2, int a3, void *a4, int a5)
{
  LODWORD(v59) = a5;
  v58 = a4;
  LODWORD(v66) = a3;
  v60 = a2;
  v65 = sub_2C5418();
  v62 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = (&v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_6620C(&qword_3C39B0);
  __chkstk_darwin(v7 - 8);
  v61 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v51 - v10;
  v12 = sub_2C5288();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v51 - v17;
  sub_72084(a1, a1[3]);
  sub_2C5278();
  v64 = sub_2C5798();
  v20 = v19;
  v21 = *(v13 + 8);
  v21(v18, v12);
  v67 = v21;
  if (v66)
  {
    if ((v59 & 1) == 0)
    {
      v66 = v20;
      v57 = a1[3];
      v59 = a1[4];
      v60 = sub_72084(a1, v57);
      v56 = "";
      v54 = v18;
      sub_2C5278();
      v34 = v15;
      sub_2C5278();
      v35 = *(v13 + 56);
      v52 = v11;
      v53 = v12;
      v35(v11, 1, 1, v12);
      v36 = v61;
      v35(v61, 1, 1, v12);
      v37 = v62;
      v38 = v63;
      v39 = v65;
      (*(v62 + 104))(v63, enum case for LocalizerLookupStrategy.default(_:), v65);
      v40 = v54;
      v41 = v52;
      v60 = sub_2C5788();
      v59 = v42;
      (*(v37 + 8))(v38, v39);
      sub_175190(v36);
      v43 = v41;
      v44 = v53;
      sub_175190(v43);
      v45 = v67;
      v67(v34, v44);
      v45(v40, v44);
      v46 = a1[3];
      v65 = a1[4];
      v63 = sub_72084(a1, v46);
      sub_6620C(&unk_3C44C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2E15C0;
      *(inited + 32) = 0x736569726573;
      v48 = v64;
      *(inited + 40) = 0xE600000000000000;
      *(inited + 48) = v48;
      *(inited + 56) = v66;
      *(inited + 64) = 0xD000000000000011;
      v49 = v60;
      *(inited + 72) = 0x8000000000305F40;
      *(inited + 80) = v49;
      *(inited + 88) = v59;
      sub_677B4(inited);
      swift_setDeallocating();
      sub_6620C(&qword_3BD8A0);
      swift_arrayDestroy();
      sub_2C5278();
      v22 = sub_2C57A8();

      v45(v40, v44);
      return v22;
    }

    sub_72084(a1, a1[3]);
    sub_2C5278();
    v22 = sub_2C5798();
  }

  else
  {
    v66 = v20;
    v56 = a1[3];
    v57 = a1[4];
    v58 = sub_72084(a1, v56);
    v55 = "s";
    sub_2C5278();
    sub_2C5278();
    v23 = *(v13 + 56);
    v23(v11, 1, 1, v12);
    v24 = v61;
    v23(v61, 1, 1, v12);
    v25 = v62;
    v26 = *(v62 + 104);
    v59 = v13 + 8;
    v27 = v63;
    v28 = v65;
    v26(v63, enum case for LocalizerLookupStrategy.default(_:), v65);
    v60 = sub_2C5788();
    v58 = v29;
    (*(v25 + 8))(v27, v28);
    sub_175190(v24);
    sub_175190(v11);
    v30 = v67;
    v67(v15, v12);
    v30(v18, v12);
    sub_72084(a1, a1[3]);
    sub_6620C(&unk_3C44C0);
    v31 = swift_initStackObject();
    *(v31 + 16) = xmmword_2E15C0;
    *(v31 + 32) = 0x736569726573;
    v32 = v64;
    *(v31 + 40) = 0xE600000000000000;
    *(v31 + 48) = v32;
    *(v31 + 56) = v66;
    strcpy((v31 + 64), "localizedCount");
    *(v31 + 79) = -18;
    v33 = v58;
    *(v31 + 80) = v60;
    *(v31 + 88) = v33;
    sub_677B4(v31);
    swift_setDeallocating();
    sub_6620C(&qword_3BD8A0);
    swift_arrayDestroy();
    sub_2C5278();
    v22 = sub_2C57A8();
  }

  v67(v18, v12);
  return v22;
}

uint64_t sub_197804(void *a1, uint64_t a2, int a3, void *a4, int a5)
{
  LODWORD(v59) = a5;
  v58 = a4;
  LODWORD(v66) = a3;
  v60 = a2;
  v65 = sub_2C5418();
  v62 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = (&v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_6620C(&qword_3C39B0);
  __chkstk_darwin(v7 - 8);
  v61 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v51 - v10;
  v12 = sub_2C5288();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v51 - v17;
  sub_72084(a1, a1[3]);
  sub_2C5278();
  v64 = sub_2C5798();
  v20 = v19;
  v21 = *(v13 + 8);
  v21(v18, v12);
  v67 = v21;
  if (v66)
  {
    if ((v59 & 1) == 0)
    {
      v66 = v20;
      v57 = a1[3];
      v59 = a1[4];
      v60 = sub_72084(a1, v57);
      v56 = "@@count@@ Audiobook";
      v54 = v18;
      sub_2C5278();
      v34 = v15;
      sub_2C5278();
      v35 = *(v13 + 56);
      v52 = v11;
      v53 = v12;
      v35(v11, 1, 1, v12);
      v36 = v61;
      v35(v61, 1, 1, v12);
      v37 = v62;
      v38 = v63;
      v39 = v65;
      (*(v62 + 104))(v63, enum case for LocalizerLookupStrategy.default(_:), v65);
      v40 = v54;
      v41 = v52;
      v60 = sub_2C5788();
      v59 = v42;
      (*(v37 + 8))(v38, v39);
      sub_175190(v36);
      v43 = v41;
      v44 = v53;
      sub_175190(v43);
      v45 = v67;
      v67(v34, v44);
      v45(v40, v44);
      v46 = a1[3];
      v65 = a1[4];
      v63 = sub_72084(a1, v46);
      sub_6620C(&unk_3C44C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2E15C0;
      *(inited + 32) = 0x736569726573;
      v48 = v64;
      *(inited + 40) = 0xE600000000000000;
      *(inited + 48) = v48;
      *(inited + 56) = v66;
      *(inited + 64) = 0xD000000000000011;
      v49 = v60;
      *(inited + 72) = 0x8000000000305F40;
      *(inited + 80) = v49;
      *(inited + 88) = v59;
      sub_677B4(inited);
      swift_setDeallocating();
      sub_6620C(&qword_3BD8A0);
      swift_arrayDestroy();
      sub_2C5278();
      v22 = sub_2C57A8();

      v45(v40, v44);
      return v22;
    }

    sub_72084(a1, a1[3]);
    sub_2C5278();
    v22 = sub_2C5798();
  }

  else
  {
    v66 = v20;
    v56 = a1[3];
    v57 = a1[4];
    v58 = sub_72084(a1, v56);
    v55 = "tipleGenres";
    sub_2C5278();
    sub_2C5278();
    v23 = *(v13 + 56);
    v23(v11, 1, 1, v12);
    v24 = v61;
    v23(v61, 1, 1, v12);
    v25 = v62;
    v26 = *(v62 + 104);
    v59 = v13 + 8;
    v27 = v63;
    v28 = v65;
    v26(v63, enum case for LocalizerLookupStrategy.default(_:), v65);
    v60 = sub_2C5788();
    v58 = v29;
    (*(v25 + 8))(v27, v28);
    sub_175190(v24);
    sub_175190(v11);
    v30 = v67;
    v67(v15, v12);
    v30(v18, v12);
    sub_72084(a1, a1[3]);
    sub_6620C(&unk_3C44C0);
    v31 = swift_initStackObject();
    *(v31 + 16) = xmmword_2E15C0;
    *(v31 + 32) = 0x736569726573;
    v32 = v64;
    *(v31 + 40) = 0xE600000000000000;
    *(v31 + 48) = v32;
    *(v31 + 56) = v66;
    strcpy((v31 + 64), "localizedCount");
    *(v31 + 79) = -18;
    v33 = v58;
    *(v31 + 80) = v60;
    *(v31 + 88) = v33;
    sub_677B4(v31);
    swift_setDeallocating();
    sub_6620C(&qword_3BD8A0);
    swift_arrayDestroy();
    sub_2C5278();
    v22 = sub_2C57A8();
  }

  v67(v18, v12);
  return v22;
}

void *sub_1981CC(void (*a1)(void), uint64_t a2, unint64_t a3)
{
  v6 = sub_6620C(&unk_3C44D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_2C0DB8();
  v30 = *(v9 - 8);
  __chkstk_darwin(v9);
  v36 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v29 = &v27 - v13;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); i; v12 = v25)
  {
    v15 = 0;
    v34 = a3 & 0xFFFFFFFFFFFFFF8;
    v35 = a3 & 0xC000000000000001;
    v31 = (v30 + 32);
    v32 = (v30 + 48);
    v37 = v12;
    v38 = _swiftEmptyArrayStorage;
    v27 = a1;
    v28 = a3;
    v33 = i;
    while (1)
    {
      if (v35)
      {
        v12 = sub_2C6208();
      }

      else
      {
        if (v15 >= *(v34 + 16))
        {
          goto LABEL_20;
        }

        v12 = *(a3 + 8 * v15 + 32);
      }

      v16 = v12;
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v39 = v12;
      a1(&v39);
      if (v3)
      {

        return v38;
      }

      v18 = v37;
      if ((*v32)(v8, 1, v37) == 1)
      {
        v12 = sub_69198(v8, &unk_3C44D0);
      }

      else
      {
        v19 = *v31;
        v20 = v29;
        (*v31)(v29, v8, v18);
        v19(v36, v20, v18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_5BE68(0, v38[2] + 1, 1, v38);
        }

        v22 = v38[2];
        v21 = v38[3];
        if (v22 >= v21 >> 1)
        {
          v38 = sub_5BE68(v21 > 1, v22 + 1, 1, v38);
        }

        v23 = v37;
        v24 = v38;
        v38[2] = v22 + 1;
        v12 = (v19)(v24 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v22, v36, v23);
        a1 = v27;
        a3 = v28;
      }

      ++v15;
      if (v17 == v33)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v25 = v12;
    i = sub_2C6398();
  }

  return _swiftEmptyArrayStorage;
}

void *sub_198534(void *result, uint64_t a2, uint64_t a3)
{
  v4 = _swiftEmptyArrayStorage;
  v13 = _swiftEmptyArrayStorage;
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v11 = a3 + 32;
    do
    {
      v9 = v8 + 40 * v7;
      for (i = v7; ; ++i)
      {
        if (i >= v5)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = v6(&v12, v9);
        if (v3)
        {

          return v4;
        }

        if (v12)
        {
          break;
        }

        v9 += 40;
        if (v7 == v5)
        {
          return v4;
        }
      }

      sub_2C5B08();
      if (*(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v13 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_2C5B48();
      }

      result = sub_2C5B78();
      v4 = v13;
      v8 = v11;
    }

    while (v7 != v5);
  }

  return v4;
}

void *sub_198678(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v15 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_2C6398())
  {
    v6 = 0;
    v11 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_2C6208();
      }

      else
      {
        if (v6 >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14 = v7;
      a1(&v13, &v14);
      if (v3)
      {

        return v11;
      }

      if (v13)
      {
        sub_2C5B08();
        if (*(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v15 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_2C5B48();
        }

        sub_2C5B78();
        v11 = v15;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t ContextActionItem.identifier.getter()
{
  v0 = sub_2BE5C8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v8 - v5;
  sub_2BE5B8();
  (*(v1 + 16))(v3, v6, v0);
  sub_1A3B90(&qword_3C4320, &type metadata accessor for UUID);
  sub_2C61A8();
  return (*(v1 + 8))(v6, v0);
}

uint64_t ContextActionItem.menuItemView.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(a1);
  a3[3] = &type metadata for ContextActionMenuItemView;
  a3[4] = sub_1A1968();
  v10 = swift_allocObject();
  *a3 = v10;
  *(v10 + 88) = a1;
  *(v10 + 96) = a2;
  v11 = sub_720C8((v10 + 64));
  v12 = *(v8 + 16);
  v12(v11, v4, a1);
  v12((&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0)), v4, a1);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  (*(v8 + 32))(v14 + v13, &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  result = swift_getKeyPath();
  *(v10 + 16) = result;
  *(v10 + 56) = 0;
  *(v10 + 104) = sub_1A1A24;
  *(v10 + 112) = v14;
  return result;
}

uint64_t sub_198B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, _OWORD *), uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v30[1] = a7;
  v30[0] = a4;
  v31 = a3;
  v12 = sub_2BFF28();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v15 - 8);
  v17 = v30 - v16;
  v18 = sub_2C5C58();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  a6(a5, v35);
  sub_6932C(a1, v33, &qword_3BC840);
  (*(v13 + 16))(v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v12);
  sub_2C5C18();
  v19 = v30[0];

  v20 = sub_2C5C08();
  v21 = (*(v13 + 80) + 264) & ~*(v13 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = &protocol witness table for MainActor;
  v23 = v36[0];
  *(v22 + 160) = v35[8];
  *(v22 + 176) = v23;
  *(v22 + 185) = *(v36 + 9);
  v24 = v35[5];
  *(v22 + 96) = v35[4];
  *(v22 + 112) = v24;
  v25 = v35[7];
  *(v22 + 128) = v35[6];
  *(v22 + 144) = v25;
  v26 = v35[1];
  *(v22 + 32) = v35[0];
  *(v22 + 48) = v26;
  v27 = v35[3];
  *(v22 + 64) = v35[2];
  *(v22 + 80) = v27;
  *(v22 + 208) = v31;
  *(v22 + 216) = v19;
  v28 = v33[1];
  *(v22 + 224) = v33[0];
  *(v22 + 240) = v28;
  *(v22 + 256) = v34;
  (*(v13 + 32))(v22 + v21, v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  sub_249B98(0, 0, v17, v32, v22);
}

uint64_t sub_198E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v39 = a7;
  v40 = a3;
  v35 = a5;
  v36 = a1;
  v37 = a2;
  v9 = sub_2BFF28();
  v33 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v34 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a6;
  v12 = *(a6 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  v15 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v16 - 8);
  v18 = &v32 - v17;
  v38 = &v32 - v17;
  v19 = sub_2C5C58();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v12 + 16))(v15, v35, a6);
  sub_6932C(v36, v41, &qword_3BC840);
  (*(v10 + 16))(&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v9);
  sub_2C5C18();
  v20 = a4;

  v21 = sub_2C5C08();
  v22 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v23 = (v13 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = (*(v10 + 80) + v24 + 40) & ~*(v10 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = v21;
  *(v26 + 3) = &protocol witness table for MainActor;
  v27 = v39;
  *(v26 + 4) = v32;
  *(v26 + 5) = v27;
  (*(v12 + 32))(&v26[v22], v15);
  v28 = &v26[v23];
  *v28 = v40;
  *(v28 + 1) = v20;
  v29 = &v26[v24];
  *(v29 + 4) = v42;
  v30 = v41[1];
  *v29 = v41[0];
  *(v29 + 1) = v30;
  (*(v10 + 32))(&v26[v25], v34, v33);
  sub_249B98(0, 0, v38, &unk_2F11C0, v26);
}

uint64_t sub_199198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = sub_2C00F8();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  sub_2C5C18();
  v4[11] = sub_2C5C08();
  v7 = sub_2C5BB8();
  v4[12] = v7;
  v4[13] = v6;

  return _swift_task_switch(sub_19928C, v7, v6);
}

uint64_t sub_19928C()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  (*(v2 + 104))(v1, enum case for FigaroClickEvent.ActionContext.actionSheet(_:), v3);
  v5 = v4[14];
  v6 = v4[15];
  sub_72084(v4 + 11, v5);
  v0[5] = &type metadata for LikeActionItem;
  v0[6] = &protocol witness table for LikeActionItem;
  v7 = swift_allocObject();
  v0[2] = v7;
  sub_1A27F8(v4, v7 + 16);
  v8 = (*(v6 + 32))(v0 + 2, v5, v6);
  sub_68CD0((v0 + 2));
  sub_199EF8(v1, v8);
  (*(v2 + 8))(v1, v3);
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_19940C;

  return LikeActionItem.handle()();
}

uint64_t sub_19940C()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_1A421C, v3, v2);
}

uint64_t sub_19952C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = sub_2C00F8();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  sub_2C5C18();
  v4[11] = sub_2C5C08();
  v7 = sub_2C5BB8();
  v4[12] = v7;
  v4[13] = v6;

  return _swift_task_switch(sub_199620, v7, v6);
}

uint64_t sub_199620()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  (*(v2 + 104))(v1, enum case for FigaroClickEvent.ActionContext.actionSheet(_:), v3);
  v5 = v4[14];
  v6 = v4[15];
  sub_72084(v4 + 11, v5);
  v0[5] = &type metadata for RateAndReviewActionItem;
  v0[6] = &protocol witness table for RateAndReviewActionItem;
  v7 = swift_allocObject();
  v0[2] = v7;
  sub_1A25E8(v4, v7 + 16);
  v8 = (*(v6 + 32))(v0 + 2, v5, v6);
  sub_68CD0((v0 + 2));
  sub_19A720(v1, v8);
  (*(v2 + 8))(v1, v3);
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_1997A0;

  return RateAndReviewActionItem.handle()();
}

uint64_t sub_1997A0()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_1998C0, v3, v2);
}

uint64_t sub_1998C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_199928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[32] = v14;
  v8[33] = v15;
  v8[30] = a7;
  v8[31] = a8;
  v8[28] = a5;
  v8[29] = a6;
  v8[27] = a4;
  v9 = sub_2C00F8();
  v8[34] = v9;
  v8[35] = *(v9 - 8);
  v8[36] = swift_task_alloc();
  sub_2C5C18();
  v8[37] = sub_2C5C08();
  v11 = sub_2C5BB8();
  v8[38] = v11;
  v8[39] = v10;

  return _swift_task_switch(sub_199A30, v11, v10);
}

uint64_t sub_199A30()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  v15 = v0[33];
  v4 = v0[32];
  v5 = v0[27];
  (*(v2 + 104))(v1, enum case for FigaroClickEvent.ActionContext.actionSheet(_:), v3);
  (*(v15 + 112))(v4);
  v6 = v0[5];
  v7 = v0[6];
  sub_72084(v0 + 2, v6);
  v0[10] = v4;
  v0[11] = v15;
  v8 = sub_720C8(v0 + 7);
  (*(*(v4 - 8) + 16))(v8, v5, v4);
  v9 = (*(v7 + 32))(v0 + 7, v6, v7);
  sub_68CD0((v0 + 7));
  sub_19AF48(v1, v9, v4, v15);
  (*(v2 + 8))(v1, v3);
  sub_68CD0((v0 + 2));
  v14 = (*(v15 + 80) + **(v15 + 80));
  v10 = swift_task_alloc();
  v0[40] = v10;
  *v10 = v0;
  v10[1] = sub_199C74;
  v12 = v0[32];
  v11 = v0[33];

  return v14(v12, v11);
}

uint64_t sub_199C74()
{
  v1 = *v0;

  v2 = *(v1 + 312);
  v3 = *(v1 + 304);

  return _swift_task_switch(sub_199D94, v3, v2);
}

uint64_t sub_199D94()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);

  (*(v1 + 72))(v3, v4, v2, v1);
  if (*(v0 + 160))
  {
    v5 = *(v0 + 240);
    sub_68D1C((v0 + 136), v0 + 96);
    sub_6932C(v5, v0 + 176, &qword_3BC840);
    if (*(v0 + 200))
    {
      sub_72084((v0 + 176), *(v0 + 200));
      sub_2BFCD8();
      sub_68CD0(v0 + 96);
      sub_68CD0(v0 + 176);
      goto LABEL_7;
    }

    sub_68CD0(v0 + 96);
    v6 = &qword_3BC840;
    v7 = v0 + 176;
  }

  else
  {
    v6 = &unk_3BDC90;
    v7 = v0 + 136;
  }

  sub_69198(v7, v6);
LABEL_7:

  v8 = *(v0 + 8);

  return v8();
}

void sub_199EF8(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v45 = a2;
  v38 = a1;
  v48 = sub_2C00D8();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v46 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2C0118();
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2C00C8();
  v39 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_2C00F8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2C0148();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v2[3];
  v15 = v2[4];
  sub_72084(v2, v16);
  if ((*(v15 + 40))(v16, v15))
  {
    v17 = v2[3];
    v18 = v3[4];
    sub_72084(v3, v3[3]);
    ContextActionDataProtocol.selectionMode.getter(v17, v18, v49);
    if (v50)
    {
      sub_C4620(v49);
      if (qword_3BB778 != -1)
      {
        swift_once();
      }

      v19 = sub_2C00B8();
      sub_57AD8(v19, qword_3C2F18);
      v20 = sub_2C0098();
      v21 = sub_2C5DD8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_0, v20, v21, "We can't and don't need to support reporting Figaro for multi-select because it's only available in library.", v22, 2u);
      }
    }

    else
    {
      sub_68D1C(v49, v51);
      (*(v10 + 16))(v12, v38, v9);
      sub_6620C(&unk_3C43A0);
      inited = swift_initStackObject();
      v37 = xmmword_2E3F30;
      *(inited + 16) = xmmword_2E3F30;
      *(inited + 32) = sub_2C2248();
      *(inited + 40) = v24;
      v25 = v52;
      v26 = v53;
      sub_72084(v51, v52);
      v27 = (*(v26 + 296))(v25, v26);
      *(inited + 72) = &type metadata for Bool;
      *(inited + 48) = v27 & 1;
      v38 = sub_67AC8(inited);
      swift_setDeallocating();
      sub_69198(inited + 32, &qword_3BC220);
      if (*(v3 + 168) == 19)
      {
        v28 = 0xE800000000000000;
        v29 = 0x657461676976616ELL;
      }

      else
      {
        LOBYTE(v49[0]) = *(v3 + 168);
        v29 = ContextActionType.rawValue.getter();
      }

      *v8 = v29;
      v8[1] = v28;
      (*(v39 + 104))(v8, enum case for FigaroActionType.custom(_:), v6);
      sub_6620C(&qword_3C43B0);
      sub_2C0138();
      *(swift_allocObject() + 16) = v37;
      v30 = v52;
      v31 = v53;
      sub_72084(v51, v52);
      (*(v31 + 8))(v30, v31);
      LOBYTE(v49[0]) = *(v3 + 168);
      sub_2B2914();
      (*(v41 + 104))(v40, enum case for FigaroClickEvent.Location.Type.button(_:), v42);
      sub_2C0128();
      v32 = v52;
      v33 = v53;
      sub_72084(v51, v52);
      (*(v33 + 8))(v32, v33);
      (*(v47 + 104))(v46, enum case for FigaroClickEvent.TargetType.button(_:), v48);
      sub_2C0108();
      sub_1A3B90(&qword_3C43B8, &type metadata accessor for FigaroClickEvent);
      v34 = v44;
      sub_2C01B8();
      (*(v43 + 8))(v14, v34);
      v35 = objc_opt_self();
      type metadata accessor for FigaroKey(0);
      sub_1A3B90(&unk_3C43C0, type metadata accessor for FigaroKey);
      isa = sub_2C57C8().super.isa;

      [v35 recordNativeEvent:isa];

      sub_68CD0(v51);
    }
  }
}

void sub_19A720(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v45 = a2;
  v38 = a1;
  v48 = sub_2C00D8();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v46 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2C0118();
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2C00C8();
  v39 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_2C00F8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2C0148();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v2[8];
  v15 = v2[9];
  sub_72084(v2 + 5, v16);
  if ((*(v15 + 40))(v16, v15))
  {
    v17 = v2[8];
    v18 = v3[9];
    sub_72084(v3 + 5, v3[8]);
    ContextActionDataProtocol.selectionMode.getter(v17, v18, v49);
    if (v50)
    {
      sub_C4620(v49);
      if (qword_3BB778 != -1)
      {
        swift_once();
      }

      v19 = sub_2C00B8();
      sub_57AD8(v19, qword_3C2F18);
      v20 = sub_2C0098();
      v21 = sub_2C5DD8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_0, v20, v21, "We can't and don't need to support reporting Figaro for multi-select because it's only available in library.", v22, 2u);
      }
    }

    else
    {
      sub_68D1C(v49, v51);
      (*(v10 + 16))(v12, v38, v9);
      sub_6620C(&unk_3C43A0);
      inited = swift_initStackObject();
      v37 = xmmword_2E3F30;
      *(inited + 16) = xmmword_2E3F30;
      *(inited + 32) = sub_2C2248();
      *(inited + 40) = v24;
      v25 = v52;
      v26 = v53;
      sub_72084(v51, v52);
      v27 = (*(v26 + 296))(v25, v26);
      *(inited + 72) = &type metadata for Bool;
      *(inited + 48) = v27 & 1;
      v38 = sub_67AC8(inited);
      swift_setDeallocating();
      sub_69198(inited + 32, &qword_3BC220);
      if (*(v3 + 168) == 19)
      {
        v28 = 0xE800000000000000;
        v29 = 0x657461676976616ELL;
      }

      else
      {
        LOBYTE(v49[0]) = *(v3 + 168);
        v29 = ContextActionType.rawValue.getter();
      }

      *v8 = v29;
      v8[1] = v28;
      (*(v39 + 104))(v8, enum case for FigaroActionType.custom(_:), v6);
      sub_6620C(&qword_3C43B0);
      sub_2C0138();
      *(swift_allocObject() + 16) = v37;
      v30 = v52;
      v31 = v53;
      sub_72084(v51, v52);
      (*(v31 + 8))(v30, v31);
      LOBYTE(v49[0]) = *(v3 + 168);
      sub_2B2914();
      (*(v41 + 104))(v40, enum case for FigaroClickEvent.Location.Type.button(_:), v42);
      sub_2C0128();
      v32 = v52;
      v33 = v53;
      sub_72084(v51, v52);
      (*(v33 + 8))(v32, v33);
      (*(v47 + 104))(v46, enum case for FigaroClickEvent.TargetType.button(_:), v48);
      sub_2C0108();
      sub_1A3B90(&qword_3C43B8, &type metadata accessor for FigaroClickEvent);
      v34 = v44;
      sub_2C01B8();
      (*(v43 + 8))(v14, v34);
      v35 = objc_opt_self();
      type metadata accessor for FigaroKey(0);
      sub_1A3B90(&unk_3C43C0, type metadata accessor for FigaroKey);
      isa = sub_2C57C8().super.isa;

      [v35 recordNativeEvent:isa];

      sub_68CD0(v51);
    }
  }
}

void sub_19AF48(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a2;
  v41 = a1;
  v54 = sub_2C00D8();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_2C0118();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v45 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_2C00C8();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v49 = (&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_2C00F8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v55 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_2C0148();
  v48 = *(v50 - 8);
  v12 = __chkstk_darwin(v50);
  v44 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a4 + 96);
  v14(&v56, a3, a4, v12);
  v16 = v57;
  v15 = v58;
  sub_72084(&v56, v57);
  v17 = (*(v15 + 40))(v16, v15);
  sub_68CD0(&v56);
  if (v17)
  {
    (v14)(&v60, a3, a4);
    v18 = v61;
    v19 = v62;
    sub_72084(&v60, v61);
    ContextActionDataProtocol.selectionMode.getter(v18, v19, &v56);
    if (v59)
    {
      sub_C4620(&v56);
      sub_68CD0(&v60);
      if (qword_3BB778 != -1)
      {
        swift_once();
      }

      v20 = sub_2C00B8();
      sub_57AD8(v20, qword_3C2F18);
      v21 = sub_2C0098();
      v22 = sub_2C5DD8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_0, v21, v22, "We can't and don't need to support reporting Figaro for multi-select because it's only available in library.", v23, 2u);
      }
    }

    else
    {
      sub_68D1C(&v56, &v63);
      sub_68CD0(&v60);
      (*(v10 + 16))(v55, v41, v9);
      sub_6620C(&unk_3C43A0);
      inited = swift_initStackObject();
      v40 = xmmword_2E3F30;
      *(inited + 16) = xmmword_2E3F30;
      *(inited + 32) = sub_2C2248();
      *(inited + 40) = v25;
      v27 = v64;
      v26 = v65;
      sub_72084(&v63, v64);
      v28 = (*(v26 + 296))(v27, v26);
      *(inited + 72) = &type metadata for Bool;
      *(inited + 48) = v28 & 1;
      v41 = sub_67AC8(inited);
      swift_setDeallocating();
      sub_69198(inited + 32, &qword_3BC220);
      (*(a4 + 16))(&v56, a3, a4);
      if (v56 == 19)
      {
        v29 = 0xE800000000000000;
        v30 = 0x657461676976616ELL;
      }

      else
      {
        LOBYTE(v60) = v56;
        v30 = ContextActionType.rawValue.getter();
      }

      v31 = v49;
      *v49 = v30;
      v31[1] = v29;
      (*(v42 + 104))(v31, enum case for FigaroActionType.custom(_:), v43);
      sub_6620C(&qword_3C43B0);
      sub_2C0138();
      *(swift_allocObject() + 16) = v40;
      v32 = v64;
      v33 = v65;
      sub_72084(&v63, v64);
      (*(v33 + 8))(v32, v33);
      (*(a4 + 24))(a3, a4);
      (*(v46 + 104))(v45, enum case for FigaroClickEvent.Location.Type.button(_:), v47);
      sub_2C0128();
      v34 = v64;
      v35 = v65;
      sub_72084(&v63, v64);
      (*(v35 + 8))(v34, v35);
      (*(v53 + 104))(v52, enum case for FigaroClickEvent.TargetType.button(_:), v54);
      v36 = v44;
      sub_2C0108();
      sub_1A3B90(&qword_3C43B8, &type metadata accessor for FigaroClickEvent);
      v37 = v50;
      sub_2C01B8();
      (*(v48 + 8))(v36, v37);
      v38 = objc_opt_self();
      type metadata accessor for FigaroKey(0);
      sub_1A3B90(&unk_3C43C0, type metadata accessor for FigaroKey);
      isa = sub_2C57C8().super.isa;

      [v38 recordNativeEvent:isa];

      sub_68CD0(&v63);
    }
  }
}

id ContextActionItem.image.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v4(v18);
  v5 = sub_2B17F0();
  v7 = v6;
  (v4)(v18, a1, a2);
  switch(LOBYTE(v18[0]))
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:
    case 0x1E:
    case 0x1F:
      goto LABEL_2;
    default:
      v18[0] = v5;
      v18[1] = v7;

      v19._countAndFlagsBits = 0x6C6C69662ELL;
      v19._object = 0xE500000000000000;
      sub_2C5978(v19);
      v14 = sub_2C5888();
      v15 = objc_opt_self();
      v10 = [v15 systemImageNamed:v14];

      if (v10)
      {

        goto LABEL_3;
      }

      v16 = BSUIBundle();
      v17 = sub_2C5888();

      v10 = [v15 imageNamed:v17 inBundle:v16 withConfiguration:0];

      if (v10)
      {
        goto LABEL_3;
      }

LABEL_2:
      v8 = sub_2C5888();
      v9 = objc_opt_self();
      v10 = [v9 systemImageNamed:v8];

      if (v10)
      {
LABEL_3:

        return v10;
      }

      v11 = BSUIBundle();
      v12 = sub_2C5888();

      v10 = [v9 imageNamed:v12 inBundle:v11 withConfiguration:0];

      return v10;
  }
}

uint64_t ContextActionItem.uiAction.getter(uint64_t a1, uint64_t a2)
{
  v5 = sub_2C5118();
  v32 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v10);
  v12 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (*(a2 + 48))(a1, a2, v11);
  result = 0;
  if (v13)
  {
    v30 = sub_66278(0, &qword_3BDC70);
    v15 = (*(a2 + 24))(a1, a2);
    v28 = v16;
    v29 = v15;
    v17 = (*(a2 + 32))(a1, a2);
    v26 = v18;
    v27 = v17;
    v19 = ContextActionItem.image.getter(a1, a2);
    v31 = v5;
    v20 = *(a2 + 16);
    v24[1] = v19;
    v25 = v20;
    v20(v34, a1, a2);
    ContextActionType.rawValue.getter();
    v24[0] = sub_2C5888();

    (*(a2 + 40))(a1, a2);
    (*(v8 + 16))(v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
    v21 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = a1;
    *(v22 + 24) = a2;
    (*(v8 + 32))(v22 + v21, v12, a1);
    v23 = sub_2C6018();
    v25(v34, a1, a2);
    ContextActionType.rawValue.getter();
    memset(v34, 0, sizeof(v34));
    memset(v33, 0, sizeof(v33));
    sub_2C50E8();

    sub_69198(v33, qword_3C0250);
    sub_69198(v34, qword_3C0250);
    sub_2C6008();
    (*(v32 + 8))(v7, v31);
    return v23;
  }

  return result;
}

uint64_t sub_19BE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = *(a3 - 8);
  v7 = v32;
  v35 = *(v32 + 64);
  __chkstk_darwin(a1);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v9 - 8);
  v33 = &v30 - v10;
  v31 = sub_2C00F8();
  v11 = *(v31 - 8);
  v12 = __chkstk_darwin(v31);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v14, enum case for FigaroClickEvent.ActionContext.actionSheet(_:), v12);
  v15 = a2;
  (*(a4 + 112))(v37, a3, a4);
  v17 = v38;
  v16 = v39;
  sub_72084(v37, v38);
  v36[3] = a3;
  v36[4] = a4;
  v18 = sub_720C8(v36);
  v30 = *(v7 + 16);
  v19 = v15;
  v30(v18, v15, a3);
  v20 = (*(v16 + 32))(v36, v17, v16);
  sub_68CD0(v36);
  v21 = a4;
  sub_19AF48(v14, v20, a3, a4);
  (*(v11 + 8))(v14, v31);
  sub_68CD0(v37);
  v22 = sub_2C5C58();
  v23 = v33;
  (*(*(v22 - 8) + 56))(v33, 1, 1, v22);
  v24 = v34;
  v30(v34, v19, a3);
  sub_2C5C18();
  v25 = sub_2C5C08();
  v26 = v32;
  v27 = (*(v32 + 80) + 48) & ~*(v32 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = v25;
  *(v28 + 3) = &protocol witness table for MainActor;
  *(v28 + 4) = a3;
  *(v28 + 5) = v21;
  (*(v26 + 32))(&v28[v27], v24, a3);
  sub_249B98(0, 0, v23, &unk_2F11A8, v28);
}

uint64_t sub_19C200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_2C5C18();
  v6[3] = sub_2C5C08();
  v11 = (*(a6 + 80) + **(a6 + 80));
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_19C340;

  return v11(a5, a6);
}

uint64_t sub_19C340()
{

  v1 = sub_2C5BB8();

  return _swift_task_switch(sub_87ED4, v1, v0);
}

UIMenu ContextActionItem.subMenu.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (((*(a2 + 48))() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a2 + 56);
  v18 = v6(a1, a2);
  sub_6620C(&qword_3C4330);
  sub_72B74(&qword_3C4338, &qword_3C4330);
  v7 = sub_2C5D28();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v17[7] = sub_66278(0, &qword_3BDC60);
  v8 = (*(a2 + 24))(a1, a2);
  v10 = v9;
  v11 = ContextActionItem.image.getter(a1, a2);
  (*(a2 + 16))(&v18, a1, a2);
  ContextActionType.rawValue.getter();
  v12 = sub_2C5888();

  v13 = v6(a1, a2);
  __chkstk_darwin(v13);
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = v3;
  v14 = sub_198534(sub_1A1B60, v17, v13);

  v20._countAndFlagsBits = v8;
  v20._object = v10;
  v21.value._countAndFlagsBits = 0;
  v21.value._object = 0;
  v19.value.super.isa = v11;
  v19.is_nil = v12;
  v15.value = 0;
  return sub_2C5F58(v20, v21, v19, v15, 0xFFFFFFFFFFFFFFFFLL, v14, v17[5]);
}

uint64_t sub_19C6B4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = a1[3];
  v11 = a1[4];
  sub_72084(a1, v10);
  result = ContextActionItem.uiAction.getter(v10, v11);
  if (result)
  {
    v13 = result;
    v32 = a2;
    v14 = a1[3];
    v15 = a1[4];
    sub_72084(a1, v14);
    (*(v15 + 96))(v26, v14, v15);
    v16 = v27;
    v17 = v28;
    sub_72084(v26, v27);
    v18 = (*(v17 + 8))(v16, v17);
    if (*(v18 + 16))
    {
      sub_691F8(v18 + 32, v29);

      v19 = v30;
      v20 = v31;
      sub_72084(v29, v30);
      (*(v20 + 8))(v19, v20);
      sub_68CD0(v29);
      sub_68CD0(v26);
      v21 = [v13 title];
      sub_2C58C8();

      v22 = [v13 subtitle];
      if (v22)
      {
        v23 = v22;
        sub_2C58C8();
      }

      [v13 image];
      sub_2C5888();

      v24 = [v13 discoverabilityTitle];
      if (v24)
      {
        v25 = v24;
        sub_2C58C8();
      }

      sub_66278(0, &qword_3BDC70);
      (*(a4 + 40))(a3, a4);
      *(swift_allocObject() + 16) = v13;
      result = sub_2C6018();
    }

    else
    {

      sub_68CD0(v26);
      result = 0;
    }
  }

  *a5 = result;
  return result;
}

uint64_t ContextActionItem.swipeActionButton(for:sectionData:pageData:contentData:pageMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v57 = a6;
  v63 = a8;
  v64 = a1;
  v59 = a4;
  v60 = a5;
  v58 = a3;
  v65 = a2;
  v66 = a9;
  v10 = sub_6620C(&qword_3BF3D8);
  v61 = *(v10 - 8);
  v62 = *(v61 + 64);
  __chkstk_darwin(v10 - 8);
  v12 = &v49 - v11;
  v53 = &v49 - v11;
  v13 = sub_6620C(&unk_3C4340);
  v55 = *(v13 - 8);
  v14 = *(v55 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v49 - v15;
  v52 = &v49 - v15;
  v17 = sub_6620C(&qword_3BDE70);
  v54 = *(v17 - 8);
  v18 = *(v54 + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v49 - v19;
  v51 = &v49 - v19;
  v21 = sub_6620C(&qword_3C4350);
  v50 = *(v21 - 8);
  v22 = *(v50 + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v49 - v23;
  v49 = a7;
  v25 = *(a7 - 8);
  v26 = *(v25 + 64);
  v28 = __chkstk_darwin(v27);
  v29 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v29, v56, v28);
  sub_6932C(v57, v24, &qword_3C4350);
  sub_6932C(v58, v20, &qword_3BDE70);
  sub_6932C(v59, v16, &unk_3C4340);
  sub_6932C(v60, v12, &qword_3BF3D8);
  v30 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v31 = (v26 + v30 + *(v50 + 80)) & ~*(v50 + 80);
  v32 = (v22 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (*(v54 + 80) + v32 + 16) & ~*(v54 + 80);
  v34 = (v18 + *(v55 + 80) + v33) & ~*(v55 + 80);
  v35 = (v14 + *(v61 + 80) + v34) & ~*(v61 + 80);
  v36 = swift_allocObject();
  v37 = v63;
  *(v36 + 16) = v49;
  *(v36 + 24) = v37;
  (*(v25 + 32))(v36 + v30, v29);
  sub_69130(v24, v36 + v31, &qword_3C4350);
  v38 = (v36 + v32);
  v39 = v65;
  *v38 = v64;
  v38[1] = v39;
  sub_69130(v51, v36 + v33, &qword_3BDE70);
  sub_69130(v52, v36 + v34, &unk_3C4340);
  sub_69130(v53, v36 + v35, &qword_3BF3D8);
  KeyPath = swift_getKeyPath();
  v41 = v66;
  *v66 = KeyPath;
  *(v41 + 40) = 0;
  v42 = v41;
  v43 = swift_getKeyPath();
  v44 = sub_6620C(&qword_3C4358);
  *(v42 + v44[9]) = v43;
  sub_6620C(&unk_3C4360);
  swift_storeEnumTagMultiPayload();
  v45 = swift_getKeyPath();
  v46 = v42 + v44[10];
  *v46 = v45;
  *(v46 + 8) = 0;
  *(v46 + 16) = 0;
  v47 = (v42 + v44[11]);
  *v47 = sub_1A2014;
  v47[1] = v36;
}

uint64_t sub_19CED8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v78 = a8;
  v75 = a7;
  v66 = a6;
  v76 = a3;
  v77 = a4;
  v73 = a2;
  v71 = a1;
  v79 = a9;
  v68 = a12;
  v67 = a11;
  v65 = a10;
  v81 = sub_2BFF28();
  v72 = *(v81 - 8);
  __chkstk_darwin(v81);
  v74 = v15;
  v82 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_6620C(&qword_3BF3D8);
  v69 = *(v16 - 8);
  v70 = *(v69 + 64);
  __chkstk_darwin(v16 - 8);
  v86 = &v60 - v17;
  v18 = sub_6620C(&unk_3C4340);
  v64 = *(v18 - 8);
  v19 = *(v64 + 64);
  __chkstk_darwin(v18 - 8);
  v84 = &v60 - v20;
  v21 = sub_6620C(&qword_3BDE70);
  v63 = *(v21 - 8);
  v22 = *(v63 + 64);
  __chkstk_darwin(v21 - 8);
  v83 = &v60 - v23;
  v24 = sub_6620C(&qword_3C4350);
  v62 = *(v24 - 8);
  v25 = *(v62 + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v60 - v26;
  v28 = *(a13 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v30);
  v31 = sub_6620C(&unk_3C43D0);
  v32 = __chkstk_darwin(v31 - 8);
  v85 = &v60 - v33;
  v34 = *(a14 + 40);
  v87 = a14;
  if ((v34(a13, a14, v32) & 2) != 0)
  {
    v36 = v85;
    sub_2C2488();
    v37 = sub_2C24B8();
    (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
  }

  else
  {
    v35 = sub_2C24B8();
    (*(*(v35 - 8) + 56))(v85, 1, 1, v35);
  }

  v38 = *(v28 + 16);
  v61 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38(v61, a5, a13);
  v60 = v27;
  sub_6932C(v66, v27, &qword_3C4350);
  sub_6932C(v65, v83, &qword_3BDE70);
  sub_6932C(v67, v84, &unk_3C4340);
  sub_6932C(v68, v86, &qword_3BF3D8);
  sub_6932C(v71, v88, &qword_3BC840);
  v39 = v72;
  (*(v72 + 16))(v82, v73, v81);
  v40 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v41 = *(v62 + 80);
  v80 = a13;
  v42 = (v29 + v41 + v40) & ~v41;
  v43 = (v25 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = (*(v63 + 80) + v43 + 16) & ~*(v63 + 80);
  v45 = *(v64 + 80);
  v73 = a5;
  v46 = (v22 + v45 + v44) & ~v45;
  v47 = (v19 + *(v69 + 80) + v46) & ~*(v69 + 80);
  v48 = (v70 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v48 + 23) & 0xFFFFFFFFFFFFFFF8;
  v71 = (*(v39 + 80) + v70 + 40) & ~*(v39 + 80);
  v49 = swift_allocObject();
  v50 = v87;
  *(v49 + 16) = v80;
  *(v49 + 24) = v50;
  (*(v28 + 32))(v49 + v40, v61);
  sub_69130(v60, v49 + v42, &qword_3C4350);
  v51 = (v49 + v43);
  v52 = v78;
  *v51 = v75;
  v51[1] = v52;
  sub_69130(v83, v49 + v44, &qword_3BDE70);
  sub_69130(v84, v49 + v46, &unk_3C4340);
  sub_69130(v86, v49 + v47, &qword_3BF3D8);
  v53 = (v49 + v48);
  v54 = v77;
  *v53 = v76;
  v53[1] = v54;
  v55 = v49 + v70;
  *(v55 + 32) = v89;
  v56 = v88[1];
  *v55 = v88[0];
  *(v55 + 16) = v56;
  v57 = (*(v39 + 32))(v49 + v71, v82, v81);
  __chkstk_darwin(v57);
  v58 = v87;
  *(&v60 - 4) = v80;
  *(&v60 - 3) = v58;
  *(&v60 - 2) = v73;

  sub_6620C(&qword_3BE800);
  sub_72B74(&unk_3C4390, &qword_3BE800);
  return sub_2C43B8();
}
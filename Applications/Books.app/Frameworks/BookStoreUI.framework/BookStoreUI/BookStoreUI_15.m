Swift::Int sub_1FC870()
{
  sub_2C6738();
  sub_2C5958();

  return sub_2C6778();
}

uint64_t sub_1FC8F8()
{
  sub_2C5958();
}

Swift::Int sub_1FC96C()
{
  sub_2C6738();
  sub_2C5958();

  return sub_2C6778();
}

uint64_t sub_1FC9F0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_389BB8;
  v8._object = v3;
  v5 = sub_2C63E8(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1FCA50(uint64_t *a1@<X8>)
{
  v2 = 0x746E6F7A69726F68;
  if (*v1)
  {
    v2 = 0x6C61636974726576;
  }

  v3 = 0xEA00000000006C61;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1FCB14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7461746E6569726FLL && a2 == 0xEB000000006E6F69)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2C65B8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1FCBA0(uint64_t a1)
{
  v2 = sub_200030();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1FCBDC(uint64_t a1)
{
  v2 = sub_200030();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Shelf.Presentation.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_6620C(&qword_3C6648);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_72084(a1, a1[3]);
  sub_200030();
  sub_2C67A8();
  if (!v2)
  {
    sub_200084();
    sub_2C64A8();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return sub_68CD0(a1);
}

uint64_t Shelf.itemKind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Shelf() + 24);
  v4 = sub_2C0AF8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Shelf.shelfGridID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Shelf() + 40);

  return sub_68D34(v3, a1);
}

uint64_t Shelf.backgroundViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Shelf() + 52);
  v4 = sub_2C1B98();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Shelf.headerComponentModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Shelf() + 56);
  v4 = sub_2C1D08();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Shelf.headerComponentModel.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Shelf() + 56);
  v4 = sub_2C1D08();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Shelf.footerComponentModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Shelf() + 60);
  v4 = sub_2C1CB8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Shelf.footerComponentModel.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Shelf() + 60);
  v4 = sub_2C1CB8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Shelf.items.getter()
{
  type metadata accessor for Shelf();
}

uint64_t Shelf.items.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Shelf() + 68);

  *(v1 + v3) = a1;
  return result;
}

void *sub_1FD4F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_649F4(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 40)
    {
      sub_691F8(i, v10);
      sub_6620C(&qword_3BC278);
      sub_6620C(&unk_3BC2B0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_68D1C(v8, v11);
      sub_68D1C(v11, v10);
      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_649F4((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      sub_68D1C(v10, &v3[5 * v6 + 4]);
      if (!--v2)
      {
        return v3;
      }
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_69198(v8, &qword_3C68E0);
    return 0;
  }

  return v3;
}

uint64_t sub_1FD6BC(char a1)
{
  result = 0x756F72676B636162;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x7265746F6F66;
      break;
    case 3:
      result = 0x726564616568;
      break;
    case 4:
      result = 25705;
      break;
    case 5:
      result = 0x6973736572706D69;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x646E694B6D657469;
      break;
    case 8:
      result = 0x736D657469;
      break;
    case 9:
      result = 0x6E6F697461636F6CLL;
      break;
    case 10:
      result = 0x6974616E69676170;
      break;
    case 11:
      result = 0xD00000000000001FLL;
      break;
    case 12:
      result = 0x61746E6573657270;
      break;
    case 13:
      result = 0x446E6F6974636573;
      break;
    case 14:
      result = 0x697247666C656873;
      break;
    case 15:
      result = 0x69766944776F6873;
      break;
    case 16:
      result = 0x676E6963617073;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1FD900(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1FD6BC(*a1);
  v5 = v4;
  if (v3 == sub_1FD6BC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2C65B8();
  }

  return v8 & 1;
}

Swift::Int sub_1FD988()
{
  v1 = *v0;
  sub_2C6738();
  sub_1FD6BC(v1);
  sub_2C5958();

  return sub_2C6778();
}

uint64_t sub_1FD9EC()
{
  sub_1FD6BC(*v0);
  sub_2C5958();
}

Swift::Int sub_1FDA40()
{
  v1 = *v0;
  sub_2C6738();
  sub_1FD6BC(v1);
  sub_2C5958();

  return sub_2C6778();
}

uint64_t sub_1FDAA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_201588();
  *a1 = result;
  return result;
}

uint64_t sub_1FDAD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1FD6BC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1FDB18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_201588();
  *a1 = result;
  return result;
}

uint64_t sub_1FDB4C(uint64_t a1)
{
  v2 = sub_2000D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1FDB88(uint64_t a1)
{
  v2 = sub_2000D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Shelf.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v175 = a2;
  v3 = sub_6620C(&qword_3C6660);
  __chkstk_darwin(v3 - 8);
  v173 = &v163 - v4;
  v5 = sub_6620C(&qword_3BDE70);
  __chkstk_darwin(v5 - 8);
  v174 = &v163 - v6;
  v7 = sub_6620C(&qword_3C6668);
  __chkstk_darwin(v7 - 8);
  v170 = &v163 - v8;
  v9 = sub_6620C(&qword_3C6670);
  __chkstk_darwin(v9 - 8);
  v172 = &v163 - v10;
  v11 = sub_2C1B98();
  v208 = *(v11 - 8);
  v209 = v11;
  __chkstk_darwin(v11);
  v171 = &v163 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_6620C(&qword_3C6678);
  __chkstk_darwin(v13 - 8);
  v176 = &v163 - v14;
  v15 = sub_6620C(&qword_3C1A00);
  __chkstk_darwin(v15 - 8);
  v169 = &v163 - v16;
  v17 = sub_6620C(&qword_3C6680);
  __chkstk_darwin(v17 - 8);
  v181 = &v163 - v18;
  v19 = sub_6620C(&qword_3C6688);
  __chkstk_darwin(v19 - 8);
  v178 = &v163 - v20;
  v21 = sub_2C1CB8();
  v210 = *(v21 - 8);
  v211 = v21;
  __chkstk_darwin(v21);
  v177 = &v163 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_6620C(&qword_3C6690);
  __chkstk_darwin(v23 - 8);
  v187 = &v163 - v24;
  v25 = sub_6620C(&qword_3C6698);
  __chkstk_darwin(v25 - 8);
  v183 = &v163 - v26;
  v27 = sub_2C1D08();
  v212 = *(v27 - 8);
  v213 = v27;
  __chkstk_darwin(v27);
  v182 = &v163 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_6620C(&qword_3C66A0);
  __chkstk_darwin(v29 - 8);
  v189 = &v163 - v30;
  v31 = sub_6620C(&qword_3C1730);
  __chkstk_darwin(v31 - 8);
  v188 = &v163 - v32;
  v33 = sub_6620C(&qword_3C0828);
  __chkstk_darwin(v33 - 8);
  v191 = &v163 - v34;
  v35 = sub_6620C(&qword_3BDF58);
  __chkstk_darwin(v35 - 8);
  v190 = &v163 - v36;
  v37 = sub_6620C(&qword_3C66A8);
  __chkstk_darwin(v37 - 8);
  v194 = &v163 - v38;
  v39 = sub_6620C(&qword_3C1C70);
  __chkstk_darwin(v39 - 8);
  v192 = &v163 - v40;
  v41 = sub_6620C(&qword_3C2AC0);
  __chkstk_darwin(v41 - 8);
  v196 = &v163 - v42;
  v198 = sub_2C49F8();
  v197 = *(v198 - 8);
  __chkstk_darwin(v198);
  v193 = &v163 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_6620C(&qword_3C2818);
  __chkstk_darwin(v44 - 8);
  v195 = &v163 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v199 = &v163 - v47;
  v200 = sub_6620C(&qword_3C66B0);
  __chkstk_darwin(v200);
  v201 = &v163 - v48;
  v49 = sub_2C0AF8();
  v50 = *(v49 - 8);
  v203 = v49;
  v204 = v50;
  __chkstk_darwin(v49);
  v202 = &v163 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_6620C(&qword_3C66B8);
  v53 = *(v52 - 8);
  v205 = v52;
  v206 = v53;
  __chkstk_darwin(v52);
  v55 = &v163 - v54;
  v56 = type metadata accessor for Shelf();
  __chkstk_darwin(v56);
  v58 = (&v163 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = *(v59 + 32);
  v61 = sub_2C5018();
  v62 = *(v61 - 8);
  v63 = *(v62 + 56);
  v217 = v60;
  v186 = v61;
  v185 = v63;
  v184 = v62 + 56;
  (v63)(v58 + v60, 1, 1);
  v64 = v56[9];
  v65 = sub_2C22F8();
  v66 = *(v65 - 8);
  v67 = *(v66 + 56);
  v216 = v64;
  v180 = v67;
  v179 = v66 + 56;
  v67(v58 + v64, 1, 1, v65);
  v68 = v56[16];
  v69 = type metadata accessor for ContentUnavailableComponentModel();
  v70 = *(v69 - 8);
  v71 = *(v70 + 56);
  v72 = v70 + 56;
  v214 = v68;
  v71(v58 + v68, 1, 1, v69);
  v219 = v56;
  v73 = v56[18];
  v74 = sub_2C0E58();
  v75 = *(*(v74 - 8) + 56);
  v218 = v73;
  v220 = v58;
  v75(v58 + v73, 1, 1, v74);
  v76 = a1[3];
  v215 = a1;
  sub_72084(a1, v76);
  sub_2000D8();
  v207 = v55;
  v77 = v221;
  sub_2C67A8();
  if (v77)
  {
    v221 = v77;
    v81 = v219;
    v80 = v220;
    sub_68CD0(v215);
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
LABEL_4:
    v87 = 0;
    v88 = 0;
    goto LABEL_5;
  }

  v168 = v65;
  v165 = v72;
  v166 = v71;
  v167 = v69;
  LOBYTE(v222) = 4;
  v78 = v205;
  v79 = v207;
  v90 = sub_2C6468();
  v92 = v91;
  v80 = v220;
  *v220 = v90;
  v80[1] = v91;
  LOBYTE(v222) = 14;

  v93 = sub_2C6418();
  v81 = v219;
  v164 = 0;
  if (v94)
  {
    v90 = v93;
    v92 = v94;
  }

  v222 = v90;
  v223 = v92;
  sub_2C61A8();
  LOBYTE(v222) = 15;
  v95 = v164;
  v96 = sub_2C6428();
  v221 = v95;
  if (!v95)
  {
    *(v80 + v81[11]) = v96 & 1;
    v224 = 12;
    sub_20012C();
    v98 = v221;
    sub_2C64A8();
    v221 = v98;
    v99 = v206;
    if (v98)
    {
      goto LABEL_35;
    }

    *(v80 + 16) = v222;
    LOBYTE(v222) = 7;
    sub_2006C0(&qword_3C66D0, &type metadata accessor for ShelfItemKind);
    v100 = v202;
    v101 = v221;
    sub_2C64A8();
    v221 = v101;
    if (v101)
    {
      goto LABEL_35;
    }

    LOBYTE(v222) = 8;
    sub_200180();
    v102 = v201;
    v103 = v221;
    sub_2C64A8();
    v221 = v103;
    if (v103)
    {
      (*(v204 + 8))(v100, v203);
LABEL_35:
      (*(v99 + 8))(v79, v78);
      goto LABEL_36;
    }

    v104 = sub_2C1EF8();
    v105 = sub_2C1F08();
    (*(*(v105 - 8) + 8))(v102, v105);
    v106._rawValue = v104;
    v107 = v221;
    sub_2C0AB8(v106);
    v221 = v107;
    v108 = v204;
    if (v107)
    {

      (*(v108 + 8))(v202, v203);
      goto LABEL_35;
    }

    (*(v204 + 16))(v80 + v81[6], v202, v203);
    *(v80 + v81[17]) = v104;
    LOBYTE(v222) = 11;
    sub_2006C0(&qword_3C66E8, &type metadata accessor for JSONObject);
    v109 = v199;
    v110 = v198;
    v111 = v221;
    sub_2C6458();
    v221 = v111;
    if (v111)
    {
      v112 = v99;
      v97 = *(v108 + 8);
      v97(v202, v203);
      (*(v112 + 8))(v207, v78);
      sub_68CD0(v215);

      v82 = 0;
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v86 = 0;
LABEL_28:
      v97(v80 + v81[6], v203);
      v87 = 1;
      v88 = 1;
      goto LABEL_5;
    }

    v113 = v195;
    sub_6932C(v109, v195, &qword_3C2818);
    v114 = v197;
    if ((*(v197 + 48))(v113, 1, v110) == 1)
    {
      sub_69198(v113, &qword_3C2818);
    }

    else
    {
      v115 = v113;
      v116 = *(v114 + 32);
      v117 = v193;
      v116(v193, v115, v110);
      v118 = v110;
      if ((sub_2C49D8() & 1) == 0)
      {
        v120 = (v80 + v81[19]);
        v120[3] = type metadata accessor for JSShelfPaginationIntentProvider();
        v120[4] = &protocol witness table for JSShelfPaginationIntentProvider;
        v121 = sub_720C8(v120);
        v116(v121, v117, v118);
LABEL_45:
        LOBYTE(v222) = 10;
        sub_2006C0(&qword_3C66F0, &type metadata accessor for PaginationInfo);
        v122 = v196;
        v123 = v207;
        v124 = v221;
        sub_2C6458();
        v221 = v124;
        if (v124)
        {
          sub_69198(v199, &qword_3C2818);
          v125 = v204;
          (*(v204 + 8))(v202, v203);
          (*(v206 + 8))(v123, v78);
          v86 = 0;
          v85 = 0;
          v84 = 0;
          v83 = 0;
          goto LABEL_64;
        }

        sub_A9708(v122, v80 + v218, &qword_3C2AC0);
        v126 = sub_2C14E8();
        LOBYTE(v222) = 16;
        sub_2006C0(&qword_3C66F8, &type metadata accessor for CodeShelfGridSpacing);
        v127 = v78;
        v128 = v221;
        sub_2C6458();
        v221 = v128;
        if (v128)
        {
          sub_69198(v199, &qword_3C2818);
          v125 = v204;
          (*(v204 + 8))(v202, v203);
          (*(v206 + 8))(v207, v78);
          v86 = 0;
          v85 = 0;
          v84 = 0;
          v83 = 0;
LABEL_63:
          v81 = v219;
          v80 = v220;
LABEL_64:
          v144 = v164;
          sub_68CD0(v215);

          if (v144)
          {
            v82 = 0;
            goto LABEL_4;
          }

          v97 = *(v125 + 8);
          v82 = 1;
          goto LABEL_28;
        }

        v129 = *(v126 - 8);
        if ((*(v129 + 48))(v194, 1, v126) == 1)
        {
          sub_69198(v194, &qword_3C66A8);
          v130 = 1;
        }

        else
        {
          v131 = v194;
          sub_2C14D8();
          (*(v129 + 8))(v131, v126);
          v130 = 0;
        }

        v132 = sub_2BFE68();
        v133 = v192;
        (*(*(v132 - 8) + 56))(v192, v130, 1, v132);
        sub_69130(v133, v220 + v219[12], &qword_3C1C70);
        LOBYTE(v222) = 5;
        v134 = v221;
        v135 = sub_2C6428();
        v221 = v134;
        if (v134)
        {
          goto LABEL_62;
        }

        *(v220 + v219[7]) = (v135 == 2) | v135 & 1;
        v136 = sub_6620C(&qword_3BF898);
        LOBYTE(v222) = 6;
        sub_200234(&qword_3C08B8, &qword_3BF898, &unk_2EA240, sub_F2FC4);
        v137 = v221;
        sub_2C6458();
        v221 = v137;
        if (v137)
        {
          goto LABEL_62;
        }

        if ((*(*(v136 - 8) + 48))(v191, 1, v136) == 1)
        {
          sub_69198(v191, &qword_3C0828);
          v185(v190, 1, 1, v186);
        }

        else
        {
          v138 = v191;
          sub_6932C(v191, v190, &qword_3BDF58);
          sub_69198(v138, &qword_3BF898);
        }

        sub_A9708(v190, v220 + v217, &qword_3BDF58);
        v139 = sub_6620C(&qword_3C5B98);
        LOBYTE(v222) = 9;
        sub_200234(&qword_3C5CA0, &qword_3C5B98, &unk_2F38D8, sub_1E5ACC);
        v140 = v221;
        sub_2C6458();
        v221 = v140;
        if (v140)
        {
          goto LABEL_62;
        }

        if ((*(*(v139 - 8) + 48))(v189, 1, v139) == 1)
        {
          sub_69198(v189, &qword_3C66A0);
          v180(v188, 1, 1, v168);
        }

        else
        {
          v141 = v189;
          sub_6932C(v189, v188, &qword_3C1730);
          sub_69198(v141, &qword_3C5B98);
        }

        sub_A9708(v188, v220 + v216, &qword_3C1730);
        v142 = sub_6620C(&qword_3C6700);
        LOBYTE(v222) = 3;
        sub_200234(&qword_3C6708, &qword_3C6700, &unk_2F4B70, sub_2002B0);
        v143 = v221;
        sub_2C6458();
        v221 = v143;
        if (v143)
        {
LABEL_62:
          sub_69198(v199, &qword_3C2818);
          v125 = v204;
          (*(v204 + 8))(v202, v203);
          (*(v206 + 8))(v207, v127);
          v85 = 0;
          v84 = 0;
          v83 = 0;
          v86 = 1;
          goto LABEL_63;
        }

        if ((*(*(v142 - 8) + 48))(v187, 1, v142) == 1)
        {
          sub_69198(v187, &qword_3C6690);
          (*(v212 + 56))(v183, 1, 1, v213);
        }

        else
        {
          v145 = v187;
          v146 = v183;
          sub_6932C(v187, v183, &qword_3C6698);
          sub_69198(v145, &qword_3C6700);
          if ((*(v212 + 48))(v146, 1, v213) != 1)
          {
            (*(v212 + 32))(v182, v183, v213);
            goto LABEL_71;
          }
        }

        sub_2C1CF8();
        if ((*(v212 + 48))(v183, 1, v213) != 1)
        {
          sub_69198(v183, &qword_3C6698);
        }

LABEL_71:
        (*(v212 + 32))(v220 + v219[14], v182, v213);
        v147 = sub_6620C(&qword_3C6720);
        LOBYTE(v222) = 2;
        sub_200234(&qword_3C6728, &qword_3C6720, &unk_2F4B78, sub_200364);
        v148 = v221;
        sub_2C6458();
        v221 = v148;
        if (v148)
        {
          sub_69198(v199, &qword_3C2818);
          v125 = v204;
          (*(v204 + 8))(v202, v203);
          (*(v206 + 8))(v207, v127);
          v85 = 0;
          v83 = 0;
          v86 = 1;
          v84 = 1;
          goto LABEL_63;
        }

        if ((*(*(v147 - 8) + 48))(v181, 1, v147) == 1)
        {
          sub_69198(v181, &qword_3C6680);
          (*(v210 + 56))(v178, 1, 1, v211);
        }

        else
        {
          v149 = v181;
          v150 = v178;
          sub_6932C(v181, v178, &qword_3C6688);
          sub_69198(v149, &qword_3C6720);
          if ((*(v210 + 48))(v150, 1, v211) != 1)
          {
            (*(v210 + 32))(v177, v178, v211);
            goto LABEL_79;
          }
        }

        sub_2C1CA8();
        if ((*(v210 + 48))(v178, 1, v211) != 1)
        {
          sub_69198(v178, &qword_3C6688);
        }

LABEL_79:
        (*(v210 + 32))(v220 + v219[15], v177, v211);
        v151 = sub_6620C(&qword_3C6740);
        LOBYTE(v222) = 1;
        sub_200234(&qword_3C6748, &qword_3C6740, &unk_2F4B80, sub_200418);
        v152 = v221;
        sub_2C6458();
        v221 = v152;
        if (v152)
        {
          goto LABEL_84;
        }

        if ((*(*(v151 - 8) + 48))(v176, 1, v151) == 1)
        {
          sub_69198(v176, &qword_3C6678);
          v166(v169, 1, 1, v167);
        }

        else
        {
          v153 = v176;
          sub_6932C(v176, v169, &qword_3C1A00);
          sub_69198(v153, &qword_3C6740);
        }

        sub_A9708(v169, v220 + v214, &qword_3C1A00);
        v154 = sub_6620C(&qword_3C6760);
        LOBYTE(v222) = 0;
        sub_200234(&qword_3C6768, &qword_3C6760, &unk_2F4B88, sub_2004CC);
        v155 = v221;
        sub_2C6458();
        v221 = v155;
        if (v155)
        {
LABEL_84:
          sub_69198(v199, &qword_3C2818);
          v125 = v204;
          (*(v204 + 8))(v202, v203);
          (*(v206 + 8))(v207, v127);
          v85 = 0;
          v86 = 1;
LABEL_85:
          v84 = 1;
          v83 = 1;
          goto LABEL_63;
        }

        if ((*(*(v154 - 8) + 48))(v170, 1, v154) == 1)
        {
          sub_69198(v170, &qword_3C6668);
          (*(v208 + 56))(v172, 1, 1, v209);
        }

        else
        {
          v156 = v170;
          v157 = v172;
          sub_6932C(v170, v172, &qword_3C6670);
          sub_69198(v156, &qword_3C6760);
          if ((*(v208 + 48))(v157, 1, v209) != 1)
          {
            (*(v208 + 32))(v171, v172, v209);
LABEL_92:
            (*(v208 + 32))(v220 + v219[13], v171, v209);
            v158 = sub_6620C(&qword_3BDFF0);
            LOBYTE(v222) = 13;
            sub_200234(&qword_3C36C0, &qword_3BDFF0, &unk_2EF400, sub_16F428);
            v159 = v221;
            sub_2C6458();
            v221 = v159;
            if (!v159)
            {
              sub_69198(v199, &qword_3C2818);
              (*(v204 + 8))(v202, v203);
              (*(v206 + 8))(v207, v127);
              if ((*(*(v158 - 8) + 48))(v173, 1, v158) == 1)
              {
                sub_69198(v173, &qword_3C6660);
                v160 = sub_2BEA28();
                (*(*(v160 - 8) + 56))(v174, 1, 1, v160);
              }

              else
              {
                v161 = v173;
                sub_6932C(v173, v174, &qword_3BDE70);
                sub_69198(v161, &qword_3BDFF0);
              }

              v162 = v220;
              sub_69130(v174, v220 + v219[20], &qword_3BDE70);
              sub_91560(v162, v175);
              sub_68CD0(v215);
              return sub_9160C(v162);
            }

            sub_69198(v199, &qword_3C2818);
            v125 = v204;
            (*(v204 + 8))(v202, v203);
            (*(v206 + 8))(v207, v127);
            v86 = 1;
            v85 = 1;
            goto LABEL_85;
          }
        }

        sub_2C1B88();
        if ((*(v208 + 48))(v172, 1, v209) != 1)
        {
          sub_69198(v172, &qword_3C6670);
        }

        goto LABEL_92;
      }

      (*(v197 + 8))(v117, v110);
    }

    v119 = v80 + v81[19];
    *(v119 + 4) = 0;
    *v119 = 0u;
    *(v119 + 1) = 0u;
    goto LABEL_45;
  }

  (*(v206 + 8))(v79, v78);
LABEL_36:
  sub_68CD0(v215);

  v82 = 0;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v88 = 0;
  v87 = 1;
LABEL_5:
  sub_69198(v80 + v217, &qword_3BDF58);
  sub_69198(v80 + v216, &qword_3C1730);
  if (v87)
  {
    sub_68D90(v80 + v81[10]);
    if (!v86)
    {
LABEL_7:
      if (!v85)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if (!v86)
  {
    goto LABEL_7;
  }

  sub_69198(v80 + v81[12], &qword_3C1C70);
  if (!v85)
  {
LABEL_8:
    if (!v84)
    {
      goto LABEL_9;
    }

LABEL_19:
    (*(v212 + 8))(v80 + v81[14], v213);
    if (!v83)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_18:
  (*(v208 + 8))(v80 + v81[13], v209);
  if (v84)
  {
    goto LABEL_19;
  }

LABEL_9:
  if (v83)
  {
LABEL_10:
    (*(v210 + 8))(v80 + v81[15], v211);
  }

LABEL_11:
  sub_69198(v80 + v214, &qword_3C1A00);
  if (v88)
  {
  }

  result = sub_69198(v80 + v218, &qword_3C2AC0);
  if (v82)
  {
    return sub_69198(v80 + v81[19], &qword_3C2AC8);
  }

  return result;
}

unint64_t sub_200030()
{
  result = qword_3C6650;
  if (!qword_3C6650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6650);
  }

  return result;
}

unint64_t sub_200084()
{
  result = qword_3C6658;
  if (!qword_3C6658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6658);
  }

  return result;
}

unint64_t sub_2000D8()
{
  result = qword_3C66C0;
  if (!qword_3C66C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C66C0);
  }

  return result;
}

unint64_t sub_20012C()
{
  result = qword_3C66C8;
  if (!qword_3C66C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C66C8);
  }

  return result;
}

unint64_t sub_200180()
{
  result = qword_3C66D8;
  if (!qword_3C66D8)
  {
    sub_718D4(&qword_3C66B0);
    sub_2006C0(&qword_3C66E0, &type metadata accessor for _CodeAnyComponentModel_Many);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C66D8);
  }

  return result;
}

uint64_t sub_200234(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_2002B0()
{
  result = qword_3C6710;
  if (!qword_3C6710)
  {
    sub_718D4(&qword_3C6698);
    sub_2006C0(&qword_3C6718, &type metadata accessor for ShelfHeaderComponentModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6710);
  }

  return result;
}

unint64_t sub_200364()
{
  result = qword_3C6730;
  if (!qword_3C6730)
  {
    sub_718D4(&qword_3C6688);
    sub_2006C0(&qword_3C6738, &type metadata accessor for ShelfFooterComponentModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6730);
  }

  return result;
}

unint64_t sub_200418()
{
  result = qword_3C6750;
  if (!qword_3C6750)
  {
    sub_718D4(&qword_3C1A00);
    sub_2006C0(&qword_3C6758, type metadata accessor for ContentUnavailableComponentModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6750);
  }

  return result;
}

unint64_t sub_2004CC()
{
  result = qword_3C6770;
  if (!qword_3C6770)
  {
    sub_718D4(&qword_3C6670);
    sub_2006C0(&qword_3C6778, &type metadata accessor for ShelfBackgroundViewModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6770);
  }

  return result;
}

unint64_t sub_200584()
{
  result = qword_3C6780;
  if (!qword_3C6780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6780);
  }

  return result;
}

unint64_t sub_2005DC()
{
  result = qword_3C6788;
  if (!qword_3C6788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6788);
  }

  return result;
}

uint64_t sub_2006C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20071C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_2C0AF8();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_23:
    v20 = *(v10 + 48);

    return v20(a1 + v11, a2, v9);
  }

  v12 = sub_6620C(&qword_3BDF58);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_23;
  }

  v13 = sub_6620C(&qword_3C1730);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_23;
  }

  v14 = sub_6620C(&qword_3C1C70);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[12];
    goto LABEL_23;
  }

  v15 = sub_2C1B98();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[13];
    goto LABEL_23;
  }

  v16 = sub_2C1D08();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a3[14];
    goto LABEL_23;
  }

  v17 = sub_2C1CB8();
  if (*(*(v17 - 8) + 84) == a2)
  {
    v9 = v17;
    v10 = *(v17 - 8);
    v11 = a3[15];
    goto LABEL_23;
  }

  v18 = sub_6620C(&qword_3C1A00);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v9 = v18;
    v10 = *(v18 - 8);
    v11 = a3[16];
    goto LABEL_23;
  }

  v19 = sub_6620C(&qword_3C2AC0);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v9 = v19;
    v10 = *(v19 - 8);
    v11 = a3[18];
    goto LABEL_23;
  }

  v21 = sub_6620C(&qword_3BDE70);
  v22 = *(*(v21 - 8) + 48);
  v23 = a1 + a3[20];

  return v22(v23, a2, v21);
}

uint64_t sub_200ADC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_2C0AF8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_21:
    v20 = *(v10 + 56);

    return v20(v5 + v11, a2, a2, v9);
  }

  v12 = sub_6620C(&qword_3BDF58);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_21;
  }

  v13 = sub_6620C(&qword_3C1730);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_21;
  }

  v14 = sub_6620C(&qword_3C1C70);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[12];
    goto LABEL_21;
  }

  v15 = sub_2C1B98();
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[13];
    goto LABEL_21;
  }

  v16 = sub_2C1D08();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[14];
    goto LABEL_21;
  }

  v17 = sub_2C1CB8();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v9 = v17;
    v10 = *(v17 - 8);
    v11 = a4[15];
    goto LABEL_21;
  }

  v18 = sub_6620C(&qword_3C1A00);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v9 = v18;
    v10 = *(v18 - 8);
    v11 = a4[16];
    goto LABEL_21;
  }

  v19 = sub_6620C(&qword_3C2AC0);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v9 = v19;
    v10 = *(v19 - 8);
    v11 = a4[18];
    goto LABEL_21;
  }

  v21 = sub_6620C(&qword_3BDE70);
  v22 = *(*(v21 - 8) + 56);
  v23 = v5 + a4[20];

  return v22(v23, a2, a2, v21);
}

void sub_200E88()
{
  sub_2C0AF8();
  if (v0 <= 0x3F)
  {
    sub_201194(319, &qword_3BE2D8, &type metadata accessor for ImpressionMetrics);
    if (v1 <= 0x3F)
    {
      sub_201194(319, &qword_3C6808, &type metadata accessor for Metrics.Location);
      if (v2 <= 0x3F)
      {
        sub_201194(319, &qword_3C6810, &type metadata accessor for ShelfGridSpacing);
        if (v3 <= 0x3F)
        {
          sub_2C1B98();
          if (v4 <= 0x3F)
          {
            sub_2C1D08();
            if (v5 <= 0x3F)
            {
              sub_2C1CB8();
              if (v6 <= 0x3F)
              {
                sub_201194(319, &qword_3C6818, type metadata accessor for ContentUnavailableComponentModel);
                if (v7 <= 0x3F)
                {
                  sub_201130(319, &qword_3C6820, &qword_3BC278, &unk_2E2F50, &type metadata accessor for Array);
                  if (v8 <= 0x3F)
                  {
                    sub_201194(319, &qword_3C6828, &type metadata accessor for PaginationInfo);
                    if (v9 <= 0x3F)
                    {
                      sub_201130(319, &qword_3C6830, &unk_3C6838, &unk_2F4E88, &type metadata accessor for Optional);
                      if (v10 <= 0x3F)
                      {
                        sub_201194(319, &unk_3C1890, &type metadata accessor for SectionData);
                        if (v11 <= 0x3F)
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

void sub_201130(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_201194(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2C60B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for Shelf.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Shelf.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20137C()
{
  result = qword_3C68A8;
  if (!qword_3C68A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C68A8);
  }

  return result;
}

unint64_t sub_2013D4()
{
  result = qword_3C68B0;
  if (!qword_3C68B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C68B0);
  }

  return result;
}

unint64_t sub_20142C()
{
  result = qword_3C68B8;
  if (!qword_3C68B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C68B8);
  }

  return result;
}

unint64_t sub_201484()
{
  result = qword_3C68C0;
  if (!qword_3C68C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C68C0);
  }

  return result;
}

unint64_t sub_2014DC()
{
  result = qword_3C68C8;
  if (!qword_3C68C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C68C8);
  }

  return result;
}

unint64_t sub_201534()
{
  result = qword_3C68D0;
  if (!qword_3C68D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C68D0);
  }

  return result;
}

uint64_t sub_201588()
{
  v0 = sub_2C6628();

  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2015DC()
{
  result = qword_3C68D8;
  if (!qword_3C68D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C68D8);
  }

  return result;
}

uint64_t LinkData.init(actionOrigin:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v75 = sub_2C06E8();
  v76 = *(v75 - 8);
  __chkstk_darwin(v75);
  v79 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v78 = &v73 - v5;
  v6 = sub_6620C(&qword_3BCE28);
  __chkstk_darwin(v6 - 8);
  v86 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v85 = &v73 - v9;
  __chkstk_darwin(v10);
  v84 = &v73 - v11;
  __chkstk_darwin(v12);
  v83 = &v73 - v13;
  __chkstk_darwin(v14);
  v82 = &v73 - v15;
  __chkstk_darwin(v16);
  v81 = &v73 - v17;
  __chkstk_darwin(v18);
  v80 = &v73 - v19;
  __chkstk_darwin(v20);
  v77 = &v73 - v21;
  __chkstk_darwin(v22);
  v24 = &v73 - v23;
  __chkstk_darwin(v25);
  v27 = &v73 - v26;
  v28 = sub_2C0778();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2BEB28();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v90 = &v73 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v74 = &v73 - v36;
  __chkstk_darwin(v37);
  v39 = &v73 - v38;
  sub_77D40(a1, v27);
  v88 = *(v29 + 48);
  v40 = v88(v27, 1, v28);
  v89 = v32;
  v92 = v29;
  v93 = v33;
  v91 = v39;
  if (v40 == 1)
  {
    sub_E05A4(v27);
    (*(v33 + 104))(v39, enum case for LinkActionType.unknown(_:), v32);
  }

  else
  {
    v73 = a1;
    (*(v29 + 32))(v31, v27, v28);
    sub_2C06F8();
    v41 = v76;
    v42 = v75;
    (*(v76 + 104))(v79, enum case for ActionOrigin.Kind.header(_:), v75);
    sub_92134();
    sub_2C5A88();
    v43 = v42;
    sub_2C5A88();
    v44 = &enum case for LinkActionType.titleClick(_:);
    if ((v96 != v94 || v97 != v95) && (sub_2C65B8() & 1) == 0)
    {
      v44 = &enum case for LinkActionType.click(_:);
    }

    v45 = *(v41 + 8);
    v45(v79, v43);
    v45(v78, v43);
    (*(v92 + 8))(v31, v28);

    v46 = *v44;
    v47 = v93;
    v48 = v74;
    v32 = v89;
    (*(v93 + 104))(v74, v46, v89);
    (*(v47 + 32))(v91, v48, v32);
    a1 = v73;
  }

  v49 = v88;
  sub_77D40(a1, v24);
  if (v49(v24, 1, v28) == 1)
  {
    sub_E05A4(v24);
    v50 = v92;
  }

  else
  {
    v51 = sub_2C0768();
    v53 = v52;
    v50 = v92;
    (*(v92 + 8))(v24, v28);
    v88 = v53;
    if (v53)
    {
      goto LABEL_12;
    }
  }

  v51 = 0;
  v88 = 0xE000000000000000;
LABEL_12:
  v54 = v85;
  v55 = v77;
  sub_77D40(a1, v77);
  v56 = v49(v55, 1, v28);
  v57 = v80;
  v85 = v51;
  if (v56 == 1)
  {
    sub_E05A4(v55);
    v78 = 0;
    v79 = 0;
    v58 = v50;
  }

  else
  {
    v59 = sub_2C06C8();
    v78 = v60;
    v79 = v59;
    v58 = v50;
    (*(v50 + 8))(v55, v28);
  }

  sub_77D40(a1, v57);
  if (v49(v57, 1, v28) == 1)
  {
    sub_E05A4(v57);
    v77 = 0;
    v76 = 0;
  }

  else
  {
    v77 = sub_2C0748();
    v76 = v61;
    (*(v58 + 8))(v57, v28);
  }

  (*(v93 + 16))(v90, v91, v32);
  v62 = v81;
  sub_77D40(a1, v81);
  if (v49(v62, 1, v28) == 1)
  {
    sub_E05A4(v62);
    v80 = 0;
    v75 = 0;
  }

  else
  {
    v80 = sub_2C0738();
    v75 = v63;
    (*(v58 + 8))(v62, v28);
  }

  v65 = v83;
  v64 = v84;
  v66 = v82;
  sub_77D40(a1, v82);
  if (v49(v66, 1, v28) == 1)
  {
    sub_E05A4(v66);
    v83 = 0;
    v84 = 0;
  }

  else
  {
    v67 = sub_2C0718();
    v83 = v68;
    v84 = v67;
    (*(v58 + 8))(v66, v28);
  }

  sub_77D40(a1, v65);
  if (v49(v65, 1, v28) == 1)
  {
    sub_E05A4(v65);
    v81 = 0;
    v82 = 0;
  }

  else
  {
    v69 = sub_2C06D8();
    v81 = v70;
    v82 = v69;
    (*(v58 + 8))(v65, v28);
  }

  sub_77D40(a1, v64);
  if (v49(v64, 1, v28) == 1)
  {
    sub_E05A4(v64);
  }

  else
  {
    sub_2C0728();
    (*(v58 + 8))(v64, v28);
  }

  sub_77D40(a1, v54);
  if (v49(v54, 1, v28) == 1)
  {
    sub_E05A4(v54);
  }

  else
  {
    sub_2C06B8();
    (*(v92 + 8))(v54, v28);
  }

  v71 = v86;
  sub_77D40(a1, v86);
  if (v49(v71, 1, v28) == 1)
  {
    sub_E05A4(v71);
  }

  else
  {
    sub_2C0708();
    (*(v92 + 8))(v71, v28);
  }

  sub_2BEF18();
  sub_E05A4(a1);
  return (*(v93 + 8))(v91, v89);
}

uint64_t sub_2020B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_6620C(&qword_3C68E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - v7;
  sub_72084(a1, a1[3]);
  sub_202464();
  sub_2C67A8();
  if (v2)
  {
    return sub_68CD0(a1);
  }

  LOBYTE(v12[0]) = 0;
  v14[0] = sub_2C6468();
  v14[1] = v9;
  LOBYTE(v12[0]) = 1;
  v14[2] = sub_2C6468();
  v14[3] = v10;
  sub_6620C(&qword_3C58B0);
  v18 = 2;
  sub_2024B8();
  sub_2C64A8();
  (*(v6 + 8))(v8, v5);
  v15 = v12[0];
  v16 = v12[1];
  v17 = v13;
  sub_20251C(v14, a2);
  sub_68CD0(a1);
  return sub_202554(v14);
}

uint64_t sub_202334()
{
  v1 = 0x656C746974;
  if (*v0 != 1)
  {
    v1 = 0x6E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_20237C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20269C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2023A4(uint64_t a1)
{
  v2 = sub_202464();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_2023E0(uint64_t a1)
{
  v2 = sub_202464();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_20241C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2C65B8();
  }
}

unint64_t sub_202464()
{
  result = qword_3C68F0;
  if (!qword_3C68F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C68F0);
  }

  return result;
}

unint64_t sub_2024B8()
{
  result = qword_3C58C8;
  if (!qword_3C58C8)
  {
    sub_718D4(&qword_3C58B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C58C8);
  }

  return result;
}

unint64_t sub_202598()
{
  result = qword_3C68F8;
  if (!qword_3C68F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C68F8);
  }

  return result;
}

unint64_t sub_2025F0()
{
  result = qword_3C6900;
  if (!qword_3C6900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6900);
  }

  return result;
}

unint64_t sub_202648()
{
  result = qword_3C6908;
  if (!qword_3C6908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6908);
  }

  return result;
}

uint64_t sub_20269C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2C65B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2C65B8();

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

uint64_t sub_2027B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6620C(&qword_3BC7C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_6620C(&qword_3BE400);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2028D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_6620C(&qword_3BC7C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_6620C(&qword_3BE400);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for TextComponent()
{
  result = qword_3C6968;
  if (!qword_3C6968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_202A34()
{
  sub_202AF0(319, &qword_3BC850, &type metadata accessor for ColorConstants);
  if (v0 <= 0x3F)
  {
    sub_202AF0(319, &qword_3BE478, &type metadata accessor for FontConstants);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_202AF0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_202BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v48 = sub_6620C(&qword_3C69B0);
  __chkstk_darwin(v48);
  v35 = &v34 - v3;
  v45 = sub_6620C(&qword_3C69B8);
  __chkstk_darwin(v45);
  v47 = &v34 - v4;
  v46 = sub_2C2A58();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v39 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TextComponentModel(0);
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  __chkstk_darwin(v6 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TextComponent();
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  __chkstk_darwin(v9 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_6620C(&unk_3C43D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v34 - v13;
  v42 = sub_6620C(&qword_3C69C0);
  v38 = *(v42 - 8);
  __chkstk_darwin(v42);
  v16 = &v34 - v15;
  v44 = sub_6620C(&qword_3C69C8);
  v17 = *(v44 - 8);
  __chkstk_darwin(v44);
  v19 = &v34 - v18;
  sub_6932C(a1 + 40, &v49, &qword_3BE370);
  if (v51)
  {
    sub_693D0(&v49, v52);
    v20 = sub_2C24B8();
    (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
    sub_691F8(v52, &v49);
    sub_205364(v41, &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TextComponent);
    sub_205364(a1, &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TextComponentModel);
    v21 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v22 = (v10 + *(v37 + 80) + v21) & ~*(v37 + 80);
    v23 = swift_allocObject();
    sub_20522C(v11, v23 + v21, type metadata accessor for TextComponent);
    sub_20522C(v8, v23 + v22, type metadata accessor for TextComponentModel);
    sub_204704();
    sub_2C0388();
    v24 = v39;
    sub_2C2A48();
    v25 = sub_72B74(&qword_3C69D0, &qword_3C69C0);
    v26 = sub_204D6C(&qword_3BE108, &type metadata accessor for PlainButtonStyle);
    v27 = v42;
    v28 = v46;
    sub_2C3E38();
    (*(v40 + 8))(v24, v28);
    (*(v38 + 8))(v16, v27);
    v29 = v44;
    (*(v17 + 16))(v47, v19, v44);
    swift_storeEnumTagMultiPayload();
    *&v49 = v27;
    *(&v49 + 1) = v28;
    v50 = v25;
    v51 = v26;
    swift_getOpaqueTypeConformance2();
    sub_2C33C8();
    (*(v17 + 8))(v19, v29);
    return sub_68CD0(v52);
  }

  else
  {
    sub_69198(&v49, &unk_3BDC90);
    v31 = v35;
    sub_203390(a1, v35);
    sub_204694(v31, v47);
    swift_storeEnumTagMultiPayload();
    v32 = sub_72B74(&qword_3C69D0, &qword_3C69C0);
    v33 = sub_204D6C(&qword_3BE108, &type metadata accessor for PlainButtonStyle);
    v52[0] = v42;
    v52[1] = v46;
    v52[2] = v32;
    v52[3] = v33;
    swift_getOpaqueTypeConformance2();
    sub_204704();
    sub_2C33C8();
    return sub_69198(v31, &qword_3C69B0);
  }
}

uint64_t sub_203390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2C0D48();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v126 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v123 - v8;
  v10 = type metadata accessor for _CodeImageScale_OrNil(0);
  __chkstk_darwin(v10 - 8);
  v148 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_6620C(&qword_3BEB68);
  __chkstk_darwin(v12 - 8);
  v149 = &v123 - v13;
  v14 = sub_2C42D8();
  *&v151 = *(v14 - 8);
  __chkstk_darwin(v14);
  v150 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_6620C(&qword_3BEA50);
  __chkstk_darwin(v16 - 8);
  v18 = &v123 - v17;
  v136 = sub_2C3A18();
  v134 = *(v136 - 8);
  __chkstk_darwin(v136);
  v20 = &v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_6620C(&qword_3C6A60);
  __chkstk_darwin(v130);
  v22 = &v123 - v21;
  v133 = sub_6620C(&qword_3C6A80);
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v127 = &v123 - v23;
  v129 = sub_6620C(&qword_3C6A50);
  __chkstk_darwin(v129);
  v128 = &v123 - v24;
  v139 = sub_6620C(&qword_3C6A88);
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  *&v159 = &v123 - v25;
  v137 = sub_6620C(&qword_3C6A48);
  __chkstk_darwin(v137);
  v141 = &v123 - v26;
  v140 = sub_6620C(&qword_3C6A38);
  __chkstk_darwin(v140);
  v143 = &v123 - v27;
  v142 = sub_6620C(&qword_3C6A28);
  __chkstk_darwin(v142);
  v145 = &v123 - v28;
  v144 = sub_6620C(&qword_3C6A18);
  __chkstk_darwin(v144);
  v147 = &v123 - v29;
  v146 = sub_6620C(&qword_3C6A08);
  __chkstk_darwin(v146);
  v152 = &v123 - v30;
  v154 = sub_6620C(&qword_3C69F8);
  __chkstk_darwin(v154);
  v153 = &v123 - v31;
  v32 = sub_6620C(&qword_3C69E8);
  __chkstk_darwin(v32 - 8);
  v160 = &v123 - v33;
  v131 = v22;
  sub_B6A68(v22);
  v34 = type metadata accessor for TextComponentModel(0);
  v35 = (a1 + v34[8]);
  v36 = v35[1];
  v161 = a1;
  v158 = a2;
  v157 = v4;
  v155 = v9;
  v135 = v36;
  if (v36)
  {
    v123 = v20;
    v124 = v14;
    v125 = v5;
    *&v166 = *v35;
    *(&v166 + 1) = v36;
    sub_7212C();

    v37 = sub_2C3A48();
    v39 = v38;
    v41 = v40;
    sub_6932C(a1 + v34[15], v18, &qword_3BEA50);
    v42 = sub_2C2368();
    v43 = *(v42 - 8);
    if ((*(v43 + 48))(v18, 1, v42) == 1)
    {
      sub_69198(v18, &qword_3BEA50);
    }

    else
    {
      sub_2C2358();
      (*(v43 + 8))(v18, v42);
      sub_2C3808();
    }

    v45 = sub_2C39E8();
    v47 = v46;
    v49 = v48;

    sub_72180(v37, v39, v41 & 1);

    LODWORD(v166) = sub_2C3538();
    v50 = sub_2C39A8();
    v52 = v51;
    v54 = v53;
    sub_72180(v45, v47, v49 & 1);

    v44 = v123;
    sub_2C3A08();
    sub_72180(v50, v52, v54 & 1);

    v5 = v125;
    a1 = v161;
    v14 = v124;
  }

  else
  {
    sub_2C39F8();
    v44 = v20;
  }

  v55 = v5;
  sub_204CB4();
  v56 = v127;
  v57 = v131;
  sub_2C3E28();
  (*(v134 + 8))(v44, v136);
  sub_69198(v57, &qword_3C6A60);
  v58 = (a1 + v34[18]);
  v59 = *v58;
  v60 = *(v58 + 8);
  KeyPath = swift_getKeyPath();
  v62 = v128;
  (*(v132 + 32))(v128, v56, v133);
  v63 = v62 + *(v129 + 36);
  *v63 = KeyPath;
  *(v63 + 8) = v59;
  *(v63 + 16) = v60;
  v64 = v161;
  sub_204BC0();
  sub_2C3D58();
  sub_69198(v62, &qword_3C6A50);
  v65 = v148;
  sub_205364(v64 + v34[12], v148, type metadata accessor for _CodeImageScale_OrNil);
  v66 = v149;
  sub_2053CC(v65, v149);
  v67 = v151;
  v68 = *(v151 + 48);
  if (v68(v66, 1, v14) == 1)
  {
    v69 = v150;
    (*(v67 + 104))(v150, enum case for Image.Scale.medium(_:), v14);
    if (v68(v66, 1, v14) != 1)
    {
      sub_69198(v66, &qword_3BEB68);
    }
  }

  else
  {
    v69 = v150;
    (*(v67 + 32))(v150, v66, v14);
  }

  v70 = swift_getKeyPath();
  v71 = v141;
  v72 = &v141[*(v137 + 36)];
  v73 = sub_6620C(&qword_3BD7E8);
  (*(v67 + 32))(v72 + *(v73 + 28), v69, v14);
  *v72 = v70;
  (*(v138 + 32))(v71, v159, v139);
  v74 = sub_2C3768();
  v75 = *(v64 + v34[16] + 8);
  v76 = 0uLL;
  v159 = 0u;
  v77 = 0uLL;
  if ((v75 & 1) == 0)
  {
    sub_2C24D8();
    *(&v77 + 1) = v78;
    *(&v76 + 1) = v79;
  }

  v151 = v77;
  v156 = v76;
  v80 = v143;
  sub_69130(v71, v143, &qword_3C6A48);
  v81 = v80 + *(v140 + 36);
  *v81 = v74;
  *(v81 + 24) = v151;
  *(v81 + 8) = v156;
  *(v81 + 40) = v75;
  v82 = sub_2C3778();
  v83 = *(v64 + v34[17] + 8);
  v84 = 0uLL;
  v85 = v55;
  v86 = v155;
  if ((v83 & 1) == 0)
  {
    sub_2C24D8();
    *(&v84 + 1) = v87;
    *(&v89 + 1) = v88;
    v159 = v89;
  }

  v156 = v84;
  v90 = v145;
  sub_69130(v80, v145, &qword_3C6A38);
  v91 = v90 + *(v142 + 36);
  *v91 = v82;
  *(v91 + 24) = v156;
  *(v91 + 8) = v159;
  *(v91 + 40) = v83;
  v92 = sub_2C3788();
  sub_2C24D8();
  v94 = v93;
  v96 = v95;
  v98 = v97;
  v100 = v99;
  v101 = v90;
  v102 = v147;
  sub_69130(v101, v147, &qword_3C6A28);
  v103 = v102 + *(v144 + 36);
  *v103 = v92;
  *(v103 + 8) = v94;
  *(v103 + 16) = v96;
  *(v103 + 24) = v98;
  *(v103 + 32) = v100;
  *(v103 + 40) = 0;
  v104 = 1;
  sub_2C2AD8();
  v105 = v152;
  sub_69130(v102, v152, &qword_3C6A18);
  v106 = (v105 + *(v146 + 36));
  v107 = v171;
  v106[4] = v170;
  v106[5] = v107;
  v106[6] = v172;
  v108 = v167;
  *v106 = v166;
  v106[1] = v108;
  v109 = v169;
  v106[2] = v168;
  v106[3] = v109;
  sub_2C46A8();
  v110 = sub_2C4678();
  v111 = v157;
  if ((v110 & 1) == 0)
  {
    sub_2C46B8();
    if (sub_2C4678())
    {
      v104 = 0;
    }

    else
    {
      sub_2C46C8();
      if (sub_2C4678())
      {
        v104 = 2;
      }

      else
      {
        v104 = 1;
      }
    }
  }

  v112 = swift_getKeyPath();
  v113 = v153;
  sub_69130(v105, v153, &qword_3C6A08);
  v114 = v113 + *(v154 + 36);
  *v114 = v112;
  *(v114 + 8) = v104;
  sub_204878();
  sub_2C4048();
  sub_69198(v113, &qword_3C69F8);
  v115 = (v161 + v34[21]);
  v116 = v115[1];
  if (!v116 || (v117 = v115[2], v162 = *v115, v163 = v116, v164 = v117, v165 = *(v115 + 3), sub_29A87C(v86), v118 = sub_147DBC(), (*(v85 + 8))(v86, v111), !v118))
  {
    v119 = v126;
    sub_29A87C(v126);

    v118 = sub_2C0D58();

    v120 = *(v85 + 8);
    v120(v119, v111);
    if (!v118)
    {
      sub_29A87C(v86);
      v118 = sub_2C0CB8();
      v120(v86, v111);
    }
  }

  v121 = v158;
  sub_69130(v160, v158, &qword_3C69E8);
  result = sub_6620C(&qword_3C69B0);
  *(v121 + *(result + 36)) = v118;
  return result;
}

uint64_t sub_2044C8()
{
  __chkstk_darwin(v0);
  sub_205364(v2, &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TextComponent);
  sub_204D6C(&qword_3C69A0, type metadata accessor for TextComponent);
  return sub_2BFD18();
}

uint64_t sub_204694(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C69B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_204704()
{
  result = qword_3C69D8;
  if (!qword_3C69D8)
  {
    sub_718D4(&qword_3C69B0);
    sub_2047BC();
    sub_72B74(&qword_3C6A70, &qword_3C6A78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C69D8);
  }

  return result;
}

unint64_t sub_2047BC()
{
  result = qword_3C69E0;
  if (!qword_3C69E0)
  {
    sub_718D4(&qword_3C69E8);
    sub_204878();
    sub_204D6C(&qword_3BCA50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C69E0);
  }

  return result;
}

unint64_t sub_204878()
{
  result = qword_3C69F0;
  if (!qword_3C69F0)
  {
    sub_718D4(&qword_3C69F8);
    sub_204930();
    sub_72B74(&qword_3BC978, &qword_3BC980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C69F0);
  }

  return result;
}

unint64_t sub_204930()
{
  result = qword_3C6A00;
  if (!qword_3C6A00)
  {
    sub_718D4(&qword_3C6A08);
    sub_204A18(&qword_3C6A10, &qword_3C6A18, &unk_2F5428, sub_2049E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6A00);
  }

  return result;
}

uint64_t sub_204A18(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_204ACC()
{
  result = qword_3C6A40;
  if (!qword_3C6A40)
  {
    sub_718D4(&qword_3C6A48);
    sub_718D4(&qword_3C6A50);
    sub_204BC0();
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3BD800, &qword_3BD7E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6A40);
  }

  return result;
}

unint64_t sub_204BC0()
{
  result = qword_3C6A58;
  if (!qword_3C6A58)
  {
    sub_718D4(&qword_3C6A50);
    sub_718D4(&qword_3C6A60);
    sub_204CB4();
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3BE160, &qword_3BE168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6A58);
  }

  return result;
}

unint64_t sub_204CB4()
{
  result = qword_3C6A68;
  if (!qword_3C6A68)
  {
    sub_718D4(&qword_3C6A60);
    sub_72B74(&qword_3BEC28, &qword_3BEC20);
    sub_B9AE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6A68);
  }

  return result;
}

uint64_t sub_204D6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_204DB4()
{
  v1 = type metadata accessor for TextComponent();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for TextComponentModel(0);
  v6 = *(*(v5 - 1) + 80);
  v7 = v3 + v4 + v6;
  v8 = *(*(v5 - 1) + 64);
  v9 = v0 + v3;
  sub_6620C(&unk_3C8530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_2C0D48();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  else
  {
  }

  v11 = v7 & ~v6;
  v12 = *(v1 + 20);
  sub_6620C(&qword_3C0C88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2C0978();
    (*(*(v13 - 8) + 8))(v9 + v12, v13);
  }

  else
  {
  }

  v14 = v0 + v11;
  sub_68CD0(v0 + v11);
  if (*(v0 + v11 + 64))
  {
    sub_68CD0(v14 + 40);
  }

  v15 = v5[6];
  v16 = sub_2C5018();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v14 + v15, 1, v16))
  {
    (*(v17 + 8))(v14 + v15, v16);
  }

  v18 = v5[12];
  v19 = sub_2C42D8();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v14 + v18, 1, v19))
  {
    (*(v20 + 8))(v14 + v18, v19);
  }

  v21 = v5[15];
  v22 = sub_2C2368();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v14 + v21, 1, v22))
  {
    (*(v23 + 8))(v14 + v21, v22);
  }

  v24 = v5[20];
  v25 = sub_2C3308();
  v26 = *(v25 - 8);
  if (!(*(v26 + 48))(v14 + v24, 1, v25))
  {
    (*(v26 + 8))(v14 + v24, v25);
  }

  if (*(v14 + v5[21] + 8))
  {
  }

  return _swift_deallocObject(v0, v11 + v8, v2 | v6 | 7);
}

uint64_t sub_20522C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_205294@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TextComponent() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for TextComponentModel(0) - 8);
  return sub_203390(v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)), a1);
}

uint64_t sub_205364(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2053CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BEB68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_205450()
{
  result = qword_3C6A90;
  if (!qword_3C6A90)
  {
    sub_718D4(&qword_3C6A98);
    sub_718D4(&qword_3C69C0);
    sub_2C2A58();
    sub_72B74(&qword_3C69D0, &qword_3C69C0);
    sub_204D6C(&qword_3BE108, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_204704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6A90);
  }

  return result;
}

uint64_t sub_2055F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[121] = a4;
  v4[120] = a3;
  v4[119] = a2;
  v4[118] = a1;
  v4[122] = *(type metadata accessor for ListItemComponentModel() - 8);
  v4[123] = swift_task_alloc();
  v4[124] = swift_task_alloc();
  sub_6620C(&qword_3C2AC0);
  v4[125] = swift_task_alloc();
  v4[126] = swift_task_alloc();
  sub_6620C(&qword_3C3AC8);
  v4[127] = swift_task_alloc();
  v4[128] = swift_task_alloc();
  v5 = sub_6620C(&qword_3C3AD0);
  v4[129] = v5;
  v4[130] = *(v5 - 8);
  v4[131] = swift_task_alloc();
  v4[132] = swift_task_alloc();
  v6 = sub_6620C(&qword_3C6AA0);
  v4[133] = v6;
  v4[134] = *(v6 - 8);
  v4[135] = swift_task_alloc();
  v7 = sub_6620C(&qword_3C6AA8);
  v4[136] = v7;
  v4[137] = *(v7 - 8);
  v4[138] = swift_task_alloc();
  v8 = sub_2C0E58();
  v4[139] = v8;
  v4[140] = *(v8 - 8);
  v4[141] = swift_task_alloc();
  v4[142] = swift_task_alloc();
  v4[143] = swift_task_alloc();
  v9 = sub_2BF368();
  v4[144] = v9;
  v4[145] = *(v9 - 8);
  v4[146] = swift_task_alloc();
  v4[147] = swift_task_alloc();
  v10 = sub_6620C(&qword_3BDAC0);
  v11 = swift_task_alloc();
  v4[148] = v11;
  *v11 = v4;
  v11[1] = sub_2059CC;

  return BaseObjectGraph.inject<A>(_:)(v4 + 106, v10, v10);
}

uint64_t sub_2059CC()
{
  v2 = *v1;
  *(v2 + 1192) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_208DEC, 0, 0);
  }

  else
  {
    v3 = sub_6620C(&qword_3BD1F0);
    v4 = swift_task_alloc();
    *(v2 + 1200) = v4;
    *v4 = v2;
    v4[1] = sub_205B70;

    return BaseObjectGraph.inject<A>(_:)(v2 + 808, v3, v3);
  }
}

uint64_t sub_205B70()
{
  *(*v1 + 1208) = v0;

  if (v0)
  {
    v2 = sub_208F28;
  }

  else
  {
    v2 = sub_205C84;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_205C84()
{
  v1 = *(v0 + 1144);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1112);
  v4 = *(v0 + 952);
  sub_691F8(v4 + 16, v0 + 448);
  sub_72084((v4 + 16), *(v4 + 40));
  sub_2BF278();
  v5 = type metadata accessor for SeriesSeeAllPaginationIntent();
  *(v0 + 1216) = v5;
  v6 = *(v5 + 24);
  *(v0 + 1376) = v6;
  v7 = *(v2 + 16);
  *(v0 + 1224) = v7;
  *(v0 + 1232) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4 + v6, v3);
  v8 = (*(v2 + 88))(v1, v3);
  *(v0 + 1380) = v8;
  if (v8 == enum case for PaginationInfo.nextHref(_:))
  {
    v9 = *(v0 + 1144);
    (*(*(v0 + 1120) + 96))(v9, *(v0 + 1112));
    *(v0 + 1240) = *(v9 + 8);
    *(v0 + 1248) = *(v9 + 24);
    sub_2BF848();

    sub_2C1E28();
    v10 = *(v0 + 832);
    v11 = *(v0 + 840);
    sub_72084((v0 + 808), v10);
    v12 = swift_task_alloc();
    *(v0 + 1256) = v12;
    v13 = sub_72B74(&qword_3C6AC8, &qword_3C6AA8);
    *v12 = v0;
    v12[1] = sub_206274;
    v14 = *(v0 + 1104);
    v15 = *(v0 + 1088);
    v16 = *(v0 + 1080);
    v17 = *(v0 + 960);

    return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v16, v14, v17, v15, v13, v10, v11);
  }

  v18 = *(v0 + 1144);
  v19 = *(v0 + 1120);
  v20 = *(v0 + 1112);
  if (v8 == enum case for PaginationInfo.nextAssetIDs(_:))
  {
    v21 = *(v0 + 968);
    (*(v19 + 96))(*(v0 + 1144), *(v0 + 1112));
    v22 = *v18;
    *(v0 + 1312) = v22;
    if (v21 < 0)
    {
      __break(1u);
    }

    else
    {
      v23 = *(v0 + 968);
      v24 = *(v22 + 16);
      if (v24 >= v23)
      {
        v24 = *(v0 + 968);
      }

      v25 = 2 * v24;
      if (v23)
      {
        v20 = v25 + 1;
      }

      else
      {
        v20 = 1;
      }

      sub_2C6608();
      swift_unknownObjectRetain_n();

      v26 = swift_dynamicCastClass();
      if (!v26)
      {
        swift_unknownObjectRelease();
        v26 = _swiftEmptyArrayStorage;
      }

      v27 = v26[2];

      if (v27 == v20 >> 1)
      {
        v28 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v28)
        {
LABEL_18:
          *(v0 + 1320) = v28;
          v29 = *(v0 + 872);
          v30 = *(v0 + 880);
          sub_72084((v0 + 848), v29);
          *(v0 + 904) = 0;
          v37 = (*(v30 + 32) + **(v30 + 32));
          v31 = swift_task_alloc();
          *(v0 + 1328) = v31;
          *v31 = v0;
          v31[1] = sub_207068;

          return v37(v28, v0 + 904, v29, v30);
        }

        v28 = _swiftEmptyArrayStorage;
LABEL_17:
        swift_unknownObjectRelease();
        goto LABEL_18;
      }
    }

    swift_unknownObjectRelease();
    sub_20B468(v22, v22 + 32, 0, v20);
    v28 = v35;
    goto LABEL_17;
  }

  v32 = *(v0 + 944);
  v33 = sub_6620C(&qword_3BC238);
  (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
  (*(v19 + 8))(v18, v20);
  (*(*(v0 + 1160) + 8))(*(v0 + 1176), *(v0 + 1152));
  sub_68CD0(v0 + 448);
  sub_68CD0(v0 + 808);
  sub_68CD0(v0 + 848);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_206274()
{
  *(*v1 + 1264) = v0;

  if (v0)
  {

    v2 = sub_20906C;
  }

  else
  {
    v2 = sub_20639C;
  }

  return _swift_task_switch(v2, 0, 0);
}

char *sub_20639C()
{
  v1 = v0;
  v2 = v0[158];
  v3 = v0[147];
  v4 = sub_2C1578();
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  v6 = sub_198678(sub_20B614, v5, v4);
  v0[159] = v6;
  v0[160] = v2;

  if (v6 >> 62)
  {
    v7 = sub_2C6398();
  }

  else
  {
    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  }

  if (v7)
  {
    result = sub_649D4(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v24 = v1;
    v9 = 0;
    v10 = v6;
    v11 = v6 & 0xC000000000000001;
    v12 = v6;
    do
    {
      if (v11)
      {
        v13 = sub_2C6208();
      }

      else
      {
        v13 = *(v10 + 8 * v9 + 32);
      }

      v14 = v13;
      v15 = sub_2BFAE8();
      v17 = v16;

      v19 = _swiftEmptyArrayStorage[2];
      v18 = _swiftEmptyArrayStorage[3];
      if (v19 >= v18 >> 1)
      {
        sub_649D4((v18 > 1), v19 + 1, 1);
      }

      ++v9;
      _swiftEmptyArrayStorage[2] = v19 + 1;
      v20 = &_swiftEmptyArrayStorage[2 * v19];
      v20[4] = v15;
      v20[5] = v17;
      v10 = v12;
    }

    while (v7 != v9);
    v1 = v24;
  }

  v1[161] = _swiftEmptyArrayStorage;
  v21 = v1[109];
  v22 = v1[110];
  sub_72084(v1 + 106, v21);
  v1[117] = 0;
  v25 = (*(v22 + 32) + **(v22 + 32));
  v23 = swift_task_alloc();
  v1[162] = v23;
  *v23 = v1;
  v23[1] = sub_206648;

  return v25(_swiftEmptyArrayStorage, v1 + 117, v21, v22);
}

uint64_t sub_206648(uint64_t a1)
{
  *(*v1 + 1304) = a1;

  return _swift_task_switch(sub_206748, 0, 0);
}

void sub_206748()
{
  v1 = *(v0 + 1272);
  if (v1 >> 62)
  {
    v2 = sub_2C6398();
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = (v0 + 768);
      v5 = *(v0 + 1272);
      v65 = v5 & 0xFFFFFFFFFFFFFF8;
      v67 = v5 & 0xC000000000000001;
      v6 = _swiftEmptyArrayStorage;
      v62 = v5 + 32;
      v70 = *(v0 + 1304);
      while (1)
      {
        if (v67)
        {
          v7 = sub_2C6208();
        }

        else
        {
          if (v3 >= *(v65 + 16))
          {
            goto LABEL_41;
          }

          v7 = *(v62 + 8 * v3);
        }

        v8 = v7;
        v9 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v10 = sub_2BFAE8();
        if (*(v70 + 16))
        {
          v12 = v6;
          v13 = sub_5D228(v10, v11);
          v15 = v14;

          if (v15)
          {
            sub_691F8(*(v70 + 56) + 40 * v13, v0 + 768);
          }

          else
          {
            *(v0 + 800) = 0;
            *v4 = 0u;
            *(v0 + 784) = 0u;
          }

          v6 = v12;
        }

        else
        {

          *(v0 + 800) = 0;
          *v4 = 0u;
          *(v0 + 784) = 0u;
        }

        sub_2BF748();

        sub_69198(v0 + 768, &qword_3BDAE8);
        if (*(v0 + 752))
        {
          sub_693D0((v0 + 728), v0 + 688);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_5C0E8(0, v6[2] + 1, 1, v6);
          }

          v17 = v6[2];
          v16 = v6[3];
          if (v17 >= v16 >> 1)
          {
            v6 = sub_5C0E8((v16 > 1), v17 + 1, 1, v6);
          }

          v6[2] = v17 + 1;
          sub_693D0((v0 + 688), &v6[5 * v17 + 4]);
        }

        else
        {
          sub_69198(v0 + 728, &unk_3C2550);
        }

        ++v3;
        if (v9 == v2)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_25:
  v18 = sub_1F9C0C(v6);
  v19 = swift_task_alloc();
  v71 = (v0 + 448);
  *(v19 + 16) = v0 + 448;
  v20 = sub_286E68(sub_20B630, v19, v18);

  v21 = *(v20 + 16);
  v68 = v20;
  if (v21)
  {
    v22 = *(v0 + 976);

    sub_64BB4(0, v21, 0);
    v23 = 0;
    v24 = *(v20 + 16);
    v25 = v20 + 32;
    while (v24 != v23)
    {
      if (v23 >= *(v20 + 16))
      {
        goto LABEL_43;
      }

      v26 = *(v0 + 992);
      v27 = *(v0 + 952);
      sub_691F8(v25, v0 + 72);
      *(v0 + 112) = v23;
      sub_693D0((v0 + 72), v0 + 120);
      sub_20A754(v23, (v0 + 120), v71, v27, v26);
      sub_69198(v0 + 112, &unk_3BDC50);
      v29 = _swiftEmptyArrayStorage[2];
      v28 = _swiftEmptyArrayStorage[3];
      if (v29 >= v28 >> 1)
      {
        sub_64BB4(v28 > 1, v29 + 1, 1);
      }

      v30 = *(v0 + 992);
      ++v23;
      _swiftEmptyArrayStorage[2] = v29 + 1;
      sub_20B5B0(v30, _swiftEmptyArrayStorage + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v29);
      v25 += 40;
      v20 = v68;
      if (v21 == v23)
      {

        goto LABEL_33;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_33:
  v31 = *(v0 + 1224);
  v32 = *(v0 + 1376);
  v33 = *(v0 + 1136);
  v34 = *(v0 + 1112);
  v35 = *(v0 + 952);
  sub_28F948(_swiftEmptyArrayStorage);
  v31(v33, v35 + v32, v34);

  sub_2C1558();
  if (v36)
  {

    v37 = sub_2C1558();
    if (!v38)
    {
LABEL_44:
      __break(1u);
      return;
    }

    v39 = v37;
    v40 = v38;
    v63 = *(v0 + 1380);
    v41 = *(v0 + 1120);
    v42 = *(v0 + 1112);
    v43 = *(v0 + 1008);

    *v43 = v39;
    v43[1] = v40;
    v43[2] = 0;
    v43[3] = 0;
    (*(v41 + 104))(v43, v63, v42);
    (*(v41 + 56))(v43, 0, 1, v42);
  }

  else
  {
    v44 = *(v0 + 1120);
    v45 = *(v0 + 1112);
    v46 = *(v0 + 1008);

    (*(v44 + 56))(v46, 1, 1, v45);
  }

  v47 = *(v0 + 1096);
  v66 = *(v0 + 1088);
  v69 = *(v0 + 1104);
  v64 = *(v0 + 1080);
  v48 = *(v0 + 1072);
  v49 = *(v0 + 1056);
  v50 = *(v0 + 1040);
  v60 = *(v0 + 1032);
  v61 = *(v0 + 1064);
  v51 = *(v0 + 1024);
  v52 = *(v0 + 944);
  sub_2C1108();
  v53 = sub_2C1128();
  (*(*(v53 - 8) + 56))(v51, 0, 1, v53);
  type metadata accessor for Page();
  type metadata accessor for Shelf();
  sub_20B6AC(&qword_3BD4F0, type metadata accessor for Page);
  sub_20B6AC(&qword_3BD4F8, type metadata accessor for Shelf);
  sub_2C1708();
  sub_6620C(&qword_3C6AB0);
  v54 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_2E3F30;
  (*(v50 + 32))(v55 + v54, v49, v60);
  (*(v48 + 8))(v64, v61);
  (*(v47 + 8))(v69, v66);
  *v52 = v55;
  v56 = enum case for PageUpdateInstruction.appendItems<A, B>(_:);
  v57 = sub_6620C(&qword_3BC238);
  v58 = *(v57 - 8);
  (*(v58 + 104))(v52, v56, v57);
  (*(v58 + 56))(v52, 0, 1, v57);
  (*(*(v0 + 1160) + 8))(*(v0 + 1176), *(v0 + 1152));
  sub_68CD0(v71);
  sub_68CD0(v0 + 808);
  sub_68CD0(v0 + 848);

  v59 = *(v0 + 8);

  v59();
}

uint64_t sub_207068(uint64_t a1)
{
  *(*v1 + 1336) = a1;

  return _swift_task_switch(sub_207168, 0, 0);
}

uint64_t sub_207168()
{
  v1 = v0[146];
  v2 = v0[145];
  v3 = v0[144];
  (*(v2 + 16))(v1, v0[147], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for SeriesType.audiobook(_:))
  {
    v5 = v0[165];
    v6 = v0[104];
    v7 = v0[105];
    sub_72084(v0 + 101, v6);
    v0[116] = v5;

    v8 = swift_task_alloc();
    v0[168] = v8;
    v9 = sub_6620C(&qword_3BDAF0);
    v10 = sub_72B74(&qword_3BDAF8, &qword_3BDAF0);
    *v8 = v0;
    v8[1] = sub_20748C;
    v11 = v0[120];
    v12 = v0 + 115;
    v13 = v0 + 116;
  }

  else
  {
    if (v4 != enum case for SeriesType.book(_:))
    {
      sub_2C61F8(22);

      v18._countAndFlagsBits = sub_2BF358();
      sub_2C5978(v18);

      return sub_2C6378();
    }

    v14 = v0[165];
    v6 = v0[104];
    v7 = v0[105];
    sub_72084(v0 + 101, v6);
    v0[111] = v14;

    v15 = swift_task_alloc();
    v0[170] = v15;
    v9 = sub_6620C(&qword_3BDAD8);
    v10 = sub_72B74(&qword_3BDAE0, &qword_3BDAD8);
    *v15 = v0;
    v15[1] = sub_20813C;
    v11 = v0[120];
    v12 = v0 + 112;
    v13 = v0 + 111;
  }

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v12, v13, v11, v9, v10, v6, v7);
}

uint64_t sub_20748C()
{
  *(*v1 + 1352) = v0;

  if (v0)
  {
    v2 = sub_209200;
  }

  else
  {

    v2 = sub_2075A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_2075A8()
{
  v1 = *(v0 + 920);
  if (v1 >> 62)
  {
    goto LABEL_47;
  }

  sub_2C65F8();
  sub_2BF848();
  v2 = v1;
  while (1)
  {

    *(v0 + 912) = v2;
    sub_6620C(&qword_3C6AB8);
    sub_72B74(&qword_3C6AC0, &qword_3C6AB8);
    v3 = sub_2C5D28();

    v4 = *(v0 + 1320);
    if ((v3 & 1) == 0)
    {
      break;
    }

    if (v2 >> 62)
    {
      v5 = sub_2C6398();
      if (!v5)
      {
LABEL_49:
        v8 = _swiftEmptyArrayStorage;
LABEL_50:

        goto LABEL_51;
      }
    }

    else
    {
      v5 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
      if (!v5)
      {
        goto LABEL_49;
      }
    }

    v6 = 0;
    v7 = (v0 + 648);
    v77 = *(v0 + 1336);
    v74 = v2 & 0xFFFFFFFFFFFFFF8;
    v75 = v2 & 0xC000000000000001;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v75)
      {
        v9 = sub_2C6208();
      }

      else
      {
        if (v6 >= *(v74 + 16))
        {
          goto LABEL_46;
        }

        v9 = *(v2 + 8 * v6 + 32);
      }

      v10 = v9;
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v12 = sub_2BFAE8();
      if (*(v77 + 16))
      {
        v14 = v8;
        v15 = v5;
        v16 = v2;
        v17 = sub_5D228(v12, v13);
        v19 = v18;

        if (v19)
        {
          sub_691F8(*(v77 + 56) + 40 * v17, v0 + 648);
        }

        else
        {
          *(v0 + 680) = 0;
          *v7 = 0u;
          *(v0 + 664) = 0u;
        }

        v2 = v16;
        v5 = v15;
        v8 = v14;
        v11 = v6 + 1;
      }

      else
      {

        *(v0 + 680) = 0;
        *v7 = 0u;
        *(v0 + 664) = 0u;
      }

      sub_2BF748();

      sub_69198(v0 + 648, &qword_3BDAE8);
      if (*(v0 + 632))
      {
        sub_693D0((v0 + 608), v0 + 568);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_5C0E8(0, v8[2] + 1, 1, v8);
        }

        v21 = v8[2];
        v20 = v8[3];
        if (v21 >= v20 >> 1)
        {
          v8 = sub_5C0E8((v20 > 1), v21 + 1, 1, v8);
        }

        v8[2] = v21 + 1;
        sub_693D0((v0 + 568), &v8[5 * v21 + 4]);
      }

      else
      {
        sub_69198(v0 + 608, &unk_3C2550);
      }

      ++v6;
      if (v11 == v5)
      {
        goto LABEL_50;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    sub_2BF848();

    v2 = sub_2C6388();
  }

  v78 = *(v4 + 16);
  if (v78)
  {
    v22 = 0;
    v8 = _swiftEmptyArrayStorage;
    v23 = (*(v0 + 1320) + 40);
    v24 = *(v0 + 1336);
    while (1)
    {
      if (v22 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (!*(v24 + 16))
      {
        goto LABEL_29;
      }

      v25 = *(v23 - 1);
      v26 = *v23;

      v27 = sub_5D228(v25, v26);
      if ((v28 & 1) == 0)
      {
        break;
      }

      sub_691F8(*(v24 + 56) + 40 * v27, v0 + 488);
      result = sub_20B540(v0 + 488, v0 + 528);
      if (!*(v0 + 552))
      {
        __break(1u);
        return result;
      }

      sub_2BF758();

      sub_69198(v0 + 488, &qword_3BDAE8);
      sub_68CD0(v0 + 528);
      if (*(v0 + 232))
      {
        sub_693D0((v0 + 208), v0 + 408);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_5C0E8(0, v8[2] + 1, 1, v8);
        }

        v31 = v8[2];
        v30 = v8[3];
        if (v31 >= v30 >> 1)
        {
          v8 = sub_5C0E8((v30 > 1), v31 + 1, 1, v8);
        }

        v8[2] = v31 + 1;
        sub_693D0((v0 + 408), &v8[5 * v31 + 4]);
        goto LABEL_31;
      }

LABEL_30:
      sub_69198(v0 + 208, &unk_3C2550);
LABEL_31:
      ++v22;
      v23 += 2;
      if (v78 == v22)
      {
        goto LABEL_43;
      }
    }

LABEL_29:
    *(v0 + 520) = 0;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    sub_69198(v0 + 488, &qword_3BDAE8);
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0;
    goto LABEL_30;
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_43:

LABEL_51:
  v32 = v0 + 448;
  v33 = swift_task_alloc();
  v79 = (v0 + 448);
  *(v33 + 16) = v0 + 448;
  v34 = sub_286E68(sub_20B6F4, v33, v8);

  v35 = *(v34 + 16);
  if (v35)
  {
    v36 = *(v0 + 976);
    sub_64BB4(0, v35, 0);
    v37 = 0;
    v38 = *(v34 + 16);
    v39 = v34 + 32;
    while (v38 != v37)
    {
      if (v37 >= *(v34 + 16))
      {
        goto LABEL_77;
      }

      v40 = *(v0 + 984);
      v41 = *(v0 + 952);
      sub_691F8(v39, v0 + 24);
      *(v0 + 160) = v37;
      sub_693D0((v0 + 24), v0 + 168);
      sub_20A754(v37, (v0 + 168), v79, v41, v40);
      sub_69198(v0 + 160, &unk_3BDC50);
      v32 = _swiftEmptyArrayStorage[2];
      v42 = _swiftEmptyArrayStorage[3];
      if (v32 >= v42 >> 1)
      {
        sub_64BB4(v42 > 1, v32 + 1, 1);
      }

      v43 = *(v0 + 984);
      ++v37;
      _swiftEmptyArrayStorage[2] = v32 + 1;
      sub_20B5B0(v43, _swiftEmptyArrayStorage + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v32);
      v39 += 40;
      if (v35 == v37)
      {
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

LABEL_58:

  v44 = *(v0 + 1312);
  v45 = *(v0 + 968);
  v32 = *(v44 + 16);
  if (v32 >= v45)
  {
    v46 = *(v0 + 968);
  }

  else
  {
    v46 = *(v44 + 16);
  }

  if (v45)
  {
    v34 = v46;
  }

  else
  {
    v34 = 0;
  }

  sub_2C6608();
  swift_unknownObjectRetain_n();
  v47 = swift_dynamicCastClass();
  if (!v47)
  {
    swift_unknownObjectRelease();
    v47 = _swiftEmptyArrayStorage;
  }

  v48 = v47[2];

  v39 = *(v0 + 1312);
  if (v48 != v32 - v34)
  {
LABEL_78:
    swift_unknownObjectRelease();
    sub_20B468(v39, v39 + 32, v34, (2 * v32) | 1);
    v49 = v73;
    goto LABEL_69;
  }

  v49 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v49)
  {
    v49 = _swiftEmptyArrayStorage;
LABEL_69:
    swift_unknownObjectRelease();
  }

  v50 = *(v0 + 1224);
  v51 = *(v0 + 1376);
  v52 = *(v0 + 1128);
  v53 = *(v0 + 1112);
  v54 = *(v0 + 952);
  sub_28F948(_swiftEmptyArrayStorage);

  v50(v52, v54 + v51, v53);
  if (v49[2])
  {
    v55 = *(v0 + 1380);
    v56 = *(v0 + 1120);
    v57 = *(v0 + 1112);
    v58 = *(v0 + 1000);
    *v58 = v49;
    (*(v56 + 104))(v58, v55, v57);
    (*(v56 + 56))(v58, 0, 1, v57);
  }

  else
  {
    v59 = *(v0 + 1120);
    v60 = *(v0 + 1112);
    v61 = *(v0 + 1000);

    (*(v59 + 56))(v61, 1, 1, v60);
  }

  v62 = *(v0 + 1048);
  v63 = *(v0 + 1040);
  v76 = *(v0 + 1032);
  v64 = *(v0 + 1016);
  v65 = *(v0 + 944);
  sub_2C1108();
  v66 = sub_2C1128();
  (*(*(v66 - 8) + 56))(v64, 0, 1, v66);
  type metadata accessor for Page();
  type metadata accessor for Shelf();
  sub_20B6AC(&qword_3BD4F0, type metadata accessor for Page);
  sub_20B6AC(&qword_3BD4F8, type metadata accessor for Shelf);
  sub_2C1708();
  sub_6620C(&qword_3C6AB0);
  v67 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_2E3F30;
  (*(v63 + 32))(v68 + v67, v62, v76);
  *v65 = v68;
  v69 = enum case for PageUpdateInstruction.appendItems<A, B>(_:);
  v70 = sub_6620C(&qword_3BC238);
  v71 = *(v70 - 8);
  (*(v71 + 104))(v65, v69, v70);
  (*(v71 + 56))(v65, 0, 1, v70);
  (*(*(v0 + 1160) + 8))(*(v0 + 1176), *(v0 + 1152));
  sub_68CD0(v79);
  sub_68CD0(v0 + 808);
  sub_68CD0(v0 + 848);

  v72 = *(v0 + 8);

  return v72();
}

uint64_t sub_20813C()
{
  *(*v1 + 1368) = v0;

  if (v0)
  {
    v2 = sub_209BA4;
  }

  else
  {

    v2 = sub_208258;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_208258()
{
  v1 = *(v0 + 896);
  if (v1 >> 62)
  {
    goto LABEL_47;
  }

  sub_2C65F8();
  sub_2BF848();
  v2 = v1;
  while (1)
  {

    *(v0 + 912) = v2;
    sub_6620C(&qword_3C6AB8);
    sub_72B74(&qword_3C6AC0, &qword_3C6AB8);
    v3 = sub_2C5D28();

    v4 = *(v0 + 1320);
    if ((v3 & 1) == 0)
    {
      break;
    }

    if (v2 >> 62)
    {
      v5 = sub_2C6398();
      if (!v5)
      {
LABEL_49:
        v8 = _swiftEmptyArrayStorage;
LABEL_50:

        goto LABEL_51;
      }
    }

    else
    {
      v5 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
      if (!v5)
      {
        goto LABEL_49;
      }
    }

    v6 = 0;
    v7 = (v0 + 648);
    v77 = *(v0 + 1336);
    v74 = v2 & 0xFFFFFFFFFFFFFF8;
    v75 = v2 & 0xC000000000000001;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v75)
      {
        v9 = sub_2C6208();
      }

      else
      {
        if (v6 >= *(v74 + 16))
        {
          goto LABEL_46;
        }

        v9 = *(v2 + 8 * v6 + 32);
      }

      v10 = v9;
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v12 = sub_2BFAE8();
      if (*(v77 + 16))
      {
        v14 = v8;
        v15 = v5;
        v16 = v2;
        v17 = sub_5D228(v12, v13);
        v19 = v18;

        if (v19)
        {
          sub_691F8(*(v77 + 56) + 40 * v17, v0 + 648);
        }

        else
        {
          *(v0 + 680) = 0;
          *v7 = 0u;
          *(v0 + 664) = 0u;
        }

        v2 = v16;
        v5 = v15;
        v8 = v14;
        v11 = v6 + 1;
      }

      else
      {

        *(v0 + 680) = 0;
        *v7 = 0u;
        *(v0 + 664) = 0u;
      }

      sub_2BF748();

      sub_69198(v0 + 648, &qword_3BDAE8);
      if (*(v0 + 632))
      {
        sub_693D0((v0 + 608), v0 + 568);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_5C0E8(0, v8[2] + 1, 1, v8);
        }

        v21 = v8[2];
        v20 = v8[3];
        if (v21 >= v20 >> 1)
        {
          v8 = sub_5C0E8((v20 > 1), v21 + 1, 1, v8);
        }

        v8[2] = v21 + 1;
        sub_693D0((v0 + 568), &v8[5 * v21 + 4]);
      }

      else
      {
        sub_69198(v0 + 608, &unk_3C2550);
      }

      ++v6;
      if (v11 == v5)
      {
        goto LABEL_50;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    sub_2BF848();

    v2 = sub_2C6388();
  }

  v78 = *(v4 + 16);
  if (v78)
  {
    v22 = 0;
    v8 = _swiftEmptyArrayStorage;
    v23 = (*(v0 + 1320) + 40);
    v24 = *(v0 + 1336);
    while (1)
    {
      if (v22 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (!*(v24 + 16))
      {
        goto LABEL_29;
      }

      v25 = *(v23 - 1);
      v26 = *v23;

      v27 = sub_5D228(v25, v26);
      if ((v28 & 1) == 0)
      {
        break;
      }

      sub_691F8(*(v24 + 56) + 40 * v27, v0 + 488);
      result = sub_20B540(v0 + 488, v0 + 528);
      if (!*(v0 + 552))
      {
        __break(1u);
        return result;
      }

      sub_2BF758();

      sub_69198(v0 + 488, &qword_3BDAE8);
      sub_68CD0(v0 + 528);
      if (*(v0 + 232))
      {
        sub_693D0((v0 + 208), v0 + 408);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_5C0E8(0, v8[2] + 1, 1, v8);
        }

        v31 = v8[2];
        v30 = v8[3];
        if (v31 >= v30 >> 1)
        {
          v8 = sub_5C0E8((v30 > 1), v31 + 1, 1, v8);
        }

        v8[2] = v31 + 1;
        sub_693D0((v0 + 408), &v8[5 * v31 + 4]);
        goto LABEL_31;
      }

LABEL_30:
      sub_69198(v0 + 208, &unk_3C2550);
LABEL_31:
      ++v22;
      v23 += 2;
      if (v78 == v22)
      {
        goto LABEL_43;
      }
    }

LABEL_29:
    *(v0 + 520) = 0;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    sub_69198(v0 + 488, &qword_3BDAE8);
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0;
    goto LABEL_30;
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_43:

LABEL_51:
  v32 = v0 + 448;
  v33 = swift_task_alloc();
  v79 = (v0 + 448);
  *(v33 + 16) = v0 + 448;
  v34 = sub_286E68(sub_20B6F4, v33, v8);

  v35 = *(v34 + 16);
  if (v35)
  {
    v36 = *(v0 + 976);
    sub_64BB4(0, v35, 0);
    v37 = 0;
    v38 = *(v34 + 16);
    v39 = v34 + 32;
    while (v38 != v37)
    {
      if (v37 >= *(v34 + 16))
      {
        goto LABEL_77;
      }

      v40 = *(v0 + 984);
      v41 = *(v0 + 952);
      sub_691F8(v39, v0 + 24);
      *(v0 + 160) = v37;
      sub_693D0((v0 + 24), v0 + 168);
      sub_20A754(v37, (v0 + 168), v79, v41, v40);
      sub_69198(v0 + 160, &unk_3BDC50);
      v32 = _swiftEmptyArrayStorage[2];
      v42 = _swiftEmptyArrayStorage[3];
      if (v32 >= v42 >> 1)
      {
        sub_64BB4(v42 > 1, v32 + 1, 1);
      }

      v43 = *(v0 + 984);
      ++v37;
      _swiftEmptyArrayStorage[2] = v32 + 1;
      sub_20B5B0(v43, _swiftEmptyArrayStorage + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v32);
      v39 += 40;
      if (v35 == v37)
      {
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

LABEL_58:

  v44 = *(v0 + 1312);
  v45 = *(v0 + 968);
  v32 = *(v44 + 16);
  if (v32 >= v45)
  {
    v46 = *(v0 + 968);
  }

  else
  {
    v46 = *(v44 + 16);
  }

  if (v45)
  {
    v34 = v46;
  }

  else
  {
    v34 = 0;
  }

  sub_2C6608();
  swift_unknownObjectRetain_n();
  v47 = swift_dynamicCastClass();
  if (!v47)
  {
    swift_unknownObjectRelease();
    v47 = _swiftEmptyArrayStorage;
  }

  v48 = v47[2];

  v39 = *(v0 + 1312);
  if (v48 != v32 - v34)
  {
LABEL_78:
    swift_unknownObjectRelease();
    sub_20B468(v39, v39 + 32, v34, (2 * v32) | 1);
    v49 = v73;
    goto LABEL_69;
  }

  v49 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v49)
  {
    v49 = _swiftEmptyArrayStorage;
LABEL_69:
    swift_unknownObjectRelease();
  }

  v50 = *(v0 + 1224);
  v51 = *(v0 + 1376);
  v52 = *(v0 + 1128);
  v53 = *(v0 + 1112);
  v54 = *(v0 + 952);
  sub_28F948(_swiftEmptyArrayStorage);

  v50(v52, v54 + v51, v53);
  if (v49[2])
  {
    v55 = *(v0 + 1380);
    v56 = *(v0 + 1120);
    v57 = *(v0 + 1112);
    v58 = *(v0 + 1000);
    *v58 = v49;
    (*(v56 + 104))(v58, v55, v57);
    (*(v56 + 56))(v58, 0, 1, v57);
  }

  else
  {
    v59 = *(v0 + 1120);
    v60 = *(v0 + 1112);
    v61 = *(v0 + 1000);

    (*(v59 + 56))(v61, 1, 1, v60);
  }

  v62 = *(v0 + 1048);
  v63 = *(v0 + 1040);
  v76 = *(v0 + 1032);
  v64 = *(v0 + 1016);
  v65 = *(v0 + 944);
  sub_2C1108();
  v66 = sub_2C1128();
  (*(*(v66 - 8) + 56))(v64, 0, 1, v66);
  type metadata accessor for Page();
  type metadata accessor for Shelf();
  sub_20B6AC(&qword_3BD4F0, type metadata accessor for Page);
  sub_20B6AC(&qword_3BD4F8, type metadata accessor for Shelf);
  sub_2C1708();
  sub_6620C(&qword_3C6AB0);
  v67 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_2E3F30;
  (*(v63 + 32))(v68 + v67, v62, v76);
  *v65 = v68;
  v69 = enum case for PageUpdateInstruction.appendItems<A, B>(_:);
  v70 = sub_6620C(&qword_3BC238);
  v71 = *(v70 - 8);
  (*(v71 + 104))(v65, v69, v70);
  (*(v71 + 56))(v65, 0, 1, v70);
  (*(*(v0 + 1160) + 8))(*(v0 + 1176), *(v0 + 1152));
  sub_68CD0(v79);
  sub_68CD0(v0 + 808);
  sub_68CD0(v0 + 848);

  v72 = *(v0 + 8);

  return v72();
}

uint64_t sub_208DEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_208F28()
{
  sub_68CD0(v0 + 848);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20906C()
{
  v1 = v0[147];
  v2 = v0[145];
  v3 = v0[144];
  (*(v0[137] + 8))(v0[138], v0[136]);
  (*(v2 + 8))(v1, v3);
  sub_68CD0((v0 + 56));
  sub_68CD0((v0 + 101));
  sub_68CD0((v0 + 106));

  v4 = v0[1];

  return v4();
}

uint64_t sub_209200()
{

  if (qword_3BB870 != -1)
  {
    goto LABEL_49;
  }

  while (1)
  {
    v1 = sub_2C00B8();
    sub_57AD8(v1, qword_3C31E8);
    swift_errorRetain();
    v2 = sub_2C0098();
    v3 = sub_2C5DC8();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      v6 = sub_2BE348();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&dword_0, v2, v3, "Failed to fetch store assets: %@", v4, 0xCu);
      sub_69198(v5, &qword_3BFEE0);
    }

    v7 = *(v0 + 1320);

    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = 0;
      v65 = _swiftEmptyArrayStorage;
      v10 = (*(v0 + 1320) + 40);
      v11 = *(v0 + 1336);
      while (1)
      {
        if (v9 >= *(v7 + 16))
        {
          __break(1u);
          goto LABEL_47;
        }

        if (!*(v11 + 16))
        {
          goto LABEL_7;
        }

        v12 = *(v10 - 1);
        v13 = *v10;

        v14 = sub_5D228(v12, v13);
        if ((v15 & 1) == 0)
        {
          break;
        }

        sub_691F8(*(v11 + 56) + 40 * v14, v0 + 328);
        result = sub_20B540(v0 + 328, v0 + 368);
        if (!*(v0 + 392))
        {
          __break(1u);
          return result;
        }

        sub_2BF758();

        sub_69198(v0 + 328, &qword_3BDAE8);
        sub_68CD0(v0 + 368);
        if (*(v0 + 312))
        {
          sub_693D0((v0 + 288), v0 + 248);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v65 = sub_5C0E8(0, v65[2] + 1, 1, v65);
          }

          v18 = v65[2];
          v17 = v65[3];
          if (v18 >= v17 >> 1)
          {
            v65 = sub_5C0E8((v17 > 1), v18 + 1, 1, v65);
          }

          v65[2] = v18 + 1;
          sub_693D0((v0 + 248), &v65[5 * v18 + 4]);
          goto LABEL_9;
        }

LABEL_8:
        sub_69198(v0 + 288, &unk_3C2550);
LABEL_9:
        ++v9;
        v10 += 2;
        if (v8 == v9)
        {
          goto LABEL_21;
        }
      }

LABEL_7:
      *(v0 + 360) = 0;
      *(v0 + 328) = 0u;
      *(v0 + 344) = 0u;
      sub_69198(v0 + 328, &qword_3BDAE8);
      *(v0 + 288) = 0u;
      *(v0 + 304) = 0u;
      *(v0 + 320) = 0;
      goto LABEL_8;
    }

    v65 = _swiftEmptyArrayStorage;
LABEL_21:

    v19 = swift_task_alloc();
    v66 = (v0 + 448);
    *(v19 + 16) = v0 + 448;
    v20 = sub_286E68(sub_20B6F4, v19, v65);

    v21 = *(v20 + 16);
    if (!v21)
    {
      break;
    }

    v22 = *(v0 + 976);
    sub_64BB4(0, v21, 0);
    v23 = 0;
    v24 = *(v20 + 16);
    v25 = v20 + 32;
    while (v24 != v23)
    {
      if (v23 >= *(v20 + 16))
      {
        goto LABEL_48;
      }

      v26 = *(v0 + 984);
      v27 = *(v0 + 952);
      sub_691F8(v25, v0 + 24);
      *(v0 + 160) = v23;
      sub_693D0((v0 + 24), v0 + 168);
      sub_20A754(v23, (v0 + 168), v66, v27, v26);
      sub_69198(v0 + 160, &unk_3BDC50);
      v29 = _swiftEmptyArrayStorage[2];
      v28 = _swiftEmptyArrayStorage[3];
      if (v29 >= v28 >> 1)
      {
        sub_64BB4(v28 > 1, v29 + 1, 1);
      }

      v30 = *(v0 + 984);
      ++v23;
      _swiftEmptyArrayStorage[2] = v29 + 1;
      sub_20B5B0(v30, _swiftEmptyArrayStorage + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v29);
      v25 += 40;
      if (v21 == v23)
      {
        goto LABEL_28;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    swift_once();
  }

LABEL_28:

  v31 = *(v0 + 1312);
  v32 = *(v0 + 968);
  v33 = *(v31 + 16);
  if (v33 >= v32)
  {
    v34 = *(v0 + 968);
  }

  else
  {
    v34 = *(v31 + 16);
  }

  if (v32)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  sub_2C6608();
  swift_unknownObjectRetain_n();
  v36 = swift_dynamicCastClass();
  if (!v36)
  {
    swift_unknownObjectRelease();
    v36 = _swiftEmptyArrayStorage;
  }

  v37 = v36[2];

  v38 = *(v0 + 1312);
  if (v37 == v33 - v35)
  {
    v39 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (!v39)
    {
      v39 = _swiftEmptyArrayStorage;
      goto LABEL_39;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    sub_20B468(v38, v38 + 32, v35, (2 * v33) | 1);
    v39 = v63;
LABEL_39:
    swift_unknownObjectRelease();
  }

  v40 = *(v0 + 1224);
  v41 = *(v0 + 1376);
  v42 = *(v0 + 1128);
  v43 = *(v0 + 1112);
  v44 = *(v0 + 952);
  sub_28F948(_swiftEmptyArrayStorage);

  v40(v42, v44 + v41, v43);
  if (v39[2])
  {
    v45 = *(v0 + 1380);
    v46 = *(v0 + 1120);
    v47 = *(v0 + 1112);
    v48 = *(v0 + 1000);
    *v48 = v39;
    (*(v46 + 104))(v48, v45, v47);
    (*(v46 + 56))(v48, 0, 1, v47);
  }

  else
  {
    v49 = *(v0 + 1120);
    v50 = *(v0 + 1112);
    v51 = *(v0 + 1000);

    (*(v49 + 56))(v51, 1, 1, v50);
  }

  v52 = *(v0 + 1048);
  v53 = *(v0 + 1040);
  v64 = *(v0 + 1032);
  v54 = *(v0 + 1016);
  v55 = *(v0 + 944);
  sub_2C1108();
  v56 = sub_2C1128();
  (*(*(v56 - 8) + 56))(v54, 0, 1, v56);
  type metadata accessor for Page();
  type metadata accessor for Shelf();
  sub_20B6AC(&qword_3BD4F0, type metadata accessor for Page);
  sub_20B6AC(&qword_3BD4F8, type metadata accessor for Shelf);
  sub_2C1708();
  sub_6620C(&qword_3C6AB0);
  v57 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_2E3F30;
  (*(v53 + 32))(v58 + v57, v52, v64);
  *v55 = v58;
  v59 = enum case for PageUpdateInstruction.appendItems<A, B>(_:);
  v60 = sub_6620C(&qword_3BC238);
  v61 = *(v60 - 8);
  (*(v61 + 104))(v55, v59, v60);
  (*(v61 + 56))(v55, 0, 1, v60);
  (*(*(v0 + 1160) + 8))(*(v0 + 1176), *(v0 + 1152));
  sub_68CD0(v66);
  sub_68CD0(v0 + 808);
  sub_68CD0(v0 + 848);

  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_209BA4()
{

  if (qword_3BB870 != -1)
  {
    goto LABEL_49;
  }

  while (1)
  {
    v1 = sub_2C00B8();
    sub_57AD8(v1, qword_3C31E8);
    swift_errorRetain();
    v2 = sub_2C0098();
    v3 = sub_2C5DC8();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      v6 = sub_2BE348();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&dword_0, v2, v3, "Failed to fetch store assets: %@", v4, 0xCu);
      sub_69198(v5, &qword_3BFEE0);
    }

    v7 = *(v0 + 1320);

    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = 0;
      v65 = _swiftEmptyArrayStorage;
      v10 = (*(v0 + 1320) + 40);
      v11 = *(v0 + 1336);
      while (1)
      {
        if (v9 >= *(v7 + 16))
        {
          __break(1u);
          goto LABEL_47;
        }

        if (!*(v11 + 16))
        {
          goto LABEL_7;
        }

        v12 = *(v10 - 1);
        v13 = *v10;

        v14 = sub_5D228(v12, v13);
        if ((v15 & 1) == 0)
        {
          break;
        }

        sub_691F8(*(v11 + 56) + 40 * v14, v0 + 328);
        result = sub_20B540(v0 + 328, v0 + 368);
        if (!*(v0 + 392))
        {
          __break(1u);
          return result;
        }

        sub_2BF758();

        sub_69198(v0 + 328, &qword_3BDAE8);
        sub_68CD0(v0 + 368);
        if (*(v0 + 312))
        {
          sub_693D0((v0 + 288), v0 + 248);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v65 = sub_5C0E8(0, v65[2] + 1, 1, v65);
          }

          v18 = v65[2];
          v17 = v65[3];
          if (v18 >= v17 >> 1)
          {
            v65 = sub_5C0E8((v17 > 1), v18 + 1, 1, v65);
          }

          v65[2] = v18 + 1;
          sub_693D0((v0 + 248), &v65[5 * v18 + 4]);
          goto LABEL_9;
        }

LABEL_8:
        sub_69198(v0 + 288, &unk_3C2550);
LABEL_9:
        ++v9;
        v10 += 2;
        if (v8 == v9)
        {
          goto LABEL_21;
        }
      }

LABEL_7:
      *(v0 + 360) = 0;
      *(v0 + 328) = 0u;
      *(v0 + 344) = 0u;
      sub_69198(v0 + 328, &qword_3BDAE8);
      *(v0 + 288) = 0u;
      *(v0 + 304) = 0u;
      *(v0 + 320) = 0;
      goto LABEL_8;
    }

    v65 = _swiftEmptyArrayStorage;
LABEL_21:

    v19 = swift_task_alloc();
    v66 = (v0 + 448);
    *(v19 + 16) = v0 + 448;
    v20 = sub_286E68(sub_20B6F4, v19, v65);

    v21 = *(v20 + 16);
    if (!v21)
    {
      break;
    }

    v22 = *(v0 + 976);
    sub_64BB4(0, v21, 0);
    v23 = 0;
    v24 = *(v20 + 16);
    v25 = v20 + 32;
    while (v24 != v23)
    {
      if (v23 >= *(v20 + 16))
      {
        goto LABEL_48;
      }

      v26 = *(v0 + 984);
      v27 = *(v0 + 952);
      sub_691F8(v25, v0 + 24);
      *(v0 + 160) = v23;
      sub_693D0((v0 + 24), v0 + 168);
      sub_20A754(v23, (v0 + 168), v66, v27, v26);
      sub_69198(v0 + 160, &unk_3BDC50);
      v29 = _swiftEmptyArrayStorage[2];
      v28 = _swiftEmptyArrayStorage[3];
      if (v29 >= v28 >> 1)
      {
        sub_64BB4(v28 > 1, v29 + 1, 1);
      }

      v30 = *(v0 + 984);
      ++v23;
      _swiftEmptyArrayStorage[2] = v29 + 1;
      sub_20B5B0(v30, _swiftEmptyArrayStorage + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v29);
      v25 += 40;
      if (v21 == v23)
      {
        goto LABEL_28;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    swift_once();
  }

LABEL_28:

  v31 = *(v0 + 1312);
  v32 = *(v0 + 968);
  v33 = *(v31 + 16);
  if (v33 >= v32)
  {
    v34 = *(v0 + 968);
  }

  else
  {
    v34 = *(v31 + 16);
  }

  if (v32)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  sub_2C6608();
  swift_unknownObjectRetain_n();
  v36 = swift_dynamicCastClass();
  if (!v36)
  {
    swift_unknownObjectRelease();
    v36 = _swiftEmptyArrayStorage;
  }

  v37 = v36[2];

  v38 = *(v0 + 1312);
  if (v37 == v33 - v35)
  {
    v39 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (!v39)
    {
      v39 = _swiftEmptyArrayStorage;
      goto LABEL_39;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    sub_20B468(v38, v38 + 32, v35, (2 * v33) | 1);
    v39 = v63;
LABEL_39:
    swift_unknownObjectRelease();
  }

  v40 = *(v0 + 1224);
  v41 = *(v0 + 1376);
  v42 = *(v0 + 1128);
  v43 = *(v0 + 1112);
  v44 = *(v0 + 952);
  sub_28F948(_swiftEmptyArrayStorage);

  v40(v42, v44 + v41, v43);
  if (v39[2])
  {
    v45 = *(v0 + 1380);
    v46 = *(v0 + 1120);
    v47 = *(v0 + 1112);
    v48 = *(v0 + 1000);
    *v48 = v39;
    (*(v46 + 104))(v48, v45, v47);
    (*(v46 + 56))(v48, 0, 1, v47);
  }

  else
  {
    v49 = *(v0 + 1120);
    v50 = *(v0 + 1112);
    v51 = *(v0 + 1000);

    (*(v49 + 56))(v51, 1, 1, v50);
  }

  v52 = *(v0 + 1048);
  v53 = *(v0 + 1040);
  v64 = *(v0 + 1032);
  v54 = *(v0 + 1016);
  v55 = *(v0 + 944);
  sub_2C1108();
  v56 = sub_2C1128();
  (*(*(v56 - 8) + 56))(v54, 0, 1, v56);
  type metadata accessor for Page();
  type metadata accessor for Shelf();
  sub_20B6AC(&qword_3BD4F0, type metadata accessor for Page);
  sub_20B6AC(&qword_3BD4F8, type metadata accessor for Shelf);
  sub_2C1708();
  sub_6620C(&qword_3C6AB0);
  v57 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_2E3F30;
  (*(v53 + 32))(v58 + v57, v52, v64);
  *v55 = v58;
  v59 = enum case for PageUpdateInstruction.appendItems<A, B>(_:);
  v60 = sub_6620C(&qword_3BC238);
  v61 = *(v60 - 8);
  (*(v61 + 104))(v55, v59, v60);
  (*(v61 + 56))(v55, 0, 1, v60);
  (*(*(v0 + 1160) + 8))(*(v0 + 1176), *(v0 + 1152));
  sub_68CD0(v66);
  sub_68CD0(v0 + 808);
  sub_68CD0(v0 + 848);

  v62 = *(v0 + 8);

  return v62();
}

id sub_20A548@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2BF368();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  (*(v5 + 104))(v8, enum case for SeriesType.audiobook(_:), v4, v6);
  sub_20B6AC(&qword_3C1560, &type metadata accessor for SeriesType);
  sub_2C5A88();
  sub_2C5A88();
  if (v13[2] == v13[0] && v13[3] == v13[1])
  {
    (*(v5 + 8))(v8, v4);

LABEL_5:
    sub_2BF268();
    goto LABEL_7;
  }

  v10 = sub_2C65B8();
  (*(v5 + 8))(v8, v4);

  if (v10)
  {
    goto LABEL_5;
  }

  sub_2BF818();
LABEL_7:
  result = swift_dynamicCastClass();
  v12 = result;
  if (result)
  {
    result = v9;
  }

  *a2 = v12;
  return result;
}

uint64_t sub_20A754@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v85 = a4;
  v84 = a1;
  v78 = a5;
  v7 = sub_2C4BD8();
  __chkstk_darwin(v7 - 8);
  v82 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_6620C(&qword_3C0820);
  __chkstk_darwin(v9 - 8);
  v83 = v69 - v10;
  v11 = sub_6620C(&qword_3BF3C8);
  __chkstk_darwin(v11 - 8);
  v81 = v69 - v12;
  v13 = sub_6620C(&qword_3BDF58);
  __chkstk_darwin(v13 - 8);
  v90 = v69 - v14;
  v15 = sub_2C5018();
  v91 = *(v15 - 8);
  v92 = v15;
  __chkstk_darwin(v15);
  v89 = v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_2C21D8();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v75 = v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_2C2258();
  v18 = *(v71 - 8);
  __chkstk_darwin(v71);
  v73 = v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_2C2168();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v88 = v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_6620C(&qword_3BDCF8);
  __chkstk_darwin(v21 - 8);
  v23 = v69 - v22;
  v24 = sub_2C1348();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v86 = v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = v69 - v28;
  __chkstk_darwin(v30);
  v32 = v69 - v31;
  sub_72084(a3, a3[3]);
  sub_2BF3B8();
  sub_691F8(a2, &v98);
  sub_2C2318();
  sub_2C1298();

  sub_69198(v23, &qword_3BDCF8);
  v77 = v25;
  v35 = *(v25 + 16);
  v34 = v25 + 16;
  v33 = v35;
  v87 = v29;
  v76 = v32;
  v93 = v24;
  v35(v29, v32, v24);
  sub_691F8(a2, &v98);
  result = type metadata accessor for SeriesSeeAllPaginationIntent();
  if (__OFADD__(*(v85 + *(result + 28)), v84))
  {
    __break(1u);
  }

  else
  {
    v85 = v34;
    sub_72084(a2, a2[3]);
    v70 = v33;
    sub_2BF8F8();
    v84 = sub_2C2188();
    v69[1] = v37;
    sub_72084(&v98, v99);
    sub_2BFA68();
    v69[0] = v38;
    sub_72084(&v98, v99);
    sub_2BF3B8();
    v39 = v78;
    (*(v18 + 104))(v73, enum case for Metrics.IdType.itsId(_:), v71);
    sub_72084(&v98, v99);
    v40 = sub_2BFA38();
    v41 = &enum case for Metrics.ImpressionType.uppLockup(_:);
    if ((v40 & 1) == 0)
    {
      v41 = &enum case for Metrics.ImpressionType.lockup(_:);
    }

    (*(v72 + 104))(v75, *v41, v74);
    sub_72084(&v98, v99);
    sub_2BFA58();
    sub_2C2158();
    v42 = v89;
    sub_2C2138();
    v43 = v86;
    v44 = v70;
    v70(v86, v87, v93);
    v46 = v90;
    v45 = v91;
    v47 = v92;
    (*(v91 + 16))(v90, v42, v92);
    v48 = *(v45 + 56);
    v48(v46, 0, 1, v47);
    v49 = sub_2BEE38();
    v50 = *(*(v49 - 8) + 56);
    v51 = v81;
    v50(v81, 1, 1, v49);
    v48(v39, 1, 1, v47);
    v52 = type metadata accessor for ListItemComponentModel();
    v53 = v39 + v52[6];
    *(v53 + 32) = 0;
    *v53 = 0u;
    *(v53 + 16) = 0u;
    v54 = v52[7];
    v84 = v54;
    v74 = sub_2C5658();
    v55 = *(v74 - 8);
    v73 = *(v55 + 56);
    v75 = (v55 + 56);
    (v73)(v39 + v54, 1, 1, v74);
    v56 = v52[8];
    v50((v39 + v56), 1, 1, v49);
    v44(v39 + v52[5], v43, v93);
    sub_2C1288();
    v57 = v95;
    v58 = v96;
    v59 = sub_72084(v94, v95);
    v97[3] = v57;
    v97[4] = *(v58 + 8);
    v60 = sub_720C8(v97);
    (*(*(v57 - 8) + 16))(v60, v59, v57);
    sub_A9708(v97, v53, &unk_3BDC90);
    sub_68CD0(v94);
    v61 = v90;
    sub_15734C(v90, v39, &qword_3BDF58);
    sub_15734C(v51, v39 + v56, &qword_3BF3C8);
    sub_6620C(&qword_3C08C8);
    v62 = *(sub_2C5648() - 8);
    v63 = (*(v62 + 80) + 32) & ~*(v62 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_2E3F30;
    v65 = (v64 + v63);
    *v65 = 0xD00000000000002DLL;
    v65[1] = 0x8000000000304480;
    (*(v62 + 104))();
    sub_2C4BC8();
    v66 = v83;
    sub_2C5638();
    sub_69198(v51, &qword_3BF3C8);
    sub_69198(v61, &qword_3BDF58);
    v67 = *(v77 + 8);
    v68 = v93;
    v67(v86, v93);
    (*(v91 + 8))(v89, v92);
    (*(v79 + 8))(v88, v80);
    v67(v87, v68);
    v67(v76, v68);
    (v73)(v66, 0, 1, v74);
    sub_A9708(v66, v39 + v84, &qword_3C0820);
    return sub_68CD0(&v98);
  }

  return result;
}

uint64_t sub_20B3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_7100C;

  return sub_2055F4(a1, a2, a3, v8);
}

void sub_20B468(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_6620C(&qword_3BF590);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_20B540(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BDAE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B5B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListItemComponentModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B6AC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20B70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a1;
  v44 = a4;
  v41 = a3;
  v42 = a2;
  v40 = sub_2BE828();
  v4 = *(v40 - 8);
  __chkstk_darwin(v40);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&unk_3CA260);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_6620C(&qword_3BC238);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - v12;
  v14 = sub_2C4BF8();
  __chkstk_darwin(v14 - 8);
  sub_6620C(&qword_3BC240);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2E15C0;
  sub_2C4BE8();
  (*(v11 + 104))(v13, enum case for PageUpdateInstruction.startPendingData<A, B>(_:), v10);
  v16 = sub_2BF088();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  *(v15 + 56) = sub_6620C(&qword_3BD478);
  *(v15 + 64) = sub_72B74(&qword_3BD480, &qword_3BD478);
  sub_720C8((v15 + 32));
  type metadata accessor for Page();
  type metadata accessor for Shelf();
  sub_2106DC(&qword_3BD4F0, type metadata accessor for Page);
  sub_2106DC(&qword_3BD4F8, type metadata accessor for Shelf);
  sub_2C10D8();
  v17 = sub_6620C(&qword_3C2BE8);
  v18 = *(v17 + 48);
  v19 = sub_2BE8F8();
  (*(*(v19 - 8) + 16))(v6, v42, v19);
  v20 = sub_2C17D8();
  v22 = v21;
  v23._rawValue = &off_389CA0;
  v45._countAndFlagsBits = v20;
  v45._object = v22;
  v24 = sub_2C63E8(v23, v45);

  if (v24 > 2)
  {
    v28 = sub_2BE8A8();
    (*(*(v28 - 8) + 56))(&v6[v18], 1, 1, v28);
  }

  else
  {
    v25 = **(&off_392700 + v24);
    v26 = sub_2BE8A8();
    v27 = *(v26 - 8);
    (*(v27 + 104))(&v6[v18], v25, v26);
    (*(v27 + 56))(&v6[v18], 0, 1, v26);
  }

  v29 = *(v17 + 64);
  result = sub_2BF718();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v41 + 16))
  {
    sub_2C17E8();
    v31 = sub_2C17D8();
    v33 = sub_20CAC8(v31, v32);
    if (v33 > 2)
    {
      if (v33 == 3)
      {
        v34 = &enum case for SortBy.popularity(_:);
      }

      else
      {
        if (v33 != 4)
        {
          v38 = sub_2BEEF8();
          (*(*(v38 - 8) + 56))(&v6[v29], 1, 1, v38);
          goto LABEL_17;
        }

        v34 = &enum case for SortBy.title(_:);
      }
    }

    else if (v33)
    {
      if (v33 == 1)
      {
        v34 = &enum case for SortBy.descending(_:);
      }

      else
      {
        v34 = &enum case for SortBy.releaseDate(_:);
      }
    }

    else
    {
      v34 = &enum case for SortBy.ascending(_:);
    }

    v35 = *v34;
    v36 = sub_2BEEF8();
    v37 = *(v36 - 8);
    (*(v37 + 104))(&v6[v29], v35, v36);
    (*(v37 + 56))(&v6[v29], 0, 1, v36);
LABEL_17:
    (*(v4 + 104))(v6, enum case for AppAnalyticsAction.Type.reportSeriesFilter(_:), v40);
    *(v15 + 96) = sub_2BE858();
    *(v15 + 104) = sub_2106DC(&qword_3CA250, &type metadata accessor for AppAnalyticsAction);
    sub_720C8((v15 + 72));
    sub_2BE838();
    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_20BE1C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_2BE828();
  v30 = *(v5 - 8);
  v31 = v5;
  __chkstk_darwin(v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2BE858();
  v32 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2C10A8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6620C(&qword_3BC240);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2E3F30;
  (*(v12 + 16))(v14, a2, v11);
  *(v15 + 56) = sub_2C10C8();
  *(v15 + 64) = sub_2106DC(&qword_3C6B00, &type metadata accessor for PageScrollAction);
  sub_720C8((v15 + 32));
  sub_2C10B8();
  v16 = sub_2C17D8();
  v18 = v17;
  v19._rawValue = &off_389CA0;
  v36._countAndFlagsBits = v16;
  v36._object = v18;
  v20 = sub_2C63E8(v19, v36);

  if (!v20)
  {

LABEL_7:
    sub_72084(a3, a3[3]);
    v22 = sub_2BF3B8();
    v24 = v23;
    sub_72084(a3, a3[3]);
    v25 = sub_2BF2C8();
    *v7 = v22;
    *(v7 + 1) = v24;
    *(v7 + 2) = v25;
    v7[24] = v26 & 1;
    (*(v30 + 104))(v7, enum case for AppAnalyticsAction.Type.reportAllInSeriesView(_:), v31);
    sub_2BE838();
    v15 = sub_5C28C((&dword_0 + 1), 2, 1, v15);
    v34 = v8;
    v35 = sub_2106DC(&qword_3CA250, &type metadata accessor for AppAnalyticsAction);
    v27 = sub_720C8(&v33);
    v28 = v32;
    (*(v32 + 16))(v27, v10, v8);
    *(v15 + 16) = 2;
    sub_68D1C(&v33, v15 + 72);
    (*(v28 + 8))(v10, v8);
    return v15;
  }

  if (v20 == 1 || v20 == 2)
  {
    v21 = sub_2C65B8();

    if (v21)
    {
      goto LABEL_7;
    }
  }

  return v15;
}

uint64_t sub_20C274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  v44 = a4;
  v40[1] = a1;
  v5 = sub_2BE828();
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&unk_3CA260);
  __chkstk_darwin(v8 - 8);
  v10 = v40 - v9;
  v11 = sub_6620C(&qword_3BC238);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v40 - v13;
  v15 = sub_2C4BF8();
  __chkstk_darwin(v15 - 8);
  sub_6620C(&qword_3BC240);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2E15C0;
  sub_2C4BE8();
  (*(v12 + 104))(v14, enum case for PageUpdateInstruction.startPendingData<A, B>(_:), v11);
  v17 = sub_2BF088();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  *(v16 + 56) = sub_6620C(&qword_3BD478);
  *(v16 + 64) = sub_72B74(&qword_3BD480, &qword_3BD478);
  sub_720C8((v16 + 32));
  type metadata accessor for Page();
  type metadata accessor for Shelf();
  sub_2106DC(&qword_3BD4F0, type metadata accessor for Page);
  sub_2106DC(&qword_3BD4F8, type metadata accessor for Shelf);
  sub_2C10D8();
  v18 = sub_6620C(&qword_3C2BE8);
  v19 = *(v18 + 48);
  v20 = sub_2BE8F8();
  result = (*(*(v20 - 8) + 16))(v7, v43, v20);
  if (*(a3 + 16) > v44)
  {
    sub_2C17E8();
    v22 = sub_2C17D8();
    v24 = v23;
    v25._rawValue = &off_389CA0;
    v45._countAndFlagsBits = v22;
    v45._object = v24;
    v26 = sub_2C63E8(v25, v45);

    if (v26 > 2)
    {
      v30 = sub_2BE8A8();
      (*(*(v30 - 8) + 56))(&v7[v19], 1, 1, v30);
    }

    else
    {
      v27 = **(&off_392700 + v26);
      v28 = sub_2BE8A8();
      v29 = *(v28 - 8);
      (*(v29 + 104))(&v7[v19], v27, v28);
      (*(v29 + 56))(&v7[v19], 0, 1, v28);
    }

    v31 = *(v18 + 64);
    v32 = sub_2C17D8();
    v34 = sub_20CAC8(v32, v33);
    if (v34 > 2)
    {
      if (v34 == 3)
      {
        v35 = &enum case for SortBy.popularity(_:);
      }

      else
      {
        if (v34 != 4)
        {
          v39 = sub_2BEEF8();
          (*(*(v39 - 8) + 56))(&v7[v31], 1, 1, v39);
          goto LABEL_16;
        }

        v35 = &enum case for SortBy.title(_:);
      }
    }

    else if (v34)
    {
      if (v34 == 1)
      {
        v35 = &enum case for SortBy.descending(_:);
      }

      else
      {
        v35 = &enum case for SortBy.releaseDate(_:);
      }
    }

    else
    {
      v35 = &enum case for SortBy.ascending(_:);
    }

    v36 = *v35;
    v37 = sub_2BEEF8();
    v38 = *(v37 - 8);
    (*(v38 + 104))(&v7[v31], v36, v37);
    (*(v38 + 56))(&v7[v31], 0, 1, v37);
LABEL_16:
    (*(v41 + 104))(v7, enum case for AppAnalyticsAction.Type.reportSeriesFilter(_:), v42);
    *(v16 + 96) = sub_2BE858();
    *(v16 + 104) = sub_2106DC(&qword_3CA250, &type metadata accessor for AppAnalyticsAction);
    sub_720C8((v16 + 72));
    sub_2BE838();
    return v16;
  }

  __break(1u);
  return result;
}

uint64_t sub_20C974(uint64_t a1, uint64_t a2)
{
  v3 = sub_2C10A8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6620C(&qword_3BC240);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2E3F30;
  (*(v4 + 16))(v6, a2, v3);
  *(v7 + 56) = sub_2C10C8();
  *(v7 + 64) = sub_2106DC(&qword_3C6B00, &type metadata accessor for PageScrollAction);
  sub_720C8((v7 + 32));
  sub_2C10B8();
  return v7;
}

uint64_t sub_20CAC8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_389C08;
  v6._object = a2;
  v4 = sub_2C63E8(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_20CB14(void *a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4, unint64_t a5)
{
  v247 = a5;
  v269 = a4;
  v223 = a3;
  v261 = a2;
  v266 = a1;
  v224 = sub_2BE8F8();
  v248 = *(v224 - 8);
  __chkstk_darwin(v224);
  v216 = v5;
  v232 = &v199 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = sub_2C06A8();
  v228 = *(v222 - 8);
  __chkstk_darwin(v222);
  v226 = &v199 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = sub_2C17E8();
  v235 = *(v227 - 8);
  __chkstk_darwin(v227);
  v225 = &v199 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = sub_2C10A8();
  v233 = *(v234 - 8);
  v8 = __chkstk_darwin(v234);
  v217 = &v199 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = v9;
  __chkstk_darwin(v8);
  v231 = (&v199 - v10);
  v230 = sub_2BF738();
  v229 = *(v230 - 1);
  __chkstk_darwin(v230);
  v214 = v11;
  v246 = &v199 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = sub_2C1FE8();
  v267 = *(v263 - 8);
  __chkstk_darwin(v263);
  v254 = &v199 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_6620C(&unk_3CA260);
  __chkstk_darwin(v13 - 8);
  v253 = (&v199 - v14);
  v15 = sub_6620C(&qword_3C6AD0);
  v16 = __chkstk_darwin(v15 - 8);
  v244 = &v199 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v221 = &v199 - v18;
  v19 = sub_6620C(&qword_3BEF80);
  v20 = __chkstk_darwin(v19 - 8);
  v256 = &v199 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v220 = &v199 - v22;
  v273 = sub_2C5418();
  v276 = *(v273 - 8);
  __chkstk_darwin(v273);
  v265 = &v199 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = sub_2C5288();
  v275 = *(v272 - 8);
  __chkstk_darwin(v272);
  v268 = &v199 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = sub_2BFDD8();
  v274 = *(v271 - 8);
  v25 = __chkstk_darwin(v271);
  *&v264 = &v199 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v213 = &v199 - v27;
  v260 = sub_2C22F8();
  v28 = *(v260 - 1);
  __chkstk_darwin(v260);
  v30 = &v199 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2C2208();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v199 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2C2178();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = &v199 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = sub_2C4BF8();
  v243 = *(v270 - 8);
  __chkstk_darwin(v270);
  v40 = &v199 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v255) = *v261;
  v245 = *v269;
  v282 = &_swiftEmptyArrayStorage;
  v281 = &_swiftEmptyArrayStorage;
  (*(v36 + 104))(v38, enum case for Metrics.TargetType.button(_:), v35);
  (*(v32 + 104))(v34, enum case for Metrics.ClickActionType.navigate(_:), v31);
  sub_2C22A8();
  v269 = v40;
  sub_2C2118();
  (*(v28 + 8))(v30, v260);
  (*(v32 + 8))(v34, v31);
  (*(v36 + 8))(v38, v35);
  sub_72084(v266, v266[3]);
  v41 = v262;
  sub_2BF328();
  if (v41)
  {
    return (*(v243 + 8))(v269, v270);
  }

  v206 = 0;
  swift_getAssociatedTypeWitness();
  sub_6620C(&qword_3BC2C8);
  v242 = sub_2C6358();

  v211 = sub_6620C(&qword_3BC1C0);
  v219 = *(v235 + 72);
  v210 = *(v235 + 80);
  v43 = (v210 + 32) & ~v210;
  v212 = v43;
  v208 = 2 * v219;
  v205 = 3 * v219;
  v44 = swift_allocObject();
  v209 = xmmword_2E4110;
  v204 = v44;
  *(v44 + 1) = xmmword_2E4110;
  v218 = v44 + v43;
  v45 = v268;
  sub_2C5278();
  LODWORD(v262) = enum case for LocalizerLookupStrategy.default(_:);
  v46 = v276;
  v47 = *(v276 + 104);
  v261 = (v276 + 104);
  v260 = v47;
  v48 = v265;
  v49 = v273;
  v47(v265);
  sub_2BFD98();
  v50 = *(v46 + 8);
  v276 = v46 + 8;
  v259 = v50;
  v50(v48, v49);
  v51 = *(v275 + 8);
  v275 += 8;
  v258 = v51;
  v51(v45, v272);
  v52 = *(v274 + 56);
  v274 += 56;
  v257 = v52;
  v52(v220, 1, 1, v271);
  v252 = sub_2C1D38();
  v53 = *(v252 - 8);
  v251 = *(v53 + 56);
  v250 = v53 + 56;
  (v251)(v221, 1, 1, v252);
  v236 = sub_2BF088();
  v54 = *(v236 - 8);
  v238 = *(v54 + 56);
  v237 = v54 + 56;
  v55 = v253;
  v238();
  v279 = type metadata accessor for SeriesListFilterAction();
  v56 = v279;
  v207 = sub_2106DC(&qword_3C6AD8, type metadata accessor for SeriesListFilterAction);
  v280 = v207;
  v57 = sub_720C8(&v278);
  v58 = v266;
  sub_691F8(v266, (v57 + 1));
  v59 = *(v56 + 28);
  v60 = *(v243 + 16);
  v240 = v243 + 16;
  v239 = v60;
  v60(v57 + v59, v269, v270);
  sub_78628(v55, v57 + *(v56 + 32));
  *v57 = 0;
  *(v57 + 48) = v255;
  sub_2100C4(v55);
  sub_72084(v58, v58[3]);
  sub_2BF2D8();
  v61 = v254;
  *v254 = v245 == 0;
  LODWORD(v241) = enum case for ToolbarActionMenuItemButtonType.toggle(_:);
  v62 = *(v267 + 104);
  v267 += 104;
  v249 = v62;
  (v62)(v61);
  sub_2C17C8();
  v63 = v268;
  sub_2C5278();
  v64 = v273;
  (v260)(v48, v262, v273);
  v202 = 0xD000000000000032;
  sub_2BFD98();
  v259(v48, v64);
  v258(v63, v272);
  v65 = v256;
  v257(v256, 1, 1, v271);
  v66 = v244;
  (v251)(v244, 1, 1, v252);
  (v238)(v55, 1, 1, v236);
  v203 = v56;
  v279 = v56;
  v280 = v207;
  v67 = sub_720C8(&v278);
  sub_691F8(v58, (v67 + 1));
  v239(v67 + *(v56 + 28), v269, v270);
  sub_78628(v55, v67 + *(v56 + 32));
  *v67 = 1;
  *(v67 + 48) = v255;
  sub_2100C4(v55);
  LOBYTE(v277) = 1;
  sub_1FA070(v242);
  sub_72084(v58, v58[3]);
  sub_2BF2D8();
  *v61 = v245 == 1;
  (v249)(v61, v241, v263);
  sub_2C17C8();
  v68 = v268;
  sub_2C5278();
  v69 = v265;
  v70 = v273;
  (v260)(v265, v262, v273);
  sub_2BFD98();
  v259(v69, v70);
  v258(v68, v272);
  v257(v65, 1, 1, v271);
  (v251)(v66, 1, 1, v252);
  v71 = v253;
  (v238)(v253, 1, 1, v236);
  v72 = v203;
  v279 = v203;
  v280 = v207;
  v73 = sub_720C8(&v278);
  sub_691F8(v58, (v73 + 1));
  v239(v73 + *(v72 + 28), v269, v270);
  sub_78628(v71, v73 + *(v72 + 32));
  *v73 = 2;
  *(v73 + 48) = v255;
  sub_2100C4(v71);
  LOBYTE(v277) = 2;
  sub_1FA070(v242);
  sub_72084(v58, v58[3]);
  sub_2BF2D8();
  *v61 = v245 == 2;
  (v249)(v61, v241, v263);
  sub_2C17C8();
  sub_10F5FC(v204);
  sub_72084(v58, v58[3]);
  LOBYTE(v73) = sub_2BF348();
  v74 = v212;
  v75 = swift_allocObject();
  *(v75 + 16) = v209;
  v213 = v75;
  v221 = (v75 + v74);
  v220 = (v229 + 104);
  if (v73)
  {
    v76 = v268;
    sub_2C5278();
    v77 = v265;
    v78 = v273;
    (v260)(v265, v262, v273);
    sub_2BFD98();
    v259(v77, v78);
    v258(v76, v272);
    v257(v256, 1, 1, v271);
    v79 = v244;
    (v251)(v244, 1, 1, v252);
    v80 = v229;
    v207 = *(v229 + 104);
    v81 = v246;
    v82 = v230;
    v207(v246, enum case for SeriesListSortOrder.ascending(_:), v230);
    v83 = v253;
    v238();
    v84 = type metadata accessor for SeriesListSortAction();
    v279 = v84;
    v205 = sub_2106DC(&qword_3C6AE0, type metadata accessor for SeriesListSortAction);
    v280 = v205;
    v85 = sub_720C8(&v278);
    v86 = *(v80 + 16);
    v203 = v80 + 16;
    v204 = v86;
    v218 = (v80 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v87 = v81;
    v86(v85, v81, v82);
    v88 = v266;
    sub_691F8(v266, v85 + v84[5]);
    v239(v85 + v84[7], v269, v270);
    sub_78628(v83, v85 + v84[8]);
    *(v85 + v84[6]) = v255;
    sub_2100C4(v83);
    v89 = *(v80 + 8);
    v201 = v80 + 8;
    v202 = v89;
    v89(v87, v82);
    v277 = v242;
    v200 = sub_6620C(&qword_3BDC38);
    v199 = sub_72B74(&qword_3C5DF0, &qword_3BDC38);
    sub_2C5D28();
    sub_72084(v88, v88[3]);
    sub_2BF2D8();
    v90 = sub_2BF718() == 0;
    *v254 = v90;
    v249();
    v91 = v256;
    sub_2C17C8();
    v92 = v76;
    sub_2C5278();
    v93 = v265;
    v94 = v273;
    (v260)(v265, v262, v273);
    sub_2BFD98();
    v259(v93, v94);
    v258(v92, v272);
    v257(v91, 1, 1, v271);
    v95 = v79;
    (v251)(v79, 1, 1, v252);
    v96 = v246;
    v97 = v230;
    v207(v246, enum case for SeriesListSortOrder.descending(_:), v230);
    v98 = v253;
    (v238)(v253, 1, 1, v236);
    v279 = v84;
    v280 = v205;
    v99 = sub_720C8(&v278);
    v204(v99, v96, v97);
    sub_691F8(v88, v99 + v84[5]);
    v239(v99 + v84[7], v269, v270);
    sub_78628(v98, v99 + v84[8]);
    *(v99 + v84[6]) = v255;
    sub_2100C4(v98);
    v202(v96, v97);
    v277 = v242;
    sub_2C5D28();
    sub_72084(v88, v88[3]);
    sub_2BF2D8();
    v100 = sub_2BF718() == 1;
    *v254 = v100;
    v249();
    v101 = v97;
    v102 = v256;
    v103 = v95;
    sub_2C17C8();
    v104 = v268;
    sub_2C5278();
    v105 = v265;
    v106 = v273;
    (v260)(v265, v262, v273);
    sub_2BFD98();
    v259(v105, v106);
    v258(v104, v272);
    v257(v102, 1, 1, v271);
    (v251)(v103, 1, 1, v252);
    v107 = v246;
    v207(v246, enum case for SeriesListSortOrder.releaseDate(_:), v101);
    v108 = v253;
    (v238)(v253, 1, 1, v236);
    v279 = v84;
    v280 = v205;
    v109 = sub_720C8(&v278);
    v204(v109, v107, v101);
    v110 = v266;
    sub_691F8(v266, v109 + v84[5]);
    v239(v109 + v84[7], v269, v270);
    sub_78628(v108, v109 + v84[8]);
    *(v109 + v84[6]) = v255;
    sub_2100C4(v108);
    v202(v107, v101);
    v277 = v242;
    sub_2C5D28();

    sub_72084(v110, v110[3]);
  }

  else
  {
    v112 = v268;
    sub_2C5278();
    v113 = v265;
    v114 = v273;
    (v260)();
    sub_2BFD98();
    v259(v113, v114);
    v258(v112, v272);
    v257(v256, 1, 1, v271);
    (v251)(v244, 1, 1, v252);
    v115 = v229;
    v207 = *(v229 + 104);
    v116 = v246;
    v117 = v230;
    v207(v246, enum case for SeriesListSortOrder.popular(_:), v230);
    v118 = v253;
    v238();
    v119 = type metadata accessor for SeriesListSortAction();
    v279 = v119;
    v205 = sub_2106DC(&qword_3C6AE0, type metadata accessor for SeriesListSortAction);
    v280 = v205;
    v120 = sub_720C8(&v278);
    v121 = *(v115 + 16);
    v203 = v115 + 16;
    v204 = v121;
    v218 = (v115 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v121(v120, v116, v117);
    v122 = v266;
    sub_691F8(v266, v120 + v119[5]);
    v239(v120 + v119[7], v269, v270);
    sub_78628(v118, v120 + v119[8]);
    *(v120 + v119[6]) = v255;
    sub_2100C4(v118);
    v123 = *(v115 + 8);
    v201 = v115 + 8;
    v202 = v123;
    v123(v116, v117);
    v277 = v242;
    v200 = sub_6620C(&qword_3BDC38);
    v199 = sub_72B74(&qword_3C5DF0, &qword_3BDC38);
    sub_2C5D28();
    sub_72084(v122, v122[3]);
    sub_2BF2D8();
    v124 = sub_2BF718() == 0;
    *v254 = v124;
    v249();
    v125 = v256;
    v126 = v244;
    sub_2C17C8();
    v127 = v268;
    sub_2C5278();
    v128 = v273;
    (v260)(v113, v262, v273);
    sub_2BFD98();
    v259(v113, v128);
    v129 = v127;
    v258(v127, v272);
    v257(v125, 1, 1, v271);
    (v251)(v126, 1, 1, v252);
    v130 = v246;
    v131 = v230;
    v207(v246, enum case for SeriesListSortOrder.title(_:), v230);
    v132 = v253;
    (v238)(v253, 1, 1, v236);
    v279 = v119;
    v280 = v205;
    v133 = sub_720C8(&v278);
    v204(v133, v130, v131);
    sub_691F8(v122, v133 + v119[5]);
    v239(v133 + v119[7], v269, v270);
    sub_78628(v132, v133 + v119[8]);
    *(v133 + v119[6]) = v255;
    sub_2100C4(v132);
    v202(v130, v131);
    v277 = v242;
    sub_2C5D28();
    sub_72084(v122, v122[3]);
    sub_2BF2D8();
    v134 = sub_2BF718() == 1;
    *v254 = v134;
    v249();
    v135 = v256;
    v136 = v244;
    sub_2C17C8();
    v137 = v129;
    sub_2C5278();
    v138 = v265;
    v139 = v273;
    (v260)(v265, v262, v273);
    sub_2BFD98();
    v259(v138, v139);
    v258(v137, v272);
    v257(v135, 1, 1, v271);
    (v251)(v136, 1, 1, v252);
    v140 = v246;
    v207(v246, enum case for SeriesListSortOrder.releaseDate(_:), v131);
    v141 = v253;
    (v238)(v253, 1, 1, v236);
    v279 = v119;
    v280 = v205;
    v142 = sub_720C8(&v278);
    v204(v142, v140, v131);
    v143 = v266;
    sub_691F8(v266, v142 + v119[5]);
    v239(v142 + v119[7], v269, v270);
    sub_78628(v141, v142 + v119[8]);
    *(v142 + v119[6]) = v255;
    sub_2100C4(v141);
    v202(v140, v131);
    v277 = v242;
    sub_2C5D28();

    sub_72084(v143, v143[3]);
  }

  sub_2BF2D8();
  v111 = sub_2BF718() == 2;
  *v254 = v111;
  v249();
  sub_2C17C8();
  sub_10F5FC(v213);
  *v231 = 0;
  (*(v233 + 104))();
  v144 = v268;
  sub_2C5278();
  v145 = v265;
  v146 = v273;
  (v260)(v265, v262, v273);
  sub_2BFD98();
  v259(v145, v146);
  v258(v144, v272);
  v147 = v256;
  v257(v256, 1, 1, v271);
  (v251)(v244, 1, 1, v252);
  v279 = sub_2C4A68();
  v280 = &protocol witness table for EmptyAction;
  sub_720C8(&v278);
  sub_2C4A58();
  v148 = v266;
  sub_72084(v266, v266[3]);
  sub_2BF2D8();
  sub_72084(v148, v148[3]);
  v149 = v254;
  sub_2BF318();
  (v249)(v149, enum case for ToolbarActionMenuItemButtonType.shareLink(_:), v263);
  v150 = v225;
  sub_2C17C8();
  v151 = v228;
  v152 = v226;
  v153 = v222;
  (*(v228 + 104))(v226, enum case for SymbolImage.Kind.ellipsis(_:), v222);
  sub_6620C(&qword_3C6AE8);
  v254 = sub_2C0FB8();
  v253 = *(v254 - 1);
  v154 = (*(v253 + 80) + 32) & ~*(v253 + 80);
  v155 = swift_allocObject();
  v264 = xmmword_2E3F30;
  v255 = v155;
  *(v155 + 16) = xmmword_2E3F30;
  v156 = (v155 + v154);
  v251 = v156;
  v252 = *(sub_6620C(&qword_3C6AF0) + 48);
  (*(v151 + 16))(v156, v152, v153);
  sub_6620C(&qword_3C6AF8);
  v157 = *(sub_2C1368() - 8);
  v244 = *(v157 + 72);
  v158 = (*(v157 + 80) + 32) & ~*(v157 + 80);
  v249 = (2 * v244);
  v159 = swift_allocObject();
  v250 = v159;
  *(v159 + 16) = v209;
  v267 = v159 + v158;
  v160 = v271;
  v161 = v257;
  v257(v147, 1, 1, v271);
  v162 = v212;
  v163 = swift_allocObject();
  *(v163 + 16) = v264;
  (*(v235 + 16))(v163 + v162, v150, v227);
  sub_2C1358();
  v164 = v268;
  sub_2C5278();
  v165 = v265;
  v166 = v273;
  (v260)(v265, v262, v273);
  sub_2BFD98();
  v259(v165, v166);
  v258(v164, v272);
  v161(v147, 0, 1, v160);
  v263 = v282;
  v167 = v248;
  v168 = *(v248 + 16);
  v241 = v248 + 16;
  v242 = v168;
  v169 = v224;
  v168(v232, v223, v224);
  v170 = v229;
  v171 = v246;
  v172 = v230;
  (*(v229 + 16))(v246, v247, v230);
  v173 = v281;
  *&v264 = v281;
  v174 = *(v167 + 80);
  v175 = (v174 + 16) & ~v174;
  v240 = v174 | 7;
  v238 = v175;
  v176 = (v216 + v175 + 7) & 0xFFFFFFFFFFFFFFF8;
  v247 = v176 + 8;
  v237 = v176;
  v177 = (v176 + 8 + *(v170 + 80)) & ~*(v170 + 80);
  v178 = swift_allocObject();
  v179 = *(v248 + 32);
  v248 += 32;
  v239 = v179;
  v179((v178 + v175), v232, v169);
  *(v178 + v176) = v173;
  (*(v170 + 32))(v178 + v177, v171, v172);
  v180 = v233;
  v246 = *(v233 + 16);
  v181 = v217;
  v182 = v234;
  (v246)(v217, v231, v234);
  sub_691F8(v266, &v278);
  v183 = *(v180 + 80);
  v266 = (((v183 + 16) & ~v183) + v215);
  v236 = (v183 + 16) & ~v183;
  v184 = (v266 + 7) & 0xFFFFFFFFFFFFFFF8;
  v185 = swift_allocObject();
  v230 = *(v180 + 32);
  (v230)(v185 + ((v183 + 16) & ~v183), v181, v182);
  sub_68D1C(&v278, v185 + v184);

  v186 = v256;
  sub_2C1358();
  v187 = v268;
  sub_2C5278();
  v188 = v265;
  v189 = v273;
  (v260)(v265, v262, v273);
  sub_2BFD98();
  v259(v188, v189);
  v258(v187, v272);
  v257(v186, 0, 1, v271);
  v190 = v232;
  v191 = v224;
  v242(v232, v223, v224);
  v192 = v237;
  v193 = swift_allocObject();
  v239(v238 + v193, v190, v191);
  *(v193 + v192) = v263;
  *(v193 + v247) = v245;
  v194 = v181;
  v195 = v181;
  v196 = v231;
  v197 = v234;
  (v246)(v195, v231, v234);
  v198 = swift_allocObject();
  (v230)(v198 + v236, v194, v197);
  sub_2C1358();
  *&v251[v252] = v250;
  v253[13]();
  (*(v228 + 8))(v226, v222);
  (*(v235 + 8))(v225, v227);
  (*(v233 + 8))(v196, v197);
  (*(v243 + 8))(v269, v270);
  return v255;
}

uint64_t sub_2100C4(uint64_t a1)
{
  v2 = sub_6620C(&unk_3CA260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21012C()
{
  v1 = sub_2BE8F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_2BF738();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

unint64_t sub_210288(uint64_t a1)
{
  v3 = *(sub_2BE8F8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_2BF738() - 8);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  return sub_20B70C(a1, v1 + v4, v7, v8);
}

uint64_t sub_21036C()
{
  v1 = sub_2C10A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  sub_68CD0(v0 + v5);

  return _swift_deallocObject(v0, v5 + 40, v3 | 7);
}

uint64_t sub_210408(uint64_t a1)
{
  v3 = *(sub_2C10A8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_20BE1C(a1, v1 + v4, v5);
}

uint64_t sub_2104A4()
{
  v1 = sub_2BE8F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 9, v3 | 7);
}

uint64_t sub_210540(uint64_t a1)
{
  v3 = *(sub_2BE8F8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_20C274(a1, v1 + v4, v6, v7);
}

uint64_t sub_2105E4()
{
  v1 = sub_2C10A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_21066C(uint64_t a1)
{
  v3 = *(sub_2C10A8() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_20C974(a1, v4);
}

uint64_t sub_2106DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_210784()
{
  result = qword_3C6B08;
  if (!qword_3C6B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6B08);
  }

  return result;
}

__n128 sub_2107D8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = sub_6620C(&qword_3C6B18);
  __chkstk_darwin(v12 - 8);
  v14 = &v21[-v13];
  *v14 = sub_2C46A8();
  v14[1] = v15;
  v16 = *(sub_6620C(&qword_3C6B20) + 44);
  LOBYTE(v22) = a3 & 1;
  v21[8] = a5 & 1;
  sub_21096C(a1, a2, a3 & 1, a4, a5 & 1, v14 + v16);
  sub_2C46A8();
  sub_2C2AD8();
  sub_69130(v14, a6, &qword_3C6B18);
  v17 = a6 + *(sub_6620C(&qword_3C6B28) + 36);
  v18 = v27;
  *(v17 + 64) = v26;
  *(v17 + 80) = v18;
  *(v17 + 96) = v28;
  v19 = v23;
  *v17 = v22;
  *(v17 + 16) = v19;
  result = v25;
  *(v17 + 32) = v24;
  *(v17 + 48) = result;
  return result;
}

uint64_t sub_21096C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v62 = a5;
  v63 = a4;
  v61 = a3;
  v66 = a6;
  v59 = sub_6620C(&qword_3C6B30);
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v9 = &v55 - v8;
  v56 = sub_6620C(&qword_3C6B38);
  __chkstk_darwin(v56);
  v11 = &v55 - v10;
  v58 = sub_6620C(&qword_3C6B40);
  __chkstk_darwin(v58);
  v13 = &v55 - v12;
  v65 = sub_6620C(&qword_3C6B48);
  __chkstk_darwin(v65);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v60 = &v55 - v17;
  v64 = sub_6620C(&qword_3C6B50);
  __chkstk_darwin(v64);
  v19 = (&v55 - v18);
  v20 = type metadata accessor for ContentUnavailableComponentModel();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20 - 8);
  if (*(a1 + *(v23 + 36) + 16))
  {
    sub_212C4C(a1, &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    v24 = (*(v21 + 80) + 41) & ~*(v21 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = a2;
    v26 = v61 & 1;
    *(v25 + 24) = v61 & 1;
    *(v25 + 32) = v63;
    *(v25 + 40) = v62 & 1;
    sub_212EDC(&v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
    *v19 = sub_212F40;
    v19[1] = v25;
    swift_storeEnumTagMultiPayload();
    sub_146B38(a2, v26);

    sub_6620C(&qword_3C6B98);
    sub_72B74(&qword_3C6BA0, &qword_3C6B98);
    sub_212B10(&qword_3C6BA8, &qword_3C6B48, &unk_2F57E8, sub_212AE0);
    return sub_2C33C8();
  }

  else
  {
    v55 = &v55;
    __chkstk_darwin(v23);
    __chkstk_darwin(v28);
    sub_6620C(&qword_3C6B58);
    sub_6620C(&qword_3C6B60);
    sub_212760();
    sub_212A2C();
    sub_2C3528();
    sub_2C46A8();
    sub_2C2AD8();
    (*(v57 + 32))(v11, v9, v59);
    v29 = &v11[*(v56 + 36)];
    v30 = v72;
    *(v29 + 4) = v71;
    *(v29 + 5) = v30;
    *(v29 + 6) = v73;
    v31 = v68;
    *v29 = v67;
    *(v29 + 1) = v31;
    v32 = v70;
    *(v29 + 2) = v69;
    *(v29 + 3) = v32;
    v33 = sub_2C3768();
    sub_2C24D8();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    sub_69130(v11, v13, &qword_3C6B38);
    v42 = &v13[*(v58 + 36)];
    *v42 = v33;
    *(v42 + 1) = v35;
    *(v42 + 2) = v37;
    *(v42 + 3) = v39;
    *(v42 + 4) = v41;
    v42[40] = 0;
    v43 = sub_2C3778();
    sub_2C24D8();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    sub_69130(v13, v15, &qword_3C6B40);
    v52 = &v15[*(v65 + 36)];
    *v52 = v43;
    *(v52 + 1) = v45;
    *(v52 + 2) = v47;
    *(v52 + 3) = v49;
    *(v52 + 4) = v51;
    v52[40] = 0;
    v53 = v15;
    v54 = v60;
    sub_69130(v53, v60, &qword_3C6B48);
    sub_6932C(v54, v19, &qword_3C6B48);
    swift_storeEnumTagMultiPayload();
    sub_6620C(&qword_3C6B98);
    sub_72B74(&qword_3C6BA0, &qword_3C6B98);
    sub_212B10(&qword_3C6BA8, &qword_3C6B48, &unk_2F57E8, sub_212AE0);
    sub_2C33C8();
    return sub_69198(v54, &qword_3C6B48);
  }
}

__n128 sub_211168@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v51 = a6;
  v60 = a5;
  v49[1] = a1;
  v59 = a7;
  v10 = sub_6620C(&qword_3C6B30);
  v54 = *(v10 - 8);
  v55 = v10;
  __chkstk_darwin(v10);
  v53 = v49 - v11;
  v52 = sub_6620C(&qword_3C6B38);
  __chkstk_darwin(v52);
  v57 = v49 - v12;
  v56 = sub_6620C(&qword_3C6BC8);
  __chkstk_darwin(v56);
  v58 = v49 - v13;
  v49[0] = sub_2C2978();
  v14 = *(v49[0] - 8);
  __chkstk_darwin(v49[0]);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2C30F8();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a3;
  v49[2] = a2;
  if ((a3 & 1) == 0)
  {

    sub_2C5DD8();
    v21 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_125A48(a2, 0);
    (*(v18 + 8))(v20, v17);
  }

  v22 = a4;
  if ((v60 & 1) == 0)
  {
    sub_2C5DD8();
    v23 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    (*(v18 + 8))(v20, v17);
    v22 = v71;
  }

  swift_getKeyPath();
  *&v71 = v22;
  sub_212FEC(&qword_3BCB70, type metadata accessor for HostProxy);
  sub_2BE6F8();

  swift_beginAccess();

  sub_2C2958();
  sub_2C2738();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  (*(v14 + 8))(v16, v49[0]);
  v78.origin.x = v25;
  v78.origin.y = v27;
  v78.size.width = v29;
  v78.size.height = v31;
  CGRectGetMinY(v78);
  __chkstk_darwin(v32);
  __chkstk_darwin(v33);
  sub_6620C(&qword_3C6B58);
  sub_6620C(&qword_3C6B60);
  sub_212760();
  sub_212A2C();
  v34 = v53;
  sub_2C3528();
  sub_2C46A8();
  sub_2C2AD8();
  v35 = v57;
  (*(v54 + 32))(v57, v34, v55);
  v36 = (v35 + *(v52 + 36));
  v37 = v66;
  v36[4] = v65;
  v36[5] = v37;
  v36[6] = v67;
  v38 = v62;
  *v36 = v61;
  v36[1] = v38;
  v39 = v64;
  v36[2] = v63;
  v36[3] = v39;
  sub_2C46A8();
  sub_2C2708();
  v40 = v58;
  sub_69130(v35, v58, &qword_3C6B38);
  v41 = (v40 + *(v56 + 36));
  v42 = v69;
  *v41 = v68;
  v41[1] = v42;
  v41[2] = v70;
  sub_2C46A8();
  sub_2C2AD8();
  v43 = v40;
  v44 = v59;
  sub_69130(v43, v59, &qword_3C6BC8);
  v45 = v44 + *(sub_6620C(&qword_3C6BD0) + 36);
  v46 = v76;
  *(v45 + 64) = v75;
  *(v45 + 80) = v46;
  *(v45 + 96) = v77;
  v47 = v72;
  *v45 = v71;
  *(v45 + 16) = v47;
  result = v74;
  *(v45 + 32) = v73;
  *(v45 + 48) = result;
  return result;
}

uint64_t sub_211900@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v72 = sub_6620C(&qword_3BF938);
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v67 = &v64 - v3;
  v73 = sub_6620C(&qword_3C6BD8);
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v69 = &v64 - v4;
  v80 = sub_6620C(&qword_3C6B78);
  __chkstk_darwin(v80);
  v68 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v74 = &v64 - v7;
  v78 = sub_6620C(&qword_3C6BE0);
  __chkstk_darwin(v78);
  v79 = &v64 - v8;
  v9 = sub_6620C(&qword_3BCB28);
  __chkstk_darwin(v9 - 8);
  v66 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v64 - v12;
  v75 = sub_2BFDD8();
  v14 = *(v75 - 8);
  __chkstk_darwin(v75);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_2BFCB8();
  v65 = *(v76 - 8);
  __chkstk_darwin(v76);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_6620C(&qword_3C6BE8);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v64 - v21;
  v77 = sub_6620C(&qword_3C6B88);
  __chkstk_darwin(v77);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = a1;
  v28 = a1[1];
  if (v28)
  {
    v29 = v27;
    v30 = *v27;
    v31 = type metadata accessor for ContentUnavailableComponentModel();
    v32 = v75;
    v33 = (*(v14 + 16))(v16, v27 + *(v31 + 20), v75);
    v65 = &v64;
    __chkstk_darwin(v33);
    *(&v64 - 2) = v16;
    __chkstk_darwin(v34);
    *(&v64 - 2) = v30;
    *(&v64 - 1) = v28;
    sub_212FEC(&qword_3BF950, &type metadata accessor for LocalizedText);
    v35 = v67;
    sub_2C42F8();
    (*(v14 + 8))(v16, v32);
    v36 = *(v31 + 32);
    v37 = v35;
    if (*(v29 + v36))
    {
      v38 = enum case for Font.Design.default(_:);
      v39 = sub_2C3848();
      v40 = *(v39 - 8);
      v41 = v66;
      (*(v40 + 104))(v66, v38, v39);
      (*(v40 + 56))(v41, 0, 1, v39);
    }

    else
    {
      v41 = v66;
      sub_2C3828();
    }

    v48 = v69;
    sub_72B74(&qword_3BF948, &qword_3BF938);
    v49 = v72;
    sub_2C3E08();
    sub_69198(v41, &qword_3BCB28);
    (*(v70 + 8))(v37, v49);
    if (*(v29 + v36))
    {
      v50 = sub_2C4268();
    }

    else
    {
      v50 = sub_2C4258();
    }

    v51 = v50;
    v52 = v68;
    (*(v71 + 32))(v68, v48, v73);
    *(v52 + *(v80 + 36)) = v51;
    v53 = &qword_3C6B78;
    v54 = v74;
    sub_69130(v52, v74, &qword_3C6B78);
    sub_6932C(v54, v79, &qword_3C6B78);
    swift_storeEnumTagMultiPayload();
    sub_2127EC();
    sub_212914();
  }

  else
  {
    v71 = &v64 - v26;
    v72 = v22;
    v73 = v20;
    v74 = v19;
    v42 = type metadata accessor for ContentUnavailableComponentModel();
    (*(v14 + 16))(v16, v27 + *(v42 + 20), v75);
    sub_2BFCC8();
    v43 = *(v42 + 32);
    v75 = v27;
    if (*(v27 + v43))
    {
      v44 = enum case for Font.Design.default(_:);
      v45 = sub_2C3848();
      v46 = *(v45 - 8);
      v47 = v13;
      (*(v46 + 104))(v13, v44, v45);
      (*(v46 + 56))(v13, 0, 1, v45);
    }

    else
    {
      v47 = v13;
      sub_2C3828();
    }

    v55 = v76;
    v57 = v72;
    v56 = v73;
    v58 = v65;
    sub_212FEC(&qword_3BF950, &type metadata accessor for LocalizedText);
    sub_2C3E08();
    sub_69198(v47, &qword_3BCB28);
    (v58[1])(v18, v55);
    v59 = v74;
    if (*(v75 + v43))
    {
      v60 = sub_2C4268();
    }

    else
    {
      v60 = sub_2C4258();
    }

    v61 = v60;
    (*(v56 + 32))(v24, v57, v59);
    *&v24[*(v77 + 36)] = v61;
    v53 = &qword_3C6B88;
    v62 = v24;
    v54 = v71;
    sub_69130(v62, v71, &qword_3C6B88);
    sub_6932C(v54, v79, &qword_3C6B88);
    swift_storeEnumTagMultiPayload();
    sub_2127EC();
    sub_212914();
  }

  sub_2C33C8();
  return sub_69198(v54, v53);
}

uint64_t sub_21230C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2BFCB8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&qword_3BEF80);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_2BFDD8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v21 - v16;
  v18 = type metadata accessor for ContentUnavailableComponentModel();
  sub_213054(a1 + *(v18 + 24), v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_69198(v10, &qword_3BEF80);
    v19 = 1;
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
    (*(v12 + 16))(v14, v17, v11);
    sub_2BFCC8();
    (*(v12 + 8))(v17, v11);
    (*(v5 + 32))(a2, v7, v4);
    v19 = 0;
  }

  return (*(v5 + 56))(a2, v19, 1, v4);
}

uint64_t sub_2125D4()
{
  sub_146B38(*v0, *(v0 + 8));
  sub_210784();

  return sub_2BFD18();
}

unint64_t sub_212654()
{
  result = qword_3C6B10;
  if (!qword_3C6B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6B10);
  }

  return result;
}

unint64_t sub_212760()
{
  result = qword_3C6B68;
  if (!qword_3C6B68)
  {
    sub_718D4(&qword_3C6B58);
    sub_2127EC();
    sub_212914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6B68);
  }

  return result;
}

unint64_t sub_2127EC()
{
  result = qword_3C6B70;
  if (!qword_3C6B70)
  {
    sub_718D4(&qword_3C6B78);
    sub_718D4(&qword_3BF938);
    sub_72B74(&qword_3BF948, &qword_3BF938);
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3C6A70, &qword_3C6A78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6B70);
  }

  return result;
}

unint64_t sub_212914()
{
  result = qword_3C6B80;
  if (!qword_3C6B80)
  {
    sub_718D4(&qword_3C6B88);
    sub_2BFCB8();
    sub_212FEC(&qword_3BF950, &type metadata accessor for LocalizedText);
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3C6A70, &qword_3C6A78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6B80);
  }

  return result;
}

unint64_t sub_212A2C()
{
  result = qword_3C6B90;
  if (!qword_3C6B90)
  {
    sub_718D4(&qword_3C6B60);
    sub_212FEC(&qword_3BF950, &type metadata accessor for LocalizedText);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6B90);
  }

  return result;
}

uint64_t sub_212B10(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_212B94()
{
  result = qword_3C6BB8;
  if (!qword_3C6BB8)
  {
    sub_718D4(&qword_3C6B38);
    sub_72B74(&qword_3C6BC0, &qword_3C6B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6BB8);
  }

  return result;
}

uint64_t sub_212C4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentUnavailableComponentModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_212CB0()
{
  v1 = type metadata accessor for ContentUnavailableComponentModel();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 41) & ~v2;
  v16 = *(*(v1 - 1) + 64);
  sub_125A48(*(v0 + 16), *(v0 + 24));

  v4 = v0 + v3;

  v5 = v1[5];
  v6 = sub_2BFDD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v1[6];
  if (!(*(v7 + 48))(v0 + v3 + v9, 1, v6))
  {
    v8(v4 + v9, v6);
  }

  v10 = v1[9];
  v11 = sub_2C1DC8();
  (*(*(v11 - 8) + 8))(v4 + v10, v11);
  sub_68CD0(v4 + v1[10]);
  v12 = v1[11];
  v13 = sub_2C5018();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v4 + v12, 1, v13))
  {
    (*(v14 + 8))(v4 + v12, v13);
  }

  return _swift_deallocObject(v0, v3 + v16, v2 | 7);
}

uint64_t sub_212EDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentUnavailableComponentModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_212F40@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ContentUnavailableComponentModel() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = v2 + ((*(v5 + 80) + 41) & ~*(v5 + 80));

  *&result = sub_211168(a1, v6, v7, v8, v9, v10, a2).n128_u64[0];
  return result;
}

uint64_t sub_212FEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_213054(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BEF80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2130C4(uint64_t a1)
{
  v2 = sub_2BFDD8();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_2BFCC8();
}

uint64_t sub_213190@<X0>(uint64_t *a1@<X8>)
{

  result = sub_2C42B8();
  *a1 = result;
  return result;
}

uint64_t sub_2131D8@<X0>(uint64_t *a1@<X8>)
{

  result = sub_2C42B8();
  *a1 = result;
  return result;
}

unint64_t sub_213220()
{
  result = qword_3C6BF0;
  if (!qword_3C6BF0)
  {
    sub_718D4(&qword_3C6B28);
    sub_72B74(&qword_3C6BF8, &qword_3C6B18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6BF0);
  }

  return result;
}

uint64_t sub_2132F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6620C(&qword_3BC7C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_6620C(&qword_3BD588);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_213444(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_6620C(&qword_3BC7C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  else
  {
    v11 = sub_6620C(&qword_3BD588);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for ReviewBrickComponent()
{
  result = qword_3C6C58;
  if (!qword_3C6C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2135CC()
{
  sub_2136A4(319, &qword_3BC850, &type metadata accessor for ColorConstants);
  if (v0 <= 0x3F)
  {
    sub_1F012C();
    if (v1 <= 0x3F)
    {
      sub_2136A4(319, &qword_3BD600, &type metadata accessor for SizeConstants);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2136A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_213778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v52 = a2;
  v47 = sub_2C30F8();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2C2A88();
  v49 = *(v7 - 8);
  v50 = v7;
  __chkstk_darwin(v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_6620C(&qword_3C6CA0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v45 - v12;
  v14 = sub_6620C(&qword_3C6CA8);
  __chkstk_darwin(v14);
  v16 = &v45 - v15;
  v48 = sub_6620C(&qword_3C6CB0);
  v17 = *(v48 - 8);
  __chkstk_darwin(v48);
  v19 = &v45 - v18;
  *v13 = sub_2C3338();
  *(v13 + 1) = 0x4020000000000000;
  v13[16] = 0;
  v20 = sub_6620C(&qword_3C6CB8);
  sub_213D00(a1, v3, &v13[*(v20 + 44)]);
  v21 = sub_2C3758();
  v22 = &v13[*(v11 + 44)];
  *v22 = v21;
  __asm { FMOV            V0.2D, #16.0 }

  *(v22 + 8) = _Q0;
  *(v22 + 24) = _Q0;
  v22[40] = 0;
  sub_2C46B8();
  sub_2C2AD8();
  sub_216C14(v13, v16);
  v28 = &v16[*(v14 + 36)];
  v29 = v59;
  *(v28 + 4) = v58;
  *(v28 + 5) = v29;
  *(v28 + 6) = v60;
  v30 = v55;
  *v28 = v54;
  *(v28 + 1) = v30;
  v31 = v57;
  *(v28 + 2) = v56;
  *(v28 + 3) = v31;
  v32 = *(type metadata accessor for ReviewBrickComponent() + 20);
  v51 = v3;
  v33 = v3 + v32;
  v34 = *v33;
  if (*(v33 + 8) != 1)
  {

    sub_2C5DD8();
    v36 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v34, 0);
    (*(v46 + 8))(v6, v47);
    if (v53 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_2C2A78();
    v35 = v50;
    goto LABEL_6;
  }

  if (v34)
  {
    goto LABEL_5;
  }

LABEL_3:
  v53 = _swiftEmptyArrayStorage;
  sub_217AE8(&qword_3C6CC0, &type metadata accessor for RedactionReasons);
  sub_6620C(&qword_3C6CC8);
  sub_72B74(&qword_3C6CD0, &qword_3C6CC8);
  v35 = v50;
  sub_2C6158();
LABEL_6:
  sub_216C84();
  sub_2C4118();
  (*(v49 + 8))(v9, v35);
  sub_69198(v16, &qword_3C6CA8);
  v37 = sub_2C46A8();
  v39 = v38;
  v40 = sub_6620C(&qword_3C6CF8);
  v41 = v52;
  v42 = v52 + *(v40 + 36);
  sub_216778(v42);
  v43 = (v42 + *(sub_6620C(&qword_3C6D00) + 36));
  *v43 = v37;
  v43[1] = v39;
  return (*(v17 + 32))(v41, v19, v48);
}

uint64_t sub_213D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v124 = a3;
  v5 = sub_6620C(&qword_3C6D10);
  __chkstk_darwin(v5 - 8);
  v122 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v123 = (&v99 - v8);
  v118 = sub_6620C(&qword_3C6D18);
  __chkstk_darwin(v118);
  v120 = (&v99 - v9);
  v104 = sub_2C30F8();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_6620C(&qword_3C6D20);
  v110 = *(v119 - 8);
  __chkstk_darwin(v119);
  v109 = &v99 - v11;
  v12 = sub_6620C(&qword_3C6D28);
  __chkstk_darwin(v12 - 8);
  v121 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v128 = &v99 - v15;
  v116 = sub_6620C(&qword_3C6D30);
  __chkstk_darwin(v116);
  v17 = &v99 - v16;
  v114 = sub_6620C(&qword_3C6D38);
  __chkstk_darwin(v114);
  v115 = &v99 - v18;
  v19 = sub_2C3308();
  v108 = *(v19 - 8);
  __chkstk_darwin(v19);
  v106 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2C38C8();
  v126 = *(v21 - 8);
  __chkstk_darwin(v21);
  v125 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_6620C(&qword_3BEC80);
  __chkstk_darwin(v23 - 8);
  v105 = &v99 - v24;
  v113 = sub_6620C(&qword_3C6D40);
  __chkstk_darwin(v113);
  v107 = &v99 - v25;
  v26 = sub_6620C(&unk_3C44D0);
  __chkstk_darwin(v26 - 8);
  v28 = &v99 - v27;
  v29 = sub_2C0DB8();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_6620C(&qword_3C6D48);
  __chkstk_darwin(v33 - 8);
  v117 = &v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v112 = &v99 - v36;
  sub_1DEC40(v28);
  v37 = (*(v30 + 48))(v28, 1, v29);
  v127 = a2;
  v111 = v21;
  if (v37 == 1)
  {
    sub_69198(v28, &unk_3C44D0);
    type metadata accessor for ReviewBrickComponentModel();
    sub_6620C(&qword_3C5878);
    sub_2C1988();
    v101 = v129;

    sub_2C3908();
    v38 = v126;
    v39 = *(v126 + 104);
    v100 = v19;
    v40 = v125;
    v39(v125, enum case for Font.Leading.tight(_:), v21);
    sub_2C38E8();

    (*(v38 + 8))(v40, v21);
    v41 = sub_2C39E8();
    v43 = v42;
    v45 = v44;

    v46 = sub_2C39D8();
    v48 = v47;
    LOBYTE(v40) = v49;
    v50 = a1;
    v52 = v51;
    sub_72180(v41, v43, v45 & 1);

    v129 = v46;
    v130 = v48;
    LOBYTE(v43) = v40 & 1;
    v131 = v40 & 1;
    v132 = v52;
    v53 = v106;
    sub_2C32B8();
    v54 = v105;
    sub_2C3FE8();
    (*(v108 + 8))(v53, v100);
    sub_72180(v46, v48, v43);

    KeyPath = swift_getKeyPath();
    v56 = v107;
    sub_69130(v54, v107, &qword_3BEC80);
    v57 = v56 + *(v113 + 36);
    v58 = v101;
    *v57 = KeyPath;
    *(v57 + 8) = v58;
    *(v57 + 16) = v58 ^ 1;
    sub_6932C(v56, v115, &qword_3C6D40);
    swift_storeEnumTagMultiPayload();
    sub_72B74(&qword_3C6D50, &qword_3C6D30);
    sub_216F20();
    v59 = v112;
    sub_2C33C8();
    sub_69198(v56, &qword_3C6D40);
  }

  else
  {
    (*(v30 + 32))(v32, v28, v29);
    *v17 = sub_2C3178();
    *(v17 + 1) = 0x4020000000000000;
    v17[16] = 0;
    v60 = sub_6620C(&qword_3C6D80);
    sub_214CD8(v32, a2, a1, &v17[*(v60 + 44)]);
    sub_6932C(v17, v115, &qword_3C6D30);
    swift_storeEnumTagMultiPayload();
    sub_72B74(&qword_3C6D50, &qword_3C6D30);
    v50 = a1;
    sub_216F20();
    v59 = v112;
    sub_2C33C8();
    sub_69198(v17, &qword_3C6D30);
    (*(v30 + 8))(v32, v29);
  }

  type metadata accessor for ReviewBrickComponentModel();
  sub_6620C(&qword_3C5878);
  sub_2C1988();
  v61 = v129;

  sub_2C3908();
  v63 = v125;
  v62 = v126;
  v64 = v111;
  (*(v126 + 104))(v125, enum case for Font.Leading.tight(_:), v111);
  sub_2C38E8();

  (*(v62 + 8))(v63, v64);
  v65 = v50;
  if (v61 == 1)
  {
    v126 = v50;
    v66 = sub_2C39E8();
    v68 = v67;
    v70 = v69;
    v72 = v71;

    v129 = v66;
    v130 = v68;
    v131 = v70 & 1;
    v132 = v72;
    v73 = v127 + *(type metadata accessor for ReviewBrickComponent() + 28);
    v74 = *v73;
    if (*(v73 + 8) != 1)
    {

      sub_2C5DD8();
      v75 = sub_2C3718();
      sub_2C0058();

      v76 = v102;
      sub_2C30E8();
      swift_getAtKeyPath();
      sub_71AF4(v74, 0);
      (*(v103 + 8))(v76, v104);
    }

    v77 = v109;
    sub_2C4148();
    sub_72180(v66, v68, v70 & 1);

    v78 = v110;
    v79 = v119;
    (*(v110 + 16))(v120, v77, v119);
    swift_storeEnumTagMultiPayload();
    v129 = &type metadata for Text;
    v130 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    sub_2C33C8();
    (*(v78 + 8))(v77, v79);
    v65 = v126;
  }

  else
  {
    v80 = sub_2C39E8();
    v82 = v81;
    v84 = v83;
    v86 = v85;

    v87 = v120;
    *v120 = v80;
    v87[1] = v82;
    *(v87 + 16) = v84 & 1;
    v87[3] = v86;
    swift_storeEnumTagMultiPayload();
    v129 = &type metadata for Text;
    v130 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    sub_2C33C8();
  }

  v88 = sub_2C3178();
  v89 = v123;
  *v123 = v88;
  *(v89 + 8) = 0;
  *(v89 + 16) = 1;
  v90 = v89 + *(sub_6620C(&qword_3C6D68) + 44);
  *v90 = sub_2C3178();
  *(v90 + 8) = 0x4020000000000000;
  *(v90 + 16) = 0;
  v91 = sub_6620C(&qword_3C6D70);
  sub_2156E0(v65, v127, (v90 + *(v91 + 44)));
  v92 = v59;
  v93 = v117;
  sub_6932C(v59, v117, &qword_3C6D48);
  v94 = v121;
  sub_6932C(v128, v121, &qword_3C6D28);
  v95 = v122;
  sub_6932C(v89, v122, &qword_3C6D10);
  v96 = v124;
  sub_6932C(v93, v124, &qword_3C6D48);
  v97 = sub_6620C(&qword_3C6D78);
  sub_6932C(v94, v96 + *(v97 + 48), &qword_3C6D28);
  sub_6932C(v95, v96 + *(v97 + 64), &qword_3C6D10);
  sub_69198(v89, &qword_3C6D10);
  sub_69198(v128, &qword_3C6D28);
  sub_69198(v92, &qword_3C6D48);
  sub_69198(v95, &qword_3C6D10);
  sub_69198(v94, &qword_3C6D28);
  return sub_69198(v93, &qword_3C6D48);
}

uint64_t sub_214CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v5 = sub_6620C(&qword_3C6D88);
  __chkstk_darwin(v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = sub_2C0DB8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_6620C(&qword_3C42F8);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v22 = &v29 - v21;
  (*(v12 + 16))(v14, a1, v11, v20);
  sub_2C2378();
  sub_2C46B8();
  sub_2C2708();
  v23 = &v22[*(v16 + 44)];
  v24 = v34;
  *v23 = v33;
  *(v23 + 1) = v24;
  *(v23 + 2) = v35;
  *v10 = sub_2C3338();
  *(v10 + 1) = 0x3FF0000000000000;
  v10[16] = 0;
  v25 = sub_6620C(&qword_3C6D90);
  sub_214FE8(v30, v31, &v10[*(v25 + 44)]);
  sub_6932C(v22, v18, &qword_3C42F8);
  sub_6932C(v10, v7, &qword_3C6D88);
  v26 = v32;
  sub_6932C(v18, v32, &qword_3C42F8);
  v27 = sub_6620C(&qword_3C6D98);
  sub_6932C(v7, v26 + *(v27 + 48), &qword_3C6D88);
  sub_69198(v10, &qword_3C6D88);
  sub_69198(v22, &qword_3C42F8);
  sub_69198(v7, &qword_3C6D88);
  return sub_69198(v18, &qword_3C42F8);
}

uint64_t sub_214FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a1;
  v74 = a3;
  v66 = sub_2C0D48();
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v63 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2C3308();
  v71 = *(v5 - 8);
  v72 = v5;
  __chkstk_darwin(v5);
  v70 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2C38C8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6620C(&qword_3BEC80);
  __chkstk_darwin(v11 - 8);
  v68 = v62 - v12;
  v13 = sub_6620C(&qword_3C6D40);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v73 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v62 - v17;
  v69 = type metadata accessor for ReviewBrickComponentModel();
  v75 = a2;
  v19 = *(v69 + 28);
  v20 = sub_6620C(&qword_3C5878);
  v62[1] = v19;
  v62[0] = v20;
  sub_2C1988();
  v67 = v76;

  sub_2C3908();
  (*(v8 + 104))(v10, enum case for Font.Leading.tight(_:), v7);
  sub_2C38E8();

  (*(v8 + 8))(v10, v7);
  v21 = sub_2C39E8();
  v23 = v22;
  LOBYTE(v10) = v24;

  v25 = sub_2C39D8();
  v27 = v26;
  LOBYTE(v8) = v28;
  v30 = v29;
  sub_72180(v21, v23, v10 & 1);

  v76 = v25;
  v77 = v27;
  LOBYTE(v8) = v8 & 1;
  v78 = v8;
  v79 = v30;
  v31 = v70;
  sub_2C32B8();
  v32 = v68;
  sub_2C3FE8();
  (*(v71 + 8))(v31, v72);
  sub_72180(v25, v27, v8);

  KeyPath = swift_getKeyPath();
  sub_69130(v32, v18, &qword_3BEC80);
  v34 = *(v14 + 44);
  v72 = v18;
  v35 = &v18[v34];
  v36 = v67;
  *v35 = KeyPath;
  *(v35 + 1) = v36;
  v35[16] = v36 ^ 1;
  if (*(v75 + *(v69 + 40) + 8))
  {

    sub_2C38F8();
    v37 = sub_2C39E8();
    v39 = v38;
    v41 = v40;

    v42 = v63;
    sub_29A87C(v63);
    v43 = sub_2C0D08();
    (*(v64 + 8))(v42, v66);
    v76 = v43;
    v44 = sub_2C39A8();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    sub_72180(v37, v39, v41 & 1);

    sub_2C1988();
    v51 = v76;
    v52 = v76 ^ 1;
    v53 = swift_getKeyPath();
    v54 = v48 & 1;
    v75 = v44;
    v71 = v46;
    sub_BE2CC(v44, v46, v48 & 1);
  }

  else
  {
    v75 = 0;
    v71 = 0;
    v54 = 0;
    v50 = 0;
    v53 = 0;
    v51 = 0;
    v52 = 0;
  }

  v56 = v72;
  v55 = v73;
  sub_6932C(v72, v73, &qword_3C6D40);
  v57 = v74;
  sub_6932C(v55, v74, &qword_3C6D40);
  v58 = v57 + *(sub_6620C(&qword_3C6DA0) + 48);
  v59 = v75;
  v60 = v71;
  sub_217094(v75, v71, v54, v50);
  sub_2170E4(v59, v60, v54, v50);
  *v58 = v59;
  *(v58 + 8) = v60;
  *(v58 + 16) = v54;
  *(v58 + 24) = v50;
  *(v58 + 32) = v53;
  *(v58 + 40) = v51;
  *(v58 + 48) = v52;
  sub_69198(v56, &qword_3C6D40);
  sub_2170E4(v59, v60, v54, v50);
  return sub_69198(v55, &qword_3C6D40);
}

uint64_t sub_2156E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v49[1] = a2;
  v55 = a3;
  v54 = sub_2C0D48();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v50 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ReviewBrickComponent();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ReviewBrickComponentModel();
  v11 = *(v10 - 8);
  v57 = v10 - 8;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_6620C(&qword_3C6DA8);
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v56 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v49[0] = v49 - v16;
  sub_217134(a1, v13, type metadata accessor for ReviewBrickComponentModel);
  sub_217134(a2, v9, type metadata accessor for ReviewBrickComponent);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = (v12 + *(v7 + 80) + v17) & ~*(v7 + 80);
  v19 = swift_allocObject();
  sub_217580(v13, v19 + v17, type metadata accessor for ReviewBrickComponentModel);
  sub_217580(v9, v19 + v18, type metadata accessor for ReviewBrickComponent);
  sub_6620C(&qword_3C6DB0);
  sub_2BFBC8();
  sub_2BFBA8();
  sub_2176CC();
  sub_217AE8(&qword_3BDE60, &type metadata accessor for _JetLocalizeDefaultWorking);
  sub_217AE8(&qword_3BDE68, &type metadata accessor for _JetLocalizeDefaultFailed);
  sub_2BFBD8();
  v20 = (a1 + *(v57 + 56));
  v21 = v20[1];
  v58 = *v20;
  v59 = v21;
  sub_7212C();

  v22 = sub_2C3A48();
  v24 = v23;
  LOBYTE(v7) = v25;
  sub_2C38F8();
  v26 = sub_2C39E8();
  v28 = v27;
  v30 = v29;

  sub_72180(v22, v24, v7 & 1);

  v31 = v50;
  sub_29A87C(v50);
  v32 = sub_2C0D08();
  (*(v52 + 8))(v31, v54);
  v58 = v32;
  v50 = sub_2C39A8();
  v34 = v33;
  LODWORD(v52) = v35;
  v54 = v36;
  sub_72180(v26, v28, v30 & 1);

  sub_6620C(&qword_3C5878);
  sub_2C1988();
  v37 = v58;
  KeyPath = swift_getKeyPath();
  v39 = v51;
  v40 = *(v51 + 16);
  v41 = v56;
  v42 = v49[0];
  v43 = v53;
  v40(v56, v49[0], v53);
  v44 = v55;
  v40(v55, v41, v43);
  v45 = &v44[*(sub_6620C(&qword_3C6DF0) + 48)];
  v46 = v50;
  *v45 = v50;
  *(v45 + 1) = v34;
  LOBYTE(v41) = v52 & 1;
  v45[16] = v52 & 1;
  *(v45 + 3) = v54;
  *(v45 + 4) = KeyPath;
  *(v45 + 5) = v37;
  v45[48] = v37 ^ 1;
  sub_BE2CC(v46, v34, v41);
  v47 = *(v39 + 8);

  v47(v42, v43);
  sub_72180(v46, v34, v41);

  return (v47)(v56, v43);
}

uint64_t sub_215D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v90 = a3;
  v79 = a1;
  v80 = a4;
  v78 = sub_2C5418();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_2C5288();
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2BFDD8();
  __chkstk_darwin(v7 - 8);
  v72 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_6620C(&qword_3BC938);
  __chkstk_darwin(v86);
  v83 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v84 = &v70 - v11;
  v12 = sub_2C29C8();
  v89 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v88 = &v70 - v16;
  v87 = sub_6620C(&qword_3BC940);
  __chkstk_darwin(v87);
  v85 = &v70 - v17;
  v18 = sub_2C0D48();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_6620C(&qword_3C6DE0);
  __chkstk_darwin(v22);
  v24 = &v70 - v23;
  v25 = sub_6620C(&qword_3C6DC0);
  __chkstk_darwin(v25);
  v27 = &v70 - v26;
  v71 = sub_6620C(&qword_3C6DF8);
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v81 = &v70 - v28;
  v29 = *(a2 + *(type metadata accessor for ReviewBrickComponentModel() + 52));
  sub_2C0E88();
  v30 = sub_2C3908();
  KeyPath = swift_getKeyPath();
  v32 = &v24[*(v22 + 36)];
  *v32 = KeyPath;
  v32[1] = v30;
  v33 = v14;
  sub_2179D0();
  v34 = v88;
  sub_2C4058();
  sub_69198(v24, &qword_3C6DE0);
  sub_29A87C(v21);
  v35 = sub_2C0D08();
  (*(v19 + 8))(v21, v18);
  *&v27[*(sub_6620C(&qword_3C6DD8) + 36)] = v35;
  v90 = v25;
  v36 = *(v25 + 36);
  v82 = v27;
  v37 = &v27[v36];
  v38 = *(sub_6620C(&qword_3BD7E8) + 28);
  v39 = enum case for Image.Scale.small(_:);
  v40 = sub_2C42D8();
  (*(*(v40 - 8) + 104))(v37 + v38, v39, v40);
  *v37 = swift_getKeyPath();
  v41 = v89;
  v42 = *(v89 + 104);
  v42(v34, enum case for DynamicTypeSize.xSmall(_:), v12);
  v42(v33, enum case for DynamicTypeSize.medium(_:), v12);
  sub_217AE8(&qword_3BC950, &type metadata accessor for DynamicTypeSize);
  result = sub_2C5868();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v44 = *(v41 + 32);
  v45 = v84;
  v46 = v12;
  v44(v84, v34, v12);
  v47 = v83;
  v48 = v86;
  v44((v45 + *(v86 + 48)), v33, v12);
  sub_6932C(v45, v47, &qword_3BC938);
  v49 = *(v48 + 48);
  v50 = v85;
  v44(v85, v47, v46);
  v51 = *(v41 + 8);
  v51(v47 + v49, v46);
  sub_69130(v45, v47, &qword_3BC938);
  v52 = v87;
  v44((v50 + *(v87 + 36)), (v47 + *(v48 + 48)), v46);
  v51(v47, v46);
  v53 = sub_217824();
  v54 = sub_72B74(&qword_3BC960, &qword_3BC940);
  v56 = v81;
  v55 = v82;
  v57 = v90;
  sub_2C3F48();
  sub_69198(v50, &qword_3BC940);
  result = sub_69198(v55, &qword_3C6DC0);
  if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v29 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v29 < 9.22337204e18)
  {
    v89 = v54;
    v58 = v53;
    v59 = v56;
    v60 = v73;
    v61 = v52;
    sub_2C5278();
    v62 = v77;
    v63 = v75;
    v64 = v78;
    (*(v77 + 104))(v75, enum case for LocalizerLookupStrategy.default(_:), v78);
    sub_2BFDA8();
    (*(v62 + 8))(v63, v64);
    (*(v74 + 8))(v60, v76);
    sub_691F8(v79, v91);
    v65 = sub_2C3968();
    v67 = v66;
    LOBYTE(v62) = v68;
    v91[0] = v57;
    v91[1] = v61;
    v91[2] = v58;
    v91[3] = v89;
    swift_getOpaqueTypeConformance2();
    v69 = v71;
    sub_2C3F68();
    sub_72180(v65, v67, v62 & 1);

    return (*(v70 + 8))(v59, v69);
  }

LABEL_9:
  __break(1u);
  return result;
}

__n128 sub_216778@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_2C0D48();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2C2AA8();
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = (v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_6620C(&qword_3BCAB8);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = v23 - v12;
  if (sub_2C4618())
  {
    v14 = 16.0;
  }

  else
  {
    v14 = 10.0;
  }

  v15 = *(v7 + 28);
  v16 = enum case for RoundedCornerStyle.continuous(_:);
  v17 = sub_2C31A8();
  (*(*(v17 - 8) + 104))(v9 + v15, v16, v17);
  *v9 = v14;
  v9[1] = v14;
  sub_29A87C(v5);
  v18 = sub_2C0D18();
  (*(v3 + 8))(v5, v2);
  sub_217580(v9, v13, &type metadata accessor for RoundedRectangle);
  *&v13[*(v11 + 60)] = v18;
  *&v13[*(v11 + 64)] = 256;
  sub_2C46A8();
  sub_2C2AD8();
  sub_69130(v13, a1, &qword_3BCAB8);
  v19 = a1 + *(sub_6620C(&qword_3C6D08) + 36);
  v20 = v23[5];
  *(v19 + 64) = v23[4];
  *(v19 + 80) = v20;
  *(v19 + 96) = v23[6];
  v21 = v23[1];
  *v19 = v23[0];
  *(v19 + 16) = v21;
  result = v23[3];
  *(v19 + 32) = v23[2];
  *(v19 + 48) = result;
  return result;
}

uint64_t sub_216A48()
{
  __chkstk_darwin(v0);
  sub_217134(v2, &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReviewBrickComponent);
  sub_217AE8(&qword_3C8540, type metadata accessor for ReviewBrickComponent);
  return sub_2BFD18();
}

uint64_t sub_216C14(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C6CA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_216C84()
{
  result = qword_3C6CD8;
  if (!qword_3C6CD8)
  {
    sub_718D4(&qword_3C6CA8);
    sub_216D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6CD8);
  }

  return result;
}

unint64_t sub_216D10()
{
  result = qword_3C6CE0;
  if (!qword_3C6CE0)
  {
    sub_718D4(&qword_3C6CA0);
    sub_72B74(&qword_3C6CE8, &qword_3C6CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6CE0);
  }

  return result;
}

uint64_t sub_216DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_errorRetain();

  return _JetLocalizeDefaultFailed.init(error:retry:)(a1, a2, a3);
}

uint64_t sub_216E50(uint64_t a1)
{
  v2 = sub_2C42D8();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_2C2E78();
}

unint64_t sub_216F20()
{
  result = qword_3C6D58;
  if (!qword_3C6D58)
  {
    sub_718D4(&qword_3C6D40);
    sub_216FD8();
    sub_72B74(&qword_3BE160, &qword_3BE168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6D58);
  }

  return result;
}

unint64_t sub_216FD8()
{
  result = qword_3C6D60;
  if (!qword_3C6D60)
  {
    sub_718D4(&qword_3BEC80);
    sub_217AE8(&qword_3BCA50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6D60);
  }

  return result;
}

uint64_t sub_217094(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_BE2CC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2170E4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_72180(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_217134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21719C()
{
  v1 = type metadata accessor for ReviewBrickComponentModel();
  v23 = *(*(v1 - 1) + 80);
  v2 = (v23 + 16) & ~v23;
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for ReviewBrickComponent();
  v5 = *(*(v4 - 1) + 80);
  v22 = *(*(v4 - 1) + 64);
  v6 = v0;
  v7 = v0 + v2;
  sub_68CD0(v0 + v2);
  if (*(v0 + v2 + 64))
  {
    sub_68CD0(v7 + 40);
  }

  v8 = v1[7];
  v9 = sub_6620C(&qword_3C5878);
  (*(*(v9 - 8) + 8))(v7 + v8, v9);
  v10 = v1[8];
  v11 = sub_2C5018();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v7 + v10, 1, v11))
  {
    (*(v12 + 8))(v7 + v10, v11);
  }

  v13 = v7 + v1[14];
  if (*(v13 + 8))
  {

    sub_68CD0(v13 + 32);
  }

  v14 = v7 + v1[15];
  if (*(v14 + 8))
  {

    sub_68CD0(v14 + 32);
  }

  v15 = (v2 + v3 + v5) & ~v5;
  v16 = v7 + v1[16];
  if (*(v16 + 8))
  {

    sub_68CD0(v16 + 32);
  }

  v17 = v6 + v15;
  sub_6620C(&unk_3C8530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_2C0D48();
    (*(*(v18 - 8) + 8))(v6 + v15, v18);
  }

  else
  {
  }

  sub_71AF4(*(v17 + v4[5]), *(v17 + v4[5] + 8));
  v19 = v4[6];
  sub_6620C(&qword_3BD530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_2C0C98();
    (*(*(v20 - 8) + 8))(v17 + v19, v20);
  }

  else
  {
  }

  sub_71AF4(*(v17 + v4[7]), *(v17 + v4[7] + 8));

  return _swift_deallocObject(v6, v15 + v22, v23 | v5 | 7);
}

uint64_t sub_217580(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2175E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ReviewBrickComponentModel() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ReviewBrickComponent() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_215D60(a1, v2 + v6, v9, a2);
}

unint64_t sub_2176CC()
{
  result = qword_3C6DB8;
  if (!qword_3C6DB8)
  {
    sub_718D4(&qword_3C6DB0);
    sub_718D4(&qword_3C6DC0);
    sub_718D4(&qword_3BC940);
    sub_217824();
    sub_72B74(&qword_3BC960, &qword_3BC940);
    swift_getOpaqueTypeConformance2();
    sub_217AE8(&qword_3BCA50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6DB8);
  }

  return result;
}

unint64_t sub_217824()
{
  result = qword_3C6DC8;
  if (!qword_3C6DC8)
  {
    sub_718D4(&qword_3C6DC0);
    sub_2178DC();
    sub_72B74(&qword_3BD800, &qword_3BD7E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6DC8);
  }

  return result;
}

unint64_t sub_2178DC()
{
  result = qword_3C6DD0;
  if (!qword_3C6DD0)
  {
    sub_718D4(&qword_3C6DD8);
    sub_718D4(&qword_3C6DE0);
    sub_2179D0();
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3C6A70, &qword_3C6A78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6DD0);
  }

  return result;
}

unint64_t sub_2179D0()
{
  result = qword_3C6DE8;
  if (!qword_3C6DE8)
  {
    sub_718D4(&qword_3C6DE0);
    sub_217AE8(&qword_3BE368, &type metadata accessor for StarRatingView);
    sub_72B74(&qword_3BCB10, &qword_3BCB18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6DE8);
  }

  return result;
}

uint64_t sub_217AE8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_217B34()
{
  result = qword_3C6E00;
  if (!qword_3C6E00)
  {
    sub_718D4(&qword_3C6CF8);
    sub_718D4(&qword_3C6CA8);
    sub_216C84();
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3C6E08, &qword_3C6D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6E00);
  }

  return result;
}

uint64_t sub_217C34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_217C90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_217D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a1;
  v11 = sub_2C30F8();
  v20 = *(v11 - 8);
  v21 = v11;
  __chkstk_darwin(v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a4 & 1;
  v25 = a4;
  v24 = a5;
  v26 = a5;
  sub_6620C(&qword_3BFC48);
  sub_2C4398();
  sub_6620C(&qword_3C6E10);
  sub_72B74(&qword_3C6E18, &qword_3C6E10);
  sub_2C3AA8();

  if ((a3 & 1) == 0)
  {
    sub_2C5DD8();
    v14 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    (*(v20 + 8))(v13, v21);
  }

  v15 = sub_2BEE68();

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3 & 1;
  *(v16 + 32) = v23;
  *(v16 + 40) = v24;
  v17 = sub_6620C(&qword_3C6E20);
  *(a6 + *(v17 + 52)) = v15;
  v18 = (a6 + *(v17 + 56));
  *v18 = sub_2181B0;
  v18[1] = v16;
}

uint64_t sub_217FAC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v7 = sub_2BEE48();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for HostingControllerVisibilityStateManager.State.visible(_:), v7, v9);
  sub_2181CC();
  sub_2C5A88();
  sub_2C5A88();
  if (v15 == v14[0] && v16 == v14[1])
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_2C65B8();
  }

  (*(v8 + 8))(v11, v7);

  LOBYTE(v15) = a4 & 1;
  v16 = a5;
  LOBYTE(v14[0]) = v12 & 1;
  sub_6620C(&qword_3BFC48);
  return sub_2C4388();
}

uint64_t sub_218170()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_2181CC()
{
  result = qword_3C0C10;
  if (!qword_3C0C10)
  {
    sub_2BEE48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0C10);
  }

  return result;
}

uint64_t sub_21827C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2C4BF8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_6620C(&unk_3CA260);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2183C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = sub_2C4BF8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_6620C(&unk_3CA260);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for SeriesListFilterAction()
{
  result = qword_3C6E88;
  if (!qword_3C6E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21853C()
{
  sub_7848C();
  if (v0 <= 0x3F)
  {
    sub_2C4BF8();
    if (v1 <= 0x3F)
    {
      sub_784F0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_218604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6620C(&qword_3BC7C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_6620C(&qword_3BE400);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_6620C(&qword_3BD588);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_21877C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_6620C(&qword_3BC7C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_6620C(&qword_3BE400);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_6620C(&qword_3BD588);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t type metadata accessor for SheetHeaderComponent()
{
  result = qword_3C6F28;
  if (!qword_3C6F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218938()
{
  sub_FF518(319, &qword_3BC850, &type metadata accessor for ColorConstants);
  if (v0 <= 0x3F)
  {
    sub_FF518(319, &qword_3BE478, &type metadata accessor for FontConstants);
    if (v1 <= 0x3F)
    {
      sub_FF518(319, &qword_3BD600, &type metadata accessor for SizeConstants);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 sub_218AA8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v4 = sub_2C0C68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2C0C98();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_6620C(&qword_3C6F70);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  type metadata accessor for SheetHeaderComponent();
  sub_29AAE0(v11);
  sub_2C0C78();
  (*(v9 + 8))(v11, v8);
  sub_2C0C08();
  v16 = v15;
  (*(v5 + 8))(v7, v4);
  *v14 = sub_2C3178();
  *(v14 + 1) = v16;
  v14[16] = 0;
  v17 = sub_6620C(&qword_3C6F78);
  sub_218D68(v23, v2, &v14[*(v17 + 44)]);
  sub_2C46B8();
  sub_2C2AD8();
  sub_21991C(v14, a2);
  v18 = a2 + *(sub_6620C(&qword_3C6F80) + 36);
  v19 = v29;
  *(v18 + 64) = v28;
  *(v18 + 80) = v19;
  *(v18 + 96) = v30;
  v20 = v25;
  *v18 = v24;
  *(v18 + 16) = v20;
  result = v27;
  *(v18 + 32) = v26;
  *(v18 + 48) = result;
  return result;
}

uint64_t sub_218D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v35 = a2;
  v36 = a3;
  v32 = sub_2C0DB8();
  v4 = *(v32 - 8);
  __chkstk_darwin(v32);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2C2388();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6620C(&qword_3C6F88);
  v33 = *(v11 - 8);
  v34 = v11;
  __chkstk_darwin(v11);
  v31 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  type metadata accessor for SheetHeaderComponentModel();
  sub_6620C(&qword_3C07F0);
  v16 = sub_2C1078();
  sub_2BF828();

  sub_264DA4(v6);
  sub_2C2378();
  sub_264DA4(v6);
  sub_2C0D98();
  (*(v4 + 8))(v6, v32);
  sub_21998C(&qword_3C6F90, &type metadata accessor for CoverView);
  sub_2C3D38();
  (*(v8 + 8))(v10, v7);
  v17 = sub_2C3338();
  LOBYTE(v41[0]) = 0;
  sub_2191C4(a1, v35, v38);
  *&v37[7] = v38[0];
  *&v37[23] = v38[1];
  *&v37[39] = v38[2];
  *&v37[55] = v38[3];
  LOBYTE(v8) = v41[0];
  v18 = v33;
  v19 = v34;
  v20 = *(v33 + 16);
  v21 = v31;
  v20(v31, v15, v34);
  v22 = v36;
  v20(v36, v21, v19);
  v23 = &v22[*(sub_6620C(&qword_3C6F98) + 48)];
  *&v39 = v17;
  *(&v39 + 1) = 0x4008000000000000;
  v40[0] = v8;
  *&v40[1] = *v37;
  *&v40[17] = *&v37[16];
  *&v40[33] = *&v37[32];
  *&v40[49] = *&v37[48];
  v24 = *&v37[63];
  *&v40[64] = *&v37[63];
  v25 = *v40;
  *v23 = v39;
  *(v23 + 1) = v25;
  v26 = *&v40[16];
  v27 = *&v40[32];
  v28 = *&v40[48];
  *(v23 + 10) = v24;
  *(v23 + 3) = v27;
  *(v23 + 4) = v28;
  *(v23 + 2) = v26;
  sub_2199D4(&v39, v41);
  v29 = *(v18 + 8);
  v29(v15, v19);
  v41[0] = v17;
  v41[1] = 0x4008000000000000;
  v42 = v8;
  v44 = *&v37[16];
  v45 = *&v37[32];
  *v46 = *&v37[48];
  *&v46[15] = *&v37[63];
  v43 = *v37;
  sub_219A44(v41);
  return (v29)(v21, v19);
}

uint64_t sub_2191C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v71 = a3;
  v72 = a2;
  v65 = a1;
  v74 = sub_2C0D48();
  v76 = *(v74 - 8);
  __chkstk_darwin(v74);
  v67 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_2C0928();
  v75 = *(v73 - 8);
  __chkstk_darwin(v73);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2C0978();
  v60 = v7;
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for SheetHeaderComponentModel();
  v11 = (a1 + *(v64 + 32));
  v12 = v11[1];
  v78 = *v11;
  v79 = v12;
  v63 = sub_7212C();

  v13 = sub_2C3A48();
  v15 = v14;
  v17 = v16;
  v62 = *(type metadata accessor for SheetHeaderComponent() + 20);
  sub_29AD08(v10);
  v56 = v6;
  sub_2C0938();
  v18 = *(v8 + 8);
  v59 = v8 + 8;
  v61 = v18;
  v18(v10, v7);
  sub_2C0908();
  v19 = *(v75 + 8);
  v75 += 8;
  v58 = v19;
  v19(v6, v73);
  v20 = sub_2C39E8();
  v22 = v21;
  v24 = v23;
  sub_72180(v13, v15, v17 & 1);

  v25 = v67;
  sub_29A87C(v67);
  sub_2C0CB8();
  v26 = *(v76 + 8);
  v76 += 8;
  v57 = v26;
  v26(v25, v74);
  v27 = sub_2C3998();
  v69 = v28;
  v70 = v27;
  v68 = v29;
  v66 = v30;
  sub_72180(v20, v22, v24 & 1);

  v31 = (v65 + *(v64 + 36));
  v32 = v31[1];
  v78 = *v31;
  v79 = v32;

  v33 = sub_2C3A48();
  v35 = v34;
  v37 = v36;
  sub_29AD08(v10);
  v38 = v56;
  sub_2C0938();
  v61(v10, v60);
  sub_2C0918();
  v58(v38, v73);
  v39 = sub_2C39E8();
  v41 = v40;
  LOBYTE(v38) = v42;
  sub_72180(v33, v35, v37 & 1);

  sub_29A87C(v25);
  sub_2C0D08();
  v57(v25, v74);
  v43 = sub_2C3998();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  sub_72180(v39, v41, v38 & 1);

  v50 = v66 & 1;
  v77 = v66 & 1;
  LOBYTE(v78) = v66 & 1;
  LOBYTE(v33) = v47 & 1;
  v80 = v47 & 1;
  v52 = v70;
  v51 = v71;
  v54 = v68;
  v53 = v69;
  *v71 = v70;
  v51[1] = v54;
  *(v51 + 16) = v50;
  v51[3] = v53;
  v51[4] = v43;
  v51[5] = v45;
  *(v51 + 48) = v33;
  v51[7] = v49;
  sub_BE2CC(v52, v54, v50);

  sub_BE2CC(v43, v45, v33);

  sub_72180(v43, v45, v33);

  sub_72180(v52, v54, v77);
}

uint64_t sub_219764()
{
  __chkstk_darwin(v0);
  sub_219AAC(v2, &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21998C(&unk_3C85E0, type metadata accessor for SheetHeaderComponent);
  return sub_2BFD18();
}

uint64_t sub_21991C(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C6F70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21998C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2199D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C6FA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219A44(uint64_t a1)
{
  v2 = sub_6620C(&qword_3C6FA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219AAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SheetHeaderComponent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_219B14()
{
  result = qword_3C6FA8;
  if (!qword_3C6FA8)
  {
    sub_718D4(&qword_3C6F80);
    sub_219BA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6FA8);
  }

  return result;
}

unint64_t sub_219BA0()
{
  result = qword_3C6FB0;
  if (!qword_3C6FB0)
  {
    sub_718D4(&qword_3C6F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6FB0);
  }

  return result;
}

uint64_t sub_219C28(uint64_t a1)
{
  v2 = sub_6620C(&qword_3C1880);
  __chkstk_darwin(v2 - 8);
  sub_6932C(a1, &v5 - v3, &qword_3C1880);
  return sub_2C2D38();
}

uint64_t sub_219CD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2C2E18();
  *a1 = result & 1;
  return result;
}

uint64_t sub_219D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_2C2A38();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_6620C(&qword_3C7278);
  v27 = *(v6 - 8);
  v28 = v6;
  __chkstk_darwin(v6);
  v39 = &v26 - v7;
  v8 = sub_6620C(&qword_3C7270);
  v29 = *(v8 - 8);
  v30 = v8;
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  if (qword_3BB8D8 != -1)
  {
    swift_once();
  }

  v38 = sub_2C2588();
  sub_57AD8(v38, qword_3E8898);
  v36 = *(v4 + 16);
  v37 = v4 + 16;
  v36(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v11 = *(v4 + 80);
  v34 = a1;
  v12 = (v11 + 16) & ~v11;
  v13 = swift_allocObject();
  v35 = *(v4 + 32);
  v35(v13 + v12, &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v14 = sub_6620C(&qword_3C7248);
  v32 = v5;
  v33 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v14;
  v16 = sub_2263D0();
  sub_2C40A8();

  if (qword_3BB8E0 != -1)
  {
    swift_once();
  }

  sub_57AD8(v38, qword_3E88B0);
  v17 = v33;
  v36(v33, v34, v3);
  v18 = swift_allocObject();
  v35(v18 + v12, v17, v3);
  v40 = v15;
  v41 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v28;
  v21 = v39;
  sub_2C40A8();

  (*(v27 + 8))(v21, v20);
  if (qword_3BB8E8 != -1)
  {
    swift_once();
  }

  sub_57AD8(v38, qword_3E88C8);
  v22 = v33;
  v36(v33, v34, v3);
  v23 = swift_allocObject();
  v35(v23 + v12, v22, v3);
  v40 = v20;
  v41 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v24 = v30;
  sub_2C40A8();

  return (*(v29 + 8))(v10, v24);
}

uint64_t sub_21A228@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2C2D98();
  *a1 = result & 1;
  return result;
}

void sub_21A280(uint64_t a1)
{
  v2 = type metadata accessor for Shelf();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Page();
  __chkstk_darwin(v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0)
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (a1)
  {
    v9 = 0;
    v10 = 0;
    type metadata accessor for PageView();
    while (1)
    {
      sub_6620C(&qword_3C0C50);
      sub_2C44C8();
      v11 = *&v8[*(v6 + 60)];

      sub_226368(v8, type metadata accessor for Page);
      if (v10 >= *(v11 + 16))
      {
        break;
      }

      sub_226300(v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v5, type metadata accessor for Shelf);

      v12 = v5[*(v2 + 28)];
      sub_226368(v5, type metadata accessor for Shelf);
      v13 = __OFADD__(v9, v12);
      v9 += v12;
      if (v13)
      {
        goto LABEL_10;
      }

      if (a1 == ++v10)
      {
        return;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_21A494()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PageView();
  sub_6620C(&qword_3BC330);
  sub_2C4968();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2E3F30;
  v7 = v0 + *(v5 + 32);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v9 = v8;
  }

  else
  {

    sub_2C5DD8();
    v10 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_9E94C(v8, 0);
    (*(v2 + 8))(v4, v1);
    v8 = v14;
  }

  sub_2BF028();
  if (v8)
  {
    v14 = v8;
  }

  else
  {
    sub_2C4DB8();
    v8 = v14;
  }

  v13 = v8;
  sub_2C4958();
  v14 = v6;
  sub_6620C(&unk_3BD220);
  sub_72B74(&qword_3BCE60, &unk_3BD220);
  v11 = sub_2C4DF8();

  return v11;
}

uint64_t sub_21A74C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v245 = a1;
  v246 = sub_2C5118();
  v244 = *(v246 - 8);
  __chkstk_darwin(v246);
  v241 = &v193 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v242 = &v193 - v5;
  __chkstk_darwin(v6);
  v243 = &v193 - v7;
  v8 = sub_2BEF78();
  v262 = *(v8 - 8);
  v263 = v8;
  __chkstk_darwin(v8);
  v240 = &v193 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v259 = &v193 - v11;
  v12 = sub_6620C(&qword_3C70B0);
  __chkstk_darwin(v12 - 8);
  v236 = &v193 - v13;
  v210 = type metadata accessor for HideSmallNavigationTitleIfNeededAdaptor();
  __chkstk_darwin(v210);
  v209 = &v193 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_2C30F8();
  v219 = *(v220 - 8);
  __chkstk_darwin(v220);
  v218 = &v193 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_2C1A28();
  v260 = *(v205 - 8);
  __chkstk_darwin(v205);
  v208 = &v193 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_6620C(&unk_3C0EA0);
  __chkstk_darwin(v17 - 8);
  v200 = &v193 - v18;
  v204 = sub_2C0F68();
  v203 = *(v204 - 8);
  __chkstk_darwin(v204);
  v199 = (&v193 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v268 = type metadata accessor for Page();
  __chkstk_darwin(v268);
  v239 = &v193 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v212 = &v193 - v22;
  __chkstk_darwin(v23);
  v211 = &v193 - v24;
  __chkstk_darwin(v25);
  v202 = &v193 - v26;
  __chkstk_darwin(v27);
  v201 = &v193 - v28;
  __chkstk_darwin(v29);
  v31 = &v193 - v30;
  v32 = type metadata accessor for PageView();
  v249 = v32;
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v261 = sub_6620C(&qword_3C70B8);
  __chkstk_darwin(v261);
  v36 = &v193 - v35;
  v207 = sub_6620C(&qword_3C70C0);
  v206 = *(v207 - 8);
  __chkstk_darwin(v207);
  v248 = (&v193 - v37);
  v250 = sub_6620C(&qword_3C70C8);
  __chkstk_darwin(v250);
  v251 = (&v193 - v38);
  v216 = sub_6620C(&qword_3C70D0);
  v215 = *(v216 - 8);
  __chkstk_darwin(v216);
  v214 = &v193 - v39;
  v213 = sub_6620C(&qword_3C70D8);
  __chkstk_darwin(v213);
  v217 = &v193 - v40;
  v256 = sub_6620C(&qword_3C70E0);
  __chkstk_darwin(v256);
  v221 = &v193 - v41;
  v224 = sub_6620C(&qword_3C70E8);
  v223 = *(v224 - 8);
  __chkstk_darwin(v224);
  v222 = &v193 - v42;
  v228 = sub_6620C(&qword_3C70F0);
  v226 = *(v228 - 8);
  __chkstk_darwin(v228);
  v225 = &v193 - v43;
  v232 = sub_6620C(&qword_3C70F8);
  v229 = *(v232 - 8);
  __chkstk_darwin(v232);
  v227 = &v193 - v44;
  v45 = sub_6620C(&qword_3C7100);
  __chkstk_darwin(v45 - 8);
  v230 = &v193 - v46;
  v234 = sub_6620C(&qword_3C7108);
  __chkstk_darwin(v234);
  v231 = &v193 - v47;
  v258 = sub_6620C(&qword_3C7110);
  v235 = *(v258 - 8);
  __chkstk_darwin(v258);
  v233 = &v193 - v48;
  v238 = sub_6620C(&qword_3C7118);
  v237 = *(v238 - 8);
  __chkstk_darwin(v238);
  v257 = &v193 - v49;
  sub_226300(v2, &v193 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PageView);
  v50 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v253 = *(v33 + 80);
  v252 = v50 + v34;
  v198 = swift_allocObject();
  v254 = v50;
  v255 = (&v193 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_227474(v255, v198 + v50, type metadata accessor for PageView);
  v197 = sub_21FE30();
  v196 = sub_2C3758();
  KeyPath = swift_getKeyPath();
  v51 = *(v32 + 40);
  v265 = sub_6620C(&qword_3C0C50);
  v266 = v51;
  sub_2C44C8();
  v52 = v268;
  v194 = v31[v268[23]];
  v247 = type metadata accessor for Page;
  v53 = v31;
  sub_226368(v31, type metadata accessor for Page);
  v193 = swift_getKeyPath();
  v54 = &v36[*(sub_6620C(&qword_3C7120) + 36)];
  v55 = *(sub_6620C(&qword_3BDFA8) + 28);
  sub_2C44C8();
  v56 = v52[8];
  v57 = sub_2C1A68();
  v58 = *(v57 - 8);
  (*(v58 + 16))(v54 + v55, v53 + v56, v57);
  v264 = v53;
  sub_226368(v53, v247);
  (*(v58 + 56))(v54 + v55, 0, 1, v57);
  *v54 = v193;
  v59 = v198;
  *v36 = sub_2255B4;
  *(v36 + 1) = v59;
  *(v36 + 2) = v197;
  v36[24] = v196;
  *(v36 + 4) = KeyPath;
  v36[40] = v194;
  v60 = v36;
  v61 = swift_getKeyPath();
  v62 = sub_21A494();
  v63 = &v36[*(v261 + 36)];
  *v63 = v61;
  v63[1] = v62;
  v64 = v199;
  sub_220174(v199);
  v65 = v249;
  v66 = v2 + *(v249 + 56);
  v67 = *(v66 + 16);
  v273 = *v66;
  v274 = v67;
  sub_6620C(&qword_3C7128);
  sub_2C4398();
  v68 = v2 + *(v65 + 60);
  v69 = *v68;
  v70 = *(v68 + 8);
  LOBYTE(v273) = v69;
  *(&v273 + 1) = v70;
  sub_6620C(&qword_3BFC48);
  sub_2C4398();
  sub_6620C(&qword_3C6FC0);
  v71 = v200;
  sub_2C4398();
  v198 = sub_22566C();
  sub_2C3C38();

  v72 = v205;

  sub_69198(v71, &unk_3C0EA0);
  (*(v203 + 8))(v64, v204);
  sub_69198(v60, &qword_3C70B8);
  v73 = v201;
  sub_2C44C8();
  v74 = *(v73 + v268[9]);
  v75 = v247;
  sub_226368(v73, v247);
  v76 = v202;
  sub_2C44C8();
  v77 = *(v260 + 16);
  v78 = v208;
  v77();
  sub_226368(v76, v75);
  v79 = *v2;
  v267 = v2;
  LODWORD(v57) = *(v2 + 8);

  v80 = v79;
  LODWORD(v204) = v57;
  if ((v57 & 1) == 0)
  {
    sub_2C5DD8();
    v81 = sub_2C3718();
    sub_2C0058();

    v82 = v218;
    sub_2C30E8();
    swift_getAtKeyPath();

    (*(v219 + 8))(v82, v220);
    v80 = v269;
  }

  v247 = v79;
  v83 = v210;
  v84 = v209;
  v85 = v78;
  (v77)(&v209[*(v210 + 20)], v78, v72);
  *v84 = v74;
  *&v84[*(v83 + 24)] = v80;
  *&v269 = v261;
  *(&v269 + 1) = v198;
  swift_getOpaqueTypeConformance2();
  sub_2285DC(&qword_3C7190, type metadata accessor for HideSmallNavigationTitleIfNeededAdaptor);
  v86 = v251;
  v87 = v207;
  v88 = v248;
  sub_2C3FD8();
  sub_226368(v84, type metadata accessor for HideSmallNavigationTitleIfNeededAdaptor);
  (*(v260 + 8))(v85, v72);
  (*(v206 + 8))(v88, v87);
  v89 = v249;
  v90 = v86 + *(sub_6620C(&qword_3C7198) + 36);
  sub_6620C(&qword_3C0C70);
  v91 = v267;
  sub_2C44F8();
  v92 = type metadata accessor for PageAlertViewModifier(0);
  v93 = &v90[v92[5]];
  *v93 = swift_getKeyPath();
  v93[8] = 0;
  v94 = &v90[v92[6]];
  *v94 = swift_getKeyPath();
  v94[40] = 0;
  v95 = v92[7];
  *&v90[v95] = swift_getKeyPath();
  sub_6620C(&unk_3C4360);
  swift_storeEnumTagMultiPayload();
  v249 = *(v91 + *(v89 + 68));
  v96 = v264;
  sub_2C44C8();
  v97 = v268;
  v98 = v268[17];
  v99 = v86 + *(v250 + 9);
  v100 = type metadata accessor for PageViewEventViewModifier();
  v101 = &v99[v100[6]];
  v260 = *(v262 + 16);
  v261 = v262 + 16;
  (v260)(v101, v96 + v98, v263);
  sub_226368(v96, type metadata accessor for Page);
  v102 = v211;
  sub_2C44C8();
  v103 = *(v102 + v97[18]);

  sub_226368(v102, type metadata accessor for Page);
  v104 = v212;
  sub_2C44C8();
  v105 = v97[19];
  v106 = v100[8];
  v107 = sub_2C4BB8();
  (*(*(v107 - 8) + 16))(&v99[v106], v104 + v105, v107);
  sub_226368(v104, type metadata accessor for Page);
  *v99 = swift_getKeyPath();
  v99[8] = 0;
  *(v99 + 2) = v249;
  *&v99[v100[7]] = v103;

  v108 = sub_21A494();
  __chkstk_darwin(v108);
  sub_2C4DB8();
  if (v269 == 1)
  {
  }

  else
  {
    sub_2C4E58();
    sub_2C4DC8();
  }

  v109 = v214;
  v110 = v247;
  sub_2C4E28();
  sub_225990();
  v111 = v251;
  sub_2C3AD8();

  sub_69198(v111, &qword_3C70C8);

  if ((v204 & 1) == 0)
  {
    sub_2C5DD8();
    v112 = sub_2C3718();
    sub_2C0058();

    v113 = v218;
    sub_2C30E8();
    swift_getAtKeyPath();

    (*(v219 + 8))(v113, v220);
    v110 = v269;
  }

  *&v269 = *(v110 + 2);

  sub_6620C(&qword_3BCE08);
  sub_72B74(&qword_3BCE10, &qword_3BCE08);
  v114 = sub_2C2408();

  v250 = type metadata accessor for PageView;
  v115 = v255;
  sub_226300(v267, v255, type metadata accessor for PageView);
  v116 = swift_allocObject();
  v248 = type metadata accessor for PageView;
  sub_227474(v115, v116 + v254, type metadata accessor for PageView);
  v117 = v217;
  (*(v215 + 32))(v217, v109, v216);
  v118 = v213;
  *(v117 + *(v213 + 52)) = v114;
  v119 = (v117 + *(v118 + 56));
  *v119 = sub_225BD0;
  v119[1] = v116;
  v120 = v264;
  sub_2C44C8();
  v121 = *(v120 + v268[22]);

  v251 = type metadata accessor for Page;
  sub_226368(v120, type metadata accessor for Page);
  *&v269 = v121;
  sub_183EBC();
  v122 = sub_2C5E88();
  *&v273 = v122;
  v123 = sub_2C5E78();
  v124 = v236;
  (*(*(v123 - 8) + 56))(v236, 1, 1, v123);
  sub_6620C(&qword_3C71B0);
  sub_72B74(&qword_3C71B8, &qword_3C71B0);
  sub_2285DC(&qword_3C71C0, sub_183EBC);
  v125 = v221;
  sub_2C2438();
  sub_69198(v124, &qword_3C70B0);

  v126 = v255;
  sub_226300(v267, v255, v250);
  v127 = swift_allocObject();
  sub_227474(v126, v127 + v254, v248);
  sub_69130(v117, v125, &qword_3C70D8);
  v128 = v256;
  v129 = (v125 + v256[14]);
  *v129 = sub_225BFC;
  v129[1] = v127;
  v130 = type metadata accessor for ListItemComponentModel();
  v131 = sub_6620C(&qword_3C71C8);
  v132 = sub_72B74(&qword_3C71D0, &qword_3C70E0);
  v133 = type metadata accessor for ContextActionMenuView(255);
  v134 = sub_2285DC(&qword_3C23D8, type metadata accessor for ContextActionMenuView);
  *&v269 = v133;
  *(&v269 + 1) = v134;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v136 = sub_2285DC(&qword_3BD3F8, type metadata accessor for ListItemComponentModel);
  v253 = OpaqueTypeConformance2;
  v137 = v222;
  v254 = v131;
  sub_2C3B18();
  sub_69198(v125, &qword_3C70E0);
  v138 = type metadata accessor for RecommendationItemComponentModel();
  v139 = sub_6620C(&qword_3C71D8);
  *&v269 = v128;
  *(&v269 + 1) = v131;
  *&v270 = v130;
  *(&v270 + 1) = v132;
  v271 = OpaqueTypeConformance2;
  v272 = v136;
  v256 = &opaque type descriptor for <<opaque return type of View.componentMenuTemplate<A, B>(for:on:content:)>>;
  v140 = swift_getOpaqueTypeConformance2();
  v141 = sub_225C28();
  v142 = sub_2285DC(&qword_3BD408, type metadata accessor for RecommendationItemComponentModel);
  v143 = v225;
  v144 = v224;
  sub_2C3B18();
  (*(v223 + 8))(v137, v144);
  v145 = type metadata accessor for ChartSwooshItemComponentModel();
  *&v269 = v144;
  *(&v269 + 1) = v139;
  *&v270 = v138;
  *(&v270 + 1) = v140;
  v271 = v141;
  v272 = v142;
  v250 = swift_getOpaqueTypeConformance2();
  v252 = sub_2285DC(&qword_3BD3A0, type metadata accessor for ChartSwooshItemComponentModel);
  v146 = v253;
  v147 = v227;
  v148 = v228;
  v149 = v254;
  sub_2C3B18();
  (*(v226 + 8))(v143, v148);
  v150 = v264;
  sub_2C44C8();
  v151 = v259;
  v152 = v263;
  (v260)(v259, v150 + v268[17], v263);
  sub_226368(v150, v251);
  v153 = sub_2BEF68();
  v155 = v154;
  v156 = *(v262 + 8);
  v262 += 8;
  v255 = v156;
  (v156)(v151, v152);
  *&v273 = v153;
  *(&v273 + 1) = v155;
  *&v269 = v148;
  *(&v269 + 1) = v149;
  *&v270 = v145;
  *(&v270 + 1) = v250;
  v271 = v146;
  v272 = v252;
  swift_getOpaqueTypeConformance2();
  sub_7212C();
  v157 = v230;
  v158 = v232;
  sub_2C3F78();

  (*(v229 + 8))(v147, v158);
  v159 = v264;
  sub_2C44C8();
  v160 = v268;
  v161 = *(v159 + v268[21]);

  v162 = v251;
  sub_226368(v159, v251);
  v163 = v234;
  v164 = *(v234 + 36);
  v165 = v249;

  v166 = v231;
  sub_D5760(v161, v165, &v231[v164]);
  sub_69130(v157, v166, &qword_3C7100);
  v167 = sub_225EB0();
  v168 = v233;
  sub_2C3B28();
  sub_69198(v166, &qword_3C7108);
  *&v269 = v163;
  *(&v269 + 1) = v167;
  v169 = swift_getOpaqueTypeConformance2();
  v170 = v258;
  v256 = v169;
  sub_2C3B38();
  (*(v235 + 8))(v168, v170);
  v269 = 0u;
  v270 = 0u;
  v171 = v241;
  sub_2C50C8();
  sub_69198(&v269, qword_3C0250);
  v172 = v239;
  sub_2C44C8();
  v173 = v240;
  v174 = v263;
  (v260)(v240, v172 + v160[17], v263);
  sub_226368(v172, v162);
  v175 = sub_2BEF58();
  v177 = v176;
  v178 = v255;
  (v255)(v173, v174);
  if (v177)
  {
    v179 = &type metadata for String;
  }

  else
  {
    v175 = 0;
    v179 = 0;
    *&v270 = 0;
  }

  *&v269 = v175;
  *(&v269 + 1) = v177;
  *(&v270 + 1) = v179;
  v180 = v242;
  sub_2C50F8();
  v181 = *(v244 + 8);
  v182 = v246;
  v181(v171, v246);
  sub_69198(&v269, qword_3C0250);
  v183 = v264;
  sub_2C44C8();
  v184 = v259;
  v185 = v263;
  (v260)(v259, v183 + v268[17], v263);
  sub_226368(v183, type metadata accessor for Page);
  v186 = sub_2BEF68();
  v188 = v187;
  v178(v184, v185);
  *(&v270 + 1) = &type metadata for String;
  *&v269 = v186;
  *(&v269 + 1) = v188;
  v189 = v243;
  sub_2C50F8();
  v181(v180, v182);
  sub_69198(&v269, qword_3C0250);
  *&v269 = v258;
  *(&v269 + 1) = v256;
  swift_getOpaqueTypeConformance2();
  v190 = v238;
  v191 = v257;
  sub_2C3B08();
  v181(v189, v182);
  return (*(v237 + 8))(v191, v190);
}

uint64_t sub_21CA24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a3;
  v69 = sub_6620C(&qword_3C0C18);
  __chkstk_darwin(v69);
  v70 = &v54 - v5;
  v6 = type metadata accessor for Page();
  __chkstk_darwin(v6 - 8);
  v65 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_2C2A38();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = v8;
  v60 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for PageView();
  v58 = *(v75 - 8);
  __chkstk_darwin(v75);
  v57 = v9;
  v68 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_2C30F8();
  v55 = *(v74 - 1);
  __chkstk_darwin(v74);
  v54 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6620C(&qword_3C7248);
  __chkstk_darwin(v11);
  v13 = &v54 - v12;
  v14 = sub_6620C(&qword_3C7250);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v54 - v16;
  v63 = sub_6620C(&qword_3C7258);
  __chkstk_darwin(v63);
  v19 = &v54 - v18;
  v20 = sub_6620C(&qword_3C7260);
  v66 = *(v20 - 8);
  v67 = v20;
  __chkstk_darwin(v20);
  v64 = &v54 - v21;
  sub_21D490(v13);
  v73 = a1;
  sub_219D28(a1, v17);
  sub_69198(v13, &qword_3C7248);
  v76 = a2;
  sub_6620C(&qword_3C7268);
  v22 = sub_718D4(&qword_3C7270);
  v23 = sub_718D4(&qword_3C7278);
  v24 = sub_2263D0();
  v77 = v11;
  v78 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v77 = v23;
  v78 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeConformance2();
  v77 = v22;
  v78 = v26;
  swift_getOpaqueTypeConformance2();
  sub_118844();
  sub_2267B0();
  v56 = v19;
  sub_2C4128();
  (*(v15 + 8))(v17, v14);
  v27 = *a2;
  LOBYTE(v22) = *(a2 + 8);

  if ((v22 & 1) == 0)
  {
    sub_2C5DD8();
    v28 = sub_2C3718();
    sub_2C0058();

    v29 = v54;
    sub_2C30E8();
    swift_getAtKeyPath();

    (*(v55 + 8))(v29, v74);
    v27 = v77;
  }

  v77 = *(v27 + 16);

  sub_6620C(&qword_3BCE08);
  sub_72B74(&qword_3BCE10, &qword_3BCE08);
  v30 = sub_2C2408();

  v74 = type metadata accessor for PageView;
  v72 = a2;
  v31 = v68;
  sub_226300(a2, v68, type metadata accessor for PageView);
  v32 = v61;
  v33 = v60;
  v34 = v62;
  (*(v61 + 16))(v60, v73, v62);
  v35 = *(v58 + 80);
  v36 = (v35 + 16) & ~v35;
  v73 = v36 + v57;
  v37 = (v36 + v57 + *(v32 + 80)) & ~*(v32 + 80);
  v58 = v35 | 7;
  v38 = swift_allocObject();
  v55 = v36;
  v59 = type metadata accessor for PageView;
  sub_227474(v31, v38 + v36, type metadata accessor for PageView);
  (*(v32 + 32))(v38 + v37, v33, v34);
  v39 = v63;
  v40 = v56;
  *&v56[*(v63 + 52)] = v30;
  v41 = (v40 + *(v39 + 56));
  *v41 = sub_22709C;
  v41[1] = v38;
  sub_6620C(&qword_3C0C50);
  v42 = v72;
  v43 = v65;
  sub_2C44C8();
  Page.shelfGridIDToLoadMore.getter(&v77);
  sub_226368(v43, type metadata accessor for Page);
  sub_226300(v42, v31, v74);
  v44 = swift_allocObject();
  sub_227474(v31, v44 + v36, type metadata accessor for PageView);
  v45 = sub_6620C(&qword_3BE008);
  v46 = sub_72B74(&qword_3C7300, &qword_3C7258);
  v47 = sub_2284A8(&qword_3C7308, &qword_3BE008);
  v48 = v64;
  sub_2C4108();

  sub_69198(&v77, &qword_3BE008);
  sub_69198(v40, &qword_3C7258);
  v49 = v72;
  v50 = v70;
  sub_29B3C4(v70);
  sub_226300(v49, v31, v74);
  v51 = swift_allocObject();
  sub_227474(v31, v51 + v55, v59);
  v77 = v39;
  v78 = v45;
  v79 = v46;
  v80 = v47;
  swift_getOpaqueTypeConformance2();
  sub_227208();
  v52 = v67;
  sub_2C40F8();

  sub_69198(v50, &qword_3C0C18);
  return (*(v66 + 8))(v48, v52);
}
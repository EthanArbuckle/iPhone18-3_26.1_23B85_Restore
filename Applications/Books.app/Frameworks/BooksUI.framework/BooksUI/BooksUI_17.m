uint64_t sub_1B7E68(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_316F68, &unk_269C50);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_2EF0(&qword_317878, &unk_27E490);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[10] + 8) = a2;
    return result;
  }

  v16 = sub_2EF0(&qword_318458, &unk_26B270);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[13];
    goto LABEL_5;
  }

  v17 = sub_261690();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[17];

  return v18(v19, a2, a2, v17);
}

uint64_t type metadata accessor for TextLockup()
{
  result = qword_323BA8;
  if (!qword_323BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B8098()
{
  sub_1B830C(319, &qword_316FE8, type metadata accessor for ColorConstants, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_1B830C(319, &qword_3178F8, &type metadata accessor for BlendMode, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_1B82BC(319, &qword_3167D0, &type metadata for Bool, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_1B82BC(319, &qword_316CB8, &type metadata for String, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1B82BC(319, &qword_323BB8, &type metadata for TextLockup.TitleViewModel, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_1B830C(319, &unk_323BC0, &type metadata accessor for Font.Design, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_261690();
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

void sub_1B82BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B830C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B837C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 24))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 16) >> 57) >> 6) | (2 * ((*(a1 + 16) >> 57) & 0x38 | *(a1 + 16) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B83D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_1B8474()
{
  result = qword_323C20;
  if (!qword_323C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323C20);
  }

  return result;
}

uint64_t sub_1B8538@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_3179C0, &qword_269D60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for TextLockup();
  sub_8198(v1 + *(v12 + 20), v11, &qword_3179C0, &qword_269D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_263640();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_264900();
    v16 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1B8740()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for TextLockup();
  v7 = v0 + v6[7];
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {

    sub_264900();
    v9 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v8, 0);
    (*(v2 + 8))(v5, v1);
    if (v15[15] != 1)
    {
LABEL_6:
      v10 = 0;
      return v10 & 1;
    }
  }

  if (*(v0 + v6[9]) < 4u)
  {
    goto LABEL_6;
  }

  v11 = v0 + v6[8];
  v12 = *v11;
  if (*(v11 + 8) != 1)
  {

    sub_264900();
    v13 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v12, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v12) = v15[14];
  }

  v10 = v12 ^ 1;
  return v10 & 1;
}

uint64_t sub_1B8974@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v113 = a1;
  v108 = sub_262370();
  v112 = *(v108 - 8);
  v3 = *(v112 + 64);
  __chkstk_darwin(v108);
  v111 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_2EF0(&qword_3174E0, &qword_26B310);
  v5 = *(*(v109 - 8) + 64);
  __chkstk_darwin(v109);
  v107 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v106 = &v100 - v8;
  v9 = sub_261690();
  v123 = *(v9 - 8);
  v10 = *(v123 + 64);
  __chkstk_darwin(v9);
  v122 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_2EF0(&qword_3174E8, &qword_269970);
  v12 = *(*(v110 - 8) + 64);
  __chkstk_darwin(v110);
  v102 = &v100 - v13;
  v14 = sub_261C90();
  v121 = *(v14 - 8);
  v15 = *(v121 + 64);
  __chkstk_darwin(v14);
  v120 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2EF0(&qword_323C28, &qword_2840C0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v100 - v19;
  v21 = sub_2EF0(&qword_323C30, &qword_2840C8);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v25 = &v100 - v24;
  v114 = sub_2EF0(&qword_323C38, &qword_2840D0);
  v26 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114);
  v28 = &v100 - v27;
  v115 = sub_2EF0(&qword_323C40, &qword_2840D8);
  v29 = *(*(v115 - 8) + 64);
  __chkstk_darwin(v115);
  v124 = &v100 - v30;
  v117 = sub_2EF0(&qword_323C48, &qword_2840E0);
  v31 = *(*(v117 - 8) + 64);
  __chkstk_darwin(v117);
  v119 = &v100 - v32;
  v116 = sub_2EF0(&qword_323C50, &qword_2840E8);
  v33 = *(*(v116 - 8) + 64);
  __chkstk_darwin(v116);
  v118 = &v100 - v34;
  v35 = sub_2EF0(&qword_323C58, &qword_2840F0);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v38 = &v100 - v37;
  v105 = sub_2EF0(&qword_323C60, &qword_2840F8);
  v104 = *(v105 - 8);
  v39 = *(v104 + 64);
  __chkstk_darwin(v105);
  v103 = &v100 - v40;
  v41 = type metadata accessor for TextLockup();
  v42 = 0x4024000000000000;
  if (*(v2 + v41[9]) < 4u)
  {
    v42 = 0x4010000000000000;
  }

  *v20 = *(v2 + v41[14]);
  *(v20 + 1) = v42;
  v20[16] = 0;
  v43 = sub_2EF0(&qword_323C68, &qword_284100);
  sub_1B971C(v2, &v20[*(v43 + 44)]);
  v44 = (v2 + v41[15]);
  v98 = *v44;
  v99 = v44[1];
  sub_261830();
  sub_22148(v20, v25, &qword_323C28, &qword_2840C0);
  v45 = &v25[*(v22 + 44)];
  v46 = v134;
  *(v45 + 4) = v133;
  *(v45 + 5) = v46;
  *(v45 + 6) = v135;
  v47 = v130;
  *v45 = v129;
  *(v45 + 1) = v47;
  v48 = v132;
  *(v45 + 2) = v131;
  *(v45 + 3) = v48;
  if ((sub_1B8740() & 1) == 0)
  {
    goto LABEL_8;
  }

  v49 = v2 + v41[6];
  v50 = *v49;
  if (*(v49 + 8) != 1)
  {

    sub_264900();
    v52 = sub_2624B0();
    v101 = v14;
    v53 = v38;
    v54 = v35;
    v55 = v9;
    v56 = v52;
    sub_260D10();

    v9 = v55;
    v35 = v54;
    v38 = v53;
    v14 = v101;
    v57 = v120;
    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v50, 0);
    (*(v121 + 8))(v57, v14);
    if (v125 != 1)
    {
      goto LABEL_6;
    }

LABEL_8:
    v51 = 0;
    goto LABEL_9;
  }

  if (v50)
  {
    goto LABEL_8;
  }

LABEL_6:
  v51 = 0x4054000000000000;
LABEL_9:
  sub_22148(v25, v28, &qword_323C30, &qword_2840C8);
  v58 = &v28[*(v114 + 36)];
  *v58 = 0;
  *(v58 + 1) = v51;
  if ((sub_1B8740() & 1) == 0)
  {
    goto LABEL_14;
  }

  v59 = v2 + v41[6];
  v60 = *v59;
  if (*(v59 + 8) != 1)
  {

    sub_264900();
    v62 = sub_2624B0();
    sub_260D10();

    v63 = v120;
    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v60, 0);
    (*(v121 + 8))(v63, v14);
    v61 = 0.0;
    if (v125 != 1)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v61 = 0.0;
  if (v60)
  {
LABEL_14:
    v61 = 1.0;
  }

LABEL_15:
  v64 = v28;
  v65 = v124;
  sub_22148(v64, v124, &qword_323C38, &qword_2840D0);
  *(v65 + *(v115 + 36)) = v61;
  if (sub_1B8740())
  {
    sub_263610();
    v66 = sub_2635B0();
  }

  else
  {
    v66 = 0;
  }

  v67 = v2 + v41[6];
  v68 = *v67;
  if (*(v67 + 8) != 1)
  {

    sub_264900();
    v69 = sub_2624B0();
    sub_260D10();

    v70 = v120;
    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v68, 0);
    (*(v121 + 8))(v70, v14);
    LOBYTE(v68) = v125;
  }

  v71 = v122;
  v72 = v119;
  sub_22148(v124, v119, &qword_323C40, &qword_2840D8);
  v73 = v72 + *(v117 + 36);
  *v73 = v66;
  *(v73 + 8) = v68 & 1;
  KeyPath = swift_getKeyPath();
  v75 = v118;
  sub_22148(v72, v118, &qword_323C48, &qword_2840E0);
  v76 = (v75 + *(v116 + 36));
  *v76 = KeyPath;
  v76[1] = 0x3FE0000000000000;
  v77 = swift_getKeyPath();
  sub_22148(v75, v38, &qword_323C50, &qword_2840E8);
  v78 = &v38[*(v35 + 36)];
  *v78 = v77;
  *(v78 + 1) = 6;
  v78[16] = 0;
  (*(v123 + 104))(v71, enum case for DynamicTypeSize.small(_:), v9);
  v79 = v41[17];
  sub_1BD440(&qword_317538, &type metadata accessor for DynamicTypeSize);
  result = sub_264380();
  if (result)
  {
    v81 = v102;
    v124 = v38;
    v82 = v123;
    v122 = v35;
    v83 = *(v123 + 32);
    v84 = v106;
    v83(v106, v71, v9);
    v85 = v109;
    (*(v82 + 16))(v84 + *(v109 + 48), v2 + v79, v9);
    v86 = v9;
    v87 = v107;
    sub_8198(v84, v107, &qword_3174E0, &qword_26B310);
    v88 = *(v85 + 48);
    v83(v81, v87, v86);
    v89 = *(v82 + 8);
    v89(v87 + v88, v86);
    sub_22148(v84, v87, &qword_3174E0, &qword_26B310);
    v90 = v110;
    v83((v81 + *(v110 + 36)), (v87 + *(v85 + 48)), v86);
    v89(v87, v86);
    v91 = sub_1BC644();
    v92 = sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970);
    v93 = v103;
    v94 = v122;
    v95 = v124;
    sub_262B70();
    sub_8E80(v81, &qword_3174E8, &qword_269970);
    sub_8E80(v95, &qword_323C58, &qword_2840F0);
    v96 = v111;
    sub_262350();
    v125 = v94;
    v126 = v90;
    v127 = v91;
    v128 = v92;
    swift_getOpaqueTypeConformance2();
    v97 = v105;
    sub_262C70();
    (*(v112 + 8))(v96, v108);
    return (*(v104 + 8))(v93, v97);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B971C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v299 = a2;
  v263 = sub_2EF0(&qword_323CA8, &qword_284168);
  v258 = *(v263 - 8);
  v3 = *(v258 + 64);
  __chkstk_darwin(v263);
  v255 = &v253 - v4;
  v262 = sub_2EF0(&qword_323CB0, &qword_284170);
  v260 = *(v262 - 8);
  v5 = *(v260 + 64);
  __chkstk_darwin(v262);
  v256 = &v253 - v6;
  v266 = sub_2EF0(&qword_323CB8, &qword_284178);
  v264 = *(v266 - 8);
  v7 = *(v264 + 64);
  __chkstk_darwin(v266);
  v259 = &v253 - v8;
  v257 = sub_2EF0(&qword_323CC0, &qword_284180);
  v9 = *(*(v257 - 8) + 64);
  __chkstk_darwin(v257);
  v265 = &v253 - v10;
  v279 = sub_2EF0(&qword_323CC8, &qword_284188);
  v11 = *(*(v279 - 8) + 64);
  __chkstk_darwin(v279);
  v261 = &v253 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v267 = &v253 - v14;
  v277 = sub_2EF0(&qword_323CD0, &qword_284190);
  v15 = *(*(v277 - 8) + 64);
  __chkstk_darwin(v277);
  v278 = &v253 - v16;
  v17 = sub_2EF0(&qword_318458, &unk_26B270);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v272 = &v253 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v254 = &v253 - v21;
  __chkstk_darwin(v22);
  v273 = &v253 - v23;
  __chkstk_darwin(v24);
  v268 = &v253 - v25;
  v26 = sub_2EF0(&qword_323CD8, &qword_284198);
  v274 = *(v26 - 8);
  v275 = v26;
  v27 = *(v274 + 64);
  __chkstk_darwin(v26);
  v269 = &v253 - v28;
  v276 = sub_2EF0(&qword_323CE0, &qword_2841A0);
  v29 = *(*(v276 - 8) + 64);
  __chkstk_darwin(v276);
  v31 = &v253 - v30;
  v32 = sub_2EF0(&qword_323CE8, &qword_2841A8);
  v293 = *(v32 - 8);
  v294 = v32;
  v33 = *(v293 + 64);
  __chkstk_darwin(v32);
  v35 = &v253 - v34;
  v36 = sub_2EF0(&qword_323CF0, &unk_2841B0);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v298 = &v253 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v41 = &v253 - v40;
  v42 = type metadata accessor for ColorConstants(0);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42 - 8);
  v280 = &v253 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_2626C0();
  v291 = *(v45 - 8);
  v46 = *(v291 + 64);
  __chkstk_darwin(v45);
  v292 = &v253 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = sub_2EF0(&qword_31FB60, &qword_27B308);
  v48 = *(*(v301 - 8) + 64);
  __chkstk_darwin(v301);
  v287 = &v253 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v282 = &v253 - v51;
  v302 = sub_2EF0(&qword_323CF8, &qword_2841C0);
  v52 = *(*(v302 - 8) + 64);
  __chkstk_darwin(v302);
  v288 = &v253 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v283 = &v253 - v55;
  v303 = sub_2EF0(&qword_323D00, &qword_2841C8);
  v56 = *(*(v303 - 8) + 64);
  __chkstk_darwin(v303);
  v289 = &v253 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v284 = &v253 - v59;
  v60 = sub_2EF0(&qword_323D08, &qword_2841D0);
  v61 = *(v60 - 8);
  v62 = *(v61 + 64);
  __chkstk_darwin(v60);
  v286 = &v253 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v281 = &v253 - v65;
  v66 = sub_2EF0(&qword_323D10, &qword_2841D8);
  v67 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66 - 8);
  v296 = &v253 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v69);
  v297 = &v253 - v70;
  __chkstk_darwin(v71);
  v295 = &v253 - v72;
  __chkstk_darwin(v73);
  v75 = &v253 - v74;
  v76 = type metadata accessor for TextLockup();
  v77 = (a1 + v76[10]);
  v78 = v77[1];
  v308 = v41;
  v309 = a1;
  v304 = v75;
  v305 = v76;
  v306 = v61;
  v307 = v60;
  v285 = v45;
  v300 = v35;
  if (v78)
  {
    v79 = a1;
    v80 = *v77;
    v81 = *(v79 + v76[9]);
    v82 = v78;

    v290 = v31;
    if (v81 >= 3)
    {
      sub_262590();
    }

    else
    {
      sub_262700();
      v84 = v291;
      v83 = v292;
      (*(v291 + 104))(v292, enum case for Font.Leading.tight(_:), v45);
      sub_2626E0();

      (*(v84 + 8))(v83, v45);
    }

    v270 = v82;
    v271 = v80;
    v85 = sub_262840();
    v87 = v86;
    v89 = v88;

    sub_262630();
    v90 = sub_2627D0();
    v92 = v91;
    v94 = v93;
    sub_39DBC(v85, v87, v89 & 1);

    v95 = v280;
    sub_404B8(v280);
    _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    v96 = sub_263000();

    sub_60B08(v95);
    *&v319 = v96;
    v97 = sub_2627F0();
    v99 = v98;
    LOBYTE(v85) = v100;
    v102 = v101;
    sub_39DBC(v90, v92, v94 & 1);

    v103 = v282;
    sub_1B8538(v282 + *(v301 + 36));
    *v103 = v97;
    *(v103 + 8) = v99;
    *(v103 + 16) = v85 & 1;
    *(v103 + 24) = v102;
    a1 = v309;
    v76 = v305;
    v104 = (v309 + v305[15]);
    v245 = *v104;
    v249 = v104[1];
    sub_261830();
    v105 = v283;
    sub_22148(v103, v283, &qword_31FB60, &qword_27B308);
    v106 = (v105 + *(v302 + 36));
    v107 = v336;
    v106[4] = v335;
    v106[5] = v107;
    v106[6] = v337;
    v108 = v332;
    *v106 = v331;
    v106[1] = v108;
    v109 = v334;
    v106[2] = v333;
    v106[3] = v109;
    LOBYTE(v103) = *(a1 + v76[16]);
    KeyPath = swift_getKeyPath();
    v111 = v284;
    sub_22148(v105, v284, &qword_323CF8, &qword_2841C0);
    v112 = v111 + *(v303 + 36);
    *v112 = KeyPath;
    *(v112 + 8) = v103;
    *&v319 = v271;
    *(&v319 + 1) = v270;
    sub_1BCA70();
    sub_10A84();
    v113 = v281;
    sub_262C00();
    sub_8E80(v111, &qword_323D00, &qword_2841C8);
    v114 = v304;
    sub_22148(v113, v304, &qword_323D08, &qword_2841D0);
    v61 = v306;
    v60 = v307;
    (*(v306 + 56))(v114, 0, 1, v307);
    v41 = v308;
    v35 = v300;
    v31 = v290;
  }

  else
  {
    (*(v61 + 56))(v75, 1, 1, v60);
  }

  v115 = (a1 + v76[11]);
  v116 = v115[2];
  if ((~v116 & 0xF000000000000007) != 0)
  {
    v118 = v41;
    v119 = *v115;
    v120 = v115[1];
    v282 = v115[2];
    v283 = v119;
    v284 = v120;
    if (v116 < 0)
    {
      v136 = v116 & 0x7FFFFFFFFFFFFFFFLL;
      v137 = v119;
      sub_1BCBD4(v119, v120, v116);

      v138 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();

      v139 = sub_1BB39C();
      v140 = swift_getKeyPath();
      *&v319 = v137;
      *(&v319 + 1) = v120;
      v290 = v138;
      *&v320 = v138;
      *(&v320 + 1) = v136;
      *&v321 = v140;
      v281 = v139;
      *(&v321 + 1) = v139;
      v141 = v272;
      sub_8198(a1 + v76[13], v272, &qword_318458, &unk_26B270);
      v142 = sub_2625C0();
      v143 = *(v142 - 8);
      v144 = *(v143 + 48);
      if (v144(v141, 1, v142) == 1)
      {
        if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
        {
          v145 = 1;
          v146 = v254;
        }

        else
        {
          v146 = v254;
          (*(v143 + 104))(v254, enum case for Font.Design.serif (_:), v142);
          v145 = 0;
        }

        (*(v143 + 56))(v146, v145, 1, v142);
        v175 = v272;
        if (v144(v272, 1, v142) != 1)
        {
          sub_8E80(v175, &qword_318458, &unk_26B270);
        }
      }

      else
      {
        v146 = v254;
        (*(v143 + 32))(v254, v141, v142);
        (*(v143 + 56))(v146, 0, 1, v142);
      }

      v176 = sub_2EF0(&qword_323D30, &unk_284250);
      v177 = sub_1BCC40();
      v178 = v255;
      sub_262A10();
      sub_8E80(v146, &qword_318458, &unk_26B270);

      sub_2625E0();
      *&v319 = v176;
      *(&v319 + 1) = v177;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v180 = v256;
      v181 = v263;
      sub_262A20();
      (*(v258 + 8))(v178, v181);
      v76 = v305;
      a1 = v309;
      v182 = qword_284348[*(v309 + v305[9])];
      *&v319 = v181;
      *(&v319 + 1) = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v183 = v259;
      v184 = v262;
      sub_262DF0();
      (*(v260 + 8))(v180, v184);
      v185 = (a1 + v76[15]);
      v247 = *v185;
      v251 = v185[1];
      sub_261830();
      v186 = v265;
      (*(v264 + 32))(v265, v183, v266);
      v187 = &v186[*(v257 + 36)];
      v188 = v315;
      *(v187 + 4) = v314;
      *(v187 + 5) = v188;
      *(v187 + 6) = v316;
      v189 = v311;
      *v187 = v310;
      *(v187 + 1) = v189;
      v190 = v313;
      *(v187 + 2) = v312;
      *(v187 + 3) = v190;
      LOBYTE(v184) = *(a1 + v76[16]);
      v191 = swift_getKeyPath();
      v192 = v186;
      v193 = v261;
      sub_22148(v192, v261, &qword_323CC0, &qword_284180);
      v194 = v193 + *(v279 + 36);
      *v194 = v191;
      *(v194 + 8) = v184;
      v195 = v267;
      sub_22148(v193, v267, &qword_323CC8, &qword_284188);
      sub_8198(v195, v278, &qword_323CC8, &qword_284188);
      swift_storeEnumTagMultiPayload();
      sub_1BCD4C();
      sub_1BCFD4();
      v35 = v300;
      sub_261F80();
      sub_1BD1D4(v283, v284, v282);
      sub_8E80(v195, &qword_323CC8, &qword_284188);
      v60 = v307;
      v41 = v308;
      v61 = v306;
    }

    else
    {
      if (v120)
      {
        v290 = v31;
        v121 = v119;
        v122 = v116;
        sub_1BCBD4(v119, v120, v116);
        sub_1BCBE8(v121, v120, v122);
        sub_1BB39C();
        v123 = sub_262840();
        v125 = v124;
        v127 = v126;
        v281 = v128;

        sub_1BD1D4(v121, v120, v122);
        v129 = v273;
        sub_8198(a1 + v76[13], v273, &qword_318458, &unk_26B270);
        v130 = sub_2625C0();
        v131 = *(v130 - 8);
        v132 = *(v131 + 48);
        if (v132(v129, 1, v130) == 1)
        {
          v133 = _s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0();
          v134 = v268;
          if (v133)
          {
            v135 = 1;
          }

          else
          {
            (*(v131 + 104))(v268, enum case for Font.Design.serif (_:), v130);
            v135 = 0;
          }

          (*(v131 + 56))(v134, v135, 1, v130);
          v147 = v273;
          if (v132(v273, 1, v130) != 1)
          {
            sub_8E80(v147, &qword_318458, &unk_26B270);
          }
        }

        else
        {
          v134 = v268;
          (*(v131 + 32))(v268, v129, v130);
          (*(v131 + 56))(v134, 0, 1, v130);
        }

        v148 = sub_2627C0();
        v150 = v149;
        v152 = v151;
        sub_39DBC(v123, v125, v127 & 1);

        sub_8E80(v134, &qword_318458, &unk_26B270);
        sub_2625E0();
        v153 = sub_2627D0();
        v155 = v154;
        v157 = v156;
        sub_39DBC(v148, v150, v152 & 1);

        v158 = v305;
        v159 = qword_284348[*(v309 + v305[9])];
        v160 = sub_262860();
        v162 = v161;
        LOBYTE(v150) = v163;
        sub_39DBC(v153, v155, v157 & 1);

        LODWORD(v319) = sub_262120();
        v164 = sub_2627F0();
        v166 = v165;
        v168 = v167;
        v170 = v169;
        sub_39DBC(v160, v162, v150 & 1);
        v76 = v158;

        v171 = v309;
        v172 = (v309 + v158[15]);
        v246 = *v172;
        v250 = v172[1];
        sub_261830();
        v168 &= 1u;
        v328 = v168;
        LOBYTE(v160) = *(v171 + v158[16]);
        v173 = swift_getKeyPath();
        *&v310 = v164;
        *(&v310 + 1) = v166;
        LOBYTE(v311) = v168;
        *(&v311 + 1) = v170;
        v317 = v318[7];
        v318[0] = v318[8];
        v312 = v318[2];
        v313 = v318[3];
        v315 = v318[5];
        v316 = v318[6];
        v314 = v318[4];
        *&v318[1] = v173;
        BYTE8(v318[1]) = v160;
        v329 = v283;
        v330 = v284;
        sub_2EF0(&qword_323D60, &qword_284260);
        sub_1BCE8C();
        sub_10A84();
        v174 = v269;
        a1 = v171;
        sub_262C00();
        v325 = v316;
        v326 = v317;
        v327[0] = v318[0];
        *(v327 + 9) = *(v318 + 9);
        v321 = v312;
        v322 = v313;
        v323 = v314;
        v324 = v315;
        v319 = v310;
        v320 = v311;
        sub_8E80(&v319, &qword_323D60, &qword_284260);
        v31 = v290;
        sub_22148(v174, v290, &qword_323CD8, &qword_284198);
        (*(v274 + 56))(v31, 0, 1, v275);
        v60 = v307;
        v118 = v308;
        v61 = v306;
        v35 = v300;
      }

      else
      {
        (*(v274 + 56))(v31, 1, 1, v275);
      }

      sub_8198(v31, v278, &qword_323CE0, &qword_2841A0);
      swift_storeEnumTagMultiPayload();
      sub_1BCD4C();
      sub_1BCFD4();
      sub_261F80();
      sub_1BD1D4(v283, v284, v282);
      sub_8E80(v31, &qword_323CE0, &qword_2841A0);
      v41 = v118;
    }

    sub_22148(v35, v41, &qword_323CE8, &qword_2841A8);
    v117 = 0;
  }

  else
  {
    v117 = 1;
  }

  v196 = 1;
  (*(v293 + 56))(v41, v117, 1, v294);
  v197 = (a1 + v76[12]);
  v198 = v197[1];
  if (v198)
  {
    v199 = *v197;
    v200 = *(a1 + v76[9]);

    v201 = (v291 + 104);
    v202 = (v291 + 8);
    if (v200 > 2)
    {
      sub_262590();
    }

    else
    {
      sub_262580();
    }

    v205 = v292;
    v206 = v285;
    (*v201)(v292, enum case for Font.Leading.tight(_:), v285);
    sub_2626E0();

    (*v202)(v205, v206);
    v207 = sub_262840();
    v209 = v208;
    LOBYTE(v205) = v210;
    v300 = v199;

    sub_262640();
    v211 = sub_2627D0();
    v294 = v198;
    v213 = v212;
    v215 = v214;
    sub_39DBC(v207, v209, v205 & 1);

    LODWORD(v319) = sub_262140();
    v216 = sub_2627F0();
    v218 = v217;
    v220 = v219;
    v222 = v221;
    sub_39DBC(v211, v213, v215 & 1);

    v223 = v287;
    v224 = v309;
    sub_1B8538(&v287[*(v301 + 36)]);
    *v223 = v216;
    *(v223 + 1) = v218;
    v223[16] = v220 & 1;
    *(v223 + 3) = v222;
    v225 = v305;
    v226 = (v224 + v305[15]);
    v248 = *v226;
    v252 = v226[1];
    sub_261830();
    v227 = v223;
    v228 = v288;
    sub_22148(v227, v288, &qword_31FB60, &qword_27B308);
    v229 = (v228 + *(v302 + 36));
    v230 = v324;
    v229[4] = v323;
    v229[5] = v230;
    v229[6] = v325;
    v231 = v320;
    *v229 = v319;
    v229[1] = v231;
    v232 = v322;
    v229[2] = v321;
    v229[3] = v232;
    LOBYTE(v225) = *(v224 + v225[16]);
    v233 = swift_getKeyPath();
    v234 = v289;
    sub_22148(v228, v289, &qword_323CF8, &qword_2841C0);
    v235 = v234 + *(v303 + 36);
    *v235 = v233;
    *(v235 + 8) = v225;
    v329 = v300;
    v330 = v294;
    sub_1BCA70();
    sub_10A84();
    v236 = v286;
    sub_262C00();
    sub_8E80(v234, &qword_323D00, &qword_2841C8);
    v204 = v295;
    sub_22148(v236, v295, &qword_323D08, &qword_2841D0);
    v196 = 0;
    v60 = v307;
    v203 = v308;
    v61 = v306;
  }

  else
  {
    v203 = v41;
    v204 = v295;
  }

  (*(v61 + 56))(v204, v196, 1, v60);
  v237 = v304;
  v238 = v297;
  sub_8198(v304, v297, &qword_323D10, &qword_2841D8);
  v239 = v298;
  sub_8198(v203, v298, &qword_323CF0, &unk_2841B0);
  v240 = v296;
  sub_8198(v204, v296, &qword_323D10, &qword_2841D8);
  v241 = v204;
  v242 = v299;
  sub_8198(v238, v299, &qword_323D10, &qword_2841D8);
  v243 = sub_2EF0(&qword_323D18, &qword_2841E0);
  sub_8198(v239, v242 + *(v243 + 48), &qword_323CF0, &unk_2841B0);
  sub_8198(v240, v242 + *(v243 + 64), &qword_323D10, &qword_2841D8);
  sub_8E80(v241, &qword_323D10, &qword_2841D8);
  sub_8E80(v308, &qword_323CF0, &unk_2841B0);
  sub_8E80(v237, &qword_323D10, &qword_2841D8);
  sub_8E80(v240, &qword_323D10, &qword_2841D8);
  sub_8E80(v239, &qword_323CF0, &unk_2841B0);
  return sub_8E80(v238, &qword_323D10, &qword_2841D8);
}

uint64_t sub_1BB39C()
{
  v1 = sub_2EF0(&qword_318458, &unk_26B270);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v43 - v6;
  __chkstk_darwin(v8);
  v10 = &v43 - v9;
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  __chkstk_darwin(v14);
  v16 = &v43 - v15;
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  v44 = sub_2626C0();
  v20 = *(v44 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v44);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TextLockup();
  v25 = *(v0 + *(v24 + 36));
  if (v25 > 2)
  {
    v26 = v24;
    if (*(v0 + *(v24 + 36)) > 4u)
    {
      if (v25 == 5)
      {
        sub_2625E0();
        sub_8198(v0 + *(v26 + 52), v10, &qword_318458, &unk_26B270);
        v28 = sub_2625C0();
        v29 = *(v28 - 8);
        v30 = *(v29 + 48);
        if (v30(v10, 1, v28) == 1)
        {
          if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
          {
            v31 = 1;
          }

          else
          {
            (*(v29 + 104))(v13, enum case for Font.Design.serif (_:), v28);
            v31 = 0;
          }

          (*(v29 + 56))(v13, v31, 1, v28);
          if (v30(v10, 1, v28) != 1)
          {
            sub_8E80(v10, &qword_318458, &unk_26B270);
          }
        }

        else
        {
          (*(v29 + 32))(v13, v10, v28);
          (*(v29 + 56))(v13, 0, 1, v28);
        }

        sub_262670();
        v40 = v13;
      }

      else
      {
        sub_2625E0();
        sub_8198(v0 + *(v26 + 52), v4, &qword_318458, &unk_26B270);
        v36 = sub_2625C0();
        v37 = *(v36 - 8);
        v38 = *(v37 + 48);
        if (v38(v4, 1, v36) == 1)
        {
          if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
          {
            v39 = 1;
          }

          else
          {
            (*(v37 + 104))(v7, enum case for Font.Design.serif (_:), v36);
            v39 = 0;
          }

          (*(v37 + 56))(v7, v39, 1, v36);
          if (v38(v4, 1, v36) != 1)
          {
            sub_8E80(v4, &qword_318458, &unk_26B270);
          }
        }

        else
        {
          (*(v37 + 32))(v7, v4, v36);
          (*(v37 + 56))(v7, 0, 1, v36);
        }

        sub_262670();
        v40 = v7;
      }
    }

    else
    {
      if (v25 == 3)
      {
        sub_262570();
LABEL_38:
        v27 = v44;
        (*(v20 + 104))(v23, enum case for Font.Leading.tight(_:), v44);
        goto LABEL_39;
      }

      sub_2625E0();
      sub_8198(v0 + *(v26 + 52), v16, &qword_318458, &unk_26B270);
      v32 = sub_2625C0();
      v33 = *(v32 - 8);
      v34 = *(v33 + 48);
      if (v34(v16, 1, v32) == 1)
      {
        if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
        {
          v35 = 1;
        }

        else
        {
          (*(v33 + 104))(v19, enum case for Font.Design.serif (_:), v32);
          v35 = 0;
        }

        (*(v33 + 56))(v19, v35, 1, v32);
        if (v34(v16, 1, v32) != 1)
        {
          sub_8E80(v16, &qword_318458, &unk_26B270);
        }
      }

      else
      {
        (*(v33 + 32))(v19, v16, v32);
        (*(v33 + 56))(v19, 0, 1, v32);
      }

      sub_262670();
      v40 = v19;
    }

    sub_8E80(v40, &qword_318458, &unk_26B270);
    goto LABEL_38;
  }

  if (!*(v0 + *(v24 + 36)))
  {
    sub_2626A0();
    goto LABEL_38;
  }

  v27 = v44;
  if (v25 == 1)
  {
    sub_262690();
  }

  else
  {
    sub_2625B0();
  }

  (*(v20 + 104))(v23, enum case for Font.Leading.tight(_:), v27);
LABEL_39:
  v41 = sub_2626E0();

  (*(v20 + 8))(v23, v27);
  return v41;
}

uint64_t sub_1BBADC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v33 = a4;
  v7 = sub_25FF00();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v9 = sub_25FF40();
  v31 = *(v9 - 8);
  v10 = v31;
  v32 = v9;
  v11 = *(v31 + 64);
  __chkstk_darwin(v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  sub_1BBD54(a1, a3, a2, &v31 - v15);
  (*(v10 + 16))(v13, v16, v9);
  v17 = sub_2628D0();
  v19 = v18;
  v21 = v20;
  sub_25FEF0();
  sub_1BD440(&qword_323D80, &type metadata accessor for AttributedString.CharacterView);
  v34 = sub_2645B0();
  v35 = v22;
  sub_10A84();
  v23 = sub_262810();
  v25 = v24;
  LOBYTE(v9) = v26;
  v28 = v27;
  sub_39DBC(v17, v19, v21 & 1);

  result = (*(v31 + 8))(v16, v32);
  v30 = v33;
  *v33 = v23;
  v30[1] = v25;
  *(v30 + 16) = v9 & 1;
  v30[3] = v28;
  return result;
}

unint64_t sub_1BBD54@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v73 = a3;
  v61 = a2;
  v68 = sub_25FF40();
  v62 = *(v68 - 8);
  v6 = *(v62 + 64);
  __chkstk_darwin(v68);
  v60 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316220, &unk_273570);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v66 = &v56 - v10;
  v11 = sub_2EF0(&qword_323D88, &qword_284310);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v67 = &v56 - v13;
  v14 = sub_2EF0(&qword_323D90, &qword_284318);
  v15 = *(v14 - 8);
  v64 = v14;
  v65 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v63 = &v56 - v17;
  v18 = sub_2EF0(&qword_323D98, &qword_284320);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v69 = &v56 - v20;
  v21 = sub_2EF0(&qword_323DA0, &qword_284328);
  v22 = *(v21 - 8);
  v70 = v21;
  v71 = v22;
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v56 - v24;
  v26 = sub_2EF0(&qword_323DA8, &qword_284330);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v56 - v28;
  v30 = sub_2EF0(&qword_323DB0, &unk_284338);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v56 - v33;
  v35 = sub_25FF90();
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);

  sub_25FF80();
  v72 = a1;
  sub_25FF50();
  v74 = v73;
  v37 = sub_1BD3EC();

  sub_25FF70();
  sub_260A30();
  v58 = v37;
  v59 = v25;
  v38 = v70;
  v73 = a4;
  (*(v31 + 56))(v29, 0, 1, v30);
  (*(v31 + 32))(v34, v29, v30);
  v39 = v69;
  sub_260A10();
  v56 = v34;
  v57 = v30;
  v40 = v71;
  v41 = v38;
  if ((*(v71 + 48))(v39, 1, v38) == 1)
  {
    (*(v31 + 8))(v56, v57);
    v42 = &qword_323D98;
    v43 = &qword_284320;
    v44 = v39;
    return sub_8E80(v44, v42, v43);
  }

  v46 = v59;
  (*(v40 + 32))(v59, v39, v38);
  v74 = 0x3F2B2E282A5C2A5CLL;
  v75 = 0xEF292A5C2A5C2829;
  v47 = sub_260290();
  v48 = v66;
  (*(*(v47 - 8) + 56))(v66, 1, 1, v47);
  v49 = sub_1BD440(&qword_323DC0, &type metadata accessor for AttributedString);
  sub_10A84();
  v50 = v67;
  v69 = v49;
  sub_25FFF0();
  sub_8E80(v48, &qword_316220, &unk_273570);
  v51 = v31;
  if ((*(v65 + 48))(v50, 1, v64) == 1)
  {
    (*(v40 + 8))(v46, v41);
    (*(v31 + 8))(v56, v57);
    v42 = &qword_323D88;
    v43 = &qword_284310;
    v44 = v50;
    return sub_8E80(v44, v42, v43);
  }

  v52 = v63;
  sub_22148(v50, v63, &qword_323D90, &qword_284318);
  sub_260A20();
  v53 = sub_264520();
  result = sub_264520();
  if (result >> 14 < v53 >> 14)
  {
    __break(1u);
  }

  else
  {
    sub_2645D0();
    sub_2644D0();

    sub_25FF80();
    v54 = v60;
    sub_25FF50();
    v74 = v61;

    sub_25FF70();
    sub_8E38(&qword_323DC8, &qword_323D90, &qword_284318);
    v55 = v68;
    sub_25FF20();
    (*(v62 + 8))(v54, v55);
    sub_8E80(v52, &qword_323D90, &qword_284318);
    (*(v71 + 8))(v46, v70);
    return (*(v51 + 8))(v56, v57);
  }

  return result;
}

unint64_t sub_1BC644()
{
  result = qword_323C70;
  if (!qword_323C70)
  {
    sub_2F9C(&qword_323C58, &qword_2840F0);
    sub_1BC6FC();
    sub_8E38(&qword_3189E0, &qword_3189E8, &unk_26F980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323C70);
  }

  return result;
}

unint64_t sub_1BC6FC()
{
  result = qword_323C78;
  if (!qword_323C78)
  {
    sub_2F9C(&qword_323C50, &qword_2840E8);
    sub_1BC7B4();
    sub_8E38(&qword_318ED0, &qword_318ED8, &unk_276230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323C78);
  }

  return result;
}

unint64_t sub_1BC7B4()
{
  result = qword_323C80;
  if (!qword_323C80)
  {
    sub_2F9C(&qword_323C48, &qword_2840E0);
    sub_1BC86C();
    sub_8E38(&qword_317B88, &qword_317B90, &unk_26A0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323C80);
  }

  return result;
}

unint64_t sub_1BC86C()
{
  result = qword_323C88;
  if (!qword_323C88)
  {
    sub_2F9C(&qword_323C40, &qword_2840D8);
    sub_1BC8F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323C88);
  }

  return result;
}

unint64_t sub_1BC8F8()
{
  result = qword_323C90;
  if (!qword_323C90)
  {
    sub_2F9C(&qword_323C38, &qword_2840D0);
    sub_1BC9B0();
    sub_8E38(&qword_3175A8, &qword_3175B0, &qword_269A38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323C90);
  }

  return result;
}

unint64_t sub_1BC9B0()
{
  result = qword_323C98;
  if (!qword_323C98)
  {
    sub_2F9C(&qword_323C30, &qword_2840C8);
    sub_8E38(&qword_323CA0, &qword_323C28, &qword_2840C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323C98);
  }

  return result;
}

unint64_t sub_1BCA70()
{
  result = qword_323D20;
  if (!qword_323D20)
  {
    sub_2F9C(&qword_323D00, &qword_2841C8);
    sub_1BCB28();
    sub_8E38(&qword_318DA0, &qword_318DA8, &unk_26C340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323D20);
  }

  return result;
}

unint64_t sub_1BCB28()
{
  result = qword_323D28;
  if (!qword_323D28)
  {
    sub_2F9C(&qword_323CF8, &qword_2841C0);
    sub_1BCF64(&qword_31FB90, &qword_31FB60, &qword_27B308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323D28);
  }

  return result;
}

uint64_t sub_1BCBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~a3 & 0xF000000000000007) != 0)
  {
    return sub_1BCBE8(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1BCBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
  }

  else
  {
  }
}

unint64_t sub_1BCC40()
{
  result = qword_323D38;
  if (!qword_323D38)
  {
    sub_2F9C(&qword_323D30, &unk_284250);
    sub_1BCCF8();
    sub_8E38(&qword_317580, &qword_317588, &qword_26B7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323D38);
  }

  return result;
}

unint64_t sub_1BCCF8()
{
  result = qword_323D40;
  if (!qword_323D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323D40);
  }

  return result;
}

unint64_t sub_1BCD4C()
{
  result = qword_323D48;
  if (!qword_323D48)
  {
    sub_2F9C(&qword_323CE0, &qword_2841A0);
    sub_1BCDD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323D48);
  }

  return result;
}

unint64_t sub_1BCDD0()
{
  result = qword_323D50;
  if (!qword_323D50)
  {
    sub_2F9C(&qword_323CD8, &qword_284198);
    sub_1BCE8C();
    sub_1BD440(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323D50);
  }

  return result;
}

unint64_t sub_1BCE8C()
{
  result = qword_323D58;
  if (!qword_323D58)
  {
    sub_2F9C(&qword_323D60, &qword_284260);
    sub_1BCF64(&qword_323D68, &qword_3186C8, &qword_26B838);
    sub_8E38(&qword_318DA0, &qword_318DA8, &unk_26C340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323D58);
  }

  return result;
}

uint64_t sub_1BCF64(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BCFD4()
{
  result = qword_323D70;
  if (!qword_323D70)
  {
    sub_2F9C(&qword_323CC8, &qword_284188);
    sub_1BD08C();
    sub_8E38(&qword_318DA0, &qword_318DA8, &unk_26C340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323D70);
  }

  return result;
}

unint64_t sub_1BD08C()
{
  result = qword_323D78;
  if (!qword_323D78)
  {
    sub_2F9C(&qword_323CC0, &qword_284180);
    sub_2F9C(&qword_323CB0, &qword_284170);
    sub_2F9C(&qword_323CA8, &qword_284168);
    sub_2F9C(&qword_323D30, &unk_284250);
    sub_1BCC40();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323D78);
  }

  return result;
}

uint64_t sub_1BD1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~a3 & 0xF000000000000007) != 0)
  {
    return sub_1BD1E8(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1BD1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
  }

  else
  {
  }
}

uint64_t sub_1BD238(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1BD280(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD2D0()
{
  sub_2F9C(&qword_323C60, &qword_2840F8);
  sub_2F9C(&qword_323C58, &qword_2840F0);
  sub_2F9C(&qword_3174E8, &qword_269970);
  sub_1BC644();
  sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1BD3EC()
{
  result = qword_323DB8;
  if (!qword_323DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323DB8);
  }

  return result;
}

uint64_t sub_1BD440(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD498(void (*a1)(uint64_t *__return_ptr, uint64_t *))
{
  sub_8198(v1, &v6, &qword_316BC0, &qword_2707C0);
  if (!v7)
  {
    return 0;
  }

  sub_F7CC(&v6, v5);
  a1(&v8, v5);
  if (v2)
  {
    result = sub_3080(v5);
    __break(1u);
  }

  else
  {
    sub_3080(v5);
    return v8;
  }

  return result;
}

__n128 GridItemMetadataView.init(model:contextActionMenuView:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  v8 = type metadata accessor for GridItemMetadataView();
  v9 = v8[5];
  *(a4 + v9) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v10 = a4 + v8[6];
  v11 = *(a1 + 16);
  *v10 = *a1;
  *(v10 + 16) = v11;
  result = *(a1 + 25);
  *(v10 + 25) = result;
  v13 = (a4 + v8[7]);
  *v13 = a2;
  v13[1] = a3;
  return result;
}

uint64_t sub_1BD5FC()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *v0;
  if ((*(v0 + 8) & 1) == 0)
  {
    v7 = *v0;

    sub_264900();
    v8 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v7, 0);
    (*(v2 + 8))(v5, v1);
    return v9[1];
  }

  return result;
}

uint64_t sub_1BD73C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C10, &unk_26AF10);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for GridItemMetadataView();
  sub_8198(v1 + *(v12 + 20), v11, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_E59A0(v11, a1, type metadata accessor for SizeConstants);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t GridItemMetadataView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v64 = type metadata accessor for SizeConstants.Environment(0);
  v2 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v66 = &v60[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v67 = sub_262730();
  v4 = *(v67 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v67);
  v62 = &v60[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v65 = &v60[-v8];
  v63 = sub_2EF0(&qword_31B578, &qword_270C30);
  v9 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v11 = &v60[-v10];
  v12 = type metadata accessor for SizeConstants.Spacing(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v60[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v60[-v17];
  __chkstk_darwin(v19);
  v21 = &v60[-v20];
  v22 = type metadata accessor for SizeConstants(0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v60[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26);
  v28 = &v60[-v27];
  v29 = sub_2EF0(&qword_323DD0, &qword_2843D0);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v32 = &v60[-v31];
  v36 = sub_261E60();
  sub_1BD73C(v28);
  sub_E59A0(v28, v21, type metadata accessor for SizeConstants.Environment);
  sub_E5250(v21);
  *v32 = v36;
  *(v32 + 1) = 0x4000000000000000;
  v32[16] = 0;
  v33 = *(sub_2EF0(&qword_323DD8, &qword_2843D8) + 44);
  v68 = v32;
  v34 = &v32[v33];
  *v34 = sub_261D30();
  *(v34 + 1) = 0;
  v34[16] = 0;
  v35 = sub_2EF0(&qword_323DE0, &unk_2843E0);
  sub_1BDF30(v1, &v34[*(v35 + 44)]);
  LODWORD(v36) = sub_262510();
  v37 = v1 + *(type metadata accessor for GridItemMetadataView() + 24);
  sub_232D0(v37, &v72);
  v70[0] = v72;
  v70[1] = v73;
  v71 = v74;
  v38 = *(&v73 + 1);
  sub_8E80(v70, &qword_316BC0, &qword_2707C0);
  if (v38 || *(v37 + 40) == 1)
  {
    sub_1BD73C(v25);
    sub_E59A0(v25, v18, type metadata accessor for SizeConstants.Environment);
    v39 = *(v4 + 104);
    v61 = v36;
    v36 = v65;
    v40 = v67;
    v39(v65, enum case for Font.TextStyle.body(_:), v67);
    sub_1BE868(v18, v15, type metadata accessor for SizeConstants.Spacing);
    v41 = v62;
    (*(v4 + 16))(v62, v36, v40);
    sub_1BE868(v15, v11, type metadata accessor for SizeConstants.Spacing);
    v42 = v66;
    sub_1BE868(v15, v66, type metadata accessor for SizeConstants.Environment);
    v43 = *(v64 + 24);
    v44 = sub_1CF30(v41, &v42[v43]);
    v45 = *(v4 + 8);
    v45(v41, v40);
    sub_E5250(v15);
    v46 = sub_261690();
    (*(*(v46 - 8) + 8))(&v42[v43], v46);
    v47 = 1.0;
    if ((*&v44 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v47 = v44;
    }

    if ((~*&v44 & 0x7FF0000000000000) != 0)
    {
      v47 = v44;
    }

    *&v11[*(v63 + 36)] = v47;
    v48 = v36;
    LOBYTE(v36) = v61;
    v45(v48, v40);
    sub_E5250(v18);
    sub_21FA68(12.0);
    sub_8E80(v11, &qword_31B578, &qword_270C30);
  }

  sub_2610C0();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v57 = v69;
  sub_22148(v68, v69, &qword_323DD0, &qword_2843D0);
  result = sub_2EF0(&qword_323DE8, &qword_2843F0);
  v59 = v57 + *(result + 36);
  *v59 = v36;
  *(v59 + 8) = v50;
  *(v59 + 16) = v52;
  *(v59 + 24) = v54;
  *(v59 + 32) = v56;
  *(v59 + 40) = 0;
  return result;
}

uint64_t sub_1BDF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = type metadata accessor for SizeConstants.Spacing(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v63 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SizeConstants(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v62 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_318458, &unk_26B270);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v60 - v11;
  v13 = sub_262730();
  v60 = *(v13 - 8);
  v61 = v13;
  v14 = *(v60 + 64);
  __chkstk_darwin(v13);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_263D20();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_260BD0();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v24 = sub_2EF0(&qword_323E98, &qword_284470);
  v65 = *(v24 - 8);
  v66 = v24;
  v25 = *(v65 + 64);
  __chkstk_darwin(v24);
  v27 = &v60 - v26;
  v28 = sub_2EF0(&qword_323EA0, &qword_284478);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v60 - v33;
  v64 = a1 + *(type metadata accessor for GridItemMetadataView() + 24);
  if (*(v64 + 40) == 1)
  {
    v67 = a1;
    sub_1BD5FC();
    isa = sub_2647E0().super.super.isa;
    (*(v18 + 104))(v21, enum case for LocalizerContext.standalone(_:), v17);
    sub_260BA0();

    (*(v18 + 8))(v21, v17);
    sub_260B10();
    v37 = v60;
    v36 = v61;
    (*(v60 + 104))(v16, enum case for Font.TextStyle.title(_:), v61);
    v38 = enum case for Font.Design.serif (_:);
    v39 = sub_2625C0();
    v40 = *(v39 - 8);
    (*(v40 + 104))(v12, v38, v39);
    (*(v40 + 56))(v12, 0, 1, v39);
    sub_262650();
    v41 = sub_262680();
    sub_8E80(v12, &qword_318458, &unk_26B270);
    (*(v37 + 8))(v16, v36);
    KeyPath = swift_getKeyPath();
    v43 = &v27[*(sub_2EF0(&qword_318470, &qword_26FBB0) + 36)];
    *v43 = KeyPath;
    v43[1] = v41;
    v44 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
    v45 = swift_getKeyPath();
    v46 = &v27[*(sub_2EF0(&qword_318460, &qword_26FBA0) + 36)];
    *v46 = v45;
    v46[1] = v44;
    LOBYTE(v44) = sub_2624F0();
    v47 = v62;
    sub_1BD73C(v62);
    a1 = v67;
    v48 = v47;
    v49 = v63;
    sub_E59A0(v48, v63, type metadata accessor for SizeConstants.Environment);
    sub_E5250(v49);
    sub_2610C0();
    v50 = v66;
    v51 = &v27[*(v66 + 36)];
    *v51 = v44;
    *(v51 + 1) = v52;
    *(v51 + 2) = v53;
    *(v51 + 3) = v54;
    *(v51 + 4) = v55;
    v51[40] = 0;
    sub_22148(v27, v34, &qword_323E98, &qword_284470);
    (*(v65 + 56))(v34, 0, 1, v50);
  }

  else
  {
    (*(v65 + 56))(v34, 1, 1, v66);
  }

  v56 = sub_232D0(v64, v69);
  __chkstk_darwin(v56);
  *(&v60 - 2) = a1;
  v57 = sub_1BD498(sub_1BEC90);
  sub_8E80(v69, &qword_316BC0, &qword_2707C0);
  sub_8198(v34, v31, &qword_323EA0, &qword_284478);
  v58 = v68;
  sub_8198(v31, v68, &qword_323EA0, &qword_284478);
  *(v58 + *(sub_2EF0(&qword_323EA8, &qword_284480) + 48)) = v57;

  sub_8E80(v34, &qword_323EA0, &qword_284478);

  return sub_8E80(v31, &qword_323EA0, &qword_284478);
}

uint64_t sub_1BE658@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v15 = a3;
  v4 = a1[3];
  v5 = a1[4];
  sub_2E18(a1, v4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = type metadata accessor for GridItemMetadataView();
  v11 = (*(v5 + 64))(*(a2 + *(v10 + 28)), *(a2 + *(v10 + 28) + 8), v4, v5);
  v12 = __chkstk_darwin(v11);
  (*(v7 + 16))(&v14 - v9, &v14 - v9, AssociatedTypeWitness, v12);
  swift_getAssociatedConformanceWitness();
  *v15 = sub_263310();
  return (*(v7 + 8))(&v14 - v9, AssociatedTypeWitness);
}

uint64_t type metadata accessor for GridItemMetadataView()
{
  result = qword_323E48;
  if (!qword_323E48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BE868(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BE900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_317BF8, &unk_26F930);
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
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1BE9E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2EF0(&qword_317BF8, &unk_26F930);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

void sub_1BEAA8()
{
  sub_1BEB4C();
  if (v0 <= 0x3F)
  {
    sub_3E754();
    if (v1 <= 0x3F)
    {
      sub_16D28();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BEB4C()
{
  if (!qword_322DC0)
  {
    v0 = sub_2611E0();
    if (!v1)
    {
      atomic_store(v0, &qword_322DC0);
    }
  }
}

unint64_t sub_1BEBA0()
{
  result = qword_323E88;
  if (!qword_323E88)
  {
    sub_2F9C(&qword_323DE8, &qword_2843F0);
    sub_1BEC2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323E88);
  }

  return result;
}

unint64_t sub_1BEC2C()
{
  result = qword_323E90;
  if (!qword_323E90)
  {
    sub_2F9C(&qword_323DD0, &qword_2843D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323E90);
  }

  return result;
}

uint64_t View.frame(fitting:withAspectRatio:)()
{
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();

  return sub_262DA0();
}

uint64_t sub_1BED9C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_261730();
  return swift_getWitnessTable();
}

uint64_t BuyButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2EF0(&qword_31A2C0, &qword_2844F0);
  v4 = *(v3 - 8);
  v29 = v3 - 8;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v28 = v27 - v6;
  v7 = sub_262730();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ButtonView();
  sub_1C1894(v1, a1 + v12[7], type metadata accessor for ButtonViewModel);
  *&v32 = 0x4020000000000000;
  v13 = enum case for Font.TextStyle.subheadline(_:);
  v14 = *(v8 + 104);
  v14(v11, enum case for Font.TextStyle.subheadline(_:), v7);
  sub_40130();
  sub_2612E0();
  v15 = v12[5];
  *&v32 = 0x3FF8000000000000;
  v14(v11, v13, v7);
  sub_2612E0();
  v16 = v12[6];
  *(a1 + v16) = swift_getKeyPath();
  sub_2EF0(&qword_319B00, &unk_26EA40);
  swift_storeEnumTagMultiPayload();
  v17 = v28;
  sub_8198(v27[1], v28, &qword_31A2C0, &qword_2844F0);
  v18 = a1 + *(sub_2EF0(&qword_323EB0, &qword_284538) + 36);
  v19 = type metadata accessor for BuyButtonCaptionViewModifier(0);
  v20 = v19[6];
  *(v18 + v20) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v21 = v18 + v19[7];
  type metadata accessor for CGSize(0);
  v30 = 0;
  v31 = 0;
  sub_2631D0();
  v22 = v33;
  *v21 = v32;
  *(v21 + 16) = v22;
  v23 = v18 + v19[8];
  v30 = 0;
  v31 = 0;
  sub_2631D0();
  v24 = v33;
  *v23 = v32;
  *(v23 + 16) = v24;
  sub_1BF854(v18);
  LOBYTE(v23) = *(v17 + *(v29 + 48));
  sub_8E80(v17, &qword_31A2C0, &qword_2844F0);
  *(v18 + v19[5]) = v23;
  v25 = sub_2EF0(&qword_323EB8, &qword_284570);
  return sub_1BF164(a1 + *(v25 + 36));
}

uint64_t sub_1BF164@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_264010();
  v62 = *(v3 - 8);
  v4 = *(v62 + 64);
  __chkstk_darwin(v3);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_263FA0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v63 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_261C90();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + *(type metadata accessor for ButtonViewModel(0) + 48)) == 1)
  {
    v59 = v8;
    v57 = sub_2EF0(&qword_31A2C0, &qword_2844F0);
    v16 = *(v57 + 48);
    v17 = *(type metadata accessor for BuyButtonExternals() + 28);
    v60 = v7;
    v61 = v1;
    v18 = (v1 + v17 + v16);
    *&v75[15] = *(v18 + 63);
    v19 = *&v75[15];
    v20 = v18[3];
    v74[2] = v18[2];
    *v75 = v20;
    v21 = v18[1];
    v74[0] = *v18;
    v74[1] = v21;
    v58 = v6;
    if ((v19 & 0x1000000) != 0)
    {
      v22 = v18[3];
      v71 = v18[2];
      v72 = v22;
      v73 = *(v18 + 32);
      v23 = v18[1];
      v69 = *v18;
      v70 = v23;
      sub_8198(v74, &v64, &qword_317F40, &qword_26E9D0);
    }

    else
    {

      sub_264900();
      v27 = v3;
      v28 = a1;
      v29 = sub_2624B0();
      sub_260D10();

      a1 = v28;
      v3 = v27;
      sub_261C80();
      swift_getAtKeyPath();
      sub_8E80(v74, &qword_317F40, &qword_26E9D0);
      (*(v12 + 8))(v15, v11);
    }

    v64 = v69;
    v65 = v70;
    v66 = v71;
    v67 = v72;
    v68 = v73;
    v30 = v61;
    if (*(&v69 + 1) && (v31 = v65, sub_8E80(&v64, &qword_317F48, &qword_26A9A0), v31 == 5))
    {
      v32 = (v30 + *(v57 + 44));
      v33 = v32[4];
      sub_2E18(v32, v32[3]);
      v34 = sub_2609C0();
      if ((v34 == 2 || (v34 & 1) == 0) && (v36 = v32[4], sub_2E18(v32, v32[3]), v37 = *(v36 + 8), (v38 = sub_260700()) != 0) && (v39 = v38, v40 = [v38 priceFormatted], v39, v40))
      {
        v41 = sub_264460();
        v42 = a1;
        v44 = v43;

        sub_2EF0(&qword_31ACF0, &unk_26FF60);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_267D30;
        v46 = v62;
        *(inited + 32) = 0x6563697270;
        v47 = inited + 32;
        *(inited + 40) = 0xE500000000000000;
        *(inited + 48) = v41;
        *(inited + 56) = v44;
        sub_F13C(inited);
        swift_setDeallocating();
        sub_8E80(v47, &qword_31ACF8, &qword_273580);
        v48 = v63;
        sub_263F90();
        v49 = v58;
        (*(v46 + 104))(v58, enum case for LocalizerLookupStrategy.default(_:), v3);
        sub_260B80();

        (*(v46 + 8))(v49, v3);
        (*(v59 + 8))(v48, v60);
        v50 = sub_260BD0();
        v51 = *(*(v50 - 8) + 56);
        v52 = v42;
      }

      else
      {
        v53 = v63;
        sub_263F90();
        v54 = v62;
        v55 = v58;
        (*(v62 + 104))(v58, enum case for LocalizerLookupStrategy.default(_:), v3);
        sub_260B80();
        (*(v54 + 8))(v55, v3);
        (*(v59 + 8))(v53, v60);
        v50 = sub_260BD0();
        v51 = *(*(v50 - 8) + 56);
        v52 = a1;
      }

      return v51(v52, 0, 1, v50);
    }

    else
    {
      v35 = sub_260BD0();
      return (*(*(v35 - 8) + 56))(a1, 1, 1, v35);
    }
  }

  else
  {
    v24 = sub_260BD0();
    v25 = *(*(v24 - 8) + 56);

    return v25(a1, 1, 1, v24);
  }
}

uint64_t sub_1BF854@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2EF0(&qword_31A158, &qword_26E3F8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v52 = &v49 - v5;
  v6 = sub_2601B0();
  v53 = *(v6 - 8);
  v7 = *(v53 + 64);
  __chkstk_darwin(v6);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v51 = &v49 - v9;
  v10 = sub_264010();
  v56 = *(v10 - 8);
  v57 = v10;
  v11 = *(v56 + 64);
  __chkstk_darwin(v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_263FA0();
  v54 = *(v14 - 8);
  v55 = v14;
  v15 = *(v54 + 64);
  __chkstk_darwin(v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2EF0(&qword_31A2C0, &qword_2844F0);
  v19 = (v1 + *(v18 + 44));
  v20 = v19[4];
  sub_2E18(v19, v19[3]);
  if (sub_260870())
  {
    v21 = *(v18 + 48);
    v22 = sub_1C11A4(&unk_323F30, type metadata accessor for BuyButtonExternals);
    v49 = v17;
    v23 = v13;
    v24 = v6;
    v25 = a1;
    v26 = *(v22 + 24);
    v27 = type metadata accessor for BuyButtonExternals();
    v28 = v26(v27, v22);
    a1 = v25;
    v6 = v24;
    v29 = v49;
    v30 = v28;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_260FF0();

    if ((v58 & 1) == 0)
    {
      sub_263F90();
      v41 = v56;
      v40 = v57;
      (*(v56 + 104))(v23, enum case for LocalizerLookupStrategy.default(_:), v57);
      sub_260B80();
      (*(v41 + 8))(v23, v40);
      (*(v54 + 8))(v29, v55);
LABEL_10:
      v39 = 0;
      goto LABEL_11;
    }
  }

  v31 = v19[4];
  sub_2E18(v19, v19[3]);
  v32 = *(v31 + 8);
  v33 = sub_260700();
  if (!v33)
  {
    goto LABEL_7;
  }

  v34 = v33;
  v35 = [v33 isPreorder];

  if (!v35)
  {
    goto LABEL_7;
  }

  v36 = v19[4];
  sub_2E18(v19, v19[3]);
  v37 = v52;
  sub_2608D0();
  v38 = v53;
  if ((*(v53 + 48))(v37, 1, v6) != 1)
  {
    v42 = *(v38 + 32);
    v43 = v51;
    v42(v51, v37, v6);
    v44 = v50;
    (*(v38 + 16))(v50, v43, v6);
    v45 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v46 = swift_allocObject();
    v42((v46 + v45), v44, v6);
    sub_260B70();

    (*(v38 + 8))(v43, v6);
    goto LABEL_10;
  }

  sub_8E80(v37, &qword_31A158, &qword_26E3F8);
LABEL_7:
  v39 = 1;
LABEL_11:
  v47 = sub_260BD0();
  return (*(*(v47 - 8) + 56))(a1, v39, 1, v47);
}

uint64_t sub_1BFE00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v54 = a2;
  v52 = sub_2EF0(&qword_324030, &qword_2846C8);
  v3 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v53 = &v45 - v4;
  v5 = type metadata accessor for SizeConstants.Spacing(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v49 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SizeConstants(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v48 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BuyButtonCaptionViewModifier(0);
  v46 = *(v11 - 8);
  v47 = v11;
  v12 = *(v46 + 64);
  __chkstk_darwin(v11);
  v51 = sub_2EF0(&qword_324038, &qword_2846D0);
  v13 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v15 = &v45 - v14;
  v16 = sub_2EF0(&qword_316208, &qword_268BD0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v45 - v18;
  v20 = sub_260BD0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2;
  v27 = v26;
  sub_8198(v2, v19, &qword_316208, &qword_268BD0);
  if ((*(v21 + 48))(v19, 1, v27) == 1)
  {
    sub_8E80(v19, &qword_316208, &qword_268BD0);
    v28 = sub_2EF0(&qword_324040, &qword_2846D8);
    (*(*(v28 - 8) + 16))(v53, v50, v28);
    swift_storeEnumTagMultiPayload();
    sub_1C16F8();
    sub_8E38(&qword_324060, &qword_324040, &qword_2846D8);
    return sub_261F80();
  }

  else
  {
    v30 = *(v21 + 32);
    v45 = v24;
    v30(v24, v19, v27);
    sub_1C1894(v2, &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BuyButtonCaptionViewModifier);
    v31 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v32 = swift_allocObject();
    sub_1C1918(&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31, type metadata accessor for BuyButtonCaptionViewModifier);
    v33 = sub_2EF0(&qword_324040, &qword_2846D8);
    (*(*(v33 - 8) + 16))(v15, v50, v33);
    v34 = &v15[*(sub_2EF0(&qword_324058, &unk_2846E0) + 36)];
    *v34 = sub_1C1DAC;
    *(v34 + 1) = 0;
    *(v34 + 2) = sub_1C1900;
    *(v34 + 3) = v32;
    v35 = sub_1C04EC();
    v50 = v36;
    v37 = &v15[*(v51 + 36)];
    v38 = v48;
    v39 = v2 + *(v47 + 24);
    sub_40CA0(v48);
    v40 = v49;
    sub_1C1918(v38, v49, type metadata accessor for SizeConstants.Environment);
    sub_E5250(v40);
    *v37 = sub_261E50();
    *(v37 + 1) = 0x4000000000000000;
    v37[16] = 0;
    v41 = sub_2EF0(&qword_324078, &unk_2846F8);
    v42 = v45;
    sub_1C05CC(v25, v45, &v37[*(v41 + 44)]);
    v43 = &v37[*(sub_2EF0(&qword_324070, &qword_2846F0) + 36)];
    v44 = v50;
    *v43 = v35;
    v43[1] = v44;
    sub_8198(v15, v53, &qword_324038, &qword_2846D0);
    swift_storeEnumTagMultiPayload();
    sub_1C16F8();
    sub_8E38(&qword_324060, &qword_324040, &qword_2846D8);
    sub_261F80();
    sub_8E80(v15, &qword_324038, &qword_2846D0);
    return (*(v21 + 8))(v42, v27);
  }
}

uint64_t sub_1C0470(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for BuyButtonCaptionViewModifier(0) + 28));
  v6 = *v4;
  v7 = *(v4 + 2);
  sub_2EF0(&qword_316460, &unk_2681F0);
  return sub_2631F0();
}

uint64_t sub_1C04EC()
{
  v1 = type metadata accessor for BuyButtonCaptionViewModifier(0);
  v2 = (v0 + *(v1 + 32));
  v5 = *v2;
  v7 = *(v2 + 2);
  sub_2EF0(&qword_316460, &unk_2681F0);
  sub_2631E0();
  v3 = (v0 + *(v1 + 28));
  v6 = *v3;
  v8 = *(v3 + 2);
  sub_2631E0();
  return sub_263550();
}

uint64_t sub_1C05CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a2;
  v54 = a1;
  v5 = type metadata accessor for BuyButtonCaptionViewModifier(0);
  v6 = v5 - 8;
  v61 = *(v5 - 8);
  v60 = *(v61 + 64);
  __chkstk_darwin(v5);
  v59 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2626C0();
  v55 = *(v8 - 8);
  v56 = v8;
  v9 = *(v55 + 64);
  __chkstk_darwin(v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2EF0(&qword_318458, &unk_26B270);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v49 - v14;
  v49 = sub_260BD0();
  v16 = *(v49 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v49);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2EF0(&qword_324080, &unk_284708);
  v21 = *(v20 - 8);
  v57 = v20 - 8;
  v22 = *(v21 + 64);
  __chkstk_darwin(v20 - 8);
  v58 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v49 - v25;
  v27 = (a1 + *(v6 + 36));
  v29 = v27[1];
  v30 = v27[2];
  v63 = *v27;
  v28 = v63;
  v64 = v29;
  v65 = v30;
  sub_2EF0(&qword_316460, &unk_2681F0);
  sub_2631E0();
  v63 = v28;
  v64 = v29;
  v65 = v30;
  sub_2631E0();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v52 = v63;
  v31 = v65;
  v51 = v67;
  v50 = v68;
  LOBYTE(v62) = 1;
  v70 = v64;
  v69 = v66;
  (*(v16 + 16))(v19, v53, v49);
  sub_260B10();
  sub_262630();
  v32 = sub_2625C0();
  (*(*(v32 - 8) + 56))(v15, 1, 1, v32);
  sub_262670();
  sub_8E80(v15, &qword_318458, &unk_26B270);
  v34 = v55;
  v33 = v56;
  (*(v55 + 104))(v11, enum case for Font.Leading.tight(_:), v56);
  v35 = sub_2626E0();

  (*(v34 + 8))(v11, v33);
  KeyPath = swift_getKeyPath();
  v37 = &v26[*(sub_2EF0(&qword_318470, &qword_26FBB0) + 36)];
  *v37 = KeyPath;
  v37[1] = v35;
  v38 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  v39 = swift_getKeyPath();
  v40 = &v26[*(sub_2EF0(&qword_318460, &qword_26FBA0) + 36)];
  *v40 = v39;
  v40[1] = v38;
  *&v26[*(sub_2EF0(&qword_324088, &qword_284788) + 36)] = 1;
  v41 = v59;
  sub_1C1894(v54, v59, type metadata accessor for BuyButtonCaptionViewModifier);
  v42 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v43 = swift_allocObject();
  sub_1C1918(v41, v43 + v42, type metadata accessor for BuyButtonCaptionViewModifier);
  v44 = v58;
  v45 = &v26[*(v57 + 44)];
  *v45 = sub_1C1DAC;
  *(v45 + 1) = 0;
  *(v45 + 2) = sub_1C1B50;
  *(v45 + 3) = v43;
  LOBYTE(v43) = v62;
  LOBYTE(v42) = v70;
  LOBYTE(v41) = v69;
  sub_8198(v26, v44, &qword_324080, &unk_284708);
  *a3 = 0;
  *(a3 + 8) = v43;
  *(a3 + 16) = v52;
  *(a3 + 24) = v42;
  *(a3 + 32) = v31;
  *(a3 + 40) = v41;
  v46 = v50;
  *(a3 + 48) = v51;
  *(a3 + 56) = v46;
  v47 = sub_2EF0(&qword_324090, &unk_284790);
  sub_8198(v44, a3 + *(v47 + 48), &qword_324080, &unk_284708);
  sub_8E80(v26, &qword_324080, &unk_284708);
  return sub_8E80(v44, &qword_324080, &unk_284708);
}

uint64_t sub_1C0BEC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for BuyButtonCaptionViewModifier(0) + 32));
  v6 = *v4;
  v7 = *(v4 + 2);
  sub_2EF0(&qword_316460, &unk_2681F0);
  return sub_2631F0();
}

uint64_t sub_1C0C6C()
{
  v0 = sub_2EF0(&qword_316208, &qword_268BD0);
  sub_B600(v0, qword_354028);
  v1 = sub_B080(v0, qword_354028);
  v2 = sub_260BD0();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_1C0D0C@<X0>(uint64_t a1@<X8>)
{
  if (qword_315AB8 != -1)
  {
    swift_once();
  }

  v2 = sub_2EF0(&qword_316208, &qword_268BD0);
  v3 = sub_B080(v2, qword_354028);
  return sub_8198(v3, a1, &qword_316208, &qword_268BD0);
}

uint64_t sub_1C0E4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31A2C0, &qword_2844F0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C0ED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31A2C0, &qword_2844F0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1C0F74()
{
  sub_1C15DC(319, &qword_323F28, type metadata accessor for BuyButtonViewModelBase);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1C1000()
{
  result = qword_323F60;
  if (!qword_323F60)
  {
    sub_2F9C(&qword_323EB8, &qword_284570);
    sub_1C10B8();
    sub_8E38(&qword_323F78, &qword_323F80, &unk_2845E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323F60);
  }

  return result;
}

unint64_t sub_1C10B8()
{
  result = qword_323F68;
  if (!qword_323F68)
  {
    sub_2F9C(&qword_323EB0, &qword_284538);
    sub_1C11A4(&qword_31A2D0, type metadata accessor for ButtonView);
    sub_1C11A4(&qword_323F70, type metadata accessor for BuyButtonCaptionViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323F68);
  }

  return result;
}

uint64_t sub_1C11A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C1210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_316208, &qword_268BD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_317BF8, &unk_26F930);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 16);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1C1358(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2EF0(&qword_316208, &qword_268BD0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2EF0(&qword_317BF8, &unk_26F930);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 16) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1C147C()
{
  sub_1C1678(319, &qword_31A8C8, &type metadata accessor for LocalizerRequest, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1C15DC(319, &unk_323FF0, type metadata accessor for BuyButtonViewModelBase.LongCaptionAlignment);
    if (v1 <= 0x3F)
    {
      sub_1C1678(319, &qword_317C68, type metadata accessor for SizeConstants, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_1C1678(319, &qword_316310, type metadata accessor for CGSize, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C15DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for BuyButtonExternals();
    v7 = sub_1C11A4(&unk_323F30, type metadata accessor for BuyButtonExternals);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1C1678(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1C16F8()
{
  result = qword_324048;
  if (!qword_324048)
  {
    sub_2F9C(&qword_324038, &qword_2846D0);
    sub_1C17B0();
    sub_8E38(&qword_324068, &qword_324070, &qword_2846F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324048);
  }

  return result;
}

unint64_t sub_1C17B0()
{
  result = qword_324050;
  if (!qword_324050)
  {
    sub_2F9C(&qword_324058, &unk_2846E0);
    sub_8E38(&qword_324060, &qword_324040, &qword_2846D8);
    sub_8E38(&qword_316250, &qword_316240, &unk_2680A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324050);
  }

  return result;
}

uint64_t sub_1C1894(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C1918(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C1990()
{
  v1 = type metadata accessor for BuyButtonCaptionViewModifier(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  v5 = sub_260BD0();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2, 1, v5))
  {
    (*(v6 + 8))(v0 + v2, v5);
  }

  v7 = (v4 + v1[6]);
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v9 = sub_261690();
    (*(*(v9 - 8) + 8))(&v7[v8], v9);
  }

  else
  {
    v10 = *v7;
  }

  v11 = *(v4 + v1[7] + 16);

  v12 = *(v4 + v1[8] + 16);

  return swift_deallocObject();
}

uint64_t sub_1C1B68(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for BuyButtonCaptionViewModifier(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1C1BEC()
{
  v1 = sub_2601B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1C1C74(void *a1)
{
  v2 = *(*(sub_2601B0() - 8) + 80);

  return sub_1E8A24(a1);
}

unint64_t sub_1C1CF0()
{
  result = qword_324098;
  if (!qword_324098)
  {
    sub_2F9C(&qword_3240A0, &qword_2847E8);
    sub_1C16F8();
    sub_8E38(&qword_324060, &qword_324040, &qword_2846D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324098);
  }

  return result;
}

__n128 SeeAllView.init(model:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for SeeAllView();
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  sub_2EF0(&qword_316C18, &unk_26F830);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + *(v4 + 24);
  result = *a1;
  v8 = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 1) = v8;
  *(v6 + 4) = *(a1 + 32);
  return result;
}

uint64_t type metadata accessor for SeeAllView()
{
  result = qword_324128;
  if (!qword_324128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1EBC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C18, &unk_26F830);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for SeeAllView();
  sub_1C3AA4(v1 + *(v12 + 20), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2616C0();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_264900();
    v16 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t SeeAllView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v1 = sub_261FA0();
  v2 = *(v1 - 8);
  v55 = v1;
  v56 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v54 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261760();
  v6 = *(v5 - 8);
  v52 = v5;
  v53 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2604E0();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = type metadata accessor for SeeAllView();
  v12 = v11 - 8;
  v46 = *(v11 - 8);
  v13 = *(v46 + 64);
  __chkstk_darwin(v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2EF0(&qword_3240A8, &qword_284848);
  v16 = *(*(v15 - 1) + 64);
  __chkstk_darwin(v15);
  v18 = &v45 - v17;
  v19 = sub_2EF0(&qword_3240B0, &qword_284850);
  v20 = *(v19 - 8);
  v50 = v19;
  v51 = v20;
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v47 = &v45 - v22;
  v23 = &v18[v15[12]];
  v24 = sub_2EF0(&qword_3240B8, &qword_284858);
  v23[3] = v24;
  v23[4] = sub_8E38(&qword_3240C0, &qword_3240B8, &qword_284858);
  v25 = sub_10934(v23);
  v26 = sub_2610B0();
  (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
  v27 = v15[13];
  v28 = *(v12 + 32);
  v29 = v48;
  sub_1C30B0(v48 + v28, &v58);
  sub_F7CC(&v58, &v18[v27]);
  sub_1C310C(v29, v14);
  v30 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v31 = swift_allocObject();
  sub_1C3174(v14, v31 + v30);
  sub_2604C0();
  sub_260420();
  v32 = &v18[v15[9]];
  *v32 = swift_getKeyPath();
  v32[8] = 0;
  v33 = v15[10];
  *&v18[v33] = swift_getKeyPath();
  sub_2EF0(&qword_316930, &qword_2689A0);
  swift_storeEnumTagMultiPayload();
  v34 = &v18[v15[11]];
  *v34 = swift_getKeyPath();
  v34[40] = 0;
  v35 = (v25 + *(v24 + 36));
  *v35 = sub_1C31D8;
  v35[1] = v31;
  v36 = v49;
  sub_261750();
  v37 = sub_8E38(&qword_3240C8, &qword_3240A8, &qword_284848);
  v38 = sub_1C3A4C(&qword_319400, &type metadata accessor for PlainButtonStyle);
  v39 = v47;
  v40 = v52;
  sub_262A50();
  (*(v53 + 8))(v36, v40);
  sub_8E80(v18, &qword_3240A8, &qword_284848);
  v41 = v54;
  sub_2618C0();
  *&v58 = v15;
  *(&v58 + 1) = v40;
  v59 = v37;
  v60 = v38;
  swift_getOpaqueTypeConformance2();
  sub_1C3A4C(&qword_318438, &type metadata accessor for AutomaticHoverEffect);
  v42 = v50;
  v43 = v55;
  sub_262AA0();
  (*(v56 + 8))(v41, v43);
  return (*(v51 + 8))(v39, v42);
}

uint64_t sub_1C26C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_318458, &unk_26B270);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = sub_262730();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = sub_261D30();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v13 = sub_2EF0(&qword_324168, &qword_284958);
  sub_1C28D8(a1, (a2 + *(v13 + 44)));
  (*(v9 + 104))(v12, enum case for Font.TextStyle.body(_:), v8);
  v14 = sub_2625C0();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  sub_262630();
  v15 = sub_262680();
  sub_8E80(v7, &qword_318458, &unk_26B270);
  (*(v9 + 8))(v12, v8);
  KeyPath = swift_getKeyPath();
  result = sub_2EF0(&qword_324170, &qword_284990);
  v18 = (a2 + *(result + 36));
  *v18 = KeyPath;
  v18[1] = v15;
  return result;
}

uint64_t sub_1C28D8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for SeeAllView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_2EF0(&qword_324178, &qword_284998);
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  sub_1C310C(a1, &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_1C3174(&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_2EF0(&qword_324180, &qword_2849A0);
  sub_260A70();
  sub_260A50();
  sub_1C3994();
  sub_1C3A4C(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
  sub_1C3A4C(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
  sub_260A80();
  v16 = v7[2];
  v16(v10, v13, v6);
  v17 = v22;
  v16(v22, v10, v6);
  v18 = &v17[*(sub_2EF0(&qword_324190, &qword_2849A8) + 48)];
  *v18 = 0;
  v18[8] = 1;
  v19 = v7[1];
  v19(v13, v6);
  return (v19)(v10, v6);
}

uint64_t sub_1C2C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a2;
  v53 = a3;
  v4 = sub_2616C0();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 64);
  __chkstk_darwin(v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264010();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_263FA0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_260BD0();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  sub_263F90();
  (*(v9 + 104))(v12, enum case for LocalizerLookupStrategy.default(_:), v8);
  sub_260B80();
  (*(v9 + 8))(v12, v8);
  (*(v14 + 8))(v17, v13);
  sub_30CC(a1, v54);
  v20 = sub_2627B0();
  v47 = v21;
  v48 = v20;
  LOBYTE(v12) = v22;
  v49 = v23;
  v54[0] = sub_262120();
  v24 = sub_2627F0();
  v26 = v25;
  LOBYTE(v9) = v27;
  v28 = v7;
  sub_1C1EBC(v7);
  v29 = Text.withTrailingForwardChevron(_:layoutDirection:)(1, v7, v24, v26, v9 & 1);
  v31 = v30;
  LOBYTE(v8) = v32;
  sub_39DBC(v24, v26, v9 & 1);

  (*(v51 + 8))(v28, v52);
  v34 = v47;
  v33 = v48;
  v51 = sub_262800();
  v52 = v35;
  v37 = v36;
  LOBYTE(v24) = v38;
  sub_39DBC(v33, v34, v12 & 1);

  sub_39DBC(v29, v31, v8 & 1);

  KeyPath = swift_getKeyPath();
  v40 = sub_2EF0(&qword_324180, &qword_2849A0);
  v41 = v53;
  v42 = (v53 + *(v40 + 36));
  v43 = *(sub_2EF0(&qword_317530, &qword_26FCC0) + 28);
  v44 = enum case for Image.Scale.small(_:);
  v45 = sub_2630F0();
  (*(*(v45 - 8) + 104))(v42 + v43, v44, v45);
  result = swift_getKeyPath();
  *v42 = result;
  *v41 = v51;
  *(v41 + 8) = v37;
  *(v41 + 16) = v24 & 1;
  *(v41 + 24) = v52;
  *(v41 + 32) = KeyPath;
  *(v41 + 40) = 0;
  return result;
}

uint64_t sub_1C310C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeeAllView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3174(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeeAllView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C31D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeeAllView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1C26C0(v4, a1);
}

uint64_t sub_1C3290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_316F68, &unk_269C50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_319458, &unk_26CF30);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1C33CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2EF0(&qword_316F68, &unk_269C50);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2EF0(&qword_319458, &unk_26CF30);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1C34F0()
{
  sub_1C35B4(319, &qword_316FE8, type metadata accessor for ColorConstants);
  if (v0 <= 0x3F)
  {
    sub_1C35B4(319, &qword_3194C8, &type metadata accessor for LayoutDirection);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C35B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2611E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C3608()
{
  sub_2F9C(&qword_3240B0, &qword_284850);
  sub_261FA0();
  sub_2F9C(&qword_3240A8, &qword_284848);
  sub_261760();
  sub_8E38(&qword_3240C8, &qword_3240A8, &qword_284848);
  sub_1C3A4C(&qword_319400, &type metadata accessor for PlainButtonStyle);
  swift_getOpaqueTypeConformance2();
  sub_1C3A4C(&qword_318438, &type metadata accessor for AutomaticHoverEffect);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C377C()
{
  v1 = type metadata accessor for SeeAllView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v0 + v2);
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_261180();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = *(v1 + 20);
  sub_2EF0(&qword_316C18, &unk_26F830);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_2616C0();
    (*(*(v8 - 8) + 8))(&v4[v7], v8);
  }

  else
  {
    v9 = *&v4[v7];
  }

  sub_3080(&v4[*(v1 + 24)]);

  return swift_deallocObject();
}

uint64_t sub_1C3914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SeeAllView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1C2C10(a1, v6, a2);
}

unint64_t sub_1C3994()
{
  result = qword_324188;
  if (!qword_324188)
  {
    sub_2F9C(&qword_324180, &qword_2849A0);
    sub_5CED4();
    sub_8E38(&qword_317590, &qword_317530, &qword_26FCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324188);
  }

  return result;
}

uint64_t sub_1C3A4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3AA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316C18, &unk_26F830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 ShelfHeaderView.init(title:actionModel:useSmallHeader:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for ShelfHeaderView();
  v9 = v8[5];
  *(a4 + v9) = swift_getKeyPath();
  sub_2EF0(&qword_316C08, &unk_26AEF0);
  swift_storeEnumTagMultiPayload();
  v10 = v8[6];
  *(a4 + v10) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v11 = a4 + v8[7];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = v8[8];
  *(a4 + v12) = swift_getKeyPath();
  sub_2EF0(&qword_316C18, &unk_26F830);
  swift_storeEnumTagMultiPayload();
  v13 = v8[10];
  v14 = sub_260BD0();
  v15 = *(v14 - 8);
  (*(v15 + 32))(a4 + v13, a1, v14);
  v16 = *(v15 + 56);
  v16(a4 + v8[11], 1, 1, v14);
  v16(a4 + v8[9], 1, 1, v14);
  *(a4 + v8[12]) = 0;
  sub_222DC(v25);
  v17 = a4 + v8[13];
  v18 = v25[3];
  *(v17 + 2) = v25[2];
  *(v17 + 3) = v18;
  v17[128] = v26;
  v19 = v25[7];
  *(v17 + 6) = v25[6];
  *(v17 + 7) = v19;
  v20 = v25[5];
  *(v17 + 4) = v25[4];
  *(v17 + 5) = v20;
  v21 = v25[1];
  *v17 = v25[0];
  *(v17 + 1) = v21;
  v22 = a4 + v8[14];
  result = *a2;
  v24 = *(a2 + 16);
  *v22 = *a2;
  *(v22 + 1) = v24;
  *(v22 + 4) = *(a2 + 32);
  *(a4 + v8[15]) = a3;
  return result;
}

__n128 ShelfHeaderView.init(title:subtitle:preheader:showTitleBelowSubtitle:coverViewModel:actionModel:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  *a7 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for ShelfHeaderView();
  v15 = v14[5];
  *(a7 + v15) = swift_getKeyPath();
  sub_2EF0(&qword_316C08, &unk_26AEF0);
  swift_storeEnumTagMultiPayload();
  v16 = v14[6];
  *(a7 + v16) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v17 = a7 + v14[7];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = v14[8];
  *(a7 + v18) = swift_getKeyPath();
  sub_2EF0(&qword_316C18, &unk_26F830);
  swift_storeEnumTagMultiPayload();
  v19 = v14[10];
  v20 = sub_260BD0();
  (*(*(v20 - 8) + 32))(a7 + v19, a1, v20);
  sub_22148(a2, a7 + v14[11], &qword_316208, &qword_268BD0);
  sub_22148(a3, a7 + v14[9], &qword_316208, &qword_268BD0);
  *(a7 + v14[12]) = a4;
  v21 = a7 + v14[13];
  v22 = *(a5 + 48);
  *(v21 + 2) = *(a5 + 32);
  *(v21 + 3) = v22;
  v23 = *(a5 + 16);
  *v21 = *a5;
  *(v21 + 1) = v23;
  v21[128] = *(a5 + 128);
  v24 = *(a5 + 112);
  *(v21 + 6) = *(a5 + 96);
  *(v21 + 7) = v24;
  v25 = *(a5 + 80);
  *(v21 + 4) = *(a5 + 64);
  *(v21 + 5) = v25;
  v26 = a7 + v14[14];
  result = *a6;
  v28 = *(a6 + 16);
  *v26 = *a6;
  *(v26 + 1) = v28;
  *(v26 + 4) = *(a6 + 32);
  *(a7 + v14[15]) = 0;
  return result;
}

uint64_t type metadata accessor for ShelfHeaderView()
{
  result = qword_3242E0;
  if (!qword_3242E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4000@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C08, &unk_26AEF0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for ShelfHeaderView();
  sub_8198(v1 + *(v12 + 20), v11, &qword_316C08, &unk_26AEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1CA824(v11, a1, type metadata accessor for FontConstants);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1C41EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C18, &unk_26F830);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for ShelfHeaderView();
  sub_8198(v1 + *(v12 + 32), v11, &qword_316C18, &unk_26F830);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2616C0();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_264900();
    v16 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1C43F4()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for ShelfHeaderView() + 28);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_264900();
    v8 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  if (v7)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

uint64_t ShelfHeaderView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v46 = sub_2EF0(&qword_324198, &qword_284B00);
  v3 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v5 = &v41 - v4;
  v49 = sub_2EF0(&qword_3241A0, &qword_284B08);
  v6 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v51 = &v41 - v7;
  v50 = sub_261760();
  v45 = *(v50 - 8);
  v8 = *(v45 + 64);
  __chkstk_darwin(v50);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2604E0();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = type metadata accessor for ShelfHeaderView();
  v13 = v12 - 8;
  v42 = *(v12 - 8);
  v14 = *(v42 + 64);
  __chkstk_darwin(v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2EF0(&qword_3241A8, &qword_284B10);
  v17 = *(*(v16 - 1) + 64);
  __chkstk_darwin(v16);
  v19 = &v41 - v18;
  v48 = sub_2EF0(&qword_3241B0, &qword_284B18);
  v43 = *(v48 - 8);
  v20 = *(v43 + 64);
  __chkstk_darwin(v48);
  v22 = &v41 - v21;
  sub_8198(v2 + *(v13 + 64), &v52, &qword_315D38, &unk_266E30);
  if (v54)
  {
    sub_F7CC(&v52, v55);
    v23 = &v19[v16[12]];
    v41 = sub_2EF0(&qword_324278, &qword_284B78);
    v23[3] = v41;
    v23[4] = sub_8E38(&qword_324280, &qword_324278, &qword_284B78);
    v24 = sub_10934(v23);
    v25 = sub_2610B0();
    (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
    sub_30CC(v55, &v19[v16[13]]);
    sub_1C9CFC(v2, &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v27 = swift_allocObject();
    sub_1CA824(v15, v27 + v26, type metadata accessor for ShelfHeaderView);
    sub_2604C0();
    sub_260420();
    v28 = &v19[v16[9]];
    *v28 = swift_getKeyPath();
    v28[8] = 0;
    v29 = v16[10];
    *&v19[v29] = swift_getKeyPath();
    sub_2EF0(&qword_316930, &qword_2689A0);
    swift_storeEnumTagMultiPayload();
    v30 = &v19[v16[11]];
    *v30 = swift_getKeyPath();
    v30[40] = 0;
    v31 = (v24 + *(v41 + 36));
    *v31 = sub_1C9D64;
    v31[1] = v27;
    v32 = v44;
    sub_261750();
    v33 = sub_8E38(&qword_3241B8, &qword_3241A8, &qword_284B10);
    v34 = sub_1CAAD0(&qword_319400, &type metadata accessor for PlainButtonStyle);
    v35 = v50;
    sub_262A50();
    (*(v45 + 8))(v32, v35);
    sub_8E80(v19, &qword_3241A8, &qword_284B10);
    v36 = v43;
    v37 = v48;
    (*(v43 + 16))(v51, v22, v48);
    swift_storeEnumTagMultiPayload();
    *&v52 = v16;
    *(&v52 + 1) = v35;
    v53 = v33;
    v54 = v34;
    swift_getOpaqueTypeConformance2();
    sub_1C97F8();
    sub_261F80();
    (*(v36 + 8))(v22, v37);
    return sub_3080(v55);
  }

  else
  {
    sub_8E80(&v52, &qword_315D38, &unk_266E30);
    sub_1C4CD0(v5);
    sub_8198(v5, v51, &qword_324198, &qword_284B00);
    swift_storeEnumTagMultiPayload();
    v39 = sub_8E38(&qword_3241B8, &qword_3241A8, &qword_284B10);
    v40 = sub_1CAAD0(&qword_319400, &type metadata accessor for PlainButtonStyle);
    v55[0] = v16;
    v55[1] = v50;
    v55[2] = v39;
    v55[3] = v40;
    swift_getOpaqueTypeConformance2();
    sub_1C97F8();
    sub_261F80();
    return sub_8E80(v5, &qword_324198, &qword_284B00);
  }
}

uint64_t sub_1C4CD0@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v42 = sub_2EF0(&qword_324240, &qword_284B58);
  v2 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v38 = v37 - v3;
  v39 = sub_2EF0(&qword_324360, &qword_284C88);
  v4 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v6 = v37 - v5;
  v40 = sub_2EF0(&qword_3241F0, &qword_284B30);
  v7 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v9 = v37 - v8;
  v10 = sub_2EF0(&qword_3241E0, &qword_284B28);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v41 = v37 - v12;
  v13 = sub_2EF0(&qword_324368, &qword_284C90);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = v37 - v15;
  v17 = sub_2EF0(&qword_3241D0, &qword_284B20);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = v37 - v19;
  v21 = type metadata accessor for ShelfHeaderView();
  v22 = v1 + *(v21 + 52);
  v23 = *(v22 + 112);
  v52 = *(v22 + 96);
  v53 = v23;
  v54 = *(v22 + 128);
  v24 = *(v22 + 80);
  v50 = *(v22 + 64);
  v51 = v24;
  v25 = *(v22 + 48);
  v48 = *(v22 + 32);
  v49 = v25;
  v26 = *(v22 + 16);
  v46 = *v22;
  v47 = v26;
  if (sub_7DC5C(&v46) == 1)
  {
    v37[0] = v13;
    v37[1] = v17;
    if (*(v1 + *(v21 + 60)) == 1)
    {
      sub_1C6724(v9);
      v27 = &qword_3241F0;
      v28 = &qword_284B30;
      sub_8198(v9, v6, &qword_3241F0, &qword_284B30);
      swift_storeEnumTagMultiPayload();
      sub_1C9B90(&qword_3241E8, &qword_3241F0, &qword_284B30, sub_1C9994);
      sub_1C9B90(&qword_324238, &qword_324240, &qword_284B58, sub_1C9C14);
      v29 = v41;
      sub_261F80();
      v30 = v9;
    }

    else
    {
      v35 = v38;
      sub_1C6FDC(v38);
      v27 = &qword_324240;
      v28 = &qword_284B58;
      sub_8198(v35, v6, &qword_324240, &qword_284B58);
      swift_storeEnumTagMultiPayload();
      sub_1C9B90(&qword_3241E8, &qword_3241F0, &qword_284B30, sub_1C9994);
      sub_1C9B90(&qword_324238, &qword_324240, &qword_284B58, sub_1C9C14);
      v29 = v41;
      sub_261F80();
      v30 = v35;
    }

    sub_8E80(v30, v27, v28);
    v32 = &qword_3241E0;
    v33 = &qword_284B28;
    sub_8198(v29, v16, &qword_3241E0, &qword_284B28);
    swift_storeEnumTagMultiPayload();
    sub_8E38(&qword_3241C8, &qword_3241D0, &qword_284B20);
    sub_1C98B0();
    sub_261F80();
    v34 = v29;
  }

  else
  {
    *v20 = sub_261D30();
    *(v20 + 1) = 0x4028000000000000;
    v20[16] = 0;
    v31 = *(sub_2EF0(&qword_324370, &qword_284C98) + 44);
    v44[0] = v46;
    v44[1] = v47;
    v44[2] = v48;
    v44[3] = v49;
    v44[4] = v50;
    v44[5] = v51;
    v44[6] = v52;
    v44[7] = v53;
    v45 = v54;
    sub_1C5288(v44, v1, &v20[v31]);
    v32 = &qword_3241D0;
    v33 = &qword_284B20;
    sub_8198(v20, v16, &qword_3241D0, &qword_284B20);
    swift_storeEnumTagMultiPayload();
    sub_8E38(&qword_3241C8, &qword_3241D0, &qword_284B20);
    sub_1C98B0();
    sub_261F80();
    v34 = v20;
  }

  return sub_8E80(v34, v32, v33);
}

uint64_t sub_1C5288@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a2;
  v72 = a3;
  v3 = *(a1 + 128);
  v4 = a1[1];
  v77 = *a1;
  v78 = v4;
  v5 = a1[3];
  v79 = a1[2];
  v80 = v5;
  v6 = a1[5];
  v81 = a1[4];
  v82 = v6;
  v7 = a1[7];
  v83 = a1[6];
  v84 = v7;
  v85 = v3;
  v8 = type metadata accessor for ShelfHeaderView();
  v67 = *(v8 - 8);
  v9 = *(v67 + 64);
  __chkstk_darwin(v8 - 8);
  v68 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_324378, &qword_284CA0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v65 - v15;
  v17 = type metadata accessor for CoverView();
  v18 = (v17 - 8);
  v19 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_2EF0(&qword_3188E0, &qword_274300);
  v22 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v70 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v65 - v25;
  __chkstk_darwin(v27);
  v29 = &v65 - v28;
  *v21 = swift_getKeyPath();
  v21[40] = 0;
  *(v21 + 6) = swift_getKeyPath();
  v21[56] = 0;
  v30 = v18[8];
  *&v21[v30] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v31 = v18[9];
  *&v21[v31] = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v32 = &v21[v18[10]];
  sub_5757C(&v77, v73);
  type metadata accessor for ProfileRestrictions();
  sub_1CAAD0(&qword_326DC0, type metadata accessor for ProfileRestrictions);
  *v32 = sub_261900();
  v32[1] = v33;
  v34 = &v21[v18[11]];
  LOBYTE(v74) = 1;
  sub_2631D0();
  v35 = *(&v73[0] + 1);
  *v34 = v73[0];
  *(v34 + 1) = v35;
  v36 = &v21[v18[12]];
  v37 = v82;
  v38 = v81;
  v39 = v82;
  *(v36 + 4) = v81;
  *(v36 + 5) = v37;
  v40 = v84;
  v41 = v83;
  v42 = v84;
  *(v36 + 6) = v83;
  *(v36 + 7) = v40;
  v43 = v78;
  v44 = v77;
  v45 = v78;
  *v36 = v77;
  *(v36 + 1) = v43;
  v46 = v80;
  v47 = v79;
  v48 = v80;
  *(v36 + 2) = v79;
  *(v36 + 3) = v46;
  v49 = v18[13];
  v73[4] = v38;
  v73[5] = v39;
  v73[6] = v41;
  v73[7] = v42;
  v73[2] = v47;
  v73[3] = v48;
  v21[v49] = 0;
  v73[0] = v44;
  v73[1] = v45;
  LODWORD(v18) = sub_2F8B8(v73);
  v50 = sub_2F950(v73);
  v71 = v13;
  if (!v18)
  {
    v52 = *(v50 + 16);
  }

  v51 = v69;
  v53 = v68;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  sub_1CA824(v21, v26, type metadata accessor for CoverView);
  v54 = &v26[*(v66 + 36)];
  v55 = v75;
  *v54 = v74;
  *(v54 + 1) = v55;
  *(v54 + 2) = v76;
  v56 = v29;
  sub_22148(v26, v29, &qword_3188E0, &qword_274300);
  *v16 = sub_261E60();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v57 = *(sub_2EF0(&qword_324380, &qword_284D28) + 44);
  sub_1C9CFC(v51, v53);
  v58 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v59 = swift_allocObject();
  sub_1CA824(v53, v59 + v58, type metadata accessor for ShelfHeaderView);
  sub_2EF0(&qword_324388, &qword_284D30);
  sub_260A70();
  sub_260A50();
  sub_8E38(&qword_324390, &qword_324388, &qword_284D30);
  sub_1CAAD0(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
  sub_1CAAD0(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
  sub_260A80();
  v60 = v70;
  sub_8198(v29, v70, &qword_3188E0, &qword_274300);
  v61 = v71;
  sub_8198(v16, v71, &qword_324378, &qword_284CA0);
  v62 = v72;
  sub_8198(v60, v72, &qword_3188E0, &qword_274300);
  v63 = sub_2EF0(&qword_324398, &qword_284D38);
  sub_8198(v61, v62 + *(v63 + 48), &qword_324378, &qword_284CA0);
  sub_8E80(v16, &qword_324378, &qword_284CA0);
  sub_8E80(v56, &qword_3188E0, &qword_274300);
  sub_8E80(v61, &qword_324378, &qword_284CA0);
  return sub_8E80(v60, &qword_3188E0, &qword_274300);
}

uint64_t sub_1C5A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v135 = a1;
  v130 = a3;
  v134 = sub_25FF40();
  v137 = *(v134 - 8);
  v4 = *(v137 + 64);
  __chkstk_darwin(v134);
  v136 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2EF0(&qword_318458, &unk_26B270);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v128 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v119 = &v117 - v10;
  v132 = sub_262730();
  v131 = *(v132 - 8);
  v11 = *(v131 + 64);
  __chkstk_darwin(v132);
  v127 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v117 - v14;
  v16 = type metadata accessor for FontConstants.SectionHeader(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v126 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v118 = &v117 - v20;
  v21 = type metadata accessor for FontConstants(0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v125 = &v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v117 - v25;
  v123 = sub_2EF0(&qword_3193A0, &unk_26CD40);
  v124 = *(v123 - 8);
  v27 = *(v124 + 64);
  __chkstk_darwin(v123);
  v120 = &v117 - v28;
  v29 = sub_2EF0(&qword_316208, &qword_268BD0);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v32 = &v117 - v31;
  v33 = sub_260BD0();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v138 = &v117 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v117 - v38;
  __chkstk_darwin(v40);
  v42 = &v117 - v41;
  v43 = sub_2EF0(&qword_3243A0, &qword_284D40);
  v44 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43 - 8);
  v129 = &v117 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v121 = &v117 - v47;
  v122 = type metadata accessor for ShelfHeaderView();
  v48 = *(v122 + 44);
  v133 = a2;
  sub_8198(a2 + v48, v32, &qword_316208, &qword_268BD0);
  v49 = (*(v34 + 48))(v32, 1, v33);
  v139 = v34;
  v140 = v33;
  if (v49 == 1)
  {
    sub_8E80(v32, &qword_316208, &qword_268BD0);
    v50 = 1;
    v51 = v121;
    v52 = v123;
  }

  else
  {
    v53 = *(v34 + 32);
    v117 = v42;
    v53(v42, v32, v33);
    (*(v34 + 16))(v39, v42, v33);
    sub_1C4000(v26);
    v54 = v26;
    v55 = v118;
    sub_1CA824(v54, v118, type metadata accessor for FontConstants.Environment);
    v56 = v131;
    v57 = v132;
    (*(v131 + 104))(v15, enum case for Font.TextStyle.subheadline(_:), v132);
    v58 = sub_2625C0();
    v59 = v119;
    (*(*(v58 - 8) + 56))(v119, 1, 1, v58);
    v60 = sub_262680();
    sub_8E80(v59, &qword_318458, &unk_26B270);
    (*(v56 + 8))(v15, v57);
    sub_1CA7C4(v55);
    sub_30CC(v135, &v141);
    v61 = sub_260BB0();
    v63 = v62;
    objc_allocWithZone(type metadata accessor for BooksHTMLConverter());

    v64 = sub_19C6C8(v61, v63, v60);
    [*&v64[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser] parse];
    v65 = v136;
    v66 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_currentString;
    swift_beginAccess();
    (*(v137 + 16))(v65, &v64[v66], v134);

    v67 = sub_2628D0();
    v69 = v68;
    LOBYTE(v59) = v70;

    sub_3080(&v141);
    v71 = *(v139 + 8);
    v71(v39, v140);
    _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    v72 = sub_2627E0();
    v74 = v73;
    LODWORD(v118) = v75;
    v119 = v76;
    v33 = v140;

    sub_39DBC(v67, v69, v59 & 1);

    v71(v117, v33);
    v34 = v139;
    v77 = v123;
    v78 = *(v123 + 36);
    KeyPath = swift_getKeyPath();
    v80 = v120;
    *&v120[v78] = KeyPath;
    sub_2EF0(&qword_3179C0, &qword_269D60);
    swift_storeEnumTagMultiPayload();
    *v80 = v72;
    *(v80 + 8) = v74;
    *(v80 + 16) = v118 & 1;
    *(v80 + 24) = v119;
    v51 = v121;
    sub_22148(v80, v121, &qword_3193A0, &unk_26CD40);
    v50 = 0;
    v52 = v77;
  }

  (*(v124 + 56))(v51, v50, 1, v52);
  (*(v34 + 16))(v138, v133 + *(v122 + 40), v33);
  v81 = v125;
  sub_1C4000(v125);
  v82 = v126;
  sub_1CA824(v81, v126, type metadata accessor for FontConstants.Environment);
  v83 = v131;
  v84 = v127;
  v85 = v132;
  (*(v131 + 104))(v127, enum case for Font.TextStyle.title2(_:), v132);
  v86 = _s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0();
  v87 = v128;
  if (v86)
  {
    v88 = sub_2625C0();
    (*(*(v88 - 8) + 56))(v87, 1, 1, v88);
  }

  else
  {
    v89 = enum case for Font.Design.serif (_:);
    v90 = sub_2625C0();
    v91 = *(v90 - 8);
    (*(v91 + 104))(v87, v89, v90);
    (*(v91 + 56))(v87, 0, 1, v90);
  }

  v92 = v135;
  sub_262680();
  sub_8E80(v87, &qword_318458, &unk_26B270);
  (*(v83 + 8))(v84, v85);
  v93 = sub_2625A0();

  sub_1CA7C4(v82);
  sub_30CC(v92, &v141);
  v94 = v138;
  v95 = sub_260BB0();
  v97 = v96;
  v98 = objc_allocWithZone(type metadata accessor for BooksHTMLConverter());

  v99 = sub_19C6C8(v95, v97, v93);
  [*&v99[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser] parse];
  v100 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_currentString;
  swift_beginAccess();
  (*(v137 + 16))(v136, &v99[v100], v134);

  v101 = sub_2628D0();
  v103 = v102;
  v105 = v104;

  sub_3080(&v141);
  (*(v139 + 8))(v94, v140);
  _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  v106 = sub_2627E0();
  v108 = v107;
  v110 = v109;
  v112 = v111;

  sub_39DBC(v101, v103, v105 & 1);

  v113 = v129;
  sub_8198(v51, v129, &qword_3243A0, &qword_284D40);
  v114 = v130;
  sub_8198(v113, v130, &qword_3243A0, &qword_284D40);
  v115 = v114 + *(sub_2EF0(&qword_3243A8, &qword_284D48) + 48);
  *v115 = v106;
  *(v115 + 8) = v108;
  *(v115 + 16) = v110 & 1;
  *(v115 + 24) = v112;
  sub_43B58(v106, v108, v110 & 1);

  sub_8E80(v51, &qword_3243A0, &qword_284D40);
  sub_39DBC(v106, v108, v110 & 1);

  return sub_8E80(v113, &qword_3243A0, &qword_284D40);
}

uint64_t sub_1C6724@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v2 = sub_2EF0(&qword_318458, &unk_26B270);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v85 = &v72 - v4;
  v76 = sub_262730();
  v74 = *(v76 - 8);
  v5 = *(v74 + 64);
  __chkstk_darwin(v76);
  v75 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FontConstants.SectionHeader(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v73 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FontConstants(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ShelfHeaderView();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  v82 = sub_2EF0(&qword_324230, &qword_284B50);
  v81 = *(v82 - 8);
  v17 = *(v81 + 64);
  __chkstk_darwin(v82);
  v19 = &v72 - v18;
  v77 = sub_2EF0(&qword_324220, &qword_284B48);
  v20 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v22 = &v72 - v21;
  v80 = sub_2EF0(&qword_324210, &qword_284B40);
  v23 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v78 = &v72 - v24;
  v83 = sub_2EF0(&qword_324200, &qword_284B38);
  v25 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83);
  v84 = &v72 - v26;
  sub_1C9CFC(v1, &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v28 = swift_allocObject();
  sub_1CA824(&v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for ShelfHeaderView);
  sub_2EF0(&qword_3243B0, &qword_284D78);
  sub_260A70();
  sub_260A50();
  sub_1CA8A4();
  sub_1CAAD0(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
  sub_1CAAD0(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
  v29 = v74;
  v79 = v19;
  v30 = v76;
  v31 = v73;
  sub_260A80();
  sub_1C4000(v13);
  v32 = v13;
  v33 = v75;
  sub_1CA824(v32, v31, type metadata accessor for FontConstants.Environment);
  (*(v29 + 104))(v33, enum case for Font.TextStyle.body(_:), v30);
  if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
  {
    v34 = sub_2625C0();
    v35 = v85;
    (*(*(v34 - 8) + 56))(v85, 1, 1, v34);
  }

  else
  {
    v36 = enum case for Font.Design.serif (_:);
    v37 = sub_2625C0();
    v38 = *(v37 - 8);
    v35 = v85;
    (*(v38 + 104))(v85, v36, v37);
    (*(v38 + 56))(v35, 0, 1, v37);
  }

  sub_262680();
  sub_8E80(v35, &qword_318458, &unk_26B270);
  (*(v29 + 8))(v33, v30);
  v39 = sub_2625A0();

  sub_1CA7C4(v31);
  KeyPath = swift_getKeyPath();
  (*(v81 + 32))(v22, v79, v82);
  v41 = &v22[*(v77 + 36)];
  *v41 = KeyPath;
  v41[1] = v39;
  sub_263580();
  sub_261830();
  v42 = v78;
  sub_22148(v22, v78, &qword_324220, &qword_284B48);
  v43 = (v42 + *(v80 + 36));
  v44 = v92;
  v43[4] = v91;
  v43[5] = v44;
  v43[6] = v93;
  v45 = v88;
  *v43 = v87;
  v43[1] = v45;
  v46 = v90;
  v43[2] = v89;
  v43[3] = v46;
  v47 = sub_262510();
  sub_2610C0();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = v42;
  v57 = v84;
  sub_22148(v56, v84, &qword_324210, &qword_284B40);
  v58 = v57 + *(v83 + 36);
  *v58 = v47;
  *(v58 + 8) = v49;
  *(v58 + 16) = v51;
  *(v58 + 24) = v53;
  *(v58 + 32) = v55;
  *(v58 + 40) = 0;
  v59 = sub_262520();
  sub_2610C0();
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v68 = v57;
  v69 = v86;
  sub_22148(v68, v86, &qword_324200, &qword_284B38);
  result = sub_2EF0(&qword_3241F0, &qword_284B30);
  v71 = v69 + *(result + 36);
  *v71 = v59;
  *(v71 + 8) = v61;
  *(v71 + 16) = v63;
  *(v71 + 24) = v65;
  *(v71 + 32) = v67;
  *(v71 + 40) = 0;
  return result;
}

uint64_t sub_1C6FDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v3 = sub_2EF0(&qword_316208, &qword_268BD0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v67 = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v62[0] = v62 - v7;
  v64 = type metadata accessor for ShelfHeaderView();
  v8 = *(v64 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v64);
  v10 = sub_2EF0(&qword_324270, &qword_284B70);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v62 - v12;
  v14 = sub_2EF0(&qword_324260, &qword_284B68);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v63 = v62 - v17;
  v65 = sub_2EF0(&qword_324250, &qword_284B60);
  v18 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v66 = v62 - v19;
  *v13 = sub_261E60();
  *(v13 + 1) = 0x4000000000000000;
  v13[16] = 0;
  v62[1] = *(sub_2EF0(&qword_3243E0, &qword_284E20) + 44);
  sub_1C9CFC(v2, v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v21 = swift_allocObject();
  sub_1CA824(v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for ShelfHeaderView);
  sub_2EF0(&qword_3243E8, &qword_284E28);
  sub_260A70();
  sub_260A50();
  sub_8E38(&qword_3243F0, &qword_3243E8, &qword_284E28);
  sub_1CAAD0(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
  sub_1CAAD0(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
  v22 = v2;
  v24 = v63;
  v23 = v64;
  sub_260A80();
  sub_263580();
  sub_261830();
  sub_22148(v13, v24, &qword_324270, &qword_284B70);
  v25 = (v24 + *(v15 + 44));
  v26 = v76;
  v25[4] = v75;
  v25[5] = v26;
  v25[6] = v77;
  v27 = v72;
  *v25 = v71;
  v25[1] = v27;
  v28 = v74;
  v25[2] = v73;
  v25[3] = v28;
  v29 = sub_262510();
  v30 = v2 + v23[13];
  v31 = *(v30 + 112);
  v69[6] = *(v30 + 96);
  v69[7] = v31;
  v70 = *(v30 + 128);
  v32 = *(v30 + 80);
  v69[4] = *(v30 + 64);
  v69[5] = v32;
  v33 = *(v30 + 48);
  v69[2] = *(v30 + 32);
  v69[3] = v33;
  v34 = *(v30 + 16);
  v69[0] = *v30;
  v69[1] = v34;
  if (sub_7DC5C(v69) == 1)
  {
    v35 = v2 + v23[9];
    v36 = v62[0];
    sub_8198(v35, v62[0], &qword_316208, &qword_268BD0);
    v37 = sub_260BD0();
    (*(*(v37 - 8) + 48))(v36, 1, v37);
    sub_8E80(v36, &qword_316208, &qword_268BD0);
  }

  sub_2610C0();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = v66;
  sub_22148(v24, v66, &qword_324260, &qword_284B68);
  v47 = v46 + *(v65 + 36);
  *v47 = v29;
  *(v47 + 8) = v39;
  *(v47 + 16) = v41;
  *(v47 + 24) = v43;
  *(v47 + 32) = v45;
  *(v47 + 40) = 0;
  v48 = sub_262520();
  v49 = v67;
  sub_8198(v22 + v23[11], v67, &qword_316208, &qword_268BD0);
  v50 = sub_260BD0();
  (*(*(v50 - 8) + 48))(v49, 1, v50);
  sub_8E80(v49, &qword_316208, &qword_268BD0);
  sub_2610C0();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = v68;
  sub_22148(v46, v68, &qword_324250, &qword_284B60);
  result = sub_2EF0(&qword_324240, &qword_284B58);
  v61 = v59 + *(result + 36);
  *v61 = v48;
  *(v61 + 8) = v52;
  *(v61 + 16) = v54;
  *(v61 + 24) = v56;
  *(v61 + 32) = v58;
  *(v61 + 40) = 0;
  return result;
}

uint64_t sub_1C76A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v244 = a1;
  v254 = a3;
  v251 = sub_2EF0(&qword_3193A0, &unk_26CD40);
  v250 = *(v251 - 8);
  v4 = *(v250 + 64);
  __chkstk_darwin(v251);
  v218 = &v211 - v5;
  v6 = sub_2EF0(&qword_3243A0, &qword_284D40);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v260 = &v211 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v263 = &v211 - v10;
  v11 = type metadata accessor for ShelfHeaderView();
  v247 = *(v11 - 8);
  v12 = *(v247 + 64);
  __chkstk_darwin(v11);
  v248 = v13;
  v249 = &v211 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = sub_2EF0(&qword_324230, &qword_284B50);
  v252 = *(v253 - 8);
  v14 = *(v252 + 64);
  __chkstk_darwin(v253);
  v223 = &v211 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v235 = &v211 - v17;
  v18 = sub_2EF0(&qword_324220, &qword_284B48);
  v19 = *(v18 - 8);
  v266 = v18;
  v267 = v19;
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v222 = &v211 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v221 = &v211 - v23;
  __chkstk_darwin(v24);
  v216 = &v211 - v25;
  __chkstk_darwin(v26);
  v215 = &v211 - v27;
  v28 = sub_2EF0(&qword_3243F8, &qword_284E30);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v261 = &v211 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v262 = &v211 - v32;
  __chkstk_darwin(v33);
  v265 = &v211 - v34;
  __chkstk_darwin(v35);
  v268 = &v211 - v36;
  v238 = sub_25FF40();
  v257 = *(v238 - 8);
  v37 = v257[8];
  __chkstk_darwin(v238);
  v237 = &v211 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_2EF0(&qword_318458, &unk_26B270);
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39 - 8);
  v220 = &v211 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v213 = &v211 - v43;
  __chkstk_darwin(v44);
  v256 = &v211 - v45;
  v46 = sub_262730();
  v264 = *(v46 - 8);
  v47 = *(v264 + 64);
  __chkstk_darwin(v46);
  v219 = &v211 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v228 = &v211 - v50;
  __chkstk_darwin(v51);
  v232 = &v211 - v52;
  v53 = type metadata accessor for FontConstants.SectionHeader(0);
  v54 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53 - 8);
  v246 = &v211 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v227 = &v211 - v57;
  __chkstk_darwin(v58);
  v231 = &v211 - v59;
  v60 = type metadata accessor for FontConstants(0);
  v61 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60 - 8);
  v217 = &v211 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v212 = &v211 - v64;
  __chkstk_darwin(v65);
  v67 = &v211 - v66;
  v68 = sub_2EF0(&qword_316208, &qword_268BD0);
  v69 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68 - 8);
  v229 = &v211 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v71);
  v73 = &v211 - v72;
  v74 = sub_260BD0();
  v75 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v233 = &v211 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v77);
  v79 = &v211 - v78;
  __chkstk_darwin(v80);
  v82 = &v211 - v81;
  v236 = v11;
  v83 = *(v11 + 36);
  v85 = v84;
  sub_8198(a2 + v83, v73, &qword_316208, &qword_268BD0);
  v86 = *(v85 + 48);
  v226 = v85 + 48;
  v225 = v86;
  v87 = v86(v73, 1, v74);
  v259 = a2;
  v88 = v46;
  v258 = v46;
  v89 = v264;
  v255 = v74;
  v234 = v85;
  v230 = v79;
  v214 = v67;
  if (v87 == 1)
  {
    sub_8E80(v73, &qword_316208, &qword_268BD0);
    v243 = 0;
    v242 = 0;
    v239 = 0;
    v241 = 0;
    v240 = 0;
    v245 = 0;
  }

  else
  {
    v90 = *(v85 + 32);
    v243 = v82;
    v90(v82, v73, v74);
    (*(v85 + 16))(v79, v82, v74);
    sub_1C4000(v67);
    v91 = v231;
    sub_1CA824(v67, v231, type metadata accessor for FontConstants.Environment);
    v92 = v232;
    v93 = v88;
    (*(v89 + 104))(v232, enum case for Font.TextStyle.caption(_:), v88);
    v94 = enum case for Font.Design.rounded(_:);
    v95 = sub_2625C0();
    v96 = *(v95 - 8);
    v97 = v256;
    (*(v96 + 104))(v256, v94, v95);
    v98 = *(v96 + 56);
    v245 = 1;
    v98(v97, 0, 1, v95);
    sub_262680();
    sub_8E80(v97, &qword_318458, &unk_26B270);
    (*(v89 + 8))(v92, v93);
    v99 = sub_2625A0();

    sub_1CA7C4(v91);
    sub_30CC(v244, &v269);
    v100 = sub_260BB0();
    v102 = v101;
    v103 = objc_allocWithZone(type metadata accessor for BooksHTMLConverter());

    v104 = sub_19C6C8(v100, v102, v99);
    [*&v104[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser] parse];
    v105 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_currentString;
    swift_beginAccess();
    (v257[2])(v237, &v104[v105], v238);

    v106 = sub_2628D0();
    v108 = v107;
    LOBYTE(v102) = v109;

    sub_3080(&v269);
    v242 = *(v234 + 8);
    v110 = v255;
    v242(v79, v255);
    _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
    v111 = sub_2627E0();
    v113 = v112;
    LODWORD(v241) = v114;
    v116 = v115;

    sub_39DBC(v106, v108, v102 & 1);
    a2 = v259;

    v242(v243, v110);
    KeyPath = swift_getKeyPath();
    v243 = v111;
    v242 = v113;
    v239 = v241 & 1;
    sub_43B58(v111, v113, v239);
    v241 = v116;

    v240 = KeyPath;
  }

  v118 = v236;
  v224 = *(a2 + *(v236 + 48));
  if (v224)
  {
    v119 = 1;
    v120 = v258;
    v121 = v264;
    v122 = v257;
    v123 = v256;
    v124 = v230;
    v125 = v268;
  }

  else
  {
    v126 = a2;
    v127 = v249;
    sub_1C9CFC(v126, v249);
    v128 = (*(v247 + 80) + 16) & ~*(v247 + 80);
    v129 = swift_allocObject();
    sub_1CA824(v127, v129 + v128, type metadata accessor for ShelfHeaderView);
    sub_2EF0(&qword_3243B0, &qword_284D78);
    sub_260A70();
    sub_260A50();
    sub_1CA8A4();
    sub_1CAAD0(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
    sub_1CAAD0(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
    sub_260A80();
    v130 = v212;
    sub_1C4000(v212);
    sub_1CA824(v130, v227, type metadata accessor for FontConstants.Environment);
    v121 = v264;
    v120 = v258;
    (*(v264 + 104))(v228, enum case for Font.TextStyle.title2(_:), v258);
    if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
    {
      v131 = sub_2625C0();
      v132 = v213;
      (*(*(v131 - 8) + 56))(v213, 1, 1, v131);
    }

    else
    {
      v133 = enum case for Font.Design.serif (_:);
      v134 = sub_2625C0();
      v135 = *(v134 - 8);
      v132 = v213;
      (*(v135 + 104))(v213, v133, v134);
      (*(v135 + 56))(v132, 0, 1, v134);
    }

    v122 = v257;
    v123 = v256;
    v124 = v230;
    v136 = v228;
    sub_262680();
    sub_8E80(v132, &qword_318458, &unk_26B270);
    (*(v121 + 8))(v136, v120);
    v137 = sub_2625A0();

    sub_1CA7C4(v227);
    v138 = swift_getKeyPath();
    v139 = v216;
    (*(v252 + 32))(v216, v235, v253);
    v140 = &v139[*(v266 + 36)];
    *v140 = v138;
    v140[1] = v137;
    v141 = v139;
    v142 = v215;
    sub_22148(v141, v215, &qword_324220, &qword_284B48);
    v143 = v142;
    v125 = v268;
    sub_22148(v143, v268, &qword_324220, &qword_284B48);
    v119 = 0;
    a2 = v259;
  }

  v144 = *(v267 + 56);
  v267 += 56;
  v257 = v144;
  (v144)(v125, v119, 1, v266);
  v145 = a2 + *(v118 + 44);
  v146 = v229;
  sub_8198(v145, v229, &qword_316208, &qword_268BD0);
  v147 = v255;
  if (v225(v146, 1, v255) == 1)
  {
    sub_8E80(v146, &qword_316208, &qword_268BD0);
    v148 = 1;
    v149 = v263;
    v150 = v251;
  }

  else
  {
    v151 = v234;
    v152 = v121;
    v153 = v233;
    (*(v234 + 32))();
    (*(v151 + 16))(v124, v153, v147);
    v154 = v214;
    sub_1C4000(v214);
    v155 = v124;
    v156 = v231;
    sub_1CA824(v154, v231, type metadata accessor for FontConstants.Environment);
    v157 = v232;
    (*(v152 + 104))(v232, enum case for Font.TextStyle.subheadline(_:), v120);
    v158 = sub_2625C0();
    (*(*(v158 - 8) + 56))(v123, 1, 1, v158);
    v159 = sub_262680();
    sub_8E80(v123, &qword_318458, &unk_26B270);
    (*(v152 + 8))(v157, v120);
    sub_1CA7C4(v156);
    sub_30CC(v244, &v269);
    v160 = v155;
    v161 = sub_260BB0();
    v163 = v162;
    objc_allocWithZone(type metadata accessor for BooksHTMLConverter());

    v164 = sub_19C6C8(v161, v163, v159);
    [*&v164[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser] parse];
    v165 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_currentString;
    swift_beginAccess();
    (v122[2])(v237, &v164[v165], v238);

    v166 = sub_2628D0();
    v168 = v167;
    v170 = v169;

    sub_3080(&v269);
    v171 = *(v151 + 8);
    v171(v160, v147);
    _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    v172 = sub_2627E0();
    v174 = v173;
    LODWORD(v244) = v175;
    v256 = v176;

    sub_39DBC(v166, v168, v170 & 1);

    v171(v233, v147);
    v150 = v251;
    v177 = *(v251 + 36);
    v178 = swift_getKeyPath();
    v179 = v218;
    *&v218[v177] = v178;
    sub_2EF0(&qword_3179C0, &qword_269D60);
    swift_storeEnumTagMultiPayload();
    *v179 = v172;
    *(v179 + 8) = v174;
    *(v179 + 16) = v244 & 1;
    *(v179 + 24) = v256;
    v149 = v263;
    sub_22148(v179, v263, &qword_3193A0, &unk_26CD40);
    v148 = 0;
  }

  v180 = 1;
  (*(v250 + 56))(v149, v148, 1, v150);
  if (v224)
  {
    v181 = v249;
    sub_1C9CFC(v259, v249);
    v182 = (*(v247 + 80) + 16) & ~*(v247 + 80);
    v183 = swift_allocObject();
    sub_1CA824(v181, v183 + v182, type metadata accessor for ShelfHeaderView);
    sub_2EF0(&qword_3243B0, &qword_284D78);
    sub_260A70();
    sub_260A50();
    sub_1CA8A4();
    sub_1CAAD0(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
    sub_1CAAD0(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
    v184 = v223;
    sub_260A80();
    v185 = v217;
    sub_1C4000(v217);
    sub_1CA824(v185, v246, type metadata accessor for FontConstants.Environment);
    v186 = v264;
    v187 = v219;
    (*(v264 + 104))(v219, enum case for Font.TextStyle.title2(_:), v258);
    if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
    {
      v188 = sub_2625C0();
      v189 = v220;
      (*(*(v188 - 8) + 56))(v220, 1, 1, v188);
    }

    else
    {
      v190 = enum case for Font.Design.serif (_:);
      v191 = sub_2625C0();
      v192 = *(v191 - 8);
      v189 = v220;
      (*(v192 + 104))(v220, v190, v191);
      (*(v192 + 56))(v189, 0, 1, v191);
    }

    sub_262680();
    sub_8E80(v189, &qword_318458, &unk_26B270);
    (*(v186 + 8))(v187, v258);
    v193 = sub_2625A0();

    sub_1CA7C4(v246);
    v194 = swift_getKeyPath();
    v195 = v222;
    (*(v252 + 32))(v222, v184, v253);
    v196 = &v195[*(v266 + 36)];
    *v196 = v194;
    v196[1] = v193;
    v197 = v195;
    v198 = v221;
    sub_22148(v197, v221, &qword_324220, &qword_284B48);
    sub_22148(v198, v265, &qword_324220, &qword_284B48);
    v180 = 0;
  }

  v199 = v265;
  (v257)(v265, v180, 1, v266);
  v200 = v262;
  sub_8198(v268, v262, &qword_3243F8, &qword_284E30);
  v201 = v260;
  sub_8198(v149, v260, &qword_3243A0, &qword_284D40);
  sub_8198(v199, v261, &qword_3243F8, &qword_284E30);
  v202 = v254;
  v203 = v243;
  v204 = v242;
  *v254 = v243;
  v202[1] = v204;
  v205 = v239;
  v206 = v241;
  v202[2] = v239;
  v202[3] = v206;
  v207 = v245;
  v202[4] = v240;
  v202[5] = v207;
  *(v202 + 48) = 0;
  v208 = sub_2EF0(&qword_324400, &qword_284E38);
  sub_8198(v200, v202 + v208[12], &qword_3243F8, &qword_284E30);
  sub_8198(v201, v202 + v208[16], &qword_3243A0, &qword_284D40);
  v209 = v261;
  sub_8198(v261, v202 + v208[20], &qword_3243F8, &qword_284E30);
  sub_15C948(v203, v204, v205, v206);
  sub_15C998(v203, v204, v205, v206);
  sub_8E80(v265, &qword_3243F8, &qword_284E30);
  sub_8E80(v263, &qword_3243A0, &qword_284D40);
  sub_8E80(v268, &qword_3243F8, &qword_284E30);
  sub_8E80(v209, &qword_3243F8, &qword_284E30);
  sub_8E80(v260, &qword_3243A0, &qword_284D40);
  sub_8E80(v262, &qword_3243F8, &qword_284E30);
  return sub_15C998(v203, v204, v205, v206);
}

uint64_t sub_1C9288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v62 = a3;
  v63 = a2;
  v53 = a1;
  v61 = sub_2616C0();
  v59 = *(v61 - 8);
  v5 = *(v59 + 64);
  __chkstk_darwin(v61);
  v55 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_260BD0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_2EF0(&qword_3193A0, &unk_26CD40);
  v12 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v14 = &v53 - v13;
  v15 = sub_2EF0(&qword_3243D8, &qword_284D88);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v57 = &v53 - v17;
  v18 = sub_2EF0(&qword_3243C8, &qword_284D80);
  v19 = *(v18 - 8);
  v60 = v18 - 8;
  v20 = *(v19 + 64);
  __chkstk_darwin(v18 - 8);
  v58 = &v53 - v21;
  v22 = type metadata accessor for ShelfHeaderView();
  v54 = *(v22 + 40);
  (*(v8 + 16))(v11, v3 + v54, v7);
  sub_30CC(a1, v64);
  v23 = sub_2627B0();
  v25 = v24;
  v27 = v26;
  LODWORD(v64[0]) = sub_262120();
  v28 = sub_2627F0();
  v30 = v29;
  LOBYTE(v3) = v31;
  sub_39DBC(v23, v25, v27 & 1);

  sub_8198(v63 + *(v22 + 56), v64, &qword_315D38, &unk_266E30);
  LOBYTE(v25) = v64[3] != 0;
  sub_8E80(v64, &qword_315D38, &unk_266E30);
  v32 = v55;
  sub_1C41EC(v55);
  v33 = Text.withTrailingForwardChevron(_:layoutDirection:)(v25, v32, v28, v30, v3 & 1);
  v35 = v34;
  LOBYTE(v25) = v36;
  v38 = v37;
  sub_39DBC(v28, v30, v3 & 1);

  (*(v59 + 8))(v32, v61);
  v39 = *(v56 + 36);
  *&v14[v39] = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  *v14 = v33;
  *(v14 + 1) = v35;
  v14[16] = v25 & 1;
  *(v14 + 3) = v38;
  v64[0] = sub_260BB0();
  v64[1] = v40;
  sub_65384();
  sub_10A84();
  v41 = v57;
  sub_262C00();

  sub_8E80(v14, &qword_3193A0, &unk_26CD40);
  v42 = sub_1C43F4();
  KeyPath = swift_getKeyPath();
  v44 = v58;
  sub_22148(v41, v58, &qword_3243D8, &qword_284D88);
  v45 = v44 + *(v60 + 44);
  *v45 = KeyPath;
  *(v45 + 8) = v42;
  *(v45 + 16) = 0;
  v46 = sub_2EF0(&qword_3243B0, &qword_284D78);
  v47 = v62;
  v48 = (v62 + *(v46 + 36));
  v49 = *(sub_2EF0(&qword_317530, &qword_26FCC0) + 28);
  v50 = enum case for Image.Scale.small(_:);
  v51 = sub_2630F0();
  (*(*(v51 - 8) + 104))(v48 + v49, v50, v51);
  *v48 = swift_getKeyPath();
  return sub_22148(v44, v47, &qword_3243C8, &qword_284D80);
}

unint64_t sub_1C97F8()
{
  result = qword_3241C0;
  if (!qword_3241C0)
  {
    sub_2F9C(&qword_324198, &qword_284B00);
    sub_8E38(&qword_3241C8, &qword_3241D0, &qword_284B20);
    sub_1C98B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3241C0);
  }

  return result;
}

unint64_t sub_1C98B0()
{
  result = qword_3241D8;
  if (!qword_3241D8)
  {
    sub_2F9C(&qword_3241E0, &qword_284B28);
    sub_1C9B90(&qword_3241E8, &qword_3241F0, &qword_284B30, sub_1C9994);
    sub_1C9B90(&qword_324238, &qword_324240, &qword_284B58, sub_1C9C14);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3241D8);
  }

  return result;
}

unint64_t sub_1C9994()
{
  result = qword_3241F8;
  if (!qword_3241F8)
  {
    sub_2F9C(&qword_324200, &qword_284B38);
    sub_1C9A20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3241F8);
  }

  return result;
}

unint64_t sub_1C9A20()
{
  result = qword_324208;
  if (!qword_324208)
  {
    sub_2F9C(&qword_324210, &qword_284B40);
    sub_1C9AAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324208);
  }

  return result;
}

unint64_t sub_1C9AAC()
{
  result = qword_324218;
  if (!qword_324218)
  {
    sub_2F9C(&qword_324220, &qword_284B48);
    sub_8E38(&qword_324228, &qword_324230, &qword_284B50);
    sub_8E38(&qword_317580, &qword_317588, &qword_26B7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324218);
  }

  return result;
}

uint64_t sub_1C9B90(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C9C44()
{
  result = qword_324258;
  if (!qword_324258)
  {
    sub_2F9C(&qword_324260, &qword_284B68);
    sub_8E38(&qword_324268, &qword_324270, &qword_284B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324258);
  }

  return result;
}

uint64_t sub_1C9CFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfHeaderView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C9D64@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfHeaderView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_1C4CD0(a1);
}

uint64_t sub_1C9E10(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_316F68, &unk_269C50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_31A748, &unk_26F940);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_13:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_14;
  }

  v14 = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_13;
  }

  v15 = sub_2EF0(&qword_319458, &unk_26CF30);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_13;
  }

  v16 = sub_2EF0(&qword_316208, &qword_268BD0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[9];
    goto LABEL_13;
  }

  v17 = sub_260BD0();
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[10];
    goto LABEL_13;
  }

  v19 = *(a1 + a3[13] + 24);
  v20 = (v19 >> 3) & 0xFFFFFF80 | (v19 >> 1);
  v21 = -2 - v20;
  if ((-2 - v20) < 0)
  {
    v21 = -1;
  }

  if (v20 > 0x80000000)
  {
    return (v21 + 1);
  }

  else
  {
    return 0;
  }
}

double sub_1CA0A4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_316F68, &unk_269C50);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_2EF0(&qword_31A748, &unk_26F940);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_2EF0(&qword_317BF8, &unk_26F930);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        v17 = sub_2EF0(&qword_319458, &unk_26CF30);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[8];
        }

        else
        {
          v18 = sub_2EF0(&qword_316208, &qword_268BD0);
          if (*(*(v18 - 8) + 84) == a3)
          {
            v10 = v18;
            v14 = *(v18 - 8);
            v15 = a4[9];
          }

          else
          {
            v19 = sub_260BD0();
            if (*(*(v19 - 8) + 84) != a3)
            {
              v21 = a1 + a4[13];
              *v21 = 0;
              *(v21 + 8) = 0;
              *(v21 + 16) = 0;
              *(v21 + 24) = (8 * ~a2) & 0x7FFFFFC00 | (2 * (~a2 & 0x7FLL));
              result = 0.0;
              *(v21 + 32) = 0u;
              *(v21 + 48) = 0u;
              *(v21 + 64) = 0u;
              *(v21 + 80) = 0u;
              *(v21 + 96) = 0u;
              *(v21 + 112) = 0u;
              return result;
            }

            v10 = v19;
            v14 = *(v19 - 8);
            v15 = a4[10];
          }
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  v11(v12, a2, a2, v10);
  return result;
}

void sub_1CA32C()
{
  sub_1CA58C(319, &qword_316FE8, type metadata accessor for ColorConstants, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_1CA58C(319, &qword_31A7B8, type metadata accessor for FontConstants, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_1CA58C(319, &qword_317C68, type metadata accessor for SizeConstants, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_3E7AC();
        if (v3 <= 0x3F)
        {
          sub_1CA58C(319, &qword_3194C8, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_1CA58C(319, &qword_31A8C8, &type metadata accessor for LocalizerRequest, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_260BD0();
              if (v6 <= 0x3F)
              {
                sub_1CA5F0(319, &qword_3242F0, &unk_3242F8, &qword_284C78);
                if (v7 <= 0x3F)
                {
                  sub_1CA5F0(319, &qword_316A28, &qword_316A30, &qword_2697B0);
                  if (v8 <= 0x3F)
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

void sub_1CA58C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1CA5F0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_2F9C(a3, a4);
    v5 = sub_264A60();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1CA648()
{
  result = qword_324350;
  if (!qword_324350)
  {
    sub_2F9C(&qword_324358, &qword_284C80);
    sub_2F9C(&qword_3241A8, &qword_284B10);
    sub_261760();
    sub_8E38(&qword_3241B8, &qword_3241A8, &qword_284B10);
    sub_1CAAD0(&qword_319400, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_1C97F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324350);
  }

  return result;
}

uint64_t sub_1CA7C4(uint64_t a1)
{
  v2 = type metadata accessor for FontConstants.SectionHeader(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA824(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1CA8A4()
{
  result = qword_3243B8;
  if (!qword_3243B8)
  {
    sub_2F9C(&qword_3243B0, &qword_284D78);
    sub_1CA95C();
    sub_8E38(&qword_317590, &qword_317530, &qword_26FCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3243B8);
  }

  return result;
}

unint64_t sub_1CA95C()
{
  result = qword_3243C0;
  if (!qword_3243C0)
  {
    sub_2F9C(&qword_3243C8, &qword_284D80);
    sub_1CAA14();
    sub_8E38(&qword_3189E0, &qword_3189E8, &unk_26F980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3243C0);
  }

  return result;
}

unint64_t sub_1CAA14()
{
  result = qword_3243D0;
  if (!qword_3243D0)
  {
    sub_2F9C(&qword_3243D8, &qword_284D88);
    sub_65384();
    sub_1CAAD0(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3243D0);
  }

  return result;
}

uint64_t sub_1CAAD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CAB48()
{
  v1 = type metadata accessor for ShelfHeaderView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v31 = *(*(v1 - 1) + 64);
  v3 = (v0 + v2);
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_261180();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
    v5 = *v3;
  }

  v6 = v3 + v1[5];
  sub_2EF0(&qword_316C08, &unk_26AEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v8 = sub_261690();
    (*(*(v8 - 8) + 8))(&v6[v7], v8);
  }

  else
  {
    v9 = *v6;
  }

  v10 = v3 + v1[6];
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v12 = sub_261690();
    (*(*(v12 - 8) + 8))(&v10[v11], v12);
  }

  else
  {
    v13 = *v10;
  }

  sub_4054(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v14 = v1[8];
  sub_2EF0(&qword_316C18, &unk_26F830);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_2616C0();
    (*(*(v15 - 8) + 8))(v3 + v14, v15);
  }

  else
  {
    v16 = *(v3 + v14);
  }

  v17 = v1[9];
  v18 = sub_260BD0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v21 = v20(v3 + v17, 1, v18);
  v22 = *(v19 + 8);
  if (!v21)
  {
    v22(v3 + v17, v18);
  }

  v22(v3 + v1[10], v18);
  v23 = v1[11];
  if (!v20(v3 + v23, 1, v18))
  {
    v22(v3 + v23, v18);
  }

  v24 = (v3 + v1[13]);
  v25 = v24[3];
  v26 = v24[6];
  v27 = v24[14];
  if ((v25 & 0xFFFFFFFFFFFFFCFELL) != 0x7FFFFFCFELL || v26 > 1 || v27 >= 0x100)
  {
    v30 = v24[15];
    sub_57200(*v24, v24[1], v24[2], v25, v24[4], v24[5], v26, v24[7], v24[8], v24[9], v24[10], v24[11], v24[12], v24[13], v27);
  }

  v28 = (v3 + v1[14]);
  if (v28[3])
  {
    sub_3080(v28);
  }

  return swift_deallocObject();
}

uint64_t sub_1CAF50(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ShelfHeaderView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t KeyedDecodingContainer.decode<A>(_:forKey:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v24 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v6 = *(v23 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v8 = &v19 - v7;
  v9 = type metadata accessor for _DecodeDefault_Wrapper();
  v10 = sub_264A60();
  v21 = *(v10 - 8);
  v22 = v10;
  v11 = *(v21 + 64);
  __chkstk_darwin(v10);
  v13 = &v19 - v12;
  swift_getWitnessTable();
  v14 = v25;
  result = sub_264DB0();
  if (!v14)
  {
    v20 = AssociatedTypeWitness;
    v16 = v24;
    v25 = 0;
    v17 = *(v9 - 8);
    v18 = *(v17 + 48);
    if (v18(v13, 1, v9) == 1)
    {
      (*(a2 + 24))(a1, a2);
      (*(v23 + 32))(v16, v8, v20);
      result = v18(v13, 1, v9);
      if (result != 1)
      {
        return (*(v21 + 8))(v13, v22);
      }
    }

    else
    {
      return (*(v17 + 32))(v16, v13, v9);
    }
  }

  return result;
}

uint64_t _DecodeDefault_Wrapper.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 32);

  return v5(a2, a1, AssociatedTypeWitness);
}

uint64_t _DecodeDefault_Wrapper.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 16);

  return v7(a2, v2, AssociatedTypeWitness);
}

uint64_t _DecodeDefault_Wrapper.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 40);

  return v7(v2, a1, AssociatedTypeWitness);
}

uint64_t _DecodeDefault_Wrapper.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  v7 = *(v25 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = &v22 - v8;
  v10 = type metadata accessor for _DecodeDefault_Wrapper();
  v28 = *(v10 - 8);
  v11 = *(v28 + 64);
  __chkstk_darwin(v10);
  v13 = &v22 - v12;
  v14 = a1[4];
  sub_2E18(a1, a1[3]);
  v15 = v31;
  sub_2650F0();
  if (v15)
  {
    v16 = a1;
  }

  else
  {
    v22 = v9;
    v23 = v13;
    v31 = a1;
    v17 = AssociatedTypeWitness;
    v24 = v10;
    sub_2E18(v29, v30);
    if (sub_264F40())
    {
      v18 = v23;
      (*(a3 + 24))(a2, a3);
      v19 = v28;
    }

    else
    {
      sub_2E18(v29, v30);
      swift_getAssociatedConformanceWitness();
      v20 = v22;
      sub_264F30();
      v19 = v28;
      v18 = v23;
      (*(v25 + 32))(v23, v20, v17);
    }

    sub_3080(v29);
    (*(v19 + 32))(v26, v18, v24);
    v16 = v31;
  }

  return sub_3080(v16);
}

uint64_t sub_1CB794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  return static _DecodeDefault_Wrapper<>.== infix(_:_:)();
}

uint64_t _DecodeDefault_Wrapper<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  swift_getAssociatedTypeWitness();

  return sub_264330();
}

Swift::Int _DecodeDefault_Wrapper<>.hashValue.getter(uint64_t a1)
{
  sub_265050();
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  sub_264330();
  return sub_265080();
}

Swift::Int sub_1CB888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_265050();
  _DecodeDefault_Wrapper<>.hash(into:)(v6, a2);
  return sub_265080();
}

uint64_t _DecodeDefault_Wrapper<>.encode(to:)(void *a1, uint64_t a2)
{
  v3 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_265130();
  sub_17450(v7, v7[3]);
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  sub_264F50();
  return sub_3080(v7);
}

uint64_t static DecodeDefault.Providers.UUIDString.defaultValue.getter()
{
  v0 = sub_2601E0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2601D0();
  v5 = sub_2601C0();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_1CBB04@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2601E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2601D0();
  v7 = sub_2601C0();
  v9 = v8;
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  a1[1] = v9;
  return result;
}

uint64_t sub_1CBC14(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CBC94(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v9)
  {
LABEL_23:
    v15 = *(v8 + 48);

    return v15(a1);
  }

  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v13 = ((a2 - v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v13 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v13 < 2)
    {
LABEL_22:
      if (v9)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_22;
  }

LABEL_11:
  v14 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v14 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v9 + (v10 | v14) + 1;
}

void sub_1CBE28(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (a3 <= v10)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (v10 < a2)
  {
    v13 = ~v10 + a2;
    if (v11 < 4)
    {
      v14 = (v13 >> (8 * v11)) + 1;
      if (v11)
      {
        v17 = v13 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v11] = v14;
              }

              else
              {
                *&a1[v11] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v11] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v11] = 0;
  }

  else if (v12)
  {
    a1[v11] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v9 + 56);

  v18(a1, a2);
}

uint64_t static ComponentKinds.table.getter()
{
  if (qword_315AC0 != -1)
  {
    swift_once();
  }

  sub_2EF0(&qword_324518, &qword_285000);
  sub_260D20();
  return v1;
}

uint64_t sub_1CC118()
{
  if (qword_315AC8 != -1)
  {
    swift_once();
  }

  v0 = qword_324510;
  sub_2EF0(&qword_324530, &qword_285098);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = v0;
  qword_324508 = v1;
}

unint64_t sub_1CC1B0()
{
  result = sub_F024(_swiftEmptyArrayStorage);
  qword_324510 = result;
  return result;
}

void static ComponentKinds.register<A>(_:name:)(uint64_t a1)
{
  if (qword_315AC0 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  v1 = qword_324508;
  __chkstk_darwin(a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1CC2B8((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1CC2B8(uint64_t *a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a1;
  result = sub_E308(v6, v3, v4, v5, isUniquelyReferenced_nonNull_native);
  *a1 = v10;
  return result;
}

unint64_t sub_1CC334()
{
  sub_1CC414();
  v0 = sub_263E90();
  v1 = sub_A8A44(v0);

  return v1;
}

unint64_t sub_1CC3B0()
{
  result = qword_324520;
  if (!qword_324520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324520);
  }

  return result;
}

unint64_t sub_1CC414()
{
  result = qword_324528;
  if (!qword_324528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324528);
  }

  return result;
}

__n128 PageUpdateInstruction.ShelfItemUpdateDescriptor.init(items:shelfID:paginationUpdate:dedupe:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = *a4;
  *(a6 + 40) = a4[1];
  v7 = a4[3];
  *(a6 + 56) = a4[2];
  *(a6 + 72) = v7;
  result = *(a4 + 57);
  *(a6 + 81) = result;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = v6;
  *(a6 + 97) = a5;
  return result;
}

uint64_t PageUpdateInstruction.ShelfItemRemovalDescriptor.init(itemIDs:shelfID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t PageUpdateInstruction.ShelfHeaderFooterUpdateDescriptor.init(model:shelfID:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_F7CC(a1, a4);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t PageUpdateAction.instructionIntent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v8[0] = *(a1 + 16);
  v8[1] = v5;
  type metadata accessor for PageUpdateInstruction();
  v6 = type metadata accessor for CodeAnyIntentModel();
  (*(*(v6 - 8) + 16))(v8, v2 + v4, v6);
  return sub_F7CC(v8, a2);
}

uint64_t sub_1CC5C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a1 + a2 - 32);
  v7 = *(a1 + a2 - 16);
  updated = type metadata accessor for PageUpdateAction();
  return PageUpdateAction.instructionIntent.getter(updated, a3);
}

uint64_t sub_1CC60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 32);
  sub_30CC(a1, v8);
  updated = type metadata accessor for PageUpdateAction();
  return sub_1CC668(v8, updated);
}

uint64_t sub_1CC668(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  sub_3080((v2 + v4));

  return sub_F7CC(a1, v2 + v4);
}

uint64_t PageUpdateAction.init(actionMetrics:instructionIntent:animated:clickData:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_263AF0();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  updated = type metadata accessor for PageUpdateAction();
  v12 = updated[14];
  type metadata accessor for PageUpdateInstruction();
  ListItemAccessoryMoreButton.init(assetInfo:)(a2, a5 + v12);
  *(a5 + updated[15]) = a3;
  return sub_129C04(a4, a5 + updated[13]);
}

uint64_t PageUpdateAction.init(actionMetrics:instruction:animated:clickData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v23[1] = a7;
  v23[2] = a8;
  v25 = a4;
  *&v26 = a5;
  v24 = a3;
  v23[0] = a9;
  *(&v26 + 1) = a6;
  v27 = a7;
  v28 = a8;
  updated = type metadata accessor for PageUpdateInstruction();
  v12 = *(updated - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(updated);
  v15 = v23 - v14;
  v16 = sub_263AF0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v21, a1, v16, v19);
  (*(v12 + 16))(v15, a2, updated);
  v28 = sub_263AA0();
  WitnessTable = swift_getWitnessTable();
  sub_10934(&v26);
  sub_263AB0();
  (*(v12 + 8))(a2, updated);
  (*(v17 + 8))(a1, v16);
  return PageUpdateAction.init(actionMetrics:instructionIntent:animated:clickData:)(v21, &v26, v24, v25, v23[0]);
}

uint64_t sub_1CCA0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461446B63696C63 && a2 == 0xE900000000000061 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000000294770 == a2 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646574616D696E61 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1CCB88(unsigned __int8 a1)
{
  v1 = 0x654D6E6F69746361;
  v2 = 0xD000000000000011;
  if (a1 != 2)
  {
    v2 = 0x646574616D696E61;
  }

  if (a1)
  {
    v1 = 0x7461446B63696C63;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

BOOL sub_1CCC18(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_8005C(*a1, *a2);
}

Swift::Int sub_1CCC30(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_80094(*v1);
}

void sub_1CCC40(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  sub_8006C(a1, *v2);
}

Swift::Int sub_1CCC50(uint64_t a1, void *a2)
{
  sub_265050();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_8006C(v9, *v2);
  return sub_265080();
}

unint64_t sub_1CCC9C(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_1CCB88(*v1);
}

uint64_t sub_1CCCAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_1CCA0C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1CCCE0@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_D40E4();
  *a2 = result;
  return result;
}

uint64_t sub_1CCD14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1CCD68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t PageUpdateAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a6;
  v11 = sub_2EF0(&qword_316B98, &unk_275840);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v49 = &v42 - v13;
  v52 = sub_263AF0();
  v47 = *(v52 - 8);
  v14 = *(v47 + 64);
  __chkstk_darwin(v52);
  v53 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v60 = a2;
  *(&v60 + 1) = a3;
  *&v61 = a4;
  *(&v61 + 1) = a5;
  type metadata accessor for PageUpdateAction.CodingKeys();
  swift_getWitnessTable();
  v54 = sub_264E20();
  v48 = *(v54 - 8);
  v16 = *(v48 + 64);
  __chkstk_darwin(v54);
  v18 = &v42 - v17;
  v45 = a5;
  v46 = a2;
  *&v60 = a2;
  *(&v60 + 1) = a3;
  v50 = a3;
  v51 = a4;
  *&v61 = a4;
  *(&v61 + 1) = a5;
  updated = type metadata accessor for PageUpdateAction();
  v20 = *(updated - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(updated);
  v23 = &v42 - v22;
  v24 = a1[4];
  sub_2E18(a1, a1[3]);
  v55 = v18;
  v25 = v63;
  sub_265120();
  if (v25)
  {
    return sub_3080(a1);
  }

  v26 = v49;
  v42 = v20;
  v27 = v48;
  v43 = v23;
  v63 = a1;
  v29 = v50;
  v28 = v51;
  LOBYTE(v60) = 0;
  sub_1CD424(&qword_31C5A0, &type metadata accessor for ActionMetrics);
  v30 = v52;
  sub_264DF0();
  (*(v47 + 32))(v43, v53, v30);
  sub_260620();
  LOBYTE(v60) = 1;
  sub_1CD424(&qword_31F0B8, &type metadata accessor for ClickData);
  sub_264DB0();
  sub_129C04(v26, &v43[*(updated + 52)]);
  v56 = v46;
  v57 = v29;
  v58 = v28;
  v59 = v45;
  type metadata accessor for PageUpdateInstruction();
  type metadata accessor for CodeAnyIntentModel();
  LOBYTE(v56) = 2;
  swift_getWitnessTable();
  sub_264DF0();
  v31 = updated;
  v32 = &v43[*(updated + 56)];
  v33 = v61;
  *v32 = v60;
  *(v32 + 1) = v33;
  *(v32 + 4) = v62;
  LOBYTE(v60) = 3;
  v34 = sub_264DD0();
  v35 = v63;
  v36 = v34;
  (*(v27 + 8))(v55, v54);
  v37 = v31;
  v38 = *(v31 + 60);
  v39 = v43;
  v43[v38] = v36 & 1;
  v40 = v42;
  (*(v42 + 16))(v44, v39, v37);
  sub_3080(v35);
  return (*(v40 + 8))(v39, v37);
}

uint64_t sub_1CD424(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PageUpdateInstruction.ShelfItemRemovalDescriptor.shelfID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t PageUpdateInstruction.ShelfItemUpdateDescriptor.paginationUpdate.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 72);
  v9 = *(v1 + 56);
  v10[0] = v3;
  *(v10 + 9) = *(v1 + 81);
  v4 = *(v10 + 9);
  v8[0] = *(v1 + 24);
  v5 = v8[0];
  v8[1] = v2;
  a1[2] = v9;
  a1[3] = v3;
  *(a1 + 57) = v4;
  *a1 = v5;
  a1[1] = v2;
  return sub_8198(v8, &v7, qword_31C918, &qword_273598);
}

BOOL PageUpdateInstruction.affectsPageVisibility.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v6, v4);
  v7 = swift_getEnumCaseMultiPayload() == 0;
  (*(v2 + 8))(v6, a1);
  return v7;
}

uint64_t PaginationUpdate.source.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return sub_1CD638(v2, v3, v4, v5, v6);
}

uint64_t sub_1CD638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {

    v5 = vars8;
  }
}

uint64_t PaginationUpdate.next.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 72);
  *(a1 + 32) = v6;
  return sub_1CD694(v2, v3, v4, v5, v6);
}

uint64_t sub_1CD694(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1CD638(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

__n128 PaginationUpdate.init(source:next:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  result = *a2;
  v5 = *(a2 + 16);
  *(a3 + 40) = *a2;
  v6 = *(a2 + 32);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 56) = v5;
  *(a3 + 72) = v6;
  return result;
}

uint64_t sub_1CD6D4()
{
  if (*v0)
  {
    result = 1954047342;
  }

  else
  {
    result = 0x656372756F73;
  }

  *v0;
  return result;
}

uint64_t sub_1CD704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v6 || (sub_264F10() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1954047342 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_264F10();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1CD7DC(uint64_t a1)
{
  v2 = sub_1CDA68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1CD818(uint64_t a1)
{
  v2 = sub_1CDA68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PaginationUpdate.encode(to:)(void *a1)
{
  v23 = sub_2EF0(&qword_324538, &qword_2850A0);
  v25 = *(v23 - 8);
  v3 = *(v25 + 64);
  __chkstk_darwin(v23);
  v5 = &v17 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);
  v20 = *(v1 + 48);
  v21 = v11;
  v12 = *(v1 + 56);
  v18 = *(v1 + 64);
  v19 = v12;
  v31 = *(v1 + 72);
  v13 = a1[3];
  v22 = a1[4];
  sub_2E18(a1, v13);
  sub_1CD638(v6, v7, v8, v9, v10);
  sub_1CDA68();
  v14 = v23;
  sub_265140();
  v26 = v6;
  v27 = v7;
  v28 = v8;
  v29 = v9;
  v30 = v10;
  v32 = 0;
  sub_1CDABC();
  v15 = v24;
  sub_264E90();
  sub_1CDB10(v26, v27, v28, v29, v30);
  if (!v15)
  {
    v26 = v21;
    v27 = v20;
    v28 = v19;
    v29 = v18;
    v30 = v31;
    v32 = 1;
    sub_1CD694(v21, v20, v19, v18, v31);
    sub_264E60();
    sub_1CDB50(v26, v27, v28, v29, v30);
  }

  return (*(v25 + 8))(v5, v14);
}

unint64_t sub_1CDA68()
{
  result = qword_324540;
  if (!qword_324540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324540);
  }

  return result;
}

unint64_t sub_1CDABC()
{
  result = qword_324548;
  if (!qword_324548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324548);
  }

  return result;
}

uint64_t sub_1CDB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {

    v5 = vars8;
  }
}

uint64_t sub_1CDB50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1CDB10(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t PaginationUpdate.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_2EF0(&qword_324550, &qword_2850A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_1CDA68();
  sub_265120();
  if (v2)
  {
    return sub_3080(a1);
  }

  v11 = a2;
  LOBYTE(v28[0]) = 0;
  sub_1CDEB4();
  sub_264DF0();
  v26 = v31;
  v27 = v32;
  v43 = v33;
  v44 = 1;
  sub_264DB0();
  (*(v6 + 8))(v9, v5);
  v25 = v39;
  v23 = *(&v40 + 1);
  v24 = v40;
  v22 = v41;
  v12 = v42;
  v13 = v26;
  v28[0] = v26;
  v14 = *(&v26 + 1);
  v15 = v27;
  v28[1] = v27;
  v16 = *(&v27 + 1);
  v17 = v43;
  LOBYTE(v29) = v43;
  *(&v29 + 1) = v39;
  *v30 = v40;
  *&v30[16] = v41;
  v30[24] = v42;
  v18 = v26;
  v19 = v27;
  *(v11 + 57) = *&v30[9];
  v20 = *v30;
  v11[2] = v29;
  v11[3] = v20;
  *v11 = v18;
  v11[1] = v19;
  sub_1CDF08(v28, &v31);
  sub_3080(a1);
  *&v31 = v13;
  *(&v31 + 1) = v14;
  *&v32 = v15;
  *(&v32 + 1) = v16;
  v33 = v17;
  v34 = v25;
  v35 = v24;
  v36 = v23;
  v37 = v22;
  v38 = v12;
  return sub_1CDF40(&v31);
}

unint64_t sub_1CDEB4()
{
  result = qword_324558;
  if (!qword_324558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324558);
  }

  return result;
}

uint64_t sub_1CDFA4()
{
  if (*v0)
  {
    result = 0x657373417478656ELL;
  }

  else
  {
    result = 0x666572487478656ELL;
  }

  *v0;
  return result;
}

uint64_t sub_1CDFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x666572487478656ELL && a2 == 0xE800000000000000;
  if (v6 || (sub_264F10() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657373417478656ELL && a2 == 0xEC00000073444974)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_264F10();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1CE0C8(uint64_t a1)
{
  v2 = sub_1D055C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1CE104(uint64_t a1)
{
  v2 = sub_1D055C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1CE14C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_264F10();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1CE1CC(uint64_t a1)
{
  v2 = sub_1D05B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1CE208(uint64_t a1)
{
  v2 = sub_1D05B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1CE244()
{
  if (*v0)
  {
    result = 0x65526F5468746170;
  }

  else
  {
    result = 12383;
  }

  *v0;
  return result;
}

uint64_t sub_1CE280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_264F10() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65526F5468746170 && a2 == 0xEF73656372756F73)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_264F10();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1CE35C(uint64_t a1)
{
  v2 = sub_1D0604();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1CE398(uint64_t a1)
{
  v2 = sub_1D0604();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PaginationInfo.encode(to:)(void *a1)
{
  v3 = sub_2EF0(&qword_324560, &qword_2850B0);
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  __chkstk_darwin(v3);
  v6 = v25 - v5;
  v7 = sub_2EF0(&qword_324568, &qword_2850B8);
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  __chkstk_darwin(v7);
  v10 = v25 - v9;
  v32 = sub_2EF0(&qword_324570, &unk_2850C0);
  v11 = *(v32 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v32);
  v14 = v25 - v13;
  v15 = v1[1];
  v30 = *v1;
  v16 = v1[3];
  v25[2] = v1[2];
  v25[3] = v15;
  v25[1] = v16;
  v17 = *(v1 + 32);
  v18 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_1D055C();
  sub_265140();
  if (v17)
  {
    v37 = 1;
    sub_1D05B0();
    v19 = v32;
    sub_264E30();
    v33 = v30;
    sub_2EF0(&qword_3160B0, &qword_267D40);
    sub_1D0658(&qword_324588);
    v20 = v29;
    sub_264E90();
    v21 = *(v28 + 8);
    v22 = v6;
LABEL_6:
    v21(v22, v20);
    return (*(v11 + 8))(v14, v19);
  }

  v36 = 0;
  sub_1D0604();
  v19 = v32;
  sub_264E30();
  v35 = 0;
  v23 = v31;
  v20 = v27;
  sub_264E70();
  if (!v23)
  {
    v34 = 1;
    sub_264E40();
    v21 = *(v26 + 8);
    v22 = v10;
    goto LABEL_6;
  }

  (*(v26 + 8))(v10, v20);
  return (*(v11 + 8))(v14, v19);
}

uint64_t PaginationInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_2EF0(&qword_324598, &qword_2850D0);
  v4 = *(v3 - 8);
  v44 = v3;
  v45 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v41 - v6;
  v8 = sub_2EF0(&qword_3245A0, &qword_2850D8);
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  __chkstk_darwin(v8);
  v11 = &v41 - v10;
  v12 = sub_2EF0(qword_3245A8, &unk_2850E0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v41 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v48 = a1;
  sub_2E18(a1, v17);
  sub_1D055C();
  v19 = v47;
  sub_265120();
  if (!v19)
  {
    v47 = v13;
    v20 = v46;
    v21 = sub_264E00();
    v22 = (2 * *(v21 + 16)) | 1;
    v49 = v21;
    v50 = v21 + 32;
    v51 = 0;
    v52 = v22;
    v23 = sub_AFA8();
    v24 = v12;
    if (v23 == 2 || v51 != v52 >> 1)
    {
      v26 = sub_264C10();
      swift_allocError();
      v28 = v27;
      v29 = *(sub_2EF0(&qword_315CD0, &qword_266E00) + 48);
      *v28 = &type metadata for PaginationInfo;
      sub_264D60();
      sub_264BF0();
      (*(*(v26 - 8) + 104))(v28, enum case for DecodingError.typeMismatch(_:), v26);
      swift_willThrow();
      (*(v47 + 8))(v16, v24);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v23;
      if (v23)
      {
        LOBYTE(v53) = 1;
        sub_1D05B0();
        sub_264D50();
        v25 = v47;
        sub_2EF0(&qword_3160B0, &qword_267D40);
        sub_1D0658(&qword_31C8E8);
        v32 = v44;
        sub_264DF0();
        (*(v45 + 8))(v7, v32);
        (*(v25 + 8))(v16, v24);
        swift_unknownObjectRelease();
        v33 = 0;
        v44 = 0;
        v34 = 0;
        v35 = v53;
      }

      else
      {
        LOBYTE(v53) = 0;
        sub_1D0604();
        sub_264D50();
        v31 = v47;
        v45 = v24;
        LOBYTE(v53) = 0;
        v36 = sub_264DC0();
        v33 = v37;
        v41 = v36;
        LOBYTE(v53) = 1;
        v44 = sub_264D70();
        v38 = (v31 + 8);
        v40 = v39;
        (*(v43 + 8))(v11, v8);
        (*v38)(v16, v45);
        swift_unknownObjectRelease();
        v34 = v40;
        v35 = v41;
      }

      *v20 = v35;
      *(v20 + 8) = v33;
      *(v20 + 16) = v44;
      *(v20 + 24) = v34;
      *(v20 + 32) = v42 & 1;
    }
  }

  return sub_3080(v48);
}

unint64_t PageUpdateAction.description.getter(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = 0xE000000000000000;
  sub_264BC0(46);

  v7 = 0xD000000000000011;
  v8 = 0x8000000000294600;
  v2 = *(a1 + 16);
  v9._countAndFlagsBits = sub_265260();
  sub_264530(v9);

  v10._countAndFlagsBits = 8236;
  v10._object = 0xE200000000000000;
  sub_264530(v10);
  v3 = *(a1 + 24);
  v11._countAndFlagsBits = sub_265260();
  sub_264530(v11);

  v12._countAndFlagsBits = 0xD000000000000015;
  v12._object = 0x8000000000294620;
  sub_264530(v12);
  PageUpdateAction.instructionIntent.getter(a1, v6);
  sub_2E18(v6, v6[3]);
  sub_2638A0();
  sub_2E18(v5, v5[3]);
  v13._countAndFlagsBits = sub_2638C0();
  sub_264530(v13);

  sub_3080(v5);
  sub_3080(v6);
  return v7;
}

unint64_t PageUpdateInstruction.description.getter(uint64_t a1)
{
  v3 = type metadata accessor for BooksAlertAction.Button(0);
  v110 = *(v3 - 8);
  v4 = *(v110 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = (&v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for BooksAlertAction(0);
  v8 = *(*(v7 - 1) + 64);
  __chkstk_darwin(v7);
  v10 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ToolbarItemType(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v107 - v17;
  v19 = *(*(a1 - 8) + 64);
  v21 = __chkstk_darwin(v20);
  v23 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23, v1, a1, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x646E6550706F7473;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v59 = *v23;
      *&v111 = 0;
      *(&v111 + 1) = 0xE000000000000000;
      sub_264BC0(17);
      v118._countAndFlagsBits = 0x6853646E65707061;
      v118._object = 0xEE00287365766C65;
      sub_264530(v118);
      *&v114 = v59;
      __chkstk_darwin(v60);
      v61 = &v107 - 6;
      *(&v107 - 4) = *(a1 + 16);
      *(&v107 - 3) = *(a1 + 24);
      v62 = *(a1 + 40);
      *(&v107 - 1) = v62;
      v63 = sub_2646F0();
      v64 = *(v62 + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      WitnessTable = swift_getWitnessTable();
      v68 = sub_1D16B8;
      goto LABEL_29;
    case 2:
      v69 = *v23;
      *&v111 = 0;
      *(&v111 + 1) = 0xE000000000000000;
      sub_264BC0(18);
      v119._countAndFlagsBits = 0x536563616C706572;
      v119._object = 0xEF287365766C6568;
      sub_264530(v119);
      *&v114 = v69;
      __chkstk_darwin(v70);
      v61 = &v107 - 6;
      *(&v107 - 4) = *(a1 + 16);
      *(&v107 - 3) = *(a1 + 24);
      v71 = *(a1 + 40);
      *(&v107 - 1) = v71;
      v63 = sub_2646F0();
      v72 = *(v71 + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      WitnessTable = swift_getWitnessTable();
      v68 = sub_1D0894;
LABEL_29:
      v73 = sub_1ABAD4(v68, v61, v63, AssociatedTypeWitness, &type metadata for Never, WitnessTable, &protocol witness table for Never, v67);

      *&v114 = v73;
      sub_2646F0();
      swift_getWitnessTable();
      sub_264EF0();
      goto LABEL_53;
    case 3:
      v30 = *v23;
      *&v111 = 0;
      *(&v111 + 1) = 0xE000000000000000;
      sub_264BC0(17);

      strcpy(&v111, "removeShelves(");
      HIBYTE(v111) = -18;
      v31 = sub_2646A0();
      v33 = v32;

      v117._countAndFlagsBits = v31;
      v117._object = v33;
      sub_264530(v117);
      goto LABEL_53;
    case 4:
      v76 = *v23;
      v77 = *(v23 + 1);
      *&v111 = 0;
      *(&v111 + 1) = 0xE000000000000000;
      sub_264BC0(24);

      *&v111 = 0xD000000000000015;
      *(&v111 + 1) = 0x80000000002946C0;
      goto LABEL_52;
    case 5:
      v86 = *v23;
      *&v114 = 0;
      *(&v114 + 1) = 0xE000000000000000;
      v87._countAndFlagsBits = 0x7449646E65707061;
      v87._object = 0xEC00000028736D65;
      goto LABEL_37;
    case 6:
      v74 = *v23;
      *&v114 = 0;
      *(&v114 + 1) = 0xE000000000000000;
      v120._countAndFlagsBits = 0x744965766F6D6572;
      v120._object = 0xEC00000028736D65;
      sub_264530(v120);
      v113 = v74;
      v75 = *(a1 + 32);
      v111 = *(a1 + 16);
      v112 = v75;
      type metadata accessor for PageUpdateInstruction.ShelfItemRemovalDescriptor();
      goto LABEL_38;
    case 7:
      v86 = *v23;
      *&v111 = 0;
      *(&v111 + 1) = 0xE000000000000000;
      sub_264BC0(16);
      v114 = v111;
      v87._countAndFlagsBits = 0x496563616C706572;
      v87._object = 0xED000028736D6574;
LABEL_37:
      sub_264530(v87);
      v113 = v86;
      v89 = *(a1 + 32);
      v111 = *(a1 + 16);
      v112 = v89;
      type metadata accessor for PageUpdateInstruction.ShelfItemUpdateDescriptor();
      goto LABEL_38;
    case 8:
      v37 = *v23;
      *&v111 = 0;
      *(&v111 + 1) = 0xE000000000000000;
      sub_264BC0(31);

      *&v111 = 0xD00000000000001CLL;
      *(&v111 + 1) = 0x80000000002946A0;
      v38 = *(v37 + 16);
      if (v38)
      {
        *&v114 = _swiftEmptyArrayStorage;
        sub_2DAA4(0, v38, 0);
        v39 = v37 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
        v40 = v114;
        v41 = *(v12 + 72);
        v109 = 0x800000000028FB90;
        v110 = v41;
        v107 = v37;
        v108 = 0x800000000028FB40;
        do
        {
          sub_1D079C(v39, v18, type metadata accessor for ToolbarItemType);
          sub_1D079C(v18, v15, type metadata accessor for ToolbarItemType);
          v42 = swift_getEnumCaseMultiPayload();
          if (v42 <= 2)
          {
            if (v42)
            {
              if (v42 == 1)
              {
                sub_1D0804(v15, type metadata accessor for ToolbarItemType);
                sub_1D0804(v18, type metadata accessor for ToolbarItemType);
                v47 = 0xD000000000000014;
                v48 = v108;
              }

              else
              {
                v49 = *(v15 + 1);

                v50 = sub_2EF0(&qword_31B7C8, &qword_270F70);
                v51 = v50[12];
                v52 = v50[16];
                v53 = *&v15[v50[20]];

                sub_1D0804(v18, type metadata accessor for ToolbarItemType);
                sub_3080(&v15[v52]);
                sub_8E80(&v15[v51], &qword_316960, &unk_2689F0);
                v47 = 0x69576E6F74747562;
                v48 = 0xEF656C7469546874;
              }
            }

            else
            {
              sub_1D0804(v15, type metadata accessor for ToolbarItemType);
              sub_1D0804(v18, type metadata accessor for ToolbarItemType);
              v47 = 0x4D747865746E6F63;
              v48 = 0xEB00000000756E65;
            }
          }

          else if (v42 > 4)
          {
            if (v42 == 5)
            {
              sub_1D0804(v15, type metadata accessor for ToolbarItemType);
              sub_1D0804(v18, type metadata accessor for ToolbarItemType);
              v48 = 0xE600000000000000;
              v47 = 0x70756B636F6CLL;
            }

            else
            {
              sub_1D0804(v18, type metadata accessor for ToolbarItemType);
              sub_3080(v15 + 1);
              v47 = 0xD000000000000016;
              v48 = v109;
            }
          }

          else if (v42 == 3)
          {
            v43 = *(v15 + 1);

            v44 = sub_2EF0(&qword_31B7C0, &unk_270F60);
            v45 = *(v44 + 48);
            v46 = *(v44 + 64);
            sub_1D0804(v18, type metadata accessor for ToolbarItemType);
            sub_3080(&v15[v46]);
            sub_8E80(&v15[v45], &qword_316960, &unk_2689F0);
            v47 = 0x69576E6F74747562;
            v48 = 0xEF6567616D496874;
          }

          else
          {
            v54 = *(sub_2EF0(&qword_31B7B8, &unk_277F10) + 48);
            sub_1D0804(v18, type metadata accessor for ToolbarItemType);
            sub_3080(&v15[v54]);
            v55 = sub_2610B0();
            (*(*(v55 - 8) + 8))(v15, v55);
            v47 = 0x75426D6574737973;
            v48 = 0xEC0000006E6F7474;
          }

          *&v114 = v40;
          v57 = *(v40 + 16);
          v56 = *(v40 + 24);
          if (v57 >= v56 >> 1)
          {
            sub_2DAA4((v56 > 1), v57 + 1, 1);
            v40 = v114;
          }

          *(v40 + 16) = v57 + 1;
          v58 = v40 + 16 * v57;
          *(v58 + 32) = v47;
          *(v58 + 40) = v48;
          v39 += v110;
          --v38;
        }

        while (v38);
      }

      v76 = sub_2646A0();
      v77 = v106;

LABEL_52:
      v130._countAndFlagsBits = v76;
      v130._object = v77;
      sub_264530(v130);
LABEL_53:

      v131._countAndFlagsBits = 41;
      v131._object = 0xE100000000000000;
      sub_264530(v131);
      return v111;
    case 9:
      v28 = *v23;
      *&v111 = 0;
      *(&v111 + 1) = 0xE000000000000000;
      sub_264BC0(23);
      v114 = v111;
      v29 = "replaceShelfHeaders(";
      goto LABEL_35;
    case 10:
      v28 = *v23;
      *&v111 = 0;
      *(&v111 + 1) = 0xE000000000000000;
      sub_264BC0(23);
      v114 = v111;
      v29 = "replaceShelfFooters(";
LABEL_35:
      v122._object = ((v29 - 32) | 0x8000000000000000);
      v122._countAndFlagsBits = 0xD000000000000014;
      sub_264530(v122);
      v113 = v28;
      v88 = *(a1 + 32);
      v111 = *(a1 + 16);
      v112 = v88;
      type metadata accessor for PageUpdateInstruction.ShelfHeaderFooterUpdateDescriptor();
LABEL_38:
      sub_2646F0();
      swift_getWitnessTable();
      sub_264EF0();

      v123._countAndFlagsBits = 41;
      v123._object = 0xE100000000000000;
      sub_264530(v123);
      return v114;
    case 11:
      sub_1D0720(v23, v10);
      *&v111 = 0;
      *(&v111 + 1) = 0xE000000000000000;
      sub_264BC0(50);

      *&v111 = 0xD000000000000014;
      *(&v111 + 1) = 0x8000000000294640;
      v34 = &v10[v7[5]];
      if (v34[1])
      {
        v35 = *v34;
        v36 = v34[1];
      }

      else
      {
        v35 = 0x6E776F6E6B6E753CLL;
        v36 = 0xE90000000000003ELL;
      }

      v124._countAndFlagsBits = v35;
      v124._object = v36;
      sub_264530(v124);

      v125._countAndFlagsBits = 0x67617373656D202CLL;
      v125._object = 0xEB00000000203A65;
      sub_264530(v125);
      v90 = &v10[v7[6]];
      if (v90[1])
      {
        v91 = *v90;
        v92 = v90[1];
      }

      else
      {
        v91 = 0x6E776F6E6B6E753CLL;
        v92 = 0xE90000000000003ELL;
      }

      v126._countAndFlagsBits = v91;
      v126._object = v92;
      sub_264530(v126);

      v127._countAndFlagsBits = 0x6E6F74747562202CLL;
      v127._object = 0xEB00000000203A73;
      sub_264530(v127);
      v93 = *&v10[v7[7]];
      v94 = *(v93 + 16);
      v95 = _swiftEmptyArrayStorage;
      if (v94)
      {
        v109 = v10;
        *&v114 = _swiftEmptyArrayStorage;
        sub_2DAA4(0, v94, 0);
        v95 = v114;
        v96 = v93 + ((*(v110 + 80) + 32) & ~*(v110 + 80));
        v97 = *(v110 + 72);
        do
        {
          sub_1D079C(v96, v6, type metadata accessor for BooksAlertAction.Button);
          v99 = *v6;
          v98 = v6[1];

          sub_1D0804(v6, type metadata accessor for BooksAlertAction.Button);
          *&v114 = v95;
          v101 = v95[2];
          v100 = v95[3];
          if (v101 >= v100 >> 1)
          {
            sub_2DAA4((v100 > 1), v101 + 1, 1);
            v95 = v114;
          }

          v95[2] = v101 + 1;
          v102 = &v95[2 * v101];
          v102[4] = v99;
          v102[5] = v98;
          v96 += v97;
          --v94;
        }

        while (v94);
        v10 = v109;
      }

      *&v114 = v95;
      sub_2EF0(&qword_3160B0, &qword_267D40);
      sub_DDE0();
      v103 = sub_264340();
      v105 = v104;

      v128._countAndFlagsBits = v103;
      v128._object = v105;
      sub_264530(v128);

      v129._countAndFlagsBits = 10528;
      v129._object = 0xE200000000000000;
      sub_264530(v129);
      v27 = v111;
      sub_1D0804(v10, type metadata accessor for BooksAlertAction);
      return v27;
    case 12:
      v78 = *v23;
      *&v111 = 0x646E756F706D6F63;
      *(&v111 + 1) = 0xE900000000000028;
      *&v114 = v78;
      __chkstk_darwin(0x646E6550706F7473);
      v79 = *(a1 + 32);
      *(&v107 - 2) = *(a1 + 16);
      *(&v107 - 1) = v79;
      v80 = sub_2646F0();
      v81 = swift_getWitnessTable();
      sub_1ABAD4(sub_1D06C4, (&v107 - 6), v80, &type metadata for String, &type metadata for Never, v81, &protocol witness table for Never, v82);

      v83 = sub_2646A0();
      v85 = v84;

      v121._countAndFlagsBits = v83;
      v121._object = v85;
      sub_264530(v121);

      return v111;
    case 13:
      return 0xD000000000000010;
    case 14:
      return result;
    default:
      sub_F7CC(v23, &v111);
      strcpy(&v114, "replacePage(");
      BYTE13(v114) = 0;
      HIWORD(v114) = -5120;
      sub_2E18(&v111, *(&v112 + 1));
      v115._countAndFlagsBits = sub_2638C0();
      sub_264530(v115);

      v116._countAndFlagsBits = 41;
      v116._object = 0xE100000000000000;
      sub_264530(v116);
      v27 = v114;
      sub_3080(&v111);
      return v27;
  }
}

uint64_t PageUpdateInstruction.ShelfItemUpdateDescriptor.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 5);
  v5 = *(v0 + 9);
  v16 = *(v0 + 7);
  v17[0] = v5;
  *(v17 + 9) = *(v0 + 81);
  v14 = *(v0 + 3);
  v15 = v4;
  v6 = *(v0 + 97);
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_8198(&v14, v10, qword_31C918, &qword_273598);
  sub_264BC0(81);
  v18._countAndFlagsBits = 0xD00000000000001ALL;
  v18._object = 0x80000000002946E0;
  sub_264530(v18);
  *&v10[0] = *(v2 + 16);
  v19._countAndFlagsBits = sub_264EB0();
  sub_264530(v19);

  v20._object = 0x8000000000294700;
  v20._countAndFlagsBits = 0xD000000000000011;
  sub_264530(v20);
  v21._countAndFlagsBits = v1;
  v21._object = v3;
  sub_264530(v21);
  v22._countAndFlagsBits = 0xD000000000000014;
  v22._object = 0x8000000000294720;
  sub_264530(v22);
  v10[2] = v16;
  v11[0] = v17[0];
  *(v11 + 9) = *(v17 + 9);
  v10[0] = v14;
  v10[1] = v15;
  sub_2EF0(qword_31C918, &qword_273598);
  v23._countAndFlagsBits = sub_2644A0();
  sub_264530(v23);

  v24._countAndFlagsBits = 0x657075646564202CLL;
  v24._object = 0xEA0000000000203ALL;
  sub_264530(v24);
  if (v6)
  {
    v7._countAndFlagsBits = 1702195828;
  }

  else
  {
    v7._countAndFlagsBits = 0x65736C6166;
  }

  if (v6)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  v7._object = v8;
  sub_264530(v7);

  return v12;
}

unint64_t PageUpdateInstruction.ShelfHeaderFooterUpdateDescriptor.description.getter()
{
  sub_264BC0(46);

  sub_264530(*(v0 + 40));
  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  sub_264530(v2);
  return 0xD00000000000002BLL;
}

uint64_t _s7BooksUI14PaginationInfoO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (v6)
  {
    if (*(a2 + 32))
    {
      v12 = sub_C887C(*a1, *a2);
      sub_1CD638(v8, v7, v9, v10, 1);
      sub_1CD638(v3, v2, v4, v5, 1);
      sub_1CDB10(v3, v2, v4, v5, 1);
      sub_1CDB10(v8, v7, v9, v10, 1);
      return v12 & 1;
    }

    goto LABEL_5;
  }

  if (*(a2 + 32))
  {
LABEL_5:
    sub_1CD638(*a2, *(a2 + 8), v9, v10, v11);
    sub_1CD638(v3, v2, v4, v5, v6);
    sub_1CDB10(v3, v2, v4, v5, v6);
    v14 = v8;
    v15 = v7;
    v16 = v9;
    v17 = v10;
    v18 = v11;
LABEL_6:
    sub_1CDB10(v14, v15, v16, v17, v18);
    return 0;
  }

  if (v3 != v8 || v2 != v7)
  {
    v20 = *a1;
    if ((sub_264F10() & 1) == 0)
    {
      sub_1CD638(v8, v7, v9, v10, 0);
      sub_1CD638(v3, v2, v4, v5, 0);
      sub_1CDB10(v3, v2, v4, v5, 0);
      v14 = v8;
      v15 = v7;
      v16 = v9;
      v17 = v10;
      v18 = 0;
      goto LABEL_6;
    }
  }

  if (v5)
  {
    if (!v10)
    {
      sub_1CD638(v8, v7, v9, 0, 0);
      sub_1CD638(v3, v2, v4, v5, 0);
      sub_1CDB10(v3, v2, v4, v5, 0);
      v14 = v8;
      v15 = v7;
      v16 = v9;
      v17 = 0;
      v18 = 0;
      goto LABEL_6;
    }

    if (v4 == v9 && v5 == v10)
    {
      sub_1CD638(v8, v7, v4, v5, 0);
      sub_1CD638(v3, v2, v4, v5, 0);
      sub_1CDB10(v3, v2, v4, v5, 0);
      sub_1CDB10(v8, v7, v4, v5, 0);
      return 1;
    }

    v21 = sub_264F10();
    sub_1CD638(v8, v7, v9, v10, 0);
    sub_1CD638(v3, v2, v4, v5, 0);
    sub_1CDB10(v3, v2, v4, v5, 0);
    sub_1CDB10(v8, v7, v9, v10, 0);
    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    sub_1CD638(v8, v7, v9, v10, 0);
    sub_1CD638(v3, v2, v4, 0, 0);

    sub_1CDB10(v3, v2, v4, 0, 0);
    sub_1CDB10(v8, v7, v9, v10, 0);
    if (v10)
    {

      return 0;
    }
  }

  return 1;
}

unint64_t sub_1D055C()
{
  result = qword_324578;
  if (!qword_324578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324578);
  }

  return result;
}

unint64_t sub_1D05B0()
{
  result = qword_324580;
  if (!qword_324580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324580);
  }

  return result;
}

unint64_t sub_1D0604()
{
  result = qword_324590;
  if (!qword_324590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324590);
  }

  return result;
}

uint64_t sub_1D0658(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(&qword_3160B0, &qword_267D40);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D06C4@<X0>(uint64_t *a1@<X8>)
{
  v6 = *(v1 + 16);
  v7 = *(v1 + 32);
  updated = type metadata accessor for PageUpdateInstruction();
  result = PageUpdateInstruction.description.getter(updated);
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1D0720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BooksAlertAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D079C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D0804(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D0894()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 40) + 16);
  return sub_264BD0();
}

uint64_t sub_1D08D0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

__n128 sub_1D0920(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

void sub_1D092C(uint64_t a1)
{
  sub_263AF0();
  if (v2 <= 0x3F)
  {
    sub_1D0E7C(319, &qword_31F140, &type metadata accessor for ClickData, &type metadata accessor for Optional);
    if (v3 <= 0x3F)
    {
      v5 = *(a1 + 16);
      v6 = *(a1 + 32);
      type metadata accessor for PageUpdateInstruction();
      type metadata accessor for CodeAnyIntentModel();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D0A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_263AF0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_316B98, &unk_275840);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 52);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 56) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1D0B5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_263AF0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2EF0(&qword_316B98, &unk_275840);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 56) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 52);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1D0C74(void *a1)
{
  v2 = a1[2];
  swift_getExtendedExistentialTypeMetadata();
  v3 = a1[3];
  sub_2646F0();
  if (v4 <= 0x3F)
  {
    sub_1D0E2C();
    if (v5 <= 0x3F)
    {
      v6 = a1[4];
      v7 = a1[5];
      type metadata accessor for PageUpdateInstruction.ShelfItemUpdateDescriptor();
      sub_2646F0();
      if (v8 <= 0x3F)
      {
        type metadata accessor for PageUpdateInstruction.ShelfItemRemovalDescriptor();
        sub_2646F0();
        if (v9 <= 0x3F)
        {
          sub_1D0E7C(319, qword_3246B8, type metadata accessor for ToolbarItemType, &type metadata accessor for Array);
          if (v10 <= 0x3F)
          {
            type metadata accessor for PageUpdateInstruction.ShelfHeaderFooterUpdateDescriptor();
            sub_2646F0();
            if (v11 <= 0x3F)
            {
              type metadata accessor for BooksAlertAction(319);
              if (v12 <= 0x3F)
              {
                sub_2646F0();
                if (v13 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D0E2C()
{
  if (!qword_3246B0)
  {
    v0 = sub_2646F0();
    if (!v1)
    {
      atomic_store(v0, &qword_3246B0);
    }
  }
}

void sub_1D0E7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D0EE0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D0F28(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1D0F3C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1D0F68(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 98))
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

uint64_t sub_1D0FB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 98) = 1;
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

    *(result + 98) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D100C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D1048()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1D1084(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D10A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 73))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D10F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D1158(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D11A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D1264()
{
  result = qword_3248C0;
  if (!qword_3248C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3248C0);
  }

  return result;
}

unint64_t sub_1D12BC()
{
  result = qword_3248C8;
  if (!qword_3248C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3248C8);
  }

  return result;
}

unint64_t sub_1D1314()
{
  result = qword_3248D0;
  if (!qword_3248D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3248D0);
  }

  return result;
}

unint64_t sub_1D136C()
{
  result = qword_3248D8;
  if (!qword_3248D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3248D8);
  }

  return result;
}

unint64_t sub_1D13C4()
{
  result = qword_3248E0;
  if (!qword_3248E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3248E0);
  }

  return result;
}

unint64_t sub_1D141C()
{
  result = qword_3248E8;
  if (!qword_3248E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3248E8);
  }

  return result;
}

unint64_t sub_1D1474()
{
  result = qword_3248F0;
  if (!qword_3248F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3248F0);
  }

  return result;
}

unint64_t sub_1D14CC()
{
  result = qword_3248F8;
  if (!qword_3248F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3248F8);
  }

  return result;
}

unint64_t sub_1D1524()
{
  result = qword_324900;
  if (!qword_324900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324900);
  }

  return result;
}

unint64_t sub_1D157C()
{
  result = qword_324908;
  if (!qword_324908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324908);
  }

  return result;
}

unint64_t sub_1D15D4()
{
  result = qword_324910;
  if (!qword_324910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324910);
  }

  return result;
}

unint64_t sub_1D162C()
{
  result = qword_324918;
  if (!qword_324918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324918);
  }

  return result;
}

uint64_t sub_1D16F0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = sub_261DE0();
    sub_1D5538();
    sub_264820();
    sub_264860();
    sub_264840();
    if (v4)
    {
      sub_264860();
    }

    else
    {
      v6 = v3;
    }

    result = sub_264820();
    if (v6 >= v5)
    {
      sub_264890();
      return (*(*(v2 - 8) + 8))(v1, v2);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1810(void *a1)
{
  v1 = a1[4];
  sub_2E18(a1, a1[3]);
  return sub_263B90();
}

Swift::Int sub_1D1858()
{
  sub_265050();
  VerticalMasonryCoverGridViewModel.GridStyle.hash(into:)();
  return sub_265080();
}

uint64_t ShelfCollage2.init(_:layout:spacing:itemContent:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v31 = a7;
  v32 = a8;
  v28 = a4;
  v29 = a5;
  v30 = a10;
  v15 = sub_260C50();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a6 - 8);
  v21 = *(v20 + 64);
  v23 = __chkstk_darwin(v22);
  v25 = &v27 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a2) = *a2;
  (*(v20 + 16))(v25, a1, a6, v23);
  (*(v16 + 16))(v19, a3, v15);
  if (a2)
  {
    sub_1D20FC(v25, v19, v28, v29, a6, v31, v32, v30, a9);
  }

  else
  {
    sub_1D1A90(v25, v19, v28, v29, a6, v31, v32, v30, a9);
  }

  (*(v16 + 8))(a3, v15);
  return (*(v20 + 8))(a1, a6);
}

uint64_t sub_1D1A90@<X0>(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v11 = a5;
  *v69 = a5;
  *&v69[8] = a6;
  *&v69[16] = a7;
  *&v69[24] = a8;
  v61 = type metadata accessor for ShelfCollage2();
  v16 = &a9[v61[16]];
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  v17 = *(sub_263850() + 16);

  v18 = v17 % 5;
  v19 = sub_263850();
  v20 = v18 == 2 || v18 == 4;
  v62 = a9;
  if (v20)
  {
    v21 = *(sub_263850() + 16);

    if (!v21)
    {
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v22 = v21 - 1;
  }

  else
  {
    v22 = *(sub_263850() + 16);
  }

  if (*(v19 + 16) >= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = *(v19 + 16);
  }

  v10 = _swiftEmptyArrayStorage;
  v59 = a3;
  v63 = a1;
  v64 = v11;
  if (v22 && v23)
  {
    v24 = v19 + 32;
    v78 = _swiftEmptyArrayStorage;
    sub_2DBA4(0, v23, 0);
    v25 = 0;
    v10 = _swiftEmptyArrayStorage;
    do
    {
      sub_30CC(v24, &v74 + 8);
      *&v73[0] = v25;
      sub_F7CC((&v74 + 8), v73 + 8);
      v72[0] = v73[0];
      v72[1] = v73[1];
      v72[2] = v73[2];
      sub_F7CC((v72 + 8), v69);
      *(&v70 + 1) = v25;
      v78 = v10;
      v27 = v10[2];
      v26 = v10[3];
      if (v27 >= v26 >> 1)
      {
        sub_2DBA4((v26 > 1), v27 + 1, 1);
        v10 = v78;
      }

      v10[2] = v27 + 1;
      v28 = &v10[6 * v27];
      v29 = *v69;
      v30 = v70;
      v28[3] = *&v69[16];
      v28[4] = v30;
      v28[2] = v29;
      ++v25;
      v24 += 40;
    }

    while (v23 != v25);
  }

  v9 = v10[2];
  if (!v9)
  {
    v31 = a4;

    a9 = _swiftEmptyArrayStorage;
    goto LABEL_62;
  }

  v66 = v10 + 4;
  sub_1D5500((v10 + 4), &v74);

  if (v9 == 1)
  {

    a1 = 0;
    a9 = _swiftEmptyArrayStorage;
    goto LABEL_55;
  }

  v58 = a4;
  a1 = 0;
  a4 = v69;
  v32 = (v10 + 10);
  a9 = _swiftEmptyArrayStorage;
  v33 = 1;
  v34 = 3;
  v65 = v9;
  do
  {
    if (v33 >= v10[2])
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    sub_1D5500(v32, &v69[8]);
    if (!v70)
    {
      break;
    }

    v35 = *&v69[24];
    v36 = v71;
    v37 = 5 * (v77 / 5);
    v38 = v77 % 5;
    if ((v77 % 5 - 1) < 2)
    {
      ++v37;
    }

    else if ((v38 - 3) >= 2)
    {
      if (v38)
      {
        v37 = -1;
      }
    }

    else
    {
      v39 = __OFADD__(v37, 3);
      v37 += 3;
      if (v39)
      {
        goto LABEL_66;
      }
    }

    v40 = 5 * (v71 / 5);
    v41 = v71 % 5;
    v67 = *&v69[8];
    v68 = v70;
    if ((v71 % 5 - 1) < 2)
    {
      ++v40;
      goto LABEL_41;
    }

    if ((v41 - 3) < 2)
    {
      v39 = __OFADD__(v40, 3);
      v40 += 3;
      if (v39)
      {
        goto LABEL_67;
      }

LABEL_41:
      if (v37 == v40)
      {
        goto LABEL_22;
      }

      goto LABEL_44;
    }

    if (!v41)
    {
      goto LABEL_41;
    }

    if (v37 == -1)
    {
LABEL_22:
      sub_1D48B8(&v74);
      goto LABEL_23;
    }

LABEL_44:
    if (v33 < a1)
    {
      goto LABEL_64;
    }

    v42 = v10[2];
    if (v42 < a1 || v42 < v33)
    {
      goto LABEL_65;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a9 = sub_E99B4(0, *(a9 + 2) + 1, 1, a9);
    }

    v44 = *(a9 + 2);
    v43 = *(a9 + 3);
    if (v44 >= v43 >> 1)
    {
      a9 = sub_E99B4((v43 > 1), v44 + 1, 1, a9);
    }

    sub_1D48B8(&v74);
    *(a9 + 2) = v44 + 1;
    v45 = &a9[32 * v44];
    v9 = v65;
    *(v45 + 4) = v10;
    *(v45 + 5) = v66;
    *(v45 + 6) = a1;
    *(v45 + 7) = v34;
    a1 = v33;
    a4 = v69;
LABEL_23:
    ++v33;
    v74 = v67;
    v76 = v68;
    v75 = v35;
    v77 = v36;
    v32 += 48;
    v34 += 2;
  }

  while (v9 != v33);

  if (a1 == v9)
  {

    sub_1D48B8(&v74);
    v31 = v58;
    goto LABEL_61;
  }

  a4 = v58;
  if (v9 < a1)
  {
    __break(1u);
    return result;
  }

LABEL_55:
  v47 = v10[2];
  if (v47 < a1 || v47 < v9)
  {
    goto LABEL_69;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_70:
    a9 = sub_E99B4(0, *(a9 + 2) + 1, 1, a9);
  }

  v49 = *(a9 + 2);
  v48 = *(a9 + 3);
  if (v49 >= v48 >> 1)
  {
    a9 = sub_E99B4((v48 > 1), v49 + 1, 1, a9);
  }

  v31 = a4;

  sub_1D48B8(&v74);
  *(a9 + 2) = v49 + 1;
  v50 = &a9[32 * v49];
  *(v50 + 4) = v10;
  *(v50 + 5) = v66;
  *(v50 + 6) = a1;
  *(v50 + 7) = (2 * v9) | 1;
LABEL_61:
  a1 = v63;
  v11 = v64;
LABEL_62:
  *v62 = a9;
  v51 = v61[13];
  v52 = sub_260C50();
  v53 = *(v52 - 8);
  (*(v53 + 16))(&v62[v51], a2, v52);
  v54 = ShelfModel.tallestCoverAspectRatio.getter();
  LOBYTE(v51) = v55;
  swift_unknownObjectRelease();
  (*(v53 + 8))(a2, v52);
  result = (*(*(v11 - 8) + 8))(a1, v11);
  v56 = &v62[v61[14]];
  *v56 = v54;
  v56[8] = v51 & 1;
  v57 = &v62[v61[15]];
  *v57 = v59;
  *(v57 + 1) = v31;
  return result;
}

uint64_t sub_1D20FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *&v48 = a5;
  *(&v48 + 1) = a6;
  *&v49 = a7;
  *(&v49 + 1) = a8;
  v40 = type metadata accessor for ShelfCollage2();
  v14 = a9 + v40[16];
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  v15 = sub_263850();
  v16 = *(sub_263850() + 16);

  v17 = v16 & 0x7FFFFFFFFFFFFFFELL;
  if (*(v15 + 16) >= (v16 & 0x7FFFFFFFFFFFFFFEuLL))
  {
    v18 = v16 & 0x7FFFFFFFFFFFFFFELL;
  }

  else
  {
    v18 = *(v15 + 16);
  }

  if (v17)
  {
    v19 = v18 == 0;
  }

  else
  {
    v19 = 1;
  }

  v41 = a4;
  if (v19)
  {
    swift_unknownObjectRelease();
    v22 = _swiftEmptyArrayStorage;
  }

  else
  {
    v38 = a9;
    v20 = v15 + 32;
    v51 = _swiftEmptyArrayStorage;
    sub_2DBA4(0, v18, 0);
    v21 = 0;
    v22 = _swiftEmptyArrayStorage;
    do
    {
      sub_30CC(v20, v47);
      v43 = v21;
      sub_F7CC(v47, &v44);
      *(&v42[0] + 1) = v44;
      v42[1] = v45;
      v42[2] = v46;
      sub_F7CC((v42 + 8), &v48);
      *(&v50 + 1) = v21;
      v51 = v22;
      v24 = v22[2];
      v23 = v22[3];
      if (v24 >= v23 >> 1)
      {
        sub_2DBA4((v23 > 1), v24 + 1, 1);
        v22 = v51;
      }

      v22[2] = v24 + 1;
      v25 = &v22[6 * v24];
      v26 = v48;
      v27 = v50;
      v25[3] = v49;
      v25[4] = v27;
      v25[2] = v26;
      ++v21;
      v20 += 40;
    }

    while (v18 != v21);
    swift_unknownObjectRelease();
    a9 = v38;
  }

  if (v22[2] >= 2uLL)
  {
    v28 = 2;
  }

  else
  {
    v28 = v22[2];
  }

  v29 = sub_C8AE8(v22, 2, v28);

  *a9 = v29;
  v30 = v40[13];
  v31 = sub_260C50();
  v32 = *(v31 - 8);
  (*(v32 + 16))(a9 + v30, a2, v31);
  v33 = ShelfModel.tallestCoverAspectRatio.getter();
  LOBYTE(v30) = v34;
  (*(v32 + 8))(a2, v31);
  result = (*(*(a5 - 8) + 8))(a1, a5);
  v36 = a9 + v40[14];
  *v36 = v33;
  v36[8] = v30 & 1;
  v37 = (a9 + v40[15]);
  *v37 = a3;
  v37[1] = v41;
  return result;
}

uint64_t ShelfCollage2.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v109 = sub_262320();
  v108 = *(v109 - 8);
  v3 = *(v108 + 64);
  __chkstk_darwin(v109);
  v107 = v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_262470();
  v104 = *(v106 - 8);
  v5 = *(v104 + 64);
  __chkstk_darwin(v106);
  v103 = v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v101 = v78 - v8;
  v111 = sub_262490();
  v105 = *(v111 - 8);
  v9 = *(v105 + 64);
  __chkstk_darwin(v111);
  v100 = v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_261FF0();
  v98 = *(v99 - 8);
  v11 = *(v98 + 64);
  __chkstk_darwin(v99);
  v97 = v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2F9C(&qword_324920, &unk_285D40);
  v14 = sub_2F9C(&qword_31D528, &qword_2755F0);
  v15 = sub_8E38(&qword_324928, &qword_31D528, &qword_2755F0);
  v124 = v14;
  v125 = &type metadata for AnyHashable;
  v127 = v15;
  v128 = &protocol witness table for AnyHashable;
  v94 = a1;
  v96 = *(a1 + 24);
  v126 = v96;
  sub_2633D0();
  v95 = *(a1 + 40);
  v123 = v95;
  swift_getWitnessTable();
  sub_2632E0();
  sub_2F9C(&qword_322DC8, &qword_285D50);
  sub_261730();
  sub_2F9C(&qword_319848, &unk_26D5A0);
  v16 = sub_261730();
  v17 = sub_8E38(qword_324930, &qword_324920, &unk_285D40);
  v124 = v13;
  v125 = &type metadata for Int;
  v126 = v16;
  v127 = v17;
  v128 = &protocol witness table for Int;
  sub_2633D0();
  WitnessTable = swift_getWitnessTable();
  v19 = sub_8E38(&qword_322DD0, &qword_322DC8, &qword_285D50);
  v121 = WitnessTable;
  v122 = v19;
  v20 = swift_getWitnessTable();
  v21 = sub_8E38(&qword_319850, &qword_319848, &unk_26D5A0);
  v119 = v20;
  v120 = v21;
  v118 = swift_getWitnessTable();
  swift_getWitnessTable();
  v22 = type metadata accessor for ColumnHStack();
  v23 = swift_getWitnessTable();
  v124 = v22;
  v125 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v124 = v22;
  v125 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = sub_261120();
  v80 = *(v24 - 8);
  v25 = *(v80 + 64);
  __chkstk_darwin(v24);
  v27 = v78 - v26;
  v28 = swift_getWitnessTable();
  v124 = v24;
  v125 = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v84 = *(v29 - 8);
  v30 = *(v84 + 64);
  __chkstk_darwin(v29);
  v79 = v78 - v31;
  v124 = v24;
  v125 = v28;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = v111;
  v124 = v29;
  v125 = v111;
  v126 = v32;
  v127 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v78[2] = v32;
  v34 = swift_getOpaqueTypeMetadata2();
  v82 = *(v34 - 8);
  v35 = *(v82 + 64);
  __chkstk_darwin(v34);
  v37 = v78 - v36;
  v124 = v29;
  v125 = v33;
  v126 = v32;
  v127 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v38 = swift_getOpaqueTypeConformance2();
  v124 = v34;
  v125 = v38;
  v39 = v38;
  v78[1] = v38;
  v40 = swift_getOpaqueTypeMetadata2();
  v91 = *(v40 - 8);
  v41 = *(v91 + 64);
  __chkstk_darwin(v40);
  v78[0] = v78 - v42;
  v124 = v34;
  v125 = v39;
  v43 = swift_getOpaqueTypeConformance2();
  v92 = v40;
  v124 = v40;
  v125 = v43;
  v86 = v43;
  v44 = swift_getOpaqueTypeMetadata2();
  v88 = *(v44 - 8);
  v45 = *(v88 + 64);
  __chkstk_darwin(v44);
  v85 = v78 - v46;
  v90 = v47;
  v48 = sub_261730();
  v93 = *(v48 - 8);
  v49 = *(v93 + 64);
  __chkstk_darwin(v48);
  v87 = v78 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v89 = v78 - v52;
  sub_2624C0();
  *&v53 = *(v94 + 16);
  *(&v53 + 1) = v96;
  *&v54 = *(v94 + 32);
  *(&v54 + 1) = v95;
  v113 = v54;
  v112 = v53;
  v114 = v102;
  sub_261130();
  v55 = v97;
  sub_261FE0();
  sub_2624C0();
  v56 = v79;
  sub_262C80();
  (*(v98 + 8))(v55, v99);
  (*(v80 + 8))(v27, v24);
  v57 = v101;
  sub_262450();
  v58 = v104;
  v59 = v106;
  (*(v104 + 16))(v103, v57, v106);
  v60 = v100;
  v61 = v78[0];
  sub_262480();
  (*(v58 + 8))(v57, v59);
  v62 = v111;
  sub_262C90();
  (*(v105 + 8))(v60, v62);
  (*(v84 + 8))(v56, v29);
  sub_262C40();
  v63 = v34;
  v64 = v107;
  (*(v82 + 8))(v37, v63);
  sub_262300();
  sub_2EF0(&qword_317310, &qword_2721D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269100;
  LOBYTE(v29) = sub_2624E0();
  *(inited + 32) = v29;
  v66 = sub_2624C0();
  *(inited + 33) = v66;
  sub_2624D0();
  sub_2624D0();
  if (sub_2624D0() != v29)
  {
    sub_2624D0();
  }

  sub_2624D0();
  if (sub_2624D0() != v66)
  {
    sub_2624D0();
  }

  v67 = v85;
  v68 = v92;
  v69 = v86;
  sub_262BA0();
  (*(v108 + 8))(v64, v109);
  (*(v91 + 8))(v61, v68);
  v117 = 1;
  v124 = v68;
  v125 = v69;
  v70 = swift_getOpaqueTypeConformance2();
  v71 = v87;
  v72 = v90;
  View.applyPageMargin(_:marginType:)(1, &v117);
  (*(v88 + 8))(v67, v72);
  v73 = sub_EFAB0();
  v115 = v70;
  v116 = v73;
  v74 = swift_getWitnessTable();
  v75 = v89;
  sub_1609C(v71, v48, v74);
  v76 = *(v93 + 8);
  v76(v71, v48);
  sub_1609C(v75, v48, v74);
  return (v76)(v75, v48);
}

uint64_t sub_1D3240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a5;
  v32 = a4;
  v29 = a3;
  v30 = a2;
  v31 = a1;
  v33 = a6;
  v7 = sub_2F9C(&qword_324920, &unk_285D40);
  sub_2F9C(&qword_31D528, &qword_2755F0);
  sub_8E38(&qword_324928, &qword_31D528, &qword_2755F0);
  sub_2633D0();
  v44 = a5;
  swift_getWitnessTable();
  sub_2632E0();
  sub_2F9C(&qword_322DC8, &qword_285D50);
  sub_261730();
  sub_2F9C(&qword_319848, &unk_26D5A0);
  v45 = v7;
  v46 = &type metadata for Int;
  v47 = sub_261730();
  v48 = sub_8E38(qword_324930, &qword_324920, &unk_285D40);
  v49 = &protocol witness table for Int;
  v8 = sub_2633D0();
  WitnessTable = swift_getWitnessTable();
  v43 = sub_8E38(&qword_322DD0, &qword_322DC8, &qword_285D50);
  v40 = swift_getWitnessTable();
  v41 = sub_8E38(&qword_319850, &qword_319848, &unk_26D5A0);
  v39 = swift_getWitnessTable();
  v27[1] = v8;
  swift_getWitnessTable();
  v9 = type metadata accessor for ColumnHStack();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = swift_getWitnessTable();
  v45 = v9;
  v46 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = *(OpaqueTypeMetadata2 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v27 - v21;
  v23 = sub_261D20();
  v34 = v30;
  v35 = v29;
  v36 = v32;
  v37 = v28;
  v38 = v31;
  ColumnHStack.init(alignment:fillSinglePage:content:)(v23, 0, sub_1D5120, v13);
  sub_262C50();
  (*(v10 + 8))(v13, v9);
  v45 = v9;
  v46 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1609C(v19, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v25 = *(v16 + 8);
  v25(v19, OpaqueTypeMetadata2);
  sub_1609C(v22, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v25)(v22, OpaqueTypeMetadata2);
}

uint64_t sub_1D3774@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v54 = a2;
  v55 = a4;
  v57 = a6;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  v68 = a5;
  v42 = a5;
  v53 = type metadata accessor for ShelfCollage2();
  v9 = *(v53 - 8);
  v52 = *(v9 + 64);
  __chkstk_darwin(v53);
  v50 = &KeyPath - v10;
  v11 = sub_2EF0(&qword_324920, &unk_285D40);
  v49 = v11;
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v58 = &KeyPath - v13;
  v14 = sub_2F9C(&qword_31D528, &qword_2755F0);
  v15 = sub_8E38(&qword_324928, &qword_31D528, &qword_2755F0);
  v65 = v14;
  v66 = &type metadata for AnyHashable;
  v67 = a3;
  v68 = v15;
  v69 = &protocol witness table for AnyHashable;
  sub_2633D0();
  v64 = a5;
  v56 = &protocol conformance descriptor for <> ForEach<A, B, C>;
  swift_getWitnessTable();
  v44 = sub_2632E0();
  sub_2F9C(&qword_322DC8, &qword_285D50);
  v45 = sub_261730();
  sub_2F9C(&qword_319848, &unk_26D5A0);
  v16 = sub_261730();
  v47 = v16;
  v48 = sub_8E38(qword_324930, &qword_324920, &unk_285D40);
  v65 = v11;
  v66 = &type metadata for Int;
  v67 = v16;
  v68 = v48;
  v69 = &protocol witness table for Int;
  v17 = sub_2633D0();
  v51 = *(v17 - 8);
  v18 = *(v51 + 64);
  __chkstk_darwin(v17);
  v43 = &KeyPath - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v46 = &KeyPath - v21;
  v65 = *a1;

  sub_2EF0(&qword_324A40, &qword_285EA8);
  sub_8E38(&qword_324A48, &qword_324A40, &qword_285EA8);
  sub_260CC0();
  KeyPath = swift_getKeyPath();
  v22 = v50;
  v23 = v53;
  (*(v9 + 16))(v50, a1, v53);
  v24 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v25 = swift_allocObject();
  v26 = v54;
  *(v25 + 2) = v54;
  *(v25 + 3) = a3;
  v27 = a3;
  v28 = v55;
  v29 = v42;
  *(v25 + 4) = v55;
  *(v25 + 5) = v29;
  (*(v9 + 32))(&v25[v24], v22, v23);
  v30 = swift_allocObject();
  v30[2] = v26;
  v30[3] = v27;
  v30[4] = v28;
  v30[5] = v29;
  v30[6] = sub_1D5154;
  v30[7] = v25;
  WitnessTable = swift_getWitnessTable();
  v32 = sub_8E38(&qword_322DD0, &qword_322DC8, &qword_285D50);
  v62 = WitnessTable;
  v63 = v32;
  v33 = swift_getWitnessTable();
  v34 = sub_8E38(&qword_319850, &qword_319848, &unk_26D5A0);
  v60 = v33;
  v61 = v34;
  v40 = swift_getWitnessTable();
  v35 = v43;
  sub_2633B0();
  v59 = v40;
  v36 = swift_getWitnessTable();
  v37 = v46;
  sub_1609C(v35, v17, v36);
  v38 = *(v51 + 8);
  v38(v35, v17);
  sub_1609C(v37, v17, v36);
  return (v38)(v37, v17);
}

uint64_t sub_1D3DA8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X7>, uint64_t a8@<X8>, void *a9, uint64_t a10)
{
  v60 = a4;
  v57 = a3;
  v59 = a2;
  v58 = a1;
  v54 = a8;
  v74 = sub_2F9C(&qword_31D528, &qword_2755F0);
  v75 = &type metadata for AnyHashable;
  v76 = a7;
  v77 = sub_8E38(&qword_324928, &qword_31D528, &qword_2755F0);
  v78 = &protocol witness table for AnyHashable;
  v56 = sub_2633D0();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_2632E0();
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  __chkstk_darwin(v13);
  v16 = &v45 - v15;
  sub_2F9C(&qword_322DC8, &qword_285D50);
  v17 = sub_261730();
  v51 = *(v17 - 8);
  v18 = *(v51 + 64);
  __chkstk_darwin(v17);
  v47 = &v45 - v19;
  sub_2F9C(&qword_319848, &unk_26D5A0);
  v49 = v17;
  v20 = sub_261730();
  v53 = *(v20 - 8);
  v21 = *(v53 + 64);
  __chkstk_darwin(v20);
  v50 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v52 = &v45 - v24;
  v74 = a6;
  v75 = a7;
  v76 = a9;
  v77 = a10;
  v46 = type metadata accessor for ShelfCollage2();
  v25 = a5 + *(v46 + 52);
  sub_260C40();
  v61 = a6;
  v62 = a7;
  v63 = a9;
  v64 = a10;
  v65 = v58;
  v66 = v59;
  v26 = v57;
  v27 = v60;
  v67 = v57;
  v68 = v60;
  v59 = a5;
  v69 = a5;
  sub_261E50();
  result = sub_2632D0();
  v29 = __OFSUB__(v27 >> 1, v26);
  v30 = (v27 >> 1) - v26;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    v31 = 1;
    if (v30 == 1)
    {
      v32 = 2;
    }

    else
    {
      v32 = 1;
    }

    v33 = swift_getWitnessTable();
    v34 = v47;
    View.shelfGridColumnSpan(_:)(v32, v13, v33);
    (*(v48 + 8))(v16, v13);
    swift_getKeyPath();
    if (v30 == 1)
    {
      v35 = v59 + *(v46 + 56);
      v36 = *v35;
      v31 = *(v35 + 8);
    }

    else
    {
      v36 = 0;
    }

    v74 = v36;
    LOBYTE(v75) = v31;
    v37 = sub_8E38(&qword_322DD0, &qword_322DC8, &qword_285D50);
    v72 = v33;
    v73 = v37;
    v38 = v49;
    v39 = swift_getWitnessTable();
    v40 = v50;
    sub_262A90();

    (*(v51 + 8))(v34, v38);
    v41 = sub_8E38(&qword_319850, &qword_319848, &unk_26D5A0);
    v70 = v39;
    v71 = v41;
    v42 = swift_getWitnessTable();
    v43 = v52;
    sub_1609C(v40, v20, v42);
    v44 = *(v53 + 8);
    v44(v40, v20);
    sub_1609C(v43, v20, v42);
    return (v44)(v43, v20);
  }

  return result;
}
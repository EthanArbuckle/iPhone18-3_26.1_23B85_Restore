uint64_t sub_100001BE8()
{
  v1 = sub_100041D5C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = (__chkstk_darwin)();
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  sub_10002F5E8(v11 - v7);
  (*(v2 + 104))(v6, enum case for WidgetFamily.systemMedium(_:), v1);
  sub_100004CF4(&qword_100054720, &type metadata accessor for WidgetFamily);
  sub_100041F9C();
  sub_100041F9C();
  v9 = *(v2 + 8);
  v9(v6, v1);
  v9(v8, v1);
  if (v11[1] == v11[0] && *(*(v0 + *(type metadata accessor for MultipleContactsRowView() + 24)) + 16) == 4)
  {
    return sub_1000416BC();
  }

  else
  {
    return sub_1000416CC();
  }
}

BOOL sub_100001DB0()
{
  v1 = sub_100041D5C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  sub_10002F5E8(v11 - v7);
  (*(v2 + 104))(v6, enum case for WidgetFamily.systemMedium(_:), v1);
  sub_100004CF4(&qword_100054720, &type metadata accessor for WidgetFamily);
  sub_100041F9C();
  sub_100041F9C();
  v9 = *(v2 + 8);
  v9(v6, v1);
  v9(v8, v1);
  return v11[1] == v11[0] && *(*(v0 + *(type metadata accessor for MultipleContactsRowView() + 24)) + 16) == 4;
}

__n128 sub_100001F74@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v73 = a3;
  v74 = a1;
  v68 = sub_100041BAC();
  v67 = *(v68 - 8);
  v4 = *(v67 + 64);
  __chkstk_darwin(v68);
  v62 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003DC0(&qword_1000546B0, &qword_100043630);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v61 - v8;
  v10 = type metadata accessor for PersonEntryType(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v72 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v63 = &v61 - v14;
  v15 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v61 - v17;
  v64 = sub_1000415AC();
  v19 = *(v64 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v64);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100003DC0(&qword_1000546C0, &unk_100044D10);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = &v61 - v25;
  v66 = sub_100003DC0(&qword_1000546C8, &qword_100042AE0);
  v65 = *(v66 - 8);
  v27 = *(v65 + 64);
  __chkstk_darwin(v66);
  v29 = &v61 - v28;
  v70 = sub_100003DC0(&qword_100054698, &qword_100042AB8);
  v30 = *(*(v70 - 8) + 64);
  v31 = __chkstk_darwin(v70);
  v69 = &v61 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v71 = &v61 - v33;
  *v26 = sub_1000414FC();
  *(v26 + 1) = 0x4020000000000000;
  v26[16] = 0;
  v34 = &v26[*(sub_100003DC0(&qword_1000546D0, &qword_100042AE8) + 44)];
  v35 = a2;
  v36 = v74;
  sub_100002724(v35, v74, v34);
  sub_10004159C();
  sub_100004D80(&qword_1000546D8, &qword_1000546C0, &unk_100044D10);
  sub_10004186C();
  v37 = v22;
  v38 = v67;
  (*(v19 + 8))(v37, v64);
  v39 = v68;
  v40 = v26;
  v41 = v63;
  sub_1000049F8(v40, &qword_1000546C0, &unk_100044D10);
  sub_100004BC4(v36, v41, type metadata accessor for PersonEntryType);
  v42 = *(v38 + 48);
  if (v42(v41, 2, v39))
  {
    v43 = 1;
  }

  else
  {
    (*(v38 + 32))(v18, v41, v39);
    v43 = 0;
  }

  (*(v38 + 56))(v18, v43, 1, v39);
  sub_100041B4C();
  v44 = sub_10004083C();
  (*(*(v44 - 8) + 56))(v9, 0, 1, v44);
  v45 = v38;
  v46 = sub_10003B680(v9);
  sub_1000049F8(v9, &qword_1000546B0, &qword_100043630);
  sub_1000049F8(v18, &qword_1000546B8, &unk_100042AD0);
  (*(v65 + 8))(v29, v66);
  v75 = v46;
  v47 = v72;
  sub_100004BC4(v74, v72, type metadata accessor for PersonEntryType);
  if (v42(v47, 2, v39))
  {
    v48 = sub_100041F4C();
    v50 = v49;
  }

  else
  {
    v51 = v62;
    (*(v45 + 32))(v62, v47, v39);
    v48 = sub_100041B6C();
    v50 = v52;
    (*(v45 + 8))(v51, v39);
  }

  *&v76 = v48;
  *(&v76 + 1) = v50;
  sub_100004924();
  v53 = v69;
  sub_10004183C();

  sub_100040B7C();
  v54 = v71;
  sub_10004124C();

  sub_1000049F8(v53, &qword_100054698, &qword_100042AB8);
  sub_100041A9C();
  sub_10004125C();
  v55 = v54;
  v56 = v73;
  sub_100004C8C(v55, v73, &qword_100054698, &qword_100042AB8);
  v57 = v56 + *(sub_100003DC0(&qword_100054678, &qword_100042AB0) + 36);
  v58 = v81;
  *(v57 + 64) = v80;
  *(v57 + 80) = v58;
  *(v57 + 96) = v82;
  v59 = v77;
  *v57 = v76;
  *(v57 + 16) = v59;
  result = v79;
  *(v57 + 32) = v78;
  *(v57 + 48) = result;
  return result;
}

uint64_t sub_100002724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v196 = a2;
  v193 = a1;
  v185 = a3;
  v3 = sub_100003DC0(&qword_1000546E8, &unk_100042AF0);
  v183 = *(v3 - 8);
  v184 = v3;
  v4 = *(v183 + 64);
  __chkstk_darwin(v3);
  v182 = &v148 - v5;
  v177 = sub_100040E0C();
  v176 = *(v177 - 8);
  v6 = *(v176 + 64);
  __chkstk_darwin(v177);
  v178 = &v148 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for StatusAndNameView();
  v8 = *(*(v169 - 8) + 64);
  v9 = __chkstk_darwin(v169);
  v181 = &v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v148 - v12;
  __chkstk_darwin(v11);
  v180 = &v148 - v14;
  v189 = sub_100041CAC();
  v195 = *(v189 - 8);
  v15 = v195[8];
  v16 = __chkstk_darwin(v189);
  v168 = &v148 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v173 = &v148 - v18;
  v19 = sub_1000408CC();
  v191 = *(v19 - 8);
  v192 = v19;
  v20 = *(v191 + 64);
  __chkstk_darwin(v19);
  v190 = &v148 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v188 = &v148 - v24;
  v166 = sub_10004116C();
  v165 = *(v166 - 8);
  v25 = *(v165 + 64);
  __chkstk_darwin(v166);
  v164 = &v148 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100041BAC();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v27);
  v150 = &v148 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v149 = &v148 - v33;
  v34 = __chkstk_darwin(v32);
  v161 = &v148 - v35;
  v36 = __chkstk_darwin(v34);
  v160 = &v148 - v37;
  __chkstk_darwin(v36);
  v39 = &v148 - v38;
  v40 = sub_100003DC0(&qword_1000546F8, &qword_100042B00);
  v41 = *(*(v40 - 8) + 64);
  v42 = __chkstk_darwin(v40 - 8);
  v174 = &v148 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v167 = &v148 - v45;
  v46 = __chkstk_darwin(v44);
  v170 = &v148 - v47;
  __chkstk_darwin(v46);
  v186 = (&v148 - v48);
  v49 = type metadata accessor for AvatarView();
  v50 = *(*(v49 - 1) + 64);
  v51 = __chkstk_darwin(v49);
  v179 = &v148 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __chkstk_darwin(v51);
  v55 = &v148 - v54;
  __chkstk_darwin(v53);
  v175 = &v148 - v56;
  v57 = type metadata accessor for PersonEntryType(0);
  v58 = *(*(v57 - 8) + 64);
  v59 = __chkstk_darwin(v57 - 8);
  v172 = &v148 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __chkstk_darwin(v59);
  v171 = &v148 - v62;
  v63 = __chkstk_darwin(v61);
  v65 = &v148 - v64;
  v66 = __chkstk_darwin(v63);
  v68 = &v148 - v67;
  v69 = __chkstk_darwin(v66);
  v71 = &v148 - v70;
  __chkstk_darwin(v69);
  v73 = &v148 - v72;
  sub_100004BC4(v196, &v148 - v72, type metadata accessor for PersonEntryType);
  v187 = v28;
  v194 = *(v28 + 48);
  v74 = v194(v73, 2, v27);
  if (v74)
  {
    if (v74 != 1)
    {
      v75 = 1;
      v77 = v184;
      v76 = v185;
      v78 = v183;
      return (*(v78 + 56))(v76, v75, 1, v77);
    }
  }

  else
  {
    sub_100004C2C(v73, type metadata accessor for PersonEntryType);
  }

  sub_100004BC4(v196, v71, type metadata accessor for PersonEntryType);
  v79 = v194(v71, 2, v27);
  v158 = v13;
  if (v79)
  {
    v80 = 1;
    v81 = v189;
    v82 = v186;
  }

  else
  {
    v83 = v187;
    (*(v187 + 32))(v39, v71, v27);
    v82 = v186;
    sub_100041B7C();
    (*(v83 + 8))(v39, v27);
    v80 = 0;
    v81 = v189;
  }

  v84 = v195[7];
  v85 = v81;
  v163 = v195 + 7;
  v162 = v84;
  (v84)(v82, v80, 1);
  sub_100004BC4(v196, v68, type metadata accessor for PersonEntryType);
  if (v194(v68, 2, v27))
  {
    v151 = 0;
  }

  else
  {
    v86 = v187;
    v87 = v160;
    (*(v187 + 32))(v160, v68, v27);
    v88 = v164;
    sub_100041B8C();
    v89 = v86;
    v82 = v186;
    (*(v89 + 8))(v87, v27);
    v151 = sub_10004114C();
    (*(v165 + 8))(v88, v166);
  }

  v90 = type metadata accessor for MultipleContactsRowView();
  v91 = (v193 + *(v90 + 32));
  v157 = *v91;
  v156 = *(v91 + 8);
  sub_100004BC4(v196, v65, type metadata accessor for PersonEntryType);
  if (v194(v65, 2, v27))
  {
    v92 = sub_100041C6C();
    (*(*(v92 - 8) + 56))(v188, 1, 1, v92);
  }

  else
  {
    v93 = v187;
    v94 = v161;
    (*(v187 + 32))(v161, v65, v27);
    sub_100041B5C();
    v95 = v93;
    v82 = v186;
    (*(v95 + 8))(v94, v27);
  }

  v96 = v193;
  v155 = sub_100001DB0();
  (*(v191 + 16))(v190, v96 + *(v90 + 40), v192);
  sub_100040D9C();
  v154 = sub_100040D8C();
  v97 = v49[7];
  v98 = sub_100041C6C();
  v99 = *(*(v98 - 8) + 56);
  v153 = v97;
  v99(&v55[v97], 1, 1, v98);
  v152 = sub_100040D8C();
  v100 = &v55[v49[12]];
  KeyPath = swift_getKeyPath();
  *(v100 + 1) = 0;
  *(v100 + 2) = 0;
  *v100 = KeyPath;
  *(v100 + 12) = 0;
  v102 = v49[13];
  sub_100041B0C();
  *&v55[v102] = v103;
  v104 = &v55[v49[14]];
  *v104 = xmmword_100042940;
  *(v104 + 1) = xmmword_100042950;
  v105 = v49[15];
  *&v55[v105] = swift_getKeyPath();
  v159 = sub_100003DC0(&qword_100054700, &qword_100042B60);
  swift_storeEnumTagMultiPayload();
  v106 = v170;
  sub_100004988(v82, v170);
  v107 = v195;
  v108 = (v195 + 6);
  v109 = v195[6];
  v110 = v109(v106, 1, v85);
  v161 = v108;
  v160 = v109;
  if (v110 == 1)
  {
    v111 = v173;
    sub_100041B1C();
    sub_1000049F8(v82, &qword_1000546F8, &qword_100042B00);
    v112 = v111;
    if (v109(v106, 1, v85) != 1)
    {
      sub_1000049F8(v106, &qword_1000546F8, &qword_100042B00);
    }
  }

  else
  {
    sub_1000049F8(v82, &qword_1000546F8, &qword_100042B00);
    v112 = v173;
    (v107[4])(v173, v106, v85);
  }

  v113 = v49[5];
  v114 = &v55[v49[6]];
  v115 = v49[8];
  v116 = v195[4];
  v195 += 4;
  v186 = v116;
  v116(v55, v112, v85);
  *&v55[v113] = v151;
  *v114 = v157;
  v114[8] = v156;
  sub_100004A58(v188, &v55[v153]);

  *&v55[v115] = v154;
  v55[v49[9]] = v155;
  v55[v49[10]] = 0;
  (*(v191 + 32))(&v55[v49[11]], v190, v192);
  v117 = v175;
  sub_100004B5C(v55, v175, type metadata accessor for AvatarView);
  v118 = v171;
  sub_100004BC4(v196, v171, type metadata accessor for PersonEntryType);
  v119 = v194(v118, 2, v27);
  v120 = v158;
  if (v119)
  {
    v192 = 0;
  }

  else
  {
    v121 = v187;
    v122 = v149;
    (*(v187 + 32))(v149, v118, v27);
    v123 = v164;
    sub_100041B8C();
    (*(v121 + 8))(v122, v27);
    v192 = sub_10004114C();
    (*(v165 + 8))(v123, v166);
  }

  v124 = v169;
  v125 = v172;
  sub_100004BC4(v196, v172, type metadata accessor for PersonEntryType);
  v126 = v194(v125, 2, v27);
  v127 = v189;
  if (v126)
  {
    v128 = 1;
    v129 = v168;
    v130 = v167;
  }

  else
  {
    v131 = v187;
    v132 = v150;
    (*(v187 + 32))(v150, v125, v27);
    v130 = v167;
    sub_100041B7C();
    (*(v131 + 8))(v132, v27);
    v128 = 0;
    v129 = v168;
  }

  v162(v130, v128, 1, v127);
  v133 = sub_100001BE8();
  (*(v176 + 104))(v178, enum case for ContactFormatter.Style.shortName(_:), v177);
  sub_100041F4C();
  v198 = sub_100040E2C();
  v199 = &protocol witness table for ContactFormatter;
  sub_100004AC8(&v197);
  sub_100040E1C();
  v134 = v120 + v124[12];
  *v134 = swift_getKeyPath();
  *(v134 + 1) = 0;
  v134[16] = 0;
  v135 = v124[13];
  *(v120 + v135) = swift_getKeyPath();
  sub_100003DC0(&qword_100054708, &qword_100042D90);
  swift_storeEnumTagMultiPayload();
  v136 = v124[14];
  *(v120 + v136) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v137 = v124[15];
  *(v120 + v137) = swift_getKeyPath();
  sub_100003DC0(&qword_100054710, &unk_100042C00);
  swift_storeEnumTagMultiPayload();
  *v120 = v192;
  v138 = v174;
  sub_100004988(v130, v174);
  v139 = v160;
  if ((v160)(v138, 1, v127) == 1)
  {
    sub_100041B1C();
    sub_1000049F8(v130, &qword_1000546F8, &qword_100042B00);
    v140 = (v139)(v138, 1, v127) == 1;
    v77 = v184;
    v76 = v185;
    v78 = v183;
    if (!v140)
    {
      sub_1000049F8(v138, &qword_1000546F8, &qword_100042B00);
    }
  }

  else
  {
    sub_1000049F8(v130, &qword_1000546F8, &qword_100042B00);
    v186(v129, v138, v127);
    v77 = v184;
    v76 = v185;
    v78 = v183;
  }

  v186(v120 + v124[5], v129, v127);
  *(v120 + v124[6]) = v133;
  *(v120 + v124[7]) = 0x4008000000000000;
  sub_100004B44(&v197, v120 + v124[8]);
  *(v120 + v124[9]) = 2;
  *(v120 + v124[10]) = 1;
  *(v120 + v124[11]) = 0x7FF0000000000000;
  v141 = v120;
  v142 = v180;
  sub_100004B5C(v141, v180, type metadata accessor for StatusAndNameView);
  v143 = v179;
  sub_100004BC4(v117, v179, type metadata accessor for AvatarView);
  v144 = v181;
  sub_100004BC4(v142, v181, type metadata accessor for StatusAndNameView);
  v145 = v182;
  sub_100004BC4(v143, v182, type metadata accessor for AvatarView);
  v146 = sub_100003DC0(&qword_100054718, &unk_100044CF0);
  sub_100004BC4(v144, v145 + *(v146 + 48), type metadata accessor for StatusAndNameView);
  sub_100004C2C(v142, type metadata accessor for StatusAndNameView);
  sub_100004C2C(v117, type metadata accessor for AvatarView);
  sub_100004C2C(v144, type metadata accessor for StatusAndNameView);
  sub_100004C2C(v143, type metadata accessor for AvatarView);
  sub_100004C8C(v145, v76, &qword_1000546E8, &unk_100042AF0);
  v75 = 0;
  return (*(v78 + 56))(v76, v75, 1, v77);
}

uint64_t sub_100003AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 - 8;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = sub_10004149C();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  v8 = *(sub_100003DC0(&qword_100054660, &qword_100042A78) + 44);
  v13[1] = sub_10000F630(*(v2 + *(v4 + 32)));
  swift_getKeyPath();
  sub_100004BC4(v2, v7, type metadata accessor for MultipleContactsRowView);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_100004B5C(v7, v10 + v9, type metadata accessor for MultipleContactsRowView);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1000046B4;
  *(v11 + 24) = v10;
  sub_100003DC0(&qword_100054670, &qword_100042AA8);
  sub_100003DC0(&qword_100054678, &qword_100042AB0);
  sub_100004D80(&qword_100054680, &qword_100054670, &qword_100042AA8);
  sub_1000047DC();
  return sub_100041A2C();
}

uint64_t sub_100003CE0(__int128 *a1)
{
  v2 = *a1;
  if (sub_1000401D4(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeMetadata2();
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100003D54(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (sub_1000401D4(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeConformance2();
  }

  return v1;
}

uint64_t sub_100003DC0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003E08(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 sub_100003E54(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100003E60(uint64_t a1, int a2)
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

uint64_t sub_100003E80(uint64_t result, int a2, int a3)
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

__n128 sub_100003ED4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100003EE0(uint64_t a1, int a2)
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

uint64_t sub_100003F00(uint64_t result, int a2, int a3)
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

uint64_t sub_100003F8C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100003DC0(&qword_100054598, &unk_100042E50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000416DC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_1000408CC();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_100004120(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100003DC0(&qword_100054598, &unk_100042E50);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1000416DC();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v15 = sub_1000408CC();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[10];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t type metadata accessor for MultipleContactsRowView()
{
  result = qword_1000545F8;
  if (!qword_1000545F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000042EC()
{
  sub_100004444(319, &qword_100054608, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_1000416DC();
    if (v1 <= 0x3F)
    {
      sub_100004444(319, &qword_100054610, type metadata accessor for PersonEntryType, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_1000044A8(319, &qword_100054618, &type metadata for CGFloat, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1000408CC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100004444(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1000044A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100004514()
{
  v1 = type metadata accessor for MultipleContactsRowView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_100003DC0(&qword_100054668, &qword_100042AA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_100041D5C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v1[5];
  v9 = sub_1000416DC();
  (*(*(v9 - 8) + 8))(&v5[v8], v9);
  v10 = *&v5[v1[6]];

  v11 = v1[10];
  v12 = sub_1000408CC();
  (*(*(v12 - 8) + 8))(&v5[v11], v12);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

double sub_1000046B4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MultipleContactsRowView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  *&result = sub_100001F74(a1, v6, a2).n128_u64[0];
  return result;
}

uint64_t sub_10000473C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100004774(char *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = sub_100003DC0(&qword_1000546A8, &unk_100042AC0);
  return v4(v5, &a1[*(v6 + 48)]);
}

unint64_t sub_1000047DC()
{
  result = qword_100054688;
  if (!qword_100054688)
  {
    sub_100003E08(&qword_100054678, &qword_100042AB0);
    sub_100004868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054688);
  }

  return result;
}

unint64_t sub_100004868()
{
  result = qword_100054690;
  if (!qword_100054690)
  {
    sub_100003E08(&qword_100054698, &qword_100042AB8);
    sub_100004CF4(&qword_1000546A0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054690);
  }

  return result;
}

unint64_t sub_100004924()
{
  result = qword_1000546E0;
  if (!qword_1000546E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000546E0);
  }

  return result;
}

uint64_t sub_100004988(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003DC0(&qword_1000546F8, &qword_100042B00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000049F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003DC0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100004A58(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t *sub_100004AC8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100004B44(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100004B5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100004BC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100004C2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100004C8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003DC0(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100004CF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100004D80(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003E08(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100004DC8(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v105 = a4;
  v103 = a3;
  v111 = a1;
  v99 = sub_10004092C();
  isa = v99[-1].isa;
  v5 = isa[8];
  __chkstk_darwin(v99);
  v97 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MultipleContactsEntry(0);
  v8 = *(*(v7 - 1) + 64);
  __chkstk_darwin(v7);
  v10 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100041D5C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10004098C();
  v108 = *(v16 - 8);
  v109 = v16;
  v17 = *(v108 + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v102 = &v94 - v22;
  __chkstk_darwin(v21);
  v107 = sub_10004095C();
  v106 = *(v107 - 8);
  v23 = *(v106 + 64);
  v24 = __chkstk_darwin(v107);
  v101 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v25;
  __chkstk_darwin(v24);
  v27 = &v94 - v26;
  sub_100040ACC();
  v104 = v27;
  sub_10004093C();
  sub_100041E4C();
  v110 = v4;
  v28 = sub_100005970();
  v29 = v15;
  v30 = v28;
  (*(v12 + 8))(v29, v11);
  if (v30 >> 62)
  {
    goto LABEL_51;
  }

  v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v31)
  {
    v20 = 0;
    *&v112[0] = &_swiftEmptyArrayStorage;
    v32 = v30 & 0xC000000000000001;
    v33 = v30 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v32)
      {
        v34 = sub_10004218C();
      }

      else
      {
        if (v20 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v34 = v30[v20 + 4];
      }

      v7 = v34;
      v35 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      sub_100041FAC();
      if (*((*&v112[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v112[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v10 = *((*&v112[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_100041FDC();
      }

      sub_100041FFC();
      ++v20;
      if (v35 == v31)
      {
        v36 = *&v112[0];
        v37 = sub_100029284(&_swiftEmptyArrayStorage);
        v38 = __chkstk_darwin(v37);
        *(&v94 - 2) = v110;
        isa = sub_10000A8F8(v38, sub_10001162C, (&v94 - 4), v36);

        v39 = v102;
        sub_100040ACC();

        v40 = sub_10004097C();
        v20 = sub_1000420CC();

        v99 = v40;
        v41 = os_log_type_enabled(v40, v20);
        v111 = v31;
        if (v41)
        {
          LODWORD(v97) = v20;
          v42 = swift_slowAlloc();
          v20 = 0;
          v95 = swift_slowAlloc();
          *&v112[0] = v95;
          v96 = v42;
          *v42 = 136315138;
          v43 = &_swiftEmptyArrayStorage;
          while (1)
          {
            if (v32)
            {
              v44 = sub_10004218C();
            }

            else
            {
              if (v20 >= *(v33 + 16))
              {
                goto LABEL_50;
              }

              v44 = v30[v20 + 4];
            }

            v7 = v44;
            v45 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              break;
            }

            v46 = v30;
            v47 = [v44 identifier];
            v48 = sub_100041EFC();
            v50 = v49;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v43 = sub_10000E678(0, *(v43 + 2) + 1, 1, v43);
            }

            v10 = *(v43 + 2);
            v51 = *(v43 + 3);
            v7 = (v10 + 1);
            if (v10 >= v51 >> 1)
            {
              v43 = sub_10000E678((v51 > 1), v10 + 1, 1, v43);
            }

            *(v43 + 2) = v7;
            v52 = &v43[16 * v10];
            *(v52 + 4) = v48;
            *(v52 + 5) = v50;
            ++v20;
            v30 = v46;
            if (v45 == v111)
            {
              v67 = sub_100041FCC();
              v7 = v68;

              v69 = sub_10001BA5C(v67, v7, v112);

              v70 = v96;
              *(v96 + 1) = v69;
              v71 = v99;
              _os_log_impl(&_mh_execute_header, v99, v97, "get snapshot for multiple contacts widget with Ids %s", v70, 0xCu);
              v20 = v95;
              sub_100010DCC(v95);

              (*(v108 + 8))(v102, v109);
              goto LABEL_33;
            }
          }

LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          v31 = sub_1000421BC();
          goto LABEL_3;
        }

        (*(v108 + 8))(v39, v109);
LABEL_33:
        v72 = 0;
        v73 = &_swiftEmptyArrayStorage;
        while (1)
        {
          if (v32)
          {
            v74 = sub_10004218C();
          }

          else
          {
            if (v72 >= *(v33 + 16))
            {
              goto LABEL_48;
            }

            v74 = v30[v72 + 4];
          }

          v10 = v74;
          v75 = v72 + 1;
          if (__OFADD__(v72, 1))
          {
            break;
          }

          v76 = [v74 identifier];
          v20 = sub_100041EFC();
          v7 = v77;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v73 = sub_10000E678(0, *(v73 + 2) + 1, 1, v73);
          }

          v79 = *(v73 + 2);
          v78 = *(v73 + 3);
          v10 = v79 + 1;
          if (v79 >= v78 >> 1)
          {
            v73 = sub_10000E678((v78 > 1), v79 + 1, 1, v73);
          }

          *(v73 + 2) = v10;
          v80 = &v73[16 * v79];
          *(v80 + 4) = v20;
          *(v80 + 5) = v7;
          ++v72;
          if (v75 == v111)
          {
            v81 = v110;
            v82 = v110[13];
            v111 = v110[14];
            sub_100010A94(v110 + 10, v82);
            sub_100010AF4(v81, v112);
            v83 = v106;
            v84 = v101;
            v85 = v104;
            v86 = v107;
            (*(v106 + 16))(v101, v104, v107);
            v87 = (*(v83 + 80) + 184) & ~*(v83 + 80);
            v88 = swift_allocObject();
            *(v88 + 16) = v73;
            *(v88 + 24) = v30;
            v89 = v112[5];
            *(v88 + 96) = v112[4];
            *(v88 + 112) = v89;
            v90 = v112[7];
            *(v88 + 128) = v112[6];
            *(v88 + 144) = v90;
            v91 = v112[1];
            *(v88 + 32) = v112[0];
            *(v88 + 48) = v91;
            v92 = v112[3];
            *(v88 + 64) = v112[2];
            *(v88 + 80) = v92;
            v93 = v103;
            *(v88 + 160) = isa;
            *(v88 + 168) = v93;
            *(v88 + 176) = v105;
            (*(v83 + 32))(v88 + v87, v84, v86);

            sub_1000410BC();

            return (*(v83 + 8))(v85, v86);
          }
        }

LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  sub_100040ACC();
  v53 = sub_10004097C();
  v54 = sub_1000420CC();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&_mh_execute_header, v53, v54, "Could not get any contacts for Mutiple contacts widget", v55, 2u);
  }

  (*(v108 + 8))(v20, v109);
  v56 = v10 + v7[5];
  sub_10004088C();
  v57 = v7[8];
  v58 = sub_100041E3C();
  (*(*(v58 - 8) + 56))(v10 + v57, 1, 1, v58);
  *v10 = &_swiftEmptyArrayStorage;
  *(v10 + v7[6]) = 0;
  v59 = v10 + v7[7];
  sub_1000408BC();
  v103(v10);
  sub_1000111F8(v10, type metadata accessor for MultipleContactsEntry);
  v60 = v97;
  sub_10004091C();
  v61 = v104;
  v62 = sub_10004094C();
  v63 = sub_1000420DC();
  if (sub_1000420EC())
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    v65 = sub_10004090C();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v62, v63, v65, "getSnapshot", "no contacts", v64, 2u);
  }

  (isa[1])(v60, v99);
  return (*(v106 + 8))(v61, v107);
}

void *sub_100005970()
{
  v1 = v0;
  v2 = sub_10004098C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100041D3C();
  v7 = sub_10004099C();
  sub_100040ACC();

  v8 = sub_10004097C();
  v9 = sub_1000420CC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v20 = v1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    sub_100040BFC();
    v13 = sub_100041FCC();
    v15 = sub_10001BA5C(v13, v14, &v21);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "Configuration returned contacts: %s", v11, 0xCu);
    sub_100010DCC(v12);

    v1 = v20;
  }

  v16 = (*(v3 + 8))(v6, v2);
  __chkstk_darwin(v16);
  *(&v19 - 2) = v1;
  v17 = sub_100005BB0(sub_100011050, (&v19 - 4), v7);

  return v17;
}

void *sub_100005BB0(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v16 = &_swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000421BC())
  {
    v6 = 0;
    v11 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_10004218C();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
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

      v15 = v7;
      a1(&v14, &v15);
      if (v3)
      {

        return v11;
      }

      if (v14)
      {
        sub_100041FAC();
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v12 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_100041FDC();
        }

        sub_100041FFC();
        v11 = v16;
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

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100005D5C(uint64_t a1, char a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v130 = a8;
  v131 = a7;
  v150 = a6;
  v137 = a4;
  v11 = sub_10004092C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v132 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for MultipleContactsEntry(0);
  v15 = *(*(v128 - 8) + 64);
  __chkstk_darwin(v128);
  v129 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v149 = &v123 - v19;
  v148 = sub_100040E0C();
  v20 = *(v148 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v148);
  v147 = &v123 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10004116C();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v158 = &v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_100041BAC();
  v151 = *(v152 - 8);
  v26 = *(v151 + 64);
  __chkstk_darwin(v152);
  v157 = &v123 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_10004089C();
  v28 = *(v146 - 8);
  v29 = *(v28 + 8);
  __chkstk_darwin(v146);
  v145 = &v123 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_10004098C();
  v133 = *(v134 - 8);
  v31 = *(v133 + 64);
  v32 = __chkstk_darwin(v134);
  v125 = &v123 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v36 = &v123 - v35;
  __chkstk_darwin(v34);
  v38 = &v123 - v37;
  v127 = v11;
  v126 = v12;
  if (a2)
  {
    *&v163 = a1;
    swift_errorRetain();
    sub_100003DC0(&qword_100054A20, &unk_100043580);
    swift_willThrowTypedImpl();
    sub_100040ACC();
    swift_errorRetain();
    v39 = sub_10004097C();
    v40 = sub_1000420CC();
    sub_100010E18(a1, 1);
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v163 = v42;
      *v41 = 136315138;
      swift_getErrorValue();
      v43 = sub_10004225C();
      v45 = sub_10001BA5C(v43, v44, &v163);

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v39, v40, "got failure fetching statuses for contactID's: %s", v41, 0xCu);
      sub_100010DCC(v42);

      sub_100010E18(a1, 1);
    }

    else
    {
      sub_100010E18(a1, 1);
    }

    v98 = *(v133 + 8);
    v98(v36, v134);
    v60 = &_swiftEmptyArrayStorage;
    goto LABEL_49;
  }

  sub_100040ACC();

  v46 = sub_10004097C();
  v47 = sub_1000420CC();

  v48 = os_log_type_enabled(v46, v47);
  v153 = a1;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *&v163 = v50;
    *v49 = 136315138;
    v51 = sub_100041FCC();
    v53 = v28;
    v54 = v20;
    v55 = a5;
    v56 = sub_10001BA5C(v51, v52, &v163);

    *(v49 + 4) = v56;
    a5 = v55;
    v20 = v54;
    v28 = v53;
    _os_log_impl(&_mh_execute_header, v46, v47, "got statuses for contactIDs %s", v49, 0xCu);
    sub_100010DCC(v50);

    a1 = v153;
  }

  v124 = *(v133 + 8);
  v124(v38, v134);
  v57 = v137;
  if (v137 >> 62)
  {
    goto LABEL_46;
  }

  v58 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v58)
  {
LABEL_8:
    v59 = 0;
    v142 = a5[15];
    v144 = v57 & 0xC000000000000001;
    v136 = v57 & 0xFFFFFFFFFFFFFF8;
    v135 = (v57 + 32);
    v141 = (v28 + 8);
    v140 = enum case for ContactFormatter.Style.shortName(_:);
    v139 = (v20 + 104);
    v138 = v151 + 32;
    v60 = &_swiftEmptyArrayStorage;
    v57 = &qword_100054A30;
    v28 = &unk_1000430A0;
    a5 = &qword_100054A40;
    v143 = v58;
    while (1)
    {
      if (v144)
      {
        v61 = sub_10004218C();
        v62 = __OFADD__(v59, 1);
        v63 = v59 + 1;
        if (v62)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (v59 >= *(v136 + 16))
        {
          goto LABEL_45;
        }

        v61 = v135[v59];
        v62 = __OFADD__(v59, 1);
        v63 = v59 + 1;
        if (v62)
        {
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          v58 = sub_1000421BC();
          if (!v58)
          {
            goto LABEL_47;
          }

          goto LABEL_8;
        }
      }

      v154 = v63;
      v155 = v61;
      v64 = [v61 identifier];
      v65 = sub_100041EFC();
      v67 = v66;

      v68 = *(a1 + 16);
      v156 = v60;
      if (v68)
      {
        v69 = sub_1000291E8(v65, v67);
        v71 = v70;

        v72 = &_swiftEmptyArrayStorage;
        if (v71)
        {
          v72 = *(*(v153 + 56) + 8 * v69);
        }
      }

      else
      {

        v72 = &_swiftEmptyArrayStorage;
      }

      sub_100006DE8(v72, sub_100025AC0);

      v73 = v145;
      sub_10004088C();
      v74 = sub_100040F0C();

      (*v141)(v73, v146);
      v75 = *(v74 + 16);
      if (v75)
      {
        v76 = v74 + 32;
        v77 = &_swiftEmptyArrayStorage;
        do
        {
          sub_100010F30(v76, &v163);
          sub_100004B44(&v163, &v162);
          sub_100003DC0(&qword_100054A30, &unk_1000430A0);
          sub_100003DC0(&qword_100054A38, &unk_100043590);
          if (swift_dynamicCast())
          {
            if (*(&v160 + 1))
            {
              sub_100004B44(&v159, &v162);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v77 = sub_10000E95C(0, v77[2] + 1, 1, v77);
              }

              v79 = v77[2];
              v78 = v77[3];
              if (v79 >= v78 >> 1)
              {
                v77 = sub_10000E95C((v78 > 1), v79 + 1, 1, v77);
              }

              v77[2] = v79 + 1;
              sub_100004B44(&v162, &v77[5 * v79 + 4]);
              a5 = &qword_100054A40;
              goto LABEL_23;
            }
          }

          else
          {
            v161 = 0;
            v159 = 0u;
            v160 = 0u;
          }

          sub_1000049F8(&v159, &qword_100054A40, &qword_1000430B0);
LABEL_23:
          v76 += 40;
          --v75;
        }

        while (v75);
      }

      (*v139)(v147, v140, v148);
      sub_100041F4C();
      v164 = sub_100040E2C();
      v165 = &protocol witness table for ContactFormatter;
      sub_100004AC8(&v163);
      sub_100040E1C();
      v80 = v155;
      sub_10004113C();
      v81 = [v80 identifier];
      v82 = sub_100041EFC();
      v84 = v83;

      if (!*(v150 + 16))
      {
        break;
      }

      v85 = v82;
      v86 = v150;
      v87 = sub_1000291E8(v85, v84);
      v89 = v88;

      if ((v89 & 1) == 0)
      {
        goto LABEL_35;
      }

      v90 = *(v86 + 56);
      v91 = sub_100041C6C();
      v92 = *(v91 - 8);
      v93 = v92;
      v94 = v90 + *(v92 + 72) * v87;
      v95 = v149;
      (*(v92 + 16))(v149, v94, v91);
      (*(v93 + 56))(v95, 0, 1, v91);
LABEL_36:
      v59 = v154;
      sub_100041B9C();
      v60 = v156;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = sub_10000E784(0, v60[2] + 1, 1, v60);
      }

      v20 = v60[2];
      v97 = v60[3];
      if (v20 >= v97 >> 1)
      {
        v60 = sub_10000E784(v97 > 1, v20 + 1, 1, v60);
      }

      v60[2] = v20 + 1;
      (*(v151 + 32))(v60 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v20, v157, v152);
      a1 = v153;
      if (v59 == v143)
      {
        goto LABEL_48;
      }
    }

LABEL_35:
    v96 = sub_100041C6C();
    (*(*(v96 - 8) + 56))(v149, 1, 1, v96);
    goto LABEL_36;
  }

LABEL_47:
  v60 = &_swiftEmptyArrayStorage;
LABEL_48:
  v98 = v124;
LABEL_49:
  v99 = v125;
  sub_100040ACC();

  v100 = sub_10004097C();
  v101 = sub_1000420CC();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    *&v163 = v103;
    *v102 = 136315138;
    v104 = sub_100041FEC();
    v105 = v60;
    v107 = sub_10001BA5C(v104, v106, &v163);

    *(v102 + 4) = v107;

    _os_log_impl(&_mh_execute_header, v100, v101, "snapshot created for multiple widget %s", v102, 0xCu);
    sub_100010DCC(v103);

    v98(v99, v134);
    v108 = v132;
    v109 = v131;
  }

  else
  {

    v98(v99, v134);

    v108 = v132;
    v109 = v131;
    v105 = v60;
  }

  v110 = v129;
  v111 = v128;
  v112 = &v129[*(v128 + 20)];
  sub_10004088C();
  v113 = v111[8];
  v114 = sub_100041E3C();
  (*(*(v114 - 8) + 56))(&v110[v113], 1, 1, v114);
  *v110 = v105;
  v110[v111[6]] = 0;
  v115 = &v110[v111[7]];
  sub_1000408BC();
  v109(v110);
  sub_1000111F8(v110, type metadata accessor for MultipleContactsEntry);
  sub_10004091C();
  v116 = sub_10004094C();
  v117 = sub_1000420DC();
  v118 = sub_1000420EC();
  v119 = v127;
  if (v118)
  {
    v120 = swift_slowAlloc();
    *v120 = 0;
    v121 = sub_10004090C();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v116, v117, v121, "getSnapshot", "completed", v120, 2u);
  }

  return (*(v126 + 8))(v108, v119);
}

unint64_t *sub_100006DE8(uint64_t a1, void (*a2)(BOOL, uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    v12 = &_swiftEmptyArrayStorage;
    a2(0, v2, 0);
    v3 = &_swiftEmptyArrayStorage;
    v5 = a1 + 32;
    do
    {
      sub_100010F30(v5, v10);
      sub_100003DC0(&qword_100054A38, &unk_100043590);
      sub_100003DC0(&qword_100054A30, &unk_1000430A0);
      swift_dynamicCast();
      v12 = v3;
      v7 = v3[2];
      v6 = v3[3];
      if (v7 >= v6 >> 1)
      {
        a2(v6 > 1, v7 + 1, 1);
        v3 = v12;
      }

      v3[2] = v7 + 1;
      sub_100004B44(&v11, &v3[5 * v7 + 4]);
      v5 += 40;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_100006F34(id *a1, uint64_t a2, void (*a3)(char *), void (*a4)(char *))
{
  v139 = a4;
  v138 = a3;
  v146 = a1;
  v145 = sub_10004092C();
  v127 = *(v145 - 8);
  v5 = *(v127 + 64);
  __chkstk_darwin(v145);
  v126 = (&v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100041DDC();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v125 = (&v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_100003DC0(&qword_100054788, &unk_100042DD0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v121 = &v119 - v12;
  v124 = sub_100003DC0(&qword_1000549E0, &unk_100043040);
  v123 = *(v124 - 8);
  v13 = *(v123 + 64);
  __chkstk_darwin(v124);
  v122 = &v119 - v14;
  v133 = sub_100041E5C();
  v132 = *(v133 - 8);
  v15 = *(v132 + 64);
  __chkstk_darwin(v133);
  v130 = v16;
  v131 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100003DC0(&qword_1000549E8, &qword_100043520);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v135 = &v119 - v19;
  v20 = sub_100041D5C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10004089C();
  v26 = *(v25 - 1);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v119 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_10004098C();
  v140 = *(v141 - 8);
  v30 = v140[8];
  v31 = __chkstk_darwin(v141);
  v33 = &v119 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v31);
  v136 = &v119 - v35;
  __chkstk_darwin(v34);
  v143 = sub_10004095C();
  v137 = *(v143 - 8);
  v36 = *(v137 + 64);
  v37 = __chkstk_darwin(v143);
  v129 = &v119 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = v38;
  __chkstk_darwin(v37);
  v40 = &v119 - v39;
  sub_100040ACC();
  v142 = v40;
  sub_10004093C();
  sub_10004088C();
  sub_10004086C();
  v42 = v41;
  v120 = v26;
  (*(v26 + 8))(v29, v25);
  v134 = a2;
  sub_100041E4C();
  v43 = sub_100005970();
  (*(v21 + 8))(v24, v20);
  if (v43 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000421BC())
  {
    v45 = v136;
    sub_100040ACC();

    v29 = sub_10004097C();
    v46 = sub_1000420CC();

    LODWORD(v127) = v46;
    v47 = os_log_type_enabled(v29, v46);
    v48 = v43 & 0xC000000000000001;
    v145 = i;
    v146 = v43;
    if (v47)
    {
      v126 = v29;
      v25 = swift_slowAlloc();
      v33 = 0;
      v125 = swift_slowAlloc();
      *&v147[0] = v125;
      v49 = v25;
      *v25 = 136315138;
      v50 = v43 & 0xFFFFFFFFFFFFFF8;
      v43 = &_swiftEmptyArrayStorage;
      while (1)
      {
        if (v48)
        {
          v51 = sub_10004218C();
        }

        else
        {
          if (v33 >= *(v50 + 16))
          {
            goto LABEL_44;
          }

          v51 = v146[v33 + 4];
        }

        v29 = v51;
        v25 = (v33 + 1);
        if (__OFADD__(v33, 1))
        {
          break;
        }

        v52 = [v51 identifier];
        v53 = sub_100041EFC();
        v55 = v54;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_10000E678(0, *(v43 + 16) + 1, 1, v43);
        }

        v57 = *(v43 + 16);
        v56 = *(v43 + 24);
        v29 = v57 + 1;
        if (v57 >= v56 >> 1)
        {
          v43 = sub_10000E678((v56 > 1), v57 + 1, 1, v43);
        }

        *(v43 + 16) = v29;
        v58 = (v43 + 16 * v57);
        *(v58 + 4) = v53;
        *(v58 + 5) = v55;
        ++v33;
        if (v25 == v145)
        {
          v59 = sub_100041FCC();
          v29 = v60;

          v61 = sub_10001BA5C(v59, v29, v147);

          *(v49 + 4) = v61;
          v62 = v126;
          _os_log_impl(&_mh_execute_header, v126, v127, "get timeline for multiple contacts widget with Ids %s", v49, 0xCu);
          sub_100010DCC(v125);

          (v140[1])(v136, v141);
          v43 = v146;
          goto LABEL_17;
        }
      }
    }

    else
    {

      (v140[1])(v45, v141);
      v50 = v43 & 0xFFFFFFFFFFFFFF8;
LABEL_17:
      v63 = sub_10004205C();
      v64 = v135;
      (*(*(v63 - 8) + 56))(v135, 1, 1, v63);
      v65 = swift_allocObject();
      *(v65 + 16) = 0;
      *(v65 + 24) = 0;
      sub_1000279C0(0, 0, v64, &unk_100043058, v65);

      v66 = 0;
      v25 = &_swiftEmptyArrayStorage;
      do
      {
        if (v48)
        {
          v67 = sub_10004218C();
        }

        else
        {
          if (v66 >= *(v50 + 16))
          {
            goto LABEL_40;
          }

          v67 = *(v43 + 8 * v66 + 32);
        }

        v68 = v67;
        v43 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v69 = [v67 identifier];
        v29 = sub_100041EFC();
        v71 = v70;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_10000E678(0, v25[2] + 1, 1, v25);
        }

        v33 = v25[2];
        v72 = v25[3];
        if (v33 >= v72 >> 1)
        {
          v25 = sub_10000E678((v72 > 1), v33 + 1, 1, v25);
        }

        v25[2] = v33 + 1;
        v73 = &v25[2 * v33];
        *(v73 + 4) = v29;
        *(v73 + 5) = v71;
        ++v66;
        v74 = v43 == v145;
        v43 = v146;
      }

      while (!v74);
      v75 = v144[4];
      sub_100010A94(v144, v144[3]);
      sub_10004105C();
      v29 = 0;
      *&v147[0] = &_swiftEmptyArrayStorage;
      v76 = v145;
      while (1)
      {
        if (v48)
        {
          sub_10004218C();
        }

        else
        {
          if (v29 >= *(v50 + 16))
          {
            goto LABEL_42;
          }

          v77 = *(v43 + 8 * v29 + 32);
        }

        v78 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        sub_100041FAC();
        if (*((*&v147[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v147[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v33 = *((*&v147[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_100041FDC();
        }

        sub_100041FFC();
        ++v29;
        if (v78 == v76)
        {
          v79 = *&v147[0];
          v80 = sub_100029284(&_swiftEmptyArrayStorage);
          v81 = __chkstk_darwin(v80);
          v82 = v144;
          *(&v119 - 2) = v144;
          v136 = sub_10000A8F8(v81, sub_100010AD8, (&v119 - 4), v79);

          v141 = v82[13];
          v145 = v82[14];
          v140 = sub_100010A94(v82 + 10, v141);
          sub_100010AF4(v82, v147);
          v83 = v132;
          v84 = v131;
          v85 = v133;
          (*(v132 + 16))(v131, v134, v133);
          v86 = v137;
          v87 = v129;
          (*(v137 + 16))(v129, v142, v143);
          v88 = (*(v83 + 80) + 176) & ~*(v83 + 80);
          v89 = (v130 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
          v90 = (*(v86 + 80) + v89 + 16) & ~*(v86 + 80);
          v91 = swift_allocObject();
          v92 = v147[5];
          *(v91 + 88) = v147[4];
          *(v91 + 104) = v92;
          v93 = v147[7];
          *(v91 + 120) = v147[6];
          *(v91 + 136) = v93;
          v94 = v147[1];
          *(v91 + 24) = v147[0];
          *(v91 + 40) = v94;
          v95 = v147[3];
          *(v91 + 56) = v147[2];
          *(v91 + 16) = v25;
          *(v91 + 72) = v95;
          v96 = v136;
          *(v91 + 152) = v146;
          *(v91 + 160) = v96;
          *(v91 + 168) = v42;
          (*(v83 + 32))(v91 + v88, v84, v85);
          v97 = (v91 + v89);
          v98 = v139;
          *v97 = v138;
          v97[1] = v98;
          v99 = v143;
          (*(v86 + 32))(v91 + v90, v87, v143);

          sub_1000410BC();

          return (*(v86 + 8))(v142, v99);
        }
      }

LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

  sub_100040ACC();
  v101 = sub_10004097C();
  v102 = sub_1000420CC();
  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    *v103 = 0;
    _os_log_impl(&_mh_execute_header, v101, v102, "Could not get any contacts for Mutiple contacts widget", v103, 2u);
  }

  (v140[1])(v33, v141);
  sub_100003DC0(&qword_1000549F0, &unk_100043060);
  v104 = type metadata accessor for MultipleContactsEntry(0);
  v105 = *(*(v104 - 1) + 72);
  v106 = (*(*(v104 - 1) + 80) + 32) & ~*(*(v104 - 1) + 80);
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_100042C30;
  v108 = (v107 + v106);
  sub_10004088C();
  v109 = sub_100041E3C();
  v110 = v121;
  (*(*(v109 - 8) + 56))(v121, 1, 1, v109);
  *v108 = &_swiftEmptyArrayStorage;
  (*(v120 + 32))(&v108[v104[5]], v29, v25);
  v108[v104[6]] = 0;
  v111 = &v108[v104[7]];
  sub_1000408BC();
  sub_100004C8C(v110, &v108[v104[8]], &qword_100054788, &unk_100042DD0);
  sub_100041DCC();
  sub_10000E448(&qword_100054918, type metadata accessor for MultipleContactsEntry);
  v112 = v122;
  sub_100041E9C();
  v138(v112);
  (*(v123 + 8))(v112, v124);
  v113 = v126;
  sub_10004091C();
  v114 = v142;
  v115 = sub_10004094C();
  v116 = sub_1000420DC();
  if (sub_1000420EC())
  {
    v117 = swift_slowAlloc();
    *v117 = 0;
    v118 = sub_10004090C();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v115, v116, v118, "getTimeline", "no contacts", v117, 2u);
  }

  (*(v127 + 8))(v113, v145);
  return (*(v137 + 8))(v114, v143);
}

uint64_t sub_100008064()
{
  v0[2] = sub_100040BCC();
  v0[3] = v1;
  sub_10004203C();
  v0[4] = sub_10004202C();
  v3 = sub_10004200C();

  return _swift_task_switch(sub_100008100, v3, v2);
}

uint64_t sub_100008100()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  sub_100040DCC();

  v4 = v0[1];

  return v4();
}

size_t sub_100008178(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *), double a9)
{
  v222 = a8;
  v218 = a7;
  v252 = a6;
  v238 = a4;
  LODWORD(v239) = a2;
  v13 = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v245 = &v196 - v15;
  v249 = sub_100040E0C();
  v198 = *(v249 - 8);
  v16 = *(v198 + 64);
  __chkstk_darwin(v249);
  v247 = &v196 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10004116C();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v251 = &v196 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100003DC0(&qword_100054788, &unk_100042DD0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v196 - v23;
  v221 = sub_10004092C();
  v220 = *(v221 - 8);
  v25 = *(v220 + 64);
  __chkstk_darwin(v221);
  v219 = &v196 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_100040ADC();
  v216 = *(v217 - 8);
  v27 = *(v216 + 64);
  __chkstk_darwin(v217);
  v215 = &v196 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_100041D5C();
  v213 = *(v214 - 8);
  v29 = *(v213 + 64);
  __chkstk_darwin(v214);
  v212 = &v196 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_100040AEC();
  v231 = *(v232 - 8);
  v31 = *(v231 + 64);
  __chkstk_darwin(v232);
  v230 = &v196 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100041BAC();
  v34 = *(v33 - 8);
  v253 = v33;
  v254 = v34;
  v35 = *(v34 + 64);
  v36 = __chkstk_darwin(v33);
  v246 = &v196 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v39 = &v196 - v38;
  v40 = sub_100003DC0(&qword_1000549F8, &unk_100043070);
  v243 = *(v40 - 8);
  v41 = *(v243 + 64);
  __chkstk_darwin(v40);
  v250 = &v196 - v42;
  v242 = type metadata accessor for MultipleContactsEntry(0);
  v244 = *(v242 - 8);
  v43 = *(v244 + 64);
  __chkstk_darwin(v242);
  v241 = &v196 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100003DC0(&qword_100054A00, &unk_100043560);
  v46 = *(*(v45 - 8) + 64);
  v47 = __chkstk_darwin(v45 - 8);
  v200 = &v196 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v206 = &v196 - v49;
  v50 = sub_100003DC0(&qword_100054A08, &unk_100043080);
  v51 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50 - 8);
  v237 = &v196 - v52;
  v202 = sub_100041DDC();
  v209 = *(v202 - 8);
  v53 = *(v209 + 64);
  v54 = __chkstk_darwin(v202);
  v210 = &v196 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v208 = &v196 - v56;
  v205 = sub_100003DC0(&qword_100054A10, &qword_100043570);
  v204 = *(v205 - 8);
  v57 = *(v204 + 64);
  __chkstk_darwin(v205);
  v203 = &v196 - v58;
  v225 = sub_100003DC0(&qword_100054A18, &unk_100043090);
  v201 = *(v225 - 8);
  v59 = *(v201 + 64);
  __chkstk_darwin(v225);
  v224 = &v196 - v60;
  v228 = sub_10004098C();
  v227 = *(v228 - 8);
  v61 = *(v227 + 64);
  v62 = __chkstk_darwin(v228);
  v207 = &v196 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __chkstk_darwin(v62);
  v66 = &v196 - v65;
  __chkstk_darwin(v64);
  v68 = &v196 - v67;
  v235 = sub_10004089C();
  v234 = *(v235 - 8);
  v69 = *(v234 + 64);
  v70 = __chkstk_darwin(v235);
  v199 = &v196 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70);
  v73 = &v196 - v72;
  v229 = sub_100003DC0(&qword_1000549E0, &unk_100043040);
  v74 = *(v229 - 8);
  v75 = *(v74 + 64);
  __chkstk_darwin(v229);
  v236 = &v196 - v76;
  v233 = v73;
  sub_10004088C();
  v248 = a5;
  v226 = a5 >> 62;
  v223 = a3;
  v211 = v74;
  if ((v239 & 1) == 0)
  {
    sub_100040ACC();

    v116 = sub_10004097C();
    v117 = sub_1000420CC();

    if (os_log_type_enabled(v116, v117))
    {
      v118 = v40;
      v119 = swift_slowAlloc();
      v255[0] = swift_slowAlloc();
      v120 = v255[0];
      *v119 = 136315138;
      v121 = sub_100041FCC();
      v123 = sub_10001BA5C(v121, v122, v255);

      *(v119 + 4) = v123;
      _os_log_impl(&_mh_execute_header, v116, v117, "got statuses for contactID's: %s", v119, 0xCu);
      sub_100010DCC(v120);

      v40 = v118;
    }

    v198 = *(v227 + 8);
    (v198)(v68, v228);
    v124 = v237;
    v125 = a1;
    v126 = *(v238 + 120);
    v127 = v203;
    sub_100040B4C();
    v128 = swift_allocObject();
    *(v128 + 16) = v125;
    v129 = __chkstk_darwin(v128);
    *(&v196 - 2) = sub_100010E5C;
    *(&v196 - 1) = v129;
    __chkstk_darwin(v129);
    *(&v196 - 2) = sub_100010E64;
    *(&v196 - 1) = v130;
    sub_100010EE4();

    sub_100040F3C();

    (*(v204 + 8))(v127, v205);
    v131 = sub_100040F2C();
    v132 = *(v131 + 16);
    if (v132)
    {
      v255[0] = &_swiftEmptyArrayStorage;
      v133 = v131;
      sub_100024330(0, v132, 0);
      v134 = v133;
      v135 = 0;
      v136 = v255[0];
      v247 = &v133[(*(v243 + 80) + 32) & ~*(v243 + 80)];
      v246 = (v243 + 16);
      v238 = v243 + 8;
      v240 = v40;
      v245 = v133;
      v239 = v132;
      while (v135 < *(v134 + 2))
      {
        v251 = v136;
        v137 = *(v243 + 72);
        v249 = v135;
        (*(v243 + 16))(v250, &v247[v137 * v135], v40);
        v138 = sub_100040EDC();
        v139 = *(v138 + 16);
        if (v139)
        {
          v256 = &_swiftEmptyArrayStorage;
          sub_1000242EC(0, v139, 0);
          v140 = 0;
          v141 = v256;
          v142 = (v138 + 40);
          while (v140 < *(v138 + 16))
          {
            v143 = *v142;
            v144 = *(v142 - 1);

            sub_100009F84(v144, v143, v252, v39);

            v256 = v141;
            v146 = v141[2];
            v145 = v141[3];
            if (v146 >= v145 >> 1)
            {
              sub_1000242EC(v145 > 1, v146 + 1, 1);
              v141 = v256;
            }

            ++v140;
            v141[2] = v146 + 1;
            (*(v254 + 32))(v141 + ((*(v254 + 80) + 32) & ~*(v254 + 80)) + *(v254 + 72) * v146, v39, v253);
            v142 += 2;
            if (v139 == v140)
            {

              v124 = v237;
              goto LABEL_34;
            }
          }

          __break(1u);
          break;
        }

        v141 = &_swiftEmptyArrayStorage;
LABEL_34:
        v147 = v242;
        v148 = v241;
        v149 = &v241[*(v242 + 20)];
        v40 = v240;
        v150 = v250;
        sub_100040ECC();
        v151 = v147[8];
        sub_100040EEC();
        sub_100041AEC();
        sub_100040EFC();
        sub_100041E2C();
        v152 = sub_100041E3C();
        (*(*(v152 - 8) + 56))(&v148[v151], 0, 1, v152);
        *v148 = v141;
        v148[v147[6]] = 0;
        v153 = &v148[v147[7]];
        sub_1000408BC();
        (*v238)(v150, v40);
        v136 = v251;
        v255[0] = v251;
        v155 = *(v251 + 2);
        v154 = *(v251 + 3);
        if (v155 >= v154 >> 1)
        {
          sub_100024330(v154 > 1, v155 + 1, 1);
          v136 = v255[0];
        }

        v135 = v249 + 1;
        *(v136 + 16) = v155 + 1;
        sub_100010530(v148, v136 + ((*(v244 + 80) + 32) & ~*(v244 + 80)) + *(v244 + 72) * v155, type metadata accessor for MultipleContactsEntry);
        v134 = v245;
        if (v135 == v239)
        {
          v160 = v136;

          goto LABEL_40;
        }
      }

      __break(1u);
      goto LABEL_58;
    }

    v160 = &_swiftEmptyArrayStorage;
LABEL_40:
    v161 = v206;
    sub_100040F1C();
    v162 = v200;
    sub_100011258(v161, v200, &qword_100054A00, &unk_100043560);
    v163 = 1;
    v164 = (*(v234 + 48))(v162, 1, v235);
    v165 = v202;
    v166 = v199;
    if (v164 != 1)
    {
      v167 = v234;
      v168 = v235;
      (*(v234 + 32))(v199, v162, v235);
      sub_100041DAC();
      v169 = v168;
      v161 = v206;
      (*(v167 + 8))(v166, v169);
      v163 = 0;
    }

    sub_1000049F8(v161, &qword_100054A00, &unk_100043560);
    v170 = v209;
    (*(v209 + 56))(v124, v163, 1, v165);
    v171 = *(v170 + 48);
    if (v171(v124, 1, v165) == 1)
    {
      v172 = v208;
      sub_100041DBC();
      v173 = v171(v124, 1, v165);
      v174 = v172;
      v175 = v207;
      if (v173 != 1)
      {
        sub_1000049F8(v124, &qword_100054A08, &unk_100043080);
      }
    }

    else
    {
      v174 = v208;
      (*(v170 + 32))(v208, v124, v165);
      v175 = v207;
    }

    (*(v170 + 16))(v210, v174, v165);
    sub_10000E448(&qword_100054918, type metadata accessor for MultipleContactsEntry);

    sub_100041E9C();
    sub_10004088C();
    sub_10004086C();
    v177 = v176;
    (*(v234 + 8))(v166, v235);
    sub_100040ACC();

    v178 = sub_10004097C();
    v179 = sub_1000420CC();
    if (os_log_type_enabled(v178, v179))
    {
      v180 = swift_slowAlloc();
      *v180 = 134349312;
      v181 = v160[2];

      *(v180 + 4) = v181;

      *(v180 + 12) = 2048;
      *(v180 + 14) = v177 - a9;
      _os_log_impl(&_mh_execute_header, v178, v179, "timeline created with %{public}ld entries elapsed %f", v180, 0x16u);
      v175 = v207;
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v182 = v201;
    (v198)(v175, v228);
    (*(v209 + 8))(v208, v165);
    (*(v182 + 8))(v224, v225);
LABEL_50:
    (*(v231 + 104))(v230, enum case for PeopleAnalytics.WidgetType.multiple(_:), v232);
    v183 = *(sub_100041EAC() + 16);

    if (!v226)
    {
      v184 = *((v248 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_52:
      sub_100040B3C();
      v185 = v212;
      sub_100041E4C();
      v186 = v215;
      sub_100041D4C();
      (*(v213 + 8))(v185, v214);
      v187 = v230;
      sub_100040AFC();
      (*(v216 + 8))(v186, v217);
      (*(v231 + 8))(v187, v232);
      v222(v236);
      v188 = v223;

      v189 = v219;
      sub_10004091C();
      v190 = sub_10004094C();
      v191 = sub_1000420DC();
      if (sub_1000420EC())
      {
        v192 = swift_slowAlloc();
        *v192 = 134217984;
        *(v192 + 4) = *(v188 + 16);

        v193 = sub_10004090C();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v190, v191, v193, "getTimeline", "completed %ld contacts", v192, 0xCu);
      }

      else
      {
      }

      v194 = v221;
      v195 = v211;

      (*(v220 + 8))(v189, v194);
      (*(v234 + 8))(v233, v235);
      return (*(v195 + 8))(v236, v229);
    }

LABEL_58:
    sub_1000421BC();
    goto LABEL_52;
  }

  v255[0] = a1;
  swift_errorRetain();
  sub_100003DC0(&qword_100054A20, &unk_100043580);
  swift_willThrowTypedImpl();
  sub_100040ACC();
  swift_errorRetain();
  v77 = sub_10004097C();
  v78 = a1;
  v79 = sub_1000420CC();
  sub_100010E18(v78, 1);
  v80 = os_log_type_enabled(v77, v79);
  v197 = v78;
  if (v80)
  {
    v81 = v24;
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v255[0] = v83;
    *v82 = 136315138;
    swift_getErrorValue();
    v84 = sub_10004225C();
    v86 = sub_10001BA5C(v84, v85, v255);

    *(v82 + 4) = v86;
    _os_log_impl(&_mh_execute_header, v77, v79, "got failure fetching statuses for contactID's: %s", v82, 0xCu);
    sub_100010DCC(v83);

    v24 = v81;
  }

  (*(v227 + 8))(v66, v228);
  v87 = v252;
  sub_100003DC0(&qword_1000549F0, &unk_100043060);
  v88 = *(v244 + 72);
  v89 = (*(v244 + 80) + 32) & ~*(v244 + 80);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_100042C30;
  v91 = v245;
  if (v226)
  {
    v92 = sub_1000421BC();
  }

  else
  {
    v92 = *((v248 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v93 = &_swiftEmptyArrayStorage;
  if (!v92)
  {
LABEL_38:
    v156 = (v90 + v89);
    sub_100041B2C();
    v157 = sub_100041E3C();
    (*(*(v157 - 8) + 56))(v24, 0, 1, v157);
    *v156 = v93;
    v158 = v242;
    (*(v234 + 16))(&v156[*(v242 + 20)], v233, v235);
    v156[v158[6]] = 0;
    v159 = &v156[v158[7]];
    sub_1000408BC();
    sub_100004C8C(v24, &v156[v158[8]], &qword_100054788, &unk_100042DD0);
    sub_100041DCC();
    sub_10000E448(&qword_100054918, type metadata accessor for MultipleContactsEntry);
    sub_100041E9C();
    sub_100010E18(v197, 1);
    goto LABEL_50;
  }

  v256 = &_swiftEmptyArrayStorage;
  result = sub_1000242EC(0, v92 & ~(v92 >> 63), 0);
  if ((v92 & 0x8000000000000000) == 0)
  {
    v239 = v89;
    v240 = v90;
    v241 = v24;
    v95 = 0;
    v93 = v256;
    v250 = (v248 & 0xC000000000000001);
    LODWORD(v244) = enum case for ContactFormatter.Style.shortName(_:);
    v96 = (v198 + 104);
    v243 = v254 + 32;
    while (1)
    {
      v97 = v250 ? sub_10004218C() : *(v248 + 8 * v95 + 32);
      v98 = v97;
      (*v96)(v247, v244, v249);
      v99 = v98;
      sub_100041F4C();
      v255[3] = sub_100040E2C();
      v255[4] = &protocol witness table for ContactFormatter;
      sub_100004AC8(v255);
      sub_100040E1C();
      sub_10004113C();
      v100 = [v99 identifier];
      v101 = sub_100041EFC();
      v103 = v102;

      if (!*(v87 + 16))
      {
        break;
      }

      v104 = sub_1000291E8(v101, v103);
      v106 = v105;

      if ((v106 & 1) == 0)
      {
        goto LABEL_16;
      }

      v107 = *(v252 + 56);
      v108 = sub_100041C6C();
      v109 = *(v108 - 8);
      v110 = v109;
      v111 = v107 + *(v109 + 72) * v104;
      v87 = v252;
      (*(v109 + 16))(v245, v111, v108);
      (*(v110 + 56))(v245, 0, 1, v108);
      v91 = v245;
LABEL_17:
      v113 = v246;
      sub_100041B9C();

      v256 = v93;
      v115 = v93[2];
      v114 = v93[3];
      if (v115 >= v114 >> 1)
      {
        sub_1000242EC(v114 > 1, v115 + 1, 1);
        v93 = v256;
      }

      ++v95;
      v93[2] = v115 + 1;
      (*(v254 + 32))(v93 + ((*(v254 + 80) + 32) & ~*(v254 + 80)) + *(v254 + 72) * v115, v113, v253);
      if (v92 == v95)
      {
        v24 = v241;
        v90 = v240;
        v89 = v239;
        goto LABEL_38;
      }
    }

LABEL_16:
    v112 = sub_100041C6C();
    (*(*(v112 - 8) + 56))(v91, 1, 1, v112);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void *sub_100009EEC(void *a1, uint64_t a2)
{
  v3 = [a1 identifier];
  v4 = sub_100041EFC();
  v6 = v5;

  if (*(a2 + 16))
  {
    v7 = sub_1000291E8(v4, v6);
    v9 = v8;

    if (v9)
    {
      v10 = *(*(a2 + 56) + 8 * v7);
    }
  }

  else
  {
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100009F84@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a1;
  v39 = a3;
  v42 = a4;
  v5 = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v41 = &v35 - v7;
  v36 = sub_100040E0C();
  v35 = *(v36 - 8);
  v8 = *(v35 + 64);
  __chkstk_darwin(v36);
  v37 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004116C();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v40 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = a2 + 32;
    v15 = &_swiftEmptyArrayStorage;
    do
    {
      sub_100010F30(v14, &v47);
      sub_100004B44(&v47, v46);
      sub_100003DC0(&qword_100054A30, &unk_1000430A0);
      sub_100003DC0(&qword_100054A38, &unk_100043590);
      if (swift_dynamicCast())
      {
        if (*(&v44 + 1))
        {
          sub_100004B44(&v43, v46);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_10000E95C(0, v15[2] + 1, 1, v15);
          }

          v17 = v15[2];
          v16 = v15[3];
          if (v17 >= v16 >> 1)
          {
            v15 = sub_10000E95C((v16 > 1), v17 + 1, 1, v15);
          }

          v15[2] = v17 + 1;
          sub_100004B44(v46, &v15[5 * v17 + 4]);
          goto LABEL_5;
        }
      }

      else
      {
        v45 = 0;
        v43 = 0u;
        v44 = 0u;
      }

      sub_1000049F8(&v43, &qword_100054A40, &qword_1000430B0);
LABEL_5:
      v14 += 40;
      --v13;
    }

    while (v13);
  }

  (*(v35 + 104))(v37, enum case for ContactFormatter.Style.shortName(_:), v36);
  sub_100041F4C();
  v48 = sub_100040E2C();
  v49 = &protocol witness table for ContactFormatter;
  sub_100004AC8(&v47);
  sub_100040E1C();
  v18 = v38;
  sub_10004113C();
  v19 = [v18 identifier];
  v20 = sub_100041EFC();
  v22 = v21;

  v23 = v39;
  if (!*(v39 + 16))
  {

    goto LABEL_17;
  }

  v24 = sub_1000291E8(v20, v22);
  v26 = v25;

  if ((v26 & 1) == 0)
  {
LABEL_17:
    v33 = sub_100041C6C();
    (*(*(v33 - 8) + 56))(v41, 1, 1, v33);
    return sub_100041B9C();
  }

  v27 = *(v23 + 56);
  v28 = sub_100041C6C();
  v29 = *(v28 - 8);
  v30 = v29;
  v31 = v27 + *(v29 + 72) * v24;
  v32 = v41;
  (*(v29 + 16))(v41, v31, v28);
  (*(v30 + 56))(v32, 0, 1, v28);
  return sub_100041B9C();
}

uint64_t sub_10000A450@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  result = sub_10003E590();
  if (v7)
  {
    v8 = a2[4];
    sub_100010A94(a2, a2[3]);
    v9 = sub_10004109C();
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  return result;
}

uint64_t sub_10000A4F0(uint64_t a1, void **a2, void *a3)
{
  v24[1] = a1;
  v5 = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v24 - v7;
  v9 = sub_100041C6C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  v15 = a3[4];
  sub_100010A94(a3, a3[3]);
  sub_100041B0C();
  result = sub_10004107C();
  if (v17 >> 60 != 15)
  {
    v18 = result;
    v19 = v17;
    sub_100010F94(result, v17);
    sub_100041C2C();
    if (sub_100041C5C())
    {

      v20 = [v14 identifier];
      v21 = sub_100041EFC();
      v23 = v22;

      (*(v10 + 16))(v8, v13, v9);
      (*(v10 + 56))(v8, 0, 1, v9);
      sub_10000A720(v8, v21, v23);
    }

    sub_100010FE8(v18, v19);
    return (*(v10 + 8))(v13, v9);
  }

  return result;
}

uint64_t sub_10000A720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_100041C6C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_1000049F8(a1, &qword_1000546F0, &unk_100044170);
    sub_10000EAA4(a2, a3, v10);

    return sub_1000049F8(v10, &qword_1000546F0, &unk_100044170);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_10000F180(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

id sub_10000A8F8(id result, void (*a2)(id *, id *), uint64_t a3, unint64_t a4)
{
  v13 = result;
  if (a4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; result = v10)
  {
    for (j = 0; ; ++j)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        result = sub_10004218C();
      }

      else
      {
        if (j >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        result = *(a4 + 8 * j + 32);
      }

      v8 = result;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v12 = result;
      a2(&v13, &v12);

      if (v4)
      {
      }

      if (v9 == i)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v10 = result;
    i = sub_1000421BC();
  }

  return result;
}

uint64_t sub_10000AA24@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for MultipleContactsEntry(0);
  v3 = &a1[v2[5]];
  sub_10004088C();
  v4 = v2[8];
  v5 = sub_100041E3C();
  (*(*(v5 - 8) + 56))(&a1[v4], 1, 1, v5);
  *a1 = &_swiftEmptyArrayStorage;
  a1[v2[6]] = 1;
  v6 = &a1[v2[7]];
  return sub_1000408BC();
}

uint64_t sub_10000AAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to IntentTimelineProvider.relevances()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000AB88;

  return IntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_10000AB88()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000AC7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to IntentTimelineProvider.relevance()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100011628;

  return IntentTimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_10000AD30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_10004089C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10000ADD8()
{
  v1 = sub_100041D5C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v30 - v7;
  v9 = sub_1000414EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v33 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v32 = v30 - v15;
  __chkstk_darwin(v14);
  v17 = v30 - v16;
  v18 = type metadata accessor for MultipleContactsEntryView(0);
  v19 = v0;
  v30[1] = *(v18 + 28);
  sub_10002F610(v17);
  v20 = sub_1000414DC();
  v34 = v10;
  v31 = *(v10 + 8);
  v31(v17, v9);
  if ((v20 & 1) == 0)
  {
    goto LABEL_6;
  }

  v21 = v19 + *(v18 + 24);
  sub_10002F5E8(v8);
  (*(v2 + 104))(v6, enum case for WidgetFamily.systemMedium(_:), v1);
  sub_10000E448(&qword_100054720, &type metadata accessor for WidgetFamily);
  sub_100041F9C();
  sub_100041F9C();
  v22 = *(v2 + 8);
  v22(v6, v1);
  v22(v8, v1);
  if (v36 == v35)
  {
    v23 = v32;
    sub_10002F610(v32);
    v24 = v33;
    (*(v34 + 104))(v33, enum case for ContentSizeCategory.accessibilityLarge(_:), v9);
    v25 = sub_100010598(v23, v24);
    v26 = v24;
    v27 = v31;
    v31(v26, v9);
    v27(v23, v9);
    if (v25)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  else
  {
LABEL_6:
    v29 = v19 + *(v18 + 24);
    sub_10002F5E8(v8);
    sub_100041D3C();
    (*(v2 + 8))(v8, v1);
    return sub_100040A0C();
  }
}

uint64_t sub_10000B160()
{
  v20 = sub_10004146C();
  v1 = *(v20 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003DC0(&qword_100054668, &qword_100042AA0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v19 - v7);
  v9 = sub_100041D5C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MultipleContactsEntryView(0);
  sub_100011258(v0 + *(v14 + 24), v8, &qword_100054668, &qword_100042AA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v13, v8, v9);
  }

  else
  {
    v15 = *v8;
    sub_1000420BC();
    v16 = sub_1000415DC();
    sub_1000408FC();

    sub_10004145C();
    swift_getAtKeyPath();

    (*(v1 + 8))(v4, v20);
  }

  v17 = (*(v10 + 88))(v13, v9);
  result = 1;
  if (v17 != enum case for WidgetFamily.systemSmall(_:) && v17 != enum case for WidgetFamily.systemMedium(_:))
  {
    result = 2;
    if (v17 != enum case for WidgetFamily.systemLarge(_:) && v17 != enum case for WidgetFamily.systemExtraLarge(_:))
    {
      result = 1;
      if (v17 != enum case for WidgetFamily.accessoryCircular(_:) && v17 != enum case for WidgetFamily.accessoryRectangular(_:) && v17 != enum case for WidgetFamily.accessoryInline(_:))
      {
        (*(v10 + 8))(v13, v9);
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_10000B498()
{
  v1 = v0;
  v2 = sub_100041D5C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v15 - v8;
  v10 = v0 + *(type metadata accessor for MultipleContactsEntryView(0) + 24);
  sub_10002F5E8(v9);
  (*(v3 + 104))(v7, enum case for WidgetFamily.systemMedium(_:), v2);
  sub_10000E448(&qword_100054720, &type metadata accessor for WidgetFamily);
  sub_100041F9C();
  sub_100041F9C();
  v11 = *(v3 + 8);
  v11(v7, v2);
  v11(v9, v2);
  if (v15[1] != v15[0])
  {
    return 1;
  }

  v12 = *(*v1 + 16);
  v13 = 2;
  if (v12 != sub_100040A0C())
  {
    return 1;
  }

  return v13;
}

size_t sub_10000B66C()
{
  v1 = sub_100003DC0(&qword_1000549C8, &qword_100043030);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v43 - v3;
  v5 = sub_100041D5C();
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = *(v48 + 64);
  __chkstk_darwin(v5);
  v47 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100041BAC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PersonEntryType(0);
  v56 = *(v13 - 8);
  v14 = *(v56 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v43 - v18;
  v20 = *v0;

  v50 = v0;
  v21 = sub_10000ADD8();
  result = sub_10000BBF0(v21, v20);
  v54 = v24;
  v55 = v25 >> 1;
  v26 = (v25 >> 1) - v23;
  if (__OFSUB__(v25 >> 1, v23))
  {
    goto LABEL_18;
  }

  v45 = v13;
  v46 = v4;
  v44 = v17;
  if (v26)
  {
    v27 = v23;
    v43[1] = result;
    v57 = &_swiftEmptyArrayStorage;
    result = sub_100024374(0, v26 & ~(v26 >> 63), 0);
    if (v26 < 0)
    {
LABEL_19:
      __break(1u);
      return result;
    }

    v28 = v57;
    v51 = v9 + 8;
    v52 = v9 + 56;
    v29 = v55;
    if (v27 > v55)
    {
      v29 = v27;
    }

    v53 = v29;
    while (v53 != v27)
    {
      v30 = *(v9 + 16);
      v30(v12, v54 + *(v9 + 72) * v27, v8);
      v30(v19, v12, v8);
      (*(v9 + 56))(v19, 0, 2, v8);
      (*(v9 + 8))(v12, v8);
      v57 = v28;
      v32 = v28[2];
      v31 = v28[3];
      if (v32 >= v31 >> 1)
      {
        sub_100024374(v31 > 1, v32 + 1, 1);
        v28 = v57;
      }

      v28[2] = v32 + 1;
      result = sub_100010530(v19, v28 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v32, type metadata accessor for PersonEntryType);
      if (v55 == ++v27)
      {
        swift_unknownObjectRelease();
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_unknownObjectRelease();
  v28 = &_swiftEmptyArrayStorage;
LABEL_13:
  v57 = v28;
  v33 = type metadata accessor for MultipleContactsEntry(0);
  v34 = v50;
  v35 = *(v50 + *(v33 + 24));
  v36 = v34 + *(type metadata accessor for MultipleContactsEntryView(0) + 24);
  v37 = v47;
  sub_10002F5E8(v47);
  sub_100041D3C();
  (*(v48 + 8))(v37, v49);
  if (v35)
  {
    sub_100040A0C();
  }

  else
  {
    sub_100040A1C();
  }

  v38 = *(v9 + 56);
  v39 = v44;
  v38(v44, 1, 2, v8);
  sub_100003DC0(&qword_1000549D0, &qword_100043038);
  sub_100004D80(&qword_1000549D8, &qword_1000549D0, &qword_100043038);
  v40 = sub_10004207C();
  sub_1000111F8(v39, type metadata accessor for PersonEntryType);

  v57 = v40;
  sub_10000B160();
  v41 = v46;
  v38(v46, 2, 2, v8);
  (*(v56 + 56))(v41, 0, 1, v45);
  v42 = sub_10004208C();
  sub_1000049F8(v41, &qword_1000549C8, &qword_100043030);

  return v42;
}

uint64_t sub_10000BBF0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v3 = *(sub_100041BAC() - 8);
    v4 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_10000BC84@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004146C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003DC0(&qword_100054710, &unk_100042C00);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for MultipleContactsEntryView(0);
  sub_100011258(v1 + *(v12 + 36), v11, &qword_100054710, &unk_100042C00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_100041CFC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1000420BC();
    v16 = sub_1000415DC();
    sub_1000408FC();

    sub_10004145C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_10000BE8C@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v40 = sub_100003DC0(&qword_100054970, &qword_100042FB0);
  v2 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v39 = &v32 - v3;
  v4 = type metadata accessor for MultipleContactsEntryView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v37 = v7;
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_100003DC0(&qword_100054940, &qword_100042F90);
  v9 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v11 = &v32 - v10;
  *v11 = sub_1000414FC();
  *(v11 + 1) = 0x4040000000000000;
  v11[16] = 0;
  v12 = *(sub_100003DC0(&qword_100054978, &qword_100042FB8) + 44);
  v35 = v1;
  v13 = sub_10000B66C();
  v14 = sub_10000F98C(v13);

  *&v42 = v14;
  KeyPath = swift_getKeyPath();
  v34 = type metadata accessor for MultipleContactsEntryView;
  sub_10000FB1C(v1, v8, type metadata accessor for MultipleContactsEntryView);
  v15 = *(v5 + 80);
  v16 = swift_allocObject();
  v36 = type metadata accessor for MultipleContactsEntryView;
  sub_100010530(v8, v16 + ((v15 + 16) & ~v15), type metadata accessor for MultipleContactsEntryView);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10000FEC8;
  *(v17 + 24) = v16;
  sub_100003DC0(&qword_100054980, &qword_100042FE0);
  sub_100003DC0(&qword_100054988, &qword_100042FE8);
  sub_100004D80(&qword_100054990, &qword_100054980, &qword_100042FE0);
  sub_10000FFB8();
  sub_100041A2C();
  KeyPath = swift_getKeyPath();
  v18 = v34;
  v19 = v35;
  sub_10000FB1C(v35, v8, v34);
  sub_10004203C();
  v20 = sub_10004202C();
  v21 = (v15 + 32) & ~v15;
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = &protocol witness table for MainActor;
  v23 = v36;
  sub_100010530(v8, v22 + v21, v36);
  sub_10000FB1C(v19, v8, v18);
  v24 = sub_10004202C();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = &protocol witness table for MainActor;
  sub_100010530(v8, v25 + v21, v23);
  sub_100003DC0(&qword_100054780, &qword_100042D98);
  sub_100041A0C();
  v26 = v42;
  v27 = v43;
  v28 = v44;
  v29 = v39;
  v30 = &v11[*(v38 + 36)];
  *v30 = KeyPath;
  *(v30 + 8) = v26;
  *(v30 + 3) = v27;
  v30[32] = v28;
  sub_100011258(v11, v29, &qword_100054940, &qword_100042F90);
  swift_storeEnumTagMultiPayload();
  sub_10000E540();
  sub_10000E594();
  sub_10004158C();
  return sub_1000049F8(v11, &qword_100054940, &qword_100042F90);
}

uint64_t sub_10000C34C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100041CFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  sub_10000BC84(&v15 - v8);
  if (sub_100040BDC())
  {
    v10 = sub_10004192C();
    result = (*(v3 + 8))(v9, v2);
  }

  else
  {
    sub_100041CDC();
    v12 = sub_100041CCC();
    v13 = *(v3 + 8);
    v13(v7, v2);
    if (v12)
    {
      v14 = sub_1000418BC();
    }

    else
    {
      v14 = sub_1000418CC();
    }

    v10 = v14;
    result = (v13)(v9, v2);
  }

  *a1 = v10;
  return result;
}

uint64_t sub_10000C4C0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for MultipleContactsEntryView(0) + 32));
  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = v3[2];
  sub_100003DC0(&qword_1000549B8, &qword_100043020);
  result = sub_10004199C();
  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_10000C54C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(result + 8) & 1) == 0)
  {
    v4 = *result;
    v5 = (a4 + *(type metadata accessor for MultipleContactsEntryView(0) + 32));
    v6 = *v5;
    v7 = *(v5 + 8);
    v8 = v5[2];
    sub_100003DC0(&qword_1000549B8, &qword_100043020);
    sub_10004199C();
    return sub_1000419AC();
  }

  return result;
}

uint64_t sub_10000C624@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{

  v6 = sub_10000B498();
  v7 = (a2 + *(type metadata accessor for MultipleContactsEntryView(0) + 32));
  v19 = *v7;
  v20 = *(v7 + 8);
  v21 = v7[2];
  sub_100003DC0(&qword_1000549B8, &qword_100043020);
  sub_10004199C();
  v8 = *(type metadata accessor for MultipleContactsEntry(0) + 28);
  v9 = type metadata accessor for MultipleContactsRowView();
  v10 = v9[10];
  v11 = sub_1000408CC();
  (*(*(v11 - 8) + 16))(a3 + v10, a2 + v8, v11);
  *a3 = swift_getKeyPath();
  sub_100003DC0(&qword_100054668, &qword_100042AA0);
  swift_storeEnumTagMultiPayload();
  v12 = v9[5];
  v13 = enum case for Font.TextStyle.caption2(_:);
  v14 = sub_1000416DC();
  (*(*(v14 - 8) + 104))(a3 + v12, v13, v14);
  *(a3 + v9[6]) = a1;
  *(a3 + v9[7]) = v6;
  v15 = a3 + v9[8];
  *v15 = v17;
  v15[8] = v18;
  *(a3 + v9[9]) = 2;
  result = sub_100003DC0(&qword_100054988, &qword_100042FE8);
  *(a3 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_10000C7FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000415CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100003DC0(&qword_100054920, &qword_100042F88);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v15[-v10];
  sub_10000BE8C(&v15[-v10]);
  sub_1000415BC();
  v16 = v1;
  sub_100041A9C();
  sub_10000E4B4();
  sub_10004185C();
  (*(v4 + 8))(v7, v3);
  sub_1000049F8(v11, &qword_100054920, &qword_100042F88);
  KeyPath = swift_getKeyPath();
  v13 = (a1 + *(sub_100003DC0(&qword_100054968, &qword_100042FA8) + 36));
  *v13 = KeyPath;
  sub_100003DC0(&qword_100054710, &unk_100042C00);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for TimeStampModifier(0);
  *(v13 + *(result + 20)) = 0;
  return result;
}

uint64_t sub_10000CA18()
{
  sub_100003DC0(&qword_100054738, &unk_100042C50);
  v0 = sub_100041D5C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100042C40;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for WidgetFamily.systemMedium(_:), v0);
  v6(v5 + v2, enum case for WidgetFamily.systemLarge(_:), v0);
  result = (v6)(v5 + 2 * v2, enum case for WidgetFamily.systemExtraLarge(_:), v0);
  qword_1000574A0 = v4;
  return result;
}

uint64_t sub_10000CB84@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v58 = sub_100041D0C();
  v56 = *(v58 - 8);
  v1 = *(v56 + 64);
  __chkstk_darwin(v58);
  v55 = v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003DC0(&qword_100054740, &qword_100042CC8);
  v47 = *(v3 - 8);
  v4 = *(v47 + 64);
  __chkstk_darwin(v3);
  v6 = v46 - v5;
  v7 = sub_100003DC0(&qword_100054748, &qword_100042CD0);
  v48 = *(v7 - 8);
  v8 = *(v48 + 64);
  __chkstk_darwin(v7);
  v10 = v46 - v9;
  v11 = sub_100003DC0(&qword_100054750, &qword_100042CD8);
  v49 = *(v11 - 8);
  v12 = *(v49 + 64);
  __chkstk_darwin(v11);
  v14 = v46 - v13;
  v52 = sub_100003DC0(&qword_100054758, &qword_100042CE0);
  v50 = *(v52 - 8);
  v15 = *(v50 + 64);
  __chkstk_darwin(v52);
  v17 = v46 - v16;
  v54 = sub_100003DC0(&qword_100054760, &qword_100042CE8);
  v53 = *(v54 - 8);
  v18 = *(v53 + 64);
  __chkstk_darwin(v54);
  v51 = v46 - v19;
  v46[1] = sub_100040BCC();
  v46[0] = v20;
  v21 = sub_100040D9C();
  v22 = sub_100040D8C();
  v66 = v21;
  v67 = &protocol witness table for ContactFetcher;
  *&v65 = v22;
  v63 = sub_1000408EC();
  v64 = &protocol witness table for Locale;
  sub_100004AC8(&v62);
  sub_1000408DC();
  sub_1000409CC();
  if (sub_1000409BC())
  {
    v23 = sub_100040F8C();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    v26 = sub_100040F7C();
    v27 = &protocol witness table for DemoStatusProvider;
  }

  else
  {
    v23 = sub_100040DEC();
    v26 = sub_100040DDC();
    v27 = &protocol witness table for StatusProvider;
  }

  v61 = v27;
  v60 = v23;
  *&v59 = v26;
  sub_1000409AC();
  v28 = sub_100040F6C();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_100040F5C();
  sub_100004B44(&v65, &v68);
  sub_100004B44(&v62, v72);
  sub_100004B44(&v59, v73);
  v74 = v31;
  type metadata accessor for MultipleContactsEntryView(0);
  sub_10000E448(&qword_100054768, type metadata accessor for MultipleContactsEntryView);
  sub_10000D58C();
  sub_100041D9C();
  v32 = sub_100004D80(&qword_100054778, &qword_100054740, &qword_100042CC8);
  sub_10004156C();
  (*(v47 + 8))(v6, v3);
  v68 = sub_100041F4C();
  v69 = v33;
  *&v65 = v3;
  *(&v65 + 1) = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = sub_100004924();
  sub_10004154C();

  (*(v48 + 8))(v10, v7);
  *&v65 = sub_100041F4C();
  *(&v65 + 1) = v36;
  v68 = v7;
  v69 = &type metadata for String;
  v70 = OpaqueTypeConformance2;
  v71 = v35;
  v37 = swift_getOpaqueTypeConformance2();
  sub_10004150C();

  (*(v49 + 8))(v14, v11);
  if (qword_100054540 != -1)
  {
    swift_once();
  }

  v68 = v11;
  v69 = &type metadata for String;
  v70 = v37;
  v71 = v35;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v51;
  v40 = v52;
  sub_10004151C();
  (*(v50 + 8))(v17, v40);
  v41 = v56;
  v42 = v55;
  v43 = v58;
  (*(v56 + 104))(v55, enum case for WidgetBackgroundStyle.blur(_:), v58);
  v68 = v40;
  v69 = v38;
  swift_getOpaqueTypeConformance2();
  v44 = v54;
  sub_10004155C();
  (*(v41 + 8))(v42, v43);
  return (*(v53 + 8))(v39, v44);
}

uint64_t sub_10000D3DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000FB1C(a1, a2, type metadata accessor for MultipleContactsEntry);
  KeyPath = swift_getKeyPath();
  v4 = type metadata accessor for MultipleContactsEntryView(0);
  *(a2 + v4[9]) = KeyPath;
  sub_100003DC0(&qword_100054710, &unk_100042C00);
  swift_storeEnumTagMultiPayload();
  v5 = v4[5];
  sub_100040D9C();
  *(a2 + v5) = sub_100040D8C();
  v6 = v4[6];
  *(a2 + v6) = swift_getKeyPath();
  sub_100003DC0(&qword_100054668, &qword_100042AA0);
  swift_storeEnumTagMultiPayload();
  v7 = v4[7];
  *(a2 + v7) = swift_getKeyPath();
  sub_100003DC0(&qword_100054708, &qword_100042D90);
  swift_storeEnumTagMultiPayload();
  v8 = a2 + v4[8];
  sub_100003DC0(&qword_100054780, &qword_100042D98);
  sub_10004198C();
  *v8 = v11;
  *(v8 + 8) = v12;
  *(v8 + 16) = v13;
  v9 = a2 + v4[10];
  result = swift_getKeyPath();
  *v9 = result;
  *(v9 + 8) = 0;
  return result;
}

unint64_t sub_10000D58C()
{
  result = qword_100054770;
  if (!qword_100054770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054770);
  }

  return result;
}

uint64_t sub_10000D658@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10004135C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10000D6C4(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_10004089C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_1000408CC();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = sub_100003DC0(&qword_100054788, &unk_100042DD0);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[8]];

  return v15(v16, a2, v14);
}

char *sub_10000D850(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_10004089C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_1000408CC();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_100003DC0(&qword_100054788, &unk_100042DD0);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[8]];

  return v15(v16, a2, a2, v14);
}

void sub_10000D9C8()
{
  sub_10000E198(319, &qword_1000547F8, &type metadata accessor for PersonInfo, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_10004089C();
    if (v1 <= 0x3F)
    {
      sub_1000408CC();
      if (v2 <= 0x3F)
      {
        sub_10000E198(319, &unk_100054800, &type metadata accessor for TimelineEntryRelevance, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

__n128 sub_10000DAE4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_10000DB08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_10000DB50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000DBD4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for MultipleContactsEntry(0);
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

  v13 = sub_100003DC0(&qword_100054598, &unk_100042E50);
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

  v16 = sub_100003DC0(&qword_100054840, &unk_1000437D0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[7];
    goto LABEL_11;
  }

  v17 = sub_100003DC0(&qword_100054848, &unk_100042E60);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[9];

  return v18(v19, a2, v17);
}

uint64_t sub_10000DDC8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for MultipleContactsEntry(0);
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

  v13 = sub_100003DC0(&qword_100054598, &unk_100042E50);
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

  v16 = sub_100003DC0(&qword_100054840, &unk_1000437D0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v17 = sub_100003DC0(&qword_100054848, &unk_100042E60);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

void sub_10000DFA8()
{
  type metadata accessor for MultipleContactsEntry(319);
  if (v0 <= 0x3F)
  {
    sub_100040D9C();
    if (v1 <= 0x3F)
    {
      sub_10000E198(319, &qword_100054608, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_10000E198(319, &qword_1000548B8, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_10000E134();
          if (v4 <= 0x3F)
          {
            sub_10000E198(319, &qword_1000548C8, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              sub_10000E1FC();
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

void sub_10000E134()
{
  if (!qword_1000548C0)
  {
    sub_100003E08(&qword_100054780, &qword_100042D98);
    v0 = sub_1000419BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000548C0);
    }
  }
}

void sub_10000E198(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10000E1FC()
{
  if (!qword_1000548D0)
  {
    v0 = sub_1000411AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000548D0);
    }
  }
}

uint64_t sub_10000E24C()
{
  sub_100003E08(&qword_100054760, &qword_100042CE8);
  sub_100003E08(&qword_100054758, &qword_100042CE0);
  sub_100003E08(&qword_100054750, &qword_100042CD8);
  sub_100003E08(&qword_100054748, &qword_100042CD0);
  sub_100003E08(&qword_100054740, &qword_100042CC8);
  sub_100004D80(&qword_100054778, &qword_100054740, &qword_100042CC8);
  swift_getOpaqueTypeConformance2();
  sub_100004924();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000E448(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10000E4B4()
{
  result = qword_100054928;
  if (!qword_100054928)
  {
    sub_100003E08(&qword_100054920, &qword_100042F88);
    sub_10000E540();
    sub_10000E594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054928);
  }

  return result;
}

unint64_t sub_10000E540()
{
  result = qword_100054930;
  if (!qword_100054930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054930);
  }

  return result;
}

unint64_t sub_10000E594()
{
  result = qword_100054938;
  if (!qword_100054938)
  {
    sub_100003E08(&qword_100054940, &qword_100042F90);
    sub_100004D80(&qword_100054948, &qword_100054950, &qword_100042F98);
    sub_100004D80(&qword_100054958, &qword_100054960, &qword_100042FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054938);
  }

  return result;
}

char *sub_10000E678(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003DC0(&qword_100054A58, &qword_1000430C8);
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

size_t sub_10000E784(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003DC0(&qword_100054A60, &qword_1000430D0);
  v10 = *(sub_100041BAC() - 8);
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

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100041BAC() - 8);
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

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_10000E95C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003DC0(&qword_100054A48, &qword_1000430B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003DC0(&qword_100054A38, &unk_100043590);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10000EAA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1000291E8(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10000F3B0();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_100041C6C();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_10000EF94(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_100041C6C();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_10000EC14(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_100041C6C();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_100003DC0(&qword_100054A50, &qword_1000430C0);
  v46 = a2;
  result = sub_1000421DC();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_10004226C();
      sub_100041F2C();
      result = sub_10004227C();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t sub_10000EF94(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10004212C() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_10004226C();

      sub_100041F2C();
      v13 = sub_10004227C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_100041C6C() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10000F180(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1000291E8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_10000F3B0();
      goto LABEL_7;
    }

    sub_10000EC14(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_1000291E8(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_10004224C();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_100041C6C();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_10000F300(v12, a2, a3, a1, v18);
}

uint64_t sub_10000F300(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_100041C6C();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

char *sub_10000F3B0()
{
  v1 = v0;
  v36 = sub_100041C6C();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003DC0(&qword_100054A50, &qword_1000430C0);
  v4 = *v0;
  v5 = sub_1000421CC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_10000F630(uint64_t a1)
{
  v43 = sub_100003DC0(&qword_1000546A8, &unk_100042AC0);
  v2 = *(*(v43 - 8) + 64);
  v3 = __chkstk_darwin(v43);
  v42 = (&v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v3);
  v8 = &v38 - v7;
  v9 = &_swiftEmptyArrayStorage;
  v41 = *(a1 + 16);
  if (v41)
  {
    v44 = v6;
    v10 = *(v6 + 80);
    v38 = v10;
    v39 = (v10 + 32) & ~v10;
    v11 = &_swiftEmptyArrayStorage + v39;
    v12 = 0;
    v13 = 0;
    v14 = *(type metadata accessor for PersonEntryType(0) - 8);
    v15 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v40 = *(v14 + 72);
    v16 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v17 = v42;
      v18 = *(v43 + 48);
      *v42 = v12;
      sub_10000FB1C(v15, v17 + v18, type metadata accessor for PersonEntryType);
      v19 = v8;
      result = sub_100004C8C(v17, v8, &qword_1000546A8, &unk_100042AC0);
      if (v13)
      {
        v45 = v16;
      }

      else
      {
        v20 = v16[3];
        if (((v20 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v21 = v20 & 0xFFFFFFFFFFFFFFFELL;
        if (v21 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        sub_100003DC0(&qword_100054B30, &unk_1000430F8);
        v23 = *(v44 + 72);
        v24 = v39;
        v45 = swift_allocObject();
        result = j__malloc_size(v45);
        if (!v23)
        {
          goto LABEL_35;
        }

        v25 = result - v24;
        if (result - v24 == 0x8000000000000000 && v23 == -1)
        {
          goto LABEL_36;
        }

        v27 = v25 / v23;
        v28 = v45;
        *(v45 + 2) = v22;
        v28[3] = 2 * (v25 / v23);
        v29 = v28 + v24;
        v30 = v16[3] >> 1;
        v31 = v30 * v23;
        if (v16[2])
        {
          if (v28 < v16 || v29 >= v16 + v39 + v31)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v28 != v16)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v16[2] = 0;
        }

        v11 = &v29[v31];
        v13 = (v27 & 0x7FFFFFFFFFFFFFFFLL) - v30;
      }

      v33 = v44;
      v8 = v19;
      v34 = __OFSUB__(v13--, 1);
      if (v34)
      {
        break;
      }

      ++v12;
      result = sub_100004C8C(v19, v11, &qword_1000546A8, &unk_100042AC0);
      v11 += *(v33 + 72);
      v15 += v40;
      v9 = v45;
      v16 = v45;
      if (v41 == v12)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v13 = 0;
LABEL_29:
  v35 = v9[3];
  if (v35 < 2)
  {
    return v9;
  }

  v36 = v35 >> 1;
  v34 = __OFSUB__(v36, v13);
  v37 = v36 - v13;
  if (!v34)
  {
    v9[2] = v37;
    return v9;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_10000F98C(uint64_t result)
{
  v1 = *(result + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = &_swiftEmptyArrayStorage + 32;
    v6 = result + 32;
    while (1)
    {
      v7 = *(v6 + 8 * v3);
      if (v4)
      {
        v8 = *(v6 + 8 * v3);

        v9 = __OFSUB__(v4--, 1);
        if (v9)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v10 = *(v2 + 3);
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_28;
        }

        v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        sub_100003DC0(&qword_1000549C0, &qword_100043028);
        v13 = swift_allocObject();
        v14 = j__malloc_size(v13);
        v15 = v14 - 32;
        if (v14 < 32)
        {
          v15 = v14 - 17;
        }

        v16 = v15 >> 4;
        *(v13 + 2) = v12;
        *(v13 + 3) = 2 * (v15 >> 4);
        v17 = v13 + 32;
        v18 = *(v2 + 3) >> 1;
        v5 = &v13[16 * v18 + 32];
        v19 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - v18;
        if (*(v2 + 2))
        {
          v20 = v2 + 32;
          if (v13 != v2 || v17 >= &v20[16 * v18])
          {
            memmove(v17, v20, 16 * v18);
          }

          *(v2 + 2) = 0;
        }

        else
        {
        }

        v2 = v13;
        v9 = __OFSUB__(v19, 1);
        v4 = v19 - 1;
        if (v9)
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      *(v5 + 1) = v7;
      v5 += 16;
      if (v1 == ++v3)
      {
        goto LABEL_23;
      }
    }
  }

  v4 = 0;
LABEL_23:
  v21 = *(v2 + 3);
  if (v21 >= 2)
  {
    v22 = v21 >> 1;
    v9 = __OFSUB__(v22, v4);
    v23 = v22 - v4;
    if (v9)
    {
      goto LABEL_29;
    }

    *(v2 + 2) = v23;
  }

  return v2;
}

uint64_t sub_10000FB1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000FB84()
{
  v1 = type metadata accessor for MultipleContactsEntryView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = type metadata accessor for MultipleContactsEntry(0);
  v8 = v7[5];
  v9 = sub_10004089C();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = v7[7];
  v11 = sub_1000408CC();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);
  v12 = v7[8];
  v13 = sub_100041E3C();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v3 + v12, 1, v13))
  {
    (*(v14 + 8))(v5 + v12, v13);
  }

  v15 = *(v5 + v1[5]);

  v16 = v1[6];
  sub_100003DC0(&qword_100054668, &qword_100042AA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_100041D5C();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
    v18 = *(v5 + v16);
  }

  v19 = v1[7];
  sub_100003DC0(&qword_100054708, &qword_100042D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_1000414EC();
    (*(*(v20 - 8) + 8))(v5 + v19, v20);
  }

  else
  {
    v21 = *(v5 + v19);
  }

  v22 = *(v5 + v1[8] + 16);

  v23 = v1[9];
  sub_100003DC0(&qword_100054710, &unk_100042C00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = sub_100041CFC();
    (*(*(v24 - 8) + 8))(v5 + v23, v24);
  }

  else
  {
    v25 = *(v5 + v23);
  }

  sub_10000FEBC(*(v5 + v1[10]), *(v5 + v1[10] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000FEBC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10000FEC8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for MultipleContactsEntryView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10000C624(a1, v6, a2);
}

uint64_t sub_10000FF50()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000FF88(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

unint64_t sub_10000FFB8()
{
  result = qword_100054998;
  if (!qword_100054998)
  {
    sub_100003E08(&qword_100054988, &qword_100042FE8);
    sub_10000E448(&qword_1000549A0, type metadata accessor for MultipleContactsRowView);
    sub_100004D80(&qword_1000549A8, &qword_1000549B0, &qword_100042FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054998);
  }

  return result;
}

uint64_t sub_1000100AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MultipleContactsEntryView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_10000C4C0(v6, a1);
}

uint64_t sub_100010120()
{
  v1 = type metadata accessor for MultipleContactsEntryView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = type metadata accessor for MultipleContactsEntry(0);
  v9 = v8[5];
  v10 = sub_10004089C();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  v11 = v8[7];
  v12 = sub_1000408CC();
  (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);
  v13 = v8[8];
  v14 = sub_100041E3C();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v3 + v13, 1, v14))
  {
    (*(v15 + 8))(v6 + v13, v14);
  }

  v16 = *(v6 + v1[5]);

  v17 = v1[6];
  sub_100003DC0(&qword_100054668, &qword_100042AA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_100041D5C();
    (*(*(v18 - 8) + 8))(v6 + v17, v18);
  }

  else
  {
    v19 = *(v6 + v17);
  }

  v20 = v1[7];
  sub_100003DC0(&qword_100054708, &qword_100042D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_1000414EC();
    (*(*(v21 - 8) + 8))(v6 + v20, v21);
  }

  else
  {
    v22 = *(v6 + v20);
  }

  v23 = *(v6 + v1[8] + 16);

  v24 = v1[9];
  sub_100003DC0(&qword_100054710, &unk_100042C00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = sub_100041CFC();
    (*(*(v25 - 8) + 8))(v6 + v24, v25);
  }

  else
  {
    v26 = *(v6 + v24);
  }

  sub_10000FEBC(*(v6 + v1[10]), *(v6 + v1[10] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100010460(uint64_t a1)
{
  v3 = *(type metadata accessor for MultipleContactsEntryView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_10000C54C(a1, v4, v5, v6);
}

uint64_t sub_1000104F8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100010530(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL sub_100010598(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v3 = sub_1000414EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  v11(&v19 - v9, a2, v3);
  v12 = *(v4 + 88);
  v13 = v12(v10, v3);
  v14 = 0;
  v15 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v13 != enum case for ContentSizeCategory.extraSmall(_:))
  {
    if (v13 == enum case for ContentSizeCategory.small(_:))
    {
      v14 = 1;
      goto LABEL_24;
    }

    if (v13 == enum case for ContentSizeCategory.medium(_:))
    {
      v14 = 2;
      goto LABEL_24;
    }

    if (v13 == enum case for ContentSizeCategory.large(_:))
    {
      goto LABEL_7;
    }

    if (v13 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      v14 = 4;
    }

    else if (v13 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
      v14 = 5;
    }

    else if (v13 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
      v14 = 6;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
      v14 = 7;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
      v14 = 8;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
      v14 = 9;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
      v14 = 10;
    }

    else
    {
      if (v13 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        (*(v4 + 8))(v10, v3);
LABEL_7:
        v14 = 3;
        goto LABEL_24;
      }

      v14 = 11;
    }
  }

LABEL_24:
  v11(v8, v20, v3);
  v16 = v12(v8, v3);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else if (v16 == enum case for ContentSizeCategory.small(_:))
  {
    v17 = 1;
  }

  else if (v16 == enum case for ContentSizeCategory.medium(_:))
  {
    v17 = 2;
  }

  else
  {
    if (v16 != enum case for ContentSizeCategory.large(_:))
    {
      if (v16 == enum case for ContentSizeCategory.extraLarge(_:))
      {
        v17 = 4;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.extraExtraLarge(_:))
      {
        v17 = 5;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        v17 = 6;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityMedium(_:))
      {
        v17 = 7;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityLarge(_:))
      {
        v17 = 8;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
      {
        v17 = 9;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
      {
        v17 = 10;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v17 = 11;
        return v14 < v17;
      }

      (*(v4 + 8))(v8, v3);
    }

    v17 = 3;
  }

  return v14 < v17;
}

uint64_t sub_1000109B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000109E8()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000AB88;

  return sub_100008048();
}

void *sub_100010A94(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100010B2C()
{
  v1 = sub_100041E5C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 176) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_10004095C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = v0[2];

  sub_100010DCC(v0 + 3);
  sub_100010DCC(v0 + 8);
  sub_100010DCC(v0 + 13);
  v13 = v0[18];

  v14 = v0[19];

  v15 = v0[20];

  (*(v2 + 8))(v0 + v4, v1);
  v16 = *(v0 + v5 + 8);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

size_t sub_100010CC4(uint64_t a1, char a2)
{
  v5 = *(sub_100041E5C() - 8);
  v6 = (*(v5 + 80) + 176) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_10004095C() - 8);
  v10 = *(v2 + v7 + 8);
  v11 = v2 + ((v7 + *(v8 + 80) + 16) & ~*(v8 + 80));
  return sub_100008178(a1, a2 & 1, *(v2 + 16), v2 + 24, *(v2 + 152), *(v2 + 160), v2 + v6, *(v2 + v7), *(v2 + 168));
}

uint64_t sub_100010DCC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100010E18(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100010E24()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t *sub_100010E64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1();
  v4 = sub_100006DE8(v3, sub_100025AC0);

  return v4;
}

uint64_t sub_100010EB8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t sub_100010EE4()
{
  result = qword_100054A28;
  if (!qword_100054A28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100054A28);
  }

  return result;
}

uint64_t sub_100010F30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100010F94(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100010FE8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100010FFC(a1, a2);
  }

  return a1;
}

uint64_t sub_100010FFC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10001106C()
{
  v1 = sub_10004095C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 184) & ~v3;
  v5 = *(v2 + 64);
  v6 = v0[2];

  v7 = v0[3];

  sub_100010DCC(v0 + 4);
  sub_100010DCC(v0 + 9);
  sub_100010DCC(v0 + 14);
  v8 = v0[19];

  v9 = v0[20];

  v10 = v0[22];

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100011168(uint64_t a1, char a2)
{
  v5 = *(sub_10004095C() - 8);
  v7 = v2 + ((*(v5 + 80) + 184) & ~*(v5 + 80));
  return sub_100005D5C(a1, a2 & 1, *(v2 + 16), *(v2 + 24), (v2 + 32), *(v2 + 160), *(v2 + 168), *(v2 + 176));
}

uint64_t sub_1000111F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100011258(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003DC0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000112D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100041BAC();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100011354(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100041BAC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1000113DC()
{
  v0 = sub_100041BAC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

unint64_t sub_100011438()
{
  result = qword_100054B08;
  if (!qword_100054B08)
  {
    sub_100003E08(&qword_100054B10, &unk_1000430E8);
    sub_1000114C4();
    sub_1000115D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054B08);
  }

  return result;
}

unint64_t sub_1000114C4()
{
  result = qword_100054B18;
  if (!qword_100054B18)
  {
    sub_100003E08(&qword_100054968, &qword_100042FA8);
    sub_100003E08(&qword_100054920, &qword_100042F88);
    sub_10000E4B4();
    swift_getOpaqueTypeConformance2();
    sub_10000E448(&qword_100054B20, type metadata accessor for TimeStampModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054B18);
  }

  return result;
}

unint64_t sub_1000115D0()
{
  result = qword_100054B28;
  if (!qword_100054B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054B28);
  }

  return result;
}

uint64_t sub_100011658(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for SingleContactTimelineEntry(0);
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
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_100003DC0(&qword_100054598, &unk_100042E50);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = sub_100003DC0(&qword_100054848, &unk_100042E60);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_100011818(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for SingleContactTimelineEntry(0);
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
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_100003DC0(&qword_100054598, &unk_100042E50);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = sub_100003DC0(&qword_100054848, &unk_100042E60);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

void sub_1000119C4()
{
  type metadata accessor for SingleContactTimelineEntry(319);
  if (v0 <= 0x3F)
  {
    sub_100040D9C();
    if (v1 <= 0x3F)
    {
      sub_1000120DC(319, &qword_100054608, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_1000120DC(319, &qword_1000548C8, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_100011AF0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100011AF0()
{
  if (!qword_100054BA0)
  {
    v0 = sub_1000411AC();
    if (!v1)
    {
      atomic_store(v0, &qword_100054BA0);
    }
  }
}

uint64_t sub_100011B54(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10004089C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_100040D7C();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  if (a2 == 254)
  {
    v16 = *(a1 + a3[7]);
    if (v16 >= 2)
    {
      return ((v16 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v17 = sub_1000408CC();
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[8];
    goto LABEL_7;
  }

  v18 = sub_100003DC0(&qword_100054788, &unk_100042DD0);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[9];

  return v19(v20, a2, v18);
}

uint64_t sub_100011D90(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_10004089C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100040D7C();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  if (a3 == 254)
  {
    *(a1 + a4[7]) = a2 + 1;
    return result;
  }

  v17 = sub_1000408CC();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_7;
  }

  v18 = sub_100003DC0(&qword_100054788, &unk_100042DD0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[9];

  return v19(v20, a2, a2, v18);
}

void sub_100011FA8()
{
  sub_10004089C();
  if (v0 <= 0x3F)
  {
    sub_100040D7C();
    if (v1 <= 0x3F)
    {
      sub_1000120DC(319, &qword_100054C48, &type metadata accessor for PersonInfo, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1000408CC();
        if (v3 <= 0x3F)
        {
          sub_1000120DC(319, &unk_100054800, &type metadata accessor for TimelineEntryRelevance, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000120DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100012140(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = type metadata accessor for SingleContactTimelineEntry(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = &_swiftEmptyArrayStorage;
  if (!v11)
  {
    return v12;
  }

  v22 = &_swiftEmptyArrayStorage;
  sub_1000243B8(0, v11, 0);
  v12 = v22;
  v13 = *(sub_100040EBC() - 8);
  v14 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v19 = *(v13 + 72);
  while (1)
  {
    v20(v14);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = v12[2];
    v15 = v12[3];
    if (v16 >= v15 >> 1)
    {
      sub_1000243B8(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    v12[2] = v16 + 1;
    sub_10001D120(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16);
    v14 += v19;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100012328(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_10004092C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(sub_100003DC0(&qword_1000546F0, &unk_100044170) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = sub_10004100C();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = *(*(sub_100003DC0(&qword_100054DF0, &qword_100043528) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v12 = sub_10004098C();
  v3[13] = v12;
  v13 = *(v12 - 8);
  v3[14] = v13;
  v14 = *(v13 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v15 = sub_10004095C();
  v3[18] = v15;
  v16 = *(v15 - 8);
  v3[19] = v16;
  v17 = *(v16 + 64) + 15;
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_100012588, 0, 0);
}

uint64_t sub_100012588()
{
  v82 = v0;
  v1 = v0[20];
  v3 = v0[16];
  v2 = v0[17];
  sub_100040ACC();
  sub_10004093C();
  sub_100040ACC();
  v4 = sub_10004097C();
  v5 = sub_1000420CC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Snapshot requested for single contact widget", v6, 2u);
  }

  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[14];
  v10 = v0[12];
  v11 = v0[9];
  v12 = v0[10];
  v13 = v0[3];

  v14 = *(v9 + 8);
  v14(v7, v8);
  sub_100040D5C();
  v15 = (*(v12 + 48))(v10, 1, v11);
  v16 = v0[12];
  if (v15)
  {
    sub_1000049F8(v0[12], &qword_100054DF0, &qword_100043528);
LABEL_11:
    v37 = v0[20];
    v38 = v0[7];
    sub_10004091C();
    v39 = sub_10004094C();
    v40 = sub_1000420DC();
    if (sub_1000420EC())
    {
      v41 = v0[7];
      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = sub_10004090C();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, v40, v43, "getSnapshot", "no contact", v42, 2u);
    }

    v45 = v0[6];
    v44 = v0[7];
    v46 = v0[5];
    v47 = v0[2];
    v48 = v0[3];

    (*(v45 + 8))(v44, v46);
    sub_10004088C();
    v49 = type metadata accessor for SingleContactTimelineEntry(0);
    v50 = v49[5];
    v51 = sub_100040D7C();
    (*(*(v51 - 8) + 16))(v47 + v50, v48, v51);
    v52 = v49[6];
    v53 = sub_100041BAC();
    (*(*(v53 - 8) + 56))(v47 + v52, 1, 1, v53);
    v54 = v49[9];
    v55 = sub_100041E3C();
    (*(*(v55 - 8) + 56))(v47 + v54, 1, 1, v55);
    *(v47 + v49[7]) = 0;
    v56 = v47 + v49[8];
    sub_1000408BC();
    *(v47 + v49[10]) = 0;
    v57 = v0[17];
    v59 = v0[15];
    v58 = v0[16];
    v61 = v0[11];
    v60 = v0[12];
    v63 = v0[7];
    v62 = v0[8];
    (*(v0[19] + 8))(v0[20], v0[18]);

    v64 = v0[1];

    return v64();
  }

  v17 = v0[10];
  v18 = v0[11];
  v19 = v0[9];
  (*(v17 + 16))(v18, v0[12], v19);
  sub_1000049F8(v16, &qword_100054DF0, &qword_100043528);
  v20 = sub_100040FFC();
  v22 = v21;
  v0[21] = v21;
  (*(v17 + 8))(v18, v19);

  v23 = sub_100040FEC();
  v25 = v24;

  if (!v25)
  {
LABEL_10:

    goto LABEL_11;
  }

  v26 = v0[4];
  v27 = v26[4];
  sub_100010A94(v26, v26[3]);
  v28 = sub_10004109C();
  v0[22] = v28;
  if (!v28)
  {

    goto LABEL_10;
  }

  v29 = v28;
  v30 = v0[15];
  sub_100040ACC();

  v31 = sub_10004097C();
  v32 = sub_1000420CC();

  v33 = os_log_type_enabled(v31, v32);
  v78 = v0[14];
  v34 = v0[13];
  v79 = v34;
  v80 = v0[15];
  if (v33)
  {
    v77 = v20;
    v35 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *v35 = 136315394;
    *(v35 + 4) = sub_10001BA5C(v77, v22, &v81);
    *(v35 + 12) = 2080;
    v36 = sub_10001BA5C(v23, v25, &v81);

    *(v35 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v31, v32, "get snapshot for single contact widget with appEntityID: %s, contactID: %s", v35, 0x16u);
    swift_arrayDestroy();

    v20 = v77;
  }

  else
  {
  }

  v14(v80, v79);
  v66 = v0[20];
  v67 = v0[8];
  v69 = v0[3];
  v68 = v0[4];
  v70 = v26[3];
  v71 = v26[4];
  sub_100010A94(v68, v70);
  sub_10004108C();
  v72 = swift_task_alloc();
  v0[23] = v72;
  v72[2] = v68;
  v72[3] = v29;
  v72[4] = v69;
  v72[5] = v67;
  v72[6] = v20;
  v72[7] = v22;
  v72[8] = v66;
  v73 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v74 = swift_task_alloc();
  v0[24] = v74;
  v75 = type metadata accessor for SingleContactTimelineEntry(0);
  *v74 = v0;
  v74[1] = sub_100012C74;
  v76 = v0[2];

  return withCheckedContinuation<A>(isolation:function:_:)(v76, 0, 0, 0xD000000000000011, 0x800000010004C490, sub_10001D184, v72, v75);
}

uint64_t sub_100012C74()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 168);
  v5 = *v0;

  return _swift_task_switch(sub_100012DA8, 0, 0);
}

uint64_t sub_100012DA8()
{
  v1 = *(v0 + 64);

  sub_1000049F8(v1, &qword_1000546F0, &unk_100044170);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100012EA4(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v51 = a8;
  v57 = a7;
  v56 = a6;
  v50 = a5;
  v49 = a4;
  v43 = a3;
  v46 = a1;
  v61 = sub_10004095C();
  v58 = *(v61 - 8);
  v54 = *(v58 + 64);
  __chkstk_darwin(v61);
  v60 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  __chkstk_darwin(v11 - 8);
  v59 = &v40 - v12;
  v13 = sub_100040D7C();
  v41 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v42 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100003DC0(&qword_100054E20, &unk_1000435A8);
  v40 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v40 - v19;
  v53 = a2[13];
  v55 = a2[14];
  v52 = sub_100010A94(a2 + 10, v53);
  v21 = [a3 identifier];
  v48 = sub_100041EFC();
  v47 = v22;

  sub_10001CABC(a2, v62);
  (*(v17 + 16))(v20, v46, v16);
  (*(v14 + 16))(&v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v49, v13);
  sub_100011258(v50, v59, &qword_1000546F0, &unk_100044170);
  v23 = v58;
  (*(v58 + 16))(v60, v51, v61);
  v24 = (*(v17 + 80) + 160) & ~*(v17 + 80);
  v25 = (v18 + *(v14 + 80) + v24) & ~*(v14 + 80);
  v26 = (v15 + *(v45 + 80) + v25) & ~*(v45 + 80);
  v27 = (v44 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (*(v23 + 80) + v27 + 16) & ~*(v23 + 80);
  v29 = swift_allocObject();
  v30 = v62[7];
  *(v29 + 112) = v62[6];
  *(v29 + 128) = v30;
  v31 = v63;
  v32 = v62[3];
  *(v29 + 48) = v62[2];
  *(v29 + 64) = v32;
  v33 = v62[5];
  *(v29 + 80) = v62[4];
  *(v29 + 96) = v33;
  v34 = v62[1];
  *(v29 + 16) = v62[0];
  *(v29 + 32) = v34;
  v35 = v43;
  *(v29 + 144) = v31;
  *(v29 + 152) = v35;
  (*(v17 + 32))(v29 + v24, v20, v40);
  (*(v14 + 32))(v29 + v25, v42, v41);
  sub_100004C8C(v59, v29 + v26, &qword_1000546F0, &unk_100044170);
  v36 = (v29 + v27);
  v37 = v57;
  *v36 = v56;
  v36[1] = v37;
  (*(v58 + 32))(v29 + v28, v60, v61);
  v38 = v35;

  sub_1000410AC();
}

uint64_t sub_1000133E8(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v103 = a8;
  v96 = a7;
  v104 = a6;
  v105 = a5;
  v109 = a4;
  v13 = sub_10004092C();
  v107 = *(v13 - 8);
  v108 = v13;
  v14 = *(v107 + 64);
  __chkstk_darwin(v13);
  v106 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100003DC0(&qword_100054E10, &qword_100043558);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v99 = &v87 - v18;
  v19 = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v95 = &v87 - v21;
  v98 = type metadata accessor for SingleContactTimelineEntry(0);
  v22 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v97 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_100040E0C();
  v91 = *(v92 - 8);
  v24 = *(v91 + 64);
  __chkstk_darwin(v92);
  v93 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_10004116C();
  v101 = *(v102 - 8);
  v26 = *(v101 + 64);
  v27 = __chkstk_darwin(v102);
  v94 = &v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v100 = &v87 - v29;
  v30 = sub_10004098C();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = __chkstk_darwin(v30);
  v35 = &v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v37 = &v87 - v36;
  v38 = sub_10004089C();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  v42 = &v87 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = a3;
  v88 = v30;
  if (a2)
  {
    *&v115 = a1;
    swift_errorRetain();
    sub_100003DC0(&qword_100054A20, &unk_100043580);
    swift_willThrowTypedImpl();
    sub_100040ACC();
    swift_errorRetain();
    sub_10004096C();
    sub_100010E18(a1, 1);
    (*(v31 + 8))(v37, v30);
    sub_100010E18(a1, 1);
    v43 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v44 = *(a3 + 120);
    sub_100006DD0(a1);
    sub_10004088C();
    v43 = sub_100040F0C();

    (*(v39 + 8))(v42, v38);
  }

  sub_100040ACC();
  v45 = v109;

  v46 = sub_10004097C();
  v47 = sub_1000420CC();

  v48 = os_log_type_enabled(v46, v47);
  v90 = a10;
  v89 = a9;
  v109 = v45;
  if (v48)
  {
    v49 = swift_slowAlloc();
    *&v115 = swift_slowAlloc();
    *v49 = 136315394;
    v50 = v35;
    v51 = [v45 identifier];
    v52 = sub_100041EFC();
    v54 = v53;

    v55 = sub_10001BA5C(v52, v54, &v115);
    v56 = v110;

    *(v49 + 4) = v55;
    *(v49 + 12) = 2080;
    sub_100003DC0(&qword_100054A30, &unk_1000430A0);
    v57 = sub_100041FCC();
    v59 = sub_10001BA5C(v57, v58, &v115);

    *(v49 + 14) = v59;
    v45 = v109;
    _os_log_impl(&_mh_execute_header, v46, v47, "Creating snapshot for contact %s with statues %s", v49, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v50, v88);
    v60 = v43[2];
    if (v60)
    {
LABEL_6:
      v88 = v43;
      v61 = (v43 + 4);
      v62 = &_swiftEmptyArrayStorage;
      while (1)
      {
        sub_100010F30(v61, &v115);
        sub_100004B44(&v115, v114);
        sub_100003DC0(&qword_100054A30, &unk_1000430A0);
        sub_100003DC0(&qword_100054A38, &unk_100043590);
        if (swift_dynamicCast())
        {
          if (*(&v112 + 1))
          {
            sub_100004B44(&v111, v114);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v62 = sub_10000E95C(0, v62[2] + 1, 1, v62);
            }

            v64 = v62[2];
            v63 = v62[3];
            if (v64 >= v63 >> 1)
            {
              v62 = sub_10000E95C((v63 > 1), v64 + 1, 1, v62);
            }

            v62[2] = v64 + 1;
            sub_100004B44(v114, &v62[5 * v64 + 4]);
            goto LABEL_9;
          }
        }

        else
        {
          v113 = 0;
          v111 = 0u;
          v112 = 0u;
        }

        sub_1000049F8(&v111, &qword_100054A40, &qword_1000430B0);
LABEL_9:
        v61 += 40;
        if (!--v60)
        {

          v45 = v109;
          v56 = v110;
          goto LABEL_20;
        }
      }
    }
  }

  else
  {

    (*(v31 + 8))(v35, v88);
    v56 = v110;
    v60 = v43[2];
    if (v60)
    {
      goto LABEL_6;
    }
  }

LABEL_20:
  (*(v91 + 104))(v93, enum case for ContactFormatter.Style.shortName(_:), v92);
  sub_100041F4C();
  v116 = sub_100040E2C();
  v117 = &protocol witness table for ContactFormatter;
  sub_100004AC8(&v115);
  sub_100040E1C();
  v65 = v45;
  v66 = v100;
  sub_10004113C();
  v67 = v97;
  sub_10004088C();
  v68 = v98;
  v69 = *(v98 + 20);
  v70 = sub_100040D7C();
  v71 = v104;
  (*(*(v70 - 8) + 16))(&v67[v69], v104, v70);
  v72 = v68[6];
  v73 = v101;
  v74 = v102;
  (*(v101 + 16))(v94, v66, v102);
  sub_100011258(v96, v95, &qword_1000546F0, &unk_100044170);
  sub_100041B9C();
  v75 = sub_100041BAC();
  (*(*(v75 - 8) + 56))(&v67[v72], 0, 1, v75);
  v76 = v68[9];
  v77 = sub_100041E3C();
  (*(*(v77 - 8) + 56))(&v67[v76], 1, 1, v77);
  v78 = *(v56 + 128);
  v79 = v99;
  sub_100040A2C();
  LOBYTE(v76) = sub_10002706C(v66, v71, v79);
  sub_1000049F8(v79, &qword_100054E10, &qword_100043558);
  v67[v68[7]] = 0;
  v80 = &v67[v68[8]];
  sub_1000408BC();
  v67[v68[10]] = v76 & 1;
  sub_100003DC0(&qword_100054E20, &unk_1000435A8);
  sub_10004201C();
  v81 = v106;
  sub_10004091C();
  v82 = sub_10004094C();
  v83 = sub_1000420DC();
  if (sub_1000420EC())
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    v85 = sub_10004090C();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v82, v83, v85, "getSnapshot", "Completed", v84, 2u);
  }

  (*(v107 + 8))(v81, v108);
  return (*(v73 + 8))(v66, v74);
}

uint64_t sub_100013FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_100041DDC() - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = *(*(sub_100003DC0(&qword_100054788, &unk_100042DD0) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = sub_10004092C();
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64) + 15;
  v4[10] = swift_task_alloc();
  v10 = *(*(sub_100003DC0(&qword_1000546F0, &unk_100044170) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_10004089C();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = *(*(sub_100003DC0(&qword_1000549E8, &qword_100043520) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v15 = sub_10004100C();
  v4[16] = v15;
  v16 = *(v15 - 8);
  v4[17] = v16;
  v17 = *(v16 + 64) + 15;
  v4[18] = swift_task_alloc();
  v18 = *(*(sub_100003DC0(&qword_100054DF0, &qword_100043528) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v19 = sub_100040D7C();
  v4[23] = v19;
  v20 = *(v19 - 8);
  v4[24] = v20;
  v21 = *(v20 + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v22 = sub_10004098C();
  v4[27] = v22;
  v23 = *(v22 - 8);
  v4[28] = v23;
  v24 = *(v23 + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v25 = sub_10004095C();
  v4[34] = v25;
  v26 = *(v25 - 8);
  v4[35] = v26;
  v27 = *(v26 + 64) + 15;
  v4[36] = swift_task_alloc();

  return _swift_task_switch(sub_1000143C8, 0, 0);
}

uint64_t sub_1000143C8()
{
  v187 = v0;
  v1 = v0[36];
  v3 = v0[32];
  v2 = v0[33];
  sub_100040ACC();
  sub_10004093C();
  sub_100040ACC();
  v4 = sub_10004097C();
  v5 = sub_1000420CC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "getTimeline requested for single contact widget", v6, 2u);
  }

  v8 = v0[31];
  v7 = v0[32];
  v9 = v0[27];
  v10 = v0[28];
  v11 = v0[26];
  v180 = v0[25];
  v13 = v0[23];
  v12 = v0[24];
  v14 = v0[3];

  v15 = *(v10 + 8);
  v15(v7, v9);
  v16 = v15;
  sub_100040ACC();
  v17 = *(v12 + 16);
  v17(v11, v14, v13);
  v173 = v17;
  v17(v180, v14, v13);
  v18 = sub_10004097C();
  v19 = sub_1000420CC();
  if (os_log_type_enabled(v18, v19))
  {
    v165 = v19;
    log = v18;
    v181 = v16;
    v20 = v0[26];
    v21 = v0[22];
    v23 = v0[16];
    v22 = v0[17];
    v24 = swift_slowAlloc();
    v186 = swift_slowAlloc();
    *v24 = 136315394;
    sub_100040D5C();
    v160 = *(v22 + 48);
    v25 = v160(v21, 1, v23);
    v26 = v0[22];
    if (v25)
    {
      sub_1000049F8(v0[22], &qword_100054DF0, &qword_100043528);
      v27 = 0xE100000000000000;
      v28 = 45;
    }

    else
    {
      v39 = v0[17];
      v40 = v0[18];
      v41 = v0[16];
      (*(v39 + 16))(v40, v0[22], v41);
      sub_1000049F8(v26, &qword_100054DF0, &qword_100043528);
      v28 = sub_100040FDC();
      v27 = v42;
      (*(v39 + 8))(v40, v41);
    }

    v43 = v0[25];
    v44 = v0[21];
    v45 = v0[16];
    v46 = *(v0[24] + 8);
    v46(v0[26], v0[23]);
    v47 = sub_10001BA5C(v28, v27, &v186);

    *(v24 + 4) = v47;
    *(v24 + 12) = 2080;
    sub_100040D5C();
    v48 = v160(v44, 1, v45);
    v49 = v0[21];
    if (v48)
    {
      sub_1000049F8(v0[21], &qword_100054DF0, &qword_100043528);
      v50 = 0xE100000000000000;
      v51 = 45;
    }

    else
    {
      v52 = v0[17];
      v53 = v0[18];
      v54 = v0[16];
      (*(v52 + 16))(v53, v0[21], v54);
      sub_1000049F8(v49, &qword_100054DF0, &qword_100043528);
      v51 = sub_100040FFC();
      v50 = v55;
      (*(v52 + 8))(v53, v54);
    }

    v56 = v0[31];
    v58 = v0[27];
    v57 = v0[28];
    v46(v0[25], v0[23]);
    v59 = sub_10001BA5C(v51, v50, &v186);

    *(v24 + 14) = v59;
    _os_log_impl(&_mh_execute_header, log, v165, "SingleContactTimelineProvider person: %s, id: %s", v24, 0x16u);
    swift_arrayDestroy();

    v37 = v56;
    v38 = v58;
    v16 = v181;
  }

  else
  {
    v29 = v0[31];
    v31 = v0[27];
    v30 = v0[28];
    v33 = v0[25];
    v32 = v0[26];
    v34 = v0[23];
    v35 = v0[24];

    v36 = *(v35 + 8);
    v36(v33, v34);
    v36(v32, v34);
    v37 = v29;
    v38 = v31;
  }

  v16(v37, v38);
  v60 = v0[20];
  v61 = v0[16];
  v62 = v0[17];
  v63 = v0[15];
  v64 = v0[3];
  v65 = sub_10004205C();
  (*(*(v65 - 8) + 56))(v63, 1, 1, v65);
  v66 = swift_allocObject();
  *(v66 + 16) = 0;
  *(v66 + 24) = 0;
  sub_1000279C0(0, 0, v63, &unk_100043538, v66);

  sub_100040D5C();
  v67 = *(v62 + 48);
  v68 = v67(v60, 1, v61);
  v69 = v0[20];
  if (v68)
  {
    sub_1000049F8(v0[20], &qword_100054DF0, &qword_100043528);
LABEL_23:
    v106 = v0[29];
    sub_100040ACC();
    v107 = sub_10004097C();
    v108 = sub_1000420AC();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      *v109 = 0;
      _os_log_impl(&_mh_execute_header, v107, v108, "Could not get contact for SingleContactTimelineProvider", v109, 2u);
    }

    v110 = v0[36];
    v112 = v0[28];
    v111 = v0[29];
    v113 = v0[27];
    v114 = v0[10];

    v16(v111, v113);
    sub_10004091C();
    v115 = sub_10004094C();
    v116 = sub_1000420DC();
    if (sub_1000420EC())
    {
      v117 = v0[10];
      v118 = swift_slowAlloc();
      *v118 = 0;
      v119 = sub_10004090C();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v115, v116, v119, "getTimeline", "no contact", v118, 2u);
    }

    v120 = v0[23];
    v122 = v0[13];
    v121 = v0[14];
    v123 = v0[9];
    v124 = v0[10];
    v125 = v0[7];
    v126 = v0[8];
    v167 = v0[12];
    logb = v0[6];
    v127 = v0[3];
    v183 = v0[2];

    (*(v123 + 8))(v124, v126);
    sub_100003DC0(&qword_100054DF8, &qword_100043540);
    v128 = type metadata accessor for SingleContactTimelineEntry(0);
    v129 = *(*(v128 - 1) + 72);
    v130 = (*(*(v128 - 1) + 80) + 32) & ~*(*(v128 - 1) + 80);
    v131 = swift_allocObject();
    *(v131 + 16) = xmmword_100042C30;
    v132 = v131 + v130;
    sub_10004088C();
    v173(v132 + v128[5], v127, v120);
    v133 = v128[6];
    v134 = sub_100041BAC();
    (*(*(v134 - 8) + 56))(v132 + v133, 1, 1, v134);
    v135 = sub_100041E3C();
    (*(*(v135 - 8) + 56))(v125, 1, 1, v135);
    (*(v122 + 32))(v132, v121, v167);
    *(v132 + v128[7]) = 0;
    v136 = v132 + v128[8];
    sub_1000408BC();
    sub_100004C8C(v125, v132 + v128[9], &qword_100054788, &unk_100042DD0);
    *(v132 + v128[10]) = 0;
    sub_100041DCC();
    sub_10001B408(&qword_100054DE0, type metadata accessor for SingleContactTimelineEntry);
    sub_100041E9C();
    v137 = v0[33];
    v139 = v0[31];
    v138 = v0[32];
    v141 = v0[29];
    v140 = v0[30];
    v143 = v0[25];
    v142 = v0[26];
    v144 = v0[22];
    v157 = v0[21];
    v158 = v0[20];
    v159 = v0[19];
    v162 = v0[18];
    v164 = v0[15];
    v168 = v0[14];
    logc = v0[11];
    v175 = v0[10];
    v178 = v0[7];
    v184 = v0[6];
    (*(v0[35] + 8))(v0[36], v0[34]);

    v145 = v0[1];

    return v145();
  }

  v182 = v16;
  v71 = v0[18];
  v70 = v0[19];
  v73 = v0[16];
  v72 = v0[17];
  v74 = v0[3];
  v163 = *(v72 + 16);
  v163(v71, v69, v73);
  sub_1000049F8(v69, &qword_100054DF0, &qword_100043528);
  v166 = sub_100040FFC();
  loga = v75;
  v0[37] = v75;
  v161 = *(v72 + 8);
  v161(v71, v73);
  sub_100040D5C();
  v76 = v67(v70, 1, v73);
  v77 = v0[19];
  if (v76)
  {
    sub_1000049F8(v0[19], &qword_100054DF0, &qword_100043528);
  }

  else
  {
    v78 = v0[18];
    v79 = v0[16];
    v163(v78, v0[19], v79);
    sub_1000049F8(v77, &qword_100054DF0, &qword_100043528);
    sub_100040FFC();
    v161(v78, v79);
  }

  v80 = sub_100040FEC();
  v82 = v81;

  if (!v82)
  {
LABEL_22:

    goto LABEL_23;
  }

  v83 = v0[5];
  v84 = v83[4];
  sub_100010A94(v83, v83[3]);
  v85 = sub_10004109C();
  v0[38] = v85;
  if (!v85)
  {

    goto LABEL_22;
  }

  v86 = v85;
  v177 = v80;
  v87 = v0[30];
  v89 = v0[13];
  v88 = v0[14];
  v91 = v0[11];
  v90 = v0[12];
  v92 = v0[5];
  sub_10004088C();
  sub_10004086C();
  v94 = v93;
  (*(v89 + 8))(v88, v90);
  v95 = v83[4];
  sub_100010A94(v92, v83[3]);
  sub_10004108C();
  sub_100040ACC();

  v96 = sub_10004097C();
  v97 = sub_1000420CC();

  v98 = os_log_type_enabled(v96, v97);
  v99 = v0[30];
  v100 = v0[27];
  v101 = v0[28];
  if (v98)
  {
    v174 = v0[27];
    v102 = swift_slowAlloc();
    v186 = swift_slowAlloc();
    *v102 = 136315394;
    *(v102 + 4) = sub_10001BA5C(v166, loga, &v186);
    *(v102 + 12) = 2080;
    v103 = sub_10001BA5C(v177, v82, &v186);

    *(v102 + 14) = v103;
    _os_log_impl(&_mh_execute_header, v96, v97, "Get timeline for single contact widget with appEntityID: %s, contactID: %s", v102, 0x16u);
    swift_arrayDestroy();

    v104 = v99;
    v105 = v174;
  }

  else
  {

    v104 = v99;
    v105 = v100;
  }

  v182(v104, v105);
  v176 = v0[11];
  v147 = v0[5];
  v179 = v0[4];
  v185 = v0[36];
  v148 = v0[3];
  v149 = v83[3];
  v150 = v83[4];
  sub_100010A94(v147, v149);
  v151 = [v86 identifier];
  sub_100041EFC();

  sub_10004106C();

  v152 = swift_task_alloc();
  v0[39] = v152;
  v152[2] = v147;
  v152[3] = v86;
  v152[4] = v148;
  v152[5] = v176;
  v152[6] = v166;
  v152[7] = loga;
  v152[8] = v94;
  v152[9] = v179;
  v152[10] = v185;
  v153 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v154 = swift_task_alloc();
  v0[40] = v154;
  v155 = sub_100003DC0(&qword_100054E00, &qword_100043548);
  *v154 = v0;
  v154[1] = sub_100015298;
  v156 = v0[2];

  return withCheckedContinuation<A>(isolation:function:_:)(v156, 0, 0, 0xD000000000000011, 0x800000010004C440, sub_10001CA84, v152, v155);
}

uint64_t sub_100015298()
{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 312);
  v3 = *(*v0 + 296);
  v5 = *v0;

  return _swift_task_switch(sub_1000153CC, 0, 0);
}

uint64_t sub_1000153CC()
{
  v1 = *(v0 + 88);

  sub_1000049F8(v1, &qword_1000546F0, &unk_100044170);
  v2 = *(v0 + 264);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  v8 = *(v0 + 200);
  v7 = *(v0 + 208);
  v9 = *(v0 + 176);
  v12 = *(v0 + 168);
  v13 = *(v0 + 160);
  v14 = *(v0 + 152);
  v15 = *(v0 + 144);
  v16 = *(v0 + 120);
  v17 = *(v0 + 112);
  v18 = *(v0 + 88);
  v19 = *(v0 + 80);
  v20 = *(v0 + 56);
  v21 = *(v0 + 48);
  (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100015574()
{
  v0[2] = sub_100040BBC();
  v0[3] = v1;
  sub_10004203C();
  v0[4] = sub_10004202C();
  v3 = sub_10004200C();

  return _swift_task_switch(sub_100008100, v3, v2);
}

uint64_t sub_100015610(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  v61 = a8;
  v69 = a7;
  v68 = a6;
  v59 = a5;
  v56 = a4;
  v54 = a3;
  v62 = a1;
  v63 = a10;
  v76 = sub_10004095C();
  v72 = *(v76 - 8);
  v67 = *(v72 + 64);
  __chkstk_darwin(v76);
  v75 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_100003DC0(&qword_100054E08, &qword_100043550);
  v70 = *(v74 - 8);
  v60 = *(v70 + 64);
  __chkstk_darwin(v74);
  v73 = &v47 - v14;
  v71 = sub_100041E5C();
  v15 = *(v71 - 8);
  v55 = *(v15 + 64);
  __chkstk_darwin(v71);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v17;
  v18 = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  v53 = *(v18 - 8);
  v19 = *(v53 + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v47 - v20;
  v51 = &v47 - v20;
  v22 = sub_100040D7C();
  v49 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v50 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a2[13];
  v66 = a2[14];
  v64 = sub_100010A94(a2 + 10, v65);
  v25 = [a3 identifier];
  v58 = sub_100041EFC();
  v57 = v26;

  sub_10001CABC(a2, v77);
  (*(v23 + 16))(&v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v56, v22);
  sub_100011258(v59, v21, &qword_1000546F0, &unk_100044170);
  v48 = v15;
  (*(v15 + 16))(v17, v61, v71);
  v27 = v70;
  (*(v70 + 16))(v73, v62, v74);
  v28 = v72;
  (*(v72 + 16))(v75, v63, v76);
  v29 = (*(v23 + 80) + 160) & ~*(v23 + 80);
  v30 = (v24 + *(v53 + 80) + v29) & ~*(v53 + 80);
  v31 = (v19 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 23) & 0xFFFFFFFFFFFFFFF8;
  v33 = (*(v15 + 80) + v32 + 8) & ~*(v15 + 80);
  v34 = (v55 + *(v27 + 80) + v33) & ~*(v27 + 80);
  v35 = (v60 + *(v28 + 80) + v34) & ~*(v28 + 80);
  v36 = swift_allocObject();
  v37 = v77[7];
  *(v36 + 112) = v77[6];
  *(v36 + 128) = v37;
  v38 = v78;
  v39 = v77[3];
  *(v36 + 48) = v77[2];
  *(v36 + 64) = v39;
  v40 = v77[5];
  *(v36 + 80) = v77[4];
  *(v36 + 96) = v40;
  v41 = v77[1];
  *(v36 + 16) = v77[0];
  *(v36 + 32) = v41;
  v42 = v54;
  *(v36 + 144) = v38;
  *(v36 + 152) = v42;
  (*(v23 + 32))(v36 + v29, v50, v49);
  sub_100004C8C(v51, v36 + v30, &qword_1000546F0, &unk_100044170);
  v43 = (v36 + v31);
  v44 = v69;
  *v43 = v68;
  v43[1] = v44;
  *(v36 + v32) = a9;
  (*(v48 + 32))(v36 + v33, v52, v71);
  (*(v70 + 32))(v36 + v34, v73, v74);
  (*(v72 + 32))(v36 + v35, v75, v76);
  v45 = v42;

  sub_1000410AC();
}

uint64_t sub_100015CB4(void (*a1)(void, void), int a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, char *a7, char *a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v172 = a8;
  v171 = a7;
  v168 = a6;
  v173 = a5;
  v164 = a4;
  v170 = a3;
  v162 = a2;
  v193 = a1;
  v190 = a11;
  v191 = a12;
  v189 = a10;
  v13 = sub_100003DC0(&qword_100054E10, &qword_100043558);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v159 = &v145 - v15;
  v16 = sub_100003DC0(&qword_100054788, &unk_100042DD0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v160 = &v145 - v18;
  v19 = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v156 = &v145 - v21;
  v22 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v157 = &v145 - v24;
  v150 = sub_100040E0C();
  v149 = *(v150 - 8);
  v25 = *(v149 + 64);
  __chkstk_darwin(v150);
  v152 = &v145 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_10004116C();
  v158 = *(v166 - 8);
  v27 = *(v158 + 64);
  v28 = __chkstk_darwin(v166);
  v154 = &v145 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v165 = &v145 - v30;
  v31 = sub_10004092C();
  v187 = *(v31 - 8);
  v188 = v31;
  v32 = *(v187 + 64);
  __chkstk_darwin(v31);
  v186 = &v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100040ADC();
  v184 = *(v34 - 8);
  v185 = v34;
  v35 = *(v184 + 64);
  __chkstk_darwin(v34);
  v183 = &v145 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_100041D5C();
  v180 = *(v182 - 8);
  v37 = *(v180 + 64);
  __chkstk_darwin(v182);
  v178 = &v145 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_100040AEC();
  v179 = *(v181 - 8);
  v39 = *(v179 + 64);
  __chkstk_darwin(v181);
  v177 = &v145 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10004098C();
  v42 = *(v41 - 8);
  v43 = *(v42 + 8);
  v44 = __chkstk_darwin(v41);
  v46 = &v145 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v155 = &v145 - v47;
  v48 = sub_100003DC0(&qword_100054A00, &unk_100043560);
  v49 = *(*(v48 - 8) + 64);
  v50 = __chkstk_darwin(v48 - 8);
  v146 = &v145 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v145 = &v145 - v52;
  v53 = sub_100003DC0(&qword_100054A08, &unk_100043080);
  v54 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53 - 8);
  v147 = &v145 - v55;
  v153 = sub_100041DDC();
  v163 = *(v153 - 8);
  v56 = *(v163 + 64);
  v57 = __chkstk_darwin(v153);
  v59 = &v145 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v151 = &v145 - v60;
  v61 = sub_100003DC0(&qword_100054A10, &qword_100043570);
  v62 = *(v61 - 8);
  v63 = *(v62 + 64);
  __chkstk_darwin(v61);
  v65 = &v145 - v64;
  v192 = sub_10004089C();
  v161 = *(v192 - 8);
  v66 = *(v161 + 64);
  __chkstk_darwin(v192);
  v68 = &v145 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_100003DC0(&qword_100054E18, &qword_100043578);
  v148 = *(v69 - 8);
  v70 = *(v148 + 64);
  __chkstk_darwin(v69);
  v72 = &v145 - v71;
  v176 = sub_100003DC0(&qword_100054E00, &qword_100043548);
  v175 = *(v176 - 8);
  v73 = *(v175 + 64);
  v74 = __chkstk_darwin(v176);
  v174 = &v145 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v74);
  v169 = &v145 - v76;
  v167 = v59;
  if (v162)
  {
    v77 = v193;
    v194[0] = v193;
    swift_errorRetain();
    sub_100003DC0(&qword_100054A20, &unk_100043580);
    swift_willThrowTypedImpl();
    sub_100040ACC();
    swift_errorRetain();
    sub_10004096C();
    sub_100010E18(v77, 1);
    (*(v42 + 1))(v46, v41);
    (*(v149 + 104))(v152, enum case for ContactFormatter.Style.shortName(_:), v150);
    v78 = v164;
    sub_100041F4C();
    v194[3] = sub_100040E2C();
    v194[4] = &protocol witness table for ContactFormatter;
    sub_100004AC8(v194);
    sub_100040E1C();
    v79 = v165;
    sub_10004113C();
    sub_100003DC0(&qword_100054DF8, &qword_100043540);
    v80 = type metadata accessor for SingleContactTimelineEntry(0);
    v81 = *(*(v80 - 1) + 72);
    v82 = (*(*(v80 - 1) + 80) + 32) & ~*(*(v80 - 1) + 80);
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_100042C30;
    v84 = v83 + v82;
    sub_10004088C();
    v85 = v158;
    (*(v158 + 16))(v154, v79, v166);
    sub_100011258(v168, v156, &qword_1000546F0, &unk_100044170);
    v86 = v157;
    sub_100041B9C();
    v87 = sub_100041BAC();
    (*(*(v87 - 8) + 56))(v86, 0, 1, v87);
    v88 = v160;
    sub_100041B2C();
    v89 = sub_100041E3C();
    (*(*(v89 - 8) + 56))(v88, 0, 1, v89);
    v90 = *(v170 + 128);
    v91 = v159;
    sub_100040A2C();
    v92 = v79;
    v93 = v173;
    LOBYTE(v90) = sub_10002706C(v92, v173, v91);
    sub_1000049F8(v91, &qword_100054E10, &qword_100043558);
    (*(v161 + 32))(v84, v68, v192);
    v94 = v80[5];
    v95 = sub_100040D7C();
    (*(*(v95 - 8) + 16))(v84 + v94, v93, v95);
    sub_100004C8C(v86, v84 + v80[6], &qword_1000546B8, &unk_100042AD0);
    *(v84 + v80[7]) = 0;
    v96 = v84 + v80[8];
    sub_1000408BC();
    sub_100004C8C(v88, v84 + v80[9], &qword_100054788, &unk_100042DD0);
    *(v84 + v80[10]) = v90 & 1;
    sub_100041DCC();
    sub_10001B408(&qword_100054DE0, type metadata accessor for SingleContactTimelineEntry);
    v97 = v169;
    sub_100041E9C();
    sub_100010E18(v193, 1);
    (*(v85 + 8))(v165, v166);
  }

  else
  {
    v165 = v42;
    v166 = v41;
    v98 = v170;
    v99 = *(v170 + 120);
    sub_100006DD0(v193);
    sub_10004088C();
    sub_100040B4C();
    sub_100040F4C();

    (*(v62 + 8))(v65, v61);
    v100 = v161;
    v101 = v192;
    v193 = *(v161 + 8);
    v193(v68, v192);
    v102 = sub_100040F2C();
    __chkstk_darwin(v102);
    v103 = v173;
    *(&v145 - 6) = v164;
    *(&v145 - 5) = v103;
    *(&v145 - 4) = v168;
    *(&v145 - 3) = v98;
    v104 = v172;
    *(&v145 - 2) = v171;
    *(&v145 - 1) = v104;
    v105 = sub_100012140(sub_10001D0F8, (&v145 - 8), v102);

    v106 = v145;
    v173 = v69;
    v172 = v72;
    sub_100040F1C();
    v107 = v146;
    sub_100011258(v106, v146, &qword_100054A00, &unk_100043560);
    v108 = 1;
    v109 = (*(v100 + 48))(v107, 1, v101);
    v110 = v147;
    if (v109 != 1)
    {
      (*(v100 + 32))(v68, v107, v101);
      sub_100041DAC();
      v193(v68, v101);
      v108 = 0;
    }

    sub_1000049F8(v106, &qword_100054A00, &unk_100043560);
    v111 = v163;
    v112 = v153;
    (*(v163 + 56))(v110, v108, 1, v153);
    v113 = *(v111 + 48);
    v114 = v113(v110, 1, v112);
    v115 = v167;
    if (v114 == 1)
    {
      v116 = v151;
      sub_100041DBC();
      v117 = v113(v110, 1, v112) == 1;
      v118 = v110;
      v97 = v169;
      if (!v117)
      {
        sub_1000049F8(v118, &qword_100054A08, &unk_100043080);
      }
    }

    else
    {
      v116 = v151;
      (*(v111 + 32))(v151, v110, v112);
      v97 = v169;
    }

    (*(v111 + 16))(v115, v116, v112);
    type metadata accessor for SingleContactTimelineEntry(0);
    sub_10001B408(&qword_100054DE0, type metadata accessor for SingleContactTimelineEntry);

    sub_100041E9C();
    sub_10004088C();
    sub_10004086C();
    v120 = v119;
    v193(v68, v192);
    v121 = v155;
    sub_100040ACC();

    v122 = sub_10004097C();
    v123 = sub_1000420CC();
    v124 = v116;
    if (os_log_type_enabled(v122, v123))
    {
      v125 = swift_slowAlloc();
      *v125 = 134349312;
      v126 = *(v105 + 16);

      *(v125 + 4) = v126;

      *(v125 + 12) = 2048;
      *(v125 + 14) = v120 - a9;
      _os_log_impl(&_mh_execute_header, v122, v123, "Single contact timeline created with %{public}ld entries elasped %f", v125, 0x16u);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v127 = v173;
    v128 = v172;
    (*(v165 + 1))(v121, v166);
    (*(v163 + 8))(v124, v112);
    (*(v148 + 8))(v128, v127);
  }

  v129 = v176;
  sub_100040B3C();
  v130 = v179;
  v131 = v177;
  v132 = v181;
  (*(v179 + 104))(v177, enum case for PeopleAnalytics.WidgetType.single(_:), v181);
  v133 = *(sub_100041EAC() + 16);

  v134 = v97;
  v135 = v178;
  sub_100041E4C();
  v136 = v183;
  sub_100041D4C();
  (*(v180 + 8))(v135, v182);
  sub_100040AFC();
  (*(v184 + 8))(v136, v185);
  (*(v130 + 8))(v131, v132);
  v137 = v175;
  (*(v175 + 16))(v174, v134, v129);
  sub_100003DC0(&qword_100054E08, &qword_100043550);
  sub_10004201C();
  v138 = v186;
  sub_10004091C();
  v139 = sub_10004094C();
  v140 = sub_1000420DC();
  v141 = v138;
  if (sub_1000420EC())
  {
    v142 = swift_slowAlloc();
    *v142 = 0;
    v143 = sub_10004090C();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v139, v140, v143, "getTimeline", "Completed", v142, 2u);
  }

  (*(v187 + 8))(v141, v188);
  return (*(v137 + 8))(v134, v129);
}

uint64_t sub_1000171C0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v61 = a5;
  v62 = a6;
  v56 = a4;
  v13 = sub_100003DC0(&qword_100054E10, &qword_100043558);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v60 = v47 - v15;
  v16 = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v54 = v47 - v18;
  v52 = sub_100040E0C();
  v51 = *(v52 - 8);
  v19 = *(v51 + 64);
  __chkstk_darwin(v52);
  v21 = v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10004116C();
  v57 = *(v58 - 8);
  v22 = *(v57 + 64);
  v23 = __chkstk_darwin(v58);
  v53 = v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v55 = v47 - v25;
  v59 = a1;
  v26 = sub_100040EAC();
  v27 = *(v26 + 16);
  v64 = a3;
  v63 = a7;
  if (!v27)
  {

    goto LABEL_15;
  }

  v48 = v21;
  v49 = a2;
  v50 = a8;
  v47[1] = v26;
  v28 = v26 + 32;
  v29 = &_swiftEmptyArrayStorage;
  do
  {
    sub_100010F30(v28, &v69);
    sub_100004B44(&v69, v68);
    sub_100003DC0(&qword_100054A30, &unk_1000430A0);
    sub_100003DC0(&qword_100054A38, &unk_100043590);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
LABEL_4:
      sub_1000049F8(&v65, &qword_100054A40, &qword_1000430B0);
      goto LABEL_5;
    }

    if (!*(&v66 + 1))
    {
      goto LABEL_4;
    }

    sub_100004B44(&v65, v68);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_10000E95C(0, v29[2] + 1, 1, v29);
    }

    v31 = v29[2];
    v30 = v29[3];
    if (v31 >= v30 >> 1)
    {
      v29 = sub_10000E95C((v30 > 1), v31 + 1, 1, v29);
    }

    v29[2] = v31 + 1;
    sub_100004B44(v68, &v29[5 * v31 + 4]);
LABEL_5:
    v28 += 40;
    --v27;
  }

  while (v27);

  a8 = v50;
  a3 = v64;
  a2 = v49;
  v21 = v48;
LABEL_15:
  (*(v51 + 104))(v21, enum case for ContactFormatter.Style.shortName(_:), v52);
  sub_100041F4C();
  v70 = sub_100040E2C();
  v71 = &protocol witness table for ContactFormatter;
  sub_100004AC8(&v69);
  sub_100040E1C();
  v32 = a2;
  v33 = v55;
  sub_10004113C();
  sub_100040E7C();
  v34 = type metadata accessor for SingleContactTimelineEntry(0);
  v35 = v34[5];
  v36 = sub_100040D7C();
  (*(*(v36 - 8) + 16))(a8 + v35, a3, v36);
  v37 = v34[6];
  v38 = v57;
  v39 = v58;
  (*(v57 + 16))(v53, v33, v58);
  sub_100011258(v56, v54, &qword_1000546F0, &unk_100044170);
  sub_100041B9C();
  v40 = sub_100041BAC();
  (*(*(v40 - 8) + 56))(a8 + v37, 0, 1, v40);
  v41 = v34[9];
  sub_100040E8C();
  sub_100041AEC();
  sub_100040E9C();
  sub_100041E2C();
  v42 = sub_100041E3C();
  (*(*(v42 - 8) + 56))(a8 + v41, 0, 1, v42);
  v43 = v60;
  v44 = *(v61 + 128);
  sub_100040A2C();
  LOBYTE(v44) = sub_10002706C(v33, v64, v43);
  sub_1000049F8(v43, &qword_100054E10, &qword_100043558);
  *(a8 + v34[7]) = 0;
  v45 = a8 + v34[8];
  sub_1000408BC();
  result = (*(v38 + 8))(v33, v39);
  *(a8 + v34[10]) = v44 & 1;
  return result;
}

uint64_t sub_100017854@<X0>(uint64_t a1@<X8>)
{
  sub_10004088C();
  v2 = type metadata accessor for SingleContactTimelineEntry(0);
  v3 = a1 + v2[5];
  sub_100040D6C();
  v4 = v2[6];
  v5 = sub_100041BAC();
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v2[9];
  v7 = sub_100041E3C();
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  *(a1 + v2[7]) = 1;
  v8 = a1 + v2[8];
  result = sub_1000408BC();
  *(a1 + v2[10]) = 0;
  return result;
}

uint64_t sub_100017940(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100011628;

  return sub_100012328(a1, a2);
}

uint64_t sub_1000179E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100011628;

  return sub_100013FCC(a1, a2, a3);
}

uint64_t sub_100017AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to AppIntentTimelineProvider.relevances()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000AB88;

  return AppIntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_100017B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to AppIntentTimelineProvider.relevance()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100011628;

  return AppIntentTimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_100017C08@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004089C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100017CC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = type metadata accessor for SingleContactWidgetEntryView(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v53 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004098C();
  v51 = *(v6 - 8);
  v52 = v6;
  v7 = *(v51 + 64);
  __chkstk_darwin(v6);
  v54 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v50 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v45 - v13;
  v15 = sub_10004116C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v49 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v45 - v20;
  v22 = type metadata accessor for SingleContactTimelineEntry(0);
  sub_100011258(v2 + *(v22 + 24), v14, &qword_1000546B8, &unk_100042AD0);
  v23 = sub_100041BAC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  if (v25(v14, 1, v23) == 1)
  {
    v26 = v16;
    sub_1000049F8(v14, &qword_1000546B8, &unk_100042AD0);
    if ((*(v2 + *(v22 + 28)) & 1) == 0)
    {
      v27 = v54;
      sub_100040ACC();
      v28 = v2;
      v29 = v53;
      sub_10001C28C(v28, v53, type metadata accessor for SingleContactWidgetEntryView);
      v30 = sub_10004097C();
      v48 = sub_1000420AC();
      if (os_log_type_enabled(v30, v48))
      {
        v31 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v56 = v46;
        v47 = v31;
        *v31 = 136315138;
        v32 = v50;
        sub_100011258(v29 + *(v22 + 24), v50, &qword_1000546B8, &unk_100042AD0);
        if (v25(v32, 1, v23) == 1)
        {
          sub_1000049F8(v32, &qword_1000546B8, &unk_100042AD0);
          v33 = 0xE100000000000000;
          v34 = 45;
        }

        else
        {
          v38 = v49;
          sub_100041B8C();
          (*(v24 + 8))(v32, v23);
          v39 = sub_10004114C();
          (*(v26 + 8))(v38, v15);
          v40 = [v39 identifier];

          v34 = sub_100041EFC();
          v33 = v41;
        }

        sub_10001B9E8(v53, type metadata accessor for SingleContactWidgetEntryView);
        v42 = sub_10001BA5C(v34, v33, &v56);

        v43 = v47;
        *(v47 + 1) = v42;
        _os_log_impl(&_mh_execute_header, v30, v48, "contact not found for identifier: %s", v43, 0xCu);
        sub_100010DCC(v46);

        (*(v51 + 8))(v54, v52);
      }

      else
      {

        sub_10001B9E8(v29, type metadata accessor for SingleContactWidgetEntryView);
        (*(v51 + 8))(v27, v52);
      }
    }

    v36 = 1;
    v37 = v55;
  }

  else
  {
    sub_100041B8C();
    (*(v24 + 8))(v14, v23);
    v35 = v55;
    (*(v16 + 32))(v55, v21, v15);
    v36 = 0;
    v37 = v35;
    v26 = v16;
  }

  return (*(v26 + 56))(v37, v36, 1, v15);
}

uint64_t sub_100018250@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004146C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003DC0(&qword_100054710, &unk_100042C00);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for SingleContactWidgetEntryView(0);
  sub_100011258(v1 + *(v12 + 28), v11, &qword_100054710, &unk_100042C00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_100041CFC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1000420BC();
    v16 = sub_1000415DC();
    sub_1000408FC();

    sub_10004145C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

double sub_100018458()
{
  v1 = sub_10004146C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for SingleContactWidgetEntryView(0) + 32);
  v8 = *v6;
  v7 = *(v6 + 8);
  v10 = *(v6 + 16);
  v9 = *(v6 + 24);
  if (*(v6 + 32) == 1)
  {
    return *v6;
  }

  sub_1000420BC();
  v12 = sub_1000415DC();
  sub_1000408FC();

  sub_10004145C();
  swift_getAtKeyPath();
  sub_10001BA50(v8, v7, v10, v9, 0);
  (*(v2 + 8))(v5, v1);
  return v13;
}

uint64_t sub_1000185E4@<X0>(uint64_t a1@<X8>)
{
  v285 = a1;
  v283 = sub_100003DC0(&qword_100054C90, &qword_1000431D0);
  v2 = *(*(v283 - 8) + 64);
  __chkstk_darwin(v283);
  v284 = &v225 - v3;
  v255 = type metadata accessor for SingleContactSmallWidgetView();
  v4 = *(*(v255 - 8) + 64);
  __chkstk_darwin(v255);
  v256 = &v225 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = sub_100003DC0(&qword_100054C98, &qword_1000431D8);
  v257 = *(v258 - 8);
  v6 = *(v257 + 64);
  __chkstk_darwin(v258);
  v254 = &v225 - v7;
  v276 = sub_100003DC0(&qword_100054CA0, &qword_1000431E0);
  v8 = *(*(v276 - 8) + 64);
  v9 = __chkstk_darwin(v276);
  v253 = &v225 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v259 = &v225 - v11;
  v274 = sub_100003DC0(&qword_100054CA8, &qword_1000431E8);
  v12 = *(*(v274 - 8) + 64);
  __chkstk_darwin(v274);
  v275 = &v225 - v13;
  v232 = sub_10004104C();
  v245 = *(v232 - 8);
  v14 = *(v245 + 64);
  __chkstk_darwin(v232);
  v225 = &v225 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100003DC0(&qword_100054CB0, &qword_1000431F0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v229 = &v225 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v227 = &v225 - v20;
  v249 = type metadata accessor for SingleContactQuickActionWidgetView(0);
  v21 = *(*(v249 - 8) + 64);
  __chkstk_darwin(v249);
  v234 = &v225 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = sub_100003DC0(&qword_100054CB8, &qword_1000431F8);
  v237 = *(v239 - 8);
  v23 = *(v237 + 64);
  __chkstk_darwin(v239);
  v235 = &v225 - v24;
  v233 = sub_100003DC0(&qword_100054CC0, &qword_100043200);
  v25 = *(*(v233 - 8) + 64);
  __chkstk_darwin(v233);
  v238 = &v225 - v26;
  v236 = sub_100003DC0(&qword_100054CC8, &qword_100043208);
  v27 = *(*(v236 - 8) + 64);
  __chkstk_darwin(v236);
  v241 = &v225 - v28;
  v240 = sub_100003DC0(&qword_100054CD0, &qword_100043210);
  v29 = *(*(v240 - 8) + 64);
  __chkstk_darwin(v240);
  v243 = &v225 - v30;
  v272 = sub_100003DC0(&qword_100054CD8, &qword_100043218);
  v31 = *(*(v272 - 8) + 64);
  v32 = __chkstk_darwin(v272);
  v242 = &v225 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v244 = &v225 - v34;
  v282 = sub_100003DC0(&qword_100054CE0, &qword_100043220);
  v35 = *(*(v282 - 8) + 64);
  __chkstk_darwin(v282);
  v273 = &v225 - v36;
  v280 = sub_100003DC0(&qword_100054CE8, &qword_100043228);
  v37 = *(*(v280 - 8) + 64);
  __chkstk_darwin(v280);
  v281 = &v225 - v38;
  v271 = sub_1000415CC();
  v270 = *(v271 - 8);
  v39 = *(v270 + 64);
  __chkstk_darwin(v271);
  v269 = &v225 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100003DC0(&qword_100054CF0, &unk_100043230);
  v42 = *(*(v41 - 8) + 64);
  v43 = __chkstk_darwin(v41 - 8);
  v250 = &v225 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v43);
  v228 = &v225 - v46;
  __chkstk_darwin(v45);
  v48 = &v225 - v47;
  v49 = sub_100003DC0(&qword_1000546B0, &qword_100043630);
  v50 = *(*(v49 - 8) + 64);
  v51 = __chkstk_darwin(v49 - 8);
  v251 = &v225 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __chkstk_darwin(v51);
  v252 = &v225 - v54;
  v55 = __chkstk_darwin(v53);
  v230 = &v225 - v56;
  v57 = __chkstk_darwin(v55);
  v231 = &v225 - v58;
  v59 = __chkstk_darwin(v57);
  v226 = &v225 - v60;
  v61 = __chkstk_darwin(v59);
  v248 = &v225 - v62;
  v63 = __chkstk_darwin(v61);
  v65 = &v225 - v64;
  __chkstk_darwin(v63);
  v268 = &v225 - v66;
  v67 = sub_1000408CC();
  v68 = *(v67 - 8);
  v69 = *(v68 + 64);
  v70 = __chkstk_darwin(v67);
  v247 = &v225 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70);
  v73 = &v225 - v72;
  v74 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  v75 = *(*(v74 - 8) + 64);
  v76 = __chkstk_darwin(v74 - 8);
  v246 = &v225 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v76);
  v79 = &v225 - v78;
  v260 = type metadata accessor for SingleContactSmallWidgetVerticalView();
  v80 = *(*(v260 - 8) + 64);
  __chkstk_darwin(v260);
  v82 = &v225 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = sub_100003DC0(&qword_100054CF8, &qword_100043240);
  v265 = *(v266 - 8);
  v83 = *(v265 + 64);
  __chkstk_darwin(v266);
  v262 = &v225 - v84;
  v264 = sub_100003DC0(&qword_100054D00, &qword_100043248);
  v263 = *(v264 - 8);
  v85 = *(v263 + 64);
  __chkstk_darwin(v264);
  v261 = &v225 - v86;
  v277 = sub_100003DC0(&qword_100054D08, &qword_100043250);
  v87 = *(*(v277 - 8) + 64);
  v88 = __chkstk_darwin(v277);
  v90 = &v225 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v88);
  v267 = &v225 - v91;
  v279 = sub_100003DC0(&qword_100054D10, &qword_100043258);
  v92 = *(*(v279 - 8) + 64);
  __chkstk_darwin(v279);
  v278 = &v225 - v93;
  v94 = type metadata accessor for SingleContactTimelineEntry(0);
  v95 = v94;
  if (*(v1 + *(v94 + 40)) != 1)
  {
    if (qword_100054550 != -1)
    {
      swift_once();
    }

    v100 = v67;
    v101 = v68;
    if (byte_1000574A8 == 1)
    {
      v102 = v95[5];
      if (sub_100040D4C())
      {
        sub_100011258(v1 + v95[6], v246, &qword_1000546B8, &unk_100042AD0);
        (*(v68 + 16))(v247, v1 + v95[8], v100);
        v103 = v227;
        sub_100040D1C();
        v104 = v245;
        v105 = *(v245 + 48);
        v106 = v232;
        if (v105(v103, 1, v232))
        {
          sub_1000049F8(v103, &qword_100054CB0, &qword_1000431F0);
          v107 = sub_10004083C();
          (*(*(v107 - 8) + 56))(v248, 1, 1, v107);
        }

        else
        {
          v156 = v225;
          (*(v104 + 16))(v225, v103, v106);
          sub_1000049F8(v103, &qword_100054CB0, &qword_1000431F0);
          sub_10004103C();
          (*(v104 + 8))(v156, v106);
        }

        v115 = v278;
        v157 = v234;
        v158 = v229;
        sub_100040D0C();
        if (v105(v158, 1, v106))
        {
          sub_1000049F8(v158, &qword_100054CB0, &qword_1000431F0);
          v159 = sub_10004083C();
          v160 = v226;
          (*(*(v159 - 8) + 56))(v226, 1, 1, v159);
        }

        else
        {
          v161 = v158;
          v162 = v245;
          v163 = v225;
          (*(v245 + 16))(v225, v161, v106);
          sub_1000049F8(v161, &qword_100054CB0, &qword_1000431F0);
          v160 = v226;
          sub_10004103C();
          (*(v162 + 8))(v163, v106);
        }

        v164 = v230;
        KeyPath = swift_getKeyPath();
        v166 = swift_getKeyPath();
        v167 = v249;
        *(v157 + *(v249 + 20)) = v166;
        sub_100003DC0(&qword_100054700, &qword_100042B60);
        swift_storeEnumTagMultiPayload();
        *v157 = KeyPath;
        *(v157 + 8) = 0;
        sub_100004C8C(v246, v157 + v167[6], &qword_1000546B8, &unk_100042AD0);
        (*(v101 + 32))(v157 + v167[7], v247, v100);
        sub_100004C8C(v248, v157 + v167[8], &qword_1000546B0, &qword_100043630);
        sub_100004C8C(v160, v157 + v167[9], &qword_1000546B0, &qword_100043630);
        *(v157 + v167[10]) = 0x3FD999999999999ALL;
        *(v157 + v167[11]) = 0x3FE0000000000000;
        *(v157 + v167[12]) = 0x3FF8000000000000;
        v168 = v228;
        sub_100017CC0(v228);
        v169 = v168;
        v170 = sub_10004116C();
        v171 = *(v170 - 8);
        if ((*(v171 + 48))(v169, 1, v170) == 1)
        {
          sub_1000049F8(v169, &qword_100054CF0, &unk_100043230);
          v172 = sub_10004083C();
          (*(*(v172 - 8) + 56))(v164, 1, 1, v172);
          v173 = v231;
        }

        else
        {
          sub_10004111C();
          (*(v171 + 8))(v169, v170);
          v172 = sub_10004083C();
          v174 = *(v172 - 8);
          v175 = (*(v174 + 48))(v164, 1, v172);
          v173 = v231;
          if (v175 != 1)
          {
            (*(v174 + 32))(v231, v164, v172);
            (*(v174 + 56))(v173, 0, 1, v172);
LABEL_32:
            sub_10001B408(&qword_100054D40, type metadata accessor for SingleContactQuickActionWidgetView);
            v176 = v235;
            sub_1000417BC();
            sub_1000049F8(v173, &qword_1000546B0, &qword_100043630);
            sub_10001B9E8(v157, type metadata accessor for SingleContactQuickActionWidgetView);
            v177 = sub_1000415FC();
            sub_100018458();
            sub_10004117C();
            v179 = v178;
            v181 = v180;
            v183 = v182;
            v185 = v184;
            v186 = v238;
            (*(v237 + 32))(v238, v176, v239);
            v187 = &v186[*(v233 + 36)];
            *v187 = v177;
            *(v187 + 1) = v179;
            *(v187 + 2) = v181;
            *(v187 + 3) = v183;
            *(v187 + 4) = v185;
            v187[40] = 0;
            v188 = sub_10004160C();
            sub_100018458();
            sub_10004117C();
            v190 = v189;
            v192 = v191;
            v194 = v193;
            v196 = v195;
            v197 = v186;
            v198 = v241;
            sub_100004C8C(v197, v241, &qword_100054CC0, &qword_100043200);
            v199 = v198 + *(v236 + 36);
            *v199 = v188;
            *(v199 + 8) = v190;
            *(v199 + 16) = v192;
            *(v199 + 24) = v194;
            *(v199 + 32) = v196;
            *(v199 + 40) = 0;
            v200 = sub_10004161C();
            sub_100018458();
            sub_10004117C();
            v202 = v201;
            v204 = v203;
            v206 = v205;
            v208 = v207;
            v209 = v198;
            v210 = v243;
            sub_100004C8C(v209, v243, &qword_100054CC8, &qword_100043208);
            v211 = v210 + *(v240 + 36);
            *v211 = v200;
            *(v211 + 8) = v202;
            *(v211 + 16) = v204;
            *(v211 + 24) = v206;
            *(v211 + 32) = v208;
            *(v211 + 40) = 0;
            v212 = sub_10004162C();
            sub_100018458();
            sub_10004117C();
            v214 = v213;
            v216 = v215;
            v218 = v217;
            v220 = v219;
            v221 = v210;
            v222 = v242;
            sub_100004C8C(v221, v242, &qword_100054CD0, &qword_100043210);
            v223 = v222 + *(v272 + 36);
            *v223 = v212;
            *(v223 + 8) = v214;
            *(v223 + 16) = v216;
            *(v223 + 24) = v218;
            *(v223 + 32) = v220;
            *(v223 + 40) = 0;
            v152 = &qword_100054CD8;
            v153 = &qword_100043218;
            v154 = v244;
            sub_100004C8C(v222, v244, &qword_100054CD8, &qword_100043218);
            sub_100011258(v154, v275, &qword_100054CD8, &qword_100043218);
            swift_storeEnumTagMultiPayload();
            sub_10001B268(&qword_100054D20, &qword_100054CD8, &qword_100043218, sub_10001B238);
            sub_10001B450();
            v155 = v273;
            goto LABEL_33;
          }
        }

        sub_10004112C();
        sub_10004083C();
        if ((*(*(v172 - 8) + 48))(v164, 1, v172) != 1)
        {
          sub_1000049F8(v164, &qword_1000546B0, &qword_100043630);
        }

        goto LABEL_32;
      }
    }

    sub_100011258(v1 + v95[6], v79, &qword_1000546B8, &unk_100042AD0);
    v108 = v256;
    (*(v68 + 16))(&v256[*(v255 + 20)], v1 + v95[8], v100);
    v109 = sub_100041BAC();
    (*(*(v109 - 8) + 56))(v108, 1, 1, v109);
    sub_10001B1C8(v79, v108);
    v110 = v250;
    sub_100017CC0(v250);
    v111 = sub_10004116C();
    v112 = *(v111 - 8);
    if ((*(v112 + 48))(v110, 1, v111) == 1)
    {
      sub_1000049F8(v110, &qword_100054CF0, &unk_100043230);
      v113 = sub_10004083C();
      v114 = v251;
      (*(*(v113 - 8) + 56))(v251, 1, 1, v113);
      v115 = v278;
      v116 = v252;
    }

    else
    {
      v114 = v251;
      sub_10004111C();
      (*(v112 + 8))(v110, v111);
      v113 = sub_10004083C();
      v119 = *(v113 - 8);
      v120 = (*(v119 + 48))(v114, 1, v113);
      v115 = v278;
      v116 = v252;
      if (v120 != 1)
      {
        (*(v119 + 32))(v252, v114, v113);
        (*(v119 + 56))(v116, 0, 1, v113);
LABEL_21:
        sub_10001B408(&qword_100054D18, type metadata accessor for SingleContactSmallWidgetView);
        v141 = v254;
        sub_1000417BC();
        sub_1000049F8(v116, &qword_1000546B0, &qword_100043630);
        sub_10001B9E8(v108, type metadata accessor for SingleContactSmallWidgetView);
        v142 = sub_100018458();
        v144 = v143;
        v146 = v145;
        v148 = v147;
        v149 = sub_1000415EC();
        v150 = v253;
        (*(v257 + 32))(v253, v141, v258);
        v151 = v150 + *(v276 + 36);
        *v151 = v149;
        *(v151 + 8) = v142;
        *(v151 + 16) = v144;
        *(v151 + 24) = v146;
        *(v151 + 32) = v148;
        *(v151 + 40) = 0;
        v152 = &qword_100054CA0;
        v153 = &qword_1000431E0;
        v154 = v259;
        sub_100004C8C(v150, v259, &qword_100054CA0, &qword_1000431E0);
        sub_100011258(v154, v275, &qword_100054CA0, &qword_1000431E0);
        swift_storeEnumTagMultiPayload();
        sub_10001B268(&qword_100054D20, &qword_100054CD8, &qword_100043218, sub_10001B238);
        sub_10001B450();
        v155 = v273;
LABEL_33:
        sub_10004158C();
        sub_1000049F8(v154, v152, v153);
        sub_100011258(v155, v281, &qword_100054CE0, &qword_100043220);
        swift_storeEnumTagMultiPayload();
        sub_10001B53C();
        sub_10001B680();
        sub_10004158C();
        v138 = v155;
        v139 = &qword_100054CE0;
        v140 = &qword_100043220;
        goto LABEL_34;
      }
    }

    sub_10004112C();
    sub_10004083C();
    if ((*(*(v113 - 8) + 48))(v114, 1, v113) != 1)
    {
      sub_1000049F8(v114, &qword_1000546B0, &qword_100043630);
    }

    goto LABEL_21;
  }

  sub_100011258(v1 + *(v94 + 24), v79, &qword_1000546B8, &unk_100042AD0);
  (*(v68 + 16))(v73, v1 + v95[8], v67);
  sub_10003E6C8(v79, v73, v82);
  v276 = v1;
  sub_100017CC0(v48);
  v96 = sub_10004116C();
  v97 = *(v96 - 8);
  if ((*(v97 + 48))(v48, 1, v96) == 1)
  {
    sub_1000049F8(v48, &qword_100054CF0, &unk_100043230);
    v98 = sub_10004083C();
    (*(*(v98 - 8) + 56))(v65, 1, 1, v98);
    v99 = v268;
    goto LABEL_13;
  }

  sub_10004111C();
  (*(v97 + 8))(v48, v96);
  v98 = sub_10004083C();
  v117 = *(v98 - 8);
  v118 = (*(v117 + 48))(v65, 1, v98);
  v99 = v268;
  if (v118 == 1)
  {
LABEL_13:
    sub_10004112C();
    sub_10004083C();
    if ((*(*(v98 - 8) + 48))(v65, 1, v98) != 1)
    {
      sub_1000049F8(v65, &qword_1000546B0, &qword_100043630);
    }

    goto LABEL_19;
  }

  (*(v117 + 32))(v268, v65, v98);
  (*(v117 + 56))(v99, 0, 1, v98);
LABEL_19:
  v121 = sub_10001B408(&qword_100054D58, type metadata accessor for SingleContactSmallWidgetVerticalView);
  v122 = v262;
  v123 = v260;
  sub_1000417BC();
  sub_1000049F8(v99, &qword_1000546B0, &qword_100043630);
  sub_10001B9E8(v82, type metadata accessor for SingleContactSmallWidgetVerticalView);
  v124 = v269;
  v125 = sub_1000415BC();
  __chkstk_darwin(v125);
  sub_100041A9C();
  v286 = v123;
  v287 = v121;
  swift_getOpaqueTypeConformance2();
  v126 = v261;
  v127 = v266;
  sub_10004185C();
  (*(v270 + 8))(v124, v271);
  (*(v265 + 8))(v122, v127);
  v128 = sub_100018458();
  v130 = v129;
  v132 = v131;
  v134 = v133;
  v135 = sub_1000415EC();
  (*(v263 + 32))(v90, v126, v264);
  v136 = &v90[*(v277 + 36)];
  *v136 = v135;
  *(v136 + 1) = v128;
  *(v136 + 2) = v130;
  *(v136 + 3) = v132;
  *(v136 + 4) = v134;
  v136[40] = 0;
  v137 = v267;
  sub_100004C8C(v90, v267, &qword_100054D08, &qword_100043250);
  sub_100011258(v137, v281, &qword_100054D08, &qword_100043250);
  swift_storeEnumTagMultiPayload();
  sub_10001B53C();
  sub_10001B680();
  v115 = v278;
  sub_10004158C();
  v138 = v137;
  v139 = &qword_100054D08;
  v140 = &qword_100043250;
LABEL_34:
  sub_1000049F8(v138, v139, v140);
  sub_100011258(v115, v284, &qword_100054D10, &qword_100043258);
  swift_storeEnumTagMultiPayload();
  sub_100003DC0(&qword_100054D68, &qword_100043260);
  sub_10001B268(&qword_100054D70, &qword_100054D68, &qword_100043260, sub_10000E540);
  sub_10001B738();
  sub_10004158C();
  return sub_1000049F8(v115, &qword_100054D10, &qword_100043258);
}

uint64_t sub_10001A614@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100041CFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  sub_100018250(&v15 - v8);
  if (sub_100040BDC())
  {
    v10 = sub_10004192C();
    result = (*(v3 + 8))(v9, v2);
  }

  else
  {
    sub_100041CDC();
    v12 = sub_100041CCC();
    v13 = *(v3 + 8);
    v13(v7, v2);
    if (v12)
    {
      v14 = sub_1000418BC();
    }

    else
    {
      v14 = sub_1000418CC();
    }

    v10 = v14;
    result = (v13)(v9, v2);
  }

  *a1 = v10;
  return result;
}

uint64_t sub_10001A78C@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v75 = sub_100041D0C();
  v73 = *(v75 - 8);
  v1 = *(v73 + 64);
  __chkstk_darwin(v75);
  v72 = v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003DC0(&qword_100054570, &qword_100042978);
  v60 = *(v3 - 8);
  v4 = *(v60 + 64);
  __chkstk_darwin(v3);
  v6 = v58 - v5;
  v7 = sub_100003DC0(&qword_100054568, &qword_100042970);
  v59 = *(v7 - 8);
  v8 = *(v59 + 64);
  __chkstk_darwin(v7);
  v10 = v58 - v9;
  v63 = sub_100003DC0(&qword_100054DB0, &qword_100043348);
  v61 = *(v63 - 8);
  v11 = *(v61 + 64);
  __chkstk_darwin(v63);
  v13 = v58 - v12;
  v67 = sub_100003DC0(&qword_100054DB8, &qword_100043350);
  v64 = *(v67 - 8);
  v14 = *(v64 + 64);
  __chkstk_darwin(v67);
  v62 = v58 - v15;
  v70 = sub_100003DC0(&qword_100054DC0, &qword_100043358);
  v66 = *(v70 - 8);
  v16 = *(v66 + 64);
  __chkstk_darwin(v70);
  v65 = v58 - v17;
  v71 = sub_100003DC0(&qword_100054DC8, &unk_100043360);
  v69 = *(v71 - 8);
  v18 = *(v69 + 64);
  __chkstk_darwin(v71);
  v68 = v58 - v19;
  v20 = sub_100040BBC();
  v58[0] = v21;
  v58[1] = v20;
  v22 = sub_100040D9C();
  v23 = sub_100040D8C();
  v83 = v22;
  v84 = &protocol witness table for ContactFetcher;
  *&v82 = v23;
  v80 = sub_1000408EC();
  v81 = &protocol witness table for Locale;
  sub_100004AC8(&v79);
  sub_1000408DC();
  sub_1000409CC();
  if (sub_1000409BC())
  {
    v24 = sub_100040F8C();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    v27 = sub_100040F7C();
    v28 = &protocol witness table for DemoStatusProvider;
  }

  else
  {
    v24 = sub_100040DEC();
    v27 = sub_100040DDC();
    v28 = &protocol witness table for StatusProvider;
  }

  v77 = v24;
  v78 = v28;
  *&v76 = v27;
  sub_100040D7C();
  v29 = sub_100040F6C();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = sub_100040F5C();
  sub_100040FCC();
  v33 = sub_100040FBC();
  sub_100004B44(&v82, &v85);
  sub_100004B44(&v79, &v89);
  sub_100004B44(&v76, v90);
  v90[5] = v32;
  v90[6] = v33;
  type metadata accessor for SingleContactWidgetEntryView(0);
  sub_10001B408(&qword_100054DD0, type metadata accessor for SingleContactWidgetEntryView);
  sub_10001C1D4();
  sub_100041DEC();
  v34 = sub_10001C228();
  sub_10004156C();
  (*(v60 + 8))(v6, v3);
  v85 = v3;
  v86 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10004153C();
  (*(v59 + 8))(v10, v7);
  v85 = sub_100041F4C();
  v86 = v36;
  *&v82 = v7;
  *(&v82 + 1) = OpaqueTypeConformance2;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = sub_100004924();
  v40 = v62;
  v39 = v63;
  sub_10004154C();

  (*(v61 + 8))(v13, v39);
  *&v82 = sub_100041F4C();
  *(&v82 + 1) = v41;
  v85 = v39;
  v86 = &type metadata for String;
  v87 = v37;
  v88 = v38;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = v65;
  v44 = v67;
  sub_10004150C();

  (*(v64 + 8))(v40, v44);
  sub_100003DC0(&qword_100054738, &unk_100042C50);
  v45 = sub_100041D5C();
  v46 = *(v45 - 8);
  v47 = *(v46 + 72);
  v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_100042C30;
  (*(v46 + 104))(v49 + v48, enum case for WidgetFamily.systemSmall(_:), v45);
  v85 = v44;
  v86 = &type metadata for String;
  v87 = v42;
  v88 = v38;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = v68;
  v52 = v70;
  sub_10004151C();

  (*(v66 + 8))(v43, v52);
  v54 = v72;
  v53 = v73;
  v55 = v75;
  (*(v73 + 104))(v72, enum case for WidgetBackgroundStyle.blur(_:), v75);
  v85 = v52;
  v86 = v50;
  swift_getOpaqueTypeConformance2();
  v56 = v71;
  sub_10004155C();
  (*(v53 + 8))(v54, v55);
  return (*(v69 + 8))(v51, v56);
}

uint64_t sub_10001B0BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10001C28C(a1, a2, type metadata accessor for SingleContactTimelineEntry);
  KeyPath = swift_getKeyPath();
  v4 = type metadata accessor for SingleContactWidgetEntryView(0);
  *(a2 + v4[6]) = KeyPath;
  sub_100003DC0(&qword_100054668, &qword_100042AA0);
  swift_storeEnumTagMultiPayload();
  *(a2 + v4[7]) = swift_getKeyPath();
  sub_100003DC0(&qword_100054710, &unk_100042C00);
  swift_storeEnumTagMultiPayload();
  v5 = swift_getKeyPath();
  v6 = v4[5];
  sub_100040D9C();
  result = sub_100040D8C();
  *(a2 + v6) = result;
  v8 = a2 + v4[8];
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *v8 = v5;
  *(v8 + 8) = 0;
  *(v8 + 32) = 0;
  return result;
}

uint64_t sub_10001B1C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001B268(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E08(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001B31C()
{
  result = qword_100054D38;
  if (!qword_100054D38)
  {
    sub_100003E08(&qword_100054CC0, &qword_100043200);
    type metadata accessor for SingleContactQuickActionWidgetView(255);
    sub_10001B408(&qword_100054D40, type metadata accessor for SingleContactQuickActionWidgetView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054D38);
  }

  return result;
}

uint64_t sub_10001B408(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10001B450()
{
  result = qword_100054D48;
  if (!qword_100054D48)
  {
    sub_100003E08(&qword_100054CA0, &qword_1000431E0);
    type metadata accessor for SingleContactSmallWidgetView();
    sub_10001B408(&qword_100054D18, type metadata accessor for SingleContactSmallWidgetView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054D48);
  }

  return result;
}

unint64_t sub_10001B53C()
{
  result = qword_100054D50;
  if (!qword_100054D50)
  {
    sub_100003E08(&qword_100054D08, &qword_100043250);
    sub_100003E08(&qword_100054CF8, &qword_100043240);
    type metadata accessor for SingleContactSmallWidgetVerticalView();
    sub_10001B408(&qword_100054D58, type metadata accessor for SingleContactSmallWidgetVerticalView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054D50);
  }

  return result;
}

unint64_t sub_10001B680()
{
  result = qword_100054D60;
  if (!qword_100054D60)
  {
    sub_100003E08(&qword_100054CE0, &qword_100043220);
    sub_10001B268(&qword_100054D20, &qword_100054CD8, &qword_100043218, sub_10001B238);
    sub_10001B450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054D60);
  }

  return result;
}

unint64_t sub_10001B738()
{
  result = qword_100054D78;
  if (!qword_100054D78)
  {
    sub_100003E08(&qword_100054D10, &qword_100043258);
    sub_10001B53C();
    sub_10001B680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054D78);
  }

  return result;
}

uint64_t sub_10001B7E8(uint64_t a1)
{
  v2 = sub_10004119C();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000412BC();
}

uint64_t sub_10001B8B0()
{
  sub_1000413BC();
  sub_10001B408(&qword_100054D80, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey);
  sub_10004147C();
  return v1;
}

uint64_t sub_10001B92C@<X0>(_BYTE *a1@<X8>)
{
  sub_1000413BC();
  sub_10001B408(&qword_100054D80, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey);
  result = sub_10004147C();
  *a1 = v3;
  return result;
}

uint64_t sub_10001B9E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001BA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10001BA5C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001BB28(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10001C004(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100010DCC(v11);
  return v7;
}

unint64_t sub_10001BB28(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10001BC34(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10004219C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10001BC34(uint64_t a1, unint64_t a2)
{
  v4 = sub_10001BC80(a1, a2);
  sub_10001BDB0(&off_100052188);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10001BC80(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10001BE9C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10004219C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100041F7C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10001BE9C(v10, 0);
        result = sub_10004216C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10001BDB0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10001BF10(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10001BE9C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100003DC0(&qword_100054D88, &qword_1000432C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001BF10(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003DC0(&qword_100054D88, &qword_1000432C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10001C004(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10001C064()
{
  result = qword_100054D90;
  if (!qword_100054D90)
  {
    sub_100003E08(&qword_100054D98, &qword_1000432C8);
    sub_10001C0F0();
    sub_1000115D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054D90);
  }

  return result;
}

unint64_t sub_10001C0F0()
{
  result = qword_100054DA0;
  if (!qword_100054DA0)
  {
    sub_100003E08(&qword_100054DA8, &unk_1000432D0);
    sub_10001B268(&qword_100054D70, &qword_100054D68, &qword_100043260, sub_10000E540);
    sub_10001B738();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054DA0);
  }

  return result;
}

unint64_t sub_10001C1D4()
{
  result = qword_100054DD8;
  if (!qword_100054DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054DD8);
  }

  return result;
}

unint64_t sub_10001C228()
{
  result = qword_100054578;
  if (!qword_100054578)
  {
    sub_100003E08(&qword_100054570, &qword_100042978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054578);
  }

  return result;
}

uint64_t sub_10001C28C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001C300@<X0>(void *a1@<X8>)
{
  result = sub_1000413EC();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

__n128 sub_10001C330(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_10001C364(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_10001C3AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001C41C()
{
  sub_100003E08(&qword_100054DC8, &unk_100043360);
  sub_100003E08(&qword_100054DC0, &qword_100043358);
  sub_100003E08(&qword_100054DB8, &qword_100043350);
  sub_100003E08(&qword_100054DB0, &qword_100043348);
  sub_100003E08(&qword_100054568, &qword_100042970);
  sub_100003E08(&qword_100054570, &qword_100042978);
  sub_10001C228();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_100004924();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001C670()
{
  v0 = sub_10004098C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100040ACC();
  v5 = sub_10004097C();
  v6 = sub_1000420AC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10001BA5C(0xD00000000000001FLL, 0x800000010004C410, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "Should not be calling the completion version of %s", v7, 0xCu);
    sub_100010DCC(v8);
  }

  return (*(v1 + 8))(v4, v0);
}
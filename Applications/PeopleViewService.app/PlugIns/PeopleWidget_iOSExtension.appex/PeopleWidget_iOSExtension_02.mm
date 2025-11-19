double sub_100037BD0(double a1)
{
  v2 = sub_10004119C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v23 = sub_100003DC0(&qword_100056050, &qword_100044B20);
  v10 = *(v23 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v23);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v23 - v15;
  v27 = 0x3FF0000000000000;
  v28 = 0.0;
  v24 = 0.0;
  v25 = 0;
  v26 = 1;
  sub_10003B010();
  sub_100040C3C();
  sub_1000376BC(v9);
  (*(v3 + 104))(v7, enum case for ColorScheme.dark(_:), v2);
  v17 = sub_10004118C();
  v18 = *(v3 + 8);
  v18(v7, v2);
  v18(v9, v2);
  if (v17)
  {
    v28 = 0.75;
    v19 = 0x3FE4CCCCCCCCCCCDLL;
  }

  else
  {
    v28 = 0.6;
    v19 = 0x3FE199999999999ALL;
  }

  v27 = v19;
  v24 = 0.0;
  v25 = 0;
  v26 = 1;
  sub_100040C3C();
  v28 = a1;
  v20 = v23;
  sub_100040C4C();
  v21 = *(v10 + 8);
  v21(v14, v20);
  v21(v16, v20);
  return v24;
}

uint64_t sub_100037EC4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000418CC();
  sub_10004121C();
  v4 = (v1 + *(type metadata accessor for AvatarView() + 56));
  v5 = v4[1];
  v6 = v4[3];
  sub_10004121C();
  v7 = *v4;
  v8 = v4[2];
  sub_100041A9C();
  sub_10004120C();
  *&v41[6] = v42;
  *&v41[22] = v43;
  *&v41[38] = v44;
  v9 = sub_10004161C();
  sub_10004117C();
  v39 = v11;
  v40 = v10;
  v37 = v13;
  v38 = v12;
  v14 = sub_10004162C();
  sub_10004117C();
  v16 = v15;
  v18 = v17;
  v36 = v19;
  v21 = v20;
  LOBYTE(v4) = sub_1000415FC();
  sub_10004117C();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = sub_10004160C();
  result = sub_10004117C();
  *(a1 + 10) = *v41;
  *a1 = v3;
  *(a1 + 8) = 256;
  *(a1 + 26) = *&v41[16];
  *(a1 + 42) = *&v41[32];
  *(a1 + 56) = *(&v44 + 1);
  *(a1 + 64) = v9;
  *(a1 + 72) = v40;
  *(a1 + 80) = v39;
  *(a1 + 88) = v38;
  *(a1 + 96) = v37;
  *(a1 + 104) = 0;
  *(a1 + 112) = v14;
  *(a1 + 120) = v16;
  *(a1 + 128) = v18;
  *(a1 + 136) = v36;
  *(a1 + 144) = v21;
  *(a1 + 152) = 0;
  *(a1 + 160) = v4;
  *(a1 + 168) = v23;
  *(a1 + 176) = v25;
  *(a1 + 184) = v27;
  *(a1 + 192) = v29;
  *(a1 + 200) = 0;
  *(a1 + 208) = v30;
  *(a1 + 216) = v32;
  *(a1 + 224) = v33;
  *(a1 + 232) = v34;
  *(a1 + 240) = v35;
  *(a1 + 248) = 0;
  return result;
}

double sub_100038098@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_100003DC0(&qword_100056040, &unk_100044B08);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v48 - v4;
  v6 = sub_10004102C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100041C8C();
  if (!*(&v59 + 1))
  {
    sub_1000049F8(&v58, &qword_1000551D8, &qword_100044540);
    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_6;
  }

  sub_100003DC0(&qword_100056048, &qword_100044B18);
  v11 = swift_dynamicCast();
  (*(v7 + 56))(v5, v11 ^ 1u, 1, v6);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
LABEL_6:
    sub_1000049F8(v5, &qword_100056040, &unk_100044B08);
LABEL_7:
    v55 = 0u;
    v56 = 0u;
    v57 = 1;
    sub_10004158C();
    goto LABEL_8;
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_100040E6C();
  sub_100040E5C();
  v12 = sub_100040E4C();

  if ((v12 & 1) == 0)
  {
    (*(v7 + 8))(v10, v6);
    goto LABEL_7;
  }

  *&v58 = sub_10004101C();
  *(&v58 + 1) = v13;
  sub_100004924();
  v14 = sub_10004178C();
  v16 = v15;
  v18 = v17;
  sub_1000418DC();
  v19 = sub_10004173C();
  v53 = v20;
  v54 = v19;
  LODWORD(v49) = v21;
  v52 = v22;

  sub_10001FD78(v14, v16, v18 & 1);

  sub_1000416BC();
  v23 = v53;
  v24 = v54;
  v25 = sub_10004176C();
  v50 = v26;
  v51 = v25;
  v28 = v27;
  v30 = v29;

  sub_10001FD78(v24, v23, v49 & 1);

  v54 = v10;
  v31 = v30;
  v32 = v51;
  v49 = sub_10004175C();
  v53 = v33;
  LODWORD(v52) = v34;
  sub_10001FD78(v32, v28, v31 & 1);

  sub_1000418BC();
  v35 = v53;
  v36 = sub_10004177C();
  v38 = v37;
  v40 = v39;

  sub_10001FD78(v49, v35, v52 & 1);

  sub_1000418AC();
  LOBYTE(v23) = v40;
  v41 = sub_10004177C();
  v52 = v43;
  v53 = v42;
  LOBYTE(v35) = v44;

  sub_10001FD78(v36, v38, v23 & 1);

  *&v55 = v41;
  *(&v55 + 1) = v53;
  *&v56 = v35 & 1;
  *(&v56 + 1) = v52;
  v57 = 0;
  sub_10004158C();
  (*(v7 + 8))(v54, v6);
LABEL_8:
  result = *&v58;
  v46 = v59;
  v47 = v60;
  *a1 = v58;
  *(a1 + 16) = v46;
  *(a1 + 32) = v47;
  return result;
}

double sub_10003857C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AvatarView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10003A1B4(v2, v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_10003AEA4(v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for AvatarView);
  v9 = *(v2 + *(v4 + 52));
  sub_100041A9C();
  sub_10004125C();
  *&v20[54] = v25;
  *&v20[70] = v26;
  *&v20[86] = v27;
  *&v20[102] = v28;
  *&v20[22] = v23;
  *&v20[38] = v24;
  v21 = 0;
  *&v20[6] = v22;
  v10 = v2 + *(v4 + 24);
  v11 = *v10;
  v12 = *(v10 + 8);
  sub_100041A9C();
  sub_10004120C();
  *a1 = sub_10003A49C;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 0;
  *(a1 + 90) = *&v20[64];
  v13 = *&v20[96];
  *(a1 + 106) = *&v20[80];
  *(a1 + 122) = v13;
  *(a1 + 136) = *&v20[110];
  v14 = *&v20[16];
  *(a1 + 26) = *v20;
  *(a1 + 42) = v14;
  v15 = *&v20[48];
  *(a1 + 58) = *&v20[32];
  *(a1 + 74) = v15;
  v16 = v18[2];
  *(a1 + 144) = v18[1];
  *(a1 + 160) = v16;
  result = v19[0];
  *(a1 + 176) = *v19;
  return result;
}

uint64_t sub_100038818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for AvatarView();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_10004121C();
  v11 = v10;
  v13 = v12;
  *a3 = sub_100041A6C();
  a3[1] = v14;
  v15 = sub_100003DC0(&qword_100055E88, &qword_100044990);
  sub_1000389E8(a2, a1, a3 + *(v15 + 44));
  sub_10003A1B4(a2, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = swift_allocObject();
  sub_10003AEA4(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for AvatarView);
  v18 = (v17 + ((v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = v11;
  v18[1] = v13;
  v19 = (a3 + *(sub_100003DC0(&qword_100055E90, &qword_100044998) + 36));
  *v19 = sub_10003A76C;
  v19[1] = v17;
  v19[2] = 0;
  v19[3] = 0;
  v20 = (a2 + *(v7 + 64));
  v21 = -v20[1] - v20[3];
  v22 = -*v20;
  result = sub_100003DC0(&qword_100055E98, &qword_1000449A0);
  v24 = (a3 + *(result + 36));
  *v24 = v21;
  v24[1] = v22;
  return result;
}

uint64_t sub_1000389E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v218 = a3;
  v219 = a2;
  v4 = sub_100003DC0(&qword_100055EA0, &qword_1000449A8);
  v217 = *(v4 - 8);
  v5 = *(v217 + 64);
  __chkstk_darwin(v4);
  v215 = &v169[-v6];
  v202 = sub_100040C1C();
  v199 = *(v202 - 8);
  v7 = *(v199 + 64);
  __chkstk_darwin(v202);
  v197 = &v169[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v195 = type metadata accessor for StatusBadgeView();
  v9 = *(*(v195 - 8) + 64);
  __chkstk_darwin(v195);
  v196 = &v169[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v198 = sub_100003DC0(&qword_100055EA8, &qword_1000449B0);
  v11 = *(*(v198 - 8) + 64);
  __chkstk_darwin(v198);
  v201 = &v169[-v12];
  v13 = sub_100003DC0(&qword_100055EB0, &qword_1000449B8);
  v212 = *(v13 - 8);
  v213 = v13;
  v14 = *(v212 + 64);
  __chkstk_darwin(v13);
  v200 = &v169[-v15];
  v16 = sub_100003DC0(&qword_100055EB8, &qword_1000449C0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v169[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v214 = &v169[-v21];
  v209 = sub_100003DC0(&qword_100055EC0, &unk_1000449C8);
  v22 = *(*(v209 - 8) + 64);
  __chkstk_darwin(v209);
  v210 = &v169[-v23];
  v24 = sub_1000414CC();
  v193 = *(v24 - 8);
  v194 = v24;
  v25 = *(v193 + 64);
  __chkstk_darwin(v24);
  v192 = &v169[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = sub_100003DC0(&qword_100055C48, &qword_100044650);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v186 = &v169[-v29];
  v185 = sub_10004194C();
  v208 = *(v185 - 8);
  v30 = *(v208 + 64);
  __chkstk_darwin(v185);
  v203 = &v169[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v188 = sub_100003DC0(&qword_100055EC8, &qword_1000449D8);
  v32 = *(*(v188 - 8) + 64);
  __chkstk_darwin(v188);
  v187 = &v169[-v33];
  v34 = sub_100003DC0(&qword_100055ED0, &qword_1000449E0);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v189 = &v169[-v36];
  v37 = sub_100003DC0(&qword_100055ED8, &qword_1000449E8);
  v191 = *(v37 - 8);
  v38 = *(v191 + 64);
  __chkstk_darwin(v37);
  v190 = &v169[-v39];
  v40 = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8);
  v43 = &v169[-v42];
  v44 = sub_100041C6C();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  __chkstk_darwin(v44);
  v48 = &v169[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = sub_100003DC0(&qword_100055EE0, &qword_1000449F0);
  v50 = *(*(v49 - 8) + 64);
  v51 = __chkstk_darwin(v49 - 8);
  v211 = &v169[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v51);
  v216 = &v169[-v53];
  v54 = type metadata accessor for AvatarView();
  v55 = *(v54 + 24);
  v220 = a1;
  if (*(a1 + v55 + 8) != 1 || *(v220 + *(v54 + 40)) == 1)
  {
    v205 = v34;
    v206 = v20;
    v56 = v37;
    v207 = v4;
    v57 = v54;
    v58 = v220;
    sub_100037EC4(&v241);
    v184 = v57;
    sub_100011258(v58 + *(v57 + 28), v43, &qword_1000546F0, &unk_100044170);
    v59 = (*(v45 + 48))(v43, 1, v44);
    v204 = v56;
    if (v59 == 1)
    {
      sub_1000049F8(v43, &qword_1000546F0, &unk_100044170);
    }

    else
    {
      v60 = v43;
      v61 = v48;
      (*(v45 + 32))(v48, v60, v44);
      v62 = sub_100041C5C();
      if (v62)
      {
        v63 = v62;
        v64 = COERCE_DOUBLE(sub_100041C3C());
        if (v65)
        {
          v66 = 0.0;
        }

        else
        {
          v66 = v64;
        }

        v67 = COERCE_DOUBLE(sub_100041C4C());
        v170 = v68;
        v69 = 2.1 - v67;
        sub_1000378C4(v66);
        v71 = v70;
        v72 = sub_100041A8C();
        v171 = v73;
        v172 = v72;
        v74 = *(sub_100003DC0(&qword_100055F28, &qword_100044A18) + 36);
        v182 = v61;
        v75 = v187;
        v76 = &v187[v74];
        v179 = enum case for Image.ResizingMode.stretch(_:);
        v77 = v208;
        v180 = v45;
        v78 = *(v208 + 104);
        v177 = v208 + 104;
        v178 = v78;
        v79 = v203;
        v80 = v185;
        v78(v203);
        sub_10004197C();
        v81 = *(v77 + 8);
        v208 = v77 + 8;
        v176 = v81;
        v81(v79, v80);
        v183 = v63;
        v82 = v186;
        sub_100041D1C();
        v174 = sub_100041D2C();
        v83 = *(v174 - 8);
        v173 = *(v83 + 56);
        v175 = v83 + 56;
        v173(v82, 0, 1, v174);
        sub_10004196C();

        sub_1000049F8(v82, &qword_100055C48, &qword_100044650);
        sub_10004121C();
        v181 = v44;
        sub_10004121C();
        sub_100041A9C();
        sub_10004120C();
        v84 = &v76[*(sub_100003DC0(&qword_100055FE0, &qword_100044AA8) + 36)];
        v85 = v235;
        *v84 = v234;
        v84[1] = v85;
        v84[2] = v236;
        v86 = &v76[*(sub_100003DC0(&qword_100055FE8, &qword_100044AB0) + 36)];
        *v86 = 0;
        *(v86 + 4) = 1;
        *&v76[*(sub_100003DC0(&qword_100055FF0, &qword_100044AB8) + 36)] = 256;
        *&v76[*(sub_100003DC0(&qword_100055FF8, &qword_100044AC0) + 36)] = v71;
        if (v170)
        {
          v87 = 2.1;
        }

        else
        {
          v87 = v69;
        }

        *&v76[*(sub_100003DC0(&qword_100056000, &qword_100044AC8) + 36)] = v87;
        v88 = &v76[*(sub_100003DC0(&qword_100056008, &qword_100044AD0) + 36)];
        *v88 = 0x4020000000000000;
        v88[8] = 0;
        sub_100041ADC();
        v90 = v89;
        v92 = v91;
        v93 = &v76[*(sub_100003DC0(&qword_100056010, &qword_100044AD8) + 36)];
        *v93 = vdupq_n_s64(0x3FEB333333333333uLL);
        v93[1].i64[0] = v90;
        v93[1].i64[1] = v92;
        v94 = sub_100037BD0(v66);
        *&v76[*(sub_100003DC0(&qword_100056018, &qword_100044AE0) + 36)] = v94;
        *&v76[*(sub_100003DC0(&qword_100056020, &qword_100044AE8) + 36)] = xmmword_1000445B0;
        v95 = &v76[*(sub_100003DC0(&qword_100055F90, &qword_100044A48) + 36)];
        v96 = v171;
        *v95 = v172;
        v95[1] = v96;
        v97 = v244;
        v75[2] = v243;
        v75[3] = v97;
        v98 = v242;
        *v75 = v241;
        v75[1] = v98;
        v99 = v248;
        v75[6] = v247;
        v75[7] = v99;
        v100 = v246;
        v75[4] = v245;
        v75[5] = v100;
        v101 = v252;
        v75[10] = v251;
        v75[11] = v101;
        v102 = v250;
        v75[8] = v249;
        v75[9] = v102;
        *(v75 + 233) = *(v255 + 9);
        v103 = v255[0];
        v75[13] = v254;
        v75[14] = v103;
        v75[12] = v253;
        sub_100011258(&v241, v221, &qword_100055EE8, &qword_1000449F8);
        v104 = sub_100041A8C();
        v171 = v105;
        v172 = v104;
        v106 = v75 + *(sub_100003DC0(&qword_100055F18, &qword_100044A10) + 36);
        v107 = v203;
        v178(v203, v179, v80);
        sub_10004197C();
        v176(v107, v80);
        sub_100041D1C();
        v173(v82, 0, 1, v174);
        sub_10004196C();

        sub_1000049F8(v82, &qword_100055C48, &qword_100044650);
        v108 = &v106[*(sub_100003DC0(&qword_100056028, &qword_100044AF0) + 36)];
        *v108 = 0;
        *(v108 + 4) = 1;
        sub_10004121C();
        sub_10004121C();
        sub_100041A9C();
        sub_10004120C();
        v109 = &v106[*(sub_100003DC0(&qword_100056030, &qword_100044AF8) + 36)];
        v110 = v221[1];
        *v109 = v221[0];
        *(v109 + 1) = v110;
        *(v109 + 2) = v221[2];
        *&v106[*(sub_100003DC0(&qword_100056038, &qword_100044B00) + 36)] = 256;
        v111 = &v106[*(sub_100003DC0(&qword_100055FA0, &qword_100044A50) + 36)];
        v112 = v171;
        *v111 = v172;
        v111[1] = v112;
        v113 = sub_100041A5C();
        v115 = v114;
        sub_100038098(&v228);
        v116 = v230;
        v117 = v229;
        v118 = v75 + *(v188 + 36);
        *v118 = v228;
        *(v118 + 1) = v117;
        v118[32] = v116;
        *(v118 + 5) = v113;
        *(v118 + 6) = v115;
        sub_10003A8B8();
        v119 = v189;
        sub_10004184C();
        sub_1000049F8(v75, &qword_100055EC8, &qword_1000449D8);
        v121 = v192;
        v120 = v193;
        v122 = v194;
        (*(v193 + 104))(v192, enum case for ColorRenderingMode.nonLinear(_:), v194);
        v123 = sub_10003A7FC();
        v125 = v204;
        v124 = v205;
        v126 = v190;
        sub_10004180C();
        (*(v120 + 8))(v121, v122);
        sub_1000049F8(v119, &qword_100055ED0, &qword_1000449E0);
        v127 = v191;
        (*(v191 + 16))(v210, v126, v125);
        swift_storeEnumTagMultiPayload();
        sub_100003DC0(&qword_100055EF8, &qword_100044A08);
        *&v228 = v124;
        *(&v228 + 1) = v123;
        swift_getOpaqueTypeConformance2();
        sub_10003ACD8();
        v128 = v216;
        sub_10004158C();

        (*(v127 + 8))(v126, v125);
        (*(v180 + 8))(v182, v181);
LABEL_18:
        sub_100041C9C();
        v137 = v206;
        if (*(&v223 + 1))
        {
          sub_10002242C(&v222, &v228);
          sub_100010A94(&v228, *(&v229 + 1));
          if ((sub_100041C0C() & 1) == 0)
          {
            v139 = sub_100041CAC();
            v140 = v196;
            v141 = v220;
            (*(*(v139 - 8) + 16))(v196, v220, v139);
            UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontSystem, 25.0, 0);
            v143 = v195;
            *(v140 + *(v195 + 20)) = UIFontForLanguage;
            *(v140 + v143[6]) = 0x4000000000000000;
            *(v140 + v143[7]) = 0x4010000000000000;
            v144 = v143[8];
            *(v140 + v144) = swift_getKeyPath();
            sub_100003DC0(&qword_100054708, &qword_100042D90);
            swift_storeEnumTagMultiPayload();
            v145 = 0.0;
            if (*(v141 + *(v184 + 36)))
            {
              v145 = 2.0;
            }

            v146 = (v141 + *(v184 + 56));
            v147 = v145 - v146[1] - v146[3];
            v148 = -v145 - *v146;
            v149 = v201;
            sub_10003AEA4(v140, v201, type metadata accessor for StatusBadgeView);
            v150 = &v149[*(v198 + 36)];
            *v150 = v147;
            v150[1] = v148;
            v151 = v230;
            sub_100010A94(&v228, *(&v229 + 1));
            v152 = *(v151 + 8);
            v153 = v197;
            sub_100040CFC();
            v154 = sub_100040C0C();
            v156 = v155;
            (*(v199 + 8))(v153, v202);
            *&v222 = v154;
            *(&v222 + 1) = v156;
            sub_100004924();
            v157 = sub_10004178C();
            v159 = v158;
            v161 = v160;
            sub_10003AF0C();
            v162 = v200;
            sub_10004182C();
            sub_10001FD78(v157, v159, v161 & 1);

            v163 = v149;
            v128 = v216;
            sub_1000049F8(v163, &qword_100055EA8, &qword_1000449B0);
            sub_100040BAC();
            v164 = v213;
            v138 = v214;
            sub_10004124C();

            sub_1000049F8(v162, &qword_100055EB0, &qword_1000449B8);
            (*(v212 + 56))(v138, 0, 1, v164);
            sub_100010DCC(&v228);
            goto LABEL_26;
          }

          sub_100010DCC(&v228);
        }

        else
        {
          sub_1000049F8(&v222, &qword_100055218, &unk_100044680);
        }

        v138 = v214;
        (*(v212 + 56))(v214, 1, 1, v213);
LABEL_26:
        v165 = v211;
        sub_10003ADBC(v128, v211);
        sub_100011258(v138, v137, &qword_100055EB8, &qword_1000449C0);
        v166 = v215;
        sub_10003ADBC(v165, v215);
        v167 = sub_100003DC0(&qword_100055FC8, &qword_100044A68);
        sub_100011258(v137, &v166[*(v167 + 48)], &qword_100055EB8, &qword_1000449C0);
        sub_1000049F8(&v241, &qword_100055EE8, &qword_1000449F8);
        sub_1000049F8(v138, &qword_100055EB8, &qword_1000449C0);
        sub_1000049F8(v128, &qword_100055EE0, &qword_1000449F0);
        sub_1000049F8(v137, &qword_100055EB8, &qword_1000449C0);
        sub_1000049F8(v165, &qword_100055EE0, &qword_1000449F0);
        v168 = v218;
        sub_10003AE2C(v166, v218);
        return (*(v217 + 56))(v168, 0, 1, v207);
      }

      (*(v45 + 8))(v48, v44);
    }

    v132 = v205;
    v133 = sub_100041A8C();
    v135 = v134;
    sub_100039F38(&v222);
    v230 = v224;
    v231 = v225;
    v232 = v226;
    v228 = v222;
    v229 = v223;
    *&v233 = v133;
    *(&v233 + 1) = v135;
    v227[12] = v253;
    v227[13] = v254;
    v227[14] = v255[0];
    *(&v227[14] + 9) = *(v255 + 9);
    v227[8] = v249;
    v227[9] = v250;
    v227[10] = v251;
    v227[11] = v252;
    v227[4] = v245;
    v227[5] = v246;
    v227[6] = v247;
    v227[7] = v248;
    v227[0] = v241;
    v227[1] = v242;
    v227[2] = v243;
    v227[3] = v244;
    v227[18] = v224;
    v227[19] = v225;
    v227[20] = v226;
    v227[21] = v233;
    v227[16] = v222;
    v227[17] = v223;
    v236 = v224;
    v237 = v225;
    v238 = v226;
    v234 = v222;
    v235 = v223;
    v239 = v133;
    v240 = v135;
    sub_100011258(&v241, v221, &qword_100055EE8, &qword_1000449F8);
    sub_100011258(&v228, v221, &qword_100055EF0, &qword_100044A00);
    sub_1000049F8(&v234, &qword_100055EF0, &qword_100044A00);
    memcpy(v210, v227, 0x160uLL);
    swift_storeEnumTagMultiPayload();
    sub_100003DC0(&qword_100055EF8, &qword_100044A08);
    v136 = sub_10003A7FC();
    *&v221[0] = v132;
    *(&v221[0] + 1) = v136;
    swift_getOpaqueTypeConformance2();
    sub_10003ACD8();
    v128 = v216;
    sub_10004158C();
    goto LABEL_18;
  }

  v129 = v218;
  v130 = *(v217 + 56);

  return v130(v129, 1, 1, v4);
}

double sub_100039F38@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_10004119C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v18 - v8;
  sub_1000376BC(v18 - v8);
  (*(v3 + 104))(v7, enum case for ColorScheme.dark(_:), v2);
  v10 = sub_10004118C();
  v11 = *(v3 + 8);
  v11(v7, v2);
  v11(v9, v2);
  if (v10)
  {
    v12 = 0x3FC3333333333333;
    v13 = sub_1000418DC();
  }

  else
  {
    v12 = 0x3FAEB851EB851EB8;
    v13 = sub_1000418BC();
  }

  v14 = v13;
  v15 = sub_1000415EC();
  sub_10004121C();
  sub_10004121C();
  sub_100041A9C();
  sub_10004120C();
  *a1 = v14;
  *(a1 + 8) = v15;
  *(a1 + 16) = v12;
  v16 = v18[1];
  *(a1 + 24) = v18[0];
  *(a1 + 40) = v16;
  result = *&v19;
  *(a1 + 56) = v19;
  *(a1 + 72) = 256;
  return result;
}

uint64_t sub_10003A11C()
{
  sub_10003751C();
  sub_100003DC0(&unk_100055E30, qword_100044930);
  sub_1000419FC();
}

uint64_t sub_10003A1B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AvatarView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003A218()
{
  v1 = type metadata accessor for AvatarView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_100041CAC();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  v7 = v1[7];
  v8 = sub_100041C6C();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = *(v5 + v1[8]);

  v11 = v1[11];
  v12 = sub_1000408CC();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);
  v13 = v5 + v1[12];
  sub_10003A45C(*v13, *(v13 + 8), *(v13 + 16), *(v13 + 24), *(v13 + 25));
  v14 = v1[15];
  sub_100003DC0(&qword_100054700, &qword_100042B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_10004119C();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
    v16 = *(v5 + v14);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10003A45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    v5 = vars8;
  }
}

uint64_t sub_10003A49C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for AvatarView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100038818(a1, v6, a2);
}

uint64_t sub_10003A51C()
{
  v1 = type metadata accessor for AvatarView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_100041CAC();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  v7 = v1[7];
  v8 = sub_100041C6C();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = *(v5 + v1[8]);

  v11 = v1[11];
  v12 = sub_1000408CC();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);
  v13 = v5 + v1[12];
  sub_10003A45C(*v13, *(v13 + 8), *(v13 + 16), *(v13 + 24), *(v13 + 25));
  v14 = v1[15];
  sub_100003DC0(&qword_100054700, &qword_100042B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_10004119C();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
    v16 = *(v5 + v14);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_10003A76C()
{
  v1 = *(type metadata accessor for AvatarView() - 8);
  v2 = (v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v3 = *v2;
  v4 = v2[1];

  return sub_10003A11C();
}

unint64_t sub_10003A7FC()
{
  result = qword_100055F00;
  if (!qword_100055F00)
  {
    sub_100003E08(&qword_100055ED0, &qword_1000449E0);
    sub_10003A8B8();
    sub_10003AFC8(&qword_1000546A0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055F00);
  }

  return result;
}

unint64_t sub_10003A8B8()
{
  result = qword_100055F08;
  if (!qword_100055F08)
  {
    sub_100003E08(&qword_100055EC8, &qword_1000449D8);
    sub_10003A970();
    sub_100004D80(&qword_100055FA8, &qword_100055FB0, &unk_100044A58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055F08);
  }

  return result;
}

unint64_t sub_10003A970()
{
  result = qword_100055F10;
  if (!qword_100055F10)
  {
    sub_100003E08(&qword_100055F18, &qword_100044A10);
    sub_10003AA28();
    sub_100004D80(&qword_100055F98, &qword_100055FA0, &qword_100044A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055F10);
  }

  return result;
}

unint64_t sub_10003AA28()
{
  result = qword_100055F20;
  if (!qword_100055F20)
  {
    sub_100003E08(&qword_100055F28, &qword_100044A18);
    sub_10003AB9C(&qword_100055F30, &qword_100055EE8, &qword_1000449F8, sub_10003AB0C);
    sub_100004D80(&qword_100055F88, &qword_100055F90, &qword_100044A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055F20);
  }

  return result;
}

uint64_t sub_10003AB9C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_10003AC20()
{
  result = qword_100055F68;
  if (!qword_100055F68)
  {
    sub_100003E08(&qword_100055F70, &qword_100044A38);
    sub_100004D80(&qword_100055F78, &qword_100055F80, &qword_100044A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055F68);
  }

  return result;
}

unint64_t sub_10003ACD8()
{
  result = qword_100055FB8;
  if (!qword_100055FB8)
  {
    sub_100003E08(&qword_100055EF8, &qword_100044A08);
    sub_10003AB9C(&qword_100055F30, &qword_100055EE8, &qword_1000449F8, sub_10003AB0C);
    sub_100004D80(&qword_100055FC0, &qword_100055EF0, &qword_100044A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055FB8);
  }

  return result;
}

uint64_t sub_10003ADBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003DC0(&qword_100055EE0, &qword_1000449F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003AE2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003DC0(&qword_100055EA0, &qword_1000449A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003AEA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10003AF0C()
{
  result = qword_100055FD0;
  if (!qword_100055FD0)
  {
    sub_100003E08(&qword_100055EA8, &qword_1000449B0);
    sub_10003AFC8(&qword_100055FD8, type metadata accessor for StatusBadgeView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055FD0);
  }

  return result;
}

uint64_t sub_10003AFC8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10003B010()
{
  result = qword_100056058;
  if (!qword_100056058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056058);
  }

  return result;
}

unint64_t sub_10003B068()
{
  result = qword_100056060;
  if (!qword_100056060)
  {
    sub_100003E08(&qword_100056068, &qword_100044B28);
    sub_10003B0F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056060);
  }

  return result;
}

unint64_t sub_10003B0F4()
{
  result = qword_100056070;
  if (!qword_100056070)
  {
    sub_100003E08(&qword_100056078, &qword_100044B30);
    sub_10003B180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056070);
  }

  return result;
}

unint64_t sub_10003B180()
{
  result = qword_100056080;
  if (!qword_100056080)
  {
    sub_100003E08(&qword_100056088, &qword_100044B38);
    sub_100004D80(&qword_100056090, &qword_100056098, &unk_100044B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056080);
  }

  return result;
}

uint64_t sub_10003B24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1000408CC();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10003B35C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1000408CC();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for SingleContactSmallWidgetView()
{
  result = qword_1000560F8;
  if (!qword_1000560F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003B4B0()
{
  sub_10003B534();
  if (v0 <= 0x3F)
  {
    sub_1000408CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10003B534()
{
  if (!qword_100054C48)
  {
    sub_100041BAC();
    v0 = sub_1000420FC();
    if (!v1)
    {
      atomic_store(v0, &qword_100054C48);
    }
  }
}

double sub_10003B5A8@<D0>(uint64_t a1@<X8>)
{
  sub_100036B0C();
  sub_10004147C();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10003B608(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  sub_100036B0C();

  return sub_10004148C();
}

uint64_t sub_10003B680(uint64_t a1)
{
  v30 = sub_100003DC0(&qword_1000546C8, &qword_100042AE0);
  v2 = *(v30 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v30);
  v5 = &v27 - v4;
  v28 = sub_100003DC0(&qword_100056180, &qword_100044D08);
  v6 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v27 = &v27 - v7;
  v8 = sub_100003DC0(&qword_1000546B0, &qword_100043630);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v27 - v10;
  v12 = sub_10004083C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v27 - v18;
  sub_100011258(a1, v11, &qword_1000546B0, &qword_100043630);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000049F8(v11, &qword_1000546B0, &qword_100043630);
    (*(v2 + 16))(v5, v29, v30);
    v20 = sub_100003E08(&qword_1000546C0, &unk_100044D10);
    v21 = sub_100004D80(&qword_1000546D8, &qword_1000546C0, &unk_100044D10);
    v31 = v20;
    v32 = v21;
    swift_getOpaqueTypeConformance2();
    return sub_1000419EC();
  }

  else
  {
    (*(v13 + 32))(v19, v11, v12);
    v23 = (*(v13 + 16))(v17, v19, v12);
    __chkstk_darwin(v23);
    *(&v27 - 2) = v29;
    v24 = sub_100003E08(&qword_1000546C0, &unk_100044D10);
    v25 = sub_100004D80(&qword_1000546D8, &qword_1000546C0, &unk_100044D10);
    v31 = v24;
    v32 = v25;
    swift_getOpaqueTypeConformance2();
    sub_1000416FC();
    sub_100004D80(&qword_100056188, &qword_100056180, &qword_100044D08);
    v26 = sub_1000419EC();
    (*(v13 + 8))(v19, v12);
    return v26;
  }
}

uint64_t sub_10003BAEC(uint64_t a1)
{
  v30 = sub_100003DC0(&qword_100055860, &unk_1000440E0);
  v2 = *(v30 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v30);
  v5 = &v27 - v4;
  v28 = sub_100003DC0(&qword_100056168, &qword_100044D00);
  v6 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v27 = &v27 - v7;
  v8 = sub_100003DC0(&qword_1000546B0, &qword_100043630);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v27 - v10;
  v12 = sub_10004083C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v27 - v18;
  sub_100011258(a1, v11, &qword_1000546B0, &qword_100043630);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000049F8(v11, &qword_1000546B0, &qword_100043630);
    (*(v2 + 16))(v5, v29, v30);
    v20 = sub_100003E08(&qword_100055858, &qword_1000440D8);
    v21 = sub_100004D80(&qword_100055870, &qword_100055858, &qword_1000440D8);
    v31 = v20;
    v32 = v21;
    swift_getOpaqueTypeConformance2();
    return sub_1000419EC();
  }

  else
  {
    (*(v13 + 32))(v19, v11, v12);
    v23 = (*(v13 + 16))(v17, v19, v12);
    __chkstk_darwin(v23);
    *(&v27 - 2) = v29;
    v24 = sub_100003E08(&qword_100055858, &qword_1000440D8);
    v25 = sub_100004D80(&qword_100055870, &qword_100055858, &qword_1000440D8);
    v31 = v24;
    v32 = v25;
    swift_getOpaqueTypeConformance2();
    sub_1000416FC();
    sub_100004D80(&qword_100056170, &qword_100056168, &qword_100044D00);
    v26 = sub_1000419EC();
    (*(v13 + 8))(v19, v12);
    return v26;
  }
}

uint64_t sub_10003BF58(uint64_t a1)
{
  v30 = sub_100003DC0(&qword_100056138, &qword_100044BD0);
  v2 = *(v30 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v30);
  v5 = &v27 - v4;
  v28 = sub_100003DC0(&qword_100056158, &qword_100044C20);
  v6 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v27 = &v27 - v7;
  v8 = sub_100003DC0(&qword_1000546B0, &qword_100043630);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v27 - v10;
  v12 = sub_10004083C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v27 - v18;
  sub_100011258(a1, v11, &qword_1000546B0, &qword_100043630);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000049F8(v11, &qword_1000546B0, &qword_100043630);
    (*(v2 + 16))(v5, v29, v30);
    v20 = sub_100003E08(&qword_100056130, &qword_100044BC8);
    v21 = sub_100004D80(&qword_100056148, &qword_100056130, &qword_100044BC8);
    v31 = v20;
    v32 = v21;
    swift_getOpaqueTypeConformance2();
    return sub_1000419EC();
  }

  else
  {
    (*(v13 + 32))(v19, v11, v12);
    v23 = (*(v13 + 16))(v17, v19, v12);
    __chkstk_darwin(v23);
    *(&v27 - 2) = v29;
    v24 = sub_100003E08(&qword_100056130, &qword_100044BC8);
    v25 = sub_100004D80(&qword_100056148, &qword_100056130, &qword_100044BC8);
    v31 = v24;
    v32 = v25;
    swift_getOpaqueTypeConformance2();
    sub_1000416FC();
    sub_100004D80(&qword_100056160, &qword_100056158, &qword_100044C20);
    v26 = sub_1000419EC();
    (*(v13 + 8))(v19, v12);
    return v26;
  }
}

uint64_t sub_10003C3C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v3 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v52 = &v50 - v5;
  v6 = sub_100003DC0(&qword_1000546B0, &qword_100043630);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v50 - v8;
  v53 = sub_1000415AC();
  v10 = *(v53 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v53);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003DC0(&qword_100056130, &qword_100044BC8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v50 - v16;
  v54 = sub_100003DC0(&qword_100056138, &qword_100044BD0);
  v18 = *(v54 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v54);
  v21 = &v50 - v20;
  v55 = sub_100003DC0(&qword_100054698, &qword_100042AB8);
  v22 = *(*(v55 - 8) + 64);
  v23 = __chkstk_darwin(v55);
  v51 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v57 = &v50 - v25;
  v56 = sub_100003DC0(&qword_100054678, &qword_100042AB0);
  v26 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v58 = &v50 - v27;
  *v17 = sub_1000414FC();
  *(v17 + 1) = 0x4020000000000000;
  v17[16] = 0;
  v28 = sub_100003DC0(&qword_100056140, &qword_100044BD8);
  sub_10003CAAC(v2, &v17[*(v28 + 44)]);
  sub_10004159C();
  sub_100004D80(&qword_100056148, &qword_100056130, &qword_100044BC8);
  sub_10004186C();
  (*(v10 + 8))(v13, v53);
  v29 = v52;
  sub_1000049F8(v17, &qword_100056130, &qword_100044BC8);
  sub_100041B4C();
  v30 = sub_10004083C();
  (*(*(v30 - 8) + 56))(v9, 0, 1, v30);
  v31 = sub_10003BF58(v9);
  sub_1000049F8(v9, &qword_1000546B0, &qword_100043630);
  (*(v18 + 8))(v21, v54);
  v60 = v31;
  sub_100011258(v2, v29, &qword_1000546B8, &unk_100042AD0);
  v32 = sub_100041BAC();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v29, 1, v32) == 1)
  {
    sub_1000049F8(v29, &qword_1000546B8, &unk_100042AD0);
    v34 = sub_100041F4C();
    v36 = v35;
  }

  else
  {
    v34 = sub_100041B6C();
    v36 = v37;
    (*(v33 + 8))(v29, v32);
  }

  *&v61 = v34;
  *(&v61 + 1) = v36;
  sub_100004924();
  v38 = v51;
  sub_10004183C();

  sub_100040B7C();
  v39 = v57;
  sub_10004124C();

  sub_1000049F8(v38, &qword_100054698, &qword_100042AB8);
  sub_100041A9C();
  sub_10004125C();
  v40 = v58;
  sub_100004C8C(v39, v58, &qword_100054698, &qword_100042AB8);
  v41 = (v40 + *(v56 + 36));
  v42 = v66;
  v41[4] = v65;
  v41[5] = v42;
  v41[6] = v67;
  v43 = v62;
  *v41 = v61;
  v41[1] = v43;
  v44 = v64;
  v41[2] = v63;
  v41[3] = v44;
  KeyPath = swift_getKeyPath();
  v46 = sub_100003DC0(&qword_100056150, &unk_100044C10);
  v47 = v59;
  v48 = (v59 + *(v46 + 36));
  *v48 = KeyPath;
  sub_100003DC0(&qword_100054710, &unk_100042C00);
  swift_storeEnumTagMultiPayload();
  *(v48 + *(type metadata accessor for TimeStampModifier(0) + 20)) = 1;
  return sub_100004C8C(v40, v47, &qword_100054678, &qword_100042AB0);
}

uint64_t sub_10003CAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v144 = a2;
  v137 = sub_100040E0C();
  v136 = *(v137 - 8);
  v3 = *(v136 + 64);
  __chkstk_darwin(v137);
  v139 = v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for StatusAndNameView();
  v5 = *(*(v141 - 8) + 64);
  v6 = __chkstk_darwin(v141);
  v143 = v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v127 = (v118 - v9);
  __chkstk_darwin(v8);
  v142 = v118 - v10;
  v152 = sub_100041CAC();
  v154 = *(v152 - 8);
  v11 = v154[8];
  v12 = __chkstk_darwin(v152);
  v140 = v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v118 - v14;
  v16 = sub_1000408CC();
  v148 = *(v16 - 8);
  v149 = v16;
  v17 = *(v148 + 64);
  __chkstk_darwin(v16);
  v147 = v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v146 = v118 - v21;
  v131 = sub_10004116C();
  v130 = *(v131 - 8);
  v22 = *(v130 + 64);
  __chkstk_darwin(v131);
  v129 = v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v132 = v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v128 = v118 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = v118 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = v118 - v34;
  __chkstk_darwin(v33);
  v37 = v118 - v36;
  v38 = sub_100003DC0(&qword_1000546F8, &qword_100042B00);
  v39 = *(*(v38 - 8) + 64);
  v40 = __chkstk_darwin(v38 - 8);
  v134 = v118 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v133 = v118 - v43;
  v44 = __chkstk_darwin(v42);
  v124 = (v118 - v45);
  __chkstk_darwin(v44);
  v47 = v118 - v46;
  v48 = type metadata accessor for AvatarView();
  v49 = *(*(v48 - 1) + 64);
  v50 = __chkstk_darwin(v48);
  v138 = v118 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v50);
  v54 = v118 - v53;
  __chkstk_darwin(v52);
  v135 = v118 - v55;
  v153 = a1;
  sub_100011258(a1, v37, &qword_1000546B8, &unk_100042AD0);
  v56 = sub_100041BAC();
  v57 = *(v56 - 8);
  v150 = *(v57 + 48);
  v151 = v57 + 48;
  if (v150(v37, 1, v56) == 1)
  {
    sub_1000049F8(v37, &qword_1000546B8, &unk_100042AD0);
    v58 = 1;
  }

  else
  {
    sub_100041B7C();
    (*(v57 + 8))(v37, v56);
    v58 = 0;
  }

  v59 = v47;
  v60 = v154[7];
  v126 = v154 + 7;
  v125 = v60;
  v60(v47, v58, 1, v152);
  sub_100011258(v153, v35, &qword_1000546B8, &unk_100042AD0);
  v61 = v150(v35, 1, v56);
  v145 = v57;
  if (v61 == 1)
  {
    sub_1000049F8(v35, &qword_1000546B8, &unk_100042AD0);
    v120 = 0;
  }

  else
  {
    v62 = v15;
    v63 = v129;
    sub_100041B8C();
    (*(v57 + 8))(v35, v56);
    v120 = sub_10004114C();
    v64 = v63;
    v15 = v62;
    (*(v130 + 8))(v64, v131);
  }

  v65 = v127;
  sub_100011258(v153, v32, &qword_1000546B8, &unk_100042AD0);
  v66 = v150(v32, 1, v56);
  v122 = v15;
  if (v66 == 1)
  {
    sub_1000049F8(v32, &qword_1000546B8, &unk_100042AD0);
    v67 = sub_100041C6C();
    (*(*(v67 - 8) + 56))(v146, 1, 1, v67);
  }

  else
  {
    sub_100041B5C();
    (*(v145 + 8))(v32, v56);
  }

  v68 = type metadata accessor for SingleContactSmallWidgetView();
  (*(v148 + 16))(v147, v153 + *(v68 + 20), v149);
  sub_100040D9C();
  v119 = sub_100040D8C();
  v69 = v48[7];
  v70 = sub_100041C6C();
  (*(*(v70 - 8) + 56))(&v54[v69], 1, 1, v70);
  v118[1] = sub_100040D8C();
  v71 = &v54[v48[12]];
  KeyPath = swift_getKeyPath();
  *(v71 + 1) = 0;
  *(v71 + 2) = 0;
  *v71 = KeyPath;
  *(v71 + 12) = 0;
  v73 = v48[13];
  sub_100041B0C();
  *&v54[v73] = v74;
  v75 = &v54[v48[14]];
  *v75 = xmmword_100042940;
  *(v75 + 1) = xmmword_100042950;
  v76 = v48[15];
  *&v54[v76] = swift_getKeyPath();
  v121 = sub_100003DC0(&qword_100054700, &qword_100042B60);
  swift_storeEnumTagMultiPayload();
  v77 = v124;
  sub_100011258(v59, v124, &qword_1000546F8, &qword_100042B00);
  v78 = v154;
  v79 = v59;
  v80 = (v154 + 6);
  v81 = v154[6];
  v82 = v81(v77, 1, v152);
  v127 = v80;
  v123 = v81;
  if (v82 == 1)
  {
    v83 = v122;
    sub_100041B1C();
    sub_1000049F8(v79, &qword_1000546F8, &qword_100042B00);
    v84 = v152;
    v85 = v83;
    if (v81(v77, 1, v152) != 1)
    {
      sub_1000049F8(v77, &qword_1000546F8, &qword_100042B00);
    }
  }

  else
  {
    sub_1000049F8(v79, &qword_1000546F8, &qword_100042B00);
    v85 = v122;
    v84 = v152;
    (v78[4])(v122, v77, v152);
  }

  v86 = v48[5];
  v87 = &v54[v48[6]];
  v88 = v48[8];
  v89 = v154[4];
  v154 += 4;
  v124 = v89;
  (v89)(v54, v85, v84);
  *&v54[v86] = v120;
  *v87 = 0;
  v87[8] = 1;
  sub_100004A58(v146, &v54[v69]);

  *&v54[v88] = v119;
  v54[v48[9]] = 0;
  v54[v48[10]] = 1;
  (*(v148 + 32))(&v54[v48[11]], v147, v149);
  v90 = v135;
  sub_10003DE44(v54, v135, type metadata accessor for AvatarView);
  v91 = v128;
  sub_100011258(v153, v128, &qword_1000546B8, &unk_100042AD0);
  if (v150(v91, 1, v56) == 1)
  {
    sub_1000049F8(v91, &qword_1000546B8, &unk_100042AD0);
    v92 = 0;
    v93 = v133;
    v94 = v132;
    v95 = v145;
  }

  else
  {
    v96 = v129;
    sub_100041B8C();
    v95 = v145;
    (*(v145 + 8))(v91, v56);
    v92 = sub_10004114C();
    (*(v130 + 8))(v96, v131);
    v93 = v133;
    v94 = v132;
  }

  sub_100011258(v153, v94, &qword_1000546B8, &unk_100042AD0);
  v97 = v150(v94, 1, v56);
  v98 = v152;
  if (v97 == 1)
  {
    sub_1000049F8(v94, &qword_1000546B8, &unk_100042AD0);
    v99 = 1;
  }

  else
  {
    sub_100041B7C();
    (*(v95 + 8))(v94, v56);
    v99 = 0;
  }

  v125(v93, v99, 1, v98);
  v153 = sub_1000416CC();
  (*(v136 + 104))(v139, enum case for ContactFormatter.Style.shortName(_:), v137);
  sub_100041F4C();
  v156 = sub_100040E2C();
  v157 = &protocol witness table for ContactFormatter;
  sub_100004AC8(&v155);
  sub_100040E1C();
  v100 = v141;
  v101 = v65 + *(v141 + 48);
  *v101 = swift_getKeyPath();
  *(v101 + 1) = 0;
  v101[16] = 0;
  v102 = v100[13];
  *(v65 + v102) = swift_getKeyPath();
  sub_100003DC0(&qword_100054708, &qword_100042D90);
  swift_storeEnumTagMultiPayload();
  v103 = v100[14];
  *(v65 + v103) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v104 = v100[15];
  *(v65 + v104) = swift_getKeyPath();
  sub_100003DC0(&qword_100054710, &unk_100042C00);
  swift_storeEnumTagMultiPayload();
  *v65 = v92;
  v105 = v134;
  sub_100011258(v93, v134, &qword_1000546F8, &qword_100042B00);
  v106 = v123;
  if (v123(v105, 1, v98) == 1)
  {
    v107 = v90;
    v108 = v106;
    v109 = v140;
    sub_100041B1C();
    sub_1000049F8(v93, &qword_1000546F8, &qword_100042B00);
    v110 = v108(v105, 1, v98);
    v90 = v107;
    v111 = v124;
    if (v110 != 1)
    {
      sub_1000049F8(v105, &qword_1000546F8, &qword_100042B00);
    }
  }

  else
  {
    sub_1000049F8(v93, &qword_1000546F8, &qword_100042B00);
    v109 = v140;
    v111 = v124;
    (v124)(v140, v105, v98);
  }

  v111(v65 + v100[5], v109, v98);
  *(v65 + v100[6]) = v153;
  *(v65 + v100[7]) = 0x4008000000000000;
  sub_100004B44(&v155, v65 + v100[8]);
  *(v65 + v100[9]) = 2;
  *(v65 + v100[10]) = 1;
  *(v65 + v100[11]) = 0x7FF0000000000000;
  v112 = v142;
  sub_10003DE44(v65, v142, type metadata accessor for StatusAndNameView);
  v113 = v138;
  sub_10003DEAC(v90, v138, type metadata accessor for AvatarView);
  v114 = v143;
  sub_10003DEAC(v112, v143, type metadata accessor for StatusAndNameView);
  v115 = v144;
  sub_10003DEAC(v113, v144, type metadata accessor for AvatarView);
  v116 = sub_100003DC0(&qword_100054718, &unk_100044CF0);
  sub_10003DEAC(v114, v115 + *(v116 + 48), type metadata accessor for StatusAndNameView);
  sub_10003DF14(v112, type metadata accessor for StatusAndNameView);
  sub_10003DF14(v90, type metadata accessor for AvatarView);
  sub_10003DF14(v114, type metadata accessor for StatusAndNameView);
  return sub_10003DF14(v113, type metadata accessor for AvatarView);
}

uint64_t sub_10003DBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_10003DD28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000412DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10003DD54(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  return sub_1000412EC();
}

uint64_t sub_10003DD88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000412DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10003DDB4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  return sub_1000412EC();
}

uint64_t sub_10003DE44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003DEAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003DF14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10003DF8C()
{
  result = qword_100056178;
  if (!qword_100056178)
  {
    sub_100003E08(&qword_100056150, &unk_100044C10);
    sub_1000047DC();
    sub_10003E048(&qword_100054B20, type metadata accessor for TimeStampModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056178);
  }

  return result;
}

uint64_t sub_10003E048(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003E0A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = sub_100003DC0(a1, a2);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v5, v6);
}

uint64_t sub_10003E138()
{
  sub_100003DC0(&qword_100056190, &qword_100044D80);
  v0 = *(sub_100041D8C() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  *(swift_allocObject() + 16) = xmmword_100043BB0;
  sub_100041D6C();
  sub_100041D7C();
  sub_100003DC0(&qword_100054738, &unk_100042C50);
  v3 = sub_100041D5C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100042C30;
  (*(v4 + 104))(v7 + v6, enum case for WidgetFamily.systemSmall(_:), v3);
  sub_10003E2FC();
  sub_10004152C();
}

unint64_t sub_10003E2FC()
{
  result = qword_100056198;
  if (!qword_100056198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056198);
  }

  return result;
}

uint64_t sub_10003E3C8()
{
  sub_100003DC0(&qword_100056190, &qword_100044D80);
  v0 = *(sub_100041D8C() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  *(swift_allocObject() + 16) = xmmword_100042C30;
  sub_100041D6C();
  if (qword_100054540 != -1)
  {
    swift_once();
  }

  sub_10003E4F0();
  sub_10004152C();
}

unint64_t sub_10003E4F0()
{
  result = qword_1000561A0;
  if (!qword_1000561A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000561A0);
  }

  return result;
}

uint64_t sub_10003E590()
{
  v1 = [v0 id];
  if (!v1)
  {
    v4 = [v0 identifier];
    if (v4)
    {
      v5 = v4;
      sub_100041EFC();

      sub_100004924();
      v6 = sub_10004210C();

      if (v6[2])
      {
        v7 = v6[4];
        v8 = v6[5];
        v9 = v6[6];
        v10 = v6[7];
        swift_bridgeObjectRetain_n();

        v3 = sub_100041F1C();
        swift_bridgeObjectRelease_n();
        return v3;
      }
    }

    return 0;
  }

  v2 = v1;
  v3 = sub_100041EFC();

  return v3;
}

uint64_t sub_10003E6C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10004116C();
  v31 = *(v6 - 8);
  v32 = v6;
  v7 = *(v31 + 64);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v30 - v15;
  sub_100011258(a1, a3, &qword_1000546B8, &unk_100042AD0);
  v17 = type metadata accessor for SingleContactSmallWidgetVerticalView();
  v18 = *(v17 + 20);
  v19 = sub_1000408CC();
  v33 = *(v19 - 8);
  v34 = v19;
  v20 = *(v33 + 16);
  v30 = a3;
  v35 = a2;
  v20(a3 + v18, a2);
  v36 = a1;
  sub_100011258(a1, v16, &qword_1000546B8, &unk_100042AD0);
  v21 = sub_100041BAC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if (v23(v16, 1, v21) == 1)
  {
    sub_1000049F8(v16, &qword_1000546B8, &unk_100042AD0);
  }

  else
  {
    sub_100041B8C();
    (*(v22 + 8))(v16, v21);
    sub_10004115C();
    (*(v31 + 8))(v9, v32);
  }

  sub_1000409FC();
  sub_1000409EC();
  v24 = v30 + *(v17 + 24);
  sub_100041CBC();

  v25 = v36;
  sub_100011258(v36, v14, &qword_1000546B8, &unk_100042AD0);
  if (v23(v14, 1, v21) == 1)
  {
    sub_1000049F8(v14, &qword_1000546B8, &unk_100042AD0);
  }

  else
  {
    sub_100041B8C();
    (*(v22 + 8))(v14, v21);
    v26 = sub_10004114C();
    (*(v31 + 8))(v9, v32);
    v27 = [v26 identifier];

    sub_100041EFC();
    v28 = sub_100041F8C();

    v37 = v28;
    sub_10003EB68();
    sub_10004211C();
  }

  sub_100040B3C();
  sub_100040B0C();

  (*(v33 + 8))(v35, v34);
  return sub_1000049F8(v25, &qword_1000546B8, &unk_100042AD0);
}

uint64_t type metadata accessor for SingleContactSmallWidgetVerticalView()
{
  result = qword_100056208;
  if (!qword_100056208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10003EB68()
{
  result = qword_1000561A8;
  if (!qword_1000561A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000561A8);
  }

  return result;
}

uint64_t sub_10003EBD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000408CC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_100041CAC();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_10003ED30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000408CC();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_100041CAC();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_10003EE88()
{
  sub_10003B534();
  if (v0 <= 0x3F)
  {
    sub_1000408CC();
    if (v1 <= 0x3F)
    {
      sub_100041CAC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 sub_10003EF40@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_100003DC0(&qword_100056248, &qword_100044E98);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v12 - v5;
  *v6 = sub_10004149C();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = sub_100003DC0(&qword_100056250, &qword_100044EA0);
  sub_10003F084(v1, &v6[*(v7 + 44)]);
  sub_100041A8C();
  sub_10004125C();
  sub_10003FEEC(v6, a1);
  v8 = a1 + *(sub_100003DC0(&qword_100056258, &qword_100044EA8) + 36);
  v9 = v12[5];
  *(v8 + 64) = v12[4];
  *(v8 + 80) = v9;
  *(v8 + 96) = v12[6];
  v10 = v12[1];
  *v8 = v12[0];
  *(v8 + 16) = v10;
  result = v12[3];
  *(v8 + 32) = v12[2];
  *(v8 + 48) = result;
  return result;
}

uint64_t sub_10003F084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = sub_100041CAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v87 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1000408CC();
  v94 = *(v89 - 8);
  v7 = *(v94 + 64);
  __chkstk_darwin(v89);
  v92 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v91 = &v77 - v11;
  v12 = sub_10004116C();
  v77 = *(v12 - 8);
  v78 = v12;
  v13 = *(v77 + 64);
  __chkstk_darwin(v12);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v77 - v21;
  v23 = sub_100003DC0(&qword_1000546F8, &qword_100042B00);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v83 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v77 - v27;
  v29 = type metadata accessor for AvatarView();
  v30 = *(*(v29 - 1) + 64);
  v31 = __chkstk_darwin(v29);
  v86 = &v77 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v35 = &v77 - v34;
  __chkstk_darwin(v33);
  v85 = &v77 - v36;
  v37 = sub_100003DC0(&qword_100056260, &qword_100044EB0);
  v38 = *(*(v37 - 8) + 64);
  v39 = __chkstk_darwin(v37 - 8);
  v84 = &v77 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v42 = &v77 - v41;
  *v42 = sub_1000414FC();
  *(v42 + 1) = 0;
  v42[16] = 1;
  v43 = *(sub_100003DC0(&qword_100056268, &qword_100044EB8) + 44);
  v80 = v42;
  sub_10003FA2C(a1, &v42[v43]);
  v79 = type metadata accessor for SingleContactSmallWidgetVerticalView();
  (*(v4 + 16))(v28, a1 + *(v79 + 24), v3);
  v93 = v4;
  v44 = *(v4 + 56);
  v82 = v28;
  v88 = v3;
  v44(v28, 0, 1, v3);
  v45 = a1;
  sub_100011258(a1, v22, &qword_1000546B8, &unk_100042AD0);
  v46 = sub_100041BAC();
  v47 = *(v46 - 8);
  v48 = *(v47 + 48);
  if (v48(v22, 1, v46) == 1)
  {
    sub_1000049F8(v22, &qword_1000546B8, &unk_100042AD0);
    v81 = 0;
  }

  else
  {
    sub_100041B8C();
    (*(v47 + 8))(v22, v46);
    v81 = sub_10004114C();
    (*(v77 + 8))(v15, v78);
  }

  sub_100011258(v45, v20, &qword_1000546B8, &unk_100042AD0);
  if (v48(v20, 1, v46) == 1)
  {
    sub_1000049F8(v20, &qword_1000546B8, &unk_100042AD0);
    v49 = sub_100041C6C();
    (*(*(v49 - 8) + 56))(v91, 1, 1, v49);
  }

  else
  {
    sub_100041B5C();
    (*(v47 + 8))(v20, v46);
  }

  v50 = v93;
  v51 = v89;
  (*(v94 + 16))(v92, v45 + *(v79 + 20), v89);
  sub_100040D9C();
  v79 = sub_100040D8C();
  v52 = v29[7];
  v53 = sub_100041C6C();
  (*(*(v53 - 8) + 56))(&v35[v52], 1, 1, v53);
  v78 = sub_100040D8C();
  v54 = &v35[v29[12]];
  KeyPath = swift_getKeyPath();
  *(v54 + 1) = 0;
  *(v54 + 2) = 0;
  *v54 = KeyPath;
  *(v54 + 12) = 0;
  v56 = v29[13];
  sub_100041B0C();
  *&v35[v56] = v57;
  v58 = &v35[v29[14]];
  *v58 = xmmword_100042940;
  *(v58 + 1) = xmmword_100042950;
  v59 = v29[15];
  *&v35[v59] = swift_getKeyPath();
  sub_100003DC0(&qword_100054700, &qword_100042B60);
  swift_storeEnumTagMultiPayload();
  v60 = v82;
  v61 = v83;
  sub_100011258(v82, v83, &qword_1000546F8, &qword_100042B00);
  v62 = *(v50 + 48);
  v63 = v88;
  if (v62(v61, 1, v88) == 1)
  {
    v64 = v60;
    v65 = v87;
    sub_100041B1C();
    sub_1000049F8(v64, &qword_1000546F8, &qword_100042B00);
    if (v62(v61, 1, v63) != 1)
    {
      sub_1000049F8(v61, &qword_1000546F8, &qword_100042B00);
    }
  }

  else
  {
    sub_1000049F8(v60, &qword_1000546F8, &qword_100042B00);
    v65 = v87;
    (*(v50 + 32))(v87, v61, v63);
  }

  v66 = v29[5];
  v67 = &v35[v29[6]];
  v68 = v29[8];
  (*(v93 + 32))(v35, v65, v63);
  *&v35[v66] = v81;
  *v67 = 0;
  v67[8] = 1;
  sub_100004A58(v91, &v35[v52]);

  *&v35[v68] = v79;
  v35[v29[9]] = 0;
  v35[v29[10]] = 1;
  (*(v94 + 32))(&v35[v29[11]], v92, v51);
  v69 = v85;
  sub_10003FF74(v35, v85, type metadata accessor for AvatarView);
  v70 = v80;
  v71 = v84;
  sub_100011258(v80, v84, &qword_100056260, &qword_100044EB0);
  v72 = v86;
  sub_10003FFDC(v69, v86, type metadata accessor for AvatarView);
  v73 = v90;
  sub_100011258(v71, v90, &qword_100056260, &qword_100044EB0);
  v74 = sub_100003DC0(&qword_100056270, &qword_100044F20);
  v75 = v73 + *(v74 + 48);
  *v75 = 0;
  *(v75 + 8) = 1;
  sub_10003FFDC(v72, v73 + *(v74 + 64), type metadata accessor for AvatarView);
  sub_100040044(v69, type metadata accessor for AvatarView);
  sub_1000049F8(v70, &qword_100056260, &qword_100044EB0);
  sub_100040044(v72, type metadata accessor for AvatarView);
  return sub_1000049F8(v71, &qword_100056260, &qword_100044EB0);
}

uint64_t sub_10003FA2C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v41 = a2;
  v40 = sub_100040E0C();
  v3 = *(v40 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v40);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004116C();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v36 - v12;
  v14 = type metadata accessor for StatusAndNameViewVertical();
  v15 = *(*(v14 - 1) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = (&v36 - v20);
  __chkstk_darwin(v19);
  v23 = &v36 - v22;
  v39 = a1;
  sub_100011258(a1, v13, &qword_1000546B8, &unk_100042AD0);
  v24 = sub_100041BAC();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v13, 1, v24) == 1)
  {
    sub_1000049F8(v13, &qword_1000546B8, &unk_100042AD0);
    v26 = 0;
  }

  else
  {
    sub_100041B8C();
    (*(v25 + 8))(v13, v24);
    v26 = sub_10004114C();
    (*(v36 + 8))(v9, v37);
  }

  v27 = *(type metadata accessor for SingleContactSmallWidgetVerticalView() + 24);
  v28 = v14[5];
  v29 = sub_100041CAC();
  (*(*(v29 - 8) + 16))(v21 + v28, v39 + v27, v29);
  *v21 = v26;
  v30 = (v21 + v14[6]);
  (*(v3 + 104))(v38, enum case for ContactFormatter.Style.shortName(_:), v40);
  sub_100041F4C();
  v30[3] = sub_100040E2C();
  v30[4] = &protocol witness table for ContactFormatter;
  sub_100004AC8(v30);
  sub_100040E1C();
  v31 = v14[7];
  *(v21 + v31) = swift_getKeyPath();
  sub_100003DC0(&qword_100054708, &qword_100042D90);
  swift_storeEnumTagMultiPayload();
  v32 = v14[8];
  *(v21 + v32) = swift_getKeyPath();
  sub_100003DC0(&qword_100054700, &qword_100042B60);
  swift_storeEnumTagMultiPayload();
  sub_10003FF74(v21, v23, type metadata accessor for StatusAndNameViewVertical);
  sub_10003FFDC(v23, v18, type metadata accessor for StatusAndNameViewVertical);
  v33 = v41;
  *v41 = 0;
  *(v33 + 8) = 1;
  v34 = sub_100003DC0(&qword_100056278, &unk_100044F60);
  sub_10003FFDC(v18, v33 + *(v34 + 48), type metadata accessor for StatusAndNameViewVertical);
  sub_100040044(v23, type metadata accessor for StatusAndNameViewVertical);
  return sub_100040044(v18, type metadata accessor for StatusAndNameViewVertical);
}

uint64_t sub_10003FEEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003DC0(&qword_100056248, &qword_100044E98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003FF74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003FFDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100040044(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000400A8()
{
  result = qword_100056280;
  if (!qword_100056280)
  {
    sub_100003E08(&qword_100056258, &qword_100044EA8);
    sub_100040134();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056280);
  }

  return result;
}

unint64_t sub_100040134()
{
  result = qword_100056288;
  if (!qword_100056288)
  {
    sub_100003E08(&qword_100056248, &qword_100044E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056288);
  }

  return result;
}

uint64_t sub_1000401D4(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_100057490 == -1)
  {
    if (qword_100057498)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_10004069C();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100057498)
    {
      return _availability_version_check();
    }
  }

  if (qword_100057488 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1000406B4();
    a3 = v10;
    a4 = v9;
    v8 = dword_100057478 < v11;
    if (dword_100057478 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_10005747C > a3)
      {
        return 1;
      }

      if (dword_10005747C >= a3)
      {
        return dword_100057480 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100057478 < a2;
  if (dword_100057478 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_100040368(uint64_t result)
{
  v1 = qword_100057498;
  if (qword_100057498)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100057498 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_100057478, &dword_10005747C, &dword_100057480);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}
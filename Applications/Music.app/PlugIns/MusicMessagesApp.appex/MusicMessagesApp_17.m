uint64_t View.libraryContext(_:)()
{
  swift_getKeyPath();
  sub_1004DB40C();
}

uint64_t sub_1001B1594(uint64_t a1)
{
  v2 = type metadata accessor for Library.Context();
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_1001B2FF8(a1, &v9 - v6);
  sub_1001B2FF8(v7, v5);
  sub_1001B305C();
  sub_1004DA76C();
  return sub_1001B30B0(v7);
}

uint64_t MusicLibraryRequest.apply(_:)(uint64_t a1, uint64_t a2)
{

  sub_1004DC0DC();
  v4 = *(a1 + *(type metadata accessor for Library.Context() + 48));

  return MusicLibraryRequest.includeOnlyDownloadedContent.setter(v4, a2);
}

uint64_t _s9MusicCore7LibraryO7ContextV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v152 = sub_1004D924C();
  v153 = *(v152 - 8);
  __chkstk_darwin(v152);
  v147 = &v144 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004CB8(&qword_100636598);
  __chkstk_darwin(v5 - 8);
  v148 = &v144 - v6;
  v150 = sub_100004CB8(&qword_100638C58);
  __chkstk_darwin(v150);
  v151 = &v144 - v7;
  v158 = sub_1004D91EC();
  v159 = *(v158 - 8);
  __chkstk_darwin(v158);
  v149 = &v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004CB8(&qword_1006365C8);
  __chkstk_darwin(v9 - 8);
  v156 = &v144 - v10;
  v155 = sub_100004CB8(&qword_100638C60);
  __chkstk_darwin(v155);
  v157 = &v144 - v11;
  v12 = sub_1004DD05C();
  v13 = *(v12 - 8);
  v164 = v12;
  v165 = v13;
  __chkstk_darwin(v12);
  v154 = &v144 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100004CB8(&qword_100637A00);
  __chkstk_darwin(v15 - 8);
  v162 = &v144 - v16;
  v161 = sub_100004CB8(&qword_100638C68);
  __chkstk_darwin(v161);
  v163 = &v144 - v17;
  v169 = sub_1004DCA3C();
  v171 = *(v169 - 8);
  __chkstk_darwin(v169);
  v160 = &v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100004CB8(&qword_100638AC0);
  __chkstk_darwin(v19 - 8);
  v177 = &v144 - v20;
  v167 = sub_100004CB8(&qword_100638C70);
  __chkstk_darwin(v167);
  v168 = &v144 - v21;
  v22 = sub_1004D91FC();
  v174 = *(v22 - 8);
  v175 = v22;
  __chkstk_darwin(v22);
  v166 = &v144 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100004CB8(&qword_100638AB8);
  __chkstk_darwin(v24 - 8);
  v170 = &v144 - v25;
  v173 = sub_100004CB8(&qword_100638C78);
  __chkstk_darwin(v173);
  v180 = &v144 - v26;
  v179 = sub_1004DCB3C();
  v181 = *(v179 - 8);
  __chkstk_darwin(v179);
  v172 = &v144 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100004CB8(&qword_100636470);
  __chkstk_darwin(v28 - 8);
  v176 = &v144 - v29;
  v30 = sub_100004CB8(&qword_100638C80);
  __chkstk_darwin(v30);
  v178 = &v144 - v31;
  v32 = sub_1004DCA0C();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = &v144 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_100004CB8(&qword_100635B98);
  __chkstk_darwin(v36 - 8);
  v38 = &v144 - v37;
  v39 = sub_100004CB8(&qword_100638C88);
  __chkstk_darwin(v39);
  v41 = &v144 - v40;
  sub_1004DC7AC();
  if ((sub_1004DC5EC() & 1) == 0)
  {
    return 0;
  }

  v42 = type metadata accessor for Library.Context();
  v182 = a2;
  v43 = a1;
  v145 = v42;
  v44 = *(v42 + 20);
  v45 = *(v39 + 48);
  v146 = v43;
  sub_1000108DC(v43 + v44, v41, &qword_100635B98);
  sub_1000108DC(v182 + v44, &v41[v45], &qword_100635B98);
  v46 = *(v33 + 48);
  if (v46(v41, 1, v32) == 1)
  {
    if (v46(&v41[v45], 1, v32) == 1)
    {
      sub_10001074C(v41, &qword_100635B98);
      goto LABEL_9;
    }

LABEL_7:
    v47 = &qword_100638C88;
    v48 = v41;
LABEL_44:
    sub_10001074C(v48, v47);
    return 0;
  }

  sub_1000108DC(v41, v38, &qword_100635B98);
  if (v46(&v41[v45], 1, v32) == 1)
  {
    (*(v33 + 8))(v38, v32);
    goto LABEL_7;
  }

  (*(v33 + 32))(v35, &v41[v45], v32);
  sub_1001B3D58(&qword_100638CB8, &type metadata accessor for Album);
  v49 = sub_1004DD35C();
  v50 = *(v33 + 8);
  v50(v35, v32);
  v50(v38, v32);
  sub_10001074C(v41, &qword_100635B98);
  if ((v49 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v51 = v145;
  v52 = v145[6];
  v53 = *(v30 + 48);
  v54 = v178;
  sub_1000108DC(v146 + v52, v178, &qword_100636470);
  v55 = v182 + v52;
  v56 = v182;
  sub_1000108DC(v55, v54 + v53, &qword_100636470);
  v57 = *(v181 + 48);
  v58 = v179;
  if (v57(v54, 1, v179) == 1)
  {
    v59 = v57(v54 + v53, 1, v58);
    v60 = v177;
    v61 = v180;
    if (v59 == 1)
    {
      sub_10001074C(v54, &qword_100636470);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v62 = v176;
  sub_1000108DC(v54, v176, &qword_100636470);
  v63 = v57(v54 + v53, 1, v58);
  v61 = v180;
  if (v63 == 1)
  {
    (*(v181 + 8))(v62, v58);
LABEL_14:
    v47 = &qword_100638C80;
    v48 = v54;
    goto LABEL_44;
  }

  v64 = v181;
  v65 = v54 + v53;
  v66 = v51;
  v67 = v54;
  v68 = v172;
  (*(v181 + 32))(v172, v65, v58);
  sub_1001B3D58(&qword_100638CB0, &type metadata accessor for Artist);
  v69 = sub_1004DD35C();
  v70 = *(v64 + 8);
  v70(v68, v58);
  v70(v62, v58);
  v71 = v67;
  v51 = v66;
  v60 = v177;
  sub_10001074C(v71, &qword_100636470);
  if ((v69 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v72 = v51[7];
  v73 = v56;
  v74 = *(v173 + 48);
  sub_1000108DC(v146 + v72, v61, &qword_100638AB8);
  sub_1000108DC(v73 + v72, v61 + v74, &qword_100638AB8);
  v76 = v174;
  v75 = v175;
  v77 = *(v174 + 48);
  if (v77(v61, 1, v175) == 1)
  {
    if (v77(v61 + v74, 1, v75) == 1)
    {
      sub_10001074C(v61, &qword_100638AB8);
      goto LABEL_23;
    }

LABEL_21:
    v47 = &qword_100638C78;
LABEL_43:
    v48 = v61;
    goto LABEL_44;
  }

  v78 = v170;
  sub_1000108DC(v61, v170, &qword_100638AB8);
  if (v77(v61 + v74, 1, v75) == 1)
  {
    (*(v76 + 8))(v78, v75);
    goto LABEL_21;
  }

  v79 = v61 + v74;
  v80 = v166;
  (*(v76 + 32))(v166, v79, v75);
  sub_1001B3D58(&qword_100638CA8, &type metadata accessor for Composer);
  v81 = sub_1004DD35C();
  v82 = *(v76 + 8);
  v82(v80, v75);
  v82(v78, v75);
  sub_10001074C(v61, &qword_100638AB8);
  if ((v81 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  v83 = v51[8];
  v61 = v168;
  v84 = *(v167 + 48);
  sub_1000108DC(v146 + v83, v168, &qword_100638AC0);
  sub_1000108DC(v182 + v83, v61 + v84, &qword_100638AC0);
  v85 = *(v171 + 48);
  v86 = v169;
  if (v85(v61, 1, v169) == 1)
  {
    if (v85(v61 + v84, 1, v86) == 1)
    {
      sub_10001074C(v61, &qword_100638AC0);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  sub_1000108DC(v61, v60, &qword_100638AC0);
  if (v85(v61 + v84, 1, v86) == 1)
  {
    (*(v171 + 8))(v60, v86);
LABEL_28:
    v47 = &qword_100638C70;
    goto LABEL_43;
  }

  v87 = v60;
  v88 = v171;
  v89 = v61 + v84;
  v90 = v160;
  (*(v171 + 32))(v160, v89, v86);
  sub_1001B3D58(&qword_100638CA0, &type metadata accessor for Genre);
  v91 = sub_1004DD35C();
  v92 = *(v88 + 8);
  v92(v90, v86);
  v92(v87, v86);
  sub_10001074C(v61, &qword_100638AC0);
  if ((v91 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  v93 = v51[9];
  v94 = *(v161 + 48);
  v61 = v163;
  sub_1000108DC(v146 + v93, v163, &qword_100637A00);
  sub_1000108DC(v182 + v93, v61 + v94, &qword_100637A00);
  v95 = v164;
  v96 = *(v165 + 48);
  if (v96(v61, 1, v164) == 1)
  {
    if (v96(v61 + v94, 1, v95) == 1)
    {
      sub_10001074C(v61, &qword_100637A00);
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  sub_1000108DC(v61, v162, &qword_100637A00);
  if (v96(v61 + v94, 1, v95) == 1)
  {
    (*(v165 + 8))(v162, v95);
LABEL_35:
    v47 = &qword_100638C68;
    goto LABEL_43;
  }

  v97 = v165;
  v98 = v61 + v94;
  v99 = v154;
  (*(v165 + 32))(v154, v98, v95);
  sub_1001B3D58(&qword_1006380B0, &type metadata accessor for Playlist);
  v100 = v162;
  v101 = sub_1004DD35C();
  v102 = *(v97 + 8);
  v102(v99, v95);
  v102(v100, v95);
  sub_10001074C(v61, &qword_100637A00);
  if ((v101 & 1) == 0)
  {
    return 0;
  }

LABEL_37:
  v103 = v51[10];
  v104 = *(v155 + 48);
  v61 = v157;
  sub_1000108DC(v146 + v103, v157, &qword_1006365C8);
  sub_1000108DC(v182 + v103, v61 + v104, &qword_1006365C8);
  v105 = *(v159 + 48);
  v106 = v158;
  if (v105(v61, 1, v158) == 1)
  {
    if (v105(v61 + v104, 1, v106) == 1)
    {
      sub_10001074C(v61, &qword_1006365C8);
      goto LABEL_48;
    }

    goto LABEL_42;
  }

  sub_1000108DC(v61, v156, &qword_1006365C8);
  if (v105(v61 + v104, 1, v106) == 1)
  {
    (*(v159 + 8))(v156, v106);
LABEL_42:
    v47 = &qword_100638C60;
    goto LABEL_43;
  }

  v108 = v159;
  v109 = v61 + v104;
  v110 = v149;
  (*(v159 + 32))(v149, v109, v106);
  sub_1001B3D58(&qword_100638C98, &type metadata accessor for TVShow);
  v111 = v156;
  v112 = sub_1004DD35C();
  v113 = *(v108 + 8);
  v113(v110, v106);
  v113(v111, v106);
  sub_10001074C(v61, &qword_1006365C8);
  if ((v112 & 1) == 0)
  {
    return 0;
  }

LABEL_48:
  v114 = v51[11];
  v115 = *(v150 + 48);
  v116 = v151;
  sub_1000108DC(v146 + v114, v151, &qword_100636598);
  sub_1000108DC(v182 + v114, v116 + v115, &qword_100636598);
  v117 = *(v153 + 48);
  v118 = v152;
  if (v117(v116, 1, v152) == 1)
  {
    if (v117(v116 + v115, 1, v118) == 1)
    {
      sub_10001074C(v116, &qword_100636598);
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  v119 = v148;
  sub_1000108DC(v116, v148, &qword_100636598);
  if (v117(v116 + v115, 1, v118) == 1)
  {
    (*(v153 + 8))(v119, v118);
LABEL_53:
    v47 = &qword_100638C58;
    v48 = v116;
    goto LABEL_44;
  }

  v120 = v153;
  v121 = v116 + v115;
  v122 = v147;
  (*(v153 + 32))(v147, v121, v118);
  sub_1001B3D58(&qword_100638C90, &type metadata accessor for TVSeason);
  v123 = sub_1004DD35C();
  v124 = *(v120 + 8);
  v124(v122, v118);
  v124(v119, v118);
  sub_10001074C(v116, &qword_100636598);
  if ((v123 & 1) == 0)
  {
    return 0;
  }

LABEL_55:
  if (*(v146 + v51[12]) != *(v182 + v51[12]))
  {
    return 0;
  }

  v125 = v51[13];
  v126 = *(v146 + v125);
  v127 = *(v182 + v125);
  if (v126 == 2)
  {
    if (v127 != 2)
    {
      return 0;
    }

    goto LABEL_61;
  }

  result = 0;
  if (v127 != 2 && ((v127 ^ v126) & 1) == 0)
  {
LABEL_61:
    v128 = v51[14];
    v129 = *(v146 + v128);
    v130 = *(v182 + v128);
    if (v129 == 3)
    {
      if (v130 != 3)
      {
        return 0;
      }
    }

    else
    {
      if (v130 == 3)
      {
        return 0;
      }

      v131 = 0xE900000000000073;
      v132 = 7105633;
      if (v129)
      {
        if (v129 == 1)
        {
          v133 = 0x657469726F766166;
        }

        else
        {
          v133 = 0x64616F6C6E776F64;
        }

        v134 = 0xE900000000000073;
      }

      else
      {
        v134 = 0xE300000000000000;
        v133 = 7105633;
      }

      if (v130)
      {
        if (v130 == 1)
        {
          v132 = 0x657469726F766166;
        }

        else
        {
          v132 = 0x64616F6C6E776F64;
        }
      }

      else
      {
        v131 = 0xE300000000000000;
      }

      if (v133 == v132 && v134 == v131)
      {

        v51 = v145;
      }

      else
      {
        v135 = sub_1004DF08C();

        v51 = v145;
        if ((v135 & 1) == 0)
        {
          return 0;
        }
      }
    }

    v136 = v51[15];
    v137 = (v146 + v136);
    v138 = *(v146 + v136 + 8);
    v139 = (v182 + v136);
    v140 = v139[1];
    if (v138)
    {
      if (v140 && (*v137 == *v139 && v138 == v140 || (sub_1004DF08C() & 1) != 0))
      {
LABEL_87:
        if (sub_10010AC78(*(v146 + v145[16]), *(v182 + v145[16])))
        {
          v141 = v145[17];
          v142 = *(v146 + v141);
          v143 = *(v182 + v141);
          if (v142 == 2)
          {
            if (v143 == 2)
            {
              return 1;
            }
          }

          else if (v143 != 2 && ((v143 ^ v142) & 1) == 0)
          {
            return 1;
          }
        }
      }
    }

    else if (!v140)
    {
      goto LABEL_87;
    }

    return 0;
  }

  return result;
}

uint64_t _s9MusicCore7LibraryO19ContentFilterOptionO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005D2AD8;
  v6._object = a2;
  v4 = sub_1004DEE2C(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t type metadata accessor for Library.Context()
{
  result = qword_100638B88;
  if (!qword_100638B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001B2FF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Library.Context();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001B305C()
{
  result = qword_100638B10;
  if (!qword_100638B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638B10);
  }

  return result;
}

uint64_t sub_1001B30B0(uint64_t a1)
{
  v2 = type metadata accessor for Library.Context();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001B3154()
{
  result = qword_100638B18;
  if (!qword_100638B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638B18);
  }

  return result;
}

unint64_t sub_1001B31AC()
{
  result = qword_100638B20;
  if (!qword_100638B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638B20);
  }

  return result;
}

uint64_t sub_1001B327C(char *a1, uint64_t a2, int *a3)
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

  v8 = sub_100004CB8(&qword_100635B98);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_17:
    v17 = *(v10 + 48);

    return v17(&a1[v11], a2, v9);
  }

  v12 = sub_100004CB8(&qword_100636470);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_17;
  }

  v13 = sub_100004CB8(&qword_100638AB8);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_17;
  }

  v14 = sub_100004CB8(&qword_100638AC0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[8];
    goto LABEL_17;
  }

  v15 = sub_100004CB8(&qword_100637A00);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[9];
    goto LABEL_17;
  }

  v16 = sub_100004CB8(&qword_1006365C8);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a3[10];
    goto LABEL_17;
  }

  v18 = sub_100004CB8(&qword_100636598);
  v19 = *(*(v18 - 8) + 48);
  v20 = &a1[a3[11]];

  return v19(v20, a2, v18);
}

char *sub_1001B3570(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_100004CB8(&qword_100635B98);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_15:
    v17 = *(v10 + 56);

    return v17(&v5[v11], a2, a2, v9);
  }

  v12 = sub_100004CB8(&qword_100636470);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_15;
  }

  v13 = sub_100004CB8(&qword_100638AB8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_15;
  }

  v14 = sub_100004CB8(&qword_100638AC0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[8];
    goto LABEL_15;
  }

  v15 = sub_100004CB8(&qword_100637A00);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[9];
    goto LABEL_15;
  }

  v16 = sub_100004CB8(&qword_1006365C8);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[10];
    goto LABEL_15;
  }

  v18 = sub_100004CB8(&qword_100636598);
  v19 = *(*(v18 - 8) + 56);
  v20 = &v5[a4[11]];

  return v19(v20, a2, a2, v18);
}

void sub_1001B3850()
{
  sub_1004DC7AC();
  if (v0 <= 0x3F)
  {
    sub_1001B3BA4(319, &qword_100638B98, &type metadata accessor for Album, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1001B3BA4(319, &qword_100638BA0, &type metadata accessor for Artist, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1001B3BA4(319, &qword_100638BA8, &type metadata accessor for Composer, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1001B3BA4(319, &qword_100638BB0, &type metadata accessor for Genre, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_1001B3BA4(319, &qword_100638BB8, &type metadata accessor for Playlist, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_1001B3BA4(319, &qword_100638BC0, &type metadata accessor for TVShow, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                sub_1001B3BA4(319, &qword_100638BC8, &type metadata accessor for TVSeason, &type metadata accessor for Optional);
                if (v7 <= 0x3F)
                {
                  sub_10004BEAC(319, &qword_100638BD0);
                  if (v8 <= 0x3F)
                  {
                    sub_10004BEAC(319, &qword_100638BD8);
                    if (v9 <= 0x3F)
                    {
                      sub_10004BEAC(319, &qword_10063C230);
                      if (v10 <= 0x3F)
                      {
                        sub_1001B3BA4(319, &unk_100638BE0, &type metadata accessor for Playlist.Variant, &type metadata accessor for Array);
                        if (v11 <= 0x3F)
                        {
                          sub_10004BEAC(319, &unk_100636CE0);
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

void sub_1001B3BA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1001B3C18()
{
  sub_100008DE4(&qword_100638C40);
  sub_1004DA32C();
  sub_1001B3C90();
  return swift_getWitnessTable();
}

unint64_t sub_1001B3C90()
{
  result = qword_100638C48;
  if (!qword_100638C48)
  {
    sub_100008DE4(&qword_100638C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638C48);
  }

  return result;
}

unint64_t sub_1001B3D04()
{
  result = qword_100638C50;
  if (!qword_100638C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638C50);
  }

  return result;
}

uint64_t sub_1001B3D58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001B3DA4(uint64_t a1, char **a2)
{
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = *(*(a1 + 48) + (__clz(__rbit64(v8)) | (v12 << 6)));
      result = sub_1001B9A44(&v13, a2);
      if (v2)
      {
      }

      v8 &= v8 - 1;
      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

BOOL sub_1001B3E90(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = ActionType.rawValue.getter(*v4);
    v9 = v8;
    if (v7 == ActionType.rawValue.getter(a1) && v9 == v10)
    {

      return v5 != 0;
    }

    v12 = sub_1004DF08C();

    ++v4;
  }

  while ((v12 & 1) == 0);
  return v5 != 0;
}

BOOL sub_1001B3F54(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v6 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v8 = 0xD000000000000029;
    v9 = "orites";
    switch(*v4)
    {
      case 1:
        v8 = 0xD000000000000025;
        v9 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v8 = 0xD000000000000023;
        v9 = "LibraryView.Playlists";
        break;
      case 3:
        v8 = 0xD000000000000022;
        v9 = "LibraryView.Artists";
        break;
      case 4:
        v8 = 0xD000000000000021;
        v9 = "LibraryView.Albums";
        break;
      case 5:
        v8 = 0xD000000000000026;
        v9 = "LibraryView.Songs";
        break;
      case 6:
        v8 = 0xD000000000000027;
        v9 = "LibraryView.MadeForYou";
        break;
      case 7:
        v8 = 0xD000000000000022;
        v9 = "LibraryView.MusicVideos";
        break;
      case 8:
        v8 = 0xD000000000000028;
        v9 = "LibraryView.Genres";
        break;
      case 9:
        v8 = 0xD000000000000025;
        v9 = "LibraryView.Compilations";
        break;
      case 0xA:
        v8 = 0xD000000000000021;
        v9 = "LibraryView.Composers";
        break;
      case 0xB:
        v8 = 0xD000000000000026;
        v9 = "LibraryView.Shows";
        break;
      case 0xC:
        v8 = 0xD000000000000027;
        v9 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    v10 = v9 | 0x8000000000000000;
    v11 = 0xD000000000000029;
    v12 = "orites";
    switch(a1)
    {
      case 1:
        v11 = 0xD000000000000025;
        v12 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v11 = 0xD000000000000023;
        v12 = "LibraryView.Playlists";
        break;
      case 3:
        v11 = 0xD000000000000022;
        v12 = "LibraryView.Artists";
        break;
      case 4:
        v11 = 0xD000000000000021;
        v12 = "LibraryView.Albums";
        break;
      case 5:
        v11 = 0xD000000000000026;
        v12 = "LibraryView.Songs";
        break;
      case 6:
        v11 = 0xD000000000000027;
        v12 = "LibraryView.MadeForYou";
        break;
      case 7:
        v11 = 0xD000000000000022;
        v12 = "LibraryView.MusicVideos";
        break;
      case 8:
        v11 = 0xD000000000000028;
        v12 = "LibraryView.Genres";
        break;
      case 9:
        v11 = 0xD000000000000025;
        v12 = "LibraryView.Compilations";
        break;
      case 10:
        v11 = 0xD000000000000021;
        v12 = "LibraryView.Composers";
        break;
      case 11:
        v11 = 0xD000000000000026;
        v12 = "LibraryView.Shows";
        break;
      case 12:
        v11 = 0xD000000000000027;
        v12 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    if (v8 == v11 && v10 == (v12 | 0x8000000000000000))
    {

      return v6 != 0;
    }

    v5 = sub_1004DF08C();

    ++v4;
  }

  while ((v5 & 1) == 0);
  return v6 != 0;
}

Swift::Int sub_1001B42B4(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_1004DF26C();
    sub_1004DF27C(v13);
    result = sub_1004DF2BC();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001B4424(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v3 = a1;
  if (*(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v24 = a1 + 56;
    v5 = 1 << *(a1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a1 + 56);
    v8 = (v5 + 63) >> 6;
    v28 = a2 + 56;
    v25 = v8;
    if (v7)
    {
      do
      {
        v9 = __clz(__rbit64(v7));
        v27 = (v7 - 1) & v7;
LABEL_13:
        v12 = *(*(v3 + 48) + (v9 | (v4 << 6)));
        sub_1004DF26C();
        Library.Menu.Identifier.rawValue.getter(v12);
        sub_1004DD55C();

        v13 = sub_1004DF2BC();
        v14 = -1 << *(a2 + 32);
        v15 = v13 & ~v14;
        if (((*(v28 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          return 0;
        }

        v16 = ~v14;
        while (1)
        {
          v17 = 0xD000000000000029;
          v18 = "orites";
          switch(*(*(a2 + 48) + v15))
          {
            case 1:
              v17 = 0xD000000000000025;
              v18 = "LibraryView.RecentlyAdded";
              break;
            case 2:
              v17 = 0xD000000000000023;
              v18 = "LibraryView.Playlists";
              break;
            case 3:
              v17 = 0xD000000000000022;
              v18 = "LibraryView.Artists";
              break;
            case 4:
              v17 = 0xD000000000000021;
              v18 = "LibraryView.Albums";
              break;
            case 5:
              v17 = 0xD000000000000026;
              v18 = "LibraryView.Songs";
              break;
            case 6:
              v17 = 0xD000000000000027;
              v18 = "LibraryView.MadeForYou";
              break;
            case 7:
              v17 = 0xD000000000000022;
              v18 = "LibraryView.MusicVideos";
              break;
            case 8:
              v17 = 0xD000000000000028;
              v18 = "LibraryView.Genres";
              break;
            case 9:
              v17 = 0xD000000000000025;
              v18 = "LibraryView.Compilations";
              break;
            case 0xA:
              v17 = 0xD000000000000021;
              v18 = "LibraryView.Composers";
              break;
            case 0xB:
              v17 = 0xD000000000000026;
              v18 = "LibraryView.Shows";
              break;
            case 0xC:
              v17 = 0xD000000000000027;
              v18 = "LibraryView.Downloaded";
              break;
            default:
              break;
          }

          v19 = v18 | 0x8000000000000000;
          v20 = 0xD000000000000029;
          v21 = "orites";
          switch(v12)
          {
            case 1:
              v20 = 0xD000000000000025;
              v21 = "LibraryView.RecentlyAdded";
              break;
            case 2:
              v20 = 0xD000000000000023;
              v21 = "LibraryView.Playlists";
              break;
            case 3:
              v20 = 0xD000000000000022;
              v21 = "LibraryView.Artists";
              break;
            case 4:
              v20 = 0xD000000000000021;
              v21 = "LibraryView.Albums";
              break;
            case 5:
              v20 = 0xD000000000000026;
              v21 = "LibraryView.Songs";
              break;
            case 6:
              v20 = 0xD000000000000027;
              v21 = "LibraryView.MadeForYou";
              break;
            case 7:
              v20 = 0xD000000000000022;
              v21 = "LibraryView.MusicVideos";
              break;
            case 8:
              v20 = 0xD000000000000028;
              v21 = "LibraryView.Genres";
              break;
            case 9:
              v20 = 0xD000000000000025;
              v21 = "LibraryView.Compilations";
              break;
            case 10:
              v20 = 0xD000000000000021;
              v21 = "LibraryView.Composers";
              break;
            case 11:
              v20 = 0xD000000000000026;
              v21 = "LibraryView.Shows";
              break;
            case 12:
              v20 = 0xD000000000000027;
              v21 = "LibraryView.Downloaded";
              break;
            default:
              break;
          }

          if (v17 == v20 && v19 == (v21 | 0x8000000000000000))
          {
            break;
          }

          v22 = sub_1004DF08C();

          if (v22)
          {
            goto LABEL_47;
          }

          v15 = (v15 + 1) & v16;
          if (((*(v28 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
          {
            return 0;
          }
        }

LABEL_47:
        v8 = v25;
        v3 = a1;
        v7 = v27;
      }

      while (v27);
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        JUMPOUT(0x1001B4868);
      }

      if (v4 >= v8)
      {
        return 1;
      }

      v11 = *(v24 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v27 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }
  }

  return 0;
}

uint64_t sub_1001B48D0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v35 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v36 = v8;
  v37 = result;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v38 = (v7 - 1) & v7;
LABEL_13:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_1004DF26C();
    ApplicationCapabilities.Service.rawValue.getter(v13);
    sub_1004DD55C();

    v14 = sub_1004DF2BC();
    v15 = -1 << *(a2 + 32);
    v16 = v14 & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (1)
    {
      v18 = *(*(a2 + 48) + v16);
      if (v18 <= 4)
      {
        v21 = 0x6C6169636F73;
        if (v18 != 3)
        {
          v21 = 0x6F69646172;
        }

        v22 = 0xE600000000000000;
        if (v18 != 3)
        {
          v22 = 0xE500000000000000;
        }

        if (v18 == 2)
        {
          v21 = 0xD000000000000013;
          v22 = 0x80000001004E9570;
        }

        v23 = 0x646956636973756DLL;
        if (!*(*(a2 + 48) + v16))
        {
          v23 = 0x636973756DLL;
        }

        v24 = 0xEB00000000736F65;
        if (!*(*(a2 + 48) + v16))
        {
          v24 = 0xE500000000000000;
        }

        if (*(*(a2 + 48) + v16) <= 1u)
        {
          v19 = v23;
        }

        else
        {
          v19 = v21;
        }

        if (*(*(a2 + 48) + v16) <= 1u)
        {
          v20 = v24;
        }

        else
        {
          v20 = v22;
        }
      }

      else if (*(*(a2 + 48) + v16) > 7u)
      {
        if (v18 == 8)
        {
          v19 = 0xD000000000000013;
          v20 = 0x80000001004E95B0;
        }

        else if (v18 == 9)
        {
          v19 = 0xD000000000000011;
          v20 = 0x80000001004E95D0;
        }

        else
        {
          v19 = 0x6C62616E45696C6DLL;
          v20 = 0xEA00000000006465;
        }
      }

      else if (v18 == 5)
      {
        v20 = 0xE600000000000000;
        v19 = 0x73656E757469;
      }

      else
      {
        if (v18 == 6)
        {
          v19 = 0x74634170756F7267;
        }

        else
        {
          v19 = 0x746963696C707865;
        }

        if (v18 == 6)
        {
          v20 = 0xED00007974697669;
        }

        else
        {
          v20 = 0xEF746E65746E6F43;
        }
      }

      if (v13 > 4)
      {
        v25 = 0xD000000000000011;
        if (v13 != 9)
        {
          v25 = 0x6C62616E45696C6DLL;
        }

        v26 = 0xEA00000000006465;
        if (v13 == 9)
        {
          v26 = 0x80000001004E95D0;
        }

        if (v13 == 8)
        {
          v25 = 0xD000000000000013;
          v26 = 0x80000001004E95B0;
        }

        v27 = 0x746963696C707865;
        if (v13 == 6)
        {
          v27 = 0x74634170756F7267;
        }

        v28 = 0xEF746E65746E6F43;
        if (v13 == 6)
        {
          v28 = 0xED00007974697669;
        }

        if (v13 == 5)
        {
          v27 = 0x73656E757469;
          v28 = 0xE600000000000000;
        }

        if (v13 <= 7)
        {
          v29 = v27;
        }

        else
        {
          v29 = v25;
        }

        if (v13 <= 7)
        {
          v30 = v28;
        }

        else
        {
          v30 = v26;
        }

        if (v19 == v29)
        {
          goto LABEL_83;
        }

        goto LABEL_84;
      }

      if (v13 <= 1)
      {
        break;
      }

      v31 = 0x6C6169636F73;
      if (v13 != 3)
      {
        v31 = 0x6F69646172;
      }

      v32 = 0xE500000000000000;
      if (v13 == 3)
      {
        v32 = 0xE600000000000000;
      }

      if (v13 == 2)
      {
        v33 = 0xD000000000000013;
      }

      else
      {
        v33 = v31;
      }

      if (v13 == 2)
      {
        v30 = 0x80000001004E9570;
      }

      else
      {
        v30 = v32;
      }

      if (v19 == v33)
      {
        goto LABEL_83;
      }

LABEL_84:
      v34 = sub_1004DF08C();

      if (v34)
      {
        goto LABEL_89;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }

    if (!v13)
    {
      v30 = 0xE500000000000000;
      if (v19 == 0x636973756DLL)
      {
        goto LABEL_83;
      }

      goto LABEL_84;
    }

    v30 = 0xEB00000000736F65;
    if (v19 != 0x646956636973756DLL)
    {
      goto LABEL_84;
    }

LABEL_83:
    if (v20 != v30)
    {
      goto LABEL_84;
    }

LABEL_89:
    v8 = v36;
    v3 = v37;
    v7 = v38;
  }

  while (v38);
LABEL_8:
  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v35 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v38 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t Library.Menu.setSelectionState(_:for:)(char a1, Swift::Int a2)
{
  if (a1)
  {
    sub_10014B5B0(a2);
  }

  else
  {
    sub_1001BBFA0(&v4, a2);
  }

  return a1 & 1;
}

uint64_t Library.Menu.move(_:to:)(char a1, unint64_t a2)
{
  v4 = a1;
  v5 = *v2;
  v6 = sub_100151C94(a1, *v2);
  if (v7)
  {
    v9 = v2[2];
    v8 = v2[3];
    v10 = v2[4];
LABEL_5:
    v14 = v2[5];
    sub_1001BC6E4();
    swift_allocError();
    *v15 = v9;
    *(v15 + 8) = v8;
    *(v15 + 16) = v10;
    *(v15 + 24) = v14;
    *(v15 + 32) = v4;

    return swift_willThrow();
  }

  v11 = v6;
  v10 = v2[4];
  result = sub_100151C94(v4, v10);
  if (v13)
  {
    v9 = v2[2];
    v8 = v2[3];
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*(v5 + 16) <= a2)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = result;
  v17 = *(v5 + a2 + 32);
  v18 = sub_100151C94(v17, v10);
  if (v19)
  {
    v9 = v2[2];
    v8 = v2[3];
    v4 = v17 | 0x80;
    goto LABEL_5;
  }

  v20 = v18;
  result = sub_1000551B8(v11);
  if (*(*v2 + 16) < a2)
  {
    goto LABEL_16;
  }

  sub_10005D1BC(a2, a2, result);
  result = sub_1000551B8(v16);
  if (*(v2[4] + 16) < v20)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((v20 & 0x8000000000000000) == 0)
  {
    return sub_10005D1BC(v20, v20, result);
  }

LABEL_18:
  __break(1u);
  return result;
}

Swift::Void __swiftcall Library.Menu.persist()()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  NSUserDefaults.libraryMenuRevision.setter(v1, v2, v3);
}

uint64_t NSUserDefaults.libraryMenuRevision.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1004D7ADC();
  swift_allocObject();
  sub_1004D7ACC();
  v9[2] = a3;
  sub_1001BC738();
  v4 = sub_1004D7ABC();
  v6 = v5;

  v9[3] = &type metadata for Data;
  v9[0] = v4;
  v9[1] = v6;
  v8[0] = 0x4D7972617262694CLL;
  v8[1] = 0xEB00000000756E65;
  sub_100010530(v4, v6);
  sub_100030C58();
  NSUserDefaults.subscript.setter(v9, v8, &type metadata for String);
  return sub_100010598(v4, v6);
}

uint64_t Library.Menu.revision.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t static Library.Menu.Request.label.getter()
{
  swift_beginAccess();
  v0 = *static Library.Menu.Request.label;

  return v0;
}

uint64_t static Library.Menu.Request.label.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *static Library.Menu.Request.label = a1;
  *&static Library.Menu.Request.label[8] = a2;
}

id Library.Menu.Request.init()@<X0>(uint64_t a1@<X8>)
{
  result = [objc_opt_self() deviceMediaLibrary];
  if (result)
  {
    *a1 = result;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = &_swiftEmptySetSingleton;
    *(a1 + 40) = 257;
    *(a1 + 42) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id static Library.Menu.Request.with(_:)@<X0>(uint64_t (*a1)(__int128 *)@<X0>, _OWORD *a2@<X8>)
{
  result = [objc_opt_self() deviceMediaLibrary];
  if (result)
  {
    *&v7 = result;
    BYTE8(v7) = 0;
    v8 = 0uLL;
    *&v9 = &_swiftEmptySetSingleton;
    WORD4(v9) = 257;
    BYTE10(v9) = 0;
    v10 = 0u;
    v11 = 0u;
    result = a1(&v7);
    v5 = v10;
    a2[2] = v9;
    a2[3] = v5;
    a2[4] = v11;
    v6 = v8;
    *a2 = v7;
    a2[1] = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void Library.Menu.Request.MediaLibrarySource.init(_:)()
{
  ;
}

{
  ;
}

uint64_t static Library.Menu.Request.MediaLibrarySource.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      sub_100006F10(0, &qword_1006381E0);
      v4 = sub_1004DE5FC();
      return v4 & 1;
    }

    return 0;
  }

  if ((a4 & 1) == 0)
  {
    return 0;
  }

  sub_1004DC7AC();
  v4 = sub_1004DC5EC();
  return v4 & 1;
}

uint64_t sub_1001B5620(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      sub_100006F10(0, &qword_1006381E0);
      v2 = sub_1004DE5FC();
      return v2 & 1;
    }

    return 0;
  }

  if ((*(a2 + 8) & 1) == 0)
  {
    return 0;
  }

  sub_1004DC7AC();
  v2 = sub_1004DC5EC();
  return v2 & 1;
}

void *Library.Menu.Request.librarySource.getter()
{
  v1 = *v0;
  sub_1001BC78C(*v0, *(v0 + 8));
  return v1;
}

void Library.Menu.Request.librarySource.setter(uint64_t a1, char a2)
{
  sub_1001BC798(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
}

uint64_t Library.Menu.Request.excludedIdentifiers.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Library.Menu.Request.editingRevision.getter()
{
  v1 = *(v0 + 48);
  sub_1001BC7A4(v1);
  return v1;
}

uint64_t Library.Menu.Request.editingRevision.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1001BC804(v4[6]);
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = a4;
  return result;
}

uint64_t Library.Menu.Request.perform(_:_:)@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v61 = a1;
  v7 = sub_1004DBECC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1004DBEBC();
  __chkstk_darwin(v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  if (v4[1])
  {
    v15 = sub_1004DC3AC();
  }

  else
  {
    v15 = v14;
  }

  v51 = v4[2];
  v52 = v15;
  v16 = swift_allocObject();
  v17 = v4[3];
  v59 = v7;
  v60 = a3;
  v57 = v10;
  v58 = v8;
  v56 = v13;
  v53 = v11;
  v54 = a2;
  if (v17)
  {
    v18 = 1;
    v19 = 1;
  }

  else
  {
    v18 = 0;
    v19 = *(v4 + 42);
  }

  v55 = v16;
  *(v16 + 16) = v18;
  v62 = swift_allocObject();
  *(v62 + 16) = v19;
  v20 = v4[4];
  v21 = *(v4 + 40);
  v22 = objc_opt_self();

  v23 = [v22 standardUserDefaults];
  v24 = swift_allocObject();
  v26 = v4[6];
  v25 = v4[7];
  v28 = v4[8];
  v27 = v4[9];
  v50 = v25;
  if (v26)
  {
    v29 = v26;
    v30 = v25;
    v31 = v28;
    v32 = v27;
  }

  else
  {
    v29 = NSUserDefaults.libraryMenuRevision.getter();
  }

  v24[2] = v29;
  v24[3] = v30;
  v24[4] = v31;
  v24[5] = v32;
  if (*(v4 + 41))
  {
    v33 = v31;
  }

  else
  {
    v33 = v29;
  }

  v34 = swift_allocObject();
  *(v34 + 16) = v24;
  *(v34 + 24) = v23;
  *(v34 + 32) = v17;
  *(v34 + 40) = v33;
  v35 = v17;
  v36 = v51;
  v37 = v52;
  *(v34 + 48) = v52;
  *(v34 + 56) = v36;
  *(v34 + 64) = v20;
  *(v34 + 72) = v21;
  v39 = v54;
  v38 = v55;
  *(v34 + 80) = v62;
  *(v34 + 88) = v38;
  *(v34 + 96) = v61;
  *(v34 + 104) = v39;
  aBlock[4] = sub_1001BC93C;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012680;
  aBlock[3] = &unk_1005E1B40;
  v51 = _Block_copy(aBlock);
  v63 = _swiftEmptyArrayStorage;
  sub_1001BC7A4(v26);
  sub_1001C6298(&qword_10063AC90, &type metadata accessor for DispatchWorkItemFlags);

  v61 = v23;
  v40 = v35;
  v41 = v37;

  sub_100004CB8(&unk_100638950);
  sub_100042B08(&qword_10063ACA0, &unk_100638950);
  sub_1004DE92C();
  v42 = sub_1004DBF5C();
  swift_allocObject();
  v43 = sub_1004DBF3C();

  sub_100006F10(0, &qword_1006372C0);
  v45 = v57;
  v44 = v58;
  v46 = v59;
  (*(v58 + 104))(v57, enum case for DispatchQoS.QoSClass.userInteractive(_:), v59);
  v47 = sub_1004DE18C();
  (*(v44 + 8))(v45, v46);
  sub_1004DE16C();

  v48 = v60;
  v60[3] = v42;
  v48[4] = &protocol witness table for DispatchWorkItem;

  *v48 = v43;
}

uint64_t NSUserDefaults.libraryMenuRevision.getter()
{
  sub_1001BA534();
  v8 = 0x4D7972617262694CLL;
  v9 = 0xEB00000000756E65;
  sub_100030C58();
  NSUserDefaults.subscript.getter(&v8, &v10);
  if (v11)
  {
    if (swift_dynamicCast())
    {
      v0 = v8;
      v1 = v9;
      sub_1004D7AAC();
      swift_allocObject();
      sub_1004D7A9C();
      sub_1001BC998();
      sub_1004D7A8C();
      sub_100010598(v0, v1);

      return v10;
    }
  }

  else
  {
    sub_10001074C(&v10, &qword_100638E60);
  }

  if (qword_100633D28 != -1)
  {
    swift_once();
  }

  v2 = sub_1004D966C();
  sub_100035430(v2, static Logger.libraryMenu);
  v3 = sub_1004D964C();
  v4 = sub_1004DDF9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "No edits found — Returning stock menu revision", v5, 2u);
  }

  if (qword_100633D20 != -1)
  {
    swift_once();
  }

  v6 = static Library.Menu.Revision.Version.current;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  return v6;
}

uint64_t sub_1001B617C(uint64_t *a1, void *a2, void *a3, void *a4, char *a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, void (*a11)(__int128 *, uint64_t, uint64_t))
{
  if (qword_100633D20 != -1)
  {
    goto LABEL_150;
  }

  while (1)
  {
    v15 = static Library.Menu.Revision.Version.current;
    v14 = *algn_100671D68;
    swift_beginAccess();
    v16 = a1[3];
    v103 = a7;
    if (sub_10010ACC0(a1[2], v15) & 1) != 0 && (sub_1001B4424(v16, v14))
    {
      break;
    }

    sub_1001B8AB4(v15, v14);
    swift_endAccess();
    swift_beginAccess();
    v17 = a1[2];
    v18 = a1[3];
    v19 = a1[4];

    NSUserDefaults.libraryMenuRevision.setter(v17, v18, v19);
    v100 = a1;
    if (a3)
    {
      goto LABEL_9;
    }

LABEL_6:
    a3 = a4;
    v20 = a4[2];
    if (!v20)
    {
      v104 = 0;
      goto LABEL_68;
    }

    v21 = 0;
    v104 = 0;
    v22 = a4 + 4;
LABEL_39:
    v31 = v21;
    while (v31 < v20)
    {
      v21 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_149;
      }

      v32 = *(v22 + v31);
      if (v32 <= 4)
      {
        if (*(v22 + v31) <= 1u)
        {
          if (*(v22 + v31))
          {
            v33 = v104 | 0xC0;
          }

          else
          {
            v33 = v104 | 0x41;
          }

LABEL_38:
          v104 = v33;
          if (v21 == v20)
          {
            goto LABEL_68;
          }

          goto LABEL_39;
        }

        switch(v32)
        {
          case 2u:
            v33 = v104 | 2;
            goto LABEL_38;
          case 3u:
            v33 = v104 | 1;
            goto LABEL_38;
          case 4u:
            v33 = v104 | 0x80;
            goto LABEL_38;
        }
      }

      else if (*(v22 + v31) > 7u)
      {
        switch(v32)
        {
          case 8u:
            v33 = v104 | 4;
            goto LABEL_38;
          case 9u:
            v33 = v104 | 8;
            goto LABEL_38;
          case 0xAu:
            v33 = v104 | 0x300;
            goto LABEL_38;
        }
      }

      else
      {
        switch(v32)
        {
          case 5u:
            v33 = v104 | 0x400;
            goto LABEL_38;
          case 6u:
            v33 = v104 | 0x20;
            goto LABEL_38;
          case 7u:
            v33 = v104 | 0x10;
            goto LABEL_38;
        }
      }

      ++v31;
      if (v21 == v20)
      {
        goto LABEL_68;
      }
    }

LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    swift_once();
  }

  swift_endAccess();
  v100 = a1;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_9:
  v93 = a3;
  MPMediaPickerConfiguration.musicTypeIdentifiers.getter();
  a7 = 0;
  v24 = *(v23 + 16);
  a1 = 0x80000001004EEE80;
  v104 = 0;
  v98 = v23 + 40;
LABEL_12:
  v26 = (v98 + 16 * a7);
  a3 = a7;
  while (v24 != a3)
  {
    if (a3 >= v24)
    {
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

    a7 = a3 + 1;
    if (__OFADD__(a3, 1))
    {
      goto LABEL_147;
    }

    v28 = *(v26 - 1);
    v27 = *v26;
    v29 = v28 == 0xD000000000000014 && 0x80000001004EEEA0 == v27;
    if (v29 || (sub_1004DF08C() & 1) != 0)
    {
      v25 = 1247;
LABEL_11:
      v104 |= v25;
      goto LABEL_12;
    }

    if (v28 == 0xD00000000000001BLL && 0x80000001004EEE80 == v27 || (sub_1004DF08C() & 1) != 0)
    {
      v25 = 32;
      goto LABEL_11;
    }

    if (v28 == 0xD00000000000001ALL && 0x80000001004F02A0 == v27 || (sub_1004DF08C() & 1) != 0)
    {
      v25 = 256;
      goto LABEL_11;
    }

    if (v28 != 0xD000000000000015 || 0x80000001004F02C0 != v27)
    {
      a3 = (a3 + 1);
      v26 += 2;
      if ((sub_1004DF08C() & 1) == 0)
      {
        continue;
      }
    }

    v25 = 512;
    goto LABEL_11;
  }

  a7 = v103;
  if ([v93 selectionMode] == 2)
  {

    a1 = v100;
    a3 = a4;
  }

  else
  {
    v30 = [v93 selectionMode];

    v29 = v30 == 3;
    a1 = v100;
    a3 = a4;
    if (!v29)
    {
      goto LABEL_68;
    }
  }

  v104 &= 0xFFFFFFFFFFFFFC5FLL;
LABEL_68:
  v99 = [a5 filterAvailableContentGroups:v104 withOptions:{a6, v90}];
  if (qword_100633B60 != -1)
  {
    swift_once();
  }

  v34 = static ApplicationCapabilities.Controller.shared;
  swift_getKeyPath();
  swift_getKeyPath();
  v91 = v34;
  sub_1004D9B6C();

  v117[4] = v113;
  v117[5] = v114;
  v117[6] = v115;
  v117[7] = v116;
  v117[0] = v109;
  v117[1] = v110;
  v117[2] = v111;
  v117[3] = v112;
  LODWORD(a4) = BYTE2(v109);
  if (v115 == 2)
  {
    v94 = 1;
  }

  else
  {
    v94 = sub_1004DF08C();
  }

  v35 = a3[2];

  v105 = a5;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  if (!v35)
  {
    a5 = _swiftEmptyArrayStorage;
    goto LABEL_133;
  }

  v36 = 0;
  a3 += 4;
  LODWORD(v90) = (v99 & 0x300) != 0;
  HIDWORD(v90) = (v99 & 0xC0) != 0;
  a5 = _swiftEmptyArrayStorage;
  while (2)
  {
    a1 = v36;
    while (2)
    {
      if (a1 >= v35)
      {
        __break(1u);
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

      v36 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        goto LABEL_145;
      }

      v37 = *(a1 + a3);
      if (sub_1001209B4(*(a1 + a3), a7))
      {
        goto LABEL_77;
      }

      if (a8)
      {
        v38 = v100[5];

        v39 = sub_1001209B4(v37, v38);

        if (v37 != 5)
        {
          goto LABEL_83;
        }

LABEL_88:
        v39 &= v94 & a4;
LABEL_100:
        v51 = (*(a9 + 16) ^ 1) & v39;
        if ((*(a9 + 16) ^ 1) & 1) == 0 && (v39)
        {
          if (v37 > 6)
          {
            if (v37 > 9)
            {
              if ((v37 - 11) >= 2)
              {
                v51 = v90;
              }

              else
              {
                v51 = 1;
              }
            }

            else
            {
              if (v37 == 7)
              {
                v54 = -17;
              }

              else if (v37 == 8)
              {
                v54 = -5;
              }

              else
              {
                v54 = -9;
              }

LABEL_122:
              v51 = (v54 | v99) == -1;
            }
          }

          else if (v37 <= 2)
          {
            v51 = (v99 & 0x41) != 0;
            if (v37)
            {
              v51 = (v99 & 0xC0) != 0;
              if (v37 != 1)
              {
                v54 = -3;
                goto LABEL_122;
              }
            }
          }

          else
          {
            if (v37 <= 4)
            {
              if (v37 == 3)
              {
                v54 = -2;
              }

              else
              {
                v54 = -129;
              }

              goto LABEL_122;
            }

            v51 = (v99 & 0x400) != 0;
            if (v37 != 5)
            {
              v54 = -33;
              goto LABEL_122;
            }
          }
        }
      }

      else
      {
        v39 = 1;
        if (v37 == 5)
        {
          goto LABEL_88;
        }

LABEL_83:
        if (v37 == 12)
        {
          v45 = [objc_opt_self() deviceMediaLibrary];
          if (v45)
          {
            v46 = v45;
            sub_100006F10(0, &qword_100638E30);
            v47 = v105;
            v48 = sub_1004DE5FC();
          }

          else
          {
            v48 = 0;
          }

          v49 = [objc_opt_self() sharedManager];
          v50 = [v49 hasActiveDownloads];

          if (v39)
          {
            v39 = v48 & v50;
            goto LABEL_100;
          }

          v51 = 0;
        }

        else
        {
          if (v37 != 11)
          {
            goto LABEL_100;
          }

          v40 = [objc_opt_self() deviceMediaLibrary];
          if (v40)
          {
            v41 = v40;
            sub_100006F10(0, &qword_100638E30);
            v42 = v105;
            v43 = sub_1004DE5FC();

            v44 = v43 ^ 1;
          }

          else
          {
            v44 = 1;
          }

          v52 = [objc_opt_self() sharedManager];
          v53 = [v52 hasActiveDownloads];

          v51 = 0;
          if ((v39 & 1) != 0 && (a6 & 2) == 0 && (v44 & 1) == 0)
          {
            v39 = (v99 != 0) | v53;
            goto LABEL_100;
          }
        }
      }

      if (*(a10 + 16) == 1)
      {
        v51 &= v37 != 12;
      }

      a7 = v103;
      if ((v51 & 1) == 0)
      {
LABEL_77:
        a1 = (a1 + 1);
        if (v36 == v35)
        {
          a1 = v100;
          goto LABEL_133;
        }

        continue;
      }

      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a5 = sub_10003ACAC(0, *(a5 + 2) + 1, 1, a5);
    }

    a1 = v100;
    v56 = *(a5 + 2);
    v55 = *(a5 + 3);
    if (v56 >= v55 >> 1)
    {
      a5 = sub_10003ACAC((v55 > 1), v56 + 1, 1, a5);
    }

    *(a5 + 2) = v56 + 1;
    a5[v56 + 32] = v37;
    if (v36 != v35)
    {
      continue;
    }

    break;
  }

LABEL_133:

  swift_beginAccess();
  v58 = a1[2];
  v57 = a1[3];
  v59 = a1[4];
  v60 = a1[5];
  *&v109 = a5;
  *(&v109 + 1) = a2;
  *&v110 = v58;
  *(&v110 + 1) = v57;
  *&v111 = v59;
  *(&v111 + 1) = v60;
  LOBYTE(v112) = 0;
  sub_100004CB8(&unk_1006372F0);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_100511B10;
  v62 = CFRange.init(_:)(0);
  v64 = v63;
  v66 = v65;
  *(v61 + 56) = &type metadata for UserDefaultsKeyValueTrigger;
  *(v61 + 64) = &protocol witness table for UserDefaultsKeyValueTrigger;
  v67 = swift_allocObject();
  *(v61 + 32) = v67;
  v67[1] = v62;
  v67[2].location = v64;
  v67[2].length = v66;
  v68 = qword_100633BE0;

  v102 = a2;
  if (v68 != -1)
  {
    swift_once();
  }

  v69 = static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange;
  v70.location = static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange;
  v70.length = v91;
  v71 = CFRange.init(_:)(v70);
  *(v61 + 96) = &type metadata for NotificationTrigger;
  *(v61 + 104) = &protocol witness table for NotificationTrigger;
  *(v61 + 72) = v71;
  v72 = qword_100633BC0;
  swift_retain_n();
  v73 = v69;
  if (v72 != -1)
  {
    swift_once();
  }

  v74 = static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange;
  v75.location = static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange;
  v75.length = v91;
  v76 = CFRange.init(_:)(v75);
  *(v61 + 136) = &type metadata for NotificationTrigger;
  *(v61 + 144) = &protocol witness table for NotificationTrigger;
  *(v61 + 112) = v76;
  v77.location = MPMediaLibraryDidChangeNotification;
  v77.length = v105;
  v78 = CFRange.init(_:)(v77);
  *(v61 + 176) = &type metadata for NotificationTrigger;
  *(v61 + 184) = &protocol witness table for NotificationTrigger;
  *(v61 + 152) = v78;
  v79 = v105;
  v80 = v74;
  v81 = MPMediaLibraryDidChangeNotification;
  if ((sub_1001209B4(12, v103) & 1) == 0)
  {
    if (qword_100633C58 != -1)
    {
      swift_once();
    }

    v82 = static MusicLibrary.downloadingStateDidChange;
    v83 = CFRange.init(_:)(static MusicLibrary.downloadingStateDidChange);
    v84 = *(v61 + 16);
    v85 = *(v61 + 24);
    v86 = v82;
    if (v84 >= v85 >> 1)
    {
      v61 = sub_10003ACC0((v85 > 1), v84 + 1, 1, v61);
    }

    v107 = &type metadata for NotificationTrigger;
    v108 = &protocol witness table for NotificationTrigger;
    v106 = v83;
    *(v61 + 16) = v84 + 1;
    sub_100035850(&v106.location, v61 + 40 * v84 + 32);
  }

  type metadata accessor for BindingRequestResponseInvalidation();
  swift_allocObject();
  v87 = BindingRequestResponseInvalidation.init(triggers:)(v61);
  v88 = sub_1001C6298(&qword_100638E38, type metadata accessor for BindingRequestResponseInvalidation);
  a11(&v109, v87, v88);

  sub_100073E60(v117);
}

uint64_t *Library.Menu.Revision.Version.current.unsafeMutableAddressor()
{
  if (qword_100633D20 != -1)
  {
    swift_once();
  }

  return &static Library.Menu.Revision.Version.current;
}

uint64_t Logger.libraryMenu.unsafeMutableAddressor()
{
  if (qword_100633D28 != -1)
  {
    swift_once();
  }

  v0 = sub_1004D966C();

  return sub_100035430(v0, static Logger.libraryMenu);
}

uint64_t Library.Menu.Identifier.contentGroups.getter(unsigned __int8 a1)
{
  if (a1 > 0xAu)
  {
    return 0;
  }

  else
  {
    return qword_10051EEE8[a1];
  }
}

uint64_t sub_1001B71F4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  Library.Menu.Request.perform(_:_:)(sub_1001C5FAC, v6, a3);
}

BOOL sub_1001B7284(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return _s9MusicCore7LibraryO4MenuV7RequestV23__derived_struct_equalsySbAG_AGtFZ_0(v8, v9);
}

unint64_t Library.Menu.Identifier.symbolName(for:)(char a1, char a2)
{
  result = 0x732E657261757173;
  switch(a2)
  {
    case 1:
      if (a1 == 2)
      {
        result = 0x6F6E2E636973756DLL;
      }

      else
      {
        result = 0x672E657261757173;
      }

      break;
    case 2:
      result = 0x696D2E636973756DLL;
      break;
    case 3:
      return result;
    case 4:
    case 6:
      result = 0x6F6E2E636973756DLL;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x73726174697567;
      break;
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 30324;
      break;
    case 11:
    case 12:
      result = 0xD000000000000011;
      break;
    default:
      result = 0x6B636F6C63;
      break;
  }

  return result;
}

uint64_t Library.Menu.Identifier.name(for:)()
{
  v0 = sub_1004D83FC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_1004DD37C();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v8 = qword_100671958;
  sub_1004D838C();
  v9 = sub_1004DD4AC();
  (*(v2 + 8))(v7, v1);
  return v9;
}

BOOL static Library.Menu.Identifier.Location.__derived_enum_equals(_:_:)(int a1, int a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a2 == 2)
  {
    return 0;
  }

  return (a2 ^ a1 ^ 1) & 1;
}

BOOL sub_1001B792C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

unint64_t Library.Menu.Identifier.description.getter(char a1)
{
  v1 = Library.Menu.Identifier.rawValue.getter(a1);
  sub_100030C58();
  v2 = sub_1004DE82C();

  v3 = *(v2 + 16);
  if (v3)
  {
    v1 = *(v2 + 16 + 16 * v3);
  }

  return v1;
}

unint64_t Library.Menu.Identifier.rawValue.getter(char a1)
{
  result = 0xD000000000000029;
  switch(a1)
  {
    case 1:
    case 9:
      result = 0xD000000000000025;
      break;
    case 2:
      result = 0xD000000000000023;
      break;
    case 3:
    case 7:
      result = 0xD000000000000022;
      break;
    case 4:
    case 10:
      result = 0xD000000000000021;
      break;
    case 5:
    case 11:
      result = 0xD000000000000026;
      break;
    case 6:
    case 12:
      result = 0xD000000000000027;
      break;
    case 8:
      result = 0xD000000000000028;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001B7B80(char *a1, char *a2)
{
  v2 = *a2;
  v3 = Library.Menu.Identifier.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == Library.Menu.Identifier.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1004DF08C();
  }

  return v8 & 1;
}

Swift::Int sub_1001B7C08()
{
  v1 = *v0;
  sub_1004DF26C();
  Library.Menu.Identifier.rawValue.getter(v1);
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_1001B7C6C()
{
  Library.Menu.Identifier.rawValue.getter(*v0);
  sub_1004DD55C();
}

Swift::Int sub_1001B7CC0()
{
  v1 = *v0;
  sub_1004DF26C();
  Library.Menu.Identifier.rawValue.getter(v1);
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_1001B7D20@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore7LibraryO4MenuV10IdentifierO8rawValueAGSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_1001B7D50@<X0>(unint64_t *a1@<X8>)
{
  result = Library.Menu.Identifier.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t Library.Menu.Revision.init(from:)(void *a1)
{
  result = sub_1001C4CA4(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t Library.Menu.Revision.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a3;
  v17 = a5;
  v9 = sub_100004CB8(&qword_100638CE8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  sub_100008C70(a1, a1[3]);
  sub_1001C5374();
  sub_1004DF30C();
  v18 = a4;
  v20 = 1;
  sub_100004CB8(&qword_100638CF8);
  sub_1001C5FF8(&qword_100638D00, sub_1001C53C8);
  sub_1004DEF5C();
  if (!v5)
  {
    v13 = a2;
    v14 = v16;
    v18 = v17;
    v20 = 0;
    sub_100004CB8(&qword_100638D10);
    sub_1001C541C(&qword_100638D18, sub_1001C53C8);
    sub_1004DEF5C();
    v18 = v13;
    v19 = v14;
    v20 = 2;
    sub_1001C5494();
    sub_1004DEF5C();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1001B80D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7105633;
  if (v2 != 1)
  {
    v4 = 0x6E6F6973726576;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x64657463656C6573;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7105633;
  if (*a2 != 1)
  {
    v8 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64657463656C6573;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1004DF08C();
  }

  return v11 & 1;
}

Swift::Int sub_1001B81CC()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_1001B8268()
{
  sub_1004DD55C();
}

Swift::Int sub_1001B82F0()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_1001B8388@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001C553C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1001B83B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE300000000000000;
  v5 = 7105633;
  if (v2 != 1)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64657463656C6573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1001B8410()
{
  v1 = 7105633;
  if (*v0 != 1)
  {
    v1 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64657463656C6573;
  }
}

uint64_t sub_1001B8464@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001C553C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001B8498(uint64_t a1)
{
  v2 = sub_1001C5374();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B84D4(uint64_t a1)
{
  v2 = sub_1001C5374();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Library.Menu.Revision.Version.identifiers.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Library.Menu.Revision.Version.selected.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1001B8570()
{
  if (*v0)
  {
    return 0x64657463656C6573;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1001B85B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEB00000000737265;
  if (v6 || (sub_1004DF08C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1004DF08C();

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

uint64_t sub_1001B8694(uint64_t a1)
{
  v2 = sub_1001C54E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B86D0(uint64_t a1)
{
  v2 = sub_1001C54E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static Library.Menu.Revision.Version.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_10010ACC0(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return sub_1001B4424(a2, a4);
}

uint64_t Library.Menu.Revision.Version.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100004CB8(&qword_100638D28);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_100008C70(a1, a1[3]);
  sub_1001C54E8();
  sub_1004DF30C();
  v14 = a2;
  v13 = 0;
  sub_100004CB8(&qword_100638CF8);
  sub_1001C5FF8(&qword_100638D00, sub_1001C53C8);
  sub_1004DEF5C();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    sub_100004CB8(&qword_100638D10);
    sub_1001C541C(&qword_100638D18, sub_1001C53C8);
    sub_1004DEF5C();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1001B899C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001C5588(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1001B89E4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_10010ACC0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1001B4424(v2, v3);
}

uint64_t Library.Menu.Revision.version.getter(uint64_t a1)
{

  return a1;
}

uint64_t MPCPlaybackEngine.Configuration.options.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void sub_1001B8AB4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v5 = *(v2 + 8);
  if (qword_100633D28 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v7 = sub_1004D966C();
    sub_100035430(v7, static Logger.libraryMenu);
    v8 = sub_1004D964C();
    v9 = sub_1004DDF9C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "╭ ⏩ Begin Migration", v10, 2u);
    }

    v11 = sub_1004D964C();
    v12 = sub_1004DDF9C();

    v44 = v6;
    v45 = v5;
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v49 = v14;
      *v13 = 136315138;
      v47 = v6;
      v48 = v5;

      v15 = sub_1004DD4DC();
      v17 = sub_1000343A8(v15, v16, &v49);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "╞< %s", v13, 0xCu);
      sub_100008D24(v14);
    }

    v18 = sub_1004D964C();
    v19 = sub_1004DDF9C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v49 = v21;
      *v20 = 136315138;
      v47 = a1;
      v48 = a2;

      v22 = sub_1004DD4DC();
      v24 = sub_1000343A8(v22, v23, &v49);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "╞> %s", v20, 0xCu);
      sub_100008D24(v21);
    }

    v5 = v46[2];

    v26 = sub_10014CF18(v25);

    v28 = sub_10014CF18(v27);

    if (*(v28 + 16) <= *(v26 + 16) >> 3)
    {
      v47 = v26;

      sub_1001C2B2C(v28);
      v6 = v47;
    }

    else
    {

      v6 = sub_1001C2C20(v28, v26);
    }

    if (*(v26 + 16) <= *(v28 + 16) >> 3)
    {
      v47 = v28;
      sub_1001C2B2C(v26);
      v29 = v47;
    }

    else
    {
      v29 = sub_1001C2C20(v26, v28);
    }

    v49 = v5;
    v30 = *(v5 + 16);
    v31 = *(v26 + 16);

    if (v30 == v31)
    {
      break;
    }

    v32 = *(v5 + 16);
    if (!v32)
    {
      break;
    }

    v33 = 0;
    while (v33 < *(v5 + 16))
    {
      v34 = v33 + 1;
      LOBYTE(v47) = *(v5 + 32 + v33);
      sub_1001B9418(&v47, &v49);
      v33 = v34;
      if (v32 == v34)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
  }

LABEL_19:
  sub_1001B3DA4(v6, &v49);

  sub_1001C429C(v29, a1, &v49);

  v35 = *(a1 + 16);
  swift_beginAccess();
  v36 = v49;
  if (v35 == *(v49 + 2))
  {

    v46[2] = v36;
    v37 = v46[3];
    if (*(v6 + 2) <= *(v37 + 16) >> 3)
    {

      sub_1001C2B2C(v6);

      v38 = v37;
    }

    else
    {

      v38 = sub_1001C2C20(v6, v37);
    }

    v42 = sub_1001C4510(v29, a1, a2);

    v43 = sub_1001BA228(v42, v38);

    v41 = v46;
    v46[3] = v43;
  }

  else
  {

    v39 = v46[3];
    sub_1001C61CC();
    swift_allocError();
    *v40 = v44;
    v40[1] = v45;
    v40[2] = v5;
    v40[3] = v39;
    v40[4] = a1;
    v40[5] = a2;
    swift_willThrow();

    v41 = v46;
  }

  sub_1001B90D0(v41, a1, a2);
}

void sub_1001B90D0(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;

  v3 = qword_100633D28;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = sub_1004D966C();
  sub_100035430(v4, static Logger.libraryMenu);
  v5 = sub_1004D964C();
  v6 = sub_1004DDF9C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "╞ ✅ Migration ended with", v7, 2u);
  }

  v8 = sub_1004D964C();
  v9 = sub_1004DDF9C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136446210;
    v12 = sub_1004DD88C();
    v14 = v13;

    v15 = sub_1000343A8(v12, v14, &v24);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "╞  - Ordered: %{public}s)", v10, 0xCu);
    sub_100008D24(v11);
  }

  else
  {
  }

  oslog = sub_1004D964C();
  v16 = sub_1004DDF9C();

  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136446210;
    sub_10014CF8C();
    v19 = sub_1004DDC4C();
    v21 = v20;

    v22 = sub_1000343A8(v19, v21, &v24);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, oslog, v16, "╞  - Selected: %{public}s)", v17, 0xCu);
    sub_100008D24(v18);
  }

  else
  {
  }
}

uint64_t sub_1001B9418(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v4 = *a2;

  v5 = sub_100151C94(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    do
    {
      v20 = *a2;

      v21 = sub_1001B96E4(v3, v20);
      v23 = v22;

      if ((v23 & 1) != 0 || v5 == v21)
      {
        break;
      }

      if (qword_100633D28 != -1)
      {
        swift_once();
      }

      v24 = sub_1004D966C();
      sub_100035430(v24, static Logger.libraryMenu);
      v16 = sub_1004D964C();
      v25 = sub_1004DDF9C();
      if (os_log_type_enabled(v16, v25))
      {
        v29 = v25;
        v26 = swift_slowAlloc();
        result = swift_slowAlloc();
        v28[0] = result;
        *v26 = 136315650;
        if ((v21 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_15:
          __break(1u);
          return result;
        }

        if (v21 >= *(*a2 + 16))
        {
          goto LABEL_15;
        }

        v9 = result;
        v10 = Library.Menu.Identifier.description.getter(*(*a2 + v21 + 32));
        log = v16;
        v12 = v5;
        v13 = a2;
        v14 = v3;
        v15 = sub_1000343A8(v10, v11, v28);

        *(v26 + 4) = v15;
        v3 = v14;
        a2 = v13;
        *(v26 + 12) = 2048;
        *(v26 + 14) = v12;
        *(v26 + 22) = 2048;
        *(v26 + 24) = v21;
        v16 = log;
        _os_log_impl(&_mh_execute_header, log, v29, "╞ Removing duplicate:%s at index: [%ld, %ld]", v26, 0x20u);
        sub_100008D24(v9);
      }

      swift_beginAccess();
      sub_1000551B8(v21);
      swift_endAccess();
      v17 = *a2;

      v5 = sub_100151C94(v3, v17);
      v19 = v18;
    }

    while ((v19 & 1) == 0);
  }

  return result;
}

uint64_t sub_1001B96E4(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = a2 + 31;
  do
  {
    v6 = v3;
    if (!v3)
    {
      break;
    }

    --v3;
    v7 = 0xD000000000000029;
    v8 = "orites";
    switch(*(v4 + v6))
    {
      case 1:
        v7 = 0xD000000000000025;
        v8 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v7 = 0xD000000000000023;
        v8 = "LibraryView.Playlists";
        break;
      case 3:
        v7 = 0xD000000000000022;
        v8 = "LibraryView.Artists";
        break;
      case 4:
        v7 = 0xD000000000000021;
        v8 = "LibraryView.Albums";
        break;
      case 5:
        v7 = 0xD000000000000026;
        v8 = "LibraryView.Songs";
        break;
      case 6:
        v7 = 0xD000000000000027;
        v8 = "LibraryView.MadeForYou";
        break;
      case 7:
        v7 = 0xD000000000000022;
        v8 = "LibraryView.MusicVideos";
        break;
      case 8:
        v7 = 0xD000000000000028;
        v8 = "LibraryView.Genres";
        break;
      case 9:
        v7 = 0xD000000000000025;
        v8 = "LibraryView.Compilations";
        break;
      case 0xA:
        v7 = 0xD000000000000021;
        v8 = "LibraryView.Composers";
        break;
      case 0xB:
        v7 = 0xD000000000000026;
        v8 = "LibraryView.Shows";
        break;
      case 0xC:
        v7 = 0xD000000000000027;
        v8 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    v9 = v8 | 0x8000000000000000;
    v10 = 0xD000000000000029;
    v11 = "orites";
    switch(a1)
    {
      case 1:
        v10 = 0xD000000000000025;
        v11 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v10 = 0xD000000000000023;
        v11 = "LibraryView.Playlists";
        break;
      case 3:
        v10 = 0xD000000000000022;
        v11 = "LibraryView.Artists";
        break;
      case 4:
        v10 = 0xD000000000000021;
        v11 = "LibraryView.Albums";
        break;
      case 5:
        v10 = 0xD000000000000026;
        v11 = "LibraryView.Songs";
        break;
      case 6:
        v10 = 0xD000000000000027;
        v11 = "LibraryView.MadeForYou";
        break;
      case 7:
        v10 = 0xD000000000000022;
        v11 = "LibraryView.MusicVideos";
        break;
      case 8:
        v10 = 0xD000000000000028;
        v11 = "LibraryView.Genres";
        break;
      case 9:
        v10 = 0xD000000000000025;
        v11 = "LibraryView.Compilations";
        break;
      case 10:
        v10 = 0xD000000000000021;
        v11 = "LibraryView.Composers";
        break;
      case 11:
        v10 = 0xD000000000000026;
        v11 = "LibraryView.Shows";
        break;
      case 12:
        v10 = 0xD000000000000027;
        v11 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    if (v7 == v10 && v9 == (v11 | 0x8000000000000000))
    {

      return v3;
    }

    v5 = sub_1004DF08C();
  }

  while ((v5 & 1) == 0);
  return v3;
}

uint64_t sub_1001B9A44(unsigned __int8 *a1, char **a2)
{
  v29 = *a1;
  swift_beginAccess();
  v4 = *a2;
  v5 = *(*a2 + 2);
  if (v5)
  {
    v28 = a2;
    v6 = 0;
    v7 = "orites";
    do
    {
      if (v6 >= *(v4 + 2))
      {
        __break(1u);
        goto LABEL_81;
      }

      v8 = 0xD000000000000029;
      v9 = "orites";
      switch(v4[v6 + 32])
      {
        case 1:
          v8 = 0xD000000000000025;
          v9 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v8 = 0xD000000000000023;
          v9 = "LibraryView.Playlists";
          break;
        case 3:
          v8 = 0xD000000000000022;
          v9 = "LibraryView.Artists";
          break;
        case 4:
          v8 = 0xD000000000000021;
          v9 = "LibraryView.Albums";
          break;
        case 5:
          v8 = 0xD000000000000026;
          v9 = "LibraryView.Songs";
          break;
        case 6:
          v8 = 0xD000000000000027;
          v9 = "LibraryView.MadeForYou";
          break;
        case 7:
          v8 = 0xD000000000000022;
          v9 = "LibraryView.MusicVideos";
          break;
        case 8:
          v8 = 0xD000000000000028;
          v9 = "LibraryView.Genres";
          break;
        case 9:
          v8 = 0xD000000000000025;
          v9 = "LibraryView.Compilations";
          break;
        case 10:
          v8 = 0xD000000000000021;
          v9 = "LibraryView.Composers";
          break;
        case 11:
          v8 = 0xD000000000000026;
          v9 = "LibraryView.Shows";
          break;
        case 12:
          v8 = 0xD000000000000027;
          v9 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      v10 = v9 | 0x8000000000000000;
      v11 = 0xD000000000000029;
      v12 = "orites";
      switch(v29)
      {
        case 1:
          v11 = 0xD000000000000025;
          v12 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v11 = 0xD000000000000023;
          v12 = "LibraryView.Playlists";
          break;
        case 3:
          v11 = 0xD000000000000022;
          v12 = "LibraryView.Artists";
          break;
        case 4:
          v11 = 0xD000000000000021;
          v12 = "LibraryView.Albums";
          break;
        case 5:
          v11 = 0xD000000000000026;
          v12 = "LibraryView.Songs";
          break;
        case 6:
          v11 = 0xD000000000000027;
          v12 = "LibraryView.MadeForYou";
          break;
        case 7:
          v11 = 0xD000000000000022;
          v12 = "LibraryView.MusicVideos";
          break;
        case 8:
          v11 = 0xD000000000000028;
          v12 = "LibraryView.Genres";
          break;
        case 9:
          v11 = 0xD000000000000025;
          v12 = "LibraryView.Compilations";
          break;
        case 10:
          v11 = 0xD000000000000021;
          v12 = "LibraryView.Composers";
          break;
        case 11:
          v11 = 0xD000000000000026;
          v12 = "LibraryView.Shows";
          break;
        case 12:
          v11 = 0xD000000000000027;
          v12 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      if (v8 == v11 && v10 == (v12 | 0x8000000000000000))
      {

LABEL_37:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v5 = a2;
        *a2 = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_86;
        }

        while (1)
        {
          *v5 = v4;
          v16 = *(v4 + 2);
          if ((v16 - 1) == v6)
          {
LABEL_39:
            v7 = v2;
            *v28 = v4;
            v14 = *(v4 + 2);
            if (v14 >= v6)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v5 = (v6 + 1);
            v27 = v4 + 32;
            v18 = &v4[v6 + 33];
            while (v5 < v16)
            {
              v19 = 0xD000000000000029;
              v20 = v7;
              switch(*v18)
              {
                case 1:
                  v19 = 0xD000000000000025;
                  v20 = "LibraryView.RecentlyAdded";
                  break;
                case 2:
                  v19 = 0xD000000000000023;
                  v20 = "LibraryView.Playlists";
                  break;
                case 3:
                  v19 = 0xD000000000000022;
                  v20 = "LibraryView.Artists";
                  break;
                case 4:
                  v19 = 0xD000000000000021;
                  v20 = "LibraryView.Albums";
                  break;
                case 5:
                  v19 = 0xD000000000000026;
                  v20 = "LibraryView.Songs";
                  break;
                case 6:
                  v19 = 0xD000000000000027;
                  v20 = "LibraryView.MadeForYou";
                  break;
                case 7:
                  v19 = 0xD000000000000022;
                  v20 = "LibraryView.MusicVideos";
                  break;
                case 8:
                  v19 = 0xD000000000000028;
                  v20 = "LibraryView.Genres";
                  break;
                case 9:
                  v19 = 0xD000000000000025;
                  v20 = "LibraryView.Compilations";
                  break;
                case 10:
                  v19 = 0xD000000000000021;
                  v20 = "LibraryView.Composers";
                  break;
                case 11:
                  v19 = 0xD000000000000026;
                  v20 = "LibraryView.Shows";
                  break;
                case 12:
                  v19 = 0xD000000000000027;
                  v20 = "LibraryView.Downloaded";
                  break;
                default:
                  break;
              }

              v21 = v20 | 0x8000000000000000;
              v22 = 0xD000000000000029;
              v23 = v7;
              switch(v29)
              {
                case 1:
                  v22 = 0xD000000000000025;
                  v23 = "LibraryView.RecentlyAdded";
                  break;
                case 2:
                  v22 = 0xD000000000000023;
                  v23 = "LibraryView.Playlists";
                  break;
                case 3:
                  v22 = 0xD000000000000022;
                  v23 = "LibraryView.Artists";
                  break;
                case 4:
                  v22 = 0xD000000000000021;
                  v23 = "LibraryView.Albums";
                  break;
                case 5:
                  v22 = 0xD000000000000026;
                  v23 = "LibraryView.Songs";
                  break;
                case 6:
                  v22 = 0xD000000000000027;
                  v23 = "LibraryView.MadeForYou";
                  break;
                case 7:
                  v22 = 0xD000000000000022;
                  v23 = "LibraryView.MusicVideos";
                  break;
                case 8:
                  v22 = 0xD000000000000028;
                  v23 = "LibraryView.Genres";
                  break;
                case 9:
                  v22 = 0xD000000000000025;
                  v23 = "LibraryView.Compilations";
                  break;
                case 10:
                  v22 = 0xD000000000000021;
                  v23 = "LibraryView.Composers";
                  break;
                case 11:
                  v22 = 0xD000000000000026;
                  v23 = "LibraryView.Shows";
                  break;
                case 12:
                  v22 = 0xD000000000000027;
                  v23 = "LibraryView.Downloaded";
                  break;
                default:
                  break;
              }

              if (v19 == v22 && v21 == (v23 | 0x8000000000000000))
              {
              }

              else
              {
                v24 = sub_1004DF08C();

                if ((v24 & 1) == 0)
                {
                  if (v5 != v6)
                  {
                    if (v6 < 0)
                    {
                      goto LABEL_83;
                    }

                    v25 = *(v4 + 2);
                    if (v6 >= v25)
                    {
                      goto LABEL_84;
                    }

                    if (v5 >= v25)
                    {
                      goto LABEL_85;
                    }

                    v26 = v27[v6];
                    v27[v6] = *v18;
                    *v18 = v26;
                  }

                  ++v6;
                }
              }

              v5 = (v5 + 1);
              v16 = *(v4 + 2);
              ++v18;
              if (v5 == v16)
              {
                goto LABEL_39;
              }
            }

LABEL_81:
            __break(1u);
          }

          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          v4 = sub_10005D2F4(v4);
        }
      }

      v13 = sub_1004DF08C();

      if (v13)
      {
        goto LABEL_37;
      }

      ++v6;
    }

    while (v5 != v6);
    v6 = *(v4 + 2);
    v14 = v6;
  }

  else
  {
    v6 = 0;
    v14 = 0;
  }

LABEL_40:
  sub_10005E45C(v6, v14);
  return swift_endAccess();
}

uint64_t sub_1001BA110(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v6 = v5;
  v10 = a4 >> 1;
  result = swift_beginAccess();
  do
  {
    if (a3 == v10)
    {
      return 13;
    }

    if (__OFSUB__(v10--, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    if (v10 < a3)
    {
      goto LABEL_11;
    }

    v13 = *a5;
    v14 = *(a2 + v10);

    v15 = sub_1001B3F54(v14, v13);
  }

  while (!v15);
  __chkstk_darwin(result);
  v16 = v10;
  result = sub_1001C6220(&v16, &v17);
  if (!v6)
  {
    return v17;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1001BA228(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1001BBFA0(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t static Library.Menu.Revision.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((sub_10010ACC0(a1, a5) & 1) == 0 || (sub_1001B4424(a2, a6) & 1) == 0 || (sub_10010ACC0(a3, a7) & 1) == 0)
  {
    return 0;
  }

  return sub_1001B4424(a4, a8);
}

uint64_t sub_1001BA3A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001C4CA4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1001BA3F4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  if ((sub_10010ACC0(*a1, *a2) & 1) == 0 || (sub_1001B4424(v2, v5) & 1) == 0 || (sub_10010ACC0(v4, v7) & 1) == 0)
  {
    return 0;
  }

  return sub_1001B4424(v3, v6);
}

void *sub_1001BA490()
{
  result = sub_10003C76C(&off_1005D2B70);
  static Library.Menu.Revision.Version.current = &off_1005D2B40;
  *algn_100671D68 = result;
  return result;
}

uint64_t static Library.Menu.Revision.Version.current.getter()
{
  if (qword_100633D20 != -1)
  {
    swift_once();
  }

  v0 = static Library.Menu.Revision.Version.current;

  return v0;
}

void sub_1001BA534()
{
  LOBYTE(v15[0]) = 0;
  sub_1001C6178();
  sub_100030C58();
  NSUserDefaults.subscript.getter(&v16);
  if (!*(&v17 + 1))
  {
    goto LABEL_8;
  }

  sub_100004CB8(&unk_1006372E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v1 = v15[0];
  LOBYTE(v15[0]) = 1;
  NSUserDefaults.subscript.getter(&v16);
  if (!*(&v17 + 1))
  {
LABEL_7:

LABEL_8:
    sub_10001074C(&v16, &qword_100638E60);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  v2 = v15[0];
  v15[0] = 0x4D7972617262694CLL;
  v15[1] = 0xEB00000000756E65;
  NSUserDefaults.subscript.getter(v15, &v16);
  if (*(&v17 + 1))
  {

    goto LABEL_7;
  }

  sub_10001074C(&v16, &qword_100638E60);
  if (qword_100633D20 != -1)
  {
    swift_once();
  }

  v3 = sub_1001C479C(v1, v2, static Library.Menu.Revision.Version.current, *algn_100671D68);
  if (v0)
  {

    if (qword_100633D28 != -1)
    {
      swift_once();
    }

    v6 = sub_1004D966C();
    sub_100035430(v6, static Logger.libraryMenu);
    swift_errorRetain();
    v7 = sub_1004D964C();
    v8 = sub_1004DDF7C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *&v16 = v0;
      swift_errorRetain();
      sub_100004CB8(&qword_100638980);
      sub_1004DD4DC();
      v11 = sub_1004DD3FC();

      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "Unable to migrate legacy library menu: %@", v9, 0xCu);
      sub_10001074C(v10, &qword_100636460);
    }

    else
    {
    }
  }

  else
  {
    v12 = v3;
    v13 = v4;
    v14 = v5;

    NSUserDefaults.libraryMenuRevision.setter(v12, v13, v14);
    v16 = 0u;
    v17 = 0u;
    LOBYTE(v15[0]) = 0;
    NSUserDefaults.subscript.setter(&v16, v15, &_s9LegacyKeyON);
    v16 = 0u;
    v17 = 0u;
    LOBYTE(v15[0]) = 1;
    NSUserDefaults.subscript.setter(&v16, v15, &_s9LegacyKeyON);
  }
}

void (*NSUserDefaults.libraryMenuRevision.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  *v3 = NSUserDefaults.libraryMenuRevision.getter();
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  return sub_1001BA9AC;
}

void sub_1001BA9AC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  if (a2)
  {

    NSUserDefaults.libraryMenuRevision.setter(v4, v3, v5);
  }

  else
  {
    NSUserDefaults.libraryMenuRevision.setter(**a1, v3, v5);
  }

  free(v2);
}

uint64_t sub_1001BAA70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000001CLL;
  }

  else
  {
    v3 = 0xD00000000000001DLL;
  }

  if (v2)
  {
    v4 = "loading";
  }

  else
  {
    v4 = "orderedLibraryViewIdentifiers";
  }

  if (*a2)
  {
    v5 = 0xD00000000000001CLL;
  }

  else
  {
    v5 = 0xD00000000000001DLL;
  }

  if (*a2)
  {
    v6 = "orderedLibraryViewIdentifiers";
  }

  else
  {
    v6 = "loading";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1004DF08C();
  }

  return v8 & 1;
}

Swift::Int sub_1001BAB18()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_1001BAB94()
{
  sub_1004DD55C();
}

Swift::Int sub_1001BABFC()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_1001BAC74@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1005D2D58;
  v8._object = v3;
  v5 = sub_1004DEE2C(v4, v8);

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

void sub_1001BACD4(unint64_t *a1@<X8>)
{
  v2 = "orderedLibraryViewIdentifiers";
  v3 = 0xD00000000000001CLL;
  if (!*v1)
  {
    v3 = 0xD00000000000001DLL;
    v2 = "loading";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_1001BAD10()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, static Logger.libraryMenu);
  sub_100035430(v0, static Logger.libraryMenu);
  return sub_1004D965C();
}

uint64_t static Logger.libraryMenu.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100633D28 != -1)
  {
    swift_once();
  }

  v2 = sub_1004D966C();
  v3 = sub_100035430(v2, static Logger.libraryMenu);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Library.Menu.Identifier.musicAccessibilityIdentifier.getter(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_1006341B8 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryPlaylistsView;
      break;
    case 2:
      if (qword_100634168 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryArtistsListView;
      break;
    case 3:
      if (qword_100634178 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryAlbumsView;
      break;
    case 4:
      if (qword_1006341C0 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.librarySongsView;
      break;
    case 5:
      if (qword_1006341A8 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryMadeForYouView;
      break;
    case 6:
      if (qword_1006341B0 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryMusicVideosView;
      break;
    case 7:
      if (qword_1006341A0 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryGenresView;
      break;
    case 8:
      if (qword_100634188 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryCompilationsView;
      break;
    case 9:
      if (qword_100634180 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryComposersView;
      break;
    case 10:
      if (qword_1006341C8 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryTVAndMoviesView;
      break;
    case 11:
      if (qword_100634190 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryDownloadedView;
      break;
    case 12:
      if (qword_100634198 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryDownloadingView;
      break;
    default:
      if (qword_100634160 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryRecentlyAddedView;
      break;
  }

  v2 = *v1;

  return v2;
}

uint64_t sub_1001BB1E4(_BYTE *a1, Swift::Int a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1004DF26C();
  ActionType.rawValue.getter(a2);
  sub_1004DD55C();

  v7 = sub_1004DF2BC();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = ActionType.rawValue.getter(*(*(v6 + 48) + v9));
      v13 = v12;
      if (v11 == ActionType.rawValue.getter(a2) && v13 == v14)
      {
        break;
      }

      v16 = sub_1004DF08C();

      if (v16)
      {
        goto LABEL_11;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    result = 0;
    LOBYTE(a2) = *(*(v6 + 48) + v9);
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1001C0D0C(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1001BB36C(_BYTE *a1, Swift::Int a2)
{
  v4 = *v2;
  sub_1004DF26C();
  ApplicationCapabilities.Service.rawValue.getter(a2);
  sub_1004DD55C();

  v5 = sub_1004DF2BC();
  v32 = v4;
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  v31 = v4 + 56;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v30 = ~v6;
    while (1)
    {
      v8 = *(*(v32 + 48) + v7);
      v33 = v7;
      if (v8 <= 4)
      {
        if (v8 == 3)
        {
          v11 = 0x6C6169636F73;
        }

        else
        {
          v11 = 0x6F69646172;
        }

        if (v8 == 3)
        {
          v12 = 0xE600000000000000;
        }

        else
        {
          v12 = 0xE500000000000000;
        }

        if (v8 == 2)
        {
          v11 = 0xD000000000000013;
          v12 = 0x80000001004E9570;
        }

        v13 = *(*(v32 + 48) + v7) ? 0x646956636973756DLL : 0x636973756DLL;
        v14 = *(*(v32 + 48) + v7) ? 0xEB00000000736F65 : 0xE500000000000000;
        v9 = *(*(v32 + 48) + v7) <= 1u ? v13 : v11;
        v10 = *(*(v32 + 48) + v7) <= 1u ? v14 : v12;
      }

      else if (*(*(v32 + 48) + v7) > 7u)
      {
        if (v8 == 8)
        {
          v9 = 0xD000000000000013;
          v10 = 0x80000001004E95B0;
        }

        else if (v8 == 9)
        {
          v9 = 0xD000000000000011;
          v10 = 0x80000001004E95D0;
        }

        else
        {
          v9 = 0x6C62616E45696C6DLL;
          v10 = 0xEA00000000006465;
        }
      }

      else if (v8 == 5)
      {
        v10 = 0xE600000000000000;
        v9 = 0x73656E757469;
      }

      else if (v8 == 6)
      {
        v9 = 0x74634170756F7267;
        v10 = 0xED00007974697669;
      }

      else
      {
        v9 = 0x746963696C707865;
        v10 = 0xEF746E65746E6F43;
      }

      v15 = 0xD000000000000011;
      if (a2 != 9)
      {
        v15 = 0x6C62616E45696C6DLL;
      }

      v16 = 0xEA00000000006465;
      if (a2 == 9)
      {
        v16 = 0x80000001004E95D0;
      }

      if (a2 == 8)
      {
        v15 = 0xD000000000000013;
        v16 = 0x80000001004E95B0;
      }

      v17 = 0x746963696C707865;
      if (a2 == 6)
      {
        v17 = 0x74634170756F7267;
      }

      v18 = 0xEF746E65746E6F43;
      if (a2 == 6)
      {
        v18 = 0xED00007974697669;
      }

      if (a2 == 5)
      {
        v17 = 0x73656E757469;
        v18 = 0xE600000000000000;
      }

      if (a2 <= 7u)
      {
        v15 = v17;
        v16 = v18;
      }

      if (a2 == 3)
      {
        v19 = 0x6C6169636F73;
      }

      else
      {
        v19 = 0x6F69646172;
      }

      if (a2 == 3)
      {
        v20 = 0xE600000000000000;
      }

      else
      {
        v20 = 0xE500000000000000;
      }

      if (a2 == 2)
      {
        v19 = 0xD000000000000013;
        v20 = 0x80000001004E9570;
      }

      if (a2)
      {
        v21 = 0x646956636973756DLL;
      }

      else
      {
        v21 = 0x636973756DLL;
      }

      if (a2)
      {
        v22 = 0xEB00000000736F65;
      }

      else
      {
        v22 = 0xE500000000000000;
      }

      if (a2 <= 1u)
      {
        v19 = v21;
        v20 = v22;
      }

      v23 = a2 <= 4u ? v19 : v15;
      v24 = a2 <= 4u ? v20 : v16;
      if (v9 == v23 && v10 == v24)
      {
        break;
      }

      v25 = sub_1004DF08C();

      if (v25)
      {
        goto LABEL_78;
      }

      v7 = (v33 + 1) & v30;
      if (((*(v31 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_76;
      }
    }

LABEL_78:
    result = 0;
    LOBYTE(a2) = *(*(v32 + 48) + v33);
  }

  else
  {
LABEL_76:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v28;
    sub_1001C0EF4(a2, v7, isUniquelyReferenced_nonNull_native);
    *v28 = v34;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1001BB774(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1004DC7EC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1001C6298(&qword_100637BF8, &type metadata accessor for AudioVariant);
  v33 = a2;
  v11 = sub_1004DD2AC();
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
      sub_1001C6298(&qword_100637C00, &type metadata accessor for AudioVariant);
      v21 = sub_1004DD35C();
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
    sub_1001C1358(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1001BBA54(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1004DD43C();
  sub_1004DF26C();
  sub_1004DD55C();
  v7 = sub_1004DF2BC();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_1004DD43C();
      v13 = v12;
      if (v11 == sub_1004DD43C() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_1004DF08C();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_1001C15FC(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_1001BBC00(_BYTE *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  sub_1004DF26C();
  v7 = a2 & 1;
  sub_1004DF27C(v7);
  v8 = sub_1004DF2BC();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v6 + 48);
      if (*(v12 + v10) == v7)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v7) = *(v12 + v10);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1001C17E4(v7, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    result = 1;
  }

  *a1 = v7;
  return result;
}

uint64_t sub_1001BBD00(void *a1, uint64_t a2)
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

    v8 = sub_1004DE9DC();

    if (v8)
    {

      sub_1004D9ABC();
      swift_dynamicCast();
      result = 0;
      *a1 = v18;
      return result;
    }

    result = sub_1004DE9BC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_1001C09F0(v7, result + 1);
    if (*(v16 + 24) <= *(v16 + 16))
    {
      sub_1001BFC7C();
    }

    sub_1001C0C24(v17, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_1004D9ABC();
  sub_1001C6298(&qword_100635038, &type metadata accessor for AnyCancellable);
  v10 = sub_1004DD2AC();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;

    sub_1001C1938(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v19;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_1001C6298(&qword_100635040, &type metadata accessor for AnyCancellable);
  while ((sub_1004DD35C() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_1001BBFA0(_BYTE *a1, Swift::Int a2)
{
  v4 = *v2;
  sub_1004DF26C();
  Library.Menu.Identifier.rawValue.getter(a2);
  sub_1004DD55C();

  v5 = sub_1004DF2BC();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = 0xD000000000000029;
      v10 = "orites";
      switch(*(*(v4 + 48) + v7))
      {
        case 1:
          v9 = 0xD000000000000025;
          v10 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v9 = 0xD000000000000023;
          v10 = "LibraryView.Playlists";
          break;
        case 3:
          v9 = 0xD000000000000022;
          v10 = "LibraryView.Artists";
          break;
        case 4:
          v9 = 0xD000000000000021;
          v10 = "LibraryView.Albums";
          break;
        case 5:
          v9 = 0xD000000000000026;
          v10 = "LibraryView.Songs";
          break;
        case 6:
          v9 = 0xD000000000000027;
          v10 = "LibraryView.MadeForYou";
          break;
        case 7:
          v9 = 0xD000000000000022;
          v10 = "LibraryView.MusicVideos";
          break;
        case 8:
          v9 = 0xD000000000000028;
          v10 = "LibraryView.Genres";
          break;
        case 9:
          v9 = 0xD000000000000025;
          v10 = "LibraryView.Compilations";
          break;
        case 0xA:
          v9 = 0xD000000000000021;
          v10 = "LibraryView.Composers";
          break;
        case 0xB:
          v9 = 0xD000000000000026;
          v10 = "LibraryView.Shows";
          break;
        case 0xC:
          v9 = 0xD000000000000027;
          v10 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      v11 = v10 | 0x8000000000000000;
      v12 = 0xD000000000000029;
      v13 = "orites";
      switch(a2)
      {
        case 1:
          v12 = 0xD000000000000025;
          v13 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v12 = 0xD000000000000023;
          v13 = "LibraryView.Playlists";
          break;
        case 3:
          v12 = 0xD000000000000022;
          v13 = "LibraryView.Artists";
          break;
        case 4:
          v12 = 0xD000000000000021;
          v13 = "LibraryView.Albums";
          break;
        case 5:
          v12 = 0xD000000000000026;
          v13 = "LibraryView.Songs";
          break;
        case 6:
          v12 = 0xD000000000000027;
          v13 = "LibraryView.MadeForYou";
          break;
        case 7:
          v12 = 0xD000000000000022;
          v13 = "LibraryView.MusicVideos";
          break;
        case 8:
          v12 = 0xD000000000000028;
          v13 = "LibraryView.Genres";
          break;
        case 9:
          v12 = 0xD000000000000025;
          v13 = "LibraryView.Compilations";
          break;
        case 10:
          v12 = 0xD000000000000021;
          v13 = "LibraryView.Composers";
          break;
        case 11:
          v12 = 0xD000000000000026;
          v13 = "LibraryView.Shows";
          break;
        case 12:
          v12 = 0xD000000000000027;
          v13 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      if (v9 == v12 && v11 == (v13 | 0x8000000000000000))
      {
        break;
      }

      v14 = sub_1004DF08C();

      if (v14)
      {
        goto LABEL_35;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

LABEL_35:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_33:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v17;
    sub_1001C1B20(a2, v7, isUniquelyReferenced_nonNull_native);
    *v17 = v19;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1001BC3BC(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  sub_1004DF26C();
  sub_1004DF27C(a2);
  v6 = sub_1004DF2BC();
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
    sub_1001C1F8C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1001BC4B4(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1004DF25C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
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
    sub_1001C20EC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1001BC594(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  sub_1004DF26C();
  sub_1004DD55C();
  v8 = sub_1004DF2BC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1004DF08C() & 1) != 0)
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

    sub_1001C220C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

unint64_t sub_1001BC6E4()
{
  result = qword_100638CD0;
  if (!qword_100638CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638CD0);
  }

  return result;
}

unint64_t sub_1001BC738()
{
  result = qword_100638CD8;
  if (!qword_100638CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638CD8);
  }

  return result;
}

id sub_1001BC78C(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    return a1;
  }
}

void sub_1001BC798(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1001BC7A4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1001BC804(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1001BC874()
{

  return swift_deallocObject();
}

uint64_t sub_1001BC8C4()
{

  return swift_deallocObject();
}

uint64_t sub_1001BC980(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1001BC998()
{
  result = qword_100638CE0;
  if (!qword_100638CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638CE0);
  }

  return result;
}

void *sub_1001BCA00()
{
  v1 = v0;
  v2 = sub_1004DC7EC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100638E48);
  v6 = *v0;
  v7 = sub_1004DEA5C();
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

id sub_1001BCC38()
{
  v1 = v0;
  sub_100004CB8(&qword_100638DC0);
  v2 = *v0;
  v3 = sub_1004DEA5C();
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

void *sub_1001BCD88()
{
  v1 = v0;
  sub_100004CB8(&qword_100638E40);
  v2 = *v0;
  v3 = sub_1004DEA5C();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

void *sub_1001BCEC8()
{
  v1 = v0;
  sub_100004CB8(&qword_100635030);
  v2 = *v0;
  v3 = sub_1004DEA5C();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void *sub_1001BD02C(uint64_t *a1)
{
  v2 = v1;
  sub_100004CB8(a1);
  v3 = *v1;
  v4 = sub_1004DEA5C();
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

void *sub_1001BD15C()
{
  v1 = v0;
  sub_100004CB8(&qword_100638DD8);
  v2 = *v0;
  v3 = sub_1004DEA5C();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

void *sub_1001BD29C()
{
  v1 = v0;
  sub_100004CB8(&qword_100638DB8);
  v2 = *v0;
  v3 = sub_1004DEA5C();
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

uint64_t sub_1001BD3F8()
{
  v1 = v0;
  v2 = *v0;
  sub_100004CB8(&qword_1006350B8);
  result = sub_1004DEA6C();
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
      sub_1004DF26C();
      ActionType.rawValue.getter(v15);
      sub_1004DD55C();

      result = sub_1004DF2BC();
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

uint64_t sub_1001BD634()
{
  v1 = v0;
  v2 = *v0;
  sub_100004CB8(&qword_100638DC8);
  result = sub_1004DEA6C();
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
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_17:
      v18 = *(*(v2 + 48) + (v15 | (v5 << 6)));
      sub_1004DF26C();
      sub_1004DD55C();

      result = sub_1004DF2BC();
      v11 = -1 << *(v4 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v10 + 8 * (v12 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v11) >> 6;
        while (++v13 != v20 || (v19 & 1) == 0)
        {
          v21 = v13 == v20;
          if (v13 == v20)
          {
            v13 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v13);
          if (v22 != -1)
          {
            v14 = __clz(__rbit64(~v22)) + (v13 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v10 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v4 + 48) + v14) = v18;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_27;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1001BD9E0()
{
  v1 = v0;
  v32 = sub_1004DC7EC();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_100004CB8(&qword_100638E48);
  v6 = sub_1004DEA6C();
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
      sub_1001C6298(&qword_100637BF8, &type metadata accessor for AudioVariant);
      result = sub_1004DD2AC();
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

uint64_t sub_1001BDCFC()
{
  v1 = v0;
  v2 = *v0;
  sub_100004CB8(&qword_100638DC0);
  result = sub_1004DEA6C();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = v2 + 56;
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
      sub_1004DD43C();
      sub_1004DF26C();
      v17 = v16;
      sub_1004DD55C();
      v18 = sub_1004DF2BC();

      v19 = -1 << *(v4 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v17;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v26;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

uint64_t sub_1001BDF50()
{
  v1 = v0;
  v2 = *v0;
  sub_100004CB8(&qword_100638E40);
  result = sub_1004DEA6C();
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
      sub_1004DF26C();
      sub_1004DF27C(v15);
      result = sub_1004DF2BC();
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

uint64_t sub_1001BE170()
{
  v1 = v0;
  v2 = *v0;
  sub_100004CB8(&qword_100635030);
  result = sub_1004DEA6C();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v2;
    v5 = 0;
    v6 = v2 + 56;
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
      v25 = (v9 - 1) & v9;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_1004D9ABC();
      sub_1001C6298(&qword_100635038, &type metadata accessor for AnyCancellable);

      result = sub_1004DD2AC();
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

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v24;
      v9 = v25;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v25 = (v15 - 1) & v15;
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

uint64_t sub_1001BE3E8()
{
  v1 = v0;
  v2 = *v0;
  sub_100004CB8(&qword_100635018);
  v3 = sub_1004DEA6C();
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
      sub_1004DF26C();
      sub_1004DD55C();

      v12 = sub_1004DF2BC();
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
        JUMPOUT(0x1001BE790);
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

uint64_t sub_1001BE7C4()
{
  v1 = v0;
  v2 = *v0;
  sub_100004CB8(&qword_100634FF8);
  result = sub_1004DEA6C();
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
      sub_1004DF26C();
      sub_1004DF27C(v15);
      result = sub_1004DF2BC();
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

uint64_t sub_1001BE9E4()
{
  v1 = v0;
  v2 = *v0;
  sub_100004CB8(&qword_100638DD8);
  result = sub_1004DEA6C();
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
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_1004DF25C();
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

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1001BEBD4()
{
  v1 = v0;
  v2 = *v0;
  sub_100004CB8(&qword_100638DB8);
  result = sub_1004DEA6C();
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
      v17 = *v16;
      v18 = v16[1];
      sub_1004DF26C();

      sub_1004DD55C();
      result = sub_1004DF2BC();
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
      *v12 = v17;
      v12[1] = v18;
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

uint64_t sub_1001BEE0C()
{
  v1 = v0;
  v2 = *v0;
  sub_100004CB8(&qword_1006350B8);
  result = sub_1004DEA6C();
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
      sub_1004DF26C();
      ActionType.rawValue.getter(v16);
      sub_1004DD55C();

      result = sub_1004DF2BC();
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

uint64_t sub_1001BF078()
{
  v1 = v0;
  v2 = *v0;
  sub_100004CB8(&qword_100638DC8);
  result = sub_1004DEA6C();
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v2 + 48) + (v16 | (v5 << 6)));
      sub_1004DF26C();
      sub_1004DD55C();

      result = sub_1004DF2BC();
      v12 = -1 << *(v4 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v4 + 48) + v15) = v19;
      ++*(v4 + 16);
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v10)
      {
        break;
      }

      v18 = v6[v5];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_16;
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

uint64_t sub_1001BF454()
{
  v1 = v0;
  v35 = sub_1004DC7EC();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_100004CB8(&qword_100638E48);
  result = sub_1004DEA6C();
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
      sub_1001C6298(&qword_100637BF8, &type metadata accessor for AudioVariant);
      result = sub_1004DD2AC();
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

uint64_t sub_1001BF7B0()
{
  v1 = v0;
  v2 = *v0;
  sub_100004CB8(&qword_100638DC0);
  result = sub_1004DEA6C();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
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
      sub_1004DD43C();
      sub_1004DF26C();
      sub_1004DD55C();
      v17 = sub_1004DF2BC();

      v18 = -1 << *(v4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v27;
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

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero(v6, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v26;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1001BFA2C()
{
  v1 = v0;
  v2 = *v0;
  sub_100004CB8(&qword_100638E40);
  result = sub_1004DEA6C();
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
      sub_1004DF26C();
      sub_1004DF27C(v16);
      result = sub_1004DF2BC();
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

uint64_t sub_1001BFC7C()
{
  v1 = v0;
  v2 = *v0;
  sub_100004CB8(&qword_100635030);
  result = sub_1004DEA6C();
  v4 = result;
  if (*(v2 + 16))
  {
    v25 = v2;
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
      sub_1004D9ABC();
      sub_1001C6298(&qword_100635038, &type metadata accessor for AnyCancellable);
      result = sub_1004DD2AC();
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
      v2 = v25;
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
      bzero(v6, ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_1001BFF10()
{
  v1 = v0;
  v2 = *v0;
  sub_100004CB8(&qword_100635018);
  v3 = sub_1004DEA6C();
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
      sub_1004DF26C();
      sub_1004DD55C();

      v12 = sub_1004DF2BC();
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
        JUMPOUT(0x1001C02E8);
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

uint64_t sub_1001C031C()
{
  v1 = v0;
  v2 = *v0;
  sub_100004CB8(&qword_100634FF8);
  result = sub_1004DEA6C();
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
      sub_1004DF26C();
      sub_1004DF27C(v16);
      result = sub_1004DF2BC();
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

uint64_t sub_1001C056C()
{
  v1 = v0;
  v2 = *v0;
  sub_100004CB8(&qword_100638DD8);
  result = sub_1004DEA6C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
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
      result = sub_1004DF25C();
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

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1001C0790()
{
  v1 = v0;
  v2 = *v0;
  sub_100004CB8(&qword_100638DB8);
  result = sub_1004DEA6C();
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
      sub_1004DF26C();
      sub_1004DD55C();
      result = sub_1004DF2BC();
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

uint64_t sub_1001C09F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100004CB8(&qword_100635030);
    v2 = sub_1004DEA7C();
    v14 = v2;
    sub_1004DE98C();
    if (sub_1004DE9EC())
    {
      sub_1004D9ABC();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1001BFC7C();
        }

        v2 = v14;
        sub_1001C6298(&qword_100635038, &type metadata accessor for AnyCancellable);
        result = sub_1004DD2AC();
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

      while (sub_1004DE9EC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

unint64_t sub_1001C0C24(uint64_t a1, uint64_t a2)
{
  sub_1004D9ABC();
  sub_1001C6298(&qword_100635038, &type metadata accessor for AnyCancellable);
  sub_1004DD2AC();
  result = sub_1004DE96C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int sub_1001C0D0C(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_1001BEE0C();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1001BD02C(&qword_1006350B8);
      goto LABEL_16;
    }

    sub_1001BD3F8();
  }

  v9 = *v3;
  sub_1004DF26C();
  ActionType.rawValue.getter(v6);
  sub_1004DD55C();

  result = sub_1004DF2BC();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = ActionType.rawValue.getter(*(*(v9 + 48) + a2));
      v14 = v13;
      if (v12 == ActionType.rawValue.getter(v6) && v14 == v15)
      {
        goto LABEL_19;
      }

      v17 = sub_1004DF08C();

      if (v17)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v18 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v6;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_1004DF15C();
  __break(1u);
  return result;
}

Swift::Int sub_1001C0EF4(Swift::Int result, unint64_t a2, char a3)
{
  v36 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_84;
  }

  if (a3)
  {
    sub_1001BF078();
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_1001BD02C(&qword_100638DC8);
      goto LABEL_84;
    }

    sub_1001BD634();
  }

  v7 = *v3;
  sub_1004DF26C();
  ApplicationCapabilities.Service.rawValue.getter(v36);
  sub_1004DD55C();

  result = sub_1004DF2BC();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v35 = ~v8;
    v9 = 0xEB00000000736F65;
    v10 = 0x80000001004E9570;
    do
    {
      v11 = *(*(v7 + 48) + a2);
      if (v11 <= 4)
      {
        if (v11 == 3)
        {
          v14 = 0x6C6169636F73;
        }

        else
        {
          v14 = 0x6F69646172;
        }

        if (v11 == 3)
        {
          v15 = 0xE600000000000000;
        }

        else
        {
          v15 = 0xE500000000000000;
        }

        if (v11 == 2)
        {
          v14 = 0xD000000000000013;
          v15 = v10;
        }

        v16 = *(*(v7 + 48) + a2) ? 0x646956636973756DLL : 0x636973756DLL;
        v17 = *(*(v7 + 48) + a2) ? v9 : 0xE500000000000000;
        v12 = *(*(v7 + 48) + a2) <= 1u ? v16 : v14;
        v13 = *(*(v7 + 48) + a2) <= 1u ? v17 : v15;
      }

      else if (*(*(v7 + 48) + a2) > 7u)
      {
        if (v11 == 8)
        {
          v12 = 0xD000000000000013;
          v13 = 0x80000001004E95B0;
        }

        else if (v11 == 9)
        {
          v12 = 0xD000000000000011;
          v13 = 0x80000001004E95D0;
        }

        else
        {
          v12 = 0x6C62616E45696C6DLL;
          v13 = 0xEA00000000006465;
        }
      }

      else if (v11 == 5)
      {
        v13 = 0xE600000000000000;
        v12 = 0x73656E757469;
      }

      else if (v11 == 6)
      {
        v12 = 0x74634170756F7267;
        v13 = 0xED00007974697669;
      }

      else
      {
        v12 = 0x746963696C707865;
        v13 = 0xEF746E65746E6F43;
      }

      v18 = 0xD000000000000011;
      if (v36 != 9)
      {
        v18 = 0x6C62616E45696C6DLL;
      }

      v19 = 0xEA00000000006465;
      if (v36 == 9)
      {
        v19 = 0x80000001004E95D0;
      }

      if (v36 == 8)
      {
        v18 = 0xD000000000000013;
        v19 = 0x80000001004E95B0;
      }

      v20 = 0x746963696C707865;
      if (v36 == 6)
      {
        v20 = 0x74634170756F7267;
      }

      v21 = 0xEF746E65746E6F43;
      if (v36 == 6)
      {
        v21 = 0xED00007974697669;
      }

      if (v36 == 5)
      {
        v20 = 0x73656E757469;
        v21 = 0xE600000000000000;
      }

      if (v36 <= 7u)
      {
        v18 = v20;
        v19 = v21;
      }

      if (v36 == 3)
      {
        v22 = 0x6C6169636F73;
      }

      else
      {
        v22 = 0x6F69646172;
      }

      if (v36 == 3)
      {
        v23 = 0xE600000000000000;
      }

      else
      {
        v23 = 0xE500000000000000;
      }

      if (v36 == 2)
      {
        v22 = 0xD000000000000013;
      }

      v24 = v10;
      if (v36 == 2)
      {
        v23 = v10;
      }

      if (v36)
      {
        v25 = 0x646956636973756DLL;
      }

      else
      {
        v25 = 0x636973756DLL;
      }

      v26 = v9;
      if (!v36)
      {
        v9 = 0xE500000000000000;
      }

      if (v36 <= 1u)
      {
        v22 = v25;
        v23 = v9;
      }

      v27 = v36 <= 4u ? v22 : v18;
      v28 = v36 <= 4u ? v23 : v19;
      if (v12 == v27 && v13 == v28)
      {
        goto LABEL_87;
      }

      v29 = sub_1004DF08C();

      if (v29)
      {
        goto LABEL_88;
      }

      a2 = (a2 + 1) & v35;
      v9 = v26;
      v10 = v24;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_84:
  v30 = *v34;
  *(*v34 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v30 + 48) + a2) = v36;
  v31 = *(v30 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (!v32)
  {
    *(v30 + 16) = v33;
    return result;
  }

  __break(1u);
LABEL_87:

LABEL_88:
  result = sub_1004DF15C();
  __break(1u);
  return result;
}

uint64_t sub_1001C1358(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1004DC7EC();
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
    sub_1001BF454();
  }

  else
  {
    if (v11 > v10)
    {
      sub_1001BCA00();
      goto LABEL_12;
    }

    sub_1001BD9E0();
  }

  v12 = *v3;
  sub_1001C6298(&qword_100637BF8, &type metadata accessor for AudioVariant);
  v13 = sub_1004DD2AC();
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
      sub_1001C6298(&qword_100637C00, &type metadata accessor for AudioVariant);
      v21 = sub_1004DD35C();
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
  result = sub_1004DF15C();
  __break(1u);
  return result;
}

uint64_t sub_1001C15FC(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_1001BF7B0();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1001BCC38();
      goto LABEL_16;
    }

    sub_1001BDCFC();
  }

  v9 = *v3;
  sub_1004DD43C();
  sub_1004DF26C();
  sub_1004DD55C();
  v10 = sub_1004DF2BC();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    _s3__C4NameVMa_0(0);
    do
    {
      v13 = sub_1004DD43C();
      v15 = v14;
      if (v13 == sub_1004DD43C() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_1004DF08C();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_1004DF15C();
  __break(1u);
  return result;
}

Swift::Int sub_1001C17E4(Swift::Int result, unint64_t a2, char a3)
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
    sub_1001BFA2C();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1001BCD88();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1001BDF50();
  }

  v8 = *v3;
  sub_1004DF26C();
  sub_1004DF27C(v4 & 1);
  result = sub_1004DF2BC();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != (v4 & 1))
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
  *(*(v11 + 48) + a2) = v4 & 1;
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
  result = sub_1004DF15C();
  __break(1u);
  return result;
}

uint64_t sub_1001C1938(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1001BFC7C();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1001BCEC8();
      goto LABEL_12;
    }

    sub_1001BE170();
  }

  v8 = *v3;
  sub_1004D9ABC();
  sub_1001C6298(&qword_100635038, &type metadata accessor for AnyCancellable);
  result = sub_1004DD2AC();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_1001C6298(&qword_100635040, &type metadata accessor for AnyCancellable);
    do
    {
      result = sub_1004DD35C();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
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
  result = sub_1004DF15C();
  __break(1u);
  return result;
}

Swift::Int sub_1001C1B20(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1001BFF10();
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_1001BD02C(&qword_100635018);
        goto LABEL_40;
      }

      sub_1001BE3E8();
    }

    v8 = *v3;
    sub_1004DF26C();
    Library.Menu.Identifier.rawValue.getter(v5);
    sub_1004DD55C();

    result = sub_1004DF2BC();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v10 = ~v9;
      while (1)
      {
        v11 = 0xD000000000000029;
        v12 = "orites";
        switch(*(*(v8 + 48) + a2))
        {
          case 1:
            v11 = 0xD000000000000025;
            v12 = "LibraryView.RecentlyAdded";
            break;
          case 2:
            v11 = 0xD000000000000023;
            v12 = "LibraryView.Playlists";
            break;
          case 3:
            v11 = 0xD000000000000022;
            v12 = "LibraryView.Artists";
            break;
          case 4:
            v11 = 0xD000000000000021;
            v12 = "LibraryView.Albums";
            break;
          case 5:
            v11 = 0xD000000000000026;
            v12 = "LibraryView.Songs";
            break;
          case 6:
            v11 = 0xD000000000000027;
            v12 = "LibraryView.MadeForYou";
            break;
          case 7:
            v11 = 0xD000000000000022;
            v12 = "LibraryView.MusicVideos";
            break;
          case 8:
            v11 = 0xD000000000000028;
            v12 = "LibraryView.Genres";
            break;
          case 9:
            v11 = 0xD000000000000025;
            v12 = "LibraryView.Compilations";
            break;
          case 0xA:
            v11 = 0xD000000000000021;
            v12 = "LibraryView.Composers";
            break;
          case 0xB:
            v11 = 0xD000000000000026;
            v12 = "LibraryView.Shows";
            break;
          case 0xC:
            v11 = 0xD000000000000027;
            v12 = "LibraryView.Downloaded";
            break;
          default:
            break;
        }

        v13 = v12 | 0x8000000000000000;
        v14 = 0xD000000000000029;
        v15 = "orites";
        switch(v5)
        {
          case 1:
            v14 = 0xD000000000000025;
            v15 = "LibraryView.RecentlyAdded";
            break;
          case 2:
            v14 = 0xD000000000000023;
            v15 = "LibraryView.Playlists";
            break;
          case 3:
            v14 = 0xD000000000000022;
            v15 = "LibraryView.Artists";
            break;
          case 4:
            v14 = 0xD000000000000021;
            v15 = "LibraryView.Albums";
            break;
          case 5:
            v14 = 0xD000000000000026;
            v15 = "LibraryView.Songs";
            break;
          case 6:
            v14 = 0xD000000000000027;
            v15 = "LibraryView.MadeForYou";
            break;
          case 7:
            v14 = 0xD000000000000022;
            v15 = "LibraryView.MusicVideos";
            break;
          case 8:
            v14 = 0xD000000000000028;
            v15 = "LibraryView.Genres";
            break;
          case 9:
            v14 = 0xD000000000000025;
            v15 = "LibraryView.Compilations";
            break;
          case 10:
            v14 = 0xD000000000000021;
            v15 = "LibraryView.Composers";
            break;
          case 11:
            v14 = 0xD000000000000026;
            v15 = "LibraryView.Shows";
            break;
          case 12:
            v14 = 0xD000000000000027;
            v15 = "LibraryView.Downloaded";
            break;
          default:
            break;
        }

        if (v11 == v14 && v13 == (v15 | 0x8000000000000000))
        {
          break;
        }

        v16 = sub_1004DF08C();

        if (v16)
        {
          goto LABEL_44;
        }

        a2 = (a2 + 1) & v10;
        if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

LABEL_43:

LABEL_44:
      sub_1004DF15C();
      __break(1u);
      JUMPOUT(0x1001C1F24);
    }
  }

LABEL_40:
  v17 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v5;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
    goto LABEL_43;
  }

  *(v17 + 16) = v20;
  return result;
}

Swift::Int sub_1001C1F8C(Swift::Int result, unint64_t a2, char a3)
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
    sub_1001C031C();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1001BD02C(&qword_100634FF8);
      a2 = v7;
      goto LABEL_12;
    }

    sub_1001BE7C4();
  }

  v8 = *v3;
  sub_1004DF26C();
  sub_1004DF27C(v4);
  result = sub_1004DF2BC();
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
  result = sub_1004DF15C();
  __break(1u);
  return result;
}

uint64_t sub_1001C20EC(uint64_t result, unint64_t a2, char a3)
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
    sub_1001C056C();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1001BD15C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1001BE9E4();
  }

  v8 = *v3;
  result = sub_1004DF25C();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
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
  *(*(v11 + 48) + 8 * a2) = v4;
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
  result = sub_1004DF15C();
  __break(1u);
  return result;
}

Swift::Int sub_1001C220C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_1001C0790();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1001BD29C();
      goto LABEL_16;
    }

    sub_1001BEBD4();
  }

  v10 = *v4;
  sub_1004DF26C();
  sub_1004DD55C();
  result = sub_1004DF2BC();
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

      result = sub_1004DF08C();
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
  result = sub_1004DF15C();
  __break(1u);
  return result;
}
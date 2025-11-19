Swift::Int Library.Context.hashValue.getter()
{
  Hasher.init(_seed:)();
  Library.Context.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1009F6A14()
{
  Hasher.init(_seed:)();
  Library.Context.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1009F6A50()
{
  v0 = type metadata accessor for Library.Context();
  sub_100006080(v0, qword_1011AB758);
  v1 = sub_1000060E4(v0, qword_1011AB758);
  type metadata accessor for MusicLibrary();
  *v1 = static MusicLibrary.shared.getter();
  v2 = v0[5];
  v3 = type metadata accessor for Album();
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  v4 = v0[6];
  v5 = type metadata accessor for Artist();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = v0[7];
  v7 = type metadata accessor for Composer();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  v8 = v0[8];
  v9 = type metadata accessor for Genre();
  (*(*(v9 - 8) + 56))(&v1[v8], 1, 1, v9);
  v10 = v0[9];
  v11 = type metadata accessor for Playlist();
  (*(*(v11 - 8) + 56))(&v1[v10], 1, 1, v11);
  v12 = v0[10];
  v13 = type metadata accessor for TVShow();
  (*(*(v13 - 8) + 56))(&v1[v12], 1, 1, v13);
  v14 = v0[11];
  v15 = type metadata accessor for TVSeason();
  result = (*(*(v15 - 8) + 56))(&v1[v14], 1, 1, v15);
  v1[v0[12]] = 0;
  v1[v0[13]] = 2;
  v1[v0[14]] = 3;
  v17 = &v1[v0[15]];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v1[v0[16]] = _swiftEmptyArrayStorage;
  v1[v0[17]] = 2;
  return result;
}

uint64_t sub_1009F6CD4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011A69D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Library.Context();
  v3 = sub_1000060E4(v2, qword_1011AB758);

  return sub_1009F8B7C(v3, a1);
}

uint64_t sub_1009F6D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1009F9260(&qword_1011AB7E8, type metadata accessor for Library.Context);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.libraryContext.getter()
{
  sub_1009F8BE0();

  return EnvironmentValues.subscript.getter();
}

uint64_t EnvironmentValues.libraryContext.setter(uint64_t a1)
{
  v2 = type metadata accessor for Library.Context();
  __chkstk_darwin(v2 - 8);
  sub_1009F8B7C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1009F8BE0();
  EnvironmentValues.subscript.setter();
  return sub_1009F8C34(a1);
}

void (*EnvironmentValues.libraryContext.modify(void *a1))(uint64_t **a1, char a2)
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
  *v3 = v1;
  v5 = *(*(type metadata accessor for Library.Context() - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v4[2] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[3] = v6;
  v4[4] = sub_1009F8BE0();
  EnvironmentValues.subscript.getter();
  return sub_1009F6FD4;
}

void sub_1009F6FD4(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_1009F8B7C((*a1)[3], (*a1)[2]);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_1009F8B7C(v3[2], v3[1]);
    EnvironmentValues.subscript.setter();
    sub_1009F8C34(v6);
  }

  else
  {
    EnvironmentValues.subscript.setter();
  }

  sub_1009F8C34(v4);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

uint64_t View.libraryContext(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t sub_1009F7118(uint64_t a1)
{
  v2 = type metadata accessor for Library.Context();
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_1009F8B7C(a1, &v9 - v6);
  sub_1009F8B7C(v7, v4);
  sub_1009F8BE0();
  EnvironmentValues.subscript.setter();
  return sub_1009F8C34(v7);
}

uint64_t MusicLibraryRequest.apply(_:)()
{

  MusicLibraryRequest.library.setter();
  type metadata accessor for Library.Context();

  return MusicLibraryRequest.includeOnlyDownloadedContent.setter();
}

uint64_t _s9MusicCore7LibraryO7ContextV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v152 = type metadata accessor for TVSeason();
  v153 = *(v152 - 8);
  __chkstk_darwin(v152);
  v147 = &v144 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&qword_1011A9258);
  __chkstk_darwin(v5 - 8);
  v148 = &v144 - v6;
  v150 = sub_10010FC20(&qword_1011AB918);
  __chkstk_darwin(v150);
  v151 = &v144 - v7;
  v158 = type metadata accessor for TVShow();
  v159 = *(v158 - 8);
  __chkstk_darwin(v158);
  v149 = &v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_1011A9288);
  __chkstk_darwin(v9 - 8);
  v156 = &v144 - v10;
  v155 = sub_10010FC20(&qword_1011AB920);
  __chkstk_darwin(v155);
  v157 = &v144 - v11;
  v12 = type metadata accessor for Playlist();
  v13 = *(v12 - 8);
  v164 = v12;
  v165 = v13;
  __chkstk_darwin(v12);
  v154 = &v144 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10010FC20(&qword_1011AA6C0);
  __chkstk_darwin(v15 - 8);
  v162 = &v144 - v16;
  v161 = sub_10010FC20(&qword_1011AB928);
  __chkstk_darwin(v161);
  v163 = &v144 - v17;
  v169 = type metadata accessor for Genre();
  v171 = *(v169 - 8);
  __chkstk_darwin(v169);
  v160 = &v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10010FC20(&qword_1011AB780);
  __chkstk_darwin(v19 - 8);
  v177 = &v144 - v20;
  v167 = sub_10010FC20(&qword_1011AB930);
  __chkstk_darwin(v167);
  v168 = &v144 - v21;
  v22 = type metadata accessor for Composer();
  v174 = *(v22 - 8);
  v175 = v22;
  __chkstk_darwin(v22);
  v166 = &v144 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10010FC20(&qword_1011AB778);
  __chkstk_darwin(v24 - 8);
  v170 = &v144 - v25;
  v173 = sub_10010FC20(&qword_1011AB938);
  __chkstk_darwin(v173);
  v180 = &v144 - v26;
  v179 = type metadata accessor for Artist();
  v181 = *(v179 - 8);
  __chkstk_darwin(v179);
  v172 = &v144 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10010FC20(&qword_1011A9130);
  __chkstk_darwin(v28 - 8);
  v176 = &v144 - v29;
  v30 = sub_10010FC20(&qword_1011AB940);
  __chkstk_darwin(v30);
  v178 = &v144 - v31;
  v32 = type metadata accessor for Album();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = &v144 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10010FC20(&qword_1011A8858);
  __chkstk_darwin(v36 - 8);
  v38 = &v144 - v37;
  v39 = sub_10010FC20(&qword_1011AB948);
  __chkstk_darwin(v39);
  v41 = &v144 - v40;
  type metadata accessor for MusicLibrary();
  if ((static MusicLibrary.== infix(_:_:)() & 1) == 0)
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
  sub_1000089F8(v43 + v44, v41, &qword_1011A8858);
  sub_1000089F8(v182 + v44, &v41[v45], &qword_1011A8858);
  v46 = *(v33 + 48);
  if (v46(v41, 1, v32) == 1)
  {
    if (v46(&v41[v45], 1, v32) == 1)
    {
      sub_1000095E8(v41, &qword_1011A8858);
      goto LABEL_9;
    }

LABEL_7:
    v47 = &qword_1011AB948;
    v48 = v41;
LABEL_44:
    sub_1000095E8(v48, v47);
    return 0;
  }

  sub_1000089F8(v41, v38, &qword_1011A8858);
  if (v46(&v41[v45], 1, v32) == 1)
  {
    (*(v33 + 8))(v38, v32);
    goto LABEL_7;
  }

  (*(v33 + 32))(v35, &v41[v45], v32);
  sub_1009F9260(&qword_1011AB978, &type metadata accessor for Album);
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
  v50 = *(v33 + 8);
  v50(v35, v32);
  v50(v38, v32);
  sub_1000095E8(v41, &qword_1011A8858);
  if ((v49 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v51 = v145;
  v52 = v145[6];
  v53 = *(v30 + 48);
  v54 = v178;
  sub_1000089F8(v146 + v52, v178, &qword_1011A9130);
  v55 = v182 + v52;
  v56 = v182;
  sub_1000089F8(v55, v54 + v53, &qword_1011A9130);
  v57 = *(v181 + 48);
  v58 = v179;
  if (v57(v54, 1, v179) == 1)
  {
    v59 = v57(v54 + v53, 1, v58);
    v60 = v177;
    v61 = v180;
    if (v59 == 1)
    {
      sub_1000095E8(v54, &qword_1011A9130);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v62 = v176;
  sub_1000089F8(v54, v176, &qword_1011A9130);
  v63 = v57(v54 + v53, 1, v58);
  v61 = v180;
  if (v63 == 1)
  {
    (*(v181 + 8))(v62, v58);
LABEL_14:
    v47 = &qword_1011AB940;
    v48 = v54;
    goto LABEL_44;
  }

  v64 = v181;
  v65 = v54 + v53;
  v66 = v51;
  v67 = v54;
  v68 = v172;
  (*(v181 + 32))(v172, v65, v58);
  sub_1009F9260(&qword_1011AB970, &type metadata accessor for Artist);
  v69 = dispatch thunk of static Equatable.== infix(_:_:)();
  v70 = *(v64 + 8);
  v70(v68, v58);
  v70(v62, v58);
  v71 = v67;
  v51 = v66;
  v60 = v177;
  sub_1000095E8(v71, &qword_1011A9130);
  if ((v69 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v72 = v51[7];
  v73 = v56;
  v74 = *(v173 + 48);
  sub_1000089F8(v146 + v72, v61, &qword_1011AB778);
  sub_1000089F8(v73 + v72, v61 + v74, &qword_1011AB778);
  v76 = v174;
  v75 = v175;
  v77 = *(v174 + 48);
  if (v77(v61, 1, v175) == 1)
  {
    if (v77(v61 + v74, 1, v75) == 1)
    {
      sub_1000095E8(v61, &qword_1011AB778);
      goto LABEL_23;
    }

LABEL_21:
    v47 = &qword_1011AB938;
LABEL_43:
    v48 = v61;
    goto LABEL_44;
  }

  v78 = v170;
  sub_1000089F8(v61, v170, &qword_1011AB778);
  if (v77(v61 + v74, 1, v75) == 1)
  {
    (*(v76 + 8))(v78, v75);
    goto LABEL_21;
  }

  v79 = v61 + v74;
  v80 = v166;
  (*(v76 + 32))(v166, v79, v75);
  sub_1009F9260(&qword_1011AB968, &type metadata accessor for Composer);
  v81 = dispatch thunk of static Equatable.== infix(_:_:)();
  v82 = *(v76 + 8);
  v82(v80, v75);
  v82(v78, v75);
  sub_1000095E8(v61, &qword_1011AB778);
  if ((v81 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  v83 = v51[8];
  v61 = v168;
  v84 = *(v167 + 48);
  sub_1000089F8(v146 + v83, v168, &qword_1011AB780);
  sub_1000089F8(v182 + v83, v61 + v84, &qword_1011AB780);
  v85 = *(v171 + 48);
  v86 = v169;
  if (v85(v61, 1, v169) == 1)
  {
    if (v85(v61 + v84, 1, v86) == 1)
    {
      sub_1000095E8(v61, &qword_1011AB780);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  sub_1000089F8(v61, v60, &qword_1011AB780);
  if (v85(v61 + v84, 1, v86) == 1)
  {
    (*(v171 + 8))(v60, v86);
LABEL_28:
    v47 = &qword_1011AB930;
    goto LABEL_43;
  }

  v87 = v60;
  v88 = v171;
  v89 = v61 + v84;
  v90 = v160;
  (*(v171 + 32))(v160, v89, v86);
  sub_1009F9260(&qword_1011AB960, &type metadata accessor for Genre);
  v91 = dispatch thunk of static Equatable.== infix(_:_:)();
  v92 = *(v88 + 8);
  v92(v90, v86);
  v92(v87, v86);
  sub_1000095E8(v61, &qword_1011AB780);
  if ((v91 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  v93 = v51[9];
  v94 = *(v161 + 48);
  v61 = v163;
  sub_1000089F8(v146 + v93, v163, &qword_1011AA6C0);
  sub_1000089F8(v182 + v93, v61 + v94, &qword_1011AA6C0);
  v95 = v164;
  v96 = *(v165 + 48);
  if (v96(v61, 1, v164) == 1)
  {
    if (v96(v61 + v94, 1, v95) == 1)
    {
      sub_1000095E8(v61, &qword_1011AA6C0);
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  sub_1000089F8(v61, v162, &qword_1011AA6C0);
  if (v96(v61 + v94, 1, v95) == 1)
  {
    (*(v165 + 8))(v162, v95);
LABEL_35:
    v47 = &qword_1011AB928;
    goto LABEL_43;
  }

  v97 = v165;
  v98 = v61 + v94;
  v99 = v154;
  (*(v165 + 32))(v154, v98, v95);
  sub_1009F9260(&qword_1011AAD70, &type metadata accessor for Playlist);
  v100 = v162;
  v101 = dispatch thunk of static Equatable.== infix(_:_:)();
  v102 = *(v97 + 8);
  v102(v99, v95);
  v102(v100, v95);
  sub_1000095E8(v61, &qword_1011AA6C0);
  if ((v101 & 1) == 0)
  {
    return 0;
  }

LABEL_37:
  v103 = v51[10];
  v104 = *(v155 + 48);
  v61 = v157;
  sub_1000089F8(v146 + v103, v157, &qword_1011A9288);
  sub_1000089F8(v182 + v103, v61 + v104, &qword_1011A9288);
  v105 = *(v159 + 48);
  v106 = v158;
  if (v105(v61, 1, v158) == 1)
  {
    if (v105(v61 + v104, 1, v106) == 1)
    {
      sub_1000095E8(v61, &qword_1011A9288);
      goto LABEL_48;
    }

    goto LABEL_42;
  }

  sub_1000089F8(v61, v156, &qword_1011A9288);
  if (v105(v61 + v104, 1, v106) == 1)
  {
    (*(v159 + 8))(v156, v106);
LABEL_42:
    v47 = &qword_1011AB920;
    goto LABEL_43;
  }

  v108 = v159;
  v109 = v61 + v104;
  v110 = v149;
  (*(v159 + 32))(v149, v109, v106);
  sub_1009F9260(&qword_1011AB958, &type metadata accessor for TVShow);
  v111 = v156;
  v112 = dispatch thunk of static Equatable.== infix(_:_:)();
  v113 = *(v108 + 8);
  v113(v110, v106);
  v113(v111, v106);
  sub_1000095E8(v61, &qword_1011A9288);
  if ((v112 & 1) == 0)
  {
    return 0;
  }

LABEL_48:
  v114 = v51[11];
  v115 = *(v150 + 48);
  v116 = v151;
  sub_1000089F8(v146 + v114, v151, &qword_1011A9258);
  sub_1000089F8(v182 + v114, v116 + v115, &qword_1011A9258);
  v117 = *(v153 + 48);
  v118 = v152;
  if (v117(v116, 1, v152) == 1)
  {
    if (v117(v116 + v115, 1, v118) == 1)
    {
      sub_1000095E8(v116, &qword_1011A9258);
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  v119 = v148;
  sub_1000089F8(v116, v148, &qword_1011A9258);
  if (v117(v116 + v115, 1, v118) == 1)
  {
    (*(v153 + 8))(v119, v118);
LABEL_53:
    v47 = &qword_1011AB918;
    v48 = v116;
    goto LABEL_44;
  }

  v120 = v153;
  v121 = v116 + v115;
  v122 = v147;
  (*(v153 + 32))(v147, v121, v118);
  sub_1009F9260(&qword_1011AB950, &type metadata accessor for TVSeason);
  v123 = dispatch thunk of static Equatable.== infix(_:_:)();
  v124 = *(v120 + 8);
  v124(v122, v118);
  v124(v119, v118);
  sub_1000095E8(v116, &qword_1011A9258);
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
        v135 = _stringCompareWithSmolCheck(_:_:expecting:)();

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
      if (v140 && (*v137 == *v139 && v138 == v140 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
LABEL_87:
        if (sub_10095CB80(*(v146 + v145[16]), *(v182 + v145[16])))
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

unint64_t _s9MusicCore7LibraryO19ContentFilterOptionO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C7BD0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for Library.Context()
{
  result = qword_1011AB848;
  if (!qword_1011AB848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1009F8B7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Library.Context();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1009F8BE0()
{
  result = qword_1011AB7D0;
  if (!qword_1011AB7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB7D0);
  }

  return result;
}

uint64_t sub_1009F8C34(uint64_t a1)
{
  v2 = type metadata accessor for Library.Context();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1009F8C94()
{
  result = qword_1011AB7D8;
  if (!qword_1011AB7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB7D8);
  }

  return result;
}

unint64_t sub_1009F8CEC()
{
  result = qword_1011AB7E0;
  if (!qword_1011AB7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB7E0);
  }

  return result;
}

void sub_1009F8DD0()
{
  type metadata accessor for MusicLibrary();
  if (v0 <= 0x3F)
  {
    sub_1009F9124(319, &qword_1011AB858, &type metadata accessor for Album, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1009F9124(319, &qword_1011AB860, &type metadata accessor for Artist, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1009F9124(319, &qword_1011AB868, &type metadata accessor for Composer, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1009F9124(319, &qword_1011AB870, &type metadata accessor for Genre, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_1009F9124(319, &qword_1011AB878, &type metadata accessor for Playlist, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_1009F9124(319, &qword_1011AB880, &type metadata accessor for TVShow, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                sub_1009F9124(319, &qword_1011AB888, &type metadata accessor for TVSeason, &type metadata accessor for Optional);
                if (v7 <= 0x3F)
                {
                  sub_1000308A0(319, &qword_1011AB890);
                  if (v8 <= 0x3F)
                  {
                    sub_1000308A0(319, &qword_1011AB898);
                    if (v9 <= 0x3F)
                    {
                      sub_1000308A0(319, &qword_1011AEEF0);
                      if (v10 <= 0x3F)
                      {
                        sub_1009F9124(319, &unk_1011AB8A0, &type metadata accessor for Playlist.Variant, &type metadata accessor for Array);
                        if (v11 <= 0x3F)
                        {
                          sub_1000308A0(319, &unk_1011A99A0);
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

void sub_1009F9124(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1009F9198()
{
  result = qword_1011AB908;
  if (!qword_1011AB908)
  {
    sub_1001109D0(&qword_1011AB900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB908);
  }

  return result;
}

unint64_t sub_1009F920C()
{
  result = qword_1011AB910;
  if (!qword_1011AB910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB910);
  }

  return result;
}

uint64_t sub_1009F9260(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1009F92AC(uint64_t a1, char **a2)
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
      result = sub_1009FE68C(&v13, a2);
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

BOOL sub_1009F9398(char a1, uint64_t a2)
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

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v4;
  }

  while ((v12 & 1) == 0);
  return v5 != 0;
}

BOOL sub_1009F945C(char a1, uint64_t a2)
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
    v9 = "nt";
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
    v12 = "nt";
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

    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v4;
  }

  while ((v5 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_1009F9754(uint64_t result, uint64_t a2)
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
  v23 = result + 56;
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
  v27 = a2 + 56;
  v24 = v8;
  v25 = result;
  if (v7)
  {
    do
    {
      v9 = __clz(__rbit64(v7));
      v26 = (v7 - 1) & v7;
LABEL_13:
      v12 = *(*(v3 + 48) + (v9 | (v4 << 6)));
      Hasher.init(_seed:)();
      Library.Menu.Identifier.rawValue.getter(v12);
      String.hash(into:)();

      v13 = Hasher._finalize()();
      v14 = -1 << *(a2 + 32);
      v15 = v13 & ~v14;
      if (((*(v27 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }

      v16 = ~v14;
      while (1)
      {
        v17 = 0xD000000000000029;
        v18 = "nt";
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
        v21 = "nt";
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

        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v22)
        {
          goto LABEL_47;
        }

        v15 = (v15 + 1) & v16;
        if (((*(v27 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          return 0;
        }
      }

LABEL_47:
      v8 = v24;
      v3 = v25;
      v7 = v26;
    }

    while (v26);
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v23 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
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
    sub_100993D24(a2);
  }

  else
  {
    sub_100A006DC(&v4, a2);
  }

  return a1 & 1;
}

uint64_t Library.Menu.move(_:to:)(char a1, unint64_t a2)
{
  v4 = a1;
  v5 = *v2;
  v6 = sub_100999FF4(a1, *v2);
  if (v7)
  {
    v9 = v2[2];
    v8 = v2[3];
    v10 = v2[4];
LABEL_5:
    v14 = v2[5];
    sub_100A00CC0();
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
  result = sub_100999FF4(v4, v10);
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
  v18 = sub_100999FF4(v17, v10);
  if (v19)
  {
    v9 = v2[2];
    v8 = v2[3];
    v4 = v17 | 0x80;
    goto LABEL_5;
  }

  v20 = v18;
  result = sub_1008B4BC0(v11);
  if (*(*v2 + 16) < a2)
  {
    goto LABEL_16;
  }

  sub_1008BBFD0(a2, a2, result);
  result = sub_1008B4BC0(v16);
  if (*(v2[4] + 16) < v20)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((v20 & 0x8000000000000000) == 0)
  {
    return sub_1008BBFD0(v20, v20, result);
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
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v9[2] = a3;
  sub_100A00D14();
  v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v6 = v5;

  v9[3] = &type metadata for Data;
  v9[0] = v4;
  v9[1] = v6;
  v8[0] = 0x4D7972617262694CLL;
  v8[1] = 0xEB00000000756E65;
  sub_10002BC44(v4, v6);
  sub_10000988C();
  NSUserDefaults.subscript.setter(v9, v8, &type metadata for String);
  return sub_10002C064(v4, v6);
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
      sub_100009F78(0, &qword_1011AAEA0);
      v4 = static NSObject.== infix(_:_:)();
      return v4 & 1;
    }

    return 0;
  }

  if ((a4 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MusicLibrary();
  v4 = static MusicLibrary.== infix(_:_:)();
  return v4 & 1;
}

uint64_t sub_1009FA3A4(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      sub_100009F78(0, &qword_1011AAEA0);
      v2 = static NSObject.== infix(_:_:)();
      return v2 & 1;
    }

    return 0;
  }

  if ((*(a2 + 8) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MusicLibrary();
  v2 = static MusicLibrary.== infix(_:_:)();
  return v2 & 1;
}

void *Library.Menu.Request.librarySource.getter()
{
  v1 = *v0;
  sub_100A00D68(*v0, *(v0 + 8));
  return v1;
}

void Library.Menu.Request.librarySource.setter(uint64_t a1, char a2)
{
  sub_1003E156C(*v2, *(v2 + 8));
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
  sub_100A00D74(v1);
  return v1;
}

uint64_t Library.Menu.Request.editingRevision.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1005BF344(v4[6]);
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
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  if (v4[1])
  {
    v15 = MusicLibrary.mediaLibrary.getter();
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
  aBlock[4] = sub_100A00DD4;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010D6C38;
  v51 = _Block_copy(aBlock);
  v63 = _swiftEmptyArrayStorage;
  sub_100A00D74(v26);
  sub_1000297A0(&qword_1011AD950, &type metadata accessor for DispatchWorkItemFlags);

  v61 = v23;
  v40 = v35;
  v41 = v37;

  sub_10010FC20(&unk_1011AB610);
  sub_100020674(&qword_1011AD960, &unk_1011AB610);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v42 = type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v43 = DispatchWorkItem.init(flags:block:)();

  sub_100009F78(0, &qword_1011A9F80);
  v45 = v57;
  v44 = v58;
  v46 = v59;
  (*(v58 + 104))(v57, enum case for DispatchQoS.QoSClass.userInteractive(_:), v59);
  v47 = static OS_dispatch_queue.global(qos:)();
  (*(v44 + 8))(v45, v46);
  OS_dispatch_queue.async(execute:)();

  v48 = v60;
  v60[3] = v42;
  v48[4] = &protocol witness table for DispatchWorkItem;

  *v48 = v43;
}

uint64_t NSUserDefaults.libraryMenuRevision.getter()
{
  sub_1009FF0AC();
  v8 = 0x4D7972617262694CLL;
  v9 = 0xEB00000000756E65;
  sub_10000988C();
  NSUserDefaults.subscript.getter(&v8, &v10);
  if (v11)
  {
    if (swift_dynamicCast())
    {
      v0 = v8;
      v1 = v9;
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      sub_100A00E18();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      sub_10002C064(v0, v1);

      return v10;
    }
  }

  else
  {
    sub_1000095E8(&v10, &qword_1011ABB20);
  }

  if (qword_1011A69E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, static Logger.libraryMenu);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "No edits found — Returning stock menu revision", v5, 2u);
  }

  if (qword_1011A69E0 != -1)
  {
    swift_once();
  }

  v6 = static Library.Menu.Revision.Version.current;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  return v6;
}

uint64_t sub_1009FAF00(uint64_t *a1, void *a2, void *a3, void *a4, char *a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, void (*a11)(__int128 *, uint64_t, uint64_t))
{
  if (qword_1011A69E0 != -1)
  {
    goto LABEL_150;
  }

  while (1)
  {
    v15 = static Library.Menu.Revision.Version.current;
    v14 = *algn_101219C18;
    swift_beginAccess();
    v16 = a1[3];
    v111 = a7;
    if (sub_10095CBC8(a1[2], v15) & 1) != 0 && (sub_1009F9754(v16, v14))
    {
      break;
    }

    sub_1009FD764(v15, v14);
    swift_endAccess();
    swift_beginAccess();
    v17 = a1[2];
    v18 = a1[3];
    v19 = a1[4];

    NSUserDefaults.libraryMenuRevision.setter(v17, v18, v19);
    v108 = a1;
    if (a3)
    {
      goto LABEL_9;
    }

LABEL_6:
    a3 = a4;
    v20 = a4[2];
    if (!v20)
    {
      v112 = 0;
      goto LABEL_68;
    }

    v21 = 0;
    v112 = 0;
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
            v33 = v112 | 0xC0;
          }

          else
          {
            v33 = v112 | 0x41;
          }

LABEL_38:
          v112 = v33;
          if (v21 == v20)
          {
            goto LABEL_68;
          }

          goto LABEL_39;
        }

        switch(v32)
        {
          case 2u:
            v33 = v112 | 2;
            goto LABEL_38;
          case 3u:
            v33 = v112 | 1;
            goto LABEL_38;
          case 4u:
            v33 = v112 | 0x80;
            goto LABEL_38;
        }
      }

      else if (*(v22 + v31) > 7u)
      {
        switch(v32)
        {
          case 8u:
            v33 = v112 | 4;
            goto LABEL_38;
          case 9u:
            v33 = v112 | 8;
            goto LABEL_38;
          case 0xAu:
            v33 = v112 | 0x300;
            goto LABEL_38;
        }
      }

      else
      {
        switch(v32)
        {
          case 5u:
            v33 = v112 | 0x400;
            goto LABEL_38;
          case 6u:
            v33 = v112 | 0x20;
            goto LABEL_38;
          case 7u:
            v33 = v112 | 0x10;
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
  v108 = a1;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_9:
  v101 = a3;
  MPMediaPickerConfiguration.musicTypeIdentifiers.getter();
  a7 = 0;
  v24 = *(v23 + 16);
  a1 = 0x8000000100E5EE40;
  v112 = 0;
  v106 = v23 + 40;
LABEL_12:
  v26 = (v106 + 16 * a7);
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
    v29 = v28 == 0xD000000000000014 && 0x8000000100E5EE60 == v27;
    if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v25 = 1247;
LABEL_11:
      v112 |= v25;
      goto LABEL_12;
    }

    if (v28 == 0xD00000000000001BLL && 0x8000000100E5EE40 == v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v25 = 32;
      goto LABEL_11;
    }

    if (v28 == 0xD00000000000001ALL && 0x8000000100E600B0 == v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v25 = 256;
      goto LABEL_11;
    }

    if (v28 != 0xD000000000000015 || 0x8000000100E600D0 != v27)
    {
      a3 = (a3 + 1);
      v26 += 2;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        continue;
      }
    }

    v25 = 512;
    goto LABEL_11;
  }

  a7 = v111;
  if ([v101 selectionMode] == 2)
  {

    a1 = v108;
    a3 = a4;
  }

  else
  {
    v30 = [v101 selectionMode];

    v29 = v30 == 3;
    a1 = v108;
    a3 = a4;
    if (!v29)
    {
      goto LABEL_68;
    }
  }

  v112 &= 0xFFFFFFFFFFFFFC5FLL;
LABEL_68:
  v107 = [a5 filterAvailableContentGroups:v112 withOptions:{a6, v99}];
  if (qword_1011A6820 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v125[4] = v121;
  v125[5] = v122;
  v125[6] = v123;
  v125[7] = v124;
  v125[0] = v117;
  v125[1] = v118;
  v125[2] = v119;
  v125[3] = v120;
  LODWORD(a4) = BYTE2(v117);
  if (v123 == 2)
  {
    v102 = 1;
  }

  else
  {
    v102 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v34 = a3[2];

  v113 = a5;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  if (!v34)
  {
    a5 = _swiftEmptyArrayStorage;
    goto LABEL_133;
  }

  v35 = 0;
  a3 += 4;
  LODWORD(v99) = (v107 & 0x300) != 0;
  HIDWORD(v99) = (v107 & 0xC0) != 0;
  a5 = _swiftEmptyArrayStorage;
  while (2)
  {
    a1 = v35;
    while (2)
    {
      if (a1 >= v34)
      {
        __break(1u);
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

      v35 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        goto LABEL_145;
      }

      v36 = *(a1 + a3);
      if (sub_10096A3C8(*(a1 + a3), a7))
      {
        goto LABEL_77;
      }

      if (a8)
      {
        v37 = v108[5];

        v38 = sub_10096A3C8(v36, v37);

        if (v36 != 5)
        {
          goto LABEL_83;
        }

LABEL_88:
        v38 &= v102 & a4;
LABEL_100:
        v50 = (*(a9 + 16) ^ 1) & v38;
        if ((*(a9 + 16) ^ 1) & 1) == 0 && (v38)
        {
          if (v36 > 6)
          {
            if (v36 > 9)
            {
              if ((v36 - 11) >= 2)
              {
                v50 = v99;
              }

              else
              {
                v50 = 1;
              }
            }

            else
            {
              if (v36 == 7)
              {
                v53 = -17;
              }

              else if (v36 == 8)
              {
                v53 = -5;
              }

              else
              {
                v53 = -9;
              }

LABEL_122:
              v50 = (v53 | v107) == -1;
            }
          }

          else if (v36 <= 2)
          {
            v50 = (v107 & 0x41) != 0;
            if (v36)
            {
              v50 = (v107 & 0xC0) != 0;
              if (v36 != 1)
              {
                v53 = -3;
                goto LABEL_122;
              }
            }
          }

          else
          {
            if (v36 <= 4)
            {
              if (v36 == 3)
              {
                v53 = -2;
              }

              else
              {
                v53 = -129;
              }

              goto LABEL_122;
            }

            v50 = (v107 & 0x400) != 0;
            if (v36 != 5)
            {
              v53 = -33;
              goto LABEL_122;
            }
          }
        }
      }

      else
      {
        v38 = 1;
        if (v36 == 5)
        {
          goto LABEL_88;
        }

LABEL_83:
        if (v36 == 12)
        {
          v44 = [objc_opt_self() deviceMediaLibrary];
          if (v44)
          {
            v45 = v44;
            sub_100009F78(0, &qword_1011ABAF0);
            v46 = v113;
            v47 = static NSObject.== infix(_:_:)();
          }

          else
          {
            v47 = 0;
          }

          v48 = [objc_opt_self() sharedManager];
          v49 = [v48 hasActiveDownloads];

          if (v38)
          {
            v38 = v47 & v49;
            goto LABEL_100;
          }

          v50 = 0;
        }

        else
        {
          if (v36 != 11)
          {
            goto LABEL_100;
          }

          v39 = [objc_opt_self() deviceMediaLibrary];
          if (v39)
          {
            v40 = v39;
            sub_100009F78(0, &qword_1011ABAF0);
            v41 = v113;
            v42 = static NSObject.== infix(_:_:)();

            v43 = v42 ^ 1;
          }

          else
          {
            v43 = 1;
          }

          v51 = [objc_opt_self() sharedManager];
          v52 = [v51 hasActiveDownloads];

          v50 = 0;
          if ((v38 & 1) != 0 && (a6 & 2) == 0 && (v43 & 1) == 0)
          {
            v38 = (v107 != 0) | v52;
            goto LABEL_100;
          }
        }
      }

      if (*(a10 + 16) == 1)
      {
        v50 &= v36 != 12;
      }

      a7 = v111;
      if ((v50 & 1) == 0)
      {
LABEL_77:
        a1 = (a1 + 1);
        if (v35 == v34)
        {
          a1 = v108;
          goto LABEL_133;
        }

        continue;
      }

      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a5 = sub_10089CF3C(0, *(a5 + 2) + 1, 1, a5);
    }

    a1 = v108;
    v55 = *(a5 + 2);
    v54 = *(a5 + 3);
    if (v55 >= v54 >> 1)
    {
      a5 = sub_10089CF3C((v54 > 1), v55 + 1, 1, a5);
    }

    *(a5 + 2) = v55 + 1;
    a5[v55 + 32] = v36;
    if (v35 != v34)
    {
      continue;
    }

    break;
  }

LABEL_133:

  swift_beginAccess();
  v57 = a1[2];
  v56 = a1[3];
  v58 = a1[4];
  v59 = a1[5];
  *&v117 = a5;
  *(&v117 + 1) = a2;
  *&v118 = v57;
  *(&v118 + 1) = v56;
  *&v119 = v58;
  *(&v119 + 1) = v59;
  LOBYTE(v120) = 0;
  sub_10010FC20(&unk_1011A9FB0);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_100EBEF50;
  UIScreen.Dimensions.size.getter(COERCE_DOUBLE(4));
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  *(v60 + 56) = &type metadata for UserDefaultsKeyValueTrigger;
  *(v60 + 64) = &protocol witness table for UserDefaultsKeyValueTrigger;
  v69 = swift_allocObject();
  *(v60 + 32) = v69;
  v69[2] = v62;
  v69[3] = v64;
  v69[4] = v66;
  v69[5] = v68;
  v70 = qword_1011A68A0;

  v110 = a2;
  if (v70 != -1)
  {
    swift_once();
  }

  v72 = static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange;
  UIScreen.Dimensions.size.getter(v71);
  *(v60 + 96) = &type metadata for NotificationTrigger;
  *(v60 + 104) = &protocol witness table for NotificationTrigger;
  *(v60 + 72) = v73;
  *(v60 + 80) = v74;
  v75 = qword_1011A6880;
  swift_retain_n();
  v76 = v72;
  if (v75 != -1)
  {
    swift_once();
  }

  v78 = static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange;
  v79 = UIScreen.Dimensions.size.getter(v77);
  *(v60 + 136) = &type metadata for NotificationTrigger;
  *(v60 + 144) = &protocol witness table for NotificationTrigger;
  *(v60 + 112) = v80;
  *(v60 + 120) = v81;
  UIScreen.Dimensions.size.getter(v79);
  *(v60 + 176) = &type metadata for NotificationTrigger;
  *(v60 + 184) = &protocol witness table for NotificationTrigger;
  *(v60 + 152) = v82;
  *(v60 + 160) = v83;
  v84 = v113;
  v85 = v78;
  v86 = MPMediaLibraryDidChangeNotification;
  if ((sub_10096A3C8(12, v111) & 1) == 0)
  {
    if (qword_1011A6918 != -1)
    {
      swift_once();
    }

    v88 = static MusicLibrary.downloadingStateDidChange;
    UIScreen.Dimensions.size.getter(v87);
    v90 = v89;
    v92 = v91;
    v93 = *(v60 + 16);
    v94 = *(v60 + 24);
    v95 = v88;
    if (v93 >= v94 >> 1)
    {
      v60 = sub_10089CF50((v94 > 1), v93 + 1, 1, v60);
    }

    v115 = &type metadata for NotificationTrigger;
    v116 = &protocol witness table for NotificationTrigger;
    *&v114 = v90;
    *(&v114 + 1) = v92;
    *(v60 + 16) = v93 + 1;
    sub_100059A8C(&v114, v60 + 40 * v93 + 32);
  }

  type metadata accessor for BindingRequestResponseInvalidation();
  swift_allocObject();
  v96 = BindingRequestResponseInvalidation.init(triggers:)(v60);
  v97 = sub_1000297A0(&qword_1011ABAF8, type metadata accessor for BindingRequestResponseInvalidation);
  a11(&v117, v96, v97);

  sub_100014984(v125);
}

uint64_t *Library.Menu.Revision.Version.current.unsafeMutableAddressor()
{
  if (qword_1011A69E0 != -1)
  {
    swift_once();
  }

  return &static Library.Menu.Revision.Version.current;
}

uint64_t Logger.libraryMenu.unsafeMutableAddressor()
{
  if (qword_1011A69E8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000060E4(v0, static Logger.libraryMenu);
}

uint64_t Library.Menu.Identifier.contentGroups.getter(unsigned __int8 a1)
{
  if (a1 > 0xAu)
  {
    return 0;
  }

  else
  {
    return qword_100EF5A88[a1];
  }
}

uint64_t sub_1009FBF78@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  Library.Menu.Request.perform(_:_:)(sub_100A08D0C, v6, a3);
}

BOOL sub_1009FC008(_OWORD *a1, __int128 *a2)
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
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
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

BOOL sub_1009FC648(unsigned __int8 *a1, unsigned __int8 *a2)
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
  sub_10000988C();
  v2 = StringProtocol.components<A>(separatedBy:)();

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

uint64_t sub_1009FC868(char *a1, char *a2)
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
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1009FC8F0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Library.Menu.Identifier.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1009FC954()
{
  Library.Menu.Identifier.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int sub_1009FC9A8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Library.Menu.Identifier.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1009FCA08@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore7LibraryO4MenuV10IdentifierO8rawValueAGSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1009FCA38@<X0>(unint64_t *a1@<X8>)
{
  result = Library.Menu.Identifier.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t Library.Menu.Revision.init(from:)(void *a1)
{
  result = sub_100A07BC8(a1);
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
  v9 = sub_10010FC20(&qword_1011AB9A8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  sub_10000954C(a1, a1[3]);
  sub_100A08298();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = a4;
  v20 = 1;
  sub_10010FC20(&qword_1011AB9B8);
  sub_100A08D58(&qword_1011AB9C0, sub_100A082EC);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v5)
  {
    v13 = a2;
    v14 = v16;
    v18 = v17;
    v20 = 0;
    sub_10010FC20(&qword_1011AB9D0);
    sub_100A08340(&qword_1011AB9D8, sub_100A082EC);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = v13;
    v19 = v14;
    v20 = 2;
    sub_100A083B8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1009FCDC0(_BYTE *a1, _BYTE *a2)
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
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1009FCEB4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1009FCF50()
{
  String.hash(into:)();
}

Swift::Int sub_1009FCFD8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1009FD070@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100A08460(*a1);
  *a2 = result;
  return result;
}

void sub_1009FD0A0(uint64_t *a1@<X8>)
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

uint64_t sub_1009FD0F8()
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

unint64_t sub_1009FD14C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100A08460(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1009FD174(uint64_t a1)
{
  v2 = sub_100A08298();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009FD1B0(uint64_t a1)
{
  v2 = sub_100A08298();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Library.Menu.Revision.Version.selected.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1009FD220()
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

uint64_t sub_1009FD264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEB00000000737265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1009FD344(uint64_t a1)
{
  v2 = sub_100A0840C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009FD380(uint64_t a1)
{
  v2 = sub_100A0840C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static Library.Menu.Revision.Version.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_10095CBC8(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return sub_1009F9754(a2, a4);
}

uint64_t Library.Menu.Revision.Version.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10010FC20(&qword_1011AB9E8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_10000954C(a1, a1[3]);
  sub_100A0840C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = a2;
  v13 = 0;
  sub_10010FC20(&qword_1011AB9B8);
  sub_100A08D58(&qword_1011AB9C0, sub_100A082EC);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    sub_10010FC20(&qword_1011AB9D0);
    sub_100A08340(&qword_1011AB9D8, sub_100A082EC);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1009FD64C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100A084AC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1009FD694(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_10095CBC8(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1009F9754(v2, v3);
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

void sub_1009FD764(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v5 = *(v2 + 8);
  if (qword_1011A69E8 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v7 = type metadata accessor for Logger();
    sub_1000060E4(v7, static Logger.libraryMenu);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "╭ ⏩ Begin Migration", v10, 2u);
    }

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

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

      v15 = String.init<A>(describing:)();
      v17 = sub_100010678(v15, v16, &v49);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "╞< %s", v13, 0xCu);
      sub_10000959C(v14);
    }

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v49 = v21;
      *v20 = 136315138;
      v47 = a1;
      v48 = a2;

      v22 = String.init<A>(describing:)();
      v24 = sub_100010678(v22, v23, &v49);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "╞> %s", v20, 0xCu);
      sub_10000959C(v21);
    }

    v5 = v46[2];

    v26 = sub_10099546C(v25);

    v28 = sub_10099546C(v27);

    if (v28[2] <= v26[2] >> 3)
    {
      v47 = v26;

      sub_100A05BBC(v28);
      v6 = v47;
    }

    else
    {

      v6 = sub_100A05CB0(v28, v26);
    }

    if (v26[2] <= v28[2] >> 3)
    {
      v47 = v28;
      sub_100A05BBC(v26);
      v29 = v47;
    }

    else
    {
      v29 = sub_100A05CB0(v26, v28);
    }

    v49 = v5;
    v30 = *(v5 + 16);
    v31 = v26[2];

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
      sub_1009FE0C8(&v47, &v49);
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
  sub_1009F92AC(v6, &v49);

  sub_100A071F4(v29, a1, &v49);

  v35 = *(a1 + 16);
  swift_beginAccess();
  v36 = v49;
  if (v35 == *(v49 + 2))
  {

    v46[2] = v36;
    v37 = v46[3];
    if (*(v6 + 2) <= v37[2] >> 3)
    {

      sub_100A05BBC(v6);

      v38 = v37;
    }

    else
    {

      v38 = sub_100A05CB0(v6, v37);
    }

    v42 = sub_100A07468(v29, a1, a2);

    v43 = sub_1009FEDA0(v42, v38);

    v41 = v46;
    v46[3] = v43;
  }

  else
  {

    v39 = v46[3];
    sub_100A08F2C();
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

  sub_1009FDD80(v41, a1, a2);
}

void sub_1009FDD80(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;

  v3 = qword_1011A69E8;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000060E4(v4, static Logger.libraryMenu);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "╞ ✅ Migration ended with", v7, 2u);
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136446210;
    v12 = Array.description.getter();
    v14 = v13;

    v15 = sub_100010678(v12, v14, &v24);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "╞  - Ordered: %{public}s)", v10, 0xCu);
    sub_10000959C(v11);
  }

  else
  {
  }

  oslog = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136446210;
    sub_1009954E0();
    v19 = Set.description.getter();
    v21 = v20;

    v22 = sub_100010678(v19, v21, &v24);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, oslog, v16, "╞  - Selected: %{public}s)", v17, 0xCu);
    sub_10000959C(v18);
  }

  else
  {
  }
}

uint64_t sub_1009FE0C8(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v4 = *a2;

  v5 = sub_100999FF4(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    do
    {
      v20 = *a2;

      v21 = sub_1009FE394(v3, v20);
      v23 = v22;

      if ((v23 & 1) != 0 || v5 == v21)
      {
        break;
      }

      if (qword_1011A69E8 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_1000060E4(v24, static Logger.libraryMenu);
      v16 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
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
        v15 = sub_100010678(v10, v11, v28);

        *(v26 + 4) = v15;
        v3 = v14;
        a2 = v13;
        *(v26 + 12) = 2048;
        *(v26 + 14) = v12;
        *(v26 + 22) = 2048;
        *(v26 + 24) = v21;
        v16 = log;
        _os_log_impl(&_mh_execute_header, log, v29, "╞ Removing duplicate:%s at index: [%ld, %ld]", v26, 0x20u);
        sub_10000959C(v9);
      }

      swift_beginAccess();
      sub_1008B4BC0(v21);
      swift_endAccess();
      v17 = *a2;

      v5 = sub_100999FF4(v3, v17);
      v19 = v18;
    }

    while ((v19 & 1) == 0);
  }

  return result;
}

uint64_t sub_1009FE394(char a1, uint64_t a2)
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
    v8 = "nt";
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
    v11 = "nt";
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

    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  while ((v5 & 1) == 0);
  return v3;
}

uint64_t sub_1009FE68C(unsigned __int8 *a1, char **a2)
{
  v29 = *a1;
  swift_beginAccess();
  v4 = *a2;
  v5 = *(*a2 + 2);
  if (v5)
  {
    v28 = a2;
    v6 = 0;
    v7 = "nt";
    do
    {
      if (v6 >= *(v4 + 2))
      {
        __break(1u);
        goto LABEL_81;
      }

      v8 = 0xD000000000000029;
      v9 = "nt";
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
      v12 = "nt";
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
                v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

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
          v4 = sub_1008BC108(v4);
        }
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

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
  sub_1008BC6F0(v6, v14);
  return swift_endAccess();
}

uint64_t sub_1009FEC88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
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

    v15 = sub_1009F945C(v14, v13);
  }

  while (!v15);
  __chkstk_darwin(result);
  v16 = v10;
  result = sub_100A08F80(&v16, &v17);
  if (!v6)
  {
    return v17;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1009FEDA0(uint64_t result, uint64_t a2)
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
  for (i = (v5 + 63) >> 6; v7; result = sub_100A006DC(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
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
  if ((sub_10095CBC8(a1, a5) & 1) == 0 || (sub_1009F9754(a2, a6) & 1) == 0 || (sub_10095CBC8(a3, a7) & 1) == 0)
  {
    return 0;
  }

  return sub_1009F9754(a4, a8);
}

uint64_t sub_1009FEF1C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100A07BC8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1009FEF6C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  if ((sub_10095CBC8(*a1, *a2) & 1) == 0 || (sub_1009F9754(v2, v5) & 1) == 0 || (sub_10095CBC8(v4, v7) & 1) == 0)
  {
    return 0;
  }

  return sub_1009F9754(v3, v6);
}

Swift::Int sub_1009FF008()
{
  result = sub_10089E24C(&off_1010C7C68);
  static Library.Menu.Revision.Version.current = &off_1010C7C38;
  *algn_101219C18 = result;
  return result;
}

uint64_t static Library.Menu.Revision.Version.current.getter()
{
  if (qword_1011A69E0 != -1)
  {
    swift_once();
  }

  v0 = static Library.Menu.Revision.Version.current;

  return v0;
}

void sub_1009FF0AC()
{
  LOBYTE(v15[0]) = 0;
  sub_100A08ED8();
  sub_10000988C();
  NSUserDefaults.subscript.getter(&v16);
  if (!*(&v17 + 1))
  {
    goto LABEL_8;
  }

  sub_10010FC20(&unk_1011A9FA0);
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
    sub_1000095E8(&v16, &qword_1011ABB20);
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

  sub_1000095E8(&v16, &qword_1011ABB20);
  if (qword_1011A69E0 != -1)
  {
    swift_once();
  }

  v3 = sub_100A076F4(v1, v2, static Library.Menu.Revision.Version.current, *algn_101219C18);
  if (v0)
  {

    if (qword_1011A69E8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000060E4(v6, static Logger.libraryMenu);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *&v16 = v0;
      swift_errorRetain();
      sub_10010FC20(&qword_1011AB640);
      String.init<A>(describing:)();
      v11 = String._bridgeToObjectiveC()();

      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "Unable to migrate legacy library menu: %@", v9, 0xCu);
      sub_1000095E8(v10, &qword_1011A9120);
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
  return sub_1009FF524;
}

void sub_1009FF524(uint64_t **a1, char a2)
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

uint64_t sub_1009FF5E8(_BYTE *a1, _BYTE *a2)
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
    v4 = "";
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
    v6 = "";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1009FF690()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1009FF70C()
{
  String.hash(into:)();
}

Swift::Int sub_1009FF774()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1009FF7EC@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C7E50, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1009FF84C(unint64_t *a1@<X8>)
{
  v2 = "orderedLibraryViewIdentifiers";
  v3 = 0xD00000000000001CLL;
  if (!*v1)
  {
    v3 = 0xD00000000000001DLL;
    v2 = "";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_1009FF888()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, static Logger.libraryMenu);
  sub_1000060E4(v0, static Logger.libraryMenu);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.libraryMenu.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011A69E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000060E4(v2, static Logger.libraryMenu);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Library.Menu.Identifier.musicAccessibilityIdentifier.getter(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_1011A6E78 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryPlaylistsView;
      break;
    case 2:
      if (qword_1011A6E28 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryArtistsListView;
      break;
    case 3:
      if (qword_1011A6E38 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryAlbumsView;
      break;
    case 4:
      if (qword_1011A6E80 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.librarySongsView;
      break;
    case 5:
      if (qword_1011A6E68 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryMadeForYouView;
      break;
    case 6:
      if (qword_1011A6E70 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryMusicVideosView;
      break;
    case 7:
      if (qword_1011A6E60 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryGenresView;
      break;
    case 8:
      if (qword_1011A6E48 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryCompilationsView;
      break;
    case 9:
      if (qword_1011A6E40 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryComposersView;
      break;
    case 10:
      if (qword_1011A6E88 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryTVAndMoviesView;
      break;
    case 11:
      if (qword_1011A6E50 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryDownloadedView;
      break;
    case 12:
      if (qword_1011A6E58 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryDownloadingView;
      break;
    default:
      if (qword_1011A6E20 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryRecentlyAddedView;
      break;
  }

  v2 = *v1;

  return v2;
}

uint64_t sub_1009FFD28(_BYTE *a1, Swift::Int a2)
{
  v3 = v2;
  v6 = *v2;
  Hasher.init(_seed:)();
  ActionType.rawValue.getter(a2);
  String.hash(into:)();

  v7 = Hasher._finalize()();
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

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

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
    sub_100A043FC(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1009FFEB0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for AudioVariant();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000297A0(&qword_1011AA8B8, &type metadata accessor for AudioVariant);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
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
      sub_1000297A0(&qword_1011AA8C0, &type metadata accessor for AudioVariant);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
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
    sub_100A045E4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100A00190(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
      if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

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
    sub_100A04888(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_100A0033C(_BYTE *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  Hasher.init(_seed:)();
  v7 = a2 & 1;
  Hasher._combine(_:)(v7);
  v8 = Hasher._finalize()();
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
    sub_100A04A70(v7, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    result = 1;
  }

  *a1 = v7;
  return result;
}

uint64_t sub_100A0043C(void *a1, uint64_t a2)
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

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for AnyCancellable();
      swift_dynamicCast();
      result = 0;
      *a1 = v18;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_100A040E0(v7, result + 1);
    if (*(v16 + 24) <= *(v16 + 16))
    {
      sub_100A035F0();
    }

    sub_100A04314(v17, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  type metadata accessor for AnyCancellable();
  sub_1000297A0(&qword_1011A7CF8, &type metadata accessor for AnyCancellable);
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;

    sub_100A04BC4(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v19;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_1000297A0(&qword_1011A7D00, &type metadata accessor for AnyCancellable);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
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

uint64_t sub_100A006DC(_BYTE *a1, Swift::Int a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  Library.Menu.Identifier.rawValue.getter(a2);
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = 0xD000000000000029;
      v10 = "nt";
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
      v13 = "nt";
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

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

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
    sub_100A04DAC(a2, v7, isUniquelyReferenced_nonNull_native);
    *v17 = v19;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100A00A90(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = static Hasher._hash(seed:_:)();
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
    sub_100A051B0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100A00B70(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

    sub_100A052D0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

unint64_t sub_100A00CC0()
{
  result = qword_1011AB990;
  if (!qword_1011AB990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB990);
  }

  return result;
}

unint64_t sub_100A00D14()
{
  result = qword_1011AB998;
  if (!qword_1011AB998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB998);
  }

  return result;
}

id sub_100A00D68(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    return a1;
  }
}

uint64_t sub_100A00D74(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_100A00E18()
{
  result = qword_1011AB9A0;
  if (!qword_1011AB9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB9A0);
  }

  return result;
}

void *sub_100A00E80()
{
  v1 = v0;
  v2 = type metadata accessor for AudioVariant();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011ABB08);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
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

id sub_100A010B8()
{
  v1 = v0;
  sub_10010FC20(&qword_1011ABA80);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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

void *sub_100A01208()
{
  v1 = v0;
  sub_10010FC20(&qword_1011ABB00);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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

void *sub_100A01348()
{
  v1 = v0;
  sub_10010FC20(&qword_1011A7CF0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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

void *sub_100A014AC()
{
  v1 = v0;
  sub_10010FC20(&qword_1011ABA98);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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

void *sub_100A015EC()
{
  v1 = v0;
  sub_10010FC20(&qword_1011ABA78);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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

uint64_t sub_100A01748()
{
  v1 = v0;
  v2 = *v0;
  sub_10010FC20(&qword_1011A7D78);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      ActionType.rawValue.getter(v15);
      String.hash(into:)();

      result = Hasher._finalize()();
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

uint64_t sub_100A01984()
{
  v1 = v0;
  v32 = type metadata accessor for AudioVariant();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_10010FC20(&qword_1011ABB08);
  v6 = static _SetStorage.resize(original:capacity:move:)();
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
      sub_1000297A0(&qword_1011AA8B8, &type metadata accessor for AudioVariant);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

uint64_t sub_100A01CA0()
{
  v1 = v0;
  v2 = *v0;
  sub_10010FC20(&qword_1011ABA80);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v17 = v16;
      String.hash(into:)();
      v18 = Hasher._finalize()();

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

uint64_t sub_100A01EF4()
{
  v1 = v0;
  v2 = *v0;
  sub_10010FC20(&qword_1011ABB00);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v15);
      result = Hasher._finalize()();
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

uint64_t sub_100A02114()
{
  v1 = v0;
  v2 = *v0;
  sub_10010FC20(&qword_1011A7CF0);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      type metadata accessor for AnyCancellable();
      sub_1000297A0(&qword_1011A7CF8, &type metadata accessor for AnyCancellable);

      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

uint64_t sub_100A0238C()
{
  v1 = v0;
  v2 = *v0;
  sub_10010FC20(&qword_1011A7CD8);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
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

uint64_t sub_100A02734()
{
  v1 = v0;
  v2 = *v0;
  sub_10010FC20(&qword_1011ABA98);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      result = static Hasher._hash(seed:_:)();
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

uint64_t sub_100A02924()
{
  v1 = v0;
  v2 = *v0;
  sub_10010FC20(&qword_1011ABA78);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
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

uint64_t sub_100A02B5C()
{
  v1 = v0;
  v2 = *v0;
  sub_10010FC20(&qword_1011A7D78);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      ActionType.rawValue.getter(v16);
      String.hash(into:)();

      result = Hasher._finalize()();
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

uint64_t sub_100A02DC8()
{
  v1 = v0;
  v35 = type metadata accessor for AudioVariant();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_10010FC20(&qword_1011ABB08);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      sub_1000297A0(&qword_1011AA8B8, &type metadata accessor for AudioVariant);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

uint64_t sub_100A03124()
{
  v1 = v0;
  v2 = *v0;
  sub_10010FC20(&qword_1011ABA80);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v17 = Hasher._finalize()();

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

uint64_t sub_100A033A0()
{
  v1 = v0;
  v2 = *v0;
  sub_10010FC20(&qword_1011ABB00);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
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

uint64_t sub_100A035F0()
{
  v1 = v0;
  v2 = *v0;
  sub_10010FC20(&qword_1011A7CF0);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      type metadata accessor for AnyCancellable();
      sub_1000297A0(&qword_1011A7CF8, &type metadata accessor for AnyCancellable);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

uint64_t sub_100A03884()
{
  v1 = v0;
  v2 = *v0;
  sub_10010FC20(&qword_1011A7CD8);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
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

uint64_t sub_100A03C5C()
{
  v1 = v0;
  v2 = *v0;
  sub_10010FC20(&qword_1011ABA98);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      result = static Hasher._hash(seed:_:)();
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

uint64_t sub_100A03E80()
{
  v1 = v0;
  v2 = *v0;
  sub_10010FC20(&qword_1011ABA78);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

uint64_t sub_100A040E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10010FC20(&qword_1011A7CF0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v14 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for AnyCancellable();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_100A035F0();
        }

        v2 = v14;
        sub_1000297A0(&qword_1011A7CF8, &type metadata accessor for AnyCancellable);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

unint64_t sub_100A04314(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyCancellable();
  sub_1000297A0(&qword_1011A7CF8, &type metadata accessor for AnyCancellable);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int sub_100A043FC(Swift::Int result, unint64_t a2, char a3)
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
    sub_100A02B5C();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1001943D4(&qword_1011A7D78);
      goto LABEL_16;
    }

    sub_100A01748();
  }

  v9 = *v3;
  Hasher.init(_seed:)();
  ActionType.rawValue.getter(v6);
  String.hash(into:)();

  result = Hasher._finalize()();
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

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

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
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100A045E4(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for AudioVariant();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100A02DC8();
  }

  else
  {
    if (v12 > v11)
    {
      sub_100A00E80();
      goto LABEL_12;
    }

    sub_100A01984();
  }

  v13 = *v3;
  sub_1000297A0(&qword_1011AA8B8, &type metadata accessor for AudioVariant);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1000297A0(&qword_1011AA8C0, &type metadata accessor for AudioVariant);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100A04888(uint64_t result, unint64_t a2, char a3)
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
    sub_100A03124();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_100A010B8();
      goto LABEL_16;
    }

    sub_100A01CA0();
  }

  v9 = *v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v10 = Hasher._finalize()();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    _s3__C4NameVMa_0(0);
    do
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
      if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

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
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100A04A70(Swift::Int result, unint64_t a2, char a3)
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
    sub_100A033A0();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100A01208();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100A01EF4();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4 & 1);
  result = Hasher._finalize()();
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
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100A04BC4(uint64_t result, unint64_t a2, char a3)
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
    sub_100A035F0();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100A01348();
      goto LABEL_12;
    }

    sub_100A02114();
  }

  v8 = *v3;
  type metadata accessor for AnyCancellable();
  sub_1000297A0(&qword_1011A7CF8, &type metadata accessor for AnyCancellable);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_1000297A0(&qword_1011A7D00, &type metadata accessor for AnyCancellable);
    do
    {
      result = dispatch thunk of static Equatable.== infix(_:_:)();
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
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100A04DAC(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_40;
  }

  if (a3)
  {
    sub_100A03884();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1001943D4(&qword_1011A7CD8);
      goto LABEL_40;
    }

    sub_100A0238C();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Library.Menu.Identifier.rawValue.getter(v5);
  String.hash(into:)();

  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = 0xD000000000000029;
      v12 = "nt";
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
      v15 = "nt";
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
        goto LABEL_43;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_44;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_40:
  v17 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v5;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_43:

LABEL_44:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100A051B0(uint64_t result, unint64_t a2, char a3)
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
    sub_100A03C5C();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100A014AC();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100A02734();
  }

  v8 = *v3;
  result = static Hasher._hash(seed:_:)();
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
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100A052D0(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_100A03E80();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100A015EC();
      goto LABEL_16;
    }

    sub_100A02924();
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
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

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
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
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100A05450(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v9 = sub_100A07334(v8, a2, a3, a5);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_100A05504(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for AudioVariant();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10010FC20(&qword_1011ABB08);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1000297A0(&qword_1011AA8B8, &type metadata accessor for AudioVariant);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100A0582C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10010FC20(&qword_1011A7CD8);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    Hasher.init(_seed:)();
    String.hash(into:)();

    result = Hasher._finalize()();
    v17 = -1 << v9[32];
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 6) + v20) = v16;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100A05BBC(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_100993D24(*(*(v2 + 48) + (v10 | (v9 << 6))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

_BYTE *sub_100A05CB0(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a2[2])
  {
    v6 = a1;
    v58 = 0;
    v7 = *(a1 + 56);
    v78 = a1 + 56;
    v8 = -1 << *(a1 + 32);
    v77 = ~v8;
    if (-v8 < 64)
    {
      v9 = ~(-1 << -v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & v7;
    v63 = (63 - v8) >> 6;
    v81 = a2 + 7;

    v79 = 0;
    v76 = "LibraryView.RecentlyAdded";
    v75 = "LibraryView.Playlists";
    v74 = "LibraryView.Artists";
    v73 = "LibraryView.Albums";
    v72 = "LibraryView.Songs";
    v71 = "LibraryView.MadeForYou";
    v70 = "LibraryView.MusicVideos";
    v69 = "LibraryView.Genres";
    v68 = "LibraryView.Compilations";
    v67 = "LibraryView.Composers";
    v66 = "LibraryView.Shows";
    v65 = "LibraryView.Downloaded";
    do
    {
LABEL_6:
      if (!v10)
      {
        v12 = v78;
        v13 = v79;
        while (1)
        {
          v14 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v14 >= v63)
          {
            goto LABEL_105;
          }

          v10 = *(v78 + 8 * v14);
          ++v13;
          if (v10)
          {
            v79 = v14;
            goto LABEL_13;
          }
        }

LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      v12 = v78;
LABEL_13:
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v16 = *(*(v6 + 48) + (v15 | (v79 << 6)));
      v83 = v6;
      v84 = v12;
      v85 = v77;
      v86 = v79;
      v87 = v10;
      Hasher.init(_seed:)();
      v80 = v16;
      Library.Menu.Identifier.rawValue.getter(v16);
      String.hash(into:)();

      v17 = Hasher._finalize()();
      v18 = -1 << v5[32];
      v2 = v17 & ~v18;
      v3 = v2 >> 6;
      v4 = 1 << v2;
    }

    while (((1 << v2) & v81[v2 >> 6]) == 0);
    v64 = v6;
    v19 = ~v18;
    while (1)
    {
      v20 = 0xD000000000000029;
      v21 = "nt";
      switch(*(*(v5 + 6) + v2))
      {
        case 1:
          v20 = 0xD000000000000025;
          v22 = &v99;
          goto LABEL_28;
        case 2:
          v20 = 0xD000000000000023;
          v22 = &v98;
          goto LABEL_28;
        case 3:
          v20 = 0xD000000000000022;
          v22 = &v97;
          goto LABEL_28;
        case 4:
          v20 = 0xD000000000000021;
          v22 = &v96;
          goto LABEL_28;
        case 5:
          v20 = 0xD000000000000026;
          v22 = &v95;
          goto LABEL_28;
        case 6:
          v20 = 0xD000000000000027;
          v22 = &v94;
          goto LABEL_28;
        case 7:
          v20 = 0xD000000000000022;
          v22 = &v93;
          goto LABEL_28;
        case 8:
          v20 = 0xD000000000000028;
          v22 = &v92;
          goto LABEL_28;
        case 9:
          v20 = 0xD000000000000025;
          v22 = &v91;
          goto LABEL_28;
        case 0xA:
          v20 = 0xD000000000000021;
          v22 = &v90;
          goto LABEL_28;
        case 0xB:
          v20 = 0xD000000000000026;
          v22 = &v89;
          goto LABEL_28;
        case 0xC:
          v20 = 0xD000000000000027;
          v22 = &v88;
LABEL_28:
          v21 = *(v22 - 32);
          break;
        default:
          break;
      }

      v23 = v21 | 0x8000000000000000;
      v24 = 0xD000000000000029;
      v25 = "nt";
      switch(v80)
      {
        case 1:
          v24 = 0xD000000000000025;
          v26 = &v99;
          goto LABEL_42;
        case 2:
          v24 = 0xD000000000000023;
          v26 = &v98;
          goto LABEL_42;
        case 3:
          v24 = 0xD000000000000022;
          v26 = &v97;
          goto LABEL_42;
        case 4:
          v24 = 0xD000000000000021;
          v26 = &v96;
          goto LABEL_42;
        case 5:
          v24 = 0xD000000000000026;
          v26 = &v95;
          goto LABEL_42;
        case 6:
          v24 = 0xD000000000000027;
          v26 = &v94;
          goto LABEL_42;
        case 7:
          v24 = 0xD000000000000022;
          v26 = &v93;
          goto LABEL_42;
        case 8:
          v24 = 0xD000000000000028;
          v26 = &v92;
          goto LABEL_42;
        case 9:
          v24 = 0xD000000000000025;
          v26 = &v91;
          goto LABEL_42;
        case 10:
          v24 = 0xD000000000000021;
          v26 = &v90;
          goto LABEL_42;
        case 11:
          v24 = 0xD000000000000026;
          v26 = &v89;
          goto LABEL_42;
        case 12:
          v24 = 0xD000000000000027;
          v26 = &v88;
LABEL_42:
          v25 = *(v26 - 32);
          break;
        default:
          break;
      }

      if (v20 == v24 && v23 == (v25 | 0x8000000000000000))
      {
        break;
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v27)
      {
        goto LABEL_51;
      }

      v2 = (v2 + 1) & v19;
      v3 = v2 >> 6;
      v4 = 1 << v2;
      if ((v81[v2 >> 6] & (1 << v2)) == 0)
      {
        v6 = v64;
        goto LABEL_6;
      }
    }

LABEL_51:
    v29 = v5[32];
    v59 = ((1 << v29) + 63) >> 6;
    v11 = 8 * v59;
    if ((v29 & 0x3Fu) <= 0xD)
    {
LABEL_52:
      v60 = &v57;
      __chkstk_darwin(v28);
      v31 = &v57 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v31, v81, v30);
      v32 = *&v31[8 * v3] & ~v4;
      v33 = *(v5 + 2);
      v62 = v31;
      *&v31[8 * v3] = v32;
      v34 = v33 - 1;
LABEL_53:
      v61 = v34;
LABEL_54:
      while (v10)
      {
        v35 = v78;
LABEL_61:
        v38 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v3 = *(*(v64 + 48) + (v38 | (v79 << 6)));
        v83 = v64;
        v84 = v35;
        v85 = v77;
        v86 = v79;
        v87 = v10;
        Hasher.init(_seed:)();
        Library.Menu.Identifier.rawValue.getter(v3);
        String.hash(into:)();

        v2 = &v82;
        v39 = Hasher._finalize()();
        v40 = -1 << v5[32];
        v41 = v39 & ~v40;
        v4 = v41 >> 6;
        v42 = 1 << v41;
        if (((1 << v41) & v81[v41 >> 6]) != 0)
        {
          v80 = ~v40;
          while (1)
          {
            v43 = 0xD000000000000029;
            v44 = "nt";
            switch(*(*(v5 + 6) + v41))
            {
              case 1:
                v43 = 0xD000000000000025;
                v45 = &v99;
                goto LABEL_76;
              case 2:
                v43 = 0xD000000000000023;
                v45 = &v98;
                goto LABEL_76;
              case 3:
                v43 = 0xD000000000000022;
                v45 = &v97;
                goto LABEL_76;
              case 4:
                v43 = 0xD000000000000021;
                v45 = &v96;
                goto LABEL_76;
              case 5:
                v43 = 0xD000000000000026;
                v45 = &v95;
                goto LABEL_76;
              case 6:
                v43 = 0xD000000000000027;
                v45 = &v94;
                goto LABEL_76;
              case 7:
                v43 = 0xD000000000000022;
                v45 = &v93;
                goto LABEL_76;
              case 8:
                v43 = 0xD000000000000028;
                v45 = &v92;
                goto LABEL_76;
              case 9:
                v43 = 0xD000000000000025;
                v45 = &v91;
                goto LABEL_76;
              case 0xA:
                v43 = 0xD000000000000021;
                v45 = &v90;
                goto LABEL_76;
              case 0xB:
                v43 = 0xD000000000000026;
                v45 = &v89;
                goto LABEL_76;
              case 0xC:
                v43 = 0xD000000000000027;
                v45 = &v88;
LABEL_76:
                v44 = *(v45 - 32);
                break;
              default:
                break;
            }

            v2 = v44 | 0x8000000000000000;
            v46 = 0xD000000000000029;
            v47 = "nt";
            switch(v3)
            {
              case 1uLL:
                v46 = 0xD000000000000025;
                v48 = &v99;
                goto LABEL_90;
              case 2uLL:
                v46 = 0xD000000000000023;
                v48 = &v98;
                goto LABEL_90;
              case 3uLL:
                v46 = 0xD000000000000022;
                v48 = &v97;
                goto LABEL_90;
              case 4uLL:
                v46 = 0xD000000000000021;
                v48 = &v96;
                goto LABEL_90;
              case 5uLL:
                v46 = 0xD000000000000026;
                v48 = &v95;
                goto LABEL_90;
              case 6uLL:
                v46 = 0xD000000000000027;
                v48 = &v94;
                goto LABEL_90;
              case 7uLL:
                v46 = 0xD000000000000022;
                v48 = &v93;
                goto LABEL_90;
              case 8uLL:
                v46 = 0xD000000000000028;
                v48 = &v92;
                goto LABEL_90;
              case 9uLL:
                v46 = 0xD000000000000025;
                v48 = &v91;
                goto LABEL_90;
              case 0xAuLL:
                v46 = 0xD000000000000021;
                v48 = &v90;
                goto LABEL_90;
              case 0xBuLL:
                v46 = 0xD000000000000026;
                v48 = &v89;
                goto LABEL_90;
              case 0xCuLL:
                v46 = 0xD000000000000027;
                v48 = &v88;
LABEL_90:
                v47 = *(v48 - 32);
                break;
              default:
                break;
            }

            if (v43 == v46 && v2 == (v47 | 0x8000000000000000))
            {
              break;
            }

            v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v49)
            {
              goto LABEL_97;
            }

            v41 = (v41 + 1) & v80;
            v4 = v41 >> 6;
            v42 = 1 << v41;
            if ((v81[v41 >> 6] & (1 << v41)) == 0)
            {
              goto LABEL_54;
            }
          }

LABEL_97:
          v50 = v62[v4];
          v62[v4] = v50 & ~v42;
          if ((v50 & v42) != 0)
          {
            v34 = v61 - 1;
            if (__OFSUB__(v61, 1))
            {
              __break(1u);
            }

            if (v61 == 1)
            {

              v5 = &_swiftEmptySetSingleton;
              goto LABEL_105;
            }

            goto LABEL_53;
          }
        }
      }

      v35 = v78;
      v36 = v79;
      while (1)
      {
        v37 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          __break(1u);
          goto LABEL_108;
        }

        if (v37 >= v63)
        {
          break;
        }

        v10 = *(v78 + 8 * v37);
        ++v36;
        if (v10)
        {
          v79 = v37;
          goto LABEL_61;
        }
      }

      if (v63 <= v79 + 1)
      {
        v51 = v79 + 1;
      }

      else
      {
        v51 = v63;
      }

      v83 = v64;
      v84 = v78;
      v85 = v77;
      v86 = v51 - 1;
      v87 = 0;
      v5 = sub_100A0582C(v62, v59, v61, v5);
      goto LABEL_105;
    }

LABEL_109:
    v53 = v11;

    if (swift_stdlib_isStackAllocationSafe())
    {

      goto LABEL_52;
    }

    v54 = swift_slowAlloc();
    memcpy(v54, v81, v53);
    v55 = v58;
    v56 = sub_100A066B8(v54, v59, v5, v2, &v83);

    if (!v55)
    {

      v5 = v56;
LABEL_105:
      sub_10005C9F8();
      return v5;
    }

    __break(1u);
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int sub_100A066B8(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v30 = a3 + 56;
  while (2)
  {
    v26 = v6;
    while (1)
    {
LABEL_3:
      v7 = a5[3];
      v8 = a5[4];
      if (!v8)
      {
        v10 = (a5[2] + 64) >> 6;
        v11 = a5[3];
        while (1)
        {
          v9 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            goto LABEL_52;
          }

          if (v9 >= v10)
          {
            break;
          }

          v8 = *(a5[1] + 8 * v9);
          ++v11;
          if (v8)
          {
            goto LABEL_9;
          }
        }

        if (v10 <= v7 + 1)
        {
          v24 = v7 + 1;
        }

        else
        {
          v24 = (a5[2] + 64) >> 6;
        }

        a5[3] = v24 - 1;
        a5[4] = 0;

        return sub_100A0582C(v27, a2, v26, a3);
      }

      v9 = a5[3];
LABEL_9:
      v12 = *(*(*a5 + 48) + (__clz(__rbit64(v8)) | (v9 << 6)));
      a5[3] = v9;
      a5[4] = (v8 - 1) & v8;
      Hasher.init(_seed:)();
      Library.Menu.Identifier.rawValue.getter(v12);
      String.hash(into:)();

      result = Hasher._finalize()();
      v13 = -1 << *(a3 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      v16 = 1 << v14;
      if (((1 << v14) & *(v30 + 8 * (v14 >> 6))) != 0)
      {
        v29 = ~v13;
        while (1)
        {
          v17 = 0xD000000000000029;
          v18 = "nt";
          switch(*(*(a3 + 48) + v14))
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
          v21 = "nt";
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

          v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v22)
          {
            goto LABEL_43;
          }

          v14 = (v14 + 1) & v29;
          v15 = v14 >> 6;
          v16 = 1 << v14;
          if ((*(v30 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
          {
            goto LABEL_3;
          }
        }

LABEL_43:
        v23 = v27[v15];
        v27[v15] = v23 & ~v16;
        if ((v23 & v16) != 0)
        {
          break;
        }
      }
    }

    v6 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
LABEL_52:
      __break(1u);
    }

    else
    {
      if (v26 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

BOOL _s9MusicCore7LibraryO4MenuV7RequestV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }

    type metadata accessor for MusicLibrary();
    if ((static MusicLibrary.== infix(_:_:)() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    sub_100009F78(0, &qword_1011AAEA0);
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    sub_100009F78(0, &qword_1011ABAD8);
    v6 = v5;
    v7 = v4;
    v8 = static NSObject.== infix(_:_:)();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (sub_1009F9754(*(a1 + 32), *(a2 + 32)) & 1) == 0 || ((*(a1 + 40) ^ *(a2 + 40)) & 1) != 0 || ((*(a1 + 41) ^ *(a2 + 41)) & 1) != 0 || ((*(a1 + 42) ^ *(a2 + 42)))
  {
    return 0;
  }

  v10 = *(a1 + 48);
  v9 = *(a1 + 56);
  v12 = *(a1 + 64);
  v11 = *(a1 + 72);
  v13 = *(a2 + 48);
  v14 = *(a2 + 56);
  v16 = *(a2 + 64);
  v15 = *(a2 + 72);
  if (v10)
  {
    if (v13)
    {
      sub_100A00D74(v13);
      sub_100A00D74(v10);
      if (sub_10095CBC8(v10, v13) & 1) != 0 && (sub_1009F9754(v9, v14) & 1) != 0 && (sub_10095CBC8(v12, v16))
      {
        v17 = sub_1009F9754(v11, v15);

        sub_1005BF344(v10);
        return (v17 & 1) != 0;
      }

      v18 = v10;
LABEL_27:
      sub_1005BF344(v18);
      return 0;
    }

LABEL_25:
    sub_100A00D74(v13);
    sub_100A00D74(v10);
    sub_1005BF344(v10);
    v18 = v13;
    goto LABEL_27;
  }

  if (v13)
  {
    goto LABEL_25;
  }

  return 1;
}

uint64_t sub_100A06DF8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v7 = a3 >> 1;
  result = swift_beginAccess();
  if (a2 <= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a2;
  }

  v10 = v9 - a2;
  v11 = (a1 + a2);
  for (i = v7 - a2; ; --i)
  {
    if (!i)
    {
      return 13;
    }

    if (!v10)
    {
      break;
    }

    v14 = *v11++;
    v13 = v14;
    v15 = *a4;

    v16 = sub_1009F945C(v14, v15);

    --v10;
    if (v16)
    {
      return v13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100A06EC0(char *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  result = sub_100999FF4(*a1, a2);
  if (v7)
  {
    goto LABEL_43;
  }

  v8 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v9 = *(a2 + 16);
  if (v9 < result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  LOBYTE(v10) = sub_1009FEC88(a2, a2 + 32, 0, (2 * result) | 1, a3);
  if (v8 >= (v9 - 1))
  {
LABEL_11:
    if (v10 == 13)
    {
      goto LABEL_12;
    }

LABEL_14:
    swift_beginAccess();
    v16 = *a3;

    v17 = sub_100999FF4(v10, v16);
    v19 = v18;

    if (v19)
    {
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v20 = __OFADD__(v17, 1);
    v10 = v17 + 1;
    if (!v20)
    {
      result = swift_beginAccess();
      if (*(*a3 + 16) >= v10)
      {
        if ((v10 & 0x8000000000000000) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_37;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v11 = sub_100A06DF8(a2 + 32, v8, (2 * v9) | 1, a3);
  if (v10 == 13)
  {
    if (v11 == 13)
    {
LABEL_12:
      swift_beginAccess();
      sub_1008BBFD0(0, 0, v5);
      return swift_endAccess();
    }

    v12 = v11;
    swift_beginAccess();
    v13 = *a3;

    v10 = sub_100999FF4(v12, v13);
    v15 = v14;

    if (v15)
    {
      goto LABEL_45;
    }

    result = swift_beginAccess();
    if (*(*a3 + 16) < v10)
    {
      goto LABEL_38;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
LABEL_18:
      sub_1008BBFD0(v10, v10, v5);
      return swift_endAccess();
    }

    __break(1u);
    goto LABEL_11;
  }

  if (v11 == 13)
  {
    goto LABEL_14;
  }

  v21 = v11;
  swift_beginAccess();
  v22 = *a3;

  v23 = sub_100999FF4(v10, v22);
  v25 = v24;

  if (v25)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  swift_beginAccess();
  v26 = *a3;

  v27 = sub_100999FF4(v21, v26);
  v29 = v28;

  if ((v29 & 1) == 0)
  {
    if (v27 <= v23)
    {
      v30 = v23;
    }

    else
    {
      v30 = v27;
    }

    if (v27 >= v23)
    {
      v31 = v23;
    }

    else
    {
      v31 = v27;
    }

    v20 = __OFSUB__(v30, v31);
    v32 = v30 - v31;
    if (!v20)
    {
      v10 = v31 + v32 / 2;
      if (!__OFADD__(v31, v32 / 2))
      {
        result = swift_beginAccess();
        if (*(*a3 + 16) >= v10)
        {
          if ((v10 & 0x8000000000000000) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_42;
        }

LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_47:
  __break(1u);
  return result;
}

unint64_t sub_100A071F4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = *(*(a1 + 48) + (__clz(__rbit64(v10)) | (v14 << 6)));
      result = sub_100A06EC0(&v15, a2, a3);
      if (v3)
      {
      }

      v10 &= v10 - 1;
      v13 = v14;
      if (!v10)
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
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t _s9MusicCore7LibraryO4MenuV10IdentifierO8rawValueAGSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C7C90, v2);

  if (v3 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100A07334(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    result = sub_10096A3C8(*(*(a3 + 48) + v17), a4);
    if (result)
    {
      *(v6 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_100A0582C(v6, a2, v7, a3);
      }
    }
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
      goto LABEL_15;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}
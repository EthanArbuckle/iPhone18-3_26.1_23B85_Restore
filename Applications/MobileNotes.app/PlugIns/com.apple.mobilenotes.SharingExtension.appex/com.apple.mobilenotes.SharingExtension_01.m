uint64_t ICArchiveImporter.Errors.errorDescription.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 == 3 || a1 == 4 || a1 == 5)
    {
      goto LABEL_11;
    }
  }

  else if (a1 <= 1 || a1 == 2)
  {
LABEL_11:
    v1 = [objc_opt_self() mainBundle];
    v2 = sub_1000B55F0();
    v3 = [v1 localizedStringForKey:v2 value:0 table:0];

    v4 = sub_1000B5620();
    return v4;
  }

  result = sub_1000B5F30();
  __break(1u);
  return result;
}

Swift::Int sub_1000380B8()
{
  v2 = *v0;
  sub_1000B5FB0();
  sub_1000B55A0();
  return sub_1000B5FE0();
}

uint64_t sub_10003811C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100044D68();

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100038168()
{
  v2 = *v0;
  sub_1000B5FB0();
  sub_1000B55A0();
  return sub_1000B5FE0();
}

unint64_t sub_1000381C8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000449A4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_10003821C(uint64_t a1)
{
  v2 = sub_100044D68();

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_100038258(uint64_t a1)
{
  v2 = sub_100044D68();

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_10003829C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100044D68();

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

uint64_t ICArchiveImporter.errors.getter()
{
  v1 = OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_errors;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t *ICArchiveImporter.objects(forArchiveAt:)()
{
  v0 = sub_100030480(&qword_100106DA0, &qword_1000CAB10);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v57 = (&v48 - v2);
  v3 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = *(v55 + 64);
  v5 = __chkstk_darwin(v3);
  v63 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v52 = &v48 - v7;
  v8 = sub_1000B4DB0();
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = *(v53 + 8);
  __chkstk_darwin(v8);
  v64 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000B5480();
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v48 - v17;
  if (qword_100106A20 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v19 = sub_1000B54B0();
    sub_100036380(v19, qword_100106DD8);
    sub_1000B4CF0(v20);
    sub_1000B54A0();
    sub_1000B5460();
    v21 = sub_1000B54A0();
    v22 = sub_1000B59E0();
    if (sub_1000B5AB0())
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = sub_1000B5470();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, v22, v24, "Objects for Archive", "", v23, 2u);
    }

    (*(v12 + 16))(v16, v18, v11);
    v25 = sub_1000B54F0();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    v28 = sub_1000B54E0();
    v29 = v65;
    v30 = *(v65 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_fileManager);
    v31 = *(v65 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_fileManager + 8);
    swift_getObjectType();
    v32 = v62;
    v33 = sub_1000B4FB0();
    if (v32)
    {
      sub_10003C498(v28, "Objects for Archive");

      (*(v12 + 8))(v18, v11);
      return v11;
    }

    v34 = v33;
    v48 = v28;
    v49 = v18;
    v50 = v12;
    v51 = v11;
    v35 = *(v33 + 16);
    v36 = v29;
    v62 = v35;
    if (!v35)
    {
      break;
    }

    v18 = 0;
    v16 = v53;
    v12 = v54;
    v60 = v53 + 16;
    v61 = (v53 + 8);
    v37 = v56;
    v58 = (v55 + 32);
    v59 = (v55 + 48);
    v65 = &_swiftEmptyArrayStorage;
    v11 = v57;
    while (v18 < *(v34 + 16))
    {
      v38 = v34;
      v39 = v34 + ((v16[80] + 32) & ~v16[80]) + *(v16 + 9) * v18;
      v40 = v64;
      (*(v16 + 2))(v64, v39, v12);
      sub_100038BC8(v40, v11);
      (*v61)(v40, v12);
      if ((*v59)(v11, 1, v37) == 1)
      {
        sub_100036320(v11, &qword_100106DA0, &qword_1000CAB10);
        v34 = v38;
      }

      else
      {
        v41 = *v58;
        v42 = v52;
        (*v58)(v52, v11, v37);
        v41(v63, v42, v37);
        v43 = v65;
        v34 = v38;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_1000335D4(0, v43[2] + 1, 1, v43);
        }

        v45 = v43[2];
        v44 = v43[3];
        v65 = v43;
        v16 = v53;
        if (v45 >= v44 >> 1)
        {
          v65 = sub_1000335D4(v44 > 1, v45 + 1, 1, v65);
        }

        v46 = v65;
        v65[2] = v45 + 1;
        v37 = v56;
        v41(&v46[((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v45], v63, v56);
        v11 = v57;
        v12 = v54;
      }

      if (v62 == ++v18)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }

  v65 = &_swiftEmptyArrayStorage;
LABEL_18:

  v66 = v65;

  sub_100041C84(&v66);

  v11 = v66;
  sub_10003C498(v48, "Objects for Archive");

  (*(v50 + 8))(v49, v51);
  return v11;
}

uint64_t sub_100038BC8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v175 = a2;
  v4 = sub_100030480(&qword_100106DA0, &qword_1000CAB10);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v180 = (v167 - v6);
  v7 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v8 = *(v7 - 8);
  v181 = v7;
  v182 = v8;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v179 = v167 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v178 = v167 - v12;
  v13 = sub_1000B4DB0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v170 = v167 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v172 = v167 - v19;
  v20 = __chkstk_darwin(v18);
  v171 = v167 - v21;
  v22 = __chkstk_darwin(v20);
  v174 = v167 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = v167 - v25;
  __chkstk_darwin(v24);
  v28 = v167 - v27;
  sub_1000B4D00();
  v173 = sub_1000B4CE0();
  v30 = v29;
  v190 = v14;
  v33 = *(v14 + 8);
  v32 = v14 + 8;
  v31 = v33;
  v34 = v28;
  v35 = v13;
  v33(v34, v13);
  v188 = v2;
  v36 = *&v2[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_fileManager];
  v37 = *&v188[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_fileManager + 8];
  ObjectType = swift_getObjectType();
  v39 = v189;
  v40 = sub_1000B4FB0();
  v177 = v39;
  if (v39)
  {
  }

  v167[2] = ObjectType;
  v167[3] = v36;
  v167[1] = v37;
  v169 = v30;
  v186 = v31;
  v187 = v32;
  v168 = a1;
  v189 = v40;
  v42 = *(v40 + 16);
  v188 = v188;
  v43 = &_swiftEmptyArrayStorage;
  v176 = v35;
  v44 = v181;
  v185 = v42;
  if (!v42)
  {
    v48 = v177;
LABEL_16:
    v57 = v44;

    v191[0] = v43;

    sub_100041C84(v191);
    v177 = v48;
    if (v48)
    {

      __break(1u);
      return result;
    }

    v47 = 0xEC00000065766968;
    v35 = 0x6372617365746F6ELL;

    v58 = v191[0];
    v46 = v168;
    v43 = sub_1000B4C90();
    v48 = v59;
    v60 = v182;
    v45 = v190;
    if (v43 == 0x6372617365746F6ELL && v59 == 0xEC00000065766968 || (sub_1000B5F20() & 1) != 0)
    {

      v61 = v176;
      v62 = v174;
      if (qword_100106A18 != -1)
      {
        swift_once();
      }

      v63 = sub_1000B5530();
      sub_100036380(v63, qword_100106DC0);
      (*(v45 + 16))(v62, v46, v61);
      v64 = sub_1000B5520();
      v65 = sub_1000B5920();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = v62;
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v191[0] = v68;
        *v67 = 136315138;
        v69 = sub_1000B4C90();
        v70 = v57;
        v72 = v71;
        v186(v66, v61);
        v73 = sub_100062B20(v69, v72, v191);
        v57 = v70;

        *(v67 + 4) = v73;
        _os_log_impl(&_mh_execute_header, v64, v65, "Archive object type not supported inside archive — skipping {pathExtension: %s}", v67, 0xCu);
        sub_100035DA8(v68);
      }

      else
      {

        v186(v62, v61);
      }

      return (*(v182 + 56))(v175, 1, 1, v57);
    }

    if (v43 == 0x746E756F636361 && v48 == 0xE700000000000000 || (sub_1000B5F20() & 1) != 0)
    {
      v74 = v45;

      v75 = sub_100030480(&qword_100106F38, &qword_1000CADF0);
      v76 = swift_allocBox();
      v78 = v77;
      v79 = (v77 + *(v75 + 48));
      v80 = *(v75 + 64);
      (*(v74 + 16))(v77, v46, v176);
      v81 = v169;
      *v79 = v173;
      v79[1] = v81;
      *(v78 + v80) = v58;
      v82 = v175;
      *v175 = v76;
      (*(v60 + 104))(v82, enum case for ICObjectReferences.account<A>(_:), v57);
      return (*(v60 + 56))(v82, 0, 1, v57);
    }

    v189 = v58;
    v44 = 0x7265646C6F66;
    if (v43 == 0x7265646C6F66 && v48 == 0xE600000000000000 || (sub_1000B5F20() & 1) != 0)
    {
      v83 = v45;

      v84 = sub_100030480(&qword_100106F38, &qword_1000CADF0);
      v85 = swift_allocBox();
      v87 = v86;
      v88 = (v86 + *(v84 + 48));
      v89 = *(v84 + 64);
      (*(v83 + 16))(v86, v46, v176);
      v90 = v169;
      *v88 = v173;
      v88[1] = v90;
      *(v87 + v89) = v189;
      v91 = v175;
      *v175 = v85;
      v92 = &enum case for ICObjectReferences.folder<A>(_:);
    }

    else
    {
      if ((v43 != 1702129518 || v48 != 0xE400000000000000) && (sub_1000B5F20() & 1) == 0)
      {
        goto LABEL_41;
      }

      v94 = v45;

      v95 = sub_100030480(&qword_100106F28, &qword_1000CADE8);
      v96 = swift_allocBox();
      v98 = v97;
      v99 = (v97 + *(v95 + 48));
      v100 = *(v95 + 64);
      (*(v94 + 16))(v97, v46, v176);
      v101 = v169;
      *v99 = v173;
      v99[1] = v101;
      *(v98 + v100) = v189;
      v91 = v175;
      *v175 = v96;
      v92 = &enum case for ICObjectReferences.note<A>(_:);
    }

    v93 = v181;
    (*(v60 + 104))(v91, *v92, v181);
    return (*(v60 + 56))(v91, 0, 1, v93);
  }

  v45 = 0;
  v46 = v189;
  v183 = (v182 + 48);
  v184 = v190 + 16;
  v47 = v182 + 32;
  v48 = v177;
  v49 = v180;
  while (v45 < v46[2])
  {
    (*(v190 + 16))(v26, v46 + ((*(v190 + 80) + 32) & ~*(v190 + 80)) + *(v190 + 72) * v45, v35);
    sub_100038BC8(v26);
    if (v48)
    {

      v186(v26, v35);
    }

    v48 = 0;
    v186(v26, v35);
    if ((*v183)(v49, 1, v44) == 1)
    {
      sub_100036320(v49, &qword_100106DA0, &qword_1000CAB10);
    }

    else
    {
      v50 = v49;
      v51 = *v47;
      v52 = v178;
      (*v47)(v178, v50, v44);
      v53 = v179;
      v51(v179, v52, v44);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_1000335D4(0, v43[2] + 1, 1, v43);
      }

      v55 = v43[2];
      v54 = v43[3];
      if (v55 >= v54 >> 1)
      {
        v43 = sub_1000335D4(v54 > 1, v55 + 1, 1, v43);
      }

      v43[2] = v55 + 1;
      v56 = v43 + ((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * v55;
      v44 = v181;
      v51(v56, v53, v181);
      v48 = 0;
      v35 = v176;
      v49 = v180;
    }

    ++v45;
    v46 = v189;
    if (v185 == v45)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_41:
  v188 = v35;
  if (v43 == 0x656D686361747461 && v48 == 0xEA0000000000746ELL)
  {
  }

  else
  {
    v102 = sub_1000B5F20();

    v103 = v176;
    if ((v102 & 1) == 0)
    {

      if (qword_100106A18 != -1)
      {
        swift_once();
      }

      v107 = sub_1000B5530();
      sub_100036380(v107, qword_100106DC0);
      v108 = v170;
      (*(v45 + 16))(v170, v46, v103);
      v109 = sub_1000B5520();
      v110 = sub_1000B5920();
      v111 = os_log_type_enabled(v109, v110);
      v112 = v181;
      if (v111)
      {
        v113 = swift_slowAlloc();
        v114 = v103;
        v115 = swift_slowAlloc();
        v191[0] = v115;
        *v113 = 136315138;
        v116 = sub_1000B4C90();
        v117 = v108;
        v119 = v118;
        v186(v117, v114);
        v120 = sub_100062B20(v116, v119, v191);

        *(v113 + 4) = v120;
        _os_log_impl(&_mh_execute_header, v109, v110, "Unknown object type — skipping {pathExtension: %s}", v113, 0xCu);
        sub_100035DA8(v115);
      }

      else
      {

        v186(v108, v103);
      }

      return (*(v182 + 56))(v175, 1, 1, v112);
    }
  }

  v191[0] = &_swiftEmptyArrayStorage;
  sub_1000432C4(0, 5, 0);
  v104 = v191[0];
  v105 = 0x6372617365746F6ELL;
  v106 = 0x656D686361747461;
  v122 = v191[0][2];
  v121 = v191[0][3];
  v123 = v122 + 1;
  if (v122 >= v121 >> 1)
  {
    goto LABEL_77;
  }

  while (1)
  {
    v104[2] = v123;
    v124 = &v104[2 * v122];
    v124[4] = v105;
    v124[5] = v47;
    v125 = v45;
    v191[0] = v104;
    v126 = v104[3];
    v127 = v122 + 2;
    if (v123 >= v126 >> 1)
    {
      v162 = v122 + 2;
      v163 = v106;
      sub_1000432C4((v126 > 1), v162, 1);
      v106 = v163;
      v104 = v191[0];
    }

    v104[2] = v127;
    v128 = &v104[2 * v123];
    v128[4] = 0x746E756F636361;
    v128[5] = 0xE700000000000000;
    v191[0] = v104;
    v130 = v104[2];
    v129 = v104[3];
    v131 = v130 + 1;
    if (v130 >= v129 >> 1)
    {
      v164 = v106;
      sub_1000432C4((v129 > 1), v130 + 1, 1);
      v106 = v164;
      v104 = v191[0];
    }

    v104[2] = v131;
    v132 = &v104[2 * v130];
    v132[4] = v44;
    v132[5] = 0xE600000000000000;
    v191[0] = v104;
    v133 = v104[3];
    v134 = v130 + 2;
    if (v131 >= v133 >> 1)
    {
      v165 = v130 + 2;
      v166 = v106;
      sub_1000432C4((v133 > 1), v165, 1);
      v106 = v166;
      v104 = v191[0];
    }

    v104[2] = v134;
    v135 = &v104[2 * v131];
    v135[4] = 1702129518;
    v135[5] = 0xE400000000000000;
    v188 = v106;
    v136 = 0xEA0000000000746ELL;
    v105 = v169;
    v191[0] = v104;
    v138 = v104[2];
    v137 = v104[3];
    v123 = v138 + 1;
    if (v138 >= v137 >> 1)
    {
      v185 = 0xEA0000000000746ELL;
      sub_1000432C4((v137 > 1), v138 + 1, 1);
      v136 = v185;
      v104 = v191[0];
    }

    v104[2] = v123;
    v139 = &v104[2 * v138];
    v139[4] = v188;
    v139[5] = v136;
    v140 = v177;
    v122 = v104;
    v141 = sub_1000B4FA0();
    if (v140)
    {
    }

    v47 = v141;
    v177 = 0;
    v184 = *(v141 + 16);
    v185 = v122;
    if (!v184)
    {
      break;
    }

    v44 = 0;
    v106 = v125 + 16;
    v183 = (v125 + 16);
    v180 = (v125 + 32);
    v45 = &_swiftEmptyArrayStorage;
    v142 = v171;
    while (1)
    {
      v121 = *(v47 + 16);
      if (v44 >= v121)
      {
        break;
      }

      v188 = ((*(v125 + 80) + 32) & ~*(v125 + 80));
      v122 = *(v125 + 72);
      v123 = v176;
      (*(v125 + 16))(v142, &v188[v47 + v122 * v44], v176);
      v191[0] = sub_1000B4C90();
      v191[1] = v143;
      __chkstk_darwin(v191[0]);
      v167[-2] = v191;
      v144 = v177;
      v105 = sub_10002F354(sub_100045AC8, &v167[-4], v185);
      v177 = v144;

      if (v105)
      {
        v186(v142, v123);
      }

      else
      {
        v105 = *v180;
        (*v180)(v172, v142, v123);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v192 = v45;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100043280(0, *(v45 + 16) + 1, 1);
          v142 = v171;
          v45 = v192;
        }

        v147 = *(v45 + 16);
        v146 = *(v45 + 24);
        if (v147 >= v146 >> 1)
        {
          sub_100043280(v146 > 1, v147 + 1, 1);
          v142 = v171;
          v45 = v192;
        }

        *(v45 + 16) = v147 + 1;
        (v105)(&v188[v45 + v147 * v122], v172, v176);
      }

      ++v44;
      v125 = v190;
      if (v184 == v44)
      {
        goto LABEL_75;
      }
    }

    __break(1u);
LABEL_77:
    v161 = v106;
    sub_1000432C4((v121 > 1), v123, 1);
    v106 = v161;
    v104 = v191[0];
  }

  v45 = &_swiftEmptyArrayStorage;
LABEL_75:

  v148 = *(v45 + 16);

  v149 = v148 > 1;
  v150 = sub_100030480(&qword_100106F18, &qword_1000CADE0);
  v151 = swift_allocBox();
  v153 = v152;
  v154 = (v152 + v150[12]);
  v155 = v150[16];
  v156 = v150[20];
  (*(v125 + 16))(v152, v168, v176);
  v157 = v169;
  *v154 = v173;
  v154[1] = v157;
  *(v153 + v155) = v149;
  *(v153 + v156) = v189;
  v158 = v175;
  *v175 = v151;
  v159 = v181;
  v160 = v182;
  (*(v182 + 104))(v158, enum case for ICObjectReferences.attachment<A>(_:), v181);
  return (*(v160 + 56))(v158, 0, 1, v159);
}

void sub_10003A0B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = [*(a1 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_context) ic_existingObjectWithID:a2];
  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = v8;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {

LABEL_19:
    __break(1u);
    return;
  }

  v11 = v10;
  v12 = a1 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_configuration;
  swift_beginAccess();
  v13 = *(v12 + 32);
  if (v13 == 2 || (v13 & 1) == 0)
  {
    v16 = ICArchiveImporter.objects(forArchiveAt:)();
    if (!v4)
    {
      v17 = v16;
      if (a4)
      {
        v18 = a4;
      }

      else
      {
        v18 = [objc_allocWithZone(NSProgress) init];
      }

      v19 = a4;
      ICArchiveImporter.importObjects(_:fromArchiveAt:into:progress:)(v17, a3, v11, v18);
    }

    goto LABEL_12;
  }

  sub_1000B4D60();
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v9 = v9;
    sub_10003A308(a3, v15, 0, 1);

LABEL_12:
    return;
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {
    sub_10003A308(a3, 0, 0, 1);
    goto LABEL_12;
  }

  v21 = v20;
  v22 = v9;
  v9 = [v21 defaultFolder];
  sub_10003A308(a3, v9, 0, 1);
  if (v4)
  {

    goto LABEL_12;
  }
}

void sub_10003A308(uint64_t a1, char *a2, uint64_t a3, int a4)
{
  v6 = v5;
  v7 = v4;
  v74 = a4;
  v73 = a3;
  v10 = sub_1000B4DB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v76 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v81 = &v66 - v15;
  if (qword_100106A18 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v16 = sub_1000B5530();
    v80 = sub_100036380(v16, qword_100106DC0);
    v17 = sub_1000B5520();
    v18 = sub_1000B5910();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "starting markdown archive import", v19, 2u);
    }

    if (!a2 || (v20 = [a2 account]) == 0)
    {
      v20 = [objc_opt_self() localAccountInContext:*&v7[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_context]];
      if (!v20)
      {
        break;
      }
    }

    v21 = v20;
    v22 = [objc_opt_self() defaultManager];
    v23 = sub_1000B5900();
    if (v6)
    {

      goto LABEL_9;
    }

    v67 = a1;
    v68 = a2;
    v71 = v7;
    v72 = v11;
    v80 = v10;
    v70 = 0;
    v24 = v23;

    v25 = *(v24 + 16);
    v26 = _swiftEmptyArrayStorage;
    v75 = v24;
    v69 = v21;
    if (v25)
    {
      v82 = _swiftEmptyArrayStorage;
      sub_1000432C4(0, v25, 0);
      v26 = v82;
      v27 = *(v72 + 16);
      v28 = v24 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
      v77 = *(v72 + 72);
      v78 = v27;
      v79 = v72 + 16;
      v29 = (v72 + 8);
      do
      {
        v31 = v80;
        v30 = v81;
        v78(v81, v28, v80);
        v32 = sub_1000B4C90();
        v34 = v33;
        (*v29)(v30, v31);
        v82 = v26;
        v36 = v26[2];
        v35 = v26[3];
        v37 = v36 + 1;
        if (v36 >= v35 >> 1)
        {
          sub_1000432C4((v35 > 1), v36 + 1, 1);
          v26 = v82;
        }

        v26[2] = v37;
        v38 = &v26[2 * v36];
        v38[4] = v32;
        v38[5] = v34;
        v28 += v77;
        --v25;
      }

      while (v25);
      v21 = v69;
    }

    else
    {
      v37 = _swiftEmptyArrayStorage[2];
    }

    v41 = v26 + 5;
    v42 = v37 + 1;
    a2 = v71;
    v11 = v72;
    a1 = v80;
    while (--v42)
    {
      if (*(v41 - 1) != 25709 || *v41 != 0xE200000000000000)
      {
        v41 += 2;
        if ((sub_1000B5F20() & 1) == 0)
        {
          continue;
        }
      }

      v44 = v68;
      if (v68)
      {
        v45 = v68;
      }

      else
      {
        v45 = [v21 defaultFolder];
      }

      v50 = v67;
      v51 = v44;
      sub_10003F580(v50, v45);

      return;
    }

    v85 = 0;
    v83 = 0;
    v84 = 1;
    v46 = &a2[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_configuration];
    swift_beginAccess();
    if (v46[33] == 1)
    {
      sub_1000B4CE0();
      v47 = sub_1000B4CB0();
      if (v74)
      {
        v48 = v47;

        v49 = *(v48 + 16);

        v81 = 0;
        v83 = v49;
        v84 = 0;
      }

      else
      {
        v52 = v73;
        v83 = v73;
        v84 = 0;
        v53 = *(v47 + 16);

        if (__OFADD__(v52, 2))
        {
          __break(1u);
          return;
        }

        if (v52 + 2 >= v53)
        {
LABEL_44:

          v81 = 0;
          goto LABEL_45;
        }

        v54 = v68;
        if (v68)
        {
          v55 = sub_1000B55F0();
          v56 = [v54 visibleChildFolderWithTitle:v55];

          v85 = v56;
          v81 = v56;
          if (v56)
          {
            goto LABEL_40;
          }

          v57 = &selRef_newFolderInParentFolder_;
        }

        else
        {
          v58 = sub_1000B55F0();
          v59 = [v21 visibleRootFolderWithTitle:v58];

          v85 = v59;
          v81 = v59;
          if (v59)
          {
LABEL_40:

            goto LABEL_45;
          }

          v57 = &selRef_newFolderInAccount_;
          v54 = v21;
        }

        v85 = [objc_opt_self() *v57];
        v81 = v85;
        if (!v85)
        {
          goto LABEL_44;
        }

        v60 = sub_1000B55F0();

        v61 = v81;
        [v81 setTitle:v60];

        v62 = sub_1000B55F0();
        [v61 updateChangeCountWithReason:v62];
      }
    }

    else
    {
      v85 = v68;
      v81 = v68;
    }

LABEL_45:
    v6 = v70;
    v63 = v75;
    v7 = *(v75 + 16);
    if (!v7)
    {
LABEL_50:

      return;
    }

    v10 = 0;
    v64 = (v11 + 8);
    while (v10 < *(v63 + 16))
    {
      v65 = v76;
      (*(v11 + 16))(v76, v63 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v10, a1);
      sub_1000407AC(v65, a2, &v85, &v83);
      if (v6)
      {
        (*v64)(v65, a1);

        return;
      }

      ++v10;
      (*v64)(v65, a1);
      v63 = v75;
      if (v7 == v10)
      {
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_53:
    swift_once();
  }

  v22 = sub_1000B5520();
  v39 = sub_1000B5920();
  if (os_log_type_enabled(v22, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v22, v39, "no account found", v40, 2u);
  }

LABEL_9:
}

uint64_t ICArchiveImporter.importObjects(_:fromArchiveAt:into:progress:)(unint64_t a1, uint64_t a2, char *a3, void *a4)
{
  v5 = v4;
  v199 = a2;
  v179 = _s3TagVMa();
  v178 = *(v179 - 8);
  v9 = *(v178 + 64);
  __chkstk_darwin(v179);
  v181 = &v171 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v176 = &v171 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v180 = &v171 - v16;
  __chkstk_darwin(v15);
  v172 = (&v171 - v17);
  v184 = sub_1000B4EA0();
  v18 = *(v184 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v184);
  v185 = &v171 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v174 = &v171 - v23;
  __chkstk_darwin(v22);
  v173 = &v171 - v24;
  v25 = type metadata accessor for ICArchiveModel();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v187 = &v171 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_1000B4DB0();
  v188 = *(v189 - 8);
  v28 = *(v188 + 64);
  __chkstk_darwin(v189);
  v190 = &v171 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  ObjectType = *(v205 - 8);
  v30 = ObjectType[8];
  __chkstk_darwin(v205);
  v204 = &v171 - v31;
  v201 = sub_1000B5480();
  v200 = *(v201 - 8);
  v32 = *(v200 + 64);
  v33 = __chkstk_darwin(v201);
  v35 = &v171 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v37 = &v171 - v36;
  v38 = OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_isImporting;
  if (*(v5 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_isImporting))
  {
    __break(1u);
  }

  else
  {
    v175 = v18;
    v186 = v25;
    v196 = a1;
    v39 = [a3 managedObjectContext];
    if (!v39)
    {
      __break(1u);
    }

    v40 = v39;
    v41 = *(v5 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_context);
    sub_1000362AC(0, &qword_100106E40, NSManagedObjectContext_ptr);
    v42 = v41;
    v43 = sub_1000B5AA0();

    if (v43)
    {
      v171 = v42;
      *(v38 + v5) = 1;
      if (qword_100106A20 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_110;
    }
  }

  __break(1u);
LABEL_110:
  swift_once();
LABEL_5:
  v195 = a4;
  v194 = v38;
  v44 = sub_1000B54B0();
  sub_100036380(v44, qword_100106DD8);
  sub_1000B4CF0(&var20);
  sub_1000B54A0();
  sub_1000B5460();
  v45 = sub_1000B54A0();
  v46 = sub_1000B59E0();
  if (sub_1000B5AB0())
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = sub_1000B5470();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v45, v46, v48, "Import Objects from Archive", "", v47, 2u);
  }

  (*(v200 + 16))(v35, v37, v201);
  v49 = sub_1000B54F0();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  v192 = sub_1000B54E0();
  v52 = OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_errors;
  swift_beginAccess();
  v53 = *(v5 + v52);
  *(v5 + v52) = &_swiftEmptyDictionarySingleton;

  v207[3] = sub_1000362AC(0, &qword_100106E48, ICNoteContainer_ptr);
  v207[0] = a3;
  v54 = a3;
  v55 = sub_10003271C(v207);
  v57 = v56;
  sub_100035DA8(v207);
  v58 = v5 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_configuration;
  swift_beginAccess();
  v59 = *(v58 + 16);
  v177 = (v58 + 16);
  *(v58 + 16) = v55;
  v183 = v57;
  v182 = v58;
  *(v58 + 24) = v57;
  v197 = v55;

  v60 = v196;
  v61 = *(v196 + 16);
  v62 = _swiftEmptyArrayStorage;
  v198 = v37;
  if (v61)
  {
    v191 = v5;
    v206 = _swiftEmptyArrayStorage;
    sub_100043324(0, v61, 0);
    v62 = v206;
    v63 = (ObjectType + 2);
    ObjectType = ObjectType[2];
    a3 = (v60 + ((v63[64] + 32) & ~v63[64]));
    v202 = *(v63 + 7);
    v38 = (v63 - 8);
    do
    {
      v64 = v204;
      v65 = v205;
      (ObjectType)(v204, a3, v205);
      v66 = sub_1000B5060();
      (*v38)(v64, v65);
      v206 = v62;
      v5 = v62[2];
      v67 = v62[3];
      v68 = v5 + 1;
      if (v5 >= v67 >> 1)
      {
        sub_100043324((v67 > 1), v5 + 1, 1);
        v62 = v206;
      }

      v62[2] = v68;
      v62[v5 + 4] = v66;
      a3 = v202 + a3;
      --v61;
    }

    while (v61);
LABEL_15:
    v69 = 0;
    v70 = 4;
    do
    {
      v71 = v62[v70];
      v72 = __OFADD__(v69, v71);
      v69 += v71;
      if (v72)
      {
        __break(1u);
        goto LABEL_39;
      }

      ++v70;
      --v68;
    }

    while (v68);
    v5 = v191;
    goto LABEL_19;
  }

  v68 = _swiftEmptyArrayStorage[2];
  if (v68)
  {
    v191 = v5;
    goto LABEL_15;
  }

  v69 = 0;
LABEL_19:

  a3 = v194;
  v73 = v195;
  if (qword_100106A18 != -1)
  {
    swift_once();
  }

  v74 = sub_1000B5530();
  sub_100036380(v74, qword_100106DC0);
  v75 = sub_1000B5520();
  v76 = sub_1000B5910();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 134217984;
    *(v77 + 4) = v69;
    _os_log_impl(&_mh_execute_header, v75, v76, "Importing archive… {noteCount: %ld}", v77, 0xCu);
  }

  v78 = v193;
  sub_1000B58F0();
  v38 = v78;
  if (v78)
  {

    goto LABEL_26;
  }

  [v73 setTotalUnitCount:v69];
  v79 = *(v5 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_fileManager);
  v80 = *(v5 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_fileManager + 8);
  swift_getObjectType();
  v81 = v190;
  sub_1000B4D10();
  v82 = sub_1000B4FD0();
  v87 = v86;
  v205 = v82;
  (*(v188 + 8))(v81, v189);
  if (qword_100106A08 != -1)
  {
    goto LABEL_112;
  }

  while (1)
  {
    sub_100044D20(&qword_100106E50, type metadata accessor for ICArchiveModel);
    v69 = v187;
    v62 = v186;
    v88 = v205;
    sub_1000B4AA0();
    if (v38)
    {

      sub_1000449D4(v88, v87);
      goto LABEL_26;
    }

    v89 = *v69;
    v204 = v87;
    if (v89 > 1)
    {
      goto LABEL_120;
    }

    v90 = "inatorContext>8";
    if (v89)
    {
      v90 = "com.apple.notes.archive";
    }

    if ((v90 | 0x8000000000000000) == 0x80000001000C6820)
    {
    }

    else
    {
LABEL_120:
    {
LABEL_39:
      v91 = sub_1000B5F20();

      if ((v91 & 1) == 0)
      {
        v99 = sub_1000B5520();
        v100 = sub_1000B5920();
        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          *v101 = 0;
          _os_log_impl(&_mh_execute_header, v99, v100, "Notes archive specifies unknown type identifier — aborting", v101, 2u);
        }

        sub_1000363B8();
        swift_allocError();
        *v102 = 0;
        swift_willThrow();

        sub_1000449D4(v205, v204);
        sub_10004581C(v69, type metadata accessor for ICArchiveModel);
        goto LABEL_26;
      }
    }
    }

    v191 = v5;
    v92 = v181;
    if (*(v182 + 1) == 1)
    {
      v93 = v172;
      sub_100030C74(&v69[*(v62 + 6)], v172, &qword_100106E38, &unk_1000CB730);
      v94 = v175;
      v95 = v184;
      if ((*(v175 + 48))(v93, 1, v184) == 1)
      {
        sub_100036320(v93, &qword_100106E38, &unk_1000CB730);
        v96 = sub_1000B5520();
        v97 = sub_1000B5910();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          *v98 = 0;
          _os_log_impl(&_mh_execute_header, v96, v97, "Notes archive doesn't have a creation date — fallback back to configuration's timestamp offset", v98, 2u);
          v62 = v186;
        }
      }

      else
      {
        (*(v94 + 32))(v173, v93, v95);
        v103 = v174;
        sub_1000B4E90();
        sub_1000B4E10();
        v105 = v104;
        v106 = *(v94 + 8);
        v107 = v103;
        v92 = v181;
        v106(v107, v95);
        v106(v173, v95);
        *(v182 + 8) = v105;
      }
    }

    v108 = *&v69[*(v62 + 8)];
    if (!v108)
    {
      break;
    }

    v109 = (v108 + 56);
    v110 = 1 << *(v108 + 32);
    v111 = -1;
    if (v110 < 64)
    {
      v111 = ~(-1 << v110);
    }

    v5 = v111 & *(v108 + 56);
    v112 = (v110 + 63) >> 6;
    v193 = v183 + 8;
    v202 = (v175 + 48);
    v173 = (v175 + 32);
    v172 = (v175 + 56);
    v188 = v175 + 8;

    v114 = 0;
    v83 = v198;
    v190 = v109;
    v189 = v112;
    v199 = v113;
LABEL_55:
    if (v5)
    {
      goto LABEL_61;
    }

    v87 = v196;
    while (1)
    {
      v118 = v114 + 1;
      if (__OFADD__(v114, 1))
      {
        break;
      }

      if (v118 >= v112)
      {

        a3 = v194;
        goto LABEL_72;
      }

      v5 = *&v109[8 * v118];
      ++v114;
      if (v5)
      {
        v114 = v118;
LABEL_61:
        sub_1000361E0(*(v113 + 48) + *(v178 + 72) * (__clz(__rbit64(v5)) | (v114 << 6)), v92);
        v119 = *(v182 + 16);
        v208[0] = *v182;
        v208[1] = v119;
        v209 = *(v182 + 32);
        ObjectType = swift_getObjectType();
        v120 = (v92 + *(v179 + 20));
        v122 = *v120;
        v121 = v120[1];
        v123 = v183;
        v124 = *(v183 + 1);
        v210 = *v177;
        sub_100030C74(&v210, &v206, &qword_100106E58, &qword_1000CAB70);
        v125 = v124(v122, v121, v208, ObjectType, v123);
        if (!v38)
        {
          v126 = v125;
          a3 = v180;
          sub_100030C74(v92, v180, &qword_100106E38, &unk_1000CB730);
          v127 = *v202;
          v128 = v184;
          v129 = (*v202)(a3, 1, v184);
          v83 = v198;
          if (v129 == 1)
          {
            v130 = [v126 creationDate];
            if (v130)
            {
              v131 = v174;
              v132 = v130;
              sub_1000B4E70();

              ObjectType = v127;
              v133 = *v173;
              v134 = v176;
              v135 = v131;
              v115 = v184;
              (*v173)(v176, v135, v184);
              (*v172)(v134, 0, 1, v115);
              v136 = v134;
              a3 = v180;
              v133(v185, v136, v115);
              v137 = (ObjectType)(a3, 1, v115);
            }

            else
            {
              v138 = v176;
              v115 = v184;
              (*v172)(v176, 1, 1, v184);
              sub_1000B4E80();
              if (v127(v138, 1, v115) != 1)
              {
                sub_100036320(v176, &qword_100106E38, &unk_1000CB730);
              }

              v137 = v127(a3, 1, v115);
            }

            if (v137 != 1)
            {
              sub_100036320(a3, &qword_100106E38, &unk_1000CB730);
            }
          }

          else
          {
            (*v173)(v185, a3, v128);
            v115 = v128;
          }

          v5 &= v5 - 1;
          v116 = v185;
          isa = sub_1000B4E30().super.isa;
          (*v188)(v116, v115);
          [v126 setCreationDate:isa];

          sub_100044A28(v208);
          v92 = v181;
          sub_10004581C(v181, _s3TagVMa);
          v113 = v199;
          v109 = v190;
          v112 = v189;
          goto LABEL_55;
        }

        sub_1000449D4(v205, v204);
        sub_100044A28(v208);

        sub_10004581C(v92, _s3TagVMa);
        sub_10004581C(v187, type metadata accessor for ICArchiveModel);
        v5 = v191;
        a3 = v194;
LABEL_26:
        v83 = v198;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_112:
    swift_once();
  }

  v83 = v198;
  v87 = v196;
LABEL_72:
  v139 = v197;
  v5 = v191;
  v140 = sub_10003C728(v87, v197, v183, v195);
  if (v38)
  {

    sub_1000449D4(v205, v204);
    v141 = v187;
    goto LABEL_107;
  }

  v142 = v140;
  objc_opt_self();
  v143 = swift_dynamicCastObjCClass();
  if (!v143 || (v144 = *&v187[*(v186 + 36)]) == 0)
  {

    goto LABEL_103;
  }

  ObjectType = v143;
  v145 = _swiftEmptyArrayStorage;
  v206 = _swiftEmptyArrayStorage;
  v146 = *(v144 + 16);
  v147 = v139;
  v202 = v147;
  if (!v146)
  {
    goto LABEL_90;
  }

  v148 = 0;
  v149 = v144 + 40;
  v196 = v146 - 1;
  v199 = v144 + 40;
  do
  {
    v150 = (v149 + 16 * v148);
    v151 = v148;
    while (1)
    {
      if (v151 >= *(v144 + 16))
      {
        __break(1u);
        goto LABEL_114;
      }

      if (!*(v142 + 16))
      {
        goto LABEL_80;
      }

      v152 = *(v150 - 1);
      v153 = *v150;

      v154 = sub_10006320C(v152, v153);
      if (v155)
      {
        v156 = [*(*(v142 + 56) + 8 * v154) identifier];
        if (v156)
        {
          break;
        }
      }

LABEL_80:
      ++v151;
      v150 += 2;
      if (v146 == v151)
      {
        goto LABEL_90;
      }
    }

    v193 = v156;

    sub_1000B5780();
    if (*((v206 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v206 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v157 = *((v206 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1000B57C0();
    }

    v148 = v151 + 1;
    v147 = sub_1000B57F0();
    v145 = v206;
    v149 = v199;
  }

  while (v196 != v151);
LABEL_90:

  v147 = [ObjectType subFolderIdentifiersOrderedSet];
  if (v145 >> 62)
  {
    goto LABEL_116;
  }

  v158 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v147 = v147;
    v159 = v147;
    if (!v158)
    {
      break;
    }

    v160 = 0;
    v161 = v145 & 0xC000000000000001;
    v162 = v145 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v161)
      {
        v163 = v145;
        v147 = sub_1000B5C20();
      }

      else
      {
        if (v160 >= *(v162 + 16))
        {
          goto LABEL_115;
        }

        v163 = v145;
        v147 = *(v145 + 8 * v160 + 32);
      }

      v164 = v147;
      v145 = v160 + 1;
      if (__OFADD__(v160, 1))
      {
        break;
      }

      [v159 addObject:v147];

      ++v160;
      v165 = v145 == v158;
      v145 = v163;
      if (v165)
      {
        goto LABEL_102;
      }
    }

LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    v170 = v147;
    v158 = sub_1000B5CF0();
    v147 = v170;
  }

LABEL_102:

  v166 = ObjectType;
  [ObjectType setSubFolderOrderMergeableDataDirty:1];
  [v166 saveSubFolderMergeableDataIfNeeded];

  v5 = v191;
  a3 = v194;
  v83 = v198;
  v139 = v197;
LABEL_103:
  sub_1000B58F0();
  v167 = v187;
  v206 = 0;
  if ([v171 save:&v206])
  {
    v168 = v206;

    sub_1000449D4(v205, v204);
    sub_10004581C(v167, type metadata accessor for ICArchiveModel);
    v84 = v192;
    goto LABEL_28;
  }

  v169 = v206;
  sub_1000B4C70();

  swift_willThrow();
  sub_1000449D4(v205, v204);
  v141 = v167;
LABEL_107:
  sub_10004581C(v141, type metadata accessor for ICArchiveModel);
LABEL_27:
  v84 = v192;
LABEL_28:
  sub_10003C498(v84, "Import Objects from Archive");

  result = (*(v200 + 8))(v83, v201);
  a3[v5] = 0;
  return result;
}

uint64_t sub_10003C498(uint64_t a1, const char *a2)
{
  v20 = a2;
  v2 = sub_1000B54C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000B5480();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100106A20 != -1)
  {
    swift_once();
  }

  v12 = sub_1000B54B0();
  sub_100036380(v12, qword_100106DD8);
  v13 = sub_1000B54A0();
  sub_1000B54D0();
  v14 = sub_1000B59D0();
  if (sub_1000B5AB0())
  {

    sub_1000B5500();

    if ((*(v3 + 88))(v6, v2) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v6, v2);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_1000B5470();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v14, v17, v20, v15, v16, 2u);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10003C728(uint64_t a1, void *a2, char *a3, void *a4)
{
  v5 = v4;
  v61 = a4;
  v59 = a2;
  v60 = a3;
  v7 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v52 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    v66 = _swiftEmptyArrayStorage;
    v53 = v10;
    sub_100043304(0, v13, 0);
    v14 = v53;
    v65 = v66;
    v16 = *(v8 + 16);
    v15 = v8 + 16;
    v17 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v57 = (v15 - 8);
    v58 = v16;
    v54 = *(v15 + 56);
    v55 = v12;
    v56 = v15;
    while (1)
    {
      v63 = v13;
      v58(v12, v17, v14);
      v18 = sub_10003CB84(v12, v59, v60, v61);
      if (v5)
      {
        break;
      }

      v22 = v18;
      v23 = v19;
      v24 = v20;
      v25 = v21;
      v64 = 0;
      (*v57)(v12, v14);
      v26 = v65;
      v66 = v65;
      v28 = v65[2];
      v27 = v65[3];
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        sub_100043304((v27 > 1), v28 + 1, 1);
        v14 = v53;
        v29 = v28 + 1;
        v26 = v66;
      }

      v26[2] = v29;
      v65 = v26;
      v30 = &v26[4 * v28];
      v30[4] = v22;
      v30[5] = v23;
      v30[6] = v24;
      *(v30 + 56) = v25 & 1;
      v12 = v55;
      v17 += v54;
      v5 = v64;
      v13 = v63 - 1;
      if (v63 == 1)
      {
        v32 = v65;
        goto LABEL_11;
      }
    }

    (*v57)(v12, v14);
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
    v29 = _swiftEmptyArrayStorage[2];
    v65 = _swiftEmptyArrayStorage;
    if (v29)
    {
LABEL_11:
      v64 = v5;
      v33 = 0;
      v34 = v32 + 7;
      v65 = _swiftEmptyArrayStorage;
      v62 = v29 - 1;
      v63 = v32 + 7;
LABEL_12:
      v35 = &v34[4 * v33];
      v36 = v33;
      while (v36 < v32[2])
      {
        v37 = v29;
        v38 = *(v35 - 3);
        v33 = v36 + 1;
        if (*v35 != 1)
        {
          v39 = *(v35 - 1);
          v61 = *(v35 - 2);

          v40 = v39;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v60 = v40;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v65 = sub_10003372C(0, v65[2] + 1, 1, v65);
          }

          v43 = v65[2];
          v42 = v65[3];
          v44 = (v43 + 1);
          if (v43 >= v42 >> 1)
          {
            v59 = (v43 + 1);
            v49 = sub_10003372C((v42 > 1), v43 + 1, 1, v65);
            v44 = v59;
            v29 = v37;
            v65 = v49;
          }

          else
          {
            v29 = v37;
          }

          v45 = v65;
          v65[2] = v44;
          v46 = &v45[3 * v43];
          v47 = v60;
          v48 = v61;
          v46[4] = v38;
          v46[5] = v48;
          v46[6] = v47;
          v34 = v63;
          if (v62 == v36)
          {
LABEL_24:
            v5 = v64;
            goto LABEL_25;
          }

          goto LABEL_12;
        }

        v66 = *(v35 - 3);
        sub_100030480(&qword_100106EB8, &qword_1000CAD80);
        swift_willThrowTypedImpl();
        v35 += 32;
        ++v36;
        v29 = v37;
        if (v37 == v33)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_25:

      v50 = sub_10003E234(v65);

      if (v50[2])
      {
        sub_100030480(&qword_100106EF0, &unk_1000CADC0);
        v51 = sub_1000B5D20();
      }

      else
      {
        v51 = &_swiftEmptyDictionarySingleton;
      }

      v66 = v51;
      sub_100045418(v50, 1, &v66);
      if (!v5)
      {

        return v66;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10003CB84(uint64_t a1, void *a2, char *a3, void *a4)
{
  v170 = a1;
  v164 = a2;
  v165 = a3;
  v160 = type metadata accessor for ICAttachmentArchiveModel();
  v5 = *(*(v160 - 8) + 64);
  __chkstk_darwin(v160);
  v161 = (&v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v158 = type metadata accessor for ICNoteArchiveModel();
  v7 = *(*(v158 - 8) + 64);
  __chkstk_darwin(v158);
  v159 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for ICFolderArchiveModel(0);
  v9 = *(v162[-1].isa + 8);
  __chkstk_darwin(v162);
  v163 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v166 = *(v169 - 8);
  v11 = *(v166 + 64);
  v12 = __chkstk_darwin(v169);
  v14 = &v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = (&v146 - v15);
  v172 = sub_1000B4DB0();
  v167 = *(v172 - 8);
  v17 = *(v167 + 8);
  v18 = __chkstk_darwin(v172);
  v20 = &v146 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v146 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v146 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v146 - v28;
  __chkstk_darwin(v27);
  v31 = &v146 - v30;
  v32 = v171;
  sub_1000B58F0();
  if (v32)
  {
    return v23;
  }

  v151 = v16;
  v152 = v26;
  v149 = v23;
  v150 = v20;
  v154 = a4;
  v34 = *(v168 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_fileManager);
  v33 = *(v168 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_fileManager + 8);
  v156 = v14;
  v157 = v33;
  swift_getObjectType();
  v35 = v169;
  sub_1000B5040();
  sub_1000B4D10();
  v36 = v29;
  v37 = v35;
  v39 = v167 + 8;
  v38 = *(v167 + 1);
  v153 = v36;
  v38();
  v40 = sub_1000B4FD0();
  v171 = v38;
  v147 = v40;
  v148 = v41;
  v155 = v39;
  (v38)(v31, v172);
  v42 = v166;
  v43 = v151;
  (*(v166 + 16))(v151, v170, v37);
  v44 = (*(v42 + 88))(v43, v37);
  if (v44 == enum case for ICObjectReferences.account<A>(_:))
  {
    (*(v42 + 96))(v43, v37);
    v45 = *v43;
    v46 = sub_100030480(&qword_100106F38, &qword_1000CADF0);
    v47 = swift_projectBox();
    v48 = *(v47 + *(v46 + 64));
    v49 = v172;
    (*(v167 + 2))(v152, v47);
    v50 = qword_100106A08;

    if (v50 != -1)
    {
      swift_once();
    }

    sub_1000456B8();
    sub_1000B4AA0();
    v174[0] = v173[0];
    v174[1] = v173[1];
    v174[2] = v173[2];
    v174[3] = v173[3];
    v23 = sub_10003E380(v174, v48, v65, v164, v165, v154);
    (v171)(v152, v49);
    sub_1000449D4(v147, v148);

    sub_10004570C(v174);

    return v23;
  }

  v152 = v34;
  v51 = v172;
  v52 = v167;
  if (v44 == enum case for ICObjectReferences.folder<A>(_:))
  {
    (*(v42 + 96))(v43, v37);
    v53 = *v43;
    v54 = sub_100030480(&qword_100106F38, &qword_1000CADF0);
    v167 = v53;
    v55 = *(swift_projectBox() + *(v54 + 64));
    v56 = qword_100106A08;

    if (v56 != -1)
    {
      swift_once();
    }

    sub_100044D20(&qword_100106F40, type metadata accessor for ICFolderArchiveModel);
    sub_1000B4AA0();
    v73 = v168 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_configuration;
    swift_beginAccess();
    v74 = *(v73 + 16);
    v175[0] = *v73;
    v175[1] = v74;
    v176 = *(v73 + 32);
    v183 = v74;
    sub_100030C74(&v183, v173, &qword_100106E58, &qword_1000CAB70);
    v78 = sub_1000AC7FC(v164, v165, v175);
    sub_100044A28(v175);
    v79 = v78;
    v116 = sub_10003C728(v55, v79, &off_1000F6760, v154);

    v117 = sub_10003F310(v116, ICFolder_ptr, sub_100063F4C);

    v118 = v163;
    v138 = sub_1000ACBE4(v79, v117);

    sub_1000ACEB4(v79);

    sub_1000449D4(v147, v148);
    v23 = *(v118 + 8);
    v145 = *(v118 + 16);

    sub_10004581C(v118, type metadata accessor for ICFolderArchiveModel);

    return v23;
  }

  if (v44 == enum case for ICObjectReferences.note<A>(_:))
  {
    (*(v42 + 96))(v43, v37);
    v57 = *v43;
    v58 = sub_100030480(&qword_100106F28, &qword_1000CADE8);
    v163 = v57;
    v59 = swift_projectBox();
    v60 = *(v52 + 2);
    v61 = v51;
    v62 = *(v59 + *(v58 + 64));
    v60(v149, v59, v61);
    v63 = qword_100106A08;

    if (v63 != -1)
    {
      swift_once();
    }

    sub_100044D20(&qword_100106F30, type metadata accessor for ICNoteArchiveModel);
    v64 = v159;
    sub_1000B4AA0();
    v80 = sub_10003ECF0(v64, v62, v75, v164, v165, v154);
    sub_1000449D4(v147, v148);

    sub_10004581C(v64, type metadata accessor for ICNoteArchiveModel);
    (v171)(v149, v61);

    return v80;
  }

  if (v44 == enum case for ICObjectReferences.attachment<A>(_:))
  {
    (*(v42 + 96))(v43, v37);
    v66 = *v43;
    v67 = sub_100030480(&qword_100106F18, &qword_1000CADE0);
    v163 = v66;
    v68 = swift_projectBox();
    v69 = *(v68 + *(v67 + 80));
    (*(v52 + 2))(v150, v68, v51);
    v70 = qword_100106A08;
    v167 = v69;

    v71 = v156;
    if (v70 != -1)
    {
      swift_once();
    }

    sub_100044D20(&qword_100106F20, type metadata accessor for ICAttachmentArchiveModel);
    sub_1000B4AA0();
    v72 = v155;
    v76 = v168 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_configuration;
    swift_beginAccess();
    v77 = *(v76 + 16);
    v179[0] = *v76;
    v179[1] = v77;
    v180 = *(v76 + 32);
    v181 = v77;
    sub_100030C74(&v181, v173, &qword_100106E58, &qword_1000CAB70);
    v81 = sub_100067D68(v164, v165, v179);
    sub_100044A28(v179);
    v165 = v81;
    v119 = sub_10003C728(v167, v165, &off_1000F67D0, v154);

    v120 = sub_10003F310(v119, ICAttachment_ptr, sub_100064230);
    v167 = 0;

    v121 = v161;
    v122 = v171;
    v123 = v172;
    if (v161[11])
    {
      v124 = v161[10];
      v125 = v153;
      sub_1000B4D10();
      sub_1000B4CF0(v126);
      v128 = v127;

      v129 = v125;
      v123 = v172;
      (v122)(v129, v172);
    }

    v130 = (v121 + *(v160 + 88));
    if ((v130[2] & 1) == 0)
    {
    }

    v131 = *(v76 + 16);
    v177[0] = *v76;
    v177[1] = v131;
    v178 = *(v76 + 32);
    v182 = *(v76 + 16);
    sub_100030C74(&v182, v173, &qword_100106E58, &qword_1000CAB70);
    v132 = v165;
    v133 = v150;
    v134 = v167;
    sub_100068568(v165, v150, v120, v152, v157, v177);
    if (v134)
    {
      sub_100044A28(v177);

      v136 = v154;
      v137 = [v154 completedUnitCount];
      if (!__OFADD__(v137, 1))
      {
        [v136 setCompletedUnitCount:v137 + 1];
        sub_1000449D4(v147, v148);
        (v171)(v133, v123);
        sub_10004581C(v161, type metadata accessor for ICAttachmentArchiveModel);

        v23 = v134;
        *&v173[0] = v134;
        swift_errorRetain();
        sub_100030480(&qword_100106EB8, &qword_1000CAD80);
        sub_1000362AC(0, &qword_100106F08, NSError_ptr);
        if (!swift_dynamicCast())
        {
          goto LABEL_26;
        }

        v82 = v184;
        v83 = [v184 domain];
        v84 = sub_1000B5620();
        v86 = v85;

        if (v84 == sub_1000B5620() && v86 == v87)
        {

          v88 = v82;
        }

        else
        {
          v89 = sub_1000B5F20();

          v88 = v82;
          if ((v89 & 1) == 0)
          {
LABEL_25:

LABEL_26:
            v167 = 0;
            v90 = v72;

            if (qword_100106A18 != -1)
            {
              swift_once();
            }

            v91 = sub_1000B5530();
            sub_100036380(v91, qword_100106DC0);
            v92 = v166;
            v93 = v169;
            (*(v166 + 16))(v71, v170, v169);
            swift_errorRetain();
            v94 = sub_1000B5520();
            v95 = sub_1000B5920();

            if (os_log_type_enabled(v94, v95))
            {
              v96 = swift_slowAlloc();
              LODWORD(v163) = v95;
              v97 = v96;
              v98 = swift_slowAlloc();
              v155 = v90;
              v164 = v98;
              *&v173[0] = v98;
              *v97 = 136315394;
              swift_getErrorValue();
              v162 = v94;
              v99 = sub_1000B5F60();
              v101 = sub_100062B20(v99, v100, v173);

              *(v97 + 4) = v101;
              *(v97 + 12) = 2080;
              v165 = v134;
              v102 = v71;
              v103 = v153;
              sub_1000B5040();
              sub_100044D20(&qword_100106F10, &type metadata accessor for URL);
              v104 = v172;
              v105 = sub_1000B5EE0();
              v107 = v106;
              (v171)(v103, v104);
              v23 = v165;
              (*(v92 + 8))(v102, v93);
              v108 = sub_100062B20(v105, v107, v173);

              *(v97 + 14) = v108;
              v109 = v162;
              _os_log_impl(&_mh_execute_header, v162, v163, "Cannot import model {error: %s, containerID: %s}", v97, 0x16u);
              swift_arrayDestroy();
              v110 = v171;
            }

            else
            {

              (*(v92 + 8))(v71, v93);
              v103 = v153;
              v110 = v171;
            }

            sub_1000B5040();
            v111 = OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_errors;
            v112 = v168;
            swift_beginAccess();
            swift_errorRetain();
            v113 = *(v112 + v111);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v184 = *(v112 + v111);
            *(v112 + v111) = 0x8000000000000000;
            sub_1000656E8(v23, v103, isUniquelyReferenced_nonNull_native);
            (v110)(v103, v172);
            *(v112 + v111) = v184;
            swift_endAccess();
            [v154 setCompletedUnitCount:{objc_msgSend(v154, "totalUnitCount")}];
            return v23;
          }
        }

        if ([v88 code] == 3072)
        {

          swift_willThrow();

          return v23;
        }

        goto LABEL_25;
      }

      __break(1u);
    }

    else
    {
      v139 = v135;

      sub_100044A28(v177);
      v140 = v161;
      v141 = v161[1];
      v142 = v161[2];

      v143 = v154;
      v144 = [v154 completedUnitCount];
      if (!__OFADD__(v144, 1))
      {
        [v143 setCompletedUnitCount:v144 + 1];
        sub_1000449D4(v147, v148);
        (v171)(v150, v123);
        sub_10004581C(v140, type metadata accessor for ICAttachmentArchiveModel);

        return v141;
      }
    }

    __break(1u);
  }

  result = sub_1000B5F10();
  __break(1u);
  return result;
}

void *sub_10003E234(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000432E4(0, v1, 0);
    v3 = (a1 + 48);
    do
    {
      v4 = *v3;
      v11 = *(v3 - 2);
      v12 = *(v3 - 1);

      v5 = v4;
      sub_100030480(&qword_100106D48, &qword_1000CAAC0);
      sub_100030480(&qword_100106EF8, &qword_1000CADD0);
      swift_dynamicCast();
      v6 = v14;
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_1000432E4((v7 > 1), v8 + 1, 1);
        v6 = v14;
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[3 * v8];
      v9[4] = v13;
      *(v9 + 5) = v6;
      v3 += 3;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10003E380(uint64_t a1, unsigned int (**a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v103 = a2;
  v104 = a6;
  v10 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v99 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v102 = &v83 - v14;
  v100 = sub_1000B4EA0();
  v98 = *(v100 - 8);
  v15 = *(v98 + 64);
  v16 = __chkstk_darwin(v100);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v83 - v19;
  v21 = _s3TagVMa();
  v101 = *(v21 - 8);
  v22 = *(v101 + 64);
  __chkstk_darwin(v21);
  v24 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v6;
  v25 = &v6[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_configuration];
  swift_beginAccess();
  v26 = *(v25 + 1);
  v107[0] = *v25;
  v107[1] = v26;
  v108 = *(v25 + 16);
  v109 = v26;
  sub_100030C74(&v109, v106, &qword_100106E58, &qword_1000CAB70);
  v27 = a5;
  v28 = a1;
  v29 = v110;
  v30 = sub_1000566B0(a4, v27, v107);
  v31 = v29;
  sub_100044A28(v107);
  if (v29)
  {
    return v31;
  }

  v94 = v25;
  v110 = 0;
  v97 = v24;
  v95 = v21;
  v96 = v20;
  v93 = v18;
  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  if (!v33)
  {
    objc_opt_self();
    v38 = swift_dynamicCastObjCClass();
    v31 = v104;
    v39 = v103;
    if (!v38)
    {
      v44 = v28;
LABEL_35:
      v31 = *(v44 + 8);
      v82 = *(v44 + 16);

      return v31;
    }

    v40 = v38;
    v41 = v30;
    v42 = v110;
    v43 = sub_10003C728(v39, v40, &off_1000F6760, v31);
    if (v42)
    {

      return v31;
    }

    v47 = sub_10003F310(v43, ICFolder_ptr, sub_100063F4C);

    v44 = v28;
    v35 = sub_100056864(v40, v47);

    v110 = 0;

LABEL_34:

    goto LABEL_35;
  }

  v34 = v33;
  v35 = v30;
  v36 = v110;
  v37 = sub_10003C728(v103, v34, &off_1000F6728, v104);
  if (v36)
  {

    return v31;
  }

  v44 = v28;
  v105 = v30;
  v45 = sub_10003F310(v37, ICFolder_ptr, sub_100063F4C);

  v46 = sub_100056864(v34, v45);
  v110 = 0;
  v48 = v46;

  v49 = *(v28 + 48);
  if (!v49)
  {
    goto LABEL_34;
  }

  v92 = v34;
  v84 = v35;
  v50 = v49 + 56;
  v51 = 1 << *(v49 + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & *(v49 + 56);
  v54 = (v51 + 63) >> 6;
  v85 = "Cannot create hashtag";
  v103 = (v98 + 48);
  v87 = (v98 + 32);
  v86 = (v98 + 56);
  v98 += 8;

  v56 = 0;
  v57 = v97;
  v88 = v44;
  v91 = v54;
  v90 = v50;
  v89 = v55;
  while (v53)
  {
LABEL_23:
    sub_1000361E0(*(v55 + 48) + *(v101 + 72) * (__clz(__rbit64(v53)) | (v56 << 6)), v57);
    v62 = *v94;
    v63 = (v57 + *(v95 + 20));
    v64 = *v63;
    v65 = v63[1];
    v104 = v94[2];
    v66 = sub_1000B55F0();
    v67 = [objc_opt_self() hashtagWithDisplayText:v66 account:v92 createIfNecessary:1];

    if (!v67)
    {
      goto LABEL_37;
    }

    v68 = v67;
    v69 = v102;
    v70 = v67;
    if (v62)
    {
      v71 = sub_1000B55F0();
      [v67 setDisplayText:v71];

      [v67 unmarkForDeletion];
      v72 = sub_1000B55F0();
      [v67 updateChangeCountWithReason:v72];
    }

    sub_100030C74(v97, v69, &qword_100106E38, &unk_1000CB730);
    v73 = *v103;
    v74 = v100;
    if ((*v103)(v69, 1, v100) == 1)
    {
      v75 = [v67 creationDate];
      v59 = v88;
      if (v75)
      {
        v76 = v75;
        sub_1000B4E70();

        v77 = *v87;
        v78 = v99;
        (*v87)(v99, v93, v74);
        (*v86)(v78, 0, 1, v74);
        v79 = v78;
        v69 = v102;
        v77(v96, v79, v74);
        v70 = v68;
      }

      else
      {
        v80 = v99;
        (*v86)(v99, 1, 1, v74);
        sub_1000B4E80();
        if (v73(v80, 1, v74) != 1)
        {
          sub_100036320(v80, &qword_100106E38, &unk_1000CB730);
        }
      }

      v81 = v73(v69, 1, v74);
      v58 = v96;
      if (v81 != 1)
      {
        sub_100036320(v69, &qword_100106E38, &unk_1000CB730);
      }
    }

    else
    {
      v58 = v96;
      (*v87)(v96, v69, v74);
      v59 = v88;
    }

    v53 &= v53 - 1;
    isa = sub_1000B4E30().super.isa;
    (*v98)(v58, v74);
    [v70 setCreationDate:isa];

    v57 = v97;
    sub_10004581C(v97, _s3TagVMa);
    v44 = v59;
    v55 = v89;
    v50 = v90;
    v54 = v91;
  }

  while (1)
  {
    v61 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      break;
    }

    if (v61 >= v54)
    {

      v35 = v84;
      goto LABEL_34;
    }

    v53 = *(v50 + 8 * v61);
    ++v56;
    if (v53)
    {
      v56 = v61;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_37:
  result = sub_1000B5CE0();
  __break(1u);
  return result;
}

NSObject *sub_10003ECF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(void, void, void, void), void *a6)
{
  v7 = v6;
  v53 = a5;
  v52 = a4;
  v67 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v11 = *(v67 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v67);
  v14 = &v48 - v13;
  p_align = *(a2 + 16);
  isa = _swiftEmptyArrayStorage;
  v55 = a6;
  v50 = a2;
  if (p_align)
  {
    v51 = v7;
    v49 = a1;
    v60 = _swiftEmptyArrayStorage;
    sub_100043324(0, p_align, 0);
    isa = v60;
    v18 = *(v11 + 16);
    v17 = v11 + 16;
    v58 = v18;
    v19 = a2 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v57 = *(v17 + 56);
    v56 = (v17 - 8);
    do
    {
      v20 = v67;
      v21 = v17;
      v58(v14, v19, v67);
      v22 = sub_1000B5070();
      (*v56)(v14, v20);
      v60 = isa;
      v24 = *(isa + 2);
      v23 = *(isa + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        sub_100043324((v23 > 1), v24 + 1, 1);
        isa = v60;
      }

      *(isa + 2) = v25;
      *(isa + v24 + 4) = v22;
      v19 += v57;
      p_align = (p_align - 1);
      v17 = v21;
    }

    while (p_align);
    a1 = v49;
    v7 = v51;
  }

  else
  {
    v25 = _swiftEmptyArrayStorage[2];
    if (!v25)
    {
      goto LABEL_24;
    }
  }

  v26 = 0;
  v27 = 32;
  while (1)
  {
    v28 = *(isa + v27);
    v29 = __OFADD__(v26, v28);
    v26 += v28;
    if (v29)
    {
      break;
    }

    v27 += 8;
    if (!--v25)
    {
      while (1)
      {

        if (qword_100106A18 != -1)
        {
          swift_once();
        }

        v30 = sub_1000B5530();
        sub_100036380(v30, qword_100106DC0);
        v31 = sub_1000B5520();
        v32 = sub_1000B5910();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 134217984;
          *(v33 + 4) = v26;
          _os_log_impl(&_mh_execute_header, v31, v32, "Importing note… {attachmentCount: %ld}", v33, 0xCu);
        }

        result = (v26 + 1);
        if (__OFADD__(v26, 1))
        {
          break;
        }

        isa = sub_1000B58E0(result, 1).super.isa;
        v35 = v7 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_configuration;
        swift_beginAccess();
        v36 = *(v35 + 1);
        v63[0] = *v35;
        v63[1] = v36;
        v64 = *(v35 + 16);
        v65 = v36;
        sub_100030C74(&v65, v59, &qword_100106E58, &qword_1000CAB70);
        v37 = v54;
        v38 = sub_100045D38(v52, v53, v63);
        if (v37)
        {
          sub_100044A28(v63);
          v38 = [(objc_class *)isa completedUnitCount];
          v39 = &v38->isa + 1;
          if (!__OFADD__(v38, 1))
          {
            goto LABEL_26;
          }

          __break(1u);
        }

        v31 = v38;
        sub_100044A28(v63);
        v40 = v7;
        v7 = v31;
        v41 = sub_10003C728(v50, v7, &off_1000F6798, isa);
        if (!v37)
        {
          v51 = v40;
          v43 = v41;

          v44 = sub_10003F310(v43, ICAttachment_ptr, sub_100064230);

          v45 = *(v35 + 1);
          v61[0] = *v35;
          v61[1] = v45;
          v62 = *(v35 + 16);
          v66 = *(v35 + 1);
          sub_100030C74(&v66, v59, &qword_100106E58, &qword_1000CAB70);
          v46 = sub_100046FB8(v7, v44, v61);

          sub_100044A28(v61);
          sub_100047400(v7);

          p_align = &stru_100100FE8.align;
          sub_100041820([v55 completedUnitCount]);
          goto LABEL_28;
        }

        v42 = [(objc_class *)isa completedUnitCount];
        v39 = v42 + 1;
        if (!__OFADD__(v42, 1))
        {
          goto LABEL_26;
        }

        __break(1u);
LABEL_24:
        v26 = 0;
      }

      __break(1u);
      __break(1u);
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_28:
  v31 = *(a1 + 8);
  v47 = *(a1 + 16);

  result = [isa *(p_align + 287)];
  v39 = &result->isa + 1;
  if (!__OFADD__(result, 1))
  {
LABEL_26:
    [(objc_class *)isa setCompletedUnitCount:v39];

    return v31;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10003F310(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t))
{
  v37 = &_swiftEmptyDictionarySingleton;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v12 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        v17 = *(*(a1 + 56) + 8 * v13);
        v18 = *a2;
        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (result)
        {
          break;
        }

        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v35 = result;
      if (*(v37 + 3) <= *(v37 + 2))
      {
        v38 = *(v37 + 2);

        v22 = v17;
        a3(v38 + 1, 1);
        v21 = &_swiftEmptyDictionarySingleton;
      }

      else
      {

        v20 = v17;
        v21 = v37;
      }

      v37 = v21;
      v23 = *(v21 + 5);
      sub_1000B5FB0();
      sub_1000B56A0();
      result = sub_1000B5FE0();
      v24 = v37 + 64;
      v25 = -1 << v37[32];
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*&v37[8 * (v26 >> 6) + 64]) == 0)
      {
        break;
      }

      v28 = __clz(__rbit64((-1 << v26) & ~*&v37[8 * (v26 >> 6) + 64])) | v26 & 0x7FFFFFFFFFFFFFC0;
      v29 = v35;
LABEL_24:
      *&v24[(v28 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v28;
      v34 = (*(v37 + 6) + 16 * v28);
      *v34 = v15;
      v34[1] = v16;
      *(*(v37 + 7) + 8 * v28) = v29;
      ++*(v37 + 2);
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    v30 = 0;
    v31 = (63 - v25) >> 6;
    v29 = v35;
    while (++v27 != v31 || (v30 & 1) == 0)
    {
      v32 = v27 == v31;
      if (v27 == v31)
      {
        v27 = 0;
      }

      v30 |= v32;
      v33 = *&v24[8 * v27];
      if (v33 != -1)
      {
        v28 = __clz(__rbit64(~v33)) + (v27 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v19 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v19 >= v9)
      {

        return v37;
      }

      v8 = *(v5 + 8 * v19);
      ++v11;
      if (v8)
      {
        v11 = v19;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10003F580(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v110 = a2;
  v4 = sub_1000B52E0();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v98 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for NoteMetadata(0);
  v7 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97);
  v9 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1000B4F00();
  v113 = *(v109 - 8);
  v10 = *(v113 + 64);
  __chkstk_darwin(v109);
  v108 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1000B4DB0();
  v117 = *(v119 - 8);
  v12 = *(v117 + 64);
  v13 = __chkstk_darwin(v119);
  v103 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v106 = &v89 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v89 - v18;
  v20 = __chkstk_darwin(v17);
  v114 = &v89 - v21;
  __chkstk_darwin(v20);
  v23 = &v89 - v22;
  v24 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v107 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v118 = &v89 - v28;
  if (qword_100106A18 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v29 = sub_1000B5530();
    v112 = sub_100036380(v29, qword_100106DC0);
    v30 = sub_1000B5520();
    v31 = sub_1000B5910();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "importing a markdown note", v32, 2u);
    }

    v33 = objc_opt_self();
    v34 = &selRef_setAlignment_;
    v35 = [v33 defaultManager];
    v36 = sub_1000B5900();
    if (v3)
    {

      return;
    }

    v37 = v36;
    v96 = v19;
    v95 = v9;

    v120 = &_swiftEmptyArrayStorage;
    v38 = v117;
    (*(v117 + 56))(v118, 1, 1, v119);
    v39 = *(v37 + 16);
    if (!v39)
    {
      break;
    }

    v19 = 0;
    v116 = (v38 + 16);
    v9 = (v38 + 8);
    while (v19 < *(v37 + 16))
    {
      v40 = v34;
      v41 = v33;
      v42 = v119;
      (*(v117 + 16))(v23, v37 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v19, v119);
      sub_100040A3C(v23, &v120, v118);
      ++v19;
      (*v9)(v23, v42);
      v33 = v41;
      v34 = v40;
      v3 = 0;
      if (v39 == v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
  }

LABEL_10:

  v43 = v120;
  v104 = v120[2];
  if (v104)
  {
    v91 = v33;
    v100 = v115 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_configuration;
    swift_beginAccess();
    v19 = 0;
    v105 = v117 + 16;
    v102 = (v113 + 8);
    v101 = (v117 + 48);
    v93 = (v117 + 32);
    v9 = v114;
    v92 = v43;
    v112 = (v117 + 8);
    while (1)
    {
      if (v19 >= v43[2])
      {
        goto LABEL_49;
      }

      v44 = v43;
      (*(v117 + 16))(v9, v43 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v19, v119);
      v45 = sub_1000B4DC0();
      v47 = v46;
      v111 = v19;
      v48 = objc_opt_self();
      v115 = v47;
      v49 = v108;
      sub_1000B4EF0();
      isa = sub_1000B4ED0().super.isa;
      v51 = v49;
      v52 = v115;
      (*v102)(v51, v109);
      v53 = [v48 newEmptyNoteWithUUID:isa folder:v110];

      sub_1000457C8(v45, v52);
      sub_1000447F8(v45, v52);
      v113 = v45;
      if (!v54)
      {
        v123 = v45;
        v124 = v52;
        sub_1000457C8(v45, v52);
        sub_100030480(&qword_100106F90, &qword_1000CAE28);
        if (swift_dynamicCast())
        {
          sub_10004589C(v121, &v125);
          sub_1000458B4(&v125, *(&v126 + 1));
          if (sub_1000B5D40())
          {
            sub_1000449D4(v113, v115);
            sub_1000458B4(&v125, *(&v126 + 1));
            sub_1000B5D30();
            sub_100035DA8(&v125);
            goto LABEL_21;
          }

          sub_100035DA8(&v125);
          v52 = v115;
          v45 = v113;
        }

        else
        {
          v122 = 0;
          memset(v121, 0, sizeof(v121));
          sub_100036320(v121, &qword_100106F98, &qword_1000CAE30);
        }

        sub_100044080(v45, v52);
      }

      sub_1000449D4(v45, v52);
LABEL_21:
      v55 = objc_allocWithZone(ICMarkdownRepresentation);
      v56 = sub_1000B55F0();

      *&v125 = 0;
      v57 = [v55 initWithPlainMarkdown:v56 error:&v125];

      v43 = v44;
      if (!v57)
      {
        v88 = v125;
        sub_1000B4C70();

        swift_willThrow();
        sub_1000449D4(v113, v115);
        (*v112)(v114, v119);
        goto LABEL_47;
      }

      v58 = v125;
      v59 = [v57 createRenderableAttributedString];
      v60 = [v53 textStorage];
      v116 = v59;
      if (v60)
      {
        v61 = v60;
        v62 = [objc_allocWithZone(ICTextController) init];
        [v61 setStyler:v62];
        [v61 setConvertAttributes:1];
        [v61 replaceCharactersInRange:0 withAttributedString:{0, v116}];
        [v61 setConvertAttributes:0];
        [v61 setStyler:0];
      }

      v63 = v107;
      sub_100030C74(v118, v107, &qword_100106F88, &qword_1000CAE20);
      if ((*v101)(v63, 1, v119) == 1)
      {
        sub_100036320(v63, &qword_100106F88, &qword_1000CAE20);
        v64 = v112;
      }

      else
      {
        v65 = v96;
        (*v93)(v96, v63, v119);
        sub_100044DBC(v53, v65);
        v64 = v112;
        (*v112)(v65, v119);
      }

      if (*(v100 + 33) != 1)
      {
        goto LABEL_39;
      }

      v99 = v53;
      v66 = v114;
      if (sub_1000B4CE0() == 0x646D2E65746F6ELL && v67 == 0xE700000000000000)
      {

LABEL_32:
        v94 = v57;
        v69 = v103;
        sub_1000B4D30();
        v70 = v106;
        sub_1000B4D10();
        v71 = v112;
        v72 = *v112;
        v73 = v119;
        (*v112)(v69, v119);
        LOBYTE(v121[0]) = 0;
        v74 = [v91 v34[267]];
        sub_1000B4D90();
        v75 = sub_1000B55F0();

        v76 = [v74 fileExistsAtPath:v75 isDirectory:v121];

        if (v76)
        {
          v77 = v72;
          v78 = sub_1000B4DC0();
          v80 = v79;
          v127 = 0;
          v125 = 0u;
          v126 = 0u;
          sub_1000457C8(v78, v79);
          sub_1000B52D0();
          sub_100044D20(&qword_100106FA0, type metadata accessor for NoteMetadata);
          sub_1000B5380();
          v53 = v99;
          v57 = v94;
          v90 = v80;
          v81 = [v99 managedObjectContext];
          v43 = v92;
          if (v81)
          {
            v82 = v81;
            v83 = __chkstk_darwin(v81);
            *(&v89 - 4) = v95;
            *(&v89 - 3) = v53;
            *(&v89 - 2) = v83;
            sub_1000B5A60();
            v77(v106, v119);
            sub_1000449D4(v78, v90);
          }

          else
          {
            v77(v106, v119);
            sub_1000449D4(v78, v90);
          }

          sub_10004581C(v95, type metadata accessor for NoteMetadata);
          v64 = v112;
LABEL_39:
          v84 = v113;
        }

        else
        {
          v72(v70, v73);
          v43 = v92;
          v64 = v71;
          v84 = v113;
          v53 = v99;
          v57 = v94;
        }

        v66 = v114;
        goto LABEL_41;
      }

      v68 = sub_1000B5F20();

      if (v68)
      {
        goto LABEL_32;
      }

      v64 = v112;
      v84 = v113;
      v53 = v99;
LABEL_41:
      v23 = v111 + 1;
      [v53 save];

      v19 = v23;
      sub_1000449D4(v84, v115);
      (*v64)(v66, v119);
      v9 = v66;
      if (v104 == v23)
      {
        goto LABEL_47;
      }
    }
  }

  v85 = sub_1000B5520();
  v86 = sub_1000B5920();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    *v87 = 0;
    _os_log_impl(&_mh_execute_header, v85, v86, "could not find markdown file URLs", v87, 2u);
  }

LABEL_47:
  sub_100036320(v118, &qword_100106F88, &qword_1000CAE20);
}

void sub_1000407AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v23[0] = a3;
  v23[7] = a2;
  v7 = sub_1000B4C40();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100106A18 != -1)
  {
    swift_once();
  }

  v12 = sub_1000B5530();
  sub_100036380(v12, qword_100106DC0);
  v13 = sub_1000B5520();
  v14 = sub_1000B5910();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "found a folder", v15, 2u);
  }

  sub_100030480(&qword_100106F80, &qword_1000CAE18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000CAB50;
  *(inited + 32) = NSURLIsDirectoryKey;
  v17 = NSURLIsDirectoryKey;
  sub_100087A60(inited);
  swift_setDeallocating();
  sub_10004581C(inited + 32, type metadata accessor for URLResourceKey);
  sub_1000B4CC0();

  if (!v4)
  {
    v18 = sub_1000B4C20();
    (*(v8 + 8))(v11, v7);
    if (v18 != 2 && (v18 & 1) != 0)
    {
      v19 = *v23[0];
      v20 = *a4;
      v21 = *(a4 + 8);
      v22 = *v23[0];
      sub_10003A308(a1, v19, v20, v21);
    }
  }
}

uint64_t sub_100040A3C(uint64_t a1, void **a2, uint64_t a3)
{
  v6 = sub_1000B4C40();
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000B4DB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1000B4C90() == 25709 && v15 == 0xE200000000000000)
  {

LABEL_5:
    (*(v11 + 16))(v14, a1, v10);
    v17 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_100033874(0, v17[2] + 1, 1, v17);
      *a2 = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = sub_100033874(v19 > 1, v20 + 1, 1, v17);
      *a2 = v17;
    }

    v17[2] = v20 + 1;
    return (*(v11 + 32))(v17 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20, v14, v10);
  }

  v28 = a3;
  v16 = sub_1000B5F20();

  if (v16)
  {
    goto LABEL_5;
  }

  sub_100030480(&qword_100106F80, &qword_1000CAE18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000CAB50;
  *(inited + 32) = NSURLIsDirectoryKey;
  v23 = NSURLIsDirectoryKey;
  sub_100087A60(inited);
  swift_setDeallocating();
  sub_10004581C(inited + 32, type metadata accessor for URLResourceKey);
  v24 = v30;
  sub_1000B4CC0();

  if (!v24)
  {
    v25 = sub_1000B4C20();
    result = (*(v29 + 8))(v9, v6);
    if (v25 != 2 && (v25 & 1) != 0)
    {
      v26 = v28;
      sub_100036320(v28, &qword_100106F88, &qword_1000CAE20);
      (*(v11 + 16))(v26, a1, v10);
      return (*(v11 + 56))(v26, 0, 1, v10);
    }
  }

  return result;
}

uint64_t sub_100040DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v86 = a3;
  v87 = a8;
  v89 = a7;
  v93 = a5;
  v94 = a6;
  v85 = a2;
  v9 = sub_100030480(&qword_100106FA8, &qword_1000CAE38);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v84 - v11;
  v13 = sub_1000B4C40();
  v14 = *(v13 - 8);
  v91 = v13;
  v92 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v90 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000B4DB0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v88 = &v84 - v24;
  __chkstk_darwin(v23);
  v26 = &v84 - v25;
  v27 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v31 = &v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v84 - v32;
  sub_100030C74(a1, v95, &qword_100106E30, &unk_1000CAB60);
  if (v96)
  {
    v34 = swift_dynamicCast();
    v35 = *(v18 + 56);
    v35(v33, v34 ^ 1u, 1, v17);
    if ((*(v18 + 48))(v33, 1, v17) != 1)
    {
      v36 = sub_1000B4D80(1);
      v38 = v37;
      result = (*(v18 + 8))(v33, v17);
      v97 = v36;
      if (!v38)
      {
        return result;
      }

LABEL_12:
      sub_1000B4D30();
      v35(v31, 0, 1, v17);
      sub_1000B4CD0();

      sub_100036320(v31, &qword_100106F88, &qword_1000CAE20);
      v40 = sub_1000B4D80(1);
      v42 = sub_10008FEE8(v40, v41, v94);

      if (v42)
      {
        sub_100030480(&qword_100106F80, &qword_1000CAE18);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1000CAB50;
        *(inited + 32) = NSURLTotalFileSizeKey;
        v44 = NSURLTotalFileSizeKey;
        sub_100087A60(inited);
        swift_setDeallocating();
        sub_10004581C(inited + 32, type metadata accessor for URLResourceKey);
        sub_1000B4CC0();

        v46 = v91;
        v45 = v92;
        (*(v92 + 56))(v12, 0, 1, v91);
        v47 = v90;
        (*(v45 + 32))(v90, v12, v46);
        v48 = sub_1000B4C30();
        if (v49)
        {
          (*(v45 + 8))(v47, v46);
          if (qword_100106A18 != -1)
          {
            swift_once();
          }

          v50 = sub_1000B5530();
          sub_100036380(v50, qword_100106DC0);
          (*(v18 + 16))(v22, v26, v17);
          v51 = sub_1000B5520();
          v52 = sub_1000B5920();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            v94 = v26;
            v55 = v54;
            v95[0] = v54;
            *v53 = 136315138;
            v56 = sub_1000B4D80(1);
            v58 = v57;
            v59 = *(v18 + 8);
            v59(v22, v17);
            v60 = sub_100062B20(v56, v58, v95);

            *(v53 + 4) = v60;
            _os_log_impl(&_mh_execute_header, v51, v52, "Unable to import attachment at path %s because unable to get file size.", v53, 0xCu);
            sub_100035DA8(v55);

            return (v59)(v94, v17);
          }

          v61 = *(v18 + 8);
          v61(v22, v17);
          return (v61)(v26, v17);
        }

        v62 = v89;
        if ([v89 attachmentExceedsMaxSizeAllowed:v48])
        {
          if (qword_100106A18 != -1)
          {
            swift_once();
          }

          v64 = sub_1000B5530();
          sub_100036380(v64, qword_100106DC0);
          v65 = v88;
          (*(v18 + 16))(v88, v26, v17);
          v66 = sub_1000B5520();
          v67 = sub_1000B5920();
          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            v94 = v26;
            v70 = v69;
            v95[0] = v69;
            *v68 = 136315138;
            v71 = sub_1000B4D80(1);
            v72 = v65;
            v74 = v73;
            v75 = *(v18 + 8);
            v75(v72, v17);
            v76 = sub_100062B20(v71, v74, v95);

            *(v68 + 4) = v76;
            _os_log_impl(&_mh_execute_header, v66, v67, "Unable to import attachment at path %s because it exceeds maximum allowed size in note.", v68, 0xCu);
            sub_100035DA8(v70);

            (*(v92 + 8))(v90, v46);
            return (v75)(v94, v17);
          }

          v61 = *(v18 + 8);
          v61(v65, v17);
          (*(v92 + 8))(v47, v46);
          return (v61)(v26, v17);
        }

        sub_1000B4CF0(v63);
        v78 = v77;
        v79 = [v62 addAttachmentWithFileURL:v77];

        if (v79)
        {
          v80 = [objc_allocWithZone(ICTextAttachment) initWithAttachment:v79];
          v81 = [objc_opt_self() attributedStringWithAttachment:v80];
          v82 = [v81 ic_range];
          [v87 ic_replaceCharactersInRange:v85 withAttributedSubstring:v86 fromRange:{v81, v82, v83}];

          v47 = v90;
        }

        [v62 save];
        (*(v45 + 8))(v47, v46);
      }

      return (*(v18 + 8))(v26, v17);
    }
  }

  else
  {
    sub_100036320(v95, &qword_100106E30, &unk_1000CAB60);
    v35 = *(v18 + 56);
    v35(v33, 1, 1, v17);
  }

  sub_100036320(v33, &qword_100106F88, &qword_1000CAE20);
  sub_100030C74(a1, v95, &qword_100106E30, &unk_1000CAB60);
  if (!v96)
  {
    return sub_100036320(v95, &qword_100106E30, &unk_1000CAB60);
  }

  result = swift_dynamicCast();
  if (!result)
  {
    v97 = 0;
    v98 = 0;
    return result;
  }

  if (v98)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_100041820(uint64_t result)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_didReceiveMemoryWarning;
  if ((v1[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_didReceiveMemoryWarning] & 1) != 0 || (result & 0x1F) == 0)
  {
    if (qword_100106A18 == -1)
    {
      goto LABEL_4;
    }

    while (1)
    {
      swift_once();
LABEL_4:
      v4 = sub_1000B5530();
      sub_100036380(v4, qword_100106DC0);
      v5 = sub_1000B5520();
      v6 = sub_1000B5910();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Saving batch of imported notes and resetting inserted objects…", v7, 2u);
      }

      v8 = *&v2[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_context];
      v9 = [v8 insertedObjects];
      sub_1000362AC(0, &qword_100106F50, NSManagedObject_ptr);
      sub_100045760();
      v10 = sub_1000B5830();

      v28[0] = 0;
      if (![v8 save:v28])
      {
        v15 = v28[0];

        sub_1000B4C70();

        return swift_willThrow();
      }

      v26 = v3;
      v27 = v2;
      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = v28[0];

        sub_1000B5B50();
        sub_1000B5860();
        v10 = v28[1];
        v12 = v28[2];
        v13 = v28[3];
        v2 = v28[4];
        v14 = v28[5];
      }

      else
      {
        v16 = -1 << *(v10 + 32);
        v12 = (v10 + 56);
        v13 = ~v16;
        v17 = -v16;
        v18 = v17 < 64 ? ~(-1 << v17) : -1;
        v14 = (v18 & *(v10 + 56));
        v19 = v28[0];

        v2 = 0;
      }

      v25 = v13;
      v3 = (v13 + 64) >> 6;
      if (v10 < 0)
      {
        break;
      }

LABEL_15:
      v20 = v2;
      v21 = v14;
      v22 = v2;
      if (v14)
      {
LABEL_19:
        v23 = (v21 - 1) & v21;
        v24 = *(*(v10 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
        if (v24)
        {
          goto LABEL_23;
        }

        goto LABEL_25;
      }

      while (1)
      {
        v22 = (v20 + 1);
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v22 >= v3)
        {
          goto LABEL_25;
        }

        v21 = v12[v22];
        ++v20;
        if (v21)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
    }

    while (sub_1000B5BB0())
    {
      swift_dynamicCast();
      v24 = v28[0];
      v22 = v2;
      v23 = v14;
      if (!v28[0])
      {
        break;
      }

LABEL_23:
      [v8 refreshObject:v24 mergeChanges:{0, v25}];

      v2 = v22;
      v14 = v23;
      if ((v10 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }
    }

LABEL_25:
    sub_100035A5C();

    v27[v26] = 0;
  }

  return result;
}

void sub_100041BB4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_didReceiveMemoryWarning] = 1;
  }
}

void *sub_100041C10(uint64_t a1, uint64_t a2)
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

  sub_100030480(&qword_100106FB0, &unk_1000CC360);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

Swift::Int sub_100041C84(void **a1)
{
  v2 = *(sub_100030480(&qword_100106AE0, &unk_1000CA340) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100044634(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100041D38(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100041D38(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1000B5ED0(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_100030480(&qword_100106AE0, &unk_1000CA340);
        v6 = sub_1000B57E0();
        v6[2] = v5;
      }

      v7 = *(sub_100030480(&qword_100106AE0, &unk_1000CA340) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100042118(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100041E7C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100041E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v41 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v45 = &v31 - v13;
  result = __chkstk_darwin(v12);
  v44 = &v31 - v16;
  v33 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v42 = *(v15 + 16);
    v43 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v20 = v17 + v18 * (a3 - 1);
    v38 = -v18;
    v39 = (v15 + 32);
    v21 = a1 - a3;
    v40 = v17;
    v32 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v36 = v20;
    v37 = a3;
    v34 = v22;
    v35 = v21;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v22, v8);
      v25 = v45;
      v24(v45, v20, v8);
      sub_100036470();
      v26 = sub_1000B55D0();
      v27 = *v19;
      (*v19)(v25, v8);
      result = v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v20 = v36 + v32;
        v21 = v35 - 1;
        v22 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v28)(v20, v29, v8);
      v20 += v38;
      v22 += v38;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100042118(int64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v122 = a1;
  v9 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v126 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v134 = &v119 - v15;
  v16 = __chkstk_darwin(v14);
  v139 = &v119 - v17;
  result = __chkstk_darwin(v16);
  v140 = &v119 - v19;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = &_swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v122;
    if (!*v122)
    {
      goto LABEL_134;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_10004313C(a4);
    }

    v142 = result;
    v114 = *(result + 16);
    if (v114 >= 2)
    {
      while (*a3)
      {
        a4 = v114 - 1;
        v115 = *(result + 16 * v114);
        v116 = result;
        v117 = *(result + 16 * (v114 - 1) + 40);
        sub_100042B14(*a3 + v10[9] * v115, *a3 + v10[9] * *(result + 16 * (v114 - 1) + 32), *a3 + v10[9] * v117, v5);
        if (v6)
        {
        }

        if (v117 < v115)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_10004313C(v116);
        }

        if (v114 - 2 >= *(v116 + 2))
        {
          goto LABEL_122;
        }

        v118 = &v116[16 * v114];
        *v118 = v115;
        *(v118 + 1) = v117;
        v142 = v116;
        sub_1000430B0(a4);
        result = v142;
        v114 = *(v142 + 16);
        if (v114 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v21 = 0;
  v137 = (v10 + 1);
  v138 = v10 + 2;
  v136 = (v10 + 4);
  v22 = &_swiftEmptyArrayStorage;
  v124 = a3;
  v121 = a4;
  v141 = v9;
  v120 = v10;
  while (1)
  {
    v23 = v21;
    v127 = v22;
    if (v21 + 1 >= v20)
    {
      v37 = v21 + 1;
    }

    else
    {
      v132 = v20;
      v24 = v9;
      v25 = *a3;
      v26 = v10;
      v27 = v10[9];
      v5 = v25 + v27 * (v21 + 1);
      v128 = v25;
      v28 = v26[2];
      v28(v140, v5, v24);
      v29 = v25 + v27 * v23;
      v30 = v26;
      v123 = v23;
      v31 = v139;
      v131 = v28;
      v28(v139, v29, v24);
      v32 = sub_100036470();
      v33 = v140;
      v130 = v32;
      LODWORD(v133) = sub_1000B55D0();
      v34 = v30[1];
      v34(v31, v24);
      v129 = v34;
      result = (v34)(v33, v24);
      v35 = v123 + 2;
      v135 = v27;
      v36 = v128 + v27 * (v123 + 2);
      while (1)
      {
        v37 = v132;
        if (v132 == v35)
        {
          break;
        }

        v39 = v140;
        v38 = v141;
        v40 = v131;
        (v131)(v140, v36, v141);
        v41 = v6;
        v42 = v139;
        v40(v139, v5, v38);
        v43 = sub_1000B55D0() & 1;
        v44 = v42;
        v6 = v41;
        v45 = v129;
        v129(v44, v38);
        result = v45(v39, v38);
        ++v35;
        v36 += v135;
        v5 += v135;
        if ((v133 & 1) != v43)
        {
          v37 = v35 - 1;
          break;
        }
      }

      v23 = v123;
      a3 = v124;
      v10 = v120;
      v22 = v127;
      a4 = v121;
      v9 = v141;
      if (v133)
      {
        if (v37 < v123)
        {
          goto LABEL_125;
        }

        if (v123 < v37)
        {
          v46 = v135 * (v37 - 1);
          v5 = v37 * v135;
          v132 = v37;
          v47 = v37;
          v48 = v123;
          v49 = v123 * v135;
          do
          {
            if (v48 != --v47)
            {
              v51 = *a3;
              if (!v51)
              {
                goto LABEL_131;
              }

              v133 = *v136;
              (v133)(v126, v51 + v49, v141, v22);
              if (v49 < v46 || v51 + v49 >= v51 + v5)
              {
                v50 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v50 = v141;
                if (v49 != v46)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v133)(v51 + v46, v126, v50);
              a3 = v124;
              v22 = v127;
            }

            ++v48;
            v46 -= v135;
            v5 -= v135;
            v49 += v135;
          }

          while (v48 < v47);
          v10 = v120;
          a4 = v121;
          v9 = v141;
          v23 = v123;
          v37 = v132;
        }
      }
    }

    v52 = a3[1];
    if (v37 < v52)
    {
      if (__OFSUB__(v37, v23))
      {
        goto LABEL_124;
      }

      if (v37 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_126;
        }

        if ((v23 + a4) >= v52)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v23 + a4;
        }

        if (v5 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v37 != v5)
        {
          break;
        }
      }
    }

    v5 = v37;
    if (v37 < v23)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v127;
    }

    else
    {
      result = sub_1000334D0(0, *(v127 + 2) + 1, 1, v127);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v53 = *(v22 + 3);
    v54 = a4 + 1;
    if (a4 >= v53 >> 1)
    {
      result = sub_1000334D0((v53 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v54;
    v55 = &v22[16 * a4];
    *(v55 + 4) = v23;
    *(v55 + 5) = v5;
    v56 = *v122;
    if (!*v122)
    {
      goto LABEL_133;
    }

    v128 = v5;
    if (a4)
    {
      while (1)
      {
        v5 = v54 - 1;
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v57 = *(v22 + 4);
          v58 = *(v22 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_112;
          }

          v73 = &v22[16 * v54];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_115;
          }

          v79 = &v22[16 * v5 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_119;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v5 = v54 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v22[16 * v54];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_114;
        }

        v86 = &v22[16 * v5];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_117;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v5 - 1;
        if (v5 - 1 >= v54)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v94 = v22;
        v95 = *&v22[16 * a4 + 32];
        v96 = *&v22[16 * v5 + 40];
        sub_100042B14(*a3 + v10[9] * v95, *a3 + v10[9] * *&v22[16 * v5 + 32], *a3 + v10[9] * v96, v56);
        if (v6)
        {
        }

        if (v96 < v95)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_10004313C(v94);
        }

        if (a4 >= *(v94 + 2))
        {
          goto LABEL_109;
        }

        v97 = &v94[16 * a4];
        *(v97 + 4) = v95;
        *(v97 + 5) = v96;
        v142 = v94;
        result = sub_1000430B0(v5);
        v22 = v142;
        v54 = *(v142 + 16);
        if (v54 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v22[16 * v54 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_110;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_111;
      }

      v68 = &v22[16 * v54];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_113;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_116;
      }

      if (v72 >= v64)
      {
        v90 = &v22[16 * v5 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_120;
        }

        if (v59 < v93)
        {
          v5 = v54 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = a3[1];
    v21 = v128;
    a4 = v121;
    v9 = v141;
    if (v128 >= v20)
    {
      goto LABEL_95;
    }
  }

  v119 = v6;
  v98 = *a3;
  v99 = v10[9];
  v135 = v10[2];
  v100 = v98 + v99 * (v37 - 1);
  v101 = v23;
  v102 = -v99;
  v123 = v101;
  v103 = v101 - v37;
  v133 = v98;
  v125 = v99;
  a4 = v98 + v37 * v99;
  v128 = v5;
LABEL_85:
  v131 = v100;
  v132 = v37;
  v129 = a4;
  v130 = v103;
  v104 = v100;
  while (1)
  {
    v105 = v140;
    v106 = v135;
    (v135)(v140, a4, v9, v22);
    v107 = v139;
    v106(v139, v104, v141);
    sub_100036470();
    v108 = sub_1000B55D0();
    v109 = *v137;
    v110 = v107;
    v9 = v141;
    (*v137)(v110, v141);
    result = v109(v105, v9);
    if ((v108 & 1) == 0)
    {
LABEL_84:
      v37 = v132 + 1;
      v100 = &v131[v125];
      v103 = v130 - 1;
      a4 = v129 + v125;
      v5 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v6 = v119;
      v23 = v123;
      a3 = v124;
      v10 = v120;
      if (v128 < v123)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v111 = *v136;
    v112 = v134;
    (*v136)(v134, a4, v9);
    swift_arrayInitWithTakeFrontToBack();
    v111(v104, v112, v9);
    v104 += v102;
    a4 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_100042B14(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v57 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v8 = *(v57 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v57);
  v55 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v54 = &v45 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_63;
  }

  v56 = a3;
  v17 = (a2 - a1) / v15;
  v60 = a1;
  v59 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v29 = a4 + v19;
    if (v19 >= 1)
    {
      v30 = -v15;
      v49 = (v8 + 8);
      v50 = (v8 + 16);
      v31 = a4 + v19;
      v32 = v56;
      v47 = a1;
      v48 = a4;
      v51 = v30;
      do
      {
        v45 = v29;
        v33 = a2 + v30;
        v34 = v29;
        v52 = a2;
        v53 = a2 + v30;
        while (1)
        {
          if (a2 <= a1)
          {
            v60 = a2;
            v29 = v45;
            goto LABEL_59;
          }

          v36 = v32;
          v46 = v34;
          v56 = v32 + v30;
          v37 = v31 + v30;
          v38 = *v50;
          v39 = v54;
          v40 = v31 + v30;
          v41 = v31;
          v42 = v57;
          (*v50)(v54, v40, v57);
          v43 = v55;
          (v38)(v55, v33, v42);
          sub_100036470();
          LOBYTE(v38) = sub_1000B55D0();
          v44 = *v49;
          (*v49)(v43, v42);
          v44(v39, v42);
          if (v38)
          {
            break;
          }

          v34 = v37;
          v32 = v56;
          if (v36 < v41 || v56 >= v41)
          {
            swift_arrayInitWithTakeFrontToBack();
            v33 = v53;
            a1 = v47;
          }

          else
          {
            v33 = v53;
            a1 = v47;
            if (v36 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v31 = v37;
          v35 = v37 > v48;
          v30 = v51;
          a2 = v52;
          if (!v35)
          {
            v29 = v34;
            goto LABEL_58;
          }
        }

        v32 = v56;
        if (v36 < v52 || v56 >= v52)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v47;
          v31 = v41;
        }

        else
        {
          a2 = v53;
          a1 = v47;
          v31 = v41;
          if (v36 != v52)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v29 = v46;
        v30 = v51;
      }

      while (v31 > v48);
    }

LABEL_58:
    v60 = a2;
LABEL_59:
    v58 = v29;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v53 = a4 + v18;
    v58 = a4 + v18;
    if (v18 >= 1 && a2 < v56)
    {
      v51 = *(v8 + 16);
      v52 = v8 + 16;
      v49 = v15;
      v50 = (v8 + 8);
      do
      {
        v21 = v54;
        v22 = v57;
        v23 = v51;
        v51(v54, a2, v57);
        v24 = v55;
        v23(v55, a4, v22);
        sub_100036470();
        v25 = sub_1000B55D0();
        v26 = *v50;
        (*v50)(v24, v22);
        v26(v21, v22);
        if (v25)
        {
          v27 = v49;
          if (a1 < a2 || a1 >= v49 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v27;
        }

        else
        {
          v27 = v49;
          v28 = v49 + a4;
          if (a1 < a4 || a1 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v59 = v28;
          a4 += v27;
        }

        a1 += v27;
        v60 = a1;
      }

      while (a4 < v53 && a2 < v56);
    }
  }

  sub_100043150(&v60, &v59, &v58);
  return 1;
}

uint64_t sub_1000430B0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10004313C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_100043150(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

size_t sub_100043240(size_t a1, int64_t a2, char a3)
{
  result = sub_100043A84(a1, a2, a3, *v3, &qword_100106EE8, &unk_1000CADB0, &qword_100106AD8, &unk_1000CA330);
  *v3 = result;
  return result;
}

size_t sub_100043280(size_t a1, int64_t a2, char a3)
{
  result = sub_100043DA0(a1, a2, a3, *v3, &qword_100106D60, &unk_1000CAE40, &type metadata accessor for URL);
  *v3 = result;
  return result;
}

char *sub_1000432C4(char *a1, int64_t a2, char a3)
{
  result = sub_1000434F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000432E4(void *a1, int64_t a2, char a3)
{
  result = sub_100043600(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100043304(void *a1, int64_t a2, char a3)
{
  result = sub_100043748(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100043324(char *a1, int64_t a2, char a3)
{
  result = sub_10004387C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100043344(char *a1, int64_t a2, char a3)
{
  result = sub_100043980(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100043364(size_t a1, int64_t a2, char a3)
{
  result = sub_100043DA0(a1, a2, a3, *v3, &qword_100106ED8, &unk_1000CADA0, _s8ActivityVMa);
  *v3 = result;
  return result;
}

size_t sub_1000433A8(size_t a1, int64_t a2, char a3)
{
  result = sub_100043DA0(a1, a2, a3, *v3, &qword_100106CF0, &qword_1000CAA60, _s3TagVMa);
  *v3 = result;
  return result;
}

size_t sub_1000433EC(size_t a1, int64_t a2, char a3)
{
  result = sub_100043DA0(a1, a2, a3, *v3, &qword_100106ED0, &qword_1000CAD98, _s14AudioRecordingV8FragmentVMa);
  *v3 = result;
  return result;
}

size_t sub_100043430(size_t a1, int64_t a2, char a3)
{
  result = sub_100043A84(a1, a2, a3, *v3, &qword_100106CF8, &qword_1000CAA68, &qword_100106D00, &qword_1000CAA70);
  *v3 = result;
  return result;
}

void *sub_100043470(void *a1, int64_t a2, char a3)
{
  result = sub_100043C6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100043490(size_t a1, int64_t a2, char a3)
{
  result = sub_100043DA0(a1, a2, a3, *v3, &qword_100106EC8, &qword_1000CAD90, _s14AudioRecordingV17TranscriptSegmentVMa);
  *v3 = result;
  return result;
}

char *sub_1000434D4(char *a1, int64_t a2, char a3)
{
  result = sub_100043F7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000434F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100030480(&qword_100106CE8, &qword_1000CAD70);
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

void *sub_100043600(void *result, int64_t a2, char a3, void *a4)
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
    sub_100030480(&qword_100106F00, &qword_1000CADD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100030480(&qword_100106EF8, &qword_1000CADD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100043748(void *result, int64_t a2, char a3, void *a4)
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
    sub_100030480(&qword_100106F68, &qword_1000CAE00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100030480(&qword_100106F70, &qword_1000CAE08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004387C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100030480(&qword_100106F78, &qword_1000CAE10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100043980(char *result, int64_t a2, char a3, char *a4)
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
    sub_100030480(&qword_100106F60, &qword_1000CADF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_100043A84(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100030480(a5, a6);
  v16 = *(sub_100030480(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_100030480(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_100043C6C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100030480(&qword_100106EB0, &qword_1000CAD78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100030480(&qword_100106E30, &unk_1000CAB60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100043DA0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100030480(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_100043F7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100030480(&qword_100106EC0, &qword_1000CAD88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_100044080(uint64_t a1, unint64_t a2)
{
  sub_1000457C8(a1, a2);
  v4 = *(sub_10004467C(a1, a2) + 2);
  v5 = sub_1000B5690();

  return v5;
}

uint64_t sub_1000440EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000B5690();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_100044128(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, char a5)
{
  v10 = a4;
  v11 = type metadata accessor for ICArchiveImporter();
  v12 = objc_allocWithZone(v11);
  v12[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_isImporting] = 0;
  v13 = OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_errors;
  *&v12[v13] = sub_100030190(&_swiftEmptyArrayStorage);
  *&v12[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_saveBatchSize] = 32;
  v12[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_didReceiveMemoryWarning] = 0;
  v14 = &v12[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_didReceiveMemoryWarningObserver];
  *v14 = 0u;
  v14[1] = 0u;
  *&v12[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_context] = a1;
  if (v10 == 2 || (a4 & 1) == 0)
  {
    v23 = &v12[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_configuration];
    v24 = *(a2 + 32);
    v25 = *(a2 + 16);
    *v23 = *a2;
    *(v23 + 1) = v25;
    *(v23 + 16) = v24;
    v26 = a1;
    sub_100045B98(a2, v31);
  }

  else
  {
    v15 = a1;
    IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v17 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v18 = &v12[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_configuration];
    *v18 = IsAlexandriaDemoModeEnabled;
    v18[1] = v17;
    *(v18 + 2) = 0;
    *(v18 + 3) = 0;
    *(v18 + 1) = 0;
    v18[32] = 1;
    v18[33] = a5;
    if (qword_100106A18 != -1)
    {
      swift_once();
    }

    v19 = sub_1000B5530();
    sub_100036380(v19, qword_100106DC0);
    v20 = sub_1000B5520();
    v21 = sub_1000B5910();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "archiver init", v22, 2u);
    }
  }

  v27 = &v12[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_fileManager];
  *v27 = a3;
  v27[1] = &protocol witness table for NSFileManager;
  v30.receiver = v12;
  v30.super_class = v11;
  v28 = objc_msgSendSuper2(&v30, "init");
  sub_100037400();
  sub_100044A28(a2);

  return v28;
}

id sub_10004436C(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, char a5, Class a6, uint64_t a7, uint64_t a8)
{
  v15 = objc_allocWithZone(a6);

  return sub_1000443F4(a1, a2, a3, a4, a5, v15, a7, a8);
}

id sub_1000443F4(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, char a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  v15 = a4;
  ObjectType = swift_getObjectType();
  a6[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_isImporting] = 0;
  v17 = OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_errors;
  *&a6[v17] = sub_100030190(&_swiftEmptyArrayStorage);
  *&a6[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_saveBatchSize] = 32;
  a6[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_didReceiveMemoryWarning] = 0;
  v18 = &a6[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_didReceiveMemoryWarningObserver];
  *v18 = 0u;
  v18[1] = 0u;
  *&a6[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_context] = a1;
  if (v15 == 2 || (a4 & 1) == 0)
  {
    v27 = &a6[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_configuration];
    v28 = *(a2 + 16);
    *v27 = *a2;
    *(v27 + 1) = v28;
    *(v27 + 16) = *(a2 + 32);
    v29 = a1;
    sub_100045B98(a2, v34);
  }

  else
  {
    v19 = a1;
    IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v21 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v22 = &a6[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_configuration];
    *v22 = IsAlexandriaDemoModeEnabled;
    v22[1] = v21;
    *(v22 + 2) = 0;
    *(v22 + 3) = 0;
    *(v22 + 1) = 0;
    v22[32] = 1;
    v22[33] = a5;
    if (qword_100106A18 != -1)
    {
      swift_once();
    }

    v23 = sub_1000B5530();
    sub_100036380(v23, qword_100106DC0);
    v24 = sub_1000B5520();
    v25 = sub_1000B5910();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "archiver init", v26, 2u);
    }
  }

  v30 = &a6[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_fileManager];
  *v30 = a3;
  v30[1] = a8;
  v33.receiver = a6;
  v33.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v33, "init");
  sub_100037400();
  sub_100044A28(a2);

  return v31;
}

void *sub_10004467C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000B4E00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_1000449D4(a1, a2);
      return &_swiftEmptyArrayStorage;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_100041C10(v11, 0);
      v15 = sub_1000B4DD0();
      sub_1000449D4(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_1000447F8(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_1000B5690();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return sub_1000B5690();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_1000B4B80();
  if (a1)
  {
    a1 = sub_1000B4BA0();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_1000B4B80() || !__OFSUB__(v5, sub_1000B4BA0()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_1000B4B90();
  return sub_1000B5690();
}

unint64_t sub_1000449A4(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000449D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_100044A5C()
{
  result = qword_100106E60;
  if (!qword_100106E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100106E60);
  }

  return result;
}

unint64_t sub_100044AB8()
{
  result = qword_100106E68;
  if (!qword_100106E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100106E68);
  }

  return result;
}

unint64_t sub_100044B10()
{
  result = qword_100106E70;
  if (!qword_100106E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100106E70);
  }

  return result;
}

unint64_t sub_100044B68()
{
  result = qword_100106E78;
  if (!qword_100106E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100106E78);
  }

  return result;
}

unint64_t sub_100044BC0()
{
  result = qword_100106E80;
  if (!qword_100106E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100106E80);
  }

  return result;
}

__n128 sub_100044C38(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100044C4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 34))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_100044CA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_100044D20(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100044D68()
{
  result = qword_100106EE0;
  if (!qword_100106EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100106EE0);
  }

  return result;
}

void sub_100044DBC(void *a1, uint64_t a2)
{
  v62 = a1;
  v4 = sub_1000B4DB0();
  v70 = *(v4 - 8);
  v5 = *(v70 + 64);
  v6 = __chkstk_darwin(v4);
  v7 = __chkstk_darwin(v6);
  v9 = &v59 - v8;
  __chkstk_darwin(v7);
  v11 = &v59 - v10;
  v12 = [objc_opt_self() defaultManager];
  v13 = sub_1000B5900();

  if (!v2)
  {
    v66 = v9;
    v59 = a2;
    v60 = v5;
    v69 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v72 = v4;
    v61 = 0;
    v68 = *(v13 + 16);
    if (v68)
    {
      v14 = 0;
      v67 = (v70 + 16);
      v64 = (v70 + 32);
      v15 = (v70 + 8);
      v65 = &_swiftEmptyArrayStorage;
      v16 = v72;
      while (1)
      {
        if (v14 >= *(v13 + 16))
        {
          __break(1u);
          return;
        }

        v17 = (*(v70 + 80) + 32) & ~*(v70 + 80);
        v18 = *(v70 + 72);
        (*(v70 + 16))(v11, v13 + v17 + v18 * v14, v16);
        if (sub_1000B4C90() == 1852797802 && v19 == 0xE400000000000000)
        {
        }

        else
        {
          v20 = sub_1000B5F20();

          if ((v20 & 1) == 0)
          {
            v21 = *v64;
            (*v64)(v66, v11, v16);
            v22 = v65;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            aBlock[0] = v22;
            v63 = v21;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_100043280(0, v22[2] + 1, 1);
              v22 = aBlock[0];
            }

            v25 = v22[2];
            v24 = v22[3];
            if (v25 >= v24 >> 1)
            {
              sub_100043280(v24 > 1, v25 + 1, 1);
              v22 = aBlock[0];
            }

            v22[2] = v25 + 1;
            v65 = v22;
            v26 = v22 + v17 + v25 * v18;
            v16 = v72;
            v63(v26);
            goto LABEL_6;
          }
        }

        (*v15)(v11, v16);
LABEL_6:
        if (v68 == ++v14)
        {
          goto LABEL_17;
        }
      }
    }

    v65 = &_swiftEmptyArrayStorage;
    v16 = v72;
LABEL_17:

    v27 = v65[2];
    if (v27)
    {
      aBlock[0] = &_swiftEmptyArrayStorage;
      v28 = v65;
      sub_1000432C4(0, v27, 0);
      v29 = aBlock[0];
      v30 = *(v70 + 16);
      v31 = v28 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
      v66 = *(v70 + 72);
      v67 = v30;
      v68 = (v70 + 16);
      v32 = (v70 + 8);
      do
      {
        v33 = v69;
        v34 = v72;
        v67(v69, v31, v72);
        v35 = sub_1000B4D80(1);
        v37 = v36;
        (*v32)(v33, v34);
        aBlock[0] = v29;
        v39 = v29[2];
        v38 = v29[3];
        if (v39 >= v38 >> 1)
        {
          sub_1000432C4((v38 > 1), v39 + 1, 1);
          v29 = aBlock[0];
        }

        v29[2] = v39 + 1;
        v40 = &v29[2 * v39];
        *(v40 + 4) = v35;
        *(v40 + 5) = v37;
        v31 = &v66[v31];
        --v27;
      }

      while (v27);

      v16 = v72;
    }

    else
    {

      v29 = &_swiftEmptyArrayStorage;
    }

    v41 = sub_100087C54(v29);

    v42 = v62;
    v43 = [v62 textStorage];
    v44 = v60;
    if (v43)
    {
      v68 = NSLinkAttributeName;
      v65 = v43;
      v45 = [v43 ic_range];
      v66 = v46;
      v67 = v45;
      v47 = v69;
      v48 = v70;
      (*(v70 + 16))(v69, v59, v16);
      v49 = (*(v48 + 80) + 16) & ~*(v48 + 80);
      v50 = (v44 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
      v51 = (v50 + 15) & 0xFFFFFFFFFFFFFFF8;
      v52 = swift_allocObject();
      (*(v48 + 32))(v52 + v49, v47, v72);
      *(v52 + v50) = v41;
      *(v52 + v51) = v42;
      v53 = v65;
      *(v52 + ((v51 + 15) & 0xFFFFFFFFFFFFFFF8)) = v65;
      v54 = swift_allocObject();
      *(v54 + 16) = sub_1000459BC;
      *(v54 + 24) = v52;
      aBlock[4] = sub_100045AA8;
      aBlock[5] = v54;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000905D8;
      aBlock[3] = &unk_1000F3FE0;
      v55 = _Block_copy(aBlock);
      v56 = v42;
      v57 = v53;

      [v57 enumerateAttribute:v68 inRange:v67 options:v66 usingBlock:{2, v55}];

      _Block_release(v55);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
    }
  }
}

void sub_100045418(void *a1, char a2, void *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return;
  }

  LOBYTE(i) = a2;
  v6 = a1;
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v10 = *a3;

  v11 = v9;
  v12 = sub_10006320C(v8, v7);
  v14 = v10[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v18) = v13;
  if (v10[3] < v17)
  {
    sub_100063F38(v17, i & 1);
    v19 = *a3;
    v12 = sub_10006320C(v8, v7);
    if ((v18 & 1) == (v20 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v12 = sub_1000B5F50();
    __break(1u);
  }

  if (i)
  {
LABEL_7:
    v21 = *a3;
    if (v18)
    {
      goto LABEL_8;
    }

LABEL_11:
    v21[(v12 >> 6) + 8] |= 1 << v12;
    v27 = (v21[6] + 16 * v12);
    *v27 = v8;
    v27[1] = v7;
    *(v21[7] + 8 * v12) = v11;
    v28 = v21[2];
    v16 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v16)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v21[2] = v29;
    v18 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return;
  }

  v26 = v12;
  sub_10005C0DC();
  v12 = v26;
  v21 = *a3;
  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v22 = v12;
  v23 = *(v21[7] + 8 * v12);

  v24 = v21[7];
  v25 = *(v24 + 8 * v22);
  *(v24 + 8 * v22) = v23;

  v18 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    for (i = (v6 + 72); ; i += 3)
    {
      v11 = *(i - 2);
      v6 = *(i - 1);
      v34 = *i;
      v35 = *a3;

      v7 = v34;
      v36 = sub_10006320C(v11, v6);
      v38 = v35[2];
      v39 = (v37 & 1) == 0;
      v16 = __OFADD__(v38, v39);
      v40 = v38 + v39;
      if (v16)
      {
        break;
      }

      v8 = v37;
      if (v35[3] < v40)
      {
        sub_100063F38(v40, 1);
        v41 = *a3;
        v36 = sub_10006320C(v11, v6);
        if ((v8 & 1) != (v42 & 1))
        {
          goto LABEL_5;
        }
      }

      v3 = *a3;
      if (v8)
      {
        v30 = v36;
        v31 = *(v3[7] + 8 * v36);

        v32 = v3[7];
        v33 = *(v32 + 8 * v30);
        *(v32 + 8 * v30) = v31;
      }

      else
      {
        v3[(v36 >> 6) + 8] |= 1 << v36;
        v43 = (v3[6] + 16 * v36);
        *v43 = v11;
        v43[1] = v6;
        *(v3[7] + 8 * v36) = v7;
        v44 = v3[2];
        v16 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (v16)
        {
          goto LABEL_24;
        }

        v3[2] = v45;
      }

      if (!--v18)
      {
        return;
      }
    }

    goto LABEL_23;
  }
}

unint64_t sub_1000456B8()
{
  result = qword_100106F48;
  if (!qword_100106F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100106F48);
  }

  return result;
}

unint64_t sub_100045760()
{
  result = qword_100106F58;
  if (!qword_100106F58)
  {
    sub_1000362AC(255, &qword_100106F50, NSManagedObject_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100106F58);
  }

  return result;
}

uint64_t sub_1000457C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10004581C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10004589C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_1000458B4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000458F8()
{
  v1 = sub_1000B4DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return _swift_deallocObject(v0, v7 + 8, v3 | 7);
}

uint64_t sub_1000459BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_1000B4DB0() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v4 + v11);
  v14 = *(v4 + v12);
  v15 = *(v4 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100040DD4(a1, a2, a3, a4, v4 + v10, v13, v14, v15);
}

uint64_t sub_100045AB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100045AE8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100045B28(uint64_t a1, uint64_t a2)
{
  v4 = sub_100030480(&qword_100106E30, &unk_1000CAB60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::Int sub_100045BF4()
{
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

id sub_100045D38(uint64_t a1, uint64_t (**a2)(void, void, void, void), void *a3)
{
  v176 = a3;
  v181 = a2;
  v183 = sub_1000B4F00();
  v179 = *(v183 - 8);
  v4 = *(v179 + 64);
  __chkstk_darwin(v183);
  v178 = v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100030480(&qword_100107008, &qword_1000CAE80);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v177 = v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v182 = v157 - v10;
  v11 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v169 = v157 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v174 = v157 - v16;
  v17 = __chkstk_darwin(v15);
  v168 = v157 - v18;
  v19 = __chkstk_darwin(v17);
  v172 = v157 - v20;
  v21 = __chkstk_darwin(v19);
  v167 = v157 - v22;
  v23 = __chkstk_darwin(v21);
  v173 = v157 - v24;
  v25 = __chkstk_darwin(v23);
  v166 = v157 - v26;
  v27 = __chkstk_darwin(v25);
  v171 = v157 - v28;
  v29 = __chkstk_darwin(v27);
  v175 = (v157 - v30);
  v31 = __chkstk_darwin(v29);
  v165 = v157 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = v157 - v34;
  __chkstk_darwin(v33);
  v164 = v157 - v36;
  v163 = sub_1000B4EA0();
  v180 = *(v163 - 8);
  v37 = *(v180 + 64);
  v38 = __chkstk_darwin(v163);
  v40 = v157 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v38);
  v43 = v157 - v42;
  v44 = __chkstk_darwin(v41);
  v46 = v157 - v45;
  v47 = __chkstk_darwin(v44);
  v49 = v157 - v48;
  __chkstk_darwin(v47);
  v51 = v157 - v50;
  ObjectType = swift_getObjectType();
  v53 = v3;
  v54 = v184;
  result = (v181)[4](*(v53 + 8), *(v53 + 16), v176, ObjectType);
  if (!v54)
  {
    v158 = v43;
    v159 = v46;
    v160 = v35;
    v162 = v40;
    v181 = result;
    v157[1] = 0;
    v184 = type metadata accessor for ICNoteArchiveModel();
    v56 = v164;
    sub_100030C74(v3 + *(v184 + 40), v164, &qword_100106E38, &unk_1000CB730);
    v57 = v180;
    v58 = *(v180 + 48);
    v59 = v163;
    v60 = v58(v56, 1, v163);
    v161 = v53;
    v170 = v58;
    if (v60 == 1)
    {
      sub_1000B4E90();
      v61 = v58(v56, 1, v59);
      v62 = v181;
      v63 = v176;
      if (v61 != 1)
      {
        sub_100036320(v56, &qword_100106E38, &unk_1000CB730);
      }
    }

    else
    {
      (*(v57 + 32))(v49, v56, v59);
      v62 = v181;
      v63 = v176;
    }

    v64 = v63[1];
    sub_1000B4E40();
    v65 = v180;
    v66 = *(v180 + 8);
    v66(v49, v59);
    isa = sub_1000B4E30().super.isa;
    v176 = v66;
    v66(v51, v59);
    v68 = v62;
    [v62 setCreationDate:isa];

    v69 = v161;
    v70 = v160;
    sub_100030C74(v161 + *(v184 + 44), v160, &qword_100106E38, &unk_1000CB730);
    v71 = v170;
    if (v170(v70, 1, v59) == 1)
    {
      v72 = v158;
      sub_1000B4E90();
      if (v71(v70, 1, v59) != 1)
      {
        sub_100036320(v70, &qword_100106E38, &unk_1000CB730);
      }
    }

    else
    {
      v72 = v158;
      (*(v65 + 32))(v158, v70, v59);
    }

    v73 = v159;
    sub_1000B4E40();
    v74 = v176;
    (v176)(v72, v59);
    v75 = sub_1000B4E30().super.isa;
    v74(v73, v59);
    v76 = v68;
    [v68 setModificationDate:v75];

    v77 = (v69 + *(v184 + 48));
    if (v77[1])
    {
      v78 = *v77;
      v79 = sub_1000B55F0();
    }

    else
    {
      v79 = 0;
    }

    [v68 setTitle:v79];

    v80 = v184;
    [v68 setIsPinned:*(v69 + *(v184 + 52)) & 1];
    [v68 setIsSystemPaper:*(v69 + v80[14]) & 1];
    [v68 setPaperStyleType:word_1000DF034[*(v69 + v80[15])]];
    v81 = *(v69 + v80[16]);
    if (v81)
    {
      v82 = 2;
    }

    else
    {
      v82 = 1;
    }

    if (v81 == 2)
    {
      v83 = 0;
    }

    else
    {
      v83 = v82;
    }

    [v68 setPreferredBackgroundType:v83];
    v84 = *(v69 + v80[17]);
    v85 = v165;
    if (v84 > 1)
    {
      if (v84 == 2)
      {
        v86 = 2;
      }

      else
      {
        v86 = [v68 attachmentViewType];
      }
    }

    else
    {
      v86 = v84 != 0;
    }

    [v68 setAttachmentViewType:v86];
    v87 = (v69 + *(v184 + 72));
    if (v87[1])
    {
      v88 = *v87;
      v89 = sub_1000B55F0();
    }

    else
    {
      v89 = 0;
    }

    [v68 setHostApplicationIdentifier:v89];

    v90 = v175;
    sub_100030C74(v69 + *(v184 + 76), v175, &qword_100106E38, &unk_1000CB730);
    v91 = 1;
    if (v71(v90, 1, v59) != 1)
    {
      v92 = v162;
      (*(v180 + 32))(v162, v90, v59);
      sub_1000B4E40();
      (v176)(v92, v59);
      v91 = 0;
    }

    v175 = *(v180 + 56);
    (v175)(v85, v91, 1, v59);
    if (v71(v85, 1, v59) == 1)
    {
      v93 = 0;
    }

    else
    {
      v93 = sub_1000B4E30().super.isa;
      (v176)(v85, v59);
    }

    [v76 setLastOpenedDate:v93];

    v94 = v166;
    sub_100030C74(v69 + *(v184 + 80), v166, &qword_100106E38, &unk_1000CB730);
    v95 = 1;
    if (v71(v94, 1, v59) != 1)
    {
      v96 = v162;
      (*(v180 + 32))(v162, v94, v59);
      sub_1000B4E40();
      (v176)(v96, v59);
      v95 = 0;
    }

    v97 = v171;
    (v175)(v171, v95, 1, v59);
    if (v71(v97, 1, v59) == 1)
    {
      v98 = 0;
    }

    else
    {
      v98 = sub_1000B4E30().super.isa;
      (v176)(v97, v59);
    }

    [v76 setLastActivitySummaryViewedDate:v98];

    v99 = v167;
    sub_100030C74(v69 + *(v184 + 84), v167, &qword_100106E38, &unk_1000CB730);
    if (v71(v99, 1, v59) != 1)
    {
      v100 = v162;
      (*(v180 + 32))(v162, v99, v59);
      sub_1000B4E40();
      (v176)(v100, v59);
    }

    v101 = v173;
    (v175)();
    if (v71(v101, 1, v59) == 1)
    {
      v102 = 0;
    }

    else
    {
      v103 = v101;
      v102 = sub_1000B4E30().super.isa;
      (v176)(v103, v59);
    }

    [v76 setLastActivityRecentUpdatesViewedDate:v102];

    v104 = v168;
    sub_100030C74(v69 + *(v184 + 88), v168, &qword_100106E38, &unk_1000CB730);
    v105 = 1;
    if (v170(v104, 1, v59) != 1)
    {
      v106 = v162;
      (*(v180 + 32))(v162, v104, v59);
      sub_1000B4E40();
      (v176)(v106, v59);
      v105 = 0;
    }

    v107 = v172;
    (v175)(v172, v105, 1, v59);
    v108 = v170;
    if (v170(v107, 1, v59) == 1)
    {
      v109 = 0;
    }

    else
    {
      v109 = sub_1000B4E30().super.isa;
      (v176)(v107, v59);
    }

    [v76 setRecentUpdatesGenerationDate:v109];

    v110 = v169;
    sub_100030C74(v69 + *(v184 + 92), v169, &qword_100106E38, &unk_1000CB730);
    v111 = 1;
    if (v108(v110, 1, v59) != 1)
    {
      v112 = v162;
      (*(v180 + 32))(v162, v110, v59);
      sub_1000B4E40();
      (v176)(v112, v59);
      v111 = 0;
    }

    v113 = v174;
    (v175)(v174, v111, 1, v59);
    if (v108(v113, 1, v59) == 1)
    {
      v114 = 0;
    }

    else
    {
      v114 = sub_1000B4E30().super.isa;
      (v176)(v113, v59);
    }

    v115 = v183;
    v116 = v177;
    v117 = v179;
    [v76 setLastAttributionsViewedDate:v114];

    v118 = *(v69 + *(v184 + 104));
    if (v118)
    {
      v119 = objc_allocWithZone(ICOutlineState);
      sub_10004E6EC(&qword_100106FE0, &type metadata accessor for UUID);
      v120 = sub_1000B5820().super.isa;
      v121 = [v119 initWithCollapsedUUIDs:v120];

      v118 = [v121 data];
      if (v118)
      {
        v122 = sub_1000B4DF0();
        v124 = v123;

        v118 = sub_1000B4DE0().super.isa;
        sub_1000449D4(v122, v124);
      }
    }

    [v76 setOutlineStateData:v118];

    v125 = *(v184 + 112);
    if (*(v69 + v125))
    {
      v126 = *(v69 + v125);
    }

    else
    {
      v126 = sub_100030574(_swiftEmptyArrayStorage);
    }

    v176 = v126;
    v128 = (v126 + 64);
    v127 = *(v126 + 64);
    v174 = v128;
    v129 = 1 << *(v128 - 32);
    v130 = -1;
    if (v129 < 64)
    {
      v130 = ~(-1 << v129);
    }

    v131 = v130 & v127;
    v173 = ((v129 + 63) >> 6);
    v175 = (v117 + 16);
    v184 = v117 + 32;
    v180 = v117 + 8;

    v132 = 0;
    v133 = v178;
    if (v131)
    {
      while (1)
      {
        v134 = v132;
LABEL_69:
        v137 = __clz(__rbit64(v131));
        v131 &= v131 - 1;
        v138 = v137 | (v134 << 6);
        v139 = v176;
        v141 = v178;
        v140 = v179;
        (*(v179 + 16))(v178, v176[6] + *(v179 + 72) * v138, v115);
        v142 = (v139[7] + 16 * v138);
        v144 = *v142;
        v143 = v142[1];
        v145 = sub_100030480(&qword_100107010, &qword_1000CAE88);
        v146 = v115;
        v147 = &v177[*(v145 + 48)];
        v148 = *(v140 + 32);
        v133 = v141;
        v116 = v177;
        v148(v177, v133, v146);
        *v147 = v144;
        *(v147 + 1) = v143;
        (*(*(v145 - 8) + 56))(v116, 0, 1, v145);

        v136 = v134;
LABEL_70:
        v149 = v182;
        sub_10004D4F4(v116, v182, &qword_100107008, &qword_1000CAE80);
        v150 = sub_100030480(&qword_100107010, &qword_1000CAE88);
        if ((*(*(v150 - 8) + 48))(v149, 1, v150) == 1)
        {
          break;
        }

        v151 = (v149 + *(v150 + 48));
        v152 = *v151;
        v153 = v151[1];
        v115 = v183;
        (*v184)(v133, v149, v183);
        v154 = sub_1000B55F0();

        v155 = sub_1000B4ED0().super.isa;
        [v181 addUserID:v154 forReplicaID:v155];

        result = (*v180)(v133, v115);
        v132 = v136;
        if (!v131)
        {
          goto LABEL_62;
        }
      }

      return v181;
    }

    else
    {
LABEL_62:
      if (v173 <= v132 + 1)
      {
        v135 = (v132 + 1);
      }

      else
      {
        v135 = v173;
      }

      v136 = v135 - 1;
      while (1)
      {
        v134 = v132 + 1;
        if (__OFADD__(v132, 1))
        {
          break;
        }

        if (v134 >= v173)
        {
          v156 = sub_100030480(&qword_100107010, &qword_1000CAE88);
          (*(*(v156 - 8) + 56))(v116, 1, 1, v156);
          v131 = 0;
          goto LABEL_70;
        }

        v131 = *&v174[8 * v134];
        ++v132;
        if (v131)
        {
          goto LABEL_69;
        }
      }

      __break(1u);
    }
  }

  return result;
}

id sub_100046FB8(id a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for ICNoteArchiveModel();
  v9 = (v3 + *(v8 + 100));
  v10 = v9[1];
  if (!v10)
  {
    v12 = (v3 + *(v8 + 96));
    v13 = v12[5];
    v50 = v12[4];
    v51 = v13;
    v14 = *(v12 + 12);
    v52 = v14;
    v15 = v12[1];
    aBlock = *v12;
    v47 = v15;
    v16 = v12[3];
    v48 = v12[2];
    v49 = v16;
    if (!v51)
    {
      return 0;
    }

    v17 = v12[3];
    v55 = v12[2];
    v56 = v17;
    v18 = v12[5];
    v57 = v12[4];
    v19 = v12[1];
    v53 = *v12;
    v54 = v19;
    v58 = v51;
    v59 = v14;
    v44[4] = v57;
    v44[5] = v18;
    v45 = *(v12 + 12);
    v44[0] = v53;
    v44[1] = v19;
    v44[2] = v55;
    v44[3] = v17;
    sub_10004D408(v44, v43);
    sub_10008A284(a1);
    v20 = [a1 noteData];
    if (v20)
    {
      v21 = v20;
      isa = sub_1000B4DE0().super.isa;
      [v21 setData:isa];
    }

    a1 = [a1 noteData];
    sub_100036320(&aBlock, &qword_100106FF0, &qword_1000CAE68);
    return a1;
  }

  v11 = sub_100090684(a2, a1, &off_1000F6798, a3, *v9, v10, v9[2]);
  if (v4)
  {
    return a1;
  }

  v60 = v11;
  result = [a1 textStorage];
  if (result)
  {
    v24 = result;
    [result beginSkippingTimestampUpdates];
    v25 = [v24 mergeableString];
    v26 = v24;
    v27 = [v26 ic_range];
    v29 = v28;
    v30 = [objc_allocWithZone(NSAttributedString) init];
    [v25 replaceCharactersInRange:v27 withAttributedString:{v29, v30}];

    v31 = [v26 mergeableString];
    v32.super.isa = v60;
    sub_1000B5A70(v32, 0);

    v33 = [v26 mergeableString];
    v42 = [v26 ic_range];
    v35 = v34;

    v36 = swift_allocObject();
    *(v36 + 16) = a1;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_10004D49C;
    *(v37 + 24) = v36;
    *&v48 = sub_10004D4B4;
    *(&v48 + 1) = v37;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v47 = sub_10004B58C;
    *(&v47 + 1) = &unk_1000F40A8;
    v38 = _Block_copy(&aBlock);
    v39 = a1;

    [v33 enumerateEditsInRange:v42 usingBlock:{v35, v38}];

    _Block_release(v38);
    LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

    if ((v38 & 1) == 0)
    {
      [v26 endSkippingTimestampUpdates];
      v40 = [v39 noteData];
      if (v40)
      {
        v41 = v40;
        [v40 setNeedsToBeSaved:1];
      }

      a1 = [v39 noteData];

      return a1;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100047400(uint64_t a1)
{
  v3 = v1;
  v5 = sub_100030480(&qword_100106FF8, &qword_1000CAE70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v46 = v39 - v7;
  v8 = sub_100030480(&qword_100107000, &qword_1000CAE78);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v39 - v10;
  v12 = sub_1000B5230();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v43 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = _s8ActivityVMa();
  v16 = *(v42 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v42);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v3 + *(type metadata accessor for ICNoteArchiveModel() + 108));
  if (!v20)
  {
    return 0;
  }

  v39[1] = a1;
  v39[2] = v2;
  v53 = _swiftEmptyArrayStorage;
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = v20 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v23 = *(v16 + 72);
    v44 = (v13 + 48);
    v45 = v23;
    v40 = (v13 + 8);
    v41 = (v13 + 32);
    v47 = v19;
    while (1)
    {
      sub_10004E7F0(v22, v19, _s8ActivityVMa);
      IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
      v32 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
      v48[0] = IsAlexandriaDemoModeEnabled;
      v48[1] = v32;
      v50 = 0;
      v51 = 0;
      v49 = 0;
      v52 = 2;
      sub_100052240(v48, v11);
      if ((*v44)(v11, 1, v12) == 1)
      {
        break;
      }

      v33 = v43;
      (*v41)(v43, v11, v12);
      sub_1000362AC(0, &qword_100106C00, ICCloudSyncingObject_ptr);
      v34 = v46;
      sub_100052A3C(v48, v46);
      v35 = sub_1000B59F0();
      v36 = v34;
      v19 = v47;
      sub_100036320(v36, &qword_100106FF8, &qword_1000CAE70);
      (*v40)(v33, v12);
      sub_10004E858(v19, _s8ActivityVMa);
      if (v35)
      {
        goto LABEL_5;
      }

LABEL_8:
      v22 += v45;
      if (!--v21)
      {
        goto LABEL_12;
      }
    }

    sub_100036320(v11, &qword_100107000, &qword_1000CAE78);
    sub_1000362AC(0, &qword_100106C00, ICCloudSyncingObject_ptr);
    v24 = &v19[*(v42 + 44)];
    v25 = v12;
    v27 = *v24;
    v26 = *(v24 + 1);
    v28 = v11;
    v29 = v46;
    sub_100052A3C(v48, v46);
    v12 = v25;
    v19 = v47;
    sub_1000B5A00();
    v30 = v29;
    v11 = v28;
    sub_100036320(v30, &qword_100106FF8, &qword_1000CAE70);
    sub_10004E858(v19, _s8ActivityVMa);
LABEL_5:
    sub_1000B5780();
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v37 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1000B57C0();
    }

    sub_1000B57F0();
    goto LABEL_8;
  }

LABEL_12:
  sub_1000B5A20();
  return sub_1000B5A10();
}

uint64_t sub_1000478AC()
{
  v0 = sub_1000B5530();
  sub_10003640C(v0, qword_100106FB8);
  sub_100036380(v0, qword_100106FB8);
  return sub_1000B5510();
}

unint64_t sub_1000478F8(char a1)
{
  result = 0x6E65644965707974;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6954746E65726170;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x4164657461657263;
      break;
    case 7:
      result = 0x6465696669646F6DLL;
      break;
    case 8:
      result = 0x656C746974;
      break;
    case 9:
      result = 0x64656E6E69507369;
      break;
    case 10:
      result = 0x4E6B636975517369;
      break;
    case 11:
      result = 0x7974537265706170;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0xD000000000000019;
      break;
    case 15:
      result = 0x7441646577656976;
      break;
    case 16:
    case 22:
      result = 0xD000000000000017;
      break;
    case 17:
      result = 0xD000000000000015;
      break;
    case 18:
      result = 0xD000000000000018;
      break;
    case 19:
      result = 0xD000000000000014;
      break;
    case 20:
      result = 0x6574707972636E65;
      break;
    case 21:
      result = 0x746E65746E6F63;
      break;
    case 23:
      result = 0x6974697669746361;
      break;
    case 24:
      result = 0xD000000000000023;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_100047C64()
{
  v1 = *v0;
  sub_1000B5FB0();
  sub_1000B5FC0(v1);
  return sub_1000B5FE0();
}

Swift::Int sub_100047CD8()
{
  v1 = *v0;
  sub_1000B5FB0();
  sub_1000B5FC0(v1);
  return sub_1000B5FE0();
}

uint64_t sub_100047D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004C2E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100047D64(uint64_t a1)
{
  v2 = sub_10004E1C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100047DA0(uint64_t a1)
{
  v2 = sub_10004E1C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100047DDC(void *a1)
{
  v3 = v1;
  v5 = sub_100030480(&qword_100107210, &qword_1000CB3B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v46 - v8;
  v10 = a1[4];
  sub_1000458B4(a1, a1[3]);
  sub_10004E1C0();
  sub_1000B6020();
  LOBYTE(v60[0]) = *v3;
  LOBYTE(v53) = 0;
  sub_10004E214();
  sub_1000B5EB0();
  if (!v2)
  {
    v11 = *(v3 + 8);
    v12 = *(v3 + 16);
    LOBYTE(v60[0]) = 1;
    sub_1000B5E70();
    v13 = *(v3 + 24);
    v14 = *(v3 + 32);
    LOBYTE(v60[0]) = 2;
    sub_1000B5E20();
    v15 = *(v3 + 40);
    v16 = *(v3 + 48);
    LOBYTE(v60[0]) = 3;
    sub_1000B5E20();
    v17 = *(v3 + 56);
    LOBYTE(v60[0]) = 4;
    sub_1000B5E30();
    v18 = *(v3 + 57);
    LOBYTE(v60[0]) = 5;
    sub_1000B5E30();
    v67 = type metadata accessor for ICNoteArchiveModel();
    v19 = v67[10];
    LOBYTE(v60[0]) = 6;
    sub_1000B4EA0();
    sub_10004E6EC(&qword_100107228, &type metadata accessor for Date);
    sub_1000B5E60();
    v20 = v67;
    v21 = v67[11];
    LOBYTE(v60[0]) = 7;
    sub_1000B5E60();
    v22 = (v3 + v20[12]);
    v23 = *v22;
    v24 = v22[1];
    LOBYTE(v60[0]) = 8;
    sub_1000B5E20();
    v25 = *(v3 + v20[13]);
    LOBYTE(v60[0]) = 9;
    sub_1000B5E30();
    v26 = *(v3 + v67[14]);
    LOBYTE(v60[0]) = 10;
    sub_1000B5E30();
    LOBYTE(v60[0]) = *(v3 + v67[15]);
    LOBYTE(v53) = 11;
    sub_10004E268();
    sub_1000B5E60();
    LOBYTE(v60[0]) = *(v3 + v67[16]);
    LOBYTE(v53) = 12;
    sub_10004E2BC();
    sub_1000B5E60();
    LOBYTE(v60[0]) = *(v3 + v67[17]);
    LOBYTE(v53) = 13;
    sub_10004E310();
    sub_1000B5E60();
    v27 = (v3 + v67[18]);
    v28 = *v27;
    v29 = v27[1];
    LOBYTE(v60[0]) = 14;
    sub_1000B5E20();
    v30 = v67[19];
    LOBYTE(v60[0]) = 15;
    sub_1000B5E60();
    v31 = v67[20];
    LOBYTE(v60[0]) = 16;
    sub_1000B5E60();
    v32 = v67[21];
    LOBYTE(v60[0]) = 17;
    sub_1000B5E60();
    v33 = v67[22];
    LOBYTE(v60[0]) = 18;
    sub_1000B5E60();
    v34 = v67[23];
    v66 = 19;
    sub_1000B5E60();
    v35 = (v3 + v67[24]);
    v36 = v35[3];
    v37 = v35[5];
    v63 = v35[4];
    v64 = v37;
    v38 = v35[1];
    v60[0] = *v35;
    v60[1] = v38;
    v39 = v35[3];
    v41 = *v35;
    v40 = v35[1];
    v61 = v35[2];
    v62 = v39;
    v42 = v35[5];
    v57 = v63;
    v58 = v42;
    v53 = v41;
    v54 = v40;
    v65 = *(v35 + 12);
    v59 = *(v35 + 12);
    v55 = v61;
    v56 = v36;
    v52 = 20;
    sub_100030C74(v60, v50, &qword_100106FF0, &qword_1000CAE68);
    sub_10004E364();
    sub_1000B5E60();
    v50[4] = v57;
    v50[5] = v58;
    v51 = v59;
    v50[0] = v53;
    v50[1] = v54;
    v50[2] = v55;
    v50[3] = v56;
    sub_100036320(v50, &qword_100106FF0, &qword_1000CAE68);
    v43 = (v3 + v67[25]);
    v44 = *(v43 + 2);
    v48 = *v43;
    v49 = v44;
    v47 = 21;
    sub_10004E3B8();
    sub_1000B5E60();
    *&v48 = *(v3 + v67[26]);
    v47 = 22;
    sub_100030480(&qword_1001070C0, &qword_1000CAEA8);
    sub_10004E5B4(&qword_100107258, &qword_100107260);
    sub_1000B5E60();
    *&v48 = *(v3 + v67[27]);
    v47 = 23;
    sub_100030480(&qword_1001070D0, &qword_1000CAEB0);
    sub_10004E650(&qword_100107268, &qword_100107270);
    sub_1000B5E60();
    *&v48 = *(v3 + v67[28]);
    v47 = 24;
    sub_100030480(&unk_1001070E0, &qword_1000CAEB8);
    sub_10004E40C();
    sub_1000B5E60();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100048648@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v3 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v103 = v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v95 = v91 - v8;
  v9 = __chkstk_darwin(v7);
  v94 = v91 - v10;
  v11 = __chkstk_darwin(v9);
  v93 = v91 - v12;
  v13 = __chkstk_darwin(v11);
  v97 = v91 - v14;
  v15 = __chkstk_darwin(v13);
  v98 = v91 - v16;
  __chkstk_darwin(v15);
  v99 = v91 - v17;
  v18 = sub_100030480(&qword_100107280, &qword_1000CB3B8);
  v100 = *(v18 - 8);
  v101 = v18;
  v19 = *(v100 + 64);
  __chkstk_darwin(v18);
  v21 = v91 - v20;
  v22 = type metadata accessor for ICNoteArchiveModel();
  v23 = *(*(v22 - 1) + 64);
  v24 = __chkstk_darwin(v22);
  v26 = v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v24 + 40);
  v28 = sub_1000B4EA0();
  v29 = *(*(v28 - 8) + 56);
  v113 = v27;
  v29(&v26[v27], 1, 1, v28);
  v111 = v22[11];
  v29(&v26[v111], 1, 1, v28);
  v109 = v22[19];
  v29(&v26[v109], 1, 1, v28);
  v108 = v22[20];
  v29(&v26[v108], 1, 1, v28);
  v107 = v22[21];
  v29(&v26[v107], 1, 1, v28);
  v106 = v22[22];
  v29(&v26[v106], 1, 1, v28);
  v105 = v22[23];
  v29(&v26[v105], 1, 1, v28);
  v30 = v22[24];
  v135 = v26;
  v31 = &v26[v30];
  *(v31 + 12) = 0;
  *(v31 + 4) = 0u;
  *(v31 + 5) = 0u;
  *(v31 + 2) = 0u;
  *(v31 + 3) = 0u;
  *v31 = 0u;
  *(v31 + 1) = 0u;
  v104 = v31;
  v33 = a1[3];
  v32 = a1[4];
  v110 = a1;
  sub_1000458B4(a1, v33);
  sub_10004E1C0();
  v102 = v21;
  v34 = v112;
  sub_1000B6010();
  if (v34)
  {
    v112 = v34;
    sub_100035DA8(v110);
    swift_bridgeObjectRelease_n();
    v103 = 0;
    v38 = 0;
    v39 = 0;
    v110 = 0;
LABEL_4:
    v40 = v135;
    sub_100036320(&v135[v113], &qword_100106E38, &unk_1000CB730);
    sub_100036320(&v40[v111], &qword_100106E38, &unk_1000CB730);

    sub_100036320(&v40[v109], &qword_100106E38, &unk_1000CB730);
    sub_100036320(&v40[v108], &qword_100106E38, &unk_1000CB730);
    sub_100036320(&v40[v107], &qword_100106E38, &unk_1000CB730);
    sub_100036320(&v40[v106], &qword_100106E38, &unk_1000CB730);
    sub_100036320(&v40[v105], &qword_100106E38, &unk_1000CB730);
    v41 = *(v104 + 5);
    v132 = *(v104 + 4);
    v133 = v41;
    v134 = *(v104 + 12);
    v42 = *(v104 + 1);
    v128 = *v104;
    v129 = v42;
    v43 = *(v104 + 3);
    v130 = *(v104 + 2);
    v131 = v43;
    sub_100036320(&v128, &qword_100106FF0, &qword_1000CAE68);
    sub_10004E4C8(v39, v38);
  }

  v35 = v99;
  v92 = v22;
  v36 = v103;
  LOBYTE(v125[0]) = 0;
  sub_1000316AC();
  sub_1000B5E00();
  v37 = v135;
  *v135 = v128;
  LOBYTE(v128) = 1;
  *(v37 + 1) = sub_1000B5DC0();
  *(v37 + 2) = v45;
  LOBYTE(v128) = 2;
  *(v37 + 3) = sub_1000B5D70();
  *(v37 + 4) = v46;
  v91[1] = v46;
  LOBYTE(v128) = 3;
  *(v37 + 5) = sub_1000B5D70();
  *(v37 + 6) = v47;
  v91[0] = v47;
  LOBYTE(v128) = 4;
  v37[56] = sub_1000B5D80();
  LOBYTE(v128) = 5;
  v37[57] = sub_1000B5D80();
  LOBYTE(v128) = 6;
  sub_10004E6EC(&qword_100107288, &type metadata accessor for Date);
  sub_1000B5DB0();
  sub_10004CDC8(v35, &v37[v113]);
  LOBYTE(v128) = 7;
  v49 = v98;
  sub_1000B5DB0();
  sub_10004CDC8(v49, &v37[v111]);
  LOBYTE(v128) = 8;
  v50 = sub_1000B5D70();
  v112 = 0;
  v52 = &v135[v92[12]];
  *v52 = v50;
  v52[1] = v51;
  v98 = v51;
  LOBYTE(v128) = 9;
  v53 = v112;
  v54 = sub_1000B5D80();
  v112 = v53;
  if (v53)
  {
    goto LABEL_11;
  }

  v135[v92[13]] = v54;
  LOBYTE(v128) = 10;
  v55 = v112;
  v56 = sub_1000B5D80();
  v112 = v55;
  if (v55)
  {
    goto LABEL_11;
  }

  v135[v92[14]] = v56;
  LOBYTE(v125[0]) = 11;
  sub_10004DE4C();
  v57 = v112;
  sub_1000B5DB0();
  v112 = v57;
  if (v57)
  {
    goto LABEL_11;
  }

  v135[v92[15]] = v128;
  LOBYTE(v125[0]) = 12;
  sub_10004DF2C();
  v58 = v112;
  sub_1000B5DB0();
  v112 = v58;
  if (v58)
  {
    goto LABEL_11;
  }

  v135[v92[16]] = v128;
  LOBYTE(v125[0]) = 13;
  sub_10004E00C();
  v59 = v112;
  sub_1000B5DB0();
  v112 = v59;
  if (v59 || (v135[v92[17]] = v128, LOBYTE(v128) = 14, v60 = v112, v61 = sub_1000B5D70(), v99 = v62, (v112 = v60) != 0))
  {
LABEL_11:
    (*(v100 + 8))(v102, v101);
    v63 = 0;
    v39 = 0;
    v38 = 0;
    v103 = 0;
    v99 = 0;
LABEL_12:
    v64 = v110;
    v110 = v63;
    sub_100035DA8(v64);
    v48 = *(v135 + 2);

    goto LABEL_4;
  }

  v65 = &v135[v92[18]];
  v66 = v99;
  *v65 = v61;
  v65[1] = v66;
  LOBYTE(v128) = 15;
  v67 = v112;
  sub_1000B5DB0();
  v112 = v67;
  if (v67)
  {
    goto LABEL_20;
  }

  sub_10004CDC8(v97, &v135[v109]);
  LOBYTE(v128) = 16;
  v68 = v112;
  sub_1000B5DB0();
  v112 = v68;
  if (v68)
  {
    goto LABEL_20;
  }

  sub_10004CDC8(v93, &v135[v108]);
  LOBYTE(v128) = 17;
  v69 = v112;
  sub_1000B5DB0();
  v112 = v69;
  if (v69)
  {
    goto LABEL_20;
  }

  sub_10004CDC8(v94, &v135[v107]);
  LOBYTE(v128) = 18;
  v70 = v112;
  sub_1000B5DB0();
  v112 = v70;
  if (v70)
  {
    goto LABEL_20;
  }

  sub_10004CDC8(v95, &v135[v106]);
  LOBYTE(v128) = 19;
  v71 = v112;
  sub_1000B5DB0();
  v112 = v71;
  if (v71)
  {
    goto LABEL_20;
  }

  sub_10004CDC8(v36, &v135[v105]);
  v127 = 20;
  sub_10004E50C();
  v72 = v112;
  sub_1000B5DB0();
  v112 = v72;
  if (v72)
  {
    goto LABEL_20;
  }

  v122 = v132;
  v123 = v133;
  v124 = v134;
  v118 = v128;
  v119 = v129;
  v120 = v130;
  v121 = v131;
  v73 = v104;
  v74 = *(v104 + 1);
  v125[0] = *v104;
  v125[1] = v74;
  v75 = *(v104 + 2);
  v76 = *(v104 + 3);
  v77 = *(v104 + 4);
  v78 = *(v104 + 5);
  v126 = *(v104 + 12);
  v125[4] = v77;
  v125[5] = v78;
  v125[2] = v75;
  v125[3] = v76;
  sub_100036320(v125, &qword_100106FF0, &qword_1000CAE68);
  v79 = v123;
  *(v73 + 4) = v122;
  *(v73 + 5) = v79;
  *(v73 + 12) = v124;
  v80 = v119;
  *v73 = v118;
  *(v73 + 1) = v80;
  v81 = v121;
  *(v73 + 2) = v120;
  *(v73 + 3) = v81;
  v114 = 21;
  sub_10004E560();
  v82 = v112;
  sub_1000B5DB0();
  v112 = v82;
  if (v82)
  {
LABEL_20:
    (*(v100 + 8))(v102, v101);
    v63 = 0;
    v39 = 0;
    v38 = 0;
    v103 = 0;
    goto LABEL_12;
  }

  v83 = &v135[v92[25]];
  v84 = v116;
  v85 = v117;
  v39 = v115;
  *v83 = v115;
  v83[1] = v84;
  v38 = v84;
  v103 = v85;
  v83[2] = v85;
  sub_100030480(&qword_1001070C0, &qword_1000CAEA8);
  v114 = 22;
  sub_10004E5B4(&qword_1001072A0, &qword_1001072A8);
  v86 = v112;
  sub_1000B5DB0();
  v112 = v86;
  if (v86)
  {
    (*(v100 + 8))(v102, v101);
    v63 = 0;
    goto LABEL_12;
  }

  v63 = v115;
  *&v135[v92[26]] = v115;
  sub_100030480(&qword_1001070D0, &qword_1000CAEB0);
  v114 = 23;
  sub_10004E650(&qword_1001072B0, &qword_1001072B8);
  v87 = v112;
  sub_1000B5DB0();
  v112 = v87;
  if (v87 || (*&v135[v92[27]] = v115, sub_100030480(&unk_1001070E0, &qword_1000CAEB8), v114 = 24, sub_10004E734(), v88 = v112, sub_1000B5DB0(), (v112 = v88) != 0))
  {
    (*(v100 + 8))(v102, v101);
    goto LABEL_12;
  }

  v89 = v92[28];
  (*(v100 + 8))(v102, v101);
  v90 = v135;
  *&v135[v89] = v115;
  sub_10004E7F0(v90, v96, type metadata accessor for ICNoteArchiveModel);
  sub_100035DA8(v110);
  return sub_10004E858(v90, type metadata accessor for ICNoteArchiveModel);
}

void sub_10004955C(id a1@<X0>, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v271 = a2;
  v5 = sub_100030480(&qword_100106FD0, &qword_1000CAE50);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v274 = &v256 - v7;
  v8 = sub_100030480(&qword_100106FD8, &qword_1000CAE58);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v279 = &v256 - v10;
  v288 = sub_100030480(&qword_100106AF0, &qword_1000CAE60);
  v267 = *(v288 - 8);
  v11 = *(v267 + 64);
  __chkstk_darwin(v288);
  v273 = &v256 - v12;
  v285 = sub_1000B4F00();
  v260 = *(v285 - 8);
  v13 = *(v260 + 64);
  v14 = __chkstk_darwin(v285);
  v272 = &v256 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v286 = &v256 - v17;
  __chkstk_darwin(v16);
  v259 = &v256 - v18;
  v19 = _s8ActivityVMa();
  v287 = *(v19 - 8);
  v20 = *(v287 + 64);
  __chkstk_darwin(v19 - 8);
  v262 = &v256 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v281 = (&v256 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __chkstk_darwin(v24);
  v280 = (&v256 - v27);
  v28 = __chkstk_darwin(v26);
  v277 = &v256 - v29;
  v30 = __chkstk_darwin(v28);
  v269 = (&v256 - v31);
  v32 = __chkstk_darwin(v30);
  v283 = (&v256 - v33);
  v34 = __chkstk_darwin(v32);
  v36 = &v256 - v35;
  __chkstk_darwin(v34);
  v38 = &v256 - v37;
  *a3 = 3;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 514;
  v39 = type metadata accessor for ICNoteArchiveModel();
  v40 = v39[10];
  v41 = sub_1000B4EA0();
  v42 = *(v41 - 8);
  v43 = *(v42 + 56);
  v44 = v42 + 56;
  v43(a3 + v40, 1, 1, v41);
  v284 = v39[11];
  v43(a3 + v284, 1, 1, v41);
  v45 = (a3 + v39[12]);
  *v45 = 0;
  v45[1] = 0;
  v263 = v45;
  v265 = v39[19];
  v43(a3 + v265, 1, 1, v41);
  v266 = v39[20];
  v43(a3 + v266, 1, 1, v41);
  v268 = v39[21];
  v43(a3 + v268, 1, 1, v41);
  v270 = v39[22];
  v43(v270 + a3, 1, 1, v41);
  v276 = v39[23];
  v43(&v276[a3], 1, 1, v41);
  v46 = a3 + v39[24];
  *(v46 + 96) = 0;
  *(v46 + 64) = 0u;
  *(v46 + 80) = 0u;
  *(v46 + 32) = 0u;
  *(v46 + 48) = 0u;
  *v46 = 0u;
  *(v46 + 16) = 0u;
  v256 = v46;
  v47 = (a3 + v39[25]);
  *v47 = 0;
  v47[1] = 0;
  v261 = v47;
  v47[2] = 0;
  v264 = v39[26];
  *(v264 + a3) = 0;
  v258 = v39[27];
  *(a3 + v258) = 0;
  v48 = v39[28];
  v275 = a3;
  v257 = v48;
  *(a3 + v48) = 0;
  v49 = [a1 identifier];
  v278 = a1;
  if (v49)
  {
    v50 = v49;
    v51 = sub_1000B5620();
    v53 = v52;

    a1 = v278;
  }

  else
  {
    v51 = 0;
    v53 = 0xE000000000000000;
  }

  v54 = v275;
  *(v275 + 1) = v51;
  *(v54 + 2) = v53;
  v55 = [a1 creationDate];
  if (v55)
  {
    v56 = v55;
    sub_1000B4E70();

    v57 = 0;
  }

  else
  {
    v57 = 1;
  }

  v58 = 1;
  v43(v38, v57, 1, v41);
  sub_10004CDC8(v38, &v275[v40]);
  v59 = [a1 modificationDate];
  if (v59)
  {
    v60 = v59;
    sub_1000B4E70();

    v58 = 0;
  }

  v43(v36, v58, 1, v41);
  v61 = v39[13];
  v62 = v39[14];
  v64 = v39[15];
  v63 = v39[16];
  v282 = v39[17];
  v65 = v275;
  sub_10004CDC8(v36, &v275[v284]);
  v66 = v278;
  v65[v61] = [v278 isPinned];
  v65[v62] = [v66 isSystemPaper];
  v67 = v66;
  v68 = [v66 paperStyleType];
  if (v68 < 0)
  {
    goto LABEL_150;
  }

  v64[v65] = sub_10004CA8C(v68);
  v65[v63] = sub_10004CB90([v66 preferredBackgroundType]);
  v69 = sub_10004CC90([v66 attachmentViewType]);
  v65[v282] = v69;
  v70 = [v66 hostApplicationIdentifier];
  if (v70)
  {
    v71 = v70;
    v72 = sub_1000B5620();
    v74 = v73;
  }

  else
  {
    v72 = 0;
    v74 = 0;
  }

  v61 = v279;
  v75 = v283;
  v64 = v275;
  v76 = &v275[v39[18]];
  *v76 = v72;
  v76[1] = v74;
  if (*(v271 + 58) & 1) != 0 || (*(v271 + 59))
  {
    v77 = [v67 lastOpenedDate];
    if (v77)
    {
      v78 = v77;
      sub_1000B4E70();

      v79 = 0;
    }

    else
    {
      v79 = 1;
    }

    v80 = v281;
    v81 = v280;
    v43(v75, v79, 1, v41);
    sub_10004CDC8(v75, &v64[v265]);
    v82 = [v67 lastActivitySummaryViewedDate];
    if (v82)
    {
      v83 = v269;
      v84 = v82;
      sub_1000B4E70();

      v85 = v83;
    }

    else
    {
      v85 = v269;
    }

    v86 = v85;
    (v43)();
    sub_10004CDC8(v86, &v64[v266]);
    v87 = [v67 lastActivityRecentUpdatesViewedDate];
    if (v87)
    {
      v88 = v277;
      v89 = v87;
      sub_1000B4E70();

      v90 = v88;
    }

    else
    {
      v90 = v277;
    }

    v91 = 1;
    v92 = v90;
    (v43)();
    sub_10004CDC8(v92, &v64[v268]);
    v93 = [v67 recentUpdatesGenerationDate];
    if (v93)
    {
      v94 = v93;
      sub_1000B4E70();

      v91 = 0;
    }

    v95 = 1;
    v43(v81, v91, 1, v41);
    sub_10004CDC8(v81, v270 + v64);
    v96 = [v67 lastAttributionsViewedDate];
    if (v96)
    {
      v97 = v96;
      sub_1000B4E70();

      v95 = 0;
    }

    v98 = v276;
    v43(v80, v95, 1, v41);
    sub_10004CDC8(v80, &v98[v64]);
  }

  v43 = v271;
  if (*(v271 + 60))
  {
    v99 = v67;
    if ([v99 isPasswordProtectedAndLocked])
    {

      sub_10004CE38(v43);
      if (qword_100106A28 != -1)
      {
        swift_once();
      }

      v100 = sub_1000B5530();
      sub_100036380(v100, qword_100106FB8);
      v101 = v99;
      v102 = sub_1000B5520();
      v103 = sub_1000B5920();

      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        *&v291[0] = v105;
        *v104 = 136315138;
        v106 = [v101 identifier];
        if (v106)
        {
          v107 = v106;
          v108 = sub_1000B5620();
          v110 = v109;
        }

        else
        {
          v108 = 9732322;
          v110 = 0xA300000000000000;
        }

        v154 = sub_100062B20(v108, v110, v291);

        *(v104 + 4) = v154;
        v155 = "Pages Handoff: Note is locked — skipping {identifier: %s}";
LABEL_147:
        _os_log_impl(&_mh_execute_header, v102, v103, v155, v104, 0xCu);
        sub_100035DA8(v105);

        return;
      }

      goto LABEL_48;
    }

    v118 = [v99 textStorage];
    if (v118)
    {
      v119 = v118;
      v120 = [v118 mergeableString];
      sub_10004D3AC(v43, v291);
      v121 = v120;
      v122 = v99;
LABEL_53:
      v143 = sub_1000A1B30(v121, v122, v43);
      v145 = v144;
      v147 = v146;

      v266 = 0;
      v148 = v261;
      *v261 = v143;
      v148[1] = v145;
      v148[2] = v147;
      goto LABEL_73;
    }

    v149 = v64;

    if (qword_100106A28 != -1)
    {
      swift_once();
    }

    v150 = sub_1000B5530();
    sub_100036380(v150, qword_100106FB8);
    v151 = v99;
    v152 = sub_1000B5520();
    v153 = sub_1000B5920();

    if (os_log_type_enabled(v152, v153))
    {
      goto LABEL_68;
    }

    goto LABEL_72;
  }

  if (*v271)
  {
    v111 = v67;
    if ([v111 isPasswordProtectedAndLocked])
    {

      sub_10004CE38(v43);
      if (qword_100106A28 == -1)
      {
        goto LABEL_39;
      }

      goto LABEL_154;
    }

    v130 = [v111 textStorage];
    if (v130)
    {
      v131 = v130;
      v132 = [v130 mergeableString];
      sub_10004D3AC(v43, v291);
      v133 = sub_1000A2420(v132, v111, v43);
      v134 = v64;
      v136 = v135;
      v138 = v137;
      sub_10004CE38(v43);

      v266 = 0;
      v139 = v261;
      *v261 = v133;
      v139[1] = v136;
      v64 = v134;
      v139[2] = v138;
LABEL_73:
      v166 = v264;
      goto LABEL_74;
    }

    v149 = v64;

    if (qword_100106A28 != -1)
    {
      swift_once();
    }

    v156 = sub_1000B5530();
    sub_100036380(v156, qword_100106FB8);
    v151 = v111;
    v152 = sub_1000B5520();
    v153 = sub_1000B5920();

    if (os_log_type_enabled(v152, v153))
    {
LABEL_68:
      v158 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      *&v291[0] = v159;
      *v158 = 136315138;
      v160 = [v151 identifier];
      if (v160)
      {
        v161 = v160;
        v162 = sub_1000B5620();
        v164 = v163;

        v61 = v279;
      }

      else
      {
        v162 = 9732322;
        v164 = 0xA300000000000000;
      }

      v165 = sub_100062B20(v162, v164, v291);

      *(v158 + 4) = v165;
      _os_log_impl(&_mh_execute_header, v152, v153, "Note doesn't have a text storage — skipping {identifier: %s}", v158, 0xCu);
      sub_100035DA8(v159);
    }

LABEL_72:

    v266 = 0;
    v64 = v149;
    goto LABEL_73;
  }

  if (![v67 isPasswordProtected])
  {
    v140 = [v67 textStorage];
    if (v140)
    {
      v119 = v140;
      v141 = [v140 mergeableString];
      v142 = v67;
      sub_10004D3AC(v43, v291);
      v121 = v141;
      v122 = v142;
      goto LABEL_53;
    }

    v149 = v64;
    if (qword_100106A28 != -1)
    {
      swift_once();
    }

    v157 = sub_1000B5530();
    sub_100036380(v157, qword_100106FB8);
    v151 = v67;
    v152 = sub_1000B5520();
    v153 = sub_1000B5920();

    if (os_log_type_enabled(v152, v153))
    {
      goto LABEL_68;
    }

    goto LABEL_72;
  }

  v123 = [v67 noteData];
  if (v123)
  {
    v124 = v123;
    v125 = [v123 data];

    v126 = v256;
    if (v125)
    {
      v127 = sub_1000B4DF0();
      v129 = v128;
    }

    else
    {
      v127 = 0;
      v129 = 0xC000000000000000;
    }
  }

  else
  {
    v127 = 0;
    v129 = 0xC000000000000000;
    v126 = v256;
  }

  v241 = v67;
  sub_10008A8C4(v241, v127, v129, v289);

  v242 = *(v126 + 80);
  v291[4] = *(v126 + 64);
  v291[5] = v242;
  v292 = *(v126 + 96);
  v243 = *(v126 + 16);
  v291[0] = *v126;
  v291[1] = v243;
  v244 = *(v126 + 48);
  v291[2] = *(v126 + 32);
  v291[3] = v244;
  sub_100036320(v291, &qword_100106FF0, &qword_1000CAE68);
  v245 = v289[5];
  *(v126 + 64) = v289[4];
  *(v126 + 80) = v245;
  *(v126 + 96) = v290;
  v246 = v289[1];
  *v126 = v289[0];
  *(v126 + 16) = v246;
  v247 = v289[3];
  *(v126 + 32) = v289[2];
  *(v126 + 48) = v247;
  v248 = [v241 title];
  if (v248)
  {
    v249 = v248;
    v250 = sub_1000B5620();
    v252 = v251;

    v253 = v252;
  }

  else
  {
    v250 = 0;
    v253 = 0;
  }

  v166 = v264;
  v254 = v263;
  *v263 = v250;
  v254[1] = v253;
  v266 = v253;
LABEL_74:
  v167 = [v67 outlineState];
  v168 = [v167 collapsedUUIDs];

  sub_10004E6EC(&qword_100106FE0, &type metadata accessor for UUID);
  v169 = sub_1000B5830();

  *&v166[v64] = v169;
  if (*(v43 + 56))
  {
    v170 = v67;
    v44 = sub_1000B5A10();

    if (v44 >> 62)
    {
      goto LABEL_151;
    }

    v171 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_77:
    v172 = v262;
    if (v171)
    {
      *&v291[0] = _swiftEmptyArrayStorage;
      v111 = v291;
      sub_100043364(0, v171 & ~(v171 >> 63), 0);
      if ((v171 & 0x8000000000000000) == 0)
      {
        v173 = 0;
        v174 = *&v291[0];
        do
        {
          if ((v44 & 0xC000000000000001) != 0)
          {
            v175 = sub_1000B5C20();
          }

          else
          {
            v175 = *(v44 + 8 * v173 + 32);
          }

          sub_100050FE4(v175, v172);
          *&v291[0] = v174;
          v177 = *(v174 + 16);
          v176 = *(v174 + 24);
          if (v177 >= v176 >> 1)
          {
            sub_100043364(v176 > 1, v177 + 1, 1);
            v174 = *&v291[0];
          }

          ++v173;
          *(v174 + 16) = v177 + 1;
          sub_10004D348(v172, v174 + ((*(v287 + 80) + 32) & ~*(v287 + 80)) + *(v287 + 72) * v177);
        }

        while (v171 != v173);

        v64 = v275;
        *&v275[v258] = v174;
        v43 = v271;
        if (*(v271 + 57))
        {
          goto LABEL_90;
        }

LABEL_94:
        sub_10004CE38(v43);
        if ((*(v43 + 59) & 1) == 0)
        {
LABEL_139:

          return;
        }

        goto LABEL_95;
      }

      __break(1u);
LABEL_154:
      swift_once();
LABEL_39:
      v112 = sub_1000B5530();
      sub_100036380(v112, qword_100106FB8);
      v101 = v111;
      v102 = sub_1000B5520();
      v103 = sub_1000B5920();

      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        *&v291[0] = v105;
        *v104 = 136315138;
        v113 = [v101 identifier];
        if (v113)
        {
          v114 = v113;
          v115 = sub_1000B5620();
          v117 = v116;
        }

        else
        {
          v115 = 9732322;
          v117 = 0xA300000000000000;
        }

        v255 = sub_100062B20(v115, v117, v291);

        *(v104 + 4) = v255;
        v155 = "Markdown export: Note is locked — skipping {identifier: %s}";
        goto LABEL_147;
      }

LABEL_48:

      return;
    }

    *&v64[v258] = _swiftEmptyArrayStorage;
    if ((*(v43 + 57) & 1) == 0)
    {
      goto LABEL_94;
    }
  }

  else if ((*(v43 + 57) & 1) == 0)
  {
    goto LABEL_94;
  }

LABEL_90:
  v265 = 0;
  v178 = v260;
  v179 = v260;
  v180 = [v67 replicaIDToUserIDDictData];
  if (v180)
  {
    v181 = v180;
    v182 = sub_1000B4DF0();
    v184 = v183;

    v185 = v259;
    sub_1000B4EF0();
    if (v184 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = sub_1000B4DE0().super.isa;
      sub_10004D334(v182, v184);
    }
  }

  else
  {
    v185 = v259;
    sub_1000B4EF0();
    isa = 0;
  }

  v206 = objc_allocWithZone(ICMergeableDictionary);
  v207 = sub_1000B4ED0().super.isa;
  v208 = [v206 initWithData:isa replicaID:v207];

  v209 = *(v179 + 8);
  v64 = (v179 + 8);
  v210 = v285;
  v277 = v64;
  v276 = v209;
  (v209)(v185, v285);
  v264 = v208;
  v211 = [v208 allKeys];
  sub_1000362AC(0, &qword_100106FE8, NSString_ptr);
  v212 = sub_1000B57A0();

  if (v212 >> 62)
  {
    v213 = sub_1000B5CF0();
  }

  else
  {
    v213 = *((v212 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v44 = v274;
  if (v213)
  {
    v214 = 0;
    v287 = v212 & 0xC000000000000001;
    v284 = v212 & 0xFFFFFFFFFFFFFF8;
    v281 = (v178 + 48);
    v270 = (v178 + 32);
    v283 = (v267 + 56);
    v43 = _swiftEmptyArrayStorage;
    v269 = (v267 + 48);
    v268 = v212;
    v282 = v213;
    while (1)
    {
      if (v287)
      {
        v215 = sub_1000B5C20();
      }

      else
      {
        if (v214 >= *(v284 + 16))
        {
          goto LABEL_149;
        }

        v215 = *(v212 + 8 * v214 + 32);
      }

      v64 = v215;
      v216 = v214 + 1;
      if (__OFADD__(v214, 1))
      {
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        v171 = sub_1000B5CF0();
        goto LABEL_77;
      }

      sub_1000B5620();
      sub_1000B4EB0();

      if ((*v281)(v44, 1, v210) == 1)
      {

        sub_100036320(v44, &qword_100106FD0, &qword_1000CAE50);
        (*v283)(v61, 1, 1, v288);
        goto LABEL_113;
      }

      v280 = v43;
      v217 = *v270;
      (*v270)(v286, v44, v210);
      v218 = v210;
      v219 = sub_1000B4ED0().super.isa;
      v220 = [v67 userIDForReplicaID:v219];

      v221 = sub_1000B5620();
      v223 = v222;

      v224 = [objc_opt_self() CR_unknown];
      v225 = v272;
      sub_1000B4EE0();

      v226 = sub_1000B4EC0();
      v228 = v227;
      (v276)(v225, v218);
      if (v221 == v226 && v223 == v228)
      {
        break;
      }

      v229 = sub_1000B5F20();

      if (v229)
      {
        goto LABEL_124;
      }

      v231 = &v279[*(v288 + 48)];
      v232 = v285;
      v217();
      v230 = 0;
      *v231 = v221;
      v231[1] = v223;
      v210 = v232;
LABEL_126:
      v212 = v268;
      v61 = v279;
      v233 = v288;
      (*v283)(v279, v230, 1, v288);
      v234 = (*v269)(v61, 1, v233);
      v67 = v278;
      v44 = v274;
      v43 = v280;
      if (v234 != 1)
      {
        sub_10004D4F4(v61, v273, &qword_100106AF0, &qword_1000CAE60);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_10003389C(0, *(v43 + 2) + 1, 1, v43);
        }

        v236 = *(v43 + 2);
        v235 = *(v43 + 3);
        if (v236 >= v235 >> 1)
        {
          v43 = sub_10003389C(v235 > 1, v236 + 1, 1, v43);
        }

        *(v43 + 2) = v236 + 1;
        sub_10004D4F4(v273, v43 + ((*(v267 + 80) + 32) & ~*(v267 + 80)) + *(v267 + 72) * v236, &qword_100106AF0, &qword_1000CAE60);
        v210 = v285;
        goto LABEL_114;
      }

LABEL_113:
      sub_100036320(v61, &qword_100106FD8, &qword_1000CAE58);
LABEL_114:
      ++v214;
      if (v216 == v282)
      {
        goto LABEL_134;
      }
    }

LABEL_124:
    v210 = v285;
    (v276)(v286, v285);

    v230 = 1;
    goto LABEL_126;
  }

  v43 = _swiftEmptyArrayStorage;
LABEL_134:

  v237 = v43;
  if (*(v43 + 2))
  {
    sub_100030480(&qword_100106AF8, &unk_1000CA360);
    v238 = sub_1000B5D20();
  }

  else
  {
    v238 = &_swiftEmptyDictionarySingleton;
  }

  v64 = v275;
  v239 = v271;
  v240 = v265;
  *&v291[0] = v238;
  sub_10004CE8C(v237, 1, v291);
  if (v240)
  {

    __break(1u);
    return;
  }

  sub_10004CE38(v239);
  *&v64[v257] = *&v291[0];
  if ((*(v239 + 59) & 1) == 0)
  {
    goto LABEL_139;
  }

LABEL_95:
  v187 = [v67 folder];
  if (v187 && (v188 = v187, v189 = [v187 identifier], v188, v189))
  {
    v190 = sub_1000B5620();
    v192 = v191;
  }

  else
  {
    v190 = 0;
    v192 = 0;
  }

  *(v64 + 3) = v190;
  *(v64 + 4) = v192;
  v193 = [v67 folder];
  if (v193)
  {
    v194 = v193;
    v195 = [v193 title];

    v196 = sub_1000B5620();
    v198 = v197;
  }

  else
  {
    v196 = 0;
    v198 = 0;
  }

  *(v64 + 5) = v196;
  *(v64 + 6) = v198;
  v199 = [v67 title];
  if (v199)
  {
    v200 = v199;
    v201 = sub_1000B5620();
    v203 = v202;
  }

  else
  {

    v201 = 0;
    v203 = 0;
  }

  v204 = v263;
  *v263 = v201;
  v204[1] = v203;
  v64[56] = [v67 markedForDeletion];
  v205 = [v67 isPasswordProtected];

  v64[57] = v205;
}

void sub_10004B338(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1000B4F00();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v21 - v12;
  v14 = [a1 timestamp];
  if (v14)
  {
    v15 = v14;
    sub_1000B4E70();

    v16 = sub_1000B4EA0();
    (*(*(v16 - 8) + 56))(v13, 0, 1, v16);
    sub_100036320(v13, &qword_100106E38, &unk_1000CB730);
    isa = sub_1000B5F90().super.super.isa;
    v18 = [a1 replicaID];
    sub_1000B4EE0();

    v19 = sub_1000B4ED0().super.isa;
    (*(v6 + 8))(v9, v5);
    [a3 setNotesVersion:isa forReplicaID:v19];
  }

  else
  {
    v20 = sub_1000B4EA0();
    (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
    sub_100036320(v13, &qword_100106E38, &unk_1000CB730);
  }
}

void sub_10004B58C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v3();
}

uint64_t sub_10004B600()
{
  *v0;
  *v0;
  *v0;
  sub_1000B56A0();
}

uint64_t sub_10004B738@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004E8B8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10004B768(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1162760014;
  v5 = 0xEC00000053454E49;
  v6 = 0x4C5F4D554944454DLL;
  if (v2 != 5)
  {
    v6 = 0x494C5F454752414CLL;
    v5 = 0xEB0000000053454ELL;
  }

  v7 = 0x52475F454752414CLL;
  v8 = 0xEA00000000004449;
  if (v2 != 3)
  {
    v7 = 0x494C5F4C4C414D53;
    v8 = 0xEB0000000053454ELL;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x52475F4C4C414D53;
  v10 = 0xEA00000000004449;
  if (v2 != 1)
  {
    v9 = 0x475F4D554944454DLL;
    v10 = 0xEB00000000444952;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_10004B980(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x544847494CLL;
  }

  else
  {
    v4 = 0x544C5541464544;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x544847494CLL;
  }

  else
  {
    v6 = 0x544C5541464544;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000B5F20();
  }

  return v9 & 1;
}

Swift::Int sub_10004BA24()
{
  v1 = *v0;
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

uint64_t sub_10004BAA4()
{
  *v0;
  sub_1000B56A0();
}

Swift::Int sub_10004BB10()
{
  v1 = *v0;
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

uint64_t sub_10004BB8C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000F3348;
  v8._object = v3;
  v5 = sub_1000B5D60(v4, v8);

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

void sub_10004BBEC(uint64_t *a1@<X8>)
{
  v2 = 0x544C5541464544;
  if (*v1)
  {
    v2 = 0x544847494CLL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10004BD40(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x49414E424D554854;
  v4 = 0xE90000000000004CLL;
  if (v2 != 1)
  {
    v3 = 0x4D554944454DLL;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x57454956455250;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x49414E424D554854;
  v8 = 0xE90000000000004CLL;
  if (*a2 != 1)
  {
    v7 = 0x4D554944454DLL;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x57454956455250;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000B5F20();
  }

  return v11 & 1;
}

Swift::Int sub_10004BE44()
{
  v1 = *v0;
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

uint64_t sub_10004BEE8()
{
  *v0;
  *v0;
  sub_1000B56A0();
}

Swift::Int sub_10004BF78()
{
  v1 = *v0;
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

uint64_t sub_10004C018@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004E904(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10004C048(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE90000000000004CLL;
  v5 = 0x49414E424D554854;
  if (v2 != 1)
  {
    v5 = 0x4D554944454DLL;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x57454956455250;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10004C194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void))
{
  a5();
  a6();

  return sub_1000B4FF0();
}

uint64_t sub_10004C254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void))
{
  a5();
  a6();

  return sub_1000B5010();
}

uint64_t sub_10004C2E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644965707974 && a2 == 0xEE00726569666974;
  if (v4 || (sub_1000B5F20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1000B5F20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000C7000 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6954746E65726170 && a2 == 0xEB00000000656C74 || (sub_1000B5F20() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000C7020 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000C7040 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4164657461657263 && a2 == 0xE900000000000074 || (sub_1000B5F20() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6465696669646F6DLL && a2 == 0xEA00000000007441 || (sub_1000B5F20() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x64656E6E69507369 && a2 == 0xE800000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4E6B636975517369 && a2 == 0xEB0000000065746FLL || (sub_1000B5F20() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7974537265706170 && a2 == 0xEA0000000000656CLL || (sub_1000B5F20() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000C7060 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001000C7080 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001000C70A0 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x7441646577656976 && a2 == 0xE800000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001000C70C0 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001000C70E0 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001000C7100 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001000C7120 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6574707972636E65 && a2 == 0xED00006174614464 || (sub_1000B5F20() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001000C7140 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x6974697669746361 && a2 == 0xEA00000000007365 || (sub_1000B5F20() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001000C7160 == a2)
  {

    return 24;
  }

  else
  {
    v6 = sub_1000B5F20();

    if (v6)
    {
      return 24;
    }

    else
    {
      return 25;
    }
  }
}

unint64_t sub_10004CA8C(unint64_t a1)
{
  if (a1 < 8)
  {
    return 0x605040302010007uLL >> (8 * a1);
  }

  if (qword_100106A28 != -1)
  {
    swift_once();
  }

  v2 = sub_1000B5530();
  sub_100036380(v2, qword_100106FB8);
  v3 = sub_1000B5520();
  v4 = sub_1000B5930();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unknown paper style — returning nil", v5, 2u);
  }

  return 7;
}
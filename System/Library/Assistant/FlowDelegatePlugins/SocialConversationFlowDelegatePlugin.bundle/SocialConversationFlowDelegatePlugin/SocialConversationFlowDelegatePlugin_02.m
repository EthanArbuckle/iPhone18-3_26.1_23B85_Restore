uint64_t sub_46D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v103 = a4;
  v123 = a1;
  v132 = a2;
  v133 = a3;
  v105 = sub_4A9B4;
  v106 = sub_4AA68;
  v107 = sub_7BBC;
  v108 = sub_7B48;
  v109 = sub_7B48;
  v110 = sub_7C08;
  v166 = 0;
  v165 = 0;
  v164 = 0;
  v162 = 0;
  v163 = 0;
  v156 = 0;
  v155 = 0;
  memset(__b, 0, sizeof(__b));
  v152 = 0;
  v153 = 0;
  v149 = 0;
  v148 = 0;
  v147[0] = 0;
  v147[1] = 0;
  v144 = 0;
  v145 = 0;
  v143 = 0;
  v142 = 0;
  v141 = 0;
  v120 = 0;
  v111 = sub_C3234();
  v112 = *(v111 - 8);
  v113 = v111 - 8;
  v114 = (*(v112 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v111);
  v115 = v49 - v114;
  v4 = sub_21E8(&qword_EF800, &qword_C5FC8);
  v116 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v117 = (v49 - v116);
  v118 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49 - v116);
  v119 = (v49 - v118);
  v121 = (*(*(sub_21E8(&qword_EF7C8, &qword_C5F90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v120);
  v122 = v49 - v121;
  v138 = sub_C2D14();
  v136 = *(v138 - 8);
  v137 = v138 - 8;
  v124 = v136;
  v130 = *(v136 + 64);
  v125 = (v130 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v138);
  v126 = v49 - v125;
  v127 = (v130 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v49 - v125);
  v128 = v49 - v127;
  v166 = v49 - v127;
  v129 = (v130 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v6);
  v131 = v49 - v129;
  v165 = v49 - v129;
  __chkstk_darwin(v7);
  v139 = v49 - v8;
  v164 = v9;
  v162 = v132;
  v163 = v133;
  v134 = *(v136 + 16);
  v135 = v136 + 16;
  v134();
  v140 = (*(v136 + 88))(v139, v138);
  if (v140 == enum case for JSONValue.BOOL(_:))
  {
    (*(v136 + 96))(v139, v138);
    v15 = v103;
    result = v104;
    v16 = *v139;
    v143 = *v139 & 1;
    *(v103 + 24) = &type metadata for Bool;
    *v15 = v16;
    v102 = result;
  }

  else if (v140 == enum case for JSONValue.int(_:))
  {
    (*(v136 + 96))(v139, v138);
    v10 = v103;
    result = v104;
    v141 = *v139;
    v12 = v141;
    *(v103 + 24) = &type metadata for Int;
    *v10 = v12;
    v102 = result;
  }

  else if (v140 == enum case for JSONValue.double(_:))
  {
    (*(v136 + 96))(v139, v138);
    v13 = v103;
    result = v104;
    v142 = *v139;
    v14 = v142;
    *(v103 + 24) = &type metadata for Double;
    *v13 = v14;
    v102 = result;
  }

  else if (v140 == enum case for JSONValue.string(_:))
  {
    (*(v136 + 96))(v139, v138);
    v101 = *v139;
    v100 = *(v139 + 1);
    v144 = v101;
    v145 = v100;

    v17 = v100;
    v18 = v101;
    v19 = v103;
    *(v103 + 24) = &type metadata for String;
    *v19 = v18;
    v19[1] = v17;

    result = v104;
    v102 = v104;
  }

  else if (v140 == enum case for JSONValue.array(_:))
  {
    (*(v136 + 96))(v139, v138);
    v97 = *v139;
    v149 = v97;
    v148 = sub_C3324();

    v146[4] = v97;
    v98 = sub_21E8(&qword_EF838, &qword_C5FF8);
    sub_4AC1C();
    sub_C3824();
    for (i = v104; ; i = v94)
    {
      v96 = i;
      sub_21E8(&qword_EF850, qword_C6000);
      sub_C3B44();
      if ((*(v136 + 48))(v122, 1, v138) == 1)
      {
        sub_1D7C8(v147);
        v93 = &v148;
        v92 = v148;

        v21 = sub_21E8(&qword_EF818, &qword_C5FE8);
        v22 = v103;
        v23 = v92;
        v24 = v21;
        v25 = v93;
        *(v103 + 24) = v24;
        *v22 = v23;
        sub_1D7C8(v25);

        result = v96;
        v102 = v96;
        return result;
      }

      (*(v136 + 32))(v131, v122, v138);
      v20 = v96;
      sub_46D68(v146, v131, v132, v133);
      v94 = v20;
      v95 = v20;
      if (v20)
      {
        break;
      }

      sub_21E8(&qword_EF818, &qword_C5FE8);
      sub_C3724();
      (*(v136 + 8))(v131, v138);
    }

    v50 = v95;
    (*(v136 + 8))(v131, v138);
    sub_1D7C8(v147);
    sub_1D7C8(&v148);

    v52 = v50;
  }

  else if (v140 == enum case for JSONValue.object(_:))
  {
    (*(v136 + 96))(v139, v138);
    v87 = *v139;
    v156 = v87;
    v88 = &type metadata for String;
    v89 = &protocol witness table for String;
    v155 = sub_C3314();

    v90 = &v167;
    sub_C3354();
    memcpy(__b, v90, sizeof(__b));
    for (j = v104; ; j = v82)
    {
      v85 = j;
      sub_21E8(&qword_EF808, &qword_C5FD0);
      sub_C33D4();
      sub_4A67C(v117, v119);
      v86 = sub_21E8(&qword_EF810, &unk_C5FD8);
      if ((*(*(v86 - 8) + 48))(v119, 1) == 1)
      {
        sub_49790(__b);
        v78 = &v155;
        v77 = v155;

        v28 = sub_21E8(&qword_EEFF8, &unk_C5AC0);
        v29 = v103;
        v30 = v77;
        v31 = v28;
        v32 = v78;
        *(v103 + 24) = v31;
        *v29 = v30;
        sub_1D7C8(v32);

        result = v85;
        v102 = v85;
        return result;
      }

      v80 = *v119;
      v81 = *(v119 + 1);
      v26 = v119 + *(v86 + 48);
      v152 = v80;
      v153 = v81;
      (*(v136 + 32))(v128, v26, v138);
      v27 = v85;

      sub_46D68(v151, v128, v132, v133);
      v82 = v27;
      v83 = v81;
      v84 = v27;
      if (v27)
      {
        break;
      }

      v79 = v150;
      v150[0] = v80;
      v150[1] = v81;
      sub_21E8(&qword_EEFF8, &unk_C5AC0);
      sub_C33F4();
      (*(v136 + 8))(v128, v138);
    }

    v49[1] = v84;
    v49[0] = v83;

    (*(v136 + 8))(v128, v138);

    sub_49790(__b);
    sub_1D7C8(&v155);
  }

  else
  {
    v33 = v115;
    v34 = sub_BF704();
    (*(v112 + 16))(v33, v34, v111);
    (v134)(v126, v123, v138);
    v62 = (*(v124 + 80) + 16) & ~*(v124 + 80);
    v66 = 7;
    v63 = swift_allocObject();
    (*(v136 + 32))(v63 + v62, v126, v138);

    v65 = 32;
    v35 = swift_allocObject();
    v36 = v63;
    v67 = v35;
    *(v35 + 16) = v105;
    *(v35 + 24) = v36;

    v75 = sub_C3224();
    v76 = sub_C3884();
    v64 = 17;
    v69 = swift_allocObject();
    *(v69 + 16) = 32;
    v70 = swift_allocObject();
    *(v70 + 16) = 8;
    v37 = swift_allocObject();
    v38 = v67;
    v68 = v37;
    *(v37 + 16) = v106;
    *(v37 + 24) = v38;
    v39 = swift_allocObject();
    v40 = v68;
    v72 = v39;
    *(v39 + 16) = v107;
    *(v39 + 24) = v40;
    v74 = sub_21E8(&unk_EEFA0, &unk_C50F0);
    v71 = sub_C3C64();
    v73 = v41;

    v42 = v69;
    v43 = v73;
    *v73 = v108;
    v43[1] = v42;

    v44 = v70;
    v45 = v73;
    v73[2] = v109;
    v45[3] = v44;

    v46 = v72;
    v47 = v73;
    v73[4] = v110;
    v47[5] = v46;
    sub_4E48();

    if (os_log_type_enabled(v75, v76))
    {
      v55 = sub_C3954();
      v54 = sub_21E8(&qword_EE828, &qword_C5100);
      v56 = sub_5DD4(0);
      v57 = sub_5DD4(1);
      v58 = &v161;
      v161 = v55;
      v59 = &v160;
      v160 = v56;
      v60 = &v159;
      v159 = v57;
      sub_5E28(2, &v161);
      sub_5E28(1, v58);
      v48 = v104;
      v157 = v108;
      v158 = v69;
      sub_5E3C(&v157, v58, v59, v60);
      v61 = v48;
      if (v48)
      {

        __break(1u);
      }

      else
      {
        v157 = v109;
        v158 = v70;
        sub_5E3C(&v157, &v161, &v160, &v159);
        v53 = 0;
        v157 = v110;
        v158 = v72;
        sub_5E3C(&v157, &v161, &v160, &v159);
        _os_log_impl(&dword_0, v75, v76, "Unable to convert [String: JSONValue] to [String: Any] for %s", v55, 0xCu);
        sub_5E88(v56);
        sub_5E88(v57);
        sub_C3934();
      }
    }

    else
    {
    }

    _objc_release(v75);
    (*(v112 + 8))(v115, v111);
    sub_4A7E4();
    v51 = swift_allocError();
    swift_willThrow();
    (*(v136 + 8))(v139, v138);
    result = v51;
    v52 = v51;
  }

  return result;
}

uint64_t sub_48128()
{
  v4 = 0;
  v5 = 0;
  v3 = sub_C3564("SocialConversation", 0x12uLL, 1);
  v2 = v0;

  v4 = v3;
  v5 = v2;
  sub_8224(&v4);
  return v3;
}

uint64_t sub_481A0(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *v2;
  v9 = v2[1];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_4CE4;

  return sub_421A0(a1, a2, v8, v9);
}

uint64_t sub_48274(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *v2;
  v9 = v2[1];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_48348;

  return sub_43D64(a1, a2, v8, v9);
}

uint64_t sub_48348(uint64_t a1)
{
  v5 = *v1;
  v2 = *(*v1 + 24);
  *(v5 + 16) = *v1;

  v3 = *(*(v5 + 16) + 8);

  return v3(a1);
}

uint64_t sub_48478()
{
  result = sub_C3564("com.apple.siri.SocialConversation.variables", 0x2BuLL, 1);
  qword_F10E0 = result;
  qword_F10E8 = v1;
  return result;
}

uint64_t *sub_484BC()
{
  if (qword_EE570 != -1)
  {
    swift_once();
  }

  return &qword_F10E0;
}

uint64_t sub_4851C()
{
  v0 = sub_484BC();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_48588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a3;
  v3[7] = a2;
  v3[6] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;
  v4 = v3[2];
  return _swift_task_switch(sub_485E8, 0);
}

uint64_t sub_485E8()
{
  v1 = *(v0 + 64);
  v10 = v1;
  *(v0 + 16) = v0;
  _objc_retain(v1);
  if (v10)
  {
    v8 = v9[8];
    v2 = v9[6];
    sub_48760(v9[7], v8);
    v7 = sub_C3484();

    sub_C1D24();
    v6 = sub_C3484();

    [v8 setObject:v7 forKey:v6];
    _objc_release(v6);
    swift_unknownObjectRelease();
    _objc_release(v8);
  }

  v3 = *(v9[2] + 8);
  v4 = v9[2];

  return v3();
}

uint64_t sub_48760(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v29 = a2;
  v43 = 0;
  v42 = 0;
  v46 = 0;
  v47 = 0;
  v33 = 0;
  v30 = (*(*(sub_C34E4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = &v9 - v30;
  v43 = __chkstk_darwin(v32);
  v42 = v2;
  v48 = 0;
  v35 = objc_opt_self();

  isa = sub_C3334().super.isa;

  type metadata accessor for WritingOptions();
  v34 = sub_C3C64();
  sub_8720();
  sub_C3A24();
  v41[0] = v48;
  v38 = [v35 dataWithJSONObject:isa options:v41[1] error:v41];
  v36 = v41[0];
  _objc_retain(v41[0]);
  v3 = v48;
  v48 = v36;
  _objc_release(v3);
  swift_unknownObjectRelease();
  if (v38)
  {
    v28 = v38;
    v23 = v38;
    v24 = sub_C1AF4();
    v25 = v4;
    _objc_release(v23);
    v26 = v24;
    v27 = v25;
  }

  else
  {
    v10 = v48;
    v11 = sub_C1A44();
    _objc_release(v10);
    swift_willThrow();

    v26 = 0;
    v27 = 0xF000000000000000;
  }

  v21 = v27;
  v22 = v26;
  if ((v27 & 0xF000000000000000) == 0xF000000000000000)
  {
    v15 = sub_C3564("", 0, 1);
    v16 = v7;
  }

  else
  {
    v19 = v22;
    v20 = v21;
    v18 = v21;
    v17 = v22;
    v46 = v22;
    v47 = v21;
    sub_C34D4();
    v44 = sub_C34B4();
    v45 = v5;
    if (v5)
    {
      v39 = v44;
      v40 = v45;
    }

    else
    {
      v39 = sub_C3564("", 0, 1);
      v40 = v6;
      if (v45)
      {
        sub_8224(&v44);
      }
    }

    v13 = v39;
    v14 = v40;
    sub_4AD20(v17, v18);
    v15 = v13;
    v16 = v14;
  }

  v12 = v16;
  return v15;
}

uint64_t sub_48B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a3;
  v3[9] = a1;
  v3[4] = v3;
  v3[5] = 0;
  v3[6] = 0;
  v3[7] = 0;
  v3[2] = 0;
  v3[3] = 0;
  v3[5] = a1;
  v3[6] = a2;
  v3[7] = a3;
  v4 = v3[4];
  return _swift_task_switch(sub_48BEC, 0);
}

uint64_t sub_48BEC()
{
  v1 = *(v0 + 80);
  v19 = v1;
  *(v0 + 32) = v0;
  _objc_retain(v1);
  if (v19)
  {
    v16 = v18[10];
    v2 = v18[9];
    sub_C1D24();
    v15 = sub_C3484();

    v17 = [v16 stringForKey:v15];
    _objc_release(v15);
    _objc_release(v16);
    if (v17)
    {
      v11 = sub_C3494();
      v12 = v3;
      _objc_release(v17);
      v13 = v11;
      v14 = v12;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v9 = v13;
    v10 = v14;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  if (v10)
  {
    v4 = v18[10];
    v18[2] = v9;
    v18[3] = v10;
    v18[8] = sub_48FB0(v9, v10, v4);
    if (v18[8])
    {
      v20 = v18[8];
    }

    else
    {
      sub_21E8(&qword_EF000, &qword_C5E10);
      sub_C3C64();
      v20 = sub_C3374();
      if (v18[8])
      {
        sub_1D7C8(v18 + 8);
      }
    }

    v8 = v20;
  }

  else
  {
    sub_21E8(&qword_EF000, &qword_C5E10);
    sub_C3C64();
    v8 = sub_C3374();
  }

  v5 = *(v18[4] + 8);
  v6 = v18[4];

  return v5(v8);
}

uint64_t sub_48FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v30 = a2;
  v27 = a3;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v47 = 0;
  v48 = 0;
  v39 = 0;
  v35 = sub_C34E4();
  v31 = *(v35 - 8);
  v32 = v35 - 8;
  v28 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v33 = &v8 - v28;
  v42 = __chkstk_darwin(v29);
  v43 = v3;
  v41 = v4;
  sub_C34C4();
  variable initialization expression of PlayWithMeData.initialized();
  v34 = sub_C34A4();
  v36 = v5;
  (*(v31 + 8))(v33, v35);
  if ((v36 & 0xF000000000000000) == 0xF000000000000000)
  {
    return 0;
  }

  v25 = v34;
  v26 = v36;
  v17 = v36;
  v18 = v34;
  v47 = v34;
  v48 = v36;
  v19 = 0;
  v46 = 0;
  v21 = objc_opt_self();
  sub_4AD9C(v18, v17);
  isa = sub_C1AD4().super.isa;
  sub_4AD20(v18, v17);
  type metadata accessor for ReadingOptions();
  v20 = sub_C3C64();
  sub_8850();
  sub_C3A24();
  v40[0] = v46;
  v24 = [v21 JSONObjectWithData:isa options:v40[1] error:v40];
  v22 = v40[0];
  _objc_retain(v40[0]);
  v6 = v46;
  v46 = v22;
  _objc_release(v6);
  _objc_release(isa);
  if (!v24)
  {
    v9 = v46;
    v10 = sub_C1A44();
    _objc_release(v9);
    swift_willThrow();
    swift_errorRetain();
    v39 = v10;

    sub_4AD20(v18, v17);
    return 0;
  }

  v16 = v24;
  v14 = v24;
  v15 = &v45;
  sub_C3A14();
  sub_21E8(&qword_EEFF8, &unk_C5AC0);
  if (swift_dynamicCast())
  {
    v13 = v38;
  }

  else
  {
    v13 = 0;
  }

  v44 = v13;
  if (v13)
  {
    v37 = v44;
  }

  else
  {
    sub_21E8(&qword_EF000, &qword_C5E10);
    sub_C3C64();
    v37 = sub_C3374();
    if (v44)
    {
      sub_1D7C8(&v44);
    }
  }

  swift_unknownObjectRelease();
  v11 = v37;
  sub_4AD20(v18, v17);
  return v11;
}

uint64_t sub_494B0(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *v2;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_4CE4;

  return sub_48588(a1, a2, v8);
}

uint64_t sub_49578(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *v2;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_48348;

  return sub_48B84(a1, a2, v8);
}

uint64_t sub_49640()
{
  v3 = *(sub_C1D34() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_4970C(uint64_t a1, char a2)
{
  v3 = sub_C1D34();
  v4 = v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  return sub_42EB4(a1, a2 & 1, v4);
}

uint64_t *sub_49790(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  sub_497D0();
  return a1;
}

__n128 sub_49814(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_49830()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_49870()
{
  result = *(v0 + 16);
  sub_45FA0();
  return result;
}

unint64_t sub_49878(unint64_t result)
{
  v3 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return &_swiftEmptyArrayStorage;
    }

    sub_21E8(&qword_EF870, &qword_C6270);
    v1 = sub_C3704();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

void *sub_49930(void (*a1)(void))
{
  a1();
  v2 = _swift_stdlib_bridgeErrorToNSError();
  _objc_retain(v2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_49A00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_49A4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_49A98(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v24 = a6;
  v26 = a1;
  v20 = 0;
  v30 = a6;
  v21 = *(a6 - 8);
  v22 = v21;
  v7 = *(v21 + 64);
  __chkstk_darwin(0);
  v23 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9();
  v27 = sub_C3B64() >> 3;
  v28 = *v26;
  v29 = v28;
  if (v27 < 0)
  {
    result = sub_C3BA4();
    __break(1u);
  }

  else
  {
    v19 = v28 + v27;
    v18 = &v18;
    v10 = __chkstk_darwin(v23);
    v16 = v29;
    v17 = v11;
    sub_49CD4(v10, sub_4B860, v15, v12, &type metadata for Never, &type metadata for () + 8, v13, &type metadata for ());
    (*(v22 + 8))(v23, v24);
    result = v18;
    *v26 = v19;
  }

  return result;
}

uint64_t sub_49CD4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v11[2] = a8;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v17 = a7;
  v18 = "Fatal error";
  v19 = "UnsafeRawBufferPointer with negative count";
  v20 = "Swift/UnsafeRawBufferPointer.swift";
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v24 = v11 - v23;
  v25 = *(*(v8 - 8) + 64);
  if (v25 < 0)
  {
    result = sub_C3BA4();
    __break(1u);
  }

  else
  {
    v9 = v16;
    result = v13(v12, v12 + v25, v24);
    v11[1] = v9;
    if (v9)
    {
      return (*(v21 + 32))(v17, v24, v15);
    }
  }

  return result;
}

uint64_t sub_49E9C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_49ED8(uint64_t *a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = a4();
  v7 = *a1;
  _objc_retain(v8);
  sub_C3984();
  if (v8)
  {
    _objc_release(v8);
  }

  *a1 = v7 + 8;
  v4 = *a2;
  if (*a2)
  {
    _objc_retain(v8);
    *v4 = v8;
    _objc_release(v8);
    *a2 = v4 + 1;
  }

  else
  {
    _objc_release(v8);
  }
}

uint64_t sub_4A05C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_4A0A8()
{
  v2 = qword_EF7F0;
  if (!qword_EF7F0)
  {
    sub_81B0(&qword_EF7E8, &qword_C5FC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF7F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4A130(uint64_t a1)
{
  v3 = sub_C2C64();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_4A1D8()
{
  v3 = *(sub_C1D34() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_4A2FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_4A33C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_4A37C()
{
  v3 = *(sub_C2C64() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_4A448()
{
  v1 = *(sub_C2C64() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_459F0();
}

uint64_t sub_4A504()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_4A550()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_4A590(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_4A604();

  return sub_49A98(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

unint64_t sub_4A604()
{
  v2 = qword_EF7F8;
  if (!qword_EF7F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF7F8);
    return WitnessTable;
  }

  return v2;
}

_OWORD *sub_4A67C(_OWORD *a1, _OWORD *a2)
{
  v9 = sub_21E8(&qword_EF810, &unk_C5FD8);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v3 = sub_21E8(&qword_EF800, &qword_C5FC8);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v6 = a2 + *(v9 + 48);
    v5 = a1 + *(v9 + 48);
    v2 = sub_C2D14();
    (*(*(v2 - 8) + 32))(v6, v5);
    (*(v10 + 56))(a2, 0, 1, v9);
  }

  return a2;
}

unint64_t sub_4A7E4()
{
  v2 = qword_EF820;
  if (!qword_EF820)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF820);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4A860()
{
  v2 = qword_EF828;
  if (!qword_EF828)
  {
    sub_81B0(&qword_EF818, &qword_C5FE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF828);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4A8E8()
{
  v3 = *(sub_C2D14() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_4A9B4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_C2D14();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_47EF0(v3, a1);
}

uint64_t sub_4AA28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_4AA68()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_C2D14();
  v1 = sub_4AAC4();

  return sub_5EF0(v5, v3, v4, v1);
}

unint64_t sub_4AAC4()
{
  v2 = qword_EF840;
  if (!qword_EF840)
  {
    sub_C2D14();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF840);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4AB9C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_4ABDC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_4AC1C()
{
  v2 = qword_EF848;
  if (!qword_EF848)
  {
    sub_81B0(&qword_EF838, &qword_C5FF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF848);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4ACA4()
{
  v2 = qword_EF858;
  if (!qword_EF858)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF858);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4AD20(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

uint64_t sub_4AD9C(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

__n128 sub_4AE18(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_4AE24(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_4AF68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_4B150(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *sub_4B2A0(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_4B490(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFE && *(a1 + 8))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v4 = *a1;
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_4B5DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_4B7E4()
{
  v2 = qword_EF860;
  if (!qword_EF860)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF860);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4B860()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_49CAC();
}

uint64_t sub_4B890()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_4B928()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_4B968()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_4B9A8()
{
  v3 = *(sub_C1D34() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_4BACC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_4BB0C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_4BB4C()
{
  type metadata accessor for MediaService();
  result = sub_4BBA8();
  qword_F10F0 = result;
  return result;
}

uint64_t *sub_4BBE4()
{
  if (qword_EE578 != -1)
  {
    swift_once();
  }

  return &qword_F10F0;
}

uint64_t sub_4BC44()
{
  v1 = *sub_4BBE4();

  return v1;
}

uint64_t sub_4BC74()
{
  v131 = 0;
  v173 = 0;
  v172 = 0;
  v171 = 0;
  v170 = 0;
  v130 = 0;
  v162 = 0;
  v105 = 0;
  v106 = sub_C3234();
  v107 = *(v106 - 8);
  v108 = v107;
  v109 = *(v107 + 64);
  v1 = __chkstk_darwin(0);
  v111 = (v109 + 15) & 0xFFFFFFFFFFFFFFF0;
  v110 = &v44 - v111;
  __chkstk_darwin(v1);
  v112 = &v44 - v111;
  v143 = sub_C3254();
  v113 = *(v143 - 8);
  v141 = v113;
  v2 = *(v113 + 64);
  __chkstk_darwin(v131);
  v142 = (&v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v146 = sub_C32B4();
  v114 = *(v146 - 8);
  v144 = v114;
  v115 = *(v114 + 64);
  v4 = __chkstk_darwin(v131);
  v116 = (v115 + 15) & 0xFFFFFFFFFFFFFFF0;
  v145 = &v44 - v116;
  __chkstk_darwin(v4);
  v149 = &v44 - v116;
  v134 = sub_C3264();
  v117 = *(v134 - 8);
  v132 = v117;
  v5 = *(v117 + 64);
  __chkstk_darwin(v131);
  v133 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_C38A4() - 8) + 64);
  __chkstk_darwin(v131);
  v124 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_C3894() - 8) + 64);
  __chkstk_darwin(v131);
  v123 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_C3284();
  v118 = *(v137 - 8);
  v135 = v118;
  v11 = *(v118 + 64);
  __chkstk_darwin(v137 - 8);
  v136 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = v0;
  v127 = 7;
  v129 = swift_allocObject();
  v119 = v129;
  v120 = (v129 + 16);
  v172 = v129 + 16;
  *(v129 + 16) = v130;
  sub_4CFB8();
  v139 = 1;
  v121 = sub_C3564("com.apple.siri.SiriSocialConversation.canPlayAppleMusic", 0x37uLL, 1);
  v122 = v13;
  sub_4D01C();
  sub_4D034();
  sub_4D0D4(v124);
  v125 = sub_C38C4();
  v171 = v125;
  v140 = dispatch_semaphore_create(v131);
  v126 = v140;
  v170 = v140;

  v14 = v140;
  v15 = swift_allocObject();
  v16 = v129;
  v17 = v130;
  v18 = v140;
  v15[2] = v128;
  v15[3] = v16;
  v15[4] = v18;
  v168 = sub_4D260;
  v169 = v15;
  aBlock = _NSConcreteStackBlock;
  v164 = 1107296256;
  v165 = v17;
  v166 = sub_4D2FC;
  v167 = &unk_E54B0;
  v138 = _Block_copy(&aBlock);
  sub_4D01C();
  sub_4D3B0();
  sub_C38B4();
  (*(v132 + 8))(v133, v134);
  (*(v135 + 8))(v136, v137);
  _Block_release(v138);

  sub_C3294();
  v19 = v141;
  *v142 = v139;
  (*(v19 + 104))();
  sub_C32A4();
  (*(v141 + 8))(v142, v143);
  v148 = *(v144 + 8);
  v147 = v144 + 8;
  v148(v145, v146);
  v151 = sub_C3904();
  v150 = v151 & 1;
  v148(v149, v146);
  v162 = v150;
  if (v151)
  {
    v20 = v112;
    v21 = sub_BF704();
    (*(v108 + 16))(v20, v21, v106);
    v102 = sub_C3224();
    v99 = v102;
    v101 = sub_C3874();
    v100 = v101;
    sub_21E8(&unk_EEFA0, &unk_C50F0);
    v103 = sub_C3C64();
    if (os_log_type_enabled(v102, v101))
    {
      v22 = v105;
      v90 = sub_C3954();
      v86 = v90;
      v87 = sub_21E8(&qword_EE828, &qword_C5100);
      v88 = 0;
      v91 = sub_5DD4(0);
      v89 = v91;
      v92 = sub_5DD4(v88);
      v155 = v90;
      v154 = v91;
      v153 = v92;
      v93 = 0;
      v94 = &v155;
      sub_5E28(0, &v155);
      sub_5E28(v93, v94);
      v152 = v103;
      v95 = &v44;
      __chkstk_darwin(&v44);
      v96 = &v44 - 6;
      *(&v44 - 4) = v23;
      *(&v44 - 3) = &v154;
      *(&v44 - 2) = &v153;
      v97 = sub_21E8(&unk_EEFB0, qword_C5110);
      sub_8128();
      sub_C3654();
      v98 = v22;
      if (v22)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_0, v99, v100, "timed out waiting for canPlayAppleMusic value", v86, 2u);
        v84 = 0;
        sub_5E88(v89);
        sub_5E88(v92);
        sub_C3934();

        v85 = v98;
      }
    }

    else
    {

      v85 = v105;
    }

    v83 = v85;

    (*(v108 + 8))(v112, v106);
    v104 = v83;
  }

  else
  {
    v104 = v105;
  }

  v24 = v110;
  v63 = v104;
  v25 = sub_BF704();
  (*(v108 + 16))(v24, v25, v106);

  v82 = sub_C3224();
  v64 = v82;
  v81 = sub_C3874();
  v65 = v81;
  v66 = 17;
  v71 = 7;
  v75 = swift_allocObject();
  v67 = v75;
  *(v75 + 16) = 0;
  v76 = swift_allocObject();
  v68 = v76;
  *(v76 + 16) = 4;
  v70 = 32;
  v26 = swift_allocObject();
  v27 = v119;
  v69 = v26;
  *(v26 + 16) = sub_4D4A8;
  *(v26 + 24) = v27;
  v28 = swift_allocObject();
  v29 = v69;
  v72 = v28;
  *(v28 + 16) = sub_4F7C8;
  *(v28 + 24) = v29;
  v30 = swift_allocObject();
  v31 = v72;
  v73 = v30;
  *(v30 + 16) = sub_4F83C;
  *(v30 + 24) = v31;
  v32 = swift_allocObject();
  v33 = v73;
  v79 = v32;
  v74 = v32;
  *(v32 + 16) = sub_4F8C4;
  *(v32 + 24) = v33;
  v80 = sub_21E8(&unk_EEFA0, &unk_C50F0);
  v77 = sub_C3C64();
  v78 = v34;

  v35 = v75;
  v36 = v78;
  *v78 = sub_7B48;
  v36[1] = v35;

  v37 = v76;
  v38 = v78;
  v78[2] = sub_7B48;
  v38[3] = v37;

  v39 = v78;
  v40 = v79;
  v78[4] = sub_4F910;
  v39[5] = v40;
  sub_4E48();

  if (os_log_type_enabled(v82, v81))
  {
    v41 = v63;
    v57 = sub_C3954();
    v53 = v57;
    v54 = sub_21E8(&qword_EE828, &qword_C5100);
    v55 = 0;
    v58 = sub_5DD4(0);
    v56 = v58;
    v59 = sub_5DD4(v55);
    v160 = v57;
    v159 = v58;
    v158 = v59;
    v60 = &v160;
    sub_5E28(0, &v160);
    sub_5E28(1, v60);
    v156 = sub_7B48;
    v157 = v67;
    sub_5E3C(&v156, v60, &v159, &v158);
    v61 = v41;
    v62 = v41;
    if (v41)
    {
      v51 = 0;

      __break(1u);
    }

    else
    {
      v156 = sub_7B48;
      v157 = v68;
      sub_5E3C(&v156, &v160, &v159, &v158);
      v49 = 0;
      v50 = 0;
      v156 = sub_4F910;
      v157 = v74;
      sub_5E3C(&v156, &v160, &v159, &v158);
      v47 = 0;
      v48 = 0;
      _os_log_impl(&dword_0, v64, v65, "finished getting canPlayAppleMusic value: %{BOOL}d", v53, 8u);
      v46 = 0;
      sub_5E88(v56);
      sub_5E88(v59);
      sub_C3934();

      v52 = v47;
    }
  }

  else
  {
    v42 = v63;

    v52 = v42;
  }

  (*(v108 + 8))(v110, v106);
  v44 = &v161;
  swift_beginAccess();
  v45 = *v120;
  swift_endAccess();

  return v45;
}

unint64_t sub_4CFB8()
{
  v2 = qword_EF878;
  if (!qword_EF878)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_EF878);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_4D034()
{
  sub_4F0FC(0);
  sub_C3894();
  sub_501F4();
  sub_21E8(&qword_EF968, &qword_C62E8);
  sub_50274();
  return sub_C3AA4();
}

uint64_t sub_4D0D4@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v1 = sub_C38A4();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_4D140(uint64_t a1, uint64_t a2, void *a3)
{

  _objc_retain(a3);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  sub_4D4B0(sub_501E4, v6);
}

uint64_t sub_4D208()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  _objc_release(*(v0 + 32));
  return swift_deallocObject();
}

Swift::Int sub_4D270(char a1, uint64_t a2)
{
  swift_beginAccess();
  *(a2 + 16) = a1;
  swift_endAccess();
  return sub_C3914();
}

uint64_t sub_4D2FC(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  v3(v1);
}

uint64_t sub_4D34C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_4D3B0()
{
  sub_4F1EC(0);
  sub_C3264();
  sub_5008C();
  sub_21E8(&qword_EF950, &qword_C62E0);
  sub_5010C();
  return sub_C3AA4();
}

uint64_t sub_4D450(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_4D4B0(void (*a1)(void), uint64_t a2)
{
  v41 = a2;
  v40 = a1;
  v35 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v34 = 0;
  v36 = sub_C3234();
  v37 = *(v36 - 8);
  v38 = v37;
  v3 = *(v37 + 64);
  __chkstk_darwin(0);
  v39 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_C3304();
  v42 = *(v48 - 8);
  v45 = v42;
  v43 = *(v42 + 64);
  v5 = __chkstk_darwin(v40);
  v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
  v46 = v13 - v44;
  v6 = __chkstk_darwin(v5);
  v47 = v13 - v44;
  v57 = v6;
  v58 = v7;
  v56 = v2;
  sub_C32F4();
  (*(v45 + 104))(v46, enum case for MusicAuthorization.Status.authorized(_:), v48);
  sub_4F9FC();
  v51 = sub_C3C74();
  v50 = *(v45 + 8);
  v49 = v45 + 8;
  v50(v46, v48);
  v50(v47, v48);
  if (v51)
  {
    sub_4DA94(v40, v41);
    return v34;
  }

  else
  {
    v8 = v39;
    v9 = sub_BF704();
    (*(v38 + 16))(v8, v9, v36);
    v31 = sub_C3224();
    v28 = v31;
    v30 = sub_C3874();
    v29 = v30;
    sub_21E8(&unk_EEFA0, &unk_C50F0);
    v32 = sub_C3C64();
    if (os_log_type_enabled(v31, v30))
    {
      v10 = v34;
      v19 = sub_C3954();
      v15 = v19;
      v16 = sub_21E8(&qword_EE828, &qword_C5100);
      v17 = 0;
      v20 = sub_5DD4(0);
      v18 = v20;
      v21 = sub_5DD4(v17);
      v55 = v19;
      v54 = v20;
      v53 = v21;
      v22 = 0;
      v23 = &v55;
      sub_5E28(0, &v55);
      sub_5E28(v22, v23);
      v52 = v32;
      v24 = v13;
      __chkstk_darwin(v13);
      v25 = &v13[-6];
      v13[-4] = v11;
      v13[-3] = &v54;
      v13[-2] = &v53;
      v26 = sub_21E8(&unk_EEFB0, qword_C5110);
      sub_8128();
      sub_C3654();
      v27 = v10;
      if (v10)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_0, v28, v29, "MediaService not music authorized", v15, 2u);
        v13[1] = 0;
        sub_5E88(v18);
        sub_5E88(v21);
        sub_C3934();

        v14 = v27;
      }
    }

    else
    {

      v14 = v34;
    }

    v13[0] = v14;

    (*(v38 + 8))(v39, v36);

    v40(0);

    return v13[0];
  }
}

uint64_t sub_4DA94(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v15 = a2;
  v18 = &unk_C6288;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v14 = (*(*(sub_21E8(&qword_EF890, &qword_C6278) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v13 - v14;
  v21 = __chkstk_darwin(v19);
  v22 = v3;
  v20 = v2;
  v16 = 0;
  v4 = sub_C3774();
  (*(*(v4 - 8) + 56))(v17, 1);

  v5 = swift_allocObject();
  v6 = v15;
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v10 = v5;
  v11 = v19;
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v11;
  v10[5] = v6;
  sub_4EACC(v7, v7, v8, v9, v10, &type metadata for () + 8);
}

uint64_t sub_4DBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 112) = a5;
  *(v5 + 104) = a4;
  *(v5 + 56) = v5;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 192) = 0;
  *(v5 + 64) = 0;
  v6 = sub_C3234();
  *(v5 + 120) = v6;
  v12 = *(v6 - 8);
  *(v5 + 128) = v12;
  v13 = *(v12 + 64);
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  v7 = sub_C32E4();
  *(v5 + 152) = v7;
  v14 = *(v7 - 8);
  *(v5 + 160) = v14;
  v8 = *(v14 + 64) + 15;
  v18 = swift_task_alloc();
  *(v5 + 168) = v18;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  *(v5 + 192) = 0;
  v9 = async function pointer to static MusicSubscription.current.getter[1];
  v10 = swift_task_alloc();
  *(v17 + 176) = v10;
  *v10 = *(v17 + 56);
  v10[1] = sub_4DDE0;

  return static MusicSubscription.current.getter(v18);
}

uint64_t sub_4DDE0()
{
  v7 = *v1;
  v2 = *(*v1 + 176);
  *(v7 + 56) = *v1;
  v8 = (v7 + 56);
  *(v7 + 184) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = sub_4E660;
  }

  else
  {
    v3 = *v8;
    v4 = sub_4DF48;
  }

  return _swift_task_switch(v4, 0);
}

uint64_t sub_4DF48()
{
  v41 = v0;
  v22 = *(v0 + 168);
  v20 = *(v0 + 160);
  v21 = *(v0 + 152);
  v19 = *(v0 + 144);
  v23 = *(v0 + 128);
  v24 = *(v0 + 120);
  *(v0 + 56) = v0;
  v25 = sub_C32C4();
  (*(v20 + 8))(v22, v21);
  *(v0 + 192) = v25 & 1;
  v1 = sub_BF704();
  (*(v23 + 16))(v19, v1, v24);
  v26 = swift_allocObject();
  *(v26 + 16) = v25 & 1;
  v34 = sub_C3224();
  v35 = sub_C3874();
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = 4;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_4FF28;
  *(v27 + 24) = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_4F7C8;
  *(v28 + 24) = v27;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_4F83C;
  *(v29 + 24) = v28;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_4F8C4;
  *(v32 + 24) = v29;
  sub_21E8(&unk_EEFA0, &unk_C50F0);
  sub_C3C64();
  v33 = v2;

  *v33 = sub_7B48;
  v33[1] = v30;

  v33[2] = sub_7B48;
  v33[3] = v31;

  v33[4] = sub_4F910;
  v33[5] = v32;
  sub_4E48();

  if (os_log_type_enabled(v34, v35))
  {
    v3 = v18[23];
    buf = sub_C3954();
    sub_21E8(&qword_EE828, &qword_C5100);
    v16 = sub_5DD4(0);
    v17 = sub_5DD4(0);
    v36 = buf;
    v37 = v16;
    v38 = v17;
    sub_5E28(0, &v36);
    sub_5E28(1, &v36);
    v39 = sub_7B48;
    v40 = v30;
    sub_5E3C(&v39, &v36, &v37, &v38);
    if (v3)
    {
    }

    v39 = sub_7B48;
    v40 = v31;
    sub_5E3C(&v39, &v36, &v37, &v38);
    v39 = sub_4F910;
    v40 = v32;
    sub_5E3C(&v39, &v36, &v37, &v38);
    _os_log_impl(&dword_0, v34, v35, "MediaService canPlayMusic: %{BOOL}d", buf, 8u);
    sub_5E88(v16);
    sub_5E88(v17);
    sub_C3934();
  }

  else
  {
  }

  v9 = v18[18];
  v10 = v18[15];
  v8 = v18[16];
  _objc_release(v34);
  (*(v8 + 8))(v9, v10);
  v12 = v18[21];
  v13 = v18[18];
  v14 = v18[17];
  v5 = v18[14];
  v11 = v18[13];

  swift_beginAccess();
  swift_endAccess();
  v11(v25 & 1);

  v6 = *(v18[7] + 8);
  v7 = v18[7];

  return v6();
}

uint64_t sub_4E660()
{
  v20 = v0[23];
  v1 = v0[17];
  v21 = v0[16];
  v22 = v0[15];
  v0[7] = v0;
  swift_errorRetain();
  v0[8] = v20;
  v2 = sub_BF704();
  (*(v21 + 16))(v1, v2, v22);
  v24 = sub_C3224();
  v23 = sub_C3874();
  sub_21E8(&unk_EEFA0, &unk_C50F0);
  v25 = sub_C3C64();
  if (os_log_type_enabled(v24, v23))
  {
    buf = sub_C3954();
    sub_21E8(&qword_EE828, &qword_C5100);
    v16 = sub_5DD4(0);
    v17 = sub_5DD4(0);
    *(v19 + 72) = buf;
    *(v19 + 80) = v16;
    *(v19 + 88) = v17;
    sub_5E28(0, (v19 + 72));
    sub_5E28(0, (v19 + 72));
    *(v19 + 96) = v25;
    v18 = swift_task_alloc();
    v18[2] = v19 + 72;
    v18[3] = v19 + 80;
    v18[4] = v19 + 88;
    sub_21E8(&unk_EEFB0, qword_C5110);
    sub_8128();
    sub_C3654();

    _os_log_impl(&dword_0, v24, v23, "MediaService unable to get music subscription state", buf, 2u);
    sub_5E88(v16);
    sub_5E88(v17);
    sub_C3934();
  }

  v10 = *(v19 + 184);
  v8 = *(v19 + 136);
  v9 = *(v19 + 120);
  v7 = *(v19 + 128);
  _objc_release(v24);
  (*(v7 + 8))(v8, v9);

  v12 = *(v19 + 168);
  v13 = *(v19 + 144);
  v14 = *(v19 + 136);
  v3 = *(v19 + 112);
  v11 = *(v19 + 104);

  swift_beginAccess();
  swift_endAccess();
  v11(0);

  v4 = *(*(v19 + 56) + 8);
  v5 = *(v19 + 56);

  return v4();
}

uint64_t sub_4EACC(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a1;
  v47 = a2;
  v55 = a3;
  v56 = a4;
  v57 = a5;
  v48 = a6;
  v49 = "Fatal error";
  v50 = "Unexpectedly found nil while unwrapping an Optional value";
  v51 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v52 = &unk_C62D0;
  v53 = 0;
  v66 = a6;
  v54 = (*(*(sub_21E8(&qword_EF890, &qword_C6278) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v57);
  v58 = &v15 - v54;

  v64 = v56;
  v65 = v57;
  sub_4FBA8(v55, v58);
  v59 = sub_C3774();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  if ((*(v60 + 48))(v58, 1) == 1)
  {
    sub_4FCD0(v58);
    v45 = 0;
  }

  else
  {
    v44 = sub_C3764();
    (*(v60 + 8))(v58, v59);
    v45 = v44;
  }

  v41 = v45 | 0x1C00;
  v43 = *(v57 + 16);
  v42 = *(v57 + 24);
  swift_unknownObjectRetain();

  if (v43)
  {
    v39 = v43;
    v40 = v42;
    v33 = v42;
    v34 = v43;
    swift_getObjectType();
    v35 = sub_C3754();
    v36 = v6;
    swift_unknownObjectRelease();
    v37 = v35;
    v38 = v36;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v31 = v38;
  v32 = v37;

  if (v47)
  {
    v29 = v46;
    v30 = v47;
    v7 = v53;
    v26 = v47;
    v27 = sub_C3534();

    v8 = *(v27 + 16);
    sub_4F2DC(v27 + 32, &v64, v48, &v62);
    if (v7)
    {
      __break(1u);
    }

    v25 = v62;

    v28 = v25;
  }

  else
  {
    v28 = 0;
  }

  v24 = v28;
  if (v28)
  {
    v18 = v24;
    v17 = v24;
    sub_4FCD0(v55);

    v19 = v17;
  }

  else
  {

    sub_4FCD0(v55);
    v20 = v64;
    v21 = v65;

    v9 = swift_allocObject();
    v10 = v20;
    v11 = v21;
    v12 = v32;
    v13 = v31;
    v22 = v9;
    v9[2] = v48;
    v9[3] = v10;
    v9[4] = v11;
    v23 = 0;
    if (v12 != 0 || v13 != 0)
    {
      v63[0] = 0;
      v63[1] = 0;
      v63[2] = v32;
      v63[3] = v31;
      v23 = v63;
    }

    v19 = swift_task_create();
  }

  v16 = v19;

  return v16;
}

uint64_t sub_4F0FC(uint64_t result)
{
  v5 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v5 > 0)
    {

      sub_C3894();
      v3 = sub_C3704();

      *(v3 + 16) = v5;

      v4 = v3;
    }

    else
    {
      v4 = &_swiftEmptyArrayStorage;
    }

    v1 = sub_C3894();
    result = v4;
    v2 = &v4[(*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)];
  }

  return result;
}

uint64_t sub_4F1EC(uint64_t result)
{
  v5 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v5 > 0)
    {

      sub_C3264();
      v3 = sub_C3704();

      *(v3 + 16) = v5;

      v4 = v3;
    }

    else
    {
      v4 = &_swiftEmptyArrayStorage;
    }

    v1 = sub_C3264();
    result = v4;
    v2 = &v4[(*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)];
  }

  return result;
}

uint64_t sub_4F2DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (!a1)
  {
    sub_C3B84();
    __break(1u);
  }

  v5 = *a2;
  v6 = a2[1];

  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v5;
  v7[4] = v6;
  result = swift_task_create();
  *a4 = result;
  return result;
}

uint64_t sub_4F49C(uint64_t a1, int *a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v7 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_4F5B0;

  return v7(a1);
}

uint64_t sub_4F5B0()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_4F788()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_4F7FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_4F848@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_4F884()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_4F8D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_4F910(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_4F984();

  return sub_49A98(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

unint64_t sub_4F984()
{
  v2 = qword_EF880;
  if (!qword_EF880)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF880);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4F9FC()
{
  v2 = qword_EF888;
  if (!qword_EF888)
  {
    sub_C3304();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF888);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4FA7C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_4FAC4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_4CE4;

  return sub_4DBFC(a1, v6, v7, v8, v9);
}

void *sub_4FBA8(const void *a1, void *a2)
{
  v6 = sub_C3774();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_21E8(&qword_EF890, &qword_C6278);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_4FCD0(uint64_t a1)
{
  v3 = sub_C3774();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_4FD78()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_4FDC0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_4CE4;

  return sub_4F49C(a1, v6);
}

uint64_t sub_4FEB4()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_4FF8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_4FFCC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_5000C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_5004C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_5008C()
{
  v2 = qword_EF948;
  if (!qword_EF948)
  {
    sub_C3264();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF948);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5010C()
{
  v2 = qword_EF958;
  if (!qword_EF958)
  {
    sub_81B0(&qword_EF950, &qword_C62E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF958);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_50194()
{
  v1 = *(v0 + 16);

  _objc_release(*(v0 + 24));
  return swift_deallocObject();
}

unint64_t sub_501F4()
{
  v2 = qword_EF960;
  if (!qword_EF960)
  {
    sub_C3894();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF960);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_50274()
{
  v2 = qword_EF970;
  if (!qword_EF970)
  {
    sub_81B0(&qword_EF968, &qword_C62E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF970);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_502FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a5;
  v5[17] = a4;
  v5[16] = a3;
  v5[15] = a2;
  v5[14] = a1;
  v5[11] = v5;
  v5[7] = 0;
  v5[8] = 0;
  v5[9] = 0;
  v5[10] = 0;
  v5[12] = 0;
  v5[13] = 0;
  v6 = sub_C2F74();
  v5[19] = v6;
  v14 = *(v6 - 8);
  v5[20] = v14;
  v7 = *(v14 + 64) + 15;
  v5[21] = swift_task_alloc();
  v8 = *(*(sub_21E8(&qword_EF978, &qword_C62F8) - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  v9 = sub_C1B94();
  v5[23] = v9;
  v15 = *(v9 - 8);
  v5[24] = v15;
  v10 = *(v15 + 64) + 15;
  v5[25] = swift_task_alloc();
  v11 = sub_C3234();
  v5[26] = v11;
  v16 = *(v11 - 8);
  v5[27] = v16;
  v17 = *(v16 + 64);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[7] = a1;
  v5[8] = a2;
  v5[9] = a3;
  v5[10] = a4;
  v5[12] = a5;
  v12 = v5[11];

  return _swift_task_switch(sub_505A4, 0);
}

uint64_t sub_505A4()
{
  v96 = v0;
  v1 = v0[30];
  v59 = v0[27];
  v60 = v0[26];
  v66 = v0[18];
  v65 = v0[17];
  v64 = v0[16];
  v63 = v0[15];
  v62 = v0[14];
  v0[11] = v0;
  v2 = sub_BF704();
  v61 = *(v59 + 16);
  v0[31] = v61;
  v0[32] = (v59 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v61(v1, v2, v60);

  v68 = swift_allocObject();
  *(v68 + 16) = v62;
  *(v68 + 24) = v63;

  v70 = swift_allocObject();
  *(v70 + 16) = v64;
  *(v70 + 24) = v65;

  v67 = swift_allocObject();
  *(v67 + 16) = v66;

  v72 = swift_allocObject();
  *(v72 + 16) = sub_1F0A8;
  *(v72 + 24) = v67;

  v84 = sub_C3224();
  v85 = sub_C3864();
  v74 = swift_allocObject();
  *(v74 + 16) = 32;
  v75 = swift_allocObject();
  *(v75 + 16) = 8;
  v69 = swift_allocObject();
  *(v69 + 16) = sub_1D834;
  *(v69 + 24) = v68;
  v76 = swift_allocObject();
  *(v76 + 16) = sub_7BBC;
  *(v76 + 24) = v69;
  v77 = swift_allocObject();
  *(v77 + 16) = 32;
  v78 = swift_allocObject();
  *(v78 + 16) = 8;
  v71 = swift_allocObject();
  *(v71 + 16) = sub_1D834;
  *(v71 + 24) = v70;
  v79 = swift_allocObject();
  *(v79 + 16) = sub_7BBC;
  *(v79 + 24) = v71;
  v80 = swift_allocObject();
  *(v80 + 16) = 32;
  v81 = swift_allocObject();
  *(v81 + 16) = 8;
  v73 = swift_allocObject();
  *(v73 + 16) = sub_52534;
  *(v73 + 24) = v72;
  v82 = swift_allocObject();
  *(v82 + 16) = sub_7BBC;
  *(v82 + 24) = v73;
  v0[33] = sub_21E8(&unk_EEFA0, &unk_C50F0);
  sub_C3C64();
  v83 = v3;

  *v83 = sub_7B48;
  v83[1] = v74;

  v83[2] = sub_7B48;
  v83[3] = v75;

  v83[4] = sub_7C08;
  v83[5] = v76;

  v83[6] = sub_7B48;
  v83[7] = v77;

  v83[8] = sub_7B48;
  v83[9] = v78;

  v83[10] = sub_7C08;
  v83[11] = v79;

  v83[12] = sub_7B48;
  v83[13] = v80;

  v83[14] = sub_7B48;
  v83[15] = v81;

  v83[16] = sub_7C08;
  v83[17] = v82;
  sub_4E48();

  if (os_log_type_enabled(v84, v85))
  {
    buf = sub_C3954();
    sub_21E8(&qword_EE828, &qword_C5100);
    v56 = sub_5DD4(0);
    v57 = sub_5DD4(3);
    v91 = buf;
    v92 = v56;
    v93 = v57;
    sub_5E28(2, &v91);
    sub_5E28(3, &v91);
    v94 = sub_7B48;
    v95 = v74;
    sub_5E3C(&v94, &v91, &v92, &v93);
    v94 = sub_7B48;
    v95 = v75;
    sub_5E3C(&v94, &v91, &v92, &v93);
    v94 = sub_7C08;
    v95 = v76;
    sub_5E3C(&v94, &v91, &v92, &v93);
    v94 = sub_7B48;
    v95 = v77;
    sub_5E3C(&v94, &v91, &v92, &v93);
    v94 = sub_7B48;
    v95 = v78;
    sub_5E3C(&v94, &v91, &v92, &v93);
    v94 = sub_7C08;
    v95 = v79;
    sub_5E3C(&v94, &v91, &v92, &v93);
    v94 = sub_7B48;
    v95 = v80;
    sub_5E3C(&v94, &v91, &v92, &v93);
    v94 = sub_7B48;
    v95 = v81;
    sub_5E3C(&v94, &v91, &v92, &v93);
    v94 = sub_7C08;
    v95 = v82;
    sub_5E3C(&v94, &v91, &v92, &v93);
    _os_log_impl(&dword_0, v84, v85, "[SuggestionsProvider.submitIntentToSiriSuggestionsSubmitting] submitting: {requestId: %s, intent: %s, executionParameters: %s", buf, 0x20u);
    sub_5E88(v56);
    sub_5E88(v57);
    sub_C3934();
  }

  else
  {
  }

  v47 = v58[30];
  v48 = v58[26];
  v54 = v58[23];
  v53 = v58[22];
  v51 = v58[15];
  v50 = v58[14];
  v46 = v58[27];
  v52 = v58[24];
  _objc_release(v84);
  v49 = *(v46 + 8);
  v58[34] = v49;
  v58[35] = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v49(v47, v48);
  sub_C1B64();
  if ((*(v52 + 48))(v53, 1, v54) == 1)
  {
    v9 = v58[29];
    v26 = v58[26];
    v28 = v58[15];
    v27 = v58[14];
    sub_528AC(v58[22]);
    v10 = sub_BF704();
    v61(v9, v10, v26);

    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    *(v29 + 24) = v28;
    oslog = sub_C3224();
    v36 = sub_C3864();
    v31 = swift_allocObject();
    *(v31 + 16) = 32;
    v32 = swift_allocObject();
    *(v32 + 16) = 8;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1D834;
    *(v30 + 24) = v29;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_7BBC;
    *(v33 + 24) = v30;
    sub_C3C64();
    v34 = v11;

    *v34 = sub_7B48;
    v34[1] = v31;

    v34[2] = sub_7B48;
    v34[3] = v32;

    v34[4] = sub_7C08;
    v34[5] = v33;
    sub_4E48();

    if (os_log_type_enabled(oslog, v36))
    {
      v23 = sub_C3954();
      sub_21E8(&qword_EE828, &qword_C5100);
      v24 = sub_5DD4(0);
      v25 = sub_5DD4(1);
      v86 = v23;
      v87 = v24;
      v88 = v25;
      sub_5E28(2, &v86);
      sub_5E28(1, &v86);
      v89 = sub_7B48;
      v90 = v31;
      sub_5E3C(&v89, &v86, &v87, &v88);
      v89 = sub_7B48;
      v90 = v32;
      sub_5E3C(&v89, &v86, &v87, &v88);
      v89 = sub_7C08;
      v90 = v33;
      sub_5E3C(&v89, &v86, &v87, &v88);
      _os_log_impl(&dword_0, oslog, v36, "[SuggestionsProvider.submitIntentToSiriSuggestionsSubmitting] unable to parse %s to UUID", v23, 0xCu);
      sub_5E88(v24);
      sub_5E88(v25);
      sub_C3934();
    }

    else
    {
    }

    v16 = v58[29];
    v17 = v58[26];
    _objc_release(oslog);
    v49(v16, v17);
    v12 = v58[30];
    v18 = v58[29];
    v19 = v58[28];
    v20 = v58[25];
    v21 = v58[22];
    v22 = v58[21];

    v13 = *(v58[11] + 8);
    v14 = v58[11];

    return v13();
  }

  else
  {
    v40 = v58[21];
    v41 = v58[19];
    v37 = v58[17];
    v38 = v58[16];
    v39 = v58[20];
    (*(v58[24] + 32))(v58[25], v58[22], v58[23]);
    sub_C2F54();
    sub_C2F44();
    v44 = v58[5];
    v42 = v58[6];
    sub_808C(v58 + 2, v44);

    sub_21E8(&qword_EF990, &qword_C6830);
    sub_C3C64();
    sub_C3374();
    sub_C2FA4();
    (*(v39 + 104))(v40, enum case for SiriSuggestions.Intent.action(_:), v41);
    v45 = *(v42 + 8);
    v43 = sub_37068();
    v4 = async function pointer to SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:intent:executedParameters:submitEngagement:)[1];
    v5 = swift_task_alloc();
    v58[36] = v5;
    *v5 = v58[11];
    v5[1] = sub_51A60;
    v6 = v58[25];
    v7 = v58[21];
    v8 = v58[18];

    return SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:intent:executedParameters:submitEngagement:)(v6, v7, v8, v43 & 1, v44, v45);
  }
}

uint64_t sub_51A60()
{
  v7 = *v1;
  v2 = *(*v1 + 288);
  v7[11] = *v1;
  v8 = v7 + 11;
  v7[37] = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = sub_51D20;
  }

  else
  {
    (*(v7[20] + 8))(v7[21], v7[19]);
    v3 = *v8;
    v4 = sub_51BF0;
  }

  return _swift_task_switch(v4, 0);
}

uint64_t sub_51BF0()
{
  v0[11] = v0;
  sub_2560(v0 + 2);
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1 = v0[30];
  v5 = v0[29];
  v6 = v0[28];
  v7 = v0[25];
  v8 = v0[22];
  v9 = v0[21];

  v2 = *(v0[11] + 8);
  v3 = v0[11];

  return v2();
}

uint64_t sub_51D20()
{
  v43 = v0;
  v28 = v0[37];
  v35 = v0[33];
  v26 = v0[32];
  v27 = v0[31];
  v1 = v0[28];
  v25 = v0[26];
  v2 = v0[21];
  v3 = v0[20];
  v4 = v0[19];
  v0[11] = v0;
  (*(v3 + 8))(v2, v4);
  sub_2560(v0 + 2);
  swift_errorRetain();
  v0[13] = v28;
  v5 = sub_BF704();
  v27(v1, v5, v25);
  swift_errorRetain();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  v36 = sub_C3224();
  v37 = sub_C3884();
  v31 = swift_allocObject();
  *(v31 + 16) = 32;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1A354;
  *(v30 + 24) = v29;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_7BBC;
  *(v33 + 24) = v30;
  sub_C3C64();
  v34 = v6;

  *v34 = sub_7B48;
  v34[1] = v31;

  v34[2] = sub_7B48;
  v34[3] = v32;

  v34[4] = sub_7C08;
  v34[5] = v33;
  sub_4E48();

  if (os_log_type_enabled(v36, v37))
  {
    buf = sub_C3954();
    sub_21E8(&qword_EE828, &qword_C5100);
    v22 = sub_5DD4(0);
    v23 = sub_5DD4(1);
    v38 = buf;
    v39 = v22;
    v40 = v23;
    sub_5E28(2, &v38);
    sub_5E28(1, &v38);
    v41 = sub_7B48;
    v42 = v31;
    sub_5E3C(&v41, &v38, &v39, &v40);
    v41 = sub_7B48;
    v42 = v32;
    sub_5E3C(&v41, &v38, &v39, &v40);
    v41 = sub_7C08;
    v42 = v33;
    sub_5E3C(&v41, &v38, &v39, &v40);
    _os_log_impl(&dword_0, v36, v37, "[SuggestionsProvider.submitIntentToSiriSuggestions] caught error: %s", buf, 0xCu);
    sub_5E88(v22);
    sub_5E88(v23);
    sub_C3934();
  }

  else
  {
  }

  v15 = v24[37];
  v13 = v24[35];
  v14 = v24[34];
  v11 = v24[28];
  v12 = v24[26];
  _objc_release(v36);
  v14(v11, v12);

  (*(v24[24] + 8))(v24[25], v24[23]);
  v7 = v24[30];
  v16 = v24[29];
  v17 = v24[28];
  v18 = v24[25];
  v19 = v24[22];
  v20 = v24[21];

  v8 = *(v24[11] + 8);
  v9 = v24[11];

  return v8();
}

uint64_t sub_52434()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_52474()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_524B4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_524F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_52534()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_21E8(&qword_EF980, qword_C6300);
  v1 = sub_5259C();

  return sub_5EF0(v5, v3, v4, v1);
}

unint64_t sub_5259C()
{
  v2 = qword_EF988;
  if (!qword_EF988)
  {
    sub_81B0(&qword_EF980, qword_C6300);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF988);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_5267C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_526BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_52754()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_52794()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_5282C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_5286C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_528AC(uint64_t a1)
{
  v3 = sub_C1B94();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_52954()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_529EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_52A2C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_52A6C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_52B04()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_52B44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

Swift::Bool __swiftcall isResponseFramework2Available()()
{
  v4 = 1;
  sub_C3564("/System/Library/Snippets/UIPlugins/SiriSocialConversationUIPlugin.bundle", 0x48uLL, 1);
  v3 = [objc_opt_self() defaultManager];

  v1 = sub_C3484();

  v2 = [v3 fileExistsAtPath:v1 isDirectory:&v4];
  _objc_release(v1);
  _objc_release(v3);

  return v2;
}

id sub_52CC4(uint64_t a1, uint64_t a2, void *a3)
{
  v18[4] = a1;
  v18[5] = a2;
  v18[3] = a3;
  sub_52F50();
  sub_52FB4();
  v16 = sub_52FE8();
  v18[2] = v16;
  sub_21E8(&qword_EF9A0, qword_C6360);
  sub_C3C64();
  v8 = v3;
  v18[0] = sub_53030();
  v18[1] = v4;
  sub_C3BB4();

  v8[8] = &type metadata for String;
  v8[5] = a1;
  v8[6] = a2;
  sub_4E48();
  sub_8224(v18);
  sub_C3374();
  isa = sub_C3334().super.isa;

  [v16 setUserData:isa];
  _objc_release(isa);
  v12 = objc_opt_self();
  v11 = a3[4];
  sub_808C(a3, a3[3]);
  v13 = sub_C1FB4();
  v15 = [v12 runSiriKitExecutorCommandWithContext:? payload:?];
  _objc_release(v13);
  v14 = objc_opt_self();
  _objc_retain(v15);
  v17 = [v14 wrapCommandInStartLocalRequest:v15];
  swift_unknownObjectRelease();
  _objc_release(v15);
  _objc_release(v16);
  return v17;
}

unint64_t sub_52F50()
{
  v2 = qword_EF998;
  if (!qword_EF998)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_EF998);
    return ObjCClassMetadata;
  }

  return v2;
}

BOOL sub_53064(uint64_t a1, void *a2)
{
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  v2._rawValue = sub_C3C64();
  *v3 = "com.apple.siri.directInvocation.socialConversation";
  *(v3 + 8) = 50;
  *(v3 + 16) = 2;
  sub_4E48();
  v6 = sub_C3BC4(v2, v5);

  return v6 != 0;
}

unint64_t sub_53188()
{
  v2 = qword_EF9A8;
  if (!qword_EF9A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF9A8);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_532D4(uint64_t a1, void *a2)
{
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  v2._rawValue = sub_C3C64();
  *v3 = "intentName";
  *(v3 + 8) = 10;
  *(v3 + 16) = 2;
  sub_4E48();
  v6 = sub_C3BC4(v2, v5);

  return v6 != 0;
}

BOOL sub_533AC@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_53064(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_533EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_52FB4();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_53468()
{
  v2 = qword_EF9B0;
  if (!qword_EF9B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF9B0);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_535B4@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_532D4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_535F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_53030();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_53678()
{
  v2 = qword_EF9B8;
  if (!qword_EF9B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF9B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5370C()
{
  v2 = qword_EF9C0;
  if (!qword_EF9C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF9C0);
    return WitnessTable;
  }

  return v2;
}

id sub_53788()
{
  v2 = sub_C3484();
  v3 = [v1 initWithIdentifier:?];
  _objc_release(v2);

  return v3;
}

uint64_t *sub_537EC()
{
  if (qword_EE580 != -1)
  {
    swift_once();
  }

  return &qword_F10F8;
}

uint64_t sub_5386C()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);

  return v2;
}

void *sub_538A4@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = sub_BD6C(a1, a4);
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_538EC()
{
  type metadata accessor for NLGOverrider();
  memset(v2, 0, sizeof(v2));
  memset(v1, 0, sizeof(v1));
  result = sub_53980(v2, v1);
  qword_F10F8 = result;
  return result;
}

uint64_t sub_539D4()
{
  v1 = *sub_537EC();

  return v1;
}

uint64_t sub_53A04(uint64_t *a1, uint64_t *a2)
{
  v20[5] = 0;
  v16 = 0;
  v20[7] = a1;
  v20[6] = a2;
  type metadata accessor for GeneralJokeRetriever();
  sub_2E2DC(a1, v20);
  sub_2E2DC(a2, v19);
  v10 = sub_6DB1C(v20, v19);
  v18[5] = v10;
  type metadata accessor for SpecificJokeRetriever();
  sub_2E2DC(a2, v18);
  v8 = sub_6DB70(v18);
  v17[1] = v8;
  v9 = *sub_6DBBC();

  v17[0] = v9;

  v11 = sub_21E8(&qword_EF9C8, &qword_C6550);
  v12 = sub_21E8(&qword_EF9D0, &qword_C6558);
  v14 = sub_53E5C();
  v3 = sub_28D90(sub_53E28, v10, v11, v12, &type metadata for Never, v14, &protocol witness table for Never, v13);

  sub_1D7C8(v17);
  v16 = v3;
  v4 = *sub_6DC1C();

  v15 = v4;

  sub_28D90(sub_53FB4, v8, v11, v12, &type metadata for Never, v14, &protocol witness table for Never, v13);

  sub_1D7C8(&v15);
  sub_C36E4();
  sub_C30A4();
  sub_21E8(&qword_EF9E0, &qword_C6560);
  sub_21E8(&qword_EF9E8, &qword_C6568);
  sub_53FE8();
  sub_54068();
  *(v5 + 16) = sub_C3384();

  sub_1FA80(a2);
  sub_1FA80(a1);
  return v5;
}

uint64_t sub_53D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(sub_21E8(&qword_EF9D0, &qword_C6558) + 48);
  v3 = sub_C30A4();
  (*(*(v3 - 8) + 16))(a3, a1);

  result = type metadata accessor for GeneralJokeRetriever();
  v5 = (a3 + v7);
  v5[3] = result;
  v5[4] = &off_E7388;
  *v5 = a2;
  return result;
}

unint64_t sub_53E5C()
{
  v2 = qword_EF9D8;
  if (!qword_EF9D8)
  {
    sub_81B0(&qword_EF9C8, &qword_C6550);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF9D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_53EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(sub_21E8(&qword_EF9D0, &qword_C6558) + 48);
  v3 = sub_C30A4();
  (*(*(v3 - 8) + 16))(a3, a1);

  result = type metadata accessor for SpecificJokeRetriever();
  v5 = (a3 + v7);
  v5[3] = result;
  v5[4] = &off_E7370;
  *v5 = a2;
  return result;
}

unint64_t sub_53FE8()
{
  v2 = qword_EF9F0;
  if (!qword_EF9F0)
  {
    sub_C30A4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF9F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_54068()
{
  v2 = qword_EF9F8;
  if (!qword_EF9F8)
  {
    sub_81B0(&qword_EF9E8, &qword_C6568);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF9F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_540F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v119 = a2;
  v114 = a1;
  v100 = a3;
  v102 = 0;
  v136 = 0;
  v135 = 0;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v101 = 0;
  v127 = 0;
  v126 = 0;
  v103 = sub_C3234();
  v104 = *(v103 - 8);
  v105 = v104;
  v106 = *(v104 + 64);
  v4 = __chkstk_darwin(0);
  v108 = (v106 + 15) & 0xFFFFFFFFFFFFFFF0;
  v107 = v34 - v108;
  __chkstk_darwin(v4);
  v109 = v34 - v108;
  v110 = sub_C30A4();
  v111 = *(v110 - 8);
  v112 = v111;
  v5 = *(v111 + 64);
  __chkstk_darwin(v110 - 8);
  v113 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = v113;
  v115 = *(*(sub_21E8(&qword_EFA00, &unk_C6570) - 8) + 64);
  v7 = __chkstk_darwin(v119);
  v117 = (v115 + 15) & 0xFFFFFFFFFFFFFFF0;
  v116 = v34 - v117;
  v8 = __chkstk_darwin(v7);
  v118 = v34 - v117;
  v135 = v34 - v117;
  v133 = v9;
  v134 = v8;
  v132 = v3;

  if (v119)
  {
    v98 = v114;
    v99 = v119;
    v94 = v119;
    v95 = v114;
    v126 = v114;
    v127 = v119;
    v125[2] = v114;
    v125[3] = v119;
    v125[0] = sub_C3564("#", 1uLL, 1);
    v125[1] = v10;
    sub_B2E8();
    v96 = v125;
    v97 = sub_C39D4();
    sub_8224(v96);
    if (v97)
    {

      sub_C30C4();
    }

    else
    {
      v93 = 1;
      v91 = sub_C3564("SocialConversation", 0x12uLL, 1);
      v92 = v11;

      sub_C30B4();
      (*(v112 + 56))(v118, 0, v93, v110);
    }

    sub_58DC4(v118, v116);
    if ((*(v112 + 48))(v116, 1, v110) == 1)
    {
      v12 = v109;
      sub_58EEC(v116);
      v13 = sub_BF704();
      (*(v105 + 16))(v12, v13, v103);

      v73 = 32;
      v77 = 32;
      v78 = 7;
      v14 = swift_allocObject();
      v15 = v94;
      v79 = v14;
      *(v14 + 16) = v95;
      *(v14 + 24) = v15;
      v89 = sub_C3224();
      v71 = v89;
      v88 = sub_C3884();
      v72 = v88;
      v74 = 17;
      v82 = swift_allocObject();
      v75 = v82;
      *(v82 + 16) = v73;
      v83 = swift_allocObject();
      v76 = v83;
      *(v83 + 16) = 8;
      v16 = swift_allocObject();
      v17 = v79;
      v80 = v16;
      *(v16 + 16) = sub_1D834;
      *(v16 + 24) = v17;
      v18 = swift_allocObject();
      v19 = v80;
      v86 = v18;
      v81 = v18;
      *(v18 + 16) = sub_7BBC;
      *(v18 + 24) = v19;
      v87 = sub_21E8(&unk_EEFA0, &unk_C50F0);
      v84 = sub_C3C64();
      v85 = v20;

      v21 = v82;
      v22 = v85;
      *v85 = sub_7B48;
      v22[1] = v21;

      v23 = v83;
      v24 = v85;
      v85[2] = sub_7B48;
      v24[3] = v23;

      v25 = v85;
      v26 = v86;
      v85[4] = sub_7C08;
      v25[5] = v26;
      sub_4E48();

      if (os_log_type_enabled(v89, v88))
      {
        v27 = v101;
        v64 = sub_C3954();
        v61 = v64;
        v62 = sub_21E8(&qword_EE828, &qword_C5100);
        v65 = sub_5DD4(0);
        v63 = v65;
        v67 = 1;
        v66 = sub_5DD4(1);
        v124 = v64;
        v123 = v65;
        v122 = v66;
        v68 = &v124;
        sub_5E28(2, &v124);
        sub_5E28(v67, v68);
        v120 = sub_7B48;
        v121 = v75;
        sub_5E3C(&v120, v68, &v123, &v122);
        v69 = v27;
        v70 = v27;
        if (v27)
        {
          v59 = 0;

          __break(1u);
        }

        else
        {
          v120 = sub_7B48;
          v121 = v76;
          sub_5E3C(&v120, &v124, &v123, &v122);
          v57 = 0;
          v58 = 0;
          v120 = sub_7C08;
          v121 = v81;
          sub_5E3C(&v120, &v124, &v123, &v122);
          v55 = 0;
          v56 = 0;
          _os_log_impl(&dword_0, v71, v72, "Invalid identifier: %s", v61, 0xCu);
          sub_5E88(v63);
          sub_5E88(v66);
          sub_C3934();

          v60 = v55;
        }
      }

      else
      {
        v28 = v101;

        v60 = v28;
      }

      v54 = v60;

      (*(v105 + 8))(v109, v103);
      (*(v112 + 56))(v100, 1, 1, v110);
      sub_58EEC(v118);

      return v54;
    }

    else
    {
      (*(v112 + 32))(v113, v116, v110);
      (*(v112 + 16))(v100, v113, v110);
      (*(v112 + 56))(v100, 0, 1, v110);
      (*(v112 + 8))(v113, v110);
      sub_58EEC(v118);

      return v101;
    }
  }

  else
  {
    v29 = v107;
    v30 = sub_BF704();
    (*(v105 + 16))(v29, v30, v103);
    v52 = sub_C3224();
    v49 = v52;
    v51 = sub_C3884();
    v50 = v51;
    sub_21E8(&unk_EEFA0, &unk_C50F0);
    v53 = sub_C3C64();
    if (os_log_type_enabled(v52, v51))
    {
      v31 = v101;
      v40 = sub_C3954();
      v36 = v40;
      v37 = sub_21E8(&qword_EE828, &qword_C5100);
      v38 = 0;
      v41 = sub_5DD4(0);
      v39 = v41;
      v42 = sub_5DD4(v38);
      v131 = v40;
      v130 = v41;
      v129 = v42;
      v43 = 0;
      v44 = &v131;
      sub_5E28(0, &v131);
      sub_5E28(v43, v44);
      v128 = v53;
      v45 = v34;
      __chkstk_darwin(v34);
      v46 = &v34[-6];
      v34[-4] = v32;
      v34[-3] = &v130;
      v34[-2] = &v129;
      v47 = sub_21E8(&unk_EEFB0, qword_C5110);
      sub_8128();
      sub_C3654();
      v48 = v31;
      if (v31)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_0, v49, v50, "Identifier is empty", v36, 2u);
        v34[1] = 0;
        sub_5E88(v39);
        sub_5E88(v42);
        sub_C3934();

        v35 = v48;
      }
    }

    else
    {

      v35 = v101;
    }

    v34[0] = v35;

    (*(v105 + 8))(v107, v103);
    (*(v112 + 56))(v100, 1, 1, v110);
    return v34[0];
  }
}

uint64_t sub_550B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v15 = a5;
  v20 = a1;
  v19 = a2;
  v17 = a3;
  v18 = a4;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v6 = sub_21E8(&qword_EFA00, &unk_C6570);
  v16 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v25 = &v14 - v16;
  v26 = sub_C30A4();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v21 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v20);
  v22 = &v14 - v21;
  v32 = &v14 - v21;
  v30 = v7;
  v31 = v8;
  v29 = v9;
  v28 = v10;
  v27 = v5;
  sub_540F0(v7, v8, v11);
  if ((*(v23 + 48))(v25, 1, v26) == 1)
  {
    result = sub_58EEC(v25);
    v13 = v15;
    *v15 = 0;
    v13[1] = 0;
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = 0;
  }

  else
  {
    (*(v23 + 32))(v22, v25, v26);
    sub_552E0(v22, v17, v18, v15);
    return (*(v23 + 8))(v22, v26);
  }

  return result;
}

uint64_t sub_552E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v113 = a3;
  v114 = a2;
  v112 = a1;
  v97 = a4;
  v104 = 0;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v98 = 0;
  v99 = sub_C1C64();
  v100 = *(v99 - 8);
  v101 = v100;
  v102 = *(v100 + 64);
  __chkstk_darwin(0);
  v103 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_C3234();
  v106 = *(v105 - 8);
  v107 = v106;
  v108 = *(v106 + 64);
  v6 = __chkstk_darwin(v104);
  v110 = (v108 + 15) & 0xFFFFFFFFFFFFFFF0;
  v109 = v36 - v110;
  __chkstk_darwin(v6);
  v111 = v36 - v110;
  v115 = sub_C30A4();
  v116 = *(v115 - 8);
  v117 = v116;
  v118 = *(v116 + 64);
  v7 = __chkstk_darwin(v113);
  v119 = v36 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = v8;
  v132 = v9;
  v131 = v7;
  v130 = v4;
  v121 = v7[3];
  v120 = v7[4];
  sub_808C(v7, v121);
  if ((*(v120 + 40))(v121))
  {
    if (sub_5611C(v114, v113))
    {
      v94 = *(v96 + 16);

      (*(v117 + 16))(v119, v112, v115);
      v93 = sub_21E8(&qword_EF9E0, &qword_C6560);
      sub_53FE8();
      sub_C33E4();

      (*(v117 + 8))(v119, v115);
      return v98;
    }

    else
    {
      v10 = v111;
      v11 = sub_BF704();
      (*(v107 + 16))(v10, v11, v105);
      (*(v101 + 16))(v103, v114, v99);
      v73 = (*(v101 + 80) + 16) & ~*(v101 + 80);
      v82 = swift_allocObject();
      (*(v101 + 32))(v82 + v73, v103, v99);
      v92 = sub_C3224();
      v74 = v92;
      v91 = sub_C3884();
      v75 = v91;
      v76 = 17;
      v81 = 7;
      v85 = swift_allocObject();
      v77 = v85;
      v78 = 32;
      *(v85 + 16) = 32;
      v12 = swift_allocObject();
      v13 = v78;
      v86 = v12;
      v79 = v12;
      *(v12 + 16) = 8;
      v80 = v13;
      v14 = swift_allocObject();
      v15 = v82;
      v83 = v14;
      *(v14 + 16) = sub_2DEF4;
      *(v14 + 24) = v15;
      v16 = swift_allocObject();
      v17 = v83;
      v89 = v16;
      v84 = v16;
      *(v16 + 16) = sub_7BBC;
      *(v16 + 24) = v17;
      v90 = sub_21E8(&unk_EEFA0, &unk_C50F0);
      v87 = sub_C3C64();
      v88 = v18;

      v19 = v85;
      v20 = v88;
      *v88 = sub_7B48;
      v20[1] = v19;

      v21 = v86;
      v22 = v88;
      v88[2] = sub_7B48;
      v22[3] = v21;

      v23 = v88;
      v24 = v89;
      v88[4] = sub_7C08;
      v23[5] = v24;
      sub_4E48();

      if (os_log_type_enabled(v92, v91))
      {
        v25 = v98;
        v66 = sub_C3954();
        v63 = v66;
        v64 = sub_21E8(&qword_EE828, &qword_C5100);
        v67 = sub_5DD4(0);
        v65 = v67;
        v69 = 1;
        v68 = sub_5DD4(1);
        v126[0] = v66;
        v125 = v67;
        v124 = v68;
        v70 = v126;
        sub_5E28(2, v126);
        sub_5E28(v69, v70);
        v122 = sub_7B48;
        v123 = v77;
        sub_5E3C(&v122, v70, &v125, &v124);
        v71 = v25;
        v72 = v25;
        if (v25)
        {
          v61 = 0;

          __break(1u);
        }

        else
        {
          v122 = sub_7B48;
          v123 = v79;
          sub_5E3C(&v122, v126, &v125, &v124);
          v59 = 0;
          v60 = 0;
          v122 = sub_7C08;
          v123 = v84;
          sub_5E3C(&v122, v126, &v125, &v124);
          v57 = 0;
          v58 = 0;
          _os_log_impl(&dword_0, v74, v75, "Unsupported locale: %s", v63, 0xCu);
          sub_5E88(v65);
          sub_5E88(v68);
          sub_C3934();

          v62 = v57;
        }
      }

      else
      {
        v26 = v98;

        v62 = v26;
      }

      v56 = v62;

      (*(v107 + 8))(v111, v105);
      v27 = v97;
      v28 = v56;
      *v97 = 0;
      v27[1] = 0;
      v27[2] = 0;
      v27[3] = 0;
      v27[4] = 0;
      return v28;
    }
  }

  else
  {
    v29 = v109;
    v30 = sub_BF704();
    (*(v107 + 16))(v29, v30, v105);
    v54 = sub_C3224();
    v51 = v54;
    v53 = sub_C3874();
    v52 = v53;
    sub_21E8(&unk_EEFA0, &unk_C50F0);
    v55 = sub_C3C64();
    if (os_log_type_enabled(v54, v53))
    {
      v31 = v98;
      v42 = sub_C3954();
      v38 = v42;
      v39 = sub_21E8(&qword_EE828, &qword_C5100);
      v40 = 0;
      v43 = sub_5DD4(0);
      v41 = v43;
      v44 = sub_5DD4(v40);
      v129 = v42;
      v128 = v43;
      v127 = v44;
      v45 = 0;
      v46 = &v129;
      sub_5E28(0, &v129);
      sub_5E28(v45, v46);
      v126[2] = v55;
      v47 = v36;
      __chkstk_darwin(v36);
      v48 = &v36[-6];
      v36[-4] = v32;
      v36[-3] = &v128;
      v36[-2] = &v127;
      v49 = sub_21E8(&unk_EEFB0, qword_C5110);
      sub_8128();
      sub_C3654();
      v50 = v31;
      if (v31)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_0, v51, v52, "Bobcat feature flag not enabled", v38, 2u);
        v36[1] = 0;
        sub_5E88(v41);
        sub_5E88(v44);
        sub_C3934();

        v37 = v50;
      }
    }

    else
    {

      v37 = v98;
    }

    v36[0] = v37;

    (*(v107 + 8))(v109, v105);
    v33 = v97;
    v34 = v36[0];
    *v97 = 0;
    v33[1] = 0;
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = 0;
    return v34;
  }
}

uint64_t sub_5611C(uint64_t a1, void *a2)
{
  v122 = a2;
  v109 = a1;
  v117 = 0;
  v168 = 0;
  v167 = 0;
  v166 = 0;
  v110 = 0;
  v161 = 0;
  v160 = 0;
  v111 = sub_C3234();
  v112 = *(v111 - 8);
  v113 = v112;
  v3 = *(v112 + 64);
  __chkstk_darwin(v111 - 8);
  v114 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21E8(&qword_EF280, &qword_C6580);
  v115 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5 - 8);
  v116 = v25 - v115;
  v118 = *(*(sub_21E8(&qword_EFA08, &qword_C6588) - 8) + 64);
  v6 = __chkstk_darwin(v117);
  v120 = (v118 + 15) & 0xFFFFFFFFFFFFFFF0;
  v119 = v25 - v120;
  __chkstk_darwin(v6);
  v121 = v25 - v120;
  v131 = sub_C1C44();
  v123 = v131;
  v124 = *(v131 - 8);
  v129 = v124;
  v125 = *(v124 + 64);
  __chkstk_darwin(v131 - 8);
  v127 = (v125 + 15) & 0xFFFFFFFFFFFFFFF0;
  v126 = v25 - v127;
  __chkstk_darwin(v25 - v127);
  v130 = v25 - v127;
  v168 = a1;
  v167 = v7;
  v166 = v128;
  sub_C1C54();
  v134 = sub_C1C34();
  v136 = v8;
  v132 = *(v129 + 8);
  v133 = (v129 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v132(v130, v131);
  sub_C3564("en", 2uLL, 1);
  v135 = v9;
  v137 = sub_C3574();

  if (v137)
  {
    sub_C1C04();
    v107 = sub_C1BF4();
    v108 = *(v107 - 8);
    if ((*(v108 + 48))(v121, 1) == 1)
    {
      sub_59250(v121);
      v105 = 0;
      v106 = 0;
    }

    else
    {
      v10 = sub_C1BE4();
      v103 = v11;
      v104 = v10;
      (*(v108 + 8))(v121, v107);
      v105 = v104;
      v106 = v103;
    }

    v99 = v106;
    v98 = v105;

    v97 = sub_C3564("US", 2uLL, 1);
    v100 = v12;
    v96 = v12;

    v101 = v141;
    v102 = v142;
    v141[0] = v98;
    v141[1] = v99;
    v142[0] = v97;
    v142[1] = v100;
    if (v99)
    {
      sub_146A0(v101, &v140);
      if (v102[1])
      {
        v139 = v140;
        v138 = *v102;
        v94 = sub_C3574();
        sub_8224(&v138);
        sub_8224(&v139);
        sub_8224(v101);
        v95 = v94;
LABEL_11:
        v92 = v95;

        v93 = v92;
        goto LABEL_15;
      }

      sub_8224(&v140);
    }

    else if (!v102[1])
    {
      sub_8224(v101);
      v95 = 1;
      goto LABEL_11;
    }

    sub_146E0(v141);
    v95 = 0;
    goto LABEL_11;
  }

  v93 = 0;
LABEL_15:
  if (v93)
  {
    v90 = 1;
    v91 = v110;
    return v90 & 1;
  }

  v89 = v122[3];
  v88 = v122[4];
  sub_808C(v122, v89);
  if ((*(v88 + 56))(v89))
  {
    sub_C1C54();
    sub_C1C24();
    v132(v126, v123);
    v86 = sub_C1BC4();
    v87 = *(v86 - 8);
    if ((*(v87 + 48))(v116, 1) == 1)
    {
      sub_2D52C(v116);
      v84 = 0;
      v85 = 0;
    }

    else
    {
      v13 = sub_C1BB4();
      v82 = v14;
      v83 = v13;
      (*(v87 + 8))(v116, v86);
      v84 = v83;
      v85 = v82;
    }

    v75 = v85;
    v76 = v84;
    v160 = v84;
    v161 = v85;
    v159[0] = v84;
    v159[1] = v85;
    v81 = sub_C3564("en", 2uLL, 1);
    v80 = v15;
    v77 = v15;

    v78 = v157;
    v79 = v158;
    sub_146A0(v159, v157);
    v158[0] = v81;
    v158[1] = v80;
    if (v157[1])
    {
      sub_146A0(v78, &v145);
      if (v79[1])
      {
        v144 = v145;
        v143 = *v79;
        v73 = sub_C3574();
        sub_8224(&v143);
        sub_8224(&v144);
        sub_8224(v78);
        v74 = v73;
        goto LABEL_26;
      }

      sub_8224(&v145);
    }

    else if (!v79[1])
    {
      sub_8224(v78);
      v74 = 1;
LABEL_26:
      v72 = v74;

      if (v72)
      {
        v71 = 1;
LABEL_54:
        v45 = v71;

        v90 = v45;
        v91 = v110;
        return v90 & 1;
      }

      v156[0] = v76;
      v156[1] = v75;
      v70 = sub_C3564("zh", 2uLL, 1);
      v69 = v16;
      v66 = v16;

      v67 = v154;
      v68 = v155;
      sub_146A0(v156, v154);
      v155[0] = v70;
      v155[1] = v69;
      if (v154[1])
      {
        sub_146A0(v67, &v148);
        if (v68[1])
        {
          v147 = v148;
          v146 = *v68;
          v64 = sub_C3574();
          sub_8224(&v146);
          sub_8224(&v147);
          sub_8224(v67);
          v65 = v64;
          goto LABEL_37;
        }

        sub_8224(&v148);
      }

      else if (!v68[1])
      {
        sub_8224(v67);
        v65 = 1;
LABEL_37:
        v63 = v65;

        if ((v63 & 1) == 0)
        {
          v60 = 0;
LABEL_49:
          v71 = v60;
          goto LABEL_54;
        }

        sub_C1C04();
        v61 = sub_C1BF4();
        v62 = *(v61 - 8);
        if ((*(v62 + 48))(v119, 1) == 1)
        {
          sub_59250(v119);
          v58 = 0;
          v59 = 0;
        }

        else
        {
          v17 = sub_C1BE4();
          v56 = v18;
          v57 = v17;
          (*(v62 + 8))(v119, v61);
          v58 = v57;
          v59 = v56;
        }

        v52 = v59;
        v51 = v58;

        v50 = sub_C3564("CN", 2uLL, 1);
        v53 = v19;
        v49 = v19;

        v54 = v152;
        v55 = v153;
        v152[0] = v51;
        v152[1] = v52;
        v153[0] = v50;
        v153[1] = v53;
        if (v52)
        {
          sub_146A0(v54, &v151);
          if (v55[1])
          {
            v150 = v151;
            v149 = *v55;
            v47 = sub_C3574();
            sub_8224(&v149);
            sub_8224(&v150);
            sub_8224(v54);
            v48 = v47;
LABEL_48:
            v46 = v48;

            v60 = v46;
            goto LABEL_49;
          }

          sub_8224(&v151);
        }

        else if (!v55[1])
        {
          sub_8224(v54);
          v48 = 1;
          goto LABEL_48;
        }

        sub_146E0(v152);
        v48 = 0;
        goto LABEL_48;
      }

      sub_146E0(v154);
      v65 = 0;
      goto LABEL_37;
    }

    sub_146E0(v157);
    v74 = 0;
    goto LABEL_26;
  }

  v20 = v114;
  v21 = sub_BF704();
  (*(v113 + 16))(v20, v21, v111);
  v43 = sub_C3224();
  v40 = v43;
  v42 = sub_C3874();
  v41 = v42;
  sub_21E8(&unk_EEFA0, &unk_C50F0);
  v44 = sub_C3C64();
  if (os_log_type_enabled(v43, v42))
  {
    v22 = v110;
    v31 = sub_C3954();
    v27 = v31;
    v28 = sub_21E8(&qword_EE828, &qword_C5100);
    v29 = 0;
    v32 = sub_5DD4(0);
    v30 = v32;
    v33 = sub_5DD4(v29);
    v165 = v31;
    v164 = v32;
    v163 = v33;
    v34 = 0;
    v35 = &v165;
    sub_5E28(0, &v165);
    sub_5E28(v34, v35);
    v162 = v44;
    v36 = v25;
    __chkstk_darwin(v25);
    v37 = &v25[-6];
    v25[-4] = v23;
    v25[-3] = &v164;
    v25[-2] = &v163;
    v38 = sub_21E8(&unk_EEFB0, qword_C5110);
    sub_8128();
    sub_C3654();
    v39 = v22;
    if (v22)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v40, v41, "Bobcat locale expansion feature flag not enabled", v27, 2u);
      v25[1] = 0;
      sub_5E88(v30);
      sub_5E88(v33);
      sub_C3934();

      v26 = v39;
    }
  }

  else
  {

    v26 = v110;
  }

  v25[0] = v26;

  (*(v113 + 8))(v114, v111);
  v90 = 0;
  v91 = v25[0];
  return v90 & 1;
}

uint64_t sub_56FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>, uint64_t a7)
{
  v272 = v344;
  v297 = a5;
  v296 = a4;
  v295 = a3;
  v299 = a2;
  v298 = a1;
  v273 = a6;
  v292 = 0;
  v360 = 0;
  v359 = 0;
  v358 = 0;
  v357 = 0;
  v356 = 0;
  v355 = 0;
  v354 = 0;
  v345 = 0;
  memset(v344, 0, sizeof(v344));
  v334 = 0;
  v333 = 0;
  v332 = 0;
  v331 = 0;
  v330 = 0;
  v329 = 0;
  v328 = 0;
  v327[0] = 0;
  v325[0] = 0;
  v324[0] = 0;
  v318 = 0u;
  v317 = 0u;
  v316 = 0u;
  v274 = sub_C3194();
  v275 = *(v274 - 8);
  v276 = v275;
  v8 = *(v275 + 64);
  __chkstk_darwin(0);
  v277 = &v85[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v278 = sub_C3234();
  v279 = *(v278 - 8);
  v280 = v279;
  v282 = *(v279 + 64);
  __chkstk_darwin(v278 - 8);
  v284 = (v282 + 15) & 0xFFFFFFFFFFFFFFF0;
  v281 = &v85[-v284];
  __chkstk_darwin(&v85[-v284]);
  v283 = &v85[-v284];
  __chkstk_darwin(&v85[-v284]);
  v285 = &v85[-v284];
  v286 = (*(*(sub_21E8(&qword_EFA10, &qword_C6590) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v292);
  v287 = &v85[-v286];
  v288 = sub_C1AC4();
  v289 = *(v288 - 8);
  v290 = v289;
  v10 = *(v289 + 64);
  __chkstk_darwin(v288 - 8);
  v291 = &v85[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v293 = (*(*(sub_21E8(&qword_EFA00, &unk_C6570) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v292);
  v308 = &v85[-v293];
  v294 = &v85[-v293];
  v309 = sub_C30A4();
  v300 = v309;
  v301 = *(v309 - 8);
  v307 = v301;
  v302 = v301;
  v303 = *(v301 + 64);
  v12 = __chkstk_darwin(v298);
  v305 = (v303 + 15) & 0xFFFFFFFFFFFFFFF0;
  v304 = &v85[-v305];
  v13 = __chkstk_darwin(v12);
  v306 = &v85[-v305];
  v360 = &v85[-v305];
  v358 = v13;
  v359 = v14;
  v357 = v15;
  v356 = v16;
  v355 = v17;
  v354 = v7;
  sub_540F0(v13, v14, v18);
  if ((*(v307 + 48))(v308, 1, v309) == 1)
  {
    sub_58EEC(v294);
    result = v271;
    v138 = 0;
    v139 = 0;
    v140 = 0;
    v141 = 0;
    v142 = 0;
    v143 = 0;
    v144 = v271;
    goto LABEL_22;
  }

  (*(v302 + 32))(v306, v294, v300);
  sub_552E0(v306, v296, v297, v350);
  if (!v350[3])
  {
    v71 = v283;
    sub_1FA80(v350);
    v72 = sub_BF704();
    (*(v280 + 16))(v71, v72, v278);
    v132 = sub_C3224();
    v129 = v132;
    v131 = sub_C3874();
    v130 = v131;
    sub_21E8(&unk_EEFA0, &unk_C50F0);
    v133 = sub_C3C64();
    if (os_log_type_enabled(v132, v131))
    {
      v127 = v271;
      v119 = sub_C3954();
      v115 = v119;
      v116 = sub_21E8(&qword_EE828, &qword_C5100);
      v117 = 0;
      v120 = sub_5DD4(0);
      v118 = v120;
      v121 = sub_5DD4(v117);
      v349 = v119;
      v348 = v120;
      v347 = v121;
      v122 = 0;
      v123 = &v349;
      sub_5E28(0, &v349);
      sub_5E28(v122, v123);
      v346 = v133;
      v124 = v85;
      __chkstk_darwin(v85);
      v125 = &v85[-48];
      *&v85[-32] = v73;
      *&v85[-24] = &v348;
      *&v85[-16] = &v347;
      v126 = sub_21E8(&unk_EEFB0, qword_C5110);
      sub_8128();
      v74 = v127;
      sub_C3654();
      v128 = v74;
      if (v74)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_0, v129, v130, "No NLG dialog retriever triggered", v115, 2u);
        v113 = 0;
        sub_5E88(v118);
        sub_5E88(v121);
        sub_C3934();

        v114 = v128;
      }
    }

    else
    {

      v114 = v271;
    }

    v112 = v114;

    (*(v280 + 8))(v283, v278);
    (*(v302 + 8))(v306, v300);
    result = v112;
    v138 = 0;
    v139 = 0;
    v140 = 0;
    v141 = 0;
    v142 = 0;
    v143 = 0;
    v144 = v112;
    goto LABEL_22;
  }

  v267 = v271;
  v264 = __dst;
  sub_BD6C(v350, __dst);
  v265 = v352;
  v266 = v353;
  v19 = sub_808C(v264, v352);
  v20 = v267;
  v268 = v19;
  sub_58C3C(v295);
  v269 = v20;
  v270 = v20;
  if (!v20)
  {
    (*(v266 + 16))(v342, v291, v306, v296, v265);
    v262 = 0;
    v263 = 0;
    (*(v290 + 8))(v291, v288);
    v21 = v272;
    v22 = v342[0];
    v23 = v342[1];
    v345 = v343;
    *(v272 + 2) = v342[2];
    *(v21 + 1) = v23;
    *v21 = v22;
    v256 = v338;
    sub_592F8(v344, v338);
    v257 = v335;
    sub_24F4(v256, v335);
    sub_59388(v256);
    v259 = v336;
    v258 = v337;
    sub_808C(v257, v336);
    sub_C31B4();
    v260 = sub_C3064();
    v261 = *(v260 - 8);
    if ((*(v261 + 48))(v287, 1) == 1)
    {
      sub_593BC(v287);
      sub_2560(v335);
    }

    else
    {
      if ((*(v261 + 88))(v287, v260) == enum case for NLGDialogSource.catSwitch(_:))
      {
        (*(v261 + 96))(v287, v260);
        v205 = *v287;
        v206 = v287[1];
        v162 = v206;
        v207 = v287[2];
        v208 = v287[3];
        v163 = v208;
        v212 = v287[4];
        v213 = v287[5];
        v164 = v213;
        v333 = v205;
        v334 = v206;
        v331 = v207;
        v332 = v208;
        v329 = v212;
        v330 = v213;
        sub_2560(v335);
        v219 = sub_21E8(&qword_EF000, &qword_C5E10);
        v197 = 0;
        sub_C3C64();
        v223 = &type metadata for Any + 8;
        v222 = &type metadata for String;
        v224 = &protocol witness table for String;
        v328 = sub_C3374();
        v24 = sub_606E8();
        v167 = *v24;
        v168 = v24[1];

        v25 = sub_60748();
        v165 = *v25;
        v166 = v25[1];

        v327[12] = v222;
        v327[9] = v165;
        v327[10] = v166;
        v327[7] = v167;
        v327[8] = v168;
        v204 = sub_21E8(&qword_EEFF8, &unk_C5AC0);
        v199 = &v328;
        sub_C33F4();
        v26 = sub_607A8();
        v171 = *v26;
        v172 = v26[1];

        v27 = sub_60808();
        v169 = *v27;
        v170 = v27[1];

        v327[6] = v222;
        v327[3] = v169;
        v327[4] = v170;
        v327[1] = v171;
        v327[2] = v172;
        sub_C33F4();
        sub_C3C64();
        v327[0] = sub_C3374();
        v28 = sub_60868();
        v186 = *v28;
        v187 = v28[1];

        v29 = sub_41AEC();
        v173 = *v29;
        v175 = v29[1];

        v190 = 1;
        v211 = 1;
        sub_C3564("#", 1uLL, 1);
        v174 = v30;
        v178 = sub_C3554();
        v180 = v31;

        v225 = v344;
        v176 = v326;
        sub_592F8(v344, v326);
        v177 = v326[5];
        v179 = v326[6];

        sub_59388(v176);
        v181 = sub_C3554();
        v183 = v32;

        sub_C3564("#label", 6uLL, v190);
        v182 = v33;
        v184 = sub_C3554();
        v185 = v34;

        v326[10] = v222;
        v326[7] = v184;
        v326[8] = v185;
        v325[7] = v186;
        v325[8] = v187;
        v193 = v327;
        sub_C33F4();
        v35 = sub_608C8();
        v188 = *v35;
        v189 = v35[1];

        v36 = sub_C3564("com.apple.siri.directInvocation.socialConversation", 0x32uLL, v190);
        v325[6] = v222;
        v325[3] = v36;
        v325[4] = v37;
        v325[1] = v188;
        v325[2] = v189;
        sub_C33F4();
        sub_C3C64();
        v325[0] = sub_C3374();
        v191 = sub_C3564("intentName", 0xAuLL, v190);
        v192 = v38;

        v324[12] = v222;
        v324[9] = v207;
        v324[10] = v208;
        v324[7] = v191;
        v324[8] = v192;
        sub_C33F4();
        v39 = sub_60928();
        v195 = *v39;
        v196 = v39[1];

        v194 = v325[0];

        v324[6] = v204;
        v324[3] = v194;
        v324[1] = v195;
        v324[2] = v196;
        sub_C33F4();
        v324[0] = sub_C3C64();
        v198 = v327[0];

        v323[13] = v198;
        v200 = sub_21E8(&qword_EFA20, qword_C65A0);
        sub_C3724();
        v40 = sub_60988();
        v202 = *v40;
        v203 = v40[1];

        v201 = v324[0];

        v323[12] = v200;
        v323[9] = v201;
        v323[7] = v202;
        v323[8] = v203;
        sub_C33F4();

        sub_C30B4();
        v227 = sub_C3084();
        v228 = v41;
        v209 = *(v302 + 8);
        v210 = (v302 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v209(v304, v300);
        v218 = sub_C3C64();
        v217 = v42;

        v43 = v225;
        v44 = v213;
        v45 = v217;
        *v217 = v212;
        v45[1] = v44;
        v214 = v323;
        sub_592F8(v43, v323);
        v220 = v320;
        sub_24F4(v214, v320);
        sub_59388(v214);
        v216 = v321;
        v215 = v322;
        sub_808C(v220, v321);
        v46 = sub_C31A4();
        v47 = v285;
        v48 = v217;
        v49 = v46;
        v50 = v218;
        v217[5] = v222;
        v48[2] = v49;
        v48[3] = v51;
        sub_4E48();
        v221 = v50;
        sub_2560(v220);
        v229 = sub_C3374();
        v226 = v319;
        sub_592F8(v225, v319);
        v230 = v319[5];
        v231 = v319[6];

        sub_59388(v226);
        v232 = v328;

        v236 = &v361;
        sub_3E1A0(v227, v228, v229, v230, v231, v232, &v361);
        v233 = v361;
        v234 = v362;
        v235 = v363;
        v316 = v361;
        v317 = v362;
        v318 = v363;
        v52 = sub_BF704();
        (*(v280 + 16))(v47, v52, v278);
        sub_59464(v236, v315);
        v244 = 7;
        v53 = swift_allocObject();
        v245 = v53;
        v54 = *(v272 + 14);
        v55 = *(v272 + 15);
        v53[3] = *(v272 + 16);
        v53[2] = v55;
        v53[1] = v54;
        v255 = sub_C3224();
        v237 = v255;
        v254 = sub_C3874();
        v238 = v254;
        v239 = 17;
        v248 = swift_allocObject();
        v240 = v248;
        v241 = 32;
        *(v248 + 16) = 32;
        v56 = swift_allocObject();
        v57 = v241;
        v249 = v56;
        v242 = v56;
        *(v56 + 16) = 8;
        v243 = v57;
        v58 = swift_allocObject();
        v59 = v245;
        v246 = v58;
        *(v58 + 16) = sub_5955C;
        *(v58 + 24) = v59;
        v60 = swift_allocObject();
        v61 = v246;
        v252 = v60;
        v247 = v60;
        *(v60 + 16) = sub_7BBC;
        *(v60 + 24) = v61;
        v253 = sub_21E8(&unk_EEFA0, &unk_C50F0);
        v250 = sub_C3C64();
        v251 = v62;

        v63 = v248;
        v64 = v251;
        *v251 = sub_7B48;
        v64[1] = v63;

        v65 = v249;
        v66 = v251;
        v251[2] = sub_7B48;
        v66[3] = v65;

        v67 = v251;
        v68 = v252;
        v251[4] = sub_7C08;
        v67[5] = v68;
        sub_4E48();

        if (os_log_type_enabled(v255, v254))
        {
          v159 = v262;
          v154 = sub_C3954();
          v151 = v154;
          v152 = sub_21E8(&qword_EE828, &qword_C5100);
          v155 = sub_5DD4(0);
          v153 = v155;
          v157 = 1;
          v156 = sub_5DD4(1);
          v314 = v154;
          v313 = v155;
          v312 = v156;
          v158 = &v314;
          sub_5E28(2, &v314);
          sub_5E28(v157, v158);
          v69 = v159;
          v310 = sub_7B48;
          v311 = v240;
          sub_5E3C(&v310, v158, &v313, &v312);
          v160 = v69;
          v161 = v69;
          if (v69)
          {
            v149 = 0;

            __break(1u);
          }

          else
          {
            v310 = sub_7B48;
            v311 = v242;
            sub_5E3C(&v310, &v314, &v313, &v312);
            v147 = 0;
            v148 = 0;
            v310 = sub_7C08;
            v311 = v247;
            sub_5E3C(&v310, &v314, &v313, &v312);
            v145 = 0;
            v146 = 0;
            _os_log_impl(&dword_0, v237, v238, "Returning NLG override: %s", v151, 0xCu);
            sub_5E88(v153);
            sub_5E88(v156);
            sub_C3934();

            v150 = v145;
          }
        }

        else
        {

          v150 = v262;
        }

        v137 = v150;

        (*(v280 + 8))(v285, v278);
        v134 = *(&v233 + 1);
        v135 = v234;
        v136 = *(&v235 + 1);
        sub_1D7C8(v324);
        sub_1D7C8(v325);
        sub_1D7C8(v327);
        sub_1D7C8(&v328);

        sub_59388(v344);
        sub_2560(__dst);
        v209(v306, v300);
        result = v137;
        v138 = v233;
        v139 = v134;
        v140 = v135;
        v141 = *(&v234 + 1);
        v142 = v235;
        v143 = v136;
        v144 = v137;
        goto LABEL_22;
      }

      (*(v261 + 8))(v287, v260);
      sub_2560(v335);
    }

    sub_59388(v344);
    sub_2560(__dst);
    (*(v302 + 8))(v306, v300);
    result = v262;
    v138 = 0;
    v139 = 0;
    v140 = 0;
    v141 = 0;
    v142 = 0;
    v143 = 0;
    v144 = v262;
LABEL_22:
    v75 = v273;
    v76 = v139;
    v77 = v140;
    v78 = v141;
    v79 = v142;
    v80 = v143;
    *v273 = v138;
    v75[1] = v76;
    v75[2] = v77;
    v75[3] = v78;
    v75[4] = v79;
    v75[5] = v80;
    return result;
  }

  v109 = v270;
  v108 = 0;
  v110 = v108;
  v111 = v109;
  swift_errorRetain();
  v341[1] = v111;
  sub_21E8(&qword_EFA18, &qword_C6598);
  if (swift_dynamicCast())
  {
    if ((*(v276 + 88))(v277, v274) == enum case for NLGDialogProviderError.noFileFound(_:))
    {
      v81 = v281;
      v82 = sub_BF704();
      (*(v280 + 16))(v81, v82, v278);
      v106 = sub_C3224();
      v103 = v106;
      v105 = sub_C3884();
      v104 = v105;
      sub_21E8(&unk_EEFA0, &unk_C50F0);
      v107 = sub_C3C64();
      if (os_log_type_enabled(v106, v105))
      {
        v101 = v110;
        v93 = sub_C3954();
        v89 = v93;
        v90 = sub_21E8(&qword_EE828, &qword_C5100);
        v91 = 0;
        v94 = sub_5DD4(0);
        v92 = v94;
        v95 = sub_5DD4(v91);
        v341[0] = v93;
        v340 = v94;
        v339 = v95;
        v96 = 0;
        v97 = v341;
        sub_5E28(0, v341);
        sub_5E28(v96, v97);
        v338[7] = v107;
        v98 = &a7;
        __chkstk_darwin(&a7);
        v99 = var20;
        var20[2] = v83;
        var20[3] = &v340;
        var20[4] = &v339;
        v100 = sub_21E8(&unk_EEFB0, qword_C5110);
        sub_8128();
        v84 = v101;
        sub_C3654();
        v102 = v84;
        if (v84)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_0, v103, v104, "No NLG asset file found", v89, 2u);
          v87 = 0;
          sub_5E88(v92);
          sub_5E88(v95);
          sub_C3934();

          v88 = v102;
        }
      }

      else
      {

        v88 = v110;
      }

      v86 = v88;

      (*(v280 + 8))(v281, v278);

      sub_2560(__dst);
      (*(v302 + 8))(v306, v300);
      result = v86;
      v138 = 0;
      v139 = 0;
      v140 = 0;
      v141 = 0;
      v142 = 0;
      v143 = 0;
      v144 = v86;
      goto LABEL_22;
    }

    (*(v276 + 8))(v277, v274);

    sub_2560(__dst);
    return (*(v302 + 8))(v306, v300);
  }

  else
  {

    sub_2560(__dst);
    return (*(v302 + 8))(v306, v300);
  }
}

uint64_t sub_58BEC(void *a1)
{
  sub_59464(a1, v4);
  memcpy(__dst, a1, sizeof(__dst));
  return sub_C34F4();
}

void sub_58C3C(void *a1)
{
  sub_210D0();
  type metadata accessor for DialogService();
  v1 = sub_2115C();
  _objc_retain(a1);
  sub_A93A4(a1, v1);
  _objc_release(a1);
  _objc_release(v1);
}

void *sub_58DC4(const void *a1, void *a2)
{
  v6 = sub_C30A4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_21E8(&qword_EFA00, &unk_C6570);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_58EEC(uint64_t a1)
{
  v3 = sub_C30A4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_58F94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_5902C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_5906C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_590AC()
{
  v3 = *(sub_C1C64() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_591D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_59210()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_59250(uint64_t a1)
{
  v3 = sub_C1BF4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_592F8(void *a1, void *a2)
{
  v2 = a1[3];
  a2[3] = v2;
  a2[4] = a1[4];
  (**(v2 - 8))();
  a2[5] = a1[5];
  v6 = a1[6];

  result = a2;
  a2[6] = v6;
  return result;
}

uint64_t *sub_59388(uint64_t *a1)
{
  sub_2560(a1);
  v1 = a1[6];

  return a1;
}

uint64_t sub_593BC(uint64_t a1)
{
  v3 = sub_C3064();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_59464(void *a1, void *a2)
{
  *a2 = *a1;
  v3 = a1[1];

  a2[1] = v3;
  v4 = a1[2];

  a2[2] = v4;
  a2[3] = a1[3];
  v6 = a1[4];

  a2[4] = v6;
  v8 = a1[5];

  result = a2;
  a2[5] = v8;
  return result;
}

uint64_t sub_59504()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_595BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_595FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_5966C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 24)))
      {
        v3 = *(a1 + 24);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_59784(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 - 1;
    }
  }

  return result;
}

uint64_t *sub_59974()
{
  if (qword_EE598 != -1)
  {
    swift_once();
  }

  return &qword_F1118;
}

uint64_t *sub_599D4()
{
  if (qword_EE5B0 != -1)
  {
    swift_once();
  }

  return &qword_F1160;
}

uint64_t *sub_59A34()
{
  if (qword_EE5B8 != -1)
  {
    swift_once();
  }

  return &qword_F1178;
}

uint64_t *sub_59A94()
{
  if (qword_EE5A0 != -1)
  {
    swift_once();
  }

  return &qword_F1130;
}

uint64_t *sub_59AF4()
{
  if (qword_EE5C0 != -1)
  {
    swift_once();
  }

  return &qword_F1190;
}

uint64_t *sub_59B54()
{
  if (qword_EE5C8 != -1)
  {
    swift_once();
  }

  return &qword_F11A8;
}

uint64_t sub_59BB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = a8;
  *(v8 + 96) = a7;
  *(v8 + 88) = a6;
  *(v8 + 34) = a5 & 1;
  *(v8 + 33) = a4;
  *(v8 + 80) = a3;
  *(v8 + 72) = a2;
  *(v8 + 64) = a1;
  *(v8 + 56) = v8;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 168) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  v14 = *(a8 - 8);
  *(v8 + 112) = v14;
  v9 = *(v14 + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  v10 = sub_C3214();
  *(v8 + 128) = v10;
  v15 = *(v10 - 8);
  *(v8 + 136) = v15;
  v11 = *(v15 + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 168) = a5 & 1;
  *(v8 + 40) = a6;
  *(v8 + 48) = a7;
  v12 = *(v8 + 56);

  return _swift_task_switch(sub_59DB0, 0);
}

uint64_t sub_59DB0()
{
  v10 = *(v0 + 144);
  v12 = *(v0 + 88);
  v9 = *(v0 + 33);
  v8 = *(v0 + 80);
  v7 = *(v0 + 72);
  *(v0 + 56) = v0;
  v6 = *sub_5A968();
  _objc_retain(v6);
  sub_C31F4();
  sub_C38E4();
  v11 = *sub_5A968();
  _objc_retain(v11);
  sub_C31E4();
  _objc_release(v11);
  v14 = (v12 + *v12);
  v1 = v12[1];
  v2 = swift_task_alloc();
  v13[19] = v2;
  *v2 = v13[7];
  v2[1] = sub_59F64;
  v3 = v13[15];
  v4 = v13[12];

  return v14(v3);
}

uint64_t sub_59F64()
{
  v7 = *v1;
  v2 = *(*v1 + 152);
  *(v7 + 56) = *v1;
  v8 = (v7 + 56);
  *(v7 + 160) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = sub_5A364;
  }

  else
  {
    v3 = *v8;
    v4 = sub_5A0CC;
  }

  return _swift_task_switch(v4, 0);
}

uint64_t sub_5A0CC()
{
  v16 = *(v0 + 34);
  *(v0 + 56) = v0;
  sub_C38D4();
  v15 = *sub_5A968();
  _objc_retain(v15);
  v12 = *(v14 + 144);
  v11 = *(v14 + 128);
  v13 = *(v14 + 120);
  v9 = *(v14 + 104);
  v6 = *(v14 + 33);
  v5 = *(v14 + 80);
  v4 = *(v14 + 72);
  v8 = *(v14 + 64);
  v10 = *(v14 + 136);
  v7 = *(v14 + 112);
  sub_21E8(&qword_EFAF8, qword_C6648);
  sub_C3C64();
  sub_C31D4();

  _objc_release(v15);
  (*(v7 + 16))(v8, v13, v9);
  (*(v7 + 8))(v13, v9);
  (*(v10 + 8))(v12, v11);

  v1 = *(*(v14 + 56) + 8);
  v2 = *(v14 + 56);

  return v1();
}

uint64_t sub_5A364()
{
  v8 = v0[18];
  v1 = v0[17];
  v2 = v0[16];
  v9 = v0[15];
  v0[7] = v0;
  (*(v1 + 8))();

  v3 = v0;
  v4 = *(v0[7] + 8);
  v5 = v0[7];
  v6 = v3[20];

  return v4();
}

uint64_t sub_5A43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, void (*a5)(void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v22 = a8;
  v34 = a1;
  v35 = a2;
  v36 = a3;
  v44 = a4;
  v41 = a5;
  v23 = a7;
  v24 = "";
  v25 = "enableTelemetry=YES";
  v52 = 0;
  v51 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v45 = 0;
  v46 = 0;
  v53 = a7;
  v26 = *(a7 - 8);
  v27 = a7 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v40 = v15 - v28;
  v52 = v15 - v28;
  v29 = sub_C3214();
  v30 = *(v29 - 8);
  v31 = v29 - 8;
  v32 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin(v34);
  v37 = v15 - v32;
  v51 = v15 - v32;
  v48 = v9;
  v49 = v10;
  v50 = v11;
  v47 = v12 & 1;
  v45 = v13;
  v46 = a6;
  v33 = *sub_5A968();
  _objc_retain(v33);
  sub_C31F4();
  v38 = sub_C38E4();
  v39 = *sub_5A968();
  _objc_retain(v39);
  sub_C31E4();
  _objc_release(v39);
  v41();
  v42 = sub_C38D4();
  v43 = *sub_5A968();
  _objc_retain(v43);
  if (v44)
  {
    v19 = v25;
    v20 = 19;
  }

  else
  {
    v19 = v24;
    v20 = 0;
  }

  v21 = 2;
  v16 = 2;
  v15[1] = v20;
  v17 = v19;
  sub_21E8(&qword_EFAF8, qword_C6648);
  v18 = sub_C3C64();
  sub_C31D4();

  _objc_release(v43);
  (*(v26 + 16))(v22, v40, v23);
  (*(v26 + 8))(v40, v23);
  return (*(v30 + 8))(v37, v29);
}

uint64_t sub_5A834()
{
  result = sub_C3564("com.apple.siri.canned", 0x15uLL, 1);
  qword_F1100 = result;
  qword_F1108 = v1;
  return result;
}

uint64_t *sub_5A878()
{
  if (qword_EE588 != -1)
  {
    swift_once();
  }

  return &qword_F1100;
}

uint64_t sub_5A8D8()
{
  sub_5C3F0();
  sub_C3564("com.apple.siri.canned", 0x15uLL, 1);
  sub_C3564("CannedDomainSupport", 0x13uLL, 1);
  result = sub_C3924();
  qword_F1110 = result;
  return result;
}

uint64_t *sub_5A968()
{
  if (qword_EE590 != -1)
  {
    swift_once();
  }

  return &qword_F1110;
}

uint64_t sub_5A9EC(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(uint64_t a1)), uint64_t a8, uint64_t a9)
{
  v53 = a1;
  v54 = a2;
  v55 = a3;
  v49 = a4;
  v51 = a5;
  v52 = a6;
  v61 = a7;
  v59 = a9;
  v60 = sub_5BD3C;
  v62 = sub_5BE68;
  v79 = 0;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v75 = 0;
  v73 = 0;
  v74 = 0;
  v71 = 0;
  v72 = 0;
  v69 = 0;
  v70 = 0;
  v80 = a9;
  v68 = sub_C3214();
  v65 = *(v68 - 8);
  v66 = v68 - 8;
  v44 = v65;
  v45 = *(v65 + 64);
  v41 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __chkstk_darwin(v53);
  v47 = &v40 - v41;
  v42 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = __chkstk_darwin(v10);
  v67 = &v40 - v42;
  v79 = &v40 - v42;
  v76 = v12;
  v77 = v13;
  v78 = v14;
  v75 = v15 & 1;
  v73 = v16;
  v74 = v17;
  v71 = v18;
  v72 = a8;
  v43 = *sub_5A968();
  _objc_retain(v43);
  sub_C31F4();
  (*(v65 + 16))(v47, v67, v68);

  v46 = (*(v44 + 80) + 41) & ~*(v44 + 80);
  v58 = 7;
  v48 = v46 + v45;
  v50 = (v46 + v45 + 8) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = v46;
  v21 = v47;
  v22 = v53;
  v23 = v54;
  v24 = v55;
  v25 = v65;
  v26 = v68;
  v64 = v19;
  *(v19 + 16) = v59;
  *(v19 + 24) = v22;
  *(v19 + 32) = v23;
  *(v19 + 40) = v24;
  (*(v25 + 32))(v19 + v20, v21, v26);
  v27 = v50;
  v28 = v51;
  v29 = v52;
  v30 = v60;
  v31 = v64;
  *(v64 + v48) = v49;
  v32 = (v31 + v27);
  *v32 = v28;
  v32[1] = v29;
  v69 = v30;
  v70 = v31;
  v56 = sub_C38E4();
  v57 = *sub_5A968();
  _objc_retain(v57);
  sub_C31E4();
  _objc_release(v57);

  v33 = swift_allocObject();
  v34 = v60;
  v35 = v61;
  v36 = v64;
  v37 = v33;
  v38 = v62;
  v63 = v37;
  v37[2] = v59;
  v37[3] = v34;
  v37[4] = v36;
  v35(v38);

  return (*(v65 + 8))(v67, v68);
}

uint64_t sub_5AE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  sub_C38D4();
  v10 = *sub_5A968();
  _objc_retain(v10);
  sub_21E8(&qword_EFAF8, qword_C6648);
  sub_C3C64();
  sub_C31D4();

  _objc_release(v10);

  a7(a1);
}

uint64_t sub_5B004(uint64_t a1, void (*a2)(uint64_t))
{

  a2(a1);
}

uint64_t sub_5B078(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t (*)(uint64_t a1)), uint64_t a12, uint64_t a13)
{
  v66 = a1;
  v67 = a2;
  v68 = a3;
  v57 = a4;
  v58 = a5;
  v69 = a6;
  v64 = a7;
  v65 = a8;
  v59 = a9;
  v61 = a10;
  v76 = a11;
  v74 = a13;
  v75 = sub_5BF80;
  v77 = sub_5BE68;
  v98 = 0;
  v95 = 0;
  v96 = 0;
  v97 = 0;
  v93 = 0;
  v94 = 0;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v88 = 0;
  v89 = 0;
  v86 = 0;
  v87 = 0;
  v84 = 0;
  v85 = 0;
  v99 = a13;
  v83 = sub_C3214();
  v80 = *(v83 - 8);
  v81 = v83 - 8;
  v52 = v80;
  v53 = *(v80 + 64);
  v50 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = __chkstk_darwin(v66);
  v55 = &v50 - v50;
  v14 = __chkstk_darwin(v13);
  v82 = &v50 - v15;
  v98 = &v50 - v15;
  v95 = v14;
  v96 = v16;
  v97 = v17;
  v93 = v18;
  v94 = v19;
  v90 = v20;
  v91 = v21;
  v92 = v22;
  v88 = v59;
  v89 = v61;
  v86 = v23;
  v87 = a12;
  v51 = *sub_5A968();
  _objc_retain(v51);
  sub_C31F4();
  (*(v80 + 16))(v55, v82, v83);

  v54 = (*(v52 + 80) + 41) & ~*(v52 + 80);
  v73 = 7;
  v56 = (v54 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = v54;
  v26 = v55;
  v27 = v66;
  v28 = v67;
  v29 = v68;
  v30 = v80;
  v31 = v83;
  v79 = v24;
  *(v24 + 16) = v74;
  *(v24 + 24) = v27;
  *(v24 + 32) = v28;
  *(v24 + 40) = v29;
  (*(v30 + 32))(v24 + v25, v26, v31);
  v32 = v58;
  v33 = v75;
  v34 = v79;
  v35 = (v79 + v56);
  *v35 = v57;
  v35[1] = v32;
  v84 = v33;
  v85 = v34;
  v70 = sub_C38E4();
  v72 = *sub_5A968();
  _objc_retain(v72);
  v62 = sub_21E8(&qword_EFAF8, qword_C6648);
  v63 = sub_C3C64();
  v60 = v36;

  v60[3] = &type metadata for String;
  v37 = sub_5C050();
  v38 = v59;
  v39 = v60;
  v40 = v61;
  v41 = v37;
  v42 = v63;
  v60[4] = v41;
  *v39 = v38;
  v39[1] = v40;
  sub_4E48();
  v71 = v42;
  sub_C31D4();

  _objc_release(v72);

  v43 = swift_allocObject();
  v44 = v75;
  v45 = v76;
  v46 = v79;
  v47 = v43;
  v48 = v77;
  v78 = v47;
  v47[2] = v74;
  v47[3] = v44;
  v47[4] = v46;
  v45(v48);

  return (*(v80 + 8))(v82, v83);
}

uint64_t sub_5B624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  sub_C38D4();
  v7 = *sub_5A968();
  _objc_retain(v7);
  sub_C31E4();
  _objc_release(v7);

  a6(a1);
}

uint64_t sub_5B71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v15 = a4;
  v10 = a1;
  v11 = a2;
  v12 = a3;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v18 = sub_C3214();
  v16 = *(v18 - 8);
  v17 = v18 - 8;
  v8 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = &v7 - v8;
  v23 = &v7 - v8;
  v20 = __chkstk_darwin(v10);
  v21 = v4;
  v22 = v5;
  v9 = *sub_5A968();
  _objc_retain(v9);
  sub_C31F4();
  v13 = sub_C38E4();
  v14 = *sub_5A968();
  _objc_retain(v14);
  sub_C31E4();
  _objc_release(v14);
  (*(v16 + 16))(v15, v19, v18);
  return (*(v16 + 8))(v19, v18);
}

void sub_5B8B4()
{
  sub_5B8FC();
  qword_F1118 = v0;
  qword_F1120 = v1;
  byte_F1128 = v2;
}

uint64_t sub_5B938()
{
  v0 = sub_59974();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_5B960()
{
  sub_5B8FC();
  qword_F1130 = v0;
  qword_F1138 = v1;
  byte_F1140 = v2;
}

uint64_t sub_5B9A8()
{
  v0 = sub_59A94();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_5B9D0()
{
  sub_5B8FC();
  qword_F1148 = v0;
  qword_F1150 = v1;
  byte_F1158 = v2;
}

uint64_t *sub_5BA18()
{
  if (qword_EE5A8 != -1)
  {
    swift_once();
  }

  return &qword_F1148;
}

uint64_t sub_5BA78()
{
  v0 = sub_5BA18();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_5BAA0()
{
  sub_5B8FC();
  qword_F1160 = v0;
  qword_F1168 = v1;
  byte_F1170 = v2;
}

uint64_t sub_5BAE8()
{
  v0 = sub_599D4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_5BB10()
{
  sub_5B8FC();
  qword_F1178 = v0;
  qword_F1180 = v1;
  byte_F1188 = v2;
}

uint64_t sub_5BB58()
{
  v0 = sub_59A34();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_5BB80()
{
  sub_5B8FC();
  qword_F1190 = v0;
  qword_F1198 = v1;
  byte_F11A0 = v2;
}

uint64_t sub_5BBC8()
{
  v0 = sub_59AF4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_5BBF0()
{
  sub_5B8FC();
  qword_F11A8 = v0;
  qword_F11B0 = v1;
  byte_F11B8 = v2;
}

uint64_t sub_5BC38()
{
  v6 = *(v0 + 16);
  v4 = *(sub_C3214() - 8);
  v1 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v5 = (v1 + *(v4 + 64) + 8) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v0 + v1);
  v2 = *(v0 + v5 + 8);

  return swift_deallocObject();
}

uint64_t sub_5BD3C(uint64_t a1)
{
  v7 = *(v1 + 16);
  v9 = *(sub_C3214() - 8);
  v2 = (*(v9 + 80) + 41) & ~*(v9 + 80);
  v3 = v2 + *(v9 + 64);
  v4 = (v3 + 8) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + v4 + 8);
  return sub_5AE34(a1, *(v1 + 24), *(v1 + 32), *(v1 + 40), v1 + v2, *(v1 + v3) & 1, *(v1 + v4));
}

uint64_t sub_5BE20()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_5BE68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v2 = *(v1 + 32);
  return sub_5B004(a1, *(v1 + 24));
}

uint64_t sub_5BE84()
{
  v6 = *(v0 + 16);
  v4 = *(sub_C3214() - 8);
  v1 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v5 = (v1 + *(v4 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v0 + v1);
  v2 = *(v0 + v5 + 8);

  return swift_deallocObject();
}

uint64_t sub_5BF80(uint64_t a1)
{
  v10 = *(v1 + 16);
  v12 = *(sub_C3214() - 8);
  v2 = (*(v12 + 80) + 41) & ~*(v12 + 80);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = v1 + ((v2 + *(v12 + 64) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_5B624(a1, v3, v4, v5, v1 + v2, v7);
}

unint64_t sub_5C050()
{
  v2 = qword_EFB00;
  if (!qword_EFB00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EFB00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_5C0C8()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_5C110()
{
  v0 = sub_59B54();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

__n128 sub_5C14C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  return result;
}

uint64_t sub_5C160(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 17))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_5C240(uint64_t result, int a2, int a3)
{
  v3 = (result + 17);
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 16) = 0;
    if (a3)
    {
      *v3 = 1;
    }
  }

  else if (a3)
  {
    *v3 = 0;
  }

  return result;
}

unint64_t sub_5C3F0()
{
  v2 = qword_EFB08;
  if (!qword_EFB08)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_EFB08);
    return ObjCClassMetadata;
  }

  return v2;
}

BOOL sub_5C454(uint64_t a1, void *a2)
{
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  v2._rawValue = sub_C3C64();
  *v3 = "graphName";
  *(v3 + 8) = 9;
  *(v3 + 16) = 2;
  sub_4E48();
  v6 = sub_C3BC4(v2, v5);

  return v6 != 0;
}

unint64_t sub_5C5AC()
{
  v2 = qword_EFB10;
  if (!qword_EFB10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EFB10);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_5C6F8@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_5C454(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_5C738@<X0>(uint64_t *a1@<X8>)
{
  result = sub_5C52C();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_5C768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a1;
  v8[8] = v8;
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = 0;
  v8[5] = 0;
  v8[9] = 0;
  v8[6] = 0;
  v8[7] = 0;
  v8[10] = 0;
  v9 = sub_C3234();
  v8[12] = v9;
  v15 = *(v9 - 8);
  v8[13] = v15;
  v10 = *(v15 + 64) + 15;
  v8[14] = swift_task_alloc();
  v11 = sub_C2464();
  v8[15] = v11;
  v16 = *(v11 - 8);
  v8[16] = v16;
  v12 = *(v16 + 64) + 15;
  v25 = swift_task_alloc();
  v8[17] = v25;
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a5;
  v8[9] = a6;
  v8[6] = a7;
  v8[7] = a8;
  v13 = swift_task_alloc();
  *(v17 + 144) = v13;
  *v13 = *(v17 + 64);
  v13[1] = sub_5C9C4;

  return sub_5D300(v25, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_5C9C4()
{
  v7 = *v1;
  v2 = *(*v1 + 144);
  *(v7 + 64) = *v1;
  v8 = (v7 + 64);
  *(v7 + 152) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = sub_5CC34;
  }

  else
  {
    v3 = *v8;
    v4 = sub_5CB2C;
  }

  return _swift_task_switch(v4, 0);
}

uint64_t sub_5CB2C()
{
  v7 = v0[17];
  v6 = v0[16];
  v8 = v0[15];
  v1 = v0[11];
  v0[8] = v0;
  sub_C20D4();
  (*(v6 + 8))(v7, v8);
  v2 = v0[17];
  v9 = v0[14];

  v3 = *(v0[8] + 8);
  v4 = v0[8];

  return v3();
}

uint64_t sub_5CC34()
{
  v34 = v0;
  v20 = v0[19];
  v1 = v0[14];
  v18 = v0[13];
  v19 = v0[12];
  v0[8] = v0;
  swift_errorRetain();
  v0[10] = v20;
  v2 = sub_BF704();
  (*(v18 + 16))(v1, v2, v19);
  swift_errorRetain();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v27 = sub_C3224();
  v28 = sub_C3884();
  v23 = swift_allocObject();
  *(v23 + 16) = 32;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1A354;
  *(v22 + 24) = v21;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_7BBC;
  *(v25 + 24) = v22;
  sub_21E8(&unk_EEFA0, &unk_C50F0);
  sub_C3C64();
  v26 = v3;

  *v26 = sub_7B48;
  v26[1] = v23;

  v26[2] = sub_7B48;
  v26[3] = v24;

  v26[4] = sub_7C08;
  v26[5] = v25;
  sub_4E48();

  if (os_log_type_enabled(v27, v28))
  {
    buf = sub_C3954();
    sub_21E8(&qword_EE828, &qword_C5100);
    v15 = sub_5DD4(0);
    v16 = sub_5DD4(1);
    v29 = buf;
    v30 = v15;
    v31 = v16;
    sub_5E28(2, &v29);
    sub_5E28(1, &v29);
    v32 = sub_7B48;
    v33 = v23;
    sub_5E3C(&v32, &v29, &v30, &v31);
    v32 = sub_7B48;
    v33 = v24;
    sub_5E3C(&v32, &v29, &v30, &v31);
    v32 = sub_7C08;
    v33 = v25;
    sub_5E3C(&v32, &v29, &v30, &v31);
    _os_log_impl(&dword_0, v27, v28, "Unable to write USO protobuf graph: %s", buf, 0xCu);
    sub_5E88(v15);
    sub_5E88(v16);
    sub_C3934();
  }

  else
  {
  }

  v12 = v17[19];
  v9 = v17[14];
  v10 = v17[12];
  v11 = v17[11];
  v8 = v17[13];
  _objc_release(v27);
  (*(v8 + 8))(v9, v10);
  sub_C20C4();

  v4 = v17[17];
  v13 = v17[14];

  v5 = *(v17[8] + 8);
  v6 = v17[8];

  return v5();
}

uint64_t sub_5D300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[28] = a8;
  v8[27] = a7;
  v8[26] = a6;
  v8[25] = a3;
  v8[24] = a2;
  v8[23] = a1;
  v8[18] = v8;
  v8[6] = 0;
  v8[7] = 0;
  v8[8] = 0;
  v8[9] = 0;
  v8[19] = 0;
  v8[10] = 0;
  v8[11] = 0;
  v8[20] = 0;
  v8[14] = 0;
  v8[15] = 0;
  v8[21] = 0;
  v8[22] = 0;
  v9 = *(*(sub_21E8(&qword_EF0D0, qword_C66B0) - 8) + 64) + 15;
  v8[29] = swift_task_alloc();
  v10 = sub_C3234();
  v8[30] = v10;
  v13 = *(v10 - 8);
  v8[31] = v13;
  v14 = *(v13 + 64);
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v8[6] = a2;
  v8[7] = a3;
  v8[8] = a4;
  v8[9] = a5;
  v8[19] = a6;
  v8[10] = a7;
  v8[11] = a8;
  v11 = v8[18];

  return _swift_task_switch(sub_5D50C, 0);
}

uint64_t sub_5D50C()
{
  v105 = v0;
  v1 = v0[34];
  v75 = v0[31];
  v76 = v0[30];
  v0[18] = v0;
  v2 = sub_BF704();
  v77 = *(v75 + 16);
  v77(v1, v2, v76);
  v88 = sub_C3224();
  v89 = sub_C3874();
  v81 = swift_allocObject();
  *(v81 + 16) = 32;
  v82 = swift_allocObject();
  *(v82 + 16) = 8;
  v78 = swift_allocObject();
  *(v78 + 16) = sub_5EF88;
  *(v78 + 24) = 0;
  v79 = swift_allocObject();
  *(v79 + 16) = sub_1F278;
  *(v79 + 24) = v78;
  v83 = swift_allocObject();
  *(v83 + 16) = sub_7BBC;
  *(v83 + 24) = v79;
  v84 = swift_allocObject();
  *(v84 + 16) = 32;
  v85 = swift_allocObject();
  *(v85 + 16) = 8;
  v80 = swift_allocObject();
  *(v80 + 16) = sub_5EF98;
  *(v80 + 24) = 0;
  v86 = swift_allocObject();
  *(v86 + 16) = sub_7BBC;
  *(v86 + 24) = v80;
  sub_21E8(&unk_EEFA0, &unk_C50F0);
  sub_C3C64();
  v87 = v3;

  *v87 = sub_7B48;
  v87[1] = v81;

  v87[2] = sub_7B48;
  v87[3] = v82;

  v87[4] = sub_7C08;
  v87[5] = v83;

  v87[6] = sub_7B48;
  v87[7] = v84;

  v87[8] = sub_7B48;
  v87[9] = v85;

  v87[10] = sub_7C08;
  v87[11] = v86;
  sub_4E48();

  if (os_log_type_enabled(v88, v89))
  {
    buf = sub_C3954();
    sub_21E8(&qword_EE828, &qword_C5100);
    v72 = sub_5DD4(0);
    v73 = sub_5DD4(2);
    v100 = buf;
    v101 = v72;
    v102 = v73;
    sub_5E28(2, &v100);
    sub_5E28(2, &v100);
    v103 = sub_7B48;
    v104 = v81;
    sub_5E3C(&v103, &v100, &v101, &v102);
    v103 = sub_7B48;
    v104 = v82;
    sub_5E3C(&v103, &v100, &v101, &v102);
    v103 = sub_7C08;
    v104 = v83;
    sub_5E3C(&v103, &v100, &v101, &v102);
    v103 = sub_7B48;
    v104 = v84;
    sub_5E3C(&v103, &v100, &v101, &v102);
    v103 = sub_7B48;
    v104 = v85;
    sub_5E3C(&v103, &v100, &v101, &v102);
    v103 = sub_7C08;
    v104 = v86;
    sub_5E3C(&v103, &v100, &v101, &v102);
    _os_log_impl(&dword_0, v88, v89, "%s.%s", buf, 0x16u);
    sub_5E88(v72);
    sub_5E88(v73);
    sub_C3934();
  }

  else
  {
  }

  v67 = v74[34];
  v68 = v74[30];
  v70 = v74[26];
  v66 = v74[31];
  _objc_release(v88);
  v69 = *(v66 + 8);
  v69(v67, v68);
  v74[12] = sub_5C52C();
  v74[13] = v4;
  sub_C33E4();
  sub_8224((v74 + 12));
  if (v74[5])
  {
    if (swift_dynamicCast())
    {
      v64 = v74[16];
      v65 = v74[17];
    }

    else
    {
      v64 = 0;
      v65 = 0;
    }

    v62 = v64;
    v63 = v65;
  }

  else
  {
    sub_1FA80(v74 + 2);
    v62 = 0;
    v63 = 0;
  }

  if (!v63)
  {
    goto LABEL_19;
  }

  v5 = v74[28];
  v6 = v74[27];
  v74[14] = v62;
  v74[15] = v63;
  v7 = sub_5EFC8(v62, v63, v6, v5);
  v61 = v7;
  if (!v7)
  {

LABEL_19:
    v13 = v74[32];
    v32 = v74[30];
    v34 = v74[25];
    v33 = v74[24];
    v14 = sub_BF704();
    v77(v13, v14, v32);

    v35 = swift_allocObject();
    *(v35 + 16) = v33;
    *(v35 + 24) = v34;
    log = sub_C3224();
    v42 = sub_C3884();
    v37 = swift_allocObject();
    *(v37 + 16) = 32;
    v38 = swift_allocObject();
    *(v38 + 16) = 8;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_1D834;
    *(v36 + 24) = v35;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_7BBC;
    *(v39 + 24) = v36;
    sub_C3C64();
    v40 = v15;

    *v40 = sub_7B48;
    v40[1] = v37;

    v40[2] = sub_7B48;
    v40[3] = v38;

    v40[4] = sub_7C08;
    v40[5] = v39;
    sub_4E48();

    if (os_log_type_enabled(log, v42))
    {
      v29 = sub_C3954();
      sub_21E8(&qword_EE828, &qword_C5100);
      v30 = sub_5DD4(0);
      v31 = sub_5DD4(1);
      v90 = v29;
      v91 = v30;
      v92 = v31;
      sub_5E28(2, &v90);
      sub_5E28(1, &v90);
      v93 = sub_7B48;
      v94 = v37;
      sub_5E3C(&v93, &v90, &v91, &v92);
      v93 = sub_7B48;
      v94 = v38;
      sub_5E3C(&v93, &v90, &v91, &v92);
      v93 = sub_7C08;
      v94 = v39;
      sub_5E3C(&v93, &v90, &v91, &v92);
      _os_log_impl(&dword_0, log, v42, "No valid configuration found for NLv4 producer for %s. Returning empty UsoGraph.", v29, 0xCu);
      sub_5E88(v30);
      sub_5E88(v31);
      sub_C3934();
    }

    else
    {
    }

    v24 = v74[32];
    v25 = v74[30];
    v26 = v74[29];
    v27 = v74[23];
    _objc_release(log);
    v69(v24, v25);
    sub_C28B4();
    sub_C3C64();
    v16 = sub_C2904();
    (*(*(v16 - 8) + 56))(v26, 1);
    v28 = sub_C28F4();
    sub_1E5E8(v26);

    v74[20] = v28;
    sub_C25F4();

    goto LABEL_23;
  }

  v8 = v74[33];
  v52 = v74[30];
  v74[21] = v7;
  v9 = sub_BF704();
  v77(v8, v9, v52);

  v53 = swift_allocObject();
  *(v53 + 16) = v62;
  *(v53 + 24) = v63;
  oslog = sub_C3224();
  v60 = sub_C3874();
  v55 = swift_allocObject();
  *(v55 + 16) = 32;
  v56 = swift_allocObject();
  *(v56 + 16) = 8;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_1D834;
  *(v54 + 24) = v53;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_7BBC;
  *(v57 + 24) = v54;
  sub_C3C64();
  v58 = v10;

  *v58 = sub_7B48;
  v58[1] = v55;

  v58[2] = sub_7B48;
  v58[3] = v56;

  v58[4] = sub_7C08;
  v58[5] = v57;
  sub_4E48();

  if (os_log_type_enabled(oslog, v60))
  {
    v49 = sub_C3954();
    sub_21E8(&qword_EE828, &qword_C5100);
    v50 = sub_5DD4(0);
    v51 = sub_5DD4(1);
    v95 = v49;
    v96 = v50;
    v97 = v51;
    sub_5E28(2, &v95);
    sub_5E28(1, &v95);
    v98 = sub_7B48;
    v99 = v55;
    sub_5E3C(&v98, &v95, &v96, &v97);
    v98 = sub_7B48;
    v99 = v56;
    sub_5E3C(&v98, &v95, &v96, &v97);
    v98 = sub_7C08;
    v99 = v57;
    sub_5E3C(&v98, &v95, &v96, &v97);
    _os_log_impl(&dword_0, oslog, v60, "NLv4 producer returning a value SDA for %s", v49, 0xCu);
    sub_5E88(v50);
    sub_5E88(v51);
    sub_C3934();
  }

  else
  {
  }

  v43 = v74[33];
  v44 = v74[30];
  v46 = v74[29];
  v47 = v74[23];
  _objc_release(oslog);
  v69(v43, v44);
  sub_C28B4();
  sub_C3C64();
  v45 = v11;

  *v45 = v61;
  sub_4E48();
  v12 = sub_C2904();
  (*(*(v12 - 8) + 56))(v46, 1);
  v48 = sub_C28F4();
  sub_1E5E8(v46);

  v74[22] = v48;
  sub_C25F4();

LABEL_23:
  v17 = v74[34];
  v21 = v74[33];
  v22 = v74[32];
  v23 = v74[29];

  v18 = *(v74[18] + 8);
  v19 = v74[18];

  return v18();
}

uint64_t sub_5EF48()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_5EFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a1;
  v70 = a2;
  v62 = a3;
  v63 = a4;
  v56 = sub_1D834;
  v57 = sub_7BBC;
  v58 = sub_7B48;
  v59 = sub_7B48;
  v60 = sub_7C08;
  v80 = 0;
  v81 = 0;
  v78 = 0;
  v79 = 0;
  v61 = 0;
  v64 = sub_C3234();
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v68 = v28 - v67;
  v80 = __chkstk_darwin(v69);
  v81 = v4;
  v78 = v5;
  v79 = v6;
  sub_C3564("tell_common_SiriContent", 0x17uLL, 1);
  v71 = v7;
  v72 = sub_C3574();

  if (v72)
  {
    sub_C27A4();
    return sub_C2794();
  }

  else
  {
    sub_C3564("like_common_SiriContent", 0x17uLL, 1);
    v53 = v8;
    v54 = sub_C3574();

    if (v54)
    {
      sub_C2784();
      return sub_C2774();
    }

    else
    {
      sub_C3564("unlike_common_SiriContent", 0x19uLL, 1);
      v51 = v9;
      v52 = sub_C3574();

      if (v52)
      {
        sub_C27D4();
        return sub_C27C4();
      }

      else
      {
        sub_C3564("perform_common_SiriSocialAction", 0x1FuLL, 1);
        v49 = v10;
        v50 = sub_C3574();

        if (v50)
        {
          sub_C27F4();
          return sub_C27E4();
        }

        else
        {
          v11 = v68;
          v12 = sub_BF704();
          (*(v65 + 16))(v11, v12, v64);

          v37 = 32;
          v38 = 7;
          v13 = swift_allocObject();
          v14 = v70;
          v39 = v13;
          *(v13 + 16) = v69;
          *(v13 + 24) = v14;
          v47 = sub_C3224();
          v48 = sub_C3884();
          v36 = 17;
          v41 = swift_allocObject();
          *(v41 + 16) = 32;
          v42 = swift_allocObject();
          *(v42 + 16) = 8;
          v15 = swift_allocObject();
          v16 = v39;
          v40 = v15;
          *(v15 + 16) = v56;
          *(v15 + 24) = v16;
          v17 = swift_allocObject();
          v18 = v40;
          v44 = v17;
          *(v17 + 16) = v57;
          *(v17 + 24) = v18;
          v46 = sub_21E8(&unk_EEFA0, &unk_C50F0);
          v43 = sub_C3C64();
          v45 = v19;

          v20 = v41;
          v21 = v45;
          *v45 = v58;
          v21[1] = v20;

          v22 = v42;
          v23 = v45;
          v45[2] = v59;
          v23[3] = v22;

          v24 = v44;
          v25 = v45;
          v45[4] = v60;
          v25[5] = v24;
          sub_4E48();

          if (os_log_type_enabled(v47, v48))
          {
            v26 = v61;
            v29 = sub_C3954();
            v28[2] = sub_21E8(&qword_EE828, &qword_C5100);
            v30 = sub_5DD4(0);
            v31 = sub_5DD4(1);
            v32 = &v77;
            v77 = v29;
            v33 = &v76;
            v76 = v30;
            v34 = &v75;
            v75 = v31;
            sub_5E28(2, &v77);
            sub_5E28(1, v32);
            v73 = v58;
            v74 = v41;
            sub_5E3C(&v73, v32, v33, v34);
            v35 = v26;
            if (v26)
            {

              __break(1u);
            }

            else
            {
              v73 = v59;
              v74 = v42;
              sub_5E3C(&v73, &v77, &v76, &v75);
              v28[0] = 0;
              v73 = v60;
              v74 = v44;
              sub_5E3C(&v73, &v77, &v76, &v75);
              _os_log_impl(&dword_0, v47, v48, "Unsupported graphName found in NLv4 producer: %s", v29, 0xCu);
              sub_5E88(v30);
              sub_5E88(v31);
              sub_C3934();
            }
          }

          else
          {
          }

          _objc_release(v47);
          (*(v65 + 8))(v68, v64);
          return 0;
        }
      }
    }
  }
}

uint64_t sub_5F854()
{
  v4 = 0;
  v5 = 0;
  v3 = sub_C3564("socialNLv4", 0xAuLL, 1);
  v2 = v0;

  v4 = v3;
  v5 = v2;
  sub_8224(&v4);
  return v3;
}

uint64_t sub_5F8CC()
{
  result = *v0;
  v2 = v0[1];
  sub_17154();
  return result;
}

uint64_t sub_5F8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v7;
  *(v7 + 16) = v7;
  v16 = *v6;
  v17 = v6[1];
  v8 = swift_task_alloc();
  *(v10 + 24) = v8;
  *v8 = *(v10 + 16);
  v8[1] = sub_4CE4;

  return sub_5C768(a1, a2, a3, a4, a5, a6, v16, v17);
}

uint64_t sub_5FA38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_5FA78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_5FB44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_5FB84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_5FBC4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_5FC5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_5FC9C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_5FCDC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_5FD74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_5FDB4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_5FDF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_5FE8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_5FECC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_5FF0C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_5FFA4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_5FFE4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_60064()
{
  v2 = qword_EFB18;
  if (!qword_EFB18)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EFB18);
    return WitnessTable;
  }

  return v2;
}

void sub_600E0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_210D0();
  type metadata accessor for SocialConversationFlowDelegatePlugin();
  v4 = sub_2115C();

  _objc_retain(a3);
  _objc_retain(v4);
  sub_C1D14();
  _objc_release(a3);
  _objc_release(v4);
}

uint64_t sub_601E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v42 = a1;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v76 = 0;
  v77 = 0;
  v73 = 0;
  v72 = 0;
  v68 = 0;
  v69 = 0;
  v41 = 0;
  v54 = sub_C1D94();
  v50 = *(v54 - 8);
  v51 = v54 - 8;
  v25 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v53 = &v25 - v25;
  v80 = &v25 - v25;
  v63 = sub_C21C4();
  v60 = *(v63 - 8);
  v61 = v63 - 8;
  v26 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v42);
  v62 = &v25 - v26;
  v79 = &v25 - v26;
  v78 = v2;
  v29 = sub_C3564("socialCATI", 0xAuLL, 1);
  v64 = v3;
  v76 = v29;
  v77 = v3;
  sub_610E4(v62);
  v27 = sub_C2324();
  v74 = sub_C2314();
  v59 = &v75;
  sub_C2334();

  matched = type metadata accessor for SocialExactMatchUserInputParser();
  v4 = sub_612B4();
  v58 = sub_A9850(v4, v5);
  v73 = v58;
  v32 = type metadata accessor for NLv4UserInputParser();
  v57 = sub_992E4();
  v72 = v57;
  v28 = sub_C2354();
  v70 = sub_C2344();
  v56 = &v71;
  sub_C2364();

  v37 = sub_5F854();
  v55 = v6;
  v68 = v37;
  v69 = v6;
  v30 = sub_61298();
  v31 = v7;

  sub_C1DA4();

  v35 = sub_21E8(&qword_EFB20, &qword_C6810);
  v36 = sub_C3C64();
  v34 = v8;

  v34[3] = v32;
  v9 = sub_612E4();
  v10 = v34;
  v11 = v57;
  v12 = v9;
  v13 = v59;
  v34[4] = v12;
  *v10 = v11;
  sub_24F4(v13, (v10 + 5));

  v34[13] = matched;
  v14 = sub_61364();
  v15 = v34;
  v16 = v58;
  v34[14] = v14;
  v15[10] = v16;
  sub_4E48();
  sub_C1D44();
  v39 = sub_21E8(&qword_EFB38, &qword_C6818);
  v40 = sub_C3C64();
  v38 = v17;
  sub_24F4(v56, v17);

  *(v38 + 64) = &unk_E66A0;
  v18 = sub_613E4();
  v19 = v37;
  v20 = v38;
  v21 = v55;
  *(v38 + 72) = v18;
  *(v20 + 40) = v19;
  *(v20 + 48) = v21;
  sub_4E48();
  sub_C1D74();
  v44 = type metadata accessor for SocialPresentationElementProvider();
  v43 = v66;
  sub_24F4(v42, v66);
  v22 = sub_539D4();
  v45 = sub_61484(v43, v22);
  v46 = v67;
  v67[3] = v44;
  v67[4] = sub_614D8();
  v67[0] = v45;
  sub_C1D84();
  v47 = sub_48128();
  v48 = v23;
  v49 = v65;
  v65[3] = &unk_E51A8;
  v65[4] = sub_61558();
  v65[0] = v47;
  v65[1] = v48;
  sub_C1D54();
  (*(v50 + 32))(v52, v53, v54);

  sub_2560(v56);

  sub_2560(v59);
  (*(v60 + 8))(v62, v63);
}

uint64_t *sub_606E8()
{
  if (qword_EE5D0 != -1)
  {
    swift_once();
  }

  return &qword_F11C0;
}

uint64_t *sub_60748()
{
  if (qword_EE5E8 != -1)
  {
    swift_once();
  }

  return &qword_F11F0;
}

uint64_t *sub_607A8()
{
  if (qword_EE5D8 != -1)
  {
    swift_once();
  }

  return &qword_F11D0;
}

uint64_t *sub_60808()
{
  if (qword_EE5E0 != -1)
  {
    swift_once();
  }

  return &qword_F11E0;
}

uint64_t *sub_60868()
{
  if (qword_EE608 != -1)
  {
    swift_once();
  }

  return &qword_F1230;
}

uint64_t *sub_608C8()
{
  if (qword_EE610 != -1)
  {
    swift_once();
  }

  return &qword_F1240;
}

uint64_t *sub_60928()
{
  if (qword_EE618 != -1)
  {
    swift_once();
  }

  return &qword_F1250;
}

uint64_t *sub_60988()
{
  if (qword_EE5F8 != -1)
  {
    swift_once();
  }

  return &qword_F1210;
}

uint64_t sub_609E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[30] = a1;
  v9 = a2;
  v8[31] = a3;
  v8[25] = sub_1A354;
  v8[26] = sub_7BBC;
  v8[27] = sub_7B48;
  v8[28] = sub_7B48;
  v8[29] = sub_7C08;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v10 = sub_C3234();
  v11 = *(v10 - 8);
  v12 = v10 - 8;
  v13 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v9);
  v14 = v8 - v13;
  v21 = v4;
  v20 = v3;
  v19 = v5;
  v15 = sub_A7FFC(v3, v5);
  v16 = v6;
  v17 = 0;
  return sub_C1D04();
}

uint64_t sub_610E4@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v17 = 0;
  v16 = sub_C21C4();
  v12 = *(v16 - 8);
  v13 = v16 - 8;
  v5 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v15 = &v4 - v5;
  v17 = &v4 - v5;
  v11 = 1;
  v6 = sub_C3564("common_SocialConversation", 0x19uLL, 1);
  v7 = v1;
  v8 = sub_61298();
  v9 = v2;

  sub_C2174();

  v10 = 6;
  sub_C3564("target", 6uLL, v11 & 1);
  sub_C2184();
  sub_C3564("action", v10, v11 & 1);
  sub_C21A4();
  sub_C3564("guid", 4uLL, v11 & 1);
  sub_C21B4();
  sub_C3564("dialog", v10, v11 & 1);
  sub_C2194();
  return (*(v12 + 32))(v14, v15, v16);
}

unint64_t sub_612E4()
{
  v2 = qword_EFB28;
  if (!qword_EFB28)
  {
    type metadata accessor for NLv4UserInputParser();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EFB28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_61364()
{
  v2 = qword_EFB30;
  if (!qword_EFB30)
  {
    type metadata accessor for SocialExactMatchUserInputParser();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EFB30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_613E4()
{
  v2 = qword_EFB40;
  if (!qword_EFB40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EFB40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_614D8()
{
  v2 = qword_EFB48;
  if (!qword_EFB48)
  {
    type metadata accessor for SocialPresentationElementProvider();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EFB48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_61558()
{
  v2 = qword_EFB50;
  if (!qword_EFB50)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EFB50);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_615D0()
{
  result = sub_C3564("snippetName", 0xBuLL, 1);
  qword_F11C0 = result;
  qword_F11C8 = v1;
  return result;
}

uint64_t sub_61614()
{
  v0 = sub_606E8();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_61650()
{
  result = sub_C3564("visualLocation", 0xEuLL, 1);
  qword_F11D0 = result;
  qword_F11D8 = v1;
  return result;
}

uint64_t sub_61694()
{
  v0 = sub_607A8();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_616D0()
{
  result = sub_C3564("conversation", 0xCuLL, 1);
  qword_F11E0 = result;
  qword_F11E8 = v1;
  return result;
}

uint64_t sub_61714()
{
  v0 = sub_60808();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_61750()
{
  result = sub_C3564("buttonStack", 0xBuLL, 1);
  qword_F11F0 = result;
  qword_F11F8 = v1;
  return result;
}

uint64_t sub_61794()
{
  v0 = sub_60748();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_617D0()
{
  result = sub_C3564("playWithMeSection", 0x11uLL, 1);
  qword_F1200 = result;
  qword_F1208 = v1;
  return result;
}

uint64_t *sub_61814()
{
  if (qword_EE5F0 != -1)
  {
    swift_once();
  }

  return &qword_F1200;
}

uint64_t sub_61874()
{
  v0 = sub_61814();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_618B0()
{
  result = sub_C3564("buttons", 7uLL, 1);
  qword_F1210 = result;
  qword_F1218 = v1;
  return result;
}

uint64_t sub_618F4()
{
  v0 = sub_60988();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_61930()
{
  result = sub_C3564("includeDialog", 0xDuLL, 1);
  qword_F1220 = result;
  qword_F1228 = v1;
  return result;
}

uint64_t *sub_61974()
{
  if (qword_EE600 != -1)
  {
    swift_once();
  }

  return &qword_F1220;
}

uint64_t sub_619D4()
{
  v0 = sub_61974();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_61A10()
{
  result = sub_C3564("label", 5uLL, 1);
  qword_F1230 = result;
  qword_F1238 = v1;
  return result;
}

uint64_t sub_61A54()
{
  v0 = sub_60868();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_61A90()
{
  result = sub_C3564("directInvocation", 0x10uLL, 1);
  qword_F1240 = result;
  qword_F1248 = v1;
  return result;
}

uint64_t sub_61AD4()
{
  v0 = sub_608C8();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_61B10()
{
  result = sub_C3564("userData", 8uLL, 1);
  qword_F1250 = result;
  qword_F1258 = v1;
  return result;
}

uint64_t sub_61B54()
{
  v0 = sub_60928();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_61B90()
{
  result = sub_C3564("showAll", 7uLL, 1);
  qword_F1260 = result;
  qword_F1268 = v1;
  return result;
}

uint64_t *sub_61BD4()
{
  if (qword_EE620 != -1)
  {
    swift_once();
  }

  return &qword_F1260;
}

uint64_t sub_61C34()
{
  v0 = sub_61BD4();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_61C70()
{
  result = sub_C3564("separated", 9uLL, 1);
  qword_F1270 = result;
  qword_F1278 = v1;
  return result;
}

uint64_t *sub_61CB4()
{
  if (qword_EE628 != -1)
  {
    swift_once();
  }

  return &qword_F1270;
}

uint64_t sub_61D14()
{
  v0 = sub_61CB4();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_61D50()
{
  result = sub_C3564("content", 7uLL, 1);
  qword_F1280 = result;
  qword_F1288 = v1;
  return result;
}

uint64_t *sub_61D94()
{
  if (qword_EE630 != -1)
  {
    swift_once();
  }

  return &qword_F1280;
}

uint64_t sub_61DF4()
{
  v0 = sub_61D94();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_61E30()
{
  result = sub_C3564("link", 4uLL, 1);
  qword_F1290 = result;
  qword_F1298 = v1;
  return result;
}

uint64_t *sub_61E74()
{
  if (qword_EE638 != -1)
  {
    swift_once();
  }

  return &qword_F1290;
}

uint64_t sub_61ED4()
{
  v0 = sub_61E74();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_61F10(char a1)
{
  if (a1)
  {
    return sub_C3564("allInvocation", 0xDuLL, 1);
  }

  else
  {
    return sub_C3564("moreInvocation", 0xEuLL, 1);
  }
}

uint64_t sub_61F9C(char a1)
{
  if (a1)
  {
    return sub_C3564("allContinuation", 0xFuLL, 1);
  }

  else
  {
    return sub_C3564("moreContinuation", 0x10uLL, 1);
  }
}

uint64_t sub_62028()
{
  v2 = *(v0 + 72);

  return v2;
}

uint64_t sub_62054(uint64_t *a1, uint64_t a2)
{
  v7 = 0;
  v6[6] = a1;
  v6[5] = a2;

  stru_20.fileoff = a2;
  sub_24F4(a1, v6);
  v5 = sub_BF288(v6);

  v7 = v5;

  sub_2560(a1);

  return v5;
}

uint64_t sub_62104(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  v510 = v3;
  v588 = v2;
  v594 = v4;
  v511 = v1;
  v512 = sub_1D834;
  v513 = sub_7BBC;
  v514 = sub_7B48;
  v515 = sub_7B48;
  v516 = sub_7C08;
  v517 = sub_6B1E0;
  v518 = sub_7BBC;
  v519 = sub_7B48;
  v520 = sub_7B48;
  v521 = sub_7C08;
  v522 = sub_1D834;
  v523 = sub_7BBC;
  v524 = sub_7B48;
  v525 = sub_7B48;
  v526 = sub_7C08;
  v527 = sub_6AF10;
  v528 = sub_7BBC;
  v529 = sub_1D834;
  v530 = sub_7BBC;
  v531 = sub_7B48;
  v532 = sub_7B48;
  v533 = sub_7C08;
  v534 = sub_7B48;
  v535 = sub_7B48;
  v536 = sub_7C08;
  v537 = sub_61794;
  v538 = sub_7BBC;
  v539 = sub_7B48;
  v540 = sub_7B48;
  v541 = sub_7C08;
  v542 = sub_61714;
  v543 = sub_7BBC;
  v544 = sub_6AB8C;
  v545 = sub_4F7C8;
  v546 = sub_4F83C;
  v547 = sub_4F8C4;
  v548 = sub_7B48;
  v549 = sub_7B48;
  v550 = sub_7C08;
  v551 = sub_7B48;
  v552 = sub_7B48;
  v553 = sub_4F910;
  v714 = 0;
  v713 = 0;
  v712 = 0;
  v711 = 0;
  v710 = 0;
  v709 = 0;
  v701 = 0;
  v702 = 0;
  v700 = 0;
  v692 = 0;
  v693 = 0;
  v689 = 0;
  v554 = 0;
  v674 = 0;
  v673[0] = 0;
  v673[1] = 0;
  v670 = 0;
  v662 = 0;
  v663 = 0;
  v654 = 0;
  v655 = 0;
  v649 = 0;
  v645 = 0;
  v637 = 0;
  v638 = 0;
  v636 = 0;
  v631 = 0;
  v632 = 0;
  v569 = 0;
  v555 = sub_C3024();
  v556 = *(v555 - 8);
  v557 = v555 - 8;
  v558 = (*(v556 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v559 = v164 - v558;
  v714 = v164 - v558;
  v560 = sub_C3004();
  v561 = *(v560 - 8);
  v562 = v560 - 8;
  v563 = (*(v561 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v560);
  v564 = v164 - v563;
  v565 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v164 - v563);
  v566 = v164 - v565;
  v713 = v164 - v565;
  v567 = (*(*(sub_21E8(&qword_EEFD0, &unk_C6820) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v569);
  v568 = v164 - v567;
  v570 = sub_C3234();
  v571 = *(v570 - 8);
  v572 = v570 - 8;
  v582 = v571[8];
  v573 = (v582 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v569);
  v574 = v164 - v573;
  v575 = (v582 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v6);
  v576 = v164 - v575;
  v577 = (v582 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v7);
  v578 = v164 - v577;
  v579 = (v582 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin(v8);
  v580 = v164 - v579;
  v581 = (v582 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __chkstk_darwin(v9);
  v583 = v164 - v581;
  v584 = (v582 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v585 = v164 - v584;
  v712 = v11;
  v711 = v12;
  v710 = v1;
  v586 = sub_C2224();
  v587 = swift_allocBox();
  v589 = v13;
  v709 = v13;

  v590 = sub_61298();
  v591 = v14;

  sub_C2214();

  v15 = sub_606E8();
  v592 = *v15;
  v593 = v15[1];

  v595 = v705;
  v705[0] = v592;
  v705[1] = v593;
  sub_C33E4();
  sub_8224(v595);
  if (v706[3])
  {
    if (swift_dynamicCast())
    {
      v508 = v596;
      v509 = v597;
    }

    else
    {
      v508 = 0;
      v509 = 0;
    }

    v506 = v508;
    v507 = v509;
  }

  else
  {
    sub_1FA80(v706);
    v506 = 0;
    v507 = 0;
  }

  v703 = v506;
  v704 = v507;
  if (v507)
  {
    v707 = v703;
    v708 = v704;
  }

  else
  {
    v707 = sub_C3564("textOnlySnippet", 0xFuLL, 1);
    v708 = v16;
    if (v704)
    {
      sub_8224(&v703);
    }
  }

  v17 = v585;
  v491 = v707;
  v492 = v708;
  v701 = v707;
  v702 = v708;
  v18 = sub_BF704();
  v489 = v571[2];
  v490 = v571 + 2;
  v489(v17, v18, v570);

  v494 = 32;
  v495 = 7;
  v19 = swift_allocObject();
  v20 = v492;
  v496 = v19;
  *(v19 + 16) = v491;
  *(v19 + 24) = v20;
  v504 = sub_C3224();
  v505 = sub_C3874();
  v493 = 17;
  v498 = swift_allocObject();
  *(v498 + 16) = 32;
  v499 = swift_allocObject();
  *(v499 + 16) = 8;
  v21 = swift_allocObject();
  v22 = v496;
  v497 = v21;
  *(v21 + 16) = v512;
  *(v21 + 24) = v22;
  v23 = swift_allocObject();
  v24 = v497;
  v501 = v23;
  *(v23 + 16) = v513;
  *(v23 + 24) = v24;
  v503 = sub_21E8(&unk_EEFA0, &unk_C50F0);
  v500 = sub_C3C64();
  v502 = v25;

  v26 = v498;
  v27 = v502;
  *v502 = v514;
  v27[1] = v26;

  v28 = v499;
  v29 = v502;
  v502[2] = v515;
  v29[3] = v28;

  v30 = v501;
  v31 = v502;
  v502[4] = v516;
  v31[5] = v30;
  sub_4E48();

  if (os_log_type_enabled(v504, v505))
  {
    v32 = v554;
    v482 = sub_C3954();
    v481 = sub_21E8(&qword_EE828, &qword_C5100);
    v483 = sub_5DD4(0);
    v484 = sub_5DD4(1);
    v485 = &v602;
    v602 = v482;
    v486 = &v601;
    v601 = v483;
    v487 = &v600;
    v600 = v484;
    sub_5E28(2, &v602);
    sub_5E28(1, v485);
    v598 = v514;
    v599 = v498;
    sub_5E3C(&v598, v485, v486, v487);
    v488 = v32;
    if (v32)
    {

      __break(1u);
    }

    else
    {
      v598 = v515;
      v599 = v499;
      sub_5E3C(&v598, &v602, &v601, &v600);
      v479 = 0;
      v598 = v516;
      v599 = v501;
      sub_5E3C(&v598, &v602, &v601, &v600);
      v478 = 0;
      _os_log_impl(&dword_0, v504, v505, "snippetNameAfter: '%s'", v482, 0xCu);
      sub_5E88(v483);
      sub_5E88(v484);
      sub_C3934();

      v480 = v478;
    }
  }

  else
  {
    v33 = v554;

    v480 = v33;
  }

  v472 = v480;
  _objc_release(v504);
  v473 = v571[1];
  v474 = v571 + 1;
  v473(v585, v570);
  sub_C3564("SocialConversation#", 0x13uLL, 1);
  v475 = v34;
  v476 = sub_C3554();
  v477 = v35;

  sub_C21F4();
  if (sub_65E68())
  {
    sub_C2DA4();
    v36 = sub_C2DB4();
    (*(*(v36 - 8) + 56))(v568, 0, 1);
    sub_C21E4();
    v37 = v583;
    v38 = sub_BF704();
    v489(v37, v38, v570);

    v470 = sub_C3224();
    v471 = sub_C3874();
    v461 = 17;
    v463 = 7;
    v465 = swift_allocObject();
    *(v465 + 16) = 32;
    v466 = swift_allocObject();
    *(v466 + 16) = 8;
    v462 = 32;
    v39 = swift_allocObject();
    v40 = v587;
    v464 = v39;
    *(v39 + 16) = v517;
    *(v39 + 24) = v40;
    v41 = swift_allocObject();
    v42 = v464;
    v468 = v41;
    *(v41 + 16) = v518;
    *(v41 + 24) = v42;
    v467 = sub_C3C64();
    v469 = v43;

    v44 = v465;
    v45 = v469;
    *v469 = v519;
    v45[1] = v44;

    v46 = v466;
    v47 = v469;
    v469[2] = v520;
    v47[3] = v46;

    v48 = v468;
    v49 = v469;
    v469[4] = v521;
    v49[5] = v48;
    sub_4E48();

    if (os_log_type_enabled(v470, v471))
    {
      v50 = v472;
      v454 = sub_C3954();
      v453 = sub_21E8(&qword_EE828, &qword_C5100);
      v455 = sub_5DD4(0);
      v456 = sub_5DD4(1);
      v457 = &v607;
      v607 = v454;
      v458 = &v606;
      v606 = v455;
      v459 = &v605;
      v605 = v456;
      sub_5E28(2, &v607);
      sub_5E28(1, v457);
      v603 = v519;
      v604 = v465;
      sub_5E3C(&v603, v457, v458, v459);
      v460 = v50;
      if (v50)
      {

        __break(1u);
      }

      else
      {
        v603 = v520;
        v604 = v466;
        sub_5E3C(&v603, &v607, &v606, &v605);
        v451 = 0;
        v603 = v521;
        v604 = v468;
        sub_5E3C(&v603, &v607, &v606, &v605);
        v450 = 0;
        _os_log_impl(&dword_0, v470, v471, "overriding response mode: %s", v454, 0xCu);
        sub_5E88(v455);
        sub_5E88(v456);
        sub_C3934();

        v452 = v450;
      }
    }

    else
    {
      v51 = v472;

      v452 = v51;
    }

    v448 = v452;
    _objc_release(v470);
    v473(v583, v570);
    v449 = v448;
  }

  else
  {
    v449 = v472;
  }

  v52 = v580;
  v435 = v449;
  v53 = sub_BF704();
  v489(v52, v53, v570);

  v437 = 32;
  v438 = 7;
  v54 = swift_allocObject();
  v55 = v492;
  v439 = v54;
  *(v54 + 16) = v491;
  *(v54 + 24) = v55;
  v446 = sub_C3224();
  v447 = sub_C3874();
  v436 = 17;
  v441 = swift_allocObject();
  *(v441 + 16) = 32;
  v442 = swift_allocObject();
  *(v442 + 16) = 8;
  v56 = swift_allocObject();
  v57 = v439;
  v440 = v56;
  *(v56 + 16) = v522;
  *(v56 + 24) = v57;
  v58 = swift_allocObject();
  v59 = v440;
  v444 = v58;
  *(v58 + 16) = v523;
  *(v58 + 24) = v59;
  v443 = sub_C3C64();
  v445 = v60;

  v61 = v441;
  v62 = v445;
  *v445 = v524;
  v62[1] = v61;

  v63 = v442;
  v64 = v445;
  v445[2] = v525;
  v64[3] = v63;

  v65 = v444;
  v66 = v445;
  v445[4] = v526;
  v66[5] = v65;
  sub_4E48();

  if (os_log_type_enabled(v446, v447))
  {
    v67 = v435;
    v428 = sub_C3954();
    v427 = sub_21E8(&qword_EE828, &qword_C5100);
    v429 = sub_5DD4(0);
    v430 = sub_5DD4(1);
    v431 = v612;
    v612[0] = v428;
    v432 = &v611;
    v611 = v429;
    v433 = &v610;
    v610 = v430;
    sub_5E28(2, v612);
    sub_5E28(1, v431);
    v608 = v524;
    v609 = v441;
    sub_5E3C(&v608, v431, v432, v433);
    v434 = v67;
    if (v67)
    {

      __break(1u);
    }

    else
    {
      v608 = v525;
      v609 = v442;
      sub_5E3C(&v608, v612, &v611, &v610);
      v425 = 0;
      v608 = v526;
      v609 = v444;
      sub_5E3C(&v608, v612, &v611, &v610);
      v424 = 0;
      _os_log_impl(&dword_0, v446, v447, "visualParameters defines RF snippet '%s'", v428, 0xCu);
      sub_5E88(v429);
      sub_5E88(v430);
      sub_C3934();

      v426 = v424;
    }
  }

  else
  {
    v68 = v435;

    v426 = v68;
  }

  v420 = v426;
  _objc_release(v446);
  v473(v580, v570);
  v700 = sub_C3C64();
  v69 = sub_60748();
  v421 = *v69;
  v422 = v69[1];

  v423 = sub_C3574();

  if (v423)
  {
    v70 = sub_60988();
    v417 = *v70;
    v418 = v70[1];

    v419 = v676;
    v676[0] = v417;
    v676[1] = v418;
    sub_C33E4();
    sub_8224(v419);
    if (v677[3])
    {
      sub_21E8(&qword_EFA20, qword_C65A0);
      if (swift_dynamicCast())
      {
        v416 = v612[1];
      }

      else
      {
        v416 = 0;
      }

      v415 = v416;
    }

    else
    {
      sub_1FA80(v677);
      v415 = 0;
    }

    v675 = v415;
    if (v415)
    {
      v678 = v675;
    }

    else
    {
      sub_21E8(&qword_EEFF8, &unk_C5AC0);
      v678 = sub_C3C64();
      if (v675)
      {
        sub_1D7C8(&v675);
      }
    }

    v412 = v678;
    v674 = v678;

    v672 = v412;
    v413 = sub_21E8(&qword_EFA20, qword_C65A0);
    sub_6AE48();
    sub_C3824();
    for (i = v420; ; i = v233)
    {
      v410 = i;
      sub_21E8(&qword_EFB70, &qword_C6FE0);
      sub_C3B44();
      v411 = v671;
      if (!v671)
      {
        break;
      }

      v409 = v411;
      v407 = v411;
      v670 = v411;
      v71 = sub_60868();
      v405 = *v71;
      v406 = v71[1];

      v408 = v666;
      v666[0] = v405;
      v666[1] = v406;
      sub_C33E4();
      sub_8224(v408);
      if (v667[3])
      {
        if (swift_dynamicCast())
        {
          v403 = v612[2];
          v404 = v612[3];
        }

        else
        {
          v403 = 0;
          v404 = 0;
        }

        v401 = v403;
        v402 = v404;
      }

      else
      {
        sub_1FA80(v667);
        v401 = 0;
        v402 = 0;
      }

      v664 = v401;
      v665 = v402;
      if (v402)
      {
        v668 = v664;
        v669 = v665;
      }

      else
      {
        v668 = sub_C3564("", 0, 1);
        v669 = v72;
        if (v665)
        {
          sub_8224(&v664);
        }
      }

      v396 = v668;
      v397 = v669;
      v662 = v668;
      v663 = v669;
      v73 = sub_608C8();
      v398 = *v73;
      v399 = v73[1];

      v400 = v658;
      v658[0] = v398;
      v658[1] = v399;
      sub_C33E4();
      sub_8224(v400);
      if (v659[3])
      {
        v74 = swift_dynamicCast();
        if (v74)
        {
          v394 = v612[4];
          v395 = v612[5];
        }

        else
        {
          v394 = 0;
          v395 = 0;
        }

        v392 = v394;
        v393 = v395;
      }

      else
      {
        sub_1FA80(v659);
        v392 = 0;
        v393 = 0;
      }

      v656 = v392;
      v657 = v393;
      if (v393)
      {
        v660 = v656;
        v661 = v657;
      }

      else
      {
        v660 = sub_C3564("", 0, 1);
        v661 = v75;
        if (v657)
        {
          sub_8224(&v656);
        }
      }

      v387 = v660;
      v388 = v661;
      v654 = v660;
      v655 = v661;
      v76 = sub_60928();
      v389 = *v76;
      v390 = v76[1];

      v391 = v651;
      v651[0] = v389;
      v651[1] = v390;
      sub_C33E4();
      sub_8224(v391);
      if (v652[3])
      {
        sub_21E8(&qword_EFB80, &qword_C6840);
        v77 = swift_dynamicCast();
        if (v77)
        {
          v386 = v612[6];
        }

        else
        {
          v386 = 0;
        }

        v385 = v386;
      }

      else
      {
        sub_1FA80(v652);
        v385 = 0;
      }

      v650 = v385;
      if (v385)
      {
        v653 = v650;
      }

      else
      {
        sub_21E8(&qword_EF990, &qword_C6830);
        sub_C3C64();
        v653 = sub_C3374();
        if (v650)
        {
          sub_1D7C8(&v650);
        }
      }

      v381 = v653;
      v649 = v653;
      v78 = sub_61CB4();
      v382 = *v78;
      v383 = v78[1];

      v384 = v647;
      v647[0] = v382;
      v647[1] = v383;
      sub_C33E4();
      sub_8224(v384);
      if (v648[3])
      {
        v79 = swift_dynamicCast();
        if (v79)
        {
          v380 = v613 & 1;
        }

        else
        {
          v380 = 2;
        }

        v379 = v380;
      }

      else
      {
        sub_1FA80(v648);
        v379 = 2;
      }

      v646 = v379;
      if (v379 == 2)
      {
        v378 = 0;
      }

      else
      {
        v378 = v646;
      }

      v374 = v378;
      v645 = v378 & 1;
      v80 = sub_61E74();
      v375 = *v80;
      v376 = v80[1];

      v377 = v641;
      v641[0] = v375;
      v641[1] = v376;
      sub_C33E4();
      sub_8224(v377);
      if (v642[3])
      {
        if (swift_dynamicCast())
        {
          v372 = v614;
          v373 = v615;
        }

        else
        {
          v372 = 0;
          v373 = 0;
        }

        v370 = v372;
        v371 = v373;
      }

      else
      {
        sub_1FA80(v642);
        v370 = 0;
        v371 = 0;
      }

      v639 = v370;
      v640 = v371;
      if (v371)
      {
        v643 = v639;
        v644 = v640;
      }

      else
      {
        v643 = sub_C3564("", 0, 1);
        v644 = v81;
        if (v640)
        {
          sub_8224(&v639);
        }
      }

      v341 = v643;
      v342 = v644;
      v637 = v643;
      v638 = v644;
      v356 = 32;
      v357 = 7;
      v351 = swift_allocObject();
      v343 = v351 + 16;
      v636 = v351 + 16;

      v348 = sub_BF490();

      v347 = v633;
      sub_24F4(v511 + 16, v633);

      v345 = v634;
      v344 = v635;
      sub_808C(v347, v634);
      v346 = (*(v344 + 32))(v345);
      v82 = sub_35888(v396, v397, v346);
      v83 = v578;
      v349 = v82;
      v350 = v84;
      _objc_release(v346);
      sub_2560(v347);

      v85 = v350;
      v86 = v351;
      *(v351 + 16) = v349;
      *(v86 + 24) = v85;
      v87 = sub_BF704();
      v489(v83, v87, v570);

      v88 = swift_allocObject();
      v89 = v397;
      v358 = v88;
      *(v88 + 16) = v396;
      *(v88 + 24) = v89;
      v368 = sub_C3224();
      v369 = sub_C3874();
      v354 = 17;
      v360 = swift_allocObject();
      v353 = 32;
      *(v360 + 16) = 32;
      v361 = swift_allocObject();
      v355 = 8;
      *(v361 + 16) = 8;
      v90 = swift_allocObject();
      v91 = v351;
      v352 = v90;
      *(v90 + 16) = v527;
      *(v90 + 24) = v91;
      v92 = swift_allocObject();
      v93 = v352;
      v362 = v92;
      *(v92 + 16) = v528;
      *(v92 + 24) = v93;
      v363 = swift_allocObject();
      *(v363 + 16) = v353;
      v364 = swift_allocObject();
      *(v364 + 16) = v355;
      v94 = swift_allocObject();
      v95 = v358;
      v359 = v94;
      *(v94 + 16) = v529;
      *(v94 + 24) = v95;
      v96 = swift_allocObject();
      v97 = v359;
      v366 = v96;
      *(v96 + 16) = v530;
      *(v96 + 24) = v97;
      v365 = sub_C3C64();
      v367 = v98;

      v99 = v360;
      v100 = v367;
      *v367 = v531;
      v100[1] = v99;

      v101 = v361;
      v102 = v367;
      v367[2] = v532;
      v102[3] = v101;

      v103 = v362;
      v104 = v367;
      v367[4] = v533;
      v104[5] = v103;

      v105 = v363;
      v106 = v367;
      v367[6] = v534;
      v106[7] = v105;

      v107 = v364;
      v108 = v367;
      v367[8] = v535;
      v108[9] = v107;

      v109 = v366;
      v110 = v367;
      v367[10] = v536;
      v110[11] = v109;
      sub_4E48();

      if (os_log_type_enabled(v368, v369))
      {
        v111 = v410;
        v327 = sub_C3954();
        v326 = sub_21E8(&qword_EE828, &qword_C5100);
        v328 = sub_5DD4(0);
        v329 = sub_5DD4(2);
        v331 = &v620;
        v620 = v327;
        v332 = &v619;
        v619 = v328;
        v333 = &v618;
        v618 = v329;
        v330 = 2;
        sub_5E28(2, &v620);
        sub_5E28(v330, v331);
        v616 = v531;
        v617 = v360;
        sub_5E3C(&v616, v331, v332, v333);
        v334 = v111;
        v335 = v360;
        v336 = v361;
        v337 = v362;
        v338 = v363;
        v339 = v364;
        v340 = v366;
        if (v111)
        {
          v319 = v335;
          v320 = v336;
          v321 = v337;
          v322 = v338;
          v323 = v339;
          v324 = v340;
          v283 = v340;
          v282 = v339;
          v281 = v338;
          v280 = v337;
          v279 = v336;

          __break(1u);
        }

        else
        {
          v616 = v532;
          v617 = v361;
          sub_5E3C(&v616, &v620, &v619, &v618);
          v312 = 0;
          v313 = v360;
          v314 = v361;
          v315 = v362;
          v316 = v363;
          v317 = v364;
          v318 = v366;
          v616 = v533;
          v617 = v362;
          sub_5E3C(&v616, &v620, &v619, &v618);
          v305 = 0;
          v306 = v360;
          v307 = v361;
          v308 = v362;
          v309 = v363;
          v310 = v364;
          v311 = v366;
          v616 = v534;
          v617 = v363;
          sub_5E3C(&v616, &v620, &v619, &v618);
          v298 = 0;
          v299 = v360;
          v300 = v361;
          v301 = v362;
          v302 = v363;
          v303 = v364;
          v304 = v366;
          v616 = v535;
          v617 = v364;
          sub_5E3C(&v616, &v620, &v619, &v618);
          v291 = 0;
          v292 = v360;
          v293 = v361;
          v294 = v362;
          v295 = v363;
          v296 = v364;
          v297 = v366;
          v616 = v536;
          v617 = v366;
          sub_5E3C(&v616, &v620, &v619, &v618);
          v284 = 0;
          v285 = v360;
          v286 = v361;
          v287 = v362;
          v288 = v363;
          v289 = v364;
          v290 = v366;
          _os_log_impl(&dword_0, v368, v369, "dialog '%s' for button '%s'", v327, 0x16u);
          sub_5E88(v328);
          sub_5E88(v329);
          sub_C3934();

          v325 = v284;
        }
      }

      else
      {
        v112 = v410;

        v325 = v112;
      }

      v277 = v325;
      _objc_release(v368);
      v473(v578, v570);
      v278 = sub_C35B4();

      if (v278)
      {
        v276 = sub_C35B4();
      }

      else
      {
        v276 = 0;
      }

      v275 = v276;

      if (v275)
      {
        v113 = v576;
        v261 = sub_C3564(" (No Action)", 0xCuLL, 1);
        v263 = v114;
        v262 = &v626;
        swift_beginAccess();
        sub_C3584();
        swift_endAccess();

        v115 = sub_BF704();
        v489(v113, v115, v570);
        v273 = sub_C3224();
        v274 = sub_C3884();
        v264 = 17;
        v266 = 7;
        v268 = swift_allocObject();
        *(v268 + 16) = 32;
        v269 = swift_allocObject();
        *(v269 + 16) = 8;
        v265 = 32;
        v116 = swift_allocObject();
        v267 = v116;
        *(v116 + 16) = v537;
        *(v116 + 24) = 0;
        v117 = swift_allocObject();
        v118 = v267;
        v271 = v117;
        *(v117 + 16) = v538;
        *(v117 + 24) = v118;
        v270 = sub_C3C64();
        v272 = v119;

        v120 = v268;
        v121 = v272;
        *v272 = v539;
        v121[1] = v120;

        v122 = v269;
        v123 = v272;
        v272[2] = v540;
        v123[3] = v122;

        v124 = v271;
        v125 = v272;
        v272[4] = v541;
        v125[5] = v124;
        sub_4E48();

        if (os_log_type_enabled(v273, v274))
        {
          v126 = v277;
          v251 = sub_C3954();
          v250 = sub_21E8(&qword_EE828, &qword_C5100);
          v252 = sub_5DD4(0);
          v253 = sub_5DD4(1);
          v254 = &v625;
          v625 = v251;
          v255 = &v624;
          v624 = v252;
          v256 = &v623;
          v623 = v253;
          sub_5E28(2, &v625);
          sub_5E28(1, v254);
          v621 = v539;
          v622 = v268;
          sub_5E3C(&v621, v254, v255, v256);
          v257 = v126;
          v258 = v268;
          v259 = v269;
          v260 = v271;
          if (v126)
          {
            v246 = v258;
            v247 = v259;
            v248 = v260;
            v237 = v260;
            v236 = v259;

            __break(1u);
          }

          else
          {
            v621 = v540;
            v622 = v269;
            sub_5E3C(&v621, &v625, &v624, &v623);
            v242 = 0;
            v243 = v268;
            v244 = v269;
            v245 = v271;
            v621 = v541;
            v622 = v271;
            sub_5E3C(&v621, &v625, &v624, &v623);
            v238 = 0;
            v239 = v268;
            v240 = v269;
            v241 = v271;
            _os_log_impl(&dword_0, v273, v274, "visualParameters for %s has a button with no direct invocation specified.", v251, 0xCu);
            sub_5E88(v252);
            sub_5E88(v253);
            sub_C3934();

            v249 = v238;
          }
        }

        else
        {
          v127 = v277;

          v249 = v127;
        }

        v234 = v249;
        _objc_release(v273);
        v473(v576, v570);
        v235 = v234;
      }

      else
      {
        v235 = v277;
      }

      v233 = v235;
      v631 = sub_C3564("", 0, 1);
      v632 = v128;
      if ((sub_C35B4() & 1) == 0)
      {

        v230 = sub_BF490();

        v229 = v627;
        sub_24F4(v511 + 16, v627);

        v227 = v628;
        v226 = v629;
        sub_808C(v229, v628);
        v228 = (*(v226 + 32))(v227);
        v231 = sub_35888(v341, v342, v228);
        v232 = v129;
        _objc_release(v228);
        sub_2560(v229);

        v631 = v231;
        v632 = v232;
      }

      v220 = &v630;
      swift_beginAccess();
      v221 = *(v351 + 16);
      v222 = *(v351 + 24);

      swift_endAccess();
      v225 = &v631;
      v223 = v631;
      v224 = v632;

      sub_C2FF4();
      (*(v561 + 16))(v564, v566, v560);
      sub_21E8(&qword_EFB78, &qword_C6838);
      sub_C3724();
      (*(v561 + 8))(v566, v560);
      sub_8224(v225);
    }

    sub_1D7C8(v673);

    v219 = v410;
  }

  else
  {
    v219 = v420;
  }

  v215 = v219;
  v130 = sub_607A8();
  v216 = *v130;
  v217 = v130[1];

  v218 = v696;
  v696[0] = v216;
  v696[1] = v217;
  sub_C33E4();
  sub_8224(v218);
  if (v697[3])
  {
    if (swift_dynamicCast())
    {
      v213 = v679;
      v214 = v680;
    }

    else
    {
      v213 = 0;
      v214 = 0;
    }

    v211 = v213;
    v212 = v214;
  }

  else
  {
    sub_1FA80(v697);
    v211 = 0;
    v212 = 0;
  }

  v694 = v211;
  v695 = v212;
  if (v212)
  {
    v698 = v694;
    v699 = v695;
  }

  else
  {
    v698 = sub_C3564("", 0, 1);
    v699 = v131;
    if (v695)
    {
      sub_8224(&v694);
    }
  }

  v185 = v699;
  v692 = v698;
  v693 = v699;
  v132 = sub_C3514();
  v190 = v691;
  v691[0] = v132;
  v691[1] = v133;
  v134 = sub_60808();
  v186 = *v134;
  v187 = v134[1];

  v189 = v690;
  v690[0] = v186;
  v690[1] = v187;
  v188 = sub_2DCA0();
  sub_6AAE8();
  v135 = sub_C3434();
  v136 = v574;
  v192 = v135;
  sub_8224(v189);
  sub_8224(v190);
  v191 = 1;
  v689 = v192 & 1;
  v137 = sub_BF704();
  v489(v136, v137, v570);
  v194 = 17;
  v198 = 7;
  v195 = swift_allocObject();
  *(v195 + 16) = v192 & v191;
  v209 = sub_C3224();
  v210 = sub_C3874();
  v201 = swift_allocObject();
  *(v201 + 16) = 32;
  v202 = swift_allocObject();
  *(v202 + 16) = 8;
  v197 = 32;
  v138 = swift_allocObject();
  v193 = v138;
  *(v138 + 16) = v542;
  *(v138 + 24) = 0;
  v139 = swift_allocObject();
  v140 = v193;
  v203 = v139;
  *(v139 + 16) = v543;
  *(v139 + 24) = v140;
  v204 = swift_allocObject();
  *(v204 + 16) = 0;
  v205 = swift_allocObject();
  *(v205 + 16) = 4;
  v141 = swift_allocObject();
  v142 = v195;
  v196 = v141;
  *(v141 + 16) = v544;
  *(v141 + 24) = v142;
  v143 = swift_allocObject();
  v144 = v196;
  v199 = v143;
  *(v143 + 16) = v545;
  *(v143 + 24) = v144;
  v145 = swift_allocObject();
  v146 = v199;
  v200 = v145;
  *(v145 + 16) = v546;
  *(v145 + 24) = v146;
  v147 = swift_allocObject();
  v148 = v200;
  v207 = v147;
  *(v147 + 16) = v547;
  *(v147 + 24) = v148;
  v206 = sub_C3C64();
  v208 = v149;

  v150 = v201;
  v151 = v208;
  *v208 = v548;
  v151[1] = v150;

  v152 = v202;
  v153 = v208;
  v208[2] = v549;
  v153[3] = v152;

  v154 = v203;
  v155 = v208;
  v208[4] = v550;
  v155[5] = v154;

  v156 = v204;
  v157 = v208;
  v208[6] = v551;
  v157[7] = v156;

  v158 = v205;
  v159 = v208;
  v208[8] = v552;
  v159[9] = v158;

  v160 = v207;
  v161 = v208;
  v208[10] = v553;
  v161[11] = v160;
  sub_4E48();

  if (os_log_type_enabled(v209, v210))
  {
    v162 = v215;
    v177 = sub_C3954();
    v176 = sub_21E8(&qword_EE828, &qword_C5100);
    v178 = sub_5DD4(0);
    v179 = sub_5DD4(1);
    v181 = &v685;
    v685 = v177;
    v182 = &v684;
    v684 = v178;
    v183 = &v683;
    v683 = v179;
    v180 = 2;
    sub_5E28(2, &v685);
    sub_5E28(v180, v181);
    v681 = v548;
    v682 = v201;
    sub_5E3C(&v681, v181, v182, v183);
    v184 = v162;
    if (v162)
    {

      __break(1u);
    }

    else
    {
      v681 = v549;
      v682 = v202;
      sub_5E3C(&v681, &v685, &v684, &v683);
      v175 = 0;
      v681 = v550;
      v682 = v203;
      sub_5E3C(&v681, &v685, &v684, &v683);
      v174 = 0;
      v681 = v551;
      v682 = v204;
      sub_5E3C(&v681, &v685, &v684, &v683);
      v173 = 0;
      v681 = v552;
      v682 = v205;
      sub_5E3C(&v681, &v685, &v684, &v683);
      v172 = 0;
      v681 = v553;
      v682 = v207;
      sub_5E3C(&v681, &v685, &v684, &v683);
      _os_log_impl(&dword_0, v209, v210, "visualParameters conversationSpace for %s value is %{BOOL}d", v177, 0x12u);
      sub_5E88(v178);
      sub_5E88(v179);
      sub_C3934();
    }
  }

  else
  {
  }

  _objc_release(v209);
  v473(v574, v570);
  v171 = &v700;
  v164[1] = v700;

  v164[3] = 0;
  v164[2] = sub_C3564("", 0, 1);
  sub_C3014();
  v165 = sub_C3034();
  v167 = v688;
  v688[3] = v165;
  v688[4] = sub_6ADC8();
  v166 = sub_1CC64(v167);
  (*(v556 + 16))(v166, v559, v555);
  (*(*(v165 - 8) + 104))(v166, enum case for SiriSocialConversationDataModels.buttonStackView(_:));
  v168 = &v687;
  v169 = 0;
  swift_beginAccess();
  sub_C2204();
  swift_endAccess();
  v170 = &v686;
  swift_beginAccess();
  (*(*(v586 - 8) + 16))(v510, v589);
  swift_endAccess();
  (*(v556 + 8))(v559, v555);

  sub_1D7C8(v171);
}

uint64_t sub_65CE4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_65D24(uint64_t a1)
{
  v2[1] = a1;
  v3 = sub_21E8(&qword_EEFD0, &unk_C6820);
  v2[0] = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v2[3] = v2 - v2[0];
  sub_C2224();
  swift_projectBox();
  v2[2] = &v4;
  swift_beginAccess();
  sub_C21D4();
  swift_endAccess();
  return sub_C34F4();
}

uint64_t sub_65DFC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);

  swift_endAccess();
  return v3;
}

uint64_t sub_65E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[52] = v7;
  v8[51] = a7;
  v8[50] = a6;
  v8[49] = a5;
  v8[48] = a4;
  v8[47] = a1;
  v8[53] = *v7;
  v8[35] = v8;
  v8[31] = 0;
  v8[32] = 0;
  v8[33] = 0;
  v8[34] = 0;
  v8[37] = 0;
  v8[38] = 0;
  v8[39] = 0;
  v8[40] = 0;
  v8[41] = 0;
  v9 = sub_C2224();
  v8[54] = v9;
  v15 = *(v9 - 8);
  v8[55] = v15;
  v10 = *(v15 + 64) + 15;
  v8[56] = swift_task_alloc();
  v11 = sub_C3234();
  v8[57] = v11;
  v16 = *(v11 - 8);
  v8[58] = v16;
  v12 = *(v16 + 64) + 15;
  v8[59] = swift_task_alloc();
  v8[31] = a2;
  v8[32] = a3;
  v8[33] = a4;
  v8[34] = a5;
  v8[37] = a6;
  v8[38] = a7;
  v8[39] = v7;
  v13 = v8[35];

  return _swift_task_switch(sub_660C0, 0);
}

uint64_t sub_660C0()
{
  v18 = v0[53];
  v1 = v0[52];
  v2 = v0[50];
  v3 = v0[49];
  v4 = v0[48];
  v0[35] = v0;
  sub_67D40(v4, v3, v2, v0 + 10);
  v19 = v0[10];
  v20 = v0[11];

  sub_66DE0(v19, v20, v0 + 2);
  v10 = v17[52];

  v17[60] = sub_BF490();

  v15 = v17[12];
  v17[61] = v15;

  sub_24F4(v10 + 16, (v17 + 16));

  v9 = v17[19];
  v8 = v17[20];
  sub_808C(v17 + 16, v9);
  v16 = (*(v8 + 32))(v9);
  v17[62] = v16;

  sub_24F4(v10 + 16, (v17 + 21));

  v12 = v17[24];
  v11 = v17[25];
  sub_808C(v17 + 21, v12);
  (*(v11 + 8))(v12);
  v13 = sub_4800();
  v14 = v5;
  v17[63] = v5;
  v6 = swift_task_alloc();
  v17[64] = v6;
  *v6 = v17[35];
  v6[1] = sub_6644C;

  return sub_31E58((v17 + 2), v13, v14, v15, v16, (v17 + 26), 1);
}
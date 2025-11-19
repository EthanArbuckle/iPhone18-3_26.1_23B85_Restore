uint64_t sub_6C900()
{
  swift_errorRetain();
  sub_22FC(&unk_B59F0, &unk_9C128);
  return sub_99B50();
}

uint64_t sub_6C970(void *a1, int a2, uint64_t a3)
{
  v75 = a1;
  v76 = a2;
  v68 = a3;
  v77 = sub_7D48C;
  v79 = sub_7D574;
  v82 = sub_7D4C0;
  v84 = sub_7D674;
  v86 = sub_7D6C0;
  v90 = sub_7D70C;
  v92 = sub_7D4F8;
  v94 = sub_7D52C;
  v96 = sub_7D5C0;
  v98 = sub_7D5F8;
  v100 = sub_7D62C;
  v103 = sub_7D758;
  v63 = &protocol witness table for MainActor;
  v64 = &unk_9BFB0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v65 = 0;
  v3 = sub_22FC(&unk_B5960, &qword_9BC48);
  v66 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v67 = &v47 - v66;
  v74 = sub_993B0();
  v72 = *(v74 - 8);
  v73 = v74 - 8;
  v70 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v75);
  v5 = &v47 - v70;
  v71 = &v47 - v70;
  v117 = v4;
  v116 = v6 & 1;
  v115 = v7;
  v114 = v8;
  v9 = sub_81788();
  (*(v72 + 16))(v5, v9, v74);
  _objc_retain(v75);
  v88 = 7;
  v78 = swift_allocObject();
  *(v78 + 16) = v75;
  v81 = 17;
  v83 = swift_allocObject();
  *(v83 + 16) = v76;
  v107 = sub_99390();
  v108 = sub_99D60();
  v93 = swift_allocObject();
  *(v93 + 16) = 32;
  v95 = swift_allocObject();
  *(v95 + 16) = 8;
  v87 = 32;
  v10 = swift_allocObject();
  v11 = v78;
  v80 = v10;
  *(v10 + 16) = v77;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v80;
  v97 = v12;
  *(v12 + 16) = v79;
  *(v12 + 24) = v13;
  v99 = swift_allocObject();
  *(v99 + 16) = 0;
  v101 = swift_allocObject();
  *(v101 + 16) = 4;
  v14 = swift_allocObject();
  v15 = v83;
  v85 = v14;
  *(v14 + 16) = v82;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v85;
  v89 = v16;
  *(v16 + 16) = v84;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v89;
  v91 = v18;
  *(v18 + 16) = v86;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v91;
  v104 = v20;
  *(v20 + 16) = v90;
  *(v20 + 24) = v21;
  v106 = sub_22FC(&unk_B5940, &unk_9A9A0);
  v102 = sub_99F80();
  v105 = v22;

  v23 = v93;
  v24 = v105;
  *v105 = v92;
  v24[1] = v23;

  v25 = v95;
  v26 = v105;
  v105[2] = v94;
  v26[3] = v25;

  v27 = v97;
  v28 = v105;
  v105[4] = v96;
  v28[5] = v27;

  v29 = v99;
  v30 = v105;
  v105[6] = v98;
  v30[7] = v29;

  v31 = v101;
  v32 = v105;
  v105[8] = v100;
  v32[9] = v31;

  v33 = v104;
  v34 = v105;
  v105[10] = v103;
  v34[11] = v33;
  sub_29D0();

  if (os_log_type_enabled(v107, v108))
  {
    v35 = v65;
    v55 = sub_99E40();
    v54 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v56 = sub_F444(0);
    v57 = sub_F444(1);
    v59 = &v113;
    v113 = v55;
    v60 = &v112;
    v112 = v56;
    v61 = &v111;
    v111 = v57;
    v58 = 2;
    sub_F498(2, &v113);
    sub_F498(v58, v59);
    v109 = v92;
    v110 = v93;
    sub_F4AC(&v109, v59, v60, v61);
    v62 = v35;
    if (v35)
    {

      __break(1u);
    }

    else
    {
      v109 = v94;
      v110 = v95;
      sub_F4AC(&v109, &v113, &v112, &v111);
      v53 = 0;
      v109 = v96;
      v110 = v97;
      sub_F4AC(&v109, &v113, &v112, &v111);
      v52 = 0;
      v109 = v98;
      v110 = v99;
      sub_F4AC(&v109, &v113, &v112, &v111);
      v51 = 0;
      v109 = v100;
      v110 = v101;
      sub_F4AC(&v109, &v113, &v112, &v111);
      v50 = 0;
      v109 = v103;
      v110 = v104;
      sub_F4AC(&v109, &v113, &v112, &v111);
      _os_log_impl(&dword_0, v107, v108, "handleInstallFinished called for update: %s, success: %{BOOL}d", v55, 0x12u);
      sub_F5B0(v56);
      sub_F5B0(v57);
      sub_99E20();
    }
  }

  else
  {
  }

  _objc_release(v107);
  (*(v72 + 8))(v71, v74);
  v48 = 0;
  v36 = sub_99D00();
  (*(*(v36 - 8) + 56))(v67, 1);
  _objc_retain(v75);
  _objc_retain(v69);
  swift_errorRetain();
  sub_99CD0();
  v49 = sub_99CC0();
  v37 = swift_allocObject();
  v38 = v63;
  v39 = v75;
  v40 = v69;
  v41 = v76;
  v42 = v68;
  v43 = v48;
  v44 = v67;
  v45 = v64;
  *(v37 + 16) = v49;
  *(v37 + 24) = v38;
  *(v37 + 32) = v39;
  *(v37 + 40) = v40;
  *(v37 + 48) = v41;
  *(v37 + 56) = v42;
  sub_2A6F4(v43, v43, v44, v45, v37, &type metadata for () + 8);
}

uint64_t sub_6D56C(void *a1)
{
  v50 = a1;
  v52 = sub_7DAA4;
  v56 = sub_7DB54;
  v58 = sub_7DAD8;
  v60 = sub_7DB0C;
  v63 = sub_7DBA0;
  v39 = &protocol witness table for MainActor;
  v40 = &unk_9BFC0;
  v75 = 0;
  v74 = 0;
  v41 = 0;
  v1 = sub_22FC(&unk_B5960, &qword_9BC48);
  v42 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v43 = &v27 - v42;
  v49 = sub_993B0();
  v47 = *(v49 - 8);
  v48 = v49 - 8;
  v45 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v50);
  v3 = &v27 - v45;
  v46 = &v27 - v45;
  v75 = v2;
  v74 = v4;
  v5 = sub_81788();
  (*(v47 + 16))(v3, v5, v49);
  _objc_retain(v50);
  v54 = 7;
  v55 = swift_allocObject();
  *(v55 + 16) = v50;
  v67 = sub_99390();
  v68 = sub_99D60();
  v51 = 17;
  v59 = swift_allocObject();
  *(v59 + 16) = 32;
  v61 = swift_allocObject();
  *(v61 + 16) = 8;
  v53 = 32;
  v6 = swift_allocObject();
  v7 = v55;
  v57 = v6;
  *(v6 + 16) = v52;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v57;
  v64 = v8;
  *(v8 + 16) = v56;
  *(v8 + 24) = v9;
  v66 = sub_22FC(&unk_B5940, &unk_9A9A0);
  v62 = sub_99F80();
  v65 = v10;

  v11 = v59;
  v12 = v65;
  *v65 = v58;
  v12[1] = v11;

  v13 = v61;
  v14 = v65;
  v65[2] = v60;
  v14[3] = v13;

  v15 = v64;
  v16 = v65;
  v65[4] = v63;
  v16[5] = v15;
  sub_29D0();

  if (os_log_type_enabled(v67, v68))
  {
    v17 = v41;
    v32 = sub_99E40();
    v31 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v33 = sub_F444(0);
    v34 = sub_F444(1);
    v35 = &v73;
    v73 = v32;
    v36 = &v72;
    v72 = v33;
    v37 = &v71;
    v71 = v34;
    sub_F498(2, &v73);
    sub_F498(1, v35);
    v69 = v58;
    v70 = v59;
    sub_F4AC(&v69, v35, v36, v37);
    v38 = v17;
    if (v17)
    {

      __break(1u);
    }

    else
    {
      v69 = v60;
      v70 = v61;
      sub_F4AC(&v69, &v73, &v72, &v71);
      v30 = 0;
      v69 = v63;
      v70 = v64;
      sub_F4AC(&v69, &v73, &v72, &v71);
      _os_log_impl(&dword_0, v67, v68, "installStarted called for update: %s", v32, 0xCu);
      sub_F5B0(v33);
      sub_F5B0(v34);
      sub_99E20();
    }
  }

  else
  {
  }

  _objc_release(v67);
  (*(v47 + 8))(v46, v49);
  v28 = 0;
  v18 = sub_99D00();
  (*(*(v18 - 8) + 56))(v43, 1);
  _objc_retain(v50);
  _objc_retain(v44);
  sub_99CD0();
  v29 = sub_99CC0();
  v19 = swift_allocObject();
  v20 = v39;
  v21 = v50;
  v22 = v44;
  v23 = v28;
  v24 = v43;
  v25 = v40;
  v19[2] = v29;
  v19[3] = v20;
  v19[4] = v21;
  v19[5] = v22;
  sub_2A6F4(v23, v23, v24, v25, v19, &type metadata for () + 8);
}

uint64_t sub_6DCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v4[7] = v4;
  v4[8] = 0;
  v4[9] = 0;
  v4[10] = 0;
  v4[11] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v5 = *(*(sub_22FC(&qword_B4B58, &qword_9B1A0) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[8] = a4 + 16;
  v6 = v4[7];

  return _swift_task_switch(sub_6DDD8, 0);
}

uint64_t sub_6DDD8()
{
  v7 = v0[12];
  v0[7] = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[14] = Strong;
  swift_endAccess();
  if (Strong)
  {
    v6[9] = Strong;
    v1 = swift_task_alloc();
    v6[15] = v1;
    *v1 = v6[7];
    v1[1] = sub_6DF54;

    return sub_6E6E0();
  }

  else
  {
    v3 = v6[13];

    v4 = *(v6[7] + 8);
    v5 = v6[7];

    return v4();
  }
}

uint64_t sub_6DF54(uint64_t a1)
{
  v6 = *v1;
  v3 = *(*v1 + 120);
  *(v6 + 56) = *v1;
  *(v6 + 128) = a1;

  v4 = *(v6 + 56);

  return _swift_task_switch(sub_6E070, 0);
}

uint64_t sub_6E070()
{
  v1 = v0[16];
  v18 = v0[14];
  v2 = v0[13];
  v0[7] = v0;
  v0[10] = v1;
  sub_6EE20();
  v19 = sub_5E360();
  v0[17] = v19;
  v0[11] = v19;
  _objc_retain(v19);
  if (v19)
  {
    v16 = [v19 readmeSummary];
    if (v16)
    {
      v10 = sub_991E0();
      v11 = v3;
      _objc_release(v16);
      v12 = v10;
      v13 = v11;
    }

    else
    {
      v12 = 0;
      v13 = 0xF000000000000000;
    }

    _objc_release(v19);
    v14 = v12;
    v15 = v13;
  }

  else
  {
    v14 = 0;
    v15 = 0xF000000000000000;
  }

  v17[19] = v15;
  v17[18] = v14;
  v7 = v17[13];
  v6 = v17[14];
  v17[5] = v14;
  v17[6] = v15;
  sub_99CD0();
  _objc_retain(v6);
  sub_4C180(v14, v15);
  v8 = swift_task_alloc();
  v17[20] = v8;
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = v14;
  v8[5] = v15;
  sub_2A4D4();
  v4 = swift_task_alloc();
  v17[21] = v4;
  *v4 = v17[7];
  v4[1] = sub_6E3B0;

  return sub_2A4E8(v9, &type metadata for () + 8, sub_7F6B0, v8);
}

uint64_t sub_6E3B0()
{
  v2 = *v1;
  v3 = (*v1)[21];
  v2[7] = *v1;
  v2 += 7;
  v12 = v2 - 5;
  v13 = v2;

  if (v0)
  {
    v7 = *v13;
    v6 = sub_6E650;
  }

  else
  {
    v4 = v12[18];
    v11 = v12[17];
    v10 = v12[16];
    v9 = v12[12];

    sub_4C264(v10, v11);
    v5 = *v13;
    v6 = sub_6E550;
  }

  return _swift_task_switch(v6, 0);
}

uint64_t sub_6E550()
{
  v1 = v0[19];
  v2 = v0[18];
  v7 = v0[17];
  v9 = v0[16];
  v10 = v0[14];
  v8 = v0[13];
  v0[7] = v0;
  sub_4C264(v2, v1);
  _objc_release(v7);
  sub_4154(v8);

  _objc_release(v10);
  v3 = v0[13];

  v4 = *(v0[7] + 8);
  v5 = v0[7];

  return v4();
}

uint64_t sub_6E650()
{
  v1 = v0[20];
  v5 = v0[19];
  v4 = v0[18];
  v3 = v0[14];
  v0[7] = v0;

  _objc_release(v3);
  return sub_4C264(v4, v5);
}

uint64_t sub_6E6E0()
{
  v1[9] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v2 = sub_993B0();
  v1[10] = v2;
  v6 = *(v2 - 8);
  v1[11] = v6;
  v3 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[3] = v0;
  v4 = v1[2];

  return _swift_task_switch(sub_6E7D4, 0);
}

uint64_t sub_6E7D4()
{
  v1 = v0[12];
  v19 = v0[11];
  v20 = v0[10];
  v0[2] = v0;
  v2 = sub_81788();
  (*(v19 + 16))(v1, v2, v20);
  v22 = sub_99390();
  v21 = sub_99D60();
  sub_22FC(&unk_B5940, &unk_9A9A0);
  v23 = sub_99F80();
  if (os_log_type_enabled(v22, v21))
  {
    buf = sub_99E40();
    sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v15 = sub_F444(0);
    v16 = sub_F444(0);
    *(v18 + 40) = buf;
    *(v18 + 48) = v15;
    *(v18 + 56) = v16;
    sub_F498(0, (v18 + 40));
    sub_F498(0, (v18 + 40));
    *(v18 + 64) = v23;
    v17 = swift_task_alloc();
    v17[2] = v18 + 40;
    v17[3] = v18 + 48;
    v17[4] = v18 + 56;
    sub_22FC(&unk_B5950, &qword_9A9B0);
    sub_F528();
    sub_99C20();

    _os_log_impl(&dword_0, v22, v21, "getInstallHistoryEvents called", buf, 2u);
    sub_F5B0(v15);
    sub_F5B0(v16);
    sub_99E20();
  }

  v8 = *(v18 + 96);
  v9 = *(v18 + 80);
  v10 = *(v18 + 72);
  v7 = *(v18 + 88);
  _objc_release(v22);
  (*(v7 + 8))(v8, v9);
  v11 = sub_99B90("getInstallHistoryEvents()", 0x19uLL, 1);
  v12 = v3;
  *(v18 + 104) = v3;
  _objc_retain(v10);
  v13 = swift_task_alloc();
  *(v18 + 112) = v13;
  *(v13 + 16) = v10;
  v4 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  *(v18 + 120) = v5;
  sub_22FC(&qword_B57E0, &qword_9BFD0);
  *v5 = *(v18 + 16);
  v5[1] = sub_6EC10;

  return withCheckedContinuation<A>(isolation:function:_:)(v18 + 32, 0, 0, v11, v12, sub_7DE18, v13);
}

uint64_t sub_6EC10()
{
  v7 = *v0;
  v1 = *(*v0 + 120);
  v4 = *(*v0 + 112);
  v6 = *(*v0 + 104);
  v5 = *(*v0 + 72);
  *(v7 + 16) = *v0;

  v2 = *(v7 + 16);

  return _swift_task_switch(sub_6ED88, 0);
}

uint64_t sub_6ED88()
{
  v1 = v0[12];
  v0[2] = v0;
  v5 = v0[4];

  v2 = *(v0[2] + 8);
  v3 = v0[2];

  return v2(v5);
}

uint64_t sub_6EE20()
{
  sub_22FC(&qword_B57E0, &qword_9BFD0);
  sub_7DE50();
  return sub_99C10();
}

uint64_t sub_6EEC8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13 = a1;
  v14 = a2;
  v17 = a3;
  v18 = a4;
  v24 = 0;
  v23 = 0;
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v15 = (*(*(sub_22FC(&qword_B4B58, &qword_9B1A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = (&v8 - v15);
  v24 = a1;
  v23 = __chkstk_darwin(v14);
  v21 = v5;
  v22 = v6;
  sub_31A0(v23, (&v8 - v15));
  sub_4B40C(v16);
  result = sub_4C180(v17, v18);
  if ((v18 & 0xF000000000000000) != 0xF000000000000000)
  {
    v11 = v17;
    v12 = v18;
    v10 = v18;
    v9 = v17;
    v19 = v17;
    v20 = v18;
    sub_1A538(v17, v18);
    sub_4C494(v9, v10);
    return sub_1A6B0(v9, v10);
  }

  return result;
}

uint64_t sub_6F02C()
{
  v4 = v0[6];
  v0[2] = v0;
  v0[7] = sub_99CC0();
  v1 = sub_99CA0();
  v2 = v0[2];

  return _swift_task_switch(sub_6F0C4, v1);
}

uint64_t sub_6F0C4()
{
  v1 = v0[7];
  v2 = v0[5];
  v8 = v0[4];
  v7 = v0[3];
  v0[2] = v0;

  v8(v3);
  v4 = *(v0[2] + 8);
  v5 = v0[2];

  return v4();
}

uint64_t sub_6F1F4(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a1;
  v46 = a2;
  v54 = a3;
  v55 = a4;
  v56 = a5;
  v47 = a6;
  v48 = "Fatal error";
  v49 = "Unexpectedly found nil while unwrapping an Optional value";
  v50 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v51 = &unk_9C138;
  v52 = 0;
  v65 = a6;
  v53 = (*(*(sub_22FC(&unk_B5960, &qword_9BC48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v56);
  v57 = &v16 - v53;

  v63 = v55;
  v64 = v56;
  sub_3D538(v54, v57);
  v58 = sub_99D00();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  if ((*(v59 + 48))(v57, 1) == 1)
  {
    sub_3D660(v57);
    v44 = 0;
  }

  else
  {
    v43 = sub_99CF0();
    (*(v59 + 8))(v57, v58);
    v44 = v43;
  }

  v40 = v44 | 0x1000;
  v42 = *(v56 + 16);
  v41 = *(v56 + 24);
  swift_unknownObjectRetain();

  if (v42)
  {
    v38 = v42;
    v39 = v41;
    v32 = v41;
    v33 = v42;
    swift_getObjectType();
    v34 = sub_99CA0();
    v35 = v6;
    swift_unknownObjectRelease();
    v36 = v34;
    v37 = v35;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v30 = v37;
  v31 = v36;
  if (v46)
  {
    v28 = v45;
    v29 = v46;
    v7 = v52;
    v26 = sub_99B70();
    v8 = *(v26 + 16);
    sub_772C0(v26 + 32, &v63, v47, &v61);
    if (v7)
    {
      __break(1u);
    }

    v25 = v61;

    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  v24 = v27;
  if (v27)
  {
    v18 = v24;
    v19 = v24;
  }

  else
  {

    v20 = v63;
    v21 = v64;

    v9 = swift_allocObject();
    v10 = v20;
    v11 = v21;
    v12 = v31;
    v13 = v30;
    v22 = v9;
    v9[2] = v47;
    v9[3] = v10;
    v9[4] = v11;
    v23 = 0;
    if (v12 != 0 || v13 != 0)
    {
      v62[0] = 0;
      v62[1] = 0;
      v62[2] = v31;
      v62[3] = v30;
      v23 = v62;
    }

    v19 = swift_task_create();
  }

  sub_77480();
  v17 = v14;

  return v17;
}

uint64_t sub_6F784()
{
  v1[65] = v0;
  v1[41] = v1;
  v1[42] = 0;
  v1[43] = 0;
  v1[44] = 0;
  v1[45] = 0;
  v1[47] = 0;
  v1[48] = 0;
  v1[39] = 0;
  v1[40] = 0;
  v2 = sub_993B0();
  v1[66] = v2;
  v6 = *(v2 - 8);
  v1[67] = v6;
  v7 = *(v6 + 64);
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[42] = v0;
  sub_99CD0();
  v1[73] = sub_99CC0();
  v8 = sub_99CA0();
  v1[74] = v8;
  v1[75] = v3;
  v4 = v1[41];

  return _swift_task_switch(sub_6F928, v8);
}

uint64_t sub_6F928()
{
  v1 = v0[65];
  v0[41] = v0;
  v31 = (v1 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager_viewControllerForPresentation);
  swift_beginAccess();
  v32 = *v31;
  v0[76] = *v31;
  _objc_retain(v32);
  swift_endAccess();
  if (v32)
  {
    v23 = *(v30 + 576);
    v26 = *(v30 + 528);
    v25 = *(v30 + 536);
    *(v30 + 344) = v32;
    sub_7DED8();
    v22 = sub_71F04();
    *(v30 + 616) = v22;
    *(v30 + 352) = v22;
    sub_7DF3C();
    v24 = sub_71F34();
    *(v30 + 624) = v24;
    *(v30 + 360) = v24;
    [v24 setDismissUIAfterCompletion:0];
    v2 = sub_81788();
    v3 = *(v25 + 16);
    *(v30 + 632) = v3;
    *(v30 + 640) = (v25 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v3(v23, v2, v26);
    v28 = sub_99390();
    v27 = sub_99D60();
    *(v30 + 648) = sub_22FC(&unk_B5940, &unk_9A9A0);
    v29 = sub_99F80();
    if (os_log_type_enabled(v28, v27))
    {
      buf = sub_99E40();
      sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v19 = sub_F444(0);
      v20 = sub_F444(0);
      *(v30 + 488) = buf;
      *(v30 + 496) = v19;
      *(v30 + 504) = v20;
      sub_F498(0, (v30 + 488));
      sub_F498(0, (v30 + 488));
      *(v30 + 512) = v29;
      v21 = swift_task_alloc();
      v21[2] = v30 + 488;
      v21[3] = v30 + 496;
      v21[4] = v30 + 504;
      sub_22FC(&unk_B5950, &qword_9A9B0);
      sub_F528();
      sub_99C20();

      _os_log_impl(&dword_0, v28, v27, "Starting passcode verification service...", buf, 2u);
      sub_F5B0(v19);
      sub_F5B0(v20);
      sub_99E20();
    }

    *(v30 + 656) = 0;
    v15 = *(v30 + 576);
    v16 = *(v30 + 528);
    v14 = *(v30 + 536);
    _objc_release(v28);
    v4 = *(v14 + 8);
    *(v30 + 664) = v4;
    *(v30 + 672) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v4(v15, v16);
    *(v30 + 16) = *(v30 + 328);
    *(v30 + 56) = v30 + 368;
    *(v30 + 24) = sub_6FFF0;
    v17 = swift_continuation_init();
    *(v30 + 200) = sub_22FC(&qword_B5800, &qword_9BFD8);
    *(v30 + 176) = v17;
    *(v30 + 144) = _NSConcreteStackBlock;
    *(v30 + 152) = 1107296256;
    *(v30 + 156) = 0;
    *(v30 + 160) = sub_71F64;
    *(v30 + 168) = &unk_AF100;
    [v22 startInParentVC:v32 options:v24 completion:?];

    return _swift_continuation_await(v30 + 16);
  }

  else
  {
    sub_99ED0();
    v5 = *(v30 + 584);
    v9 = *(v30 + 576);
    v10 = *(v30 + 568);
    v11 = *(v30 + 560);
    v12 = *(v30 + 552);
    v13 = *(v30 + 544);

    v6 = *(*(v30 + 328) + 8);
    v7 = *(v30 + 328);

    return v6(0, 0xF000000000000000);
  }
}

uint64_t sub_6FFF0()
{
  v11 = *v0;
  v12 = *v0;
  v9 = *v0 + 16;
  v10 = (v12 + 328);
  *(v12 + 328) = *v0;
  v1 = *(v11 + 48);
  *(v12 + 680) = v1;
  if (v1)
  {
    v6 = *v10;
    v7 = *(v9 + 584);
    v4 = *(v9 + 576);
    v5 = sub_71048;
  }

  else
  {
    v2 = *v10;
    v3 = *(v9 + 584);
    v4 = *(v9 + 576);
    v5 = sub_70168;
  }

  return _swift_task_switch(v5, v4);
}

uint64_t sub_70168()
{
  v20 = v0[81];
  v18 = v0[80];
  v19 = v0[79];
  v1 = v0[71];
  v17 = v0[66];
  v0[41] = v0;
  v16 = v0[46];
  v0[86] = v16;
  v0[48] = v16;
  v2 = sub_81788();
  v19(v1, v2, v17);
  v22 = sub_99390();
  v21 = sub_99D60();
  v23 = sub_99F80();
  if (os_log_type_enabled(v22, v21))
  {
    v3 = *(v15 + 656);
    buf = sub_99E40();
    sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v12 = sub_F444(0);
    v13 = sub_F444(0);
    *(v15 + 456) = buf;
    *(v15 + 464) = v12;
    *(v15 + 472) = v13;
    sub_F498(0, (v15 + 456));
    sub_F498(0, (v15 + 456));
    *(v15 + 480) = v23;
    v14 = swift_task_alloc();
    v14[2] = v15 + 456;
    v14[3] = v15 + 464;
    v14[4] = v15 + 472;
    sub_22FC(&unk_B5950, &qword_9A9B0);
    sub_F528();
    sub_99C20();
    if (v3)
    {
    }

    _os_log_impl(&dword_0, v22, v21, "Passcode challenge succeeded, extracting credentials.", buf, 2u);
    sub_F5B0(v12);
    sub_F5B0(v13);
    sub_99E20();

    v10 = 0;
  }

  else
  {

    v10 = *(v15 + 656);
  }

  *(v15 + 696) = v10;
  v7 = *(v15 + 672);
  v8 = *(v15 + 664);
  v5 = *(v15 + 568);
  v6 = *(v15 + 528);
  _objc_release(v22);
  v8(v5, v6);
  *(v15 + 80) = *(v15 + 328);
  *(v15 + 120) = v15 + 296;
  *(v15 + 88) = sub_70610;
  v9 = swift_continuation_init();
  *(v15 + 264) = sub_22FC(&qword_B5808, &qword_9BFE0);
  *(v15 + 240) = v9;
  *(v15 + 208) = _NSConcreteStackBlock;
  *(v15 + 216) = 1107296256;
  *(v15 + 220) = 0;
  *(v15 + 224) = sub_7215C;
  *(v15 + 232) = &unk_AF1F0;
  [v16 credentialOfType:-9 reply:?];

  return _swift_continuation_await(v15 + 80);
}

uint64_t sub_70610()
{
  v11 = *v0;
  v12 = *v0;
  v9 = *v0 + 16;
  v10 = (v12 + 328);
  *(v12 + 328) = *v0;
  v1 = *(v11 + 112);
  *(v12 + 704) = v1;
  if (v1)
  {
    v6 = *v10;
    v7 = *(v9 + 584);
    v4 = *(v9 + 576);
    v5 = sub_71780;
  }

  else
  {
    v2 = *v10;
    v3 = *(v9 + 584);
    v4 = *(v9 + 576);
    v5 = sub_70788;
  }

  return _swift_task_switch(v5, v4);
}

uint64_t sub_70788()
{
  v0[41] = v0;
  v57 = v0[37];
  v58 = v0[38];
  if ((v58 & 0xF000000000000000) == 0xF000000000000000)
  {
    v31 = *(v56 + 648);
    v29 = *(v56 + 640);
    v30 = *(v56 + 632);
    v5 = *(v56 + 552);
    v28 = *(v56 + 528);
    v6 = sub_81788();
    v30(v5, v6, v28);
    oslog = sub_99390();
    v32 = sub_99D90();
    v34 = sub_99F80();
    if (os_log_type_enabled(oslog, v32))
    {
      v7 = *(v56 + 696);
      buf = sub_99E40();
      sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v25 = sub_F444(0);
      v26 = sub_F444(0);
      *(v56 + 392) = buf;
      *(v56 + 400) = v25;
      *(v56 + 408) = v26;
      sub_F498(0, (v56 + 392));
      sub_F498(0, (v56 + 392));
      *(v56 + 416) = v34;
      v27 = swift_task_alloc();
      v27[2] = v56 + 392;
      v27[3] = v56 + 400;
      v27[4] = v56 + 408;
      sub_22FC(&unk_B5950, &qword_9A9B0);
      sub_F528();
      sub_99C20();
      if (v7)
      {
      }

      _os_log_impl(&dword_0, oslog, v32, "Extracting credentials from passcode challenge failed unexpectedly.", buf, 2u);
      sub_F5B0(v25);
      sub_F5B0(v26);
      sub_99E20();
    }

    else
    {
    }

    v20 = *(v56 + 688);
    v18 = *(v56 + 672);
    v19 = *(v56 + 664);
    v21 = *(v56 + 624);
    v22 = *(v56 + 616);
    v16 = *(v56 + 552);
    v17 = *(v56 + 528);
    v23 = *(v56 + 608);
    _objc_release(oslog);
    v19(v16, v17);
    _objc_release(v20);
    _objc_release(v21);
    _objc_release(v22);
    _objc_release(v23);
    v43 = 0;
    v44 = 0xF000000000000000;
    goto LABEL_14;
  }

  v52 = *(v56 + 648);
  v50 = *(v56 + 640);
  v51 = *(v56 + 632);
  v1 = *(v56 + 560);
  v49 = *(v56 + 528);
  *(v56 + 312) = v57;
  *(v56 + 320) = v58;
  v2 = sub_81788();
  v51(v1, v2, v49);
  v54 = sub_99390();
  v53 = sub_99D60();
  v55 = sub_99F80();
  if (!os_log_type_enabled(v54, v53))
  {

    goto LABEL_7;
  }

  v3 = *(v56 + 696);
  v45 = sub_99E40();
  sub_22FC(&qword_B4CD8, &unk_9AFC0);
  v46 = sub_F444(0);
  v47 = sub_F444(0);
  *(v56 + 424) = v45;
  *(v56 + 432) = v46;
  *(v56 + 440) = v47;
  sub_F498(0, (v56 + 424));
  sub_F498(0, (v56 + 424));
  *(v56 + 448) = v55;
  v48 = swift_task_alloc();
  v48[2] = v56 + 424;
  v48[3] = v56 + 432;
  v48[4] = v56 + 440;
  sub_22FC(&unk_B5950, &qword_9A9B0);
  sub_F528();
  sub_99C20();
  if (v3)
  {
  }

  _os_log_impl(&dword_0, v54, v53, "Successfully extracted passcode credentials.", v45, 2u);
  sub_F5B0(v46);
  sub_F5B0(v47);
  sub_99E20();

LABEL_7:
  v39 = *(v56 + 688);
  v37 = *(v56 + 672);
  v38 = *(v56 + 664);
  v40 = *(v56 + 624);
  v41 = *(v56 + 616);
  v35 = *(v56 + 560);
  v36 = *(v56 + 528);
  v42 = *(v56 + 608);
  _objc_release(v54);
  v38(v35, v36);
  _objc_release(v39);
  _objc_release(v40);
  _objc_release(v41);
  _objc_release(v42);
  v43 = v57;
  v44 = v58;
LABEL_14:
  v8 = *(v56 + 584);
  v11 = *(v56 + 576);
  v12 = *(v56 + 568);
  v13 = *(v56 + 560);
  v14 = *(v56 + 552);
  v15 = *(v56 + 544);

  v9 = *(*(v56 + 328) + 8);
  v10 = *(v56 + 328);

  return v9(v43, v44);
}

uint64_t sub_71048()
{
  v43 = v0;
  v1 = v0[85];
  v0[41] = v0;
  swift_willThrow();
  v28 = v0[85];
  v35 = v0[81];
  v26 = v0[80];
  v27 = v0[79];
  v2 = v0[68];
  v25 = v0[66];
  swift_errorRetain();
  v0[47] = v28;
  v3 = sub_81788();
  v27(v2, v3, v25);
  swift_errorRetain();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  v36 = sub_99390();
  v37 = sub_99D80();
  v31 = swift_allocObject();
  *(v31 + 16) = 32;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_7E020;
  *(v30 + 24) = v29;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_7E0D0;
  *(v33 + 24) = v30;
  sub_99F80();
  v34 = v4;

  *v34 = sub_7E054;
  v34[1] = v31;

  v34[2] = sub_7E088;
  v34[3] = v32;

  v34[4] = sub_7E11C;
  v34[5] = v33;
  sub_29D0();

  if (os_log_type_enabled(v36, v37))
  {
    buf = sub_99E40();
    sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v22 = sub_F444(0);
    v23 = sub_F444(1);
    v38 = buf;
    v39 = v22;
    v40 = v23;
    sub_F498(2, &v38);
    sub_F498(1, &v38);
    v41 = sub_7E054;
    v42 = v31;
    sub_F4AC(&v41, &v38, &v39, &v40);
    v41 = sub_7E088;
    v42 = v32;
    sub_F4AC(&v41, &v38, &v39, &v40);
    v41 = sub_7E11C;
    v42 = v33;
    sub_F4AC(&v41, &v38, &v39, &v40);
    _os_log_impl(&dword_0, v36, v37, "Passcode challenge failed with error '%s'", buf, 0xCu);
    sub_F5B0(v22);
    sub_F5B0(v23);
    sub_99E20();
  }

  else
  {
  }

  v11 = v24[84];
  v12 = v24[83];
  v13 = v24[78];
  v14 = v24[77];
  v9 = v24[68];
  v10 = v24[66];
  v15 = v24[76];
  _objc_release(v36);
  v12(v9, v10);

  _objc_release(v13);
  _objc_release(v14);
  _objc_release(v15);
  v5 = v24[73];
  v16 = v24[72];
  v17 = v24[71];
  v18 = v24[70];
  v19 = v24[69];
  v20 = v24[68];

  v6 = *(v24[41] + 8);
  v7 = v24[41];

  return v6(0, 0xF000000000000000);
}

uint64_t sub_71780()
{
  v44 = v0;
  v1 = v0[88];
  v25 = v0[86];
  v0[41] = v0;
  swift_willThrow();
  _objc_release(v25);
  v29 = v0[88];
  v36 = v0[81];
  v27 = v0[80];
  v28 = v0[79];
  v2 = v0[68];
  v26 = v0[66];
  swift_errorRetain();
  v0[47] = v29;
  v3 = sub_81788();
  v28(v2, v3, v26);
  swift_errorRetain();
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  v37 = sub_99390();
  v38 = sub_99D80();
  v32 = swift_allocObject();
  *(v32 + 16) = 32;
  v33 = swift_allocObject();
  *(v33 + 16) = 8;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_7E020;
  *(v31 + 24) = v30;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_7E0D0;
  *(v34 + 24) = v31;
  sub_99F80();
  v35 = v4;

  *v35 = sub_7E054;
  v35[1] = v32;

  v35[2] = sub_7E088;
  v35[3] = v33;

  v35[4] = sub_7E11C;
  v35[5] = v34;
  sub_29D0();

  if (os_log_type_enabled(v37, v38))
  {
    buf = sub_99E40();
    sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v22 = sub_F444(0);
    v23 = sub_F444(1);
    v39 = buf;
    v40 = v22;
    v41 = v23;
    sub_F498(2, &v39);
    sub_F498(1, &v39);
    v42 = sub_7E054;
    v43 = v32;
    sub_F4AC(&v42, &v39, &v40, &v41);
    v42 = sub_7E088;
    v43 = v33;
    sub_F4AC(&v42, &v39, &v40, &v41);
    v42 = sub_7E11C;
    v43 = v34;
    sub_F4AC(&v42, &v39, &v40, &v41);
    _os_log_impl(&dword_0, v37, v38, "Passcode challenge failed with error '%s'", buf, 0xCu);
    sub_F5B0(v22);
    sub_F5B0(v23);
    sub_99E20();
  }

  else
  {
  }

  v11 = v24[84];
  v12 = v24[83];
  v13 = v24[78];
  v14 = v24[77];
  v9 = v24[68];
  v10 = v24[66];
  v15 = v24[76];
  _objc_release(v37);
  v12(v9, v10);

  _objc_release(v13);
  _objc_release(v14);
  _objc_release(v15);
  v5 = v24[73];
  v16 = v24[72];
  v17 = v24[71];
  v18 = v24[70];
  v19 = v24[69];
  v20 = v24[68];

  v6 = *(v24[41] + 8);
  v7 = v24[41];

  return v6(0, 0xF000000000000000);
}

void sub_71F64(uint64_t a1, id a2, void *a3)
{
  _objc_retain(a2);
  _objc_retain(a3);
  v9 = *sub_7E494((a1 + 32), *(a1 + 56));
  if (a3)
  {
    swift_errorRetain();
    v4 = sub_7D178();
    sub_7209C(v9, a3, v4);
  }

  else
  {
    _objc_retain(a2);
    if (a2)
    {
      v5 = a2;
    }

    else
    {
      sub_99FA0("", 0, 1, 0, 1);
      __break(1u);
    }

    v10 = v5;
    v3 = sub_7D178();
    sub_72100(v9, &v10, v3);
  }

  _objc_release(a3);
  _objc_release(a2);
}

uint64_t sub_7209C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[1] = a3;
  v7[0] = a2;
  v3 = sub_22FC(&qword_B57B8, &qword_9BF90);
  return sub_776B8(v7, a1, a3, v3);
}

void sub_7215C(uint64_t a1, id a2, void *a3)
{
  _objc_retain(a2);
  _objc_retain(a3);
  v13 = *sub_7E494((a1 + 32), *(a1 + 56));
  if (a3)
  {
    swift_errorRetain();
    v5 = sub_22FC(&qword_B5740, &qword_9BE38);
    sub_7209C(v13, a3, v5);
  }

  else
  {
    _objc_retain(a2);
    if (a2)
    {
      v6 = sub_991E0();
      v7 = v3;
      _objc_release(a2);
      v8 = v6;
      v9 = v7;
    }

    else
    {
      v8 = 0;
      v9 = 0xF000000000000000;
    }

    v14[0] = v8;
    v14[1] = v9;
    v4 = sub_22FC(&qword_B5740, &qword_9BE38);
    sub_72100(v13, v14, v4);
  }

  _objc_release(a3);
  _objc_release(a2);
}

void sub_72350(uint64_t a1, char a2, id a3)
{
  _objc_retain(a3);
  v6 = *sub_7E494((a1 + 32), *(a1 + 56));
  if (a3)
  {
    swift_errorRetain();
    sub_7209C(v6, a3, &type metadata for Bool);
  }

  else
  {
    v7 = a2;
    sub_72100(v6, &v7, &type metadata for Bool);
  }

  _objc_release(a3);
}

uint64_t sub_7243C(void *a1)
{
  v8 = [a1 humanReadableUpdateName];
  if (v8)
  {
    v4 = sub_99B30();
    v5 = v1;
    _objc_release(v8);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if (v7)
  {
    return v6;
  }

  sub_99EF0();
  __break(1u);
  return v3;
}

uint64_t sub_72580()
{
  swift_errorRetain();
  sub_22FC(&unk_B59F0, &unk_9C128);
  return sub_99B50();
}

uint64_t sub_725D4(void *a1)
{
  v8 = [a1 humanReadableUpdateName];
  if (v8)
  {
    v4 = sub_99B30();
    v5 = v1;
    _objc_release(v8);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if (v7)
  {
    return v6;
  }

  sub_99EF0();
  __break(1u);
  return v3;
}

uint64_t sub_72710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a5;
  v5[8] = a4;
  v5[4] = v5;
  v5[5] = 0;
  v5[6] = 0;
  v5[5] = a4;
  v5[6] = a5;
  sub_99CD0();
  v5[10] = sub_99CC0();
  v6 = sub_99CA0();
  v7 = v5[4];

  return _swift_task_switch(sub_727D8, v6);
}

uint64_t sub_727D8()
{
  v1 = v0[9];
  v2 = v0[8];
  v11 = v2;
  v0[4] = v0;
  _objc_retain(v2);
  _objc_retain(v11);
  v12 = sub_4CE5C();
  _objc_retain(v12);
  v0[2] = v11;
  v0[3] = v12;
  if (!v0[2])
  {
    if (!*(v10 + 24))
    {
      sub_127E0((v10 + 16));
      _objc_release(v12);
      _objc_release(v11);
LABEL_11:
      v3 = *(v10 + 72);
      v4 = sub_5104C();
      sub_51058(0xC000000000000030, v4 & 1);
      goto LABEL_12;
    }

LABEL_9:
    sub_7CED4((v10 + 16));
    _objc_release(v12);
    _objc_release(v11);
    goto LABEL_12;
  }

  sub_7CFA8((v10 + 16), (v10 + 56));
  if (!*(v10 + 24))
  {
    _objc_release(*(v10 + 56));
    goto LABEL_9;
  }

  v13 = *(v10 + 56);
  v14 = *(v10 + 24);
  sub_FFE8();
  v9 = sub_99E10();
  _objc_release(v14);
  _objc_release(v13);
  sub_127E0((v10 + 16));
  _objc_release(v12);
  _objc_release(v11);
  if (v9)
  {
    goto LABEL_11;
  }

LABEL_12:
  v5 = *(v10 + 80);

  v6 = *(*(v10 + 32) + 8);
  v7 = *(v10 + 32);

  return v6();
}

uint64_t sub_72AC4(void *a1)
{
  v8 = [a1 humanReadableUpdateName];
  if (v8)
  {
    v4 = sub_99B30();
    v5 = v1;
    _objc_release(v8);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if (v7)
  {
    return v6;
  }

  sub_99EF0();
  __break(1u);
  return v3;
}

uint64_t sub_72C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 128) = a7;
  *(v7 + 169) = a6 & 1;
  *(v7 + 120) = a5;
  *(v7 + 112) = a4;
  *(v7 + 32) = v7;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 168) = 0;
  *(v7 + 56) = 0;
  *(v7 + 96) = 0;
  v8 = sub_993B0();
  *(v7 + 136) = v8;
  v13 = *(v8 - 8);
  *(v7 + 144) = v13;
  v9 = *(v13 + 64) + 15;
  *(v7 + 152) = swift_task_alloc();
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 168) = a6 & 1;
  *(v7 + 56) = a7;
  sub_99CD0();
  *(v7 + 160) = sub_99CC0();
  v10 = sub_99CA0();
  v11 = *(v7 + 32);

  return _swift_task_switch(sub_72DB8, v10);
}

uint64_t sub_72DB8()
{
  v1 = v0[15];
  v2 = v0[14];
  v30 = v2;
  v0[4] = v0;
  _objc_retain(v2);
  _objc_retain(v30);
  v31 = sub_4CE5C();
  _objc_retain(v31);
  v0[2] = v30;
  v0[3] = v31;
  if (v0[2])
  {
    sub_7CFA8((v29 + 16), (v29 + 104));
    if (*(v29 + 24))
    {
      v32 = *(v29 + 104);
      v33 = *(v29 + 24);
      sub_FFE8();
      v28 = sub_99E10();
      _objc_release(v33);
      _objc_release(v32);
      sub_127E0((v29 + 16));
      _objc_release(v31);
      _objc_release(v30);
      if ((v28 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    _objc_release(*(v29 + 104));
LABEL_9:
    sub_7CED4((v29 + 16));
    _objc_release(v31);
    _objc_release(v30);
    goto LABEL_18;
  }

  if (*(v29 + 24))
  {
    goto LABEL_9;
  }

  sub_127E0((v29 + 16));
  _objc_release(v31);
  _objc_release(v30);
LABEL_11:
  if (*(v29 + 169))
  {
    v3 = *(v29 + 120);
    v4 = sub_5104C();
    sub_51058(0xC000000000000000, v4 & 1);
  }

  else
  {
    v27 = *(v29 + 128);
    swift_errorRetain();
    if (v27)
    {
      v26 = *(v29 + 128);
      v5 = *(v29 + 120);
      *(v29 + 96) = v26;
      swift_errorRetain();
      v6 = sub_5104C();
      sub_51058(v26 | 0x4000000000000000, v6 & 1);
      sub_109F4(v26 | 0x4000000000000000);
    }

    else
    {
      v7 = *(v29 + 152);
      v22 = *(v29 + 136);
      v21 = *(v29 + 144);
      v8 = sub_81788();
      (*(v21 + 16))(v7, v8, v22);
      oslog = sub_99390();
      v23 = sub_99D60();
      sub_22FC(&unk_B5940, &unk_9A9A0);
      v25 = sub_99F80();
      if (os_log_type_enabled(oslog, v23))
      {
        buf = sub_99E40();
        sub_22FC(&qword_B4CD8, &unk_9AFC0);
        v18 = sub_F444(0);
        v19 = sub_F444(0);
        *(v29 + 64) = buf;
        *(v29 + 72) = v18;
        *(v29 + 80) = v19;
        sub_F498(0, (v29 + 64));
        sub_F498(0, (v29 + 64));
        *(v29 + 88) = v25;
        v20 = swift_task_alloc();
        v20[2] = v29 + 64;
        v20[3] = v29 + 72;
        v20[4] = v29 + 80;
        sub_22FC(&unk_B5950, &qword_9A9B0);
        sub_F528();
        sub_99C20();

        _os_log_impl(&dword_0, oslog, v23, "installFinished called with fail statuss, but no error was given.", buf, 2u);
        sub_F5B0(v18);
        sub_F5B0(v19);
        sub_99E20();
      }

      v15 = *(v29 + 152);
      v16 = *(v29 + 136);
      v14 = *(v29 + 144);
      _objc_release(oslog);
      (*(v14 + 8))(v15, v16);
    }
  }

LABEL_18:
  v9 = *(v29 + 160);
  v13 = *(v29 + 152);

  v10 = *(*(v29 + 32) + 8);
  v11 = *(v29 + 32);

  return v10();
}

uint64_t sub_7355C(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v11 = a2;
  v22 = sub_7E63C;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v20 = sub_22FC(&qword_B5840, &qword_9C110);
  v16 = *(v20 - 8);
  v17 = v20 - 8;
  v13 = v16;
  v14 = *(v16 + 64);
  v9 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = &v8 - v9;
  v36 = __chkstk_darwin(v12);
  v35 = v2;
  v15 = 7;
  v26 = swift_allocObject();
  v34 = v26 + 16;
  v10 = 0;
  type metadata accessor for UpdateHistoryData();
  v3 = sub_99F80();
  v4 = v11;
  *(v26 + 16) = v3;
  v25 = *(v4 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager_suClient);
  _objc_retain(v25);
  (*(v16 + 16))(v19, v12, v20);

  v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v21 = (v18 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v16 + 32))(v23 + v18, v19, v20);
  v5 = v22;
  v6 = v23;
  *(v23 + v21) = v26;
  v32 = v5;
  v33 = v6;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = 0;
  v30 = sub_75120;
  v31 = &unk_AF290;
  v24 = _Block_copy(&aBlock);

  [v25 fetchInstallHistory:v24];
  _Block_release(v24);
  _objc_release(v25);
}

uint64_t sub_73830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v116 = a1;
  v115 = a2;
  v113 = a3;
  v114 = a4;
  v101 = sub_7E79C;
  v102 = sub_7E84C;
  v103 = sub_7E7D0;
  v104 = sub_7E804;
  v105 = sub_7E898;
  v106 = sub_7E8E4;
  v107 = sub_7E9D0;
  v108 = sub_7E918;
  v109 = sub_7E94C;
  v110 = sub_7EA1C;
  v111 = sub_74904;
  v143 = 0;
  v142 = 0;
  v141 = 0;
  v140 = 0;
  v112 = 0;
  v131 = 0;
  v117 = sub_993B0();
  v118 = *(v117 - 8);
  v119 = v117 - 8;
  v120 = (*(v118 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v116);
  v121 = v43 - v120;
  v122 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v123 = v43 - v122;
  v143 = v6;
  v142 = v7;
  v141 = v8;
  v140 = v9 + 16;
  v139[1] = v7;
  v100 = v7 == 0;
  if (v7)
  {
    v28 = v121;
    v29 = sub_81788();
    (*(v118 + 16))(v28, v29, v117);
    swift_errorRetain();
    v53 = 7;
    v54 = swift_allocObject();
    *(v54 + 16) = v115;
    v62 = sub_99390();
    v63 = sub_99D80();
    v51 = 17;
    v56 = swift_allocObject();
    *(v56 + 16) = 32;
    v57 = swift_allocObject();
    *(v57 + 16) = 8;
    v52 = 32;
    v30 = swift_allocObject();
    v31 = v54;
    v55 = v30;
    *(v30 + 16) = v101;
    *(v30 + 24) = v31;
    v32 = swift_allocObject();
    v33 = v55;
    v59 = v32;
    *(v32 + 16) = v102;
    *(v32 + 24) = v33;
    v61 = sub_22FC(&unk_B5940, &unk_9A9A0);
    v58 = sub_99F80();
    v60 = v34;

    v35 = v56;
    v36 = v60;
    *v60 = v103;
    v36[1] = v35;

    v37 = v57;
    v38 = v60;
    v60[2] = v104;
    v38[3] = v37;

    v39 = v59;
    v40 = v60;
    v60[4] = v105;
    v40[5] = v39;
    sub_29D0();

    if (os_log_type_enabled(v62, v63))
    {
      v41 = v112;
      v44 = sub_99E40();
      v43[3] = sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v45 = sub_F444(0);
      v46 = sub_F444(1);
      v47 = &v138;
      v138 = v44;
      v48 = &v137;
      v137 = v45;
      v49 = &v136;
      v136 = v46;
      sub_F498(2, &v138);
      sub_F498(1, v47);
      v134 = v103;
      v135 = v56;
      sub_F4AC(&v134, v47, v48, v49);
      v50 = v41;
      if (v41)
      {

        __break(1u);
      }

      else
      {
        v134 = v104;
        v135 = v57;
        sub_F4AC(&v134, &v138, &v137, &v136);
        v43[2] = 0;
        v134 = v105;
        v135 = v59;
        sub_F4AC(&v134, &v138, &v137, &v136);
        _os_log_impl(&dword_0, v62, v63, "Error fetching install history: %s", v44, 0xCu);
        sub_F5B0(v45);
        sub_F5B0(v46);
        sub_99E20();
      }
    }

    else
    {
    }

    _objc_release(v62);
    (*(v118 + 8))(v121, v117);
    v43[0] = 0;
    type metadata accessor for UpdateHistoryData();
    v42 = sub_99F80();
    v43[1] = v139;
    v139[0] = v42;
    sub_22FC(&qword_B5840, &qword_9C110);
    return sub_99CB0();
  }

  else
  {

    if (!v116)
    {
      goto LABEL_12;
    }

    v99 = v116;
    v10 = v123;
    v85 = v116;
    v131 = v116;
    v11 = sub_81788();
    (*(v118 + 16))(v10, v11, v117);

    v88 = 7;
    v89 = swift_allocObject();
    *(v89 + 16) = v85;
    v97 = sub_99390();
    v98 = sub_99D60();
    v86 = 17;
    v91 = swift_allocObject();
    *(v91 + 16) = 0;
    v92 = swift_allocObject();
    *(v92 + 16) = 8;
    v87 = 32;
    v12 = swift_allocObject();
    v13 = v89;
    v90 = v12;
    *(v12 + 16) = v106;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v90;
    v94 = v14;
    *(v14 + 16) = v107;
    *(v14 + 24) = v15;
    v96 = sub_22FC(&unk_B5940, &unk_9A9A0);
    v93 = sub_99F80();
    v95 = v16;

    v17 = v91;
    v18 = v95;
    *v95 = v108;
    v18[1] = v17;

    v19 = v92;
    v20 = v95;
    v95[2] = v109;
    v20[3] = v19;

    v21 = v94;
    v22 = v95;
    v95[4] = v110;
    v22[5] = v21;
    sub_29D0();

    if (os_log_type_enabled(v97, v98))
    {
      v23 = v112;
      v78 = sub_99E40();
      v76 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v77 = 0;
      v79 = sub_F444(0);
      v80 = sub_F444(v77);
      v81 = &v128;
      v128 = v78;
      v82 = &v127;
      v127 = v79;
      v83 = &v126;
      v126 = v80;
      sub_F498(0, &v128);
      sub_F498(1, v81);
      v124 = v108;
      v125 = v91;
      sub_F4AC(&v124, v81, v82, v83);
      v84 = v23;
      if (v23)
      {

        __break(1u);
      }

      else
      {
        v124 = v109;
        v125 = v92;
        sub_F4AC(&v124, &v128, &v127, &v126);
        v74 = 0;
        v124 = v110;
        v125 = v94;
        sub_F4AC(&v124, &v128, &v127, &v126);
        v73 = 0;
        _os_log_impl(&dword_0, v97, v98, "getInstallHistoryEvents returning %ld history events", v78, 0xCu);
        v72 = 0;
        sub_F5B0(v79);
        sub_F5B0(v80);
        sub_99E20();

        v75 = v73;
      }
    }

    else
    {
      v24 = v112;

      v75 = v24;
    }

    v25 = v75;
    _objc_release(v97);
    (*(v118 + 8))(v123, v117);
    v130 = v85;
    v69 = sub_22FC(&qword_B5858, &qword_9C120);
    updated = type metadata accessor for UpdateHistoryData();
    sub_7EB08();
    result = sub_99C00();
    v71 = result;
    if (!v25)
    {
      v67 = v71;
      v68 = &v129;
      swift_beginAccess();
      v27 = *(v114 + 16);
      *(v114 + 16) = v67;

      swift_endAccess();

LABEL_12:
      v64 = &v133;
      swift_beginAccess();
      v65 = *(v114 + 16);

      swift_endAccess();
      v66 = &v132;
      v132 = v65;
      sub_22FC(&qword_B5840, &qword_9C110);
      return sub_99CB0();
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_74870()
{
  swift_errorRetain();
  sub_22FC(&unk_B59F0, &unk_9C128);
  return sub_99B50();
}

uint64_t sub_74904@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v50 = a2;
  v63 = a1;
  v52 = sub_7EBD0;
  v53 = sub_7EC18;
  v54 = sub_7EDB0;
  v55 = sub_7ED34;
  v56 = sub_7ED68;
  v57 = sub_7EDFC;
  v74 = 0;
  v73 = 0;
  v66 = 0;
  v58 = sub_993B0();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  v61 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v58);
  v62 = &v21 - v61;
  v64 = (*(*(sub_22FC(&qword_B4B58, &qword_9B1A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v63);
  v67 = &v21 - v64;
  v74 = &v21 - v64;
  v65 = *v2;
  v73 = v65;

  UpdateHistoryData.init(from:)(v65, v67);
  updated = type metadata accessor for UpdateHistoryData();
  if ((*(*(updated - 8) + 48))(v67, 1) == 1)
  {
    v4 = v62;
    v5 = sub_81788();
    (*(v59 + 16))(v4, v5, v58);

    v38 = 7;
    v35 = swift_allocObject();
    *(v35 + 16) = v65;

    v37 = 32;
    v6 = swift_allocObject();
    v7 = v35;
    v39 = v6;
    *(v6 + 16) = v52;
    *(v6 + 24) = v7;

    v47 = sub_99390();
    v48 = sub_99D80();
    v36 = 17;
    v41 = swift_allocObject();
    *(v41 + 16) = 32;
    v42 = swift_allocObject();
    *(v42 + 16) = 8;
    v8 = swift_allocObject();
    v9 = v39;
    v40 = v8;
    *(v8 + 16) = v53;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v40;
    v44 = v10;
    *(v10 + 16) = v54;
    *(v10 + 24) = v11;
    v46 = sub_22FC(&unk_B5940, &unk_9A9A0);
    v43 = sub_99F80();
    v45 = v12;

    v13 = v41;
    v14 = v45;
    *v45 = v55;
    v14[1] = v13;

    v15 = v42;
    v16 = v45;
    v45[2] = v56;
    v16[3] = v15;

    v17 = v44;
    v18 = v45;
    v45[4] = v57;
    v18[5] = v17;
    sub_29D0();

    if (os_log_type_enabled(v47, v48))
    {
      v28 = sub_99E40();
      v27 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v29 = sub_F444(0);
      v30 = sub_F444(1);
      v31 = &v72;
      v72 = v28;
      v32 = &v71;
      v71 = v29;
      v33 = &v70;
      v70 = v30;
      sub_F498(2, &v72);
      sub_F498(1, v31);
      v19 = v51;
      v68 = v55;
      v69 = v41;
      sub_F4AC(&v68, v31, v32, v33);
      v34 = v19;
      if (v19)
      {

        __break(1u);
      }

      else
      {
        v68 = v56;
        v69 = v42;
        sub_F4AC(&v68, &v72, &v71, &v70);
        v25 = 0;
        v68 = v57;
        v69 = v44;
        sub_F4AC(&v68, &v72, &v71, &v70);
        v24 = 0;
        _os_log_impl(&dword_0, v47, v48, "Failed to create UpdateHistoryData from event: %s", v28, 0xCu);
        sub_F5B0(v29);
        sub_F5B0(v30);
        sub_99E20();

        v26 = v24;
      }
    }

    else
    {

      v26 = v51;
    }

    v22 = v26;
    _objc_release(v47);
    (*(v59 + 8))(v62, v58);
    v23 = v22;
  }

  else
  {
    v23 = v51;
  }

  v21 = v23;
  sub_31A0(v67, v50);
  return sub_4154(v67);
}

uint64_t sub_750EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_75120(uint64_t a1, void *a2, void *a3)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);

  _objc_retain(a2);
  if (a2)
  {
    sub_22FC(&qword_B5848, &qword_9C118);
    v4 = sub_99C60();
    _objc_release(a2);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  _objc_retain(a3);
  v7(v5);
}

uint64_t sub_7525C(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v13 = a2;
  v25 = 0;
  v24 = 0;
  v7 = 0;
  v20 = sub_99230();
  v16 = *(v20 - 8);
  v17 = v20 - 8;
  v9 = v16[8];
  v8 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(0);
  v18 = &v7 - v8;
  v10 = v8;
  __chkstk_darwin(v2);
  v19 = &v7 - v10;
  v25 = v3;
  v24 = v4;
  updated = type metadata accessor for UpdateHistoryData();
  v5 = *(updated + 20);
  v15 = v16[2];
  v14 = v16 + 2;
  v15(v19, v11 + v5, v20);
  v15(v18, v13 + *(updated + 20), v20);
  v23 = sub_99200();
  v22 = v16[1];
  v21 = v16 + 1;
  v22(v18, v20);
  v22(v19, v20);
  return v23 & 1;
}

uint64_t sub_75434@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager___observationRegistrar;
  v2 = sub_99310();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_754D8()
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v1 = sub_99FB0();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v1 & 1;
}

id sub_75678()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_757FC(uint64_t a1, void *a2)
{
  v5 = [v2 initWithDelegate:a1 queue:? clientType:?];
  _objc_release(a2);
  swift_unknownObjectRelease();
  return v5;
}

id sub_75860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = sub_99B20();
  if (a4)
  {
    isa = sub_99AA0().super.isa;

    v7 = isa;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v9 initWithDomain:v11 code:a3 userInfo:?];
  _objc_release(v7);
  _objc_release(v11);

  return v5;
}

id sub_75A08(void *a1)
{
  v4 = [v1 initWithDescriptor:?];
  _objc_release(a1);
  return v4;
}

uint64_t sub_75B0C@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = nullsub_8(*a1);
  *a2 = result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_75B4C@<X0>(_DWORD *a1@<X8>)
{
  result = nullsub_9(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_75BB0()
{
  v2 = qword_B5778;
  if (!qword_B5778)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_B5778);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_75C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v7[1] = a4;
  v8 = *(a3 - 8);
  v9 = a3 - 8;
  v7[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(a1);
  v10 = v7 - v7[0];
  v4();
  v12 = sub_99F30();
  v13 = v5;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t sub_75DB0(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v6 = (a3 + 1);
  }

  else
  {
    v8 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v6 = (v8 | (a3 >> 6)) + 33217;
    }

    else
    {
      v7 = (v8 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v6 = (v7 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v6 = ((a3 >> 18) | ((v7 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v5 = 4 - (__clz(v6) >> 3);
  v3.value._rawValue = &v10;
  v10 = (v6 - 0x101010101010101) & ((1 << ((8 * v5) & 0x3F)) - 1);
  sub_99D40(v3);
  if ((v5 & 0x8000000000000000) == 0)
  {
    return a1(&v10, v5);
  }

  sub_99F00();
  __break(1u);
LABEL_12:
  result = sub_99EF0();
  __break(1u);
  return result;
}

uint64_t sub_760DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        __chkstk_darwin(v17);
        v15 = sub_7E44C;
        v16 = &v37;
        sub_75DB0(sub_7E468, v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      v13[0] = 2;
      sub_99EF0();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    v13[0] = 2;
    sub_99EF0();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        v13[0] = 2;
        sub_99EF0();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            v13[0] = 2;
            sub_99EF0();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    v13[0] = 2;
                    sub_99EF0();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  v13[0] = 2;
                  sub_99EF0();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                v13[0] = 2;
                sub_99EF0();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              v13[0] = 2;
              sub_99EF0();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            v13[0] = 2;
            sub_99EF0();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          v13[0] = 2;
          sub_99EF0();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        v13[0] = 2;
        sub_99EF0();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      v13[0] = 2;
      sub_99EF0();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    v13[0] = 2;
    sub_99F00();
    __break(1u);
  }

  result = sub_99EF0();
  __break(1u);
  return result;
}

uint64_t sub_7690C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    sub_99EF0();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        sub_99EF0();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            sub_99EF0();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                sub_99EF0();
                __break(1u);
              }

              sub_99EF0();
              __break(1u);
            }

            sub_99EF0();
            __break(1u);
          }

          sub_99EF0();
          __break(1u);
        }

        sub_99EF0();
        __break(1u);
      }

      sub_99EF0();
      __break(1u);
    }

    sub_99EF0();
    __break(1u);
  }

  result = sub_99EF0();
  __break(1u);
  return result;
}

uint64_t sub_76E28(uint64_t result)
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

      sub_99DA0();
      v3 = sub_99C70();

      *(v3 + 16) = v5;

      v4 = v3;
    }

    else
    {
      v4 = &_swiftEmptyArrayStorage;
    }

    v1 = sub_99DA0();
    result = v4;
    v2 = &v4[(*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)];
  }

  return result;
}

uint64_t sub_76F78()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

void sub_770A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[1] = a5;
  sub_80754(a3 + *(*a3 + class metadata base offset for ManagedBuffer + 16), (a3 + ((*(*a3 + 48) + 3) & 0xFFFFFFFFFFFFFFFCLL)), v5);
}

void sub_7718C(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v10)
  {
    *a7 = v10;
  }
}

void *sub_77248(void (*a1)(void))
{
  a1();
  v2 = _swift_stdlib_bridgeErrorToNSError();
  _objc_retain(v2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_772C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (!a1)
  {
    sub_99EF0();
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

uint64_t sub_77494(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s();
  sub_99EB0();
  v5 = sub_99EA0();
  (*(*(a2 - 8) + 8))(a1);
  return v5;
}

uint64_t sub_7755C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *(a1 + ((*(*a1 + 48) + 3) & 0xFFFFFFFFFFFFFFFCLL)) = 0;
  return (*(*(*(v3 + class metadata base offset for ManagedBuffer) - 8) + 16))(a2);
}

uint64_t sub_776B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v4, a1);
  return swift_continuation_throwingResumeWithError();
}

void *sub_77770(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = a4();
  sub_7780C(v4, v5, a3);
  v8 = *a1;

  sub_99E60();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t sub_7780C(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = sub_779B0(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      sub_7D200(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_7D280(v12);
  }

  else
  {
    v13[3] = &type metadata for _StringGuts;
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      sub_7D200(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_7D280(v13);
  }

  return v11;
}

uint64_t sub_779B0(uint64_t result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          sub_99EF0();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        sub_77D68(v22, v17, v16);
        sub_99E70();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = sub_77EE4(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = sub_99EC0();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = sub_99EF0();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *sub_77D68(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = sub_99F00();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    sub_99F00();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_77EE4(uint64_t a1, uint64_t a2)
{
  v7 = sub_77FA0(a1, a2);
  sub_22FC(&unk_B5A00, qword_9C188);
  inited = swift_initStackObject();
  v3 = sub_787B0(inited, 1);
  *v4 = 0;
  sub_787FC();
  sub_78830(v3);

  v8 = sub_78BD8(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *sub_77FA0(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = sub_99BB0();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return sub_790F8();
  }

  v10 = sub_78BF0(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    sub_99F00();
    __break(1u);
    return sub_790F8();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        sub_78D34(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = sub_99EC0();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      sub_78D34(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = sub_99E90();
  if (v2)
  {
LABEL_29:
    sub_99EF0();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    sub_99EF0();
    __break(1u);
  }

  sub_80890(v17);
  return v10;
}

uint64_t sub_787B0(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void sub_78830(uint64_t a1)
{
  v20 = sub_78BD8(a1);
  v2 = sub_78BD8(*v1);
  v21 = v2 + v20;
  if (__OFADD__(v2, v20))
  {
    goto LABEL_31;
  }

  v16 = *v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v21 > *(*v19 + 24) >> 1)
  {
    if (*(*v19 + 16) < v21)
    {
      v15 = v21;
    }

    else
    {
      v15 = *(*v19 + 16);
    }

    v14 = *v19;

    v4 = sub_79134(isUniquelyReferenced_nonNull_native, v15, 1, v14);
    v5 = *v19;
    *v19 = v4;
  }

  v6 = *(*v19 + 16);
  v12 = (*v19 + 32 + v6);
  v7 = *(*v19 + 24) >> 1;
  v13 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    goto LABEL_32;
  }

  if (v13 < 0)
  {
LABEL_30:
    sub_99F00();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!sub_792A0(a1))
  {
LABEL_21:

    if (v20 <= 0)
    {
      goto LABEL_28;
    }

    sub_99EF0();
    __break(1u);
    goto LABEL_30;
  }

  if (v13 < v20)
  {
    sub_99EF0();
    __break(1u);
    goto LABEL_21;
  }

  sub_78D34((a1 + 32), v20, v12);

  swift_unknownObjectRelease();
  if (v20 <= 0)
  {
    goto LABEL_28;
  }

  v9 = *(*v19 + 16);
  v11 = v9 + v20;
  if (!__OFADD__(v9, v20))
  {
    *(*v19 + 16) = v11;
LABEL_28:
    sub_79128();
    return;
  }

LABEL_33:
  __break(1u);
}

void *sub_78BF0(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (v6)
  {
    sub_22FC(&unk_B5A00, qword_9C188);
    v5 = swift_allocObject();

    if (sub_8085C())
    {
      v3 = sub_80868(v5) - 32;
      v5[2] = a1;
      v5[3] = 2 * v3;
    }

    else
    {
      v5[2] = a1;
      v5[3] = 2 * v6;
    }

    return v5;
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }
}

void *sub_78D34(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    sub_99F00();
    __break(1u);
  }

  result = sub_99F00();
  __break(1u);
  return result;
}

uint64_t sub_78E84(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = sub_99BD0();
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    sub_99EF0();
    __break(1u);
  }

  v5 = sub_99BF0();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

char *sub_79134(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = sub_78BF0(v4, v6);
  if (v7)
  {
    sub_792A8((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    sub_78D34((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *sub_792A8(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = sub_99F00();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

_BYTE **sub_793D0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_7944C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_79498()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_794E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  _objc_release(*(v0 + 32));
  _objc_release(*(v0 + 40));
  v2 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_7954C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_79648;

  return sub_52B88(a1, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_79648()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_79820()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7986C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_799B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_79A04()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_79AB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_79B04()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_79B50()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  _objc_release(*(v0 + 32));
  sub_109F4(*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_79BA8(uint64_t a1)
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
  v3[1] = sub_79C8C;

  return sub_63A94(a1, v6, v7, v8, v9);
}

uint64_t sub_79C8C()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_79E64()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_79EB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t type metadata accessor for SUNetworkType()
{
  v4 = qword_B5838;
  if (!qword_B5838)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_B5838);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_79F94()
{
  v2 = qword_B5788;
  if (!qword_B5788)
  {
    type metadata accessor for SUNetworkType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5788);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_7A1C4()
{
  v2 = qword_B5790;
  if (!qword_B5790)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_B5790);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_7A228()
{
  _objc_release(*(v0 + 16));
  _objc_release(*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_7A290(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_7A40C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7A458()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7A4A4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_7A4D8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_7A50C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  _objc_release(*(v0 + 32));
  _objc_release(*(v0 + 40));
  if (*(v0 + 56))
  {
    v2 = v5[8];
  }

  if (v5[9])
  {
    v3 = v5[10];
  }

  return swift_deallocObject();
}

uint64_t sub_7A5A8(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);
  v12 = *(v1 + 48);
  v13 = *(v1 + 56);
  v14 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_7A6D8;

  return sub_57064(a1, v8, v9, v10, v11, v12 & 1, v13, v14);
}

uint64_t sub_7A6D8()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

unint64_t sub_7A87C()
{
  v2 = qword_B5798;
  if (!qword_B5798)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_B5798);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_7A934(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_7AA68(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
  v27 = sub_99EE0() >> 3;
  v28 = *v26;
  v29 = v28;
  if (v27 < 0)
  {
    result = sub_99F00();
    __break(1u);
  }

  else
  {
    v19 = v28 + v27;
    v18 = &v18;
    v10 = __chkstk_darwin(v23);
    v16 = v29;
    v17 = v11;
    sub_7ACA4(v10, sub_7FA0C, v15, v12, &type metadata for Never, &type metadata for () + 8, v13, &type metadata for ());
    (*(v22 + 8))(v23, v24);
    result = v18;
    *v26 = v19;
  }

  return result;
}

uint64_t sub_7ACA4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
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
    result = sub_99F00();
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

uint64_t sub_7AEC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7AF34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7AF80@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_7AFBC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7B008()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7B048(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_7B0BC();

  return sub_7AA68(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

unint64_t sub_7B0BC()
{
  v2 = qword_B57A0;
  if (!qword_B57A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B57A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_7B134()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  _objc_release(*(v0 + 40));
  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_7B18C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_7B280;

  return sub_5F034(a1, v6, v7, v8 & 1, v9, v10);
}

uint64_t sub_7B280()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

unint64_t sub_7B3A8()
{
  v2 = qword_B57A8;
  if (!qword_B57A8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_B57A8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_7B45C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_7B608()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7B654()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7B6F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_7B754()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_7B794()
{
  result = *(v0 + 16);
  sub_5E30C();
  return result;
}

uint64_t sub_7B804()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7B850()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void sub_7B89C(uint64_t *a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = a4();
  v7 = *a1;
  _objc_retain(v8);
  sub_99E60();
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

uint64_t sub_7BA20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7BA9C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_7BADC()
{
  result = *(v0 + 16);
  sub_5F004();
  return result;
}

uint64_t sub_7BB4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7BB98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7BBE4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7BCA0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_7BCE8(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_7BDC0;

  return sub_6DCF8(a1, v6, v7, v8);
}

uint64_t sub_7BDC0()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_7C008()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7C054()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7C108()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7C154()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7C1A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7C1EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7C22C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_7B0BC();

  return sub_7AA68(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

uint64_t sub_7C2A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  _objc_release(*(v0 + 32));
  _objc_release(*(v0 + 40));
  v2 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_7C308(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_7C408;

  return sub_620C0(a1, v6, v7, v8, v9, v10 & 1, v11);
}

uint64_t sub_7C408()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

unint64_t sub_7C530()
{
  v2 = qword_B57B0;
  if (!qword_B57B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_B57B0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_7C66C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7C6B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7C704()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7C750()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7C790(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_7B0BC();

  return sub_7AA68(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

uint64_t sub_7C86C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7C8B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7C904()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7C950()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7C990(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_7B0BC();

  return sub_7AA68(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

uint64_t sub_7CA8C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_7CB3C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7CB88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7CC3C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7CC88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7CCD4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7CD20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7CD60(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_7B0BC();

  return sub_7AA68(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

uint64_t sub_7CE3C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7CE88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

id *sub_7CED4(id *a1)
{
  _objc_release(*a1);
  _objc_release(a1[1]);
  return a1;
}

uint64_t *sub_7CF4C(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

void *sub_7CFA8(id *a1, void *a2)
{
  v3 = *a1;
  _objc_retain(*a1);
  result = a2;
  *a2 = v3;
  return result;
}

unint64_t sub_7CFE8()
{
  v2 = qword_B57C0;
  if (!qword_B57C0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_B57C0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_7D04C()
{
  _objc_release(*(v0 + 16));
  _objc_release(*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_7D0B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_7D178()
{
  v2 = qword_B57C8;
  if (!qword_B57C8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_B57C8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_7D200(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_7D280(uint64_t *a1)
{
  v3 = a1[3];
  if ((*(*(v3 - 8) + 80) & 0x20000) == 0)
  {
    return (*(*(v3 - 8) + 8))(a1);
  }

  v2 = *a1;
}

unint64_t sub_7D380()
{
  v2 = qword_B57D8;
  if (!qword_B57D8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_B57D8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_7D534()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7D580()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7D634()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7D680()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7D6CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7D718()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7D758(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_7B0BC();

  return sub_7AA68(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

uint64_t sub_7D7CC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  _objc_release(*(v0 + 32));
  _objc_release(*(v0 + 40));
  v2 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_7D834(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_7D934;

  return sub_72C08(a1, v6, v7, v8, v9, v10 & 1, v11);
}

uint64_t sub_7D934()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_7DB14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7DB60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7DBAC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  _objc_release(*(v0 + 32));
  _objc_release(*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_7DC0C(uint64_t a1)
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
  v3[1] = sub_7DCF0;

  return sub_72710(a1, v6, v7, v8, v9);
}

uint64_t sub_7DCF0()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

unint64_t sub_7DE50()
{
  v2 = qword_B57E8;
  if (!qword_B57E8)
  {
    sub_87B4(&qword_B57E0, &qword_9BFD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B57E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_7DED8()
{
  v2 = qword_B57F0;
  if (!qword_B57F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_B57F0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_7DF3C()
{
  v2 = qword_B57F8;
  if (!qword_B57F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_B57F8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_7DFE0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_7E090()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7E0DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t *sub_7E25C(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_7E2A4()
{
  v4 = sub_1004C();
  updated = v4;
  if (v0 <= 0x3F)
  {
    v6 = *(v4 - 8) + 64;
    v3 = sub_99310();
    updated = v3;
    if (v1 <= 0x3F)
    {
      v7 = *(v3 - 8) + 64;
      updated = swift_updateClassMetadata2();
      if (!updated)
      {
        return 0;
      }
    }
  }

  return updated;
}

void *sub_7E494(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

uint64_t sub_7E500()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_7E540()
{
  v4 = *(sub_22FC(&qword_B5840, &qword_9C110) - 8);
  v1 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v5 = (v1 + *(v4 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v0 + v1);
  v2 = *(v0 + v5);

  return swift_deallocObject();
}

uint64_t sub_7E63C(uint64_t a1, uint64_t a2)
{
  v8 = *(sub_22FC(&qword_B5840, &qword_9C110) - 8);
  v3 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v4 = *(v2 + ((v3 + *(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_73830(a1, a2, v2 + v3, v4);
}

uint64_t sub_7E6F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_7E75C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_7E80C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7E858()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7E8A4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_7E954@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_7E990()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7E9DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7EA1C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_7EA90();

  return sub_7AA68(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

unint64_t sub_7EA90()
{
  v2 = qword_B5850;
  if (!qword_B5850)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5850);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_7EB08()
{
  v2 = qword_B5860;
  if (!qword_B5860)
  {
    sub_87B4(&qword_B5858, &qword_9C120);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5860);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_7EB90()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_7EBD8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7EC18()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_22FC(&qword_B5848, &qword_9C118);
  v1 = sub_7EC80();

  return sub_75C94(v5, v3, v4, v1);
}

unint64_t sub_7EC80()
{
  v2 = qword_B5868;
  if (!qword_B5868)
  {
    sub_87B4(&qword_B5848, &qword_9C118);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5868);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_7ED70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7EDBC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7EE70()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_7EF20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7EF6C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7EFB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7F004()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7F044(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_7B0BC();

  return sub_7AA68(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

uint64_t sub_7F120()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7F16C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7F1E8()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_7F230(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_7F324;

  return sub_3D8C8(a1, v6);
}

uint64_t sub_7F324()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_7F44C()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_7F494(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_7F588;

  return sub_3D8C8(a1, v6);
}

uint64_t sub_7F588()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_7F7C4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_7F874()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7F8C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7F974()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7F9C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7FA0C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_7AC7C();
}

uint64_t sub_7FAC4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_7FB74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7FBC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7FC0C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7FC58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7FC98(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_7B0BC();

  return sub_7AA68(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

uint64_t sub_7FD74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7FDC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7FE74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7FEC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7FF0C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  _objc_release(*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_7FF64(uint64_t a1)
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
  v3[1] = sub_80048;

  return sub_5A4AC(a1, v6, v7, v8, v9);
}

uint64_t sub_80048()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_80170()
{
  v6 = sub_22FC(&qword_B5880, &qword_9C170);
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = (v8 + *(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v1 = v0[2];

  v2 = v0[3];

  if (v0[4])
  {
    v3 = *(v5 + 40);
  }

  (*(v7 + 8))(v5 + v8, v6);
  _objc_release(*(v5 + v9));
  return swift_deallocObject();
}

uint64_t sub_802B8(char a1)
{
  v2 = sub_22FC(&qword_B5880, &qword_9C170) - 8;
  v3 = (*(*v2 + 80) + 48) & ~*(*v2 + 80);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = *(v1 + ((v3 + *(*v2 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_672E8(a1 & 1, v4, v5, v6, v7, v1 + v3, v8);
}

uint64_t sub_803B0()
{
  v5 = sub_22FC(&qword_B5880, &qword_9C170);
  v3 = *(v5 - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v6 = v4 + *(v3 + 64);
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  _objc_release(*(v0 + 32));
  _objc_release(*(v0 + 40));
  (*(v3 + 8))(v0 + v4, v5);
  return swift_deallocObject();
}

uint64_t sub_804C4(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(sub_22FC(&qword_B5880, &qword_9C170) - 8);
  v11 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_805FC;

  return sub_680CC(a1, v7, v8, v9, v10, v1 + v11);
}

uint64_t sub_805FC()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t type metadata accessor for os_unfair_lock_s()
{
  v4 = qword_B58A8;
  if (!qword_B58A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_B58A8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_80890(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t sub_808BC()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_80904(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_809F8;

  return sub_3D8C8(a1, v6);
}

uint64_t sub_809F8()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_80B20()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_80B68(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_80C5C;

  return sub_3D8C8(a1, v6);
}

uint64_t sub_80C5C()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_80E3C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_80E88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_80F28(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_81014(uint64_t a1)
{
  v4 = *(v1 + 16);
  v2 = *(v1 + 32);
  return sub_76F18(a1, *(v1 + 24));
}

unint64_t sub_81080()
{
  v2 = qword_B5888;
  if (!qword_B5888)
  {
    sub_99DA0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5888);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_81100()
{
  v2 = qword_B5898;
  if (!qword_B5898)
  {
    sub_87B4(&qword_B5890, &qword_9C1A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5898);
    return WitnessTable;
  }

  return v2;
}

unint64_t *sub_811B0(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  sub_2183C(*a1);
  result = a2;
  *a2 = v3;
  return result;
}

uint64_t sub_811E8(uint64_t *a1, uint64_t a2)
{
  if ((a1[1] & 0xF000000000000000) == 0xF000000000000000)
  {
    *a2 = *a1;
  }

  else
  {
    v3 = *a1;
    v4 = a1[1];
    sub_1A538(*a1, v4);
    *a2 = v3;
    *(a2 + 8) = v4;
  }

  return a2;
}

uint64_t sub_8127C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 4))
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

uint64_t sub_81384(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (a3)
    {
      *(result + 4) = 1;
    }
  }

  else if (a3)
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_81520()
{
  result = sub_99B90("com.apple.BackgroundSecurityImprovement", 0x27uLL, 1);
  qword_B6178 = result;
  qword_B6180 = v1;
  return result;
}

uint64_t *sub_81564()
{
  if (qword_B6170 != -1)
  {
    swift_once();
  }

  return &qword_B6178;
}

uint64_t sub_815C4()
{
  v0 = sub_81564();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_81600()
{
  v2 = sub_993B0();
  sub_81694(v2, qword_B64D0);
  sub_81730(v2, qword_B64D0);
  v0 = sub_81564();
  v3 = *v0;
  v4 = v0[1];

  sub_99B90("UILogic", 7uLL, 1);
  return sub_993A0();
}

uint64_t sub_81694(uint64_t a1, uint64_t *a2)
{
  v6 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = *(*(a1 - 8) + 64);
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return v6;
}

uint64_t sub_81730(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t sub_81788()
{
  if (qword_B6188 != -1)
  {
    swift_once();
  }

  v0 = sub_993B0();
  return sub_81730(v0, qword_B64D0);
}

uint64_t sub_817F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_81788();
  v1 = sub_993B0();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t UpdateHistoryData.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for UpdateHistoryData() + 20);
  v2 = sub_99230();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t type metadata accessor for UpdateHistoryData()
{
  v1 = qword_B6210;
  if (!qword_B6210)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t UpdateHistoryData.titleForDisplay.getter()
{
  v1 = (v0 + *(type metadata accessor for UpdateHistoryData() + 24));
  v3 = *v1;
  v4 = v1[1];

  return v3;
}

uint64_t UpdateHistoryData.splatBuildNumber.getter()
{
  v1 = (v0 + *(type metadata accessor for UpdateHistoryData() + 28));
  v3 = *v1;
  v4 = v1[1];

  return v3;
}

uint64_t UpdateHistoryData.init(operationRawValue:timestamp:titleForDisplay:splatBuildNumber:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v29 = a7;
  v24 = a1;
  v34 = a2;
  v26 = a3;
  v31 = a4;
  v28 = a5;
  v30 = a6;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v39 = 0;
  v40 = 0;
  v37 = 0;
  v38 = 0;
  v22 = 0;
  v35 = sub_99230();
  v32 = *(v35 - 8);
  v33 = v35 - 8;
  v23 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v25 = &v22 - v23;
  updated = type metadata accessor for UpdateHistoryData();
  v7 = (*(*(updated - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v25);
  v9 = v32;
  v36 = &v22 - v10;
  v43 = &v22 - v10;
  v42 = v24;
  v41 = v11;
  v39 = v26;
  v40 = v12;
  v37 = v13;
  v38 = v14;
  *(&v22 - v10) = v24;
  (*(v9 + 16))(v8);
  (*(v32 + 32))(&v36[updated[5]], v25, v35);

  v15 = v31;
  v16 = &v36[updated[6]];
  *v16 = v26;
  *(v16 + 1) = v15;

  v17 = v36;
  v18 = v29;
  v19 = v30;
  v20 = &v36[updated[7]];
  *v20 = v28;
  *(v20 + 1) = v19;
  sub_11334(v17, v18);

  (*(v32 + 8))(v34, v35);
  return sub_D668(v36);
}

uint64_t UpdateHistoryData.init(from:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v80 = a2;
  v97 = a1;
  v127 = 0;
  v126 = 0;
  v125 = 0;
  v120 = 0;
  v121 = 0;
  v116 = 0;
  v111 = 0;
  v112 = 0;
  v106 = 0;
  v107 = 0;
  v105 = 0;
  v2 = sub_22FC(&qword_B58B0, &qword_9C1D0);
  v81 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v82 = v23 - v81;
  v83 = 0;
  v84 = sub_99230();
  v85 = *(v84 - 8);
  v86 = v84 - 8;
  v87 = (*(v85 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v83);
  v88 = v23 - v87;
  v89 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v90 = v23 - v89;
  v127 = v23 - v89;
  updated = type metadata accessor for UpdateHistoryData();
  v92 = *(updated - 1);
  v93 = updated - 2;
  v94 = (*(v92 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v97);
  v95 = v23 - v94;
  v126 = v23 - v94;
  v125 = v5;
  v123[0] = sub_99B90("name", 4uLL, 1);
  v123[1] = v6;
  v96 = v122;
  sub_99F10();
  sub_99AE0();
  if (v124[3])
  {
    if (swift_dynamicCast())
    {
      v76 = v98;
      v77 = v99;
    }

    else
    {
      v76 = 0;
      v77 = 0;
    }

    v75 = v77;
    v74 = v76;
    sub_82858(v122);
    sub_CF00(v123);
    v78 = v74;
    v79 = v75;
  }

  else
  {
    sub_82858(v122);
    sub_CF00(v123);
    sub_82920(v124);
    v78 = 0;
    v79 = 0;
  }

  v72 = v79;
  v73 = v78;
  if (v79)
  {
    v70 = v73;
    v71 = v72;
    v67 = v72;
    v68 = v73;
    v120 = v73;
    v121 = v72;
    v118[0] = sub_99B90("operationType", 0xDuLL, 1);
    v118[1] = v7;
    v69 = v117;
    sub_99F10();
    sub_99AE0();
    if (v119[3])
    {
      if (swift_dynamicCast())
      {
        v63 = v100;
        v64 = 0;
      }

      else
      {
        v63 = 0;
        v64 = 1;
      }

      v62 = v64;
      v61 = v63;
      sub_82858(v117);
      sub_CF00(v118);
      v65 = v61;
      v66 = v62;
    }

    else
    {
      sub_82858(v117);
      sub_CF00(v118);
      sub_82920(v119);
      v65 = 0;
      v66 = 1;
    }

    v60 = v65;
    if (v66)
    {
      goto LABEL_18;
    }

    v59 = v60;
    v57 = v60;
    v116 = v60;
    v114[0] = sub_99B90("build", 5uLL, 1);
    v114[1] = v8;
    v58 = v113;
    sub_99F10();
    sub_99AE0();
    if (v115[3])
    {
      if (swift_dynamicCast())
      {
        v53 = v101;
        v54 = v102;
      }

      else
      {
        v53 = 0;
        v54 = 0;
      }

      v52 = v54;
      v51 = v53;
      sub_82858(v113);
      sub_CF00(v114);
      v55 = v51;
      v56 = v52;
    }

    else
    {
      sub_82858(v113);
      sub_CF00(v114);
      sub_82920(v115);
      v55 = 0;
      v56 = 0;
    }

    v49 = v56;
    v50 = v55;
    if (!v56)
    {
LABEL_18:
    }

    else
    {
      v47 = v50;
      v48 = v49;
      v44 = v49;
      v45 = v50;
      v111 = v50;
      v112 = v49;
      v109[0] = sub_99B90("date", 4uLL, 1);
      v109[1] = v9;
      v46 = v108;
      sub_99F10();
      sub_99AE0();
      if (v110[3])
      {
        if (swift_dynamicCast())
        {
          v40 = v103;
          v41 = v104;
        }

        else
        {
          v40 = 0;
          v41 = 0;
        }

        v39 = v41;
        v38 = v40;
        sub_82858(v108);
        sub_CF00(v109);
        v42 = v38;
        v43 = v39;
      }

      else
      {
        sub_82858(v108);
        sub_CF00(v109);
        sub_82920(v110);
        v42 = 0;
        v43 = 0;
      }

      v36 = v43;
      v37 = v42;
      if (v43)
      {
        v34 = v37;
        v35 = v36;
        v30 = v36;
        v29 = v37;
        v106 = v37;
        v107 = v36;
        sub_188F0();
        v31 = sub_18B80();
        v105 = v31;
        sub_99B90("yyyy-MM-dd HH:mm:ss", 0x13uLL, 1);
        v27 = v10;
        v28 = sub_99B20();

        [v31 setDateFormat:v28];
        _objc_release(v28);

        v32 = sub_99B20();

        v33 = [v31 dateFromString:v32];
        _objc_release(v32);
        if (v33)
        {
          v26 = v33;
          v25 = v33;
          sub_99220();
          (*(v85 + 32))(v82, v88, v84);
          (*(v85 + 56))(v82, 0, 1, v84);
          _objc_release(v25);
        }

        else
        {
          (*(v85 + 56))(v82, 1, 1, v84);
        }

        if ((*(v85 + 48))(v82, 1, v84) != 1)
        {
          v24 = *(v85 + 32);
          v23[1] = v85 + 32;
          v24(v90, v82, v84);
          v11 = v85;
          v12 = v90;
          v13 = v84;
          v14 = v88;
          *v95 = v57;
          (*(v11 + 16))(v14, v12, v13);
          v24(&v95[updated[5]], v88, v84);

          v15 = v67;
          v16 = &v95[updated[6]];
          *v16 = v68;
          *(v16 + 1) = v15;

          v17 = v90;
          v18 = v85;
          v19 = v84;
          v20 = v44;
          v21 = &v95[updated[7]];
          *v21 = v45;
          *(v21 + 1) = v20;
          (*(v18 + 8))(v17, v19);
          _objc_release(v31);

          sub_11334(v95, v80);
          (*(v92 + 56))(v80, 0, 1, updated);

          return sub_D668(v95);
        }

        sub_8295C(v82);
        _objc_release(v31);
      }

      else
      {
      }
    }
  }

  return (*(v92 + 56))(v80, 1, 1, updated);
}

uint64_t sub_82880(uint64_t *a1)
{
  v3 = a1[3];
  if ((*(*(v3 - 8) + 80) & 0x20000) == 0)
  {
    return (*(*(v3 - 8) + 8))(a1);
  }

  v2 = *a1;
}

uint64_t *sub_82920(uint64_t *a1)
{
  if (a1[3])
  {
    sub_7D280(a1);
  }

  return a1;
}

uint64_t sub_8295C(uint64_t a1)
{
  v3 = sub_99230();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

BOOL static UpdateHistoryData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v30 = a2;
  v40 = 0;
  v39 = 0;
  v32 = sub_99230();
  v33 = *(v32 - 8);
  v34 = v32 - 8;
  v35 = (v33[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v31);
  v36 = &v12[-v35];
  v37 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v38 = &v12[-v37];
  v40 = v4;
  v39 = v5;
  if (*v4 == *v5)
  {
    updated = type metadata accessor for UpdateHistoryData();
    v6 = v31 + updated[5];
    v26 = v33[2];
    v25 = v33 + 2;
    v26(v38, v6, v32);
    v26(v36, v30 + updated[5], v32);
    v29 = sub_99210();
    v28 = v33[1];
    v27 = v33 + 1;
    v28(v36, v32);
    v28(v38, v32);
    if (v29)
    {
      v7 = (v31 + updated[6]);
      v19 = *v7;
      v22 = v7[1];

      v8 = (v30 + updated[6]);
      v20 = *v8;
      v21 = v8[1];

      v23 = sub_99BA0();

      if (v23)
      {
        v9 = (v31 + updated[7]);
        v14 = *v9;
        v17 = v9[1];

        v10 = (v30 + updated[7]);
        v15 = *v10;
        v16 = v10[1];

        v18 = sub_99BA0();

        return (v18 & 1) != 0;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t UpdateHistoryData.isSameBuild(descriptor:)(void *a1)
{
  v33[2] = 0;
  v33[3] = a1;
  v33[0] = sub_99F70();
  v33[1] = v1;
  v34._countAndFlagsBits = sub_99B90("", 0, 1);
  sub_99F60(v34);

  v22 = [a1 productBuildVersion];
  if (v22)
  {
    v16 = sub_99B30();
    v17 = v2;
    _objc_release(v22);
    v18 = v16;
    v19 = v17;
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  v29 = v18;
  v30 = v19;
  if (v19)
  {
    v31 = v29;
    v32 = v30;
  }

  else
  {
    v31 = sub_99B90("", 0, 1);
    v32 = v3;
  }

  v28[0] = v31;
  v28[1] = v32;
  sub_99F50();
  sub_CF00(v28);
  v35._countAndFlagsBits = sub_99B90(" ", 1uLL, 1);
  sub_99F60(v35);

  v15 = [a1 productVersionExtra];
  if (v15)
  {
    v11 = sub_99B30();
    v12 = v4;
    _objc_release(v15);
    v13 = v11;
    v14 = v12;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v24 = v13;
  v25 = v14;
  if (v14)
  {
    v26 = v24;
    v27 = v25;
  }

  else
  {
    v26 = sub_99B90("", 0, 1);
    v27 = v5;
  }

  v23[0] = v26;
  v23[1] = v27;
  sub_99F50();
  sub_CF00(v23);
  v36._countAndFlagsBits = sub_99B90("", 0, 1);
  sub_99F60(v36);

  sub_8312C(v33);
  sub_99B80();
  v6 = (v20 + *(type metadata accessor for UpdateHistoryData() + 28));
  v8 = *v6;
  v9 = v6[1];

  v10 = sub_99BA0();

  return v10 & 1;
}

uint64_t sub_8312C(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t sub_83208(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = sub_99230();
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1 + *(a3 + 20), a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 24) + 8) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 24) + 8);
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_83358(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = sub_99230();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + *(a4 + 20), a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_83458()
{
  v2 = sub_99230();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_8351C(uint64_t a1, void *a2)
{
  v28 = a1;
  v34 = a2;
  v36 = sub_83BCC;
  v40 = sub_94174;
  v42 = sub_940F8;
  v44 = sub_9412C;
  v47 = sub_941C0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v27 = 0;
  v33 = sub_993B0();
  v31 = *(v33 - 8);
  v32 = v33 - 8;
  v29 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = v19 - v29;
  v30 = v19 - v29;
  v60 = __chkstk_darwin(v28);
  v59 = v3;
  v58 = v4;
  v5 = sub_81788();
  (*(v31 + 16))(v2, v5, v33);
  _objc_retain(v34);
  v38 = 7;
  v39 = swift_allocObject();
  *(v39 + 16) = v34;
  v51 = sub_99390();
  v52 = sub_99D60();
  v35 = 17;
  v43 = swift_allocObject();
  *(v43 + 16) = 32;
  v45 = swift_allocObject();
  *(v45 + 16) = 8;
  v37 = 32;
  v6 = swift_allocObject();
  v7 = v39;
  v41 = v6;
  *(v6 + 16) = v36;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v41;
  v48 = v8;
  *(v8 + 16) = v40;
  *(v8 + 24) = v9;
  v50 = sub_22FC(&unk_B5940, &unk_9A9A0);
  v46 = sub_99F80();
  v49 = v10;

  v11 = v43;
  v12 = v49;
  *v49 = v42;
  v12[1] = v11;

  v13 = v45;
  v14 = v49;
  v49[2] = v44;
  v14[3] = v13;

  v15 = v48;
  v16 = v49;
  v49[4] = v47;
  v16[5] = v15;
  sub_29D0();

  if (os_log_type_enabled(v51, v52))
  {
    v17 = v27;
    v20 = sub_99E40();
    v19[3] = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v21 = sub_F444(0);
    v22 = sub_F444(1);
    v23 = &v57;
    v57 = v20;
    v24 = &v56;
    v56 = v21;
    v25 = &v55;
    v55 = v22;
    sub_F498(2, &v57);
    sub_F498(1, v23);
    v53 = v42;
    v54 = v43;
    sub_F4AC(&v53, v23, v24, v25);
    v26 = v17;
    if (v17)
    {

      __break(1u);
    }

    else
    {
      v53 = v44;
      v54 = v45;
      sub_F4AC(&v53, &v57, &v56, &v55);
      v19[1] = 0;
      v53 = v47;
      v54 = v48;
      sub_F4AC(&v53, &v57, &v56, &v55);
      _os_log_impl(&dword_0, v51, v52, "Scan request started with options: %s", v20, 0xCu);
      sub_F5B0(v21);
      sub_F5B0(v22);
      sub_99E20();
    }
  }

  else
  {
  }

  _objc_release(v51);
  return (*(v31 + 8))(v30, v33);
}

uint64_t sub_83B28(void *a1)
{
  _objc_retain(a1);
  sub_7B3A8();
  sub_97D08();
  return sub_99B60();
}

uint64_t sub_83C74(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v140 = a4;
  v139 = a3;
  v141 = a2;
  v138 = a1;
  v167 = 0;
  v166 = 0;
  v165 = 0;
  v164 = 0;
  v163 = 0;
  v137 = 0;
  v142 = sub_993B0();
  v143 = *(v142 - 8);
  v144 = v143;
  v145 = *(v143 + 64);
  v5 = __chkstk_darwin(v141);
  v147 = (v145 + 15) & 0xFFFFFFFFFFFFFFF0;
  v146 = &v46 - v147;
  v6 = __chkstk_darwin(v5);
  v148 = &v46 - v147;
  v167 = v7;
  v166 = v6;
  v165 = v8;
  v164 = v9;
  v163 = v4;
  v149 = [v6 identifier];
  if (v149)
  {
    v136 = v149;
    v131 = v149;
    v132 = sub_99B30();
    v133 = v10;

    v134 = v132;
    v135 = v133;
  }

  else
  {
    v134 = 0;
    v135 = 0;
  }

  v126 = v135;
  v125 = v134;

  v11 = sub_4A9BC();
  v127 = *v11;
  v128 = v11[1];

  v124 = v128;

  v129 = v161;
  v130 = v162;
  v161[0] = v125;
  v161[1] = v126;
  v162[0] = v127;
  v162[1] = v128;
  if (v126)
  {
    sub_944CC(v129, &v152);
    if (v130[1])
    {
      v151 = v152;
      v150 = *v130;
      v122 = sub_99BA0();
      sub_CF00(&v150);
      sub_CF00(&v151);
      sub_48490(v129);
      v123 = v122;
      goto LABEL_10;
    }

    sub_CF00(&v152);
    goto LABEL_12;
  }

  if (v130[1])
  {
LABEL_12:
    sub_941CC(v161);
    v123 = 0;
    goto LABEL_10;
  }

  sub_48490(v129);
  v123 = 1;
LABEL_10:
  v121 = v123;

  if (v121)
  {
    v12 = v148;
    v13 = sub_81788();
    (*(v144 + 16))(v12, v13, v142);
    v14 = v139;
    v92 = 24;
    v106 = 7;
    v97 = swift_allocObject();
    *(v97 + 16) = v139;
    swift_errorRetain();
    v107 = swift_allocObject();
    *(v107 + 16) = v140;
    v120 = sub_99390();
    v93 = v120;
    v119 = sub_99D60();
    v94 = v119;
    v101 = 17;
    v110 = swift_allocObject();
    v95 = v110;
    v100 = 32;
    *(v110 + 16) = 32;
    v15 = swift_allocObject();
    v16 = v100;
    v111 = v15;
    v96 = v15;
    v103 = 8;
    *(v15 + 16) = 8;
    v105 = v16;
    v17 = swift_allocObject();
    v18 = v97;
    v98 = v17;
    *(v17 + 16) = sub_9427C;
    *(v17 + 24) = v18;
    v19 = swift_allocObject();
    v20 = v98;
    v112 = v19;
    v99 = v19;
    *(v19 + 16) = sub_94374;
    *(v19 + 24) = v20;
    v113 = swift_allocObject();
    v102 = v113;
    *(v113 + 16) = v100;
    v114 = swift_allocObject();
    v104 = v114;
    *(v114 + 16) = v103;
    v21 = swift_allocObject();
    v22 = v107;
    v108 = v21;
    *(v21 + 16) = sub_942C4;
    *(v21 + 24) = v22;
    v23 = swift_allocObject();
    v24 = v108;
    v117 = v23;
    v109 = v23;
    *(v23 + 16) = sub_94474;
    *(v23 + 24) = v24;
    v118 = sub_22FC(&unk_B5940, &unk_9A9A0);
    v115 = sub_99F80();
    v116 = v25;

    v26 = v110;
    v27 = v116;
    *v116 = sub_942F8;
    v27[1] = v26;

    v28 = v111;
    v29 = v116;
    v116[2] = sub_9432C;
    v29[3] = v28;

    v30 = v112;
    v31 = v116;
    v116[4] = sub_943C0;
    v31[5] = v30;

    v32 = v113;
    v33 = v116;
    v116[6] = sub_943F8;
    v33[7] = v32;

    v34 = v114;
    v35 = v116;
    v116[8] = sub_9442C;
    v35[9] = v34;

    v36 = v116;
    v37 = v117;
    v116[10] = sub_944C0;
    v36[11] = v37;
    sub_29D0();

    if (os_log_type_enabled(v120, v119))
    {
      v38 = v137;
      v85 = sub_99E40();
      v82 = v85;
      v83 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v86 = sub_F444(0);
      v84 = v86;
      v88 = 2;
      v87 = sub_F444(2);
      v157[0] = v85;
      v156 = v86;
      v155 = v87;
      v89 = v157;
      sub_F498(v88, v157);
      sub_F498(v88, v89);
      v153 = sub_942F8;
      v154 = v95;
      sub_F4AC(&v153, v89, &v156, &v155);
      v90 = v38;
      v91 = v38;
      if (v38)
      {
        v80 = 0;

        __break(1u);
      }

      else
      {
        v153 = sub_9432C;
        v154 = v96;
        sub_F4AC(&v153, v157, &v156, &v155);
        v78 = 0;
        v79 = 0;
        v153 = sub_943C0;
        v154 = v99;
        sub_F4AC(&v153, v157, &v156, &v155);
        v76 = 0;
        v77 = 0;
        v153 = sub_943F8;
        v154 = v102;
        sub_F4AC(&v153, v157, &v156, &v155);
        v74 = 0;
        v75 = 0;
        v153 = sub_9442C;
        v154 = v104;
        sub_F4AC(&v153, v157, &v156, &v155);
        v72 = 0;
        v73 = 0;
        v153 = sub_944C0;
        v154 = v109;
        sub_F4AC(&v153, v157, &v156, &v155);
        v70 = 0;
        v71 = 0;
        _os_log_impl(&dword_0, v93, v94, "Scan request finished - results: %s, error: %s", v82, 0x16u);
        sub_F5B0(v84);
        sub_F5B0(v87);
        sub_99E20();

        v81 = v70;
      }
    }

    else
    {
      v39 = v137;

      v81 = v39;
    }

    v68 = v81;

    (*(v144 + 8))(v148, v142);
    return v68;
  }

  else
  {
    v40 = v146;
    v41 = sub_81788();
    (*(v144 + 16))(v40, v41, v142);
    v66 = sub_99390();
    v63 = v66;
    v65 = sub_99D60();
    v64 = v65;
    sub_22FC(&unk_B5940, &unk_9A9A0);
    v67 = sub_99F80();
    if (os_log_type_enabled(v66, v65))
    {
      v43 = v137;
      v54 = sub_99E40();
      v50 = v54;
      v51 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v52 = 0;
      v55 = sub_F444(0);
      v53 = v55;
      v56 = sub_F444(v52);
      v160 = v54;
      v159 = v55;
      v158 = v56;
      v57 = 0;
      v58 = &v160;
      sub_F498(0, &v160);
      sub_F498(v57, v58);
      v157[2] = v67;
      v59 = &v46;
      __chkstk_darwin(&v46);
      v60 = &v46 - 6;
      *(&v46 - 4) = v44;
      *(&v46 - 3) = &v159;
      *(&v46 - 2) = &v158;
      v61 = sub_22FC(&unk_B5950, &qword_9A9B0);
      sub_F528();
      sub_99C20();
      v62 = v43;
      if (v43)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_0, v63, v64, "received scanRequestDidFinishFor, but from other client request. Options might not contains Splat updates search type, so ignoring as this is not a useful result for the BSI pane logic.", v50, 2u);
        v48 = 0;
        sub_F5B0(v53);
        sub_F5B0(v56);
        sub_99E20();

        v49 = v62;
      }
    }

    else
    {

      v49 = v137;
    }

    v47 = v49;

    (*(v144 + 8))(v146, v142);
    return v47;
  }
}

uint64_t sub_84E2C(void *a1)
{
  _objc_retain(a1);
  sub_22FC(&qword_B5870, &qword_9C150);
  return sub_99B50();
}

uint64_t sub_84E88()
{
  swift_errorRetain();
  sub_22FC(&unk_B59F0, &unk_9C128);
  return sub_99B50();
}

uint64_t sub_84FF8(uint64_t a1, uint64_t a2)
{
  v67 = a1;
  v68 = a2;
  v58 = sub_9454C;
  v59 = sub_94600;
  v60 = sub_94584;
  v61 = sub_945B8;
  v62 = sub_9464C;
  v63 = "Fatal error";
  v64 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v65 = "BackgroundSecurityImprovement/StatefulManager+SUManagerClientDelegate.swift";
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v80 = 0;
  v81 = 0;
  v66 = 0;
  v69 = sub_993B0();
  v70 = *(v69 - 8);
  v71 = v69 - 8;
  v72 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v68);
  v73 = v24 - v72;
  v88 = v4;
  v87 = v3;
  v86 = v2;
  v74 = [v3 descriptor];
  if (v74)
  {
    v57 = v74;
  }

  else
  {
    sub_99EF0();
    __break(1u);
  }

  v55 = v57;
  v56 = [v57 humanReadableUpdateName];
  if (v56)
  {
    v54 = v56;
    v49 = v56;
    v50 = sub_99B30();
    v51 = v5;
    _objc_release(v49);
    v52 = v50;
    v53 = v51;
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  v48 = v53;
  v47 = v52;
  _objc_release(v55);
  v82 = v47;
  v83 = v48;
  if (v48)
  {
    v84 = v82;
    v85 = v83;
  }

  else
  {
    v84 = sub_99B90("", 0, 1);
    v85 = v6;
    if (v83)
    {
      sub_48490(&v82);
    }
  }

  v7 = v73;
  v32 = v84;
  v33 = v85;
  v80 = v84;
  v81 = v85;
  v8 = sub_81788();
  (*(v70 + 16))(v7, v8, v69);

  v35 = 32;
  v36 = 7;
  v9 = swift_allocObject();
  v10 = v33;
  v37 = v9;
  *(v9 + 16) = v32;
  *(v9 + 24) = v10;
  v45 = sub_99390();
  v46 = sub_99D60();
  v34 = 17;
  v39 = swift_allocObject();
  *(v39 + 16) = 32;
  v40 = swift_allocObject();
  *(v40 + 16) = 8;
  v11 = swift_allocObject();
  v12 = v37;
  v38 = v11;
  *(v11 + 16) = v58;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v38;
  v42 = v13;
  *(v13 + 16) = v59;
  *(v13 + 24) = v14;
  v44 = sub_22FC(&unk_B5940, &unk_9A9A0);
  v41 = sub_99F80();
  v43 = v15;

  v16 = v39;
  v17 = v43;
  *v43 = v60;
  v17[1] = v16;

  v18 = v40;
  v19 = v43;
  v43[2] = v61;
  v19[3] = v18;

  v20 = v42;
  v21 = v43;
  v43[4] = v62;
  v21[5] = v20;
  sub_29D0();

  if (os_log_type_enabled(v45, v46))
  {
    v22 = v66;
    v25 = sub_99E40();
    v24[3] = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v26 = sub_F444(0);
    v27 = sub_F444(1);
    v28 = &v79;
    v79 = v25;
    v29 = &v78;
    v78 = v26;
    v30 = &v77;
    v77 = v27;
    sub_F498(2, &v79);
    sub_F498(1, v28);
    v75 = v60;
    v76 = v39;
    sub_F4AC(&v75, v28, v29, v30);
    v31 = v22;
    if (v22)
    {

      __break(1u);
    }

    else
    {
      v75 = v61;
      v76 = v40;
      sub_F4AC(&v75, &v79, &v78, &v77);
      v24[1] = 0;
      v75 = v62;
      v76 = v42;
      sub_F4AC(&v75, &v79, &v78, &v77);
      _os_log_impl(&dword_0, v45, v46, "Download started for update: %s", v25, 0xCu);
      sub_F5B0(v26);
      sub_F5B0(v27);
      sub_99E20();
    }
  }

  else
  {
  }

  _objc_release(v45);
  (*(v70 + 8))(v73, v69);
}

uint64_t sub_859CC(uint64_t a1, void *a2)
{
  v127 = a1;
  v128 = a2;
  v110 = sub_94698;
  v111 = sub_9479C;
  v112 = sub_946EC;
  v113 = sub_94720;
  v114 = sub_94754;
  v115 = sub_947E8;
  v116 = sub_94820;
  v117 = sub_94854;
  v118 = sub_9489C;
  v119 = &protocol witness table for MainActor;
  v120 = &unk_9C260;
  v121 = "Fatal error";
  v122 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v123 = "BackgroundSecurityImprovement/StatefulManager+SUManagerClientDelegate.swift";
  v151 = 0;
  v150 = 0;
  v149 = 0;
  v143 = 0;
  v144 = 0;
  v142 = 0;
  v140 = 0;
  v141 = 0;
  v124 = 0;
  v3 = sub_22FC(&unk_B5960, &qword_9BC48);
  v125 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v126 = &v45 - v125;
  v129 = sub_993B0();
  v130 = *(v129 - 8);
  v131 = v129 - 8;
  v132 = (*(v130 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v128);
  v133 = &v45 - v132;
  v151 = v5;
  v150 = v4;
  v149 = v2;
  v134 = [v4 descriptor];
  if (v134)
  {
    v108 = v134;
  }

  else
  {
    sub_99EF0();
    __break(1u);
  }

  v106 = v108;
  v107 = [v108 humanReadableUpdateName];
  if (v107)
  {
    v105 = v107;
    v100 = v107;
    v101 = sub_99B30();
    v102 = v6;
    _objc_release(v100);
    v103 = v101;
    v104 = v102;
  }

  else
  {
    v103 = 0;
    v104 = 0;
  }

  v99 = v104;
  v98 = v103;
  _objc_release(v106);
  v145 = v98;
  v146 = v99;
  if (v99)
  {
    v147 = v145;
    v148 = v146;
  }

  else
  {
    v147 = sub_99B90("", 0, 1);
    v148 = v7;
    if (v146)
    {
      sub_48490(&v145);
    }
  }

  v8 = v133;
  v78 = v147;
  v79 = v148;
  v143 = v147;
  v144 = v148;
  v9 = sub_81788();
  (*(v130 + 16))(v8, v9, v129);

  v84 = 32;
  v85 = 7;
  v10 = swift_allocObject();
  v11 = v79;
  v12 = v10;
  v13 = v128;
  v80 = v12;
  *(v12 + 16) = v78;
  *(v12 + 24) = v11;
  _objc_retain(v13);
  v86 = swift_allocObject();
  *(v86 + 16) = v128;
  sub_86A7C();

  v96 = sub_99390();
  v97 = sub_99D60();
  v82 = 17;
  v87 = swift_allocObject();
  *(v87 + 16) = 32;
  v88 = swift_allocObject();
  v83 = 8;
  *(v88 + 16) = 8;
  v14 = swift_allocObject();
  v15 = v80;
  v81 = v14;
  *(v14 + 16) = v110;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v81;
  v89 = v16;
  *(v16 + 16) = v111;
  *(v16 + 24) = v17;
  v90 = swift_allocObject();
  *(v90 + 16) = 64;
  v91 = swift_allocObject();
  *(v91 + 16) = v83;
  v18 = swift_allocObject();
  v19 = v86;
  v93 = v18;
  *(v18 + 16) = v112;
  *(v18 + 24) = v19;
  v95 = sub_22FC(&unk_B5940, &unk_9A9A0);
  v92 = sub_99F80();
  v94 = v20;

  v21 = v87;
  v22 = v94;
  *v94 = v113;
  v22[1] = v21;

  v23 = v88;
  v24 = v94;
  v94[2] = v114;
  v24[3] = v23;

  v25 = v89;
  v26 = v94;
  v94[4] = v115;
  v26[5] = v25;

  v27 = v90;
  v28 = v94;
  v94[6] = v116;
  v28[7] = v27;

  v29 = v91;
  v30 = v94;
  v94[8] = v117;
  v30[9] = v29;

  v31 = v93;
  v32 = v94;
  v94[10] = v118;
  v32[11] = v31;
  sub_29D0();

  if (os_log_type_enabled(v96, v97))
  {
    v33 = v124;
    v70 = sub_99E40();
    v68 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v69 = 1;
    v71 = sub_F444(1);
    v72 = sub_F444(v69);
    v74 = &v139;
    v139 = v70;
    v75 = &v138;
    v138 = v71;
    v76 = &v137;
    v137 = v72;
    v73 = 2;
    sub_F498(2, &v139);
    sub_F498(v73, v74);
    v135 = v113;
    v136 = v87;
    sub_F4AC(&v135, v74, v75, v76);
    v77 = v33;
    if (v33)
    {

      __break(1u);
    }

    else
    {
      v135 = v114;
      v136 = v88;
      sub_F4AC(&v135, &v139, &v138, &v137);
      v67 = 0;
      v135 = v115;
      v136 = v89;
      sub_F4AC(&v135, &v139, &v138, &v137);
      v66 = 0;
      v135 = v116;
      v136 = v90;
      sub_F4AC(&v135, &v139, &v138, &v137);
      v65 = 0;
      v135 = v117;
      v136 = v91;
      sub_F4AC(&v135, &v139, &v138, &v137);
      v64 = 0;
      v135 = v118;
      v136 = v93;
      sub_F4AC(&v135, &v139, &v138, &v137);
      _os_log_impl(&dword_0, v96, v97, "Download progress changed for update: %s, progress: %@", v70, 0x16u);
      v63 = 1;
      sub_F5B0(v71);
      sub_F5B0(v72);
      sub_99E20();
    }
  }

  else
  {
  }

  _objc_release(v96);
  (*(v130 + 8))(v133, v129);
  v62 = [v128 descriptor];
  v142 = v62;
  _objc_retain(v62);
  if (v62)
  {
    v61 = v62;
    v59 = v62;
    v60 = [v62 productBuildVersion];
    if (v60)
    {
      v58 = v60;
      v53 = v60;
      v54 = sub_99B30();
      v55 = v34;
      _objc_release(v53);
      v56 = v54;
      v57 = v55;
    }

    else
    {
      v56 = 0;
      v57 = 0;
    }

    v50 = v57;
    v49 = v56;
    _objc_release(v59);
    v51 = v49;
    v52 = v50;
  }

  else
  {
    v51 = 0;
    v52 = 0;
  }

  v48 = v52;
  v45 = v51;
  v140 = v51;
  v141 = v52;
  v46 = 0;
  v35 = sub_99D00();
  (*(*(v35 - 8) + 56))(v126, 1);

  _objc_retain(v109);
  sub_99CD0();
  v47 = sub_99CC0();
  v36 = swift_allocObject();
  v37 = v119;
  v38 = v45;
  v39 = v109;
  v40 = v46;
  v41 = v126;
  v42 = v120;
  v43 = v48;
  v36[2] = v47;
  v36[3] = v37;
  v36[4] = v38;
  v36[5] = v43;
  v36[6] = v39;
  sub_2A6F4(v40, v40, v41, v42, v36, &type metadata for () + 8);

  _objc_release(v62);
}

id sub_86A18(void *a1)
{
  v3 = [a1 progress];
  if (v3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_86AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a6;
  v6[19] = a5;
  v6[18] = a4;
  v6[16] = v6;
  v6[6] = 0;
  v6[7] = 0;
  v6[17] = 0;
  v6[8] = 0;
  v6[9] = 0;
  v6[6] = a4;
  v6[7] = a5;
  v6[17] = a6;
  sub_99CD0();
  v6[21] = sub_99CC0();
  v7 = sub_99CA0();
  v8 = v6[16];

  return _swift_task_switch(sub_86B80, v7);
}

uint64_t sub_86B80()
{
  v27 = *(v0 + 152);
  *(v0 + 128) = v0;

  if (v27)
  {
    v24 = *(v26 + 152);
    v1 = *(v26 + 160);
    *(v26 + 64) = *(v26 + 144);
    *(v26 + 72) = v24;

    v2 = sub_4CE5C();
    v25 = v2;
    if (v2)
    {
      v3 = [v2 productBuildVersion];
      v23 = v3;
      if (v3)
      {
        v17 = sub_99B30();
        v18 = v4;
        _objc_release(v23);
        v19 = v17;
        v20 = v18;
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

      _objc_release(v25);
      v21 = v19;
      v22 = v20;
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    v16 = *(v26 + 144);

    *(v26 + 16) = v16;
    *(v26 + 24) = v24;
    *(v26 + 32) = v21;
    *(v26 + 40) = v22;
    if (*(v26 + 24))
    {
      sub_944CC((v26 + 16), (v26 + 80));
      if (*(v26 + 40))
      {
        *(v26 + 96) = *(v26 + 80);
        *(v26 + 112) = *(v26 + 32);
        v5 = *(v26 + 96);
        v6 = *(v26 + 104);
        v7 = *(v26 + 112);
        v8 = *(v26 + 120);
        v15 = sub_99BA0();
        sub_CF00(v26 + 112);
        sub_CF00(v26 + 96);
        sub_48490(v26 + 16);

        if ((v15 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_20:
        v9 = *(v26 + 160);
        v10 = sub_5104C();
        sub_51058(0xC000000000000020, v10 & 1);

        goto LABEL_22;
      }

      sub_CF00(v26 + 80);
    }

    else if (!*(v26 + 40))
    {
      sub_48490(v26 + 16);

      goto LABEL_20;
    }

    sub_941CC(v26 + 16);

LABEL_21:
  }

LABEL_22:
  v11 = *(v26 + 168);

  v12 = *(*(v26 + 128) + 8);
  v13 = *(v26 + 128);

  return v12();
}

uint64_t sub_870A8(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v59 = a1;
  v74 = 0;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v58 = 0;
  v69 = sub_993B0();
  v61 = v69;
  v62 = *(v69 - 8);
  v68 = v62;
  v63 = v62;
  v64 = *(v62 + 64);
  v2 = __chkstk_darwin(v59);
  v66 = (v64 + 15) & 0xFFFFFFFFFFFFFFF0;
  v65 = &v15 - v66;
  v3 = __chkstk_darwin(v2);
  v4 = &v15 - v66;
  v67 = &v15 - v66;
  v88 = v3;
  v87 = v5;
  v86 = v6;
  v7 = sub_81788();
  v70 = *(v68 + 16);
  v71 = (v68 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v70(v4, v7, v69);
  v77 = sub_99390();
  v72 = v77;
  v76 = sub_99D60();
  v73 = v76;
  v75 = sub_22FC(&unk_B5940, &unk_9A9A0);
  v78 = sub_99F80();
  if (os_log_type_enabled(v77, v76))
  {
    v8 = v58;
    v49 = sub_99E40();
    v45 = v49;
    v46 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v47 = 0;
    v50 = sub_F444(0);
    v48 = v50;
    v51 = sub_F444(v47);
    v82[0] = v49;
    v81 = v50;
    v80 = v51;
    v52 = 0;
    v53 = v82;
    sub_F498(0, v82);
    sub_F498(v52, v53);
    v79 = v78;
    v54 = &v15;
    __chkstk_darwin(&v15);
    v55 = &v15 - 6;
    *(&v15 - 4) = v9;
    *(&v15 - 3) = &v81;
    *(&v15 - 2) = &v80;
    v56 = sub_22FC(&unk_B5950, &qword_9A9B0);
    sub_F528();
    sub_99C20();
    v57 = v8;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v72, v73, "Received download was invalidated", v45, 2u);
      v43 = 0;
      sub_F5B0(v48);
      sub_F5B0(v51);
      sub_99E20();

      v44 = v57;
    }
  }

  else
  {

    v44 = v58;
  }

  v38 = v44;

  v39 = *(v63 + 8);
  v40 = (v63 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v39(v67, v61);
  v41 = sub_4E140();
  v42 = sub_21160(v41, 0xC000000000000020);
  sub_109F4(v41);
  if ((v42 & 1) == 0)
  {
    return v38;
  }

  v10 = v65;
  v11 = sub_81788();
  v70(v10, v11, v61);
  v36 = sub_99390();
  v33 = v36;
  v35 = sub_99D60();
  v34 = v35;
  v37 = sub_99F80();
  if (os_log_type_enabled(v36, v35))
  {
    v12 = v38;
    v24 = sub_99E40();
    v20 = v24;
    v21 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v22 = 0;
    v25 = sub_F444(0);
    v23 = v25;
    v26 = sub_F444(v22);
    v85 = v24;
    v84 = v25;
    v83 = v26;
    v27 = 0;
    v28 = &v85;
    sub_F498(0, &v85);
    sub_F498(v27, v28);
    v82[2] = v37;
    v29 = &v15;
    __chkstk_darwin(&v15);
    v30 = &v15 - 6;
    *(&v15 - 4) = v13;
    *(&v15 - 3) = &v84;
    *(&v15 - 2) = &v83;
    v31 = sub_22FC(&unk_B5950, &qword_9A9B0);
    sub_F528();
    sub_99C20();
    v32 = v12;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v33, v34, "current download was invalidated, start a new scan", v20, 2u);
      v18 = 0;
      sub_F5B0(v23);
      sub_F5B0(v26);
      sub_99E20();

      v19 = v32;
    }
  }

  else
  {

    v19 = v38;
  }

  v16 = v19;

  v39(v65, v61);
  sub_5AFDC();
  return v16;
}

uint64_t sub_879D0(uint64_t a1, void *a2, uint64_t a3)
{
  v104 = a1;
  v106 = a2;
  v105 = a3;
  v91 = sub_94BB8;
  v92 = sub_94C6C;
  v93 = sub_94BF0;
  v94 = sub_94C24;
  v95 = sub_94CB8;
  v96 = &protocol witness table for MainActor;
  v97 = &unk_9C270;
  v98 = "Fatal error";
  v99 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v100 = "BackgroundSecurityImprovement/StatefulManager+SUManagerClientDelegate.swift";
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v126 = 0;
  v120 = 0;
  v121 = 0;
  v118 = 0;
  v119 = 0;
  v101 = 0;
  v4 = sub_22FC(&unk_B5960, &qword_9BC48);
  v102 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v103 = &v37 - v102;
  v107 = sub_993B0();
  v108 = *(v107 - 8);
  v109 = v107 - 8;
  v110 = (*(v108 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v106);
  v111 = &v37 - v110;
  v129 = v6;
  v128 = v5;
  v127 = v7;
  v126 = v3;
  v112 = [v5 descriptor];
  if (v112)
  {
    v89 = v112;
  }

  else
  {
    sub_99EF0();
    __break(1u);
  }

  v87 = v89;
  v88 = [v89 humanReadableUpdateName];
  if (v88)
  {
    v86 = v88;
    v81 = v88;
    v82 = sub_99B30();
    v83 = v8;
    _objc_release(v81);
    v84 = v82;
    v85 = v83;
  }

  else
  {
    v84 = 0;
    v85 = 0;
  }

  v80 = v85;
  v79 = v84;
  _objc_release(v87);
  v122 = v79;
  v123 = v80;
  if (v80)
  {
    v124 = v122;
    v125 = v123;
  }

  else
  {
    v124 = sub_99B90("", 0, 1);
    v125 = v9;
    if (v123)
    {
      sub_48490(&v122);
    }
  }

  v10 = v111;
  v64 = v124;
  v65 = v125;
  v120 = v124;
  v121 = v125;
  v11 = sub_81788();
  (*(v108 + 16))(v10, v11, v107);

  v67 = 32;
  v68 = 7;
  v12 = swift_allocObject();
  v13 = v65;
  v69 = v12;
  *(v12 + 16) = v64;
  *(v12 + 24) = v13;
  v77 = sub_99390();
  v78 = sub_99D60();
  v66 = 17;
  v71 = swift_allocObject();
  *(v71 + 16) = 32;
  v72 = swift_allocObject();
  *(v72 + 16) = 8;
  v14 = swift_allocObject();
  v15 = v69;
  v70 = v14;
  *(v14 + 16) = v91;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v70;
  v74 = v16;
  *(v16 + 16) = v92;
  *(v16 + 24) = v17;
  v76 = sub_22FC(&unk_B5940, &unk_9A9A0);
  v73 = sub_99F80();
  v75 = v18;

  v19 = v71;
  v20 = v75;
  *v75 = v93;
  v20[1] = v19;

  v21 = v72;
  v22 = v75;
  v75[2] = v94;
  v22[3] = v21;

  v23 = v74;
  v24 = v75;
  v75[4] = v95;
  v24[5] = v23;
  sub_29D0();

  if (os_log_type_enabled(v77, v78))
  {
    v25 = v101;
    v57 = sub_99E40();
    v56 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v58 = sub_F444(0);
    v59 = sub_F444(1);
    v60 = &v117;
    v117 = v57;
    v61 = &v116;
    v116 = v58;
    v62 = &v115;
    v115 = v59;
    sub_F498(2, &v117);
    sub_F498(1, v60);
    v113 = v93;
    v114 = v71;
    sub_F4AC(&v113, v60, v61, v62);
    v63 = v25;
    if (v25)
    {

      __break(1u);
    }

    else
    {
      v113 = v94;
      v114 = v72;
      sub_F4AC(&v113, &v117, &v116, &v115);
      v55 = 0;
      v113 = v95;
      v114 = v74;
      sub_F4AC(&v113, &v117, &v116, &v115);
      _os_log_impl(&dword_0, v77, v78, "Download finished for update: %s", v57, 0xCu);
      sub_F5B0(v58);
      sub_F5B0(v59);
      sub_99E20();
    }
  }

  else
  {
  }

  _objc_release(v77);
  (*(v108 + 8))(v111, v107);
  v54 = [v106 descriptor];
  if (v54)
  {
    v53 = v54;
    v51 = v54;
    v52 = [v54 productBuildVersion];
    if (v52)
    {
      v50 = v52;
      v45 = v52;
      v46 = sub_99B30();
      v47 = v26;
      _objc_release(v45);
      v48 = v46;
      v49 = v47;
    }

    else
    {
      v48 = 0;
      v49 = 0;
    }

    v42 = v49;
    v41 = v48;
    _objc_release(v51);
    v43 = v41;
    v44 = v42;
  }

  else
  {
    v43 = 0;
    v44 = 0;
  }

  v40 = v44;
  v37 = v43;
  v118 = v43;
  v119 = v44;
  v38 = 0;
  v27 = sub_99D00();
  (*(*(v27 - 8) + 56))(v103, 1);

  _objc_retain(v90);
  sub_99CD0();
  v39 = sub_99CC0();
  v28 = swift_allocObject();
  v29 = v96;
  v30 = v37;
  v31 = v90;
  v32 = v38;
  v33 = v103;
  v34 = v97;
  v35 = v40;
  v28[2] = v39;
  v28[3] = v29;
  v28[4] = v30;
  v28[5] = v35;
  v28[6] = v31;
  sub_2A6F4(v32, v32, v33, v34, v28, &type metadata for () + 8);
}

uint64_t sub_8869C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a6;
  v6[20] = a5;
  v6[19] = a4;
  v6[16] = v6;
  v6[6] = 0;
  v6[7] = 0;
  v6[17] = 0;
  v6[8] = 0;
  v6[9] = 0;
  v6[18] = 0;
  v6[6] = a4;
  v6[7] = a5;
  v6[17] = a6;
  sub_99CD0();
  v6[22] = sub_99CC0();
  v7 = sub_99CA0();
  v8 = v6[16];

  return _swift_task_switch(sub_88778, v7);
}

uint64_t sub_88778()
{
  v28 = *(v0 + 160);
  *(v0 + 128) = v0;

  if (v28)
  {
    v25 = *(v27 + 160);
    v1 = *(v27 + 168);
    *(v27 + 64) = *(v27 + 152);
    *(v27 + 72) = v25;

    v2 = sub_4CE5C();
    v26 = v2;
    if (v2)
    {
      v3 = [v2 productBuildVersion];
      v24 = v3;
      if (v3)
      {
        v18 = sub_99B30();
        v19 = v4;
        _objc_release(v24);
        v20 = v18;
        v21 = v19;
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }

      _objc_release(v26);
      v22 = v20;
      v23 = v21;
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    v17 = *(v27 + 152);

    *(v27 + 16) = v17;
    *(v27 + 24) = v25;
    *(v27 + 32) = v22;
    *(v27 + 40) = v23;
    if (*(v27 + 24))
    {
      sub_944CC((v27 + 16), (v27 + 80));
      if (*(v27 + 40))
      {
        *(v27 + 96) = *(v27 + 80);
        *(v27 + 112) = *(v27 + 32);
        v5 = *(v27 + 96);
        v6 = *(v27 + 104);
        v7 = *(v27 + 112);
        v8 = *(v27 + 120);
        v16 = sub_99BA0();
        sub_CF00(v27 + 112);
        sub_CF00(v27 + 96);
        sub_48490(v27 + 16);

        if ((v16 & 1) == 0)
        {
          goto LABEL_22;
        }

LABEL_20:
        v9 = *(v27 + 168);
        v15 = sub_4CE5C();
        if (v15)
        {
          v10 = *(v27 + 168);
          *(v27 + 144) = v15;
          sub_61380(v15, 1, 0);
          _objc_release(v15);
        }

        goto LABEL_22;
      }

      sub_CF00(v27 + 80);
    }

    else if (!*(v27 + 40))
    {
      sub_48490(v27 + 16);

      goto LABEL_20;
    }

    sub_941CC(v27 + 16);

LABEL_22:
  }

  v11 = *(v27 + 176);

  v12 = *(*(v27 + 128) + 8);
  v13 = *(v27 + 128);

  return v12();
}

uint64_t sub_88D44(uint64_t a1, void *a2, uint64_t a3)
{
  v131 = a1;
  v133 = a2;
  v132 = a3;
  v113 = sub_94F74;
  v114 = sub_95070;
  v115 = sub_94FC0;
  v116 = sub_95170;
  v117 = sub_94FF4;
  v118 = sub_95028;
  v119 = sub_950BC;
  v120 = sub_950F4;
  v121 = sub_95128;
  v122 = sub_951BC;
  v123 = &protocol witness table for MainActor;
  v124 = &unk_9C280;
  v125 = "Fatal error";
  v126 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v127 = "BackgroundSecurityImprovement/StatefulManager+SUManagerClientDelegate.swift";
  v156 = 0;
  v155 = 0;
  v154 = 0;
  v153 = 0;
  v147 = 0;
  v148 = 0;
  v145 = 0;
  v146 = 0;
  v128 = 0;
  v4 = sub_22FC(&unk_B5960, &qword_9BC48);
  v129 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v130 = &v48 - v129;
  v134 = sub_993B0();
  v135 = *(v134 - 8);
  v136 = v134 - 8;
  v137 = (*(v135 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v133);
  v138 = &v48 - v137;
  v156 = v6;
  v155 = v5;
  v154 = v7;
  v153 = v3;
  v139 = [v5 descriptor];
  if (v139)
  {
    v111 = v139;
  }

  else
  {
    sub_99EF0();
    __break(1u);
  }

  v109 = v111;
  v110 = [v111 humanReadableUpdateName];
  if (v110)
  {
    v108 = v110;
    v103 = v110;
    v104 = sub_99B30();
    v105 = v8;
    _objc_release(v103);
    v106 = v104;
    v107 = v105;
  }

  else
  {
    v106 = 0;
    v107 = 0;
  }

  v102 = v107;
  v101 = v106;
  _objc_release(v109);
  v149 = v101;
  v150 = v102;
  if (v102)
  {
    v151 = v149;
    v152 = v150;
  }

  else
  {
    v151 = sub_99B90("", 0, 1);
    v152 = v9;
    if (v150)
    {
      sub_48490(&v149);
    }
  }

  v10 = v138;
  v79 = v151;
  v80 = v152;
  v147 = v151;
  v148 = v152;
  v11 = sub_81788();
  (*(v135 + 16))(v10, v11, v134);

  v86 = 32;
  v87 = 7;
  v12 = swift_allocObject();
  v13 = v80;
  v81 = v12;
  *(v12 + 16) = v79;
  *(v12 + 24) = v13;
  swift_errorRetain();
  v88 = swift_allocObject();
  *(v88 + 16) = v132;
  v99 = sub_99390();
  v100 = sub_99D80();
  v84 = 17;
  v90 = swift_allocObject();
  v83 = 32;
  *(v90 + 16) = 32;
  v91 = swift_allocObject();
  v85 = 8;
  *(v91 + 16) = 8;
  v14 = swift_allocObject();
  v15 = v81;
  v82 = v14;
  *(v14 + 16) = v113;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v82;
  v92 = v16;
  *(v16 + 16) = v114;
  *(v16 + 24) = v17;
  v93 = swift_allocObject();
  *(v93 + 16) = v83;
  v94 = swift_allocObject();
  *(v94 + 16) = v85;
  v18 = swift_allocObject();
  v19 = v88;
  v89 = v18;
  *(v18 + 16) = v115;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v89;
  v96 = v20;
  *(v20 + 16) = v116;
  *(v20 + 24) = v21;
  v98 = sub_22FC(&unk_B5940, &unk_9A9A0);
  v95 = sub_99F80();
  v97 = v22;

  v23 = v90;
  v24 = v97;
  *v97 = v117;
  v24[1] = v23;

  v25 = v91;
  v26 = v97;
  v97[2] = v118;
  v26[3] = v25;

  v27 = v92;
  v28 = v97;
  v97[4] = v119;
  v28[5] = v27;

  v29 = v93;
  v30 = v97;
  v97[6] = v120;
  v30[7] = v29;

  v31 = v94;
  v32 = v97;
  v97[8] = v121;
  v32[9] = v31;

  v33 = v96;
  v34 = v97;
  v97[10] = v122;
  v34[11] = v33;
  sub_29D0();

  if (os_log_type_enabled(v99, v100))
  {
    v35 = v128;
    v71 = sub_99E40();
    v70 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v72 = sub_F444(0);
    v73 = sub_F444(2);
    v75 = &v144;
    v144 = v71;
    v76 = &v143;
    v143 = v72;
    v77 = &v142;
    v142 = v73;
    v74 = 2;
    sub_F498(2, &v144);
    sub_F498(v74, v75);
    v140 = v117;
    v141 = v90;
    sub_F4AC(&v140, v75, v76, v77);
    v78 = v35;
    if (v35)
    {

      __break(1u);
    }

    else
    {
      v140 = v118;
      v141 = v91;
      sub_F4AC(&v140, &v144, &v143, &v142);
      v69 = 0;
      v140 = v119;
      v141 = v92;
      sub_F4AC(&v140, &v144, &v143, &v142);
      v68 = 0;
      v140 = v120;
      v141 = v93;
      sub_F4AC(&v140, &v144, &v143, &v142);
      v67 = 0;
      v140 = v121;
      v141 = v94;
      sub_F4AC(&v140, &v144, &v143, &v142);
      v66 = 0;
      v140 = v122;
      v141 = v96;
      sub_F4AC(&v140, &v144, &v143, &v142);
      _os_log_impl(&dword_0, v99, v100, "Download failed for update: %s, error: %s", v71, 0x16u);
      sub_F5B0(v72);
      sub_F5B0(v73);
      sub_99E20();
    }
  }

  else
  {
  }

  _objc_release(v99);
  (*(v135 + 8))(v138, v134);
  v65 = [v133 descriptor];
  if (v65)
  {
    v64 = v65;
    v62 = v65;
    v63 = [v65 productBuildVersion];
    if (v63)
    {
      v61 = v63;
      v56 = v63;
      v57 = sub_99B30();
      v58 = v36;
      _objc_release(v56);
      v59 = v57;
      v60 = v58;
    }

    else
    {
      v59 = 0;
      v60 = 0;
    }

    v53 = v60;
    v52 = v59;
    _objc_release(v62);
    v54 = v52;
    v55 = v53;
  }

  else
  {
    v54 = 0;
    v55 = 0;
  }

  v51 = v55;
  v48 = v54;
  v145 = v54;
  v146 = v55;
  v49 = 0;
  v37 = sub_99D00();
  (*(*(v37 - 8) + 56))(v130, 1);

  _objc_retain(v112);
  swift_errorRetain();
  sub_99CD0();
  v50 = sub_99CC0();
  v38 = swift_allocObject();
  v39 = v123;
  v40 = v48;
  v41 = v112;
  v42 = v132;
  v43 = v49;
  v44 = v130;
  v45 = v124;
  v46 = v51;
  v38[2] = v50;
  v38[3] = v39;
  v38[4] = v40;
  v38[5] = v46;
  v38[6] = v41;
  v38[7] = v42;
  sub_2A6F4(v43, v43, v44, v45, v38, &type metadata for () + 8);
}

uint64_t sub_89E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a7;
  v7[21] = a6;
  v7[20] = a5;
  v7[19] = a4;
  v7[16] = v7;
  v7[6] = 0;
  v7[7] = 0;
  v7[17] = 0;
  v7[18] = 0;
  v7[8] = 0;
  v7[9] = 0;
  v7[6] = a4;
  v7[7] = a5;
  v7[17] = a6;
  v7[18] = a7;
  sub_99CD0();
  v7[23] = sub_99CC0();
  v8 = sub_99CA0();
  v9 = v7[16];

  return _swift_task_switch(sub_89EEC, v8);
}

uint64_t sub_89EEC()
{
  v28 = *(v0 + 160);
  *(v0 + 128) = v0;

  if (v28)
  {
    v25 = *(v27 + 160);
    v1 = *(v27 + 168);
    *(v27 + 64) = *(v27 + 152);
    *(v27 + 72) = v25;

    v2 = sub_4CE5C();
    v26 = v2;
    if (v2)
    {
      v3 = [v2 productBuildVersion];
      v24 = v3;
      if (v3)
      {
        v18 = sub_99B30();
        v19 = v4;
        _objc_release(v24);
        v20 = v18;
        v21 = v19;
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }

      _objc_release(v26);
      v22 = v20;
      v23 = v21;
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    v17 = *(v27 + 152);

    *(v27 + 16) = v17;
    *(v27 + 24) = v25;
    *(v27 + 32) = v22;
    *(v27 + 40) = v23;
    if (*(v27 + 24))
    {
      sub_944CC((v27 + 16), (v27 + 80));
      if (*(v27 + 40))
      {
        *(v27 + 96) = *(v27 + 80);
        *(v27 + 112) = *(v27 + 32);
        v5 = *(v27 + 96);
        v6 = *(v27 + 104);
        v7 = *(v27 + 112);
        v8 = *(v27 + 120);
        v16 = sub_99BA0();
        sub_CF00(v27 + 112);
        sub_CF00(v27 + 96);
        sub_48490(v27 + 16);

        if ((v16 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_20:
        v15 = *(v27 + 176);
        v9 = *(v27 + 168);
        swift_errorRetain();
        v10 = sub_5104C();
        sub_51058(v15, v10 & 1);
        sub_109F4(v15);

        goto LABEL_22;
      }

      sub_CF00(v27 + 80);
    }

    else if (!*(v27 + 40))
    {
      sub_48490(v27 + 16);

      goto LABEL_20;
    }

    sub_941CC(v27 + 16);

LABEL_21:
  }

LABEL_22:
  v11 = *(v27 + 184);

  v12 = *(*(v27 + 128) + 8);
  v13 = *(v27 + 128);

  return v12();
}

uint64_t sub_8A4B0(uint64_t a1, void *a2, int a3)
{
  v137 = a1;
  v139 = a2;
  v138 = a3;
  v117 = sub_95478;
  v118 = sub_95578;
  v119 = sub_955C4;
  v120 = sub_95610;
  v121 = sub_954C4;
  v122 = sub_95778;
  v123 = sub_954FC;
  v124 = sub_95530;
  v125 = sub_9565C;
  v126 = sub_956FC;
  v127 = sub_95730;
  v128 = sub_957C4;
  v129 = &protocol witness table for MainActor;
  v130 = &unk_9C290;
  v131 = "Fatal error";
  v132 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v133 = "BackgroundSecurityImprovement/StatefulManager+SUManagerClientDelegate.swift";
  v162 = 0;
  v161 = 0;
  v160 = 0;
  v159 = 0;
  v153 = 0;
  v154 = 0;
  v151 = 0;
  v152 = 0;
  v134 = 0;
  v4 = sub_22FC(&unk_B5960, &qword_9BC48);
  v135 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v136 = &v52 - v135;
  v140 = sub_993B0();
  v141 = *(v140 - 8);
  v142 = v140 - 8;
  v143 = (*(v141 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v139);
  v144 = &v52 - v143;
  v162 = v6;
  v161 = v5;
  v160 = v7 & 1;
  v159 = v3;
  v145 = [v5 descriptor];
  if (v145)
  {
    v115 = v145;
  }

  else
  {
    sub_99EF0();
    __break(1u);
  }

  v113 = v115;
  v114 = [v115 humanReadableUpdateName];
  if (v114)
  {
    v112 = v114;
    v107 = v114;
    v108 = sub_99B30();
    v109 = v8;
    _objc_release(v107);
    v110 = v108;
    v111 = v109;
  }

  else
  {
    v110 = 0;
    v111 = 0;
  }

  v106 = v111;
  v105 = v110;
  _objc_release(v113);
  v155 = v105;
  v156 = v106;
  if (v106)
  {
    v157 = v155;
    v158 = v156;
  }

  else
  {
    v157 = sub_99B90("", 0, 1);
    v158 = v9;
    if (v156)
    {
      sub_48490(&v155);
    }
  }

  v10 = v144;
  v83 = v157;
  v84 = v158;
  v153 = v157;
  v154 = v158;
  v11 = sub_81788();
  (*(v141 + 16))(v10, v11, v140);
  v89 = 17;
  v91 = 7;
  v85 = swift_allocObject();
  *(v85 + 16) = v138;

  v90 = 32;
  v12 = swift_allocObject();
  v13 = v84;
  v92 = v12;
  *(v12 + 16) = v83;
  *(v12 + 24) = v13;
  v103 = sub_99390();
  v104 = sub_99D60();
  v94 = swift_allocObject();
  *(v94 + 16) = 0;
  v95 = swift_allocObject();
  *(v95 + 16) = 4;
  v14 = swift_allocObject();
  v15 = v85;
  v86 = v14;
  *(v14 + 16) = v117;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v86;
  v87 = v16;
  *(v16 + 16) = v118;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v87;
  v88 = v18;
  *(v18 + 16) = v119;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v88;
  v96 = v20;
  *(v20 + 16) = v120;
  *(v20 + 24) = v21;
  v97 = swift_allocObject();
  *(v97 + 16) = 32;
  v98 = swift_allocObject();
  *(v98 + 16) = 8;
  v22 = swift_allocObject();
  v23 = v92;
  v93 = v22;
  *(v22 + 16) = v121;
  *(v22 + 24) = v23;
  v24 = swift_allocObject();
  v25 = v93;
  v100 = v24;
  *(v24 + 16) = v122;
  *(v24 + 24) = v25;
  v102 = sub_22FC(&unk_B5940, &unk_9A9A0);
  v99 = sub_99F80();
  v101 = v26;

  v27 = v94;
  v28 = v101;
  *v101 = v123;
  v28[1] = v27;

  v29 = v95;
  v30 = v101;
  v101[2] = v124;
  v30[3] = v29;

  v31 = v96;
  v32 = v101;
  v101[4] = v125;
  v32[5] = v31;

  v33 = v97;
  v34 = v101;
  v101[6] = v126;
  v34[7] = v33;

  v35 = v98;
  v36 = v101;
  v101[8] = v127;
  v36[9] = v35;

  v37 = v100;
  v38 = v101;
  v101[10] = v128;
  v38[11] = v37;
  sub_29D0();

  if (os_log_type_enabled(v103, v104))
  {
    v39 = v134;
    v75 = sub_99E40();
    v74 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v76 = sub_F444(0);
    v77 = sub_F444(1);
    v79 = &v150;
    v150 = v75;
    v80 = &v149;
    v149 = v76;
    v81 = &v148;
    v148 = v77;
    v78 = 2;
    sub_F498(2, &v150);
    sub_F498(v78, v79);
    v146 = v123;
    v147 = v94;
    sub_F4AC(&v146, v79, v80, v81);
    v82 = v39;
    if (v39)
    {

      __break(1u);
    }

    else
    {
      v146 = v124;
      v147 = v95;
      sub_F4AC(&v146, &v150, &v149, &v148);
      v73 = 0;
      v146 = v125;
      v147 = v96;
      sub_F4AC(&v146, &v150, &v149, &v148);
      v72 = 0;
      v146 = v126;
      v147 = v97;
      sub_F4AC(&v146, &v150, &v149, &v148);
      v71 = 0;
      v146 = v127;
      v147 = v98;
      sub_F4AC(&v146, &v150, &v149, &v148);
      v70 = 0;
      v146 = v128;
      v147 = v100;
      sub_F4AC(&v146, &v150, &v149, &v148);
      _os_log_impl(&dword_0, v103, v104, "Clearing space for download: %{BOOL}d, update: %s", v75, 0x12u);
      sub_F5B0(v76);
      sub_F5B0(v77);
      sub_99E20();
    }
  }

  else
  {
  }

  _objc_release(v103);
  (*(v141 + 8))(v144, v140);
  v69 = [v139 descriptor];
  if (v69)
  {
    v68 = v69;
    v66 = v69;
    v67 = [v69 productBuildVersion];
    if (v67)
    {
      v65 = v67;
      v60 = v67;
      v61 = sub_99B30();
      v62 = v40;
      _objc_release(v60);
      v63 = v61;
      v64 = v62;
    }

    else
    {
      v63 = 0;
      v64 = 0;
    }

    v57 = v64;
    v56 = v63;
    _objc_release(v66);
    v58 = v56;
    v59 = v57;
  }

  else
  {
    v58 = 0;
    v59 = 0;
  }

  v55 = v59;
  v52 = v58;
  v151 = v58;
  v152 = v59;
  v53 = 0;
  v41 = sub_99D00();
  (*(*(v41 - 8) + 56))(v136, 1);

  _objc_retain(v116);
  sub_99CD0();
  v54 = sub_99CC0();
  v42 = swift_allocObject();
  v43 = v129;
  v44 = v52;
  v45 = v116;
  v46 = v138;
  v47 = v53;
  v48 = v136;
  v49 = v130;
  v50 = v55;
  *(v42 + 16) = v54;
  *(v42 + 24) = v43;
  *(v42 + 32) = v44;
  *(v42 + 40) = v50;
  *(v42 + 48) = v45;
  *(v42 + 56) = v46;
  sub_2A6F4(v47, v47, v48, v49, v42, &type metadata for () + 8);
}

uint64_t sub_8B5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 177) = a7 & 1;
  *(v7 + 160) = a6;
  *(v7 + 152) = a5;
  *(v7 + 144) = a4;
  *(v7 + 128) = v7;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 136) = 0;
  *(v7 + 176) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 48) = a4;
  *(v7 + 56) = a5;
  *(v7 + 136) = a6;
  *(v7 + 176) = a7 & 1;
  sub_99CD0();
  *(v7 + 168) = sub_99CC0();
  v8 = sub_99CA0();
  v9 = *(v7 + 128);

  return _swift_task_switch(sub_8B6C4, v8);
}

uint64_t sub_8B6C4()
{
  v27 = *(v0 + 152);
  *(v0 + 128) = v0;

  if (v27)
  {
    v24 = *(v26 + 152);
    v1 = *(v26 + 160);
    *(v26 + 64) = *(v26 + 144);
    *(v26 + 72) = v24;

    v2 = sub_4CE5C();
    v25 = v2;
    if (v2)
    {
      v3 = [v2 productBuildVersion];
      v23 = v3;
      if (v3)
      {
        v17 = sub_99B30();
        v18 = v4;
        _objc_release(v23);
        v19 = v17;
        v20 = v18;
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

      _objc_release(v25);
      v21 = v19;
      v22 = v20;
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    v16 = *(v26 + 144);

    *(v26 + 16) = v16;
    *(v26 + 24) = v24;
    *(v26 + 32) = v21;
    *(v26 + 40) = v22;
    if (*(v26 + 24))
    {
      sub_944CC((v26 + 16), (v26 + 80));
      if (*(v26 + 40))
      {
        *(v26 + 96) = *(v26 + 80);
        *(v26 + 112) = *(v26 + 32);
        v5 = *(v26 + 96);
        v6 = *(v26 + 104);
        v7 = *(v26 + 112);
        v8 = *(v26 + 120);
        v15 = sub_99BA0();
        sub_CF00(v26 + 112);
        sub_CF00(v26 + 96);
        sub_48490(v26 + 16);

        if ((v15 & 1) == 0)
        {
          goto LABEL_22;
        }

LABEL_20:
        if (*(v26 + 177))
        {
          v9 = *(v26 + 160);
          v10 = sub_5104C();
          sub_51058(0xC000000000000020, v10 & 1);
        }

        goto LABEL_22;
      }

      sub_CF00(v26 + 80);
    }

    else if (!*(v26 + 40))
    {
      sub_48490(v26 + 16);

      goto LABEL_20;
    }

    sub_941CC(v26 + 16);

LABEL_22:
  }

  v11 = *(v26 + 168);

  v12 = *(*(v26 + 128) + 8);
  v13 = *(v26 + 128);

  return v12();
}

uint64_t sub_8BCBC(uint64_t a1, void *a2)
{
  v57 = a1;
  v63 = a2;
  v65 = sub_95A98;
  v69 = sub_95B48;
  v71 = sub_95ACC;
  v73 = sub_95B00;
  v76 = sub_95B94;
  v51 = &protocol witness table for MainActor;
  v52 = &unk_9C2A0;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v87 = 0;
  v88 = 0;
  v53 = 0;
  v2 = sub_22FC(&unk_B5960, &qword_9BC48);
  v54 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v55 = &v31 - v54;
  v62 = sub_993B0();
  v60 = *(v62 - 8);
  v61 = v62 - 8;
  v58 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v57);
  v4 = &v31 - v58;
  v59 = &v31 - v58;
  v91 = v3;
  v90 = v5;
  v89 = v6;
  v7 = sub_81788();
  (*(v60 + 16))(v4, v7, v62);
  _objc_retain(v63);
  v67 = 7;
  v68 = swift_allocObject();
  *(v68 + 16) = v63;
  v80 = sub_99390();
  v81 = sub_99D60();
  v64 = 17;
  v72 = swift_allocObject();
  *(v72 + 16) = 32;
  v74 = swift_allocObject();
  *(v74 + 16) = 8;
  v66 = 32;
  v8 = swift_allocObject();
  v9 = v68;
  v70 = v8;
  *(v8 + 16) = v65;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v70;
  v77 = v10;
  *(v10 + 16) = v69;
  *(v10 + 24) = v11;
  v79 = sub_22FC(&unk_B5940, &unk_9A9A0);
  v75 = sub_99F80();
  v78 = v12;

  v13 = v72;
  v14 = v78;
  *v78 = v71;
  v14[1] = v13;

  v15 = v74;
  v16 = v78;
  v78[2] = v73;
  v16[3] = v15;

  v17 = v77;
  v18 = v78;
  v78[4] = v76;
  v18[5] = v17;
  sub_29D0();

  if (os_log_type_enabled(v80, v81))
  {
    v19 = v53;
    v44 = sub_99E40();
    v43 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v45 = sub_F444(0);
    v46 = sub_F444(1);
    v47 = &v86;
    v86 = v44;
    v48 = &v85;
    v85 = v45;
    v49 = &v84;
    v84 = v46;
    sub_F498(2, &v86);
    sub_F498(1, v47);
    v82 = v71;
    v83 = v72;
    sub_F4AC(&v82, v47, v48, v49);
    v50 = v19;
    if (v19)
    {

      __break(1u);
    }

    else
    {
      v82 = v73;
      v83 = v74;
      sub_F4AC(&v82, &v86, &v85, &v84);
      v42 = 0;
      v82 = v76;
      v83 = v77;
      sub_F4AC(&v82, &v86, &v85, &v84);
      _os_log_impl(&dword_0, v80, v81, "Installation started for update: %s", v44, 0xCu);
      sub_F5B0(v45);
      sub_F5B0(v46);
      sub_99E20();
    }
  }

  else
  {
  }

  _objc_release(v80);
  (*(v60 + 8))(v59, v62);
  v41 = [v63 productBuildVersion];
  if (v41)
  {
    v40 = v41;
    v35 = v41;
    v36 = sub_99B30();
    v37 = v20;
    _objc_release(v35);
    v38 = v36;
    v39 = v37;
  }

  else
  {
    v38 = 0;
    v39 = 0;
  }

  v34 = v39;
  v31 = v38;
  v87 = v38;
  v88 = v39;
  v32 = 0;
  v21 = sub_99D00();
  (*(*(v21 - 8) + 56))(v55, 1);

  _objc_retain(v56);
  sub_99CD0();
  v33 = sub_99CC0();
  v22 = swift_allocObject();
  v23 = v51;
  v24 = v31;
  v25 = v56;
  v26 = v32;
  v27 = v55;
  v28 = v52;
  v29 = v34;
  v22[2] = v33;
  v22[3] = v23;
  v22[4] = v24;
  v22[5] = v29;
  v22[6] = v25;
  sub_2A6F4(v26, v26, v27, v28, v22, &type metadata for () + 8);
}

uint64_t sub_8C588(void *a1)
{
  v8 = [a1 humanReadableUpdateName];
  if (v8)
  {
    v4 = sub_99B30();
    v5 = v1;
    _objc_release(v8);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if (v7)
  {
    return v6;
  }

  sub_99EF0();
  __break(1u);
  return v3;
}

uint64_t sub_8C6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a6;
  v6[19] = a5;
  v6[18] = a4;
  v6[16] = v6;
  v6[6] = 0;
  v6[7] = 0;
  v6[17] = 0;
  v6[8] = 0;
  v6[9] = 0;
  v6[6] = a4;
  v6[7] = a5;
  v6[17] = a6;
  sub_99CD0();
  v6[21] = sub_99CC0();
  v7 = sub_99CA0();
  v8 = v6[16];

  return _swift_task_switch(sub_8C79C, v7);
}

uint64_t sub_8C79C()
{
  v27 = *(v0 + 152);
  *(v0 + 128) = v0;

  if (v27)
  {
    v24 = *(v26 + 152);
    v1 = *(v26 + 160);
    *(v26 + 64) = *(v26 + 144);
    *(v26 + 72) = v24;

    v2 = sub_4CE5C();
    v25 = v2;
    if (v2)
    {
      v3 = [v2 productBuildVersion];
      v23 = v3;
      if (v3)
      {
        v17 = sub_99B30();
        v18 = v4;
        _objc_release(v23);
        v19 = v17;
        v20 = v18;
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

      _objc_release(v25);
      v21 = v19;
      v22 = v20;
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    v16 = *(v26 + 144);

    *(v26 + 16) = v16;
    *(v26 + 24) = v24;
    *(v26 + 32) = v21;
    *(v26 + 40) = v22;
    if (*(v26 + 24))
    {
      sub_944CC((v26 + 16), (v26 + 80));
      if (*(v26 + 40))
      {
        *(v26 + 96) = *(v26 + 80);
        *(v26 + 112) = *(v26 + 32);
        v5 = *(v26 + 96);
        v6 = *(v26 + 104);
        v7 = *(v26 + 112);
        v8 = *(v26 + 120);
        v15 = sub_99BA0();
        sub_CF00(v26 + 112);
        sub_CF00(v26 + 96);
        sub_48490(v26 + 16);

        if ((v15 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_20:
        v9 = *(v26 + 160);
        v10 = sub_5104C();
        sub_51058(0xC000000000000030, v10 & 1);

        goto LABEL_22;
      }

      sub_CF00(v26 + 80);
    }

    else if (!*(v26 + 40))
    {
      sub_48490(v26 + 16);

      goto LABEL_20;
    }

    sub_941CC(v26 + 16);

LABEL_21:
  }

LABEL_22:
  v11 = *(v26 + 168);

  v12 = *(*(v26 + 128) + 8);
  v13 = *(v26 + 128);

  return v12();
}

uint64_t sub_8CCC4(uint64_t a1, void *a2, uint64_t a3)
{
  v75 = a1;
  v81 = a2;
  v83 = a3;
  v84 = sub_95E58;
  v86 = sub_95F50;
  v91 = sub_95EA0;
  v95 = sub_96050;
  v97 = sub_95ED4;
  v99 = sub_95F08;
  v101 = sub_95F9C;
  v103 = sub_95FD4;
  v105 = sub_96008;
  v108 = sub_9609C;
  v69 = &protocol witness table for MainActor;
  v70 = &unk_9C2B0;
  v124 = 0;
  v123 = 0;
  v122 = 0;
  v121 = 0;
  v119 = 0;
  v120 = 0;
  v71 = 0;
  v3 = sub_22FC(&unk_B5960, &qword_9BC48);
  v72 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v73 = &v44 - v72;
  v80 = sub_993B0();
  v78 = *(v80 - 8);
  v79 = v80 - 8;
  v76 = (*(v78 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v75);
  v5 = &v44 - v76;
  v77 = &v44 - v76;
  v124 = v4;
  v123 = v6;
  v122 = v7;
  v121 = v8;
  v9 = sub_81788();
  (*(v78 + 16))(v5, v9, v80);
  _objc_retain(v81);
  v82 = 24;
  v93 = 7;
  v85 = swift_allocObject();
  *(v85 + 16) = v81;
  swift_errorRetain();
  v94 = swift_allocObject();
  *(v94 + 16) = v83;
  v112 = sub_99390();
  v113 = sub_99D80();
  v89 = 17;
  v98 = swift_allocObject();
  v88 = 32;
  *(v98 + 16) = 32;
  v100 = swift_allocObject();
  v90 = 8;
  *(v100 + 16) = 8;
  v92 = 32;
  v10 = swift_allocObject();
  v11 = v85;
  v87 = v10;
  *(v10 + 16) = v84;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v87;
  v102 = v12;
  *(v12 + 16) = v86;
  *(v12 + 24) = v13;
  v104 = swift_allocObject();
  *(v104 + 16) = v88;
  v106 = swift_allocObject();
  *(v106 + 16) = v90;
  v14 = swift_allocObject();
  v15 = v94;
  v96 = v14;
  *(v14 + 16) = v91;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v96;
  v109 = v16;
  *(v16 + 16) = v95;
  *(v16 + 24) = v17;
  v111 = sub_22FC(&unk_B5940, &unk_9A9A0);
  v107 = sub_99F80();
  v110 = v18;

  v19 = v98;
  v20 = v110;
  *v110 = v97;
  v20[1] = v19;

  v21 = v100;
  v22 = v110;
  v110[2] = v99;
  v22[3] = v21;

  v23 = v102;
  v24 = v110;
  v110[4] = v101;
  v24[5] = v23;

  v25 = v104;
  v26 = v110;
  v110[6] = v103;
  v26[7] = v25;

  v27 = v106;
  v28 = v110;
  v110[8] = v105;
  v28[9] = v27;

  v29 = v109;
  v30 = v110;
  v110[10] = v108;
  v30[11] = v29;
  sub_29D0();

  if (os_log_type_enabled(v112, v113))
  {
    v31 = v71;
    v61 = sub_99E40();
    v60 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v62 = sub_F444(0);
    v63 = sub_F444(2);
    v65 = &v118;
    v118 = v61;
    v66 = &v117;
    v117 = v62;
    v67 = &v116;
    v116 = v63;
    v64 = 2;
    sub_F498(2, &v118);
    sub_F498(v64, v65);
    v114 = v97;
    v115 = v98;
    sub_F4AC(&v114, v65, v66, v67);
    v68 = v31;
    if (v31)
    {

      __break(1u);
    }

    else
    {
      v114 = v99;
      v115 = v100;
      sub_F4AC(&v114, &v118, &v117, &v116);
      v59 = 0;
      v114 = v101;
      v115 = v102;
      sub_F4AC(&v114, &v118, &v117, &v116);
      v58 = 0;
      v114 = v103;
      v115 = v104;
      sub_F4AC(&v114, &v118, &v117, &v116);
      v57 = 0;
      v114 = v105;
      v115 = v106;
      sub_F4AC(&v114, &v118, &v117, &v116);
      v56 = 0;
      v114 = v108;
      v115 = v109;
      sub_F4AC(&v114, &v118, &v117, &v116);
      _os_log_impl(&dword_0, v112, v113, "Installation failed for update: %s, error: %s", v61, 0x16u);
      sub_F5B0(v62);
      sub_F5B0(v63);
      sub_99E20();
    }
  }

  else
  {
  }

  _objc_release(v112);
  (*(v78 + 8))(v77, v80);
  v55 = [v81 productBuildVersion];
  if (v55)
  {
    v54 = v55;
    v49 = v55;
    v50 = sub_99B30();
    v51 = v32;
    _objc_release(v49);
    v52 = v50;
    v53 = v51;
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  v48 = v53;
  v45 = v52;
  v119 = v52;
  v120 = v53;
  v46 = 0;
  v33 = sub_99D00();
  (*(*(v33 - 8) + 56))(v73, 1);

  _objc_retain(v74);
  swift_errorRetain();
  sub_99CD0();
  v47 = sub_99CC0();
  v34 = swift_allocObject();
  v35 = v69;
  v36 = v45;
  v37 = v74;
  v38 = v83;
  v39 = v46;
  v40 = v73;
  v41 = v70;
  v42 = v48;
  v34[2] = v47;
  v34[3] = v35;
  v34[4] = v36;
  v34[5] = v42;
  v34[6] = v37;
  v34[7] = v38;
  sub_2A6F4(v39, v39, v40, v41, v34, &type metadata for () + 8);
}

uint64_t sub_8D930(void *a1)
{
  v8 = [a1 humanReadableUpdateName];
  if (v8)
  {
    v4 = sub_99B30();
    v5 = v1;
    _objc_release(v8);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if (v7)
  {
    return v6;
  }

  sub_99EF0();
  __break(1u);
  return v3;
}

uint64_t sub_8DAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a7;
  v7[21] = a6;
  v7[20] = a5;
  v7[19] = a4;
  v7[16] = v7;
  v7[6] = 0;
  v7[7] = 0;
  v7[17] = 0;
  v7[18] = 0;
  v7[8] = 0;
  v7[9] = 0;
  v7[6] = a4;
  v7[7] = a5;
  v7[17] = a6;
  v7[18] = a7;
  sub_99CD0();
  v7[23] = sub_99CC0();
  v8 = sub_99CA0();
  v9 = v7[16];

  return _swift_task_switch(sub_8DB98, v8);
}

uint64_t sub_8DB98()
{
  v28 = *(v0 + 160);
  *(v0 + 128) = v0;

  if (v28)
  {
    v25 = *(v27 + 160);
    v1 = *(v27 + 168);
    *(v27 + 64) = *(v27 + 152);
    *(v27 + 72) = v25;

    v2 = sub_4CE5C();
    v26 = v2;
    if (v2)
    {
      v3 = [v2 productBuildVersion];
      v24 = v3;
      if (v3)
      {
        v18 = sub_99B30();
        v19 = v4;
        _objc_release(v24);
        v20 = v18;
        v21 = v19;
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }

      _objc_release(v26);
      v22 = v20;
      v23 = v21;
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    v17 = *(v27 + 152);

    *(v27 + 16) = v17;
    *(v27 + 24) = v25;
    *(v27 + 32) = v22;
    *(v27 + 40) = v23;
    if (*(v27 + 24))
    {
      sub_944CC((v27 + 16), (v27 + 80));
      if (*(v27 + 40))
      {
        *(v27 + 96) = *(v27 + 80);
        *(v27 + 112) = *(v27 + 32);
        v5 = *(v27 + 96);
        v6 = *(v27 + 104);
        v7 = *(v27 + 112);
        v8 = *(v27 + 120);
        v16 = sub_99BA0();
        sub_CF00(v27 + 112);
        sub_CF00(v27 + 96);
        sub_48490(v27 + 16);

        if ((v16 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_20:
        v15 = *(v27 + 176);
        v9 = *(v27 + 168);
        swift_errorRetain();
        v10 = sub_5104C();
        sub_51058(v15 | 0x4000000000000000, v10 & 1);
        sub_109F4(v15 | 0x4000000000000000);

        goto LABEL_22;
      }

      sub_CF00(v27 + 80);
    }

    else if (!*(v27 + 40))
    {
      sub_48490(v27 + 16);

      goto LABEL_20;
    }

    sub_941CC(v27 + 16);

LABEL_21:
  }

LABEL_22:
  v11 = *(v27 + 184);

  v12 = *(*(v27 + 128) + 8);
  v13 = *(v27 + 128);

  return v12();
}

void sub_8E168(uint64_t a1, void *a2)
{
  v33 = a1;
  v39 = a2;
  v41 = sub_96374;
  v45 = sub_96424;
  v47 = sub_963A8;
  v49 = sub_963DC;
  v52 = sub_96470;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v32 = 0;
  v38 = sub_993B0();
  v36 = *(v38 - 8);
  v37 = v38 - 8;
  v34 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = &v18[-v34];
  v35 = &v18[-v34];
  v70 = __chkstk_darwin(v33);
  v69 = v3;
  v68 = v4;
  v5 = sub_81788();
  (*(v36 + 16))(v2, v5, v38);
  _objc_retain(v39);
  v43 = 7;
  v44 = swift_allocObject();
  *(v44 + 16) = v39;
  v56 = sub_99390();
  v57 = sub_99D60();
  v40 = 17;
  v48 = swift_allocObject();
  *(v48 + 16) = 32;
  v50 = swift_allocObject();
  *(v50 + 16) = 8;
  v42 = 32;
  v6 = swift_allocObject();
  v7 = v44;
  v46 = v6;
  *(v6 + 16) = v41;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v46;
  v53 = v8;
  *(v8 + 16) = v45;
  *(v8 + 24) = v9;
  v55 = sub_22FC(&unk_B5940, &unk_9A9A0);
  v51 = sub_99F80();
  v54 = v10;

  v11 = v48;
  v12 = v54;
  *v54 = v47;
  v12[1] = v11;

  v13 = v50;
  v14 = v54;
  v54[2] = v49;
  v14[3] = v13;

  v15 = v53;
  v16 = v54;
  v54[4] = v52;
  v16[5] = v15;
  sub_29D0();

  if (os_log_type_enabled(v56, v57))
  {
    v17 = v32;
    v25 = sub_99E40();
    v24 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v26 = sub_F444(0);
    v27 = sub_F444(1);
    v28 = &v62;
    v62 = v25;
    v29 = &v61;
    v61 = v26;
    v30 = &v60;
    v60 = v27;
    sub_F498(2, &v62);
    sub_F498(1, v28);
    v58 = v47;
    v59 = v48;
    sub_F4AC(&v58, v28, v29, v30);
    v31 = v17;
    if (v17)
    {

      __break(1u);
    }

    else
    {
      v58 = v49;
      v59 = v50;
      sub_F4AC(&v58, &v62, &v61, &v60);
      v23 = 0;
      v58 = v52;
      v59 = v53;
      sub_F4AC(&v58, &v62, &v61, &v60);
      _os_log_impl(&dword_0, v56, v57, "Installation finished for update: %s", v25, 0xCu);
      sub_F5B0(v26);
      sub_F5B0(v27);
      sub_99E20();
    }
  }

  else
  {
  }

  _objc_release(v56);
  (*(v36 + 8))(v35, v38);
  _objc_retain(v39);
  _objc_retain(v39);
  v22 = sub_4CE5C();
  _objc_retain(v22);
  v66 = v39;
  v67 = v22;
  if (v39)
  {
    sub_7CFA8(&v66, &v65);
    if (v67)
    {
      v64 = v65;
      v63 = v67;
      sub_FFE8();
      v20 = sub_99E10();
      _objc_release(v63);
      _objc_release(v64);
      sub_127E0(&v66);
      v21 = v20;
      goto LABEL_12;
    }

    _objc_release(v65);
    goto LABEL_14;
  }

  if (v67)
  {
LABEL_14:
    sub_7CED4(&v66);
    v21 = 0;
    goto LABEL_12;
  }

  sub_127E0(&v66);
  v21 = 1;
LABEL_12:
  v19 = v21;
  _objc_release(v22);
  _objc_release(v39);
  if (v19)
  {
    sub_4FBEC();
  }
}

uint64_t sub_8E948(void *a1)
{
  v8 = [a1 humanReadableUpdateName];
  if (v8)
  {
    v4 = sub_99B30();
    v5 = v1;
    _objc_release(v8);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if (v7)
  {
    return v6;
  }

  sub_99EF0();
  __break(1u);
  return v3;
}

uint64_t sub_8EB24(uint64_t a1, void *a2)
{
  v28 = a1;
  v34 = a2;
  v36 = sub_964C4;
  v40 = sub_96574;
  v42 = sub_964F8;
  v44 = sub_9652C;
  v47 = sub_965C0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v27 = 0;
  v33 = sub_993B0();
  v31 = *(v33 - 8);
  v32 = v33 - 8;
  v29 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = v19 - v29;
  v30 = v19 - v29;
  v60 = __chkstk_darwin(v28);
  v59 = v3;
  v58 = v4;
  v5 = sub_81788();
  (*(v31 + 16))(v2, v5, v33);
  _objc_retain(v34);
  v38 = 7;
  v39 = swift_allocObject();
  *(v39 + 16) = v34;
  v51 = sub_99390();
  v52 = sub_99D60();
  v35 = 17;
  v43 = swift_allocObject();
  *(v43 + 16) = 32;
  v45 = swift_allocObject();
  *(v45 + 16) = 8;
  v37 = 32;
  v6 = swift_allocObject();
  v7 = v39;
  v41 = v6;
  *(v6 + 16) = v36;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v41;
  v48 = v8;
  *(v8 + 16) = v40;
  *(v8 + 24) = v9;
  v50 = sub_22FC(&unk_B5940, &unk_9A9A0);
  v46 = sub_99F80();
  v49 = v10;

  v11 = v43;
  v12 = v49;
  *v49 = v42;
  v12[1] = v11;

  v13 = v45;
  v14 = v49;
  v49[2] = v44;
  v14[3] = v13;

  v15 = v48;
  v16 = v49;
  v49[4] = v47;
  v16[5] = v15;
  sub_29D0();

  if (os_log_type_enabled(v51, v52))
  {
    v17 = v27;
    v20 = sub_99E40();
    v19[3] = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v21 = sub_F444(0);
    v22 = sub_F444(1);
    v23 = &v57;
    v57 = v20;
    v24 = &v56;
    v56 = v21;
    v25 = &v55;
    v55 = v22;
    sub_F498(2, &v57);
    sub_F498(1, v23);
    v53 = v42;
    v54 = v43;
    sub_F4AC(&v53, v23, v24, v25);
    v26 = v17;
    if (v17)
    {

      __break(1u);
    }

    else
    {
      v53 = v44;
      v54 = v45;
      sub_F4AC(&v53, &v57, &v56, &v55);
      v19[1] = 0;
      v53 = v47;
      v54 = v48;
      sub_F4AC(&v53, &v57, &v56, &v55);
      _os_log_impl(&dword_0, v51, v52, "Rollback started for: %s", v20, 0xCu);
      sub_F5B0(v21);
      sub_F5B0(v22);
      sub_99E20();
    }
  }

  else
  {
  }

  _objc_release(v51);
  return (*(v31 + 8))(v30, v33);
}
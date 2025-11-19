void sub_10001D050()
{
  sub_100023FC4();
  v96 = v5;
  v97 = v4;
  v7 = v6;
  v107 = v8;
  v108 = v9;
  v10 = sub_1000327C0();
  v11 = sub_100011D60(v10);
  v103 = v12;
  v104 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11, v15);
  sub_100011DAC();
  v102 = v17 - v16;
  v18 = sub_100023ED4();
  v106 = type metadata accessor for PhotosReliveWidgetSize(v18);
  v19 = sub_100011D74(v106);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19, v22);
  sub_100011DAC();
  v110 = v24 - v23;
  sub_100023ED4();
  v111 = sub_100032800();
  v25 = sub_100011D60(v111);
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v25, v30);
  sub_100011D9C();
  sub_100024090();
  __chkstk_darwin(v31, v32);
  sub_1000240C0();
  v33 = sub_100032750();
  v34 = sub_100011D60(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  __chkstk_darwin(v34, v39);
  sub_100011D9C();
  v42 = v40 - v41;
  __chkstk_darwin(v43, v44);
  v46 = &v90 - v45;
  sub_1000327E0();
  v109 = sub_10001A5E8();
  v47 = sub_100032A40();
  if (qword_100044628 != -1)
  {
    sub_100023F00();
  }

  v48 = qword_100048340;
  v49 = *(v36 + 16);
  v98 = v46;
  v49(v42, v46, v33);
  v100 = *(v27 + 16);
  v101 = v7;
  v100(v1, v7, v111);
  v50 = os_log_type_enabled(v48, v47);
  v99 = v36;
  v94 = v48;
  v95 = v33;
  v105 = v27;
  if (v50)
  {
    v51 = v47;
    v52 = swift_slowAlloc();
    v92 = sub_100024188();
    v112 = v92;
    *v52 = 136446466;
    sub_100023DAC();
    sub_10002283C(v53, v54);
    v91 = v51;
    v55 = sub_100032CB0();
    v93 = *(v36 + 8);
    v93(v42, v33);
    v56 = sub_100011F64();
    sub_100021264(v56, v57, v58);
    sub_100024214();

    *(v52 + 4) = v55;
    *(v52 + 12) = 1026;
    v59 = sub_1000327F0() & 1;
    v60 = *(v27 + 8);
    v61 = v111;
    v60(v1, v111);
    *(v52 + 14) = v59;
    _os_log_impl(&_mh_execute_header, v48, v91, "snapshot requested at size %{public}s inAddSheet  %{BOOL,public}d", v52, 0x12u);
    sub_100022C1C(v92);
    sub_100023FAC();
    sub_100023FAC();
  }

  else
  {
    v62 = v36;
    v60 = *(v27 + 8);
    v63 = v1;
    v64 = v111;
    v60(v63, v111);
    v93 = *(v62 + 8);
    v93(v42, v33);
    v61 = v64;
  }

  v100(v0, v101, v61);
  v65 = v102;
  sub_1000327D0();
  KeyPath = swift_getKeyPath();
  sub_1000327B0();
  sub_100024214();

  v67 = sub_100024030();
  v68(v67);
  if (v65)
  {
    sub_100023EE0();
    if (v69)
    {
      v70 = *(v65 + 32);
    }

    else
    {
      v70 = 0;
    }
  }

  else
  {
    v70 = 0;
    KeyPath = 1;
  }

  v71 = v110;
  sub_1000327E0();
  sub_1000327A0();
  sub_10002410C();
  v60(v0, v61);
  v73 = v106;
  v72 = v107;
  v74 = (v71 + *(v106 + 20));
  *v74 = v2;
  v74[1] = v3;
  v75 = v71 + *(v73 + 24);
  *v75 = v70;
  *(v75 + 8) = KeyPath;
  v76 = v109;
  v77 = sub_10001B868(v72, v108, v71, 1, v109);
  if (*(v77 + 16))
  {
    sub_10002403C(v77);
    v78 = KeyPath;

    v79 = sub_100023F70();
    v97(v79);
    v80 = sub_100032A40();
    v81 = v94;
    if (os_log_type_enabled(v94, v80))
    {
      v82 = sub_10002425C();
      v83 = sub_100024188();
      v112 = v83;
      *v82 = 136446210;
      v78 = v78;

      sub_100023F70();
      PhotosReliveWidgetEntry.description.getter();
      v85 = v84;
      v87 = v86;

      v88 = sub_100021264(v85, v87, &v112);

      *(v82 + 4) = v88;
      _os_log_impl(&_mh_execute_header, v81, v80, "snapshot request completed with entry %{public}s", v82, 0xCu);
      sub_100022C1C(v83);
      sub_100023FAC();
      sub_100023FAC();
    }

    sub_100023D94();
    sub_100022A1C(v110, v89);
    v93(v98, v95);
    sub_100023FE0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10001D680()
{
  sub_100023EC8();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  v5 = sub_100032800();
  v0[6] = v5;
  sub_100023E68(v5);
  v0[7] = v6;
  v8 = *(v7 + 64);
  v0[8] = sub_1000240D0();
  v9 = sub_10000D4FC(&qword_100045478, &qword_1000348F8);
  v0[9] = v9;
  sub_100023E68(v9);
  v0[10] = v10;
  v12 = *(v11 + 64);
  v0[11] = sub_1000240D0();
  v13 = sub_100023E90();

  return _swift_task_switch(v13);
}

uint64_t sub_10001D780()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(*(v0 + 56) + 16);
  v13 = *(v0 + 24);
  v6 = sub_1000241F4();
  v7(v6);
  sub_100024014();
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *(v8 + 16) = v13;
  *(v8 + 32) = v1;
  v9 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v10 = swift_task_alloc();
  *(v0 + 104) = v10;
  sub_10000D4FC(&qword_1000453D0, &qword_100034870);
  *v10 = v0;
  v10[1] = sub_10001D8B0;
  v11 = *(v0 + 16);
  sub_100023E78();

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10001D8B0()
{
  sub_100023EC8();
  sub_100024068();
  v2 = *(v1 + 104);
  v3 = *(v1 + 96);
  v4 = *v0;
  sub_100023EA0();
  *v5 = v4;

  v6 = sub_100023E90();

  return _swift_task_switch(v6);
}

uint64_t sub_10001D9B0()
{
  sub_100023EC8();
  v1 = v0[8];
  (*(v0[10] + 8))(v0[11], v0[9]);

  sub_100024238();

  return v2();
}

uint64_t sub_10001DA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a2;
  v36 = a4;
  v38 = a3;
  v41 = sub_100032670();
  v44 = *(v41 - 8);
  v5 = *(v44 + 64);
  __chkstk_darwin(v41, v6);
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000326A0();
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = *(v42 + 64);
  __chkstk_darwin(v8, v10);
  v39 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000D4FC(&qword_100045480, &qword_100034900);
  v34 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = &v34 - v16;
  v18 = sub_10000D4FC(&qword_100045478, &qword_1000348F8);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18, v21);
  v23 = &v34 - v22;
  sub_1000230A4(0, &qword_100045470, OS_dispatch_queue_ptr);
  v37 = sub_100032A90();
  (*(v19 + 16))(v23, v36, v18);
  (*(v13 + 16))(v17, a1, v12);
  v24 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v25 = (v20 + *(v13 + 80) + v24) & ~*(v13 + 80);
  v26 = swift_allocObject();
  v27 = v38;
  *(v26 + 16) = v35;
  *(v26 + 24) = v27;
  (*(v19 + 32))(v26 + v24, v23, v18);
  (*(v13 + 32))(v26 + v25, v17, v34);
  aBlock[4] = sub_100022D2C;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019100;
  aBlock[3] = &unk_100042848;
  v28 = _Block_copy(aBlock);

  v29 = v39;
  sub_100032680();
  v45 = &_swiftEmptyArrayStorage;
  sub_10002283C(&qword_100045488, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000D4FC(&qword_100045490, &qword_100034908);
  sub_100022D6C(&qword_100045498, &qword_100045490, &qword_100034908);
  v31 = v40;
  v30 = v41;
  sub_100032B60();
  v32 = v37;
  sub_100032AA0();
  _Block_release(v28);

  (*(v44 + 8))(v31, v30);
  (*(v42 + 8))(v29, v43);
}

uint64_t sub_10001DEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[1] = a2;
  v5 = sub_10000D4FC(&qword_100045480, &qword_100034900);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = v20 - v9;
  v11 = sub_100032800();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D4FC(&qword_100045478, &qword_1000348F8);
  sub_100031CC0();
  (*(v6 + 16))(v10, a4, v5);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  (*(v6 + 32))(v18 + v17, v10, v5);
  sub_10001E1CC();

  return (*(v12 + 8))(v16, v11);
}

uint64_t sub_10001E100()
{
  v0 = sub_10000D4FC(&qword_1000453D0, &qword_100034870);
  sub_100011D60(v0);
  v2 = *(v1 + 64);
  sub_100011DBC();
  __chkstk_darwin(v3, v4);
  sub_1000240B0();
  v6 = *(v5 + 16);
  v7 = sub_1000240E8();
  v8(v7);
  sub_10000D4FC(&qword_100045480, &qword_100034900);
  return sub_1000329F0();
}

void sub_10001E1CC()
{
  sub_100023FC4();
  v132 = v2;
  v133 = v1;
  v4 = v3;
  v6 = v5;
  v128 = v7;
  v143 = sub_10000D4FC(&qword_1000453D0, &qword_100034870);
  v8 = sub_100011D60(v143);
  v138 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8, v12);
  sub_100023E54();
  v134 = v13;
  __chkstk_darwin(v14, v15);
  v142 = &v116 - v16;
  v126 = sub_10000D4FC(&qword_1000453D8, &qword_100034878);
  v17 = sub_100011D74(v126);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17, v20);
  sub_100023E54();
  sub_100023F20();
  __chkstk_darwin(v21, v22);
  v137 = &v116 - v23;
  sub_100023ED4();
  v121 = sub_1000327C0();
  v24 = sub_100011D60(v121);
  v120 = v25;
  v27 = *(v26 + 64);
  __chkstk_darwin(v24, v28);
  sub_100011DAC();
  sub_100024220();
  v125 = sub_100032800();
  v29 = sub_100011D60(v125);
  v140 = v30;
  v32 = *(v31 + 64);
  __chkstk_darwin(v29, v33);
  sub_100011DAC();
  v139 = v35 - v34;
  v36 = sub_100023ED4();
  v122 = type metadata accessor for PhotosReliveWidgetSize(v36);
  v37 = sub_100011D74(v122);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37, v40);
  sub_100011DAC();
  v43 = v42 - v41;
  v44 = sub_100032750();
  v45 = sub_100011D60(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  __chkstk_darwin(v45, v50);
  sub_100023E54();
  v130 = v51;
  __chkstk_darwin(v52, v53);
  sub_100024090();
  __chkstk_darwin(v54, v55);
  v57 = &v116 - v56;
  sub_1000327E0();
  v136 = sub_10001A5E8();
  v58 = sub_100032A40();
  if (qword_100044628 != -1)
  {
    sub_100023F00();
  }

  v59 = qword_100048340;
  v60 = *(v47 + 16);
  v124 = v47 + 16;
  v123 = v60;
  v60(v0, v57, v44);
  v61 = os_log_type_enabled(v59, v58);
  v141 = v57;
  v131 = v47;
  v129 = v59;
  if (v61)
  {
    v62 = sub_10002425C();
    v118 = v4;
    v63 = v62;
    v117 = sub_100024188();
    v144[0] = v117;
    *v63 = 136446210;
    sub_100023DAC();
    sub_10002283C(v64, v65);
    v119 = v6;
    v66 = v59;
    sub_100032CB0();
    v67 = sub_1000241CC();
    v68(v67);
    v69 = sub_10002413C();

    *(v63 + 4) = v69;
    v70 = v66;
    v6 = v119;
    _os_log_impl(&_mh_execute_header, v70, v58, "timeline requested for size %{public}s", v63, 0xCu);
    sub_100022C1C(v117);
    sub_100023FAC();
    v4 = v118;
    sub_100023FAC();
  }

  else
  {
    v71 = sub_1000241CC();
    v72(v71);
  }

  v73 = v4;
  v74 = v125;
  (*(v140 + 16))(v139, v73, v125);
  sub_1000327D0();
  swift_getKeyPath();
  v75 = sub_1000327B0();

  v76 = sub_100024030();
  v77(v76, v121);
  if (v75)
  {
    v78 = *(v75 + 16);
    v79 = v78 == 0;
    if (v78)
    {
      v80 = *(v75 + 32);
    }

    else
    {
      v80 = 0;
    }
  }

  else
  {
    v80 = 0;
    v79 = 1;
  }

  v81 = v139;
  sub_1000327E0();
  sub_1000327A0();
  sub_10002410C();
  (*(v140 + 8))(v81, v74);
  sub_1000240F4();
  *v82 = v80;
  *(v82 + 8) = v79;
  v83 = v6;
  v84 = v136;
  v85 = sub_10001B868(v128, v83, v43, 2, v136);
  v86 = v126;
  v87 = *(v126 + 48);
  v88 = v137;
  v89 = v141;
  sub_10001A790(v137, (v137 + v87), v85, v141);
  v90 = v127;
  sub_100013C14(v88, v127, &qword_1000453D8, &qword_100034878);
  v91 = *(v86 + 48);
  sub_1000226C4();
  v92 = v142;
  sub_100032840();
  sub_100013B00(v90 + v91, &qword_1000453E0, &qword_1000348B0);
  v133(v92);
  type metadata accessor for PhotosReliveWidgetViewModel(0);
  sub_100025F70();
  [v84 setWidgetTimelineGeneratedForDisplaySize:{*v144, *&v144[1]}];
  sub_10001498C(v88 + v87, v89);
  v93 = sub_100032A40();
  v94 = v130;
  v123(v130, v89, v44);
  v95 = v134;
  (*(v138 + 16))(v134, v92, v143);
  v96 = v129;
  if (os_log_type_enabled(v129, v93))
  {
    v97 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    v144[0] = v133;
    *v97 = 136446466;
    sub_100023DAC();
    sub_10002283C(v98, v99);
    v140 = v43;
    v100 = v95;
    sub_100032CB0();
    v101 = v138;
    v139 = v131 + 8;
    v135(v94, v44);
    v102 = sub_10002413C();

    *(v97 + 4) = v102;
    *(v97 + 12) = 2082;
    v103 = v93;
    v104 = v143;
    sub_100032850();
    v105 = sub_1000329B0();
    v132 = v44;
    v107 = v106;

    v108 = *(v101 + 8);
    v108(v100, v104);
    v109 = sub_100021264(v105, v107, v144);

    *(v97 + 14) = v109;
    _os_log_impl(&_mh_execute_header, v96, v103, "timeline request completed for size %{public}s with entries %{public}s", v97, 0x16u);
    swift_arrayDestroy();
    sub_100023FAC();
    sub_100023FAC();

    v108(v142, v104);
    sub_100013B00(v137, &qword_1000453D8, &qword_100034878);
    sub_100023D94();
    sub_100022A1C(v140, v110);
    v135(v141, v132);
  }

  else
  {

    v111 = *(v138 + 8);
    v112 = v143;
    v111(v95, v143);
    v113 = v94;
    v114 = v135;
    v135(v113, v44);
    v111(v142, v112);
    sub_100013B00(v137, &qword_1000453D8, &qword_100034878);
    sub_100023D94();
    sub_100022A1C(v43, v115);
    v114(v141, v44);
  }

  sub_100023FE0();
}

void sub_10001EB20()
{
  sub_100023FC4();
  v38 = v4;
  sub_100024130();
  v5 = sub_1000327C0();
  v6 = sub_100011D60(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6, v11);
  sub_100011DAC();
  v14 = v13 - v12;
  v15 = sub_100032800();
  v16 = sub_100011D60(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16, v21);
  sub_100011DAC();
  sub_100024220();
  v22 = type metadata accessor for PhotosReliveWidgetSize(0);
  v23 = sub_100011D74(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23, v26);
  sub_100011DAC();
  v29 = v28 - v27;
  (*(v18 + 16))(v1, v0, v15);
  sub_1000327D0();
  swift_getKeyPath();
  v30 = sub_1000327B0();

  v32 = *(v8 + 8);
  v31 = v8 + 8;
  v32(v14, v5);
  if (v30)
  {
    sub_100023EE0();
    if (v33)
    {
      v34 = *(v30 + 32);
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
    v31 = 1;
  }

  sub_1000327E0();
  sub_1000327A0();
  sub_10002410C();
  (*(v18 + 8))(v1, v15);
  v35 = (v29 + *(v22 + 20));
  *v35 = v2;
  v35[1] = v3;
  v36 = v29 + *(v22 + 24);
  *v36 = v34;
  *(v36 + 8) = v31;
  [objc_opt_self() placeholderEntryForContentType:v38];
  sub_100023D94();
  sub_100022A1C(v29, v37);
  sub_100023FE0();
}

void sub_10001ED7C(uint64_t a1@<X8>)
{
  sub_10001EB20();
  *a1 = v2;
  *(a1 + 8) = 2;
  *(a1 + 10) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_10001EDB8(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_100023D38;

  return sub_10001BDA0();
}

uint64_t sub_10001EE64(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100023D64;

  return sub_10001D680();
}

uint64_t sub_10001EF18(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t **), uint64_t a4)
{
  v7 = *a1;
  v8 = a1[1];

  return sub_10001C8A4(v7, v8, a2, a3, a4);
}

void sub_10001EF80(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_10001E1CC();
}

uint64_t sub_10001EF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to AppIntentTimelineProvider.relevances()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100023D64;

  return AppIntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_10001F04C()
{
  sub_1000230A4(0, &qword_100045428, OS_os_log_ptr);
  result = sub_100032B00();
  qword_100048348 = result;
  return result;
}

uint64_t sub_10001F0C4()
{
  result = [objc_opt_self() isPreflightFeatureEnabled];
  if (result)
  {
    v1 = objc_allocWithZone(LSApplicationRecord);
    v2 = sub_100021064(0xD000000000000019, 0x8000000100036040, 0);
    sub_1000230A4(0, &qword_100045470, OS_dispatch_queue_ptr);
    v3 = sub_100032A90();
    v4 = [objc_allocWithZone(PDCPreflightManager) initWithTargetQueue:v3];

    if ([v4 requiresPreflightForApplicationRecord:v2])
    {
      sub_100032A40();
      if (qword_100044630 != -1)
      {
        swift_once();
      }

      sub_100031D30();

      return 1;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void *sub_10001F348(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = a1 + 24 * v1;
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  *(v2 + 17);
  *(v2 + 18);

  v6 = v3;
  return v3;
}

uint64_t sub_10001F3D8(uint64_t a1, uint64_t *a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v73 = a1;
  v74 = a2;
  v9 = sub_100031C40();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v13 = __chkstk_darwin(v9, v12);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v13, v16);
  v19 = &v68 - v18;
  v21 = __chkstk_darwin(v17, v20);
  v23 = &v68 - v22;
  __chkstk_darwin(v21, v24);
  v26 = &v68 - v25;
  if (!a3)
  {
    v30 = 0xE400000000000000;
    v28 = 1701736302;
    goto LABEL_5;
  }

  if (!a4)
  {
    v52 = a3;

    PhotosReliveWidgetEntry.date.getter(v52);
    sub_100031C30();
    v53 = sub_100031C00();
    v54 = v9;
    v57 = v10[1];
    v56 = v10 + 1;
    v55 = v57;
    v57(v23, v54);
    if ((v53 & 1) == 0)
    {
      sub_100032780();

      v65 = v26;
      v66 = v54;
      goto LABEL_16;
    }

    PhotosReliveWidgetEntry.endDate.getter(v52);
    sub_100031BE0();
    v59 = v58;
    v72 = v54;
    v55(v23, v54);
    if (v59 < 1200.0)
    {
      __break(1u);
    }

    else
    {
      v71 = v56;
      sub_100021D68(1200.0, v59);
      sub_100031BF0();
      sub_100032A40();
      if (qword_100044630 == -1)
      {
LABEL_14:
        sub_10000D4FC(&qword_100045430, &qword_1000348D8);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_1000334B0;
        v61 = sub_100031BC0();
        v63 = v62;
        *(v60 + 56) = &type metadata for String;
        *(v60 + 64) = sub_100022B0C();
        *(v60 + 32) = v61;
        *(v60 + 40) = v63;
        *(v60 + 96) = &type metadata for Double;
        *(v60 + 104) = &protocol witness table for Double;
        *(v60 + 72) = v59;
        sub_100031D30();

        sub_100032770();

        v64 = v72;
        v55(v23, v72);
        v65 = v26;
        v66 = v64;
LABEL_16:
        v55(v65, v66);
        v51 = type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration(0);
        v49 = v74;
        v50 = 1;
        return sub_10000D904(v49, v50, 1, v51);
      }
    }

    swift_once();
    goto LABEL_14;
  }

  v27 = [a3 localIdentifier];
  v28 = sub_100032910();
  v30 = v29;

LABEL_5:
  v72 = v28;
  v31 = sub_10001F99C(v28, v30, a6, 1200.0);
  sub_100021D68(0.0, 300.0);
  sub_100031C10();
  v32 = sub_100032A40();
  if (qword_100044630 != -1)
  {
    swift_once();
  }

  v33 = qword_100048348;
  v34 = v10[2];
  v34(v15, v19, v9);
  if (os_log_type_enabled(v33, v32))
  {
    v35 = swift_slowAlloc();
    v71 = v30;
    v36 = v35;
    v37 = swift_slowAlloc();
    v70 = v34;
    v38 = v37;
    v75 = v37;
    *v36 = 136315138;
    v39 = sub_100031BC0();
    v40 = v10;
    v41 = v9;
    v42 = v39;
    v44 = v43;
    v69 = v32;
    v45 = v40[1];
    v68 = v33;
    v45(v15, v41);
    v46 = sub_100021264(v42, v44, &v75);

    *(v36 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v68, v69, "scheduled timeline reload because content unavailable at %s", v36, 0xCu);
    sub_100022C1C(v38);
    v34 = v70;

    v30 = v71;
  }

  else
  {
    v45 = v10[1];
    v45(v15, v9);
    v41 = v9;
  }

  v47 = v74;
  *v74 = v72;
  *(v47 + 1) = v30;
  v47[2] = v31;
  v48 = type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration(0);
  v34(v47 + *(v48 + 24), v19, v41);
  sub_100032770();
  v45(v19, v41);
  v49 = v47;
  v50 = 0;
  v51 = v48;
  return sub_10000D904(v49, v50, 1, v51);
}

double sub_10001F99C(uint64_t a1, unint64_t a2, uint64_t a3, double a4)
{
  v8 = sub_100031C40();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000D4FC(&qword_1000453E0, &qword_1000348B0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8, v16);
  v18 = &v33 - v17;
  v19 = type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19, v21);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014188(a3, v18);
  if (sub_10000D8C4(v18, 1, v19) == 1)
  {
    sub_100013B00(v18, &qword_1000453E0, &qword_1000348B0);
    return a4;
  }

  sub_100022904(v18, v23);
  v24 = *(v23 + 1);
  if (!v24 || (*v23 == a1 ? (v25 = v24 == a2) : (v25 = 0), !v25 && (sub_100032CD0() & 1) == 0))
  {
LABEL_15:
    sub_100022A1C(v23, type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration);
    return a4;
  }

  v26 = *(v19 + 24);
  sub_100031C30();
  sub_10002283C(&qword_100045440, &type metadata accessor for Date);
  LOBYTE(v26) = sub_100032880();
  (*(v9 + 8))(v13, v8);
  if (v26)
  {
    v27 = sub_100032A10();
    if (qword_100044618 != -1)
    {
      swift_once();
    }

    v28 = qword_100045360;
    if (os_log_type_enabled(qword_100045360, v27))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v34 = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_100021264(a1, a2, &v34);
      _os_log_impl(&_mh_execute_header, v28, v27, "Not increasing reload delay for entry id %{public}s because reload occurred before scheduled time", v29, 0xCu);
      sub_100022C1C(v30);
    }

    a4 = *(v23 + 2);
    goto LABEL_15;
  }

  v31 = *(v23 + 2);
  sub_100022A1C(v23, type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration);
  if (v31 + v31 <= 3600.0)
  {
    return v31 + v31;
  }

  else
  {
    return 3600.0;
  }
}

void PhotosReliveFeaturedWidget.body.getter()
{
  sub_100011F0C();
  v69 = sub_10000D4FC(&qword_1000446A8, &unk_100033540);
  sub_100011D60(v69);
  v67 = v0;
  v2 = *(v1 + 64);
  sub_100011DBC();
  __chkstk_darwin(v3, v4);
  sub_100011DFC();
  sub_100023F80(v5);
  v71 = sub_10000D4FC(&qword_1000446A0, &unk_100034400);
  sub_100011D60(v71);
  v7 = *(v6 + 64);
  sub_100011DBC();
  __chkstk_darwin(v8, v9);
  sub_100011DFC();
  sub_100023F80(v10);
  v74 = sub_10000D4FC(&qword_100044698, &unk_100033530);
  sub_100011D60(v74);
  v72 = v11;
  v13 = *(v12 + 64);
  sub_100011DBC();
  __chkstk_darwin(v14, v15);
  sub_100011DFC();
  sub_100023F80(v16);
  v75 = sub_10000D4FC(&qword_100044690, &unk_100034410);
  sub_100011D60(v75);
  v18 = *(v17 + 64);
  sub_100011DBC();
  __chkstk_darwin(v19, v20);
  sub_100011DFC();
  v76 = sub_10000D4FC(&qword_1000446E8, &qword_100033570);
  sub_100011D60(v76);
  v73 = v21;
  v23 = *(v22 + 64);
  sub_100011DBC();
  __chkstk_darwin(v24, v25);
  sub_100011DFC();
  v70 = v26;
  v27 = sub_10000D4FC(&qword_1000446E0, &qword_100034420);
  sub_100011D60(v27);
  v29 = *(v28 + 64);
  sub_100011DBC();
  __chkstk_darwin(v30, v31);
  sub_100011DFC();
  v32 = objc_opt_self();
  sub_100021F20([v32 mainBundle]);
  if (v33)
  {
    sub_10000D4FC(&qword_100045370, &qword_100034428);
    v34 = sub_100032750();
    sub_100011D60(v34);
    v36 = v35;
    v38 = *(v37 + 72);
    v39 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_1000343E0;
    v40 = v65 + v39;
    v41 = *(v36 + 104);
    v41(v40, enum case for WidgetFamily.systemSmall(_:), v34);
    v41(v40 + v38, enum case for WidgetFamily.systemMedium(_:), v34);
    v41(v40 + 2 * v38, enum case for WidgetFamily.systemLarge(_:), v34);
    v41(v40 + 3 * v38, enum case for WidgetFamily.systemExtraLarge(_:), v34);
    sub_100032080();
    sub_100032080();
    v43 = [v32 mainBundle];
    sub_1000241A0();
    v44 = sub_100024074();
    v64 = v45;
    v46 = [v32 mainBundle];
    sub_1000241A0();
    sub_100024074();
    v63 = v47;
    v49 = v48;
    type metadata accessor for PhotosReliveWidgetView();
    sub_100023EB0();
    v52 = sub_10002283C(v50, v51);
    v62 = sub_100021F90();
    sub_100032790();
    sub_100023E3C();
    sub_100022D6C(v53, v54, v55);
    sub_100032100();

    (*(v67 + 8))(v66, v69);
    sub_100023E24();
    sub_100024170();
    sub_100032130();
    v56 = sub_100023EF0();
    v57(v56);
    sub_100023E0C();
    sub_100024170();
    sub_1000320F0();
    (*(v72 + 8))(v68, v74);
    sub_100023DF4();
    sub_100024170();
    sub_100032140();
    v58 = sub_100023EF0();
    v59(v58);
    sub_100023DDC();
    sub_100024170();
    sub_1000240E8();
    sub_100032120();
    (*(v73 + 8))(v70, v76);
    sub_100023DC4();
    sub_100024170();
    sub_100032110();
    sub_1000230E4(&type metadata for PhotosReliveFeaturedWidgetEntryProvider, v63, v49 & 1, &_swift_release);

    sub_1000230E4(v62, v52, v64 & 1, &_swift_release);

    v60 = sub_100023EF0();
    v61(v60);
    sub_100011EF4();
  }

  else
  {
    __break(1u);
  }
}

void PhotosReliveCollectionsWidget.body.getter()
{
  sub_100011F0C();
  v73 = sub_10000D4FC(&qword_1000446D0, &unk_100033560);
  sub_100011D60(v73);
  v1 = *(v0 + 64);
  sub_100011DBC();
  __chkstk_darwin(v2, v3);
  sub_100011DFC();
  sub_100023F80(v4);
  v77 = sub_10000D4FC(&qword_1000446C8, &unk_100034450);
  sub_100011D60(v77);
  v74 = v5;
  v7 = *(v6 + 64);
  sub_100011DBC();
  __chkstk_darwin(v8, v9);
  sub_100011DFC();
  sub_100023F80(v10);
  v80 = sub_10000D4FC(&qword_1000446C0, &unk_100033550);
  sub_100011D60(v80);
  v12 = *(v11 + 64);
  sub_100011DBC();
  __chkstk_darwin(v13, v14);
  sub_100011DFC();
  sub_100023F80(v15);
  v81 = sub_10000D4FC(&qword_1000446B8, &unk_100034460);
  sub_100011D60(v81);
  v78 = v16;
  v18 = *(v17 + 64);
  sub_100011DBC();
  __chkstk_darwin(v19, v20);
  sub_100011DFC();
  v75 = v21;
  v82 = sub_10000D4FC(&qword_100044700, &qword_100033588);
  sub_100011D60(v82);
  v23 = *(v22 + 64);
  sub_100011DBC();
  __chkstk_darwin(v24, v25);
  sub_100011DFC();
  v83 = sub_10000D4FC(&qword_1000446F8, &qword_100033580);
  sub_100011D60(v83);
  v79 = v26;
  v28 = *(v27 + 64);
  sub_100011DBC();
  __chkstk_darwin(v29, v30);
  sub_100011DFC();
  v76 = v31;
  v32 = sub_10000D4FC(&qword_1000446F0, &qword_100033578);
  sub_100011D60(v32);
  v34 = *(v33 + 64);
  sub_100011DBC();
  __chkstk_darwin(v35, v36);
  sub_100011DFC();
  v70 = objc_opt_self();
  sub_100021F20([v70 mainBundle]);
  if (v37)
  {

    v84._countAndFlagsBits = 0x7463656C6C6F632ELL;
    v84._object = 0xEC000000736E6F69;
    sub_100032950(v84);

    sub_10000D4FC(&qword_100045370, &qword_100034428);
    sub_100024130();
    v38 = sub_100032750();
    sub_100011D60(v38);
    v40 = v39;
    v42 = *(v41 + 72);
    v43 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_1000343E0;
    v44 = v69 + v43;
    v45 = *(v40 + 104);
    v45(v44, enum case for WidgetFamily.systemSmall(_:), v38);
    v45(v44 + v42, enum case for WidgetFamily.systemMedium(_:), v38);
    v45(v44 + 2 * v42, enum case for WidgetFamily.systemLarge(_:), v38);
    v45(v44 + 3 * v42, enum case for WidgetFamily.systemExtraLarge(_:), v38);
    sub_100032080();
    sub_100032080();
    v46 = [v70 mainBundle];
    sub_1000241A0();
    v68 = sub_100024074();
    v67 = v47;
    v66 = v48;
    v49 = [v70 mainBundle];
    sub_1000241A0();
    sub_100024074();
    v71 = v50;
    type metadata accessor for PhotosReliveWidgetView();
    sub_100023EB0();
    v64 = sub_10002283C(v51, v52);
    v65 = sub_100021FE4();
    sub_100032790();
    sub_100023E3C();
    sub_100022D6C(v53, v54, v55);
    sub_100032100();

    v56 = sub_100024030();
    v57(v56, v73);
    sub_100023E24();
    sub_100024158();
    sub_100032130();
    (*(v74 + 8))(v72, v77);
    sub_100023E0C();
    sub_100024158();
    sub_1000320F0();
    v58 = sub_100024030();
    v59(v58, v80);
    sub_100023DF4();
    sub_100024158();
    sub_100032140();
    (*(v78 + 8))(v75, v81);
    sub_100023DDC();
    sub_100024158();
    sub_100032120();
    v60 = sub_100024030();
    v61(v60, v82);
    sub_100023DC4();
    sub_100024158();
    sub_1000320E0();
    (*(v79 + 8))(v76, v83);
    sub_100024158();
    sub_100032110();
    sub_1000230E4(v64, v71, v65 & 1, &_swift_release);

    sub_1000230E4(v68, v67, v66 & 1, &_swift_release);

    v62 = sub_100023EF0();
    v63(v62);
    sub_100011EF4();
  }

  else
  {
    __break(1u);
  }
}

id sub_100020EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = *(a1 + 10);
  v6 = *(a1 + 16);
  v7 = *(type metadata accessor for PhotosReliveWidgetView() + 32);
  *(a2 + v7) = swift_getKeyPath();
  sub_10000D4FC(&qword_100044688, qword_100033510);
  swift_storeEnumTagMultiPayload();
  v8 = 256;
  if (!v4)
  {
    v8 = 0;
  }

  v9 = v8 | v3;
  v10 = 0x10000;
  if (!v5)
  {
    v10 = 0;
  }

  *a2 = v12;
  *(a2 + 8) = v9 | v10;
  *(a2 + 16) = v6;
  *(a2 + 24) = v6;
  *(a2 + 32) = v3;
  *(a2 + 33) = v4;
  *(a2 + 34) = v5;
  swift_retain_n();

  return v12;
}

uint64_t PhotosReliveWidgetBundle.body.getter()
{
  v0 = sub_10000D4FC(&qword_100045390, &qword_100034470);

  return TupleWidget.init(_:)(v0, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100022038();
  sub_100031E00();
  return 0;
}

id sub_100021064(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_100032900();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_100031B10();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_100021144(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_100032C20();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_100021190(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 < a1 || (v10 = sub_10000D4FC(a4, a5), result = sub_100011D74(v10), a1 + *(v12 + 72) * a2 <= a3))
  {
    sub_10000D4FC(a4, a5);
    v14 = sub_1000241E0();

    return _swift_arrayInitWithTakeFrontToBack(v14);
  }

  else if (a3 != a1)
  {
    v13 = sub_1000241E0();

    return _swift_arrayInitWithTakeBackToFront(v13);
  }

  return result;
}

uint64_t sub_100021264(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100021328(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_100022884(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100022C1C(v11);
  return v7;
}

unint64_t sub_100021328(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100021428(a5, a6);
    *a1 = v9;
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
    result = sub_100032BF0();
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

char *sub_100021428(uint64_t a1, unint64_t a2)
{
  v4 = sub_100021474(a1, a2);
  sub_10002158C(&off_100041FF8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100021474(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_100032960())
  {
    result = sub_100021670(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_100032BB0();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_100032BF0();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_10002158C(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_1000216E0(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100021670(uint64_t a1, uint64_t a2)
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

  sub_10000D4FC(&qword_1000453F0, &qword_1000348B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1000216E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000D4FC(&qword_1000453F0, &qword_1000348B8);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

char *sub_1000217D4(char *a1, int64_t a2, char a3)
{
  result = sub_100021854(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000217F4(char *a1, int64_t a2, char a3)
{
  result = sub_10002196C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100021814(char *a1, int64_t a2, char a3)
{
  result = sub_100021A74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100021834(size_t a1, int64_t a2, char a3)
{
  result = sub_100021B8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100021854(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000D4FC(&qword_100045450, &qword_1000348E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10002196C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000D4FC(&qword_1000454B8, &unk_100034930);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100021A74(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000D4FC(&qword_1000454E0, &qword_100034960);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100021B8C(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  sub_10000D4FC(&qword_1000454E8, &qword_100034968);
  v10 = *(sub_10000D4FC(&qword_1000454D8, &qword_100034958) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10000D4FC(&qword_1000454D8, &qword_100034958) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_100021190(a4 + v16, v8, v13 + v16, &qword_1000454D8, &qword_100034958);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_100021D68(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_100021DE0(0x20000000000001uLL);
  }
}

unint64_t sub_100021DE0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100021E6C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_100032900();
  v5 = [a3 isValidCloudIdentifierStringValue:v4];

  return v5;
}

id sub_100021EB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_100032900();

  v7 = [a4 fallbackEntryForAlbumNotFoundWithLocalIdentifier:v6 size:a3];

  return v7;
}

uint64_t sub_100021F20(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_100032910();

  return v3;
}

unint64_t sub_100021F90()
{
  result = qword_100045380;
  if (!qword_100045380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045380);
  }

  return result;
}

unint64_t sub_100021FE4()
{
  result = qword_100045388;
  if (!qword_100045388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045388);
  }

  return result;
}

unint64_t sub_100022038()
{
  result = qword_100045398;
  if (!qword_100045398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045398);
  }

  return result;
}

__n128 sub_1000220E0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000220F4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100022134(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000221B4()
{
  sub_10000D57C(&qword_1000446E0, &qword_100034420);
  sub_10000D57C(&qword_1000446E8, &qword_100033570);
  sub_10000D57C(&qword_100044690, &unk_100034410);
  sub_10000D57C(&qword_100044698, &unk_100033530);
  sub_10000D57C(&qword_1000446A0, &unk_100034400);
  sub_10000D57C(&qword_1000446A8, &unk_100033540);
  sub_100023E3C();
  sub_100022D6C(v0, &qword_1000446A8, &unk_100033540);
  sub_100023E24();
  sub_100023FFC();
  sub_100023E0C();
  sub_100023FFC();
  sub_100023DF4();
  sub_100023FFC();
  sub_100023DDC();
  sub_100023FFC();
  sub_100023DC4();
  sub_100023FFC();
  return sub_100011DC8();
}

uint64_t sub_1000222F4()
{
  sub_10000D57C(&qword_1000446F0, &qword_100033578);
  sub_10000D57C(&qword_1000446F8, &qword_100033580);
  sub_10000D57C(&qword_100044700, &qword_100033588);
  sub_10000D57C(&qword_1000446B8, &unk_100034460);
  sub_10000D57C(&qword_1000446C0, &unk_100033550);
  sub_10000D57C(&qword_1000446C8, &unk_100034450);
  sub_10000D57C(&qword_1000446D0, &unk_100033560);
  sub_100023E3C();
  sub_100022D6C(v0, &qword_1000446D0, &unk_100033560);
  sub_100023E24();
  sub_100023FFC();
  sub_100023E0C();
  sub_100023FFC();
  sub_100023DF4();
  sub_100023FFC();
  sub_100023DDC();
  sub_100023FFC();
  sub_100023DC4();
  sub_100023FFC();
  sub_100011DC8();
  return sub_100011DC8();
}

uint64_t getEnumTagSinglePayload for PhotosReliveWidgetEntryRole(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhotosReliveWidgetEntryRole(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100022610);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10002266C()
{
  result = qword_1000453B0;
  if (!qword_1000453B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000453B0);
  }

  return result;
}

unint64_t sub_1000226C4()
{
  result = qword_1000453B8;
  if (!qword_1000453B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000453B8);
  }

  return result;
}

unint64_t sub_10002271C()
{
  result = qword_1000453C0;
  if (!qword_1000453C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000453C0);
  }

  return result;
}

unint64_t sub_100022774()
{
  result = qword_1000453C8;
  if (!qword_1000453C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000453C8);
  }

  return result;
}

uint64_t sub_1000227E8@<X0>(void *a1@<X8>)
{
  result = sub_100031EF0();
  *a1 = v3;
  return result;
}

uint64_t sub_10002283C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100022884(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100022904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100022968()
{
  result = qword_100045400;
  if (!qword_100045400)
  {
    sub_10000D57C(&qword_1000453E0, &qword_1000348B0);
    sub_10002283C(&qword_100045408, type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045400);
  }

  return result;
}

uint64_t sub_100022A1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100011D74(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100022A74(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *sub_100022ACC(void *result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_100022B0C()
{
  result = qword_100045438;
  if (!qword_100045438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045438);
  }

  return result;
}

uint64_t sub_100022B60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024130();
  v6 = v5(v4);
  sub_100011D74(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t *sub_100022BBC(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_100022C1C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100022C68(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_100022CB4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_100032C20();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_100022D54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100022D6C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000D57C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100022DE8()
{
  sub_100011F0C();
  v1 = sub_10000D4FC(&qword_100045478, &qword_1000348F8);
  sub_100011D60(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_1000240E8();
  v9 = sub_10000D4FC(v7, v8);
  sub_100011D60(v9);
  v11 = v10;
  v12 = (v4 + v6 + *(v11 + 80)) & ~*(v11 + 80);
  v14 = *(v13 + 64);
  v15 = *(v0 + 16);

  v16 = *(v0 + 24);

  (*(v3 + 8))(v0 + v4, v1);
  (*(v11 + 8))(v0 + v12, v9);
  sub_100011EF4();

  return _swift_deallocObject(v17, v18, v19);
}

uint64_t sub_100022F54(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = sub_10000D4FC(&qword_100045478, &qword_1000348F8);
  sub_100023E68(v3);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = sub_1000240E8();
  v10 = sub_10000D4FC(v8, v9);
  sub_100011EE8(v10);
  v12 = *(v11 + 80);
  v13 = sub_100024200();

  return a3(v13);
}

uint64_t sub_100023068@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 25))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v2 + 32);
  return sub_10001BC5C(a1, *(v2 + 16), v3 | *(v2 + 24), a2);
}

uint64_t sub_1000230A4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1000230E4(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void))
{
  if (a3)
  {
    return a4();
  }

  else
  {
  }
}

uint64_t sub_1000230F8(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_100032B70();
  v4 = *(a1 + 36);
  return result;
}

void *sub_100023138(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    v6 = *(a5 + 56) + 24 * a2;
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    *result = *v6;
    result[1] = v8;
    *(result + 16) = v9;
    v10 = v5;
    sub_1000231DC(v7, v8, v9);
    return v10;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1000231DC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_100023244()
{
  v0 = sub_10000D4FC(&qword_100045480, &qword_100034900);
  sub_100011EE8(v0);
  v2 = *(v1 + 80);
  return sub_10001E100();
}

uint64_t sub_1000232F4()
{
  sub_100011F0C();
  v2 = v1;
  v4 = v3;
  v5 = sub_10000D4FC(&qword_100045478, &qword_1000348F8);
  sub_100011D60(v5);
  v7 = v6;
  v8 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v10 = *(v9 + 64);
  v11 = sub_10000D4FC(v4, v2);
  sub_100011D60(v11);
  v13 = v12;
  v14 = (v8 + v10 + *(v13 + 80)) & ~*(v13 + 80);
  v16 = *(v15 + 64);
  v17 = *(v0 + 2);

  v18 = *(v0 + 3);

  v19 = *(v0 + 4);

  v20 = *(v0 + 5);

  (*(v7 + 8))(&v0[v8], v5);
  (*(v13 + 8))(&v0[v14], v11);
  sub_100011EF4();

  return _swift_deallocObject(v21, v22, v23);
}

uint64_t sub_100023474(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_10000D4FC(&qword_100045478, &qword_1000348F8);
  sub_100023E68(v4);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v8 = *(v7 + 64);
  v9 = sub_1000240E8();
  v11 = sub_10000D4FC(v9, v10);
  sub_100011EE8(v11);
  v13 = *(v12 + 80);
  v14 = sub_100024200();
  v15 = *(v3 + 32);
  v16 = *(v3 + 40);

  return a3(v14);
}

uint64_t sub_100023560(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10000D4FC(a1, a2);
  sub_100011D74(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_1000235E0(void *a1)
{
  v2 = sub_10000D4FC(&qword_1000454A0, &qword_100034918);
  sub_100011EE8(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_10001C840(a1);
}

uint64_t sub_100023680(uint64_t a1, uint64_t a2)
{
  sub_100024130();
  v4 = sub_100032750();

  return sub_10000D8C4(v2, a2, v4);
}

uint64_t sub_1000236D8(uint64_t a1, uint64_t a2)
{
  sub_100024130();
  v4 = sub_100032750();

  return sub_10000D904(v2, a2, a2, v4);
}

void sub_100023720()
{
  sub_100032750();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize();
    if (v1 <= 0x3F)
    {
      sub_1000239A4(319, &qword_100044EB8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000237E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100031C40();
    v10 = a1 + *(a3 + 24);

    return sub_10000D8C4(v10, a2, v9);
  }
}

uint64_t sub_100023888(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_100031C40();
    v8 = v5 + *(a4 + 24);

    return sub_10000D904(v8, a2, a2, v7);
  }

  return result;
}

void sub_100023908()
{
  sub_1000239A4(319, &unk_1000455F0);
  if (v0 <= 0x3F)
  {
    sub_100031C40();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000239A4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_100032B10();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void *sub_1000239F0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100023A34()
{
  result = qword_100045630;
  if (!qword_100045630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045630);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhotosReliveWidgetViewModel.TitleLayout.Style(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhotosReliveWidgetScheduledReloadConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100023BDCLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100023C28()
{
  result = qword_100045650;
  if (!qword_100045650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045650);
  }

  return result;
}

unint64_t sub_100023C80()
{
  result = qword_100045658;
  if (!qword_100045658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045658);
  }

  return result;
}

unint64_t sub_100023CD8()
{
  result = qword_100045660;
  if (!qword_100045660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045660);
  }

  return result;
}

uint64_t sub_100023F00()
{

  return swift_once();
}

uint64_t sub_100023F30()
{

  return swift_once();
}

uint64_t sub_100023F50()
{

  return swift_once();
}

uint64_t sub_100023F8C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 25);
  v6 = *(v2 + 26);
  v7 = *(v2 + 32);
  v8 = *(a1 + 8);
  return v1;
}

uint64_t sub_100023FAC()
{
}

uint64_t sub_100023FFC()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100024014()
{

  return PhotosSendableTransfer.init(wrappedValue:)(v0, v1);
}

uint64_t sub_10002403C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);
  v5 = *(a1 + 42);
  v6 = *(a1 + 48);
}

uint64_t sub_100024074()
{

  return sub_100032380();
}

uint64_t sub_1000240D0()
{

  return swift_task_alloc();
}

void sub_1000240F4()
{
  v4 = (v1 + *(v0 + 20));
  *v4 = v2;
  v4[1] = v3;
  v5 = v1 + *(v0 + 24);
}

uint64_t sub_10002413C()
{

  return sub_100021264(v0, v1, (v2 - 144));
}

uint64_t sub_100024158()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100024170()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100024188()
{

  return swift_slowAlloc();
}

uint64_t sub_1000241CC()
{
  result = v1;
  *(v2 - 216) = *(v0 + 8);
  return result;
}

uint64_t sub_100024200()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_100024238()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_100024244(uint64_t a1, uint64_t a2)
{

  return sub_10000D904(a1, a2, 1, v2);
}

uint64_t sub_10002425C()
{

  return swift_slowAlloc();
}

unint64_t sub_100024274()
{
  result = qword_100045668;
  if (!qword_100045668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045668);
  }

  return result;
}

uint64_t sub_1000242CC()
{
  v0 = sub_100031B50();
  sub_100025688(v0, qword_100048350);
  sub_10000F4F4(v0, qword_100048350);
  return sub_100031B20();
}

uint64_t sub_10002439C()
{
  v0 = sub_1000317C0();
  v1 = sub_100011D60(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1, v6);
  sub_100011DAC();
  v9 = v8 - v7;
  v10 = sub_100031A20();
  v11 = sub_100011D60(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  sub_100011DAC();
  (*(v17 + 104))(v16 - v15, enum case for EquatableComparisonOperator.equalTo(_:));
  (*(v3 + 104))(v9, enum case for IntentOrigin.local(_:), v0);
  sub_10000D4FC(&qword_1000456E8, &qword_100034DA0);
  sub_100024274();
  sub_1000256F0();
  sub_100022D6C(v18, &qword_1000456E8, &qword_100034DA0);
  return sub_100031A50();
}

uint64_t sub_1000245A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_100024354();
  *a2 = result;
  return result;
}

uint64_t sub_1000245D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_100024378();
  *a2 = result;
  return result;
}

uint64_t sub_100024614()
{
  v0 = sub_10000D4FC(&qword_1000456E8, &qword_100034DA0);
  v1 = sub_100011D60(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v7 = __chkstk_darwin(v1, v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v16 - v11;
  sub_100024274();
  sub_100031960();
  sub_1000256F0();
  sub_100022D6C(v13, &qword_1000456E8, &qword_100034DA0);
  sub_100031990();
  v14 = *(v3 + 8);
  v14(v9, v0);
  sub_100031980();
  return (v14)(v12, v0);
}

uint64_t sub_1000247A4()
{
  swift_getKeyPath();
  sub_100024274();
  v0 = sub_100031950();

  swift_getKeyPath();

  v1 = sub_100031950();

  sub_10000D4FC(&qword_1000454C0, &qword_100035320);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100034B90;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;

  v3 = sub_100031940();

  return v3;
}

uint64_t sub_100024890@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_100024330();
  *a2 = result;
  return result;
}

uint64_t sub_1000248BC()
{
  v0 = sub_10000D4FC(&qword_1000456A0, &qword_100034D68);
  v1 = sub_100011EE8(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v109 = v103 - v5;
  sub_100023ED4();
  v108 = sub_1000319F0();
  v6 = sub_100011D60(v108);
  v106 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6, v10);
  sub_100011DAC();
  v107 = v12 - v11;
  sub_100023ED4();
  v13 = sub_100031B30();
  v122 = sub_100011D60(v13);
  v123 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v122, v17);
  sub_100011DAC();
  v119 = v19 - v18;
  sub_100023ED4();
  v20 = sub_100031C60();
  v21 = sub_100011EE8(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21, v24);
  sub_100011DAC();
  v118 = v26 - v25;
  sub_100023ED4();
  v27 = sub_1000328F0();
  v28 = sub_100011EE8(v27);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28, v31);
  sub_100011DAC();
  v120 = v33 - v32;
  sub_100023ED4();
  v111 = sub_100031970();
  v34 = *(v111 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v111, v36);
  sub_100011DAC();
  v39 = v38 - v37;
  v40 = sub_10000D4FC(&qword_1000456A8, &unk_100034D70);
  v41 = sub_100011EE8(v40);
  v43 = *(v42 + 64);
  v45 = __chkstk_darwin(v41, v44);
  __chkstk_darwin(v45, v46);
  v48 = v103 - v47;
  v49 = sub_10000D4FC(&qword_1000456B0, &unk_1000352E0);
  v50 = sub_100011EE8(v49);
  v52 = *(v51 + 64);
  __chkstk_darwin(v50, v53);
  v54 = sub_100031B50();
  v113 = v54;
  v55 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54, v56);
  sub_100011DAC();
  sub_10000D4FC(&qword_1000456B8, &qword_100034D80);
  sub_100031B20();
  sub_100025708();
  sub_10000D904(v57, v58, v59, v54);
  LOBYTE(v124) = 0;
  v60 = sub_1000317B0();
  sub_100025708();
  sub_10000D904(v61, v62, v63, v60);
  sub_100025708();
  sub_10000D904(v64, v65, v66, v60);
  v121 = enum case for InputConnectionBehavior.default(_:);
  v67 = *(v34 + 104);
  v103[4] = v34 + 104;
  v112 = v67;
  v110 = v39;
  v67(v39);
  sub_1000255D4();
  v105 = sub_100031830();
  v104 = sub_10000D4FC(&qword_1000456C8, &qword_100034D88);
  v103[3] = "unexpected smart album type";
  sub_1000328A0();
  v114 = &unk_100034D00;
  sub_100031C50();
  v117 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v68 = *(v123 + 104);
  v123 += 104;
  v116 = v68;
  v68(v119);
  sub_100031B60();
  sub_100025708();
  v69 = v113;
  sub_10000D904(v70, v71, v72, v113);
  v126 = 0;
  v124 = 0u;
  v125 = 0u;
  v103[1] = v48;
  sub_100025708();
  v115 = v60;
  sub_10000D904(v73, v74, v75, v60);
  sub_100025708();
  sub_10000D904(v76, v77, v78, v60);
  v80 = v111;
  v79 = v112;
  v112(v110, v121, v111);
  sub_100025628();
  v104 = sub_100031840();
  v103[2] = sub_10000D4FC(&qword_1000456D8, &qword_100034D90);
  sub_1000328A0();
  sub_100031C50();
  v81 = sub_100025744();
  v82(v81);
  sub_100025714();
  sub_100025708();
  sub_10000D904(v83, v84, v85, v69);
  (*(v106 + 104))(v107, enum case for _IntentPhotoItemCollection.PickerMode.albums(_:), v108);
  sub_100025708();
  sub_10000D904(v86, v87, v88, v115);
  v89 = v110;
  v79(v110, v121, v80);
  v108 = sub_100031820();
  sub_10000D4FC(&qword_1000456E0, &qword_100034D98);
  sub_1000328A0();
  sub_100031C50();
  v90 = sub_100025744();
  v91(v90);
  sub_100025714();
  sub_100025708();
  sub_10000D904(v92, v93, v94, v113);
  LOBYTE(v124) = 0;
  sub_1000329E0();
  sub_100025708();
  sub_10000D904(v95, v96, v97, v98);
  sub_100025708();
  sub_10000D904(v99, v100, v101, v115);
  v112(v89, v121, v111);
  sub_100031850();
  return v105;
}

unint64_t sub_1000250B0()
{
  result = qword_100045670;
  if (!qword_100045670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045670);
  }

  return result;
}

unint64_t sub_100025108()
{
  result = qword_100045678;
  if (!qword_100045678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045678);
  }

  return result;
}

unint64_t sub_100025160()
{
  result = qword_100045680;
  if (!qword_100045680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045680);
  }

  return result;
}

uint64_t sub_1000251D0@<X0>(uint64_t a1@<X8>)
{
  if (qword_100044638 != -1)
  {
    swift_once();
  }

  v2 = sub_100031B50();
  v3 = sub_10000F4F4(v2, qword_100048350);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100025290(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to WidgetConfigurationIntent.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10002271C();
  *v5 = v2;
  v5[1] = sub_10002533C;

  return WidgetConfigurationIntent.perform()(a2, v6);
}

uint64_t sub_10002533C()
{
  v2 = *(*v1 + 16);
  v3 = *v1;

  if (v0)
  {
    v5 = *(v3 + 8);

    return v5();
  }

  return result;
}

uint64_t sub_100025444@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000248BC();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_100025470(uint64_t a1)
{
  v2 = sub_100025580();

  return static CustomIntentMigratedAppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000254AC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000254EC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_100025580()
{
  result = qword_100045698;
  if (!qword_100045698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045698);
  }

  return result;
}

unint64_t sub_1000255D4()
{
  result = qword_1000456C0;
  if (!qword_1000456C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000456C0);
  }

  return result;
}

unint64_t sub_100025628()
{
  result = qword_1000456D0;
  if (!qword_1000456D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000456D0);
  }

  return result;
}

uint64_t *sub_100025688(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100025714()
{

  return sub_100031B60();
}

uint64_t sub_100025744()
{
  result = v0;
  v3 = *(v1 - 204);
  v4 = *(v1 - 168);
  v5 = *(v1 - 160);
  v6 = *(v1 - 216);
  return result;
}

BOOL sub_100025AAC(__int16 a1, uint64_t a2, char a3, __int16 a4, uint64_t a5, char a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if ((a3 & 1) == 0)
  {
    return (a6 & 1) == 0 && *&a2 == *&a5;
  }

  return (a6 & 1) != 0;
}

void sub_100025CA8()
{
  sub_100011F0C();
  v49 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = type metadata accessor for PhotosReliveWidgetSize(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  sub_100011DAC();
  v18 = v17 - v16;
  v19 = sub_100032750();
  v20 = sub_100011D60(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v20, v25);
  sub_100011DAC();
  v28 = v27 - v26;
  if (v10 == 1)
  {
    type metadata accessor for PhotosReliveWidgetFallbackViewModel(0);
    v37 = *(v22 + 16);
    v38 = sub_10002B1D8();
    v39(v38);
    v40 = v12;

    sub_100025AE8(v40, v41, v8, v28);
    goto LABEL_9;
  }

  if (v10 == 2)
  {
    type metadata accessor for PhotosReliveWidgetPlaceholderViewModel(0);
    v29 = [v12 contentType];
    v30 = sub_10002A8E4(v12, &selRef_sourceIdentifier);
    v31 = v4;
    v33 = v32;
    (*(v22 + 16))(v28, v31, v19);
    v34 = v29;
    v35 = v30;
    v36 = v33;
LABEL_8:
    sub_100025760(v34, v35, v36, v28);
    goto LABEL_9;
  }

  v48 = v4;
  if (v10 != 3)
  {
    type metadata accessor for PhotosReliveWidgetViewModel(0);
    sub_10002A4FC(v6, v18);
    v42 = v12;
    v43 = v2;

    if (!sub_100026518(v42, v10 & 0x101FF, v8, v18, v43, v49 & 1))
    {
      type metadata accessor for PhotosReliveWidgetPlaceholderViewModel(0);
      v44 = [v42 contentType];
      v45 = sub_10002A8E4(v42, &selRef_sourceIdentifier);
      v47 = v46;
      (*(v22 + 16))(v28, v48, v19);
      v34 = v44;
      v35 = v45;
      v36 = v47;
      goto LABEL_8;
    }

LABEL_9:
    sub_100011EF4();
    return;
  }

  sub_100032C10();
  __break(1u);
}

void sub_100025F70()
{
  sub_100011F0C();
  v1 = v0;
  v3 = v2;
  v4 = sub_100032750();
  v5 = sub_100011D60(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  sub_100011D9C();
  v13 = v11 - v12;
  __chkstk_darwin(v14, v15);
  v17 = &v31 - v16;
  v18 = type metadata accessor for PhotosReliveWidgetSize(0);
  v19 = *(v18 + 24);
  v20 = *(v1 + *(v18 + 20));
  v32 = v20;
  if (*(v1 + v19 + 8))
  {
    v21 = [objc_opt_self() px_mainScreen];
    [v21 scale];
    v31 = v22;
  }

  else
  {
    v20.f64[0] = *(v1 + v19);
    v31 = v20;
  }

  (*(v7 + 16))(v17, v1, v4);
  v23 = *(v7 + 104);
  v23(v13, enum case for WidgetFamily.systemLarge(_:), v4);
  sub_10002B06C();
  sub_10002AB78(v24, v25);
  sub_10002B1D8();
  sub_100032970();
  sub_10002B1D8();
  sub_100032970();
  v26 = *(v7 + 8);
  v26(v13, v4);
  if (v34 == v33)
  {
    v27 = sub_10002B1E4();
    (v26)(v27);
  }

  else
  {
    v23(v13, enum case for WidgetFamily.systemExtraLarge(_:), v4);
    sub_10002B1D8();
    sub_100032970();
    sub_10002B1D8();
    sub_100032970();
    v26(v13, v4);
    v28 = sub_10002B1E4();
    (v26)(v28);
    if (v34 != v33)
    {
      v29 = v31.f64[0];
      goto LABEL_11;
    }
  }

  v29 = v31.f64[0];
  if (v31.f64[0] > 2.0)
  {
    v29 = 2.0;
  }

LABEL_11:
  v30 = v32;
  *v3 = vmulq_n_f64(v32, v29);
  v3[1] = v30;
  v3[2].f64[0] = v29;
  sub_100011EF4();
}

uint64_t sub_1000261F4()
{
  sub_1000230A4(0, &qword_100045428, OS_os_log_ptr);
  result = sub_100032B00();
  qword_100048368 = result;
  return result;
}

uint64_t sub_10002626C()
{
  v13 = sub_100032A80();
  v0 = *(v13 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v13, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100032A70();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5, v7);
  v8 = sub_1000326A0();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12[1] = sub_1000230A4(0, &qword_100045470, OS_dispatch_queue_ptr);
  sub_100032690();
  v14 = &_swiftEmptyArrayStorage;
  sub_10002AB78(&qword_100045A18, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000D4FC(&qword_100045A20, &qword_100034FD0);
  sub_100022D6C(&qword_100045A28, &qword_100045A20, &qword_100034FD0);
  sub_100032B60();
  (*(v0 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v13);
  result = sub_100032AB0();
  qword_100048370 = result;
  return result;
}

int64_t sub_100026518(void *a1, int a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  LODWORD(v198) = a6;
  v210 = a4;
  v206 = a3;
  LODWORD(v193) = a2;
  v8 = sub_100031B90();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  sub_100011DAC();
  v195 = v12 - v11;
  v201 = sub_100032750();
  v13 = sub_100011D60(v201);
  v194 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13, v17);
  sub_100011DAC();
  v200 = v19 - v18;
  v190 = type metadata accessor for PhotosReliveWidgetSize(0);
  v20 = sub_100011D74(v190);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20, v23);
  sub_100011D9C();
  v189 = v24 - v25;
  v28 = __chkstk_darwin(v26, v27);
  v197 = &v179 - v29;
  __chkstk_darwin(v28, v30);
  v32 = &v179 - v31;
  v205 = sub_100031D80();
  v33 = sub_100011D60(v205);
  v204 = v34;
  v36 = *(v35 + 64);
  __chkstk_darwin(v33, v37);
  sub_100011DAC();
  v40 = v39 - v38;
  if (qword_100044640 != -1)
  {
    swift_once();
  }

  v41 = qword_100048368;
  v207 = a1;
  v42 = [v207 assetLocalIdentifier];
  v43 = sub_100032910();
  v45 = v44;

  v46 = v41;
  sub_100031D60();
  sub_100032AD0();
  sub_10000D4FC(&qword_100045430, &qword_1000348D8);
  v47 = swift_allocObject();
  v209 = xmmword_1000334C0;
  *(v47 + 16) = xmmword_1000334C0;
  *(v47 + 56) = &type metadata for String;
  *(v47 + 64) = sub_100022B0C();
  *(v47 + 32) = v43;
  *(v47 + 40) = v45;

  sub_100031D40();

  v208 = a5;
  v48 = [a5 librarySpecificFetchOptions];
  [v48 setIncludeGuestAssets:1];
  v49 = objc_opt_self();
  sub_10000D4FC(&qword_1000454B8, &unk_100034930);
  v50 = swift_allocObject();
  *(v50 + 16) = v209;
  v202 = v43;
  *(v50 + 32) = v43;
  *(v50 + 40) = v45;
  *&v209 = v45;

  isa = sub_100032990().super.isa;

  v203 = v48;
  v52 = [v49 fetchAssetsWithLocalIdentifiers:isa options:v48];

  v53 = [v52 firstObject];
  v54 = v40;
  if (!v53)
  {
    if (!v193)
    {
      v125 = sub_100032A20();
      if (os_log_type_enabled(v46, v125))
      {
        v126 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        *&v213 = v127;
        *v126 = 136446210;
        v128 = sub_10002B0B8();
        v131 = sub_100021264(v128, *(v129 - 256), v130);

        *(v126 + 4) = v131;
        sub_10002B204(&_mh_execute_header, v132, v133, "Error fetching asset for identifier %{public}s");
        sub_100022C1C(v127);
        sub_100023FAC();
        sub_100023FAC();
      }

      else
      {
        sub_10002B23C();
      }

      sub_10002B224();

      v178 = v207;

      sub_10002A944(v210);
      sub_10002B1A0();
      v160 = v40;
      goto LABEL_40;
    }

    sub_10002B23C();
    sub_10002B224();

LABEL_35:
    v158 = v207;

    sub_10002A944(v210);
    sub_10002B1A0();
    v160 = v54;
LABEL_40:
    v159(v160, v205);
    return 0;
  }

  v55 = v53;
  sub_100032AC0();
  sub_100031D50();
  v56 = type metadata accessor for PhotosReliveWidgetViewModel(0);
  v57 = v210;
  sub_100025F70();
  v59 = *(&v213 + 1);
  *&v58 = v213;
  v188 = v214;
  v187 = v215;
  v186 = v216;
  v193 = v56;
  v60 = sub_100027A08(v55, *&v213, *(&v213 + 1));
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v67 = sub_100032A40();
  v68 = sub_10002B1E4();
  sub_10002A4FC(v68, v69);
  v70 = v197;
  sub_10002A4FC(v57, v197);
  v71 = os_log_type_enabled(v46, v67);
  v199 = v40;
  v192 = v52;
  v191 = v55;
  if (v71)
  {
    v72 = swift_slowAlloc();
    v211[0] = swift_slowAlloc();
    *v72 = 136447234;
    v73 = sub_10002B0B8();
    *(v72 + 4) = sub_100021264(v73, *(v74 - 256), v75);
    *(v72 + 12) = 2082;
    v213 = __PAIR128__(*&v59, *&v58);
    type metadata accessor for CGSize();
    v76 = sub_100032920();
    v78 = sub_100021264(v76, v77, v211);

    *(v72 + 14) = v78;
    *(v72 + 22) = 2082;
    *&v213 = v60;
    *(&v213 + 1) = v62;
    v214 = v64;
    v215 = v66;
    type metadata accessor for CGRect();
    v79 = sub_100032920();
    v81 = sub_100021264(v79, v80, v211);

    *(v72 + 24) = v81;
    *(v72 + 32) = 2082;
    v213 = *&v32[SHIDWORD(v190[2].isa)];
    v82 = sub_100032920();
    v84 = v83;
    sub_10002A944(v32);
    v85 = sub_100021264(v82, v84, v211);

    *(v72 + 34) = v85;
    *(v72 + 42) = 2082;
    v52 = v192;
    sub_10002B06C();
    sub_10002AB78(v86, v87);
    v88 = sub_100032CB0();
    v90 = v89;
    sub_10002A944(v70);
    v91 = sub_100021264(v88, v90, v211);

    *(v72 + 44) = v91;
    v54 = v199;
    _os_log_impl(&_mh_execute_header, v46, v67, "crop rect for asset %{public}s for target size %{public}s is %{public}s for displaySize %{public}s widget family: %{public}s", v72, 0x34u);
    swift_arrayDestroy();
    v55 = v191;
    sub_100023FAC();
    sub_100023FAC();
  }

  else
  {
    sub_10002A944(v70);
    sub_10002A944(v32);
  }

  v92 = v208;
  if (LOBYTE(v198))
  {
    v198 = v59;
    sub_10002B1F0();
    sub_100031C90();
    v94 = v93;
    v96 = v95;
    v98 = v97;
    v190 = v99;
    v100 = sub_100031CA0();
    v101 = sub_100032A40();
    v102 = v101;
    if (v100)
    {
      v103 = os_log_type_enabled(v46, v101);
      v59 = v198;
      if (v103)
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        *&v213 = v105;
        *v104 = 136446210;
        v106 = sub_10002B0B8();
        *(v104 + 4) = sub_100021264(v106, *(v107 - 256), v108);
        sub_10002B204(&_mh_execute_header, v109, v110, "not using spatial for asset %{public}s because it would result in cropping face");
        sub_100022C1C(v105);
        sub_100023FAC();
        sub_100023FAC();
      }

      LODWORD(v197) = 0;
      v54 = v199;
    }

    else
    {
      v111 = v189;
      sub_10002A4FC(v210, v189);
      if (os_log_type_enabled(v46, v102))
      {
        v112 = swift_slowAlloc();
        v211[0] = swift_slowAlloc();
        *v112 = 136446722;
        v113 = sub_10002B0B8();
        *(v112 + 4) = sub_100021264(v113, *(v114 - 256), v115);
        *(v112 + 12) = 2082;
        *&v213 = v94;
        *(&v213 + 1) = v96;
        v214 = v98;
        v215 = v190;
        type metadata accessor for CGRect();
        v116 = sub_100032920();
        v118 = sub_100021264(v116, v117, v211);

        *(v112 + 14) = v118;
        *(v112 + 22) = 2082;
        sub_10002B06C();
        sub_10002AB78(v119, v120);
        v121 = sub_100032CB0();
        v123 = v122;
        sub_10002A944(v111);
        v124 = sub_100021264(v121, v123, v211);
        v92 = v208;

        *(v112 + 24) = v124;
        _os_log_impl(&_mh_execute_header, v46, v102, "Adjusted crop rect for spatial asset %{public}s is %{public}s) for widget family: %{public}s", v112, 0x20u);
        swift_arrayDestroy();
        sub_100023FAC();
        sub_100023FAC();
      }

      else
      {
        sub_10002A944(v111);
      }

      sub_10002B184();
      v54 = v199;
      v59 = v198;
    }
  }

  else
  {
    LODWORD(v197) = 0;
  }

  v134 = objc_autoreleasePoolPush();
  v135 = sub_10002B1F0();
  v140 = sub_100027A8C(v136, v135, v137, v138, v139, v58, v59);
  LODWORD(v198) = v141;
  objc_autoreleasePoolPop(v134);
  if (!v140)
  {
    sub_10002B23C();
    sub_10002B224();

    goto LABEL_35;
  }

  v142 = v140;
  PFSharedFigDecodeSessionDiscardCachedBuffers();
  result = CGImageGetWidth(v142);
  v144 = v207;
  if ((*&v58 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_43;
  }

  if (v58 <= -9.22337204e18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v58 >= 9.22337204e18)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (result < v58)
  {
    goto LABEL_30;
  }

  result = CGImageGetHeight(v142);
  if ((*&v59 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_45;
  }

  if (v59 <= -9.22337204e18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v59 < 9.22337204e18)
  {
    if (result >= v59)
    {
LABEL_32:
      v193 = v140;
      if ([v144 contentType])
      {
        sub_10002B23C();
        v202 = 0;
        v190 = 0;
        v184 = 0;
        *&v209 = 0;
        v189 = 0;
        v183 = 0;
        v185 = 0;
        v156 = 1;
        LOBYTE(v213) = 1;
        LOBYTE(v211[0]) = 1;
        v182 = 2;
        v157 = 1;
        v181 = 2;
      }

      else
      {
        sub_10002A8E4(v144, &selRef_title);
        v180 = v142;
        sub_10002A8E4(v144, &selRef_subtitle);
        v161 = [v144 localIdentifier];
        sub_100032910();

        sub_100027FA4();
        v162 = v211[0];
        v202 = v211[1];
        v164 = v211[2];
        v163 = v211[3];
        v190 = v211[4];
        v156 = v212;

        v142 = v180;

        v185 = v162 & 0xFFFFFFFFFFFF0000;
        v189 = v164 & 0xFFFFFFFFFFFFFF00;
        *&v209 = v163 & 0xFFFFFFFFFFFF0000;
        v183 = v162 & 0xFF00;
        v181 = v162;
        v184 = v163 & 0xFF00;
        v182 = v163;
        v157 = v164;
      }

      v165 = v142;
      v180 = [v144 contentType];
      v166 = v210;
      (*(v194 + 16))(v200, v210, v201);
      v167 = v191;
      v201 = v191;
      v168 = [v144 deeplink];
      v169 = v195;
      sub_100031B70();

      v194 = sub_10002A8E4(v144, &selRef_title);
      v179 = v170;
      v171 = sub_10002A8E4(v144, &selRef_subtitle);
      v173 = v172;
      *&v213 = v183 | v185 | v181;
      *(&v213 + 1) = v202;
      v214 = v189 | v157;
      v215 = (v184 | v209 | v182);
      v216 = v190;
      v217 = v156;
      v174 = *(v196 + 168);
      v175 = v165;
      v176 = v174(v180, v200, v167, v169, v194, v179, v171, v173, v193, LOBYTE(v198) & 1, v193, v188, v187, v186, &v213, v197);
      sub_10002B224();

      sub_10002A944(v166);
      sub_10002B1A0();
      v177(v199, v205);
      return v176;
    }

LABEL_30:
    v145 = sub_100032A40();
    if (os_log_type_enabled(v46, v145))
    {
      v146 = v142;
      v190 = v46;
      v147 = v146;
      v148 = swift_slowAlloc();
      v180 = v142;
      v149 = v148;
      v211[0] = swift_slowAlloc();
      *v149 = 136446978;
      v150 = sub_10002B0B8();
      *(v149 + 4) = sub_100021264(v150, *(v151 - 256), v152);
      *(v149 + 12) = 2050;
      *(v149 + 14) = CGImageGetWidth(v147);
      *(v149 + 22) = 2050;
      *(v149 + 24) = CGImageGetHeight(v147);

      *(v149 + 32) = 2082;
      *&v213 = v58;
      *(&v213 + 1) = v59;
      type metadata accessor for CGSize();
      v153 = sub_100032920();
      v155 = sub_100021264(v153, v154, v211);

      *(v149 + 34) = v155;
      _os_log_impl(&_mh_execute_header, v190, v145, "scaling up image for %{public}s because loaded size %{public}ld,%{public}ld is not targetSize %{public}s", v149, 0x2Au);
      swift_arrayDestroy();
      sub_100023FAC();
      v142 = v180;
      sub_100023FAC();
    }

    goto LABEL_32;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1000276C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10002B0C8(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = sub_10002B120();
  sub_100027718(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19, v20, v21, v22, v23, v24);
  return v8;
}

uint64_t sub_100027718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t *a14, char a15)
{
  v20 = *a14;
  v39 = a14[1];
  v50 = a14[2];
  v37 = a14[3];
  v49 = a14[4];
  v38 = *(a14 + 40);
  *(v15 + 16) = a1;
  v21 = OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_widgetFamily;
  v22 = sub_100032750();
  v23 = *(v22 - 8);
  v48 = a2;
  (*(v23 + 16))(v15 + v21, a2, v22);
  *(v15 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_asset) = a3;
  v24 = OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_destination;
  v25 = sub_100031B90();
  v26 = *(v25 - 8);
  v47 = a4;
  (*(v26 + 16))(v15 + v24, a4, v25);
  v27 = (v15 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_title);
  *v27 = a5;
  v27[1] = a6;
  v28 = (v15 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_subtitle);
  *v28 = a7;
  v28[1] = a8;
  *(v15 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_image) = a9;
  *(v15 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_imageIsDegraded) = a10;
  v29 = v15 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_layoutDescription;
  *v29 = a11;
  *(v29 + 16) = a12;
  *(v29 + 24) = a13;
  v30 = v20 & 0xFF00;
  if (v30 == 768)
  {
    v31 = 0;
    v49 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v30 = 0;
    v42 = 0;
    v32 = 1;
    v33 = 2;
    LOBYTE(v50) = 1;
    v34 = 2;
  }

  else
  {
    v42 = v20 & 0xFFFFFFFFFFFF0000;
    v45 = v50 & 0xFFFFFFFFFFFFFF00;
    v46 = v37 & 0xFFFFFFFFFFFF0000;
    v34 = v20;
    v44 = v37 & 0xFF00;
    v33 = v37;
    v31 = v39;
    v32 = v38;
  }

  (*(v26 + 8))(v47, v25);
  (*(v23 + 8))(v48, v22);
  v35 = v15 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout;
  *v35 = v30 | v34 | v42;
  *(v35 + 8) = v31;
  *(v35 + 16) = v45 | v50;
  *(v35 + 24) = v44 | v33 | v46;
  *(v35 + 32) = v49;
  *(v35 + 40) = v32;
  *(v15 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_useSpatialEffect) = a15 & 1;
  return v15;
}

double sub_100027A08(void *a1, double a2, double a3)
{
  v6 = [a1 pixelWidth];
  [a1 pixelHeight];
  [a1 suggestedCropForTargetSize:{a2, a3}];
  return v7 / v6;
}

void *sub_100027A8C(void *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v14 = [a1 localIdentifier];
  v15 = sub_100032910();
  v17 = v16;

  v18 = sub_1000287E4(a1, a2, a3, a4, a5, a6, a7);
  v20 = v19;
  v21 = sub_100032A10();
  if (v18)
  {
    if (qword_100044640 != -1)
    {
      swift_once();
    }

    v22 = qword_100048368;
    if (os_log_type_enabled(qword_100048368, v21))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v47 = v24;
      *v23 = 136446210;
      v25 = sub_100021264(v15, v17, &v47);

      *(v23 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v22, v21, "Loaded local image for asset %{public}s", v23, 0xCu);
      sub_100022C1C(v24);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100044640 != -1)
    {
      swift_once();
    }

    v26 = qword_100048368;
    if (os_log_type_enabled(qword_100048368, v21))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v47 = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_100021264(v15, v17, &v47);
      _os_log_impl(&_mh_execute_header, v26, v21, "Failed to load local image for asset %{public}s", v27, 0xCu);
      sub_100022C1C(v28);
    }

    v29 = sub_100032A10();
    v30 = os_log_type_enabled(v26, v29);
    if (v20)
    {
      if (v30)
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v47 = v32;
        *v31 = 136446210;
        v33 = sub_100021264(v15, v17, &v47);

        *(v31 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v26, v29, "Attempting to load cloud image for asset %{public}s", v31, 0xCu);
        sub_100022C1C(v32);
      }

      else
      {
      }

      v37 = sub_100028EFC(a1, a2, a3, a4, a5, a6, a7);
      if (v37)
      {
        return v37;
      }
    }

    else if (v30)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v47 = v35;
      *v34 = 136446210;
      v36 = sub_100021264(v15, v17, &v47);

      *(v34 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v26, v29, "No cloud image available for asset %{public}s", v34, 0xCu);
      sub_100022C1C(v35);
    }

    else
    {
    }

    v38 = sub_100032A20();
    if (os_log_type_enabled(v26, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v47 = v40;
      *v39 = 136446210;
      v41 = [a1 localIdentifier];
      v42 = sub_100032910();
      v44 = v43;

      v45 = sub_100021264(v42, v44, &v47);

      *(v39 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v26, v38, "Could not load any image for asset %{public}s", v39, 0xCu);
      sub_100022C1C(v40);
    }

    return 0;
  }

  return v18;
}

void sub_100027FA4()
{
  sub_100011F0C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v43 = v6;
  v8 = v7;
  v10 = v9;
  v11 = sub_100032750();
  v12 = sub_100011D60(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12, v17);
  sub_100011DAC();
  v20 = v19 - v18;
  if (!v8 || !v1)
  {
    v34 = 0;
    v33 = 0;
    LOBYTE(v44) = 1;
    LOBYTE(v47) = 1;
    v29 = 2;
    v35 = 2;
LABEL_27:
    *v10 = v29;
    *(v10 + 1) = v34;
    *(v10 + 2) = v47;
    *(v10 + 6) = v48;
    *(v10 + 8) = 0;
    *(v10 + 16) = 1;
    *(v10 + 17) = v44;
    *(v10 + 20) = *(&v44 + 3);
    *(v10 + 24) = v35;
    *(v10 + 25) = v33;
    *(v10 + 30) = v46;
    *(v10 + 26) = v45;
    *(v10 + 32) = 0;
    *(v10 + 40) = 1;
    sub_100011EF4();
    return;
  }

  sub_1000230A4(0, &qword_100045A00, PHAssetCollection_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_10002A864(v3, v1, ObjCClassFromMetadata);
  if (!v22)
  {
    goto LABEL_31;
  }

  v23 = sub_100032900();
  v24 = sub_100032900();
  v25 = PXStoryTitleInternationalStyleForStringAndAssetCollectionUUID();

  switch(v25)
  {
    case 0:

LABEL_16:
      v33 = 0;
      v34 = 0;
      v35 = 2;
      v29 = 2;
      goto LABEL_26;
    case 2:
      v44 = v5;
      sub_10000EF70();
      v26 = sub_100032B30();
      if ((v26 & 0x8000000000000000) == 0 || (v27 = __OFSUB__(0, v26), v26 = -v26, !v27))
      {
        v28 = v26 % 4;
        v29 = v26 % 4 < 3;
        (*(v14 + 104))(v20, enum case for WidgetFamily.systemSmall(_:), v11);
        sub_10002B06C();
        sub_10002AB78(v30, v31);
        v32 = sub_100032890();
        (*(v14 + 8))(v20, v11);
        if (v43 && (v32 & 1) == 0)
        {
          v40 = sub_100032900();
          v41 = sub_100032900();

          v42 = PXStoryTitleInternationalStyleForStringAndAssetCollectionUUID() == 2;

          v33 = 2 * v42;
        }

        else
        {

          v33 = 0;
        }

        v34 = 2;
        if (v28 >= 3)
        {
          v35 = 2;
        }

        else
        {
          v35 = 3;
        }

        goto LABEL_26;
      }

      goto LABEL_29;
    case 1:
      if (v43)
      {
        v36 = sub_100032900();
        v37 = sub_100032900();

        v38 = PXStoryTitleInternationalStyleForStringAndAssetCollectionUUID();

        if (v38 != 1)
        {
          goto LABEL_16;
        }
      }

      else
      {
      }

      v44 = v5;
      sub_10000EF70();
      v39 = sub_100032B30();
      if (v39 < 0)
      {
        v27 = __OFSUB__(0, v39);
        v39 = -v39;
        if (v27)
        {
          goto LABEL_30;
        }
      }

      if (v39 % 4 < 0)
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        break;
      }

      v35 = *(&off_100042020 + v39 % 4 + 32);
      v33 = 1;
      v34 = 1;
      v29 = v35;
LABEL_26:
      LOBYTE(v44) = 1;
      LOBYTE(v47) = 1;
      goto LABEL_27;
  }

  sub_100032C10();
  __break(1u);
}

id sub_1000283B8(id result)
{
  if (result)
  {
    return [result CGImage];
  }

  return result;
}

void sub_1000283E4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v19 = sub_100032910();
    sub_100032BA0();
    sub_100028780(v21, a3, &v22);
    sub_10002AAC8(v21);
    if (v23)
    {
      if (swift_dynamicCast() && (v19 & 1) != 0)
      {
        v6 = sub_100032A10();
        if (qword_100044640 != -1)
        {
          swift_once();
        }

        v7 = qword_100048368;
        if (os_log_type_enabled(qword_100048368, v6))
        {
          v8 = swift_slowAlloc();
          v9 = swift_slowAlloc();
          v21[0] = v9;
          *v8 = 136446210;
          *(v8 + 4) = sub_100021264(a1, a2, v21);
          _os_log_impl(&_mh_execute_header, v7, v6, "Cancelled image load for asset %{public}s", v8, 0xCu);
          sub_100022C1C(v9);
        }
      }
    }

    else
    {
      sub_10002AA60(&v22);
    }

    v20 = sub_100032910();
    sub_100032BA0();
    sub_100028780(v21, a3, &v22);
    sub_10002AAC8(v21);
    if (v23)
    {
      sub_1000230A4(0, &qword_100045A10, NSError_ptr);
      if (swift_dynamicCast())
      {
        v10 = sub_100032A20();
        if (qword_100044640 != -1)
        {
          swift_once();
        }

        v11 = qword_100048368;
        if (os_log_type_enabled(qword_100048368, v10))
        {
          v12 = swift_slowAlloc();
          v21[0] = swift_slowAlloc();
          *v12 = 136446466;
          *(v12 + 4) = sub_100021264(a1, a2, v21);
          *(v12 + 12) = 2082;
          v13 = v20;
          v14 = [v13 description];
          v15 = sub_100032910();
          v17 = v16;

          v18 = sub_100021264(v15, v17, v21);

          *(v12 + 14) = v18;
          _os_log_impl(&_mh_execute_header, v11, v10, "Error loading image for asset %{public}s: %{public}s", v12, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }
      }
    }

    else
    {
      sub_10002AA60(&v22);
    }
  }
}

double sub_100028780@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_10002A560(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_100022884(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void *sub_1000287E4(void *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v14 = sub_100031D80();
  v56 = *(v14 - 8);
  v57 = v14;
  v15 = *(v56 + 64);
  v17 = __chkstk_darwin(v14, v16);
  v55 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v19);
  v21 = &v48 - v20;
  v54 = a1;
  v22 = [a1 localIdentifier];
  v23 = sub_100032910();
  v25 = v24;

  v26 = swift_allocObject();
  v49 = v26;
  *(v26 + 16) = 0;
  v53 = v26 + 16;
  v27 = swift_allocObject();
  v48 = v27;
  *(v27 + 16) = 0;
  v52 = v27 + 16;
  v50 = [objc_opt_self() defaultManager];
  v28 = [objc_allocWithZone(PHImageRequestOptions) init];
  [v28 setSynchronous:1];
  [v28 setNetworkAccessAllowed:0];
  [v28 setNormalizedCropRect:{a2, a3, a4, a5}];
  [v28 setResizeMode:2];
  [v28 setDeliveryMode:1];
  [v28 setLoadingMode:14680064];
  if (qword_100044640 != -1)
  {
    swift_once();
  }

  v29 = qword_100048368;
  sub_100031D60();
  sub_100032AD0();
  sub_10000D4FC(&qword_100045430, &qword_1000348D8);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1000334B0;
  *(v30 + 56) = &type metadata for String;
  v31 = sub_100022B0C();
  *(v30 + 64) = v31;
  *(v30 + 32) = v23;
  *(v30 + 40) = v25;
  aBlock = *&a6;
  v59 = *&a7;
  type metadata accessor for CGSize();

  v32 = sub_100032920();
  *(v30 + 96) = &type metadata for String;
  *(v30 + 104) = v31;
  *(v30 + 72) = v32;
  *(v30 + 80) = v33;
  v34 = v21;
  sub_100031D40();

  v35 = swift_allocObject();
  v35[2] = v51;
  v35[3] = v23;
  v36 = v49;
  v35[4] = v25;
  v35[5] = v36;
  v37 = v48;
  v35[6] = v48;
  v62 = sub_10002AC08;
  v63 = v35;
  aBlock = _NSConcreteStackBlock;
  v59 = 1107296256;
  v60 = sub_100028E50;
  v61 = &unk_100042CE8;
  v38 = _Block_copy(&aBlock);
  v39 = v28;

  v40 = v50;
  [v50 requestImageForAsset:v54 targetSize:1 contentMode:v39 options:v38 resultHandler:{a6, a7}];
  _Block_release(v38);

  sub_100032AC0();
  v41 = v55;
  sub_100031D70();
  sub_100031D50();

  v42 = v57;
  v43 = *(v56 + 8);
  v43(v41, v57);
  v43(v34, v42);
  swift_beginAccess();
  v44 = *(v36 + 16);
  swift_beginAccess();
  v45 = *(v37 + 16);
  v46 = v44;

  return v44;
}

uint64_t sub_100028D1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1000283E4(a4, a5, a2);
  v11 = sub_1000283B8(a1);
  swift_beginAccess();
  v12 = *(a6 + 16);
  *(a6 + 16) = v11;

  if (!a2)
  {
    v17 = 0u;
    v18 = 0u;
    goto LABEL_6;
  }

  *&v17 = sub_100032910();
  *(&v17 + 1) = v13;
  sub_100032BA0();
  sub_100028780(v16, a2, &v17);
  sub_10002AAC8(v16);
  if (!*(&v18 + 1))
  {
LABEL_6:
    sub_10002AA60(&v17);
    goto LABEL_7;
  }

  if (!swift_dynamicCast())
  {
LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  v14 = v16[0];
LABEL_8:
  result = swift_beginAccess();
  *(a7 + 16) = v14;
  return result;
}

uint64_t sub_100028E50(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a3)
  {
    v6 = sub_100032860();
  }

  else
  {
    v6 = 0;
  }

  v7 = a2;
  v5(a2, v6);
}

void *sub_100028EFC(void *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  p_isa = sub_100032650();
  v82 = *(p_isa - 1);
  v14 = *(v82 + 64);
  __chkstk_darwin(p_isa, v15);
  v77 = (&v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = sub_1000326C0();
  v89 = *(v91 - 8);
  v17 = *(v89 + 64);
  v19 = __chkstk_darwin(v91, v18);
  v81 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v21);
  v88 = &v77 - v22;
  v87 = sub_100031D80();
  v86 = *(v87 - 8);
  v23 = *(v86 + 64);
  __chkstk_darwin(v87, v24);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = a1;
  v27 = [a1 localIdentifier];
  v28 = sub_100032910();
  v30 = v29;

  v31 = swift_allocObject();
  v90 = v31;
  *(v31 + 16) = 0;
  v84 = (v31 + 16);
  v93 = [objc_opt_self() defaultManager];
  v78 = dispatch_semaphore_create(0);
  if (qword_100044640 != -1)
  {
    swift_once();
  }

  v32 = qword_100048368;
  sub_100031D60();
  sub_100032AD0();
  sub_10000D4FC(&qword_100045430, &qword_1000348D8);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1000334B0;
  *(v33 + 56) = &type metadata for String;
  v34 = sub_100022B0C();
  *(v33 + 64) = v34;
  *(v33 + 32) = v28;
  *(v33 + 40) = v30;
  aBlock = *&a6;
  v96 = *&a7;
  type metadata accessor for CGSize();

  v35 = sub_100032920();
  *(v33 + 96) = &type metadata for String;
  *(v33 + 104) = v34;
  *(v33 + 72) = v35;
  *(v33 + 80) = v36;
  v85 = v26;
  sub_100031D40();

  v37 = [objc_allocWithZone(PHImageRequestOptions) init];
  [v37 setSynchronous:0];
  [v37 setNetworkAccessAllowed:1];
  [v37 setNormalizedCropRect:{a2, a3, a4, a5}];
  [v37 setResizeMode:2];
  [v37 setDeliveryMode:0];
  [v37 setAllowSecondaryDegradedImage:1];
  if (qword_100044648 != -1)
  {
    swift_once();
  }

  [v37 setResultHandlerQueue:qword_100048370];
  [v37 setDownloadIntent:1];
  [v37 setLoadingMode:14680064];
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  v39 = (v38 + 16);
  sub_100032A10();
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1000334C0;
  *(v40 + 56) = &type metadata for String;
  *(v40 + 64) = v34;
  *(v40 + 32) = v28;
  *(v40 + 40) = v30;

  v92 = v32;
  sub_100031D30();

  v41 = swift_allocObject();
  v41[2] = v79;
  v41[3] = v28;
  v79 = v28;
  v42 = v78;
  v41[4] = v30;
  v41[5] = v42;
  v41[6] = v90;
  v41[7] = v38;
  v99 = sub_10002AA38;
  v100 = v41;
  aBlock = _NSConcreteStackBlock;
  v96 = 1107296256;
  v97 = sub_100028E50;
  v98 = &unk_100042C98;
  v43 = _Block_copy(&aBlock);

  v44 = v37;
  v45 = v42;

  v46 = [v93 requestImageForAsset:v80 targetSize:1 contentMode:v44 options:v43 resultHandler:{a6, a7}];
  _Block_release(v43);
  v80 = v44;

  v47 = v81;
  sub_1000326B0();
  v48 = v77;
  *v77 = 10;
  v49 = v82;
  v50 = p_isa;
  (*(v82 + 104))(v48, enum case for DispatchTimeInterval.seconds(_:), p_isa);
  v51 = v88;
  sub_1000326D0();
  (*(v49 + 8))(v48, v50);
  v52 = v89 + 8;
  v82 = *(v89 + 8);
  (v82)(v47, v91);
  p_isa = &v45->isa;
  sub_100032AE0();
  v53 = sub_100032660();
  v54 = v84;
  if (v53)
  {
    v55 = sub_100032A20();
    if (os_log_type_enabled(v92, v55))
    {
      v56 = v52;
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      aBlock = v58;
      *v57 = 136446210;
      *(v57 + 4) = sub_100021264(v79, v30, &aBlock);
      _os_log_impl(&_mh_execute_header, v92, v55, "Timed out loading cloud image for asset %{public}s", v57, 0xCu);
      sub_100022C1C(v58);

      v52 = v56;
      v51 = v88;
    }

    [v93 cancelImageRequest:v46];
  }

  swift_beginAccess();
  if (*v39)
  {

    v59 = v85;
  }

  else
  {
    v81 = v38;
    swift_beginAccess();
    v60 = *v54;
    if (*v54)
    {
      v89 = v52;
      v61 = v60;
      v62 = sub_100032A20();
      v63 = v92;
      if (os_log_type_enabled(v92, v62))
      {
        v61 = v61;
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v94[0] = v65;
        *v64 = 136446722;
        v66 = sub_100021264(v79, v30, v94);

        *(v64 + 4) = v66;
        *(v64 + 12) = 2050;
        *(v64 + 14) = CGImageGetWidth(v61);
        *(v64 + 22) = 2050;
        v51 = v88;
        *(v64 + 24) = CGImageGetHeight(v61);

        _os_log_impl(&_mh_execute_header, v63, v62, "Using degraded quality for asset %{public}s; variant %{public}ld x %{public}ld", v64, 0x20u);
        sub_100022C1C(v65);
      }

      else
      {
      }
    }

    else
    {
      v67 = sub_100032A20();
      v68 = v92;
      if (os_log_type_enabled(v92, v67))
      {
        v69 = swift_slowAlloc();
        v89 = v52;
        v70 = v69;
        v71 = swift_slowAlloc();
        v94[0] = v71;
        *v70 = 136446210;
        v72 = sub_100021264(v79, v30, v94);

        *(v70 + 4) = v72;
        _os_log_impl(&_mh_execute_header, v68, v67, "No degraded quality available for asset %{public}s;", v70, 0xCu);
        sub_100022C1C(v71);
      }

      else
      {
      }
    }

    v59 = v85;
  }

  sub_100032AC0();
  sub_100031D50();

  (v82)(v51, v91);
  (*(v86 + 8))(v59, v87);
  swift_beginAccess();
  v73 = *v54;
  if (*v54)
  {
    v74 = (*v39 & 1) == 0;
    v75 = v73;
  }

  return v73;
}

void sub_100029A80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1000283E4(a4, a5, a2);
  if (a1)
  {
    v14 = sub_1000283B8(a1);
    swift_beginAccess();
    v15 = *(a7 + 16);
    *(a7 + 16) = v14;

    if (!v14)
    {
      return;
    }

    if (a2)
    {
      sub_100032910();
      v16 = v14;
      sub_100032BA0();
      sub_100028780(v31, a2, &v32);
      sub_10002AAC8(v31);
      if (*(&v33 + 1))
      {
        if (swift_dynamicCast() && (v31[0] & 1) != 0)
        {
          v17 = sub_100032A10();
          if (qword_100044640 != -1)
          {
            swift_once();
          }

          v18 = qword_100048368;
          if (os_log_type_enabled(qword_100048368, v17))
          {
            v19 = v16;
            v20 = swift_slowAlloc();
            v21 = swift_slowAlloc();
            v31[0] = v21;
            *v20 = 134349570;
            *(v20 + 4) = CGImageGetWidth(v19);
            *(v20 + 12) = 2050;
            *(v20 + 14) = CGImageGetHeight(v19);

            *(v20 + 22) = 2082;
            *(v20 + 24) = sub_100021264(a4, a5, v31);
            _os_log_impl(&_mh_execute_header, v18, v17, "Recieved degraded quality (%{public}ld x %{public}ld) cloud image for asset %{public}s", v20, 0x20u);
            sub_100022C1C(v21);
          }

          else
          {
          }

          return;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
      v26 = v14;
    }

    sub_10002AA60(&v32);
LABEL_18:
    swift_beginAccess();
    *(a8 + 16) = 1;
    v27 = sub_100032A10();
    if (qword_100044640 != -1)
    {
      swift_once();
    }

    v28 = qword_100048368;
    if (os_log_type_enabled(qword_100048368, v27))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v32 = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_100021264(a4, a5, &v32);
      _os_log_impl(&_mh_execute_header, v28, v27, "Recieved final cloud image for asset %{public}s", v29, 0xCu);
      sub_100022C1C(v30);
    }

    sub_100032AF0();

    return;
  }

  v22 = sub_100032A10();
  if (qword_100044640 != -1)
  {
    swift_once();
  }

  v23 = qword_100048368;
  if (os_log_type_enabled(qword_100048368, v22))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v31[0] = v25;
    *v24 = 136446210;
    *(v24 + 4) = sub_100021264(a4, a5, v31);
    _os_log_impl(&_mh_execute_header, v23, v22, "Recieved callback but no cloud image for asset %{public}s", v24, 0xCu);
    sub_100022C1C(v25);
  }

  sub_100032AF0();
}

uint64_t sub_100029ED8()
{
  v1 = OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_widgetFamily;
  v2 = sub_100032750();
  sub_100011D74(v2);
  (*(v3 + 8))(v0 + v1);

  v4 = OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_destination;
  v5 = sub_100031B90();
  sub_100011D74(v5);
  (*(v6 + 8))(v0 + v4);
  v7 = *(v0 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_title + 8);

  v8 = *(v0 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_subtitle + 8);

  return v0;
}

uint64_t sub_100029FE8()
{
  result = sub_100032750();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_100031B90();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10002A0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10002B0C8(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = sub_10002B120();
  sub_10002A18C(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);
  return v8;
}

void sub_10002A18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, __int128 a23, uint64_t a24, uint64_t a25, uint64_t *a26, char a27)
{
  sub_100011F0C();
  v64 = v27;
  v65 = v28;
  v62 = v29;
  v63 = v30;
  v32 = v31;
  v60 = v33;
  v61 = v34;
  v36 = v35;
  v37 = sub_100031B90();
  v38 = sub_100011D60(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  __chkstk_darwin(v38, v43);
  sub_100011DAC();
  v46 = v45 - v44;
  v47 = sub_100032750();
  v48 = sub_100011D60(v47);
  v50 = v49;
  v52 = *(v51 + 64);
  __chkstk_darwin(v48, v53);
  sub_100011DAC();
  v56 = v55 - v54;
  (*(v50 + 16))(v55 - v54, v36, v47);
  v57 = *(v40 + 16);
  v58 = sub_10002B1E4();
  v59(v58);
  sub_100027718(v60, v56, v61, v46, v62, v63, v64, v65, a21, a22, a23, a24, a25, a26, a27);
  (*(v40 + 8))(v32, v37);
  (*(v50 + 8))(v36, v47);
  sub_100011EF4();
}

uint64_t sub_10002A380()
{
  sub_100029ED8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

__n128 sub_10002A43C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10002A450(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 41))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 1);
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002A48C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_10002A4FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosReliveWidgetSize(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002A560(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100032B80(*(v2 + 40));

  return sub_10002A688(a1, v4);
}

unint64_t sub_10002A5A4(char a1)
{
  v3 = *(v1 + 40);
  sub_100032D00();
  sub_100032D10(a1 & 1);
  v4 = sub_100032D20();

  return sub_10002A74C(a1 & 1, v4);
}

unint64_t sub_10002A610(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100032D00();
  sub_100032940();
  v6 = sub_100032D20();

  return sub_10002A7B0(a1, a2, v6);
}

unint64_t sub_10002A688(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_10002AB1C(*(v2 + 48) + 40 * i, v7);
    v5 = sub_100032B90();
    sub_10002AAC8(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_10002A74C(char a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  result = a2 & v4;
  v6 = a1 & 1;
  while (((1 << result) & *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0 && *(*(v2 + 48) + result) != v6)
  {
    result = (result + 1) & v4;
  }

  return result;
}

unint64_t sub_10002A7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_100032CD0() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_10002A864(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_100032900();
  v5 = [a3 uuidFromLocalIdentifier:v4];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_100032910();

  return v6;
}

uint64_t sub_10002A8E4(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_100032910();

  return v4;
}

uint64_t sub_10002A944(uint64_t a1)
{
  v2 = type metadata accessor for PhotosReliveWidgetSize(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002A9A0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002A9E8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002AA48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002AA60(uint64_t a1)
{
  v2 = sub_10000D4FC(&qword_1000453F8, &qword_1000348C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002AB78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002ABC0()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

__n128 initializeBufferWithCopyOfBuffer for PhotosReliveWidgetViewModel.TitleLayout(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PhotosReliveWidgetViewModel.TitleLayout(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 1);
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PhotosReliveWidgetViewModel.TitleLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosReliveWidgetViewModel.TitleLayout.Style(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10002AD88);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhotosReliveWidgetViewModel.TitleLayout.Position(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhotosReliveWidgetViewModel.TitleLayout.Position(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10002AF14);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10002AF94()
{
  result = qword_100045A40;
  if (!qword_100045A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045A40);
  }

  return result;
}

unint64_t sub_10002AFEC()
{
  result = qword_100045A48;
  if (!qword_100045A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045A48);
  }

  return result;
}

uint64_t sub_10002B0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 - 96) = a8;
  v11 = *(v9 + 16);
  v12 = *(v9 + 24);
  v19 = *(v9 + 32);
  v18 = *(v9 + 48);
  v13 = *(v9 + 64);
  v14 = *(v9 + 72);
  v15 = *(v8 + 48);
  v16 = *(v8 + 52);

  return swift_allocObject();
}

uint64_t sub_10002B120()
{
  result = v0;
  v3 = *(v1 - 96);
  return result;
}

uint64_t sub_10002B1B0(uint64_t a1)
{
  *(v1 - 120) = 0u;
  *(v1 - 104) = 0u;
  *(v1 - 88) = 0;
  v3 = *(a1 + 48);
  v4 = *(a1 + 52);

  return swift_allocObject();
}

void sub_10002B204(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

void sub_10002B224()
{
  v2 = *(v0 - 336);
}

uint64_t sub_10002B23C()
{
  v2 = *(v0 - 288);
}

unint64_t sub_10002B2B8()
{
  result = qword_100045A50;
  if (!qword_100045A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045A50);
  }

  return result;
}

unint64_t sub_10002B310()
{
  result = qword_100045A58;
  if (!qword_100045A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045A58);
  }

  return result;
}

unint64_t sub_10002B368()
{
  result = qword_100045A60;
  if (!qword_100045A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045A60);
  }

  return result;
}

uint64_t sub_10002B3D8()
{
  v0 = sub_100031B50();
  sub_100025688(v0, qword_1000483C8);
  sub_10000F4F4(v0, qword_1000483C8);
  return sub_100031B20();
}

uint64_t sub_10002B460()
{
  v0 = sub_1000317C0();
  v1 = sub_100011D60(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1, v6);
  sub_100011DAC();
  v9 = v8 - v7;
  v10 = sub_100031A20();
  v11 = sub_100011D60(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  sub_100011DAC();
  (*(v17 + 104))(v16 - v15, enum case for EquatableComparisonOperator.equalTo(_:));
  (*(v3 + 104))(v9, enum case for IntentOrigin.local(_:), v0);
  sub_10000D4FC(&qword_100045A78, &qword_1000352F0);
  sub_10002B2B8();
  sub_1000256F0();
  sub_100022D6C(v18, &qword_100045A78, &qword_1000352F0);
  return sub_100031A50();
}

uint64_t sub_10002B65C()
{
  swift_getKeyPath();
  sub_10002B2B8();
  v0 = sub_100031950();

  swift_getKeyPath();

  v1 = sub_100031950();

  sub_10000D4FC(&qword_1000454C0, &qword_100035320);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100034B90;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;

  v3 = sub_100031940();

  return v3;
}

uint64_t sub_10002B750@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_10002B43C();
  *a2 = result;
  return result;
}

uint64_t sub_10002B794()
{
  v0 = sub_10000D4FC(&qword_100045A78, &qword_1000352F0);
  v1 = sub_100011D60(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v7 = __chkstk_darwin(v1, v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v16 - v11;
  sub_10002B2B8();
  sub_100031960();
  sub_1000256F0();
  sub_100022D6C(v13, &qword_100045A78, &qword_1000352F0);
  sub_100031990();
  v14 = *(v3 + 8);
  v14(v9, v0);
  sub_100031980();
  return (v14)(v12, v0);
}

uint64_t sub_10002B918()
{
  swift_getKeyPath();
  sub_10002B2B8();
  v0 = sub_100031950();

  sub_10000D4FC(&qword_1000454C0, &qword_100035320);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000343D0;
  *(v1 + 32) = v0;

  v2 = sub_100031940();

  return v2;
}

uint64_t sub_10002B9D4()
{
  v0 = sub_100031970();
  v87 = sub_100011D60(v0);
  v88 = v1;
  v3 = *(v2 + 64);
  __chkstk_darwin(v87, v4);
  sub_100011DAC();
  v86 = v6 - v5;
  v7 = sub_10000D4FC(&qword_1000456A8, &unk_100034D70);
  v8 = sub_100011EE8(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v85 = &v69 - v12;
  v13 = sub_10000D4FC(&qword_1000456A0, &qword_100034D68);
  v14 = sub_100011EE8(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  v84 = &v69 - v18;
  v19 = sub_10000D4FC(&qword_1000456B0, &unk_1000352E0);
  v20 = sub_100011EE8(v19);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20, v23);
  v83 = &v69 - v24;
  v81 = sub_100031B30();
  v25 = *(v81 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v81, v27);
  sub_100011DAC();
  v30 = v29 - v28;
  v31 = sub_100031C60();
  v32 = sub_100011EE8(v31);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32, v35);
  sub_100011DAC();
  v36 = sub_1000328F0();
  v37 = sub_100011EE8(v36);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37, v40);
  sub_100011DAC();
  v41 = sub_100031B50();
  v77 = v41;
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41, v43);
  sub_100011DAC();
  v75 = sub_10000D4FC(&qword_1000456E0, &qword_100034D98);
  sub_1000328A0();
  v79 = &unk_100035270;
  sub_100031C50();
  v78 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v44 = *(v25 + 104);
  v80 = v25 + 104;
  v82 = v44;
  v72 = v30;
  v44(v30);
  sub_10002C15C();
  sub_100031B60();
  sub_100025708();
  sub_10000D904(v45, v46, v47, v41);
  v90 = 0;
  v76 = sub_1000329E0();
  sub_100025708();
  sub_10000D904(v48, v49, v50, v51);
  v74 = sub_1000317B0();
  sub_100025708();
  sub_10000D904(v52, v53, v54, v55);
  v71 = enum case for InputConnectionBehavior.default(_:);
  v56 = v87;
  v57 = *(v88 + 104);
  v88 += 104;
  v70 = v57;
  v58 = v86;
  v57(v86);
  sub_10002C144();
  v73 = sub_100031850();
  sub_1000328A0();
  sub_100031C50();
  v82(v72, v78, v81);
  sub_10002C15C();
  sub_100031B60();
  sub_100025708();
  sub_10000D904(v59, v60, v61, v77);
  v89 = 1;
  sub_100025708();
  sub_10000D904(v62, v63, v64, v76);
  sub_100025708();
  sub_10000D904(v65, v66, v67, v74);
  v70(v58, v71, v56);
  sub_10002C144();
  sub_100031850();
  return v73;
}

uint64_t sub_10002BEB0@<X0>(uint64_t a1@<X8>)
{
  if (qword_100044650 != -1)
  {
    swift_once();
  }

  v2 = sub_100031B50();
  v3 = sub_10000F4F4(v2, qword_1000483C8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10002BF5C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to WidgetConfigurationIntent.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100022774();
  *v5 = v2;
  v5[1] = sub_10002533C;

  return WidgetConfigurationIntent.perform()(a2, v6);
}

uint64_t sub_10002C008@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002B9D4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10002C030(uint64_t a1)
{
  v2 = sub_10002B2B8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10002C06C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002C0AC(uint64_t result, int a2, int a3)
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

uint64_t sub_10002C174()
{
  v0 = sub_10000D4FC(&qword_1000456B0, &unk_1000352E0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v4 = &v10 - v3;
  v5 = sub_100031B50();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5, v7);
  v8 = sub_1000319D0();
  sub_100025688(v8, qword_1000483E0);
  sub_10000F4F4(v8, qword_1000483E0);
  sub_100031B20();
  sub_10000D904(v4, 1, 1, v5);
  return sub_1000319C0();
}

uint64_t sub_10002C2AC()
{
  sub_10000D4FC(&qword_100045AF0, "*U");
  v0 = *(sub_10000D4FC(&qword_100045AF8, qword_100035610) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  *(swift_allocObject() + 16) = xmmword_1000334C0;
  sub_1000318E0();
  sub_100031920();
  sub_10002C9C4();
  result = sub_100032870();
  qword_1000483F8 = result;
  return result;
}

BOOL sub_10002C3A8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100042098;
  v6._object = a2;
  v4 = sub_100032C40(v3, v6);

  return v4 != 0;
}

unint64_t sub_10002C3F8()
{
  result = qword_100045A88;
  if (!qword_100045A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045A88);
  }

  return result;
}

Swift::Int sub_10002C450()
{
  sub_100032D00();
  sub_100032940();
  return sub_100032D20();
}

Swift::Int sub_10002C4BC()
{
  sub_100032D00();
  sub_100032940();
  return sub_100032D20();
}

BOOL sub_10002C508@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002C3A8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_10002C558()
{
  result = qword_100045A90;
  if (!qword_100045A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045A90);
  }

  return result;
}

unint64_t sub_10002C5B0()
{
  result = qword_100045A98;
  if (!qword_100045A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045A98);
  }

  return result;
}

unint64_t sub_10002C608()
{
  result = qword_100045AA0;
  if (!qword_100045AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045AA0);
  }

  return result;
}

unint64_t sub_10002C66C()
{
  result = qword_100045AA8;
  if (!qword_100045AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045AA8);
  }

  return result;
}

unint64_t sub_10002C6C4()
{
  result = qword_100045AB0;
  if (!qword_100045AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045AB0);
  }

  return result;
}

unint64_t sub_10002C71C()
{
  result = qword_100045AB8;
  if (!qword_100045AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045AB8);
  }

  return result;
}

unint64_t sub_10002C774()
{
  result = qword_100045AC0;
  if (!qword_100045AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045AC0);
  }

  return result;
}

uint64_t sub_10002C7CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_100044658 != -1)
  {
    swift_once();
  }

  v2 = sub_1000319D0();
  v3 = sub_10000F4F4(v2, qword_1000483E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10002C8C4(uint64_t a1)
{
  v2 = sub_1000255D4();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10002C914()
{
  result = qword_100045AC8;
  if (!qword_100045AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045AC8);
  }

  return result;
}

unint64_t sub_10002C96C()
{
  result = qword_100045AD0;
  if (!qword_100045AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045AD0);
  }

  return result;
}

unint64_t sub_10002C9C4()
{
  result = qword_100045AD8;
  if (!qword_100045AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045AD8);
  }

  return result;
}

uint64_t sub_10002CA18()
{
  if (qword_100044660 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10002CA74(uint64_t a1)
{
  v2 = sub_10002C774();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10002CAC4()
{
  result = qword_100045AE0;
  if (!qword_100045AE0)
  {
    sub_10000D57C(&qword_100045AE8, &qword_1000355A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045AE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhotosReliveWidgetType(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for PhotosReliveWidgetType(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x10002CC28);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10002CC74()
{
  result = qword_100045B00;
  if (!qword_100045B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045B00);
  }

  return result;
}

uint64_t sub_10002CCC8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_10002CCF8()
{
  v0 = sub_10000D4FC(&qword_1000456B0, &unk_1000352E0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v4 = &v10 - v3;
  v5 = sub_100031B50();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5, v7);
  v8 = sub_1000319D0();
  sub_100025688(v8, qword_100048400);
  sub_10000F4F4(v8, qword_100048400);
  sub_100031B20();
  sub_10000D904(v4, 1, 1, v5);
  return sub_1000319C0();
}

Swift::Int sub_10002CE68(char a1)
{
  sub_100032D00();
  sub_100032D10(a1 & 1);
  return sub_100032D20();
}

uint64_t sub_10002CECC()
{
  sub_1000230A4(0, &qword_100045428, OS_os_log_ptr);
  result = sub_100032B00();
  qword_100048418 = result;
  return result;
}

uint64_t sub_10002CF44()
{
  sub_100023EC8();
  v0[4] = v1;
  v2 = sub_10000D4FC(&qword_100045B30, qword_1000356E0);
  v0[5] = v2;
  sub_100023E68(v2);
  v0[6] = v3;
  v5 = *(v4 + 64);
  v0[7] = sub_1000240D0();
  v6 = sub_100023E90();

  return _swift_task_switch(v6);
}

uint64_t sub_10002CFF4()
{
  v26 = v0 + 2;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  sub_10002D250(v2);
  v4 = sub_1000318C0();
  result = (*(v1 + 8))(v2, v3);
  v6 = 0;
  v28 = *(v4 + 16);
  v24 = &_swiftEmptyArrayStorage;
  v25 = v4;
LABEL_2:
  v7 = 40 * v6;
  while (v28 != v6)
  {
    if (v6 >= *(v4 + 16))
    {
      __break(1u);
      return result;
    }

    v8 = v6;
    v9 = v27[4];
    v11 = *(v4 + v7 + 32);
    v10 = *(v4 + v7 + 40);
    v13 = *(v4 + v7 + 48);
    v12 = *(v4 + v7 + 56);
    v14 = *(v4 + v7 + 64);
    v27[2] = v10;
    v27[3] = v13;
    v15 = swift_task_alloc();
    *(v15 + 16) = v26;
    swift_bridgeObjectRetain_n();

    LOBYTE(v9) = sub_100030A24(sub_100030D6C, v15, v9);

    if (v9)
    {
      v16 = v24;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100021814(0, v24[2] + 1, 1);
        v16 = v24;
      }

      v17 = v8;
      v18 = v12;
      v20 = v16[2];
      v19 = v16[3];
      if (v20 >= v19 >> 1)
      {
        result = sub_100021814((v19 > 1), v20 + 1, 1);
        v18 = v12;
        v17 = v8;
        v16 = v24;
      }

      v6 = v17 + 1;
      v16[2] = v20 + 1;
      v24 = v16;
      v21 = &v16[5 * v20];
      v21[4] = v11;
      v21[5] = v10;
      v21[6] = v13;
      v21[7] = v18;
      v21[8] = v14;
      v4 = v25;
      goto LABEL_2;
    }

    v7 += 40;
    v6 = v8 + 1;
    v4 = v25;
  }

  v22 = v27[7];

  v23 = v27[1];

  return v23(v24);
}

uint64_t sub_10002D250@<X0>(uint64_t a1@<X8>)
{
  v87 = a1;
  v1 = sub_10000D4FC(&qword_1000456B0, &unk_1000352E0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v86 = &v80 - v4;
  v96 = sub_10000D4FC(&qword_1000454D0, &qword_100034950);
  v103 = *(v96 - 8);
  v5 = *(v103 + 64);
  __chkstk_darwin(v96, v6);
  v108 = &v80 - v7;
  v102 = sub_100031B30();
  v8 = *(v102 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v102, v10);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100031C60();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000328F0();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8, v20);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100031B50();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v27 = __chkstk_darwin(v23, v26);
  v107 = &v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v29);
  v105 = &v80 - v30;
  v95 = sub_10000D4FC(&qword_1000454D8, &qword_100034958);
  v93 = *(v95 - 8);
  v31 = *(v93 + 64);
  v33 = __chkstk_darwin(v95, v32);
  v83 = &v80 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33, v35);
  v94 = &v80 - v36;
  if ([objc_opt_self() systemPhotoLibraryIsObtainable])
  {
    v37 = sub_10001A5E8();
    if (v37)
    {
      v104 = v37;
      v38 = sub_10002DEB0(v37);
      v39 = 0;
      v40 = 0;
      v80 = "Photo library is not obtainable";
      v84 = (v93 + 32);
      v82 = "PHOTOS_WIDGET_ALBUM_TYPE_USER";
      v90 = &unk_1000359C0;
      v89 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v88 = (v8 + 104);
      v81 = "BUM_PICKER_PROMPT";
      v91 = (v24 + 16);
      v92 = (v24 + 8);
      v85 = v103 + 32;
      v41 = &_swiftEmptyArrayStorage;
      v101 = v23;
      v100 = v12;
      v99 = v17;
      v98 = v22;
      v97 = v38;
      while (1)
      {
        v42 = v39;
        if (!v38[2])
        {
          goto LABEL_35;
        }

        v111 = v39;
        v43 = *(&off_1000420F8 + v40 + 32);
        v44 = sub_10002A5A4(*(&off_1000420F8 + v40 + 32));
        if ((v45 & 1) == 0)
        {
          goto LABEL_34;
        }

        v109 = v41;
        v46 = *(v38[7] + 8 * v44);

        v106 = v43;
        v47 = sub_10002E1D0(v104, v43, v46);
        v48 = sub_100021140(v46);
        v49 = 0;
        v114 = v46 & 0xC000000000000001;
        v115 = v48;
        v113 = v46 & 0xFFFFFFFFFFFFFF8;
        v110 = &_swiftEmptyArrayStorage;
        v112 = v47;
        while (v115 != v49)
        {
          if (v114)
          {
            v50 = sub_100032BE0();
          }

          else
          {
            if (v49 >= *(v113 + 16))
            {
              goto LABEL_41;
            }

            v50 = *(v46 + 8 * v49 + 32);
          }

          v51 = v50;
          v52 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          v53 = [v50 localIdentifier];
          v54 = sub_100032910();
          v23 = v55;

          if (!v47[2])
          {
            goto LABEL_16;
          }

          v56 = sub_10002A610(v54, v23);
          v58 = v57;

          if ((v58 & 1) == 0)
          {
            goto LABEL_17;
          }

          v59 = v46;
          v60 = (v47[7] + 16 * v56);
          v61 = *v60;
          v23 = v60[1];

          v62 = sub_100030CC4(v51);
          if (v63)
          {
            v64 = v62;
            v65 = v63;
            sub_10000D4FC(&qword_100045B88, &qword_100035A60);

            sub_100031B20();
            v66 = sub_1000317F0();
            v116 = v61;
            v117 = v23;
            sub_1000317E0();
            v116 = v66;
            v117 = v61;
            v118 = v23;
            v119 = v64;
            v120 = v65;
            sub_10002FAC4();

            v67 = v83;
            sub_100031780();

            v68 = *v84;
            (*v84)(v94, v67, v95);
            v69 = v110;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v69 = sub_1000307C8(0, *(v69 + 2) + 1, 1, v69);
            }

            v46 = v59;
            v23 = *(v69 + 2);
            v70 = *(v69 + 3);
            v110 = v69;
            v47 = v112;
            if (v23 >= v70 >> 1)
            {
              v110 = sub_1000307C8((v70 > 1), v23 + 1, 1, v110);
            }

            v71 = v110;
            *(v110 + 2) = v23 + 1;
            v68(&v71[((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v23], v94, v95);
            v49 = v52;
          }

          else
          {
            v46 = v59;
            v47 = v112;
LABEL_16:

LABEL_17:

            ++v49;
          }
        }

        if (*(v110 + 2))
        {
          v23 = v101;
          v12 = v100;
          v41 = v109;
          v38 = v97;
          if (v106)
          {
            v72 = &v113;
          }

          else
          {
            v72 = &v114;
          }

          v73 = *(v72 - 32) | 0x8000000000000000;
          sub_1000328A0();
          sub_100031C50();
          (*v88)(v12, v89, v102);
          v74 = v107;
          sub_100031B60();
          (*v91)(v105, v74, v23);
          sub_10002FAC4();
          sub_1000318A0();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = sub_1000306A8(0, *(v41 + 2) + 1, 1, v41);
          }

          v76 = *(v41 + 2);
          v75 = *(v41 + 3);
          if (v76 >= v75 >> 1)
          {
            v41 = sub_1000306A8((v75 > 1), v76 + 1, 1, v41);
          }

          (*v92)(v107, v23);
          *(v41 + 2) = v76 + 1;
          (*(v103 + 32))(&v41[((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v76], v108, v96);
        }

        else
        {

          v23 = v101;
          v12 = v100;
          v41 = v109;
          v38 = v97;
        }

LABEL_34:
        v42 = v111;
LABEL_35:
        v39 = 1;
        v40 = &_mh_execute_header.magic + 1;
        if (v42)
        {

          sub_1000328A0();
          sub_100031C50();
          (*v88)(v12, v89, v102);
          v77 = v105;
          sub_100031B60();
          v78 = v86;
          (*v91)(v86, v77, v23);
          sub_10000D904(v78, 0, 1, v23);
          sub_10002FAC4();
          sub_1000318B0();

          return (*v92)(v77, v23);
        }
      }
    }
  }

  else
  {
    sub_100032A20();
    if (qword_100044670 != -1)
    {
LABEL_42:
      swift_once();
    }

    sub_100031D30();
  }

  sub_10000D904(v86, 1, 1, v23);
  sub_10002FAC4();
  return sub_1000318B0();
}

uint64_t sub_10002DE2C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = sub_100023E90();
  return _swift_task_switch(v2);
}

uint64_t sub_10002DE54()
{
  sub_100023EC8();
  sub_10002D250(*(v0 + 16));
  sub_100024238();

  return v1();
}

void *sub_10002DEB0(void *a1)
{
  v1 = [a1 librarySpecificFetchOptions];
  v2 = objc_opt_self();
  v3 = [v2 fetchAssetCollectionsWithType:2 subtype:203 options:v1];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = v4;
    sub_100032980();
    if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000329C0();
    }

    sub_1000329D0();
  }

  v6 = [v2 fetchAssetCollectionsWithType:2 subtype:212 options:v1];
  v7 = [v6 firstObject];

  if (v7)
  {
    v8 = v7;
    sub_100032980();
    if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000329C0();
    }

    sub_1000329D0();
  }

  if (sub_100021140(&_swiftEmptyArrayStorage))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100030AD4(&_swiftEmptyArrayStorage, 0, isUniquelyReferenced_nonNull_native);
  }

  else
  {
  }

  sub_10000D4FC(&qword_1000454C0, &qword_100035320);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000343D0;
  v11 = objc_allocWithZone(NSSortDescriptor);
  *(v10 + 32) = sub_10003063C(0x657A696C61636F6CLL, 0xEE00656C74695464, 1);
  sub_100030C40(v10, v1);
  v12 = [v2 fetchAssetCollectionsWithType:1 subtype:2 options:v1];
  v13 = [v12 fetchedObjects];

  if (!v13)
  {
    goto LABEL_16;
  }

  sub_1000230A4(0, &qword_100045A00, PHAssetCollection_ptr);
  v14 = sub_1000329A0();

  if (!sub_100021140(v14))
  {

LABEL_16:

    return &_swiftEmptyDictionarySingleton;
  }

  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_100030AD4(v14, 1, v15);

  return &_swiftEmptyDictionarySingleton;
}

void *sub_10002E1D0(char a1, char a2, unint64_t a3)
{
  v3 = a3;
  LOBYTE(v4) = a2;
  LOBYTE(v5) = a1;
  if (a3 >> 62)
  {
    goto LABEL_73;
  }

  v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    while (1)
    {
      v106 = v3;
      if ((v4 & 1) == 0)
      {
        break;
      }

      v7 = sub_100021144(v3);
      if (v7)
      {
        v8 = v7;
        v110 = &_swiftEmptyArrayStorage;
        sub_1000217F4(0, v7 & ~(v7 >> 63), 0);
        if (v8 < 0)
        {
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          sub_100032CE0();
          __break(1u);
LABEL_80:
          result = sub_100032C10();
          __break(1u);
          return result;
        }

        v9 = 0;
        v10 = v110;
        v11 = v3 & 0xC000000000000001;
        do
        {
          if (v11)
          {
            v12 = sub_100032BE0();
          }

          else
          {
            v12 = *(v3 + 8 * v9 + 32);
          }

          v13 = v12;
          v14 = [v12 localIdentifier];
          v15 = sub_100032910();
          v17 = v16;

          v110 = v10;
          v19 = *(v10 + 16);
          v18 = *(v10 + 24);
          if (v19 >= v18 >> 1)
          {
            sub_1000217F4((v18 > 1), v19 + 1, 1);
            v10 = v110;
          }

          ++v9;
          *(v10 + 16) = v19 + 1;
          v20 = v10 + 16 * v19;
          *(v20 + 32) = v15;
          *(v20 + 40) = v17;
          v3 = v106;
        }

        while (v8 != v9);
      }

      LOBYTE(v4) = v5;
      v58 = sub_100032A50();

      v59 = 0;
      v3 = v58 + 64;
      v60 = 1 << *(v58 + 32);
      v61 = -1;
      if (v60 < 64)
      {
        v61 = ~(-1 << v60);
      }

      v62 = v61 & *(v58 + 64);
      v63 = (v60 + 63) >> 6;
      v5 = &_swiftEmptyDictionarySingleton;
      v103 = v63;
      for (i = v58; v62; v59 = v64)
      {
        v64 = v59;
LABEL_47:
        v65 = __clz(__rbit64(v62));
        v62 &= v62 - 1;
        v66 = (v64 << 10) | (16 * v65);
        v67 = (*(v58 + 48) + v66);
        v68 = v67[1];
        v107 = *v67;
        v69 = *(v58 + 56) + v66;
        v70 = *v69;
        LOBYTE(v4) = *(v69 + 8);

        v109 = v70;
        if (v4)
        {
          sub_100030D28(v70, 1);
          v71 = sub_100032A20();
          if (qword_100044670 != -1)
          {
            swift_once();
          }

          v72 = qword_100048418;
          if (os_log_type_enabled(qword_100048418, v71))
          {
            v73 = swift_slowAlloc();
            v110 = swift_slowAlloc();
            *v73 = 136315394;
            v74 = sub_100021264(v107, v68, &v110);
            v75 = v3;
            v76 = v74;

            *(v73 + 4) = v76;
            v3 = v75;
            *(v73 + 12) = 2080;
            swift_getErrorValue();
            v77 = sub_100032CF0();
            LOBYTE(v4) = v78;
            v79 = sub_100021264(v77, v78, &v110);

            *(v73 + 14) = v79;
            _os_log_impl(&_mh_execute_header, v72, v71, "could not get cloud identifier for album %s with error %s", v73, 0x16u);
            swift_arrayDestroy();
            v63 = v103;

            v58 = i;
          }

          else
          {
          }

          sub_100030D34(v109, 1);
        }

        else
        {
          sub_100030D28(v70, 0);
          v80 = [v70 stringValue];
          v81 = sub_100032910();
          v100 = v82;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v110 = v5;
          v84 = sub_10002A610(v107, v68);
          v86 = v5[2];
          v87 = (v85 & 1) == 0;
          v88 = v86 + v87;
          if (__OFADD__(v86, v87))
          {
            goto LABEL_77;
          }

          v89 = v84;
          v90 = v85;
          sub_10000D4FC(&qword_100045B98, &unk_100035A80);
          v4 = &v110;
          if (sub_100032C00(isUniquelyReferenced_nonNull_native, v88))
          {
            LOBYTE(v4) = v110;
            v91 = sub_10002A610(v107, v68);
            if ((v90 & 1) != (v92 & 1))
            {
              goto LABEL_79;
            }

            v89 = v91;
          }

          if (v90)
          {

            v5 = v110;
            v93 = (v110[7] + 16 * v89);
            v94 = v93[1];
            *v93 = v81;
            v93[1] = v100;

            sub_100030D34(v109, 0);
          }

          else
          {
            v5 = v110;
            v110[(v89 >> 6) + 8] |= 1 << v89;
            v95 = (v5[6] + 16 * v89);
            *v95 = v107;
            v95[1] = v68;
            v96 = (v5[7] + 16 * v89);
            *v96 = v81;
            v96[1] = v100;
            sub_100030D34(v109, 0);
            v97 = v5[2];
            v41 = __OFADD__(v97, 1);
            v98 = v97 + 1;
            if (v41)
            {
              goto LABEL_78;
            }

            v5[2] = v98;
          }

          v63 = v103;
          v58 = i;
        }
      }

      while (1)
      {
        v64 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          break;
        }

        if (v64 >= v63)
        {

          return v5;
        }

        v62 = *(v3 + 8 * v64);
        ++v59;
        if (v62)
        {
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      v6 = sub_100032C20();
      if (!v6)
      {
        return &_swiftEmptyDictionarySingleton;
      }
    }

    v21 = 0;
    v102 = v3 & 0xFFFFFFFFFFFFFF8;
    v104 = v3 & 0xC000000000000001;
    v5 = &_swiftEmptyDictionarySingleton;
    v101 = v6;
    while (1)
    {
      if (v6 == v21)
      {
        return v5;
      }

      if (v104)
      {
        v22 = sub_100032BE0();
      }

      else
      {
        if (v21 >= *(v102 + 16))
        {
          goto LABEL_68;
        }

        v22 = *(v3 + 8 * v21 + 32);
      }

      v4 = v22;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_67;
      }

      v23 = [v22 assetCollectionSubtype];
      v108 = v4;
      if (v23 == 203)
      {
        v4 = [v4 localIdentifier];
        v24 = sub_100032910();
        v26 = v25;

        v27 = sub_100032910();
        v29 = v28;
        v30 = swift_isUniquelyReferenced_nonNull_native();
        v110 = v5;
        LOBYTE(v4) = v5;
        v31 = sub_10002A610(v24, v26);
        v33 = v5[2];
        v34 = (v32 & 1) == 0;
        v5 = (v33 + v34);
        if (__OFADD__(v33, v34))
        {
          goto LABEL_70;
        }

        v35 = v31;
        v3 = v32;
        sub_10000D4FC(&qword_100045B98, &unk_100035A80);
        v4 = &v110;
        if (sub_100032C00(v30, v5))
        {
          LOBYTE(v4) = v110;
          v36 = sub_10002A610(v24, v26);
          if ((v3 & 1) != (v37 & 1))
          {
            goto LABEL_79;
          }

          v35 = v36;
        }

        if (v3)
        {
          goto LABEL_35;
        }

        v5 = v110;
        v110[(v35 >> 6) + 8] |= 1 << v35;
        v38 = (v5[6] + 16 * v35);
        *v38 = v24;
        v38[1] = v26;
        v39 = (v5[7] + 16 * v35);
        *v39 = v27;
        v39[1] = v29;

        v40 = v5[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_72;
        }
      }

      else
      {
        if (v23 != 212)
        {
          goto LABEL_80;
        }

        v4 = [v4 localIdentifier];
        v43 = sub_100032910();
        v45 = v44;

        v27 = sub_100032910();
        v29 = v46;
        v47 = swift_isUniquelyReferenced_nonNull_native();
        v110 = v5;
        LOBYTE(v4) = v5;
        v48 = sub_10002A610(v43, v45);
        v50 = v5[2];
        v51 = (v49 & 1) == 0;
        v5 = (v50 + v51);
        if (__OFADD__(v50, v51))
        {
          goto LABEL_69;
        }

        v35 = v48;
        v3 = v49;
        sub_10000D4FC(&qword_100045B98, &unk_100035A80);
        v4 = &v110;
        if (sub_100032C00(v47, v5))
        {
          LOBYTE(v4) = v110;
          v52 = sub_10002A610(v43, v45);
          if ((v3 & 1) != (v53 & 1))
          {
            goto LABEL_79;
          }

          v35 = v52;
        }

        if (v3)
        {
LABEL_35:

          v5 = v110;
          v54 = (v110[7] + 16 * v35);
          v4 = v54[1];
          *v54 = v27;
          v54[1] = v29;

          goto LABEL_38;
        }

        v5 = v110;
        v110[(v35 >> 6) + 8] |= 1 << v35;
        v55 = (v5[6] + 16 * v35);
        *v55 = v43;
        v55[1] = v45;
        v56 = (v5[7] + 16 * v35);
        *v56 = v27;
        v56[1] = v29;

        v57 = v5[2];
        v41 = __OFADD__(v57, 1);
        v42 = v57 + 1;
        if (v41)
        {
          goto LABEL_71;
        }
      }

      v5[2] = v42;
LABEL_38:
      v3 = v106;
      v6 = v101;
      ++v21;
    }
  }

  return &_swiftEmptyDictionarySingleton;
}

uint64_t sub_10002EA98()
{
  sub_100023EC8();
  v0[12] = v1;
  v0[13] = v2;
  v0[11] = v3;
  v4 = sub_10000D4FC(&qword_100045BB0, &qword_100035AA8);
  sub_100011EE8(v4);
  v6 = *(v5 + 64);
  v0[14] = sub_1000240D0();
  v7 = sub_10000D4FC(&qword_1000456B0, &unk_1000352E0);
  sub_100011EE8(v7);
  v9 = *(v8 + 64) + 15;
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  v10 = sub_100031B50();
  v0[17] = v10;
  sub_100023E68(v10);
  v0[18] = v11;
  v13 = *(v12 + 64);
  v0[19] = sub_1000240D0();
  v14 = sub_10000D4FC(&qword_1000454D8, &qword_100034958);
  v0[20] = v14;
  sub_100023E68(v14);
  v0[21] = v15;
  v17 = *(v16 + 64) + 15;
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v18 = sub_10000D4FC(&qword_1000454D0, &qword_100034950);
  v0[24] = v18;
  sub_100023E68(v18);
  v0[25] = v19;
  v21 = *(v20 + 64) + 15;
  v0[26] = swift_task_alloc();
  v0[27] = swift_task_alloc();
  v22 = sub_10000D4FC(&qword_100045B30, qword_1000356E0);
  v0[28] = v22;
  sub_100023E68(v22);
  v0[29] = v23;
  v25 = *(v24 + 64);
  v0[30] = sub_1000240D0();
  v26 = sub_100023E90();

  return _swift_task_switch(v26);
}

uint64_t sub_10002ECDC()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  sub_10002D250(v2);
  v4 = sub_1000318D0();
  result = (*(v1 + 8))(v2, v3);
  v72 = *(v4 + 16);
  if (v72)
  {
    v6 = 0;
    v7 = v0[25];
    v8 = v0[21];
    v67 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v70 = v4 + v67;
    v78 = (v8 + 8);
    v79 = v8;
    v74 = (v8 + 32);
    v65 = (v0[18] + 32);
    v68 = (v7 + 8);
    v9 = &_swiftEmptyArrayStorage;
    v71 = v7;
    v66 = (v7 + 32);
    v69 = v4;
    while (v6 < *(v4 + 16))
    {
      v75 = v6 + 1;
      v76 = v9;
      v73 = *(v71 + 72);
      (*(v71 + 16))(v0[27], v70 + v73 * v6, v0[24]);
      result = sub_100031890();
      v10 = result;
      v11 = 0;
      v81 = *(result + 16);
      v77 = &_swiftEmptyArrayStorage;
      while (v81 != v11)
      {
        if (v11 >= *(v10 + 16))
        {
          __break(1u);
          goto LABEL_30;
        }

        v13 = v0[12];
        v12 = v0[13];
        v14 = (*(v79 + 80) + 32) & ~*(v79 + 80);
        v15 = *(v79 + 72);
        (*(v79 + 16))(v0[23], v10 + v14 + v15 * v11, v0[20]);
        sub_100031770();
        v16 = v0[2];
        v17 = v0[4];
        v18 = v0[5];
        v19 = v0[6];

        v20 = sub_100032930();
        v22 = v21;

        v0[7] = v20;
        v0[8] = v22;
        v0[9] = sub_100032930();
        v0[10] = v23;
        sub_10000EF70();
        LOBYTE(v20) = sub_100032B40();

        v24 = v0[23];
        if (v20)
        {
          v25 = *v74;
          (*v74)(v0[22], v0[23], v0[20]);
          v26 = v77;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100021834(0, v77[2] + 1, 1);
            v26 = v77;
          }

          v28 = v26[2];
          v27 = v26[3];
          if (v28 >= v27 >> 1)
          {
            sub_100021834(v27 > 1, v28 + 1, 1);
            v26 = v77;
          }

          ++v11;
          v29 = v0[22];
          v30 = v0[20];
          v26[2] = v28 + 1;
          v77 = v26;
          result = v25(v26 + v14 + v28 * v15, v29, v30);
        }

        else
        {
          result = (*v78)(v0[23], v0[20]);
          ++v11;
        }
      }

      v31 = v0[27];
      if (v77[2])
      {
        v32 = v0[14];
        v33 = v0[24];
        sub_100031880();
        v34 = sub_100031920();
        v35 = sub_10000D8C4(v32, 1, v34);
        v36 = v0[19];
        v37 = v0[16];
        v38 = v0[17];
        v39 = v0[14];
        if (v35 == 1)
        {
          sub_100030D8C(v0[14], &qword_100045BB0, &qword_100035AA8);
          sub_100025708();
          sub_10000D904(v40, v41, v42, v38);
          sub_100031B20();
          if (sub_10000D8C4(v37, 1, v38) != 1)
          {
            sub_100030D8C(v0[16], &qword_1000456B0, &unk_1000352E0);
          }
        }

        else
        {
          v44 = v0[16];
          sub_100031900();
          (*(*(v34 - 8) + 8))(v39, v34);
          sub_10000D904(v37, 0, 1, v38);
          (*v65)(v36, v37, v38);
        }

        v45 = v0[26];
        v46 = v0[19];
        sub_10002FAC4();
        sub_1000318A0();
        v9 = v76;
        v4 = v69;
        v43 = v75;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1000306A8(0, *(v76 + 16) + 1, 1, v76);
        }

        v48 = *(v9 + 2);
        v47 = *(v9 + 3);
        if (v48 >= v47 >> 1)
        {
          v9 = sub_1000306A8((v47 > 1), v48 + 1, 1, v9);
        }

        v49 = v0[26];
        v50 = v0[24];
        (*v68)(v0[27], v50);
        *(v9 + 2) = v48 + 1;
        result = (*v66)(&v9[v67 + v48 * v73], v49, v50);
      }

      else
      {
        (*v68)(v0[27], v0[24]);

        v4 = v69;
        v43 = v75;
        v9 = v76;
      }

      v6 = v43;
      if (v43 == v72)
      {
        goto LABEL_26;
      }
    }

LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_26:

    v51 = v0[30];
    v53 = v0[26];
    v52 = v0[27];
    v55 = v0[22];
    v54 = v0[23];
    v56 = v0[19];
    v57 = v0[17];
    v58 = v0[15];
    v80 = v0[16];
    v82 = v0[14];
    v59 = v0[11];
    sub_100025708();
    sub_10000D904(v60, v61, v62, v63);
    sub_10002FAC4();
    sub_1000318B0();

    sub_100024238();

    return v64();
  }

  return result;
}

uint64_t sub_10002F354()
{
  sub_100023EC8();
  *(v0 + 32) = v1;
  v2 = sub_100031B50();
  sub_100011EE8(v2);
  v4 = *(v3 + 64);
  *(v0 + 40) = sub_1000240D0();
  v5 = sub_100023E90();

  return _swift_task_switch(v5);
}

uint64_t sub_10002F3CC()
{
  if ([objc_opt_self() systemPhotoLibraryIsObtainable])
  {
    v1 = sub_10001A5E8();
    if (v1)
    {
      v2 = v1;
      v3 = [v1 librarySpecificFetchOptions];
      v4 = [objc_opt_self() fetchAssetCollectionsWithType:2 subtype:203 options:v3];
      v5 = [v4 firstObject];

      if (v5)
      {
        v6 = [v5 localizedTitle];
        if (v6)
        {
          v7 = v6;
          v8 = sub_100032910();
          v10 = v9;

          goto LABEL_13;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_100032A20();
    if (qword_100044670 != -1)
    {
      swift_once();
    }

    sub_100031D30();
  }

  v8 = 0;
  v10 = 0xE000000000000000;
LABEL_13:
  v12 = v0[4];
  v11 = v0[5];
  v13 = sub_100032910();
  v15 = v14;
  sub_10000D4FC(&qword_100045B88, &qword_100035A60);
  sub_100031B20();
  v16 = sub_1000317F0();
  v0[2] = sub_100032910();
  v0[3] = v17;
  sub_1000317E0();

  *v12 = v16;
  v12[1] = v13;
  v12[2] = v15;
  v12[3] = v8;
  v12[4] = v10;
  sub_100024238();

  return v18();
}

uint64_t sub_10002F624()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100030FDC;

  return sub_10002EA98();
}

unint64_t sub_10002F6D8()
{
  result = qword_100045B08;
  if (!qword_100045B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045B08);
  }

  return result;
}

unint64_t sub_10002F730()
{
  result = qword_100045B10;
  if (!qword_100045B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045B10);
  }

  return result;
}

uint64_t sub_10002F788()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100030FF0;

  return sub_10002CF44();
}

uint64_t sub_10002F81C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100030FDC;

  return sub_10002DE2C(a1);
}

uint64_t sub_10002F8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10002F974;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_10002F974()
{
  sub_100023EC8();
  v3 = v2;
  v4 = *(*v1 + 16);
  v5 = *v1;
  sub_100023EA0();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v0)
  {
    v7 = v3;
  }

  return v8(v7);
}

unint64_t sub_10002FA6C()
{
  result = qword_100045B18;
  if (!qword_100045B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045B18);
  }

  return result;
}

unint64_t sub_10002FAC4()
{
  result = qword_100045B20;
  if (!qword_100045B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045B20);
  }

  return result;
}

uint64_t sub_10002FB5C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10002CC74();
  *v6 = v2;
  v6[1] = sub_10002FC10;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10002FC10()
{
  sub_100023EC8();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_100023EA0();
  *v3 = v2;

  sub_100024238();

  return v4();
}

uint64_t sub_10002FCF4(uint64_t a1)
{
  *(v1 + 56) = a1;
  v2 = swift_task_alloc();
  *(v1 + 64) = v2;
  *v2 = v1;
  v2[1] = sub_10002FD8C;

  return sub_10002F354();
}

uint64_t sub_10002FD8C()
{
  v1 = *v0;
  v2 = *v0;
  sub_100023EA0();
  *v3 = v2;
  v4 = v1[8];
  v5 = v1[7];
  v6 = *v0;
  *v3 = *v0;

  v7 = *(v2 + 1);
  v8 = *(v2 + 2);
  *(v5 + 32) = v1[6];
  *v5 = v7;
  *(v5 + 16) = v8;
  v9 = v6[1];

  return v9();
}

unint64_t sub_10002FEBC()
{
  result = qword_100045B38;
  if (!qword_100045B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045B38);
  }

  return result;
}

unint64_t sub_10002FF14()
{
  result = qword_100045B40;
  if (!qword_100045B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045B40);
  }

  return result;
}

unint64_t sub_10002FF6C()
{
  result = qword_100045B48;
  if (!qword_100045B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045B48);
  }

  return result;
}

uint64_t sub_10002FFCC()
{
  v1 = sub_10000D4FC(&qword_100045B80, "dR");
  v2 = sub_100011EE8(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v6 = sub_10000D4FC(&qword_1000456B0, &unk_1000352E0);
  v7 = sub_100011EE8(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v11 = sub_100031B50();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11, v13);
  v14 = sub_1000328E0();
  v15 = sub_100011EE8(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  sub_1000328D0();
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_1000328C0(v27);
  sub_1000328B0(*(v0 + 24));
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  sub_1000328C0(v28);
  sub_100031B40();
  sub_100025708();
  sub_10000D904(v19, v20, v21, v11);
  sub_1000318F0();
  sub_100025708();
  sub_10000D904(v22, v23, v24, v25);
  return sub_100031910();
}

unint64_t sub_1000301A4()
{
  result = qword_100045B50;
  if (!qword_100045B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045B50);
  }

  return result;
}

unint64_t sub_1000301FC()
{
  result = qword_100045B58;
  if (!qword_100045B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045B58);
  }

  return result;
}

unint64_t sub_100030254()
{
  result = qword_100045B60;
  if (!qword_100045B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045B60);
  }

  return result;
}

uint64_t sub_1000302B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002CCC8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000302DC@<X0>(uint64_t a1@<X8>)
{
  if (qword_100044668 != -1)
  {
    swift_once();
  }

  v2 = sub_1000319D0();
  v3 = sub_10000F4F4(v2, qword_100048400);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000303C8(uint64_t a1)
{
  v2 = sub_100025628();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100030418()
{
  result = qword_100045B78;
  if (!qword_100045B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045B78);
  }

  return result;
}

uint64_t sub_100030470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10002FC10;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100030534(uint64_t a1)
{
  v2 = sub_100030254();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

__n128 sub_100030580(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100030594(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000305D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_10003063C(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    v5 = sub_100032900();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithKey:v5 ascending:a3 & 1];

  return v6;
}

char *sub_1000306A8(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1000308E8(v9, a2, &qword_100045B90, &unk_100035A70, &qword_1000454D0, &qword_100034950);
  v11 = *(sub_10000D4FC(&qword_1000454D0, &qword_100034950) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_100021168(a4 + v12, v9, &v10[v12]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000307C8(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1000308E8(v9, a2, &qword_1000454E8, &qword_100034968, &qword_1000454D8, &qword_100034958);
  v11 = *(sub_10000D4FC(&qword_1000454D8, &qword_100034958) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_10002117C(a4 + v12, v9, &v10[v12]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000308E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10000D4FC(a3, a4);
  v10 = sub_10000D4FC(a5, a6);
  sub_100023E68(v10);
  v12 = *(v11 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  result = j__malloc_size(v15);
  if (v12)
  {
    if (&result[-v14] != 0x8000000000000000 || v12 != -1)
    {
      v15[2] = a1;
      v15[3] = 2 * (&result[-v14] / v12);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000309E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_100032CD0() & 1;
  }
}

BOOL sub_100030A24(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

unint64_t sub_100030AD4(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10002A5A4(a2 & 1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v9;
  v15 = v10;
  sub_10000D4FC(&qword_100045BA8, &qword_100035A90);
  if (!sub_100032C00(a3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = sub_10002A5A4(a2 & 1);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    result = sub_100032CE0();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v14);
    *(v20 + 8 * v14) = a1;
  }

  else
  {

    return sub_100030BF8(v14, a2 & 1, a1, v19);
  }
}

unint64_t sub_100030BF8(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2 & 1;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

void sub_100030C40(uint64_t a1, void *a2)
{
  sub_1000230A4(0, &qword_100045BA0, NSSortDescriptor_ptr);
  isa = sub_100032990().super.isa;

  [a2 setSortDescriptors:isa];
}

uint64_t sub_100030CC4(void *a1)
{
  v1 = [a1 localizedTitle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_100032910();

  return v3;
}

id sub_100030D28(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_100030D34(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100030D8C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000D4FC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for PhotosReliveWidgetAlbum.PhotoReliveWidgetAlbumOptionsProvider.PhotosWidgetAlbumType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhotosReliveWidgetAlbum.PhotoReliveWidgetAlbumOptionsProvider.PhotosWidgetAlbumType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100030F40);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100030F88()
{
  result = qword_100045BB8;
  if (!qword_100045BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045BB8);
  }

  return result;
}

id sub_1000310E0()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100045BC0 = result;
  return result;
}

uint64_t sub_100031138()
{
  v0 = sub_100031D20();
  sub_100025688(v0, qword_100048420);
  sub_10000F4F4(v0, qword_100048420);
  if (qword_100044678 != -1)
  {
    swift_once();
  }

  v1 = qword_100045BC0;
  return sub_100031D10();
}

uint64_t sub_1000311E8(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_100048328 == -1)
  {
    if (qword_100048330)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1000316B0();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100048330)
    {
      return _availability_version_check();
    }
  }

  if (qword_100048320 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1000316C8();
    a3 = v10;
    a4 = v9;
    v8 = dword_100048310 < v11;
    if (dword_100048310 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100048314 > a3)
      {
        return 1;
      }

      if (dword_100048314 >= a3)
      {
        return dword_100048318 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100048310 < a2;
  if (dword_100048310 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_10003137C(uint64_t result)
{
  v1 = qword_100048330;
  if (qword_100048330)
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
      qword_100048330 = &__availability_version_check;
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
                                          sscanf(v28, "%d.%d.%d", &dword_100048310, &dword_100048314, &dword_100048318);
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
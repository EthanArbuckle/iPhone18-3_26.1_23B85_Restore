uint64_t sub_65C018()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_65C388;
  }

  else
  {
    v2 = sub_65C12C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_65C12C()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_15F84(v0 + 800, v0 + 912, &qword_E0EB18);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_12E1C(v0 + 800, &qword_E0EB18);
    v19 = sub_500C84(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_12E1C(v0 + 800, &qword_E0EB18);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_65C388()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_15F84(v0 + 576, v0 + 688, &qword_E0EB18);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_12E1C(v0 + 576, &qword_E0EB18);
    v17 = sub_500C84(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_12E1C(v0 + 576, &qword_E0EB18);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_65C674(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  *(v4 + 904) = swift_task_alloc();
  v6 = sub_AB4BC0();
  *(v4 + 912) = v6;
  *(v4 + 920) = *(v6 - 8);
  *(v4 + 928) = swift_task_alloc();
  *(v4 + 936) = swift_task_alloc();
  *(v4 + 944) = swift_task_alloc();
  v7 = a4[3];
  *(v4 + 144) = a4[2];
  *(v4 + 160) = v7;
  v8 = a4[5];
  *(v4 + 176) = a4[4];
  *(v4 + 192) = v8;
  v9 = a4[1];
  *(v4 + 112) = *a4;
  *(v4 + 128) = v9;

  return _swift_task_switch(sub_65C79C, 0, 0);
}

uint64_t sub_65C79C()
{
  v38 = v0;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 944);
  v2 = *(v0 + 920);
  v3 = *(v0 + 912);
  v4 = __swift_project_value_buffer(v3, qword_E0E1F8);
  *(v0 + 952) = v4;
  v5 = *(v2 + 16);
  *(v0 + 960) = v5;
  *(v0 + 968) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 160);
  *(v0 + 48) = *(v0 + 144);
  *(v0 + 64) = v6;
  v7 = *(v0 + 192);
  *(v0 + 80) = *(v0 + 176);
  *(v0 + 96) = v7;
  v8 = *(v0 + 128);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 32) = v8;
  sub_15F84(v0 + 16, v0 + 208, &qword_E0EB70);
  v9 = sub_AB4BA0();
  v10 = sub_AB9F50();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 944);
  v13 = *(v0 + 920);
  v14 = *(v0 + 912);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v37 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 48));
    v19 = v18;
    sub_12E1C(v0 + 16, &qword_E0EB70);
    v20 = sub_500C84(v17, v19, &v37);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_0, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    sub_12E1C(v0 + 16, &qword_E0EB70);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 904);
  sub_13C80(0, &qword_E0E218);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_ABA930();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_ABA730();

  sub_12E1C(v21, &qword_E0E210);
  *(v0 + 880) = v24;
  sub_ABA720();
  sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = sub_AB54B0();

  *(v0 + 888) = v25;
  v26 = *(v0 + 160);
  *(v0 + 336) = *(v0 + 144);
  *(v0 + 352) = v26;
  v27 = *(v0 + 192);
  *(v0 + 368) = *(v0 + 176);
  *(v0 + 384) = v27;
  v28 = *(v0 + 128);
  *(v0 + 304) = *(v0 + 112);
  *(v0 + 320) = v28;
  v29 = *(v0 + 384);
  v30 = swift_allocObject();
  v31 = *(v0 + 160);
  v30[3] = *(v0 + 144);
  v30[4] = v31;
  v32 = *(v0 + 192);
  v30[5] = *(v0 + 176);
  v30[6] = v32;
  v33 = *(v0 + 128);
  v30[1] = *(v0 + 112);
  v30[2] = v33;
  sub_15F84(v0 + 304, v0 + 400, &qword_E0EB70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
  sub_36A00(&qword_E0E230, &qword_E0E228);
  *(v0 + 976) = sub_AB55C0();

  v36 = (v29 + *v29);
  v34 = swift_task_alloc();
  *(v0 + 984) = v34;
  *v34 = v0;
  v34[1] = sub_65CCAC;

  return v36(v0 + 112);
}

uint64_t sub_65CCAC()
{
  *(*v1 + 992) = v0;

  if (v0)
  {
    v2 = sub_65D014;
  }

  else
  {
    v2 = sub_65CDC0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_65CDC0()
{
  v24 = v0;
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);
  v3 = *(v0 + 936);
  v4 = *(v0 + 912);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 160);
  *(v0 + 720) = *(v0 + 144);
  *(v0 + 736) = v5;
  v6 = *(v0 + 192);
  *(v0 + 752) = *(v0 + 176);
  *(v0 + 768) = v6;
  v7 = *(v0 + 128);
  *(v0 + 688) = *(v0 + 112);
  *(v0 + 704) = v7;
  sub_15F84(v0 + 688, v0 + 784, &qword_E0EB70);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 936);
  v12 = *(v0 + 920);
  v13 = *(v0 + 912);
  if (v10)
  {
    v22 = *(v0 + 936);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 720));
    v18 = v17;
    sub_12E1C(v0 + 688, &qword_E0EB70);
    v19 = sub_500C84(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_12E1C(v0 + 688, &qword_E0EB70);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_65D014()
{
  v28 = v0;
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);
  v3 = *(v0 + 928);
  v4 = *(v0 + 912);

  v1(v3, v2, v4);
  v5 = *(v0 + 160);
  *(v0 + 528) = *(v0 + 144);
  *(v0 + 544) = v5;
  v6 = *(v0 + 192);
  *(v0 + 560) = *(v0 + 176);
  *(v0 + 576) = v6;
  v7 = *(v0 + 128);
  *(v0 + 496) = *(v0 + 112);
  *(v0 + 512) = v7;
  sub_15F84(v0 + 496, v0 + 592, &qword_E0EB70);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 992);
    v26 = *(v0 + 928);
    v11 = *(v0 + 920);
    v12 = *(v0 + 912);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 528));
    v16 = v15;
    sub_12E1C(v0 + 496, &qword_E0EB70);
    v17 = sub_500C84(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 896) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 928);
    v22 = *(v0 + 920);
    v23 = *(v0 + 912);

    sub_12E1C(v0 + 496, &qword_E0EB70);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_65D2F8(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_AB4BC0();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_65D428, 0, 0);
}

uint64_t sub_65D428()
{
  v39 = v0;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, qword_E0E1F8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_15F84(v0 + 16, v0 + 240, &qword_E0EB50);
  v9 = sub_AB4BA0();
  v10 = sub_AB9F50();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_12E1C(v0 + 16, &qword_E0EB50);
    v20 = sub_500C84(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_0, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    sub_12E1C(v0 + 16, &qword_E0EB50);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_13C80(0, &qword_E0E218);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_ABA930();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_ABA730();

  sub_12E1C(v21, &qword_E0E210);
  *(v0 + 1024) = v24;
  sub_ABA720();
  sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = sub_AB54B0();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_15F84(v0 + 352, v0 + 464, &qword_E0EB50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
  sub_36A00(&qword_E0E230, &qword_E0E228);
  *(v0 + 1120) = sub_AB55C0();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_65D950;

  return v37(v0 + 128);
}

uint64_t sub_65D950()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_65DCC0;
  }

  else
  {
    v2 = sub_65DA64;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_65DA64()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_15F84(v0 + 800, v0 + 912, &qword_E0EB50);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_12E1C(v0 + 800, &qword_E0EB50);
    v19 = sub_500C84(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_12E1C(v0 + 800, &qword_E0EB50);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_65DCC0()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_15F84(v0 + 576, v0 + 688, &qword_E0EB50);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_12E1C(v0 + 576, &qword_E0EB50);
    v17 = sub_500C84(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_12E1C(v0 + 576, &qword_E0EB50);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_65DFAC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_AB4BC0();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_65E0DC, 0, 0);
}

uint64_t sub_65E0DC()
{
  v39 = v0;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, qword_E0E1F8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_15F84(v0 + 16, v0 + 240, &qword_E0EB48);
  v9 = sub_AB4BA0();
  v10 = sub_AB9F50();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_12E1C(v0 + 16, &qword_E0EB48);
    v20 = sub_500C84(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_0, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    sub_12E1C(v0 + 16, &qword_E0EB48);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_13C80(0, &qword_E0E218);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_ABA930();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_ABA730();

  sub_12E1C(v21, &qword_E0E210);
  *(v0 + 1024) = v24;
  sub_ABA720();
  sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = sub_AB54B0();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_15F84(v0 + 352, v0 + 464, &qword_E0EB48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
  sub_36A00(&qword_E0E230, &qword_E0E228);
  *(v0 + 1120) = sub_AB55C0();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_65E604;

  return v37(v0 + 128);
}

uint64_t sub_65E604()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_65E974;
  }

  else
  {
    v2 = sub_65E718;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_65E718()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_15F84(v0 + 800, v0 + 912, &qword_E0EB48);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_12E1C(v0 + 800, &qword_E0EB48);
    v19 = sub_500C84(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_12E1C(v0 + 800, &qword_E0EB48);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_65E974()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_15F84(v0 + 576, v0 + 688, &qword_E0EB48);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_12E1C(v0 + 576, &qword_E0EB48);
    v17 = sub_500C84(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_12E1C(v0 + 576, &qword_E0EB48);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_65EC60(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_AB4BC0();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_65ED90, 0, 0);
}

uint64_t sub_65ED90()
{
  v39 = v0;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, qword_E0E1F8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_15F84(v0 + 16, v0 + 240, &qword_E0EB40);
  v9 = sub_AB4BA0();
  v10 = sub_AB9F50();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_12E1C(v0 + 16, &qword_E0EB40);
    v20 = sub_500C84(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_0, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    sub_12E1C(v0 + 16, &qword_E0EB40);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_13C80(0, &qword_E0E218);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_ABA930();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_ABA730();

  sub_12E1C(v21, &qword_E0E210);
  *(v0 + 1024) = v24;
  sub_ABA720();
  sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = sub_AB54B0();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_15F84(v0 + 352, v0 + 464, &qword_E0EB40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
  sub_36A00(&qword_E0E230, &qword_E0E228);
  *(v0 + 1120) = sub_AB55C0();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_65F2B8;

  return v37(v0 + 128);
}

uint64_t sub_65F2B8()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_65F628;
  }

  else
  {
    v2 = sub_65F3CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_65F3CC()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_15F84(v0 + 800, v0 + 912, &qword_E0EB40);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_12E1C(v0 + 800, &qword_E0EB40);
    v19 = sub_500C84(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_12E1C(v0 + 800, &qword_E0EB40);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_65F628()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_15F84(v0 + 576, v0 + 688, &qword_E0EB40);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_12E1C(v0 + 576, &qword_E0EB40);
    v17 = sub_500C84(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_12E1C(v0 + 576, &qword_E0EB40);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_65F914(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_AB4BC0();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_65FA44, 0, 0);
}

uint64_t sub_65FA44()
{
  v39 = v0;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, qword_E0E1F8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_15F84(v0 + 16, v0 + 240, &qword_E0EB38);
  v9 = sub_AB4BA0();
  v10 = sub_AB9F50();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_12E1C(v0 + 16, &qword_E0EB38);
    v20 = sub_500C84(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_0, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    sub_12E1C(v0 + 16, &qword_E0EB38);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_13C80(0, &qword_E0E218);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_ABA930();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_ABA730();

  sub_12E1C(v21, &qword_E0E210);
  *(v0 + 1024) = v24;
  sub_ABA720();
  sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = sub_AB54B0();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_15F84(v0 + 352, v0 + 464, &qword_E0EB38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
  sub_36A00(&qword_E0E230, &qword_E0E228);
  *(v0 + 1120) = sub_AB55C0();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_65FF6C;

  return v37(v0 + 128);
}

uint64_t sub_65FF6C()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_6602DC;
  }

  else
  {
    v2 = sub_660080;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_660080()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_15F84(v0 + 800, v0 + 912, &qword_E0EB38);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_12E1C(v0 + 800, &qword_E0EB38);
    v19 = sub_500C84(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_12E1C(v0 + 800, &qword_E0EB38);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_6602DC()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_15F84(v0 + 576, v0 + 688, &qword_E0EB38);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_12E1C(v0 + 576, &qword_E0EB38);
    v17 = sub_500C84(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_12E1C(v0 + 576, &qword_E0EB38);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_6605C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 1064) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  *(v5 + 1072) = swift_task_alloc();
  v7 = sub_AB4BC0();
  *(v5 + 1080) = v7;
  *(v5 + 1088) = *(v7 - 8);
  *(v5 + 1096) = swift_task_alloc();
  *(v5 + 1104) = swift_task_alloc();
  *(v5 + 1112) = swift_task_alloc();
  *(v5 + 1176) = a5;

  return _swift_task_switch(sub_6606E0, 0, 0);
}

uint64_t sub_6606E0()
{
  v32 = v0;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1112);
  v2 = *(v0 + 1088);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1064);
  v5 = __swift_project_value_buffer(v3, qword_E0E1F8);
  *(v0 + 1120) = v5;
  v6 = *(v2 + 16);
  *(v0 + 1128) = v6;
  *(v0 + 1136) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  sub_15F84(v4, v0 + 16, &qword_E0EEA8);
  v7 = sub_AB4BA0();
  v8 = sub_AB9F50();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 1112);
  v11 = *(v0 + 1088);
  v12 = *(v0 + 1080);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446210;
    v15 = *(v0 + 208);
    sub_12E1C(v0 + 16, &qword_E0EEA8);
    v16 = ActionType.rawValue.getter(v15);
    v18 = sub_500C84(v16, v17, &v31);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_0, v7, v8, "%{public}s: finishing…", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    sub_12E1C(v0 + 16, &qword_E0EEA8);
  }

  v19 = *(v11 + 8);
  v19(v10, v12);
  *(v0 + 1144) = v19;
  v20 = *(v0 + 1072);
  v21 = *(v0 + 1064);
  sub_13C80(0, &qword_E0E218);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_ABA930();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  v24 = sub_ABA730();

  sub_12E1C(v20, &qword_E0E210);
  *(v0 + 1040) = v24;
  sub_ABA720();
  sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = sub_AB54B0();

  *(v0 + 1048) = v25;
  sub_15F84(v21, v0 + 272, &qword_E0EEA8);
  v26 = swift_allocObject();
  sub_36B0C(v0 + 272, v26 + 16, &qword_E0EEA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
  sub_36A00(&qword_E0E230, &qword_E0E228);
  *(v0 + 1152) = sub_AB55C0();

  v30 = (*(v21 + 240) + **(v21 + 240));
  v27 = swift_task_alloc();
  *(v0 + 1160) = v27;
  *v27 = v0;
  v27[1] = sub_660BC8;
  v28 = *(v0 + 1064);

  return v30(v28, v0 + 1176);
}

uint64_t sub_660BC8()
{
  *(*v1 + 1168) = v0;

  if (v0)
  {
    v2 = sub_660F2C;
  }

  else
  {
    v2 = sub_660CDC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_660CDC()
{
  v23 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1104);
  v4 = *(v0 + 1080);
  v5 = *(v0 + 1064);
  sub_AB5450();
  v1(v3, v2, v4);
  sub_15F84(v5, v0 + 784, &qword_E0EEA8);
  v6 = sub_AB4BA0();
  v7 = sub_AB9F50();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1144);
  v10 = *(v0 + 1104);
  v11 = *(v0 + 1080);
  if (v8)
  {
    v21 = *(v0 + 1144);
    v12 = swift_slowAlloc();
    v20 = v10;
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136446210;
    v14 = *(v0 + 976);
    sub_12E1C(v0 + 784, &qword_E0EEA8);
    v15 = ActionType.rawValue.getter(v14);
    v17 = sub_500C84(v15, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_0, v6, v7, "%{public}s: finish success", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);

    v21(v20, v11);
  }

  else
  {
    sub_12E1C(v0 + 784, &qword_E0EEA8);

    v9(v10, v11);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_660F2C()
{
  v26 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1096);
  v4 = *(v0 + 1080);
  v5 = *(v0 + 1064);

  v1(v3, v2, v4);
  sub_15F84(v5, v0 + 528, &qword_E0EEA8);
  swift_errorRetain();
  v6 = sub_AB4BA0();
  v7 = sub_AB9F30();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 1168);
    v23 = *(v0 + 1096);
    v24 = *(v0 + 1144);
    v9 = *(v0 + 1080);
    v10 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v10 = 136446466;
    v11 = *(v0 + 720);
    sub_12E1C(v0 + 528, &qword_E0EEA8);
    v12 = ActionType.rawValue.getter(v11);
    v14 = sub_500C84(v12, v13, &v25);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v0 + 1056) = v8;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v15 = sub_AB9350();
    v17 = sub_500C84(v15, v16, &v25);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_0, v6, v7, "%{public}s: finish failed: %{public}s", v10, 0x16u);
    swift_arrayDestroy();

    v24(v23, v9);
  }

  else
  {
    v18 = *(v0 + 1144);
    v19 = *(v0 + 1096);
    v20 = *(v0 + 1080);
    sub_12E1C(v0 + 528, &qword_E0EEA8);

    v18(v19, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_661200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  v4[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC30);
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = sub_AB4BC0();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_6613A4, 0, 0);
}

uint64_t sub_6613A4()
{
  v37 = v0;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[5];
  v6 = __swift_project_value_buffer(v2, qword_E0E1F8);
  v0[19] = v6;
  v7 = *(v3 + 16);
  v0[20] = v7;
  v0[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v6, v2);
  sub_15F84(v5, v4, &qword_E0EC30);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[18];
  v12 = v0[14];
  v13 = v0[15];
  v14 = v0[13];
  if (v10)
  {
    v15 = v0[7];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = 136446210;
    LOBYTE(v15) = *(v14 + *(v15 + 36));
    sub_12E1C(v14, &qword_E0EC30);
    v18 = ActionType.rawValue.getter(v15);
    v20 = sub_500C84(v18, v19, &v36);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finishing…", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    sub_12E1C(v0[13], &qword_E0EC30);
  }

  (*(v13 + 8))(v11, v12);
  v21 = v0[12];
  v22 = v0[8];
  v23 = v0[6];
  v24 = v0[7];
  v25 = v0[5];
  sub_13C80(0, &qword_E0E218);
  v26 = [objc_opt_self() mainRunLoop];
  v27 = sub_ABA930();
  (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
  v28 = sub_ABA730();

  sub_12E1C(v23, &qword_E0E210);
  v0[2] = v28;
  sub_ABA720();
  sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
  v29 = sub_AB54B0();

  v0[3] = v29;
  sub_15F84(v25, v21, &qword_E0EC30);
  v30 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v31 = swift_allocObject();
  sub_36B0C(v21, v31 + v30, &qword_E0EC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
  sub_36A00(&qword_E0E230, &qword_E0E228);
  v0[22] = sub_AB55C0();

  v35 = (*(v25 + *(v24 + 52)) + **(v25 + *(v24 + 52)));
  v32 = swift_task_alloc();
  v0[23] = v32;
  *v32 = v0;
  v32[1] = sub_6618A8;
  v33 = v0[5];

  return v35(v33);
}

uint64_t sub_6618A8()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_661C1C;
  }

  else
  {
    v2 = sub_6619BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6619BC()
{
  v24 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[5];
  sub_AB5450();
  v2(v3, v1, v4);
  sub_15F84(v6, v5, &qword_E0EC30);
  v7 = sub_AB4BA0();
  v8 = sub_AB9F50();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[17];
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[11];
  if (v9)
  {
    v14 = v0[7];
    v22 = v0[17];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136446210;
    LOBYTE(v14) = *(v13 + *(v14 + 36));
    sub_12E1C(v13, &qword_E0EC30);
    v17 = ActionType.rawValue.getter(v14);
    v19 = sub_500C84(v17, v18, &v23);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_0, v7, v8, "%{public}s: finish success", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);

    (*(v11 + 8))(v22, v12);
  }

  else
  {
    sub_12E1C(v0[11], &qword_E0EC30);

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_661C1C()
{
  v28 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[10];
  v6 = v0[5];

  v2(v3, v1, v4);
  sub_15F84(v6, v5, &qword_E0EC30);
  swift_errorRetain();
  v7 = sub_AB4BA0();
  v8 = sub_AB9F30();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[24];
    v10 = v0[15];
    v26 = v0[16];
    v11 = v0[14];
    v12 = v0[10];
    v13 = v0[7];
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v14 = 136446466;
    LOBYTE(v13) = *(v12 + *(v13 + 36));
    sub_12E1C(v12, &qword_E0EC30);
    v15 = ActionType.rawValue.getter(v13);
    v17 = sub_500C84(v15, v16, &v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[4] = v9;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, &v27);

    *(v14 + 14) = v20;
    _os_log_impl(&dword_0, v7, v8, "%{public}s: finish failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v22 = v0[15];
    v21 = v0[16];
    v23 = v0[14];
    sub_12E1C(v0[10], &qword_E0EC30);

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_661F10(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = sub_AB4BC0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_E0E1F8);
  (*(v6 + 16))(v8, v9, v5);
  sub_15F84(a2, v21, &qword_E0EAA8);
  v10 = sub_AB4BA0();
  v11 = sub_AB9F50();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = a3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21[0] = v14;
    *v13 = 136446210;
    v15 = ActionType.rawValue.getter(*(a2 + 72));
    v17 = v16;
    sub_12E1C(a2, &qword_E0EAA8);
    v18 = sub_500C84(v15, v17, v21);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_0, v10, v11, v20, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    sub_12E1C(a2, &qword_E0EAA8);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_66216C(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = sub_AB4BC0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_E0E1F8);
  (*(v6 + 16))(v8, v9, v5);
  sub_15F84(a2, v22, &qword_E0EB70);
  v10 = sub_AB4BA0();
  v11 = sub_AB9F50();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = a3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22[0] = v14;
    *v13 = 136446210;
    v15 = ActionType.rawValue.getter(*(a2 + 32));
    v17 = v16;
    sub_12E1C(a2, &qword_E0EB70);
    v18 = sub_500C84(v15, v17, v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_0, v10, v11, v21, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    sub_12E1C(a2, &qword_E0EB70);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_6623C8(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = sub_AB4BC0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_E0E1F8);
  (*(v6 + 16))(v8, v9, v5);
  sub_15F84(a2, v23, &qword_E0EEA8);
  v10 = sub_AB4BA0();
  v11 = sub_AB9F50();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = a3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136446210;
    v15 = v23[192];
    sub_12E1C(v23, &qword_E0EEA8);
    v16 = ActionType.rawValue.getter(v15);
    v18 = sub_500C84(v16, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_0, v10, v11, v21, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    sub_12E1C(v23, &qword_E0EEA8);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_662620(uint64_t a1, char a2)
{
  v4 = type metadata accessor for Notice(0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  static Notice.variant(_:)(a1, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_673A10(v6, type metadata accessor for Notice);
  }

  v8 = Strong;
  sub_720A4C(v13);

  v9 = v14;
  if (v14)
  {
    v10 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(v10 + 8))(v6, a2 & 1, v9, v10);
    sub_673A10(v6, type metadata accessor for Notice);
    return __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    sub_673A10(v6, type metadata accessor for Notice);
    return sub_12E1C(v13, &qword_E0EB30);
  }
}

uint64_t MusicLibrary.ActionableState.description.getter(uint64_t a1, unsigned __int16 a2)
{
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11AA0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v20 - v8;
  if (!(a2 >> 14))
  {
    v11 = a1;
    v12 = 0xE000000000000000;
    if (v11 == 5)
    {
      v13._countAndFlagsBits = 0;
LABEL_31:
      v22 = 0x6164644120959EE2;
      v23 = 0xAB00000000656C62;
      v13._object = v12;
      sub_AB94A0(v13);

      return v22;
    }

    v16 = 0xD000000000000016;
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_ABAD90(29);

    v22 = 0xD00000000000001BLL;
    v23 = 0x8000000000B6F6B0;
    if (v11 <= 1)
    {
      if (v11)
      {
        v17 = "Cloud Library Initial Import";
        v16 = 0xD00000000000001FLL;
        goto LABEL_30;
      }

      v19 = "Cloud Library Required";
    }

    else
    {
      if (v11 == 2)
      {
        v17 = "Unadded Tracks Present";
        v16 = 0xD00000000000001CLL;
        goto LABEL_30;
      }

      if (v11 == 3)
      {
        v17 = "ubscriptionStatus8@NSError16";
        v16 = 0xD000000000000015;
LABEL_30:
        v21._countAndFlagsBits = v16;
        v21._object = (v17 | 0x8000000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FB0);
        v25._countAndFlagsBits = sub_AB9350();
        sub_AB94A0(v25);

        v13._countAndFlagsBits = v22;
        v12 = v23;
        goto LABEL_31;
      }

      v19 = "Unadded Tracks Present";
    }

    v17 = (v19 - 32);
    goto LABEL_30;
  }

  if (a2 >> 14 == 1)
  {
    if ((a2 & 0x100) != 0)
    {
      v10 = 9;
      return v10 | 0x1000000000000014;
    }

    if (a2)
    {
      v10 = 10;
      return v10 | 0x1000000000000014;
    }

    v22 = 0;
    v23 = 0xE000000000000000;
    v18 = v7;
    sub_ABAD90(24);

    v22 = 0x1000000000000014;
    v23 = 0x8000000000B6F630;
    v20[1] = a1;
    sub_AB34F0();
    sub_662C00();
    sub_AB3070();
    sub_36A00(&qword_E11AB0, &qword_E11AA0);
    sub_AB8FC0();
    (*(v6 + 8))(v9, v18);
    sub_AB94A0(v21);

    v24._countAndFlagsBits = 8233;
    v24._object = 0xE200000000000000;
    sub_AB94A0(v24);
    return v22;
  }

  if (!(a1 | a2 ^ 0x8000))
  {
    return 1701736270;
  }

  if (a2 == 0x8000 && a1 == 1)
  {
    return 0x1000000000000013;
  }

  else
  {
    return 0x1000000000000014;
  }
}

unint64_t MusicLibrary.ActionableState.AddOverride.description.getter(unsigned __int8 a1)
{
  v1 = 0xD000000000000016;
  v2 = 0xD00000000000001CLL;
  v3 = 0xD000000000000015;
  if (a1 != 3)
  {
    v3 = 0xD000000000000016;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0xD00000000000001FLL;
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

unint64_t sub_662C00()
{
  result = qword_E11AA8;
  if (!qword_E11AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11AA8);
  }

  return result;
}

uint64_t MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:)(uint64_t a1, __int16 a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 1496) = v8;
  *(v9 + 1488) = v24;
  *(v9 + 1480) = a8;
  *(v9 + 1472) = a7;
  *(v9 + 1464) = a6;
  *(v9 + 1456) = a5;
  *(v9 + 1448) = a4;
  *(v9 + 1440) = a3;
  *(v9 + 1402) = a2;
  *(v9 + 1432) = a1;
  v10 = *a4;
  *(v9 + 1504) = *a4;
  v11 = sub_AB8CB0();
  *(v9 + 1512) = v11;
  *(v9 + 1520) = *(v11 - 8);
  *(v9 + 1528) = swift_task_alloc();
  *(v9 + 1536) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F288);
  *(v9 + 1544) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F158);
  *(v9 + 1552) = swift_task_alloc();
  *(v9 + 1560) = swift_task_alloc();
  *(v9 + 1568) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10B00);
  *(v9 + 1576) = swift_task_alloc();
  v12 = sub_AB8E20();
  *(v9 + 1584) = v12;
  *(v9 + 1592) = *(v12 - 8);
  *(v9 + 1600) = swift_task_alloc();
  v13 = sub_AB8230();
  *(v9 + 1608) = v13;
  *(v9 + 1616) = *(v13 - 8);
  *(v9 + 1624) = swift_task_alloc();
  *(v9 + 1632) = swift_task_alloc();
  *(v9 + 1640) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0);
  *(v9 + 1648) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E348);
  *(v9 + 1656) = swift_task_alloc();
  *(v9 + 1664) = swift_task_alloc();
  *(v9 + 1672) = swift_task_alloc();
  *(v9 + 1680) = swift_task_alloc();
  *(v9 + 1688) = swift_task_alloc();
  *(v9 + 1696) = swift_task_alloc();
  *(v9 + 1704) = swift_task_alloc();
  *(v9 + 1712) = swift_task_alloc();
  *(v9 + 1720) = type metadata accessor for MetricsEvent.Click(0);
  *(v9 + 1728) = swift_task_alloc();
  *(v9 + 1736) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  *(v9 + 1744) = swift_task_alloc();
  *(v9 + 1752) = swift_task_alloc();
  *(v9 + 1760) = swift_task_alloc();
  *(v9 + 1768) = type metadata accessor for Notice.Variant(0);
  *(v9 + 1776) = swift_task_alloc();
  v14 = sub_AB3470();
  *(v9 + 1784) = v14;
  *(v9 + 1792) = *(v14 - 8);
  *(v9 + 1800) = swift_task_alloc();
  sub_AB35C0();
  *(v9 + 1808) = swift_task_alloc();
  v15 = sub_AB9250();
  *(v9 + 1816) = v15;
  *(v9 + 1824) = *(v15 - 8);
  *(v9 + 1832) = swift_task_alloc();
  *(v9 + 1840) = swift_task_alloc();
  v16 = sub_AB8420();
  *(v9 + 1848) = v16;
  *(v9 + 1856) = *(v16 - 8);
  *(v9 + 1864) = swift_task_alloc();
  *(v9 + 1872) = swift_task_alloc();
  *(v9 + 1880) = swift_task_alloc();
  v17 = sub_AB8240();
  *(v9 + 1888) = v17;
  *(v9 + 1896) = *(v17 - 8);
  *(v9 + 1904) = swift_task_alloc();
  *(v9 + 1912) = swift_task_alloc();
  v18 = sub_AB8440();
  *(v9 + 1920) = v18;
  *(v9 + 1928) = *(v18 - 8);
  *(v9 + 1936) = swift_task_alloc();
  *(v9 + 1944) = swift_task_alloc();
  v19 = *(v10 + class metadata base offset for MusicLibrary.ItemState);
  *(v9 + 1952) = v19;
  *(v9 + 1960) = *(v19 - 8);
  *(v9 + 1968) = swift_task_alloc();
  *(v9 + 1976) = swift_task_alloc();
  *(v9 + 1984) = swift_task_alloc();
  *(v9 + 1992) = swift_task_alloc();
  *(v9 + 2000) = swift_task_alloc();
  *(v9 + 2008) = sub_AB9940();
  *(v9 + 2016) = sub_AB9930();
  v21 = sub_AB98B0();
  *(v9 + 2024) = v21;
  *(v9 + 2032) = v20;

  return _swift_task_switch(sub_6633B4, v21, v20);
}

uint64_t sub_6633B4()
{
  v551 = v0;
  if (qword_E0CE10 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2000);
  v2 = *(v0 + 1960);
  v3 = *(v0 + 1952);
  v4 = *(v0 + 1440);
  v516 = sub_AB4BC0();
  *(v0 + 2040) = __swift_project_value_buffer(v516, static Logger.libraryActionableState);
  v5 = *(v2 + 16);
  *(v0 + 2048) = v5;
  *(v0 + 2056) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  (v5)(v1, v4, v3);
  v6 = sub_AB4BA0();
  v7 = sub_AB9F50();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 2000);
  v522 = v5;
  if (v8)
  {
    v10 = *(v0 + 1992);
    v11 = *(v0 + 1960);
    v12 = *(v0 + 1952);
    v13 = swift_slowAlloc();
    v512 = v0;
    v14 = swift_slowAlloc();
    v550[0] = v14;
    *v13 = 136446210;
    (v5)(v10, v9, v12);
    v15 = sub_AB9350();
    v17 = v16;
    (*(v11 + 8))(v9, v12);
    v18 = sub_500C84(v15, v17, v550);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_0, v6, v7, "╭ Performing action for item: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    v0 = v512;
  }

  else
  {
    v19 = *(v0 + 1960);
    v20 = *(v0 + 1952);

    (*(v19 + 8))(v9, v20);
  }

  v21 = sub_AB4BA0();
  v22 = sub_AB9F50();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 1432);
    v24 = *(v0 + 1402);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v550[0] = v26;
    *v25 = 136446210;
    v27 = MusicLibrary.ActionableState.description.getter(v23, v24);
    v29 = sub_500C84(v27, v28, v550);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_0, v21, v22, "| Actionable state: %{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  v30 = sub_AB4BA0();
  v31 = sub_AB9F50();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = *(v0 + 1944);
    v33 = *(v0 + 1928);
    v34 = *(v0 + 1920);
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v550[0] = v36;
    *v35 = 136446210;
    sub_AB84B0();
    sub_673544(&qword_E11AC0, &type metadata accessor for MusicLibrary.AddStatus);
    v37 = sub_ABB330();
    v39 = v38;
    (*(v33 + 8))(v32, v34);
    v40 = sub_500C84(v37, v39, v550);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_0, v30, v31, "| Add status: %{public}s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
  }

  v41 = sub_AB4BA0();
  v42 = sub_AB9F50();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = *(v0 + 1912);
    v44 = *(v0 + 1896);
    v45 = *(v0 + 1888);
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v550[0] = v47;
    *v46 = 136446210;
    sub_AB8460();
    sub_673544(&qword_E11AC8, &type metadata accessor for MusicLibrary.DownloadStatus);
    v48 = sub_ABB330();
    v50 = v49;
    (*(v44 + 8))(v43, v45);
    v51 = sub_500C84(v48, v50, v550);

    *(v46 + 4) = v51;
    _os_log_impl(&dword_0, v41, v42, "| Download status: %{public}s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
  }

  v52 = sub_AB4BA0();
  v53 = sub_AB9F50();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v550[0] = swift_slowAlloc();
    *v54 = 136446466;
    v55 = sub_AB8380();
    v57 = sub_500C84(v55, v56, v550);

    *(v54 + 4) = v57;
    *(v54 + 12) = 2082;
    v58 = sub_AB8350();
    v60 = sub_500C84(v58, v59, v550);

    *(v54 + 14) = v60;
    _os_log_impl(&dword_0, v52, v53, "| Library: %{public}s (%{public}s)", v54, 0x16u);
    swift_arrayDestroy();
  }

  v61 = *(v0 + 1402);
  if (v61 >> 14)
  {
    if (v61 >> 14 == 1)
    {
      if ((v61 & 0x100) == 0)
      {
        v62 = sub_AB4BA0();
        v63 = sub_AB9F50();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          *v64 = 0;
          _os_log_impl(&dword_0, v62, v63, "|—● Cancelling download", v64, 2u);
        }

        v65 = swift_task_alloc();
        *(v0 + 2184) = v65;
        *v65 = v0;
        v65[1] = sub_668098;
        v66 = *(v0 + 1952);
        v67 = *(v0 + 1488);
        v68 = *(v0 + 1440);

        return MusicLibrary.cancelDownload<A>(_:)(v68, v66, v67);
      }

      v113 = sub_AB4BA0();
      v114 = sub_AB9F50();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        *v115 = 0;
        _os_log_impl(&dword_0, v113, v114, "|—● Download is paused: Checking for reasons…", v115, 2u);
      }

      v116 = *(v0 + 1904);
      v117 = *(v0 + 1896);
      v118 = *(v0 + 1888);

      sub_AB8460();
      v119 = (*(v117 + 88))(v116, v118);
      v120 = *(v0 + 1904);
      v121 = *(v0 + 1896);
      v122 = *(v0 + 1888);
      if (v119 == enum case for MusicLibrary.DownloadStatus.paused(_:))
      {
        v123 = *(v0 + 1640);
        v124 = *(v0 + 1616);
        v125 = *(v0 + 1608);
        (*(v121 + 96))(*(v0 + 1904), v122);
        (*(v124 + 32))(v123, v120, v125);
        MusicLibrary.DownloadStatus.DownloadPauseReasons.alert.getter((v0 + 1120));
        v126 = *(v0 + 1176);
        v127 = *(v0 + 1640);
        v128 = *(v0 + 1616);
        v129 = *(v0 + 1608);
        if (v126)
        {
          v130 = *(v0 + 1632);
          v131 = *(v0 + 1184);
          v132 = *(v0 + 1136);
          *(v0 + 1048) = *(v0 + 1120);
          *(v0 + 1064) = v132;
          *(v0 + 1080) = *(v0 + 1152);
          *(v0 + 1096) = *(v0 + 1168);
          *(v0 + 1104) = v126;
          *(v0 + 1112) = v131;
          (*(v128 + 16))(v130, v127, v129);
          v133 = sub_AB4BA0();
          v134 = sub_AB9F50();
          v135 = os_log_type_enabled(v133, v134);
          v136 = *(v0 + 1632);
          v137 = *(v0 + 1616);
          v138 = *(v0 + 1608);
          if (v135)
          {
            v529 = swift_slowAlloc();
            v536 = swift_slowAlloc();
            v550[0] = v536;
            *v529 = 136446210;
            sub_673544(&qword_E11AD0, &type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons);
            v524 = v134;
            v139 = sub_ABB330();
            v141 = v140;
            v517 = v133;
            v142 = *(v137 + 8);
            v142(v136, v138);
            v143 = v142;
            v144 = sub_500C84(v139, v141, v550);

            *(v529 + 4) = v144;
            _os_log_impl(&dword_0, v517, v524, "|—| Showing alert for reason: %{public}s", v529, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v536);
          }

          else
          {

            v446 = *(v137 + 8);
            v446(v136, v138);
            v143 = v446;
          }

          v447 = *(v0 + 1640);
          v448 = *(v0 + 1608);
          v449 = sub_5B4DF0(v0 + 1048, 0, 1);
          PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v449, *(v0 + 1080), 1, 0, 0);

          sub_12E1C(v0 + 1120, &qword_E0F9B0);
          v143(v447, v448);
        }

        else
        {
          (*(v128 + 16))(*(v0 + 1624), v127, v129);
          v399 = sub_AB4BA0();
          v400 = sub_AB9F30();
          v401 = os_log_type_enabled(v399, v400);
          v402 = *(v0 + 1640);
          v403 = *(v0 + 1624);
          v404 = *(v0 + 1616);
          v405 = *(v0 + 1608);
          if (v401)
          {
            v545 = *(v0 + 1640);
            v406 = swift_slowAlloc();
            v533 = swift_slowAlloc();
            v550[0] = v533;
            *v406 = 136446210;
            sub_673544(&qword_E11AD0, &type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons);
            v407 = sub_ABB330();
            v409 = v408;
            v410 = *(v404 + 8);
            v410(v403, v405);
            v411 = sub_500C84(v407, v409, v550);

            *(v406 + 4) = v411;
            _os_log_impl(&dword_0, v399, v400, "|—| Unhandled alert for reason: %{public}s", v406, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v533);

            v410(v545, v405);
          }

          else
          {

            v458 = *(v404 + 8);
            v458(v403, v405);
            v458(v402, v405);
          }
        }
      }

      else
      {
        v239 = *(v121 + 8);
        v239(*(v0 + 1904), v122);

        v240 = sub_AB4BA0();
        v241 = sub_AB9F50();

        if (os_log_type_enabled(v240, v241))
        {
          v242 = *(v0 + 1912);
          v243 = *(v0 + 1888);
          v244 = swift_slowAlloc();
          v540 = swift_slowAlloc();
          v550[0] = v540;
          *v244 = 136446210;
          sub_AB8460();
          sub_673544(&qword_E11AC8, &type metadata accessor for MusicLibrary.DownloadStatus);
          v245 = sub_ABB330();
          v247 = v246;
          v239(v242, v243);
          v248 = sub_500C84(v245, v247, v550);

          *(v244 + 4) = v248;
          _os_log_impl(&dword_0, v240, v241, "|—| No reasons found, download status does not match UI state %{public}s", v244, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v540);
        }
      }

      goto LABEL_145;
    }

    v96 = *(v0 + 1432);
    if (v96 | v61 ^ 0x8000)
    {
      if (*(v0 + 1402) == 0x8000 && v96 == 1)
      {
        v98 = sub_AB4BA0();
        v99 = sub_AB9F50();
        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          *v100 = 0;
          _os_log_impl(&dword_0, v98, v99, "|—● Triggering download", v100, 2u);
        }

        v101 = *(v0 + 1992);
        v102 = *(v0 + 1952);
        v103 = *(v0 + 1648);
        v104 = *(v0 + 1504);
        v105 = *(v0 + 1496);
        v534 = *(v0 + 1488);
        v106 = *(v0 + 1480);
        v107 = *(v0 + 1456);
        v108 = *(v0 + 1440);

        (v522)(v101, v108, v102);
        sub_15F28(v107, v0 + 688);
        sub_672900(v106, v103);
        v109 = type metadata accessor for Actions.MetricsReportingContext();
        (*(*(v109 - 8) + 56))(v103, 0, 1, v109);
        v110 = *(v104 + class metadata base offset for MusicLibrary.ItemState + 8);

        Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v101, v105, v0 + 688, v103, v102, v534, v110, &v547);
        *(v0 + 2144) = *(&v547 + 1);
        *(v0 + 2152) = *(&v548 + 1);
        *(v0 + 2160) = *(&v549 + 1);
        v111 = v548;
        *(v0 + 384) = v547;
        *(v0 + 400) = v111;
        *(v0 + 416) = v549;
        *(v0 + 432) = 1;
        *(v0 + 440) = sub_53842C;
        *(v0 + 448) = 0;
        *(v0 + 456) = 0x4014000000000000;
        *(v0 + 464) = &unk_B18E38;
        v535 = sub_640458;
        *(v0 + 472) = 0;
        *(v0 + 480) = &unk_B18E40;
        *(v0 + 488) = 0;

        v112 = swift_task_alloc();
        *(v0 + 2168) = v112;
        *v112 = v0;
        v112[1] = sub_667BFC;
        goto LABEL_36;
      }

      v215 = sub_AB4BA0();
      v216 = sub_AB9F50();
      if (os_log_type_enabled(v215, v216))
      {
        v218 = swift_slowAlloc();
        *v218 = 0;
        _os_log_impl(&dword_0, v215, v216, "|—● Is Downloaded: Prompting for delete/remove alert", v218, 2u);
      }

      v219 = *(v0 + 1984);
      v220 = *(v0 + 1952);
      v221 = *(v0 + 1592);
      v222 = *(v0 + 1440);

      (v522)(v219, v222, v220);
      v223 = swift_dynamicCast();
      v224 = *(v221 + 56);
      if ((v223 & 1) == 0)
      {
        v358 = *(v0 + 1576);
        v224(v358, 1, 1, *(v0 + 1584));
        sub_12E1C(v358, &qword_E10B00);
        v238 = v522;
LABEL_134:
        v435 = *(v0 + 1992);
        v436 = *(v0 + 1952);
        v437 = *(v0 + 1648);
        v438 = *(v0 + 1504);
        v439 = *(v0 + 1488);
        v440 = *(v0 + 1480);
        v441 = *(v0 + 1456);
        (v238)(v435, *(v0 + 1440), v436);
        sub_15F28(v441, v0 + 496);
        sub_672900(v440, v437);
        v442 = type metadata accessor for Actions.MetricsReportingContext();
        (*(*(v442 - 8) + 56))(v437, 0, 1, v442);
        sub_AB8510();
        v443 = sub_AB8500();
        Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v435, v443, v0 + 496, v437, v436, v439, *(v438 + class metadata base offset for MusicLibrary.ItemState + 8), (v0 + 16));
        v444 = swift_allocObject();
        *(v444 + 16) = &unk_B18AE0;
        *(v444 + 24) = 0;
        *(v0 + 208) = 51;
        *(v0 + 224) = 0;
        *(v0 + 232) = 0x403E000000000000;
        *(v0 + 216) = sub_54E2E4;
        *(v0 + 240) = &unk_B18AF8;
        *(v0 + 248) = v444;
        *(v0 + 256) = &unk_B18AE8;
        *(v0 + 264) = 0;
        v445 = swift_task_alloc();
        *(v0 + 2216) = v445;
        *v445 = v0;
        v445[1] = sub_668994;

        return sub_64FE74(0);
      }

      v225 = *(v0 + 1600);
      v226 = *(v0 + 1592);
      v227 = *(v0 + 1584);
      v228 = *(v0 + 1576);
      v520 = *(v0 + 1568);
      v229 = *(v0 + 1560);
      v230 = *(v0 + 1544);
      v539 = *(v0 + 1536);
      v231 = *(v0 + 1520);
      v232 = *(v0 + 1512);
      v224(v228, 0, 1, v227);
      (*(v226 + 32))(v225, v228, v227);
      v233 = v230;
      sub_AB8CD0();
      (*(v231 + 104))(v229, enum case for Playlist.Variant.favoriteSongs(_:), v232);
      (*(v231 + 56))(v229, 0, 1, v232);
      v234 = *(v539 + 12);
      sub_15F84(v520, v230, &qword_E0F158);
      sub_15F84(v229, v230 + v234, &qword_E0F158);
      v235 = *(v231 + 48);
      if (v235(v233, 1, v232) == 1)
      {
        v236 = *(v0 + 1568);
        v237 = *(v0 + 1512);
        sub_12E1C(*(v0 + 1560), &qword_E0F158);
        sub_12E1C(v236, &qword_E0F158);
        if (v235(v233 + v234, 1, v237) == 1)
        {
          sub_12E1C(*(v0 + 1544), &qword_E0F158);
          v238 = v522;
LABEL_152:
          v464 = *(v0 + 1992);
          v465 = *(v0 + 1952);
          v466 = *(v0 + 1648);
          v467 = *(v0 + 1504);
          v468 = *(v0 + 1488);
          v469 = *(v0 + 1480);
          v470 = *(v0 + 1456);
          (v238)(v464, *(v0 + 1440), v465);
          sub_15F28(v470, v0 + 592);
          sub_672900(v469, v466);
          v471 = type metadata accessor for Actions.MetricsReportingContext();
          (*(*(v471 - 8) + 56))(v466, 0, 1, v471);
          sub_AB8510();
          v472 = sub_AB8500();
          Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)(v464, v472, 1, v0 + 592, v466, v465, v468, *(v467 + class metadata base offset for MusicLibrary.ItemState + 8), (v0 + 272));
          *(v0 + 320) = 48;
          *(v0 + 328) = sub_53842C;
          *(v0 + 336) = 0;
          *(v0 + 344) = 0x4014000000000000;
          *(v0 + 352) = &unk_B191A0;
          v535 = sub_641938;
          *(v0 + 360) = 0;
          *(v0 + 368) = &unk_B191A8;
          *(v0 + 376) = 0;
          v473 = swift_task_alloc();
          *(v0 + 2200) = v473;
          *v473 = v0;
          v473[1] = sub_6684F8;
LABEL_36:

          return v535();
        }
      }

      else
      {
        v428 = *(v0 + 1512);
        sub_15F84(*(v0 + 1544), *(v0 + 1552), &qword_E0F158);
        v429 = v235(v233 + v234, 1, v428);
        v430 = *(v0 + 1568);
        v431 = *(v0 + 1560);
        v432 = *(v0 + 1552);
        if (v429 != 1)
        {
          v546 = *(v0 + 1544);
          v459 = *(v0 + 1528);
          v460 = *(v0 + 1520);
          v461 = *(v0 + 1512);
          (*(v460 + 32))(v459, v233 + v234, v461);
          sub_673544(&qword_E103A0, &type metadata accessor for Playlist.Variant);
          v462 = sub_AB91C0();
          v463 = *(v460 + 8);
          v463(v459, v461);
          sub_12E1C(v431, &qword_E0F158);
          sub_12E1C(v430, &qword_E0F158);
          v463(v432, v461);
          sub_12E1C(v546, &qword_E0F158);
          v238 = v522;
          if (v462)
          {
            goto LABEL_152;
          }

          goto LABEL_133;
        }

        v433 = *(v0 + 1520);
        v434 = *(v0 + 1512);
        sub_12E1C(*(v0 + 1560), &qword_E0F158);
        sub_12E1C(v430, &qword_E0F158);
        (*(v433 + 8))(v432, v434);
      }

      sub_12E1C(*(v0 + 1544), &qword_E0F288);
      v238 = v522;
LABEL_133:
      (*(*(v0 + 1592) + 8))(*(v0 + 1600), *(v0 + 1584));
      goto LABEL_134;
    }

    v178 = sub_AB4BA0();
    v179 = sub_AB9F50();
    if (os_log_type_enabled(v178, v179))
    {
      v180 = swift_slowAlloc();
      *v180 = 0;
      _os_log_impl(&dword_0, v178, v179, "|—● Nothing to Perform: Actionable State is unknown", v180, 2u);
    }

    sub_6728AC();
    v181 = swift_allocError();
    swift_willThrow();
    goto LABEL_54;
  }

  v69 = *(v0 + 1936);
  v70 = *(v0 + 1928);
  v71 = *(v0 + 1920);
  sub_AB84B0();
  if ((*(v70 + 88))(v69, v71) == enum case for MusicLibrary.AddStatus.unaddable(_:))
  {
    v72 = *(v0 + 1936);
    v73 = *(v0 + 1880);
    v74 = *(v0 + 1856);
    v75 = *(v0 + 1848);
    (*(*(v0 + 1928) + 96))(v72, *(v0 + 1920));
    (*(v74 + 32))(v73, v72, v75);
    v76 = sub_AB4BA0();
    v77 = sub_AB9F50();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_0, v76, v77, "|—● Unaddable", v78, 2u);
    }

    v79 = *(v0 + 1880);
    v80 = *(v0 + 1872);
    v81 = *(v0 + 1856);
    v82 = *(v0 + 1848);

    v83 = *(v81 + 16);
    v83(v80, v79, v82);
    v84 = sub_AB4BA0();
    v85 = sub_AB9F50();
    v86 = os_log_type_enabled(v84, v85);
    v87 = *(v0 + 1872);
    v88 = *(v0 + 1856);
    v89 = *(v0 + 1848);
    if (v86)
    {
      v528 = v83;
      v90 = swift_slowAlloc();
      v523 = swift_slowAlloc();
      v550[0] = v523;
      *v90 = 136446210;
      sub_673544(&qword_E0EC88, &type metadata accessor for MusicLibrary.AddStatus.UnaddableReason);
      v513 = v85;
      v91 = sub_ABB330();
      v93 = v92;
      v94 = *(v88 + 8);
      (v94)(v87, v89);
      v95 = sub_500C84(v91, v93, v550);

      *(v90 + 4) = v95;
      _os_log_impl(&dword_0, v84, v513, "|—| Reason: %{public}s", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v523);

      v83 = v528;
    }

    else
    {

      v94 = *(v88 + 8);
      (v94)(v87, v89);
    }

    v541 = v94;
    *(v0 + 2064) = v94;
    v249 = *(v0 + 1864);
    v250 = *(v0 + 1856);
    v251 = *(v0 + 1848);
    v83(v249, *(v0 + 1880), v251);
    v252 = (*(v250 + 88))(v249, v251);
    if (v252 == enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:))
    {

      v253 = sub_AB4BA0();
      v254 = sub_AB9F50();
      if (os_log_type_enabled(v253, v254))
      {
        v255 = swift_slowAlloc();
        *v255 = 0;
        _os_log_impl(&dword_0, v253, v254, "|—| Presenting Explicit Restriction alert", v255, 2u);
      }

      v256 = *(v0 + 1456);

      sub_5FEC68(0, v0 + 1192);
      v257 = sub_5B4DF0(v0 + 1192, 0, 1);
      v258 = v257;
      v259 = *(v0 + 1224);
      v260 = *(v256 + 80);
      if (v260)
      {
        v261 = qword_E0CF08;

        if (v261 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v516, qword_E14920);
        v262 = sub_AB4BA0();
        v263 = sub_AB9F50();
        if (os_log_type_enabled(v262, v263))
        {
          v264 = swift_slowAlloc();
          *v264 = 0;
          _os_log_impl(&dword_0, v262, v263, "Deferring presentation…", v264, 2u);
        }

        v530 = *(v0 + 1880);
        v265 = *(v0 + 1848);
        v266 = *(v0 + 1456);

        v267 = objc_allocWithZone(MSVBlockGuard);
        *(v0 + 1344) = sub_71E354;
        *(v0 + 1352) = 0;
        *(v0 + 1312) = _NSConcreteStackBlock;
        *(v0 + 1320) = 1107296256;
        *(v0 + 1328) = sub_71F2F4;
        *(v0 + 1336) = &block_descriptor_16_4;
        v268 = _Block_copy((v0 + 1312));
        v269 = [v267 initWithTimeout:v268 interruptionHandler:10.0];
        _Block_release(v268);

        sub_15F28(v266, v0 + 880);
        v270 = swift_allocObject();
        *(v270 + 16) = v269;
        sub_17704(v0 + 880, v270 + 24);
        *(v270 + 120) = v258;
        *(v270 + 128) = v259;
        *(v270 + 129) = 1;
        *(v270 + 136) = 0;
        *(v270 + 144) = 0;
        v271 = v269;
        v272 = v258;
        v260(v266, v272, sub_5488D0, v270);
        sub_17654(v260);

        sub_111904(v0 + 1192);
        v273 = v530;
        v274 = v265;
        goto LABEL_144;
      }

      v412 = *(v0 + 1880);
      v413 = *(v0 + 1848);
      sub_71C834(v257, *(v0 + 1224), &dword_0 + 1, 0, 0);

      sub_111904(v0 + 1192);
      v273 = v412;
LABEL_143:
      v274 = v413;
LABEL_144:
      (v541)(v273, v274);
LABEL_145:
      v454 = sub_AB4BA0();
      v455 = sub_AB9F50();
      if (os_log_type_enabled(v454, v455))
      {
        v456 = swift_slowAlloc();
        *v456 = 0;
        _os_log_impl(&dword_0, v454, v455, "╰ ✅ Succeeded", v456, 2u);
      }

      v457 = *(v0 + 8);

      return v457();
    }

    if (v252 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:))
    {
      if (v252 == enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryInitialImport(_:))
      {

        v359 = sub_AB4BA0();
        v360 = sub_AB9F50();
        if (os_log_type_enabled(v359, v360))
        {
          v361 = swift_slowAlloc();
          *v361 = 0;
          _os_log_impl(&dword_0, v359, v360, "|—| Presenting library import in progress alert", v361, 2u);
        }

        v362 = *(v0 + 1840);
        v363 = *(v0 + 1832);
        v364 = *(v0 + 1824);
        v365 = *(v0 + 1816);

        sub_AB91E0();
        v507 = *(v364 + 16);
        v507(v363, v362, v365);
        if (qword_E0CB80 != -1)
        {
          swift_once();
        }

        v366 = *(v0 + 1840);
        v367 = *(v0 + 1832);
        v368 = *(v0 + 1824);
        v369 = *(v0 + 1816);
        v503 = *(v0 + 1800);
        v511 = *(v0 + 1792);
        v515 = *(v0 + 1784);
        v543 = *(v0 + 1456);
        v370 = qword_E71B20;
        sub_AB3550();
        v371 = v370;
        v372 = sub_AB9320();
        v527 = v373;
        v531 = v372;
        v374 = *(v368 + 8);
        v374(v366, v369);
        sub_AB91E0();
        v507(v367, v366, v369);
        sub_AB3550();
        v375 = sub_AB9320();
        v494 = v376;
        v499 = v375;
        v374(v366, v369);
        sub_AB91E0();
        v507(v367, v366, v369);
        sub_AB3550();
        v377 = sub_AB9320();
        v379 = v378;
        v374(v366, v369);
        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v380 = sub_AB3440();
        v382 = v381;
        (*(v511 + 8))(v503, v515);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040);
        v383 = swift_allocObject();
        *(v383 + 16) = xmmword_AF4EC0;
        *(v383 + 32) = v380;
        *(v383 + 40) = v382;
        *(v383 + 48) = v377;
        *(v383 + 56) = v379;
        *(v383 + 64) = 2;
        *(v383 + 72) = 0;
        *(v383 + 80) = 0;
        LOBYTE(v550[0]) = 1;
        *(v0 + 976) = v531;
        *(v0 + 984) = v527;
        *(v0 + 992) = v499;
        *(v0 + 1000) = v494;
        *(v0 + 1008) = 0;
        *(v0 + 1016) = 0;
        *(v0 + 1024) = 1;
        *(v0 + 1032) = v383;
        *(v0 + 1040) = 0;

        v384 = sub_5B4DF0(v0 + 976, 0, 1);
        v385 = v384;
        v386 = *(v543 + 10);
        if (v386)
        {
          v387 = qword_E0CF08;

          if (v387 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v516, qword_E14920);
          v388 = sub_AB4BA0();
          v389 = sub_AB9F50();
          if (os_log_type_enabled(v388, v389))
          {
            v390 = swift_slowAlloc();
            *v390 = 0;
            _os_log_impl(&dword_0, v388, v389, "Deferring presentation…", v390, 2u);
          }

          v391 = *(v0 + 1856);
          v532 = *(v0 + 1848);
          v544 = *(v0 + 1880);
          v392 = *(v0 + 1456);

          v393 = objc_allocWithZone(MSVBlockGuard);
          *(v0 + 1296) = sub_71E354;
          *(v0 + 1304) = 0;
          *(v0 + 1264) = _NSConcreteStackBlock;
          *(v0 + 1272) = 1107296256;
          *(v0 + 1280) = sub_71F2F4;
          *(v0 + 1288) = &block_descriptor_187;
          v394 = _Block_copy((v0 + 1264));
          v395 = [v393 initWithTimeout:v394 interruptionHandler:10.0];
          _Block_release(v394);

          sub_15F28(v392, v0 + 784);
          v396 = swift_allocObject();
          *(v396 + 16) = v395;
          sub_17704(v0 + 784, v396 + 24);
          *(v396 + 120) = v385;
          *(v396 + 128) = 257;
          *(v396 + 136) = 0;
          *(v396 + 144) = 0;
          v397 = v395;
          v398 = v385;
          v386(v392, v398, sub_5487D4, v396);
          sub_17654(v386);

          sub_111904(v0 + 976);

          (*(v391 + 8))(v544, v532);
        }

        else
        {
          v480 = *(v0 + 1880);
          v481 = *(v0 + 1856);
          v482 = *(v0 + 1848);
          sub_71C834(v384, &dword_0 + 1, &dword_0 + 1, 0, 0);

          sub_111904(v0 + 976);

          (*(v481 + 8))(v480, v482);
        }

        goto LABEL_145;
      }

      if (v252 != enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
      {
        v474 = sub_AB4BA0();
        v475 = sub_AB9F10();
        if (os_log_type_enabled(v474, v475))
        {
          v476 = swift_slowAlloc();
          *v476 = 0;
          _os_log_impl(&dword_0, v474, v475, "|—| Unaddable reason is not supported by the UI", v476, 2u);
        }

        v477 = *(v0 + 1880);
        v478 = *(v0 + 1864);
        v479 = *(v0 + 1848);

        sub_6728AC();
        v181 = swift_allocError();
        swift_willThrow();
        (v541)(v477, v479);
        (v541)(v478, v479);
LABEL_54:
        *(v0 + 2232) = v181;
        *(v0 + 1408) = v181;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
        v182 = swift_dynamicCast();
        v183 = *(v0 + 2048);
        v184 = *(v0 + 1952);
        v185 = *(v0 + 1440);
        if (v182)
        {
          v186 = *(v0 + 1976);

          v183(v186, v185, v184);

          v187 = sub_AB4BA0();
          v188 = sub_AB9F30();

          if (os_log_type_enabled(v187, v188))
          {
            v509 = *(v0 + 2048);
            v501 = *(v0 + 1992);
            v505 = *(v0 + 1976);
            v519 = *(v0 + 1960);
            v189 = *(v0 + 1944);
            v190 = *(v0 + 1928);
            v191 = *(v0 + 1920);
            v192 = *(v0 + 1912);
            v193 = *(v0 + 1896);
            v492 = *(v0 + 1888);
            v497 = *(v0 + 1952);
            v538 = v188;
            v194 = *(v0 + 1432);
            v195 = *(v0 + 1402);
            v525 = v187;
            v196 = swift_slowAlloc();
            v550[0] = swift_slowAlloc();
            *v196 = 136447234;
            v197 = MusicLibrary.ActionableState.description.getter(v194, v195);
            v199 = sub_500C84(v197, v198, v550);

            *(v196 + 4) = v199;
            *(v196 + 12) = 2082;
            sub_AB84B0();
            sub_673544(&qword_E11AC0, &type metadata accessor for MusicLibrary.AddStatus);
            v200 = sub_ABB330();
            v202 = v201;
            (*(v190 + 8))(v189, v191);
            v203 = sub_500C84(v200, v202, v550);

            *(v196 + 14) = v203;
            *(v196 + 22) = 2082;
            sub_AB8460();
            sub_673544(&qword_E11AC8, &type metadata accessor for MusicLibrary.DownloadStatus);
            v204 = sub_ABB330();
            v206 = v205;
            (*(v193 + 8))(v192, v492);
            v207 = sub_500C84(v204, v206, v550);

            *(v196 + 24) = v207;
            *(v196 + 32) = 2082;
            v509(v501, v505, v497);
            v208 = sub_AB9350();
            v210 = v209;
            (*(v519 + 8))(v505, v497);
            v211 = sub_500C84(v208, v210, v550);

            *(v196 + 34) = v211;
            *(v196 + 42) = 2082;
            v212 = sub_AB9350();
            v214 = sub_500C84(v212, v213, v550);

            *(v196 + 44) = v214;
            _os_log_impl(&dword_0, v525, v538, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v196, 0x34u);
            swift_arrayDestroy();
          }

          else
          {
            v414 = *(v0 + 1976);
            v415 = *(v0 + 1960);
            v416 = *(v0 + 1952);

            (*(v415 + 8))(v414, v416);
          }

          *(v0 + 2240) = sub_6728AC();
          v417 = swift_allocError();
          *(v0 + 2248) = v417;
          v418 = swift_task_alloc();
          *(v0 + 2256) = v418;
          *v418 = v0;
          v418[1] = sub_668AC8;
          v419 = *(v0 + 1456);
          v420 = *(v0 + 1448);
          v421 = *(v0 + 1432);
          v422 = *(v0 + 1402);
          v423 = v417;
        }

        else
        {
          v331 = *(v0 + 1968);

          v183(v331, v185, v184);

          swift_errorRetain();
          v332 = sub_AB4BA0();
          v333 = sub_AB9F30();

          if (os_log_type_enabled(v332, v333))
          {
            v510 = *(v0 + 2048);
            v502 = *(v0 + 1992);
            v506 = *(v0 + 1968);
            v521 = *(v0 + 1960);
            v334 = *(v0 + 1944);
            v335 = *(v0 + 1928);
            v336 = *(v0 + 1920);
            v493 = *(v0 + 1896);
            v498 = *(v0 + 1952);
            v488 = *(v0 + 1912);
            v490 = *(v0 + 1888);
            v542 = v333;
            v337 = *(v0 + 1432);
            v338 = *(v0 + 1402);
            v526 = v332;
            v339 = swift_slowAlloc();
            v550[0] = swift_slowAlloc();
            *v339 = 136447234;
            v340 = MusicLibrary.ActionableState.description.getter(v337, v338);
            v342 = sub_500C84(v340, v341, v550);

            *(v339 + 4) = v342;
            *(v339 + 12) = 2082;
            sub_AB84B0();
            sub_673544(&qword_E11AC0, &type metadata accessor for MusicLibrary.AddStatus);
            v343 = sub_ABB330();
            v345 = v344;
            (*(v335 + 8))(v334, v336);
            v346 = sub_500C84(v343, v345, v550);

            *(v339 + 14) = v346;
            *(v339 + 22) = 2082;
            sub_AB8460();
            sub_673544(&qword_E11AC8, &type metadata accessor for MusicLibrary.DownloadStatus);
            v347 = sub_ABB330();
            v349 = v348;
            (*(v493 + 8))(v488, v490);
            v350 = sub_500C84(v347, v349, v550);

            *(v339 + 24) = v350;
            *(v339 + 32) = 2082;
            v510(v502, v506, v498);
            v351 = sub_AB9350();
            v353 = v352;
            (*(v521 + 8))(v506, v498);
            v354 = sub_500C84(v351, v353, v550);

            *(v339 + 34) = v354;
            *(v339 + 42) = 2082;
            *(v0 + 1416) = v181;
            swift_errorRetain();
            v355 = sub_AB9350();
            v357 = sub_500C84(v355, v356, v550);

            *(v339 + 44) = v357;
            _os_log_impl(&dword_0, v526, v542, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v339, 0x34u);
            swift_arrayDestroy();
          }

          else
          {
            v424 = *(v0 + 1968);
            v425 = *(v0 + 1960);
            v426 = *(v0 + 1952);

            (*(v425 + 8))(v424, v426);
          }

          v427 = swift_task_alloc();
          *(v0 + 2264) = v427;
          *v427 = v0;
          v427[1] = sub_668F58;
          v419 = *(v0 + 1456);
          v420 = *(v0 + 1448);
          v421 = *(v0 + 1432);
          v422 = *(v0 + 1402);
          v423 = v181;
        }

        return sub_66BF80(v423, v421, v422, v420, v419);
      }

      v450 = sub_AB4BA0();
      v451 = sub_AB9F50();
      if (os_log_type_enabled(v450, v451))
      {
        v452 = swift_slowAlloc();
        *v452 = 0;
        _os_log_impl(&dword_0, v450, v451, "|—| Presenting upsell", v452, 2u);
      }

      v453 = *(v0 + 1880);
      v413 = *(v0 + 1848);

      *(v0 + 1392) = 0;
      *(v0 + 1360) = 0u;
      *(v0 + 1376) = 0u;
      *(v0 + 1400) = -1;
      _s9MusicCore27SubscriptionUpsellPresenterV7present3foryAC9PlacementO_tFZ_0(v0 + 1360);
      sub_53EE90(v0 + 1360);
      v273 = v453;
      goto LABEL_143;
    }

    v282 = sub_AB4BA0();
    v283 = sub_AB9F50();
    if (os_log_type_enabled(v282, v283))
    {
      v284 = swift_slowAlloc();
      *v284 = 0;
      _os_log_impl(&dword_0, v282, v283, "|—| Presenting Cloud Library Requirement alert", v284, 2u);
    }

    *(v0 + 2072) = sub_AB9930();
    v286 = sub_AB98B0();
    *(v0 + 2080) = v286;
    *(v0 + 2088) = v285;

    return _swift_task_switch(sub_667118, v286, v285);
  }

  else
  {
    v145 = sub_AB4BA0();
    v146 = sub_AB9F50();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      *v147 = 0;
      _os_log_impl(&dword_0, v145, v146, "|—● Adding to library", v147, 2u);
    }

    v148 = *(v0 + 1464);

    if (v148)
    {
      v149 = *(v0 + 1472);
      ObjectType = swift_getObjectType();
      (*(v149 + 8))(0, ObjectType, v149);
    }

    v151 = *(v0 + 1952);
    v152 = *(v0 + 1776);
    v153 = *(v0 + 1760);
    v154 = *(v0 + 1728);
    v155 = *(v0 + 1720);
    v491 = *(v0 + 1752);
    v495 = *(v0 + 1712);
    v500 = *(v0 + 1704);
    v156 = *(v0 + 1480);
    swift_storeEnumTagMultiPayload();
    sub_662620(v152, 0);
    sub_673A10(v152, type metadata accessor for Notice.Variant);
    v157 = MusicItem.metricsTargetIdentifier.getter(v151);
    v486 = v158;
    v487 = v157;
    v159 = sub_AB31C0();
    v484 = *(*(v159 - 8) + 56);
    v485 = v159;
    v484(v153, 1, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECA8);
    v160 = swift_allocObject();
    *(v160 + 16) = xmmword_AF85F0;
    *(v160 + 32) = MusicItem.metricsContentType.getter(v151);
    *(v160 + 40) = v161;
    *(v160 + 48) = 0;
    *(v160 + 56) = 0;
    *(v160 + 64) = 0;
    *(v160 + 72) = 1;
    v508 = sub_51717C(v160);
    v518 = v162;
    v537 = v163;
    v514 = v164;
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_15F84(v153, v491, &qword_E0DC30);
    v165 = type metadata accessor for Actions.MetricsReportingContext();
    v166 = *(v156 + v165[7]);
    v168 = *v156;
    v167 = v156[1];
    sub_15F84(v156 + v165[5], v495, &qword_E0E348);
    v504 = v165;
    v489 = *(v156 + v165[8]);
    *(v154 + v155[19]) = 0;
    v169 = (v154 + v155[20]);
    *v169 = 0;
    v169[1] = 0;
    *v154 = v487;
    *(v154 + 8) = v486;
    *(v154 + 16) = 773;
    sub_36B0C(v491, v154 + v155[7], &qword_E0DC30);
    *(v154 + v155[8]) = v166;
    v170 = (v154 + v155[9]);
    *v170 = v168;
    v170[1] = v167;
    v171 = v154 + v155[10];
    *v171 = v508;
    *(v171 + 8) = v518;
    *(v171 + 16) = v537;
    *(v171 + 24) = v514;
    sub_15F84(v495, v500, &qword_E0E348);
    v172 = type metadata accessor for MetricsEvent.Page(0);
    v496 = *(*(v172 - 1) + 48);
    v173 = v496(v500, 1, v172);
    v174 = *(v0 + 1704);
    if (v173 == 1)
    {

      sub_512C64(v168, v167);

      v175 = v508;
      sub_513BF8(v508, v518, v537, v514, SBYTE1(v514));
      sub_12E1C(v174, &qword_E0E348);
      v176 = 0;
      v177 = 0;
    }

    else
    {
      v176 = *v174;
      v177 = v174[1];

      sub_512C64(v168, v167);

      v175 = v508;
      sub_513BF8(v508, v518, v537, v514, SBYTE1(v514));

      sub_673A10(v174, type metadata accessor for MetricsEvent.Page);
    }

    v275 = *(v0 + 1712);
    v276 = *(v0 + 1696);
    v277 = (*(v0 + 1728) + *(*(v0 + 1720) + 48));
    *v277 = v176;
    v277[1] = v177;
    sub_15F84(v275, v276, &qword_E0E348);
    v278 = v496(v276, 1, v172);
    v279 = *(v0 + 1696);
    if (v278 == 1)
    {
      sub_12E1C(*(v0 + 1696), &qword_E0E348);
      v280 = 0;
      v281 = 0;
    }

    else
    {
      v280 = *(v279 + 16);
      v281 = *(v279 + 24);

      sub_673A10(v279, type metadata accessor for MetricsEvent.Page);
    }

    v287 = *(v0 + 1712);
    v288 = *(v0 + 1688);
    v289 = (*(v0 + 1728) + *(*(v0 + 1720) + 52));
    *v289 = v280;
    v289[1] = v281;
    sub_15F84(v287, v288, &qword_E0E348);
    v290 = v496(v288, 1, v172);
    v291 = *(v0 + 1744);
    v292 = *(v0 + 1688);
    if (v290 == 1)
    {
      sub_12E1C(*(v0 + 1688), &qword_E0E348);
      (v484)(v291, 1, 1, v485);
    }

    else
    {
      sub_15F84(v292 + v172[6], *(v0 + 1744), &qword_E0DC30);
      sub_673A10(v292, type metadata accessor for MetricsEvent.Page);
    }

    v293 = *(v0 + 1712);
    v294 = *(v0 + 1680);
    sub_36B0C(*(v0 + 1744), *(v0 + 1728) + *(*(v0 + 1720) + 56), &qword_E0DC30);
    sub_15F84(v293, v294, &qword_E0E348);
    v295 = v496(v294, 1, v172);
    v296 = *(v0 + 1680);
    if (v295 == 1)
    {
      sub_12E1C(*(v0 + 1680), &qword_E0E348);
      v297 = 0;
    }

    else
    {
      v297 = *(v296 + v172[7]);

      sub_673A10(v296, type metadata accessor for MetricsEvent.Page);
    }

    v298 = *(v0 + 1712);
    v299 = *(v0 + 1672);
    *(*(v0 + 1728) + *(*(v0 + 1720) + 60)) = v297;
    sub_15F84(v298, v299, &qword_E0E348);
    v300 = v496(v299, 1, v172);
    v301 = *(v0 + 1672);
    if (v300 == 1)
    {
      sub_12E1C(v301, &qword_E0E348);
      v302 = 1;
    }

    else
    {
      v302 = *(v301 + v172[9]);
      sub_673A10(v301, type metadata accessor for MetricsEvent.Page);
    }

    v303 = *(v0 + 1712);
    v304 = *(v0 + 1664);
    *(*(v0 + 1728) + *(*(v0 + 1720) + 64)) = v302;
    sub_15F84(v303, v304, &qword_E0E348);
    v305 = v496(v304, 1, v172);
    v306 = *(v0 + 1664);
    if (v305 == 1)
    {
      sub_12E1C(*(v0 + 1664), &qword_E0E348);
      v307 = 0;
      v308 = 0;
    }

    else
    {
      v309 = (v306 + v172[8]);
      v307 = *v309;
      v308 = v309[1];

      sub_673A10(v306, type metadata accessor for MetricsEvent.Page);
    }

    v310 = *(v0 + 1712);
    v311 = *(v0 + 1656);
    v312 = (*(v0 + 1728) + *(*(v0 + 1720) + 72));
    *v312 = v307;
    v312[1] = v308;
    sub_36B0C(v310, v311, &qword_E0E348);
    v313 = v496(v311, 1, v172);
    v314 = *(v0 + 1656);
    if (v313 == 1)
    {
      sub_12E1C(v314, &qword_E0E348);
      v315 = 2;
    }

    else
    {
      v315 = *(v314 + v172[11]);
      sub_673A10(v314, type metadata accessor for MetricsEvent.Page);
    }

    v316 = *(v0 + 1736);
    v317 = *(v0 + 1728);
    v318 = *(v0 + 1720);
    *(v317 + *(v318 + 68)) = v315;
    *(v317 + *(v318 + 44)) = v489;
    sub_513C68(v317, v316);
    if (qword_E0CC50 != -1)
    {
      swift_once();
    }

    v319 = *(v0 + 1952);
    v320 = *(v0 + 1760);
    v321 = *(v0 + 1736);
    v322 = *(v0 + 1480);
    v323 = *(v0 + 1440);
    MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v321, *(v322 + v504[6]), *(v322 + v504[6] + 8), *(v322 + v504[9]), *(v322 + v504[9] + 8), *(v322 + v504[9] + 16));
    sub_53EF4C(v175, v518, v537, v514, SBYTE1(v514));
    sub_673A10(v321, type metadata accessor for MetricsEvent.Click);
    sub_12E1C(v320, &qword_E0DC30);
    sub_6717B0(v319, v319);
    swift_allocObject();
    v324 = sub_AB9780();
    *(v0 + 2120) = v324;
    (v522)(v325, v323, v319);
    v326 = sub_AB9870();
    *(v0 + 1424) = v324;
    v327 = swift_task_alloc();
    *(v0 + 2128) = v327;
    WitnessTable = swift_getWitnessTable();
    *v327 = v0;
    v327[1] = sub_667740;
    v329 = *(v0 + 1952);
    v330 = *(v0 + 1488);

    return MusicLibrary.add<A, B>(_:)(v0 + 1424, v326, v329, WitnessTable, v330);
  }
}

uint64_t sub_667118()
{
  v1 = v0[182];
  v2 = sub_AB9930();
  v0[262] = v2;
  v3 = swift_task_alloc();
  v0[263] = v3;
  *(v3 + 16) = 1;
  *(v3 + 24) = v1;
  *(v3 + 32) = 0;
  v4 = swift_task_alloc();
  v0[264] = v4;
  *v4 = v0;
  v4[1] = sub_66722C;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 1401, v2, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x8000000000B6A730, sub_53F124, v3, &type metadata for Bool);
}

uint64_t sub_66722C()
{
  v1 = *v0;

  v2 = *(v1 + 2088);
  v3 = *(v1 + 2080);

  return _swift_task_switch(sub_66738C, v3, v2);
}

uint64_t sub_66738C()
{

  v1 = *(v0 + 2032);
  v2 = *(v0 + 2024);

  return _swift_task_switch(sub_6673F4, v2, v1);
}

uint64_t sub_6673F4()
{
  v1 = v0[258];
  v2 = v0[235];
  v3 = v0[231];

  v1(v2, v3);
  v4 = sub_AB4BA0();
  v5 = sub_AB9F50();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "╰ ✅ Succeeded", v6, 2u);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_667740()
{
  v2 = *v1;
  *(*v1 + 2136) = v0;

  if (v0)
  {
    v3 = *(v2 + 2032);
    v4 = *(v2 + 2024);
    v5 = sub_6693A4;
  }

  else
  {

    v3 = *(v2 + 2032);
    v4 = *(v2 + 2024);
    v5 = sub_667884;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_667884()
{
  v1 = v0[183];

  if (v1)
  {
    v2 = v0[184];
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(0, ObjectType, v2);
  }

  (*(v0[241] + 8))(v0[242], v0[240]);
  v4 = sub_AB4BA0();
  v5 = sub_AB9F50();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "╰ ✅ Succeeded", v6, 2u);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_667BFC()
{
  v2 = *v1;
  v2[272] = v0;

  sub_12E1C((v2 + 48), &qword_E0EB08);
  v3 = v2[254];
  v4 = v2[253];
  if (v0)
  {
    v5 = sub_669C60;
  }

  else
  {
    v5 = sub_667D50;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_667D50()
{

  v1 = sub_AB4BA0();
  v2 = sub_AB9F50();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "╰ ✅ Succeeded", v3, 2u);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_668098()
{
  v2 = *v1;
  *(*v1 + 2192) = v0;

  v3 = *(v2 + 2032);
  v4 = *(v2 + 2024);
  if (v0)
  {
    v5 = sub_66A520;
  }

  else
  {
    v5 = sub_6681D4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_6681D4()
{

  v1 = sub_AB4BA0();
  v2 = sub_AB9F50();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "╰ ✅ Succeeded", v3, 2u);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_6684F8()
{
  v2 = *v1;
  v2[276] = v0;

  sub_12E1C((v2 + 34), &qword_E0EB00);
  v3 = v2[254];
  v4 = v2[253];
  if (v0)
  {
    v5 = sub_66ADC0;
  }

  else
  {
    v5 = sub_66864C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_66864C()
{
  v1 = v0[200];
  v2 = v0[199];
  v3 = v0[198];

  (*(v2 + 8))(v1, v3);
  v4 = sub_AB4BA0();
  v5 = sub_AB9F50();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "╰ ✅ Succeeded", v6, 2u);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_668994()
{
  v2 = *v1;
  v2[278] = v0;

  sub_12E1C((v2 + 2), &qword_E0EEA8);
  v3 = v2[254];
  v4 = v2[253];
  if (v0)
  {
    v5 = sub_66B67C;
  }

  else
  {
    v5 = sub_675AB0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_668AC8()
{
  v1 = *v0;

  v2 = *(v1 + 2032);
  v3 = *(v1 + 2024);

  return _swift_task_switch(sub_668C0C, v3, v2);
}

uint64_t sub_668C0C()
{

  v1 = sub_AB4BA0();
  v2 = sub_AB9F50();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "╰ ❌ Failed", v3, 2u);
  }

  swift_allocError();
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_668F58()
{
  v1 = *v0;

  v2 = *(v1 + 2032);
  v3 = *(v1 + 2024);

  return _swift_task_switch(sub_669078, v3, v2);
}

uint64_t sub_669078()
{

  v1 = sub_AB4BA0();
  v2 = sub_AB9F50();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "╰ ❌ Failed", v3, 2u);
  }

  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_6693A4()
{
  v96 = v0;
  (*(*(v0 + 1928) + 8))(*(v0 + 1936), *(v0 + 1920));
  v1 = *(v0 + 2136);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = sub_AB4BA0();
    v8 = sub_AB9F30();

    if (os_log_type_enabled(v7, v8))
    {
      v87 = *(v0 + 2048);
      v83 = *(v0 + 1992);
      v85 = *(v0 + 1976);
      v89 = *(v0 + 1960);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1928);
      v11 = *(v0 + 1920);
      v12 = *(v0 + 1912);
      v13 = *(v0 + 1896);
      v79 = *(v0 + 1888);
      v81 = *(v0 + 1952);
      v93 = v8;
      v14 = *(v0 + 1432);
      v15 = *(v0 + 1402);
      log = v7;
      v16 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v16 = 136447234;
      v17 = MusicLibrary.ActionableState.description.getter(v14, v15);
      v19 = sub_500C84(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      sub_AB84B0();
      sub_673544(&qword_E11AC0, &type metadata accessor for MusicLibrary.AddStatus);
      v20 = sub_ABB330();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = sub_500C84(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      sub_AB8460();
      sub_673544(&qword_E11AC8, &type metadata accessor for MusicLibrary.DownloadStatus);
      v24 = sub_ABB330();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = sub_500C84(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = sub_AB9350();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = sub_500C84(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = sub_AB9350();
      v34 = sub_500C84(v32, v33, &v95);

      *(v16 + 44) = v34;
      _os_log_impl(&dword_0, log, v93, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1976);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);

      (*(v63 + 8))(v62, v64);
    }

    *(v0 + 2240) = sub_6728AC();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = sub_668AC8;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v65;
  }

  else
  {
    v35 = *(v0 + 1968);

    v3(v35, v5, v4);

    swift_errorRetain();
    v36 = sub_AB4BA0();
    v37 = sub_AB9F30();

    if (os_log_type_enabled(v36, v37))
    {
      v88 = *(v0 + 2048);
      v84 = *(v0 + 1992);
      v86 = *(v0 + 1968);
      v90 = *(v0 + 1960);
      v38 = *(v0 + 1944);
      v39 = *(v0 + 1928);
      v40 = *(v0 + 1920);
      v80 = *(v0 + 1896);
      v82 = *(v0 + 1952);
      v77 = *(v0 + 1912);
      v78 = *(v0 + 1888);
      v94 = v37;
      v41 = *(v0 + 1432);
      v42 = *(v0 + 1402);
      loga = v36;
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v43 = 136447234;
      v44 = MusicLibrary.ActionableState.description.getter(v41, v42);
      v46 = sub_500C84(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      sub_AB84B0();
      sub_673544(&qword_E11AC0, &type metadata accessor for MusicLibrary.AddStatus);
      v47 = sub_ABB330();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = sub_500C84(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      sub_AB8460();
      sub_673544(&qword_E11AC8, &type metadata accessor for MusicLibrary.DownloadStatus);
      v51 = sub_ABB330();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = sub_500C84(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = sub_AB9350();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = sub_500C84(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = sub_AB9350();
      v61 = sub_500C84(v59, v60, &v95);

      *(v43 + 44) = v61;
      _os_log_impl(&dword_0, loga, v94, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v43, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);

      (*(v73 + 8))(v72, v74);
    }

    v75 = swift_task_alloc();
    *(v0 + 2264) = v75;
    *v75 = v0;
    v75[1] = sub_668F58;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return sub_66BF80(v71, v69, v70, v68, v67);
}

uint64_t sub_669C60()
{
  v96 = v0;

  v1 = *(v0 + 2176);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = sub_AB4BA0();
    v8 = sub_AB9F30();

    if (os_log_type_enabled(v7, v8))
    {
      v87 = *(v0 + 2048);
      v83 = *(v0 + 1992);
      v85 = *(v0 + 1976);
      v89 = *(v0 + 1960);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1928);
      v11 = *(v0 + 1920);
      v12 = *(v0 + 1912);
      v13 = *(v0 + 1896);
      v79 = *(v0 + 1888);
      v81 = *(v0 + 1952);
      v93 = v8;
      v14 = *(v0 + 1432);
      v15 = *(v0 + 1402);
      log = v7;
      v16 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v16 = 136447234;
      v17 = MusicLibrary.ActionableState.description.getter(v14, v15);
      v19 = sub_500C84(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      sub_AB84B0();
      sub_673544(&qword_E11AC0, &type metadata accessor for MusicLibrary.AddStatus);
      v20 = sub_ABB330();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = sub_500C84(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      sub_AB8460();
      sub_673544(&qword_E11AC8, &type metadata accessor for MusicLibrary.DownloadStatus);
      v24 = sub_ABB330();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = sub_500C84(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = sub_AB9350();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = sub_500C84(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = sub_AB9350();
      v34 = sub_500C84(v32, v33, &v95);

      *(v16 + 44) = v34;
      _os_log_impl(&dword_0, log, v93, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1976);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);

      (*(v63 + 8))(v62, v64);
    }

    *(v0 + 2240) = sub_6728AC();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = sub_668AC8;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v65;
  }

  else
  {
    v35 = *(v0 + 1968);

    v3(v35, v5, v4);

    swift_errorRetain();
    v36 = sub_AB4BA0();
    v37 = sub_AB9F30();

    if (os_log_type_enabled(v36, v37))
    {
      v88 = *(v0 + 2048);
      v84 = *(v0 + 1992);
      v86 = *(v0 + 1968);
      v90 = *(v0 + 1960);
      v38 = *(v0 + 1944);
      v39 = *(v0 + 1928);
      v40 = *(v0 + 1920);
      v80 = *(v0 + 1896);
      v82 = *(v0 + 1952);
      v77 = *(v0 + 1912);
      v78 = *(v0 + 1888);
      v94 = v37;
      v41 = *(v0 + 1432);
      v42 = *(v0 + 1402);
      loga = v36;
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v43 = 136447234;
      v44 = MusicLibrary.ActionableState.description.getter(v41, v42);
      v46 = sub_500C84(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      sub_AB84B0();
      sub_673544(&qword_E11AC0, &type metadata accessor for MusicLibrary.AddStatus);
      v47 = sub_ABB330();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = sub_500C84(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      sub_AB8460();
      sub_673544(&qword_E11AC8, &type metadata accessor for MusicLibrary.DownloadStatus);
      v51 = sub_ABB330();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = sub_500C84(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = sub_AB9350();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = sub_500C84(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = sub_AB9350();
      v61 = sub_500C84(v59, v60, &v95);

      *(v43 + 44) = v61;
      _os_log_impl(&dword_0, loga, v94, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v43, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);

      (*(v73 + 8))(v72, v74);
    }

    v75 = swift_task_alloc();
    *(v0 + 2264) = v75;
    *v75 = v0;
    v75[1] = sub_668F58;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return sub_66BF80(v71, v69, v70, v68, v67);
}

uint64_t sub_66A520()
{
  v96 = v0;
  v1 = *(v0 + 2192);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = sub_AB4BA0();
    v8 = sub_AB9F30();

    if (os_log_type_enabled(v7, v8))
    {
      v87 = *(v0 + 2048);
      v83 = *(v0 + 1992);
      v85 = *(v0 + 1976);
      v89 = *(v0 + 1960);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1928);
      v11 = *(v0 + 1920);
      v12 = *(v0 + 1912);
      v13 = *(v0 + 1896);
      v79 = *(v0 + 1888);
      v81 = *(v0 + 1952);
      v93 = v8;
      v14 = *(v0 + 1432);
      v15 = *(v0 + 1402);
      log = v7;
      v16 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v16 = 136447234;
      v17 = MusicLibrary.ActionableState.description.getter(v14, v15);
      v19 = sub_500C84(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      sub_AB84B0();
      sub_673544(&qword_E11AC0, &type metadata accessor for MusicLibrary.AddStatus);
      v20 = sub_ABB330();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = sub_500C84(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      sub_AB8460();
      sub_673544(&qword_E11AC8, &type metadata accessor for MusicLibrary.DownloadStatus);
      v24 = sub_ABB330();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = sub_500C84(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = sub_AB9350();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = sub_500C84(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = sub_AB9350();
      v34 = sub_500C84(v32, v33, &v95);

      *(v16 + 44) = v34;
      _os_log_impl(&dword_0, log, v93, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1976);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);

      (*(v63 + 8))(v62, v64);
    }

    *(v0 + 2240) = sub_6728AC();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = sub_668AC8;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v65;
  }

  else
  {
    v35 = *(v0 + 1968);

    v3(v35, v5, v4);

    swift_errorRetain();
    v36 = sub_AB4BA0();
    v37 = sub_AB9F30();

    if (os_log_type_enabled(v36, v37))
    {
      v88 = *(v0 + 2048);
      v84 = *(v0 + 1992);
      v86 = *(v0 + 1968);
      v90 = *(v0 + 1960);
      v38 = *(v0 + 1944);
      v39 = *(v0 + 1928);
      v40 = *(v0 + 1920);
      v80 = *(v0 + 1896);
      v82 = *(v0 + 1952);
      v77 = *(v0 + 1912);
      v78 = *(v0 + 1888);
      v94 = v37;
      v41 = *(v0 + 1432);
      v42 = *(v0 + 1402);
      loga = v36;
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v43 = 136447234;
      v44 = MusicLibrary.ActionableState.description.getter(v41, v42);
      v46 = sub_500C84(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      sub_AB84B0();
      sub_673544(&qword_E11AC0, &type metadata accessor for MusicLibrary.AddStatus);
      v47 = sub_ABB330();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = sub_500C84(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      sub_AB8460();
      sub_673544(&qword_E11AC8, &type metadata accessor for MusicLibrary.DownloadStatus);
      v51 = sub_ABB330();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = sub_500C84(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = sub_AB9350();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = sub_500C84(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = sub_AB9350();
      v61 = sub_500C84(v59, v60, &v95);

      *(v43 + 44) = v61;
      _os_log_impl(&dword_0, loga, v94, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v43, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);

      (*(v73 + 8))(v72, v74);
    }

    v75 = swift_task_alloc();
    *(v0 + 2264) = v75;
    *v75 = v0;
    v75[1] = sub_668F58;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return sub_66BF80(v71, v69, v70, v68, v67);
}

uint64_t sub_66ADC0()
{
  v96 = v0;
  (*(*(v0 + 1592) + 8))(*(v0 + 1600), *(v0 + 1584));
  v1 = *(v0 + 2208);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = sub_AB4BA0();
    v8 = sub_AB9F30();

    if (os_log_type_enabled(v7, v8))
    {
      v87 = *(v0 + 2048);
      v83 = *(v0 + 1992);
      v85 = *(v0 + 1976);
      v89 = *(v0 + 1960);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1928);
      v11 = *(v0 + 1920);
      v12 = *(v0 + 1912);
      v13 = *(v0 + 1896);
      v79 = *(v0 + 1888);
      v81 = *(v0 + 1952);
      v93 = v8;
      v14 = *(v0 + 1432);
      v15 = *(v0 + 1402);
      log = v7;
      v16 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v16 = 136447234;
      v17 = MusicLibrary.ActionableState.description.getter(v14, v15);
      v19 = sub_500C84(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      sub_AB84B0();
      sub_673544(&qword_E11AC0, &type metadata accessor for MusicLibrary.AddStatus);
      v20 = sub_ABB330();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = sub_500C84(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      sub_AB8460();
      sub_673544(&qword_E11AC8, &type metadata accessor for MusicLibrary.DownloadStatus);
      v24 = sub_ABB330();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = sub_500C84(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = sub_AB9350();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = sub_500C84(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = sub_AB9350();
      v34 = sub_500C84(v32, v33, &v95);

      *(v16 + 44) = v34;
      _os_log_impl(&dword_0, log, v93, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1976);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);

      (*(v63 + 8))(v62, v64);
    }

    *(v0 + 2240) = sub_6728AC();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = sub_668AC8;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v65;
  }

  else
  {
    v35 = *(v0 + 1968);

    v3(v35, v5, v4);

    swift_errorRetain();
    v36 = sub_AB4BA0();
    v37 = sub_AB9F30();

    if (os_log_type_enabled(v36, v37))
    {
      v88 = *(v0 + 2048);
      v84 = *(v0 + 1992);
      v86 = *(v0 + 1968);
      v90 = *(v0 + 1960);
      v38 = *(v0 + 1944);
      v39 = *(v0 + 1928);
      v40 = *(v0 + 1920);
      v80 = *(v0 + 1896);
      v82 = *(v0 + 1952);
      v77 = *(v0 + 1912);
      v78 = *(v0 + 1888);
      v94 = v37;
      v41 = *(v0 + 1432);
      v42 = *(v0 + 1402);
      loga = v36;
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v43 = 136447234;
      v44 = MusicLibrary.ActionableState.description.getter(v41, v42);
      v46 = sub_500C84(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      sub_AB84B0();
      sub_673544(&qword_E11AC0, &type metadata accessor for MusicLibrary.AddStatus);
      v47 = sub_ABB330();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = sub_500C84(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      sub_AB8460();
      sub_673544(&qword_E11AC8, &type metadata accessor for MusicLibrary.DownloadStatus);
      v51 = sub_ABB330();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = sub_500C84(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = sub_AB9350();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = sub_500C84(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = sub_AB9350();
      v61 = sub_500C84(v59, v60, &v95);

      *(v43 + 44) = v61;
      _os_log_impl(&dword_0, loga, v94, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v43, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);

      (*(v73 + 8))(v72, v74);
    }

    v75 = swift_task_alloc();
    *(v0 + 2264) = v75;
    *v75 = v0;
    v75[1] = sub_668F58;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return sub_66BF80(v71, v69, v70, v68, v67);
}

uint64_t sub_66B67C()
{
  v96 = v0;
  v1 = *(v0 + 2224);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = sub_AB4BA0();
    v8 = sub_AB9F30();

    if (os_log_type_enabled(v7, v8))
    {
      v87 = *(v0 + 2048);
      v83 = *(v0 + 1992);
      v85 = *(v0 + 1976);
      v89 = *(v0 + 1960);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1928);
      v11 = *(v0 + 1920);
      v12 = *(v0 + 1912);
      v13 = *(v0 + 1896);
      v79 = *(v0 + 1888);
      v81 = *(v0 + 1952);
      v93 = v8;
      v14 = *(v0 + 1432);
      v15 = *(v0 + 1402);
      log = v7;
      v16 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v16 = 136447234;
      v17 = MusicLibrary.ActionableState.description.getter(v14, v15);
      v19 = sub_500C84(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      sub_AB84B0();
      sub_673544(&qword_E11AC0, &type metadata accessor for MusicLibrary.AddStatus);
      v20 = sub_ABB330();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = sub_500C84(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      sub_AB8460();
      sub_673544(&qword_E11AC8, &type metadata accessor for MusicLibrary.DownloadStatus);
      v24 = sub_ABB330();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = sub_500C84(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = sub_AB9350();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = sub_500C84(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = sub_AB9350();
      v34 = sub_500C84(v32, v33, &v95);

      *(v16 + 44) = v34;
      _os_log_impl(&dword_0, log, v93, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1976);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);

      (*(v63 + 8))(v62, v64);
    }

    *(v0 + 2240) = sub_6728AC();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = sub_668AC8;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v65;
  }

  else
  {
    v35 = *(v0 + 1968);

    v3(v35, v5, v4);

    swift_errorRetain();
    v36 = sub_AB4BA0();
    v37 = sub_AB9F30();

    if (os_log_type_enabled(v36, v37))
    {
      v88 = *(v0 + 2048);
      v84 = *(v0 + 1992);
      v86 = *(v0 + 1968);
      v90 = *(v0 + 1960);
      v38 = *(v0 + 1944);
      v39 = *(v0 + 1928);
      v40 = *(v0 + 1920);
      v80 = *(v0 + 1896);
      v82 = *(v0 + 1952);
      v77 = *(v0 + 1912);
      v78 = *(v0 + 1888);
      v94 = v37;
      v41 = *(v0 + 1432);
      v42 = *(v0 + 1402);
      loga = v36;
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v43 = 136447234;
      v44 = MusicLibrary.ActionableState.description.getter(v41, v42);
      v46 = sub_500C84(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      sub_AB84B0();
      sub_673544(&qword_E11AC0, &type metadata accessor for MusicLibrary.AddStatus);
      v47 = sub_ABB330();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = sub_500C84(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      sub_AB8460();
      sub_673544(&qword_E11AC8, &type metadata accessor for MusicLibrary.DownloadStatus);
      v51 = sub_ABB330();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = sub_500C84(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = sub_AB9350();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = sub_500C84(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = sub_AB9350();
      v61 = sub_500C84(v59, v60, &v95);

      *(v43 + 44) = v61;
      _os_log_impl(&dword_0, loga, v94, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v43, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);

      (*(v73 + 8))(v72, v74);
    }

    v75 = swift_task_alloc();
    *(v0 + 2264) = v75;
    *v75 = v0;
    v75[1] = sub_668F58;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return sub_66BF80(v71, v69, v70, v68, v67);
}

uint64_t Logger.libraryActionableState.unsafeMutableAddressor()
{
  if (qword_E0CE10 != -1)
  {
    swift_once();
  }

  v0 = sub_AB4BC0();

  return __swift_project_value_buffer(v0, static Logger.libraryActionableState);
}

uint64_t sub_66BF80(uint64_t a1, uint64_t a2, __int16 a3, void *a4, uint64_t a5)
{
  *(v5 + 272) = a4;
  *(v5 + 280) = a5;
  *(v5 + 384) = a3;
  *(v5 + 256) = a1;
  *(v5 + 264) = a2;
  *(v5 + 288) = *a4;
  v6 = sub_AB3470();
  *(v5 + 296) = v6;
  *(v5 + 304) = *(v6 - 8);
  *(v5 + 312) = swift_task_alloc();
  v7 = sub_AB31C0();
  *(v5 + 320) = v7;
  v8 = *(v7 - 8);
  *(v5 + 328) = v8;
  *(v5 + 336) = *(v8 + 64);
  *(v5 + 344) = swift_task_alloc();
  *(v5 + 352) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = swift_task_alloc();
  sub_AB9940();
  *(v5 + 376) = sub_AB9930();
  v10 = sub_AB98B0();

  return _swift_task_switch(sub_66C158, v10, v9);
}

uint64_t sub_66C158()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 384);

  sub_ABAD90(91);
  v69._countAndFlagsBits = 0xD000000000000032;
  v69._object = 0x8000000000B6F840;
  sub_AB94A0(v69);
  *(v0 + 232) = v3;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
  v70._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v70);

  v71._object = 0x8000000000B6F880;
  v71._countAndFlagsBits = 0xD000000000000014;
  sub_AB94A0(v71);
  v72._countAndFlagsBits = MusicLibrary.ActionableState.description.getter(v2, v4);
  sub_AB94A0(v72);

  v73._countAndFlagsBits = 0x53206D6574490A0ALL;
  v73._object = 0xEE00203A65746174;
  sub_AB94A0(v73);
  *(v0 + 240) = v1;
  sub_AB84C0();

  v74._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v74);

  v75._countAndFlagsBits = 10;
  v75._object = 0xE100000000000000;
  sub_AB94A0(v75);
  v5 = sub_52A450(_swiftEmptyArrayStorage);
  if (qword_E0D528 != -1)
  {
    v55 = v5;
    swift_once();
    v5 = v55;
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    v7 = *(v0 + 360);
    v6 = *(v0 + 368);
    v9 = *(v0 + 320);
    v8 = *(v0 + 328);
    sub_62DE74(0xD00000000000001DLL, 0x8000000000B6F820, 0, 0xE000000000000000, _swiftEmptyArrayStorage, v5, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v6, 1u);

    sub_15F84(v6, v7, &qword_E0DC30);
    if ((*(v8 + 48))(v7, 1, v9) == 1)
    {
      v10 = *(v0 + 360);
      sub_12E1C(*(v0 + 368), &qword_E0DC30);
      sub_12E1C(v10, &qword_E0DC30);
    }

    else
    {
      v13 = *(*(v0 + 328) + 32);
      v13(*(v0 + 352), *(v0 + 360), *(v0 + 320));
      v14 = [objc_opt_self() sharedApplication];
      sub_AB30F0(v15);
      v17 = v16;
      v18 = [v14 canOpenURL:v16];

      v19 = *(v0 + 368);
      v20 = *(v0 + 352);
      if (v18)
      {
        v63 = *(v0 + 368);
        v21 = *(v0 + 344);
        v66 = v0 + 112;
        v23 = *(v0 + 320);
        v22 = *(v0 + 328);
        v24 = *(v0 + 304);
        v25 = *(v0 + 312);
        v62 = *(v0 + 296);
        (*(v22 + 16))(v21, v20, v23);
        v60 = v13;
        v26 = (*(v22 + 80) + 16) & ~*(v22 + 80);
        v65 = swift_allocObject();
        v60(v65 + v26, v21, v23);
        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v59 = sub_AB3440();
        v28 = v27;
        v61 = *(v24 + 8);
        v61(v25, v62);
        (*(v22 + 8))(v20, v23);
        sub_12E1C(v63, &qword_E0DC30);
        if (qword_E0CE10 != -1)
        {
          swift_once();
        }

        v64 = v28;
        v56 = sub_AB4BC0();
        __swift_project_value_buffer(v56, static Logger.libraryActionableState);
        v29 = sub_AB4BA0();
        v30 = sub_AB9F50();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_0, v29, v30, "|—● Presenting Tap-To-Radar alert", v31, 2u);
        }

        v32 = *(v0 + 312);
        v33 = *(v0 + 296);
        v58 = *(v0 + 280);
        v34 = *(v0 + 256);

        *(v0 + 248) = v34;
        swift_errorRetain();
        v67 = sub_AB9350();
        v57 = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_AF85F0;
        *(v36 + 32) = v59;
        *(v36 + 40) = v64;
        strcpy((v36 + 48), "File a Radar");
        *(v36 + 61) = 0;
        *(v36 + 62) = -5120;
        *(v36 + 64) = 2;
        *(v36 + 72) = &unk_B1F200;
        *(v36 + 80) = v65;

        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v37 = sub_AB3440();
        v39 = v38;
        v61(v32, v33);
        *(v36 + 88) = v37;
        *(v36 + 96) = v39;
        *(v36 + 104) = 19279;
        *(v36 + 112) = 0xE200000000000000;
        *(v36 + 120) = 2;
        *(v36 + 128) = 0;
        *(v36 + 136) = 0;
        *(v0 + 112) = xmmword_B13C70;
        *(v0 + 128) = v67;
        *(v0 + 136) = v57;
        *(v0 + 144) = 0;
        *(v0 + 152) = 0;
        *(v0 + 160) = 1;
        *(v0 + 168) = v36;
        *(v0 + 176) = 0;
        v40 = sub_5B4DF0(v66, 0, 1);
        v41 = v40;
        v42 = *(v58 + 80);
        if (v42)
        {
          v43 = *(v0 + 144);
          v44 = qword_E0CF08;

          if (v44 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v56, qword_E14920);
          v45 = sub_AB4BA0();
          v46 = sub_AB9F50();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            *v47 = 0;
            _os_log_impl(&dword_0, v45, v46, "Deferring presentation…", v47, 2u);
          }

          v48 = *(v0 + 280);

          v49 = objc_allocWithZone(MSVBlockGuard);
          *(v0 + 216) = sub_71E354;
          *(v0 + 224) = 0;
          *(v0 + 184) = _NSConcreteStackBlock;
          *(v0 + 192) = 1107296256;
          *(v0 + 200) = sub_71F2F4;
          *(v0 + 208) = &block_descriptor_114_2;
          v50 = _Block_copy((v0 + 184));
          v51 = [v49 initWithTimeout:v50 interruptionHandler:10.0];
          _Block_release(v50);

          sub_15F28(v48, v0 + 16);
          v52 = swift_allocObject();
          *(v52 + 16) = v51;
          sub_17704(v0 + 16, v52 + 24);
          *(v52 + 120) = v41;
          *(v52 + 128) = v43;
          *(v52 + 129) = 1;
          *(v52 + 136) = 0;
          *(v52 + 144) = 0;
          v53 = v51;
          v54 = v41;
          v42(v48, v54, sub_5488D0, v52);
          sub_17654(v42);

          sub_111904(v66);
        }

        else
        {
          sub_71C834(v40, *(v0 + 144), &dword_0 + 1, 0, 0);

          sub_111904(v66);
        }
      }

      else
      {
        (*(*(v0 + 328) + 8))(*(v0 + 352), *(v0 + 320));
        sub_12E1C(v19, &qword_E0DC30);
      }
    }
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

char *MusicLibrary.ActionableStateController.__allocating_init(item:library:actionsObserver:onStateUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  swift_allocObject();
  v14 = sub_6729B8(a1, a2, a3, a4, a5, a6);
  (*(*(*(v7 + 80) - 8) + 8))(a1);
  return v14;
}

char *MusicLibrary.ActionableStateController.init(item:library:actionsObserver:onStateUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *v6;
  v9 = sub_6729B8(a1, a2, a3, a4, a5, a6);
  (*(*(*(v8 + 80) - 8) + 8))(a1);
  return v9;
}

uint64_t sub_66CBDC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11B88);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11B90);
  __chkstk_darwin(v3 - 8);
  v5 = (&v9 - v4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = sub_AB8440();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = sub_AB8240();
    (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
    sub_66E970(v5, v2);

    sub_12E1C(v2, &qword_E11B88);
    return sub_12E1C(v5, &qword_E11B90);
  }

  return result;
}

uint64_t sub_66CD8C(uint64_t a1)
{
  v85 = a1;
  v2 = *v1;
  v96 = sub_AB8770();
  v87 = *(v96 - 8);
  __chkstk_darwin(v96);
  v95 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11B88);
  __chkstk_darwin(v4 - 8);
  v91 = &v77 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11B90);
  __chkstk_darwin(v6 - 8);
  v90 = &v77 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEF8);
  v9 = __chkstk_darwin(v8 - 8);
  v81 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v89 = &v77 - v11;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AF0);
  v88 = *(v99 - 8);
  v12 = __chkstk_darwin(v99);
  v80 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v86 = &v77 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10B00);
  v16 = __chkstk_darwin(v15 - 8);
  v84 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v97 = &v77 - v18;
  v19 = sub_AB8E20();
  v20 = __chkstk_darwin(v19);
  v82 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v92 = &v77 - v23;
  v24 = *(v2 + 80);
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v22);
  v94 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v83 = &v77 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v77 - v31;
  __chkstk_darwin(v30);
  v34 = &v77 - v33;
  v35 = v2;
  v37 = v36;
  v38 = *(v35 + 128);
  swift_beginAccess();
  v39 = *(v25 + 16);
  v39(v34, &v1[v38], v24);
  sub_AB8490();
  v98 = v1;
  v93 = v38;
  v40 = &v1[v38];
  v41 = v97;
  v101 = v39;
  v102 = v25 + 16;
  v39(v32, v40, v24);
  v100 = v24;
  v42 = swift_dynamicCast();
  v43 = *(v37 + 56);
  if ((v42 & 1) == 0)
  {
    v43(v41, 1, 1, v19);
    v47 = &qword_E10B00;
    goto LABEL_5;
  }

  v43(v41, 0, 1, v19);
  v44 = *(v37 + 32);
  v45 = v92;
  v44(v92, v41, v19);
  v41 = v89;
  sub_AB8E10();
  v46 = v88;
  v97 = *(v88 + 48);
  if ((v97)(v41, 1, v99) == 1)
  {
    (*(v37 + 8))(v45, v19);
    v47 = &qword_E0EEF8;
LABEL_5:
    v48 = v41;
LABEL_6:
    sub_12E1C(v48, v47);
    v49 = v96;
    v50 = v98;
    goto LABEL_7;
  }

  v78 = v44;
  v79 = v37;
  v57 = *(v46 + 32);
  v58 = v86;
  v89 = (v46 + 32);
  v77 = v57;
  v57(v86, v41, v99);
  v101(v83, v85, v100);
  v59 = v84;
  v60 = v19;
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v46 + 8))(v58, v99);
    (*(v79 + 8))(v92, v19);
    v43(v59, 1, 1, v19);
    v47 = &qword_E10B00;
    v48 = v59;
    goto LABEL_6;
  }

  v61 = v46;
  v43(v59, 0, 1, v19);
  v62 = v82;
  v78(v82, v59, v19);
  v63 = v81;
  sub_AB8E10();
  v64 = v99;
  if ((v97)(v63, 1, v99) == 1)
  {
    v65 = *(v79 + 8);
    v65(v62, v60);
    (*(v61 + 8))(v86, v64);
    v65(v92, v60);
    v47 = &qword_E0EEF8;
    v48 = v63;
    goto LABEL_6;
  }

  v66 = v60;
  v67 = v80;
  v77(v80, v63, v64);
  sub_36A00(&qword_E10B20, &qword_E10AF0);
  sub_AB9C60();
  sub_AB9CA0();
  v68 = sub_AB9C90();
  v50 = v98;
  if (!v68 && (sub_AB9C60(), sub_AB9CA0(), sub_AB9C90() > 0) || (sub_AB9C60(), sub_AB9CA0(), sub_AB9C90() >= 1) && (sub_AB9C60(), sub_AB9CA0(), !sub_AB9C90()))
  {
    v71 = sub_AB8440();
    v72 = v90;
    (*(*(v71 - 8) + 56))(v90, 1, 1, v71);
    v73 = sub_AB8240();
    v74 = v91;
    (*(*(v73 - 8) + 56))(v91, 1, 1, v73);
    sub_66E970(v72, v74);
    sub_12E1C(v74, &qword_E11B88);
    sub_12E1C(v72, &qword_E11B90);
    v75 = *(v46 + 8);
    v75(v67, v64);
    v76 = *(v79 + 8);
    v76(v62, v66);
    v75(v86, v64);
    return (v76)(v92, v66);
  }

  v69 = *(v46 + 8);
  v69(v67, v64);
  v70 = *(v79 + 8);
  v70(v62, v66);
  v69(v86, v64);
  v70(v92, v66);
  v49 = v96;
LABEL_7:
  v101(v94, &v50[v93], v100);
  v51 = v95;
  result = swift_dynamicCast();
  if (result)
  {
    (*(v87 + 8))(v51, v49);
    v53 = sub_AB8440();
    v54 = v90;
    (*(*(v53 - 8) + 56))(v90, 1, 1, v53);
    v55 = sub_AB8240();
    v56 = v91;
    (*(*(v55 - 8) + 56))(v91, 1, 1, v55);
    sub_66E970(v54, v56);
    sub_12E1C(v56, &qword_E11B88);
    return sub_12E1C(v54, &qword_E11B90);
  }

  return result;
}

uint64_t MusicLibrary.ActionableStateController.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t MusicLibrary.ActionableStateController.item.setter(uint64_t a1)
{
  v3 = *v1;
  sub_672F84(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*MusicLibrary.ActionableStateController.item.modify(void *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[3] = v1;
  v5 = *(*v1 + 80);
  v3[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v3[5] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v3[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v3[6] = malloc(*(v6 + 64));
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[7] = v9;
  v11 = *(*v1 + 128);
  swift_beginAccess();
  v12 = *(v7 + 16);
  v4[8] = v12;
  v4[9] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v10, v1 + v11, v5);
  return sub_66DC7C;
}

void sub_66DC7C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), *(v2 + 32));
    sub_672F84(v4);
    v7 = *(v6 + 8);
    v7(v4, v5);
    v7(v3, v5);
  }

  else
  {
    sub_672F84(*(v2 + 56));
    (*(v6 + 8))(v3, v5);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t MusicLibrary.ActionableStateController.onStateUpdate.getter()
{
  v1 = (v0 + *(*v0 + 144));
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t MusicLibrary.ActionableStateController.onStateUpdate.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 144));
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_66DE94(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  __chkstk_darwin(a1);
  v9 = &v42 - v8;
  v11 = v2 + *(v10 + 152);
  result = swift_beginAccess();
  v13 = *v11;
  v14 = *(v11 + 8);
  if (!(v14 >> 14))
  {
    if (a2 < 0x4000u)
    {
      if (*v11 == 5)
      {
        if (a1 == 5)
        {
          return result;
        }
      }

      else if (a1 != 5 && v13 == a1)
      {
        return result;
      }
    }

    goto LABEL_37;
  }

  if (v14 >> 14 != 1)
  {
    if (v13 | v14 ^ 0x8000)
    {
      if (*(v11 + 8) == 0x8000 && v13 == 1)
      {
        if ((a2 & 0xC000) != 0x8000 || a1 != 1)
        {
          goto LABEL_37;
        }
      }

      else if ((a2 & 0xC000) != 0x8000 || a1 != 2)
      {
        goto LABEL_37;
      }
    }

    else if ((a2 & 0xC000) != 0x8000 || *&a1 != 0.0)
    {
      goto LABEL_37;
    }

    if (a2 == 0x8000)
    {
      return result;
    }

    goto LABEL_37;
  }

  if ((a2 & 0xC000) == 0x4000)
  {
    if (v14)
    {
      if ((a2 & 1) != 0 && (((a2 ^ v14) >> 8) & 1) == 0)
      {
        return result;
      }
    }

    else if ((a2 & 1) == 0 && *v11 == *&a1 && (((a2 ^ v14) >> 8) & 1) == 0)
    {
      return result;
    }
  }

LABEL_37:
  if (qword_E0CE10 != -1)
  {
    swift_once();
  }

  v17 = sub_AB4BC0();
  __swift_project_value_buffer(v17, static Logger.libraryActionableState);

  v18 = sub_AB4BA0();
  v19 = sub_AB9F50();

  v20 = os_log_type_enabled(v18, v19);
  v44 = a2;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v45 = v6;
    v22 = v21;
    v23 = swift_slowAlloc();
    v43 = v7;
    v46[0] = v23;
    *v22 = 136446722;
    v24 = MusicLibrary.ActionableState.description.getter(a1, a2);
    v26 = sub_500C84(v24, v25, v46);
    v42 = a1;
    v27 = v26;

    *(v22 + 4) = v27;
    *(v22 + 12) = 2082;
    v28 = MusicLibrary.ActionableState.description.getter(*v11, *(v11 + 8));
    v30 = sub_500C84(v28, v29, v46);

    *(v22 + 14) = v30;
    *(v22 + 22) = 2082;
    v31 = *(*v3 + 128);
    swift_beginAccess();
    (*(v43 + 16))(v9, v3 + v31, v45);
    v32 = sub_AB9350();
    v34 = sub_500C84(v32, v33, v46);

    *(v22 + 24) = v34;
    v35 = v19;
    v36 = v42;
    _os_log_impl(&dword_0, v18, v35, "State updated from: %{public}s to: %{public}s for item: %{public}s)", v22, 0x20u);
    swift_arrayDestroy();
    v7 = v43;

    v6 = v45;
  }

  else
  {

    v36 = a1;
  }

  v37 = (v3 + *(*v3 + 144));
  swift_beginAccess();
  v38 = *v37;
  v39 = *(*v3 + 128);
  swift_beginAccess();
  (*(v7 + 16))(v9, v3 + v39, v6);
  v40 = *v11;
  v41 = *(v11 + 8);

  v38(v9, v36, v44, v40, v41);

  return (*(v7 + 8))(v9, v6);
}

uint64_t MusicLibrary.ActionableStateController.currentState.getter()
{
  v1 = v0 + *(*v0 + 152);
  swift_beginAccess();
  return *v1;
}

uint64_t sub_66E3B0(uint64_t a1, __int16 a2)
{
  v5 = v2 + *(*v2 + 152);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v7 = *(v5 + 8);
  *(v5 + 8) = a2;
  return sub_66DE94(v6, v7);
}

uint64_t MusicLibrary.ActionableStateController.performAction(presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *v2;
  v3[11] = *v2;
  v5 = *(v4 + 80);
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  sub_AB9940();
  v3[15] = sub_AB9930();
  v7 = sub_AB98B0();
  v3[16] = v7;
  v3[17] = v6;

  return _swift_task_switch(sub_66E554, v7, v6);
}

uint64_t sub_66E554()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[10];
  v5 = &v4[*(*v4 + 152)];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(*v4 + 128);
  v8 = *(v5 + 4);
  swift_beginAccess();
  (*(v2 + 16))(v1, &v4[v7], v3);
  v9 = *&v4[*(*v4 + 136)];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[18] = Strong;
  v11 = *(v4 + 4);
  v12 = swift_task_alloc();
  v0[19] = v12;
  *v12 = v0;
  v12[1] = sub_66E6DC;
  v13 = v0[14];
  v14 = v0[8];
  v15 = v0[9];

  return MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:)(v6, v8, v13, v9, v14, Strong, v11, v15);
}

uint64_t sub_66E6DC()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  *(*v1 + 160) = v0;

  (*(v4 + 8))(v3, v5);
  swift_unknownObjectRelease();
  v6 = *(v2 + 136);
  v7 = *(v2 + 128);
  if (v0)
  {
    v8 = sub_66E904;
  }

  else
  {
    v8 = sub_66E898;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_66E898()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_66E904()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_66E970(void (*a1)(_BYTE *, uint64_t), uint64_t a2)
{
  v3 = v2;
  v243 = a2;
  v238 = a1;
  v4 = *v2;
  v5 = sub_AB8420();
  v229 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v224 = &v208[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v6);
  v228 = &v208[-v9];
  v10 = __chkstk_darwin(v8);
  v227 = &v208[-v11];
  v12 = __chkstk_darwin(v10);
  v226 = &v208[-v13];
  __chkstk_darwin(v12);
  v232 = &v208[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEF8);
  __chkstk_darwin(v15 - 8);
  v220 = &v208[-v16];
  v225 = sub_AB8E20();
  v216 = *(v225 - 8);
  v17 = __chkstk_darwin(v225);
  v215 = &v208[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v217 = &v208[-v19];
  v222 = sub_AB8770();
  v219 = *(v222 - 8);
  v20 = __chkstk_darwin(v222);
  v218 = &v208[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v221 = &v208[-v22];
  v23 = *(v4 + 80);
  v24 = sub_AB8440();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v223 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v237 = &v208[-v25];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11B88);
  __chkstk_darwin(v26 - 8);
  v28 = &v208[-v27];
  v29 = sub_AB8240();
  v242 = *(v29 - 8);
  v30 = __chkstk_darwin(v29);
  v213 = &v208[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = __chkstk_darwin(v30);
  v234 = &v208[-v33];
  __chkstk_darwin(v32);
  v244 = &v208[-v34];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11B90);
  v36 = __chkstk_darwin(v35 - 8);
  v38 = &v208[-v37];
  v245 = *(v24 - 8);
  v39 = __chkstk_darwin(v36);
  v214 = &v208[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = __chkstk_darwin(v39);
  v43 = &v208[-v42];
  v44 = __chkstk_darwin(v41);
  v247 = &v208[-v45];
  v239 = *(v23 - 8);
  __chkstk_darwin(v44);
  v230 = &v208[-v46];
  v47 = v3 + *(v4 + 152);
  swift_beginAccess();
  v210 = *v47;
  v209 = *(v47 + 8);
  if (qword_E0CE10 != -1)
  {
    swift_once();
  }

  v48 = sub_AB4BC0();
  v49 = __swift_project_value_buffer(v48, static Logger.libraryActionableState);

  v246 = v49;
  v50 = sub_AB4BA0();
  v51 = sub_AB9F50();

  v52 = os_log_type_enabled(v50, v51);
  v240 = v29;
  v241 = v24;
  v231 = v5;
  v236 = v23;
  if (v52)
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v250 = v54;
    *v53 = 136446210;
    v55 = *(*v3 + 128);
    swift_beginAccess();
    (*(v239 + 16))(v230, v3 + v55, v23);
    v56 = sub_AB9350();
    v58 = sub_500C84(v56, v57, &v250);

    *(v53 + 4) = v58;
    _os_log_impl(&dword_0, v50, v51, "╭ Updating state for item: %{public}s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
    v24 = v241;

    v29 = v240;
  }

  sub_15F84(v238, v38, &qword_E11B90);
  v59 = v245;
  v60 = *(v245 + 48);
  v61 = v60(v38, 1, v24);
  v62 = v242;
  if (v61 == 1)
  {
    sub_AB84B0();
    if (v60(v38, 1, v24) != 1)
    {
      sub_12E1C(v38, &qword_E11B90);
    }
  }

  else
  {
    (*(v59 + 32))(v247, v38, v24);
  }

  sub_15F84(v243, v28, &qword_E11B88);
  v63 = *(v62 + 48);
  v64 = v63(v28, 1, v29);
  v243 = v3;
  if (v64 == 1)
  {
    sub_AB8460();
    if (v63(v28, 1, v29) != 1)
    {
      sub_12E1C(v28, &qword_E11B88);
    }
  }

  else
  {
    (*(v62 + 32))(v244, v28, v29);
  }

  v65 = v245;
  v233 = *(v245 + 16);
  v233(v43, v247, v24);
  v66 = sub_AB4BA0();
  v67 = v24;
  v68 = sub_AB9F50();
  if (os_log_type_enabled(v66, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v250 = v70;
    *v69 = 136446210;
    sub_673544(&qword_E11AC0, &type metadata accessor for MusicLibrary.AddStatus);
    v71 = sub_ABB330();
    v73 = v72;
    v238 = *(v65 + 8);
    v238(v43, v67);
    v74 = sub_500C84(v71, v73, &v250);

    *(v69 + 4) = v74;
    _os_log_impl(&dword_0, v66, v68, "| Add Status: %{public}s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v70);
    v29 = v240;

    v62 = v242;
  }

  else
  {

    v238 = *(v65 + 8);
    v238(v43, v67);
  }

  v75 = *(v62 + 16);
  v76 = v234;
  v212 = v62 + 16;
  v211 = v75;
  v75(v234, v244, v29);
  v77 = sub_AB4BA0();
  v78 = sub_AB9F50();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = v62;
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v250 = v81;
    *v80 = 136446210;
    sub_673544(&qword_E11AC8, &type metadata accessor for MusicLibrary.DownloadStatus);
    v82 = sub_ABB330();
    v84 = v83;
    v234 = *(v79 + 8);
    (v234)(v76, v29);
    v85 = sub_500C84(v82, v84, &v250);

    *(v80 + 4) = v85;
    _os_log_impl(&dword_0, v77, v78, "| Download Status: %{public}s", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v81);
  }

  else
  {

    v234 = *(v62 + 8);
    (v234)(v76, v29);
  }

  v86 = v236;
  v87 = v239;
  v88 = v243;
  v89 = *(*v243 + 128);
  swift_beginAccess();
  v90 = *(TupleTypeMetadata2 + 48);
  v91 = *(v87 + 16);
  v92 = v237;
  v91(v237, v88 + v89, v86);
  v93 = v241;
  v233(&v92[v90], v247, v241);
  v94 = v245;
  v95 = (*(v245 + 88))(&v92[v90], v93);
  if (v95 == enum case for MusicLibrary.AddStatus.addable(_:))
  {
    v238(&v92[v90], v93);
    v96 = 0;
    v97 = 5;
    goto LABEL_73;
  }

  if (v95 != enum case for MusicLibrary.AddStatus.unaddable(_:))
  {
    if (v95 != enum case for MusicLibrary.AddStatus.added(_:))
    {

      v145 = sub_AB4BA0();
      v146 = sub_AB9F30();

      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        v239 = swift_slowAlloc();
        v249 = v239;
        *v147 = 136446466;
        v148 = v214;
        sub_AB84B0();
        sub_673544(&qword_E11AC0, &type metadata accessor for MusicLibrary.AddStatus);
        v149 = v241;
        v150 = sub_ABB330();
        v152 = v151;
        v238(v148, v149);
        v153 = sub_500C84(v150, v152, &v249);

        *(v147 + 4) = v153;
        *(v147 + 12) = 2082;
        v91(v230, v243 + v89, v236);
        v154 = sub_AB9350();
        v156 = sub_500C84(v154, v155, &v249);

        *(v147 + 14) = v156;
        _os_log_impl(&dword_0, v145, v146, "| Unhandled add status (%{public}s) for item: %{public}s", v147, 0x16u);
        swift_arrayDestroy();

        v92 = v237;
      }

      v97 = 0;
      v96 = 0x8000;
      v87 = v223;
      v86 = TupleTypeMetadata2;
      goto LABEL_73;
    }

    v116 = v221;
    v117 = v222;
    v118 = swift_dynamicCast();
    v119 = v242;
    v120 = v243;
    v121 = v225;
    if (v118)
    {
      v122 = v219;
      v123 = v116;
      v124 = v218;
      (*(v219 + 32))(v218, v123, v117);
      if (Album.childrenAddStatus(_:)(*(v120 + 16)) == 1)
      {
        v125 = sub_AB4BA0();
        v126 = sub_AB9F50();
        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          *v127 = 0;
          _os_log_impl(&dword_0, v125, v126, "| Album is already added but has at least 1 addable track", v127, 2u);
        }

        (*(v219 + 8))(v218, v117);
        v96 = 0;
        v97 = 4;
        goto LABEL_73;
      }

      (*(v122 + 8))(v124, v117);
    }

    v160 = v217;
    if (swift_dynamicCast())
    {
      v161 = v216;
      v162 = v215;
      (*(v216 + 32))(v215, v160, v121);
      v163 = v220;
      sub_AB8E10();
      v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AF0);
      v165 = v163;
      v166 = v164;
      v167 = *(v164 - 8);
      if ((*(v167 + 48))(v165, 1, v164) == 1)
      {
        (*(v161 + 8))(v162, v121);
        sub_12E1C(v220, &qword_E0EEF8);
      }

      else
      {
        sub_36A00(&qword_E10B20, &qword_E10AF0);
        v168 = v220;
        sub_AB9C60();
        sub_AB9CA0();
        v170 = v248;
        v169 = v249;
        (*(v167 + 8))(v168, v166);
        if (v169 == v170)
        {
          v171 = sub_AB4BA0();
          v172 = sub_AB9F50();
          v173 = os_log_type_enabled(v171, v172);
          v174 = v216;
          v175 = v215;
          if (v173)
          {
            v176 = swift_slowAlloc();
            *v176 = 0;
            _os_log_impl(&dword_0, v171, v172, "| Playlist is already added but does not have any tracks", v176, 2u);
          }

          (*(v174 + 8))(v175, v225);
          goto LABEL_72;
        }

        (*(v216 + 8))(v215, v225);
      }

      v119 = v242;
    }

    v177 = sub_AB4BA0();
    v178 = sub_AB9F50();
    if (os_log_type_enabled(v177, v178))
    {
      v179 = swift_slowAlloc();
      *v179 = 0;
      _os_log_impl(&dword_0, v177, v178, "|—● Item is added", v179, 2u);
    }

    result = [objc_opt_self() sharedCloudController];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v181 = result;
    v182 = [result canShowCloudDownloadButtons];

    if (v182)
    {
      v183 = v213;
      v184 = v240;
      v211(v213, v244, v240);
      v185 = (*(v119 + 88))(v183, v184);
      if (v185 == enum case for MusicLibrary.DownloadStatus.downloading(_:))
      {
        (*(v119 + 96))(v183, v184);
        v97 = *v183;
        v96 = 0x4000;
        goto LABEL_73;
      }

      if (v185 == enum case for MusicLibrary.DownloadStatus.paused(_:))
      {
        (*(v119 + 96))(v183, v184);
        if (((v209 & 0xC000) != 0x4000) | v209 & 1)
        {
          v97 = 0;
        }

        else
        {
          v97 = v210;
        }

        v96 = ((v209 & 0xC000) != 0x4000) | v209 & 1 | 0x4100;
        v196 = sub_AB8230();
        (*(*(v196 - 8) + 8))(v183, v196);
        goto LABEL_73;
      }

      if (v185 != enum case for MusicLibrary.DownloadStatus.notDownloadable(_:))
      {
        if (v185 == enum case for MusicLibrary.DownloadStatus.downloadable(_:))
        {
          v96 = 0x8000;
          v97 = 1;
        }

        else if (v185 == enum case for MusicLibrary.DownloadStatus.downloadWaiting(_:))
        {
          v97 = 0;
          v96 = 16385;
        }

        else if (v185 == enum case for MusicLibrary.DownloadStatus.downloaded(_:))
        {
          v96 = 0x8000;
          v97 = 2;
        }

        else
        {
          v197 = v86;
          v198 = enum case for MusicLibrary.DownloadStatus.cancelled(_:);
          v199 = v185;
          v200 = sub_AB4BA0();
          v201 = sub_AB9F50();
          v202 = os_log_type_enabled(v200, v201);
          if (v199 == v198)
          {
            if (v202)
            {
              v203 = swift_slowAlloc();
              *v203 = 0;
            }

            v204 = sub_AB4BA0();
            v205 = sub_AB9F50();
            v86 = v197;
            if (os_log_type_enabled(v204, v205))
            {
              v206 = swift_slowAlloc();
              *v206 = 0;
              _os_log_impl(&dword_0, v204, v205, "|—| 🌚 though we're not sure this is the right thing to do", v206, 2u);
            }

            v96 = 0x8000;
            v97 = 1;
            v87 = v239;
          }

          else
          {
            v86 = v197;
            if (v202)
            {
              v207 = swift_slowAlloc();
              *v207 = 0;
              _os_log_impl(&dword_0, v200, v201, "|—| Unhandled case", v207, 2u);
            }

            (v234)(v213, v240);
            v97 = 0;
            v96 = 0x8000;
            v87 = v239;
          }
        }

        goto LABEL_73;
      }
    }

    else
    {
      v186 = sub_AB4BA0();
      v187 = sub_AB9F50();
      if (os_log_type_enabled(v186, v187))
      {
        v188 = swift_slowAlloc();
        *v188 = 0;
        _os_log_impl(&dword_0, v186, v187, "|—| MPCloudController -canShowCloudDownloadButton: NO", v188, 2u);
      }
    }

LABEL_72:
    v97 = 0;
    v96 = 0x8000;
    goto LABEL_73;
  }

  v98 = v229;
  (*(v94 + 96))(&v92[v90], v93);
  v99 = v98[4];
  v100 = &v92[v90];
  v101 = v232;
  v102 = v231;
  TupleTypeMetadata2 = (v98 + 4);
  v233 = v99;
  v99(v232, v100, v231);
  v103 = v98[2];
  v104 = v226;
  v103(v226, v101, v102);
  v105 = sub_AB4BA0();
  v106 = sub_AB9F50();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = v104;
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v249 = v109;
    *v108 = 136446210;
    sub_673544(&qword_E0EC88, &type metadata accessor for MusicLibrary.AddStatus.UnaddableReason);
    v110 = sub_ABB330();
    v112 = v111;
    v113 = v107;
    v114 = v98[1];
    v114(v113, v231);
    v115 = sub_500C84(v110, v112, &v249);

    *(v108 + 4) = v115;
    v102 = v231;
    _os_log_impl(&dword_0, v105, v106, "|—● Item is unaddable: %{public}s", v108, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v109);
  }

  else
  {

    v114 = v98[1];
    v114(v104, v102);
  }

  v128 = v227;
  v103(v227, v232, v102);
  v129 = v98[11];
  v130 = v129(v128, v102);
  v131 = enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:);
  v132 = v228;
  if (v130 != enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:) && v130 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:) && v130 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryInitialImport(_:) && v130 != enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
  {
    v133 = sub_AB4BA0();
    v134 = sub_AB9F50();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      *v135 = 0;
      _os_log_impl(&dword_0, v133, v134, "|—| Reason is not actionable by the user", v135, 2u);
    }

    v136 = v231;
    v114(v232, v231);
    v114(v128, v136);
    v97 = 0;
    v96 = 0x8000;
    goto LABEL_46;
  }

  LODWORD(v230) = enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:);
  LODWORD(v227) = enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryInitialImport(_:);
  LODWORD(v226) = enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:);
  v103(v228, v232, v102);
  v137 = v132;
  v138 = sub_AB4BA0();
  v139 = sub_AB9F50();
  if (os_log_type_enabled(v138, v139))
  {
    v140 = swift_slowAlloc();
    v225 = swift_slowAlloc();
    v249 = v225;
    *v140 = 136315138;
    sub_673544(&qword_E0EC88, &type metadata accessor for MusicLibrary.AddStatus.UnaddableReason);
    v141 = sub_ABB330();
    v143 = v142;
    v114(v137, v231);
    v144 = sub_500C84(v141, v143, &v249);

    *(v140 + 4) = v144;
    v102 = v231;
    __swift_destroy_boxed_opaque_existential_0(v225);
  }

  else
  {

    v114(v137, v102);
  }

  v157 = v224;
  v233(v224, v232, v102);
  v158 = v129(v157, v102);
  if (v158 == v131)
  {
    v96 = 0;
    v97 = 1;
LABEL_46:
    v92 = v237;
    v86 = v236;
    v87 = v239;
    goto LABEL_73;
  }

  v159 = v114;
  v92 = v237;
  v86 = v236;
  v87 = v239;
  if (v158 == v230)
  {
    v97 = 0;
    v96 = 0;
  }

  else if (v158 == v227)
  {
    v96 = 0;
    v97 = 2;
  }

  else if (v158 == v226)
  {
    v96 = 0;
    v97 = 3;
  }

  else
  {
    v159(v157, v102);
    v96 = 0;
    v97 = 5;
  }

LABEL_73:
  (*(v87 + 8))(v92, v86);
  v189 = sub_AB4BA0();
  v190 = sub_AB9F50();
  if (os_log_type_enabled(v189, v190))
  {
    v191 = swift_slowAlloc();
    v192 = swift_slowAlloc();
    v249 = v192;
    *v191 = 136446210;
    v193 = MusicLibrary.ActionableState.description.getter(v97, v96);
    v195 = sub_500C84(v193, v194, &v249);

    *(v191 + 4) = v195;
    _os_log_impl(&dword_0, v189, v190, "╰ Item state resolved to %{public}s", v191, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v192);
  }

  sub_66E3B0(v97, v96);
  (v234)(v244, v240);
  return (v238)(v247, v241);
}

uint64_t sub_6708A4()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11B68);
  v3 = *(v2 - 8);
  v28 = v2;
  v29 = v3;
  __chkstk_darwin(v2);
  v27 = &v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11B70);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  v9 = v1[21];
  swift_beginAccess();
  *(v0 + v9) = &_swiftEmptySetSingleton;

  v26 = *(v0 + *(*v0 + 136));
  sub_AB8450();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v25 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_36A00(&qword_E11B78, &qword_E11B70);
  v24 = v1[10];
  v11[2] = v24;
  v23 = v1[11];
  v11[3] = v23;
  v12 = v1[12];
  v11[4] = v12;
  v13 = v1[13];
  v11[5] = v13;
  v11[6] = v10;
  v14 = sub_AB55C0();

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  sub_683410(&v30, v14);
  swift_endAccess();

  v15 = v27;
  sub_AB8470();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *&v18 = v24;
  *(&v18 + 1) = v23;
  *&v19 = v12;
  *(&v19 + 1) = v13;
  *(v17 + 16) = v18;
  *(v17 + 32) = v19;
  *(v17 + 48) = v16;
  sub_36A00(&qword_E11B80, &qword_E11B68);
  v20 = v28;
  v21 = sub_AB55C0();

  (*(v29 + 8))(v15, v20);
  swift_beginAccess();
  sub_683410(&v30, v21);
  swift_endAccess();
}

uint64_t sub_670CB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11B88);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11B90);
  __chkstk_darwin(v7 - 8);
  v9 = (&v30 - v8);
  v10 = sub_AB8440();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E0CE10 != -1)
  {
    swift_once();
  }

  v14 = sub_AB4BC0();
  __swift_project_value_buffer(v14, static Logger.libraryActionableState);
  v36 = *(v11 + 16);
  v36(v13, a1, v10);
  v15 = v11;
  v16 = sub_AB4BA0();
  v17 = sub_AB9F50();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v34 = a2;
    v19 = v18;
    v20 = swift_slowAlloc();
    v35 = v6;
    v33 = v20;
    v37[0] = v20;
    *v19 = 136446210;
    sub_673544(&qword_E11AC0, &type metadata accessor for MusicLibrary.AddStatus);
    v21 = v15;
    v31 = v15;
    v22 = sub_ABB330();
    v32 = a1;
    v23 = v9;
    v25 = v24;
    (*(v21 + 8))(v13, v10);
    v26 = sub_500C84(v22, v25, v37);
    v9 = v23;
    a1 = v32;

    *(v19 + 4) = v26;
    _os_log_impl(&dword_0, v16, v17, "Add status has updated to %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    v6 = v35;

    v27 = v31;
  }

  else
  {

    (*(v15 + 8))(v13, v10);
    v27 = v15;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v36(v9, a1, v10);
    (*(v27 + 56))(v9, 0, 1, v10);
    v29 = sub_AB8240();
    (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
    sub_66E970(v9, v6);

    sub_12E1C(v6, &qword_E11B88);
    return sub_12E1C(v9, &qword_E11B90);
  }

  return result;
}

uint64_t sub_6710E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11B88);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11B90);
  __chkstk_darwin(v7 - 8);
  v9 = (&v30 - v8);
  v10 = sub_AB8240();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E0CE10 != -1)
  {
    swift_once();
  }

  v14 = sub_AB4BC0();
  __swift_project_value_buffer(v14, static Logger.libraryActionableState);
  v35 = *(v11 + 16);
  v35(v13, a1, v10);
  v15 = v11;
  v16 = sub_AB4BA0();
  v17 = sub_AB9F50();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v36 = v10;
    v19 = v18;
    v33 = swift_slowAlloc();
    v34 = v6;
    v37[0] = v33;
    *v19 = 136446210;
    sub_673544(&qword_E11AC8, &type metadata accessor for MusicLibrary.DownloadStatus);
    v20 = v15;
    v31 = v15;
    v21 = sub_ABB330();
    v32 = a2;
    v22 = v9;
    v23 = a1;
    v25 = v24;
    (*(v20 + 8))(v13, v36);
    v26 = sub_500C84(v21, v25, v37);
    a1 = v23;
    v9 = v22;

    *(v19 + 4) = v26;
    _os_log_impl(&dword_0, v16, v17, "Download status has updated to %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    v6 = v34;

    v10 = v36;

    v27 = v31;
  }

  else
  {

    (*(v15 + 8))(v13, v10);
    v27 = v15;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v29 = sub_AB8440();
    (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
    v35(v6, a1, v10);
    (*(v27 + 56))(v6, 0, 1, v10);
    sub_66E970(v9, v6);

    sub_12E1C(v6, &qword_E11B88);
    return sub_12E1C(v9, &qword_E11B90);
  }

  return result;
}

uint64_t *MusicLibrary.ActionableStateController.deinit()
{
  v1 = *v0;

  sub_176DC((v0 + 3));
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 128));

  return v0;
}

uint64_t MusicLibrary.ActionableStateController.__deallocating_deinit()
{
  MusicLibrary.ActionableStateController.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_671664()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, static Logger.libraryActionableState);
  __swift_project_value_buffer(v0, static Logger.libraryActionableState);
  sub_13C80(0, &qword_E15F40);
  sub_ABA9A0();
  return sub_AB4BD0();
}

uint64_t static Logger.libraryActionableState.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_E0CE10 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  v3 = __swift_project_value_buffer(v2, static Logger.libraryActionableState);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_6717B0(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0);
  }

  else
  {

    return sub_ABB340();
  }
}

uint64_t sub_671824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 112);
  *(v4 + 112) = *(a4 + 96);
  *(v4 + 128) = v8;
  *(v4 + 144) = *(a4 + 128);
  v9 = *(a4 + 48);
  *(v4 + 48) = *(a4 + 32);
  *(v4 + 64) = v9;
  v10 = *(a4 + 80);
  *(v4 + 80) = *(a4 + 64);
  *(v4 + 96) = v10;
  v11 = *(a4 + 16);
  *(v4 + 16) = *a4;
  *(v4 + 32) = v11;
  v12 = swift_task_alloc();
  *(v4 + 152) = v12;
  *v12 = v4;
  v12[1] = sub_5320A8;

  return sub_652CB8(a1, a2, a3, (v4 + 16));
}

uint64_t sub_671900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_17CF8;

  return sub_653A00(a1, a2, a3, a4);
}

uint64_t sub_6719B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_17CF8;

  return sub_654710(a1, a2, a3, a4);
}

uint64_t sub_671A70(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_537F0C;

  return sub_655420(a1, a2, a3, (v4 + 16));
}

uint64_t sub_671B44(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_537F0C;

  return sub_6560D4(a1, a2, a3, (v4 + 16));
}

uint64_t sub_671C18(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_537F0C;

  return sub_656D88(a1, a2, a3, (v4 + 16));
}

uint64_t sub_671CEC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_537F0C;

  return sub_657A3C(a1, a2, a3, (v4 + 16));
}

uint64_t sub_671DC0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_537F0C;

  return sub_6586F0(a1, a2, a3, (v4 + 16));
}

uint64_t sub_671E94(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_537F0C;

  return sub_6593A4(a1, a2, a3, (v4 + 16));
}

uint64_t sub_671F68(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_537F0C;

  return sub_65A058(a1, a2, a3, (v4 + 16));
}

uint64_t sub_67203C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_537F0C;

  return sub_65AD0C(a1, a2, a3, (v4 + 16));
}

uint64_t sub_672110(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_537F0C;

  return sub_65B9C0(a1, a2, a3, (v4 + 16));
}

uint64_t sub_6721E4(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v9;
  v10 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v10;
  v11 = swift_task_alloc();
  *(v4 + 112) = v11;
  *v11 = v4;
  v11[1] = sub_533D90;

  return sub_65C674(a1, a2, a3, (v4 + 16));
}

uint64_t sub_6722B0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_537F0C;

  return sub_65D2F8(a1, a2, a3, (v4 + 16));
}

uint64_t sub_672384(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_534404;

  return sub_65DFAC(a1, a2, a3, (v4 + 16));
}

uint64_t sub_672458(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_537F0C;

  return sub_65EC60(a1, a2, a3, (v4 + 16));
}

uint64_t sub_67252C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_537F0C;

  return sub_65F914(a1, a2, a3, (v4 + 16));
}

uint64_t sub_672600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v10 = *a5;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_17CF8;

  return sub_6605C8(a1, a2, a3, a4, v10);
}

uint64_t sub_6726C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_17BD0;

  return sub_661200(a1, a2, a3, a4);
}

uint64_t _s8MusicKit0A7LibraryC0A4CoreE15ActionableStateO21__derived_enum_equalsySbAF_AFtFZ_0(uint64_t a1, unsigned __int16 a2, uint64_t a3, unsigned __int16 a4)
{
  if (a2 >> 14)
  {
    if (a2 >> 14 != 1)
    {
      if (a1 | a2 ^ 0x8000)
      {
        v5 = a4 & 0xC000;
        if (a2 == 0x8000 && a1 == 1)
        {
          if (v5 == 0x8000 && a3 == 1 && a4 == 0x8000)
          {
            return 1;
          }
        }

        else if (v5 == 0x8000 && a3 == 2 && a4 == 0x8000)
        {
          return 1;
        }
      }

      else if ((a4 & 0xC000) == 0x8000 && *&a3 == 0.0 && a4 == 0x8000)
      {
        return 1;
      }

      return 0;
    }

    if ((a4 & 0xC000) == 0x4000)
    {
      if (a2)
      {
        if ((a4 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((a4 & 1) != 0 || *&a1 != *&a3)
      {
        return 0;
      }

      return ((a4 & 0x100) == 0) ^ ((a2 & 0x100) >> 8);
    }
  }

  else if (a4 < 0x4000u)
  {
    if (a1 == 5)
    {
      if (a3 == 5)
      {
        return 1;
      }
    }

    else if (a3 != 5 && a3 == a1)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_6728AC()
{
  result = qword_E11AB8;
  if (!qword_E11AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11AB8);
  }

  return result;
}

uint64_t sub_672900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_672964()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_187(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_6729B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v54 = a4;
  v55 = a5;
  v11 = *v7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11B88);
  __chkstk_darwin(v12 - 8);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11B90);
  __chkstk_darwin(v15 - 8);
  v17 = (&v48 - v16);
  *(v7 + 4) = 0;
  swift_unknownObjectWeakInit();
  v18 = &v7[*(*v7 + 152)];
  *v18 = 0;
  *(v18 + 4) = 0x8000;
  *&v7[*(*v7 + 160)] = 0;
  if (_swiftEmptyArrayStorage >> 62 && sub_ABB060())
  {
    v19 = sub_5080B8(_swiftEmptyArrayStorage);
  }

  else
  {
    v19 = &_swiftEmptySetSingleton;
  }

  *&v7[*(*v7 + 168)] = v19;
  v20 = v11[10];
  v21 = v11[12];
  v53 = a1;
  v56 = v20;
  v57 = v21;
  v22 = sub_AB8390();
  *&v7[*(*v7 + 136)] = v22;
  v23 = qword_E0CE10;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_AB4BC0();
  __swift_project_value_buffer(v24, static Logger.libraryActionableState);

  v25 = sub_AB4BA0();
  v26 = sub_AB9F50();

  v27 = os_log_type_enabled(v25, v26);
  v52 = v22;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v50 = v14;
    v29 = v28;
    v30 = swift_slowAlloc();
    v49 = v17;
    v31 = v30;
    v58 = v22;
    v59 = v30;
    *v29 = 136446210;
    v32 = sub_AB9350();
    v51 = v11;
    v34 = a6;
    v35 = sub_500C84(v32, v33, &v59);
    v11 = v51;

    *(v29 + 4) = v35;
    a6 = v34;
    _os_log_impl(&dword_0, v25, v26, "Initializing item state: %{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    v17 = v49;

    v14 = v50;
  }

  v36 = v56;
  (*(*(v56 - 8) + 16))(&v7[*(*v7 + 128)], v53, v56);
  *(v7 + 2) = a2;
  *(v7 + 4) = v54;
  swift_unknownObjectWeakAssign();
  v37 = &v7[*(*v7 + 144)];
  *v37 = v55;
  *(v37 + 1) = a6;
  v38 = sub_AB8440();
  (*(*(v38 - 8) + 56))(v17, 1, 1, v38);
  v39 = sub_AB8240();
  (*(*(v39 - 8) + 56))(v14, 1, 1, v39);

  sub_66E970(v17, v14);
  sub_12E1C(v14, &qword_E11B88);
  sub_12E1C(v17, &qword_E11B90);
  v40 = MPCloudControllerCanShowCloudDownloadButtonsDidChangeNotification;
  v41 = objc_opt_self();
  v42 = v40;
  v43 = [v41 sharedCloudController];
  v44 = swift_allocObject();
  swift_weakInit();
  v45 = swift_allocObject();
  v45[2] = v36;
  v46 = v57;
  v45[3] = v11[11];
  v45[4] = v46;
  v45[5] = v11[13];
  v45[6] = v44;
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *&v7[*(*v7 + 160)] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v42, v43, 1, 1, sub_6739E0, v45);

  sub_6708A4();

  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_672F84(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v10[-v5];
  v8 = *(v7 + 128);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v8, v3);
  swift_beginAccess();
  (*(v4 + 24))(v1 + v8, a1, v3);
  swift_endAccess();
  sub_66CD8C(v6);
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_6730E4()
{
  result = qword_E11AD8[0];
  if (!qword_E11AD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_E11AD8);
  }

  return result;
}

uint64_t sub_673138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + *(**a1 + 152);
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

__n128 sub_6731DC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t __swift_memcpy10_8_0(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _s15ActionableStateOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFE && *(a1 + 10))
  {
    return (*a1 + 16382);
  }

  v3 = (*(a1 + 8) & 0x3E00 | (*(a1 + 8) >> 14) & 0xFFFFFE03 | (4 * (*(a1 + 8) >> 1))) ^ 0x3FFF;
  if (v3 >= 0x3FFD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t _s15ActionableStateOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *(result + 8) = 0;
    *result = a2 - 16382;
    if (a3 >= 0x3FFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0xFFF) - (a2 << 12);
      *result = 0;
      *(result + 8) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t sub_6732CC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 14;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_6732FC(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 0x101 | (a2 << 14);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x8000;
  }

  return result;
}

uint64_t sub_673348()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_673450()
{
  result = qword_E11B60;
  if (!qword_E11B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11B60);
  }

  return result;
}

uint64_t sub_6734A4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_6734DC()
{

  return swift_deallocObject();
}

uint64_t sub_673544(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_6735AC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC30) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  v3 = *(type metadata accessor for Actions.SortPlaylist.Context() + 24);
  v4 = sub_AB8CB0();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v0 + v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_673738(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC30) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17CF8;

  return sub_6726C8(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_49Tm_0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC30) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(type metadata accessor for Actions.SortPlaylist.Context() + 24);
  v4 = sub_AB8CB0();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_673A10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_673A70(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB08, &unk_B1EF10, "%{public}s: waiting for perform to return…");
}

uint64_t sub_673ACC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_671C18(a1, v4, v5, (v1 + 32));
}

uint64_t sub_673B90(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB08, &unk_B1EF10, "%{public}s: waiting for finish to return…");
}

uint64_t sub_673BEC(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB00, &unk_B183C0, "%{public}s: waiting for perform to return…");
}

uint64_t sub_673C48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_671CEC(a1, v4, v5, (v1 + 32));
}

uint64_t sub_673D0C(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB00, &unk_B183C0, "%{public}s: waiting for finish to return…");
}

uint64_t sub_673D8C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 160);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), v1);
  }

  if (*(v0 + 176))
  {
  }

  if (*(v0 + 192))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_673E50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_672600(a1, v4, v5, v1 + 32, (v1 + 288));
}

uint64_t objectdestroy_95Tm()
{

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 144);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), v1);
  }

  if (*(v0 + 160))
  {
  }

  if (*(v0 + 176))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_673FFC()
{
  v1 = sub_AB31C0();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_674084(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_AB31C0() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_17BD0;

  return sub_5F7A44(a1, a2, v2 + v7);
}

uint64_t sub_674168(uint64_t a1)
{
  v2 = v1[4];
  v6[2] = v1[3];
  v6[3] = v2;
  v3 = v1[6];
  v6[4] = v1[5];
  v6[5] = v3;
  v4 = v1[2];
  v6[0] = v1[1];
  v6[1] = v4;
  return sub_66216C(a1, v6, "%{public}s: waiting for perform to return…");
}

uint64_t sub_6741AC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_67420C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_6721E4(a1, v4, v5, (v1 + 32));
}

uint64_t sub_6742D0(uint64_t a1)
{
  v2 = v1[4];
  v6[2] = v1[3];
  v6[3] = v2;
  v3 = v1[6];
  v6[4] = v1[5];
  v6[5] = v3;
  v4 = v1[2];
  v6[0] = v1[1];
  v6[1] = v4;
  return sub_66216C(a1, v6, "%{public}s: waiting for finish to return…");
}

uint64_t sub_674318(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB50, &unk_B184B0, "%{public}s: waiting for perform to return…");
}

uint64_t sub_674378(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_6722B0(a1, v4, v5, (v1 + 32));
}

uint64_t sub_67443C(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB50, &unk_B184B0, "%{public}s: waiting for finish to return…");
}

uint64_t sub_674498(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB48, &unk_B1F260, "%{public}s: waiting for perform to return…");
}

uint64_t sub_6744F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_672384(a1, v4, v5, (v1 + 32));
}

uint64_t sub_6745B8(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB48, &unk_B1F260, "%{public}s: waiting for finish to return…");
}

uint64_t sub_674614(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB40, &unk_B18490, "%{public}s: waiting for perform to return…");
}

uint64_t sub_674670(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_672458(a1, v4, v5, (v1 + 32));
}

uint64_t sub_674734(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB40, &unk_B18490, "%{public}s: waiting for finish to return…");
}

uint64_t sub_674790(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB38, &unk_B1F2B0, "%{public}s: waiting for perform to return…");
}

uint64_t sub_6747EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_67252C(a1, v4, v5, (v1 + 32));
}

uint64_t sub_6748B0(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB38, &unk_B1F2B0, "%{public}s: waiting for finish to return…");
}

uint64_t sub_67490C(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB28, &unk_B18448, "%{public}s: waiting for perform to return…");
}

uint64_t sub_674968(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_671F68(a1, v4, v5, (v1 + 32));
}

uint64_t sub_674A2C(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB28, &unk_B18448, "%{public}s: waiting for finish to return…");
}

uint64_t sub_674A88(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB20, &unk_B18440, "%{public}s: waiting for perform to return…");
}

uint64_t sub_674AE4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_67203C(a1, v4, v5, (v1 + 32));
}

uint64_t sub_674BA8(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB20, &unk_B18440, "%{public}s: waiting for finish to return…");
}

uint64_t sub_674C04(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB18, &unk_B18400, "%{public}s: waiting for perform to return…");
}

uint64_t sub_674C60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_672110(a1, v4, v5, (v1 + 32));
}

uint64_t sub_674D24(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB18, &unk_B18400, "%{public}s: waiting for finish to return…");
}

uint64_t sub_674D80(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EAF8, &unk_B1F350, "%{public}s: waiting for perform to return…");
}

uint64_t sub_674DDC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_671DC0(a1, v4, v5, (v1 + 32));
}

uint64_t sub_674EA0(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EAF8, &unk_B1F350, "%{public}s: waiting for finish to return…");
}

uint64_t sub_674EFC(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EAF0, &unk_B18390, "%{public}s: waiting for perform to return…");
}

uint64_t sub_674F58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_671B44(a1, v4, v5, (v1 + 32));
}

uint64_t sub_67501C(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EAF0, &unk_B18390, "%{public}s: waiting for finish to return…");
}

uint64_t sub_675078(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EAE8, &unk_B1F3A0, "%{public}s: waiting for perform to return…");
}

uint64_t sub_6750D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_671A70(a1, v4, v5, (v1 + 32));
}

uint64_t sub_675198(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EAE8, &unk_B1F3A0, "%{public}s: waiting for finish to return…");
}

uint64_t sub_6751F4(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EAC8, &unk_B18348, "%{public}s: waiting for perform to return…");
}

uint64_t sub_675250(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_671E94(a1, v4, v5, (v1 + 32));
}

uint64_t sub_675314(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EAC8, &unk_B18348, "%{public}s: waiting for finish to return…");
}

uint64_t sub_6753DC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAB0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17CF8;

  return sub_671900(a1, v6, v7, v1 + v5);
}

uint64_t sub_67556C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAB8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17CF8;

  return sub_6719B8(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_288Tm(uint64_t *a1, uint64_t a2, void (*a3)(void))
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = sub_AB4410();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  a3(0);

  return swift_deallocObject();
}

uint64_t sub_6758BC(uint64_t a1)
{
  v2 = *(v1 + 128);
  v7[6] = *(v1 + 112);
  v7[7] = v2;
  v8 = *(v1 + 144);
  v3 = *(v1 + 64);
  v7[2] = *(v1 + 48);
  v7[3] = v3;
  v4 = *(v1 + 96);
  v7[4] = *(v1 + 80);
  v7[5] = v4;
  v5 = *(v1 + 32);
  v7[0] = *(v1 + 16);
  v7[1] = v5;
  return sub_661F10(a1, v7, "%{public}s: waiting for perform to return…");
}

uint64_t sub_675910()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 32);
  if (v1 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_675990(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_671824(a1, v4, v5, v1 + 32);
}

uint64_t sub_675A54(uint64_t a1)
{
  v2 = *(v1 + 128);
  v7[6] = *(v1 + 112);
  v7[7] = v2;
  v8 = *(v1 + 144);
  v3 = *(v1 + 64);
  v7[2] = *(v1 + 48);
  v7[3] = v3;
  v4 = *(v1 + 96);
  v7[4] = *(v1 + 80);
  v7[5] = v4;
  v5 = *(v1 + 32);
  v7[0] = *(v1 + 16);
  v7[1] = v5;
  return sub_661F10(a1, v7, "%{public}s: waiting for finish to return…");
}

uint64_t Library.ContentFilterOption.id.getter(char a1)
{
  if (!a1)
  {
    return 7105633;
  }

  if (a1 == 1)
  {
    return 0x657469726F766166;
  }

  return 0x64616F6C6E776F64;
}

uint64_t sub_675BD4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x657469726F766166;
  if (v2 != 1)
  {
    v3 = 0x64616F6C6E776F64;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 7105633;
  }

  if (v2)
  {
    v5 = 0xE900000000000073;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  v6 = 0x657469726F766166;
  if (*a2 != 1)
  {
    v6 = 0x64616F6C6E776F64;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 7105633;
  }

  if (*a2)
  {
    v8 = 0xE900000000000073;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_ABB3C0();
  }

  return v9 & 1;
}

uint64_t sub_675CC0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore7LibraryO19ContentFilterOptionO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_675CF0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0x657469726F766166;
  if (v2 != 1)
  {
    v4 = 0x64616F6C6E776F64;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 7105633;
  }

  if (!v5)
  {
    v3 = 0xE900000000000073;
  }

  *a1 = v6;
  a1[1] = v3;
}

Swift::Int sub_675D50()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_675DF4()
{
  sub_AB93F0();
}

Swift::Int sub_675E84()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

void *Optional<A>.convertToSet.getter(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      return 0;
    }
  }

  else if (!a1)
  {

    return &_swiftEmptySetSingleton;
  }

  v2 = sub_ABB3C0();

  if (v2)
  {
    return &_swiftEmptySetSingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11BB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = a1;
  v5 = sub_508324(inited);
  swift_setDeallocating();
  return v5;
}

uint64_t Library.Context.musicLibrary.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Library.Context.useDownloadedContentOnly.setter(char a1)
{
  result = type metadata accessor for Library.Context();
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t Library.Context.sortOption.setter(char a1)
{
  result = type metadata accessor for Library.Context();
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t Library.Context.filterOption.setter(char a1)
{
  result = type metadata accessor for Library.Context();
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t Library.Context.text.getter()
{
  v1 = *(v0 + *(type metadata accessor for Library.Context() + 60));

  return v1;
}

uint64_t Library.Context.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Library.Context() + 60));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Library.Context.playlistVariants.getter()
{
  type metadata accessor for Library.Context();
}

uint64_t Library.Context.playlistVariants.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Library.Context() + 64);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Library.Context.isCompilation.setter(char a1)
{
  result = type metadata accessor for Library.Context();
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t Library.Context.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_AB8510();
  *a1 = sub_AB8500();
  v2 = type metadata accessor for Library.Context();
  v3 = v2[5];
  v4 = sub_AB8770();
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[6];
  v6 = sub_AB88F0();
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = v2[7];
  v8 = sub_AB46C0();
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  v9 = v2[8];
  v10 = sub_AB87A0();
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = v2[9];
  v12 = sub_AB8E20();
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = v2[10];
  v14 = sub_AB46B0();
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  v15 = v2[11];
  v16 = sub_AB4710();
  result = (*(*(v16 - 8) + 56))(a1 + v15, 1, 1, v16);
  *(a1 + v2[12]) = 0;
  *(a1 + v2[13]) = 2;
  *(a1 + v2[14]) = 3;
  v18 = (a1 + v2[15]);
  *v18 = 0;
  v18[1] = 0;
  *(a1 + v2[16]) = _swiftEmptyArrayStorage;
  *(a1 + v2[17]) = 2;
  return result;
}

uint64_t Library.Context.with<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a1;
  v37 = sub_AB4710();
  v34 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_AB46B0();
  v35 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_AB8E20();
  v38 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_AB87A0();
  v41 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_AB46C0();
  v44 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_AB88F0();
  v47 = *(v50 - 8);
  __chkstk_darwin(v50);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_AB8770();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_ABA9C0();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v33 - v21;
  v51 = a3;
  sub_67A92C(v53, a3);
  v53 = v17;
  v23 = *(v17 + 16);
  v23(v22, v52, v16);
  v52 = *(a2 - 8);
  if ((*(v52 + 48))(v22, 1, a2) != 1)
  {
    v33 = v16;
    v23(v20, v22, v16);
    v24 = a2;
    v25 = v20;
    if (swift_dynamicCast())
    {
      v26 = *(type metadata accessor for Library.Context() + 20);
      v27 = v51;
      sub_12E1C(v51 + v26, &qword_E0EC98);
      (*(v13 + 32))(v27 + v26, v15, v12);
      (*(v13 + 56))(v27 + v26, 0, 1, v12);
LABEL_17:
      (*(v52 + 8))(v25, v24);
      v16 = v33;
      return (*(v53 + 8))(v22, v16);
    }

    v28 = v50;
    if (swift_dynamicCast())
    {
      v29 = *(type metadata accessor for Library.Context() + 24);
      v30 = v51;
      sub_12E1C(v51 + v29, &qword_E0F570);
      v31 = v47;
    }

    else
    {
      v11 = v48;
      v28 = v49;
      if (swift_dynamicCast())
      {
        v29 = *(type metadata accessor for Library.Context() + 28);
        v30 = v51;
        sub_12E1C(v51 + v29, &qword_E11BB8);
        v31 = v44;
      }

      else
      {
        v11 = v45;
        v28 = v46;
        if (swift_dynamicCast())
        {
          v29 = *(type metadata accessor for Library.Context() + 32);
          v30 = v51;
          sub_12E1C(v51 + v29, &qword_E11BC0);
          v31 = v41;
        }

        else
        {
          v11 = v42;
          v28 = v43;
          if (swift_dynamicCast())
          {
            v29 = *(type metadata accessor for Library.Context() + 36);
            v30 = v51;
            sub_12E1C(v51 + v29, &qword_E10B00);
            v31 = v38;
          }

          else
          {
            v11 = v39;
            v28 = v40;
            if (swift_dynamicCast())
            {
              v29 = *(type metadata accessor for Library.Context() + 40);
              v30 = v51;
              sub_12E1C(v51 + v29, &qword_E0F6C8);
              v31 = v35;
            }

            else
            {
              v11 = v36;
              v28 = v37;
              if (!swift_dynamicCast())
              {
                goto LABEL_17;
              }

              v29 = *(type metadata accessor for Library.Context() + 44);
              v30 = v51;
              sub_12E1C(v51 + v29, &qword_E0F698);
              v31 = v34;
            }
          }
        }
      }
    }

    (*(v31 + 32))(v30 + v29, v11, v28);
    (*(v31 + 56))(v30 + v29, 0, 1, v28);
    goto LABEL_17;
  }

  return (*(v53 + 8))(v22, v16);
}

uint64_t Library.Context.with(compilation:)@<X0>(uint64_t a1@<X8>)
{
  sub_67A92C(v1, a1);
  result = type metadata accessor for Library.Context();
  *(a1 + *(result + 68)) = 1;
  return result;
}

uint64_t Library.Context.with(sortOption:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_67A92C(v2, a2);
  result = type metadata accessor for Library.Context();
  *(a2 + *(result + 52)) = a1;
  return result;
}

uint64_t Library.Context.with(filterOption:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_67A92C(v2, a2);
  result = type metadata accessor for Library.Context();
  *(a2 + *(result + 56)) = a1;
  return result;
}

uint64_t Library.Context.with(filterText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_67A92C(v3, a3);
  v7 = (a3 + *(type metadata accessor for Library.Context() + 60));

  *v7 = a1;
  v7[1] = a2;
  return result;
}

Swift::Int Library.Context.SortOption.hashValue.getter(char a1)
{
  sub_ABB5C0();
  sub_ABB5D0(0);
  sub_ABB5E0(a1 & 1);
  return sub_ABB610();
}

Swift::Int sub_6776E8()
{
  v1 = *v0;
  sub_ABB5C0();
  sub_ABB5D0(0);
  sub_ABB5E0(v1);
  return sub_ABB610();
}

void sub_67773C()
{
  v1 = *v0;
  sub_ABB5D0(0);
  sub_ABB5E0(v1);
}

Swift::Int sub_67777C()
{
  v1 = *v0;
  sub_ABB5C0();
  sub_ABB5D0(0);
  sub_ABB5E0(v1);
  return sub_ABB610();
}

void Library.Context.hash(into:)()
{
  v1 = v0;
  v2 = sub_AB8CB0();
  v3 = *(v2 - 8);
  v99 = v2;
  v100 = v3;
  __chkstk_darwin(v2);
  v82 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_AB4710();
  v97 = *(v102 - 8);
  __chkstk_darwin(v102);
  v81 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F698);
  __chkstk_darwin(v6 - 8);
  v98 = &v75 - v7;
  v95 = sub_AB46B0();
  v101 = *(v95 - 8);
  __chkstk_darwin(v95);
  v80 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F6C8);
  __chkstk_darwin(v9 - 8);
  v96 = &v75 - v10;
  v91 = sub_AB8E20();
  v94 = *(v91 - 8);
  __chkstk_darwin(v91);
  v79 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10B00);
  __chkstk_darwin(v12 - 8);
  v93 = &v75 - v13;
  v88 = sub_AB87A0();
  v92 = *(v88 - 8);
  __chkstk_darwin(v88);
  v78 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11BC0);
  __chkstk_darwin(v15 - 8);
  v87 = &v75 - v16;
  v17 = sub_AB46C0();
  v89 = *(v17 - 8);
  v90 = v17;
  __chkstk_darwin(v17);
  v77 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11BB8);
  __chkstk_darwin(v19 - 8);
  v86 = &v75 - v20;
  v21 = sub_AB88F0();
  v84 = *(v21 - 8);
  v85 = v21;
  __chkstk_darwin(v21);
  v76 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F570);
  __chkstk_darwin(v23 - 8);
  v83 = &v75 - v24;
  v25 = sub_AB8770();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC98);
  __chkstk_darwin(v29 - 8);
  v31 = &v75 - v30;
  v103 = *v0;
  sub_AB8510();
  sub_67B68C(&qword_E11BC8, &type metadata accessor for MusicLibrary);
  sub_AB90E0();
  v32 = type metadata accessor for Library.Context();
  sub_15F84(v0 + v32[5], v31, &qword_E0EC98);
  if ((*(v26 + 48))(v31, 1, v25) == 1)
  {
    sub_ABB5E0(0);
  }

  else
  {
    (*(v26 + 32))(v28, v31, v25);
    sub_ABB5E0(1u);
    sub_67B68C(&qword_E11BD0, &type metadata accessor for Album);
    sub_AB90E0();
    (*(v26 + 8))(v28, v25);
  }

  v33 = v83;
  sub_15F84(v0 + v32[6], v83, &qword_E0F570);
  v35 = v84;
  v34 = v85;
  v36 = (*(v84 + 48))(v33, 1, v85);
  v38 = v86;
  v37 = v87;
  if (v36 == 1)
  {
    sub_ABB5E0(0);
  }

  else
  {
    v39 = v33;
    v40 = v76;
    (*(v35 + 32))(v76, v39, v34);
    sub_ABB5E0(1u);
    sub_67B68C(&qword_E11BD8, &type metadata accessor for Artist);
    sub_AB90E0();
    (*(v35 + 8))(v40, v34);
  }

  v41 = v93;
  v42 = v90;
  sub_15F84(v0 + v32[7], v38, &qword_E11BB8);
  v43 = v89;
  if ((*(v89 + 48))(v38, 1, v42) == 1)
  {
    sub_ABB5E0(0);
  }

  else
  {
    v44 = v77;
    (*(v43 + 32))(v77, v38, v42);
    sub_ABB5E0(1u);
    sub_67B68C(&qword_E11BE0, &type metadata accessor for Composer);
    sub_AB90E0();
    (*(v43 + 8))(v44, v42);
  }

  v45 = v88;
  sub_15F84(v1 + v32[8], v37, &qword_E11BC0);
  v46 = v92;
  if ((*(v92 + 48))(v37, 1, v45) == 1)
  {
    sub_ABB5E0(0);
  }

  else
  {
    v47 = v78;
    (*(v46 + 32))(v78, v37, v45);
    sub_ABB5E0(1u);
    sub_67B68C(&qword_E11BE8, &type metadata accessor for Genre);
    sub_AB90E0();
    (*(v46 + 8))(v47, v45);
  }

  v48 = v95;
  v49 = v97;
  sub_15F84(v1 + v32[9], v41, &qword_E10B00);
  v50 = v94;
  v51 = v91;
  if ((*(v94 + 48))(v41, 1, v91) == 1)
  {
    sub_ABB5E0(0);
  }

  else
  {
    v52 = v79;
    (*(v50 + 32))(v79, v41, v51);
    sub_ABB5E0(1u);
    sub_67B68C(&qword_E11BF0, &type metadata accessor for Playlist);
    sub_AB90E0();
    (*(v50 + 8))(v52, v51);
  }

  v53 = v96;
  sub_15F84(v1 + v32[10], v96, &qword_E0F6C8);
  if ((*(v101 + 6))(v53, 1, v48) == 1)
  {
    sub_ABB5E0(0);
  }

  else
  {
    v54 = v101;
    v55 = v80;
    (*(v101 + 4))(v80, v53, v48);
    sub_ABB5E0(1u);
    sub_67B68C(&qword_E11BF8, &type metadata accessor for TVShow);
    sub_AB90E0();
    (*(v54 + 1))(v55, v48);
  }

  v56 = v98;
  sub_15F84(v1 + v32[11], v98, &qword_E0F698);
  if ((*(v49 + 48))(v56, 1, v102) == 1)
  {
    sub_ABB5E0(0);
  }

  else
  {
    v57 = v81;
    v58 = v102;
    (*(v49 + 32))(v81, v56, v102);
    sub_ABB5E0(1u);
    sub_67B68C(&qword_E11C00, &type metadata accessor for TVSeason);
    sub_AB90E0();
    (*(v49 + 8))(v57, v58);
  }

  v59 = v99;
  sub_ABB5E0(*(v1 + v32[12]));
  v60 = *(v1 + v32[13]);
  if (v60 == 2)
  {
    v61 = 0;
  }

  else
  {
    sub_ABB5E0(1u);
    sub_ABB5D0(0);
    v61 = v60 & 1;
  }

  sub_ABB5E0(v61);
  v62 = *(v1 + v32[14]);
  if (v62 == 3)
  {
    sub_ABB5E0(0);
    v63 = v82;
  }

  else
  {
    sub_ABB5E0(1u);
    v63 = v82;
    sub_AB93F0();
  }

  if (*(v1 + v32[15] + 8))
  {
    sub_ABB5E0(1u);
    sub_AB93F0();
  }

  else
  {
    sub_ABB5E0(0);
  }

  v101 = v32;
  v102 = v1;
  v64 = *(v1 + v32[16]);
  sub_ABB5D0(*(v64 + 16));
  v65 = *(v64 + 16);
  if (v65)
  {
    v66 = v63;
    v67 = v100 + 16;
    v68 = *(v100 + 16);
    v69 = v64 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
    v70 = *(v100 + 72);
    v71 = (v100 + 8);
    do
    {
      v72 = v67;
      v68(v66, v69, v59);
      sub_67B68C(&qword_E11C08, &type metadata accessor for Playlist.Variant);
      sub_AB90E0();
      (*v71)(v66, v59);
      v67 = v72;
      v69 += v70;
      --v65;
    }

    while (v65);
  }

  v73 = *(v102 + v101[17]);
  if (v73 == 2)
  {
    v74 = 0;
  }

  else
  {
    sub_ABB5E0(1u);
    v74 = v73 & 1;
  }

  sub_ABB5E0(v74);
}

Swift::Int Library.Context.hashValue.getter()
{
  sub_ABB5C0();
  Library.Context.hash(into:)();
  return sub_ABB610();
}

Swift::Int sub_6787C4()
{
  sub_ABB5C0();
  Library.Context.hash(into:)();
  return sub_ABB610();
}

uint64_t sub_678800()
{
  v0 = type metadata accessor for Library.Context();
  __swift_allocate_value_buffer(v0, qword_E11B98);
  v1 = __swift_project_value_buffer(v0, qword_E11B98);
  sub_AB8510();
  *v1 = sub_AB8500();
  v2 = v0[5];
  v3 = sub_AB8770();
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  v4 = v0[6];
  v5 = sub_AB88F0();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = v0[7];
  v7 = sub_AB46C0();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  v8 = v0[8];
  v9 = sub_AB87A0();
  (*(*(v9 - 8) + 56))(&v1[v8], 1, 1, v9);
  v10 = v0[9];
  v11 = sub_AB8E20();
  (*(*(v11 - 8) + 56))(&v1[v10], 1, 1, v11);
  v12 = v0[10];
  v13 = sub_AB46B0();
  (*(*(v13 - 8) + 56))(&v1[v12], 1, 1, v13);
  v14 = v0[11];
  v15 = sub_AB4710();
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

uint64_t sub_678A84@<X0>(uint64_t a1@<X8>)
{
  if (qword_E0CE18 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Library.Context();
  v3 = __swift_project_value_buffer(v2, qword_E11B98);

  return sub_67A92C(v3, a1);
}

uint64_t sub_678AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_67B68C(&qword_E11C28, type metadata accessor for Library.Context);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.libraryContext.getter()
{
  sub_67A990();

  return sub_AB6250();
}

uint64_t EnvironmentValues.libraryContext.setter(uint64_t a1)
{
  v2 = type metadata accessor for Library.Context();
  __chkstk_darwin(v2 - 8);
  sub_67A92C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_67A990();
  sub_AB6260();
  return sub_67A9E4(a1);
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
  v4[4] = sub_67A990();
  sub_AB6250();
  return sub_678D84;
}

void sub_678D84(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_67A92C((*a1)[3], (*a1)[2]);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_67A92C(v3[2], v3[1]);
    sub_AB6260();
    sub_67A9E4(v6);
  }

  else
  {
    sub_AB6260();
  }

  sub_67A9E4(v4);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

uint64_t View.libraryContext(_:)()
{
  swift_getKeyPath();
  sub_AB6FE0();
}

uint64_t sub_678EC8(uint64_t a1)
{
  v2 = type metadata accessor for Library.Context();
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_67A92C(a1, &v9 - v6);
  sub_67A92C(v7, v5);
  sub_67A990();
  sub_AB6260();
  return sub_67A9E4(v7);
}

uint64_t MusicLibraryRequest.apply(_:)(uint64_t a1, uint64_t a2)
{

  sub_AB7E30();
  v4 = *(a1 + *(type metadata accessor for Library.Context() + 48));

  return MusicLibraryRequest.includeOnlyDownloadedContent.setter(v4, a2);
}

uint64_t _s9MusicCore7LibraryO7ContextV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v152 = sub_AB4710();
  v153 = *(v152 - 8);
  __chkstk_darwin(v152);
  v147 = &v144 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F698);
  __chkstk_darwin(v5 - 8);
  v148 = &v144 - v6;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11D58);
  __chkstk_darwin(v150);
  v151 = &v144 - v7;
  v158 = sub_AB46B0();
  v159 = *(v158 - 8);
  __chkstk_darwin(v158);
  v149 = &v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F6C8);
  __chkstk_darwin(v9 - 8);
  v156 = &v144 - v10;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11D60);
  __chkstk_darwin(v155);
  v157 = &v144 - v11;
  v12 = sub_AB8E20();
  v13 = *(v12 - 8);
  v164 = v12;
  v165 = v13;
  __chkstk_darwin(v12);
  v154 = &v144 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10B00);
  __chkstk_darwin(v15 - 8);
  v162 = &v144 - v16;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11D68);
  __chkstk_darwin(v161);
  v163 = &v144 - v17;
  v169 = sub_AB87A0();
  v171 = *(v169 - 8);
  __chkstk_darwin(v169);
  v160 = &v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11BC0);
  __chkstk_darwin(v19 - 8);
  v177 = &v144 - v20;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11D70);
  __chkstk_darwin(v167);
  v168 = &v144 - v21;
  v22 = sub_AB46C0();
  v174 = *(v22 - 8);
  v175 = v22;
  __chkstk_darwin(v22);
  v166 = &v144 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11BB8);
  __chkstk_darwin(v24 - 8);
  v170 = &v144 - v25;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11D78);
  __chkstk_darwin(v173);
  v180 = &v144 - v26;
  v179 = sub_AB88F0();
  v181 = *(v179 - 8);
  __chkstk_darwin(v179);
  v172 = &v144 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F570);
  __chkstk_darwin(v28 - 8);
  v176 = &v144 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11D80);
  __chkstk_darwin(v30);
  v178 = &v144 - v31;
  v32 = sub_AB8770();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = &v144 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC98);
  __chkstk_darwin(v36 - 8);
  v38 = &v144 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11D88);
  __chkstk_darwin(v39);
  v41 = &v144 - v40;
  sub_AB8510();
  if ((sub_AB8340() & 1) == 0)
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
  sub_15F84(v43 + v44, v41, &qword_E0EC98);
  sub_15F84(v182 + v44, &v41[v45], &qword_E0EC98);
  v46 = *(v33 + 48);
  if (v46(v41, 1, v32) == 1)
  {
    if (v46(&v41[v45], 1, v32) == 1)
    {
      sub_12E1C(v41, &qword_E0EC98);
      goto LABEL_9;
    }

LABEL_7:
    v47 = &qword_E11D88;
    v48 = v41;
LABEL_44:
    sub_12E1C(v48, v47);
    return 0;
  }

  sub_15F84(v41, v38, &qword_E0EC98);
  if (v46(&v41[v45], 1, v32) == 1)
  {
    (*(v33 + 8))(v38, v32);
    goto LABEL_7;
  }

  (*(v33 + 32))(v35, &v41[v45], v32);
  sub_67B68C(&qword_E11DB8, &type metadata accessor for Album);
  v49 = sub_AB91C0();
  v50 = *(v33 + 8);
  v50(v35, v32);
  v50(v38, v32);
  sub_12E1C(v41, &qword_E0EC98);
  if ((v49 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v51 = v145;
  v52 = v145[6];
  v53 = *(v30 + 48);
  v54 = v178;
  sub_15F84(v146 + v52, v178, &qword_E0F570);
  v55 = v182 + v52;
  v56 = v182;
  sub_15F84(v55, v54 + v53, &qword_E0F570);
  v57 = *(v181 + 48);
  v58 = v179;
  if (v57(v54, 1, v179) == 1)
  {
    v59 = v57(v54 + v53, 1, v58);
    v60 = v177;
    v61 = v180;
    if (v59 == 1)
    {
      sub_12E1C(v54, &qword_E0F570);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v62 = v176;
  sub_15F84(v54, v176, &qword_E0F570);
  v63 = v57(v54 + v53, 1, v58);
  v61 = v180;
  if (v63 == 1)
  {
    (*(v181 + 8))(v62, v58);
LABEL_14:
    v47 = &qword_E11D80;
    v48 = v54;
    goto LABEL_44;
  }

  v64 = v181;
  v65 = v54 + v53;
  v66 = v51;
  v67 = v54;
  v68 = v172;
  (*(v181 + 32))(v172, v65, v58);
  sub_67B68C(&qword_E11DB0, &type metadata accessor for Artist);
  v69 = sub_AB91C0();
  v70 = *(v64 + 8);
  v70(v68, v58);
  v70(v62, v58);
  v71 = v67;
  v51 = v66;
  v60 = v177;
  sub_12E1C(v71, &qword_E0F570);
  if ((v69 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v72 = v51[7];
  v73 = v56;
  v74 = *(v173 + 48);
  sub_15F84(v146 + v72, v61, &qword_E11BB8);
  sub_15F84(v73 + v72, v61 + v74, &qword_E11BB8);
  v76 = v174;
  v75 = v175;
  v77 = *(v174 + 48);
  if (v77(v61, 1, v175) == 1)
  {
    if (v77(v61 + v74, 1, v75) == 1)
    {
      sub_12E1C(v61, &qword_E11BB8);
      goto LABEL_23;
    }

LABEL_21:
    v47 = &qword_E11D78;
LABEL_43:
    v48 = v61;
    goto LABEL_44;
  }

  v78 = v170;
  sub_15F84(v61, v170, &qword_E11BB8);
  if (v77(v61 + v74, 1, v75) == 1)
  {
    (*(v76 + 8))(v78, v75);
    goto LABEL_21;
  }

  v79 = v61 + v74;
  v80 = v166;
  (*(v76 + 32))(v166, v79, v75);
  sub_67B68C(&qword_E11DA8, &type metadata accessor for Composer);
  v81 = sub_AB91C0();
  v82 = *(v76 + 8);
  v82(v80, v75);
  v82(v78, v75);
  sub_12E1C(v61, &qword_E11BB8);
  if ((v81 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  v83 = v51[8];
  v61 = v168;
  v84 = *(v167 + 48);
  sub_15F84(v146 + v83, v168, &qword_E11BC0);
  sub_15F84(v182 + v83, v61 + v84, &qword_E11BC0);
  v85 = *(v171 + 48);
  v86 = v169;
  if (v85(v61, 1, v169) == 1)
  {
    if (v85(v61 + v84, 1, v86) == 1)
    {
      sub_12E1C(v61, &qword_E11BC0);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  sub_15F84(v61, v60, &qword_E11BC0);
  if (v85(v61 + v84, 1, v86) == 1)
  {
    (*(v171 + 8))(v60, v86);
LABEL_28:
    v47 = &qword_E11D70;
    goto LABEL_43;
  }

  v87 = v60;
  v88 = v171;
  v89 = v61 + v84;
  v90 = v160;
  (*(v171 + 32))(v160, v89, v86);
  sub_67B68C(&qword_E11DA0, &type metadata accessor for Genre);
  v91 = sub_AB91C0();
  v92 = *(v88 + 8);
  v92(v90, v86);
  v92(v87, v86);
  sub_12E1C(v61, &qword_E11BC0);
  if ((v91 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  v93 = v51[9];
  v94 = *(v161 + 48);
  v61 = v163;
  sub_15F84(v146 + v93, v163, &qword_E10B00);
  sub_15F84(v182 + v93, v61 + v94, &qword_E10B00);
  v95 = v164;
  v96 = *(v165 + 48);
  if (v96(v61, 1, v164) == 1)
  {
    if (v96(v61 + v94, 1, v95) == 1)
    {
      sub_12E1C(v61, &qword_E10B00);
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  sub_15F84(v61, v162, &qword_E10B00);
  if (v96(v61 + v94, 1, v95) == 1)
  {
    (*(v165 + 8))(v162, v95);
LABEL_35:
    v47 = &qword_E11D68;
    goto LABEL_43;
  }

  v97 = v165;
  v98 = v61 + v94;
  v99 = v154;
  (*(v165 + 32))(v154, v98, v95);
  sub_67B68C(&qword_E111B0, &type metadata accessor for Playlist);
  v100 = v162;
  v101 = sub_AB91C0();
  v102 = *(v97 + 8);
  v102(v99, v95);
  v102(v100, v95);
  sub_12E1C(v61, &qword_E10B00);
  if ((v101 & 1) == 0)
  {
    return 0;
  }

LABEL_37:
  v103 = v51[10];
  v104 = *(v155 + 48);
  v61 = v157;
  sub_15F84(v146 + v103, v157, &qword_E0F6C8);
  sub_15F84(v182 + v103, v61 + v104, &qword_E0F6C8);
  v105 = *(v159 + 48);
  v106 = v158;
  if (v105(v61, 1, v158) == 1)
  {
    if (v105(v61 + v104, 1, v106) == 1)
    {
      sub_12E1C(v61, &qword_E0F6C8);
      goto LABEL_48;
    }

    goto LABEL_42;
  }

  sub_15F84(v61, v156, &qword_E0F6C8);
  if (v105(v61 + v104, 1, v106) == 1)
  {
    (*(v159 + 8))(v156, v106);
LABEL_42:
    v47 = &qword_E11D60;
    goto LABEL_43;
  }

  v108 = v159;
  v109 = v61 + v104;
  v110 = v149;
  (*(v159 + 32))(v149, v109, v106);
  sub_67B68C(&qword_E11D98, &type metadata accessor for TVShow);
  v111 = v156;
  v112 = sub_AB91C0();
  v113 = *(v108 + 8);
  v113(v110, v106);
  v113(v111, v106);
  sub_12E1C(v61, &qword_E0F6C8);
  if ((v112 & 1) == 0)
  {
    return 0;
  }

LABEL_48:
  v114 = v51[11];
  v115 = *(v150 + 48);
  v116 = v151;
  sub_15F84(v146 + v114, v151, &qword_E0F698);
  sub_15F84(v182 + v114, v116 + v115, &qword_E0F698);
  v117 = *(v153 + 48);
  v118 = v152;
  if (v117(v116, 1, v152) == 1)
  {
    if (v117(v116 + v115, 1, v118) == 1)
    {
      sub_12E1C(v116, &qword_E0F698);
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  v119 = v148;
  sub_15F84(v116, v148, &qword_E0F698);
  if (v117(v116 + v115, 1, v118) == 1)
  {
    (*(v153 + 8))(v119, v118);
LABEL_53:
    v47 = &qword_E11D58;
    v48 = v116;
    goto LABEL_44;
  }

  v120 = v153;
  v121 = v116 + v115;
  v122 = v147;
  (*(v153 + 32))(v147, v121, v118);
  sub_67B68C(&qword_E11D90, &type metadata accessor for TVSeason);
  v123 = sub_AB91C0();
  v124 = *(v120 + 8);
  v124(v122, v118);
  v124(v119, v118);
  sub_12E1C(v116, &qword_E0F698);
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
        v135 = sub_ABB3C0();

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
      if (v140 && (*v137 == *v139 && v138 == v140 || (sub_ABB3C0() & 1) != 0))
      {
LABEL_87:
        if (sub_5D4784(*(v146 + v145[16]), *(v182 + v145[16])))
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
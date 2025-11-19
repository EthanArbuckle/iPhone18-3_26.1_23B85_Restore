uint64_t sub_18B507444@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v11 = v1;
  sub_18B5144D4(&qword_1EA9C3BB0, type metadata accessor for RoutingControllerInputPickerViewModel.State);
  sub_18B6C421C();

  v3 = *(v1 + 32);
  v4 = *(v11 + 40);
  v5 = *(v11 + 48);
  v6 = *(v11 + 56);
  v7 = *(v11 + 64);
  v8 = *(v11 + 72);
  v9 = *(v11 + 80);
  result = sub_18B4B20CC(v3, v4, v5, v6, v7, v8, v9);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  return result;
}

void sub_18B507534(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v19[-v4];
  v6 = *(a1 + 48);
  if (v6 != 255)
  {
    v7 = *(a1 + 16);
    v23 = *a1;
    v24 = v7;
    v25 = *(a1 + 32);

    sub_18B4A63EC(a1, &v20, &qword_1EA9C43E8);
    sub_18B507F74(a1);

    if (v6)
    {
      v8 = sub_18B6C584C();
      (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
      v9 = swift_allocObject();
      swift_weakInit();
      sub_18B6C580C();

      v10 = sub_18B6C57FC();
      v11 = swift_allocObject();
      v12 = MEMORY[0x1E69E85E0];
      v11[2] = v10;
      v11[3] = v12;
      v11[4] = v9;

      sub_18B5283A4(0, 0, v5, &unk_18B6E9820, v11);
    }

    else
    {
      v20 = v23;
      v21 = v24;
      v22 = v25;
      v26 = v23;
      v27 = v24;
      v28 = v25;
      v13 = sub_18B6C584C();
      (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
      v14 = swift_allocObject();
      swift_weakInit();
      sub_18B6C580C();
      sub_18B4C41CC(&v26, v19);
      sub_18B4C41CC(&v27, v19);
      sub_18B4C41CC(&v28, v19);

      v15 = sub_18B6C57FC();
      v16 = swift_allocObject();
      v17 = MEMORY[0x1E69E85E0];
      *(v16 + 16) = v15;
      *(v16 + 24) = v17;
      v18 = v21;
      *(v16 + 32) = v20;
      *(v16 + 48) = v18;
      *(v16 + 64) = v22;
      *(v16 + 80) = v14;

      sub_18B5280B4(0, 0, v5, &unk_18B6E9810, v16);
    }
  }
}

uint64_t sub_18B50781C()
{
  swift_getKeyPath();
  sub_18B5144D4(&qword_1EA9C3BB0, type metadata accessor for RoutingControllerInputPickerViewModel.State);
  sub_18B6C421C();

  return sub_18B6C450C();
}

uint64_t sub_18B5078C8()
{
  sub_18B6C5DCC();
  MEMORY[0x18CFF79C0](0);
  return sub_18B6C5DEC();
}

uint64_t sub_18B507934()
{
  sub_18B6C5DCC();
  MEMORY[0x18CFF79C0](0);
  return sub_18B6C5DEC();
}

uint64_t sub_18B50799C()
{
  swift_getKeyPath();
  sub_18B5144D4(&qword_1EA9C3BB0, type metadata accessor for RoutingControllerInputPickerViewModel.State);
  sub_18B6C421C();

  return sub_18B6C450C();
}

uint64_t sub_18B507A40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B5144D4(&qword_1EA9C3BB0, type metadata accessor for RoutingControllerInputPickerViewModel.State);
  sub_18B6C421C();

  *a2 = *(v3 + 16);
  return sub_18B6C450C();
}

uint64_t sub_18B507AEC(uint64_t a1)
{
  if (sub_18B4F3E24(*(v1 + 16), a1))
  {
    *(v1 + 16) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_18B5144D4(&qword_1EA9C3BB0, type metadata accessor for RoutingControllerInputPickerViewModel.State);
    sub_18B6C420C();
  }
}

uint64_t sub_18B507C30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B5144D4(&qword_1EA9C3BB0, type metadata accessor for RoutingControllerInputPickerViewModel.State);
  sub_18B6C421C();

  *a2 = *(v3 + 24);
  return sub_18B6C450C();
}

uint64_t sub_18B507D08(uint64_t a1)
{
  if (sub_18B4F3EB4(*(v1 + 24), a1))
  {
    *(v1 + 24) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_18B5144D4(&qword_1EA9C3BB0, type metadata accessor for RoutingControllerInputPickerViewModel.State);
    sub_18B6C420C();
  }
}

uint64_t sub_18B507E4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B5144D4(&qword_1EA9C3BB0, type metadata accessor for RoutingControllerInputPickerViewModel.State);
  sub_18B6C421C();

  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  v7 = *(v3 + 56);
  v8 = *(v3 + 64);
  v9 = *(v3 + 72);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  v10 = *(v3 + 80);
  *(a2 + 48) = v10;
  return sub_18B4B20CC(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_18B507F10(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v4[2] = *(a1 + 32);
  v5 = *(a1 + 48);
  sub_18B4A63EC(v4, v3, &qword_1EA9C43E8);
  return sub_18B507F74(v4);
}

uint64_t sub_18B507F74(uint64_t a1)
{
  v3 = *(v1 + 48);
  v15[0] = *(v1 + 32);
  v15[1] = v3;
  v15[2] = *(v1 + 64);
  v16 = *(v1 + 80);
  sub_18B4A63EC(v15, v14, &qword_1EA9C43E8);
  v4 = sub_18B513BD8(v15, a1);
  sub_18B4A6454(v15, &qword_1EA9C43E8);
  if (v4)
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    v14[0] = v1;
    sub_18B5144D4(&qword_1EA9C3BB0, type metadata accessor for RoutingControllerInputPickerViewModel.State);
    sub_18B6C420C();
    sub_18B4A6454(a1, &qword_1EA9C43E8);
  }

  else
  {
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    v8 = *(v1 + 48);
    v9 = *(v1 + 56);
    v10 = *(v1 + 64);
    v11 = *(v1 + 72);
    v12 = *(a1 + 16);
    *(v1 + 32) = *a1;
    *(v1 + 48) = v12;
    *(v1 + 64) = *(a1 + 32);
    v13 = *(v1 + 80);
    *(v1 + 80) = *(a1 + 48);
    return sub_18B4B212C(v6, v7, v8, v9, v10, v11, v13);
  }
}

uint64_t sub_18B508114(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a2 + 16);
  *(a1 + 32) = *a2;
  *(a1 + 48) = v8;
  *(a1 + 64) = *(a2 + 32);
  v9 = *(a1 + 80);
  *(a1 + 80) = *(a2 + 48);
  sub_18B4A63EC(a2, v11, &qword_1EA9C43E8);
  return sub_18B4B212C(v2, v3, v4, v5, v6, v7, v9);
}

uint64_t sub_18B5081C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B5144D4(&qword_1EA9C3BB0, type metadata accessor for RoutingControllerInputPickerViewModel.State);
  sub_18B6C421C();

  *a2 = *(v3 + 81);
  return result;
}

uint64_t sub_18B508290(uint64_t result)
{
  if (*(v1 + 81) == (result & 1))
  {
    *(v1 + 81) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_18B5144D4(&qword_1EA9C3BB0, type metadata accessor for RoutingControllerInputPickerViewModel.State);
    sub_18B6C420C();
  }

  return result;
}

double sub_18B5083A0@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B5144D4(&qword_1EA9C3BB0, type metadata accessor for RoutingControllerInputPickerViewModel.State);
  sub_18B6C421C();

  result = *(v3 + 88);
  *a2 = result;
  return result;
}

uint64_t sub_18B508470(double a1)
{
  if (*(v1 + 88) == a1)
  {
    *(v1 + 88) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_18B5144D4(&qword_1EA9C3BB0, type metadata accessor for RoutingControllerInputPickerViewModel.State);
    sub_18B6C420C();
  }

  return result;
}

uint64_t sub_18B508588()
{

  sub_18B4B212C(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  v1 = OBJC_IVAR____TtCC5AVKit37RoutingControllerInputPickerViewModel5State___observationRegistrar;
  v2 = sub_18B6C425C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_18B508648()
{
  v1 = v0;
  if (*(v0 + 104) != 1)
  {
    return sub_18B530FC4();
  }

  v2 = *(v0 + 64);
  swift_getKeyPath();
  sub_18B5144D4(&qword_1EA9C3BB0, type metadata accessor for RoutingControllerInputPickerViewModel.State);

  sub_18B6C421C();

  v3 = *(v2 + 24);
  sub_18B6C450C();

  v4 = *(v3 + 16);

  v5 = 1;
  if (!*(v1 + 72))
  {
    v5 = 2;
  }

  if (v4 > v5)
  {
    return sub_18B530854();
  }

  else
  {
    return sub_18B530FC4();
  }
}

uint64_t sub_18B508754(char a1)
{
  v2 = v1;
  if ((a1 & 1) == 0)
  {
    return sub_18B530FC4();
  }

  v3 = *(v1 + 64);
  swift_getKeyPath();
  sub_18B5144D4(&qword_1EA9C3BB0, type metadata accessor for RoutingControllerInputPickerViewModel.State);

  sub_18B6C421C();

  v4 = *(v3 + 24);
  sub_18B6C450C();

  v5 = *(v4 + 16);

  v6 = 1;
  if (!*(v2 + 72))
  {
    v6 = 2;
  }

  if (v5 > v6)
  {
    return sub_18B530854();
  }

  else
  {
    return sub_18B530FC4();
  }
}

uint64_t sub_18B508858()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v25 - v4;
  if (*(v0 + 105) == 1)
  {
    swift_beginAccess();
    v6 = __swift_project_boxed_opaque_existential_1((v0 + 112), *(v0 + 136));
    v7 = *v6;
    v8 = OBJC_IVAR____TtC5AVKit17MicrophoneManager_isDiscovering;
    if ((*(*v6 + OBJC_IVAR____TtC5AVKit17MicrophoneManager_isDiscovering) & 1) == 0)
    {
      v9 = sub_18B6C584C();
      (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
      sub_18B6C580C();

      v10 = sub_18B6C57FC();
      v11 = swift_allocObject();
      v12 = MEMORY[0x1E69E85E0];
      v11[2] = v10;
      v11[3] = v12;
      v11[4] = v7;
      sub_18B5280B4(0, 0, v5, &unk_18B6E9730, v11);

      *(v7 + v8) = 1;
    }

    v13 = sub_18B6C584C();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    v14 = swift_allocObject();
    swift_weakInit();
    sub_18B6C580C();

    v15 = sub_18B6C57FC();
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E85E0];
    v16[2] = v15;
    v16[3] = v17;
    v16[4] = v14;

    v18 = &unk_18B6E9740;
    v19 = v5;
    v20 = v16;
  }

  else
  {
    sub_18B530FC4();
    v21 = sub_18B6C584C();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    sub_18B6C580C();

    v22 = sub_18B6C57FC();
    v20 = swift_allocObject();
    v23 = MEMORY[0x1E69E85E0];
    v20[2] = v22;
    v20[3] = v23;
    v20[4] = v1;
    v18 = &unk_18B6E9728;
    v19 = v5;
  }

  sub_18B5280B4(0, 0, v19, v18, v20);
}

uint64_t sub_18B508B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_18B6C580C();
  v4[6] = sub_18B6C57FC();
  v6 = sub_18B6C57CC();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_18B508BF4, v6, v5);
}

uint64_t sub_18B508BF4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_18B508CE8;

    return sub_18B508FB4(0);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_18B508CE8()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 88) = v3;
  *v3 = v2;
  v3[1] = sub_18B508E28;

  return sub_18B50A020();
}

uint64_t sub_18B508E28()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_18B508F48, v3, v2);
}

uint64_t sub_18B508F48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18B508FB4(char a1)
{
  *(v2 + 120) = v1;
  *(v2 + 65) = a1;
  *(v2 + 128) = sub_18B6C580C();
  *(v2 + 136) = sub_18B6C57FC();
  v4 = sub_18B6C57CC();
  *(v2 + 144) = v4;
  *(v2 + 152) = v3;

  return MEMORY[0x1EEE6DFA0](sub_18B509054, v4, v3);
}

uint64_t sub_18B509054()
{
  v1 = v0[15];
  swift_beginAccess();
  v0[20] = *__swift_project_boxed_opaque_existential_1((v1 + 112), *(v1 + 136));
  v0[21] = sub_18B6C57FC();
  v3 = sub_18B6C57CC();
  v0[22] = v3;
  v0[23] = v2;

  return MEMORY[0x1EEE6DFA0](sub_18B509108, v3, v2);
}

uint64_t sub_18B509108()
{
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_18B50919C;

  return sub_18B4D49F8();
}

uint64_t sub_18B50919C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 200) = a1;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);

  return MEMORY[0x1EEE6DFA0](sub_18B5092C4, v4, v3);
}

uint64_t sub_18B5092C4()
{

  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = sub_18B509368;
  v2 = *(v0 + 200);
  v3 = *(v0 + 65);

  return sub_18B510A44(v2, v3);
}

uint64_t sub_18B509368(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 216) = a1;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);

  return MEMORY[0x1EEE6DFA0](sub_18B509490, v4, v3);
}

uint64_t sub_18B509490()
{
  v59 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 120);
  v3 = *(v2 + 64);
  swift_getKeyPath();
  *(v0 + 96) = v3;
  v4 = v0 + 96;
  *(v0 + 224) = sub_18B5144D4(&qword_1EA9C3BB0, type metadata accessor for RoutingControllerInputPickerViewModel.State);

  sub_18B6C421C();

  v5 = *(v3 + 24);
  sub_18B6C450C();

  LOBYTE(v1) = sub_18B4F3EB4(v1, v5);

  if (v1)
  {

LABEL_30:
    v54 = *(v0 + 8);

    return v54();
  }

  if (qword_1EA9C3DA0 != -1)
  {
    swift_once();
  }

  v6 = sub_18B6C435C();
  *(v0 + 232) = __swift_project_value_buffer(v6, qword_1EA9CE398);

  sub_18B6C450C();
  v7 = sub_18B6C434C();
  v8 = sub_18B6C596C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 120);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v58[0] = v11;
    *v10 = 136315394;
    if (*(v9 + 72))
    {
      if (*(v9 + 72) == 1)
      {
        v12 = 0xE600000000000000;
        v13 = 0x7070412D6E49;
      }

      else
      {
        v12 = 0xE800000000000000;
        v13 = 0x73676E6974746553;
      }
    }

    else
    {
      v12 = 0xE200000000000000;
      v13 = 17219;
    }

    v14 = *(v0 + 216);
    v15 = sub_18B4F4244(v13, v12, v58);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    v16 = MEMORY[0x18CFF7360](v14, &type metadata for InputOption);
    v18 = sub_18B4F4244(v16, v17, v58);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_18B49C000, v7, v8, "[ui][%s] got rendering new inputs:%s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x18CFF91B0](v11, -1, -1);
    MEMORY[0x18CFF91B0](v10, -1, -1);

    v4 = v0 + 96;
  }

  else
  {
  }

  v19 = *(v0 + 216);
  v20 = *(v0 + 200);

  sub_18B507AEC(v20);

  sub_18B6C450C();

  sub_18B507D08(v19);

  v21 = *(v2 + 64);
  swift_getKeyPath();
  *(v0 + 104) = v21;

  sub_18B6C421C();

  v22 = *(v21 + 32);
  v23 = *(v21 + 40);
  v24 = *(v21 + 48);
  v25 = *(v21 + 56);
  v26 = v4;
  v27 = *(v21 + 64);
  v28 = *(v21 + 72);
  v29 = *(v21 + 80);
  sub_18B4B20CC(v22, v23, v24, v25, v27, v28, *(v21 + 80));

  v30 = *(v0 + 216);
  if (v29 == 255)
  {

LABEL_17:
    v33 = *(v0 + 120);
    sub_18B508754(*(v33 + 104));
    v34 = *(v33 + 16);
    if (v34)
    {
      v35 = *(*(v0 + 120) + 64);
      swift_getKeyPath();
      *(v0 + 112) = v35;
      sub_18B4A324C(v34);

      sub_18B6C421C();

      v36 = *(v35 + 24);
      sub_18B6C450C();

      v37 = *(v36 + 16);

      v38 = v37 - 1;

      v39 = sub_18B6C434C();
      v40 = sub_18B6C596C();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = *(v0 + 120);
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v58[0] = v43;
        *v42 = 136315394;
        if (*(v41 + 72))
        {
          if (*(v41 + 72) == 1)
          {
            v44 = 0xE600000000000000;
            v45 = 0x7070412D6E49;
          }

          else
          {
            v44 = 0xE800000000000000;
            v45 = 0x73676E6974746553;
          }
        }

        else
        {
          v44 = 0xE200000000000000;
          v45 = 17219;
        }

        v53 = sub_18B4F4244(v45, v44, v58);

        *(v42 + 4) = v53;
        *(v42 + 12) = 2048;
        *(v42 + 14) = v38;
        _os_log_impl(&dword_18B49C000, v39, v40, "[ui][%s] reporting count: %ld", v42, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v43);
        MEMORY[0x18CFF91B0](v43, -1, -1);
        MEMORY[0x18CFF91B0](v42, -1, -1);
      }

      v34(v38);
      sub_18B4A31A4(v34);
    }

    goto LABEL_30;
  }

  *(v0 + 16) = v22;
  *(v0 + 24) = v23;
  *(v0 + 32) = v24;
  *(v0 + 40) = v25;
  *(v0 + 48) = v27;
  *(v0 + 56) = v28;
  *(v0 + 64) = v29 & 1;
  v31 = swift_task_alloc();
  *(v31 + 16) = v26 - 80;
  v32 = sub_18B513A54(sub_18B513D90, v31, v30);

  sub_18B4B212C(v22, v23, v24, v25, v27, v28, v29);

  if (v32)
  {

    goto LABEL_17;
  }

  v46 = sub_18B6C434C();
  v47 = sub_18B6C596C();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = *(v0 + 120);
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v58[0] = v50;
    *v49 = 136315138;
    if (*(v48 + 72))
    {
      if (*(v48 + 72) == 1)
      {
        v51 = 0xE600000000000000;
        v52 = 0x7070412D6E49;
      }

      else
      {
        v51 = 0xE800000000000000;
        v52 = 0x73676E6974746553;
      }
    }

    else
    {
      v51 = 0xE200000000000000;
      v52 = 17219;
    }

    v56 = sub_18B4F4244(v52, v51, v58);

    *(v49 + 4) = v56;
    _os_log_impl(&dword_18B49C000, v46, v47, "[ui][%s] current selected option not available in new inputs, updating selection", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x18CFF91B0](v50, -1, -1);
    MEMORY[0x18CFF91B0](v49, -1, -1);
  }

  v57 = swift_task_alloc();
  *(v0 + 240) = v57;
  *v57 = v0;
  v57[1] = sub_18B509CA8;

  return sub_18B50A020();
}

uint64_t sub_18B509CA8()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_18B509DC8, v3, v2);
}

uint64_t sub_18B509DC8()
{
  v18 = v0;

  v1 = v0[15];
  sub_18B508754(*(v1 + 104));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0[15] + 64);
    swift_getKeyPath();
    v0[14] = v3;
    sub_18B4A324C(v2);

    sub_18B6C421C();

    v4 = *(v3 + 24);
    sub_18B6C450C();

    v5 = *(v4 + 16);

    v6 = v5 - 1;

    v7 = sub_18B6C434C();
    v8 = sub_18B6C596C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[15];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315394;
      if (*(v9 + 72))
      {
        if (*(v9 + 72) == 1)
        {
          v12 = 0xE600000000000000;
          v13 = 0x7070412D6E49;
        }

        else
        {
          v12 = 0xE800000000000000;
          v13 = 0x73676E6974746553;
        }
      }

      else
      {
        v12 = 0xE200000000000000;
        v13 = 17219;
      }

      v14 = sub_18B4F4244(v13, v12, &v17);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2048;
      *(v10 + 14) = v6;
      _os_log_impl(&dword_18B49C000, v7, v8, "[ui][%s] reporting count: %ld", v10, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x18CFF91B0](v11, -1, -1);
      MEMORY[0x18CFF91B0](v10, -1, -1);
    }

    v2(v6);
    sub_18B4A31A4(v2);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_18B50A020()
{
  v1[76] = v0;
  v1[77] = sub_18B6C580C();
  v1[78] = sub_18B6C57FC();
  v3 = sub_18B6C57CC();
  v1[79] = v3;
  v1[80] = v2;

  return MEMORY[0x1EEE6DFA0](sub_18B50A0C0, v3, v2);
}

uint64_t sub_18B50A0C0()
{
  v1 = v0[76];
  swift_beginAccess();
  v0[81] = *__swift_project_boxed_opaque_existential_1((v1 + 112), *(v1 + 136));
  v0[82] = sub_18B6C57FC();
  v3 = sub_18B6C57CC();
  v0[83] = v3;
  v0[84] = v2;

  return MEMORY[0x1EEE6DFA0](sub_18B50A17C, v3, v2);
}

uint64_t sub_18B50A17C()
{
  v1 = swift_task_alloc();
  *(v0 + 680) = v1;
  *v1 = v0;
  v1[1] = sub_18B50A218;

  return sub_18B4D533C(v0 + 384);
}

uint64_t sub_18B50A218()
{
  v1 = *v0;

  v2 = *(v1 + 672);
  v3 = *(v1 + 664);

  return MEMORY[0x1EEE6DFA0](sub_18B50A338, v3, v2);
}

uint64_t sub_18B50A338()
{

  v1 = swift_task_alloc();
  *(v0 + 688) = v1;
  *v1 = v0;
  v1[1] = sub_18B50A3DC;

  return sub_18B510E4C(v0 + 336, (v0 + 384));
}

uint64_t sub_18B50A3DC()
{
  v1 = *v0;

  v2 = *(v1 + 352);
  *(v1 + 696) = *(v1 + 336);
  *(v1 + 712) = v2;
  *(v1 + 728) = *(v1 + 368);
  sub_18B4A6454(v1 + 384, &qword_1EA9C4FC8);
  v3 = *(v1 + 640);
  v4 = *(v1 + 632);

  return MEMORY[0x1EEE6DFA0](sub_18B50A538, v4, v3);
}

uint64_t sub_18B50A538()
{
  v21 = v0;
  if (v0[43])
  {
    if (qword_1EA9C3DA0 != -1)
    {
      swift_once();
    }

    v1 = sub_18B6C435C();
    v0[100] = __swift_project_value_buffer(v1, qword_1EA9CE398);
    v2 = sub_18B6C434C();
    v3 = sub_18B6C596C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_18B49C000, v2, v3, "[ui] Mark >", v4, 2u);
      MEMORY[0x18CFF91B0](v4, -1, -1);
    }

    sub_18B4A63EC((v0 + 42), (v0 + 54), &qword_1EA9C4FC8);
    v5 = sub_18B6C434C();
    v6 = sub_18B6C596C();
    sub_18B4A6454((v0 + 42), &qword_1EA9C4FC8);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[90];
      v8 = v0[89];
      v9 = v0[88];
      v10 = v0[87];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      v19 = v10;
      *v11 = 136315138;
      v20 = v9;
      sub_18B6C450C();
      MEMORY[0x18CFF7260](45, 0xE100000000000000);
      MEMORY[0x18CFF7260](v8, v7);
      v13 = sub_18B4F4244(v19, v9, &v18);

      *(v11 + 4) = v13;
      _os_log_impl(&dword_18B49C000, v5, v6, "[ui:mark] preferredMicrophone: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x18CFF91B0](v12, -1, -1);
      MEMORY[0x18CFF91B0](v11, -1, -1);
    }

    v0[101] = *__swift_project_boxed_opaque_existential_1((v0[76] + 112), *(v0[76] + 136));
    v0[102] = sub_18B6C57FC();
    v15 = sub_18B6C57CC();
    v0[103] = v15;
    v0[104] = v14;

    return MEMORY[0x1EEE6DFA0](sub_18B50AE98, v15, v14);
  }

  else
  {
    v16 = swift_task_alloc();
    v0[93] = v16;
    *v16 = v0;
    v16[1] = sub_18B50A870;

    return sub_18B5113C0((v0 + 16));
  }
}

uint64_t sub_18B50A870()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  *(v1 + 752) = *(v1 + 128);
  *(v1 + 768) = v2;
  *(v1 + 784) = *(v1 + 160);
  *(v1 + 65) = *(v1 + 176);
  v3 = *(v1 + 640);
  v4 = *(v1 + 632);

  return MEMORY[0x1EEE6DFA0](sub_18B50A9AC, v4, v3);
}

uint64_t sub_18B50A9AC()
{
  v52 = v0;

  sub_18B4A63EC(v0 + 128, v0 + 184, &qword_1EA9C43E8);
  v1 = *(v0 + 752);
  *(v0 + 72) = v1;
  v2 = *(v0 + 65);
  v3 = *(v0 + 792);
  v4 = *(v0 + 784);
  v5 = *(v0 + 776);
  v6 = *(v0 + 768);
  v7 = *(v0 + 760);
  *(v0 + 80) = v7;
  *(v0 + 88) = v6;
  *(v0 + 96) = v5;
  *(v0 + 104) = v4;
  *(v0 + 112) = v3;
  *(v0 + 120) = v2;
  if (qword_1EA9C3DA0 != -1)
  {
    swift_once();
  }

  v8 = sub_18B6C435C();
  __swift_project_value_buffer(v8, qword_1EA9CE398);
  sub_18B4B20CC(v1, v7, v6, v5, v4, v3, v2);
  v9 = v6;
  v10 = sub_18B6C434C();
  v11 = sub_18B6C596C();
  v12 = v7;
  v13 = v11;
  v48 = v12;
  v49 = v1;
  v46 = v9;
  v47 = v5;
  sub_18B4B212C(v1, v12, v9, v5, v4, v3, v2);
  v50 = v2;
  v44 = v4;
  v45 = v3;
  if (os_log_type_enabled(v10, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v51 = v15;
    *v14 = 136315138;
    if (v2 == 255)
    {
      v18 = 0xE300000000000000;
      v16 = 7104878;
    }

    else
    {
      *(v0 + 16) = v49;
      *(v0 + 24) = v48;
      *(v0 + 32) = v9;
      *(v0 + 40) = v47;
      *(v0 + 48) = v4;
      *(v0 + 56) = v3;
      *(v0 + 64) = v2 & 1;
      v16 = sub_18B518BF4();
      v18 = v17;
    }

    v19 = sub_18B4F4244(v16, v18, &v51);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_18B49C000, v10, v13, "[ui] updating selected device: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x18CFF91B0](v15, -1, -1);
    MEMORY[0x18CFF91B0](v14, -1, -1);
  }

  v20 = *(*(v0 + 608) + 64);
  swift_getKeyPath();
  *(v0 + 600) = v20;
  sub_18B5144D4(&qword_1EA9C3BB0, type metadata accessor for RoutingControllerInputPickerViewModel.State);

  sub_18B6C421C();

  v21 = *(v20 + 32);
  v22 = *(v20 + 40);
  v24 = *(v20 + 48);
  v23 = *(v20 + 56);
  v26 = *(v20 + 64);
  v25 = *(v20 + 72);
  v27 = *(v20 + 80);
  sub_18B4B20CC(v21, v22, v24, v23, v26, v25, *(v20 + 80));

  v28 = *(v0 + 72);
  v29 = *(v0 + 80);
  v30 = *(v0 + 88);
  v31 = *(v0 + 96);
  v32 = *(v0 + 104);
  v33 = *(v0 + 112);
  v34 = *(v0 + 120);
  if (v50 != 255)
  {
    if (v27 != 255)
    {
      if (v50)
      {
        if (v27)
        {
          goto LABEL_12;
        }
      }

      else if ((v27 & 1) == 0)
      {
LABEL_12:
        if (v49 == v21 && v48 == v22)
        {
          sub_18B4B212C(v49, v48, v24, v23, v26, v25, v27);
          v35 = v45;
          sub_18B4B212C(v49, v48, v46, v47, v44, v45, v50);
          v36 = v49;
          v37 = v48;
          v38 = v46;
          v39 = v47;
          v40 = v44;
LABEL_26:
          sub_18B4B212C(v36, v37, v38, v39, v40, v35, v50);
          goto LABEL_21;
        }

        v43 = sub_18B6C5CEC();
        sub_18B4B212C(v21, v22, v24, v23, v26, v25, v27);
        v35 = v45;
        sub_18B4B212C(v49, v48, v46, v47, v44, v45, v50);
        if (v43)
        {
          v36 = v49;
          v37 = v48;
          v38 = v46;
          v39 = v47;
          v40 = v44;
          goto LABEL_26;
        }

LABEL_20:

        sub_18B507F74(v0 + 72);

        goto LABEL_21;
      }

      v34 = v27;
      v33 = v25;
      v32 = v26;
      v31 = v23;
      v30 = v24;
      v29 = v22;
      v28 = v21;
      LOBYTE(v27) = v50;
      v26 = v44;
      v25 = v45;
      v24 = v46;
      v23 = v47;
      v22 = v48;
      v21 = v49;
    }

LABEL_19:
    sub_18B4B212C(v28, v29, v30, v31, v32, v33, v34);
    sub_18B4B212C(v21, v22, v24, v23, v26, v25, v27);
    goto LABEL_20;
  }

  if (v27 != 255)
  {
    goto LABEL_19;
  }

LABEL_21:
  sub_18B50ECA4();
  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_18B50AE98()
{
  v1 = swift_task_alloc();
  *(v0 + 840) = v1;
  *v1 = v0;
  v1[1] = sub_18B50AF38;

  return sub_18B4D500C(v0 + 288, 1);
}

uint64_t sub_18B50AF38()
{
  v1 = *v0;

  v2 = *(v1 + 832);
  v3 = *(v1 + 824);

  return MEMORY[0x1EEE6DFA0](sub_18B50B058, v3, v2);
}

uint64_t sub_18B50B058()
{

  v1 = swift_task_alloc();
  *(v0 + 848) = v1;
  *v1 = v0;
  v1[1] = sub_18B50B0FC;

  return sub_18B510E4C(v0 + 240, (v0 + 288));
}

uint64_t sub_18B50B0FC()
{
  v1 = *v0;

  *(v1 + 856) = *(v1 + 240);
  *(v1 + 872) = *(v1 + 264);
  *(v1 + 880) = *(v1 + 280);
  sub_18B4A6454(v1 + 288, &qword_1EA9C4FC8);
  v2 = *(v1 + 640);
  v3 = *(v1 + 632);

  return MEMORY[0x1EEE6DFA0](sub_18B50B274, v3, v2);
}

uint64_t sub_18B50B274()
{
  v69 = v0;
  v1 = v0 + 240;
  v2 = *(v0 + 240);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v6 = *(v0 + 264);
  v5 = *(v0 + 272);
  v7 = *(v0 + 280);

  if (!v4)
  {
    v7 = *(v0 + 736);
    v6 = *(v0 + 720);
    v4 = *(v0 + 704);
    sub_18B6C450C();
    sub_18B6C450C();
    sub_18B6C450C();
    v8 = *(v0 + 728);
    v3 = *(v0 + 712);
    v2 = *(v0 + 696);
    goto LABEL_9;
  }

  v62 = v3;
  v64 = v5;
  if (*(v0 + 696) == *(v0 + 856) && *(v0 + 704) == *(v0 + 864))
  {
    sub_18B4A63EC(v0 + 336, v0 + 480, &qword_1EA9C4FC8);
    sub_18B6C450C();
    sub_18B6C450C();
    sub_18B6C450C();

    sub_18B4A6454(v0 + 336, &qword_1EA9C4FC8);
  }

  else
  {
    v56 = *(v0 + 704);
    v58 = *(v0 + 720);
    v59 = sub_18B6C5CEC();
    sub_18B4A63EC(v0 + 336, v0 + 480, &qword_1EA9C4FC8);
    sub_18B6C450C();
    sub_18B6C450C();
    sub_18B6C450C();

    sub_18B4A6454(v0 + 336, &qword_1EA9C4FC8);
    if ((v59 & 1) == 0)
    {
      sub_18B4A63EC(v0 + 336, v0 + 528, &qword_1EA9C4FC8);
      v41 = v4;
      sub_18B6C450C();
      sub_18B6C450C();
      sub_18B6C450C();
      v42 = sub_18B6C434C();
      v43 = sub_18B6C596C();
      sub_18B4A6454(v0 + 336, &qword_1EA9C4FC8);

      if (os_log_type_enabled(v42, v43))
      {
        v44 = *(v0 + 712);
        v61 = v43;
        v45 = *(v0 + 696);
        loga = v42;
        v46 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v66 = v55;
        v67 = v45;
        *v46 = 136315394;
        v68 = v56;
        sub_18B6C450C();
        MEMORY[0x18CFF7260](45, 0xE100000000000000);
        MEMORY[0x18CFF7260](v44, v58);
        sub_18B4A6454(v0 + 336, &qword_1EA9C4FC8);
        v47 = sub_18B4F4244(v67, v56, &v66);

        *(v46 + 4) = v47;
        *(v46 + 12) = 2080;
        v67 = v2;
        v68 = v41;
        swift_bridgeObjectRetain_n();
        sub_18B6C450C();
        sub_18B6C450C();
        MEMORY[0x18CFF7260](45, 0xE100000000000000);
        MEMORY[0x18CFF7260](v62, v6);

        v48 = sub_18B4F4244(v67, v68, &v66);

        *(v46 + 14) = v48;
        v3 = v62;
        _os_log_impl(&dword_18B49C000, loga, v61, "[ui:mark] trying to render Prefered: %s, butd device is routed to %s", v46, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x18CFF91B0](v55, -1, -1);
        MEMORY[0x18CFF91B0](v46, -1, -1);
      }

      else
      {

        sub_18B4A6454(v0 + 336, &qword_1EA9C4FC8);
      }

      v4 = v41;
      goto LABEL_8;
    }
  }

  sub_18B4A6454(v0 + 336, &qword_1EA9C4FC8);
LABEL_8:
  sub_18B6C450C();
  sub_18B6C450C();
  sub_18B6C450C();
  v8 = v64;
LABEL_9:
  *(v0 + 72) = v2;
  *(v0 + 80) = v4;
  *(v0 + 88) = v3;
  *(v0 + 96) = v6;
  *(v0 + 104) = v8;
  *(v0 + 112) = v7;
  *(v0 + 120) = 0;
  if (qword_1EA9C3DA0 != -1)
  {
    swift_once();
  }

  v9 = sub_18B6C435C();
  __swift_project_value_buffer(v9, qword_1EA9CE398);
  sub_18B4B20CC(v2, v4, v3, v6, v8, v7, 0);
  v10 = sub_18B6C434C();
  v11 = sub_18B6C596C();
  sub_18B4B212C(v2, v4, v3, v6, v8, v7, 0);
  v54 = v6;
  v57 = v7;
  log = v4;
  v63 = v3;
  v65 = v8;
  v60 = v2;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = v8;
    v15 = v13;
    v67 = v13;
    *v12 = 136315138;
    *(v0 + 16) = v2;
    *(v0 + 24) = v4;
    *(v0 + 32) = v3;
    *(v0 + 40) = v6;
    *(v0 + 48) = v14;
    *(v0 + 56) = v7;
    *(v0 + 64) = 0;
    v16 = sub_18B518BF4();
    v18 = sub_18B4F4244(v16, v17, &v67);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_18B49C000, v10, v11, "[ui] updating selected device: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x18CFF91B0](v15, -1, -1);
    v19 = v12;
    v1 = v0 + 240;
    MEMORY[0x18CFF91B0](v19, -1, -1);
  }

  v20 = *(*(v0 + 608) + 64);
  swift_getKeyPath();
  *(v0 + 600) = v20;
  sub_18B5144D4(&qword_1EA9C3BB0, type metadata accessor for RoutingControllerInputPickerViewModel.State);

  sub_18B6C421C();

  v22 = *(v20 + 32);
  v21 = *(v20 + 40);
  v23 = *(v20 + 48);
  v24 = *(v20 + 56);
  v26 = *(v20 + 64);
  v25 = *(v20 + 72);
  v27 = *(v20 + 80);
  sub_18B4B20CC(v22, v21, v23, v24, v26, v25, *(v20 + 80));

  if (v27 == 255)
  {
    LOBYTE(v27) = *(v0 + 120);
    v30 = *(v0 + 104);
    v29 = *(v0 + 112);
    v32 = *(v0 + 88);
    v31 = *(v0 + 96);
    v28 = -1;
    v34 = *(v0 + 72);
    v33 = *(v0 + 80);
    goto LABEL_17;
  }

  if (v27)
  {
    v28 = 0;
    v29 = v25;
    v30 = v26;
    v31 = v24;
    v32 = v23;
    v33 = v21;
    v34 = v22;
    v24 = v54;
    v25 = v57;
    v23 = v63;
    v26 = v65;
    v21 = log;
    v22 = v60;
LABEL_17:
    sub_18B4B212C(v34, v33, v32, v31, v30, v29, v27);
    sub_18B4B212C(v22, v21, v23, v24, v26, v25, v28);
LABEL_18:

    sub_18B507F74(v1 - 168);

    goto LABEL_28;
  }

  if (v60 == v22 && log == v21)
  {
    sub_18B4B212C(v60, log, v23, v24, v26, v25, v27);
    v35 = v57;
    sub_18B4B212C(v60, log, v63, v54, v65, v57, 0);
    v36 = v60;
    v37 = log;
    v38 = v63;
    v39 = v54;
    v40 = v65;
  }

  else
  {
    v51 = sub_18B6C5CEC();
    sub_18B4B212C(v22, v21, v23, v24, v26, v25, v27);
    v35 = v57;
    sub_18B4B212C(v60, log, v63, v54, v65, v57, 0);
    if ((v51 & 1) == 0)
    {
      goto LABEL_18;
    }

    v36 = v60;
    v37 = log;
    v38 = v63;
    v39 = v54;
    v40 = v65;
  }

  sub_18B4B212C(v36, v37, v38, v39, v40, v35, 0);
LABEL_28:
  sub_18B50ECA4();
  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_18B50BB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_18B6C584C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = sub_18B6C580C();
  v4[10] = sub_18B6C57FC();
  v7 = sub_18B6C57CC();
  v4[11] = v7;
  v4[12] = v6;

  return MEMORY[0x1EEE6DFA0](sub_18B50BBF8, v7, v6);
}

uint64_t sub_18B50BBF8()
{
  v1 = v0[5];
  swift_beginAccess();
  v0[13] = *__swift_project_boxed_opaque_existential_1((v1 + 112), *(v1 + 136));
  v0[14] = sub_18B6C57FC();
  v3 = sub_18B6C57CC();
  v0[15] = v3;
  v0[16] = v2;

  return MEMORY[0x1EEE6DFA0](sub_18B50BCB0, v3, v2);
}

uint64_t sub_18B50BCB0()
{
  v1 = v0[13];
  v2 = OBJC_IVAR____TtC5AVKit17MicrophoneManager_isDiscovering;
  v0[17] = OBJC_IVAR____TtC5AVKit17MicrophoneManager_isDiscovering;
  if (*(v1 + v2) == 1)
  {
    v0[18] = *(v1 + 16);
    v3 = sub_18B50BD54;
    v4 = 0;
    v5 = 0;
  }

  else
  {

    v4 = v0[11];
    v5 = v0[12];
    v3 = sub_18B50C070;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18B50BD54()
{
  *(v0 + 152) = swift_allocObject();
  swift_weakInit();
  sub_18B6C582C();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_18B50BE78;

  return (sub_18B4F1F54)();
}

uint64_t sub_18B50BE78()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_18B50BFEC, 0, 0);
}

uint64_t sub_18B50C004()
{
  v1 = v0[17];
  v2 = v0[13];

  *(v2 + v1) = 0;
  v3 = v0[11];
  v4 = v0[12];

  return MEMORY[0x1EEE6DFA0](sub_18B50C070, v3, v4);
}

uint64_t sub_18B50C070()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18B50C0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5228);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = sub_18B6C580C();
  v5[12] = sub_18B6C57FC();
  v8 = sub_18B6C57CC();
  v5[13] = v8;
  v5[14] = v7;

  return MEMORY[0x1EEE6DFA0](sub_18B50C1E0, v8, v7);
}

uint64_t sub_18B50C1E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F50);
  sub_18B6C587C();
  swift_beginAccess();
  v1 = sub_18B6C57FC();
  v0[15] = v1;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_18B50C2DC;
  v3 = v0[8];
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v0 + 5, v1, v4, v3);
}

uint64_t sub_18B50C2DC()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_18B50C420, v3, v2);
}

uint64_t sub_18B50C420()
{
  if (v0[5] && (, Strong = swift_weakLoadStrong(), (v0[17] = Strong) != 0))
  {
    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_18B50C534;

    return sub_18B508FB4(0);
  }

  else
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_18B50C534()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_18B50C654, v3, v2);
}

uint64_t sub_18B50C654()
{

  v1 = sub_18B6C57FC();
  v0[15] = v1;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_18B50C2DC;
  v3 = v0[8];
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v0 + 5, v1, v4, v3);
}

uint64_t sub_18B50C718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 224) = a6;
  *(v6 + 120) = a4;
  *(v6 + 128) = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5220);
  *(v6 + 136) = v7;
  *(v6 + 144) = *(v7 - 8);
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 160) = sub_18B6C580C();
  *(v6 + 168) = sub_18B6C57FC();
  v9 = sub_18B6C57CC();
  *(v6 + 176) = v9;
  *(v6 + 184) = v8;

  return MEMORY[0x1EEE6DFA0](sub_18B50C820, v9, v8);
}

uint64_t sub_18B50C820()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F60);
  sub_18B6C587C();
  swift_beginAccess();
  v1 = sub_18B6C57FC();
  v0[24] = v1;
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_18B50C91C;
  v3 = v0[17];
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v0 + 2, v1, v4, v3);
}

uint64_t sub_18B50C91C()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return MEMORY[0x1EEE6DFA0](sub_18B50CA60, v3, v2);
}

uint64_t sub_18B50CA60()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if (v1)
  {
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);
    Strong = swift_weakLoadStrong();
    *(v0 + 208) = Strong;
    if (Strong)
    {
      if (*(Strong + 105))
      {
        if (qword_1EA9C3DA0 != -1)
        {
          swift_once();
        }

        v6 = sub_18B6C435C();
        __swift_project_value_buffer(v6, qword_1EA9CE398);
        sub_18B6C450C();
        sub_18B6C450C();
        sub_18B6C450C();
        v7 = sub_18B6C434C();
        v8 = sub_18B6C596C();

        if (os_log_type_enabled(v7, v8))
        {
          v36 = v8;
          v37 = v4;
          log = v7;
          v9 = *(v0 + 224);
          v10 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          *(v0 + 112) = v35;
          *v10 = 136315394;
          v11 = 0xE600000000000000;
          v12 = 0x7070412D6E49;
          if (v9 != 1)
          {
            v12 = 0x73676E6974746553;
            v11 = 0xE800000000000000;
          }

          if (v9)
          {
            v13 = v12;
          }

          else
          {
            v13 = 17219;
          }

          if (v9)
          {
            v14 = v11;
          }

          else
          {
            v14 = 0xE200000000000000;
          }

          v15 = sub_18B4F4244(v13, v14, (v0 + 112));

          *(v10 + 4) = v15;
          *(v10 + 12) = 2080;
          *(v0 + 88) = v2;
          *(v0 + 96) = v1;
          sub_18B6C450C();
          MEMORY[0x18CFF7260](45, 0xE100000000000000);
          MEMORY[0x18CFF7260](v37, v3);

          v16 = sub_18B4F4244(*(v0 + 88), *(v0 + 96), (v0 + 112));

          *(v10 + 14) = v16;
          _os_log_impl(&dword_18B49C000, log, v36, "[%s] rendering new picked mic: %s", v10, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x18CFF91B0](v35, -1, -1);
          MEMORY[0x18CFF91B0](v10, -1, -1);
        }

        else
        {
        }

        v34 = swift_task_alloc();
        *(v0 + 216) = v34;
        *v34 = v0;
        v34[1] = sub_18B50D020;

        return sub_18B50A020();
      }

      else
      {

        if (qword_1EA9C3DA0 != -1)
        {
          swift_once();
        }

        v19 = sub_18B6C435C();
        __swift_project_value_buffer(v19, qword_1EA9CE398);
        v20 = sub_18B6C434C();
        v21 = sub_18B6C596C();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = *(v0 + 224);
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          *(v0 + 104) = v24;
          *v23 = 136315138;
          v25 = 0xE600000000000000;
          v26 = 0x7070412D6E49;
          if (v22 != 1)
          {
            v26 = 0x73676E6974746553;
            v25 = 0xE800000000000000;
          }

          if (v22)
          {
            v27 = v26;
          }

          else
          {
            v27 = 17219;
          }

          if (v22)
          {
            v28 = v25;
          }

          else
          {
            v28 = 0xE200000000000000;
          }

          v29 = sub_18B4F4244(v27, v28, (v0 + 104));

          *(v23 + 4) = v29;
          _os_log_impl(&dword_18B49C000, v20, v21, "[%s] stop rendering because: discovering: false", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v24);
          MEMORY[0x18CFF91B0](v24, -1, -1);
          MEMORY[0x18CFF91B0](v23, -1, -1);
        }

        v30 = sub_18B6C57FC();
        *(v0 + 192) = v30;
        v31 = swift_task_alloc();
        *(v0 + 200) = v31;
        *v31 = v0;
        v31[1] = sub_18B50C91C;
        v32 = *(v0 + 136);
        v33 = MEMORY[0x1E69E85E0];

        return MEMORY[0x1EEE6D9C8](v0 + 16, v30, v33, v32);
      }
    }

    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
  }

  else
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_18B50D020()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return MEMORY[0x1EEE6DFA0](sub_18B50D140, v3, v2);
}

uint64_t sub_18B50D140()
{

  v1 = sub_18B6C57FC();
  v0[24] = v1;
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_18B50C91C;
  v3 = v0[17];
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v0 + 2, v1, v4, v3);
}

uint64_t sub_18B50D204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 181) = a6;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5218);
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = sub_18B6C580C();
  *(v6 + 96) = sub_18B6C57FC();
  v9 = sub_18B6C57CC();
  *(v6 + 104) = v9;
  *(v6 + 112) = v8;

  return MEMORY[0x1EEE6DFA0](sub_18B50D30C, v9, v8);
}

uint64_t sub_18B50D30C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F40);
  sub_18B6C587C();
  swift_beginAccess();
  v1 = sub_18B6C57FC();
  v0[15] = v1;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_18B50D408;
  v3 = v0[8];
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v0 + 22, v1, v4, v3);
}

uint64_t sub_18B50D408()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_18B50D54C, v3, v2);
}

uint64_t sub_18B50D54C()
{
  if ((*(v0 + 180) & 1) != 0 || (v1 = *(v0 + 176), Strong = swift_weakLoadStrong(), (*(v0 + 136) = Strong) == 0))
  {
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v3 = Strong;
    if (qword_1EA9C3DA0 != -1)
    {
      swift_once();
    }

    v4 = sub_18B6C435C();
    __swift_project_value_buffer(v4, qword_1EA9CE398);
    v5 = sub_18B6C434C();
    v6 = sub_18B6C596C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 181);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *(v0 + 40) = v9;
      *v8 = 136315394;
      v10 = 0xE600000000000000;
      v11 = 0x7070412D6E49;
      if (v7 != 1)
      {
        v11 = 0x73676E6974746553;
        v10 = 0xE800000000000000;
      }

      if (v7)
      {
        v12 = v11;
      }

      else
      {
        v12 = 17219;
      }

      if (v7)
      {
        v13 = v10;
      }

      else
      {
        v13 = 0xE200000000000000;
      }

      v14 = sub_18B4F4244(v12, v13, (v0 + 40));

      *(v8 + 4) = v14;
      *(v8 + 12) = 2048;
      *(v8 + 14) = v1;
      _os_log_impl(&dword_18B49C000, v5, v6, "[%s] input gain updated: %f", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x18CFF91B0](v9, -1, -1);
      MEMORY[0x18CFF91B0](v8, -1, -1);
    }

    *(v0 + 144) = *(v3 + 80);
    v15 = swift_allocObject();
    *(v0 + 152) = v15;
    swift_weakInit();
    v16 = swift_allocObject();
    *(v0 + 160) = v16;
    *(v16 + 16) = v15;
    *(v16 + 24) = v1;

    v17 = swift_task_alloc();
    *(v0 + 168) = v17;
    *v17 = v0;
    v17[1] = sub_18B50D884;

    return sub_18B51A6F0(0xD000000000000017, 0x800000018B6FCBA0, 100000000000000000, 0, &unk_18B6E9620, v16);
  }
}

uint64_t sub_18B50D884()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_18B50DA08, v3, v2);
}

uint64_t sub_18B50DA08()
{

  v1 = sub_18B6C57FC();
  v0[15] = v1;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_18B50D408;
  v3 = v0[8];
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v0 + 22, v1, v4, v3);
}

uint64_t sub_18B50DACC(uint64_t a1, float a2)
{
  *(v2 + 64) = a2;
  *(v2 + 48) = a1;
  sub_18B6C580C();
  *(v2 + 56) = sub_18B6C57FC();
  v4 = sub_18B6C57CC();

  return MEMORY[0x1EEE6DFA0](sub_18B50DB68, v4, v3);
}

uint64_t sub_18B50DB68()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 64);
    v3 = *(Strong + 64);

    v4 = v2;
    if (*(v3 + 88) == v4)
    {
      *(v3 + 88) = v4;
    }

    else
    {
      swift_getKeyPath();
      v5 = swift_task_alloc();
      *(v5 + 16) = v3;
      *(v5 + 24) = v4;
      *(v0 + 40) = v3;
      sub_18B5144D4(&qword_1EA9C3BB0, type metadata accessor for RoutingControllerInputPickerViewModel.State);
      sub_18B6C420C();
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_18B50DCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 377) = a7;
  *(v7 + 152) = a5;
  *(v7 + 160) = a6;
  *(v7 + 144) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 176) = swift_task_alloc();
  v8 = sub_18B6C584C();
  *(v7 + 184) = v8;
  *(v7 + 192) = *(v8 - 8);
  *(v7 + 200) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5208);
  *(v7 + 208) = v9;
  *(v7 + 216) = *(v9 - 8);
  *(v7 + 224) = swift_task_alloc();
  *(v7 + 232) = sub_18B6C580C();
  *(v7 + 240) = sub_18B6C57FC();
  v11 = sub_18B6C57CC();
  *(v7 + 248) = v11;
  *(v7 + 256) = v10;

  return MEMORY[0x1EEE6DFA0](sub_18B50DEA0, v11, v10);
}

uint64_t sub_18B50DEA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F30);
  sub_18B6C587C();
  swift_beginAccess();
  v0[33] = 0;
  v1 = sub_18B6C57FC();
  v0[34] = v1;
  v2 = swift_task_alloc();
  v0[35] = v2;
  *v2 = v0;
  v2[1] = sub_18B50DFA0;
  v3 = v0[26];
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v0 + 47, v1, v4, v3);
}

uint64_t sub_18B50DFA0()
{
  v1 = *v0;

  v2 = *(v1 + 256);
  v3 = *(v1 + 248);

  return MEMORY[0x1EEE6DFA0](sub_18B50E0E4, v3, v2);
}

uint64_t sub_18B50E0E4()
{
  if (*(v0 + 376) == 2 || (Strong = swift_weakLoadStrong(), (*(v0 + 288) = Strong) == 0))
  {
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v2 = *(v0 + 160);
    *(v0 + 296) = *(Strong + 64);
    *(v0 + 304) = *__swift_project_boxed_opaque_existential_1(v2, v2[3]);

    *(v0 + 312) = sub_18B6C57FC();
    v4 = sub_18B6C57CC();
    *(v0 + 320) = v4;
    *(v0 + 328) = v3;

    return MEMORY[0x1EEE6DFA0](sub_18B50E24C, v4, v3);
  }
}

uint64_t sub_18B50E274()
{
  v1 = swift_allocObject();
  v0[43] = v1;
  swift_weakInit();
  sub_18B6C582C();
  v2 = swift_task_alloc();
  v0[44] = v2;
  *v2 = v0;
  v2[1] = sub_18B50E390;
  v3 = v0[25];

  return sub_18B4F175C(0xD000000000000014, 0x800000018B6FC2D0, v3, &unk_18B6E85A8, v1);
}

uint64_t sub_18B50E390(char a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 200);
  v5 = *(*v1 + 192);
  v6 = *(*v1 + 184);
  *(v3 + 378) = a1;

  v7 = *(v5 + 8);
  *(v3 + 360) = v7;
  *(v3 + 368) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v6);
  v8 = *(v2 + 328);
  v9 = *(v2 + 320);

  return MEMORY[0x1EEE6DFA0](sub_18B50E54C, v9, v8);
}

uint64_t sub_18B50E54C()
{

  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return MEMORY[0x1EEE6DFA0](sub_18B50E5B0, v1, v2);
}

uint64_t sub_18B50E5B0()
{
  v1 = *(v0 + 378);
  v2 = *(v0 + 296);
  if (v1 == *(v2 + 81))
  {
    *(v2 + 81) = v1;

    v44 = *(v0 + 264);
  }

  else
  {
    v3 = *(v0 + 264);
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v2;
    *(v4 + 24) = v1;
    *(v0 + 112) = v2;
    sub_18B5144D4(&qword_1EA9C3BB0, type metadata accessor for RoutingControllerInputPickerViewModel.State);
    sub_18B6C420C();
    v44 = v3;
  }

  if (qword_1EA9C3DA0 != -1)
  {
    swift_once();
  }

  v5 = sub_18B6C435C();
  __swift_project_value_buffer(v5, qword_1EA9CE398);
  swift_retain_n();
  v6 = sub_18B6C434C();
  v7 = sub_18B6C596C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 377);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *(v0 + 128) = v10;
    *v9 = 136315394;
    v11 = 0xE600000000000000;
    v12 = 0x7070412D6E49;
    if (v8 != 1)
    {
      v12 = 0x73676E6974746553;
      v11 = 0xE800000000000000;
    }

    if (v8)
    {
      v13 = v12;
    }

    else
    {
      v13 = 17219;
    }

    if (v8)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0xE200000000000000;
    }

    v15 = *(v0 + 288);
    v16 = sub_18B4F4244(v13, v14, (v0 + 128));

    *(v9 + 4) = v16;
    *(v9 + 12) = 1024;
    v17 = *(v15 + 64);
    swift_getKeyPath();
    *(v0 + 136) = v17;
    sub_18B5144D4(&qword_1EA9C3BB0, type metadata accessor for RoutingControllerInputPickerViewModel.State);

    sub_18B6C421C();

    v18 = *(v17 + 81);

    *(v9 + 14) = v18;

    _os_log_impl(&dword_18B49C000, v6, v7, "[%s] input gain settability updated: %{BOOL}d", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x18CFF91B0](v10, -1, -1);
    MEMORY[0x18CFF91B0](v9, -1, -1);
  }

  else
  {
  }

  v19 = *(v0 + 288);
  v20 = *(v19 + 32);
  if (v20)
  {
    v21 = *(v19 + 64);
    swift_getKeyPath();
    *(v0 + 120) = v21;
    sub_18B4A324C(v20);
    sub_18B5144D4(&qword_1EA9C3BB0, type metadata accessor for RoutingControllerInputPickerViewModel.State);

    sub_18B6C421C();

    v22 = *(v21 + 81);

    v20(v22);
    sub_18B4A31A4(v20);
  }

  *(v0 + 40) = &type metadata for FeatureFlags;
  *(v0 + 48) = sub_18B51370C();
  v23 = sub_18B6C42EC();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (v23)
  {
    v24 = *(v0 + 184);
    v25 = *(v0 + 192);
    v26 = *(v0 + 168);
    v27 = *(v0 + 176);
    (*(v25 + 56))(v27, 1, 1, v24);
    v28 = swift_allocObject();
    swift_weakInit();

    v29 = sub_18B6C57FC();
    v30 = swift_allocObject();
    v30[2] = v29;
    v30[3] = MEMORY[0x1E69E85E0];
    v30[4] = v28;

    sub_18B4A63EC(v27, v26, &qword_1EA9C4E70);
    LODWORD(v29) = (*(v25 + 48))(v26, 1, v24);

    if (v29 == 1)
    {
      sub_18B4A6454(*(v0 + 168), &qword_1EA9C4E70);
    }

    else
    {
      v31 = *(v0 + 360);
      v32 = *(v0 + 184);
      v33 = *(v0 + 168);
      sub_18B6C583C();
      v31(v33, v32);
    }

    v34 = v30[2];
    swift_unknownObjectRetain();

    if (v34)
    {
      swift_getObjectType();
      v35 = sub_18B6C57CC();
      v37 = v36;
      swift_unknownObjectRelease();
    }

    else
    {
      v35 = 0;
      v37 = 0;
    }

    sub_18B4A6454(*(v0 + 176), &qword_1EA9C4E70);
    v38 = swift_allocObject();
    *(v38 + 16) = &unk_18B6E95C0;
    *(v38 + 24) = v30;
    if (v37 | v35)
    {
      *(v0 + 56) = 0;
      *(v0 + 64) = 0;
      *(v0 + 72) = v35;
      *(v0 + 80) = v37;
    }

    swift_task_create();
  }

  *(v0 + 264) = v44;
  v39 = sub_18B6C57FC();
  *(v0 + 272) = v39;
  v40 = swift_task_alloc();
  *(v0 + 280) = v40;
  *v40 = v0;
  v40[1] = sub_18B50DFA0;
  v41 = *(v0 + 208);
  v42 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v0 + 376, v39, v42, v41);
}

uint64_t sub_18B50ECA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v12[-v2 - 8];
  v13 = &type metadata for FeatureFlags;
  v14 = sub_18B51370C();
  v4 = sub_18B6C42EC();
  result = __swift_destroy_boxed_opaque_existential_1(v12);
  if (v4)
  {
    v6 = sub_18B6C584C();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    swift_weakInit();
    sub_18B6C580C();

    v8 = sub_18B6C57FC();
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E85E0];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v7;

    sub_18B5280B4(0, 0, v3, &unk_18B6E95F8, v9);
  }

  return result;
}

uint64_t sub_18B50EE24(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = a1;
  *(v5 + 64) = a5;
  sub_18B6C580C();
  *(v5 + 80) = sub_18B6C57FC();
  v7 = sub_18B6C57CC();
  *(v5 + 88) = v7;
  *(v5 + 96) = v6;

  return MEMORY[0x1EEE6DFA0](sub_18B50EEC0, v7, v6);
}

uint64_t sub_18B50EEC0()
{
  v18 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 13) = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (qword_1EA9C3DA0 != -1)
    {
      swift_once();
    }

    v3 = sub_18B6C435C();
    __swift_project_value_buffer(v3, qword_1EA9CE398);

    v4 = sub_18B6C434C();
    v5 = sub_18B6C596C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v17 = v7;
      *v6 = 136315394;
      if (*(v2 + 72))
      {
        if (*(v2 + 72) == 1)
        {
          v8 = 0xE600000000000000;
          v9 = 0x7070412D6E49;
        }

        else
        {
          v8 = 0xE800000000000000;
          v9 = 0x73676E6974746553;
        }
      }

      else
      {
        v8 = 0xE200000000000000;
        v9 = 17219;
      }

      v12 = *(v0 + 9);
      v13 = sub_18B4F4244(v9, v8, &v17);

      *(v6 + 4) = v13;
      *(v6 + 12) = 2048;
      *(v6 + 14) = v12;
      _os_log_impl(&dword_18B49C000, v4, v5, "[%s] sending new input gain to context: %f", v6, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x18CFF91B0](v7, -1, -1);
      MEMORY[0x18CFF91B0](v6, -1, -1);
    }

    v14 = v0[9];
    swift_beginAccess();
    __swift_project_boxed_opaque_existential_1((v2 + 112), *(v2 + 136));
    v16 = swift_task_alloc();
    *(v0 + 14) = v16;
    *v16 = v0;
    v16[1] = sub_18B50F178;
    v15 = v14;

    return sub_18B4CE5C8(v15);
  }

  else
  {

    v10 = *(v0 + 1);

    return v10();
  }
}

uint64_t sub_18B50F178()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x1EEE6DFA0](sub_18B50F298, v3, v2);
}

uint64_t sub_18B50F298()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18B50F304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  sub_18B6C580C();
  v4[11] = sub_18B6C57FC();
  v6 = sub_18B6C57CC();
  v4[12] = v6;
  v4[13] = v5;

  return MEMORY[0x1EEE6DFA0](sub_18B50F39C, v6, v5);
}

uint64_t sub_18B50F39C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    __swift_project_boxed_opaque_existential_1((v2 + 112), *(v2 + 136));
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_18B50F4B0;

    return sub_18B4CE178();
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_18B50F4B0(float a1)
{
  v2 = *v1;
  *(*v1 + 144) = a1;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);

  return MEMORY[0x1EEE6DFA0](sub_18B50F5D0, v4, v3);
}

uint64_t sub_18B50F5D0()
{
  v1 = *(*(v0 + 112) + 64);
  v2 = *(v0 + 144);
  if (*(v1 + 88) == v2)
  {
    *(v1 + 88) = v2;
  }

  else
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    *(v0 + 64) = v1;
    sub_18B5144D4(&qword_1EA9C3BB0, type metadata accessor for RoutingControllerInputPickerViewModel.State);

    sub_18B6C420C();
  }

  *(v0 + 128) = 0;
  __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 112), *(*(v0 + 112) + 136));
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v4[1] = sub_18B50F77C;

  return sub_18B4CE98C();
}

uint64_t sub_18B50F77C(char a1)
{
  v2 = *v1;
  *(*v1 + 148) = a1;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);

  return MEMORY[0x1EEE6DFA0](sub_18B50F8A4, v4, v3);
}

uint64_t sub_18B50F8A4()
{
  v19 = v0;
  v1 = *(v0 + 148);
  v2 = *(*(v0 + 112) + 64);
  if (v1 == *(v2 + 81))
  {

    *(v2 + 81) = v1;
  }

  else
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    *(v0 + 72) = v2;
    sub_18B5144D4(&qword_1EA9C3BB0, type metadata accessor for RoutingControllerInputPickerViewModel.State);

    sub_18B6C420C();
  }

  if (qword_1EA9C3DA0 != -1)
  {
    swift_once();
  }

  v4 = sub_18B6C435C();
  __swift_project_value_buffer(v4, qword_1EA9CE398);

  v5 = sub_18B6C434C();
  v6 = sub_18B6C596C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 112);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315650;
    if (*(v8 + 72))
    {
      if (*(v8 + 72) == 1)
      {
        v11 = 0xE600000000000000;
        v12 = 0x7070412D6E49;
      }

      else
      {
        v11 = 0xE800000000000000;
        v12 = 0x73676E6974746553;
      }
    }

    else
    {
      v11 = 0xE200000000000000;
      v12 = 17219;
    }

    v13 = *(v0 + 148);
    v14 = *(v0 + 144);
    v15 = sub_18B4F4244(v12, v11, &v18);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v14;
    *(v9 + 22) = 1024;
    *(v9 + 24) = v13;
    _os_log_impl(&dword_18B49C000, v5, v6, "[%s] got new input gain from context: %f, settability: %{BOOL}d", v9, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x18CFF91B0](v10, -1, -1);
    MEMORY[0x18CFF91B0](v9, -1, -1);
  }

  else
  {
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_18B50FBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a1;
  v4[18] = a4;
  v4[19] = sub_18B6C580C();
  v4[20] = sub_18B6C57FC();
  v6 = sub_18B6C57CC();
  v4[21] = v6;
  v4[22] = v5;

  return MEMORY[0x1EEE6DFA0](sub_18B50FC6C, v6, v5);
}

uint64_t sub_18B50FC6C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    sub_18B4D1D10(v2 + 112, v0 + 16);

    v3 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    if (v4 && (v5 = *(v4 + 152), , swift_getKeyPath(), *(v0 + 128) = v5, sub_18B5144D4(&unk_1EA9C3D50, type metadata accessor for MeterController), sub_18B6C421C(), , v6 = *&v5[OBJC_IVAR____TtC5AVKit15MeterController__audioSession], , v5, v6))
    {
      v7 = [*(v6 + 16) isActive];
    }

    else
    {
      v7 = 0;
    }

    *(v0 + 224) = v7;
    *(v0 + 184) = *v3;
    *(v0 + 192) = sub_18B6C57FC();
    v9 = sub_18B6C57CC();
    *(v0 + 200) = v9;
    *(v0 + 208) = v8;

    return MEMORY[0x1EEE6DFA0](sub_18B50FE9C, v9, v8);
  }

  else
  {
    v10 = *(v0 + 136);

    *v10 = 1;
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_18B50FE9C()
{
  v1 = swift_task_alloc();
  *(v0 + 216) = v1;
  *v1 = v0;
  v1[1] = sub_18B50FF38;
  v2 = *(v0 + 224);

  return sub_18B4D3378(v2);
}

uint64_t sub_18B50FF38()
{
  v1 = *v0;

  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return MEMORY[0x1EEE6DFA0](sub_18B510058, v3, v2);
}

uint64_t sub_18B510058()
{

  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return MEMORY[0x1EEE6DFA0](sub_18B5100BC, v1, v2);
}

uint64_t sub_18B5100BC()
{
  v1 = *(v0 + 136);

  *v1 = 0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_18B51012C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[27] = a4;
  v5[28] = a5;
  v5[29] = sub_18B6C580C();
  v5[30] = sub_18B6C57FC();
  v7 = sub_18B6C57CC();
  v5[31] = v7;
  v5[32] = v6;

  return MEMORY[0x1EEE6DFA0](sub_18B5101C8, v7, v6);
}

uint64_t sub_18B5101C8()
{
  v24 = v0;
  if (qword_1EA9C3DA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 216);
  v2 = sub_18B6C435C();
  __swift_project_value_buffer(v2, qword_1EA9CE398);
  *(v0 + 128) = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *(v0 + 144) = *(v1 + 32);
  sub_18B4C41CC(v0 + 128, v0 + 160);
  sub_18B6C450C();
  sub_18B4C41CC(v0 + 144, v0 + 176);
  v5 = sub_18B6C434C();
  v6 = sub_18B6C596C();
  sub_18B4F8268(v0 + 128);

  sub_18B4F8268(v0 + 144);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315138;
    v23 = *(v0 + 128);
    sub_18B4C41CC(v0 + 128, v0 + 192);
    MEMORY[0x18CFF7260](45, 0xE100000000000000);
    MEMORY[0x18CFF7260](v3, v4);
    v9 = sub_18B4F4244(v23, *(&v23 + 1), &v22);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_18B49C000, v5, v6, "[ui] tap over setMicrophoneIfPossible with: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x18CFF91B0](v8, -1, -1);
    MEMORY[0x18CFF91B0](v7, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    sub_18B4D1D10(v11 + 112, v0 + 16);

    v12 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    swift_beginAccess();
    v13 = swift_weakLoadStrong();
    if (v13 && (v14 = *(v13 + 152), , swift_getKeyPath(), *(v0 + 208) = v14, sub_18B5144D4(&unk_1EA9C3D50, type metadata accessor for MeterController), sub_18B6C421C(), , v15 = *&v14[OBJC_IVAR____TtC5AVKit15MeterController__audioSession], , v14, v15))
    {
      v16 = [*(v15 + 16) isActive];
    }

    else
    {
      v16 = 0;
    }

    *(v0 + 336) = v16;
    v17 = *(v0 + 136);
    *(v0 + 264) = *(v0 + 128);
    *(v0 + 272) = v17;
    *(v0 + 280) = *v12;
    *(v0 + 288) = sub_18B6C57FC();
    v19 = sub_18B6C57CC();
    *(v0 + 296) = v19;
    *(v0 + 304) = v18;

    return MEMORY[0x1EEE6DFA0](sub_18B510598, v19, v18);
  }

  else
  {

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_18B510598()
{
  v1 = swift_task_alloc();
  v0[39] = v1;
  *v1 = v0;
  v1[1] = sub_18B510648;
  v3 = v0[33];
  v2 = v0[34];

  return sub_18B4F7A64(v3, v2);
}

uint64_t sub_18B510648(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 320) = a1;

  v3 = *(v2 + 304);
  v4 = *(v2 + 296);

  return MEMORY[0x1EEE6DFA0](sub_18B510770, v4, v3);
}

uint64_t sub_18B510770()
{
  v1 = *(v0 + 320);
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 328) = v2;
    *v2 = v0;
    v2[1] = sub_18B510850;
    v3 = *(v0 + 336);

    return sub_18B4D5B28(v1, v3);
  }

  else
  {

    v5 = *(v0 + 248);
    v6 = *(v0 + 256);

    return MEMORY[0x1EEE6DFA0](sub_18B5109DC, v5, v6);
  }
}

uint64_t sub_18B510850()
{
  v1 = *v0;

  v2 = *(v1 + 304);
  v3 = *(v1 + 296);

  return MEMORY[0x1EEE6DFA0](sub_18B510970, v3, v2);
}

uint64_t sub_18B510970()
{
  v1 = v0[40];

  v2 = v0[31];
  v3 = v0[32];

  return MEMORY[0x1EEE6DFA0](sub_18B5109DC, v2, v3);
}

uint64_t sub_18B5109DC()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18B510A44(uint64_t a1, char a2)
{
  v2[8] = a1;
  v2[9] = sub_18B6C580C();
  v2[10] = sub_18B6C57FC();
  v4 = swift_task_alloc();
  v2[11] = v4;
  *v4 = v2;
  v4[1] = sub_18B510B0C;

  return sub_18B511754((v2 + 2), a2);
}

uint64_t sub_18B510B0C()
{
  v1 = *v0;

  *(v1 + 96) = *(v1 + 16);
  *(v1 + 112) = *(v1 + 32);
  *(v1 + 120) = *(v1 + 40);
  *(v1 + 136) = *(v1 + 56);
  v3 = sub_18B6C57CC();

  return MEMORY[0x1EEE6DFA0](sub_18B510C98, v3, v2);
}

uint64_t sub_18B510C98()
{

  v1 = sub_18B53C014(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  v4 = v3 + 1;
  if (v3 >= v2 >> 1)
  {
    v1 = sub_18B53C014((v2 > 1), v3 + 1, 1, v1);
  }

  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v8 = *(v0 + 96);
  v7 = *(v0 + 112);
  v9 = *(v0 + 64);
  *(v1 + 2) = v4;
  v10 = &v1[56 * v3];
  *(v10 + 2) = v8;
  *(v10 + 3) = v7;
  *(v10 + 8) = v6;
  *(v10 + 9) = v5;
  v10[80] = 1;
  v11 = *(v9 + 16);
  v22 = v0;
  if (v11)
  {
    v12 = 56 * v3 + 136;
    v13 = (*(v0 + 64) + 72);
    do
    {
      v14 = *(v13 - 4);
      v15 = *(v13 - 2);
      v24 = *(v13 - 3);
      v25 = *(v13 - 5);
      v16 = *v13;
      v23 = *(v13 - 1);
      v17 = v1;
      v18 = *(v1 + 3);
      sub_18B6C450C();
      sub_18B6C450C();
      sub_18B6C450C();
      if (v4 >= v18 >> 1)
      {
        v1 = sub_18B53C014((v18 > 1), v4 + 1, 1, v17);
      }

      else
      {
        v1 = v17;
      }

      v13 += 6;
      *(v1 + 2) = v4 + 1;
      v19 = &v1[v12];
      *(v19 - 6) = v25;
      *(v19 - 5) = v14;
      *(v19 - 4) = v24;
      *(v19 - 3) = v15;
      *(v19 - 2) = v23;
      *(v19 - 1) = v16;
      v12 += 56;
      ++v4;
      *v19 = 0;
      --v11;
    }

    while (v11);
  }

  v20 = *(v22 + 8);

  return v20(v1);
}

uint64_t sub_18B510E4C(uint64_t a1, _OWORD *a2)
{
  *(v3 + 96) = a2;
  *(v3 + 104) = v2;
  *(v3 + 88) = a1;
  v4 = a2[1];
  *(v3 + 112) = *a2;
  *(v3 + 128) = v4;
  *(v3 + 144) = a2[2];
  *(v3 + 160) = sub_18B6C580C();
  *(v3 + 168) = sub_18B6C57FC();
  v6 = sub_18B6C57CC();
  *(v3 + 176) = v6;
  *(v3 + 184) = v5;

  return MEMORY[0x1EEE6DFA0](sub_18B510EFC, v6, v5);
}

uint64_t sub_18B510EFC()
{
  v1 = *(v0 + 96);
  *(v0 + 192) = *v1;
  v2 = v1[1];
  *(v0 + 200) = v2;
  *(v0 + 208) = v1[2];
  *(v0 + 216) = v1[3];
  *(v0 + 224) = v1[4];
  *(v0 + 232) = v1[5];
  if (v2)
  {
    v3 = *(v0 + 104);
    swift_beginAccess();
    *(v0 + 240) = *__swift_project_boxed_opaque_existential_1((v3 + 112), *(v3 + 136));
    sub_18B6C450C();
    sub_18B6C450C();
    sub_18B6C450C();
    *(v0 + 248) = sub_18B6C57FC();
    v5 = sub_18B6C57CC();
    *(v0 + 256) = v5;
    *(v0 + 264) = v4;

    return MEMORY[0x1EEE6DFA0](sub_18B511070, v5, v4);
  }

  else
  {

    v6 = *(v0 + 88);
    v7 = *(v0 + 128);
    v8 = *(v0 + 144);
    *v6 = *(v0 + 112);
    v6[1] = v7;
    v6[2] = v8;
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_18B511070()
{
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_18B511104;

  return sub_18B4D49F8();
}

uint64_t sub_18B511104(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 280) = a1;

  v3 = *(v2 + 264);
  v4 = *(v2 + 256);

  return MEMORY[0x1EEE6DFA0](sub_18B51122C, v4, v3);
}

uint64_t sub_18B51122C()
{

  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return MEMORY[0x1EEE6DFA0](sub_18B511290, v1, v2);
}

uint64_t sub_18B511290()
{
  v1 = *(v0 + 280);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v13 = *(v0 + 192);
  v14 = *(v0 + 208);

  *(v0 + 16) = v13;
  *(v0 + 32) = v14;
  *(v0 + 48) = v3;
  *(v0 + 56) = v2;
  v4 = swift_task_alloc();
  *(v4 + 16) = v0 + 16;
  LOBYTE(v3) = sub_18B513970(sub_18B51454C, v4, v1);

  v5 = *(v0 + 232);
  v6 = *(v0 + 216);
  if (v3)
  {
    v7 = *(v0 + 224);
    v8 = *(v0 + 208);
    v9 = *(v0 + 192);
  }

  else
  {

    v8 = 0;
    v6 = 0;
    v7 = 0;
    v5 = 0;
    v9 = 0uLL;
  }

  v10 = *(v0 + 88);
  *v10 = v9;
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 32) = v7;
  *(v10 + 40) = v5;
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_18B5113C0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = sub_18B6C580C();
  v2[6] = sub_18B6C57FC();
  v3 = swift_task_alloc();
  v2[7] = v3;
  *v3 = v2;
  v3[1] = sub_18B511474;

  return sub_18B508FB4(1);
}

uint64_t sub_18B511474()
{

  v1 = sub_18B6C57CC();

  return MEMORY[0x1EEE6DFA0](sub_18B5115B0, v1, v0);
}

uint64_t sub_18B5115B0()
{
  v1 = v0[4];

  v2 = *(v1 + 64);
  swift_getKeyPath();
  v0[2] = v2;
  sub_18B5144D4(&qword_1EA9C3BB0, type metadata accessor for RoutingControllerInputPickerViewModel.State);

  sub_18B6C421C();

  v3 = *(v2 + 24);
  sub_18B6C450C();

  v4 = *(v3 + 16) + 1;
  v5 = v3;
  while (--v4)
  {
    v6 = (v5 + 56);
    v7 = *(v5 + 80);
    v5 += 56;
    if (v7 == 1)
    {
      v9 = *(v6 - 3);
      v8 = *(v6 - 2);
      v11 = *(v6 - 1);
      v10 = *v6;
      v13 = v6[1];
      v12 = v6[2];
      sub_18B6C450C();
      sub_18B6C450C();
      sub_18B6C450C();
      v14 = 1;
      goto LABEL_6;
    }
  }

  v9 = 0;
  v8 = 0;
  v11 = 0;
  v10 = 0;
  v13 = 0;
  v12 = 0;
  v14 = -1;
LABEL_6:
  v15 = v0[3];

  *v15 = v9;
  *(v15 + 8) = v8;
  *(v15 + 16) = v11;
  *(v15 + 24) = v10;
  *(v15 + 32) = v13;
  *(v15 + 40) = v12;
  *(v15 + 48) = v14;
  v16 = v0[1];

  return v16();
}

uint64_t sub_18B511754(uint64_t a1, char a2)
{
  v3[17] = a1;
  v3[18] = v2;
  v5 = sub_18B6C584C();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = sub_18B6C580C();
  v3[23] = sub_18B6C57FC();
  v6 = swift_task_alloc();
  v3[24] = v6;
  *v6 = v3;
  v6[1] = sub_18B511878;

  return sub_18B5121DC((v3 + 8), a2);
}

uint64_t sub_18B511878()
{
  v1 = *v0;

  v3 = sub_18B6C57CC();
  *(v1 + 200) = v3;
  *(v1 + 208) = v2;

  return MEMORY[0x1EEE6DFA0](sub_18B5119BC, v3, v2);
}

uint64_t sub_18B5119BC()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v3 = *(v0 + 96);
    v2 = *(v0 + 104);
    v11 = *(v0 + 80);
    v4 = *(v0 + 64);

    v5 = *(v0 + 136);

    *v5 = v4;
    *(v5 + 8) = v1;
    *(v5 + 16) = v11;
    *(v5 + 32) = v3;
    *(v5 + 40) = v2;
    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 144);
    swift_beginAccess();
    *(v0 + 216) = *__swift_project_boxed_opaque_existential_1((v8 + 112), *(v8 + 136));
    *(v0 + 224) = sub_18B6C57FC();
    v10 = sub_18B6C57CC();
    *(v0 + 232) = v10;
    *(v0 + 240) = v9;

    return MEMORY[0x1EEE6DFA0](sub_18B511AF8, v10, v9);
  }
}

uint64_t sub_18B511B20()
{
  v1 = *(*(v0 + 248) + 104);
  *(v0 + 256) = v1;
  return MEMORY[0x1EEE6DFA0](sub_18B511B44, v1, 0);
}

uint64_t sub_18B511B44()
{
  v1 = v0[32];
  v2 = v1[14];
  v0[33] = v2;
  v3 = v1[15];
  v0[34] = v3;
  v0[35] = v1[16];
  v0[36] = v1[17];
  v0[37] = v1[18];
  v0[38] = v1[19];
  sub_18B4F47EC(v2, v3);

  return MEMORY[0x1EEE6DFA0](sub_18B511BDC, 0, 0);
}

uint64_t sub_18B511BDC()
{
  v1 = *(v0 + 272);
  if (v1)
  {
    v2 = *(v0 + 304);
    v3 = *(v0 + 280);
    v4 = *(v0 + 264);
    *(v0 + 360) = *(v0 + 296);
    *(v0 + 368) = v2;
    *(v0 + 344) = v3;
    *(v0 + 328) = v4;
    *(v0 + 336) = v1;
    v5 = *(v0 + 232);
    v6 = *(v0 + 240);

    return MEMORY[0x1EEE6DFA0](sub_18B511F50, v5, v6);
  }

  else
  {
    v7 = swift_allocObject();
    *(v0 + 312) = v7;
    swift_weakInit();
    sub_18B6C582C();
    v8 = swift_task_alloc();
    *(v0 + 320) = v8;
    *v8 = v0;
    v8[1] = sub_18B511D6C;
    v9 = *(v0 + 168);

    return sub_18B4F0730(v0 + 16, 0x6B6361626C6C6166, 0xEF29286574756F52, v9, &unk_18B6E9700, v7);
  }
}

uint64_t sub_18B511D6C()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 152);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 56);
  v7 = *(v1 + 16);
  v6 = *(v1 + 32);
  *(v1 + 360) = *(v1 + 48);
  *(v1 + 368) = v5;
  *(v1 + 344) = v6;
  *(v1 + 328) = v7;
  v8 = *(v1 + 240);
  v9 = *(v1 + 232);

  return MEMORY[0x1EEE6DFA0](sub_18B511F50, v9, v8);
}

uint64_t sub_18B511F50()
{

  v1 = *(v0 + 200);
  v2 = *(v0 + 208);

  return MEMORY[0x1EEE6DFA0](sub_18B511FB4, v1, v2);
}

uint64_t sub_18B511FB4()
{
  v21 = v0;

  if (qword_1EA9C3DA0 != -1)
  {
    swift_once();
  }

  v1 = sub_18B6C435C();
  __swift_project_value_buffer(v1, qword_1EA9CE398);
  sub_18B6C450C();
  sub_18B6C450C();
  sub_18B6C450C();
  v2 = sub_18B6C434C();
  v3 = sub_18B6C596C();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[43];
    v4 = v0[44];
    v7 = v0[41];
    v6 = v0[42];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    v19 = v7;
    *v8 = 136315138;
    v20 = v6;
    sub_18B6C450C();
    MEMORY[0x18CFF7260](45, 0xE100000000000000);
    MEMORY[0x18CFF7260](v5, v4);
    v10 = sub_18B4F4244(v19, v6, &v18);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_18B49C000, v2, v3, "[ui:mark] fallbackMicrophone: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x18CFF91B0](v9, -1, -1);
    MEMORY[0x18CFF91B0](v8, -1, -1);
  }

  v11 = v0[45];
  v12 = v0[46];
  v16 = *(v0 + 41);
  v17 = *(v0 + 43);
  v13 = v0[17];

  *v13 = v16;
  *(v13 + 16) = v17;
  *(v13 + 32) = v11;
  *(v13 + 40) = v12;
  v14 = v0[1];

  return v14();
}

uint64_t sub_18B5121DC(uint64_t a1, char a2)
{
  *(v3 + 648) = a2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v2;
  *(v3 + 368) = sub_18B6C580C();
  *(v3 + 376) = sub_18B6C57FC();
  v5 = sub_18B6C57CC();
  *(v3 + 384) = v5;
  *(v3 + 392) = v4;

  return MEMORY[0x1EEE6DFA0](sub_18B51227C, v5, v4);
}

uint64_t sub_18B51227C()
{
  v1 = *(v0 + 360);
  if (*(v0 + 648) == 1)
  {
    swift_beginAccess();
    *(v0 + 400) = *__swift_project_boxed_opaque_existential_1((v1 + 112), *(v1 + 136));
    *(v0 + 408) = sub_18B6C57FC();
    v2 = sub_18B6C57CC();
    v4 = v3;
    *(v0 + 416) = v2;
    *(v0 + 424) = v3;
    v5 = sub_18B5123A0;
  }

  else
  {
    swift_beginAccess();
    *(v0 + 560) = *__swift_project_boxed_opaque_existential_1((v1 + 112), *(v1 + 136));
    *(v0 + 568) = sub_18B6C57FC();
    v2 = sub_18B6C57CC();
    v4 = v6;
    *(v0 + 576) = v2;
    *(v0 + 584) = v6;
    v5 = sub_18B512C2C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v2, v4);
}

uint64_t sub_18B5123A0()
{
  v1 = swift_task_alloc();
  *(v0 + 432) = v1;
  *v1 = v0;
  v1[1] = sub_18B51243C;

  return sub_18B4D5820(v0 + 112);
}

uint64_t sub_18B51243C()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  *(v1 + 440) = *(v1 + 112);
  *(v1 + 456) = v2;
  v3 = *(v1 + 424);
  v4 = *(v1 + 416);

  return MEMORY[0x1EEE6DFA0](sub_18B512574, v4, v3);
}

uint64_t sub_18B512574()
{

  v1 = *(v0 + 384);
  v2 = *(v0 + 392);

  return MEMORY[0x1EEE6DFA0](sub_18B5125D8, v1, v2);
}

uint64_t sub_18B5125D8()
{
  v0[59] = *__swift_project_boxed_opaque_existential_1((v0[45] + 112), *(v0[45] + 136));
  v0[60] = sub_18B6C57FC();
  v2 = sub_18B6C57CC();
  v0[61] = v2;
  v0[62] = v1;

  return MEMORY[0x1EEE6DFA0](sub_18B512678, v2, v1);
}

uint64_t sub_18B512678()
{
  v1 = swift_task_alloc();
  *(v0 + 504) = v1;
  *v1 = v0;
  v1[1] = sub_18B512718;

  return sub_18B4D500C(v0 + 64, 1);
}

uint64_t sub_18B512718()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  *(v1 + 512) = *(v1 + 64);
  *(v1 + 528) = v2;
  *(v1 + 544) = *(v1 + 96);
  v3 = *(v1 + 496);
  v4 = *(v1 + 488);

  return MEMORY[0x1EEE6DFA0](sub_18B51284C, v4, v3);
}

uint64_t sub_18B51284C()
{

  v1 = *(v0 + 384);
  v2 = *(v0 + 392);

  return MEMORY[0x1EEE6DFA0](sub_18B5128B0, v1, v2);
}

uint64_t sub_18B5128B0()
{
  v30 = v0;

  if (qword_1EA9C3DA0 != -1)
  {
    swift_once();
  }

  v1 = sub_18B6C435C();
  __swift_project_value_buffer(v1, qword_1EA9CE398);

  sub_18B4A63EC(v0 + 112, v0 + 208, &qword_1EA9C4FC8);
  sub_18B4A63EC(v0 + 64, v0 + 256, &qword_1EA9C4FC8);
  v2 = sub_18B6C434C();
  v3 = sub_18B6C596C();

  sub_18B4A6454(v0 + 112, &qword_1EA9C4FC8);
  sub_18B4A6454(v0 + 64, &qword_1EA9C4FC8);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 360);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v27 = v6;
    *v5 = 136315650;
    if (*(v4 + 72))
    {
      if (*(v4 + 72) == 1)
      {
        v7 = 0xE600000000000000;
        v8 = 0x7070412D6E49;
      }

      else
      {
        v7 = 0xE800000000000000;
        v8 = 0x73676E6974746553;
      }
    }

    else
    {
      v7 = 0xE200000000000000;
      v8 = 17219;
    }

    v9 = 7104878;
    v10 = sub_18B4F4244(v8, v7, &v27);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2080;
    if (*(v0 + 120))
    {
      v12 = *(v0 + 456);
      v11 = *(v0 + 464);
      v13 = *(v0 + 448);
      v28 = *(v0 + 440);
      v29 = v13;
      sub_18B6C450C();
      MEMORY[0x18CFF7260](45, 0xE100000000000000);
      MEMORY[0x18CFF7260](v12, v11);
      sub_18B4A6454(v0 + 112, &qword_1EA9C4FC8);
      v14 = v28;
      v15 = v29;
    }

    else
    {
      v15 = 0xE300000000000000;
      v14 = 7104878;
    }

    v16 = sub_18B4F4244(v14, v15, &v27);

    *(v5 + 14) = v16;
    *(v5 + 22) = 2080;
    if (*(v0 + 72))
    {
      v17 = *(v0 + 536);
      v18 = *(v0 + 528);
      v19 = *(v0 + 520);
      v28 = *(v0 + 512);
      v29 = v19;
      sub_18B6C450C();
      MEMORY[0x18CFF7260](45, 0xE100000000000000);
      MEMORY[0x18CFF7260](v18, v17);
      v9 = v28;
      v20 = v29;
    }

    else
    {
      v20 = 0xE300000000000000;
    }

    v21 = sub_18B4F4244(v9, v20, &v27);

    *(v5 + 24) = v21;
    _os_log_impl(&dword_18B49C000, v2, v3, "[%s] system preferred: %s, device routed %s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x18CFF91B0](v6, -1, -1);
    MEMORY[0x18CFF91B0](v5, -1, -1);
  }

  else
  {

    sub_18B4A6454(v0 + 112, &qword_1EA9C4FC8);
  }

  v22 = *(v0 + 352);
  v23 = *(v0 + 528);
  v24 = *(v0 + 544);
  *v22 = *(v0 + 512);
  v22[1] = v23;
  v22[2] = v24;
  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_18B512C2C()
{
  v1 = swift_task_alloc();
  *(v0 + 592) = v1;
  *v1 = v0;
  v1[1] = sub_18B512CC0;

  return sub_18B4D49F8();
}

uint64_t sub_18B512CC0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 600) = a1;

  v3 = *(v2 + 584);
  v4 = *(v2 + 576);

  return MEMORY[0x1EEE6DFA0](sub_18B512DE8, v4, v3);
}

uint64_t sub_18B512DE8()
{

  v1 = *(v0 + 384);
  v2 = *(v0 + 392);

  return MEMORY[0x1EEE6DFA0](sub_18B512E4C, v1, v2);
}

uint64_t sub_18B512E4C()
{
  v0[76] = *__swift_project_boxed_opaque_existential_1((v0[45] + 112), *(v0[45] + 136));
  v0[77] = sub_18B6C57FC();
  v2 = sub_18B6C57CC();
  v0[78] = v2;
  v0[79] = v1;

  return MEMORY[0x1EEE6DFA0](sub_18B512EF0, v2, v1);
}

uint64_t sub_18B512EF0()
{
  v1 = swift_task_alloc();
  *(v0 + 640) = v1;
  *v1 = v0;
  v1[1] = sub_18B512F8C;

  return sub_18B4D5820(v0 + 16);
}

uint64_t sub_18B512F8C()
{
  v1 = *v0;

  v2 = *(v1 + 632);
  v3 = *(v1 + 624);

  return MEMORY[0x1EEE6DFA0](sub_18B5130AC, v3, v2);
}

uint64_t sub_18B5130AC()
{

  v1 = *(v0 + 384);
  v2 = *(v0 + 392);

  return MEMORY[0x1EEE6DFA0](sub_18B513110, v1, v2);
}

uint64_t sub_18B513110()
{
  v31 = v0;

  v2 = v0[2];
  v1 = v0[3];
  if (!v1)
  {

    v2 = 0;
LABEL_11:
    v4 = 0;
    v3 = 0;
    v19 = 0;
    v5 = 0;
    goto LABEL_16;
  }

  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v0[20] = v2;
  v7 = v0[75];
  v0[21] = v1;
  v0[22] = v4;
  v0[23] = v3;
  v0[24] = v6;
  v0[25] = v5;
  v8 = swift_task_alloc();
  *(v8 + 16) = v0 + 20;
  v9 = sub_18B513970(sub_18B513E80, v8, v7);

  if ((v9 & 1) == 0)
  {

    v2 = 0;
    v1 = 0;
    goto LABEL_11;
  }

  v27 = v6;
  if (qword_1EA9C3DA0 != -1)
  {
    swift_once();
  }

  v10 = sub_18B6C435C();
  __swift_project_value_buffer(v10, qword_1EA9CE398);

  sub_18B6C450C();
  sub_18B6C450C();
  sub_18B6C450C();
  v11 = sub_18B6C434C();
  v12 = sub_18B6C596C();

  if (os_log_type_enabled(v11, v12))
  {
    v26 = v12;
    v13 = v0[45];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28 = v15;
    *v14 = 136315394;
    v25 = v15;
    v16 = v4;
    if (*(v13 + 72))
    {
      if (*(v13 + 72) == 1)
      {
        v17 = 0xE600000000000000;
        v18 = 0x7070412D6E49;
      }

      else
      {
        v17 = 0xE800000000000000;
        v18 = 0x73676E6974746553;
      }
    }

    else
    {
      v17 = 0xE200000000000000;
      v18 = 17219;
    }

    v20 = sub_18B4F4244(v18, v17, &v28);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v29 = v2;
    v30 = v1;
    sub_18B6C450C();
    MEMORY[0x18CFF7260](45, 0xE100000000000000);
    MEMORY[0x18CFF7260](v16, v3);
    v21 = sub_18B4F4244(v29, v30, &v28);

    *(v14 + 14) = v21;
    v4 = v16;
    _os_log_impl(&dword_18B49C000, v11, v26, "[ui][%s] systemPreferredMicrophone :%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x18CFF91B0](v25, -1, -1);
    MEMORY[0x18CFF91B0](v14, -1, -1);
  }

  v19 = v27;
LABEL_16:
  v22 = v0[44];
  *v22 = v2;
  v22[1] = v1;
  v22[2] = v4;
  v22[3] = v3;
  v22[4] = v19;
  v22[5] = v5;
  v23 = v0[1];

  return v23();
}

uint64_t sub_18B51346C()
{
  v1 = v0;
  if (qword_1EA9C3DA0 != -1)
  {
    swift_once();
  }

  v2 = sub_18B6C435C();
  __swift_project_value_buffer(v2, qword_1EA9CE398);
  v3 = sub_18B6C434C();
  v4 = sub_18B6C596C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_18B49C000, v3, v4, "[deinit] RoutingControllerInputPickerViewModel deinit", v5, 2u);
    MEMORY[0x18CFF91B0](v5, -1, -1);
  }

  sub_18B4A31A4(*(v1 + 16));
  sub_18B4A31A4(*(v1 + 32));

  __swift_destroy_boxed_opaque_existential_1(v1 + 112);

  return v1;
}

uint64_t sub_18B51358C()
{
  sub_18B51346C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RoutingControllerInputPickerViewModel.State()
{
  result = qword_1EA9C3BA0;
  if (!qword_1EA9C3BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18B513638()
{
  result = sub_18B6C425C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_18B51370C()
{
  result = qword_1EA9C5210;
  if (!qword_1EA9C5210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C5210);
  }

  return result;
}

uint64_t sub_18B513760(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B4CCBCC;

  return sub_18B50F304(a1, v4, v5, v6);
}

double sub_18B513814()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 88) = result;
  return result;
}

uint64_t sub_18B513824()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_18B4CCBCC;

  return sub_18B50DACC(v2, v3);
}

uint64_t sub_18B5138C8(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_18B513970(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 72);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *(v7 - 3);
      v11 = *(v7 - 2);
      v12 = *(v7 - 4);
      v16[0] = *(v7 - 5);
      v16[1] = v12;
      v16[2] = v10;
      v16[3] = v11;
      v16[4] = v8;
      v16[5] = v9;
      sub_18B6C450C();
      sub_18B6C450C();
      sub_18B6C450C();
      v13 = a1(v16);

      if (v3)
      {
        break;
      }

      v7 += 6;
      v14 = v6-- == 0;
    }

    while (((v13 | v14) & 1) == 0);
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13 & 1;
}

uint64_t sub_18B513A54(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = v3 - 1;
    v5 = (a3 + 80);
    do
    {
      v6 = *(v5 - 5);
      v7 = *(v5 - 4);
      v8 = *(v5 - 3);
      v9 = *(v5 - 2);
      v16 = *(v5 - 1);
      v17[0] = *(v5 - 6);
      v15 = *v5;
      v17[1] = v6;
      v17[2] = v7;
      v17[3] = v8;
      v17[4] = v9;
      v17[5] = v16;
      v18 = v15;
      sub_18B4B20E4();
      v10 = v19;
      v11 = a1(v17);
      sub_18B4B2144();
      v19 = v10;
      if (v10)
      {
        break;
      }

      v12 = v4-- == 0;
      v5 += 56;
    }

    while (((v11 | v12) & 1) == 0);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

uint64_t sub_18B513B5C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[6])
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 48))
  {
    return 0;
  }

  if (v3 == *a2 && a1[1] == *(a2 + 8))
  {
    return 1;
  }

  else
  {
    return sub_18B6C5CEC() & 1;
  }
}

BOOL sub_18B513BD8(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 48);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 48);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = *(a2 + 16);
  if (v5 == 255)
  {
    if (v8 == 255)
    {
      goto LABEL_14;
    }
  }

  else if (v8 != 255)
  {
    if (v5)
    {
      if (v8)
      {
        if (v3 != v6 || v4 != v7)
        {
LABEL_15:
          v14 = sub_18B6C5CEC();
          return (v14 & 1) == 0;
        }

        goto LABEL_14;
      }

      goto LABEL_11;
    }

    if (v8)
    {
LABEL_11:
      v14 = 0;
      return (v14 & 1) == 0;
    }

    if (v3 != v6 || v4 != v7)
    {
      goto LABEL_15;
    }

LABEL_14:
    v14 = 1;
    return (v14 & 1) == 0;
  }

  v16 = *a2;
  v17 = *(a2 + 8);
  v18 = *(a2 + 24);
  v19 = *(a2 + 32);
  v20 = *(a2 + 40);
  sub_18B4A63EC(a1, v21, &qword_1EA9C43E8);
  sub_18B4A63EC(a2, v21, &qword_1EA9C43E8);
  sub_18B4B212C(v3, v4, v9, v10, v12, v11, v5);
  sub_18B4B212C(v16, v17, v13, v18, v19, v20, v8);
  v14 = 0;
  return (v14 & 1) == 0;
}

uint64_t sub_18B513D54()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
  sub_18B6C450C();
}

uint64_t sub_18B513DE4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_18B4CCBCC;

  return sub_18B4E0C40(a1, v1);
}

uint64_t sub_18B513E9C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_18B6C5CEC() & 1;
  }
}

uint64_t sub_18B513EF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B4CCBCC;

  return sub_18B50BB00(a1, v4, v5, v6);
}

uint64_t sub_18B513FA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B4CC5A0;

  return sub_18B4CEDDC(a1, v4, v5, v6);
}

uint64_t sub_18B51405C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B4CCBCC;

  return sub_18B508B5C(a1, v4, v5, v6);
}

uint64_t getEnumTagSinglePayload for FeatureFlags(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for FeatureFlags(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_18B5141FC()
{
  result = qword_1EA9C5230;
  if (!qword_1EA9C5230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C5230);
  }

  return result;
}

uint64_t sub_18B514250(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_18B4CCBCC;

  return sub_18B50EE24(v7, a1, v4, v5, v6);
}

uint64_t sub_18B514314(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[10];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B4CCBCC;

  return sub_18B51012C(a1, v4, v5, (v1 + 4), v6);
}

uint64_t objectdestroy_20Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_18B514420(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B4CCBCC;

  return sub_18B50FBD0(a1, v4, v5, v6);
}

uint64_t sub_18B5144D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18B5145B4()
{

  return swift_deallocClassInstance();
}

double _sSo13AVControlItemC5AVKitE3tip6TipKit0E0_pSgvg_0@<D0>(uint64_t a1@<X8>)
{
  v3 = [objc_opt_self() shared];
  v4 = [v3 playerTipsEnabled];

  if (!v4)
  {
    goto LABEL_9;
  }

  if ([v1 tip])
  {
    sub_18B6C5AAC();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_18B4A6454(v8, &qword_1EA9C5238);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4318);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_18B514924(uint64_t a1)
{
  v3 = [objc_opt_self() shared];
  v4 = [v3 playerTipsEnabled];

  if (v4)
  {
    sub_18B4D3208(a1, v14);
    v5 = v15;
    if (v15)
    {
      v6 = __swift_project_boxed_opaque_existential_1(v14, v15);
      v7 = *(v5 - 8);
      v8 = MEMORY[0x1EEE9AC00](v6, v6);
      v10 = &v14[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v7 + 16))(v10, v8);
      v11 = sub_18B6C5CDC();
      (*(v7 + 8))(v10, v5);
      __swift_destroy_boxed_opaque_existential_1(v14);
    }

    else
    {
      v11 = 0;
    }

    [v1 setTip_];
    swift_unknownObjectRelease();
  }

  return sub_18B4A6454(a1, &qword_1EA9C4320);
}

id sub_18B514AC0()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCF60]) init];
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  *&v2 = v2;
  [v1 setMinimumValue_];
  *&v4 = v3;
  [v1 setMaximumValue_];
  [v1 setMinimumTrackTintColor_];
  [v1 setMaximumTrackTintColor_];
  v5 = [objc_opt_self() whiteColor];
  [v1 setThumbTintColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5258);
  sub_18B6C4D9C();
  [v1 addTarget:v7 action:sel_valueChanged_ forControlEvents:4096];

  return v1;
}

id sub_18B514CEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InputPickerStyledSlider.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18B514DA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_18B514DE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_18B514E48(void *a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v8[1] = *v1;
  v8[2] = v3;
  v8[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5250);
  MEMORY[0x18CFF6FE0](v8, v5);
  HIDWORD(v6) = HIDWORD(v8[0]);
  *&v6 = v8[0];
  return [a1 setValue_];
}

id sub_18B514EE8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v14 = *(v1 + 1);
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = type metadata accessor for InputPickerStyledSlider.Coordinator();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtCV5AVKit23InputPickerStyledSlider11Coordinator_parent];
  *v10 = v3;
  *(v10 + 1) = v4;
  *(v10 + 1) = v14;
  *(v10 + 4) = v5;
  *(v10 + 5) = v6;
  *(v10 + 6) = v7;
  v15.receiver = v9;
  v15.super_class = v8;

  v11 = v6;
  v12 = v7;
  result = objc_msgSendSuper2(&v15, sel_init);
  *a1 = result;
  return result;
}

void sub_18B5150F8()
{
  sub_18B515178();
  sub_18B6C4BFC();
  __break(1u);
}

unint64_t sub_18B515124()
{
  result = qword_1EA9C5248;
  if (!qword_1EA9C5248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C5248);
  }

  return result;
}

unint64_t sub_18B515178()
{
  result = qword_1EA9C5260;
  if (!qword_1EA9C5260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C5260);
  }

  return result;
}

void sub_18B5151F4(void *a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC5AVKit30InputPickerAnimationTransition_viewController) view];
  if (v3)
  {
    v30 = v3;
    v4 = OBJC_IVAR____TtC5AVKit30InputPickerAnimationTransition_style;
    if (*(v1 + OBJC_IVAR____TtC5AVKit30InputPickerAnimationTransition_style))
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v30;
      *(v5 + 24) = a1;
      v6 = v30;
      v7 = sub_18B4A77AC;
    }

    else
    {
      v8 = [a1 containerView];
      [v8 addSubview_];

      v9 = [a1 containerView];
      v10 = [objc_opt_self() clearColor];
      [v9 setBackgroundColor_];

      v5 = swift_allocObject();
      *(v5 + 16) = a1;
      v7 = sub_18B4A7888;
    }

    v11 = v7;
    if ([swift_unknownObjectRetain() isAnimated])
    {
      if (*(v1 + v4) == 1)
      {
        [v30 bounds];
        Height = CGRectGetHeight(v33);
        CGAffineTransformMakeTranslation(&aBlock, 0.0, Height);
        v13 = 0.25;
        v14 = 1.0;
        tx = aBlock.tx;
        ty = aBlock.ty;
        [v30 setAlpha_];
      }

      else
      {
        v14 = 0.0;
        v13 = 0.35;
        tx = 0.0;
        ty = 0.0;
        [v30 setAlpha_];
      }

      aBlock.a = 1.0;
      aBlock.b = 0.0;
      aBlock.c = 0.0;
      aBlock.d = 1.0;
      aBlock.tx = 0.0;
      aBlock.ty = 0.0;
      [v30 setTransform_];
      v17 = swift_allocObject();
      *(v17 + 16) = v30;
      *(v17 + 24) = v14;
      __asm { FMOV            V0.2D, #1.0 }

      *(v17 + 32) = _Q0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 72) = 0;
      *(v17 + 80) = 0;
      *(v17 + 64) = 0x3FF0000000000000;
      *(v17 + 104) = v29;
      *(v17 + 88) = v28;
      *(v17 + 120) = tx;
      *(v17 + 128) = ty;
      if (*(v1 + v4))
      {
        v23 = objc_opt_self();
        *&aBlock.tx = sub_18B51584C;
        *&aBlock.ty = v17;
        *&aBlock.a = MEMORY[0x1E69E9820];
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_18B533A4C;
        *&aBlock.d = &block_descriptor_2;
        v24 = _Block_copy(&aBlock);
        v25 = v30;

        *&aBlock.tx = v11;
        *&aBlock.ty = v5;
        *&aBlock.a = MEMORY[0x1E69E9820];
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_18B515858;
        *&aBlock.d = &block_descriptor_12;
        v26 = _Block_copy(&aBlock);

        [v23 animateWithDuration:0 delay:v24 options:v26 animations:v13 completion:0.0];
        _Block_release(v26);
        _Block_release(v24);
      }

      else
      {
        sub_18B4AEB5C();
        v27 = v30;
        sub_18B6C5A3C();
      }
    }

    else
    {
      v11(1);
    }
  }

  else
  {

    [a1 completeTransition_];
  }
}

id sub_18B5156B8(void *a1, uint64_t a2)
{
  [a1 setAlpha_];
  v4 = *(a2 + 80);
  v6[0] = *(a2 + 64);
  v6[1] = v4;
  v6[2] = *(a2 + 96);
  return [a1 setTransform_];
}

unint64_t sub_18B5157F8()
{
  result = qword_1EA9C5288;
  if (!qword_1EA9C5288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C5288);
  }

  return result;
}

uint64_t sub_18B515858(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_18B515970(void *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_playerItem);
  if (a1)
  {
    if (v3)
    {
      v4 = a1;
      sub_18B4AC60C(0, &qword_1EA9C3A70);
      v5 = v3;
      v6 = v4;
      LOBYTE(v4) = sub_18B6C5A6C();

      if (v4)
      {
        return;
      }
    }
  }

  else if (!v3)
  {
    return;
  }

  v7 = OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_itemsKVOToken;
  v8 = *(v2 + OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_itemsKVOToken);
  if (v8)
  {
    v9 = v8;
    sub_18B6C404C();

    v10 = *(v2 + v7);
  }

  else
  {
    v10 = 0;
  }

  *(v2 + v7) = 0;
}

void sub_18B515A58()
{
  v1 = type metadata accessor for MediaInfo();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v20 - v7;
  v9 = OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_itemsKVOToken;
  if (!*&v0[OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_itemsKVOToken])
  {
    v10 = *&v0[OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_playerItem];
    if (v10)
    {
      v20[1] = *&v0[OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_playerItem];
      swift_getKeyPath();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = v10;
      v10 = sub_18B6C40AC();

      v12 = *&v0[v9];
    }

    else
    {
      v12 = 0;
    }

    *&v0[v9] = v10;
  }

  v13 = *&v0[OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_playerItem];
  if (v13)
  {
    v14 = sub_18B6C584C();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    sub_18B6C580C();
    v15 = v13;
    v16 = v0;
    v17 = sub_18B6C57FC();
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E85E0];
    v18[2] = v17;
    v18[3] = v19;
    v18[4] = v15;
    v18[5] = v16;
    sub_18B5280B4(0, 0, v8, &unk_18B6E9BE8, v18);
  }

  else
  {
    sub_18B4FE418(v4);
    sub_18B515E00(v4);
  }
}

uint64_t sub_18B515E00(uint64_t a1)
{
  v3 = type metadata accessor for MediaInfo();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v13[-v9];
  v11 = OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_metadata;
  swift_beginAccess();
  sub_18B51714C(v1 + v11, v10);
  swift_beginAccess();
  sub_18B5172B8(a1, v1 + v11);
  swift_endAccess();
  sub_18B51714C(v1 + v11, v6);
  LOBYTE(v11) = sub_18B4FEC60(v10, v6);
  sub_18B51731C(v6);
  if ((v11 & 1) == 0)
  {
    sub_18B516EA8();
  }

  sub_18B51731C(a1);
  return sub_18B51731C(v10);
}

id sub_18B515F28(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for MediaInfo();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_playerItem;
  *&v2[OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_playerItem] = 0;
  *&v2[OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_hostingController] = 0;
  *&v2[OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_itemsKVOToken] = 0;
  *&v2[v9] = a1;
  *&v2[OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_actions] = a2;
  sub_18B4FE418(v8);
  sub_18B517378(v8, &v2[OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_metadata]);
  v10 = type metadata accessor for AVInfoTabViewController();
  v17.receiver = v2;
  v17.super_class = v10;
  v11 = a1;
  v12 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, 0, 0);
  v13 = sub_18B6C55FC();
  v14 = sub_18B6C55FC();
  v15 = AVLocalizedString(v13);

  if (!v15)
  {
    sub_18B6C562C();
    v15 = sub_18B6C55FC();
  }

  [v12 setTitle_];

  return v12;
}

void sub_18B51628C()
{
  v28.receiver = v0;
  v28.super_class = type metadata accessor for AVInfoTabViewController();
  objc_msgSendSuper2(&v28, sel_viewDidLayoutSubviews);
  v1 = OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_hostingController;
  v2 = *&v0[OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_hostingController];
  if (v2)
  {
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v0 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];
        v8 = v7;
        v10 = v9;
        v12 = v11;
        v14 = v13;

        [v4 setFrame_];
        v15 = *&v0[v1];
        if (!v15)
        {
          return;
        }

        v16 = [v15 view];
        if (v16)
        {
          v17 = v16;
          [v16 transform];
          v25 = *&v27.c;
          v26 = *&v27.a;
          v24 = *&v27.tx;

          v18 = *&v0[v1];
          if (!v18)
          {
            return;
          }

          v19 = [v18 view];
          if (v19)
          {
            v20 = v19;
            CGAffineTransformMakeScale(&v27, 1.01, 1.01);
            [v20 setTransform_];

            v21 = *&v0[v1];
            if (!v21)
            {
              return;
            }

            v22 = [v21 view];
            if (v22)
            {
              v23 = v22;
              *&v27.a = v26;
              *&v27.c = v25;
              *&v27.tx = v24;
              [v22 setTransform_];

              return;
            }

LABEL_16:
            __break(1u);
            return;
          }

LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }
}

id sub_18B5164B4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_itemsKVOToken;
  v3 = *&v0[OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_itemsKVOToken];
  if (v3)
  {
    v4 = v3;
    sub_18B6C404C();

    v3 = *&v1[v2];
  }

  *&v1[v2] = 0;

  v6.receiver = v1;
  v6.super_class = type metadata accessor for AVInfoTabViewController();
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t type metadata accessor for AVInfoTabViewController()
{
  result = qword_1EA9C3C50;
  if (!qword_1EA9C3C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18B516684()
{
  v1 = v0;
  v2 = type metadata accessor for AVInfoTabView(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_hostingController;
  if (!*&v1[OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_hostingController])
  {
    v7 = OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_metadata;
    swift_beginAccess();
    sub_18B51714C(&v1[v7], v5);
    v8 = *&v1[OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_actions];
    *&v5[*(type metadata accessor for AVInfoTabViewConfiguration(0) + 20)] = v8;
    v9 = v2[5];
    *&v5[v9] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C48B0);
    swift_storeEnumTagMultiPayload();
    v10 = v2[6];
    *&v5[v10] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v11 = &v5[v2[7]];
    v29 = 0;
    v30 = 0;
    type metadata accessor for CGSize(0);
    sub_18B6C450C();
    sub_18B6C531C();
    v12 = v32;
    *v11 = v31;
    *(v11 + 2) = v12;
    v13 = &v5[v2[8]];
    v29 = 0;
    v30 = 0;
    sub_18B6C531C();
    v14 = v32;
    *v13 = v31;
    *(v13 + 2) = v14;
    v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C52F0));
    v16 = sub_18B6C4B4C();
    v17 = *&v1[v6];
    *&v1[v6] = v16;
    v18 = v16;

    [v18 willMoveToParentViewController_];
    v19 = *&v1[v6];
    if (v19)
    {
      v20 = [v19 view];
      if (v20)
      {
        v21 = v20;
        v22 = [objc_opt_self() clearColor];
        [v21 setBackgroundColor_];

        if (*&v1[v6])
        {
          [v1 addChildViewController_];
          v23 = [v1 view];
          if (v23)
          {
            v24 = v23;
            v25 = *&v1[v6];
            if (v25)
            {
              v26 = [v25 view];
              if (v26)
              {
                v27 = v26;
                [v24 addSubview_];

                v28 = *&v1[v6];
                if (v28)
                {
                  [v28 didMoveToParentViewController_];
                  return;
                }

LABEL_17:
                __break(1u);
                return;
              }

LABEL_16:
              __break(1u);
              goto LABEL_17;
            }

LABEL_15:
            __break(1u);
            goto LABEL_16;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }
}

void sub_18B51698C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 tracks];
  sub_18B4AC60C(0, &qword_1EA9C3A40);
  v4 = sub_18B6C576C();

  *a2 = v4;
}

void sub_18B516A00()
{
  v0 = type metadata accessor for MediaInfo();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v17 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_playerItem);
    if (v10)
    {
      v11 = sub_18B6C584C();
      (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
      sub_18B6C580C();
      v12 = v10;
      v13 = v9;
      v14 = sub_18B6C57FC();
      v15 = swift_allocObject();
      v16 = MEMORY[0x1E69E85E0];
      v15[2] = v14;
      v15[3] = v16;
      v15[4] = v12;
      v15[5] = v13;
      sub_18B5280B4(0, 0, v7, &unk_18B6E9BF0, v15);
    }

    else
    {
      sub_18B4FE418(v3);
      sub_18B515E00(v3);
    }
  }
}

uint64_t sub_18B516BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  type metadata accessor for MediaInfo();
  v5[3] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[4] = v7;
  v5[5] = sub_18B6C580C();
  v5[6] = sub_18B6C57FC();
  v8 = swift_task_alloc();
  v5[7] = v8;
  *v8 = v5;
  v8[1] = sub_18B516CD0;

  return sub_18B4FCC00(v7, a4);
}

uint64_t sub_18B516CD0()
{

  v1 = sub_18B6C57CC();

  return MEMORY[0x1EEE6DFA0](sub_18B516E0C, v1, v0);
}

uint64_t sub_18B516E0C()
{
  v2 = v0[3];
  v1 = v0[4];

  sub_18B51714C(v1, v2);
  sub_18B515E00(v2);
  sub_18B51731C(v1);

  v3 = v0[1];

  return v3();
}

void sub_18B516EA8()
{
  v1 = type metadata accessor for AVInfoTabView(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_hostingController);
  if (v5)
  {
    v6 = OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_metadata;
    swift_beginAccess();
    sub_18B51714C(v0 + v6, v4);
    v7 = *(v0 + OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_actions);
    *&v4[*(type metadata accessor for AVInfoTabViewConfiguration(0) + 20)] = v7;
    v8 = v1[5];
    *&v4[v8] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C48B0);
    swift_storeEnumTagMultiPayload();
    v9 = v1[6];
    *&v4[v9] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v10 = &v4[v1[7]];
    v15 = 0;
    v16 = 0;
    type metadata accessor for CGSize(0);
    v11 = v5;
    sub_18B6C450C();
    sub_18B6C531C();
    v12 = v18;
    *v10 = v17;
    *(v10 + 2) = v12;
    v13 = &v4[v1[8]];
    v15 = 0;
    v16 = 0;
    sub_18B6C531C();
    v14 = v18;
    *v13 = v17;
    *(v13 + 2) = v14;
    sub_18B6C4B5C();
  }
}

uint64_t sub_18B5170A0()
{
  result = type metadata accessor for MediaInfo();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_18B51714C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B5171B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C48A8);
  MEMORY[0x1EEE9AC00]();
  v8 = &v10 - v7;
  sub_18B517248(a1, &v10 - v7);
  return a5(v8);
}

uint64_t sub_18B517248(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C48A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B5172B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaInfo();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B51731C(uint64_t a1)
{
  v2 = type metadata accessor for MediaInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18B517378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B5173F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_18B4CCBCC;

  return sub_18B516BD4(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_27Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18B5174F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_18B4CC5A0;

  return sub_18B516BD4(a1, v4, v5, v7, v6);
}

uint64_t get_enum_tag_for_layout_string_So6UIViewC5AVKitE19AnimationParametersV0C4TypeO(uint64_t a1)
{
  if ((*(a1 + 32) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_18B5175F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 57))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 56);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_18B517638(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_18B5176B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_18B5176F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_18B517740(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_18B5177DC(uint64_t a1)
{
  v2 = sub_18B6C46CC();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_18B6C499C();
}

uint64_t sub_18B5178CC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v100 = a2;
  v97[1] = a3;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C52F8);
  MEMORY[0x1EEE9AC00](v112, v4);
  v113 = v97 - v5;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5300);
  MEMORY[0x1EEE9AC00](v109, v6);
  v111 = v97 - v7;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5308);
  MEMORY[0x1EEE9AC00](v107, v8);
  v108 = v97 - v9;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5310);
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106, v10);
  v104 = v97 - v11;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5318);
  MEMORY[0x1EEE9AC00](v103, v12);
  v14 = v97 - v13;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5320);
  MEMORY[0x1EEE9AC00](v101, v15);
  v102 = v97 - v16;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5140);
  MEMORY[0x1EEE9AC00](v99, v17);
  v19 = v97 - v18;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5148);
  MEMORY[0x1EEE9AC00](v98, v20);
  v22 = v97 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5150);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = v97 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5158);
  v28 = v27 - 8;
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = v97 - v30;
  v110 = a1;
  sub_18B6C4D4C();
  KeyPath = swift_getKeyPath();
  v33 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5160) + 36)];
  *v33 = KeyPath;
  *(v33 + 1) = 2;
  v33[16] = 0;
  sub_18B6C54BC();
  sub_18B6C479C();
  v34 = &v31[*(v28 + 44)];
  v35 = v115;
  *v34 = v114;
  *(v34 + 1) = v35;
  *(v34 + 2) = v116;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5168);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18B6E6E50;
  v37 = sub_18B6C4EEC();
  *(inited + 32) = v37;
  v38 = sub_18B6C4F0C();
  *(inited + 33) = v38;
  v39 = sub_18B6C4EFC();
  sub_18B6C4EFC();
  if (sub_18B6C4EFC() != v37)
  {
    v39 = sub_18B6C4EFC();
  }

  sub_18B6C4EFC();
  if (sub_18B6C4EFC() != v38)
  {
    v39 = sub_18B6C4EFC();
  }

  v40 = v100 & 1;
  sub_18B6C466C();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  sub_18B4B1DB4(v31, v26, &qword_1EA9C5158);
  v49 = &v26[*(v23 + 36)];
  *v49 = v39;
  *(v49 + 1) = v42;
  *(v49 + 2) = v44;
  *(v49 + 3) = v46;
  *(v49 + 4) = v48;
  v49[40] = 0;
  if (!v40)
  {
    if (qword_1EA9C3E30 != -1)
    {
      swift_once();
    }

    v50 = &qword_1EA9CE400;
    goto LABEL_11;
  }

  if (qword_1EA9C3E28 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v50 = &qword_1EA9CE3F8;
LABEL_11:
    v51 = *v50;

    v52 = swift_getKeyPath();
    sub_18B4B1DB4(v26, v22, &qword_1EA9C5150);
    v53 = &v22[*(v98 + 36)];
    *v53 = v52;
    v53[1] = v51;
    v54 = sub_18B6C521C();
    v55 = swift_getKeyPath();
    sub_18B4B1DB4(v22, v19, &qword_1EA9C5148);
    v56 = &v19[*(v99 + 36)];
    *v56 = v55;
    v56[1] = v54;
    v57 = v102;
    v58 = &v102[*(v101 + 36)];
    sub_18B6C548C();
    LOBYTE(v55) = sub_18B6C4EBC();
    v58[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4968) + 36)] = v55;
    sub_18B4B1DB4(v19, v57, &qword_1EA9C5140);
    v59 = &v14[*(v103 + 36)];
    v60 = *(sub_18B6C48FC() + 20);
    v61 = *MEMORY[0x1E697F478];
    v62 = sub_18B6C4AAC();
    (*(*(v62 - 8) + 104))(&v59[v60], v61, v62);
    __asm { FMOV            V0.2D, #8.0 }

    *v59 = _Q0;
    *&v59[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C49F0) + 36)] = 256;
    sub_18B4B1DB4(v57, v14, &qword_1EA9C5320);
    v68 = sub_18B6C48BC();
    v69 = *(v68 - 8);
    MEMORY[0x1EEE9AC00](v68, v70);
    v72 = v97 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_18B6C494C();
    sub_18B518474();
    sub_18B5185B4(&qword_1EA9C51B0, MEMORY[0x1EEE7B930]);
    v73 = v104;
    sub_18B6C508C();
    (*(v69 + 8))(v72, v68);
    sub_18B4A6454(v14, &qword_1EA9C5318);
    v74 = (sub_18B6C4D5C() & 1) != 0 ? 0.75 : 1.0;
    sub_18B6C552C();
    v76 = v75;
    v78 = v77;
    v79 = v108;
    (*(v105 + 32))(v108, v73, v106);
    v80 = v79 + *(v107 + 36);
    *v80 = v74;
    *(v80 + 8) = v74;
    *(v80 + 16) = v76;
    *(v80 + 24) = v78;
    v81 = sub_18B6C54EC();
    v82 = sub_18B6C4D5C();
    v83 = v111;
    sub_18B4B1DB4(v79, v111, &qword_1EA9C5308);
    v84 = v83 + *(v109 + 36);
    *v84 = v81;
    *(v84 + 8) = v82 & 1;
    v85 = swift_getKeyPath();
    v14 = v112;
    v19 = v113;
    v86 = &v113[*(v112 + 36)];
    v87 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C51B8) + 28);
    v88 = *MEMORY[0x1E697DBC0];
    v89 = sub_18B6C46CC();
    (*(*(v89 - 8) + 104))(v86 + v87, v88, v89);
    *v86 = v85;
    sub_18B4B1DB4(v83, v19, &qword_1EA9C5300);
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C51C0);
    v22 = v97;
    MEMORY[0x1EEE9AC00](v90, v91);
    v93 = v97 - v92;
    v94 = *MEMORY[0x1E697E710];
    v95 = sub_18B6C48AC();
    (*(*(v95 - 8) + 104))(v93, v94, v95);
    sub_18B5185B4(&qword_1EA9C51C8, MEMORY[0x1EEE7E9C0]);
    if (sub_18B6C55EC())
    {
      break;
    }

    __break(1u);
LABEL_17:
    swift_once();
  }

  sub_18B5185FC();
  sub_18B5064D4();
  sub_18B6C50CC();
  sub_18B4A6454(v93, &qword_1EA9C51C0);
  return sub_18B4A2000(v19);
}

uint64_t sub_18B518410@<X0>(uint64_t a1@<X8>)
{
  result = sub_18B6C4A2C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_18B518474()
{
  result = qword_1EA9C5328;
  if (!qword_1EA9C5328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C5318);
    sub_18B518514();
    sub_18B4A6268(&qword_1EA9C49E8, &qword_1EA9C49F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C5328);
  }

  return result;
}

unint64_t sub_18B518514()
{
  result = qword_1EA9C5330;
  if (!qword_1EA9C5330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C5320);
    sub_18B5060AC();
    sub_18B4A6268(&qword_1EA9C4988, &qword_1EA9C4968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C5330);
  }

  return result;
}

uint64_t sub_18B5185B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_18B5185FC()
{
  result = qword_1EA9C5338;
  if (!qword_1EA9C5338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C52F8);
    sub_18B51869C();
    sub_18B4A6268(&qword_1EA9C51D8, &qword_1EA9C51B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C5338);
  }

  return result;
}

unint64_t sub_18B51869C()
{
  result = qword_1EA9C5340;
  if (!qword_1EA9C5340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C5300);
    sub_18B51873C();
    sub_18B4A6268(&qword_1EA9C5350, &qword_1EA9C5358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C5340);
  }

  return result;
}

unint64_t sub_18B51873C()
{
  result = qword_1EA9C5348;
  if (!qword_1EA9C5348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C5308);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C5318);
    sub_18B6C48BC();
    sub_18B518474();
    sub_18B5185B4(&qword_1EA9C51B0, MEMORY[0x1EEE7B930]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C5348);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_18B51884C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_18B518894(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_18B518904(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[6])
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 48))
  {
    return 0;
  }

  if (v3 == *a2 && a1[1] == *(a2 + 8))
  {
    return 1;
  }

  else
  {
    return sub_18B6C5CEC();
  }
}

uint64_t sub_18B518958()
{
  v1 = *(v0 + 48);
  sub_18B6C5DCC();
  MEMORY[0x18CFF79C0](v1);
  sub_18B6C566C();
  sub_18B6C566C();
  sub_18B6C566C();
  return sub_18B6C5DEC();
}

uint64_t sub_18B5189F4()
{
  MEMORY[0x18CFF79C0](*(v0 + 48));
  sub_18B6C566C();
  sub_18B6C566C();

  return sub_18B6C566C();
}

uint64_t sub_18B518A80()
{
  v1 = *(v0 + 48);
  sub_18B6C5DCC();
  MEMORY[0x18CFF79C0](v1);
  sub_18B6C566C();
  sub_18B6C566C();
  sub_18B6C566C();
  return sub_18B6C5DEC();
}

uint64_t sub_18B518B18@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 48))
  {
    v3 = 0x79537341656D6173;
    v4 = 0xED00002E6D657473;
  }

  else
  {
    v3 = 0x6F697463656C6573;
    v4 = 0xEA00000000002E6ELL;
  }

  v6 = v3;
  v7 = v4;
  result = MEMORY[0x18CFF7260](*v1, *(v1 + 8));
  *a1 = v6;
  a1[1] = v7;
  return result;
}

unint64_t sub_18B518BA0()
{
  result = qword_1EA9C3D90;
  if (!qword_1EA9C3D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C3D90);
  }

  return result;
}

uint64_t sub_18B518BF4()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  if (v0[3])
  {
    v10 = *v0;
    v3 = 0x79537341656D6173;
    v4 = 0xED00002E6D657473;
  }

  else
  {
    v10 = *v0;
    v3 = 0x6F697463656C6573;
    v4 = 0xEA00000000002E6ELL;
  }

  v8 = v3;
  v9 = v4;
  v7 = *v0;
  sub_18B4C41CC(&v10, &v6);
  MEMORY[0x18CFF7260](45, 0xE100000000000000);
  MEMORY[0x18CFF7260](v1, v2);
  MEMORY[0x18CFF7260](v7, *(&v7 + 1));

  return v8;
}

id sub_18B5190FC(void *a1)
{
  v1[OBJC_IVAR___AVGlassBackedView_wantsCapsuleShape] = 0;
  v1[OBJC_IVAR___AVGlassBackedView_subdued] = 1;
  *&v1[OBJC_IVAR___AVGlassBackedView_backgroundMaterialStyle] = 1;
  v1[OBJC_IVAR___AVGlassBackedView_backgroundMaterialized] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AVGlassBackedView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_18B5191C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AVGlassBackedView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_18B519218()
{
  result = qword_1EA9C3990;
  if (!qword_1EA9C3990)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9C3990);
  }

  return result;
}

uint64_t AVPlayerViewController.experienceController.getter()
{
  v1 = v0;
  v2 = [objc_opt_self() shared];
  v3 = [v2 experienceControllerEnabled];

  if (v3)
  {
    if ([v1 experienceControllerBridge])
    {
      sub_18B6C5AAC();
      swift_unknownObjectRelease();
      sub_18B51945C(v14);
    }

    else
    {
      memset(v14, 0, sizeof(v14));
      sub_18B51945C(v14);
      type metadata accessor for AVExperienceController();
      swift_allocObject();
      v4 = v1;
      v5 = sub_18B52A238(v4);
      v6 = type metadata accessor for AVExperienceControllerBridge();
      v7 = objc_allocWithZone(v6);
      *&v7[OBJC_IVAR___AVExperienceControllerBridge_experienceController] = v5;
      v13.receiver = v7;
      v13.super_class = v6;
      v8 = objc_msgSendSuper2(&v13, sel_init);
      [v4 setExperienceControllerBridge_];
    }

    if ([v1 experienceControllerBridge])
    {
      sub_18B6C5AAC();
      swift_unknownObjectRelease();
      sub_18B4AF200(&v12, v14);
      type metadata accessor for AVExperienceControllerBridge();
      swift_dynamicCast();
      v9 = *&v11[OBJC_IVAR___AVExperienceControllerBridge_experienceController];

      return v9;
    }

    __break(1u);
  }

  result = sub_18B6C5C5C();
  __break(1u);
  return result;
}

uint64_t sub_18B51945C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5238);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18B5194C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_18B5194E4, 0, 0);
}

uint64_t sub_18B5194E4()
{
  *(v0 + 40) = 2;
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_18B519C4C;
  v2 = *(v0 + 16);

  return AVExperienceController.transition(to:)(v2, (v0 + 40));
}

uint64_t sub_18B5195BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_18B5195DC, 0, 0);
}

uint64_t sub_18B5195DC()
{
  *(v0 + 40) = 0;
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_18B519690;
  v2 = *(v0 + 16);

  return AVExperienceController.transition(to:)(v2, (v0 + 40));
}

uint64_t sub_18B519690()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_18B5197A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_18B5197C4, 0, 0);
}

uint64_t sub_18B5197C4()
{
  *(v0 + 40) = 1;
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_18B519C4C;
  v2 = *(v0 + 16);

  return AVExperienceController.transition(to:)(v2, (v0 + 40));
}

uint64_t sub_18B51989C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v14 - v8;
  v10 = sub_18B6C584C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v12 = a1;
  sub_18B5286A8(0, 0, v9, a4, v11);
}

id sub_18B5199C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AVExperienceControllerBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18B519A30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B4CCBCC;

  return sub_18B5197A4(a1, v4, v5, v6);
}

uint64_t sub_18B519AE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B4CC5A0;

  return sub_18B5195BC(a1, v4, v5, v6);
}

uint64_t sub_18B519B98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B4CCBCC;

  return sub_18B5194C4(a1, v4, v5, v6);
}

uint64_t sub_18B519C64(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E73E0];
  v6 = MEMORY[0x1E69E7410];
  v7 = sub_18B6C5DFC();
  v2[2] = v7;
  v2[3] = *(v7 - 8);
  v8 = swift_task_alloc();
  v2[4] = v8;
  v9 = swift_task_alloc();
  v2[5] = v9;
  *v9 = v2;
  v9[1] = sub_18B519D9C;

  return MEMORY[0x1EEE6DA20](v8, a1, a2, v5, v6);
}

uint64_t sub_18B519D9C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_18B519EF4, 0, 0);
}

uint64_t sub_18B519EF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18B519F64(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = *(a1 + 16);
  *v5 = v2;
  v5[1] = sub_18B4CC5A0;

  return sub_18B519C64(v4, v6);
}

uint64_t sub_18B51A000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v26 - v13;
  swift_beginAccess();
  v15 = *(v5 + 112);
  if (*(v15 + 16))
  {
    sub_18B6C450C();
    v16 = sub_18B4F4F14(a1, a2);
    if (v17)
    {
      sub_18B4D1D10(*(v15 + 56) + 40 * v16, &v27);

      return sub_18B51C104(&v27);
    }
  }

  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  sub_18B51C104(&v27);
  v19 = sub_18B6C584C();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v14, a3, v19);
  v21 = *(v20 + 56);
  v21(v14, 0, 1, v19);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = a4;
  v22[5] = a5;

  v23 = sub_18B5280B4(0, 0, v14, &unk_18B6EA1F8, v22);
  *(&v28 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5010);
  v29 = &off_1EFECFAC8;
  *&v27 = v23;
  swift_beginAccess();
  sub_18B6C450C();

  sub_18B4F2748(&v27, a1, a2);
  swift_endAccess();
  v21(v14, 1, 1, v19);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v23;
  v25[5] = v24;
  v25[6] = a1;
  v25[7] = a2;
  sub_18B6C450C();
  sub_18B5280B4(0, 0, v14, &unk_18B6EA208, v25);
}

uint64_t sub_18B51A2E8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_18B4CCBCC;

  return v7();
}

uint64_t sub_18B51A3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[13] = a5;
  v9 = swift_task_alloc();
  v7[16] = v9;
  *v9 = v7;
  v9[1] = sub_18B51A494;
  v10 = MEMORY[0x1E69E73E0];
  v11 = MEMORY[0x1E69E7410];
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA20](v7 + 18, a4, v12, v10, v11);
}

uint64_t sub_18B51A494()
{

  return MEMORY[0x1EEE6DFA0](sub_18B51A590, 0, 0);
}

uint64_t sub_18B51A590()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 136) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_18B51A648, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_18B51A648()
{
  v2 = v0[14];
  v1 = v0[15];
  swift_beginAccess();
  sub_18B4F5398(v2, v1, (v0 + 2));
  sub_18B51C104((v0 + 2));
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

uint64_t sub_18B51A6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[29] = a6;
  v7[30] = v6;
  v7[27] = a4;
  v7[28] = a5;
  v7[25] = a2;
  v7[26] = a3;
  v7[24] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  v7[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B51A798, v6, 0);
}

uint64_t sub_18B51A798()
{
  v26 = v0;
  v1 = *(v0 + 240);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = *(v0 + 192);
    v3 = *(v0 + 200);
    sub_18B6C450C();
    v5 = sub_18B4F4F14(v4, v3);
    if (v6)
    {
      sub_18B4D1D10(*(v2 + 56) + 40 * v5, v0 + 56);

      sub_18B4A31D4((v0 + 56), v0 + 16);
      sub_18B4D1D10(v0 + 16, v0 + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4FD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5010);
      if (swift_dynamicCast())
      {
        v7 = *(v0 + 184);
        *(v0 + 256) = v7;
        v8 = MEMORY[0x1E69E7CA8];
        v9 = MEMORY[0x1E69E73E0];
        v10 = MEMORY[0x1E69E7410];
        sub_18B6C58AC();
        v11 = swift_task_alloc();
        *(v0 + 264) = v11;
        *v11 = v0;
        v11[1] = sub_18B51AB04;

        return MEMORY[0x1EEE6DA20](v0 + 272, v7, v8 + 8, v9, v10);
      }

      __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    }

    else
    {
    }
  }

  v12 = *(v0 + 248);
  v13 = *(v0 + 232);
  v24 = *(v0 + 224);
  v14 = *(v0 + 208);
  v15 = *(v0 + 216);
  v17 = *(v0 + 192);
  v16 = *(v0 + 200);
  sub_18B6C582C();
  v18 = sub_18B6C584C();
  (*(*(v18 - 8) + 56))(v12, 0, 1, v18);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v14;
  v20[5] = v15;
  v20[6] = v19;
  v20[7] = v24;
  v20[8] = v13;
  v20[9] = v17;
  v20[10] = v16;

  sub_18B6C450C();
  v21 = sub_18B5280B4(0, 0, v12, &unk_18B6EA1D8, v20);
  v25[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5010);
  v25[4] = &off_1EFECFAC8;
  v25[0] = v21;
  swift_beginAccess();
  sub_18B6C450C();

  sub_18B4F2748(v25, v17, v16);
  swift_endAccess();

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_18B51AB04()
{

  return MEMORY[0x1EEE6DFA0](sub_18B51AC00, 0, 0);
}

uint64_t sub_18B51AC1C()
{
  v15 = v0;

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v1 = v0[31];
  v2 = v0[29];
  v13 = v0[28];
  v3 = v0[26];
  v4 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  sub_18B6C582C();
  v7 = sub_18B6C584C();
  (*(*(v7 - 8) + 56))(v1, 0, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v3;
  v9[5] = v4;
  v9[6] = v8;
  v9[7] = v13;
  v9[8] = v2;
  v9[9] = v6;
  v9[10] = v5;

  sub_18B6C450C();
  v10 = sub_18B5280B4(0, 0, v1, &unk_18B6EA1D8, v9);
  v14[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5010);
  v14[4] = &off_1EFECFAC8;
  v14[0] = v10;
  swift_beginAccess();
  sub_18B6C450C();

  sub_18B4F2748(v14, v6, v5);
  swift_endAccess();

  v11 = v0[1];

  return v11();
}

uint64_t sub_18B51AE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = v12;
  v8[22] = v13;
  v8[19] = a7;
  v8[20] = a8;
  v8[17] = a5;
  v8[18] = a6;
  v8[16] = a4;
  v9 = sub_18B6C5BEC();
  v8[23] = v9;
  v8[24] = *(v9 - 8);
  v8[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B51AED8, 0, 0);
}

uint64_t sub_18B51AED8()
{
  sub_18B6C5D5C();
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_18B51AF98;
  v3 = v0[16];
  v2 = v0[17];

  return sub_18B51BB50(v3, v2, 0, 0, 1);
}

uint64_t sub_18B51AF98()
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 184);
  *(*v1 + 216) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_18B51B254;
  }

  else
  {
    v5 = sub_18B51B108;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_18B51B108()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = v0[19];

    v5 = (v1 + *v1);
    v2 = swift_task_alloc();
    v0[28] = v2;
    *v2 = v0;
    v2[1] = sub_18B51B31C;

    return v5();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_18B51B254()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 232) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_18B51B4D8, Strong, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_18B51B31C()
{

  return MEMORY[0x1EEE6DFA0](sub_18B51B418, 0, 0);
}

uint64_t sub_18B51B418()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 232) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_18B51B4D8, Strong, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_18B51B4D8()
{
  v2 = v0[21];
  v1 = v0[22];
  swift_beginAccess();
  sub_18B4F5398(v2, v1, (v0 + 2));
  sub_18B51C104((v0 + 2));
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

uint64_t sub_18B51B5A8()
{
  v17 = v0;
  v1 = v0[15];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_18B53C2B0(*(v2 + 16), 0);
    v14 = sub_18B53C4A0(&v16, (v4 + 4), v3, v2);
    sub_18B6C450C();
    result = sub_18B51C008();
    if (v14 != v3)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v0[16] = v4;
  *(v1 + 112) = MEMORY[0x1E69E7CC8];

  v6 = v4[2];
  v0[17] = v6;
  if (v6)
  {
    v7 = (v4 + 4);
    do
    {
      sub_18B4D1D10(v7, (v0 + 2));
      v8 = v0[5];
      v9 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
      (*(v9 + 24))(v8, v9);
      __swift_destroy_boxed_opaque_existential_1((v0 + 2));
      v7 += 40;
      --v6;
    }

    while (v6);
    v0[18] = 0;
    sub_18B4D1D10(v0[16] + 32, (v0 + 7));
    v10 = v0[10];
    v11 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v10);
    v15 = (*(v11 + 32) + **(v11 + 32));
    v12 = swift_task_alloc();
    v0[19] = v12;
    *v12 = v0;
    v12[1] = sub_18B51B850;

    return v15(v10, v11);
  }

  else
  {

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_18B51B850()
{
  v1 = *v0;
  v2 = *(*v0 + 120);

  __swift_destroy_boxed_opaque_existential_1(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_18B51B968, v2, 0);
}

uint64_t sub_18B51B968()
{
  v1 = v0[18] + 1;
  if (v1 == v0[17])
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[18] = v1;
    sub_18B4D1D10(v0[16] + 40 * v1 + 32, (v0 + 7));
    v4 = v0[10];
    v5 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v4);
    v7 = (*(v5 + 32) + **(v5 + 32));
    v6 = swift_task_alloc();
    v0[19] = v6;
    *v6 = v0;
    v6[1] = sub_18B51B850;

    return v7(v4, v5);
  }
}

uint64_t sub_18B51BAF4()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_18B51BB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_18B6C5BDC();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_18B51BC50, 0, 0);
}

uint64_t sub_18B51BC50()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_18B6C5BEC();
  v5 = sub_18B51C16C(&qword_1EA9C5388, MEMORY[0x1E69E8820]);
  sub_18B6C5D3C();
  sub_18B51C16C(&qword_1EA9C5390, MEMORY[0x1E69E87E8]);
  sub_18B6C5BFC();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_18B51BDE0;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_18B51BDE0()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18B51BF9C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_18B51BF9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18B51C010(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_18B4CCBCC;

  return sub_18B51AE04(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_18B51C104(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4FE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18B51C16C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18B51C1B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B4CCBCC;

  return sub_18B51A2E8(a1, v4, v5, v6);
}

uint64_t sub_18B51C274(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_18B4CC5A0;

  return sub_18B51A3D0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_18B51C348()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_18B51C3A8(void *a1)
{
  if (*(v1 + 24))
  {
    return;
  }

  v3 = [a1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [v3 window];

  v6 = *(v1 + 24);
  *(v1 + 24) = v5;

  v7 = v1;
  sub_18B51C6B0(a1);
  sub_18B4A5898(v18);
  v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C53B8));
  v9 = sub_18B6C4B4C();
  v10 = [v9 view];
  if (!v10)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v11 = v10;
  v12 = [objc_opt_self() clearColor];
  [v11 setBackgroundColor_];

  [v9 setModalPresentationStyle_];
  v13 = *(v7 + 32);
  *(v7 + 32) = v9;
  v14 = v9;

  v15 = *(v7 + 24);
  if (v15)
  {
    v16 = [v15 rootViewController];
    if (v16)
    {
      v17 = v16;
      [v16 presentViewController:v14 animated:0 completion:0];
    }
  }
}

void sub_18B51C53C(void *a1)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    v4 = v2;
    sub_18B6C531C();
    v5 = v13;
    LOBYTE(v13) = v12;
    v14 = v5;
    v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C53C0));
    v7 = a1;
    v8 = sub_18B6C4B4C();
    v9 = [v8 view];
    if (v9)
    {
      v10 = v9;
      v11 = [objc_opt_self() clearColor];
      [v10 setBackgroundColor_];

      [v8 setModalPresentationStyle_];
      [v4 presentViewController:v8 animated:0 completion:0];
    }

    else
    {
      __break(1u);
    }
  }
}

void *sub_18B51C674()
{
  type metadata accessor for AVMultiviewWindowManager();
  swift_allocObject();
  result = sub_18B51DF10();
  qword_1EA9CE408 = result;
  return result;
}

void sub_18B51C6B0(id a1)
{
  v3 = *(v1 + 16);
  if (*(v3 + 16))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v5);
    sub_18B51E108();
    sub_18B6C420C();
  }

  v6 = [a1 view];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v19.origin.x = v9;
    v19.origin.y = v11;
    v19.size.width = v13;
    v19.size.height = v15;
    if (CGRectEqualToRect(*(v3 + 24), v19))
    {
      *(v3 + 24) = v9;
      *(v3 + 32) = v11;
      *(v3 + 40) = v13;
      *(v3 + 48) = v15;
    }

    else
    {
      v16 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v16, v17);
      sub_18B51E108();
      sub_18B6C420C();
    }

    v18 = a1;
    sub_18B51D94C(a1);
  }

  else
  {
    __break(1u);
  }
}

void sub_18B51C8B0(uint64_t a1, uint64_t a2)
{
  if (qword_1EA9C3E40 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_18B6C461C();

  v5 = aBlock[0];
  v6 = *(v2 + 16);
  swift_getKeyPath();
  aBlock[0] = v6;
  sub_18B51E108();
  sub_18B6C421C();

  v7 = v6[7];
  if (v7 && (v8 = *(v5 + 16)) != 0)
  {
    v9 = 0;
    while (*(v5 + 8 * v9 + 32) != v7)
    {
      if (v8 == ++v9)
      {
        goto LABEL_8;
      }
    }

    v29 = v7;

    if (v6[9] != -1)
    {
      KeyPath = swift_getKeyPath();
      v28 = &v27;
      MEMORY[0x1EEE9AC00](KeyPath, v17);
      aBlock[0] = v6;
      sub_18B6C420C();
    }

    if (v6[8] != v9)
    {
      v18 = swift_getKeyPath();
      v28 = &v27;
      MEMORY[0x1EEE9AC00](v18, v19);
      aBlock[0] = v6;
      sub_18B6C420C();
    }

    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = a1;
    v21[4] = a2;

    sub_18B4A324C(a1);
    sub_18B6C54FC();
    v22 = sub_18B6C4DBC();
    v23 = *(v22 - 8);
    MEMORY[0x1EEE9AC00](v22, v24);
    v26 = &v27 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_18B6C4DAC();
    sub_18B6C485C();
    (*(v23 + 8))(v26, v22);
  }

  else
  {
LABEL_8:

    v10 = *(v2 + 24);
    if (v10)
    {
      v11 = [v10 rootViewController];
      if (v11)
      {
        v12 = v11;
        v13 = swift_allocObject();
        swift_weakInit();
        v14 = swift_allocObject();
        v14[2] = v13;
        v14[3] = a1;
        v14[4] = a2;
        aBlock[4] = sub_18B51EC10;
        aBlock[5] = v14;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_18B533A4C;
        aBlock[3] = &block_descriptor_3;
        v15 = _Block_copy(aBlock);
        sub_18B4A324C(a1);

        [v12 dismissViewControllerAnimated:1 completion:v15];
        _Block_release(v15);
      }
    }
  }
}

uint64_t sub_18B51CDC0(uint64_t result)
{
  if (*(*(result + 16) + 16))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v2);
    sub_18B51E108();
    sub_18B6C420C();
  }

  return result;
}

void sub_18B51CEA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + 24);
    if (v6)
    {
      v7 = v6;

      v8 = [v7 rootViewController];

      if (v8)
      {
        v9 = swift_allocObject();
        swift_beginAccess();
        swift_weakLoadStrong();
        swift_weakInit();

        v10 = swift_allocObject();
        v10[2] = v9;
        v10[3] = a2;
        v10[4] = a3;
        v12[4] = sub_18B51ECA4;
        v12[5] = v10;
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 1107296256;
        v12[2] = sub_18B533A4C;
        v12[3] = &block_descriptor_71;
        v11 = _Block_copy(v12);
        sub_18B4A324C(a2);

        [v8 dismissViewControllerAnimated:0 completion:v11];
        _Block_release(v11);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_18B51D050(uint64_t a1, uint64_t (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 24);
    *(Strong + 24) = 0;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_6:
    if (!a2)
    {
      return result;
    }

    return a2();
  }

  v6 = *(result + 16);

  if (*(v6 + 64) != -1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v8);
    sub_18B51E108();
    sub_18B6C420C();

    goto LABEL_6;
  }

  if (!a2)
  {
    return result;
  }

  return a2();
}

void sub_18B51D1C8(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 24);
    *(Strong + 24) = 0;
  }

  if (a2)
  {
    a2();
  }
}

uint64_t sub_18B51D23C()
{
  sub_18B6C54FC();
  sub_18B6C486C();
}

uint64_t sub_18B51D2B4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);

    if (*(v1 + 16) != 2)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath, v3);
      sub_18B51E108();
      sub_18B6C420C();
    }
  }

  return result;
}

uint64_t sub_18B51D3E8@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_18B51E108();
  sub_18B6C421C();

  *a1 = *(v1 + 16);
  return result;
}

uint64_t sub_18B51D460@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B51E108();
  sub_18B6C421C();

  *a2 = *(v3 + 16);
  return result;
}

unsigned __int8 *sub_18B51D510(unsigned __int8 *result)
{
  if (*(v1 + 16) != *result)
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_18B51E108();
    sub_18B6C420C();
  }

  return result;
}

double sub_18B51D5E8()
{
  swift_getKeyPath();
  sub_18B51E108();
  sub_18B6C421C();

  return *(v0 + 24);
}

__n128 sub_18B51D65C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B51E108();
  sub_18B6C421C();

  result = *(v3 + 24);
  v5 = *(v3 + 40);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_18B51D704(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  result = CGRectEqualToRect(*(v4 + 24), v10);
  if (result)
  {
    *(v4 + 24) = a1;
    *(v4 + 32) = a2;
    *(v4 + 40) = a3;
    *(v4 + 48) = a4;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_18B51E108();
    sub_18B6C420C();
  }

  return result;
}

void *sub_18B51D81C()
{
  swift_getKeyPath();
  sub_18B51E108();
  sub_18B6C421C();

  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

id sub_18B51D894@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B51E108();
  sub_18B6C421C();

  v4 = *(v3 + 56);
  *a2 = v4;

  return v4;
}

void sub_18B51D91C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_18B51D94C(v1);
}

void sub_18B51D94C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 56);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_18B51E108();
    sub_18B6C420C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_18B51E1A4();
  v5 = v4;
  v6 = a1;
  v7 = sub_18B6C5A6C();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 56);
LABEL_8:
  *(v2 + 56) = a1;
}

uint64_t sub_18B51DA9C()
{
  swift_getKeyPath();
  sub_18B51E108();
  sub_18B6C421C();

  return *(v0 + 64);
}

uint64_t sub_18B51DB0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B51E108();
  sub_18B6C421C();

  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_18B51DBAC(uint64_t result)
{
  if (*(v1 + 64) != result)
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_18B51E108();
    sub_18B6C420C();
  }

  return result;
}

uint64_t sub_18B51DC80()
{
  swift_getKeyPath();
  sub_18B51E108();
  sub_18B6C421C();

  return *(v0 + 72);
}

uint64_t sub_18B51DCF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B51E108();
  sub_18B6C421C();

  *a2 = *(v3 + 72);
  return result;
}

uint64_t sub_18B51DD90(uint64_t result)
{
  if (*(v1 + 72) != result)
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_18B51E108();
    sub_18B6C420C();
  }

  return result;
}

uint64_t sub_18B51DE6C()
{
  v1 = OBJC_IVAR____TtCC5AVKit24AVMultiviewWindowManager23TransitionConfiguration___observationRegistrar;
  v2 = sub_18B6C425C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_18B51DF10()
{
  type metadata accessor for AVMultiviewWindowManager.TransitionConfiguration();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0;
  *(v1 + 64) = -1;
  *(v1 + 72) = -1;
  sub_18B6C424C();
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  return v0;
}

uint64_t sub_18B51DF7C()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AVMultiviewWindowManager.TransitionConfiguration()
{
  result = qword_1EA9C53A0;
  if (!qword_1EA9C53A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18B51E03C()
{
  result = sub_18B6C425C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_18B51E108()
{
  result = qword_1EA9C4C70;
  if (!qword_1EA9C4C70)
  {
    type metadata accessor for AVMultiviewWindowManager.TransitionConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4C70);
  }

  return result;
}

void sub_18B51E16C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 56);
  *(v1 + 56) = v2;
  v4 = v2;
}

unint64_t sub_18B51E1A4()
{
  result = qword_1EA9C53B0;
  if (!qword_1EA9C53B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9C53B0);
  }

  return result;
}

__n128 sub_18B51E1F0()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 24) = result;
  *(v1 + 40) = v3;
  return result;
}

uint64_t sub_18B51E208@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C53C8);
  v25 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v7);
  v22 = v20 - v8;
  v9 = a1;
  v10 = sub_18B6C48EC();
  v11 = sub_18B6C4EBC();
  v31 = v9;
  v32 = v10;
  v33 = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;

  v13 = v9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C53D0);
  v15 = sub_18B51ED88();
  sub_18B6C509C();

  v21 = sub_18B6C4A9C();
  v20[1] = v16;
  v29 = a2;
  v30 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C3F60);
  sub_18B6C534C();
  v26 = v13;
  v27 = a2;
  v28 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C53E8);
  v31 = v14;
  v32 = v15;
  swift_getOpaqueTypeConformance2();
  sub_18B51EE6C();
  v17 = v23;
  v18 = v22;
  sub_18B6C517C();

  return (*(v25 + 8))(v18, v17);
}

uint64_t sub_18B51E4BC@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_18B6C4A8C();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C53F8);
  return sub_18B51E52C(a1, a2, a3, a4 + *(v8 + 44));
}

uint64_t sub_18B51E52C@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v40 = a2;
  v42 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5400);
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v7, v10);
  v11 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = v11;
  v41 = v37 - v11;
  v12 = sub_18B6C4A9C();
  v37[2] = v13;
  v38 = v12;
  v37[1] = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = v5;
  *(v15 + 32) = a3;

  v16 = a1;
  v17 = sub_18B6C537C();
  MEMORY[0x1EEE9AC00](v17, v18);
  v19 = v37 - v11;
  v38 = sub_18B6C4A9C();
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  *(v20 + 24) = v40;
  *(v20 + 32) = a3;
  v21 = v16;

  v22 = sub_18B6C537C();
  v24 = MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v39;
  v26 = v37 - v39;
  v27 = v8[2];
  v28 = v41;
  v29 = v27(v37 - v39, v41, v7, v24);
  v31 = MEMORY[0x1EEE9AC00](v29, v30);
  v32 = v37 - v25;
  v27(v32, v19, v7, v31);
  v33 = v42;
  (v27)(v42, v26, v7);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5408);
  (v27)(v33 + *(v34 + 48), v32, v7);
  v35 = v8[1];
  v35(v19, v7);
  v35(v28, v7);
  v35(v32, v7);
  return (v35)(v26, v7);
}

uint64_t sub_18B51E854(void *a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v16 - v8;
  v10 = sub_18B6C584C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_18B6C580C();

  v11 = a1;
  v12 = sub_18B6C57FC();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  *(v13 + 32) = v11;
  *(v13 + 40) = a2;
  *(v13 + 48) = a3;
  sub_18B5286A8(0, 0, v9, &unk_18B6EA598, v13);
}

uint64_t sub_18B51E99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_18B6C580C();
  v4[4] = sub_18B6C57FC();
  v6 = sub_18B6C57CC();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x1EEE6DFA0](sub_18B51EA34, v6, v5);
}

uint64_t sub_18B51EA34()
{
  *(v0 + 56) = AVPlayerViewController.experienceController.getter();
  *(v0 + 72) = 2;
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_18B4CAF38;
  v2 = *(v0 + 16);

  return AVExperienceController.transition(to:)(v2, (v0 + 72));
}

id sub_18B51EAEC()
{
  v1 = *v0;
  [v1 setAllowsEnteringFullScreen_];
  return v1;
}

void sub_18B51EBD8()
{
  sub_18B51F058();
  sub_18B6C4E2C();
  __break(1u);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_57Tm_0()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18B51ECCC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_18B51ED14(uint64_t result, int a2, int a3)
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

unint64_t sub_18B51ED88()
{
  result = qword_1EA9C53D8;
  if (!qword_1EA9C53D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C53D0);
    sub_18B51EE08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C53D8);
  }

  return result;
}

unint64_t sub_18B51EE08()
{
  result = qword_1EA9C53E0;
  if (!qword_1EA9C53E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C53E0);
  }

  return result;
}

unint64_t sub_18B51EE6C()
{
  result = qword_1EA9C53F0;
  if (!qword_1EA9C53F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C53E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C53F0);
  }

  return result;
}

uint64_t objectdestroy_78Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18B51EF78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B4CC5A0;

  return sub_18B51E99C(a1, v4, v5, v6);
}

unint64_t sub_18B51F058()
{
  result = qword_1EA9C5410;
  if (!qword_1EA9C5410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C5410);
  }

  return result;
}

id sub_18B51F0FC()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 window];
  [v0 convertRect:v9 toView:{v2, v4, v6, v8}];
  v11 = v10;

  result = [v0 window];
  if (result)
  {
    v13 = result;
    [result center];
    v15 = v14;

    return (v11 < v15);
  }

  return result;
}

id sub_18B51F1D0()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 window];
  [v0 convertRect:v9 toView:{v2, v4, v6, v8}];
  v11 = v10;

  result = [v0 window];
  if (result)
  {
    v13 = result;
    [result center];
    v15 = v14;

    return (v11 < v15);
  }

  return result;
}

uint64_t sub_18B51F2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v54 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5530);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v47 - v7;
  v9 = *(v2 + 8);
  v55[0] = *(v2 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5538);
  sub_18B6C532C();
  v10 = v56;
  v11 = 0;
  if (*(v56 + 16))
  {
    v12 = sub_18B4F4F8C(v9);
    v13 = 0;
    if (v14)
    {
      v15 = (*(v10 + 56) + 16 * v12);
      v11 = *v15;
      v13 = v15[1];
    }
  }

  else
  {
    v13 = 0;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5540);
  (*(*(v16 - 8) + 16))(v8, a1, v16);
  v17 = &v8[*(v5 + 36)];
  *v17 = v11;
  *(v17 + 1) = v13;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C41D0);
  v53 = v47;
  v52 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v18);
  v20 = v47 - v19;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C3F28);
  v50 = v47;
  v21 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v22);
  v24 = v47 - v23;
  v25 = sub_18B6C472C();
  v47[1] = v47;
  v26 = *(v25 - 8);
  v49 = v8;
  v27 = v26;
  MEMORY[0x1EEE9AC00](v25, v28);
  v30 = v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_18B6C4C6C();
  MEMORY[0x1EEE9AC00](v31, v32);
  v47[2] = v5;
  sub_18B6C4CFC();
  sub_18B6C46DC();
  v33 = swift_allocObject();
  v34 = v3[5];
  v33[5] = v3[4];
  v33[6] = v34;
  v35 = v3[7];
  v33[7] = v3[6];
  v33[8] = v35;
  v36 = v3[1];
  v33[1] = *v3;
  v33[2] = v36;
  v37 = v3[3];
  v33[3] = v3[2];
  v33[4] = v37;
  sub_18B522CF8(v3, v55);
  sub_18B522D30(&qword_1EA9C3F30, MEMORY[0x1EEE7B5A0]);
  sub_18B522D30(&qword_1EA9C3F38, MEMORY[0x1EEE7B570]);
  sub_18B6C547C();

  (*(v27 + 8))(v30, v25);
  v38 = swift_allocObject();
  v39 = v3[5];
  v38[5] = v3[4];
  v38[6] = v39;
  v40 = v3[7];
  v38[7] = v3[6];
  v38[8] = v40;
  v41 = v3[1];
  v38[1] = *v3;
  v38[2] = v41;
  v42 = v3[3];
  v38[3] = v3[2];
  v38[4] = v42;
  sub_18B522CF8(v3, v55);
  sub_18B4A6268(&qword_1EA9C3F40, &qword_1EA9C3F28);
  v43 = v48;
  sub_18B6C546C();

  (*(v21 + 8))(v24, v43);
  sub_18B6C475C();
  sub_18B522D80();
  sub_18B4A6268(&qword_1EA9C41F8, &qword_1EA9C41D0);
  v44 = v51;
  v45 = v49;
  sub_18B6C513C();
  (*(v52 + 8))(v20, v44);
  return sub_18B4A6454(v45, &qword_1EA9C5530);
}

uint64_t sub_18B51F8AC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_18B6C461C();

  v0 = *(v3 + 16);

  if (v0 >= 2)
  {
    MEMORY[0x1EEE9AC00](result, v2);
    sub_18B6C54FC();
    sub_18B6C486C();
  }

  return result;
}

void sub_18B51F9AC(uint64_t a1, void *a2)
{
  v3 = v2;
  v79 = *(v2 + 16);
  v80 = *(v2 + 32);
  *&v73 = a2;
  v5 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4DB8);
  sub_18B6C540C();
  sub_18B6C46EC();
  v7 = v6;
  v80 = *(v2 + 88);
  v79 = *(v2 + 72);
  v73 = *(v2 + 72);
  v74 = *(v2 + 88);
  v81 = v80;
  sub_18B4A63EC(&v81, &v71, &qword_1EA9C5568);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C41E0);
  sub_18B6C532C();
  v9 = v7 - v71;
  sub_18B6C46EC();
  v11 = v10;
  v73 = v79;
  v74 = v80;
  v63[2] = v8;
  sub_18B6C532C();
  v12 = v11 - v72;
  v13 = *(v2 + 96);
  v14 = *(v2 + 104);
  v77 = v14;
  v78 = v13;
  *&v73 = v13;
  *(&v73 + 1) = v14;
  sub_18B4A63EC(&v78, &v71, &qword_1EA9C4DC0);
  sub_18B4A63EC(&v77, &v71, &qword_1EA9C5560);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5538);
  sub_18B6C532C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v71 = v75;
  sub_18B4F609C(v5, isUniquelyReferenced_nonNull_native, v9, v12);
  v17 = v71;
  v65 = v13;
  v71 = v13;
  v72 = v14;
  v64 = v14;
  v70 = v17;
  v63[1] = v15;
  sub_18B6C533C();
  v18 = *(v2 + 64);
  swift_getKeyPath();
  swift_getKeyPath();
  v63[0] = v18;
  sub_18B6C461C();

  v19 = v73;
  v68 = *(v73 + 16);
  if (v68)
  {
    v20 = 0;
    v21 = 0;
    v67 = v73;
    while (v21 < *(v19 + 16))
    {
      v22 = *(v19 + 8 * v21 + 32);
      if (v22 != v5)
      {
        v76 = *(v3 + 48);
        v23 = *(v3 + 40);
        v75 = v23;
        if (v76 == 1)
        {
          v71 = v23;
          v24 = v22;
          sub_18B4A63EC(&v75, &v73, &qword_1EA9C5570);
        }

        else
        {
          v25 = v22;
          sub_18B4A63EC(&v75, &v73, &qword_1EA9C5570);
          sub_18B6C595C();
          v26 = sub_18B6C4E5C();
          sub_18B6C433C();

          v27 = sub_18B6C4A7C();
          v66 = v63;
          v28 = v22;
          v29 = v3;
          v30 = a1;
          v31 = v5;
          v32 = *(v27 - 8);
          MEMORY[0x1EEE9AC00](v27, v33);
          v35 = v63 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_18B6C4A6C();
          swift_getAtKeyPath();
          sub_18B4A6454(&v75, &qword_1EA9C5570);
          (*(v32 + 8))(v35, v27);
          v5 = v31;
          a1 = v30;
          v3 = v29;
          v22 = v28;
        }

        v36 = v71;
        swift_getKeyPath();
        *&v73 = v36;
        sub_18B522FF4(&qword_1EA9C4C28, type metadata accessor for MultiviewTilesLayout);
        sub_18B6C421C();

        v37 = *(*&v36 + 16);
        sub_18B6C450C();

        if (v21 >= *(v37 + 16))
        {
          goto LABEL_15;
        }

        v38 = *(v37 + v20 + 32);
        v39 = *(v37 + v20 + 40);
        v40 = *(v37 + v20 + 48);
        v41 = *(v37 + v20 + 56);

        sub_18B6C471C();
        v82.x = v42;
        v82.y = v43;
        v83.origin.x = v38;
        v83.origin.y = v39;
        v83.size.width = v40;
        v83.size.height = v41;
        if (CGRectContainsPoint(v83, v82))
        {

          sub_18B6C46EC();
          v45 = v44;
          v84.origin.x = v38;
          v84.origin.y = v39;
          v84.size.width = v40;
          v84.size.height = v41;
          MidX = CGRectGetMidX(v84);
          sub_18B6C471C();
          v48 = v45 + MidX - v47;
          sub_18B6C46EC();
          v50 = v49;
          v85.origin.x = v38;
          v85.origin.y = v39;
          v85.size.width = v40;
          v85.size.height = v41;
          MidY = CGRectGetMidY(v85);
          sub_18B6C471C();
          v73 = v79;
          v74 = v80;
          v71 = v48;
          v72 = v50 + MidY - v52;
          sub_18B6C533C();
          sub_18B4A6454(&v79, &qword_1EA9C41E0);

          sub_18B536150(v5, v22);
          v73 = *(v3 + 112);
          LOBYTE(v71) = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C3F60);
          sub_18B6C533C();

          sub_18B6C46EC();
          v54 = v53;
          v73 = v79;
          v74 = v80;
          sub_18B6C532C();
          v55 = v54 - v71;
          sub_18B6C46EC();
          v57 = v56;
          v73 = v79;
          v74 = v80;
          sub_18B6C532C();
          v58 = v57 - v72;
          v59 = v65;
          v60 = v64;
          *&v73 = v65;
          *(&v73 + 1) = v64;
          sub_18B6C532C();
          v61 = swift_isUniquelyReferenced_nonNull_native();
          v71 = v70;
          sub_18B4F609C(v5, v61, v55, v58);
          v62 = v71;
          v71 = v59;
          v72 = v60;
          v69 = v62;
          sub_18B6C533C();

          sub_18B4A6454(&v78, &qword_1EA9C4DC0);
          sub_18B4A6454(&v77, &qword_1EA9C5560);
          return;
        }

        v19 = v67;
      }

      ++v21;
      v20 += 32;
      if (v68 == v21)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_12:
    sub_18B4A6454(&v78, &qword_1EA9C4DC0);
    sub_18B4A6454(&v77, &qword_1EA9C5560);

    sub_18B4A6454(&v79, &qword_1EA9C41E0);
  }
}

uint64_t sub_18B52015C(uint64_t a1, _OWORD *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_18B6C461C();

  v4 = *(v18[0] + 16);

  if (v4 >= 2)
  {
    MEMORY[0x1EEE9AC00](result, v6);
    v17[2] = a1;
    v17[3] = a2;
    v7 = swift_allocObject();
    v8 = a2[5];
    v7[5] = a2[4];
    v7[6] = v8;
    v9 = a2[7];
    v7[7] = a2[6];
    v7[8] = v9;
    v10 = a2[1];
    v7[1] = *a2;
    v7[2] = v10;
    v11 = a2[3];
    v7[3] = a2[2];
    v7[4] = v11;
    sub_18B522CF8(a2, v18);
    sub_18B6C54FC();
    v12 = sub_18B6C4DBC();
    v13 = *(v12 - 8);
    MEMORY[0x1EEE9AC00](v12, v14);
    v16 = v17 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_18B6C4DAC();
    sub_18B6C485C();

    return (*(v13 + 8))(v16, v12);
  }

  return result;
}

uint64_t sub_18B520368(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v30 - v5;
  v7 = [objc_opt_self() mainScreen];
  [v7 bounds];
  v9 = v8;
  v11 = v10;

  sub_18B6C470C();
  v13 = v12;
  sub_18B6C470C();
  v15 = v14;
  v39 = *(a2 + 112);
  v31 = *(a2 + 112);
  v40 = *(&v39 + 1);
  sub_18B4A63EC(&v40, &v34, &qword_1EA9C5558);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C3F60);
  sub_18B6C532C();
  if ((v34 & 1) == 0 && (v13 < 0.0 || v9 < v13 || v15 < 0.0 || v11 < v15))
  {
    v16 = sub_18B6C584C();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    sub_18B6C580C();
    sub_18B522CF8(a2, &v31);
    v17 = sub_18B6C57FC();
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E85E0];
    *(v18 + 16) = v17;
    *(v18 + 24) = v19;
    v20 = *(a2 + 80);
    *(v18 + 96) = *(a2 + 64);
    *(v18 + 112) = v20;
    v21 = *(a2 + 112);
    *(v18 + 128) = *(a2 + 96);
    *(v18 + 144) = v21;
    v22 = *(a2 + 16);
    *(v18 + 32) = *a2;
    *(v18 + 48) = v22;
    v23 = *(a2 + 48);
    *(v18 + 64) = *(a2 + 32);
    *(v18 + 80) = v23;
    sub_18B5286A8(0, 0, v6, &unk_18B6EAAD0, v18);
  }

  v24 = *(a2 + 8);
  v25 = *(a2 + 96);
  v26 = *(a2 + 104);
  v37 = v26;
  v38 = v25;
  *&v31 = v25;
  *(&v31 + 1) = v26;
  sub_18B4A63EC(&v38, &v34, &qword_1EA9C4DC0);
  sub_18B4A63EC(&v37, &v34, &qword_1EA9C5560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5538);
  sub_18B6C532C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = v36;
  sub_18B4F609C(v24, isUniquelyReferenced_nonNull_native, 0.0, 0.0);
  v28 = v34;
  v34 = v25;
  v35 = v26;
  v33 = v28;
  sub_18B6C533C();
  sub_18B4A6454(&v38, &qword_1EA9C4DC0);
  sub_18B4A6454(&v37, &qword_1EA9C5560);
  v31 = *(a2 + 72);
  v32 = *(a2 + 88);
  v34 = 0;
  v35 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C41E0);
  sub_18B6C533C();
  v31 = v39;
  LOBYTE(v34) = 0;
  sub_18B6C533C();
  return sub_18B4A6454(&v39, &qword_1EA9C3F60);
}

uint64_t sub_18B520720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_18B6C580C();
  v4[4] = sub_18B6C57FC();
  v6 = sub_18B6C57CC();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x1EEE6DFA0](sub_18B5207B8, v6, v5);
}

uint64_t sub_18B5207B8()
{
  *(v0 + 56) = AVPlayerViewController.experienceController.getter();
  *(v0 + 72) = 0;
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_18B4CAF38;
  v2 = *(v0 + 16);

  return AVExperienceController.transition(to:)(v2, (v0 + 72));
}

uint64_t sub_18B5208BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5420);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v67 = &v64[-v6];
  v111 = *(a1 + 24);
  v110 = *(a1 + 16);
  v7 = v110;
  v8 = v111;

  v9 = v7;
  v65 = v8;
  if ((v8 & 1) == 0)
  {
    sub_18B6C595C();
    v10 = sub_18B6C4E5C();
    sub_18B6C433C();

    v11 = sub_18B6C4A7C();
    v12 = *(v11 - 8);
    MEMORY[0x1EEE9AC00](v11, v13);
    v15 = &v64[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
    sub_18B6C4A6C();
    swift_getAtKeyPath();
    sub_18B4A6454(&v110, &qword_1EA9C41D8);
    (*(v12 + 8))(v15, v11);
    v9 = v82;
  }

  swift_getKeyPath();
  *&v82 = v9;
  sub_18B522FF4(&qword_1EA9C3ED8, type metadata accessor for MultiviewContentSelectorManager);
  sub_18B6C421C();

  v16 = *(v9 + 16);

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5428);
  v19 = v17;
  v20 = *(v17 - 8);
  if (v16 == 1)
  {
    MEMORY[0x1EEE9AC00](v17, v18);
    v22 = &v64[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
    *v22 = sub_18B6C4A8C();
    *(v22 + 1) = 0;
    v22[16] = 1;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5450);
    sub_18B521120(a1, &v22[*(v23 + 44)]);
    v24 = sub_18B6C4ECC();
    sub_18B6C466C();
    v25 = &v22[*(v19 + 36)];
    *v25 = v24;
    *(v25 + 1) = v26;
    *(v25 + 2) = v27;
    *(v25 + 3) = v28;
    *(v25 + 4) = v29;
    v25[40] = 0;
    v30 = v22;
    v31 = v67;
    sub_18B522744(v30, v67);
    (*(v20 + 56))(v31, 0, 1, v19);
  }

  else
  {
    (*(*(v17 - 8) + 56))(v67, 1, 1, v17);
  }

  v68 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5430);
  sub_18B6C534C();
  v33 = *(&v82 + 1);
  v32 = v82;
  v34 = v83;
  v68 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5438);
  sub_18B6C534C();
  sub_18B4CB440(v32, v33, v34, v82, *(&v82 + 1), v83, &v97);

  v35 = v7;
  v36 = v65;
  if ((v65 & 1) == 0)
  {
    sub_18B6C595C();
    v37 = sub_18B6C4E5C();
    sub_18B6C433C();

    v38 = sub_18B6C4A7C();
    v39 = *(v38 - 8);
    MEMORY[0x1EEE9AC00](v38, v40);
    v42 = &v64[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
    sub_18B6C4A6C();
    swift_getAtKeyPath();
    sub_18B4A6454(&v110, &qword_1EA9C41D8);
    (*(v39 + 8))(v42, v38);
    v35 = v82;
  }

  swift_getKeyPath();
  *&v82 = v35;
  sub_18B6C421C();

  v43 = *(v35 + 16);

  v46 = 0;
  if (v43 == 1)
  {

    if ((v36 & 1) == 0)
    {
      sub_18B6C595C();
      v47 = sub_18B6C4E5C();
      sub_18B6C433C();

      v48 = sub_18B6C4A7C();
      v49 = *(v48 - 8);
      MEMORY[0x1EEE9AC00](v48, v50);
      v52 = &v64[-((v51 + 15) & 0xFFFFFFFFFFFFFFF0)];
      sub_18B6C4A6C();
      swift_getAtKeyPath();
      sub_18B4A6454(&v110, &qword_1EA9C41D8);
      (*(v49 + 8))(v52, v48);
      v7 = v82;
    }

    swift_getKeyPath();
    *&v82 = v7;
    sub_18B6C421C();

    v46 = *(v7 + 32);
  }

  MEMORY[0x1EEE9AC00](v44, v45);
  v53 = &v64[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = v67;
  sub_18B4A63EC(v67, v53, &qword_1EA9C5420);
  v55 = v66;
  sub_18B4A63EC(v53, v66, &qword_1EA9C5420);
  v56 = v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5440) + 48);
  v78 = v107;
  v79 = v108;
  v74 = v103;
  v75 = v104;
  v76 = v105;
  v77 = v106;
  v72 = v101;
  v73 = v102;
  v70 = v99;
  v71 = v100;
  v68 = v97;
  v69 = v98;
  v80 = v109;
  v81 = v46;
  v57 = v108;
  *(v56 + 160) = v107;
  *(v56 + 176) = v57;
  v58 = v75;
  *(v56 + 96) = v74;
  *(v56 + 112) = v58;
  v59 = v77;
  *(v56 + 128) = v76;
  *(v56 + 144) = v59;
  v60 = v71;
  *(v56 + 32) = v70;
  *(v56 + 48) = v60;
  v61 = v73;
  *(v56 + 64) = v72;
  *(v56 + 80) = v61;
  v62 = v69;
  *v56 = v68;
  *(v56 + 16) = v62;
  *(v56 + 192) = v80;
  *(v56 + 208) = v81;
  sub_18B4A63EC(&v68, &v82, &qword_1EA9C5448);
  sub_18B4A6454(v54, &qword_1EA9C5420);
  v92 = v107;
  v93 = v108;
  v88 = v103;
  v89 = v104;
  v90 = v105;
  v91 = v106;
  v84 = v99;
  v85 = v100;
  v86 = v101;
  v87 = v102;
  v82 = v97;
  v83 = v98;
  v94 = v109;
  v95 = 0;
  v96 = v46;
  sub_18B4A6454(&v82, &qword_1EA9C5448);
  return sub_18B4A6454(v53, &qword_1EA9C5420);
}

uint64_t sub_18B521120@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5458);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v44 - v7;
  v9 = swift_allocObject();
  v10 = a1[1];
  v9[1] = *a1;
  v9[2] = v10;
  v11 = a1[3];
  v9[3] = a1[2];
  v9[4] = v11;
  sub_18B5227BC(a1, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5460);
  sub_18B5227F4();
  sub_18B6C536C();
  v12 = sub_18B6C4EEC();
  sub_18B6C466C();
  v13 = &v8[*(v4 + 44)];
  *v13 = v12;
  *(v13 + 1) = v14;
  *(v13 + 2) = v15;
  *(v13 + 3) = v16;
  *(v13 + 4) = v17;
  v13[40] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5480);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v22 = v44 - v21;
  v23 = sub_18B521AD8();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5488);
  v26 = v24;
  v27 = *(v24 - 8);
  if (v23)
  {
    v45 = v44;
    MEMORY[0x1EEE9AC00](v24, v25);
    v29 = v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = swift_allocObject();
    v44[1] = v44;
    v31 = a1[1];
    v30[1] = *a1;
    v30[2] = v31;
    v32 = a1[3];
    v30[3] = a1[2];
    v30[4] = v32;
    MEMORY[0x1EEE9AC00](v30, v33);
    v44[-2] = a1;
    sub_18B5227BC(a1, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5498);
    sub_18B522974();
    sub_18B6C536C();
    (*(v27 + 32))(v22, v29, v26);
    v34 = (*(v27 + 56))(v22, 0, 1, v26);
  }

  else
  {
    v34 = (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
  }

  v45 = v44;
  MEMORY[0x1EEE9AC00](v34, v35);
  v36 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_18B4A63EC(v8, v36, &qword_1EA9C5458);
  MEMORY[0x1EEE9AC00](v37, v38);
  v39 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B4A63EC(v22, v39, &qword_1EA9C5480);
  v40 = v46;
  sub_18B4A63EC(v36, v46, &qword_1EA9C5458);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5490);
  v42 = v40 + *(v41 + 48);
  *v42 = 0;
  *(v42 + 8) = 1;
  sub_18B4A63EC(v39, v40 + *(v41 + 64), &qword_1EA9C5480);
  sub_18B4A6454(v22, &qword_1EA9C5480);
  sub_18B4A6454(v8, &qword_1EA9C5458);
  sub_18B4A6454(v39, &qword_1EA9C5480);
  return sub_18B4A6454(v36, &qword_1EA9C5458);
}

uint64_t sub_18B5215C0()
{
  sub_18B6C54FC();
  sub_18B6C486C();

  if (qword_1EA9C3E40 != -1)
  {
    swift_once();
  }

  v0 = qword_1EA9C3E38;

  if (v0 != -1)
  {
    swift_once();
  }

  v1 = swift_allocObject();
  swift_weakInit();

  sub_18B51C8B0(sub_18B522BF0, v1);
}

uint64_t sub_18B521700(uint64_t a1)
{
  v14 = *(a1 + 24);
  v1 = *(a1 + 16);
  v13 = v1;

  if ((v14 & 1) == 0)
  {
    sub_18B6C595C();
    v2 = sub_18B6C4E5C();
    sub_18B6C433C();

    v3 = sub_18B6C4A7C();
    v4 = *(v3 - 8);
    MEMORY[0x1EEE9AC00](v3, v5);
    v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_18B6C4A6C();
    swift_getAtKeyPath();
    sub_18B4A6454(&v13, &qword_1EA9C41D8);
    (*(v4 + 8))(v7, v3);
    v1 = v12;
  }

  if (*(v1 + 16))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v9);
    v12 = v1;
    sub_18B522FF4(&qword_1EA9C3ED8, type metadata accessor for MultiviewContentSelectorManager);
    sub_18B6C420C();
  }

  else
  {
    *(v1 + 16) = 0;
  }
}

double sub_18B521950@<D0>(uint64_t a1@<X8>)
{
  sub_18B6C528C();
  v2 = sub_18B6C529C();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E6981638], v2, v5);
  v8 = sub_18B6C52DC();

  (*(v3 + 8))(v7, v2);
  v9 = sub_18B6C521C();
  sub_18B6C54BC();
  sub_18B6C479C();
  *a1 = v8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 257;
  *(a1 + 24) = v9;
  v10 = v12[2];
  *(a1 + 32) = v12[1];
  *(a1 + 48) = v10;
  result = *&v13;
  *(a1 + 64) = v13;
  return result;
}

BOOL sub_18B521AD8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_18B6C461C();

  v0 = *(v3 + 16);

  if (v0 == 2)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_18B6C461C();

  v2 = *(v3 + 16);

  return v2 == 4;
}

uint64_t sub_18B521BC0()
{
  sub_18B6C54FC();
  sub_18B6C486C();
}

uint64_t sub_18B521C2C(uint64_t a1)
{
  v3 = *(a1 + 48);
  v4 = v3;
  v5 = *(&v3 + 1);
  sub_18B4A63EC(&v5, v2, &qword_1EA9C5518);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5438);
  sub_18B6C532C();
  v3 = v4;
  v2[0] = !v2[0];
  sub_18B6C533C();
  return sub_18B4A6454(&v4, &qword_1EA9C5438);
}

double sub_18B521CFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = sub_18B6C4A8C();
  v49 = 1;
  sub_18B5220D4(a1, &v36);
  v60 = v45;
  v61 = v46;
  v62[0] = v47[0];
  *(v62 + 9) = *(v47 + 9);
  v57 = v42;
  v58 = v43;
  v59 = v44;
  v53 = v38;
  v54 = v39;
  v55 = v40;
  v56 = v41;
  v51 = v36;
  v52 = v37;
  v63[9] = v45;
  v63[10] = v46;
  v64[0] = v47[0];
  *(v64 + 9) = *(v47 + 9);
  v63[6] = v42;
  v63[7] = v43;
  v63[8] = v44;
  v63[2] = v38;
  v63[3] = v39;
  v63[4] = v40;
  v63[5] = v41;
  v63[0] = v36;
  v63[1] = v37;
  sub_18B4A63EC(&v51, v35, &qword_1EA9C54F8);
  sub_18B4A6454(v63, &qword_1EA9C54F8);
  *(&v48[9] + 7) = v60;
  *(&v48[10] + 7) = v61;
  *(&v48[11] + 7) = v62[0];
  v48[12] = *(v62 + 9);
  *(&v48[5] + 7) = v56;
  *(&v48[6] + 7) = v57;
  *(&v48[7] + 7) = v58;
  *(&v48[8] + 7) = v59;
  *(&v48[1] + 7) = v52;
  *(&v48[2] + 7) = v53;
  *(&v48[3] + 7) = v54;
  *(&v48[4] + 7) = v55;
  *(v48 + 7) = v51;
  v32 = v49;
  v36 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5438);
  sub_18B6C532C();
  if (v35[0] == 1)
  {
    v4 = sub_18B6C523C();
  }

  else
  {
    v4 = sub_18B6C521C();
  }

  v31 = v4;
  v29 = sub_18B6C4EBC();
  v30 = sub_18B6C4F0C();
  sub_18B6C466C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v50 = 0;
  v13 = sub_18B6C543C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13, v15);
  v16 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *MEMORY[0x1E697F470];
  v18 = sub_18B6C4AAC();
  v19 = (*(*(v18 - 8) + 104))(v16, v17, v18);
  MEMORY[0x1EEE9AC00](v19, v20);
  sub_18B522B54(v16, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5498);
  sub_18B522D30(&qword_1EA9C5500, MEMORY[0x1EEE81BF0]);
  sub_18B6C4E6C();
  sub_18B506580(v16);
  v21 = v48[8];
  *(a2 + 161) = v48[9];
  v22 = v48[11];
  *(a2 + 177) = v48[10];
  *(a2 + 193) = v22;
  *(a2 + 209) = v48[12];
  v23 = v48[4];
  *(a2 + 97) = v48[5];
  v24 = v48[7];
  *(a2 + 113) = v48[6];
  *(a2 + 129) = v24;
  *(a2 + 145) = v21;
  v25 = v48[0];
  *(a2 + 33) = v48[1];
  result = *&v48[2];
  v27 = v48[3];
  *(a2 + 49) = v48[2];
  *(a2 + 65) = v27;
  *(a2 + 81) = v23;
  *a2 = v33;
  *(a2 + 8) = 0;
  *(a2 + 16) = v32;
  *(a2 + 17) = v25;
  *(a2 + 225) = v36;
  *(a2 + 228) = *(&v36 + 3);
  *(a2 + 232) = v31;
  *(a2 + 240) = v29;
  *(a2 + 241) = *v35;
  *(a2 + 244) = *&v35[3];
  *(a2 + 248) = v30;
  *(a2 + 249) = *v34;
  *(a2 + 252) = *&v34[3];
  *(a2 + 256) = v6;
  *(a2 + 264) = v8;
  *(a2 + 272) = v10;
  *(a2 + 280) = v12;
  *(a2 + 288) = 0;
  return result;
}

uint64_t sub_18B5220D4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_18B6C528C();
  v4 = sub_18B6C529C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v9, *MEMORY[0x1E6981638], v4, v7);
  v61 = sub_18B6C52DC();

  (*(v5 + 8))(v9, v4);
  v123 = *(a1 + 48);
  v95 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5438);
  sub_18B6C532C();
  if (LOBYTE(v73[0]) == 1)
  {
    v10 = sub_18B6C521C();
  }

  else
  {
    v10 = sub_18B6C51EC();
  }

  v60 = v10;
  sub_18B6C54BC();
  sub_18B6C479C();
  v120 = 1;
  v59 = sub_18B6C4EEC();
  sub_18B6C466C();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v121 = 0;
  sub_18B6C4A9C();
  v19 = sub_18B6C4FFC();
  v21 = v20;
  v23 = v22;
  v95 = v123;
  sub_18B6C532C();
  if (LOBYTE(v73[0]) == 1)
  {
    v24 = sub_18B6C521C();
  }

  else
  {
    v24 = sub_18B6C51EC();
  }

  *&v95 = v24;
  v25 = sub_18B6C4FBC();
  v56 = v26;
  v57 = v25;
  v28 = v27;
  v58 = v29;
  sub_18B4B20BC(v19, v21, v23 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5168);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_18B6EA6B0;
  v31 = sub_18B6C4F0C();
  *(v30 + 32) = v31;
  v32 = sub_18B6C4ECC();
  *(v30 + 33) = v32;
  v33 = sub_18B6C4EDC();
  *(v30 + 34) = v33;
  v34 = sub_18B6C4EFC();
  sub_18B6C4EFC();
  if (sub_18B6C4EFC() != v31)
  {
    v34 = sub_18B6C4EFC();
  }

  sub_18B6C4EFC();
  if (sub_18B6C4EFC() != v32)
  {
    v34 = sub_18B6C4EFC();
  }

  sub_18B6C4EFC();
  if (sub_18B6C4EFC() != v33)
  {
    v34 = sub_18B6C4EFC();
  }

  sub_18B6C466C();
  v35 = v28 & 1;
  v114 = v28 & 1;
  v111 = 0;
  v36 = v61;
  v73[0] = v61;
  v73[1] = 0;
  LOWORD(v74) = 257;
  *(&v74 + 2) = v118;
  WORD3(v74) = v119;
  v37 = v60;
  *(&v74 + 1) = v60;
  v76 = v116;
  v77 = v117;
  v75 = v115;
  v38 = v59;
  LOBYTE(v78) = v59;
  DWORD1(v78) = *&v122[3];
  *(&v78 + 1) = *v122;
  *(&v78 + 1) = v12;
  *&v79[0] = v14;
  *(&v79[0] + 1) = v16;
  *&v79[1] = v18;
  BYTE8(v79[1]) = 0;
  v64 = v115;
  v65 = v116;
  v62 = v61;
  v63 = v74;
  *(v68 + 9) = *(v79 + 9);
  v66 = v117;
  v67 = v78;
  v40 = v56;
  v39 = v57;
  *&v80 = v57;
  *(&v80 + 1) = v56;
  LOBYTE(v81) = v35;
  DWORD1(v81) = *&v113[3];
  *(&v81 + 1) = *v113;
  v41 = v58;
  *(&v81 + 1) = v58;
  LOBYTE(v82) = v34;
  DWORD1(v82) = *&v112[3];
  *(&v82 + 1) = *v112;
  *(&v82 + 1) = v42;
  *&v83[0] = v43;
  *(&v83[0] + 1) = v44;
  *&v83[1] = v45;
  BYTE8(v83[1]) = 0;
  v68[0] = v79[0];
  v69 = v80;
  v70 = v81;
  *(v72 + 9) = *(v83 + 9);
  v71 = v82;
  v72[0] = v83[0];
  v46 = v61;
  v47 = v74;
  v48 = v116;
  a2[2] = v115;
  a2[3] = v48;
  *a2 = v46;
  a2[1] = v47;
  v49 = v66;
  v50 = v67;
  v51 = v68[1];
  a2[6] = v68[0];
  a2[7] = v51;
  a2[4] = v49;
  a2[5] = v50;
  v52 = v69;
  v53 = v70;
  *(a2 + 185) = *(v72 + 9);
  v54 = v72[0];
  a2[10] = v71;
  a2[11] = v54;
  a2[8] = v52;
  a2[9] = v53;
  v84[0] = v39;
  v84[1] = v40;
  v85 = v35;
  *v86 = *v113;
  *&v86[3] = *&v113[3];
  v87 = v41;
  v88 = v34;
  *v89 = *v112;
  *&v89[3] = *&v112[3];
  v90 = v42;
  v91 = v43;
  v92 = v44;
  v93 = v45;
  v94 = 0;
  sub_18B4A63EC(v73, &v95, &qword_1EA9C5508);
  sub_18B4A63EC(&v80, &v95, &qword_1EA9C5510);
  sub_18B4A6454(v84, &qword_1EA9C5510);
  v95 = v36;
  v96 = 1;
  v97 = 1;
  v98 = v118;
  v99 = v119;
  v100 = v37;
  v101 = v115;
  v102 = v116;
  v103 = v117;
  v104 = v38;
  *&v105[3] = *&v122[3];
  *v105 = *v122;
  v106 = v12;
  v107 = v14;
  v108 = v16;
  v109 = v18;
  v110 = 0;
  return sub_18B4A6454(&v95, &qword_1EA9C5508);
}

uint64_t sub_18B5226D8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v7[0] = *v1;
  v7[1] = v3;
  v4 = v1[3];
  v7[2] = v1[2];
  v7[3] = v4;
  *a1 = sub_18B6C4AFC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5418);
  return sub_18B5208BC(v7, a1 + *(v5 + 44));
}

uint64_t sub_18B522744(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5428);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_18B5227F4()
{
  result = qword_1EA9C5468;
  if (!qword_1EA9C5468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C5460);
    sub_18B522874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C5468);
  }

  return result;
}

unint64_t sub_18B522874()
{
  result = qword_1EA9C5470;
  if (!qword_1EA9C5470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C5478);
    sub_18B4C24A8();
    sub_18B4A6268(&qword_1EA9C5800, &qword_1EA9C4E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C5470);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

unint64_t sub_18B522974()
{
  result = qword_1EA9C54A0;
  if (!qword_1EA9C54A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C5498);
    sub_18B522A14();
    sub_18B4A6268(&qword_1EA9C54E8, &qword_1EA9C54F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C54A0);
  }

  return result;
}

unint64_t sub_18B522A14()
{
  result = qword_1EA9C54A8;
  if (!qword_1EA9C54A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C54B0);
    sub_18B522A94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C54A8);
  }

  return result;
}

unint64_t sub_18B522A94()
{
  result = qword_1EA9C54B8;
  if (!qword_1EA9C54B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C54C0);
    sub_18B4A6268(&qword_1EA9C54C8, &qword_1EA9C54D0);
    sub_18B4A6268(&qword_1EA9C54D8, &qword_1EA9C54E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C54B8);
  }

  return result;
}

uint64_t sub_18B522B54(uint64_t a1, uint64_t a2)
{
  v4 = sub_18B6C543C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
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

uint64_t sub_18B522C1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_18B522C64(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_18B522D30(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_18B522D80()
{
  result = qword_1EA9C5548;
  if (!qword_1EA9C5548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C5530);
    sub_18B4A6268(&qword_1EA9C5550, &qword_1EA9C5540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C5548);
  }

  return result;
}

uint64_t objectdestroy_24Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t sub_18B522F10(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_18B4CC5A0;

  return sub_18B520720(a1, v4, v5, v1 + 32);
}

uint64_t sub_18B522FF4(unint64_t *a1, void (*a2)(uint64_t))
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
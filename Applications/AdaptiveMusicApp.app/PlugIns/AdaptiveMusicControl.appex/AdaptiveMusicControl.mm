uint64_t sub_1000016F8()
{
  result = sub_100005BAC();
  qword_10000C370 = result;
  return result;
}

uint64_t sub_100001718()
{
  v0 = sub_100005A9C();
  sub_100001788(v0, qword_10000C378);
  sub_1000017EC(v0, qword_10000C378);
  return sub_100005A8C();
}

uint64_t *sub_100001788(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1000017EC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001844(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100001888@<X0>(uint64_t a1@<X8>)
{
  sub_10000598C();
  v2 = sub_1000059FC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_1000018F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_10000467C(&qword_10000C228, &qword_1000066F0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = *(*(sub_10000467C(&qword_10000C138, &qword_1000065F8) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v7 = sub_1000059FC();
  v4[9] = v7;
  v8 = *(v7 - 8);
  v4[10] = v8;
  v9 = *(v8 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_100001A5C, 0, 0);
}

uint64_t sub_100001A5C()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];
  sub_10000596C();
  v7 = *(v2 + 48);
  v0[15] = v7;
  v0[16] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v7(v3, 1, v1) == 1)
  {
    sub_100004EE8(v0[8], &qword_10000C138, &qword_1000065F8);
    sub_100005A6C();
    v0[21] = sub_100005A4C();
    v8 = *(&async function pointer to dispatch thunk of Library.moods.getter + 1);
    v19 = (&async function pointer to dispatch thunk of Library.moods.getter + async function pointer to dispatch thunk of Library.moods.getter);
    v9 = swift_task_alloc();
    v0[22] = v9;
    *v9 = v0;
    v9[1] = sub_1000020C8;

    return v19();
  }

  else
  {
    v11 = v0[14];
    v12 = v0[9];
    v13 = v0[10];
    v14 = v0[8];
    v15 = *(v13 + 32);
    v0[17] = v15;
    v0[18] = (v13 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v15(v11, v14, v12);
    sub_100005A6C();
    v0[19] = sub_100005A4C();
    v16 = async function pointer to Library.contains(playlist:)[1];
    v17 = swift_task_alloc();
    v0[20] = v17;
    *v17 = v0;
    v17[1] = sub_100001C38;
    v18 = v0[14];

    return Library.contains(playlist:)(v18);
  }
}

uint64_t sub_100001C38(char a1)
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 192) = a1;

  return _swift_task_switch(sub_100001D58, 0, 0);
}

uint64_t sub_100001D58()
{
  v32 = v0;
  if (*(v0 + 192) == 1)
  {
    if (qword_10000C098 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 104);
    v2 = *(v0 + 112);
    v3 = *(v0 + 72);
    v4 = *(v0 + 80);
    v5 = sub_100005A9C();
    sub_1000017EC(v5, qword_10000C378);
    (*(v4 + 16))(v1, v2, v3);
    v6 = sub_100005A7C();
    v7 = sub_100005CBC();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 104);
    v10 = *(v0 + 72);
    v11 = *(v0 + 80);
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v31 = v13;
      *v12 = 136315138;
      sub_100004FF4(&qword_10000C230, &type metadata accessor for Mood.Playlist);
      v14 = sub_100005CEC();
      v16 = v15;
      (*(v11 + 8))(v9, v10);
      v17 = sub_1000040D4(v14, v16, &v31);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v6, v7, "Returning selected playlist: %s", v12, 0xCu);
      sub_100004F48(v13);
    }

    else
    {

      (*(v11 + 8))(v9, v10);
    }

    v21 = *(v0 + 144);
    (*(v0 + 136))(*(v0 + 16), *(v0 + 112), *(v0 + 72));
    v22 = *(v0 + 104);
    v23 = *(v0 + 112);
    v25 = *(v0 + 88);
    v24 = *(v0 + 96);
    v27 = *(v0 + 56);
    v26 = *(v0 + 64);
    v28 = *(v0 + 48);
    (*(*(v0 + 80) + 56))(*(v0 + 16), 0, 1, *(v0 + 72));

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    (*(*(v0 + 80) + 8))(*(v0 + 112), *(v0 + 72));
    sub_100005A6C();
    *(v0 + 168) = sub_100005A4C();
    v18 = *(&async function pointer to dispatch thunk of Library.moods.getter + 1);
    v30 = (&async function pointer to dispatch thunk of Library.moods.getter + async function pointer to dispatch thunk of Library.moods.getter);
    v19 = swift_task_alloc();
    *(v0 + 176) = v19;
    *v19 = v0;
    v19[1] = sub_1000020C8;

    return v30();
  }
}

uint64_t sub_1000020C8(uint64_t a1)
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 184) = a1;

  return _swift_task_switch(sub_1000021E8, 0, 0);
}

uint64_t sub_1000021E8()
{
  v48 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v4 + 16) = *(v0 + 32);
  *(v4 + 32) = v3;
  sub_1000028B8(sub_100004EC4, v1, v2);

  v5 = sub_100005A0C();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v2, 1, v5) == 1)
  {
    v7 = *(v0 + 72);
    v8 = *(v0 + 80);
    v9 = *(v0 + 56);
    sub_100004EE8(*(v0 + 48), &qword_10000C228, &qword_1000066F0);
    (*(v8 + 56))(v9, 1, 1, v7);
LABEL_4:
    sub_100004EE8(*(v0 + 56), &qword_10000C138, &qword_1000065F8);
    if (qword_10000C098 != -1)
    {
      swift_once();
    }

    v15 = sub_100005A9C();
    sub_1000017EC(v15, qword_10000C378);
    v16 = sub_100005A7C();
    v17 = sub_100005CAC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to retrieve default playlist, playback will not start", v18, 2u);
    }

    v19 = 1;
    goto LABEL_15;
  }

  v11 = *(v0 + 120);
  v10 = *(v0 + 128);
  v12 = *(v0 + 72);
  v13 = *(v0 + 48);
  v14 = *(v0 + 56);
  sub_1000059BC();
  (*(v6 + 8))(v13, v5);
  if (v11(v14, 1, v12) == 1)
  {
    goto LABEL_4;
  }

  v20 = *(*(v0 + 80) + 32);
  v20(*(v0 + 96), *(v0 + 56), *(v0 + 72));
  if (qword_10000C098 != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 88);
  v22 = *(v0 + 96);
  v23 = *(v0 + 72);
  v24 = *(v0 + 80);
  v25 = sub_100005A9C();
  sub_1000017EC(v25, qword_10000C378);
  (*(v24 + 16))(v21, v22, v23);
  v26 = sub_100005A7C();
  v27 = sub_100005CBC();
  v28 = os_log_type_enabled(v26, v27);
  v30 = *(v0 + 80);
  v29 = *(v0 + 88);
  v31 = *(v0 + 72);
  if (v28)
  {
    v32 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = v46;
    *v32 = 136315138;
    sub_100004FF4(&qword_10000C230, &type metadata accessor for Mood.Playlist);
    v33 = sub_100005CEC();
    v35 = v34;
    (*(v30 + 8))(v29, v31);
    v36 = sub_1000040D4(v33, v35, &v47);

    *(v32 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v26, v27, "Falling back to default playlist: %s", v32, 0xCu);
    sub_100004F48(v46);
  }

  else
  {

    (*(v30 + 8))(v29, v31);
  }

  v20(*(v0 + 16), *(v0 + 96), *(v0 + 72));
  v19 = 0;
LABEL_15:
  v37 = *(v0 + 104);
  v38 = *(v0 + 112);
  v40 = *(v0 + 88);
  v39 = *(v0 + 96);
  v42 = *(v0 + 56);
  v41 = *(v0 + 64);
  v43 = *(v0 + 48);
  (*(*(v0 + 80) + 56))(*(v0 + 16), v19, 1, *(v0 + 72));

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_1000026D4()
{
  v0 = sub_1000059CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = (__chkstk_darwin)();
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  sub_1000059DC();
  sub_10000597C();
  sub_100004FF4(&qword_10000C240, &type metadata accessor for Mood.ID);
  sub_100005C8C();
  sub_100005C8C();
  if (v11[2] == v11[0] && v11[3] == v11[1])
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100005CFC();
  }

  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);

  return v8 & 1;
}

uint64_t sub_1000028B8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = sub_100005A0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

uint64_t sub_100002A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = *(a3 + 16);
  v9 = *(a3 + 24);
  *v7 = v3;
  v7[1] = sub_100002B40;

  return sub_1000018F8(a1, a2, v8, v9);
}

uint64_t sub_100002B40()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(void, void)@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v72 = a5;
  v9 = sub_10000590C();
  v70 = *(v9 - 8);
  v71 = v9;
  v10 = *(v70 + 64);
  __chkstk_darwin(v9);
  v69 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003F90(&qword_10000C120, &qword_1000065E8);
  v68 = a4;
  v13 = *(a4 + 8);
  v14 = sub_100003F90(&qword_10000C128, &qword_1000065F0);
  v15 = sub_1000048F4(&qword_10000C130, &qword_10000C128, &qword_1000065F0);
  v73 = v14;
  v74 = v15;
  v16 = a2;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v73 = a2;
  v74 = v12;
  v67 = v12;
  v75 = v13;
  v76 = OpaqueTypeConformance2;
  v62 = OpaqueTypeConformance2;
  v18 = sub_100005C6C();
  v66 = *(v18 - 8);
  v19 = *(v66 + 64);
  __chkstk_darwin(v18);
  v21 = &v52 - v20;
  WitnessTable = swift_getWitnessTable();
  v73 = v18;
  v74 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v64 = *(OpaqueTypeMetadata2 - 8);
  v24 = *(v64 + 64);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v63 = &v52 - v25;
  v26 = v18;
  v73 = v18;
  v74 = WitnessTable;
  v61 = WitnessTable;
  v27 = swift_getOpaqueTypeConformance2();
  v73 = OpaqueTypeMetadata2;
  v74 = v27;
  v28 = swift_getOpaqueTypeMetadata2();
  v59 = *(v28 - 8);
  v29 = *(v59 + 64);
  __chkstk_darwin(v28);
  v57 = &v52 - v30;
  v58 = v27;
  v65 = OpaqueTypeMetadata2;
  v73 = OpaqueTypeMetadata2;
  v74 = v27;
  v31 = swift_getOpaqueTypeConformance2();
  v60 = v28;
  v73 = v28;
  v74 = v31;
  v54 = v31;
  v56 = swift_getOpaqueTypeMetadata2();
  v55 = *(v56 - 8);
  v32 = *(v55 + 64);
  v33 = __chkstk_darwin(v56);
  v52 = &v52 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v53 = &v52 - v35;
  a3[3](a1, a3);
  v36 = swift_allocObject();
  v36[2] = a1;
  v36[3] = v16;
  v37 = v68;
  v36[4] = a3;
  v36[5] = v37;
  type metadata accessor for AdaptiveMusicControlValueProvider();
  swift_getWitnessTable();
  sub_100005C5C();
  a3[5](a1, a3);
  v38 = v69;
  sub_1000058FC();
  v39 = v63;
  sub_100005B4C();
  v40 = v71;
  v41 = *(v70 + 8);
  v41(v38, v71);
  (*(v66 + 8))(v21, v26);
  a3[6](a1, a3);
  sub_1000058FC();
  v42 = v57;
  v43 = v65;
  sub_100005B3C();
  v41(v38, v40);
  (*(v64 + 8))(v39, v43);
  v44 = v52;
  v45 = v60;
  sub_100005B5C();
  (*(v59 + 8))(v42, v45);
  v46 = v55;
  v47 = *(v55 + 16);
  v48 = v53;
  v49 = v56;
  v47(v53, v44, v56);
  v50 = *(v46 + 8);
  v50(v44, v49);
  v47(v72, v48, v49);
  return (v50)(v48, v49);
}

uint64_t sub_100003360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a3;
  v46 = a5;
  v51 = a6;
  v47 = sub_10000592C();
  v9 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v44[2] = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000467C(&qword_10000C128, &qword_1000065F0);
  v49 = *(v11 - 8);
  v50 = v11;
  v12 = *(v49 + 64);
  __chkstk_darwin(v11);
  v48 = v44 - v13;
  v14 = sub_10000467C(&qword_10000C138, &qword_1000065F8);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v44 - v19;
  v21 = sub_1000059FC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  sub_1000046C4(a1, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_100004EE8(v20, &qword_10000C138, &qword_1000065F8);
    v27 = 0;
    v28 = 0;
  }

  else
  {
    (*(v22 + 32))(v25, v20, v21);
    v29 = sub_10000493C(v25);
    v28 = v29;
    v27 = (v29 >> 8) & 1;
    (*(v22 + 8))(v25, v21);
  }

  if (qword_10000C098 != -1)
  {
    swift_once();
  }

  v30 = sub_100005A9C();
  sub_1000017EC(v30, qword_10000C378);
  v31 = sub_100005A7C();
  v32 = sub_100005C9C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 67109376;
    *(v33 + 4) = v28 & 1;
    *(v33 + 8) = 1024;
    *(v33 + 10) = v27;
    _os_log_impl(&_mh_execute_header, v31, v32, "Reloading the control with on: %{BOOL}d, loading: %{BOOL}d", v33, 0xEu);
  }

  (*(a4 + 32))(a2, a4);
  v44[1] = sub_100005B0C();
  sub_1000046C4(v26, v18);
  sub_100005A3C();
  sub_100005A2C();
  sub_10000591C();
  v34 = swift_allocObject();
  v36 = v45;
  v35 = v46;
  *(v34 + 16) = a2;
  *(v34 + 24) = v36;
  *(v34 + 32) = a4;
  *(v34 + 40) = v35;
  *(v34 + 48) = v27;
  sub_10000467C(&qword_10000C140, &qword_100006600);
  v37 = sub_100003F90(&qword_10000C148, &qword_100006608);
  v38 = sub_100003F90(&qword_10000C150, &qword_100006610);
  v39 = sub_100004754();
  v52 = v38;
  v53 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = v37;
  v53 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_100004FF4(&qword_10000C198, &type metadata accessor for ToggleMusicIntent);
  v41 = v48;
  sub_100005C4C();
  if (qword_10000C090 != -1)
  {
    swift_once();
  }

  sub_1000048F4(&qword_10000C130, &qword_10000C128, &qword_1000065F0);
  v42 = v50;
  sub_100005B1C();
  return (*(v49 + 8))(v41, v42);
}

uint64_t sub_10000392C@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v46 = a5;
  v47 = a6;
  v45 = a4;
  v52 = a2;
  v8 = a1;
  v48 = a1;
  v55 = a7;
  v51 = sub_100005C3C();
  v9 = *(v51 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v51);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005C1C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v44 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v44 - v19;
  __chkstk_darwin(v18);
  v22 = &v44 - v21;
  v49 = sub_10000467C(&qword_10000C150, &qword_100006610);
  v23 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v25 = &v44 - v24;
  v26 = sub_10000467C(&qword_10000C148, &qword_100006608);
  v27 = *(v26 - 8);
  v53 = v26;
  v54 = v27;
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v50 = &v44 - v29;
  v60 = v8;
  v56 = a3;
  v57 = v45;
  v58 = v46;
  v59 = v47;
  sub_100005BCC();
  sub_100005C0C();
  sub_100005BFC();
  v30 = *(v14 + 8);
  v30(v22, v13);
  sub_100005BEC();
  v30(v20, v13);
  v31 = v12;
  sub_100005C2C();
  v32 = &v25[*(sub_10000467C(&qword_10000C168, &qword_100006618) + 36)];
  v33 = sub_100005B6C();
  v34 = v12;
  v35 = v51;
  (*(v9 + 16))(&v32[*(v33 + 20)], v34, v51);
  sub_100004FF4(qword_10000C1A0, &type metadata accessor for BreatheSymbolEffect);
  v36 = v44;
  sub_100005BDC();
  (*(v9 + 8))(v31, v35);
  v30(v36, v13);
  v32[*(v33 + 24)] = v52;
  v37 = v49;
  v38 = &v25[*(v49 + 36)];
  v39 = v38 + *(sub_10000467C(&qword_10000C190, &qword_100006628) + 28);
  sub_100005ACC();
  *v38 = swift_getKeyPath();
  sub_100005B0C();
  v40 = sub_100004754();
  v41 = v50;
  sub_100005B9C();

  sub_100004EE8(v25, &qword_10000C150, &qword_100006610);
  sub_100005B0C();
  v61 = v37;
  v62 = v40;
  swift_getOpaqueTypeConformance2();
  v42 = v53;
  sub_100005B8C();

  return (*(v54 + 8))(v41, v42);
}

uint64_t sub_100003EEC@<X0>(uint64_t a1@<X8>)
{
  sub_100005B0C();
  result = sub_100005B7C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100003F90(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000400C(uint64_t a1)
{
  v2 = sub_100005ADC();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_100005AFC();
}

uint64_t sub_1000040D4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000041A0(v11, 0, 0, 1, a1, a2);
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
    sub_100004F94(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004F48(v11);
  return v7;
}

unint64_t sub_1000041A0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000042AC(a5, a6);
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
    result = sub_100005CDC();
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

char *sub_1000042AC(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000042F8(a1, a2);
  sub_100004428(&off_100008690);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000042F8(uint64_t a1, unint64_t a2)
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

  v6 = sub_100004514(v5, 0);
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

  result = sub_100005CDC();
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
        v10 = sub_100005C7C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100004514(v10, 0);
        result = sub_100005CCC();
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

uint64_t sub_100004428(uint64_t result)
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

  result = sub_100004588(result, v12, 1, v3);
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

void *sub_100004514(uint64_t a1, uint64_t a2)
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

  sub_10000467C(&qword_10000C238, qword_1000066F8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100004588(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000467C(&qword_10000C238, qword_1000066F8);
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

uint64_t sub_10000467C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000046C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000467C(&qword_10000C138, &qword_1000065F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100004754()
{
  result = qword_10000C158;
  if (!qword_10000C158)
  {
    sub_100003F90(&qword_10000C150, &qword_100006610);
    sub_10000480C();
    sub_1000048F4(&qword_10000C188, &qword_10000C190, &qword_100006628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C158);
  }

  return result;
}

unint64_t sub_10000480C()
{
  result = qword_10000C160;
  if (!qword_10000C160)
  {
    sub_100003F90(&qword_10000C168, &qword_100006618);
    sub_1000048F4(&qword_10000C170, &qword_10000C178, &qword_100006620);
    sub_100004FF4(&qword_10000C180, &type metadata accessor for _IndefiniteSymbolEffectModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C160);
  }

  return result;
}

uint64_t sub_1000048F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003F90(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000493C(uint64_t a1)
{
  v20[1] = a1;
  v1 = sub_1000059FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000595C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100005A1C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000059AC();
  sub_10000599C();
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 == enum case for Player.PlaybackStatus.loading(_:))
  {
    (*(v12 + 96))(v15, v11);
    (*(v7 + 32))(v10, v15, v6);
    sub_10000594C();
    v17 = sub_1000059EC();
    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v10, v6);
    if (v17)
    {
      v18 = 256;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    if (v16 == enum case for Player.PlaybackStatus.playing(_:))
    {
      (*(v12 + 96))(v15, v11);
      (*(v7 + 32))(v10, v15, v6);
      sub_10000594C();
      v17 = sub_1000059EC();
      (*(v2 + 8))(v5, v1);
      (*(v7 + 8))(v10, v6);
    }

    else
    {
      (*(v12 + 8))(v15, v11);
      v17 = 0;
    }

    v18 = 0;
  }

  return v18 | v17 & 1u;
}

uint64_t sub_100004C90@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  (*(*(v1 + 32) + 8))();
  result = sub_100005BBC();
  *a1 = result;
  return result;
}

uint64_t sub_100004D0C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  sub_100003F90(&qword_10000C120, &qword_1000065E8);
  v3 = *(v2 + 8);
  sub_100003F90(&qword_10000C128, &qword_1000065F0);
  sub_1000048F4(&qword_10000C130, &qword_10000C128, &qword_1000065F0);
  swift_getOpaqueTypeConformance2();
  sub_100005C6C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100004EC4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1000026D4() & 1;
}

uint64_t sub_100004EE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000467C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100004F48(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100004F94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004FF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000506C@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v55 = sub_10000467C(&qword_10000C250, &qword_100006770);
  v1 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v54 = &v45 - v2;
  v3 = sub_10000467C(&qword_10000C258, &qword_100006778);
  v4 = *(v3 - 8);
  v66 = v3;
  v67 = v4;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v63 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v61 = &v45 - v8;
  v53 = sub_10000467C(&qword_10000C260, &qword_100006780);
  v62 = *(v53 - 8);
  v9 = v62[8];
  v10 = __chkstk_darwin(v53);
  v65 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v58 = &v45 - v12;
  v52 = sub_10000467C(&qword_10000C268, &qword_100006788);
  v60 = *(v52 - 8);
  v13 = v60[8];
  v14 = __chkstk_darwin(v52);
  v59 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v45 - v16;
  v64 = sub_10000467C(&qword_10000C270, &qword_100006790);
  v51 = *(v64 - 8);
  v18 = v51;
  v19 = *(v51 + 64);
  v20 = __chkstk_darwin(v64);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v22;
  __chkstk_darwin(v20);
  v24 = &v45 - v23;
  sub_10000467C(&qword_10000C278, &qword_100006798);
  sub_1000048F4(&qword_10000C280, &qword_10000C278, &qword_100006798);
  v50 = v24;
  sub_100005B2C();
  sub_10000467C(&qword_10000C288, &qword_1000067A0);
  sub_1000048F4(&qword_10000C290, &qword_10000C288, &qword_1000067A0);
  v49 = v17;
  sub_100005B2C();
  sub_10000467C(&qword_10000C298, &qword_1000067A8);
  sub_1000048F4(&qword_10000C2A0, &qword_10000C298, &qword_1000067A8);
  v25 = v58;
  sub_100005B2C();
  sub_10000467C(&qword_10000C2A8, &qword_1000067B0);
  sub_1000048F4(&qword_10000C2B0, &qword_10000C2A8, &qword_1000067B0);
  v26 = v61;
  sub_100005B2C();
  v48 = *(v18 + 16);
  v48(v22, v24, v64);
  v27 = v59;
  v47 = v60[2];
  v28 = v52;
  v47(v59, v17, v52);
  v46 = v62[2];
  v29 = v53;
  v46(v65, v25, v53);
  v30 = *(v67 + 16);
  v31 = v63;
  v30(v63, v26, v66);
  v32 = v30;
  v33 = v54;
  v48(v54, v57, v64);
  v34 = v55;
  v47(&v33[*(v55 + 48)], v27, v28);
  v35 = v29;
  v46(&v33[*(v34 + 64)], v65, v29);
  v36 = v31;
  v37 = v66;
  v32(&v33[*(v34 + 80)], v36, v66);
  sub_100005AAC();
  v38 = *(v67 + 8);
  v67 += 8;
  v38(v61, v37);
  v39 = v62[1];
  v40 = v35;
  v39(v58, v35);
  v41 = v60[1];
  v41(v49, v28);
  v42 = *(v51 + 8);
  v43 = v64;
  v42(v50, v64);
  v38(v63, v66);
  v39(v65, v40);
  v41(v59, v28);
  return (v42)(v57, v43);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100005738();
  sub_100005ABC();
  return 0;
}

unint64_t sub_100005738()
{
  result = qword_10000C248;
  if (!qword_10000C248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C248);
  }

  return result;
}

uint64_t sub_1000057FC()
{
  sub_10000467C(&qword_10000C2C8, &qword_100006828);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000067C0;
  v1 = sub_10000593C();
  v2 = sub_100005870();
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

unint64_t sub_100005870()
{
  result = qword_10000C2D0;
  if (!qword_10000C2D0)
  {
    sub_10000593C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2D0);
  }

  return result;
}
uint64_t sub_19F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  return v1;
}

uint64_t sub_1A8C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  return v1;
}

id sub_1AF8()
{
  v1 = v0;
  v2 = sub_4FF4(&qword_55AC8, &qword_3E440);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v43 - v5;
  v7 = sub_4FF4(&qword_55AD0, &qword_3E448);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v43 - v11;
  v13 = sub_4FF4(&qword_55AD8, &unk_3E450);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = &v43 - v17;
  if (sub_4738())
  {
    v22 = 0;
LABEL_19:
    v29 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings30CornerGesturesSectionViewModel__allowFingerToSwipeFromCorner;
    LOBYTE(v47[0]) = v22;
    sub_3C874();
    (*(v14 + 32))(v1 + v29, v18, v13);
    v30 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings30CornerGesturesSectionViewModel__bottomLeftCornerGestureFeature;
    LOBYTE(v47[0]) = sub_4298();
    sub_3C874();
    v31 = *(v8 + 32);
    v31(v1 + v30, v12, v7);
    v32 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings30CornerGesturesSectionViewModel__bottomRightCornerGestureFeature;
    LOBYTE(v47[0]) = sub_44B0();
    sub_3C874();
    v31(v1 + v32, v12, v7);
    v33 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings30CornerGesturesSectionViewModel_cornerGestureEducationTypes;
    *(v1 + v33) = sub_4738();
    v34 = (v1 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings30CornerGesturesSectionViewModel_referrer);
    v35 = sub_3D5B4();
    *v34 = 0;
    v34[1] = 0;
    v36 = *(*(v35 - 8) + 56);
    v36(v6, 1, 1, v35);
    sub_3D594();

    v37 = sub_3D584();
    v38 = swift_allocObject();
    v38[2] = v37;
    v38[3] = &protocol witness table for MainActor;
    v38[4] = v1;
    sub_1E9E0(0, 0, v6, &unk_3E468, v38);

    v36(v6, 1, 1, v35);

    v39 = sub_3D584();
    v40 = swift_allocObject();
    v40[2] = v39;
    v40[3] = &protocol witness table for MainActor;
    v40[4] = v1;
    sub_1E9E0(0, 0, v6, &unk_3E478, v40);

    v36(v6, 1, 1, v35);

    v41 = sub_3D584();
    v42 = swift_allocObject();
    v42[2] = v41;
    v42[3] = &protocol witness table for MainActor;
    v42[4] = v1;
    sub_1E9E0(0, 0, v6, &unk_3E488, v42);

    return v1;
  }

  v43 = sub_488C();
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v19 = qword_572E8;
  v20 = sub_3D4C4();
  v21 = [v19 objectForKey:v20];

  if (v21)
  {
    sub_3D674();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v47[0] = v45;
  v47[1] = v46;
  if (*(&v46 + 1))
  {
    sub_5628();
    if (swift_dynamicCast())
    {
      v23 = v44;
      v24 = [v44 integerValue];

      v25 = v24 | v43;
      if (!(v24 | v43))
      {
        goto LABEL_18;
      }

LABEL_17:
      v22 = v25 & 1;
      goto LABEL_19;
    }
  }

  else
  {
    sub_526C(v47);
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v27 = result;
    quickNoteCapability = MobileGestalt_get_quickNoteCapability();

    if (quickNoteCapability)
    {
      v25 = 3;
    }

    else
    {
      v25 = v43;
      if (!v43)
      {
LABEL_18:
        v22 = 1;
        goto LABEL_19;
      }
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_206C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = *(*(sub_4FF4(&qword_55B28, &unk_3EB60) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_4FF4(&qword_55B30, &unk_3E4C0);
  v4[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_4FF4(&qword_55B38, &unk_3EB70);
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_4FF4(&qword_55B40, &unk_3E4D0);
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = sub_4FF4(&qword_55B48, &unk_3EB80);
  v4[15] = v14;
  v15 = *(v14 - 8);
  v4[16] = v15;
  v16 = *(v15 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = sub_3D594();
  v4[19] = sub_3D584();
  v18 = sub_3D564();
  v4[20] = v18;
  v4[21] = v17;

  return _swift_task_switch(sub_22B4, v18, v17);
}

uint64_t sub_22B4()
{
  v1 = v0[14];
  v15 = v0[13];
  v16 = v0[17];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v14 = v0[6];
  swift_beginAccess();
  sub_4FF4(&qword_55AD8, &unk_3E450);
  sub_3C884();
  swift_endAccess();
  sub_56BC(&qword_55B50, &qword_55B38, &unk_3EB70);
  sub_3C8C4();
  (*(v4 + 8))(v3, v5);
  sub_56BC(&qword_55B58, &qword_55B30, &unk_3E4C0);
  sub_3D7F4();
  sub_3D794();
  sub_3D5E4();
  sub_3D7A4();
  (*(v15 + 8))(v1, v2);
  sub_3D7E4();
  v0[22] = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings30CornerGesturesSectionViewModel_referrer;
  v9 = v0[18];
  v10 = sub_3D584();
  v0[23] = v10;
  v11 = swift_task_alloc();
  v0[24] = v11;
  *v11 = v0;
  v11[1] = sub_2518;
  v12 = v0[17];

  return sub_1C864(v10, &protocol witness table for MainActor);
}

uint64_t sub_2518(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v9 = *v2;
  *(*v2 + 200) = a1;

  if (!v1)
  {
    v6 = v3[23];

    v7 = v3[20];
    v8 = v3[21];

    return _swift_task_switch(sub_2630, v7, v8);
  }

  return result;
}

uint64_t sub_2630()
{
  v1 = *(v0 + 200);
  if (v1 == 2)
  {
    v2 = *(v0 + 152);
    v3 = *(v0 + 112);
    v4 = *(v0 + 88);
    v5 = *(v0 + 64);
    v6 = *(v0 + 48);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    sub_49BC();
    if (qword_559A0 != -1)
    {
      swift_once();
    }

    v9 = (*(v0 + 40) + *(v0 + 176));
    v11 = *v9;
    v10 = v9[1];

    sub_1BCA0(5u, v1 & 1, v11, v10);

    v12 = *(v0 + 144);
    v13 = sub_3D584();
    *(v0 + 184) = v13;
    v14 = swift_task_alloc();
    *(v0 + 192) = v14;
    *v14 = v0;
    v14[1] = sub_2518;
    v15 = *(v0 + 136);

    return (sub_1C864)(v13, &protocol witness table for MainActor);
  }
}

uint64_t sub_2814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = *(*(sub_4FF4(&qword_55AF0, &qword_3E490) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_4FF4(&qword_55AF8, &qword_3E498);
  v4[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_4FF4(&qword_55B00, &qword_3E4A0);
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_4FF4(&qword_55B08, &qword_3E4A8);
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = sub_4FF4(&qword_55B10, &unk_3E4B0);
  v4[15] = v14;
  v15 = *(v14 - 8);
  v4[16] = v15;
  v16 = *(v15 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = sub_3D594();
  v4[19] = sub_3D584();
  v18 = sub_3D564();
  v4[20] = v18;
  v4[21] = v17;

  return _swift_task_switch(sub_2A5C, v18, v17);
}

uint64_t sub_2A5C()
{
  v1 = v0[14];
  v15 = v0[13];
  v16 = v0[17];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v14 = v0[6];
  swift_beginAccess();
  sub_4FF4(&qword_55AD0, &qword_3E448);
  sub_3C884();
  swift_endAccess();
  sub_56BC(&qword_55B18, &qword_55B00, &qword_3E4A0);
  sub_3C8C4();
  (*(v4 + 8))(v3, v5);
  sub_56BC(&qword_55B20, &qword_55AF8, &qword_3E498);
  sub_3D7F4();
  sub_3D794();
  sub_3D5E4();
  sub_3D7A4();
  (*(v15 + 8))(v1, v2);
  sub_3D7E4();
  v0[22] = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings30CornerGesturesSectionViewModel_referrer;
  v9 = v0[18];
  v10 = sub_3D584();
  v0[23] = v10;
  v11 = swift_task_alloc();
  v0[24] = v11;
  *v11 = v0;
  v11[1] = sub_2CC0;
  v12 = v0[17];

  return sub_1CF94(v10, &protocol witness table for MainActor);
}

uint64_t sub_2CC0(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v9 = *v2;
  *(*v2 + 200) = a1;

  if (!v1)
  {
    v6 = v3[23];

    v7 = v3[20];
    v8 = v3[21];

    return _swift_task_switch(sub_2DD8, v7, v8);
  }

  return result;
}

uint64_t sub_2DD8()
{
  v1 = *(v0 + 200);
  if (v1 == 3)
  {
    v2 = *(v0 + 152);
    v3 = *(v0 + 112);
    v4 = *(v0 + 88);
    v5 = *(v0 + 64);
    v6 = *(v0 + 48);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    if (*(v0 + 200))
    {
      if (qword_559A8 != -1)
      {
        swift_once();
      }

      v9 = qword_572E8;
      isa = sub_3D5F4().super.super.isa;
      v11 = sub_3D4C4();
      [v9 setValue:isa forKey:v11];
    }

    else
    {
      if (qword_559A8 != -1)
      {
        swift_once();
      }

      v12 = qword_572E8;
      v11 = sub_3D4C4();
      [v12 removeObjectForKey:v11];
    }

    v13 = *(v0 + 200);

    sub_4C60(v13, 1);
    if (qword_559A0 != -1)
    {
      swift_once();
    }

    v14 = (*(v0 + 40) + *(v0 + 176));
    v15 = *v14;
    v16 = v14[1];

    sub_1BCA0(6u, v1 != 0, v15, v16);

    v17 = *(v0 + 144);
    v18 = sub_3D584();
    *(v0 + 184) = v18;
    v19 = swift_task_alloc();
    *(v0 + 192) = v19;
    *v19 = v0;
    v19[1] = sub_2CC0;
    v20 = *(v0 + 136);

    return (sub_1CF94)(v18, &protocol witness table for MainActor);
  }
}

uint64_t sub_30C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = *(*(sub_4FF4(&qword_55AF0, &qword_3E490) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_4FF4(&qword_55AF8, &qword_3E498);
  v4[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_4FF4(&qword_55B00, &qword_3E4A0);
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_4FF4(&qword_55B08, &qword_3E4A8);
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = sub_4FF4(&qword_55B10, &unk_3E4B0);
  v4[15] = v14;
  v15 = *(v14 - 8);
  v4[16] = v15;
  v16 = *(v15 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = sub_3D594();
  v4[19] = sub_3D584();
  v18 = sub_3D564();
  v4[20] = v18;
  v4[21] = v17;

  return _swift_task_switch(sub_3310, v18, v17);
}

uint64_t sub_3310()
{
  v1 = v0[14];
  v15 = v0[13];
  v16 = v0[17];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v14 = v0[6];
  swift_beginAccess();
  sub_4FF4(&qword_55AD0, &qword_3E448);
  sub_3C884();
  swift_endAccess();
  sub_56BC(&qword_55B18, &qword_55B00, &qword_3E4A0);
  sub_3C8C4();
  (*(v4 + 8))(v3, v5);
  sub_56BC(&qword_55B20, &qword_55AF8, &qword_3E498);
  sub_3D7F4();
  sub_3D794();
  sub_3D5E4();
  sub_3D7A4();
  (*(v15 + 8))(v1, v2);
  sub_3D7E4();
  v0[22] = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings30CornerGesturesSectionViewModel_referrer;
  v9 = v0[18];
  v10 = sub_3D584();
  v0[23] = v10;
  v11 = swift_task_alloc();
  v0[24] = v11;
  *v11 = v0;
  v11[1] = sub_3574;
  v12 = v0[17];

  return sub_1CF94(v10, &protocol witness table for MainActor);
}

uint64_t sub_3574(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v9 = *v2;
  *(*v2 + 200) = a1;

  if (!v1)
  {
    v6 = v3[23];

    v7 = v3[20];
    v8 = v3[21];

    return _swift_task_switch(sub_368C, v7, v8);
  }

  return result;
}

uint64_t sub_368C()
{
  v1 = *(v0 + 200);
  if (v1 == 3)
  {
    v2 = *(v0 + 152);
    v3 = *(v0 + 112);
    v4 = *(v0 + 88);
    v5 = *(v0 + 64);
    v6 = *(v0 + 48);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    if (*(v0 + 200))
    {
      if (qword_559A8 != -1)
      {
        swift_once();
      }

      v9 = qword_572E8;
      isa = sub_3D5F4().super.super.isa;
      v11 = sub_3D4C4();
      [v9 setValue:isa forKey:v11];
    }

    else
    {
      if (qword_559A8 != -1)
      {
        swift_once();
      }

      v12 = qword_572E8;
      v11 = sub_3D4C4();
      [v12 removeObjectForKey:v11];
    }

    v13 = *(v0 + 200);

    sub_4C60(v13, 0);
    if (qword_559A0 != -1)
    {
      swift_once();
    }

    v14 = (*(v0 + 40) + *(v0 + 176));
    v15 = *v14;
    v16 = v14[1];

    sub_1BCA0(7u, v1 != 0, v15, v16);

    v17 = *(v0 + 144);
    v18 = sub_3D584();
    *(v0 + 184) = v18;
    v19 = swift_task_alloc();
    *(v0 + 192) = v19;
    *v19 = v0;
    v19[1] = sub_3574;
    v20 = *(v0 + 136);

    return sub_1CF94(v18, &protocol witness table for MainActor);
  }
}

uint64_t sub_397C()
{
  v1 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings30CornerGesturesSectionViewModel__allowFingerToSwipeFromCorner;
  v2 = sub_4FF4(&qword_55AD8, &unk_3E450);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings30CornerGesturesSectionViewModel__bottomLeftCornerGestureFeature;
  v4 = sub_4FF4(&qword_55AD0, &qword_3E448);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings30CornerGesturesSectionViewModel__bottomRightCornerGestureFeature, v4);
  v6 = *(v0 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings30CornerGesturesSectionViewModel_referrer + 8);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v7, v8);
}

uint64_t sub_3AB4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_3C864();
  *a1 = result;
  return result;
}

uint64_t variable initialization expression of MultitaskingAndGesturesSettings.viewModel()
{
  v0 = type metadata accessor for MultitaskingAndGesturesSettingsListViewModel();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 10;
  sub_3C814();
  return v3;
}

uint64_t sub_3B58(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (sub_3C18C(2, 26, 0, 0))
  {
    sub_3CE34();

    return sub_3CAA4();
  }

  else
  {
    sub_3CB04();
    swift_getWitnessTable();
    sub_3CDF4();
    sub_3CAA4();
    sub_3D654();
    swift_getWitnessTable();
    sub_3CB04();
    swift_getWitnessTable();
    sub_3CDF4();
    return sub_3CAA4();
  }
}

uint64_t sub_3CBC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (sub_3C18C(2, 26, 0, 0))
  {
    sub_3CE34();
    sub_3CAA4();
  }

  else
  {
    sub_3CB04();
    swift_getWitnessTable();
    sub_3CDF4();
    sub_3CAA4();
    sub_3D654();
    swift_getWitnessTable();
    sub_3CB04();
    swift_getWitnessTable();
    sub_3CDF4();
    sub_3CAA4();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_3EBC()
{
  v1 = *v0;
  sub_3D4F4();
  v2 = sub_3D544();

  return v2;
}

uint64_t sub_3EF8()
{
  v1 = *v0;
  sub_3D4F4();
  sub_3D524();
}

Swift::Int sub_3F4C()
{
  v1 = *v0;
  sub_3D4F4();
  sub_3D844();
  sub_3D524();
  v2 = sub_3D864();

  return v2;
}

uint64_t sub_3FC8(uint64_t a1, id *a2)
{
  result = sub_3D4D4();
  *a2 = 0;
  return result;
}

uint64_t sub_4040(uint64_t a1, id *a2)
{
  v3 = sub_3D4E4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_40C0@<X0>(void *a1@<X8>)
{
  sub_3D4F4();
  v2 = sub_3D4C4();

  *a1 = v2;
  return result;
}

uint64_t sub_4104(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_3D4F4();
  v6 = v5;
  if (v4 == sub_3D4F4() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_3D804();
  }

  return v9 & 1;
}

uint64_t sub_418C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_3D4C4();

  *a2 = v5;
  return result;
}

uint64_t sub_41D4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_3D4F4();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_4200(uint64_t a1)
{
  v2 = sub_57E4(&qword_55B80);
  v3 = sub_57E4(&qword_55B88);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_4298()
{
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v0 = qword_572E8;
  v1 = sub_3D4C4();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_3D674();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {
    goto LABEL_19;
  }

  sub_5628();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 1;
  }

  if (![v7 integerValue])
  {

    return 0;
  }

  v3 = sub_3D4C4();
  v4 = [v0 objectForKey:v3];

  if (v4)
  {
    sub_3D674();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {

LABEL_19:
    sub_526C(&v10);
    return 1;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    return 1;
  }

  v6 = [v7 integerValue];

  if (v6 + 1 >= 3)
  {
    return 1;
  }

  else
  {
    return (v6 + 1);
  }
}

id sub_44B0()
{
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v0 = qword_572E8;
  v1 = sub_3D4C4();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_3D674();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;
  if (!*(&v14 + 1))
  {
    sub_526C(&v15);
    goto LABEL_12;
  }

  sub_5628();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v6 = result;
      quickNoteCapability = MobileGestalt_get_quickNoteCapability();

      v8 = quickNoteCapability == 0;
      goto LABEL_14;
    }

    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  if (![v12 integerValue])
  {
LABEL_23:

    return 0;
  }

  v3 = sub_3D4C4();
  v4 = [v0 objectForKey:v3];

  if (v4)
  {
    sub_3D674();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;
  if (*(&v14 + 1))
  {
    if (swift_dynamicCast())
    {
      v9 = [v12 integerValue];

      if (v9 == &dword_0 + 1)
      {

        return &dword_0 + 2;
      }

      if (!v9)
      {

        return &dword_0 + 1;
      }

      if (v9 == -1)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    sub_526C(&v15);
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    goto LABEL_30;
  }

  v10 = result;
  v11 = MobileGestalt_get_quickNoteCapability();

  v8 = v11 == 0;
LABEL_14:
  if (v8)
  {
    return 0;
  }

  else
  {
    return &dword_0 + 2;
  }
}

id sub_4738()
{
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v0 = qword_572E8;
  v1 = sub_3D4C4();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_3D674();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    sub_5628();
    if (swift_dynamicCast())
    {
      v3 = [v7 integerValue];

      return v3;
    }
  }

  else
  {
    sub_526C(v10);
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v5 = result;
    quickNoteCapability = MobileGestalt_get_quickNoteCapability();

    return quickNoteCapability;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_488C()
{
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v0 = qword_572E8;
  v1 = sub_3D4C4();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_3D674();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_5628();
    if (swift_dynamicCast())
    {
      v3 = [v5 integerValue];

      return v3;
    }
  }

  else
  {
    sub_526C(v8);
  }

  return 2;
}

void sub_49BC()
{
  sub_488C();
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v0 = qword_572E8;
  v1 = sub_3D4C4();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_3D674();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    sub_5628();
    if (swift_dynamicCast())
    {
      [v11 integerValue];

LABEL_12:
      isa = sub_3D5F4().super.super.isa;
      v6 = sub_3D4C4();
      [v0 setValue:isa forKey:v6];

      v7 = sub_3D5F4().super.super.isa;
      v8 = sub_3D4C4();
      [v0 setValue:v7 forKey:v8];

      sub_4738();
      v9 = sub_3D5F4().super.super.isa;
      v10 = sub_3D4C4();
      [v0 setValue:v9 forKey:v10];

      return;
    }
  }

  else
  {
    sub_526C(v14);
  }

  v3 = MobileGestalt_get_current_device();
  if (v3)
  {
    v4 = v3;
    MobileGestalt_get_quickNoteCapability();

    goto LABEL_12;
  }

  __break(1u);
}

void sub_4C60(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_488C();
    if (sub_4738())
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v2 = qword_572E8;
  v3 = sub_3D4C4();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    sub_3D674();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18 = v16;
  v19 = v17;
  if (*(&v17 + 1))
  {
    sub_5628();
    if (swift_dynamicCast())
    {
      [v15 integerValue];

      goto LABEL_15;
    }
  }

  else
  {
    sub_526C(&v18);
  }

  v5 = MobileGestalt_get_current_device();
  if (!v5)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = v5;
  MobileGestalt_get_quickNoteCapability();

LABEL_15:
  if ((sub_4738() & 1) == 0)
  {
LABEL_16:
    sub_488C();
    if (qword_559A8 != -1)
    {
      swift_once();
    }

    v7 = qword_572E8;
    v8 = sub_3D4C4();
    v9 = [v7 objectForKey:v8];

    if (v9)
    {
      sub_3D674();
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
    }

    v18 = v16;
    v19 = v17;
    if (*(&v17 + 1))
    {
      sub_5628();
      if (swift_dynamicCast())
      {
        [v15 integerValue];

        goto LABEL_27;
      }
    }

    else
    {
      sub_526C(&v18);
    }

    v10 = MobileGestalt_get_current_device();
    if (v10)
    {
      v11 = v10;
      MobileGestalt_get_quickNoteCapability();

      goto LABEL_27;
    }

LABEL_31:
    __break(1u);
    return;
  }

LABEL_27:
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v12 = qword_572E8;
  isa = sub_3D5F4().super.super.isa;
  v14 = sub_3D4C4();

  [v12 setValue:isa forKey:v14];
}

uint64_t sub_4FF4(uint64_t *a1, uint64_t *a2)
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

uint64_t type metadata accessor for CornerGesturesSectionViewModel()
{
  result = qword_55A00;
  if (!qword_55A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_5090()
{
  sub_572C(319, &qword_55A10, &type metadata for Bool, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_572C(319, &unk_55A18, &type metadata for CornerGestureAction, &type metadata accessor for Published);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

__n128 sub_51B8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_51C8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_51E8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_526C(uint64_t a1)
{
  v2 = sub_4FF4(&qword_55AE0, &qword_3E940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_52D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_587C;

  return sub_206C(a1, v4, v5, v6);
}

uint64_t sub_538C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_5440;

  return sub_2814(a1, v4, v5, v6);
}

uint64_t sub_5440()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_5534()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_5574(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_587C;

  return sub_30C8(a1, v4, v5, v6);
}

unint64_t sub_5628()
{
  result = qword_55AE8;
  if (!qword_55AE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_55AE8);
  }

  return result;
}

uint64_t sub_5674(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_56BC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_5674(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_572C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_57E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CornerGestureAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CornerGestureAction(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_59F0()
{
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v0 = qword_572B8;
  return sub_3CF84();
}

void *sub_5B14@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  if ((*result + 1) < 3)
  {
    v2 = *result + 1;
  }

  else
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_5B44()
{
  result = qword_55B90;
  if (!qword_55B90)
  {
    sub_5674(&qword_55B98, &qword_41840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55B90);
  }

  return result;
}

Swift::Int sub_5BB4()
{
  v1 = *v0;
  sub_3D844();
  sub_3D854(v1 - 1);
  return sub_3D864();
}

Swift::Int sub_5C2C()
{
  v1 = *v0;
  sub_3D844();
  sub_3D854(v1 - 1);
  return sub_3D864();
}

void sub_5C70(void *a1@<X8>)
{
  v2 = MobileGestalt_get_current_device();
  if (v2)
  {
    v3 = v2;
    quickNoteCapability = MobileGestalt_get_quickNoteCapability();

    v5 = &off_51CC0;
    if (quickNoteCapability)
    {
      v5 = &off_51C98;
    }

    *a1 = v5;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_5CDC()
{
  result = qword_55BA0;
  if (!qword_55BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55BA0);
  }

  return result;
}

unint64_t sub_5D34()
{
  result = qword_55BA8;
  if (!qword_55BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55BA8);
  }

  return result;
}

uint64_t sub_5D88()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  return v1;
}

uint64_t sub_5DFC()
{
  v1 = v0;
  v2 = sub_4FF4(&qword_55AC8, &qword_3E440);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v20[-v5];
  v7 = sub_4FF4(&qword_55AD8, &unk_3E450);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v20[-v11];
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v13 = qword_572E8;
  *(v1 + 16) = sub_3C8D4();
  *(v1 + 24) = sub_3C8D4();
  v14 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings36ProductivityGesturesSectionViewModel__productivityGesturesEnabled;
  v20[15] = sub_6AC0() & 1;
  sub_3C874();
  (*(v8 + 32))(v1 + v14, v12, v7);
  v15 = (v1 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings36ProductivityGesturesSectionViewModel_referrer);
  v16 = sub_3D5B4();
  *v15 = 0;
  v15[1] = 0;
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  sub_3D594();

  v17 = sub_3D584();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v1;
  sub_1E9E0(0, 0, v6, &unk_3E930, v18);

  return v1;
}

uint64_t sub_60A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = *(*(sub_4FF4(&qword_55B28, &unk_3EB60) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_4FF4(&qword_55B30, &unk_3E4C0);
  v4[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_4FF4(&qword_55B38, &unk_3EB70);
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_4FF4(&qword_55B40, &unk_3E4D0);
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = sub_4FF4(&qword_55B48, &unk_3EB80);
  v4[15] = v14;
  v15 = *(v14 - 8);
  v4[16] = v15;
  v16 = *(v15 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = sub_3D594();
  v4[19] = sub_3D584();
  v18 = sub_3D564();
  v4[20] = v18;
  v4[21] = v17;

  return _swift_task_switch(sub_62E8, v18, v17);
}

uint64_t sub_62E8()
{
  v1 = v0[14];
  v15 = v0[13];
  v16 = v0[17];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v14 = v0[6];
  swift_beginAccess();
  sub_4FF4(&qword_55AD8, &unk_3E450);
  sub_3C884();
  swift_endAccess();
  sub_56BC(&qword_55B50, &qword_55B38, &unk_3EB70);
  sub_3C8C4();
  (*(v4 + 8))(v3, v5);
  sub_56BC(&qword_55B58, &qword_55B30, &unk_3E4C0);
  sub_3D7F4();
  sub_3D794();
  sub_3D5E4();
  sub_3D7A4();
  (*(v15 + 8))(v1, v2);
  sub_3D7E4();
  v0[22] = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings36ProductivityGesturesSectionViewModel_referrer;
  v9 = v0[18];
  v10 = sub_3D584();
  v0[23] = v10;
  v11 = swift_task_alloc();
  v0[24] = v11;
  *v11 = v0;
  v11[1] = sub_654C;
  v12 = v0[17];

  return sub_1C864(v10, &protocol witness table for MainActor);
}

uint64_t sub_654C(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v9 = *v2;
  *(*v2 + 202) = a1;

  if (!v1)
  {
    v6 = v3[23];

    v7 = v3[20];
    v8 = v3[21];

    return _swift_task_switch(sub_6664, v7, v8);
  }

  return result;
}

uint64_t sub_6664()
{
  v1 = *(v0 + 202);
  if (v1 == 2)
  {
    v2 = *(v0 + 152);
    v3 = *(v0 + 112);
    v4 = *(v0 + 88);
    v5 = *(v0 + 64);
    v6 = *(v0 + 48);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 40);
    v10 = *(v9 + 16);
    v11 = v1 & 1;
    *(v0 + 200) = v1 & 1;

    sub_3C8F4();

    v12 = *(v9 + 24);
    *(v0 + 201) = 0;

    sub_3C8F4();

    if (qword_559A0 != -1)
    {
      swift_once();
    }

    v13 = (*(v0 + 40) + *(v0 + 176));
    v14 = *v13;
    v15 = v13[1];

    sub_1BCA0(3u, v11, v14, v15);

    v16 = *(v0 + 144);
    v17 = sub_3D584();
    *(v0 + 184) = v17;
    v18 = swift_task_alloc();
    *(v0 + 192) = v18;
    *v18 = v0;
    v18[1] = sub_654C;
    v19 = *(v0 + 136);

    return sub_1C864(v17, &protocol witness table for MainActor);
  }
}

uint64_t sub_68A8()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings36ProductivityGesturesSectionViewModel__productivityGesturesEnabled;
  v4 = sub_4FF4(&qword_55AD8, &unk_3E450);
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *&v0[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings36ProductivityGesturesSectionViewModel_referrer + 8];

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v6, v7);
}

uint64_t type metadata accessor for ProductivityGesturesSectionViewModel()
{
  result = qword_55BE0;
  if (!qword_55BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_69C8()
{
  sub_6A70();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_6A70()
{
  if (!qword_55A10)
  {
    v0 = sub_3C8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_55A10);
    }
  }
}

uint64_t sub_6AC0()
{
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v0 = qword_572E8;
  v1 = sub_3D4C4();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    sub_3D674();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (*(&v10 + 1))
  {
    if (swift_dynamicCast())
    {
      v3 = v8;
      goto LABEL_11;
    }
  }

  else
  {
    sub_526C(&v11);
  }

  v3 = 1;
LABEL_11:
  v4 = sub_3D4C4();
  v5 = [v0 valueForKey:v4];

  if (v5)
  {
    sub_3D674();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_526C(&v11);
LABEL_19:
    v6 = 0;
    result = 0;
    if (!v3)
    {
      return result;
    }

    return v6 ^ 1u;
  }

  if (!swift_dynamicCast())
  {
    goto LABEL_19;
  }

  if (v3)
  {
    v6 = v8;
    return v6 ^ 1u;
  }

  return 0;
}

uint64_t sub_6CA4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_6CE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_5440;

  return sub_60A0(a1, v4, v5, v6);
}

uint64_t getEnumTagSinglePayload for MultitaskingAndGesturesFeatureFlags(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MultitaskingAndGesturesFeatureFlags(_WORD *result, int a2, int a3)
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

unint64_t sub_6E8C()
{
  result = qword_55C80;
  if (!qword_55C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55C80);
  }

  return result;
}

Swift::Int sub_6EE8()
{
  sub_3D844();
  sub_3D854(0);
  return sub_3D864();
}

Swift::Int sub_6F54()
{
  sub_3D844();
  sub_3D854(0);
  return sub_3D864();
}

uint64_t sub_6FBC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  return v1;
}

uint64_t sub_706C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  return v1;
}

id sub_70E0()
{
  ObjectType = swift_getObjectType();
  v1 = sub_4FF4(&qword_55AC8, &qword_3E440);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v69 = &v59 - v4;
  v5 = sub_4FF4(&qword_55D40, &qword_3EB10);
  v65 = *(v5 - 8);
  v66 = v5;
  v6 = *(v65 + 64);
  __chkstk_darwin(v5, v7);
  v64 = &v59 - v8;
  v9 = sub_4FF4(&qword_55D48, &unk_41CF0);
  v62 = *(v9 - 8);
  v63 = v9;
  v10 = *(v62 + 64);
  __chkstk_darwin(v9, v11);
  v61 = &v59 - v12;
  v13 = sub_4FF4(&qword_55AD8, &unk_3E450);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = &v59 - v17;
  v60 = sub_4FF4(&qword_55D50, &qword_3EB18);
  v19 = *(v60 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v60, v21);
  v23 = &v59 - v22;
  v24 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings37MultitaskingWindowManagementViewModel__hideRecentApps;
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v68 = qword_572E8;
  *&v0[v24] = sub_3C8D4();
  v25 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings37MultitaskingWindowManagementViewModel__hideDock;
  *&v0[v25] = sub_3C8D4();
  v26 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings37MultitaskingWindowManagementViewModel__shouldRestorePreviousOpenWindows;
  *&v0[v26] = sub_3C8D4();
  v27 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings37MultitaskingWindowManagementViewModel__multitaskingWindowManagementStyleType;
  LOBYTE(v71) = sub_A430();
  sub_3C874();
  (*(v19 + 32))(&v0[v27], v23, v60);
  v28 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings37MultitaskingWindowManagementViewModel__shouldCloseAllWindowsAfterSwipingHomeInWindowedApps;
  LOBYTE(v71) = sub_A5D0() & 1;
  sub_3C874();
  v29 = *(v14 + 32);
  v29(&v0[v28], v18, v13);
  v30 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings37MultitaskingWindowManagementViewModel__shouldShowRecentAppsInStageManager;
  LOBYTE(v71) = sub_A6E8() & 1;
  sub_3C874();
  v29(&v0[v30], v18, v13);
  v31 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings37MultitaskingWindowManagementViewModel__shouldShowDockInWindowedAppsAndStageManager;
  LOBYTE(v71) = sub_A800() & 1;
  sub_3C874();
  v29(&v0[v31], v18, v13);
  v32 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings37MultitaskingWindowManagementViewModel__orientation;
  v33 = [objc_opt_self() currentDevice];
  v34 = [v33 orientation];

  v71 = v34;
  type metadata accessor for UIDeviceOrientation(0);
  v35 = v61;
  sub_3C874();
  (*(v62 + 32))(&v0[v32], v35, v63);
  v36 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings37MultitaskingWindowManagementViewModel__displayManager;
  if (qword_55988 != -1)
  {
    swift_once();
  }

  v37 = qword_572C0;
  v71 = qword_572C0;
  type metadata accessor for MultiTaskingDisplayManager();
  v38 = v37;
  v39 = v64;
  sub_3C874();
  (*(v65 + 32))(&v0[v36], v39, v66);
  v70.receiver = v0;
  v70.super_class = ObjectType;
  v40 = objc_msgSendSuper2(&v70, "init");
  v41 = sub_3D5B4();
  v42 = *(*(v41 - 8) + 56);
  v43 = v69;
  v42(v69, 1, 1, v41);
  sub_3D594();
  v44 = v40;
  v45 = sub_3D584();
  v46 = swift_allocObject();
  v46[2] = v45;
  v46[3] = &protocol witness table for MainActor;
  v46[4] = v44;
  sub_1E9E0(0, 0, v43, &unk_3EB28, v46);

  v42(v43, 1, 1, v41);
  v47 = v44;
  v48 = sub_3D584();
  v49 = swift_allocObject();
  v49[2] = v48;
  v49[3] = &protocol witness table for MainActor;
  v49[4] = v47;
  sub_1E9E0(0, 0, v43, &unk_3EB38, v49);

  v42(v43, 1, 1, v41);
  v50 = v47;
  v51 = sub_3D584();
  v52 = swift_allocObject();
  v52[2] = v51;
  v52[3] = &protocol witness table for MainActor;
  v52[4] = v50;
  sub_1E9E0(0, 0, v43, &unk_3EB48, v52);

  v42(v43, 1, 1, v41);
  v53 = sub_3D584();
  v54 = swift_allocObject();
  v54[2] = v53;
  v54[3] = &protocol witness table for MainActor;
  v54[4] = v50;
  sub_1E9E0(0, 0, v43, &unk_3EB58, v54);

  v55 = sub_3D4C4();
  v56 = v68;
  [v68 addObserver:v50 forKeyPath:v55 options:3 context:0];

  v57 = sub_3D4C4();
  [v56 addObserver:v50 forKeyPath:v57 options:3 context:0];

  return v50;
}

uint64_t sub_7914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = *(*(sub_4FF4(&qword_55D58, &qword_407E0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_4FF4(&qword_55D60, &qword_3EB90);
  v4[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_4FF4(&qword_55D68, &qword_3EB98);
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_4FF4(&qword_55D70, &qword_3EBA0);
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = sub_4FF4(&qword_55D78, &qword_3EBA8);
  v4[15] = v14;
  v15 = *(v14 - 8);
  v4[16] = v15;
  v16 = *(v15 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = sub_3D594();
  v4[19] = sub_3D584();
  v18 = sub_3D564();
  v4[20] = v18;
  v4[21] = v17;

  return _swift_task_switch(sub_7B5C, v18, v17);
}

uint64_t sub_7B5C()
{
  v1 = *(v0 + 112);
  v16 = *(v0 + 104);
  v17 = *(v0 + 136);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 64);
  v7 = *(v0 + 40);
  v14 = *(v0 + 56);
  v15 = *(v0 + 48);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  v8 = *(v0 + 192);
  swift_beginAccess();
  sub_4FF4(&qword_55D50, &qword_3EB18);
  sub_3C884();
  swift_endAccess();
  sub_56BC(&qword_55D80, &qword_55D68, &qword_3EB98);
  sub_3C8C4();
  (*(v4 + 8))(v3, v5);
  sub_56BC(&qword_55D88, &qword_55D60, &qword_3EB90);
  sub_3D7F4();
  sub_3D794();
  sub_3D5E4();
  sub_3D7A4();
  (*(v16 + 8))(v1, v2);
  sub_3D7E4();
  *(v0 + 193) = v8;
  v9 = *(v0 + 144);
  v10 = sub_3D584();
  *(v0 + 176) = v10;
  v11 = swift_task_alloc();
  *(v0 + 184) = v11;
  *v11 = v0;
  v11[1] = sub_7E04;
  v12 = *(v0 + 136);

  return sub_1D59C(v10, &protocol witness table for MainActor);
}

uint64_t sub_7E04(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 184);
  v9 = *v2;
  *(*v2 + 194) = a1;

  if (!v1)
  {
    v6 = v3[22];

    v7 = v3[20];
    v8 = v3[21];

    return _swift_task_switch(sub_7F1C, v7, v8);
  }

  return result;
}

uint64_t sub_7F1C()
{
  if (*(v0 + 194) <= 1u)
  {
    if (*(v0 + 194))
    {
      v1 = 0x6465776F646E6977;
    }

    else
    {
      v1 = 0x657263536C6C7566;
    }

    if (*(v0 + 194))
    {
      v2 = 0xEC00000073707041;
    }

    else
    {
      v2 = 0xEE00737070416E65;
    }

LABEL_10:
    v3 = 0x6465776F646E6977;
    v4 = 0xEC00000073707041;
    if (*(v0 + 193) != 1)
    {
      v3 = 0x6E614D6567617473;
      v4 = 0xEC00000072656761;
    }

    if (*(v0 + 193))
    {
      v5 = v3;
    }

    else
    {
      v5 = 0x657263536C6C7566;
    }

    if (*(v0 + 193))
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xEE00737070416E65;
    }

    if (v1 == v5 && v2 == v6)
    {

LABEL_52:
      v31 = *(v0 + 144);
      v32 = sub_3D584();
      *(v0 + 176) = v32;
      v33 = swift_task_alloc();
      *(v0 + 184) = v33;
      *v33 = v0;
      v33[1] = sub_7E04;
      v34 = *(v0 + 136);

      return sub_1D59C(v32, &protocol witness table for MainActor);
    }

    v7 = sub_3D804();

    if (v7)
    {
      goto LABEL_52;
    }

    if (qword_559A8 != -1)
    {
      swift_once();
    }

    v8 = qword_572E8;
    if (*(v0 + 193) && *(v0 + 193) != 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = sub_3D804();
    }

    v17 = *(v0 + 194);

    v18 = sub_3D4C4();
    [v8 setBool:v16 & 1 forKey:v18];

    if (v17)
    {
      if (v17 != 1)
      {

        v24 = sub_3D4C4();
        v25 = 1;
        [v8 setBool:1 forKey:v24];

        swift_bridgeObjectRelease_n();
        goto LABEL_48;
      }

      v35 = v8;
    }

    else
    {
      v35 = v8;
    }

    v19 = *(v0 + 194);
    v20 = sub_3D804();

    v21 = sub_3D4C4();
    v8 = v35;
    [v35 setBool:v20 & 1 forKey:v21];

    v22 = sub_3D804();

    if ((v22 & 1) == 0)
    {
      if (v19)
      {
        v23 = 1;
      }

      else
      {
        v23 = sub_3D804();
      }

      v26 = sub_3D4C4();
      [v35 setBool:v23 & 1 forKey:v26];
    }

    v27 = *(v0 + 194);
    v28 = sub_3D804();

    if (v28)
    {
      *(v0 + 194);
    }

    else if (v19)
    {
    }

    else
    {
      v29 = sub_3D804();

      if ((v29 & 1) == 0)
      {
LABEL_49:
        if (qword_559A0 != -1)
        {
          swift_once();
        }

        sub_1C308(*(v0 + 193), *(v0 + 194));
        *(v0 + 193) = *(v0 + 194);
        goto LABEL_52;
      }
    }

    v25 = sub_3D804();
LABEL_48:

    v30 = sub_3D4C4();
    [v8 setBool:v25 & 1 forKey:v30];

    goto LABEL_49;
  }

  if (*(v0 + 194) == 2)
  {
    v1 = 0x6E614D6567617473;
    v2 = 0xEC00000072656761;
    goto LABEL_10;
  }

  v9 = *(v0 + 152);
  v10 = *(v0 + 112);
  v11 = *(v0 + 88);
  v12 = *(v0 + 64);
  v13 = *(v0 + 48);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_85EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = *(*(sub_4FF4(&qword_55B28, &unk_3EB60) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_4FF4(&qword_55B30, &unk_3E4C0);
  v4[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_4FF4(&qword_55B38, &unk_3EB70);
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_4FF4(&qword_55B40, &unk_3E4D0);
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = sub_4FF4(&qword_55B48, &unk_3EB80);
  v4[15] = v14;
  v15 = *(v14 - 8);
  v4[16] = v15;
  v16 = *(v15 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = sub_3D594();
  v4[19] = sub_3D584();
  v18 = sub_3D564();
  v4[20] = v18;
  v4[21] = v17;

  return _swift_task_switch(sub_8834, v18, v17);
}

uint64_t sub_8834()
{
  v1 = v0[14];
  v15 = v0[13];
  v16 = v0[17];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v14 = v0[6];
  swift_beginAccess();
  sub_4FF4(&qword_55AD8, &unk_3E450);
  sub_3C884();
  swift_endAccess();
  sub_56BC(&qword_55B50, &qword_55B38, &unk_3EB70);
  sub_3C8C4();
  (*(v4 + 8))(v3, v5);
  sub_56BC(&qword_55B58, &qword_55B30, &unk_3E4C0);
  sub_3D7F4();
  sub_3D794();
  sub_3D5E4();
  sub_3D7A4();
  (*(v15 + 8))(v1, v2);
  sub_3D7E4();
  v0[22] = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings37MultitaskingWindowManagementViewModel__shouldRestorePreviousOpenWindows;
  v9 = v0[18];
  v10 = sub_3D584();
  v0[23] = v10;
  v11 = swift_task_alloc();
  v0[24] = v11;
  *v11 = v0;
  v11[1] = sub_8A98;
  v12 = v0[17];

  return sub_1C864(v10, &protocol witness table for MainActor);
}

uint64_t sub_8A98(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v9 = *v2;
  *(*v2 + 201) = a1;

  if (!v1)
  {
    v6 = v3[23];

    v7 = v3[20];
    v8 = v3[21];

    return _swift_task_switch(sub_8BB0, v7, v8);
  }

  return result;
}

uint64_t sub_8BB0()
{
  v1 = *(v0 + 201);
  if (v1 == 2)
  {
    v2 = *(v0 + 152);
    v3 = *(v0 + 112);
    v4 = *(v0 + 88);
    v5 = *(v0 + 64);
    v6 = *(v0 + 48);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(*(v0 + 40) + *(v0 + 176));
    *(v0 + 200) = (v1 & 1) == 0;

    sub_3C8F4();

    v10 = *(v0 + 144);
    v11 = sub_3D584();
    *(v0 + 184) = v11;
    v12 = swift_task_alloc();
    *(v0 + 192) = v12;
    *v12 = v0;
    v12[1] = sub_8A98;
    v13 = *(v0 + 136);

    return sub_1C864(v11, &protocol witness table for MainActor);
  }
}

uint64_t sub_8D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = *(*(sub_4FF4(&qword_55B28, &unk_3EB60) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_4FF4(&qword_55B30, &unk_3E4C0);
  v4[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_4FF4(&qword_55B38, &unk_3EB70);
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_4FF4(&qword_55B40, &unk_3E4D0);
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = sub_4FF4(&qword_55B48, &unk_3EB80);
  v4[15] = v14;
  v15 = *(v14 - 8);
  v4[16] = v15;
  v16 = *(v15 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = sub_3D594();
  v4[19] = sub_3D584();
  v18 = sub_3D564();
  v4[20] = v18;
  v4[21] = v17;

  return _swift_task_switch(sub_8FB0, v18, v17);
}

uint64_t sub_8FB0()
{
  v1 = v0[14];
  v15 = v0[13];
  v16 = v0[17];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v14 = v0[6];
  swift_beginAccess();
  sub_4FF4(&qword_55AD8, &unk_3E450);
  sub_3C884();
  swift_endAccess();
  sub_56BC(&qword_55B50, &qword_55B38, &unk_3EB70);
  sub_3C8C4();
  (*(v4 + 8))(v3, v5);
  sub_56BC(&qword_55B58, &qword_55B30, &unk_3E4C0);
  sub_3D7F4();
  sub_3D794();
  sub_3D5E4();
  sub_3D7A4();
  (*(v15 + 8))(v1, v2);
  sub_3D7E4();
  v0[22] = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings37MultitaskingWindowManagementViewModel__hideRecentApps;
  v9 = v0[18];
  v10 = sub_3D584();
  v0[23] = v10;
  v11 = swift_task_alloc();
  v0[24] = v11;
  *v11 = v0;
  v11[1] = sub_9214;
  v12 = v0[17];

  return sub_1C864(v10, &protocol witness table for MainActor);
}

uint64_t sub_9214(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v9 = *v2;
  *(*v2 + 201) = a1;

  if (!v1)
  {
    v6 = v3[23];

    v7 = v3[20];
    v8 = v3[21];

    return _swift_task_switch(sub_932C, v7, v8);
  }

  return result;
}

uint64_t sub_932C()
{
  v1 = *(v0 + 201);
  if (v1 == 2)
  {
    v2 = *(v0 + 152);
    v3 = *(v0 + 112);
    v4 = *(v0 + 88);
    v5 = *(v0 + 64);
    v6 = *(v0 + 48);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(*(v0 + 40) + *(v0 + 176));
    *(v0 + 200) = (v1 & 1) == 0;

    sub_3C8F4();

    v10 = *(v0 + 144);
    v11 = sub_3D584();
    *(v0 + 184) = v11;
    v12 = swift_task_alloc();
    *(v0 + 192) = v12;
    *v12 = v0;
    v12[1] = sub_9214;
    v13 = *(v0 + 136);

    return sub_1C864(v11, &protocol witness table for MainActor);
  }
}

uint64_t sub_94E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = *(*(sub_4FF4(&qword_55B28, &unk_3EB60) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_4FF4(&qword_55B30, &unk_3E4C0);
  v4[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_4FF4(&qword_55B38, &unk_3EB70);
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_4FF4(&qword_55B40, &unk_3E4D0);
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = sub_4FF4(&qword_55B48, &unk_3EB80);
  v4[15] = v14;
  v15 = *(v14 - 8);
  v4[16] = v15;
  v16 = *(v15 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = sub_3D594();
  v4[19] = sub_3D584();
  v18 = sub_3D564();
  v4[20] = v18;
  v4[21] = v17;

  return _swift_task_switch(sub_972C, v18, v17);
}

uint64_t sub_972C()
{
  v1 = v0[14];
  v15 = v0[13];
  v16 = v0[17];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v14 = v0[6];
  swift_beginAccess();
  sub_4FF4(&qword_55AD8, &unk_3E450);
  sub_3C884();
  swift_endAccess();
  sub_56BC(&qword_55B50, &qword_55B38, &unk_3EB70);
  sub_3C8C4();
  (*(v4 + 8))(v3, v5);
  sub_56BC(&qword_55B58, &qword_55B30, &unk_3E4C0);
  sub_3D7F4();
  sub_3D794();
  sub_3D5E4();
  sub_3D7A4();
  (*(v15 + 8))(v1, v2);
  sub_3D7E4();
  v0[22] = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings37MultitaskingWindowManagementViewModel__hideDock;
  v9 = v0[18];
  v10 = sub_3D584();
  v0[23] = v10;
  v11 = swift_task_alloc();
  v0[24] = v11;
  *v11 = v0;
  v11[1] = sub_9990;
  v12 = v0[17];

  return sub_1C864(v10, &protocol witness table for MainActor);
}

uint64_t sub_9990(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v9 = *v2;
  *(*v2 + 201) = a1;

  if (!v1)
  {
    v6 = v3[23];

    v7 = v3[20];
    v8 = v3[21];

    return _swift_task_switch(sub_9AA8, v7, v8);
  }

  return result;
}

uint64_t sub_9AA8()
{
  v1 = *(v0 + 201);
  if (v1 == 2)
  {
    v2 = *(v0 + 152);
    v3 = *(v0 + 112);
    v4 = *(v0 + 88);
    v5 = *(v0 + 64);
    v6 = *(v0 + 48);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(*(v0 + 40) + *(v0 + 176));
    *(v0 + 200) = (v1 & 1) == 0;

    sub_3C8F4();

    v10 = *(v0 + 144);
    v11 = sub_3D584();
    *(v0 + 184) = v11;
    v12 = swift_task_alloc();
    *(v0 + 192) = v12;
    *v12 = v0;
    v12[1] = sub_9990;
    v13 = *(v0 + 136);

    return sub_1C864(v11, &protocol witness table for MainActor);
  }
}

uint64_t sub_9C84()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_A430();
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_3C8A4();
  }

  return result;
}

id sub_9E4C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MultitaskingWindowManagementViewModel()
{
  result = qword_55CF8;
  if (!qword_55CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_A0B0()
{
  sub_A260(319, &qword_55D08);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_A260(319, &qword_55A10);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_A2AC(319, &qword_55D10, type metadata accessor for UIDeviceOrientation);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_A2AC(319, &qword_55D18, type metadata accessor for MultiTaskingDisplayManager);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_A260(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_3C8B4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_A2AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3C8B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_A300@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_3C864();
  *a1 = result;
  return result;
}

uint64_t sub_A340@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  *a2 = v5;
  return result;
}

uint64_t sub_A3C0(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_3C8A4();
}

id sub_A430()
{
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v0 = qword_572E8;
  v1 = sub_3D4C4();
  v2 = [v0 BOOLForKey:v1];

  if (v2)
  {
    return &dword_0 + 2;
  }

  v4 = sub_3D4C4();
  v5 = [v0 objectForKey:v4];

  if (v5)
  {
    sub_3D674();
    swift_unknownObjectRelease();
    sub_526C(v10);
    v6 = sub_3D4C4();
    v7 = [v0 BOOLForKey:v6];

    return v7;
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    sub_526C(v10);
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v8 = result;
      deviceMemorySize = MobileGestalt_get_deviceMemorySize();

      return (vcvtd_n_f64_s64(deviceMemorySize, 0x1EuLL) >= 4.0);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_A5D0()
{
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v0 = qword_572E8;
  v1 = sub_3D4C4();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    sub_3D674();
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
    sub_526C(v8);
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
LABEL_10:
    v3 = 0;
    return v3 & 1;
  }

  v3 = v5 ^ 1;
  return v3 & 1;
}

uint64_t sub_A6E8()
{
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v0 = qword_572E8;
  v1 = sub_3D4C4();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    sub_3D674();
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
    sub_526C(v8);
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
LABEL_10:
    v3 = 1;
    return v3 & 1;
  }

  v3 = v5 ^ 1;
  return v3 & 1;
}

uint64_t sub_A800()
{
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v0 = qword_572E8;
  v1 = sub_3D4C4();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    sub_3D674();
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
    sub_526C(v8);
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
LABEL_10:
    v3 = 1;
    return v3 & 1;
  }

  v3 = v5 ^ 1;
  return v3 & 1;
}

uint64_t sub_A918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_3D3B4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3D3D4();
  v25 = *(v13 - 8);
  v14 = *(v25 + 64);
  result = __chkstk_darwin(v13, v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a3 + 24) && a2)
  {
    if (a1 == 0xD000000000000019 && 0x8000000000042A60 == a2 || (sub_3D804() & 1) != 0 || a1 == 0xD00000000000001BLL && 0x8000000000042A30 == a2 || (result = sub_3D804(), (result & 1) != 0))
    {
      sub_ACD0();
      v24 = sub_3D624();
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      *(v20 + 24) = ObjectType;
      aBlock[4] = sub_AD8C;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_BFC0;
      aBlock[3] = &unk_52560;
      v21 = _Block_copy(aBlock);

      sub_3D3C4();
      v26 = &_swiftEmptyArrayStorage;
      sub_ADAC(&qword_55D28, &type metadata accessor for DispatchWorkItemFlags);
      v23 = v13;
      sub_4FF4(&qword_55D30, &qword_3EF70);
      sub_56BC(&qword_55D38, &qword_55D30, &qword_3EF70);
      sub_3D694();
      v22 = v24;
      sub_3D634();
      _Block_release(v21);

      (*(v8 + 8))(v12, v7);
      (*(v25 + 8))(v18, v23);
    }
  }

  return result;
}

unint64_t sub_ACD0()
{
  result = qword_55D20;
  if (!qword_55D20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_55D20);
  }

  return result;
}

uint64_t sub_AD1C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_AD54()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_AD8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_9C84();
}

uint64_t sub_AD94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_ADAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_ADFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_587C;

  return sub_7914(a1, v4, v5, v6);
}

uint64_t sub_AEB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_5440;

  return sub_85EC(a1, v4, v5, v6);
}

uint64_t sub_AF68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_587C;

  return sub_8D68(a1, v4, v5, v6);
}

uint64_t sub_B01C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_B05C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_587C;

  return sub_94E4(a1, v4, v5, v6);
}

__n128 sub_B148(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_B15C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_B1A4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_B210@<X0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_4FF4(&qword_55D90, &qword_3F130);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8, v10);
  v12 = v45 - v11;
  v13 = [objc_opt_self() isPictureInPictureSupported];
  if (v13)
  {
    v49 = v8;
    v50 = a4;
    v48 = v45;
    __chkstk_darwin(v13, v14);
    v47 = &v45[-6];
    v45[-4] = a1;
    v46 = a2 & 1;
    LOBYTE(v45[-3]) = a2 & 1;
    v43 = a3;
    sub_3CCB4();
    v45[0] = a3;
    v45[1] = a1;
    if (qword_55980 != -1)
    {
      swift_once();
    }

    v15 = qword_572B8;
    LOWORD(v44) = 256;
    v43 = 0;
    v16 = sub_3CF84();
    v18 = v17;
    v20 = v19;
    sub_3CEC4();
    v21 = sub_3CF74();
    v23 = v22;
    v25 = v24;

    sub_BAF8(v16, v18, v20 & 1);

    v26 = sub_3CF64();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    sub_BAF8(v21, v23, v25 & 1);

    v33 = &v12[*(v49 + 36)];
    v34 = *(sub_4FF4(&qword_55DA0, &qword_3EDC8) + 28);
    v35 = sub_3CF54();
    (*(*(v35 - 8) + 56))(v33 + v34, 1, 1, v35);
    *v33 = swift_getKeyPath();
    *v12 = v26;
    *(v12 + 1) = v28;
    v12[16] = v30 & 1;
    *(v12 + 3) = v32;
    sub_B8B0(&v51);
    sub_4FF4(&qword_55DA8, &qword_3EE00);
    sub_4FF4(&qword_55DB0, &qword_3EE08);
    sub_BBE4();
    v36 = sub_BC9C();
    v37 = sub_BDAC();
    v43 = v36;
    v44 = v37;
    v38 = v50;
    sub_3D2C4();
    v39 = sub_4FF4(&qword_55D98, &qword_3EDC0);
    return (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
  }

  else
  {
    v41 = sub_4FF4(&qword_55D98, &qword_3EDC0);
    v42 = *(*(v41 - 8) + 56);

    return v42(a4, 1, 1, v41);
  }
}

uint64_t sub_B64C()
{
  v0 = sub_4FF4(&qword_55DD8, &qword_3EE10);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v7 - v4;
  sub_3C904();
  sub_3D224();
  sub_56BC(&qword_55DD0, &qword_55DD8, &qword_3EE10);
  sub_3D074();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_B7D0@<X0>(uint64_t a1@<X8>)
{
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v2 = qword_572B8;
  result = sub_3CF84();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

id sub_B8B0@<X0>(uint64_t a1@<X8>)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v3 = result;
    homeButtonType = MobileGestalt_get_homeButtonType();

    if (homeButtonType == 2)
    {
      sub_3CCB4();
      if (qword_55980 == -1)
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_3CCB4();
      if (qword_55980 == -1)
      {
LABEL_6:
        v5 = qword_572B8;
        sub_3CF84();
        result = sub_3CDB4();
        *a1 = v6;
        *(a1 + 16) = v7;
        *(a1 + 32) = v8;
        return result;
      }
    }

    swift_once();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_BAE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_B64C();
}

uint64_t sub_BAF8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_BB50(uint64_t a1)
{
  v2 = sub_4FF4(&qword_55DF0, &qword_3EE18);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  sub_BE28(a1, &v7 - v5);
  return sub_3CC14();
}

unint64_t sub_BBE4()
{
  result = qword_55DB8;
  if (!qword_55DB8)
  {
    sub_5674(&qword_55D90, &qword_3F130);
    sub_56BC(&qword_55DC0, &qword_55DA0, &qword_3EDC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55DB8);
  }

  return result;
}

unint64_t sub_BC9C()
{
  result = qword_55DC8;
  if (!qword_55DC8)
  {
    sub_5674(&qword_55DA8, &qword_3EE00);
    sub_56BC(&qword_55DD0, &qword_55DD8, &qword_3EE10);
    sub_BD54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55DC8);
  }

  return result;
}

unint64_t sub_BD54()
{
  result = qword_55DE0;
  if (!qword_55DE0)
  {
    sub_3CE64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55DE0);
  }

  return result;
}

unint64_t sub_BDAC()
{
  result = qword_55DE8;
  if (!qword_55DE8)
  {
    sub_5674(&qword_55DB0, &qword_3EE08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55DE8);
  }

  return result;
}

uint64_t sub_BE28(uint64_t a1, uint64_t a2)
{
  v4 = sub_4FF4(&qword_55DF0, &qword_3EE18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_BE9C()
{
  result = qword_55DF8;
  if (!qword_55DF8)
  {
    sub_5674(&qword_55E00, &unk_3EE20);
    sub_BF20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55DF8);
  }

  return result;
}

unint64_t sub_BF20()
{
  result = qword_55E08;
  if (!qword_55E08)
  {
    sub_5674(&qword_55D98, &qword_3EDC0);
    sub_BBE4();
    sub_BC9C();
    sub_BDAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55E08);
  }

  return result;
}

uint64_t sub_BFC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_C004()
{
  swift_getKeyPath();
  v4 = v0;
  sub_D25C(&qword_55EE0, type metadata accessor for MultitaskingAndGesturesSettingsListViewModel);
  sub_3C804();

  v2 = *(v0 + 16);
  v1 = *(v4 + 24);

  return v2;
}

unint64_t sub_C0B4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD00000000000001FLL;
    v6 = 0x7041746E65636552;
    if (a1 != 8)
    {
      v6 = 1801678660;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x654772656E726F43;
    if (a1 != 5)
    {
      v7 = 0xD000000000000010;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x73617469746C754DLL;
    v2 = 0xD000000000000012;
    v3 = 0x69746375646F7250;
    if (a1 != 3)
    {
      v3 = 0x556F54656B616853;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
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
}

uint64_t sub_C224(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_C0B4(*a1);
  v5 = v4;
  if (v3 == sub_C0B4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_3D804();
  }

  return v8 & 1;
}

Swift::Int sub_C2AC()
{
  v1 = *v0;
  sub_3D844();
  sub_C0B4(v1);
  sub_3D524();

  return sub_3D864();
}

uint64_t sub_C310()
{
  sub_C0B4(*v0);
  sub_3D524();
}

Swift::Int sub_C364()
{
  v1 = *v0;
  sub_3D844();
  sub_C0B4(v1);
  sub_3D524();

  return sub_3D864();
}

uint64_t sub_C3C4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_D13C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_C3F4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_C0B4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_C420@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_D25C(&qword_55EE0, type metadata accessor for MultitaskingAndGesturesSettingsListViewModel);
  sub_3C804();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_C4CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_C50C(v2, v3);
}

uint64_t sub_C50C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 16) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 24);
      if (sub_3D804())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v10);
    sub_D25C(&qword_55EE0, type metadata accessor for MultitaskingAndGesturesSettingsListViewModel);
    sub_3C7F4();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_C67C()
{
  swift_getKeyPath();
  sub_D25C(&qword_55EE0, type metadata accessor for MultitaskingAndGesturesSettingsListViewModel);
  sub_3C804();

  return *(v0 + 32);
}

uint64_t sub_C71C(unsigned __int8 a1)
{
  result = *(v1 + 32);
  if (result == 10)
  {
    if (a1 == 10)
    {
      goto LABEL_13;
    }

LABEL_5:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v5);
    sub_D25C(&qword_55EE0, type metadata accessor for MultitaskingAndGesturesSettingsListViewModel);
    sub_3C7F4();
  }

  if (a1 == 10)
  {
    goto LABEL_5;
  }

  v6 = sub_C0B4(result);
  v8 = v7;
  if (v6 != sub_C0B4(a1) || v8 != v9)
  {
    v11 = sub_3D804();

    if (v11)
    {
      goto LABEL_13;
    }

    goto LABEL_5;
  }

LABEL_13:
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_C904()
{
  v0 = sub_3D3B4();
  v28 = *(v0 - 8);
  v1 = *(v28 + 64);
  __chkstk_darwin(v0, v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3D3D4();
  v26 = *(v5 - 8);
  v27 = v5;
  v6 = *(v26 + 64);
  __chkstk_darwin(v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3D3F4();
  v25 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = __chkstk_darwin(v10, v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v19 = &v24 - v18;
  sub_ACD0();
  v20 = sub_3D624();
  sub_3D3E4();
  sub_3D404();
  v24 = *(v11 + 8);
  v24(v16, v10);
  v21 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_D1C0;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_BFC0;
  aBlock[3] = &unk_52760;
  v22 = _Block_copy(aBlock);

  sub_3D3C4();
  v29 = &_swiftEmptyArrayStorage;
  sub_D25C(&qword_55D28, &type metadata accessor for DispatchWorkItemFlags);
  sub_4FF4(&qword_55D30, &qword_3EF70);
  sub_D1E0();
  sub_3D694();
  sub_3D614();
  _Block_release(v22);

  (*(v28 + 8))(v4, v0);
  (*(v26 + 8))(v9, v27);
  v24(v19, v25);
}

uint64_t sub_CCB4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 32) != 10)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath, v2);
      sub_D25C(&qword_55EE0, type metadata accessor for MultitaskingAndGesturesSettingsListViewModel);
      sub_3C7F4();
    }
  }

  return result;
}

uint64_t sub_CDF8()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings44MultitaskingAndGesturesSettingsListViewModel___observationRegistrar;
  v3 = sub_3C824();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t type metadata accessor for MultitaskingAndGesturesSettingsListViewModel()
{
  result = qword_55E40;
  if (!qword_55E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_CEF0()
{
  result = sub_3C824();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MultitaskingAndGesturesSettingsListViewModel.CellIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MultitaskingAndGesturesSettingsListViewModel.CellIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_D0E8()
{
  result = qword_55ED8;
  if (!qword_55ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55ED8);
  }

  return result;
}

uint64_t sub_D13C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_51CE8;
  v6._object = a2;
  v4 = sub_3D784(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_D188()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_D1C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_D1E0()
{
  result = qword_55D38;
  if (!qword_55D38)
  {
    sub_5674(&qword_55D30, &qword_3EF70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55D38);
  }

  return result;
}

uint64_t sub_D25C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_D2A4()
{
  result = qword_55EE8;
  if (!qword_55EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55EE8);
  }

  return result;
}

uint64_t sub_D2FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_C50C(v2, v3);
}

uint64_t sub_D33C()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 24);
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

uint64_t sub_D394()
{
  v0 = type metadata accessor for FourAndFiveFingersSectionViewModel();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_12960();
}

uint64_t sub_D3CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_4FF4(&qword_55EF0, &unk_3F120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3, v5);
  v18 = v1;
  sub_DA78(v1, &v17[-v6]);
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v7 = qword_572B8;
  *&v20 = sub_3CF84();
  *(&v20 + 1) = v8;
  v21 = v9 & 1;
  v22 = v10;
  sub_4FF4(&qword_55DA8, &qword_3EE00);
  sub_E100();
  sub_BC9C();
  sub_3D2C4();
  v11 = *v1;
  v26 = *(v1 + 8);
  v20 = *(v1 + 16);
  v21 = *(v1 + 32);
  v12 = *(v1 + 48);
  v24 = *(v1 + 40);
  v25 = v11;
  v23 = v12;
  v13 = swift_allocObject();
  v14 = *(v1 + 16);
  *(v13 + 16) = *v1;
  *(v13 + 32) = v14;
  *(v13 + 48) = *(v1 + 32);
  *(v13 + 64) = *(v1 + 48);
  v15 = (a1 + *(sub_4FF4(&qword_55F00, &qword_3F138) + 36));
  *v15 = sub_E1E0;
  v15[1] = v13;
  v15[2] = 0;
  v15[3] = 0;
  sub_E1E8(&v25, v19, &qword_55F08, &qword_3F140);
  sub_E1E8(&v20, v19, &qword_55F10, &qword_3F148);
  sub_E1E8(&v24, v19, &qword_55F18, &qword_3F150);
  return sub_E1E8(&v23, v19, &qword_55F18, &qword_3F150);
}

uint64_t sub_D694(uint64_t a1)
{
  v2 = sub_4FF4(&qword_55DD8, &qword_3EE10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v12 - v6;
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  type metadata accessor for FourAndFiveFingersSectionViewModel();
  sub_E2C0(&qword_55F20, type metadata accessor for FourAndFiveFingersSectionViewModel);
  sub_3C9A4();
  swift_getKeyPath();
  sub_3CA84();

  sub_3D224();
  sub_56BC(&qword_55DD0, &qword_55DD8, &qword_3EE10);
  sub_3D074();
  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_D8A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  *a2 = v5;
  return result;
}

uint64_t sub_D924(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_3C8A4();
}

uint64_t sub_D998@<X0>(uint64_t a1@<X8>)
{
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v2 = qword_572B8;
  result = sub_3CF84();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_DA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_4FF4(&qword_55D90, &qword_3F130);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v36 - v8;
  v10 = *(a1 + 48);
  sub_3C8E4();
  if (v41 & 1) != 0 || (v11 = *(a1 + 40), sub_3C8E4(), (v40))
  {
    v12 = 1;
  }

  else
  {
    v39 = a2;
    sub_3CCB4();
    if (qword_55980 != -1)
    {
      swift_once();
    }

    v13 = qword_572B8;
    v14 = sub_3CF84();
    v16 = v15;
    v18 = v17;
    sub_3CEC4();
    v19 = sub_3CF74();
    v36 = v20;
    v37 = v19;
    v22 = v21;
    v24 = v23;

    sub_BAF8(v14, v16, v18 & 1);

    v25 = v37;
    v26 = sub_3CF64();
    v28 = v27;
    v30 = v29;
    v38 = v31;
    sub_BAF8(v25, v22, v24 & 1);

    v32 = &v9[*(v4 + 36)];
    v33 = *(sub_4FF4(&qword_55DA0, &qword_3EDC8) + 28);
    v34 = sub_3CF54();
    (*(*(v34 - 8) + 56))(v32 + v33, 1, 1, v34);
    *v32 = swift_getKeyPath();
    *v9 = v26;
    *(v9 + 1) = v28;
    v9[16] = v30 & 1;
    a2 = v39;
    *(v9 + 3) = v38;
    sub_E310(v9, a2);
    v12 = 0;
  }

  return (*(v5 + 56))(a2, v12, 1, v4);
}

uint64_t sub_DD6C(uint64_t a1)
{
  v2 = sub_3CC54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  type metadata accessor for FourAndFiveFingersSectionViewModel();
  sub_E2C0(&qword_55F20, type metadata accessor for FourAndFiveFingersSectionViewModel);
  v11 = sub_3C994();
  v12 = *a1;
  v21 = *a1;
  v22 = *(a1 + 8);
  LOBYTE(a1) = v22;

  if ((a1 & 1) == 0)
  {
    sub_3D604();
    v13 = sub_3CE74();
    sub_3C844();

    sub_3CC44();
    swift_getAtKeyPath();
    sub_E250(&v21);
    (*(v3 + 8))(v7, v2);
    v12 = v20;
  }

  swift_getKeyPath();
  v20 = v12;
  sub_E2C0(&qword_55EE0, type metadata accessor for MultitaskingAndGesturesSettingsListViewModel);
  sub_3C804();

  v15 = *(v12 + 16);
  v14 = *(v12 + 24);

  v16 = (v11 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings34FourAndFiveFingersSectionViewModel_referrer);
  v17 = *(v11 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings34FourAndFiveFingersSectionViewModel_referrer + 8);
  *v16 = v15;
  v16[1] = v14;
}

uint64_t sub_DFCC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  return sub_D3CC(a1);
}

__n128 sub_E01C(uint64_t a1, uint64_t a2)
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

uint64_t sub_E038(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_E080(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

unint64_t sub_E100()
{
  result = qword_55EF8;
  if (!qword_55EF8)
  {
    sub_5674(&qword_55EF0, &unk_3F120);
    sub_BBE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55EF8);
  }

  return result;
}

uint64_t sub_E184()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  sub_E1D8();
  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_E1E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_4FF4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_E250(uint64_t a1)
{
  v2 = sub_4FF4(&qword_55F08, &qword_3F140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_E2C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_E310(uint64_t a1, uint64_t a2)
{
  v4 = sub_4FF4(&qword_55D90, &qword_3F130);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_E38C()
{
  result = qword_55F28;
  if (!qword_55F28)
  {
    sub_5674(&qword_55F00, &qword_3F138);
    sub_E418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55F28);
  }

  return result;
}

unint64_t sub_E418()
{
  result = qword_55F30;
  if (!qword_55F30)
  {
    sub_5674(&qword_55F38, &qword_3F1F8);
    sub_E100();
    sub_BC9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55F30);
  }

  return result;
}

BOOL sub_E510(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_E540@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_E56C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_E658@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_E688@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_E828(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_E6CC()
{
  result = qword_55F40;
  if (!qword_55F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55F40);
  }

  return result;
}

unint64_t sub_E724()
{
  result = qword_55F48;
  if (!qword_55F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55F48);
  }

  return result;
}

unint64_t sub_E77C()
{
  result = qword_55F50;
  if (!qword_55F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55F50);
  }

  return result;
}

unint64_t sub_E7D4()
{
  result = qword_55F58;
  if (!qword_55F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55F58);
  }

  return result;
}

uint64_t sub_E828(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

id sub_E864()
{
  v1 = v0[3];
  v2 = v0[4];
  v5 = *v0;
  v6 = v0[1];
  v7 = *(v0 + 16);
  sub_4FF4(&qword_56008, &qword_3F528);
  sub_3D264();
  objc_allocWithZone(type metadata accessor for MultitaskingWindowManagementPackageAnimationView());

  return sub_31CD4(v4, v1, v2);
}

void sub_E8F4(uint64_t a1)
{
  v5 = *v1;
  v6 = v1[1];
  v7 = *(v1 + 16);
  sub_4FF4(&qword_56008, &qword_3F528);
  sub_3D264();
  v3 = *(a1 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_currentState);
  *(a1 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_currentState) = v4;
  sub_31700(v3);
}

uint64_t sub_E974@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PackageViewCoordinator();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_E9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_EC2C();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_EA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_EC2C();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_EAB8()
{
  sub_EC2C();
  sub_3CD84();
  __break(1u);
}

__n128 sub_EB14(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_EB28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_EB70(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_EBCC()
{
  result = qword_55FF8;
  if (!qword_55FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55FF8);
  }

  return result;
}

unint64_t sub_EC2C()
{
  result = qword_56000;
  if (!qword_56000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56000);
  }

  return result;
}

uint64_t sub_EC80(uint64_t a1, char a2, uint64_t a3, char a4, char *a5)
{
  if (a2)
  {
    v5 = UIViewNoIntrinsicMetric;
  }

  else
  {
    v5 = *&a1;
  }

  v7 = *&a5[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_originalSize];
  v6 = *&a5[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_originalSize + 8];
  if (v7 == 0.0 && v6 == 0.0)
  {
    if (a4)
    {
      v8 = UIViewNoIntrinsicMetric;
    }

    else
    {
      v8 = *&a3;
    }

    v12.receiver = a5;
    v12.super_class = type metadata accessor for MultitaskingWindowManagementPackageAnimationView();
    objc_msgSendSuper2(&v12, "sizeThatFits:", v5, v8);
    v5 = v9;
  }

  else
  {
    v10 = sub_32848(140.0) / v6;
    if (v10 < v5 / v7)
    {
      v5 = v7 * v10;
    }
  }

  return *&v5;
}

id sub_EDD0()
{
  type metadata accessor for FindClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_572B8 = result;
  return result;
}

uint64_t sub_EE3C(char *a1, uint64_t a2, int *a3)
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

  v8 = sub_3D414();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_3C774();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_3C7C4();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}

char *sub_EFBC(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_3D414();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_3C774();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_3C7C4();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for MultitaskingAndGesturesSettingsList()
{
  result = qword_56090;
  if (!qword_56090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_F174()
{
  sub_F240();
  if (v0 <= 0x3F)
  {
    sub_3D414();
    if (v1 <= 0x3F)
    {
      sub_3C774();
      if (v2 <= 0x3F)
      {
        sub_3C7C4();
        if (v3 <= 0x3F)
        {
          sub_F298();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_F240()
{
  if (!qword_560A0)
  {
    type metadata accessor for MultitaskingAndGesturesSettingsListViewModel();
    v0 = sub_3D1C4();
    if (!v1)
    {
      atomic_store(v0, &qword_560A0);
    }
  }
}

void sub_F298()
{
  if (!qword_560A8)
  {
    v0 = sub_3C914();
    if (!v1)
    {
      atomic_store(v0, &qword_560A8);
    }
  }
}

uint64_t sub_F304@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11418();
  sub_3C804();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_F3A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a1;
  v85 = a3;
  v4 = sub_3CAC4();
  v82 = *(v4 - 8);
  v83 = v4;
  v5 = *(v82 + 64);
  __chkstk_darwin(v4, v6);
  v77 = v7;
  v81 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for MultitaskingAndGesturesSettingsList();
  v69 = *(v84 - 1);
  v8 = *(v69 + 64);
  __chkstk_darwin(v84, v9);
  v71 = v10;
  v72 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_4FF4(&qword_560E8, &qword_3F5B8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = v64 - v15;
  v67 = sub_4FF4(&qword_560F0, &qword_3F5C0);
  v17 = *(v67 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v67, v19);
  v21 = v64 - v20;
  v74 = sub_4FF4(&qword_560F8, &qword_3F5C8);
  v70 = *(v74 - 8);
  v22 = *(v70 + 64);
  __chkstk_darwin(v74, v23);
  v86 = v64 - v24;
  v79 = sub_4FF4(&qword_56100, &qword_3F5D0);
  v73 = *(v79 - 8);
  v25 = *(v73 + 64);
  __chkstk_darwin(v79, v26);
  v68 = v64 - v27;
  v80 = sub_4FF4(&qword_56108, &qword_3F5D8);
  v76 = *(v80 - 8);
  v28 = *(v76 + 64);
  __chkstk_darwin(v80, v29);
  v75 = v64 - v30;
  v31 = a2;
  v87 = a2;
  sub_4FF4(&qword_56110, &qword_3F5E0);
  sub_56BC(&qword_56118, &qword_56110, &qword_3F5E0);
  sub_3CF14();
  v32 = sub_56BC(&qword_56120, &qword_560E8, &qword_3F5B8);
  sub_3CFB4();
  (*(v12 + 8))(v16, v11);
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v33 = qword_572B8;
  v34 = sub_3CF84();
  v36 = v35;
  v38 = v37;
  v88 = v11;
  v89 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v67;
  sub_3D064();
  sub_BAF8(v34, v36, v38 & 1);

  (*(v17 + 8))(v21, v40);
  v66 = *v31;
  v65 = v31[1];
  v88 = v66;
  v89 = v65;
  v64[0] = sub_4FF4(&qword_56128, &qword_3F5E8);
  sub_3D194();
  v41 = v92;
  swift_getKeyPath();
  v88 = v41;
  v64[1] = sub_11418();
  sub_3C804();

  v42 = *(v41 + 32);

  LOBYTE(v92) = v42;
  v43 = v72;
  sub_11114(v31, v72);
  v45 = v81;
  v44 = v82;
  v46 = v83;
  (*(v82 + 16))(v81, v78, v83);
  v47 = (*(v69 + 80) + 16) & ~*(v69 + 80);
  v48 = (v71 + *(v44 + 80) + v47) & ~*(v44 + 80);
  v49 = swift_allocObject();
  sub_11300(v43, v49 + v47);
  (*(v44 + 32))(v49 + v48, v45, v46);
  v50 = sub_4FF4(&qword_56130, &qword_3F618);
  v88 = v40;
  v89 = OpaqueTypeConformance2;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = sub_11760();
  v53 = v68;
  v54 = v74;
  v55 = v86;
  sub_3D084();

  (*(v70 + 8))(v55, v54);
  v56 = v84[5];
  v57 = v84[6];
  v58 = v84[7];
  v88 = v54;
  v89 = v50;
  v90 = v51;
  v91 = v52;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = v75;
  v61 = v79;
  sub_3CFC4();
  (*(v73 + 8))(v53, v61);
  v88 = v66;
  v89 = v65;
  sub_3D194();
  type metadata accessor for MultitaskingAndGesturesSettingsListViewModel();
  v88 = v61;
  v89 = v59;
  swift_getOpaqueTypeConformance2();
  v62 = v80;
  sub_3D024();

  return (*(v76 + 8))(v60, v62);
}

uint64_t sub_FCDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *(&v140 + 1) = &type metadata for MultitaskingAndGesturesFeatureFlags;
  v141 = sub_1180C();
  v3 = sub_3C834();
  sub_11860(&v139);
  type metadata accessor for MultitaskingAndGesturesSettingsListViewModel();
  sub_11418();
  v106 = sub_3C984();
  v107 = v4 & 1;
  if (v3)
  {
    v108 = sub_27E78;
    v109 = 0;
    LOWORD(v110) = 0;
  }

  else
  {
    v108 = sub_24114;
    v109 = 0;
    LOWORD(v110) = 256;
  }

  sub_118AC();
  sub_11900();
  sub_3CDB4();
  v63 = v139;
  v64 = v140;
  v5 = v141;
  v6 = BYTE1(v141);
  v7 = type metadata accessor for MultitaskingAndGesturesSettingsList();
  v8 = *(a1 + *(v7 + 36));
  v71 = v5;
  sub_11954(v63, *(&v63 + 1), v64, *(&v64 + 1), v5);
  sub_3C8E4();
  if ((v139 & 1) != 0 || (v9 = *(a1 + *(v7 + 32)), sub_3C8E4(), v139 == 1))
  {
    v70 = sub_3C984();
    v11 = v10;
    v12 = a1[1];
    v106 = *a1;
    v107 = v12;
    sub_4FF4(&qword_56128, &qword_3F5E8);
    sub_3D1B4();
    v13 = v139;
    v14 = v140;
    swift_getKeyPath();
    v139 = v13;
    *&v140 = v14;
    sub_4FF4(&qword_56158, &qword_3F620);
    sub_3D284();

    v68 = v107;
    v69 = v106;

    LOBYTE(v102) = v11 & 1;
    LOBYTE(v89) = 0;
    v66 = v11 & 1;
    v67 = v108 | 0x100;
    v65 = sub_14498;
  }

  else
  {
    v69 = 0;
    v70 = 0;
    v65 = 0;
    v66 = 0;
    v68 = 0;
    v67 = 0;
  }

  v62 = sub_3C984();
  v16 = v15;
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v17 = qword_572E8;
  v61 = sub_3C8D4();
  v46 = v17;
  v60 = sub_3C8D4();
  v44 = a1[1];
  v106 = *a1;
  sub_4FF4(&qword_56128, &qword_3F5E8);
  sub_3D1B4();
  v18 = v139;
  v19 = v140;
  swift_getKeyPath();
  v139 = v18;
  *&v140 = v19;
  sub_4FF4(&qword_56158, &qword_3F620);
  sub_3D284();

  v59 = v106;
  v58 = v108;

  v57 = v16 & 1;
  v56 = sub_3C984();
  v21 = v20;
  sub_3D1B4();
  v22 = v139;
  v23 = v140;
  swift_getKeyPath();
  v139 = v22;
  *&v140 = v23;
  sub_3D284();

  v55 = v106;
  v54 = v108;

  v53 = sub_3C984();
  v50 = v24;
  sub_3D1B4();
  v25 = v139;
  v26 = v140;
  swift_getKeyPath();
  v139 = v25;
  *&v140 = v26;
  sub_3D284();

  v52 = v106;
  v51 = v108;

  v50 &= 1u;
  v49 = sub_3C984();
  v42 = v27;
  v28 = v46;
  v48 = sub_3C8D4();
  v47 = sub_3C8D4();
  sub_3D1B4();
  v29 = v139;
  v30 = v140;
  swift_getKeyPath();
  v139 = v29;
  *&v140 = v30;
  sub_3D284();

  v39 = v106;
  v45 = v108;

  v31 = v42 & 1;
  v40 = v42 & 1;
  v32 = sub_3C984();
  v41 = v33;
  v43 = sub_3C8D4();
  v107 = v44;
  sub_3D1B4();
  v34 = v139;
  v35 = v140;
  swift_getKeyPath();
  v139 = v34;
  *&v140 = v35;
  sub_3D284();

  v36 = v106;
  LOBYTE(v17) = v108;

  *&v85 = v70;
  *(&v85 + 1) = v66;
  v86 = v65;
  v87 = 0;
  *v88 = 0;
  *&v88[8] = v69;
  *&v88[16] = v68;
  *&v88[24] = v67;
  *&v76[48] = *&v88[10];
  *&v76[38] = *v88;
  *&v76[22] = v65;
  *&v76[6] = v85;
  *&v89 = v62;
  BYTE8(v89) = v57;
  HIDWORD(v89) = *&v84[3];
  *(&v89 + 9) = *v84;
  v90 = sub_D394;
  v91 = 0;
  LOBYTE(v92) = 0;
  DWORD1(v92) = *&v83[3];
  *(&v92 + 1) = *v83;
  *(&v92 + 1) = v61;
  *v93 = v60;
  *&v93[8] = v106;
  *&v93[16] = v44;
  v93[24] = v108;
  v93[25] = 2;
  *&v75[6] = v89;
  *&v75[64] = *&v93[10];
  *&v75[54] = *v93;
  *&v75[38] = v92;
  *&v75[22] = sub_D394;
  *&v94 = v56;
  BYTE8(v94) = v21 & 1;
  HIDWORD(v94) = *&v82[3];
  *(&v94 + 9) = *v82;
  v95 = sub_138B4;
  v96 = 0;
  v97[0] = 0;
  *&v97[4] = *&v81[3];
  *&v97[1] = *v81;
  *&v97[8] = v106;
  *&v97[16] = v44;
  v97[24] = v108;
  v97[25] = 3;
  *&v74[48] = *&v97[10];
  *&v74[38] = *v97;
  *&v74[22] = sub_138B4;
  *&v74[6] = v94;
  *&v98 = v53;
  BYTE8(v98) = v50;
  HIDWORD(v98) = *&v80[3];
  *(&v98 + 9) = *v80;
  v99 = sub_2D538;
  v100 = 0;
  v101[0] = 0;
  *&v101[4] = *&v79[3];
  *&v101[1] = *v79;
  *&v101[8] = v106;
  *&v101[16] = v44;
  v101[24] = v108;
  v101[25] = 4;
  v73[3] = *&v101[10];
  *(&v73[2] + 6) = *v101;
  *(&v73[1] + 6) = sub_2D538;
  *(v73 + 6) = v98;
  *&v102 = v49;
  BYTE8(v102) = v31;
  HIDWORD(v102) = *&v78[3];
  *(&v102 + 9) = *v78;
  *&v103 = sub_2E004;
  *(&v103 + 1) = 0;
  LOBYTE(v104) = 0;
  DWORD1(v104) = *&v77[3];
  *(&v104 + 1) = *v77;
  *(&v104 + 1) = v48;
  *v105 = v47;
  *&v105[8] = v106;
  *&v105[16] = v44;
  v105[24] = v108;
  *(a2 + 33) = v6;
  v105[25] = 5;
  *&v72[6] = v102;
  *&v72[64] = *&v105[10];
  *&v72[54] = *v105;
  *&v72[38] = v104;
  *&v72[22] = v103;
  *(a2 + 274) = v73[2];
  *(a2 + 290) = v73[3];
  *(a2 + 258) = v73[1];
  *(a2 + 354) = *&v72[48];
  *(a2 + 370) = *&v72[64];
  *(a2 + 306) = *v72;
  *(a2 + 322) = *&v72[16];
  *(a2 + 338) = *&v72[32];
  *(a2 + 400) = v41 & 1;
  *(a2 + 432) = v17;
  *(a2 + 433) = 6;
  *a2 = v63;
  *(a2 + 16) = v64;
  *(a2 + 82) = *&v76[48];
  *(a2 + 66) = *&v76[32];
  *(a2 + 50) = *&v76[16];
  *(a2 + 34) = *v76;
  *(a2 + 98) = *v75;
  *(a2 + 162) = *&v75[64];
  *(a2 + 146) = *&v75[48];
  *(a2 + 130) = *&v75[32];
  *(a2 + 32) = v71;
  *(a2 + 114) = *&v75[16];
  *(a2 + 226) = *&v74[48];
  *(a2 + 210) = *&v74[32];
  *(a2 + 194) = *&v74[16];
  *(a2 + 178) = *v74;
  *(a2 + 242) = v73[0];
  *(a2 + 392) = v32;
  *(a2 + 408) = v43;
  *(a2 + 416) = v36;
  *(a2 + 424) = v44;
  sub_11954(v63, *(&v63 + 1), v64, *(&v64 + 1), v71);
  sub_E1E8(&v85, &v139, &qword_56160, &qword_3F628);
  sub_E1E8(&v89, &v139, &qword_56168, &qword_3F630);
  sub_E1E8(&v94, &v139, &qword_56170, &qword_3F638);
  sub_E1E8(&v98, &v139, &qword_56178, &qword_3F640);
  sub_E1E8(&v102, &v139, &qword_56180, &qword_3F648);

  sub_119B4(v63, *(&v63 + 1), v64, *(&v64 + 1), v71);

  v106 = v49;
  LOBYTE(v107) = v40;
  *(&v107 + 1) = *v78;
  HIDWORD(v107) = *&v78[3];
  v108 = sub_2E004;
  v109 = 0;
  LOBYTE(v110) = 0;
  *(&v110 + 1) = *v77;
  HIDWORD(v110) = *&v77[3];
  v111 = v48;
  v112 = v47;
  v113 = v39;
  v114 = v44;
  v115 = v45;
  v116 = 5;
  sub_11A14(&v106, &qword_56180, &qword_3F648);
  v117 = v53;
  v118 = v50;
  *v119 = *v80;
  *&v119[3] = *&v80[3];
  v120 = sub_2D538;
  v121 = 0;
  v122 = 0;
  *v123 = *v79;
  *&v123[3] = *&v79[3];
  v124 = v52;
  v125 = v44;
  v126 = v51;
  v127 = 4;
  sub_11A14(&v117, &qword_56178, &qword_3F640);
  v128 = v56;
  v129 = v21 & 1;
  *v130 = *v82;
  *&v130[3] = *&v82[3];
  v131 = sub_138B4;
  v132 = 0;
  v133 = 0;
  *v134 = *v81;
  *&v134[3] = *&v81[3];
  v135 = v55;
  v136 = v44;
  v137 = v54;
  v138 = 3;
  sub_11A14(&v128, &qword_56170, &qword_3F638);
  *&v139 = v62;
  BYTE8(v139) = v57;
  *(&v139 + 9) = *v84;
  HIDWORD(v139) = *&v84[3];
  v140 = sub_D394;
  LOBYTE(v141) = 0;
  *(&v141 + 1) = *v83;
  HIDWORD(v141) = *&v83[3];
  v142 = v61;
  v143 = v60;
  v144 = v59;
  v145 = v44;
  v146 = v58;
  v147 = 2;
  sub_11A14(&v139, &qword_56168, &qword_3F630);
  v148[0] = v70;
  v148[1] = v66;
  v148[2] = v65;
  v148[3] = 0;
  v148[4] = 0;
  v148[5] = v69;
  v148[6] = v68;
  v149 = v67;
  sub_11A14(v148, &qword_56160, &qword_3F628);
  return sub_119B4(v63, *(&v63 + 1), v64, *(&v64 + 1), v71);
}

uint64_t sub_10BF8(uint64_t a1, unsigned __int8 *a2, void *a3, uint64_t a4)
{
  v7 = sub_3CE54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin(v7, v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  if (v14 != 10)
  {
    v15 = a3[1];
    v18[2] = *a3;
    v18[3] = v15;
    sub_4FF4(&qword_56128, &qword_3F5E8);
    v16 = sub_3D194();
    __chkstk_darwin(v16, v17);
    v18[-2] = a4;
    LOBYTE(v18[-1]) = v14;

    sub_3D344();
    sub_3CE44();
    sub_3CA44();

    return (*(v8 + 8))(v13, v7);
  }

  return result;
}

uint64_t sub_10DB0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_4FF4(&qword_56188, &qword_3F650);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = v21 - v7;
  v21[1] = a1;
  type metadata accessor for MultitaskingAndGesturesSettingsListViewModel();
  sub_3D184();
  v9 = v21[3];
  *a2 = v21[2];
  *(a2 + 1) = v9;
  v10 = type metadata accessor for MultitaskingAndGesturesSettingsList();
  v11 = &a2[v10[5]];
  *v11 = 0xD000000000000024;
  *(v11 + 1) = 0x8000000000043020;
  v12 = enum case for SettingsEventImage.graphicIcon(_:);
  v13 = sub_3D414();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  v14 = &a2[v10[6]];
  sub_3C764();
  sub_3C7B4();
  v15 = sub_3C7C4();
  v16 = *(v15 - 8);
  result = (*(v16 + 48))(v8, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v16 + 32))(&a2[v10[7]], v8, v15);
    v18 = v10[8];
    if (qword_559A8 != -1)
    {
      swift_once();
    }

    v19 = qword_572E8;
    *&a2[v18] = sub_3C8D4();
    v20 = v10[9];
    result = sub_3C8D4();
    *&a2[v20] = result;
  }

  return result;
}

uint64_t sub_11028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1 - 8, a2);
  sub_11114(v3, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  result = sub_11300(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  *a3 = sub_11364;
  a3[1] = v8;
  return result;
}

uint64_t sub_11114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultitaskingAndGesturesSettingsList();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_11178()
{
  v1 = (type metadata accessor for MultitaskingAndGesturesSettingsList() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = v1[7];
  v8 = sub_3D414();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v1[8];
  v10 = sub_3C774();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  v11 = v1[9];
  v12 = sub_3C7C4();
  (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);
  v13 = *(v0 + v3 + v1[10]);

  v14 = *(v0 + v3 + v1[11]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_11300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultitaskingAndGesturesSettingsList();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_11364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MultitaskingAndGesturesSettingsList() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_F3A4(a1, v6, a2);
}

unint64_t sub_11418()
{
  result = qword_55EE0;
  if (!qword_55EE0)
  {
    type metadata accessor for MultitaskingAndGesturesSettingsListViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55EE0);
  }

  return result;
}

uint64_t sub_11470()
{
  v1 = (type metadata accessor for MultitaskingAndGesturesSettingsList() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_3CAC4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = (v0 + v3);
  v12 = *v11;

  v13 = *(v11 + 1);

  v14 = v1[7];
  v15 = sub_3D414();
  (*(*(v15 - 8) + 8))(&v11[v14], v15);
  v16 = v1[8];
  v17 = sub_3C774();
  (*(*(v17 - 8) + 8))(&v11[v16], v17);
  v18 = v1[9];
  v19 = sub_3C7C4();
  (*(*(v19 - 8) + 8))(&v11[v18], v19);
  v20 = *&v11[v1[10]];

  v21 = *&v11[v1[11]];

  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_1167C(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for MultitaskingAndGesturesSettingsList() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_3CAC4() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_10BF8(a1, a2, (v2 + v6), v9);
}

unint64_t sub_11760()
{
  result = qword_56138;
  if (!qword_56138)
  {
    sub_5674(&qword_56130, &qword_3F618);
    sub_D0E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56138);
  }

  return result;
}

uint64_t sub_117E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_C8AC();
}

unint64_t sub_1180C()
{
  result = qword_56140;
  if (!qword_56140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56140);
  }

  return result;
}

uint64_t sub_11860(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_118AC()
{
  result = qword_56148;
  if (!qword_56148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56148);
  }

  return result;
}

unint64_t sub_11900()
{
  result = qword_56150;
  if (!qword_56150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56150);
  }

  return result;
}

uint64_t sub_11954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  return sub_119A4(a3, a4, a5 & 1);
}

uint64_t sub_119A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return _objc_retain_x1();
  }

  else
  {
  }
}

uint64_t sub_119B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  return sub_11A04(a3, a4, a5 & 1);
}

uint64_t sub_11A04(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return _objc_release_x1();
  }

  else
  {
  }
}

uint64_t sub_11A14(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_4FF4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_11AC0()
{
  result = [objc_allocWithZone(type metadata accessor for MultiTaskingDisplayManager()) init];
  qword_572C0 = result;
  return result;
}

uint64_t sub_11AF4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  return v1;
}

char *sub_11B68()
{
  ObjectType = swift_getObjectType();
  v2 = sub_4FF4(&qword_55AD8, &unk_3E450);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v23 - v6;
  v8 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager__isExternalDisplayConnected;
  LOBYTE(v24) = sub_126B4() & 1;
  sub_3C874();
  (*(v3 + 32))(&v0[v8], v7, v2);
  *&v0[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_displayService] = 0;
  *&v0[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_externalDisplayInfo] = 0;
  *&v0[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_externalDisplayObserver] = 0;
  v25.receiver = v0;
  v25.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v25, "init");
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  deviceSupportsEnhancedMultitasking = MobileGestalt_get_deviceSupportsEnhancedMultitasking();

  if (deviceSupportsEnhancedMultitasking)
  {
LABEL_5:
    v15 = [objc_allocWithZone(SBSExternalDisplayService) init];
    v16 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_displayService;
    v17 = *&v9[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_displayService];
    *&v9[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_displayService] = v15;

    v18 = *&v9[v16];
    if (v18)
    {
      [v18 addObserver:v9];
    }

    if (sub_126B4())
    {
      sub_12760(sub_128E8, &unk_529A8);
    }

    goto LABEL_9;
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = result;
  deviceSupportsSingleDisplayEnhancedMultitasking = MobileGestalt_get_deviceSupportsSingleDisplayEnhancedMultitasking();

  if (deviceSupportsSingleDisplayEnhancedMultitasking)
  {
    goto LABEL_5;
  }

LABEL_9:
  v19 = [objc_opt_self() TVOutDisplay];
  if (v19)
  {
    v24 = v19;
    v20 = v19;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = sub_3C784();
  }

  else
  {
    v21 = 0;
  }

  v22 = *&v9[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_externalDisplayObserver];
  *&v9[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_externalDisplayObserver] = v21;

  return v9;
}

void sub_11E28()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_12760(sub_128E8, &unk_529A8);
  }
}

id sub_11EBC(unint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1 >> 62)
    {
      result = sub_3D744();
      if (result)
      {
LABEL_4:
        if ((a1 & 0xC000000000000001) != 0)
        {
          result = sub_3D6F4();
        }

        else
        {
          if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return result;
          }

          result = *(a1 + 32);
        }
      }
    }

    else
    {
      result = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
        goto LABEL_4;
      }
    }

    v5 = *&v3[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_externalDisplayInfo];
    *&v3[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_externalDisplayInfo] = result;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_externalDisplayInfo);
      v8 = v6;
      v9 = v7;

      if (v7)
      {
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    return sub_3C8A4();
  }

  return result;
}

uint64_t sub_1202C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_12668();
  v3 = sub_3D554();

  v2(v3);
}

void sub_120A0(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_externalDisplayInfo);
  if (v3)
  {
    v4 = [v3 identifier];
    sub_3D4F4();

    v5 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_displayService;
    v6 = *(v1 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_displayService);
    if (v6)
    {
      v7 = v6;
      v8 = sub_3D4C4();

      [v7 setMirroringEnabled:a1 & 1 forDisplay:v8];

      v9 = *(v1 + v5);
      if (!v9)
      {
        return;
      }
    }

    else
    {

      v9 = *(v1 + v5);
      if (!v9)
      {
        return;
      }
    }

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13[4] = sub_12648;
    v13[5] = v10;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_1202C;
    v13[3] = &unk_52958;
    v11 = _Block_copy(v13);
    v12 = v9;

    [v12 getConnectedDisplayInfoWithCompletionHandler:v11];
    _Block_release(v11);
  }
}

void sub_12238(unint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1 >> 62)
    {
      v4 = sub_3D744();
      if (v4)
      {
LABEL_4:
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = sub_3D6F4();
        }

        else
        {
          if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return;
          }

          v4 = *(a1 + 32);
        }
      }
    }

    else
    {
      v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
      if (v4)
      {
        goto LABEL_4;
      }
    }

    v5 = *&v3[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_externalDisplayInfo];
    *&v3[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_externalDisplayInfo] = v4;
  }
}

uint64_t type metadata accessor for MultiTaskingDisplayManager()
{
  result = qword_56248;
  if (!qword_56248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1256C()
{
  sub_6A70();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_12610()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_12650(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_12668()
{
  result = qword_56260;
  if (!qword_56260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_56260);
  }

  return result;
}

uint64_t sub_126B4()
{
  v0 = [objc_opt_self() TVOutDisplay];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 currentMode];

    if (v2)
    {
      if ([v2 height] < 1)
      {
      }

      else
      {
        v3 = [v2 width];

        if (v3 > 0)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

void sub_12760(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_externalDisplayInfo);
  *(v2 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_externalDisplayInfo) = 0;

  v6 = *(v2 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_displayService);
  if (v6)
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10[4] = a1;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_1202C;
    v10[3] = a2;
    v8 = _Block_copy(v10);
    v9 = v6;

    [v9 getConnectedDisplayInfoWithCompletionHandler:v8];
    _Block_release(v8);
  }
}

id sub_12878@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferences];
  *a2 = result;
  return result;
}

uint64_t sub_128EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  return v1;
}

uint64_t sub_12960()
{
  v1 = v0;
  v2 = sub_4FF4(&qword_55AC8, &qword_3E440);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v20[-v5];
  v7 = sub_4FF4(&qword_55AD8, &unk_3E450);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v20[-v11];
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v13 = qword_572E8;
  *(v1 + 16) = sub_3C8D4();
  *(v1 + 24) = sub_3C8D4();
  v14 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings34FourAndFiveFingersSectionViewModel__fourAndFiveFingersEnabled;
  v20[15] = sub_135D4() & 1;
  sub_3C874();
  (*(v8 + 32))(v1 + v14, v12, v7);
  v15 = (v1 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings34FourAndFiveFingersSectionViewModel_referrer);
  v16 = sub_3D5B4();
  *v15 = 0;
  v15[1] = 0;
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  sub_3D594();

  v17 = sub_3D584();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v1;
  sub_1E9E0(0, 0, v6, &unk_3F7F0, v18);

  return v1;
}

uint64_t sub_12C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = *(*(sub_4FF4(&qword_55B28, &unk_3EB60) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_4FF4(&qword_55B30, &unk_3E4C0);
  v4[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_4FF4(&qword_55B38, &unk_3EB70);
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_4FF4(&qword_55B40, &unk_3E4D0);
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = sub_4FF4(&qword_55B48, &unk_3EB80);
  v4[15] = v14;
  v15 = *(v14 - 8);
  v4[16] = v15;
  v16 = *(v15 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = sub_3D594();
  v4[19] = sub_3D584();
  v18 = sub_3D564();
  v4[20] = v18;
  v4[21] = v17;

  return _swift_task_switch(sub_12E4C, v18, v17);
}

uint64_t sub_12E4C()
{
  v1 = v0[14];
  v15 = v0[13];
  v16 = v0[17];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v14 = v0[6];
  swift_beginAccess();
  sub_4FF4(&qword_55AD8, &unk_3E450);
  sub_3C884();
  swift_endAccess();
  sub_56BC(&qword_55B50, &qword_55B38, &unk_3EB70);
  sub_3C8C4();
  (*(v4 + 8))(v3, v5);
  sub_56BC(&qword_55B58, &qword_55B30, &unk_3E4C0);
  sub_3D7F4();
  sub_3D794();
  sub_3D5E4();
  sub_3D7A4();
  (*(v15 + 8))(v1, v2);
  sub_3D7E4();
  v0[22] = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings34FourAndFiveFingersSectionViewModel_referrer;
  v9 = v0[18];
  v10 = sub_3D584();
  v0[23] = v10;
  v11 = swift_task_alloc();
  v0[24] = v11;
  *v11 = v0;
  v11[1] = sub_130B0;
  v12 = v0[17];

  return sub_1C864(v10, &protocol witness table for MainActor);
}

uint64_t sub_130B0(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v9 = *v2;
  *(*v2 + 202) = a1;

  if (!v1)
  {
    v6 = v3[23];

    v7 = v3[20];
    v8 = v3[21];

    return _swift_task_switch(sub_131C8, v7, v8);
  }

  return result;
}

uint64_t sub_131C8()
{
  v1 = *(v0 + 202);
  if (v1 == 2)
  {
    v2 = *(v0 + 152);
    v3 = *(v0 + 112);
    v4 = *(v0 + 88);
    v5 = *(v0 + 64);
    v6 = *(v0 + 48);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 40);
    v10 = *(v9 + 16);
    v11 = v1 & 1;
    *(v0 + 200) = v1 & 1;

    sub_3C8F4();

    v12 = *(v9 + 24);
    *(v0 + 201) = 0;

    sub_3C8F4();

    if (qword_559A0 != -1)
    {
      swift_once();
    }

    v13 = (*(v0 + 40) + *(v0 + 176));
    v14 = *v13;
    v15 = v13[1];

    sub_1BCA0(2u, v11, v14, v15);

    v16 = *(v0 + 144);
    v17 = sub_3D584();
    *(v0 + 184) = v17;
    v18 = swift_task_alloc();
    *(v0 + 192) = v18;
    *v18 = v0;
    v18[1] = sub_130B0;
    v19 = *(v0 + 136);

    return sub_1C864(v17, &protocol witness table for MainActor);
  }
}

uint64_t sub_1340C()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings34FourAndFiveFingersSectionViewModel__fourAndFiveFingersEnabled;
  v4 = sub_4FF4(&qword_55AD8, &unk_3E450);
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *&v0[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings34FourAndFiveFingersSectionViewModel_referrer + 8];

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v6, v7);
}

uint64_t type metadata accessor for FourAndFiveFingersSectionViewModel()
{
  result = qword_56300;
  if (!qword_56300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1352C()
{
  sub_6A70();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_135D4()
{
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v0 = qword_572E8;
  v1 = sub_3D4C4();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    sub_3D674();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (*(&v10 + 1))
  {
    if (swift_dynamicCast())
    {
      v3 = v8;
      goto LABEL_11;
    }
  }

  else
  {
    sub_526C(&v11);
  }

  v3 = 1;
LABEL_11:
  v4 = sub_3D4C4();
  v5 = [v0 valueForKey:v4];

  if (v5)
  {
    sub_3D674();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_526C(&v11);
LABEL_19:
    v6 = 0;
    result = 0;
    if (!v3)
    {
      return result;
    }

    return v6 ^ 1u;
  }

  if (!swift_dynamicCast())
  {
    goto LABEL_19;
  }

  if (v3)
  {
    v6 = v8;
    return v6 ^ 1u;
  }

  return 0;
}

uint64_t sub_137B8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_137F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_5440;

  return sub_12C04(a1, v4, v5, v6);
}

uint64_t sub_138B4()
{
  v0 = type metadata accessor for ProductivityGesturesSectionViewModel();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_5DFC();
}

__n128 sub_138F8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1390C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_13954(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_139C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CCD4();
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v4 = qword_572B8;
  v13 = v3;
  v14 = 1;
  v15 = sub_3CF84();
  v16 = v5;
  v17 = v6 & 1;
  v18 = v7;
  sub_4FF4(&qword_55DA8, &qword_3EE00);
  sub_4FF4(&qword_563A0, &unk_3F988);
  sub_BC9C();
  sub_56BC(&qword_563A8, &qword_563A0, &unk_3F988);
  sub_3D2E4();
  v19 = *v1;
  v20 = *(v1 + 8);
  v13 = *(v1 + 1);
  v14 = *(v1 + 32);
  v8 = swift_allocObject();
  v9 = *(v1 + 1);
  *(v8 + 16) = *v1;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v1 + 32);
  v10 = (a1 + *(sub_4FF4(&qword_563B0, &unk_3F998) + 36));
  *v10 = sub_142E4;
  v10[1] = v8;
  v10[2] = 0;
  v10[3] = 0;
  sub_E1E8(&v19, v12, &qword_55F08, &qword_3F140);
  return sub_E1E8(&v13, v12, &qword_563B8, &qword_3F9A8);
}

uint64_t sub_13C18(uint64_t a1)
{
  v2 = sub_4FF4(&qword_55DD8, &qword_3EE10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v12 - v6;
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  type metadata accessor for ProductivityGesturesSectionViewModel();
  sub_142F4(&qword_563C0, type metadata accessor for ProductivityGesturesSectionViewModel);
  sub_3C9A4();
  swift_getKeyPath();
  sub_3CA84();

  sub_3D224();
  sub_56BC(&qword_55DD0, &qword_55DD8, &qword_3EE10);
  sub_3D074();
  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_13E28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  *a2 = v5;
  return result;
}

uint64_t sub_13EA8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_3C8A4();
}

uint64_t sub_13F1C@<X0>(uint64_t a1@<X8>)
{
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v2 = qword_572B8;
  result = sub_3CF84();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_13FFC(uint64_t a1)
{
  v2 = sub_3CC54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  type metadata accessor for ProductivityGesturesSectionViewModel();
  sub_142F4(&qword_563C0, type metadata accessor for ProductivityGesturesSectionViewModel);
  v11 = sub_3C994();
  v12 = *a1;
  v21 = *a1;
  v22 = *(a1 + 8);
  LOBYTE(a1) = v22;

  if ((a1 & 1) == 0)
  {
    sub_3D604();
    v13 = sub_3CE74();
    sub_3C844();

    sub_3CC44();
    swift_getAtKeyPath();
    sub_E250(&v21);
    (*(v3 + 8))(v7, v2);
    v12 = v20;
  }

  swift_getKeyPath();
  v20 = v12;
  sub_142F4(&qword_55EE0, type metadata accessor for MultitaskingAndGesturesSettingsListViewModel);
  sub_3C804();

  v15 = *(v12 + 16);
  v14 = *(v12 + 24);

  v16 = (v11 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings36ProductivityGesturesSectionViewModel_referrer);
  v17 = *(v11 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings36ProductivityGesturesSectionViewModel_referrer + 8);
  *v16 = v15;
  v16[1] = v14;
}

uint64_t sub_1425C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 32);
  return sub_139C8(a1);
}

uint64_t sub_142A0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  sub_E1D8();

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_142F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_14348()
{
  result = qword_563C8;
  if (!qword_563C8)
  {
    sub_5674(&qword_563B0, &unk_3F998);
    sub_143D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_563C8);
  }

  return result;
}

unint64_t sub_143D4()
{
  result = qword_563D0;
  if (!qword_563D0)
  {
    sub_5674(&qword_563D8, &unk_3FA20);
    sub_BC9C();
    sub_56BC(&qword_563A8, &qword_563A0, &unk_3F988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_563D0);
  }

  return result;
}

uint64_t sub_14498()
{
  v0 = type metadata accessor for SwipeToRevealMenuBarSectionViewModel();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1ED44();
}

uint64_t sub_144D0@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v40 = sub_4FF4(&qword_55D90, &qword_3F130);
  v2 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40, v3);
  v39 = &v39 - v4;
  v41 = v1;
  v43 = v1;
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v5 = qword_572B8;
  v6 = sub_3CF84();
  v8 = v7;
  v10 = v9;
  sub_3CEC4();
  v11 = sub_3CF74();
  v13 = v12;
  v15 = v14;

  sub_BAF8(v6, v8, v10 & 1);

  v16 = sub_3CF64();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_BAF8(v11, v13, v15 & 1);

  v23 = v39;
  v24 = &v39[*(v40 + 36)];
  v25 = *(sub_4FF4(&qword_55DA0, &qword_3EDC8) + 28);
  v26 = sub_3CF54();
  (*(*(v26 - 8) + 56))(v24 + v25, 1, 1, v26);
  *v24 = swift_getKeyPath();
  *v23 = v16;
  *(v23 + 1) = v18;
  v23[16] = v20 & 1;
  *(v23 + 3) = v22;
  v27 = sub_3CCD4();
  sub_3CCB4();
  v28 = qword_572B8;
  v29 = sub_3CF84();
  v45 = v27;
  v46 = 1;
  v47 = v29;
  v48 = v30;
  v49 = v31 & 1;
  v50 = v32;
  sub_4FF4(&qword_55DA8, &qword_3EE00);
  sub_4FF4(&qword_563A0, &unk_3F988);
  sub_BBE4();
  sub_BC9C();
  sub_56BC(&qword_563A8, &qword_563A0, &unk_3F988);
  v33 = v42;
  sub_3D2C4();
  v34 = v41;
  v51 = *v41;
  v52 = *(v41 + 8);
  v45 = *(v41 + 1);
  v46 = *(v41 + 32);
  v35 = swift_allocObject();
  v36 = *(v34 + 1);
  *(v35 + 16) = *v34;
  *(v35 + 32) = v36;
  *(v35 + 48) = *(v34 + 32);
  v37 = (v33 + *(sub_4FF4(&qword_563E0, &unk_3FBA8) + 36));
  *v37 = sub_1503C;
  v37[1] = v35;
  v37[2] = 0;
  v37[3] = 0;
  sub_E1E8(&v51, v44, &qword_55F08, &qword_3F140);
  return sub_E1E8(&v45, v44, &qword_563E8, &qword_3FBB8);
}

uint64_t sub_14930(uint64_t a1)
{
  v2 = sub_4FF4(&qword_55DD8, &qword_3EE10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v12 - v6;
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  type metadata accessor for SwipeToRevealMenuBarSectionViewModel();
  sub_1504C(&qword_563F0, type metadata accessor for SwipeToRevealMenuBarSectionViewModel);
  sub_3C9A4();
  swift_getKeyPath();
  sub_3CA84();

  sub_3D224();
  sub_56BC(&qword_55DD0, &qword_55DD8, &qword_3EE10);
  sub_3D074();
  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_14B40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  *a2 = v5;
  return result;
}

uint64_t sub_14BC0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_3C8A4();
}

uint64_t sub_14C34@<X0>(uint64_t a1@<X8>)
{
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v2 = qword_572B8;
  result = sub_3CF84();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_14D14(uint64_t a1)
{
  v2 = sub_3CC54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  type metadata accessor for SwipeToRevealMenuBarSectionViewModel();
  sub_1504C(&qword_563F0, type metadata accessor for SwipeToRevealMenuBarSectionViewModel);
  v11 = sub_3C994();
  v12 = *a1;
  v21 = *a1;
  v22 = *(a1 + 8);
  LOBYTE(a1) = v22;

  if ((a1 & 1) == 0)
  {
    sub_3D604();
    v13 = sub_3CE74();
    sub_3C844();

    sub_3CC44();
    swift_getAtKeyPath();
    sub_E250(&v21);
    (*(v3 + 8))(v7, v2);
    v12 = v20;
  }

  swift_getKeyPath();
  v20 = v12;
  sub_1504C(&qword_55EE0, type metadata accessor for MultitaskingAndGesturesSettingsListViewModel);
  sub_3C804();

  v15 = *(v12 + 16);
  v14 = *(v12 + 24);

  v16 = (v11 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings36SwipeToRevealMenuBarSectionViewModel_referrer);
  v17 = *(v11 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings36SwipeToRevealMenuBarSectionViewModel_referrer + 8);
  *v16 = v15;
  v16[1] = v14;
}

uint64_t sub_14F74@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 32);
  return sub_144D0(a1);
}

uint64_t sub_14FF8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  sub_E1D8();

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_1504C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_150A0()
{
  result = qword_563F8;
  if (!qword_563F8)
  {
    sub_5674(&qword_563E0, &unk_3FBA8);
    sub_1512C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_563F8);
  }

  return result;
}

unint64_t sub_1512C()
{
  result = qword_56400;
  if (!qword_56400)
  {
    sub_5674(&qword_56408, &qword_3FC30);
    sub_BBE4();
    sub_BC9C();
    sub_56BC(&qword_563A8, &qword_563A0, &unk_3F988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56400);
  }

  return result;
}

__n128 sub_151F8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1521C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_15264(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_152E0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_3CAF4();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2, v4);
  v6 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  v7 = sub_3D154();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v42[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  v13 = qword_55980;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_572B8;
  sub_3D174();
  (*(v8 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v7);
  v15 = sub_3D164();

  (*(v8 + 8))(v12, v7);
  sub_3D324();
  sub_3CA14();
  LOBYTE(v46) = 1;
  *&v42[6] = v43;
  *&v42[22] = v44;
  *&v42[38] = v45;
  v16 = (a1 + *(sub_4FF4(&qword_56530, &qword_3FF88) + 36));
  v17 = *(v2 + 20);
  v18 = enum case for RoundedCornerStyle.continuous(_:);
  v19 = sub_3CCC4();
  v20 = *(*(v19 - 8) + 104);
  v20(&v16[v17], v18, v19);
  __asm { FMOV            V0.2D, #5.0 }

  v41 = _Q0;
  *v16 = _Q0;
  *&v16[*(sub_4FF4(&qword_56538, &qword_3FF90) + 36)] = 256;
  v26 = *&v42[16];
  *(a1 + 18) = *v42;
  *a1 = v15;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 34) = v26;
  *(a1 + 50) = *&v42[32];
  *(a1 + 64) = *&v42[46];
  v20(&v6[*(v2 + 20)], v18, v19);
  *v6 = v41;
  sub_3D0C4();
  v27 = sub_3D0F4();

  sub_3C9C4();
  v28 = a1 + *(sub_4FF4(&qword_56540, &qword_3FF98) + 36);
  sub_17454(v6, v28);
  v29 = v28 + *(sub_4FF4(&qword_56548, &qword_3FFA0) + 36);
  v30 = v47;
  *v29 = v46;
  *(v29 + 16) = v30;
  *(v29 + 32) = v48;
  v31 = sub_4FF4(&qword_56550, &qword_3FFA8);
  *(v28 + *(v31 + 52)) = v27;
  *(v28 + *(v31 + 56)) = 256;
  v32 = sub_3D324();
  v34 = v33;
  sub_174B8(v6);
  v35 = (v28 + *(sub_4FF4(&qword_56558, &qword_3FFB0) + 36));
  *v35 = v32;
  v35[1] = v34;
  v36 = sub_3D324();
  v38 = v37;
  result = sub_4FF4(&qword_56560, &qword_3FFB8);
  v40 = (v28 + *(result + 36));
  *v40 = v36;
  v40[1] = v38;
  return result;
}

uint64_t sub_1570C@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  return sub_152E0(a1);
}

void sub_15718()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 mainScreen];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v43.origin.x = v6;
    v43.origin.y = v8;
    v43.size.width = v10;
    v43.size.height = v12;
    Height = CGRectGetHeight(v43);
    v14 = [v2 mainScreen];
    [v14 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v44.origin.x = v16;
    v44.origin.y = v18;
    v44.size.width = v20;
    v44.size.height = v22;
    Width = CGRectGetWidth(v44);

    if (Height >= Width)
    {
      v24 = [v2 mainScreen];
      [v24 bounds];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;

      v45.origin.x = v26;
      v45.origin.y = v28;
      v45.size.width = v30;
      v45.size.height = v32;
      CGRectGetWidth(v45);
      v33 = [v2 mainScreen];
      [v33 bounds];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;

      v46.origin.x = v35;
      v46.origin.y = v37;
      v46.size.width = v39;
      v46.size.height = v41;
      CGRectGetHeight(v46);
    }
  }

  else
  {
    v42 = *(v0 + 64);
    type metadata accessor for MultiTaskingSectionViewModel();
    sub_16C98(&qword_56480, type metadata accessor for MultiTaskingSectionViewModel);
    sub_3CB34();
    __break(1u);
  }
}

uint64_t sub_15928@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = sub_3CAE4();
  v3 = *(v2 - 8);
  v24 = v2;
  v25 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_4FF4(&qword_56410, &qword_3FCF0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v23 - v12;
  v23 = sub_4FF4(&qword_56418, &qword_3FCF8);
  v14 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23, v15);
  v17 = &v23 - v16;
  v18 = swift_allocObject();
  v19 = *(v1 + 48);
  *(v18 + 48) = *(v1 + 32);
  *(v18 + 64) = v19;
  *(v18 + 80) = *(v1 + 64);
  v20 = *(v1 + 16);
  *(v18 + 16) = *v1;
  *(v18 + 32) = v20;
  v27 = v1;
  sub_16B78(v1, &v28);
  sub_4FF4(&qword_56420, &qword_3FD00);
  sub_56BC(&qword_56428, &qword_56420, &qword_3FD00);
  sub_3D1D4();
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_3D6E4(45);

  v28 = 0xD00000000000002BLL;
  v29 = 0x8000000000043430;
  sub_3D534(*(v1 + 40));
  sub_56BC(&qword_56430, &qword_56410, &qword_3FCF0);
  sub_3D074();

  (*(v9 + 8))(v13, v8);
  sub_3CAD4();
  sub_16BB0();
  sub_16C98(&qword_56440, &type metadata accessor for PlainButtonStyle);
  v21 = v24;
  sub_3D014();
  (*(v25 + 8))(v7, v21);
  return sub_11A14(v17, &qword_56418, &qword_3FCF8);
}

void sub_15CCC(char *a1)
{
  v1 = *(a1 + 7);
  if (v1)
  {
    v2 = *a1;
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v1;
    sub_3C8A4();
    if (qword_559A0 != -1)
    {
      swift_once();
    }

    sub_1C380();
  }

  else
  {
    v4 = *(a1 + 8);
    type metadata accessor for MultiTaskingSectionViewModel();
    sub_16C98(&qword_56480, type metadata accessor for MultiTaskingSectionViewModel);
    sub_3CB34();
    __break(1u);
  }
}

uint64_t sub_15DD4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_3CCD4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_4FF4(&qword_56448, &qword_3FD08);
  return sub_15E28(a1, a2 + *(v4 + 44));
}

uint64_t sub_15E28@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_4FF4(&qword_56450, &qword_3FD10);
  v127 = *(v4 - 8);
  v128 = v4;
  v5 = *(v127 + 64);
  __chkstk_darwin(v4, v6);
  v133 = &v117 - v7;
  v124 = sub_4FF4(&qword_56458, &qword_3FD18);
  v8 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v124, v9);
  v121 = &v117 - v10;
  v119 = sub_4FF4(&qword_56460, &qword_3FD20);
  v11 = *(*(v119 - 8) + 64);
  __chkstk_darwin(v119, v12);
  v123 = &v117 - v13;
  v120 = sub_4FF4(&qword_56468, &qword_3FD28);
  v14 = *(*(v120 - 8) + 64);
  __chkstk_darwin(v120, v15);
  v126 = &v117 - v16;
  v125 = sub_4FF4(&qword_56470, &qword_3FD30);
  v17 = *(*(v125 - 8) + 64);
  v19 = __chkstk_darwin(v125, v18);
  v131 = &v117 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19, v21);
  v122 = &v117 - v23;
  __chkstk_darwin(v22, v24);
  v130 = &v117 - v25;
  v118 = sub_4FF4(&qword_56478, &qword_3FD38);
  v26 = *(*(v118 - 8) + 64);
  v28 = __chkstk_darwin(v118, v27);
  v129 = &v117 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28, v30);
  v134 = &v117 - v31;
  v32 = *(a1 + 7);
  if (!v32)
  {
    v116 = *(a1 + 8);
    type metadata accessor for MultiTaskingSectionViewModel();
    sub_16C98(&qword_56480, type metadata accessor for MultiTaskingSectionViewModel);
    result = sub_3CB34();
    __break(1u);
    return result;
  }

  v33 = 0xED0000656D695441;
  v34 = 0x7441707041656E4FLL;
  swift_getKeyPath();
  swift_getKeyPath();
  v35 = v32;
  sub_3C894();

  v36 = v150;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  v132 = a2;
  if ((v150 & 1) == 0)
  {

    v38 = *a1;
    goto LABEL_7;
  }

  v37 = sub_32AC4();

  v38 = *a1;
  if ((v37 & 1) == 0)
  {
LABEL_7:
    if (v38 > 1)
    {
      if (v38 == 2)
      {
        v33 = 0x8000000000043480;
        v34 = 0xD000000000000012;
      }

      else
      {
        v34 = 0x6E614D6567617453;
        v33 = 0xEC00000072656761;
      }
    }

    else if (v38)
    {
      v34 = 0x694D6E6565726353;
      v33 = 0xEF676E69726F7272;
    }

    sub_15718();
    LOBYTE(v141[0]) = 1;
    *&v144 = v34;
    *(&v144 + 1) = v33;
    *&v145 = v39;
    BYTE8(v145) = 1;
    HIBYTE(v149) = 1;
    goto LABEL_14;
  }

  if (*a1 <= 1u || v38 == 2)
  {
    v111 = sub_3D804();

    if (v111)
    {
      goto LABEL_24;
    }

    goto LABEL_7;
  }

LABEL_24:
  v112 = sub_3CC94();
  LOBYTE(v135) = 0;
  sub_15718();
  v114 = v113;
  sub_15718();
  LOBYTE(v141[0]) = 0;
  *&v144 = v112;
  *(&v144 + 1) = 0x4010000000000000;
  LOBYTE(v145) = v135;
  *(&v145 + 1) = 0xD00000000000001DLL;
  *&v146 = 0x80000000000434A0;
  *(&v146 + 1) = v114;
  LOBYTE(v147) = 1;
  *(&v147 + 1) = 0xD00000000000001DLL;
  *&v148 = 0x80000000000434C0;
  *(&v148 + 1) = v115;
  v149 = 65537;
LABEL_14:
  sub_4FF4(&qword_56488, &qword_3FDD0);
  sub_4FF4(&qword_56490, &qword_3FDD8);
  sub_16CF0();
  sub_16DA8();
  sub_3CDB4();
  v40 = *(a1 + 1);
  v41 = *(a1 + 2);
  v42 = a1[24];
  v43 = *(a1 + 4);
  v44 = qword_55980;

  if (v44 != -1)
  {
    swift_once();
  }

  v45 = qword_572B8;
  v46 = sub_3CF84();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  KeyPath = swift_getKeyPath();
  v54 = sub_3CEF4();
  v55 = swift_getKeyPath();
  LOBYTE(v141[0]) = v50 & 1;
  *&v144 = v46;
  *(&v144 + 1) = v48;
  LOBYTE(v145) = v50 & 1;
  *(&v145 + 1) = v52;
  *&v146 = KeyPath;
  BYTE8(v146) = 1;
  *&v147 = v55;
  *(&v147 + 1) = v54;
  sub_3CED4();
  sub_4FF4(&qword_564C8, &unk_42240);
  sub_16F8C();
  v56 = v134;
  sub_3D004();
  v143[0] = v144;
  v143[1] = v145;
  v143[2] = v146;
  v143[3] = v147;
  sub_11A14(v143, &qword_564C8, &unk_42240);
  v57 = sub_3D104();
  v58 = swift_getKeyPath();
  v59 = (v56 + *(sub_4FF4(&qword_56508, &qword_3FE98) + 36));
  *v59 = v58;
  v59[1] = v57;
  LOBYTE(v57) = sub_3CEB4();
  sub_3C924();
  v60 = v56 + *(v118 + 36);
  *v60 = v57;
  *(v60 + 8) = v61;
  *(v60 + 16) = v62;
  *(v60 + 24) = v63;
  *(v60 + 32) = v64;
  *(v60 + 40) = 0;
  v65 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  sub_2FF80(v65, v144);
  v66 = sub_3D144();
  v67 = sub_3CEE4();
  v68 = swift_getKeyPath();
  *&v144 = v66;
  *(&v144 + 1) = v68;
  *&v145 = v67;
  sub_3CED4();
  sub_4FF4(&qword_56510, &qword_3FEE8);
  sub_1715C();
  sub_3D004();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  if (sub_2FF80(v65, v144))
  {
    v69 = sub_3D0B4();
  }

  else
  {
    v70 = [objc_opt_self() tertiaryLabelColor];
    v69 = sub_3D114();
  }

  v71 = v69;
  v72 = v132;
  v73 = swift_getKeyPath();
  v74 = v121;
  (*(v127 + 32))(v121, v133, v128);
  v75 = (v74 + *(v124 + 36));
  *v75 = v73;
  v75[1] = v71;
  v76 = v123;
  sub_17214(v74, v123, &qword_56458, &qword_3FD18);
  *(v76 + *(v119 + 36)) = 256;
  LOBYTE(v71) = sub_3CE94();
  sub_3C924();
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v85 = v76;
  v86 = v126;
  sub_17214(v85, v126, &qword_56460, &qword_3FD20);
  v87 = v86 + *(v120 + 36);
  *v87 = v71;
  *(v87 + 8) = v78;
  *(v87 + 16) = v80;
  *(v87 + 24) = v82;
  *(v87 + 32) = v84;
  *(v87 + 40) = 0;
  LOBYTE(v71) = sub_3CEA4();
  sub_3C924();
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v95 = v94;
  v96 = v86;
  v97 = v122;
  sub_17214(v96, v122, &qword_56468, &qword_3FD28);
  v98 = v97 + *(v125 + 36);
  *v98 = v71;
  *(v98 + 8) = v89;
  *(v98 + 16) = v91;
  *(v98 + 24) = v93;
  *(v98 + 32) = v95;
  *(v98 + 40) = 0;
  v99 = v130;
  sub_17214(v97, v130, &qword_56470, &qword_3FD30);
  v137 = v152;
  v138 = v153;
  v139 = v154;
  v140 = v155;
  v135 = v150;
  v136 = v151;
  v100 = v134;
  v101 = v129;
  sub_E1E8(v134, v129, &qword_56478, &qword_3FD38);
  v102 = v131;
  sub_E1E8(v99, v131, &qword_56470, &qword_3FD30);
  v103 = v138;
  v141[2] = v137;
  v141[3] = v138;
  v104 = v139;
  v141[4] = v139;
  v105 = v140;
  v142 = v140;
  v106 = v135;
  v107 = v136;
  v141[0] = v135;
  v141[1] = v136;
  *(v72 + 32) = v137;
  *(v72 + 48) = v103;
  *(v72 + 64) = v104;
  *(v72 + 80) = v105;
  *v72 = v106;
  *(v72 + 16) = v107;
  v108 = sub_4FF4(&qword_56520, &qword_3FEF0);
  sub_E1E8(v101, v72 + v108[12], &qword_56478, &qword_3FD38);
  v109 = v72 + v108[16];
  *v109 = 0;
  *(v109 + 8) = 0;
  sub_E1E8(v102, v72 + v108[20], &qword_56470, &qword_3FD30);
  sub_1727C(v141, &v144);
  sub_11A14(v99, &qword_56470, &qword_3FD30);
  sub_11A14(v100, &qword_56478, &qword_3FD38);
  sub_11A14(v102, &qword_56470, &qword_3FD30);
  sub_11A14(v101, &qword_56478, &qword_3FD38);
  v146 = v137;
  v147 = v138;
  v148 = v139;
  v149 = v140;
  v144 = v135;
  v145 = v136;
  return sub_11A14(&v144, &qword_56528, &qword_3FEF8);
}

uint64_t sub_16AD4@<X0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 8);
  v3 = *v1;
  v4 = v1[1];
  return sub_15928(a1);
}

uint64_t sub_16B18()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 88, 7);
}

unint64_t sub_16BB0()
{
  result = qword_56438;
  if (!qword_56438)
  {
    sub_5674(&qword_56418, &qword_3FCF8);
    sub_56BC(&qword_56430, &qword_56410, &qword_3FCF0);
    sub_16C98(&qword_55DE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56438);
  }

  return result;
}

uint64_t sub_16C98(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_16CF0()
{
  result = qword_56498;
  if (!qword_56498)
  {
    sub_5674(&qword_56488, &qword_3FDD0);
    sub_56BC(&qword_564A0, &qword_564A8, &qword_3FDE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56498);
  }

  return result;
}

unint64_t sub_16DA8()
{
  result = qword_564B0;
  if (!qword_564B0)
  {
    sub_5674(&qword_56490, &qword_3FDD8);
    sub_16E34();
    sub_16E88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_564B0);
  }

  return result;
}

unint64_t sub_16E34()
{
  result = qword_564B8;
  if (!qword_564B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_564B8);
  }

  return result;
}

unint64_t sub_16E88()
{
  result = qword_564C0;
  if (!qword_564C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_564C0);
  }

  return result;
}

uint64_t sub_16EDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_3CBC4();
  *a1 = result;
  return result;
}

uint64_t sub_16F08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_3CBC4();
  *a1 = result;
  return result;
}

unint64_t sub_16F8C()
{
  result = qword_564D0;
  if (!qword_564D0)
  {
    sub_5674(&qword_564C8, &unk_42240);
    sub_17044();
    sub_56BC(&qword_564F8, &qword_56500, &qword_3FE60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_564D0);
  }

  return result;
}

unint64_t sub_17044()
{
  result = qword_564D8;
  if (!qword_564D8)
  {
    sub_5674(&qword_564E0, &qword_3FE50);
    sub_56BC(&qword_564E8, &qword_564F0, &qword_3FE58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_564D8);
  }

  return result;
}

uint64_t sub_170FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3CB74();
  *a1 = result;
  return result;
}

uint64_t sub_17128(uint64_t *a1)
{
  v1 = *a1;

  return sub_3CB84();
}

unint64_t sub_1715C()
{
  result = qword_56518;
  if (!qword_56518)
  {
    sub_5674(&qword_56510, &qword_3FEE8);
    sub_56BC(&qword_564F8, &qword_56500, &qword_3FE60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56518);
  }

  return result;
}

uint64_t sub_17214(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_4FF4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1727C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4FF4(&qword_56528, &qword_3FEF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_172EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_17334(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_17384()
{
  sub_5674(&qword_56418, &qword_3FCF8);
  sub_3CAE4();
  sub_16BB0();
  sub_16C98(&qword_56440, &type metadata accessor for PlainButtonStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_17454(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CAF4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_174B8(uint64_t a1)
{
  v2 = sub_3CAF4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_17518()
{
  result = qword_56568;
  if (!qword_56568)
  {
    sub_5674(&qword_56540, &qword_3FF98);
    sub_175D0();
    sub_56BC(&qword_565A0, &qword_56560, &qword_3FFB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56568);
  }

  return result;
}

unint64_t sub_175D0()
{
  result = qword_56570;
  if (!qword_56570)
  {
    sub_5674(&qword_56530, &qword_3FF88);
    sub_17688();
    sub_56BC(&qword_56598, &qword_56538, &qword_3FF90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56570);
  }

  return result;
}

unint64_t sub_17688()
{
  result = qword_56578;
  if (!qword_56578)
  {
    sub_5674(&qword_56580, &qword_3FFC0);
    sub_17714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56578);
  }

  return result;
}

unint64_t sub_17714()
{
  result = qword_56588;
  if (!qword_56588)
  {
    sub_5674(&qword_56590, &qword_3FFC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56588);
  }

  return result;
}

unint64_t sub_177CC()
{
  result = qword_56640;
  if (!qword_56640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56640);
  }

  return result;
}

uint64_t sub_1783C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = sub_3CA74();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = sub_3C6A4();
  v3[12] = v7;
  v8 = *(v7 - 8);
  v3[13] = v8;
  v9 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v10 = sub_3C6E4();
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v13 = sub_3C7C4();
  v3[19] = v13;
  v14 = *(v13 - 8);
  v3[20] = v14;
  v15 = *(v14 + 64) + 15;
  v3[21] = swift_task_alloc();
  v16 = *(*(sub_4FF4(&qword_56660, &qword_40090) - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  sub_3D594();
  v3[25] = sub_3D584();
  v18 = sub_3D564();

  return _swift_task_switch(sub_17AA4, v18, v17);
}

uint64_t sub_17AA4()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];
  v7 = v0[16];
  v8 = v0[17];
  v9 = v0[7];

  sub_3D444();
  sub_3C6C4();
  (*(v5 + 8))(v4, v6);
  sub_18328(v2, v3);
  v10 = *(v8 + 48);
  if (v10(v3, 1, v7) == 1)
  {
    sub_18398(v0[23]);
  }

  else
  {
    (*(v0[17] + 32))(v0[18], v0[23], v0[16]);
    result = sub_3C6B4();
    if (result)
    {
      v12 = result;
      v67 = v10;
      v13 = *(result + 16);
      if (v13)
      {
        v14 = 0;
        v15 = v0[13];
        v16 = (v15 + 8);
        while (1)
        {
          if (v14 >= *(v12 + 16))
          {
LABEL_42:
            __break(1u);
            return result;
          }

          (*(v15 + 16))(v0[14], v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v14, v0[12]);
          if (sub_3C684() == 0x7265727265666572 && v17 == 0xE800000000000000)
          {
            break;
          }

          v19 = sub_3D804();

          if (v19)
          {
            goto LABEL_16;
          }

          ++v14;
          result = (*v16)(v0[14], v0[12]);
          if (v13 == v14)
          {
            goto LABEL_13;
          }
        }

LABEL_16:
        v20 = v0[14];
        v21 = v0[15];
        v22 = v0[12];
        v23 = v0[13];

        (*(v23 + 32))(v21, v20, v22);
        v24 = sub_3C694();
        v26 = v25;
        (*v16)(v21, v22);
        v27 = v26;
        v29 = v0[17];
        v28 = v0[18];
        v30 = v0[16];
        if (v27)
        {
          v31 = v0[8];
          sub_C50C(v24, v27);
        }

        (*(v29 + 8))(v28, v30);
      }

      else
      {
LABEL_13:
        (*(v0[17] + 8))(v0[18], v0[16]);
      }

      v10 = v67;
    }

    else
    {
      (*(v0[17] + 8))(v0[18], v0[16]);
    }
  }

  v32 = v0[22];
  v33 = v0[16];
  sub_18328(v0[24], v32);
  v34 = v10(v32, 1, v33);
  v35 = v0[22];
  if (v34 == 1)
  {
    sub_18398(v0[22]);
  }

  else
  {
    v36 = v0[16];
    v37 = v0[17];
    v38 = sub_3C6D4();
    v40 = v39;
    (*(v37 + 8))(v35, v36);
    v0[2] = v38;
    v0[3] = v40;
    v0[4] = 47;
    v0[5] = 0xE100000000000000;
    sub_18400();
    v41 = sub_3D664();

    v42 = 0;
    v43 = *(v41 + 16);
LABEL_23:
    v44 = (v41 + 40 + 16 * v42);
    while (v43 != v42)
    {
      if (v42 >= *(v41 + 16))
      {
        __break(1u);
        goto LABEL_42;
      }

      v46 = *(v44 - 1);
      v45 = *v44;
      v44 += 2;
      ++v42;
      v47 = HIBYTE(v45) & 0xF;
      if ((v45 & 0x2000000000000000) == 0)
      {
        v47 = v46 & 0xFFFFFFFFFFFFLL;
      }

      if (v47)
      {

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_18454(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
        }

        v49 = *(&_swiftEmptyArrayStorage + 2);
        v48 = *(&_swiftEmptyArrayStorage + 3);
        if (v49 >= v48 >> 1)
        {
          result = sub_18454((v48 > 1), v49 + 1, 1);
        }

        *(&_swiftEmptyArrayStorage + 2) = v49 + 1;
        v50 = &_swiftEmptyArrayStorage + 16 * v49;
        *(v50 + 4) = v46;
        *(v50 + 5) = v45;
        goto LABEL_23;
      }
    }

    if (*(&_swiftEmptyArrayStorage + 2))
    {
      v51 = *(&_swiftEmptyArrayStorage + 4);
      v52 = *(&_swiftEmptyArrayStorage + 5);

      v53 = sub_D13C(v51, v52);
      if (v53 != 10)
      {
        v54 = v0[8];
        sub_C71C(v53);
      }
    }

    else
    {
    }
  }

  v56 = v0[23];
  v55 = v0[24];
  v58 = v0[21];
  v57 = v0[22];
  v65 = v0[18];
  v66 = v0[15];
  v68 = v0[14];
  v59 = v0[10];
  v60 = v0[11];
  v61 = v0[9];
  v63 = v0[6];
  v62 = v0[7];
  sub_3D434();
  sub_3D454();
  (*(v59 + 8))(v60, v61);
  sub_18398(v55);

  v64 = v0[1];

  return v64();
}

uint64_t sub_17FD4()
{
  v1 = sub_4FF4(&qword_56648, &qword_40078);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v9 - v5;
  v7 = *v0;
  type metadata accessor for MultitaskingAndGesturesSettingsList();
  sub_181C0();

  sub_3D464();
  sub_182C4();

  sub_3D424();
  return (*(v2 + 8))(v6, v1);
}

uint64_t sub_1812C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for MultitaskingAndGesturesSettingsListViewModel();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 10;
  result = sub_3C814();
  *a1 = v5;
  return result;
}

uint64_t sub_18184@<X0>(char *a1@<X8>)
{

  return sub_10DB0(v2, a1);
}

unint64_t sub_181C0()
{
  result = qword_56650;
  if (!qword_56650)
  {
    type metadata accessor for MultitaskingAndGesturesSettingsList();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56650);
  }

  return result;
}

uint64_t sub_18218(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_5440;

  return sub_1783C(a1, a2, v2);
}

unint64_t sub_182C4()
{
  result = qword_56658;
  if (!qword_56658)
  {
    sub_5674(&qword_56648, &qword_40078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56658);
  }

  return result;
}

uint64_t sub_18328(uint64_t a1, uint64_t a2)
{
  v4 = sub_4FF4(&qword_56660, &qword_40090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18398(uint64_t a1)
{
  v2 = sub_4FF4(&qword_56660, &qword_40090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_18400()
{
  result = qword_56668;
  if (!qword_56668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56668);
  }

  return result;
}

char *sub_18454(char *a1, int64_t a2, char a3)
{
  result = sub_18474(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18474(char *result, int64_t a2, char a3, char *a4)
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
    sub_4FF4(&qword_56670, &qword_40098);
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

uint64_t sub_18594()
{
  sub_5674(&qword_56648, &qword_40078);
  sub_182C4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_185F8()
{
  sub_3D524();
}

Swift::Int sub_1873C()
{
  sub_3D844();
  sub_3D524();

  return sub_3D864();
}

uint64_t sub_188BC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B1E0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_188EC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7472617473;
  v5 = 0xEB00000000697261;
  v6 = 0x666153206E65704FLL;
  if (v2 != 6)
  {
    v6 = 0x6E7275746572;
    v5 = 0xE600000000000000;
  }

  v7 = 0x8000000000042430;
  v8 = 0xD000000000000018;
  if (v2 != 4)
  {
    v8 = 0xD000000000000019;
    v7 = 0x8000000000042450;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xED00007365676173;
  v10 = 0x73654D206E65704FLL;
  if (v2 != 2)
  {
    v10 = 0xD000000000000019;
    v9 = 0x8000000000042410;
  }

  if (*v1)
  {
    v4 = 0xD000000000000016;
    v3 = 0x80000000000423E0;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_18A10(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x73654D2065766F4DLL;
    v7 = 0x6E7275746572;
    if (a1 == 10)
    {
      v7 = 0xD000000000000014;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000015;
    v9 = 0x73654D206E65704FLL;
    if (a1 != 7)
    {
      v9 = 0x4D20657A69736552;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7472617473;
    v2 = 0x666153206E65704FLL;
    v3 = 0x5320657A69736552;
    if (a1 != 4)
    {
      v3 = 0x6661532065766F4DLL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6F48206570697753;
    if (a1 != 1)
    {
      v4 = 0xD000000000000019;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_18BD4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_18A10(*a1);
  v5 = v4;
  if (v3 == sub_18A10(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_3D804();
  }

  return v8 & 1;
}

Swift::Int sub_18C5C()
{
  v1 = *v0;
  sub_3D844();
  sub_18A10(v1);
  sub_3D524();

  return sub_3D864();
}

uint64_t sub_18CC0()
{
  sub_18A10(*v0);
  sub_3D524();
}

Swift::Int sub_18D14()
{
  v1 = *v0;
  sub_3D844();
  sub_18A10(v1);
  sub_3D524();

  return sub_3D864();
}

uint64_t sub_18D74@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B22C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_18DA4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_18A10(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_18DE0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x73654D2070617753;
  v4 = 0xED00007365676173;
  if (v2 != 1)
  {
    v3 = 0x6E7275746572;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7472617473;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x73654D2070617753;
  v8 = 0xED00007365676173;
  if (*a2 != 1)
  {
    v7 = 0x6E7275746572;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7472617473;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_3D804();
  }

  return v11 & 1;
}

Swift::Int sub_18EF0()
{
  v1 = *v0;
  sub_3D844();
  sub_3D524();

  return sub_3D864();
}

uint64_t sub_18F98()
{
  *v0;
  *v0;
  sub_3D524();
}

Swift::Int sub_1902C()
{
  v1 = *v0;
  sub_3D844();
  sub_3D524();

  return sub_3D864();
}

uint64_t sub_190D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B278(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_19100(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xED00007365676173;
  v5 = 0x73654D2070617753;
  if (v2 != 1)
  {
    v5 = 0x6E7275746572;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7472617473;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_19174(unsigned __int8 a1)
{
  if (!(a1 >> 6))
  {
    return 0x7060504030201uLL >> (8 * a1);
  }

  if (a1 >> 6 == 1)
  {
    return aAbcdefghijk[a1 & 0x3F];
  }

  return 0x808281u >> (8 * (a1 & 0x3F));
}

uint64_t sub_191D0(unsigned __int8 a1)
{
  if (!(a1 >> 6))
  {
    if (a1 <= 3u)
    {
      v2 = 0x7472617473;
      v3 = 0x73654D206E65704FLL;
      if (a1 != 2)
      {
        v3 = 0xD000000000000019;
      }

      if (a1)
      {
        v2 = 0xD000000000000016;
      }

      v6 = a1 <= 1u;
      goto LABEL_19;
    }

    v8 = 0x666153206E65704FLL;
    if (a1 != 6)
    {
      v8 = 0x6E7275746572;
    }

    v10 = 0xD000000000000018;
    if (a1 != 4)
    {
      v10 = 0xD000000000000019;
    }

    v12 = a1 <= 5u;
    goto LABEL_42;
  }

  if (a1 >> 6 == 1)
  {
    v1 = a1 & 0x3F;
    if (v1 <= 5)
    {
      v2 = 0x7472617473;
      v3 = 0x666153206E65704FLL;
      v4 = 0x5320657A69736552;
      if (v1 != 4)
      {
        v4 = 0x6661532065766F4DLL;
      }

      if (v1 != 3)
      {
        v3 = v4;
      }

      v5 = 0x6F48206570697753;
      if (v1 != 1)
      {
        v5 = 0xD000000000000019;
      }

      if ((a1 & 0x3F) != 0)
      {
        v2 = v5;
      }

      v6 = (a1 & 0x3Fu) <= 2;
LABEL_19:
      if (v6)
      {
        return v2;
      }

      else
      {
        return v3;
      }
    }

    v8 = 0x73654D2065766F4DLL;
    v9 = 0xD000000000000014;
    if (v1 != 10)
    {
      v9 = 0x6E7275746572;
    }

    if (v1 != 9)
    {
      v8 = v9;
    }

    v10 = 0xD000000000000015;
    v11 = 0x73654D206E65704FLL;
    if (v1 != 7)
    {
      v11 = 0x4D20657A69736552;
    }

    if (v1 != 6)
    {
      v10 = v11;
    }

    v12 = (a1 & 0x3Fu) <= 8;
LABEL_42:
    if (v12)
    {
      return v10;
    }

    else
    {
      return v8;
    }
  }

  if ((a1 & 0x3F) == 0)
  {
    return 0x7472617473;
  }

  if ((a1 & 0x3F) == 1)
  {
    return 0x73654D2070617753;
  }

  return 0x6E7275746572;
}

uint64_t sub_19508()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  return v1;
}

uint64_t sub_1957C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  return v1;
}

id sub_195FC(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_4FF4(&qword_55AD8, &unk_3E450);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v13 - v8;
  v10 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings44MultitaskingWindowManagementPackageViewModel__isAnimating;
  v15 = 0;
  sub_3C874();
  (*(v5 + 32))(&v1[v10], v9, v4);
  *&v1[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings44MultitaskingWindowManagementPackageViewModel_animationTask] = 0;
  if (a1)
  {
    swift_beginAccess();
    if (a1 == 1)
    {
      v11 = 64;
    }

    else
    {
      v11 = 0x80;
    }

    v14 = v11;
  }

  else
  {
    swift_beginAccess();
    v14 = 0;
  }

  sub_3C874();
  swift_endAccess();
  v13.receiver = v1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, "init");
}

uint64_t sub_19794()
{
  v1 = v0;
  v2 = sub_4FF4(&qword_55AC8, &qword_3E440);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v16[-v5];
  v7 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings44MultitaskingWindowManagementPackageViewModel_animationTask;
  if (*&v0[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings44MultitaskingWindowManagementPackageViewModel_animationTask])
  {

    sub_3D5C4();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v16[15] = 1;
  v8 = v0;
  sub_3C8A4();
  v9 = sub_3D5B4();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  sub_3D594();
  v10 = v8;
  v11 = sub_3D584();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v10;
  v13 = sub_1E9E0(0, 0, v6, &unk_40558, v12);
  v14 = *&v1[v7];
  *&v1[v7] = v13;
}

uint64_t sub_19954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = sub_3D704();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v8 = sub_3D714();
  v4[12] = v8;
  v9 = *(v8 - 8);
  v4[13] = v9;
  v10 = *(v9 + 64) + 15;
  v4[14] = swift_task_alloc();
  sub_3D594();
  v4[15] = sub_3D584();
  v12 = sub_3D564();
  v4[16] = v12;
  v4[17] = v11;

  return _swift_task_switch(sub_19AB0, v12, v11);
}

uint64_t sub_19AB0()
{
  v1 = *(v0 + 56);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  if (*(v0 + 33) == 1 && (sub_3D5D4() & 1) == 0)
  {
    v8 = *(v0 + 56);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_3C894();

    v9 = *(v0 + 34);
    v10 = v9 >> 6;
    v11 = &unk_40630 + 8 * v9;
    v12 = v9 & 0x3F;
    v13 = &unk_405B8 + 8 * v12;
    v14 = (&unk_40618 + 8 * v12);
    if (v10 == 1)
    {
      v14 = v13;
    }

    if (!v10)
    {
      v14 = v11;
    }

    v15 = *v14;
    v16 = *(v0 + 112);
    v17 = sub_3D874();
    v19 = v18;
    sub_3D834();
    *(v0 + 40) = v17;
    *(v0 + 48) = v19;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;

    return _swift_task_switch(sub_19C80, 0, 0);
  }

  else
  {
    v3 = *(v0 + 112);
    v2 = *(v0 + 120);
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_19C80()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  v7 = sub_1B3C8(&qword_56720, &type metadata accessor for ContinuousClock);
  sub_3D814();
  sub_1B3C8(&qword_56728, &type metadata accessor for ContinuousClock.Instant);
  sub_3D724();
  v8 = *(v5 + 8);
  v0[18] = v8;
  v0[19] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_19E04;
  v11 = v0[14];
  v13 = v0[11];
  v12 = v0[12];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v13, v0 + 2, v12, v7);
}

uint64_t sub_19E04()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v16 = *v1;

  if (v0)
  {
    v5 = v2[18];
    v4 = v2[19];
    v6 = v2[11];
    v7 = v2[8];

    v5(v6, v7);
    v8 = sub_1A1F0;
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v11 = v2[19];
    v13 = v2[13];
    v12 = v2[14];
    v14 = v2[12];
    (v2[18])(v2[11], v2[8]);
    (*(v13 + 8))(v12, v14);
    v9 = v2[16];
    v10 = v2[17];
    v8 = sub_19F78;
  }

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_19F78()
{
  if (sub_3D5D4())
  {
    goto LABEL_4;
  }

  v1 = *(v0 + 56);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  v2 = sub_19174(*(v0 + 35));
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 36) = v2;
  v3 = v1;
  sub_3C8A4();
  v4 = *(v0 + 56);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  if (*(v0 + 33) & 1) == 0 || (sub_3D5D4())
  {
LABEL_4:
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v8 = *(v0 + 80);
    v7 = *(v0 + 88);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 56);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_3C894();

    v12 = *(v0 + 34);
    v13 = v12 >> 6;
    v14 = &unk_40630 + 8 * v12;
    v15 = v12 & 0x3F;
    v16 = &unk_405B8 + 8 * v15;
    v17 = (&unk_40618 + 8 * v15);
    if (v13 == 1)
    {
      v17 = v16;
    }

    if (!v13)
    {
      v17 = v14;
    }

    v18 = *v17;
    v19 = *(v0 + 112);
    v20 = sub_3D874();
    v22 = v21;
    sub_3D834();
    *(v0 + 40) = v20;
    *(v0 + 48) = v22;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;

    return _swift_task_switch(sub_19C80, 0, 0);
  }
}

uint64_t sub_1A1F0()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[16];
  v2 = v0[17];

  return _swift_task_switch(sub_1B410, v1, v2);
}

uint64_t sub_1A264()
{
  if (*&v0[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings44MultitaskingWindowManagementPackageViewModel_animationTask])
  {
    v1 = *&v0[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings44MultitaskingWindowManagementPackageViewModel_animationTask];

    sub_3D5C4();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v0;
  sub_3C8A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_3C8A4();
}

uint64_t type metadata accessor for MultitaskingWindowManagementPackageViewModel()
{
  result = qword_566B8;
  if (!qword_566B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4F8()
{
  sub_A260(319, &qword_566C8);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_A260(319, &qword_55A10);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}
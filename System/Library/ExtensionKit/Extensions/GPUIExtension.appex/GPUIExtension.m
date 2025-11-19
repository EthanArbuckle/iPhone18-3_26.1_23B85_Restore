uint64_t sub_100001968()
{
  v1 = v0;
  v2 = sub_1000032E4(&qword_10000C4D0, &qword_100006368);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - v4;
  v6 = sub_100005BDC();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_100005BCC();
  v10 = *(v0 + 16);
  *(v1 + 16) = v9;

  v11 = sub_100005D9C();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  sub_100005D7C();

  v12 = sub_100005D6C();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v9;
  sub_100002DAC(0, 0, v5, &unk_100006378, v13);
}

uint64_t sub_100001AC8@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = sub_1000032E4(&qword_10000C4E0, &qword_100006398);
  v2 = *(v1 - 8);
  v37 = v1;
  v38 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v28 - v4;
  v6 = sub_1000032E4(&qword_10000C4E8, &qword_1000063A0);
  v7 = *(v6 - 8);
  v35 = v6;
  v36 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v28 - v9;
  v11 = sub_1000032E4(&qword_10000C4F0, &qword_1000063A8);
  v12 = *(v11 - 8);
  v33 = v11;
  v34 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  v30 = sub_1000032E4(&qword_10000C4F8, &qword_1000063B0);
  v32 = *(v30 - 8);
  v16 = *(v32 + 64);
  __chkstk_darwin(v30);
  v18 = &v28 - v17;
  v29 = sub_1000032E4(&qword_10000C500, &qword_1000063B8);
  v31 = *(v29 - 8);
  v19 = *(v31 + 64);
  __chkstk_darwin(v29);
  v21 = &v28 - v20;

  sub_1000032E4(&qword_10000C508, &unk_1000063C0);
  sub_10000398C();
  sub_100005B9C();

  sub_100005CDC();

  sub_100005CCC();

  sub_100005CAC();

  sub_100005C9C();
  sub_100003C2C(&qword_10000C520, &qword_10000C500, &qword_1000063B8);
  sub_100003C2C(&qword_10000C528, &qword_10000C4F8, &qword_1000063B0);
  sub_100003C2C(&qword_10000C530, &qword_10000C4F0, &qword_1000063A8);
  sub_100003C2C(&qword_10000C538, &qword_10000C4E8, &qword_1000063A0);
  sub_100003C2C(&unk_10000C540, &qword_10000C4E0, &qword_100006398);
  v22 = v37;
  v23 = v35;
  v24 = v29;
  v25 = v30;
  v26 = v33;
  sub_100005BBC();
  (*(v38 + 8))(v5, v22);
  (*(v36 + 8))(v10, v23);
  (*(v34 + 8))(v15, v26);
  (*(v32 + 8))(v18, v25);
  return (*(v31 + 8))(v21, v24);
}

uint64_t sub_100002074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v25 = a2;
  v24 = sub_100005B1C();
  v2 = *(v24 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v24);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005C1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100005C2C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, enum case for CreationViewStyle.modalSheetEditor(_:), v11);
  v16 = sub_100002388(v15);
  (*(v12 + 8))(v15, v11);

  v17 = v23;
  sub_100005CBC();
  (*(v2 + 104))(v5, enum case for ImagePlaygroundScene.Identifier.editor(_:), v24);

  sub_100005C0C();
  sub_100003AC4(&qword_10000C518, 255, &type metadata accessor for PickerEditorView);
  v18 = v25;
  sub_100005D0C();
  (*(v7 + 8))(v10, v6);
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = v17;
  v20 = (v18 + *(sub_1000032E4(&qword_10000C508, &unk_1000063C0) + 36));
  *v20 = sub_100003CD4;
  v20[1] = v19;
  v20[2] = 0;
  v20[3] = 0;
}

uint64_t sub_100002388(uint64_t a1)
{
  v2 = sub_100005C2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (__chkstk_darwin)();
  v36 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v32 - v7;
  v9 = sub_100005C5C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v34 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v32 - v14;
  v16 = [objc_allocWithZone(type metadata accessor for AppleConnectAuthenticator()) init];
  v32[1] = [objc_allocWithZone(GPAppleConnectTokenProvider) initWithAuthenticatingProtocol:v16];

  v17 = sub_100005C8C();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v32[0] = sub_100005C7C();
  v20 = *(v3 + 16);
  v35 = a1;
  v20(v8, a1, v2);
  v21 = (*(v3 + 88))(v8, v2);
  if (v21 == enum case for CreationViewStyle.modalSheetEditorAndPickerSingleSelection(_:))
  {
    (*(v10 + 104))(v15, enum case for PhotoGridViewModel.PickerMode.singleSelection(_:), v9);
  }

  else
  {
    v22 = *(v10 + 104);
    if (v21 == enum case for CreationViewStyle.modalSheetEditorAndPickerMultiSelection(_:))
    {
      v22(v15, enum case for PhotoGridViewModel.PickerMode.multiSelection(_:), v9);
    }

    else
    {
      v22(v15, enum case for PhotoGridViewModel.PickerMode.none(_:), v9);
      (*(v3 + 8))(v8, v2);
    }
  }

  v23 = *(v33 + 16);
  *(v33 + 16) = 0;
  if (!v23)
  {
    v24 = sub_100005BDC();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    sub_100005BCC();
  }

  v20(v36, v35, v2);
  (*(v10 + 16))(v34, v15, v9);
  v27 = sub_100005B8C();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = sub_100005B6C();
  (*(v10 + 8))(v15, v9);
  return v30;
}

uint64_t sub_100002718()
{
  sub_100005B4C();
  sub_100005C3C();

  swift_unknownObjectRetain();
  sub_100005B7C();
  sub_100005B4C();
  swift_unknownObjectRetain();
  sub_100005C4C();
}

uint64_t sub_1000027A4@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X2>, unsigned int *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v31 = a4;
  v32 = a5;
  v28 = a3;
  v29 = a6;
  v30 = a1;
  v27 = sub_100005B1C();
  v7 = *(v27 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v27);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100005C1C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100005C2C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 104))(v20, *a2, v16);
  v21 = sub_100002388(v20);
  (*(v17 + 8))(v20, v16);
  (*(v7 + 104))(v10, *v28, v27);

  sub_100005C0C();
  sub_100003AC4(&qword_10000C518, 255, &type metadata accessor for PickerEditorView);
  v23 = v29;
  v22 = v30;
  sub_100005D0C();
  (*(v12 + 8))(v15, v11);
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v24 + 24) = v21;
  v25 = (v23 + *(sub_1000032E4(&qword_10000C508, &unk_1000063C0) + 36));
  *v25 = v32;
  v25[1] = v24;
  v25[2] = 0;
  v25[3] = 0;
}

uint64_t sub_100002A8C()
{

  sub_100005CBC();
  sub_100005B4C();
  sub_100005C3C();

  swift_unknownObjectRetain();
  sub_100005B7C();
  sub_100005B5C();
  swift_unknownObjectRetain();
  sub_100005C6C();

  sub_100005B4C();
  swift_unknownObjectRetain();
  sub_100005C4C();
}

uint64_t sub_100002B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_100005D7C();
  v4[3] = sub_100005D6C();
  sub_100005BFC();
  v6 = async function pointer to static ServicesStartup.preWarmServices(in:)[1];
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_100002C10;

  return static ServicesStartup.preWarmServices(in:)(a4);
}

uint64_t sub_100002C10()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_100005D5C();

  return _swift_task_switch(sub_100002D4C, v5, v4);
}

uint64_t sub_100002D4C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100002DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000032E4(&qword_10000C4D0, &qword_100006368);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100003514(a3, v27 - v11);
  v13 = sub_100005D9C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100003584(v12);
  }

  else
  {
    sub_100005D8C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_100005D5C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_100005D4C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100003584(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100003584(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10000306C()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_1000030C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003AC4(&qword_10000C4D8, a2, type metadata accessor for UIExtension);

  return GPUIExtension.configuration.getter(a1, v3);
}

uint64_t sub_100003144@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  result = sub_100001968();
  *a1 = v2;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for UIExtension();
  sub_100003AC4(&qword_10000C420, v3, type metadata accessor for UIExtension);
  sub_100005B3C();
  return 0;
}

uint64_t sub_1000032E4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000332C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000336C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100003420;

  return sub_100002B54(a1, v4, v5, v6);
}

uint64_t sub_100003420()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100003514(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032E4(&qword_10000C4D0, &qword_100006368);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003584(uint64_t a1)
{
  v2 = sub_1000032E4(&qword_10000C4D0, &qword_100006368);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000035EC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000036E4;

  return v7(a1);
}

uint64_t sub_1000036E4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000037DC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003814(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003EE8;

  return sub_1000035EC(a1, v5);
}

uint64_t sub_1000038CC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003420;

  return sub_1000035EC(a1, v5);
}

unint64_t sub_10000398C()
{
  result = qword_10000C510;
  if (!qword_10000C510)
  {
    sub_100003A7C(&qword_10000C508, &unk_1000063C0);
    sub_100005C1C();
    sub_100003AC4(&qword_10000C518, 255, &type metadata accessor for PickerEditorView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C510);
  }

  return result;
}

uint64_t sub_100003A7C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003AC4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003C2C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003A7C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003C78()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100002A8C();
}

uint64_t sub_100003C94()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003CD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100002718();
}

uint64_t sub_100003CDC()
{
  sub_100003A7C(&qword_10000C500, &qword_1000063B8);
  sub_100003A7C(&qword_10000C4F8, &qword_1000063B0);
  sub_100003A7C(&qword_10000C4F0, &qword_1000063A8);
  sub_100003A7C(&qword_10000C4E8, &qword_1000063A0);
  sub_100003A7C(&qword_10000C4E0, &qword_100006398);
  sub_100003C2C(&qword_10000C520, &qword_10000C500, &qword_1000063B8);
  sub_100003C2C(&qword_10000C528, &qword_10000C4F8, &qword_1000063B0);
  sub_100003C2C(&qword_10000C530, &qword_10000C4F0, &qword_1000063A8);
  sub_100003C2C(&qword_10000C538, &qword_10000C4E8, &qword_1000063A0);
  sub_100003C2C(&unk_10000C540, &qword_10000C4E0, &qword_100006398);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100003EEC()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_100003F1C()
{
  v1[2] = v0;
  v2 = sub_100005CFC();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  sub_100005D7C();
  v1[7] = sub_100005D6C();
  v6 = sub_100005D5C();
  v1[8] = v6;
  v1[9] = v5;

  return _swift_task_switch(sub_10000401C, v6, v5);
}

uint64_t sub_10000401C()
{
  v1 = v0[6];
  sub_100005B2C();
  v2 = sub_100005CEC();
  v3 = sub_100005DAC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching auth token", v4, 2u);
  }

  v5 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  v9 = *(v7 + 8);
  v9(v5, v6);
  v10 = *(v8 + OBJC_IVAR____TtC13GPUIExtension25AppleConnectAuthenticator_token + 8);
  if (v10)
  {
    v11 = *(v8 + OBJC_IVAR____TtC13GPUIExtension25AppleConnectAuthenticator_token);
    v12 = v0[7];
    v13 = v0[5];
    v14 = *(v8 + OBJC_IVAR____TtC13GPUIExtension25AppleConnectAuthenticator_token + 8);

    sub_100005B2C();
    v15 = sub_100005CEC();
    v16 = sub_100005DAC();
    v17 = os_log_type_enabled(v15, v16);
    v19 = v0[4];
    v18 = v0[5];
    v20 = v0[3];
    if (v17)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Reusing cached authentication token", v21, 2u);
    }

    v9(v18, v20);
    v23 = v0[5];
    v22 = v0[6];

    v24 = v0[1];

    return v24(v11, v10);
  }

  else
  {
    v26 = swift_task_alloc();
    v0[10] = v26;
    *v26 = v0;
    v26[1] = sub_10000428C;
    v27 = v0[2];

    return sub_1000044C0();
  }
}

uint64_t sub_10000428C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 80);
  v8 = *v3;
  *(*v3 + 88) = v2;

  if (v2)
  {
    v9 = v6[8];
    v10 = v6[9];
    v11 = sub_100004448;
  }

  else
  {
    v6[12] = a2;
    v6[13] = a1;
    v9 = v6[8];
    v10 = v6[9];
    v11 = sub_1000043C0;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_1000043C0()
{
  v1 = v0[7];

  v2 = v0[12];
  v3 = v0[13];
  v5 = v0[5];
  v4 = v0[6];

  v6 = v0[1];

  return v6(v3, v2);
}

uint64_t sub_100004448()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v4 = v0[1];
  v5 = v0[11];

  return v4();
}

uint64_t sub_1000044C0()
{
  v1[23] = v0;
  sub_100005D7C();
  v1[24] = sub_100005D6C();
  v3 = sub_100005D5C();
  v1[25] = v3;
  v1[26] = v2;

  return _swift_task_switch(sub_100004558, v3, v2);
}

uint64_t sub_100004558()
{
  v1 = sub_100005CFC();
  v0[27] = v1;
  v2 = *(v1 - 8);
  v3 = v2;
  v0[28] = v2;
  v0[29] = *(v2 + 64);
  v4 = swift_task_alloc();
  sub_100005B2C();
  v5 = sub_100005CEC();
  v6 = sub_100005DAC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Starting Apple Connect authentication", v7, 2u);
  }

  v8 = *(v3 + 8);
  v0[30] = v8;
  v8(v4, v1);

  if (ACAuthenticationRequest)
  {
    v9 = v0[23];
    v10 = [objc_allocWithZone(ACAuthenticationRequest) init];
    v0[31] = v10;
    [v10 setAuthType:3];
    v11 = *(v9 + OBJC_IVAR____TtC13GPUIExtension25AppleConnectAuthenticator_context);
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_100004848;
    v12 = swift_continuation_init();
    v0[17] = sub_1000032E4(&qword_10000C5F8, &qword_1000064B0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100004CBC;
    v0[13] = &unk_1000088C0;
    v0[14] = v12;
    [v11 authenticateWithRequest:v10 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v13 = v0[24];

    sub_100005780();
    swift_allocError();
    *v14 = xmmword_1000063E0;
    swift_willThrow();
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_100004848()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *v0;

  return _swift_task_switch(sub_100004950, v2, v1);
}

uint64_t sub_100004950()
{
  v1 = v0[24];

  v2 = v0[21];
  v3 = [v2 serviceTicket];
  if (v3)
  {
    v4 = v0[31];
    v5 = v0[23];
    v6 = v3;
    v7 = sub_100005D3C();
    v9 = v8;

    v10 = (v5 + OBJC_IVAR____TtC13GPUIExtension25AppleConnectAuthenticator_token);
    v11 = *(v5 + OBJC_IVAR____TtC13GPUIExtension25AppleConnectAuthenticator_token + 8);
    *v10 = v7;
    v10[1] = v9;

    v12 = v0[1];

    return v12(v7, v9);
  }

  else
  {
    v14 = v0[29] + 15;
    v15 = swift_task_alloc();
    sub_100005B2C();
    v16 = v2;
    v17 = sub_100005CEC();
    v18 = sub_100005DBC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = [v16 error];
      if (v21)
      {
        v21 = _swift_stdlib_bridgeErrorToNSError();
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      *(v19 + 4) = v21;
      *v20 = v22;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to authenticate: %@", v19, 0xCu);
      sub_100005894(v20);
    }

    v23 = v0[30];
    v24 = v0[27];
    v25 = v0[28];

    v23(v15, v24);

    v26 = [v16 error];
    if (v26)
    {
      v27 = v26;
      swift_getErrorValue();
      v28 = v0[18];
      v29 = v0[19];
      v30 = v0[20];
      v31 = *(v29 - 8);
      v32 = *(v31 + 64) + 15;
      v33 = swift_task_alloc();
      (*(v31 + 16))(v33, v28, v29);

      v34 = sub_100005DCC();
      v36 = v35;
      (*(v31 + 8))(v33, v29);
    }

    else
    {
      v34 = 0;
      v36 = 0;
    }

    v37 = v0[31];
    sub_100005780();
    swift_allocError();
    *v38 = v34;
    v38[1] = v36;
    swift_willThrow();

    v39 = v0[1];

    return v39();
  }
}

uint64_t sub_100004CBC(uint64_t a1, void *a2)
{
  v3 = sub_1000058FC((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_100004D20(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    return sub_100005D2C();
  }

  sub_1000032E4(&qword_10000C608, &unk_1000065A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000063F0;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_100005A60();
  if (a2)
  {
    *(v5 + 32) = a1;
    *(v5 + 40) = a2;
  }

  else
  {
    *(v5 + 32) = 0x6E776F6E6B6E75;
    *(v5 + 40) = 0xE700000000000000;
    sub_100005AB4(a1, 0);
  }

  sub_100005AC8(a1, a2);
  v6 = sub_100005D2C();

  return v6;
}

id sub_100004E58()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC13GPUIExtension25AppleConnectAuthenticator_token];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = OBJC_IVAR____TtC13GPUIExtension25AppleConnectAuthenticator_context;
  v4 = [objc_allocWithZone(ACMobileAuthenticationContext) init];
  v5 = objc_allocWithZone(NSNumber);
  v6 = v4;
  v7 = [v5 initWithInteger:191000];
  [v6 setAppID:v7];

  [v6 setEnvironment:0];
  *&v0[v3] = v6;
  v9.receiver = v0;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

id sub_100004F68()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100005014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v6[4] = sub_100005D7C();
  v6[5] = sub_100005D6C();
  v7 = swift_task_alloc();
  v6[6] = v7;
  *v7 = v6;
  v7[1] = sub_1000050C4;

  return sub_100003F1C();
}

uint64_t sub_1000050C4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 48);
  v9 = *v3;
  v7[7] = v2;

  v10 = v7[5];
  v11 = v7[4];
  if (v4)
  {
    v12 = sub_100005D5C();
    v14 = v13;
    v15 = sub_1000052DC;
  }

  else
  {
    v7[8] = a2;
    v7[9] = a1;
    v12 = sub_100005D5C();
    v14 = v16;
    v15 = sub_100005250;
  }

  return _swift_task_switch(v15, v12, v14);
}

uint64_t sub_100005250()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  v5(v2, v1, 0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000052DC()
{
  v1 = v0[7];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  swift_errorRetain();
  v4(0, 0, v1);

  v5 = v0[1];

  return v5();
}

__n128 sub_100005500(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000550C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100005554(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_1000055A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_100005D1C();
    if (a3)
    {
LABEL_3:
      v7 = sub_100005B0C();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_100005630()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005670()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000056B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100003420;

  return sub_100005014(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_100005780()
{
  result = qword_10000C5F0;
  if (!qword_10000C5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C5F0);
  }

  return result;
}

uint64_t sub_1000057E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100005848(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100005894(uint64_t a1)
{
  v2 = sub_1000032E4(&qword_10000C600, &qword_1000064B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1000058FC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100005940(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100005964(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000059C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_100005A20(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

unint64_t sub_100005A60()
{
  result = qword_10000C610;
  if (!qword_10000C610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C610);
  }

  return result;
}

uint64_t sub_100005AB4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100005AC8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}
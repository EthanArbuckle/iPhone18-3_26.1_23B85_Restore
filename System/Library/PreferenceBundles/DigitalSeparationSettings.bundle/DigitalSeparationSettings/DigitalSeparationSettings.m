id DSLog()
{
  if (qword_168B8 != -1)
  {
    sub_86B0();
  }

  v1 = qword_168B0;

  return v1;
}

void sub_2380(id a1)
{
  qword_168B0 = os_log_create("com.apple.DigitalSeparationSettings", "DSSafetyCheckWelcomeController");

  _objc_release_x1();
}

void sub_2B00(id a1, BSActionResponse *a2)
{
  v2 = a2;
  v3 = DSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Scene destruction request completed with response: %@", &v4, 0xCu);
  }
}

void sub_35A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_35C4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (v5 || (a2 & 1) == 0)
  {
    v8 = [WeakRetained daemonConnection];
    v9 = [v8 xpcConnection];

    v10 = DSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_86C4(v5, v9, v10);
    }
  }

  v11 = [v7 daemonConnection];
  [v11 disconnect];
}

id DSSettingsBundle()
{
  if (qword_168C8 != -1)
  {
    sub_8794();
  }

  v1 = qword_168C0;

  return v1;
}

void sub_44E4(id a1)
{
  qword_168C0 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

void sub_4678()
{
  sub_8A18();
  sub_8A08();
  sub_89F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v2 = v0;
    sub_87E8(v1);
    v4 = v3;
    [v2 openSensitiveURL:v3 withOptions:0];
  }

  else
  {
    __break(1u);
  }
}

id sub_4844(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a3)
  {
    v8 = sub_89B8();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(v5) initWithStyle:a1 reuseIdentifier:v8 specifier:a4];

  return v9;
}

id sub_48D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v10 = sub_89B8();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v5;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, "initWithStyle:reuseIdentifier:specifier:", a1, v10, a4);

  if (v11)
  {
  }

  return v11;
}

id sub_4A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_89B8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id sub_4AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v7 = sub_89B8();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithStyle:reuseIdentifier:", a1, v7);

  return v8;
}

id sub_4C80(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id sub_4CC4(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id DeepLinkSpecifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_4E4C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_5210(&qword_166D0, &qword_C6A0);
  v3 = *(v2 - 8);
  v21 = v2;
  v22 = v3;
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v20 - v5;
  v7 = *(*(sub_8828() - 8) + 64);
  __chkstk_darwin();
  v8 = *(*(sub_89A8() - 8) + 64);
  __chkstk_darwin();
  [v1 setSelectionStyle:0];
  sub_8998();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  v11 = [v10 bundleForClass:ObjCClassFromMetadata];
  sub_8818();
  v12 = sub_89D8();
  v14 = v13;
  sub_8998();
  v15 = [v10 bundleForClass:ObjCClassFromMetadata];
  sub_8818();
  v16 = sub_89D8();
  v23 = v12;
  v24 = v14;
  v25 = v16;
  v26 = v17;
  sub_5210(&qword_166D8, &unk_C6A8);
  sub_53A4(&qword_166E0, &qword_166D8, &unk_C6A8);
  sub_88E8();

  sub_88F8();
  v18 = v21;
  v27[3] = v21;
  v27[4] = sub_53A4(&qword_166E8, &qword_166D0, &qword_C6A0);
  sub_53EC(v27);
  sub_88D8();
  (*(v22 + 8))(v6, v18);
  return sub_8A48();
}

uint64_t sub_5210(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_5258()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_8A18();
  sub_8A08();
  sub_89F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_8928();
}

uint64_t sub_535C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_53A4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_535C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_53EC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t variable initialization expression of DeepLinkSpecifier.inputURL@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_8808();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t DeepLinkSpecifier.inputURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___DSDeepLinkSpecifier_inputURL;
  swift_beginAccess();
  return sub_5650(v1 + v3, a1);
}

uint64_t sub_5650(uint64_t a1, uint64_t a2)
{
  v4 = sub_5210(&qword_166F0, &qword_C6C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DeepLinkSpecifier.inputURL.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DSDeepLinkSpecifier_inputURL;
  swift_beginAccess();
  sub_5860(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_5860(uint64_t a1, uint64_t a2)
{
  v4 = sub_5210(&qword_166F0, &qword_C6C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id variable initialization expression of DeepLinkSpecifier.relay()
{
  v0 = objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay);

  return [v0 init];
}

id DeepLinkSpecifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *DeepLinkSpecifier.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___DSDeepLinkSpecifier_inputURL;
  v3 = sub_8808();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = OBJC_IVAR___DSDeepLinkSpecifier_relay;
  *&v0[v4] = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "init");
  [v5 setProperty:*&v5[OBJC_IVAR___DSDeepLinkSpecifier_relay] forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  return v5;
}

void sub_5B68()
{
  v1 = *(v0 + OBJC_IVAR___DSDeepLinkSpecifier_relay);
  v2 = sub_89B8();
  [v1 setSpecifierIdentifierToScrollAndHighlight:v2];
}

void sub_5BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR___DSDeepLinkSpecifier_inputURL;
  swift_beginAccess();
  sub_5C6C(a3, v3 + v5);
  swift_endAccess();
  v6 = *(v3 + OBJC_IVAR___DSDeepLinkSpecifier_relay);
  v7 = sub_89B8();
  [v6 setSpecifierIdentifierToScrollAndSelect:v7];
}

uint64_t sub_5C6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_5210(&qword_166F0, &qword_C6C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id DeepLinkSpecifier.__allocating_init(name:target:set:get:detail:cell:edit:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t ObjCClassFromMetadata, uint64_t a7, uint64_t a8)
{
  v25 = a5;
  v26 = a7;
  v24 = a4;
  if (a2)
  {
    v12 = sub_89B8();

    v13 = a3[3];
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = 0;
    v13 = a3[3];
    if (v13)
    {
LABEL_3:
      v14 = sub_5EA4(a3, v13);
      v15 = *(v13 - 8);
      v16 = *(v15 + 64);
      __chkstk_darwin(v14, v14);
      v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 16))(v18);
      v19 = sub_8AF8();
      (*(v15 + 8))(v18, v13);
      sub_5EE8(a3);
      if (!ObjCClassFromMetadata)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v19 = 0;
  if (ObjCClassFromMetadata)
  {
LABEL_4:
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

LABEL_5:
  if (a8)
  {
    a8 = swift_getObjCClassFromMetadata();
  }

  v20 = objc_allocWithZone(v8);
  v21 = [v20 initWithName:v12 target:v19 set:v24 get:v25 detail:ObjCClassFromMetadata cell:v26 edit:a8];

  swift_unknownObjectRelease();
  return v21;
}

void *sub_5EA4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_5EE8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t type metadata accessor for DeepLinkSpecifier()
{
  result = qword_16A00;
  if (!qword_16A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6090(void *a1)
{
  v2 = sub_5210(&qword_166F8, &qword_C6C8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = v13 - v6;
  *(swift_allocObject() + 16) = a1;
  v8 = a1;
  sub_5210(&qword_16700, &qword_C6D0);
  v9 = sub_8848();
  v10 = sub_81F0(&qword_16708, &type metadata accessor for PreferencesControllerView);
  v13[0] = v9;
  v13[1] = v10;
  swift_getOpaqueTypeConformance2();
  sub_8988();
  *(swift_allocObject() + 16) = v8;
  sub_7440();
  v11 = v8;
  sub_8938();
  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_6288@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v32 = a2;
  v2 = sub_8828();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v5 = sub_89A8();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v8 = sub_8A78();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v11 = sub_8868();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v14 = sub_8848();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8A18();
  v31 = sub_8A08();
  sub_89F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = v30;
  sub_8A68();
  sub_8858();
  sub_8838();
  sub_8998();
  sub_8408();
  if (!sub_8A58())
  {
    v21 = [objc_opt_self() mainBundle];
  }

  sub_8818();
  v33 = sub_89D8();
  v34 = v22;
  sub_7B9C();
  v23 = sub_8908();
  v25 = v24;
  v27 = v26;
  sub_81F0(&qword_16708, &type metadata accessor for PreferencesControllerView);
  sub_8918();
  sub_8454(v23, v25, v27 & 1);

  (*(v15 + 8))(v19, v14);
}

uint64_t sub_6680()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_66C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = *(*(sub_5210(&qword_166F0, &qword_C6C0) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v5 = sub_8968();
  v3[13] = v5;
  v6 = *(v5 - 8);
  v3[14] = v6;
  v7 = *(v6 + 64) + 15;
  v3[15] = swift_task_alloc();
  v8 = sub_88C8();
  v3[16] = v8;
  v9 = *(v8 - 8);
  v3[17] = v9;
  v10 = *(v9 + 64) + 15;
  v3[18] = swift_task_alloc();
  v11 = sub_8808();
  v3[19] = v11;
  v12 = *(v11 - 8);
  v3[20] = v12;
  v13 = *(v12 + 64) + 15;
  v3[21] = swift_task_alloc();
  v14 = *(*(sub_5210(&qword_167E8, &qword_C7F0) - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v15 = sub_87D8();
  v3[23] = v15;
  v16 = *(v15 - 8);
  v3[24] = v16;
  v17 = *(v16 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = sub_8A18();
  v3[27] = sub_8A08();
  v19 = sub_89F8();

  return _swift_task_switch(sub_6940, v19, v18);
}

uint64_t sub_6940()
{
  v109 = v0;
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[19];
  v7 = v0[20];
  v8 = v0[10];

  sub_8958();
  sub_87A8();
  v9 = *(v7 + 8);
  v9(v5, v6);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v11 = v0[17];
    v10 = v0[18];
    v12 = v0[16];
    v14 = v0[9];
    v13 = v0[10];
    sub_7B3C(v0[22], &qword_167E8, &qword_C7F0);
    sub_8948();
    sub_8978();
    (*(v11 + 8))(v10, v12);
    goto LABEL_59;
  }

  v105 = v9;
  (*(v0[24] + 32))(v0[25], v0[22], v0[23]);
  v0[5] = sub_87B8();
  v0[6] = v15;
  v0[7] = 47;
  v0[8] = 0xE100000000000000;
  sub_7B9C();
  v16 = sub_8A98();

  v17 = *(v16 + 16);
  if (!v17)
  {
    v107 = &_swiftEmptyArrayStorage;
    goto LABEL_29;
  }

  v18 = 0;
  v19 = -v17;
  v20 = v16 + 40;
  v107 = &_swiftEmptyArrayStorage;
  do
  {
    v21 = (v20 + 16 * v18++);
    while (1)
    {
      if ((v18 - 1) >= *(v16 + 16))
      {
        __break(1u);
        goto LABEL_63;
      }

      v22 = v0[26];
      v23 = *(v21 - 1);
      v24 = *v21;

      sub_8A08();
      sub_89F8();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v25 = HIBYTE(v24) & 0xF;
      if ((v24 & 0x2000000000000000) == 0)
      {
        v25 = v23 & 0xFFFFFFFFFFFFLL;
      }

      if (v25 && (v23 != 0x435F595445464153 || v24 != 0xEC0000004B434548) && (sub_8B08() & 1) == 0)
      {
        break;
      }

LABEL_7:
      ++v18;
      v21 += 2;
      if (v19 + v18 == 1)
      {
        goto LABEL_29;
      }
    }

    if (v23 == 0xD000000000000025 && 0x800000000000CCA0 == v24)
    {

LABEL_21:

      goto LABEL_7;
    }

    v26 = sub_8B08();

    if (v26)
    {
      goto LABEL_21;
    }

    v27 = v107;
    v108 = v107;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_8198(0, v107[2] + 1, 1);
      v27 = v108;
    }

    v29 = *(v27 + 16);
    v28 = *(v27 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_8198((v28 > 1), v29 + 1, 1);
      v27 = v108;
    }

    *(v27 + 16) = v29 + 1;
    v107 = v27;
    v30 = v27 + 16 * v29;
    *(v30 + 32) = v23;
    *(v30 + 40) = v24;
    v20 = v16 + 40;
  }

  while (v19 + v18);
LABEL_29:

  v31 = v107;
  v32 = v107[2];
  if (v32)
  {
    v33 = 0;
    v34 = -v32;
    v35 = (v107 + 5);
    v106 = &_swiftEmptyArrayStorage;
LABEL_31:
    v36 = &v35[16 * v33++];
    while (v33 - 1 < v31[2])
    {
      v37 = v0[26];
      v39 = *(v36 - 1);
      v38 = *v36;

      sub_8A08();
      sub_89F8();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v40._rawValue = &off_10918;
      v111._countAndFlagsBits = v39;
      v111._object = v38;
      v41 = sub_8AD8(v40, v111);

      if (v41 < 3)
      {
        v42 = v106;
        v108 = v106;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_8198(0, v106[2] + 1, 1);
          v42 = v108;
        }

        v44 = *(v42 + 16);
        v43 = *(v42 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_8198((v43 > 1), v44 + 1, 1);
          v42 = v108;
        }

        *(v42 + 16) = v44 + 1;
        v106 = v42;
        v45 = v42 + 16 * v44;
        *(v45 + 32) = v39;
        *(v45 + 40) = v38;
        v31 = v107;
        v35 = (v107 + 5);
        if (v34 + v33)
        {
          goto LABEL_31;
        }

        goto LABEL_51;
      }

      ++v33;
      v36 += 2;
      v31 = v107;
      if (v34 + v33 == 1)
      {
        goto LABEL_51;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    swift_once();
LABEL_53:
    v60 = v0[14];
    v61 = v0[15];
    v62 = v0[13];
    v63 = v0[10];
    v64 = sub_88B8();
    sub_81B8(v64, qword_168D8);
    (*(v60 + 16))(v61, v63, v62);
    v65 = sub_8898();
    v66 = sub_8A28();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = v0[21];
      v68 = v0[19];
      v69 = v0[14];
      v103 = v0[15];
      v104 = v0[13];
      v70 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v71 = v108;
      *v70 = 136315138;
      sub_8958();
      sub_81F0(&qword_167F8, &type metadata accessor for URL);
      v72 = sub_8AE8();
      v74 = v73;
      v105(v67, v68);
      (*(v69 + 8))(v103, v104);
      v75 = sub_7BF0(v72, v74, &v108);

      *(v70 + 4) = v75;
      _os_log_impl(&dword_0, v65, v66, "Passing url to root pane: %s", v70, 0xCu);
      sub_5EE8(v71);
    }

    else
    {
      v77 = v0[14];
      v76 = v0[15];
      v78 = v0[13];

      (*(v77 + 8))(v76, v78);
    }

    v79 = v0[19];
    v80 = v0[20];
    v82 = v0[11];
    v81 = v0[12];
    v83 = v0[10];
    sub_8958();
    (*(v80 + 56))(v81, 0, 1, v79);
    v84 = OBJC_IVAR___DSDeepLinkSpecifier_inputURL;
    swift_beginAccess();
    sub_5C6C(v81, v82 + v84);
    swift_endAccess();
    v85 = *(v82 + OBJC_IVAR___DSDeepLinkSpecifier_relay);
    v86 = sub_89B8();

    [v85 setSpecifierIdentifierToScrollAndSelect:v86];

    sub_7B3C(v81, &qword_166F0, &qword_C6C0);
  }

  else
  {
    v46 = v0[25];
    v47 = sub_87C8();
    if (v48)
    {
      v49 = v47;
      v50 = v48;

      if (qword_168D0 != -1)
      {
        swift_once();
      }

      v51 = sub_88B8();
      sub_81B8(v51, qword_168D8);

      v52 = sub_8898();
      v53 = sub_8A38();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v108 = v55;
        *v54 = 136315138;
        *(v54 + 4) = sub_7BF0(v49, v50, &v108);
        _os_log_impl(&dword_0, v52, v53, "Received unexpected anchor %s, highlighting cell", v54, 0xCu);
        sub_5EE8(v55);
      }

      v56 = *(v0[11] + OBJC_IVAR___DSDeepLinkSpecifier_relay);
      v57 = sub_89B8();

      [v56 setSpecifierIdentifierToScrollAndHighlight:v57];
    }

    else
    {
      v106 = &_swiftEmptyArrayStorage;
LABEL_51:

      if (v106[2])
      {
        v59 = v106[4];
        v58 = v106[5];

        if (qword_168D0 != -1)
        {
          goto LABEL_64;
        }

        goto LABEL_53;
      }
    }
  }

  v88 = v0[24];
  v87 = v0[25];
  v89 = v0[23];
  v91 = v0[17];
  v90 = v0[18];
  v92 = v0[16];
  v94 = v0[9];
  v93 = v0[10];
  sub_8948();
  sub_8978();
  (*(v91 + 8))(v90, v92);
  (*(v88 + 8))(v87, v89);
LABEL_59:
  v95 = v0[25];
  v96 = v0[21];
  v97 = v0[22];
  v98 = v0[18];
  v99 = v0[15];
  v100 = v0[12];

  v101 = v0[1];

  return v101();
}

uint64_t sub_7390(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_8474;

  return sub_66C0(a1, a2, v6);
}

unint64_t sub_7440()
{
  result = qword_16710;
  if (!qword_16710)
  {
    sub_535C(&qword_166F8, &qword_C6C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_16710);
  }

  return result;
}

id sub_74A4()
{
  v0 = objc_allocWithZone(type metadata accessor for DeepLinkSpecifier());

  return [v0 init];
}

unint64_t sub_74E0()
{
  result = qword_16718;
  if (!qword_16718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_16718);
  }

  return result;
}

uint64_t sub_7550()
{
  v1 = sub_5210(&qword_166F8, &qword_C6C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = v13 - v5;
  v7 = *v0;
  *(swift_allocObject() + 16) = v7;
  v8 = v7;
  sub_5210(&qword_16700, &qword_C6D0);
  v9 = sub_8848();
  v10 = sub_81F0(&qword_16708, &type metadata accessor for PreferencesControllerView);
  v13[0] = v9;
  v13[1] = v10;
  swift_getOpaqueTypeConformance2();
  sub_8988();
  *(swift_allocObject() + 16) = v8;
  sub_7440();
  v11 = v8;
  sub_8938();
  return (*(v2 + 8))(v6, v1);
}

id sub_7748@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for DeepLinkSpecifier()) init];
  *a1 = result;
  return result;
}

void sub_778C()
{
  sub_7828();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_7828()
{
  if (!qword_16748)
  {
    sub_8808();
    v0 = sub_8A88();
    if (!v1)
    {
      atomic_store(v0, &qword_16748);
    }
  }
}

uint64_t sub_78B4()
{
  sub_535C(&qword_166F8, &qword_C6C8);
  sub_7440();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_7918(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_79C8;

  return sub_66C0(a1, a2, v6);
}

uint64_t sub_79C8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_7ABC()
{
  v0 = sub_88B8();
  sub_8298(v0, qword_168D8);
  sub_81B8(v0, qword_168D8);
  return sub_88A8();
}

uint64_t sub_7B3C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_5210(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_7B9C()
{
  result = qword_167F0;
  if (!qword_167F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_167F0);
  }

  return result;
}

uint64_t sub_7BF0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_7CBC(v11, 0, 0, 1, a1, a2);
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
    sub_8238(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_5EE8(v11);
  return v7;
}

unint64_t sub_7CBC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_7DC8(a5, a6);
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
    result = sub_8AC8();
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

char *sub_7DC8(uint64_t a1, unint64_t a2)
{
  v4 = sub_7E14(a1, a2);
  sub_7F44(&off_108F0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_7E14(uint64_t a1, unint64_t a2)
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

  v6 = sub_8030(v5, 0);
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

  result = sub_8AC8();
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
        v10 = sub_89E8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_8030(v10, 0);
        result = sub_8AB8();
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

uint64_t sub_7F44(uint64_t result)
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

  result = sub_80A4(result, v12, 1, v3);
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

void *sub_8030(uint64_t a1, uint64_t a2)
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

  sub_5210(&qword_16800, &qword_C7F8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_80A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_5210(&qword_16800, &qword_C7F8);
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

char *sub_8198(char *a1, int64_t a2, char a3)
{
  result = sub_82FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_81B8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_81F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_8238(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_8298(uint64_t a1, uint64_t *a2)
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

char *sub_82FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_5210(&qword_16808, qword_C800);
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

unint64_t sub_8408()
{
  result = qword_16810;
  if (!qword_16810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_16810);
  }

  return result;
}

uint64_t sub_8454(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id sub_847C()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_16A18 = result;
  return result;
}

uint64_t sub_84D0()
{
  v0 = sub_8888();
  sub_8298(v0, qword_16A30);
  sub_81B8(v0, qword_16A30);
  if (qword_16A10 != -1)
  {
    swift_once();
  }

  v1 = qword_16A18;
  return sub_8878();
}

uint64_t sub_8580()
{
  if (qword_16A20 != -1)
  {
    swift_once();
  }

  v0 = sub_8888();

  return sub_81B8(v0, qword_16A30);
}

uint64_t sub_85E4@<X0>(uint64_t a1@<X8>)
{
  if (qword_16A20 != -1)
  {
    swift_once();
  }

  v2 = sub_8888();
  v3 = sub_81B8(v2, qword_16A30);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_86C4(uint64_t a1, void *a2, NSObject *a3)
{
  v6 = [a2 processIdentifier];
  v7 = [a2 serviceName];
  v8 = 138412802;
  v9 = a1;
  v10 = 1024;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "Error [%@]: Preferences [%d] failed to connect over %@", &v8, 0x1Cu);
}
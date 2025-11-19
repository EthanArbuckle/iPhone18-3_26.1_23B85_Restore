uint64_t sub_21D8(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v5 = (*(*(sub_2664(&qword_BF9B8, &qword_8E0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = (&v11 - v6);
  *v7 = *(v3 + *(*v3 + qword_C3D40 + 16));
  v8 = enum case for AppResolutionResult.selected(_:);
  v9 = sub_8CABC();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  swift_storeEnumTagMultiPayload();

  a3(v7);
  return sub_26AC(v7);
}

void sub_2390(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = *(v2 + 48);
  v5 = *(v2 + 52);
  v6 = swift_allocObject();
  a2(v6);
  __break(1u);
}

void sub_23F0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_2410();
}

uint64_t sub_2440()
{
  sub_2714((v0 + *(*v0 + qword_C3D40 + 8)));
  v1 = *(v0 + *(*v0 + qword_C3D40 + 16));
}

void *sub_24DC()
{
  v0 = sub_8CAAC();
  sub_2714((v0 + *(*v0 + qword_C3D40 + 8)));
  v1 = *(v0 + *(*v0 + qword_C3D40 + 16));

  return v0;
}

uint64_t sub_2578()
{
  v0 = sub_24DC();

  return _swift_deallocClassInstance(v0, 64, 7);
}

NSString sub_260C@<X0>(void *a1@<X8>)
{
  result = sub_2DF8();
  *a1 = result;
  return result;
}

uint64_t sub_2664(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_26AC(uint64_t a1)
{
  v2 = sub_2664(&qword_BF9B8, &qword_8E0C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2714(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_27CC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_2818(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_2B44();
}

void sub_2830(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_2864();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_289C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_8CEAC();

  *a2 = v5;
  return result;
}

uint64_t sub_28E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2910(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2914(uint64_t a1)
{
  v2 = sub_2A60(&qword_BF9F8, type metadata accessor for FileAttributeKey);
  v3 = sub_2A60(&unk_BFA00, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_2A60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2B44()
{
  v0 = sub_8CEDC();
  v2 = v1;
  if (v0 == sub_8CEDC() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_8D45C();
  }

  return v5 & 1;
}

uint64_t sub_2BF0()
{
  sub_8CEDC();
  sub_8CF4C();
}

Swift::Int sub_2C44(uint64_t a1, Swift::UInt a2)
{
  sub_8D50C();
  sub_8D51C(a2);
  return sub_8D54C();
}

Swift::Int sub_2C88()
{
  sub_8CEDC();
  sub_8D50C();
  sub_8CF4C();
  v0 = sub_8D54C();

  return v0;
}

uint64_t sub_2D00(uint64_t a1, id *a2)
{
  result = sub_8CEBC();
  *a2 = 0;
  return result;
}

uint64_t sub_2D78(uint64_t a1, id *a2)
{
  v3 = sub_8CECC();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_2DF8()
{
  sub_8CEDC();
  v0 = sub_8CEAC();

  return v0;
}

Swift::Int sub_2E30(Swift::UInt a1)
{
  sub_8D50C();
  sub_8D51C(a1);
  return sub_8D54C();
}

uint64_t sub_2E78()
{
  sub_8CEDC();
  v0 = sub_8CFDC();

  return v0;
}

void sub_2EF4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_8BE0C();
  v5 = sub_3488(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = (&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_2664(&qword_BFDF0, qword_8E3A8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v40 - v14;
  v16 = sub_8B47C();
  v17 = sub_3488(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v17);
  v40 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v40 - v25;
  __chkstk_darwin(v24);
  v28 = &v40 - v27;
  (*(v7 + 16))(v11, a1, v4);
  sub_72B5C(v11, v15);
  v29 = type metadata accessor for SmsNLIntent();
  if (sub_3364(v15, 1, v29) == 1)
  {
    sub_338C(v15);
    (*(v19 + 104))(a2, enum case for SiriKitConfirmationState.unset(_:), v16);
  }

  else
  {
    sub_73158(v28);
    sub_342C(v15);
    (*(v19 + 32))(a2, v28, v16);
  }

  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v30 = sub_8CD0C();
  sub_33F4(v30, qword_C3DF8);
  v31 = *(v19 + 16);
  v31(v26, a2, v16);
  v32 = sub_8CCEC();
  v33 = sub_8D11C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v41 = v35;
    *v34 = 136315138;
    v31(v40, v26, v16);
    v36 = sub_8CEEC();
    v38 = v37;
    (*(v19 + 8))(v26, v16);
    v39 = sub_862D8(v36, v38, &v41);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_0, v32, v33, "Returning confirmation state: %s.", v34, 0xCu);
    sub_2714(v35);
  }

  else
  {

    (*(v19 + 8))(v26, v16);
  }
}

uint64_t sub_32E8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_8B9EC();
}

uint64_t sub_331C()
{
  v0 = sub_8BA0C();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t sub_338C(uint64_t a1)
{
  v2 = sub_2664(&qword_BFDF0, qword_8E3A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_33F4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_342C(uint64_t a1)
{
  v2 = type metadata accessor for SmsNLIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_349C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_8B00C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_8AFFC();
  v11 = sub_8AFDC();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  sub_37C8(v11, v13, v10, &selRef_setAceId_);
  if (a3)
  {
    v14 = sub_8CEAC();
  }

  else
  {
    v14 = 0;
  }

  [v10 setAppId:v14];

  sub_3834();
  v15 = a1;
  v16 = sub_3650(v15);
  [v10 setIntent:v16];

  return v10;
}

id sub_3650(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = sub_3758([a1 backingStore]);
  if (v4 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v6 = v3;
    v7 = v4;
    isa = sub_8AFAC().super.isa;
    sub_3878(v6, v7);
  }

  [v2 setData:isa];

  v8 = [a1 typeName];
  v9 = sub_8CEDC();
  v11 = v10;

  sub_37C8(v9, v11, v2, &selRef_setTypeName_);
  return v2;
}

uint64_t sub_3758(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_8AFBC();

  return v3;
}

void sub_37C8(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_8CEAC();

  [a3 *a4];
}

unint64_t sub_3834()
{
  result = qword_BFDF8;
  if (!qword_BFDF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_BFDF8);
  }

  return result;
}

uint64_t sub_3878(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_388C(a1, a2);
  }

  return a1;
}

uint64_t sub_388C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_38E4()
{
  sub_6608();
  v1[12] = v2;
  v1[13] = v0;
  v1[11] = v3;
  v4 = sub_8B00C();
  v1[14] = v4;
  v5 = *(v4 - 8);
  v1[15] = v5;
  v6 = *(v5 + 64) + 15;
  v1[16] = swift_task_alloc();
  v7 = type metadata accessor for SignpostLog.Signpost();
  v1[17] = v7;
  sub_65E4(v7);
  v9 = *(v8 + 64) + 15;
  v1[18] = swift_task_alloc();
  sub_65B8();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_39CC()
{
  v29 = v0;
  if (qword_BF820 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v26 = v0[14];
  v6 = qword_C0EE8;
  v0[19] = qword_C0EE8;
  v7 = v6;
  sub_8CCCC();
  sub_8D16C();
  sub_65FC();
  sub_8CCBC();
  v8 = v1 + *(v2 + 20);
  *v8 = "AnnouncementPayloadGeneration";
  *(v8 + 8) = 29;
  *(v8 + 16) = 2;
  sub_8AF6C(0);
  sub_4F28();

  sub_8AF6C(0);
  sub_4F28();

  sub_8AFFC();
  v9 = sub_8AFDC();
  v11 = v10;
  (*(v4 + 8))(v3, v26);
  v27 = v9;
  v28 = v11;
  sub_8CF7C(*(v5 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin29AnnouncementSpeechSynthesizer_audioFileExtension));
  v0[20] = v9;
  v0[21] = v11;
  v27 = sub_8AF6C(0);
  v28 = v12;
  v30._countAndFlagsBits = v9;
  v30._object = v11;
  sub_8CF7C(v30);
  v13 = v27;
  v14 = v28;
  v0[22] = v27;
  v0[23] = v14;
  if (qword_BF818 != -1)
  {
    sub_650C();
    swift_once();
  }

  v15 = sub_8CD0C();
  v0[24] = sub_33F4(v15, qword_C3DF8);

  v16 = sub_8CCEC();
  v17 = sub_8D11C();

  if (os_log_type_enabled(v16, v17))
  {
    sub_6594();
    v18 = swift_slowAlloc();
    v19 = sub_6630();
    v27 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_862D8(v13, v14, &v27);
    _os_log_impl(&dword_0, v16, v17, "#AnnouncementSpeechSynthesizer file path=%s", v18, 0xCu);
    sub_2714(v19);
    sub_6538();

    sub_6538();
  }

  v20 = swift_task_alloc();
  v0[25] = v20;
  *v20 = v0;
  v20[1] = sub_3CD8;
  v21 = v0[12];
  v22 = v0[13];
  v23 = v0[11];
  sub_6614();

  return sub_4160();
}

uint64_t sub_3CD8()
{
  sub_6608();
  v2 = *v1;
  sub_65D8();
  *v3 = v2;
  v5 = *(v4 + 200);
  v6 = *v1;
  sub_65D8();
  *v7 = v6;
  v2[26] = v0;

  if (v0)
  {
    v8 = v2[23];
    v9 = v2[21];
  }

  sub_65B8();

  return _swift_task_switch(v10, v11, v12);
}

void sub_3DF0()
{
  v33 = v0[26];
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[13];
  sub_2664(&qword_BFF50, &qword_8E4F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_8E3F0;
  *(inited + 64) = &type metadata for Int;
  *(inited + 32) = NSFilePosixPermissions;
  *(inited + 40) = 438;
  type metadata accessor for FileAttributeKey(0);
  sub_655C();
  sub_6300(v7, v8);
  v9 = NSFilePosixPermissions;
  v10 = sub_8CE6C();
  sub_5300(v4, v3, v1, v2, v10);
  if (v33)
  {
    v11 = v0[23];
    v12 = v0[21];
    v14 = v0[18];
    v13 = v0[19];

    sub_8D15C();
    sub_65FC();
    sub_8CCBC();
    v15 = v0[18];
    v16 = v0[16];
    sub_6520();
    sub_64B4(v15, v17);

    sub_65A0();
    sub_6614();

    __asm { BRAA            X1, X16 }
  }

  v21 = v0[23];
  v20 = v0[24];
  v22 = v0[21];

  v23 = sub_8CCEC();
  v24 = sub_8D11C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_0, v23, v24, "#AnnouncementSpeechSynthesizer done generating file", v25, 2u);
    sub_6538();
  }

  v27 = v0[18];
  v26 = v0[19];
  v28 = v0[16];

  sub_8D15C();
  sub_65FC();
  sub_8CCBC();
  sub_6520();
  sub_64B4(v27, v29);

  v30 = v0[1];
  sub_6614();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_40B4()
{
  v1 = v0[18];
  v2 = v0[19];
  sub_8D15C();
  sub_65FC();
  sub_8CCBC();
  v3 = v0[26];
  v4 = v0[18];
  v5 = v0[16];
  sub_6520();
  sub_64B4(v4, v6);

  sub_65A0();

  return v7();
}

uint64_t sub_4160()
{
  sub_6608();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = sub_8AF2C();
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();
  v9 = sub_2664(&qword_BFF28, &unk_8EFD0);
  sub_65E4(v9);
  v11 = *(v10 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  sub_65B8();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_4260()
{
  v2 = *(v0[6] + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin29AnnouncementSpeechSynthesizer_voiceInfo);
  v0[12] = v2;
  if (v2)
  {
    v3 = qword_BF818;
    v4 = v2;
    if (v3 != -1)
    {
      sub_650C();
      swift_once();
    }

    v5 = sub_8CD0C();
    sub_33F4(v5, qword_C3DF8);
    v6 = v4;
    v7 = sub_8CCEC();
    v8 = sub_8D11C();

    if (os_log_type_enabled(v7, v8))
    {
      sub_6594();
      swift_slowAlloc();
      sub_6584();
      v9 = swift_slowAlloc();
      *v1 = 138412290;
      *(v1 + 4) = v6;
      *v9 = v2;
      v10 = v6;
      sub_65F0();
      _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
      sub_6298(v9);
      sub_6538();

      sub_6538();
    }

    v48 = [objc_allocWithZone(sub_8C8BC()) init];
    v0[13] = v48;
    sub_6348(v6, &selRef_languageCode);
    if (v16)
    {
      v17 = v0[11];
      v18 = v0[8];
      v44 = v0[10];
      v45 = v0[9];
      v19 = v0[5];
      v46 = v0[7];
      v47 = v0[4];
      v21 = v0[2];
      v20 = v0[3];
      sub_6348(v6, &selRef_name);
      v22 = objc_allocWithZone(sub_8C8DC());
      v23 = sub_8C8CC();
      v0[14] = v23;
      v24 = objc_allocWithZone(sub_8C8FC());

      v25 = v23;
      v26 = sub_8C8EC();
      v0[15] = v26;
      v27 = sub_8AF9C();
      sub_6270(v44, 1, 1, v27);
      (*(v18 + 104))(v45, enum case for URL.DirectoryHint.inferFromPath(_:), v46);
      v28 = v26;

      sub_8AF8C();
      sub_6270(v17, 0, 1, v27);
      sub_8C89C();

      v29 = swift_task_alloc();
      v0[16] = v29;
      *(v29 + 16) = v48;
      *(v29 + 24) = v28;
      v30 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
      v31 = swift_task_alloc();
      v0[17] = v31;
      *v31 = v0;
      v31[1] = sub_4750;
      sub_65B8();
    }

    else
    {
      __break(1u);
    }

    return withCheckedThrowingContinuation<A>(isolation:function:_:)();
  }

  else
  {
    if (qword_BF818 != -1)
    {
      sub_650C();
      swift_once();
    }

    v32 = sub_8CD0C();
    sub_33F4(v32, qword_C3DF8);
    v33 = sub_8CCEC();
    v34 = sub_8D12C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "#AnnouncementSpeechSynthesizer no voice info", v35, 2u);
      sub_6538();
    }

    type metadata accessor for HomeCommunicationError(0);
    sub_6544();
    sub_6300(v36, v37);
    swift_allocError();
    strcpy(v38, "No Siri Voice");
    *(v38 + 7) = -4864;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v40 = v0[10];
    v39 = v0[11];
    v41 = v0[9];

    sub_65A0();

    return v42();
  }
}

uint64_t sub_4750()
{
  sub_6608();
  v2 = *v1;
  sub_65D8();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  sub_65D8();
  *v7 = v6;
  *(v2 + 144) = v0;

  if (!v0)
  {
    v8 = *(v2 + 128);
  }

  sub_65B8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_485C()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 72);

  sub_65A0();

  return v7();
}

uint64_t sub_48FC()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 96);

  v5 = *(v0 + 144);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 72);

  sub_65A0();

  return v9();
}

uint64_t sub_499C(uint64_t a1)
{
  v2 = sub_2664(&qword_BFF48, &qword_8E4F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - v5;
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v7 = sub_8CD0C();
  sub_33F4(v7, qword_C3DF8);
  v8 = sub_8CCEC();
  v9 = sub_8D11C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "#AnnouncementSpeechSynthesizer synthesizing audio file", v10, 2u);
  }

  (*(v3 + 16))(v6, a1, v2);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  (*(v3 + 32))(v12 + v11, v6, v2);
  sub_8C8AC();
}

uint64_t sub_4BAC(uint64_t a1)
{
  v2 = type metadata accessor for HomeCommunicationError(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    swift_errorRetain();
    if (qword_BF818 != -1)
    {
      swift_once();
    }

    v6 = sub_8CD0C();
    sub_33F4(v6, qword_C3DF8);
    swift_errorRetain();
    v7 = sub_8CCEC();
    v8 = sub_8D12C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&dword_0, v7, v8, "#AnnouncementSpeechSynthesizer failed to synthesize: %@", v9, 0xCu);
      sub_6298(v10);
    }

    v21 = 0;
    v22 = 0xE000000000000000;
    v20[1] = a1;
    sub_2664(&qword_BFF30, &unk_8E4E0);
    sub_8D31C();
    v12 = v22;
    *v5 = v21;
    v5[1] = v12;
    swift_storeEnumTagMultiPayload();
    sub_6300(&qword_BFF38, type metadata accessor for HomeCommunicationError);
    v13 = swift_allocError();
    sub_15350(v14);
    sub_64B4(v5, type metadata accessor for HomeCommunicationError);
    v21 = v13;
    sub_2664(&qword_BFF48, &qword_8E4F0);
    sub_8D0BC();
  }

  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v15 = sub_8CD0C();
  sub_33F4(v15, qword_C3DF8);
  v16 = sub_8CCEC();
  v17 = sub_8D11C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "#AnnouncementSpeechSynthesizer synthesis complete", v18, 2u);
  }

  sub_2664(&qword_BFF48, &qword_8E4F0);
  return sub_8D0CC();
}

void sub_4F28()
{
  v1 = (v0 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin29AnnouncementSpeechSynthesizer_fileManager);
  v2 = *(v0 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin29AnnouncementSpeechSynthesizer_fileManager + 32);
  sub_622C((v0 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin29AnnouncementSpeechSynthesizer_fileManager), *(v0 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin29AnnouncementSpeechSynthesizer_fileManager + 24));
  v3 = *(v2 + 24);
  v4 = sub_65AC();
  if (v5(v4))
  {
    if (qword_BF818 != -1)
    {
      sub_650C();
      swift_once();
    }

    v6 = sub_8CD0C();
    sub_33F4(v6, qword_C3DF8);

    v7 = sub_8CCEC();
    v8 = sub_8D11C();

    if (os_log_type_enabled(v7, v8))
    {
      sub_6594();
      v9 = swift_slowAlloc();
      v29 = sub_6630();
      *v9 = 136315138;
      v10 = sub_65AC();
      *(v9 + 4) = sub_862D8(v10, v11, v12);
      sub_65F0();
      _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
      sub_2714(v29);
      sub_6538();

      sub_6538();
    }
  }

  else
  {
    if (qword_BF818 != -1)
    {
      sub_650C();
      swift_once();
    }

    v18 = sub_8CD0C();
    sub_33F4(v18, qword_C3DF8);

    v19 = sub_8CCEC();
    v20 = sub_8D11C();

    if (os_log_type_enabled(v19, v20))
    {
      sub_6594();
      v21 = swift_slowAlloc();
      v30 = sub_6630();
      *v21 = 136315138;
      v22 = sub_65AC();
      *(v21 + 4) = sub_862D8(v22, v23, v24);
      _os_log_impl(&dword_0, v19, v20, "#AnnouncementSpeechSynthesizer creating new directory at %s", v21, 0xCu);
      sub_2714(v30);
      sub_6538();

      sub_6538();
    }

    v25 = v1[4];
    sub_622C(v1, v1[3]);
    v26 = *(v25 + 16);
    v27 = sub_65AC();
    v28(v27);
  }
}

uint64_t sub_5300(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v86 = a5;
  v103 = a3;
  v87 = type metadata accessor for HomeCommunicationError(0);
  v9 = sub_6574(v87);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_65C4();
  v88 = v12;
  v99 = sub_8AF2C();
  v13 = sub_3488(v99);
  v97 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  sub_65C4();
  v98 = v17;
  v18 = sub_2664(&qword_BFF28, &unk_8EFD0);
  v19 = sub_65E4(v18);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v94 = &v85 - v22;
  v105 = sub_8AF9C();
  v23 = sub_3488(v105);
  v101 = v24;
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v23);
  v85 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v95 = &v85 - v30;
  __chkstk_darwin(v29);
  v96 = &v85 - v31;
  v92 = v5;
  v106 = sub_8AF6C(0);
  v107 = v32;

  v109._countAndFlagsBits = a1;
  v109._object = a2;
  sub_8CF7C(v109);

  v34 = v106;
  v33 = v107;
  if (qword_BF818 != -1)
  {
    sub_650C();
    swift_once();
  }

  v35 = sub_8CD0C();
  v36 = sub_33F4(v35, qword_C3DF8);

  v93 = v36;
  v37 = sub_8CCEC();
  v38 = sub_8D11C();

  v39 = os_log_type_enabled(v37, v38);
  v102 = v33;
  v104 = v34;
  v91 = a4;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    *v40 = 136315394;
    *(v40 + 4) = sub_862D8(v103, a4, &v106);
    *(v40 + 12) = 2080;
    *(v40 + 14) = sub_862D8(v34, v33, &v106);
    _os_log_impl(&dword_0, v37, v38, "#AnnouncementSpeechSynthesizer moving file %s to %s", v40, 0x16u);
    swift_arrayDestroy();
    sub_6538();

    sub_6538();
  }

  v41 = (v92 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin29AnnouncementSpeechSynthesizer_fileManager);
  v42 = *(v92 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin29AnnouncementSpeechSynthesizer_fileManager + 32);
  v92 = *(v92 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin29AnnouncementSpeechSynthesizer_fileManager + 24);
  v90 = v42;
  v89 = sub_622C(v41, v92);
  v43 = v94;
  v44 = v105;
  sub_6270(v94, 1, 1, v105);
  v45 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v46 = v98;
  v47 = *(v97 + 104);
  v48 = v99;
  v47(v98, enum case for URL.DirectoryHint.inferFromPath(_:), v99);

  v49 = v96;
  sub_8AF8C();
  sub_6270(v43, 1, 1, v44);
  v47(v46, v45, v48);
  v50 = v102;

  v51 = v95;
  sub_8AF8C();
  v52 = v100;
  (*(v90 + 8))(v49, v51, v92);
  if (v52)
  {

    v53 = *(v101 + 8);
    v54 = v105;
    v53(v51, v105);
    v53(v49, v54);
    swift_errorRetain();
    v60 = sub_8CCEC();
    v61 = sub_8D11C();

    if (os_log_type_enabled(v60, v61))
    {
      sub_6594();
      swift_slowAlloc();
      sub_6584();
      v62 = swift_slowAlloc();
      *v54 = 138412290;
      swift_errorRetain();
      v63 = _swift_stdlib_bridgeErrorToNSError();
      *(v54 + 4) = v63;
      *v62 = v63;
      _os_log_impl(&dword_0, v60, v61, "#AnnouncementSpeechSynthesizer error while moving file to destination: %@", v54, 0xCu);
      sub_6298(v62);
      sub_6538();

      sub_6538();
    }

    v106 = 0;
    v107 = 0xE000000000000000;
    v108 = v52;
    sub_2664(&qword_BFF30, &unk_8E4E0);
    sub_8D31C();
    v64 = v107;
    v65 = v88;
    *v88 = v106;
    *(v65 + 8) = v64;
    swift_storeEnumTagMultiPayload();
    sub_6544();
    sub_6300(v66, v67);
    swift_allocError();
    sub_15350(v68);
    sub_64B4(v65, type metadata accessor for HomeCommunicationError);
    swift_willThrow();
  }

  else
  {
    v55 = v51;
    v56 = *(v101 + 8);
    v57 = v105;
    v56(v55, v105);
    v56(v49, v57);
    v58 = v41[3];
    v59 = v41[4];
    sub_622C(v41, v58);
    (*(v59 + 40))(v86, v104, v50, v58, v59);
    v70 = v57;

    v71 = sub_8CCEC();
    v72 = sub_8D11C();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v106 = v103;
      *v73 = 136315394;
      type metadata accessor for FileAttributeKey(0);
      sub_655C();
      sub_6300(v74, v75);
      v76 = sub_8CE5C();
      v78 = sub_862D8(v76, v77, &v106);
      v70 = v105;

      *(v73 + 4) = v78;
      *(v73 + 12) = 2080;
      *(v73 + 14) = sub_862D8(v104, v102, &v106);
      sub_65F0();
      _os_log_impl(v79, v80, v81, v82, v83, 0x16u);
      swift_arrayDestroy();
      sub_6538();

      sub_6538();
    }

    v84 = v85;
    sub_8AF4C();

    v65 = sub_8AF3C();
    v56(v84, v70);
  }

  return v65;
}

uint64_t sub_5BCC()
{
  v1 = OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin29AnnouncementSpeechSynthesizer_synthesisDirectoryURL;
  v2 = sub_8AF9C();
  sub_6574(v2);
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin29AnnouncementSpeechSynthesizer_trimmedAudioDirectoryURL, v2);
  sub_2714((v0 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin29AnnouncementSpeechSynthesizer_fileManager));

  v5 = *(v0 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin29AnnouncementSpeechSynthesizer_audioFileExtension + 8);

  return v0;
}

uint64_t sub_5C88()
{
  sub_5BCC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

id sub_5D04()
{
  v1 = v0;
  sub_8AF5C(__stack_chk_guard);
  v3 = v2;
  sub_8AF5C(v4);
  v6 = v5;
  v9 = 0;
  LODWORD(v1) = [v1 moveItemAtURL:v3 toURL:v5 error:&v9];

  if (v1)
  {
    return v9;
  }

  v8 = v9;
  sub_8AF1C();

  return swift_willThrow();
}

id sub_5E0C(uint64_t a1, uint64_t a2, char a3, Class isa)
{
  v7 = sub_8CEAC();
  if (isa)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_6300(&qword_BF9F8, type metadata accessor for FileAttributeKey);
    isa = sub_8CE3C().super.isa;
  }

  v11 = 0;
  v8 = [v4 createDirectoryAtPath:v7 withIntermediateDirectories:a3 & 1 attributes:isa error:&v11];

  if (v8)
  {
    return v11;
  }

  v10 = v11;
  sub_8AF1C();

  return swift_willThrow();
}

id sub_5F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_8CEAC();
  v6 = [v3 fileExistsAtPath:v5 isDirectory:a3];

  return v6;
}

uint64_t type metadata accessor for AnnouncementSpeechSynthesizer()
{
  result = qword_BFE50;
  if (!qword_BFE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_603C()
{
  result = sub_8AF9C();
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

id sub_60EC()
{
  type metadata accessor for FileAttributeKey(0);
  sub_6300(&qword_BF9F8, type metadata accessor for FileAttributeKey);
  isa = sub_8CE3C().super.isa;
  v2 = sub_8CEAC();
  v6 = 0;
  v3 = [v0 setAttributes:isa ofItemAtPath:v2 error:&v6];

  if (v3)
  {
    return v6;
  }

  v5 = v6;
  sub_8AF1C();

  return swift_willThrow();
}

void *sub_622C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_6298(uint64_t a1)
{
  v2 = sub_2664(&qword_BFF40, &unk_90F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_6300(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_6348(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_8CEDC();

  return v4;
}

uint64_t sub_63A8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_499C(a1);
}

uint64_t sub_63B0()
{
  v1 = sub_2664(&qword_BFF48, &qword_8E4F0);
  sub_6574(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_643C(uint64_t a1)
{
  v2 = sub_2664(&qword_BFF48, &qword_8E4F0);
  sub_65E4(v2);
  v4 = *(v3 + 80);

  return sub_4BAC(a1);
}

uint64_t sub_64B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_6574(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_65A0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_6630()
{

  return swift_slowAlloc();
}

void *sub_668C(uint64_t a1)
{
  v51 = sub_8C46C();
  v2 = sub_3488(v51);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_9378();
  v50 = v7;
  __chkstk_darwin(v8);
  v49 = &v39 - v9;
  v10 = sub_8C29C();
  v11 = sub_3488(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_9378();
  v40 = v14;
  __chkstk_darwin(v15);
  v17 = &v39 - v16;
  v18 = 0;
  v19 = *(a1 + 16);
  v52 = a1;
  v53 = v19;
  v47 = v20 + 16;
  v46 = enum case for IdentifierAppBundle.abHomeKit(_:);
  v44 = (v4 + 8);
  v45 = (v4 + 104);
  v42 = (v20 + 8);
  v48 = v20;
  v39 = (v20 + 32);
  v41 = &_swiftEmptyArrayStorage;
  while (v53 != v18)
  {
    v43 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v21 = *(v48 + 72);
    (*(v48 + 16))(v17, v52 + v43 + v21 * v18, v10);
    v22 = v49;
    sub_8C22C();
    v23 = v18;
    v25 = v50;
    v24 = v51;
    (*v45)(v50, v46, v51);
    v26 = sub_8C44C();
    v27 = v10;
    v28 = *v44;
    (*v44)(v25, v24);
    v28(v22, v24);
    if (v26)
    {
      v29 = v21;
      v30 = v43;
      v31 = *v39;
      (*v39)(v40, v17, v27);
      v32 = v41;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v32;
      v10 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_55174(0, v32[2] + 1, 1);
        v32 = v54;
      }

      v34 = v23;
      v35 = v29;
      v37 = v32[2];
      v36 = v32[3];
      if (v37 >= v36 >> 1)
      {
        sub_55174(v36 > 1, v37 + 1, 1);
        v32 = v54;
      }

      v18 = v34 + 1;
      v32[2] = v37 + 1;
      v41 = v32;
      v31(v32 + v30 + v37 * v35, v40, v27);
    }

    else
    {
      (*v42)(v17, v27);
      v18 = v23 + 1;
      v10 = v27;
    }
  }

  return v41;
}

uint64_t sub_69E4(uint64_t a1)
{
  v49 = sub_8C29C();
  v2 = *(*(v49 - 8) + 64);
  v3 = __chkstk_darwin(v49);
  v42 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v48 = &v39 - v5;
  v6 = 0;
  v7 = &_swiftEmptyDictionarySingleton;
  v50 = &_swiftEmptyDictionarySingleton;
  v8 = *(a1 + 16);
  v44 = v9;
  v45 = v8;
  v43 = v9 + 16;
  v46 = (v9 + 32);
  v40 = xmmword_8E3F0;
  v41 = a1;
  while (1)
  {
    if (v45 == v6)
    {

      return v7;
    }

    if (v6 >= *(a1 + 16))
    {
      break;
    }

    v10 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v11 = *(v44 + 72);
    v47 = v6;
    (*(v44 + 16))(v48, a1 + v10 + v11 * v6, v49);
    v12 = sub_8C24C();
    v13 = v12;
    v14 = HIDWORD(v12) & 1;
    v15 = v12;
    v17 = sub_71BD4(v12 | (v14 << 32));
    v18 = v7[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_19;
    }

    v21 = v16;
    if (v7[3] < v20)
    {
      sub_8228(v20, 1);
      v7 = v50;
      v22 = sub_71BD4(v15 | (v14 << 32));
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_21;
      }

      v17 = v22;
    }

    if (v21)
    {
      v24 = v7[7];
      v25 = *v46;
      (*v46)(v42, v48, v49);
      v26 = *(v24 + 8 * v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v17) = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = *(v26 + 16);
        sub_75E7C();
        v26 = v36;
        *(v24 + 8 * v17) = v36;
      }

      v28 = *(v26 + 16);
      if (v28 >= *(v26 + 24) >> 1)
      {
        sub_75E7C();
        v26 = v37;
        *(v24 + 8 * v17) = v37;
      }

      a1 = v41;
      v29 = v42;
      *(v26 + 16) = v28 + 1;
      v25((v26 + v10 + v28 * v11), v29, v49);
    }

    else
    {
      sub_2664(&qword_C0018, &unk_927C0);
      v30 = swift_allocObject();
      *(v30 + 16) = v40;
      (*v46)((v30 + v10), v48, v49);
      v7[(v17 >> 6) + 8] |= 1 << v17;
      v31 = v7[6] + 8 * v17;
      *v31 = v13;
      *(v31 + 4) = v14;
      *(v7[7] + 8 * v17) = v30;
      v32 = v7[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_20;
      }

      v7[2] = v34;
      a1 = v41;
    }

    v6 = v47 + 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  sub_2664(&qword_C0020, &qword_90FC0);
  result = sub_8D4AC();
  __break(1u);
  return result;
}

void *sub_6D60()
{

  v1 = sub_69E4(v0);
  v3 = sub_816C(v1);
  sub_84E4(&v3);

  return v3;
}

uint64_t sub_6DD0(uint64_t *a1, void (**a2)(char *, uint64_t))
{
  v188 = a2;
  v191 = sub_8C48C();
  v3 = *(v191 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v191);
  v172 = &v150 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2664(&qword_C0000, &qword_8E630);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v157 = &v150 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v164 = &v150 - v11;
  v12 = __chkstk_darwin(v10);
  v169 = &v150 - v13;
  __chkstk_darwin(v12);
  v15 = &v150 - v14;
  v16 = sub_2664(&qword_C0008, &qword_8FCD0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v150 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v158 = &v150 - v22;
  v23 = __chkstk_darwin(v21);
  v161 = &v150 - v24;
  v25 = __chkstk_darwin(v23);
  v159 = &v150 - v26;
  v27 = __chkstk_darwin(v25);
  v160 = &v150 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v150 - v30;
  v32 = __chkstk_darwin(v29);
  v166 = &v150 - v33;
  v34 = __chkstk_darwin(v32);
  v165 = &v150 - v35;
  v36 = __chkstk_darwin(v34);
  v168 = &v150 - v37;
  v38 = __chkstk_darwin(v36);
  v176 = &v150 - v39;
  v40 = __chkstk_darwin(v38);
  v42 = &v150 - v41;
  __chkstk_darwin(v40);
  v189 = (&v150 - v43);
  v190 = sub_8C29C();
  v44 = *(*(v190 - 8) + 64);
  v45 = __chkstk_darwin(v190);
  v162 = &v150 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v154 = &v150 - v48;
  v49 = __chkstk_darwin(v47);
  v163 = &v150 - v50;
  v51 = __chkstk_darwin(v49);
  v155 = &v150 - v52;
  v53 = __chkstk_darwin(v51);
  v171 = &v150 - v54;
  v55 = __chkstk_darwin(v53);
  v156 = &v150 - v56;
  v57 = __chkstk_darwin(v55);
  v59 = &v150 - v58;
  __chkstk_darwin(v57);
  v62 = *a1;
  v180 = *(*a1 + 16);
  if (!v180)
  {
    return 0;
  }

  v153 = &v150 - v60;
  v150 = v20;
  v63 = 0;
  v167 = *v188;
  v151 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v182 = (v62 + v151);
  v187 = v61 + 16;
  v186 = (v3 + 104);
  v170 = (v3 + 32);
  v185 = enum case for IdentifierNamespace.nsMatchInfo(_:);
  v177 = (v3 + 8);
  v178 = v59;
  v188 = (v61 + 8);
  v174 = v6;
  v152 = v31;
  v179 = v62;
  v181 = v61;
  while (1)
  {
    if (v63 >= *(v62 + 16))
    {
      __break(1u);
LABEL_53:
      sub_92C0(v42, &qword_C0008, &qword_8FCD0);
LABEL_54:
      v141 = v155;
      v142 = v190;
      v175(v155, v163, v190);
      v143 = sub_8C27C();
      v145 = v144;
      v189(v141, v142);
      if (v143 == 0xD00000000000001BLL && 0x80000000000953B0 == v145)
      {

        return 0;
      }

      v147 = sub_8D45C();

      v108 = v174;
      if (v147)
      {
        return 0;
      }

LABEL_40:
      v124 = 0;
      v125 = v157;
      v126 = v158;
      v127 = v153;
      while (1)
      {
        if (v124 >= *(v167 + 2))
        {
          goto LABEL_64;
        }

        v184(v162, v127, v190);
        sub_8C23C();
        v128 = v161;
        v129 = v191;
        v183(v126, v185, v191);
        sub_6270(v126, 0, 1, v129);
        v130 = *(v108 + 48);
        sub_9250(v128, v125);
        sub_9250(v126, v125 + v130);
        if (sub_3364(v125, 1, v129) == 1)
        {
          break;
        }

        v131 = v150;
        sub_9250(v125, v150);
        if (sub_3364(v125 + v130, 1, v191) == 1)
        {
          v132 = v158;
          sub_92C0(v158, &qword_C0008, &qword_8FCD0);
          sub_92C0(v128, &qword_C0008, &qword_8FCD0);
          v133 = v131;
          v126 = v132;
          (*v177)(v133, v191);
LABEL_47:
          sub_92C0(v125, &qword_C0000, &qword_8E630);
          goto LABEL_49;
        }

        v134 = v191;
        v135 = v172;
        (*v170)(v172, v125 + v130, v191);
        sub_9320();
        LODWORD(v182) = sub_8CE9C();
        v136 = *v177;
        v137 = v135;
        v138 = v134;
        (*v177)(v137, v134);
        v139 = v158;
        sub_92C0(v158, &qword_C0008, &qword_8FCD0);
        sub_92C0(v161, &qword_C0008, &qword_8FCD0);
        v140 = v131;
        v126 = v139;
        v136(v140, v138);
        v125 = v157;
        sub_92C0(v157, &qword_C0008, &qword_8FCD0);
        if (v182)
        {
          goto LABEL_61;
        }

LABEL_49:
        ++v124;
        v189(v162, v190);
        v108 = v174;
        v127 += v173;
        result = 1;
        if (v178 == v124)
        {
          return result;
        }
      }

      sub_92C0(v126, &qword_C0008, &qword_8FCD0);
      sub_92C0(v128, &qword_C0008, &qword_8FCD0);
      if (sub_3364(v125 + v130, 1, v191) == 1)
      {
        sub_92C0(v125, &qword_C0008, &qword_8FCD0);
LABEL_61:
        v148 = v154;
        v149 = v190;
        v175(v154, v162, v190);
        sub_8C27C();

        v189(v148, v149);
        return 1;
      }

      goto LABEL_47;
    }

    v64 = *(v61 + 72);
    v184 = *(v61 + 16);
    v184(v59, &v182[v64 * v63], v190);
    v65 = v189;
    sub_8C23C();
    v66 = v191;
    v183 = *v186;
    v183(v42, v185, v191);
    sub_6270(v42, 0, 1, v66);
    v67 = *(v6 + 48);
    sub_9250(v65, v15);
    sub_9250(v42, &v15[v67]);
    if (sub_3364(v15, 1, v66) == 1)
    {
      break;
    }

    v69 = v176;
    sub_9250(v15, v176);
    if (sub_3364(&v15[v67], 1, v191) != 1)
    {
      v173 = v64;
      v70 = &v15[v67];
      v71 = v191;
      v72 = v172;
      (*v170)(v172, v70, v191);
      sub_9320();
      LODWORD(v175) = sub_8CE9C();
      v73 = *v177;
      (*v177)(v72, v71);
      sub_92C0(v42, &qword_C0008, &qword_8FCD0);
      sub_92C0(v189, &qword_C0008, &qword_8FCD0);
      v73(v69, v71);
      v6 = v174;
      v59 = v178;
      sub_92C0(v15, &qword_C0008, &qword_8FCD0);
      if (v175)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    v68 = v6;
    sub_92C0(v42, &qword_C0008, &qword_8FCD0);
    sub_92C0(v189, &qword_C0008, &qword_8FCD0);
    (*v177)(v69, v191);
LABEL_9:
    sub_92C0(v15, &qword_C0000, &qword_8E630);
    v6 = v68;
LABEL_11:
    ++v63;
    (*v188)(v59, v190);
    v61 = v181;
    v62 = v179;
    if (v180 == v63)
    {
      return 0;
    }
  }

  v68 = v6;
  sub_92C0(v42, &qword_C0008, &qword_8FCD0);
  v59 = v178;
  sub_92C0(v65, &qword_C0008, &qword_8FCD0);
  if (sub_3364(&v15[v67], 1, v191) != 1)
  {
    goto LABEL_9;
  }

  v173 = v64;
  sub_92C0(v15, &qword_C0008, &qword_8FCD0);
LABEL_13:
  v75 = v181 + 32;
  v74 = *(v181 + 32);
  v76 = v153;
  v77 = v190;
  v74(v153, v59, v190);
  v78 = sub_8C20C();
  v80 = v79;
  v181 = v75;
  v189 = *(v75 - 24);
  result = (v189)(v76, v77);
  if (v80)
  {
    return 0;
  }

  v82 = v167;
  v178 = *(v167 + 2);
  if (!v178)
  {
    return 1;
  }

  v175 = v74;
  v83 = 0;
  v84 = *&v78;
  v85 = v167 + v151;
  v153 = v167 + v151;
  v42 = v164;
  v86 = v165;
  while (2)
  {
    if (v83 >= *(v82 + 2))
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      return result;
    }

    v184(v171, v85, v190);
    v87 = v168;
    sub_8C23C();
    v88 = v191;
    v183(v86, v185, v191);
    sub_6270(v86, 0, 1, v88);
    v89 = *(v174 + 48);
    v90 = v169;
    sub_9250(v87, v169);
    sub_9250(v86, v90 + v89);
    if (sub_3364(v90, 1, v88) != 1)
    {
      v92 = v166;
      sub_9250(v90, v166);
      if (sub_3364(v90 + v89, 1, v191) != 1)
      {
        v95 = v90 + v89;
        v96 = v191;
        v97 = v172;
        (*v170)(v172, v95, v191);
        sub_9320();
        LODWORD(v176) = sub_8CE9C();
        v98 = *v177;
        v99 = v97;
        v100 = v96;
        (*v177)(v99, v96);
        v101 = v165;
        sub_92C0(v165, &qword_C0008, &qword_8FCD0);
        sub_92C0(v87, &qword_C0008, &qword_8FCD0);
        v86 = v101;
        v98(v166, v100);
        v42 = v164;
        sub_92C0(v169, &qword_C0008, &qword_8FCD0);
        if (v176)
        {
          goto LABEL_27;
        }

LABEL_25:
        ++v83;
        result = (v189)(v171, v190);
        v85 += v173;
        v82 = v167;
        if (v178 == v83)
        {
          return 1;
        }

        continue;
      }

      v91 = v42;
      v93 = v165;
      sub_92C0(v165, &qword_C0008, &qword_8FCD0);
      sub_92C0(v87, &qword_C0008, &qword_8FCD0);
      v94 = v92;
      v86 = v93;
      (*v177)(v94, v191);
LABEL_23:
      sub_92C0(v90, &qword_C0000, &qword_8E630);
      v42 = v91;
      goto LABEL_25;
    }

    break;
  }

  v91 = v42;
  sub_92C0(v86, &qword_C0008, &qword_8FCD0);
  sub_92C0(v87, &qword_C0008, &qword_8FCD0);
  if (sub_3364(v90 + v89, 1, v191) != 1)
  {
    goto LABEL_23;
  }

  sub_92C0(v90, &qword_C0008, &qword_8FCD0);
LABEL_27:
  v102 = v156;
  v103 = v190;
  v175(v156, v171, v190);
  v104 = COERCE_DOUBLE(sub_8C20C());
  v106 = v105;
  result = (v189)(v102, v103);
  if (v106)
  {
    return 1;
  }

  if (v84 == v104)
  {
    v107 = 0;
    v185 = enum case for IdentifierNamespace.nsHomeKitEntityType(_:);
    v108 = v174;
    v109 = v160;
    while (1)
    {
      if (v107 >= *(v179 + 16))
      {
        goto LABEL_63;
      }

      v184(v163, v182, v190);
      v110 = v152;
      sub_8C23C();
      v111 = v191;
      v183(v109, v185, v191);
      sub_6270(v109, 0, 1, v111);
      v112 = *(v108 + 48);
      sub_9250(v110, v42);
      sub_9250(v109, &v42[v112]);
      if (sub_3364(v42, 1, v111) == 1)
      {
        sub_92C0(v109, &qword_C0008, &qword_8FCD0);
        sub_92C0(v110, &qword_C0008, &qword_8FCD0);
        if (sub_3364(&v42[v112], 1, v191) == 1)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v113 = v159;
        sub_9250(v42, v159);
        if (sub_3364(&v42[v112], 1, v191) != 1)
        {
          v116 = &v42[v112];
          v117 = v191;
          v118 = v172;
          (*v170)(v172, v116, v191);
          sub_9320();
          LODWORD(v176) = sub_8CE9C();
          v119 = *v177;
          v120 = v118;
          v121 = v117;
          (*v177)(v120, v117);
          v122 = v160;
          sub_92C0(v160, &qword_C0008, &qword_8FCD0);
          sub_92C0(v110, &qword_C0008, &qword_8FCD0);
          v123 = v113;
          v109 = v122;
          v119(v123, v121);
          v42 = v164;
          v108 = v174;
          sub_92C0(v164, &qword_C0008, &qword_8FCD0);
          if (v176)
          {
            goto LABEL_54;
          }

          goto LABEL_39;
        }

        v114 = v160;
        sub_92C0(v160, &qword_C0008, &qword_8FCD0);
        sub_92C0(v110, &qword_C0008, &qword_8FCD0);
        v115 = v113;
        v109 = v114;
        (*v177)(v115, v191);
      }

      sub_92C0(v42, &qword_C0000, &qword_8E630);
LABEL_39:
      ++v107;
      result = (v189)(v163, v190);
      v182 += v173;
      if (v180 == v107)
      {
        goto LABEL_40;
      }
    }
  }

  return v104 < v84;
}

void *sub_816C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v3 = sub_76558(*(a1 + 16), 0);
  v4 = sub_90F0(&v6, v3 + 4, v1, a1);

  sub_9248();
  if (v4 != v1)
  {
    __break(1u);
    return &_swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t sub_8228(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2664(&qword_C0028, &qword_8E638);
  v38 = a2;
  result = sub_8D36C();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_36:

LABEL_37:
    *v3 = v8;
    return result;
  }

  v36 = v3;
  v37 = v5;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_37;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      sub_76D44(0, (v35 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_36;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = *(v5 + 56);
    v21 = *(v5 + 48) + 8 * v19;
    v22 = *v21;
    v23 = *(v21 + 4);
    v24 = *(v20 + 8 * v19);
    if ((v38 & 1) == 0)
    {
    }

    v25 = *(v8 + 40);
    sub_8D50C();
    if (v23)
    {
      sub_8D52C(0);
    }

    else
    {
      sub_8D52C(1u);
      sub_8D53C(v22);
    }

    result = sub_8D54C();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = *(v8 + 48) + 8 * v29;
    *v34 = v22;
    *(v34 + 4) = v23;
    *(*(v8 + 56) + 8 * v29) = v24;
    ++*(v8 + 16);
    v5 = v37;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_28;
    }
  }

LABEL_39:
  __break(1u);
  return result;
}

Swift::Int sub_84E4(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_8A118(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_8550(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_8550(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_8D42C(v2);
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
        sub_2664(&qword_BFFF8, &qword_8E628);
        v6 = sub_8D07C();
        v6[2] = v5;
      }

      v7[0] = v6 + 4;
      v7[1] = v5;
      sub_874C(v7, v8, a1, v4);
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
    return sub_8654(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_8654(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = result - a3;
LABEL_4:
    v9 = *(v6 + 8 * v5);
    v10 = v8;
    v15 = v7;
    while (1)
    {
      v17 = v9;
      v16 = *v7;

      v11 = sub_6DD0(&v17, &v16);

      if (v4)
      {
        break;
      }

      if (v11)
      {
        if (!v6)
        {
          __break(1u);
          return result;
        }

        v12 = *v7;
        v9 = *(v7 + 8);
        *v7 = v9;
        *(v7 + 8) = v12;
        v7 -= 8;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v5;
      v7 = v15 + 8;
      --v8;
      if (v5 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_874C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_93:
    v99 = *v95;
    if (*v95)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_95;
    }

    goto LABEL_138;
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v96 = v8;
      v10 = *a3;
      v102 = *(*a3 + 8 * v7);
      v101 = *(v10 + 8 * v9);

      LODWORD(v99) = sub_6DD0(&v102, &v101);
      if (v5)
      {
LABEL_106:
      }

      v11 = 8 * v9;
      v12 = v9;
      v13 = (v10 + 8 * v9 + 16);
      v93 = v12;
      v14 = v12 + 2;
      while (1)
      {
        v15 = v14;
        if (v7 + 1 >= v6)
        {
          break;
        }

        v16 = v6;
        v17 = *(v13 - 1);
        v102 = *v13;
        v101 = v17;

        v18 = sub_6DD0(&v102, &v101);

        v19 = v99 ^ v18;
        ++v13;
        ++v7;
        v14 = v15 + 1;
        v6 = v16;
        if (v19)
        {
          goto LABEL_10;
        }
      }

      v7 = v6;
LABEL_10:
      if (v99)
      {
        v9 = v93;
        if (v7 < v93)
        {
          goto LABEL_132;
        }

        v8 = v96;
        if (v93 < v7)
        {
          if (v6 >= v15)
          {
            v20 = v15;
          }

          else
          {
            v20 = v6;
          }

          v21 = 8 * v20 - 8;
          v22 = v7;
          v23 = v93;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_136;
              }

              v25 = *(v24 + v11);
              *(v24 + v11) = *(v24 + v21);
              *(v24 + v21) = v25;
            }

            ++v23;
            v21 -= 8;
            v11 += 8;
          }

          while (v23 < v22);
        }
      }

      else
      {
        v8 = v96;
        v9 = v93;
      }
    }

    v26 = a3[1];
    if (v7 >= v26)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v7, v9))
    {
      goto LABEL_128;
    }

    if (v7 - v9 >= a4)
    {
      goto LABEL_32;
    }

    if (__OFADD__(v9, a4))
    {
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
      return result;
    }

    if (v9 + a4 >= v26)
    {
      v27 = a3[1];
    }

    else
    {
      v27 = v9 + a4;
    }

    if (v27 < v9)
    {
      goto LABEL_131;
    }

    if (v7 != v27)
    {
      v98 = v8;
      v73 = v9;
      v74 = *a3;
      v75 = *a3 + 8 * v7 - 8;
      v94 = v73;
      v76 = v73 - v7;
      v91 = v27;
      do
      {
        v77 = *(v74 + 8 * v7);
        v78 = v76;
        v99 = v75;
        do
        {
          v102 = v77;
          v101 = *v75;

          v79 = sub_6DD0(&v102, &v101);
          if (v5)
          {
            goto LABEL_106;
          }

          v80 = v79;

          if ((v80 & 1) == 0)
          {
            break;
          }

          if (!v74)
          {
            goto LABEL_135;
          }

          v81 = *v75;
          v77 = *(v75 + 8);
          *v75 = v77;
          *(v75 + 8) = v81;
          v75 -= 8;
        }

        while (!__CFADD__(v78++, 1));
        ++v7;
        v75 = (v99 + 1);
        --v76;
      }

      while (v7 != v91);
      v7 = v91;
      v8 = v98;
      v9 = v94;
    }

LABEL_32:
    if (v7 < v9)
    {
      goto LABEL_127;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_75F54(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v29 = v8[2];
    v28 = v8[3];
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      result = sub_75F54((v28 > 1), v29 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v30;
    v31 = (v8 + 4);
    v32 = &v8[2 * v29 + 4];
    *v32 = v9;
    v32[1] = v7;
    v97 = *v95;
    if (!*v95)
    {
      goto LABEL_137;
    }

    if (v29)
    {
      break;
    }

LABEL_81:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_93;
    }
  }

  while (1)
  {
    v33 = v30 - 1;
    v34 = &v31[16 * v30 - 16];
    v35 = &v8[2 * v30];
    if (v30 >= 4)
    {
      v40 = &v31[16 * v30];
      v41 = *(v40 - 8);
      v42 = *(v40 - 7);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_115;
      }

      v45 = *(v40 - 6);
      v44 = *(v40 - 5);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_116;
      }

      v47 = v35[1];
      v48 = v47 - *v35;
      if (__OFSUB__(v47, *v35))
      {
        goto LABEL_118;
      }

      v46 = __OFADD__(v38, v48);
      v49 = v38 + v48;
      if (v46)
      {
        goto LABEL_121;
      }

      if (v49 >= v43)
      {
        v63 = *v34;
        v62 = *(v34 + 1);
        v46 = __OFSUB__(v62, v63);
        v64 = v62 - v63;
        if (v46)
        {
          goto LABEL_126;
        }

        if (v38 < v64)
        {
          v33 = v30 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_52;
    }

    if (v30 == 3)
    {
      v36 = v8[4];
      v37 = v8[5];
      v46 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      v39 = v46;
LABEL_52:
      if (v39)
      {
        goto LABEL_117;
      }

      v51 = *v35;
      v50 = v35[1];
      v52 = __OFSUB__(v50, v51);
      v53 = v50 - v51;
      v54 = v52;
      if (v52)
      {
        goto LABEL_120;
      }

      v55 = *(v34 + 1);
      v56 = v55 - *v34;
      if (__OFSUB__(v55, *v34))
      {
        goto LABEL_123;
      }

      if (__OFADD__(v53, v56))
      {
        goto LABEL_125;
      }

      if (v53 + v56 >= v38)
      {
        if (v38 < v56)
        {
          v33 = v30 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_67;
    }

    if (v30 < 2)
    {
      goto LABEL_119;
    }

    v58 = *v35;
    v57 = v35[1];
    v46 = __OFSUB__(v57, v58);
    v53 = v57 - v58;
    v54 = v46;
LABEL_67:
    if (v54)
    {
      goto LABEL_122;
    }

    v60 = *v34;
    v59 = *(v34 + 1);
    v46 = __OFSUB__(v59, v60);
    v61 = v59 - v60;
    if (v46)
    {
      goto LABEL_124;
    }

    if (v61 < v53)
    {
      goto LABEL_81;
    }

LABEL_74:
    if (v33 - 1 >= v30)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_133;
    }

    v65 = &v31[16 * v33 - 16];
    v66 = *v65;
    v67 = v33;
    v68 = &v31[16 * v33];
    v69 = *(v68 + 1);
    sub_8DE0((*a3 + 8 * *v65), (*a3 + 8 * *v68), (*a3 + 8 * v69), v97);
    if (v5)
    {
    }

    if (v69 < v66)
    {
      goto LABEL_109;
    }

    v99 = 0;
    v5 = v31;
    v70 = v7;
    v71 = v8;
    v8 = v8[2];
    if (v67 > v8)
    {
      goto LABEL_110;
    }

    *v65 = v66;
    *(v65 + 1) = v69;
    if (v67 >= v8)
    {
      goto LABEL_111;
    }

    v30 = v8 - 1;
    result = sub_89FEC(v68 + 16, v8 - v67 - 1, v68);
    v71[2] = v8 - 1;
    v72 = v8 > 2;
    v8 = v71;
    v7 = v70;
    v31 = v5;
    v5 = 0;
    if (!v72)
    {
      goto LABEL_81;
    }
  }

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
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  result = sub_89EF8(v8);
  v8 = result;
LABEL_95:
  v83 = v8;
  v84 = v8 + 2;
  for (i = v8[2]; ; *v84 = i)
  {
    v8 = (i - 2);
    if (i < 2)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_134;
    }

    v86 = &v83[2 * i];
    v87 = *v86;
    v88 = &v84[2 * i];
    v89 = *(v88 + 1);
    sub_8DE0((*a3 + 8 * *v86), (*a3 + 8 * *v88), (*a3 + 8 * v89), v99);
    if (v5)
    {
      break;
    }

    if (v89 < v87)
    {
      goto LABEL_112;
    }

    if (v8 >= *v84)
    {
      goto LABEL_113;
    }

    *v86 = v87;
    v86[1] = v89;
    v90 = *v84 - i;
    if (*v84 < i)
    {
      goto LABEL_114;
    }

    i = *v84 - 1;
    result = sub_89FEC(v88 + 16, v90, v88);
  }
}

uint64_t sub_8DE0(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (**a4)(char *, uint64_t))
{
  v5 = v4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = a2 - a1;
  v10 = a3 - a2;
  if (v9 < v10)
  {
    sub_77294(a1, a2 - a1, a4);
    v12 = a4;
    for (i = &a4[v9]; ; i = v15)
    {
      if (v12 >= i || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_30;
      }

      v15 = i;
      v16 = v6;
      v48 = *v7;
      v17 = v12;
      v47 = *v12;

      v18 = sub_6DD0(&v48, &v47);
      if (v4)
      {

        v12 = v17;
        v39 = v15 - v17;
        v40 = v8 < v17 || v8 >= &v17[v39];
        if (v40 || v8 != v17)
        {
          v37 = 8 * v39;
          v38 = v8;
          goto LABEL_50;
        }

        return 1;
      }

      v19 = v18;

      if ((v19 & 1) == 0)
      {
        break;
      }

      v20 = v7;
      v21 = v8 == v7++;
      v12 = v17;
      if (!v21)
      {
        goto LABEL_13;
      }

LABEL_14:
      ++v8;
      v6 = v16;
    }

    v20 = v17;
    v12 = v17 + 1;
    if (v8 == v17)
    {
      goto LABEL_14;
    }

LABEL_13:
    *v8 = *v20;
    goto LABEL_14;
  }

  sub_77294(a2, a3 - a2, a4);
  v12 = a4;
  i = &a4[v10];
  v23 = -a4;
  v44 = v8;
  v45 = a4;
LABEL_16:
  v24 = (v7 - 1);
  v25 = v6 - 1;
  v26 = i + v23;
  v46 = v7;
  while (1)
  {
    if (i <= v12 || v7 <= v8)
    {
LABEL_30:
      v35 = i - v12;
      v36 = v7 < v12 || v7 >= &v12[v35];
      if (v36 || v7 != v12)
      {
        v37 = 8 * v35;
        v38 = v7;
        goto LABEL_50;
      }

      return 1;
    }

    v28 = v25;
    v29 = v5;
    v30 = i;
    v31 = (i - 1);
    v48 = *(i - 1);
    v32 = v24;
    v47 = *v24;

    v33 = sub_6DD0(&v48, &v47);
    if (v29)
    {
      break;
    }

    v34 = v33;

    if (v34)
    {
      v6 = v28;
      v12 = v45;
      v21 = v28 + 1 == v46;
      v7 = v32;
      v8 = v44;
      i = v30;
      v5 = 0;
      if (!v21)
      {
        *v6 = *v32;
        v7 = v32;
      }

      goto LABEL_16;
    }

    v24 = v32;
    if (v30 != (v28 + 1))
    {
      *v28 = *v31;
    }

    v25 = v28 - 1;
    v26 -= 8;
    i = v31;
    v8 = v44;
    v12 = v45;
    v7 = v46;
    v5 = 0;
  }

  v41 = v26 / 8;
  v12 = v45;
  v38 = v46;
  if (v46 < v45 || v46 >= &v45[v26 / 8])
  {
    memmove(v46, v45, 8 * v41);
  }

  else if (v46 != v45)
  {
    v37 = 8 * v41;
LABEL_50:
    memmove(v38, v12, v37);
  }

  return 1;
}

uint64_t sub_90F0(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v15 << 9) | (8 * v16)));
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      ++v11;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_9250(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C0008, &qword_8FCD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_92C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2664(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_9320()
{
  result = qword_C0010;
  if (!qword_C0010)
  {
    sub_8C48C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0010);
  }

  return result;
}

uint64_t sub_9394()
{
  type metadata accessor for BaseFlow();
  sub_982C();
  return sub_8B34C();
}

uint64_t sub_9410()
{
  v1 = *(v0 + 16);
  sub_8B7FC();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_9494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_9544;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_9544(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_9664(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_96FC;

  return sub_93F0(a1);
}

uint64_t sub_96FC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_97F0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for BaseFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

unint64_t sub_982C()
{
  result = qword_C00E0;
  if (!qword_C00E0)
  {
    type metadata accessor for BaseFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C00E0);
  }

  return result;
}

HomeCommunicationFlowDelegatePlugin::ABCErrorType_optional __swiftcall ABCErrorType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_B6DA8;
  v6._object = object;
  v3 = sub_8D39C(v2, v6);

  if (v3 == 1)
  {
    v4.value = HomeCommunicationFlowDelegatePlugin_ABCErrorType_error;
  }

  else
  {
    v4.value = HomeCommunicationFlowDelegatePlugin_ABCErrorType_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t ABCErrorType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x726F727265;
  }

  else
  {
    return 0x6775626564;
  }
}

uint64_t sub_98FC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_24EA8();
}

HomeCommunicationFlowDelegatePlugin::ABCErrorType_optional sub_9920@<W0>(Swift::String *a1@<X0>, HomeCommunicationFlowDelegatePlugin::ABCErrorType_optional *a2@<X8>)
{
  result.value = ABCErrorType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_9950@<X0>(uint64_t *a1@<X8>)
{
  result = ABCErrorType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = 0xE500000000000000;
  return result;
}

HomeCommunicationFlowDelegatePlugin::ABCErrorSubType_optional __swiftcall ABCErrorSubType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v5._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_B6DF8;
  v5._object = object;
  v3 = sub_8D39C(v2, v5);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t ABCErrorSubType.rawValue.getter(char a1)
{
  result = 0x636972656E6567;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      return result;
    default:
      result = 0xD00000000000001ELL;
      break;
  }

  return result;
}

unint64_t sub_9A6C()
{
  result = qword_C00E8;
  if (!qword_C00E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C00E8);
  }

  return result;
}

unint64_t sub_9AD0()
{
  result = qword_C00F0[0];
  if (!qword_C00F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_C00F0);
  }

  return result;
}

HomeCommunicationFlowDelegatePlugin::ABCErrorSubType_optional sub_9B3C@<W0>(Swift::String *a1@<X0>, HomeCommunicationFlowDelegatePlugin::ABCErrorSubType_optional *a2@<X8>)
{
  result.value = ABCErrorSubType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t sub_9B6C@<X0>(unint64_t *a1@<X8>)
{
  result = ABCErrorSubType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for ABCErrorType(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ABCErrorType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x9CFCLL);
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

uint64_t getEnumTagSinglePayload for ABCErrorSubType(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ABCErrorSubType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x9E9CLL);
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

uint64_t sub_9F38(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = *a1;
  v7 = *(a1 + 64);
  if (v7)
  {
    v8 = *a1;
    swift_errorRetain();
  }

  else
  {
    sub_AE8C(a1);
    sub_AE24(v11, v21, &qword_C0178, &qword_8E8C8);
    sub_9FFC(v22, a4, a5, v21);
    sub_AEB4(v12, v13, v14, v15, v16, v17, v18, v19, v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v21[6], v21[7], v21[8], v21[9], v22[0], v22[1], v22[2], v22[3], v23);
    sub_92C0(v21, &qword_C0180, &unk_8E8D0);
  }

  a2(v6, v7 & 1);
  return sub_ADD8(v6, v7 & 1);
}

void sub_9FFC(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a1[1];
  v57 = *a1;
  v5 = a1[3];
  v61 = a1[2];
  v53 = a1[5];
  v54 = a1[4];
  v47 = a1[6];
  v48 = a1[7];
  if (qword_BF848 != -1)
  {
    swift_once();
  }

  v6 = sub_8B71C();
  if (qword_BF850 != -1)
  {
    swift_once();
  }

  v50 = sub_8B71C();
  if (qword_BF858 != -1)
  {
    swift_once();
  }

  v55 = sub_8B71C();
  sub_ADE4(0, &qword_C2290, SAUIConfirmationOption_ptr);

  v7 = sub_8CEDC();
  v9 = v8;
  v10 = sub_8CEDC();
  v12 = v11;
  sub_2664(&qword_C0690, &unk_8EBF0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_8E860;
  *(v13 + 32) = v6;
  v62 = v6;
  v52 = sub_49108(v57, v4, v7, v9, v10, v12, v13);

  v14 = sub_8CEDC();
  v16 = v15;
  v17 = sub_8CEDC();
  v19 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_8E860;
  *(v20 + 32) = v50;
  v58 = v50;
  v51 = sub_49108(v61, v5, v14, v16, v17, v19, v20);

  v21 = sub_8CEDC();
  v23 = v22;
  v24 = sub_8CEDC();
  v26 = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_8E860;
  *(v27 + 32) = v55;
  v56 = v55;
  v28 = sub_49108(v54, v53, v21, v23, v24, v26, v27);
  sub_ADE4(0, &qword_C0188, SAUIConfirmationOptions_ptr);
  v29 = v28;
  v30 = v51;
  v31 = v52;
  v32 = sub_491D8();
  if (a3)
  {
    v33 = a3;
    v34 = a2;
  }

  else
  {

    v33 = v48;

    v34 = v47;
  }

  v35 = qword_BF818;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = sub_8CD0C();
  sub_33F4(v36, qword_C3DF8);

  v37 = sub_8CCEC();
  v38 = sub_8D11C();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v60 = v31;
    v40 = v30;
    v41 = v29;
    v42 = v32;
    v43 = swift_slowAlloc();
    v64 = v43;
    *v39 = 136315138;

    v44 = sub_862D8(v34, v33, &v64);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_0, v37, v38, "Making a CarPlay snippet to stop announcements with an announcer name: %s.", v39, 0xCu);
    sub_2714(v43);
    v32 = v42;
    v29 = v41;
    v30 = v40;
    v31 = v60;
  }

  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_8E860;
  sub_ADE4(0, &qword_C0190, SAHomeCommunicationAnnouncementSnippet_ptr);
  v46 = v32;
  *(v45 + 32) = sub_493D4();

  *a4 = v45;
}

uint64_t sub_A5A8(uint64_t a1, void (*a2)(uint64_t, void))
{
  v3 = *a1;
  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = *a1;
    swift_errorRetain();
  }

  else
  {
    sub_AE8C(a1);
    sub_AE24(v6, v16, &qword_C0198, &qword_8E8E0);
    sub_A664(v17, v16);
    sub_AEB4(v7, v8, v9, v10, v11, v12, v13, v14, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7], v16[8], v16[9], v17[0], v17[1], v17[2], v17[3], v18);
    sub_92C0(v16, &qword_C01A0, &qword_8E8E8);
  }

  a2(v3, v4 & 1);
  return sub_ADD8(v3, v4 & 1);
}

void sub_A664(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[3];
  v54 = *a1;
  v56 = a1[2];
  v50 = a1[4];
  v49 = a1[5];
  v45 = a1[7];
  v46 = a1[6];
  if (qword_BF848 != -1)
  {
    swift_once();
  }

  v4 = sub_8B71C();
  if (qword_BF840 != -1)
  {
    swift_once();
  }

  v5 = sub_8B71C();
  if (qword_BF858 != -1)
  {
    swift_once();
  }

  v51 = sub_8B71C();
  sub_ADE4(0, &qword_C2290, SAUIConfirmationOption_ptr);

  v6 = sub_8CEDC();
  v8 = v7;
  v9 = sub_8CEDC();
  v11 = v10;
  sub_2664(&qword_C0690, &unk_8EBF0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_8E860;
  *(v12 + 32) = v4;
  v57 = v4;
  v48 = sub_49108(v54, v2, v6, v8, v9, v11, v12);

  v13 = sub_8CEDC();
  v15 = v14;
  v16 = sub_8CEDC();
  v18 = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_8E860;
  *(v19 + 32) = v5;
  v55 = v5;
  v47 = sub_49108(v56, v3, v13, v15, v16, v18, v19);

  v20 = sub_8CEDC();
  v22 = v21;
  v23 = sub_8CEDC();
  v25 = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_8E860;
  *(v26 + 32) = v51;
  v52 = v51;
  v27 = sub_49108(v50, v49, v20, v22, v23, v25, v26);
  sub_75540();
  v29 = sub_75AD4(v28);
  v31 = v30;

  if (!v31)
  {

    v31 = v45;

    v29 = v46;
  }

  sub_ADE4(0, &qword_C0188, SAUIConfirmationOptions_ptr);
  v32 = v27;
  v33 = v47;
  v34 = v48;
  v35 = sub_491D8();
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v36 = sub_8CD0C();
  sub_33F4(v36, qword_C3DF8);

  v37 = sub_8CCEC();
  v38 = sub_8D11C();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v59 = v53;
    *v39 = 136315138;

    v40 = sub_862D8(v29, v31, &v59);
    v41 = v35;
    v42 = v40;

    *(v39 + 4) = v42;
    v35 = v41;
    _os_log_impl(&dword_0, v37, v38, "Making a CarPlay snippet to play announcements with an announcer name: %s.", v39, 0xCu);
    sub_2714(v53);
  }

  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_8E860;
  sub_ADE4(0, &qword_C0190, SAHomeCommunicationAnnouncementSnippet_ptr);
  v44 = v35;
  *(v43 + 32) = sub_493D4();

  *a2 = v43;
}

void sub_AC14()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_AC34();
}

uint64_t sub_AC64()
{
  v1 = *(v0 + *(*v0 + qword_C3D60 + 16));

  return sub_2714((v0 + *(*v0 + qword_C3D60 + 24)));
}

void *sub_ACF4()
{
  v0 = sub_8BB5C();
  v1 = *(v0 + *(*v0 + qword_C3D60 + 16));

  sub_2714((v0 + *(*v0 + qword_C3D60 + 24)));
  return v0;
}

uint64_t sub_AD90()
{
  v0 = sub_ACF4();

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_ADD8(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_ADE4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_AE24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2664(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

__n128 sub_AE8C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  result = *(a1 + 40);
  v4 = *(a1 + 56);
  return result;
}

uint64_t CarPlayIntercomControlModel.playStopText.getter()
{
  sub_2664(&qword_C01A8, &qword_8E8F0);
  sub_8B07C();
  return v1;
}

uint64_t (*CarPlayIntercomControlModel.playStopText.modify(void *a1))()
{
  v2 = sub_AFF4(0x28uLL);
  *a1 = v2;
  sub_2664(&qword_C01A8, &qword_8E8F0);
  v2[4] = sub_8B06C();
  return sub_AFF0;
}

void *sub_AFF4(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t CarPlayIntercomControlModel.replyText.getter()
{
  v0 = *(type metadata accessor for CarPlayIntercomControlModel() + 20);
  sub_2664(&qword_C01A8, &qword_8E8F0);
  sub_8B07C();
  return v2;
}

uint64_t type metadata accessor for CarPlayIntercomControlModel()
{
  result = qword_C0258;
  if (!qword_C0258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CarPlayIntercomControlModel.replyText.setter()
{
  v0 = *(type metadata accessor for CarPlayIntercomControlModel() + 20);
  sub_2664(&qword_C01A8, &qword_8E8F0);
  return sub_8B08C();
}

uint64_t (*CarPlayIntercomControlModel.replyText.modify(void *a1))()
{
  v2 = sub_AFF4(0x28uLL);
  *a1 = v2;
  v3 = *(type metadata accessor for CarPlayIntercomControlModel() + 20);
  sub_2664(&qword_C01A8, &qword_8E8F0);
  v2[4] = sub_8B06C();
  return sub_C5E0;
}

uint64_t CarPlayIntercomControlModel.isPlaying.getter()
{
  v0 = *(type metadata accessor for CarPlayIntercomControlModel() + 24);
  sub_2664(&qword_C01B0, &qword_8E8F8);
  sub_8B07C();
  return v2;
}

uint64_t CarPlayIntercomControlModel.isPlaying.setter()
{
  v0 = *(type metadata accessor for CarPlayIntercomControlModel() + 24);
  sub_2664(&qword_C01B0, &qword_8E8F8);
  return sub_8B08C();
}

uint64_t (*CarPlayIntercomControlModel.isPlaying.modify(void *a1))()
{
  v2 = sub_AFF4(0x28uLL);
  *a1 = v2;
  v3 = *(type metadata accessor for CarPlayIntercomControlModel() + 24);
  sub_2664(&qword_C01B0, &qword_8E8F8);
  v2[4] = sub_8B06C();
  return sub_C5E0;
}

void sub_B30C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t CarPlayIntercomControlModel.init(playStopText:replyText:isPlaying:)()
{
  sub_8B05C();
  v0 = type metadata accessor for CarPlayIntercomControlModel();
  v1 = *(v0 + 20);
  sub_8B05C();
  v2 = *(v0 + 24);
  return sub_8B05C();
}

uint64_t sub_B41C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x706F745379616C70 && a2 == 0xEC00000074786554;
  if (v4 || (sub_8D45C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x786554796C706572 && a2 == 0xE900000000000074;
    if (v6 || (sub_8D45C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E6979616C507369 && a2 == 0xE900000000000067)
    {

      return 2;
    }

    else
    {
      v8 = sub_8D45C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

Swift::Int sub_B57C(unsigned __int8 a1)
{
  sub_8D50C();
  sub_8D51C(a1);
  return sub_8D54C();
}

uint64_t sub_B5D0(char a1)
{
  if (!a1)
  {
    return 0x706F745379616C70;
  }

  if (a1 == 1)
  {
    return 0x786554796C706572;
  }

  return 0x6E6979616C507369;
}

Swift::Int sub_B658()
{
  v1 = *v0;
  sub_8D50C();
  sub_8D51C(v1);
  return sub_8D54C();
}

uint64_t sub_B6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_B41C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_B6EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_B53C();
  *a1 = result;
  return result;
}

uint64_t sub_B714(uint64_t a1)
{
  v2 = sub_B968();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B750(uint64_t a1)
{
  v2 = sub_B968();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CarPlayIntercomControlModel.encode(to:)(void *a1)
{
  v3 = sub_2664(&qword_C01B8, &qword_8E900);
  v4 = sub_3488(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v18 - v9;
  v11 = a1[4];
  sub_622C(a1, a1[3]);
  sub_B968();
  sub_8D57C();
  v21 = 0;
  sub_2664(&qword_C01A8, &qword_8E8F0);
  sub_C5E4();
  sub_BEB4(v12);
  sub_C64C();
  if (!v1)
  {
    v13 = type metadata accessor for CarPlayIntercomControlModel();
    v14 = *(v13 + 20);
    v20 = 1;
    sub_C64C();
    v15 = *(v13 + 24);
    v19 = 2;
    sub_2664(&qword_C01B0, &qword_8E8F8);
    sub_C5E4();
    sub_BA04(v16);
    sub_8D41C();
  }

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_B968()
{
  result = qword_C01C0;
  if (!qword_C01C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C01C0);
  }

  return result;
}

uint64_t sub_B9BC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_BA04(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_B9BC(&qword_C01B0, &qword_8E8F8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t CarPlayIntercomControlModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v45 = sub_2664(&qword_C01B0, &qword_8E8F8);
  v4 = sub_3488(v45);
  v42 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v44 = &v39 - v8;
  v9 = sub_2664(&qword_C01A8, &qword_8E8F0);
  v10 = sub_3488(v9);
  v46 = v11;
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v10);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v47 = &v39 - v17;
  v18 = sub_2664(&qword_C01D8, &qword_8E908);
  v19 = sub_3488(v18);
  v48 = v20;
  v49 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  v23 = type metadata accessor for CarPlayIntercomControlModel();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1[3];
  v27 = a1[4];
  v50 = a1;
  sub_622C(a1, v28);
  sub_B968();
  sub_8D56C();
  if (v2)
  {
    return sub_2714(v50);
  }

  v40 = v23;
  v41 = v26;
  v53 = 0;
  sub_C5FC();
  sub_BEB4(v29);
  v30 = v47;
  sub_C624();
  v47 = *(v46 + 32);
  (v47)(v41, v30, v9);
  v52 = 1;
  v31 = v16;
  sub_C624();
  v32 = v41;
  (v47)(&v41[*(v40 + 20)], v31, v9);
  v51 = 2;
  sub_C5FC();
  sub_BA04(v33);
  v35 = v44;
  v34 = v45;
  sub_8D3DC();
  v36 = sub_C614();
  v37(v36);
  (*(v42 + 32))(v32 + *(v40 + 24), v35, v34);
  sub_BF24(v32, v43);
  sub_2714(v50);
  return sub_BF88(v32);
}

uint64_t sub_BEB4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_B9BC(&qword_C01A8, &qword_8E8F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_BF24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarPlayIntercomControlModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_BF88(uint64_t a1)
{
  v2 = type metadata accessor for CarPlayIntercomControlModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_C04C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CarPlayIntercomControlModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_C0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2664(&qword_C01A8, &qword_8E8F0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_2664(&qword_C01B0, &qword_8E8F8);
    v8 = a1 + *(a3 + 24);
  }

  return sub_3364(v8, a2, v7);
}

uint64_t sub_C19C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2664(&qword_C01A8, &qword_8E8F0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_2664(&qword_C01B0, &qword_8E8F8);
    v10 = a1 + *(a4 + 24);
  }

  return sub_6270(v10, a2, a2, v9);
}

void sub_C258()
{
  sub_C2FC(319, &qword_C0268);
  if (v0 <= 0x3F)
  {
    sub_C2FC(319, &unk_C0270);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_C2FC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_8B09C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CarPlayIntercomControlModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for CarPlayIntercomControlModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xC49CLL);
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

unint64_t sub_C4D8()
{
  result = qword_C02A8;
  if (!qword_C02A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C02A8);
  }

  return result;
}

unint64_t sub_C530()
{
  result = qword_C02B0;
  if (!qword_C02B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C02B0);
  }

  return result;
}

unint64_t sub_C588()
{
  result = qword_C02B8;
  if (!qword_C02B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C02B8);
  }

  return result;
}

uint64_t sub_C614()
{
  v2 = *(v1 - 96);
  v3 = *(*(v1 - 104) + 8);
  return v0;
}

uint64_t sub_C624()
{
  v2 = *(v0 - 96);

  return sub_8D3DC();
}

uint64_t sub_C64C()
{

  return sub_8D41C();
}

void sub_C670()
{
  sub_8C95C();
  sub_8C94C();
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v0 = sub_8CD0C();
  sub_33F4(v0, qword_C3DF8);
  oslog = sub_8CCEC();
  v1 = sub_8D11C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_0, oslog, v1, "#CATBundleRegisterer Registering HomeCommunicationFlowDelegatePlugin bundle with DialogEngine", v2, 2u);
  }
}

uint64_t sub_C794()
{
  if (sub_8B5FC())
  {
    return 7;
  }

  sub_C834();
  if (sub_8B60C())
  {
    return 2;
  }

  sub_C834();
  if (sub_8B62C())
  {
    return 3;
  }

  sub_C834();
  if (sub_8B65C())
  {
    return 4;
  }

  sub_C834();
  if (sub_8B64C())
  {
    return 5;
  }

  sub_C834();
  if (sub_8B63C())
  {
    return 6;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_C840()
{
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v0 = sub_8CD0C();
  sub_33F4(v0, qword_C3DF8);
  v1 = sub_8CCEC();
  v2 = sub_8D11C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = sub_E8E0();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "#DirectInvocationHomeCommunicationFlow on(input:) returning true", v3, 2u);
    sub_E890();
  }

  return 1;
}

uint64_t sub_C8FC()
{
  type metadata accessor for DirectInvocationHomeCommunicationFlow();
  sub_E6A0(&qword_C0460, type metadata accessor for DirectInvocationHomeCommunicationFlow);
  return sub_8B34C();
}

uint64_t sub_C98C()
{
  sub_6608();
  v1[77] = v0;
  v1[76] = v2;
  v3 = sub_8BDBC();
  v1[78] = v3;
  v4 = *(v3 - 8);
  v1[79] = v4;
  v5 = *(v4 + 64);
  v1[80] = sub_E83C();
  v6 = sub_8BE0C();
  v1[81] = v6;
  v7 = *(v6 - 8);
  v1[82] = v7;
  v8 = *(v7 + 64);
  v1[83] = sub_E83C();

  return _swift_task_switch(sub_CA98, 0, 0);
}

uint64_t sub_CA98()
{
  v96 = v0;
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v1 = sub_8CD0C();
  v2 = sub_33F4(v1, qword_C3DF8);
  v3 = sub_8CCEC();
  v4 = sub_8D11C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_E8E0();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "#DirectInvocationHomeCommunicationFlow executing", v5, 2u);
    sub_E890();
  }

  v6 = *(v0 + 664);
  v7 = *(v0 + 656);
  v8 = *(v0 + 648);
  v9 = *(v0 + 616);

  v10 = v9 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin37DirectInvocationHomeCommunicationFlow_sharedGlobals;
  v11 = sub_622C((v9 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin37DirectInvocationHomeCommunicationFlow_sharedGlobals), *(v9 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin37DirectInvocationHomeCommunicationFlow_sharedGlobals + 24))[1];

  sub_8BD9C();
  sub_2EBF0(v6, v0 + 56);

  (*(v7 + 8))(v6, v8);
  if (*(v0 + 80))
  {
    sub_E510((v0 + 56), v0 + 16);
    sub_8BE1C();
    v12 = sub_2664(&qword_C0440, &qword_8EBE8);
    sub_E824(v12);
    v13 = sub_7E410(v95);
    v14 = *(v13 + *(*v13 + qword_C3D40 + 16));

    v15 = *(v0 + 40);
    v16 = *(v0 + 48);
    v17 = sub_622C((v0 + 16), v15);
    switch((*(v16 + 16))(v15, v16))
    {
      case 0u:
        v18 = sub_E794();
        v19(v18);
        sub_E528(v0 + 16, v0 + 176);
        sub_E528(v10, v0 + 216);
        sub_E58C(v0 + 216, *(v0 + 240));
        sub_E6E8();
        v21 = *(v20 + 64);
        sub_E83C();
        sub_E8A8();
        v22();

        v23 = sub_181F4(v17, (v0 + 176), v14, v16);
        sub_2714((v0 + 216));

        AnnouncementFlow = type metadata accessor for SendAnnouncementFlow();
        *(v0 + 120) = AnnouncementFlow;
        sub_E73C();
        v27 = sub_E6A0(v25, v26);
        sub_E8BC(v27);
        *(v0 + 96) = v23;
        v28 = sub_8CCEC();
        v29 = sub_8D11C();
        if (!sub_E7DC(v29))
        {
          goto LABEL_21;
        }

        v30 = "#DirectInvocationHomeCommunicationFlow pushing send flow";
        break;
      case 1u:
        v66 = sub_E794();
        v67(v66);
        sub_E528(v0 + 16, v0 + 256);
        sub_E528(v10, v0 + 296);
        sub_E58C(v0 + 296, *(v0 + 320));
        sub_E6E8();
        v69 = *(v68 + 64);
        sub_E83C();
        sub_E8A8();
        v70();

        v71 = sub_181F4(v17, (v0 + 256), v14, v16);
        sub_2714((v0 + 296));

        AnnouncementFlow = type metadata accessor for SendAnnouncementFlow();
        *(v0 + 120) = AnnouncementFlow;
        sub_E73C();
        v74 = sub_E6A0(v72, v73);
        sub_E8BC(v74);
        *(v0 + 96) = v71;
        v28 = sub_8CCEC();
        v75 = sub_8D11C();
        if (!sub_E7DC(v75))
        {
          goto LABEL_21;
        }

        v30 = "#DirectInvocationHomeCommunicationFlow pushing reply flow";
        break;
      case 2u:
        v38 = sub_E774();
        v39(v38);
        sub_E528(v0 + 16, v0 + 456);
        sub_E528(v10, v0 + 496);
        sub_E58C(v0 + 496, *(v0 + 520));
        sub_E6E8();
        v41 = *(v40 + 64);
        sub_E83C();
        sub_E86C();
        v42();
        v43 = type metadata accessor for SharedGlobals();
        *(v0 + 560) = v43;
        *(v0 + 568) = &off_BB508;
        v44 = sub_E5DC((v0 + 536));
        sub_E8C8(v44);
        AnnouncementFlow = type metadata accessor for ReadAnnouncementFlow();
        v45 = sub_E824(AnnouncementFlow);
        v2 = v14;
        sub_E58C(v0 + 536, *(v0 + 560));
        sub_E6E8();
        v47 = *(v46 + 64);
        sub_E83C();
        sub_E854();
        v48();
        v45[11] = v43;
        v45[12] = &off_BB508;
        v49 = sub_E5DC(v45 + 8);
        sub_E8C8(v49);
        (*(v6 + 32))(v45 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin20ReadAnnouncementFlow_input);
        sub_E510((v0 + 456), (v45 + 2));
        v45[7] = v14;

        sub_2714((v0 + 536));

        sub_2714((v0 + 496));

        *(v0 + 120) = AnnouncementFlow;
        v50 = sub_E6A0(&qword_C0458, type metadata accessor for ReadAnnouncementFlow);
        sub_E8BC(v50);
        *(v0 + 96) = v45;
        v28 = sub_8CCEC();
        v51 = sub_8D11C();
        if (!sub_E7DC(v51))
        {
          goto LABEL_21;
        }

        v30 = "#DirectInvocationHomeCommunicationFlow pushing reading flow";
        break;
      case 3u:
        v52 = sub_E774();
        v53(v52);
        sub_E528(v0 + 16, v0 + 336);
        sub_E528(v10, v0 + 376);
        sub_E58C(v0 + 376, *(v0 + 400));
        sub_E6E8();
        v55 = *(v54 + 64);
        sub_E83C();
        sub_E86C();
        v56();
        v57 = type metadata accessor for SharedGlobals();
        *(v0 + 440) = v57;
        *(v0 + 448) = &off_BB508;
        v58 = sub_E5DC((v0 + 416));
        sub_E8C8(v58);
        AnnouncementFlow = type metadata accessor for StopAnnouncementFlow();
        v59 = sub_E824(AnnouncementFlow);
        v2 = v14;
        sub_E58C(v0 + 416, *(v0 + 440));
        sub_E6E8();
        v61 = *(v60 + 64);
        sub_E83C();
        sub_E854();
        v62();
        v59[11] = v57;
        v59[12] = &off_BB508;
        v63 = sub_E5DC(v59 + 8);
        sub_E8C8(v63);
        (*(v6 + 32))(v59 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin20StopAnnouncementFlow_input);
        sub_E510((v0 + 336), (v59 + 2));
        v59[7] = v14;

        sub_2714((v0 + 416));

        sub_2714((v0 + 376));

        *(v0 + 120) = AnnouncementFlow;
        v64 = sub_E6A0(&qword_C0450, type metadata accessor for StopAnnouncementFlow);
        sub_E8BC(v64);
        *(v0 + 96) = v59;
        v28 = sub_8CCEC();
        v65 = sub_8D11C();
        if (!sub_E7DC(v65))
        {
          goto LABEL_21;
        }

        v30 = "#DirectInvocationHomeCommunicationFlow pushing stop flow";
        break;
      default:
        sub_E528(v0 + 16, v0 + 136);
        v81 = sub_8CCEC();
        v82 = sub_8D12C();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v95[0] = v84;
          *v83 = 136315138;
          v85 = *(v0 + 160);
          v86 = *(v0 + 168);
          sub_622C((v0 + 136), v85);
          v87 = (*(v86 + 16))(v85, v86);
          v88 = sub_1D6AC(v87);
          v89 = [v88 _className];

          v90 = sub_8CEDC();
          v92 = v91;

          sub_2714((v0 + 136));
          v93 = sub_862D8(v90, v92, v95);

          *(v83 + 4) = v93;
          _os_log_impl(&dword_0, v81, v82, "#DirectInvocationHomeCommunicationFlow failed to get flow from announcementType%s", v83, 0xCu);
          sub_2714(v84);
          sub_E890();
          sub_E890();
        }

        else
        {

          sub_2714((v0 + 136));
        }

        v94 = *(v0 + 608);
        sub_8B7FC();

        goto LABEL_22;
    }

    v76 = sub_E8E0();
    *v76 = 0;
    _os_log_impl(&dword_0, v28, v2, v30, v76, 2u);
    sub_E890();
LABEL_21:
    v77 = *(v0 + 608);

    sub_622C((v0 + 96), AnnouncementFlow);
    sub_8B7DC();

    sub_2714((v0 + 96));
LABEL_22:
    sub_2714((v0 + 16));
    v78 = *(v0 + 664);
    v79 = *(v0 + 640);

    sub_65A0();

    return v80();
  }

  else
  {
    sub_E3BC(v0 + 56);
    v31 = sub_8CCEC();
    v32 = sub_8D12C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = sub_E8E0();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "#DirectInvocationHomeCommunicationFlow failed to get nlIntent from parse. Returning nil", v33, 2u);
      sub_E890();
    }

    v34 = *(v0 + 616);

    v35 = *(v34 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin37DirectInvocationHomeCommunicationFlow_sendAnnouncementCATsSimple);
    v36 = swift_task_alloc();
    *(v0 + 672) = v36;
    *v36 = v0;
    v36[1] = sub_D628;

    return sub_4C878();
  }
}

uint64_t sub_D628(uint64_t a1)
{
  sub_E884();
  v5 = v4;
  v6 = *(v4 + 672);
  v7 = *v2;
  sub_E6F8();
  *v8 = v7;

  if (v1)
  {

    v9 = sub_D8A0;
  }

  else
  {
    *(v5 + 680) = a1;
    v9 = sub_D748;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_D748()
{
  v1 = v0[85];
  v2 = v0[77];
  v3 = v0[76];
  sub_8BB9C();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = sub_8B14C();
  sub_E824(v5);

  v6 = v1;
  v7 = sub_E708();
  type metadata accessor for RadarUtils();
  inited = swift_initStackObject();
  v9 = sub_8C88C();
  sub_E824(v9);
  *(inited + 16) = sub_E7B0();
  sub_E7F8();
  swift_setDeallocating();
  v10 = *(inited + 16);

  v0[75] = v7;
  sub_8B7DC();

  v11 = v0[83];
  v12 = v0[80];

  sub_65A0();

  return v13();
}

uint64_t sub_D8A0()
{
  v1 = [objc_allocWithZone(DialogExecutionResult) init];
  v2 = v0[77];
  v3 = v0[76];
  sub_8BB9C();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = sub_8B14C();
  sub_E824(v5);

  v6 = v1;
  v7 = sub_E708();
  type metadata accessor for RadarUtils();
  inited = swift_initStackObject();
  v9 = sub_8C88C();
  sub_E824(v9);
  *(inited + 16) = sub_E7B0();
  sub_E7F8();
  swift_setDeallocating();
  v10 = *(inited + 16);

  v0[75] = v7;
  sub_8B7DC();

  v11 = v0[83];
  v12 = v0[80];

  sub_65A0();

  return v13();
}

uint64_t sub_DA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  v4 = *(*(sub_8B6BC() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_8BCBC();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_DAFC, 0, 0);
}

uint64_t sub_DAFC()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v4 = sub_8B8FC();
  sub_E824(v4);
  v5 = sub_8B8EC();
  v0[9] = v5;
  v0[2] = v5;
  sub_2664(&qword_C0690, &unk_8EBF0);
  v6 = swift_allocObject();
  v0[10] = v6;
  *(v6 + 16) = xmmword_8E860;
  *(v6 + 32) = v3;
  v7 = v3;
  sub_8B6AC();
  sub_8BC3C();
  v8 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_DC4C;
  v10 = v0[8];
  v11 = v0[3];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v6, v10, v4, &protocol witness table for ResponseFactory);
}

uint64_t sub_DC4C()
{
  sub_E884();
  v2 = v1[11];
  v3 = v1[10];
  v4 = v1[8];
  v5 = v1[7];
  v6 = v1[6];
  v7 = *v0;
  sub_E6F8();
  *v8 = v7;

  (*(v5 + 8))(v4, v6);

  return _swift_task_switch(sub_DDB4, 0, 0);
}

uint64_t sub_DDB4()
{
  sub_6608();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[5];

  sub_65A0();

  return v4();
}

uint64_t sub_DE54()
{
  v1 = OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin37DirectInvocationHomeCommunicationFlow_input;
  v2 = sub_8BDBC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2714((v0 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin37DirectInvocationHomeCommunicationFlow_sharedGlobals));
  v3 = *(v0 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin37DirectInvocationHomeCommunicationFlow_sendAnnouncementCATsSimple);

  return v0;
}

uint64_t sub_DED4()
{
  sub_DE54();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for DirectInvocationHomeCommunicationFlow()
{
  result = qword_C0388;
  if (!qword_C0388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_DF80()
{
  result = sub_8BDBC();
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

uint64_t sub_E044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_E0F4;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_E0F4()
{
  sub_6608();
  v2 = v1;
  sub_E884();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_E6F8();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_E204()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_E2A0;

  return sub_C98C();
}

uint64_t sub_E2A0()
{
  sub_6608();
  sub_E884();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_E6F8();
  *v4 = v3;

  sub_65A0();

  return v5();
}

uint64_t sub_E380(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DirectInvocationHomeCommunicationFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_E3BC(uint64_t a1)
{
  v2 = sub_2664(&qword_C0438, &qword_8EBD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_E424()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_E464(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_E2A0;

  return sub_DA10(a1, v5, v4);
}

uint64_t sub_E510(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_E528(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_E58C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t *sub_E5DC(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_E63C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedGlobals();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_E6A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_E708()
{

  return sub_8B13C();
}

uint64_t sub_E754()
{

  return swift_once();
}

uint64_t sub_E774()
{
  result = v0[80];
  v2 = v0[78];
  v3 = *(v0[79] + 16);
  return result;
}

uint64_t sub_E794()
{
  v1 = v0[78];
  v2 = *(v0[79] + 16);
  return v0[80];
}

uint64_t sub_E7B0()
{

  return sub_8C87C();
}

BOOL sub_E7DC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_E7F8()
{

  return sub_38AE4(1, 1);
}

uint64_t sub_E824(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_E83C()
{

  return swift_task_alloc();
}

uint64_t sub_E890()
{
}

uint64_t sub_E8C8(uint64_t a1)
{

  return sub_E63C(v1, a1);
}

uint64_t sub_E8E0()
{

  return swift_slowAlloc();
}

uint64_t sub_E8F8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  return v6;
}

void *sub_E910()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  return v0;
}

uint64_t sub_E948()
{
  sub_E910();

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_E9D0()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 32);

  return v1;
}

uint64_t sub_EA04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_22D1C(a1, WitnessTable);
}

unint64_t sub_EA58(uint64_t a1)
{
  result = sub_EA80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_EA80()
{
  result = qword_C0528;
  if (!qword_C0528)
  {
    type metadata accessor for DirectInvocationHomeCommunicationNLIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0528);
  }

  return result;
}

id sub_EAD4(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  v5 = a1[4];
  sub_622C(a1, a1[3]);
  v6 = sub_8B66C();
  v7 = [v4 runSiriKitExecutorCommandWithContext:v6 payload:v2];

  return v7;
}

void sub_EB68(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v43 = a3;
  v4 = sub_8BDEC();
  v5 = sub_3488(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v5);
  v11 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v41 - v12;
  v14 = sub_2664(&qword_C05D0, &qword_8ECC0);
  v15 = sub_3488(v14);
  v42 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  v20 = &v41 - v19;
  if (qword_BF7E0 != -1)
  {
    swift_once();
  }

  v21 = sub_2664(&qword_C05D8, &qword_8ECC8);
  sub_33F4(v21, qword_C3D88);
  v22 = sub_8C81C();
  v22(v45, a1);

  if (LOBYTE(v45[0]) == 7)
  {
    if (qword_BF818 != -1)
    {
      sub_E754();
    }

    v23 = sub_8CD0C();
    sub_33F4(v23, qword_C3DF8);
    v24 = v4;
    (*(v7 + 16))(v11, a1, v4);
    v25 = sub_8CCEC();
    v26 = sub_8D12C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v45[0] = v28;
      *v27 = 136315138;
      v29 = sub_8BDCC();
      v31 = v30;
      (*(v7 + 8))(v11, v24);
      v32 = sub_862D8(v29, v31, v45);

      *(v27 + 4) = v32;
      sub_2714(v28);
    }

    else
    {

      (*(v7 + 8))(v11, v4);
    }

    v33 = v43;
    *(v43 + 32) = 0;
    *v33 = 0u;
    v33[1] = 0u;
  }

  else
  {
    v34 = v41;
    LODWORD(v41) = LOBYTE(v45[0]);
    sub_E528(v34, v45);
    (*(v7 + 16))(v13, a1, v4);
    v35 = (*(v7 + 80) + 56) & ~*(v7 + 80);
    v36 = swift_allocObject();
    sub_E510(v45, v36 + 16);
    (*(v7 + 32))(v36 + v35, v13, v4);
    v37 = type metadata accessor for DirectInvocationHomeCommunicationNLIntent();
    sub_8C80C();
    v38 = sub_8C81C();
    (*(v42 + 8))(v20, v14);
    v44 = v41;
    v38(v45, &v44);

    v39 = *&v45[0];
    v40 = v43;
    *(v43 + 24) = v37;
    v40[4] = sub_FC80();
    *v40 = v39;
  }
}

uint64_t sub_F158()
{
  v0 = sub_2664(&qword_C05D8, &qword_8ECC8);
  sub_FCD8(v0, qword_C3D88);
  sub_33F4(v0, qword_C3D88);
  sub_8BDEC();
  sub_2664(&qword_C0600, &qword_8ECE8);
  return sub_8C80C();
}

void sub_F1F4(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_8BDEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_8BDCC();
  v11 = v9;
  v12 = v10 == 0xD00000000000003ALL && 0x8000000000095C40 == v9;
  if (v12 || (sub_8D45C() & 1) != 0 || (v10 == 0xD000000000000047 ? (v13 = 0x8000000000095C80 == v11) : (v13 = 0), v13 || (sub_8D45C() & 1) != 0 || (v10 == 0xD000000000000036 ? (v14 = 0x8000000000095CD0 == v11) : (v14 = 0), v14 || (sub_8D45C() & 1) != 0)))
  {

    v15 = 2;
  }

  else
  {
    v16 = v10 == 0xD000000000000036 && 0x8000000000095D10 == v11;
    if (v16 || (sub_8D45C() & 1) != 0)
    {

      v15 = 3;
    }

    else
    {
      v17 = v10 == 0xD000000000000037 && 0x8000000000095D50 == v11;
      if (v17 || (sub_8D45C() & 1) != 0)
      {

        v15 = 1;
      }

      else if (v10 == 0xD000000000000036 && 0x8000000000095D90 == v11)
      {

        v15 = 0;
      }

      else
      {
        v19 = sub_8D45C();

        v15 = 0;
        if ((v19 & 1) == 0)
        {
          if (qword_BF818 != -1)
          {
            swift_once();
          }

          v20 = sub_8CD0C();
          sub_33F4(v20, qword_C3DF8);
          (*(v5 + 16))(v8, a1, v4);
          v21 = sub_8CCEC();
          v22 = sub_8D11C();
          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            v30 = v29;
            *v23 = 136315138;
            HIDWORD(v28) = v22;
            v24 = sub_8BDCC();
            v26 = v25;
            (*(v5 + 8))(v8, v4);
            v27 = sub_862D8(v24, v26, &v30);

            *(v23 + 4) = v27;
            sub_2714(v29);
          }

          else
          {

            (*(v5 + 8))(v8, v4);
          }

          v15 = 7;
        }
      }
    }
  }

  *a2 = v15;
}

uint64_t sub_F5F0@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_2664(&qword_C05E8, &unk_8ECD0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v34 - v8;
  v10 = *a1;
  if (v10)
  {
    if (v10 == 1)
    {
      sub_2FCD4();
      v11 = sub_8CDCC();
      if (sub_3364(v9, 1, v11) != 1)
      {
        v17 = sub_8CDBC();
        v16 = v20;
        (*(*(v11 - 8) + 8))(v9, v11);
        v21 = qword_BF818;

        if (v21 != -1)
        {
          swift_once();
        }

        v22 = sub_8CD0C();
        sub_33F4(v22, qword_C3DF8);

        v23 = sub_8CCEC();
        v24 = sub_8D11C();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v34[1] = v3;
          *&v35 = v26;
          v27 = v26;
          *v25 = 136315138;
          v28 = sub_862D8(v17, v16, &v35);

          *(v25 + 4) = v28;
          _os_log_impl(&dword_0, v23, v24, "DirectInvocationTransformer replying to intercom with id=%s", v25, 0xCu);
          sub_2714(v27);
        }

        else
        {
        }

        goto LABEL_38;
      }

      sub_92C0(v9, &qword_C05E8, &unk_8ECD0);
      if (qword_BF818 != -1)
      {
        swift_once();
      }

      v12 = sub_8CD0C();
      sub_33F4(v12, qword_C3DF8);
      v13 = sub_8CCEC();
      v14 = sub_8D12C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_0, v13, v14, "#DirectInvocationTransformer replying to intercom through direct invocation but found no announcement ID", v15, 2u);
      }
    }

    v16 = 0;
    v17 = 0;
LABEL_38:
    v32 = &_swiftEmptyArrayStorage;
    v30 = &_swiftEmptyArrayStorage;
    v19 = &_swiftEmptyArrayStorage;
    goto LABEL_39;
  }

  v18 = sub_8BDDC();
  if (!v18)
  {
    v35 = 0u;
    v36 = 0u;
    goto LABEL_19;
  }

  sub_5A1A8(0x73656D6F68, 0xE500000000000000, v18, &v35);

  if (!*(&v36 + 1))
  {
LABEL_19:
    sub_92C0(&v35, &qword_C05F0, &unk_8F020);
    goto LABEL_20;
  }

  sub_2664(&qword_C05F8, &qword_8ECE0);
  if (swift_dynamicCast())
  {
    v19 = v37;
    goto LABEL_21;
  }

LABEL_20:
  v19 = &_swiftEmptyArrayStorage;
LABEL_21:
  v29 = sub_8BDDC();
  if (!v29)
  {
    v35 = 0u;
    v36 = 0u;
    goto LABEL_26;
  }

  sub_5A1A8(0x736D6F6F72, 0xE500000000000000, v29, &v35);

  if (!*(&v36 + 1))
  {
LABEL_26:
    sub_92C0(&v35, &qword_C05F0, &unk_8F020);
    goto LABEL_27;
  }

  sub_2664(&qword_C05F8, &qword_8ECE0);
  if (swift_dynamicCast())
  {
    v30 = v37;
    goto LABEL_28;
  }

LABEL_27:
  v30 = &_swiftEmptyArrayStorage;
LABEL_28:
  v31 = sub_8BDDC();
  if (!v31)
  {
    v35 = 0u;
    v36 = 0u;
    goto LABEL_33;
  }

  sub_5A1A8(0x73656E6F7ALL, 0xE500000000000000, v31, &v35);

  if (!*(&v36 + 1))
  {
LABEL_33:
    sub_92C0(&v35, &qword_C05F0, &unk_8F020);
    goto LABEL_34;
  }

  sub_2664(&qword_C05F8, &qword_8ECE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_34:
    v32 = &_swiftEmptyArrayStorage;
    goto LABEL_35;
  }

  v32 = v37;
LABEL_35:
  v16 = 0;
  v17 = 0;
LABEL_39:
  type metadata accessor for DirectInvocationHomeCommunicationNLIntent();
  swift_allocObject();
  result = sub_E8F8(v10, v17, v16, v19, v30, v32);
  *a2 = result;
  return result;
}

uint64_t sub_FB48()
{
  v1 = sub_8BDEC();
  sub_3488(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = *(v6 + 64);
  sub_2714((v0 + 16));
  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

unint64_t sub_FC80()
{
  result = qword_C05E0;
  if (!qword_C05E0)
  {
    type metadata accessor for DirectInvocationHomeCommunicationNLIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C05E0);
  }

  return result;
}

uint64_t *sub_FCD8(uint64_t a1, uint64_t *a2)
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

uint64_t type metadata accessor for DisplayTextTemplatingService()
{
  result = qword_C0610;
  if (!qword_C0610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_FDD8()
{
  sub_11614();
  v28 = v0;
  v29 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_2664(&qword_C0660, &qword_92260);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v27 - v10;
  v12 = sub_8B02C();
  v13 = sub_3488(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + qword_C0608) = v3;
  v27[1] = "displayTextCatFamily";
  v20 = v5[4];
  sub_622C(v5, v5[3]);

  sub_8B5DC();
  v21 = sub_8B01C();
  v23 = v22;
  (*(v15 + 8))(v19, v12);
  v31[0] = v21;
  v31[1] = v23;
  v30[0] = 45;
  v30[1] = 0xE100000000000000;
  v31[5] = 95;
  v31[6] = 0xE100000000000000;
  sub_10C68();
  sub_8D1FC();

  type metadata accessor for INIntentSlotValueType(0);
  sub_10CBC();
  sub_8CE6C();
  sub_E528(v7, v31);
  sub_E528(v5, v30);
  v24 = sub_8BCEC();
  v25 = *(v24 - 8);
  v26 = v29;
  (*(v25 + 16))(v11, v29, v24);
  sub_6270(v11, 0, 1, v24);
  sub_8BA5C();

  sub_2714(v7);
  (*(v25 + 8))(v26, v24);
  sub_2714(v5);
  sub_115FC();
}

uint64_t sub_10130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void *))
{
  v10 = swift_allocObject();
  v10[2] = v5;
  v10[3] = a1;
  v10[4] = a2;
  v11 = *(v5 + qword_C0608);

  a5(a4, v10);
}

void sub_101D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_11614();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = sub_2664(&qword_C0680, &unk_8ED30);
  v31 = sub_115AC(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  __chkstk_darwin(v31);
  v37 = &a9 - v36;
  sub_10D50(v29, &a9 - v36);
  v38 = (*(v33 + 80) + 40) & ~*(v33 + 80);
  v39 = swift_allocObject();
  v39[2] = v27;
  v39[3] = v25;
  v39[4] = v23;
  sub_10DC0(v37, v39 + v38);
  v40 = *(v27 + qword_C0608);

  sub_1438C();

  sub_115FC();
}

void sub_10300()
{
  sub_11614();
  v26[1] = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_2664(&qword_C0680, &unk_8ED30);
  v12 = sub_115AC(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v12);
  v18 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = v26 - v19;
  sub_10D50(v10, v26 - v19);
  sub_10D50(v2, v18);
  v21 = *(v14 + 80);
  v22 = (v21 + 40) & ~v21;
  v23 = (v16 + v21 + v22) & ~v21;
  v24 = swift_allocObject();
  v24[2] = v8;
  v24[3] = v6;
  v24[4] = v4;
  sub_10DC0(v20, v24 + v22);
  sub_10DC0(v18, v24 + v23);
  v25 = *(v8 + qword_C0608);

  sub_143DC();

  sub_115FC();
}

void sub_10478()
{
  sub_11614();
  v32 = v0;
  v33 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v31 = v8;
  v10 = v9;
  v11 = sub_2664(&qword_C0680, &unk_8ED30);
  v12 = sub_115AC(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v12);
  v18 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v30 - v20;
  __chkstk_darwin(v19);
  v23 = &v30 - v22;
  sub_10D50(v10, &v30 - v22);
  sub_10D50(v5, v21);
  sub_10D50(v3, v18);
  v24 = *(v14 + 80);
  v25 = (v24 + 32) & ~v24;
  v26 = (v16 + v24 + v25) & ~v24;
  v27 = (v16 + v24 + v26) & ~v24;
  v28 = swift_allocObject();
  *(v28 + 16) = v31;
  *(v28 + 24) = v7;
  sub_10DC0(v23, v28 + v25);
  sub_10DC0(v21, v28 + v26);
  sub_10DC0(v18, v28 + v27);
  v29 = *(v32 + qword_C0608);

  sub_14364();

  sub_115FC();
}

void sub_1062C()
{
  sub_11614();
  v1 = v0;
  v52 = v2;
  v45 = v3;
  v47 = v4;
  v48 = v5;
  v50 = v6;
  v51 = v7;
  v9 = v8;
  v10 = sub_8B93C();
  v11 = sub_3488(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_115DC();
  __chkstk_darwin(v16);
  sub_115DC();
  __chkstk_darwin(v17);
  sub_115DC();
  __chkstk_darwin(v18);
  v20 = &v41 - v19;
  v21 = sub_2664(&qword_C0680, &unk_8ED30);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  v25 = (&v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __chkstk_darwin(v23);
  v28 = (&v41 - v27);
  v29 = __chkstk_darwin(v26);
  v31 = (&v41 - v30);
  __chkstk_darwin(v29);
  v33 = (&v41 - v32);
  sub_10D50(v9, &v41 - v32);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = *v33;
    v53[0] = 1;
    v54[0] = v34;
    LOBYTE(v54[8]) = 1;
  }

  else
  {
    v42 = v1;
    v1 = *(v13 + 32);
    v44 = v20;
    (v1)(v20, v33, v10);
    sub_10D50(v48, v31);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = *v31;
      sub_115BC();
      v36 = v44;
    }

    else
    {
      (v1)(v49, v31, v10);
      sub_10D50(v47, v28);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v35 = *v28;
        sub_115BC();
      }

      else
      {
        v37 = v46;
        (v1)(v46, v28, v10);
        sub_10D50(v45, v25);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v35 = *v25;
          LOBYTE(v25) = 1;
          LOBYTE(v54[0]) = 1;
          v38 = v37;
          v20 = *(v13 + 8);
        }

        else
        {
          v39 = v43;
          (v1)(v43, v25, v10);
          v40 = v39;
          sub_10AA4();
          v35 = v54[0];
          v48 = v54[1];
          v47 = v54[2];
          v45 = v54[3];
          v33 = v54[5];
          v41 = v54[4];
          v25 = v37;
          v20 = *(v13 + 8);
          v31 = v54[6];
          v21 = v54[7];
          (v20)(v40, v10);
          v38 = v25;
          LOBYTE(v25) = 0;
        }

        v1 = v42;
        (v20)(v38, v10);
      }

      v36 = v44;
      (v20)(v49, v10);
    }

    (v20)(v36, v10);
    v54[0] = v35;
    v54[1] = v48;
    v54[2] = v47;
    v54[3] = v45;
    v54[4] = v41;
    v54[5] = v33;
    v54[6] = v31;
    v54[7] = v21;
    LOBYTE(v54[8]) = v25;
  }

  memcpy(v53, v54, 0x41uLL);
  v51(v53);
  sub_1151C(v54, v52, v1);
  sub_115FC();
}

void sub_10AA4()
{
  sub_11614();
  v1 = v0;
  v2 = sub_8B91C();
  if (!v2[2])
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v2[4];
  v3 = v2[5];

  v5 = sub_8B91C();
  if (!v5[2])
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v7 = v5[4];
  v6 = v5[5];

  v8 = sub_8B91C();
  if (!v8[2])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = v8[4];
  v9 = v8[5];

  v11 = sub_8B91C();
  if (v11[2])
  {
    v13 = v11[4];
    v12 = v11[5];

    *v1 = v4;
    v1[1] = v3;
    v1[2] = v7;
    v1[3] = v6;
    v1[4] = v10;
    v1[5] = v9;
    v1[6] = v13;
    v1[7] = v12;
    sub_115FC();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_10C10()
{
  v0 = sub_8BA7C();
  v1 = *(v0 + qword_C0608);

  return _swift_deallocClassInstance(v0, 24, 7);
}

unint64_t sub_10C68()
{
  result = qword_C0668;
  if (!qword_C0668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0668);
  }

  return result;
}

unint64_t sub_10CBC()
{
  result = qword_C0670;
  if (!qword_C0670)
  {
    type metadata accessor for INIntentSlotValueType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0670);
  }

  return result;
}

uint64_t sub_10D50(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C0680, &unk_8ED30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10DC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C0680, &unk_8ED30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10E84()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10F00()
{
  v1 = sub_2664(&qword_C0680, &unk_8ED30);
  sub_11594(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v6 = *(v5 + 64);
  v7 = *(v0 + 16);

  v8 = *(v0 + 32);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *(v0 + v4);
  }

  else
  {
    v10 = sub_8B93C();
    sub_11580(v10);
    (*(v11 + 8))(v0 + v4);
  }

  return _swift_deallocObject(v0, v4 + v6, v3 | 7);
}

void sub_1101C()
{
  sub_115EC();
  v0 = *(*(sub_2664(&qword_C0680, &unk_8ED30) - 8) + 80);
  sub_1162C();
  sub_10300();
}

uint64_t sub_110A4()
{
  v1 = sub_2664(&qword_C0680, &unk_8ED30);
  sub_11594(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = (v3 + 40) & ~v3;
  v7 = (v5 + v3 + v6) & ~v3;
  v8 = *(v0 + 16);

  v9 = *(v0 + 32);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *(v0 + v6);
  }

  else
  {
    v11 = sub_8B93C();
    sub_11580(v11);
    (*(v12 + 8))(v0 + v6);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *(v0 + v7);
  }

  else
  {
    v14 = sub_8B93C();
    sub_11580(v14);
    (*(v15 + 8))(v0 + v7);
  }

  return _swift_deallocObject(v0, v7 + v5, v3 | 7);
}

void sub_11218()
{
  sub_115EC();
  v0 = sub_2664(&qword_C0680, &unk_8ED30);
  sub_115AC(v0);
  v3 = *(v2 + 64) + *(v1 + 80) + ((*(v1 + 80) + 40) & ~*(v1 + 80));
  sub_1162C();
  sub_11638();
  sub_10478();
}

uint64_t sub_112B8()
{
  v1 = sub_2664(&qword_C0680, &unk_8ED30);
  sub_11594(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = (v3 + 32) & ~v3;
  v7 = (v5 + v3 + v6) & ~v3;
  v8 = *(v0 + 24);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *(v0 + v6);
  }

  else
  {
    v10 = sub_8B93C();
    sub_11580(v10);
    (*(v11 + 8))(v0 + v6);
  }

  v12 = (v5 + v3 + v7) & ~v3;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *(v0 + v7);
  }

  else
  {
    v14 = sub_8B93C();
    sub_11580(v14);
    (*(v15 + 8))(v0 + v7);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *(v0 + v12);
  }

  else
  {
    v17 = sub_8B93C();
    sub_11580(v17);
    (*(v18 + 8))(v0 + v12);
  }

  return _swift_deallocObject(v0, v12 + v5, v3 | 7);
}

void sub_11474()
{
  sub_115EC();
  v1 = sub_2664(&qword_C0680, &unk_8ED30);
  sub_115AC(v1);
  v4 = *(v3 + 64) + *(v2 + 80);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  sub_11638();
  sub_1062C();
}

uint64_t sub_1151C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2664(a2, a3);
  sub_11580(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void sub_115BC()
{
  *(v1 - 160) = 1;
  v2 = *(v0 + 8);
  v3 = *(v1 - 328);
}

void sub_1162C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t sub_1164C(void (*a1)(uint64_t *__return_ptr, char *))
{
  v3 = sub_8B93C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2664(&qword_C0680, &unk_8ED30);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v14 - v10;
  sub_10D50(v1, &v14 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v11;
  }

  (*(v4 + 32))(v7, v11, v3);
  a1(&v15, v7);
  v12 = v15;
  (*(v4 + 8))(v7, v3);
  return v12;
}

uint64_t sub_117E4@<X0>(uint64_t a1@<X0>, void *a2@<X3>, void *a3@<X4>, void *a4@<X8>)
{
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v8 = sub_8CD0C();
  sub_33F4(v8, qword_C3DF8);
  v9 = sub_8CCEC();
  v10 = sub_8D11C();
  if (sub_125A0(v10))
  {
    v11 = sub_E8E0();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "[SendAnnouncementViewBuilders] Providing ErrorButtonBuilder", v11, 2u);
    sub_12584();
  }

  v12 = a3[4];
  sub_622C(a3, a3[3]);
  sub_8B62C();
  sub_8CA8C();
  v13 = sub_8CA6C();
  [a2 code];
  v14 = sub_8CCEC();
  v15 = sub_8D11C();
  if (sub_125A0(v15))
  {
    v16 = sub_E8E0();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "[SendAnnouncementViewBuilders] Defaulting to Home app button", v16, 2u);
    sub_12584();
  }

  sub_ADE4(0, &qword_C06A8, SAIntentGroupLaunchAppWithIntent_ptr);
  v17 = sub_8D19C();
  a4[3] = &type metadata for ButtonBuilder;
  a4[4] = &off_B9A38;
  v18 = swift_allocObject();
  *a4 = v18;
  sub_E528(a3, (v18 + 5));
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = v13;
  v18[2] = sub_12484;
  v18[3] = v19;
  v18[4] = v17;
}

uint64_t sub_11A84@<X0>(unint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  v6 = *(sub_8B92C() + 16);

  v7 = a1 >> 62;
  if (!v6)
  {
    if (!v7)
    {

      sub_8D46C();
      result = sub_ADE4(0, &qword_C0688, SAAceView_ptr);
      goto LABEL_8;
    }

LABEL_11:
    sub_ADE4(0, &qword_C0688, SAAceView_ptr);

    v16 = sub_8D34C();

    a1 = v16;
    goto LABEL_8;
  }

  if (v7)
  {
    sub_ADE4(0, &qword_C0688, SAAceView_ptr);

    v15 = sub_8D34C();

    a1 = v15;
  }

  else
  {

    sub_8D46C();
    sub_ADE4(0, &qword_C0688, SAAceView_ptr);
  }

  sub_2664(&qword_C0690, &unk_8EBF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_8E860;
  sub_ADE4(0, &qword_C0698, SASTItemGroup_ptr);
  v9 = sub_8B91C();
  if (!v9[2])
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v9[4];
  v11 = v9[5];

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_8E860;
  *(v12 + 32) = *(a2 + 16);
  swift_unknownObjectRetain();
  v13 = sub_48D60(v10, v11, v12, 1);

  *(inited + 32) = v13;
  result = sub_2C7D0(inited);
LABEL_8:
  *a3 = a1;
  return result;
}

uint64_t sub_11D18(unint64_t a1, void (*a2)(uint64_t, void), uint64_t a3, uint64_t (*a4)(void), const char *a5)
{
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v9 = sub_8CD0C();
  sub_33F4(v9, qword_C3DF8);
  v10 = sub_8CCEC();
  v11 = a4();
  if (sub_125A0(v11))
  {
    v12 = sub_E8E0();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, a5, v12, 2u);
  }

  if (a1 >> 62)
  {
    sub_ADE4(0, &qword_C0688, SAAceView_ptr);

    v13 = sub_8D34C();
  }

  else
  {

    sub_8D46C();
    sub_ADE4(0, &qword_C0688, SAAceView_ptr);
    v13 = a1;
  }

  a2(v13, 0);
}

uint64_t sub_11EC8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6)
{
  v9 = v6;
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v13 = sub_8CD0C();
  sub_33F4(v13, qword_C3DF8);
  v14 = sub_8CCEC();
  v15 = sub_8D10C();
  if (sub_125A0(v15))
  {
    v16 = sub_E8E0();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, a4, v16, 2u);
    sub_12584();
  }

  v18 = *v9;
  v17 = v9[1];
  sub_122E8(v9, v23);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  *(v19 + 32) = a1;
  v20 = v23[1];
  *(v19 + 40) = v23[0];
  *(v19 + 56) = v20;
  v21 = v23[3];
  *(v19 + 72) = v23[2];
  *(v19 + 88) = v21;

  v18(a6, v19);
}

uint64_t sub_12018(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, char *))
{
  v7 = sub_1164C(a6);
  v9 = v8;
  a2(v7, v8 & 1);
  return sub_ADD8(v7, v9 & 1);
}

uint64_t sub_1208C@<X0>(unint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  v6 = *(sub_8B92C() + 16);

  v7 = a1 >> 62;
  if (!v6)
  {
    if (!v7)
    {

      sub_8D46C();
      result = sub_ADE4(0, &qword_C0688, SAAceView_ptr);
      goto LABEL_8;
    }

LABEL_11:
    sub_ADE4(0, &qword_C0688, SAAceView_ptr);

    v15 = sub_8D34C();

    a1 = v15;
    goto LABEL_8;
  }

  if (v7)
  {
    sub_ADE4(0, &qword_C0688, SAAceView_ptr);

    v14 = sub_8D34C();

    a1 = v14;
  }

  else
  {

    sub_8D46C();
    sub_ADE4(0, &qword_C0688, SAAceView_ptr);
  }

  sub_2664(&qword_C0690, &unk_8EBF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_8E860;
  sub_ADE4(0, &qword_C06A0, SAUIButton_ptr);
  v9 = sub_8B91C();
  if (!v9[2])
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v9[4];
  v11 = v9[5];

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_8E860;
  *(v12 + 32) = *(a2 + 16);
  swift_unknownObjectRetain();
  *(inited + 32) = sub_48E8C(v10, v11, v12);
  result = sub_2C7D0(inited);
LABEL_8:
  *a3 = a1;
  return result;
}

uint64_t sub_12364()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];
  swift_unknownObjectRelease();
  sub_2714(v0 + 8);

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_123FC()
{
  v1 = v0[3];

  v2 = v0[4];
  swift_unknownObjectRelease();
  sub_2714(v0 + 5);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_12444()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_12484(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 16);
  sub_6D54C(v5, a1, a2);
}

__n128 sub_124B4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_124C8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_12508(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_12584()
{
}

BOOL sub_125A0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t (*HomeAppLaunchModel.bundleId.modify(void *a1))()
{
  v2 = sub_AFF4(0x28uLL);
  *a1 = v2;
  sub_2664(&qword_C01A8, &qword_8E8F0);
  v2[4] = sub_8B06C();
  return sub_C5E0;
}

uint64_t HomeAppLaunchModel.buttonLabel.getter()
{
  v0 = *(type metadata accessor for HomeAppLaunchModel() + 20);
  sub_2664(&qword_C01A8, &qword_8E8F0);
  sub_8B07C();
  return v2;
}

uint64_t type metadata accessor for HomeAppLaunchModel()
{
  result = qword_C0790;
  if (!qword_C0790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HomeAppLaunchModel.buttonLabel.setter()
{
  v0 = *(type metadata accessor for HomeAppLaunchModel() + 20);
  sub_2664(&qword_C01A8, &qword_8E8F0);
  return sub_8B08C();
}

uint64_t (*HomeAppLaunchModel.buttonLabel.modify(void *a1))()
{
  v2 = sub_AFF4(0x28uLL);
  *a1 = v2;
  v3 = *(type metadata accessor for HomeAppLaunchModel() + 20);
  sub_2664(&qword_C01A8, &qword_8E8F0);
  v2[4] = sub_8B06C();
  return sub_AFF0;
}

uint64_t sub_127D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_8D45C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614C6E6F74747562 && a2 == 0xEB000000006C6562)
  {

    return 1;
  }

  else
  {
    v7 = sub_8D45C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int sub_128E4(char a1)
{
  sub_8D50C();
  sub_8D51C(a1 & 1);
  return sub_8D54C();
}

uint64_t sub_1292C(char a1)
{
  if (a1)
  {
    return 0x614C6E6F74747562;
  }

  else
  {
    return 0x6449656C646E7562;
  }
}

uint64_t sub_12990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_127D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_129B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_128A4();
  *a1 = result;
  return result;
}

uint64_t sub_129E0(uint64_t a1)
{
  v2 = sub_12BE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_12A1C(uint64_t a1)
{
  v2 = sub_12BE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t HomeAppLaunchModel.encode(to:)(void *a1)
{
  v3 = sub_2664(&qword_C0710, &qword_8EDB8);
  v4 = sub_3488(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v14[-v9];
  v11 = a1[4];
  sub_622C(a1, a1[3]);
  sub_12BE0();
  sub_8D57C();
  v14[15] = 0;
  sub_2664(&qword_C01A8, &qword_8E8F0);
  sub_BEB4(&qword_C01C8);
  sub_C64C();
  if (!v1)
  {
    v12 = *(type metadata accessor for HomeAppLaunchModel() + 20);
    v14[14] = 1;
    sub_C64C();
  }

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_12BE0()
{
  result = qword_C0718;
  if (!qword_C0718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0718);
  }

  return result;
}

uint64_t HomeAppLaunchModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v40 = sub_2664(&qword_C01A8, &qword_8E8F0);
  v4 = sub_3488(v40);
  v37 = v5;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v4);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v38 = &v31 - v11;
  v39 = sub_2664(&qword_C0720, &qword_8EDC0);
  v12 = sub_3488(v39);
  v36 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  v17 = &v31 - v16;
  v18 = type metadata accessor for HomeAppLaunchModel();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[4];
  sub_622C(a1, a1[3]);
  sub_12BE0();
  sub_8D56C();
  if (v2)
  {
    return sub_2714(a1);
  }

  v32 = v18;
  v33 = v10;
  v34 = v21;
  v24 = v36;
  v23 = v37;
  v42 = 0;
  v25 = sub_BEB4(&qword_C01E0);
  v27 = v38;
  v26 = v39;
  sub_8D3DC();
  v31 = v25;
  v38 = *(v23 + 32);
  (v38)(v34, v27, v40);
  v41 = 1;
  v28 = v33;
  sub_8D3DC();
  (*(v24 + 8))(v17, v26);
  v29 = v34;
  (v38)(&v34[*(v32 + 20)], v28, v40);
  sub_12F98(v29, v35);
  sub_2714(a1);
  return sub_12FFC(v29);
}

uint64_t sub_12F98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeAppLaunchModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_12FFC(uint64_t a1)
{
  v2 = type metadata accessor for HomeAppLaunchModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_130C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HomeAppLaunchModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_13148(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C01A8, &qword_8E8F0);

  return sub_3364(a1, a2, v4);
}

uint64_t sub_131B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C01A8, &qword_8E8F0);

  return sub_6270(a1, a2, a2, v4);
}

void sub_13208()
{
  sub_13274();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_13274()
{
  if (!qword_C0268)
  {
    v0 = sub_8B09C();
    if (!v1)
    {
      atomic_store(v0, &qword_C0268);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for HomeAppLaunchModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x13390);
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

unint64_t sub_133CC()
{
  result = qword_C07C8;
  if (!qword_C07C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C07C8);
  }

  return result;
}

unint64_t sub_13424()
{
  result = qword_C07D0;
  if (!qword_C07D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C07D0);
  }

  return result;
}

unint64_t sub_1347C()
{
  result = qword_C07D8;
  if (!qword_C07D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C07D8);
  }

  return result;
}

uint64_t sub_134D0()
{
  v0 = sub_2664(&qword_C07E0, &qword_8FCB0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_8C13C();
  qword_C3DB0 = result;
  return result;
}

uint64_t type metadata accessor for HomeCommunicationCATs()
{
  result = qword_C07E8;
  if (!qword_C07E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_135C4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_13618(a1, a2);
}

uint64_t sub_13618(uint64_t a1, uint64_t a2)
{
  v4 = sub_8CA2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664(&qword_BFF28, &unk_8EFD0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_137BC(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_8C90C();
  (*(v5 + 8))(a2, v4);
  sub_1382C(a1);
  return v12;
}

uint64_t sub_13784()
{
  v0 = sub_8C93C();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t sub_137BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_BFF28, &unk_8EFD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1382C(uint64_t a1)
{
  v2 = sub_2664(&qword_BFF28, &unk_8EFD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for HomeCommunicationCATsSimple()
{
  result = qword_C0838;
  if (!qword_C0838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_13920()
{
  v1 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v4 = &async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_139E4;

  return (v4)(0xD000000000000021, 0x8000000000096070, _swiftEmptyArrayStorage);
}

uint64_t sub_139E4(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_13AE4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_13B38(a1, a2);
}

uint64_t sub_13B38(uint64_t a1, uint64_t a2)
{
  v5 = sub_8CA2C();
  v6 = sub_13DCC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2664(&qword_BFF28, &unk_8EFD0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_137BC(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_8C9AC();
  (*(v8 + 8))(a2, v2);
  sub_1382C(a1);
  return v16;
}

uint64_t sub_13C94(uint64_t a1, uint64_t a2)
{
  v5 = sub_8CA2C();
  v6 = sub_13DCC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_8C9BC();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t sub_13D94()
{
  v0 = sub_8C9DC();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t sub_13DE4(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_B82C8;
  v7._object = a2;
  v4 = sub_8D39C(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_13E38(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B8318;
  v6._object = a2;
  v4 = sub_8D39C(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_13E84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_71C64(0x6C646E7542707061, 0xEB00000000644965), (v5 & 1) == 0) || (sub_1412C(*(a1 + 56) + 32 * v4, &v46), (sub_14298() & 1) == 0))
  {

    v6 = 0;
    v7 = 0;
    v9 = 0;
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
LABEL_12:
    v16 = 0;
    goto LABEL_13;
  }

  v6 = v39;
  v7 = v43;
  sub_5A1A8(0x65636E756F6E6E61, 0xEE006449746E656DLL, a1, &v46);
  if (v47)
  {
    v8 = sub_14298();
    if (v8)
    {
      v9 = v39;
    }

    else
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = v43;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    sub_14188(&v46);
    v9 = 0;
    v10 = 0;
  }

  sub_5A1A8(0xD000000000000010, 0x80000000000960A0, a1, &v46);
  if (v47)
  {
    v17 = sub_14298();
    if (v17)
    {
      v12 = v39;
    }

    else
    {
      v12 = 0;
    }

    if (v17)
    {
      v13 = v43;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    sub_14188(&v46);
    v12 = 0;
    v13 = 0;
  }

  sub_142B8(1701670760, v18, v19, v20, v21, v22, v23, v24, v39, v43, v46);
  if (v47)
  {
    sub_2664(&qword_C05F8, &qword_8ECE0);
    if (sub_14298())
    {
      v14 = v40;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    sub_14188(&v46);
    v14 = 0;
  }

  sub_142B8(1836019570, v25, v26, v27, v28, v29, v30, v31, v40, v44, v46);
  if (v47)
  {
    sub_2664(&qword_C05F8, &qword_8ECE0);
    if (sub_14298())
    {
      v15 = v41;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    sub_14188(&v46);
    v15 = 0;
  }

  sub_142B8(1701736314, v32, v33, v34, v35, v36, v37, v38, v41, v45, v46);

  if (!v47)
  {
    result = sub_14188(&v46);
    goto LABEL_12;
  }

  sub_2664(&qword_C05F8, &qword_8ECE0);
  result = swift_dynamicCast();
  v16 = v42;
  if (!result)
  {
    v16 = 0;
  }

LABEL_13:
  *a2 = v6;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v10;
  a2[4] = v12;
  a2[5] = v13;
  a2[6] = v14;
  a2[7] = v15;
  a2[8] = v16;
  return result;
}

uint64_t sub_1412C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_14188(uint64_t a1)
{
  v2 = sub_2664(&qword_C05F0, &unk_8F020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_141F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_14238(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_14298()
{

  return swift_dynamicCast();
}

double sub_142B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  v13 = a1 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;

  return sub_5A1A8(v13, 0xE500000000000000, v11, &a11);
}

uint64_t type metadata accessor for HomeCommunicationDisplayTextCATs()
{
  result = qword_C0888;
  if (!qword_C0888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1442C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_14480(a1, a2);
}

uint64_t sub_14480(uint64_t a1, uint64_t a2)
{
  v4 = sub_8CA2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664(&qword_BFF28, &unk_8EFD0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_137BC(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_8C90C();
  (*(v5 + 8))(a2, v4);
  sub_1382C(a1);
  return v12;
}

uint64_t type metadata accessor for HomeCommunicationDisplayTextCATsSimple()
{
  result = qword_C08D8;
  if (!qword_C08D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_14688()
{
  sub_152C4();
  v1._rawValue = &off_B8380;
  v3._object = v0;
  sub_8D39C(v1, v3);
  sub_152D0();
  return sub_152AC();
}

BOOL sub_146D0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_14688();
  *a2 = result;
  return result;
}

uint64_t sub_14718()
{
  sub_152A0();
  v1 = sub_15268(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  sub_152B8(v1);
  sub_14F28();
  sub_15288();
  *v0 = v2;
  v0[1] = sub_1524C;
  v3 = sub_15250();

  return v4(v3);
}

BOOL sub_147C4()
{
  sub_152C4();
  v1._rawValue = &off_B83B8;
  v3._object = v0;
  sub_8D39C(v1, v3);
  sub_152D0();
  return sub_152AC();
}

BOOL sub_14808@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_147C4();
  *a2 = result;
  return result;
}

uint64_t sub_1484C()
{
  sub_152A0();
  v1 = sub_15268(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  sub_152B8(v1);
  sub_14ED4();
  sub_15288();
  *v0 = v2;
  v0[1] = sub_139E4;
  v3 = sub_15250();

  return v4(v3);
}

BOOL sub_148F8()
{
  sub_152C4();
  v1._rawValue = &off_B83F0;
  v3._object = v0;
  sub_8D39C(v1, v3);
  sub_152D0();
  return sub_152AC();
}

BOOL sub_1493C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_148F8();
  *a2 = result;
  return result;
}

uint64_t sub_14984()
{
  sub_152A0();
  v1 = sub_15268(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  sub_152B8(v1);
  sub_14E80();
  sub_15288();
  *v0 = v2;
  v0[1] = sub_1524C;

  return v4(0xD00000000000002CLL, 0x8000000000096140, _swiftEmptyArrayStorage, &type metadata for HomeCommunicationDisplayTextCATsSimple.ReplyButtonTextDialogIds);
}

BOOL sub_14A40()
{
  sub_152C4();
  v1._rawValue = &off_B8428;
  v3._object = v0;
  sub_8D39C(v1, v3);
  sub_152D0();
  return sub_152AC();
}

BOOL sub_14A84@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_14A40();
  *a2 = result;
  return result;
}

uint64_t sub_14AC8()
{
  sub_152A0();
  v1 = sub_15268(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  sub_152B8(v1);
  sub_14E2C();
  sub_15288();
  *v0 = v2;
  v0[1] = sub_1524C;
  v3 = sub_15250();

  return v4(v3);
}

uint64_t sub_14B74(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_14BC8(a1, a2);
}

uint64_t sub_14BC8(uint64_t a1, uint64_t a2)
{
  v5 = sub_8CA2C();
  v6 = sub_13DCC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2664(&qword_BFF28, &unk_8EFD0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_137BC(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_8C9AC();
  (*(v8 + 8))(a2, v2);
  sub_1382C(a1);
  return v16;
}

uint64_t sub_14D24(uint64_t a1, uint64_t a2)
{
  v5 = sub_8CA2C();
  v6 = sub_13DCC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_8C9BC();
  (*(v8 + 8))(a2, v3);
  return v15;
}

unint64_t sub_14E2C()
{
  result = qword_C0928;
  if (!qword_C0928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0928);
  }

  return result;
}

unint64_t sub_14E80()
{
  result = qword_C0930;
  if (!qword_C0930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0930);
  }

  return result;
}

unint64_t sub_14ED4()
{
  result = qword_C0938;
  if (!qword_C0938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0938);
  }

  return result;
}

unint64_t sub_14F28()
{
  result = qword_C0940;
  if (!qword_C0940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0940);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SendAnnouncementCATsSimple.OpenHomeAppDialogIds(unsigned int *a1, int a2)
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

_BYTE *sub_15010(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x150ACLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_150E8()
{
  result = qword_C0948;
  if (!qword_C0948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0948);
  }

  return result;
}

unint64_t sub_15140()
{
  result = qword_C0950;
  if (!qword_C0950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0950);
  }

  return result;
}

unint64_t sub_15198()
{
  result = qword_C0958;
  if (!qword_C0958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0958);
  }

  return result;
}

unint64_t sub_151F0()
{
  result = qword_C0960;
  if (!qword_C0960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0960);
  }

  return result;
}

uint64_t sub_15268@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t sub_152D0()
{
}

uint64_t sub_15350@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for RadarUtils();
  inited = swift_initStackObject();
  v4 = sub_8C88C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(inited + 16) = sub_16898();
  sub_38BE4(1);
  swift_setDeallocating();
  v7 = *(inited + 16);

  swift_initStackObject();
  v8 = *(v4 + 48);
  v9 = *(v4 + 52);
  swift_allocObject();
  sub_16898();
  sub_8D25C(40);
  v15._countAndFlagsBits = 0xD000000000000026;
  v15._object = 0x80000000000962C0;
  sub_8CF7C(v15);
  type metadata accessor for HomeCommunicationError(0);
  sub_8D31C();
  v13 = sub_15518();
  v14 = v10;
  v16._countAndFlagsBits = 2570;
  v16._object = 0xE200000000000000;
  sub_8CF7C(v16);
  sub_15C5C();
  sub_38F9C(0, 0xE000000000000000, v13, v14);

  sub_1681C();
  return sub_16778(v1, a1, v11);
}

uint64_t sub_15518()
{
  v1 = v0;
  v2 = type metadata accessor for HomeCommunicationParseError(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_16854();
  v6 = v5 - v4;
  v7 = type metadata accessor for HomeCommunicationError(0);
  v8 = sub_6574(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_16854();
  v13 = (v12 - v11);
  sub_1681C();
  sub_16778(v1, v13, v14);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_167F8();
      sub_8D25C(28);

      sub_16848();
      v32 = 0xD00000000000001ALL;
      goto LABEL_12;
    case 2u:
    case 5u:
      sub_167F8();
      sub_8D25C(26);

      sub_16848();
      v32 = 0xD000000000000018;
LABEL_12:
      v40[0] = v32;
      goto LABEL_14;
    case 3u:
      sub_166BC(v13, v6);
      strcpy(v40, "Parse error: ");
      HIWORD(v40[1]) = -4864;
      v44._countAndFlagsBits = sub_15A8C();
      sub_8CF7C(v44);

      sub_16864();
      sub_16720(v6, v25);
      goto LABEL_30;
    case 4u:
      sub_167F8();
      sub_8D25C(28);

      sub_16848();
      sub_1687C(v20);

      v21._countAndFlagsBits = 32;
      goto LABEL_29;
    case 6u:
      sub_167F8();
      sub_8D25C(20);

      sub_16848();
      v40[0] = 0xD000000000000012;
LABEL_14:
      v40[1] = v31;
      goto LABEL_15;
    case 7u:
      v26 = *v13;
      v27 = v13[1];
      v28 = v13[2];
      v29 = v13[3];
      sub_1680C();
      sub_8D25C(39);

      sub_16848();
      sub_1687C(v30);

      v45._countAndFlagsBits = 544175136;
      v45._object = 0xE400000000000000;
      sub_8CF7C(v45);
      v46._countAndFlagsBits = v28;
      v46._object = v29;
      sub_8CF7C(v46);

      v21._countAndFlagsBits = 46;
      goto LABEL_29;
    case 8u:
      sub_167F8();
      sub_8D25C(57);
      v50._countAndFlagsBits = 0xD000000000000037;
      v50._object = 0x8000000000096470;
      sub_8CF7C(v50);
LABEL_15:
      v47._countAndFlagsBits = v1;
      v47._object = v7;
      sub_8CF7C(v47);
      goto LABEL_16;
    case 9u:
      v22 = *v13;
      sub_1680C();
      sub_8D25C(21);

      sub_16848();
      v40[0] = 0xD000000000000012;
      v40[1] = v23;
      if (v22 < 0xFFFFFFFF80000000)
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v22 > 0x7FFFFFFF)
      {
LABEL_33:
        __break(1u);
        JUMPOUT(0x15A38);
      }

      switch(v22)
      {
        case 1:
          v24 = @"RECIPIENTS_UNREACHABLE";
          goto LABEL_27;
        case 2:
          v24 = @"RECIPIENTS_ANNOUNCEMENTS_DISABLED";
          goto LABEL_27;
        case 3:
          v24 = @"SENDER_ANNOUNCEMENTS_DISABLED";
          goto LABEL_27;
        case 4:
          v24 = @"RECIPIENT_CANNOT_RECEIVE_ANNOUNCEMENTS";
          goto LABEL_27;
        case 5:
          v24 = @"NO_HOMEPOD";
          goto LABEL_27;
        case 6:
          v24 = @"RECIPIENT_HOMEPODS_UPDATE_REQUIRED";
          goto LABEL_27;
        case 7:
          v24 = @"REMOTE_ACCESS_NOT_ALLOWED";
          goto LABEL_27;
        case 8:
          v24 = @"NO_OTHER_HOMEPOD_TO_RECEIVE_ANNOUNCEMENTS";
          goto LABEL_27;
        case 9:
          v24 = @"ONLY_ANNOUNCERS_DEVICE_IS_AVAILABLE";
LABEL_27:
          v33 = v24;
          break;
        default:
          v24 = [NSString stringWithFormat:@"(unknown: %i)", v22];
          break;
      }

      v34 = v24;
      v35 = sub_8CEDC();
      v37 = v36;

      v51._countAndFlagsBits = v35;
      v51._object = v37;
      sub_8CF7C(v51);

      v21._countAndFlagsBits = 41;
LABEL_29:
      v21._object = 0xE100000000000000;
      sub_8CF7C(v21);
LABEL_30:
      sub_1680C();
      sub_8D25C(27);

      sub_16848();
      sub_1687C(v38);

      return v40[0];
    case 0xAu:
      sub_167F8();
      sub_8D25C(53);
      v48._countAndFlagsBits = 0xD000000000000032;
      v48._object = 0x80000000000963F0;
      sub_8CF7C(v48);
      v49._countAndFlagsBits = v1;
      v49._object = v7;
      sub_8CF7C(v49);

      v21._countAndFlagsBits = 34;
      goto LABEL_29;
    case 0xBu:
      goto LABEL_30;
    default:
      v16 = *v13;
      v15 = v13[1];
      v17 = v13[2];
      v18 = v13[3];
      sub_1680C();
      sub_8D25C(37);

      sub_16848();
      v40[0] = 0xD00000000000001FLL;
      v40[1] = v19;
      v41._countAndFlagsBits = v17;
      v41._object = v18;
      sub_8CF7C(v41);

      v42._countAndFlagsBits = 8250;
      v42._object = 0xE200000000000000;
      sub_8CF7C(v42);
      v43._countAndFlagsBits = v16;
      v43._object = v15;
      sub_8CF7C(v43);
LABEL_16:

      goto LABEL_30;
  }
}

uint64_t sub_15A8C()
{
  v1 = sub_8BE0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v17 - v7;
  v9 = type metadata accessor for HomeCommunicationParseError(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_16854();
  v13 = v12 - v11;
  sub_16778(v0, v12 - v11, type metadata accessor for HomeCommunicationParseError);
  (*(v2 + 32))(v8, v13, v1);
  sub_1680C();
  sub_8D25C(21);

  sub_16848();
  v17[0] = 0xD000000000000013;
  v17[1] = v14;
  (*(v2 + 16))(v6, v8, v1);
  v18._countAndFlagsBits = sub_72160(v6);
  sub_8CF7C(v18);

  v15 = v17[0];
  (*(v2 + 8))(v8, v1);
  return v15;
}

uint64_t sub_15C5C()
{
  v1 = v0;
  v2 = type metadata accessor for HomeCommunicationParseError(0);
  v3 = sub_6574(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_16854();
  v8 = v7 - v6;
  v9 = type metadata accessor for HomeCommunicationError(0);
  v10 = sub_6574(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_16854();
  v15 = (v14 - v13);
  sub_1681C();
  sub_16778(v1, v15, v16);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_167F8();
      sub_8D25C(30);

      sub_16834();
      goto LABEL_14;
    case 2u:
      sub_167F8();
      sub_8D25C(27);

      sub_16848();
      goto LABEL_14;
    case 3u:
      sub_166BC(v15, v8);
      v34._countAndFlagsBits = 0x7272456573726170;
      v34._object = 0xEB000000003A726FLL;
      sub_8CF7C(v34);
      sub_8D31C();
      v18 = 0;
      sub_16864();
      sub_16720(v8, v19);
      return v18;
    case 4u:
      sub_167F8();
      sub_8D25C(24);

      sub_16834();
      goto LABEL_14;
    case 5u:
      sub_167F8();
      sub_8D25C(23);

      sub_16848();
      goto LABEL_14;
    case 6u:
      sub_167F8();
      sub_8D25C(18);

      sub_16834();
      goto LABEL_14;
    case 7u:
      v20 = *v15;
      v21 = v15[1];
      v23 = v15[2];
      v22 = v15[3];
      sub_1680C();
      sub_8D25C(38);

      sub_16848();
      v33 = 0xD00000000000001ALL;
      v35._countAndFlagsBits = v20;
      v35._object = v21;
      sub_8CF7C(v35);

      v36._countAndFlagsBits = 0x3D74757074756F20;
      v36._object = 0xE800000000000000;
      sub_8CF7C(v36);
      v37._countAndFlagsBits = v23;
      v37._object = v22;
      sub_8CF7C(v37);
      goto LABEL_15;
    case 9u:
      v24 = *v15;
      sub_1680C();
      sub_8D25C(22);

      sub_16834();
      v33 = v25 | 4;
      if (v24 < 0xFFFFFFFF80000000)
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v24 > 0x7FFFFFFF)
      {
LABEL_30:
        __break(1u);
        JUMPOUT(0x160B4);
      }

      switch(v24)
      {
        case 1:
          v26 = @"RECIPIENTS_UNREACHABLE";
          goto LABEL_26;
        case 2:
          v26 = @"RECIPIENTS_ANNOUNCEMENTS_DISABLED";
          goto LABEL_26;
        case 3:
          v26 = @"SENDER_ANNOUNCEMENTS_DISABLED";
          goto LABEL_26;
        case 4:
          v26 = @"RECIPIENT_CANNOT_RECEIVE_ANNOUNCEMENTS";
          goto LABEL_26;
        case 5:
          v26 = @"NO_HOMEPOD";
          goto LABEL_26;
        case 6:
          v26 = @"RECIPIENT_HOMEPODS_UPDATE_REQUIRED";
          goto LABEL_26;
        case 7:
          v26 = @"REMOTE_ACCESS_NOT_ALLOWED";
          goto LABEL_26;
        case 8:
          v26 = @"NO_OTHER_HOMEPOD_TO_RECEIVE_ANNOUNCEMENTS";
          goto LABEL_26;
        case 9:
          v26 = @"ONLY_ANNOUNCERS_DEVICE_IS_AVAILABLE";
LABEL_26:
          v28 = v26;
          break;
        default:
          v26 = [NSString stringWithFormat:@"(unknown: %i)", v24];
          break;
      }

      v29 = v26;
      v30 = sub_8CEDC();
      v32 = v31;

      v38._countAndFlagsBits = v30;
      v38._object = v32;
      sub_8CF7C(v38);
LABEL_15:

      return v33;
    case 0xAu:
      sub_167F8();
      sub_8D25C(29);

      sub_16848();
LABEL_14:
      sub_1687C(v17);
      goto LABEL_15;
    default:
      sub_16720(v15, type metadata accessor for HomeCommunicationError);
      return 0;
  }
}

uint64_t sub_16148(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_161B0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_16210()
{
  sub_16394(319, &qword_C09F0);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_1636C();
    if (v3 <= 0x3F)
    {
      sub_16418(319, &qword_C0A00, type metadata accessor for HomeCommunicationParseError);
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        sub_16394(319, &qword_C0A08);
        v1 = v6;
        if (v7 <= 0x3F)
        {
          v1 = sub_163F0();
          if (v8 <= 0x3F)
          {
            sub_16418(319, &qword_C0A18, type metadata accessor for INSendAnnouncementIntentResponseCode);
            v1 = v9;
            if (v10 <= 0x3F)
            {
              v1 = sub_16464();
              if (v11 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void *sub_1636C()
{
  result = qword_C09F8;
  if (!qword_C09F8)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_C09F8);
  }

  return result;
}

void sub_16394(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void *sub_163F0()
{
  result = qword_C0A10;
  if (!qword_C0A10)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_C0A10);
  }

  return result;
}

void sub_16418(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_16464()
{
  result = qword_C0A20;
  if (!qword_C0A20)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_C0A20);
  }

  return result;
}

uint64_t sub_1648C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C0A50, &qword_8F5B8);

  return sub_3364(a1, a2, v4);
}

uint64_t sub_164E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2664(&qword_C0A50, &qword_8F5B8);

  return sub_6270(a1, a2, a3, v6);
}

uint64_t sub_16544(uint64_t a1)
{
  sub_16418(319, &unk_C0AD8, &type metadata accessor for Parse);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = sub_8BE0C();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

__n128 sub_16618(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1662C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1666C(uint64_t result, int a2, int a3)
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

uint64_t sub_166BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeCommunicationParseError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_16720(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_6574(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_16778(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_6574(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

void sub_167F8()
{
  v2 = *v0;
  v3 = v0[1];
  *(v1 - 64) = 0;
  *(v1 - 56) = 0xE000000000000000;
}

void sub_1687C(uint64_t a1@<X8>)
{
  *(v4 - 64) = v1;
  *(v4 - 56) = a1;
  v6._countAndFlagsBits = v2;
  v6._object = v3;

  sub_8CF7C(v6);
}

uint64_t sub_16898()
{

  return sub_8C87C();
}

Swift::Int sub_16938()
{
  sub_8D50C();
  sub_8D51C(0);
  return sub_8D54C();
}

Swift::Int sub_16984()
{
  sub_8D50C();
  sub_8D51C(0);
  return sub_8D54C();
}

_BYTE *sub_169E4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x16AB0);
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

_BYTE *sub_16AF0(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x16B8CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_16BC4()
{
  result = qword_C0B00;
  if (!qword_C0B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0B00);
  }

  return result;
}

unint64_t sub_16C1C()
{
  result = qword_C0B08;
  if (!qword_C0B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0B08);
  }

  return result;
}

uint64_t sub_16C80()
{
  if (sub_4E03C(0))
  {
    v0 = sub_4E03C(1) ^ 1;
  }

  else
  {
    v0 = 1;
  }

  return v0 & 1;
}

uint64_t sub_16CB8()
{
  sub_2714((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_16D14()
{
  type metadata accessor for HomeCommunicationFlow();
  sub_19520(&qword_C0D28, type metadata accessor for HomeCommunicationFlow);
  return sub_8B34C();
}

uint64_t sub_16DA4()
{
  sub_6608();
  v1[21] = v2;
  v1[22] = v0;
  v3 = sub_8BDBC();
  v1[23] = v3;
  v4 = *(v3 - 8);
  v1[24] = v4;
  v5 = *(v4 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_16E6C, 0, 0);
}

uint64_t sub_16E6C()
{
  v57 = v0;
  v1 = *(v0 + 176);
  v2 = OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin21HomeCommunicationFlow_input;
  v3 = *(*(v0 + 192) + 16);
  (v3)(*(v0 + 208), v1 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin21HomeCommunicationFlow_input, *(v0 + 184));
  v4 = sub_174C8(v0 + 56);
  v6 = v5;
  v7 = *(*(v0 + 192) + 8);
  v7(*(v0 + 208), *(v0 + 184));
  v54 = v2;
  sub_E510((v0 + 56), v0 + 16);
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v8 = sub_8CD0C();
  sub_33F4(v8, qword_C3DF8);

  v9 = v6;
  v10 = sub_8CCEC();
  v11 = sub_8D11C();

  v52 = v3;
  v53 = v7;
  v55 = v1;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v56[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_862D8(v4, v9, v56);
    _os_log_impl(&dword_0, v10, v11, "#HomeCommunicationFlow Chose SKIntent name: %s. ", v12, 0xCu);
    sub_2714(v13);
    sub_E890();
    sub_E890();
  }

  v14 = *(v0 + 176);
  sub_8BE1C();
  v15 = sub_2664(&qword_C0440, &qword_8EBE8);
  sub_E824(v15);
  v16 = sub_7E410(v56);
  v17 = *(v16 + *(*v16 + qword_C3D40 + 16));

  sub_E528(v14 + 16, v0 + 96);
  v18 = sub_622C((v0 + 96), *(v0 + 120));
  v19 = sub_19210(v18, (v0 + 16));
  sub_2714((v0 + 96));
  v20 = *(v0 + 200);
  v22 = *(v0 + 176);
  v21 = *(v0 + 184);
  if (v19 == 8)
  {

    v23 = sub_1957C();
    v52(v23);
    v51 = v17;
    v24 = *(v0 + 40);
    v25 = *(v0 + 48);
    sub_622C((v0 + 16), v24);
    v26 = (*(v25 + 16))(v24, v25);
    v27 = sub_177CC(v20, v0 + 16, v26, v51);
    v53(v20, v21);
    if (v27)
    {
      v28 = *(v0 + 168);
      sub_8B7EC();
    }

    else
    {
      v34 = *(v0 + 176);

      v35 = sub_8CCEC();
      v36 = sub_8D12C();

      if (os_log_type_enabled(v35, v36))
      {
        v50 = v36;
        v37 = *(v0 + 200);
        v38 = *(v0 + 184);
        v39 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v56[0] = v49;
        *v39 = 136315138;
        (v52)(v37, v55 + v54, v38);
        sub_19520(&qword_C0D20, &type metadata accessor for Input);
        v40 = sub_8D43C();
        v42 = v41;
        v53(v37, v38);
        v43 = sub_862D8(v40, v42, v56);

        *(v39 + 4) = v43;
        _os_log_impl(&dword_0, v35, v50, "HomeCommunicationFlow unable to find flow for input %s", v39, 0xCu);
        sub_2714(v49);
        sub_E890();
        sub_E890();
      }

      v44 = *(v0 + 168);
      sub_8B7FC();
    }
  }

  else
  {
    v29 = *(v0 + 168);
    v30 = sub_1957C();
    v52(v30);
    sub_178E4(v19, v31, (v0 + 16), v32, v33, v17);

    v53(v20, v21);
  }

  sub_2714((v0 + 16));
  v46 = *(v0 + 200);
  v45 = *(v0 + 208);

  sub_65A0();

  return v47();
}

uint64_t sub_174C8(uint64_t a1)
{
  v2 = sub_8BE0C();
  sub_E6E8();
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  sub_16854();
  v10 = v9 - v8;
  v11 = *(v1 + 40);
  sub_622C((v1 + 16), v11);
  sub_E6E8();
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v16);
  sub_16854();
  v19 = v18 - v17;
  (*(v13 + 16))(v18 - v17);
  v20 = *(v19 + 8);
  v21 = *(v13 + 8);

  v21(v19, v11);
  sub_8BD9C();
  sub_2EBF0(v10, &v30);

  v23 = *(v4 + 8);
  v22 = v4 + 8;
  v23(v10, v2);
  if (v31)
  {
    sub_E510(&v30, v32);
    sub_E528(v1 + 16, &v30);
    v24 = v32[6];
    v25 = sub_25FD8(v32);
    sub_2714(&v30);
    if (!v24)
    {
      sub_E528(v32, a1);
      v27 = [v25 _className];
      v22 = sub_8CEDC();
    }

    sub_2714(v32);
  }

  else
  {
    sub_E3BC(&v30);
    v22 = sub_8C85C();
    sub_19520(&qword_C0D18, &type metadata accessor for TransformationError);
    swift_allocError();
    *v26 = 0xD00000000000001FLL;
    v26[1] = 0x80000000000967F0;
    (*(*(v22 - 8) + 104))(v26, enum case for TransformationError.cannotTransform(_:), v22);
    swift_willThrow();
  }

  return v22;
}

uint64_t sub_177CC(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v8 = sub_8BE0C();
  sub_E6E8();
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v13);
  sub_16854();
  v16 = v15 - v14;
  sub_8BD9C();
  sub_E528(v4 + 16, v20);
  v17 = sub_622C(v20, v20[3]);
  v18 = sub_184E0(v16, a3, a4, a2, v17);
  (*(v10 + 8))(v16, v8);
  sub_2714(v20);
  return v18;
}

uint64_t sub_178E4(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_8B6BC();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  sub_16854();
  v12 = sub_8CA2C();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  sub_16854();
  sub_E528(v6 + 16, &v52);
  type metadata accessor for SendAnnouncementCATsSimple();
  sub_8CA1C();
  v43 = sub_8C9CC();
  type metadata accessor for ReadAnnouncementCATsSimple();
  sub_8CA1C();
  v14 = sub_8C9CC();
  type metadata accessor for SkipAnnouncementCATsSimple();
  sub_8CA1C();
  v15 = sub_8C9CC();
  sub_E58C(&v52, v53);
  sub_E6E8();
  v17 = *(v16 + 64);
  __chkstk_darwin(v18);
  sub_16854();
  v21 = v20 - v19;
  (*(v22 + 16))(v20 - v19);
  v23 = type metadata accessor for SharedGlobals();
  v50 = v23;
  v51 = &off_BB508;
  v24 = sub_E5DC(v49);
  sub_E63C(v21, v24);
  v25 = type metadata accessor for UnsupportedFlowOutputFactory();
  v26 = sub_E824(v25);
  sub_E58C(v49, v50);
  sub_E6E8();
  v28 = *(v27 + 64);
  __chkstk_darwin(v29);
  sub_16854();
  v31 = sub_19568(v30);
  v32(v31);
  v47 = v23;
  v48 = &off_BB508;
  v33 = sub_E5DC(&v46);
  sub_E63C(v7, v33);
  sub_8B68C();
  sub_8BC3C();
  *(v26 + 16) = a1;
  sub_E510(&v46, v26 + 24);
  *(v26 + 64) = a6;
  *(v26 + 72) = v43;
  *(v26 + 80) = v14;
  *(v26 + 88) = v15;

  sub_2714(v49);
  sub_2714(&v52);
  v34 = *(v44 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin21HomeCommunicationFlow_siriKitEventSender + 32);
  sub_622C((v44 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin21HomeCommunicationFlow_siriKitEventSender), *(v44 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin21HomeCommunicationFlow_siriKitEventSender + 24));
  sub_8B59C();
  v35 = a3[3];
  v36 = a3[4];
  sub_622C(a3, v35);
  v37 = (*(v36 + 16))(v35, v36);
  v38 = sub_1D6AC(v37);
  v39 = [v38 _className];

  sub_8CEDC();
  sub_E528(a3, &v52);
  v40 = swift_allocObject();
  sub_E510(&v52, v40 + 16);
  LOBYTE(v49[0]) = 0;
  sub_8B58C();
  sub_8B40C();

  sub_8BB9C();
  v41 = sub_8B14C();
  sub_E824(v41);

  *&v52 = sub_8B13C();
  sub_8B7DC();
}
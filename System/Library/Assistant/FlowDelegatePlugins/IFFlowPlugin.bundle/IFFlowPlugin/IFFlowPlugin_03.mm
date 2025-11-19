uint64_t sub_56140@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_6B7FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6B7EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v33 - v13;
  if (sub_22C60())
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v15 = sub_6D04C();
    sub_5CE4(v15, qword_839A0);
    v16 = sub_6D03C();
    v17 = sub_6D45C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "ImagePickerPromptStrategy intercepted user cancellation input. Cancelling", v18, 2u);
    }

    return static ActionForInput.cancel()();
  }

  sub_6B78C();
  if ((*(v3 + 88))(v6, v2) != enum case for Parse.directInvocation(_:))
  {
    (*(v3 + 8))(v6, v2);
    return sub_6B40C();
  }

  (*(v3 + 96))(v6, v2);
  (*(v8 + 32))(v14, v6, v7);
  if (sub_6B7CC() == 0xD000000000000032 && 0x800000000006F8C0 == v19)
  {
  }

  else
  {
    v21 = sub_6D63C();

    if ((v21 & 1) == 0)
    {
      (*(v8 + 8))(v14, v7);
      return sub_6B40C();
    }
  }

  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v22 = sub_6D04C();
  sub_5CE4(v22, qword_839A0);
  (*(v8 + 16))(v12, v14, v7);
  v23 = sub_6D03C();
  v24 = sub_6D45C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v33 = v25;
    v34 = swift_slowAlloc();
    v36 = v34;
    *v25 = 136315138;
    v26 = sub_6B7CC();
    v35 = a1;
    v28 = v27;
    v29 = *(v8 + 8);
    v29(v12, v7);
    v30 = sub_1076C(v26, v28, &v36);

    v31 = v33;
    *(v33 + 1) = v30;
    _os_log_impl(&dword_0, v23, v24, "ImagePickerPromptStrategy received direct invocation input with idenfier %s. Will Handle input", v31, 0xCu);
    sub_9964(v34);
  }

  else
  {

    v29 = *(v8 + 8);
    v29(v12, v7);
  }

  sub_6B3FC();
  return (v29)(v14, v7);
}

uint64_t sub_5663C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_5665C, 0, 0);
}

uint64_t sub_5665C()
{
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v1 = sub_6D04C();
  sub_5CE4(v1, qword_839A0);
  v2 = sub_6D03C();
  v3 = sub_6D45C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "ImagePickerPromptStrategy sending SAUIPhotoPickerRequest output", v4, 2u);
  }

  v5 = v0[3];

  v6 = [objc_allocWithZone(SAUIPhotoPickerRequest) init];
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  v9 = sub_6D2BC();
  [v6 setSearchQuery:v9];

  if (*(v5 + 32))
  {
    [v6 setSelectionLimit:0];
  }

  else
  {
    sub_2C9A0();
    isa = sub_6D4AC(1).super.super.isa;
    [v6 setSelectionLimit:isa];
  }

  v11 = v0[2];
  v12 = sub_6D2BC();
  [v6 setDirectInvocationBundleIdentifier:v12];

  sub_5708(&qword_81548, &qword_70088);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_6FFF0;
  *(v13 + 32) = v6;
  v11[3] = sub_6B89C();
  v11[4] = &protocol witness table for AceOutput;
  sub_97B0(v11);
  sub_6B86C();
  v14 = v0[1];

  return v14();
}

uint64_t sub_568B0()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_56924(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_569D0;

  return sub_56EA4(a2);
}

uint64_t sub_569D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_56AE0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_12CEC;

  return sub_5663C(a1);
}

unint64_t sub_56B78()
{
  result = qword_821E0;
  if (!qword_821E0)
  {
    sub_29F8(&qword_821D8, &qword_71260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_821E0);
  }

  return result;
}

uint64_t sub_56BDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v23 = a3;
  v5 = sub_5708(&qword_821E8, &qword_71268);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v22 - v7;
  v9 = sub_6D20C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v14 = a1[1];
  sub_6D17C();
  v16 = swift_allocBox();
  (*(v10 + 16))(v13, a2, v9);
  v17 = sub_6D21C();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);

  sub_6D16C();
  v18 = v23;
  *v23 = v16;
  v19 = enum case for TypedValue.entityIdentifier(_:);
  v20 = sub_6D1EC();
  return (*(*(v20 - 8) + 104))(v18, v19, v20);
}

uint64_t sub_56DDC(uint64_t a1)
{
  v2 = sub_5708(&qword_81508, &unk_70260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_56E44()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_56EA4(uint64_t a1)
{
  v1[7] = a1;
  v2 = sub_6B7FC();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = sub_6B7EC();
  v1[11] = v5;
  v6 = *(v5 - 8);
  v1[12] = v6;
  v7 = *(v6 + 64) + 15;
  v1[13] = swift_task_alloc();
  v8 = sub_6B7AC();
  v1[14] = v8;
  v9 = *(v8 - 8);
  v1[15] = v9;
  v10 = *(v9 + 64) + 15;
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_5701C, 0, 0);
}

uint64_t sub_5701C()
{
  v68 = v0;
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[7];
  v5 = sub_6D04C();
  sub_5CE4(v5, qword_839A0);
  (*(v1 + 16))(v2, v4, v3);
  v6 = sub_6D03C();
  v7 = sub_6D45C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[15];
  v10 = v0[16];
  v11 = v0[14];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v13 = v67;
    *v12 = 136315138;
    sub_4DCFC();
    v14 = sub_6D61C();
    v16 = v15;
    (*(v9 + 8))(v10, v11);
    v17 = sub_1076C(v14, v16, &v67);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_0, v6, v7, "ImagePickerPromptStrategy parseValueResponse called with input: %s", v12, 0xCu);
    sub_9964(v13);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v18 = v0[9];
  v19 = v0[10];
  v20 = v0[7];
  v21 = v0[8];
  sub_6B78C();
  if ((*(v18 + 88))(v19, v21) != enum case for Parse.directInvocation(_:))
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    v27 = sub_6D03C();
    v28 = sub_6D45C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_0, v27, v28, "ImagePickerPromptStrategy parseValueResponse input is not direct invocation. Will return nil", v29, 2u);
    }

    goto LABEL_30;
  }

  v22 = v0[12];
  v23 = v0[13];
  v25 = v0[10];
  v24 = v0[11];
  (*(v0[9] + 96))(v25, v0[8]);
  (*(v22 + 32))(v23, v25, v24);
  if (sub_6B7CC() == 0xD000000000000032 && 0x800000000006F8C0 == v26)
  {
  }

  else
  {
    v30 = sub_6D63C();

    if ((v30 & 1) == 0)
    {
      v49 = sub_6D03C();
      v50 = sub_6D45C();
      v58 = os_log_type_enabled(v49, v50);
      v53 = v0[12];
      v52 = v0[13];
      v54 = v0[11];
      if (v58)
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        v56 = "ImagePickerPromptStrategy parseValueResponse direct invocation identifier does not match. Will return nil";
        goto LABEL_28;
      }

      goto LABEL_29;
    }
  }

  v31 = v0[13];
  v32 = sub_6B7DC();
  if (!v32)
  {
    v49 = sub_6D03C();
    v50 = sub_6D45C();
    v57 = os_log_type_enabled(v49, v50);
    v53 = v0[12];
    v52 = v0[13];
    v54 = v0[11];
    if (v57)
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      v56 = "ImagePickerPromptStrategy parseValueResponse input does not have user data. Will return nil";
      goto LABEL_28;
    }

LABEL_29:

    (*(v53 + 8))(v52, v54);
LABEL_30:
    v36 = 0;
    goto LABEL_31;
  }

  v33 = v32;
  if (!*(v32 + 16) || (v34 = sub_10DDC(0xD000000000000010, 0x800000000006F900), (v35 & 1) == 0))
  {

LABEL_22:
    v49 = sub_6D03C();
    v50 = sub_6D45C();
    v51 = os_log_type_enabled(v49, v50);
    v53 = v0[12];
    v52 = v0[13];
    v54 = v0[11];
    if (v51)
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      v56 = "ImagePickerPromptStrategy parseValueResponse input user data does not contain expected 'assetEntityIdentifiers' field. Will return nil";
LABEL_28:
      _os_log_impl(&dword_0, v49, v50, v56, v55, 2u);

      goto LABEL_29;
    }

    goto LABEL_29;
  }

  sub_98EC(*(v33 + 56) + 32 * v34, (v0 + 2));

  sub_5708(&qword_81840, &qword_70428);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v36 = v0[6];
  if (!*(v36 + 16))
  {
    v64 = v0[6];

    v49 = sub_6D03C();
    v50 = sub_6D45C();
    v65 = os_log_type_enabled(v49, v50);
    v53 = v0[12];
    v52 = v0[13];
    v54 = v0[11];
    if (!v65)
    {
      goto LABEL_29;
    }

    v55 = swift_slowAlloc();
    *v55 = 0;
    v56 = "ImagePickerPromptStrategy parseValueResponse input returned empty 'assetEntityIdentifiers' field. Will return nil";
    goto LABEL_28;
  }

  v37 = v0[6];

  v38 = sub_6D03C();
  v39 = sub_6D45C();

  v40 = os_log_type_enabled(v38, v39);
  v41 = v0[12];
  v42 = v0[13];
  v43 = v0[11];
  if (v40)
  {
    v66 = v0[13];
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v67 = v45;
    *v44 = 136315138;
    v46 = sub_6D39C();
    v48 = sub_1076C(v46, v47, &v67);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_0, v38, v39, "ImagePickerPromptStrategy parseValueResponse input is valid. Returning asset identifier: %s", v44, 0xCu);
    sub_9964(v45);

    (*(v41 + 8))(v66, v43);
  }

  else
  {

    (*(v41 + 8))(v42, v43);
  }

LABEL_31:
  v59 = v0[16];
  v60 = v0[13];
  v61 = v0[10];

  v62 = v0[1];

  return v62(v36);
}

uint64_t sub_576F4()
{
  v1[7] = v0;
  v2 = type metadata accessor for IFFlowError();
  v1[8] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v4 = sub_6B1DC();
  v1[12] = v4;
  v5 = *(v4 - 8);
  v1[13] = v5;
  v6 = *(v5 + 64) + 15;
  v1[14] = swift_task_alloc();
  v7 = sub_5708(&unk_82030, &qword_70370);
  v1[15] = v7;
  v8 = *(v7 - 8);
  v1[16] = v8;
  v9 = *(v8 + 64) + 15;
  v1[17] = swift_task_alloc();
  v10 = *(*(sub_5708(&qword_821F0, &unk_71290) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_578A8, 0, 0);
}

uint64_t sub_578A8()
{
  v1 = v0[7];
  v2 = sub_30BD4();
  v0[20] = v2;
  sub_6CE5C();
  if (v3)
  {
    v4 = v0[19];
    sub_6AE5C();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[15];
  v9 = v0[16];
  (*(v9 + 56))(v6, v5, 1, v8);
  sub_C14C(v6, v7, &qword_821F0, &unk_71290);
  v10 = (*(v9 + 48))(v7, 1, v8);
  v11 = v0[18];
  if (v10 == 1)
  {
    sub_5E20(v11, &qword_821F0, &unk_71290);
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v12 = sub_6D04C();
    sub_5CE4(v12, qword_839A0);
    v13 = sub_6D03C();
    v14 = sub_6D45C();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[19];
    if (v15)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v13, v14, "Not sending the heartbeat because conversationSessionID is nil", v17, 2u);
    }

    v18 = &qword_821F0;
    v19 = &unk_71290;
    v20 = v16;
LABEL_19:
    sub_5E20(v20, v18, v19);
    v42 = v0[18];
    v41 = v0[19];
    v43 = v0[17];
    v44 = v0[14];
    v46 = v0[10];
    v45 = v0[11];
    v47 = v0[9];

    v48 = v0[1];

    return v48();
  }

  v21 = v0[17];
  sub_5854C(v11, v21);
  v22 = swift_task_alloc();
  *(v22 + 16) = v2;
  *(v22 + 24) = v21;
  v23 = objc_allocWithZone(sub_6CB6C());
  v24 = sub_6CAEC();
  v0[21] = v24;

  if (!v24)
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v35 = sub_6D04C();
    sub_5CE4(v35, qword_839A0);
    v36 = sub_6D03C();
    v37 = sub_6D45C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_0, v36, v37, "Not sending the heartbeat because IntelligenceFlowStatusUpdateMessage can not be constructed", v38, 2u);
    }

    v39 = v0[19];
    v40 = v0[17];

    sub_5E20(v39, &qword_821F0, &unk_71290);
    v18 = &unk_82030;
    v19 = &qword_70370;
    v20 = v40;
    goto LABEL_19;
  }

  v26 = v0[13];
  v25 = v0[14];
  v27 = v0[12];
  v28 = v0[7];
  v29 = v24;
  sub_6B1CC();
  v30 = v28[10];
  v31 = v28[11];
  sub_99FC(v28 + 7, v30);
  v0[5] = v27;
  v0[6] = &protocol witness table for FlowMessageTransportableOutput;
  v32 = sub_97B0(v0 + 2);
  (*(v26 + 16))(v32, v25, v27);
  v33 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v34 = swift_task_alloc();
  v0[22] = v34;
  *v34 = v0;
  v34[1] = sub_57D50;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 2, v30, v31);
}

uint64_t sub_57D50()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_57F84;
  }

  else
  {
    v3 = sub_57E64;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_57E64()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  sub_9964(v0 + 2);

  (*(v5 + 8))(v4, v6);
  sub_5E20(v3, &qword_821F0, &unk_71290);
  sub_5E20(v0[17], &unk_82030, &qword_70370);
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[14];
  v12 = v0[10];
  v11 = v0[11];
  v13 = v0[9];

  v14 = v0[1];

  return v14();
}

uint64_t sub_57F84()
{
  v39 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  *v2 = v0[23];
  swift_storeEnumTagMultiPayload();
  sub_C0F4();
  swift_willThrowTypedImpl();
  sub_9964(v0 + 2);
  sub_9814(v2, v1);
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v4 = v0[9];
  v5 = v0[10];
  v6 = sub_6D04C();
  sub_5CE4(v6, qword_839A0);
  sub_4394(v5, v4);
  v7 = sub_6D03C();
  v8 = sub_6D45C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[20];
  v11 = v0[21];
  v12 = v0[19];
  v14 = v0[13];
  v13 = v0[14];
  v15 = v0[12];
  v16 = v0[9];
  v37 = v0[10];
  if (v9)
  {
    v36 = v0[14];
    v17 = v0[8];
    v35 = v0[19];
    v18 = swift_slowAlloc();
    v34 = v15;
    v19 = swift_slowAlloc();
    v38 = v19;
    *v18 = 136315138;
    v20 = sub_6D66C();
    v22 = v21;
    sub_43F8(v16);
    v23 = sub_1076C(v20, v22, &v38);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_0, v7, v8, "Publishing heartbeat failed with error: %s", v18, 0xCu);
    sub_9964(v19);

    sub_43F8(v37);
    (*(v14 + 8))(v36, v34);
    v24 = v35;
  }

  else
  {

    sub_43F8(v16);
    sub_43F8(v37);
    (*(v14 + 8))(v13, v15);
    v24 = v12;
  }

  sub_5E20(v24, &qword_821F0, &unk_71290);
  sub_5E20(v0[17], &unk_82030, &qword_70370);
  v26 = v0[18];
  v25 = v0[19];
  v27 = v0[17];
  v28 = v0[14];
  v30 = v0[10];
  v29 = v0[11];
  v31 = v0[9];

  v32 = v0[1];

  return v32();
}

uint64_t sub_582A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_5708(&qword_81B70, &qword_70940);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23 - v6;
  v8 = sub_5708(&qword_81B60, &qword_70930);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v23 - v10;
  v12 = sub_5708(&unk_82030, &qword_70370);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v23 - v14;
  sub_6CE4C();
  sub_6CB0C();
  sub_C14C(a3, v15, &unk_82030, &qword_70370);
  sub_6CB4C();
  sub_6CDCC();
  sub_6CB3C();
  sub_6CDBC();
  sub_6CB1C();
  v16 = enum case for MessageSource.ifFlow(_:);
  v17 = sub_6CC2C();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v11, v16, v17);
  (*(v18 + 56))(v11, 0, 1, v17);
  sub_6CB2C();
  sub_6CB5C();
  v19 = enum case for IntelligenceFlowStatusUpdateMessage.StatusUpdate.heartbeat(_:);
  v20 = sub_6CA8C();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v7, v19, v20);
  (*(v21 + 56))(v7, 0, 1, v20);
  return sub_6CAFC();
}

uint64_t sub_5854C(uint64_t a1, uint64_t a2)
{
  v4 = sub_5708(&unk_82030, &qword_70370);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_585C4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_585D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_58620(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_58694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 145) = a8;
  *(v8 + 352) = a6;
  *(v8 + 360) = a7;
  *(v8 + 336) = a4;
  *(v8 + 344) = a5;
  *(v8 + 320) = a2;
  *(v8 + 328) = a3;
  *(v8 + 312) = a1;
  v9 = *(*(sub_5708(&qword_821F8, &qword_712F0) - 8) + 64) + 15;
  *(v8 + 368) = swift_task_alloc();
  v10 = sub_6AE9C();
  *(v8 + 376) = v10;
  v11 = *(v10 - 8);
  *(v8 + 384) = v11;
  *(v8 + 392) = *(v11 + 64);
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = swift_task_alloc();
  v12 = sub_6C0FC();
  *(v8 + 416) = v12;
  v13 = *(v12 - 8);
  *(v8 + 424) = v13;
  *(v8 + 432) = *(v13 + 64);
  *(v8 + 440) = swift_task_alloc();
  *(v8 + 448) = swift_task_alloc();
  v14 = *(*(sub_5708(&qword_82200, &qword_712F8) - 8) + 64) + 15;
  *(v8 + 456) = swift_task_alloc();
  v15 = sub_6D01C();
  *(v8 + 464) = v15;
  v16 = *(v15 - 8);
  *(v8 + 472) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();
  *(v8 + 496) = swift_task_alloc();
  v18 = sub_6BECC();
  *(v8 + 504) = v18;
  v19 = *(v18 - 8);
  *(v8 + 512) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 520) = swift_task_alloc();
  v21 = type metadata accessor for IFFlowError();
  *(v8 + 528) = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  *(v8 + 536) = swift_task_alloc();
  v23 = sub_6C0AC();
  *(v8 + 544) = v23;
  v24 = *(v23 - 8);
  *(v8 + 552) = v24;
  v25 = *(v24 + 64) + 15;
  *(v8 + 560) = swift_task_alloc();
  *(v8 + 568) = swift_task_alloc();
  *(v8 + 576) = swift_task_alloc();
  v26 = sub_6C34C();
  *(v8 + 584) = v26;
  v27 = *(v26 - 8);
  *(v8 + 592) = v27;
  v28 = *(v27 + 64) + 15;
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 608) = swift_task_alloc();
  *(v8 + 616) = swift_task_alloc();
  v29 = *(*(sub_5708(&qword_817E0, &qword_71300) - 8) + 64) + 15;
  *(v8 + 624) = swift_task_alloc();
  v30 = *(*(sub_5708(&qword_82208, &qword_71308) - 8) + 64) + 15;
  *(v8 + 632) = swift_task_alloc();
  v31 = sub_6D1EC();
  *(v8 + 640) = v31;
  v32 = *(v31 - 8);
  *(v8 + 648) = v32;
  v33 = *(v32 + 64) + 15;
  *(v8 + 656) = swift_task_alloc();
  v34 = sub_6C54C();
  *(v8 + 664) = v34;
  v35 = *(v34 - 8);
  *(v8 + 672) = v35;
  v36 = *(v35 + 64) + 15;
  *(v8 + 680) = swift_task_alloc();
  v37 = *(*(sub_5708(&qword_81D88, &qword_70DC0) - 8) + 64) + 15;
  *(v8 + 688) = swift_task_alloc();
  v38 = *(*(sub_5708(&unk_82030, &qword_70370) - 8) + 64) + 15;
  *(v8 + 696) = swift_task_alloc();
  *(v8 + 704) = swift_task_alloc();
  v39 = sub_6C91C();
  *(v8 + 712) = v39;
  v40 = *(v39 - 8);
  *(v8 + 720) = v40;
  v41 = *(v40 + 64) + 15;
  *(v8 + 728) = swift_task_alloc();
  v42 = sub_6C4EC();
  *(v8 + 736) = v42;
  v43 = *(v42 - 8);
  *(v8 + 744) = v43;
  v44 = *(v43 + 64) + 15;
  *(v8 + 752) = swift_task_alloc();
  v45 = sub_6C77C();
  *(v8 + 760) = v45;
  v46 = *(v45 - 8);
  *(v8 + 768) = v46;
  v47 = *(v46 + 64) + 15;
  *(v8 + 776) = swift_task_alloc();
  v48 = sub_6C78C();
  *(v8 + 784) = v48;
  v49 = *(v48 - 8);
  *(v8 + 792) = v49;
  v50 = *(v49 + 64) + 15;
  *(v8 + 800) = swift_task_alloc();
  v51 = sub_6C7AC();
  *(v8 + 808) = v51;
  v52 = *(v51 - 8);
  *(v8 + 816) = v52;
  v53 = *(v52 + 64) + 15;
  *(v8 + 824) = swift_task_alloc();
  v54 = sub_6C35C();
  *(v8 + 832) = v54;
  v55 = *(v54 - 8);
  *(v8 + 840) = v55;
  v56 = *(v55 + 64) + 15;
  *(v8 + 848) = swift_task_alloc();

  return _swift_task_switch(sub_58E0C, 0, 0);
}

uint64_t sub_58E0C()
{
  v281 = v0;
  v1 = v0;
  v2 = v0[106];
  v3 = v0[105];
  v4 = *(v1 + 104);
  v5 = *(v1 + 40);
  sub_6C81C();
  v6 = (*(v3 + 88))(v2, v4);
  if (v6 == enum case for MessagePayload.terminate(_:))
  {
    v7 = *(v1 + 106);
    v8 = *(v1 + 105);
    v9 = *(v1 + 104);
    v10 = *(v1 + 67);
    v11 = *(v1 + 66);
    v12 = *(v1 + 39);
    swift_storeEnumTagMultiPayload();
    sub_66050(v10, v12, type metadata accessor for IFFlowError);
    type metadata accessor for FlowAction.ExitValue(0);
    swift_storeEnumTagMultiPayload();
    v13 = type metadata accessor for FlowAction(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
LABEL_3:
    (*(v8 + 8))(v7, v9);
LABEL_61:
    v201 = *(v1 + 106);
    v202 = *(v1 + 103);
    v203 = *(v1 + 100);
    v204 = v1;
    v205 = *(v1 + 97);
    v206 = *(v204 + 94);
    v207 = *(v204 + 91);
    v208 = *(v204 + 88);
    v209 = *(v204 + 87);
    v210 = *(v204 + 86);
    v211 = *(v204 + 85);
    v237 = *(v204 + 82);
    v238 = *(v204 + 79);
    v239 = *(v204 + 78);
    v240 = *(v204 + 77);
    v241 = *(v204 + 76);
    v242 = *(v204 + 75);
    v243 = *(v204 + 72);
    v244 = *(v204 + 71);
    v246 = *(v204 + 70);
    v248 = *(v204 + 67);
    v250 = *(v204 + 65);
    v253 = *(v204 + 62);
    v255 = *(v204 + 61);
    v257 = *(v204 + 60);
    v261 = *(v204 + 57);
    v264 = *(v204 + 56);
    v268 = *(v204 + 55);
    v272 = *(v204 + 51);
    v278 = *(v204 + 50);
    v286 = *(v204 + 46);

    v212 = *(v204 + 1);

    return v212();
  }

  if (v6 == enum case for MessagePayload.endOfPlan(_:))
  {
    v14 = *(v1 + 106);
    v15 = *(v1 + 77);
    v16 = *(v1 + 74);
    v17 = *(v1 + 73);
    (*(*(v1 + 105) + 96))(v14, *(v1 + 104));
    (*(v16 + 32))(v15, v14, v17);
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v18 = *(v1 + 77);
    v19 = *(v1 + 76);
    v20 = *(v1 + 74);
    v21 = *(v1 + 73);
    v22 = sub_6D04C();
    sub_5CE4(v22, qword_839A0);
    v23 = *(v20 + 16);
    v23(v19, v18, v21);
    v24 = sub_6D03C();
    v25 = sub_6D45C();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v1 + 77);
    v28 = *(v1 + 76);
    if (v26)
    {
      v29 = *(v1 + 75);
      v273 = *(v1 + 77);
      v30 = *(v1 + 74);
      v31 = *(v1 + 73);
      v286 = v1;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v279[0] = v33;
      *v32 = 136315138;
      v23(v29, v28, v31);
      v34 = sub_6D2EC();
      v36 = v35;
      v37 = *(v30 + 8);
      v37(v28, v31);
      v38 = sub_1076C(v34, v36, v279);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_0, v24, v25, "IFFlow received endOfPlan message %s", v32, 0xCu);
      sub_9964(v33);

      v1 = v286;

      v37(v273, v31);
    }

    else
    {
      v65 = *(v1 + 74);
      v66 = *(v1 + 73);

      v67 = *(v65 + 8);
      v67(v28, v66);
      v67(v27, v66);
    }

    v68 = *(v1 + 39);
    type metadata accessor for FlowAction.ExitValue(0);
    swift_storeEnumTagMultiPayload();
    v69 = type metadata accessor for FlowAction(0);
    goto LABEL_17;
  }

  if (v6 == enum case for MessagePayload.error(_:))
  {
    v39 = *(v1 + 106);
    v40 = *(v1 + 72);
    v41 = *(v1 + 69);
    v42 = *(v1 + 68);
    (*(*(v1 + 105) + 96))(v39, *(v1 + 104));
    v43 = *(v41 + 32);
    v43(v40, v39, v42);
    if (sub_62298())
    {
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v44 = *(v1 + 72);
      v45 = *(v1 + 71);
      v46 = *(v1 + 69);
      v47 = *(v1 + 68);
      v48 = sub_6D04C();
      sub_5CE4(v48, qword_839A0);
      v49 = *(v46 + 16);
      v49(v45, v44, v47);
      v50 = sub_6D03C();
      v51 = sub_6D45C();
      v52 = os_log_type_enabled(v50, v51);
      v53 = *(v1 + 72);
      v54 = *(v1 + 71);
      if (v52)
      {
        v55 = *(v1 + 70);
        v274 = *(v1 + 72);
        v56 = *(v1 + 69);
        v57 = *(v1 + 68);
        v286 = v1;
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *&v279[0] = v59;
        *v58 = 136315138;
        v49(v55, v54, v57);
        v60 = sub_6D2EC();
        v62 = v61;
        v63 = *(v56 + 8);
        v63(v54, v57);
        v64 = sub_1076C(v60, v62, v279);

        *(v58 + 4) = v64;
        _os_log_impl(&dword_0, v50, v51, "Received Network Failure error as SessionError: %s", v58, 0xCu);
        sub_9964(v59);

        v1 = v286;

        v63(v274, v57);
      }

      else
      {
        v101 = *(v1 + 69);
        v102 = *(v1 + 68);

        v103 = *(v101 + 8);
        v103(v54, v102);
        v103(v53, v102);
      }

      v104 = *(v1 + 67);
      v105 = *(v1 + 66);
      v98 = *(v1 + 39);
      swift_storeEnumTagMultiPayload();
      sub_66050(v104, v98, type metadata accessor for IFFlowError);
      type metadata accessor for FlowAction.ExitValue(0);
      swift_storeEnumTagMultiPayload();
      v100 = type metadata accessor for FlowAction(0);
      goto LABEL_29;
    }

    v85 = *(v1 + 72);
    v86 = sub_6C09C();
    v87 = *(v86 + 16);
    if (v87)
    {
      v88 = *(v1 + 65);
      v89 = *(v1 + 63);
      v90 = *(v1 + 64);
      v91 = *(v1 + 58);
      v92 = *(v1 + 59);
      v93 = v1;
      v94 = *(v1 + 57);
      (*(v90 + 16))(v88, v86 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * (v87 - 1), v89);

      v95 = sub_6BEAC();
      (*(v90 + 8))(v88, v89);
      sub_6D00C();
      if ((*(v92 + 48))(v94, 1, v91) == 1)
      {
        v96 = *(v93 + 57);

        sub_5E20(v96, &qword_82200, &qword_712F8);
        v1 = v93;
      }

      else
      {
        v276 = (*(v93 + 59) + 32);
        v270 = *v276;
        (*v276)(*(v93 + 62), *(v93 + 57), *(v93 + 58));
        if (qword_812A0 != -1)
        {
          swift_once();
        }

        v146 = *(v93 + 61);
        v145 = *(v93 + 62);
        v147 = *(v93 + 58);
        v148 = *(v93 + 59);
        v149 = sub_6D04C();
        sub_5CE4(v149, qword_839A0);
        v266 = *(v148 + 16);
        v266(v146, v145, v147);
        v150 = sub_6D03C();
        v151 = sub_6D45C();
        v152 = os_log_type_enabled(v150, v151);
        v153 = *(v93 + 61);
        v155 = *(v93 + 58);
        v154 = *(v93 + 59);
        v286 = v93;
        if (v152)
        {
          v262 = v151;
          v156 = swift_slowAlloc();
          v259 = swift_slowAlloc();
          *v156 = 138412290;
          sub_65FB0(&qword_82210, &type metadata accessor for GATError);
          swift_allocError();
          v266(v157, v153, v155);
          v158 = _swift_stdlib_bridgeErrorToNSError();
          v159 = *(v154 + 8);
          v159(v153, v155);
          *(v156 + 4) = v158;
          *v259 = v158;
          _os_log_impl(&dword_0, v150, v262, "Received an error from GAT: %@", v156, 0xCu);
          sub_5E20(v259, &qword_81508, &unk_70260);
        }

        else
        {

          v159 = *(v154 + 8);
          v159(v153, v155);
        }

        v1 = v286;
        v190 = *(v286 + 59);
        v189 = *(v286 + 60);
        v191 = *(v286 + 58);
        v270(v189, *(v286 + 62), v191);
        if ((*(v190 + 88))(v189, v191) == enum case for GATError.emergencyFallback(_:))
        {
          v193 = *(v286 + 59);
          v192 = *(v286 + 60);
          v194 = *(v286 + 58);
          v195 = *(v286 + 39);
          (*(*(v286 + 69) + 8))(*(v286 + 72), *(v286 + 68));
          (*(v193 + 96))(v192, v194);
          v196 = v192[1];
          *v195 = *v192;
          v195[1] = v196;
          v197 = type metadata accessor for FlowAction(0);
LABEL_60:
          swift_storeEnumTagMultiPayload();
          (*(*(v197 - 8) + 56))(v195, 0, 1, v197);
          goto LABEL_61;
        }

        v198 = *(v286 + 59) + 8;
        v159(*(v286 + 60), *(v286 + 58));
      }
    }

    else
    {
    }

    v199 = *(v1 + 67);
    v200 = *(v1 + 66);
    v195 = *(v1 + 39);
    v43(v199, *(v1 + 72), *(v1 + 68));
    swift_storeEnumTagMultiPayload();
    sub_66050(v199, v195, type metadata accessor for IFFlowError);
    type metadata accessor for FlowAction.ExitValue(0);
    swift_storeEnumTagMultiPayload();
    v197 = type metadata accessor for FlowAction(0);
    goto LABEL_60;
  }

  if (v6 == enum case for MessagePayload.actionWillExecute(_:))
  {
    v70 = *(v1 + 106);
    v71 = *(v1 + 56);
    v72 = *(v1 + 52);
    v73 = *(v1 + 53);
    v74 = *(v1 + 42);
    (*(*(v1 + 105) + 96))(v70, *(v1 + 104));
    v75 = *(v73 + 32);
    v75(v71, v70, v72);
    sub_6CD9C();
    sub_6CD8C();
    sub_6CDBC();
    if (v76)
    {
      v77 = *(v1 + 87);
      v78 = *(v1 + 47);
      v79 = *(v1 + 48);
      sub_6AE5C();

      v80 = (*(v79 + 48))(v77, 1, v78);
      v81 = *(v1 + 87);
      if (v80 == 1)
      {
        v82 = *(v1 + 56);
        v83 = *(v1 + 52);
        v84 = *(v1 + 53);
        sub_9964(v1 + 19);
        (*(v84 + 8))(v82, v83);
        sub_5E20(v81, &unk_82030, &qword_70370);
      }

      else
      {
        v275 = (*(v1 + 48) + 32);
        v269 = *v275;
        (*v275)(*(v1 + 51), *(v1 + 87), *(v1 + 47));
        if (qword_812A0 != -1)
        {
          swift_once();
        }

        v286 = v75;
        v127 = sub_6D04C();
        sub_5CE4(v127, qword_839A0);
        v128 = sub_6D03C();
        v129 = sub_6D45C();
        if (os_log_type_enabled(v128, v129))
        {
          v130 = swift_slowAlloc();
          *v130 = 0;
          _os_log_impl(&dword_0, v128, v129, "IFFlow received actionWillExecute message and passing this to suggestions", v130, 2u);
        }

        v132 = *(v1 + 55);
        v131 = *(v1 + 56);
        v133 = *(v1 + 53);
        v134 = *(v1 + 51);
        v258 = v134;
        v135 = *(v1 + 50);
        v251 = *(v1 + 52);
        v136 = *(v1 + 48);
        v254 = *(v1 + 49);
        v137 = *(v1 + 46);
        v247 = *(v1 + 47);
        v265 = v131;

        v138 = sub_6D41C();
        (*(*(v138 - 8) + 56))(v137, 1, 1, v138);
        sub_9878(v1 + 152, v1 + 192);
        (*(v136 + 16))(v135, v134, v247);
        (*(v133 + 16))(v132, v131, v251);
        v139 = v1;
        v140 = (*(v136 + 80) + 72) & ~*(v136 + 80);
        v141 = (v254 + *(v133 + 80) + v140) & ~*(v133 + 80);
        v142 = swift_allocObject();
        *(v142 + 16) = 0;
        *(v142 + 24) = 0;
        sub_1FD68(v139 + 12, v142 + 32);
        v143 = v142 + v140;
        v1 = v139;
        v269(v143, v135, v247);
        v286(v142 + v141, v132, v251);
        sub_629FC(0, 0, v137, &unk_71318, v142);

        (*(v136 + 8))(v258, v247);
        sub_9964(v139 + 19);
        (*(v133 + 8))(v265, v251);
      }
    }

    else
    {
      v124 = *(v1 + 56);
      v125 = *(v1 + 52);
      v126 = *(v1 + 53);
      sub_9964(v1 + 19);
      (*(v126 + 8))(v124, v125);
    }

    v68 = *(v1 + 39);
    goto LABEL_42;
  }

  if (v6 == enum case for MessagePayload.clientAction(_:))
  {
    v97 = *(v1 + 106);
    v98 = *(v1 + 39);
    (*(*(v1 + 105) + 96))(v97, *(v1 + 104));
    v99 = sub_6C06C();
    (*(*(v99 - 8) + 32))(v98, v97, v99);
    v100 = type metadata accessor for FlowAction(0);
LABEL_29:
    swift_storeEnumTagMultiPayload();
    (*(*(v100 - 8) + 56))(v98, 0, 1, v100);
    goto LABEL_61;
  }

  if (v6 == enum case for MessagePayload.systemResponse(_:))
  {
    v106 = *(v1 + 106);
    v107 = *(v1 + 94);
    v108 = *(v1 + 93);
    v109 = *(v1 + 92);
    v110 = *(v1 + 42);
    (*(*(v1 + 105) + 96))(v106, *(v1 + 104));
    (*(v108 + 32))(v107, v106, v109);
    v111 = sub_6CDCC();
    v113 = v112;
    *(v1 + 107) = v112;
    v114 = swift_task_alloc();
    *(v1 + 108) = v114;
    *v114 = v1;
    v114[1] = sub_5A728;
    v115 = *(v1 + 94);
    v117 = *(v1 + 44);
    v116 = *(v1 + 45);
    v118 = *(v1 + 42);
    v119 = *(v1 + 43);
    v120 = *(v1 + 40);
    v121 = *(v1 + 41);
    v122 = *(v1 + 39);
    v285 = *(v1 + 145);
    v283 = v117;
    v284 = v116;

    return sub_5B528(v122, v120, v115, v121, v111, v113, v118, v119);
  }

  else
  {
    if (v6 != enum case for MessagePayload.intermediateSystemResponse(_:))
    {
      if (v6 == enum case for MessagePayload.actionSummaryUpdate(_:))
      {
        v7 = *(v1 + 106);
        v8 = *(v1 + 105);
        v9 = *(v1 + 104);
        v213 = *(v1 + 42);
        sub_5AE7C(*(v1 + 40), *(v1 + 39));
        goto LABEL_3;
      }

      v7 = *(v1 + 106);
      v8 = *(v1 + 105);
      v9 = *(v1 + 104);
      if (v6 != enum case for MessagePayload.statusUpdate(_:))
      {
        v234 = *(v1 + 39);
        v235 = type metadata accessor for FlowAction(0);
        (*(*(v235 - 8) + 56))(v234, 1, 1, v235);
        goto LABEL_3;
      }

      v214 = *(v1 + 103);
      v215 = *(v1 + 102);
      v216 = *(v1 + 101);
      v217 = v1;
      v218 = *(v1 + 100);
      v219 = *(v217 + 99);
      v220 = *(v217 + 98);
      (*(v8 + 96))(v7, v9);
      (*(v215 + 32))(v214, v7, v216);
      sub_6C79C();
      v221 = v218;
      v1 = v217;
      v222 = (*(v219 + 88))(v221, v220);
      v223 = *(v217 + 103);
      v224 = *(v217 + 102);
      v225 = *(v217 + 101);
      v226 = *(v217 + 100);
      v227 = *(v217 + 99);
      v228 = *(v217 + 98);
      if (v222 != enum case for SessionStatusUpdate.Payload.intermediateQueryResult(_:))
      {
        v236 = *(v217 + 42);
        sub_5AE7C(*(v217 + 40), *(v217 + 39));
        (*(v224 + 8))(v223, v225);
        (*(v227 + 8))(v226, v228);
        goto LABEL_61;
      }

      v229 = *(v217 + 97);
      v230 = *(v217 + 96);
      v231 = *(v217 + 95);
      (*(v227 + 96))(*(v217 + 100), *(v217 + 98));
      (*(v230 + 32))(v229, v226, v231);
      sub_19890(v279);
      v232 = v229;
      v1 = v217;
      (*(v230 + 8))(v232, v231);
      (*(v224 + 8))(v223, v225);
      *(v217 + 38) = v280;
      v233 = v279[1];
      *(v217 + 17) = v279[0];
      *(v217 + 18) = v233;
      v68 = *(v217 + 39);
      if (*(v217 + 37))
      {
        sub_1FD68(v217 + 17, *(v217 + 39));
        v69 = type metadata accessor for FlowAction(0);
LABEL_17:
        swift_storeEnumTagMultiPayload();
        (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
        goto LABEL_61;
      }

LABEL_42:
      v144 = type metadata accessor for FlowAction(0);
      (*(*(v144 - 8) + 56))(v68, 1, 1, v144);
      goto LABEL_61;
    }

    v160 = *(v1 + 106);
    v161 = *(v1 + 91);
    v162 = *(v1 + 90);
    v163 = *(v1 + 89);
    (*(*(v1 + 105) + 96))(v160, *(v1 + 104));
    (*(v162 + 32))(v161, v160, v163);
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v164 = sub_6D04C();
    sub_5CE4(v164, qword_839A0);
    v165 = sub_6D03C();
    v166 = sub_6D45C();
    if (os_log_type_enabled(v165, v166))
    {
      v167 = swift_slowAlloc();
      *v167 = 0;
      _os_log_impl(&dword_0, v165, v166, "IFFlow received intermediateSystemResponse", v167, 2u);
    }

    v267 = *(v1 + 94);
    v168 = *(v1 + 91);
    v169 = *(v1 + 88);
    v170 = *(v1 + 86);
    v252 = *(v1 + 85);
    v171 = *(v1 + 84);
    v172 = *(v1 + 82);
    v173 = *(v1 + 81);
    v245 = *(v1 + 80);
    v249 = *(v1 + 79);
    v256 = *(v1 + 78);
    v260 = *(v1 + 83);
    v174 = *(v1 + 47);
    v175 = *(v1 + 48);
    LODWORD(v286) = *(v1 + 145);
    v271 = *(v1 + 45);
    v277 = *(v1 + 42);
    v263 = *(v1 + 41);

    (*(v175 + 56))(v169, 1, 1, v174);
    v176 = sub_6BEEC();
    (*(*(v176 - 8) + 56))(v170, 1, 1, v176);
    sub_6C90C();
    v177 = sub_6D1DC();
    v178 = swift_allocBox();
    (*(*(v177 - 8) + 104))(v179, enum case for TypedValue.PrimitiveValue.none(_:), v177);
    *v172 = v178;
    (*(v173 + 104))(v172, enum case for TypedValue.primitive(_:), v245);
    v180 = sub_6BF7C();
    (*(*(v180 - 8) + 56))(v249, 1, 1, v180);
    sub_6BF8C();
    (*(v171 + 104))(v252, enum case for StatementOutcome.success(_:), v260);
    sub_6C8FC();
    sub_6C4BC();
    sub_9878(v263, v1 + 16);
    sub_9878(v271, v1 + 104);
    *(v1 + 10) = &type metadata for FeatureEnablementProvider;
    *(v1 + 11) = &off_7F140;
    *(v1 + 12) = v277;
    *(v1 + 144) = v286;

    v181 = sub_6CDCC();
    v183 = v182;
    *(v1 + 109) = v182;
    v184 = sub_659BC(v267);
    v185 = swift_task_alloc();
    *(v1 + 110) = v185;
    *v185 = v1;
    v185[1] = sub_5AA9C;
    v186 = *(v1 + 94);
    v187 = *(v1 + 43);
    v188 = *(v1 + 44);

    return sub_14D74(v1 + 232, v186, v181, v183, v187, v188, v184 & 1);
  }
}

uint64_t sub_5A728()
{
  v1 = *(*v0 + 864);
  v2 = *(*v0 + 856);
  v4 = *v0;

  return _swift_task_switch(sub_5A840, 0, 0);
}

uint64_t sub_5A840()
{
  v1 = v0[39];
  (*(v0[93] + 8))(v0[94], v0[92]);
  v2 = type metadata accessor for FlowAction(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = v0[106];
  v4 = v0[103];
  v5 = v0[100];
  v6 = v0[97];
  v7 = v0[94];
  v8 = v0[91];
  v9 = v0[88];
  v10 = v0[87];
  v11 = v0[86];
  v12 = v0[85];
  v15 = v0[82];
  v16 = v0[79];
  v17 = v0[78];
  v18 = v0[77];
  v19 = v0[76];
  v20 = v0[75];
  v21 = v0[72];
  v22 = v0[71];
  v23 = v0[70];
  v24 = v0[67];
  v25 = v0[65];
  v26 = v0[62];
  v27 = v0[61];
  v28 = v0[60];
  v29 = v0[57];
  v30 = v0[56];
  v31 = v0[55];
  v32 = v0[51];
  v33 = v0[50];
  v34 = v0[46];

  v13 = v0[1];

  return v13();
}

uint64_t sub_5AA9C()
{
  v1 = *v0;
  v2 = *(*v0 + 880);
  v3 = *(*v0 + 872);
  v5 = *v0;

  sub_65E88(v1 + 16);

  return _swift_task_switch(sub_5ABBC, 0, 0);
}

uint64_t sub_5ABBC()
{
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[92];
  v4 = v0[91];
  v5 = v0[90];
  v6 = v0[89];
  v7 = v0[39];
  sub_9878((v0 + 29), v7);
  v8 = sub_6C90C();
  v10 = v9;
  sub_9964(v0 + 29);
  (*(v2 + 8))(v1, v3);
  (*(v5 + 8))(v4, v6);
  *(v7 + 40) = v8;
  *(v7 + 48) = v10;
  v11 = type metadata accessor for FlowAction(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = v0[106];
  v13 = v0[103];
  v14 = v0[100];
  v15 = v0[97];
  v16 = v0[94];
  v17 = v0[91];
  v18 = v0[88];
  v19 = v0[87];
  v20 = v0[86];
  v21 = v0[85];
  v24 = v0[82];
  v25 = v0[79];
  v26 = v0[78];
  v27 = v0[77];
  v28 = v0[76];
  v29 = v0[75];
  v30 = v0[72];
  v31 = v0[71];
  v32 = v0[70];
  v33 = v0[67];
  v34 = v0[65];
  v35 = v0[62];
  v36 = v0[61];
  v37 = v0[60];
  v38 = v0[57];
  v39 = v0[56];
  v40 = v0[55];
  v41 = v0[51];
  v42 = v0[50];
  v43 = v0[46];

  v22 = v0[1];

  return v22();
}

uint64_t sub_5AE7C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v61 = a1;
  v64 = a2;
  v2 = sub_6C35C();
  v62 = *(v2 - 8);
  v63 = v2;
  v3 = *(v62 + 64);
  __chkstk_darwin(v2);
  v5 = (&v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_5708(&qword_81D50, &qword_70D20);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v58 - v8;
  v10 = sub_6B1DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v60 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_5708(&unk_82030, &qword_70370);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v58 - v16;
  v18 = sub_6AE9C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6CE5C();
  if (!v23)
  {
    goto LABEL_7;
  }

  sub_6AE5C();

  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v24 = &unk_82030;
    v25 = &qword_70370;
    v26 = v17;
LABEL_6:
    sub_5E20(v26, v24, v25);
LABEL_7:
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v37 = sub_6D04C();
    sub_5CE4(v37, qword_839A0);

    v38 = sub_6D03C();
    v39 = sub_6D46C();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v65 = v41;
      *v40 = 136315138;
      v42 = sub_6CE5C();
      if (v43)
      {
        v44 = v43;
      }

      else
      {
        v42 = 1819047278;
        v44 = 0xE400000000000000;
      }

      v45 = sub_1076C(v42, v44, &v65);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_0, v38, v39, "Failed to compose IntelligenceFlowStatusUpdateMessage with sessionId - %s", v40, 0xCu);
      sub_9964(v41);
    }

    v46 = type metadata accessor for FlowAction(0);
    return (*(*(v46 - 8) + 56))(v64, 1, 1, v46);
  }

  (*(v19 + 32))(v22, v17, v18);
  v58 = v19;
  sub_6C81C();
  v27 = sub_6CDCC();
  v61 = v10;
  v59 = v11;
  v29 = v28;
  v30 = sub_6CDBC();
  v32 = v31;
  v33 = sub_6CE4C();
  sub_2D0B8(v5, v27, v29, v30, v32, v22, v33, v34, v9);

  v35 = v59;
  v36 = v61;

  (*(v62 + 8))(v5, v63);
  if ((*(v35 + 48))(v9, 1, v36) == 1)
  {
    (*(v58 + 8))(v22, v18);
    v24 = &qword_81D50;
    v25 = &qword_70D20;
    v26 = v9;
    goto LABEL_6;
  }

  v48 = *(v35 + 32);
  v49 = v60;
  v48(v60, v9, v36);
  v50 = v64;
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v51 = sub_6D04C();
  sub_5CE4(v51, qword_839A0);
  v52 = sub_6D03C();
  v53 = sub_6D45C();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_0, v52, v53, "Publishing IntelligenceFlowStatusUpdateMessage Message", v54, 2u);
  }

  v55 = v61;
  v50[3] = v61;
  v50[4] = &protocol witness table for FlowMessageTransportableOutput;
  v56 = sub_97B0(v50);
  v48(v56, v49, v55);
  (*(v58 + 8))(v22, v18);
  v57 = type metadata accessor for FlowAction(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v57 - 8) + 56))(v50, 0, 1, v57);
}

uint64_t sub_5B528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 145) = v78;
  *(v8 + 2232) = v77;
  *(v8 + 2224) = v76;
  *(v8 + 2216) = a8;
  *(v8 + 2208) = a7;
  *(v8 + 2200) = a6;
  *(v8 + 2192) = a5;
  *(v8 + 2184) = a4;
  *(v8 + 2176) = a3;
  *(v8 + 2168) = a2;
  *(v8 + 2160) = a1;
  v9 = sub_6C4EC();
  *(v8 + 2240) = v9;
  v10 = *(v9 - 8);
  *(v8 + 2248) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 2256) = swift_task_alloc();
  v12 = type metadata accessor for IFFlowError();
  *(v8 + 2264) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v8 + 2272) = swift_task_alloc();
  v14 = sub_6C55C();
  *(v8 + 2280) = v14;
  v15 = *(v14 - 8);
  *(v8 + 2288) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 2296) = swift_task_alloc();
  v17 = sub_6BF3C();
  *(v8 + 2304) = v17;
  v18 = *(v17 - 8);
  *(v8 + 2312) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 2320) = swift_task_alloc();
  v20 = sub_6B12C();
  *(v8 + 2328) = v20;
  v21 = *(v20 - 8);
  *(v8 + 2336) = v21;
  v22 = *(v21 + 64) + 15;
  *(v8 + 2344) = swift_task_alloc();
  v23 = sub_6B0DC();
  *(v8 + 2352) = v23;
  v24 = *(v23 - 8);
  *(v8 + 2360) = v24;
  v25 = *(v24 + 64) + 15;
  *(v8 + 2368) = swift_task_alloc();
  v26 = sub_6BF0C();
  *(v8 + 2376) = v26;
  v27 = *(v26 - 8);
  *(v8 + 2384) = v27;
  v28 = *(v27 + 64) + 15;
  *(v8 + 2392) = swift_task_alloc();
  v29 = sub_6BF6C();
  *(v8 + 2400) = v29;
  v30 = *(v29 - 8);
  *(v8 + 2408) = v30;
  v31 = *(v30 + 64) + 15;
  *(v8 + 2416) = swift_task_alloc();
  *(v8 + 2424) = swift_task_alloc();
  *(v8 + 2432) = swift_task_alloc();
  *(v8 + 2440) = swift_task_alloc();
  *(v8 + 2448) = swift_task_alloc();
  v32 = sub_6C7CC();
  *(v8 + 2456) = v32;
  v33 = *(v32 - 8);
  *(v8 + 2464) = v33;
  v34 = *(v33 + 64) + 15;
  *(v8 + 2472) = swift_task_alloc();
  v35 = sub_6C68C();
  *(v8 + 2480) = v35;
  v36 = *(v35 - 8);
  *(v8 + 2488) = v36;
  v37 = *(v36 + 64) + 15;
  *(v8 + 2496) = swift_task_alloc();
  v38 = *(*(sub_5708(&qword_817E0, &qword_71300) - 8) + 64) + 15;
  *(v8 + 2504) = swift_task_alloc();
  v39 = sub_6C43C();
  *(v8 + 2512) = v39;
  v40 = *(v39 - 8);
  *(v8 + 2520) = v40;
  v41 = *(v40 + 64) + 15;
  *(v8 + 2528) = swift_task_alloc();
  v42 = sub_6C97C();
  *(v8 + 2536) = v42;
  v43 = *(v42 - 8);
  *(v8 + 2544) = v43;
  v44 = *(v43 + 64) + 15;
  *(v8 + 2552) = swift_task_alloc();
  *(v8 + 2560) = swift_task_alloc();
  *(v8 + 2568) = swift_task_alloc();
  v45 = sub_6D1FC();
  *(v8 + 2576) = v45;
  v46 = *(v45 - 8);
  *(v8 + 2584) = v46;
  v47 = *(v46 + 64) + 15;
  *(v8 + 2592) = swift_task_alloc();
  v48 = *(*(sub_5708(&qword_82218, &qword_71338) - 8) + 64) + 15;
  *(v8 + 2600) = swift_task_alloc();
  v49 = sub_6C6CC();
  *(v8 + 2608) = v49;
  v50 = *(v49 - 8);
  *(v8 + 2616) = v50;
  v51 = *(v50 + 64) + 15;
  *(v8 + 2624) = swift_task_alloc();
  v52 = sub_6C6FC();
  *(v8 + 2632) = v52;
  v53 = *(v52 - 8);
  *(v8 + 2640) = v53;
  v54 = *(v53 + 64) + 15;
  *(v8 + 2648) = swift_task_alloc();
  *(v8 + 2656) = swift_task_alloc();
  v55 = sub_6C71C();
  *(v8 + 2664) = v55;
  v56 = *(v55 - 8);
  *(v8 + 2672) = v56;
  v57 = *(v56 + 64) + 15;
  *(v8 + 2680) = swift_task_alloc();
  *(v8 + 2688) = swift_task_alloc();
  v58 = sub_6C8BC();
  *(v8 + 2696) = v58;
  v59 = *(v58 - 8);
  *(v8 + 2704) = v59;
  v60 = *(v59 + 64) + 15;
  *(v8 + 2712) = swift_task_alloc();
  v61 = sub_6CD2C();
  *(v8 + 2720) = v61;
  v62 = *(v61 - 8);
  *(v8 + 2728) = v62;
  v63 = *(v62 + 64) + 15;
  *(v8 + 2736) = swift_task_alloc();
  *(v8 + 2744) = swift_task_alloc();
  v64 = *(*(sub_5708(&qword_82220, &unk_71340) - 8) + 64) + 15;
  *(v8 + 2752) = swift_task_alloc();
  v65 = sub_6C63C();
  *(v8 + 2760) = v65;
  v66 = *(v65 - 8);
  *(v8 + 2768) = v66;
  v67 = *(v66 + 64) + 15;
  *(v8 + 2776) = swift_task_alloc();
  v68 = sub_6C66C();
  *(v8 + 2784) = v68;
  v69 = *(v68 - 8);
  *(v8 + 2792) = v69;
  v70 = *(v69 + 64) + 15;
  *(v8 + 2800) = swift_task_alloc();
  v71 = sub_6C54C();
  *(v8 + 2808) = v71;
  v72 = *(v71 - 8);
  *(v8 + 2816) = v72;
  v73 = *(v72 + 64) + 15;
  *(v8 + 2824) = swift_task_alloc();
  *(v8 + 2832) = swift_task_alloc();

  return _swift_task_switch(sub_5BE40, 0, 0);
}

uint64_t sub_5BE40()
{
  v469 = v0;
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v1 = sub_6D04C();
  sub_5CE4(v1, qword_839A0);
  v2 = sub_6D03C();
  v3 = sub_6D45C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v468[0] = swift_slowAlloc();
    *v4 = 136315394;
    *(v4 + 4) = sub_1076C(0xD00000000000001DLL, 0x800000000006F920, v468);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_1076C(0xD000000000000093, 0x800000000006F940, v468);
    _os_log_impl(&dword_0, v2, v3, "%s:%s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v5 = *(v0 + 2832);
  v6 = *(v0 + 2816);
  v7 = *(v0 + 2808);
  v8 = *(v0 + 2176);
  sub_4B4CC(v5);
  v9 = (*(v6 + 88))(v5, v7);
  if (v9 == enum case for StatementOutcome.success(_:))
  {
    v10 = sub_6D03C();
    v11 = sub_6D44C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "IFFlow Publishing success output", v12, 2u);
    }

    v13 = *(v0 + 145);
    v14 = *(v0 + 2232);
    v15 = *(v0 + 2208);
    v16 = *(v0 + 2184);
    v17 = *(v0 + 2176);

    sub_9878(v16, v0 + 1784);
    sub_9878(v14, v0 + 1872);
    *(v0 + 1848) = &type metadata for FeatureEnablementProvider;
    *(v0 + 1856) = &off_7F140;
    *(v0 + 1864) = v15;
    *(v0 + 1912) = v13;

    v18 = sub_659BC(v17);
    v19 = swift_task_alloc();
    *(v0 + 2840) = v19;
    *v19 = v0;
    v19[1] = sub_5EF08;
    v20 = *(v0 + 2224);
    v21 = *(v0 + 2216);
    v22 = *(v0 + 2200);
    v23 = *(v0 + 2192);
    v24 = *(v0 + 2176);
    v25 = v0 + 2120;
    v26 = v18 & 1;
    goto LABEL_9;
  }

  if (v9 == enum case for StatementOutcome.snippetStream(_:))
  {
    v28 = sub_6D03C();
    v29 = sub_6D46C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "IFFlow received unsupported snippetStream outcomeType", v30, 2u);
    }

    v31 = *(v0 + 2832);
    v32 = *(v0 + 2816);
    v33 = *(v0 + 2808);
    v34 = *(v0 + 2272);
    v35 = *(v0 + 2264);
    v36 = *(v0 + 2168);
    v37 = *(v0 + 2160);

    v38 = sub_6C83C();
    (*(*(v38 - 8) + 16))(v34, v36, v38);
    swift_storeEnumTagMultiPayload();
    sub_66050(v34, v37, type metadata accessor for IFFlowError);
    type metadata accessor for FlowAction.ExitValue(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for FlowAction(0);
    swift_storeEnumTagMultiPayload();
    (*(v32 + 8))(v31, v33);
    goto LABEL_16;
  }

  if (v9 == enum case for StatementOutcome.actionConfirmation(_:))
  {
    v50 = *(v0 + 2832);
    v51 = *(v0 + 2800);
    v52 = *(v0 + 2792);
    v53 = *(v0 + 2784);
    (*(*(v0 + 2816) + 96))(v50, *(v0 + 2808));
    (*(v52 + 32))(v51, v50, v53);
    v54 = sub_6D03C();
    v55 = sub_6D44C();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_0, v54, v55, "IFFlow inferredOutcome action confirmation", v56, 2u);
    }

    v57 = *(v0 + 2800);
    v58 = *(v0 + 2752);

    sub_6C65C();
    v59 = sub_6C64C();
    v60 = *(v59 - 8);
    v61 = (*(v60 + 48))(v58, 1, v59);
    v62 = *(v0 + 2752);
    if (v61 == 1)
    {
      sub_5E20(v62, &qword_82220, &unk_71340);
    }

    else
    {
      if ((*(v60 + 88))(v62, v59) == enum case for ActionConfirmation.SystemStyle.montaraEnablement(_:))
      {
        v77 = *(v0 + 2776);
        v78 = *(v0 + 2768);
        v79 = *(v0 + 2760);
        v80 = *(v0 + 2752);
        (*(v60 + 96))(v80, v59);
        (*(v78 + 32))(v77, v80, v79);
        v81 = sub_6D03C();
        v82 = sub_6D44C();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          *v83 = 0;
          _os_log_impl(&dword_0, v81, v82, "IFFlow pushing Ajax enablement flow", v83, 2u);
        }

        v84 = *(v0 + 2800);
        v85 = *(v0 + 2792);
        v86 = *(v0 + 2784);
        v87 = *(v0 + 2776);
        v88 = *(v0 + 2768);
        v89 = *(v0 + 2760);
        v90 = *(v0 + 2176);
        v91 = *(v0 + 2160);

        v92 = *(sub_5708(&qword_81E00, &qword_70E50) + 48);
        (*(v88 + 16))(v91, v87, v89);
        sub_4B870();
        (*(v88 + 8))(v87, v89);
        (*(v85 + 8))(v84, v86);
        type metadata accessor for FlowAction(0);
        swift_storeEnumTagMultiPayload();
        goto LABEL_16;
      }

      (*(v60 + 8))(*(v0 + 2752), v59);
    }

    v109 = *(v0 + 2744);
    v110 = *(v0 + 2736);
    v111 = *(v0 + 2728);
    v112 = *(v0 + 2720);
    v113 = *(v0 + 2176);
    sub_6CD0C();
    sub_65FB0(&qword_814E8, &type metadata accessor for RequestSummary.ExecutionSource.IntelligenceFlow);
    sub_6BE5C();
    (*(v111 + 104))(v109, enum case for RequestSummary.ExecutionSource.intelligenceFlow(_:), v112);
    sub_4458(v113, v110);
    v114 = sub_6CD1C();
    v115 = v114 & 1;
    *(v0 + 146) = v114 & 1;
    v116 = *(v111 + 8);
    *(v0 + 2848) = v116;
    *(v0 + 2856) = (v111 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v116(v110, v112);
    v117 = sub_6D03C();
    v118 = sub_6D44C();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 67109120;
      *(v119 + 4) = v115;
      _os_log_impl(&dword_0, v117, v118, "IFFlow pushing confirmation flow, isGenAIMediaQnA: %{BOOL}d", v119, 8u);
    }

    v120 = *(v0 + 145);
    v121 = *(v0 + 2232);
    v122 = *(v0 + 2208);
    v123 = *(v0 + 2184);
    v124 = *(v0 + 2176);

    v125 = sub_5708(&qword_81DE0, &qword_70E40);
    *(v0 + 148) = *(v125 + 48);
    *(v0 + 284) = *(v125 + 64);
    sub_9878(v123, v0 + 1648);
    sub_9878(v121, v0 + 1736);
    *(v0 + 1712) = &type metadata for FeatureEnablementProvider;
    *(v0 + 1720) = &off_7F140;
    *(v0 + 1728) = v122;
    *(v0 + 1776) = v120;

    v126 = sub_659BC(v124);
    v127 = swift_task_alloc();
    *(v0 + 2864) = v127;
    *v127 = v0;
    v127[1] = sub_5F2B0;
    v20 = *(v0 + 2224);
    v21 = *(v0 + 2216);
    v22 = *(v0 + 2200);
    v23 = *(v0 + 2192);
    v24 = *(v0 + 2176);
    v25 = *(v0 + 2160);
    v26 = v126 & 1;
    goto LABEL_9;
  }

  if (v9 == enum case for StatementOutcome.toolDisambiguation(_:))
  {
    v63 = *(v0 + 2832);
    v64 = *(v0 + 2496);
    v65 = *(v0 + 2488);
    v66 = *(v0 + 2480);
    (*(*(v0 + 2816) + 96))(v63, *(v0 + 2808));
    (*(v65 + 32))(v64, v63, v66);
    v67 = sub_6D03C();
    v68 = sub_6D44C();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_0, v67, v68, "IFFlow pushing tool Disambiguation flow", v69, 2u);
    }

    v70 = *(v0 + 2496);
    v71 = *(v0 + 145);
    v72 = *(v0 + 2232);
    v73 = *(v0 + 2208);
    v74 = *(v0 + 2184);
    v75 = *(v0 + 2176);

    *(v0 + 2984) = *(sub_6C67C() + 16);

    *(v0 + 1236) = *(sub_5708(&qword_81DC0, &qword_70E30) + 64);
    sub_9878(v74, v0 + 696);
    sub_9878(v72, v0 + 784);
    *(v0 + 760) = &type metadata for FeatureEnablementProvider;
    *(v0 + 768) = &off_7F140;
    *(v0 + 776) = v73;
    *(v0 + 824) = v71;

    LOBYTE(v70) = sub_659BC(v75);
    v76 = swift_task_alloc();
    *(v0 + 2992) = v76;
    *v76 = v0;
    v76[1] = sub_60C5C;
    v20 = *(v0 + 2224);
    v21 = *(v0 + 2216);
    v22 = *(v0 + 2200);
    v23 = *(v0 + 2192);
    v24 = *(v0 + 2176);
    v25 = *(v0 + 2160);
    v26 = v70 & 1;
    goto LABEL_9;
  }

  if (v9 == enum case for StatementOutcome.parameterNeedsValue(_:))
  {
    v93 = *(v0 + 2832);
    v94 = *(v0 + 2656);
    v95 = *(v0 + 2648);
    v96 = *(v0 + 2640);
    v97 = *(v0 + 2632);
    (*(*(v0 + 2816) + 96))(v93, *(v0 + 2808));
    (*(v96 + 32))(v94, v93, v97);
    (*(v96 + 16))(v95, v94, v97);
    v98 = sub_6D03C();
    v99 = sub_6D44C();
    v100 = os_log_type_enabled(v98, v99);
    v101 = *(v0 + 2648);
    v102 = *(v0 + 2640);
    v103 = *(v0 + 2632);
    if (v100)
    {
      v104 = swift_slowAlloc();
      v457 = swift_slowAlloc();
      v468[0] = v457;
      *v104 = 136315138;
      v451 = sub_6C69C();
      v106 = v105;
      v107 = *(v102 + 8);
      v107(v101, v103);
      v108 = sub_1076C(v451, v106, v468);

      *(v104 + 4) = v108;
      _os_log_impl(&dword_0, v98, v99, "IFFlow pushing needsValue flow for %s", v104, 0xCu);
      sub_9964(v457);
    }

    else
    {

      v107 = *(v102 + 8);
      v107(v101, v103);
    }

    *(v0 + 2920) = v107;
    v139 = *(v0 + 2656);
    v140 = *(v0 + 2600);
    sub_6C6EC();
    v141 = sub_6C6DC();
    v142 = *(v141 - 8);
    v143 = (*(v142 + 48))(v140, 1, v141);
    v144 = *(v0 + 2600);
    if (v143 == 1)
    {
      sub_5E20(v144, &qword_82218, &qword_71338);
    }

    else
    {
      if ((*(v142 + 88))(v144, v141) == enum case for ParameterNeedsValue.Context.photosSearch(_:))
      {
        v458 = v107;
        v159 = *(v0 + 2624);
        v160 = *(v0 + 2616);
        v161 = *(v0 + 2608);
        v162 = *(v0 + 2600);
        (*(v142 + 96))(v162, v141);
        (*(v160 + 32))(v159, v162, v161);
        v163 = sub_6D03C();
        v164 = sub_6D44C();
        if (os_log_type_enabled(v163, v164))
        {
          v165 = swift_slowAlloc();
          *v165 = 0;
          _os_log_impl(&dword_0, v163, v164, "IFFLow pushing needsValue for Image", v165, 2u);
        }

        v166 = *(v0 + 2656);
        v447 = *(v0 + 2640);
        v452 = *(v0 + 2632);
        v167 = *(v0 + 2624);
        v168 = *(v0 + 2616);
        v169 = *(v0 + 2592);
        v170 = *(v0 + 2584);
        v171 = *(v0 + 2576);
        v442 = *(v0 + 2176);
        v444 = *(v0 + 2608);
        v172 = *(v0 + 2160);

        sub_6C6AC();
        v173 = (*(v170 + 88))(v169, v171) == enum case for TypeInstance.collection(_:);
        (*(v170 + 8))(v169, v171);
        LODWORD(v170) = *(sub_5708(&qword_81E10, &qword_70E58) + 48);
        *v172 = sub_6C6BC();
        *(v172 + 8) = v174;
        *(v172 + 16) = v173;
        type metadata accessor for PromptValue(0);
        swift_storeEnumTagMultiPayload();
        sub_4B870();
        (*(v168 + 8))(v167, v444);
        v458(v166, v452);
        type metadata accessor for FlowAction(0);
        swift_storeEnumTagMultiPayload();
        goto LABEL_16;
      }

      (*(v142 + 8))(*(v0 + 2600), v141);
    }

    v194 = sub_6D03C();
    v195 = sub_6D44C();
    if (os_log_type_enabled(v194, v195))
    {
      v196 = swift_slowAlloc();
      *v196 = 0;
      _os_log_impl(&dword_0, v194, v195, "IFFLow pushing .promptForValue", v196, 2u);
    }

    v197 = *(v0 + 145);
    v198 = *(v0 + 2232);
    v199 = *(v0 + 2208);
    v200 = *(v0 + 2184);
    v201 = *(v0 + 2176);

    *(v0 + 964) = *(sub_5708(&qword_81E10, &qword_70E58) + 48);
    sub_9878(v200, v0 + 1104);
    sub_9878(v198, v0 + 1192);
    *(v0 + 1168) = &type metadata for FeatureEnablementProvider;
    *(v0 + 1176) = &off_7F140;
    *(v0 + 1184) = v199;
    *(v0 + 1232) = v197;

    v202 = sub_659BC(v201);
    v203 = swift_task_alloc();
    *(v0 + 2928) = v203;
    *v203 = v0;
    v203[1] = sub_60160;
    v20 = *(v0 + 2224);
    v21 = *(v0 + 2216);
    v22 = *(v0 + 2200);
    v23 = *(v0 + 2192);
    v24 = *(v0 + 2176);
    v25 = *(v0 + 2160);
    v26 = v202 & 1;
    goto LABEL_9;
  }

  if (v9 == enum case for StatementOutcome.parameterConfirmation(_:))
  {
    v128 = sub_6D03C();
    v129 = sub_6D44C();
    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      *v130 = 0;
      _os_log_impl(&dword_0, v128, v129, "IFFlow pushing parameter confirmation flow", v130, 2u);
    }

    v131 = *(v0 + 145);
    v132 = *(v0 + 2232);
    v133 = *(v0 + 2208);
    v134 = *(v0 + 2184);
    v135 = *(v0 + 2176);

    v136 = sub_5708(&qword_81DE0, &qword_70E40);
    *(v0 + 556) = *(v136 + 48);
    *(v0 + 692) = *(v136 + 64);
    sub_9878(v134, v0 + 1376);
    sub_9878(v132, v0 + 1464);
    *(v0 + 1440) = &type metadata for FeatureEnablementProvider;
    *(v0 + 1448) = &off_7F140;
    *(v0 + 1456) = v133;
    *(v0 + 1504) = v131;

    v137 = sub_659BC(v135);
    v138 = swift_task_alloc();
    *(v0 + 2888) = v138;
    *v138 = v0;
    v138[1] = sub_5FA18;
    v20 = *(v0 + 2224);
    v21 = *(v0 + 2216);
    v22 = *(v0 + 2200);
    v23 = *(v0 + 2192);
    v24 = *(v0 + 2176);
    v25 = *(v0 + 2160);
    v26 = v137 & 1;
    goto LABEL_9;
  }

  if (v9 == enum case for StatementOutcome.parameterDisambiguation(_:))
  {
    v145 = *(v0 + 2832);
    v146 = *(v0 + 2712);
    v147 = *(v0 + 2704);
    v148 = *(v0 + 2696);
    (*(*(v0 + 2816) + 96))(v145, *(v0 + 2808));
    (*(v147 + 32))(v146, v145, v148);
    v149 = sub_6D03C();
    v150 = sub_6D44C();
    if (os_log_type_enabled(v149, v150))
    {
      v151 = swift_slowAlloc();
      *v151 = 0;
      _os_log_impl(&dword_0, v149, v150, "IFFlow pushing parameter disambiguation flow", v151, 2u);
    }

    v152 = *(v0 + 2712);
    v153 = *(v0 + 145);
    v154 = *(v0 + 2232);
    v155 = *(v0 + 2208);
    v156 = *(v0 + 2184);
    v157 = *(v0 + 2176);

    *(v0 + 2872) = *(sub_6C8AC() + 16);

    *(v0 + 420) = *(sub_5708(&qword_81DC0, &qword_70E30) + 64);
    sub_9878(v156, v0 + 1512);
    sub_9878(v154, v0 + 1600);
    *(v0 + 1576) = &type metadata for FeatureEnablementProvider;
    *(v0 + 1584) = &off_7F140;
    *(v0 + 1592) = v155;
    *(v0 + 1640) = v153;

    LOBYTE(v152) = sub_659BC(v157);
    v158 = swift_task_alloc();
    *(v0 + 2880) = v158;
    *v158 = v0;
    v158[1] = sub_5F67C;
    v20 = *(v0 + 2224);
    v21 = *(v0 + 2216);
    v22 = *(v0 + 2200);
    v23 = *(v0 + 2192);
    v24 = *(v0 + 2176);
    v25 = *(v0 + 2160);
    v26 = v152 & 1;
    goto LABEL_9;
  }

  if (v9 == enum case for StatementOutcome.parameterNotAllowed(_:))
  {
    v175 = *(v0 + 2832);
    v176 = *(v0 + 2688);
    v177 = *(v0 + 2680);
    v178 = *(v0 + 2672);
    v179 = *(v0 + 2664);
    (*(*(v0 + 2816) + 96))(v175, *(v0 + 2808));
    (*(v178 + 32))(v176, v175, v179);
    (*(v178 + 16))(v177, v176, v179);
    v180 = sub_6D03C();
    v181 = sub_6D44C();
    v182 = os_log_type_enabled(v180, v181);
    v183 = *(v0 + 2680);
    v184 = *(v0 + 2672);
    v185 = *(v0 + 2664);
    if (v182)
    {
      v186 = swift_slowAlloc();
      v187 = swift_slowAlloc();
      v468[0] = v187;
      *v186 = 136315138;
      v459 = sub_6C70C();
      v189 = v188;
      v192 = *(v184 + 8);
      v191 = v184 + 8;
      v190 = v192;
      v192(v183, v185);
      v193 = sub_1076C(v459, v189, v468);

      *(v186 + 4) = v193;
      _os_log_impl(&dword_0, v180, v181, "IFFlow received parameterNotAllowed pushing needsValue flow for %s", v186, 0xCu);
      sub_9964(v187);
    }

    else
    {

      v212 = *(v184 + 8);
      v191 = v184 + 8;
      v190 = v212;
      v212(v183, v185);
    }

    *(v0 + 2904) = v190;
    *(v0 + 2896) = v191;
    v213 = *(v0 + 145);
    v214 = *(v0 + 2232);
    v215 = *(v0 + 2208);
    v216 = *(v0 + 2184);
    v217 = *(v0 + 2176);
    *(v0 + 828) = *(sub_5708(&qword_81E10, &qword_70E58) + 48);
    sub_9878(v216, v0 + 1240);
    sub_9878(v214, v0 + 1328);
    *(v0 + 1304) = &type metadata for FeatureEnablementProvider;
    *(v0 + 1312) = &off_7F140;
    *(v0 + 1320) = v215;
    *(v0 + 1368) = v213;

    LOBYTE(v214) = sub_659BC(v217);
    v218 = swift_task_alloc();
    *(v0 + 2912) = v218;
    *v218 = v0;
    v218[1] = sub_5FDB4;
    v20 = *(v0 + 2224);
    v21 = *(v0 + 2216);
    v22 = *(v0 + 2200);
    v23 = *(v0 + 2192);
    v24 = *(v0 + 2176);
    v25 = *(v0 + 2160);
    v26 = v214 & 1;
    goto LABEL_9;
  }

  if (v9 == enum case for StatementOutcome.parameterCandidatesNotFound(_:))
  {
    v204 = *(v0 + 2832);
    v205 = *(v0 + 2568);
    v206 = *(v0 + 2544);
    v207 = *(v0 + 2536);
    v208 = *(v0 + 2504);
    v209 = *(v0 + 2176);
    (*(*(v0 + 2816) + 96))(v204, *(v0 + 2808));
    (*(v206 + 32))(v205, v204, v207);
    sub_6C4CC();
    v210 = sub_6C4AC();
    v211 = *(v210 - 8);
    if ((*(v211 + 48))(v208, 1, v210) == 1)
    {
      sub_5E20(*(v0 + 2504), &qword_817E0, &qword_71300);
    }

    else
    {
      v229 = *(v0 + 2824);
      v230 = *(v0 + 2816);
      v231 = *(v0 + 2528);
      v232 = *(v0 + 2520);
      v453 = *(v0 + 2808);
      v460 = *(v0 + 2512);
      v233 = *(v0 + 2504);
      v234 = *(v0 + 2176);
      sub_4B4CC(v229);
      sub_6C47C();
      (*(v230 + 8))(v229, v453);
      (*(v211 + 8))(v233, v210);
      LODWORD(v234) = (*(v232 + 88))(v231, v460);
      v235 = enum case for ResponseOutput.ResponseType.completion(_:);
      (*(v232 + 8))(v231, v460);
      if (v234 == v235)
      {
        (*(*(v0 + 2544) + 16))(*(v0 + 2560), *(v0 + 2568), *(v0 + 2536));
        v236 = sub_6D03C();
        v237 = sub_6D44C();
        v238 = os_log_type_enabled(v236, v237);
        v239 = *(v0 + 2560);
        v240 = *(v0 + 2544);
        v241 = *(v0 + 2536);
        if (v238)
        {
          v242 = swift_slowAlloc();
          v243 = swift_slowAlloc();
          v468[0] = v243;
          *v242 = 136315138;
          v461 = sub_6C96C();
          v245 = v244;
          v248 = *(v240 + 8);
          v247 = v240 + 8;
          v246 = v248;
          v248(v239, v241);
          v249 = sub_1076C(v461, v245, v468);

          *(v242 + 4) = v249;
          _os_log_impl(&dword_0, v236, v237, "IFFlow publishing parameterCandidatesNotFound error output for %s", v242, 0xCu);
          sub_9964(v243);
        }

        else
        {

          v306 = *(v240 + 8);
          v247 = v240 + 8;
          v246 = v306;
          v306(v239, v241);
        }

        *(v0 + 2944) = v246;
        *(v0 + 2936) = v247;
        v307 = *(v0 + 145);
        v308 = *(v0 + 2232);
        v309 = *(v0 + 2208);
        v310 = *(v0 + 2176);
        sub_9878(*(v0 + 2184), v0 + 968);
        sub_9878(v308, v0 + 1056);
        *(v0 + 1032) = &type metadata for FeatureEnablementProvider;
        *(v0 + 1040) = &off_7F140;
        *(v0 + 1048) = v309;
        *(v0 + 1096) = v307;

        LOBYTE(v308) = sub_659BC(v310);
        v311 = swift_task_alloc();
        *(v0 + 2952) = v311;
        *v311 = v0;
        v311[1] = sub_60510;
        v20 = *(v0 + 2224);
        v21 = *(v0 + 2216);
        v22 = *(v0 + 2200);
        v23 = *(v0 + 2192);
        v24 = *(v0 + 2176);
        v25 = v0 + 2080;
        v26 = v308 & 1;
        goto LABEL_9;
      }
    }

    (*(*(v0 + 2544) + 16))(*(v0 + 2552), *(v0 + 2568), *(v0 + 2536));
    v250 = sub_6D03C();
    v251 = sub_6D44C();
    v252 = os_log_type_enabled(v250, v251);
    v253 = *(v0 + 2552);
    v254 = *(v0 + 2544);
    v255 = *(v0 + 2536);
    if (v252)
    {
      v256 = swift_slowAlloc();
      v257 = swift_slowAlloc();
      v468[0] = v257;
      *v256 = 136315138;
      v462 = sub_6C96C();
      v259 = v258;
      v262 = *(v254 + 8);
      v261 = v254 + 8;
      v260 = v262;
      v262(v253, v255);
      v263 = sub_1076C(v462, v259, v468);

      *(v256 + 4) = v263;
      _os_log_impl(&dword_0, v250, v251, "IFFlow pushing needsValue flow for %s", v256, 0xCu);
      sub_9964(v257);
    }

    else
    {

      v278 = *(v254 + 8);
      v261 = v254 + 8;
      v260 = v278;
      v278(v253, v255);
    }

    *(v0 + 2968) = v260;
    *(v0 + 2960) = v261;
    v279 = *(v0 + 145);
    v280 = *(v0 + 2232);
    v281 = *(v0 + 2208);
    v282 = *(v0 + 2184);
    v283 = *(v0 + 2176);
    *(v0 + 1100) = *(sub_5708(&qword_81E10, &qword_70E58) + 48);
    sub_9878(v282, v0 + 832);
    sub_9878(v280, v0 + 920);
    *(v0 + 896) = &type metadata for FeatureEnablementProvider;
    *(v0 + 904) = &off_7F140;
    *(v0 + 912) = v281;
    *(v0 + 960) = v279;

    LOBYTE(v280) = sub_659BC(v283);
    v284 = swift_task_alloc();
    *(v0 + 2976) = v284;
    *v284 = v0;
    v284[1] = sub_608B0;
    v20 = *(v0 + 2224);
    v21 = *(v0 + 2216);
    v22 = *(v0 + 2200);
    v23 = *(v0 + 2192);
    v24 = *(v0 + 2176);
    v25 = *(v0 + 2160);
    v26 = v280 & 1;
LABEL_9:

    return sub_14D74(v25, v24, v23, v22, v21, v20, v26);
  }

  if (v9 == enum case for StatementOutcome.actionRequirement(_:))
  {
    v219 = *(v0 + 2832);
    v220 = *(v0 + 2296);
    v221 = *(v0 + 2288);
    v222 = *(v0 + 2280);
    v223 = *(v0 + 145);
    v224 = *(v0 + 2232);
    v225 = *(v0 + 2208);
    v226 = *(v0 + 2184);
    v227 = *(v0 + 2176);
    (*(*(v0 + 2816) + 96))(v219, *(v0 + 2808));
    (*(v221 + 32))(v220, v219, v222);
    sub_9878(v226, v0 + 16);
    sub_9878(v224, v0 + 104);
    *(v0 + 80) = &type metadata for FeatureEnablementProvider;
    *(v0 + 88) = &off_7F140;
    *(v0 + 96) = v225;
    *(v0 + 144) = v223;

    LOBYTE(v219) = sub_659BC(v227);
    v228 = swift_task_alloc();
    *(v0 + 3056) = v228;
    *v228 = v0;
    v228[1] = sub_61F10;
    v20 = *(v0 + 2224);
    v21 = *(v0 + 2216);
    v22 = *(v0 + 2200);
    v23 = *(v0 + 2192);
    v24 = *(v0 + 2176);
    v25 = v0 + 1920;
    v26 = v219 & 1;
    goto LABEL_9;
  }

  if (v9 == enum case for StatementOutcome.valueDisambiguation(_:))
  {
    v264 = *(v0 + 2832);
    v265 = *(v0 + 2472);
    v266 = *(v0 + 2464);
    v267 = *(v0 + 2456);
    (*(*(v0 + 2816) + 96))(v264, *(v0 + 2808));
    (*(v266 + 32))(v265, v264, v267);
    v268 = sub_6D03C();
    v269 = sub_6D44C();
    if (os_log_type_enabled(v268, v269))
    {
      v270 = swift_slowAlloc();
      *v270 = 0;
      _os_log_impl(&dword_0, v268, v269, "IFFlow pushing value Disambiguation flow", v270, 2u);
    }

    v271 = *(v0 + 2472);
    v272 = *(v0 + 145);
    v273 = *(v0 + 2232);
    v274 = *(v0 + 2208);
    v275 = *(v0 + 2184);
    v276 = *(v0 + 2176);

    *(v0 + 3000) = *(sub_6C7BC() + 16);

    *(v0 + 1372) = *(sub_5708(&qword_81DC0, &qword_70E30) + 64);
    sub_9878(v275, v0 + 560);
    sub_9878(v273, v0 + 648);
    *(v0 + 624) = &type metadata for FeatureEnablementProvider;
    *(v0 + 632) = &off_7F140;
    *(v0 + 640) = v274;
    *(v0 + 688) = v272;

    LOBYTE(v271) = sub_659BC(v276);
    v277 = swift_task_alloc();
    *(v0 + 3008) = v277;
    *v277 = v0;
    v277[1] = sub_60FF8;
    v20 = *(v0 + 2224);
    v21 = *(v0 + 2216);
    v22 = *(v0 + 2200);
    v23 = *(v0 + 2192);
    v24 = *(v0 + 2176);
    v25 = *(v0 + 2160);
    v26 = v271 & 1;
    goto LABEL_9;
  }

  if (v9 == enum case for StatementOutcome.failure(_:))
  {
    v285 = *(v0 + 2832);
    v286 = *(v0 + 2448);
    v287 = *(v0 + 2408);
    v288 = *(v0 + 2400);
    v289 = *(v0 + 2392);
    v290 = *(v0 + 2384);
    v291 = *(v0 + 2376);
    (*(*(v0 + 2816) + 96))(v285, *(v0 + 2808));
    v292 = *(v287 + 32);
    *(v0 + 3016) = v292;
    *(v0 + 3024) = (v287 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v292(v286, v285, v288);
    sub_6BF5C();
    v293 = (*(v290 + 88))(v289, v291);
    if (v293 == enum case for ActionFailure.Failure.developerDefinedError(_:))
    {
      v294 = *(*(v0 + 2408) + 16);
      v294(*(v0 + 2424), *(v0 + 2448), *(v0 + 2400));
      v295 = sub_6D03C();
      v296 = sub_6D44C();
      if (os_log_type_enabled(v295, v296))
      {
        v297 = *(v0 + 2432);
        v298 = *(v0 + 2424);
        v299 = *(v0 + 2408);
        v300 = *(v0 + 2400);
        v301 = swift_slowAlloc();
        v463 = swift_slowAlloc();
        v468[0] = v463;
        *v301 = 136315138;
        v294(v297, v298, v300);
        v302 = sub_6D2EC();
        v304 = v303;
        (*(v299 + 8))(v298, v300);
        v305 = sub_1076C(v302, v304, v468);

        *(v301 + 4) = v305;
        _os_log_impl(&dword_0, v295, v296, "IFFlow received developer defined error. Producing output for %s", v301, 0xCu);
        sub_9964(v463);
      }

      else
      {
        v350 = *(v0 + 2424);
        v351 = *(v0 + 2408);
        v352 = *(v0 + 2400);

        (*(v351 + 8))(v350, v352);
      }

      v353 = *(v0 + 145);
      v354 = *(v0 + 2232);
      v355 = *(v0 + 2208);
      v356 = *(v0 + 2176);
      sub_9878(*(v0 + 2184), v0 + 288);
      sub_9878(v354, v0 + 376);
      *(v0 + 352) = &type metadata for FeatureEnablementProvider;
      *(v0 + 360) = &off_7F140;
      *(v0 + 368) = v355;
      *(v0 + 416) = v353;

      LOBYTE(v354) = sub_659BC(v356);
      v357 = swift_task_alloc();
      *(v0 + 3040) = v357;
      *v357 = v0;
      v357[1] = sub_61750;
      v20 = *(v0 + 2224);
      v21 = *(v0 + 2216);
      v22 = *(v0 + 2200);
      v23 = *(v0 + 2192);
      v24 = *(v0 + 2176);
      v25 = v0 + 2000;
      v26 = v354 & 1;
      goto LABEL_9;
    }

    if (v293 == enum case for ActionFailure.Failure.unableToHandleRequest(_:))
    {
      v325 = *(v0 + 2392);
      v326 = *(v0 + 2320);
      v327 = *(v0 + 2312);
      v328 = *(v0 + 2304);
      (*(*(v0 + 2384) + 96))(v325, *(v0 + 2376));
      (*(v327 + 32))(v326, v325, v328);
      v329 = sub_6D03C();
      v330 = sub_6D46C();
      if (os_log_type_enabled(v329, v330))
      {
        v331 = swift_slowAlloc();
        *v331 = 0;
        _os_log_impl(&dword_0, v329, v330, "IntelligenceFlow couldn't handle the request, falling back to SiriX.", v331, 2u);
      }

      v332 = *(v0 + 2408);
      v448 = *(v0 + 2400);
      v454 = *(v0 + 2448);
      v333 = *(v0 + 2344);
      v334 = *(v0 + 2336);
      v335 = *(v0 + 2328);
      v336 = *(v0 + 2320);
      v337 = *(v0 + 2312);
      v464 = *(v0 + 2304);
      v338 = *(v0 + 2160);

      *(swift_task_alloc() + 16) = v336;
      sub_65FB0(&qword_81510, &type metadata accessor for SiriXRedirectContext);
      sub_6BE5C();

      (*(v332 + 8))(v454, v448);
      (*(v334 + 32))(v338, v333, v335);
      type metadata accessor for FlowAction(0);
      swift_storeEnumTagMultiPayload();
      (*(v337 + 8))(v336, v464);
      goto LABEL_16;
    }

    if (v293 == enum case for ActionFailure.Failure.noMatchingTool(_:))
    {
      v358 = sub_6D03C();
      v359 = sub_6D46C();
      if (os_log_type_enabled(v358, v359))
      {
        v360 = swift_slowAlloc();
        *v360 = 0;
        _os_log_impl(&dword_0, v358, v359, "IntelligenceFlow couldn't find any matching tools, falling back to SiriX", v360, 2u);
      }

      v361 = *(v0 + 2408);
      v449 = *(v0 + 2400);
      v455 = *(v0 + 2448);
      v362 = *(v0 + 2368);
      v465 = *(v0 + 2360);
      v363 = *(v0 + 2352);
      v364 = *(v0 + 2344);
      v365 = *(v0 + 2336);
      v366 = *(v0 + 2328);
      v445 = *(v0 + 2160);

      sub_65FB0(&qword_82228, &type metadata accessor for SiriXRedirectContext.RedirectReason.NoMatchingTool);
      sub_6BE6C();
      sub_6BE4C();

      *(swift_task_alloc() + 16) = v362;
      sub_65FB0(&qword_81510, &type metadata accessor for SiriXRedirectContext);
      sub_6BE5C();

      (*(v361 + 8))(v455, v449);
      (*(v365 + 32))(v445, v364, v366);
      type metadata accessor for FlowAction(0);
      swift_storeEnumTagMultiPayload();
      (*(v465 + 8))(v362, v363);
      goto LABEL_16;
    }

    if (v293 == enum case for ActionFailure.Failure.actionCanceled(_:))
    {
      v367 = *(*(v0 + 2408) + 16);
      v367(*(v0 + 2440), *(v0 + 2448), *(v0 + 2400));
      v368 = sub_6D03C();
      v369 = sub_6D44C();
      v370 = os_log_type_enabled(v368, v369);
      v371 = *(v0 + 2440);
      if (v370)
      {
        v372 = *(v0 + 2432);
        v373 = *(v0 + 2408);
        v374 = *(v0 + 2400);
        v375 = swift_slowAlloc();
        v466 = swift_slowAlloc();
        v468[0] = v466;
        *v375 = 136315138;
        v367(v372, v371, v374);
        v376 = sub_6D2EC();
        v378 = v377;
        (*(v373 + 8))(v371, v374);
        v379 = sub_1076C(v376, v378, v468);

        *(v375 + 4) = v379;
        _os_log_impl(&dword_0, v368, v369, "IFFlow Publishing failure output for %s", v375, 0xCu);
        sub_9964(v466);
      }

      else
      {
        v387 = *(v0 + 2408);
        v388 = *(v0 + 2400);

        (*(v387 + 8))(v371, v388);
      }

      v389 = *(v0 + 145);
      v390 = *(v0 + 2232);
      v391 = *(v0 + 2208);
      v392 = *(v0 + 2176);
      sub_9878(*(v0 + 2184), v0 + 424);
      sub_9878(v390, v0 + 512);
      *(v0 + 488) = &type metadata for FeatureEnablementProvider;
      *(v0 + 496) = &off_7F140;
      *(v0 + 504) = v391;
      *(v0 + 552) = v389;

      LOBYTE(v390) = sub_659BC(v392);
      v393 = swift_task_alloc();
      *(v0 + 3032) = v393;
      *v393 = v0;
      v393[1] = sub_61394;
      v20 = *(v0 + 2224);
      v21 = *(v0 + 2216);
      v22 = *(v0 + 2200);
      v23 = *(v0 + 2192);
      v24 = *(v0 + 2176);
      v25 = v0 + 2040;
      v26 = v390 & 1;
      goto LABEL_9;
    }

    if (v293 == enum case for ActionFailure.Failure.searchSucceededNoMatchingTool(_:))
    {
      v380 = *(v0 + 2448);
      v381 = *(v0 + 2408);
      v382 = *(v0 + 2400);
      v383 = *(v0 + 2344);
      v384 = *(v0 + 2336);
      v385 = *(v0 + 2328);
      v386 = *(v0 + 2160);
      sub_65FB0(&qword_81510, &type metadata accessor for SiriXRedirectContext);
      sub_6BE5C();
      (*(v381 + 8))(v380, v382);
      (*(v384 + 32))(v386, v383, v385);
      type metadata accessor for FlowAction(0);
    }

    else
    {
      if (v293 != enum case for ActionFailure.Failure.valueSelectionRequired(_:))
      {
        v402 = *(*(v0 + 2408) + 16);
        v402(*(v0 + 2416), *(v0 + 2448), *(v0 + 2400));
        v403 = sub_6D03C();
        v404 = sub_6D46C();
        if (os_log_type_enabled(v403, v404))
        {
          v405 = *(v0 + 2432);
          v406 = *(v0 + 2416);
          v407 = *(v0 + 2408);
          v408 = *(v0 + 2400);
          v409 = swift_slowAlloc();
          v467 = swift_slowAlloc();
          v468[0] = v467;
          *v409 = 136315138;
          v402(v405, v406, v408);
          v410 = sub_6D2EC();
          v412 = v411;
          (*(v407 + 8))(v406, v408);
          v413 = sub_1076C(v410, v412, v468);

          *(v409 + 4) = v413;
          _os_log_impl(&dword_0, v403, v404, "IFFlow received unsupported failure %s", v409, 0xCu);
          sub_9964(v467);
        }

        else
        {
          v414 = *(v0 + 2416);
          v415 = *(v0 + 2408);
          v416 = *(v0 + 2400);

          (*(v415 + 8))(v414, v416);
        }

        v417 = *(v0 + 145);
        v418 = *(v0 + 2232);
        v419 = *(v0 + 2208);
        v420 = *(v0 + 2176);
        sub_9878(*(v0 + 2184), v0 + 152);
        sub_9878(v418, v0 + 240);
        *(v0 + 216) = &type metadata for FeatureEnablementProvider;
        *(v0 + 224) = &off_7F140;
        *(v0 + 232) = v419;
        *(v0 + 280) = v417;

        LOBYTE(v418) = sub_659BC(v420);
        v421 = swift_task_alloc();
        *(v0 + 3048) = v421;
        *v421 = v0;
        v421[1] = sub_61B30;
        v20 = *(v0 + 2224);
        v21 = *(v0 + 2216);
        v22 = *(v0 + 2200);
        v23 = *(v0 + 2192);
        v24 = *(v0 + 2176);
        v25 = v0 + 1960;
        v26 = v418 & 1;
        goto LABEL_9;
      }

      v394 = sub_6D03C();
      v395 = sub_6D46C();
      if (os_log_type_enabled(v394, v395))
      {
        v396 = swift_slowAlloc();
        *v396 = 0;
        _os_log_impl(&dword_0, v394, v395, "IntelligenceFlow couldn't handle the request due to .valueSelectionRequired, falling back to SiriX.", v396, 2u);
      }

      v397 = *(v0 + 2448);
      v398 = *(v0 + 2408);
      v399 = *(v0 + 2400);
      v400 = *(v0 + 2328);
      v401 = *(v0 + 2160);

      sub_65FB0(&qword_81510, &type metadata accessor for SiriXRedirectContext);
      sub_6BE5C();
      (*(v398 + 8))(v397, v399);
      type metadata accessor for FlowAction(0);
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(*(v0 + 2248) + 16))(*(v0 + 2256), *(v0 + 2176), *(v0 + 2240));
    v312 = sub_6D03C();
    v313 = sub_6D46C();
    if (os_log_type_enabled(v312, v313))
    {
      v314 = *(v0 + 2824);
      v315 = *(v0 + 2808);
      v316 = *(v0 + 2256);
      v317 = *(v0 + 2248);
      v318 = *(v0 + 2240);
      v319 = swift_slowAlloc();
      v320 = swift_slowAlloc();
      v468[0] = v320;
      *v319 = 136315138;
      sub_4B4CC(v314);
      v321 = sub_6D2EC();
      v323 = v322;
      (*(v317 + 8))(v316, v318);
      v324 = sub_1076C(v321, v323, v468);

      *(v319 + 4) = v324;
      _os_log_impl(&dword_0, v312, v313, "IFFlow received unsupported outcomeType %s", v319, 0xCu);
      sub_9964(v320);
    }

    else
    {
      v339 = *(v0 + 2256);
      v340 = *(v0 + 2248);
      v341 = *(v0 + 2240);

      (*(v340 + 8))(v339, v341);
    }

    v342 = *(v0 + 2832);
    v343 = *(v0 + 2816);
    v344 = *(v0 + 2808);
    v345 = *(v0 + 2272);
    v346 = *(v0 + 2264);
    v347 = *(v0 + 2168);
    v348 = *(v0 + 2160);
    v349 = sub_6C83C();
    (*(*(v349 - 8) + 16))(v345, v347, v349);
    swift_storeEnumTagMultiPayload();
    sub_66050(v345, v348, type metadata accessor for IFFlowError);
    type metadata accessor for FlowAction.ExitValue(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for FlowAction(0);
    swift_storeEnumTagMultiPayload();
    (*(v343 + 8))(v342, v344);
  }

LABEL_16:
  v39 = *(v0 + 2832);
  v40 = *(v0 + 2824);
  v41 = *(v0 + 2800);
  v42 = *(v0 + 2776);
  v43 = *(v0 + 2752);
  v44 = *(v0 + 2744);
  v45 = *(v0 + 2736);
  v46 = *(v0 + 2712);
  v47 = *(v0 + 2688);
  v48 = *(v0 + 2680);
  v422 = *(v0 + 2656);
  v423 = *(v0 + 2648);
  v424 = *(v0 + 2624);
  v425 = *(v0 + 2600);
  v426 = *(v0 + 2592);
  v427 = *(v0 + 2568);
  v428 = *(v0 + 2560);
  v429 = *(v0 + 2552);
  v430 = *(v0 + 2528);
  v431 = *(v0 + 2504);
  v432 = *(v0 + 2496);
  v433 = *(v0 + 2472);
  v434 = *(v0 + 2448);
  v435 = *(v0 + 2440);
  v436 = *(v0 + 2432);
  v437 = *(v0 + 2424);
  v438 = *(v0 + 2416);
  v439 = *(v0 + 2392);
  v440 = *(v0 + 2368);
  v441 = *(v0 + 2344);
  v443 = *(v0 + 2320);
  v446 = *(v0 + 2296);
  v450 = *(v0 + 2272);
  v456 = *(v0 + 2256);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_5EF08()
{
  v1 = *v0;
  v2 = *(*v0 + 2840);
  v4 = *v0;

  sub_65E88(v1 + 1784);

  return _swift_task_switch(sub_5F00C, 0, 0);
}

uint64_t sub_5F00C()
{
  v1 = *(v0 + 2832);
  v2 = *(v0 + 2816);
  v3 = *(v0 + 2808);
  sub_1FD68((v0 + 2120), *(v0 + 2160));
  type metadata accessor for FlowAction.ExitValue(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for FlowAction(0);
  swift_storeEnumTagMultiPayload();
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 2832);
  v5 = *(v0 + 2824);
  v6 = *(v0 + 2800);
  v7 = *(v0 + 2776);
  v8 = *(v0 + 2752);
  v9 = *(v0 + 2744);
  v10 = *(v0 + 2736);
  v11 = *(v0 + 2712);
  v12 = *(v0 + 2688);
  v13 = *(v0 + 2680);
  v16 = *(v0 + 2656);
  v17 = *(v0 + 2648);
  v18 = *(v0 + 2624);
  v19 = *(v0 + 2600);
  v20 = *(v0 + 2592);
  v21 = *(v0 + 2568);
  v22 = *(v0 + 2560);
  v23 = *(v0 + 2552);
  v24 = *(v0 + 2528);
  v25 = *(v0 + 2504);
  v26 = *(v0 + 2496);
  v27 = *(v0 + 2472);
  v28 = *(v0 + 2448);
  v29 = *(v0 + 2440);
  v30 = *(v0 + 2432);
  v31 = *(v0 + 2424);
  v32 = *(v0 + 2416);
  v33 = *(v0 + 2392);
  v34 = *(v0 + 2368);
  v35 = *(v0 + 2344);
  v36 = *(v0 + 2320);
  v37 = *(v0 + 2296);
  v38 = *(v0 + 2272);
  v39 = *(v0 + 2256);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_5F2B0()
{
  v1 = *v0;
  v2 = *(*v0 + 2864);
  v4 = *v0;

  sub_65E88(v1 + 1648);

  return _swift_task_switch(sub_5F3B4, 0, 0);
}

uint64_t sub_5F3B4()
{
  v47 = *(v0 + 284);
  v1 = *(v0 + 148);
  v2 = *(v0 + 2856);
  v3 = *(v0 + 2848);
  v45 = *(v0 + 146);
  v4 = *(v0 + 2800);
  v5 = *(v0 + 2792);
  v6 = *(v0 + 2784);
  v7 = *(v0 + 2744);
  v8 = *(v0 + 2720);
  v9 = *(v0 + 2176);
  v10 = *(v0 + 2160);
  sub_4B870();
  v3(v7, v8);
  (*(v5 + 8))(v4, v6);
  *(v10 + v47) = v45;
  type metadata accessor for FlowAction(0);
  swift_storeEnumTagMultiPayload();
  v11 = *(v0 + 2832);
  v12 = *(v0 + 2824);
  v13 = *(v0 + 2800);
  v14 = *(v0 + 2776);
  v15 = *(v0 + 2752);
  v16 = *(v0 + 2744);
  v17 = *(v0 + 2736);
  v18 = *(v0 + 2712);
  v19 = *(v0 + 2688);
  v20 = *(v0 + 2680);
  v23 = *(v0 + 2656);
  v24 = *(v0 + 2648);
  v25 = *(v0 + 2624);
  v26 = *(v0 + 2600);
  v27 = *(v0 + 2592);
  v28 = *(v0 + 2568);
  v29 = *(v0 + 2560);
  v30 = *(v0 + 2552);
  v31 = *(v0 + 2528);
  v32 = *(v0 + 2504);
  v33 = *(v0 + 2496);
  v34 = *(v0 + 2472);
  v35 = *(v0 + 2448);
  v36 = *(v0 + 2440);
  v37 = *(v0 + 2432);
  v38 = *(v0 + 2424);
  v39 = *(v0 + 2416);
  v40 = *(v0 + 2392);
  v41 = *(v0 + 2368);
  v42 = *(v0 + 2344);
  v43 = *(v0 + 2320);
  v44 = *(v0 + 2296);
  v46 = *(v0 + 2272);
  v48 = *(v0 + 2256);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_5F67C()
{
  v1 = *v0;
  v2 = *(*v0 + 2880);
  v4 = *v0;

  sub_65E88(v1 + 1512);

  return _swift_task_switch(sub_5F780, 0, 0);
}

uint64_t sub_5F780()
{
  v1 = *(v0 + 420);
  v2 = *(v0 + 2712);
  v3 = *(v0 + 2704);
  v4 = *(v0 + 2696);
  v5 = *(v0 + 2176);
  *(*(v0 + 2160) + 40) = *(v0 + 2872);
  sub_4B870();
  (*(v3 + 8))(v2, v4);
  type metadata accessor for FlowAction(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(v0 + 2832);
  v7 = *(v0 + 2824);
  v8 = *(v0 + 2800);
  v9 = *(v0 + 2776);
  v10 = *(v0 + 2752);
  v11 = *(v0 + 2744);
  v12 = *(v0 + 2736);
  v13 = *(v0 + 2712);
  v14 = *(v0 + 2688);
  v15 = *(v0 + 2680);
  v18 = *(v0 + 2656);
  v19 = *(v0 + 2648);
  v20 = *(v0 + 2624);
  v21 = *(v0 + 2600);
  v22 = *(v0 + 2592);
  v23 = *(v0 + 2568);
  v24 = *(v0 + 2560);
  v25 = *(v0 + 2552);
  v26 = *(v0 + 2528);
  v27 = *(v0 + 2504);
  v28 = *(v0 + 2496);
  v29 = *(v0 + 2472);
  v30 = *(v0 + 2448);
  v31 = *(v0 + 2440);
  v32 = *(v0 + 2432);
  v33 = *(v0 + 2424);
  v34 = *(v0 + 2416);
  v35 = *(v0 + 2392);
  v36 = *(v0 + 2368);
  v37 = *(v0 + 2344);
  v38 = *(v0 + 2320);
  v39 = *(v0 + 2296);
  v40 = *(v0 + 2272);
  v41 = *(v0 + 2256);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_5FA18()
{
  v1 = *v0;
  v2 = *(*v0 + 2888);
  v4 = *v0;

  sub_65E88(v1 + 1376);

  return _swift_task_switch(sub_5FB1C, 0, 0);
}

uint64_t sub_5FB1C()
{
  v1 = *(v0 + 692);
  v2 = *(v0 + 2832);
  v3 = *(v0 + 2816);
  v4 = *(v0 + 2808);
  v5 = *(v0 + 2176);
  v6 = *(v0 + 2160);
  v7 = v6 + *(v0 + 556);
  sub_4B870();
  *(v6 + v1) = 0;
  type metadata accessor for FlowAction(0);
  swift_storeEnumTagMultiPayload();
  (*(v3 + 8))(v2, v4);
  v8 = *(v0 + 2832);
  v9 = *(v0 + 2824);
  v10 = *(v0 + 2800);
  v11 = *(v0 + 2776);
  v12 = *(v0 + 2752);
  v13 = *(v0 + 2744);
  v14 = *(v0 + 2736);
  v15 = *(v0 + 2712);
  v16 = *(v0 + 2688);
  v17 = *(v0 + 2680);
  v20 = *(v0 + 2656);
  v21 = *(v0 + 2648);
  v22 = *(v0 + 2624);
  v23 = *(v0 + 2600);
  v24 = *(v0 + 2592);
  v25 = *(v0 + 2568);
  v26 = *(v0 + 2560);
  v27 = *(v0 + 2552);
  v28 = *(v0 + 2528);
  v29 = *(v0 + 2504);
  v30 = *(v0 + 2496);
  v31 = *(v0 + 2472);
  v32 = *(v0 + 2448);
  v33 = *(v0 + 2440);
  v34 = *(v0 + 2432);
  v35 = *(v0 + 2424);
  v36 = *(v0 + 2416);
  v37 = *(v0 + 2392);
  v38 = *(v0 + 2368);
  v39 = *(v0 + 2344);
  v40 = *(v0 + 2320);
  v41 = *(v0 + 2296);
  v42 = *(v0 + 2272);
  v43 = *(v0 + 2256);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_5FDB4()
{
  v1 = *v0;
  v2 = *(*v0 + 2912);
  v4 = *v0;

  sub_65E88(v1 + 1240);

  return _swift_task_switch(sub_5FEB8, 0, 0);
}

uint64_t sub_5FEB8()
{
  v1 = *(v0 + 828);
  v2 = *(v0 + 2904);
  v3 = *(v0 + 2896);
  v4 = *(v0 + 2688);
  v5 = *(v0 + 2664);
  v6 = *(v0 + 2176);
  v7 = *(v0 + 2160);
  type metadata accessor for PromptValue(0);
  swift_storeEnumTagMultiPayload();
  sub_4B870();
  v2(v4, v5);
  type metadata accessor for FlowAction(0);
  swift_storeEnumTagMultiPayload();
  v8 = *(v0 + 2832);
  v9 = *(v0 + 2824);
  v10 = *(v0 + 2800);
  v11 = *(v0 + 2776);
  v12 = *(v0 + 2752);
  v13 = *(v0 + 2744);
  v14 = *(v0 + 2736);
  v15 = *(v0 + 2712);
  v16 = *(v0 + 2688);
  v17 = *(v0 + 2680);
  v20 = *(v0 + 2656);
  v21 = *(v0 + 2648);
  v22 = *(v0 + 2624);
  v23 = *(v0 + 2600);
  v24 = *(v0 + 2592);
  v25 = *(v0 + 2568);
  v26 = *(v0 + 2560);
  v27 = *(v0 + 2552);
  v28 = *(v0 + 2528);
  v29 = *(v0 + 2504);
  v30 = *(v0 + 2496);
  v31 = *(v0 + 2472);
  v32 = *(v0 + 2448);
  v33 = *(v0 + 2440);
  v34 = *(v0 + 2432);
  v35 = *(v0 + 2424);
  v36 = *(v0 + 2416);
  v37 = *(v0 + 2392);
  v38 = *(v0 + 2368);
  v39 = *(v0 + 2344);
  v40 = *(v0 + 2320);
  v41 = *(v0 + 2296);
  v42 = *(v0 + 2272);
  v43 = *(v0 + 2256);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_60160()
{
  v1 = *v0;
  v2 = *(*v0 + 2928);
  v4 = *v0;

  sub_65E88(v1 + 1104);

  return _swift_task_switch(sub_60264, 0, 0);
}

uint64_t sub_60264()
{
  v1 = *(v0 + 964);
  v2 = *(v0 + 2920);
  v3 = *(v0 + 2656);
  v4 = *(v0 + 2640);
  v5 = *(v0 + 2632);
  v6 = *(v0 + 2176);
  v7 = *(v0 + 2160);
  type metadata accessor for PromptValue(0);
  swift_storeEnumTagMultiPayload();
  sub_4B870();
  v2(v3, v5);
  type metadata accessor for FlowAction(0);
  swift_storeEnumTagMultiPayload();
  v8 = *(v0 + 2832);
  v9 = *(v0 + 2824);
  v10 = *(v0 + 2800);
  v11 = *(v0 + 2776);
  v12 = *(v0 + 2752);
  v13 = *(v0 + 2744);
  v14 = *(v0 + 2736);
  v15 = *(v0 + 2712);
  v16 = *(v0 + 2688);
  v17 = *(v0 + 2680);
  v20 = *(v0 + 2656);
  v21 = *(v0 + 2648);
  v22 = *(v0 + 2624);
  v23 = *(v0 + 2600);
  v24 = *(v0 + 2592);
  v25 = *(v0 + 2568);
  v26 = *(v0 + 2560);
  v27 = *(v0 + 2552);
  v28 = *(v0 + 2528);
  v29 = *(v0 + 2504);
  v30 = *(v0 + 2496);
  v31 = *(v0 + 2472);
  v32 = *(v0 + 2448);
  v33 = *(v0 + 2440);
  v34 = *(v0 + 2432);
  v35 = *(v0 + 2424);
  v36 = *(v0 + 2416);
  v37 = *(v0 + 2392);
  v38 = *(v0 + 2368);
  v39 = *(v0 + 2344);
  v40 = *(v0 + 2320);
  v41 = *(v0 + 2296);
  v42 = *(v0 + 2272);
  v43 = *(v0 + 2256);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_60510()
{
  v1 = *v0;
  v2 = *(*v0 + 2952);
  v4 = *v0;

  sub_65E88(v1 + 968);

  return _swift_task_switch(sub_60614, 0, 0);
}

uint64_t sub_60614()
{
  v1 = *(v0 + 2936);
  v2 = *(v0 + 2160);
  (*(v0 + 2944))(*(v0 + 2568), *(v0 + 2536));
  sub_1FD68((v0 + 2080), v2);
  type metadata accessor for FlowAction.ExitValue(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for FlowAction(0);
  swift_storeEnumTagMultiPayload();
  v3 = *(v0 + 2832);
  v4 = *(v0 + 2824);
  v5 = *(v0 + 2800);
  v6 = *(v0 + 2776);
  v7 = *(v0 + 2752);
  v8 = *(v0 + 2744);
  v9 = *(v0 + 2736);
  v10 = *(v0 + 2712);
  v11 = *(v0 + 2688);
  v12 = *(v0 + 2680);
  v15 = *(v0 + 2656);
  v16 = *(v0 + 2648);
  v17 = *(v0 + 2624);
  v18 = *(v0 + 2600);
  v19 = *(v0 + 2592);
  v20 = *(v0 + 2568);
  v21 = *(v0 + 2560);
  v22 = *(v0 + 2552);
  v23 = *(v0 + 2528);
  v24 = *(v0 + 2504);
  v25 = *(v0 + 2496);
  v26 = *(v0 + 2472);
  v27 = *(v0 + 2448);
  v28 = *(v0 + 2440);
  v29 = *(v0 + 2432);
  v30 = *(v0 + 2424);
  v31 = *(v0 + 2416);
  v32 = *(v0 + 2392);
  v33 = *(v0 + 2368);
  v34 = *(v0 + 2344);
  v35 = *(v0 + 2320);
  v36 = *(v0 + 2296);
  v37 = *(v0 + 2272);
  v38 = *(v0 + 2256);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_608B0()
{
  v1 = *v0;
  v2 = *(*v0 + 2976);
  v4 = *v0;

  sub_65E88(v1 + 832);

  return _swift_task_switch(sub_609B4, 0, 0);
}

uint64_t sub_609B4()
{
  v1 = *(v0 + 1100);
  v2 = *(v0 + 2968);
  v3 = *(v0 + 2960);
  v4 = *(v0 + 2568);
  v5 = *(v0 + 2536);
  v6 = *(v0 + 2176);
  v7 = *(v0 + 2160);
  type metadata accessor for PromptValue(0);
  swift_storeEnumTagMultiPayload();
  sub_4B870();
  v2(v4, v5);
  type metadata accessor for FlowAction(0);
  swift_storeEnumTagMultiPayload();
  v8 = *(v0 + 2832);
  v9 = *(v0 + 2824);
  v10 = *(v0 + 2800);
  v11 = *(v0 + 2776);
  v12 = *(v0 + 2752);
  v13 = *(v0 + 2744);
  v14 = *(v0 + 2736);
  v15 = *(v0 + 2712);
  v16 = *(v0 + 2688);
  v17 = *(v0 + 2680);
  v20 = *(v0 + 2656);
  v21 = *(v0 + 2648);
  v22 = *(v0 + 2624);
  v23 = *(v0 + 2600);
  v24 = *(v0 + 2592);
  v25 = *(v0 + 2568);
  v26 = *(v0 + 2560);
  v27 = *(v0 + 2552);
  v28 = *(v0 + 2528);
  v29 = *(v0 + 2504);
  v30 = *(v0 + 2496);
  v31 = *(v0 + 2472);
  v32 = *(v0 + 2448);
  v33 = *(v0 + 2440);
  v34 = *(v0 + 2432);
  v35 = *(v0 + 2424);
  v36 = *(v0 + 2416);
  v37 = *(v0 + 2392);
  v38 = *(v0 + 2368);
  v39 = *(v0 + 2344);
  v40 = *(v0 + 2320);
  v41 = *(v0 + 2296);
  v42 = *(v0 + 2272);
  v43 = *(v0 + 2256);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_60C5C()
{
  v1 = *v0;
  v2 = *(*v0 + 2992);
  v4 = *v0;

  sub_65E88(v1 + 696);

  return _swift_task_switch(sub_60D60, 0, 0);
}

uint64_t sub_60D60()
{
  v1 = *(v0 + 1236);
  v2 = *(v0 + 2496);
  v3 = *(v0 + 2488);
  v4 = *(v0 + 2480);
  v5 = *(v0 + 2176);
  *(*(v0 + 2160) + 40) = *(v0 + 2984);
  sub_4B870();
  (*(v3 + 8))(v2, v4);
  type metadata accessor for FlowAction(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(v0 + 2832);
  v7 = *(v0 + 2824);
  v8 = *(v0 + 2800);
  v9 = *(v0 + 2776);
  v10 = *(v0 + 2752);
  v11 = *(v0 + 2744);
  v12 = *(v0 + 2736);
  v13 = *(v0 + 2712);
  v14 = *(v0 + 2688);
  v15 = *(v0 + 2680);
  v18 = *(v0 + 2656);
  v19 = *(v0 + 2648);
  v20 = *(v0 + 2624);
  v21 = *(v0 + 2600);
  v22 = *(v0 + 2592);
  v23 = *(v0 + 2568);
  v24 = *(v0 + 2560);
  v25 = *(v0 + 2552);
  v26 = *(v0 + 2528);
  v27 = *(v0 + 2504);
  v28 = *(v0 + 2496);
  v29 = *(v0 + 2472);
  v30 = *(v0 + 2448);
  v31 = *(v0 + 2440);
  v32 = *(v0 + 2432);
  v33 = *(v0 + 2424);
  v34 = *(v0 + 2416);
  v35 = *(v0 + 2392);
  v36 = *(v0 + 2368);
  v37 = *(v0 + 2344);
  v38 = *(v0 + 2320);
  v39 = *(v0 + 2296);
  v40 = *(v0 + 2272);
  v41 = *(v0 + 2256);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_60FF8()
{
  v1 = *v0;
  v2 = *(*v0 + 3008);
  v4 = *v0;

  sub_65E88(v1 + 560);

  return _swift_task_switch(sub_610FC, 0, 0);
}

uint64_t sub_610FC()
{
  v1 = *(v0 + 1372);
  v2 = *(v0 + 2472);
  v3 = *(v0 + 2464);
  v4 = *(v0 + 2456);
  v5 = *(v0 + 2176);
  *(*(v0 + 2160) + 40) = *(v0 + 3000);
  sub_4B870();
  (*(v3 + 8))(v2, v4);
  type metadata accessor for FlowAction(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(v0 + 2832);
  v7 = *(v0 + 2824);
  v8 = *(v0 + 2800);
  v9 = *(v0 + 2776);
  v10 = *(v0 + 2752);
  v11 = *(v0 + 2744);
  v12 = *(v0 + 2736);
  v13 = *(v0 + 2712);
  v14 = *(v0 + 2688);
  v15 = *(v0 + 2680);
  v18 = *(v0 + 2656);
  v19 = *(v0 + 2648);
  v20 = *(v0 + 2624);
  v21 = *(v0 + 2600);
  v22 = *(v0 + 2592);
  v23 = *(v0 + 2568);
  v24 = *(v0 + 2560);
  v25 = *(v0 + 2552);
  v26 = *(v0 + 2528);
  v27 = *(v0 + 2504);
  v28 = *(v0 + 2496);
  v29 = *(v0 + 2472);
  v30 = *(v0 + 2448);
  v31 = *(v0 + 2440);
  v32 = *(v0 + 2432);
  v33 = *(v0 + 2424);
  v34 = *(v0 + 2416);
  v35 = *(v0 + 2392);
  v36 = *(v0 + 2368);
  v37 = *(v0 + 2344);
  v38 = *(v0 + 2320);
  v39 = *(v0 + 2296);
  v40 = *(v0 + 2272);
  v41 = *(v0 + 2256);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_61394()
{
  v1 = *v0;
  v2 = *(*v0 + 3032);
  v4 = *v0;

  sub_65E88(v1 + 424);

  return _swift_task_switch(sub_61498, 0, 0);
}

uint64_t sub_61498()
{
  v1 = *(v0 + 3024);
  v2 = *(v0 + 3016);
  v3 = *(v0 + 2448);
  v4 = *(v0 + 2400);
  v5 = *(v0 + 2160);
  v6 = *(sub_5708(&qword_81E50, &qword_70E78) + 48);
  sub_1FD68((v0 + 2040), v5);
  v2(v5 + v6, v3, v4);
  type metadata accessor for FlowAction.ExitValue(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for FlowAction(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(v0 + 2832);
  v8 = *(v0 + 2824);
  v9 = *(v0 + 2800);
  v10 = *(v0 + 2776);
  v11 = *(v0 + 2752);
  v12 = *(v0 + 2744);
  v13 = *(v0 + 2736);
  v14 = *(v0 + 2712);
  v15 = *(v0 + 2688);
  v16 = *(v0 + 2680);
  v19 = *(v0 + 2656);
  v20 = *(v0 + 2648);
  v21 = *(v0 + 2624);
  v22 = *(v0 + 2600);
  v23 = *(v0 + 2592);
  v24 = *(v0 + 2568);
  v25 = *(v0 + 2560);
  v26 = *(v0 + 2552);
  v27 = *(v0 + 2528);
  v28 = *(v0 + 2504);
  v29 = *(v0 + 2496);
  v30 = *(v0 + 2472);
  v31 = *(v0 + 2448);
  v32 = *(v0 + 2440);
  v33 = *(v0 + 2432);
  v34 = *(v0 + 2424);
  v35 = *(v0 + 2416);
  v36 = *(v0 + 2392);
  v37 = *(v0 + 2368);
  v38 = *(v0 + 2344);
  v39 = *(v0 + 2320);
  v40 = *(v0 + 2296);
  v41 = *(v0 + 2272);
  v42 = *(v0 + 2256);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_61750()
{
  v1 = *v0;
  v2 = *(*v0 + 3040);
  v4 = *v0;

  sub_65E88(v1 + 288);

  return _swift_task_switch(sub_61854, 0, 0);
}

uint64_t sub_61854()
{
  v1 = *(v0 + 3024);
  v2 = *(v0 + 3016);
  v3 = *(v0 + 2448);
  v4 = *(v0 + 2400);
  v5 = *(v0 + 2392);
  v6 = *(v0 + 2384);
  v7 = *(v0 + 2376);
  v8 = *(v0 + 2160);
  v9 = *(sub_5708(&qword_81E50, &qword_70E78) + 48);
  sub_1FD68((v0 + 2000), v8);
  v2(v8 + v9, v3, v4);
  type metadata accessor for FlowAction.ExitValue(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for FlowAction(0);
  swift_storeEnumTagMultiPayload();
  (*(v6 + 8))(v5, v7);
  v10 = *(v0 + 2832);
  v11 = *(v0 + 2824);
  v12 = *(v0 + 2800);
  v13 = *(v0 + 2776);
  v14 = *(v0 + 2752);
  v15 = *(v0 + 2744);
  v16 = *(v0 + 2736);
  v17 = *(v0 + 2712);
  v18 = *(v0 + 2688);
  v19 = *(v0 + 2680);
  v22 = *(v0 + 2656);
  v23 = *(v0 + 2648);
  v24 = *(v0 + 2624);
  v25 = *(v0 + 2600);
  v26 = *(v0 + 2592);
  v27 = *(v0 + 2568);
  v28 = *(v0 + 2560);
  v29 = *(v0 + 2552);
  v30 = *(v0 + 2528);
  v31 = *(v0 + 2504);
  v32 = *(v0 + 2496);
  v33 = *(v0 + 2472);
  v34 = *(v0 + 2448);
  v35 = *(v0 + 2440);
  v36 = *(v0 + 2432);
  v37 = *(v0 + 2424);
  v38 = *(v0 + 2416);
  v39 = *(v0 + 2392);
  v40 = *(v0 + 2368);
  v41 = *(v0 + 2344);
  v42 = *(v0 + 2320);
  v43 = *(v0 + 2296);
  v44 = *(v0 + 2272);
  v45 = *(v0 + 2256);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_61B30()
{
  v1 = *v0;
  v2 = *(*v0 + 3048);
  v4 = *v0;

  sub_65E88(v1 + 152);

  return _swift_task_switch(sub_61C34, 0, 0);
}

uint64_t sub_61C34()
{
  v1 = *(v0 + 3024);
  v2 = *(v0 + 3016);
  v3 = *(v0 + 2448);
  v4 = *(v0 + 2400);
  v5 = *(v0 + 2392);
  v6 = *(v0 + 2384);
  v7 = *(v0 + 2376);
  v8 = *(v0 + 2160);
  v9 = *(sub_5708(&qword_81E50, &qword_70E78) + 48);
  sub_1FD68((v0 + 1960), v8);
  v2(v8 + v9, v3, v4);
  type metadata accessor for FlowAction.ExitValue(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for FlowAction(0);
  swift_storeEnumTagMultiPayload();
  (*(v6 + 8))(v5, v7);
  v10 = *(v0 + 2832);
  v11 = *(v0 + 2824);
  v12 = *(v0 + 2800);
  v13 = *(v0 + 2776);
  v14 = *(v0 + 2752);
  v15 = *(v0 + 2744);
  v16 = *(v0 + 2736);
  v17 = *(v0 + 2712);
  v18 = *(v0 + 2688);
  v19 = *(v0 + 2680);
  v22 = *(v0 + 2656);
  v23 = *(v0 + 2648);
  v24 = *(v0 + 2624);
  v25 = *(v0 + 2600);
  v26 = *(v0 + 2592);
  v27 = *(v0 + 2568);
  v28 = *(v0 + 2560);
  v29 = *(v0 + 2552);
  v30 = *(v0 + 2528);
  v31 = *(v0 + 2504);
  v32 = *(v0 + 2496);
  v33 = *(v0 + 2472);
  v34 = *(v0 + 2448);
  v35 = *(v0 + 2440);
  v36 = *(v0 + 2432);
  v37 = *(v0 + 2424);
  v38 = *(v0 + 2416);
  v39 = *(v0 + 2392);
  v40 = *(v0 + 2368);
  v41 = *(v0 + 2344);
  v42 = *(v0 + 2320);
  v43 = *(v0 + 2296);
  v44 = *(v0 + 2272);
  v45 = *(v0 + 2256);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_61F10()
{
  v1 = *v0;
  v2 = *(*v0 + 3056);
  v4 = *v0;

  sub_65E88(v1 + 16);

  return _swift_task_switch(sub_62014, 0, 0);
}

uint64_t sub_62014()
{
  v1 = *(v0 + 2296);
  v2 = *(v0 + 2288);
  v3 = *(v0 + 2280);
  sub_633B0(*(v0 + 2168), *(v0 + 2176), v1, v0 + 1920, *(v0 + 2160));
  sub_9964((v0 + 1920));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 2832);
  v5 = *(v0 + 2824);
  v6 = *(v0 + 2800);
  v7 = *(v0 + 2776);
  v8 = *(v0 + 2752);
  v9 = *(v0 + 2744);
  v10 = *(v0 + 2736);
  v11 = *(v0 + 2712);
  v12 = *(v0 + 2688);
  v13 = *(v0 + 2680);
  v16 = *(v0 + 2656);
  v17 = *(v0 + 2648);
  v18 = *(v0 + 2624);
  v19 = *(v0 + 2600);
  v20 = *(v0 + 2592);
  v21 = *(v0 + 2568);
  v22 = *(v0 + 2560);
  v23 = *(v0 + 2552);
  v24 = *(v0 + 2528);
  v25 = *(v0 + 2504);
  v26 = *(v0 + 2496);
  v27 = *(v0 + 2472);
  v28 = *(v0 + 2448);
  v29 = *(v0 + 2440);
  v30 = *(v0 + 2432);
  v31 = *(v0 + 2424);
  v32 = *(v0 + 2416);
  v33 = *(v0 + 2392);
  v34 = *(v0 + 2368);
  v35 = *(v0 + 2344);
  v36 = *(v0 + 2320);
  v37 = *(v0 + 2296);
  v38 = *(v0 + 2272);
  v39 = *(v0 + 2256);

  v14 = *(v0 + 8);

  return v14();
}

BOOL sub_62298()
{
  v0 = sub_5708(&qword_82240, &unk_71438);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v25 - v2;
  v4 = sub_6BECC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_6D07C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v25 - v15;
  sub_6C08C();
  v17 = sub_6BEBC();
  (*(v5 + 8))(v8, v4);
  v25[1] = v17;
  sub_5708(&qword_813D0, qword_6FC50);
  v18 = swift_dynamicCast();
  v19 = *(v10 + 56);
  if (v18)
  {
    v19(v3, 0, 1, v9);
    v20 = *(v10 + 32);
    v20(v16, v3, v9);
    v20(v14, v16, v9);
    if ((*(v10 + 88))(v14, v9) == enum case for SessionError.plannerError(_:))
    {
      (*(v10 + 96))(v14, v9);
      v21 = sub_6D06C();
      v22 = *(v21 - 8);
      v23 = (*(v22 + 88))(v14, v21) == enum case for PlannerError.networkError(_:);
      (*(v22 + 8))(v14, v21);
      return v23;
    }

    (*(v10 + 8))(v14, v9);
  }

  else
  {
    v19(v3, 1, 1, v9);
    sub_5E20(v3, &qword_82240, &unk_71438);
  }

  return 0;
}

uint64_t sub_62614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_62638, 0, 0);
}

uint64_t sub_62638()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  sub_99FC(v1, v2);
  v4 = sub_26248(_swiftEmptyArrayStorage);
  v0[5] = v4;
  v5 = async function pointer to SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:action:executedParameters:submitEngagement:)[1];
  v6 = swift_task_alloc();
  v0[6] = v6;
  v7 = *(v3 + 8);
  *v6 = v0;
  v6[1] = sub_62714;
  v9 = v0[3];
  v8 = v0[4];

  return SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:action:executedParameters:submitEngagement:)(v9, v8, v4, 1, v2, v7);
}

uint64_t sub_62714()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_62850, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_62850()
{
  v1 = v0[5];

  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v3 = sub_6D04C();
  sub_5CE4(v3, qword_839A0);
  swift_errorRetain();
  v4 = sub_6D03C();
  v5 = sub_6D45C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_0, v4, v5, "IFFlow unable to donate to suggestions. error: %@", v8, 0xCu);
    sub_5E20(v9, &qword_81508, &unk_70260);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_629FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_5708(&qword_821F8, &qword_712F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_66178(a3, v27 - v11);
  v13 = sub_6D41C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_5E20(v12, &qword_821F8, &qword_712F0);
  }

  else
  {
    sub_6D40C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_6D3EC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_6D2FC() + 32;
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

      sub_5E20(a3, &qword_821F8, &qword_712F0);

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

  sub_5E20(a3, &qword_821F8, &qword_712F0);
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

uint64_t sub_62D04(uint64_t *a1, uint64_t a2)
{
  v4 = sub_5708(&qword_81518, &qword_70030);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  v8 = *a1;
  swift_getKeyPath();
  v9 = sub_6B0DC();
  (*(*(v9 - 8) + 16))(v7, a2, v9);
  v10 = enum case for SiriXRedirectContext.RedirectReason.noMatchingTool(_:);
  v11 = sub_6B10C();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v7, v10, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  return sub_6BE3C();
}

uint64_t sub_62E74(uint64_t *a1, uint64_t a2)
{
  v4 = sub_5708(&qword_81518, &qword_70030);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13[-v6];
  v8 = *a1;
  swift_getKeyPath();
  sub_6B0FC();
  v14 = a2;
  sub_65FB0(&qword_82230, &type metadata accessor for SiriXRedirectContext.RedirectReason.UnableToHandleRequest);
  sub_6BE5C();
  v9 = enum case for SiriXRedirectContext.RedirectReason.unableToHandle(_:);
  v10 = sub_6B10C();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v7, v9, v10);
  (*(v11 + 56))(v7, 0, 1, v10);
  return sub_6BE3C();
}

uint64_t sub_63028(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_6BF2C();
  return sub_6BE2C();
}

uint64_t sub_6308C(uint64_t *a1)
{
  v2 = sub_5708(&qword_81518, &qword_70030);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  v6 = *a1;
  swift_getKeyPath();
  v7 = enum case for SiriXRedirectContext.RedirectReason.valueSelectionRequired(_:);
  v8 = sub_6B10C();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v5, v7, v8);
  (*(v9 + 56))(v5, 0, 1, v8);
  return sub_6BE3C();
}

uint64_t sub_631BC(uint64_t *a1)
{
  v2 = sub_5708(&qword_81518, &qword_70030);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  v6 = *a1;
  swift_getKeyPath();
  sub_6B0DC();
  sub_65FB0(&qword_82228, &type metadata accessor for SiriXRedirectContext.RedirectReason.NoMatchingTool);
  sub_6BE5C();
  v7 = enum case for SiriXRedirectContext.RedirectReason.noMatchingTool(_:);
  v8 = sub_6B10C();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v5, v7, v8);
  (*(v9 + 56))(v5, 0, 1, v8);
  return sub_6BE3C();
}

uint64_t sub_63360(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  return sub_6BE2C();
}

uint64_t sub_633B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v99 = a1;
  v100 = a4;
  v97 = a2;
  v101 = a5;
  v94 = type metadata accessor for IFFlowError();
  v6 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v95 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6C5FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_6C55C();
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v93 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v92 = &v91 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v91 - v21;
  v23 = __chkstk_darwin(v20);
  v96 = &v91 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v91 - v26;
  __chkstk_darwin(v25);
  v29 = &v91 - v28;
  v30 = *(v14 + 16);
  v98 = a3;
  v31 = a3;
  v32 = v30;
  v30(&v91 - v28, v31, v13);
  v33 = (*(v14 + 88))(v29, v13);
  if (v33 == enum case for ActionRequirement.systemRequirement(_:))
  {
    (*(v14 + 96))(v29, v13);
    (*(v9 + 32))(v12, v29, v8);
    sub_63F78(v99, v97, v12, v100, v101);
    return (*(v9 + 8))(v12, v8);
  }

  else
  {
    v91 = v29;
    v97 = v13;
    if (v33 == enum case for ActionRequirement.appRequirement(_:))
    {
      v35 = v97;
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v36 = sub_6D04C();
      sub_5CE4(v36, qword_839A0);
      v32(v27, v98, v35);
      v37 = sub_6D03C();
      v38 = sub_6D45C();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v102 = v40;
        *v39 = 136315138;
        v32(v96, v27, v35);
        v41 = sub_6D2EC();
        v43 = v42;
        v44 = *(v14 + 8);
        v44(v27, v97);
        v45 = v41;
        v35 = v97;
        v46 = sub_1076C(v45, v43, &v102);

        *(v39 + 4) = v46;
        _os_log_impl(&dword_0, v37, v38, "IFFlow received appRequirement %s", v39, 0xCu);
        sub_9964(v40);
      }

      else
      {

        v44 = *(v14 + 8);
        v44(v27, v35);
      }

      v59 = v91;
      sub_9878(v100, v101);
      type metadata accessor for FlowAction.ExitValue(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for FlowAction(0);
      swift_storeEnumTagMultiPayload();
      return (v44)(v59, v35);
    }

    else
    {
      v47 = v97;
      v48 = v14;
      if (v33 == enum case for ActionRequirement.permissionsRequirement(_:))
      {
        if (qword_812A0 != -1)
        {
          swift_once();
        }

        v49 = sub_6D04C();
        sub_5CE4(v49, qword_839A0);
        v32(v22, v98, v47);
        v50 = sub_6D03C();
        v51 = sub_6D45C();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          v102 = v99;
          *v52 = 136315138;
          v32(v96, v22, v47);
          v53 = sub_6D2EC();
          v55 = v54;
          v56 = *(v14 + 8);
          v56(v22, v97);
          v57 = v53;
          v47 = v97;
          v58 = sub_1076C(v57, v55, &v102);

          *(v52 + 4) = v58;
          _os_log_impl(&dword_0, v50, v51, "IFFlow received permissionsRequirement %s", v52, 0xCu);
          sub_9964(v99);
        }

        else
        {

          v56 = *(v14 + 8);
          v56(v22, v47);
        }

        sub_9878(v100, v101);
        type metadata accessor for FlowAction.ExitValue(0);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for FlowAction(0);
        swift_storeEnumTagMultiPayload();
        return (v56)(v91, v47);
      }

      else if (v33 == enum case for ActionRequirement.unsupported(_:))
      {
        if (qword_812A0 != -1)
        {
          swift_once();
        }

        v60 = sub_6D04C();
        sub_5CE4(v60, qword_839A0);
        v61 = v92;
        v32(v92, v98, v47);
        v62 = sub_6D03C();
        v63 = v32;
        v64 = sub_6D45C();
        if (os_log_type_enabled(v62, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v102 = v66;
          *v65 = 136315138;
          v63(v96, v61, v47);
          v67 = sub_6D2EC();
          v68 = v47;
          v70 = v69;
          (*(v48 + 8))(v61, v68);
          v71 = sub_1076C(v67, v70, &v102);

          *(v65 + 4) = v71;
          _os_log_impl(&dword_0, v62, v64, "IFFlow received unsupported ActionRequirement %s", v65, 0xCu);
          sub_9964(v66);
        }

        else
        {

          (*(v14 + 8))(v61, v47);
        }

        v83 = v101;
        v84 = v99;
        v85 = sub_6C83C();
        v86 = v95;
        (*(*(v85 - 8) + 16))(v95, v84, v85);
        swift_storeEnumTagMultiPayload();
        sub_66050(v86, v83, type metadata accessor for IFFlowError);
        type metadata accessor for FlowAction.ExitValue(0);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for FlowAction(0);
        return swift_storeEnumTagMultiPayload();
      }

      else
      {
        if (qword_812A0 != -1)
        {
          swift_once();
        }

        v72 = sub_6D04C();
        sub_5CE4(v72, qword_839A0);
        v73 = v93;
        v32(v93, v98, v47);
        v74 = sub_6D03C();
        v75 = sub_6D45C();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v102 = v77;
          *v76 = 136315138;
          v32(v96, v73, v47);
          v78 = sub_6D2EC();
          v80 = v79;
          v81 = *(v14 + 8);
          v81(v73, v97);
          v82 = sub_1076C(v78, v80, &v102);
          v47 = v97;

          *(v76 + 4) = v82;
          _os_log_impl(&dword_0, v74, v75, "IFFlow received unsupported ActionRequirement %s", v76, 0xCu);
          sub_9964(v77);
        }

        else
        {

          v81 = *(v14 + 8);
          v81(v73, v47);
        }

        v87 = v101;
        v88 = v91;
        v89 = sub_6C83C();
        v90 = v95;
        (*(*(v89 - 8) + 16))(v95, v99, v89);
        swift_storeEnumTagMultiPayload();
        sub_66050(v90, v87, type metadata accessor for IFFlowError);
        type metadata accessor for FlowAction.ExitValue(0);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for FlowAction(0);
        swift_storeEnumTagMultiPayload();
        return (v81)(v88, v47);
      }
    }
  }
}

uint64_t sub_63F78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v132 = a4;
  v158 = a5;
  v159 = a2;
  v142 = a1;
  v130 = type metadata accessor for IFFlowError();
  v6 = *(*(v130 - 8) + 64);
  __chkstk_darwin(v130);
  v129 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6C5BC();
  v157 = *(v8 - 8);
  v9 = *(v157 + 8);
  __chkstk_darwin(v8);
  v11 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_6BEEC();
  v140 = *(v12 - 8);
  v141 = v12;
  v13 = *(v140 + 64);
  __chkstk_darwin(v12);
  v139 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_6C83C();
  v143 = *(v15 - 8);
  v144 = v15;
  v16 = *(v143 + 64);
  __chkstk_darwin(v15);
  v146 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for LocationRequest();
  v18 = *(*(v135 - 8) + 64);
  v19 = __chkstk_darwin(v135);
  v145 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v138 = &v128 - v21;
  v137 = sub_6C59C();
  v136 = *(v137 - 8);
  v22 = *(v136 + 64);
  v23 = __chkstk_darwin(v137);
  v134 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v147 = &v128 - v25;
  v26 = sub_6C5CC();
  v149 = *(v26 - 8);
  v150 = v26;
  v27 = *(v149 + 64);
  v28 = __chkstk_darwin(v26);
  v131 = &v128 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v155 = &v128 - v30;
  v31 = sub_6B5DC();
  v151 = *(v31 - 8);
  v152 = v31;
  v32 = *(v151 + 64);
  __chkstk_darwin(v31);
  v154 = &v128 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_6C5EC();
  v156 = *(v148 - 8);
  v34 = *(v156 + 64);
  v35 = __chkstk_darwin(v148);
  v133 = &v128 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v153 = &v128 - v37;
  v38 = sub_6C5FC();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = __chkstk_darwin(v38);
  v43 = &v128 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v41);
  v46 = &v128 - v45;
  __chkstk_darwin(v44);
  v48 = &v128 - v47;
  v49 = *(v39 + 16);
  v128 = a3;
  v49(&v128 - v47, a3, v38);
  v50 = (*(v39 + 88))(v48, v38);
  if (v50 == enum case for SystemRequirement.protectedAppApprovalRequired(_:))
  {
    (*(v39 + 96))(v48, v38);
    v51 = v157;
    (*(v157 + 4))(v11, v48, v8);
    v52 = v8;
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v53 = sub_6D04C();
    sub_5CE4(v53, qword_839A0);
    v54 = sub_6D03C();
    v55 = sub_6D45C();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_0, v54, v55, "IFFlow pushing protected app approval flow", v56, 2u);
    }

    v57 = *(sub_5708(&qword_81DA8, &unk_71420) + 48);
    v58 = sub_6C5AC();
    v59 = v158;
    *v158 = v58;
    v59[1] = v60;
    sub_4B870();
    v51[1](v11, v52);
    type metadata accessor for FlowAction(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v50 == enum case for SystemRequirement.userAuthenticationRequired(_:))
  {
    (*(v39 + 96))(v48, v38);
    v61 = v156;
    v62 = v153;
    v63 = v148;
    (*(v156 + 32))(v153, v48, v148);
    v64 = v155;
    sub_6C5DC();
    v66 = v149;
    v65 = v150;
    v67 = (*(v149 + 88))(v64, v150);
    if (v67 == enum case for SystemRequirement.AuthenticationRequest.AuthenticationLevel.alternativeAuthenticationPermitted(_:))
    {
      v68 = v154;
      sub_6B5CC();
    }

    else
    {
      v68 = v154;
      if (v67 == enum case for SystemRequirement.AuthenticationRequest.AuthenticationLevel.originDeviceAuthenticationRequired(_:))
      {
        sub_6B5BC();
      }

      else
      {
        if (qword_812A0 != -1)
        {
          swift_once();
        }

        v84 = sub_6D04C();
        sub_5CE4(v84, qword_839A0);
        v85 = v133;
        (*(v61 + 16))(v133, v62, v63);
        v86 = sub_6D03C();
        v87 = sub_6D46C();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v160 = v89;
          *v88 = 136315138;
          sub_6C5DC();
          v90 = sub_6D2EC();
          v92 = v91;
          (*(v156 + 8))(v85, v63);
          v93 = sub_1076C(v90, v92, &v160);
          v62 = v153;

          *(v88 + 4) = v93;
          _os_log_impl(&dword_0, v86, v87, "IFFlow received unknown SystemRequirement.AuthenticationLevel %s. Defaulting to requiring full unlock.", v88, 0xCu);
          sub_9964(v89);
          v61 = v156;

          v68 = v154;
        }

        else
        {

          (*(v61 + 8))(v85, v63);
        }

        sub_6B5BC();
        (*(v66 + 8))(v155, v65);
      }
    }

    v111 = *(sub_5708(&qword_81DB8, &qword_70E28) + 48);
    v113 = v151;
    v112 = v152;
    (*(v151 + 16))(v158, v68, v152);
    sub_4B870();
    (*(v113 + 8))(v68, v112);
    (*(v61 + 8))(v62, v63);
LABEL_40:
    type metadata accessor for FlowAction(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v50 == enum case for SystemRequirement.userLocationForSystemRequired(_:))
  {
    (*(v39 + 96))(v48, v38);
    v69 = v136;
    v70 = v147;
    v71 = v137;
    (*(v136 + 32))(v147, v48, v137);
    v72 = v134;
    (*(v69 + 16))(v134, v70, v71);
    v73 = v143;
    v74 = v144;
    (*(v143 + 16))(v146, v142, v144);
    v75 = v139;
    sub_4B870();
    *v145 = sub_6C58C() & 1;
    v76 = sub_6C56C();
    if (v77)
    {
      if (sub_6C58C())
      {
        v78 = &kCLLocationAccuracyThreeKilometers;
      }

      else
      {
        v78 = &kCLLocationAccuracyReduced;
      }

      v76 = *v78;
    }

    v99 = v145;
    *(v145 + 3) = v76;
    v100 = sub_6C57C();
    v101 = v72;
    v103 = v102;
    v105 = v104;
    v106 = *(v69 + 8);
    v106(v101, v71);
    v107 = 3000000000000000000;
    if (v105)
    {
      v108 = 0;
    }

    else
    {
      v107 = v100;
      v108 = v103;
    }

    *(v99 + 8) = v107;
    *(v99 + 16) = v108;
    v109 = v135;
    (*(v73 + 32))(v99 + *(v135 + 28), v146, v74);
    (*(v140 + 32))(v99 + *(v109 + 32), v75, v141);
    v110 = v138;
    sub_66050(v99, v138, type metadata accessor for LocationRequest);
    LODWORD(v109) = *(sub_5708(&qword_81E10, &qword_70E58) + 48);
    sub_660B8(v110, v158);
    type metadata accessor for PromptValue(0);
    swift_storeEnumTagMultiPayload();
    sub_4B870();
    sub_6611C(v110);
    v106(v147, v71);
    type metadata accessor for FlowAction(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v50 == enum case for SystemRequirement.deviceUnlockRequired(_:))
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v79 = sub_6D04C();
    sub_5CE4(v79, qword_839A0);
    v80 = sub_6D03C();
    v81 = sub_6D45C();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_0, v80, v81, "IFFlow pushing unlock device prompt", v82, 2u);
    }

    v83 = *(sub_5708(&qword_81DB8, &qword_70E28) + 48);
    sub_6B5BC();
    sub_4B870();
    goto LABEL_40;
  }

  if (v50 == enum case for SystemRequirement.appLaunchRequired(_:))
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v94 = sub_6D04C();
    sub_5CE4(v94, qword_839A0);
    v95 = sub_6D03C();
    v96 = sub_6D45C();
    if (!os_log_type_enabled(v95, v96))
    {
      goto LABEL_53;
    }

    v97 = swift_slowAlloc();
    *v97 = 0;
    v98 = "IFFlow exiting as app launch is required to proceed";
LABEL_52:
    _os_log_impl(&dword_0, v95, v96, v98, v97, 2u);

LABEL_53:

    sub_9878(v132, v158);
    type metadata accessor for FlowAction.ExitValue(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for FlowAction(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v50 == enum case for SystemRequirement.carPlayIncompatible(_:) || v50 == enum case for SystemRequirement.carBluetoothIncompatible(_:))
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v126 = sub_6D04C();
    sub_5CE4(v126, qword_839A0);
    v95 = sub_6D03C();
    v96 = sub_6D45C();
    if (!os_log_type_enabled(v95, v96))
    {
      goto LABEL_53;
    }

    v97 = swift_slowAlloc();
    *v97 = 0;
    v98 = "IFFlow exiting as system requirement not met";
    goto LABEL_52;
  }

  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v115 = sub_6D04C();
  sub_5CE4(v115, qword_839A0);
  v49(v46, v128, v38);
  v116 = sub_6D03C();
  v117 = sub_6D46C();
  if (os_log_type_enabled(v116, v117))
  {
    v118 = swift_slowAlloc();
    v157 = v118;
    v159 = swift_slowAlloc();
    v160 = v159;
    *v118 = 136315138;
    v49(v43, v46, v38);
    v119 = v117;
    v120 = sub_6D2EC();
    v122 = v121;
    v123 = *(v39 + 8);
    v123(v46, v38);
    v124 = sub_1076C(v120, v122, &v160);

    v125 = v157;
    *(v157 + 1) = v124;
    _os_log_impl(&dword_0, v116, v119, "IFFlow received unsupported SystemRequirement %s", v125, 0xCu);
    sub_9964(v159);
  }

  else
  {

    v123 = *(v39 + 8);
    v123(v46, v38);
  }

  v127 = v129;
  (*(v143 + 16))(v129, v142, v144);
  swift_storeEnumTagMultiPayload();
  sub_66050(v127, v158, type metadata accessor for IFFlowError);
  type metadata accessor for FlowAction.ExitValue(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for FlowAction(0);
  swift_storeEnumTagMultiPayload();
  return (v123)(v48, v38);
}

uint64_t sub_65150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_6D6BC();
  sub_6D31C();
  v7 = sub_6D6DC();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_6D63C() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_65248(uint64_t *a1)
{
  v2 = sub_5708(&qword_814F0, &qword_71350);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  v6 = *a1;
  swift_getKeyPath();
  v7 = enum case for RequestSummary.PrescribedGenAITool.generateRichContentFromMediaIntentTool(_:);
  v8 = sub_6CD3C();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v5, v7, v8);
  (*(v9 + 56))(v5, 0, 1, v8);
  return sub_6BE2C();
}

uint64_t sub_65378(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_65470;

  return v7(a1);
}

uint64_t sub_65470()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_65588()
{
  v1 = sub_6AE9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_6C0FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_9964((v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_656E0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_6AE9C() - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_6C0FC() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_E728;

  return sub_62614(a1, v10, v11, v1 + 32, v1 + v6, v1 + v9);
}

Swift::Int sub_65854(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_5708(&qword_82238, &qword_71430);
    v3 = sub_6D55C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_6D6BC();

      sub_6D31C();
      result = sub_6D6DC();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_6D63C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_659BC(uint64_t a1)
{
  v2 = sub_6CD2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = sub_5708(&qword_817E0, &qword_71300);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v32 - v12;
  v14 = sub_6C54C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4B4CC(v18);
  v19 = (*(v15 + 88))(v18, v14);
  if (v19 == enum case for StatementOutcome.success(_:))
  {
    v35 = sub_4B728();
    v36 = v20;
    v33 = 0xD000000000000033;
    v34 = 0x800000000006E860;
    sub_1FDC0();
    sub_1FE14();
    v21 = sub_6D26C();

    if (v21)
    {
      v22 = sub_65854(&off_7EEC0);
      swift_arrayDestroy();
      sub_6C4CC();
      v23 = sub_6C4AC();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v13, 1, v23) == 1)
      {

        sub_5E20(v13, &qword_817E0, &qword_71300);
LABEL_11:
        v25 = 0;
        goto LABEL_12;
      }

      v28 = sub_6C48C();
      v30 = v29;
      (*(v24 + 8))(v13, v23);
      if (!v30)
      {

        goto LABEL_11;
      }

      v25 = sub_65150(v28, v30, v22);
    }

    else
    {
      v35 = sub_4B728();
      v36 = v27;
      v33 = 0xD000000000000022;
      v34 = 0x800000000006EE20;
      v25 = sub_6D26C();
    }
  }

  else
  {
    if (v19 != enum case for StatementOutcome.actionConfirmation(_:))
    {
      goto LABEL_11;
    }

    sub_6CD0C();
    sub_65FB0(&qword_814E8, &type metadata accessor for RequestSummary.ExecutionSource.IntelligenceFlow);
    sub_6BE5C();
    (*(v3 + 104))(v9, enum case for RequestSummary.ExecutionSource.intelligenceFlow(_:), v2);
    sub_4458(a1, v7);
    v25 = sub_6CD1C();
    v26 = *(v3 + 8);
    v26(v7, v2);
    v26(v9, v2);
  }

LABEL_12:
  (*(v15 + 8))(v18, v14);
  return v25 & 1;
}

uint64_t sub_65F34(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_65FB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_65FF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_6B0EC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_66024@<X0>(_BYTE *a1@<X8>)
{
  result = sub_6B0CC();
  *a1 = result;
  return result;
}

uint64_t sub_66050(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_660B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6611C(uint64_t a1)
{
  v2 = type metadata accessor for LocationRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_66178(uint64_t a1, uint64_t a2)
{
  v4 = sub_5708(&qword_821F8, &qword_712F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_661E8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_66220(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_12CEC;

  return sub_65378(a1, v5);
}

uint64_t sub_662D8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_E728;

  return sub_65378(a1, v5);
}

void sub_66398()
{
  sub_66578();
  if (v0 <= 0x3F)
  {
    sub_665DC();
    if (v1 <= 0x3F)
    {
      sub_66654();
      if (v2 <= 0x3F)
      {
        sub_66764(319, &qword_822E0, type metadata accessor for PromptValue);
        if (v3 <= 0x3F)
        {
          sub_666DC();
          if (v4 <= 0x3F)
          {
            sub_66764(319, &qword_822F0, &type metadata accessor for UnlockDevicePolicy);
            if (v5 <= 0x3F)
            {
              sub_667DC();
              if (v6 <= 0x3F)
              {
                sub_66848();
                if (v7 <= 0x3F)
                {
                  sub_66914(319, &qword_82308, &type metadata accessor for MessagePayload.ClientAction);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for FlowAction.ExitValue(319);
                    if (v9 <= 0x3F)
                    {
                      sub_66914(319, &qword_82310, &type metadata accessor for SiriXRedirectContext);
                      if (v10 <= 0x3F)
                      {
                        sub_66764(319, &unk_82318, &type metadata accessor for ActionConfirmation.SystemStyle.MontaraEnablement);
                        if (v11 <= 0x3F)
                        {
                          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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
}

unint64_t sub_66578()
{
  result = qword_822C8;
  if (!qword_822C8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_822C8);
  }

  return result;
}

void sub_665DC()
{
  if (!qword_822D0)
  {
    sub_29F8(&qword_81B10, &qword_708E0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_822D0);
    }
  }
}

void sub_66654()
{
  if (!qword_822D8)
  {
    sub_29F8(&qword_81B10, &qword_708E0);
    sub_6BEEC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_822D8);
    }
  }
}

void sub_666DC()
{
  if (!qword_822E8)
  {
    sub_29F8(&qword_81B10, &qword_708E0);
    sub_6BEEC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_822E8);
    }
  }
}

void sub_66764(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_6BEEC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_667DC()
{
  if (!qword_822F8)
  {
    sub_6BEEC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_822F8);
    }
  }
}

void *sub_66848()
{
  result = qword_82300;
  if (!qword_82300)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_82300);
  }

  return result;
}

void sub_66878()
{
  sub_66914(319, &unk_823C8, sub_66578);
  if (v0 <= 0x3F)
  {
    type metadata accessor for LocationRequest();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_66914(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
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

void sub_66960()
{
  type metadata accessor for IFFlowError();
  if (v0 <= 0x3F)
  {
    sub_66578();
    if (v1 <= 0x3F)
    {
      sub_669E8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_669E8()
{
  if (!qword_82478)
  {
    sub_29F8(&qword_81B10, &qword_708E0);
    sub_6BF6C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_82478);
    }
  }
}

unint64_t sub_66A7C()
{
  result = qword_824A8[0];
  if (!qword_824A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_824A8);
  }

  return result;
}

uint64_t sub_66AF4(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for LocationRequest();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_660B8(a1, v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_5708(&qword_825D0, &qword_716B8);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v13[3] = sub_67F0C(v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_660B8(a1, v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v11[2] = *(v3 + 80);
  v11[3] = *(v3 + 88);
  v11[4] = v1;
  sub_69598(v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for LocationRequest);
  sub_69534();

  sub_6B46C();
}

uint64_t sub_66CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v5 = *v2;
  v6 = type metadata accessor for LocationRequest();
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  __chkstk_darwin(v6);
  v34 = v8;
  v36 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 80);
  v10 = *(v5 + 88);
  v11 = type metadata accessor for IFFlow.State();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v30 - v14;
  if ([objc_opt_self() isSiriLocationServicesPromptingEnabled])
  {
    v31 = v10;
    v32 = v9;
    type metadata accessor for IFFlow.PromptValue();
    v33 = v3;
    v16 = sub_6C83C();
    v17 = a1;
    v18 = sub_6BEEC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v20 = *(TupleTypeMetadata3 + 48);
    v21 = *(TupleTypeMetadata3 + 64);
    *v15 = 2;
    (*(*(v16 - 8) + 16))(&v15[v20], v17 + *(v6 + 28), v16);
    (*(*(v18 - 8) + 16))(&v15[v21], v17 + *(v6 + 32), v18);
    swift_storeEnumTagMultiPayload();
    sub_4A280(v15);
    (*(v12 + 8))(v15, v11);
    sub_6B05C();
    sub_5708(&qword_81DB0, &qword_70E20);
    v22 = *(sub_6B0BC() - 8);
    v23 = *(v22 + 72);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    *(swift_allocObject() + 16) = xmmword_70000;
    sub_6B08C();
    v38 = sub_6B04C();
    v25 = v36;
    sub_660B8(v17, v36);
    v26 = (*(v35 + 80) + 40) & ~*(v35 + 80);
    v27 = swift_allocObject();
    v28 = v31;
    v27[2] = v32;
    v27[3] = v28;
    v27[4] = v2;
    sub_69598(v25, v27 + v26, type metadata accessor for LocationRequest);

    sub_6B46C();
  }

  else
  {
    sub_660B8(a1, v15);
    swift_storeEnumTagMultiPayload();
    sub_4A280(v15);
    (*(v12 + 8))(v15, v11);
    return sub_6B45C();
  }
}

uint64_t sub_67124(_BYTE *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(*a2 + 80);
  v7 = *(v5 + 88);
  v8 = type metadata accessor for IFFlow.State();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v14 - v11;
  if (*a1 == 1)
  {
    type metadata accessor for IFFlowError();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_660B8(a3, v12);
  }

  swift_storeEnumTagMultiPayload();
  sub_4A280(v12);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_67268(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(*a2 + 80);
  v7 = *(v5 + 88);
  v8 = type metadata accessor for IFFlow.State();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v23[-v11];
  v13 = *a1;
  if (*(a1 + 8))
  {
    sub_67E64(*a1, &v23[-v11]);
    sub_4A280(v12);
    return (*(v9 + 8))(v12, v8);
  }

  else
  {
    v15 = objc_opt_self();
    v24 = 0;
    v16 = [v15 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v24];
    v17 = v24;
    if (v16)
    {
      v18 = sub_6AE1C();
      v20 = v19;

      sub_6753C(v18, v20, a3, v12);
      sub_4A280(v12);
      (*(v9 + 8))(v12, v8);
      return sub_1FCB4(v18, v20);
    }

    else
    {
      v21 = v17;
      v22 = sub_6ADDC();

      swift_willThrow();
      sub_6749C(v22, v12);
      sub_4A280(v12);
      (*(v9 + 8))(v12, v8);
    }
  }
}

uint64_t sub_6749C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *v2;
  *a2 = a1;
  type metadata accessor for IFFlowError();
  swift_storeEnumTagMultiPayload();
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  type metadata accessor for IFFlow.State();
  swift_storeEnumTagMultiPayload();

  return swift_errorRetain();
}

uint64_t sub_6753C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v88 = a3;
  v83 = a2;
  v75 = a1;
  v94 = *v4;
  v95 = a4;
  v5 = sub_6C35C();
  v89 = *(v5 - 8);
  v90 = v5;
  v6 = *(v89 + 64);
  __chkstk_darwin(v5);
  v87 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6C7EC();
  v91 = *(v8 - 8);
  v92 = v8;
  v9 = *(v91 + 64);
  __chkstk_darwin(v8);
  v93 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6C33C();
  v85 = *(v11 - 8);
  v86 = v11;
  v12 = *(v85 + 64);
  __chkstk_darwin(v11);
  v84 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_5708(&qword_81770, &unk_70F70);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v82 = &v64 - v16;
  v17 = sub_6BEEC();
  v77 = *(v17 - 8);
  v78 = v17;
  v18 = *(v77 + 64);
  __chkstk_darwin(v17);
  v79 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_6C86C();
  v71 = *(v74 - 8);
  v20 = *(v71 + 64);
  __chkstk_darwin(v74);
  v76 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_5708(&unk_82030, &qword_70370);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v72 = &v64 - v24;
  v25 = sub_6C89C();
  v80 = *(v25 - 8);
  v81 = v25;
  v26 = *(v80 + 64);
  __chkstk_darwin(v25);
  v73 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_6AE9C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v33 = &v64 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v64 - v34;
  v36 = type metadata accessor for IFFlowError();
  v37 = *(*(v36 - 8) + 64);
  v38 = __chkstk_darwin(v36 - 8);
  v40 = (&v64 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v38);
  v70 = sub_6CFCC();
  v69 = *(v70 - 8);
  v41 = *(v69 + 64);
  __chkstk_darwin(v70);
  v43 = &v64 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_30FBC(v40);
  v66 = v4;
  sub_3556C(2, v43);
  v44 = *(v29 + 8);
  v67 = v29 + 8;
  v68 = v44;
  v65 = v28;
  v44(v35, v28);
  sub_69600(v75, v83);
  sub_6CF7C();
  (*(v29 + 56))(v72, 1, 1, v28);
  v45 = type metadata accessor for LocationRequest();
  v46 = *(v45 + 28);
  v47 = v88;
  v48 = v33;
  sub_6C80C();
  v49 = v76;
  sub_6C84C();
  (*(v71 + 104))(v49, enum case for SystemPromptResolution.UserAction.requirementAddressed(_:), v74);
  (*(v77 + 16))(v79, v47 + *(v45 + 32), v78);
  v50 = sub_6C85C();
  (*(*(v50 - 8) + 56))(v82, 1, 1, v50);
  v51 = v73;
  sub_6C87C();
  v52 = v84;
  sub_A17C(v51, v43);
  sub_6C82C();
  v54 = v85;
  v53 = v86;
  v55 = v87;
  (*(v85 + 16))(v87, v52, v86);
  v57 = v89;
  v56 = v90;
  (*(v89 + 104))(v55, enum case for MessagePayload.request(_:), v90);
  sub_30BF8(v48, v55);
  (*(v57 + 8))(v55, v56);
  v68(v48, v65);
  (*(v54 + 8))(v52, v53);
  (*(v80 + 8))(v51, v81);
  (*(v69 + 8))(v43, v70);
  v58 = *(sub_5708(&qword_81788, &qword_70380) + 48);
  v59 = v95;
  (*(v91 + 32))(v95, v93, v92);
  v60 = sub_6CD2C();
  (*(*(v60 - 8) + 56))(v59 + v58, 1, 1, v60);
  v61 = *(v94 + 80);
  v62 = *(v94 + 88);
  type metadata accessor for IFFlow.State();
  return swift_storeEnumTagMultiPayload();
}

id sub_67E64@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *v2;
  *a2 = a1;
  type metadata accessor for IFFlowError();
  swift_storeEnumTagMultiPayload();
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  type metadata accessor for IFFlow.State();
  swift_storeEnumTagMultiPayload();

  return a1;
}

uint64_t sub_67F0C(uint64_t a1)
{
  v2 = v1;
  v4 = v1 + *(*v1 + 112);
  type metadata accessor for AFLocationServiceError(0);
  sub_69654(_swiftEmptyArrayStorage);
  sub_697EC(&qword_81468);
  sub_6ADCC();
  *v4 = v7;
  *(v4 + 8) = 1;
  sub_660B8(a1, v1 + qword_839D0);
  v5 = [objc_allocWithZone(AFLocationService) init];
  sub_6611C(a1);
  *(v2 + *(*v2 + 104)) = v5;
  return v2;
}

uint64_t sub_68020()
{
  v1 = v0;
  v2 = *v0;
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v3 = sub_6D04C();
  sub_5CE4(v3, qword_839A0);
  v4 = sub_6D03C();
  v5 = sub_6D46C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1076C(0xD000000000000014, 0x800000000006FB10, &v9);
    _os_log_impl(&dword_0, v4, v5, "%s Execution should never reach here since we are providing implementation of async version of execute function", v6, 0xCu);
    sub_9964(v7);
  }

  v9 = v1;
  swift_getWitnessTable();
  return sub_6B15C();
}

uint64_t sub_681D4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *v1;
  v2[7] = *v1;
  v4 = *(*(type metadata accessor for LocationRequest() - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v5 = *(v3 + 80);
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_682F8, 0, 0);
}

uint64_t sub_682F8()
{
  v1 = v0[8];
  v3 = v0[6];
  v2 = v0[7];
  (*(v0[10] + 16))(v0[11], v3 + *(*v3 + 104), v0[9]);
  sub_660B8(v3 + qword_839D0, v1);
  v4 = [objc_allocWithZone(AFLocationFetchRequest) init];
  v0[12] = v4;
  [v4 setDesiredAccuracy:*(v1 + 24)];
  [v4 setStyle:(*v1 & 1) == 0];
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = sub_6D6FC();
  [v4 setTimeout:(v8 / 1000000000000) / 1000000.0 + v7];
  sub_6611C(v1);
  v9 = *(v2 + 88);
  v15 = (*(v9 + 16) + **(v9 + 16));
  v10 = *(*(v9 + 16) + 4);
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_68500;
  v12 = v0[11];
  v13 = v0[9];

  return v15(v4, v13, v9);
}

uint64_t sub_68500(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[13];
  v6 = v3[12];
  v7 = v3[11];
  v8 = v3[10];
  v9 = v3[9];
  v12 = *v2;
  v4[14] = v1;

  (*(v8 + 8))(v7, v9);

  if (v1)
  {
    v10 = sub_69834;
  }

  else
  {
    v10 = sub_68698;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_68698()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[14] != 0;
  v5 = v0[6] + *(*v0[6] + 112);
  v6 = *v5;
  *v5 = v0[3];
  *(v5 + 8) = v4;

  sub_6B49C();

  v7 = v0[1];

  return v7();
}

uint64_t *sub_68754()
{
  v1 = *v0;
  sub_6611C(v0 + qword_839D0);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104));

  return v0;
}

uint64_t sub_687F8()
{
  sub_68754();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void (*sub_68850(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_6BC9C();
  return sub_223D0;
}

uint64_t sub_68900(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_E728;

  return sub_681D4(a1);
}

id sub_6899C@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1 + *(**v1 + 112);
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a1 = v3;
  *(a1 + 8) = v2;
  return v3;
}

uint64_t sub_689CC(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_99FC((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_5708(&qword_813D0, qword_6FC50);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_68AA4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 160) = a1;
  *(v2 + 168) = v3;
  return _swift_task_switch(sub_68AC8, 0, 0);
}

uint64_t sub_68AC8()
{
  v2 = v0[20];
  v1 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_68BF0;
  v3 = swift_continuation_init();
  v0[17] = sub_5708(&qword_825E0, &qword_716D0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_689CC;
  v0[13] = &unk_7F7D8;
  v0[14] = v3;
  [v1 currentLocationWithFetchRequest:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_68BF0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_68D1C;
  }

  else
  {
    v3 = sub_68D00;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_68D1C()
{
  v1 = v0[22];
  swift_willThrow();
  v0[10] = v1;
  swift_errorRetain();
  sub_5708(&qword_813D0, qword_6FC50);
  type metadata accessor for AFLocationServiceError(0);
  if (swift_dynamicCast())
  {
    v2 = v0[22];

    v3 = v0[18];
    v0[19] = v3;
    sub_697EC(&qword_81428);
    swift_willThrowTypedImpl();
    v4 = v0[10];

    v5 = v0[1];

    return v5(v3);
  }

  else
  {
    v7 = v0[10];

    return sub_6D5BC();
  }
}

uint64_t sub_68E90(uint64_t a1)
{
  result = type metadata accessor for LocationRequest();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v4 = *(a1 + 80);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for LocationRequest()
{
  result = qword_82588;
  if (!qword_82588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_68FE0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_6C83C();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 28)];

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_6BEEC();
      v16 = *(*(v15 - 8) + 48);
      v17 = &a1[*(a3 + 32)];

      return v16(v17, a2, v15);
    }
  }
}

_BYTE *sub_69118(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = sub_6C83C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 28)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_6BEEC();
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 32)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_69238()
{
  result = sub_6C83C();
  if (v1 <= 0x3F)
  {
    result = sub_6BEEC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_69320(_BYTE *a1)
{
  v3 = *(type metadata accessor for LocationRequest() - 8);
  v4 = *(v1 + 32);
  v5 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_67124(a1, v4, v5);
}

uint64_t sub_69394()
{
  v1 = (type metadata accessor for LocationRequest() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 32);

  v6 = v1[9];
  v7 = sub_6C83C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[10];
  v9 = sub_6BEEC();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_694C0(uint64_t a1)
{
  v3 = *(type metadata accessor for LocationRequest() - 8);
  v4 = *(v1 + 32);
  v5 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_67268(a1, v4, v5);
}

unint64_t sub_69534()
{
  result = qword_825D8;
  if (!qword_825D8)
  {
    sub_29F8(&qword_825D0, &qword_716B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_825D8);
  }

  return result;
}

uint64_t sub_69598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_69600(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_69654(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_5708(&qword_819F8, &qword_70788);
    v3 = sub_6D5EC();
    v4 = a1 + 32;

    while (1)
    {
      sub_69764(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_10DDC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2747C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_69764(uint64_t a1, uint64_t a2)
{
  v4 = sub_5708(&qword_81A00, &qword_716C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_697EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AFLocationServiceError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_69838@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_5708(&qword_81B18, qword_708F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v37[-v9];
  v11 = sub_5708(&qword_825E8, &qword_716D8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v37[-v14];
  v16 = sub_6B76C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v37[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v12 + 16))(v15, v2, v11);
  v21 = (*(v12 + 88))(v15, v11);
  v22 = enum case for PromptResult.answered<A>(_:);
  if (v21 == enum case for PromptResult.answered<A>(_:))
  {
    (*(v12 + 96))(v15, v11);
    v23 = *v15;
    v24 = sub_6B61C();
    v25 = *(v24 - 8);
    v26 = &enum case for ConfirmationResponse.confirmed(_:);
    if (!v23)
    {
      v26 = &enum case for ConfirmationResponse.rejected(_:);
    }

    (*(*(v24 - 8) + 104))(v10, *v26, v24);
    (*(v25 + 56))(v10, 0, 1, v24);
    goto LABEL_13;
  }

  if (v21 == enum case for PromptResult.error<A>(_:))
  {
    (*(v12 + 8))(v15, v11);
LABEL_12:
    v28 = enum case for ConfirmationResponse.rejected(_:);
    v29 = sub_6B61C();
    v30 = *(v29 - 8);
    (*(v30 + 104))(v8, v28, v29);
    (*(v30 + 56))(v8, 0, 1, v29);
LABEL_13:
    sub_6B77C();
    goto LABEL_14;
  }

  if (v21 == enum case for PromptResult.cancelled<A>(_:) || v21 == enum case for PromptResult.unanswered<A>(_:))
  {
    goto LABEL_12;
  }

  v38 = enum case for ConfirmationResponse.rejected(_:);
  v33 = sub_6B61C();
  v39 = a1;
  v34 = v33;
  v35 = *(v33 - 8);
  (*(v35 + 104))(v8, v38, v33);
  v36 = v34;
  a1 = v39;
  (*(v35 + 56))(v8, 0, 1, v36);
  sub_6B77C();
  (*(v12 + 8))(v15, v11);
LABEL_14:
  (*(v17 + 32))(a1, v20, v16);
  v31 = sub_5708(&qword_81E58, &unk_70E80);
  return (*(*(v31 - 8) + 104))(a1, v22, v31);
}

uint64_t sub_69D18(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_69DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v104 = a5;
  v109 = a3;
  v106 = a1;
  v107 = a2;
  v105 = a6;
  v7 = sub_6BCEC();
  v102 = *(v7 - 8);
  v103 = v7;
  v8 = *(v102 + 64);
  __chkstk_darwin(v7);
  v100 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_5708(&qword_825F0, &qword_716E0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v101 = &v85 - v12;
  v13 = sub_5708(&qword_825F8, &qword_716E8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v99 = &v85 - v15;
  v16 = sub_5708(&qword_82600, &qword_716F0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v98 = &v85 - v18;
  v19 = sub_5708(&qword_82608, &qword_716F8);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v97 = &v85 - v21;
  v22 = sub_6BD2C();
  v96 = *(v22 - 8);
  v23 = *(v96 + 64);
  __chkstk_darwin(v22);
  v95 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_6BD0C();
  v93 = *(v94 - 8);
  v25 = *(v93 + 64);
  __chkstk_darwin(v94);
  v92 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_6BCDC();
  v90 = *(v91 - 8);
  v27 = *(v90 + 64);
  __chkstk_darwin(v91);
  v85 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_5708(&qword_81B20, &qword_70908);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v32 = &v85 - v31;
  v33 = sub_5708(&qword_81B28, &qword_70910);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  v88 = &v85 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v89 = &v85 - v37;
  v38 = sub_6BDDC();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  v42 = &v85 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_6BD4C();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  __chkstk_darwin(v43);
  v47 = &v85 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = a4;
  sub_6BD6C();
  sub_6BD3C();
  (*(v44 + 8))(v47, v43);
  v48 = sub_6BDCC();
  (*(v39 + 8))(v42, v38);
  v49 = *(v48 + 16);
  if (v49)
  {
    v87 = v22;
    v50 = sub_2BC1C(v49, 0);
    v51 = sub_2C778(v110, v50 + 4, v49, v48);

    sub_2C8D0();
    if (v51 != v49)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v22 = v87;
  }

  else
  {
    v50 = &_swiftEmptyArrayStorage;
  }

  v110[0] = v50;
  sub_2BCA0(v110);
  v52 = v89;

  v53 = v110[0];
  sub_6CE0C();
  v54 = sub_6BDAC();
  v55 = *(v54 - 8);
  if ((*(v55 + 48))(v32, 1, v54) == 1)
  {
    sub_5E20(v32, &qword_81B20, &qword_70908);
    v56 = 1;
  }

  else
  {
    sub_6BD9C();
    (*(v55 + 8))(v32, v54);
    v56 = 0;
  }

  v57 = v88;
  v58 = v90;
  v59 = v91;
  (*(v90 + 56))(v52, v56, 1, v91);
  sub_2C8D8(v52, v57);
  if ((*(v58 + 48))(v57, 1, v59) == 1)
  {
    sub_5E20(v52, &qword_81B28, &qword_70910);
    v86 = 0;
    v60 = 0;
  }

  else
  {
    v61 = v85;
    (*(v58 + 32))(v85, v57, v59);
    v110[0] = sub_6BCCC();
    v86 = sub_6D61C();
    v60 = v62;
    (*(v58 + 8))(v61, v59);
    sub_5E20(v52, &qword_81B28, &qword_70910);
  }

  v110[0] = sub_6D2CC();
  v110[1] = v63;
  __chkstk_darwin(v110[0]);
  v84 = v110;
  v64 = sub_69D18(sub_6AC84, v83, v53);

  v91 = sub_6CDCC();
  v90 = v65;
  v66 = v92;
  sub_6CDDC();
  v67 = sub_6BCFC();
  v88 = v68;
  (*(v93 + 8))(v66, v94);
  v69 = v95;
  sub_6CDEC();
  v94 = sub_6BD1C();
  v93 = v70;
  (*(v96 + 8))(v69, v22);
  sub_6BD8C();
  sub_6BD7C();
  v71 = sub_6CE3C();
  if (v71)
  {
    v72 = *(v71 + 16);

    v73 = v72 == 0;
  }

  else
  {
    v73 = 2;
  }

  LODWORD(v96) = v73;
  v87 = v53;
  v89 = v67;
  if (v60)
  {
    sub_5708(&qword_81A48, &qword_707B8);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_70000;
    *(v74 + 32) = v86;
    *(v74 + 40) = v60;
  }

  LODWORD(v95) = v64 & 1;
  v75 = sub_6CF9C();
  (*(*(v75 - 8) + 56))(v97, 1, 1, v75);
  v76 = sub_6CF8C();
  (*(*(v76 - 8) + 56))(v98, 1, 1, v76);
  v77 = sub_6CFAC();
  v78 = v99;
  (*(*(v77 - 8) + 56))(v99, 1, 1, v77);
  v79 = v100;
  sub_6BD5C();
  v80 = v101;
  sub_6A9B8(v101);
  (*(v102 + 8))(v79, v103);
  v81 = sub_6CF6C();
  (*(*(v81 - 8) + 56))(v80, 0, 1, v81);
  LOBYTE(v84) = v104;
  v83[0] = v78;
  v83[1] = v80;
  sub_6CFBC();
}

uint64_t sub_6A9B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_6BCEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for DeviceIdiom.car(_:))
  {
    v10 = &enum case for StructuredContext.SiriRequestContext.DeviceIdiom.carPlay(_:);
LABEL_19:
    v11 = *v10;
    v12 = sub_6CF6C();
    return (*(*(v12 - 8) + 104))(a1, v11, v12);
  }

  if (v9 == enum case for DeviceIdiom.homepod(_:))
  {
    v10 = &enum case for StructuredContext.SiriRequestContext.DeviceIdiom.homePod(_:);
    goto LABEL_19;
  }

  if (v9 == enum case for DeviceIdiom.mac(_:))
  {
    v10 = &enum case for StructuredContext.SiriRequestContext.DeviceIdiom.mac(_:);
    goto LABEL_19;
  }

  if (v9 == enum case for DeviceIdiom.pad(_:))
  {
    v10 = &enum case for StructuredContext.SiriRequestContext.DeviceIdiom.iPad(_:);
    goto LABEL_19;
  }

  if (v9 == enum case for DeviceIdiom.pod(_:))
  {
    v10 = &enum case for StructuredContext.SiriRequestContext.DeviceIdiom.airPods(_:);
    goto LABEL_19;
  }

  if (v9 == enum case for DeviceIdiom.phone(_:))
  {
    v10 = &enum case for StructuredContext.SiriRequestContext.DeviceIdiom.iPhone(_:);
    goto LABEL_19;
  }

  if (v9 == enum case for DeviceIdiom.watch(_:))
  {
    v10 = &enum case for StructuredContext.SiriRequestContext.DeviceIdiom.watch(_:);
    goto LABEL_19;
  }

  if (v9 == enum case for DeviceIdiom.tv(_:))
  {
    v10 = &enum case for StructuredContext.SiriRequestContext.DeviceIdiom.tv(_:);
    goto LABEL_19;
  }

  if (v9 == enum case for DeviceIdiom.reality(_:))
  {
    v10 = &enum case for StructuredContext.SiriRequestContext.DeviceIdiom.vision(_:);
    goto LABEL_19;
  }

  v14 = enum case for DeviceIdiom.unknown(_:);
  v15 = enum case for StructuredContext.SiriRequestContext.DeviceIdiom.unknown(_:);
  v16 = v9;
  v17 = sub_6CF6C();
  result = (*(*(v17 - 8) + 104))(a1, v15, v17);
  if (v16 != v14)
  {
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_6AC84(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_6D63C() & 1;
  }
}
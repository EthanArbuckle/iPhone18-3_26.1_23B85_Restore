void sub_68700()
{
  if (!qword_B99D0)
  {
    sub_80CB8();
    v0 = sub_81B98();
    if (!v1)
    {
      atomic_store(v0, &qword_B99D0);
    }
  }
}

void sub_68758()
{
  if (!qword_B8D98)
  {
    v0 = sub_81508();
    if (!v1)
    {
      atomic_store(v0, &qword_B8D98);
    }
  }
}

uint64_t sub_687A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_81578();
  sub_14E2C(&qword_B9940, &unk_8B7E8);
  sub_80E28();
  swift_getWitnessTable();
  sub_68058();
  return swift_getWitnessTable();
}

uint64_t sub_6884C()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = type metadata accessor for AsyncButton();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = &v0[v5];
  v9 = *&v0[v5 + 8];

  (*(*(v2 - 8) + 8))(&v0[v5 + v3[9]], v2);
  v10 = v3[10];
  v11 = sub_80CB8();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(&v0[v5 + v10], 1, v11))
  {
    (*(v12 + 8))(&v8[v10], v11);
  }

  v13 = *&v8[v3[11] + 8];

  return _swift_deallocObject(v0, v5 + v6, v4 | 7);
}

uint64_t sub_689D4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for AsyncButton() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_16268;

  return sub_67BD8(a1, v8, v9, v1 + v7, v4, v5);
}

uint64_t sub_68AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_147EC(&unk_B8240, &qword_88F50);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_14F6C(a3, v27 - v11, &unk_B8240, &qword_88F50);
  v13 = sub_81AB8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_14FD4(v12, &unk_B8240, &qword_88F50);
  }

  else
  {
    sub_81AA8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_81A58();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_81958() + 32;
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

      sub_14FD4(a3, &unk_B8240, &qword_88F50);

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

  sub_14FD4(a3, &unk_B8240, &qword_88F50);
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

uint64_t sub_68DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_147EC(&unk_B8240, &qword_88F50);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_14F6C(a3, v27 - v11, &unk_B8240, &qword_88F50);
  v13 = sub_81AB8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_14FD4(v12, &unk_B8240, &qword_88F50);
  }

  else
  {
    sub_81AA8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_81A58();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_81958() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_147EC(&qword_B9C20, &qword_8BAD0);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_14FD4(a3, &unk_B8240, &qword_88F50);

      return v24;
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

  sub_14FD4(a3, &unk_B8240, &qword_88F50);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_147EC(&qword_B9C20, &qword_8BAD0);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_690F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_80C68();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_69178(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = v4;
  return sub_80C78();
}

id sub_692E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Wrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_6936C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a2;
  v56 = a1;
  v61 = a3;
  v5 = sub_810E8();
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = *(v62 + 64);
  __chkstk_darwin(v5);
  v58 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_147EC(&qword_B9BE0, &unk_8BA00);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v53 - v10);
  v59 = sub_147EC(&qword_B9BD8, &qword_8B9F8);
  v60 = *(v59 - 8);
  v12 = *(v60 + 64);
  __chkstk_darwin(v59);
  v64 = &v53 - v13;
  *v11 = swift_getKeyPath();
  sub_147EC(&qword_B8570, &qword_8A370);
  swift_storeEnumTagMultiPayload();
  v14 = (v11 + *(type metadata accessor for _StorageSettingsPreferencesView(0) + 20));
  type metadata accessor for StorageShared();
  sub_6C2B4(&qword_B7A50, type metadata accessor for StorageShared);
  *v14 = sub_80E68();
  v14[1] = v15;
  v69 = a1;
  v70 = a2;
  sub_147EC(&qword_B9C00, &qword_8BA20);
  sub_814D8();
  v16 = v65;
  swift_getKeyPath();
  v69 = v16;
  sub_6C2B4(&qword_B9BC0, type metadata accessor for StorageSharedReference);
  sub_80A68();

  v17 = *(v16 + 16);

  v18 = sub_80C38();
  v19 = *(v8 + 36);
  v54 = v8;
  v20 = (v11 + v19);
  *v20 = v18;
  v20[1] = v17;
  v21 = sub_818E8();
  v22 = sub_818E8();
  v23 = STLocalizedString(v21);

  sub_81928();
  sub_147EC(&qword_B7CB0, &qword_88A40);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_886D0;
  v25 = localizedDeviceName();
  v26 = sub_81928();
  v28 = v27;

  *(v24 + 56) = &type metadata for String;
  *(v24 + 64) = sub_1A83C();
  *(v24 + 32) = v26;
  *(v24 + 40) = v28;
  v29 = sub_81938();
  v31 = v30;

  v69 = v29;
  v70 = v31;
  v55 = sub_6C1CC();
  v32 = sub_14ED0();
  sub_81358();

  sub_14FD4(v11, &qword_B9BE0, &unk_8BA00);
  v65 = v56;
  v66 = v57;
  sub_814F8();
  v33 = v69;
  v34 = v70;
  v35 = v71;
  swift_getKeyPath();
  v78 = v33;
  v79 = v34;
  v80 = v35;
  sub_147EC(&qword_B9C08, &qword_8BA58);
  sub_815C8();

  v36 = v75;
  v37 = v76;
  v38 = v77;

  swift_getKeyPath();
  v72 = v36;
  v73 = v37;
  v74 = v38;
  sub_147EC(&qword_B9C10, &qword_8BA88);
  sub_815C8();

  v39 = v58;
  sub_810D8();
  v40 = sub_818E8();
  v41 = sub_818E8();
  v42 = STLocalizedString(v40);

  v43 = sub_81928();
  v45 = v44;

  v65 = v43;
  v66 = v45;
  v46 = sub_81288();
  v48 = v47;
  v65 = v54;
  v66 = &type metadata for String;
  LOBYTE(v38) = v49 & 1;
  v67 = v55;
  v68 = v32;
  swift_getOpaqueTypeConformance2();
  v50 = v59;
  v51 = v64;
  sub_812E8();
  sub_15034(v46, v48, v38);

  (*(v62 + 8))(v39, v63);
  return (*(v60 + 8))(v51, v50);
}

id sub_69A7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_6C2B4(&qword_B9BC0, type metadata accessor for StorageSharedReference);
  sub_80A68();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_69B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_80DD8();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = sub_809D8();
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v10 = *(v9 + 64) + 15;
  v4[15] = swift_task_alloc();
  sub_81A88();
  v4[16] = sub_81A78();
  v12 = sub_81A58();

  return _swift_task_switch(sub_69C88, v12, v11);
}

uint64_t sub_69C88()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v21 = v0[10];
  v7 = v0[7];
  v8 = v0[8];
  v19 = v0[13];
  v20 = v0[6];

  v0[2] = v8;
  v0[3] = v6;
  sub_147EC(&qword_B9C00, &qword_8BA20);
  sub_814D8();
  v9 = v0[4];
  swift_getKeyPath();
  v0[5] = v9;
  sub_6C2B4(&qword_B9BC0, type metadata accessor for StorageSharedReference);
  sub_80A68();

  v10 = *(v9 + 16);

  sub_81718();
  v11 = type metadata accessor for DeepLinkParameters();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  sub_80A98();
  *(v14 + 16) = sub_3A9D0(_swiftEmptyArrayStorage);
  v15 = sub_80988();
  v16 = sub_6B9C4(v15);
  (*(v3 + 8))(v2, v19);
  *(v14 + 24) = v16;
  sub_324E4(v14);

  sub_81708();
  sub_81728();
  (*(v5 + 8))(v4, v21);

  v17 = v0[1];

  return v17();
}

uint64_t sub_69E9C@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v2 = sub_147EC(&qword_B9BC8, &qword_8B9E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v17 - v5;
  v8 = *v1;
  v7 = v1[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;

  sub_147EC(&qword_B9BD0, &qword_8B9F0);
  v10 = sub_14E2C(&qword_B9BD8, &qword_8B9F8);
  v11 = sub_14E2C(&qword_B9BE0, &unk_8BA00);
  v12 = sub_6C1CC();
  v13 = sub_14ED0();
  v18 = v11;
  v19 = &type metadata for String;
  v20 = v12;
  v21 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = v10;
  v19 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_81738();
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  *(v15 + 24) = v7;
  sub_14F24(&qword_B9BF8, &qword_B9BC8, &qword_8B9E8);

  sub_816F8();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_6A108@<X0>(void *a1@<X8>)
{
  if (qword_B7858 != -1)
  {
    swift_once();
  }

  sub_6BF6C(qword_BCF88);
  type metadata accessor for StorageSharedReference(0);
  result = sub_814C8();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

id sub_6A194()
{
  swift_getKeyPath();
  sub_6C2B4(&qword_B9BC0, type metadata accessor for StorageSharedReference);
  sub_80A68();

  v1 = *(v0 + 16);

  return v1;
}

void sub_6A244(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  type metadata accessor for StorageShared();
  v5 = v4;
  v6 = sub_81B88();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_6C2B4(&qword_B9BC0, type metadata accessor for StorageSharedReference);
    sub_80A58();
  }
}

uint64_t sub_6A3A0()
{
  v1 = v0;
  v2 = sub_147EC(&unk_B8240, &qword_88F50);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v16 - v4;
  swift_getKeyPath();
  v6 = OBJC_IVAR____TtC17StorageSettingsUI22StorageSharedReference___observationRegistrar;
  v17 = v0;
  sub_6C2B4(&qword_B9BC0, type metadata accessor for StorageSharedReference);
  sub_80A68();

  v7 = *(v0 + 16);
  v8 = sub_81AB8();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_81A88();
  v9 = v7;
  v10 = sub_81A78();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;
  sub_68AE4(0, 0, v5, &unk_893C0, v11);

  v12 = sub_80AA8();
  (*(*(v12 - 8) + 8))(v1 + v6, v12);
  v13 = *(*v1 + 12);
  v14 = *(*v1 + 26);
  return swift_deallocClassInstance();
}

uint64_t sub_6A5E4()
{
  result = sub_80AA8();
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

unint64_t sub_6A688()
{
  result = qword_B9BB8;
  if (!qword_B9BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9BB8);
  }

  return result;
}

id sub_6A6F8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_147EC(&qword_B8570, &qword_8A370);
  swift_storeEnumTagMultiPayload();
  v2 = (a1 + *(type metadata accessor for _StorageSettingsPreferencesView(0) + 20));
  type metadata accessor for StorageShared();
  sub_6C2B4(&qword_B7A50, type metadata accessor for StorageShared);
  *v2 = sub_80E68();
  v2[1] = v3;
  if (qword_B7858 != -1)
  {
    swift_once();
  }

  v7 = qword_BCF88;
  v4 = sub_80C38();
  v5 = (a1 + *(sub_147EC(&qword_B9BE0, &unk_8BA00) + 36));
  *v5 = v4;
  v5[1] = v7;

  return v7;
}

uint64_t sub_6A840()
{
  v0 = sub_818E8();
  v1 = sub_818E8();
  v2 = STLocalizedString(v0);

  sub_81928();
  sub_147EC(&qword_B7CB0, &qword_88A40);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_886D0;
  v4 = localizedDeviceName();
  v5 = sub_81928();
  v7 = v6;

  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_1A83C();
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  v8 = sub_81938();

  return v8;
}

uint64_t sub_6A970@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v2 = sub_818B8();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v60 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v50[2] = v50 - v6;
  v7 = type metadata accessor for _StorageSettingsPreferencesView(0);
  v8 = v7 - 8;
  v52 = *(v7 - 8);
  v9 = *(v52 + 64);
  __chkstk_darwin(v7);
  v50[1] = v10;
  v53 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_147EC(&qword_B9CC0, &qword_8BBF8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v50 - v14;
  v58 = sub_147EC(&qword_B9CC8, &qword_8BC00);
  v56 = *(v58 - 8);
  v16 = *(v56 + 64);
  __chkstk_darwin(v58);
  v18 = v50 - v17;
  v57 = sub_147EC(&qword_B9CD0, &qword_8BC08);
  v55 = *(v57 - 8);
  v19 = *(v55 + 64);
  __chkstk_darwin(v57);
  v54 = v50 - v20;
  v51 = sub_147EC(&qword_B9CD8, &qword_8BC10);
  v21 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v59 = v50 - v22;
  v62 = v1;
  sub_147EC(&qword_B9CE0, &qword_8BC18);
  sub_14F24(&qword_B9CE8, &qword_B9CE0, &qword_8BC18);
  sub_81218();
  v23 = sub_14F24(&qword_B9CF0, &qword_B9CC0, &qword_8BBF8);
  sub_812A8();
  (*(v12 + 8))(v15, v11);
  v24 = v1 + *(v8 + 28);
  v25 = *v24;
  if (*v24)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v26 = v25;
    sub_80C68();

    v65 = v63;
    v27 = v53;
    sub_6CDF0(v1, v53, type metadata accessor for _StorageSettingsPreferencesView);
    v28 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v29 = swift_allocObject();
    sub_6CE58(v27, v29 + v28, type metadata accessor for _StorageSettingsPreferencesView);
    sub_147EC(&qword_B81C0, &qword_88E98);
    v63 = v11;
    v64 = v23;
    swift_getOpaqueTypeConformance2();
    sub_6CCCC();
    v30 = v54;
    v31 = v58;
    sub_813E8();

    (*(v56 + 8))(v18, v31);
    v32 = v59;
    v33 = &v59[*(v51 + 36)];
    v34 = &v33[*(sub_80DA8() + 20)];
    sub_81A98();
    *v33 = &unk_8BC70;
    *(v33 + 1) = 0;
    (*(v55 + 32))(v32, v30, v57);
    sub_818A8();
    v66._countAndFlagsBits = 0;
    v66._object = 0xE000000000000000;
    sub_81898(v66);
    v67._countAndFlagsBits = sub_6A840();
    sub_81888(v67);

    v68._countAndFlagsBits = 0;
    v68._object = 0xE000000000000000;
    sub_81898(v68);
    v35 = sub_147EC(&qword_B9D08, &qword_8BC78);
    v36 = v61;
    v37 = v61 + *(v35 + 36);
    sub_80968();
    sub_147EC(&qword_B9D10, &unk_8BC80);
    v38 = *(sub_80978() - 8);
    v39 = *(v38 + 72);
    v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_886D0;
    sub_818A8();
    v69._countAndFlagsBits = 0;
    v69._object = 0xE000000000000000;
    sub_81898(v69);
    v42 = sub_818E8();
    v43 = sub_818E8();
    v44 = STLocalizedString(v42);

    v45 = sub_81928();
    v47 = v46;

    v70._countAndFlagsBits = v45;
    v70._object = v47;
    sub_81888(v70);

    v71._countAndFlagsBits = 0;
    v71._object = 0xE000000000000000;
    sub_81898(v71);
    sub_80968();
    *(v37 + *(type metadata accessor for NavigationEventEmissionViewModifier() + 20)) = v41;
    return sub_6CD80(v32, v36);
  }

  else
  {
    v49 = *(v24 + 8);
    type metadata accessor for StorageShared();
    sub_6C2B4(&qword_B7A50, type metadata accessor for StorageShared);
    result = sub_80E58();
    __break(1u);
  }

  return result;
}

uint64_t sub_6B160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for _StorageSettingsPreferencesView(0) + 20);
  v4 = *v3;
  if (*v3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = v4;
    sub_80C68();

    v6 = HIBYTE(v34) & 0xF;
    if ((v34 & 0x2000000000000000) == 0)
    {
      v6 = v33 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v27 = 0;
      v28 = 0;
      v25 = 0;
      v26 = 0;
      v23 = 0;
      v24 = 0;
      v22 = 0;
      v7 = 1;
    }

    else
    {
      type metadata accessor for StorageShared();
      sub_6C2B4(&qword_B7A50, type metadata accessor for StorageShared);
      v7 = sub_80E68();
      v28 = v8;
      v9 = sub_80E68();
      v26 = v10;
      v27 = v9;
      v11 = sub_80E68();
      v24 = v12;
      v25 = v11;
      LOBYTE(v29) = 0;
      sub_814C8();
      v23 = v33;
      v22 = v34;
    }

    type metadata accessor for StorageShared();
    sub_6C2B4(&qword_B7A50, type metadata accessor for StorageShared);
    v21 = sub_80E68();
    v14 = v13;
    sub_814C8();
    v15 = v33;
    v16 = v34;
    *&v29 = v7;
    *(&v29 + 1) = v28;
    *&v30 = v27;
    *(&v30 + 1) = v26;
    *&v31 = v25;
    *(&v31 + 1) = v24;
    *&v32 = v23;
    *(&v32 + 1) = v22;
    v17 = v30;
    *a2 = v29;
    *(a2 + 16) = v17;
    v18 = v32;
    *(a2 + 32) = v31;
    *(a2 + 48) = v18;
    *(a2 + 64) = v21;
    *(a2 + 72) = v14;
    *(a2 + 80) = v15;
    *(a2 + 88) = v16;
    sub_14F6C(&v29, &v33, &qword_B9D18, &unk_8BC90);
    v33 = v7;
    v34 = v28;
    v35 = v27;
    v36 = v26;
    v37 = v25;
    v38 = v24;
    v39 = v23;
    v40 = v22;
    return sub_14FD4(&v33, &qword_B9D18, &unk_8BC90);
  }

  else
  {
    v20 = *(v3 + 8);
    type metadata accessor for StorageShared();
    sub_6C2B4(&qword_B7A50, type metadata accessor for StorageShared);
    result = sub_80E58();
    __break(1u);
  }

  return result;
}

void sub_6B440(uint64_t a1)
{
  v2 = sub_80B38();
  v36 = *(v2 - 8);
  v3 = *(v36 + 64);
  __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_147EC(&qword_B8568, &unk_89590);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v32 - v8;
  v10 = type metadata accessor for Application();
  v35 = *(v10 - 8);
  v11 = *(v35 + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v32 - v15;
  v17 = a1 + *(type metadata accessor for _StorageSettingsPreferencesView(0) + 20);
  v18 = *v17;
  if (!*v17)
  {
    v31 = *(v17 + 8);
    type metadata accessor for StorageShared();
    sub_6C2B4(&qword_B7A50, type metadata accessor for StorageShared);
    sub_80E58();
    __break(1u);
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v19 = v18;
  sub_80C68();

  if (v37)
  {
    v20 = *(v37 + 24);
    if (v20 && v20[2])
    {
      v21 = v20[4];
      v22 = v20[5];
      v33 = v2;
      v34 = v21;
      swift_getKeyPath();
      swift_getKeyPath();
      v37 = 0;
      v23 = v19;

      sub_80C78();
      v24 = v23;
      v25 = sub_254C4();

      if (*(v25 + 16))
      {
        v26 = sub_34B30(v34, v22);
        v28 = v27;

        if (v28)
        {
          sub_6CDF0(*(v25 + 56) + *(v35 + 72) * v26, v14, type metadata accessor for Application);

          sub_6CE58(v14, v16, type metadata accessor for Application);
          sub_1B4B0(v9);
          v29 = sub_80B08();
          v30 = 1;
          (*(*(v29 - 8) + 56))(v9, 0, 1, v29);
          if ((v16[130] & 1) == 0)
          {
            v30 = v16[131];
          }

          sub_6BB50(&qword_B8570, &qword_8A370, &type metadata accessor for AppendSettingsNavigationPathAction, v5);
          sub_613EC(v9, v30, v5);

          (*(v36 + 8))(v5, v33);
          sub_14FD4(v9, &qword_B8568, &unk_89590);
          sub_2095C(v16);
          return;
        }
      }

      else
      {
      }
    }
  }
}

uint64_t sub_6B890()
{
  sub_81A88();
  *(v0 + 16) = sub_81A78();
  v2 = sub_81A58();

  return _swift_task_switch(sub_6B924, v2, v1);
}

uint64_t sub_6B924()
{
  v1 = *(v0 + 16);

  if (qword_B7858 != -1)
  {
    swift_once();
  }

  sub_2EFD0();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_6B9C4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = 0;
  v5 = v2 >> 1;
  v6 = v2 - 1;
  for (i = 16 * v2 + 24; ; i -= 16)
  {
    if (v4 == v6)
    {
      goto LABEL_5;
    }

    v10 = *(v1 + 2);
    if (v4 >= v10)
    {
      break;
    }

    if (v6 >= v10)
    {
      goto LABEL_14;
    }

    v12 = *&v1[v3 + 32];
    v11 = *&v1[v3 + 40];
    v14 = *&v1[i - 8];
    v13 = *&v1[i];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_6BD50(v1);
    }

    v15 = &v1[v3];
    v16 = *&v1[v3 + 40];
    *(v15 + 4) = v14;
    *(v15 + 5) = v13;

    if (v6 >= *(v1 + 2))
    {
      goto LABEL_15;
    }

    v8 = &v1[i];
    v9 = *&v1[i];
    *(v8 - 1) = v12;
    *v8 = v11;

LABEL_5:
    ++v4;
    --v6;
    v3 += 16;
    if (v5 == v4)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_6BB50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_80FB8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_147EC(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v23 - v17);
  sub_14F6C(v8, &v23 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = *v18;
    sub_81B28();
    v22 = sub_81198();
    sub_80B98();

    sub_80FA8();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_6BD64(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_6BE58;

  return v6(v2 + 32);
}

uint64_t sub_6BE58()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_6BF6C(void *a1)
{
  v2 = sub_147EC(&unk_B8240, &qword_88F50);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v17 - v4;
  v6 = type metadata accessor for StorageSharedReference(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  sub_80A98();
  *(v9 + 16) = a1;
  swift_getKeyPath();
  v17[1] = v9;
  sub_6C2B4(&qword_B9BC0, type metadata accessor for StorageSharedReference);
  v10 = a1;
  sub_80A68();

  v11 = *(v9 + 16);
  v12 = sub_81AB8();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  sub_81A88();
  v13 = v11;
  v14 = sub_81A78();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v13;
  sub_68AE4(0, 0, v5, &unk_893C8, v15);

  return v9;
}

uint64_t sub_6C188()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_6C1CC()
{
  result = qword_B9BE8;
  if (!qword_B9BE8)
  {
    sub_14E2C(&qword_B9BE0, &unk_8BA00);
    sub_6C2B4(&qword_B9BF0, type metadata accessor for _StorageSettingsPreferencesView);
    sub_14F24(&qword_B85F0, &qword_B85F8, &qword_89738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9BE8);
  }

  return result;
}

uint64_t sub_6C2B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_6C31C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_6C35C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22EB0;

  return sub_69B34(a1, a2, v7, v6);
}

void sub_6C43C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

uint64_t sub_6C474(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_16268;

  return sub_31C44(a1, v4, v5, v6);
}

uint64_t sub_6C528(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22EB0;

  return sub_6BD64(a1, v5);
}

uint64_t sub_6C5E0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_16268;

  return sub_6BD64(a1, v5);
}

uint64_t sub_6C6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_147EC(&qword_B8488, &qword_894D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_6C7A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_147EC(&qword_B8488, &qword_894D0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_6C868()
{
  sub_6C8EC();
  if (v0 <= 0x3F)
  {
    sub_6C944();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_6C8EC()
{
  if (!qword_B8518)
  {
    sub_80B38();
    v0 = sub_80CF8();
    if (!v1)
    {
      atomic_store(v0, &qword_B8518);
    }
  }
}

void sub_6C944()
{
  if (!qword_B9C90)
  {
    type metadata accessor for StorageShared();
    sub_6C2B4(&qword_B7A50, type metadata accessor for StorageShared);
    v0 = sub_80E78();
    if (!v1)
    {
      atomic_store(v0, &qword_B9C90);
    }
  }
}

uint64_t sub_6C9D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_6CA20(uint64_t result, int a2, int a3)
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

uint64_t sub_6CA6C()
{
  sub_14E2C(&qword_B9BC8, &qword_8B9E8);
  sub_14F24(&qword_B9BF8, &qword_B9BC8, &qword_8B9E8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_6CB4C()
{
  v1 = type metadata accessor for _StorageSettingsPreferencesView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_147EC(&qword_B8570, &qword_8A370);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_80B38();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_6CC6C()
{
  v1 = *(type metadata accessor for _StorageSettingsPreferencesView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_6B440(v2);
}

unint64_t sub_6CCCC()
{
  result = qword_B9CF8;
  if (!qword_B9CF8)
  {
    sub_14E2C(&qword_B81C0, &qword_88E98);
    sub_6C2B4(&qword_B9D00, type metadata accessor for DeepLinkParameters);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9CF8);
  }

  return result;
}

uint64_t sub_6CD80(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&qword_B9CD8, &qword_8BC10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_6CDF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_6CE58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_6CEC4()
{
  result = qword_B9D20;
  if (!qword_B9D20)
  {
    sub_14E2C(&qword_B9D08, &qword_8BC78);
    sub_6CF80();
    sub_6C2B4(&qword_B9D30, type metadata accessor for NavigationEventEmissionViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9D20);
  }

  return result;
}

unint64_t sub_6CF80()
{
  result = qword_B9D28;
  if (!qword_B9D28)
  {
    sub_14E2C(&qword_B9CD8, &qword_8BC10);
    sub_14E2C(&qword_B9CC8, &qword_8BC00);
    sub_14E2C(&qword_B81C0, &qword_88E98);
    sub_14E2C(&qword_B9CC0, &qword_8BBF8);
    sub_14F24(&qword_B9CF0, &qword_B9CC0, &qword_8BBF8);
    swift_getOpaqueTypeConformance2();
    sub_6CCCC();
    swift_getOpaqueTypeConformance2();
    sub_6C2B4(&qword_B78E0, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9D28);
  }

  return result;
}

uint64_t sub_6D12C(uint64_t a1)
{
  v2 = v1;
  sub_80A98();
  if (!a1)
  {
    v10 = &_swiftEmptyDictionarySingleton;
LABEL_27:
    *(v2 + 16) = v10;
    v29 = v10[2];

    if (v29 && (v30 = sub_34B30(1752457584, 0xE400000000000000), (v31 & 1) != 0))
    {
      v32 = (v10[7] + 16 * v30);
      v34 = *v32;
      v33 = v32[1];
      v42[0] = v34;
      v42[1] = v33;
      v41[0] = 47;
      v41[1] = 0xE100000000000000;
      sub_14ED0();
      v35 = sub_81BA8();
    }

    else
    {
      v35 = 0;
    }

    *(v2 + 24) = v35;

    return v2;
  }

  v37 = v1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v10 = &_swiftEmptyDictionarySingleton;
  v38 = a1;
  while (v7)
  {
LABEL_12:
    v12 = __clz(__rbit64(v7)) | (v9 << 6);
    sub_3CC30(*(a1 + 48) + 40 * v12, v42);
    sub_22B2C(*(a1 + 56) + 32 * v12, v43);
    sub_3CC30(v42, v41);
    if (!swift_dynamicCast())
    {
      goto LABEL_6;
    }

    sub_22B2C(v43, v41);
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_6;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41[0] = v10;
    v14 = sub_34B30(v39, v40);
    v16 = v10[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      goto LABEL_33;
    }

    v20 = v15;
    if (v10[3] < v19)
    {
      sub_371CC(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_34B30(v39, v40);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_35;
      }

LABEL_19:
      v10 = v41[0];
      if ((v20 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_19;
    }

    v24 = v14;
    sub_390A0();
    v14 = v24;
    v10 = v41[0];
    if ((v20 & 1) == 0)
    {
LABEL_22:
      v10[(v14 >> 6) + 8] |= 1 << v14;
      v25 = (v10[6] + 16 * v14);
      *v25 = v39;
      v25[1] = v40;
      v26 = (v10[7] + 16 * v14);
      *v26 = v39;
      v26[1] = v40;
      v27 = v10[2];
      v18 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v18)
      {
        goto LABEL_34;
      }

      v10[2] = v28;
      goto LABEL_24;
    }

LABEL_20:
    v22 = (v10[7] + 16 * v14);
    v23 = v22[1];
    *v22 = v39;
    v22[1] = v40;

LABEL_24:
    a1 = v38;
LABEL_6:
    v7 &= v7 - 1;
    sub_6D9CC(v42);
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      v2 = v37;
      goto LABEL_27;
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      v9 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_81E38();
  __break(1u);
  return result;
}

uint64_t sub_6D4B4()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = OBJC_IVAR____TtC17StorageSettingsUI18DeepLinkParameters___observationRegistrar;
  v4 = sub_80AA8();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DeepLinkParameters()
{
  result = qword_B9D68;
  if (!qword_B9D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6D5B4()
{
  result = sub_80AA8();
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

uint64_t sub_6D65C(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 24);
  v3 = *(*a2 + 24);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return (v2 | v3) == 0;
  }

  else
  {
    return sub_6D6B0(v2, v3);
  }
}

uint64_t sub_6D6B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_81E18() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_6D740(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (!(a2 >> 62))
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_6D980();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = sub_81D18();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = sub_81D18();
LABEL_26:
        v17 = v16;
        v18 = sub_81B88();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    v22 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_81B88();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_81D88();
  }

  result = sub_81D88();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

unint64_t sub_6D980()
{
  result = qword_B88D0;
  if (!qword_B88D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_B88D0);
  }

  return result;
}

uint64_t sub_6D9CC(uint64_t a1)
{
  v2 = sub_147EC(&qword_B9E50, qword_8BD70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_6DA48(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = type metadata accessor for Application();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_6DB14(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for Application();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AppListView()
{
  result = qword_B9EB0;
  if (!qword_B9EB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_6DC04()
{
  sub_6C944();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Application();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_6DCA4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AppListView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v8 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v12 = v2 + *(v9 + 28);
  if (*(v12 + 130) == 1)
  {
    v13 = *(v12 + 131) ^ 1;
  }

  else
  {
    v13 = 0;
  }

  sub_6F17C(v2, &v22 - v10);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_6F1E4(v11, v15 + v14);
  sub_6F17C(v2, v8);
  v16 = swift_allocObject();
  sub_6F1E4(v8, v16 + v14);
  *a1 = swift_getKeyPath();
  sub_147EC(&qword_B8570, &qword_8A370);
  swift_storeEnumTagMultiPayload();
  v17 = sub_147EC(&qword_B9EE8, &qword_8BE28);
  v18 = v17[9];
  *(a1 + v18) = swift_getKeyPath();
  sub_147EC(&qword_B8680, &unk_895A0);
  result = swift_storeEnumTagMultiPayload();
  *(a1 + v17[10]) = v13 & 1;
  v20 = (a1 + v17[11]);
  *v20 = sub_6F248;
  v20[1] = v15;
  v21 = (a1 + v17[12]);
  *v21 = sub_6F3FC;
  v21[1] = v16;
  return result;
}

uint64_t sub_6DED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for AppListView() + 20);
  sub_1B4B0(a2);
  v4 = sub_80B08();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_6DF64()
{
  sub_147EC(&qword_B9EF0, &qword_8BE68);
  sub_14F24(&qword_B9EF8, &qword_B9EF0, &qword_8BE68);
  sub_432C8();
  return sub_814B8();
}

uint64_t sub_6E038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_81008();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_147EC(&qword_B9F00, &qword_8BEA0);
  return sub_6E090(a1, a2 + *(v4 + 44));
}

uint64_t sub_6E090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v90 = sub_147EC(&qword_B9F08, &qword_8BEA8);
  v3 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90);
  v78 = &v75 - v4;
  v87 = sub_147EC(&qword_B9F10, &unk_8BEB0);
  v5 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87);
  v88 = &v75 - v6;
  v82 = sub_147EC(&qword_B7B68, &unk_8A470);
  v80 = *(v82 - 8);
  v7 = *(v80 + 64);
  __chkstk_darwin(v82);
  v79 = &v75 - v8;
  v85 = sub_147EC(&qword_B9078, &qword_8BEC0);
  v9 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v81 = &v75 - v10;
  v11 = sub_147EC(&qword_B9F18, &qword_8BEC8);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v89 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v84 = &v75 - v15;
  v16 = sub_147EC(&qword_B9F20, &qword_8BED0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v86 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v75 - v20;
  v22 = sub_147EC(&qword_B9F28, &qword_8BED8);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v75 - v25;
  v27 = sub_147EC(&qword_B9F30, &qword_8BEE0);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v83 = &v75 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v75 - v31;
  v33 = a1;
  v34 = a1 + *(type metadata accessor for AppListView() + 20);
  v35 = *(v34 + 64);
  if (v35 != 1 || (v37 = *v34, v36 = *(v34 + 8), *v34 == 0xD000000000000010) && 0x8000000000094710 == v36 || (v38 = *v34, v39 = *(v34 + 8), (sub_81E18() & 1) != 0) || v37 == 0xD000000000000019 && 0x8000000000094730 == v36 || (sub_81E18() & 1) != 0)
  {
    (*(v23 + 56))(v32, 1, 1, v22);
  }

  else
  {
    v76 = sub_81478();
    v92 = v76;
    v94 = 0;
    v95 = 0xE000000000000000;
    v77 = v21;
    sub_81D08(26);

    v94 = 0xD000000000000018;
    v95 = 0x8000000000096D50;
    v98._countAndFlagsBits = v37;
    v98._object = v36;
    sub_81978(v98);
    sub_81398();
    v21 = v77;

    v72 = sub_81448();
    KeyPath = swift_getKeyPath();
    v74 = &v26[*(v22 + 36)];
    *v74 = KeyPath;
    v74[1] = v72;
    sub_5F2F0(v26, v32, &qword_B9F28, &qword_8BED8);
    (*(v23 + 56))(v32, 0, 1, v22);
  }

  *v21 = sub_81058();
  *(v21 + 1) = 0;
  v21[16] = 1;
  v40 = sub_147EC(&qword_B9F38, &qword_8BEE8);
  sub_6EA78(v33, &v21[*(v40 + 44)]);
  if ((v35 - 3) <= 2)
  {
    v41 = v21;
    v42 = v79;
    sub_80D28();
    v94 = 0;
    v95 = 0xE000000000000000;
    sub_81D08(25);

    v94 = 0xD000000000000017;
    v95 = 0x8000000000096D10;
    sub_81978(*v34);
    sub_14F24(&qword_B8760, &qword_B7B68, &unk_8A470);
    v43 = v81;
    v44 = v82;
    sub_81398();

    (*(v80 + 8))(v42, v44);
    v45 = &qword_B9078;
    v46 = &qword_8BEC0;
    sub_14F6C(v43, v88, &qword_B9078, &qword_8BEC0);
    swift_storeEnumTagMultiPayload();
    sub_6F4C0();
    sub_6F5F0();
    v47 = v84;
    sub_810A8();
    v48 = v43;
LABEL_13:
    sub_14FD4(v48, v45, v46);
    v63 = v32;
    v64 = v83;
    sub_14F6C(v32, v83, &qword_B9F30, &qword_8BEE0);
    v65 = v41;
    v66 = v86;
    sub_14F6C(v41, v86, &qword_B9F20, &qword_8BED0);
    v67 = v89;
    sub_14F6C(v47, v89, &qword_B9F18, &qword_8BEC8);
    v68 = v91;
    sub_14F6C(v64, v91, &qword_B9F30, &qword_8BEE0);
    v69 = v47;
    v70 = sub_147EC(&qword_B9F68, &unk_8BF30);
    sub_14F6C(v66, v68 + v70[12], &qword_B9F20, &qword_8BED0);
    v71 = v68 + v70[16];
    *v71 = 0;
    *(v71 + 8) = 1;
    sub_14F6C(v67, v68 + v70[20], &qword_B9F18, &qword_8BEC8);
    sub_14FD4(v69, &qword_B9F18, &qword_8BEC8);
    sub_14FD4(v65, &qword_B9F20, &qword_8BED0);
    sub_14FD4(v63, &qword_B9F30, &qword_8BEE0);
    sub_14FD4(v67, &qword_B9F18, &qword_8BEC8);
    sub_14FD4(v66, &qword_B9F20, &qword_8BED0);
    return sub_14FD4(v64, &qword_B9F30, &qword_8BEE0);
  }

  v49 = *(v34 + 48);
  v50 = *(v34 + 56);
  result = v49 + v50;
  if (!__OFADD__(v49, v50))
  {
    v41 = v21;
    v94 = sub_81E68();
    v95 = v52;
    sub_14ED0();
    v53 = sub_81288();
    v55 = v54;
    v94 = v53;
    v95 = v54;
    v57 = v56 & 1;
    v96 = v56 & 1;
    v97 = v58;
    v92 = 0;
    v93 = 0xE000000000000000;
    sub_81D08(26);

    v92 = 0xD000000000000018;
    v93 = 0x8000000000096CF0;
    sub_81978(*v34);
    v59 = v78;
    sub_81398();

    sub_15034(v53, v55, v57);

    v60 = sub_81448();
    v61 = swift_getKeyPath();
    v62 = (v59 + *(v90 + 36));
    *v62 = v61;
    v62[1] = v60;
    v45 = &qword_B9F08;
    v46 = &qword_8BEA8;
    sub_14F6C(v59, v88, &qword_B9F08, &qword_8BEA8);
    swift_storeEnumTagMultiPayload();
    sub_6F4C0();
    sub_6F5F0();
    v47 = v84;
    sub_810A8();
    v48 = v59;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_6EA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_147EC(&qword_B78C8, &unk_89660);
  v78 = *(v4 - 8);
  v79 = v4;
  v5 = *(v78 + 64);
  __chkstk_darwin(v4);
  v72 = &v67 - v6;
  v7 = sub_147EC(&unk_B8230, qword_88A50);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v67 - v9;
  v11 = sub_80A38();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v75 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_147EC(&qword_B9F70, &qword_8BF40);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v74 = &v67 - v20;
  v21 = (a1 + *(type metadata accessor for AppListView() + 20));
  object = v21[1]._object;
  countAndFlagsBits = v21[1]._countAndFlagsBits;
  v83 = object;
  sub_14ED0();

  v23 = sub_81288();
  v76 = v24;
  v77 = v23;
  v73 = v25;
  v27 = v26;
  v28 = type metadata accessor for Application();
  sub_14F6C(v21 + *(v28 + 72), v10, &unk_B8230, qword_88A50);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_14FD4(v10, &unk_B8230, qword_88A50);
    v29 = 1;
    v30 = v74;
  }

  else
  {
    v67 = v11;
    v68 = v12;
    (*(v12 + 32))();
    v31 = sub_818E8();
    v32 = sub_818E8();
    v33 = STLocalizedString(v31);

    sub_81928();
    v69 = v27;

    sub_147EC(&qword_B7CB0, &qword_88A40);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_886D0;
    v35 = sub_80A28();
    v37 = v36;
    *(v34 + 56) = &type metadata for String;
    *(v34 + 64) = sub_1A83C();
    *(v34 + 32) = v35;
    *(v34 + 40) = v37;
    v38 = sub_81938();
    v40 = v39;

    countAndFlagsBits = v38;
    v83 = v40;
    v41 = sub_81288();
    v43 = v42;
    v45 = v44;
    sub_811F8();
    v46 = sub_81258();
    v70 = v19;
    v71 = a2;
    v48 = v47;
    v50 = v49;

    sub_15034(v41, v43, v45 & 1);

    sub_81448();
    v51 = sub_81228();
    v53 = v52;
    v55 = v54;
    v57 = v56;

    v58 = v50 & 1;
    v59 = v48;
    v19 = v70;
    a2 = v71;
    sub_15034(v46, v59, v58);

    countAndFlagsBits = v51;
    v83 = v53;
    v55 &= 1u;
    v84 = v55;
    v85 = v57;
    v80 = 0;
    v81 = 0xE000000000000000;
    sub_81D08(34);

    v80 = 0xD000000000000020;
    v81 = 0x8000000000096D90;
    sub_81978(*v21);
    v60 = v72;
    sub_81398();

    v61 = v55;
    v27 = v69;
    sub_15034(v51, v53, v61);

    (*(v68 + 8))(v75, v67);
    v30 = v74;
    sub_5F2F0(v60, v74, &qword_B78C8, &unk_89660);
    v29 = 0;
  }

  (*(v78 + 56))(v30, v29, 1, v79);
  sub_14F6C(v30, v19, &qword_B9F70, &qword_8BF40);
  v63 = v76;
  v62 = v77;
  *a2 = v77;
  *(a2 + 8) = v63;
  v64 = v73 & 1;
  *(a2 + 16) = v73 & 1;
  *(a2 + 24) = v27;
  v65 = sub_147EC(&qword_B9F78, qword_8BF48);
  sub_14F6C(v19, a2 + *(v65 + 48), &qword_B9F70, &qword_8BF40);
  sub_16C28(v62, v63, v64);

  sub_14FD4(v30, &qword_B9F70, &qword_8BF40);
  sub_14FD4(v19, &qword_B9F70, &qword_8BF40);
  sub_15034(v62, v63, v64);
}

uint64_t sub_6F0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for AppListView() + 20);
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  v7 = *(v3 + 104);
  v6 = *(v3 + 112);
  v8 = *(v3 + 96);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v8;
  *(a2 + 40) = v7;
  *(a2 + 48) = v6;
  *(a2 + 56) = 2;
  sub_2092C(v4, v5, v8);
}

uint64_t sub_6F17C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppListView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6F1E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppListView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_6F260()
{
  v1 = (type metadata accessor for AppListView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];
  v6 = *(v5 + 8);

  v7 = *(v5 + 24);

  v8 = *(v5 + 40);

  sub_431D4(*(v5 + 80), *(v5 + 88), *(v5 + 96));
  v9 = *(v5 + 112);

  v10 = *(v5 + 120);

  v11 = type metadata accessor for Application();
  v12 = v11[18];
  v13 = sub_80A38();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v5 + v12, 1, v13))
  {
    (*(v14 + 8))(v5 + v12, v13);
  }

  v15 = *(v5 + v11[19] + 8);

  v16 = *(v5 + v11[21]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_6F414(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AppListView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_6F4C0()
{
  result = qword_B9F40;
  if (!qword_B9F40)
  {
    sub_14E2C(&qword_B9078, &qword_8BEC0);
    sub_14F24(&qword_B8760, &qword_B7B68, &unk_8A470);
    sub_6F5A8(&qword_B8738, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9F40);
  }

  return result;
}

uint64_t sub_6F5A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_6F5F0()
{
  result = qword_B9F48;
  if (!qword_B9F48)
  {
    sub_14E2C(&qword_B9F08, &qword_8BEA8);
    sub_6F6A8();
    sub_14F24(&qword_B9F58, &qword_B9F60, &qword_8BF28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9F48);
  }

  return result;
}

unint64_t sub_6F6A8()
{
  result = qword_B9F50;
  if (!qword_B9F50)
  {
    sub_14E2C(&qword_B78C8, &unk_89660);
    sub_6F5A8(&qword_B8738, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9F50);
  }

  return result;
}

uint64_t sub_6F7AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_147EC(&unk_B8240, &qword_88F50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v29[-v6];
  v8 = sub_80C18();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for StorageShared();
  sub_76720(&qword_B7A50, type metadata accessor for StorageShared);
  *a2 = sub_80E68();
  a2[1] = v13;
  v14 = type metadata accessor for DetailView();
  v15 = a2 + v14[6];
  v29[15] = 0;
  sub_814C8();
  v16 = v30;
  *v15 = v29[16];
  *(v15 + 1) = v16;
  sub_7571C(a1, a2 + v14[5], type metadata accessor for Application);
  v17 = *a1;
  v18 = a1[1];
  if (v17 == sub_81928() && v18 == v19)
  {
  }

  else
  {
    v20 = sub_81E18();

    if ((v20 & 1) == 0)
    {
      v24 = 0;
      goto LABEL_7;
    }
  }

  v21 = type metadata accessor for VisionProDataApplicationModel();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  *(v24 + OBJC_IVAR____TtC17StorageSettingsUI29VisionProDataApplicationModel__isVisionProDataSyncedToICloud) = 1;
  sub_80A98();
  sub_80C08();
  (*(v9 + 32))(v24 + OBJC_IVAR____TtC17StorageSettingsUI29VisionProDataApplicationModel_enrollmentAssetService, v12, v8);
  v25 = sub_81AB8();
  (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v24;

  sub_68AE4(0, 0, v7, &unk_8BF90, v26);

LABEL_7:
  v27 = v14[7];
  result = sub_2095C(a1);
  *(a2 + v27) = v24;
  return result;
}

id sub_6FB64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DetailViewWrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DetailView()
{
  result = qword_BA010;
  if (!qword_BA010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6FC20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22EB0;

  return sub_632D4(a1, v4, v5, v6);
}

uint64_t sub_6FCD4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v49 = a2;
  v3 = sub_147EC(&qword_BA080, &qword_8C080);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v43 - v7;
  v9 = sub_147EC(&qword_BA088, &qword_8C088);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v45 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v43 - v13;
  v15 = sub_147EC(&qword_BA090, &qword_8C090);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v43 - v17);
  v19 = sub_147EC(&qword_BA098, &qword_8C098);
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = *(v47 + 64);
  v21 = __chkstk_darwin(v19);
  v46 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v43 - v23;
  v51 = a1;
  sub_71B34(a1, v18);
  sub_147EC(&qword_BA0A0, &qword_8C0A0);
  sub_14F24(&qword_BA0A8, &qword_BA0A0, &qword_8C0A0);
  sub_14F24(&qword_BA0B0, &qword_BA090, &qword_8C090);
  sub_81638();
  v25 = type metadata accessor for DetailView();
  if (*(a1 + *(v25 + 20) + 128) == 1)
  {
    __chkstk_darwin(v25);
    *(&v43 - 2) = a1;
    v52 = sub_1EC08();
    v53 = v26;
    v54 = v27 & 1;
    v55 = v28;
    sub_147EC(&qword_BA0C8, &qword_8C0B8);
    sub_14F24(&qword_BA0D0, &qword_BA0C8, &qword_8C0B8);
    sub_81638();
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = sub_147EC(&qword_BA0B8, &qword_8C0A8);
  (*(*(v30 - 8) + 56))(v14, v29, 1, v30);
  sub_72688(v8);
  v32 = v46;
  v31 = v47;
  v33 = *(v47 + 16);
  v44 = v24;
  v34 = v48;
  v33(v46, v24, v48);
  v35 = v45;
  sub_14F6C(v14, v45, &qword_BA088, &qword_8C088);
  v36 = v50;
  sub_14F6C(v8, v50, &qword_BA080, &qword_8C080);
  v43 = v14;
  v37 = v8;
  v38 = v35;
  v39 = v49;
  v33(v49, v32, v34);
  v40 = sub_147EC(&qword_BA0C0, &qword_8C0B0);
  sub_14F6C(v38, &v39[*(v40 + 48)], &qword_BA088, &qword_8C088);
  sub_14F6C(v36, &v39[*(v40 + 64)], &qword_BA080, &qword_8C080);
  sub_14FD4(v37, &qword_BA080, &qword_8C080);
  sub_14FD4(v43, &qword_BA088, &qword_8C088);
  v41 = *(v31 + 8);
  v41(v44, v34);
  sub_14FD4(v36, &qword_BA080, &qword_8C080);
  sub_14FD4(v38, &qword_BA088, &qword_8C088);
  return (v41)(v32, v34);
}

uint64_t sub_70264@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v66 = a2;
  v3 = sub_147EC(&qword_BA1B8, &qword_8C1A0);
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = *(v62 + 64);
  __chkstk_darwin(v3);
  v61 = &v60 - v5;
  v6 = sub_147EC(&qword_BA1C0, &qword_8C1A8);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v75 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v76 = &v60 - v10;
  v11 = *(type metadata accessor for DetailView() + 20);
  v67 = a1;
  v12 = (a1 + v11);
  v14 = *(a1 + v11 + 80);
  v13 = *(a1 + v11 + 88);
  v77 = *(v12 + 96);
  v15 = v12[14];
  v74 = v12[13];
  v16 = v12[3];
  v72 = v12[2];
  v17 = v12[5];
  v70 = v12[4];
  v65 = *(v12 + 64);
  v18 = *v12;
  v19 = v12[1];
  v21 = v18 == sub_81928() && v19 == v20;
  v73 = v15;
  v71 = v16;
  v69 = v14;
  v64 = v17;
  if (v21)
  {
    sub_2092C(v14, v13, v77);

    goto LABEL_8;
  }

  v22 = sub_81E18();
  sub_2092C(v14, v13, v77);

  if (v22)
  {
LABEL_8:
    *&v162[0] = *(v12 + *(type metadata accessor for Application() + 84));

    sub_147EC(&qword_B8268, &qword_88FA0);
    sub_147EC(&qword_BA210, &qword_8C1F0);
    sub_14F24(&qword_BA218, &qword_B8268, &qword_88FA0);
    sub_761F8();
    sub_762D0();
    v23 = v61;
    sub_81608();
    v24 = v62;
    v25 = v76;
    v26 = v23;
    v27 = v63;
    (*(v62 + 32))(v76, v26, v63);
    (*(v24 + 56))(v25, 0, 1, v27);
    goto LABEL_9;
  }

  (*(v62 + 56))(v76, 1, 1, v63);
LABEL_9:
  v68 = v13;
  if (v12[7] && v12[6])
  {
    v28 = sub_81008();
    LOBYTE(v93) = 1;
    v29 = v67;
    sub_715B4(v67, v162);
    v123 = v162[2];
    v124 = v162[3];
    v125 = v162[4];
    v121 = v162[0];
    v122 = v162[1];
    v126[2] = v162[2];
    v126[3] = v162[3];
    v126[4] = v162[4];
    v126[1] = v162[1];
    v126[0] = v162[0];
    sub_14F6C(&v121, &v153, &qword_BA1C8, &qword_8C1B0);
    sub_14FD4(v126, &qword_BA1C8, &qword_8C1B0);
    *(v162 + 7) = v121;
    *(&v162[1] + 7) = v122;
    *(&v162[4] + 7) = v125;
    *(&v162[3] + 7) = v124;
    *(&v162[2] + 7) = v123;
    v127 = v28;
    v128[0] = v93;
    *&v128[17] = v162[1];
    *&v128[1] = v162[0];
    *&v128[80] = *(&v125 + 1);
    *&v128[65] = v162[4];
    *&v128[49] = v162[3];
    *&v128[33] = v162[2];
    v30 = sub_81008();
    LOBYTE(v93) = 1;
    sub_71774(v29, v162);
    v131 = v162[2];
    v132 = v162[3];
    v133 = v162[4];
    v130 = v162[1];
    v129 = v162[0];
    v134[2] = v162[2];
    v134[3] = v162[3];
    v134[4] = v162[4];
    v134[1] = v162[1];
    v134[0] = v162[0];
    sub_14F6C(&v129, &v153, &qword_BA1C8, &qword_8C1B0);
    sub_14FD4(v134, &qword_BA1C8, &qword_8C1B0);
    *(v162 + 7) = v129;
    *(&v162[1] + 7) = v130;
    *(&v162[4] + 7) = v133;
    *(&v162[3] + 7) = v132;
    *(&v162[2] + 7) = v131;
    v135[0] = v30;
    v135[1] = 0;
    v136[0] = v93;
    *&v136[17] = v162[1];
    *&v136[1] = v162[0];
    *&v136[80] = *(&v133 + 1);
    *&v136[65] = v162[4];
    *&v136[49] = v162[3];
    *&v136[33] = v162[2];
    v118 = *&v128[48];
    v119 = *&v128[64];
    v114 = v127;
    v115 = *v128;
    v116 = *&v128[16];
    v117 = *&v128[32];
    v147 = *v136;
    v146 = v30;
    v151 = *&v136[64];
    v150 = *&v136[48];
    v148 = *&v136[16];
    v149 = *&v136[32];
    v137[1] = *v128;
    v137[0] = v127;
    v137[5] = *&v128[64];
    v137[4] = *&v128[48];
    v137[2] = *&v128[16];
    v137[3] = *&v128[32];
    v107 = v127;
    v108 = *v128;
    v111 = *&v128[48];
    v112 = *&v128[64];
    v109 = *&v128[16];
    v110 = *&v128[32];
    v140 = *v136;
    v139 = v30;
    v144 = *&v136[64];
    v143 = *&v136[48];
    v141 = *&v136[16];
    v142 = *&v136[32];
    *(&v113[2] + 8) = *&v136[16];
    *(&v113[1] + 8) = *v136;
    v120 = *&v128[80];
    v152 = *&v136[80];
    v138 = *&v128[80];
    v145 = *&v136[80];
    *(v113 + 8) = v30;
    *&v113[0] = *&v128[80];
    *(&v113[6] + 1) = *&v136[80];
    *(&v113[5] + 8) = *&v136[64];
    *(&v113[4] + 8) = *&v136[48];
    *(&v113[3] + 8) = *&v136[32];
    sub_14F6C(&v127, v162, &qword_BA1D0, &qword_8C1B8);
    sub_14F6C(v135, v162, &qword_BA1D0, &qword_8C1B8);
    sub_14F6C(v137, v162, &qword_BA1D0, &qword_8C1B8);
    sub_14F6C(&v139, v162, &qword_BA1D0, &qword_8C1B8);
    sub_14FD4(&v146, &qword_BA1D0, &qword_8C1B8);
    v83 = v118;
    v84 = v119;
    *&v85 = v120;
    v79 = v114;
    v80 = v115;
    v81 = v116;
    v82 = v117;
    sub_14FD4(&v79, &qword_BA1D0, &qword_8C1B8);
    v158 = v113[4];
    v159 = v113[5];
    v160 = v113[6];
    v154[5] = v113[0];
    v155 = v113[1];
    v157 = v113[3];
    v156 = v113[2];
    v154[1] = v109;
    v154[2] = v110;
    v154[4] = v112;
    v154[3] = v111;
    v154[0] = v108;
    v153 = v107;
    sub_76114(&v153);
    v167 = v158;
    v168 = v159;
    v169 = v160;
    v170 = v161;
    v163 = v154[5];
    v164 = v155;
    v165 = v156;
    v166 = v157;
    v162[2] = v154[1];
    v162[3] = v154[2];
    v162[4] = v154[3];
    v162[5] = v154[4];
    v162[0] = v153;
    v162[1] = v154[0];
    sub_147EC(&qword_BA1D8, &qword_8C1C0);
    sub_147EC(&qword_BA1E0, &qword_8C1C8);
    sub_14F24(&qword_BA1E8, &qword_BA1D8, &qword_8C1C0);
    sub_14F24(&qword_BA1F0, &qword_BA1E0, &qword_8C1C8);
    sub_810A8();
    sub_14FD4(v135, &qword_BA1D0, &qword_8C1B8);
    sub_14FD4(&v127, &qword_BA1D0, &qword_8C1B8);
    v167 = v103;
    v168 = v104;
    v169 = v105;
    v170 = v106;
    v163 = v99;
    v164 = v100;
    v165 = v101;
    v166 = v102;
    v162[2] = v95;
    v162[3] = v96;
    v162[4] = v97;
    v162[5] = v98;
    v162[0] = v93;
    v162[1] = v94;
  }

  else
  {
    v31 = sub_81008();
    LOBYTE(v93) = 1;
    sub_7112C(v67, v162);
    v148 = v162[2];
    v149 = v162[3];
    v150 = v162[4];
    *&v151 = *&v162[5];
    v146 = v162[0];
    v147 = v162[1];
    *&v84 = *&v162[5];
    v81 = v162[2];
    v82 = v162[3];
    v83 = v162[4];
    v79 = v162[0];
    v80 = v162[1];
    sub_14F6C(&v146, &v153, &qword_BA208, &unk_8C1E0);
    sub_14FD4(&v79, &qword_BA208, &unk_8C1E0);
    *(&v78[2] + 7) = v148;
    *(&v78[3] + 7) = v149;
    *(&v78[4] + 7) = v150;
    *(&v78[5] + 7) = v151;
    *(v78 + 7) = v146;
    *(&v78[1] + 7) = v147;
    v153 = v31;
    LOBYTE(v154[0]) = v93;
    *(&v154[1] + 1) = v78[1];
    *(v154 + 1) = v78[0];
    v154[5] = *(&v78[4] + 15);
    *(&v154[4] + 1) = v78[4];
    *(&v154[3] + 1) = v78[3];
    *(&v154[2] + 1) = v78[2];
    sub_761F0(&v153);
    v103 = v158;
    v104 = v159;
    v105 = v160;
    v106 = v161;
    v99 = v154[5];
    v100 = v155;
    v101 = v156;
    v102 = v157;
    v95 = v154[1];
    v96 = v154[2];
    v97 = v154[3];
    v98 = v154[4];
    v93 = v153;
    v94 = v154[0];
    sub_147EC(&qword_BA1D8, &qword_8C1C0);
    sub_147EC(&qword_BA1E0, &qword_8C1C8);
    sub_14F24(&qword_BA1E8, &qword_BA1D8, &qword_8C1C0);
    sub_14F24(&qword_BA1F0, &qword_BA1E0, &qword_8C1C8);
    sub_810A8();
  }

  v32 = v65 == 1;
  v65 = v65 == 1;
  sub_71938(&v153);
  v67 = *(&v153 + 1);
  v63 = v153;
  v33 = *&v154[0];
  LODWORD(v62) = BYTE8(v154[0]);
  v34 = v75;
  sub_14F6C(v76, v75, &qword_BA1C0, &qword_8C1A8);
  v89 = v167;
  v90 = v168;
  v91 = v169;
  v92 = v170;
  v85 = v163;
  v86 = v164;
  v87 = v165;
  v88 = v166;
  v81 = v162[2];
  v82 = v162[3];
  v83 = v162[4];
  v84 = v162[5];
  v79 = v162[0];
  v80 = v162[1];
  *&v139 = v69;
  *(&v139 + 1) = v68;
  LOBYTE(v140) = v77;
  *(&v140 + 1) = v172[0];
  DWORD1(v140) = *(v172 + 3);
  *(&v140 + 1) = v74;
  *&v141 = v73;
  *(&v141 + 1) = v72;
  *&v142 = v71;
  *(&v142 + 1) = v70;
  v35 = v64;
  *&v143 = v64;
  BYTE8(v143) = v32;
  *(&v143 + 9) = *v171;
  HIDWORD(v143) = *&v171[3];
  v144 = 0uLL;
  v36 = v142;
  v37 = v66;
  v66[2] = v141;
  v37[3] = v36;
  v38 = v144;
  v37[4] = v143;
  v37[5] = v38;
  v39 = v140;
  *v37 = v139;
  v37[1] = v39;
  v40 = sub_147EC(&qword_BA1F8, &qword_8C1D0);
  sub_14F6C(v34, v37 + v40[12], &qword_BA1C0, &qword_8C1A8);
  v41 = v40[16];
  v42 = v90;
  v103 = v89;
  v104 = v90;
  v43 = v91;
  v105 = v91;
  v44 = v85;
  v45 = v86;
  v99 = v85;
  v100 = v86;
  v46 = v87;
  v47 = v88;
  v101 = v87;
  v102 = v88;
  v48 = v83;
  v49 = v84;
  v97 = v83;
  v98 = v84;
  v50 = v81;
  v51 = v82;
  v95 = v81;
  v96 = v82;
  v52 = v79;
  v53 = v80;
  v93 = v79;
  v94 = v80;
  v54 = v37 + v41;
  *(v54 + 10) = v89;
  *(v54 + 11) = v42;
  *(v54 + 12) = v43;
  *(v54 + 6) = v44;
  *(v54 + 7) = v45;
  *(v54 + 8) = v46;
  *(v54 + 9) = v47;
  *(v54 + 2) = v50;
  *(v54 + 3) = v51;
  *(v54 + 4) = v48;
  *(v54 + 5) = v49;
  v106 = v92;
  v54[208] = v92;
  *v54 = v52;
  *(v54 + 1) = v53;
  v55 = v37 + v40[20];
  v56 = v63;
  v57 = v67;
  *v55 = v63;
  *(v55 + 1) = v57;
  *(v55 + 2) = v33;
  v58 = v62;
  v55[24] = v62;
  sub_76120(&v139, &v153);
  sub_14F6C(&v93, &v153, &qword_BA200, &qword_8C1D8);
  sub_7617C(v56, v57, v33, v58);
  sub_14FD4(v76, &qword_BA1C0, &qword_8C1A8);
  sub_7618C(v56, v57, v33, v58);
  v158 = v89;
  v159 = v90;
  v160 = v91;
  v161 = v92;
  v154[5] = v85;
  v155 = v86;
  v156 = v87;
  v157 = v88;
  v154[1] = v81;
  v154[2] = v82;
  v154[3] = v83;
  v154[4] = v84;
  v153 = v79;
  v154[0] = v80;
  sub_14FD4(&v153, &qword_BA200, &qword_8C1D8);
  sub_14FD4(v75, &qword_BA1C0, &qword_8C1A8);
  *&v146 = v69;
  *(&v146 + 1) = v68;
  LOBYTE(v147) = v77;
  *(&v147 + 1) = v172[0];
  DWORD1(v147) = *(v172 + 3);
  *(&v147 + 1) = v74;
  *&v148 = v73;
  *(&v148 + 1) = v72;
  *&v149 = v71;
  *(&v149 + 1) = v70;
  *&v150 = v35;
  BYTE8(v150) = v65;
  *(&v150 + 9) = *v171;
  HIDWORD(v150) = *&v171[3];
  v151 = 0uLL;
  return sub_7619C(&v146);
}

uint64_t sub_7110C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  if (!v4)
  {
    v3 = 0;
    v2 = 0;
  }

  *a2 = v3;
  a2[1] = v4;
  a2[2] = v2;
}

uint64_t sub_7112C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for DetailView() + 20));
  if (*(v3[15] + 16))
  {
    v4 = sub_818E8();
    v5 = sub_818E8();
    v6 = STLocalizedString(v4);

    v7 = sub_81928();
    v9 = v8;

    *&v28 = v7;
    *(&v28 + 1) = v9;
    sub_14ED0();
    sub_81288();
  }

  else
  {
    v10 = *v3;
    v11 = v3[1];
    if (v10 != sub_81928() || v11 != v12)
    {
      sub_81E18();
    }

    v14 = sub_818E8();
    v15 = sub_818E8();
    v16 = STLocalizedString(v14);

    v17 = sub_81928();
    v19 = v18;

    *&v28 = v17;
    *(&v28 + 1) = v19;
    sub_14ED0();
    sub_81288();
    sub_810A8();
  }

  sub_147EC(&qword_BA238, &qword_8C1F8);
  sub_76324();
  result = sub_810A8();
  if (__OFADD__(v3[6], v3[7]))
  {
    __break(1u);
  }

  else
  {
    sub_763A0(v28, *(&v28 + 1), v29, *(&v29 + 1), v30, v31);
    sub_81E68();
    sub_14ED0();
    v21 = sub_81288();
    v27 = v22;
    v24 = v23;
    v26 = v25;
    sub_763A0(v28, *(&v28 + 1), v29, *(&v29 + 1), v30, v31);
    v24 &= 1u;
    sub_16C28(v21, v27, v24);

    sub_76430(v28, *(&v28 + 1), v29, *(&v29 + 1), v30, v31);
    *a2 = v28;
    *(a2 + 16) = v29;
    *(a2 + 32) = v30;
    *(a2 + 33) = v31;
    *(a2 + 40) = 0;
    *(a2 + 48) = 1;
    *(a2 + 56) = v21;
    *(a2 + 64) = v27;
    *(a2 + 72) = v24;
    *(a2 + 80) = v26;
    sub_15034(v21, v27, v24);

    return sub_76430(v28, *(&v28 + 1), v29, *(&v29 + 1), v30, v31);
  }

  return result;
}

uint64_t sub_715B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_818E8();
  v5 = sub_818E8();
  v6 = STLocalizedString(v4);

  sub_81928();
  sub_14ED0();
  v7 = sub_81288();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = *(a1 + *(type metadata accessor for DetailView() + 20) + 48);
  sub_81E68();
  v15 = sub_81288();
  v17 = v16;
  v18 = v11 & 1;
  v23 = v11 & 1;
  v20 = v19 & 1;
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v18;
  *(a2 + 24) = v13;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v15;
  *(a2 + 56) = v16;
  *(a2 + 64) = v19 & 1;
  *(a2 + 72) = v21;
  sub_16C28(v7, v9, v18);

  sub_16C28(v15, v17, v20);

  sub_15034(v15, v17, v20);

  sub_15034(v7, v9, v23);
}

uint64_t sub_71774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_818E8();
  v5 = sub_818E8();
  v6 = STLocalizedString(v4);

  sub_81928();
  sub_14ED0();
  v7 = sub_81288();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = *(a1 + *(type metadata accessor for DetailView() + 20) + 56);
  sub_81E68();
  v15 = sub_81288();
  v17 = v16;
  v18 = v11 & 1;
  v23 = v11 & 1;
  v20 = v19 & 1;
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v18;
  *(a2 + 24) = v13;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v15;
  *(a2 + 56) = v16;
  *(a2 + 64) = v19 & 1;
  *(a2 + 72) = v21;
  sub_16C28(v7, v9, v18);

  sub_16C28(v15, v17, v20);

  sub_15034(v15, v17, v20);

  sub_15034(v7, v9, v23);
}

uint64_t sub_71938@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for DetailView() + 20));
  v4 = *v3;
  v5 = v3[1];
  if (sub_81928() == v4 && v6 == v5)
  {
  }

  else
  {
    v8 = sub_81E18();

    if ((v8 & 1) == 0)
    {
LABEL_14:
      sub_7627C();
      result = sub_810A8();
      *a1 = v18;
      *(a1 + 16) = v19;
      *(a1 + 24) = v20;
      return result;
    }
  }

  if (qword_B7848 != -1)
  {
    result = swift_once();
  }

  v10 = v3[6];
  v11 = v3[7];
  v12 = v10 + v11;
  if (!__OFADD__(v10, v11))
  {
    v13 = [objc_opt_self() mainICloudDriveDomainID];
    if (v13)
    {
      v14 = v13;
      sub_2160C(v13, v12);
    }

    v15 = sub_818E8();
    v16 = sub_818E8();
    v17 = STLocalizedString(v15);

    sub_81928();
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_71B34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v51 = sub_147EC(&qword_BA198, &qword_8C150);
  v49 = *(v51 - 8);
  v4 = *(v49 + 64);
  __chkstk_darwin(v51);
  v47 = &v43[-v5];
  v6 = sub_147EC(&qword_BA1A0, &qword_8C158);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v50 = &v43[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v11 = &v43[-v10];
  v12 = type metadata accessor for DetailView();
  v13 = *(v12 + 20);
  v48 = a1;
  v14 = (a1 + v13);
  v15 = (a1 + v13 + *(type metadata accessor for Application() + 76));
  v16 = v15[1];
  if (v16)
  {
    v52 = *v15;
    v53 = v16;
    sub_14ED0();

    v17 = sub_81288();
    v19 = v18;
    v21 = v20;
    v23 = v22 & 1;
    sub_16C28(v17, v18, v22 & 1);
  }

  else
  {
    v17 = 0;
    v19 = 0;
    v23 = 0;
    v21 = 0;
  }

  v25 = *v14;
  v24 = v14[1];
  if (v25 == sub_81928() && v24 == v26)
  {
  }

  else
  {
    v28 = sub_81E18();

    if ((v28 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v29 = *(v48 + *(v12 + 28));
  if (!v29)
  {
LABEL_17:
    v39 = 1;
    goto LABEL_18;
  }

  swift_getKeyPath();
  v52 = v29;
  sub_76720(&qword_B9890, type metadata accessor for VisionProDataApplicationModel);

  sub_80A68();

  if (*(v29 + OBJC_IVAR____TtC17StorageSettingsUI29VisionProDataApplicationModel__isVisionProDataSyncedToICloud) != 1)
  {

    goto LABEL_17;
  }

  if (qword_B78A8 != -1)
  {
    swift_once();
  }

  sub_81028();
  v30 = sub_81278();
  v45 = v31;
  v46 = v30;
  v44 = v32;
  v48 = v33;
  KeyPath = swift_getKeyPath();
  v35 = v47;
  v36 = &v47[*(v51 + 36)];
  v37 = *(sub_147EC(&qword_BA1B0, &qword_8C198) + 28);
  sub_80D88();

  *v36 = KeyPath;
  v38 = v45;
  *v35 = v46;
  *(v35 + 8) = v38;
  *(v35 + 16) = v44 & 1;
  *(v35 + 24) = v48;
  sub_760A4(v35, v11);
  v39 = 0;
LABEL_18:
  (*(v49 + 56))(v11, v39, 1, v51);
  v40 = v50;
  sub_14F6C(v11, v50, &qword_BA1A0, &qword_8C158);
  *a2 = v17;
  a2[1] = v19;
  a2[2] = v23;
  a2[3] = v21;
  v41 = sub_147EC(&qword_BA1A8, &qword_8C160);
  sub_14F6C(v40, a2 + *(v41 + 48), &qword_BA1A0, &qword_8C158);
  sub_4E778(v17, v19, v23, v21);
  sub_4E7BC(v17, v19, v23, v21);
  sub_14FD4(v11, &qword_BA1A0, &qword_8C158);
  sub_14FD4(v40, &qword_BA1A0, &qword_8C158);
  return sub_4E7BC(v17, v19, v23, v21);
}

uint64_t sub_71FFC(uint64_t a1)
{
  v2 = sub_80D98();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_80F58();
}

uint64_t sub_720C4()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v2 = v0;
    sub_809A8(v1);
    v4 = v3;
    sub_3B59C(_swiftEmptyArrayStorage);
    isa = sub_81828().super.isa;

    [v2 openSensitiveURL:v4 withOptions:isa];
  }

  else
  {
    __break(1u);
  }

  return static OpenURLAction.Result.handled.getter();
}

uint64_t sub_721A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_81008();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_147EC(&qword_BA0D8, &qword_8C0C0);
  return sub_721F8(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_721F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for DetailView();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_147EC(&qword_B8780, &qword_8B7E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v27 - v7;
  v9 = sub_147EC(&qword_B86B0, &qword_88500);
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  sub_80C98();
  v17 = sub_80CB8();
  (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
  sub_7571C(a1, &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetailView);
  v18 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v19 = swift_allocObject();
  sub_75784(&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for DetailView);
  v29 = a1;
  sub_81518();
  v20 = v10[2];
  v20(v14, v16, v9);
  v21 = v28;
  *v28 = 0;
  *(v21 + 8) = 1;
  v22 = v21;
  v23 = sub_147EC(&qword_BA0E0, &qword_8C0C8);
  v20(&v22[*(v23 + 48)], v14, v9);
  v24 = &v22[*(v23 + 64)];
  *v24 = 0;
  v24[8] = 1;
  v25 = v10[1];
  v25(v16, v9);
  return (v25)(v14, v9);
}

void sub_7253C(uint64_t a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = (a1 + *(type metadata accessor for DetailView() + 20));
    v3 = *v2;
    v4 = v2[1];
    v6 = v1;
    sub_23040(v3, v4);
  }

  else
  {
    v5 = *(a1 + 8);
    type metadata accessor for StorageShared();
    sub_76720(&qword_B7A50, type metadata accessor for StorageShared);
    sub_80E58();
    __break(1u);
  }
}

uint64_t sub_72614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for DetailView() + 20);
  sub_1EB24();
  sub_14ED0();
  result = sub_81288();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_72688@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v70 = type metadata accessor for Application();
  v2 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v67 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_147EC(&qword_BA0E8, &qword_8C0D0);
  v4 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v68 = &v66 - v5;
  v76 = sub_147EC(&qword_BA0F0, &qword_8C0D8);
  v6 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v77 = &v66 - v7;
  v84 = sub_147EC(&qword_BA0F8, &qword_8C0E0);
  v8 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84);
  v10 = &v66 - v9;
  v73 = sub_147EC(&qword_BA100, &qword_8C0E8);
  v72 = *(v73 - 8);
  v11 = *(v72 + 64);
  __chkstk_darwin(v73);
  v69 = &v66 - v12;
  v75 = sub_147EC(&qword_BA108, &qword_8C0F0);
  v13 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v74 = &v66 - v14;
  v87 = sub_147EC(&qword_BA110, &qword_8C0F8);
  v15 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87);
  v88 = &v66 - v16;
  v81 = sub_147EC(&qword_BA118, &qword_8C100);
  v17 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81);
  v83 = &v66 - v18;
  v79 = sub_147EC(&qword_BA120, &qword_8C108);
  v19 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v21 = (&v66 - v20);
  v82 = sub_147EC(&qword_BA128, &qword_8C110);
  v22 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82);
  v80 = &v66 - v23;
  v86 = sub_147EC(&qword_BA130, &qword_8C118);
  v24 = *(*(v86 - 8) + 64);
  __chkstk_darwin(v86);
  v85 = &v66 - v25;
  v26 = sub_147EC(&qword_BA138, &qword_8C120);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v66 - v29;
  v31 = type metadata accessor for DetailView();
  v32 = *(v31 + 20);
  v71 = v1;
  v33 = v1 + v32;
  v35 = *(v1 + v32);
  v34 = *(v1 + v32 + 8);
  if (sub_81928() != v35 || v36 != v34)
  {
    v66 = v10;
    v37 = sub_81E18();

    if (v37)
    {
      goto LABEL_5;
    }

    if (sub_81928() == v35 && v41 == v34)
    {
    }

    else
    {
      v43 = sub_81E18();

      if ((v43 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    if (_IsInternalInstall(v42))
    {
      v44 = *(v33 + *(v70 + 84));
      v90 = 0;
      v91 = 0xE000000000000000;

      sub_814C8();
      v45 = v92;
      v46 = v93;
      v47 = v94;
      *v21 = v44;
      v21[1] = v45;
      v21[2] = v46;
      v21[3] = v47;
      swift_storeEnumTagMultiPayload();
      sub_75EDC(&qword_BA150, &qword_BA138, &qword_8C120, sub_75CF8);
      sub_75D4C();

      v48 = v80;
      sub_810A8();
      sub_14F6C(v48, v83, &qword_BA128, &qword_8C110);
      swift_storeEnumTagMultiPayload();
      sub_75C40();
      sub_75DA0();
      v49 = v85;
      sub_810A8();
      sub_14FD4(v48, &qword_BA128, &qword_8C110);
      sub_14F6C(v49, v88, &qword_BA130, &qword_8C118);
      swift_storeEnumTagMultiPayload();
      sub_75BB4();
      sub_810A8();

      return sub_14FD4(v49, &qword_BA130, &qword_8C118);
    }

LABEL_13:
    if (sub_81928() == v35 && v50 == v34)
    {

      v51 = v66;
    }

    else
    {
      v52 = sub_81E18();

      v51 = v66;
      if ((v52 & 1) == 0)
      {
        if (sub_81928() == v35 && v58 == v34)
        {
        }

        else
        {
          v64 = sub_81E18();

          if ((v64 & 1) == 0)
          {
            swift_storeEnumTagMultiPayload();
            sub_75BB4();
            return sub_810A8();
          }
        }

        v65 = v67;
        sub_7571C(v33, v67, type metadata accessor for Application);
        v54 = v68;
        sub_43D78(v65, v68);
        v61 = &qword_BA0E8;
        v62 = &qword_8C0D0;
        sub_14F6C(v54, v77, &qword_BA0E8, &qword_8C0D0);
LABEL_27:
        swift_storeEnumTagMultiPayload();
        sub_75E2C();
        sub_75FB8();
        sub_810A8();
        sub_14F6C(v51, v83, &qword_BA0F8, &qword_8C0E0);
        swift_storeEnumTagMultiPayload();
        sub_75C40();
        sub_75DA0();
        v63 = v85;
        sub_810A8();
        sub_14FD4(v51, &qword_BA0F8, &qword_8C0E0);
        sub_14F6C(v63, v88, &qword_BA130, &qword_8C118);
        swift_storeEnumTagMultiPayload();
        sub_75BB4();
        sub_810A8();
        sub_14FD4(v63, &qword_BA130, &qword_8C118);
        return sub_14FD4(v54, v61, v62);
      }
    }

    v53 = *(v71 + *(v31 + 28));
    if (v53)
    {
      swift_getKeyPath();
      v92 = v53;
      sub_76720(&qword_B9890, type metadata accessor for VisionProDataApplicationModel);

      sub_80A68();

      v54 = v74;
      if ((*(v53 + OBJC_IVAR____TtC17StorageSettingsUI29VisionProDataApplicationModel__isVisionProDataSyncedToICloud) & 1) == 0)
      {
        sub_75F64();
        v59 = v69;
        sub_81628();

        v57 = v72;
        v60 = v73;
        (*(v72 + 32))(v54, v59, v73);
        v56 = v60;
        v55 = 0;
        goto LABEL_26;
      }

      v55 = 1;
    }

    else
    {
      v55 = 1;
      v54 = v74;
    }

    v56 = v73;
    v57 = v72;
LABEL_26:
    (*(v57 + 56))(v54, v55, 1, v56);
    v61 = &qword_BA108;
    v62 = &qword_8C0F0;
    sub_14F6C(v54, v77, &qword_BA108, &qword_8C0F0);
    goto LABEL_27;
  }

LABEL_5:
  sub_75CF8();
  sub_81628();
  (*(v27 + 16))(v21, v30, v26);
  swift_storeEnumTagMultiPayload();
  sub_75EDC(&qword_BA150, &qword_BA138, &qword_8C120, sub_75CF8);
  sub_75D4C();
  v38 = v80;
  sub_810A8();
  sub_14F6C(v38, v83, &qword_BA128, &qword_8C110);
  swift_storeEnumTagMultiPayload();
  sub_75C40();
  sub_75DA0();
  v39 = v85;
  sub_810A8();
  sub_14FD4(v38, &qword_BA128, &qword_8C110);
  sub_14F6C(v39, v88, &qword_BA130, &qword_8C118);
  swift_storeEnumTagMultiPayload();
  sub_75BB4();
  sub_810A8();
  sub_14FD4(v39, &qword_BA130, &qword_8C118);
  return (*(v27 + 8))(v30, v26);
}

uint64_t sub_733AC(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(sub_147EC(&unk_B8240, &qword_88F50) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  sub_81A88();
  v1[4] = sub_81A78();
  v4 = sub_81A58();

  return _swift_task_switch(sub_7347C, v4, v3);
}

uint64_t sub_7347C()
{
  v1 = v0[4];
  v2 = v0[2];

  v3 = type metadata accessor for DetailView();
  v4 = (v2 + *(v3 + 20));
  v5 = *v4;
  v6 = v4[1];
  if (v5 == sub_81928() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_81E18();

    if ((v9 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v10 = *(v0[2] + *(v3 + 28));
  if (v10)
  {
    v11 = v0[3];
    v12 = sub_81AB8();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v10;

    sub_68AE4(0, 0, v11, &unk_8B518, v13);
  }

LABEL_10:
  v14 = v0[3];

  v15 = v0[1];

  return v15();
}

uint64_t sub_73604@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StorageShared();
  sub_76720(&qword_B7A50, type metadata accessor for StorageShared);
  result = sub_80E68();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_73674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_814C8();
  *a2 = a1;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
}

uint64_t sub_736D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = *(a1 - 8);
  v4 = *(v17 + 64);
  __chkstk_darwin(a1 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_147EC(&qword_BA058, &qword_8C050);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  v18 = v2;
  sub_147EC(&qword_BA060, &qword_8C058);
  sub_14F24(&qword_BA068, &qword_BA060, &qword_8C058);
  sub_81218();
  sub_14F24(&qword_BA070, &qword_BA058, &qword_8C050);
  sub_812A8();
  (*(v7 + 8))(v10, v6);
  sub_7571C(v2, v5, type metadata accessor for DetailView);
  v11 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v12 = swift_allocObject();
  sub_75784(v5, v12 + v11, type metadata accessor for DetailView);
  v13 = (a2 + *(sub_147EC(&qword_BA078, &unk_8C070) + 36));
  v14 = v13 + *(sub_80DA8() + 20);
  result = sub_81A98();
  *v13 = &unk_8C068;
  v13[1] = v12;
  return result;
}

uint64_t sub_73978(void *a1)
{
  sub_147EC(&qword_BA260, &qword_8C348);
  sub_814D8();
  if (v26)
  {
    v2 = 0;
  }

  else
  {
    v2 = v27 == 0xE000000000000000;
  }

  if (v2)
  {

    goto LABEL_22;
  }

  v3 = sub_81E18();

  if (v3)
  {
LABEL_22:

    return a1;
  }

  v5 = a1[2];
  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = 0;
  v7 = a1 + 8;
  a1 = _swiftEmptyArrayStorage;
  v23 = v7;
  do
  {
    v24 = a1;
    v8 = &v7[5 * v6];
    v9 = v6;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_26:
        __break(1u);
        return result;
      }

      if (__OFADD__(v9, 1))
      {
        goto LABEL_26;
      }

      v25 = v9 + 1;
      v10 = v5;
      v11 = *(v8 - 1);
      v12 = *v8;
      v14 = *(v8 - 3);
      v13 = *(v8 - 2);
      v15 = *(v8 - 4);

      swift_bridgeObjectRetain_n();
      sub_814D8();
      sub_14ED0();
      v16 = sub_81BC8();

      if (v16)
      {
        break;
      }

      ++v9;
      v8 += 5;
      v5 = v10;
      if (v25 == v10)
      {
        return v24;
      }
    }

    v17 = v24;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_34F44(0, v24[2] + 1, 1);
      v17 = v24;
    }

    v7 = v23;
    v18 = v11;
    v19 = v13;
    v21 = v17[2];
    v20 = v17[3];
    if (v21 >= v20 >> 1)
    {
      result = sub_34F44((v20 > 1), v21 + 1, 1);
      v19 = v13;
      v18 = v11;
      v17 = v24;
    }

    v17[2] = v21 + 1;
    v22 = &v17[5 * v21];
    v22[4] = v15;
    v22[5] = v14;
    v22[6] = v19;
    v22[7] = v18;
    v22[8] = v12;
    v5 = v10;
    v6 = v25;
    v2 = v25 == v10;
    a1 = v17;
  }

  while (!v2);
  return a1;
}

uint64_t sub_73BF8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v35 = a1;
  v40 = a5;
  v39 = sub_147EC(&qword_BA250, &qword_8C338);
  v37 = *(v39 - 8);
  v8 = *(v37 + 64);
  v9 = __chkstk_darwin(v39);
  v38 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v42 = &v32 - v11;
  v36 = sub_147EC(&qword_BA258, &qword_8C340);
  v34 = *(v36 - 8);
  v12 = v34;
  v13 = *(v34 + 64);
  v14 = __chkstk_darwin(v36);
  v41 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v32 - v16;
  sub_81018();
  v44 = a2;
  v45 = a3;
  v46 = a4;
  sub_147EC(&qword_BA260, &qword_8C348);
  sub_814F8();
  v33 = v17;
  sub_816B8();
  v43 = sub_73978(v35);
  sub_147EC(&qword_B8268, &qword_88FA0);
  sub_14F24(&qword_BA218, &qword_B8268, &qword_88FA0);
  sub_7627C();
  sub_762D0();
  v18 = v42;
  sub_81608();
  v19 = *(v12 + 16);
  v20 = v41;
  v21 = v17;
  v22 = v36;
  v19(v41, v21, v36);
  v24 = v37;
  v23 = v38;
  v25 = *(v37 + 16);
  v26 = v39;
  v25(v38, v18, v39);
  v27 = v40;
  v19(v40, v20, v22);
  v28 = sub_147EC(&qword_BA268, &qword_8C350);
  v25(&v27[*(v28 + 48)], v23, v26);
  v29 = *(v24 + 8);
  v29(v42, v26);
  v30 = *(v34 + 8);
  v30(v33, v22);
  v29(v23, v26);
  return (v30)(v41, v22);
}

uint64_t sub_74000@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t sub_74024@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v36 = a2;
  v39 = a4;
  v7 = sub_147EC(&qword_B8780, &qword_8B7E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v35[-v9];
  v11 = sub_147EC(&qword_B86B0, &qword_88500);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v35[-v14];
  v16 = sub_147EC(&qword_BA270, &unk_8C358);
  v37 = v16;
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v35[-v18];
  sub_80C98();
  v20 = sub_80CB8();
  (*(*(v20 - 8) + 56))(v10, 0, 1, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = v5;
  *(v21 + 32) = a3;

  sub_81518();
  sub_81688();
  sub_80E48();
  v22 = *(v12 + 32);
  v38 = v19;
  v22(v19, v15, v11);
  v23 = &v19[*(v16 + 36)];
  v24 = v52;
  v23[4] = v51;
  v23[5] = v24;
  v23[6] = v53;
  v25 = v48;
  *v23 = v47;
  v23[1] = v25;
  v26 = v50;
  v23[2] = v49;
  v23[3] = v26;
  v27 = sub_818E8();
  v28 = sub_818E8();
  v29 = STLocalizedString(v27);

  v30 = sub_81928();
  v32 = v31;

  v45 = v30;
  v46 = v32;
  LOBYTE(v12) = v36;
  v43 = v36;
  v44 = a3;
  sub_147EC(&unk_B8710, &qword_89A80);
  sub_814F8();
  v40 = a1;
  v41 = v12;
  v42 = a3;
  sub_147EC(&qword_BA278, &qword_8C368);
  sub_76828();
  sub_14ED0();
  sub_14F24(&qword_BA288, &qword_BA278, &qword_8C368);
  v33 = v38;
  sub_813B8();

  return sub_14FD4(v33, &qword_BA270, &unk_8C358);
}

uint64_t sub_74504@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_818E8();
  v3 = sub_818E8();
  v4 = STLocalizedString(v2);

  sub_81928();
  sub_14ED0();
  result = sub_81288();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_745D8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v61 = a4;
  v7 = sub_147EC(&qword_B86B0, &qword_88500);
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = *(v59 + 64);
  v9 = __chkstk_darwin(v7);
  v58 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v57 = &v54 - v11;
  v12 = sub_147EC(&qword_B8780, &qword_8B7E0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v54 - v14;
  v16 = sub_147EC(&qword_BA290, &qword_8C370);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  v19 = __chkstk_darwin(v16);
  v62 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v54 - v21;
  sub_80C98();
  v55 = sub_80CB8();
  v23 = *(v55 - 8);
  v54 = *(v23 + 56);
  v56 = v23 + 56;
  v54(v15, 0, 1, v55);
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  *(v24 + 32) = a3;
  v25 = &v22[*(v17 + 52)];
  v63 = 0;

  sub_814C8();
  v26 = v65;
  *v25 = v64;
  *(v25 + 1) = v26;
  sub_14F6C(v15, &v22[*(v17 + 48)], &qword_B8780, &qword_8B7E0);
  *v22 = &unk_8C380;
  *(v22 + 1) = v24;
  v27 = sub_818E8();
  v28 = sub_818E8();
  v29 = STLocalizedString(v27);

  v30 = sub_81928();
  v32 = v31;

  v64 = v30;
  v65 = v32;
  sub_14ED0();
  v33 = sub_81288();
  v35 = v34;
  LOBYTE(v29) = v36;
  LODWORD(v64) = sub_81128();
  v37 = sub_81238();
  v39 = v38;
  LOBYTE(v25) = v40;
  v42 = v41;
  sub_15034(v33, v35, v29 & 1);

  *(v22 + 2) = v37;
  *(v22 + 3) = v39;
  v22[32] = v25 & 1;
  *(v22 + 5) = v42;
  sub_14FD4(v15, &qword_B8780, &qword_8B7E0);
  sub_80CA8();
  v54(v15, 0, 1, v55);
  v43 = v57;
  sub_81518();
  v44 = v62;
  sub_14F6C(v22, v62, &qword_BA290, &qword_8C370);
  v46 = v58;
  v45 = v59;
  v47 = *(v59 + 16);
  v48 = v60;
  v47(v58, v43, v60);
  v49 = v44;
  v50 = v61;
  sub_14F6C(v49, v61, &qword_BA290, &qword_8C370);
  v51 = sub_147EC(&qword_BA298, &qword_8C388);
  v47((v50 + *(v51 + 48)), v46, v48);
  v52 = *(v45 + 8);
  v52(v43, v48);
  sub_14FD4(v22, &qword_BA290, &qword_8C370);
  v52(v46, v48);
  return sub_14FD4(v62, &qword_BA290, &qword_8C370);
}

uint64_t sub_74AF8()
{
  v1 = sub_80BC8();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v0[5] = sub_81A88();
  v0[6] = sub_81A78();
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_74C00;

  return sub_63CF8();
}

uint64_t sub_74C00()
{
  v2 = v0;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v10 = *v1;
  *(*v1 + 64) = v2;

  v7 = sub_81A58();
  if (v2)
  {
    v8 = sub_74DC4;
  }

  else
  {
    v8 = sub_74D5C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_74D5C()
{
  v1 = v0[6];

  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_74DC4()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v5 = sub_80BA8();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_80BB8();
  v7 = sub_81B38();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[8];
  v11 = v0[3];
  v10 = v0[4];
  v12 = v0[2];
  if (v8)
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v6, v7, "Failed to remove vision pro data", v13, 2u);
  }

  (*(v11 + 8))(v10, v12);
  v14 = v0[4];

  v15 = v0[1];

  return v15();
}

uint64_t sub_74F04@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_818E8();
  v3 = sub_818E8();
  v4 = STLocalizedString(v2);

  sub_81928();
  sub_14ED0();
  result = sub_81288();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_74FCC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_818E8();
  v3 = sub_818E8();
  v4 = STLocalizedString(v2);

  sub_81928();
  sub_81128();
  v5 = sub_81238();
  v7 = v6;
  v9 = v8;
  v11 = v10;

  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v11;
  return result;
}

uint64_t sub_750E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailView();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Application();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_147EC(&qword_B7E50, &qword_8A3F0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v18 = &v27 - v17;
  if (qword_B7858 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_80C68();

    v19 = v28;
    v20 = *(v28 + 16);
    if (!v20)
    {
      break;
    }

    v21 = 0;
    while (v21 < *(v19 + 16))
    {
      sub_7571C(v19 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v21, v11, type metadata accessor for Application);
      v22 = *v11 == a1 && v11[1] == a2;
      if (v22 || (sub_81E18() & 1) != 0)
      {

        sub_75784(v11, v18, type metadata accessor for Application);
        v23 = 0;
        goto LABEL_13;
      }

      ++v21;
      sub_2095C(v11);
      if (v20 == v21)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

LABEL_11:

  v23 = 1;
LABEL_13:
  (*(v8 + 56))(v18, v23, 1, v7);
  sub_14F6C(v18, v16, &qword_B7E50, &qword_8A3F0);
  result = (*(v8 + 48))(v16, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_6F7AC(v16, v27);
    v25 = objc_allocWithZone(sub_147EC(&qword_B9FB0, &qword_8BFE8));
    v26 = sub_81088();
    sub_14FD4(v18, &qword_B7E50, &qword_8A3F0);
    return v26;
  }

  return result;
}

uint64_t sub_7547C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = type metadata accessor for Application();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_75548(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for Application();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_755EC()
{
  sub_6C944();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Application();
    if (v1 <= 0x3F)
    {
      sub_68758();
      if (v2 <= 0x3F)
      {
        sub_756A0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_756A0()
{
  if (!qword_BA020)
  {
    type metadata accessor for VisionProDataApplicationModel();
    v0 = sub_81B98();
    if (!v1)
    {
      atomic_store(v0, &qword_BA020);
    }
  }
}

uint64_t sub_7571C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_75784(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_757EC()
{
  v2 = *(type metadata accessor for DetailView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_16268;

  return sub_733AC(v0 + v3);
}

uint64_t sub_758B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22EB0;

  return sub_635AC(a1, v4, v5, v6);
}

uint64_t sub_75980()
{
  v1 = type metadata accessor for DetailView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v20 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;

  v5 = v0 + v3 + v1[5];
  v6 = *(v5 + 8);

  v7 = *(v5 + 24);

  v8 = *(v5 + 40);

  sub_431D4(*(v5 + 80), *(v5 + 88), *(v5 + 96));
  v9 = *(v5 + 112);

  v10 = *(v5 + 120);

  v11 = type metadata accessor for Application();
  v12 = v11[18];
  v13 = sub_80A38();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v5 + v12, 1, v13))
  {
    (*(v14 + 8))(v5 + v12, v13);
  }

  v15 = *(v5 + v11[19] + 8);

  v16 = *(v5 + v11[21]);

  v17 = *(v4 + v1[6] + 8);

  v18 = *(v4 + v1[7]);

  return _swift_deallocObject(v0, v3 + v20, v2 | 7);
}

void sub_75B4C()
{
  v1 = *(type metadata accessor for DetailView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_7253C(v2);
}

unint64_t sub_75BB4()
{
  result = qword_BA140;
  if (!qword_BA140)
  {
    sub_14E2C(&qword_BA130, &qword_8C118);
    sub_75C40();
    sub_75DA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA140);
  }

  return result;
}

unint64_t sub_75C40()
{
  result = qword_BA148;
  if (!qword_BA148)
  {
    sub_14E2C(&qword_BA128, &qword_8C110);
    sub_75EDC(&qword_BA150, &qword_BA138, &qword_8C120, sub_75CF8);
    sub_75D4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA148);
  }

  return result;
}

unint64_t sub_75CF8()
{
  result = qword_BA158;
  if (!qword_BA158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA158);
  }

  return result;
}

unint64_t sub_75D4C()
{
  result = qword_BA160;
  if (!qword_BA160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA160);
  }

  return result;
}

unint64_t sub_75DA0()
{
  result = qword_BA168;
  if (!qword_BA168)
  {
    sub_14E2C(&qword_BA0F8, &qword_8C0E0);
    sub_75E2C();
    sub_75FB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA168);
  }

  return result;
}

unint64_t sub_75E2C()
{
  result = qword_BA170;
  if (!qword_BA170)
  {
    sub_14E2C(&qword_BA108, &qword_8C0F0);
    sub_75EDC(&qword_BA178, &qword_BA100, &qword_8C0E8, sub_75F64);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA170);
  }

  return result;
}

uint64_t sub_75EDC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_14E2C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_75F64()
{
  result = qword_BA180;
  if (!qword_BA180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA180);
  }

  return result;
}

unint64_t sub_75FB8()
{
  result = qword_BA188;
  if (!qword_BA188)
  {
    sub_14E2C(&qword_BA0E8, &qword_8C0D0);
    sub_76720(&qword_BA190, type metadata accessor for FileProviderAppDetailView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA188);
  }

  return result;
}

uint64_t sub_760A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&qword_BA198, &qword_8C150);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_7617C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_7618C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_761F8()
{
  result = qword_BA220;
  if (!qword_BA220)
  {
    sub_14E2C(&qword_BA210, &qword_8C1F0);
    sub_7627C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA220);
  }

  return result;
}

unint64_t sub_7627C()
{
  result = qword_BA228;
  if (!qword_BA228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA228);
  }

  return result;
}

unint64_t sub_762D0()
{
  result = qword_BA230;
  if (!qword_BA230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA230);
  }

  return result;
}

unint64_t sub_76324()
{
  result = qword_BA240;
  if (!qword_BA240)
  {
    sub_14E2C(&qword_BA238, &qword_8C1F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA240);
  }

  return result;
}

uint64_t sub_763A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_16C28(a1, a2, a3 & 1);
  }

  else
  {

    return sub_763F4(a1, a2, a3);
  }
}

uint64_t sub_763F4(uint64_t a1, uint64_t a2, char a3)
{
  sub_16C28(a1, a2, a3 & 1);
}

uint64_t sub_76430(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_15034(a1, a2, a3 & 1);
  }

  else
  {

    return sub_76484(a1, a2, a3);
  }
}

uint64_t sub_76484(uint64_t a1, uint64_t a2, char a3)
{
  sub_15034(a1, a2, a3 & 1);
}

uint64_t sub_764C0(uint64_t *a1, int a2)
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

uint64_t sub_76508(uint64_t result, int a2, int a3)
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

uint64_t sub_76558(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_765A0(uint64_t result, int a2, int a3)
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

unint64_t sub_765F4()
{
  result = qword_BA248;
  if (!qword_BA248)
  {
    sub_14E2C(&qword_BA078, &unk_8C070);
    sub_14E2C(&qword_BA058, &qword_8C050);
    sub_14F24(&qword_BA070, &qword_BA058, &qword_8C050);
    swift_getOpaqueTypeConformance2();
    sub_76720(&qword_B78E0, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA248);
  }

  return result;
}

uint64_t sub_76720(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_767B8()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_147EC(&unk_B8710, &qword_89A80);
  return sub_814E8();
}

unint64_t sub_76828()
{
  result = qword_BA280;
  if (!qword_BA280)
  {
    sub_14E2C(&qword_BA270, &unk_8C358);
    sub_14F24(&qword_B8F20, &qword_B86B0, &qword_88500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA280);
  }

  return result;
}

uint64_t sub_768E0(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_76928()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22EB0;

  return sub_74AF8();
}

unint64_t sub_769D8()
{
  result = qword_BA2A0;
  if (!qword_BA2A0)
  {
    sub_14E2C(&qword_BA2A8, &qword_8C390);
    sub_14F24(&qword_BA2B0, &qword_BA2B8, &qword_8C398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA2A0);
  }

  return result;
}

uint64_t sub_76A88()
{
  sub_14E2C(&qword_BA270, &unk_8C358);
  sub_14E2C(&qword_BA278, &qword_8C368);
  sub_76828();
  sub_14ED0();
  sub_14F24(&qword_BA288, &qword_BA278, &qword_8C368);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_76B94(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_147EC(&qword_BA2C0, qword_8C3A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_76C64(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_147EC(&qword_BA2C0, qword_8C3A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AppsListView()
{
  result = qword_BA320;
  if (!qword_BA320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_76D60()
{
  sub_76E7C();
  if (v0 <= 0x3F)
  {
    sub_6C944();
    if (v1 <= 0x3F)
    {
      sub_76EF0(319, &qword_BA338, &type metadata for ApplicationSortingOrder, &type metadata accessor for Binding);
      if (v2 <= 0x3F)
      {
        sub_76EF0(319, &qword_B8D98, &type metadata for Bool, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_76F40();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_76E7C()
{
  if (!qword_BA330)
  {
    type metadata accessor for StorageShared();
    sub_14E2C(&qword_B81A0, &qword_88E90);
    v0 = sub_81EC8();
    if (!v1)
    {
      atomic_store(v0, &qword_BA330);
    }
  }
}

void sub_76EF0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_76F40()
{
  if (!qword_BA340)
  {
    sub_14E2C(&qword_B7E50, &qword_8A3F0);
    v0 = sub_81508();
    if (!v1)
    {
      atomic_store(v0, &qword_BA340);
    }
  }
}

uint64_t sub_76FC0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Application();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = _swiftEmptyArrayStorage;
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_7A4F0(a3 + v16 + v17 * v14, v13, type metadata accessor for Application);
      v18 = a1(v13);
      if (v3)
      {
        sub_7AF04(v13, type metadata accessor for Application);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_7A88C(v13, v25, type metadata accessor for Application);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_34F84(0, v15[2] + 1, 1);
          v15 = v27;
        }

        v21 = v15[2];
        v20 = v15[3];
        if (v21 >= v20 >> 1)
        {
          sub_34F84(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        v15[2] = v21 + 1;
        result = sub_7A88C(v25, v15 + v16 + v21 * v17, type metadata accessor for Application);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_7AF04(v13, type metadata accessor for Application);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_15:

    return v15;
  }

  return result;
}

uint64_t sub_7724C()
{
  v1 = sub_80838();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  if (v6)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v7 = v6;
    sub_80C68();

    sub_80828();
    sub_14ED0();
    v8 = sub_81BB8();
    (*(v2 + 8))(v5, v1);

    return v8;
  }

  else
  {
    v10 = *(v0 + 24);
    type metadata accessor for StorageShared();
    sub_7A480(&qword_B7A50, type metadata accessor for StorageShared);
    result = sub_80E58();
    __break(1u);
  }

  return result;
}

uint64_t sub_77404()
{
  if (*(v0 + 8) != 1)
  {
    goto LABEL_8;
  }

  LOBYTE(v9) = *(v0 + 56);
  v10 = *(v0 + 64);
  sub_147EC(&unk_B8710, &qword_89A80);
  sub_814D8();
  if (v8 != 1)
  {
    goto LABEL_8;
  }

  v1 = *(v0 + 16);
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    sub_80C68();

    v3 = *(v9 + 16);

    if (v3 > 0x19)
    {
      if (sub_7724C() || v4 != 0xE000000000000000)
      {
        v5 = sub_81E18();
      }

      else
      {

        v5 = 1;
      }

      return v5 & 1;
    }

LABEL_8:
    v5 = 0;
    return v5 & 1;
  }

  v7 = *(v0 + 24);
  type metadata accessor for StorageShared();
  sub_7A480(&qword_B7A50, type metadata accessor for StorageShared);
  result = sub_80E58();
  __break(1u);
  return result;
}

uint64_t sub_77594()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = *v0;
    v12 = v0[2];
    v3 = v1;
    swift_getAtKeyPath();
    v8 = v0[4];
    v9 = v0[5];
    v10 = *(v0 + 48);
    sub_147EC(&qword_B7A80, &qword_88410);
    sub_815A8();
    v4 = *(&off_AD1E0 + v7);

    sub_7AF64(v4, 0);

    return v11;
  }

  else
  {
    v6 = v0[3];
    type metadata accessor for StorageShared();
    sub_7A480(&qword_B7A50, type metadata accessor for StorageShared);
    sub_80E58();
    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t sub_776D0()
{
  if (sub_77404())
  {
    result = sub_77594();
    if (*(result + 16) >= 0x15uLL)
    {
      v2 = result;
      v3 = *(type metadata accessor for Application() - 8);
      sub_7B1FC(v2, v2 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), 0, 0x29uLL);
      v5 = v4;

      return v5;
    }
  }

  else
  {
    if (sub_7724C() || v6 != 0xE000000000000000)
    {
      v7 = sub_81E18();

      if ((v7 & 1) == 0)
      {
        v8 = sub_77594();
        __chkstk_darwin(v8);
        v10[2] = v0;
        return sub_76FC0(sub_7CE04, v10, v9);
      }
    }

    else
    {
    }

    return sub_77594();
  }

  return result;
}

BOOL sub_77830(uint64_t a1)
{
  v2 = sub_147EC(&qword_BA400, &unk_8C570);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v13 - v4;
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v13[2] = v6;
  v13[3] = v7;

  v13[0] = sub_7724C();
  v13[1] = v8;
  v9 = sub_80A48();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_14ED0();
  sub_81BE8();
  v11 = v10;
  sub_14FD4(v5, &qword_BA400, &unk_8C570);

  return (v11 & 1) == 0;
}

uint64_t sub_77990@<X0>(char *a1@<X8>)
{
  v55 = a1;
  v2 = sub_147EC(&qword_BA380, &qword_8C420);
  v52 = *(v2 - 8);
  v53 = v2;
  v3 = *(v52 + 64);
  __chkstk_darwin(v2);
  v47[0] = v47 - v4;
  v5 = sub_147EC(&qword_BA388, &qword_8C428);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v54 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v47 - v9;
  v11 = type metadata accessor for AppsListView();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v50 = sub_147EC(&qword_BA390, &qword_8C430);
  v48 = *(v50 - 8);
  v14 = *(v48 + 64);
  v15 = __chkstk_darwin(v50);
  v51 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v47 - v17;
  v49 = v1;
  v64 = sub_776D0();
  sub_7A4F0(v1, v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppsListView);
  v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v20 = swift_allocObject();
  sub_7A88C(v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for AppsListView);
  v47[3] = sub_147EC(&qword_B81A0, &qword_88E90);
  v47[2] = sub_147EC(&qword_BA398, &qword_8C438);
  v47[1] = sub_14F24(&qword_B9050, &qword_B81A0, &qword_88E90);
  v21 = sub_14E2C(&qword_BA3A0, &qword_8C440);
  v22 = sub_14E2C(&qword_BA3A8, &unk_8C448);
  v23 = sub_14E2C(&qword_B9038, &qword_8A2E0);
  v24 = sub_14E2C(&qword_BA3B0, &unk_8C458);
  v25 = sub_510DC();
  v26 = sub_14F24(&qword_BA3B8, &qword_BA3B0, &unk_8C458);
  v56 = v23;
  v57 = v24;
  v58 = v25;
  v59 = v26;
  v27 = v10;
  v28 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = sub_14ED0();
  v31 = sub_7A398();
  v56 = v21;
  v57 = &type metadata for String;
  v58 = v22;
  v59 = &type metadata for Text;
  v60 = OpaqueTypeConformance2;
  v61 = v30;
  v62 = v31;
  v63 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  sub_7A480(&qword_B9058, type metadata accessor for Application);
  v32 = v18;
  v33 = v49;
  sub_81608();
  if (sub_77404())
  {
    v34 = sub_81008();
    v35 = v47[0];
    *v47[0] = v34;
    *(v35 + 8) = 0;
    *(v35 + 16) = 1;
    v36 = sub_147EC(&qword_BA3D0, &qword_8C470);
    sub_79E90(v33, (v35 + *(v36 + 44)));
    sub_5F2F0(v35, v27, &qword_BA380, &qword_8C420);
    v28 = 0;
  }

  v37 = v27;
  (*(v52 + 56))(v27, v28, 1, v53);
  v38 = v48;
  v39 = *(v48 + 16);
  v40 = v50;
  v41 = v51;
  v39(v51, v32, v50);
  v42 = v54;
  sub_14F6C(v37, v54, &qword_BA388, &qword_8C428);
  v43 = v55;
  v39(v55, v41, v40);
  v44 = sub_147EC(&qword_BA3C8, &qword_8C468);
  sub_14F6C(v42, &v43[*(v44 + 48)], &qword_BA388, &qword_8C428);
  sub_14FD4(v37, &qword_BA388, &qword_8C428);
  v45 = *(v38 + 8);
  v45(v32, v40);
  sub_14FD4(v42, &qword_BA388, &qword_8C428);
  return (v45)(v41, v40);
}

uint64_t sub_77FB4@<X0>(Swift::String *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v5 = type metadata accessor for Application();
  v55 = *(v5 - 8);
  v54 = *(v55 + 64);
  __chkstk_darwin(v5 - 8);
  v52 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppsListView();
  v53 = *(v7 - 8);
  v50 = *(v53 + 64);
  __chkstk_darwin(v7 - 8);
  v51 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AppListView();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = sub_147EC(&qword_B9038, &qword_8A2E0);
  v13 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v15 = &v41 - v14;
  v16 = sub_147EC(&qword_BA3A0, &qword_8C440);
  v17 = *(v16 - 8);
  v56 = v16;
  v57 = v17;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v49 = &v41 - v19;
  v20 = v12 + *(v9 + 20);
  v41 = type metadata accessor for Application;
  sub_7A4F0(a1, v20, type metadata accessor for Application);
  type metadata accessor for StorageShared();
  sub_7A480(&qword_B7A50, type metadata accessor for StorageShared);
  *v12 = sub_80E68();
  v12[1] = v21;
  v63 = 0;
  v64 = 0xE000000000000000;
  sub_81D08(17);

  v63 = 0x746163696C707041;
  v64 = 0xEF2D776F526E6F69;
  sub_81978(*a1);
  sub_7A480(&qword_B9040, type metadata accessor for AppListView);
  sub_81398();

  sub_7AF04(v12, type metadata accessor for AppListView);
  v61 = a1;
  v62 = a2;
  v22 = a1;
  v43 = a1;
  v42 = a2;
  v46 = sub_147EC(&qword_BA3B0, &unk_8C458);
  v45 = sub_510DC();
  v44 = sub_14F24(&qword_BA3B8, &qword_BA3B0, &unk_8C458);
  sub_81338();
  sub_14FD4(v15, &qword_B9038, &qword_8A2E0);
  v23 = sub_818E8();
  v24 = sub_818E8();
  v25 = STLocalizedString(v23);

  v26 = sub_81928();
  v28 = v27;
  v48 = v27;

  v67 = v26;
  v68 = v28;
  v29 = v51;
  sub_7A4F0(a2, v51, type metadata accessor for AppsListView);
  v30 = v52;
  sub_7A4F0(v22, v52, type metadata accessor for Application);
  sub_81A88();
  v31 = sub_81A78();
  v32 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v33 = (v32 + v50 + *(v55 + 80)) & ~*(v55 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v31;
  *(v34 + 24) = &protocol witness table for MainActor;
  sub_7A88C(v29, v34 + v32, type metadata accessor for AppsListView);
  sub_7A88C(v30, v34 + v33, v41);
  v35 = v42;
  sub_7A4F0(v42, v29, type metadata accessor for AppsListView);
  v36 = sub_81A78();
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = &protocol witness table for MainActor;
  sub_7A88C(v29, v37 + v32, type metadata accessor for AppsListView);
  sub_815E8();
  v59 = v35;
  v60 = v43;
  sub_147EC(&qword_BA3A8, &unk_8C448);
  v63 = v47;
  v64 = v46;
  v65 = v45;
  v66 = v44;
  swift_getOpaqueTypeConformance2();
  sub_14ED0();
  sub_7A398();
  v38 = v56;
  v39 = v49;
  sub_81378();

  return (*(v57 + 8))(v39, v38);
}

uint64_t sub_78784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a3;
  v5 = type metadata accessor for Application();
  v76 = *(v5 - 8);
  v6 = *(v76 + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for AppsListView();
  v73 = *(v7 - 8);
  v8 = v73[8];
  __chkstk_darwin(v7 - 8);
  v75 = sub_147EC(&qword_B86B0, &qword_88500);
  v9 = *(v75 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v75);
  v74 = &v65 - v11;
  v12 = sub_147EC(&qword_BA3E8, &qword_8C520);
  v83 = *(v12 - 8);
  v13 = *(v83 + 64);
  __chkstk_darwin(v12);
  v15 = &v65 - v14;
  v16 = sub_147EC(&qword_BA3F0, &qword_8C528);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v79 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v78 = &v65 - v21;
  v22 = __chkstk_darwin(v20);
  v81 = &v65 - v23;
  __chkstk_darwin(v22);
  v82 = &v65 - v24;
  v25 = a1;
  v26 = *(a1 + 128);
  v77 = v15;
  v71 = v6;
  v72 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a2;
  v68 = v8;
  if (v26 == 1)
  {
    sub_7A4F0(a2, &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppsListView);
    v66 = v9;
    sub_7A4F0(a1, &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Application);
    v27 = (*(v73 + 80) + 16) & ~*(v73 + 80);
    v28 = *(v76 + 80);
    v67 = a1;
    v29 = v12;
    v30 = (v8 + v28 + v27) & ~v28;
    v31 = swift_allocObject();
    sub_7A88C(&v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v27, type metadata accessor for AppsListView);
    v32 = v31 + v30;
    v12 = v29;
    v33 = v74;
    v34 = v75;
    v35 = v82;
    v36 = v67;
    sub_7A88C(&v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v32, type metadata accessor for Application);
    v37 = v77;
    sub_81528();
    v84 = 0;
    v85 = 0xE000000000000000;
    sub_81D08(29);

    v84 = 0xD00000000000001BLL;
    v85 = 0x8000000000097180;
    v25 = v36;
    sub_81978(*v36);
    sub_14F24(&qword_B8F20, &qword_B86B0, &qword_88500);
    sub_81398();
    v9 = v66;

    (*(v9 + 8))(v33, v34);
    v38 = sub_81418();
    KeyPath = swift_getKeyPath();
    v40 = (v37 + *(v12 + 36));
    *v40 = KeyPath;
    v40[1] = v38;
    sub_5F2F0(v37, v35, &qword_BA3E8, &qword_8C520);
    v41 = *(v83 + 56);
    (v41)(v35, 0, 1, v12);
  }

  else
  {
    v41 = *(v83 + 56);
    (v41)(v82, 1, 1, v12);
  }

  if (*(v25 + 129) == 1)
  {
    v42 = v69;
    sub_7A4F0(v70, v69, type metadata accessor for AppsListView);
    v43 = v74;
    v44 = v9;
    v45 = v25;
    v46 = v72;
    sub_7A4F0(v25, v72, type metadata accessor for Application);
    v47 = (*(v73 + 80) + 16) & ~*(v73 + 80);
    v48 = *(v76 + 80);
    v73 = v41;
    v49 = (v68 + v48 + v47) & ~v48;
    v50 = swift_allocObject();
    v76 = v12;
    v51 = v50;
    sub_7A88C(v42, v50 + v47, type metadata accessor for AppsListView);
    sub_7A88C(v46, v51 + v49, type metadata accessor for Application);
    sub_81528();
    v84 = 0;
    v85 = 0xE000000000000000;
    sub_81D08(30);

    v84 = 0xD00000000000001CLL;
    v85 = 0x8000000000097160;
    sub_81978(*v45);
    sub_14F24(&qword_B8F20, &qword_B86B0, &qword_88500);
    v52 = v77;
    v53 = v75;
    sub_81398();
    v12 = v76;

    (*(v44 + 8))(v43, v53);
    v54 = sub_81428();
    v55 = swift_getKeyPath();
    v56 = (v52 + *(v12 + 36));
    *v56 = v55;
    v56[1] = v54;
    v41 = v73;
    sub_5F2F0(v52, v81, &qword_BA3E8, &qword_8C520);
    v57 = 0;
  }

  else
  {
    v57 = 1;
  }

  v58 = v81;
  (v41)(v81, v57, 1, v12);
  v59 = v82;
  v60 = v78;
  sub_14F6C(v82, v78, &qword_BA3F0, &qword_8C528);
  v61 = v79;
  sub_14F6C(v58, v79, &qword_BA3F0, &qword_8C528);
  v62 = v80;
  sub_14F6C(v60, v80, &qword_BA3F0, &qword_8C528);
  v63 = sub_147EC(&qword_BA3F8, &qword_8C530);
  sub_14F6C(v61, v62 + *(v63 + 48), &qword_BA3F0, &qword_8C528);
  sub_14FD4(v58, &qword_BA3F0, &qword_8C528);
  sub_14FD4(v59, &qword_BA3F0, &qword_8C528);
  sub_14FD4(v61, &qword_BA3F0, &qword_8C528);
  return sub_14FD4(v60, &qword_BA3F0, &qword_8C528);
}

void sub_78FEC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a2;
    v4 = a2[1];
    v6 = v2;
    sub_23040(v3, v4);
  }

  else
  {
    v5 = *(a1 + 24);
    type metadata accessor for StorageShared();
    sub_7A480(&qword_B7A50, type metadata accessor for StorageShared);
    sub_80E58();
    __break(1u);
  }
}

uint64_t sub_790A8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_818E8();
  v3 = sub_818E8();
  v4 = STLocalizedString(v2);

  sub_81928();
  sub_14ED0();
  result = sub_81288();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_79170(uint64_t a1, uint64_t a2)
{
  v3 = sub_147EC(&qword_B7E50, &qword_8A3F0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  sub_7A4F0(a2, &v12 - v8, type metadata accessor for Application);
  v10 = type metadata accessor for Application();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  LODWORD(a2) = *(type metadata accessor for AppsListView() + 36);
  sub_14F6C(v9, v7, &qword_B7E50, &qword_8A3F0);
  sub_147EC(&qword_BA2C0, qword_8C3A0);
  sub_814E8();
  return sub_14FD4(v9, &qword_B7E50, &qword_8A3F0);
}

uint64_t sub_792D4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_818E8();
  v3 = sub_818E8();
  v4 = STLocalizedString(v2);

  sub_81928();
  sub_14ED0();
  result = sub_81288();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_793A0@<X0>(uint64_t a1@<X3>, _BYTE *a2@<X8>)
{
  v26 = a2;
  v3 = sub_147EC(&qword_BA3E0, &qword_8C518);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v7 = &v25 - v6;
  v8 = sub_147EC(&qword_B7E50, &qword_8A3F0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v25 - v14;
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  v18 = *(type metadata accessor for AppsListView() + 36);
  sub_147EC(&qword_BA2C0, qword_8C3A0);
  sub_814D8();
  sub_7A4F0(a1, v15, type metadata accessor for Application);
  v19 = type metadata accessor for Application();
  v20 = *(v19 - 8);
  (*(v20 + 56))(v15, 0, 1, v19);
  v21 = *(v4 + 56);
  sub_14F6C(v17, v7, &qword_B7E50, &qword_8A3F0);
  sub_14F6C(v15, &v7[v21], &qword_B7E50, &qword_8A3F0);
  v22 = *(v20 + 48);
  if (v22(v7, 1, v19) != 1)
  {
    sub_14F6C(v7, v12, &qword_B7E50, &qword_8A3F0);
    if (v22(&v7[v21], 1, v19) != 1)
    {
      v24 = sub_209B8(v12, &v7[v21]);
      sub_7AF04(&v7[v21], type metadata accessor for Application);
      sub_14FD4(v15, &qword_B7E50, &qword_8A3F0);
      sub_14FD4(v17, &qword_B7E50, &qword_8A3F0);
      sub_7AF04(v12, type metadata accessor for Application);
      result = sub_14FD4(v7, &qword_B7E50, &qword_8A3F0);
      goto LABEL_8;
    }

    sub_14FD4(v15, &qword_B7E50, &qword_8A3F0);
    sub_14FD4(v17, &qword_B7E50, &qword_8A3F0);
    sub_7AF04(v12, type metadata accessor for Application);
    goto LABEL_6;
  }

  sub_14FD4(v15, &qword_B7E50, &qword_8A3F0);
  sub_14FD4(v17, &qword_B7E50, &qword_8A3F0);
  if (v22(&v7[v21], 1, v19) != 1)
  {
LABEL_6:
    result = sub_14FD4(v7, &qword_BA3E0, &qword_8C518);
    v24 = 0;
    goto LABEL_8;
  }

  result = sub_14FD4(v7, &qword_B7E50, &qword_8A3F0);
  v24 = 1;
LABEL_8:
  *v26 = v24 & 1;
  return result;
}

uint64_t sub_79764()
{
  v0 = sub_147EC(&qword_B7E50, &qword_8A3F0);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  v7 = type metadata accessor for Application();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = *(type metadata accessor for AppsListView() + 36);
  sub_14F6C(v6, v4, &qword_B7E50, &qword_8A3F0);
  sub_147EC(&qword_BA2C0, qword_8C3A0);
  sub_814E8();
  return sub_14FD4(v6, &qword_B7E50, &qword_8A3F0);
}

uint64_t sub_798A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[0] = a2;
  v21[1] = a3;
  v4 = type metadata accessor for AppsListView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_147EC(&qword_B86B0, &qword_88500);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - v10;
  v12 = sub_818E8();
  v13 = sub_818E8();
  v14 = STLocalizedString(v12);

  v15 = sub_81928();
  v17 = v16;

  v22 = v15;
  v23 = v17;
  sub_7A4F0(a1, v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppsListView);
  v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v19 = swift_allocObject();
  sub_7A88C(v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for AppsListView);
  sub_14ED0();
  sub_81568();
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_81D08(26);

  v22 = 0xD000000000000018;
  v23 = 0x8000000000097140;
  sub_81978(*v21[0]);
  sub_14F24(&qword_B8F20, &qword_B86B0, &qword_88500);
  sub_81398();

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_79B98(uint64_t a1)
{
  v2 = sub_147EC(&qword_B7E50, &qword_8A3F0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for Application();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(type metadata accessor for AppsListView() + 36);
  sub_147EC(&qword_BA2C0, qword_8C3A0);
  sub_814D8();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_14FD4(v5, &qword_B7E50, &qword_8A3F0);
  }

  sub_7A88C(v5, v10, type metadata accessor for Application);
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = *v10;
    v15 = v10[1];
    v16 = v13;
    sub_23DDC(v14, v15);

    return sub_7AF04(v10, type metadata accessor for Application);
  }

  else
  {
    v17 = *(a1 + 24);
    type metadata accessor for StorageShared();
    sub_7A480(&qword_B7A50, type metadata accessor for StorageShared);
    result = sub_80E58();
    __break(1u);
  }

  return result;
}

uint64_t sub_79DBC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_818E8();
  v3 = sub_818E8();
  v4 = STLocalizedString(v2);

  sub_81928();
  sub_14ED0();
  result = sub_81288();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_79E90@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for AppsListView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_147EC(&qword_B86B0, &qword_88500);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  v11 = sub_147EC(&qword_BA3A8, &unk_8C448);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  sub_7A4F0(a1, &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppsListView);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  sub_7A88C(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for AppsListView);
  sub_81528();
  sub_14F24(&qword_B8F20, &qword_B86B0, &qword_88500);
  sub_81398();
  (*(v7 + 8))(v10, v6);
  sub_14F6C(v17, v15, &qword_BA3A8, &unk_8C448);
  v20 = v26;
  *v26 = 0;
  *(v20 + 8) = 1;
  v21 = v20;
  v22 = sub_147EC(&qword_BA3D8, &unk_8C478);
  sub_14F6C(v15, v21 + *(v22 + 48), &qword_BA3A8, &unk_8C448);
  v23 = v21 + *(v22 + 64);
  *v23 = 0;
  *(v23 + 8) = 1;
  sub_14FD4(v17, &qword_BA3A8, &unk_8C448);
  return sub_14FD4(v15, &qword_BA3A8, &unk_8C448);
}

uint64_t sub_7A1E8(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  sub_147EC(&unk_B8710, &qword_89A80);
  return sub_814E8();
}

uint64_t sub_7A244@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_818E8();
  v3 = sub_818E8();
  v4 = STLocalizedString(v2);

  sub_81928();
  sub_14ED0();
  result = sub_81288();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_7A318@<X0>(Swift::String *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppsListView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_77FB4(a1, v6, a2);
}

unint64_t sub_7A398()
{
  result = qword_BA3C0;
  if (!qword_BA3C0)
  {
    sub_14E2C(&qword_BA3A8, &unk_8C448);
    sub_14F24(&qword_B8F20, &qword_B86B0, &qword_88500);
    sub_7A480(&qword_B8738, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA3C0);
  }

  return result;
}

uint64_t sub_7A480(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_7A4F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_7A560()
{
  v1 = (type metadata accessor for AppsListView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for Application();
  v6 = *(v5 - 1);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(v0 + 16);
  swift_unknownObjectRelease();
  v11 = (v0 + v3);
  v12 = *v11;

  v13 = v11[4];

  v14 = v11[5];

  v15 = v11[8];

  v16 = v11 + v1[11];
  if (!(*(v6 + 48))(v16, 1, v5))
  {
    v17 = *(v16 + 8);

    v18 = *(v16 + 24);

    v19 = *(v16 + 40);

    sub_431D4(*(v16 + 80), *(v16 + 88), *(v16 + 96));
    v20 = *(v16 + 112);

    v21 = *(v16 + 120);

    v22 = v5[18];
    v23 = sub_80A38();
    v24 = *(v23 - 8);
    if (!(*(v24 + 48))(v16 + v22, 1, v23))
    {
      (*(v24 + 8))(v16 + v22, v23);
    }

    v25 = *(v16 + v5[19] + 8);

    v26 = *(v16 + v5[21]);
  }

  v27 = *(v16 + *(sub_147EC(&qword_BA2C0, qword_8C3A0) + 28));

  v28 = v0 + v8;
  v29 = *(v0 + v8 + 8);

  v30 = *(v0 + v8 + 24);

  v31 = *(v0 + v8 + 40);

  sub_431D4(*(v28 + 80), *(v28 + 88), *(v28 + 96));
  v32 = *(v0 + v8 + 112);

  v33 = *(v0 + v8 + 120);

  v34 = v5[18];
  v35 = sub_80A38();
  v36 = *(v35 - 8);
  if (!(*(v36 + 48))(v0 + v8 + v34, 1, v35))
  {
    (*(v36 + 8))(v28 + v34, v35);
  }

  v37 = *(v28 + v5[19] + 8);

  v38 = *(v28 + v5[21]);

  return _swift_deallocObject(v0, v8 + v9, v2 | v7 | 7);
}

uint64_t sub_7A88C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_7A8F4@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for AppsListView() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Application() - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_793A0(v9, a1);
}

uint64_t sub_7A9CC()
{
  v1 = (type metadata accessor for AppsListView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 32);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 64);

  v10 = v0 + v3 + v1[11];
  v11 = type metadata accessor for Application();
  if (!(*(*(v11 - 1) + 48))(v10, 1, v11))
  {
    v12 = *(v10 + 8);

    v13 = *(v10 + 24);

    v14 = *(v10 + 40);

    sub_431D4(*(v10 + 80), *(v10 + 88), *(v10 + 96));
    v15 = *(v10 + 112);

    v16 = *(v10 + 120);

    v17 = v11[18];
    v18 = sub_80A38();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v10 + v17, 1, v18))
    {
      (*(v19 + 8))(v10 + v17, v18);
    }

    v20 = *(v10 + v11[19] + 8);

    v21 = *(v10 + v11[21]);
  }

  v22 = *(v10 + *(sub_147EC(&qword_BA2C0, qword_8C3A0) + 28));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_7ABE8()
{
  v1 = *(*(type metadata accessor for AppsListView() - 8) + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_79764();
}

uint64_t sub_7AC64()
{
  v1 = (type metadata accessor for AppsListView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 32);

  v7 = *(v0 + v3 + 40);

  v8 = *(v0 + v3 + 64);

  v9 = v0 + v3 + v1[11];
  v10 = type metadata accessor for Application();
  if (!(*(*(v10 - 1) + 48))(v9, 1, v10))
  {
    v11 = *(v9 + 8);

    v12 = *(v9 + 24);

    v13 = *(v9 + 40);

    sub_431D4(*(v9 + 80), *(v9 + 88), *(v9 + 96));
    v14 = *(v9 + 112);

    v15 = *(v9 + 120);

    v16 = v10[18];
    v17 = sub_80A38();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v9 + v16, 1, v17))
    {
      (*(v18 + 8))(v9 + v16, v17);
    }

    v19 = *(v9 + v10[19] + 8);

    v20 = *(v9 + v10[21]);
  }

  v21 = *(v9 + *(sub_147EC(&qword_BA2C0, qword_8C3A0) + 28));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_7AE90(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AppsListView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_7AF04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Int sub_7AF64(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Application() - 8);
  v7 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_208AC(v7);
  }

  v9 = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10 = v7[2];
  result = sub_7B39C(a1, a2);
  *v3 = v7;
  return result;
}

void sub_7B024(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_147EC(&unk_B82E0, &unk_8C580);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_7B10C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_147EC(&qword_B8338, &qword_89358);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 216);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_7B1FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_147EC(&qword_B82B8, &qword_89148);
      v7 = *(type metadata accessor for Application() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(type metadata accessor for Application() - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

Swift::Int sub_7B39C(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_81DE8(v5);
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for Application();
        v9 = sub_81A18();
        v9[2] = v8;
      }

      v10 = *(type metadata accessor for Application() - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_7B750(v11, v12, v2, a1, a2, v7);
      v9[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_7B4D8(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_7B4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v38 = a4;
  v37 = type metadata accessor for Application();
  v9 = *(*(v37 - 8) + 64);
  v10 = __chkstk_darwin(v37);
  v36 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v28 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v28 - v17;
  v29 = a2;
  if (a3 != a2)
  {
    v19 = *v4;
    v20 = *(v16 + 72);
    v21 = *v4 + v20 * (a3 - 1);
    v34 = -v20;
    v35 = v19;
    v22 = a1 - a3;
    v28 = v20;
    v23 = v19 + v20 * a3;
LABEL_4:
    v32 = v21;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    v24 = v21;
    while (1)
    {
      sub_7A4F0(v23, v18, type metadata accessor for Application);
      sub_7A4F0(v24, v14, type metadata accessor for Application);
      v25 = v38(v18, v14);
      sub_7AF04(v14, type metadata accessor for Application);
      result = sub_7AF04(v18, type metadata accessor for Application);
      if (v5)
      {
        break;
      }

      if (v25)
      {
        if (!v35)
        {
          __break(1u);
          return result;
        }

        v26 = v36;
        sub_7A88C(v23, v36, type metadata accessor for Application);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_7A88C(v26, v24, type metadata accessor for Application);
        v24 += v34;
        v23 += v34;
        if (!__CFADD__(v22++, 1))
        {
          continue;
        }
      }

      a3 = v33 + 1;
      v21 = v32 + v28;
      v22 = v31 - 1;
      v23 = v30 + v28;
      if (v33 + 1 != v29)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_7B750(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v143 = a4;
  v144 = a5;
  v131 = a1;
  v136 = type metadata accessor for Application();
  v141 = *(v136 - 8);
  v10 = *(v141 + 64);
  v11 = __chkstk_darwin(v136);
  v133 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v135 = &v120 - v14;
  v15 = __chkstk_darwin(v13);
  v16 = __chkstk_darwin(v15);
  v18 = &v120 - v17;
  v19 = __chkstk_darwin(v16);
  v20 = __chkstk_darwin(v19);
  v22 = &v120 - v21;
  v23 = __chkstk_darwin(v20);
  result = __chkstk_darwin(v23);
  v142 = a3;
  if (a3[1] < 1)
  {
    v31 = _swiftEmptyArrayStorage;
LABEL_99:
    v22 = *v131;
    if (*v131)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_101;
    }

    goto LABEL_142;
  }

  v29 = a3[1];
  v126 = &v120 - v25;
  v127 = v28;
  v137 = v27;
  v134 = v26;
  v125 = a6;
  v30 = 0;
  v31 = _swiftEmptyArrayStorage;
  v124 = v18;
  while (1)
  {
    if (v30 + 1 >= v29)
    {
      v44 = v30 + 1;
    }

    else
    {
      v129 = v29;
      v32 = *v142;
      v33 = *(v141 + 72);
      v34 = v30;
      v35 = *v142 + v33 * (v30 + 1);
      v36 = v126;
      sub_7A4F0(v35, v126, type metadata accessor for Application);
      v140 = v32;
      v37 = v32 + v33 * v34;
      v38 = v127;
      sub_7A4F0(v37, v127, type metadata accessor for Application);
      LODWORD(v139) = v143(v36, v38);
      if (v7)
      {
        sub_7AF04(v38, type metadata accessor for Application);
        v119 = v36;
        goto LABEL_112;
      }

      sub_7AF04(v38, type metadata accessor for Application);
      result = sub_7AF04(v36, type metadata accessor for Application);
      v123 = v129 - 1;
      v138 = v129 - 2;
      v39 = v140 + v33 * (v34 + 2);
      v128 = v34;
      v40 = v33;
      v140 = v33;
      while (v138 != v34)
      {
        sub_7A4F0(v39, v22, type metadata accessor for Application);
        v41 = v22;
        v42 = v137;
        sub_7A4F0(v35, v137, type metadata accessor for Application);
        v43 = v143(v41, v42);
        sub_7AF04(v42, type metadata accessor for Application);
        result = sub_7AF04(v41, type metadata accessor for Application);
        ++v34;
        v40 = v140;
        v39 += v140;
        v35 += v140;
        v22 = v41;
        if ((v139 ^ v43))
        {
          v44 = v34 + 1;
          goto LABEL_12;
        }
      }

      v34 = v123;
      v44 = v129;
LABEL_12:
      v30 = v128;
      if ((v139 & 1) == 0)
      {
        goto LABEL_15;
      }

      if (v44 < v128)
      {
        goto LABEL_136;
      }

      if (v128 <= v34)
      {
        v45 = v44;
        v46 = v40 * (v44 - 1);
        v47 = v45 * v40;
        v129 = v45;
        v130 = v22;
        v48 = v45;
        v49 = v128;
        v50 = v128 * v40;
        do
        {
          if (v49 != --v48)
          {
            v51 = *v142;
            if (!*v142)
            {
              goto LABEL_140;
            }

            sub_7A88C(v51 + v50, v133, type metadata accessor for Application);
            if (v50 < v46 || v51 + v50 >= (v51 + v47))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v50 != v46)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_7A88C(v133, v51 + v46, type metadata accessor for Application);
            v22 = v130;
            v40 = v140;
          }

          ++v49;
          v46 -= v40;
          v47 -= v40;
          v50 += v40;
        }

        while (v49 < v48);
        v18 = v124;
        v30 = v128;
        v44 = v129;
      }

      else
      {
LABEL_15:
        v18 = v124;
      }
    }

    v52 = v142[1];
    if (v44 >= v52)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v44, v30))
    {
      goto LABEL_132;
    }

    if (v44 - v30 >= v125)
    {
LABEL_36:
      v54 = v44;
      if (v44 < v30)
      {
        goto LABEL_131;
      }

      goto LABEL_37;
    }

    if (__OFADD__(v30, v125))
    {
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    if (v30 + v125 >= v52)
    {
      v53 = v142[1];
    }

    else
    {
      v53 = v30 + v125;
    }

    if (v53 < v30)
    {
      goto LABEL_135;
    }

    if (v44 == v53)
    {
      goto LABEL_36;
    }

    v130 = v22;
    v102 = *v142;
    v103 = *(v141 + 72);
    v104 = *v142 + v103 * (v44 - 1);
    v139 = -v103;
    v140 = v102;
    v128 = v30;
    v105 = v30 - v44;
    v121 = v103;
    v106 = v102 + v44 * v103;
    v138 = v53;
    v132 = v31;
    do
    {
      v122 = v106;
      v123 = v105;
      v129 = v104;
      while (1)
      {
        sub_7A4F0(v106, v18, type metadata accessor for Application);
        v107 = v18;
        v108 = v134;
        sub_7A4F0(v104, v134, type metadata accessor for Application);
        v109 = v143(v107, v108);
        if (v7)
        {
          sub_7AF04(v108, type metadata accessor for Application);
          v119 = v107;
LABEL_112:
          sub_7AF04(v119, type metadata accessor for Application);
        }

        v110 = v109;
        v111 = v44;
        sub_7AF04(v108, type metadata accessor for Application);
        result = sub_7AF04(v107, type metadata accessor for Application);
        v18 = v107;
        if ((v110 & 1) == 0)
        {
          break;
        }

        if (!v140)
        {
          goto LABEL_138;
        }

        v112 = v135;
        sub_7A88C(v106, v135, type metadata accessor for Application);
        swift_arrayInitWithTakeFrontToBack();
        sub_7A88C(v112, v104, type metadata accessor for Application);
        v104 += v139;
        v106 += v139;
        v113 = __CFADD__(v105++, 1);
        v44 = v111;
        v7 = 0;
        v31 = v132;
        if (v113)
        {
          goto LABEL_95;
        }
      }

      v7 = 0;
      v31 = v132;
LABEL_95:
      ++v44;
      v104 = v129 + v121;
      v105 = v123 - 1;
      v106 = v122 + v121;
      v54 = v138;
    }

    while (v44 != v138);
    v22 = v130;
    v30 = v128;
    if (v138 < v128)
    {
      goto LABEL_131;
    }

LABEL_37:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_20780(0, *(v31 + 2) + 1, 1, v31);
      v31 = result;
    }

    v56 = *(v31 + 2);
    v55 = *(v31 + 3);
    v57 = v56 + 1;
    if (v56 >= v55 >> 1)
    {
      result = sub_20780((v55 > 1), v56 + 1, 1, v31);
      v31 = result;
    }

    *(v31 + 2) = v57;
    v58 = &v31[16 * v56];
    *(v58 + 4) = v30;
    *(v58 + 5) = v54;
    v138 = v54;
    v59 = *v131;
    if (!*v131)
    {
      goto LABEL_141;
    }

    if (v56)
    {
      break;
    }

LABEL_3:
    v29 = v142[1];
    v30 = v138;
    if (v138 >= v29)
    {
      goto LABEL_99;
    }
  }

  while (2)
  {
    v60 = v57 - 1;
    if (v57 >= 4)
    {
      v65 = &v31[16 * v57 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_118;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_119;
      }

      v72 = &v31[16 * v57];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_121;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_124;
      }

      if (v76 >= v68)
      {
        v94 = &v31[16 * v60 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_130;
        }

        if (v63 < v97)
        {
          v60 = v57 - 2;
        }
      }

      else
      {
LABEL_56:
        if (v64)
        {
          goto LABEL_120;
        }

        v77 = &v31[16 * v57];
        v79 = *v77;
        v78 = *(v77 + 1);
        v80 = __OFSUB__(v78, v79);
        v81 = v78 - v79;
        v82 = v80;
        if (v80)
        {
          goto LABEL_123;
        }

        v83 = &v31[16 * v60 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v71 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v71)
        {
          goto LABEL_126;
        }

        if (__OFADD__(v81, v86))
        {
          goto LABEL_127;
        }

        if (v81 + v86 < v63)
        {
          goto LABEL_70;
        }

        if (v63 < v86)
        {
          v60 = v57 - 2;
        }
      }
    }

    else
    {
      if (v57 == 3)
      {
        v61 = *(v31 + 4);
        v62 = *(v31 + 5);
        v71 = __OFSUB__(v62, v61);
        v63 = v62 - v61;
        v64 = v71;
        goto LABEL_56;
      }

      v87 = &v31[16 * v57];
      v89 = *v87;
      v88 = *(v87 + 1);
      v71 = __OFSUB__(v88, v89);
      v81 = v88 - v89;
      v82 = v71;
LABEL_70:
      if (v82)
      {
        goto LABEL_122;
      }

      v90 = &v31[16 * v60];
      v92 = *(v90 + 4);
      v91 = *(v90 + 5);
      v71 = __OFSUB__(v91, v92);
      v93 = v91 - v92;
      if (v71)
      {
        goto LABEL_125;
      }

      if (v93 < v81)
      {
        goto LABEL_3;
      }
    }

    v98 = v60 - 1;
    if (v60 - 1 < v57)
    {
      if (!*v142)
      {
        goto LABEL_137;
      }

      v99 = *&v31[16 * v98 + 32];
      v100 = *&v31[16 * v60 + 40];
      sub_7C248(*v142 + *(v141 + 72) * v99, *v142 + *(v141 + 72) * *&v31[16 * v60 + 32], *v142 + *(v141 + 72) * v100, v59, v143, v144);
      if (v7)
      {
      }

      if (v100 < v99)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_2076C(v31);
      }

      if (v98 >= *(v31 + 2))
      {
        goto LABEL_117;
      }

      v101 = &v31[16 * v98];
      *(v101 + 4) = v99;
      *(v101 + 5) = v100;
      v145 = v31;
      result = sub_206E0(v60);
      v31 = v145;
      v57 = *(v145 + 2);
      if (v57 <= 1)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

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
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  result = sub_2076C(v31);
  v31 = result;
LABEL_101:
  v145 = v31;
  v114 = *(v31 + 2);
  if (v114 < 2)
  {
  }

  v115 = v143;
  while (*v142)
  {
    v116 = *&v31[16 * v114];
    v117 = *&v31[16 * v114 + 24];
    sub_7C248(*v142 + *(v141 + 72) * v116, *v142 + *(v141 + 72) * *&v31[16 * v114 + 16], *v142 + *(v141 + 72) * v117, v22, v115, v144);
    if (v7)
    {
    }

    if (v117 < v116)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_2076C(v31);
    }

    if (v114 - 2 >= *(v31 + 2))
    {
      goto LABEL_129;
    }

    v118 = &v31[16 * v114];
    *v118 = v116;
    *(v118 + 1) = v117;
    v145 = v31;
    result = sub_206E0(v114 - 1);
    v31 = v145;
    v114 = *(v145 + 2);
    if (v114 <= 1)
    {
    }
  }

LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

unint64_t sub_7C248(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6)
{
  v7 = v6;
  v55 = a6;
  v56 = a5;
  v57 = a3;
  v54 = type metadata accessor for Application();
  v11 = *(*(v54 - 8) + 64);
  v12 = __chkstk_darwin(v54);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v46 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v46 - v19;
  result = __chkstk_darwin(v18);
  v23 = &v46 - v22;
  v53 = *(v24 + 72);
  if (!v53)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  result = a1;
  if (a2 - a1 == 0x8000000000000000 && v53 == -1)
  {
    goto LABEL_66;
  }

  v25 = v57 - a2;
  if (v57 - a2 != 0x8000000000000000 || v53 != -1)
  {
    v26 = (a2 - a1) / v53;
    v60 = a1;
    v59 = a4;
    v52 = a1;
    if (v26 < v25 / v53)
    {
      v27 = v26 * v53;
      if (a4 < result || result + v27 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == result)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      result = v52;
LABEL_17:
      v52 = a4 + v27;
      v58 = a4 + v27;
      if (v27 >= 1 && a2 < v57)
      {
        while (1)
        {
          v30 = result;
          sub_7A4F0(a2, v23, type metadata accessor for Application);
          sub_7A4F0(a4, v20, type metadata accessor for Application);
          v31 = v56(v23, v20);
          if (v7)
          {
            break;
          }

          v32 = v31;
          v33 = a4;
          sub_7AF04(v20, type metadata accessor for Application);
          sub_7AF04(v23, type metadata accessor for Application);
          if (v32)
          {
            v34 = v53;
            v35 = v30;
            if (v30 < a2 || v30 >= a2 + v53)
            {
              swift_arrayInitWithTakeFrontToBack();
              v35 = v30;
              a2 += v34;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v30 != a2)
              {
                swift_arrayInitWithTakeBackToFront();
                v35 = v30;
              }

              a2 += v34;
            }
          }

          else
          {
            v36 = a4;
            v34 = v53;
            a4 += v53;
            v35 = v30;
            if (v30 < v33 || v30 >= a4)
            {
              swift_arrayInitWithTakeFrontToBack();
              v35 = v30;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v30 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
                v35 = v30;
              }
            }

            v59 = a4;
          }

          result = v35 + v34;
          v60 = result;
          if (a4 >= v52 || a2 >= v57)
          {
            goto LABEL_64;
          }
        }

        sub_7AF04(v20, type metadata accessor for Application);
        sub_7AF04(v23, type metadata accessor for Application);
      }

LABEL_64:
      sub_7C890(&v60, &v59, &v58);
      return 1;
    }

    v28 = v25 / v53 * v53;
    if (a4 < a2 || a2 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_40:
        v37 = a4 + v28;
        if (v28 >= 1)
        {
          v38 = -v53;
          v39 = v37;
          v48 = v17;
          v49 = v14;
          do
          {
            v46 = v37;
            v40 = a2;
            v50 = a2;
            v51 = a2 + v38;
            while (1)
            {
              v41 = v57;
              if (v40 <= result)
              {
                v60 = v40;
                v58 = v46;
                goto LABEL_64;
              }

              v47 = v37;
              v53 = v39;
              v42 = v39 + v38;
              sub_7A4F0(v39 + v38, v17, type metadata accessor for Application);
              sub_7A4F0(v51, v14, type metadata accessor for Application);
              v43 = v56(v17, v14);
              if (v7)
              {
                sub_7AF04(v14, type metadata accessor for Application);
                sub_7AF04(v17, type metadata accessor for Application);
                v60 = v50;
                v58 = v47;
                goto LABEL_64;
              }

              v44 = v43;
              v57 = v41 + v38;
              sub_7AF04(v14, type metadata accessor for Application);
              sub_7AF04(v17, type metadata accessor for Application);
              if (v44)
              {
                break;
              }

              v37 = v42;
              if (v41 < v53 || v57 >= v53)
              {
                swift_arrayInitWithTakeFrontToBack();
                v7 = 0;
              }

              else
              {
                v7 = 0;
                if (v41 != v53)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v39 = v42;
              result = v52;
              v17 = v48;
              v14 = v49;
              v40 = v50;
              if (v42 <= a4)
              {
                a2 = v50;
                goto LABEL_63;
              }
            }

            if (v41 < v50 || v57 >= v50)
            {
              a2 = v51;
              swift_arrayInitWithTakeFrontToBack();
              v7 = 0;
              v37 = v47;
            }

            else
            {
              v45 = v41 == v50;
              a2 = v51;
              v7 = 0;
              v37 = v47;
              if (!v45)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = v52;
            v39 = v53;
            v17 = v48;
            v14 = v49;
          }

          while (v53 > a4);
        }

LABEL_63:
        v60 = a2;
        v58 = v37;
        goto LABEL_64;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    result = v52;
    goto LABEL_40;
  }

LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_7C890(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for Application();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_7C990@<X0>(uint64_t *a1@<X8>)
{
  result = sub_80F88();
  *a1 = result;
  return result;
}

uint64_t sub_7C9BC(uint64_t *a1)
{
  v1 = *a1;

  return sub_80F98();
}

uint64_t sub_7C9E8()
{
  v1 = (type metadata accessor for AppsListView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for Application();
  v6 = *(v5 - 1);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = (v3 + v4 + v7) & ~v7;
  v10 = (v0 + v3);
  v11 = *v10;

  v12 = v10[4];

  v13 = v10[5];

  v14 = v10[8];

  v15 = v10 + v1[11];
  if (!(*(v6 + 48))(v15, 1, v5))
  {
    v16 = *(v15 + 8);

    v17 = *(v15 + 24);

    v18 = *(v15 + 40);

    sub_431D4(*(v15 + 80), *(v15 + 88), *(v15 + 96));
    v19 = *(v15 + 112);

    v20 = *(v15 + 120);

    v21 = v5[18];
    v22 = sub_80A38();
    v23 = *(v22 - 8);
    if (!(*(v23 + 48))(v15 + v21, 1, v22))
    {
      (*(v23 + 8))(v15 + v21, v22);
    }

    v24 = *(v15 + v5[19] + 8);

    v25 = *(v15 + v5[21]);
  }

  v26 = *(v15 + *(sub_147EC(&qword_BA2C0, qword_8C3A0) + 28));

  v27 = v0 + v9;
  v28 = *(v0 + v9 + 8);

  v29 = *(v0 + v9 + 24);

  v30 = *(v0 + v9 + 40);

  sub_431D4(*(v27 + 80), *(v27 + 88), *(v27 + 96));
  v31 = *(v0 + v9 + 112);

  v32 = *(v0 + v9 + 120);

  v33 = v5[18];
  v34 = sub_80A38();
  v35 = *(v34 - 8);
  if (!(*(v35 + 48))(v0 + v9 + v33, 1, v34))
  {
    (*(v35 + 8))(v27 + v33, v34);
  }

  v36 = *(v27 + v5[19] + 8);

  v37 = *(v27 + v5[21]);

  return _swift_deallocObject(v0, v9 + v8, v2 | v7 | 7);
}

uint64_t sub_7CD24(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for AppsListView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for Application() - 8);
  v6 = v1 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));

  return a1(v1 + v3, v6);
}

unint64_t sub_7CE88()
{
  result = qword_BA418;
  if (!qword_BA418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA418);
  }

  return result;
}

void *sub_7CF08(void *result, void *a2)
{
  v2 = result[1];
  v3 = *result + v2;
  if (__OFADD__(*result, v2))
  {
    __break(1u);
  }

  else
  {
    v4 = a2[1];
    v5 = __OFADD__(*a2, v4);
    v6 = *a2 + v4;
    if (!v5)
    {
      return (v3 < v6);
    }
  }

  __break(1u);
  return result;
}

void *sub_7CF34(void *result, void *a2)
{
  v2 = a2[1];
  v3 = *a2 + v2;
  if (__OFADD__(*a2, v2))
  {
    __break(1u);
  }

  else
  {
    v4 = result[1];
    v5 = __OFADD__(*result, v4);
    v6 = *result + v4;
    if (!v5)
    {
      return (v3 >= v6);
    }
  }

  __break(1u);
  return result;
}

void *sub_7CF60(void *result, void *a2)
{
  v2 = result[1];
  v3 = *result + v2;
  if (__OFADD__(*result, v2))
  {
    __break(1u);
  }

  else
  {
    v4 = a2[1];
    v5 = __OFADD__(*a2, v4);
    v6 = *a2 + v4;
    if (!v5)
    {
      return (v3 >= v6);
    }
  }

  __break(1u);
  return result;
}

void *sub_7CF8C(void *result, void *a2)
{
  v2 = a2[1];
  v3 = *a2 + v2;
  if (__OFADD__(*a2, v2))
  {
    __break(1u);
  }

  else
  {
    v4 = result[1];
    v5 = __OFADD__(*result, v4);
    v6 = *result + v4;
    if (!v5)
    {
      return (v3 < v6);
    }
  }

  __break(1u);
  return result;
}

void *sub_7CFB8(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

unint64_t sub_7CFD8(void *a1)
{
  v2 = [a1 fixedSize];
  if ((v2 & 0x8000000000000000) != 0)
  {
    if (qword_B7850 != -1)
    {
      swift_once();
    }

    v3 = sub_80BC8();
    sub_19818(v3, qword_BCF70);
    v4 = a1;
    v5 = sub_80BB8();
    v6 = sub_81B18();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = [v4 fixedSize];

      _os_log_impl(&dword_0, v5, v6, "Unable to create fixed size from %llu", v7, 0xCu);
    }

    else
    {

      v5 = v4;
    }

    v2 = 0;
  }

  if (([a1 dataSize] & 0x8000000000000000) != 0)
  {
    if (qword_B7850 != -1)
    {
      swift_once();
    }

    v8 = sub_80BC8();
    sub_19818(v8, qword_BCF70);
    v9 = a1;
    v10 = sub_80BB8();
    v11 = sub_81B18();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = [v9 dataSize];

      _os_log_impl(&dword_0, v10, v11, "Unable to create data size from %llu", v12, 0xCu);
    }

    else
    {

      v10 = v9;
    }
  }

  return v2;
}

uint64_t sub_7D218@<X0>(void *a1@<X8>)
{
  result = sub_80EA8();
  *a1 = v3;
  return result;
}

uint64_t sub_7D26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 32);
  v34 = *(a1 + 24);
  v32 = *a1;
  v7 = *(a1 + 16);
  KeyPath = swift_getKeyPath();
  v38 = 0;
  v8 = v4;
  v9 = v5;
  sub_2092C(v8, v5, v7);

  v10 = sub_81058();
  v35[0] = 1;
  sub_7D6DC(a1, &v56);
  v49 = *&v57[144];
  v50 = *&v57[160];
  v45 = *&v57[80];
  v46 = *&v57[96];
  v47 = *&v57[112];
  v48 = *&v57[128];
  v41 = *&v57[16];
  v42 = *&v57[32];
  v43 = *&v57[48];
  v44 = *&v57[64];
  v39 = v56;
  v40 = *v57;
  v52[10] = *&v57[144];
  v52[11] = *&v57[160];
  v52[6] = *&v57[80];
  v52[7] = *&v57[96];
  v52[8] = *&v57[112];
  v52[9] = *&v57[128];
  v52[2] = *&v57[16];
  v52[3] = *&v57[32];
  v52[4] = *&v57[48];
  v52[5] = *&v57[64];
  v51 = *&v57[176];
  v53 = *&v57[176];
  v52[0] = v56;
  v52[1] = *v57;
  sub_14F6C(&v39, v54, &qword_BA478, &qword_8C810);
  sub_14FD4(v52, &qword_BA478, &qword_8C810);
  *(&v37[9] + 7) = v48;
  *(&v37[10] + 7) = v49;
  *(&v37[11] + 7) = v50;
  *(&v37[12] + 7) = v51;
  *(&v37[5] + 7) = v44;
  *(&v37[6] + 7) = v45;
  *(&v37[7] + 7) = v46;
  *(&v37[8] + 7) = v47;
  *(&v37[1] + 7) = v40;
  *(&v37[2] + 7) = v41;
  *(&v37[3] + 7) = v42;
  *(&v37[4] + 7) = v43;
  *(v37 + 7) = v39;
  v54[0] = v10;
  v54[1] = 0;
  LOBYTE(v55[0]) = 1;
  v11 = v37[9];
  *(&v55[9] + 1) = v37[9];
  v12 = v37[10];
  *(&v55[10] + 1) = v37[10];
  v13 = v37[11];
  *(&v55[11] + 1) = v37[11];
  v55[12] = *(&v37[11] + 15);
  v14 = v37[5];
  *(&v55[5] + 1) = v37[5];
  v15 = v37[6];
  *(&v55[6] + 1) = v37[6];
  v16 = v37[7];
  *(&v55[7] + 1) = v37[7];
  v17 = v37[8];
  *(&v55[8] + 1) = v37[8];
  v18 = v37[1];
  *(&v55[1] + 1) = v37[1];
  v19 = v37[2];
  *(&v55[2] + 1) = v37[2];
  v20 = v37[3];
  *(&v55[3] + 1) = v37[3];
  v21 = v37[4];
  *(&v55[4] + 1) = v37[4];
  v22 = v37[0];
  *(v55 + 1) = v37[0];
  *&v36[167] = v55[9];
  *&v36[183] = v55[10];
  *&v36[199] = v55[11];
  *&v36[215] = *(&v37[11] + 15);
  *&v36[103] = v55[5];
  *&v36[119] = v55[6];
  *&v36[135] = v55[7];
  *&v36[151] = v55[8];
  *&v36[39] = v55[1];
  *&v36[55] = v55[2];
  *&v36[71] = v55[3];
  *&v36[87] = v55[4];
  *&v36[7] = v10;
  *&v36[23] = v55[0];
  v23 = *&v36[160];
  *(a2 + 233) = *&v36[176];
  v24 = *&v36[208];
  *(a2 + 249) = *&v36[192];
  *(a2 + 265) = v24;
  v25 = *&v36[96];
  *(a2 + 169) = *&v36[112];
  v26 = *&v36[144];
  *(a2 + 185) = *&v36[128];
  *(a2 + 201) = v26;
  *(a2 + 217) = v23;
  v27 = *&v36[32];
  *(a2 + 105) = *&v36[48];
  v28 = *&v36[80];
  *(a2 + 121) = *&v36[64];
  *(a2 + 137) = v28;
  *(a2 + 153) = v25;
  v29 = *&v36[16];
  *(a2 + 57) = *v36;
  *(a2 + 73) = v29;
  *(a2 + 89) = v27;
  *&v57[145] = v11;
  *&v57[161] = v12;
  *&v57[177] = v13;
  *&v57[192] = *(&v37[11] + 15);
  *&v57[81] = v14;
  *&v57[97] = v15;
  *&v57[113] = v16;
  *&v57[129] = v17;
  *&v57[17] = v18;
  *&v57[33] = v19;
  *&v57[49] = v20;
  *&v57[65] = v21;
  v30 = v38;
  v35[224] = 1;
  *a2 = KeyPath;
  *(a2 + 8) = v30;
  *(a2 + 16) = v32;
  *(a2 + 24) = v9;
  *(a2 + 32) = v7;
  *(a2 + 40) = v34;
  *(a2 + 48) = v6;
  *(a2 + 56) = 3;
  *(a2 + 280) = *&v36[223];
  *(a2 + 288) = 0;
  *(a2 + 296) = 1;
  v56 = v10;
  v57[0] = 1;
  *&v57[1] = v22;
  sub_5D064(KeyPath, v30 & 1);
  sub_2092C(v32, v9, v7);

  sub_14F6C(v54, v35, &qword_BA480, &qword_8C818);
  sub_14FD4(&v56, &qword_BA480, &qword_8C818);
  sub_4C7F8(KeyPath, v30 & 1);
  sub_431D4(v32, v9, v7);
}

uint64_t sub_7D6DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = sub_80FF8();
  LOBYTE(v62[0]) = 1;
  sub_7D9DC(a1, &v66);
  v4 = v66;
  v5 = v67;
  v6 = *v68;
  v7 = *&v68[16];
  v30 = *&v68[16];
  v31 = v66;
  v8 = v68[24];
  v25 = *&v68[32];
  v26 = *&v68[8];
  LOBYTE(v66) = v68[24];
  v27 = sub_81058();
  LOBYTE(v66) = 1;
  sub_7DB3C(a1, v56);
  *&v55[7] = v56[0];
  *&v55[23] = v56[1];
  *&v55[39] = v56[2];
  *&v55[55] = v56[3];
  v9 = v66;
  v29 = sub_81208();
  KeyPath = swift_getKeyPath();
  v10 = sub_81448();
  v11 = swift_getKeyPath();
  v57[0] = v32;
  v57[1] = 0;
  LOBYTE(v58) = 1;
  *(&v58 + 1) = v4;
  *&v59 = v5;
  *(&v59 + 1) = v6;
  *&v60 = v26;
  *(&v60 + 1) = v7;
  LOBYTE(v61) = v8;
  *(&v61 + 1) = v25;
  v43 = v58;
  v44 = v59;
  v45 = v60;
  v46 = v61;
  v42 = v32;
  v62[0] = v27;
  v62[1] = 0;
  v63[0] = v9;
  v12 = *v55;
  *&v63[1] = *v55;
  *&v63[64] = *&v55[63];
  v13 = *&v55[48];
  *&v63[49] = *&v55[48];
  v14 = *&v55[32];
  *&v63[33] = *&v55[32];
  v15 = *&v55[16];
  *&v63[17] = *&v55[16];
  *&v63[72] = KeyPath;
  *&v64 = v29;
  *(&v64 + 1) = v11;
  v49 = *&v63[16];
  v50 = *&v63[32];
  v47 = v27;
  v48 = *v63;
  v52 = *&v63[64];
  v53 = v64;
  v51 = *&v63[48];
  v16 = v58;
  v17 = v60;
  v18 = v61;
  *(a2 + 32) = v59;
  *(a2 + 48) = v17;
  *a2 = v32;
  *(a2 + 16) = v16;
  v19 = v47;
  v20 = v49;
  v21 = v50;
  *(a2 + 96) = v48;
  *(a2 + 112) = v20;
  *(a2 + 64) = v18;
  *(a2 + 80) = v19;
  v22 = v51;
  v23 = v53;
  *(a2 + 160) = v52;
  *(a2 + 176) = v23;
  *(a2 + 128) = v21;
  *(a2 + 144) = v22;
  v65 = v10;
  v54 = v10;
  *(a2 + 192) = v10;
  v66 = v27;
  v67 = 0;
  v68[0] = v9;
  *&v68[17] = v15;
  *&v68[33] = v14;
  *v69 = v13;
  *&v68[1] = v12;
  *&v69[15] = *&v55[63];
  v70 = KeyPath;
  v71 = v29;
  v72 = v11;
  v73 = v10;
  sub_14F6C(v57, v33, &qword_BA488, &qword_8C880);
  sub_14F6C(v62, v33, &qword_BA490, &qword_8C888);
  sub_14FD4(&v66, &qword_BA490, &qword_8C888);
  v33[0] = v32;
  v33[1] = 0;
  v34 = 1;
  v35 = v31;
  v36 = v5;
  v37 = v6;
  v38 = v26;
  v39 = v30;
  v40 = v8;
  v41 = v25;
  return sub_14FD4(v33, &qword_BA488, &qword_8C880);
}

uint64_t sub_7D9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 72))
  {
    v4 = sub_81478();
    v5 = sub_81448();
    KeyPath = swift_getKeyPath();
  }

  else
  {
    v4 = 0;
    KeyPath = 0;
    v5 = 0;
  }

  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  sub_14ED0();

  v7 = sub_81288();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_7EDB0(v4);
  v11 &= 1u;
  sub_16C28(v7, v9, v11);

  sub_7EE00(v4);
  *a2 = v4;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v5;
  *(a2 + 24) = v7;
  *(a2 + 32) = v9;
  *(a2 + 40) = v11;
  *(a2 + 48) = v13;
  sub_15034(v7, v9, v11);

  return sub_7EE00(v4);
}

uint64_t sub_7DB3C@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = a1[11];
  if (!v4)
  {
LABEL_8:
    v7 = 0;
    v11 = 0;
    v9 = 0;
    v12 = a1[8];
    if (!v12)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = a1[10] & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    v4 = 0;
    goto LABEL_8;
  }

  v21 = a1[10];
  v23 = a1[11];
  sub_14ED0();

  v4 = sub_81288();
  v7 = v6;
  v9 = v8;
  v11 = v10 & 1;
  sub_16C28(v4, v6, v10 & 1);

  v12 = a1[8];
  if (!v12)
  {
LABEL_6:
    v13 = 0;
LABEL_14:
    v19 = 0;
    v17 = 0;
    goto LABEL_15;
  }

LABEL_9:
  v14 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v14 = a1[7] & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    v13 = 0;
    v12 = 0;
    goto LABEL_14;
  }

  v22 = a1[7];
  sub_14ED0();

  v13 = sub_81288();
  v12 = v15;
  v17 = v16;
  v19 = v18 & 1;
  sub_16C28(v13, v15, v18 & 1);

LABEL_15:
  sub_4E778(v4, v7, v11, v9);
  sub_4E778(v13, v12, v19, v17);
  sub_4E7BC(v4, v7, v11, v9);
  sub_4E7BC(v13, v12, v19, v17);
  *a2 = v4;
  a2[1] = v7;
  a2[2] = v11;
  a2[3] = v9;
  a2[4] = v13;
  a2[5] = v12;
  a2[6] = v19;
  a2[7] = v17;
  sub_4E7BC(v13, v12, v19, v17);
  return sub_4E7BC(v4, v7, v11, v9);
}

void *sub_7DD14@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v13[2] = v1[2];
  v13[3] = v3;
  v4 = v1[5];
  v13[4] = v1[4];
  v13[5] = v4;
  v5 = v1[1];
  v13[0] = *v1;
  v13[1] = v5;
  v6 = sub_81008();
  v12 = 0;
  sub_7D26C(v13, __src);
  memcpy(__dst, __src, 0x129uLL);
  memcpy(v15, __src, 0x129uLL);
  sub_14F6C(__dst, v9, &qword_BA470, &qword_8C7D8);
  sub_14FD4(v15, &qword_BA470, &qword_8C7D8);
  memcpy(&v11[7], __dst, 0x129uLL);
  v7 = v12;
  *a1 = v6;
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = v7;
  return memcpy((a1 + 17), v11, 0x130uLL);
}

uint64_t STUIAppHeaderCell.refreshCellContents(with:)()
{
  v1[3] = sub_147EC(&qword_BA420, &qword_8C660);
  v1[4] = sub_14F24(&qword_BA428, &qword_BA420, &qword_8C660);
  sub_7E490(v1);
  sub_147EC(&qword_BA430, qword_8C668);
  sub_7E4F4();
  sub_81178();
  return sub_81B48();
}

void sub_7DEDC(void *a1@<X0>, unint64_t *a2@<X8>)
{
  if (a1)
  {
    if ([a1 propertyForKey:STStorageAppKey])
    {
      sub_81BF8();
      swift_unknownObjectRelease();
    }

    else
    {
      v55 = 0u;
      v56 = 0u;
    }

    v57[0] = v55;
    v57[1] = v56;
    if (*(&v56 + 1))
    {
      sub_7EE4C();
      if (swift_dynamicCast())
      {
        v3 = [v54 bundleIdentifier];
        v4 = sub_81928();
        v6 = v5;

        if (v4 == 0xD000000000000010 && 0x8000000000094710 == v6)
        {
          goto LABEL_9;
        }

        v20 = sub_81E18();

        v7 = 0;
        if ((v20 & 1) == 0)
        {
          v21 = [v54 bundleIdentifier];
          v22 = sub_81928();
          v24 = v23;

          if (v22 == 0xD000000000000019 && 0x8000000000094730 == v24)
          {
LABEL_9:

            v7 = 0;
            goto LABEL_16;
          }

          v25 = sub_81E18();

          v7 = v25 ^ 1;
        }

LABEL_16:
        v26 = [v54 isDemoted];
        v27 = [v54 bundleIdentifier];
        v28 = sub_81928();
        v30 = v29;

        if (v26)
        {
          if (v28 == 0xD000000000000010 && 0x8000000000094710 == v30 || (sub_81E18() & 1) != 0)
          {

            if (qword_B7870 != -1)
            {
              swift_once();
            }

            v31 = v7;
            v32 = unk_BD020;
            v51 = qword_BD018;
            v52 = *algn_BD008;
            v53 = qword_BD000;
            v49 = byte_BD010;
            sub_2092C(qword_BD000, *algn_BD008, byte_BD010);
            v50 = v32;

            goto LABEL_32;
          }

          if (v28 == 0xD000000000000019 && 0x8000000000094730 == v30)
          {

LABEL_42:
            if (qword_B7878 != -1)
            {
              swift_once();
            }

            v31 = v7;
            v48 = unk_BD048;
            v51 = qword_BD040;
            v52 = qword_BD030;
            v53 = qword_BD028;
            v49 = byte_BD038;
            sub_2092C(qword_BD028, qword_BD030, byte_BD038);
            v50 = v48;

            goto LABEL_32;
          }

          v47 = sub_81E18();

          if (v47)
          {
            goto LABEL_42;
          }

          goto LABEL_31;
        }

        if (sub_81928() == v28 && v33 == v30)
        {
        }

        else
        {
          v34 = sub_81E18();

          if ((v34 & 1) == 0)
          {
LABEL_31:
            v31 = v7;
            v35 = [v54 appIdentifier];
            v36 = sub_81928();
            v38 = v37;

            v49 = 0;
            v52 = v38;
            v53 = v36;
            v50 = v38;
            v51 = v36;
            goto LABEL_32;
          }
        }

        v31 = v7;
        v49 = 0;
        v52 = 0x8000000000096190;
        v53 = 0xD000000000000015;
        v50 = 0x8000000000096190;
        v51 = 0xD000000000000015;
LABEL_32:
        v39 = [v54 name];
        v12 = sub_81928();
        v13 = v40;

        v41 = [v54 vendorName];
        if (v41)
        {
          v42 = v41;
          v14 = sub_81928();
          v15 = v43;
        }

        else
        {
          v14 = 0;
          v15 = 0xE000000000000000;
        }

        v18 = [v54 isDemoted] & v31;
        if ([v54 isApple] || (v44 = objc_msgSend(v54, "versionString")) == 0)
        {

          v16 = 0;
          v17 = 0;
        }

        else
        {
          v45 = v44;
          v16 = sub_81928();
          v17 = v46;
        }

        v19 = v49;
        v9 = v52;
        v8 = v53;
        v11 = v50;
        v10 = v51;
        goto LABEL_40;
      }
    }

    else
    {
      sub_14FD4(v57, &qword_BA498, &qword_8C890);
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
LABEL_40:
    *a2 = v8;
    a2[1] = v9;
    a2[2] = v19;
    a2[3] = v10;
    a2[4] = v11;
    a2[5] = v12;
    a2[6] = v13;
    a2[7] = v14;
    a2[8] = v15;
    a2[9] = v18;
    a2[10] = v16;
    a2[11] = v17;
    return;
  }

  __break(1u);
}

uint64_t *sub_7E490(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_7E4F4()
{
  result = qword_BA438;
  if (!qword_BA438)
  {
    sub_14E2C(&qword_BA430, qword_8C668);
    sub_7E578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA438);
  }

  return result;
}

unint64_t sub_7E578()
{
  result = qword_BA440;
  if (!qword_BA440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA440);
  }

  return result;
}

id STUIAppHeaderCell.__allocating_init(style:reuseIdentifier:specifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a3)
  {
    v8 = sub_818E8();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(v5) initWithStyle:a1 reuseIdentifier:v8 specifier:a4];

  return v9;
}

id STUIAppHeaderCell.init(style:reuseIdentifier:specifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v7 = sub_818E8();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v4;
  v10.super_class = type metadata accessor for STUIAppHeaderCell();
  v8 = objc_msgSendSuper2(&v10, "initWithStyle:reuseIdentifier:specifier:", a1, v7, a4);

  if (v8)
  {
  }

  return v8;
}

id STUIAppHeaderCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_818E8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id STUIAppHeaderCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_818E8();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for STUIAppHeaderCell();
  v6 = objc_msgSendSuper2(&v8, "initWithStyle:reuseIdentifier:", a1, v5);

  return v6;
}

id STUIAppHeaderCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id STUIAppHeaderCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for STUIAppHeaderCell();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id STUIAppHeaderCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STUIAppHeaderCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_7EB6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_7EB88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_7EBD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_7EC54@<X0>(void *a1@<X8>)
{
  result = sub_80EA8();
  *a1 = v3;
  return result;
}

uint64_t sub_7ECA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_80EC8();
  *a1 = result;
  return result;
}

uint64_t sub_7ECD4(uint64_t *a1)
{
  v1 = *a1;

  return sub_80ED8();
}

uint64_t sub_7ED00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_80F28();
  *a1 = result;
  return result;
}

uint64_t sub_7ED2C(uint64_t *a1)
{
  v1 = *a1;

  return sub_80F38();
}

uint64_t sub_7ED58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_80EC8();
  *a1 = result;
  return result;
}

uint64_t sub_7ED84(uint64_t *a1)
{
  v1 = *a1;

  return sub_80ED8();
}

uint64_t sub_7EDB0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_7EE00(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_7EE4C()
{
  result = qword_BA4A0;
  if (!qword_BA4A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_BA4A0);
  }

  return result;
}

void sub_7EF3C()
{
  v1 = sub_80D18();
  v104 = *(v1 - 8);
  v105 = v1;
  v2 = *(v104 + 64);
  __chkstk_darwin(v1);
  v103 = v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_80FC8();
  v4 = *(v102 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v102);
  v7 = v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Application();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = (v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_147EC(&qword_BA4F0, &qword_8C8D8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (v94 - v14);
  v100 = sub_147EC(&qword_BA4F8, &qword_8C8E0);
  v98 = *(v100 - 8);
  v16 = *(v98 + 64);
  __chkstk_darwin(v100);
  v18 = v94 - v17;
  v101 = sub_147EC(&qword_BA500, &qword_8C8E8);
  v99 = *(v101 - 8);
  v19 = *(v99 + 64);
  __chkstk_darwin(v101);
  v21 = v94 - v20;
  v22 = sub_147EC(&qword_BA508, &unk_8C8F0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v97 = v94 - v24;
  v25 = type metadata accessor for AppDetailViewWrapper();
  v110.receiver = v0;
  v110.super_class = v25;
  objc_msgSendSuper2(&v110, "viewDidLoad");
  v96 = v0;
  v26 = &v0[OBJC_IVAR____TtC17StorageSettingsUI20AppDetailViewWrapper_model];
  sub_208C8(&v0[OBJC_IVAR____TtC17StorageSettingsUI20AppDetailViewWrapper_model], v11);
  sub_6F7AC(v11, v15);
  if (qword_B7858 != -1)
  {
    swift_once();
  }

  v27 = qword_BCF88;
  type metadata accessor for StorageShared();
  sub_7FC18(&qword_B7A50, type metadata accessor for StorageShared);
  v28 = sub_80C38();
  v29 = (v15 + *(v12 + 36));
  *v29 = v28;
  v29[1] = v27;
  v30 = *(v26 + 3);
  v95 = *(v26 + 2);
  v106 = v95;
  v107 = v30;
  v94[1] = v30;
  v31 = sub_7FB5C();
  v32 = sub_14ED0();
  v33 = v27;
  sub_81358();
  sub_7FC60(v15);
  v34 = v102;
  (*(v4 + 104))(v7, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v102);
  v106 = v12;
  v107 = &type metadata for String;
  v108 = v31;
  v109 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v100;
  sub_813A8();
  (*(v4 + 8))(v7, v34);
  (*(v98 + 8))(v18, v36);
  v37 = v103;
  sub_80D08();
  v106 = v36;
  v107 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v38 = v101;
  sub_81318();
  (*(v104 + 8))(v37, v105);
  (*(v99 + 8))(v21, v38);
  v39 = objc_allocWithZone(sub_147EC(&unk_BA520, &qword_8C900));
  v40 = sub_81088();
  v41 = [v40 view];
  if (!v41)
  {
    __break(1u);
    goto LABEL_19;
  }

  v42 = v41;
  v43 = v96;
  v44 = [v96 view];
  if (!v44)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v45 = v44;
  [v44 bounds];
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;

  [v42 setFrame:{v47, v49, v51, v53}];
  v54 = [v40 view];
  if (!v54)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v55 = v54;
  [v54 setTranslatesAutoresizingMaskIntoConstraints:0];

  [v43 addChildViewController:v40];
  v56 = [v43 view];
  if (!v56)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v57 = v56;
  v58 = [v40 view];
  if (!v58)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v59 = v58;
  [v57 addSubview:v58];

  [v40 didMoveToParentViewController:v43];
  v60 = [v43 navigationItem];
  v61 = sub_818E8();
  [v60 setTitle:v61];

  v62 = [v43 navigationItem];
  [v62 setLargeTitleDisplayMode:2];

  v63 = [v43 view];
  if (!v63)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v64 = v63;
  sub_147EC(&qword_B8C70, &qword_89E70);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_896D0;
  v66 = [v43 view];
  if (!v66)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v67 = v66;
  v68 = [v66 topAnchor];

  v69 = [v40 view];
  if (!v69)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v70 = v69;
  v71 = [v69 topAnchor];

  v72 = [v68 constraintEqualToAnchor:v71];
  *(v65 + 32) = v72;
  v73 = [v43 view];
  if (!v73)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v74 = v73;
  v75 = [v73 leadingAnchor];

  v76 = [v40 view];
  if (!v76)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v77 = v76;
  v78 = [v76 leadingAnchor];

  v79 = [v75 constraintEqualToAnchor:v78];
  *(v65 + 40) = v79;
  v80 = [v43 view];
  if (!v80)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v81 = v80;
  v82 = [v80 bottomAnchor];

  v83 = [v40 view];
  if (!v83)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v84 = v83;
  v85 = [v83 bottomAnchor];

  v86 = [v82 constraintEqualToAnchor:v85];
  *(v65 + 48) = v86;
  v87 = [v43 view];
  if (!v87)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v88 = v87;
  v89 = [v87 trailingAnchor];

  v90 = [v40 view];
  if (v90)
  {
    v91 = [v90 trailingAnchor];

    v92 = [v89 constraintEqualToAnchor:v91];
    *(v65 + 56) = v92;
    sub_40730();
    isa = sub_819E8().super.isa;

    [v64 addConstraints:isa];

    return;
  }

LABEL_31:
  __break(1u);
}

id sub_7FA30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDetailViewWrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AppDetailViewWrapper()
{
  result = qword_BA4E0;
  if (!qword_BA4E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7FACC()
{
  result = type metadata accessor for Application();
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

unint64_t sub_7FB5C()
{
  result = qword_BA510;
  if (!qword_BA510)
  {
    sub_14E2C(&qword_BA4F0, &qword_8C8D8);
    sub_7FC18(&qword_BA518, type metadata accessor for DetailView);
    sub_406CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA510);
  }

  return result;
}

uint64_t sub_7FC18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_7FC60(uint64_t a1)
{
  v2 = sub_147EC(&qword_BA4F0, &qword_8C8D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_7FCC8(int a1, int a2, int a3)
{
  if (qword_BCF48 == -1)
  {
    v3 = dword_BCF38 < a1;
    if (dword_BCF38 > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    sub_807D8();
    a2 = v6;
    a3 = v5;
    v3 = dword_BCF38 < a1;
    if (dword_BCF38 > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_BCF3C > a2)
  {
    return 1;
  }

  if (dword_BCF3C < a2)
  {
    return 0;
  }

  return dword_BCF40 >= a3;
}

uint64_t sub_7FD88(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_BCF50 == -1)
  {
    if (qword_BCF58)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_807F0();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_BCF58)
    {
      return _availability_version_check();
    }
  }

  if (qword_BCF48 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_807D8();
    a3 = v10;
    a4 = v9;
    v8 = dword_BCF38 < v11;
    if (dword_BCF38 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_BCF3C > a3)
      {
        return 1;
      }

      if (dword_BCF3C >= a3)
      {
        return dword_BCF40 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_BCF38 < a2;
  if (dword_BCF38 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_7FF1C(uint64_t result)
{
  v1 = qword_BCF58;
  if (qword_BCF58)
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
      qword_BCF58 = &__availability_version_check;
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
                                          sscanf(v28, "%d.%d.%d", &dword_BCF38, &dword_BCF3C, &dword_BCF40);
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

void sub_80264(uint64_t a1, void *a2)
{
  [*(a1 + 32) name];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_B3AC() description];
  [a2 code];
  sub_B354();
  sub_B394();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x1Cu);
}

void sub_8031C(void *a1)
{
  v1 = [a1 name];
  sub_B3A0();
  sub_B378(&dword_0, &_os_log_default, v2, "Demoting app: %@", v3, v4, v5, v6, v7);
}

void sub_803EC(id *a1)
{
  v1 = [*a1 name];
  sub_B3A0();
  sub_B378(&dword_0, &_os_log_default, v2, "Application demote completed: %@", v3, v4, v5, v6, v7);
}

void sub_80478(void *a1)
{
  v1 = [a1 name];
  sub_B3A0();
  sub_B378(&dword_0, &_os_log_default, v2, "Restoring app: %@", v3, v4, v5, v6, v7);
}

void sub_80500(void *a1)
{
  [a1 code];
  v1 = [sub_B3AC() description];
  sub_B33C();
  sub_B394();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_8059C(id *a1)
{
  v1 = [*a1 name];
  sub_B3A0();
  sub_B378(&dword_0, &_os_log_default, v2, "Application restore completed: %@", v3, v4, v5, v6, v7);
}

void sub_80628(void *a1)
{
  [a1 code];
  v1 = [sub_B3AC() description];
  sub_B33C();
  sub_B394();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_806C4(void *a1)
{
  [a1 code];
  v1 = [sub_B3AC() description];
  sub_B33C();
  sub_B394();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}
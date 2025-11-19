uint64_t sub_3B220()
{
  v1 = type metadata accessor for MSStartMailImportView.ImageView(0);
  v2 = v0 + *(v1 + 24) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

unint64_t sub_3B294()
{
  result = qword_1237F0;
  if (!qword_1237F0)
  {
    sub_6110(&qword_1237E8, &qword_DB4D0);
    sub_3B34C();
    sub_109A8(&qword_121230, &qword_121238, &unk_D8E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1237F0);
  }

  return result;
}

unint64_t sub_3B34C()
{
  result = qword_1237F8;
  if (!qword_1237F8)
  {
    sub_6110(&qword_123800, &qword_DB4D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1237F8);
  }

  return result;
}

uint64_t sub_3B428()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  return v1;
}

double sub_3B49C@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return result;
}

double sub_3B528@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  *&v6[1] = *&v5[9];
  *v6 = *&v5[8];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = *v5;
  result = *&v6[1];
  *(a1 + 41) = *&v6[1];
  return result;
}

uint64_t sub_3B640(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a6;
  v32 = a5;
  v30[1] = a4;
  v8 = v6;
  v31 = a1;
  v10 = sub_D5340();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v15 = sub_6610(v10, qword_137988);
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_D5320();
  v17 = sub_D68A0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, a3, v18, 2u);
  }

  (*(v11 + 8))(v14, v10);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v38[0]) = 1;

  sub_D5580();
  v19 = sub_6648((v8 + OBJC_IVAR____TtCV18icloudMailSettings22MSMailImportDetailView9ViewModel_repository), *(v8 + OBJC_IVAR____TtCV18icloudMailSettings22MSMailImportDetailView9ViewModel_repository + 24));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v38[0] = v35;
  v38[1] = v36;
  v39[0] = v37[0];
  *(v39 + 9) = *(v37 + 9);
  v20 = v36;

  sub_3C4F8(v38);
  v21 = *v19;
  v22 = *(*v19 + 16);
  v23 = *(v21 + 24);
  *(&v36 + 1) = &type metadata for MSStopMailImportAPIRequest.Body;
  *&v37[0] = sub_3C54C();
  v35 = v20;
  objc_allocWithZone(type metadata accessor for MSStopMailImportAPIRequest());
  sub_13E28(&v35, v34);

  v24 = v22;
  v25 = v23;
  v26 = sub_45C9C(v22, v25, v34);

  sub_13EF4(&v35);
  v27 = sub_1F158();

  *&v35 = v27;
  swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = v31;
  *(v28 + 24) = a2;

  sub_66D4(&qword_1239E8, &qword_DB5E8);
  sub_3C780();
  sub_D55D0();

  swift_beginAccess();
  sub_D54B0();
  swift_endAccess();
}

uint64_t sub_3BA50(uint64_t *a1, uint64_t a2, const char *a3)
{
  v33 = a3;
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[3];
  v34 = a1[2];
  v35 = v9;
  v12 = a1[4];
  v36 = *(a1 + 40);
  if (v10)
  {
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v13 = sub_6610(v4, qword_137988);
    (*(v5 + 16))(v8, v13, v4);

    v14 = sub_D5320();
    v15 = sub_D68B0();

    v31 = v15;
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v32 = v12;
      v17 = v16;
      v29 = v16;
      v30 = swift_slowAlloc();
      v44 = v30;
      *v17 = 136315138;
      v38 = v35;
      v39 = v10;
      v40 = v34;
      LOBYTE(v41) = v11 & 1;
      v42 = v32;
      v43 = v36 & 1;
      sub_6780();
      v18 = sub_D6C60();
      v20 = sub_558F0(v18, v19, &v44);

      v21 = v29;
      *(v29 + 4) = v20;
      _os_log_impl(&dword_0, v14, v31, v33, v21, 0xCu);
      sub_67D4(v30);

      v12 = v32;
    }

    (*(v5 + 8))(v8, v4);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v22 = v11 & 1;
    if (v10)
    {
      v23 = v35;
    }

    else
    {
      v23 = 0;
    }

    if (v10)
    {
      v24 = v34;
    }

    else
    {
      v24 = 0;
    }

    if (v10)
    {
      v25 = v22;
    }

    else
    {
      v25 = 0;
    }

    if (v10)
    {
      v26 = v36 & 1;
    }

    else
    {
      v12 = 0;
      v26 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v38 = v23;
    v39 = v10;
    v40 = v24;
    v41 = v25;
    v42 = v12;
    v43 = v26;

    sub_D5580();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v37 = 0;
    return sub_D5580();
  }

  return result;
}

uint64_t sub_3BDC4(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, const char *a4)
{
  v6 = sub_D5340();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v11 = sub_6610(v6, qword_137988);
  (*(v7 + 16))(v10, v11, v6);
  v12 = sub_D5320();
  v13 = sub_D68A0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, a4, v14, 2u);
  }

  v15 = (*(v7 + 8))(v10, v6);
  return a2(v15);
}

uint64_t sub_3BF74()
{
  v1 = OBJC_IVAR____TtCV18icloudMailSettings22MSMailImportDetailView9ViewModel__isDeleting;
  v2 = sub_66D4(&qword_121068, &qword_DBEE0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV18icloudMailSettings22MSMailImportDetailView9ViewModel__error;
  v4 = sub_66D4(&qword_121070, &qword_DAFE0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV18icloudMailSettings22MSMailImportDetailView9ViewModel__importRecord;
  v6 = sub_66D4(&qword_1239F8, qword_DB638);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings22MSMailImportDetailView9ViewModel_cancellables);

  sub_67D4((v0 + OBJC_IVAR____TtCV18icloudMailSettings22MSMailImportDetailView9ViewModel_repository));
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v8, v9);
}

uint64_t _s11descr112711V9ViewModelCMa()
{
  result = qword_123878;
  if (!qword_123878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3C128()
{
  sub_116AC(319, &qword_120ED8);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_3030C();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_116AC(319, &unk_123888);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_3C264@<X0>(uint64_t *a1@<X8>)
{
  _s11descr112711V9ViewModelCMa();
  result = sub_D54D0();
  *a1 = result;
  return result;
}

double sub_3C2A4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  *&v8[1] = *&v7[9];
  *v8 = *&v7[8];
  *a2 = v5;
  a2[1] = v6;
  a2[2] = *v7;
  result = *&v8[1];
  *(a2 + 41) = *&v8[1];
  return result;
}

uint64_t sub_3C348(_OWORD *a1, uint64_t *a2)
{
  v3 = a1[1];
  v9[0] = *a1;
  v9[1] = v3;
  v10[0] = a1[2];
  *(v10 + 9) = *(a1 + 41);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1[1];
  v7[4] = *a1;
  v7[5] = v5;
  v8[0] = a1[2];
  *(v8 + 9) = *(a1 + 41);
  sub_15C4C(v9, v7);

  return sub_D5580();
}

uint64_t sub_3C3F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  *a2 = v5;
  return result;
}

uint64_t sub_3C478(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

unint64_t sub_3C54C()
{
  result = qword_1239E0;
  if (!qword_1239E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1239E0);
  }

  return result;
}

double sub_3C5A0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_3C630(__int128 *a1, uint64_t *a2)
{
  v3 = *(a1 + 4);
  v4 = *(a1 + 40);
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = *a1;
  v8 = a1[1];

  return sub_D5580();
}

uint64_t sub_3C6C8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3C724()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_3C780()
{
  result = qword_1239F0;
  if (!qword_1239F0)
  {
    sub_6110(&qword_1239E8, &qword_DB5E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1239F0);
  }

  return result;
}

uint64_t sub_3C854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_D6C20();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_3C8D8(uint64_t a1)
{
  v2 = sub_3D258();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_3C914(uint64_t a1)
{
  v2 = sub_3D258();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_3C950(void *a1)
{
  v3 = sub_66D4(&qword_123C30, &qword_DB880);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_6648(a1, a1[3]);
  sub_3D258();
  sub_D6D00();
  sub_D6BC0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_3CA8C()
{
  v0 = ACAccountDataclassMail;
  v1 = ACAccountDataclassMail;
  return v0;
}

id sub_3CAD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSStopMailImportAPIRequest();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MSStopMailImportAPIRequest()
{
  result = qword_123A28;
  if (!qword_123A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3CB88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_D6C20();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_3CC10(uint64_t a1)
{
  v2 = sub_3D204();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_3CC4C(uint64_t a1)
{
  v2 = sub_3D204();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_3CC88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_66D4(&qword_123C20, &qword_DB878);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_6648(a1, a1[3]);
  sub_3D204();
  sub_D6CF0();
  if (v2)
  {
    return sub_67D4(a1);
  }

  v11 = sub_D6B40();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = sub_67D4(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_3CE04(uint64_t a1)
{
  v2 = sub_3D01C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_3CE40(uint64_t a1)
{
  v2 = sub_3D01C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_3CE7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_3CEA8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void *sub_3CEA8(uint64_t *a1)
{
  v3 = sub_66D4(&qword_123BF0, &qword_DB6E8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_6648(a1, a1[3]);
  sub_3D01C();
  sub_D6CF0();
  if (v1)
  {
    sub_67D4(a1);
  }

  else
  {
    sub_3D070();
    sub_D6B70();
    (*(v4 + 8))(v7, v3);
    v9 = v11;
    sub_67D4(a1);
  }

  return v9;
}

unint64_t sub_3D01C()
{
  result = qword_123BF8;
  if (!qword_123BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123BF8);
  }

  return result;
}

unint64_t sub_3D070()
{
  result = qword_123C00;
  if (!qword_123C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123C00);
  }

  return result;
}

unint64_t sub_3D100()
{
  result = qword_123C08;
  if (!qword_123C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123C08);
  }

  return result;
}

unint64_t sub_3D158()
{
  result = qword_123C10;
  if (!qword_123C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123C10);
  }

  return result;
}

unint64_t sub_3D1B0()
{
  result = qword_123C18;
  if (!qword_123C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123C18);
  }

  return result;
}

unint64_t sub_3D204()
{
  result = qword_123C28;
  if (!qword_123C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123C28);
  }

  return result;
}

unint64_t sub_3D258()
{
  result = qword_123C38;
  if (!qword_123C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123C38);
  }

  return result;
}

unint64_t sub_3D2D8()
{
  result = qword_123C40;
  if (!qword_123C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123C40);
  }

  return result;
}

unint64_t sub_3D330()
{
  result = qword_123C48;
  if (!qword_123C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123C48);
  }

  return result;
}

unint64_t sub_3D388()
{
  result = qword_123C50;
  if (!qword_123C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123C50);
  }

  return result;
}

unint64_t sub_3D3E0()
{
  result = qword_123C58;
  if (!qword_123C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123C58);
  }

  return result;
}

unint64_t sub_3D438()
{
  result = qword_123C60;
  if (!qword_123C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123C60);
  }

  return result;
}

unint64_t sub_3D490()
{
  result = qword_123C68;
  if (!qword_123C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123C68);
  }

  return result;
}

uint64_t sub_3D504()
{
  v0 = ACAccountDataclassMail;
  v1 = ACAccountDataclassMail;
  return v0;
}

id sub_3D554()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSAliasUpdateAPIRequest();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MSAliasUpdateAPIRequest()
{
  result = qword_123C98;
  if (!qword_123C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_3D5E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v28 = _swiftEmptyArrayStorage;
    sub_D6A60();
    v4 = (a1 + 32);
    for (i = v2 - 1; ; --i)
    {
      v6 = v4[5];
      v25 = v4[4];
      v26 = v6;
      v27 = *(v4 + 12);
      v7 = v4[1];
      v21 = *v4;
      v22 = v7;
      v8 = v4[3];
      v23 = v4[2];
      v24 = v8;
      v9 = v8;
      sub_26A60(&v21, &v20);

      v10._rawValue = &off_113278;
      v11 = sub_D6AF0(v10, v9);

      if ((v11 | 4) == 4)
      {
        v12 = *(&v25 + 1);
        if (*(&v25 + 1))
        {
          v13 = v25;

          sub_45294(&v20, v13, v12);
        }
      }

      _s11MailRuleRowCMa();
      v14 = swift_allocObject();
      *(v14 + 120) = 0;
      v15 = v26;
      *(v14 + 80) = v25;
      *(v14 + 96) = v15;
      v16 = v27;
      *(v14 + 112) = v27;
      v17 = v22;
      *(v14 + 16) = v21;
      *(v14 + 32) = v17;
      v18 = v24;
      *(v14 + 48) = v23;
      *(v14 + 64) = v18;
      *(v14 + 128) = v16;
      sub_D6A40();
      v19 = v28[2];
      sub_D6A70();
      sub_D6A80();
      sub_D6A50();
      if (!i)
      {
        break;
      }

      v4 = (v4 + 104);
    }

    return v28;
  }

  return result;
}

uint64_t sub_3D770()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *v0;
  v22 = v0[1];
  v23 = v1;
  v24 = v2;
  v25 = *(v0 + 8);
  v21 = v3;
  v4 = sub_D4DA0();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_D4D90();
  sub_13D84();
  v8 = sub_D4D80();
  v10 = v9;

  v11 = objc_opt_self();
  isa = sub_D4F30().super.isa;
  *&v19 = 0;
  v13 = [v11 JSONObjectWithData:isa options:4 error:&v19];

  v14 = v19;
  if (v13)
  {
    sub_D6980();
    sub_26628(v8, v10);
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = v14;
    sub_D4EA0();

    swift_willThrow();
    sub_26628(v8, v10);

    v19 = 0u;
    v20 = 0u;
  }

  v17[0] = v19;
  v17[1] = v20;
  if (!*(&v20 + 1))
  {
    return 0;
  }

  sub_26430(v17, &v16);
  sub_66D4(&qword_124170, &qword_DBD88);
  if (swift_dynamicCast())
  {
    return v18;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3D96C()
{
  v1 = v0[1];
  v20 = *v0;
  v2 = v0[2];
  v21 = v1;
  v22 = v2;
  v23 = *(v0 + 6);
  v3 = sub_D4DA0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_D4D90();
  sub_46A70();
  v7 = sub_D4D80();
  v9 = v8;

  v10 = objc_opt_self();
  isa = sub_D4F30().super.isa;
  *&v18 = 0;
  v12 = [v10 JSONObjectWithData:isa options:4 error:&v18];

  v13 = v18;
  if (v12)
  {
    sub_D6980();
    sub_26628(v7, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = v13;
    sub_D4EA0();

    swift_willThrow();
    sub_26628(v7, v9);

    v18 = 0u;
    v19 = 0u;
  }

  v16[0] = v18;
  v16[1] = v19;
  if (!*(&v19 + 1))
  {
    return 0;
  }

  sub_26430(v16, &v15);
  sub_66D4(&qword_124170, &qword_DBD88);
  if (swift_dynamicCast())
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3DB5C()
{
  v0 = sub_D4DA0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_D4D90();
  type metadata accessor for MailRuleBatchRequest();
  sub_45F94(&qword_124158, type metadata accessor for MailRuleBatchRequest);
  v4 = sub_D4D80();
  v6 = v5;

  v7 = objc_opt_self();
  isa = sub_D4F30().super.isa;
  *&v15 = 0;
  v9 = [v7 JSONObjectWithData:isa options:4 error:&v15];

  v10 = v15;
  if (v9)
  {
    sub_D6980();
    sub_26628(v4, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = v10;
    sub_D4EA0();

    swift_willThrow();
    sub_26628(v4, v6);

    v15 = 0u;
    v16 = 0u;
  }

  v13[0] = v15;
  v13[1] = v16;
  if (!*(&v16 + 1))
  {
    return 0;
  }

  sub_26430(v13, &v12);
  sub_66D4(&qword_124170, &qword_DBD88);
  if (swift_dynamicCast())
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3DD6C()
{
  v0 = sub_D4DA0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_D4D90();
  sub_45FE4();
  v4 = sub_D4D80();
  v6 = v5;

  v7 = objc_opt_self();
  isa = sub_D4F30().super.isa;
  *&v15 = 0;
  v9 = [v7 JSONObjectWithData:isa options:4 error:&v15];

  v10 = v15;
  if (v9)
  {
    sub_D6980();
    sub_26628(v4, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = v10;
    sub_D4EA0();

    swift_willThrow();
    sub_26628(v4, v6);

    v15 = 0u;
    v16 = 0u;
  }

  v13[0] = v15;
  v13[1] = v16;
  if (!*(&v16 + 1))
  {
    return 0;
  }

  sub_26430(v13, &v12);
  sub_66D4(&qword_124170, &qword_DBD88);
  if (swift_dynamicCast())
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3DF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v3 = sub_D4DA0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_D4D90();
  sub_46A1C();
  v7 = sub_D4D80();
  v9 = v8;

  v10 = objc_opt_self();
  isa = sub_D4F30().super.isa;
  *&v18 = 0;
  v12 = [v10 JSONObjectWithData:isa options:4 error:&v18];

  v13 = v18;
  if (v12)
  {
    sub_D6980();
    sub_26628(v7, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = v13;
    sub_D4EA0();

    swift_willThrow();
    sub_26628(v7, v9);

    v18 = 0u;
    v19 = 0u;
  }

  v16[0] = v18;
  v16[1] = v19;
  if (!*(&v19 + 1))
  {
    return 0;
  }

  sub_26430(v16, &v15);
  sub_66D4(&qword_124170, &qword_DBD88);
  if (swift_dynamicCast())
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3E120()
{
  v1 = v0[1];
  v20 = *v0;
  v2 = v0[2];
  v21 = v1;
  v22[0] = v2;
  *(v22 + 9) = *(v0 + 41);
  v3 = sub_D4DA0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_D4D90();
  sub_469C8();
  v7 = sub_D4D80();
  v9 = v8;

  v10 = objc_opt_self();
  isa = sub_D4F30().super.isa;
  *&v18 = 0;
  v12 = [v10 JSONObjectWithData:isa options:4 error:&v18];

  v13 = v18;
  if (v12)
  {
    sub_D6980();
    sub_26628(v7, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = v13;
    sub_D4EA0();

    swift_willThrow();
    sub_26628(v7, v9);

    v18 = 0u;
    v19 = 0u;
  }

  v16[0] = v18;
  v16[1] = v19;
  if (!*(&v19 + 1))
  {
    return 0;
  }

  sub_26430(v16, &v15);
  sub_66D4(&qword_124170, &qword_DBD88);
  if (swift_dynamicCast())
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3E318()
{
  v1 = v0[12];
  v2 = v0[14];
  v42 = v0[13];
  v43 = v2;
  v3 = v0[8];
  v4 = v0[10];
  v5 = v0[11];
  v38 = v0[9];
  v39 = v4;
  v40 = v5;
  v41 = v1;
  v6 = v0[4];
  v7 = v0[6];
  v8 = v0[7];
  v34 = v0[5];
  v35 = v7;
  v36 = v8;
  v37 = v3;
  v9 = v0[1];
  v29 = *v0;
  v10 = v0[2];
  v11 = v0[3];
  v30 = v9;
  v31 = v10;
  v44 = *(v0 + 240);
  v32 = v11;
  v33 = v6;
  v12 = sub_D4DA0();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_D4D90();
  sub_46974();
  v16 = sub_D4D80();
  v18 = v17;

  v19 = objc_opt_self();
  isa = sub_D4F30().super.isa;
  *&v27 = 0;
  v21 = [v19 JSONObjectWithData:isa options:4 error:&v27];

  v22 = v27;
  if (v21)
  {
    sub_D6980();
    sub_26628(v16, v18);
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = v22;
    sub_D4EA0();

    swift_willThrow();
    sub_26628(v16, v18);

    v27 = 0u;
    v28 = 0u;
  }

  v25[0] = v27;
  v25[1] = v28;
  if (!*(&v28 + 1))
  {
    return 0;
  }

  sub_26430(v25, &v24);
  sub_66D4(&qword_124170, &qword_DBD88);
  if (swift_dynamicCast())
  {
    return v26;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3E540()
{
  v1 = v0[2];
  v2 = v0[4];
  v24 = v0[3];
  v25[0] = v2;
  *(v25 + 9) = *(v0 + 73);
  v3 = v0[1];
  v21 = *v0;
  v22 = v3;
  v23 = v1;
  v4 = sub_D4DA0();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_D4D90();
  sub_468FC();
  v8 = sub_D4D80();
  v10 = v9;

  v11 = objc_opt_self();
  isa = sub_D4F30().super.isa;
  *&v19 = 0;
  v13 = [v11 JSONObjectWithData:isa options:4 error:&v19];

  v14 = v19;
  if (v13)
  {
    sub_D6980();
    sub_26628(v8, v10);
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = v14;
    sub_D4EA0();

    swift_willThrow();
    sub_26628(v8, v10);

    v19 = 0u;
    v20 = 0u;
  }

  v17[0] = v19;
  v17[1] = v20;
  if (!*(&v20 + 1))
  {
    return 0;
  }

  sub_26430(v17, &v16);
  sub_66D4(&qword_124170, &qword_DBD88);
  if (swift_dynamicCast())
  {
    return v18;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3E740()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v25 = v0[3];
  v26 = v1;
  v27 = v2;
  v4 = v0[1];
  v22 = *v0;
  v28 = *(v0 + 12);
  v23 = v4;
  v24 = v3;
  v5 = sub_D4DA0();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_D4D90();
  sub_468A8();
  v9 = sub_D4D80();
  v11 = v10;

  v12 = objc_opt_self();
  isa = sub_D4F30().super.isa;
  *&v20 = 0;
  v14 = [v12 JSONObjectWithData:isa options:4 error:&v20];

  v15 = v20;
  if (v14)
  {
    sub_D6980();
    sub_26628(v9, v11);
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = v15;
    sub_D4EA0();

    swift_willThrow();
    sub_26628(v9, v11);

    v20 = 0u;
    v21 = 0u;
  }

  v18[0] = v20;
  v18[1] = v21;
  if (!*(&v21 + 1))
  {
    return 0;
  }

  sub_26430(v18, &v17);
  sub_66D4(&qword_124170, &qword_DBD88);
  if (swift_dynamicCast())
  {
    return v19;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3E944()
{
  v1 = v0[2];
  v2 = v0[4];
  v24 = v0[3];
  v25[0] = v2;
  *(v25 + 9) = *(v0 + 73);
  v3 = v0[1];
  v21 = *v0;
  v22 = v3;
  v23 = v1;
  v4 = sub_D4DA0();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_D4D90();
  sub_46830();
  v8 = sub_D4D80();
  v10 = v9;

  v11 = objc_opt_self();
  isa = sub_D4F30().super.isa;
  *&v19 = 0;
  v13 = [v11 JSONObjectWithData:isa options:4 error:&v19];

  v14 = v19;
  if (v13)
  {
    sub_D6980();
    sub_26628(v8, v10);
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = v14;
    sub_D4EA0();

    swift_willThrow();
    sub_26628(v8, v10);

    v19 = 0u;
    v20 = 0u;
  }

  v17[0] = v19;
  v17[1] = v20;
  if (!*(&v20 + 1))
  {
    return 0;
  }

  sub_26430(v17, &v16);
  sub_66D4(&qword_124170, &qword_DBD88);
  if (swift_dynamicCast())
  {
    return v18;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3EB44()
{
  v1 = v0[2];
  v2 = v0[4];
  v24 = v0[3];
  v25 = v2;
  v3 = v0[1];
  v21 = *v0;
  v26 = *(v0 + 10);
  v22 = v3;
  v23 = v1;
  v4 = sub_D4DA0();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_D4D90();
  sub_316F4();
  v8 = sub_D4D80();
  v10 = v9;

  v11 = objc_opt_self();
  isa = sub_D4F30().super.isa;
  *&v19 = 0;
  v13 = [v11 JSONObjectWithData:isa options:4 error:&v19];

  v14 = v19;
  if (v13)
  {
    sub_D6980();
    sub_26628(v8, v10);
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = v14;
    sub_D4EA0();

    swift_willThrow();
    sub_26628(v8, v10);

    v19 = 0u;
    v20 = 0u;
  }

  v17[0] = v19;
  v17[1] = v20;
  if (!*(&v20 + 1))
  {
    return 0;
  }

  sub_26430(v17, &v16);
  sub_66D4(&qword_124170, &qword_DBD88);
  if (swift_dynamicCast())
  {
    return v18;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3ED44()
{
  v1 = v0[1];
  v20 = *v0;
  v2 = v0[2];
  v21 = v1;
  v22 = v2;
  v3 = sub_D4DA0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_D4D90();
  sub_467DC();
  v7 = sub_D4D80();
  v9 = v8;

  v10 = objc_opt_self();
  isa = sub_D4F30().super.isa;
  *&v18 = 0;
  v12 = [v10 JSONObjectWithData:isa options:4 error:&v18];

  v13 = v18;
  if (v12)
  {
    sub_D6980();
    sub_26628(v7, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = v13;
    sub_D4EA0();

    swift_willThrow();
    sub_26628(v7, v9);

    v18 = 0u;
    v19 = 0u;
  }

  v16[0] = v18;
  v16[1] = v19;
  if (!*(&v19 + 1))
  {
    return 0;
  }

  sub_26430(v16, &v15);
  sub_66D4(&qword_124170, &qword_DBD88);
  if (swift_dynamicCast())
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3EF2C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  return v1;
}

uint64_t sub_3EFA0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  return v1;
}

__n128 sub_3F078@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = v4;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

double sub_3F12C@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_3F1B8()
{
  v1 = v0;
  v2 = sub_D5340();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v7 = sub_6610(v2, qword_137988);
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_D5320();
  v9 = sub_D68A0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "[Rules List] refresh started", v10, 2u);
  }

  (*(v3 + 8))(v6, v2);
  type metadata accessor for MailRuleBatchRequest();
  v11 = swift_allocObject();
  *(v11 + 16) = _swiftEmptyArrayStorage;
  v12 = *(v1 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_batchRequest);
  *(v1 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_batchRequest) = v11;

  *(v1 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_reSequeceFlag) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  v24[0] = 0;
  v24[1] = 0;

  sub_D5580();
  v13 = sub_6648((v1 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_repository), *(v1 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_repository + 24));
  v14 = *(*v13 + 16);
  v15 = *(*v13 + 24);
  v16 = objc_allocWithZone(type metadata accessor for MSRuleListAPIRequest());
  v17 = v14;
  v18 = v15;
  v19 = sub_3247C(v14, v18, 0, 0xF000000000000000);

  v20 = sub_1F444();
  v24[0] = v20;
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  sub_66D4(&qword_124138, &qword_DBC48);
  sub_109A8(&qword_124140, &qword_124138, &qword_DBC48);
  v21 = sub_D55D0();

  v23 = *(v1 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_refreshPublisher);
  *(v1 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_refreshPublisher) = v21;
  if (v23)
  {

    sub_D54C0();
  }

  return result;
}

uint64_t sub_3F564()
{
  v1 = v0;
  v2 = sub_D5340();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v5);
  v9 = &v36[-v8 - 8];
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v10 = sub_6610(v2, qword_137988);
  v11 = v3[2];
  v11(v9, v10, v2);
  v12 = sub_D5320();
  v13 = sub_D68A0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v35 = v2;
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "[Rules List] batch update started", v14, 2u);
    v2 = v35;
  }

  v15 = v3[1];
  v15(v9, v2);
  sub_3FB30();
  v16 = *(v1 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_batchRequest);
  if (v16)
  {
    swift_beginAccess();
    v17 = *(v16 + 16);
    if (v17 >> 62)
    {
      if (v17 < 0)
      {
        v31 = *(v16 + 16);
      }

      if (sub_D6AB0())
      {
        goto LABEL_8;
      }
    }

    else if (*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_8:
      v18 = sub_6648((v1 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_repository), *(v1 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_repository + 24));
      v19 = *(*v18 + 16);
      v20 = *(*v18 + 24);
      v37[3] = type metadata accessor for MailRuleBatchRequest();
      v37[4] = sub_45F94(&qword_124158, type metadata accessor for MailRuleBatchRequest);
      v37[0] = v16;
      v21 = objc_allocWithZone(type metadata accessor for MSRuleBatchAPIRequest());
      sub_FBD4(v37, v36, &qword_121F30, &unk_DC820);
      swift_retain_n();
      v22 = v19;
      v23 = v20;
      v24 = sub_45CC0(v19, v23, v36, &qword_124178, &qword_DBD90, &qword_122470, &qword_DA5B8);

      sub_FC3C(v37, &qword_121F30, &unk_DC820);
      v25 = sub_1F730();

      v37[0] = v25;
      v26 = swift_allocObject();
      swift_weakInit();
      v27 = swift_allocObject();
      *(v27 + 16) = v16;
      *(v27 + 24) = v26;
      swift_allocObject();
      swift_weakInit();

      sub_66D4(&qword_124160, &qword_DBD80);
      sub_109A8(&qword_124168, &qword_124160, &qword_DBD80);
      v28 = sub_D55D0();

      v29 = *(v1 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_refreshPublisher);
      *(v1 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_refreshPublisher) = v28;
      if (v29)
      {

        sub_D54C0();
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v37[0]) = 0;

  sub_D5580();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v37[0]) = 0;

  sub_D5580();
  v11(v7, v10, v2);
  v32 = sub_D5320();
  v33 = sub_D68A0();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_0, v32, v33, "[Rules List] batch update skipped, batch request is empty", v34, 2u);
  }

  return (v15)(v7, v2);
}

void sub_3FB30()
{
  v28 = OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_batchRequest;
  if (!*(v0 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_batchRequest))
  {
    return;
  }

  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_reSequeceFlag);
  swift_getKeyPath();
  swift_getKeyPath();
  v27 = v0;
  if (v2 != 1)
  {
    sub_D5570();

    if (v29 >> 62)
    {
      v3 = sub_D6AB0();
      if (v3)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v3 = *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8));
      if (v3)
      {
LABEL_19:
        v12 = 0;
        do
        {
          if ((v29 & 0xC000000000000001) != 0)
          {
            v13 = sub_D6A20();
            v14 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (v12 >= *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_33;
            }

            v13 = *(v29 + 8 * v12 + 32);

            v14 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
LABEL_29:
              __break(1u);
              break;
            }
          }

          if (*(v13 + 120))
          {
            sub_D6A40();
            v15 = _swiftEmptyArrayStorage[2];
            sub_D6A70();
            sub_D6A80();
            sub_D6A50();
          }

          else
          {
          }

          ++v12;
        }

        while (v14 != v3);
      }
    }

    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
    {
      goto LABEL_54;
    }

    v16 = _swiftEmptyArrayStorage[2];
    if (!v16)
    {
LABEL_55:

      return;
    }

LABEL_40:
    v17 = 0;
    while (1)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v18 = sub_D6A20();
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v17 >= _swiftEmptyArrayStorage[2])
        {
          goto LABEL_53;
        }

        v18 = _swiftEmptyArrayStorage[v17 + 4];

        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          v16 = sub_D6AB0();
          if (!v16)
          {
            goto LABEL_55;
          }

          goto LABEL_40;
        }
      }

      v20 = *(v1 + v28);
      if (v20)
      {
        v22 = v18[2];
        v21 = v18[3];
        v23 = v18[16];
        type metadata accessor for MailRuleBatchRequestUnit();
        v24 = swift_allocObject();
        *(v24 + 16) = 1;
        *(v24 + 24) = v22;
        *(v24 + 32) = v21;
        *(v24 + 40) = v23;
        *(v24 + 48) = 0;
        swift_beginAccess();

        sub_D6790();
        if (*(&dword_10 + (*(v20 + 16) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v20 + 16) & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v26 = *(&dword_10 + (*(v20 + 16) & 0xFFFFFFFFFFFFFF8));
          sub_D67B0();
        }

        sub_D67D0();
        swift_endAccess();

        v1 = v27;
      }

      else
      {
      }

      ++v17;
      if (v19 == v16)
      {
        goto LABEL_55;
      }
    }
  }

  sub_D5570();

  v3 = v29;
  if (v29 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)); i; i = sub_D6AB0())
  {
    v5 = 0;
    v6 = 10000;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = sub_D6A20();
      }

      else
      {
        if (v5 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_32;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      if (v5 == 0x346DC5D638865)
      {
        break;
      }

      v8 = *(v1 + v28);
      if (v8)
      {
        v10 = *(v7 + 16);
        v9 = *(v7 + 24);
        type metadata accessor for MailRuleBatchRequestUnit();
        v11 = swift_allocObject();
        *(v11 + 16) = 1;
        *(v11 + 24) = v10;
        *(v11 + 32) = v9;
        *(v11 + 40) = v6;
        *(v11 + 48) = 0;
        swift_beginAccess();

        sub_D6790();
        if (*(&dword_10 + (*(v8 + 16) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v8 + 16) & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v25 = *(&dword_10 + (*(v8 + 16) & 0xFFFFFFFFFFFFFF8));
          sub_D67B0();
        }

        sub_D67D0();
        swift_endAccess();

        v1 = v27;
      }

      else
      {
      }

      ++v5;
      v6 += 10000;
      if (i == v5)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

LABEL_35:
}

uint64_t sub_40004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v12 = &v39 - v11;
  v13 = *(a1 + 8);
  if (v13)
  {
    v14 = *(a1 + 16);
    v41 = *a1;
    v42 = v14;
    v44 = *(a1 + 32);
    v43 = *(a1 + 40);
    v40 = *(a1 + 24);
    v15 = &OBJC_METACLASS___MailSettingsSpecifierProvider;
    if (sub_3DB5C())
    {
      v16 = sub_D6550();
      v18 = v17;

      if (qword_120E38 != -1)
      {
        swift_once();
      }

      v19 = sub_6610(v4, qword_137988);
      (*(v5 + 16))(v12, v19, v4);

      v20 = sub_D5320();
      v21 = sub_D68B0();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = v16;
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v39 = v13;
        v25 = v24;
        v48 = v24;
        *v23 = 136642819;
        v26 = sub_558F0(v22, v18, &v48);

        *(v23 + 4) = v26;
        v15 = &OBJC_METACLASS___MailSettingsSpecifierProvider;
        _os_log_impl(&dword_0, v20, v21, "[Rules List] params: %{sensitive}s", v23, 0xCu);
        sub_67D4(v25);
        v13 = v39;
      }

      else
      {
      }

      (*(v5 + 8))(v12, v4);
    }

    if (v15[91].isa != -1)
    {
      swift_once();
    }

    v27 = sub_6610(v4, qword_137988);
    (*(v5 + 16))(v9, v27, v4);

    v28 = sub_D5320();
    v29 = sub_D68B0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = v13;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v54 = v32;
      *v31 = 136315138;
      v48 = v41;
      v49 = v30;
      v50 = v42;
      v51 = v40 & 1;
      v52 = v44;
      v53 = v43 & 1;
      sub_6780();
      v33 = sub_D6C60();
      v35 = sub_558F0(v33, v34, &v54);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_0, v28, v29, "[Rules List] batch update failed: %s", v31, 0xCu);
      sub_67D4(v32);

      v13 = v30;
    }

    (*(v5 + 8))(v9, v4);
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v48 = v41;
      v49 = v13;
      v50 = v42;
      v51 = v40 & 1;
      v52 = v44;
      v53 = v43 & 1;
      sub_6780();
      v36 = sub_D6C60();
      v38 = v37;
      swift_getKeyPath();
      swift_getKeyPath();
      v46 = v36;
      v47 = v38;
      return sub_D5580();
    }
  }

  return result;
}

uint64_t sub_404FC()
{
  v0 = sub_D5340();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v7 = sub_6610(v0, qword_137988);
    (*(v1 + 16))(v4, v7, v0);
    v8 = sub_D5320();
    v9 = sub_D68A0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "[Rules List] batch update successful", v10, 2u);
    }

    (*(v1 + 8))(v4, v0);
    sub_3F1B8();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v14) = 0;

    sub_D5580();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v14) = 0;

    sub_D5580();
    v12 = *(v6 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_onUpdate);
    v11 = *(v6 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_onUpdate + 8);

    v12(v13);

    swift_getKeyPath();
    swift_getKeyPath();
    v14 = xmmword_DBAE0;
    return sub_D5580();
  }

  return result;
}

uint64_t sub_407A8(uint64_t *a1, uint64_t a2)
{
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[1];
  if (v10)
  {
    v11 = *a1;
    v29 = a1[2];
    v30 = v11;
    v12 = a1[4];
    v31 = *(a1 + 40);
    v28 = *(a1 + 6);
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v13 = sub_6610(v4, qword_137988);
    (*(v5 + 16))(v9, v13, v4);

    v14 = sub_D5320();
    v15 = sub_D68B0();

    v16 = os_log_type_enabled(v14, v15);
    v27 = v12;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v26[1] = a2;
      v18 = v17;
      v19 = swift_slowAlloc();
      v40 = v19;
      *v18 = 136315138;
      v34 = v30;
      v35 = v10;
      v36 = v29;
      v37 = v28 & 1;
      v38 = v12;
      v39 = v31 & 1;
      sub_6780();
      v20 = sub_D6C60();
      v22 = sub_558F0(v20, v21, &v40);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_0, v14, v15, "[Rules List] refresh failed: %s", v18, 0xCu);
      sub_67D4(v19);
    }

    (*(v5 + 8))(v9, v4);
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v34 = v30;
      v35 = v10;
      v36 = v29;
      v37 = v28 & 1;
      v38 = v27;
      v39 = v31 & 1;
      sub_6780();
      v23 = sub_D6C60();
      v25 = v24;
      swift_getKeyPath();
      swift_getKeyPath();
      v32 = v23;
      v33 = v25;
      return sub_D5580();
    }
  }

  return result;
}

uint64_t sub_40ACC(char **a1)
{
  v2 = sub_D5340();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v9 = sub_6610(v2, qword_137988);
    (*(v3 + 16))(v6, v9, v2);
    v10 = sub_D5320();
    v11 = sub_D68A0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "[Rules List] refresh successful", v12, 2u);
    }

    (*(v3 + 8))(v6, v2);
    sub_40CDC(v7);
    swift_getKeyPath();
    swift_getKeyPath();
    v13 = xmmword_DBAE0;
    return sub_D5580();
  }

  return result;
}

uint64_t sub_40CDC(char *a1)
{
  v6[0] = a1;
  v6[1] = &_swiftEmptySetSingleton;

  sub_44720(v6);
  v2 = sub_3D5E0(v6[0]);

  swift_getKeyPath();
  swift_getKeyPath();
  v6[0] = v2;

  sub_D5580();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (v6[0] >> 62)
  {
    v3 = sub_D6AB0();
  }

  else
  {
    v3 = *(&dword_10 + (v6[0] & 0xFFFFFFFFFFFFFF8));
  }

  v4 = v3 < *(v1 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_maxRuleCountAllowed);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v6[0]) = v4;

  sub_D5580();
}

uint64_t sub_40E7C(uint64_t a1)
{
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  swift_bridgeObjectRetain_n();
  v5 = sub_82A1C(v4, v3);
  if (v5 == 7)
  {
    goto LABEL_2;
  }

  v7 = v5;
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);

  v10 = sub_82A68(v9, v8);
  if (v10 <= 2)
  {
    v58 = v4;
    v59 = v1;
    v60 = v3;
    v13 = "PTION.DESCRIPTOR.TOORCC";
    if (v10 != 1)
    {
      v13 = "PTION.DESCRIPTOR.TO";
    }

    if (v10)
    {
      v11 = 0xD000000000000023;
    }

    else
    {
      v11 = 0xD000000000000025;
    }

    if (v10)
    {
      v12 = v13;
    }

    else
    {
      v12 = "PTION.DESCRIPTOR.CC";
    }
  }

  else if (v10 > 4)
  {
    if (v10 != 5)
    {
LABEL_2:

      return 0;
    }

    v58 = v4;
    v59 = v1;
    v60 = v3;
    v12 = "nged";
    v11 = 0xD000000000000027;
  }

  else
  {
    v58 = v4;
    v59 = v1;
    v60 = v3;
    if (v10 == 3)
    {
      v11 = 0xD000000000000027;
    }

    else
    {
      v11 = 0xD000000000000028;
    }

    if (v10 == 3)
    {
      v12 = "PTION.DESCRIPTOR.SUBJECT";
    }

    else
    {
      v12 = "PTION.ACTION.MOVETOFOLDER";
    }
  }

  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = objc_opt_self();
  v16 = [v15 bundleForClass:ObjCClassFromMetadata];
  v68._object = (v12 | 0x8000000000000000);
  v68._countAndFlagsBits = v11;
  sub_D66D0(v68);
  v69._countAndFlagsBits = 2777980912;
  v69._object = 0xA400000000000000;
  sub_D66D0(v69);
  v80._countAndFlagsBits = 2777980912;
  v53._countAndFlagsBits = 0xE000000000000000;
  v70._object = (v12 | 0x8000000000000000);
  v70._countAndFlagsBits = v11;
  v77.value._countAndFlagsBits = 0;
  v77.value._object = 0;
  v17.super.isa = v16;
  v80._object = 0xA400000000000000;
  sub_D4E80(v70, v77, v17, v80, v53);

  v18 = 0xD000000000000029;
  v19 = "PTION.ACTION.MOVETOTRASH";
  v20 = v7;
  v21 = "MAILBOX.DISPLAYNAME.TRASH";
  v22 = 0xD000000000000033;
  if (v7 != 5)
  {
    v22 = 0xD000000000000031;
    v21 = "PTION.DESCRIPTOR.LISTID";
  }

  v23 = "ETOFOLDERANDMARKREAD";
  v24 = 0xD000000000000025;
  if (v7 != 3)
  {
    v24 = 0xD000000000000034;
    v23 = "ETOTRASHANDMARKREAD";
  }

  if (v7 <= 4u)
  {
    v22 = v24;
    v21 = v23;
  }

  v25 = "PTION.ACTION.FORWARDTO";
  v26 = 0xD000000000000028;
  if (v7 != 1)
  {
    v26 = 0xD000000000000026;
    v25 = "PTION.ACTION.MARKREAD";
  }

  if (v7)
  {
    v18 = v26;
    v19 = v25;
  }

  if (v7 <= 2u)
  {
    v27 = v18;
  }

  else
  {
    v27 = v22;
  }

  if (v20 <= 2)
  {
    v28 = v19;
  }

  else
  {
    v28 = v21;
  }

  v56 = v15;
  v57 = ObjCClassFromMetadata;
  v29 = [v15 bundleForClass:ObjCClassFromMetadata];
  v71._object = (v28 | 0x8000000000000000);
  v71._countAndFlagsBits = v27;
  sub_D66D0(v71);
  v72._countAndFlagsBits = 2777980912;
  v72._object = 0xA400000000000000;
  sub_D66D0(v72);
  v81._countAndFlagsBits = 2777980912;
  v54._countAndFlagsBits = 0xE000000000000000;
  v73._object = (v28 | 0x8000000000000000);
  v73._countAndFlagsBits = v27;
  v78.value._countAndFlagsBits = 0;
  v78.value._object = 0;
  v30.super.isa = v29;
  v81._object = 0xA400000000000000;
  v31 = sub_D4E80(v73, v78, v30, v81, v54);
  v33 = v32;

  v67 = *(a1 + 32);
  v34 = sub_DFAC();
  sub_D6960();

  swift_arrayDestroy();
  sub_D6960();

  v61 = v31;
  v62 = v33;
  v55._object = v34;
  sub_D6960();

  v35 = *(a1 + 64);
  v36 = *(a1 + 72);
  if (!v36 || ((v36 & 0x2000000000000000) != 0 ? (v37 = HIBYTE(v36) & 0xF) : (v37 = v35 & 0xFFFFFFFFFFFFLL), , v37))
  {

    goto LABEL_43;
  }

  v44 = sub_82A1C(v58, v60);
  v45 = v44;
  if (v44 > 3u)
  {
    p_type = (&stru_11EFF0 + 16);
    if (v44 > 5u && v44 != 6)
    {
LABEL_43:
      v38 = *(v59 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_sharedPreference);
      sub_D54F0();
      if (v62 == 1)
      {
        v39 = 0;
        v40 = 0;
      }

      else
      {

        v39 = v63;
        v40 = v64;
      }

      sub_461BC(v31, v62);
      sub_D54F0();
      if (v62 == 1)
      {
        v41 = 0;
        v42 = 0;
      }

      else
      {

        v41 = v65;
        v42 = v66;
      }

      sub_461BC(v61, v62);
      sub_46210(v35, v36, v39, v40, v41, v42);

      goto LABEL_50;
    }
  }

  else
  {
    p_type = &stru_11EFF0.type;
    if (v44 <= 1u && v44)
    {

LABEL_60:
      v49 = v56;
      v48 = v57;
LABEL_67:

      v51 = [v49 p_type[387]];
      v74._object = 0x80000000000E7CF0;
      v74._countAndFlagsBits = 0xD000000000000019;
      sub_D66D0(v74);
      v75._countAndFlagsBits = 2777980912;
      v75._object = 0xA400000000000000;
      sub_D66D0(v75);
      v82._countAndFlagsBits = 2777980912;
      v55._countAndFlagsBits = 0xE000000000000000;
      v76._object = 0x80000000000E7CF0;
      v76._countAndFlagsBits = 0xD000000000000019;
      v79.value._countAndFlagsBits = 0;
      v79.value._object = 0;
      v52.super.isa = v51;
      v82._object = 0xA400000000000000;
      sub_D4E80(v76, v79, v52, v82, v55);

      goto LABEL_50;
    }
  }

  v47 = sub_D6C20();

  if (v47)
  {
    goto LABEL_60;
  }

  v50 = v45;
  if (v45 <= 2u)
  {
    v49 = v56;
    v48 = v57;
  }

  else if (v45 > 4u)
  {
    v49 = v56;
    v48 = v57;
    if (v50 == 5)
    {
      goto LABEL_67;
    }
  }

  else
  {
    v49 = v56;
    v48 = v57;
  }

  if (sub_D6C20())
  {
    goto LABEL_67;
  }

LABEL_50:
  v43 = sub_D6960();

  return v43;
}

uint64_t sub_41738(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v52 = sub_D5120();
  v6 = *(v52 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v52);
  v51 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_D5140();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_66D4(&qword_124180, &qword_DBE28);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v46 - v16;
  v47 = OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_reSequeceFlag;
  if (*(v3 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_reSequeceFlag))
  {
LABEL_53:
    swift_getKeyPath();
    swift_getKeyPath();
    v45 = sub_D5560();
    sub_66D4(&qword_123F18, &qword_DBB00);
    sub_109A8(&qword_1241A0, &qword_123F18, &qword_DBB00);
    sub_D65A0();
    v45(v54, 0);
  }

  v18 = *(v10 + 16);
  v46 = a1;
  v18(v13, a1, v9);
  sub_45F94(&qword_124188, &type metadata accessor for IndexSet);
  sub_D6720();
  v19 = *(v14 + 36);
  sub_45F94(&qword_124190, &type metadata accessor for IndexSet);
  v20 = 0;
  v49 = v9;
  v50 = (v6 + 8);
  v53 = a2;
  v48 = a2 - 1;
  v21 = &unk_DBC50;
  while (1)
  {
    v22 = v51;
    sub_D6830();
    sub_45F94(&qword_124198, &type metadata accessor for IndexSet.Index);
    v23 = v52;
    v24 = sub_D65B0();
    (*v50)(v22, v23);
    if (v24)
    {
      sub_FC3C(v17, &qword_124180, &qword_DBE28);
      goto LABEL_53;
    }

    v25 = sub_D6850();
    v27 = *v26;
    v25(v54, 0);
    sub_D6840();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    if (v54[0] >> 62)
    {
      v28 = sub_D6AB0();
    }

    else
    {
      v28 = *(&dword_10 + (v54[0] & 0xFFFFFFFFFFFFFF8));
    }

    v29 = v21;
    swift_getKeyPath();
    swift_getKeyPath();
    if (v28 <= v53)
    {
      sub_D5570();

      if (v54[0] >> 62)
      {
        v36 = sub_D6AB0();
      }

      else
      {
        v36 = *(&dword_10 + (v54[0] & 0xFFFFFFFFFFFFFF8));
      }

      v37 = __OFSUB__(v36, 1);
      v38 = v36 - 1;
      if (v37)
      {
        goto LABEL_58;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_D5570();

      if ((v54[0] & 0xC000000000000001) != 0)
      {
        v39 = sub_D6A20();
      }

      else
      {
        if ((v38 & 0x8000000000000000) != 0)
        {
          goto LABEL_59;
        }

        if (v38 >= *(&dword_10 + (v54[0] & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_61;
        }

        v39 = *(v54[0] + 8 * v38 + 32);
      }

      v40 = *(v39 + 112);

      v20 = v40 + 10000;
      if (__OFADD__(v40, 10000))
      {
        goto LABEL_60;
      }

      goto LABEL_34;
    }

    if (v53 > 0)
    {
      sub_D5570();

      if ((v54[0] & 0xC000000000000001) != 0)
      {
        v31 = sub_D6A20();
      }

      else
      {
        if (*(&dword_10 + (v54[0] & 0xFFFFFFFFFFFFFF8)) < v53)
        {
          goto LABEL_62;
        }

        v31 = *(v54[0] + 8 * v48 + 32);
      }

      v32 = *(v31 + 112);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_D5570();

      if ((v54[0] & 0xC000000000000001) != 0)
      {
        v33 = sub_D6A20();
      }

      else
      {
        if (*(&dword_10 + (v54[0] & 0xFFFFFFFFFFFFFF8)) <= v53)
        {
          goto LABEL_64;
        }

        v33 = *(v54[0] + 8 * v53 + 32);
      }

      v34 = *(v33 + 112);

      v35 = v34 - v32;
      if (__OFSUB__(v34, v32))
      {
        goto LABEL_63;
      }

      if (v35 <= 1)
      {
        *(v3 + v47) = 1;
      }

      else
      {
        v20 = v32 + (v35 >> 1);
        if (__OFADD__(v32, v35 >> 1))
        {
          goto LABEL_66;
        }
      }

LABEL_34:
      v21 = v29;
      goto LABEL_35;
    }

    sub_D5570();

    if ((v54[0] & 0xC000000000000001) != 0)
    {
      v41 = sub_D6A20();
    }

    else
    {
      if (!*(&dword_10 + (v54[0] & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_65;
      }

      v41 = *(v54[0] + 32);
    }

    v42 = *(v41 + 112);

    v20 = v42 / 2;
LABEL_35:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    if ((v54[0] & 0xC000000000000001) != 0)
    {
      v43 = sub_D6A20();
      goto LABEL_39;
    }

    if ((v27 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v27 >= *(&dword_10 + (v54[0] & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_55;
    }

    v43 = *(v54[0] + 8 * v27 + 32);

LABEL_39:

    *(v43 + 128) = v20;

    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    if ((v54[0] & 0xC000000000000001) != 0)
    {
      v44 = sub_D6A20();
    }

    else
    {
      if ((v27 & 0x8000000000000000) != 0)
      {
        goto LABEL_56;
      }

      if (v27 >= *(&dword_10 + (v54[0] & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_57;
      }

      v44 = *(v54[0] + 8 * v27 + 32);
    }

    *(v44 + 120) = 1;
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_42044(uint64_t a1)
{
  v56 = a1;
  v1 = sub_D5140();
  v53 = *(v1 - 8);
  v54 = v1;
  v2 = *(v53 + 64);
  __chkstk_darwin(v1);
  v51 = v3;
  v52 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v55 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v51 - v9;
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v11 = sub_6610(v4, qword_137988);
  v12 = v5[2];
  v12(v10, v11, v4);
  v13 = sub_D5320();
  v14 = sub_D68A0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "[Rules List] delete single rule started", v15, 2u);
  }

  v16 = v5[1];
  v16(v10, v4);
  v17 = sub_D5130();
  if ((v18 & 1) == 0)
  {
    v19 = v17;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    v20 = v73 >> 62 ? sub_D6AB0() : *(&dword_10 + (v73 & 0xFFFFFFFFFFFFFF8));

    if (v19 < v20)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_D5570();

      if ((v73 & 0xC000000000000001) != 0)
      {
        v22 = sub_D6A20();
      }

      else
      {
        if ((v19 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_26;
        }

        if (v19 >= *(&dword_10 + (v73 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_28;
        }

        v22 = *(v73 + 8 * v19 + 32);
      }

      v23 = *(v22 + 80);
      v69 = *(v22 + 64);
      v70 = v23;
      v71 = *(v22 + 96);
      v72 = *(v22 + 112);
      v24 = *(v22 + 32);
      v66 = *(v22 + 16);
      v67 = v24;
      v68 = *(v22 + 48);
      sub_26A60(&v66, &v59);

      v77 = v70;
      v78 = v71;
      v79 = v72;
      v73 = v66;
      v74 = v67;
      v75 = v68;
      v76 = v69;
      swift_getKeyPath();
      swift_getKeyPath();
      v63 = v77;
      v64 = v78;
      v65 = v79;
      v59 = v73;
      v60 = v74;
      v61 = v75;
      v62 = v76;

      sub_D5580();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_D5570();

      if ((v59 & 0xC000000000000001) == 0)
      {
        if ((v19 & 0x8000000000000000) == 0)
        {
          if (v19 < *(&dword_10 + (v59 & 0xFFFFFFFFFFFFFF8)))
          {
            v25 = *(v59 + 8 * v19 + 32);

            goto LABEL_17;
          }

LABEL_29:
          __break(1u);
          return result;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_26:
      v25 = sub_D6A20();
LABEL_17:

      v26 = *(v25 + 16);
      v27 = *(v25 + 24);

      v28 = sub_6648((v57 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_repository), *(v57 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_repository + 24));
      v29 = *(*v28 + 16);
      v30 = *(*v28 + 24);
      *(&v60 + 1) = &type metadata for DeleteMailRuleRequest;
      *&v61 = sub_45FE4();
      *&v59 = v26;
      *(&v59 + 1) = v27;
      v31 = objc_allocWithZone(type metadata accessor for MSRuleDeleteAPI());
      sub_FBD4(&v59, v58, &qword_121F30, &unk_DC820);

      v32 = v29;
      v33 = v30;
      v34 = sub_45CC0(v29, v33, v58, &qword_1241B8, &qword_DBE78, &qword_1224A0, &qword_DA5D8);

      sub_FC3C(&v59, &qword_121F30, &unk_DC820);
      v35 = sub_1EB80();

      *&v59 = v35;
      v36 = swift_allocObject();
      v37 = v57;
      swift_weakInit();
      v38 = swift_allocObject();
      v38[2] = v36;
      v38[3] = v26;
      v38[4] = v27;
      v39 = swift_allocObject();
      swift_weakInit();
      v41 = v52;
      v40 = v53;
      v42 = v54;
      (*(v53 + 16))(v52, v56, v54);
      v43 = (*(v40 + 80) + 24) & ~*(v40 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = v39;
      (*(v40 + 32))(v44 + v43, v41, v42);
      sub_66D4(&qword_121F38, &qword_D9CA0);
      sub_109A8(&qword_121F40, &qword_121F38, &qword_D9CA0);
      v45 = sub_D55D0();

      v46 = *(v37 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_refreshPublisher);
      *(v37 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_refreshPublisher) = v45;
      if (v46)
      {

        sub_D54C0();
      }

      return result;
    }
  }

  v47 = v55;
  v12(v55, v11, v4);
  v48 = sub_D5320();
  v49 = sub_D68B0();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_0, v48, v49, "[Rules List] delete single rule skipped, index out of bounds", v50, 2u);
  }

  return (v16)(v47, v4);
}

uint64_t sub_42864(uint64_t a1)
{
  v1 = sub_D5340();
  v45 = *(v1 - 8);
  v2 = *(v45 + 64);
  v3 = __chkstk_darwin(v1);
  v46 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v39 - v5;
  v8 = *a1;
  v7 = *(a1 + 8);
  v9 = *(a1 + 24);
  v47 = *(a1 + 16);
  v44 = v9;
  v10 = *(a1 + 32);
  LODWORD(a1) = *(a1 + 40);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    if (v7)
    {
      v14 = sub_3DD6C();
      v15 = v45;
      v43 = v10;
      v42 = a1;
      if (v14)
      {
        v41 = sub_D6550();
        v17 = v16;

        if (qword_120E38 != -1)
        {
          swift_once();
        }

        v18 = sub_6610(v1, qword_137988);
        (*(v15 + 16))(v6, v18, v1);

        v19 = sub_D5320();
        v20 = sub_D68B0();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v40 = v8;
          v22 = v21;
          v23 = swift_slowAlloc();
          *&v49 = v23;
          *v22 = 136642819;
          v24 = sub_558F0(v41, v17, &v49);

          *(v22 + 4) = v24;
          _os_log_impl(&dword_0, v19, v20, "[Rules List] params: %{sensitive}s", v22, 0xCu);
          sub_67D4(v23);
          v15 = v45;

          v8 = v40;
        }

        else
        {
        }

        (*(v15 + 8))(v6, v1);
        v10 = v43;
        LOBYTE(a1) = v42;
      }

      v45 = v13;
      if (qword_120E38 != -1)
      {
        swift_once();
      }

      v28 = sub_6610(v1, qword_137988);
      v29 = v46;
      (*(v15 + 16))(v46, v28, v1);

      v30 = sub_D5320();
      v31 = sub_D68B0();

      if (os_log_type_enabled(v30, v31))
      {
        a1 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v48 = v32;
        *&v49 = v8;
        *a1 = 136315138;
        *(&v49 + 1) = v7;
        *&v50 = v47;
        v41 = v7;
        v33 = v44;
        BYTE8(v50) = v44 & 1;
        *&v51 = v43;
        BYTE8(v51) = v42 & 1;
        sub_6780();
        v34 = sub_D6C60();
        v36 = v8;
        v37 = sub_558F0(v34, v35, &v48);
        v38 = v33;
        v7 = v41;

        *(a1 + 4) = v37;
        v8 = v36;
        _os_log_impl(&dword_0, v30, v31, "[Rules List] delete single rule failed: %s", a1, 0xCu);
        sub_67D4(v32);
        v10 = v43;

        LOBYTE(a1) = v42;

        (*(v15 + 8))(v46, v1);
      }

      else
      {

        (*(v15 + 8))(v29, v1);
        v38 = v44;
      }

      v26 = v38 & 1;
      v27 = a1 & 1;
      v25 = v47;
    }

    else
    {
      v8 = 0;
      v25 = 0;
      v26 = 0;
      v10 = 0;
      v27 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *&v49 = v8;
    *(&v49 + 1) = v7;
    *&v50 = v25;
    *(&v50 + 1) = v26;
    *&v51 = v10;
    BYTE8(v51) = v27;

    sub_D5580();
    swift_getKeyPath();
    swift_getKeyPath();
    v55 = 0;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    return sub_D5580();
  }

  return result;
}

uint64_t sub_42E30()
{
  v0 = sub_D5340();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v18[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v5 = sub_6610(v0, qword_137988);
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_D5320();
  v7 = sub_D68A0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "[Rules List] delete single rule successful", v8, 2u);
  }

  (*(v1 + 8))(v4, v0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    v11 = sub_D5560();
    sub_66D4(&qword_123F18, &qword_DBB00);
    sub_109A8(&qword_1241A0, &qword_123F18, &qword_DBB00);
    sub_109A8(&qword_1241A8, &qword_123F18, &qword_DBB00);
    sub_D6860();
    v11(v18, 0);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    if (v18[0] >> 62)
    {
      v12 = sub_D6AB0();
    }

    else
    {
      v12 = *(&dword_10 + (v18[0] & 0xFFFFFFFFFFFFFF8));
    }

    v13 = v12 < *(v10 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_maxRuleCountAllowed);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v18[0]) = v13;

    sub_D5580();
    v14 = *(v10 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_onUpdate);
    v15 = *(v10 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_onUpdate + 8);

    v14(v16);
  }

  return result;
}

uint64_t sub_431EC(uint64_t a1)
{
  v2 = sub_D5120();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_D5140();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_66D4(&qword_124180, &qword_DBE28);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v32 - v15;
  v17 = *(v8 + 16);
  v32 = a1;
  v17(v11, a1, v7);
  sub_45F94(&qword_124188, &type metadata accessor for IndexSet);
  sub_D6720();
  v18 = *(v13 + 44);
  v33 = OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_batchRequest;
  sub_45F94(&qword_124190, &type metadata accessor for IndexSet);
  v34 = (v3 + 8);
  while (1)
  {
    sub_D6830();
    sub_45F94(&qword_124198, &type metadata accessor for IndexSet.Index);
    v19 = sub_D65B0();
    (*v34)(v6, v2);
    if (v19)
    {
      break;
    }

    v20 = sub_D6850();
    v22 = *v21;
    v20(v36, 0);
    sub_D6840();
    v23 = *(v35 + v33);
    if (v23)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_D5570();

      if ((v36[0] & 0xC000000000000001) != 0)
      {
        v24 = sub_D6A20();
      }

      else
      {
        if ((v22 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if (v22 >= *(&dword_10 + (v36[0] & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_16;
        }

        v24 = *(v36[0] + 8 * v22 + 32);
      }

      v26 = *(v24 + 16);
      v25 = *(v24 + 24);

      type metadata accessor for MailRuleBatchRequestUnit();
      v27 = swift_allocObject();
      *(v27 + 16) = 2;
      *(v27 + 24) = v26;
      *(v27 + 32) = v25;
      *(v27 + 40) = 0;
      *(v27 + 48) = 1;
      swift_beginAccess();
      sub_D6790();
      if (*(&dword_10 + (*(v23 + 16) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v23 + 16) & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_D67B0();
      }

      sub_D67D0();
      swift_endAccess();
    }
  }

  sub_FC3C(v16, &qword_124180, &qword_DBE28);
  swift_getKeyPath();
  swift_getKeyPath();
  v28 = sub_D5560();
  sub_66D4(&qword_123F18, &qword_DBB00);
  sub_109A8(&qword_1241A0, &qword_123F18, &qword_DBB00);
  sub_109A8(&qword_1241A8, &qword_123F18, &qword_DBB00);
  sub_D6860();
  v28(v36, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (!(v36[0] >> 62))
  {
    v29 = *(&dword_10 + (v36[0] & 0xFFFFFFFFFFFFFF8));
    goto LABEL_14;
  }

LABEL_17:
  v29 = sub_D6AB0();
LABEL_14:

  v30 = v29 < *(v35 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_maxRuleCountAllowed);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v36[0]) = v30;

  return sub_D5580();
}

BOOL sub_43830()
{
  v1 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_batchRequest);
  if (v1)
  {
    swift_beginAccess();
    v2 = *(v1 + 16);
    if (v2 >> 62)
    {
      if (v2 < 0)
      {
        v4 = *(v1 + 16);
      }

      if (sub_D6AB0())
      {
        return 1;
      }
    }

    else if (*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (v6 >> 62)
  {
    v5 = sub_D6AB0();
  }

  else
  {
    v5 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  }

  return v5 != 0;
}

uint64_t sub_4393C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (v8 >> 62)
  {
    goto LABEL_13;
  }

  v0 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));

  if (!v0)
  {
    return 10000;
  }

  while (1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    if (v8 >> 62)
    {
      v1 = sub_D6AB0();
    }

    else
    {
      v1 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
    }

    v2 = __OFSUB__(v1, 1);
    v3 = v1 - 1;
    if (v2)
    {
      __break(1u);
LABEL_18:
      v5 = sub_D6A20();
      goto LABEL_10;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    if ((v8 & 0xC000000000000001) != 0)
    {
      goto LABEL_18;
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v3 >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_20;
    }

    v5 = *(v8 + 8 * v3 + 32);

LABEL_10:

    v6 = *(v5 + 128);

    result = v6 + 10000;
    if (!__OFADD__(v6, 10000))
    {
      return result;
    }

    __break(1u);
LABEL_13:
    v7 = sub_D6AB0();

    if (!v7)
    {
      return 10000;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_43B34()
{
  v1 = OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel__state;
  v2 = sub_66D4(&qword_124208, &unk_E1550);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel__rules;
  v4 = sub_66D4(&qword_124210, &qword_DBE90);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel__selectedRuleToEdit;
  v6 = sub_66D4(&qword_124218, &unk_E3CB0);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v8 = OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel__deleteDisabled;
  v9 = sub_66D4(&qword_121068, &qword_DBEE0);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v10(v0 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel__moveDisabled, v9);
  v10(v0 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel__enableAddRule, v9);
  v11 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_onUpdate + 8);

  v7(v0 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel__selectedRuleToDelete, v6);
  v12 = OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel__error;
  v13 = sub_66D4(&qword_121070, &qword_DAFE0);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v14 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_folderList);

  v15 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_sharedPreference);

  v16 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_mailRuleResponse);

  v17 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_cancellables);

  sub_67D4((v0 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_repository));
  v18 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_batchRequest);

  v19 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_refreshPublisher);

  return v0;
}

uint64_t sub_43DC8()
{
  sub_43B34();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t _s9ViewModelCMa_2()
{
  result = qword_123EF8;
  if (!qword_123EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_43E74()
{
  sub_116AC(319, &qword_123F08);
  if (v1 <= 0x3F)
  {
    v11 = *(v0 - 8) + 64;
    sub_6158(319, &qword_123F10, &qword_123F18, &qword_DBB00);
    if (v3 <= 0x3F)
    {
      v12 = *(v2 - 8) + 64;
      sub_6158(319, &qword_123F20, &unk_123F28, &unk_E3CC0);
      if (v5 <= 0x3F)
      {
        v6 = *(v4 - 8) + 64;
        sub_116AC(319, &qword_120ED8);
        if (v8 <= 0x3F)
        {
          v13 = *(v7 - 8) + 64;
          sub_6158(319, &qword_120EE0, &qword_120EE8, &qword_D8DD0);
          if (v10 <= 0x3F)
          {
            v14 = *(v9 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_440C4()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[7];
  v4 = v0[9];
  v5 = v0[11];
  v6 = v0[13];

  return _swift_deallocClassInstance(v0, 136, 7);
}

uint64_t sub_44174@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

double sub_44184@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_44208(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_F298(v2, v3);

  return sub_D5580();
}

uint64_t sub_44294@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  *a2 = v5;
  return result;
}

uint64_t sub_44314(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

uint64_t sub_44390@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  *a2 = v5;
  return result;
}

uint64_t sub_44410(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

__n128 sub_44484@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = v6;
  *(a2 + 64) = v9;
  *(a2 + 80) = v10;
  *(a2 + 96) = v11;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  return result;
}

uint64_t sub_44544(__int128 *a1, uint64_t *a2)
{
  v3 = a1[5];
  v19[4] = a1[4];
  v19[5] = v3;
  v20 = *(a1 + 12);
  v4 = a1[1];
  v19[0] = *a1;
  v19[1] = v4;
  v5 = a1[3];
  v19[2] = a1[2];
  v19[3] = v5;
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a1[5];
  v16 = a1[4];
  v17 = v7;
  v18 = *(a1 + 12);
  v8 = a1[1];
  v12 = *a1;
  v13 = v8;
  v9 = a1[3];
  v14 = a1[2];
  v15 = v9;
  sub_FBD4(v19, v11, &unk_123F28, &unk_E3CC0);

  return sub_D5580();
}

unint64_t sub_4461C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_D66A0();
    v13[0] = sub_D6700();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

Swift::Int sub_44720(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_45BB0(v2);
  }

  v3 = *(v2 + 2);
  v36[0] = (v2 + 32);
  v36[1] = v3;
  result = sub_D6C00(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 128;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*(v12 + 13) >= *v12)
          {
            break;
          }

          v13 = v12 - 96;
          v14 = *(v12 + 8);
          v15 = *(v12 + 40);
          v30 = *(v12 + 24);
          v31 = v15;
          v29 = v14;
          v16 = *(v12 + 56);
          v17 = *(v12 + 72);
          v18 = *(v12 + 88);
          v35 = *(v12 + 13);
          v33 = v17;
          v34 = v18;
          v32 = v16;
          v19 = *(v12 - 4);
          *(v12 + 56) = *(v12 - 3);
          v20 = *(v12 - 1);
          *(v12 + 72) = *(v12 - 2);
          *(v12 + 88) = v20;
          *(v12 + 13) = *v12;
          v21 = *(v12 - 5);
          *(v12 + 8) = *(v12 - 6);
          *(v12 + 24) = v21;
          *(v12 + 40) = v19;
          v22 = v29;
          v23 = v31;
          *(v13 + 1) = v30;
          *(v13 + 2) = v23;
          *v13 = v22;
          v24 = v32;
          v25 = v33;
          v26 = v34;
          *v12 = v35;
          *(v13 + 4) = v25;
          *(v13 + 5) = v26;
          *(v13 + 3) = v24;
          v12 -= 104;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 104;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_D67C0();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    *&v29 = v7 + 4;
    *(&v29 + 1) = v6;
    sub_448DC(&v29, v28, v36, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_448DC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v91 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v92 = *v91;
    if (!*v91)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_4517C(v7);
      v7 = result;
    }

    v83 = v7 + 2;
    v84 = v7[2];
    if (v84 >= 2)
    {
      while (*a3)
      {
        v85 = &v7[2 * v84];
        v86 = *v85;
        v87 = &v83[2 * v84];
        v88 = v87[1];
        sub_44F04((*a3 + 104 * *v85), (*a3 + 104 * *v87), (*a3 + 104 * v88), v92);
        if (v4)
        {
        }

        if (v88 < v86)
        {
          goto LABEL_114;
        }

        if (v84 - 2 >= *v83)
        {
          goto LABEL_115;
        }

        *v85 = v86;
        v85[1] = v88;
        v89 = *v83 - v84;
        if (*v83 < v84)
        {
          goto LABEL_116;
        }

        v84 = *v83 - 1;
        result = memmove(v87, v87 + 2, 16 * v89);
        *v83 = v84;
        if (v84 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 104 * v6 + 96);
      v10 = 104 * v8;
      v11 = *a3 + 104 * v8;
      v12 = *(v11 + 96);
      v13 = v8 + 2;
      v14 = (v11 + 304);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 13;
        v17 = (v9 < v12) ^ (v16 >= v15);
        ++v13;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 104 * v6 - 104;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = v22 + v18;
            v101 = *(v22 + v10 + 64);
            v103 = *(v22 + v10 + 80);
            v105 = *(v22 + v10 + 96);
            v93 = *(v22 + v10);
            v95 = *(v22 + v10 + 16);
            v97 = *(v22 + v10 + 32);
            v99 = *(v22 + v10 + 48);
            result = memmove((v22 + v10), (v22 + v18), 0x68uLL);
            *(v21 + 64) = v101;
            *(v21 + 80) = v103;
            *(v21 + 96) = v105;
            *v21 = v93;
            *(v21 + 16) = v95;
            *(v21 + 32) = v97;
            *(v21 + 48) = v99;
          }

          ++v20;
          v18 -= 104;
          v10 += 104;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_45190(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v36 = v7[2];
    v35 = v7[3];
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      result = sub_45190((v35 > 1), v36 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v37;
    v38 = v7 + 4;
    v39 = &v7[2 * v36 + 4];
    *v39 = v8;
    v39[1] = v6;
    v92 = *v91;
    if (!*v91)
    {
      goto LABEL_127;
    }

    if (v36)
    {
      while (1)
      {
        v40 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v41 = v7[4];
          v42 = v7[5];
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_57:
          if (v44)
          {
            goto LABEL_104;
          }

          v57 = &v7[2 * v37];
          v59 = *v57;
          v58 = v57[1];
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_106;
          }

          v63 = &v38[2 * v40];
          v65 = *v63;
          v64 = v63[1];
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_111;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              v40 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v67 = &v7[2 * v37];
        v69 = *v67;
        v68 = v67[1];
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_72:
        if (v62)
        {
          goto LABEL_108;
        }

        v70 = &v38[2 * v40];
        v72 = *v70;
        v71 = v70[1];
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_110;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v40 - 1 >= v37)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v78 = &v38[2 * v40 - 2];
        v79 = *v78;
        v80 = &v38[2 * v40];
        v81 = v80[1];
        sub_44F04((*a3 + 104 * *v78), (*a3 + 104 * *v80), (*a3 + 104 * v81), v92);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_99;
        }

        if (v40 > v7[2])
        {
          goto LABEL_100;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = v7[2];
        if (v40 >= v82)
        {
          goto LABEL_101;
        }

        v37 = v82 - 1;
        result = memmove(&v38[2 * v40], v80 + 2, 16 * (v82 - 1 - v40));
        v7[2] = v82 - 1;
        if (v82 <= 2)
        {
          goto LABEL_3;
        }
      }

      v45 = &v38[2 * v37];
      v46 = *(v45 - 8);
      v47 = *(v45 - 7);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_102;
      }

      v50 = *(v45 - 6);
      v49 = *(v45 - 5);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_103;
      }

      v52 = &v7[2 * v37];
      v54 = *v52;
      v53 = v52[1];
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_105;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_107;
      }

      if (v56 >= v48)
      {
        v74 = &v38[2 * v40];
        v76 = *v74;
        v75 = v74[1];
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_113;
        }

        if (v43 < v77)
        {
          v40 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 104 * v6;
  v25 = v8 - v6;
LABEL_30:
  v26 = v25;
  v27 = v24;
  while (1)
  {
    if (*(v27 + 96) >= *(v27 - 8))
    {
LABEL_29:
      ++v6;
      v24 += 104;
      --v25;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    v28 = v27 - 104;
    v102 = *(v27 + 64);
    v104 = *(v27 + 80);
    v106 = *(v27 + 96);
    v94 = *v27;
    v96 = *(v27 + 16);
    v98 = *(v27 + 32);
    v100 = *(v27 + 48);
    v29 = *(v27 - 88);
    *v27 = *(v27 - 104);
    *(v27 + 16) = v29;
    v30 = *(v27 - 72);
    v31 = *(v27 - 56);
    v32 = *(v27 - 40);
    v33 = *(v27 - 24);
    *(v27 + 96) = *(v27 - 8);
    *(v27 + 64) = v32;
    *(v27 + 80) = v33;
    *(v27 + 32) = v30;
    *(v27 + 48) = v31;
    *(v28 + 64) = v102;
    *(v28 + 80) = v104;
    *(v28 + 96) = v106;
    *v28 = v94;
    *(v28 + 16) = v96;
    v27 -= 104;
    *(v28 + 32) = v98;
    *(v28 + 48) = v100;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_44F04(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 104;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 104;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[104 * v9] <= a4)
    {
      memmove(a4, __dst, 104 * v9);
    }

    v12 = &v4[104 * v9];
    if (v8 < 104)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v6 + 12) < *(v4 + 12))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 104;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 104;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 104;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0x68uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[104 * v11] <= a4)
  {
    memmove(a4, __src, 104 * v11);
  }

  v12 = &v4[104 * v11];
  if (v10 >= 104 && v6 > v7)
  {
LABEL_20:
    v5 -= 104;
    do
    {
      v15 = v5 + 104;
      if (*(v12 - 1) < *(v6 - 1))
      {
        v17 = v6 - 104;
        if (v15 != v6)
        {
          memmove(v5, v6 - 104, 0x68uLL);
        }

        if (v12 <= v4 || (v6 -= 104, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v16 = (v12 - 104);
      if (v15 != v12)
      {
        memmove(v5, v12 - 104, 0x68uLL);
      }

      v5 -= 104;
      v12 -= 104;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v18 = (v12 - v4) / 104;
  if (v6 != v4 || v6 >= &v4[104 * v18])
  {
    memmove(v6, v4, 104 * v18);
  }

  return 1;
}

char *sub_45190(char *result, int64_t a2, char a3, char *a4)
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
    sub_66D4(&qword_124150, &qword_DBCE8);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_45294(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_D6CB0();
  sub_D6680();
  v9 = sub_D6CE0();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_D6C20() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_45644(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_453E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_66D4(&qword_124148, &qword_DBCE0);
  result = sub_D69F0();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_D6CB0();
      sub_D6680();
      result = sub_D6CE0();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_45644(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_453E4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_457C4();
      goto LABEL_16;
    }

    sub_45920(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_D6CB0();
  sub_D6680();
  result = sub_D6CE0();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_D6C20();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_D6C40();
  __break(1u);
  return result;
}

void *sub_457C4()
{
  v1 = v0;
  sub_66D4(&qword_124148, &qword_DBCE0);
  v2 = *v0;
  v3 = sub_D69E0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_45920(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_66D4(&qword_124148, &qword_DBCE0);
  result = sub_D69F0();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_D6CB0();

      sub_D6680();
      result = sub_D6CE0();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_45B58(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_D6C20() & 1;
  }
}

uint64_t sub_45BE8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < a1 >> 14)
  {
    __break(1u);
  }

  return String.subscript.getter();
}

uint64_t sub_45C34()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_45CC0(void *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v35 = a6;
  v36 = a7;
  v32 = a5;
  v31 = a4;
  v8 = v7;
  v33 = a3;
  v34 = a2;
  v10 = sub_D5060();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = qword_126728;
  *&v8[qword_126728] = 0;
  v16 = &v8[qword_126738];
  *(v16 + 32) = 0;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 40) = -1;
  *&v8[qword_126740] = 5;
  *&v8[qword_126748] = 0x3FF0000000000000;
  *&v8[qword_126750] = 0x403E000000000000;
  *&v8[qword_126758] = 0;
  v17 = &v8[qword_126760];
  sub_D5050();
  v18 = sub_D5040();
  v20 = v19;
  (*(v11 + 8))(v14, v10);
  *v17 = v18;
  v17[1] = v20;
  v21 = *&v8[v15];
  *&v8[v15] = a1;
  v22 = v33;
  v23 = a1;

  v24 = v34;
  *&v8[qword_126730] = v34;
  sub_FBD4(v22, &v37, &qword_121F30, &unk_DC820);
  if (v38)
  {
    sub_38BDC(&v37, v41);
    sub_38BDC(v41, &v37);
    v39 = 0;
    swift_beginAccess();
    v25 = v24;
    sub_324E8(&v37, v16, v31, v32);
    swift_endAccess();
  }

  else
  {
    v26 = v24;
    sub_FC3C(&v37, &qword_121F30, &unk_DC820);
  }

  v27 = sub_66D4(v35, v36);
  v40.receiver = v8;
  v40.super_class = v27;
  v28 = objc_msgSendSuper2(&v40, "init");
  sub_FC3C(v22, &qword_121F30, &unk_DC820);
  return v28;
}

uint64_t sub_45F34()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_45F94(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_45FE4()
{
  result = qword_1241B0;
  if (!qword_1241B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1241B0);
  }

  return result;
}

uint64_t sub_46038()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_46078(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_42864(a1);
}

uint64_t sub_46084()
{
  v1 = sub_D5140();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_46148()
{
  v1 = *(*(sub_D5140() - 8) + 80);
  v2 = *(v0 + 16);

  return sub_42E30();
}

uint64_t sub_461BC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_46210(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (!a2)
  {
    return 0;
  }

  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    v9 = a1;

    return v9;
  }

  if (a4)
  {
    v7 = a4;
  }

  else
  {
    a3 = 0xD000000000000010;
    v7 = 0x80000000000E6D30;
  }

  if (a3 != a1 || v7 != a2)
  {
    v14 = sub_D6C20();

    if (v14)
    {
      goto LABEL_15;
    }

    if (a6)
    {
      v20 = a5;
    }

    else
    {
      v20 = 0x73654D20746E6553;
    }

    if (a6)
    {
      v21 = a6;
    }

    else
    {
      v21 = 0xED00007365676173;
    }

    if (v20 == a1 && v21 == a2)
    {

LABEL_27:
      v23 = "MAILBOX.DISPLAYNAME.JUNK";
      type metadata accessor for MAPreferencesViewProvider();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v25 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
LABEL_28:
      v17 = v25;
      v41._object = (v23 | 0x8000000000000000);
      v41._countAndFlagsBits = 0xD000000000000018;
      sub_D66D0(v41);
      v42._countAndFlagsBits = 2777980912;
      v42._object = 0xA400000000000000;
      sub_D66D0(v42);
      v18._countAndFlagsBits = 2777980912;
      v37._countAndFlagsBits = 0xE000000000000000;
      v19._object = (v23 | 0x8000000000000000);
      v19._countAndFlagsBits = 0xD000000000000018;
      goto LABEL_29;
    }

    v22 = sub_D6C20();

    if (v22)
    {
      goto LABEL_27;
    }

    if (a1 == 1802401098 && a2 == 0xE400000000000000 || (sub_D6C20() & 1) != 0)
    {
      v23 = "MAILBOX.DISPLAYNAME.ARCH";
      type metadata accessor for MAPreferencesViewProvider();
      v28 = swift_getObjCClassFromMetadata();
      v25 = [objc_opt_self() bundleForClass:v28];
      goto LABEL_28;
    }

    if (a1 == 0x65766968637241 && a2 == 0xE700000000000000 || (sub_D6C20() & 1) != 0)
    {
      v23 = "MAILBOX.DISPLAYNAME.DRAFTS";
      type metadata accessor for MAPreferencesViewProvider();
      v29 = swift_getObjCClassFromMetadata();
      v25 = [objc_opt_self() bundleForClass:v29];
      goto LABEL_28;
    }

    if (a1 == 0x737466617244 && a2 == 0xE600000000000000 || (v30 = sub_D6C20(), (v30 & 1) != 0))
    {
      v15 = "PTION.DESCRIPTOR.FROM";
      type metadata accessor for MAPreferencesViewProvider();
      v31 = swift_getObjCClassFromMetadata();
      v17 = [objc_opt_self() bundleForClass:v31];
      v43._countAndFlagsBits = 0xD00000000000001ALL;
      v43._object = 0x80000000000E7F40;
      sub_D66D0(v43);
      v44._countAndFlagsBits = 2777980912;
      v44._object = 0xA400000000000000;
      sub_D66D0(v44);
      v18._countAndFlagsBits = 2777980912;
      v37._countAndFlagsBits = 0xE000000000000000;
      v19._countAndFlagsBits = 0xD00000000000001ALL;
      goto LABEL_16;
    }

    v38[0] = 47;
    v38[1] = 0xE100000000000000;
    __chkstk_darwin(v30);
    v37._countAndFlagsBits = v38;
    sub_4461C(sub_46784, &v36, v32, v33);
    if (v34)
    {

      return a1;
    }

    v35 = sub_D66B0();

    sub_45BE8(v35, a1, a2);

    v9 = sub_D6670();

    return v9;
  }

LABEL_15:
  v15 = "WARDTOANDMARKREAD";
  type metadata accessor for MAPreferencesViewProvider();
  v16 = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:v16];
  v39._countAndFlagsBits = 0xD000000000000019;
  v39._object = 0x80000000000E7CF0;
  sub_D66D0(v39);
  v40._countAndFlagsBits = 2777980912;
  v40._object = 0xA400000000000000;
  sub_D66D0(v40);
  v18._countAndFlagsBits = 2777980912;
  v37._countAndFlagsBits = 0xE000000000000000;
  v19._countAndFlagsBits = 0xD000000000000019;
LABEL_16:
  v19._object = (v15 | 0x8000000000000000);
LABEL_29:
  v45.value._countAndFlagsBits = 0;
  v45.value._object = 0;
  v26.super.isa = v17;
  v18._object = 0xA400000000000000;
  v27 = sub_D4E80(v19, v45, v26, v18, v37);

  return v27;
}

uint64_t sub_46784(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_D6C20() & 1;
  }
}

unint64_t sub_467DC()
{
  result = qword_1241C0;
  if (!qword_1241C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1241C0);
  }

  return result;
}

unint64_t sub_46830()
{
  result = qword_1241C8;
  if (!qword_1241C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1241C8);
  }

  return result;
}

unint64_t sub_468A8()
{
  result = qword_1241D8;
  if (!qword_1241D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1241D8);
  }

  return result;
}

unint64_t sub_468FC()
{
  result = qword_1241E0;
  if (!qword_1241E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1241E0);
  }

  return result;
}

unint64_t sub_46974()
{
  result = qword_1241F0;
  if (!qword_1241F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1241F0);
  }

  return result;
}

unint64_t sub_469C8()
{
  result = qword_1241F8;
  if (!qword_1241F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1241F8);
  }

  return result;
}

unint64_t sub_46A1C()
{
  result = qword_124200;
  if (!qword_124200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_124200);
  }

  return result;
}

unint64_t sub_46A70()
{
  result = qword_124228;
  if (!qword_124228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_124228);
  }

  return result;
}

uint64_t sub_46AC4(_OWORD *a1, uint64_t a2)
{
  sub_2A5C4(a2, v25);
  v3 = v26;
  v4 = sub_38BFC(v25, v26);
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 16))(v7);
  v9 = *v7;
  v10 = type metadata accessor for MSRepositoryDefault();
  v24[3] = v10;
  v24[4] = &off_1188F0;
  v24[0] = v9;
  v11 = _s11descr112711V9ViewModelCMa();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = sub_38BFC(v24, v10);
  v16 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v23[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v19 + 16))(v18);
  v20 = *v18;
  sub_15C4C(a1, v23);
  v21 = sub_4A4FC(a1, v20, v14);
  sub_67D4(v24);
  sub_67D4(v25);
  return v21;
}

uint64_t sub_46CA0@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = sub_66D4(&qword_1242E0, &qword_DBF38);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = sub_66D4(&qword_1242E8, &qword_DBF40);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  v23 = v1;
  sub_66D4(&qword_1242F0, &qword_DBF48);
  sub_4AB04();
  sub_D5E60();
  v12 = sub_109A8(&qword_124310, &qword_1242E0, &qword_DBF38);
  sub_D5F90();
  (*(v3 + 8))(v6, v2);
  v13 = (v1 + *(type metadata accessor for MSMailImportDetailView() + 20));
  v14 = *v13;
  v15 = v13[1];
  v16 = *(v13 + 16);
  _s11descr112711V9ViewModelCMa();
  sub_4AA88();
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v29[0] = v26;
  v29[1] = v27;
  v30[0] = v28[0];
  *(v30 + 9) = *(v28 + 9);
  v17 = v27;

  sub_3C4F8(v29);
  v26 = v17;
  v24 = v2;
  v25 = v12;
  swift_getOpaqueTypeConformance2();
  sub_DFAC();
  v18 = v22;
  sub_D6040();

  (*(v8 + 8))(v11, v7);
  result = sub_66D4(&qword_124318, &unk_DBFA8);
  v20 = (v18 + *(result + 36));
  *v20 = sub_4A36C;
  v20[1] = 0;
  v20[2] = 0;
  v20[3] = 0;
  return result;
}

uint64_t sub_47004()
{
  sub_4A044();
  sub_D5B60();
  sub_D5F40();
  sub_66D4(&qword_124308, &unk_DBF50);
  sub_66D4(&qword_1212E8, &qword_D8F60);
  sub_109A8(&qword_124300, &qword_124308, &unk_DBF50);
  sub_4ABC8();
  return sub_D63A0();
}

uint64_t sub_47120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a2;
  v122 = sub_66D4(&qword_124320, &qword_DBFB8);
  v3 = *(*(v122 - 8) + 64);
  __chkstk_darwin(v122);
  v5 = &v110 - v4;
  v6 = type metadata accessor for MSMailImportDetailView();
  v114 = *(v6 - 8);
  v7 = *(v114 + 64);
  __chkstk_darwin(v6);
  v115 = v8;
  v116 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_66D4(&qword_121380, &qword_D9040);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v110 - v11;
  v131 = sub_66D4(&qword_121280, &unk_D8E40);
  v13 = *(*(v131 - 8) + 64);
  __chkstk_darwin(v131);
  v130 = &v110 - v14;
  v121 = sub_66D4(&qword_124328, &qword_DBFC0);
  v120 = *(v121 - 8);
  v15 = *(v120 + 64);
  __chkstk_darwin(v121);
  v119 = &v110 - v16;
  v17 = sub_66D4(&qword_124330, &qword_DBFC8);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v126 = &v110 - v22;
  v23 = sub_66D4(&qword_124338, &qword_DBFD0);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v125 = &v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v110 - v27;
  *v28 = sub_D5B40();
  *(v28 + 1) = 0;
  v28[16] = 1;
  v29 = *(sub_66D4(&qword_124340, &qword_DBFD8) + 44);
  v124 = v28;
  sub_48514(a1, &v28[v29]);
  v117 = v6;
  v30 = *(v6 + 20);
  v118 = a1;
  v31 = (a1 + v30);
  v32 = *v31;
  v33 = v31[1];
  v34 = *(v31 + 16);
  v35 = _s11descr112711V9ViewModelCMa();
  sub_4AA88();
  v123 = v33;
  LODWORD(v129) = v34;
  v128 = v35;
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v141[0] = v132;
  v141[1] = v133;
  *v142 = v134[0];
  *&v142[9] = *(v134 + 9);
  sub_3C4F8(v141);
  if (v142[0] <= 3u && !v142[0])
  {

LABEL_5:
    type metadata accessor for MAPreferencesViewProvider();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v38 = objc_opt_self();
    v39 = [v38 bundleForClass:ObjCClassFromMetadata];
    v132._countAndFlagsBits = 2777980912;
    v132._object = 0xA400000000000000;
    v113 = v21;
    v112 = v5;
    v143._countAndFlagsBits = 0x504D495F504F5453;
    v143._object = 0xEB0000000054524FLL;
    sub_D66D0(v143);
    v144._countAndFlagsBits = 2777980912;
    v144._object = 0xA400000000000000;
    sub_D66D0(v144);
    v107._countAndFlagsBits = 0xE000000000000000;
    v145._countAndFlagsBits = 0x504D495F504F5453;
    v145._object = 0xEB0000000054524FLL;
    v155.value._countAndFlagsBits = 0;
    v155.value._object = 0;
    v40.super.isa = v39;
    v41 = sub_D4E80(v145, v155, v40, v132, v107);
    v43 = v42;

    v132._countAndFlagsBits = v41;
    v132._object = v43;
    sub_D5640();
    v44 = sub_D5660();
    (*(*(v44 - 8) + 56))(v12, 0, 1, v44);
    v45 = v118;
    v46 = v116;
    sub_4AD34(v118, v116);
    v47 = (*(v114 + 80) + 16) & ~*(v114 + 80);
    v48 = swift_allocObject();
    sub_4AD9C(v46, v48 + v47);
    v116 = sub_DFAC();
    v49 = v130;
    sub_D6270();
    sub_D5740();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    countAndFlagsBits = v132._countAndFlagsBits;
    KeyPath = swift_getKeyPath();
    v52 = swift_allocObject();
    *(v52 + 16) = countAndFlagsBits;
    v53 = &v49[*(v131 + 36)];
    *v53 = KeyPath;
    v53[1] = sub_10ACC;
    v53[2] = v52;
    v54 = [v38 bundleForClass:ObjCClassFromMetadata];
    v132._countAndFlagsBits = 2777980912;
    v132._object = 0xA400000000000000;
    v146._object = 0x80000000000E8010;
    v146._countAndFlagsBits = 0xD00000000000001ELL;
    sub_D66D0(v146);
    v147._countAndFlagsBits = 2777980912;
    v147._object = 0xA400000000000000;
    sub_D66D0(v147);
    v108._countAndFlagsBits = 0xE000000000000000;
    v148._object = 0x80000000000E8010;
    v148._countAndFlagsBits = 0xD00000000000001ELL;
    v156.value._countAndFlagsBits = 0;
    v156.value._object = 0;
    v55.super.isa = v54;
    v56 = sub_D4E80(v148, v156, v55, v132, v108);
    v58 = v57;

    *&v139[0] = v56;
    *(&v139[0] + 1) = v58;
    v59 = v45 + *(v117 + 24);
    v60 = *v59;
    v61 = *(v59 + 8);
    LOBYTE(v137) = v60;
    v138 = v61;
    sub_66D4(&qword_121378, &qword_DA7F0);
    v62 = sub_D6230();
    v129 = &v110;
    v63 = __chkstk_darwin(v62);
    __chkstk_darwin(v63);
    v128 = sub_66D4(&qword_124358, &qword_DC078);
    v64 = sub_EB50();
    v65 = sub_109A8(&qword_124360, &qword_124358, &qword_DC078);
    v66 = v116;
    v67 = v131;
    v68 = v119;
    v69 = v130;
    sub_D6060();

    sub_FC3C(v69, &qword_121280, &unk_D8E40);
    v70 = v120;
    v71 = v121;
    (*(v120 + 16))(v112, v68, v121);
    goto LABEL_8;
  }

  v36 = sub_D6C20();

  if (v36)
  {
    goto LABEL_5;
  }

  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v139[0] = v132;
  v139[1] = v133;
  *v140 = v134[0];
  *&v140[9] = *(v134 + 9);
  sub_3C4F8(v139);
  if (v140[0] < 2u)
  {
    v101 = sub_66D4(&qword_124348, &qword_DBFE0);
    v99 = v126;
    (*(*(v101 - 8) + 56))(v126, 1, 1, v101);
    goto LABEL_10;
  }

  type metadata accessor for MAPreferencesViewProvider();
  v72 = swift_getObjCClassFromMetadata();
  v111 = v72;
  v73 = objc_opt_self();
  v74 = [v73 bundleForClass:v72];
  v113 = v21;
  v132._countAndFlagsBits = 2777980912;
  v132._object = 0xA400000000000000;
  v149._countAndFlagsBits = 0x495F45564F4D4552;
  v149._object = 0xED000054524F504DLL;
  sub_D66D0(v149);
  v150._countAndFlagsBits = 2777980912;
  v150._object = 0xA400000000000000;
  sub_D66D0(v150);
  v112 = v5;
  v107._countAndFlagsBits = 0xE000000000000000;
  v151._countAndFlagsBits = 0x495F45564F4D4552;
  v151._object = 0xED000054524F504DLL;
  v157.value._countAndFlagsBits = 0;
  v157.value._object = 0;
  v75.super.isa = v74;
  v76 = sub_D4E80(v151, v157, v75, v132, v107);
  v78 = v77;

  v132._countAndFlagsBits = v76;
  v132._object = v78;
  sub_D5640();
  v79 = sub_D5660();
  (*(*(v79 - 8) + 56))(v12, 0, 1, v79);
  v80 = v118;
  v81 = v116;
  sub_4AD34(v118, v116);
  v82 = (*(v114 + 80) + 16) & ~*(v114 + 80);
  v83 = swift_allocObject();
  sub_4AD9C(v81, v83 + v82);
  v116 = sub_DFAC();
  v84 = v130;
  sub_D6270();
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  LOBYTE(v72) = v132._countAndFlagsBits;
  v85 = swift_getKeyPath();
  v86 = swift_allocObject();
  *(v86 + 16) = v72;
  v87 = &v84[*(v131 + 36)];
  *v87 = v85;
  v87[1] = sub_F0D0;
  v87[2] = v86;
  v88 = [v73 bundleForClass:v111];
  v132._countAndFlagsBits = 2777980912;
  v132._object = 0xA400000000000000;
  v152._countAndFlagsBits = 0xD000000000000020;
  v152._object = 0x80000000000E7FE0;
  sub_D66D0(v152);
  v153._countAndFlagsBits = 2777980912;
  v153._object = 0xA400000000000000;
  sub_D66D0(v153);
  v109._countAndFlagsBits = 0xE000000000000000;
  v154._countAndFlagsBits = 0xD000000000000020;
  v154._object = 0x80000000000E7FE0;
  v158.value._countAndFlagsBits = 0;
  v158.value._object = 0;
  v89.super.isa = v88;
  v90 = sub_D4E80(v154, v158, v89, v132, v109);
  v92 = v91;

  v137 = v90;
  v138 = v92;
  v93 = v80 + *(v117 + 28);
  v94 = *v93;
  v95 = *(v93 + 8);
  v135 = v94;
  v136 = v95;
  sub_66D4(&qword_121378, &qword_DA7F0);
  v96 = sub_D6230();
  v129 = &v110;
  v97 = __chkstk_darwin(v96);
  __chkstk_darwin(v97);
  v128 = sub_66D4(&qword_124358, &qword_DC078);
  v64 = sub_EB50();
  v65 = sub_109A8(&qword_124360, &qword_124358, &qword_DC078);
  v66 = v116;
  v67 = v131;
  v68 = v119;
  v98 = v130;
  sub_D6060();

  sub_FC3C(v98, &qword_121280, &unk_D8E40);
  v70 = v120;
  v71 = v121;
  (*(v120 + 16))(v112, v68, v121);
LABEL_8:
  swift_storeEnumTagMultiPayload();
  v132._countAndFlagsBits = v67;
  v132._object = &type metadata for String;
  *&v133 = v128;
  *(&v133 + 1) = &type metadata for Text;
  *&v134[0] = v64;
  *(&v134[0] + 1) = v66;
  *&v134[1] = v65;
  v21 = v113;
  *(&v134[1] + 1) = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v99 = v126;
  sub_D5BF0();
  (*(v70 + 8))(v68, v71);
  v100 = sub_66D4(&qword_124348, &qword_DBFE0);
  (*(*(v100 - 8) + 56))(v99, 0, 1, v100);
LABEL_10:
  v102 = v124;
  v103 = v125;
  sub_FBD4(v124, v125, &qword_124338, &qword_DBFD0);
  sub_4AC5C(v99, v21);
  v104 = v127;
  sub_FBD4(v103, v127, &qword_124338, &qword_DBFD0);
  v105 = sub_66D4(&qword_124350, &unk_DBFE8);
  sub_4AC5C(v21, v104 + *(v105 + 48));
  sub_4ACCC(v99);
  sub_FC3C(v102, &qword_124338, &qword_DBFD0);
  sub_4ACCC(v21);
  return sub_FC3C(v103, &qword_124338, &qword_DBFD0);
}

uint64_t sub_48514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_66D4(&qword_122218, &qword_DA1B0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3);
  v62 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v56 - v8;
  v10 = (a1 + *(type metadata accessor for MSMailImportDetailView() + 20));
  v11 = v10[1];
  v59 = *v10;
  v58 = v11;
  v57 = *(v10 + 16);
  v56 = _s11descr112711V9ViewModelCMa();
  sub_4AA88();
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v66[0] = v68;
  v66[1] = v69;
  v67[0] = *v70;
  *(v67 + 9) = *&v70[9];
  v12 = v69;

  sub_3C4F8(v66);
  v68 = v12;
  v60 = sub_DFAC();
  v13 = sub_D5F50();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  KeyPath = swift_getKeyPath();
  v21 = &v9[*(v4 + 44)];
  v22 = *(sub_66D4(&qword_1214A8, &qword_D9280) + 28);
  v23 = enum case for Text.TruncationMode.tail(_:);
  v24 = sub_D5EF0();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  *v21 = swift_getKeyPath();
  *v9 = v13;
  *(v9 + 1) = v15;
  v9[16] = v17 & 1;
  *(v9 + 3) = v19;
  *(v9 + 4) = KeyPath;
  *(v9 + 5) = 1;
  v9[48] = 0;
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v68 = v63;
  v69 = v64;
  *v70 = v65[0];
  *&v70[9] = *(v65 + 9);
  sub_3C4F8(&v68);
  v25 = v70[0];
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  if (v25 == 1)
  {
    v28 = "IMPORT_STATUS_COMPLETED";
  }

  else
  {
    if (v25)
    {
      *&v63 = 2777980912;
      *(&v63 + 1) = 0xA400000000000000;
      v73._object = 0x80000000000E7380;
      v73._countAndFlagsBits = 0xD000000000000014;
      sub_D66D0(v73);
      v74._countAndFlagsBits = 2777980912;
      v74._object = 0xA400000000000000;
      sub_D66D0(v74);
      v31 = *(&v63 + 1);
      v30._countAndFlagsBits = v63;
      v55._countAndFlagsBits = 0xE000000000000000;
      v32._object = 0x80000000000E7380;
      v32._countAndFlagsBits = 0xD000000000000014;
      goto LABEL_7;
    }

    v28 = "IMPORT_STATUS_IMPORTING";
  }

  v29 = v28 - 32;
  *&v63 = 2777980912;
  *(&v63 + 1) = 0xA400000000000000;
  v71._object = ((v28 - 32) | 0x8000000000000000);
  v71._countAndFlagsBits = 0xD000000000000017;
  sub_D66D0(v71);
  v72._countAndFlagsBits = 2777980912;
  v72._object = 0xA400000000000000;
  sub_D66D0(v72);
  v31 = *(&v63 + 1);
  v30._countAndFlagsBits = v63;
  v55._countAndFlagsBits = 0xE000000000000000;
  v32._object = (v29 | 0x8000000000000000);
  v32._countAndFlagsBits = 0xD000000000000017;
LABEL_7:
  v75.value._countAndFlagsBits = 0;
  v75.value._object = 0;
  v33.super.isa = v27;
  v30._object = v31;
  v34 = sub_D4E80(v32, v75, v33, v30, v55);
  v36 = v35;

  *&v63 = v34;
  *(&v63 + 1) = v36;
  v37 = sub_D5F50();
  v39 = v38;
  v41 = v40;
  sub_D61B0();
  v42 = sub_D5F00();
  v44 = v43;
  v46 = v45;
  v48 = v47;

  sub_F16C(v37, v39, v41 & 1);

  v49 = v62;
  sub_FBD4(v9, v62, &qword_122218, &qword_DA1B0);
  v50 = v61;
  sub_FBD4(v49, v61, &qword_122218, &qword_DA1B0);
  v51 = sub_66D4(&qword_124370, &qword_DC0F8);
  v52 = v50 + *(v51 + 48);
  *v52 = 0;
  *(v52 + 8) = 1;
  v53 = v50 + *(v51 + 64);
  *v53 = v42;
  *(v53 + 8) = v44;
  *(v53 + 16) = v46 & 1;
  *(v53 + 24) = v48;
  sub_166E0(v42, v44, v46 & 1);

  sub_FC3C(v9, &qword_122218, &qword_DA1B0);
  sub_F16C(v42, v44, v46 & 1);

  return sub_FC3C(v49, &qword_122218, &qword_DA1B0);
}

uint64_t sub_48B10@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v58 = a1;
  v55 = a2;
  v2 = type metadata accessor for MSMailImportDetailView();
  v50 = *(v2 - 8);
  v57 = *(v50 + 64);
  __chkstk_darwin(v2 - 8);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_66D4(&qword_121380, &qword_D9040);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v47 - v7;
  v9 = sub_66D4(&qword_121178, &qword_DB0C0);
  v54 = *(v9 - 8);
  v10 = *(v54 + 64);
  v11 = __chkstk_darwin(v9);
  v53 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v52 = &v47 - v14;
  v15 = __chkstk_darwin(v13);
  v51 = &v47 - v16;
  __chkstk_darwin(v15);
  v56 = &v47 - v17;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = objc_opt_self();
  v20 = [v19 bundleForClass:ObjCClassFromMetadata];
  v59._countAndFlagsBits = 2777980912;
  v59._object = 0xA400000000000000;
  v60._countAndFlagsBits = 0xD000000000000013;
  v60._object = 0x80000000000E8060;
  sub_D66D0(v60);
  v61._countAndFlagsBits = 2777980912;
  v61._object = 0xA400000000000000;
  sub_D66D0(v61);
  v45._countAndFlagsBits = 0xE000000000000000;
  v62._countAndFlagsBits = 0xD000000000000013;
  v62._object = 0x80000000000E8060;
  v66.value._countAndFlagsBits = 0;
  v66.value._object = 0;
  v21.super.isa = v20;
  v22 = sub_D4E80(v62, v66, v21, v59, v45);
  v24 = v23;

  v59._countAndFlagsBits = v22;
  v59._object = v24;
  sub_D5640();
  v25 = sub_D5660();
  v26 = *(v25 - 8);
  v48 = *(v26 + 56);
  v49 = v26 + 56;
  v48(v8, 0, 1, v25);
  sub_4AD34(v58, v4);
  v27 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v28 = swift_allocObject();
  sub_4AD9C(v4, v28 + v27);
  v50 = sub_DFAC();
  sub_D6270();
  v29 = [v19 bundleForClass:ObjCClassFromMetadata];
  v59._countAndFlagsBits = 2777980912;
  v59._object = 0xA400000000000000;
  v63._object = 0x80000000000E8080;
  v63._countAndFlagsBits = 0xD000000000000012;
  sub_D66D0(v63);
  v64._countAndFlagsBits = 2777980912;
  v64._object = 0xA400000000000000;
  sub_D66D0(v64);
  v46._countAndFlagsBits = 0xE000000000000000;
  v65._object = 0x80000000000E8080;
  v65._countAndFlagsBits = 0xD000000000000012;
  v67.value._countAndFlagsBits = 0;
  v67.value._object = 0;
  v30.super.isa = v29;
  v31 = sub_D4E80(v65, v67, v30, v59, v46);
  v33 = v32;

  v59._countAndFlagsBits = v31;
  v59._object = v33;
  sub_D5650();
  v48(v8, 0, 1, v25);
  sub_4AD34(v58, v4);
  v34 = swift_allocObject();
  sub_4AD9C(v4, v34 + v27);
  v35 = v51;
  sub_D6270();
  v36 = v54;
  v37 = *(v54 + 16);
  v38 = v52;
  v39 = v56;
  v37(v52, v56, v9);
  v40 = v53;
  v37(v53, v35, v9);
  v41 = v55;
  v37(v55, v38, v9);
  v42 = sub_66D4(&qword_124368, &unk_DC080);
  v37(&v41[*(v42 + 48)], v40, v9);
  v43 = *(v36 + 8);
  v43(v35, v9);
  v43(v39, v9);
  v43(v40, v9);
  return (v43)(v38, v9);
}

uint64_t sub_490D4(uint64_t a1)
{
  v2 = type metadata accessor for MSMailImportDetailView();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = a1 + *(v3 + 32);
  v7 = *v6;
  v8 = *(v6 + 8);
  v16[16] = v7;
  v17 = v8;
  v16[15] = 0;
  sub_66D4(&qword_121378, &qword_DA7F0);
  sub_D6220();
  v9 = a1 + *(v3 + 28);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  _s11descr112711V9ViewModelCMa();
  sub_4AA88();
  sub_D5740();
  sub_4AD34(a1, &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_4AD9C(&v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v14 + v13);
  sub_3B5C8(sub_4AF94, v14);
}

uint64_t sub_4926C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for MSMailImportDetailView() + 24));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_66D4(&qword_121378, &qword_DA7F0);
  return sub_D6220();
}

uint64_t sub_492E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_66D4(&qword_121390, &qword_D9050);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_D8CB0;
  v5 = (a1 + *(type metadata accessor for MSMailImportDetailView() + 20));
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  _s11descr112711V9ViewModelCMa();
  sub_4AA88();
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v20[0] = v17;
  v20[1] = v18;
  v21[0] = *v19;
  *(v21 + 9) = *&v19[9];

  sub_3C4F8(v20);
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_F7DC();
  *(v4 + 32) = v18;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v22._object = 0x80000000000E8030;
  v22._countAndFlagsBits = 0xD000000000000020;
  sub_D66D0(v22);
  v23._countAndFlagsBits = 2777980912;
  v23._object = 0xA400000000000000;
  sub_D66D0(v23);
  v26._countAndFlagsBits = 2777980912;
  v16._countAndFlagsBits = 0xE000000000000000;
  v24._object = 0x80000000000E8030;
  v24._countAndFlagsBits = 0xD000000000000020;
  v25.value._countAndFlagsBits = 0;
  v25.value._object = 0;
  v11.super.isa = v10;
  v26._object = 0xA400000000000000;
  sub_D4E80(v24, v25, v11, v26, v16);

  sub_D6610();

  sub_DFAC();
  result = sub_D5F50();
  *a2 = result;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v15;
  return result;
}

uint64_t sub_49530@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v58 = a1;
  v55 = a2;
  v2 = type metadata accessor for MSMailImportDetailView();
  v50 = *(v2 - 8);
  v57 = *(v50 + 64);
  __chkstk_darwin(v2 - 8);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_66D4(&qword_121380, &qword_D9040);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v47 - v7;
  v9 = sub_66D4(&qword_121178, &qword_DB0C0);
  v54 = *(v9 - 8);
  v10 = *(v54 + 64);
  v11 = __chkstk_darwin(v9);
  v53 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v52 = &v47 - v14;
  v15 = __chkstk_darwin(v13);
  v51 = &v47 - v16;
  __chkstk_darwin(v15);
  v56 = &v47 - v17;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = objc_opt_self();
  v20 = [v19 bundleForClass:ObjCClassFromMetadata];
  v59._countAndFlagsBits = 2777980912;
  v59._object = 0xA400000000000000;
  v60._countAndFlagsBits = 0xD000000000000015;
  v60._object = 0x80000000000E80D0;
  sub_D66D0(v60);
  v61._countAndFlagsBits = 2777980912;
  v61._object = 0xA400000000000000;
  sub_D66D0(v61);
  v45._countAndFlagsBits = 0xE000000000000000;
  v62._countAndFlagsBits = 0xD000000000000015;
  v62._object = 0x80000000000E80D0;
  v66.value._countAndFlagsBits = 0;
  v66.value._object = 0;
  v21.super.isa = v20;
  v22 = sub_D4E80(v62, v66, v21, v59, v45);
  v24 = v23;

  v59._countAndFlagsBits = v22;
  v59._object = v24;
  sub_D5640();
  v25 = sub_D5660();
  v26 = *(v25 - 8);
  v48 = *(v26 + 56);
  v49 = v26 + 56;
  v48(v8, 0, 1, v25);
  sub_4AD34(v58, v4);
  v27 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v28 = swift_allocObject();
  sub_4AD9C(v4, v28 + v27);
  v50 = sub_DFAC();
  sub_D6270();
  v29 = [v19 bundleForClass:ObjCClassFromMetadata];
  v59._countAndFlagsBits = 2777980912;
  v59._object = 0xA400000000000000;
  v63._object = 0x80000000000E80F0;
  v63._countAndFlagsBits = 0xD000000000000014;
  sub_D66D0(v63);
  v64._countAndFlagsBits = 2777980912;
  v64._object = 0xA400000000000000;
  sub_D66D0(v64);
  v46._countAndFlagsBits = 0xE000000000000000;
  v65._object = 0x80000000000E80F0;
  v65._countAndFlagsBits = 0xD000000000000014;
  v67.value._countAndFlagsBits = 0;
  v67.value._object = 0;
  v30.super.isa = v29;
  v31 = sub_D4E80(v65, v67, v30, v59, v46);
  v33 = v32;

  v59._countAndFlagsBits = v31;
  v59._object = v33;
  sub_D5650();
  v48(v8, 0, 1, v25);
  sub_4AD34(v58, v4);
  v34 = swift_allocObject();
  sub_4AD9C(v4, v34 + v27);
  v35 = v51;
  sub_D6270();
  v36 = v54;
  v37 = *(v54 + 16);
  v38 = v52;
  v39 = v56;
  v37(v52, v56, v9);
  v40 = v53;
  v37(v53, v35, v9);
  v41 = v55;
  v37(v55, v38, v9);
  v42 = sub_66D4(&qword_124368, &unk_DC080);
  v37(&v41[*(v42 + 48)], v40, v9);
  v43 = *(v36 + 8);
  v43(v35, v9);
  v43(v39, v9);
  v43(v40, v9);
  return (v43)(v38, v9);
}

uint64_t sub_49AF4(uint64_t a1)
{
  v2 = type metadata accessor for MSMailImportDetailView();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = a1 + *(v3 + 36);
  v7 = *v6;
  v8 = *(v6 + 8);
  v16[16] = v7;
  v17 = v8;
  v16[15] = 0;
  sub_66D4(&qword_121378, &qword_DA7F0);
  sub_D6220();
  v9 = a1 + *(v3 + 28);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  _s11descr112711V9ViewModelCMa();
  sub_4AA88();
  sub_D5740();
  sub_4AD34(a1, &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_4AD9C(&v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v14 + v13);
  sub_3B604(sub_4B300, v14);
}

uint64_t sub_49C8C(uint64_t a1)
{
  v2 = sub_D57E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + *(type metadata accessor for MSMailImportDetailView() + 32);
  v8 = *(v7 + 8);
  (*v7)();
  sub_EC34(v6);
  sub_D57D0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_49D80(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for MSMailImportDetailView() + 28));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_66D4(&qword_121378, &qword_DA7F0);
  return sub_D6220();
}

uint64_t sub_49DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_66D4(&qword_121390, &qword_D9050);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_D8CB0;
  v5 = (a1 + *(type metadata accessor for MSMailImportDetailView() + 20));
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  _s11descr112711V9ViewModelCMa();
  sub_4AA88();
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v20[0] = v17;
  v20[1] = v18;
  v21[0] = *v19;
  *(v21 + 9) = *&v19[9];

  sub_3C4F8(v20);
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_F7DC();
  *(v4 + 32) = v18;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v22._object = 0x80000000000E80A0;
  v22._countAndFlagsBits = 0xD000000000000022;
  sub_D66D0(v22);
  v23._countAndFlagsBits = 2777980912;
  v23._object = 0xA400000000000000;
  sub_D66D0(v23);
  v26._countAndFlagsBits = 2777980912;
  v16._countAndFlagsBits = 0xE000000000000000;
  v24._object = 0x80000000000E80A0;
  v24._countAndFlagsBits = 0xD000000000000022;
  v25.value._countAndFlagsBits = 0;
  v25.value._object = 0;
  v11.super.isa = v10;
  v26._object = 0xA400000000000000;
  sub_D4E80(v24, v25, v11, v26, v16);

  sub_D6610();

  sub_DFAC();
  result = sub_D5F50();
  *a2 = result;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v15;
  return result;
}

uint64_t sub_4A044()
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass:ObjCClassFromMetadata];
  v20._countAndFlagsBits = 0x4D5F54524F504D49;
  v20._object = 0xEF4C52555F4C4941;
  sub_D66D0(v20);
  v21._countAndFlagsBits = 2777980912;
  v21._object = 0xA400000000000000;
  sub_D66D0(v21);
  v36._countAndFlagsBits = 2777980912;
  v17._countAndFlagsBits = 0xE000000000000000;
  v22._countAndFlagsBits = 0x4D5F54524F504D49;
  v22._object = 0xEF4C52555F4C4941;
  v33.value._countAndFlagsBits = 0;
  v33.value._object = 0;
  v3.super.isa = v2;
  v36._object = 0xA400000000000000;
  v4 = sub_D4E80(v22, v33, v3, v36, v17);
  v6 = v5;

  v7 = [v1 bundleForClass:ObjCClassFromMetadata];
  v23._countAndFlagsBits = 0x4F4D5F4E5241454CLL;
  v23._object = 0xEA00000000004552;
  sub_D66D0(v23);
  v24._countAndFlagsBits = 2777980912;
  v24._object = 0xA400000000000000;
  sub_D66D0(v24);
  v37._countAndFlagsBits = 2777980912;
  v18._countAndFlagsBits = 0xE000000000000000;
  v25._countAndFlagsBits = 0x4F4D5F4E5241454CLL;
  v25._object = 0xEA00000000004552;
  v34.value._countAndFlagsBits = 0;
  v34.value._object = 0;
  v8.super.isa = v7;
  v37._object = 0xA400000000000000;
  v9 = sub_D4E80(v25, v34, v8, v37, v18);
  v11 = v10;

  v26._countAndFlagsBits = v9;
  v26._object = v11;
  sub_D66D0(v26);

  v27._countAndFlagsBits = 10333;
  v27._object = 0xE200000000000000;
  sub_D66D0(v27);
  v28._countAndFlagsBits = v4;
  v28._object = v6;
  sub_D66D0(v28);

  v29._countAndFlagsBits = 41;
  v29._object = 0xE100000000000000;
  sub_D66D0(v29);
  v12 = [v1 bundleForClass:ObjCClassFromMetadata];
  v30._object = 0x80000000000E7FC0;
  v30._countAndFlagsBits = 0xD000000000000012;
  sub_D66D0(v30);
  v31._countAndFlagsBits = 2777980912;
  v31._object = 0xA400000000000000;
  sub_D66D0(v31);
  v38._countAndFlagsBits = 2777980912;
  v19._countAndFlagsBits = 0xE000000000000000;
  v32._object = 0x80000000000E7FC0;
  v32._countAndFlagsBits = 0xD000000000000012;
  v35.value._countAndFlagsBits = 0;
  v35.value._object = 0;
  v13.super.isa = v12;
  v38._object = 0xA400000000000000;
  sub_D4E80(v32, v35, v13, v38, v19);

  sub_66D4(&qword_121390, &qword_D9050);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_D8CB0;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_F7DC();
  *(v14 + 32) = 91;
  *(v14 + 40) = 0xE100000000000000;
  v15 = sub_D6610();

  return v15;
}

uint64_t sub_4A36C()
{
  v0 = sub_D5340();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v5 = sub_6610(v0, qword_137988);
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_D5320();
  v7 = sub_D68A0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "[Mail Import Detail] page viewed", v8, 2u);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_4A4FC(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_66D4(&qword_121070, &qword_DAFE0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20[-v9];
  v11 = sub_66D4(&qword_121068, &qword_DBEE0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20[-v14];
  v22 = type metadata accessor for MSRepositoryDefault();
  v23 = &off_1188F0;
  *&v21 = a2;
  v16 = OBJC_IVAR____TtCV18icloudMailSettings22MSMailImportDetailView9ViewModel__isDeleting;
  v20[0] = 0;
  sub_D5530();
  (*(v12 + 32))(a3 + v16, v15, v11);
  v17 = OBJC_IVAR____TtCV18icloudMailSettings22MSMailImportDetailView9ViewModel__error;
  memset(v20, 0, 41);
  sub_66D4(&qword_120EE8, &qword_D8DD0);
  sub_D5530();
  (*(v7 + 32))(a3 + v17, v10, v6);
  *(a3 + OBJC_IVAR____TtCV18icloudMailSettings22MSMailImportDetailView9ViewModel_cancellables) = &_swiftEmptySetSingleton;
  swift_beginAccess();
  v18 = a1[1];
  *v20 = *a1;
  *&v20[16] = v18;
  *&v20[32] = a1[2];
  *&v20[41] = *(a1 + 41);
  sub_D5530();
  swift_endAccess();
  sub_38BDC(&v21, a3 + OBJC_IVAR____TtCV18icloudMailSettings22MSMailImportDetailView9ViewModel_repository);
  return a3;
}

uint64_t sub_4A784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_66D4(&qword_121090, &unk_D8CC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_4A860(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_66D4(&qword_121090, &unk_D8CC0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for MSMailImportDetailView()
{
  result = qword_124288;
  if (!qword_124288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_4A970()
{
  sub_6C10();
  if (v0 <= 0x3F)
  {
    sub_4AA24();
    if (v1 <= 0x3F)
    {
      sub_39788();
      if (v2 <= 0x3F)
      {
        sub_6CFC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_4AA24()
{
  if (!qword_124298)
  {
    _s11descr112711V9ViewModelCMa();
    sub_4AA88();
    v0 = sub_D5760();
    if (!v1)
    {
      atomic_store(v0, &qword_124298);
    }
  }
}

unint64_t sub_4AA88()
{
  result = qword_1242A0;
  if (!qword_1242A0)
  {
    _s11descr112711V9ViewModelCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1242A0);
  }

  return result;
}

unint64_t sub_4AB04()
{
  result = qword_1242F8;
  if (!qword_1242F8)
  {
    sub_6110(&qword_1242F0, &qword_DBF48);
    sub_109A8(&qword_124300, &qword_124308, &unk_DBF50);
    sub_4ABC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1242F8);
  }

  return result;
}

unint64_t sub_4ABC8()
{
  result = qword_121300;
  if (!qword_121300)
  {
    sub_6110(&qword_1212E8, &qword_D8F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121300);
  }

  return result;
}

uint64_t sub_4AC5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_124330, &qword_DBFC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4ACCC(uint64_t a1)
{
  v2 = sub_66D4(&qword_124330, &qword_DBFC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4AD34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MSMailImportDetailView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4AD9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MSMailImportDetailView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_4AF04(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MSMailImportDetailView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_4B020()
{
  v1 = type metadata accessor for MSMailImportDetailView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_66D4(&qword_1211E8, &qword_D8DA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_D57E0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v5 + v1[5];
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = v8[16];
  sub_E0C4();
  v12 = *(v5 + v1[6] + 8);

  v13 = *(v5 + v1[7] + 8);

  v14 = *(v5 + v1[8] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_4B18C()
{
  result = qword_124378;
  if (!qword_124378)
  {
    sub_6110(&qword_124318, &unk_DBFA8);
    sub_6110(&qword_1242E8, &qword_DBF40);
    sub_6110(&qword_1242E0, &qword_DBF38);
    sub_109A8(&qword_124310, &qword_1242E0, &qword_DBF38);
    swift_getOpaqueTypeConformance2();
    sub_DFAC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_124378);
  }

  return result;
}

uint64_t URL.queryParameters.getter()
{
  v0 = sub_D4DF0();
  v57 = *(v0 - 8);
  v1 = *(v57 + 64);
  __chkstk_darwin(v0);
  v3 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_66D4(&qword_124380, &qword_DC100);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v47 - v6;
  v8 = sub_D4E40();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_D4E20();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_4B7FC(v7);
    return 0;
  }

  (*(v9 + 32))(v12, v7, v8);
  v13 = sub_D4E10();
  if (!v13)
  {
    (*(v9 + 8))(v12, v8);
    return 0;
  }

  v47 = v12;
  v48 = v9;
  v49 = v8;
  v14 = v13;
  v56 = *(v13 + 16);
  if (!v56)
  {
    v16 = &_swiftEmptyDictionarySingleton;
LABEL_29:

    (*(v48 + 8))(v47, v49);
    return v16;
  }

  v15 = 0;
  v55 = v13 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
  v54 = v57 + 16;
  v52 = (v57 + 8);
  v16 = &_swiftEmptyDictionarySingleton;
  v53 = v3;
  v50 = v13;
  v51 = v0;
  while (v15 < *(v14 + 16))
  {
    (*(v57 + 16))(v3, v55 + *(v57 + 72) * v15, v0);
    v19 = sub_D4DD0();
    v21 = v20;
    v22 = sub_D4DE0();
    if (!v23)
    {
      v35 = sub_4BAD4(v19, v21);
      v37 = v36;

      if (v37)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58 = v16;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_4C694();
          v16 = v58;
        }

        v17 = *(v16[6] + 16 * v35 + 8);

        v18 = *(v16[7] + 16 * v35 + 8);

        sub_4C4E4(v35, v16);
      }

      v3 = v53;
      (*v52)(v53, v0);
      goto LABEL_8;
    }

    v24 = v23;
    v25 = v22;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v16;
    v28 = sub_4BAD4(v19, v21);
    v29 = v16[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_32;
    }

    v32 = v27;
    if (v16[3] >= v31)
    {
      if (v26)
      {
        v3 = v53;
        if ((v27 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_4C694();
        v3 = v53;
        if ((v32 & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      sub_4BCCC(v31, v26);
      v33 = sub_4BAD4(v19, v21);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_34;
      }

      v28 = v33;
      v3 = v53;
      if ((v32 & 1) == 0)
      {
LABEL_23:
        v16 = v58;
        v58[(v28 >> 6) + 8] |= 1 << v28;
        v41 = (v16[6] + 16 * v28);
        *v41 = v19;
        v41[1] = v21;
        v42 = (v16[7] + 16 * v28);
        *v42 = v25;
        v42[1] = v24;
        v0 = v51;
        (*v52)(v3, v51);
        v43 = v16[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_33;
        }

        v16[2] = v45;
        goto LABEL_25;
      }
    }

    v16 = v58;
    v39 = (v58[7] + 16 * v28);
    v40 = v39[1];
    *v39 = v25;
    v39[1] = v24;

    v0 = v51;
    (*v52)(v3, v51);
LABEL_25:
    v14 = v50;
LABEL_8:
    if (v56 == ++v15)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_D6C50();
  __break(1u);
  return result;
}

uint64_t sub_4B7FC(uint64_t a1)
{
  v2 = sub_66D4(&qword_124380, &qword_DC100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t URL.baseUrl()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_D4E40();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_66D4(&qword_124380, &qword_DC100);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16[-v9];
  sub_D4E20();
  v11 = *(v3 + 48);
  if (!v11(v10, 1, v2))
  {
    v13 = sub_D4E00();
    if (*v12)
    {
      *v12 = _swiftEmptyArrayStorage;
    }

    v13(v16, 0);
  }

  if (v11(v10, 1, v2))
  {
    v14 = sub_D4F20();
    (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }

  else
  {
    (*(v3 + 16))(v6, v10, v2);
    sub_D4E30();
    (*(v3 + 8))(v6, v2);
  }

  return sub_4B7FC(v10);
}

unint64_t sub_4BA90(uint64_t a1)
{
  v2 = v1;
  v4 = sub_D69B0(*(v2 + 40));

  return sub_4BB4C(a1, v4);
}

unint64_t sub_4BAD4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_D6CB0();
  sub_D6680();
  v6 = sub_D6CE0();

  return sub_4BC14(a1, a2, v6);
}

unint64_t sub_4BB4C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_4C80C(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_D69C0();
      sub_4C868(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_4BC14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_D6C20())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_4BCCC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_66D4(&qword_124388, qword_DC110);
  v40 = a2;
  result = sub_D6AD0();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_D6CB0();
      sub_D6680();
      result = sub_D6CE0();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_4BF8C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_66D4(&qword_122520, &qword_DA638);
  v38 = a2;
  result = sub_D6AD0();
  v8 = result;
  if (*(v5 + 16))
  {
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
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_D6CB0();
      sub_D6680();
      result = sub_D6CE0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_4C22C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_66D4(&qword_1223F8, &qword_DA4F0);
  v36 = a2;
  result = sub_D6AD0();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_26430(v25, v37);
      }

      else
      {
        sub_263D4(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_D6CB0();
      sub_D6680();
      result = sub_D6CE0();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_26430(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_4C4E4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_D69A0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_D6CB0();

      sub_D6680();
      v13 = sub_D6CE0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_4C694()
{
  v1 = v0;
  sub_66D4(&qword_124388, qword_DC110);
  v2 = *v0;
  v3 = sub_D6AC0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_4C8BC()
{
  v1 = v0;
  sub_66D4(&qword_122520, &qword_DA638);
  v2 = *v0;
  v3 = sub_D6AC0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_4CA24()
{
  v1 = v0;
  sub_66D4(&qword_1223F8, &qword_DA4F0);
  v2 = *v0;
  v3 = sub_D6AC0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_263D4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_26430(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_4CBC8(uint64_t (*a1)(void), unint64_t a2)
{
  v3 = v2;
  v6 = sub_D5340();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_4D9A0() & 1) == 0)
  {
    return a1(0);
  }

  v55 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v59) = 1;

  sub_D5580();
  if (qword_120E38 != -1)
  {
LABEL_25:
    swift_once();
  }

  v56 = a2;
  v11 = sub_6610(v6, qword_137988);
  (*(v7 + 16))(v10, v11, v6);
  v12 = sub_D5320();
  v13 = sub_D68A0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "[Primary Address] update started", v14, 2u);
  }

  (*(v7 + 8))(v10, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v6 = v59;
  v54 = v60;
  swift_getKeyPath();
  swift_getKeyPath();
  v57 = v3;
  sub_D5570();

  a2 = 0;
  v10 = v59;
  v7 = *(v59 + 2);
  v15 = _swiftEmptyArrayStorage;
LABEL_6:
  v16 = 40 * a2;
  while (v7 != a2)
  {
    if (a2 >= *(v10 + 2))
    {
      __break(1u);
      goto LABEL_25;
    }

    ++a2;
    v17 = v16 + 40;
    v18 = v10[v16 + 64];
    v16 += 40;
    if (v18)
    {
      v53 = v6;
      v19 = *&v10[v17 - 8];
      v20 = *&v10[v17];
      v22 = *&v10[v17 + 8];
      v21 = *&v10[v17 + 16];
      v23 = v10[v17 + 25];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = v15;
      v51 = v22;
      v52 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_11BD0(0, *(v15 + 2) + 1, 1);
        v15 = v59;
      }

      v3 = *(v15 + 2);
      v25 = *(v15 + 3);
      if (v3 >= v25 >> 1)
      {
        sub_11BD0((v25 > 1), v3 + 1, 1);
        v15 = v59;
      }

      *(v15 + 2) = v3 + 1;
      v26 = &v15[40 * v3];
      v27 = v51;
      *(v26 + 4) = v52;
      *(v26 + 5) = v20;
      *(v26 + 6) = v27;
      *(v26 + 7) = v21;
      v26[64] = 1;
      v26[65] = v23;
      v6 = v53;
      goto LABEL_6;
    }
  }

  v29 = *(v15 + 2);
  if (v29)
  {
    v59 = _swiftEmptyArrayStorage;
    sub_11B90(0, v29, 0);
    v30 = v59;
    v31 = (v15 + 56);
    do
    {
      v32 = *(v31 - 1);
      v33 = *v31;
      v59 = v30;
      v35 = *(v30 + 2);
      v34 = *(v30 + 3);

      if (v35 >= v34 >> 1)
      {
        sub_11B90((v34 > 1), v35 + 1, 1);
        v30 = v59;
      }

      *(v30 + 2) = v35 + 1;
      v36 = &v30[16 * v35];
      *(v36 + 4) = v32;
      *(v36 + 5) = v33;
      v31 += 5;
      --v29;
    }

    while (v29);
  }

  else
  {

    v30 = _swiftEmptyArrayStorage;
  }

  v37 = sub_6648((v57 + OBJC_IVAR____TtC18icloudMailSettings25MSPrimaryAddressViewModel_repository), *(v57 + OBJC_IVAR____TtC18icloudMailSettings25MSPrimaryAddressViewModel_repository + 24));
  v39 = *(*v37 + 16);
  v38 = *(*v37 + 24);
  v62 = &type metadata for MSPrimaryUpdateAPIRequest.Body;
  v40 = sub_46A1C();
  v41 = v54;
  v59 = v6;
  v60 = v54;
  v63 = v40;
  v61 = v30;
  v42 = objc_allocWithZone(type metadata accessor for MSPrimaryUpdateAPIRequest());
  sub_13E28(&v59, v58);
  v43 = v39;
  v44 = v38;

  v45 = sub_45BC4(v39, v44, v58);

  sub_13EF4(&v59);
  v46 = sub_1EB80();

  v59 = v46;
  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  v48[2] = v6;
  v48[3] = v41;
  v48[4] = v30;
  v48[5] = v47;
  v49 = swift_allocObject();
  *(v49 + 16) = v55;
  *(v49 + 24) = v56;

  sub_66D4(&qword_121F38, &qword_D9CA0);
  sub_14038();
  sub_D55D0();

  swift_beginAccess();
  sub_D54B0();
  swift_endAccess();
}

uint64_t sub_4D200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = a5;
  v9 = sub_D5340();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v54 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = *a1;
  v17 = *(a1 + 8);
  v18 = *(a1 + 24);
  v57 = *(a1 + 16);
  v53 = v18;
  v19 = *(a1 + 32);
  v55 = v16;
  v56 = v19;
  LODWORD(v20) = *(a1 + 40);
  if (v17)
  {
    v21 = sub_3DF44(a2, a3, a4);
    v22 = &OBJC_METACLASS___MailSettingsSpecifierProvider;
    if (v21)
    {
      v23 = sub_D6550();
      v25 = v24;

      if (qword_120E38 != -1)
      {
        swift_once();
      }

      v26 = sub_6610(v9, qword_137988);
      (*(v10 + 16))(v15, v26, v9);

      v27 = sub_D5320();
      v28 = sub_D68B0();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        LODWORD(v52) = v20;
        v20 = v29;
        v30 = swift_slowAlloc();
        v60 = v30;
        *v20 = 136642819;
        v31 = sub_558F0(v23, v25, &v60);
        v32 = v10;
        v33 = v31;

        *(v20 + 4) = v33;
        _os_log_impl(&dword_0, v27, v28, "[Primary Address] params: %{sensitive}s", v20, 0xCu);
        sub_67D4(v30);
        v22 = &OBJC_METACLASS___MailSettingsSpecifierProvider;

        LOBYTE(v20) = v52;

        (*(v32 + 8))(v15, v9);
        v10 = v32;
      }

      else
      {

        (*(v10 + 8))(v15, v9);
      }
    }

    if (v22[91].isa != -1)
    {
      swift_once();
    }

    v34 = sub_6610(v9, qword_137988);
    v35 = v54;
    (*(v10 + 16))(v54, v34, v9);

    v36 = sub_D5320();
    v37 = sub_D68B0();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = v10;
      v40 = swift_slowAlloc();
      v66 = v40;
      *v38 = 136315138;
      v60 = v55;
      v61 = v17;
      v62 = v57;
      LOBYTE(v63) = v53 & 1;
      v64 = v56;
      v65 = v20 & 1;
      sub_6780();
      v41 = sub_D6C60();
      v43 = sub_558F0(v41, v42, &v66);
      v52 = v9;
      v44 = v43;

      *(v38 + 4) = v44;
      _os_log_impl(&dword_0, v36, v37, "[Primary Address] update failed: %s", v38, 0xCu);
      sub_67D4(v40);

      (*(v39 + 8))(v54, v52);
    }

    else
    {

      (*(v10 + 8))(v35, v9);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (v17)
    {
      v45 = v55;
    }

    else
    {
      v45 = 0;
    }

    if (v17)
    {
      v46 = v57;
    }

    else
    {
      v46 = 0;
    }

    if (v17)
    {
      v47 = v53 & 1;
    }

    else
    {
      v47 = 0;
    }

    if (v17)
    {
      v48 = v56;
    }

    else
    {
      v48 = 0;
    }

    if (v17)
    {
      v49 = v20 & 1;
    }

    else
    {
      v49 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v60 = v45;
    v61 = v17;
    v62 = v46;
    v63 = v47;
    v64 = v48;
    v65 = v49;

    sub_D5580();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v59 = 0;
    return sub_D5580();
  }

  return result;
}

uint64_t sub_4D798(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_D5340();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v8 = sub_6610(v3, qword_137988);
  (*(v4 + 16))(v7, v8, v3);
  v9 = sub_D5320();
  v10 = sub_D68A0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "[Primary Address] update successful", v11, 2u);
  }

  (*(v4 + 8))(v7, v3);
  return a2(1);
}

uint64_t sub_4D9A0()
{
  v1 = v0 + OBJC_IVAR____TtC18icloudMailSettings25MSPrimaryAddressViewModel_account;
  if (*(v0 + OBJC_IVAR____TtC18icloudMailSettings25MSPrimaryAddressViewModel_account + 24))
  {
    v2 = *(v1 + 16);
    v3 = *(v0 + OBJC_IVAR____TtC18icloudMailSettings25MSPrimaryAddressViewModel_account + 24);
  }

  else
  {
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_D5570();

  if (v2 == v23 && v3 == v24)
  {
  }

  else
  {
    v5 = sub_D6C20();

    if ((v5 & 1) == 0)
    {
      return 1;
    }
  }

  v22 = 0;
  v7 = 0;
  v8 = *(v1 + 48);
  v20 = *(v8 + 16);
  v9 = (v8 + 48);
  v10 = &unk_DC248;
  do
  {
    v21 = v20 != v7;
    if (v20 == v7)
    {
      break;
    }

    if (v7 >= *(v8 + 16))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    v12 = *(v9 - 2);
    v11 = *(v9 - 1);
    swift_getKeyPath();
    v13 = v10;
    swift_getKeyPath();

    sub_D5570();

    if (v7 >= *(v23 + 16))
    {
      goto LABEL_27;
    }

    v15 = *(v23 + v22 + 48);
    v14 = *(v23 + v22 + 56);

    if (v12 == v15 && v11 == v14)
    {

      v10 = v13;
    }

    else
    {
      v17 = sub_D6C20();

      v10 = v13;
      if ((v17 & 1) == 0)
      {
        return v21;
      }
    }

    if (v7 >= *(v8 + 16))
    {
      goto LABEL_28;
    }

    ++v7;
    v18 = *v9;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    result = v23;
    if (v7 - 1 >= *(v23 + 16))
    {
      goto LABEL_29;
    }

    v9 += 24;
    v19 = *(v23 + v22 + 64);

    v22 += 40;
  }

  while (v18 == v19);
  return v21;
}

uint64_t sub_4DC7C()
{
  sub_67D4((v0 + OBJC_IVAR____TtC18icloudMailSettings25MSPrimaryAddressViewModel_repository));
  v1 = (v0 + OBJC_IVAR____TtC18icloudMailSettings25MSPrimaryAddressViewModel_account);
  v2 = *(v0 + OBJC_IVAR____TtC18icloudMailSettings25MSPrimaryAddressViewModel_account + 8);
  v3 = *(v0 + OBJC_IVAR____TtC18icloudMailSettings25MSPrimaryAddressViewModel_account + 24);
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
}

uint64_t sub_4DD0C()
{
  v0 = sub_11220();
  v1 = OBJC_IVAR____TtC18icloudMailSettings25MSPrimaryAddressViewModel_repository;

  sub_67D4((v2 + v1));
  v3 = *&v0[OBJC_IVAR____TtC18icloudMailSettings25MSPrimaryAddressViewModel_account + 8];
  v4 = *&v0[OBJC_IVAR____TtC18icloudMailSettings25MSPrimaryAddressViewModel_account + 24];
  v5 = *&v0[OBJC_IVAR____TtC18icloudMailSettings25MSPrimaryAddressViewModel_account + 40];
  v6 = *&v0[OBJC_IVAR____TtC18icloudMailSettings25MSPrimaryAddressViewModel_account + 48];
  v7 = *&v0[OBJC_IVAR____TtC18icloudMailSettings25MSPrimaryAddressViewModel_account + 56];
  v8 = *&v0[OBJC_IVAR____TtC18icloudMailSettings25MSPrimaryAddressViewModel_account + 64];

  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v9, v10);
}

uint64_t type metadata accessor for MSPrimaryAddressViewModel()
{
  result = qword_1243C8;
  if (!qword_1243C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4DEA8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4DEE0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_4DF34()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4DF7C()
{
  v0 = sub_D5340();
  sub_4DFFC(v0, qword_137988);
  sub_6610(v0, qword_137988);
  return sub_D5330();
}

uint64_t *sub_4DFFC(uint64_t a1, uint64_t *a2)
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

uint64_t sub_4E074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_66D4(&qword_121090, &unk_D8CC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_4E150(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_66D4(&qword_121090, &unk_D8CC0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for MSAddAliasView()
{
  result = qword_124700;
  if (!qword_124700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_4E260()
{
  sub_6C10();
  if (v0 <= 0x3F)
  {
    sub_27934();
    if (v1 <= 0x3F)
    {
      sub_4E334();
      if (v2 <= 0x3F)
      {
        sub_4E384();
        if (v3 <= 0x3F)
        {
          sub_6CFC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_4E334()
{
  if (!qword_121128)
  {
    v0 = sub_D6240();
    if (!v1)
    {
      atomic_store(v0, &qword_121128);
    }
  }
}

void sub_4E384()
{
  if (!qword_124710)
  {
    _s11descr112E21O9ViewModelCMa();
    sub_527CC(&unk_124718, _s11descr112E21O9ViewModelCMa);
    v0 = sub_D5760();
    if (!v1)
    {
      atomic_store(v0, &qword_124710);
    }
  }
}

id sub_4E434(uint64_t a1)
{
  sub_2A5C4(a1, v21);
  v1 = v22;
  v2 = sub_38BFC(v21, v22);
  v3 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  v7 = *v5;
  v8 = type metadata accessor for MSRepositoryDefault();
  v20[3] = v8;
  v20[4] = &off_1188F0;
  v20[0] = v7;
  v9 = _s11descr112E21O9ViewModelCMa();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = sub_38BFC(v20, v8);
  v14 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_52D9C(*v16, v12);
  sub_67D4(v20);
  sub_67D4(v21);
  return v18;
}

uint64_t sub_4E5F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v55 = a2;
  v3 = sub_D5B20();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  __chkstk_darwin(v3);
  v47 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_66D4(&qword_124780, &qword_DC350);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v44 - v8;
  v10 = sub_66D4(&qword_124778, &qword_DC348);
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  __chkstk_darwin(v10);
  v13 = &v44 - v12;
  v14 = sub_66D4(&qword_124768, &qword_DC338);
  v15 = *(v14 - 8);
  v51 = v14;
  v52 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v45 = &v44 - v17;
  v18 = sub_66D4(&qword_124760, &unk_E38D0);
  v53 = *(v18 - 8);
  v54 = v18;
  v19 = *(v53 + 64);
  __chkstk_darwin(v18);
  v46 = &v44 - v20;
  v57 = a1;
  sub_66D4(&qword_1247A8, &qword_DC360);
  sub_52584();
  sub_D5E60();
  v21 = &v9[*(v6 + 36)];
  *v21 = sub_505BC;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21[2] = 0;
  v21[3] = 0;
  v21[1] = 0;
  v23 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v61._countAndFlagsBits = 2777980912;
  v61._object = 0xA400000000000000;
  v67._countAndFlagsBits = 0x41494C415F444441;
  v67._object = 0xE900000000000053;
  sub_D66D0(v67);
  v68._countAndFlagsBits = 2777980912;
  v68._object = 0xA400000000000000;
  sub_D66D0(v68);
  v43._countAndFlagsBits = 0xE000000000000000;
  v69._countAndFlagsBits = 0x41494C415F444441;
  v69._object = 0xE900000000000053;
  v70.value._countAndFlagsBits = 0;
  v70.value._object = 0;
  v24.super.isa = v23;
  v25 = sub_D4E80(v69, v70, v24, v61, v43);
  v27 = v26;

  v61._countAndFlagsBits = v25;
  v61._object = v27;
  v28 = sub_524C4();
  v29 = sub_DFAC();
  sub_D6040();

  sub_FC3C(v9, &qword_124780, &qword_DC350);
  v31 = v49;
  v30 = v50;
  v32 = v47;
  (*(v49 + 104))(v47, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v50);
  v61._countAndFlagsBits = v6;
  v61._object = &type metadata for String;
  *&v62 = v28;
  *(&v62 + 1) = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v45;
  sub_D60D0();
  (*(v31 + 8))(v32, v30);
  (*(v48 + 8))(v13, v10);
  v35 = v44;
  v56 = v44;
  sub_66D4(&qword_124770, &qword_DC340);
  v61._countAndFlagsBits = v10;
  v61._object = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_109A8(&qword_1247A0, &qword_124770, &qword_DC340);
  v36 = v46;
  v37 = v51;
  sub_D6120();
  (*(v52 + 8))(v34, v37);
  v38 = (v35 + *(type metadata accessor for MSAddAliasView() + 28));
  v39 = *v38;
  v40 = v38[1];
  v41 = *(v38 + 16);
  _s11descr112E21O9ViewModelCMa();
  sub_527CC(&unk_124718, _s11descr112E21O9ViewModelCMa);
  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  v61 = v58;
  v62 = v59;
  v63[0] = v60[0];
  *(v63 + 9) = *(v60 + 9);
  sub_A08AC(&v61._countAndFlagsBits, v55);
  countAndFlagsBits = v61._countAndFlagsBits;
  sub_E158(&countAndFlagsBits);

  v65 = v62;
  v66[0] = v63[0];
  *(v66 + 9) = *(v63 + 9);
  sub_FC3C(&v65, &qword_120EE8, &qword_D8DD0);
  return (*(v53 + 8))(v36, v54);
}

uint64_t sub_4ECDC()
{
  sub_66D4(&qword_1247C0, &qword_DC368);
  sub_109A8(&qword_1247B8, &qword_1247C0, &qword_DC368);
  return sub_D6390();
}

uint64_t sub_4ED80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_66D4(&qword_1213E0, &unk_DC500);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v31 - v8;
  v10 = sub_66D4(&qword_1213F0, &qword_D90A8);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  v17 = sub_66D4(&qword_124808, &qword_DC510);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v31 - v22;
  *v23 = sub_D5B40();
  *(v23 + 1) = 0x403E000000000000;
  v23[16] = 0;
  v24 = sub_66D4(&qword_124810, &qword_DC518);
  sub_4F0F0(a1, &v23[*(v24 + 44)]);
  *v16 = sub_D5B40();
  *(v16 + 1) = 0x403E000000000000;
  v16[16] = 0;
  v25 = sub_66D4(&qword_121408, &qword_D90C0);
  sub_4F8AC(a1, &v16[*(v25 + 44)]);
  *v9 = sub_D5B40();
  *(v9 + 1) = 0x403E000000000000;
  v9[16] = 0;
  v26 = &v9[*(sub_66D4(&qword_121418, &unk_D90D0) + 44)];
  v31 = v9;
  sub_4FFFC(a1, v26);
  sub_FBD4(v23, v21, &qword_124808, &qword_DC510);
  sub_52B5C(v16, v14);
  v27 = v7;
  sub_FBD4(v9, v7, &qword_1213E0, &unk_DC500);
  v28 = v32;
  sub_FBD4(v21, v32, &qword_124808, &qword_DC510);
  v29 = sub_66D4(&qword_124818, &qword_DC520);
  sub_52B5C(v14, v28 + *(v29 + 48));
  sub_FBD4(v27, v28 + *(v29 + 64), &qword_1213E0, &unk_DC500);
  sub_FC3C(v31, &qword_1213E0, &unk_DC500);
  sub_FC3C(v16, &qword_1213F0, &qword_D90A8);
  sub_FC3C(v23, &qword_124808, &qword_DC510);
  sub_FC3C(v27, &qword_1213E0, &unk_DC500);
  sub_FC3C(v14, &qword_1213F0, &qword_D90A8);
  return sub_FC3C(v21, &qword_124808, &qword_DC510);
}

uint64_t sub_4F0F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = type metadata accessor for MSAddAliasView();
  v4 = (v3 - 8);
  v70 = *(v3 - 8);
  v69 = *(v70 + 64);
  __chkstk_darwin(v3);
  v66 = &v59[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_66D4(&qword_124820, &qword_DC5B0);
  v7 = *(v6 - 8);
  v67 = v6 - 8;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v68 = &v59[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v12 = &v59[-v11];
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v81._countAndFlagsBits = 2777980912;
  v81._object = 0xA400000000000000;
  v88._countAndFlagsBits = 0x53534552444441;
  v88._object = 0xE700000000000000;
  sub_D66D0(v88);
  v89._countAndFlagsBits = 2777980912;
  v89._object = 0xA400000000000000;
  sub_D66D0(v89);
  v58._countAndFlagsBits = 0xE000000000000000;
  v90._countAndFlagsBits = 0x53534552444441;
  v90._object = 0xE700000000000000;
  v91.value._countAndFlagsBits = 0;
  v91.value._object = 0;
  v15.super.isa = v14;
  v16 = sub_D4E80(v90, v91, v15, v81, v58);
  v18 = v17;

  v81._countAndFlagsBits = v16;
  v81._object = v18;
  sub_DFAC();
  v64 = sub_D5F50();
  v63 = v19;
  LOBYTE(v16) = v20;
  v22 = v21;
  v23 = (a1 + v4[8]);
  v24 = *v23;
  v25 = v23[1];
  *&v76 = v24;
  *(&v76 + 1) = v25;
  sub_66D4(&qword_121428, &qword_D90E0);
  sub_D6230();
  object = v81._object;
  countAndFlagsBits = v81._countAndFlagsBits;
  v26 = v82;
  v72 = sub_D63F0();
  v71 = v27;
  LOBYTE(v81._countAndFlagsBits) = v16 & 1;
  v28 = v16 & 1;
  v60 = v16 & 1;
  v29 = a1 + v4[9];
  v30 = *v29;
  v31 = *(v29 + 8);
  v32 = *(v29 + 16);
  _s11descr112E21O9ViewModelCMa();
  sub_527CC(&unk_124718, _s11descr112E21O9ViewModelCMa);
  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  v33 = v77;
  v34 = a1 + v4[7];
  v35 = *v34;
  v36 = *(v34 + 8);
  LOBYTE(v34) = *(v34 + 16);
  *v12 = v76;
  *(v12 + 1) = v33;
  v12[32] = v35;
  *(v12 + 5) = v36;
  v12[48] = v34;
  *(v12 + 7) = 0x2E64756F6C636940;
  *(v12 + 8) = 0xEB000000006D6F63;
  v12[72] = 0;
  *(v12 + 10) = 0;
  *(v12 + 11) = 0xE000000000000000;
  v74 = 0u;
  v73 = 0u;
  type metadata accessor for CGRect(0);

  sub_D6200();
  v37 = v83;
  v38 = v82;
  *(v12 + 6) = v81;
  *(v12 + 7) = v38;
  *(v12 + 16) = v37;
  LOBYTE(v73) = 0;
  sub_D6200();
  v39 = v81._object;
  v12[136] = v81._countAndFlagsBits;
  *(v12 + 18) = v39;
  v40 = &v12[*(type metadata accessor for iCloudMailTextField() + 44)];
  sub_D5ED0();
  v41 = v66;
  sub_52904(a1, v66);
  v42 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v43 = swift_allocObject();
  sub_5296C(v41, v43 + v42);
  v44 = &v12[*(v67 + 44)];
  *v44 = sub_52D3C;
  v44[1] = v43;
  v44[2] = 0;
  v44[3] = 0;
  v45 = v68;
  sub_FBD4(v12, v68, &qword_124820, &qword_DC5B0);
  v46 = v64;
  v47 = v63;
  *&v76 = v64;
  *(&v76 + 1) = v63;
  LOBYTE(v77) = v28;
  *(&v77 + 1) = *v75;
  DWORD1(v77) = *&v75[3];
  v48 = v22;
  *(&v77 + 1) = v22;
  v49 = countAndFlagsBits;
  v50 = object;
  *&v78 = countAndFlagsBits;
  *(&v78 + 1) = object;
  *&v79 = v26;
  *(&v79 + 1) = v72;
  v80 = v71;
  v51 = v76;
  v52 = v77;
  v53 = v78;
  v54 = v79;
  v55 = v65;
  *(v65 + 64) = v71;
  v55[2] = v53;
  v55[3] = v54;
  *v55 = v51;
  v55[1] = v52;
  v56 = v55 + *(sub_66D4(&qword_124828, &qword_DC5B8) + 48);
  sub_FBD4(v45, v56, &qword_124820, &qword_DC5B0);
  sub_FBD4(&v76, &v81, &qword_121438, &qword_D9118);
  sub_FC3C(v12, &qword_124820, &qword_DC5B0);
  sub_FC3C(v45, &qword_124820, &qword_DC5B0);
  v81._countAndFlagsBits = v46;
  v81._object = v47;
  LOBYTE(v82) = v60;
  *(&v82 + 1) = *v75;
  DWORD1(v82) = *&v75[3];
  *(&v82 + 1) = v48;
  v83 = v49;
  v84 = v50;
  v85 = v26;
  v86 = v72;
  v87 = v71;
  return sub_FC3C(&v81, &qword_121438, &qword_D9118);
}

uint64_t sub_4F72C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_4F7AC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

uint64_t sub_4F830(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for MSAddAliasView() + 20));
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = v1[16];
  sub_66D4(&qword_1226F0, &qword_DA770);
  return sub_D56B0();
}

uint64_t sub_4F8AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v68 = sub_66D4(&qword_121440, &qword_D9140);
  v3 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v5 = &v61 - v4;
  v71 = sub_66D4(&qword_121448, &qword_D9148);
  v72 = *(v71 - 8);
  v6 = *(v72 + 64);
  __chkstk_darwin(v71);
  v66 = &v61 - v7;
  v70 = sub_66D4(&qword_121450, &qword_D9150);
  v69 = *(v70 - 8);
  v8 = *(v69 + 64);
  v9 = __chkstk_darwin(v70);
  v67 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v78 = &v61 - v11;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v85._countAndFlagsBits = 2777980912;
  v85._object = 0xA400000000000000;
  v93._countAndFlagsBits = 0x55465F5341494C41;
  v93._object = 0xEE00454D414E4C4CLL;
  sub_D66D0(v93);
  v94._countAndFlagsBits = 2777980912;
  v94._object = 0xA400000000000000;
  sub_D66D0(v94);
  v60._countAndFlagsBits = 0xE000000000000000;
  v95._countAndFlagsBits = 0x55465F5341494C41;
  v95._object = 0xEE00454D414E4C4CLL;
  v96.value._countAndFlagsBits = 0;
  v96.value._object = 0;
  v14.super.isa = v13;
  v15 = sub_D4E80(v95, v96, v14, v85, v60);
  v17 = v16;

  v85._countAndFlagsBits = v15;
  v85._object = v17;
  sub_DFAC();
  v64 = sub_D5F50();
  v63 = v18;
  LOBYTE(v15) = v19;
  v65 = v20;
  v21 = type metadata accessor for MSAddAliasView();
  v22 = (a1 + *(v21 + 24));
  v23 = *v22;
  v24 = v22[1];
  *&v80 = v23;
  *(&v80 + 1) = v24;
  sub_66D4(&qword_121428, &qword_D90E0);
  sub_D6230();
  countAndFlagsBits = v85._countAndFlagsBits;
  object = v85._object;
  v25 = v86;
  v76 = sub_D63F0();
  v74 = v26;
  v75 = v15 & 1;
  LOBYTE(v85._countAndFlagsBits) = v15 & 1;
  v27 = (a1 + *(v21 + 28));
  v28 = *v27;
  v29 = v27[1];
  v30 = *(v27 + 16);
  _s11descr112E21O9ViewModelCMa();
  sub_527CC(&unk_124718, _s11descr112E21O9ViewModelCMa);
  v31 = sub_D5740();
  v32 = *(v31 + OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel_placeholderName);
  v33 = *(v31 + OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel_placeholderName + 8);

  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  *&v80 = v32;
  *(&v80 + 1) = v33;
  sub_D6410();
  KeyPath = swift_getKeyPath();
  v35 = sub_D65F0();
  v36 = v68;
  v37 = &v5[*(v68 + 36)];
  *v37 = KeyPath;
  v37[1] = v35;
  v37[2] = v38;
  v39 = sub_FDA8();
  v40 = v66;
  sub_D6050();
  sub_FC3C(v5, &qword_121440, &qword_D9140);
  v85._countAndFlagsBits = v36;
  v85._object = v39;
  swift_getOpaqueTypeConformance2();
  v41 = v78;
  v42 = v71;
  sub_D6080();
  (*(v72 + 8))(v40, v42);
  v43 = v69;
  v44 = *(v69 + 16);
  v45 = v67;
  v46 = v70;
  v44(v67, v41, v70);
  v47 = v64;
  v48 = v63;
  *&v80 = v64;
  *(&v80 + 1) = v63;
  LOBYTE(v81) = v75;
  *(&v81 + 1) = *v79;
  DWORD1(v81) = *&v79[3];
  v49 = v65;
  v50 = countAndFlagsBits;
  *(&v81 + 1) = v65;
  *&v82 = countAndFlagsBits;
  *(&v82 + 1) = object;
  *&v83 = v25;
  *(&v83 + 1) = v76;
  v84 = v74;
  v51 = v80;
  v52 = v81;
  v53 = v82;
  v54 = v83;
  v55 = v73;
  *(v73 + 64) = v74;
  *(v55 + 2) = v53;
  *(v55 + 3) = v54;
  *v55 = v51;
  *(v55 + 1) = v52;
  v56 = v55;
  v57 = sub_66D4(&qword_121478, &qword_D91B8);
  v44(&v56[*(v57 + 48)], v45, v46);
  sub_FBD4(&v80, &v85, &qword_121438, &qword_D9118);
  v58 = *(v43 + 8);
  v58(v78, v46);
  v58(v45, v46);
  v85._countAndFlagsBits = v47;
  v85._object = v48;
  LOBYTE(v86) = v75;
  *(&v86 + 1) = *v79;
  HIDWORD(v86) = *&v79[3];
  v87 = v49;
  v88 = v50;
  v89 = object;
  v90 = v25;
  v91 = v76;
  v92 = v74;
  return sub_FC3C(&v85, &qword_121438, &qword_D9118);
}

uint64_t sub_4FFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = sub_66D4(&qword_121420, &qword_DA840);
  v58 = *(v59 - 8);
  v4 = *(v58 + 64);
  v5 = __chkstk_darwin(v59);
  v57 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v64 = &v53 - v7;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = objc_opt_self();
  v10 = [v9 bundleForClass:ObjCClassFromMetadata];
  v71._countAndFlagsBits = 2777980912;
  v71._object = 0xA400000000000000;
  v79._countAndFlagsBits = 0x4C4542414CLL;
  v79._object = 0xE500000000000000;
  sub_D66D0(v79);
  v80._countAndFlagsBits = 2777980912;
  v80._object = 0xA400000000000000;
  sub_D66D0(v80);
  v51._countAndFlagsBits = 0xE000000000000000;
  v81._countAndFlagsBits = 0x4C4542414CLL;
  v81._object = 0xE500000000000000;
  v85.value._countAndFlagsBits = 0;
  v85.value._object = 0;
  v11.super.isa = v10;
  v12 = sub_D4E80(v81, v85, v11, v71, v51);
  v14 = v13;

  v71._countAndFlagsBits = v12;
  v71._object = v14;
  sub_DFAC();
  v55 = sub_D5F50();
  v16 = v15;
  v18 = v17;
  v56 = v19;
  v20 = type metadata accessor for MSAddAliasView();
  v21 = (a1 + *(v20 + 24));
  v22 = *v21;
  v23 = v21[1];
  *&v66 = v22;
  *(&v66 + 1) = v23;
  sub_66D4(&qword_121428, &qword_D90E0);
  sub_D6230();
  countAndFlagsBits = v71._countAndFlagsBits;
  object = v71._object;
  v24 = v72;
  v62 = sub_D63F0();
  v60 = v25;
  v61 = v18 & 1;
  LOBYTE(v71._countAndFlagsBits) = v18 & 1;
  v26 = [v9 bundleForClass:ObjCClassFromMetadata];
  v71._countAndFlagsBits = 2777980912;
  v71._object = 0xA400000000000000;
  v82._countAndFlagsBits = 0x4C414E4F4954504FLL;
  v82._object = 0xE800000000000000;
  sub_D66D0(v82);
  v83._countAndFlagsBits = 2777980912;
  v83._object = 0xA400000000000000;
  sub_D66D0(v83);
  v52._countAndFlagsBits = 0xE000000000000000;
  v84._countAndFlagsBits = 0x4C414E4F4954504FLL;
  v84._object = 0xE800000000000000;
  v86.value._countAndFlagsBits = 0;
  v86.value._object = 0;
  v27.super.isa = v26;
  v28 = sub_D4E80(v84, v86, v27, v71, v52);
  v30 = v29;

  v31 = (a1 + *(v20 + 28));
  v32 = *v31;
  v33 = v31[1];
  v34 = *(v31 + 16);
  _s11descr112E21O9ViewModelCMa();
  sub_527CC(&unk_124718, _s11descr112E21O9ViewModelCMa);
  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  *&v66 = v28;
  *(&v66 + 1) = v30;
  v35 = v64;
  sub_D6410();
  v36 = v58;
  v37 = *(v58 + 16);
  v38 = v57;
  v39 = v35;
  v40 = v59;
  v37(v57, v39, v59);
  v41 = v55;
  *&v66 = v55;
  *(&v66 + 1) = v16;
  LOBYTE(v67) = v61;
  *(&v67 + 1) = *v65;
  DWORD1(v67) = *&v65[3];
  v42 = v56;
  v43 = countAndFlagsBits;
  *(&v67 + 1) = v56;
  *&v68 = countAndFlagsBits;
  *(&v68 + 1) = object;
  *&v69 = v24;
  *(&v69 + 1) = v62;
  v70 = v60;
  v44 = v66;
  v45 = v67;
  v46 = v68;
  v47 = v69;
  *(a2 + 64) = v60;
  *(a2 + 32) = v46;
  *(a2 + 48) = v47;
  *a2 = v44;
  *(a2 + 16) = v45;
  v48 = sub_66D4(&qword_121430, &qword_D9110);
  v37((a2 + *(v48 + 48)), v38, v40);
  sub_FBD4(&v66, &v71, &qword_121438, &qword_D9118);
  v49 = *(v36 + 8);
  v49(v64, v40);
  v49(v38, v40);
  v71._countAndFlagsBits = v41;
  v71._object = v16;
  LOBYTE(v72) = v61;
  *(&v72 + 1) = *v65;
  HIDWORD(v72) = *&v65[3];
  v73 = v42;
  v74 = v43;
  v75 = object;
  v76 = v24;
  v77 = v62;
  v78 = v60;
  return sub_FC3C(&v71, &qword_121438, &qword_D9118);
}

uint64_t sub_505BC()
{
  v0 = sub_D5340();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v5 = sub_6610(v0, qword_137988);
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_D5320();
  v7 = sub_D68A0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "[Add Alias] page viewed", v8, 2u);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_50748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = sub_66D4(&qword_1247C8, &qword_DC3C0);
  v3 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v21 = &v21 - v4;
  v22 = sub_66D4(&qword_1247D0, &qword_DC3C8);
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v22);
  v8 = &v21 - v7;
  v9 = sub_D5C80();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_66D4(&qword_1247D8, &unk_DC3D0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v21 - v14;
  sub_D5C60();
  v26 = a1;
  sub_66D4(&qword_1247E0, &unk_E2C60);
  sub_52748(&qword_1247E8, &qword_1247E0, &unk_E2C60, sub_52658);
  sub_D5920();
  sub_D5C70();
  v25 = a1;
  sub_66D4(&qword_121220, &unk_E0EB0);
  sub_E8DC();
  sub_D5920();
  v16 = *(v23 + 48);
  v17 = v21;
  (*(v12 + 16))(v21, v15, v11);
  v18 = &v17[v16];
  v19 = v22;
  (*(v5 + 16))(v18, v8, v22);
  sub_D5BC0();
  (*(v5 + 8))(v8, v19);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_50A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v41 = sub_66D4(&qword_121280, &unk_D8E40);
  v3 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v5 = &v40 - v4;
  v40 = sub_66D4(&qword_124800, &qword_DC4F8);
  v6 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v8 = &v40 - v7;
  v9 = type metadata accessor for MSAddAliasView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_66D4(&qword_1247F8, &qword_DC3E0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v40 - v15;
  v17 = *(a1 + *(v9 + 36));
  sub_52904(a1, v12);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  sub_5296C(v12, v19 + v18);
  if (v17 == 1)
  {
    sub_D5190();
    v20 = a1 + *(v9 + 28);
    v21 = *v20;
    v22 = *(v20 + 8);
    v23 = *(v20 + 16);
    _s11descr112E21O9ViewModelCMa();
    sub_527CC(&unk_124718, _s11descr112E21O9ViewModelCMa);
    sub_D5740();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    v24 = v43;
    KeyPath = swift_getKeyPath();
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    v27 = &v16[*(v13 + 36)];
    *v27 = KeyPath;
    v27[1] = sub_10ACC;
    v27[2] = v26;
    v28 = &qword_1247F8;
    v29 = &qword_DC3E0;
    sub_FBD4(v16, v8, &qword_1247F8, &qword_DC3E0);
    swift_storeEnumTagMultiPayload();
    sub_52658();
    sub_EB50();
    sub_D5BF0();
    v30 = v16;
  }

  else
  {
    sub_D6260();
    v31 = a1 + *(v9 + 28);
    v32 = *v31;
    v33 = *(v31 + 8);
    v34 = *(v31 + 16);
    _s11descr112E21O9ViewModelCMa();
    sub_527CC(&unk_124718, _s11descr112E21O9ViewModelCMa);
    sub_D5740();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    v35 = v44;
    v36 = swift_getKeyPath();
    v37 = swift_allocObject();
    *(v37 + 16) = v35;
    v38 = &v5[*(v41 + 36)];
    *v38 = v36;
    v38[1] = sub_10ACC;
    v38[2] = v37;
    v28 = &qword_121280;
    v29 = &unk_D8E40;
    sub_FBD4(v5, v8, &qword_121280, &unk_D8E40);
    swift_storeEnumTagMultiPayload();
    sub_52658();
    sub_EB50();
    sub_D5BF0();
    v30 = v5;
  }

  return sub_FC3C(v30, v28, v29);
}
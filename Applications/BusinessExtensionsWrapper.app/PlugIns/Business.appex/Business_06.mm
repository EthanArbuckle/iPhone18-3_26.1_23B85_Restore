unint64_t sub_1000891E4()
{
  result = qword_1000F31E0;
  if (!qword_1000F31E0)
  {
    sub_1000041E8(&qword_1000F31D8, &qword_1000B4B28);
    sub_100089268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F31E0);
  }

  return result;
}

unint64_t sub_100089268()
{
  result = qword_1000F31E8;
  if (!qword_1000F31E8)
  {
    sub_1000041E8(&qword_1000F31F0, &qword_1000B4B30);
    sub_10002C5BC(&qword_1000F31F8, &qword_1000F3200, &qword_1000B4B38);
    sub_10002C5BC(&qword_1000F3208, &qword_1000F3210, &qword_1000B4B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F31E8);
  }

  return result;
}

uint64_t sub_10008939C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1000893B4()
{
  result = qword_1000F3228;
  if (!qword_1000F3228)
  {
    type metadata accessor for NotificationOptionsMacCatalystView.ViewModel.Option(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F3228);
  }

  return result;
}

double sub_100089424@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000ABC2C();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_1000894A4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1000896C0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  if (v3)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v5;
  }

  sub_10002A1E0(v3);

  return sub_1000ABC3C();
}

uint64_t sub_1000895B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000ABCDC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100089688()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000896C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_1000896EC()
{
  result = qword_1000F3248;
  if (!qword_1000F3248)
  {
    sub_1000041E8(&qword_1000F3218, &qword_1000B4B48);
    sub_10002C5BC(&qword_1000F3250, &qword_1000F31D0, &qword_1000B4B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F3248);
  }

  return result;
}

uint64_t sub_1000897B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&qword_1000F0228, &qword_1000B1528);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100089828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000413C(&qword_1000F0228, &qword_1000B1528);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_1000898D0(uint64_t a1)
{
  sub_1000899A8();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = sub_1000AB6EC();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      v7 = *(v5 - 8);
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v9;
    }
  }

  return v3;
}

void sub_1000899A8()
{
  if (!qword_1000F32D8)
  {
    sub_1000041E8(&qword_1000F1DD0, &unk_1000B07A0);
    sub_1000AB6EC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000F32D8);
    }
  }
}

id sub_100089A28()
{
  v1 = v0;
  v2 = type metadata accessor for Request(0);
  v3 = *(v2 + 20);
  v4 = objc_allocWithZone(NSMutableURLRequest);
  sub_1000AB67C(v5);
  v7 = v6;
  v8 = [v4 initWithURL:v6];

  *v1;
  *v1;
  v9 = sub_1000AC02C();

  [v8 setHTTPMethod:v9];

  v10 = sub_1000AC02C();
  v11 = sub_1000AC02C();
  [v8 setValue:v10 forHTTPHeaderField:v11];

  v12 = sub_1000AC02C();
  v13 = sub_1000AC02C();
  [v8 setValue:v12 forHTTPHeaderField:v13];

  v14 = objc_opt_self();
  v15 = *&v1[*(v2 + 24)];
  isa = sub_1000ABFAC().super.isa;
  v39 = 0;
  v17 = [v14 dataWithJSONObject:isa options:0 error:&v39];

  v18 = v39;
  if (v17)
  {
    v19 = sub_1000AB73C();
    v21 = v20;

    v22 = sub_1000AB72C().super.isa;
    sub_10000E964(v19, v21);
    [v8 setHTTPBody:v22];

    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC28C();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1000AF0E0;
    v24 = [v8 HTTPBody];
    if (v24)
    {
      v25 = v24;
      v26 = sub_1000AB73C();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0xF000000000000000;
    }

    v39 = v26;
    v40 = v28;
    sub_10000413C(&qword_1000F07A8, &qword_1000B1AE0);
    v35 = sub_1000AC0CC();
    v37 = v36;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = sub_10000587C();
    *(v23 + 32) = v35;
    *(v23 + 40) = v37;
    sub_1000ABA5C();
  }

  else
  {
    v29 = v18;
    sub_1000AB63C();

    swift_willThrow();
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2AC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1000AF0E0;
    swift_getErrorValue();
    v39 = sub_1000AC7FC();
    v40 = v31;
    v32 = sub_1000AC14C();
    v34 = v33;
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = sub_10000587C();
    *(v30 + 32) = v32;
    *(v30 + 40) = v34;
    sub_1000ABA5C();

    return 0;
  }

  return v8;
}

Swift::Int sub_100089F3C()
{
  v1 = *v0;
  sub_1000AC87C();
  sub_1000AC11C();

  return sub_1000AC8CC();
}

uint64_t sub_100089FE4()
{
  *v0;
  *v0;
  *v0;
  sub_1000AC11C();
}

Swift::Int sub_10008A078()
{
  v1 = *v0;
  sub_1000AC87C();
  sub_1000AC11C();

  return sub_1000AC8CC();
}

uint64_t sub_10008A11C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008A4B4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10008A14C(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 5522759;
  v4 = 0xE300000000000000;
  v5 = 5526864;
  if (*v1 != 2)
  {
    v5 = 0x4554454C4544;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 1414745936;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_10008A1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000AB6EC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10008A298(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000AB6EC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_10008A354()
{
  sub_1000AB6EC();
  if (v0 <= 0x3F)
  {
    sub_10008A3E8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10008A3E8()
{
  if (!qword_1000F3368)
  {
    v0 = sub_1000ABFEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000F3368);
    }
  }
}

unint64_t sub_10008A460()
{
  result = qword_1000F33A0;
  if (!qword_1000F33A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F33A0);
  }

  return result;
}

uint64_t sub_10008A4B4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000DA7D8;
  v6._object = a2;
  v4 = sub_1000AC6AC(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10008A500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + 16) = xmmword_1000B4DD0;
  *(v4 + 32) = 0xA600000000000000;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0xE000000000000000;
  *(v4 + 56) = [objc_allocWithZone(NSAttributedString) init];
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0xE000000000000000;
  *(v4 + 96) = 0;
  v8 = *(v4 + 16);
  *(v4 + 16) = a1;

  if (!a3)
  {
    type metadata accessor for IMBApplePayViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v11 = sub_1000AC02C();
    v12 = sub_1000AC02C();
    v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

    a2 = sub_1000AC06C();
    a3 = v14;
  }

  v15 = *(v4 + 48);
  *(v4 + 40) = a2;
  *(v4 + 48) = a3;

  if (a1 && (*(a1 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState + 8) & 1) == 0)
  {
    v25 = *(a1 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState);
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1000AF0E0;
    v27 = sub_10005FCE8(v25);
    v29 = v28;
    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = sub_10000587C();
    *(v26 + 32) = v27;
    *(v26 + 40) = v29;
    sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
    v30 = sub_1000AC3FC();
    sub_1000AC2BC();
    sub_1000ABA5C();

    sub_10008A804(v25);
  }

  else
  {
    type metadata accessor for IMBApplePayViewModel();
    v16 = swift_getObjCClassFromMetadata();
    v17 = [objc_opt_self() bundleForClass:v16];
    v18 = sub_1000AC02C();
    v19 = sub_1000AC02C();
    v20 = [v17 localizedStringForKey:v18 value:v19 table:0];

    v21 = sub_1000AC06C();
    v23 = v22;

    v24 = *(v4 + 48);
    *(v4 + 40) = v21;
    *(v4 + 48) = v23;
  }

  return v4;
}

void sub_10008A804(uint64_t a1)
{
  v3 = v1[9];
  v1[8] = 0;
  v1[9] = 0;

  v4 = sub_10008B1B8();
  if (v5)
  {
    if (a1 <= 3)
    {
      if (a1 > 1)
      {
        if (a1 != 2)
        {

          v23 = sub_10008B730();
          goto LABEL_24;
        }

        v6 = sub_10008AFD8();
        goto LABEL_13;
      }

      if (a1)
      {
        if (a1 == 1)
        {

          v6 = sub_10008C140();
LABEL_13:
          v23 = v8;
          v24 = v1[6];
          v1[5] = v6;
          v1[6] = v7;

LABEL_24:
          v43 = v1[7];
          v1[7] = v23;

          sub_10000413C(&qword_1000F0060, &unk_1000B0470);
          v44 = swift_allocObject();
          *(v44 + 16) = xmmword_1000AF0F0;
          v46 = v1[5];
          v45 = v1[6];
          *(v44 + 56) = &type metadata for String;
          v47 = sub_10000587C();
          *(v44 + 64) = v47;
          *(v44 + 32) = v46;
          *(v44 + 40) = v45;
          v48 = v1[7];

          v49 = [v48 debugDescription];
          v50 = sub_1000AC06C();
          v52 = v51;

          *(v44 + 96) = &type metadata for String;
          *(v44 + 104) = v47;
          *(v44 + 72) = v50;
          *(v44 + 80) = v52;
          sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
          v53 = sub_1000AC3FC();
          sub_1000AC2BC();
          sub_1000ABA5C();

          v14 = v53;
          goto LABEL_25;
        }

LABEL_28:
        sub_1000AC63C();
        __break(1u);
        return;
      }

LABEL_17:

      v28 = sub_10008B468();
      if (v28)
      {
LABEL_19:
        v23 = v28;
        goto LABEL_24;
      }

LABEL_18:
      v28 = [objc_allocWithZone(NSAttributedString) init];
      goto LABEL_19;
    }

    if (a1 > 5)
    {
      if (a1 == 6)
      {

        sub_10008B1B8();
        if (v25)
        {
          v26 = objc_allocWithZone(NSAttributedString);
          v27 = sub_1000AC02C();

          v23 = [v26 initWithString:v27];

          goto LABEL_24;
        }

        goto LABEL_18;
      }

      if (a1 != 7)
      {
        goto LABEL_28;
      }

      v29 = v4;
      v30 = v5;
      type metadata accessor for IMBApplePayViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v32 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v33 = sub_1000AC02C();
      v34 = sub_1000AC02C();
      v35 = [v32 localizedStringForKey:v33 value:v34 table:0];

      sub_1000AC06C();
      sub_10000413C(&qword_1000F0060, &unk_1000B0470);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1000AF0E0;
      *(v36 + 56) = &type metadata for String;
      *(v36 + 64) = sub_10000587C();
      *(v36 + 32) = v29;
      *(v36 + 40) = v30;
    }

    else
    {
      if (a1 != 4)
      {
        goto LABEL_17;
      }

      v15 = v5;
      v16 = v4;
      type metadata accessor for IMBApplePayViewModel();
      v17 = swift_getObjCClassFromMetadata();
      v18 = [objc_opt_self() bundleForClass:v17];
      v19 = sub_1000AC02C();
      v20 = sub_1000AC02C();
      v21 = [v18 localizedStringForKey:v19 value:v20 table:0];

      sub_1000AC06C();
      sub_10000413C(&qword_1000F0060, &unk_1000B0470);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1000AF0E0;
      *(v22 + 56) = &type metadata for String;
      *(v22 + 64) = sub_10000587C();
      *(v22 + 32) = v16;
      *(v22 + 40) = v15;
    }

    v37 = sub_1000AC03C();
    v39 = v38;

    v40 = v1[11];
    v1[10] = v37;
    v1[11] = v39;

    v41 = objc_allocWithZone(NSAttributedString);
    v42 = sub_1000AC02C();

    v23 = [v41 initWithString:v42];

    goto LABEL_24;
  }

  v9 = sub_10008C140();
  v11 = v10;
  v12 = v1[6];
  v1[5] = v9;
  v1[6] = v13;

  v14 = v1[7];
  v1[7] = v11;
LABEL_25:
}

uint64_t sub_10008AD70()
{
  v1 = v0;
  v2 = sub_10000413C(&qword_1000F0270, &unk_1000B0480);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v28 - v5;
  v7 = sub_1000AB7EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v7, v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = &v28 - v15;
  v17 = v0[2];
  if (v17)
  {
    v18 = v0[2];

    if (sub_10000A744())
    {
      v19 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_merchantSessionExpireDate;
      swift_beginAccess();
      sub_10008C0D0(v17 + v19, v6);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        sub_10004D744(v6);
      }

      else
      {
        (*(v8 + 32))(v16, v6, v7);
        sub_1000AB7DC();
        v20 = sub_1000AB78C();
        v21 = *(v8 + 8);
        v21(v13, v7);
        v21(v16, v7);
        if (v20)
        {
          v22 = 2;
LABEL_10:
          sub_10008A804(v22);

          goto LABEL_11;
        }
      }

      v22 = 1;
      goto LABEL_10;
    }
  }

  sub_10008A804(1);
LABEL_11:
  v23 = v1[5];
  v24 = v1[6];
  v25 = v1[7];

  v26 = v25;
  return v23;
}

uint64_t sub_10008AFD8()
{
  v1 = sub_10008B1B8();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    type metadata accessor for IMBApplePayViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v7 = sub_1000AC02C();
    v8 = sub_1000AC02C();
    v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

    sub_1000AC06C();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000AF0E0;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_10000587C();
    *(v10 + 32) = v3;
    *(v10 + 40) = v4;
    sub_1000AC03C();

    v11 = objc_allocWithZone(NSAttributedString);
    v12 = sub_1000AC02C();

    v13 = [v11 initWithString:v12];

    v14 = v0[7];
    v0[7] = v13;
  }

  v15 = v0[5];
  v16 = v0[6];
  v17 = v0[7];

  v18 = v17;
  return v15;
}

unint64_t sub_10008B1B8()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
  if (v2)
  {
    v3 = *(v0 + 16);

    v4 = [v2 paymentSummaryItems];
    sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
    v5 = sub_1000AC19C();

    if (!(v5 >> 62))
    {
      goto LABEL_4;
    }
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_4:
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_5;
      }

      goto LABEL_21;
    }
  }

  v6 = sub_1000AC65C();
  if (!v6)
  {
LABEL_21:

    return 0;
  }

LABEL_5:
  v7 = __OFSUB__(v6, 1);
  result = v6 - 1;
  if (v7)
  {
    __break(1u);
    goto LABEL_26;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
LABEL_26:
    v9 = sub_1000AC5AC();
LABEL_10:
    v10 = v9;

    v11 = [v10 amount];

    if (v11)
    {
      v12 = *(v0 + 16);
      if (v12 && (v13 = *(v12 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest)) != 0)
      {
        v14 = [v13 currencyCode];
        if (!v14)
        {
          sub_1000AC06C();
          v14 = sub_1000AC02C();
        }

        v15 = v11;
        [v15 floatValue];
        v17 = roundf(v16);
        [v15 floatValue];
        v19 = v18;

        v20 = [objc_allocWithZone(NSNumberFormatter) init];
        v21 = v20;
        if (v17 == v19)
        {
          [v20 setMinimumFractionDigits:0];
          [v21 setMaximumFractionDigits:0];
        }

        [v21 setCurrencyCode:v14];

        [v21 setNumberStyle:10];
        v22 = [v21 stringFromNumber:v15];
        if (v22)
        {
          v23 = v22;
          v24 = sub_1000AC06C();

          return v24;
        }
      }

      else
      {
      }
    }

    return 0;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v5 + 8 * result + 32);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

id sub_10008B468()
{
  v1 = sub_10008B1B8();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = v1;
  v28 = v1;
  type metadata accessor for IMBApplePayViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass:ObjCClassFromMetadata];
  v7 = sub_1000AC02C();
  v8 = sub_1000AC02C();
  v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

  sub_1000AC06C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000AF0E0;
  *(v10 + 56) = &type metadata for String;
  v11 = sub_10000587C();
  *(v10 + 64) = v11;
  *(v10 + 32) = v4;
  *(v10 + 40) = v3;

  v12 = sub_1000AC03C();
  v14 = v13;

  v15 = v0[9];
  v0[8] = v12;
  v0[9] = v14;

  v16 = [v5 bundleForClass:ObjCClassFromMetadata];
  v17 = sub_1000AC02C();
  v18 = sub_1000AC02C();
  v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

  sub_1000AC06C();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000AF0F0;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = v11;
  *(v20 + 32) = v28;
  *(v20 + 40) = v3;
  v22 = v0[3];
  v21 = v0[4];
  *(v20 + 96) = &type metadata for String;
  *(v20 + 104) = v11;
  *(v20 + 72) = v22;
  *(v20 + 80) = v21;

  v23 = sub_1000AC03C();
  v25 = v24;

  v26 = sub_10008BA24(v23, v25);

  return v26;
}

id sub_10008B730()
{
  v1 = sub_10008B1B8();
  if (v2)
  {
    v3 = v2;
    v4 = v1;
    v29 = v1;
    type metadata accessor for IMBApplePayViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = objc_opt_self();
    v6 = [v5 bundleForClass:ObjCClassFromMetadata];
    v7 = sub_1000AC02C();
    v8 = sub_1000AC02C();
    v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

    sub_1000AC06C();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000AF0E0;
    *(v10 + 56) = &type metadata for String;
    v11 = sub_10000587C();
    *(v10 + 64) = v11;
    *(v10 + 32) = v4;
    *(v10 + 40) = v3;

    v12 = sub_1000AC03C();
    v14 = v13;

    v15 = v0[9];
    v0[8] = v12;
    v0[9] = v14;

    v16 = [v5 bundleForClass:ObjCClassFromMetadata];
    v17 = sub_1000AC02C();
    v18 = sub_1000AC02C();
    v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

    sub_1000AC06C();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1000AF0F0;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = v11;
    *(v20 + 32) = v29;
    *(v20 + 40) = v3;
    v22 = v0[3];
    v21 = v0[4];
    *(v20 + 96) = &type metadata for String;
    *(v20 + 104) = v11;
    *(v20 + 72) = v22;
    *(v20 + 80) = v21;

    v23 = sub_1000AC03C();
    v25 = v24;

    v26 = sub_10008BA24(v23, v25);

    return v26;
  }

  else
  {
    v28 = v0[7];

    return v28;
  }
}

id sub_10008BA24(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 88);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;

  result = UIApp;
  if (UIApp)
  {
    v5 = [UIApp preferredContentSizeCategory];
    IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

    if (IsAccessibilityContentSizeCategory)
    {
      v7 = sub_1000AC02C();
      v8 = sub_1000AC02C();
      v9 = sub_1000AC02C();
      v10 = [v7 stringByReplacingOccurrencesOfString:v8 withString:v9];

      v11 = sub_1000AC06C();
      v13 = v12;

      v14 = *(v2 + 88);
      *(v2 + 80) = v11;
      *(v2 + 88) = v13;
    }

    v15 = *(v2 + 80);
    v16 = *(v2 + 88);
    v17 = objc_allocWithZone(NSAttributedString);

    v18 = sub_1000AC02C();

    v19 = [v17 initWithString:v18];

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10008BB80()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  return v0;
}

uint64_t sub_10008BBD0()
{
  sub_10008BB80();

  return swift_deallocClassInstance();
}

void sub_10008BC28(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  [v8 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  v22.receiver = v8;
  v22.super_class = type metadata accessor for WinterpegTextAttachment();
  objc_msgSendSuper2(&v22, "attachmentBoundsForTextContainer:proposedLineFragment:glyphPosition:characterIndex:", a1, a2, a3, a4, a5, a6, a7, a8);
  v17 = [v8 image];
  if (!v17)
  {
    goto LABEL_4;
  }

  v18 = v17;
  if (UIApp)
  {
    v19 = [UIApp preferredContentSizeCategory];
    v20 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v19];

    _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();
    [v18 size];
    [v18 size];

LABEL_4:
    v21 = *&v8[OBJC_IVAR____TtC8BusinessP33_F1257CEC6FBB055D52A44E01318C013B23WinterpegTextAttachment_fontDescender];
    return;
  }

  __break(1u);
}

id sub_10008BE78(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  isa = 0;
  *&v4[OBJC_IVAR____TtC8BusinessP33_F1257CEC6FBB055D52A44E01318C013B23WinterpegTextAttachment_fontDescender] = 0;
  if (a2 >> 60 != 15)
  {
    isa = sub_1000AB72C().super.isa;
  }

  if (a4)
  {
    v9 = sub_1000AC02C();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v4;
  v12.super_class = type metadata accessor for WinterpegTextAttachment();
  v10 = objc_msgSendSuper2(&v12, "initWithData:ofType:", isa, v9);
  sub_10000E950(a1, a2);

  return v10;
}

id sub_10008C074()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WinterpegTextAttachment();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10008C0D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&qword_1000F0270, &unk_1000B0480);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008C140()
{
  type metadata accessor for IMBApplePayViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = sub_1000AC02C();
  v3 = sub_1000AC02C();
  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  v5 = sub_1000AC06C();
  [objc_allocWithZone(NSAttributedString) init];
  return v5;
}

void sub_10008C238(uint64_t *a1@<X8>)
{
  type metadata accessor for IMBApplePayViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass:ObjCClassFromMetadata];
  v5 = sub_1000AC02C();
  v6 = sub_1000AC02C();
  v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

  v24 = sub_1000AC06C();
  v9 = v8;

  v10 = [v3 bundleForClass:ObjCClassFromMetadata];
  v11 = sub_1000AC02C();
  v12 = sub_1000AC02C();
  v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

  v14 = sub_1000AC06C();
  v16 = v15;

  v17 = [v3 bundleForClass:ObjCClassFromMetadata];
  v18 = sub_1000AC02C();
  v19 = sub_1000AC02C();
  v20 = [v17 localizedStringForKey:v18 value:v19 table:0];

  v21 = sub_1000AC06C();
  v23 = v22;

  *a1 = v24;
  a1[1] = v9;
  a1[2] = v14;
  a1[3] = v16;
  a1[4] = v21;
  a1[5] = v23;
}

void sub_10008C45C()
{
  sub_10008C238(v11);
  v0 = v11[0];
  v1 = v11[1];
  v2 = v11[2];
  v3 = v11[3];
  v4 = v11[4];
  v5 = v11[5];
  sub_10000413C(&qword_1000F3590, "м");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000B0620;
  *(inited + 32) = kCFUserNotificationAlertHeaderKey;
  *(inited + 40) = v0;
  *(inited + 48) = v1;
  *(inited + 56) = kCFUserNotificationAlertMessageKey;
  *(inited + 64) = v2;
  *(inited + 72) = v3;
  *(inited + 80) = kCFUserNotificationDefaultButtonTitleKey;
  *(inited + 88) = v4;
  *(inited + 96) = v5;
  v7 = kCFUserNotificationDefaultButtonTitleKey;
  v8 = kCFUserNotificationAlertHeaderKey;
  v9 = kCFUserNotificationAlertMessageKey;
  sub_10005009C(inited);
  swift_setDeallocating();
  sub_10000413C(&qword_1000F3598, &qword_1000B4E60);
  swift_arrayDestroy();
  LODWORD(v11[0]) = -1;
  sub_10000413C(&qword_1000F35A0, &qword_1000B4E68);
  sub_10008C600();
  isa = sub_1000ABFAC().super.isa;
}

unint64_t sub_10008C600()
{
  result = qword_1000F35A8;
  if (!qword_1000F35A8)
  {
    sub_1000041E8(&qword_1000F35A0, &qword_1000B4E68);
    sub_10008C684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F35A8);
  }

  return result;
}

unint64_t sub_10008C684()
{
  result = qword_1000EF128;
  if (!qword_1000EF128)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF128);
  }

  return result;
}

id sub_10008C6EC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8Business23IMBDefaultSectionHeader_headerLabel;
  *&v2[v4] = [objc_allocWithZone(UILabel) init];
  *&v2[OBJC_IVAR____TtC8Business23IMBDefaultSectionHeader____lazy_storage___separatorView] = 0;
  if (a2)
  {
    v5 = sub_1000AC02C();
  }

  else
  {
    v5 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for IMBDefaultSectionHeader();
  v6 = objc_msgSendSuper2(&v9, "initWithReuseIdentifier:", v5);

  v7 = v6;
  sub_10008C880();
  sub_10008CC70();

  return v7;
}

void sub_10008C880()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business23IMBDefaultSectionHeader_headerLabel];
  if (sub_10002CE60() >= 2u)
  {
    v3 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline];
    sub_10000413C(&qword_1000EF8B0, &unk_1000B4000);
    inited = swift_initStackObject();
    v19 = xmmword_1000AF0E0;
    *(inited + 16) = xmmword_1000AF0E0;
    *(inited + 32) = UIFontDescriptorTraitsAttribute;
    sub_10000413C(&qword_1000EF8B8, &qword_1000B0600);
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_1000AF0E0;
    *(v5 + 32) = UIFontWeightTrait;
    *(v5 + 40) = UIFontWeightSemibold;
    v6 = UIFontDescriptorTraitsAttribute;
    v7 = UIFontWeightTrait;
    v8 = sub_10004FA58(v5);
    swift_setDeallocating();
    sub_10000E784(v5 + 32, &qword_1000EF8C0, &qword_1000B0608);
    *(inited + 64) = sub_10000413C(&qword_1000EF8C8, &unk_1000B0610);
    *(inited + 40) = v8;
    sub_10004FB48(inited);
    swift_setDeallocating();
    sub_10000E784(inited + 32, &qword_1000EF8D0, qword_1000B4010);
    type metadata accessor for AttributeName(0);
    sub_100013968();
    isa = sub_1000ABFAC().super.isa;

    v10 = [v3 fontDescriptorByAddingAttributes:isa];

    v11 = [objc_opt_self() fontWithDescriptor:v10 size:11.0];
    v12 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleSubheadline];
    v2 = [v12 scaledFontForFont:v11];
  }

  else
  {
    v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  }

  [v1 setFont:{v2, v19}];

  v13 = objc_opt_self();
  v14 = [v13 secondaryLabelColor];
  [v1 setTextColor:v14];

  [v1 setNumberOfLines:0];
  v15 = [v0 contentView];
  if (sub_10002CE60() >= 2u)
  {
    if (qword_1000EEDC0 != -1)
    {
      swift_once();
    }

    v16 = qword_1000FBEF0;
  }

  else
  {
    v16 = [v13 systemGroupedBackgroundColor];
  }

  v17 = v16;
  [v15 setBackgroundColor:v16];

  [v0 addSubview:v1];
  v18 = sub_10008D2BC();
  [v0 addSubview:v18];
}

void sub_10008CC70()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business23IMBDefaultSectionHeader_headerLabel];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v1 topAnchor];
  v3 = [v0 topAnchor];
  v4 = sub_10002CE60();
  v5 = 12.0;
  if ((v4 & 0xFE) == 0)
  {
    v5 = 30.0;
  }

  v6 = [v2 constraintEqualToAnchor:v3 constant:v5];

  [v6 setActive:1];
  if (sub_10002CE60() == 2)
  {
    v7 = [v1 leadingAnchor];
    v8 = [v0 leadingAnchor];
    v9 = 0.0;
    if ((sub_10002CE60() & 0xFE) != 0)
    {
      v10 = 16.0;
    }

    else
    {
      v10 = 0.0;
    }

    v11 = [v7 constraintEqualToAnchor:v8 constant:v10];

    [v11 setActive:1];
    v12 = [v1 trailingAnchor];
    v13 = [v0 trailingAnchor];
    if (sub_10002CE60() >= 2u)
    {
      if ((sub_10002CE60() & 0xFE) != 0)
      {
        v9 = 16.0;
      }

      else
      {
        v9 = 0.0;
      }
    }

    v14 = [v12 constraintEqualToAnchor:v13 constant:-v9];
  }

  else
  {
    v15 = [v1 leftAnchor];
    v16 = [v0 layoutMarginsGuide];
    v17 = [v16 leftAnchor];

    sub_10002CE60();
    v18 = [v15 constraintEqualToAnchor:v17 constant:0.0];

    [v18 setActive:1];
    v12 = [v1 rightAnchor];
    v19 = [v0 layoutMarginsGuide];
    v13 = [v19 rightAnchor];

    v14 = [v12 constraintEqualToAnchor:v13];
  }

  v20 = v14;

  [v20 setActive:1];
  v21 = v0;
  v22 = sub_10002CE60();
  v23 = v21;
  v24 = 0.0;
  if (sub_10002CE60() >= 2u)
  {
    if ((sub_10002CE60() & 0xFE) != 0)
    {
      v24 = 16.0;
    }

    else
    {
      v24 = 0.0;
    }
  }

  v25 = v23;
  v26 = sub_10008D2BC();
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

  v27 = OBJC_IVAR____TtC8Business23IMBDefaultSectionHeader____lazy_storage___separatorView;
  v28 = [*&v25[OBJC_IVAR____TtC8Business23IMBDefaultSectionHeader____lazy_storage___separatorView] heightAnchor];
  v29 = [v25 traitCollection];
  [v29 displayScale];
  v31 = v30;

  if (v31 <= 0.0)
  {
    v32 = [objc_opt_self() mainScreen];
    [v32 scale];
    v34 = v33;

    if (v34 <= 0.0)
    {
      v31 = 1.0;
    }

    else
    {
      v31 = v34;
    }
  }

  if ((v22 & 0xFE) != 0)
  {
    v35 = 16.0;
  }

  else
  {
    v35 = 0.0;
  }

  v36 = [v28 constraintEqualToConstant:1.0 / v31];

  [v36 setActive:1];
  v37 = [*&v25[v27] bottomAnchor];
  v38 = [v25 bottomAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:0.0];

  [v39 setActive:1];
  v40 = [*&v25[v27] leadingAnchor];
  v41 = [v25 leadingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:v35];

  [v42 setActive:1];
  v43 = [*&v25[v27] trailingAnchor];
  v44 = [v25 trailingAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:-v24];

  [v45 setActive:1];
  v46 = [*&v25[v27] topAnchor];
  v47 = [v1 bottomAnchor];
  v49 = [v46 constraintEqualToAnchor:v47 constant:8.0];

  LODWORD(v48) = 1144750080;
  [v49 setPriority:v48];
  [v49 setActive:1];
}

id sub_10008D2BC()
{
  v1 = OBJC_IVAR____TtC8Business23IMBDefaultSectionHeader____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC8Business23IMBDefaultSectionHeader____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business23IMBDefaultSectionHeader____lazy_storage___separatorView);
  }

  else
  {
    type metadata accessor for SeparatorView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10008D334()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBDefaultSectionHeader();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10008D3D8()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for IMBTimeSelectionTableViewController();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  if ([*&v0[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message] rootObject])
  {
    type metadata accessor for IMBProposedEvent();
    v1 = swift_dynamicCastClass();
    if (v1)
    {
      v2 = *&v0[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_proposedEvent];
      *&v0[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_proposedEvent] = v1;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  sub_10008F6D4();
  sub_10008E740();
  return [*&v0[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView] setSeparatorStyle:0];
}

void sub_10008D4EC(char a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for IMBTimeSelectionTableViewController();
  objc_msgSendSuper2(&v12, "viewWillAppear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_nothingAvailableLabel];
  v4 = OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_dates;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v10 = *&v1[v4];
    }

    v6 = sub_1000AC65C();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v3 setHidden:v6 != 0];
  v7 = [objc_opt_self() mainBundle];
  v11._countAndFlagsBits = 0xE000000000000000;
  v13._object = 0x80000001000BD080;
  v13._countAndFlagsBits = 0xD000000000000016;
  v14.value._countAndFlagsBits = 0;
  v14.value._object = 0;
  v8.super.isa = v7;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_1000AB61C(v13, v14, v8, v15, v11);

  v9 = sub_1000AC02C();

  [v3 setText:v9];
}

void sub_10008D6B0()
{
  sub_100081EF4();
  if (sub_10002CE60() == 2)
  {
    v1 = [v0 view];
    if (!v1)
    {
      __break(1u);
      return;
    }

    v2 = v1;
    if (qword_1000EEDC0 != -1)
    {
      swift_once();
    }

    [v2 setBackgroundColor:qword_1000FBEF0];
  }

  v3 = *&v0[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView];
  [v3 setEstimatedRowHeight:UITableViewAutomaticDimension];
  type metadata accessor for IMBDateTableViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_1000AC02C();
  [v3 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v5];

  v9 = sub_10008240C();
  v7 = v6;
  ObjectType = swift_getObjectType();
  (*(v7 + 48))(0, ObjectType, v7);
}

char *sub_10008D81C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message);
  v2 = [v1 receivedMessage];
  if (v2 && (v3 = v2, v4 = [v2 title], v3, v4))
  {
    v5 = sub_1000AC06C();
  }

  else
  {
    v4 = [objc_opt_self() mainBundle];
    v19._countAndFlagsBits = 0xE000000000000000;
    v20._object = 0x80000001000BD060;
    v20._countAndFlagsBits = 0xD000000000000019;
    v21.value._countAndFlagsBits = 0;
    v21.value._object = 0;
    v7.super.isa = v4;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v5 = sub_1000AB61C(v20, v21, v7, v22, v19);
  }

  v8 = v5;
  v9 = v6;

  v10 = [v1 receivedMessage];
  if (v10 && (v11 = v10, v12 = [v10 subtitle], v11, v12))
  {
    v13 = sub_1000AC06C();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = [*(v0 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView) separatorColor];
  v17 = objc_allocWithZone(type metadata accessor for IMBTableHeaderView());
  return sub_1000906F4(v8, v9, v13, v15, v16);
}

uint64_t sub_10008D9C8()
{
  v0 = sub_10002CE60();
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v13._countAndFlagsBits = 0xE000000000000000;
  v15._countAndFlagsBits = 1145980243;
  v15._object = 0xE400000000000000;
  v17.value._countAndFlagsBits = 0;
  v17.value._object = 0;
  v3.super.isa = v2;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v4 = sub_1000AB61C(v15, v17, v3, v19, v13);
  v6 = v5;

  if (v0 == 2)
  {
    v7 = [v1 mainBundle];
    v14._countAndFlagsBits = 0xE000000000000000;
    v16._countAndFlagsBits = 0x4C45434E4143;
    v16._object = 0xE600000000000000;
    v18.value._countAndFlagsBits = 0;
    v18.value._object = 0;
    v8.super.isa = v7;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    v9 = sub_1000AB61C(v16, v18, v8, v20, v14);
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  type metadata accessor for FooterToolbarModel();
  result = swift_allocObject();
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = 1;
  *(result + 16) = 0;
  *(result + 24) = 0xE000000000000000;
  *(result + 32) = 0;
  *(result + 40) = v4;
  *(result + 48) = v6;
  *(result + 56) = 2;
  *(result + 64) = v9;
  *(result + 72) = v11;
  return result;
}

void sub_10008DBEC(void *a1)
{
  v2 = v1;
  v4 = sub_1000AC02C();
  v5 = [a1 dequeueReusableCellWithIdentifier:v4];

  if (!v5)
  {
    goto LABEL_22;
  }

  type metadata accessor for IMBDateTableViewCell();
  v6 = swift_dynamicCastClassUnconditional();
  v7 = sub_1000AB95C();
  v8 = OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_dates;
  swift_beginAccess();
  v9 = *(v2 + v8);
  if ((v9 & 0xC000000000000001) != 0)
  {
    v20 = *(v2 + v8);

    v10 = sub_1000AC5AC();

    goto LABEL_6;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v7 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(v9 + 8 * v7 + 32);

LABEL_6:
  v11 = *&v6[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_cellData];
  *&v6[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_cellData] = v10;

  sub_10006DC7C();
  sub_10006E700();

  *&v6[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeSelectionDelegate + 8] = &off_1000DDC40;
  swift_unknownObjectWeakAssign();
  v12 = *(v2 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView);
  v5 = v5;
  v13 = [v12 separatorColor];
  [v6 setSeparatorColor:v13];

  v2 = *(v2 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedTimeslot);
  v14 = *&v6[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeslotContainerView];
  v15 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotViews;
  swift_beginAccess();
  v8 = *(v14 + v15);
  if (!v8)
  {
    goto LABEL_20;
  }

  if (!(v8 >> 62))
  {
    v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_20:

    return;
  }

LABEL_19:
  v16 = sub_1000AC65C();
  if (!v16)
  {
    goto LABEL_20;
  }

LABEL_9:
  if (v16 < 1)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  for (i = 0; i != v16; ++i)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v18 = sub_1000AC5AC();
    }

    else
    {
      v18 = *(v8 + 8 * i + 32);
    }

    v19 = v18;
    sub_100079ACC(v2);
  }
}

uint64_t sub_10008DFCC(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_proposedEvent);
  if (!v2)
  {
    return result;
  }

  v3 = result;
  v44 = OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedTimeslot;
  v4 = *(v1 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedTimeslot);
  if (v4)
  {
    v5 = *(result + 16) == *(v4 + 16) && *(result + 24) == *(v4 + 24);
    if (v5 || (sub_1000AC7AC() & 1) != 0)
    {

      sub_10008E668();
    }
  }

  v6 = sub_10008EE9C();
  v45 = v1;
  v8 = v7;
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000B04C0;
  *(inited + 32) = v3;

  v10 = sub_100010490(inited);
  swift_setDeallocating();
  v11 = *(inited + 16);
  swift_arrayDestroy();
  v12 = *(v2 + 80);
  *(v2 + 80) = v10;

  v13 = *(v45 + v44);
  *(v45 + v44) = v3;

  v14 = *(v45 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedEvent);
  *(v45 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedEvent) = v2;

  v15 = *(v45 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedMessage);
  *(v45 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedMessage) = v6;
  v16 = v6;

  v17 = *(v45 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedMessageInfo);
  *(v45 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedMessageInfo) = v8;
  v18 = v8;
  v19 = v45;
  v20 = v18;

  v21 = sub_10008240C();
  v23 = v22;
  ObjectType = swift_getObjectType();
  (*(v23 + 48))(1, ObjectType, v23);

  v25 = [*(v45 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView) visibleCells];
  sub_100005A24(0, &qword_1000F3650, UITableViewCell_ptr);
  v26 = sub_1000AC19C();

  if (v26 >> 62)
  {
    goto LABEL_41;
  }

  v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v27)
  {
LABEL_13:
    v40 = v20;
    v41 = v16;
    v28 = 0;
    v46 = v26 & 0xC000000000000001;
    v43 = v26 & 0xFFFFFFFFFFFFFF8;
    v42 = v26 + 32;
    v29 = v44;
    while (1)
    {
      if (v46)
      {
        v30 = sub_1000AC5AC();
      }

      else
      {
        if (v28 >= *(v43 + 16))
        {
          goto LABEL_39;
        }

        v30 = *(v42 + 8 * v28);
      }

      v31 = v30;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        v27 = sub_1000AC65C();
        if (!v27)
        {
          break;
        }

        goto LABEL_13;
      }

      type metadata accessor for IMBDateTableViewCell();
      v33 = swift_dynamicCastClass();
      if (v33)
      {
        v20 = v26;
        v34 = *(v19 + v29);
        v35 = *(v33 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeslotContainerView);
        v26 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotViews;
        swift_beginAccess();
        v16 = *(v35 + v26);
        if (v16)
        {
          if (v16 >> 62)
          {
            if (v16 < 0)
            {
              v39 = *(v35 + v26);
            }

            v19 = sub_1000AC65C();
            if (!v19)
            {
LABEL_36:

              v19 = v45;
              v26 = v20;
              goto LABEL_15;
            }
          }

          else
          {
            v19 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v19)
            {
              goto LABEL_36;
            }
          }

          if (v19 < 1)
          {
            goto LABEL_40;
          }

          for (i = 0; i != v19; ++i)
          {
            if ((v16 & 0xC000000000000001) != 0)
            {
              v37 = sub_1000AC5AC();
            }

            else
            {
              v37 = *(v16 + 8 * i + 32);
            }

            v38 = v37;
            sub_100079ACC(v34);
          }

          v29 = v44;
          v19 = v45;
          v26 = v20;
        }

        else
        {

          v26 = v20;
        }
      }

      else
      {
      }

LABEL_15:
      if (v28 == v27)
      {
      }
    }
  }
}

void sub_10008E44C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedMessage);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedMessageInfo);
    if (v2)
    {
      if (*(v0 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedEvent))
      {
        v3 = *(v0 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedEvent);

        v4 = v2;
        v5 = v1;
        v6 = v0;
        v7 = sub_10008240C();
        v9 = v8;
        ObjectType = swift_getObjectType();
        (*(v9 + 48))(0, ObjectType, v9);

        v11 = *(v6 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message);
        v12 = *(v6 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_conversation);
        v13 = BCMessageRootEventKey;

        v14 = v4;
        v25 = v5;
        v15 = v11;
        v16 = v12;
        v17 = v13;
        sub_100036FA8(1);
        v18 = v6 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController__dismissalDelegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v19 = *(v18 + 8);
            v20 = swift_getObjectType();
            v24 = v14;
            v21 = v15;
            v22 = *(v19 + 16);
            v23 = type metadata accessor for IMBTimeSelectionTableViewController();
            v22(v6, v23, v20, v19);

            v14 = v24;
            swift_unknownObjectRelease();
          }

          else
          {
          }
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

void sub_10008E668()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedTimeslot);
  *(v0 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedTimeslot) = 0;

  v2 = *(v0 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedEvent);
  *(v0 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedEvent) = 0;

  v3 = *(v0 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedMessage);
  *(v0 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedMessage) = 0;

  v4 = *(v0 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedMessageInfo);
  *(v0 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedMessageInfo) = 0;

  [*(v0 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView) reloadData];
  v8 = sub_10008240C();
  v6 = v5;
  ObjectType = swift_getObjectType();
  (*(v6 + 48))(0, ObjectType, v6);
}

uint64_t sub_10008E740()
{
  v60 = sub_1000ABF3C();
  v1 = *(v60 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v60, v3);
  v59 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1000ABF6C();
  v5 = *(v58 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v58, v7);
  v57 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1000AB7EC();
  v62 = *(v56 - 8);
  v9 = *(v62 + 64);
  __chkstk_darwin(v56, v10);
  v55 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1000ABF4C();
  v11 = *(v54 - 8);
  v12 = *(v11 + 64);
  result = __chkstk_darwin(v54, v13);
  v53 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v0;
  v63 = *&v0[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_proposedEvent];
  if (!v63)
  {
    return result;
  }

  v16 = *(v63 + 80);
  if (!v16)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v16 >> 62)
  {
    result = sub_1000AC65C();
    v17 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      return result;
    }
  }

  result = sub_100005A24(0, &qword_1000EEEB0, OS_dispatch_queue_ptr);
  v52 = result;
  if (v17 < 1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v49 = v16 & 0xC000000000000001;
  v48 = (v11 + 104);
  v47 = enum case for DispatchQoS.QoSClass.default(_:);
  v46 = (v11 + 8);
  v45 = v62 + 16;
  v44 = v9 + 7;
  v43 = v62 + 32;
  v42 = v68;
  v41 = (v1 + 8);
  v40 = (v5 + 8);

  v18 = 0;
  v51 = v16;
  v50 = v17;
  v19 = v62;
  do
  {
    if (v49)
    {
      v20 = sub_1000AC5AC();
    }

    else
    {
      v20 = *(v16 + 8 * v18 + 32);
    }

    ++v18;
    v64 = *(v63 + 16);
    v21 = OBJC_IVAR____TtC8Business15IMBProposedDate_date;
    v22 = swift_allocObject();
    v23 = v61;
    *(v22 + 16) = v61;
    *(v22 + 24) = v20;
    v24 = v53;
    v25 = v54;
    (*v48)(v53, v47, v54);
    v26 = v23;

    v65 = sub_1000AC35C();
    (*v46)(v24, v25);
    v27 = v55;
    v28 = v56;
    (*(v19 + 16))(v55, v20 + v21, v56);
    v29 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v30 = (v44 + v29) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    (*(v19 + 32))(v31 + v29, v27, v28);
    v32 = v64;
    *(v31 + v30) = v64;
    v33 = (v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v33 = sub_100090044;
    v33[1] = v22;
    v68[2] = sub_100063BB4;
    v68[3] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    v68[0] = sub_100023BE0;
    v68[1] = &unk_1000DDCB0;
    v34 = _Block_copy(aBlock);
    v35 = v32;

    v36 = v57;
    sub_1000ABF5C();
    v66 = _swiftEmptyArrayStorage;
    sub_100042004();
    sub_10000413C(&unk_1000F1E00, &unk_1000B1BF0);
    sub_10004205C();
    v38 = v59;
    v37 = v60;
    sub_1000AC49C();
    v39 = v65;
    sub_1000AC33C();
    _Block_release(v34);

    (*v41)(v38, v37);
    (*v40)(v36, v58);

    v16 = v51;
  }

  while (v50 != v18);
}

uint64_t sub_10008EDB4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v4 = result;
    v5 = *(a3 + 16);
    v6 = *(a3 + 24);
    v7 = OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_datesDictionary;
    result = swift_beginAccess();
    v8 = *(a2 + v7);
    if (*(v8 + 16))
    {

      v9 = sub_10004F0CC(v5, v6);
      if (v10)
      {
        v11 = *(*(v8 + 56) + 8 * v9);

        v12 = *(v11 + 32);
        *(v11 + 32) = v4;

        [*(a2 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView) reloadData];
      }

      else
      {
      }
    }
  }

  return result;
}

id sub_10008EE9C()
{
  v1 = sub_10000413C(&qword_1000EF7D0, &qword_1000B5060);
  v2 = *(*(v1 - 8) + 64);
  v4 = __chkstk_darwin(v1 - 8, v3);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v62 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message);
  v11 = [v10 replyMessage];
  if (v11 && (v12 = v11, v13 = [v11 imageIdentifier], v12, v13))
  {
    v64 = sub_1000AC06C();
    v70 = v14;
  }

  else
  {
    v64 = 0;
    v70 = 0;
  }

  v15 = [v10 replyMessage];
  if (v15 && (v16 = v15, v17 = [v15 imageDescription], v16, v17))
  {
    v63 = sub_1000AC06C();
    v67 = v18;
  }

  else
  {
    v63 = 0;
    v67 = 0;
  }

  v19 = [v10 replyMessage];
  if (v19 || (v19 = [v10 receivedMessage]) != 0)
  {
    v20 = v19;
    v69 = [v19 style];
  }

  else
  {
    v69 = BCBubbleViewStyleIcon;
  }

  v66 = *(v0 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_conversation);
  v21 = [v66 selectedMessage];
  v22 = [v21 session];

  if (!v22)
  {
    v22 = [objc_allocWithZone(MSSession) init];
  }

  v23 = objc_allocWithZone(MSMessage);
  v68 = v22;
  v71 = [v23 initWithSession:v22];
  v24 = [objc_allocWithZone(MSMessageTemplateLayout) init];
  v25 = [objc_allocWithZone(NSDateFormatter) init];
  [v25 setTimeStyle:1];
  [v25 setDateStyle:2];
  v26 = *(v0 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_proposedEvent);
  if (v26)
  {
    v27 = *(v26 + 56);

    v28 = [v27 timeZone];
    if (v28)
    {
      v29 = v28;
      sub_1000AB8FC();

      v30 = sub_1000AB91C();
      (*(*(v30 - 8) + 56))(v6, 0, 1, v30);
    }

    else
    {

      v30 = sub_1000AB91C();
      (*(*(v30 - 8) + 56))(v6, 1, 1, v30);
    }

    sub_1000126F0(v6, v9);
    sub_1000AB91C();
    v33 = *(v30 - 8);
    isa = 0;
    if ((*(v33 + 48))(v9, 1, v30) != 1)
    {
      isa = sub_1000AB8EC().super.isa;
      (*(v33 + 8))(v9, v30);
    }
  }

  else
  {
    v31 = sub_1000AB91C();
    (*(*(v31 - 8) + 56))(v9, 1, 1, v31);
    isa = 0;
  }

  [v25 setTimeZone:isa];

  v34 = sub_1000AB77C().super.isa;
  v35 = [v25 stringFromDate:v34];

  v36 = v35;
  v37 = v35;
  v38 = v35;
  if (!v35)
  {
    sub_1000AC06C();
    v38 = sub_1000AC02C();

    sub_1000AC06C();
    v37 = sub_1000AC02C();

    sub_1000AC06C();
    v36 = sub_1000AC02C();
  }

  v65 = sub_1000AC06C();
  v39 = v35;
  [v24 setCaption:v38];

  [v71 setAccessibilityLabel:v37];
  v40 = [v10 replyMessage];
  if (v40)
  {
    v41 = v40;
    v42 = [v40 image];
  }

  else
  {
    v42 = 0;
  }

  [v24 setImage:v42];

  v43 = [v10 replyMessage];
  if (v43 && (v44 = v43, v45 = [v43 subtitle], v44, v45))
  {
    v46 = v67;
    sub_1000AC06C();
    v48 = v47;
  }

  else
  {
    v46 = v67;
    v48 = 0;
  }

  v49 = [v66 selectedMessage];
  if (v49 && (v50 = v49, v51 = [v49 layout], v50, v51) && (objc_opt_self(), v52 = swift_dynamicCastObjCClass(), v51, v52))
  {
    v53 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v24];
    [v71 setLayout:v53];

    if (!v48)
    {
LABEL_34:
      [v24 setSubcaption:0];
      v54 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    [v71 setLayout:v24];
    if (!v48)
    {
      goto LABEL_34;
    }
  }

  v55 = sub_1000AC02C();

  [v24 setSubcaption:v55];

  v54 = sub_1000AC02C();

LABEL_37:
  v56 = sub_1000AC02C();

  if (!v70)
  {
    v57 = 0;
    if (v46)
    {
      goto LABEL_39;
    }

LABEL_41:
    v58 = 0;
    goto LABEL_42;
  }

  v57 = sub_1000AC02C();

  if (!v46)
  {
    goto LABEL_41;
  }

LABEL_39:
  v58 = sub_1000AC02C();

LABEL_42:
  v59 = objc_allocWithZone(BCMessageInfo);
  v60 = v69;
  [v59 initWithTitle:v36 subtitle:v54 style:v69 alternateTitle:v56 imageIdentifier:v57 imageDescription:v58];

  return v71;
}

uint64_t sub_10008F6D4()
{
  v1 = sub_10000413C(&qword_1000EF7D0, &qword_1000B5060);
  v2 = *(*(v1 - 8) + 64);
  v4 = __chkstk_darwin(v1 - 8, v3);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v4, v7);
  v10 = &v56 - v9;
  v12 = __chkstk_darwin(v8, v11);
  v14 = &v56 - v13;
  result = __chkstk_darwin(v12, v15);
  v18 = &v56 - v17;
  v66 = *&v0[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_proposedEvent];
  if (!v66)
  {
    return result;
  }

  isUniquelyReferenced_nonNull_native = *(v66 + 80);
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_38;
  }

  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_35;
  }

  v20 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v20)
  {
LABEL_5:
    if (v20 < 1)
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      result = sub_1000AC7EC();
      __break(1u);
      return result;
    }

    v57 = OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_dates;
    v62 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v63 = OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_datesDictionary;

    v21 = 0;
    v64 = v10;
    v65 = v0;
    v60 = v18;
    v61 = v14;
    v58 = v20;
    v59 = isUniquelyReferenced_nonNull_native;
    while (1)
    {
      if (v62)
      {
        v69 = sub_1000AC5AC();
      }

      else
      {
        v69 = *(isUniquelyReferenced_nonNull_native + 8 * v21 + 32);
      }

      v22 = [*(v66 + 56) timeZone];
      v67 = v21;
      if (v22)
      {
        v23 = v22;
        sub_1000AB8FC();

        v24 = 0;
      }

      else
      {
        v24 = 1;
      }

      v25 = sub_1000AB91C();
      v26 = *(v25 - 8);
      v27 = *(v26 + 56);
      v27(v14, v24, 1, v25);
      sub_1000126F0(v14, v18);
      v28 = type metadata accessor for IMBTableViewCellData();
      v29 = *(v28 + 48);
      v30 = *(v28 + 52);
      v14 = swift_allocObject();
      v14[24] = 0;
      *(v14 + 4) = 0;
      v68 = v27;
      v27(&v14[OBJC_IVAR____TtC8Business20IMBTableViewCellData_timezone], 1, 1, v25);
      *(v14 + 2) = v69;
      sub_100012680(v18, v6);
      v31 = *(v26 + 48);
      v32 = v31(v6, 1, v25);

      if (v32 == 1)
      {
        v33 = v64;
        sub_1000AB90C();
        sub_100072654(v18);
        if (v31(v6, 1, v25) != 1)
        {
          sub_100072654(v6);
        }
      }

      else
      {
        sub_100072654(v18);
        v33 = v64;
        (*(v26 + 32))(v64, v6, v25);
      }

      v68(v33, 0, 1, v25);
      v34 = OBJC_IVAR____TtC8Business20IMBTableViewCellData_timezone;
      swift_beginAccess();
      sub_10008FF94(v33, &v14[v34]);
      swift_endAccess();
      v35 = *(v69 + 16);
      v36 = *(v69 + 24);
      v10 = v65;
      v18 = v63;
      swift_beginAccess();

      v37 = *&v18[v10];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = *&v18[v10];
      v0 = v70;
      *&v18[v10] = 0x8000000000000000;
      v39 = sub_10004F0CC(v35, v36);
      v40 = *(v0 + 2);
      v41 = (v38 & 1) == 0;
      v42 = v40 + v41;
      if (__OFADD__(v40, v41))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        result = sub_1000AC65C();
        v20 = result;
        if (!result)
        {
          return result;
        }

        goto LABEL_5;
      }

      v43 = v38;
      if (*(v0 + 3) >= v42)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          isUniquelyReferenced_nonNull_native = v70;
          if (v38)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v0 = &v70;
          sub_10003AF54();
          isUniquelyReferenced_nonNull_native = v70;
          if (v43)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
        sub_100039788(v42, isUniquelyReferenced_nonNull_native);
        v0 = v70;
        v44 = sub_10004F0CC(v35, v36);
        if ((v43 & 1) != (v45 & 1))
        {
          goto LABEL_39;
        }

        v39 = v44;
        isUniquelyReferenced_nonNull_native = v70;
        if (v43)
        {
LABEL_24:
          v46 = *(isUniquelyReferenced_nonNull_native + 56);
          v47 = *(v46 + 8 * v39);
          *(v46 + 8 * v39) = v14;

          goto LABEL_28;
        }
      }

      *(isUniquelyReferenced_nonNull_native + 8 * (v39 >> 6) + 64) |= 1 << v39;
      v48 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v39);
      *v48 = v35;
      v48[1] = v36;
      *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v39) = v14;
      v49 = *(isUniquelyReferenced_nonNull_native + 16);
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_34;
      }

      *(isUniquelyReferenced_nonNull_native + 16) = v51;
LABEL_28:
      *&v18[v10] = isUniquelyReferenced_nonNull_native;
      swift_endAccess();
      v52 = v57;
      swift_beginAccess();

      sub_1000AC17C();
      v18 = v60;
      v53 = v58;
      v54 = v67;
      if (*((*&v10[v52] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v10[v52] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v55 = *((*&v10[v52] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1000AC1BC();
      }

      v21 = v54 + 1;
      sub_1000AC1DC();
      swift_endAccess();

      v14 = v61;
      isUniquelyReferenced_nonNull_native = v59;
      if (v53 == v21)
      {
      }
    }
  }

  return result;
}

id sub_10008FCB4(void *a1)
{
  *&v1[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_proposedEvent] = 0;
  *&v1[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_dates] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_datesDictionary] = _swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_conflictedEvents] = _swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedTimeslot] = 0;
  *&v1[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedEvent] = 0;
  *&v1[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedMessage] = 0;
  *&v1[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedMessageInfo] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for IMBTimeSelectionTableViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

void sub_10008FDB4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_proposedEvent);

  v2 = *(v0 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_dates);

  v3 = *(v0 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_datesDictionary);

  v4 = *(v0 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_conflictedEvents);

  v5 = *(v0 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedTimeslot);

  v6 = *(v0 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedEvent);

  v7 = *(v0 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedMessageInfo);
}

id sub_10008FE54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBTimeSelectionTableViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10008FF94(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&qword_1000EF7D0, &qword_1000B5060);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100090004()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009004C()
{
  v1 = sub_1000AB7EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  v7 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_1000900FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100090154(char a1, void *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v8 = a3();
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = *a4;
  v10 = [*&v4[*a4] heightAnchor];
  v11 = [v4 traitCollection];
  [v11 displayScale];
  v13 = v12;

  if (v13 <= 0.0)
  {
    v14 = [objc_opt_self() mainScreen];
    [v14 scale];
    v13 = v15;

    if (v13 <= 0.0)
    {
      v13 = 1.0;
    }
  }

  v16 = [v10 constraintEqualToConstant:1.0 / v13];

  [v16 setActive:1];
  v17 = 0.0;
  if (sub_10002CE60() == 2)
  {
    sub_10002CE60();
    v17 = 20.0;
  }

  v18 = [*&v4[v9] leadingAnchor];
  v19 = [a2 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:v17];

  [v20 setActive:1];
  v21 = [*&v4[v9] trailingAnchor];
  v22 = [a2 trailingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:-v17];

  [v23 setActive:1];
  if (a1)
  {
    v24 = &selRef_bottomAnchor;
  }

  else
  {
    v24 = &selRef_topAnchor;
  }

  v25 = [*&v4[v9] *v24];
  v26 = [a2 *v24];
  v27 = [v25 constraintEqualToAnchor:v26];

  [v27 setActive:1];
}

id sub_10009043C()
{
  v1 = OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___titleLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(UILabel) init];
    sub_10002CF08();
    v6 = v5;
    [v4 setFont:v5];

    v7 = [objc_opt_self() labelColor];
    [v4 setTextColor:v7];

    [v4 setNumberOfLines:0];
    v8 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_100090524()
{
  v1 = OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___subtitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___subtitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___subtitleLabel);
  }

  else
  {
    v4 = sub_100090584();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100090584()
{
  v0 = [objc_allocWithZone(UILabel) init];
  if (sub_10002CE60() >= 2u)
  {
    v2 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleSubheadline];
    v3 = [objc_opt_self() systemFontOfSize:11.0];
    v1 = [v2 scaledFontForFont:v3];
  }

  else
  {
    v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  }

  [v0 setFont:v1];

  sub_10002CE60();
  v4 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor:v4];

  [v0 setNumberOfLines:0];
  return v0;
}

char *sub_1000906F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v5[OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___titleLabel] = 0;
  *&v5[OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___subtitleLabel] = 0;
  *&v5[OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___separatorView] = 0;
  v9 = OBJC_IVAR____TtC8Business18IMBTableHeaderView_separatorColor;
  *&v5[v9] = [objc_opt_self() blackColor];
  v18.receiver = v5;
  v18.super_class = type metadata accessor for IMBTableHeaderView();
  v10 = objc_msgSendSuper2(&v18, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v11 = sub_10009043C();
  if (a2)
  {
    v12 = sub_1000AC02C();
  }

  else
  {
    v12 = 0;
  }

  [v11 setText:v12];

  v13 = sub_100090524();
  if (a4)
  {
    v14 = sub_1000AC02C();
  }

  else
  {
    v14 = 0;
  }

  [v13 setText:v14];

  v15 = *&v10[OBJC_IVAR____TtC8Business18IMBTableHeaderView_separatorColor];
  *&v10[OBJC_IVAR____TtC8Business18IMBTableHeaderView_separatorColor] = a5;
  v16 = a5;

  sub_10009093C();
  sub_100090AA0();

  return v10;
}

id sub_10009093C()
{
  if (sub_10002CE60() >= 2u)
  {
    if (qword_1000EEDC0 != -1)
    {
      swift_once();
    }

    v1 = qword_1000FBEF0;
  }

  else
  {
    v1 = [objc_opt_self() systemBackgroundColor];
  }

  v2 = v1;
  [v0 setBackgroundColor:v1];

  v3 = sub_100090FA4();
  v4 = *&v0[OBJC_IVAR____TtC8Business18IMBTableHeaderView_separatorColor];
  [v3 setBackgroundColor:v4];

  v5 = sub_10009043C();
  [v0 addSubview:v5];

  v6 = sub_100090524();
  [v0 addSubview:v6];

  result = sub_10002CE60();
  if (result != 2)
  {
    v8 = *&v0[OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___separatorView];

    return [v0 addSubview:v8];
  }

  return result;
}

void sub_100090AA0()
{
  v1 = sub_10009043C();
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];

  v2 = OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___titleLabel;
  v3 = [*&v0[OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___titleLabel] topAnchor];
  v4 = [v0 topAnchor];
  v5 = sub_10002CE60();
  v6 = 18.0;
  if (v5 == 2)
  {
    v6 = 20.0;
  }

  v7 = [v3 constraintEqualToAnchor:v4 constant:v6];

  [v7 setActive:1];
  v8 = [*&v0[v2] leadingAnchor];
  v9 = [v0 safeAreaLayoutGuide];
  v10 = [v9 leadingAnchor];

  if ((sub_10002CE60() & 0xFE) != 0)
  {
    v11 = 16.0;
  }

  else
  {
    v11 = 20.0;
  }

  v12 = [v8 constraintEqualToAnchor:v10 constant:v11];

  [v12 setActive:1];
  v13 = [*&v0[v2] trailingAnchor];
  v14 = [v0 safeAreaLayoutGuide];
  v15 = [v14 trailingAnchor];

  if ((sub_10002CE60() & 0xFE) != 0)
  {
    v16 = -16.0;
  }

  else
  {
    v16 = -20.0;
  }

  v17 = [v13 constraintEqualToAnchor:v15 constant:v16];

  [v17 setActive:1];
  v18 = sub_100090524();
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

  v19 = OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___subtitleLabel;
  v20 = [*&v0[OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___subtitleLabel] topAnchor];
  v21 = [*&v0[v2] bottomAnchor];
  v22 = sub_10002CE60();
  v23 = 2.0;
  if (v22 == 2)
  {
    v23 = 4.0;
  }

  v24 = [v20 constraintEqualToAnchor:v21 constant:v23];

  [v24 setActive:1];
  v25 = [*&v0[v19] leadingAnchor];
  v26 = [v0 safeAreaLayoutGuide];
  v27 = [v26 leadingAnchor];

  if ((sub_10002CE60() & 0xFE) != 0)
  {
    v28 = 16.0;
  }

  else
  {
    v28 = 20.0;
  }

  v29 = [v25 constraintEqualToAnchor:v27 constant:v28];

  [v29 setActive:1];
  v30 = [*&v0[v19] trailingAnchor];
  v31 = [v0 safeAreaLayoutGuide];
  v32 = [v31 trailingAnchor];

  if ((sub_10002CE60() & 0xFE) != 0)
  {
    v33 = -16.0;
  }

  else
  {
    v33 = -20.0;
  }

  v34 = [v30 constraintEqualToAnchor:v32 constant:v33];

  [v34 setActive:1];
  if (sub_10002CE60() == 2)
  {
    v35 = [v0 bottomAnchor];
    v36 = [*&v0[v19] bottomAnchor];
    v37 = [v35 constraintEqualToAnchor:v36 constant:20.0];
  }

  else
  {
    sub_100090154(1, v0, sub_100090FA4, &OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___separatorView);
    v38 = sub_100090FA4();
    v35 = [v38 topAnchor];

    v36 = [*&v0[v19] bottomAnchor];
    v37 = [v35 constraintEqualToAnchor:v36 constant:18.0];
  }

  v39 = v37;

  [v39 setActive:1];
}

id sub_100090FA4()
{
  v1 = OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___separatorView);
  }

  else
  {
    type metadata accessor for SeparatorView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10009104C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBTableHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100091110()
{
  v1 = OBJC_IVAR____TtC8Business14IMBNetworkBody__body;
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = &_swiftEmptyDictionarySingleton;

  v3 = sub_1000AC06C();
  v5 = v4;
  v6 = *(v0 + OBJC_IVAR____TtC8Business14IMBNetworkBody_message);
  v7 = [v6 requestIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1000AC06C();
    v11 = v10;

    v12 = &type metadata for String;
  }

  else
  {
    v9 = 0;
    v11 = 0;
    v12 = 0;
    v18[2] = 0;
  }

  v18[0] = v9;
  v18[1] = v11;
  v19 = v12;
  swift_beginAccess();
  sub_1000382BC(v18, v3, v5);
  swift_endAccess();
  v13 = sub_1000AC06C();
  v15 = v14;
  v16 = [v6 version];
  v19 = &type metadata for Int;
  v18[0] = v16;
  swift_beginAccess();
  sub_1000382BC(v18, v13, v15);
  return swift_endAccess();
}

unint64_t sub_100091290(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000413C(&qword_1000F07D8, &qword_1000B1AF8);
    v2 = sub_1000AC68C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_100005914(*(a1 + 48) + 40 * v14, v29);
        sub_1000068B4(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_100005914(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_1000068B4(v27 + 8, v22);
        sub_100091F60(v26);
        v23 = v20;
        sub_100006910(v22, v24);
        v15 = v23;
        sub_100006910(v24, v25);
        sub_100006910(v25, &v23);
        result = sub_10004F0CC(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_10000E738(v12);
          result = sub_100006910(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_100006910(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_100091F60(v26);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_10009154C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_100091110();
  v5 = sub_10000AFBC();
  *&v21 = _swiftEmptyArrayStorage;
  if (a2 >> 62)
  {
LABEL_14:
    v6 = sub_1000AC65C();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          sub_1000AC5AC();
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_11:
            __break(1u);
LABEL_12:
            v11 = v21;
            goto LABEL_16;
          }
        }

        else
        {
          if (v7 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_14;
          }

          v8 = *(a2 + 8 * v7 + 32);

          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_11;
          }
        }

        v10 = sub_100020350();

        sub_1000A50E4(v10);
        ++v7;
        if (v9 == v6)
        {
          goto LABEL_12;
        }
      }
    }
  }

  v11 = _swiftEmptyArrayStorage;
LABEL_16:
  v22 = sub_10000413C(&qword_1000F36D8, &qword_1000B4F38);
  *&v21 = v11;
  sub_100006910(&v21, v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v20, 0x73726F727265, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v13 = v5;
  v14 = sub_1000AC06C();
  v16 = v15;
  v22 = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  *&v21 = v13;
  v17 = OBJC_IVAR____TtC8Business14IMBNetworkBody__body;
  swift_beginAccess();
  sub_1000382BC(&v21, v14, v16);
  swift_endAccess();
  v18 = *(v3 + v17);
}

id sub_100091770()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBNetworkBody();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100091814(void *a1)
{
  sub_100091110();
  v3 = [a1 dictionaryRepresentation];
  if (v3 && (v4 = v3, v5 = sub_1000ABFBC(), v4, v6 = sub_100091290(v5), , v6))
  {
    v7 = sub_1000AC06C();
    v9 = v8;
    v12[3] = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
    v12[0] = v6;
    v10 = v1 + OBJC_IVAR____TtC8Business14IMBNetworkBody__body;
    swift_beginAccess();
    sub_1000382BC(v12, v7, v9);
    swift_endAccess();
  }

  else
  {
    v10 = v1 + OBJC_IVAR____TtC8Business14IMBNetworkBody__body;
    swift_beginAccess();
  }

  return *v10;
}

uint64_t sub_10009193C(void *a1)
{
  v2 = v1;
  sub_100091110();
  v4 = [a1 dictionaryRepresentation];
  if (v4 && (v5 = v4, v6 = sub_1000ABFBC(), v5, v7 = sub_100091290(v6), , v7))
  {
    v8 = sub_10004FE58(_swiftEmptyArrayStorage);
    v9 = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
    v28 = v9;
    *&v27 = v7;
    sub_100006910(&v27, v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v26, 0x4D746E656D796170, 0xED0000646F687465, isUniquelyReferenced_nonNull_native);
    v11 = sub_1000AC06C();
    v13 = v12;
    v28 = v9;
    *&v27 = v8;
    v14 = v2 + OBJC_IVAR____TtC8Business14IMBNetworkBody__body;
    swift_beginAccess();
    v15 = v11;
    v16 = v13;
  }

  else
  {
    sub_10000413C(&qword_1000F36E8, &qword_1000B4F48);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000AF0F0;
    strcpy((inited + 32), "paymentNetwork");
    *(inited + 47) = -18;
    v18 = [a1 network];
    if (v18)
    {
      v19 = v18;
      v20 = sub_1000AC06C();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0;
    }

    *(inited + 48) = v20;
    *(inited + 56) = v22;
    *(inited + 64) = 0x54746E656D796170;
    *(inited + 72) = 0xEB00000000657079;
    [a1 type];
    type metadata accessor for PKPaymentMethodType(0);
    *(inited + 80) = sub_1000AC0EC();
    *(inited + 88) = v23;
    v24 = sub_10004FF88(inited);
    swift_setDeallocating();
    sub_10000413C(&qword_1000F36F0, &qword_1000B4F50);
    swift_arrayDestroy();
    v28 = sub_10000413C(&qword_1000F36F8, &qword_1000B4F58);
    *&v27 = v24;
    v14 = v2 + OBJC_IVAR____TtC8Business14IMBNetworkBody__body;
    swift_beginAccess();
    v15 = 0x4D746E656D796170;
    v16 = 0xED0000646F687465;
  }

  sub_1000382BC(&v27, v15, v16);
  swift_endAccess();
  return *v14;
}

uint64_t sub_100091C34(void *a1)
{
  v2 = v1;
  sub_100091110();
  v4 = [a1 dictionaryRepresentation];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1000ABFBC();

    v7 = sub_100091290(v6);

    if (v7)
    {
      v8 = sub_10004FE58(_swiftEmptyArrayStorage);
      v9 = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
      v19 = v9;
      *&v18 = v7;
      sub_100006910(&v18, v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10003A3E8(v17, 0x676E697070696873, 0xEE00646F6874654DLL, isUniquelyReferenced_nonNull_native);
      v11 = v8;
      v12 = sub_1000AC06C();
      v14 = v13;
      v19 = v9;
      *&v18 = v11;
      swift_beginAccess();
      sub_1000382BC(&v18, v12, v14);
      swift_endAccess();
    }
  }

  v15 = OBJC_IVAR____TtC8Business14IMBNetworkBody__body;
  swift_beginAccess();
  return *(v2 + v15);
}

uint64_t sub_100091DC4(void *a1)
{
  v2 = v1;
  sub_100091110();
  v4 = [a1 dictionaryRepresentation];
  if (v4 && (v5 = v4, v6 = sub_1000ABFBC(), v5, v7 = sub_100091290(v6), , v7))
  {
    v8 = sub_10004FE58(_swiftEmptyArrayStorage);
    v9 = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
    v19 = v9;
    *&v18 = v7;
    sub_100006910(&v18, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v17, 0x676E697070696873, 0xEF746361746E6F43, isUniquelyReferenced_nonNull_native);
    v11 = v8;
    v12 = sub_1000AC06C();
    v14 = v13;
    v19 = v9;
    *&v18 = v11;
    v15 = v2 + OBJC_IVAR____TtC8Business14IMBNetworkBody__body;
    swift_beginAccess();
    sub_1000382BC(&v18, v12, v14);
    swift_endAccess();
  }

  else
  {
    v15 = v2 + OBJC_IVAR____TtC8Business14IMBNetworkBody__body;
    swift_beginAccess();
  }

  return *v15;
}

uint64_t sub_100091F60(uint64_t a1)
{
  v2 = sub_10000413C(&qword_1000F36E0, &qword_1000B4F40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100091FC8()
{
  v1 = OBJC_IVAR____TtC8Business9RetryView____lazy_storage___messageLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8Business9RetryView____lazy_storage___messageLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business9RetryView____lazy_storage___messageLabel);
  }

  else
  {
    v4 = sub_100092028();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100092028()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = [objc_opt_self() mainBundle];
  v10._countAndFlagsBits = 0xE000000000000000;
  v11._object = 0x80000001000BD200;
  v11._countAndFlagsBits = 0xD000000000000010;
  v12.value._countAndFlagsBits = 0;
  v12.value._object = 0;
  v2.super.isa = v1;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_1000AB61C(v11, v12, v2, v13, v10);

  v3 = sub_1000AC02C();

  [v0 setText:v3];

  v4 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v0 setFont:v4];

  [v0 setNumberOfLines:0];
  [v0 setTextAlignment:1];
  LODWORD(v5) = 1148846080;
  [v0 setContentHuggingPriority:1 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [v0 setContentHuggingPriority:0 forAxis:v6];
  LODWORD(v7) = 1148846080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [v0 setContentCompressionResistancePriority:0 forAxis:v8];
  return v0;
}

id sub_1000921E8()
{
  v1 = OBJC_IVAR____TtC8Business9RetryView____lazy_storage___retryButton;
  v2 = *(v0 + OBJC_IVAR____TtC8Business9RetryView____lazy_storage___retryButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business9RetryView____lazy_storage___retryButton);
  }

  else
  {
    v4 = sub_10009224C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10009224C(uint64_t a1)
{
  v2 = [objc_opt_self() buttonWithType:1];
  v3 = [v2 titleLabel];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [v4 setFont:v5];
  }

  v6 = [objc_opt_self() mainBundle];
  v13._countAndFlagsBits = 0xE000000000000000;
  v14._object = 0x80000001000BD1E0;
  v14._countAndFlagsBits = 0xD000000000000012;
  v15.value._countAndFlagsBits = 0;
  v15.value._object = 0;
  v7.super.isa = v6;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  sub_1000AB61C(v14, v15, v7, v16, v13);

  v8 = sub_1000AC02C();

  [v2 setTitle:v8 forState:0];

  v9 = v2;
  [v9 addTarget:a1 action:"retryLoadingBundle" forControlEvents:64];
  [v9 setContentHorizontalAlignment:0];

  LODWORD(v10) = 1148846080;
  [v9 setContentCompressionResistancePriority:1 forAxis:v10];
  LODWORD(v11) = 1148846080;
  [v9 setContentCompressionResistancePriority:0 forAxis:v11];
  return v9;
}

id sub_100092434()
{
  *&v0[OBJC_IVAR____TtC8Business9RetryView____lazy_storage___messageLabel] = 0;
  *&v0[OBJC_IVAR____TtC8Business9RetryView____lazy_storage___retryButton] = 0;
  *&v0[OBJC_IVAR____TtC8Business9RetryView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7.receiver = v0;
  v7.super_class = type metadata accessor for RetryView();
  v1 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
  v2 = v1;
  v3 = sub_1000AC3FC();
  sub_1000AC2BC();
  sub_1000ABA5C();

  v4 = sub_100091FC8();
  [v2 addSubview:v4];

  v5 = sub_1000921E8();
  [v2 addSubview:v5];

  sub_100092620();
  return v2;
}

void sub_100092620()
{
  v1 = sub_100091FC8();
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];

  v2 = sub_1000921E8();
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v31 = objc_opt_self();
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000B08F0;
  v4 = OBJC_IVAR____TtC8Business9RetryView____lazy_storage___messageLabel;
  v5 = [*&v0[OBJC_IVAR____TtC8Business9RetryView____lazy_storage___messageLabel] topAnchor];
  v6 = [v0 topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:0.0];

  *(v3 + 32) = v7;
  v8 = [*&v0[v4] bottomAnchor];
  v9 = OBJC_IVAR____TtC8Business9RetryView____lazy_storage___retryButton;
  v10 = [*&v0[OBJC_IVAR____TtC8Business9RetryView____lazy_storage___retryButton] topAnchor];
  v11 = [v8 constraintEqualToAnchor:v10 constant:-20.0];

  *(v3 + 40) = v11;
  v12 = [*&v0[v4] leadingAnchor];
  v13 = [v0 layoutMarginsGuide];
  v14 = [v13 leadingAnchor];

  v15 = [v12 constraintEqualToAnchor:v14];
  *(v3 + 48) = v15;
  v16 = [*&v0[v4] trailingAnchor];
  v17 = [v0 layoutMarginsGuide];
  v18 = [v17 trailingAnchor];

  v19 = [v16 constraintEqualToAnchor:v18];
  *(v3 + 56) = v19;
  v20 = [*&v0[v9] leadingAnchor];
  v21 = [v0 layoutMarginsGuide];
  v22 = [v21 leadingAnchor];

  v23 = [v20 constraintEqualToAnchor:v22];
  *(v3 + 64) = v23;
  v24 = [*&v0[v9] trailingAnchor];
  v25 = [v0 layoutMarginsGuide];
  v26 = [v25 trailingAnchor];

  v27 = [v24 constraintEqualToAnchor:v26];
  *(v3 + 72) = v27;
  v28 = [*&v0[v9] bottomAnchor];
  v29 = [v0 bottomAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:0.0];

  *(v3 + 80) = v30;
  sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
  isa = sub_1000AC18C().super.isa;

  [v31 activateConstraints:isa];
}

id sub_100092A40()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_bundleVersion + 8);
    if (v3)
    {
      v4 = *(Strong + OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_bundleVersion);
      v5 = *(Strong + OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_bundleVersion + 8);

      sub_10006A440();
      sub_100068638();
      if (qword_1000EEEA8 != -1)
      {
        swift_once();
      }

      [qword_1000F3AE0 setBundleState:0];
      v6 = qword_1000F3AE0;
      v7._countAndFlagsBits = v4;
      v7._object = v3;
      IMBJITAppBundleManager.load(_:)(v7);
    }

    swift_unknownObjectRelease();
  }

  [v1 removeFromSuperview];

  return [v1 setHidden:1];
}

id sub_100092BD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RetryView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100092C88(char a1, void *a2, id a3)
{
  if (![a3 rootObject])
  {
    goto LABEL_6;
  }

  v7 = swift_dynamicCastObjCProtocolConditional();
  if (!v7)
  {
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v8 = [v7 error];
  swift_unknownObjectRelease();
  if (!v8)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v9 = 1;
LABEL_7:
  *(v3 + OBJC_IVAR____TtC8Business27IMBAuthenticationBubbleView_authenticationFailed) = v9;
  v10 = a2;
  v11 = a3;
  v12 = sub_100080C58(a1 & 1, v10, v11);

  v13 = v12;
  sub_100092E40();

  return v13;
}

void sub_100092DF0()
{
  *(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_shouldShowImage) = (*(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_isInvalid) & 1) == 0;
  sub_10007F3F0();

  sub_100092E40();
}

void sub_100092E40()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business19IMBActionBubbleView_message];
  v2 = [v1 isFromMe];
  v3 = &selRef_replyMessage;
  if (!v2)
  {
    v3 = &selRef_receivedMessage;
  }

  v4 = [v1 *v3];
  v35 = v4;
  if (v0[OBJC_IVAR____TtC8Business19IMBActionBubbleView_isInvalid] == 1)
  {
    v5 = [objc_opt_self() defaultBubbleTitleFor:v1];
    v6 = sub_1000AC06C();
    v8 = v7;

    v9 = &v0[OBJC_IVAR____TtC8Business13IMBBubbleView_title];
    v10 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_title + 8];
    *v9 = v6;
    v9[1] = v8;

    sub_1000A9FF0();
    v11 = 0;
  }

  else
  {
    if (!v4 || (v12 = [v4 alternateTitle]) == 0 && (v12 = objc_msgSend(v35, "title")) == 0)
    {
      v12 = [objc_opt_self() defaultBubbleTitleFor:v1];
    }

    v13 = v12;
    v14 = sub_1000AC06C();
    v16 = v15;

    v17 = &v0[OBJC_IVAR____TtC8Business13IMBBubbleView_title];
    v18 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_title + 8];
    *v17 = v14;
    v17[1] = v16;

    sub_1000A9FF0();
    if (v35 && (v19 = [v35 subtitle]) != 0)
    {
      v20 = v19;
      v21 = sub_1000AC06C();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    v24 = &v0[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitle];
    v25 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitle + 8];
    *v24 = v21;
    v24[1] = v23;

    v26 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabel];
    if (v23)
    {

      v27 = sub_1000AC02C();
    }

    else
    {
      v27 = 0;
    }

    [v26 setText:v27];

    v28 = v35;
    if (v35)
    {
      v28 = [v35 image];
    }

    v29 = OBJC_IVAR____TtC8Business13IMBBubbleView_image;
    v30 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_image];
    *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_image] = v28;
    v31 = v28;

    sub_1000AA2B0();
    v32 = *&v0[v29];
    if (v32)
    {
      v33 = v32;
      if (!v35 || (v34 = [v35 imageDescription]) == 0)
      {
        v34 = 0;
      }

      [v33 setAccessibilityLabel:v34];
    }

    v11 = [v1 isFromMe] ^ 1;
  }

  [v0 setUserInteractionEnabled:v11];
}

id sub_10009314C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBAuthenticationBubbleView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000931A4(void *a1)
{
  v3 = [v1 childViewControllers];
  sub_10009334C();
  v4 = sub_1000AC19C();

  v14 = a1;
  v13[2] = &v14;
  LOBYTE(v3) = sub_100093398(sub_1000934C0, v13, v4);

  if (v3)
  {
    v5 = [v1 view];
    if (v5)
    {
      v6 = v5;
      v7 = [a1 view];
      if (v7)
      {
        v8 = v7;
        [v6 bringSubviewToFront:v7];

        return;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  [a1 willMoveToParentViewController:v1];
  [v1 addChildViewController:a1];
  v9 = [v1 view];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v11 = [a1 view];
  if (!v11)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v12 = v11;
  [v10 addSubview:v11];

  [a1 didMoveToParentViewController:v1];
}

unint64_t sub_10009334C()
{
  result = qword_1000F1DE0;
  if (!qword_1000F1DE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000F1DE0);
  }

  return result;
}

uint64_t sub_100093398(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_1000AC5AC();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1000AC65C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1000934C0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_10009334C();
  return sub_1000AC3DC() & 1;
}

id sub_100093634()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BubbleHostingView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000936D8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8Business17BubbleHostingView_delegate);
  v4 = *(v2 + OBJC_IVAR____TtC8Business17BubbleHostingView_delegate);
  *v3 = a1;
  v3[1] = a2;
  return swift_unknownObjectRelease();
}

double sub_1000936F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business17BubbleHostingView_subview);
  if (!v1)
  {
    return 0.0;
  }

  [v1 sizeThatFits:?];
  return result;
}

uint64_t sub_100093734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  v7 = [objc_allocWithZone(UIImage) init];
  v8 = *(v6 + 64);
  *(v6 + 64) = v7;

  *(v6 + 88) = 257;
  return v6;
}

uint64_t sub_10009378C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 80);

  return swift_deallocClassInstance();
}

id sub_100093808()
{
  if ([*&v0[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message] rootObject])
  {
    type metadata accessor for IMBProposedEvent();
    v1 = swift_dynamicCastClass();
    if (v1)
    {
      v2 = *&v0[OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_proposedEvent];
      *&v0[OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_proposedEvent] = v1;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for IMBTimeSelectedViewController();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  sub_100093E24();
  result = sub_10002CE60();
  if (result == 2)
  {
    return [*&v0[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView] setSeparatorInset:{0.0, 16.0, 0.0, 16.0}];
  }

  return result;
}

char *sub_1000939D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message);
  v2 = [v1 replyMessage];
  if (v2 && (v3 = v2, v4 = [v2 title], v3, v4))
  {
    v5 = sub_1000AC06C();
  }

  else
  {
    v4 = [objc_opt_self() mainBundle];
    v19._countAndFlagsBits = 0xE000000000000000;
    v20._object = 0x80000001000BD420;
    v20._countAndFlagsBits = 0xD000000000000022;
    v21.value._countAndFlagsBits = 0;
    v21.value._object = 0;
    v7.super.isa = v4;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v5 = sub_1000AB61C(v20, v21, v7, v22, v19);
  }

  v8 = v5;
  v9 = v6;

  v10 = [v1 replyMessage];
  if (v10 && (v11 = v10, v12 = [v10 subtitle], v11, v12))
  {
    v13 = sub_1000AC06C();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = [*(v0 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView) separatorColor];
  v17 = objc_allocWithZone(type metadata accessor for IMBTableHeaderView());
  return sub_1000906F4(v8, v9, v13, v15, v16);
}

uint64_t sub_100093B84()
{
  if (sub_10002CE60() == 2)
  {
    v0 = [objc_opt_self() mainBundle];
    v6._countAndFlagsBits = 0xE000000000000000;
    v7._countAndFlagsBits = 1162760004;
    v7._object = 0xE400000000000000;
    v8.value._countAndFlagsBits = 0;
    v8.value._object = 0;
    v1.super.isa = v0;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v2 = sub_1000AB61C(v7, v8, v1, v9, v6);
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0xE000000000000000;
  }

  type metadata accessor for FooterToolbarModel();
  result = swift_allocObject();
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = 1;
  *(result + 16) = 0;
  *(result + 24) = 0xE000000000000000;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0xE000000000000000;
  *(result + 56) = 2;
  *(result + 64) = v2;
  *(result + 72) = v4;
  return result;
}

void sub_100093C60()
{
  sub_100081EF4();
  if (sub_10002CE60() == 2)
  {
    v1 = [v0 view];
    if (!v1)
    {
      __break(1u);
      return;
    }

    v2 = v1;
    if (qword_1000EEDC0 != -1)
    {
      swift_once();
    }

    [v2 setBackgroundColor:qword_1000FBEF0];
  }

  v3 = *&v0[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView];
  [v3 setEstimatedRowHeight:44.0];
  type metadata accessor for IMBInfoTableViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_1000AC02C();
  [v3 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v5];

  type metadata accessor for IMBImageTableViewCell();
  v6 = swift_getObjCClassFromMetadata();
  v7 = sub_1000AC02C();
  [v3 registerClass:v6 forCellReuseIdentifier:v7];

  type metadata accessor for IMBActionTableViewCell();
  v8 = swift_getObjCClassFromMetadata();
  v9 = sub_1000AC02C();
  [v3 registerClass:v8 forCellReuseIdentifier:v9];
}

void sub_100093E24()
{
  v1 = v0;
  v2 = sub_10000413C(&qword_1000EF7D0, &qword_1000B5060);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v7 = &v110[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5, v8);
  v10 = &v110[-v9];
  v11 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_proposedEvent;
  v12 = *(v0 + OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_proposedEvent);
  v13 = BCServerSideOAuth2Request_ptr;
  p_attr = &stru_1000E5FF8.attr;
  v15 = &off_1000F3000;
  if (!v12)
  {
    goto LABEL_46;
  }

  v16 = *(v12 + 88);
  if (v16)
  {
    v17 = [v16 image];
    if (v17)
    {
      v18 = v17;
      type metadata accessor for IMBSelectedCellData();
      v19 = swift_allocObject();
      *(v19 + 72) = 0;
      *(v19 + 80) = 0;
      *(v19 + 16) = 0;
      *(v19 + 24) = 0xE000000000000000;
      *(v19 + 32) = 0;
      *(v19 + 40) = 0xE000000000000000;
      *(v19 + 48) = 0x6C65436567616D49;
      *(v19 + 56) = 0xE90000000000006CLL;
      *(v19 + 64) = v18;
      *(v19 + 88) = 257;
      v20 = *(v0 + v11);
      if (v20 && (v21 = *(v20 + 88)) != 0)
      {
        v22 = v18;
        v23 = [v21 description];
        if (!v23)
        {
          sub_1000AC06C();
          v23 = sub_1000AC02C();
        }
      }

      else
      {
        v24 = v18;
        v23 = 0;
      }

      [v18 setAccessibilityLabel:v23];

      *(v19 + 89) = sub_10002CE60() < 2u;
      v25 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_tableViewData;
      swift_beginAccess();

      sub_1000AC17C();
      if (*((*(v1 + v25) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v25) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v53 = *((*(v1 + v25) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1000AC1BC();
        v15 = &off_1000F3000;
      }

      sub_1000AC1DC();
      swift_endAccess();

      v13 = BCServerSideOAuth2Request_ptr;
      p_attr = &stru_1000E5FF8.attr;
    }
  }

  v26 = *(v1 + v11);
  if (!v26)
  {
    goto LABEL_46;
  }

  v27 = *(v26 + 80);
  if (!v27)
  {
    goto LABEL_67;
  }

  v28 = &stru_1000E5FF8.attr;
  if (v27 >> 62)
  {
    if (v27 < 0)
    {
      v52 = *(v26 + 80);
    }

    if (!sub_1000AC65C())
    {
      goto LABEL_38;
    }
  }

  else if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_38;
  }

  if ((v27 & 0xC000000000000001) != 0)
  {

    v29 = sub_1000AC5AC();
  }

  else
  {
    if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_65;
    }

    v29 = *(v27 + 32);
  }

  v30 = OBJC_IVAR____TtC8Business15IMBProposedDate_timeslots;
  swift_beginAccess();
  v31 = *(v29 + v30);

  if (v31 >> 62)
  {
    if (sub_1000AC65C())
    {
LABEL_21:
      if ((v31 & 0xC000000000000001) == 0)
      {
        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v32 = *(v31 + 32);

LABEL_24:

          v33 = [objc_allocWithZone(NSDateFormatter) init];
          v34 = 1;
          [v33 setTimeStyle:1];
          [v33 setDateStyle:2];
          [v33 setDoesRelativeDateFormatting:1];
          v35 = [*(v26 + 56) timeZone];
          v36 = v11;
          if (v35)
          {
            v37 = v35;
            sub_1000AB8FC();

            v34 = 0;
          }

          v38 = sub_1000AB91C();
          v39 = *(v38 - 8);
          (*(v39 + 56))(v7, v34, 1, v38);
          sub_1000126F0(v7, v10);
          isa = 0;
          if ((*(v39 + 48))(v10, 1, v38) != 1)
          {
            isa = sub_1000AB8EC().super.isa;
            (*(v39 + 8))(v10, v38);
          }

          [v33 setTimeZone:isa];

          v41 = [objc_opt_self() mainBundle];
          v108._countAndFlagsBits = 0xE000000000000000;
          v111._countAndFlagsBits = 1162692948;
          v111._object = 0xE400000000000000;
          v118.value._countAndFlagsBits = 0;
          v118.value._object = 0;
          v42.super.isa = v41;
          v123._countAndFlagsBits = 0;
          v123._object = 0xE000000000000000;
          v43 = sub_1000AB61C(v111, v118, v42, v123, v108);
          v45 = v44;

          v46 = sub_1000AB77C().super.isa;
          v47 = [v33 stringFromDate:v46];

          v48 = sub_1000AC06C();
          v50 = v49;

          type metadata accessor for IMBSelectedCellData();
          swift_allocObject();
          sub_100093734(v43, v45, v48, v50, 0x6C65436C6562614CLL, 0xE90000000000006CLL);
          v15 = &off_1000F3000;
          v51 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_tableViewData;
          swift_beginAccess();

          sub_1000AC17C();
          if (*((*(v1 + v51) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v51) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v107 = *((*(v1 + v51) & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1000AC1BC();
            v15 = &off_1000F3000;
          }

          sub_1000AC1DC();
          swift_endAccess();

          v11 = v36;
          v28 = (&stru_1000E5FF8 + 8);
          v13 = BCServerSideOAuth2Request_ptr;
          goto LABEL_38;
        }

        __break(1u);
LABEL_67:
        __break(1u);
        return;
      }

LABEL_65:
      sub_1000AC5AC();
      goto LABEL_24;
    }
  }

  else if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

LABEL_38:
  v54 = *(v1 + v11);
  p_attr = v28;
  if (v54)
  {
    v55 = [*(v54 + 56) structuredLocation];
    if (v55)
    {
      v56 = v55;
      v57 = v13[36];
      v58 = [objc_opt_self() v28[384]];
      v59 = 0xE000000000000000;
      v108._countAndFlagsBits = 0xE000000000000000;
      v112._countAndFlagsBits = 0x4E4F495441434F4CLL;
      v112._object = 0xE800000000000000;
      v119.value._countAndFlagsBits = 0;
      v119.value._object = 0;
      v60.super.isa = v58;
      v124._countAndFlagsBits = 0;
      v124._object = 0xE000000000000000;
      v61 = sub_1000AB61C(v112, v119, v60, v124, v108);
      v63 = v62;

      v64 = [v56 title];
      if (v64)
      {
        v65 = v64;
        v66 = sub_1000AC06C();
        v59 = v67;
      }

      else
      {
        v66 = 0;
      }

      type metadata accessor for IMBSelectedCellData();
      swift_allocObject();
      sub_100093734(v61, v63, v66, v59, 0x6C65436C6562614CLL, 0xE90000000000006CLL);
      v68 = v15[311];
      swift_beginAccess();

      sub_1000AC17C();
      if (*((*(v68 + v1) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v68 + v1) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v106 = *((*(v68 + v1) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1000AC1BC();
      }

      sub_1000AC1DC();
      swift_endAccess();

      v13 = BCServerSideOAuth2Request_ptr;
      p_attr = v28;
    }
  }

LABEL_46:
  if (sub_10002CE60() != 2)
  {
    v69 = v13[36];
    v70 = [objc_opt_self() p_attr[384]];
    v108._countAndFlagsBits = 0xE000000000000000;
    v113._countAndFlagsBits = 0;
    v113._object = 0xE000000000000000;
    v120.value._countAndFlagsBits = 0;
    v120.value._object = 0;
    v71.super.isa = v70;
    v125._countAndFlagsBits = 0;
    v125._object = 0xE000000000000000;
    v72 = sub_1000AB61C(v113, v120, v71, v125, v108);
    v74 = v73;

    type metadata accessor for IMBSelectedCellData();
    v75 = swift_allocObject();
    sub_100093734(v72, v74, 0, 0xE000000000000000, 0x6C65436C6562614CLL, 0xE90000000000006CLL);
    *(v75 + 89) = 0;
    v76 = v15[311];
    swift_beginAccess();

    sub_1000AC17C();
    if (*((*(v76 + v1) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v76 + v1) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v105 = *((*(v76 + v1) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1000AC1BC();
    }

    sub_1000AC1DC();
    swift_endAccess();
  }

  v77 = v13[36];
  v78 = objc_opt_self();
  v79 = [v78 p_attr[384]];
  v108._countAndFlagsBits = 0xE000000000000000;
  v114._countAndFlagsBits = 0x435F4F545F444441;
  v114._object = 0xEF5241444E454C41;
  v121.value._countAndFlagsBits = 0;
  v121.value._object = 0;
  v80.super.isa = v79;
  v126._countAndFlagsBits = 0;
  v126._object = 0xE000000000000000;
  v81 = sub_1000AB61C(v114, v121, v80, v126, v108);
  v83 = v82;

  type metadata accessor for IMBSelectedCellData();
  v84 = swift_allocObject();
  sub_100093734(v81, v83, 0, 0xE000000000000000, 0x65436E6F69746341, 0xEA00000000006C6CLL);
  v85 = 0;
  if (sub_10002CE60() != 2)
  {
    sub_100005A24(0, &qword_1000F3A70, UIImage_ptr);
    v115._countAndFlagsBits = 0x6E656C6143646441;
    v115._object = 0xEF6E6F6349726164;
    v86 = sub_1000AC3AC(v115).super.isa;
    v85 = [(objc_class *)v86 imageWithRenderingMode:2];
  }

  v87 = *(v84 + 64);
  *(v84 + 64) = v85;

  v88 = v11;
  *(v84 + 88) = *(v1 + v11) != 0;
  v89 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_tableViewData;
  swift_beginAccess();

  sub_1000AC17C();
  if (*((*(v1 + v89) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v89) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v103 = *((*(v1 + v89) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1000AC1BC();
  }

  sub_1000AC1DC();
  swift_endAccess();
  v90 = [v78 p_attr[384]];
  v109._countAndFlagsBits = 0xE000000000000000;
  v116._countAndFlagsBits = 0x455249445F544547;
  v116._object = 0xEE00534E4F495443;
  v122.value._countAndFlagsBits = 0;
  v122.value._object = 0;
  v91.super.isa = v90;
  v127._countAndFlagsBits = 0;
  v127._object = 0xE000000000000000;
  v92 = sub_1000AB61C(v116, v122, v91, v127, v109);
  v94 = v93;

  v95 = swift_allocObject();
  sub_100093734(v92, v94, 0, 0xE000000000000000, 0x65436E6F69746341, 0xEA00000000006C6CLL);
  v96 = 0;
  if (sub_10002CE60() != 2)
  {
    sub_100005A24(0, &qword_1000F3A70, UIImage_ptr);
    v117._countAndFlagsBits = 0x6F69746365726944;
    v117._object = 0xEE006E6F6349736ELL;
    v97 = sub_1000AC3AC(v117).super.isa;
    v96 = [(objc_class *)v97 imageWithRenderingMode:2];
  }

  v98 = *(v95 + 64);
  *(v95 + 64) = v96;

  v99 = *(v1 + v88);
  if (v99)
  {
    v100 = [*(v99 + 56) structuredLocation];
    if (v100 && (v101 = v100, v102 = [v100 geoLocation], v101, v102))
    {

      LOBYTE(v99) = 1;
    }

    else
    {
      LOBYTE(v99) = 0;
    }
  }

  *(v95 + 88) = v99;
  *(v95 + 89) = sub_10002CE60() > 1u;
  swift_beginAccess();

  sub_1000AC17C();
  if (*((*(v1 + v89) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v89) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v104 = *((*(v1 + v89) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1000AC1BC();
  }

  sub_1000AC1DC();
  swift_endAccess();
  [*(v1 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView) reloadData];
}

id sub_100094BC4()
{
  v1 = v0;
  v73 = sub_10000413C(&qword_1000F0270, &unk_1000B0480);
  v2 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73, v3);
  v72 = &v65 - v4;
  v5 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v65 - v8;
  v10 = sub_1000AB6EC();
  v74 = *(v10 - 1);
  v11 = *(v74 + 64);
  __chkstk_darwin(v10, v12);
  v71 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000AB7EC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = __chkstk_darwin(v14, v17);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v18, v21);
  v24 = &v65 - v23;
  v25 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_proposedEvent;
  v26 = *&v0[OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_proposedEvent];
  if (v26)
  {
    v27 = *(v26 + 80);
    if (!v27)
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v27 >> 62)
    {
      result = sub_1000AC65C();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    if ((v27 & 0xC000000000000001) != 0)
    {

      v28 = sub_1000AC5AC();
    }

    else
    {
      if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_34;
      }

      v28 = *(v27 + 32);
    }

    v29 = OBJC_IVAR____TtC8Business15IMBProposedDate_timeslots;
    swift_beginAccess();
    v30 = *(v28 + v29);

    if (v30 >> 62)
    {
      if (sub_1000AC65C())
      {
LABEL_10:
        if ((v30 & 0xC000000000000001) == 0)
        {
          if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_36;
          }

          v31 = *(v30 + 32);

LABEL_13:

          v32 = *&v1[v25];
          if (!v32)
          {
          }

          v66 = v10;
          v33 = *(v32 + 56);
          v70 = v15;
          v34 = v31;
          v35 = *(v32 + 16);
          v10 = v33;
          v36 = v35;
          v69 = v14;
          v37 = v36;
          v38 = [v36 defaultCalendarForNewEvents];
          [v10 setCalendar:v38];

          isa = sub_1000AB77C().super.isa;
          [v10 setStartDate:isa];

          sub_1000AB7AC();
          v68 = v34;
          v40 = *(v34 + OBJC_IVAR____TtC8Business19IMBProposedTimeslot_duration);
          v41 = v37;
          v42 = v69;
          sub_1000AB79C();
          v43 = sub_1000AB77C().super.isa;
          v44 = *(v70 + 8);
          v44(v24, v42);
          [v10 setEndDate:v43];

          v76[0] = 0;
          v67 = v41;
          v45 = [v41 saveEvent:v10 span:0 error:v76];
          v46 = v76[0];
          if (v45)
          {
            v47 = &v1[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_urlHelper];
            sub_10000E6D4(&v1[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_urlHelper], v76);
            sub_1000058D0(v76, v76[3]);
            v48 = v46;
            result = [v10 startDate];
            if (result)
            {
              v49 = result;
              sub_1000AB7BC();

              sub_10004EC6C();
              v44(v20, v42);
              v50 = v74;
              v51 = v66;
              if ((*(v74 + 48))(v9, 1, v66) != 1)
              {
                v61 = v71;
                (*(v50 + 32))(v71, v9, v51);
                sub_10000E738(v76);
                sub_1000058D0(v47, *(v47 + 3));
                sub_10004E400(v61, 1, 0, 0);

                return (*(v50 + 8))(v61, v51);
              }

              sub_10004B9C0(v9);
              sub_10000E738(v76);
              if (qword_1000EEE80 != -1)
              {
                swift_once();
              }

              sub_1000AC2AC();
              sub_10000413C(&qword_1000F0060, &unk_1000B0470);
              v52 = swift_allocObject();
              *(v52 + 16) = xmmword_1000AF0E0;
              v53 = [v10 startDate];
              v54 = v72;
              if (v53)
              {
                v55 = v53;
                sub_1000AB7BC();

                v56 = 0;
              }

              else
              {
                v56 = 1;
              }

              (*(v70 + 56))(v54, v56, 1, v42);
              v62 = sub_1000AC0CC();
              v64 = v63;
              *(v52 + 56) = &type metadata for String;
              *(v52 + 64) = sub_10000587C();
              *(v52 + 32) = v62;
              *(v52 + 40) = v64;
              sub_1000ABA5C();
            }

LABEL_38:
            __break(1u);
            return result;
          }

          v57 = v76[0];
          v58 = sub_1000AB63C();

          swift_willThrow();
          v76[0] = v58;
          sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
          v28 = sub_100005A24(0, &qword_1000F3B90, NSError_ptr);
          swift_dynamicCast();
          v1 = v75;
          if (qword_1000EEE80 == -1)
          {
LABEL_23:
            sub_1000AC2AC();
            sub_10000413C(&qword_1000F0060, &unk_1000B0470);
            v59 = swift_allocObject();
            *(v59 + 16) = xmmword_1000AF0E0;
            *(v59 + 56) = v28;
            *(v59 + 64) = sub_100096660();
            *(v59 + 32) = v1;
            v60 = v1;
            sub_1000ABA5C();
          }

LABEL_36:
          swift_once();
          goto LABEL_23;
        }

LABEL_34:
        v31 = sub_1000AC5AC();
        goto LABEL_13;
      }
    }

    else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }
  }

  return result;
}

void sub_100095428()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_proposedEvent);
  if (v1)
  {
    v2 = [*(v1 + 56) structuredLocation];
    if (v2)
    {
      v25 = v2;
      v3 = [v2 geoLocation];
      if (v3)
      {
        v4 = v3;
        v5 = objc_opt_self();
        v6 = [v5 mapItemForCurrentLocation];
        [v4 coordinate];
        v9 = [objc_allocWithZone(MKPlacemark) initWithCoordinate:{v7, v8}];
        v10 = [objc_allocWithZone(MKMapItem) initWithPlacemark:v9];
        v11 = sub_1000AC06C();
        v13 = v12;
        v14 = sub_1000AC06C();
        v16 = v15;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_10003A704(v14, v16, v11, v13, isUniquelyReferenced_nonNull_native);

        v18 = [v25 title];
        [v10 setName:v18];

        sub_10000413C(&unk_1000F06B0, qword_1000B0520);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_1000B3780;
        *(v19 + 32) = v6;
        *(v19 + 40) = v10;
        sub_100005A24(0, &qword_1000F3A58, MKMapItem_ptr);
        v20 = v6;
        v21 = v10;
        isa = sub_1000AC18C().super.isa;

        sub_10004DCE8(_swiftEmptyDictionarySingleton);

        v23 = sub_1000ABFAC().super.isa;

        LOBYTE(v5) = [v5 openMapsWithItems:isa launchOptions:v23];

        if ((v5 & 1) == 0)
        {
          if (qword_1000EEE80 != -1)
          {
            swift_once();
          }

          sub_1000AC2AC();
          sub_1000ABA5C();
        }

        v24 = v21;
      }

      else
      {
        v24 = v25;
      }
    }
  }
}

void sub_1000957F8(void *a1)
{
  v2 = v1;
  v4 = sub_1000AB95C();
  v5 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_tableViewData;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if ((v6 & 0xC000000000000001) == 0)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v7 = *(v6 + 8 * v4 + 32);

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_33;
  }

  v7 = sub_1000AC5AC();

LABEL_5:
  v9 = *(v7 + 48);
  v8 = *(v7 + 56);
  if (v9 != 0x6C65436C6562614CLL || v8 != 0xE90000000000006CLL)
  {
    v11 = *(v7 + 48);
    v12 = *(v7 + 56);
    if ((sub_1000AC7AC() & 1) == 0)
    {
      v29 = v9 == 0x6C65436567616D49 && v8 == 0xE90000000000006CLL;
      if (!v29 && (sub_1000AC7AC() & 1) == 0)
      {

        v38 = sub_1000AC02C();

        v39 = [a1 dequeueReusableCellWithIdentifier:v38];

        if (v39)
        {
          type metadata accessor for IMBActionTableViewCell();
          v15 = swift_dynamicCastClassUnconditional();
          v40 = OBJC_IVAR____TtC8Business22IMBActionTableViewCell_iconView;
          [*&v15[OBJC_IVAR____TtC8Business22IMBActionTableViewCell_iconView] setImage:*(v7 + 64)];
          [*&v15[v40] setHidden:*(v7 + 64) == 0];
          v41 = *(v7 + 16);
          v42 = *(v7 + 24);
          v43 = *&v15[OBJC_IVAR____TtC8Business22IMBActionTableViewCell_titleLabel];

          v44 = sub_1000AC02C();

          [v43 setText:v44];

          v45 = OBJC_IVAR____TtC8Business22IMBActionTableViewCell_actionEnabled;
          v15[OBJC_IVAR____TtC8Business22IMBActionTableViewCell_actionEnabled] = *(v7 + 88);
          sub_100055680();
          v46 = UIAccessibilityTraitButton;
          if ((v15[v45] & 1) == 0)
          {
            v47 = UIAccessibilityTraitNotEnabled;
            if ((UIAccessibilityTraitNotEnabled & ~UIAccessibilityTraitButton) == 0)
            {
              v47 = 0;
            }

            v46 = v47 | UIAccessibilityTraitButton;
          }

          [v15 setAccessibilityTraits:v46];
          goto LABEL_12;
        }

LABEL_35:
        __break(1u);
        return;
      }

      v30 = sub_1000AC02C();

      v31 = [a1 dequeueReusableCellWithIdentifier:v30];

      if (v31)
      {
        type metadata accessor for IMBImageTableViewCell();
        v15 = swift_dynamicCastClassUnconditional();
        v32 = OBJC_IVAR____TtC8Business21IMBImageTableViewCell_largeImageView;
        [*&v15[OBJC_IVAR____TtC8Business21IMBImageTableViewCell_largeImageView] setImage:*(v7 + 64)];
        sub_10000413C(&qword_1000F06D0, &unk_1000B06D0);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_1000AF0E0;
        v34 = *&v15[v32];
        *(v33 + 56) = sub_100005A24(0, &qword_1000EF990, UIImageView_ptr);
        *(v33 + 32) = v34;
        v35 = v31;
        v36 = v34;
        isa = sub_1000AC18C().super.isa;

        [v15 setAccessibilityElements:isa];

        goto LABEL_12;
      }

LABEL_34:
      __break(1u);
      goto LABEL_35;
    }
  }

  v13 = sub_1000AC02C();

  v14 = [a1 dequeueReusableCellWithIdentifier:v13];

  if (!v14)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  type metadata accessor for IMBInfoTableViewCell();
  v15 = swift_dynamicCastClassUnconditional();
  v16 = *(v7 + 16);
  v17 = *(v7 + 24);
  v18 = *&v15[OBJC_IVAR____TtC8Business20IMBInfoTableViewCell_leftLabel];

  v19 = sub_1000AC02C();

  [v18 setText:v19];

  v20 = *(v7 + 32);
  v21 = *(v7 + 40);
  v22 = *&v15[OBJC_IVAR____TtC8Business20IMBInfoTableViewCell_rightLabel];

  v23 = sub_1000AC02C();

  [v22 setText:v23];

LABEL_12:
  if (*(v7 + 89) == 1)
  {
    if (sub_10002CE60() != 2)
    {
      [a1 layoutMargins];
      [v15 setSeparatorInset:{v24, v25, v26, v27}];
    }
  }

  else
  {
    [a1 bounds];
    [v15 setSeparatorInset:{0.0, v28, 0.0, 0.0}];
  }
}

uint64_t sub_100095F74(void *a1)
{
  v3 = sub_1000AB95C();
  v4 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_tableViewData;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  if ((v6 & 0xC000000000000001) != 0)
  {

    v7 = sub_1000AC5AC();

LABEL_5:
    isa = sub_1000AB92C().super.isa;
    [a1 deselectRowAtIndexPath:isa animated:1];

    v9 = *(v7 + 48) == 0x65436E6F69746341 && *(v7 + 56) == 0xEA00000000006C6CLL;
    if (!v9 && (sub_1000AC7AC() & 1) == 0 || *(v7 + 88) != 1)
    {
    }

    v11 = *(v7 + 16);
    v10 = *(v7 + 24);
    v12 = objc_opt_self();

    v13 = [v12 mainBundle];
    v28._countAndFlagsBits = 0xE000000000000000;
    v30._countAndFlagsBits = 0x435F4F545F444441;
    v30._object = 0xEF5241444E454C41;
    v32.value._countAndFlagsBits = 0;
    v32.value._object = 0;
    v14.super.isa = v13;
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    v15 = sub_1000AB61C(v30, v32, v14, v34, v28);
    v17 = v16;

    if (v11 == v15 && v10 == v17)
    {
    }

    else
    {
      v19 = sub_1000AC7AC();

      if ((v19 & 1) == 0)
      {
        v21 = *(v7 + 16);
        v20 = *(v7 + 24);

        v22 = [v12 mainBundle];
        v29._countAndFlagsBits = 0xE000000000000000;
        v31._countAndFlagsBits = 0x455249445F544547;
        v31._object = 0xEE00534E4F495443;
        v33.value._countAndFlagsBits = 0;
        v33.value._object = 0;
        v23.super.isa = v22;
        v35._countAndFlagsBits = 0;
        v35._object = 0xE000000000000000;
        v24 = sub_1000AB61C(v31, v33, v23, v35, v29);
        v26 = v25;

        if (v21 == v24 && v20 == v26)
        {

LABEL_23:
          sub_100095428();
        }

        v27 = sub_1000AC7AC();

        if (v27)
        {
          goto LABEL_23;
        }
      }
    }

    sub_100094BC4();
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v6 + 8 * v3 + 32);

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_100096368(void *a1)
{
  v3 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_dayLabel;
  *&v1[v3] = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_dateLabel;
  *&v1[v4] = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_timeLabel;
  *&v1[v5] = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_warningLabel;
  *&v1[v6] = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_containerView;
  *&v1[v7] = [objc_allocWithZone(UIView) init];
  *&v1[OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_tableViewData] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_proposedEvent] = 0;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for IMBTimeSelectedViewController();
  v8 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);

  if (v8)
  {
  }

  return v8;
}

uint64_t sub_1000964B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_tableViewData);

  v2 = *(v0 + OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_proposedEvent);
}

id sub_100096548()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBTimeSelectedViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100096660()
{
  result = qword_1000F3A68;
  if (!qword_1000F3A68)
  {
    sub_100005A24(255, &qword_1000F3B90, NSError_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F3A68);
  }

  return result;
}

uint64_t sub_1000966C8()
{
  v1 = v0;
  v2 = sub_1000AB95C();
  v3 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_tableViewData;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = sub_1000AC5AC();

    goto LABEL_5;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v2 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v6 = *(v5 + 8 * v2 + 32);

LABEL_5:
  v7 = *(v6 + 48) == 0x6C65436567616D49 && *(v6 + 56) == 0xE90000000000006CLL;
  if (!v7 && (sub_1000AC7AC() & 1) == 0)
  {
  }

  [*(v1 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView) bounds];
  CGRectGetWidth(v8);
}

__n128 sub_100096824(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100096838(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_100096880(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

char *sub_1000968D0(char a1, uint64_t a2)
{
  if (!a2)
  {
LABEL_13:
    if (qword_1000EEE80 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_55;
  }

  v4 = sub_1000AC06C();
  if (!*(a2 + 16))
  {

    goto LABEL_12;
  }

  v6 = sub_10004F0CC(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  sub_1000068B4(*(a2 + 56) + 32 * v6, v32);

  sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (!*(v30 + 16) || (v9 = sub_10004F0CC(0x736D657469, 0xE500000000000000), (v10 & 1) == 0) || (sub_1000068B4(*(v30 + 56) + 32 * v9, v32), sub_10000413C(&unk_1000F0240, &qword_1000B05A0), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_1000EEE80 == -1)
    {
      goto LABEL_14;
    }

LABEL_55:
    swift_once();
    goto LABEL_14;
  }

  v11 = v30;
  v29 = *(v30 + 16);
  if ((v29 - 6) < 0xFFFFFFFFFFFFFFFCLL)
  {

    if (qword_1000EEE80 != -1)
    {
LABEL_57:
      swift_once();
    }

    sub_1000AC2AC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1000AF0E0;
    *(v12 + 56) = &type metadata for Int;
    *(v12 + 64) = &protocol witness table for Int;
    *(v12 + 32) = v29;
    sub_1000ABA5C();

    return 0;
  }

  v14 = 0;
  v15 = _swiftEmptyArrayStorage;
  do
  {
    if (v14 >= *(v11 + 16))
    {
      __break(1u);
      goto LABEL_57;
    }

    v16 = *(v11 + 8 * v14 + 32);
    if (!*(v16 + 16))
    {

LABEL_35:

      if (qword_1000EEE80 != -1)
      {
        goto LABEL_55;
      }

      goto LABEL_14;
    }

    v17 = v15;
    v18 = *(v11 + 8 * v14 + 32);

    v19 = sub_10004F0CC(0x696669746E656469, 0xEA00000000007265);
    if ((v20 & 1) == 0 || (sub_1000068B4(*(v16 + 56) + 32 * v19, v32), (swift_dynamicCast() & 1) == 0))
    {

      goto LABEL_35;
    }

    if (!*(v16 + 16) || (v21 = sub_10004F0CC(0x656C746974, 0xE500000000000000), (v22 & 1) == 0))
    {

      goto LABEL_38;
    }

    sub_1000068B4(*(v16 + 56) + 32 * v21, v32);

    if ((swift_dynamicCast() & 1) == 0)
    {

LABEL_38:

      if (qword_1000EEE80 != -1)
      {
        goto LABEL_55;
      }

      goto LABEL_14;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_100038B5C(0, *(v17 + 2) + 1, 1, v17);
    }

    v15 = v17;
    v23 = *(v17 + 2);
    v24 = *(v15 + 3);
    if (v23 >= v24 >> 1)
    {
      v15 = sub_100038B5C((v24 > 1), v23 + 1, 1, v15);
    }

    ++v14;
    *(v15 + 2) = v23 + 1;
    v25 = &v15[32 * v23];
    *(v25 + 4) = v30;
    *(v25 + 5) = v31;
    *(v25 + 6) = v30;
    *(v25 + 7) = v31;
    v11 = v30;
  }

  while (v29 != v14);
  v26 = v15;

  if ((a1 & 1) == 0)
  {

    return v26;
  }

  if (!*(v30 + 16) || (v27 = sub_10004F0CC(0x64657463656C6573, 0xED00007865646E49), (v28 & 1) == 0))
  {

    goto LABEL_52;
  }

  sub_1000068B4(*(v30 + 56) + 32 * v27, v32);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_52:

    if (qword_1000EEE80 != -1)
    {
      goto LABEL_55;
    }

    goto LABEL_14;
  }

  result = v26;
  if ((v30 & 0x8000000000000000) == 0 && v30 < *(v26 + 2))
  {
    return result;
  }

  if (qword_1000EEE80 != -1)
  {
    goto LABEL_55;
  }

LABEL_14:
  sub_1000AC2AC();
  sub_1000ABA5C();
  return 0;
}

char *sub_100096FFC(void *a1)
{
  v2 = [a1 isFromMe];
  v3 = [a1 messageData];
  if (v3 && (v4 = v3, v5 = [v3 jsonDictionary], v4, v5))
  {
    v6 = sub_1000ABFBC();
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_1000968D0(v2, v6);

  if (v7)
  {
  }

  return v7;
}

__n128 sub_1000970E0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000970EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100097134(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

Swift::Int sub_1000971A0()
{
  v1 = *v0;
  sub_1000AC87C();
  sub_1000AC88C(v1);
  return sub_1000AC8CC();
}

Swift::Int sub_100097214()
{
  v1 = *v0;
  sub_1000AC87C();
  sub_1000AC88C(v1);
  return sub_1000AC8CC();
}

unint64_t sub_100097258@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10009A244(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id IMBJITAppBundleManager.containerID.getter()
{
  v1 = OBJC_IVAR____TtC8Business22IMBJITAppBundleManager____lazy_storage___containerID;
  v2 = *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager____lazy_storage___containerID);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager____lazy_storage___containerID);
  }

  else
  {
    if (_BSIsInternalInstall())
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    v5 = objc_allocWithZone(CKContainerID);
    v6 = sub_1000AC02C();
    v7 = [v5 initWithContainerIdentifier:v6 environment:v4];

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id IMBJITAppBundleManager.container.getter()
{
  v1 = OBJC_IVAR____TtC8Business22IMBJITAppBundleManager____lazy_storage___container;
  v2 = *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager____lazy_storage___container);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager____lazy_storage___container);
  }

  else
  {
    v4 = IMBJITAppBundleManager.containerID.getter();
    v5 = [objc_allocWithZone(CKContainer) initWithContainerID:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id IMBJITAppBundleManager.database.getter()
{
  v1 = OBJC_IVAR____TtC8Business22IMBJITAppBundleManager____lazy_storage___database;
  v2 = *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager____lazy_storage___database);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager____lazy_storage___database);
  }

  else
  {
    v4 = IMBJITAppBundleManager.container.getter();
    v5 = [v4 publicCloudDatabase];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t IMBJITAppBundleManager.currentLoadedBundleVersion.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_currentLoadedBundleVersion);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t IMBJITAppBundleManager.currentLoadedBundleVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_currentLoadedBundleVersion);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

id sub_100097584()
{
  result = [objc_allocWithZone(type metadata accessor for IMBJITAppBundleManager()) init];
  qword_1000F3AE0 = result;
  return result;
}

uint64_t IMBJITAppBundleManager.bundleState.getter()
{
  v1 = OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_bundleState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t IMBJITAppBundleManager.bundleState.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_bundleState;
  swift_beginAccess();
  *(v1 + v3) = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10006A938();
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1000977B4()
{
  if (qword_1000EEEA8 != -1)
  {
    swift_once();
  }

  v1 = qword_1000F3AE0;

  return v1;
}

uint64_t IMBJITAppBundleManager.savedBundleVersion.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_userDefaults);
  v2 = sub_1000AC02C();
  v3 = [v1 valueForKey:v2];

  if (v3)
  {
    sub_1000AC47C();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    sub_10000E784(v11, &unk_1000F1DF0, &qword_1000B18F0);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v4 = 3157552;
    v5 = sub_1000AC02C();
    v6 = sub_1000AC02C();
    [v1 setObject:v5 forKey:v6];

    return v4;
  }

  return v8;
}

uint64_t IMBJITAppBundleManager.recordChangeTag.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_userDefaults);
  v2 = sub_1000AC02C();
  v3 = [v1 valueForKey:v2];

  if (v3)
  {
    sub_1000AC47C();
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
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_10000E784(v8, &unk_1000F1DF0, &qword_1000B18F0);
  }

  return 0;
}

uint64_t IMBJITAppBundleManager.bundleBasePath.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000AB6EC();
  v17 = *(v2 - 8);
  v3 = *(v17 + 64);
  v5 = __chkstk_darwin(v2, v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v16 - v9;
  v11 = [objc_opt_self() defaultManager];
  v12 = [v11 URLsForDirectory:13 inDomains:1];
  v13 = sub_1000AC19C();

  if (*(v13 + 16))
  {
    (*(v17 + 16))(v7, v13 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v2);

    (*(v17 + 32))(v10, v7, v2);
    sub_1000AB68C();

    (*(v17 + 8))(v10, v2);
    return (*(v17 + 56))(a1, 0, 1, v2);
  }

  else
  {

    v15 = *(v17 + 56);

    return v15(a1, 1, 1, v2);
  }
}

uint64_t IMBJITAppBundleManager.savedBundlePath.getter@<X0>(char *a1@<X8>)
{
  v3 = sub_1000AB6EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = __chkstk_darwin(v3, v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v22 - v11;
  v13 = *(v1 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_userDefaults);
  v14 = sub_1000AC02C();
  v15 = [v13 URLForKey:v14];

  if (!v15)
  {
    goto LABEL_5;
  }

  sub_1000AB6AC();

  v16 = *(v4 + 32);
  v16(v12, v9, v3);
  v17 = [objc_opt_self() defaultManager];
  sub_1000AB6BC();
  v18 = sub_1000AC02C();

  v19 = [v17 fileExistsAtPath:v18];

  if (!v19)
  {
    (*(v4 + 8))(v12, v3);
LABEL_5:
    v20 = 1;
    return (*(v4 + 56))(a1, v20, 1, v3);
  }

  v16(a1, v12, v3);
  v20 = 0;
  return (*(v4 + 56))(a1, v20, 1, v3);
}

Swift::Void __swiftcall IMBJITAppBundleManager.load(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = sub_10000413C(&unk_1000F3B10, &qword_1000B4168);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v24 - v8;
  v10 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = v24 - v13;
  v15 = sub_1000AB6EC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  v20 = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  IMBJITAppBundleManager.savedBundlePath.getter(v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10000E784(v14, &unk_1000F06A0, &unk_1000B0450);
LABEL_5:
    [v2 setBundleState:4];
    goto LABEL_6;
  }

  (*(v16 + 32))(v20, v14, v15);
  v24[2] = IMBJITAppBundleManager.savedBundleVersion.getter();
  v24[3] = v21;
  v24[0] = countAndFlagsBits;
  v24[1] = object;
  v22 = sub_1000AB83C();
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
  sub_10002BD70();
  v23 = sub_1000AC45C();
  sub_10000E784(v9, &unk_1000F3B10, &qword_1000B4168);

  if (v23)
  {
    (*(v16 + 8))(v20, v15);
    goto LABEL_5;
  }

  if ([v2 bundleState] == 3)
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC28C();
    sub_1000ABA5C();
  }

  else
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC28C();
    sub_1000ABA5C();
    IMBJITAppBundleManager.loadBundle(_:version:)(v20, countAndFlagsBits, object);
  }

  (*(v16 + 8))(v20, v15);
LABEL_6:
  IMBJITAppBundleManager.updateBundle(_:)(countAndFlagsBits, object);
}

void IMBJITAppBundleManager.updateBundle(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000413C(&unk_1000F3B10, &qword_1000B4168);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = v35 - v9;
  v11 = OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingBundleUpdate;
  if (*(v2 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingBundleUpdate) != 1)
  {
LABEL_6:
    v20 = (v3 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingUpdateVersion);
    v21 = *(v3 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingUpdateVersion + 8);
    *v20 = a1;
    v20[1] = a2;

    *(v3 + v11) = 1;
    sub_100005A24(0, &qword_1000F3BA0, NSPredicate_ptr);
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1000AF0E0;
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = sub_10000587C();
    *(v22 + 32) = a1;
    *(v22 + 40) = a2;

    v23 = sub_1000AC27C();
    sub_100005A24(0, &qword_1000F3BA8, CKQuery_ptr);
    v24 = v23;
    v36._countAndFlagsBits = 0x6F43656C646E7542;
    v36._object = 0xEC0000006769666ELL;
    isa = sub_1000AC38C(v36, v24).super.isa;
    v26 = [objc_allocWithZone(CKQueryOperation) initWithQuery:isa];
    v27 = [objc_opt_self() defaultRecordZone];
    v28 = [v27 zoneID];

    [v26 setZoneID:v28];
    [v26 setQualityOfService:25];
    v29 = swift_allocObject();
    *(v29 + 16) = _swiftEmptyArrayStorage;

    sub_1000AC2EC();
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = swift_allocObject();
    v31[2] = v29;
    v31[3] = v30;
    v31[4] = a1;
    v31[5] = a2;

    sub_1000AC2DC();

    v32 = *(v3 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingQueryOperation);
    *(v3 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingQueryOperation) = v26;
    v33 = v26;

    v34 = IMBJITAppBundleManager.database.getter();
    [v34 addOperation:v33];

    return;
  }

  v12 = (v2 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingUpdateVersion);
  v13 = *(v2 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingUpdateVersion + 8);
  v35[2] = *(v2 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingUpdateVersion);
  v35[3] = v13;
  v35[0] = a1;
  v35[1] = a2;
  v14 = sub_1000AB83C();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  sub_10002BD70();

  v15 = sub_1000AC45C();
  sub_10000E784(v10, &unk_1000F3B10, &qword_1000B4168);

  if (v15)
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC28C();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1000AF0F0;
    v18 = *v12;
    v17 = v12[1];
    *(v16 + 56) = &type metadata for String;
    v19 = sub_10000587C();
    *(v16 + 32) = v18;
    *(v16 + 40) = v17;
    *(v16 + 96) = &type metadata for String;
    *(v16 + 104) = v19;
    *(v16 + 64) = v19;
    *(v16 + 72) = a1;
    *(v16 + 80) = a2;

    sub_1000ABA5C();

    IMBJITAppBundleManager.clearUpdateFlags()();
    goto LABEL_6;
  }

  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC28C();
  sub_1000ABA5C();
}

uint64_t sub_1000987FC(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2AC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1000AF0E0;
    swift_getErrorValue();
    v6 = sub_1000AC7FC();
    v8 = v7;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_10000587C();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    sub_1000ABA5C();
  }

  else
  {
    swift_beginAccess();
    v11 = a2;
    sub_1000AC17C();
    if (*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v12 = *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1000AC1BC();
    }

    sub_1000AC1DC();
    return swift_endAccess();
  }
}

void sub_100098990(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2AC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1000AF0E0;
    swift_getErrorValue();
    v7 = sub_1000AC7FC();
    v9 = v8;
    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = sub_10000587C();
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    sub_1000ABA5C();

    goto LABEL_15;
  }

  swift_beginAccess();
  v13 = *(a3 + 16);
  if (v13 >> 62)
  {
    if (sub_1000AC65C())
    {
      goto LABEL_7;
    }
  }

  else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:
    if ((v13 & 0xC000000000000001) != 0)
    {

      v14 = sub_1000AC5AC();

LABEL_10:
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v16 = Strong;
        IMBJITAppBundleManager.processFetchedRecord(_:version:)(v14, a5, a6);
      }

      goto LABEL_20;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v14 = *(v13 + 32);
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_24;
  }

  if (qword_1000EEE80 != -1)
  {
LABEL_24:
    swift_once();
  }

  sub_1000AC2AC();
  sub_1000ABA5C();
LABEL_15:
  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (!v17)
  {
    return;
  }

  v14 = v17;
  if ([v17 bundleState] != 2 || objc_msgSend(v14, "bundleState") != 3)
  {
    [v14 setBundleState:5];
  }

  IMBJITAppBundleManager.clearUpdateFlags()();
LABEL_20:
}

void IMBJITAppBundleManager.processFetchedRecord(_:version:)(void *a1, uint64_t a2, uint64_t a3)
{
  v67 = a2;
  v68 = a3;
  v4 = sub_1000AB6EC();
  v69 = *(v4 - 8);
  v5 = v69[8];
  v7 = __chkstk_darwin(v4, v6);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v7, v10);
  v13 = &v61 - v12;
  __chkstk_darwin(v11, v14);
  v16 = &v61 - v15;
  v17 = sub_10000413C(&unk_1000F3B10, &qword_1000B4168);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8, v19);
  v21 = &v61 - v20;
  v22 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v23 = *(*(v22 - 8) + 64);
  v25 = __chkstk_darwin(v22 - 8, v24);
  v27 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v28);
  v30 = &v61 - v29;
  v31 = sub_1000AC3BC();
  if (!v31)
  {
    return;
  }

  v71 = v31;
  sub_10000413C(&qword_1000F3B98, &qword_1000B51E8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  if (v73 == *&v70[OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingUpdateVersion] && v74 == *&v70[OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingUpdateVersion + 8])
  {
  }

  else
  {
    v32 = sub_1000AC7AC();

    if ((v32 & 1) == 0)
    {
      return;
    }
  }

  v33 = [a1 recordChangeTag];
  if (!v33)
  {
    return;
  }

  v65 = v33;
  v64 = sub_1000AC06C();
  v66 = v34;
  IMBJITAppBundleManager.savedBundlePath.getter(v30);
  v62 = v69[6];
  v63 = v69 + 6;
  v35 = v62(v30, 1, v4);
  sub_10000E784(v30, &unk_1000F06A0, &unk_1000B0450);
  if (v35 != 1)
  {
    if (IMBJITAppBundleManager.recordChangeTag.getter() == v64 && v36 == v66)
    {

      goto LABEL_13;
    }

    v37 = sub_1000AC7AC();

    if (v37)
    {
LABEL_13:
      v73 = IMBJITAppBundleManager.savedBundleVersion.getter();
      v74 = v38;
      v71 = v67;
      v72 = v68;
      v39 = sub_1000AB83C();
      (*(*(v39 - 8) + 56))(v21, 1, 1, v39);
      sub_10002BD70();
      v40 = sub_1000AC45C();
      sub_10000E784(v21, &unk_1000F3B10, &qword_1000B4168);

      if (!v40)
      {

        if (qword_1000EEE80 != -1)
        {
          swift_once();
        }

        sub_1000AC28C();
        sub_10000413C(&qword_1000F0060, &unk_1000B0470);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_1000AF0E0;
        *(v46 + 56) = &type metadata for String;
        *(v46 + 64) = sub_10000587C();
        v47 = v66;
        *(v46 + 32) = v64;
        *(v46 + 40) = v47;
        sub_1000ABA5C();

        goto LABEL_29;
      }
    }
  }

  if (!sub_1000AC3BC())
  {

    goto LABEL_25;
  }

  objc_opt_self();
  v41 = swift_dynamicCastObjCClass();
  if (!v41)
  {

    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v42 = [v41 fileURL];
  if (!v42)
  {
    swift_unknownObjectRelease();

    goto LABEL_25;
  }

  v43 = v42;
  sub_1000AB6AC();

  v44 = v69;
  v45 = v69[4];
  v45(v16, v13, v4);
  IMBJITAppBundleManager.copyBundle(_:)(v27);
  if (v62(v27, 1, v4) == 1)
  {
    (v44[1])(v16, v4);

    swift_unknownObjectRelease();

    sub_10000E784(v27, &unk_1000F06A0, &unk_1000B0450);
LABEL_25:
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2AC();
    sub_1000ABA5C();
    v48 = v70;
    if ([v70 bundleState] == 4)
    {
      [v48 setBundleState:5];
    }

LABEL_29:
    IMBJITAppBundleManager.clearUpdateFlags()();
    return;
  }

  v45(v9, v27, v4);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC28C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1000AF0E0;
  *(v49 + 56) = &type metadata for String;
  *(v49 + 64) = sub_10000587C();
  v50 = v66;
  *(v49 + 32) = v64;
  *(v49 + 40) = v50;
  sub_1000ABA5C();

  v51 = *&v70[OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_userDefaults];
  v52 = sub_1000AC02C();
  v53 = sub_1000AC02C();
  [v51 setObject:v52 forKey:v53];

  v54 = sub_1000AC02C();
  v55 = v65;
  [v51 setObject:v65 forKey:v54];

  sub_1000AB67C(v56);
  v58 = v57;
  v59 = sub_1000AC02C();
  [v51 setURL:v58 forKey:v59];

  IMBJITAppBundleManager.loadBundle(_:version:)(v9, v67, v68);
  IMBJITAppBundleManager.clearUpdateFlags()();
  swift_unknownObjectRelease();
  v60 = v69[1];
  v60(v9, v4);
  v60(v16, v4);
}

void IMBJITAppBundleManager.clearUpdateFlags()()
{
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC28C();
  sub_1000ABA5C();
  *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingBundleUpdate) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingUpdateVersion);
  v2 = *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingUpdateVersion + 8);
  *v1 = 3157552;
  v1[1] = 0xE300000000000000;

  v3 = OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingQueryOperation;
  v4 = *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingQueryOperation);
  if (v4)
  {
    [v4 cancel];
    v4 = *(v0 + v3);
  }

  *(v0 + v3) = 0;
}

uint64_t IMBJITAppBundleManager.copyBundle(_:)@<X0>(char *a1@<X8>)
{
  v2 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v45 - v5;
  v7 = sub_1000AB6EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v7, v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v11, v14);
  v17 = &v45 - v16;
  __chkstk_darwin(v15, v18);
  v20 = &v45 - v19;
  v21 = [objc_opt_self() defaultManager];
  IMBJITAppBundleManager.bundleBasePath.getter(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    sub_10000E784(v6, &unk_1000F06A0, &unk_1000B0450);
    return (*(v8 + 56))(a1, 1, 1, v7);
  }

  v48 = a1;
  v47 = *(v8 + 32);
  v47(v20, v6, v7);
  sub_1000AB67C(v23);
  v25 = v24;
  v50 = 0;
  v26 = [v21 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:&v50];

  if (v26)
  {
    v27 = v50;
    sub_1000AB66C();
    sub_1000AB68C();

    sub_1000AB6BC();
    v28 = sub_1000AC02C();

    v29 = [v21 fileExistsAtPath:v28];

    if (!v29)
    {
      if (qword_1000EEE80 != -1)
      {
        swift_once();
      }

      sub_1000AC2AC();
      sub_1000ABA5C();

      v41 = *(v8 + 8);
      v41(v17, v7);
      v41(v20, v7);
      a1 = v48;
      return (*(v8 + 56))(a1, 1, 1, v7);
    }

    sub_1000AB67C(v30);
    v32 = v31;
    sub_1000AB6BC();
    sub_1000AB65C();

    sub_1000AB67C(v33);
    v35 = v34;
    v46 = *(v8 + 8);
    v46(v13, v7);
    v50 = 0;
    v36 = [v21 copyItemAtURL:v32 toURL:v35 error:&v50];

    if (v36)
    {
      v37 = v50;
      v46(v20, v7);

      v38 = v48;
      v47(v48, v17, v7);
      return (*(v8 + 56))(v38, 0, 1, v7);
    }

    v42 = v46;
    v43 = v50;
    v44 = sub_1000AB63C();

    swift_willThrow();
    v50 = v44;
    sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
    sub_100005A24(0, &qword_1000F3B90, NSError_ptr);
    swift_dynamicCast();

    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2AC();
    sub_1000ABA5C();

    v42(v17, v7);
    v42(v20, v7);
  }

  else
  {
    v39 = v50;
    v40 = sub_1000AB63C();

    swift_willThrow();
    v50 = v40;
    sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
    sub_100005A24(0, &qword_1000F3B90, NSError_ptr);
    swift_dynamicCast();

    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2AC();
    sub_1000ABA5C();

    (*(v8 + 8))(v20, v7);
  }

  (*(v8 + 56))(v48, 1, 1, v7);
}

void IMBJITAppBundleManager.loadBundle(_:version:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  [v3 setBundleState:2];
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC28C();
  sub_1000ABA5C();
  v7 = [objc_opt_self() shared];
  sub_1000AB67C(v8);
  v10 = v9;
  v11 = swift_allocObject();
  v11[2] = v4;
  v11[3] = a2;
  v11[4] = a3;
  v14[4] = sub_10009A320;
  v14[5] = v11;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10003839C;
  v14[3] = &unk_1000DDEA0;
  v12 = _Block_copy(v14);
  v13 = v4;

  [v7 loadBundle:v10 completion:v12];
  _Block_release(v12);
}

uint64_t sub_100099E40(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2AC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1000AF0E0;
    swift_getErrorValue();
    v6 = sub_1000AC7FC();
    v8 = v7;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_10000587C();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    sub_1000ABA5C();

    [a2 setBundleState:5];
  }

  else
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC28C();
    sub_1000ABA5C();
    [a2 setBundleState:3];
    v12 = &a2[OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_currentLoadedBundleVersion];
    swift_beginAccess();
    v13 = *(v12 + 1);
    *v12 = a3;
    *(v12 + 1) = a4;
  }
}

id IMBJITAppBundleManager.init()()
{
  *&v0[OBJC_IVAR____TtC8Business22IMBJITAppBundleManager____lazy_storage___containerID] = 0;
  *&v0[OBJC_IVAR____TtC8Business22IMBJITAppBundleManager____lazy_storage___container] = 0;
  *&v0[OBJC_IVAR____TtC8Business22IMBJITAppBundleManager____lazy_storage___database] = 0;
  v1 = OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_userDefaults;
  *&v0[v1] = [objc_opt_self() standardUserDefaults];
  v0[OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingBundleUpdate] = 0;
  v2 = &v0[OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingUpdateVersion];
  *v2 = 3157552;
  v2[1] = 0xE300000000000000;
  *&v0[OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingQueryOperation] = 0;
  v3 = &v0[OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_currentLoadedBundleVersion];
  *v3 = 3157552;
  v3[1] = 0xE300000000000000;
  *&v0[OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_bundleState] = 0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for IMBJITAppBundleManager();
  return objc_msgSendSuper2(&v5, "init");
}

id IMBJITAppBundleManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBJITAppBundleManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10009A244(unint64_t result)
{
  if (result > 8)
  {
    return 0;
  }

  return result;
}

unint64_t sub_10009A27C()
{
  result = qword_1000F3B58;
  if (!qword_1000F3B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F3B58);
  }

  return result;
}

uint64_t sub_10009A2E0()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009A32C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10009A344()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009A388()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009A3C0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10009A420(uint64_t a1)
{
  v29 = *(a1 + 16);
  if (!v29)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v28 = a1 + 32;
  while (1)
  {
    v4 = *(v28 + 8 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      if (v4 < 0)
      {
        v25 = *(v28 + 8 * v1);
      }

      v6 = sub_1000AC65C();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v26 = sub_1000AC65C();
      v9 = v26 + v6;
      if (__OFADD__(v26, v6))
      {
LABEL_35:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_35;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v32 = v6;
    if (!result)
    {
      break;
    }

    if (v7)
    {
      goto LABEL_18;
    }

    v10 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v9 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_17;
    }

    v11 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (v5)
    {
      goto LABEL_20;
    }

LABEL_13:
    v13 = v4;
    v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (((v12 >> 1) - v11) < v32)
    {
      goto LABEL_39;
    }

    v30 = v2;
    v17 = v10 + 8 * v11 + 32;
    v27 = v10;
    if (v5)
    {
      if (v14 < 1)
      {
        goto LABEL_41;
      }

      sub_10009C73C();
      for (i = 0; i != v14; ++i)
      {
        sub_10000413C(&qword_1000F3C18, &unk_1000B52C0);
        v19 = sub_1000A79F8(v31, i, v13);
        v21 = *v20;
        (v19)(v31, 0);
        *(v17 + 8 * i) = v21;
      }
    }

    else
    {
      sub_10000F840();
      swift_arrayInitWithCopy();
    }

    v2 = v30;
    if (v32 >= 1)
    {
      v22 = *(v27 + 16);
      v23 = __OFADD__(v22, v32);
      v24 = v22 + v32;
      if (v23)
      {
        goto LABEL_40;
      }

      *(v27 + 16) = v24;
    }

LABEL_4:
    if (++v1 == v29)
    {
      return v2;
    }
  }

  if (!v7)
  {
    v10 = v2 & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v15 = *(v10 + 16);
    goto LABEL_19;
  }

LABEL_18:
  sub_1000AC65C();
LABEL_19:
  result = sub_1000AC5BC();
  v2 = result;
  v10 = result & 0xFFFFFFFFFFFFFF8;
  v11 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  v12 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_20:
  v13 = v4;
  v16 = v10;
  result = sub_1000AC65C();
  v10 = v16;
  v14 = result;
  if (result)
  {
    goto LABEL_21;
  }

LABEL_3:

  if (v32 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

id sub_10009A6E4()
{
  v1 = OBJC_IVAR____TtC8Business33BIABubbleOptionsiOSViewController____lazy_storage___optionsLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8Business33BIABubbleOptionsiOSViewController____lazy_storage___optionsLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business33BIABubbleOptionsiOSViewController____lazy_storage___optionsLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(UILabel) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_10009A758()
{
  v1 = [objc_allocWithZone(UIView) init];
  [v0 setView:v1];

  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2;
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = sub_10009A6E4();
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = OBJC_IVAR____TtC8Business33BIABubbleOptionsiOSViewController____lazy_storage___optionsLabel;
  v6 = qword_1000EEE00;
  v7 = *&v0[OBJC_IVAR____TtC8Business33BIABubbleOptionsiOSViewController____lazy_storage___optionsLabel];
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_1000FBF30;
  [v7 setTextColor:qword_1000FBF30];

  v9 = qword_1000EEDF8;
  v10 = *&v0[v5];
  if (v9 != -1)
  {
    swift_once();
  }

  [v10 setFont:qword_1000FBF28];

  [*&v0[v5] setLineBreakMode:0];
  [*&v0[v5] setNumberOfLines:0];
  LODWORD(v11) = 1148846080;
  [*&v0[v5] setContentCompressionResistancePriority:1 forAxis:v11];
  v12 = [v0 view];
  if (!v12)
  {
    goto LABEL_14;
  }

  v13 = v12;
  [v12 addSubview:*&v0[v5]];

  v14 = [objc_allocWithZone(UIImageView) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v14 setTintColor:v8];
  [v14 setContentMode:1];
  v15 = sub_1000AC02C();
  v16 = [objc_opt_self() systemImageNamed:v15];

  [v14 setImage:v16];
  LODWORD(v17) = 1148846080;
  [v14 setContentHuggingPriority:0 forAxis:v17];
  v18 = [v0 view];
  if (!v18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v18;
  [v18 addSubview:v14];

  v20 = [v0 view];
  if (!v20)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v21 = v20;
  [v20 _setCornerRadius:8.0];

  v22 = [v0 view];
  if (!v22)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v23 = v22;
  if (qword_1000EEE08 != -1)
  {
    swift_once();
  }

  [v23 setBackgroundColor:qword_1000FBF38];

  sub_10000413C(&qword_1000F3BF8, &qword_1000B52A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AF0F0;
  strcpy((inited + 32), "optionsLabel");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v25 = *&v0[v5];
  *(inited + 48) = v25;
  strcpy((inited + 56), "optionsChevron");
  *(inited + 71) = -18;
  *(inited + 72) = v14;
  v26 = v25;
  v46 = sub_100050198(inited);
  swift_setDeallocating();
  sub_10000413C(&qword_1000F3C00, &qword_1000B52A8);
  swift_arrayDestroy();
  v27 = sub_1000502A8(&off_1000DA858);
  sub_10000413C(&qword_1000F3C08, &qword_1000B52B0);
  swift_arrayDestroy();
  v28 = objc_opt_self();
  sub_10000413C(&qword_1000F3C10, &qword_1000B52B8);
  v47 = swift_initStackObject();
  *(v47 + 16) = xmmword_1000B0620;
  v29 = sub_1000AC02C();
  sub_10004DF40(v27);
  isa = sub_1000ABFAC().super.isa;

  sub_10004E188(v46);
  v48 = v14;
  v31 = sub_1000ABFAC().super.isa;

  v32 = v28;
  v33 = [v28 constraintsWithVisualFormat:v29 options:0 metrics:isa views:v31];

  sub_10000F840();
  v34 = sub_1000AC19C();

  *(v47 + 32) = v34;
  v35 = sub_1000AC02C();
  sub_10004DF40(v27);
  v36 = sub_1000ABFAC().super.isa;

  sub_10004E188(v46);
  v37 = sub_1000ABFAC().super.isa;

  v38 = [v32 constraintsWithVisualFormat:v35 options:0 metrics:v36 views:v37];

  v39 = sub_1000AC19C();
  *(v47 + 40) = v39;
  v40 = sub_1000AC02C();
  sub_10004DF40(v27);

  v41 = sub_1000ABFAC().super.isa;

  sub_10004E188(v46);

  v42 = sub_1000ABFAC().super.isa;

  v43 = [v32 constraintsWithVisualFormat:v40 options:0 metrics:v41 views:v42];

  v44 = sub_1000AC19C();
  *(v47 + 48) = v44;
  sub_10009A420(v47);
  swift_setDeallocating();
  sub_10000413C(&qword_1000F3C18, &unk_1000B52C0);
  swift_arrayDestroy();
  v45 = sub_1000AC18C().super.isa;

  [v32 activateConstraints:v45];
}

uint64_t sub_10009AFBC()
{
  v1 = type metadata accessor for BIABubbleViewModelUserInteractionParadigm(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1, v3);
  v5 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10000413C(&qword_1000F08E0, &unk_1000B4690);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v32[-v9];
  v11 = type metadata accessor for BIABubbleViewModel(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v32[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController_viewModel;
  swift_beginAccess();
  sub_10000E66C(v0 + v17, v10, &qword_1000F08E0, &unk_1000B4690);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000E784(v10, &qword_1000F08E0, &unk_1000B4690);
    v18 = sub_10009A6E4();
    v19 = sub_1000AC02C();
    [v18 setText:v19];

    swift_getKeyPath();
    swift_getKeyPath();
    v33 = 0;
    v20 = v0;
    return sub_1000ABC3C();
  }

  sub_10009C2C0(v10, v16, type metadata accessor for BIABubbleViewModel);
  sub_10009C674(&v16[*(v11 + 32)], v5, type metadata accessor for BIABubbleViewModelUserInteractionParadigm);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v23 = sub_10000413C(&qword_1000F1150, &unk_1000B5280);
      sub_10000E784(v5 + *(v23 + 48), &qword_1000F1148, &unk_1000B3580);
      sub_10000E784(v5, &qword_1000F1148, &unk_1000B3580);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v26 = *v5;
      v27 = v5[1];
      v28 = v5[2];

      v29 = sub_10009A6E4();
      v30 = sub_1000AC02C();

      [v29 setText:v30];

      swift_getKeyPath();
      swift_getKeyPath();
      v33 = 1;
      goto LABEL_10;
    }

    sub_10009C6DC(v5, type metadata accessor for BIABubbleViewModelUserAction);
  }

  v24 = sub_10009A6E4();
  v25 = sub_1000AC02C();
  [v24 setText:v25];

  swift_getKeyPath();
  swift_getKeyPath();
  v33 = 0;
LABEL_10:
  v31 = v0;
  sub_1000ABC3C();
  return sub_10009C6DC(v16, type metadata accessor for BIABubbleViewModel);
}

void sub_10009B3C8(void *a1, void *a2)
{
  v4 = OBJC_IVAR____TtC8Business33BIABubbleOptionsiOSViewController_containingViewGestureRecognizer;
  if (a1 && *(v2 + OBJC_IVAR____TtC8Business33BIABubbleOptionsiOSViewController_containingViewGestureRecognizer))
  {
    [a1 removeGestureRecognizer:?];
    v4 = OBJC_IVAR____TtC8Business33BIABubbleOptionsiOSViewController_containingViewGestureRecognizer;
  }

  v5 = *(v2 + v4);
  *(v2 + v4) = 0;

  if (a2)
  {
    v6 = objc_allocWithZone(UITapGestureRecognizer);
    v7 = a2;
    v8 = [v6 initWithTarget:v2 action:"_handleBubbleTapped"];
    [v7 addGestureRecognizer:v8];

    v9 = *(v2 + v4);
    *(v2 + v4) = v8;
  }
}

uint64_t sub_10009B4AC()
{
  v1 = sub_10000413C(&qword_1000F1140, &unk_1000B5290);
  v91 = *(v1 - 8);
  v92 = v1;
  v2 = *(v91 + 64);
  v4 = __chkstk_darwin(v1, v3);
  v96 = (&v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4, v6);
  v95 = &v87 - v7;
  v8 = type metadata accessor for BIABubbleViewModelUserAction(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v94 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BIABubbleViewModelUserInteractionParadigm(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12, v14);
  v16 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000413C(&qword_1000F08E0, &unk_1000B4690);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8, v19);
  v21 = &v87 - v20;
  v22 = type metadata accessor for BIABubbleViewModel(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22, v25);
  v27 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController_viewModel;
  swift_beginAccess();
  v93 = v0;
  sub_10000E66C(&v0[v28], v21, &qword_1000F08E0, &unk_1000B4690);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    goto LABEL_26;
  }

  sub_10009C2C0(v21, v27, type metadata accessor for BIABubbleViewModel);
  sub_10009C674(&v27[*(v22 + 32)], v16, type metadata accessor for BIABubbleViewModelUserInteractionParadigm);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_10009C6DC(v27, type metadata accessor for BIABubbleViewModel);
      v32 = sub_10000413C(&qword_1000F1150, &unk_1000B5280);
      sub_10000E784(&v16[*(v32 + 48)], &qword_1000F1148, &unk_1000B3580);
      return sub_10000E784(v16, &qword_1000F1148, &unk_1000B3580);
    }

    return sub_10009C6DC(v27, type metadata accessor for BIABubbleViewModel);
  }

  if (!EnumCaseMultiPayload)
  {
    v30 = v94;
    sub_10009C2C0(v16, v94, type metadata accessor for BIABubbleViewModelUserAction);
    v31 = sub_1000058D0(&v93[OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController_context], *&v93[OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController_context + 24]);
    sub_10009C328(*v31, v30);
    sub_10009C6DC(v30, type metadata accessor for BIABubbleViewModelUserAction);
    return sub_10009C6DC(v27, type metadata accessor for BIABubbleViewModel);
  }

  v35 = *(v16 + 1);
  v34 = *(v16 + 2);
  v36 = v93;
  v37 = [v93 parentViewController];
  if (!v37)
  {
    goto LABEL_27;
  }

  v21 = v37;
  v38 = [v37 view];

  if (!v38)
  {
    goto LABEL_27;
  }

  v39 = [v36 view];
  if (!v39)
  {
    __break(1u);
    goto LABEL_25;
  }

  v21 = v39;
  v40 = [v36 view];
  if (!v40)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    sub_10000E784(v21, &qword_1000F08E0, &unk_1000B4690);
LABEL_27:
    result = sub_1000AC63C();
    __break(1u);
    return result;
  }

  v41 = v40;

  [v41 bounds];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;

  [v21 convertRect:v38 toCoordinateSpace:{v43, v45, v47, v49}];
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;

  sub_10000E6D4(v36 + OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController_context, v98);
  v58 = sub_1000058D0(v98, v98[3]);
  v59 = *(v34 + 16);
  v60 = _swiftEmptyArrayStorage;
  v90 = v38;
  if (v59)
  {
    v87 = v58;
    v89 = v27;
    v97 = _swiftEmptyArrayStorage;
    sub_10009C258(0, v59, 0);
    v61 = v97;
    v62 = (*(v91 + 80) + 32) & ~*(v91 + 80);
    v88 = v34;
    v63 = v34 + v62;
    v94 = *(v91 + 72);
    v64 = v34 + v62;
    v65 = v59;
    v66 = v92;
    do
    {
      v67 = v95;
      sub_10000E66C(v64, v95, &qword_1000F1140, &unk_1000B5290);
      v68 = v96;
      sub_100052750(v67, v96);
      v69 = *v68;
      v70 = v68[1];
      v71 = v68[3];

      sub_10009C6DC(v68 + *(v66 + 64), type metadata accessor for BIABubbleViewModelUserAction);
      v97 = v61;
      v73 = v61[2];
      v72 = v61[3];
      if (v73 >= v72 >> 1)
      {
        sub_10009C258((v72 > 1), v73 + 1, 1);
        v66 = v92;
        v61 = v97;
      }

      v61[2] = v73 + 1;
      v74 = &v61[2 * v73];
      v74[4] = v69;
      v74[5] = v70;
      v64 += v94;
      --v65;
    }

    while (v65);
    v97 = _swiftEmptyArrayStorage;
    sub_10009C258(0, v59, 0);
    v75 = v92;
    v60 = v97;
    do
    {
      v76 = v95;
      sub_10000E66C(v63, v95, &qword_1000F1140, &unk_1000B5290);
      v77 = v96;
      sub_100052750(v76, v96);
      v78 = v77[1];

      v79 = v77[2];
      v80 = v77[3];
      sub_10009C6DC(v77 + *(v75 + 64), type metadata accessor for BIABubbleViewModelUserAction);
      v97 = v60;
      v82 = v60[2];
      v81 = v60[3];
      if (v82 >= v81 >> 1)
      {
        sub_10009C258((v81 > 1), v82 + 1, 1);
        v75 = v92;
        v60 = v97;
      }

      v60[2] = v82 + 1;
      v83 = &v60[2 * v82];
      v83[4] = v79;
      v83[5] = v80;
      v63 += v94;
      --v59;
    }

    while (v59);
    v27 = v89;
    v34 = v88;
  }

  else
  {
    v61 = _swiftEmptyArrayStorage;
  }

  v84 = swift_allocObject();
  v85 = v93;
  *(v84 + 16) = v34;
  *(v84 + 24) = v85;
  type metadata accessor for PluginBubbleContext();
  v86 = v85;
  sub_10001682C(v51, v53, v55, v57, v61, v60, sub_10009C2B8, v84);

  sub_10009C6DC(v27, type metadata accessor for BIABubbleViewModel);
  return sub_10000E738(v98);
}

uint64_t sub_10009BD68(int a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000413C(&qword_1000F1140, &unk_1000B5290);
  v7 = *(*(v6 - 8) + 64);
  result = __chkstk_darwin(v6, v8);
  v12 = &v18 - v11;
  v13 = *(a2 + 16);
  if (v13 != a1)
  {
    if (a1 < 0 || v13 <= a1)
    {
      __break(1u);
    }

    else
    {
      sub_10000E66C(a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * a1, &v18 - v11, &qword_1000F1140, &unk_1000B5290);
      v14 = *(v12 + 1);

      v15 = *(v12 + 3);

      v16 = *(v6 + 64);
      v17 = sub_1000058D0((a3 + OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController_context), *(a3 + OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController_context + 24));
      sub_10009C328(*v17, &v12[v16]);
      return sub_10009C6DC(&v12[v16], type metadata accessor for BIABubbleViewModelUserAction);
    }
  }

  return result;
}

void sub_10009BFA4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business33BIABubbleOptionsiOSViewController_containingViewGestureRecognizer);
}

id sub_10009BFE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BIABubbleOptionsiOSViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BIABubbleOptionsiOSViewController()
{
  result = qword_1000F3BE8;
  if (!qword_1000F3BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10009C100@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000ABC2C();

  *a2 = v5;
  return result;
}

uint64_t sub_10009C184(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_1000ABC3C();
}

void *sub_10009C1F8(void *a1, int64_t a2, char a3)
{
  result = sub_1000A11EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10009C218(size_t a1, int64_t a2, char a3)
{
  result = sub_1000A1320(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10009C238(size_t a1, int64_t a2, char a3)
{
  result = sub_1000A1510(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10009C258(char *a1, int64_t a2, char a3)
{
  result = sub_1000A16E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10009C278()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009C2C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009C328(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for URLHelper();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000AB6EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v14 = &v33[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for BIABubbleViewModelUserAction(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15, v17);
  v19 = &v33[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = type metadata accessor for PluginBubbleContext();
  v41[3] = v20;
  v41[4] = &off_1000DAEB0;
  v41[0] = a1;
  sub_10009C674(a2, v19, type metadata accessor for BIABubbleViewModelUserAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v19;
    v22 = *(v19 + 1);
    v23 = v19[16];
    v25 = *(v19 + 3);
    v24 = *(v19 + 4);
    v27 = *(v19 + 5);
    v26 = *(v19 + 6);
    v28 = *sub_1000058D0(v41, v20);
    v34 = v21;
    v35 = v22;
    v36 = v23;
    v37 = v25;
    v38 = v24;
    v39 = v27;
    v40 = v26;
    sub_100020F80();
    sub_100020FD4();
    v29 = a1;

    sub_1000ABA4C();
    v31 = BCMessageRootNotificationKey;

    sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
    swift_dynamicCast();
    sub_1000164C4(v31, v34);
  }

  else
  {
    (*(v10 + 32))(v14, v19, v9);
    v30 = a1;
    sub_10004EA70(v8);
    sub_10004E400(v14, 1, sub_1000584D4, 0);
    sub_10009C6DC(v8, type metadata accessor for URLHelper);
    (*(v10 + 8))(v14, v9);
  }

  return sub_10000E738(v41);
}

uint64_t sub_10009C674(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009C6DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10009C73C()
{
  result = qword_1000F3C20;
  if (!qword_1000F3C20)
  {
    sub_1000041E8(&qword_1000F3C18, &unk_1000B52C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F3C20);
  }

  return result;
}

uint64_t sub_10009C7A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000AB97C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v9 = *(a2 + 40), sub_10009EED8(&qword_1000F0828), v10 = sub_1000ABFFC(), v11 = -1 << *(a2 + 32), v12 = v10 & ~v11, v21 = a2 + 56, ((*(a2 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0))
  {
    v20 = a2;
    v13 = ~v11;
    v14 = v4 + 16;
    v15 = *(v4 + 16);
    v16 = *(v14 + 56);
    v17 = (v14 - 8);
    do
    {
      v15(v8, *(v20 + 48) + v16 * v12, v3);
      sub_10009EED8(&qword_1000EFE98);
      v18 = sub_1000AC01C();
      (*v17)(v8, v3);
      if (v18)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
    }

    while (((*(v21 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

void sub_10009CA00()
{
  v24.receiver = v0;
  v24.super_class = type metadata accessor for MacListPickerTableViewController();
  objc_msgSendSuper2(&v24, "viewDidLoad");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    return;
  }

  v2 = v1;
  if (qword_1000EEDC0 != -1)
  {
    swift_once();
  }

  [v2 setBackgroundColor:qword_1000FBEF0];

  v3 = *&v0[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView];
  type metadata accessor for IMBDefaultSectionHeader();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_1000AC02C();
  [v3 registerClass:ObjCClassFromMetadata forHeaderFooterViewReuseIdentifier:v5];

  type metadata accessor for MacListPickerTableViewCell();
  v6 = swift_getObjCClassFromMetadata();
  v7 = sub_1000AC02C();
  [v3 registerClass:v6 forCellReuseIdentifier:v7];

  [v3 setEstimatedRowHeight:140.0];
  [v3 setSectionHeaderHeight:UITableViewAutomaticDimension];
  [v3 setEstimatedSectionHeaderHeight:80.0];
  [v3 setSeparatorStyle:0];
  [v3 setBackgroundColor:qword_1000FBEF0];
  [v3 _setSectionContentInset:{0.0, 8.0, 0.0, 8.0}];
  [v3 _setSectionCornerRadius:0.0];
  if (!v0[OBJC_IVAR____TtC8Business32MacListPickerTableViewController_selectionType])
  {
    v8 = 0;
    v9 = &selRef_setAllowsSelection_;
    goto LABEL_8;
  }

  if (v0[OBJC_IVAR____TtC8Business32MacListPickerTableViewController_selectionType] == 2)
  {
    v8 = 1;
    v9 = &selRef_setAllowsMultipleSelection_;
LABEL_8:
    [v3 *v9];
  }

  v10 = *&v0[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_nothingAvailableLabel];
  v11 = *&v0[OBJC_IVAR____TtC8Business32MacListPickerTableViewController_listRequest];
  if (v11)
  {
    v12 = *(v11 + 24);
    if (v12 >> 62)
    {
      v13 = sub_1000AC65C();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v13 = 0;
  }

  [v10 setHidden:v13 > 0];
  v14 = [objc_opt_self() mainBundle];
  v23._countAndFlagsBits = 0xE000000000000000;
  v25._object = 0x80000001000B7070;
  v25._countAndFlagsBits = 0xD000000000000012;
  v26.value._countAndFlagsBits = 0;
  v26.value._object = 0;
  v15.super.isa = v14;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_1000AB61C(v25, v26, v15, v27, v23);

  v16 = sub_1000AC02C();

  [v10 setText:v16];

  v17 = OBJC_IVAR____TtC8Business32MacListPickerTableViewController_selectedIndexPaths;
  swift_beginAccess();
  v18 = *(*&v0[v17] + 16) != 0;
  v19 = sub_10008240C();
  v21 = v20;
  ObjectType = swift_getObjectType();
  (*(v21 + 48))(v18, ObjectType, v21);
}

char *sub_10009CDFC()
{
  v1 = v0;
  v2 = [objc_allocWithZone(type metadata accessor for MacTableHeaderView()) init];
  v3 = *(v1 + OBJC_IVAR____TtC8Business32MacListPickerTableViewController_selectionType);
  v4 = sub_100012B64();
  v5 = *(v1 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message);
  if (v3)
  {
    v6 = [*(v1 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message) receivedMessage];
    if (v6 && (v7 = v6, v8 = [v6 title], v7, v8))
    {
      sub_1000AC06C();
    }

    else
    {
      v8 = [objc_opt_self() mainBundle];
      v27._countAndFlagsBits = 0xE000000000000000;
      v28._object = 0x80000001000B7050;
      v28._countAndFlagsBits = 0xD000000000000019;
      v30.value._countAndFlagsBits = 0;
      v30.value._object = 0;
      v9.super.isa = v8;
      v32._countAndFlagsBits = 0;
      v32._object = 0xE000000000000000;
      sub_1000AB61C(v28, v30, v9, v32, v27);
    }

    v10 = sub_1000AC02C();

    [v4 setText:v10];

    v11 = sub_100012E84();
    v12 = [v5 receivedMessage];
    if (!v12 || (v13 = v12, v14 = [v12 subtitle], v13, !v14))
    {
      v14 = 0;
    }

    [v11 setText:v14];
  }

  else
  {
    v15 = [*(v1 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message) replyMessage];
    if (v15 && (v16 = v15, v17 = [v15 title], v16, v17))
    {
      sub_1000AC06C();
    }

    else
    {
      v17 = [objc_opt_self() mainBundle];
      v27._countAndFlagsBits = 0xE000000000000000;
      v29._countAndFlagsBits = 0xD000000000000022;
      v29._object = 0x80000001000B7020;
      v31.value._countAndFlagsBits = 0;
      v31.value._object = 0;
      v18.super.isa = v17;
      v33._countAndFlagsBits = 0;
      v33._object = 0xE000000000000000;
      sub_1000AB61C(v29, v31, v18, v33, v27);
    }

    v19 = sub_1000AC02C();

    [v4 setText:v19];

    v14 = sub_100012E84();
    [v14 setText:0];
  }

  v20 = [objc_opt_self() separatorColor];
  v21 = sub_10001380C();
  [v21 setBackgroundColor:v20];

  v22 = *&v2[OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___separatorView];
  v23 = *(v1 + OBJC_IVAR____TtC8Business32MacListPickerTableViewController_listRequest);
  if (v23)
  {
    v24 = *(v23 + 24);
    if (v24 >> 62)
    {
      v26 = *&v2[OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___separatorView];
      v23 = sub_1000AC65C();
      v22 = v26;
    }

    else
    {
      v23 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  [v22 setHidden:v23 > 1];
  return v2;
}

uint64_t sub_10009D184()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business32MacListPickerTableViewController_selectionType);
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v16._countAndFlagsBits = 0xE000000000000000;
  if (v1)
  {
    v18._countAndFlagsBits = 1145980243;
    v18._object = 0xE400000000000000;
    v21.value._countAndFlagsBits = 0;
    v21.value._object = 0;
    v4.super.isa = v3;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v5 = sub_1000AB61C(v18, v21, v4, v24, v16);
    v7 = v6;

    v8 = [v2 mainBundle];
    v17._countAndFlagsBits = 0xE000000000000000;
    v19._countAndFlagsBits = 0x4C45434E4143;
    v19._object = 0xE600000000000000;
    v22.value._countAndFlagsBits = 0;
    v22.value._object = 0;
    v9.super.isa = v8;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    v10 = sub_1000AB61C(v19, v22, v9, v25, v17);
    v12 = v11;

    type metadata accessor for FooterToolbarModel();
    result = swift_allocObject();
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 1;
    *(result + 16) = 0;
    *(result + 24) = 0xE000000000000000;
    *(result + 32) = 0;
    *(result + 40) = v5;
    *(result + 48) = v7;
  }

  else
  {
    v20._countAndFlagsBits = 1162760004;
    v20._object = 0xE400000000000000;
    v23.value._countAndFlagsBits = 0;
    v23.value._object = 0;
    v14.super.isa = v3;
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    v10 = sub_1000AB61C(v20, v23, v14, v26, v16);
    v12 = v15;

    type metadata accessor for FooterToolbarModel();
    result = swift_allocObject();
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 1;
    *(result + 16) = 0;
    *(result + 24) = 0xE000000000000000;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0xE000000000000000;
  }

  *(result + 56) = 2;
  *(result + 64) = v10;
  *(result + 72) = v12;
  return result;
}

void sub_10009D324()
{
  v1 = v0;
  v2 = sub_10000413C(&qword_1000EFEA0, &qword_1000B11A8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v36 = &v32 - v5;
  v6 = sub_1000AB97C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v39 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC8Business32MacListPickerTableViewController_selectedIndexPaths;
  swift_beginAccess();
  v12 = *(v1 + v11);
  v13 = v12 + 56;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 56);
  v17 = (v14 + 63) >> 6;
  v34 = (v7 + 8);
  v35 = v7 + 16;
  v37 = v12;
  v38 = v11;
  swift_bridgeObjectRetain_n();
  v18 = 0;
  v33 = v7;
  while (v16)
  {
LABEL_11:
    v20 = v39;
    (*(v7 + 16))(v39, *(v37 + 48) + *(v7 + 72) * (__clz(__rbit64(v16)) | (v18 << 6)), v6);
    swift_beginAccess();
    v21 = v36;
    sub_1000A2DC4(v20, v36);
    sub_1000A4758(v21);
    swift_endAccess();
    v22 = *(v1 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView);
    isa = sub_1000AB92C().super.isa;
    v24 = [v22 cellForRowAtIndexPath:isa];

    if (v24)
    {
      type metadata accessor for MacListPickerTableViewCell();
      v25 = swift_dynamicCastClass();
      if (v25)
      {
        *(v25 + OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItemSelected) = 0;
        v26 = v24;
        sub_100065F44();
        sub_1000662E8();

        v7 = v33;
      }
    }

    v16 &= v16 - 1;
    (*v34)(v39, v6);
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v17)
    {

      v27 = *(*(v1 + v38) + 16) != 0;
      v28 = sub_10008240C();
      v30 = v29;
      ObjectType = swift_getObjectType();
      (*(v30 + 48))(v27, ObjectType, v30);

      return;
    }

    v16 = *(v13 + 8 * v19);
    ++v18;
    if (v16)
    {
      v18 = v19;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_10009D660()
{
  v1 = v0;
  if (qword_1000EEE88 != -1)
  {
    swift_once();
  }

  sub_1000AC29C();
  sub_1000ABA5C();
  v2 = *(v0 + OBJC_IVAR____TtC8Business32MacListPickerTableViewController_listRequest);
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = OBJC_IVAR____TtC8Business32MacListPickerTableViewController_selectedIndexPaths;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = sub_10009EFA4(*(v4 + 16), 0);
    v7 = *(sub_1000AB97C() - 8);
    v15 = sub_1000A4338(&v17, &v6[(*(v7 + 80) + 32) & ~*(v7 + 80)], v5, v4);
    swift_retain_n();

    sub_100012760();
    if (v15 != v5)
    {
      __break(1u);
LABEL_7:
      sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
      v16 = sub_1000AC3FC();
      sub_1000AC2BC();
      sub_1000ABA5C();

      return;
    }
  }

  else
  {
    swift_retain_n();
    v6 = _swiftEmptyArrayStorage;
  }

  type metadata accessor for IMBListResponse();
  v8 = swift_allocObject();
  v8[4] = 0;
  v8[2] = v2;
  v17 = v6;

  sub_1000A17F4(&v17);

  v9 = *(v1 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_conversation);
  v8[3] = v17;
  sub_100060250(v9, *(v1 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message));
  v10 = v1 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController__dismissalDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v10 + 8);
      ObjectType = swift_getObjectType();
      v13 = *(v11 + 16);
      v14 = type metadata accessor for MacListPickerTableViewController();
      v13(v1, v14, ObjectType, v11);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);

    __break(1u);
  }
}

unint64_t sub_10009DB0C(void *a1, uint64_t a2)
{
  v5 = sub_1000AC02C();
  v6 = [a1 dequeueReusableCellWithIdentifier:v5];

  if (v6)
  {
    type metadata accessor for MacListPickerTableViewCell();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = *(v2 + OBJC_IVAR____TtC8Business32MacListPickerTableViewController_listRequest);
      if (!v8)
      {
        v9 = [objc_allocWithZone(UITableViewCell) init];
LABEL_27:

        return v9;
      }

      v9 = v7;
      v10 = v2;
      v11 = *(v8 + 24);

      result = sub_1000AB96C();
      if ((v11 & 0xC000000000000001) != 0)
      {
        v13 = sub_1000AC5AC();
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_30;
        }

        if (result >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_32;
        }

        v13 = *(v11 + 8 * result + 32);
      }

      v14 = *(v13 + 40);

      result = sub_1000AB95C();
      if ((v14 & 0xC000000000000001) == 0)
      {
        if ((result & 0x8000000000000000) == 0)
        {
          if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_34:
            __break(1u);
            return result;
          }

          v15 = v10;
          v16 = *(v14 + 8 * result + 32);

          goto LABEL_12;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

LABEL_30:
      v16 = sub_1000AC5AC();
      v15 = v10;
LABEL_12:

      v17 = *(v15 + OBJC_IVAR____TtC8Business32MacListPickerTableViewController_selectionType);
      v9[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_selectionType] = v17;
      v18 = v15;
      sub_100065F44();
      v19 = *&v9[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItem];
      *&v9[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItem] = v16;
      swift_retain_n();

      sub_100065F44();

      v20 = objc_opt_self();
      v6 = v6;
      v21 = [v20 separatorColor];
      [v9 setSeparatorColor:v21];

      [v9 setSelectionStyle:0];
      v22 = OBJC_IVAR____TtC8Business32MacListPickerTableViewController_selectedIndexPaths;
      swift_beginAccess();
      v23 = *(v18 + v22);

      LOBYTE(v18) = sub_10009C7A0(a2, v23);

      v9[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItemSelected] = v18 & 1;
      sub_100065F44();
      sub_1000662E8();
      if (v17)
      {
        v9[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_accessibilityRoleIsButton] = 1;
      }

      else
      {
        v9[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_accessibilityRoleIsButton] = 0;
        sub_1000662E8();
        v25 = sub_1000AB96C() != 0;
        v26 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_isDimmed;
        v9[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_isDimmed] = v25;
        v27 = [v9 contentView];
        v28 = v27;
        v29 = 0.3;
        if (!v9[v26])
        {
          v29 = 1.0;
        }

        [v27 setAlpha:v29];
      }

      sub_1000662E8();
      v30 = sub_1000AB95C();
      result = [a1 numberOfRowsInSection:sub_1000AB96C()];
      if (!__OFSUB__(result, 1))
      {
        v31 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_showsSeparator;
        v9[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_showsSeparator] = v30 != result - 1;
        v32 = sub_100066378();
        [v32 setHidden:(v9[v31] & 1) == 0];

        goto LABEL_27;
      }

      goto LABEL_33;
    }
  }

  v24 = objc_allocWithZone(UITableViewCell);

  return [v24 init];
}

uint64_t sub_10009E0C4(uint64_t result, unint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8Business32MacListPickerTableViewController_listRequest);
  if (!v4)
  {
    return 0;
  }

  v6 = *(v4 + 24);
  if ((v6 & 0xC000000000000001) == 0)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
    {
      v7 = result;
      v8 = *(v6 + 8 * a2 + 32);
      v9 = *(v2 + OBJC_IVAR____TtC8Business32MacListPickerTableViewController_listRequest);

      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_22;
  }

  v7 = result;
  v24 = *(v2 + OBJC_IVAR____TtC8Business32MacListPickerTableViewController_listRequest);

  v8 = sub_1000AC5AC();
LABEL_6:
  v10 = *(v8 + 16);
  v11 = *(v8 + 24);

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12 || (v13 = sub_1000AC02C(), v14 = [v7 dequeueReusableHeaderFooterViewWithIdentifier:v13], v13, !v14))
  {

    return 0;
  }

  type metadata accessor for IMBDefaultSectionHeader();
  result = swift_dynamicCastClass();
  if (!result)
  {

    return 0;
  }

  v3 = *(result + OBJC_IVAR____TtC8Business23IMBDefaultSectionHeader_headerLabel);
  v15 = *(v4 + 24);
  if ((v15 & 0xC000000000000001) != 0)
  {
LABEL_22:
    v16 = result;
    v25 = v3;
    v17 = sub_1000AC5AC();
    goto LABEL_15;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v16 = result;
    v17 = *(v15 + 8 * a2 + 32);
    v18 = v3;

LABEL_15:
    v19 = *(v17 + 16);
    v20 = *(v17 + 24);

    sub_1000AC0FC();

    v21 = sub_1000AC02C();

    [v3 setText:v21];

    v22 = [*(v2 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView) separatorColor];
    v23 = sub_10008D2BC();
    [v23 setBackgroundColor:v22];

    return v16;
  }

  __break(1u);
  return result;
}

void sub_10009E3A8(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000413C(&qword_1000EFEA0, &qword_1000B11A8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v52 - v9;
  v11 = sub_1000AB97C();
  v59 = *(v11 - 8);
  v12 = *(v59 + 64);
  v14 = __chkstk_darwin(v11, v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC8Business32MacListPickerTableViewController_selectionType))
  {
    v58 = v14;
    v17 = OBJC_IVAR____TtC8Business32MacListPickerTableViewController_selectedIndexPaths;
    v18 = swift_beginAccess();
    v19 = *(v2 + v17);
    __chkstk_darwin(v18, v20);
    *(&v52 - 2) = a2;

    v60 = sub_1000A333C(sub_10001E8E0, (&v52 - 4), v19);
    v21 = *(v3 + OBJC_IVAR____TtC8Business32MacListPickerTableViewController_listRequest);
    if (!v21)
    {
      goto LABEL_7;
    }

    v22 = *(v21 + 24);

    v23 = sub_1000AB96C();
    if ((v22 & 0xC000000000000001) != 0)
    {
      v29 = sub_1000AC5AC();

      v30 = *(v29 + 48);
      swift_unknownObjectRelease();
      if (v30)
      {
LABEL_7:

        v26 = *(v3 + v17);

        v27 = sub_10009C7A0(a2, v26);

        if ((v27 & 1) == 0)
        {
          v28 = a2;
LABEL_27:
          sub_10009E884(v28, v3, a1);
          goto LABEL_28;
        }

LABEL_12:
        sub_10009EA4C(a2, a1);
LABEL_28:
        v47 = *(*(v3 + v17) + 16) != 0;
        v48 = sub_10008240C();
        v50 = v49;
        ObjectType = swift_getObjectType();
        (*(v50 + 48))(v47, ObjectType, v50);

        return;
      }
    }

    else
    {
      if ((v23 & 0x8000000000000000) != 0)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (v23 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_32:
        __break(1u);
        return;
      }

      v24 = *(v22 + 8 * v23 + 32);

      v25 = *(v24 + 48);

      if (v25)
      {
        goto LABEL_7;
      }
    }

    v31 = *(v3 + v17);

    v32 = sub_10009C7A0(a2, v31);

    if (v32)
    {

      goto LABEL_12;
    }

    v53 = a2;
    v33 = v60 + 56;
    v34 = 1 << *(v60 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(v60 + 56);
    v37 = (v34 + 63) >> 6;
    v56 = v59 + 16;
    v57 = v10;
    v55 = (v59 + 8);

    v38 = 0;
    v39 = v58;
    v54 = a1;
    while (v36)
    {
LABEL_23:
      (*(v59 + 16))(v16, *(v60 + 48) + *(v59 + 72) * (__clz(__rbit64(v36)) | (v38 << 6)), v39);
      isa = sub_1000AB92C().super.isa;
      [a1 deselectRowAtIndexPath:isa animated:1];

      swift_beginAccess();
      v42 = v57;
      sub_1000A2DC4(v16, v57);
      sub_1000A4758(v42);
      swift_endAccess();
      v43 = sub_1000AB92C().super.isa;
      v44 = [a1 cellForRowAtIndexPath:v43];

      if (v44)
      {
        type metadata accessor for MacListPickerTableViewCell();
        v45 = swift_dynamicCastClass();
        if (v45)
        {
          *(v45 + OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItemSelected) = 0;
          v46 = v44;
          sub_100065F44();
          sub_1000662E8();

          a1 = v54;
        }
      }

      v36 &= v36 - 1;
      v39 = v58;
      (*v55)(v16, v58);
    }

    while (1)
    {
      v40 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v40 >= v37)
      {

        v28 = v53;
        goto LABEL_27;
      }

      v36 = *(v33 + 8 * v40);
      ++v38;
      if (v36)
      {
        v38 = v40;
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_31;
  }
}

void sub_10009E884(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1000AB97C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = &v19 - v13;
  (*(v6 + 16))(v11, a1, v5);
  swift_beginAccess();
  sub_10009F4B4(v14, v11);
  (*(v6 + 8))(v14, v5);
  swift_endAccess();
  isa = sub_1000AB92C().super.isa;
  v16 = [a3 cellForRowAtIndexPath:isa];

  if (v16)
  {
    type metadata accessor for MacListPickerTableViewCell();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      *(v17 + OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItemSelected) = 1;
      v18 = v16;
      sub_100065F44();
      sub_1000662E8();
    }
  }
}

void sub_10009EA4C(uint64_t a1, void *a2)
{
  v4 = sub_10000413C(&qword_1000EFEA0, &qword_1000B11A8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v14 - v7;
  isa = sub_1000AB92C().super.isa;
  [a2 deselectRowAtIndexPath:isa animated:1];

  swift_beginAccess();
  sub_1000A2DC4(a1, v8);
  sub_1000A4758(v8);
  swift_endAccess();
  v10 = sub_1000AB92C().super.isa;
  v11 = [a2 cellForRowAtIndexPath:v10];

  if (v11)
  {
    type metadata accessor for MacListPickerTableViewCell();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      *(v12 + OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItemSelected) = 0;
      v13 = v11;
      sub_100065F44();
      sub_1000662E8();
    }
  }
}

uint64_t sub_10009ED8C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business32MacListPickerTableViewController_listRequest);

  v2 = *(v0 + OBJC_IVAR____TtC8Business32MacListPickerTableViewController_selectedIndexPaths);
}

id sub_10009EDCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MacListPickerTableViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10009EE84()
{
  result = qword_1000F3C68;
  if (!qword_1000F3C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F3C68);
  }

  return result;
}

uint64_t sub_10009EED8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000AB97C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_10009EF1C(uint64_t a1, uint64_t a2)
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

  sub_10000413C(&qword_1000F0840, &qword_1000B1B40);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_10009EFA4(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10000413C(&qword_1000F0818, &unk_1000B5370);
  v4 = *(sub_1000AB97C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10009F0A0(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_10009F128(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1000A36D4(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_10009F1B8(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1000AC87C();
  sub_1000AC11C();
  v9 = sub_1000AC8CC();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1000AC7AC() & 1) != 0)
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

    sub_10009FF90(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10009F308(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_1000AC06C();
  sub_1000AC87C();
  sub_1000AC11C();
  v8 = sub_1000AC8CC();

  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = sub_1000AC06C();
      v15 = v14;
      if (v13 == sub_1000AC06C() && v15 == v16)
      {

        goto LABEL_12;
      }

      v18 = sub_1000AC7AC();

      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v23 = *(*(v6 + 48) + 8 * v10);
    *a1 = v23;
    v24 = v23;
    return 0;
  }

  else
  {
LABEL_9:
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v21 = a2;
    sub_1000A0110(v21, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    *a1 = v21;
    return 1;
  }
}

uint64_t sub_10009F4B4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1000AB97C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_10009EED8(&qword_1000F0828);
  v37 = a2;
  v14 = sub_1000ABFFC();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_10009EED8(&qword_1000EFE98);
      v24 = sub_1000AC01C();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_1000A02F8(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_10009F76C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000413C(&qword_1000F3C98, &qword_1000B53B0);
  result = sub_1000AC56C();
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
      sub_1000AC87C();
      sub_1000AC11C();
      result = sub_1000AC8CC();
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

uint64_t sub_10009F9CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000413C(&qword_1000F3CA0, &qword_1000B53B8);
  result = sub_1000AC56C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1000AC06C();
      sub_1000AC87C();
      sub_1000AC11C();
      v20 = sub_1000AC8CC();

      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero(v8, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10009FC48(uint64_t a1)
{
  v2 = v1;
  v42 = sub_1000AB97C();
  v4 = *(v42 - 8);
  v5 = v4[8];
  __chkstk_darwin(v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_10000413C(&qword_1000F3C78, &unk_1000B5380);
  result = sub_1000AC56C();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_10009EED8(&qword_1000F0828);
      result = sub_1000ABFFC();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}
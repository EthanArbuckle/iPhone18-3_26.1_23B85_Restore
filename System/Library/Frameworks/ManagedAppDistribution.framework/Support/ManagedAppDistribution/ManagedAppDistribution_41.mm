uint64_t sub_100537334(char a1, void *a2)
{
  sub_100234CBC(a1);
  v3 = String._bridgeToObjectiveC()();

  v4 = [a2 valueForProperty:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  sub_100005934(v10, &v8, &qword_100783A30);
  if (v9)
  {
    sub_1001F6498(&v8, v7);
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v5 = sub_100538524(v7);

    sub_10000710C(v7);
    sub_1000032A8(v10, &qword_100783A30);
    return v5 & 1;
  }

  else
  {
    sub_1000032A8(v10, &qword_100783A30);
    return 2;
  }
}

uint64_t sub_100537498(void *a1)
{
  sub_10020A6D0(a1, v6);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_100549750(a1, &type metadata for AppInstallPhase);
  }

  sub_1004D9570();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  result = sub_100007158(v4, v5);
  if (!v1)
  {
    return v6[39];
  }

  return result;
}

uint64_t sub_100537564@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F0C48(&unk_100780A00);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - v5;
  v7 = type metadata accessor for UUID();
  sub_10020A6D0(a1, v22);
  if (swift_dynamicCast())
  {
    v8 = v21[0];
    v9 = v21[1];
    sub_100562D1C(&qword_100784988, &type metadata accessor for UUID);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    return sub_100007158(v8, v9);
  }

  else
  {
    sub_10020A6D0(a1, v22);
    v11 = swift_dynamicCast();
    v12 = *(*(v7 - 8) + 56);
    if (v11)
    {
      v13 = *(v7 - 8);
      v12(v6, 0, 1, v7);
      return (*(v13 + 32))(a2, v6, v7);
    }

    else
    {
      v12(v6, 1, 1, v7);
      sub_1000032A8(v6, &unk_100780A00);
      sub_100513858();
      swift_allocError();
      v15 = v14;
      v22[0] = v7;
      sub_1001F0C48(&qword_1007873F8);
      v16 = String.init<A>(describing:)();
      v18 = v17;
      sub_100006D8C(a1, a1[3]);
      v22[0] = swift_getDynamicType();
      sub_1001F0C48(&qword_1007868B0);
      v19 = String.init<A>(describing:)();
      *v15 = v16;
      *(v15 + 8) = v18;
      *(v15 + 16) = v19;
      *(v15 + 24) = v20;
      *(v15 + 40) = 2;
      return swift_willThrow();
    }
  }
}

uint64_t sub_100537820@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F0C48(&qword_10077EF30);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - v5;
  v7 = type metadata accessor for Date();
  sub_10020A6D0(a1, v22);
  if (swift_dynamicCast())
  {
    v8 = v21[0];
    v9 = v21[1];
    sub_100562D1C(&qword_100785A20, &type metadata accessor for Date);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    return sub_100007158(v8, v9);
  }

  else
  {
    sub_10020A6D0(a1, v22);
    v11 = swift_dynamicCast();
    v12 = *(*(v7 - 8) + 56);
    if (v11)
    {
      v13 = *(v7 - 8);
      v12(v6, 0, 1, v7);
      return (*(v13 + 32))(a2, v6, v7);
    }

    else
    {
      v12(v6, 1, 1, v7);
      sub_1000032A8(v6, &qword_10077EF30);
      sub_100513858();
      swift_allocError();
      v15 = v14;
      v22[0] = v7;
      sub_1001F0C48(&qword_100787428);
      v16 = String.init<A>(describing:)();
      v18 = v17;
      sub_100006D8C(a1, a1[3]);
      v22[0] = swift_getDynamicType();
      sub_1001F0C48(&qword_1007868B0);
      v19 = String.init<A>(describing:)();
      *v15 = v16;
      *(v15 + 8) = v18;
      *(v15 + 16) = v19;
      *(v15 + 24) = v20;
      *(v15 + 40) = 2;
      return swift_willThrow();
    }
  }
}

uint64_t sub_100537ADC(void *a1)
{
  sub_10020A6D0(a1, v6);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_100549878(a1, &type metadata for AnyDistributor);
  }

  sub_1004D9B38();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  result = sub_100007158(v4, v5);
  if (!v1)
  {
    return v7;
  }

  return result;
}

uint64_t sub_100537C3C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10020A6D0(a1, v14);
  if (swift_dynamicCast())
  {
    sub_1004D9C88();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    return sub_100007158(v13, *(&v13 + 1));
  }

  sub_10020A6D0(a1, v14);
  if (swift_dynamicCast())
  {
    v5 = *(&v13 + 1);
    result = v13;
    if (*(&v13 + 1) >> 60 != 15)
    {
      *a2 = v13;
      return result;
    }
  }

  else
  {
    result = 0;
    v5 = 0xF000000000000000;
  }

  sub_1001CEE68(result, v5);
  sub_100513858();
  swift_allocError();
  v7 = v6;
  v14[0] = &type metadata for AppStoreReceipt;
  sub_1001F0C48(&qword_1007875E8);
  v8 = String.init<A>(describing:)();
  v10 = v9;
  sub_100006D8C(a1, a1[3]);
  v14[0] = swift_getDynamicType();
  sub_1001F0C48(&qword_1007868B0);
  v11 = String.init<A>(describing:)();
  *v7 = v8;
  *(v7 + 8) = v10;
  *(v7 + 16) = v11;
  *(v7 + 24) = v12;
  *(v7 + 40) = 2;
  return swift_willThrow();
}

uint64_t sub_100537E44(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t *a5)
{
  sub_10020A6D0(a1, v13);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_100549AFC(a1, a4, a4, a5);
  }

  a3();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  result = sub_100007158(v11, v12);
  if (!v5)
  {
    return v13[47];
  }

  return result;
}

uint64_t sub_100537F3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F0C48(&qword_10077FE28);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - v5;
  v7 = type metadata accessor for Platform();
  sub_10020A6D0(a1, v22);
  if (swift_dynamicCast())
  {
    v8 = v21[0];
    v9 = v21[1];
    sub_100562D1C(&qword_1007853F0, &type metadata accessor for Platform);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    return sub_100007158(v8, v9);
  }

  else
  {
    sub_10020A6D0(a1, v22);
    v11 = swift_dynamicCast();
    v12 = *(*(v7 - 8) + 56);
    if (v11)
    {
      v13 = *(v7 - 8);
      v12(v6, 0, 1, v7);
      return (*(v13 + 32))(a2, v6, v7);
    }

    else
    {
      v12(v6, 1, 1, v7);
      sub_1000032A8(v6, &qword_10077FE28);
      sub_100513858();
      swift_allocError();
      v15 = v14;
      v22[0] = v7;
      sub_1001F0C48(&qword_100787470);
      v16 = String.init<A>(describing:)();
      v18 = v17;
      sub_100006D8C(a1, a1[3]);
      v22[0] = swift_getDynamicType();
      sub_1001F0C48(&qword_1007868B0);
      v19 = String.init<A>(describing:)();
      *v15 = v16;
      *(v15 + 8) = v18;
      *(v15 + 16) = v19;
      *(v15 + 24) = v20;
      *(v15 + 40) = 2;
      return swift_willThrow();
    }
  }
}

uint64_t sub_1005381F8(void *a1)
{
  sub_10020A6D0(a1, v6);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_100549C24(a1, &type metadata for Persona);
  }

  sub_1004D94C8();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  result = sub_100007158(v4, v5);
  if (!v1)
  {
    return v7;
  }

  return result;
}

uint64_t sub_1005382C4(void *a1)
{
  sub_10020A6D0(a1, v6);
  if (swift_dynamicCast())
  {
    sub_1004D9D30();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    result = sub_100007158(v4, v5);
    if (!v1)
    {
      return v7;
    }
  }

  else
  {
    result = sub_100549D54(a1, &type metadata for NetworkPolicy.Decision);
    if (!v1)
    {
      LOWORD(v7) = result & 0x101;
      BYTE2(v7) = BYTE2(result) & 1;
      HIBYTE(v7) = BYTE3(result) & 1;
      return v7;
    }
  }

  return result;
}

uint64_t sub_1005383F8(uint64_t a1)
{
  v3 = type metadata accessor for LogKey();
  if (v3 == &type metadata for Data)
  {
    v6 = &type metadata for Data;
    v7 = a1;
    return sub_100549E88(v7, v6);
  }

  v4 = v3;
  sub_10020A6D0(a1, v10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v7 = a1;
    v6 = v4;
    return sub_100549E88(v7, v6);
  }

  sub_100562D1C(&qword_1007853C0, &type metadata accessor for LogKey);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  result = sub_100007158(v8, v9);
  if (!v1)
  {
    return v11;
  }

  return result;
}

uint64_t sub_100538524(void *a1)
{
  sub_10020A6D0(a1, v7);
  if (swift_dynamicCast())
  {
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v3 = sub_100007158(v5, v6);
    if (!v1)
    {
      v3 = v7[39];
    }
  }

  else
  {
    v3 = sub_100549FA8(a1, &type metadata for Bool);
  }

  return v3 & 1;
}

uint64_t sub_100538638@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F0C48(&unk_1007843C0);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - v5;
  v7 = type metadata accessor for AppInstallRequestType();
  sub_10020A6D0(a1, v22);
  if (swift_dynamicCast())
  {
    v8 = v21[0];
    v9 = v21[1];
    sub_100562D1C(&qword_1007853A0, &type metadata accessor for AppInstallRequestType);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    return sub_100007158(v8, v9);
  }

  else
  {
    sub_10020A6D0(a1, v22);
    v11 = swift_dynamicCast();
    v12 = *(*(v7 - 8) + 56);
    if (v11)
    {
      v13 = *(v7 - 8);
      v12(v6, 0, 1, v7);
      return (*(v13 + 32))(a2, v6, v7);
    }

    else
    {
      v12(v6, 1, 1, v7);
      sub_1000032A8(v6, &unk_1007843C0);
      sub_100513858();
      swift_allocError();
      v15 = v14;
      v22[0] = v7;
      sub_1001F0C48(&qword_100787548);
      v16 = String.init<A>(describing:)();
      v18 = v17;
      sub_100006D8C(a1, a1[3]);
      v22[0] = swift_getDynamicType();
      sub_1001F0C48(&qword_1007868B0);
      v19 = String.init<A>(describing:)();
      *v15 = v16;
      *(v15 + 8) = v18;
      *(v15 + 16) = v19;
      *(v15 + 24) = v20;
      *(v15 + 40) = 2;
      return swift_willThrow();
    }
  }
}

uint64_t sub_100538938(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t *a5)
{
  sub_10020A6D0(a1, v13);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_10054A208(a1, a4, a4, a5);
  }

  a3();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  result = sub_100007158(v11, v12);
  if (!v5)
  {
    return v14;
  }

  return result;
}

uint64_t sub_100538A30(void *a1)
{
  sub_10020A6D0(a1, v6);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_10054A32C(a1, &type metadata for String);
  }

  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  result = sub_100007158(v4, v5);
  if (!v1)
  {
    return v7;
  }

  return result;
}

uint64_t sub_100538AFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - v5;
  v7 = type metadata accessor for URL();
  sub_10020A6D0(a1, v22);
  if (swift_dynamicCast())
  {
    v8 = v21[0];
    v9 = v21[1];
    sub_100562D1C(&qword_100781BB8, &type metadata accessor for URL);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    return sub_100007158(v8, v9);
  }

  else
  {
    sub_10020A6D0(a1, v22);
    v11 = swift_dynamicCast();
    v12 = *(*(v7 - 8) + 56);
    if (v11)
    {
      v13 = *(v7 - 8);
      v12(v6, 0, 1, v7);
      return (*(v13 + 32))(a2, v6, v7);
    }

    else
    {
      v12(v6, 1, 1, v7);
      sub_1000032A8(v6, &unk_1007809F0);
      sub_100513858();
      swift_allocError();
      v15 = v14;
      v22[0] = v7;
      sub_1001F0C48(&qword_100787480);
      v16 = String.init<A>(describing:)();
      v18 = v17;
      sub_100006D8C(a1, a1[3]);
      v22[0] = swift_getDynamicType();
      sub_1001F0C48(&qword_1007868B0);
      v19 = String.init<A>(describing:)();
      *v15 = v16;
      *(v15 + 8) = v18;
      *(v15 + 16) = v19;
      *(v15 + 24) = v20;
      *(v15 + 40) = 2;
      return swift_willThrow();
    }
  }
}

uint64_t sub_100538E40(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t *a5)
{
  sub_10020A6D0(a1, v13);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_10054A458(a1, a4, a4, a5);
  }

  a3();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  result = sub_100007158(v11, v12);
  if (!v5)
  {
    return v14;
  }

  return result;
}

uint64_t sub_100538FA8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10020A6D0(a1, &v16);
  if (swift_dynamicCast())
  {
    v4 = v20[0];
    v5 = v20[1];
    sub_1004EAE54();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    return sub_100007158(v4, v5);
  }

  else
  {
    sub_10020A6D0(a1, v20);
    result = swift_dynamicCast();
    if (result)
    {
      v7 = v17;
      *a2 = v16;
      a2[1] = v7;
      v8 = v19;
      a2[2] = v18;
      a2[3] = v8;
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      sub_1000032A8(&v16, &qword_10077E968);
      sub_100513858();
      swift_allocError();
      v10 = v9;
      *&v16 = &type metadata for BlockVerifierState;
      sub_1001F0C48(&qword_100787620);
      v11 = String.init<A>(describing:)();
      v13 = v12;
      sub_100006D8C(a1, a1[3]);
      *&v16 = swift_getDynamicType();
      sub_1001F0C48(&qword_1007868B0);
      v14 = String.init<A>(describing:)();
      *v10 = v11;
      *(v10 + 8) = v13;
      *(v10 + 16) = v14;
      *(v10 + 24) = v15;
      *(v10 + 40) = 2;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100539228(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  sub_10020A6D0(a1, v12);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_10054A458(a1, a3, a3, a5);
  }

  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  result = sub_100007158(v10, v11);
  if (!v5)
  {
    return v13;
  }

  return result;
}

uint64_t sub_10053935C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10020A6D0(a1, &v18);
  if (swift_dynamicCast())
  {
    sub_1004EAD58();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    return sub_100007158(*&v17[0], *(&v17[0] + 1));
  }

  sub_10020A6D0(a1, v25);
  result = swift_dynamicCast();
  if (result)
  {
    if ((~v23 & 0x3000000000000000) != 0 || (*(&v23 + 1) & 0xFFFFFFFFFFFFFFFELL) != 0x7FFFFFFE)
    {
      v5 = v21;
      v6 = v23;
      v7 = v24;
      a2[4] = v22;
      a2[5] = v6;
      a2[6] = v7;
      v8 = v19;
      v9 = v20;
      *a2 = v18;
      a2[1] = v8;
      a2[2] = v9;
      a2[3] = v5;
      return result;
    }
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    v23 = xmmword_1006B24D0;
    v24 = 0uLL;
  }

  v17[4] = v22;
  v17[5] = v23;
  v17[6] = v24;
  v17[0] = v18;
  v17[1] = v19;
  v17[2] = v20;
  v17[3] = v21;
  sub_1000032A8(v17, &qword_100787630);
  sub_100513858();
  swift_allocError();
  v11 = v10;
  sub_1001F0C48(&qword_100787638);
  v12 = String.init<A>(describing:)();
  v14 = v13;
  sub_100006D8C(a1, a1[3]);
  swift_getDynamicType();
  sub_1001F0C48(&qword_1007868B0);
  v15 = String.init<A>(describing:)();
  *v11 = v12;
  *(v11 + 8) = v14;
  *(v11 + 16) = v15;
  *(v11 + 24) = v16;
  *(v11 + 40) = 2;
  return swift_willThrow();
}

__n128 sub_10053959C@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10020A6D0(a1, v11);
  if (swift_dynamicCast())
  {
    sub_1004EAD04();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100007158(v9, v10);
    if (v2)
    {
      return result;
    }
  }

  else
  {
    sub_10054A57C(a1, v14);
    if (v2)
    {
      return result;
    }

    *v12 = v14[0];
    *&v12[16] = v14[1];
    v13 = v14[2];
  }

  v6 = *&v12[24];
  v7 = v13;
  v8 = *(&v13 + 1);
  result = *&v12[8];
  *a2 = v12[0];
  *(a2 + 8) = result;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_1005396AC(void *a1)
{
  sub_10020A6D0(a1, v5);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_10054A6D4(a1, &type metadata for DDMJournalType);
  }

  sub_100328B28();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  return sub_100007158(v3, v4);
}

uint64_t sub_100539768@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F0C48(&qword_1007874F8);
  __chkstk_darwin(v4 - 8);
  v6 = v20 - v5;
  v7 = type metadata accessor for DDMJournalEntry();
  sub_10020A6D0(a1, v21);
  if (swift_dynamicCast())
  {
    v8 = v20[0];
    v9 = v20[1];
    sub_100562D1C(&qword_100785B60, type metadata accessor for DDMJournalEntry);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    return sub_100007158(v8, v9);
  }

  else
  {
    sub_10020A6D0(a1, v21);
    v11 = swift_dynamicCast();
    v12 = *(*(v7 - 8) + 56);
    if (v11)
    {
      v12(v6, 0, 1, v7);
      return sub_100566A40(v6, a2, type metadata accessor for DDMJournalEntry);
    }

    else
    {
      v12(v6, 1, 1, v7);
      sub_1000032A8(v6, &qword_1007874F8);
      sub_100513858();
      swift_allocError();
      v14 = v13;
      v21[0] = v7;
      sub_1001F0C48(&qword_100787500);
      v15 = String.init<A>(describing:)();
      v17 = v16;
      sub_100006D8C(a1, a1[3]);
      v21[0] = swift_getDynamicType();
      sub_1001F0C48(&qword_1007868B0);
      v18 = String.init<A>(describing:)();
      *v14 = v15;
      *(v14 + 8) = v17;
      *(v14 + 16) = v18;
      *(v14 + 24) = v19;
      *(v14 + 40) = 2;
      return swift_willThrow();
    }
  }
}

uint64_t sub_100539A14(void *a1)
{
  v3 = sub_1001F0C48(&qword_100781758);
  sub_10020A6D0(a1, v7);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_10054A918(a1, v3, &qword_100781758, &unk_1006AD970, &qword_100787550);
  }

  sub_100566C94();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  result = sub_100007158(v5, v6);
  if (!v1)
  {
    return v8;
  }

  return result;
}

uint64_t sub_100539B60(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t *a5)
{
  sub_10020A6D0(a1, v13);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_10054A7F0(a1, a4, a4, a5);
  }

  a3();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  result = sub_100007158(v11, v12);
  if (!v5)
  {
    return v13[47];
  }

  return result;
}

uint64_t sub_100539C58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F0C48(&qword_10077F398);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - v5;
  v7 = type metadata accessor for DDMPurchaseMethod();
  sub_10020A6D0(a1, v22);
  if (swift_dynamicCast())
  {
    v8 = v21[0];
    v9 = v21[1];
    sub_100562D1C(&qword_100785B00, &type metadata accessor for DDMPurchaseMethod);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    return sub_100007158(v8, v9);
  }

  else
  {
    sub_10020A6D0(a1, v22);
    v11 = swift_dynamicCast();
    v12 = *(*(v7 - 8) + 56);
    if (v11)
    {
      v13 = *(v7 - 8);
      v12(v6, 0, 1, v7);
      return (*(v13 + 32))(a2, v6, v7);
    }

    else
    {
      v12(v6, 1, 1, v7);
      sub_1000032A8(v6, &qword_10077F398);
      sub_100513858();
      swift_allocError();
      v15 = v14;
      v22[0] = v7;
      sub_1001F0C48(&qword_100787468);
      v16 = String.init<A>(describing:)();
      v18 = v17;
      sub_100006D8C(a1, a1[3]);
      v22[0] = swift_getDynamicType();
      sub_1001F0C48(&qword_1007868B0);
      v19 = String.init<A>(describing:)();
      *v15 = v16;
      *(v15 + 8) = v18;
      *(v15 + 16) = v19;
      *(v15 + 24) = v20;
      *(v15 + 40) = 2;
      return swift_willThrow();
    }
  }
}

uint64_t sub_100539F58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F0C48(&qword_10077F340);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - v5;
  v7 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.LicenseEnum();
  sub_10020A6D0(a1, v22);
  if (swift_dynamicCast())
  {
    v8 = v21[0];
    v9 = v21[1];
    sub_100562D1C(&qword_100785B18, &type metadata accessor for ManagedAppDeclaration.InstallBehavior.LicenseEnum);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    return sub_100007158(v8, v9);
  }

  else
  {
    sub_10020A6D0(a1, v22);
    v11 = swift_dynamicCast();
    v12 = *(*(v7 - 8) + 56);
    if (v11)
    {
      v13 = *(v7 - 8);
      v12(v6, 0, 1, v7);
      return (*(v13 + 32))(a2, v6, v7);
    }

    else
    {
      v12(v6, 1, 1, v7);
      sub_1000032A8(v6, &qword_10077F340);
      sub_100513858();
      swift_allocError();
      v15 = v14;
      v22[0] = v7;
      sub_1001F0C48(&qword_100787490);
      v16 = String.init<A>(describing:)();
      v18 = v17;
      sub_100006D8C(a1, a1[3]);
      v22[0] = swift_getDynamicType();
      sub_1001F0C48(&qword_1007868B0);
      v19 = String.init<A>(describing:)();
      *v15 = v16;
      *(v15 + 8) = v18;
      *(v15 + 16) = v19;
      *(v15 + 24) = v20;
      *(v15 + 40) = 2;
      return swift_willThrow();
    }
  }
}

uint64_t sub_10053A258(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t *a5)
{
  sub_10020A6D0(a1, v13);
  if (swift_dynamicCast())
  {
    a3();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    result = sub_100007158(v11, v12);
    if (!v5)
    {
      LOBYTE(result) = v13[47];
      return result & 1;
    }
  }

  else
  {
    result = sub_10054A0D4(a1, a4, a4, a5);
    if (!v5)
    {
      return result & 1;
    }
  }

  return result;
}

uint64_t sub_10053A358@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F0C48(&qword_10077F348);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - v5;
  v7 = type metadata accessor for ComposedIdentifier();
  sub_10020A6D0(a1, v22);
  if (swift_dynamicCast())
  {
    v8 = v21[0];
    v9 = v21[1];
    sub_100562D1C(&qword_100785B28, &type metadata accessor for ComposedIdentifier);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    return sub_100007158(v8, v9);
  }

  else
  {
    sub_10020A6D0(a1, v22);
    v11 = swift_dynamicCast();
    v12 = *(*(v7 - 8) + 56);
    if (v11)
    {
      v13 = *(v7 - 8);
      v12(v6, 0, 1, v7);
      return (*(v13 + 32))(a2, v6, v7);
    }

    else
    {
      v12(v6, 1, 1, v7);
      sub_1000032A8(v6, &qword_10077F348);
      sub_100513858();
      swift_allocError();
      v15 = v14;
      v22[0] = v7;
      sub_1001F0C48(&qword_1007874A0);
      v16 = String.init<A>(describing:)();
      v18 = v17;
      sub_100006D8C(a1, a1[3]);
      v22[0] = swift_getDynamicType();
      sub_1001F0C48(&qword_1007868B0);
      v19 = String.init<A>(describing:)();
      *v15 = v16;
      *(v15 + 8) = v18;
      *(v15 + 16) = v19;
      *(v15 + 24) = v20;
      *(v15 + 40) = 2;
      return swift_willThrow();
    }
  }
}

uint64_t sub_10053A658(void *a1)
{
  v3 = sub_1001F0C48(&qword_100787518);
  sub_10020A6D0(a1, v7);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_10054A918(a1, v3, &qword_100787518, &unk_1006B8F60, &qword_100787530);
  }

  sub_100566B3C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  result = sub_100007158(v5, v6);
  if (!v1)
  {
    return v8;
  }

  return result;
}

uint64_t sub_10053A760@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F0C48(&qword_10077F3A0);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - v5;
  updated = type metadata accessor for ManagedAppStatus.UpdateState();
  sub_10020A6D0(a1, v22);
  if (swift_dynamicCast())
  {
    v8 = v21[0];
    v9 = v21[1];
    sub_100562D1C(&qword_100787580, &type metadata accessor for ManagedAppStatus.UpdateState);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    return sub_100007158(v8, v9);
  }

  else
  {
    sub_10020A6D0(a1, v22);
    v11 = swift_dynamicCast();
    v12 = *(*(updated - 8) + 56);
    if (v11)
    {
      v13 = *(updated - 8);
      v12(v6, 0, 1, updated);
      return (*(v13 + 32))(a2, v6, updated);
    }

    else
    {
      v12(v6, 1, 1, updated);
      sub_1000032A8(v6, &qword_10077F3A0);
      sub_100513858();
      swift_allocError();
      v15 = v14;
      v22[0] = updated;
      sub_1001F0C48(&qword_100787578);
      v16 = String.init<A>(describing:)();
      v18 = v17;
      sub_100006D8C(a1, a1[3]);
      v22[0] = swift_getDynamicType();
      sub_1001F0C48(&qword_1007868B0);
      v19 = String.init<A>(describing:)();
      *v15 = v16;
      *(v15 + 8) = v18;
      *(v15 + 16) = v19;
      *(v15 + 24) = v20;
      *(v15 + 40) = 2;
      return swift_willThrow();
    }
  }
}

uint64_t sub_10053AA1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F0C48(&qword_10077F3D8);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - v5;
  v7 = type metadata accessor for ManagedAppStatus.State();
  sub_10020A6D0(a1, v22);
  if (swift_dynamicCast())
  {
    v8 = v21[0];
    v9 = v21[1];
    sub_100562D1C(&qword_100787510, &type metadata accessor for ManagedAppStatus.State);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    return sub_100007158(v8, v9);
  }

  else
  {
    sub_10020A6D0(a1, v22);
    v11 = swift_dynamicCast();
    v12 = *(*(v7 - 8) + 56);
    if (v11)
    {
      v13 = *(v7 - 8);
      v12(v6, 0, 1, v7);
      return (*(v13 + 32))(a2, v6, v7);
    }

    else
    {
      v12(v6, 1, 1, v7);
      sub_1000032A8(v6, &qword_10077F3D8);
      sub_100513858();
      swift_allocError();
      v15 = v14;
      v22[0] = v7;
      sub_1001F0C48(&qword_100787508);
      v16 = String.init<A>(describing:)();
      v18 = v17;
      sub_100006D8C(a1, a1[3]);
      v22[0] = swift_getDynamicType();
      sub_1001F0C48(&qword_1007868B0);
      v19 = String.init<A>(describing:)();
      *v15 = v16;
      *(v15 + 8) = v18;
      *(v15 + 16) = v19;
      *(v15 + 24) = v20;
      *(v15 + 40) = 2;
      return swift_willThrow();
    }
  }
}

uint64_t sub_10053ACD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F0C48(&qword_10077F130);
  __chkstk_darwin(v4 - 8);
  v6 = v20 - v5;
  v7 = type metadata accessor for DDMCachedMetadata(0);
  sub_10020A6D0(a1, v21);
  if (swift_dynamicCast())
  {
    v8 = v20[0];
    v9 = v20[1];
    sub_100562D1C(&qword_100785B48, type metadata accessor for DDMCachedMetadata);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    return sub_100007158(v8, v9);
  }

  else
  {
    sub_10020A6D0(a1, v21);
    v11 = swift_dynamicCast();
    v12 = *(*(v7 - 8) + 56);
    if (v11)
    {
      v12(v6, 0, 1, v7);
      return sub_100566A40(v6, a2, type metadata accessor for DDMCachedMetadata);
    }

    else
    {
      v12(v6, 1, 1, v7);
      sub_1000032A8(v6, &qword_10077F130);
      sub_100513858();
      swift_allocError();
      v14 = v13;
      v21[0] = v7;
      sub_1001F0C48(&qword_100787598);
      v15 = String.init<A>(describing:)();
      v17 = v16;
      sub_100006D8C(a1, a1[3]);
      v21[0] = swift_getDynamicType();
      sub_1001F0C48(&qword_1007868B0);
      v18 = String.init<A>(describing:)();
      *v14 = v15;
      *(v14 + 8) = v17;
      *(v14 + 16) = v18;
      *(v14 + 24) = v19;
      *(v14 + 40) = 2;
      return swift_willThrow();
    }
  }
}

uint64_t sub_10053AF84(void *a1)
{
  v3 = sub_1001F0C48(&qword_100787690);
  sub_10020A6D0(a1, v7);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_10054ACC4(a1, v3);
  }

  sub_100568104();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  result = sub_100007158(v5, v6);
  if (!v1)
  {
    return v8;
  }

  return result;
}

uint64_t sub_10053B06C(void *a1, uint64_t a2, void (*a3)(char *))
{
  v6 = type metadata accessor for LicenseStorageDatabaseTransaction(0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(sub_1001F0C48(&qword_1007812A0) + 36);
  v11 = *(v7 + 28);
  v12 = type metadata accessor for URL();
  (*(*(v12 - 8) + 16))(&v9[v11], a2 + v10, v12);
  *v9 = a1;
  v13 = a1;
  a3(v9);
  return sub_100566034(v9, type metadata accessor for LicenseStorageDatabaseTransaction);
}

uint64_t sub_10053B1A4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v88 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v88 - v11;
  __chkstk_darwin(v10);
  v14 = &v88 - v13;
  swift_beginAccess();
  v15 = *(v0 + 16);
  v16 = *(v15 + 16);
  v93 = v12;
  v94 = v14;
  if (!v16)
  {
    goto LABEL_10;
  }

  v17 = sub_10052213C(5063748, 0xE300000000000000);
  if ((v18 & 1) == 0)
  {

LABEL_10:
    v99 = 0;
    goto LABEL_11;
  }

  v19 = (*(v15 + 56) + 2 * v17);
  v20 = *v19;
  v21 = v19[1];

  LOBYTE(v99) = v20;
  HIBYTE(v99) = v21;
  if (v20)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    if ((v99 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_11:
  static Logger.sql.getter();
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.info.getter();
  v39 = os_log_type_enabled(v37, v38);
  v95 = v3;
  if (v39)
  {
    v40 = v2;
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v98[0] = v42;
    *v41 = 136446210;
    *(v41 + 4) = sub_1002346CC(5063748, 0xE300000000000000, v98);
    _os_log_impl(&_mh_execute_header, v37, v38, "Checking if %{public}s schema needs to be updated", v41, 0xCu);
    sub_10000710C(v42);

    v2 = v40;

    v3 = *(v3 + 8);
    (v3)(v9, v40);
  }

  else
  {

    v3 = *(v3 + 8);
    (v3)(v9, v2);
  }

  v43 = v96;
  result = sub_100541504(sub_100541060, 0);
  if (!v43)
  {
    v96 = 0;
    static Logger.sql.getter();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    v46 = os_log_type_enabled(v44, v45);
    v92 = v2;
    if (v46)
    {
      v47 = swift_slowAlloc();
      v48 = v2;
      v2 = swift_slowAlloc();
      v98[0] = v2;
      *v47 = 136446210;
      *(v47 + 4) = sub_1002346CC(5063748, 0xE300000000000000, v98);
      _os_log_impl(&_mh_execute_header, v44, v45, "%{public}s schema is up-to-date", v47, 0xCu);
      sub_10000710C(v2);

      v49 = v6;
      v50 = v48;
    }

    else
    {

      v49 = v6;
      v50 = v2;
    }

    (v3)(v49, v50);
    LOBYTE(v99) = 1;
    v51 = swift_allocObject();
    *(v51 + 16) = &v99;
    swift_beginAccess();
    v52 = swift_allocObject();
    *(v52 + 16) = sub_1005683F8;
    *(v52 + 24) = v51;
    v22 = v52;
    v53 = v51;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v97 = *(v1 + 16);
    v55 = v97;
    *(v1 + 16) = 0x8000000000000000;
    v57 = sub_10052213C(5063748, 0xE300000000000000);
    v58 = v55[2];
    v59 = (v56 & 1) == 0;
    v60 = v58 + v59;
    if (__OFADD__(v58, v59))
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v2) = v56;
      if (v55[3] < v60)
      {
        sub_1005B93F4(v60, isUniquelyReferenced_nonNull_native);
        v55 = v97;
        v61 = sub_10052213C(5063748, 0xE300000000000000);
        v3 = v95;
        if ((v2 & 1) != (v62 & 1))
        {
          goto LABEL_49;
        }

        v57 = v61;
        *(v1 + 16) = v55;
        if (v2)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

      v3 = v95;
      if (isUniquelyReferenced_nonNull_native)
      {
        *(v1 + 16) = v55;
        if (v56)
        {
LABEL_26:
          *(v55[7] + 2 * v57) = 1;
          swift_endAccess();
          v25 = sub_1005683F8;
          if (v99 != 1)
          {
            sub_1001DFE6C(sub_1005683F8);
            v64 = sub_1005684FC;
            goto LABEL_30;
          }

          v23 = sub_1005684FC;
          v2 = v92;
          v24 = v53;
          if ((v99 & 0x100) == 0)
          {
LABEL_5:
            v90 = v25;
            v91 = v23;
            v26 = v94;
            static Logger.sql.getter();
            v27 = Logger.logObject.getter();
            v28 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v27, v28))
            {
              v29 = swift_slowAlloc();
              v89 = v22;
              v30 = v2;
              v31 = v29;
              v32 = swift_slowAlloc();
              v98[0] = v32;
              *v31 = 136446210;
              *(v31 + 4) = sub_1002346CC(5063748, 0xE300000000000000, v98);
              _os_log_impl(&_mh_execute_header, v27, v28, "Checking if %{public}s DB contents needs to be prepared for first use after daemon launch", v31, 0xCu);
              sub_10000710C(v32);

              v2 = v30;
              v22 = v89;
            }

            v33 = *(v3 + 8);
            v34 = v33(v26, v2);
            __chkstk_darwin(v34);
            v35 = v96;
            sub_100541504(nullsub_1, (&v88 - 4));
            v96 = v35;
            if (v35)
            {
              sub_1001DFE6C(v90);
              return sub_1001DFE6C(v91);
            }

            v94 = v24;
            v67 = v93;
            static Logger.sql.getter();
            v68 = Logger.logObject.getter();
            v69 = static os_log_type_t.default.getter();
            v70 = os_log_type_enabled(v68, v69);
            v89 = v22;
            if (v70)
            {
              v71 = v2;
              v72 = swift_slowAlloc();
              v73 = swift_slowAlloc();
              v98[0] = v73;
              *v72 = 136446210;
              *(v72 + 4) = sub_1002346CC(5063748, 0xE300000000000000, v98);
              _os_log_impl(&_mh_execute_header, v68, v69, "%{public}s DB contents are prepared for first use after daemon launch", v72, 0xCu);
              sub_10000710C(v73);

              v74 = v67;
              v75 = v71;
            }

            else
            {

              v74 = v67;
              v75 = v2;
            }

            v33(v74, v75);
            HIBYTE(v99) = 1;
            v76 = swift_allocObject();
            *(v76 + 16) = &v99;
            swift_beginAccess();
            v77 = swift_allocObject();
            *(v77 + 16) = sub_1005683F8;
            *(v77 + 24) = v76;
            v78 = swift_isUniquelyReferenced_nonNull_native();
            v97 = *(v1 + 16);
            v79 = v97;
            *(v1 + 16) = 0x8000000000000000;
            v81 = sub_10052213C(5063748, 0xE300000000000000);
            v82 = v79[2];
            v83 = (v80 & 1) == 0;
            v84 = v82 + v83;
            if (__OFADD__(v82, v83))
            {
              __break(1u);
            }

            else
            {
              LOBYTE(v76) = v80;
              if (v79[3] < v84)
              {
                sub_1005B93F4(v84, v78);
                v79 = v97;
                v85 = sub_10052213C(5063748, 0xE300000000000000);
                if ((v76 & 1) == (v86 & 1))
                {
                  v81 = v85;
LABEL_41:
                  *(v1 + 16) = v79;
                  if ((v76 & 1) == 0)
                  {
                    v87 = (*(v77 + 16))();
                    sub_1005C32A8(v81, 5063748, 0xE300000000000000, v87 & 0x101, v79);
                  }

                  *(v79[7] + 2 * v81 + 1) = 1;
                  swift_endAccess();
                  sub_1001DFE6C(v90);
                  sub_1001DFE6C(v91);
                  v66 = sub_1005684FC;
                  v65 = sub_1005683F8;
                  goto LABEL_31;
                }

LABEL_49:
                result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
                return result;
              }

              if (v78)
              {
                goto LABEL_41;
              }
            }

            sub_1005C39E0();
            v79 = v97;
            goto LABEL_41;
          }

LABEL_28:
          sub_1001DFE6C(v25);
          v64 = v23;
LABEL_30:
          sub_1001DFE6C(v64);
          v65 = 0;
          v66 = 0;
LABEL_31:
          sub_1001DFE6C(v65);
          return sub_1001DFE6C(v66);
        }

LABEL_25:
        v63 = (*(v22 + 16))();
        sub_1005C32A8(v57, 5063748, 0xE300000000000000, v63 & 0x101, v55);
        goto LABEL_26;
      }
    }

    sub_1005C39E0();
    v55 = v97;
    *(v1 + 16) = v97;
    if (v2)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  return result;
}

uint64_t sub_10053BBD0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v93 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v86 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v86 - v10;
  __chkstk_darwin(v9);
  v92 = &v86 - v12;
  swift_beginAccess();
  v13 = *(v0 + 16);
  if (!*(v13 + 16))
  {
    goto LABEL_6;
  }

  v14 = sub_10052213C(0xD000000000000016, 0x80000001006CAAE0);
  if ((v15 & 1) == 0)
  {

LABEL_6:
    v97 = 0;
    goto LABEL_7;
  }

  v16 = (*(v13 + 56) + 2 * v14);
  v17 = *v16;
  v18 = v16[1];

  LOBYTE(v97) = v17;
  HIBYTE(v97) = v18;
  if (v17)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_22;
  }

LABEL_7:
  v91 = v11;
  static Logger.sql.getter();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = v2;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v96[0] = v27;
    *v26 = 136446210;
    *(v26 + 4) = sub_1002346CC(0xD000000000000016, 0x80000001006CAAE0, v96);
    _os_log_impl(&_mh_execute_header, v23, v24, "Checking if %{public}s schema needs to be updated", v26, 0xCu);
    sub_10000710C(v27);

    v2 = v25;
  }

  v28 = *(v93 + 8);
  v28(v8, v2);
  v29 = v94;
  result = sub_100541504(sub_1005410BC, 0);
  if (!v29)
  {
    v94 = 0;
    static Logger.sql.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    v33 = os_log_type_enabled(v31, v32);
    v89 = v2;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v35 = v2;
      v36 = swift_slowAlloc();
      v96[0] = v36;
      *v34 = 136446210;
      *(v34 + 4) = sub_1002346CC(0xD000000000000016, 0x80000001006CAAE0, v96);
      _os_log_impl(&_mh_execute_header, v31, v32, "%{public}s schema is up-to-date", v34, 0xCu);
      sub_10000710C(v36);

      v37 = v5;
      v38 = v35;
    }

    else
    {

      v37 = v5;
      v38 = v2;
    }

    v28(v37, v38);
    LOBYTE(v97) = 1;
    v39 = swift_allocObject();
    *(v39 + 16) = &v97;
    swift_beginAccess();
    v40 = swift_allocObject();
    *(v40 + 16) = sub_1005683F8;
    *(v40 + 24) = v39;
    v90 = v40;
    v21 = v39;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v95 = *(v1 + 16);
    v42 = v95;
    *(v1 + 16) = 0x8000000000000000;
    v44 = sub_10052213C(0xD000000000000016, 0x80000001006CAAE0);
    v45 = v42[2];
    v46 = (v43 & 1) == 0;
    v47 = v45 + v46;
    v11 = v91;
    if (__OFADD__(v45, v46))
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v39) = v43;
      if (v42[3] < v47)
      {
        sub_1005B93F4(v47, isUniquelyReferenced_nonNull_native);
        v42 = v95;
        v48 = sub_10052213C(0xD000000000000016, 0x80000001006CAAE0);
        if ((v39 & 1) != (v49 & 1))
        {
          goto LABEL_48;
        }

        v44 = v48;
        goto LABEL_18;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_18:
        v2 = v89;
        *(v1 + 16) = v42;
        if ((v39 & 1) == 0)
        {
          v50 = sub_1005646D8();
          sub_1005C32A8(v44, 0xD000000000000016, 0x80000001006CAAE0, v50 & 0x101, v42);
        }

        *(v42[7] + 2 * v44) = 1;
        swift_endAccess();
        v22 = sub_1005683F8;
        if (v97 != 1)
        {
          sub_1001DFE6C(sub_1005683F8);
          v52 = sub_1005684FC;
          goto LABEL_25;
        }

        v20 = sub_1005684FC;
        v19 = v90;
LABEL_22:
        v51 = v92;
        if ((v97 & 0x100) != 0)
        {
          sub_1001DFE6C(v22);
          v52 = v20;
LABEL_25:
          sub_1001DFE6C(v52);
          v53 = 0;
          v54 = 0;
LABEL_26:
          sub_1001DFE6C(v53);
          return sub_1001DFE6C(v54);
        }

        v87 = v22;
        v88 = v20;
        v91 = v21;
        static Logger.sql.getter();
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.info.getter();
        v57 = os_log_type_enabled(v55, v56);
        v86 = "Unable to fetch the ";
        if (v57)
        {
          v58 = v2;
          v59 = swift_slowAlloc();
          v60 = v19;
          v61 = swift_slowAlloc();
          v96[0] = v61;
          *v59 = 136446210;
          *(v59 + 4) = sub_1002346CC(0xD000000000000016, 0x80000001006CAAE0, v96);
          _os_log_impl(&_mh_execute_header, v55, v56, "Checking if %{public}s DB contents needs to be prepared for first use after daemon launch", v59, 0xCu);
          sub_10000710C(v61);
          v19 = v60;

          v2 = v58;

          v62 = *(v93 + 8);
          v63 = v62(v92, v58);
        }

        else
        {

          v62 = *(v93 + 8);
          v63 = v62(v51, v2);
        }

        __chkstk_darwin(v63);
        v64 = v94;
        sub_100541504(nullsub_1, (&v86 - 4));
        v94 = v64;
        if (v64)
        {
          sub_1001DFE6C(v87);
          return sub_1001DFE6C(v88);
        }

        static Logger.sql.getter();
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.default.getter();
        v67 = os_log_type_enabled(v65, v66);
        v90 = v19;
        if (v67)
        {
          v68 = v2;
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v96[0] = v70;
          *v69 = 136446210;
          v71 = v86;
          *(v69 + 4) = sub_1002346CC(0xD000000000000016, v86 | 0x8000000000000000, v96);
          _os_log_impl(&_mh_execute_header, v65, v66, "%{public}s DB contents are prepared for first use after daemon launch", v69, 0xCu);
          sub_10000710C(v70);

          v62(v11, v68);
        }

        else
        {

          v62(v11, v2);
          v71 = v86;
        }

        HIBYTE(v97) = 1;
        v72 = swift_allocObject();
        *(v72 + 16) = &v97;
        swift_beginAccess();
        v73 = swift_allocObject();
        *(v73 + 16) = sub_1005683F8;
        *(v73 + 24) = v72;
        v74 = swift_isUniquelyReferenced_nonNull_native();
        v95 = *(v1 + 16);
        v75 = v95;
        *(v1 + 16) = 0x8000000000000000;
        v76 = v71;
        v78 = sub_10052213C(0xD000000000000016, v71 | 0x8000000000000000);
        v79 = v75[2];
        v80 = (v77 & 1) == 0;
        v81 = v79 + v80;
        if (__OFADD__(v79, v80))
        {
          __break(1u);
        }

        else
        {
          LOBYTE(v71) = v77;
          if (v75[3] < v81)
          {
            sub_1005B93F4(v81, v74);
            v75 = v95;
            v82 = sub_10052213C(0xD000000000000016, v76 | 0x8000000000000000);
            if ((v71 & 1) == (v83 & 1))
            {
              v78 = v82;
LABEL_41:
              v84 = v88;
              *(v1 + 16) = v75;
              if ((v71 & 1) == 0)
              {
                v85 = sub_1005646D8();
                sub_1005C32A8(v78, 0xD000000000000016, v76 | 0x8000000000000000, v85 & 0x101, v75);
              }

              *(v75[7] + 2 * v78 + 1) = 1;
              swift_endAccess();
              sub_1001DFE6C(v87);
              sub_1001DFE6C(v84);
              v54 = sub_1005684FC;
              v53 = sub_1005683F8;
              goto LABEL_26;
            }

LABEL_48:
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          if (v74)
          {
            goto LABEL_41;
          }
        }

        sub_1005C39E0();
        v75 = v95;
        goto LABEL_41;
      }
    }

    sub_1005C39E0();
    v42 = v95;
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_10053C60C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v93 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v86 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v86 - v10;
  __chkstk_darwin(v9);
  v92 = &v86 - v12;
  swift_beginAccess();
  v13 = *(v0 + 16);
  if (!*(v13 + 16))
  {
    goto LABEL_6;
  }

  v14 = sub_10052213C(0xD000000000000011, 0x80000001006CAB00);
  if ((v15 & 1) == 0)
  {

LABEL_6:
    v97 = 0;
    goto LABEL_7;
  }

  v16 = (*(v13 + 56) + 2 * v14);
  v17 = *v16;
  v18 = v16[1];

  LOBYTE(v97) = v17;
  HIBYTE(v97) = v18;
  if (v17)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_22;
  }

LABEL_7:
  v91 = v11;
  static Logger.sql.getter();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = v2;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v96[0] = v27;
    *v26 = 136446210;
    *(v26 + 4) = sub_1002346CC(0xD000000000000011, 0x80000001006CAB00, v96);
    _os_log_impl(&_mh_execute_header, v23, v24, "Checking if %{public}s schema needs to be updated", v26, 0xCu);
    sub_10000710C(v27);

    v2 = v25;
  }

  v28 = *(v93 + 8);
  v28(v8, v2);
  v29 = v94;
  result = sub_100541504(sub_100541124, 0);
  if (!v29)
  {
    v94 = 0;
    static Logger.sql.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    v33 = os_log_type_enabled(v31, v32);
    v89 = v2;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v35 = v2;
      v36 = swift_slowAlloc();
      v96[0] = v36;
      *v34 = 136446210;
      *(v34 + 4) = sub_1002346CC(0xD000000000000011, 0x80000001006CAB00, v96);
      _os_log_impl(&_mh_execute_header, v31, v32, "%{public}s schema is up-to-date", v34, 0xCu);
      sub_10000710C(v36);

      v37 = v5;
      v38 = v35;
    }

    else
    {

      v37 = v5;
      v38 = v2;
    }

    v28(v37, v38);
    LOBYTE(v97) = 1;
    v39 = swift_allocObject();
    *(v39 + 16) = &v97;
    swift_beginAccess();
    v40 = swift_allocObject();
    *(v40 + 16) = sub_1005683F8;
    *(v40 + 24) = v39;
    v90 = v40;
    v21 = v39;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v95 = *(v1 + 16);
    v42 = v95;
    *(v1 + 16) = 0x8000000000000000;
    v44 = sub_10052213C(0xD000000000000011, 0x80000001006CAB00);
    v45 = v42[2];
    v46 = (v43 & 1) == 0;
    v47 = v45 + v46;
    v11 = v91;
    if (__OFADD__(v45, v46))
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v39) = v43;
      if (v42[3] < v47)
      {
        sub_1005B93F4(v47, isUniquelyReferenced_nonNull_native);
        v42 = v95;
        v48 = sub_10052213C(0xD000000000000011, 0x80000001006CAB00);
        if ((v39 & 1) != (v49 & 1))
        {
          goto LABEL_48;
        }

        v44 = v48;
        goto LABEL_18;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_18:
        v2 = v89;
        *(v1 + 16) = v42;
        if ((v39 & 1) == 0)
        {
          v50 = sub_1005646D8();
          sub_1005C32A8(v44, 0xD000000000000011, 0x80000001006CAB00, v50 & 0x101, v42);
        }

        *(v42[7] + 2 * v44) = 1;
        swift_endAccess();
        v22 = sub_1005683F8;
        if (v97 != 1)
        {
          sub_1001DFE6C(sub_1005683F8);
          v52 = sub_1005684FC;
          goto LABEL_25;
        }

        v20 = sub_1005684FC;
        v19 = v90;
LABEL_22:
        v51 = v92;
        if ((v97 & 0x100) != 0)
        {
          sub_1001DFE6C(v22);
          v52 = v20;
LABEL_25:
          sub_1001DFE6C(v52);
          v53 = 0;
          v54 = 0;
LABEL_26:
          sub_1001DFE6C(v53);
          return sub_1001DFE6C(v54);
        }

        v87 = v22;
        v88 = v20;
        v91 = v21;
        static Logger.sql.getter();
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.info.getter();
        v57 = os_log_type_enabled(v55, v56);
        v86 = "MarketplaceCertificate";
        if (v57)
        {
          v58 = v2;
          v59 = swift_slowAlloc();
          v60 = v19;
          v61 = swift_slowAlloc();
          v96[0] = v61;
          *v59 = 136446210;
          *(v59 + 4) = sub_1002346CC(0xD000000000000011, 0x80000001006CAB00, v96);
          _os_log_impl(&_mh_execute_header, v55, v56, "Checking if %{public}s DB contents needs to be prepared for first use after daemon launch", v59, 0xCu);
          sub_10000710C(v61);
          v19 = v60;

          v2 = v58;

          v62 = *(v93 + 8);
          v63 = v62(v92, v58);
        }

        else
        {

          v62 = *(v93 + 8);
          v63 = v62(v51, v2);
        }

        __chkstk_darwin(v63);
        v64 = v94;
        sub_100541504(sub_1005669C0, (&v86 - 4));
        v94 = v64;
        if (v64)
        {
          sub_1001DFE6C(v87);
          return sub_1001DFE6C(v88);
        }

        static Logger.sql.getter();
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.default.getter();
        v67 = os_log_type_enabled(v65, v66);
        v90 = v19;
        if (v67)
        {
          v68 = v2;
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v96[0] = v70;
          *v69 = 136446210;
          v71 = v86;
          *(v69 + 4) = sub_1002346CC(0xD000000000000011, v86 | 0x8000000000000000, v96);
          _os_log_impl(&_mh_execute_header, v65, v66, "%{public}s DB contents are prepared for first use after daemon launch", v69, 0xCu);
          sub_10000710C(v70);

          v62(v11, v68);
        }

        else
        {

          v62(v11, v2);
          v71 = v86;
        }

        HIBYTE(v97) = 1;
        v72 = swift_allocObject();
        *(v72 + 16) = &v97;
        swift_beginAccess();
        v73 = swift_allocObject();
        *(v73 + 16) = sub_1005683F8;
        *(v73 + 24) = v72;
        v74 = swift_isUniquelyReferenced_nonNull_native();
        v95 = *(v1 + 16);
        v75 = v95;
        *(v1 + 16) = 0x8000000000000000;
        v76 = v71;
        v78 = sub_10052213C(0xD000000000000011, v71 | 0x8000000000000000);
        v79 = v75[2];
        v80 = (v77 & 1) == 0;
        v81 = v79 + v80;
        if (__OFADD__(v79, v80))
        {
          __break(1u);
        }

        else
        {
          LOBYTE(v71) = v77;
          if (v75[3] < v81)
          {
            sub_1005B93F4(v81, v74);
            v75 = v95;
            v82 = sub_10052213C(0xD000000000000011, v76 | 0x8000000000000000);
            if ((v71 & 1) == (v83 & 1))
            {
              v78 = v82;
LABEL_41:
              v84 = v88;
              *(v1 + 16) = v75;
              if ((v71 & 1) == 0)
              {
                v85 = sub_1005646D8();
                sub_1005C32A8(v78, 0xD000000000000011, v76 | 0x8000000000000000, v85 & 0x101, v75);
              }

              *(v75[7] + 2 * v78 + 1) = 1;
              swift_endAccess();
              sub_1001DFE6C(v87);
              sub_1001DFE6C(v84);
              v54 = sub_1005684FC;
              v53 = sub_1005683F8;
              goto LABEL_26;
            }

LABEL_48:
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          if (v74)
          {
            goto LABEL_41;
          }
        }

        sub_1005C39E0();
        v75 = v95;
        goto LABEL_41;
      }
    }

    sub_1005C39E0();
    v42 = v95;
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_10053D048()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v82 - v7;
  v9 = __chkstk_darwin(v6);
  v87 = &v82 - v10;
  __chkstk_darwin(v9);
  v12 = &v82 - v11;
  swift_beginAccess();
  v89 = v0;
  v13 = *(v0 + 16);
  if (!*(v13 + 16))
  {
    goto LABEL_8;
  }

  v14 = sub_10052213C(0x6174736E49707041, 0xEA00000000006C6CLL);
  if ((v15 & 1) == 0)
  {

LABEL_8:
    v93 = 0;
    goto LABEL_9;
  }

  v16 = (*(v13 + 56) + 2 * v14);
  v17 = *v16;
  v18 = v16[1];

  LOBYTE(v93) = v17;
  HIBYTE(v93) = v18;
  v19 = 0x6174736E49707041;
  if (v17)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    if ((v93 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_9:
  static Logger.sql.getter();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  v31 = os_log_type_enabled(v29, v30);
  v88 = v12;
  if (v31)
  {
    v32 = v1;
    v33 = v2;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v92[0] = v35;
    *v34 = 136446210;
    *(v34 + 4) = sub_1002346CC(0x6174736E49707041, 0xEA00000000006C6CLL, v92);
    _os_log_impl(&_mh_execute_header, v29, v30, "Checking if %{public}s schema needs to be updated", v34, 0xCu);
    sub_10000710C(v35);

    v2 = v33;
    v1 = v32;

    v19 = *(v2 + 8);
    (v19)(v8, v32);
  }

  else
  {

    v19 = *(v2 + 8);
    (v19)(v8, v1);
  }

  v36 = v90;
  result = sub_100541504(sub_10054118C, 0);
  if (!v36)
  {
    v90 = 0;
    static Logger.sql.getter();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    v40 = os_log_type_enabled(v38, v39);
    v85 = v2;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v2 = swift_slowAlloc();
      v92[0] = v2;
      *v41 = 136446210;
      v42 = v1;
      v1 = 0x6174736E49707041;
      *(v41 + 4) = sub_1002346CC(0x6174736E49707041, 0xEA00000000006C6CLL, v92);
      _os_log_impl(&_mh_execute_header, v38, v39, "%{public}s schema is up-to-date", v41, 0xCu);
      sub_10000710C(v2);

      v43 = v42;
      (v19)(v5, v42);
    }

    else
    {

      v43 = v1;
      (v19)(v5, v1);
      v1 = 0x6174736E49707041;
    }

    LOBYTE(v93) = 1;
    v44 = swift_allocObject();
    *(v44 + 16) = &v93;
    v45 = v89;
    swift_beginAccess();
    v46 = swift_allocObject();
    *(v46 + 16) = sub_1005646D8;
    *(v46 + 24) = v44;
    v86 = v44;
    v20 = v46;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = *(v45 + 16);
    v48 = v91;
    *(v45 + 16) = 0x8000000000000000;
    v50 = sub_10052213C(0x6174736E49707041, 0xEA00000000006C6CLL);
    v51 = v48[2];
    v52 = (v49 & 1) == 0;
    v53 = v51 + v52;
    if (__OFADD__(v51, v52))
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v2) = v49;
      v19 = 0x6174736E49707041;
      if (v48[3] < v53)
      {
        sub_1005B93F4(v53, isUniquelyReferenced_nonNull_native);
        v48 = v91;
        v54 = sub_10052213C(0x6174736E49707041, 0xEA00000000006C6CLL);
        if ((v2 & 1) != (v55 & 1))
        {
          goto LABEL_48;
        }

        v50 = v54;
        v1 = v43;
        goto LABEL_21;
      }

      v1 = v43;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_21:
        v12 = v88;
        *(v89 + 16) = v48;
        if ((v2 & 1) == 0)
        {
          v56 = (*(v20 + 16))();
          sub_1005C32A8(v50, v19, 0xEA00000000006C6CLL, v56 & 0x101, v48);
        }

        *(v48[7] + 2 * v50) = 1;
        swift_endAccess();
        v22 = sub_1005646D8;
        if (v93 != 1)
        {
          sub_1001DFE6C(sub_1005646D8);
          v57 = sub_1005646E0;
          goto LABEL_27;
        }

        v21 = sub_1005646E0;
        v2 = v85;
        if ((v93 & 0x100) == 0)
        {
LABEL_5:
          v83 = v22;
          v84 = v21;
          v86 = v20;
          static Logger.sql.getter();
          v23 = Logger.logObject.getter();
          v24 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = v2;
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v92[0] = v27;
            *v26 = 136446210;
            *(v26 + 4) = sub_1002346CC(v19, 0xEA00000000006C6CLL, v92);
            _os_log_impl(&_mh_execute_header, v23, v24, "Checking if %{public}s DB contents needs to be prepared for first use after daemon launch", v26, 0xCu);
            sub_10000710C(v27);

            v28 = v25;
          }

          else
          {

            v28 = v2;
          }

          v60 = *(v28 + 8);
          v61 = v60(v12, v1);
          v62 = v87;
          __chkstk_darwin(v61);
          v63 = v90;
          sub_100541504(nullsub_1, (&v82 - 4));
          v90 = v63;
          if (v63)
          {
            sub_1001DFE6C(v83);
            return sub_1001DFE6C(v84);
          }

          static Logger.sql.getter();
          v64 = Logger.logObject.getter();
          v65 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            v88 = v1;
            v68 = v67;
            v92[0] = v67;
            *v66 = 136446210;
            *(v66 + 4) = sub_1002346CC(0x6174736E49707041, 0xEA00000000006C6CLL, v92);
            _os_log_impl(&_mh_execute_header, v64, v65, "%{public}s DB contents are prepared for first use after daemon launch", v66, 0xCu);
            sub_10000710C(v68);

            v60(v62, v88);
          }

          else
          {

            v60(v62, v1);
          }

          HIBYTE(v93) = 1;
          v69 = swift_allocObject();
          *(v69 + 16) = &v93;
          v70 = v89;
          swift_beginAccess();
          v71 = swift_allocObject();
          *(v71 + 16) = sub_1005646D8;
          *(v71 + 24) = v69;
          v72 = swift_isUniquelyReferenced_nonNull_native();
          v91 = *(v70 + 16);
          v73 = v91;
          *(v70 + 16) = 0x8000000000000000;
          v75 = sub_10052213C(0x6174736E49707041, 0xEA00000000006C6CLL);
          v76 = v73[2];
          v77 = (v74 & 1) == 0;
          v78 = v76 + v77;
          if (__OFADD__(v76, v77))
          {
            __break(1u);
          }

          else
          {
            LOBYTE(v69) = v74;
            if (v73[3] < v78)
            {
              sub_1005B93F4(v78, v72);
              v73 = v91;
              v79 = sub_10052213C(0x6174736E49707041, 0xEA00000000006C6CLL);
              if ((v69 & 1) == (v80 & 1))
              {
                v75 = v79;
LABEL_41:
                *(v89 + 16) = v73;
                if ((v69 & 1) == 0)
                {
                  v81 = (*(v71 + 16))();
                  sub_1005C32A8(v75, 0x6174736E49707041, 0xEA00000000006C6CLL, v81 & 0x101, v73);
                }

                *(v73[7] + 2 * v75 + 1) = 1;
                swift_endAccess();
                sub_1001DFE6C(v83);
                sub_1001DFE6C(v84);
                v59 = sub_1005684FC;
                v58 = sub_1005646D8;
                goto LABEL_28;
              }

LABEL_48:
              result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return result;
            }

            if (v72)
            {
              goto LABEL_41;
            }
          }

          sub_1005C39E0();
          v73 = v91;
          goto LABEL_41;
        }

LABEL_25:
        sub_1001DFE6C(v22);
        v57 = v21;
LABEL_27:
        sub_1001DFE6C(v57);
        v58 = 0;
        v59 = 0;
LABEL_28:
        sub_1001DFE6C(v58);
        return sub_1001DFE6C(v59);
      }
    }

    sub_1005C39E0();
    v48 = v91;
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_10053DB08()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v82 - v7;
  v9 = __chkstk_darwin(v6);
  v87 = &v82 - v10;
  __chkstk_darwin(v9);
  v12 = &v82 - v11;
  swift_beginAccess();
  v89 = v0;
  v13 = *(v0 + 16);
  if (!*(v13 + 16))
  {
    goto LABEL_8;
  }

  v14 = sub_10052213C(0x74616470554D4444, 0xE900000000000065);
  if ((v15 & 1) == 0)
  {

LABEL_8:
    v93 = 0;
    goto LABEL_9;
  }

  v16 = (*(v13 + 56) + 2 * v14);
  v17 = *v16;
  v18 = v16[1];

  LOBYTE(v93) = v17;
  HIBYTE(v93) = v18;
  v19 = 0x74616470554D4444;
  if (v17)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    if ((v93 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_9:
  static Logger.sql.getter();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  v31 = os_log_type_enabled(v29, v30);
  v88 = v12;
  if (v31)
  {
    v32 = v1;
    v33 = v2;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v92[0] = v35;
    *v34 = 136446210;
    *(v34 + 4) = sub_1002346CC(0x74616470554D4444, 0xE900000000000065, v92);
    _os_log_impl(&_mh_execute_header, v29, v30, "Checking if %{public}s schema needs to be updated", v34, 0xCu);
    sub_10000710C(v35);

    v2 = v33;
    v1 = v32;

    v19 = *(v2 + 8);
    (v19)(v8, v32);
  }

  else
  {

    v19 = *(v2 + 8);
    (v19)(v8, v1);
  }

  v36 = v90;
  result = sub_100541504(sub_1005411FC, 0);
  if (!v36)
  {
    v90 = 0;
    static Logger.sql.getter();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    v40 = os_log_type_enabled(v38, v39);
    v85 = v2;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v2 = swift_slowAlloc();
      v92[0] = v2;
      *v41 = 136446210;
      v42 = v1;
      v1 = 0x74616470554D4444;
      *(v41 + 4) = sub_1002346CC(0x74616470554D4444, 0xE900000000000065, v92);
      _os_log_impl(&_mh_execute_header, v38, v39, "%{public}s schema is up-to-date", v41, 0xCu);
      sub_10000710C(v2);

      v43 = v42;
      (v19)(v5, v42);
    }

    else
    {

      v43 = v1;
      (v19)(v5, v1);
      v1 = 0x74616470554D4444;
    }

    LOBYTE(v93) = 1;
    v44 = swift_allocObject();
    *(v44 + 16) = &v93;
    v45 = v89;
    swift_beginAccess();
    v46 = swift_allocObject();
    *(v46 + 16) = sub_1005683F8;
    *(v46 + 24) = v44;
    v86 = v44;
    v20 = v46;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = *(v45 + 16);
    v48 = v91;
    *(v45 + 16) = 0x8000000000000000;
    v50 = sub_10052213C(0x74616470554D4444, 0xE900000000000065);
    v51 = v48[2];
    v52 = (v49 & 1) == 0;
    v53 = v51 + v52;
    if (__OFADD__(v51, v52))
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v2) = v49;
      v19 = 0x74616470554D4444;
      if (v48[3] < v53)
      {
        sub_1005B93F4(v53, isUniquelyReferenced_nonNull_native);
        v48 = v91;
        v54 = sub_10052213C(0x74616470554D4444, 0xE900000000000065);
        if ((v2 & 1) != (v55 & 1))
        {
          goto LABEL_48;
        }

        v50 = v54;
        v1 = v43;
        goto LABEL_21;
      }

      v1 = v43;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_21:
        v12 = v88;
        *(v89 + 16) = v48;
        if ((v2 & 1) == 0)
        {
          v56 = (*(v20 + 16))();
          sub_1005C32A8(v50, v19, 0xE900000000000065, v56 & 0x101, v48);
        }

        *(v48[7] + 2 * v50) = 1;
        swift_endAccess();
        v22 = sub_1005683F8;
        if (v93 != 1)
        {
          sub_1001DFE6C(sub_1005683F8);
          v57 = sub_1005684FC;
          goto LABEL_27;
        }

        v21 = sub_1005684FC;
        v2 = v85;
        if ((v93 & 0x100) == 0)
        {
LABEL_5:
          v83 = v22;
          v84 = v21;
          v86 = v20;
          static Logger.sql.getter();
          v23 = Logger.logObject.getter();
          v24 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = v2;
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v92[0] = v27;
            *v26 = 136446210;
            *(v26 + 4) = sub_1002346CC(v19, 0xE900000000000065, v92);
            _os_log_impl(&_mh_execute_header, v23, v24, "Checking if %{public}s DB contents needs to be prepared for first use after daemon launch", v26, 0xCu);
            sub_10000710C(v27);

            v28 = v25;
          }

          else
          {

            v28 = v2;
          }

          v60 = *(v28 + 8);
          v61 = v60(v12, v1);
          v62 = v87;
          __chkstk_darwin(v61);
          v63 = v90;
          sub_100541504(nullsub_1, (&v82 - 4));
          v90 = v63;
          if (v63)
          {
            sub_1001DFE6C(v83);
            return sub_1001DFE6C(v84);
          }

          static Logger.sql.getter();
          v64 = Logger.logObject.getter();
          v65 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            v88 = v1;
            v68 = v67;
            v92[0] = v67;
            *v66 = 136446210;
            *(v66 + 4) = sub_1002346CC(0x74616470554D4444, 0xE900000000000065, v92);
            _os_log_impl(&_mh_execute_header, v64, v65, "%{public}s DB contents are prepared for first use after daemon launch", v66, 0xCu);
            sub_10000710C(v68);

            v60(v62, v88);
          }

          else
          {

            v60(v62, v1);
          }

          HIBYTE(v93) = 1;
          v69 = swift_allocObject();
          *(v69 + 16) = &v93;
          v70 = v89;
          swift_beginAccess();
          v71 = swift_allocObject();
          *(v71 + 16) = sub_1005683F8;
          *(v71 + 24) = v69;
          v72 = swift_isUniquelyReferenced_nonNull_native();
          v91 = *(v70 + 16);
          v73 = v91;
          *(v70 + 16) = 0x8000000000000000;
          v75 = sub_10052213C(0x74616470554D4444, 0xE900000000000065);
          v76 = v73[2];
          v77 = (v74 & 1) == 0;
          v78 = v76 + v77;
          if (__OFADD__(v76, v77))
          {
            __break(1u);
          }

          else
          {
            LOBYTE(v69) = v74;
            if (v73[3] < v78)
            {
              sub_1005B93F4(v78, v72);
              v73 = v91;
              v79 = sub_10052213C(0x74616470554D4444, 0xE900000000000065);
              if ((v69 & 1) == (v80 & 1))
              {
                v75 = v79;
LABEL_41:
                *(v89 + 16) = v73;
                if ((v69 & 1) == 0)
                {
                  v81 = (*(v71 + 16))();
                  sub_1005C32A8(v75, 0x74616470554D4444, 0xE900000000000065, v81 & 0x101, v73);
                }

                *(v73[7] + 2 * v75 + 1) = 1;
                swift_endAccess();
                sub_1001DFE6C(v83);
                sub_1001DFE6C(v84);
                v59 = sub_1005684FC;
                v58 = sub_1005683F8;
                goto LABEL_28;
              }

LABEL_48:
              result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return result;
            }

            if (v72)
            {
              goto LABEL_41;
            }
          }

          sub_1005C39E0();
          v73 = v91;
          goto LABEL_41;
        }

LABEL_25:
        sub_1001DFE6C(v22);
        v57 = v21;
LABEL_27:
        sub_1001DFE6C(v57);
        v58 = 0;
        v59 = 0;
LABEL_28:
        sub_1001DFE6C(v58);
        return sub_1001DFE6C(v59);
      }
    }

    sub_1005C39E0();
    v48 = v91;
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_10053E5C8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v93 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v86 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v86 - v10;
  __chkstk_darwin(v9);
  v92 = &v86 - v12;
  swift_beginAccess();
  v13 = *(v0 + 16);
  if (!*(v13 + 16))
  {
    goto LABEL_6;
  }

  v14 = sub_10052213C(0xD000000000000015, 0x80000001006CAB20);
  if ((v15 & 1) == 0)
  {

LABEL_6:
    v97 = 0;
    goto LABEL_7;
  }

  v16 = (*(v13 + 56) + 2 * v14);
  v17 = *v16;
  v18 = v16[1];

  LOBYTE(v97) = v17;
  HIBYTE(v97) = v18;
  if (v17)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_22;
  }

LABEL_7:
  v91 = v11;
  static Logger.sql.getter();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = v2;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v96[0] = v27;
    *v26 = 136446210;
    *(v26 + 4) = sub_1002346CC(0xD000000000000015, 0x80000001006CAB20, v96);
    _os_log_impl(&_mh_execute_header, v23, v24, "Checking if %{public}s schema needs to be updated", v26, 0xCu);
    sub_10000710C(v27);

    v2 = v25;
  }

  v28 = *(v93 + 8);
  v28(v8, v2);
  v29 = v94;
  result = sub_100541504(sub_100541264, 0);
  if (!v29)
  {
    v94 = 0;
    static Logger.sql.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    v33 = os_log_type_enabled(v31, v32);
    v89 = v2;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v35 = v2;
      v36 = swift_slowAlloc();
      v96[0] = v36;
      *v34 = 136446210;
      *(v34 + 4) = sub_1002346CC(0xD000000000000015, 0x80000001006CAB20, v96);
      _os_log_impl(&_mh_execute_header, v31, v32, "%{public}s schema is up-to-date", v34, 0xCu);
      sub_10000710C(v36);

      v37 = v5;
      v38 = v35;
    }

    else
    {

      v37 = v5;
      v38 = v2;
    }

    v28(v37, v38);
    LOBYTE(v97) = 1;
    v39 = swift_allocObject();
    *(v39 + 16) = &v97;
    swift_beginAccess();
    v40 = swift_allocObject();
    *(v40 + 16) = sub_1005683F8;
    *(v40 + 24) = v39;
    v90 = v40;
    v21 = v39;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v95 = *(v1 + 16);
    v42 = v95;
    *(v1 + 16) = 0x8000000000000000;
    v44 = sub_10052213C(0xD000000000000015, 0x80000001006CAB20);
    v45 = v42[2];
    v46 = (v43 & 1) == 0;
    v47 = v45 + v46;
    v11 = v91;
    if (__OFADD__(v45, v46))
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v39) = v43;
      if (v42[3] < v47)
      {
        sub_1005B93F4(v47, isUniquelyReferenced_nonNull_native);
        v42 = v95;
        v48 = sub_10052213C(0xD000000000000015, 0x80000001006CAB20);
        if ((v39 & 1) != (v49 & 1))
        {
          goto LABEL_48;
        }

        v44 = v48;
        goto LABEL_18;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_18:
        v2 = v89;
        *(v1 + 16) = v42;
        if ((v39 & 1) == 0)
        {
          v50 = sub_1005646D8();
          sub_1005C32A8(v44, 0xD000000000000015, 0x80000001006CAB20, v50 & 0x101, v42);
        }

        *(v42[7] + 2 * v44) = 1;
        swift_endAccess();
        v22 = sub_1005683F8;
        if (v97 != 1)
        {
          sub_1001DFE6C(sub_1005683F8);
          v52 = sub_1005684FC;
          goto LABEL_25;
        }

        v20 = sub_1005684FC;
        v19 = v90;
LABEL_22:
        v51 = v92;
        if ((v97 & 0x100) != 0)
        {
          sub_1001DFE6C(v22);
          v52 = v20;
LABEL_25:
          sub_1001DFE6C(v52);
          v53 = 0;
          v54 = 0;
LABEL_26:
          sub_1001DFE6C(v53);
          return sub_1001DFE6C(v54);
        }

        v87 = v22;
        v88 = v20;
        v91 = v21;
        static Logger.sql.getter();
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.info.getter();
        v57 = os_log_type_enabled(v55, v56);
        v86 = "DDMInstallHistory";
        if (v57)
        {
          v58 = v2;
          v59 = swift_slowAlloc();
          v60 = v19;
          v61 = swift_slowAlloc();
          v96[0] = v61;
          *v59 = 136446210;
          *(v59 + 4) = sub_1002346CC(0xD000000000000015, 0x80000001006CAB20, v96);
          _os_log_impl(&_mh_execute_header, v55, v56, "Checking if %{public}s DB contents needs to be prepared for first use after daemon launch", v59, 0xCu);
          sub_10000710C(v61);
          v19 = v60;

          v2 = v58;

          v62 = *(v93 + 8);
          v63 = v62(v92, v58);
        }

        else
        {

          v62 = *(v93 + 8);
          v63 = v62(v51, v2);
        }

        __chkstk_darwin(v63);
        v64 = v94;
        sub_100541504(nullsub_1, (&v86 - 4));
        v94 = v64;
        if (v64)
        {
          sub_1001DFE6C(v87);
          return sub_1001DFE6C(v88);
        }

        static Logger.sql.getter();
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.default.getter();
        v67 = os_log_type_enabled(v65, v66);
        v90 = v19;
        if (v67)
        {
          v68 = v2;
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v96[0] = v70;
          *v69 = 136446210;
          v71 = v86;
          *(v69 + 4) = sub_1002346CC(0xD000000000000015, v86 | 0x8000000000000000, v96);
          _os_log_impl(&_mh_execute_header, v65, v66, "%{public}s DB contents are prepared for first use after daemon launch", v69, 0xCu);
          sub_10000710C(v70);

          v62(v11, v68);
        }

        else
        {

          v62(v11, v2);
          v71 = v86;
        }

        HIBYTE(v97) = 1;
        v72 = swift_allocObject();
        *(v72 + 16) = &v97;
        swift_beginAccess();
        v73 = swift_allocObject();
        *(v73 + 16) = sub_1005683F8;
        *(v73 + 24) = v72;
        v74 = swift_isUniquelyReferenced_nonNull_native();
        v95 = *(v1 + 16);
        v75 = v95;
        *(v1 + 16) = 0x8000000000000000;
        v76 = v71;
        v78 = sub_10052213C(0xD000000000000015, v71 | 0x8000000000000000);
        v79 = v75[2];
        v80 = (v77 & 1) == 0;
        v81 = v79 + v80;
        if (__OFADD__(v79, v80))
        {
          __break(1u);
        }

        else
        {
          LOBYTE(v71) = v77;
          if (v75[3] < v81)
          {
            sub_1005B93F4(v81, v74);
            v75 = v95;
            v82 = sub_10052213C(0xD000000000000015, v76 | 0x8000000000000000);
            if ((v71 & 1) == (v83 & 1))
            {
              v78 = v82;
LABEL_41:
              v84 = v88;
              *(v1 + 16) = v75;
              if ((v71 & 1) == 0)
              {
                v85 = sub_1005646D8();
                sub_1005C32A8(v78, 0xD000000000000015, v76 | 0x8000000000000000, v85 & 0x101, v75);
              }

              *(v75[7] + 2 * v78 + 1) = 1;
              swift_endAccess();
              sub_1001DFE6C(v87);
              sub_1001DFE6C(v84);
              v54 = sub_1005684FC;
              v53 = sub_1005683F8;
              goto LABEL_26;
            }

LABEL_48:
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          if (v74)
          {
            goto LABEL_41;
          }
        }

        sub_1005C39E0();
        v75 = v95;
        goto LABEL_41;
      }
    }

    sub_1005C39E0();
    v42 = v95;
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_10053F004(uint64_t a1)
{
  v97 = a1;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v93 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v93 - v11;
  __chkstk_darwin(v10);
  v14 = &v93 - v13;
  v15 = "WebDistributionUpdate";
  swift_beginAccess();
  v100 = v1;
  v16 = *(v1 + 16);
  v17 = *(v16 + 16);
  v96 = v12;
  if (!v17)
  {
    goto LABEL_8;
  }

  v18 = sub_10052213C(0xD000000000000014, 0x80000001006CAB40);
  if ((v19 & 1) == 0)
  {

LABEL_8:
    v104 = 0;
    goto LABEL_9;
  }

  v20 = (*(v16 + 56) + 2 * v18);
  v21 = *v20;
  v22 = v20[1];

  LOBYTE(v104) = v21;
  HIBYTE(v104) = v22;
  if (v21)
  {
    v95 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    if ((v104 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_9:
  v98 = v14;
  static Logger.sql.getter();
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();
  v38 = os_log_type_enabled(v36, v37);
  v99 = "WebDistributionUpdate";
  if (v38)
  {
    v39 = v3;
    v40 = v2;
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v103[0] = v42;
    *v41 = 136446210;
    *(v41 + 4) = sub_1002346CC(0xD000000000000014, 0x80000001006CAB40, v103);
    _os_log_impl(&_mh_execute_header, v36, v37, "Checking if %{public}s schema needs to be updated", v41, 0xCu);
    sub_10000710C(v42);

    v2 = v40;
    v3 = v39;

    v43 = v39;
  }

  else
  {

    v43 = v3;
  }

  v44 = v43[1];
  v44(v9, v2);
  v45 = v101;
  result = sub_100541504(sub_1005412CC, 0);
  if (!v45)
  {
    v101 = 0;
    static Logger.sql.getter();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    v49 = os_log_type_enabled(v47, v48);
    v94 = v2;
    if (v49)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v103[0] = v51;
      *v50 = 136446210;
      v15 = v99;
      *(v50 + 4) = sub_1002346CC(0xD000000000000014, v99 | 0x8000000000000000, v103);
      _os_log_impl(&_mh_execute_header, v47, v48, "%{public}s schema is up-to-date", v50, 0xCu);
      sub_10000710C(v51);

      v52 = v3;
      v44(v6, v94);
    }

    else
    {

      v52 = v3;
      v44(v6, v2);
      v15 = v99;
    }

    LOBYTE(v104) = 1;
    v53 = swift_allocObject();
    *(v53 + 16) = &v104;
    v54 = v100;
    swift_beginAccess();
    v3 = swift_allocObject();
    v3[2] = sub_1005683F8;
    v3[3] = v53;
    v55 = v53;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v102 = *(v54 + 16);
    v57 = v102;
    *(v54 + 16) = 0x8000000000000000;
    v59 = sub_10052213C(0xD000000000000014, v15 | 0x8000000000000000);
    v60 = v57[2];
    v61 = (v58 & 1) == 0;
    v62 = v60 + v61;
    if (__OFADD__(v60, v61))
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v53) = v58;
      v95 = v3;
      if (v57[3] < v62)
      {
        sub_1005B93F4(v62, isUniquelyReferenced_nonNull_native);
        v57 = v102;
        v63 = sub_10052213C(0xD000000000000014, v15 | 0x8000000000000000);
        if ((v53 & 1) != (v64 & 1))
        {
          goto LABEL_48;
        }

        v59 = v63;
        v3 = v52;
        goto LABEL_21;
      }

      v3 = v52;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_21:
        v2 = v94;
        v24 = v55;
        *(v100 + 16) = v57;
        v14 = v98;
        if ((v53 & 1) == 0)
        {
          v65 = sub_1005646D8();
          sub_1005C32A8(v59, 0xD000000000000014, v15 | 0x8000000000000000, v65 & 0x101, v57);
        }

        *(v57[7] + 2 * v59) = 1;
        swift_endAccess();
        v25 = sub_1005683F8;
        if (v104 != 1)
        {
          sub_1001DFE6C(sub_1005683F8);
          v66 = sub_1005684FC;
          goto LABEL_27;
        }

        v23 = sub_1005684FC;
        if ((v104 & 0x100) == 0)
        {
LABEL_5:
          v93 = v25;
          v26 = v15;
          v98 = v24;
          static Logger.sql.getter();
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v27, v28))
          {
            v29 = v3;
            v30 = v2;
            v31 = swift_slowAlloc();
            v32 = v23;
            v33 = swift_slowAlloc();
            v103[0] = v33;
            *v31 = 136446210;
            *(v31 + 4) = sub_1002346CC(0xD000000000000014, v26 | 0x8000000000000000, v103);
            _os_log_impl(&_mh_execute_header, v27, v28, "Checking if %{public}s DB contents needs to be prepared for first use after daemon launch", v31, 0xCu);
            sub_10000710C(v33);
            v23 = v32;

            v2 = v30;

            v34 = v29[1];
            v35 = v34(v14, v30);
          }

          else
          {

            v34 = v3[1];
            v35 = v34(v14, v2);
          }

          __chkstk_darwin(v35);
          *(&v93 - 2) = v69;
          v70 = v101;
          sub_100541504(sub_100566AA8, (&v93 - 4));
          v101 = v70;
          if (v70)
          {
            sub_1001DFE6C(v93);
            return sub_1001DFE6C(v23);
          }

          v97 = v23;
          v71 = v96;
          static Logger.sql.getter();
          v72 = Logger.logObject.getter();
          v73 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v94 = v2;
            v75 = v74;
            v76 = swift_slowAlloc();
            v103[0] = v76;
            *v75 = 136446210;
            *(v75 + 4) = sub_1002346CC(0xD000000000000014, v26 | 0x8000000000000000, v103);
            _os_log_impl(&_mh_execute_header, v72, v73, "%{public}s DB contents are prepared for first use after daemon launch", v75, 0xCu);
            sub_10000710C(v76);
            v77 = v26;

            v34(v71, v94);
          }

          else
          {

            v34(v71, v2);
            v77 = v26;
          }

          HIBYTE(v104) = 1;
          v78 = swift_allocObject();
          *(v78 + 16) = &v104;
          v79 = v100;
          swift_beginAccess();
          v80 = swift_allocObject();
          *(v80 + 16) = sub_1005683F8;
          *(v80 + 24) = v78;
          v81 = swift_isUniquelyReferenced_nonNull_native();
          v102 = *(v79 + 16);
          v82 = v102;
          *(v79 + 16) = 0x8000000000000000;
          v83 = v77;
          v85 = sub_10052213C(0xD000000000000014, v77 | 0x8000000000000000);
          v86 = v82[2];
          v87 = (v84 & 1) == 0;
          v88 = v86 + v87;
          if (__OFADD__(v86, v87))
          {
            __break(1u);
          }

          else
          {
            LOBYTE(v71) = v84;
            if (v82[3] < v88)
            {
              sub_1005B93F4(v88, v81);
              v82 = v102;
              v89 = sub_10052213C(0xD000000000000014, v83 | 0x8000000000000000);
              if ((v71 & 1) == (v90 & 1))
              {
                v85 = v89;
LABEL_41:
                v91 = v93;
                *(v100 + 16) = v82;
                if ((v71 & 1) == 0)
                {
                  v92 = sub_1005646D8();
                  sub_1005C32A8(v85, 0xD000000000000014, v83 | 0x8000000000000000, v92 & 0x101, v82);
                }

                *(v82[7] + 2 * v85 + 1) = 1;
                swift_endAccess();
                sub_1001DFE6C(v91);
                sub_1001DFE6C(v97);
                v68 = sub_1005684FC;
                v67 = sub_1005683F8;
                goto LABEL_28;
              }

LABEL_48:
              result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return result;
            }

            if (v81)
            {
              goto LABEL_41;
            }
          }

          sub_1005C39E0();
          v82 = v102;
          goto LABEL_41;
        }

LABEL_25:
        sub_1001DFE6C(v25);
        v66 = v23;
LABEL_27:
        sub_1001DFE6C(v66);
        v67 = 0;
        v68 = 0;
LABEL_28:
        sub_1001DFE6C(v67);
        return sub_1001DFE6C(v68);
      }
    }

    sub_1005C39E0();
    v57 = v102;
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_10053FA88(uint64_t a1)
{
  v2 = v1;
  v90 = a1;
  v3 = 0xEE00656761726F74;
  v4 = 0x5365736E6563694CLL;
  v5 = type metadata accessor for Logger();
  v92 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v85 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v85 - v13;
  __chkstk_darwin(v12);
  v16 = &v85 - v15;
  swift_beginAccess();
  v17 = *(v1 + 16);
  v18 = *(v17 + 16);
  v91 = v16;
  if (!v18)
  {
    goto LABEL_6;
  }

  v19 = sub_10052213C(0x5365736E6563694CLL, 0xEE00656761726F74);
  if ((v20 & 1) == 0)
  {

LABEL_6:
    v96 = 0;
    goto LABEL_7;
  }

  v21 = (*(v17 + 56) + 2 * v19);
  v22 = *v21;
  v23 = v21[1];

  LOBYTE(v96) = v22;
  HIBYTE(v96) = v23;
  v3 = 0xEE00656761726F74;
  if (v22)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    goto LABEL_22;
  }

LABEL_7:
  v89 = v14;
  static Logger.sql.getter();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v95[0] = v3;
    *v30 = 136446210;
    *(v30 + 4) = sub_1002346CC(0x5365736E6563694CLL, 0xEE00656761726F74, v95);
    _os_log_impl(&_mh_execute_header, v28, v29, "Checking if %{public}s schema needs to be updated", v30, 0xCu);
    sub_10000710C(v3);
  }

  v31 = *(v92 + 8);
  v31(v11, v5);
  v32 = v93;
  result = sub_100541504(sub_100541338, 0);
  if (!v32)
  {
    v93 = 0;
    static Logger.sql.getter();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    v36 = os_log_type_enabled(v34, v35);
    v86 = v5;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v3 = swift_slowAlloc();
      v95[0] = v3;
      *v37 = 136446210;
      v5 = 0x5365736E6563694CLL;
      v4 = 0xEE00656761726F74;
      *(v37 + 4) = sub_1002346CC(0x5365736E6563694CLL, 0xEE00656761726F74, v95);
      _os_log_impl(&_mh_execute_header, v34, v35, "%{public}s schema is up-to-date", v37, 0xCu);
      sub_10000710C(v3);

      v31(v8, v86);
    }

    else
    {

      v31(v8, v5);
      v5 = 0x5365736E6563694CLL;
      v4 = 0xEE00656761726F74;
    }

    LOBYTE(v96) = 1;
    v38 = swift_allocObject();
    *(v38 + 16) = &v96;
    swift_beginAccess();
    v39 = swift_allocObject();
    *(v39 + 16) = sub_1005683F8;
    *(v39 + 24) = v38;
    v87 = v38;
    v88 = v39;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v94 = *(v2 + 16);
    v41 = v94;
    v85 = v2;
    *(v2 + 16) = 0x8000000000000000;
    v43 = sub_10052213C(0x5365736E6563694CLL, 0xEE00656761726F74);
    v44 = v41[2];
    v45 = (v42 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v31) = v42;
      v3 = 0xEE00656761726F74;
      if (v41[3] < v46)
      {
        sub_1005B93F4(v46, isUniquelyReferenced_nonNull_native);
        v41 = v94;
        v4 = 0x5365736E6563694CLL;
        v47 = sub_10052213C(0x5365736E6563694CLL, 0xEE00656761726F74);
        v5 = v86;
        if ((v31 & 1) != (v48 & 1))
        {
          goto LABEL_49;
        }

        v43 = v47;
        goto LABEL_18;
      }

      v4 = 0x5365736E6563694CLL;
      v5 = v86;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_18:
        v2 = v85;
        v24 = v88;
        *(v85 + 16) = v41;
        if ((v31 & 1) == 0)
        {
          v49 = (*(v24 + 16))();
          sub_1005C32A8(v43, v4, v3, v49 & 0x101, v41);
        }

        *(v41[7] + 2 * v43) = 1;
        swift_endAccess();
        v27 = sub_1005683F8;
        if (v96 != 1)
        {
          sub_1001DFE6C(sub_1005683F8);
          v50 = sub_1005684FC;
          goto LABEL_25;
        }

        v25 = sub_1005684FC;
        v14 = v89;
        v26 = v87;
LABEL_22:
        if ((v96 & 0x100) != 0)
        {
          sub_1001DFE6C(v27);
          v50 = v25;
LABEL_25:
          sub_1001DFE6C(v50);
          v51 = 0;
          v52 = 0;
LABEL_26:
          sub_1001DFE6C(v51);
          return sub_1001DFE6C(v52);
        }

        v85 = v27;
        v89 = v25;
        static Logger.sql.getter();
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v88 = v24;
          v56 = v55;
          v57 = swift_slowAlloc();
          v87 = v26;
          v58 = v57;
          v95[0] = v57;
          *v56 = 136446210;
          *(v56 + 4) = sub_1002346CC(v4, v3, v95);
          _os_log_impl(&_mh_execute_header, v53, v54, "Checking if %{public}s DB contents needs to be prepared for first use after daemon launch", v56, 0xCu);
          sub_10000710C(v58);
          v26 = v87;

          v24 = v88;
        }

        v59 = *(v92 + 8);
        v60 = v59(v91, v5);
        __chkstk_darwin(v60);
        *(&v85 - 2) = v61;
        v62 = v93;
        sub_100541504(sub_100566A24, (&v85 - 4));
        v93 = v62;
        if (v62)
        {
          sub_1001DFE6C(v85);
          return sub_1001DFE6C(v89);
        }

        static Logger.sql.getter();
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.default.getter();
        v65 = os_log_type_enabled(v63, v64);
        v87 = v26;
        v88 = v24;
        if (v65)
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v95[0] = v67;
          *v66 = 136446210;
          *(v66 + 4) = sub_1002346CC(v4, 0xEE00656761726F74, v95);
          _os_log_impl(&_mh_execute_header, v63, v64, "%{public}s DB contents are prepared for first use after daemon launch", v66, 0xCu);
          sub_10000710C(v67);
          v68 = 0x5365736E6563694CLL;

          v59(v14, v5);
        }

        else
        {

          v59(v14, v5);
          v68 = v4;
        }

        HIBYTE(v96) = 1;
        v69 = swift_allocObject();
        *(v69 + 16) = &v96;
        swift_beginAccess();
        v70 = v2;
        v71 = swift_allocObject();
        *(v71 + 16) = sub_1005683F8;
        *(v71 + 24) = v69;
        v72 = swift_isUniquelyReferenced_nonNull_native();
        v94 = *(v70 + 16);
        v73 = v94;
        v74 = v70;
        *(v70 + 16) = 0x8000000000000000;
        v75 = v68;
        v77 = sub_10052213C(v68, 0xEE00656761726F74);
        v78 = v73[2];
        v79 = (v76 & 1) == 0;
        v80 = v78 + v79;
        if (__OFADD__(v78, v79))
        {
          __break(1u);
        }

        else
        {
          LOBYTE(v69) = v76;
          if (v73[3] < v80)
          {
            sub_1005B93F4(v80, v72);
            v73 = v94;
            v81 = sub_10052213C(v75, 0xEE00656761726F74);
            if ((v69 & 1) == (v82 & 1))
            {
              v77 = v81;
              v83 = v89;
              *(v74 + 16) = v73;
              if (v69)
              {
                goto LABEL_43;
              }

              goto LABEL_42;
            }

LABEL_49:
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v83 = v89;
          if (v72)
          {
            *(v74 + 16) = v73;
            if (v76)
            {
LABEL_43:
              *(v73[7] + 2 * v77 + 1) = 1;
              swift_endAccess();
              sub_1001DFE6C(v85);
              sub_1001DFE6C(v83);
              v52 = sub_1005684FC;
              v51 = sub_1005683F8;
              goto LABEL_26;
            }

LABEL_42:
            v84 = (*(v71 + 16))();
            v83 = v89;
            sub_1005C32A8(v77, v75, 0xEE00656761726F74, v84 & 0x101, v73);
            goto LABEL_43;
          }
        }

        sub_1005C39E0();
        v83 = v89;
        v73 = v94;
        *(v74 + 16) = v94;
        if (v69)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }
    }

    sub_1005C39E0();
    v41 = v94;
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_100540550()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v97 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v88 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v88 - v10;
  __chkstk_darwin(v9);
  v13 = &v88 - v12;
  swift_beginAccess();
  v14 = *(v0 + 16);
  v15 = *(v14 + 16);
  v94 = v11;
  v96 = v13;
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = sub_10052213C(0x7453657275636553, 0xED0000656761726FLL);
  if ((v17 & 1) == 0)
  {

LABEL_10:
    v101 = 0;
    goto LABEL_11;
  }

  v18 = (*(v14 + 56) + 2 * v16);
  v19 = *v18;
  v20 = v18[1];

  LOBYTE(v101) = v19;
  HIBYTE(v101) = v20;
  v21 = 0xED0000656761726FLL;
  if (v19)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    if ((v101 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_11:
  static Logger.sql.getter();
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = v1;
    v42 = v3;
    v43 = v2;
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v100[0] = v45;
    *v44 = 136446210;
    *(v44 + 4) = sub_1002346CC(0x7453657275636553, 0xED0000656761726FLL, v100);
    _os_log_impl(&_mh_execute_header, v39, v40, "Checking if %{public}s schema needs to be updated", v44, 0xCu);
    sub_10000710C(v45);

    v2 = v43;
    v3 = v42;
    v1 = v41;
  }

  v21 = *(v3 + 8);
  v21(v8, v2);
  v46 = v98;
  result = sub_100541504(sub_10054139C, 0);
  if (!v46)
  {
    v95 = v1;
    v98 = 0;
    v47 = v97;
    static Logger.sql.getter();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    v50 = os_log_type_enabled(v48, v49);
    v91 = v3;
    v92 = v2;
    if (v50)
    {
      v51 = swift_slowAlloc();
      v2 = swift_slowAlloc();
      v100[0] = v2;
      *v51 = 136446210;
      v1 = 0x7453657275636553;
      v3 = 0xED0000656761726FLL;
      *(v51 + 4) = sub_1002346CC(0x7453657275636553, 0xED0000656761726FLL, v100);
      _os_log_impl(&_mh_execute_header, v48, v49, "%{public}s schema is up-to-date", v51, 0xCu);
      sub_10000710C(v2);

      v21(v47, v92);
    }

    else
    {

      v21(v47, v2);
      v1 = 0x7453657275636553;
      v3 = 0xED0000656761726FLL;
    }

    LOBYTE(v101) = 1;
    v52 = swift_allocObject();
    *(v52 + 16) = &v101;
    v53 = v95;
    swift_beginAccess();
    v54 = swift_allocObject();
    *(v54 + 16) = sub_1005683F8;
    *(v54 + 24) = v52;
    v97 = v54;
    v93 = v52;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v99 = *(v53 + 16);
    v56 = v99;
    *(v53 + 16) = 0x8000000000000000;
    v58 = sub_10052213C(0x7453657275636553, 0xED0000656761726FLL);
    v59 = v56[2];
    v60 = (v57 & 1) == 0;
    v61 = v59 + v60;
    if (__OFADD__(v59, v60))
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v2) = v57;
      v21 = 0xED0000656761726FLL;
      if (v56[3] < v61)
      {
        sub_1005B93F4(v61, isUniquelyReferenced_nonNull_native);
        v56 = v99;
        v62 = sub_10052213C(0x7453657275636553, 0xED0000656761726FLL);
        v1 = v95;
        v3 = v91;
        if ((v2 & 1) != (v63 & 1))
        {
          goto LABEL_47;
        }

        v58 = v62;
        goto LABEL_22;
      }

      v1 = v95;
      v3 = v91;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_22:
        v22 = v97;
        *(v1 + 16) = v56;
        if ((v2 & 1) == 0)
        {
          v64 = v22[2]();
          sub_1005C32A8(v58, 0x7453657275636553, v21, v64 & 0x101, v56);
        }

        *(v56[7] + 2 * v58) = 1;
        swift_endAccess();
        v25 = sub_1005683F8;
        if (v101 != 1)
        {
          sub_1001DFE6C(sub_1005683F8);
          v65 = sub_1005684FC;
          goto LABEL_28;
        }

        v23 = sub_1005684FC;
        v2 = v92;
        v24 = v93;
        if ((v101 & 0x100) == 0)
        {
LABEL_5:
          v89 = v25;
          v90 = v23;
          static Logger.sql.getter();
          v26 = Logger.logObject.getter();
          v27 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v93 = v24;
            v29 = v28;
            v30 = swift_slowAlloc();
            v97 = v22;
            v31 = v1;
            v32 = v3;
            v33 = v2;
            v34 = v30;
            v100[0] = v30;
            *v29 = 136446210;
            *(v29 + 4) = sub_1002346CC(0x7453657275636553, v21, v100);
            _os_log_impl(&_mh_execute_header, v26, v27, "Checking if %{public}s DB contents needs to be prepared for first use after daemon launch", v29, 0xCu);
            sub_10000710C(v34);
            v2 = v33;
            v3 = v32;
            v1 = v31;
            v22 = v97;

            v24 = v93;
          }

          v35 = *(v3 + 8);
          v36 = v35(v96, v2);
          __chkstk_darwin(v36);
          v37 = v98;
          sub_100541504(nullsub_1, (&v88 - 4));
          v98 = v37;
          if (v37)
          {
            sub_1001DFE6C(v89);
            return sub_1001DFE6C(v90);
          }

          v97 = v22;
          v95 = v1;
          v68 = v94;
          static Logger.sql.getter();
          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.default.getter();
          v71 = os_log_type_enabled(v69, v70);
          v93 = v24;
          if (v71)
          {
            v72 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            v100[0] = v73;
            *v72 = 136446210;
            *(v72 + 4) = sub_1002346CC(0x7453657275636553, 0xED0000656761726FLL, v100);
            _os_log_impl(&_mh_execute_header, v69, v70, "%{public}s DB contents are prepared for first use after daemon launch", v72, 0xCu);
            sub_10000710C(v73);
          }

          v35(v68, v2);
          HIBYTE(v101) = 1;
          v74 = swift_allocObject();
          *(v74 + 16) = &v101;
          v75 = v95;
          swift_beginAccess();
          v76 = swift_allocObject();
          *(v76 + 16) = sub_1005683F8;
          *(v76 + 24) = v74;
          v96 = v74;
          v77 = swift_isUniquelyReferenced_nonNull_native();
          v99 = *(v75 + 16);
          v78 = v99;
          v79 = v75;
          *(v75 + 16) = 0x8000000000000000;
          v81 = sub_10052213C(0x7453657275636553, 0xED0000656761726FLL);
          v82 = v78[2];
          v83 = (v80 & 1) == 0;
          v84 = v82 + v83;
          if (__OFADD__(v82, v83))
          {
            __break(1u);
          }

          else
          {
            LOBYTE(v74) = v80;
            if (v78[3] < v84)
            {
              sub_1005B93F4(v84, v77);
              v78 = v99;
              v85 = sub_10052213C(0x7453657275636553, 0xED0000656761726FLL);
              if ((v74 & 1) == (v86 & 1))
              {
                v81 = v85;
                *(v79 + 16) = v78;
                if (v74)
                {
                  goto LABEL_41;
                }

                goto LABEL_40;
              }

LABEL_47:
              result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return result;
            }

            if (v77)
            {
              *(v79 + 16) = v78;
              if (v80)
              {
LABEL_41:
                *(v78[7] + 2 * v81 + 1) = 1;
                swift_endAccess();
                sub_1001DFE6C(v89);
                sub_1001DFE6C(v90);
                v67 = sub_1005684FC;
                v66 = sub_1005683F8;
                goto LABEL_29;
              }

LABEL_40:
              v87 = (*(v76 + 16))();
              sub_1005C32A8(v81, 0x7453657275636553, 0xED0000656761726FLL, v87 & 0x101, v78);
              goto LABEL_41;
            }
          }

          sub_1005C39E0();
          v78 = v99;
          *(v79 + 16) = v99;
          if (v74)
          {
            goto LABEL_41;
          }

          goto LABEL_40;
        }

LABEL_26:
        sub_1001DFE6C(v25);
        v65 = v23;
LABEL_28:
        sub_1001DFE6C(v65);
        v66 = 0;
        v67 = 0;
LABEL_29:
        sub_1001DFE6C(v66);
        return sub_1001DFE6C(v67);
      }
    }

    sub_1005C39E0();
    v56 = v99;
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10054140C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for LicenseStorageDatabaseTransaction(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 28);
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 16))(&v7[v8], a2, v9);
  *v7 = a1;
  v10 = a1;
  sub_100512A58();
  return sub_100566034(v7, type metadata accessor for LicenseStorageDatabaseTransaction);
}

uint64_t sub_100541504(uint64_t a1, uint64_t a2)
{
  sub_100513858();
  v5 = swift_allocError();
  *v6 = 1;
  *(v6 + 40) = 3;
  v16 = v5;
  v17 = 1;
  v7 = *(v2 + 24);
  v8 = swift_allocObject();
  v8[2] = &v16;
  v8[3] = a1;
  v8[4] = a2;
  v9 = swift_allocObject();
  v9[2] = sub_100564698;
  v9[3] = v8;
  aBlock[4] = sub_1005646A4;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10054970C;
  aBlock[3] = &unk_100769830;
  v10 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v11 = [v7 performTransaction:v10 error:aBlock];
  _Block_release(v10);
  v12 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (!v11)
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_6;
  }

  if (v17)
  {
    aBlock[0] = v16;
    swift_errorRetain();
    sub_1001F0C48(&unk_10077F940);
    swift_willThrowTypedImpl();
LABEL_6:
    sub_1001DA3F8(v16, v17);
  }
}

uint64_t sub_100541758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v6 = sub_1001F0C48(&qword_1007874E0);
  v7 = __chkstk_darwin(v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = (&v22 - v10);
  sub_100513858();
  v12 = swift_allocError();
  *v13 = 1;
  *(v13 + 40) = 3;
  *v11 = v12;
  swift_storeEnumTagMultiPayload();
  v14 = *(v3 + 24);
  v15 = swift_allocObject();
  v15[2] = v11;
  v15[3] = a1;
  v15[4] = a2;
  v16 = swift_allocObject();
  v16[2] = sub_100566B08;
  v16[3] = v15;
  aBlock[4] = sub_100568508;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10054970C;
  aBlock[3] = &unk_10076A4B0;
  v17 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v18 = [v14 performTransaction:v17 error:aBlock];
  _Block_release(v17);
  v19 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (!v18)
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_6;
  }

  sub_100005934(v11, v9, &qword_1007874E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    aBlock[0] = *v9;
    sub_1001F0C48(&unk_10077F940);
    swift_willThrowTypedImpl();
LABEL_6:
    sub_1000032A8(v11, &qword_1007874E0);
  }

  sub_10020A668(v9, v23, &qword_100780700);
  sub_1000032A8(v11, &qword_1007874E0);
}

uint64_t sub_100541AA4(uint64_t a1, uint64_t a2)
{
  sub_100513858();
  v5 = swift_allocError();
  *v6 = 1;
  *(v6 + 40) = 3;
  v17 = v5;
  v18 = 1;
  v7 = *(v2 + 24);
  v8 = swift_allocObject();
  v8[2] = &v17;
  v8[3] = a1;
  v8[4] = a2;
  v9 = swift_allocObject();
  v9[2] = sub_10056679C;
  v9[3] = v8;
  aBlock[4] = sub_100568508;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10054970C;
  aBlock[3] = &unk_1007699C0;
  v10 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v11 = [v7 performTransaction:v10 error:aBlock];
  _Block_release(v10);
  v12 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (!v11)
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_6;
  }

  v14 = v17;
  if (v18)
  {
    aBlock[0] = v17;
    swift_errorRetain();
    sub_1001F0C48(&unk_10077F940);
    swift_willThrowTypedImpl();
LABEL_6:
    sub_1001DA3F8(v17, v18);
  }

  return v14 & 1;
}

uint64_t sub_100541D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_100513858();
  v7 = swift_allocError();
  *v8 = 1;
  *(v8 + 40) = 3;
  v23 = v7;
  v25 = 1;
  v9 = *(v3 + 24);
  v10 = swift_allocObject();
  v10[2] = &v23;
  v10[3] = a1;
  v10[4] = a2;
  v11 = swift_allocObject();
  v11[2] = sub_1005668E0;
  v11[3] = v10;
  v22[4] = sub_100568508;
  v22[5] = v11;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = sub_10054970C;
  v22[3] = &unk_100769B28;
  v12 = _Block_copy(v22);

  v22[0] = 0;
  v13 = [v9 performTransaction:v12 error:v22];
  _Block_release(v12);
  v14 = v22[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v13)
  {
    v16 = v23;
    if ((v25 & 1) == 0)
    {
      v20 = v24;
      *a3 = v23;
      a3[1] = v20;
      sub_1001DFECC(v16, v20);
      v17 = v16;
      v18 = v20;
      v19 = 0;
      goto LABEL_8;
    }

    v22[0] = v23;
    swift_errorRetain();
    sub_1001F0C48(&unk_10077F940);
    swift_willThrowTypedImpl();
  }

  else
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v17 = v23;
  v18 = v24;
  v19 = v25;
LABEL_8:
  sub_100566D1C(v17, v18, v19, sub_10020B0E0);
}

uint64_t sub_100541FB4(uint64_t a1, uint64_t a2)
{
  sub_100513858();
  v5 = swift_allocError();
  *v6 = 1;
  *(v6 + 40) = 3;
  v17 = v5;
  v18 = 1;
  v7 = *(v2 + 24);
  v8 = swift_allocObject();
  v8[2] = &v17;
  v8[3] = a1;
  v8[4] = a2;
  v9 = swift_allocObject();
  v10 = v9;
  v9[2] = sub_100564698;
  v9[3] = v8;
  aBlock[4] = sub_100568508;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10054970C;
  aBlock[3] = &unk_100769F60;
  v11 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v12 = [v7 performTransaction:v11 error:aBlock];
  _Block_release(v11);
  v13 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v12)
  {
    v10 = v17;
    if ((v18 & 1) == 0)
    {

      return v10 & 1;
    }

    aBlock[0] = v17;
    swift_errorRetain();
    sub_1001F0C48(&unk_10077F940);
    swift_willThrowTypedImpl();
  }

  else
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_1001DA3F8(v17, v18);

  return v10 & 1;
}

void *sub_10054221C(uint64_t a1, uint64_t a2)
{
  sub_100513858();
  v5 = swift_allocError();
  *v6 = 1;
  *(v6 + 40) = 3;
  v16 = v5;
  v18 = 1;
  v7 = *(v2 + 24);
  v8 = swift_allocObject();
  v8[2] = &v16;
  v8[3] = a1;
  v8[4] = a2;
  v9 = swift_allocObject();
  v9[2] = sub_100566910;
  v9[3] = v8;
  aBlock[4] = sub_100568508;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10054970C;
  aBlock[3] = &unk_100769CB8;
  v10 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v11 = [v7 performTransaction:v10 error:aBlock];
  _Block_release(v10);
  v12 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v11)
  {
    v9 = v16;
    if ((v18 & 1) == 0)
    {

      return v9;
    }

    aBlock[0] = v16;
    swift_errorRetain();
    sub_1001F0C48(&unk_10077F940);
    swift_willThrowTypedImpl();
  }

  else
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_1001DA404(v16, v17, v18);

  return v9;
}

void *sub_100542490(uint64_t a1, uint64_t a2)
{
  sub_100513858();
  v5 = swift_allocError();
  *v6 = 1;
  *(v6 + 40) = 3;
  v16[0] = v5;
  v17 = 1;
  v7 = *(v2 + 24);
  v8 = swift_allocObject();
  v8[2] = v16;
  v8[3] = a1;
  v8[4] = a2;
  v9 = swift_allocObject();
  v9[2] = sub_100566948;
  v9[3] = v8;
  v15[4] = sub_100568508;
  v15[5] = v9;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_10054970C;
  v15[3] = &unk_100769DD0;
  v10 = _Block_copy(v15);

  v15[0] = 0;
  v11 = [v7 performTransaction:v10 error:v15];
  _Block_release(v10);
  v12 = v15[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v11)
  {
    v9 = v16[0];
    if ((v17 & 1) == 0)
    {

      return v9;
    }

    v15[0] = v16[0];
    swift_errorRetain();
    sub_1001F0C48(&unk_10077F940);
    swift_willThrowTypedImpl();
  }

  else
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_100474318(v16[0], v16[1], v17);

  return v9;
}

uint64_t sub_100542700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v6 = sub_1001F0C48(&qword_100787458);
  v7 = __chkstk_darwin(v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = (&v22 - v10);
  sub_100513858();
  v12 = swift_allocError();
  *v13 = 1;
  *(v13 + 40) = 3;
  *v11 = v12;
  swift_storeEnumTagMultiPayload();
  v14 = *(v3 + 24);
  v15 = swift_allocObject();
  v15[2] = v11;
  v15[3] = a1;
  v15[4] = a2;
  v16 = swift_allocObject();
  v16[2] = sub_100566980;
  v16[3] = v15;
  aBlock[4] = sub_100568508;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10054970C;
  aBlock[3] = &unk_100769E48;
  v17 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v18 = [v14 performTransaction:v17 error:aBlock];
  _Block_release(v17);
  v19 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (!v18)
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_6;
  }

  sub_100005934(v11, v9, &qword_100787458);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    aBlock[0] = *v9;
    sub_1001F0C48(&unk_10077F940);
    swift_willThrowTypedImpl();
LABEL_6:
    sub_1000032A8(v11, &qword_100787458);
  }

  sub_10020A668(v9, v23, &unk_1007809E0);
  sub_1000032A8(v11, &qword_100787458);
}

void *sub_100542A4C(uint64_t a1, uint64_t a2)
{
  sub_100513858();
  v5 = swift_allocError();
  *v6 = 1;
  *(v6 + 40) = 3;
  v16 = v5;
  v17 = 1;
  v7 = *(v2 + 24);
  v8 = swift_allocObject();
  v8[2] = &v16;
  v8[3] = a1;
  v8[4] = a2;
  v9 = swift_allocObject();
  v9[2] = sub_1005683C8;
  v9[3] = v8;
  aBlock[4] = sub_100568508;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10054970C;
  aBlock[3] = &unk_10076A0F0;
  v10 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v11 = [v7 performTransaction:v10 error:aBlock];
  _Block_release(v10);
  v12 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v11)
  {
    v9 = v16;
    if ((v17 & 1) == 0)
    {

      return v9;
    }

    aBlock[0] = v16;
    swift_errorRetain();
    sub_1001F0C48(&unk_10077F940);
    swift_willThrowTypedImpl();
  }

  else
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_1005681F0(v16, v17, &_swift_release);

  return v9;
}

uint64_t sub_100542CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100513858();
  v7 = swift_allocError();
  *v8 = 1;
  *(v8 + 40) = 3;
  v22[0] = v7;
  v23 = 1;
  v9 = *(v3 + 24);
  v10 = swift_allocObject();
  v10[2] = v22;
  v10[3] = a1;
  v10[4] = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1005646FC;
  *(v11 + 24) = v10;
  v20 = sub_100568508;
  v21 = v11;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v18 = sub_10054970C;
  v19 = &unk_100769948;
  v12 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v13 = [v9 performTransaction:v12 error:&aBlock];
  _Block_release(v12);
  v14 = aBlock;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v13)
  {
    sub_100005934(v22, &aBlock, &qword_1007873B0);
    if (v21)
    {
      sub_1001F0C48(&unk_10077F940);
      swift_willThrowTypedImpl();
    }

    else
    {
      sub_1001DFDBC(&aBlock, a3);
    }
  }

  else
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_1000032A8(v22, &qword_1007873B0);
}

uint64_t sub_100542F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v6 = sub_1001F0C48(&qword_1007874D8);
  v7 = __chkstk_darwin(v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = (&v22 - v10);
  sub_100513858();
  v12 = swift_allocError();
  *v13 = 1;
  *(v13 + 40) = 3;
  *v11 = v12;
  swift_storeEnumTagMultiPayload();
  v14 = *(v3 + 24);
  v15 = swift_allocObject();
  v15[2] = v11;
  v15[3] = a1;
  v15[4] = a2;
  v16 = swift_allocObject();
  v16[2] = sub_100566AD4;
  v16[3] = v15;
  aBlock[4] = sub_100568508;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10054970C;
  aBlock[3] = &unk_10076A438;
  v17 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v18 = [v14 performTransaction:v17 error:aBlock];
  _Block_release(v17);
  v19 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (!v18)
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_6;
  }

  sub_100005934(v11, v9, &qword_1007874D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    aBlock[0] = *v9;
    sub_1001F0C48(&unk_10077F940);
    swift_willThrowTypedImpl();
LABEL_6:
    sub_1000032A8(v11, &qword_1007874D8);
  }

  sub_10020A668(v9, v23, &qword_10077F138);
  sub_1000032A8(v11, &qword_1007874D8);
}

uint64_t sub_10054329C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v6 = sub_1001F0C48(&qword_100787570);
  v7 = __chkstk_darwin(v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = (&v22 - v10);
  sub_100513858();
  v12 = swift_allocError();
  *v13 = 1;
  *(v13 + 40) = 3;
  *v11 = v12;
  swift_storeEnumTagMultiPayload();
  v14 = *(v3 + 24);
  v15 = swift_allocObject();
  v15[2] = v11;
  v15[3] = a1;
  v15[4] = a2;
  v16 = swift_allocObject();
  v16[2] = sub_100566F48;
  v16[3] = v15;
  aBlock[4] = sub_100568508;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10054970C;
  aBlock[3] = &unk_10076A9B0;
  v17 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v18 = [v14 performTransaction:v17 error:aBlock];
  _Block_release(v17);
  v19 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (!v18)
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_6;
  }

  sub_100005934(v11, v9, &qword_100787570);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    aBlock[0] = *v9;
    sub_1001F0C48(&unk_10077F940);
    swift_willThrowTypedImpl();
LABEL_6:
    sub_1000032A8(v11, &qword_100787570);
  }

  sub_100566A40(v9, v23, type metadata accessor for DDMDeclaration);
  sub_1000032A8(v11, &qword_100787570);
}

void *sub_1005435EC(uint64_t a1, uint64_t a2)
{
  sub_100513858();
  v5 = swift_allocError();
  *v6 = 1;
  *(v6 + 40) = 3;
  v16 = v5;
  v17 = 1;
  v7 = *(v2 + 24);
  v8 = swift_allocObject();
  v8[2] = &v16;
  v8[3] = a1;
  v8[4] = a2;
  v9 = swift_allocObject();
  v9[2] = sub_1005683C4;
  v9[3] = v8;
  aBlock[4] = sub_100568508;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10054970C;
  aBlock[3] = &unk_10076A3C0;
  v10 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v11 = [v7 performTransaction:v10 error:aBlock];
  _Block_release(v10);
  v12 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v11)
  {
    v9 = v16;
    if ((v17 & 1) == 0)
    {

      return v9;
    }

    aBlock[0] = v16;
    swift_errorRetain();
    sub_1001F0C48(&unk_10077F940);
    swift_willThrowTypedImpl();
  }

  else
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_1005681F0(v16, v17, &_swift_bridgeObjectRelease);

  return v9;
}

uint64_t sub_100543868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v6 = sub_1001F0C48(&qword_100787590);
  v7 = __chkstk_darwin(v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = (&v22 - v10);
  sub_100513858();
  v12 = swift_allocError();
  *v13 = 1;
  *(v13 + 40) = 3;
  *v11 = v12;
  swift_storeEnumTagMultiPayload();
  v14 = *(v3 + 24);
  v15 = swift_allocObject();
  v15[2] = v11;
  v15[3] = a1;
  v15[4] = a2;
  v16 = swift_allocObject();
  v16[2] = sub_100567004;
  v16[3] = v15;
  aBlock[4] = sub_100568508;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10054970C;
  aBlock[3] = &unk_10076AB18;
  v17 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v18 = [v14 performTransaction:v17 error:aBlock];
  _Block_release(v17);
  v19 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (!v18)
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_6;
  }

  sub_100005934(v11, v9, &qword_100787590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    aBlock[0] = *v9;
    sub_1001F0C48(&unk_10077F940);
    swift_willThrowTypedImpl();
LABEL_6:
    sub_1000032A8(v11, &qword_100787590);
  }

  sub_10020A668(v9, v23, &qword_10077F140);
  sub_1000032A8(v11, &qword_100787590);
}

uint64_t sub_100543BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v6 = sub_1001F0C48(&qword_100787568);
  v7 = __chkstk_darwin(v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = (&v22 - v10);
  sub_100513858();
  v12 = swift_allocError();
  *v13 = 1;
  *(v13 + 40) = 3;
  *v11 = v12;
  swift_storeEnumTagMultiPayload();
  v14 = *(v3 + 24);
  v15 = swift_allocObject();
  v15[2] = v11;
  v15[3] = a1;
  v15[4] = a2;
  v16 = swift_allocObject();
  v16[2] = sub_100566F14;
  v16[3] = v15;
  aBlock[4] = sub_100568508;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10054970C;
  aBlock[3] = &unk_10076A938;
  v17 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v18 = [v14 performTransaction:v17 error:aBlock];
  _Block_release(v17);
  v19 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (!v18)
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_6;
  }

  sub_100005934(v11, v9, &qword_100787568);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    aBlock[0] = *v9;
    sub_1001F0C48(&unk_10077F940);
    swift_willThrowTypedImpl();
LABEL_6:
    sub_1000032A8(v11, &qword_100787568);
  }

  sub_10020A668(v9, v23, &qword_10077F3D8);
  sub_1000032A8(v11, &qword_100787568);
}

void *sub_100543F00(uint64_t a1, uint64_t a2)
{
  sub_100513858();
  v5 = swift_allocError();
  *v6 = 1;
  *(v6 + 40) = 3;
  v16 = v5;
  v18 = 1;
  v7 = *(v2 + 24);
  v8 = swift_allocObject();
  v8[2] = &v16;
  v8[3] = a1;
  v8[4] = a2;
  v9 = swift_allocObject();
  v9[2] = sub_100566910;
  v9[3] = v8;
  aBlock[4] = sub_100568508;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10054970C;
  aBlock[3] = &unk_10076A8C0;
  v10 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v11 = [v7 performTransaction:v10 error:aBlock];
  _Block_release(v10);
  v12 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v11)
  {
    v9 = v16;
    if ((v18 & 1) == 0)
    {

      return v9;
    }

    aBlock[0] = v16;
    swift_errorRetain();
    sub_1001F0C48(&unk_10077F940);
    swift_willThrowTypedImpl();
  }

  else
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_1001DA404(v16, v17, v18);

  return v9;
}

uint64_t sub_100544174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v6 = sub_1001F0C48(&qword_100787558);
  v7 = __chkstk_darwin(v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = (&v22 - v10);
  sub_100513858();
  v12 = swift_allocError();
  *v13 = 1;
  *(v13 + 40) = 3;
  *v11 = v12;
  swift_storeEnumTagMultiPayload();
  v14 = *(v3 + 24);
  v15 = swift_allocObject();
  v15[2] = v11;
  v15[3] = a1;
  v15[4] = a2;
  v16 = swift_allocObject();
  v16[2] = sub_100566D4C;
  v16[3] = v15;
  aBlock[4] = sub_100568508;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10054970C;
  aBlock[3] = &unk_10076A7A8;
  v17 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v18 = [v14 performTransaction:v17 error:aBlock];
  _Block_release(v17);
  v19 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (!v18)
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_6;
  }

  sub_100005934(v11, v9, &qword_100787558);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    aBlock[0] = *v9;
    sub_1001F0C48(&unk_10077F940);
    swift_willThrowTypedImpl();
LABEL_6:
    sub_1000032A8(v11, &qword_100787558);
  }

  sub_10020A668(v9, v23, &unk_100780A00);
  sub_1000032A8(v11, &qword_100787558);
}

uint64_t sub_1005444C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v6 = sub_1001F0C48(&qword_100787588);
  v7 = __chkstk_darwin(v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = (&v22 - v10);
  sub_100513858();
  v12 = swift_allocError();
  *v13 = 1;
  *(v13 + 40) = 3;
  *v11 = v12;
  swift_storeEnumTagMultiPayload();
  v14 = *(v3 + 24);
  v15 = swift_allocObject();
  v15[2] = v11;
  v15[3] = a1;
  v15[4] = a2;
  v16 = swift_allocObject();
  v16[2] = sub_100566FD0;
  v16[3] = v15;
  aBlock[4] = sub_100568508;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10054970C;
  aBlock[3] = &unk_10076AAA0;
  v17 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v18 = [v14 performTransaction:v17 error:aBlock];
  _Block_release(v17);
  v19 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (!v18)
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_6;
  }

  sub_100005934(v11, v9, &qword_100787588);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    aBlock[0] = *v9;
    sub_1001F0C48(&unk_10077F940);
    swift_willThrowTypedImpl();
LABEL_6:
    sub_1000032A8(v11, &qword_100787588);
  }

  sub_10020A668(v9, v23, &qword_10077F3B0);
  sub_1000032A8(v11, &qword_100787588);
}

void *sub_10054480C(uint64_t a1, uint64_t a2)
{
  sub_100513858();
  v5 = swift_allocError();
  *v6 = 1;
  *(v6 + 40) = 3;
  v16 = v5;
  v17 = 1;
  v7 = *(v2 + 24);
  v8 = swift_allocObject();
  v8[2] = &v16;
  v8[3] = a1;
  v8[4] = a2;
  v9 = swift_allocObject();
  v9[2] = sub_1005683C4;
  v9[3] = v8;
  aBlock[4] = sub_100568508;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10054970C;
  aBlock[3] = &unk_10076AA28;
  v10 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v11 = [v7 performTransaction:v10 error:aBlock];
  _Block_release(v10);
  v12 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v11)
  {
    v9 = v16;
    if ((v17 & 1) == 0)
    {

      return v9;
    }

    aBlock[0] = v16;
    swift_errorRetain();
    sub_1001F0C48(&unk_10077F940);
    swift_willThrowTypedImpl();
  }

  else
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_1005681F0(v16, v17, &_swift_bridgeObjectRelease);

  return v9;
}

void *sub_100544A88(uint64_t a1, uint64_t a2)
{
  sub_100513858();
  v5 = swift_allocError();
  *v6 = 1;
  *(v6 + 40) = 3;
  v16 = v5;
  v17 = 1;
  v7 = *(v2 + 24);
  v8 = swift_allocObject();
  v8[2] = &v16;
  v8[3] = a1;
  v8[4] = a2;
  v9 = swift_allocObject();
  v9[2] = sub_1005668EC;
  v9[3] = v8;
  aBlock[4] = sub_100568508;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10054970C;
  aBlock[3] = &unk_100769C40;
  v10 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v11 = [v7 performTransaction:v10 error:aBlock];
  _Block_release(v10);
  v12 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v11)
  {
    v9 = v16;
    if ((v17 & 1) == 0)
    {

      return v9;
    }

    aBlock[0] = v16;
    swift_errorRetain();
    sub_1001F0C48(&unk_10077F940);
    swift_willThrowTypedImpl();
  }

  else
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_1005681F0(v16, v17, &_swift_bridgeObjectRelease);

  return v9;
}

uint64_t sub_100544D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_100513858();
  v7 = swift_allocError();
  *v8 = 1;
  *(v8 + 40) = 3;
  v23 = v7;
  v25 = 1;
  v9 = *(v3 + 24);
  v10 = swift_allocObject();
  v10[2] = &v23;
  v10[3] = a1;
  v10[4] = a2;
  v11 = swift_allocObject();
  v11[2] = sub_100566D10;
  v11[3] = v10;
  v22[4] = sub_100568508;
  v22[5] = v11;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = sub_10054970C;
  v22[3] = &unk_10076A730;
  v12 = _Block_copy(v22);

  v22[0] = 0;
  v13 = [v9 performTransaction:v12 error:v22];
  _Block_release(v12);
  v14 = v22[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v13)
  {
    v16 = v23;
    if ((v25 & 1) == 0)
    {
      v20 = v24;
      *a3 = v23;
      a3[1] = v20;
      sub_10020ABFC(v16, v20);
      v17 = v16;
      v18 = v20;
      v19 = 0;
      goto LABEL_8;
    }

    v22[0] = v23;
    swift_errorRetain();
    sub_1001F0C48(&unk_10077F940);
    swift_willThrowTypedImpl();
  }

  else
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v17 = v23;
  v18 = v24;
  v19 = v25;
LABEL_8:
  sub_100566D1C(v17, v18, v19, sub_100007158);
}

void *sub_100544FAC(uint64_t a1, uint64_t a2)
{
  sub_100513858();
  v5 = swift_allocError();
  *v6 = 1;
  *(v6 + 40) = 3;
  v16 = v5;
  v18 = 1;
  v7 = *(v2 + 24);
  v8 = swift_allocObject();
  v8[2] = &v16;
  v8[3] = a1;
  v8[4] = a2;
  v9 = swift_allocObject();
  v9[2] = sub_100566910;
  v9[3] = v8;
  aBlock[4] = sub_100568508;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10054970C;
  aBlock[3] = &unk_10076A5A0;
  v10 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v11 = [v7 performTransaction:v10 error:aBlock];
  _Block_release(v10);
  v12 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v11)
  {
    v9 = v16;
    if ((v18 & 1) == 0)
    {

      return v9;
    }

    aBlock[0] = v16;
    swift_errorRetain();
    sub_1001F0C48(&unk_10077F940);
    swift_willThrowTypedImpl();
  }

  else
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_1001DA404(v16, v17, v18);

  return v9;
}

uint64_t sub_100545220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v6 = sub_1001F0C48(&qword_100787538);
  v7 = __chkstk_darwin(v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = (&v22 - v10);
  sub_100513858();
  v12 = swift_allocError();
  *v13 = 1;
  *(v13 + 40) = 3;
  *v11 = v12;
  swift_storeEnumTagMultiPayload();
  v14 = *(v3 + 24);
  v15 = swift_allocObject();
  v15[2] = v11;
  v15[3] = a1;
  v15[4] = a2;
  v16 = swift_allocObject();
  v16[2] = sub_100566BF0;
  v16[3] = v15;
  aBlock[4] = sub_100568508;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10054970C;
  aBlock[3] = &unk_10076A528;
  v17 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v18 = [v14 performTransaction:v17 error:aBlock];
  _Block_release(v17);
  v19 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (!v18)
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_6;
  }

  sub_100005934(v11, v9, &qword_100787538);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    aBlock[0] = *v9;
    sub_1001F0C48(&unk_10077F940);
    swift_willThrowTypedImpl();
LABEL_6:
    sub_1000032A8(v11, &qword_100787538);
  }

  sub_10020A668(v9, v23, &qword_10077F9C0);
  sub_1000032A8(v11, &qword_100787538);
}

void *sub_10054556C(uint64_t a1, uint64_t a2)
{
  sub_100513858();
  v5 = swift_allocError();
  *v6 = 1;
  *(v6 + 40) = 3;
  v16 = v5;
  v17 = 1;
  v7 = *(v2 + 24);
  v8 = swift_allocObject();
  v8[2] = &v16;
  v8[3] = a1;
  v8[4] = a2;
  v9 = swift_allocObject();
  v9[2] = sub_10056679C;
  v9[3] = v8;
  aBlock[4] = sub_100568508;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10054970C;
  aBlock[3] = &unk_10076A848;
  v10 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v11 = [v7 performTransaction:v10 error:aBlock];
  _Block_release(v10);
  v12 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v11)
  {
    v9 = v16;
    if ((v17 & 1) == 0)
    {

      return v9;
    }

    aBlock[0] = v16;
    swift_errorRetain();
    sub_1001F0C48(&unk_10077F940);
    swift_willThrowTypedImpl();
  }

  else
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_1001DA3F8(v16, v17);

  return v9;
}

uint64_t sub_1005457D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v6 = sub_1001F0C48(&qword_1007875C8);
  v7 = __chkstk_darwin(v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = (&v22 - v10);
  sub_100513858();
  v12 = swift_allocError();
  *v13 = 1;
  *(v13 + 40) = 3;
  *v11 = v12;
  swift_storeEnumTagMultiPayload();
  v14 = *(v3 + 24);
  v15 = swift_allocObject();
  v15[2] = v11;
  v15[3] = a1;
  v15[4] = a2;
  v16 = swift_allocObject();
  v16[2] = sub_100567308;
  v16[3] = v15;
  aBlock[4] = sub_100568508;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10054970C;
  aBlock[3] = &unk_10076ACD0;
  v17 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v18 = [v14 performTransaction:v17 error:aBlock];
  _Block_release(v17);
  v19 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (!v18)
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_6;
  }

  sub_100005934(v11, v9, &qword_1007875C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    aBlock[0] = *v9;
    sub_1001F0C48(&unk_10077F940);
    swift_willThrowTypedImpl();
LABEL_6:
    sub_1000032A8(v11, &qword_1007875C8);
  }

  sub_10020A668(v9, v23, &qword_1007875D0);
  sub_1000032A8(v11, &qword_1007875C8);
}

uint64_t sub_100545B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v6 = sub_1001F0C48(&qword_1007875D8);
  v7 = __chkstk_darwin(v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = (&v22 - v10);
  sub_100513858();
  v12 = swift_allocError();
  *v13 = 1;
  *(v13 + 40) = 3;
  *v11 = v12;
  swift_storeEnumTagMultiPayload();
  v14 = *(v3 + 24);
  v15 = swift_allocObject();
  v15[2] = v11;
  v15[3] = a1;
  v15[4] = a2;
  v16 = swift_allocObject();
  v16[2] = sub_10056733C;
  v16[3] = v15;
  aBlock[4] = sub_100568508;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10054970C;
  aBlock[3] = &unk_10076AD48;
  v17 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v18 = [v14 performTransaction:v17 error:aBlock];
  _Block_release(v17);
  v19 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (!v18)
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_6;
  }

  sub_100005934(v11, v9, &qword_1007875D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    aBlock[0] = *v9;
    sub_1001F0C48(&unk_10077F940);
    swift_willThrowTypedImpl();
LABEL_6:
    sub_1000032A8(v11, &qword_1007875D8);
  }

  sub_10020A668(v9, v23, &qword_1007875E0);
  sub_1000032A8(v11, &qword_1007875D8);
}

uint64_t sub_100545E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v6 = sub_1001F0C48(&qword_100787648);
  v7 = __chkstk_darwin(v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = (&v22 - v10);
  sub_100513858();
  v12 = swift_allocError();
  *v13 = 1;
  *(v13 + 40) = 3;
  *v11 = v12;
  swift_storeEnumTagMultiPayload();
  v14 = *(v3 + 24);
  v15 = swift_allocObject();
  v15[2] = v11;
  v15[3] = a1;
  v15[4] = a2;
  v16 = swift_allocObject();
  v16[2] = sub_100567370;
  v16[3] = v15;
  aBlock[4] = sub_100568508;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10054970C;
  aBlock[3] = &unk_10076ADC0;
  v17 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v18 = [v14 performTransaction:v17 error:aBlock];
  _Block_release(v17);
  v19 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (!v18)
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_6;
  }

  sub_100005934(v11, v9, &qword_100787648);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    aBlock[0] = *v9;
    sub_1001F0C48(&unk_10077F940);
    swift_willThrowTypedImpl();
LABEL_6:
    sub_1000032A8(v11, &qword_100787648);
  }

  sub_10020A668(v9, v23, &qword_100787650);
  sub_1000032A8(v11, &qword_100787648);
}

uint64_t sub_1005461B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v6 = sub_1001F0C48(&qword_100787540);
  v7 = __chkstk_darwin(v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = (&v22 - v10);
  sub_100513858();
  v12 = swift_allocError();
  *v13 = 1;
  *(v13 + 40) = 3;
  *v11 = v12;
  swift_storeEnumTagMultiPayload();
  v14 = *(v3 + 24);
  v15 = swift_allocObject();
  v15[2] = v11;
  v15[3] = a1;
  v15[4] = a2;
  v16 = swift_allocObject();
  v16[2] = sub_100566C24;
  v16[3] = v15;
  aBlock[4] = sub_100568508;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10054970C;
  aBlock[3] = &unk_10076A618;
  v17 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v18 = [v14 performTransaction:v17 error:aBlock];
  _Block_release(v17);
  v19 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (!v18)
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_6;
  }

  sub_100005934(v11, v9, &qword_100787540);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    aBlock[0] = *v9;
    sub_1001F0C48(&unk_10077F940);
    swift_willThrowTypedImpl();
LABEL_6:
    sub_1000032A8(v11, &qword_100787540);
  }

  sub_10020A668(v9, v23, &qword_1007843B0);
  sub_1000032A8(v11, &qword_100787540);
}

void *sub_100546504(uint64_t a1, uint64_t a2)
{
  sub_100513858();
  v5 = swift_allocError();
  *v6 = 1;
  *(v6 + 40) = 3;
  v16 = v5;
  v17 = 1;
  v7 = *(v2 + 24);
  v8 = swift_allocObject();
  v8[2] = &v16;
  v8[3] = a1;
  v8[4] = a2;
  v9 = swift_allocObject();
  v9[2] = sub_1005683C4;
  v9[3] = v8;
  aBlock[4] = sub_100568508;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10054970C;
  aBlock[3] = &unk_10076AFF0;
  v10 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v11 = [v7 performTransaction:v10 error:aBlock];
  _Block_release(v10);
  v12 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v11)
  {
    v9 = v16;
    if ((v17 & 1) == 0)
    {

      return v9;
    }

    aBlock[0] = v16;
    swift_errorRetain();
    sub_1001F0C48(&unk_10077F940);
    swift_willThrowTypedImpl();
  }

  else
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_1005681F0(v16, v17, &_swift_bridgeObjectRelease);

  return v9;
}

void *sub_100546780(uint64_t a1, uint64_t a2)
{
  sub_100513858();
  v5 = swift_allocError();
  *v6 = 1;
  *(v6 + 40) = 3;
  v16 = v5;
  v17 = 1;
  v7 = *(v2 + 24);
  v8 = swift_allocObject();
  v8[2] = &v16;
  v8[3] = a1;
  v8[4] = a2;
  v9 = swift_allocObject();
  v9[2] = sub_1005683C4;
  v9[3] = v8;
  aBlock[4] = sub_100568508;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10054970C;
  aBlock[3] = &unk_10076B068;
  v10 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v11 = [v7 performTransaction:v10 error:aBlock];
  _Block_release(v10);
  v12 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v11)
  {
    v9 = v16;
    if ((v17 & 1) == 0)
    {

      return v9;
    }

    aBlock[0] = v16;
    swift_errorRetain();
    sub_1001F0C48(&unk_10077F940);
    swift_willThrowTypedImpl();
  }

  else
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_1005681F0(v16, v17, &_swift_bridgeObjectRelease);

  return v9;
}

void *sub_1005469FC(uint64_t a1, uint64_t a2)
{
  sub_100513858();
  v5 = swift_allocError();
  *v6 = 1;
  *(v6 + 40) = 3;
  v16 = v5;
  v17 = 1;
  v7 = *(v2 + 24);
  v8 = swift_allocObject();
  v8[2] = &v16;
  v8[3] = a1;
  v8[4] = a2;
  v9 = swift_allocObject();
  v9[2] = sub_1005673A4;
  v9[3] = v8;
  aBlock[4] = sub_100568508;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10054970C;
  aBlock[3] = &unk_10076AE38;
  v10 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v11 = [v7 performTransaction:v10 error:aBlock];
  _Block_release(v10);
  v12 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v11)
  {
    v9 = v16;
    if ((v17 & 1) == 0)
    {

      return v9;
    }

    aBlock[0] = v16;
    swift_errorRetain();
    sub_1001F0C48(&unk_10077F940);
    swift_willThrowTypedImpl();
  }

  else
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_1005681F0(v16, v17, &_swift_release);

  return v9;
}

void *sub_100546C78(uint64_t a1, uint64_t a2)
{
  sub_100513858();
  v5 = swift_allocError();
  *v6 = 1;
  *(v6 + 40) = 3;
  v16[0] = v5;
  v17 = 1;
  v7 = *(v2 + 24);
  v8 = swift_allocObject();
  v8[2] = v16;
  v8[3] = a1;
  v8[4] = a2;
  v9 = swift_allocObject();
  v9[2] = sub_1005673DC;
  v9[3] = v8;
  v15[4] = sub_100568508;
  v15[5] = v9;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_10054970C;
  v15[3] = &unk_10076AEB0;
  v10 = _Block_copy(v15);

  v15[0] = 0;
  v11 = [v7 performTransaction:v10 error:v15];
  _Block_release(v10);
  v12 = v15[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v11)
  {
    v9 = v16[0];
    if ((v17 & 1) == 0)
    {

      return v9;
    }

    v15[0] = v16[0];
    swift_errorRetain();
    sub_1001F0C48(&unk_10077F940);
    swift_willThrowTypedImpl();
  }

  else
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_100567414(v16[0], v16[1], v17);

  return v9;
}

uint64_t sub_100546EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100513858();
  v7 = swift_allocError();
  *v8 = 1;
  *(v8 + 40) = 3;
  v22[0] = v7;
  v23 = 1;
  v9 = *(v3 + 24);
  v10 = swift_allocObject();
  v10[2] = v22;
  v10[3] = a1;
  v10[4] = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1005680F8;
  *(v11 + 24) = v10;
  v20 = sub_100568508;
  v21 = v11;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v19 = sub_10054970C;
  *(&v19 + 1) = &unk_10076B270;
  v12 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v13 = [v9 performTransaction:v12 error:&aBlock];
  _Block_release(v12);
  v14 = aBlock;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v13)
  {
    sub_100005934(v22, &aBlock, &qword_100787688);
    if (v21)
    {
      sub_1001F0C48(&unk_10077F940);
      swift_willThrowTypedImpl();
    }

    else
    {
      v16 = v19;
      *a3 = aBlock;
      *(a3 + 16) = v16;
      *(a3 + 32) = v20;
    }
  }

  else
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_1000032A8(v22, &qword_100787688);
}

void *sub_100547178(uint64_t a1, uint64_t a2)
{
  sub_100513858();
  v5 = swift_allocError();
  *v6 = 1;
  *(v6 + 40) = 3;
  v16 = v5;
  v17 = 1;
  v7 = *(v2 + 24);
  v8 = swift_allocObject();
  v8[2] = &v16;
  v8[3] = a1;
  v8[4] = a2;
  v9 = swift_allocObject();
  v9[2] = sub_1005683C4;
  v9[3] = v8;
  aBlock[4] = sub_100568508;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10054970C;
  aBlock[3] = &unk_10076AB90;
  v10 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v11 = [v7 performTransaction:v10 error:aBlock];
  _Block_release(v10);
  v12 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v11)
  {
    v9 = v16;
    if ((v17 & 1) == 0)
    {

      return v9;
    }

    aBlock[0] = v16;
    swift_errorRetain();
    sub_1001F0C48(&unk_10077F940);
    swift_willThrowTypedImpl();
  }

  else
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_1005681F0(v16, v17, &_swift_bridgeObjectRelease);

  return v9;
}

void *sub_1005473F4(uint64_t a1, uint64_t a2)
{
  sub_100513858();
  v5 = swift_allocError();
  *v6 = 1;
  *(v6 + 40) = 3;
  v16 = v5;
  v17 = 1;
  v7 = *(v2 + 24);
  v8 = swift_allocObject();
  v8[2] = &v16;
  v8[3] = a1;
  v8[4] = a2;
  v9 = swift_allocObject();
  v9[2] = sub_1005681B8;
  v9[3] = v8;
  aBlock[4] = sub_100568508;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10054970C;
  aBlock[3] = &unk_10076B2E8;
  v10 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v11 = [v7 performTransaction:v10 error:aBlock];
  _Block_release(v10);
  v12 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v11)
  {
    v9 = v16;
    if ((v17 & 1) == 0)
    {

      return v9;
    }

    aBlock[0] = v16;
    swift_errorRetain();
    sub_1001F0C48(&unk_10077F940);
    swift_willThrowTypedImpl();
  }

  else
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_1005681F0(v16, v17, &_swift_bridgeObjectRelease);

  return v9;
}

void *sub_100547670(uint64_t a1, uint64_t a2)
{
  sub_100513858();
  v5 = swift_allocError();
  *v6 = 1;
  *(v6 + 40) = 3;
  v16 = v5;
  v17 = 1;
  v7 = *(v2 + 24);
  v8 = swift_allocObject();
  v8[2] = &v16;
  v8[3] = a1;
  v8[4] = a2;
  v9 = swift_allocObject();
  v9[2] = sub_10056679C;
  v9[3] = v8;
  aBlock[4] = sub_100568508;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10054970C;
  aBlock[3] = &unk_100769A38;
  v10 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v11 = [v7 performTransaction:v10 error:aBlock];
  _Block_release(v10);
  v12 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v11)
  {
    v9 = v16;
    if ((v17 & 1) == 0)
    {

      return v9;
    }

    aBlock[0] = v16;
    swift_errorRetain();
    sub_1001F0C48(&unk_10077F940);
    swift_willThrowTypedImpl();
  }

  else
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_1001DA3F8(v16, v17);

  return v9;
}

uint64_t sub_1005478D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v6 = sub_1001F0C48(&qword_100787658);
  v7 = __chkstk_darwin(v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = (&v22 - v10);
  sub_100513858();
  v12 = swift_allocError();
  *v13 = 1;
  *(v13 + 40) = 3;
  *v11 = v12;
  swift_storeEnumTagMultiPayload();
  v14 = *(v3 + 24);
  v15 = swift_allocObject();
  v15[2] = v11;
  v15[3] = a1;
  v15[4] = a2;
  v16 = swift_allocObject();
  v16[2] = sub_100567A0C;
  v16[3] = v15;
  aBlock[4] = sub_100568508;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10054970C;
  aBlock[3] = &unk_10076B108;
  v17 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v18 = [v14 performTransaction:v17 error:aBlock];
  _Block_release(v17);
  v19 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (!v18)
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_6;
  }

  sub_100005934(v11, v9, &qword_100787658);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    aBlock[0] = *v9;
    sub_1001F0C48(&unk_10077F940);
    swift_willThrowTypedImpl();
LABEL_6:
    sub_1000032A8(v11, &qword_100787658);
  }

  sub_10020A668(v9, v23, &qword_100787660);
  sub_1000032A8(v11, &qword_100787658);
}

uint64_t sub_100547C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100513858();
  v7 = swift_allocError();
  *v8 = 1;
  *(v8 + 40) = 3;
  v22[0] = v7;
  v23 = 1;
  v9 = *(v3 + 24);
  v10 = swift_allocObject();
  v10[2] = v22;
  v10[3] = a1;
  v10[4] = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100566858;
  *(v11 + 24) = v10;
  v20 = sub_100568508;
  v21 = v11;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v18 = sub_10054970C;
  v19 = &unk_100769AB0;
  v12 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v13 = [v9 performTransaction:v12 error:&aBlock];
  _Block_release(v12);
  v14 = aBlock;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v13)
  {
    sub_100005934(v22, &aBlock, &qword_1007873E8);
    if (v21)
    {
      sub_1001F0C48(&unk_10077F940);
      swift_willThrowTypedImpl();
    }

    else
    {
      sub_1001DFDBC(&aBlock, a3);
    }
  }

  else
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_1000032A8(v22, &qword_1007873E8);
}

uint64_t sub_100547EAC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t))
{
  v6 = type metadata accessor for Logger();
  __chkstk_darwin(v6);
  a3(&v10, a1);
  v7 = *a2;
  v8 = *(a2 + 8);
  *a2 = v10;
  *(a2 + 8) = 0;
  sub_1001DA3F8(v7, v8);
  return 1;
}

uint64_t sub_1005480C4(uint64_t a1, uint64_t a2, void (*a3)(__int128 *__return_ptr, uint64_t))
{
  v6 = type metadata accessor for Logger();
  __chkstk_darwin(v6);
  a3(&v11, a1);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  *a2 = v11;
  *(a2 + 16) = 0;
  sub_100566D1C(v7, v8, v9, sub_10020B0E0);
  return 1;
}

uint64_t sub_100548304(uint64_t a1, uint64_t *a2, void (*a3)(__int128 *__return_ptr, uint64_t), uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v9 = type metadata accessor for Logger();
  __chkstk_darwin(v9);
  a3(&v14, a1);
  v10 = *a2;
  v11 = a2[1];
  v12 = *(a2 + 16);
  *a2 = v14;
  *(a2 + 16) = 0;
  a5(v10, v11, v12);
  return 1;
}

uint64_t sub_100548528(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t *a5)
{
  v14 = type metadata accessor for Logger();
  __chkstk_darwin(v14);
  v9 = sub_1001F0C48(a5);
  __chkstk_darwin(v9);
  v11 = &v13 - v10;
  a3(a1);
  swift_storeEnumTagMultiPayload();
  sub_10020AD90(v11, a2, a5);
  return 1;
}

uint64_t sub_1005487B8(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v9 = type metadata accessor for Logger();
  __chkstk_darwin(v9);
  a3(&v15, a1);
  v10 = v16;
  v11 = *a2;
  v12 = *(a2 + 9);
  *a2 = v15;
  v13 = *(a2 + 8);
  *(a2 + 4) = v10;
  a5(v11, v13, v12);
  return 1;
}

uint64_t sub_1005489EC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t))
{
  v6 = type metadata accessor for Logger();
  __chkstk_darwin(v6);
  a3(&v10, a1);
  v7 = *a2;
  v8 = *(a2 + 8);
  *a2 = v10;
  *(a2 + 8) = 0;
  sub_1005681F0(v7, v8, &_swift_bridgeObjectRelease);
  return 1;
}

uint64_t sub_100548C2C(uint64_t a1, uint64_t a2, void (*a3)(__int128 *__return_ptr, uint64_t))
{
  v6 = type metadata accessor for Logger();
  __chkstk_darwin(v6);
  a3(&v11, a1);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  *a2 = v11;
  *(a2 + 16) = 0;
  sub_100566D1C(v7, v8, v9, sub_100007158);
  return 1;
}

uint64_t sub_100548E6C(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v9 = type metadata accessor for Logger();
  __chkstk_darwin(v9);
  a3(&v13, a1);
  v10 = *a2;
  v11 = *(a2 + 8);
  *a2 = v13;
  *(a2 + 8) = 0;
  a5(v10, v11);
  return 1;
}

uint64_t sub_100549090(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4, uint64_t (*a5)(void))
{
  v9 = type metadata accessor for Logger();
  __chkstk_darwin(v9);
  a3(&v13, a1);
  v10 = *a2;
  v11 = *(a2 + 8);
  *a2 = v13;
  *(a2 + 8) = 0;
  sub_1005681F0(v10, v11, a5);
  return 1;
}

uint64_t sub_1005492B4(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t))
{
  v6 = type metadata accessor for Logger();
  __chkstk_darwin(v6);
  a3(v8, a1);
  v9 = 0;
  sub_10020AD90(v8, a2, &qword_100787688);
  return 1;
}

uint64_t sub_1005494E0(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4, uint64_t *a5)
{
  v9 = type metadata accessor for Logger();
  __chkstk_darwin(v9);
  a3(v11, a1);
  v12 = 0;
  sub_10020AD90(v11, a2, a5);
  return 1;
}

uint64_t sub_10054970C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

uint64_t sub_100549750(void *a1, uint64_t a2)
{
  sub_10020A6D0(a1, v13);
  if (!swift_dynamicCast() || (result = v12, v12 == 8))
  {
    sub_100513858();
    swift_allocError();
    v6 = v5;
    v13[0] = a2;
    sub_1001F0C48(&qword_1007873E0);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    sub_100006D8C(a1, a1[3]);
    v13[0] = swift_getDynamicType();
    sub_1001F0C48(&qword_1007868B0);
    v10 = String.init<A>(describing:)();
    *v6 = v7;
    *(v6 + 8) = v9;
    *(v6 + 16) = v10;
    *(v6 + 24) = v11;
    *(v6 + 40) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100549878(void *a1, uint64_t a2)
{
  sub_10020A6D0(a1, v14);
  if (swift_dynamicCast() && v13 != 255)
  {
    return v12;
  }

  sub_100513858();
  swift_allocError();
  v6 = v5;
  v14[0] = a2;
  sub_1001F0C48(&qword_100787450);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  sub_100006D8C(a1, a1[3]);
  v14[0] = swift_getDynamicType();
  sub_1001F0C48(&qword_1007868B0);
  v10 = String.init<A>(describing:)();
  *v6 = v7;
  *(v6 + 8) = v9;
  *(v6 + 16) = v10;
  *(v6 + 24) = v11;
  *(v6 + 40) = 2;
  return swift_willThrow();
}

uint64_t sub_1005499AC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_10020A6D0(a1, v16);
  if (swift_dynamicCast())
  {
    v7 = *(&v15 + 1);
    result = v15;
    if (*(&v15 + 1) >> 60 != 15)
    {
      *a3 = v15;
      return result;
    }
  }

  else
  {
    result = 0;
    v7 = 0xF000000000000000;
  }

  sub_1001CEE68(result, v7);
  sub_100513858();
  swift_allocError();
  v9 = v8;
  v16[0] = a2;
  sub_1001F0C48(&qword_100787420);
  v10 = String.init<A>(describing:)();
  v12 = v11;
  sub_100006D8C(a1, a1[3]);
  v16[0] = swift_getDynamicType();
  sub_1001F0C48(&qword_1007868B0);
  v13 = String.init<A>(describing:)();
  *v9 = v10;
  *(v9 + 8) = v12;
  *(v9 + 16) = v13;
  *(v9 + 24) = v14;
  *(v9 + 40) = 2;
  return swift_willThrow();
}

uint64_t sub_100549AFC(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_10020A6D0(a1, v16);
  if (!swift_dynamicCast() || (result = v15, v15 == 5))
  {
    sub_100513858();
    swift_allocError();
    v9 = v8;
    v16[0] = a2;
    sub_1001F0C48(a4);
    v10 = String.init<A>(describing:)();
    v12 = v11;
    sub_100006D8C(a1, a1[3]);
    v16[0] = swift_getDynamicType();
    sub_1001F0C48(&qword_1007868B0);
    v13 = String.init<A>(describing:)();
    *v9 = v10;
    *(v9 + 8) = v12;
    *(v9 + 16) = v13;
    *(v9 + 24) = v14;
    *(v9 + 40) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100549C24(void *a1, uint64_t a2)
{
  sub_10020A6D0(a1, v14);
  if (swift_dynamicCast() && v13 != 2)
  {
    return v12;
  }

  sub_100513858();
  swift_allocError();
  v5 = v4;
  v14[0] = a2;
  sub_1001F0C48(&qword_100787478);
  v6 = String.init<A>(describing:)();
  v8 = v7;
  sub_100006D8C(a1, a1[3]);
  v14[0] = swift_getDynamicType();
  sub_1001F0C48(&qword_1007868B0);
  v9 = String.init<A>(describing:)();
  *v5 = v6;
  *(v5 + 8) = v8;
  *(v5 + 16) = v9;
  *(v5 + 24) = v10;
  *(v5 + 40) = 2;
  return swift_willThrow();
}

uint64_t sub_100549D54(void *a1, uint64_t a2)
{
  sub_10020A6D0(a1, v13);
  if (swift_dynamicCast() && v12 != 2)
  {
    return v12 & 0x1010101;
  }

  sub_100513858();
  swift_allocError();
  v5 = v4;
  v13[0] = a2;
  sub_1001F0C48(&qword_1007875F8);
  v6 = String.init<A>(describing:)();
  v8 = v7;
  sub_100006D8C(a1, a1[3]);
  v13[0] = swift_getDynamicType();
  sub_1001F0C48(&qword_1007868B0);
  v9 = String.init<A>(describing:)();
  *v5 = v6;
  *(v5 + 8) = v8;
  *(v5 + 16) = v9;
  *(v5 + 24) = v10;
  *(v5 + 40) = 2;
  return swift_willThrow();
}

uint64_t sub_100549E88(void *a1, uint64_t a2)
{
  sub_10020A6D0(a1, v13);
  if (!swift_dynamicCast() || (result = v12) == 0)
  {
    sub_100513858();
    swift_allocError();
    v6 = v5;
    v13[0] = a2;
    sub_1001F0C48(&qword_1007873D8);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    sub_100006D8C(a1, a1[3]);
    v13[0] = swift_getDynamicType();
    sub_1001F0C48(&qword_1007868B0);
    v10 = String.init<A>(describing:)();
    *v6 = v7;
    *(v6 + 8) = v9;
    *(v6 + 16) = v10;
    *(v6 + 24) = v11;
    *(v6 + 40) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100549FA8(void *a1, uint64_t a2)
{
  sub_10020A6D0(a1, v14);
  if (!swift_dynamicCast() || (v4 = v13, v13 == 2))
  {
    sub_100513858();
    swift_allocError();
    v6 = v5;
    v14[0] = a2;
    sub_1001F0C48(&qword_1007874B0);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    sub_100006D8C(a1, a1[3]);
    v14[0] = swift_getDynamicType();
    sub_1001F0C48(&qword_1007868B0);
    v10 = String.init<A>(describing:)();
    *v6 = v7;
    *(v6 + 8) = v9;
    *(v6 + 16) = v10;
    *(v6 + 24) = v11;
    *(v6 + 40) = 2;
    swift_willThrow();
  }

  return v4 & 1;
}

uint64_t sub_10054A0D4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_10020A6D0(a1, v16);
  if (swift_dynamicCast() && v15 != 2)
  {
    return v15 & 1;
  }

  sub_100513858();
  swift_allocError();
  v8 = v7;
  v16[0] = a2;
  sub_1001F0C48(a4);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  sub_100006D8C(a1, a1[3]);
  v16[0] = swift_getDynamicType();
  sub_1001F0C48(&qword_1007868B0);
  v12 = String.init<A>(describing:)();
  *v8 = v9;
  *(v8 + 8) = v11;
  *(v8 + 16) = v12;
  *(v8 + 24) = v13;
  *(v8 + 40) = 2;
  swift_willThrow();
  return 0;
}

uint64_t sub_10054A208(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_10020A6D0(a1, v16);
  if (!swift_dynamicCast() || (result = v15) == 0)
  {
    sub_100513858();
    swift_allocError();
    v9 = v8;
    v16[0] = a2;
    sub_1001F0C48(a4);
    v10 = String.init<A>(describing:)();
    v12 = v11;
    sub_100006D8C(a1, a1[3]);
    v16[0] = swift_getDynamicType();
    sub_1001F0C48(&qword_1007868B0);
    v13 = String.init<A>(describing:)();
    *v9 = v10;
    *(v9 + 8) = v12;
    *(v9 + 16) = v13;
    *(v9 + 24) = v14;
    *(v9 + 40) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10054A32C(void *a1, uint64_t a2)
{
  sub_10020A6D0(a1, v14);
  if (swift_dynamicCast() && v13)
  {
    return v12;
  }

  sub_100513858();
  swift_allocError();
  v6 = v5;
  v14[0] = a2;
  sub_1001F0C48(&qword_1007868A8);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  sub_100006D8C(a1, a1[3]);
  v14[0] = swift_getDynamicType();
  sub_1001F0C48(&qword_1007868B0);
  v10 = String.init<A>(describing:)();
  *v6 = v7;
  *(v6 + 8) = v9;
  *(v6 + 16) = v10;
  *(v6 + 24) = v11;
  *(v6 + 40) = 2;
  return swift_willThrow();
}

uint64_t sub_10054A458(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_10020A6D0(a1, v16);
  if (swift_dynamicCast())
  {
    return v15;
  }

  sub_100513858();
  swift_allocError();
  v9 = v8;
  v16[0] = a2;
  sub_1001F0C48(a4);
  v10 = String.init<A>(describing:)();
  v12 = v11;
  sub_100006D8C(a1, a1[3]);
  v16[0] = swift_getDynamicType();
  sub_1001F0C48(&qword_1007868B0);
  v13 = String.init<A>(describing:)();
  *v9 = v10;
  *(v9 + 8) = v12;
  *(v9 + 16) = v13;
  *(v9 + 24) = v14;
  *(v9 + 40) = 2;
  return swift_willThrow();
}

uint64_t sub_10054A57C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10020A6D0(a1, v18);
  result = swift_dynamicCast();
  if (result && v14 != 1)
  {
    *a2 = v12;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14;
    *(a2 + 24) = v15;
    *(a2 + 32) = v16 & 1;
    *(a2 + 40) = v17;
  }

  else
  {
    sub_100513858();
    swift_allocError();
    v6 = v5;
    sub_1001F0C48(&qword_100787640);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    sub_100006D8C(a1, a1[3]);
    swift_getDynamicType();
    sub_1001F0C48(&qword_1007868B0);
    v10 = String.init<A>(describing:)();
    *v6 = v7;
    *(v6 + 8) = v9;
    *(v6 + 16) = v10;
    *(v6 + 24) = v11;
    *(v6 + 40) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10054A6D4(void *a1, uint64_t a2)
{
  sub_10020A6D0(a1, v12);
  result = swift_dynamicCast();
  if (!result)
  {
    sub_100513858();
    swift_allocError();
    v6 = v5;
    v12[0] = a2;
    sub_1001F0C48(&qword_1007874E8);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    sub_100006D8C(a1, a1[3]);
    v12[0] = swift_getDynamicType();
    sub_1001F0C48(&qword_1007868B0);
    v10 = String.init<A>(describing:)();
    *v6 = v7;
    *(v6 + 8) = v9;
    *(v6 + 16) = v10;
    *(v6 + 24) = v11;
    *(v6 + 40) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10054A7F0(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_10020A6D0(a1, v16);
  if (!swift_dynamicCast() || (result = v15, v15 == 3))
  {
    sub_100513858();
    swift_allocError();
    v9 = v8;
    v16[0] = a2;
    sub_1001F0C48(a4);
    v10 = String.init<A>(describing:)();
    v12 = v11;
    sub_100006D8C(a1, a1[3]);
    v16[0] = swift_getDynamicType();
    sub_1001F0C48(&qword_1007868B0);
    v13 = String.init<A>(describing:)();
    *v9 = v10;
    *(v9 + 8) = v12;
    *(v9 + 16) = v13;
    *(v9 + 24) = v14;
    *(v9 + 40) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10054A918(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  sub_10020A6D0(a1, v17);
  sub_1001F0C48(a3);
  if (!swift_dynamicCast() || (result = v18) == 0)
  {
    sub_100513858();
    swift_allocError();
    v11 = v10;
    v17[0] = a2;
    sub_1001F0C48(a5);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    sub_100006D8C(a1, a1[3]);
    v17[0] = swift_getDynamicType();
    sub_1001F0C48(&qword_1007868B0);
    v15 = String.init<A>(describing:)();
    *v11 = v12;
    *(v11 + 8) = v14;
    *(v11 + 16) = v15;
    *(v11 + 24) = v16;
    *(v11 + 40) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10054AA54@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10020A6D0(a1, &DynamicType);
  result = swift_dynamicCast();
  if (result)
  {
    *a2 = v12;
  }

  else
  {
    sub_1001CEE68(0, 0xF000000000000000);
    sub_100513858();
    swift_allocError();
    v6 = v5;
    DynamicType = &type metadata for Data;
    sub_1001F0C48(&qword_100787420);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    sub_100006D8C(a1, a1[3]);
    DynamicType = swift_getDynamicType();
    sub_1001F0C48(&qword_1007868B0);
    v10 = String.init<A>(describing:)();
    *v6 = v7;
    *(v6 + 8) = v9;
    *(v6 + 16) = v10;
    *(v6 + 24) = v11;
    *(v6 + 40) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10054AB98(void *a1)
{
  v2 = sub_1003F9BE0();
  sub_10020A6D0(a1, v12);
  if (swift_dynamicCast())
  {
    return v11;
  }

  sub_100513858();
  swift_allocError();
  v5 = v4;
  v12[0] = v2;
  sub_1001F0C48(&qword_1007868C8);
  v6 = String.init<A>(describing:)();
  v8 = v7;
  sub_100006D8C(a1, a1[3]);
  v12[0] = swift_getDynamicType();
  sub_1001F0C48(&qword_1007868B0);
  v9 = String.init<A>(describing:)();
  *v5 = v6;
  *(v5 + 8) = v8;
  *(v5 + 16) = v9;
  *(v5 + 24) = v10;
  *(v5 + 40) = 2;
  return swift_willThrow();
}

uint64_t sub_10054ACC4(void *a1, uint64_t a2)
{
  sub_10020A6D0(a1, v13);
  sub_1001F0C48(&qword_100787690);
  if (swift_dynamicCast())
  {
    return v12;
  }

  sub_100513858();
  swift_allocError();
  v6 = v5;
  v13[0] = a2;
  sub_1001F0C48(&qword_1007876A8);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  sub_100006D8C(a1, a1[3]);
  v13[0] = swift_getDynamicType();
  sub_1001F0C48(&qword_1007868B0);
  v10 = String.init<A>(describing:)();
  *v6 = v7;
  *(v6 + 8) = v9;
  *(v6 + 16) = v10;
  *(v6 + 24) = v11;
  *(v6 + 40) = 2;
  return swift_willThrow();
}

uint64_t sub_10054ADF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 96) = a6;
  *(v8 + 104) = v7;
  *(v8 + 336) = a7;
  *(v8 + 80) = a2;
  *(v8 + 88) = a3;
  *(v8 + 72) = a1;
  sub_1001F0C48(&unk_100780A00);
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  *(v8 + 128) = v9;
  *(v8 + 136) = *(v9 - 8);
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  v10 = sub_1001F0C48(&qword_1007874C0);
  *(v8 + 176) = v10;
  *(v8 + 184) = *(v10 - 8);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  sub_1001F0C48(&qword_1007874C8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = sub_1001F0C48(&qword_100787128);
  *(v8 + 224) = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  *(v8 + 232) = v11;
  *(v8 + 240) = *(v11 - 8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();

  return _swift_task_switch(sub_10054B0EC, v7, 0);
}

uint64_t sub_10054B0EC()
{
  v82 = v0;
  v1 = v0[30];
  v72 = v0[22];
  v2 = v0[13];
  v3 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_reservations;
  v0[38] = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_reservations;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v5 = -1;
  v6 = -1 << *(v4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v4 + 64);
  v8 = (63 - v6) >> 6;
  v71 = v1;
  v74 = (v1 + 16);
  swift_bridgeObjectRetain_n();
  v9 = 0;
  v80 = v0;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v12 = v0[24];
      v11 = v0[25];
      v75 = v0[10];
      v77 = v0[11];
      v13 = __clz(__rbit64(v7)) | (v10 << 6);
      (*(v71 + 16))(v11, *(v4 + 48) + *(v71 + 72) * v13, v0[29]);
      v14 = (*(v4 + 56) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = (v11 + *(v72 + 48));
      *v17 = v15;
      v17[1] = v16;
      sub_10020A668(v11, v12, &qword_1007874C0);
      v18 = (v12 + *(v72 + 48));
      v0 = v80;
      v19 = *v18 == v75 && v18[1] == v77;
      if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v20 = v80[24];

      sub_1000032A8(v20, &qword_1007874C0);
      v9 = v10;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    v24 = v80[26];
    v25 = v80[23];
    v26 = v80[24];
    v27 = v80[22];

    sub_10020A668(v26, v24, &qword_1007874C0);
    (*(v25 + 56))(v24, 0, 1, v27);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
      }

      if (v10 >= v8)
      {
        break;
      }

      v7 = *(v4 + 64 + 8 * v10);
      ++v9;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    v21 = v0[26];
    v23 = v0[22];
    v22 = v0[23];

    (*(v22 + 56))(v21, 1, 1, v23);
  }

  v28 = v0[26];
  v30 = v0[22];
  v29 = v0[23];

  if ((*(v29 + 48))(v28, 1, v30) == 1)
  {
    v31 = v0[13];
    v33 = v0[10];
    v32 = v0[11];
    sub_1000032A8(v0[26], &qword_1007874C8);
    v34 = *(v31 + 112);
    v35 = swift_task_alloc();
    v0[39] = v35;
    *(v35 + 16) = v33;
    *(v35 + 24) = v32;
    v36 = swift_task_alloc();
    v0[40] = v36;
    *v36 = v0;
    v36[1] = sub_10054B930;

    return sub_1003AFB64(sub_1005669E8, v35, v34);
  }

  else
  {
    v38 = v0[37];
    v39 = v0[29];
    v40 = v0[28];
    v78 = v0[36];
    v41 = (v0[26] + *(v72 + 48));
    v43 = *v41;
    v42 = v41[1];
    v44 = (v40 + *(v0[27] + 48));
    v45 = *(v0[30] + 32);
    v45(v40);
    *v44 = v43;
    v44[1] = v42;
    v46 = v80;

    (v45)(v38, v40, v39);
    static Logger.install.getter();
    v47 = *v74;
    (*v74)(v78, v38, v39);

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    v50 = os_log_type_enabled(v48, v49);
    v51 = v80[36];
    v52 = v80[29];
    v53 = v80[30];
    v54 = v80[21];
    v56 = v80[16];
    v55 = v80[17];
    if (v50)
    {
      v76 = v80[16];
      v57 = v80[11];
      v73 = v80[21];
      v58 = v80[10];
      v79 = v47;
      v59 = swift_slowAlloc();
      v81[0] = swift_slowAlloc();
      *v59 = 136446466;
      *(v59 + 4) = sub_1002346CC(v58, v57, v81);
      *(v59 + 12) = 2082;
      sub_100562D1C(&qword_100789F60, &type metadata accessor for UUID);
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      v63 = *(v53 + 8);
      v63(v51, v52);
      v64 = v63;
      v65 = sub_1002346CC(v60, v62, v81);
      v46 = v80;

      *(v59 + 14) = v65;
      _os_log_impl(&_mh_execute_header, v48, v49, "Found existing requested installation for %{public}s: %{public}s", v59, 0x16u);
      swift_arrayDestroy();

      v47 = v79;

      (*(v55 + 8))(v73, v76);
    }

    else
    {

      v66 = *(v53 + 8);
      v66(v51, v52);
      v64 = v66;
      (*(v55 + 8))(v54, v56);
    }

    v67 = v46[37];
    v68 = v46[29];
    type metadata accessor for InternalError();
    sub_100562D1C(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    v47(v69, v67, v68);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v64(v67, v68);

    v70 = v80[1];

    return v70();
  }
}

uint64_t sub_10054B930(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 328) = a1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 104);

    return _swift_task_switch(sub_10054BBC8, v7, 0);
  }
}

uint64_t sub_10054BBC8()
{
  v105 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = *(v0 + 120);
  if (!v1)
  {
    (*(v3 + 56))(*(v0 + 120), 1, 1, *(v0 + 232));
    goto LABEL_6;
  }

  sub_1005E8ECC(14, v1, v4);

  v5 = *(v3 + 48);
  if (v5(v4, 1, v2) == 1)
  {
LABEL_6:
    sub_1000032A8(*(v0 + 120), &unk_100780A00);
    goto LABEL_7;
  }

  v6 = *(*(v0 + 240) + 32);
  v6(*(v0 + 280), *(v0 + 120), *(v0 + 232));

  v7 = sub_1005E9074(27, v1);

  v8 = *(v0 + 280);
  if (v7 == 8)
  {
    (*(*(v0 + 240) + 8))(*(v0 + 280), *(v0 + 232));
LABEL_7:
    v10 = *(v0 + 240);
    v9 = *(v0 + 248);
    v11 = *(v0 + 232);
    v12 = *(v0 + 96);
    static Logger.install.getter();
    v102 = *(v10 + 16);
    v102(v9, v12, v11);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 240);
    v16 = *(v0 + 248);
    v18 = *(v0 + 232);
    v20 = *(v0 + 136);
    v19 = *(v0 + 144);
    v21 = *(v0 + 128);
    if (v15)
    {
      v100 = *(v0 + 144);
      v22 = *(v0 + 80);
      v23 = *(v0 + 88);
      v97 = *(v0 + 128);
      v24 = swift_slowAlloc();
      v104[0] = swift_slowAlloc();
      *v24 = 136315394;
      *(v24 + 4) = sub_1002346CC(v22, v23, v104);
      *(v24 + 12) = 2082;
      sub_100562D1C(&qword_100789F60, &type metadata accessor for UUID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v17 + 8))(v16, v18);
      v28 = sub_1002346CC(v25, v27, v104);

      *(v24 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v13, v14, "Reserved slot for %s: %{public}s", v24, 0x16u);
      swift_arrayDestroy();

      (*(v20 + 8))(v100, v97);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      (*(v20 + 8))(v19, v21);
    }

    v29 = *(v0 + 304);
    v30 = *(v0 + 232);
    v32 = *(v0 + 96);
    v31 = *(v0 + 104);
    v34 = *(v0 + 80);
    v33 = *(v0 + 88);
    v35 = *(v0 + 72);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v104[0] = *(v31 + v29);
    *(v31 + v29) = 0x8000000000000000;
    sub_1005C24D8(v34, v33, v32, isUniquelyReferenced_nonNull_native);
    *(v31 + v29) = v104[0];
    swift_endAccess();

    v102(v35, v32, v30);

    v37 = *(v0 + 8);
    goto LABEL_11;
  }

  v95 = v7;
  v93 = v5;
  v91 = v6;
  v39 = *(v0 + 272);
  v41 = *(v0 + 232);
  v40 = *(v0 + 240);
  static Logger.install.getter();
  v103 = *(v40 + 16);
  v103(v39, v8, v41);

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();

  v44 = os_log_type_enabled(v42, v43);
  v45 = *(v0 + 272);
  v47 = *(v0 + 232);
  v46 = *(v0 + 240);
  v101 = *(v0 + 160);
  v48 = *(v0 + 136);
  v98 = *(v0 + 128);
  if (v44)
  {
    v88 = v43;
    log = v42;
    v49 = *(v0 + 80);
    v50 = *(v0 + 88);
    v90 = *(v0 + 136);
    v51 = swift_slowAlloc();
    v104[0] = swift_slowAlloc();
    *v51 = 136446466;
    *(v51 + 4) = sub_1002346CC(v49, v50, v104);
    *(v51 + 12) = 2082;
    sub_100562D1C(&qword_100789F60, &type metadata accessor for UUID);
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v53;
    v55 = *(v46 + 8);
    v55(v45, v47);
    v56 = sub_1002346CC(v52, v54, v104);

    *(v51 + 14) = v56;
    _os_log_impl(&_mh_execute_header, log, v88, "Found existing enqueued installation for %{public}s: %{public}s", v51, 0x16u);
    swift_arrayDestroy();

    v57 = *(v90 + 8);
    v57(v101, v98);
  }

  else
  {

    v55 = *(v46 + 8);
    v55(v45, v47);
    v57 = *(v48 + 8);
    v57(v101, v98);
  }

  if (*(v0 + 336) == 1)
  {
    if (v95 <= 3u || v95 > 5u || v95 == 4)
    {
      v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v58 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
    }

    v59 = *(v0 + 232);
    v60 = *(v0 + 112);

    sub_1005E8ECC(9, v1, v60);

    if (v93(v60, 1, v59) == 1)
    {
      sub_1000032A8(*(v0 + 112), &unk_100780A00);
    }

    else
    {
      v61 = *(v0 + 280);
      v62 = *(v0 + 256);
      v63 = *(v0 + 232);
      v91(*(v0 + 264), *(v0 + 112), v63);
      static Logger.install.getter();
      v103(v62, v61, v63);

      v64 = Logger.logObject.getter();
      LOBYTE(v61) = static os_log_type_t.default.getter();

      v96 = v61;
      v65 = os_log_type_enabled(v64, v61);
      v66 = *(v0 + 256);
      v67 = *(v0 + 232);
      v68 = *(v0 + 152);
      v69 = *(v0 + 128);
      if (v65)
      {
        v92 = *(v0 + 128);
        v94 = *(v0 + 152);
        v71 = *(v0 + 80);
        v70 = *(v0 + 88);
        v99 = v55;
        v72 = swift_slowAlloc();
        v104[0] = swift_slowAlloc();
        *v72 = 136446466;
        *(v72 + 4) = sub_1002346CC(v71, v70, v104);
        *(v72 + 12) = 2082;
        sub_100562D1C(&qword_100789F60, &type metadata accessor for UUID);
        v73 = dispatch thunk of CustomStringConvertible.description.getter();
        v75 = v74;
        v99(v66, v67);
        v76 = sub_1002346CC(v73, v75, v104);

        *(v72 + 14) = v76;
        _os_log_impl(&_mh_execute_header, v64, v96, "Resuming paused duplicate installation for %{public}s: %{public}s", v72, 0x16u);
        swift_arrayDestroy();

        v55 = v99;

        v78 = v92;
        v77 = v94;
      }

      else
      {

        v55(v66, v67);
        v77 = v68;
        v78 = v69;
      }

      v57(v77, v78);
      v79 = sub_1005F8634(*(v0 + 264));
      if (v79)
      {
        *(v0 + 64) = 0;
        v80 = v79;
        v81 = [v79 resumeWithError:v0 + 64];

        v82 = *(v0 + 64);
        if (v81)
        {
          v83 = v82;
        }

        else
        {
          v84 = v82;
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }
      }

      v55(*(v0 + 264), *(v0 + 232));
    }
  }

LABEL_34:
  v85 = *(v0 + 280);
  v86 = *(v0 + 232);
  type metadata accessor for InternalError();
  sub_100562D1C(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  v103(v87, v85, v86);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v55(v85, v86);

  v37 = *(v0 + 8);
LABEL_11:

  return v37();
}

uint64_t sub_10054C8D0(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v35 - v7;
  v9 = type metadata accessor for Logger();
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v35 - v13;
  swift_beginAccess();
  v15 = sub_100532A18(a1);
  v17 = v16;
  swift_endAccess();
  if (v17)
  {
    static Logger.install.getter();
    (*(v3 + 16))(v8, a1, v2);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v38[0] = v35;
      *v20 = 136315394;
      v21 = sub_1002346CC(v15, v17, v38);

      *(v20 + 4) = v21;
      *(v20 + 12) = 2082;
      sub_100562D1C(&qword_100789F60, &type metadata accessor for UUID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v3 + 8))(v8, v2);
      v25 = sub_1002346CC(v22, v24, v38);

      *(v20 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "Unreserved slot for %s: %{public}s", v20, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v3 + 8))(v8, v2);
    }

    return (*(v36 + 8))(v14, v37);
  }

  else
  {
    static Logger.install.getter();
    (*(v3 + 16))(v6, a1, v2);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v38[0] = v29;
      *v28 = 136446210;
      sub_100562D1C(&qword_100789F60, &type metadata accessor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      (*(v3 + 8))(v6, v2);
      v33 = sub_1002346CC(v30, v32, v38);

      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "Reservation for identifier %{public}s was not found", v28, 0xCu);
      sub_10000710C(v29);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    return (*(v36 + 8))(v12, v37);
  }
}

uint64_t sub_10054CDE0(uint64_t a1, uint64_t a2)
{
  v3[39] = a2;
  v3[40] = v2;
  v3[38] = a1;
  v4 = type metadata accessor for Logger();
  v3[41] = v4;
  v3[42] = *(v4 - 8);
  v3[43] = swift_task_alloc();
  sub_1001F0C48(&unk_100780380);
  v3[44] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[45] = v5;
  v3[46] = *(v5 - 8);
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();

  return _swift_task_switch(sub_10054CF44, v2, 0);
}

uint64_t sub_10054CF44()
{
  v41 = v0;
  v1 = v0[48];
  v2 = v0[45];
  v3 = v0[46];
  v4 = v0[38];
  v5 = type metadata accessor for AppInstall();
  v6 = *(v3 + 16);
  v6(v1, v4 + *(v5 + 76), v2);
  swift_beginAccess();
  sub_100532A18(v1);
  v8 = v7;
  swift_endAccess();
  if (v8)
  {

    v9 = swift_task_alloc();
    v0[49] = v9;
    *v9 = v0;
    v9[1] = sub_10054D348;

    return sub_100324F98((v0 + 14));
  }

  else
  {
    v11 = v0[47];
    v12 = v0[48];
    v13 = v0[45];
    static Logger.install.getter();
    v6(v11, v12, v13);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    v16 = os_log_type_enabled(v14, v15);
    v18 = v0[46];
    v17 = v0[47];
    v19 = v0[45];
    v21 = v0[42];
    v20 = v0[43];
    v22 = v0[41];
    if (v16)
    {
      v39 = v0[41];
      v23 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v40 = v38;
      *v23 = 136446210;
      sub_100562D1C(&qword_100789F60, &type metadata accessor for UUID);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v20;
      v26 = v25;
      v27 = v19;
      v28 = *(v18 + 8);
      v28(v17, v27);
      v29 = sub_1002346CC(v24, v26, &v40);

      *(v23 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v14, v15, "Reservation for identifier  %{public}s was not found", v23, 0xCu);
      sub_10000710C(v38);

      (*(v21 + 8))(v37, v39);
    }

    else
    {

      v30 = v19;
      v28 = *(v18 + 8);
      v28(v17, v30);
      (*(v21 + 8))(v20, v22);
    }

    v31 = v0[48];
    v32 = v0[45];
    type metadata accessor for InternalError();
    sub_100562D1C(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    v34 = v33;
    *v33 = UUID.uuidString.getter();
    v34[1] = v35;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v28(v31, v32);

    v36 = v0[1];

    return v36();
  }
}

uint64_t sub_10054D348()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 320);
  if (v0)
  {
    v4 = sub_10054D8D4;
  }

  else
  {
    v4 = sub_10054D474;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10054D474()
{
  v1 = *(v0 + 320);
  v2 = *(v1 + 112);
  v3 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_dependencies;
  v7 = *(v0 + 304);
  swift_beginAccess();
  sub_100005934(v1 + v3, v0 + 16, &qword_100784E10);
  v4 = swift_task_alloc();
  *(v0 + 408) = v4;
  *(v4 + 16) = v7;
  *(v4 + 32) = v0 + 16;
  *(v4 + 40) = v0 + 112;
  v5 = swift_task_alloc();
  *(v0 + 416) = v5;
  *v5 = v0;
  v5[1] = sub_10054D5B4;

  return sub_10052BF94(v0 + 152, sub_100562D64, v4, v2);
}

uint64_t sub_10054D5B4()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = *(v2 + 320);

    v4 = sub_10054D974;
  }

  else
  {
    v3 = *(v2 + 320);

    sub_1000032A8(v2 + 16, &qword_100784E10);
    v4 = sub_10054D6F8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10054D6F8()
{
  v1 = v0[48];
  v2 = v0[45];
  v3 = v0[46];
  v4 = v0[44];
  v5 = *(*(*sub_100006D8C(v0 + 19, v0[22]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_engine) + 112);
  sub_10020A980((v0 + 19), (v0 + 24));
  swift_beginAccess();
  sub_1005B7C44((v0 + 24), v5);
  swift_endAccess();
  v6 = *sub_100006D8C(v0 + 19, v0[22]);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;

  sub_1004A673C(0, 0, v4, &unk_1006B2600, v8);

  (*(v3 + 8))(v1, v2);
  sub_10000710C((v0 + 19));
  sub_10000710C((v0 + 14));

  v9 = v0[1];

  return v9();
}

uint64_t sub_10054D8D4()
{
  (*(v0[46] + 8))(v0[48], v0[45]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10054D974()
{
  (*(v0[46] + 8))(v0[48], v0[45]);
  sub_1000032A8((v0 + 2), &qword_100784E10);
  sub_10000710C((v0 + 14));

  v1 = v0[1];

  return v1();
}

uint64_t sub_10054DA34(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  v5 = (v2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_dependencies);
  *v5 = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  v5[4] = 0u;
  v5[5] = 0u;
  v6 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_installers;
  *(v2 + v6) = sub_10052AA94(_swiftEmptyArrayStorage);
  v7 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_parkingLot;
  *(v2 + v7) = sub_10052ABB4(_swiftEmptyArrayStorage);
  v8 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_coordinatorMap;
  *(v2 + v8) = sub_10052AD8C(_swiftEmptyArrayStorage);
  v9 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_reservations;
  *(v2 + v9) = sub_10052AF74(_swiftEmptyArrayStorage);
  *(v2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_activeDownloadLimit) = 4;
  *(v2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_activeDownloadRequests) = &_swiftEmptySetSingleton;
  *(v2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_downloadRequests) = _swiftEmptyArrayStorage;
  v10 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_downloadCommandStream;
  v11 = sub_1001F0C48(&qword_100787218);
  (*(*(v11 - 8) + 56))(v2 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_downloadCommandContinuation;
  v13 = sub_1001F0C48(&unk_100787228);
  (*(*(v13 - 8) + 56))(v2 + v12, 1, 1, v13);
  *(v2 + 112) = a1;
  v14 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_bagService;
  v15 = type metadata accessor for BagService();
  (*(*(v15 - 8) + 32))(v2 + v14, a2, v15);
  return v2;
}

uint64_t sub_10054DC08()
{
  v0 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v0 - 8);
  v32 = &v28 - v1;
  v2 = sub_1001F0C48(&qword_1007873C0);
  __chkstk_darwin(v2 - 8);
  v30 = &v28 - v3;
  v4 = sub_1001F0C48(&qword_1007874D0);
  __chkstk_darwin(v4 - 8);
  v29 = &v28 - v5;
  v6 = sub_1001F0C48(&qword_100787668);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - v8;
  v10 = sub_1001F0C48(&unk_100787228);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - v12;
  v14 = sub_1001F0C48(&qword_100787218);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v28 - v16;
  type metadata accessor for AppInstallScheduler.DownloadCommand(0);
  (*(v7 + 104))(v9, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v6);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v7 + 8))(v9, v6);
  v18 = v29;
  (*(v15 + 32))(v29, v17, v14);
  (*(v15 + 56))(v18, 0, 1, v14);
  v19 = v30;
  (*(v11 + 32))(v30, v13, v10);
  (*(v11 + 56))(v19, 0, 1, v10);
  v20 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_downloadCommandStream;
  v21 = v31;
  swift_beginAccess();
  sub_10020AD90(v18, v21 + v20, &qword_1007874D0);
  swift_endAccess();
  v22 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_downloadCommandContinuation;
  swift_beginAccess();
  sub_10020AD90(v19, v21 + v22, &qword_1007873C0);
  swift_endAccess();
  v23 = type metadata accessor for TaskPriority();
  v24 = v32;
  (*(*(v23 - 8) + 56))(v32, 1, 1, v23);
  v25 = sub_100562D1C(&qword_100784E18, type metadata accessor for AppInstallScheduler);
  v26 = swift_allocObject();
  v26[2] = v21;
  v26[3] = v25;
  v26[4] = v21;
  swift_retain_n();
  sub_1004A673C(0xD000000000000027, 0x80000001006CD450, v24, &unk_1006B2BE8, v26);
}

void sub_10054E114(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  v6 = sub_10054E880(a2, a3, &off_10075AF60);
  v7 = sub_100563BA8(0, 0, v6, sub_100563B34, 0, v5);

  if (v7)
  {
    v8 = sub_1003A9FEC(&off_10075AF88, v7);
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
}

void sub_10054E1C4(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v46 = a5;
  v58 = a4;
  v11 = type metadata accessor for AppPackage();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AppInstall();
  __chkstk_darwin(v15 - 8);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100564730(a2, v17, type metadata accessor for AppInstall);
  v18 = *a1;
  v19 = sub_100565BCC(v17, v18, sub_1004D8100, type metadata accessor for AppInstallEntity.Entity, type metadata accessor for AppInstall);

  if (!v6)
  {
    v45 = v18;
    v43 = a6;
    v20 = *(a3 + 16);
    if (v20)
    {
      v21 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v44 = *(v12 + 72);
      do
      {
        sub_100564730(v21, v14, type metadata accessor for AppPackage);
        v22 = v45;
        v23 = sub_100565BCC(v14, v22, sub_1004E89B4, type metadata accessor for AppPackageEntity.Entity, type metadata accessor for AppPackage);

        v24 = v19;
        v25 = [v19 persistentID];
        v56 = &protocol witness table for Int64;
        v57 = &protocol witness table for Int64;
        v55 = &type metadata for Int64;
        v54[0] = v25;
        type metadata accessor for JSONEncoder();
        swift_allocObject();
        JSONEncoder.init()();
        SQLiteEncodeValue(_:using:)(v54, v48);

        sub_10000710C(v54);
        sub_100006D8C(v48, v48[3]);
        v26 = _bridgeAnythingToObjectiveC<A>(_:)();
        sub_10000710C(v48);
        v27 = String._bridgeToObjectiveC()();
        [v23 setValue:v26 forProperty:v27];

        swift_unknownObjectRelease();
        v21 += v44;
        --v20;
        v19 = v24;
        v28 = v46;
        v29 = v58;
      }

      while (v20);
    }

    else
    {
      v28 = v46;
      v29 = v58;
    }

    v30 = [v19 persistentID];
    sub_100005934(v29, v54, &qword_100784E10);
    if (v55)
    {
      v46 = *(v28 + 24);
      v31 = v46;
      v32 = sub_100006D8C(v28, v46);
      v53 = v46;
      v33 = sub_10020A748(v52);
      (*(*(v31 - 8) + 16))(v33, v32, v31);
      v34 = v45;
      v35 = sub_1005AFEA0(v34, v30);
      v36 = v43;
      if (v35)
      {
        v37 = v35;
        v38 = sub_100533B84(7, v35);
        if (v38)
        {

          type metadata accessor for InternalError();
          sub_100562D1C(&qword_10077F900, type metadata accessor for InternalError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }

        else
        {
          v39 = v19;
          sub_100231CE8(v54, v48);
          sub_10020A980(v52, v47);
          v40 = type metadata accessor for IPA_AppInstall();
          swift_allocObject();
          v41 = sub_1003D557C(v30, v34, v48, v47);
          v50 = v40;
          v51 = &off_100763A38;

          *&v49 = v41;
          sub_1001DFDBC(&v49, v36);
        }
      }

      else
      {

        type metadata accessor for InternalError();
        sub_100562D1C(&qword_10077F900, type metadata accessor for InternalError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      sub_10000710C(v52);
      sub_10000710C(v54);
    }

    else
    {
      __break(1u);

      sub_10000710C(v54);
      swift_unexpectedError();
      __break(1u);
    }
  }
}

uint64_t sub_10054E7EC@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v5 = *a1;
  v6 = sub_10054E880(a2, a3, &off_100757CE0);
  LOBYTE(v5) = sub_1005641E8(0, 0, v6, sub_10051CFE4, 0, v5);

  *a4 = (v5 & 1) == 0;
  return result;
}

void *sub_10054E880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = sub_1001F0C48(&unk_10077FDB0);
  v17 = sub_100213FA0(&unk_1007843D0, &unk_10077FDB0);
  LOWORD(v14) = 5;
  *(&v14 + 1) = a1;
  v15 = a2;
  sub_1001F0C48(&unk_10077FDC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  sub_1001DFDBC(&v14, inited + 32);
  v12 = sub_1001F0C48(&unk_1007843E0);
  LOWORD(v11) = 283;
  v13 = sub_100213FA0(&unk_10077FDD0, &unk_1007843E0);
  *(&v11 + 1) = a3;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_10069E680;
  sub_1001DFDBC(&v11, v7 + 32);
  sub_1001F0C48(&unk_1007843F0);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_10069F6E0;
  *(v8 + 32) = inited;
  *(v8 + 40) = v7;

  v9 = sub_1005AE994(v8);
  swift_setDeallocating();
  sub_1001F0C48(&qword_10077FDE0);
  swift_arrayDestroy();
  return v9;
}

uint64_t sub_10054EA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Logger();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_1001F0C48(&unk_100780A00);
  v4[9] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_10054EBB0, v3, 0);
}

uint64_t sub_10054EBB0()
{
  v1 = *(v0 + 32);
  v7 = *(v0 + 16);
  v2 = *(*(v0 + 40) + 112);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *(v3 + 16) = v7;
  *(v3 + 32) = v1;
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_10054ECA8;
  v5 = *(v0 + 72);

  return sub_1003B1528(v5, sub_100566D2C, v3, v2);
}

uint64_t sub_10054ECA8()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_10054EFC4;
  }

  else
  {
    v4 = sub_10054EDF0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10054EDF0()
{
  v1 = v0 + 11;
  v2 = v0[11];
  v4 = v0 + 10;
  v3 = v0[10];
  v5 = v0[9];
  if ((*(v2 + 48))(v5, 1, v3) == 1)
  {
    v6 = v0 + 8;
    sub_1000032A8(v5, &unk_100780A00);
    static Logger.install.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[2];
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v7, v8, "Installation not found for %llu", v10, 0xCu);
    }

    v11 = 0;
    v1 = v0 + 7;
    v4 = v0 + 6;
  }

  else
  {
    v6 = v0 + 12;
    v12 = v0[12];
    (*(v2 + 32))(v12, v5, v3);
    v11 = sub_1005F8634(v12);
  }

  (*(*v1 + 8))(*v6, *v4);

  v13 = v0[1];

  return v13(v11);
}

uint64_t sub_10054EFC4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10054F03C(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = sub_100275634(a2);
  v6 = sub_100563BA8(0, 0, v5, sub_100563B34, 0, v4);

  if (v6)
  {
    v7 = [v6 persistentID];
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  *(a3 + 8) = v6 == 0;
}

double sub_10054F0E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_installers;
  swift_beginAccess();
  v10 = *(v2 + v9);
  if (*(v10 + 16) && (v11 = sub_10052BA64(a1), (v12 & 1) != 0))
  {
    sub_10020A980(*(v10 + 56) + 40 * v11, v17);
    sub_1001DFDBC(v17, a2);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    static Logger.install.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134349056;
      *(v16 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v14, v15, "Installation %{public}lld could not be found", v16, 0xCu);
    }

    (*(v6 + 8))(v8, v5);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void sub_10054F2B4(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a4;
  v6 = *a1;
  v24 = sub_1001F0C48(&unk_1007843E0);
  LOWORD(v23) = 283;
  v25 = sub_100213FA0(&unk_10077FDD0, &unk_1007843E0);
  *(&v23 + 1) = &off_100757CE0;
  sub_1001F0C48(&unk_10077FDC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  sub_1001DFDBC(&v23, inited + 32);
  sub_1001F0C48(&unk_1007843F0);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_10069E680;
  *(v8 + 32) = inited;
  v9 = v8 + 32;
  v10 = sub_1005AE994(v8);
  swift_setDeallocating();
  sub_1000032A8(v9, &qword_10077FA00);
  v24 = sub_1001F0C48(&qword_10077F608);
  v11 = sub_100213FA0(&qword_10077F610, &qword_10077F608);
  LOBYTE(v23) = 0;
  v25 = v11;
  *(&v23 + 1) = v10;
  v13 = sub_100235740(&v23, v6, v12);
  v15 = v14;
  if (v24)
  {
    sub_10000710C(&v23);
  }

  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = 0;
    while (v17 < *(v15 + 16))
    {
      v18 = *(v15 + 8 * v17 + 32);
      type metadata accessor for AppInstallEntity.Entity();
      v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v18 onConnection:v13];
      if (([v19 existsInDatabase] & 1) == 0)
      {

        v13 = v19;
        goto LABEL_11;
      }

      *&v23 = v19;
      if (sub_10054F5D0(&v23, a2, a3, v26))
      {
        sub_1005368D8(v19, sub_100234CBC, sub_100537564, &type metadata accessor for UUID, a5);

        return;
      }

      if (v16 == ++v17)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

LABEL_11:

    v20 = type metadata accessor for UUID();
    (*(*(v20 - 8) + 56))(a5, 1, 1, v20);
  }
}

uint64_t sub_10054F5D0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = sub_100537034(2, *a1, sub_1004D9FC4, &type metadata for AppleItemID, &qword_100787448);
  v9 = 0;
  if ((v10 & 1) == 0 && v8 == a2)
  {
    if (a3 == 0xD000000000000024 && 0x80000001006CD390 == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v11 = sub_100536AC8(38, v7);
      if (v13 != -1)
      {
        v14 = v11;
        v15 = v12;
        if (v13)
        {
          v16 = &type metadata for WebDistributor;
          v17 = sub_100231E84();
        }

        else
        {
          v16 = &type metadata for NativeDistributor;
          v17 = sub_1003000A4();
        }

        v32 = v16;
        v33 = v17;
        *&v31 = v14;
        *(&v31 + 1) = v15;
        sub_1001DFDBC(&v31, v34);
        sub_1001F0C48(&qword_10077E970);
        if (swift_dynamicCast())
        {
LABEL_18:

          v9 = 1;
          return v9 & 1;
        }
      }
    }

    v18 = sub_100536AC8(38, v7);
    if (v20 != -1)
    {
      v21 = v18;
      v22 = v19;
      if (v20)
      {
        v23 = &type metadata for WebDistributor;
        v24 = sub_100231E84();
      }

      else
      {
        v23 = &type metadata for NativeDistributor;
        v24 = sub_1003000A4();
      }

      v32 = v23;
      v33 = v24;
      *&v31 = v21;
      *(&v31 + 1) = v22;
      sub_1001DFDBC(&v31, v34);
      v25 = v35;
      v26 = v36;
      sub_100006D8C(v34, v35);
      v27 = (*(v26 + 40))(v25, v26);
      v29 = v28;
      sub_10000710C(v34);
      if (v27 != a3 || v29 != a4)
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        return v9 & 1;
      }

      goto LABEL_18;
    }

    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_10054F844()
{
  v1 = *(*(v0 + 64) + 112);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_10054F908;

  return sub_1003B5938(sub_10054FC84, 0, v1);
}

uint64_t sub_10054F908(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 64);
  if (v1)
  {

    v7 = sub_10054FB74;
  }

  else
  {
    *(v5 + 80) = a1;
    v7 = sub_10054FA4C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10054FA4C()
{
  v1 = sub_1005DA5FC(v0[10]);

  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v0[6] = sub_100567770;
  v0[7] = v3;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100550884;
  v0[5] = &unk_10076AF78;
  v4 = _Block_copy(v0 + 2);

  [v2 enumerateCoordinatorsUsingBlock:v4];
  _Block_release(v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_10054FB74()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = &_swiftEmptySetSingleton;
  v0[6] = sub_100567770;
  v0[7] = v2;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100550884;
  v0[5] = &unk_10076AF78;
  v3 = _Block_copy(v0 + 2);

  [v1 enumerateCoordinatorsUsingBlock:v3];
  _Block_release(v3);
  v4 = v0[1];

  return v4();
}

void sub_10054FC84(void **a1@<X0>, void *a2@<X8>)
{
  v42 = a2;
  v6 = sub_1001F0C48(&unk_100780A00);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v55 = &v42 - v10;
  v54 = type metadata accessor for UUID();
  v45 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  *(&v64 + 1) = sub_1001F0C48(&unk_1007843E0);
  v13 = sub_100213FA0(&unk_10077FDD0, &unk_1007843E0);
  LOWORD(v63) = 283;
  v65 = v13;
  *(&v63 + 1) = &off_100757CE0;
  v52 = sub_100235740(&v63, v12, v14);
  v16 = v15;
  if (*(&v64 + 1))
  {
    sub_10000710C(&v63);
  }

  v50 = *(v16 + 16);
  if (!v50)
  {
    v66 = _swiftEmptyArrayStorage;
LABEL_27:

LABEL_29:

    *v42 = v66;
    return;
  }

  v43 = v9;
  v17 = 0;
  v48 = (v45 + 56);
  v53 = (v45 + 32);
  v49 = (v45 + 48);
  v66 = _swiftEmptyArrayStorage;
  v18 = &qword_100783A30;
  v47 = v16;
  while (1)
  {
    if (v17 >= *(v16 + 16))
    {
      __break(1u);
LABEL_31:
      v44 = v2;
      sub_100007158(v3, v4);
      goto LABEL_33;
    }

    v19 = v18;
    v20 = *(v16 + 8 * v17 + 32);
    type metadata accessor for AppInstallEntity.Entity();
    v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v22 = [v21 initWithPersistentID:v20 onConnection:v52];
    if (([v22 existsInDatabase] & 1) == 0)
    {

      v52 = v22;
      goto LABEL_29;
    }

    v23 = String._bridgeToObjectiveC()();
    v24 = [v22 valueForProperty:v23];

    if (v24)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v63 = 0u;
      v64 = 0u;
    }

    v25 = v19;
    v3 = &unk_10069E960;
    sub_100005934(&v63, &v61, v19);
    if (v62)
    {
      break;
    }

    sub_1000032A8(&v63, v19);
    v28 = v54;
    v2 = v55;
    (*v48)(v55, 1, 1, v54);
    v18 = v25;
LABEL_20:
    if ((*v49)(v2, 1, v28) == 1)
    {
      sub_1000032A8(v2, &unk_100780A00);
    }

    else
    {
      v31 = *v53;
      (*v53)(v51, v2, v28);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_100364264(0, *(v66 + 2) + 1, 1, v66);
      }

      v4 = *(v66 + 2);
      v32 = *(v66 + 3);
      if (v4 >= v32 >> 1)
      {
        v66 = sub_100364264(v32 > 1, v4 + 1, 1, v66);
      }

      v33 = v66;
      *(v66 + 2) = v4 + 1;
      v31(&v33[((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v4], v51, v28);
      v16 = v47;
    }

    if (v50 == ++v17)
    {
      goto LABEL_27;
    }
  }

  sub_1001F6498(&v61, &v59);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v2 = JSONDecoder.init()();
  sub_10020A6D0(&v59, v58);
  if (swift_dynamicCast())
  {
    v3 = v56;
    v4 = v57;
    sub_100562D1C(&qword_100784988, &type metadata accessor for UUID);
    v26 = v46;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v46 = v26;
    if (v26)
    {
      goto LABEL_31;
    }

    sub_100007158(v3, v4);

    v16 = v47;
    v27 = v48;
    v4 = v54;
    v2 = v55;
    goto LABEL_19;
  }

  v44 = v2;
  sub_10020A6D0(&v59, v58);
  v3 = v43;
  v4 = v54;
  v29 = swift_dynamicCast();
  v27 = v48;
  v30 = *v48;
  if (v29)
  {
    v30(v3, 0, 1, v4);
    v2 = v55;
    (*v53)(v55, v3, v4);

LABEL_19:
    sub_10000710C(&v59);
    v18 = v19;
    sub_1000032A8(&v63, v19);
    (*v27)(v2, 0, 1, v4);
    v28 = v4;
    goto LABEL_20;
  }

  v30(v3, 1, 1, v4);
  sub_1000032A8(v3, &unk_100780A00);
  sub_100513858();
  v34 = swift_allocError();
  v36 = v35;
  v58[0] = v4;
  sub_1001F0C48(&qword_1007873F8);
  v37 = String.init<A>(describing:)();
  v39 = v38;
  sub_100006D8C(&v59, v60);
  v58[0] = swift_getDynamicType();
  sub_1001F0C48(&qword_1007868B0);
  v40 = String.init<A>(describing:)();
  *v36 = v37;
  *(v36 + 8) = v39;
  *(v36 + 16) = v40;
  *(v36 + 24) = v41;
  *(v36 + 40) = 2;
  v46 = v34;
  swift_willThrow();
LABEL_33:

  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_100550494(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v30 - v15;
  if (a2)
  {
    swift_errorRetain();
    static Logger.install.getter();
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138543362;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "Enumerating coordinators failed with error: %{public}@", v19, 0xCu);
      sub_1000032A8(v20, &qword_10077F920);
    }

    else
    {
    }

    (*(v11 + 8))(v16, v10);
  }

  else if (a1)
  {
    v22 = a1;
    v23 = [v22 uniqueIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v23) = sub_100535530(v9, a3);
    (*(v7 + 8))(v9, v6);
    if ((v23 & 1) == 0 && [v22 creatorIdentifier] == 28)
    {
      static Logger.install.getter();
      v22 = v22;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138543362;
        *(v26 + 4) = v22;
        *v27 = a1;
        v28 = v22;
        _os_log_impl(&_mh_execute_header, v24, v25, "Cancelling untracked owned coordinator: %{public}@", v26, 0xCu);
        sub_1000032A8(v27, &qword_10077F920);
      }

      (*(v11 + 8))(v14, v10);
      sub_1005F6C58(1, 0, 0);
    }
  }

  return 1;
}

uint64_t sub_100550884(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v7 = a3;
  LOBYTE(a3) = v5(a2, a3);

  return a3 & 1;
}

uint64_t sub_100550900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[37] = a4;
  v6 = type metadata accessor for Logger();
  v4[38] = v6;
  v4[39] = *(v6 - 8);
  v4[40] = swift_task_alloc();

  return _swift_task_switch(sub_1005509C4, a4, 0);
}

uint64_t sub_1005509C4()
{
  static Logger.install.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Recreating previously active installations #engine", v3, 2u);
  }

  v5 = *(v0 + 312);
  v4 = *(v0 + 320);
  v7 = *(v0 + 296);
  v6 = *(v0 + 304);

  (*(v5 + 8))(v4, v6);
  v8 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_dependencies;
  swift_beginAccess();
  result = sub_100005934(v7 + v8, v0 + 112, &qword_100784E10);
  if (*(v0 + 136))
  {
    sub_100231D54((v0 + 112), (v0 + 16));
    v10 = swift_task_alloc();
    *(v0 + 328) = v10;
    *v10 = v0;
    v10[1] = sub_100550B60;

    return sub_100324268(v0 + 208);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100550B60()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = *(v2 + 296);
  if (v0)
  {
    v4 = sub_100551020;
  }

  else
  {
    v4 = sub_100550C8C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100550C8C()
{
  v1 = *(v0[37] + 112);
  v2 = swift_task_alloc();
  v0[43] = v2;
  *(v2 + 16) = v0 + 2;
  *(v2 + 24) = v0 + 26;
  v3 = swift_task_alloc();
  v0[44] = v3;
  *v3 = v0;
  v3[1] = sub_100550D78;

  return (sub_100531A90)(sub_100567778, v2, v1);
}

uint64_t sub_100550D78(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 360) = a1;
  *(v4 + 368) = v1;

  v5 = *(v3 + 296);

  if (v1)
  {
    v6 = sub_100551090;
  }

  else
  {
    v6 = sub_100550EC8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100550EC8()
{
  v9 = v0;
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[37];
  v4 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_installers;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v4);
  *(v3 + v4) = 0x8000000000000000;
  sub_1005660A4(v1, sub_100563170, 0, isUniquelyReferenced_nonNull_native, &v8);
  if (v2)
  {

    return swift_endAccess();
  }

  else
  {

    *(v3 + v4) = v8;
    swift_endAccess();

    sub_10000710C((v0 + 26));
    sub_10000710C((v0 + 2));

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100551020()
{
  sub_10000710C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100551090()
{
  sub_10000710C(v0 + 208);
  sub_10000710C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

void sub_100551108(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v87 = a2;
  v88 = a3;
  v89 = a4;
  v5 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v5 - 8);
  v85 = &v76 - v6;
  v7 = type metadata accessor for AppInstallScheduler.ParkReason(0);
  v83 = *(v7 - 8);
  v84 = v7;
  v8 = __chkstk_darwin(v7);
  v81 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v9;
  __chkstk_darwin(v8);
  v80 = &v76 - v10;
  v97 = type metadata accessor for Logger();
  v11 = *(v97 - 8);
  v12 = __chkstk_darwin(v97);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v86 = &v76 - v15;
  v110 = sub_10052AA94(_swiftEmptyArrayStorage);
  v16 = *a1;
  *(&v102 + 1) = sub_1001F0C48(&unk_1007843E0);
  v17 = sub_100213FA0(&unk_10077FDD0, &unk_1007843E0);
  LOWORD(v101) = 283;
  v103 = v17;
  *(&v101 + 1) = &off_10075AFB0;
  v92 = v16;
  v19 = sub_100235740(&v101, v16, v18);
  v21 = v20;
  if (*(&v102 + 1))
  {
    sub_10000710C(&v101);
  }

  v22 = v21;
  v23 = *(v21 + 16);
  v93 = v22;

  v24 = v19;
  if (v23)
  {
    type metadata accessor for AppInstallEntity.Entity();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v95 = (v11 + 8);
    v96 = ObjCClassFromMetadata;
    v90 = 0x80000001006CD410;
    v26 = 4;
    v27 = &selRef_initWithUnsignedChar_;
    *&v28 = 138412546;
    v91 = v28;
    *&v28 = 138412290;
    v78 = v28;
    v29 = v93;
    v94 = v24;
    do
    {
      v30 = [objc_allocWithZone(v96) initWithPersistentID:*(v29 + 8 * v26) onConnection:v24];
      if (([v30 existsInDatabase] & 1) == 0)
      {

        goto LABEL_33;
      }

      v31 = String._bridgeToObjectiveC()();
      v32 = [v30 valueForProperty:v31];

      v99 = v26;
      if (v32)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_1001F6498(&v108, &v101);
      }

      else
      {
        v101 = 0u;
        v102 = 0u;
      }

      sub_1001F0C48(&qword_100783A30);
      v33 = type metadata accessor for LogKey();
      if ((swift_dynamicCast() & 1) == 0 || (v34 = *&v107[0]) == 0)
      {
        *&v101 = 0x3A474E495353494DLL;
        *(&v101 + 1) = 0xE800000000000000;
        *&v108 = [v30 v27[174]];
        v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v35);

        v36 = objc_allocWithZone(v33);
        v34 = LogKey.init(string:)();
      }

      v37 = [v30 v27[174]];
      if (sub_100536C7C(34, v30, sub_1004D96C0, &type metadata for AppInstallSource, &qword_1007875F0) == 5)
      {
        v38 = String._bridgeToObjectiveC()();
        v39 = [v30 valueForProperty:v38];

        if (!v39)
        {
          sub_100513858();
          swift_allocError();
          v50 = v49;
          *(v49 + 24) = &type metadata for AppInstallEntity.Property;
          *(v49 + 32) = sub_1002360B0();
          *v50 = 34;
          v50[40] = 1;
LABEL_20:
          swift_willThrow();
          goto LABEL_21;
        }

        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100513858();
        swift_allocError();
        v41 = v40;
        sub_100006D8C(&v101, *(&v102 + 1));
        swift_getDynamicType();
        v42 = _typeName(_:qualified:)();
        *v41 = 0xD000000000000010;
        *(v41 + 8) = v90;
        *(v41 + 16) = v42;
        *(v41 + 24) = v43;
        *(v41 + 40) = 2;
        swift_willThrow();
        sub_10000710C(&v101);
      }

      else
      {
        v44 = v92;
        v45 = sub_1005AFEA0(v44, v37);
        if (!v45)
        {

          type metadata accessor for InternalError();
          sub_100562D1C(&qword_10077F900, type metadata accessor for InternalError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          goto LABEL_20;
        }

        v46 = v45;
        v47 = v98;
        v48 = sub_100533B84(7, v45);
        if (v47)
        {
        }

        else
        {
          if ((v48 & 1) == 0)
          {
            v79 = v14;
            sub_100231CE8(v87, &v101);
            sub_10020A980(v88, v100);
            v59 = type metadata accessor for IPA_AppInstall();
            swift_allocObject();
            v60 = sub_1003D557C(v37, v44, &v101, v100);
            v98 = 0;
            v105 = v59;
            v106 = &off_100763A38;

            *&v104 = v60;
            sub_1001DFDBC(&v104, v107);
            sub_1001DFDBC(v107, &v108);
            v61 = [v30 persistentID];
            sub_10020A980(&v108, &v101);
            sub_1005B7C44(&v101, v61);
            static Logger.install.getter();
            v62 = v34;
            v63 = Logger.logObject.getter();
            v64 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v63, v64))
            {
              v65 = swift_slowAlloc();
              v66 = swift_slowAlloc();
              *v65 = v78;
              *(v65 + 4) = v62;
              *v66 = v62;
              v67 = v62;
              _os_log_impl(&_mh_execute_header, v63, v64, "[%@] Restarting installation #engine", v65, 0xCu);
              sub_1000032A8(v66, &qword_10077F920);
            }

            (*v95)(v86, v97);
            v68 = sub_100006D8C(&v108, v109);
            v77 = v62;
            v69 = v80;
            swift_storeEnumTagMultiPayload();
            v70 = *v68;
            v71 = type metadata accessor for TaskPriority();
            v72 = v85;
            (*(*(v71 - 8) + 56))(v85, 1, 1, v71);
            v73 = v81;
            sub_100564730(v69, v81, type metadata accessor for AppInstallScheduler.ParkReason);
            v74 = (*(v83 + 80) + 40) & ~*(v83 + 80);
            v75 = swift_allocObject();
            v75[2] = 0;
            v75[3] = 0;
            v75[4] = v70;
            sub_100566A40(v73, v75 + v74, type metadata accessor for AppInstallScheduler.ParkReason);

            sub_100494DB4(0, 0, v72, &unk_1006B2BA0, v75);

            sub_100566034(v69, type metadata accessor for AppInstallScheduler.ParkReason);
            sub_10000710C(&v108);
            v14 = v79;
            goto LABEL_24;
          }

          type metadata accessor for InternalError();
          sub_100562D1C(&qword_10077F900, type metadata accessor for InternalError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }
      }

LABEL_21:
      v98 = 0;
      static Logger.install.getter();
      v51 = v34;
      swift_errorRetain();
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = v14;
        v56 = swift_slowAlloc();
        *v54 = v91;
        *(v54 + 4) = v51;
        *v56 = v51;
        *(v54 + 12) = 2112;
        v57 = v51;
        swift_errorRetain();
        v58 = _swift_stdlib_bridgeErrorToNSError();
        *(v54 + 14) = v58;
        v56[1] = v58;
        _os_log_impl(&_mh_execute_header, v52, v53, "[%@] Deleting invalid installation: %@", v54, 0x16u);
        sub_1001F0C48(&qword_10077F920);
        swift_arrayDestroy();
        v14 = v55;
        v29 = v93;
      }

      (*v95)(v14, v97);
      sub_100235C9C(v30);

LABEL_24:
      v27 = &selRef_initWithUnsignedChar_;
      v26 = v99 + 1;
      v24 = v94;
    }

    while ((v99 - 3) < *(v29 + 16));
  }

  v30 = v24;
LABEL_33:

  *v89 = v110;
}

void sub_100551CCC(uint64_t a1)
{
  v3 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v3 - 8);
  v67 = &v66 - v4;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v69 = v5;
  v70 = v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v11 = __chkstk_darwin(v10);
  v13 = &v66 - v12;
  __chkstk_darwin(v11);
  v15 = &v66 - v14;
  v16 = *(a1 + 8);
  v17 = [v16 bundleID];
  v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = *a1;
  if (*a1)
  {
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    v22 = *(a1 + 40);
    if (v21)
    {
      if (v22 == 4 && (*(a1 + 16) & 0xFFFFFFFFFFFFFFFELL) == 2 && *(a1 + 24) == 0)
      {
        v23 = v1;
        v24 = v20;
        static Logger.install.getter();

        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *v72 = v28;
          *v27 = 136446210;
          v29 = v68;
          *(v27 + 4) = sub_1002346CC(v68, v19, v72);
          _os_log_impl(&_mh_execute_header, v25, v26, "[%{public}s] Prioritize restore", v27, 0xCu);
          sub_10000710C(v28);

          (*(v70 + 8))(v15, v69);
          v30 = v23;
        }

        else
        {

          (*(v70 + 8))(v15, v69);
          v30 = v23;
          v29 = v68;
        }

        v55 = type metadata accessor for TaskPriority();
        v56 = v67;
        (*(*(v55 - 8) + 56))(v67, 1, 1, v55);
        v57 = sub_100562D1C(&qword_100784E18, type metadata accessor for AppInstallScheduler);
        v58 = swift_allocObject();
        v58[2] = v30;
        v58[3] = v57;
        v58[4] = v30;
        v58[5] = v29;
        v58[6] = v19;
        swift_retain_n();
        sub_1004A673C(0, 0, v56, &unk_1006B2B70, v58);
      }

      else
      {
        v35 = v20;
        static Logger.install.getter();

        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          *v72 = v39;
          *v38 = 136446210;
          v40 = sub_1002346CC(v68, v19, v72);

          *(v38 + 4) = v40;
          _os_log_impl(&_mh_execute_header, v36, v37, "[%{public}s] Not prioritizing restore", v38, 0xCu);
          sub_10000710C(v39);
        }

        else
        {
        }

        (*(v70 + 8))(v13, v69);
      }
    }

    else if (v22 == 4 && *(a1 + 16) == 3 && *(a1 + 24) == 0)
    {
      v48 = v1;
      v49 = v20;
      v50 = [v16 bundleID];
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      v54 = objc_allocWithZone(LSApplicationRecord);
      v59 = type metadata accessor for TaskPriority();
      v60 = v67;
      (*(*(v59 - 8) + 56))(v67, 1, 1, v59);
      v61 = sub_100562D1C(&qword_100784E18, type metadata accessor for AppInstallScheduler);
      v62 = swift_allocObject();
      v62[2] = v48;
      v62[3] = v61;
      v62[4] = v68;
      v62[5] = v19;
      v62[6] = v48;
      swift_retain_n();
      sub_1004A673C(0, 0, v60, &unk_1006B2B60, v62);
    }

    else
    {
    }
  }

  else
  {
    *&v72[9] = *(a1 + 25);
    *v72 = *(a1 + 16);
    if (v72[24] == 4 && *v72 == 3 && *&v72[8] == 0)
    {
      v31 = type metadata accessor for TaskPriority();
      v32 = v67;
      (*(*(v31 - 8) + 56))(v67, 1, 1, v31);
      v33 = sub_100562D1C(&qword_100784E18, type metadata accessor for AppInstallScheduler);
      v34 = swift_allocObject();
      v34[2] = v1;
      v34[3] = v33;
      v34[4] = v68;
      v34[5] = v19;
      v34[6] = v1;
      swift_retain_n();
      sub_1004A673C(0, 0, v32, &unk_1006B2B50, v34);
    }

    else
    {
      static Logger.install.getter();

      v41 = v16;
      sub_100567420(v72, v71);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();

      sub_10056747C(v72);
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v71[0] = swift_slowAlloc();
        *v44 = 136446466;
        v45 = sub_1002346CC(v68, v19, v71);

        *(v44 + 4) = v45;
        *(v44 + 12) = 2080;
        if (v72[24] <= 1u)
        {
          if (v72[24])
          {
            v47 = 0x64656C696166;
          }

          else
          {
            v47 = 0x6574656C706D6F63;
          }

          if (v72[24])
          {
            v46 = 0xE600000000000000;
          }

          else
          {
            v46 = 0xE900000000000064;
          }
        }

        else if (v72[24] == 2)
        {
          v46 = 0xE800000000000000;
          v47 = 0x73736572676F7270;
        }

        else if (v72[24] == 3)
        {
          v46 = 0xEB00000000726564;
          v47 = 0x6C6F686563616C70;
        }

        else if (*&v72[8] | *&v72[16] | *v72)
        {
          if (*v72 == 1 && *&v72[8] == 0)
          {
            v46 = 0xE600000000000000;
            v47 = 0x646573756170;
          }

          else
          {
            v63 = *&v72[8] == 0;
            v64 = *v72 == 2;
            if (v64 && v63)
            {
              v47 = 0x64656D75736572;
            }

            else
            {
              v47 = 0x697469726F697270;
            }

            if (v64 && v63)
            {
              v46 = 0xE700000000000000;
            }

            else
            {
              v46 = 0xEB0000000064657ALL;
            }
          }
        }

        else
        {
          v46 = 0xE800000000000000;
          v47 = 0x64656C65636E6163;
        }

        v65 = sub_1002346CC(v47, v46, v71);

        *(v44 + 14) = v65;
        _os_log_impl(&_mh_execute_header, v42, v43, "[%{public}s] handleRestoreOrPromotionEvent event kind: %s", v44, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      (*(v70 + 8))(v9, v69);
    }
  }
}
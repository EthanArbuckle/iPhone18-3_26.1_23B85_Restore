uint64_t sub_1000B7164()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000B71B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100080FB4(&unk_1003D0540);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B7228(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100098B7C();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1000B7288()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B72D0()
{
  sub_100098BB4();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A7644;

  return sub_1000B0D64(v2, v3, v4);
}

unint64_t sub_1000B7380()
{
  result = qword_1003D3080;
  if (!qword_1003D3080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D3080);
  }

  return result;
}

uint64_t sub_1000B73D4()
{

  sub_1000B7E4C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000B7408()
{
  sub_100098BB4();
  sub_1000B7F24();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  v3 = sub_1000B7CE4(v1);

  return v4(v3);
}

uint64_t sub_1000B7498()
{
  sub_100098BB4();
  sub_1000B7F24();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  v3 = sub_1000B7CE4(v1);

  return v4(v3);
}

uint64_t sub_1000B7528()
{
  sub_100098BB4();
  sub_1000B7F24();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  v3 = sub_1000B7CE4(v1);

  return v4(v3);
}

uint64_t sub_1000B75B8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_100080FB4(a3);
  sub_100098B7C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000B762C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100080FB4(&unk_1003D0540);
    v9 = a1 + *(a3 + 20);

    return sub_100081D0C(v9, a2, v8);
  }
}

uint64_t sub_1000B76D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100080FB4(&unk_1003D0540);
    v8 = v5 + *(a4 + 20);

    return sub_100081DFC(v8, a2, a2, v7);
  }

  return result;
}

void sub_1000B7760()
{
  sub_1000B77F4();
  if (v0 <= 0x3F)
  {
    sub_1000B784C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000B77F4()
{
  if (!qword_1003CD3B8)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003CD3B8);
    }
  }
}

void sub_1000B784C()
{
  if (!qword_1003CD3C0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003CD3C0);
    }
  }
}

unint64_t sub_1000B789C()
{
  result = qword_1003CD400;
  if (!qword_1003CD400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD400);
  }

  return result;
}

uint64_t sub_1000B78F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000B7938(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100098B7C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000B7998(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100098B7C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t _s9OctaneAppV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s9OctaneAppV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000B7B44);
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

unint64_t sub_1000B7B80()
{
  result = qword_1003CD420;
  if (!qword_1003CD420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD420);
  }

  return result;
}

unint64_t sub_1000B7BD8()
{
  result = qword_1003CD428;
  if (!qword_1003CD428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD428);
  }

  return result;
}

unint64_t sub_1000B7C30()
{
  result = qword_1003CD430[0];
  if (!qword_1003CD430[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1003CD430);
  }

  return result;
}

uint64_t sub_1000B7D30()
{
  *(v1 + 4) = v2;
  *(v1 + 12) = 2082;
  return v0;
}

unint64_t sub_1000B7DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return sub_100080210(a7, a8, va);
}

void sub_1000B7E14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

id sub_1000B7EB8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v19 = *(v17 + 2624);

  return [v16 v19];
}

id sub_1000B7ED4()
{
  v3 = *(v1 + 2544);

  return [v0 v3];
}

uint64_t sub_1000B7F40()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000B7FE0()
{
  v1 = *(*v0 + 96);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000B806C()
{
  sub_1000B7FE0();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000B80F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100080FB4(&unk_1003D20F0);
  sub_1000B9378();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return sub_100081D0C(v9, a2, v8);
  }

  sub_100080FB4(&qword_1003CD4B8);
  sub_1000B9378();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 28) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1000B8210(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100080FB4(&unk_1003D20F0);
  sub_1000B9378();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_100080FB4(&qword_1003CD4B8);
    sub_1000B9378();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  sub_100081DFC(v11, a2, a2, v10);
}

uint64_t type metadata accessor for LegacyUnfinishedTransactionsTask()
{
  result = qword_1003CD518;
  if (!qword_1003CD518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B8360()
{
  sub_1000B8434(319, &qword_1003CC5F8, type metadata accessor for ClientOverride);
  if (v0 <= 0x3F)
  {
    sub_1000B8434(319, &unk_1003CD528, type metadata accessor for CustomReceiptURL);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000B8434(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000B8488(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x764F746E65696C63 && a2 == 0xEE00656469727265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x8000000100316080 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x61727453636E7973 && a2 == 0xEC00000079676574;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1000B85F0(char a1)
{
  result = 0x764F746E65696C63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x61727453636E7973;
      break;
    case 3:
      result = 0x79654B676F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000B8698(void *a1)
{
  v3 = v1;
  v5 = sub_100080FB4(&qword_1003CD598);
  sub_1000890DC();
  v7 = v6;
  sub_100089118();
  __chkstk_darwin(v8);
  v10 = &v17[-v9];
  sub_100086D24(a1, a1[3]);
  sub_1000B8EC0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17[15] = 0;
  type metadata accessor for ClientOverride(0);
  sub_1000B9348();
  sub_1000B9088(v11, v12);
  sub_1000B9360();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v13 = type metadata accessor for LegacyUnfinishedTransactionsTask();
    v17[14] = 1;
    type metadata accessor for CustomReceiptURL();
    sub_1000B9330();
    sub_1000B9088(v14, v15);
    sub_1000B9360();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17[13] = *(v3 + *(v13 + 24));
    v17[12] = 2;
    sub_1000B90D0();
    sub_1000B9360();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17[11] = 3;
    sub_1000B9360();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1000B88D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  sub_100080FB4(&qword_1003CD4B8);
  sub_100089118();
  __chkstk_darwin(v3);
  v5 = &v30 - v4;
  sub_100080FB4(&unk_1003D20F0);
  sub_100089118();
  __chkstk_darwin(v6);
  v8 = &v30 - v7;
  v32 = sub_100080FB4(&qword_1003CD578);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = type metadata accessor for LegacyUnfinishedTransactionsTask();
  sub_100098B7C();
  __chkstk_darwin(v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v35 = a1;
  sub_100086D24(a1, v16);
  sub_1000B8EC0();
  v33 = v11;
  v17 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return sub_100080F0C(v35);
  }

  v18 = v15;
  type metadata accessor for ClientOverride(0);
  v40 = 0;
  sub_1000B9348();
  sub_1000B9088(v19, v20);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000B8F14(v8, v15, &unk_1003D20F0);
  type metadata accessor for CustomReceiptURL();
  v39 = 1;
  sub_1000B9330();
  sub_1000B9088(v21, v22);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000B8F14(v5, &v15[v12[5]], &qword_1003CD4B8);
  v37 = 2;
  sub_1000B8F74();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15[v12[6]] = v38;
  v36 = 3;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = v24;
  v26 = sub_1000B936C();
  v27(v26, v32);
  v28 = (v18 + v12[7]);
  *v28 = v23;
  v28[1] = v25;
  sub_1000B8FC8(v18, v31);
  sub_100080F0C(v35);
  return sub_1000B902C(v18);
}

uint64_t sub_1000B8D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B8488(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000B8D3C(uint64_t a1)
{
  v2 = sub_1000B8EC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B8D78(uint64_t a1)
{
  v2 = sub_1000B8EC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B8DE4(uint64_t a1)
{
  *(a1 + 8) = sub_1000B9088(&qword_1003CD560, type metadata accessor for LegacyUnfinishedTransactionsTask);
  result = sub_1000B9088(&qword_1003CD568, type metadata accessor for LegacyUnfinishedTransactionsTask);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000B8E68(uint64_t a1)
{
  result = sub_1000B9088(&qword_1003CD570, type metadata accessor for LegacyUnfinishedTransactionsTask);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000B8EC0()
{
  result = qword_1003CD580;
  if (!qword_1003CD580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD580);
  }

  return result;
}

uint64_t sub_1000B8F14(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_100080FB4(a3);
  sub_100098B7C();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_1000B8F74()
{
  result = qword_1003CD590;
  if (!qword_1003CD590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD590);
  }

  return result;
}

uint64_t sub_1000B8FC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyUnfinishedTransactionsTask();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B902C(uint64_t a1)
{
  v2 = type metadata accessor for LegacyUnfinishedTransactionsTask();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B9088(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000B90D0()
{
  result = qword_1003CD5A8;
  if (!qword_1003CD5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD5A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LegacyUnfinishedTransactionsTask.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000B91F0);
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

unint64_t sub_1000B922C()
{
  result = qword_1003CD5B0;
  if (!qword_1003CD5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD5B0);
  }

  return result;
}

unint64_t sub_1000B9284()
{
  result = qword_1003CD5B8;
  if (!qword_1003CD5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD5B8);
  }

  return result;
}

unint64_t sub_1000B92DC()
{
  result = qword_1003CD5C0;
  if (!qword_1003CD5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD5C0);
  }

  return result;
}

uint64_t sub_1000B9398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100080FB4(&unk_1003D20F0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100081D0C(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1000B9468(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100080FB4(&unk_1003D20F0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100081DFC(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for FinishTransactionTask()
{
  result = qword_1003CD620;
  if (!qword_1003CD620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B956C()
{
  sub_100081F84();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1000B95E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x764F746E65696C63 && a2 == 0xEE00656469727265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x746361736E617274 && a2 == 0xED000044496E6F69)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1000B9704(char a1)
{
  if (!a1)
  {
    return 0x764F746E65696C63;
  }

  if (a1 == 1)
  {
    return 0x79654B676F6CLL;
  }

  return 0x746361736E617274;
}

uint64_t sub_1000B9770(void *a1)
{
  v3 = sub_100080FB4(&qword_1003CD680);
  sub_1000890DC();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v12[-v7];
  sub_100086D24(a1, a1[3]);
  sub_1000B9E18();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[15] = 0;
  type metadata accessor for ClientOverride(0);
  sub_1000BA180();
  sub_1000B9F2C(v9, v10);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for FinishTransactionTask();
    v12[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1000B9944@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_100080FB4(&unk_1003D20F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  sub_100080FB4(&qword_1003CD670);
  sub_1000890DC();
  v30 = v8;
  v31 = v7;
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for FinishTransactionTask();
  __chkstk_darwin(v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100086D24(a1, a1[3]);
  sub_1000B9E18();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100080F0C(a1);
  }

  v14 = v13;
  v15 = v30;
  type metadata accessor for ClientOverride(0);
  v34 = 0;
  sub_1000BA180();
  sub_1000B9F2C(v16, v17);
  v18 = v31;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_100086E28(v6, v14);
  v33 = 1;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = (v14 + *(v11 + 20));
  *v20 = v19;
  v20[1] = v21;
  v32 = 2;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = v10;
  v25 = v24;
  (*(v15 + 8))(v23, v18);
  v26 = (v14 + *(v11 + 24));
  *v26 = v22;
  v26[1] = v25;
  sub_1000B9E6C(v14, v29);
  sub_100080F0C(a1);
  return sub_1000B9ED0(v14);
}

uint64_t sub_1000B9C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B95E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000B9C94(uint64_t a1)
{
  v2 = sub_1000B9E18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B9CD0(uint64_t a1)
{
  v2 = sub_1000B9E18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B9D3C(uint64_t a1)
{
  *(a1 + 8) = sub_1000B9F2C(&qword_1003CE260, type metadata accessor for FinishTransactionTask);
  result = sub_1000B9F2C(&qword_1003CD660, type metadata accessor for FinishTransactionTask);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000B9DC0(uint64_t a1)
{
  result = sub_1000B9F2C(&qword_1003CD668, type metadata accessor for FinishTransactionTask);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000B9E18()
{
  result = qword_1003CD678;
  if (!qword_1003CD678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD678);
  }

  return result;
}

uint64_t sub_1000B9E6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinishTransactionTask();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B9ED0(uint64_t a1)
{
  v2 = type metadata accessor for FinishTransactionTask();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B9F2C(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for FinishTransactionTask.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000BA040);
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

unint64_t sub_1000BA07C()
{
  result = qword_1003CD688;
  if (!qword_1003CD688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD688);
  }

  return result;
}

unint64_t sub_1000BA0D4()
{
  result = qword_1003CD690;
  if (!qword_1003CD690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD690);
  }

  return result;
}

unint64_t sub_1000BA12C()
{
  result = qword_1003CD698;
  if (!qword_1003CD698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD698);
  }

  return result;
}

uint64_t sub_1000BA1BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = a1 + *(a3 + 36);

    return sub_100081D0C(v9, a2, v8);
  }
}

uint64_t sub_1000BA258(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 36);

    return sub_100081DFC(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for LegacyTransactionInternal()
{
  result = qword_1003CD6F8;
  if (!qword_1003CD6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000BA324()
{
  sub_1000BA3EC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_1000BA43C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000BA3EC()
{
  if (!qword_1003CD708)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003CD708);
    }
  }
}

void sub_1000BA43C()
{
  if (!qword_1003CD710)
  {
    sub_1000852D4(&unk_1003CD718);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003CD710);
    }
  }
}

uint64_t sub_1000BA4A8(uint64_t a1, int a2)
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

uint64_t sub_1000BA4E8(uint64_t result, int a2, int a3)
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

unint64_t sub_1000BA548(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100383620, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000BA5A4(char a1)
{
  result = 0x73694C7465737361;
  switch(a1)
  {
    case 1:
      result = 0x64692D6D657469;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0x616E2D726566666FLL;
      break;
    case 5:
      result = 0x6573616863727570;
      break;
    case 6:
      result = 0x797469746E617571;
      break;
    case 7:
      result = 0x2D74706965636572;
      break;
    case 8:
      result = 0x4474736575716572;
      break;
    case 9:
      result = 0x746361736E617274;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000BA740@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000BA548(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000BA770@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000BA5A4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000BA7B8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000BA594(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000BA7E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000BA598();
  *a1 = result;
  return result;
}

uint64_t sub_1000BA808(uint64_t a1)
{
  v2 = sub_1000BC6E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000BA844(uint64_t a1)
{
  v2 = sub_1000BC6E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000BA880()
{
  sub_1000892DC();
  v2 = v0;
  v4 = v3;
  sub_100080FB4(&qword_1003CD7B8);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v5);
  sub_1000BD864();
  sub_1000893C0(v4, v4[3]);
  sub_1000BC6E8();
  sub_1000BD8C4();
  sub_1000BD874();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for LegacyTransactionInternal();
  sub_100080FB4(&unk_1003CD718);
  sub_1000BC73C(&unk_1003CD7C8);
  sub_1000BD844();
  sub_1000892B8();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    sub_1000BD810(1);
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for Date();
    sub_1000BC91C(&unk_1003CD7D8);
    sub_1000892B8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000BD7EC(3);
    sub_1000BD7EC(4);
    sub_1000892B8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000BD810(6);
    KeyedEncodingContainer.encode(_:forKey:)();
    v8 = v2[6];
    v10 = v2[7];
    sub_1000BC7F4(v8, v10);
    sub_1000BC860();
    sub_1000BD844();
    sub_1000892B8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000BC8B4(v8, v10);
    v9 = v2[4];
    v11 = v2[5];
    sub_1000BC7F4(v9, v11);
    sub_1000BD844();
    sub_1000892B8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000BC8B4(v9, v11);
    sub_1000BD7EC(9);
  }

  v6 = sub_1000BD8B8();
  v7(v6);
  sub_1000892C4();
}

void sub_1000BAB78()
{
  sub_1000892DC();
  v2 = v1;
  v4 = v3;
  type metadata accessor for Date();
  sub_1000890DC();
  v49 = v6;
  v50 = v5;
  v7 = __chkstk_darwin(v5);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v40 - v10;
  v46 = sub_100080FB4(&qword_1003CD7E8);
  sub_1000890DC();
  v13 = v12;
  sub_100089118();
  __chkstk_darwin(v14);
  v16 = &v40 - v15;
  v51 = type metadata accessor for LegacyTransactionInternal();
  __chkstk_darwin(v51);
  v47 = v2;
  v48 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v2[4];
  sub_1000893C0(v2, v2[3]);
  sub_1000BC6E8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_1000BD854();
    v19 = v48;
    sub_100080F0C(v47);
    if (v16)
    {

      v20 = v49;
      if (!v13)
      {
LABEL_9:
        if (!v18)
        {
          goto LABEL_11;
        }

LABEL_10:
        (*(v20 + 8))(&v19[v51[9]], v50);
        goto LABEL_11;
      }
    }

    else
    {
      v20 = v49;
      if ((v13 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    sub_1000BC8B4(*(v19 + 6), *(v19 + 7));
    if ((v18 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v43 = v4;
  v44 = v9;
  v45 = v13;
  sub_100080FB4(&unk_1003CD718);
  sub_1000BC73C(&unk_1003CD7F0);
  sub_1000BD838();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v21 = v51;
  v22 = v48;
  *&v48[v51[13]] = v52;
  sub_1000BD7C0(1);
  *v22 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v52) = 2;
  sub_1000BC91C(&unk_1003CD800);
  v23 = v50;
  sub_1000BD838();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = v11;
  v25 = *(v49 + 32);
  v26 = v23;
  v27 = v49 + 32;
  v25(&v22[v21[10]], v24, v26);
  sub_1000BD7C0(3);
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = &v22[v21[12]];
  *v29 = v28;
  v29[1] = v30;
  sub_1000BD7C0(4);
  v31 = KeyedDecodingContainer.decode(_:forKey:)();
  v41 = v25;
  v42 = v27;
  *(v22 + 1) = v31;
  *(v22 + 2) = v32;
  LOBYTE(v52) = 5;
  v33 = v44;
  v34 = v50;
  sub_1000BD838();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v41(&v22[v51[9]], v33, v34);
  sub_1000BD7C0(6);
  *(v22 + 3) = KeyedDecodingContainer.decode(_:forKey:)();
  sub_1000BC95C();
  sub_1000BD838();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v22 + 3) = v52;
  sub_1000BD838();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v22 + 2) = v52;
  sub_1000BD7C0(9);
  v35 = KeyedDecodingContainer.decode(_:forKey:)();
  v37 = v36;
  (*(v45 + 8))(v16, v46);
  v38 = v48;
  v39 = &v48[v51[11]];
  *v39 = v35;
  v39[1] = v37;
  sub_1000BC9B0(v38, v43);
  sub_100080F0C(v47);
  sub_1000BCA14(v38);
LABEL_11:
  sub_1000892C4();
}

uint64_t sub_1000BB204(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E697274536C7275 && a2 == 0xE900000000000067;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x657A6953656C6966 && a2 == 0xE800000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x736B6E756863 && a2 == 0xE600000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x73666E6973 && a2 == 0xE500000000000000)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1000BB3AC(char a1)
{
  result = 0x6E697274536C7275;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6973726576;
      break;
    case 2:
      result = 0x657A6953656C6966;
      break;
    case 3:
      result = 0x736B6E756863;
      break;
    case 4:
      result = 0x73666E6973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000BB458(void *a1)
{
  sub_100080FB4(&qword_1003CD798);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v3);
  sub_1000BD864();
  sub_1000893C0(a1, a1[3]);
  sub_1000BC478();
  sub_1000BD8C4();
  sub_1000BD874();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1000892B8();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    sub_1000BD7EC(1);
    sub_1000BD810(2);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_1000BC5DC();
    sub_1000892B8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100080FB4(&qword_1003CD780);
    sub_1000BC630(&unk_1003CD7A8);
    sub_1000892B8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v4 = sub_1000BD8B8();
  return v5(v4);
}

void sub_1000BB658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000892DC();
  v12 = v11;
  v14 = v13;
  sub_100080FB4(&qword_1003CD768);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v15);
  sub_1000893C0(v12, v12[3]);
  sub_1000BC478();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v10)
  {
    sub_100080F0C(v12);
  }

  else
  {
    sub_1000BD880();
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    v28 = v17;
    sub_1000BD880();
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    v27 = v19;
    v26 = v18;
    LOBYTE(v30) = 2;
    sub_1000BD880();
    v25 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v29[0]) = 3;
    sub_1000BC4CC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22 = v30;
    v24 = v31;
    v23 = v32;
    sub_100080FB4(&qword_1003CD780);
    v39 = 4;
    sub_1000BC630(&unk_1003CD788);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v20 = sub_1000BD828();
    v21(v20);
    v29[0] = v16;
    v29[1] = v28;
    v29[2] = v26;
    v29[3] = v27;
    v29[4] = v25;
    v29[5] = v22;
    v29[6] = v24;
    v29[7] = v23;
    v29[8] = a10;
    sub_1000BC574(v29, &v30);
    sub_100080F0C(v12);
    v30 = v16;
    v31 = v28;
    v32 = v26;
    v33 = v27;
    v34 = v25;
    v35 = v22;
    v36 = v24;
    v37 = v23;
    v38 = a10;
    sub_1000BC5AC(&v30);
    memcpy(v14, v29, 0x48uLL);
  }

  sub_1000892C4();
}

uint64_t sub_1000BB9F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702521203 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736568736168 && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7361487261656C63 && a2 == 0xEB00000000736568)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1000BBB00(char a1)
{
  if (!a1)
  {
    return 1702521203;
  }

  if (a1 == 1)
  {
    return 0x736568736168;
  }

  return 0x7361487261656C63;
}

void sub_1000BBB54()
{
  sub_1000892DC();
  v2 = v1;
  sub_100080FB4(&qword_1003CD860);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v3);
  sub_1000BD864();
  sub_1000893C0(v2, v2[3]);
  sub_1000BD2FC();
  sub_1000BD8C4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_100080FB4(&unk_1003D0530);
    sub_1000879E8(&unk_1003CC918);
    sub_1000BD874();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000BD874();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v4 = sub_1000BD8B8();
  v5(v4);
  sub_1000892C4();
}

void sub_1000BBD18()
{
  sub_1000892DC();
  v1 = v0;
  v2 = sub_100080FB4(&qword_1003CD840);
  sub_1000890DC();
  v4 = v3;
  sub_100089118();
  __chkstk_darwin(v5);
  v7 = &v8 - v6;
  sub_1000893C0(v1, v1[3]);
  sub_1000BD2FC();
  sub_1000BD874();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  KeyedDecodingContainer.decode(_:forKey:)();
  sub_100080FB4(&unk_1003D0530);
  v9 = 1;
  sub_1000879E8(&qword_1003CC8F0);
  sub_1000BD8A0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = 2;
  sub_1000BD8A0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v7, v2);
  sub_100080F0C(v1);
  sub_1000892C4();
}

uint64_t sub_1000BBF24(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F666E497064 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1000BBFE0(char a1)
{
  if (a1)
  {
    return 0x6F666E497064;
  }

  else
  {
    return 25705;
  }
}

void sub_1000BC008()
{
  sub_1000892DC();
  v9 = v1;
  v3 = v2;
  v5 = v4;
  sub_100080FB4(&qword_1003CD868);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v6);
  sub_1000BD864();
  sub_1000893C0(v5, v5[3]);
  sub_1000BD350();
  sub_1000BD8C4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_1000BC808(v3, v9);
    sub_1000BC860();
    sub_1000BD844();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10008E168(v3, v9);
  }

  v7 = sub_1000BD8B8();
  v8(v7);
  sub_1000892C4();
}

uint64_t sub_1000BC168(void *a1)
{
  v3 = sub_100080FB4(&qword_1003CD850);
  sub_1000890DC();
  v5 = v4;
  sub_100089118();
  __chkstk_darwin(v6);
  v8 = &v11[-v7];
  v9 = a1[3];
  sub_1000893C0(a1, v9);
  sub_1000BD350();
  sub_1000BD874();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11[16] = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11[15] = 1;
    sub_1000BC95C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v8, v3);
  }

  sub_100080F0C(a1);
  return v9;
}

uint64_t sub_1000BC34C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000BB204(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000BC374@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000BB3A4();
  *a1 = result;
  return result;
}

uint64_t sub_1000BC39C(uint64_t a1)
{
  v2 = sub_1000BC478();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000BC3D8(uint64_t a1)
{
  v2 = sub_1000BC478();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000BC414(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_1000BB658(a1, a2, a3, a4, a5, a6, a7, a8, v11, __src[0]);
  if (!v9)
  {
    memcpy(a9, __src, 0x48uLL);
  }
}

unint64_t sub_1000BC478()
{
  result = qword_1003CD770;
  if (!qword_1003CD770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD770);
  }

  return result;
}

unint64_t sub_1000BC4CC()
{
  result = qword_1003CD778;
  if (!qword_1003CD778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD778);
  }

  return result;
}

unint64_t sub_1000BC520()
{
  result = qword_1003CD790;
  if (!qword_1003CD790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD790);
  }

  return result;
}

unint64_t sub_1000BC5DC()
{
  result = qword_1003CD7A0;
  if (!qword_1003CD7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD7A0);
  }

  return result;
}

unint64_t sub_1000BC630(uint64_t a1)
{
  result = sub_100089454(a1);
  if (!result)
  {
    v4 = v3;
    sub_1000852D4(&qword_1003CD780);
    v4();
    result = sub_100089480();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1000BC694()
{
  result = qword_1003CD7B0;
  if (!qword_1003CD7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD7B0);
  }

  return result;
}

unint64_t sub_1000BC6E8()
{
  result = qword_1003CD7C0;
  if (!qword_1003CD7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD7C0);
  }

  return result;
}

unint64_t sub_1000BC73C(uint64_t a1)
{
  result = sub_100089454(a1);
  if (!result)
  {
    v4 = v3;
    sub_1000852D4(&unk_1003CD718);
    v4();
    result = sub_100089480();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1000BC7A0()
{
  result = qword_1003CD7D0;
  if (!qword_1003CD7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD7D0);
  }

  return result;
}

uint64_t sub_1000BC7F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000BC808(a1, a2);
  }

  return a1;
}

uint64_t sub_1000BC808(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1000BC860()
{
  result = qword_1003CD7E0;
  if (!qword_1003CD7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD7E0);
  }

  return result;
}

uint64_t sub_1000BC8B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10008E168(a1, a2);
  }

  return a1;
}

unint64_t sub_1000BC8C8()
{
  result = qword_1003CD7F8;
  if (!qword_1003CD7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD7F8);
  }

  return result;
}

unint64_t sub_1000BC91C(uint64_t a1)
{
  result = sub_100089454(a1);
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1000BC95C()
{
  result = qword_1003CD808;
  if (!qword_1003CD808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD808);
  }

  return result;
}

uint64_t sub_1000BC9B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyTransactionInternal();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BCA14(uint64_t a1)
{
  v2 = type metadata accessor for LegacyTransactionInternal();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for LegacyTransactionInternal.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LegacyTransactionInternal.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
        JUMPOUT(0x1000BCBC4);
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LegacyHostedAssetInternal.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LegacyHostedAssetInternal.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x1000BCD50);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000BCD88(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_1000BCDA4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000BCDB8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 24))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1000BCE04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1000BCE64(uint64_t a1, int a2)
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

uint64_t sub_1000BCEA4(uint64_t result, int a2, int a3)
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

unint64_t sub_1000BCEF8()
{
  result = qword_1003CD810;
  if (!qword_1003CD810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD810);
  }

  return result;
}

unint64_t sub_1000BCF50()
{
  result = qword_1003CD818;
  if (!qword_1003CD818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD818);
  }

  return result;
}

unint64_t sub_1000BCFA8()
{
  result = qword_1003CD820;
  if (!qword_1003CD820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD820);
  }

  return result;
}

unint64_t sub_1000BD000()
{
  result = qword_1003CD828;
  if (!qword_1003CD828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD828);
  }

  return result;
}

uint64_t sub_1000BD05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000BB9F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000BD084(uint64_t a1)
{
  v2 = sub_1000BD2FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000BD0C0(uint64_t a1)
{
  v2 = sub_1000BD2FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000BD0FC(void *a1@<X8>)
{
  sub_1000BBD18();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
  }
}

uint64_t sub_1000BD15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000BBF24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000BD184(uint64_t a1)
{
  v2 = sub_1000BD350();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000BD1C0(uint64_t a1)
{
  v2 = sub_1000BD350();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BD1FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000BC168(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1000BD250()
{
  result = qword_1003CD830;
  if (!qword_1003CD830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD830);
  }

  return result;
}

unint64_t sub_1000BD2A8()
{
  result = qword_1003CD838;
  if (!qword_1003CD838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD838);
  }

  return result;
}

unint64_t sub_1000BD2FC()
{
  result = qword_1003CD848;
  if (!qword_1003CD848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD848);
  }

  return result;
}

unint64_t sub_1000BD350()
{
  result = qword_1003CD858;
  if (!qword_1003CD858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD858);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LegacyHostedAssetSinfInternal.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000BD470);
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

_BYTE *storeEnumTagSinglePayload for LegacyHostedAssetChunkInternal.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000BD574);
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

unint64_t sub_1000BD5B0()
{
  result = qword_1003CD870;
  if (!qword_1003CD870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD870);
  }

  return result;
}

unint64_t sub_1000BD608()
{
  result = qword_1003CD878;
  if (!qword_1003CD878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD878);
  }

  return result;
}

unint64_t sub_1000BD660()
{
  result = qword_1003CD880;
  if (!qword_1003CD880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD880);
  }

  return result;
}

unint64_t sub_1000BD6B8()
{
  result = qword_1003CD888;
  if (!qword_1003CD888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD888);
  }

  return result;
}

unint64_t sub_1000BD710()
{
  result = qword_1003CD890;
  if (!qword_1003CD890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD890);
  }

  return result;
}

unint64_t sub_1000BD768()
{
  result = qword_1003CD898;
  if (!qword_1003CD898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD898);
  }

  return result;
}

uint64_t sub_1000BD7EC@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t sub_1000BD8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100081D0C(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1000BD9A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100081DFC(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for CustomReceiptURL()
{
  result = qword_1003CD8F8;
  if (!qword_1003CD8F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000BDAA0()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000BDB14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x54786F62646E6173 && a2 == 0xEC0000006E656B6FLL)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1000BDBE0(char a1)
{
  if (a1)
  {
    return 0x54786F62646E6173;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1000BDC18(void *a1)
{
  v3 = sub_100080FB4(&qword_1003CD940);
  sub_1000890DC();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_100086D24(a1, a1[3]);
  sub_1000BE178();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  type metadata accessor for URL();
  sub_1000BE28C(&qword_1003CD408);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for CustomReceiptURL();
    v10[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1000BDDB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  type metadata accessor for URL();
  sub_1000890DC();
  v27 = v5;
  v28 = v4;
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100080FB4(&qword_1003CD930);
  sub_1000890DC();
  v26 = v8;
  __chkstk_darwin(v9);
  v10 = type metadata accessor for CustomReceiptURL();
  __chkstk_darwin(v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100086D24(a1, a1[3]);
  sub_1000BE178();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100080F0C(a1);
  }

  v24 = v12;
  v13 = v27;
  v31 = 0;
  sub_1000BE28C(&qword_1003CD418);
  v14 = v28;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 32))(v24, v7, v14);
  v30 = 1;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v16;
  v18 = sub_1000BE4DC();
  v19(v18);
  v21 = v24;
  v20 = v25;
  v22 = &v24[*(v10 + 20)];
  *v22 = v15;
  v22[1] = v17;
  sub_1000BE1CC(v21, v20);
  sub_100080F0C(a1);
  return sub_1000BE230(v21);
}

uint64_t sub_1000BE0A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000BDB14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000BE0D0(uint64_t a1)
{
  v2 = sub_1000BE178();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000BE10C(uint64_t a1)
{
  v2 = sub_1000BE178();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1000BE178()
{
  result = qword_1003CD938;
  if (!qword_1003CD938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD938);
  }

  return result;
}

uint64_t sub_1000BE1CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomReceiptURL();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BE230(uint64_t a1)
{
  v2 = type metadata accessor for CustomReceiptURL();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000BE28C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CustomReceiptURL.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000BE39CLL);
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

unint64_t sub_1000BE3D8()
{
  result = qword_1003CD948;
  if (!qword_1003CD948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD948);
  }

  return result;
}

unint64_t sub_1000BE430()
{
  result = qword_1003CD950;
  if (!qword_1003CD950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD950);
  }

  return result;
}

unint64_t sub_1000BE488()
{
  result = qword_1003CD958;
  if (!qword_1003CD958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD958);
  }

  return result;
}

uint64_t sub_1000BE4EC()
{
  sub_10008BE9C();
  *(v0 + 120) = v1;
  sub_100080FB4(&qword_1003CD9A0);
  *(v0 + 128) = swift_task_alloc();
  sub_100098AD0();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1000BE580()
{
  sub_10008BE9C();
  v1[5] = &type metadata for StoreKitFeatureFlag;
  v2 = sub_1000B7380();
  sub_1000C43B0(v2);
  v3 = sub_1000C44AC();
  sub_100080F0C(v3);
  if (v0)
  {
    type metadata accessor for TransactionCacheManager();
    v4 = swift_task_alloc();
    v1[17] = v4;
    *v4 = v1;
    v4[1] = sub_1000BE6BC;
    v5 = sub_1000B06F4(v1[15]);

    return sub_100108EE8(v5);
  }

  else
  {
    sub_10008E5A4(0, &unk_1003CE5F0);
    v7 = swift_task_alloc();
    v1[22] = v7;
    *v7 = v1;
    v7[1] = sub_1000BEEBC;
    v8 = sub_1000B06F4(v1[15]);

    return sub_100148CA8(v8);
  }
}

uint64_t sub_1000BE6BC()
{
  sub_10008BE9C();
  v2 = v1;
  sub_10008C070();
  v4 = v3;
  sub_1000AFE64();
  *v5 = v4;
  v6 = *v0;
  sub_100098AB4();
  *v7 = v6;
  *(v4 + 144) = v2;

  v8 = swift_task_alloc();
  *(v4 + 152) = v8;
  *v8 = v6;
  sub_1000B00B4(v8);

  return sub_100109108();
}

uint64_t sub_1000BE7D0()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 216) = v3;

  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000BE8C0()
{
  v52 = v1;
  if (*(v1 + 216))
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v2 = *(v1 + 120);
    v3 = type metadata accessor for SKLogger();
    sub_10007EDA4(v3, qword_1003F26C8);
    sub_1000C43D4();
    _StringGuts.grow(_:)(57);
    v4._countAndFlagsBits = 0xD000000000000037;
    v4._object = 0x8000000100316300;
    String.append(_:)(v4);
    sub_1000C46A0((v2 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID));
    v5 = v51;
    if (qword_1003CBE98 != -1)
    {
      sub_10008BCDC();
    }

    TaskLocal.get()();
    v7 = *(v1 + 104);
    v6 = *(v1 + 112);
    v8 = static os_log_type_t.default.getter();

    Logger.logObject.getter();
    sub_1000B02A4();

    if (os_log_type_enabled(v0, v8))
    {
      v47 = v50;
      v9 = sub_10008E688();
      sub_10008E670();
      *v9 = 136446466;
      sub_10009F0A0();
      v10._countAndFlagsBits = v7;
      v10._object = v6;
      String.append(_:)(v10);
      sub_100098BDC();
      v19 = sub_100098BF8(v11, v12, v13, v14, v15, v16, v17, v18, v45, v47, v49, v50, v51);

      *(v9 + 4) = v19;
      *(v9 + 12) = 2082;
      sub_100080210(v48, v5, &v49);
      sub_1000B03CC();
      *(v9 + 14) = v0;
      _os_log_impl(&_mh_execute_header, v0, v8, "%{public}s%{public}s", v9, 0x16u);
      swift_arrayDestroy();
      sub_100081C28();
      sub_10008BF90();
    }

    else
    {
    }

    sub_100098AA4();
    sub_10008BE10();

    __asm { BRAA            X1, X16 }
  }

  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v20 = *(v1 + 120);
  v21 = type metadata accessor for SKLogger();
  sub_10007EDA4(v21, qword_1003F26C8);
  sub_1000C43D4();
  _StringGuts.grow(_:)(48);

  sub_1000C446C();
  v50 = 0xD00000000000002ELL;
  v51 = v22;
  sub_1000C46A0((v20 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID));
  v23 = v51;
  if (qword_1003CBE98 != -1)
  {
    sub_10008BCDC();
  }

  TaskLocal.get()();
  v25 = *(v1 + 88);
  v24 = *(v1 + 96);
  v26 = static os_log_type_t.default.getter();

  Logger.logObject.getter();
  sub_1000B02A4();

  if (os_log_type_enabled(v0, v26))
  {
    v27 = sub_10008E688();
    sub_10008E670();
    *v27 = 136446466;
    sub_10009F0A0();
    v28._countAndFlagsBits = v25;
    v28._object = v24;
    String.append(_:)(v28);
    sub_100098BDC();
    sub_100098BF8(v29, v30, v31, v32, v33, v34, v35, v36, v45, v46, v49, v50, v51);

    sub_1000C4414();
    sub_100080210(0xD00000000000002ELL, v23, v37);
    sub_1000B03CC();
    *(v27 + 14) = v0;
    sub_10008C0B8(&_mh_execute_header, v38, v39, "%{public}s%{public}s");
    sub_10008BF74();
    sub_10008BF90();
    sub_100081C28();
  }

  else
  {
  }

  v42 = swift_task_alloc();
  *(v1 + 160) = v42;
  *v42 = v1;
  v42[1] = sub_1000BECFC;
  sub_10008BE10();

  return sub_100117F7C();
}

uint64_t sub_1000BECFC()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 168) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000BEDF8()
{
  sub_10008BE9C();

  sub_100098AA4();

  return v0();
}

uint64_t sub_1000BEE58()
{
  sub_10008BE9C();

  sub_100098AC4();

  return v0();
}

uint64_t sub_1000BEEBC()
{
  sub_100098BB4();
  v2 = v1;
  v3 = *v0;
  sub_100098AB4();
  *v4 = v3;
  v5 = *v0;
  *v4 = *v0;
  *(v3 + 184) = v2;

  v6 = swift_task_alloc();
  *(v3 + 192) = v6;
  *v6 = v5;
  v6[1] = sub_1000BEFFC;

  return sub_100149408();
}

uint64_t sub_1000BEFFC()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_100098AD0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000BF0E4()
{
  v3 = v2[16];
  v4 = type metadata accessor for Date();
  sub_100081D0C(v3, 1, v4);
  v5 = sub_1000C44AC();
  sub_1000C4230(v5);
  if (v0 == 1)
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v6 = v2[15];
    v7 = type metadata accessor for SKLogger();
    sub_10007EDA4(v7, qword_1003F26C8);
    sub_1000C43D4();
    _StringGuts.grow(_:)(57);
    v8._countAndFlagsBits = 0xD000000000000037;
    v8._object = 0x8000000100316300;
    String.append(_:)(v8);
    sub_1000C46A0((v6 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID));
    v9 = v58;
    if (qword_1003CBE98 != -1)
    {
      sub_10008BCDC();
    }

    TaskLocal.get()();
    v11 = v2[7];
    v10 = v2[8];
    v12 = static os_log_type_t.default.getter();

    Logger.logObject.getter();
    sub_1000B02A4();

    v13 = os_log_type_enabled(v1, v12);
    v14 = v2[23];
    if (v13)
    {
      v15 = sub_10008E688();
      sub_10008E670();
      *v15 = 136446466;
      sub_10009F0A0();
      v16._countAndFlagsBits = v11;
      v16._object = v10;
      String.append(_:)(v16);
      sub_100098BDC();
      sub_100098BF8(v17, v18, v19, v20, v21, v22, v23, v24, v53, v57, v56, v57, v58);

      sub_1000C4414();
      sub_100080210(v55, v9, v25);
      sub_1000B03CC();
      *(v15 + 14) = v1;
      sub_10008C0B8(&_mh_execute_header, v26, v27, "%{public}s%{public}s");
      sub_10008BF74();
      sub_10008BF90();
      sub_100081C28();
    }

    else
    {
    }

    sub_100098AA4();
    sub_10008BE10();

    __asm { BRAA            X1, X16 }
  }

  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v28 = v2[15];
  v29 = type metadata accessor for SKLogger();
  sub_10007EDA4(v29, qword_1003F26C8);
  sub_1000C43D4();
  _StringGuts.grow(_:)(48);

  sub_1000C446C();
  v59 = v30;
  sub_1000C46A0((v28 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID));
  v31 = v59;
  if (qword_1003CBE98 != -1)
  {
    sub_10008BCDC();
  }

  TaskLocal.get()();
  v33 = v2[9];
  v32 = v2[10];
  v34 = static os_log_type_t.default.getter();

  Logger.logObject.getter();
  sub_1000B02A4();

  if (os_log_type_enabled(v1, v34))
  {
    v35 = sub_10008E688();
    sub_10008E670();
    *v35 = 136446466;
    sub_10009F0A0();
    v36._countAndFlagsBits = v33;
    v36._object = v32;
    String.append(_:)(v36);
    sub_100098BDC();
    sub_100098BF8(v37, v38, v39, v40, v41, v42, v43, v44, v53, v54, v56, 0xD00000000000002ELL, v59);

    sub_1000C4414();
    sub_100080210(0xD00000000000002ELL, v31, v45);
    sub_1000B03CC();
    *(v35 + 14) = v1;
    sub_10008C0B8(&_mh_execute_header, v46, v47, "%{public}s%{public}s");
    sub_10008BF74();
    sub_10008BF90();
    sub_100081C28();
  }

  else
  {
  }

  v50 = swift_task_alloc();
  v2[25] = v50;
  *v50 = v2;
  v50[1] = sub_1000BF514;
  sub_10008BE10();

  return sub_1001495E8();
}

uint64_t sub_1000BF514()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 208) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000BF610()
{
  sub_10008BE9C();

  sub_100098AA4();

  return v1();
}

uint64_t sub_1000BF670()
{
  sub_10008BE9C();

  sub_100098AC4();

  return v1();
}

uint64_t sub_1000BF75C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1000BF81C;

  return sub_1000BE4EC();
}

void sub_1000BF81C()
{
  sub_1000B0004();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  v6 = *(v3 + 24);
  v7 = *(v3 + 16);
  *v5 = *v1;

  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    v9 = sub_1000AFF24();
    v10(v9, v8);
  }

  else
  {
    v11 = sub_1000AFF24();
    v12(v11, 0);
  }

  _Block_release(*(v4 + 32));
  sub_1000B0718();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1000BF998()
{
  sub_10008BE9C();
  if (v1 == 37)
  {
    v6 = swift_task_alloc();
    *(v0 + 24) = v6;
    *v6 = v0;
    sub_1000B00B4(v6);

    return sub_1000C186C();
  }

  else if (v1 == 36)
  {
    v2 = swift_task_alloc();
    v3 = sub_1000B00E0(v2);
    *v3 = v4;
    sub_1000B00B4(v3);

    return sub_1000BFE84();
  }

  else
  {
    sub_100098AA4();

    return v7();
  }
}

uint64_t sub_1000BFAC0()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_100098AC4();

  return v3();
}

uint64_t sub_1000BFC38(int a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v6 = a2;

  v7 = swift_task_alloc();
  v4[5] = v7;
  *v7 = v4;
  v7[1] = sub_1000BFD04;

  return sub_1000BF998();
}

void sub_1000BFD04()
{
  sub_1000B0004();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  v6 = *(v3 + 16);
  *v5 = *v1;

  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    v8 = sub_1000AFF24();
    v9(v8, v7);
  }

  else
  {
    v10 = sub_1000AFF24();
    v11(v10, 0);
  }

  _Block_release(*(v4 + 32));
  sub_1000B0718();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1000BFE84()
{
  sub_10008BE9C();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  sub_100098AD0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000BFF0C()
{
  sub_10008BE9C();
  if (qword_1003CBEA0 != -1)
  {
    sub_1000C43F4();
  }

  v1 = _os_activity_create(&_mh_execute_header, "StoreKit/TransactionPush", qword_1003F2708, OS_ACTIVITY_FLAG_DEFAULT);
  sub_1000C4620(v1);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1000C0008;
  v4 = v0[4];
  v3 = v0[5];

  return sub_1000C035C(v2, v3, v4);
}

uint64_t sub_1000C0008()
{
  sub_10008BE9C();
  sub_10008BEFC();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 64) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000C0134()
{
  sub_100098BB4();
  sub_1000C4478();
  swift_unknownObjectRelease();
  sub_1000C4508();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_1000C01C8()
{
  sub_10008BE9C();
  sub_100098AC4();

  return v0();
}

uint64_t sub_1000C0248()
{
  sub_100098BB4();
  sub_1000C4478();
  swift_unknownObjectRelease();
  sub_1000C4508();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_1000C02DC()
{
  sub_10008BE9C();
  sub_100098AC4();

  return v0();
}

uint64_t sub_1000C035C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  sub_100080FB4(&unk_1003CE2B0);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000C03FC, a2, 0);
}

uint64_t sub_1000C03FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18 = v17[8];
  sub_1000C45B0();
  swift_beginAccess();
  v19 = *(v18 + 112);

  v20 = sub_1000C43E8();
  sub_1001DAB04(v20, v21, v19);
  sub_1000B03CC();
  if (v16)
  {

    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v22 = type metadata accessor for SKLogger();
    sub_10007EDA4(v22, qword_1003F26C8);
    sub_1000AFE34();
    _StringGuts.grow(_:)(45);

    sub_1000C446C();
    v23._countAndFlagsBits = sub_1000C43E8();
    String.append(_:)(v23);
    v24 = static os_log_type_t.default.getter();

    v25 = Logger.logObject.getter();

    if (os_log_type_enabled(v25, v24))
    {
      v26 = sub_10008E688();
      v62 = sub_10008E670();
      *v26 = 136446466;
      v27 = sub_1000B056C(v62);
      v29 = sub_1000C44E0(v27, v28);

      *(v26 + 14) = v29;
      sub_1000C4680(&_mh_execute_header, v30, v31, "%{public}s%{public}s");
      swift_arrayDestroy();
      sub_100081C28();
      sub_100081C28();
    }

    else
    {
    }

    sub_100098AA4();
    sub_10008E654();

    __asm { BRAA            X1, X16 }
  }

  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v32 = type metadata accessor for SKLogger();
  sub_10007EDA4(v32, qword_1003F26C8);
  sub_1000AFE34();
  _StringGuts.grow(_:)(34);

  sub_1000C446C();
  v63 = 0xD000000000000020;
  v33._countAndFlagsBits = sub_1000C43E8();
  String.append(_:)(v33);
  v34 = static os_log_type_t.default.getter();

  v35 = Logger.logObject.getter();

  if (os_log_type_enabled(v35, v34))
  {
    v36 = sub_10008E688();
    v63 = sub_10008E670();
    *v36 = 136446466;
    v37 = sub_1000B056C(v63);
    v39 = sub_1000C44B8(v37, v38);

    *(v36 + 14) = v39;
    sub_1000C4660(&_mh_execute_header, v40, v41, "%{public}s%{public}s");
    sub_10008BF74();
    sub_10008BF90();
    sub_100081C28();
  }

  else
  {
  }

  v44 = v17[9];
  v45 = type metadata accessor for TaskPriority();
  sub_1000C4640(v45);
  sub_1000C4398();
  sub_1000C3F18(v46, v47, v48);
  sub_1000B069C();
  v49 = swift_allocObject();
  sub_1000C4520(v49);
  v50 = v44;
  sub_1000C4580();
  v17[11] = v51;
  sub_1000C4494();

  swift_isUniquelyReferenced_nonNull_native();
  sub_1000C455C();
  *(v18 + 112) = v63;
  swift_endAccess();
  v52 = swift_task_alloc();
  v17[12] = v52;
  sub_100080FB4(&qword_1003CCCB0);
  *v52 = v17;
  v52[1] = sub_1000C083C;
  sub_1000C45D4();
  sub_10008E654();

  return Task.value.getter(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1000C083C()
{
  sub_100098BB4();
  sub_1000C4440();
  sub_1000AFE64();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 104) = v0;

  sub_1000C4434();
  sub_1000C4428();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000C0950()
{
  sub_10008BE9C();

  sub_100098AA4();

  return v0();
}

uint64_t sub_1000C09B0()
{
  sub_10008BE9C();

  sub_100098AC4();

  return v0();
}

uint64_t sub_1000C0A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v7 = type metadata accessor for ContinuousClock();
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();

  return _swift_task_switch(sub_1000C0AD8, a4, 0);
}

uint64_t sub_1000C0AD8()
{
  sub_100098BB4();
  if (sub_1001A79F8())
  {
    *(v1 + 40) = &type metadata for StoreKitFeatureFlag;
    v2 = sub_1000B7380();
    sub_1000C43B0(v2);
    v3 = sub_1000C44AC();
    sub_100080F0C(v3);
    if (v0)
    {
      type metadata accessor for TransactionCacheManager();
      v4 = swift_task_alloc();
      v5 = sub_1000C45BC(v4);
      *v5 = v6;
      v7 = sub_1000C4384(v5);

      return sub_100108EE8(v7);
    }

    else
    {
      sub_10008E5A4(0, &unk_1003CE5F0);
      v10 = swift_task_alloc();
      v11 = sub_1000C45C8(v10);
      *v11 = v12;
      v13 = sub_1000C4384(v11);

      return sub_100148CA8(v13);
    }
  }

  else
  {
    static Clock<>.continuous.getter();
    v9 = sub_1000C4600();
    *(v1 + 192) = v9;
    *v9 = v1;
    v9[1] = sub_1000C0CA0;
    sub_1000B06F4(5000000000000000000);
    sub_100098AD0();

    return v14();
  }
}

uint64_t sub_1000C0CA0()
{
  sub_1000B0004();
  sub_1000C4440();
  sub_1000AFE64();
  *v4 = v3;
  v5 = v1[23];
  v6 = v1[22];
  v7 = v1[21];
  *v4 = *v2;
  *(v3 + 200) = v0;

  (*(v6 + 8))(v5, v7);
  sub_1000C4434();
  sub_1000C4428();
  sub_1000B0718();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1000C0E0C()
{
  sub_10008BE9C();
  *(v1 + 40) = &type metadata for StoreKitFeatureFlag;
  v2 = sub_1000B7380();
  sub_1000C43B0(v2);
  v3 = sub_1000C44AC();
  sub_100080F0C(v3);
  if (v0)
  {
    type metadata accessor for TransactionCacheManager();
    v4 = swift_task_alloc();
    v5 = sub_1000C45BC(v4);
    *v5 = v6;
    v7 = sub_1000C4384(v5);

    return sub_100108EE8(v7);
  }

  else
  {
    sub_10008E5A4(0, &unk_1003CE5F0);
    v9 = swift_task_alloc();
    v10 = sub_1000C45C8(v9);
    *v10 = v11;
    v12 = sub_1000C4384(v10);

    return sub_100148CA8(v12);
  }
}

uint64_t sub_1000C0F30()
{
  sub_100098BB4();
  sub_1000C45B0();
  sub_1000C4494();
  v0 = sub_1000C43E8();
  sub_10023E5D8(v0, v1);
  swift_endAccess();
  sub_1000C4544();

  sub_100098AC4();

  return v2();
}

uint64_t sub_1000C0FD0()
{
  sub_10008BE9C();
  v2 = v1;
  sub_10008C070();
  v4 = v3;
  sub_1000AFE64();
  *v5 = v4;
  v6 = *v0;
  sub_100098AB4();
  *v7 = v6;
  *(v4 + 216) = v2;

  v8 = swift_task_alloc();
  *(v4 + 224) = v8;
  *v8 = v6;
  sub_1000B00B4(v8);

  return sub_100117F7C();
}

uint64_t sub_1000C10EC()
{
  sub_100098BB4();
  sub_1000C4440();
  sub_1000AFE64();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 232) = v0;

  sub_1000C4434();
  sub_1000C4428();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000C1200()
{
  sub_100098BB4();

  sub_1000C45F4();
  sub_1000C45A4();
  sub_1000C4494();
  v0 = sub_1000C4514();
  sub_10023E5D8(v0, v1);
  sub_1000C46B8();

  sub_100098AA4();

  return v2();
}

uint64_t sub_1000C12A0()
{
  sub_100098BB4();

  sub_1000C45E8();
  sub_1000C4494();
  v0 = sub_1000C43E8();
  sub_10023E5D8(v0, v1);
  swift_endAccess();
  sub_1000C4544();

  sub_100098AC4();

  return v2();
}

uint64_t sub_1000C1348()
{
  sub_10008BE9C();
  v2 = v1;
  sub_10008C070();
  v4 = v3;
  sub_1000AFE64();
  *v5 = v4;
  v6 = *v0;
  sub_100098AB4();
  *v7 = v6;
  *(v4 + 248) = v2;

  v8 = swift_task_alloc();
  *(v4 + 256) = v8;
  *v8 = v6;
  sub_1000B00B4(v8);

  return sub_1001495E8();
}

uint64_t sub_1000C1460()
{
  sub_100098BB4();
  sub_1000C4440();
  sub_1000AFE64();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 264) = v0;

  sub_1000C4434();
  sub_1000C4428();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000C1574()
{
  sub_100098BB4();
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_1000C1628;

  return sub_1000C2EDC();
}

uint64_t sub_1000C1628()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_1000C4508();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000C1724()
{
  sub_100098BB4();

  sub_1000C45F4();
  sub_1000C45A4();
  sub_1000C4494();
  v1 = sub_1000C4514();
  sub_10023E5D8(v1, v2);
  sub_1000C46B8();

  sub_100098AA4();

  return v3();
}

uint64_t sub_1000C17C4()
{
  sub_100098BB4();

  sub_1000C45E8();
  sub_1000C4494();
  v1 = sub_1000C43E8();
  sub_10023E5D8(v1, v2);
  swift_endAccess();
  sub_1000C4544();

  sub_100098AC4();

  return v3();
}

uint64_t sub_1000C186C()
{
  sub_10008BE9C();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  sub_100098AD0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000C18F4()
{
  sub_10008BE9C();
  if (qword_1003CBEA0 != -1)
  {
    sub_1000C43F4();
  }

  v1 = _os_activity_create(&_mh_execute_header, "StoreKit/SubscriptionPush", qword_1003F2708, OS_ACTIVITY_FLAG_DEFAULT);
  sub_1000C4620(v1);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1000C19F0;
  v4 = v0[4];
  v3 = v0[5];

  return sub_1000C1C44(v2, v3, v4);
}

uint64_t sub_1000C19F0()
{
  sub_10008BE9C();
  sub_10008BEFC();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 64) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000C1B1C()
{
  sub_100098BB4();
  sub_1000C4478();
  swift_unknownObjectRelease();
  sub_1000C4508();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_1000C1BB0()
{
  sub_100098BB4();
  sub_1000C4478();
  swift_unknownObjectRelease();
  sub_1000C4508();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_1000C1C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  sub_100080FB4(&unk_1003CE2B0);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000C1CE4, a2, 0);
}

uint64_t sub_1000C1CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18 = v17[8];
  sub_1000C45B0();
  swift_beginAccess();
  v19 = *(v18 + 120);

  v20 = sub_1000C43E8();
  sub_1001DAB04(v20, v21, v19);
  sub_1000B03CC();
  if (v16)
  {

    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v22 = type metadata accessor for SKLogger();
    sub_10007EDA4(v22, qword_1003F26C8);
    sub_1000AFE34();
    _StringGuts.grow(_:)(45);

    sub_1000C446C();
    v23._countAndFlagsBits = sub_1000C43E8();
    String.append(_:)(v23);
    v24 = static os_log_type_t.default.getter();

    v25 = Logger.logObject.getter();

    if (os_log_type_enabled(v25, v24))
    {
      v26 = sub_10008E688();
      v62 = sub_10008E670();
      *v26 = 136446466;
      v27 = sub_1000B056C(v62);
      v29 = sub_1000C44E0(v27, v28);

      *(v26 + 14) = v29;
      sub_1000C4680(&_mh_execute_header, v30, v31, "%{public}s%{public}s");
      swift_arrayDestroy();
      sub_100081C28();
      sub_100081C28();
    }

    else
    {
    }

    sub_100098AA4();
    sub_10008E654();

    __asm { BRAA            X1, X16 }
  }

  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v32 = type metadata accessor for SKLogger();
  sub_10007EDA4(v32, qword_1003F26C8);
  sub_1000AFE34();
  _StringGuts.grow(_:)(34);

  sub_1000C446C();
  v63 = 0xD000000000000020;
  v33._countAndFlagsBits = sub_1000C43E8();
  String.append(_:)(v33);
  v34 = static os_log_type_t.default.getter();

  v35 = Logger.logObject.getter();

  if (os_log_type_enabled(v35, v34))
  {
    v36 = sub_10008E688();
    v63 = sub_10008E670();
    *v36 = 136446466;
    v37 = sub_1000B056C(v63);
    v39 = sub_1000C44B8(v37, v38);

    *(v36 + 14) = v39;
    sub_1000C4660(&_mh_execute_header, v40, v41, "%{public}s%{public}s");
    sub_10008BF74();
    sub_10008BF90();
    sub_100081C28();
  }

  else
  {
  }

  v44 = v17[9];
  v45 = type metadata accessor for TaskPriority();
  sub_1000C4640(v45);
  sub_1000C4398();
  sub_1000C3F18(v46, v47, v48);
  sub_1000B069C();
  v49 = swift_allocObject();
  sub_1000C4520(v49);
  v50 = v44;
  sub_1000C4580();
  v17[11] = v51;
  sub_1000C4494();

  swift_isUniquelyReferenced_nonNull_native();
  sub_1000C455C();
  *(v18 + 120) = v63;
  swift_endAccess();
  v52 = swift_task_alloc();
  v17[12] = v52;
  sub_100080FB4(&qword_1003CCCB0);
  *v52 = v17;
  v52[1] = sub_1000C2124;
  sub_1000C45D4();
  sub_10008E654();

  return Task.value.getter(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1000C2124()
{
  sub_100098BB4();
  sub_1000C4440();
  sub_1000AFE64();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 104) = v0;

  sub_1000C4434();
  sub_1000C4428();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000C2238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v7 = type metadata accessor for ContinuousClock();
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();

  return _swift_task_switch(sub_1000C22FC, a4, 0);
}

uint64_t sub_1000C22FC()
{
  sub_100098BB4();
  if (sub_1001A79F8())
  {
    *(v1 + 40) = &type metadata for StoreKitFeatureFlag;
    v2 = sub_1000B7380();
    sub_1000C43B0(v2);
    v3 = sub_1000C44AC();
    sub_100080F0C(v3);
    if (v0)
    {
      type metadata accessor for TransactionCacheManager();
      v4 = swift_task_alloc();
      v5 = sub_1000C45BC(v4);
      *v5 = v6;
      v7 = sub_1000C4384(v5);

      return sub_100108EE8(v7);
    }

    else
    {
      sub_10008E5A4(0, &unk_1003CE5F0);
      v10 = swift_task_alloc();
      v11 = sub_1000C45C8(v10);
      *v11 = v12;
      v13 = sub_1000C4384(v11);

      return sub_100148CA8(v13);
    }
  }

  else
  {
    static Clock<>.continuous.getter();
    v9 = sub_1000C4600();
    *(v1 + 192) = v9;
    *v9 = v1;
    v9[1] = sub_1000C24C4;
    sub_1000B06F4(5000000000000000000);
    sub_100098AD0();

    return v14();
  }
}

uint64_t sub_1000C24C4()
{
  sub_1000B0004();
  sub_1000C4440();
  sub_1000AFE64();
  *v4 = v3;
  v5 = v1[23];
  v6 = v1[22];
  v7 = v1[21];
  *v4 = *v2;
  *(v3 + 200) = v0;

  (*(v6 + 8))(v5, v7);
  sub_1000C4434();
  sub_1000C4428();
  sub_1000B0718();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1000C2630()
{
  sub_10008BE9C();
  *(v1 + 40) = &type metadata for StoreKitFeatureFlag;
  v2 = sub_1000B7380();
  sub_1000C43B0(v2);
  v3 = sub_1000C44AC();
  sub_100080F0C(v3);
  if (v0)
  {
    type metadata accessor for TransactionCacheManager();
    v4 = swift_task_alloc();
    v5 = sub_1000C45BC(v4);
    *v5 = v6;
    v7 = sub_1000C4384(v5);

    return sub_100108EE8(v7);
  }

  else
  {
    sub_10008E5A4(0, &unk_1003CE5F0);
    v9 = swift_task_alloc();
    v10 = sub_1000C45C8(v9);
    *v10 = v11;
    v12 = sub_1000C4384(v10);

    return sub_100148CA8(v12);
  }
}

uint64_t sub_1000C2754()
{
  sub_100098BB4();
  sub_1000C45B0();
  sub_1000C4494();
  v0 = sub_1000C43E8();
  sub_10023E5D8(v0, v1);
  swift_endAccess();
  sub_1000C4544();

  sub_100098AC4();

  return v2();
}

uint64_t sub_1000C27F4()
{
  sub_10008BE9C();
  v2 = v1;
  sub_10008C070();
  v4 = v3;
  sub_1000AFE64();
  *v5 = v4;
  v6 = *v0;
  sub_100098AB4();
  *v7 = v6;
  *(v4 + 216) = v2;

  v8 = swift_task_alloc();
  *(v4 + 224) = v8;
  *v8 = v6;
  sub_1000B00B4(v8);

  return sub_10011A138();
}

uint64_t sub_1000C290C()
{
  sub_100098BB4();
  sub_1000C4440();
  sub_1000AFE64();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 232) = v0;

  sub_1000C4434();
  sub_1000C4428();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000C2A20()
{
  sub_100098BB4();

  sub_1000C45F4();
  sub_1000C45A4();
  sub_1000C4494();
  v0 = sub_1000C4514();
  sub_10023E5D8(v0, v1);
  sub_1000C46B8();

  sub_100098AA4();

  return v2();
}

uint64_t sub_1000C2AC0()
{
  sub_100098BB4();

  sub_1000C45E8();
  sub_1000C4494();
  v0 = sub_1000C43E8();
  sub_10023E5D8(v0, v1);
  swift_endAccess();
  sub_1000C4544();

  sub_100098AC4();

  return v2();
}

uint64_t sub_1000C2B68()
{
  sub_10008BE9C();
  v2 = v1;
  sub_10008C070();
  v4 = v3;
  sub_1000AFE64();
  *v5 = v4;
  v6 = *v0;
  sub_100098AB4();
  *v7 = v6;
  *(v4 + 248) = v2;

  v8 = swift_task_alloc();
  *(v4 + 256) = v8;
  *v8 = v6;
  sub_1000B00B4(v8);

  return sub_100149804();
}

uint64_t sub_1000C2C80()
{
  sub_100098BB4();
  sub_1000C4440();
  sub_1000AFE64();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 264) = v0;

  sub_1000C4434();
  sub_1000C4428();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000C2D94()
{
  sub_100098BB4();

  sub_1000C45F4();
  sub_1000C45A4();
  sub_1000C4494();
  v1 = sub_1000C4514();
  sub_10023E5D8(v1, v2);
  sub_1000C46B8();

  sub_100098AA4();

  return v3();
}

uint64_t sub_1000C2E34()
{
  sub_100098BB4();

  sub_1000C45E8();
  sub_1000C4494();
  v1 = sub_1000C43E8();
  sub_10023E5D8(v1, v2);
  swift_endAccess();
  sub_1000C4544();

  sub_100098AC4();

  return v3();
}

uint64_t sub_1000C2EDC()
{
  sub_10008BE9C();
  *(v1 + 80) = v2;
  *(v1 + 88) = v3;
  sub_1000C4398();
  sub_1000C3F18(v4, v5, v6);
  if (v0)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  return _swift_task_switch(sub_1000C2F88, v7, v9);
}

uint64_t sub_1000C2F88()
{
  sub_100098BB4();
  v2 = v0[10];
  v1 = v0[11];
  v0[2] = v0;
  v0[3] = sub_1000C3028;
  v3 = swift_continuation_init();
  sub_1000C30F0(v3, v2, v1);

  return _swift_continuation_await(v0 + 2, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000C3028()
{
  sub_10008BE9C();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;
  sub_100098AC4();

  return v3();
}

uint64_t sub_1000C30F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v21 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v7 = *(v22 - 8);
  __chkstk_darwin(v22);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10008E5A4(0, &qword_1003CC1F0);
  (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v10);
  v14 = static OS_dispatch_queue.global(qos:)();
  (*(v11 + 8))(v13, v10);
  v15 = swift_allocObject();
  v16 = v21;
  v15[2] = v20;
  v15[3] = a3;
  v15[4] = v16;
  aBlock[4] = sub_1000C39D4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019E0C0;
  aBlock[3] = &unk_1003864C0;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_1000C3F18(&qword_1003CCB58, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100080FB4(&qword_1003CCB60);
  sub_10008E34C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v23 + 8))(v6, v4);
  (*(v7 + 8))(v9, v22);
}

uint64_t sub_1000C3484(uint64_t a1, void *a2)
{
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for SKLogger();
  sub_10007EDA4(v4, qword_1003F26C8);
  _StringGuts.grow(_:)(45);

  v20[0] = 0xD00000000000002BLL;
  v20[1] = 0x80000001003161A0;
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  String.append(_:)(v5);
  v6 = static os_log_type_t.default.getter();

  v7 = Logger.logObject.getter();

  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    v20[0] = swift_slowAlloc();
    *v8 = 136446466;
    *(v8 + 4) = sub_100080210(0, 0xE000000000000000, v20);
    *(v8 + 12) = 2082;
    v9 = sub_100080210(0xD00000000000002BLL, 0x80000001003161A0, v20);

    *(v8 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v7, v6, "%{public}s%{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v10 = objc_opt_self();
  v11 = String._bridgeToObjectiveC()();
  if (qword_1003CBE98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v12 = String._bridgeToObjectiveC()();

  [v10 invalidateCacheForBundleID:v11 withLogKey:v12];

  v13 = static os_log_type_t.default.getter();
  v14 = Logger.logObject.getter();
  if (os_log_type_enabled(v14, v13))
  {
    v15 = swift_slowAlloc();
    v20[0] = swift_slowAlloc();
    *v15 = 136446466;
    *(v15 + 4) = sub_100080210(0, 0xE000000000000000, v20);
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_100080210(0xD00000000000002CLL, 0x80000001003161D0, v20);
    _os_log_impl(&_mh_execute_header, v14, v13, "%{public}s%{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  v16 = String._bridgeToObjectiveC()();
  v17 = sub_100039F90(v16);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = String.utf8CString.getter();

  notify_post((v18 + 32));

  return swift_continuation_throwingResume();
}

id sub_1000C38B0()
{
  swift_defaultActor_initialize();
  v0[14] = &_swiftEmptyDictionarySingleton;
  v0[15] = &_swiftEmptyDictionarySingleton;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoreKitPushSyncHandler();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_1000C391C()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000C394C()
{
  sub_1000C391C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000C399C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000C39E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000C39F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_1000C3AF8, 0, 0);
}

uint64_t sub_1000C3AF8()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  type metadata accessor for ContinuousClock();
  sub_1000C3F18(&qword_1003CD990, 255, &type metadata accessor for ContinuousClock);
  sub_1000C43E8();
  dispatch thunk of Clock.now.getter();
  sub_1000C3F18(&qword_1003CD998, 255, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v4 = *(v3 + 8);
  v0[12] = v4;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_1000C3C88;
  v6 = sub_1000B06F4(v0[11]);

  return dispatch thunk of Clock.sleep(until:tolerance:)(v6);
}

uint64_t sub_1000C3C88()
{
  sub_1000B0004();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  sub_100098AB4();
  *v8 = v7;
  *(v3 + 120) = v0;

  v9 = sub_1000C4514();
  v6(v9);
  if (!v0)
  {

    sub_100098AA4();
    sub_1000B0718();

    __asm { BRAA            X1, X16 }
  }

  sub_100098AD0();
  sub_1000B0718();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000C3E14()
{
  sub_10008BE9C();

  sub_100098AC4();

  return v0();
}

uint64_t sub_1000C3E78()
{
  sub_1000B0004();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  v3 = sub_1000C444C(v1);

  return sub_1000C2238(v3, v4, v5, v6, v7);
}

uint64_t sub_1000C3F18(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1000C3F64()
{
  swift_unknownObjectRelease();

  sub_1000B069C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000C3FA8()
{
  sub_1000B0004();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  v3 = sub_1000C444C(v1);

  return sub_1000C0A14(v3, v4, v5, v6, v7);
}

uint64_t sub_1000C4048()
{
  _Block_release(*(v0 + 32));

  sub_1000B069C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000C408C()
{
  sub_1000B0004();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  v1[1] = sub_1000A7644;
  v3 = sub_1000C43E8();

  return v4(v3);
}

uint64_t sub_1000C4140()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000C4188()
{
  sub_100098BB4();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  v1[1] = sub_1000AFC98;
  v3 = sub_1000C43E8();

  return v4(v3);
}

uint64_t sub_1000C4230(uint64_t a1)
{
  v2 = sub_100080FB4(&qword_1003CD9A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C42A4()
{
  sub_10008BE9C();

  return sub_1000C01C8();
}

uint64_t sub_1000C4314()
{
  sub_10008BE9C();

  return sub_1000C02DC();
}

uint64_t sub_1000C43B0(uint64_t a1)
{
  *(v1 + 16) = 2;
  *(v1 + 48) = a1;

  return isFeatureEnabled(_:)();
}

uint64_t sub_1000C43F4()
{

  return swift_once();
}

void sub_1000C4478()
{

  os_activity_scope_leave(v0 + 1);
}

uint64_t sub_1000C4494()
{

  return swift_beginAccess();
}

unint64_t sub_1000C44B8(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v3 + 4) = a1;
  *(v3 + 12) = 2082;

  return sub_100080210(v4, v2, va);
}

unint64_t sub_1000C44E0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v3 + 4) = a1;
  *(v3 + 12) = 2082;

  return sub_100080210(v4, v2, va);
}

uint64_t sub_1000C4520(void *a1)
{
  a1[2] = v1;
  a1[3] = v2;
  a1[4] = v1;
  a1[5] = v3;

  return swift_retain_n();
}

uint64_t sub_1000C4544()
{
}

uint64_t sub_1000C455C()
{

  return sub_10023EC20(v2, v0, v1);
}

void sub_1000C4580()
{

  sub_100235408(0, 0, v1, v0, v2);
}

uint64_t sub_1000C4600()
{

  return swift_task_alloc();
}

void sub_1000C4620(NSObject *a1)
{
  v1[3].opaque[0] = a1;
  v1[1].opaque[1] = 0;
  v1[1].opaque[0] = 0;

  os_activity_scope_enter(a1, v1 + 1);
}

uint64_t sub_1000C4640(uint64_t a1)
{

  return sub_100081DFC(v1, 1, 1, a1);
}

void sub_1000C4660(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void sub_1000C4680(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0x16u);
}

void sub_1000C46A0(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];

  String.append(_:)(*&v2);
}

uint64_t sub_1000C46B8()
{

  return swift_endAccess();
}

NSString sub_1000C46D0()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CD9A8 = result;
  return result;
}

NSString sub_1000C4708()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CD9B0 = result;
  return result;
}

uint64_t sub_1000C4740()
{
  type metadata accessor for LaunchServicesObserver();
  swift_allocObject();
  result = sub_1000C477C();
  qword_1003F2598 = result;
  return result;
}

uint64_t sub_1000C477C()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = qword_1003CBC50;

  if (v2 != -1)
  {
    swift_once();
  }

  [v1 addObserver:v0 selector:"handleEvent:" name:qword_1003CD9A8 object:0];

  v3 = qword_1003CBC58;

  if (v3 != -1)
  {
    swift_once();
  }

  [v1 addObserver:v0 selector:"handleEvent:" name:qword_1003CD9B0 object:0];

  return v0;
}

uint64_t sub_1000C48A0()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  return v0;
}

uint64_t sub_1000C48F8()
{
  sub_1000C48A0();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t sub_1000C492C(uint64_t a1)
{
  type metadata accessor for Notification();
  sub_10008E620();
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v8);
  v9 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100080FB4(&unk_1003CE2B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  result = sub_1000C6BE4();
  if (v14)
  {
    v15 = v14;
    if (result)
    {
    }

    else
    {
      v16 = type metadata accessor for TaskPriority();
      sub_100081DFC(v12, 1, 1, v16);
      (*(v5 + 16))(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v1);
      v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v18 = (v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
      v19 = swift_allocObject();
      *(v19 + 16) = 0;
      *(v19 + 24) = 0;
      (*(v5 + 32))(v19 + v17, v9, v1);
      *(v19 + v18) = v2;
      *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = v15;

      sub_100165CBC();
    }
  }

  return result;
}

uint64_t sub_1000C4B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  return _swift_task_switch(sub_1000C4B60, 0, 0);
}

uint64_t sub_1000C4B60()
{
  v1 = objc_opt_self();
  *(v0 + 56) = v1;
  sub_1000C6F80(0xD000000000000029, 0x80000001003163F0, v1);
  if (qword_1003CBE98 != -1)
  {
    sub_10008BCDC();
  }

  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v2 = *(v0 + 48);
  v3 = type metadata accessor for SKLogger();
  v9 = *(v0 + 32);
  sub_10007EDA4(v3, qword_1003F26C8);
  sub_1001CA63C();
  *(v0 + 64) = v4;
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *(v6 + 16) = v9;
  *(v6 + 32) = v2;
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_1000C4D28;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_1000C4D28()
{
  sub_100098BB4();
  sub_10008C070();
  v2 = *v1;
  sub_100098AB4();
  *v3 = v2;

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_1000C4E5C, 0, 0);
  }
}

uint64_t sub_1000C4E5C()
{
  sub_10008BE9C();
  sub_1000C707C(0xD000000000000029, 0x80000001003163F0, *(v0 + 56));
  sub_100098AC4();

  return v1();
}

uint64_t sub_1000C4ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[6] = a2;

  return _swift_task_switch(sub_1000C4F60, 0, 0);
}

uint64_t sub_1000C4F60()
{
  v1 = Notification.name.getter();
  if (qword_1003CBC50 != -1)
  {
    swift_once();
  }

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {

    goto LABEL_19;
  }

  v7 = sub_1000C71C4();

  if (v7)
  {
LABEL_19:
    if (qword_1003CBEA0 != -1)
    {
      sub_1000C43F4();
    }

    v17 = _os_activity_create(&_mh_execute_header, "StoreKit/AppInstall", qword_1003F2708, OS_ACTIVITY_FLAG_DEFAULT);
    v0[4].opaque[1] = v17;
    v0[2].opaque[1] = 0;
    v0[2].opaque[0] = 0;
    os_activity_scope_enter(v17, v0 + 2);
    v18 = swift_task_alloc();
    v0[5].opaque[0] = v18;
    *v18 = v0;
    v18[1] = sub_1000C52EC;
    v19 = sub_1000B06F4(v0[4].opaque[0]);

    return sub_1000C575C(v19);
  }

  v8 = Notification.name.getter();
  if (qword_1003CBC58 != -1)
  {
    swift_once();
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {
  }

  else
  {
    v14 = sub_1000C71C4();

    if ((v14 & 1) == 0)
    {
      sub_100098AC4();

      return v15();
    }
  }

  if (qword_1003CBEA0 != -1)
  {
    sub_1000C43F4();
  }

  v20 = _os_activity_create(&_mh_execute_header, "StoreKit/AppUninstall", qword_1003F2708, OS_ACTIVITY_FLAG_DEFAULT);
  v0[5].opaque[1] = v20;
  v0[1].opaque[1] = 0;
  v0[1].opaque[0] = 0;
  os_activity_scope_enter(v20, v0 + 1);
  v21 = swift_task_alloc();
  v0[6].opaque[0] = v21;
  *v21 = v0;
  v21[1] = sub_1000C549C;
  v22 = sub_1000B06F4(v0[4].opaque[0]);

  return sub_1000C5F8C(v22);
}

uint64_t sub_1000C52EC()
{
  sub_10008BE9C();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  return _swift_task_switch(sub_1000C5408, 0, 0);
}

uint64_t sub_1000C5408()
{
  sub_10008BE9C();
  os_activity_scope_leave(v0 + 2);
  swift_unknownObjectRelease();
  sub_100098AC4();

  return v1();
}

uint64_t sub_1000C549C()
{
  sub_10008BE9C();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  return _swift_task_switch(sub_1000C55B8, 0, 0);
}

uint64_t sub_1000C55B8()
{
  sub_10008BE9C();
  os_activity_scope_leave(v0 + 1);
  swift_unknownObjectRelease();
  sub_100098AC4();

  return v1();
}

uint64_t sub_1000C575C(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  v3 = sub_10009F0B8();
  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000C5784()
{
  v43 = v0;
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v1 = v0[13];
  v2 = type metadata accessor for SKLogger();
  v3 = sub_10007EDA4(v2, qword_1003F26C8);
  sub_1000C7188(v3);
  _StringGuts.grow(_:)(36);
  sub_1000C71A0(v4, v5, v6, v7, v8, v9, v10, v11, v40, v41, v42);
  v0[11] = v1;
  type metadata accessor for LaunchServicesObserver();
  _print_unlocked<A, B>(_:_:)();
  v12._object = 0x80000001003163D0;
  v12._countAndFlagsBits = 0xD00000000000001FLL;
  String.append(_:)(v12);
  v13._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v13);

  if (qword_1003CBE98 != -1)
  {
    sub_10008BCDC();
  }

  TaskLocal.get()();
  v14 = static os_log_type_t.debug.getter();

  v15 = Logger.logObject.getter();

  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    sub_1000C7130(v17, v18, v19, v20, v21, v22, v23, v24, 4.8752e-34, v40, v41, v42);
    v25._countAndFlagsBits = 8285;
    v25._object = 0xE200000000000000;
    String.append(_:)(v25);
    sub_100080210(v41, v42, &v40);

    v34 = sub_1000C7160(v26, v27, v28, v29, v30, v31, v32, v33, v40);

    *(v16 + 14) = v34;
    sub_10008C0B8(&_mh_execute_header, v35, v36, "%{public}s%{public}s");
    swift_arrayDestroy();
    sub_100081C28();
    sub_100081C28();
  }

  else
  {
  }

  sub_10008E5A4(0, &unk_1003CED80);
  v37 = swift_task_alloc();
  v0[15] = v37;
  *v37 = v0;
  v38 = sub_1000C70E4(v37);

  return sub_10018BD78(v38);
}

uint64_t sub_1000C5A3C()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000C5B20()
{
  sub_10008BE9C();
  v1[5] = &type metadata for StoreKitFeatureFlag;
  v2 = sub_1000B7380();
  v3 = sub_1000C43B0(v2);
  sub_100080F0C(v0);
  if (v3)
  {
    sub_1001CA63C();
    v1[17] = v4;
    v5 = swift_task_alloc();
    v1[18] = v5;
    *v5 = v1;
    sub_1000C70E4(v5);

    return sub_10013E178();
  }

  else
  {
    sub_10008E5A4(0, &unk_1003CE5F0);
    v7 = swift_task_alloc();
    v1[16] = v7;
    *v7 = v1;
    v8 = sub_1000C70E4(v7);

    return sub_100149920(v8);
  }
}

uint64_t sub_1000C5C60()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000C5D44()
{
  sub_10008BE9C();
  sub_1001CA63C();
  *(v0 + 136) = v1;
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  sub_1000C70E4(v2);

  return sub_10013E178();
}

uint64_t sub_1000C5DE4()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000C5EE4()
{
  sub_10008BE9C();
  v0 = [objc_opt_self() sharedManager];
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v0 handleAppInstallWithBundleIDs:isa];

  sub_100098AC4();

  return v2();
}

uint64_t sub_1000C5F8C(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  v3 = sub_10009F0B8();
  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000C5FB4()
{
  v43 = v0;
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v1 = v0[13];
  v2 = type metadata accessor for SKLogger();
  v3 = sub_10007EDA4(v2, qword_1003F26C8);
  sub_1000C7188(v3);
  _StringGuts.grow(_:)(38);
  sub_1000C71A0(v4, v5, v6, v7, v8, v9, v10, v11, v40, v41, v42);
  v0[11] = v1;
  type metadata accessor for LaunchServicesObserver();
  _print_unlocked<A, B>(_:_:)();
  v12._object = 0x80000001003163A0;
  v12._countAndFlagsBits = 0xD000000000000021;
  String.append(_:)(v12);
  v13._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v13);

  if (qword_1003CBE98 != -1)
  {
    sub_10008BCDC();
  }

  TaskLocal.get()();
  v14 = static os_log_type_t.debug.getter();

  v15 = Logger.logObject.getter();

  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    sub_1000C7130(v17, v18, v19, v20, v21, v22, v23, v24, 4.8752e-34, v40, v41, v42);
    v25._countAndFlagsBits = 8285;
    v25._object = 0xE200000000000000;
    String.append(_:)(v25);
    sub_100080210(v41, v42, &v40);

    v34 = sub_1000C7160(v26, v27, v28, v29, v30, v31, v32, v33, v40);

    *(v16 + 14) = v34;
    sub_10008C0B8(&_mh_execute_header, v35, v36, "%{public}s%{public}s");
    swift_arrayDestroy();
    sub_100081C28();
    sub_100081C28();
  }

  else
  {
  }

  sub_10008E5A4(0, &unk_1003CED80);
  v37 = swift_task_alloc();
  v0[15] = v37;
  *v37 = v0;
  v38 = sub_1000C70E4(v37);

  return sub_10018BF2C(v38);
}

uint64_t sub_1000C626C()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000C6350()
{
  sub_10008BE9C();
  v1[5] = &type metadata for StoreKitFeatureFlag;
  v2 = sub_1000B7380();
  v3 = sub_1000C43B0(v2);
  sub_100080F0C(v0);
  if (v3)
  {
    type metadata accessor for AppTransactionCacheManager();
    v4 = swift_task_alloc();
    v1[16] = v4;
    *v4 = v1;
    v5 = sub_1000C70E4(v4);

    return sub_1001D4FAC(v5);
  }

  else
  {
    sub_10008E5A4(0, &unk_1003CE5F0);
    v7 = swift_task_alloc();
    v1[19] = v7;
    *v7 = v1;
    v8 = sub_1000C70E4(v7);

    return sub_1001499E0(v8);
  }
}

uint64_t sub_1000C6480()
{
  sub_100098BB4();
  v1 = *v0;
  v2 = *v0;
  sub_100098AB4();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;

  type metadata accessor for TransactionCacheManager();
  v5 = swift_task_alloc();
  *(v2 + 136) = v5;
  *v5 = v4;
  v5[1] = sub_1000C65C4;
  v6 = sub_1000B06F4(*(v1 + 96));

  return sub_100108970(v6);
}

uint64_t sub_1000C65C4()
{
  sub_100098BB4();
  v1 = *v0;
  v2 = *v0;
  sub_100098AB4();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;

  type metadata accessor for LegacyTransactionManager();
  v5 = swift_task_alloc();
  *(v2 + 144) = v5;
  *v5 = v4;
  v5[1] = sub_1000C6708;
  v6 = sub_1000B06F4(*(v1 + 96));

  return sub_1001A241C(v6);
}

uint64_t sub_1000C6708()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000C67EC()
{
  sub_100098BB4();
  v1 = v0[12];
  v2 = [objc_opt_self() sharedManager];
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v2 handleAppUninstallWithBundleIDs:isa];

  sub_1001CA63C();
  v0[20] = v4;
  v0[21] = v5;
  v6 = *(v1 + 16);
  v0[22] = v6;
  if (v6)
  {
    v7 = v0[12];
    v0[23] = 0;
    v0[24] = *(v7 + 40);

    v8 = swift_task_alloc();
    v0[25] = v8;
    *v8 = v0;
    v9 = sub_1000C70F8(v8);

    return sub_1001978B4(v9, v10, v11, v12, v13, v14);
  }

  else
  {

    sub_100098AC4();

    return v16();
  }
}

uint64_t sub_1000C6924()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000C6A08()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000C6B08()
{
  sub_100098BB4();
  v1 = v0[23] + 1;
  if (v1 == v0[22])
  {

    sub_100098AC4();

    return v2();
  }

  else
  {
    v0[23] = v1;
    v0[24] = *(v0[12] + 16 * v1 + 40);

    v4 = swift_task_alloc();
    v0[25] = v4;
    *v4 = v0;
    v5 = sub_1000C70F8();

    return sub_1001978B4(v5, v6, v7, v8, v9, v10);
  }
}

uint64_t sub_1000C6BE4()
{
  result = Notification.userInfo.getter();
  if (!result)
  {
    return result;
  }

  v1 = result;
  AnyHashable.init<A>(_:)();
  sub_1001DAA40(v2, v1, &v3);
  sub_10008E550(v2);
  if (!v4)
  {

    sub_10008105C(&v3);
    return 0;
  }

  sub_100080FB4(&unk_1003D0530);
  if ((sub_1000C71FC() & 1) == 0)
  {
LABEL_11:

    return 0;
  }

  if (!MEMORY[0x4449656C646E7572])
  {

    goto LABEL_11;
  }

  strcpy(&v3, "isPlaceholder");
  HIWORD(v3) = -4864;
  AnyHashable.init<A>(_:)();
  sub_1001DAA40(v2, v1, &v3);

  sub_10008E550(v2);
  if (v4)
  {
    if (sub_1000C71FC())
    {
      return 98;
    }
  }

  else
  {
    sub_10008105C(&v3);
  }

  return 0;
}

uint64_t sub_1000C6D74()
{
  type metadata accessor for Notification();
  sub_10008E620();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v5, v0);

  return _swift_deallocObject(v1, v7 + 8, v4 | 7);
}

uint64_t sub_1000C6E54()
{
  v2 = *(type metadata accessor for Notification() - 8);
  v3 = (*(v2 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000A7644;
  v7 = sub_1000C71E8();

  return sub_1000C4B3C(v7, v8, v9, v10, v4, v5);
}

void sub_1000C6F80(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 takeKeepAliveTransaction:v4];
}

uint64_t sub_1000C6FD8()
{
  sub_100098BB4();
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000A7644;
  v4 = sub_1000C71E8();

  return sub_1000C4ECC(v4, v5, v6, v2);
}

void sub_1000C707C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 releaseKeepAliveTransaction:v4];
}

void sub_1000C7130(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *v13 = a9;
  v16 = v14;
  v17 = v12;

  String.append(_:)(*&v16);
}

unint64_t sub_1000C7160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v11 + 4) = v12;
  *(v11 + 12) = 2082;

  return sub_100080210(v10, v9, &a9);
}

void sub_1000C71A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 56) = a10;
  *(v11 + 64) = a11;
  v13 = 91;
  v14 = 0xE100000000000000;

  String.append(_:)(*&v13);
}

uint64_t sub_1000C71C4()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000C71FC()
{

  return swift_dynamicCast();
}

uint64_t sub_1000C7230(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100080FB4(&unk_1003D20F0);
  sub_1000B9378();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
LABEL_5:

    return sub_100081D0C(a1 + v9, a2, v8);
  }

  sub_100080FB4(&qword_1003CD4B8);
  sub_1000B9378();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1000C734C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100080FB4(&unk_1003D20F0);
  sub_1000B9378();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    sub_100080FB4(&qword_1003CD4B8);
    sub_1000B9378();
    if (*(v13 + 84) != a3)
    {
      *(a1 + a4[7] + 8) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a4[6];
  }

  sub_100081DFC(a1 + v11, a2, a2, v10);
}

uint64_t type metadata accessor for LegacyRestoreCompletedTransactionsTask()
{
  result = qword_1003CDAC8;
  if (!qword_1003CDAC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000C749C()
{
  sub_1000B784C();
  if (v0 <= 0x3F)
  {
    sub_1000B8434(319, &qword_1003CC5F8, type metadata accessor for ClientOverride);
    if (v1 <= 0x3F)
    {
      sub_1000B8434(319, &unk_1003CD528, type metadata accessor for CustomReceiptURL);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000C7578(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x8000000100316500 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x764F746E65696C63 && a2 == 0xEE00656469727265;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x8000000100316080 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1000C76E4(char a1)
{
  result = 0x764F746E65696C63;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x79654B676F6CLL;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_1000C778C(void *a1)
{
  v3 = sub_100080FB4(&qword_1003CDB30);
  sub_1000890DC();
  v5 = v4;
  sub_100089118();
  __chkstk_darwin(v6);
  v8 = &v14[-v7];
  sub_100086D24(a1, a1[3]);
  sub_1000C7FC8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14[15] = 0;
  sub_1000B9360();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for LegacyRestoreCompletedTransactionsTask();
    v14[14] = 1;
    type metadata accessor for ClientOverride(0);
    sub_1000C8330();
    sub_1000C80DC(v9, v10);
    sub_1000B9360();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14[13] = 2;
    type metadata accessor for CustomReceiptURL();
    sub_1000C8348();
    sub_1000C80DC(v11, v12);
    sub_1000B9360();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14[12] = 3;
    sub_1000B9360();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1000C79AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  sub_100080FB4(&qword_1003CD4B8);
  sub_100089118();
  __chkstk_darwin(v3);
  v33 = v31 - v4;
  sub_100080FB4(&unk_1003D20F0);
  sub_100089118();
  __chkstk_darwin(v5);
  v7 = v31 - v6;
  sub_100080FB4(&qword_1003CDB20);
  sub_1000890DC();
  v34 = v8;
  v35 = v9;
  sub_100089118();
  __chkstk_darwin(v10);
  v11 = type metadata accessor for LegacyRestoreCompletedTransactionsTask();
  sub_100098B7C();
  __chkstk_darwin(v12);
  v14 = (v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100086D24(a1, a1[3]);
  sub_1000C7FC8();
  v15 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return sub_100080F0C(a1);
  }

  v36 = a1;
  v40 = 0;
  v16 = v14;
  *v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14[1] = v17;
  v31[2] = v17;
  type metadata accessor for ClientOverride(0);
  v39 = 1;
  sub_1000C8330();
  sub_1000C80DC(v18, v19);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000B8F14(v7, v14 + v11[5], &unk_1003D20F0);
  type metadata accessor for CustomReceiptURL();
  v38 = 2;
  sub_1000C8348();
  sub_1000C80DC(v20, v21);
  v22 = v33;
  v31[1] = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v23 = v36;
  sub_1000B8F14(v22, v16 + v11[6], &qword_1003CD4B8);
  v37 = 3;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = v25;
  v27 = sub_1000C8360();
  v28(v27);
  v29 = (v16 + v11[7]);
  *v29 = v24;
  v29[1] = v26;
  sub_1000C801C(v16, v32);
  sub_100080F0C(v23);
  return sub_1000C8080(v16);
}

uint64_t sub_1000C7E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000C7578(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000C7E44(uint64_t a1)
{
  v2 = sub_1000C7FC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C7E80(uint64_t a1)
{
  v2 = sub_1000C7FC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C7EEC(uint64_t a1)
{
  *(a1 + 8) = sub_1000C80DC(&qword_1003CDB08, type metadata accessor for LegacyRestoreCompletedTransactionsTask);
  result = sub_1000C80DC(&qword_1003CDB10, type metadata accessor for LegacyRestoreCompletedTransactionsTask);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000C7F70(uint64_t a1)
{
  result = sub_1000C80DC(&qword_1003CDB18, type metadata accessor for LegacyRestoreCompletedTransactionsTask);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000C7FC8()
{
  result = qword_1003CDB28;
  if (!qword_1003CDB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CDB28);
  }

  return result;
}

uint64_t sub_1000C801C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyRestoreCompletedTransactionsTask();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C8080(uint64_t a1)
{
  v2 = type metadata accessor for LegacyRestoreCompletedTransactionsTask();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C80DC(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for LegacyRestoreCompletedTransactionsTask.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000C81F0);
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

unint64_t sub_1000C822C()
{
  result = qword_1003CDB38;
  if (!qword_1003CDB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CDB38);
  }

  return result;
}

unint64_t sub_1000C8284()
{
  result = qword_1003CDB40;
  if (!qword_1003CDB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CDB40);
  }

  return result;
}

unint64_t sub_1000C82DC()
{
  result = qword_1003CDB48;
  if (!qword_1003CDB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CDB48);
  }

  return result;
}

uint64_t sub_1000C8374()
{
  sub_10008BE9C();
  v1[7] = v2;
  v1[8] = v0;
  v3 = swift_task_alloc();
  v1[9] = v3;
  *v3 = v1;
  sub_1000B00B4(v3);

  return sub_10021E694();
}

uint64_t sub_1000C83FC()
{
  sub_100098BB4();
  sub_1000D3DE4();
  v4 = v3;
  sub_1000AFE64();
  *v5 = v4;
  v6 = *v2;
  sub_100098AB4();
  *v7 = v6;
  *(v4 + 80) = v1;

  if (v1)
  {
    sub_1000AFF14();

    return v8();
  }

  else
  {
    *(v4 + 88) = v0;
    v10 = sub_1000D3DB0();

    return _swift_task_switch(v10, v11, v12);
  }
}

uint64_t sub_1000C851C()
{
  sub_100098BB4();
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  sub_1000CD818(v1, v0 + 16);

  if (!v2)
  {
    v4 = *(v0 + 16);
    v5 = *(v0 + 32);
    v6 = *(v0 + 56);
    *(v6 + 32) = *(v0 + 48);
    *v6 = v4;
    *(v6 + 16) = v5;
  }

  sub_100098AC4();

  return v3();
}

uint64_t sub_1000C85B0()
{
  sub_10008BE9C();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  v3 = sub_1000D4010(v2);
  *v3 = v4;
  sub_1000B00B4(v3);

  return sub_10021E694();
}

uint64_t sub_1000C8634()
{
  sub_100098BB4();
  sub_1000D3DE4();
  v4 = v3;
  sub_1000AFE64();
  *v5 = v4;
  v6 = *v2;
  sub_100098AB4();
  *v7 = v6;
  *(v4 + 32) = v1;

  if (v1)
  {
    sub_1000AFF14();

    return v8();
  }

  else
  {
    *(v4 + 40) = v0;
    v10 = sub_1000D3DB0();

    return _swift_task_switch(v10, v11, v12);
  }
}

uint64_t sub_1000C8754()
{
  sub_100098BB4();
  v2 = sub_1000D3E2C();
  v3 = sub_1000CE178(v2);

  sub_10009F198();
  if (!v1)
  {
    v4 = v3;
  }

  return v5(v4);
}

uint64_t sub_1000C87D0()
{
  sub_10008BE9C();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  v3 = sub_1000D4010(v2);
  *v3 = v4;
  sub_1000B00B4(v3);

  return sub_10021E694();
}

uint64_t sub_1000C8854()
{
  sub_100098BB4();
  sub_1000D3DE4();
  v4 = v3;
  sub_1000AFE64();
  *v5 = v4;
  v6 = *v2;
  sub_100098AB4();
  *v7 = v6;
  *(v4 + 32) = v1;

  if (v1)
  {
    sub_1000AFF14();

    return v8();
  }

  else
  {
    *(v4 + 40) = v0;
    v10 = sub_1000D3DB0();

    return _swift_task_switch(v10, v11, v12);
  }
}

uint64_t sub_1000C8974()
{
  sub_100098BB4();
  v2 = sub_1000D3E2C();
  v3 = sub_1000CEAC4(v2);

  sub_10009F198();
  if (!v1)
  {
    v4 = v3;
  }

  return v5(v4);
}

uint64_t sub_1000C89F0()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000C8A80;

  return sub_10021E694();
}

uint64_t sub_1000C8A80()
{
  sub_100098BB4();
  sub_1000D3DE4();
  v4 = v3;
  sub_1000AFE64();
  *v5 = v4;
  v6 = *v2;
  sub_100098AB4();
  *v7 = v6;
  *(v4 + 32) = v1;

  if (v1)
  {
    sub_1000AFF14();

    return v8();
  }

  else
  {
    *(v4 + 40) = v0;
    v10 = sub_1000D3DB0();

    return _swift_task_switch(v10, v11, v12);
  }
}

uint64_t sub_1000C8BA0()
{
  sub_100098BB4();
  v2 = sub_1000D3E2C();
  v3 = sub_1000CF40C(v2);

  sub_10009F198();
  if (!v1)
  {
    v4 = v3;
  }

  return v5(v4);
}

uint64_t sub_1000C8C1C()
{
  sub_10008BE9C();
  v1[2] = v2;
  v1[3] = v0;
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  sub_1000B00B4(v3);

  return sub_10021E694();
}

uint64_t sub_1000C8CA4()
{
  sub_100098BB4();
  sub_1000D3DE4();
  v4 = v3;
  sub_1000AFE64();
  *v5 = v4;
  v6 = *v2;
  sub_100098AB4();
  *v7 = v6;
  *(v4 + 40) = v1;

  if (v1)
  {
    sub_1000AFF14();

    return v8();
  }

  else
  {
    *(v4 + 48) = v0;
    v10 = sub_1000D3DB0();

    return _swift_task_switch(v10, v11, v12);
  }
}

uint64_t sub_1000C8DC4()
{
  v2 = v0[5];
  v1 = v0[6];
  sub_1000CFD54(v1);

  if (!v2)
  {
    v4 = v0[2];
    *v4 = v6;
    *(v4 + 8) = v7;
    *(v4 + 24) = v8;
  }

  sub_100098AC4();

  return v3();
}

uint64_t sub_1000C8E68()
{
  sub_10008BE9C();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  v3 = sub_1000D4010(v2);
  *v3 = v4;
  sub_1000B00B4(v3);

  return sub_10021E694();
}

uint64_t sub_1000C8EEC()
{
  sub_100098BB4();
  sub_1000D3DE4();
  v4 = v3;
  sub_1000AFE64();
  *v5 = v4;
  v6 = *v2;
  sub_100098AB4();
  *v7 = v6;
  *(v4 + 32) = v1;

  if (v1)
  {
    sub_1000AFF14();

    return v8();
  }

  else
  {
    *(v4 + 40) = v0;
    v10 = sub_1000D3DB0();

    return _swift_task_switch(v10, v11, v12);
  }
}

uint64_t sub_1000C900C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = sub_1000D069C(v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;

  if (v1)
  {
    sub_100098AC4();

    return v10();
  }

  else
  {
    v12 = v0[1];

    return v12(v3, v5, v7, v9);
  }
}

uint64_t sub_1000C90F4()
{
  sub_10008BE9C();
  v1[2] = v2;
  v1[3] = v0;
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  sub_1000B00B4(v3);

  return sub_10021E694();
}

uint64_t sub_1000C917C()
{
  sub_100098BB4();
  sub_1000D3DE4();
  v4 = v3;
  sub_1000AFE64();
  *v5 = v4;
  v6 = *v2;
  sub_100098AB4();
  *v7 = v6;
  *(v4 + 40) = v1;

  if (v1)
  {
    sub_1000AFF14();

    return v8();
  }

  else
  {
    *(v4 + 48) = v0;
    v10 = sub_1000D3DB0();

    return _swift_task_switch(v10, v11, v12);
  }
}

uint64_t sub_1000C929C()
{
  sub_100098BB4();
  v1 = *(v0 + 48);
  sub_1000D1958(v1);

  sub_100098AC4();

  return v2();
}

uint64_t sub_1000C9318()
{
  sub_10008BE9C();
  v1[2] = v2;
  v1[3] = v0;
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  sub_1000B00B4(v3);

  return sub_10021E694();
}

uint64_t sub_1000C93A0()
{
  sub_100098BB4();
  sub_1000D3DE4();
  v4 = v3;
  sub_1000AFE64();
  *v5 = v4;
  v6 = *v2;
  sub_100098AB4();
  *v7 = v6;
  *(v4 + 40) = v1;

  if (v1)
  {
    sub_1000AFF14();

    return v8();
  }

  else
  {
    *(v4 + 48) = v0;
    v10 = sub_1000D3DB0();

    return _swift_task_switch(v10, v11, v12);
  }
}

uint64_t sub_1000C94C0()
{
  sub_100098BB4();
  v1 = *(v0 + 48);
  sub_1000D0FE8(v1);

  sub_100098AC4();

  return v2();
}

uint64_t sub_1000C953C()
{
  sub_10008BE9C();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  v3 = sub_1000D4010(v2);
  *v3 = v4;
  sub_1000B00B4(v3);

  return sub_10021E694();
}

uint64_t sub_1000C95C0()
{
  sub_100098BB4();
  sub_1000D3DE4();
  v4 = v3;
  sub_1000AFE64();
  *v5 = v4;
  v6 = *v2;
  sub_100098AB4();
  *v7 = v6;
  *(v4 + 32) = v1;

  if (v1)
  {
    sub_1000AFF14();

    return v8();
  }

  else
  {
    *(v4 + 40) = v0;
    v10 = sub_1000D3DB0();

    return _swift_task_switch(v10, v11, v12);
  }
}

uint64_t sub_1000C96E0()
{
  sub_100098BB4();
  v1 = sub_1000D3E2C();
  sub_1000D22B0(v1);

  sub_100098AC4();

  return v2();
}

uint64_t sub_1000C9754()
{
  sub_10008BE9C();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  v3 = sub_1000D4010(v2);
  *v3 = v4;
  sub_1000B00B4(v3);

  return sub_10021E694();
}

uint64_t sub_1000C97D8()
{
  sub_100098BB4();
  sub_1000D3DE4();
  v4 = v3;
  sub_1000AFE64();
  *v5 = v4;
  v6 = *v2;
  sub_100098AB4();
  *v7 = v6;
  *(v4 + 32) = v1;

  if (v1)
  {
    v8 = *(v6 + 8);

    return v8(0);
  }

  else
  {
    *(v4 + 40) = v0;
    v10 = sub_1000D3DB0();

    return _swift_task_switch(v10, v11, v12);
  }
}

uint64_t sub_1000C9904()
{
  sub_100098BB4();
  v2 = sub_1000D3E2C();
  v3 = sub_1000D2BEC(v2);

  sub_10009F198();
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3 & 1;
  }

  return v4(v5);
}

BOOL sub_1000C9984(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100383730, v2);

  return v3 != 0;
}

uint64_t sub_1000C99E8(void *a1)
{
  v3 = sub_100080FB4(&qword_1003CDC48);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_100086D24(a1, a1[3]);
  sub_1000D3B7C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100080F0C(a1);
  return v7;
}

BOOL sub_1000C9B48@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C9984(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000C9B7C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000C99CC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_1000C9BA8@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C9984(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000C9BD4(uint64_t a1)
{
  v2 = sub_1000D3B7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C9C10(uint64_t a1)
{
  v2 = sub_1000D3B7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C9C4C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000C99E8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1000C9C78(uint64_t a1)
{
  sub_100080FB4(&qword_1003CDB50);
  sub_10008E620();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  v8 = type metadata accessor for LegacyUnfinishedTransactionsRequest();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100080FB4(&unk_1003CE2B0);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  v15 = type metadata accessor for TaskPriority();
  sub_100081DFC(v14, 1, 1, v15);
  v16 = sub_1000D4078();
  sub_1000CAC74(v16, v17);
  (*(v4 + 16))(v7, a1, v1);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = (v10 + *(v4 + 80) + v18) & ~*(v4 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  sub_1000CAE78(v11, v20 + v18);
  (*(v4 + 32))(v20 + v19, v7, v1);
  sub_100165CBC();
}

uint64_t type metadata accessor for LegacyUnfinishedTransactionsRequest()
{
  result = qword_1003CDC10;
  if (!qword_1003CDC10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C9F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = a5;
  return _swift_task_switch(sub_1000C9F30, 0, 0);
}

uint64_t sub_1000C9F30()
{
  sub_10008BE9C();
  v1 = **(v0 + 112);
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  v2[1] = sub_1000C9FC8;

  return sub_1000CB038(v1);
}

uint64_t sub_1000C9FC8()
{
  sub_10008BE9C();
  sub_10008C070();
  *(v2 + 136) = v1;
  *(v2 + 144) = v0;

  sub_100098AD0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000CA0D0()
{
  v37 = v0;
  v1 = v0[17];
  if (v1 < 1)
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v18 = type metadata accessor for SKLogger();
    v19 = sub_10007EDA4(v18, qword_1003F26C8);
    if (qword_1003CBE98 != -1)
    {
      sub_10008BCDC();
    }

    TaskLocal.get()();
    v21 = v0[8];
    v20 = v0[9];
    v22 = static os_log_type_t.default.getter();

    Logger.logObject.getter();
    sub_1000D3ED4();

    if (os_log_type_enabled(v19, v22))
    {
      v23 = sub_10008E688();
      sub_10008E670();
      *v23 = 136446466;
      sub_10009F0F8();
      v34 = v24;
      v35 = v25;
      v36 = v26;
      v27._countAndFlagsBits = v21;
      v27._object = v20;
      String.append(_:)(v27);
      sub_10009F134();
      sub_100080210(v35, v36, &v34);

      sub_1000AFD94();
      *(v23 + 14) = sub_100080210(0xD00000000000001ELL, 0x8000000100316580, &v34);
      sub_1000AFE74(&_mh_execute_header, v28, v29, "%{public}s%{public}s");
      swift_arrayDestroy();
      sub_100081C28();
      sub_100081C28();
    }

    sub_100080FB4(&qword_1003CDB50);
    AsyncStream.Continuation.finish()();
    sub_100098AC4();

    return v30();
  }

  else
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
      v1 = v0[17];
    }

    v2 = type metadata accessor for SKLogger();
    v3 = sub_10007EDA4(v2, qword_1003F26C8);
    _StringGuts.grow(_:)(34);

    v35 = 0x6820726576726553;
    v36 = 0xEB00000000207361;
    v0[13] = v1;
    v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v4);

    v5._object = 0x80000001003165A0;
    v5._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v5);
    v7 = v35;
    v6 = v36;
    if (qword_1003CBE98 != -1)
    {
      sub_10008BCDC();
    }

    v0[19] = qword_1003F2700;
    TaskLocal.get()();
    v9 = v0[10];
    v8 = v0[11];
    v10 = static os_log_type_t.default.getter();

    Logger.logObject.getter();
    sub_1000D3ED4();

    if (os_log_type_enabled(v3, v10))
    {
      v11 = sub_10008E688();
      sub_10008E670();
      *v11 = 136446466;
      sub_10009F0F8();
      v34 = v12;
      v35 = v13;
      v36 = v14;
      v15._countAndFlagsBits = v9;
      v15._object = v8;
      String.append(_:)(v15);
      sub_10009F134();
      v16 = sub_100080210(v35, v36, &v34);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2082;
      v17 = sub_100080210(v7, v6, &v34);

      *(v11 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v3, v10, "%{public}s%{public}s", v11, 0x16u);
      swift_arrayDestroy();
      sub_100081C28();
      sub_100081C28();
    }

    else
    {
    }

    v32 = swift_task_alloc();
    v0[20] = v32;
    *v32 = v0;
    v32[1] = sub_1000CA580;
    v33 = v0[15];

    return sub_1000CB5CC(v33);
  }
}

uint64_t sub_1000CA580()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_100098AD0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000CA668()
{
  v18 = v0;
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v1 = type metadata accessor for SKLogger();
  v2 = sub_10007EDA4(v1, qword_1003F26C8);
  if (qword_1003CBE98 != -1)
  {
    sub_10008BCDC();
  }

  TaskLocal.get()();
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = static os_log_type_t.default.getter();

  Logger.logObject.getter();
  sub_1000D3ED4();

  if (os_log_type_enabled(v2, v5))
  {
    v6 = sub_10008E688();
    sub_10008E670();
    *v6 = 136446466;
    sub_10009F0F8();
    v15 = v7;
    v16 = v8;
    v17 = v9;
    v10._countAndFlagsBits = v4;
    v10._object = v3;
    String.append(_:)(v10);
    sub_10009F134();
    sub_100080210(v16, v17, &v15);

    sub_1000AFD94();
    *(v6 + 14) = sub_100080210(0xD000000000000026, 0x8000000100316550, &v15);
    sub_1000AFE74(&_mh_execute_header, v11, v12, "%{public}s%{public}s");
    swift_arrayDestroy();
    sub_100081C28();
    sub_100081C28();
  }

  sub_100080FB4(&qword_1003CDB50);
  AsyncStream.Continuation.finish()();
  sub_100098AC4();

  return v13();
}

uint64_t sub_1000CA85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  sub_1000D40B0();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  v29 = &off_1003CB000;
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v30 = v26[18];
  v67 = type metadata accessor for SKLogger();
  sub_10007EDA4(v67, qword_1003F26C8);
  a14 = 0;
  a15 = 0xE000000000000000;
  _StringGuts.grow(_:)(45);
  v31 = a15;
  v26[2] = a14;
  v26[3] = v31;
  v32._countAndFlagsBits = 0xD00000000000002BLL;
  v32._object = 0x8000000100316520;
  String.append(_:)(v32);
  v26[12] = v30;
  sub_100080FB4(&qword_1003CCCB0);
  _print_unlocked<A, B>(_:_:)();
  v33 = v26[3];
  v65 = v26[2];
  v34 = &off_1003CB000;
  if (qword_1003CBE98 != -1)
  {
    sub_10008BCDC();
  }

  v66 = qword_1003F2700;
  TaskLocal.get()();
  v35 = v26[4];
  v36 = v26[5];
  v37 = static os_log_type_t.error.getter();

  v38 = Logger.logObject.getter();

  if (os_log_type_enabled(v38, v37))
  {
    v39 = sub_10008E688();
    sub_10008E670();
    *v39 = 136446466;
    sub_10009F0F8();
    a13 = v40;
    a14 = v41;
    a15 = v42;
    v43._countAndFlagsBits = v35;
    v43._object = v36;
    String.append(_:)(v43);
    sub_10009F134();
    sub_100080210(a14, a15, &a13);
    sub_1000D401C();
    *(v39 + 4) = v35;
    *(v39 + 12) = 2082;
    v44 = sub_100080210(v65, v33, &a13);

    *(v39 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v38, v37, "%{public}s%{public}s", v39, 0x16u);
    swift_arrayDestroy();
    v34 = &off_1003CB000;
    sub_100081C28();
    v29 = &off_1003CB000;
    sub_100081C28();
  }

  else
  {
  }

  if (v29[459] != -1)
  {
    sub_100081C08();
  }

  v45 = sub_10007EDA4(v67, qword_1003F26C8);
  if (v34[467] != -1)
  {
    sub_10008BCDC();
  }

  TaskLocal.get()();
  v47 = v26[6];
  v46 = v26[7];
  v48 = static os_log_type_t.default.getter();

  Logger.logObject.getter();
  sub_1000D3ED4();

  if (os_log_type_enabled(v45, v48))
  {
    v49 = sub_10008E688();
    sub_10008E670();
    *v49 = 136446466;
    sub_10009F0F8();
    a13 = v50;
    a14 = v51;
    a15 = v52;
    v53._countAndFlagsBits = v47;
    v53._object = v46;
    String.append(_:)(v53);
    sub_10009F134();
    sub_100080210(a14, a15, &a13);

    sub_1000AFD94();
    *(v49 + 14) = sub_100080210(0xD000000000000026, 0x8000000100316550, &a13);
    sub_1000AFE74(&_mh_execute_header, v54, v55, "%{public}s%{public}s");
    swift_arrayDestroy();
    sub_100081C28();
    sub_100081C28();
  }

  sub_100080FB4(&qword_1003CDB50);
  AsyncStream.Continuation.finish()();
  sub_100098AC4();
  sub_10009F1B8();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, v65, v66, v67, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1000CAC74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyUnfinishedTransactionsRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CACD8()
{
  v2 = (type metadata accessor for LegacyUnfinishedTransactionsRequest() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v15 = *(*v2 + 64);
  sub_100080FB4(&qword_1003CDB50);
  sub_10008E620();
  v6 = v5;
  v7 = *(v5 + 80);
  v9 = *(v8 + 64);
  swift_unknownObjectRelease();

  v10 = v2[7];
  v11 = type metadata accessor for URL();
  if (!sub_100081D0C(v1 + v4 + v10, 1, v11))
  {
    (*(*(v11 - 8) + 8))(v1 + v4 + v10, v11);
  }

  v12 = v3 | v7;
  v13 = (v4 + v15 + v7) & ~v7;
  (*(v6 + 8))(v1 + v13, v0);

  return _swift_deallocObject(v1, v13 + v9, v12 | 7);
}

uint64_t sub_1000CAE78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyUnfinishedTransactionsRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CAEDC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for LegacyUnfinishedTransactionsRequest() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_100080FB4(&qword_1003CDB50) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1000A7644;

  return sub_1000C9F10(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1000CB038(uint64_t a1)
{
  *(v2 + 168) = a1;
  *(v2 + 176) = v1;
  return _swift_task_switch(sub_1000CB058, 0, 0);
}

uint64_t sub_1000CB058()
{
  type metadata accessor for LegacyUnfinishedTransactionsRequest();
  sub_1001A8A94();
  v2 = v1 + 64;
  sub_1000D3F14();
  v5 = v4 & v3;
  v7 = (63 - v6) >> 6;
  v47 = v8;

  v9 = 0;
  v45 = v7;
  v46 = v2;
  if (v5)
  {
LABEL_6:
    while (1)
    {
      v11 = __clz(__rbit64(v5)) | (v9 << 6);
      v12 = *(*(v47 + 48) + 8 * v11);
      sub_100080F58(*(v47 + 56) + 32 * v11, v0 + 24);
      *(v0 + 16) = v12;
      sub_1000D3538(v0 + 16, v0 + 56);
      v13 = *(v0 + 56);
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
      v17 = v12;

      sub_1000D3538(v0 + 16, v0 + 96);
      sub_10008B5D0((v0 + 104), (v0 + 136));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = sub_1000B6328(v14, v16);
      v21 = *(&_swiftEmptyDictionarySingleton + 2);
      v22 = (v20 & 1) == 0;
      v23 = v21 + v22;
      if (__OFADD__(v21, v22))
      {
        break;
      }

      v24 = v19;
      v25 = v20;
      sub_100080FB4(&qword_1003CCA88);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v23))
      {
        v26 = sub_1000B6328(v14, v16);
        if ((v25 & 1) != (v27 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v24 = v26;
      }

      if (v25)
      {

        v28 = (*(&_swiftEmptyDictionarySingleton + 7) + 32 * v24);
        sub_100080F0C(v28);
        sub_10008B5D0((v0 + 136), v28);
        sub_10008B69C(v0 + 16, &qword_1003CDB60);
      }

      else
      {
        sub_1000D3E3C(&_swiftEmptyDictionarySingleton + 8 * (v24 >> 6));
        v29 = (*(&_swiftEmptyDictionarySingleton + 6) + 16 * v24);
        *v29 = v14;
        v29[1] = v16;
        sub_10008B5D0((v0 + 136), (*(&_swiftEmptyDictionarySingleton + 7) + 32 * v24));
        sub_10008B69C(v0 + 16, &qword_1003CDB60);
        v30 = *(&_swiftEmptyDictionarySingleton + 2);
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_25;
        }

        *(&_swiftEmptyDictionarySingleton + 2) = v32;
      }

      v5 &= v5 - 1;
      sub_100080F0C(v0 + 64);
      v7 = v45;
      v2 = v46;
      if (!v5)
      {
        goto LABEL_2;
      }
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
  }

  else
  {
    while (1)
    {
LABEL_2:
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v10 >= v7)
      {
        break;
      }

      v5 = *(v2 + 8 * v10);
      ++v9;
      if (v5)
      {
        v9 = v10;
        goto LABEL_6;
      }
    }

    v33 = *(v0 + 168);

    type metadata accessor for Request();
    v34 = qword_1003CC000;
    v35 = v33;
    if (v34 != -1)
    {
      goto LABEL_26;
    }
  }

  v36 = qword_1003F2868;
  sub_1000D3EB8();
  *(v0 + 184) = sub_10021E3B0(v37, v38, v39, v40, v41, &_swiftEmptyDictionarySingleton);
  sub_1000D3EA8(&unk_1002EF1C0);
  v48 = v42;
  v43 = swift_task_alloc();
  *(v0 + 192) = v43;
  *v43 = v0;
  sub_1000B00B4(v43);

  return v48();
}

uint64_t sub_1000CB404()
{
  sub_100098BB4();
  v3 = v2;
  sub_10008C070();
  v5 = v4;
  sub_1000AFE64();
  *v6 = v5;
  v7 = *v1;
  sub_100098AB4();
  *v8 = v7;
  *(v5 + 200) = v0;

  if (!v0)
  {
    *(v5 + 208) = v3;
  }

  sub_100098AD0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000CB510()
{
  sub_10008BE9C();

  sub_10009F198();
  v2 = *(v0 + 208);

  return v1(v2);
}

uint64_t sub_1000CB570()
{
  sub_10008BE9C();

  sub_100098AC4();

  return v1();
}

uint64_t sub_1000CB5CC(uint64_t a1)
{
  v2[86] = v1;
  v2[85] = a1;
  v3 = sub_100080FB4(&qword_1003CDB58);
  v2[87] = v3;
  v2[88] = *(v3 - 8);
  v2[89] = swift_task_alloc();

  return _swift_task_switch(sub_1000CB69C, 0, 0);
}

void sub_1000CB69C()
{
  v135 = v0;
  v123 = (v0 + 664);
  v124 = (v0 + 296);
  v122 = v0 + 672;
  *(v0 + 720) = **(v0 + 688);
  type metadata accessor for LegacyUnfinishedTransactionsRequest();
  sub_1001A8A94();
  v3 = v2 + 64;
  sub_1000D3F14();
  v6 = v5 & v4;
  v8 = (63 - v7) >> 6;
  v128 = v9;

  v10 = 0;
  v11 = &_swiftEmptyDictionarySingleton;
  v131 = v0;
  v126 = v8;
  v127 = v3;
  if (v6)
  {
LABEL_6:
    while (1)
    {
      v13 = __clz(__rbit64(v6)) | (v10 << 6);
      v14 = *(*(v128 + 48) + 8 * v13);
      sub_100080F58(*(v128 + 56) + 32 * v13, v0 + 24);
      *(v0 + 16) = v14;
      sub_1000D3538(v0 + 16, v0 + 56);
      v15 = *(v0 + 56);
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
      v19 = v14;

      sub_1000D3538(v0 + 16, v0 + 96);
      v1 = sub_1000D416C((v0 + 104), (v0 + 136));
      *v134 = v11;
      v20 = sub_1000D4078();
      sub_1000B6328(v20, v21);
      sub_1000D3E98();
      v11 = (v24 + v25);
      if (__OFADD__(v24, v25))
      {
        break;
      }

      v26 = v22;
      v27 = v23;
      sub_100080FB4(&qword_1003CCA88);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v1, v11))
      {
        v28 = sub_1000D4078();
        v30 = sub_1000B6328(v28, v29);
        if ((v27 & 1) != (v31 & 1))
        {
LABEL_26:

          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          return;
        }

        v26 = v30;
      }

      v0 = v131;
      if (v27)
      {

        v11 = *v134;
        v32 = (*(*v134 + 56) + 32 * v26);
        sub_100080F0C(v32);
        sub_10008B5D0((v131 + 136), v32);
        sub_10008B69C(v131 + 16, &qword_1003CDB60);
      }

      else
      {
        v11 = *v134;
        sub_1000D3E3C(*v134 + 8 * (v26 >> 6));
        v33 = (*(*v134 + 48) + 16 * v26);
        *v33 = v16;
        v33[1] = v18;
        sub_10008B5D0((v131 + 136), (v11[7] + 32 * v26));
        sub_10008B69C(v131 + 16, &qword_1003CDB60);
        v34 = v11[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_73;
        }

        v11[2] = v36;
      }

      v6 &= v6 - 1;
      sub_100080F0C(v131 + 64);
      v8 = v126;
      v3 = v127;
      if (!v6)
      {
        goto LABEL_2;
      }
    }

LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    sub_1000D3DF4();
    goto LABEL_68;
  }

  while (1)
  {
LABEL_2:
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_72;
    }

    if (v12 >= v8)
    {
      break;
    }

    v6 = *(v3 + 8 * v12);
    ++v10;
    if (v6)
    {
      v10 = v12;
      goto LABEL_6;
    }
  }

  sub_1000D4058();

  v37 = _swiftEmptyArrayStorage;
  *(v0 + 664) = _swiftEmptyArrayStorage;
  *(v0 + 728) = type metadata accessor for Request();
  if (!_swiftEmptyArrayStorage[2])
  {
    v6 = 0;
LABEL_30:
    v0 = 1;
    goto LABEL_33;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1000D35A8();
    v37 = v120;
  }

  v38 = v37[2];
  if (!v38)
  {
    __break(1u);
    goto LABEL_76;
  }

  v39 = v38 - 1;
  v6 = v37[v39 + 4];
  v37[2] = v39;
  *v123 = v37;
  if (!v6)
  {
    goto LABEL_30;
  }

  if (*(v6 + 16))
  {

    v40 = sub_1000D3EC8();
    sub_1000B6328(v40, v41);
    if (v42)
    {
      sub_1000D414C();

      *(v131 + 224) = &type metadata for String;
      *(v131 + 200) = v0;
      *(v131 + 208) = v6;
      v43 = sub_1000D416C((v131 + 200), (v131 + 168));
      *(v131 + 672) = v11;
      v44 = sub_1000D3EC8();
      sub_1000B6328(v44, v45);
      sub_1000D3E98();
      v50 = v48 + v49;
      if (__OFADD__(v48, v49))
      {
        __break(1u);
      }

      else
      {
        v10 = v46;
        v51 = v47;
        sub_100080FB4(&qword_1003CCA88);
        v52 = v50;
        v53 = v122;
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v43, v52))
        {
          v54 = sub_1000D3EC8();
          v56 = sub_1000B6328(v54, v55);
          if ((v51 & 1) != (v57 & 1))
          {
            goto LABEL_26;
          }

          v10 = v56;
          v53 = v122;
        }

        v11 = *v53;
        if (v51)
        {
          v70 = (v11[7] + 32 * v10);
          sub_100080F0C(v70);
          v1 = v131;
          sub_10008B5D0((v131 + 168), v70);
          goto LABEL_44;
        }

        sub_1000D3E3C(&v11[v10 >> 6]);
        v71 = (v11[6] + 16 * v10);
        *v71 = v1;
        v71[1] = 0xE700000000000000;
        v1 = v131;
        sub_10008B5D0((v131 + 168), (v11[7] + 32 * v10));
        v72 = v11[2];
        v35 = __OFADD__(v72, 1);
        v73 = v72 + 1;
        if (!v35)
        {
          v11[2] = v73;
          goto LABEL_44;
        }
      }

      __break(1u);
      return;
    }
  }

  v0 = 0;
LABEL_33:
  v58 = sub_1000D3EC8();
  sub_1000B6328(v58, v59);
  if (v60)
  {
    sub_1000D3ED4();
    swift_isUniquelyReferenced_nonNull_native();
    *v134 = v11;
    v11 = v11[3];
    v61 = sub_100080FB4(&qword_1003CCA88);
    sub_1000D412C(v61, v62, v63, v64, v65, v66, v67, v68, v121, v122, v123, v124, v126, v127, v128, v131, v134[0]);
    sub_1000D40EC();
    v1 = v131;
    sub_10008B5D0((v11[7] + 32 * v10), (v131 + 232));
    _NativeDictionary._delete(at:)();
  }

  else
  {
    v1 = v131;
    *(v131 + 248) = 0u;
    *(v131 + 232) = 0u;
  }

  sub_10008B69C(v1 + 232, &unk_1003CCB70);
  if (v0)
  {
    v69 = 1;
    goto LABEL_49;
  }

LABEL_44:
  if (*(v6 + 16))
  {

    sub_1000B6328(0x6449646E65, 0xE500000000000000);
    if (v74)
    {
      sub_1000D414C();

      *(v1 + 288) = &type metadata for String;
      *(v1 + 264) = v0;
      *(v1 + 272) = v6;
      sub_1000D416C((v1 + 264), (v1 + 328));
      *v134 = v11;
      sub_10023E7C0();
      goto LABEL_60;
    }
  }

  v69 = 0;
LABEL_49:
  sub_1000B6328(0x6449646E65, 0xE500000000000000);
  if (v75)
  {
    sub_1000D3ED4();
    swift_isUniquelyReferenced_nonNull_native();
    *v134 = v11;
    v11 = v11[3];
    v76 = sub_100080FB4(&qword_1003CCA88);
    sub_1000D412C(v76, v77, v78, v79, v80, v81, v82, v83, v121, v122, v123, v124, v126, v127, v128, v131, v134[0]);
    sub_1000D40EC();
    v84 = v125;
    sub_10008B5D0((v11[7] + 32 * v10), v125);
    _NativeDictionary._delete(at:)();
  }

  else
  {
    v84 = v124;
    *v124 = 0u;
    v124[1] = 0u;
  }

  sub_10008B69C(v84, &unk_1003CCB70);
  if ((v69 & 1) == 0)
  {
LABEL_60:
    v0 = 0x8000000100316640;
    v94 = qword_1003CBE58;

    if (v94 == -1)
    {
LABEL_61:
      v95 = type metadata accessor for SKLogger();
      sub_10007EDA4(v95, qword_1003F26C8);
      *(v1 + 584) = 0;
      *(v1 + 592) = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      *(v1 + 568) = 0xD000000000000023;
      *(v1 + 576) = v0;
      v96 = Dictionary.description.getter();
      v98 = v97;
      v132 = v6;

      v99._countAndFlagsBits = v96;
      v99._object = v98;
      String.append(_:)(v99);

      v100 = *(v1 + 568);
      v101 = *(v1 + 576);
      if (qword_1003CBE98 != -1)
      {
        sub_10008BCDC();
      }

      v86 = qword_1003F2700;
      TaskLocal.get()();
      v102 = *(v1 + 600);
      v103 = *(v1 + 608);
      v104 = v1;
      v105 = static os_log_type_t.default.getter();

      v106 = Logger.logObject.getter();

      if (os_log_type_enabled(v106, v105))
      {
        v130 = v86;
        v107 = sub_10008E688();
        *v134 = sub_10008E670();
        *v107 = 136446466;
        sub_1000D3E14();
        v108._countAndFlagsBits = v102;
        v108._object = v103;
        String.append(_:)(v108);
        sub_10009F134();
        sub_100080210(*(v104 + 616), *(v104 + 624), v134);
        sub_1000D401C();
        *(v107 + 4) = v102;
        *(v107 + 12) = 2082;
        v109 = sub_100080210(v100, v101, v134);

        *(v107 + 14) = v109;
        _os_log_impl(&_mh_execute_header, v106, v105, "%{public}s%{public}s", v107, 0x16u);
        swift_arrayDestroy();
        sub_1000D3E6C();
        v86 = v130;
        sub_100081C28();
      }

      else
      {
      }

      v93 = 0;
      v1 = v104;
      goto LABEL_67;
    }

LABEL_76:
    sub_100081C08();
    goto LABEL_61;
  }

  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v132 = v6;
  v85 = type metadata accessor for SKLogger();
  sub_10007EDA4(v85, qword_1003F26C8);
  if (qword_1003CBE98 != -1)
  {
    sub_10008BCDC();
  }

  v86 = qword_1003F2700;
  TaskLocal.get()();
  v87 = *(v1 + 632);
  v88 = *(v1 + 640);
  v89 = static os_log_type_t.default.getter();

  v90 = Logger.logObject.getter();

  if (os_log_type_enabled(v90, v89))
  {
    v129 = v86;
    v91 = sub_10008E688();
    *v134 = sub_10008E670();
    *v91 = 136446466;
    *(v1 + 552) = 91;
    *(v1 + 560) = 0xE100000000000000;
    v92._countAndFlagsBits = v87;
    v92._object = v88;
    String.append(_:)(v92);
    sub_10009F134();
    sub_100080210(*(v1 + 552), *(v1 + 560), v134);
    sub_1000D401C();
    *(v91 + 4) = v87;
    *(v91 + 12) = 2082;
    *(v91 + 14) = sub_100080210(0xD00000000000001DLL, 0x80000001003165C0, v134);
    _os_log_impl(&_mh_execute_header, v90, v89, "%{public}s%{public}s", v91, 0x16u);
    swift_arrayDestroy();
    sub_1000D3E6C();
    v86 = v129;
    sub_100081C28();
  }

  v93 = 1;
LABEL_67:
  *(v1 + 760) = v11;
  *(v1 + 752) = v86;
  *(v1 + 744) = v11;
  *(v1 + 792) = v93;
  *(v1 + 736) = v132;
  v110 = qword_1003CC008;
  v111 = *(v1 + 720);
  if (v110 != -1)
  {
    goto LABEL_74;
  }

LABEL_68:
  v112 = qword_1003F2870;

  sub_1000D3EB8();
  *(v1 + 768) = sub_10021E3B0(v113, v114, v115, v116, v117, v11);
  sub_1000D3EA8(&dword_1002EF1B0);
  v133 = v118;
  v119 = swift_task_alloc();
  *(v1 + 776) = v119;
  *v119 = v1;
  sub_1000D3DC4(v119);

  v133(v1 + 360);
}

uint64_t sub_1000CC1F4()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 784) = v0;

  if (!v0)
  {
  }

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000CD818@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_1001571E8();
  if (!v7)
  {
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for SKLogger();
    sub_10007EDA4(v22, qword_1003F26C8);
    v23 = *(v2 + OBJC_IVAR____TtC9storekitd7Request_logKey);
    v24 = *(v2 + OBJC_IVAR____TtC9storekitd7Request_logKey + 8);

    v25 = static os_log_type_t.error.getter();

    v26 = Logger.logObject.getter();

    if (os_log_type_enabled(v26, v25))
    {
      v27 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v27 = 136446466;
      v28._countAndFlagsBits = v23;
      v28._object = v24;
      String.append(_:)(v28);
      v29._countAndFlagsBits = 8285;
      v29._object = 0xE200000000000000;
      String.append(_:)(v29);
      v30 = sub_100080210(91, 0xE100000000000000, &v71);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2082;
      *(v27 + 14) = sub_100080210(0xD000000000000045, 0x8000000100316670, &v71);
      _os_log_impl(&_mh_execute_header, v26, v25, "%{public}s%{public}s", v27, 0x16u);
      swift_arrayDestroy();
    }

    v31 = [a1 responseCorrelationId];
    goto LABEL_16;
  }

  v8 = v6;
  v9 = v7;

  v10 = sub_10021E46C();
  if (v10 == 2)
  {
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for SKLogger();
    sub_10007EDA4(v11, qword_1003F26C8);
    _StringGuts.grow(_:)(37);

    v12._countAndFlagsBits = v8;
    v12._object = v9;
    String.append(_:)(v12);

    v13 = *(v2 + OBJC_IVAR____TtC9storekitd7Request_logKey);
    v14 = *(v2 + OBJC_IVAR____TtC9storekitd7Request_logKey + 8);

    v15 = static os_log_type_t.error.getter();

    v16 = Logger.logObject.getter();

    if (os_log_type_enabled(v16, v15))
    {
      v17 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v17 = 136446466;
      v18._countAndFlagsBits = v13;
      v18._object = v14;
      String.append(_:)(v18);
      v19._countAndFlagsBits = 8285;
      v19._object = 0xE200000000000000;
      String.append(_:)(v19);
      v20 = sub_100080210(91, 0xE100000000000000, &v71);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2082;
      v21 = sub_100080210(0xD000000000000023, 0x80000001003166C0, &v71);

      *(v17 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v16, v15, "%{public}s%{public}s", v17, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v31 = [a1 responseCorrelationId];
LABEL_16:
    v37 = v31;
    if (v37)
    {
      v38 = v37;
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    sub_1000D35BC();
    swift_allocError();
    *v42 = v39;
    v42[1] = v41;
    return swift_willThrow();
  }

  v32 = v10;

  if (v32)
  {
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    v33 = [a1 data];
    v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    sub_1000D3720();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v44 = [a1 data];
    v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v45;

    sub_1000D3720();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  }

  if (v3)
  {
    sub_10008E168(v34, v36);
    v66 = a1;

    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for SKLogger();
    sub_10007EDA4(v46, qword_1003F26C8);
    _StringGuts.grow(_:)(40);
    v47._object = 0x80000001003166F0;
    v47._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v47);
    _print_unlocked<A, B>(_:_:)();
    v48._countAndFlagsBits = 0x736E6F7073657220;
    v48._object = 0xEF206F746E692065;
    String.append(_:)(v48);
    v49._countAndFlagsBits = 0xD00000000000001ALL;
    v49._object = 0x80000001003167A0;
    String.append(_:)(v49);
    v50._countAndFlagsBits = 8250;
    v50._object = 0xE200000000000000;
    String.append(_:)(v50);
    v71 = v3;
    sub_100080FB4(&qword_1003CCCB0);
    _print_unlocked<A, B>(_:_:)();
    v52 = *(v2 + OBJC_IVAR____TtC9storekitd7Request_logKey);
    v51 = *(v2 + OBJC_IVAR____TtC9storekitd7Request_logKey + 8);

    v53 = static os_log_type_t.error.getter();

    v54 = Logger.logObject.getter();

    if (os_log_type_enabled(v54, v53))
    {
      v55 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v55 = 136446466;
      v56._countAndFlagsBits = v52;
      v56._object = v51;
      String.append(_:)(v56);
      v57._countAndFlagsBits = 8285;
      v57._object = 0xE200000000000000;
      String.append(_:)(v57);
      v58 = sub_100080210(91, 0xE100000000000000, &v71);

      *(v55 + 4) = v58;
      *(v55 + 12) = 2082;
      v59 = sub_100080210(0, 0xE000000000000000, &v71);

      *(v55 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v54, v53, "%{public}s%{public}s", v55, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v60 = [v66 responseCorrelationId];
    if (v60)
    {
      v61 = v60;
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;
    }

    else
    {
      v62 = 0;
      v64 = 0;
    }

    sub_1000D35BC();
    swift_allocError();
    *v65 = v62;
    v65[1] = v64;
    swift_willThrow();
  }

  else
  {
    sub_10008E168(v34, v36);

    *a2 = v67;
    *(a2 + 8) = v68;
    *(a2 + 24) = v69;
    *(a2 + 32) = v70;
  }

  return result;
}

uint64_t sub_1000CE178(void *a1)
{
  v4 = sub_1001571E8();
  if (!v5)
  {
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for SKLogger();
    sub_10007EDA4(v21, qword_1003F26C8);
    v22 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey);
    v23 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey + 8);

    v24 = static os_log_type_t.error.getter();

    v25 = Logger.logObject.getter();

    if (os_log_type_enabled(v25, v24))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 136446466;
      v68[0] = v27;
      v28._countAndFlagsBits = v22;
      v28._object = v23;
      String.append(_:)(v28);
      v29._countAndFlagsBits = 8285;
      v29._object = 0xE200000000000000;
      String.append(_:)(v29);
      v30 = sub_100080210(91, 0xE100000000000000, v68);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2082;
      *(v26 + 14) = sub_100080210(0xD000000000000045, 0x8000000100316670, v68);
      _os_log_impl(&_mh_execute_header, v25, v24, "%{public}s%{public}s", v26, 0x16u);
      swift_arrayDestroy();
    }

    v31 = [a1 responseCorrelationId];
    goto LABEL_16;
  }

  v6 = v4;
  v7 = v5;

  v8 = sub_10021E46C();
  if (v8 == 2)
  {
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for SKLogger();
    sub_10007EDA4(v9, qword_1003F26C8);
    _StringGuts.grow(_:)(37);

    v10._countAndFlagsBits = v6;
    v10._object = v7;
    String.append(_:)(v10);

    v11 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey);
    v12 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey + 8);

    v13 = static os_log_type_t.error.getter();

    v14 = Logger.logObject.getter();

    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 136446466;
      v68[0] = v16;
      v17._countAndFlagsBits = v11;
      v17._object = v12;
      String.append(_:)(v17);
      v18._countAndFlagsBits = 8285;
      v18._object = 0xE200000000000000;
      String.append(_:)(v18);
      v19 = sub_100080210(91, 0xE100000000000000, v68);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      v20 = sub_100080210(0xD000000000000023, 0x80000001003166C0, v68);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v14, v13, "%{public}s%{public}s", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v31 = [a1 responseCorrelationId];
LABEL_16:
    v37 = v31;
    if (v37)
    {
      v38 = v37;
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    sub_1000D35BC();
    swift_allocError();
    *v42 = v39;
    v42[1] = v41;
    return swift_willThrow();
  }

  v32 = v8;

  if (v32)
  {
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    v33 = [a1 data];
    v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    sub_1000D3774();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v44 = [a1 data];
    v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v45;

    sub_1000D3774();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  }

  if (v2)
  {
    sub_10008E168(v34, v36);
    v67 = a1;

    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for SKLogger();
    sub_10007EDA4(v46, qword_1003F26C8);
    _StringGuts.grow(_:)(40);
    v47._object = 0x80000001003166F0;
    v47._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v47);
    _print_unlocked<A, B>(_:_:)();
    v48._countAndFlagsBits = 0x736E6F7073657220;
    v48._object = 0xEF206F746E692065;
    String.append(_:)(v48);
    v49._countAndFlagsBits = 0xD00000000000003FLL;
    v49._object = 0x80000001003167C0;
    String.append(_:)(v49);
    v50._countAndFlagsBits = 8250;
    v50._object = 0xE200000000000000;
    String.append(_:)(v50);
    v68[0] = v2;
    sub_100080FB4(&qword_1003CCCB0);
    _print_unlocked<A, B>(_:_:)();
    v52 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey);
    v51 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey + 8);

    v53 = static os_log_type_t.error.getter();

    v54 = Logger.logObject.getter();

    if (os_log_type_enabled(v54, v53))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 136446466;
      v68[0] = v56;
      v57._countAndFlagsBits = v52;
      v57._object = v51;
      String.append(_:)(v57);
      v58._countAndFlagsBits = 8285;
      v58._object = 0xE200000000000000;
      String.append(_:)(v58);
      v59 = sub_100080210(91, 0xE100000000000000, v68);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2082;
      v60 = sub_100080210(0, 0xE000000000000000, v68);

      *(v55 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v54, v53, "%{public}s%{public}s", v55, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v61 = [v67 responseCorrelationId];
    if (v61)
    {
      v62 = v61;
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;
    }

    else
    {
      v63 = 0;
      v65 = 0;
    }

    sub_1000D35BC();
    swift_allocError();
    *v66 = v63;
    v66[1] = v65;
    swift_willThrow();
  }

  else
  {
    sub_10008E168(v34, v36);

    return v68[2];
  }
}

uint64_t sub_1000CEAC4(void *a1)
{
  v4 = sub_1001571E8();
  if (!v5)
  {
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for SKLogger();
    sub_10007EDA4(v21, qword_1003F26C8);
    v22 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey);
    v23 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey + 8);

    v24 = static os_log_type_t.error.getter();

    v25 = Logger.logObject.getter();

    if (os_log_type_enabled(v25, v24))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 136446466;
      v68[0] = v27;
      v28._countAndFlagsBits = v22;
      v28._object = v23;
      String.append(_:)(v28);
      v29._countAndFlagsBits = 8285;
      v29._object = 0xE200000000000000;
      String.append(_:)(v29);
      v30 = sub_100080210(91, 0xE100000000000000, v68);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2082;
      *(v26 + 14) = sub_100080210(0xD000000000000045, 0x8000000100316670, v68);
      _os_log_impl(&_mh_execute_header, v25, v24, "%{public}s%{public}s", v26, 0x16u);
      swift_arrayDestroy();
    }

    v31 = [a1 responseCorrelationId];
    goto LABEL_16;
  }

  v6 = v4;
  v7 = v5;

  v8 = sub_10021E46C();
  if (v8 == 2)
  {
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for SKLogger();
    sub_10007EDA4(v9, qword_1003F26C8);
    _StringGuts.grow(_:)(37);

    v10._countAndFlagsBits = v6;
    v10._object = v7;
    String.append(_:)(v10);

    v11 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey);
    v12 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey + 8);

    v13 = static os_log_type_t.error.getter();

    v14 = Logger.logObject.getter();

    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 136446466;
      v68[0] = v16;
      v17._countAndFlagsBits = v11;
      v17._object = v12;
      String.append(_:)(v17);
      v18._countAndFlagsBits = 8285;
      v18._object = 0xE200000000000000;
      String.append(_:)(v18);
      v19 = sub_100080210(91, 0xE100000000000000, v68);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      v20 = sub_100080210(0xD000000000000023, 0x80000001003166C0, v68);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v14, v13, "%{public}s%{public}s", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v31 = [a1 responseCorrelationId];
LABEL_16:
    v37 = v31;
    if (v37)
    {
      v38 = v37;
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    sub_1000D35BC();
    swift_allocError();
    *v42 = v39;
    v42[1] = v41;
    return swift_willThrow();
  }

  v32 = v8;

  if (v32)
  {
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    v33 = [a1 data];
    v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    sub_1000D36CC();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v44 = [a1 data];
    v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v45;

    sub_1000D36CC();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  }

  if (v2)
  {
    sub_10008E168(v34, v36);
    v67 = a1;

    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for SKLogger();
    sub_10007EDA4(v46, qword_1003F26C8);
    _StringGuts.grow(_:)(40);
    v47._object = 0x80000001003166F0;
    v47._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v47);
    _print_unlocked<A, B>(_:_:)();
    v48._countAndFlagsBits = 0x736E6F7073657220;
    v48._object = 0xEF206F746E692065;
    String.append(_:)(v48);
    v49._countAndFlagsBits = 0xD00000000000001ALL;
    v49._object = 0x8000000100316780;
    String.append(_:)(v49);
    v50._countAndFlagsBits = 8250;
    v50._object = 0xE200000000000000;
    String.append(_:)(v50);
    v68[0] = v2;
    sub_100080FB4(&qword_1003CCCB0);
    _print_unlocked<A, B>(_:_:)();
    v52 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey);
    v51 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey + 8);

    v53 = static os_log_type_t.error.getter();

    v54 = Logger.logObject.getter();

    if (os_log_type_enabled(v54, v53))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 136446466;
      v68[0] = v56;
      v57._countAndFlagsBits = v52;
      v57._object = v51;
      String.append(_:)(v57);
      v58._countAndFlagsBits = 8285;
      v58._object = 0xE200000000000000;
      String.append(_:)(v58);
      v59 = sub_100080210(91, 0xE100000000000000, v68);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2082;
      v60 = sub_100080210(0, 0xE000000000000000, v68);

      *(v55 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v54, v53, "%{public}s%{public}s", v55, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v61 = [v67 responseCorrelationId];
    if (v61)
    {
      v62 = v61;
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;
    }

    else
    {
      v63 = 0;
      v65 = 0;
    }

    sub_1000D35BC();
    swift_allocError();
    *v66 = v63;
    v66[1] = v65;
    swift_willThrow();
  }

  else
  {
    sub_10008E168(v34, v36);

    return v68[2];
  }
}

uint64_t sub_1000CF40C(void *a1)
{
  v4 = sub_1001571E8();
  if (!v5)
  {
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for SKLogger();
    sub_10007EDA4(v21, qword_1003F26C8);
    v22 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey);
    v23 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey + 8);

    v24 = static os_log_type_t.error.getter();

    v25 = Logger.logObject.getter();

    if (os_log_type_enabled(v25, v24))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 136446466;
      v68[0] = v27;
      v28._countAndFlagsBits = v22;
      v28._object = v23;
      String.append(_:)(v28);
      v29._countAndFlagsBits = 8285;
      v29._object = 0xE200000000000000;
      String.append(_:)(v29);
      v30 = sub_100080210(91, 0xE100000000000000, v68);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2082;
      *(v26 + 14) = sub_100080210(0xD000000000000045, 0x8000000100316670, v68);
      _os_log_impl(&_mh_execute_header, v25, v24, "%{public}s%{public}s", v26, 0x16u);
      swift_arrayDestroy();
    }

    v31 = [a1 responseCorrelationId];
    goto LABEL_16;
  }

  v6 = v4;
  v7 = v5;

  v8 = sub_10021E46C();
  if (v8 == 2)
  {
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for SKLogger();
    sub_10007EDA4(v9, qword_1003F26C8);
    _StringGuts.grow(_:)(37);

    v10._countAndFlagsBits = v6;
    v10._object = v7;
    String.append(_:)(v10);

    v11 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey);
    v12 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey + 8);

    v13 = static os_log_type_t.error.getter();

    v14 = Logger.logObject.getter();

    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 136446466;
      v68[0] = v16;
      v17._countAndFlagsBits = v11;
      v17._object = v12;
      String.append(_:)(v17);
      v18._countAndFlagsBits = 8285;
      v18._object = 0xE200000000000000;
      String.append(_:)(v18);
      v19 = sub_100080210(91, 0xE100000000000000, v68);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      v20 = sub_100080210(0xD000000000000023, 0x80000001003166C0, v68);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v14, v13, "%{public}s%{public}s", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v31 = [a1 responseCorrelationId];
LABEL_16:
    v37 = v31;
    if (v37)
    {
      v38 = v37;
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    sub_1000D35BC();
    swift_allocError();
    *v42 = v39;
    v42[1] = v41;
    return swift_willThrow();
  }

  v32 = v8;

  if (v32)
  {
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    v33 = [a1 data];
    v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    sub_1000D3664();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v44 = [a1 data];
    v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v45;

    sub_1000D3664();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  }

  if (v2)
  {
    sub_10008E168(v34, v36);
    v67 = a1;

    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for SKLogger();
    sub_10007EDA4(v46, qword_1003F26C8);
    _StringGuts.grow(_:)(40);
    v47._object = 0x80000001003166F0;
    v47._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v47);
    _print_unlocked<A, B>(_:_:)();
    v48._countAndFlagsBits = 0x736E6F7073657220;
    v48._object = 0xEF206F746E692065;
    String.append(_:)(v48);
    v49._countAndFlagsBits = 0xD00000000000004FLL;
    v49._object = 0x8000000100316730;
    String.append(_:)(v49);
    v50._countAndFlagsBits = 8250;
    v50._object = 0xE200000000000000;
    String.append(_:)(v50);
    v68[0] = v2;
    sub_100080FB4(&qword_1003CCCB0);
    _print_unlocked<A, B>(_:_:)();
    v52 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey);
    v51 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey + 8);

    v53 = static os_log_type_t.error.getter();

    v54 = Logger.logObject.getter();

    if (os_log_type_enabled(v54, v53))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 136446466;
      v68[0] = v56;
      v57._countAndFlagsBits = v52;
      v57._object = v51;
      String.append(_:)(v57);
      v58._countAndFlagsBits = 8285;
      v58._object = 0xE200000000000000;
      String.append(_:)(v58);
      v59 = sub_100080210(91, 0xE100000000000000, v68);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2082;
      v60 = sub_100080210(0, 0xE000000000000000, v68);

      *(v55 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v54, v53, "%{public}s%{public}s", v55, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v61 = [v67 responseCorrelationId];
    if (v61)
    {
      v62 = v61;
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;
    }

    else
    {
      v63 = 0;
      v65 = 0;
    }

    sub_1000D35BC();
    swift_allocError();
    *v66 = v63;
    v66[1] = v65;
    swift_willThrow();
  }

  else
  {
    sub_10008E168(v34, v36);

    return v68[2];
  }
}
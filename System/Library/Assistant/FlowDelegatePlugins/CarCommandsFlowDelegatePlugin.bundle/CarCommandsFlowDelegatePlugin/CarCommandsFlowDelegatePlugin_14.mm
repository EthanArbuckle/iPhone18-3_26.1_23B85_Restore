uint64_t sub_14B444()
{
  sub_D2DC();
  v1 = *(v0 + 1800);

  v2 = sub_14BCFC();

  return _swift_asyncLet_finish(v2);
}

uint64_t sub_14B4EC()
{
  sub_D2DC();
  v1 = *(v0 + 1808);
  sub_14BD0C();

  sub_D37C();

  return v2();
}

uint64_t sub_14B54C()
{
  sub_D2DC();
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1800);

  v3 = sub_14BCFC();

  return _swift_asyncLet_finish(v3);
}

uint64_t sub_14B600()
{
  sub_D2DC();
  v1 = *(v0 + 1832);
  sub_14BD0C();

  sub_D37C();

  return v2();
}

uint64_t sub_14B660(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_14B6F4;

  return sub_DEC70();
}

uint64_t sub_14B6F4()
{
  sub_1696C();
  v3 = v2;
  sub_D358();
  v5 = v4;
  sub_D2A4();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_D254();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 32) = v3;
    v13 = sub_124EC0();

    return _swift_task_switch(v13, v14, v15);
  }
}

uint64_t sub_14B820(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_14B8B4;

  return sub_DDAB8();
}

uint64_t sub_14B8B4()
{
  sub_1696C();
  v3 = v2;
  sub_D358();
  v5 = v4;
  sub_D2A4();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_D254();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 32) = v3;
    v13 = sub_124EC0();

    return _swift_task_switch(v13, v14, v15);
  }
}

uint64_t sub_14B9E0()
{
  v0 = sub_168B74();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_168B44();
  return sub_169164();
}

uint64_t sub_14BA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_5758(&qword_1E5F78, &unk_16D400);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v11 - v7;

  sub_169194();

  sub_169184();
  v9 = sub_168E14();
  (*(*(v9 - 8) + 16))(v8, a4, v9);
  sub_5370(v8, 0, 1, v9);
  sub_1691B4();
  sub_1691C4();
  return sub_1691D4();
}

uint64_t sub_14BBE0()
{
  sub_D2DC();
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_124F14(v1);

  return sub_14B660(v3);
}

uint64_t sub_14BC68()
{
  sub_D2DC();
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_124F14(v1);

  return sub_14B820(v3);
}

uint64_t sub_14BD0C()
{
  v2 = *(v0 + 1656);
  v3 = *(v0 + 1608);
}

uint64_t sub_14BD28(uint64_t result, __int16 a2)
{
  if (((HIBYTE(a2) - a2) & 0xFFFFFF00) != 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v2 = result;
  if (v2 > 100.0)
  {
    v2 = 100.0;
  }

  v3 = round(v2 / 100.0 * (HIBYTE(a2) - a2));
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  if (v3 <= -1.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v3 >= 256.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v3 + a2;
  if ((result >> 8))
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_14BDBC(uint64_t result, __int16 a2)
{
  if (((HIBYTE(a2) - a2) & 0xFFFFFF00) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v2 = result;
  if (v2 <= a2)
  {
    v2 = a2;
  }

  if (v2 > HIBYTE(a2))
  {
    v2 = HIBYTE(a2);
  }

  v3 = (v2 - a2) / (HIBYTE(a2) - a2) * 100.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_11;
  }

  if (v3 <= -1.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v3 < 256.0)
  {
    return v3;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for UInt8Range(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if ((a2 + 0xFFFF) < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 0xFFFF;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        return 0;
      }

      return (*a1 | (v4 << 16)) - 0xFFFF;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 0xFFFF;
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for UInt8Range(uint64_t result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
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
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        return result;
      case 2:
        *(result + 2) = v6;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *(result + 2) = v6;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *(result + 2) = 0;
      break;
    case 2:
      *(result + 2) = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x14BF78);
    case 4:
      *(result + 2) = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_14BFB0()
{
  v1 = sub_169474();
  v2 = sub_9F48(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_A138();
  v9 = v8 - v7;
  v10 = sub_5758(&qword_1E9190, &qword_172AE0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v31 - v12;
  v14 = sub_169504();
  v15 = sub_9F48(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  sub_A138();
  v22 = v21 - v20;
  v23 = sub_169464();
  sub_8A130(v23, v13);

  if (sub_9E2C(v13, 1, v14) == 1)
  {
    sub_8F5BC(v13);
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_16ACF4(40);

    v31 = 0xD000000000000026;
    v32 = 0x80000000001916B0;
    (*(v4 + 16))(v9, v0, v1);
    v33._countAndFlagsBits = sub_14C5BC(v9, &type metadata accessor for Siri_Nlu_External_UserParse, &qword_1EEF30, &type metadata accessor for Siri_Nlu_External_UserParse);
    sub_16A744(v33);

    v25 = v31;
    v24 = v32;
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v26 = sub_16A584();
    sub_9DA0(v26, qword_1E65C0);
    sub_16A9A4();
    sub_14C740();
    sub_386D8(v27, 1uLL, 0xD000000000000085, 0x8000000000191620, v28, 0xE90000000000006BLL, 27, v25, v24);

    return 0;
  }

  else
  {
    (*(v17 + 32))(v22, v13, v14);
    v29 = sub_14C2C8();
    (*(v17 + 8))(v22, v14);
  }

  return v29;
}

uint64_t sub_14C2C8()
{
  v0 = sub_169504();
  v1 = sub_9F48(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_A138();
  v4 = sub_169614();
  if (sub_11B48C(v4))
  {
    sub_1487EC(0, (v4 & 0xC000000000000001) == 0, v4);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = sub_16AD04();
    }

    else
    {
      v5 = *(v4 + 32);
    }
  }

  else
  {

    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v7 = sub_16A584();
    sub_9DA0(v7, qword_1E65C0);
    sub_16A9A4();
    sub_14C740();
    sub_14C754();
    sub_386D8(v8, v9, v10, v11, v12, v13, 42, v14, 0x8000000000191710);
    return 0;
  }

  return v5;
}

uint64_t sub_14C5BC(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  v7 = a2(0);
  v11[3] = v7;
  v11[4] = sub_14C6F8(a3, a4);
  v8 = sub_10888(v11);
  (*(*(v7 - 8) + 32))(v8, a1, v7);
  sub_169604();
  sub_1695F4();
  v9 = sub_16A784();
  sub_D13C(v11);
  return v9;
}

uint64_t sub_14C6F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_14C76C(char a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsDirectInvocationIntent();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  sub_14CDFC();
  *(v7 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_identifier) = a1;

  v8 = sub_1693C4();
  v9 = *(v7 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_payload);
  *(v7 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_payload) = v8;

  switch(a1)
  {
    case 2:
      v20 = sub_1693D4();
      sub_955E4(v20);
      (*(v21 + 8))(a2);
      v17 = 1;
      goto LABEL_14;
    case 3:
    case 4:
      v10 = sub_1693C4();
      if (!v10)
      {
        v26 = sub_1693D4();
        sub_955E4(v26);
        (*(v27 + 8))(a2);
        sub_14D558();
        goto LABEL_12;
      }

      v11 = v10;
      v12 = sub_14D514();
      sub_13F530(v12, v13, v11, v14);

      v15 = sub_1693D4();
      sub_955E4(v15);
      (*(v16 + 8))(a2);
      if (!v31)
      {
LABEL_12:
        sub_99140(v30, &qword_1E6A10, &unk_1744D0);
        goto LABEL_13;
      }

      if (sub_14D538() && (v29 & 1) != 0)
      {
        v17 = 2;
        goto LABEL_14;
      }

LABEL_13:
      v17 = 4;
LABEL_14:
      *(v7 + 16) = v17;
      return v7;
    case 5:
      v22 = sub_1693D4();
      sub_955E4(v22);
      (*(v23 + 8))(a2);
      v17 = 5;
      goto LABEL_14;
    case 6:
      v18 = sub_1693D4();
      sub_955E4(v18);
      (*(v19 + 8))(a2);
      v17 = 9;
      goto LABEL_14;
    default:
      v24 = sub_1693D4();
      sub_955E4(v24);
      (*(v25 + 8))(a2);
      return v7;
  }
}

uint64_t sub_14C9DC(uint64_t a1)
{
  v2 = sub_169004();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_5758(&qword_1E6048, &qword_16D890);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for CarCommandsDirectInvocationIntent();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  sub_14CDFC();
  (*(v3 + 16))(v10, a1, v2);
  sub_5370(v10, 0, 1, v2);
  v15 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_confirmationResponse;
  swift_beginAccess();
  sub_14D4A0(v10, v14 + v15);
  swift_endAccess();
  (*(v3 + 104))(v6, enum case for ConfirmationResponse.confirmed(_:), v2);
  LOBYTE(a1) = sub_168FF4();
  (*(v3 + 8))(v6, v2);
  *(v14 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_isRejectedResponse) = (a1 & 1) == 0;
  *(v14 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_isConfirmedResponse) = a1 & 1;
  return v14;
}

uint64_t sub_14CC04(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_payload;
  v4 = *(v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_payload);
  if (!v4)
  {
    sub_14D558();
    goto LABEL_6;
  }

  v7 = *(v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_payload);

  sub_13F530(a1, a2, v4, &v12);

  if (!v13)
  {
LABEL_6:
    sub_99140(&v12, &qword_1E6A10, &unk_1744D0);
    goto LABEL_7;
  }

  if (sub_14D564())
  {
    return v11;
  }

LABEL_7:
  v8 = *(v2 + v3);
  if (!v8)
  {
    sub_14D558();
    goto LABEL_12;
  }

  v9 = *(v2 + v3);

  sub_13F530(0x79654B65756C6176, 0xE800000000000000, v8, &v12);

  if (!v13)
  {
LABEL_12:
    sub_99140(&v12, &qword_1E6A10, &unk_1744D0);
    return 0;
  }

  if (sub_14D564())
  {
    return v11;
  }

  return 0;
}

uint64_t CarCommandsDirectInvocationIntent.deinit()
{
  sub_99140(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_confirmationResponse, &qword_1E6048, &qword_16D890);
  v1 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_payload);

  return v0;
}

uint64_t CarCommandsDirectInvocationIntent.__deallocating_deinit()
{
  sub_99140(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_confirmationResponse, &qword_1E6048, &qword_16D890);
  v1 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_payload);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v2, v3);
}

uint64_t sub_14CDFC()
{
  *(v0 + 16) = 26;
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_confirmationResponse;
  v2 = sub_169004();
  sub_5370(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_isRejectedResponse) = 0;
  *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_isConfirmedResponse) = 0;
  *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_isCancelledResponse) = 0;
  *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_payload) = 0;
  *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_identifier) = 7;
  return v0;
}

uint64_t sub_14CEAC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_confirmationResponse;
  swift_beginAccess();
  return sub_109F8(v3 + v4, a1);
}

uint64_t sub_14CF68()
{
  if (CarCommandsUseCase.rawValue.getter(*(v0 + 16)) == 0x536B636F4C746573 && v1 == 0xED00007375746174)
  {
  }

  else
  {
    v3 = sub_14D584();

    if ((v3 & 1) == 0)
    {
      return 2;
    }
  }

  v4 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_payload);
  if (!v4)
  {
    sub_14D558();
    goto LABEL_14;
  }

  v5 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_payload);

  v6 = sub_14D514();
  sub_13F530(v6, v7, v4, v8);

  if (!v12)
  {
LABEL_14:
    sub_99140(v11, &qword_1E6A10, &unk_1744D0);
    return 2;
  }

  if (sub_14D538())
  {
    return v10;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_14D08C()
{
  if (CarCommandsUseCase.rawValue.getter(*(v0 + 16)) == 0x6B6E757254746573 && v1 == 0xEE00737574617453)
  {
  }

  else
  {
    v3 = sub_14D584();

    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_payload);
  if (!v5)
  {
    sub_14D558();
    goto LABEL_14;
  }

  v6 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_payload);

  v7 = sub_14D514();
  sub_13F530(v7, v8, v5, v9);

  if (!v12)
  {
LABEL_14:
    sub_99140(v11, &qword_1E6A10, &unk_1744D0);
    return 2;
  }

  if (sub_14D538() && (v10 & 1) != 0)
  {
    return 1;
  }

  return 2;
}

NSNumber sub_14D1C4()
{
  if (CarCommandsUseCase.rawValue.getter(*(v0 + 16)) == 0x616D696C43746573 && v1 == 0xEA00000000006574)
  {
  }

  else
  {
    v3 = sub_16AE54();

    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  v4 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_payload);
  if (!v4)
  {
    sub_14D558();
    goto LABEL_13;
  }

  v5 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_payload);

  v6 = sub_14D514();
  sub_13F530(v6, v7, v4, v8);

  if (!v11)
  {
LABEL_13:
    sub_99140(v10, &qword_1E6A10, &unk_1744D0);
    return 0;
  }

  if (sub_14D538())
  {
    return sub_16A824();
  }

  return 0;
}

uint64_t sub_14D2F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_identifier);
  if (v1 == 4)
  {
    return 1;
  }

  else
  {
    return 2 * (v1 == 3);
  }
}

uint64_t type metadata accessor for CarCommandsDirectInvocationIntent()
{
  result = qword_1EEF78;
  if (!qword_1EEF78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_14D38C()
{
  sub_14D448();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_14D448()
{
  if (!qword_1EEF88)
  {
    sub_169004();
    v0 = sub_16AB24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EEF88);
    }
  }
}

uint64_t sub_14D4A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E6048, &qword_16D890);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_14D538()
{

  return swift_dynamicCast();
}

uint64_t sub_14D564()
{

  return swift_dynamicCast();
}

uint64_t sub_14D584()
{

  return sub_16AE54();
}

uint64_t type metadata accessor for CarCommandsError()
{
  result = qword_1EF228;
  if (!qword_1EF228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_14D64C()
{
  sub_14D6E8();
  if (v0 <= 0x3F)
  {
    sub_14D710();
    if (v1 <= 0x3F)
    {
      sub_14D758();
      if (v2 <= 0x3F)
      {
        sub_14D780();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void *sub_14D6E8()
{
  result = qword_1EF238;
  if (!qword_1EF238)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_1EF238);
  }

  return result;
}

void sub_14D710()
{
  if (!qword_1EF240)
  {
    v0 = sub_1693E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EF240);
    }
  }
}

void *sub_14D758()
{
  result = qword_1EF248;
  if (!qword_1EF248)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_1EF248);
  }

  return result;
}

void *sub_14D780()
{
  result = qword_1EF250;
  if (!qword_1EF250)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_1EF250);
  }

  return result;
}

uint64_t sub_14D7AC()
{
  v1 = sub_1693E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CarCommandsError();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_548D0(v0, v9);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v2 + 32))(v5, v9, v1);
      sub_14DA48();
      sub_16ACF4(20);
      v26._object = 0x80000000001918B0;
      v26._countAndFlagsBits = 0xD000000000000011;
      sub_16A744(v26);
      sub_16AD84();
      v27._countAndFlagsBits = 34;
      v27._object = 0xE100000000000000;
      sub_16A744(v27);
      v10 = v22;
      (*(v2 + 8))(v5, v1);
      break;
    case 2u:
      v12 = *v9;
      v13 = v9[1];
      sub_14DA48();
      sub_16ACF4(23);

      sub_14DA58();
      v22 = v15 + 3;
      v23 = v14;
      v24._countAndFlagsBits = v12;
      v24._object = v13;
      sub_16A744(v24);

      v16._countAndFlagsBits = 34;
      v16._object = 0xE100000000000000;
      goto LABEL_5;
    case 3u:
      v17 = *v9;
      v18 = v9[1];
      sub_14DA48();
      sub_16ACF4(34);

      sub_14DA58();
      v22 = v20 + 13;
      v23 = v19;
      v25._countAndFlagsBits = v17;
      v25._object = v18;
      sub_16A744(v25);

      v16._countAndFlagsBits = 10530;
      v16._object = 0xE200000000000000;
LABEL_5:
      sub_16A744(v16);
      v10 = v22;
      break;
    default:
      v10 = *v9;
      v11 = v9[1];
      break;
  }

  return v10;
}

uint64_t sub_14DAB0()
{
  v1 = v0;
  v93 = *v0;
  v2 = sub_1693E4();
  v3 = sub_151F64(v2, &v101);
  v92 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_A138();
  v91 = (v8 - v7);
  v9 = sub_168FE4();
  v10 = sub_151F64(v9, &v102);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_A138();
  v17 = v16 - v15;
  v18 = v0[22];
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v19 = sub_16A584();
  sub_9DA0(v19, qword_1E65C0);
  v20 = sub_16A9A4();
  v98._countAndFlagsBits = 0xD00000000000008BLL;
  v98._object = 0x80000000001918D0;
  v95._countAndFlagsBits = 47;
  v95._object = 0xE100000000000000;
  sub_D030();
  v21 = sub_16AB34();
  v22 = sub_15AE4(v21);
  v24 = v23;

  if (v24)
  {
    v98._object = v24;
    v103._countAndFlagsBits = 32;
    v103._object = 0xE100000000000000;
    sub_16A744(v103);
    v104._countAndFlagsBits = 0xD000000000000020;
    v104._object = 0x8000000000189940;
    sub_16A744(v104);
    v26 = v24;
    v25 = v22;
  }

  else
  {
    v25 = 0xD000000000000020;
    v26 = 0x8000000000189940;
  }

  v98._countAndFlagsBits = v25;
  v98._object = v26;
  v95._countAndFlagsBits = 58;
  v95._object = 0xE100000000000000;
  v94[0] = &dword_18;
  v105._countAndFlagsBits = sub_16AE24();
  sub_16A744(v105);

  v106._countAndFlagsBits = 58;
  v106._object = 0xE100000000000000;
  sub_16A744(v106);

  sub_378D0(v18);
  if (v27)
  {
    sub_151F04();
    v95._countAndFlagsBits = v28;
    v95._object = v29;
    sub_16A744(v107);

    sub_16A744(v95);
  }

  v30 = v98;
  sub_138970();
  v31 = sub_16A574();
  if (os_log_type_enabled(v31, v20))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v95._countAndFlagsBits = v33;
    *v32 = 136315138;
    v34 = sub_15BC8(v30._countAndFlagsBits, v30._object, &v95._countAndFlagsBits);

    *(v32 + 4) = v34;
    _os_log_impl(&dword_0, v31, v20, "%s", v32, 0xCu);
    sub_D13C(v33);
    sub_151F7C();
  }

  else
  {
  }

  v35 = *(v93 + 416);
  sub_169274();
  v36 = sub_169244();
  sub_151FB0();
  sub_169264();
  v37 = sub_168FD4();
  v39 = v38;
  v40 = *(v12 + 8);
  v40(v17);
  if (sub_D95F4(v36, v37, v39) > 0xF7u)
  {
    v41 = v1[22];
    type metadata accessor for CarCommandsError();
    sub_11D28();
    swift_allocError();
    v43 = v42;
    sub_151FB0();
    sub_169264();
    v44 = sub_168FD4();
    v46 = v45;
    v40(v17);
    *v43 = v44;
    v43[1] = v46;
    sub_151FA4();
    swift_storeEnumTagMultiPayload();
    sub_16A9A4();
    swift_getErrorValue();
    sub_16AEB4();
    v90 = v47;
    sub_151EC8();
    sub_138970();
    sub_386D8(v48, v49, v50, v51, v52, v53, v54, v55, v90);

    return sub_168C74();
  }

  v56 = sub_169244();
  sub_151FB0();
  sub_169264();
  sub_168FD4();
  v40(v17);
  v57 = sub_16A644();

  v58 = [v56 valueForKey:v57];

  if (v58)
  {
    sub_16AB64();
    swift_unknownObjectRelease();
  }

  else
  {
    v95 = 0;
    v96 = 0u;
  }

  v98 = v95;
  v99 = v96;
  sub_5758(&qword_1E6A10, &unk_1744D0);
  sub_5758(&qword_1EC370, &unk_177710);
  if (!swift_dynamicCast())
  {
    v67 = v1[22];
    v98._countAndFlagsBits = 0;
    v98._object = 0xE000000000000000;
    sub_16ACF4(57);
    v108._countAndFlagsBits = 0xD00000000000002BLL;
    v108._object = 0x8000000000191A40;
    sub_16A744(v108);
    sub_151FB0();
    sub_169264();
    v68 = sub_168FD4();
    v70 = v69;
    v40(v17);
    v109._countAndFlagsBits = v68;
    v109._object = v70;
    sub_16A744(v109);

    v110._countAndFlagsBits = 0x726F6E6749202E22;
    v110._object = 0xEC0000002E676E69;
    sub_16A744(v110);
    object = v98._object;
    sub_16A9A4();
    sub_151EC8();
    sub_138970();
    sub_386D8(v72, v73, v74, v75, v76, v77, v78, v79, object);

    return sub_168C74();
  }

  sub_169384();
  sub_86E4(v91, &_swiftEmptySetSingleton, v94);
  (*(v92 + 8))(v91);
  if (!v94[3])
  {
    sub_109A0(v94, &qword_1E5F80, &unk_16E7E0);
    v95 = 0;
    v96 = 0u;
    v97 = 0;
    goto LABEL_26;
  }

  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1E5F98, &unk_16D420);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v97 = 0;
    v95 = 0;
    v96 = 0u;
    goto LABEL_26;
  }

  if (!*(&v96 + 1))
  {
LABEL_26:
    sub_109A0(&v95, &qword_1E5F88, &unk_16D410);
    v80 = v1[22];
    sub_16A9A4();
    sub_151EC8();
    sub_138970();
    sub_386D8(v81, v82, v83, v84, v85, v86, v87, v88, 0x8000000000180180);
    return sub_168C74();
  }

  sub_D124(&v95._countAndFlagsBits, &v98);
  v59 = v100;
  sub_D084(&v98, *(&v99 + 1));
  v60 = *(v59 + 24);
  v61 = sub_37740();
  if (v62(v61) & 1) != 0 || (v63 = v100, sub_D084(&v98, *(&v99 + 1)), v64 = *(v63 + 40), v65 = sub_37740(), (v66(v65)))
  {
    sub_168C54();
  }

  else
  {
    sub_168C64();
  }

  return sub_D13C(&v98._countAndFlagsBits);
}

uint64_t sub_14E368(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v2[13] = *v1;
  sub_10B4C();
  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_14E3BC()
{
  v2 = *(*(v0 + 96) + 176);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v3 = sub_16A584();
  sub_9DA0(v3, qword_1E65C0);
  v4 = sub_16A9A4();
  *(v0 + 16) = 0xD00000000000008BLL;
  *(v0 + 24) = 0x80000000001918D0;
  *(v0 + 48) = 47;
  *(v0 + 56) = 0xE100000000000000;
  sub_D030();
  v5 = sub_16AB34();
  sub_15AE4(v5);
  sub_151F98();

  if (v1)
  {
    v33._countAndFlagsBits = 32;
    v33._object = 0xE100000000000000;
    sub_16A744(v33);
    v34._countAndFlagsBits = 0xD00000000000002FLL;
    v34._object = 0x8000000000191A10;
    sub_16A744(v34);
  }

  *(v0 + 16) = 50;
  v35._countAndFlagsBits = sub_16AE24();
  sub_16A744(v35);

  v36._countAndFlagsBits = 58;
  v36._object = 0xE100000000000000;
  sub_16A744(v36);

  sub_378D0(v2);
  if (v6)
  {
    sub_151F04();
    v30._countAndFlagsBits = v7;
    v30._object = v8;
    sub_16A744(v37);

    sub_16A744(v30);
  }

  v9 = sub_16A574();
  if (os_log_type_enabled(v9, v4))
  {
    v10 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v10 = 136315138;
    v11 = sub_151FA4();
    v14 = sub_15BC8(v11, v12, v13);

    *(v10 + 4) = v14;
    sub_151FBC(&dword_0, v15, v16, "%s");
    sub_D13C(v31);

    sub_151F7C();
  }

  else
  {
  }

  v17 = *(v0 + 88);
  v18 = *(*(v0 + 104) + 416);
  sub_169274();
  v19 = sub_169254();
  v20 = [v19 disambiguationItems];

  v21 = sub_16A7D4();
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = v21 + 32;
    do
    {
      sub_16138(v23, v0 + 16);
      sub_151E50((v0 + 16), (v0 + 48));
      sub_95578();
      if ((swift_dynamicCast() & 1) != 0 && *(v0 + 80))
      {
        sub_16A7B4();
        if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_16A7F4();
        }

        sub_151FA4();
        sub_16A814();
      }

      v23 += 32;
      --v22;
    }

    while (v22);
  }

  v24 = sub_5758(&qword_1EF308, qword_17A970);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = sub_169314();
  v28 = *(v0 + 8);

  return v28(v27);
}

uint64_t sub_14E7C4()
{
  sub_D2DC();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v5 = *v0;
  v1[8] = *v0;
  v1[9] = *(v5 + 416);
  v6 = sub_168EC4();
  v1[10] = v6;
  sub_10AEC(v6);
  v1[11] = v7;
  v9 = *(v8 + 64);
  v1[12] = sub_D3C8();
  v10 = sub_1693E4();
  v1[13] = v10;
  sub_10AEC(v10);
  v1[14] = v11;
  v13 = *(v12 + 64);
  v1[15] = sub_D3C8();
  v14 = sub_168FE4();
  v1[16] = v14;
  sub_10AEC(v14);
  v1[17] = v15;
  v17 = *(v16 + 64);
  v1[18] = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v18, v19, v20);
}

uint64_t sub_14E94C()
{
  v59 = v0;
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[9];
  v5 = v0[6];
  v53 = v0[7];
  v54 = *(v53 + 176);
  v57 = 0;
  v58 = 0xE000000000000000;
  sub_16ACF4(40);
  v61._countAndFlagsBits = 0xD000000000000011;
  v61._object = 0x80000000001898E0;
  sub_16A744(v61);
  sub_169274();
  v6 = sub_169244();
  v0[2] = v6;
  swift_getWitnessTable();
  sub_16AE44();

  v62._countAndFlagsBits = 0xD000000000000013;
  v62._object = 0x8000000000189900;
  sub_16A744(v62);
  sub_169264();
  v7 = sub_168FD4();
  v9 = v8;
  v10 = *(v2 + 8);
  v10(v1, v3);
  v63._countAndFlagsBits = v7;
  v63._object = v9;
  sub_16A744(v63);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v11 = v0[18];
  v12 = v0[16];
  v13 = v0[6];
  v14 = sub_16A584();
  sub_9DA0(v14, qword_1E65C0);
  v15 = sub_16A9A4();
  sub_386D8(v15, v54, 0xD00000000000008BLL, 0x80000000001918D0, 0xD00000000000003ELL, 0x80000000001919D0, 59, v57, v58);

  v16 = sub_169244();
  sub_169264();
  v17 = sub_168FD4();
  v19 = v18;
  v10(v11, v12);
  v20 = sub_D95F4(v16, v17, v19);
  v21 = v0[15];
  if (v20 <= 0xF7u)
  {
    v31 = v20;
    v32 = v0[14];
    v51 = v0[11];
    v52 = v0[18];
    v33 = v0[9];
    v49 = v0[12];
    v50 = v0[10];
    v34 = v0[8];
    v36 = v0[5];
    v35 = v0[6];
    v47 = v0[13];
    v48 = v0[4];
    v37 = sub_169244();
    sub_169384();
    v38 = *(v34 + 432);
    v39 = (*(v38 + 8))(v21, v31, v33, v38);

    (*(v32 + 8))(v21, v47);
    v40 = *(v53 + 176);
    v57 = 0;
    v58 = 0xE000000000000000;
    sub_16ACF4(18);
    v64._countAndFlagsBits = 0xD000000000000010;
    v64._object = 0x8000000000189920;
    sub_16A744(v64);
    v0[3] = v39;
    sub_16AE44();
    v41 = sub_16A9A4();
    sub_386D8(v41, v40, 0xD00000000000008BLL, 0x80000000001918D0, 0xD00000000000003ELL, 0x80000000001919D0, 67, v57, v58);

    (*(v38 + 24))(&v57, v31, v33, v38);
    v42 = v39;
    sub_168EB4();
    sub_169014();

    v43 = *(v51 + 8);
    v44 = sub_37740();
    v45(v44);

    sub_D37C();
  }

  else
  {
    v22 = v0[18];
    v55 = v0[16];
    v56 = v0[12];
    v23 = v0[6];
    type metadata accessor for CarCommandsError();
    sub_11D28();
    v24 = v10;
    swift_allocError();
    v26 = v25;
    sub_169264();
    v27 = sub_168FD4();
    v29 = v28;
    v24(v22, v55);
    *v26 = v27;
    v26[1] = v29;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_D37C();
  }

  return v30();
}

uint64_t sub_14EE84()
{
  sub_D2DC();
  v1[47] = v2;
  v1[48] = v0;
  v1[46] = v3;
  v1[49] = *v0;
  v4 = sub_16A0C4();
  v1[50] = v4;
  sub_10AEC(v4);
  v1[51] = v5;
  v7 = *(v6 + 64) + 15;
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v8 = sub_168E14();
  v1[54] = v8;
  sub_10AEC(v8);
  v1[55] = v9;
  v11 = *(v10 + 64);
  v1[56] = sub_D3C8();
  v12 = sub_168FE4();
  v1[57] = v12;
  sub_10AEC(v12);
  v1[58] = v13;
  v15 = *(v14 + 64) + 15;
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v16 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v16);
  v18 = *(v17 + 64) + 15;
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v19 = type metadata accessor for MultipleCarKeyMatchesParameters(0);
  v1[64] = v19;
  sub_D414(v19);
  v21 = *(v20 + 64);
  v1[65] = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v22, v23, v24);
}

uint64_t sub_14F088()
{
  v2 = *(v0[48] + 176);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v3 = sub_16A584();
  sub_9DA0(v3, qword_1E65C0);
  v4 = sub_16A9A4();
  v0[40] = 0xD00000000000008BLL;
  v0[41] = 0x80000000001918D0;
  v0[42] = 47;
  v0[43] = 0xE100000000000000;
  sub_D030();
  v5 = sub_16AB34();
  sub_15AE4(v5);
  sub_151F98();

  if (v1)
  {
    v130._countAndFlagsBits = 32;
    v130._object = 0xE100000000000000;
    sub_16A744(v130);
    v131._countAndFlagsBits = 0xD00000000000003ALL;
    v131._object = 0x8000000000191960;
    sub_16A744(v131);
  }

  v0[44] = 75;
  v132._countAndFlagsBits = sub_16AE24();
  sub_16A744(v132);

  v133._countAndFlagsBits = 58;
  v133._object = 0xE100000000000000;
  sub_16A744(v133);

  sub_378D0(v2);
  if (v6)
  {
    sub_151F04();
    v127._countAndFlagsBits = v7;
    v127._object = v8;
    sub_16A744(v134);

    sub_16A744(v127);
  }

  v9 = sub_16A574();
  if (os_log_type_enabled(v9, v4))
  {
    v10 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    *v10 = 136315138;
    v11 = sub_151FA4();
    v14 = sub_15BC8(v11, v12, v13);

    *(v10 + 4) = v14;
    sub_151FBC(&dword_0, v15, v16, "%s");
    sub_D13C(v128);

    sub_151F7C();
  }

  else
  {
  }

  v17 = v0[47];
  v18 = *(v0[49] + 416);
  sub_169274();
  v19 = sub_169254();
  v20 = [v19 disambiguationItems];

  v21 = sub_16A7D4();
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = v21 + 32;
    v24 = _swiftEmptyArrayStorage;
    do
    {
      sub_16138(v23, (v0 + 17));
      sub_16138((v0 + 17), (v0 + 21));
      sub_95578();
      if (swift_dynamicCast())
      {
        v25 = v0[45];
        v26 = [v25 spokenPhrase];

        v27 = sub_16A664();
        v29 = v28;

        sub_D13C(v0 + 17);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = v24[2];
          sub_1084D8();
          v24 = v33;
        }

        v30 = v24[2];
        if (v30 >= v24[3] >> 1)
        {
          sub_1084D8();
          v24 = v34;
        }

        v24[2] = v30 + 1;
        v31 = &v24[2 * v30];
        v31[4] = v27;
        v31[5] = v29;
      }

      else
      {
        sub_D13C(v0 + 17);
      }

      v23 += 32;
      --v22;
    }

    while (v22);
  }

  else
  {

    v24 = _swiftEmptyArrayStorage;
  }

  v0[66] = v24;
  v35 = v0[47];
  sub_169234();
  v36 = sub_11F404();

  if ((v36 & 1) != 0 && Array<A>.containsOnlyMultiplesOfSameString.getter(v24))
  {
    v37 = v0[48];
    sub_3CF7C();
    v38 = *sub_D084((v37 + 136), *(v37 + 160));
    if (sub_11B5C0())
    {
      if (v24[2])
      {
        v40 = v24[4];
        v39 = v24[5];
        v0[67] = v39;

        v41 = sub_F30B0();
        v0[68] = v42;
        if (v42)
        {
          v43 = v41;
          v44 = v42;
          v45 = v0[48];
          type metadata accessor for AppPunchoutSnippetFactory();
          v46 = v24[2];

          sub_3CF7C();
          sub_10824(v45 + 184, (v0 + 12));
          swift_task_alloc();
          sub_D3E0();
          v0[69] = v47;
          *v47 = v48;
          v47[1] = sub_14FC24;
          v49 = v0[46];

          return sub_4F114(v49, v43, v44, v40, v39, v46, 0xD000000000000012, 0x800000000017F6B0);
        }
      }

      type metadata accessor for CarCommandsError();
      sub_11D28();
      swift_allocError();
      *v117 = 0xD000000000000023;
      v117[1] = 0x80000000001919A0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_151E78();

      sub_D37C();
      sub_151EE4();

      __asm { BRAA            X1, X16 }
    }

    v82 = [objc_allocWithZone(SAAppsLaunchApp) init];
    v0[71] = v82;
    v83 = sub_16A644();
    [v82 setLaunchId:v83];

    sub_F30B0();
    v85 = v84;
    sub_16AAE4();
    if (v86)
    {
      v87 = v0[63];
      sub_16A6E4();

      v88 = 0;
    }

    else
    {
      v88 = 1;
    }

    v89 = 1;
    sub_5370(v0[63], v88, 1, v0[50]);
    if (v85)
    {
      v90 = v0[62];
      sub_16A6E4();

      v89 = 0;
    }

    v91 = v0[65];
    v92 = v0[64];
    v93 = v0[50];
    sub_5370(v0[62], v89, 1, v93);
    v94 = *(v92 + 24);
    sub_16A6E4();
    sub_148950();
    result = sub_5370(v95, v96, v97, v93);
    v98 = v24[2];
    if (v98)
    {
      v99 = v0[65];
      v100 = v0[63];
      v101 = v0[64];
      v102 = v0[62];
      v103 = v0[50];
      v126 = v0[48];
      v104 = v101[8];
      v105 = v98;
      v106 = v24[4];
      v107 = v24[5];

      sub_16A6E4();

      sub_148950();
      sub_5370(v108, v109, v110, v103);
      sub_16304(v100, v99);
      sub_16304(v102, v99 + v101[5]);
      v111 = v99 + v101[7];
      *v111 = v105;
      *(v111 + 8) = 0;
      v112 = *sub_D084((v126 + qword_1F0E38), *(v126 + qword_1F0E38 + 24));
      v113 = swift_task_alloc();
      v0[72] = v113;
      *v113 = v0;
      v113[1] = sub_14FDD8;
      v114 = v0[65];
      sub_151EE4();

      return sub_156D8C(v115);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v51 = v0[61];
    v52 = v0[57];
    v53 = v0[58];
    v54 = v0[47];
    v55 = v0[48];
    v56 = sub_169244();
    sub_169264();
    v57 = sub_168FD4();
    v59 = v58;
    v125 = *(v53 + 8);
    v125(v51, v52);
    v124 = sub_D95F4(v56, v57, v59);
    sub_3CF7C();
    v60 = *sub_D084((v55 + 136), *(v55 + 160));
    if (sub_11B5C0())
    {
      v61 = v0[61];
      v62 = v0[57];
      v120 = v0[56];
      v63 = v0[53];
      v64 = v0[51];
      v121 = v0[50];
      v122 = v0[60];
      v65 = v0[47];
      v123 = v0[48];
      sub_169264();
      sub_168FD4();
      sub_151F98();
      v125(v61, v62);
      sub_16A6E4();

      sub_169234();
      sub_1508B4(v24, v63, v124);

      (*(v64 + 8))(v63, v121);
      type metadata accessor for DisambiguationSnippetFactory();
      sub_169264();
      sub_168FD4();
      sub_151F98();
      v0[77] = v66;
      v125(v122, v62);
      sub_3CF7C();
      sub_10824(v123 + 184, (v0 + 2));
      swift_task_alloc();
      sub_D3E0();
      v0[78] = v67;
      *v67 = v68;
      v67[1] = sub_1501FC;
      v69 = v0[56];
      v70 = v0[46];
      sub_151EE4();

      return sub_D0688();
    }

    else
    {
      v72 = v0[59];
      v73 = v0[57];
      v74 = v0[52];
      v75 = v0[47];
      sub_169264();
      sub_168FD4();
      v125(v72, v73);
      sub_16A6E4();

      v0[80] = sub_169234();
      swift_task_alloc();
      sub_D3E0();
      v0[81] = v76;
      *v76 = v77;
      v76[1] = sub_15040C;
      v78 = v0[52];
      v79 = v0[48];
      v80 = v0[46];
      sub_151EE4();

      return sub_150A6C();
    }
  }

  return result;
}

uint64_t sub_14FC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_124EFC();
  sub_30C80();
  v12 = *v11;
  v13 = *v11;
  sub_D254();
  *v14 = v13;
  v15 = v12[69];
  *v14 = *v11;
  v13[70] = v10;

  v16 = v12[68];
  v17 = v12[67];
  sub_D13C(v13 + 12);

  if (v10)
  {
    sub_10B4C();
    sub_124EE4();

    return _swift_task_switch(v18, v19, v20);
  }

  else
  {
    sub_151F3C();

    sub_124ED4();
    sub_124EE4();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }
}

uint64_t sub_14FDD8()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 576);
  *v3 = *v1;
  *(v2 + 584) = v6;
  *(v2 + 592) = v0;

  sub_10B4C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_14FEE0()
{
  sub_D2DC();
  v1 = v0[48];
  sub_3CF7C();
  sub_10824(v1 + 184, (v0 + 7));
  swift_task_alloc();
  sub_D3E0();
  v0[75] = v2;
  *v2 = v3;
  v2[1] = sub_14FF90;
  v4 = v0[73];
  v5 = v0[46];

  return sub_11A570();
}

uint64_t sub_14FF90()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 600);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 608) = v0;

  sub_D13C((v3 + 56));
  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_150094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v13 = *(v12 + 520);

  sub_151EA0();
  v14 = *(v12 + 592);
  sub_151E78();

  sub_D37C();
  sub_10B0C();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_150144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_124EFC();
  sub_30C80();
  v11 = *(v10 + 568);
  v12 = *(v10 + 520);

  sub_151EA0();
  sub_151F14();

  sub_D37C();
  sub_124EE4();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1501FC()
{
  v2 = *v1;
  v3 = *v1;
  sub_D254();
  *v4 = v3;
  v5 = v2[78];
  *v4 = *v1;
  v3[79] = v0;

  v6 = v2[77];
  v7 = v2[66];
  sub_D13C(v3 + 2);

  sub_10B4C();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_150354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_124EFC();
  sub_30C80();
  (*(v10[55] + 8))(v10[56], v10[54]);
  sub_151F14();

  sub_D37C();
  sub_124EE4();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_15040C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_124EFC();
  sub_30C80();
  v12 = *v11;
  v13 = *v11;
  sub_D254();
  *v14 = v13;
  v15 = v12[81];
  *v14 = *v11;
  v13[82] = v10;

  v16 = v12[80];
  v17 = v12[66];
  (*(v12[51] + 8))(v12[52], v12[50]);

  if (v10)
  {
    sub_10B4C();
    sub_124EE4();

    return _swift_task_switch(v18, v19, v20);
  }

  else
  {
    sub_151F3C();

    sub_124ED4();
    sub_124EE4();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }
}

uint64_t sub_150604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v13 = *(v12 + 560);
  sub_151E78();

  sub_D37C();
  sub_10B0C();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_1506A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v13 = *(v12 + 568);
  v14 = *(v12 + 520);

  sub_151EA0();
  v15 = *(v12 + 608);
  sub_151E78();

  sub_D37C();
  sub_10B0C();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_15075C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  (*(v12[55] + 8))(v12[56], v12[54]);
  v13 = v12[79];
  sub_151E78();

  sub_D37C();
  sub_10B0C();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_150814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v13 = *(v12 + 656);
  sub_151E78();

  sub_D37C();
  sub_10B0C();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_1508B4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v7 = sub_D414(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v29 - v10;
  v12 = type metadata accessor for NeedsDisambiguationParameters(0);
  v13 = sub_10AFC(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_A138();
  v18 = (v17 - v16);
  v19 = sub_11A928(a1, 0);
  sub_16A1B4();
  if (v20)
  {
    sub_16A6E4();

    v21 = sub_16A0C4();
    v22 = 0;
  }

  else
  {
    v21 = sub_16A0C4();
    v22 = 1;
  }

  sub_5370(v11, v22, 1, v21);
  v23 = *(v12 + 24);
  sub_16A0C4();
  (*(*(v21 - 8) + 16))(&v18[v23], a2, v21);
  sub_148950();
  sub_5370(v24, v25, v26, v21);
  *v18 = v19;
  sub_16304(v11, &v18[*(v12 + 20)]);
  sub_12C22C(a3, a1);
  sub_151E60();
  return sub_151DF8(v18, v27);
}

uint64_t sub_150A6C()
{
  sub_D2DC();
  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  *(v1 + 288) = v3;
  *(v1 + 128) = v4;
  *(v1 + 136) = v5;
  *(v1 + 120) = v6;
  v7 = sub_5758(&qword_1E5F78, &unk_16D400);
  sub_D414(v7);
  v9 = *(v8 + 64);
  *(v1 + 160) = sub_D3C8();
  v10 = sub_168B74();
  sub_D414(v10);
  v12 = *(v11 + 64);
  *(v1 + 168) = sub_D3C8();
  v13 = sub_1691E4();
  *(v1 + 176) = v13;
  sub_10AEC(v13);
  *(v1 + 184) = v14;
  v16 = *(v15 + 64);
  *(v1 + 192) = sub_D3C8();
  v17 = sub_168E14();
  *(v1 + 200) = v17;
  sub_10AEC(v17);
  *(v1 + 208) = v18;
  v20 = *(v19 + 64);
  *(v1 + 216) = sub_D3C8();
  v21 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v21);
  v23 = *(v22 + 64);
  *(v1 + 224) = sub_D3C8();
  v24 = type metadata accessor for NeedsDisambiguationParameters(0);
  *(v1 + 232) = v24;
  sub_D414(v24);
  v26 = *(v25 + 64);
  *(v1 + 240) = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v27, v28, v29);
}

uint64_t sub_150C08()
{
  sub_124EFC();
  sub_30C80();
  v1 = v0[18];
  v2 = sub_11A928(v0[16], 0);
  sub_16A1B4();
  if (v3)
  {
    v4 = v0[28];
    sub_16A6E4();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = v0[29];
  v6 = v0[30];
  v8 = v0[28];
  v9 = v0[19];
  v10 = v0[17];
  v11 = sub_16A0C4();
  sub_5370(v8, v5, 1, v11);
  (*(*(v11 - 8) + 16))(&v6[*(v7 + 24)], v10, v11);
  sub_148950();
  sub_5370(v12, v13, v14, v11);
  *v6 = v2;
  sub_16304(v8, &v6[*(v7 + 20)]);
  v15 = *sub_D084((v9 + qword_1F0E38), *(v9 + qword_1F0E38 + 24));
  v16 = swift_task_alloc();
  v0[31] = v16;
  *v16 = v0;
  v16[1] = sub_150D80;
  v17 = v0[30];
  sub_124EE4();

  return sub_156EDC(v18);
}

uint64_t sub_150D80()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 248);
  *v3 = *v1;
  *(v2 + 256) = v6;
  *(v2 + 264) = v0;

  sub_10B4C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_150E84()
{
  sub_30C80();
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  v7 = *(v0 + 152);
  sub_12C22C(*(v0 + 288), *(v0 + 128));
  sub_3CF7C();
  sub_10824(v7 + 184, v0 + 16);
  sub_168B54();
  sub_169164();
  sub_1691A4();
  sub_1691C4();
  (*(v2 + 16))(v5, v1, v4);
  sub_148950();
  sub_5370(v8, v9, v10, v4);
  sub_1691B4();
  v11 = *(v0 + 48);
  sub_D084((v0 + 16), *(v0 + 40));
  v12 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 272) = v13;
  *v13 = v14;
  v13[1] = sub_150FF8;
  v15 = *(v0 + 256);
  v16 = *(v0 + 192);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v0 + 56);
}

uint64_t sub_150FF8()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 272);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 280) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1510F4()
{
  v1 = *(v0 + 240);
  sub_151E60();
  sub_151DF8(v2, v3);
  v4 = *(v0 + 264);
  sub_151FDC();

  sub_D37C();

  return v5();
}

uint64_t sub_151194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v13 = *(v12 + 256);
  v14 = *(v12 + 240);
  v16 = *(v12 + 216);
  v15 = *(v12 + 224);
  v17 = *(v12 + 200);
  v18 = *(v12 + 208);
  v19 = *(v12 + 168);
  v31 = *(v12 + 160);
  v20 = *(v12 + 120);
  (*(*(v12 + 184) + 8))(*(v12 + 192), *(v12 + 176));
  sub_D124((v12 + 56), v20);
  sub_D13C((v12 + 16));

  (*(v18 + 8))(v16, v17);
  sub_151E60();
  sub_151DF8(v14, v21);

  sub_D37C();
  sub_10B0C();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, v31, a10, a11, a12);
}

uint64_t sub_151294()
{
  v1 = v0[32];
  v2 = v0[30];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  (*(v0[23] + 8))(v0[24], v0[22]);
  sub_D13C(v0 + 2);

  v6 = *(v4 + 8);
  v7 = sub_37740();
  v8(v7);
  sub_151E60();
  sub_151DF8(v2, v9);
  v10 = v0[35];
  sub_151FDC();

  sub_D37C();

  return v11();
}

uint64_t *sub_15139C()
{
  v0 = sub_3D044();
  sub_D13C((v0 + qword_1F0E38));
  return v0;
}

uint64_t sub_1513D4()
{
  v0 = sub_15139C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_151444(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[52];
  v5 = a2[53];
  v7 = a2[54];
  v8 = type metadata accessor for CommonNeedsDisambiguationFlowStrategy();

  return NeedsDisambiguationFlowStrategyAsync.paginationStyle(resolveRecord:)(a1, v8, a3);
}

uint64_t sub_1514CC(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_151568;

  return sub_14E368(a2);
}

uint64_t sub_151568(uint64_t a1)
{
  sub_D358();
  v5 = v4;
  sub_D2A4();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v2;
  sub_D254();
  *v10 = v9;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  sub_124ED4();

  return v11();
}

uint64_t sub_151660()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_14E7C4();
}

uint64_t sub_151714()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1039C;

  return sub_14EE84();
}

uint64_t sub_1517C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v11 = async function pointer to NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = a4[52];
  v14 = a4[53];
  v15 = a4[54];
  v16 = type metadata accessor for CommonNeedsDisambiguationFlowStrategy();
  *v12 = v5;
  v12[1] = sub_10A9C;

  return NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:)(a1, a2, a3, v16, a5);
}

uint64_t sub_1518A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v11 = async function pointer to NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = a4[52];
  v14 = a4[53];
  v15 = a4[54];
  v16 = type metadata accessor for CommonNeedsDisambiguationFlowStrategy();
  *v12 = v5;
  v12[1] = sub_10A9C;

  return NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:)(a1, a2, a3, v16, a5);
}

uint64_t sub_151988(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = async function pointer to NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = a3[52];
  v12 = a3[53];
  v13 = a3[54];
  v14 = type metadata accessor for CommonNeedsDisambiguationFlowStrategy();
  *v10 = v4;
  v10[1] = sub_10A9C;

  return NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)(a1, a2, v14, a4);
}

uint64_t sub_151A5C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = async function pointer to NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = a3[52];
  v12 = a3[53];
  v13 = a3[54];
  v14 = type metadata accessor for CommonNeedsDisambiguationFlowStrategy();
  *v10 = v4;
  v10[1] = sub_10A9C;

  return NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)(a1, a2, v14, a4);
}

uint64_t sub_151B30(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[52];
  v5 = a2[53];
  v7 = a2[54];
  v8 = type metadata accessor for CommonNeedsDisambiguationFlowStrategy();

  return NeedsDisambiguationFlowStrategyAsync.pervasiveUseCaseDescription(resolveRecord:)(a1, v8, a3);
}

uint64_t sub_151B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v13 = async function pointer to ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  v15 = a5[52];
  v16 = a5[53];
  v17 = a5[54];
  v18 = type metadata accessor for CommonNeedsDisambiguationFlowStrategy();
  *v14 = v6;
  v14[1] = sub_10A9C;

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, v18, a6);
}

uint64_t sub_151C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v15 = async function pointer to ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  v17 = a6[52];
  v18 = a6[53];
  v19 = a6[54];
  v20 = type metadata accessor for CommonNeedsDisambiguationFlowStrategy();
  *v16 = v7;
  v16[1] = sub_10A9C;

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, v20, a7);
}

unint64_t sub_151D94()
{
  result = qword_1EF300;
  if (!qword_1EF300)
  {
    sub_37130(&qword_1EF308, qword_17A970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EF300);
  }

  return result;
}

uint64_t sub_151DF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10AFC(v3);
  (*(v4 + 8))(a1);
  return a1;
}

_OWORD *sub_151E50(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_151E78()
{
  v2 = v0[65];
  v4 = v0[62];
  v3 = v0[63];
  v6 = v0[60];
  v5 = v0[61];
  v7 = v0[59];
  v8 = v0[56];
  v10 = v0[52];
  v9 = v0[53];
}

uint64_t sub_151EA0()
{

  return sub_151DF8(v0, type metadata accessor for MultipleCarKeyMatchesParameters);
}

uint64_t sub_151F14()
{
  v2 = v0[65];
  v3 = v0[62];
  v4 = v0[63];
  v6 = v0[60];
  v5 = v0[61];
  v7 = v0[59];
  v8 = v0[56];
  v10 = v0[52];
  v9 = v0[53];
}

uint64_t sub_151F3C()
{
  v2 = v0[65];
  v4 = v0[62];
  v3 = v0[63];
  v6 = v0[60];
  v5 = v0[61];
  v7 = v0[59];
  v8 = v0[56];
  v11 = v0 + 52;
  v9 = v0[52];
  v10 = v11[1];
}

uint64_t sub_151F64@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t sub_151F7C()
{
}

void sub_151FBC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_151FDC()
{
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[24];
  v7 = v0[20];
  v6 = v0[21];
}

uint64_t sub_151FFC()
{
  sub_16A6E4();
}

id sub_1520B0()
{
  v0 = sub_16A684();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_168434();
  v6 = objc_opt_self();
  v7 = &selRef_kilometers;
  if ((v5 & 1) == 0)
  {
    v7 = &selRef_miles;
  }

  v33 = [v6 *v7];
  v35 = sub_168424();
  v36 = v8;
  sub_16A674();
  sub_D030();
  v9 = sub_15260C();
  v10 = *(v1 + 8);
  v10(v4, v0);

  v35 = 0x6874676E656CLL;
  v36 = 0xE600000000000000;
  sub_16A674();
  sub_15260C();
  v10(v4, v0);
  v35 = 1684107122;
  v36 = 0xE400000000000000;
  sub_16A674();
  sub_15260C();
  v10(v4, v0);
  v11 = swift_slowAlloc();
  v34 = 0;

  UnitsForUsage = uameasfmt_getUnitsForUsage();

  if (UnitsForUsage == 1 && !v34)
  {

    v13 = *v11;
    if (*v11 == 1287)
    {
      v14 = [objc_opt_self() miles];
    }

    else
    {
      if (v13 != 1282)
      {
        sub_152628();
        sub_16ACF4(27);
        v44._countAndFlagsBits = 0xD000000000000019;
        v44._object = 0x8000000000191B40;
        sub_16A744(v44);
        LODWORD(v37) = v13;
        type metadata accessor for UAMeasureUnit(0);
        sub_16AD84();
        v24 = v35;
        if (qword_1E58E8 != -1)
        {
          sub_9ED4();
        }

        v25 = sub_16A584();
        sub_9DA0(v25, qword_1E65C0);
        sub_16A9A4();
        sub_1525EC();
        sub_386D8(v26, v27, v28, v29, v30, v31, 47, v24, v33);

        v23 = v33;
        goto LABEL_16;
      }

      v14 = [objc_opt_self() kilometers];
    }

    v23 = v14;

LABEL_16:

    return v23;
  }

  sub_152628();
  sub_16ACF4(62);
  v38._countAndFlagsBits = 0xD000000000000033;
  v38._object = 0x8000000000191B00;
  sub_16A744(v38);
  v37 = v9;
  sub_5758(&qword_1EF310, &unk_17AA60);
  v39._countAndFlagsBits = sub_16A694();
  sub_16A744(v39);

  v40._countAndFlagsBits = 10272;
  v40._object = 0xE200000000000000;
  sub_16A744(v40);
  LODWORD(v37) = UnitsForUsage;
  v41._countAndFlagsBits = sub_16AE24();
  sub_16A744(v41);

  v42._countAndFlagsBits = 8236;
  v42._object = 0xE200000000000000;
  sub_16A744(v42);
  LODWORD(v37) = v34;
  type metadata accessor for UErrorCode(0);
  sub_16AD84();
  v43._countAndFlagsBits = 41;
  v43._object = 0xE100000000000000;
  sub_16A744(v43);
  v15 = v35;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v16 = sub_16A584();
  sub_9DA0(v16, qword_1E65C0);
  sub_16A9A4();
  sub_1525EC();
  sub_386D8(v17, v18, v19, v20, v21, v22, 37, v15, v33);

  return v33;
}

uint64_t sub_15260C()
{

  return StringProtocol.cString(using:)(v0, v2, v1);
}

id sub_15263C()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37SetCarPlaySeatSettingsRCHFlowStrategy____lazy_storage___inProcessIntentHandler;
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37SetCarPlaySeatSettingsRCHFlowStrategy____lazy_storage___inProcessIntentHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37SetCarPlaySeatSettingsRCHFlowStrategy____lazy_storage___inProcessIntentHandler);
  }

  else
  {
    v4 = v0;
    if (qword_1E5968 != -1)
    {
      swift_once();
    }

    v5 = qword_1F0E10;
    v6 = *sub_D084((v0 + 56), *(v0 + 80));
    v7 = v5;
    v8 = sub_DB860();
    v9 = sub_1538C8(v7, 14, v8 & 1);

    v10 = *(v4 + v1);
    *(v4 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

uint64_t sub_15270C()
{
  v0 = sub_1693E4();
  sub_37404();
  v2 = v1;
  v4 = *(v3 + 64);
  __chkstk_darwin(v5);
  sub_A138();
  v8 = (v7 - v6);
  sub_169384();
  sub_8F624();
  sub_86E4(v8, &_swiftEmptySetSingleton, v11);

  (*(v2 + 8))(v8, v0);
  v9 = v11[3];
  sub_57A80(v11);
  if (v9)
  {
    return sub_168C64();
  }

  else
  {
    return sub_168C74();
  }
}

uint64_t sub_152828()
{
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_16E450;
  v1 = sub_168A44();
  sub_483C8(v1);
  *(v0 + 32) = sub_168A34();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 40) = sub_168A34();
  return v0;
}

uint64_t sub_1528FC()
{
  sub_D2DC();
  v0[2] = v1;
  v2 = sub_1693E4();
  v0[3] = v2;
  v3 = *(v2 - 8);
  v0[4] = v3;
  v4 = *(v3 + 64) + 15;
  v0[5] = swift_task_alloc();

  return _swift_task_switch(sub_1529B8, 0, 0);
}

uint64_t sub_1529B8()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_16A404();
  v5 = *(v2 + 16);
  v5(v1, v4, v3);
  v6 = sub_11D9C0(v1);
  v7 = v0[5];
  if (v6)
  {
    v8 = v6;
    v9 = v0[5];

    v10 = v0[1];

    return v10(v8);
  }

  else
  {
    v13 = v0[2];
    v12 = v0[3];
    type metadata accessor for CarCommandsError();
    sub_1537A0(&qword_1E92F0, type metadata accessor for CarCommandsError);
    swift_allocError();
    v5(v14, v13, v12);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_152B60()
{
  v1 = sub_5758(&qword_1EF568, &qword_17AC18);
  sub_37404();
  v36 = v2;
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v5);
  v35 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v35 - v8;
  sub_16A404();
  sub_16A464();
  sub_168904();
  sub_16A1C4();
  sub_16A1A4();
  sub_1687F4();

  sub_168894();
  sub_1693F4();
  v10 = type metadata accessor for FeatureFlagHelper();
  v11 = swift_allocObject();
  v12 = sub_168E34();
  sub_483C8(v12);

  sub_168E24();
  type metadata accessor for SnippetManager();
  *(swift_allocObject() + 16) = 0;
  v40[3] = v10;
  v40[4] = &off_1D9AF0;
  v40[0] = v11;
  v13 = type metadata accessor for SetCarPlaySeatSettingsHandleIntentFlowStrategy();
  v14 = sub_483C8(v13);
  sub_2F8D0(v40, v10);
  sub_37404();
  v16 = *(v15 + 64);
  __chkstk_darwin(v17);
  sub_A138();
  v19 = sub_153A08(v18);
  v20(v19);
  v21 = *v0;
  v39[3] = v10;
  v39[4] = &off_1D9AF0;
  v39[0] = v21;
  *(v14 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin46SetCarPlaySeatSettingsHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler) = 0;
  sub_10824(v41, v38);
  sub_10824(v39, v37);
  sub_2F8D0(v37, v37[3]);
  sub_37404();
  v23 = *(v22 + 64);
  __chkstk_darwin(v24);
  sub_A138();
  v26 = sub_153A08(v25);
  v27(v26);
  v28 = *v0;

  sub_1668CC();
  v30 = v29;
  sub_D13C(v41);
  sub_D13C(v39);
  sub_D13C(v37);
  sub_D13C(v40);

  v41[0] = v30;
  sub_1537A0(&qword_1EF570, type metadata accessor for SetCarPlaySeatSettingsHandleIntentFlowStrategy);
  sub_1687E4();

  sub_168884();
  v31 = v36;
  (*(v36 + 16))(v35, v9, v1);
  v32 = sub_5758(&qword_1EF578, &unk_17AC20);
  sub_483C8(v32);
  v33 = sub_168914();
  (*(v31 + 8))(v9, v1);
  return v33;
}

uint64_t sub_152FB4()
{
  v0 = sub_3D044();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SetCarPlaySeatSettingsRCHFlowStrategy()
{
  result = qword_1EF348;
  if (!qword_1EF348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1530C0(uint64_t a1)
{
  result = sub_1537A0(&qword_1EF550, type metadata accessor for SetCarPlaySeatSettingsRCHFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_153130()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7971C;

  return sub_1528FC();
}

uint64_t sub_1531DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SetCarPlaySeatSettingsRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t sub_1532AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SetCarPlaySeatSettingsRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t sub_15337C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SetCarPlaySeatSettingsRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t sub_15344C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = async function pointer to ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for SetCarPlaySeatSettingsRCHFlowStrategy();
  *v13 = v6;
  v13[1] = sub_6F428;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, v14, a6);
}

uint64_t sub_15352C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = async function pointer to RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)[1];
  v19 = swift_task_alloc();
  *(v12 + 16) = v19;
  v20 = type metadata accessor for SetCarPlaySeatSettingsRCHFlowStrategy();
  *v19 = v12;
  v19[1] = sub_6F850;

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(a1, a2, a3, a4, v20, a6, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_15360C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_79DCC;

  return sub_46DD8();
}

uint64_t sub_1537A0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1537E8(uint64_t a1, char a2, char a3, _BYTE *a4)
{
  v12[3] = type metadata accessor for CarPlayService();
  v12[4] = &off_1DA3F0;
  v12[0] = a1;
  v11[3] = &type metadata for ServiceAvailabilityGate;
  v11[4] = &off_1D6810;
  LOBYTE(v11[0]) = a2;
  sub_10824(v12, &a4[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin35SetCarPlaySeatSettingsIntentHandler_service]);
  sub_10824(v11, &a4[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin35SetCarPlaySeatSettingsIntentHandler_serviceAvailabilityGate]);
  a4[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin35SetCarPlaySeatSettingsIntentHandler_isRHD] = a3;
  v10.receiver = a4;
  v10.super_class = type metadata accessor for SetCarPlaySeatSettingsIntentHandler();
  v8 = objc_msgSendSuper2(&v10, "init");
  sub_D13C(v11);
  sub_D13C(v12);
  return v8;
}

id sub_1538C8(uint64_t a1, char a2, char a3)
{
  v20 = &off_1DA3F0;
  v19 = type metadata accessor for CarPlayService();
  v18[0] = a1;
  v17[3] = &type metadata for ServiceAvailabilityGate;
  v17[4] = &off_1D6810;
  LOBYTE(v17[0]) = a2;
  v6 = objc_allocWithZone(type metadata accessor for SetCarPlaySeatSettingsIntentHandler());
  sub_2F8D0(v18, v19);
  sub_37404();
  v8 = *(v7 + 64);
  __chkstk_darwin(v9);
  sub_A138();
  v12 = (v11 - v10);
  (*(v13 + 16))(v11 - v10);
  v14 = sub_2F8D0(v17, &type metadata for ServiceAvailabilityGate);
  v15 = sub_1537E8(*v12, *v14, a3, v6);
  sub_D13C(v17);
  sub_D13C(v18);
  return v15;
}

uint64_t sub_153A20(unint64_t a1)
{
  if (a1 < 3)
  {
    return *&aUnknown_6[8 * a1];
  }

  result = sub_16AE84();
  __break(1u);
  return result;
}

id sub_153A70(char *a1)
{
  sub_86E4(a1, &_swiftEmptySetSingleton, &v16);
  if (v17)
  {
    sub_D124(&v16, v18);
    v4 = v19;
    v5 = v20;
    sub_D084(v18, v19);
    (*(v5 + 8))(v4, v5);
    v7 = v6;
    if (v6)
    {
      sub_95578();
      v7 = sub_99BFC();
    }

    v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCarName:v7];

    v9 = sub_1693E4();
    sub_955E4(v9);
    (*(v10 + 8))(a1);
    sub_D13C(v18);
  }

  else
  {
    sub_57A80(&v16);
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v11 = sub_16A584();
    sub_9DA0(v11, qword_1E65C0);
    v12 = sub_16A9A4();
    sub_386D8(v12, 0x20uLL, 0xD0000000000000A5, v1 | 0x8000000000000000, 0x293A5F2874696E69, 0xE800000000000000, 60, 0xD000000000000016, v2);
    v13 = sub_1693E4();
    sub_955E4(v13);
    (*(v14 + 8))(a1);
    return 0;
  }

  return v8;
}

id sub_153C50(char *a1, unsigned __int8 a2)
{
  v3 = v2;
  v5 = a2;
  v24 = v3;
  swift_getObjectType();
  if (v5 == 160)
  {
    sub_86E4(a1, &_swiftEmptySetSingleton, &v25);
    if (v26)
    {
      sub_D124(&v25, v27);
      v6 = v28;
      v7 = v29;
      sub_D084(v27, v28);
      (*(v7 + 8))(v6, v7);
      if (v8)
      {
        sub_95578();
        v9 = sub_99BFC();
      }

      else
      {
        v9 = 0;
      }

      v21 = [objc_allocWithZone(INGetCarLockStatusIntent) initWithCarName:v9];

      v22 = swift_dynamicCastUnknownClass();
      if (!v22)
      {

        v22 = v24;
      }

      sub_D13C(v27);
      return v22;
    }

    sub_57A80(&v25);
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v19 = sub_16A584();
    sub_9DA0(v19, qword_1E65C0);
    sub_16A9A4();
    sub_FE944();
    sub_1540C0();
    v18 = 23;
  }

  else
  {
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v10 = sub_16A584();
    sub_9DA0(v10, qword_1E65C0);
    sub_16A9A4();
    sub_FE944();
    sub_1540C0();
    v18 = 18;
  }

  sub_386D8(v11, v12, v13, v14, v15, v16, v18, v17, v23);

  return v24;
}

id sub_153EA0(uint64_t a1, unsigned __int8 a2)
{
  v3 = a2;
  swift_getObjectType();
  v4 = [v15 carName];
  if (v3 == 160)
  {
    sub_16138(a1, v17);
    sub_95578();
    if (swift_dynamicCast())
    {

      v4 = v16;
    }
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v5 = sub_16A584();
    sub_9DA0(v5, qword_1E65C0);
    sub_16A9A4();
    sub_1540C0();
    sub_386D8(v6, v7, v8, v9, v10, v11, 39, v12, 0x8000000000186FF0);
  }

  v13 = [objc_allocWithZone(INGetCarLockStatusIntent) initWithCarName:v4];

  result = swift_dynamicCastUnknownClass();
  if (!result)
  {

    return v15;
  }

  return result;
}

double sub_15404C@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 == 160 && (v4 = [v2 carName]) != 0)
  {
    v5 = v4;
    *(a2 + 24) = sub_95578();
    *a2 = v5;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

unint64_t sub_154130(char a1)
{
  result = 0xD000000000000034;
  switch(a1)
  {
    case 1:
    case 25:
    case 26:
      result = 0xD00000000000002FLL;
      break;
    case 2:
      result = 0xD00000000000001FLL;
      break;
    case 3:
    case 4:
      result = 0xD00000000000001BLL;
      break;
    case 5:
    case 10:
    case 27:
      result = 0xD000000000000031;
      break;
    case 6:
      result = 0xD000000000000020;
      break;
    case 7:
      result = 0xD00000000000003ALL;
      break;
    case 8:
    case 9:
    case 23:
      result = 0xD00000000000002ELL;
      break;
    case 11:
      result = 0xD000000000000039;
      break;
    case 12:
    case 18:
      result = 0xD000000000000021;
      break;
    case 13:
      result = 0xD000000000000029;
      break;
    case 14:
      result = 0xD000000000000032;
      break;
    case 15:
    case 19:
    case 31:
      result = 0xD000000000000025;
      break;
    case 16:
      result = 0xD000000000000027;
      break;
    case 17:
      result = 0xD00000000000001ELL;
      break;
    case 20:
      result = 0xD000000000000028;
      break;
    case 21:
      result = 0xD00000000000001DLL;
      break;
    case 22:
      result = 0xD00000000000002DLL;
      break;
    case 24:
      result = 0xD000000000000030;
      break;
    case 28:
      result = 0xD000000000000036;
      break;
    case 29:
      result = 0xD000000000000038;
      break;
    case 30:
      result = 0xD000000000000037;
      break;
    case 32:
      result = 0xD000000000000024;
      break;
    case 33:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

void sub_154444(__int16 a1)
{
  v1 = HIBYTE(a1);
  v2 = a1;
  v3 = HIBYTE(a1);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  *(swift_allocObject() + 16) = xmmword_16D3A0;
  sub_D434();
  v4[4] = 0xD000000000000014;
  v4[5] = v5;
  if (v2 == 2)
  {
    v6 = 0;
    v4[6] = 0;
    v4[7] = 0;
    v4[8] = 0;
  }

  else
  {
    *(v4 + 48) = v2 & 1;
    v6 = &type metadata for Bool;
  }

  v4[9] = v6;
  v4[10] = 0xD000000000000016;
  v4[11] = 0x8000000000191FB0;
  if (v3 == 2)
  {
    v7 = 0;
    v4[12] = 0;
    v4[13] = 0;
    v4[14] = 0;
  }

  else
  {
    *(v4 + 96) = v1 & 1;
    v7 = &type metadata for Bool;
  }

  v4[15] = v7;
}

uint64_t sub_154528()
{
  v2 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v3 = sub_D414(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_1590DC();
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v9 = sub_159350();
  sub_159294(v9, xmmword_16EE50);
  v10 = type metadata accessor for NeedsDisambiguationParameters(0);
  sub_4EA90(v1 + *(v10 + 24), v8, &qword_1E6300, &qword_16ECE0);
  v11 = sub_16A0C4();
  sub_15914C(v8);
  if (v12)
  {
    sub_4EAF4(v8, &qword_1E6300, &qword_16ECE0);
    sub_159430();
  }

  else
  {
    v9[4].n128_u64[1] = v11;
    sub_10888(&v9[3]);
    sub_15917C();
    (*(v13 + 32))();
  }

  v9[5].n128_u64[0] = 0x736D657469;
  v9[5].n128_u64[1] = 0xE500000000000000;
  v14 = *v1;
  if (*v1)
  {
    sub_5758(&qword_1EF5D0, &unk_17ADF0);
    v15 = v14;
  }

  else
  {
    sub_159308();
    v9[6].n128_u64[1] = 0;
    v9[7].n128_u64[0] = 0;
  }

  v9[6].n128_u64[0] = v15;
  sub_15918C();
  v9[7].n128_u64[1] = v16;
  v9[8].n128_u64[0] = v17;
  sub_1591DC();
  v9[8].n128_u64[1] = v18;
  sub_159368(&qword_1E6300, &qword_16ECE0, *(v10 + 20));
  sub_15914C(v0);
  if (v12)
  {

    sub_4EAF4(v0, &qword_1E6300, &qword_16ECE0);
    sub_159344();
  }

  else
  {
    v9[10].n128_u64[1] = v11;
    sub_10888(&v9[9]);
    sub_15917C();
    v20 = *(v19 + 32);
    sub_159404();
    v21();
  }

  return sub_1593F8();
}

uint64_t sub_154750()
{
  v3 = v1;
  v4 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v5 = sub_D414(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_1590DC();
  __chkstk_darwin(v8);
  sub_159314();
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v9 = swift_allocObject();
  sub_AE798(v9, xmmword_176380);
  sub_1592FC();
  sub_4EA90(v10, v11, v12, &qword_16ECE0);
  v13 = sub_16A0C4();
  sub_15914C(v2);
  if (v14)
  {
    sub_4EAF4(v2, &qword_1E6300, &qword_16ECE0);
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
  }

  else
  {
    *(v9 + 72) = v13;
    sub_10888((v9 + 48));
    sub_15917C();
    v16 = *(v15 + 32);
    sub_1592FC();
    v17();
  }

  *(v9 + 80) = 0x6E4F6C616E676973;
  *(v9 + 88) = 0xE800000000000000;
  v18 = type metadata accessor for SignalActivationParameters(0);
  sub_1593B4(*(v18 + 20));
  if (v14)
  {
    v21 = 0;
    *(v9 + 96) = 0;
    *(v9 + 104) = 0;
    *(v9 + 112) = 0;
  }

  else
  {
    *(v9 + 96) = v20 & 1;
    v21 = &type metadata for Bool;
  }

  *(v9 + 120) = v21;
  *(v9 + 128) = 0x6C62697369567369;
  *(v9 + 136) = 0xE900000000000065;
  sub_1593B4(*(v19 + 24));
  if (v14)
  {
    *(v9 + 144) = 0;
    *(v9 + 152) = 0;
    *(v9 + 160) = 0;
  }

  else
  {
    *(v9 + 144) = v22 & 1;
  }

  sub_1592C0();
  *(v9 + 168) = v23;
  *(v9 + 176) = v24;
  sub_1591DC();
  *(v9 + 184) = v25;
  sub_4EA90(v3 + *(v26 + 28), v0, &qword_1E6300, &qword_16ECE0);
  sub_15914C(v0);
  if (v14)
  {
    sub_4EAF4(v0, &qword_1E6300, &qword_16ECE0);
    *(v9 + 192) = 0u;
    *(v9 + 208) = 0u;
  }

  else
  {
    *(v9 + 216) = v13;
    sub_10888((v9 + 192));
    sub_15917C();
    v28 = *(v27 + 32);
    sub_159404();
    v29();
  }

  return v9;
}

uint64_t sub_1549B4()
{
  v0 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v1 = sub_D414(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - v4;
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v6 = swift_allocObject();
  sub_159294(v6, xmmword_16D9A0);
  sub_159404();
  sub_4EA90(v7, v8, v9, &qword_16ECE0);
  v10 = sub_16A0C4();
  if (sub_9E2C(v5, 1, v10) == 1)
  {
    sub_4EAF4(v5, &qword_1E6300, &qword_16ECE0);
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
  }

  else
  {
    *(v6 + 72) = v10;
    sub_10888((v6 + 48));
    sub_4EB50(v10);
    (*(v11 + 32))();
  }

  return v6;
}

uint64_t sub_154AFC()
{
  v3 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v4 = sub_D414(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_1590DC();
  __chkstk_darwin(v7);
  sub_1593A0();
  v9 = __chkstk_darwin(v8);
  v11 = &v41 - v10;
  __chkstk_darwin(v9);
  v13 = &v41 - v12;
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v14 = swift_allocObject();
  sub_AE798(v14, xmmword_176370);
  sub_1593C0();
  sub_4EA90(v15, v16, v17, &qword_16ECE0);
  v18 = sub_16A0C4();
  sub_1590F8(v13);
  if (v19)
  {
    sub_4EAF4(v13, &qword_1E6300, &qword_16ECE0);
    sub_159430();
  }

  else
  {
    *(v14 + 72) = v18;
    sub_10888((v14 + 48));
    sub_15916C();
    v21 = *(v20 + 32);
    sub_1593C0();
    v22();
  }

  sub_D434();
  *(v14 + 80) = 0xD000000000000019;
  *(v14 + 88) = v23;
  v24 = type metadata accessor for CarNameParameters(0);
  sub_159410(v24[5]);
  if (v19)
  {
    v26 = 0;
    *(v14 + 96) = 0;
    *(v14 + 104) = 0;
    *(v14 + 112) = 0;
  }

  else
  {
    *(v14 + 96) = v25 & 1;
    v26 = &type metadata for Bool;
  }

  *(v14 + 120) = v26;
  *(v14 + 128) = 0xD000000000000010;
  *(v14 + 136) = 0x800000000018BD80;
  sub_159410(v24[6]);
  if (v19)
  {
    v28 = 0;
    *(v14 + 144) = 0;
    *(v14 + 152) = 0;
    *(v14 + 160) = 0;
  }

  else
  {
    *(v14 + 144) = v27 & 1;
    v28 = &type metadata for Bool;
  }

  *(v14 + 168) = v28;
  strcpy((v14 + 176), "punchoutAction");
  *(v14 + 191) = -18;
  sub_4EA90(v1 + v24[7], v11, &qword_1E6300, &qword_16ECE0);
  sub_1590F8(v11);
  if (v19)
  {
    sub_4EAF4(v11, &qword_1E6300, &qword_16ECE0);
    *(v14 + 192) = 0u;
    *(v14 + 208) = 0u;
  }

  else
  {
    *(v14 + 216) = v18;
    sub_10888((v14 + 192));
    sub_15916C();
    (*(v29 + 32))();
  }

  sub_159238();
  *(v14 + 224) = v30;
  *(v14 + 232) = v31;
  sub_4EA90(v1 + v24[8], v2, &qword_1E6300, &qword_16ECE0);
  sub_1590F8(v2);
  if (v19)
  {
    sub_4EAF4(v2, &qword_1E6300, &qword_16ECE0);
    *(v14 + 240) = 0u;
    *(v14 + 256) = 0u;
  }

  else
  {
    *(v14 + 264) = v18;
    sub_10888((v14 + 240));
    sub_15916C();
    v33 = *(v32 + 32);
    sub_1593EC();
    v34();
  }

  sub_159128();
  *(v14 + 272) = v35;
  *(v14 + 280) = v36;
  sub_159368(&qword_1E6300, &qword_16ECE0, v24[9]);
  sub_1590F8(v0);
  if (v19)
  {
    sub_4EAF4(v0, &qword_1E6300, &qword_16ECE0);
    *(v14 + 288) = 0u;
    *(v14 + 304) = 0u;
  }

  else
  {
    *(v14 + 312) = v18;
    sub_10888((v14 + 288));
    sub_15916C();
    v38 = *(v37 + 32);
    sub_30B7C();
    v39();
  }

  return sub_1593F8();
}

uint64_t sub_154EC0()
{
  v4 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v5 = sub_D414(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_1590DC();
  __chkstk_darwin(v8);
  sub_1593A0();
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v12 = sub_159350();
  *(v12 + 16) = xmmword_16EE50;
  sub_159238();
  *(v13 + 32) = v14;
  *(v13 + 40) = v15;
  matched = type metadata accessor for NoCarKeyMatchParameters(0);
  sub_1593CC(matched);
  sub_1593C0();
  sub_4EA90(v17, v18, v19, &qword_16ECE0);
  v20 = sub_16A0C4();
  sub_1590F8(v11);
  if (v21)
  {
    sub_4EAF4(v11, &qword_1E6300, &qword_16ECE0);
    sub_159430();
  }

  else
  {
    *(v12 + 72) = v20;
    sub_10888((v12 + 48));
    sub_15916C();
    v23 = *(v22 + 32);
    sub_1593C0();
    v24();
  }

  sub_1592D4();
  sub_4EA90(v1, v2, &qword_1E6300, &qword_16ECE0);
  sub_1590F8(v2);
  if (v21)
  {
    sub_4EAF4(v2, &qword_1E6300, &qword_16ECE0);
    sub_15943C();
  }

  else
  {
    *(v12 + 120) = v20;
    sub_10888((v12 + 96));
    sub_15916C();
    v26 = *(v25 + 32);
    sub_1593EC();
    v27();
  }

  sub_159128();
  *(v12 + 128) = v28;
  *(v12 + 136) = v29;
  sub_159368(&qword_1E6300, &qword_16ECE0, *(v3 + 24));
  sub_1590F8(v0);
  if (v21)
  {
    sub_4EAF4(v0, &qword_1E6300, &qword_16ECE0);
    sub_159344();
  }

  else
  {
    *(v12 + 168) = v20;
    sub_10888((v12 + 144));
    sub_15916C();
    v31 = *(v30 + 32);
    sub_30B7C();
    v32();
  }

  return sub_1593F8();
}

void sub_155118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_CA350();
  a19 = v23;
  a20 = v24;
  v25 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v26 = sub_D414(v25);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  sub_1590DC();
  v30 = __chkstk_darwin(v29);
  v32 = &a9 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &a9 - v34;
  __chkstk_darwin(v33);
  v37 = &a9 - v36;
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_17ACB0;
  sub_159238();
  *(v39 + 32) = v40;
  *(v39 + 40) = v41;
  v42 = type metadata accessor for MultipleCarKeyMatchesParameters(0);
  sub_1593CC(v42);
  sub_4EA90(v21 + v43, v37, &qword_1E6300, &qword_16ECE0);
  v44 = sub_16A0C4();
  sub_15914C(v37);
  if (v45)
  {
    sub_4EAF4(v37, &qword_1E6300, &qword_16ECE0);
    sub_159430();
  }

  else
  {
    *(v38 + 72) = v44;
    sub_10888((v38 + 48));
    sub_15917C();
    (*(v46 + 32))();
  }

  sub_1592D4();
  sub_4EA90(v21, v35, &qword_1E6300, &qword_16ECE0);
  sub_15914C(v35);
  if (v45)
  {
    sub_4EAF4(v35, &qword_1E6300, &qword_16ECE0);
    sub_15943C();
  }

  else
  {
    *(v38 + 120) = v44;
    sub_10888((v38 + 96));
    sub_15917C();
    (*(v47 + 32))();
  }

  sub_159128();
  *(v38 + 128) = v48;
  *(v38 + 136) = v49;
  sub_4EA90(v21 + v22[6], v32, &qword_1E6300, &qword_16ECE0);
  sub_15914C(v32);
  if (v45)
  {
    sub_4EAF4(v32, &qword_1E6300, &qword_16ECE0);
    sub_159344();
  }

  else
  {
    *(v38 + 168) = v44;
    sub_10888((v38 + 144));
    sub_15917C();
    v51 = *(v50 + 32);
    sub_1592FC();
    v52();
  }

  *(v38 + 176) = 0x664F7265626D756ELL;
  *(v38 + 184) = 0xEF7379654B726143;
  v53 = v21 + v22[7];
  if (*(v53 + 8))
  {
    *(v38 + 200) = 0;
    *(v38 + 208) = 0;
    v54 = 0;
  }

  else
  {
    v54 = *v53;
  }

  *(v38 + 192) = v54;
  sub_15941C();
  *(v38 + 216) = v55;
  *(v38 + 224) = v56;
  *(v38 + 232) = 0xE700000000000000;
  sub_159368(&qword_1E6300, &qword_16ECE0, v22[8]);
  sub_15914C(v20);
  if (v45)
  {
    sub_4EAF4(v20, &qword_1E6300, &qword_16ECE0);
    *(v38 + 240) = 0u;
    *(v38 + 256) = 0u;
  }

  else
  {
    *(v38 + 264) = v44;
    sub_10888((v38 + 240));
    sub_15917C();
    v58 = *(v57 + 32);
    sub_159404();
    v59();
  }

  sub_CA368();
}

void sub_155490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_CA350();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v25 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v26 = sub_D414(v25);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v31 = &a9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  sub_159314();
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v32 = swift_allocObject();
  sub_AE798(v32, xmmword_175690);
  sub_1592FC();
  sub_4EA90(v33, v34, v35, &qword_16ECE0);
  v36 = sub_16A0C4();
  sub_15914C(v21);
  if (v37)
  {
    sub_4EAF4(v21, &qword_1E6300, &qword_16ECE0);
    *(v32 + 48) = 0u;
    *(v32 + 64) = 0u;
  }

  else
  {
    *(v32 + 72) = v36;
    sub_10888((v32 + 48));
    sub_15917C();
    v39 = *(v38 + 32);
    sub_1592FC();
    v40();
  }

  sub_D434();
  *(v32 + 80) = 0xD000000000000011;
  *(v32 + 88) = v41;
  PowerLevelHandleIntentParemeters = type metadata accessor for GetPowerLevelHandleIntentParemeters(0);
  v43 = *(v24 + PowerLevelHandleIntentParemeters[5]);
  if (v43)
  {
    v44 = sub_169FD4();
    v45 = v43;
  }

  else
  {
    v44 = sub_159308();
    *(v32 + 104) = 0;
    *(v32 + 112) = 0;
  }

  *(v32 + 96) = v45;
  *(v32 + 120) = v44;
  strcpy((v32 + 128), "remainingFuel");
  *(v32 + 142) = -4864;
  v46 = *(v24 + PowerLevelHandleIntentParemeters[6]);
  if (v46)
  {
    v47 = sub_16A004();
    v48 = v46;
  }

  else
  {
    v47 = sub_159308();
    *(v32 + 152) = 0;
    *(v32 + 160) = 0;
  }

  *(v32 + 144) = v48;
  *(v32 + 168) = v47;
  *(v32 + 176) = 0x6E696E69616D6572;
  *(v32 + 184) = 0xEF65677261684367;
  v49 = *(v24 + PowerLevelHandleIntentParemeters[7]);
  if (v49)
  {
    v50 = sub_16A004();
    v51 = v49;
  }

  else
  {
    v50 = sub_159308();
    *(v32 + 200) = 0;
    *(v32 + 208) = 0;
  }

  *(v32 + 192) = v51;
  *(v32 + 216) = v50;
  *(v32 + 224) = 0x676E696772616863;
  *(v32 + 232) = 0xE800000000000000;
  sub_1593B4(PowerLevelHandleIntentParemeters[8]);
  if (v37)
  {
    v53 = 0;
    *(v32 + 240) = 0;
    *(v32 + 248) = 0;
    *(v32 + 256) = 0;
  }

  else
  {
    *(v32 + 240) = v52 & 1;
    v53 = &type metadata for Bool;
  }

  *(v32 + 264) = v53;
  *(v32 + 272) = 0x75466F54656D6974;
  *(v32 + 280) = 0xEA00000000006C6CLL;
  v54 = *(v24 + PowerLevelHandleIntentParemeters[9]);
  if (v54)
  {
    v55 = sub_16A054();
    v56 = v54;
  }

  else
  {
    v55 = sub_159308();
    *(v32 + 296) = 0;
    *(v32 + 304) = 0;
  }

  *(v32 + 288) = v56;
  *(v32 + 312) = v55;
  *(v32 + 320) = 0x7453656369766564;
  *(v32 + 328) = 0xEB00000000657461;
  v57 = *(v24 + PowerLevelHandleIntentParemeters[10]);
  if (v57)
  {
    sub_16A124();
    v58 = v57;
  }

  else
  {
    sub_159308();
    *(v32 + 344) = 0;
    *(v32 + 352) = 0;
  }

  *(v32 + 336) = v58;
  sub_15918C();
  *(v32 + 360) = v59;
  *(v32 + 368) = v60;
  sub_1591DC();
  *(v32 + 376) = v61;
  sub_4EA90(v24 + PowerLevelHandleIntentParemeters[11], v31, &qword_1E6300, &qword_16ECE0);
  sub_15914C(v31);
  if (v37)
  {

    sub_4EAF4(v31, &qword_1E6300, &qword_16ECE0);
    *(v32 + 384) = 0u;
    *(v32 + 400) = 0u;
  }

  else
  {
    *(v32 + 408) = v36;
    sub_10888((v32 + 384));
    sub_15917C();
    (*(v62 + 32))();
  }

  sub_CA368();
}

void sub_15587C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_CA350();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = v21;
  v31 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v32 = sub_D414(v31);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  sub_1590DC();
  __chkstk_darwin(v35);
  v37 = &a9 - v36;
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v38 = sub_159350();
  sub_AE798(v38, xmmword_16EE50);
  sub_4EA90(v30, v37, &qword_1E6300, &qword_16ECE0);
  v39 = sub_16A0C4();
  sub_1590F8(v37);
  if (v40)
  {
    sub_4EAF4(v37, &qword_1E6300, &qword_16ECE0);
    *(v38 + 48) = 0u;
    *(v38 + 64) = 0u;
  }

  else
  {
    *(v38 + 72) = v39;
    sub_10888((v38 + 48));
    sub_15916C();
    (*(v41 + 32))();
  }

  *(v38 + 80) = v29;
  *(v38 + 88) = v27;
  v42 = v25(0);
  sub_1593B4(*(v42 + 20));
  if (v40)
  {
    *(v38 + 96) = 0;
    *(v38 + 104) = 0;
    *(v38 + 112) = 0;
  }

  else
  {
    *(v38 + 96) = v43 & 1;
  }

  sub_1592C0();
  *(v38 + 120) = v44;
  *(v38 + 128) = v45;
  sub_1591DC();
  *(v38 + 136) = v46;
  sub_4EA90(v30 + *(v47 + 24), v20, &qword_1E6300, &qword_16ECE0);
  sub_1590F8(v20);
  if (v40)
  {
    sub_4EAF4(v20, &qword_1E6300, &qword_16ECE0);
    *(v38 + 144) = 0u;
    *(v38 + 160) = 0u;
  }

  else
  {
    *(v38 + 168) = v39;
    sub_10888((v38 + 144));
    sub_15916C();
    v49 = *(v48 + 32);
    sub_30B7C();
    v50();
  }

  sub_CA368();
}

uint64_t sub_155A98()
{
  v2 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v3 = sub_D414(v2);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  sub_159314();
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v9 = swift_allocObject();
  sub_AE798(v9, xmmword_176380);
  sub_1592FC();
  sub_4EA90(v10, v11, v12, &qword_16ECE0);
  v13 = sub_16A0C4();
  sub_15914C(v1);
  if (v14)
  {
    sub_4EAF4(v1, &qword_1E6300, &qword_16ECE0);
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
  }

  else
  {
    *(v9 + 72) = v13;
    sub_10888((v9 + 48));
    sub_15917C();
    v16 = *(v15 + 32);
    sub_1592FC();
    v17();
  }

  strcpy((v9 + 80), "climateEnabled");
  *(v9 + 95) = -18;
  ClimateStatusParameters = type metadata accessor for GetClimateStatusParameters(0);
  sub_159410(ClimateStatusParameters[5]);
  if (v14)
  {
    *(v9 + 96) = 0;
    *(v9 + 104) = 0;
    *(v9 + 112) = 0;
  }

  else
  {
    *(v9 + 96) = v19 & 1;
  }

  sub_1592C0();
  *(v9 + 120) = v20;
  *(v9 + 128) = v21;
  sub_1591DC();
  *(v9 + 136) = v22;
  sub_4EA90(v0 + ClimateStatusParameters[6], v8, &qword_1E6300, &qword_16ECE0);
  sub_15914C(v8);
  if (v14)
  {
    sub_4EAF4(v8, &qword_1E6300, &qword_16ECE0);
    *(v9 + 144) = 0u;
    *(v9 + 160) = 0u;
  }

  else
  {
    *(v9 + 168) = v13;
    sub_10888((v9 + 144));
    sub_15917C();
    (*(v23 + 32))();
  }

  sub_D434();
  *(v9 + 176) = 0xD00000000000001CLL;
  *(v9 + 184) = v24;
  sub_159410(ClimateStatusParameters[7]);
  if (v14)
  {
    v26 = 0;
    *(v9 + 192) = 0;
    *(v9 + 200) = 0;
    *(v9 + 208) = 0;
  }

  else
  {
    *(v9 + 192) = v25 & 1;
    v26 = &type metadata for Bool;
  }

  *(v9 + 216) = v26;
  return v9;
}

void *sub_155D1C()
{
  v3 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v4 = sub_D414(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_1590DC();
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v10 = sub_159350();
  v11 = v10;
  *(v10 + 16) = xmmword_16EE50;
  *(v10 + 32) = 0x64656C62616E65;
  *(v10 + 40) = 0xE700000000000000;
  v12 = *v1;
  if (v12 == 2)
  {
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
  }

  else
  {
    *(v10 + 48) = v12 & 1;
  }

  sub_15941C();
  v11[9] = v13;
  v11[10] = v14;
  v11[11] = 0xE700000000000000;
  v15 = type metadata accessor for SetDigitalCarKeyClimateStatusParameters(0);
  sub_1593CC(v15);
  sub_4EA90(&v1[v16], v9, &qword_1E6300, &qword_16ECE0);
  v17 = sub_16A0C4();
  sub_1590F8(v9);
  if (v18)
  {
    sub_4EAF4(v9, &qword_1E6300, &qword_16ECE0);
    sub_15943C();
  }

  else
  {
    v11[15] = v17;
    sub_10888(v11 + 12);
    sub_15916C();
    v20 = *(v19 + 32);
    sub_1593EC();
    v21();
  }

  sub_159128();
  v11[16] = v22;
  v11[17] = v23;
  sub_159368(&qword_1E6300, &qword_16ECE0, *(v2 + 24));
  sub_1590F8(v0);
  if (v18)
  {
    sub_4EAF4(v0, &qword_1E6300, &qword_16ECE0);
    sub_159344();
  }

  else
  {
    v11[21] = v17;
    sub_10888(v11 + 18);
    sub_15916C();
    v25 = *(v24 + 32);
    sub_30B7C();
    v26();
  }

  return v11;
}

uint64_t sub_155F30()
{
  v1 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v2 = sub_D414(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v7 = sub_159350();
  *(v7 + 16) = xmmword_16EE50;
  sub_D434();
  *(v8 + 32) = 0xD000000000000014;
  *(v8 + 40) = v9;
  v10 = *v0;
  if (v10 == 2)
  {
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
  }

  else
  {
    *(v7 + 48) = v10 & 1;
  }

  sub_1593D8();
  *(v7 + 72) = v11;
  *(v7 + 80) = v12;
  *(v7 + 88) = 0xE800000000000000;
  v13 = type metadata accessor for SetCarPlayClimateStatusParameters(0);
  sub_4EA90(&v0[*(v13 + 20)], v6, &qword_1E6300, &qword_16ECE0);
  v14 = sub_16A0C4();
  sub_1590F8(v6);
  if (v15)
  {
    sub_4EAF4(v6, &qword_1E6300, &qword_16ECE0);
    *(v7 + 96) = 0u;
    *(v7 + 112) = 0u;
  }

  else
  {
    *(v7 + 120) = v14;
    sub_10888((v7 + 96));
    sub_15916C();
    (*(v16 + 32))();
  }

  sub_D434();
  *(v7 + 128) = 0xD000000000000011;
  *(v7 + 136) = v17;
  v18 = *&v0[*(v13 + 24)];
  if (v18)
  {
    v19 = sub_169F14();
  }

  else
  {
    v19 = 0;
    *(v7 + 152) = 0;
    *(v7 + 160) = 0;
  }

  *(v7 + 144) = v18;
  *(v7 + 168) = v19;

  return v7;
}

uint64_t sub_156108()
{
  v3 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v4 = sub_D414(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_1590DC();
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v10 = sub_159350();
  *(v10 + 16) = xmmword_16EE50;
  sub_D434();
  *(v11 + 32) = 0xD000000000000015;
  *(v11 + 40) = v12;
  v13 = *v1;
  if (v13 == 2)
  {
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
  }

  else
  {
    *(v10 + 48) = v13 & 1;
  }

  sub_1593D8();
  *(v10 + 72) = v14;
  *(v10 + 80) = v15;
  *(v10 + 88) = 0xE800000000000000;
  v16 = type metadata accessor for SetCarPlaySeatSettingsParameters(0);
  sub_1593CC(v16);
  sub_4EA90(&v1[v17], v9, &qword_1E6300, &qword_16ECE0);
  v18 = sub_16A0C4();
  sub_1590F8(v9);
  if (v19)
  {
    sub_4EAF4(v9, &qword_1E6300, &qword_16ECE0);
    sub_15943C();
  }

  else
  {
    *(v10 + 120) = v18;
    sub_10888((v10 + 96));
    sub_15916C();
    v21 = *(v20 + 32);
    sub_1593EC();
    v22();
  }

  sub_D434();
  *(v10 + 128) = 0xD000000000000011;
  *(v10 + 136) = v23;
  sub_159368(&qword_1E6300, &qword_16ECE0, *(v2 + 24));
  sub_1590F8(v0);
  if (v19)
  {
    sub_4EAF4(v0, &qword_1E6300, &qword_16ECE0);
    sub_159344();
  }

  else
  {
    *(v10 + 168) = v18;
    sub_10888((v10 + 144));
    sub_15916C();
    v25 = *(v24 + 32);
    sub_30B7C();
    v26();
  }

  return sub_1593F8();
}

uint64_t sub_15632C(__int16 a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return sub_D2B0();
}

uint64_t sub_156344()
{
  sub_D2DC();
  sub_154444(*(v0 + 48));
  v2 = v1;
  *(v0 + 24) = v1;
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_1563E8;
  v4 = *(v0 + 16);

  return sub_156570(2, v2);
}

uint64_t sub_1563E8()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    sub_3021C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 24);

    v13 = sub_1590C8();

    return v14(v13);
  }
}

uint64_t sub_156510()
{
  sub_D2DC();
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_156570(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 56) = a1;
  return sub_D2B0();
}

uint64_t sub_156588()
{
  sub_1696C();
  v1 = sub_154130(*(v0 + 56));
  v3 = v2;
  *(v0 + 32) = v2;
  v4 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v11 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v5 = swift_task_alloc();
  v6 = sub_159210(v5);
  *v6 = v7;
  v6[1] = sub_156648;
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);

  return v11(v1, v3, v8);
}

uint64_t sub_156648()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    sub_3021C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = sub_1590C8();

    return v14(v13);
  }
}

uint64_t sub_156770()
{
  sub_D2DC();
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_1567D0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_1567E4()
{
  sub_D2DC();
  v2 = *(v1 + 16);
  v3 = sub_154750();
  sub_15921C(v3);
  v4 = swift_task_alloc();
  v5 = sub_159210(v4);
  *v5 = v6;
  sub_159118(v5);

  return sub_156570(1, v0);
}

uint64_t sub_156878()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    sub_3021C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = sub_1590C8();

    return v14(v13);
  }
}

uint64_t sub_1569A0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_1569B4()
{
  sub_D2DC();
  v2 = *(v1 + 16);
  v3 = sub_154AFC();
  sub_15921C(v3);
  v4 = swift_task_alloc();
  v5 = sub_159210(v4);
  *v5 = v6;
  sub_159118(v5);

  return sub_156570(3, v0);
}

uint64_t sub_156A48(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_156A5C()
{
  sub_D2DC();
  v2 = *(v1 + 16);
  v3 = sub_154750();
  sub_15921C(v3);
  v4 = swift_task_alloc();
  v5 = sub_159210(v4);
  *v5 = v6;
  sub_159118(v5);

  return sub_156570(5, v0);
}

uint64_t sub_156AF0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_156B04()
{
  sub_D2DC();
  v2 = *(v1 + 16);
  v3 = sub_155A98();
  sub_15921C(v3);
  v4 = swift_task_alloc();
  v5 = sub_159210(v4);
  *v5 = v6;
  sub_159118(v5);

  return sub_156570(10, v0);
}

uint64_t sub_156B98(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_156C3C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_156C50()
{
  sub_D2DC();
  v2 = *(v1 + 16);
  v3 = sub_154750();
  sub_15921C(v3);
  v4 = swift_task_alloc();
  v5 = sub_159210(v4);
  *v5 = v6;
  sub_159118(v5);

  return sub_156570(7, v0);
}

uint64_t sub_156CE4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_156D8C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_156E34(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_156E48()
{
  sub_D2DC();
  v2 = *(v1 + 16);
  v3 = sub_154528();
  sub_15921C(v3);
  v4 = swift_task_alloc();
  v5 = sub_159210(v4);
  *v5 = v6;
  sub_159118(v5);

  return sub_156570(14, v0);
}

uint64_t sub_156EDC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_156EF0()
{
  sub_D2DC();
  v2 = *(v1 + 16);
  v3 = sub_154528();
  sub_15921C(v3);
  v4 = swift_task_alloc();
  v5 = sub_159210(v4);
  *v5 = v6;
  sub_159118(v5);

  return sub_156570(16, v0);
}

uint64_t sub_156F84(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_156F98()
{
  sub_D2DC();
  v2 = *(v1 + 16);
  v3 = sub_1549B4();
  sub_15921C(v3);
  v4 = swift_task_alloc();
  v5 = sub_159210(v4);
  *v5 = v6;
  sub_159118(v5);

  return sub_156570(17, v0);
}

uint64_t sub_15702C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_157040()
{
  sub_D2DC();
  v2 = *(v1 + 16);
  v3 = sub_154EC0();
  sub_15921C(v3);
  v4 = swift_task_alloc();
  v5 = sub_159210(v4);
  *v5 = v6;
  sub_159118(v5);

  return sub_156570(18, v0);
}

uint64_t sub_1570D4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_1570E8()
{
  sub_D2DC();
  v2 = *(v1 + 16);
  v3 = sub_154AFC();
  sub_15921C(v3);
  v4 = swift_task_alloc();
  v5 = sub_159210(v4);
  *v5 = v6;
  sub_159118(v5);

  return sub_156570(20, v0);
}

uint64_t sub_15717C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_157190()
{
  sub_D2DC();
  v2 = *(v1 + 16);
  v3 = sub_154AFC();
  sub_15921C(v3);
  v4 = swift_task_alloc();
  v5 = sub_159210(v4);
  *v5 = v6;
  sub_159118(v5);

  return sub_156570(21, v0);
}

uint64_t sub_157224(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_1572C8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_1572DC()
{
  sub_1696C();
  v1 = *(v0 + 16);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v2 = swift_allocObject();
  *(v0 + 32) = v2;
  *(v2 + 16) = xmmword_16D9A0;
  sub_D434();
  *(v3 + 32) = 0xD000000000000010;
  *(v3 + 40) = v4;
  v5 = sub_16A0C4();
  *(v2 + 72) = v5;
  sub_10888((v2 + 48));
  sub_4EB50(v5);
  (*(v6 + 16))();
  v7 = swift_task_alloc();
  v8 = sub_159210(v7);
  *v8 = v9;
  sub_159118(v8);

  return sub_156570(24, v2);
}

uint64_t sub_157400(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_1574C0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_157580(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_157594()
{
  sub_D2DC();
  v2 = *(v1 + 16);
  v3 = sub_155D1C();
  sub_15921C(v3);
  v4 = swift_task_alloc();
  v5 = sub_159210(v4);
  *v5 = v6;
  sub_159118(v5);

  return sub_156570(27, v0);
}

uint64_t sub_157628(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_15763C()
{
  sub_D2DC();
  v2 = *(v1 + 16);
  v3 = sub_155F30();
  sub_15921C(v3);
  v4 = swift_task_alloc();
  v5 = sub_159210(v4);
  *v5 = v6;
  sub_159118(v5);

  return sub_156570(29, v0);
}

uint64_t sub_1576D0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_1576E4()
{
  sub_D2DC();
  v2 = *(v1 + 16);
  v3 = sub_156108();
  sub_15921C(v3);
  v4 = swift_task_alloc();
  v5 = sub_159210(v4);
  *v5 = v6;
  sub_159118(v5);

  return sub_156570(30, v0);
}

uint64_t sub_157778(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_15778C()
{
  sub_D2DC();
  v2 = *(v1 + 16);
  v3 = sub_1549B4();
  sub_15921C(v3);
  v4 = swift_task_alloc();
  v5 = sub_159210(v4);
  *v5 = v6;
  sub_159118(v5);

  return sub_156570(32, v0);
}

void sub_157874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_CA350();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = sub_16A164();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &a9 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  v32 = sub_D414(v31);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  sub_4EA90(v25, &a9 - v35, &qword_1E5B48, &unk_16DDB0);
  (*(v27 + 16))(v30, v23, v26);
  sub_16A084();
  (*(v27 + 8))(v23, v26);
  sub_4EAF4(v25, &qword_1E5B48, &unk_16DDB0);
  sub_CA368();
}

uint64_t sub_157BA8()
{
  sub_159288();
  sub_5758(&qword_1E6300, &qword_16ECE0);
  v0 = sub_159324();

  return sub_9E2C(v0, v1, v2);
}

uint64_t sub_157C04()
{
  sub_159288();
  sub_5758(&qword_1E6300, &qword_16ECE0);
  v0 = sub_1591C8();

  return sub_5370(v0, v1, v2, v3);
}

uint64_t sub_157C84()
{
  sub_159288();
  sub_16A0C4();
  v0 = sub_159324();

  return sub_9E2C(v0, v1, v2);
}

uint64_t sub_157CD4()
{
  sub_159288();
  sub_16A0C4();
  v0 = sub_1591C8();

  return sub_5370(v0, v1, v2, v3);
}

uint64_t sub_157D30()
{
  result = sub_16A0C4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_157DC4()
{
  sub_15878C(319, &qword_1E8060, &type metadata accessor for SpeakableString);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_15838C(319, &unk_1EF760);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_157EC0()
{
  sub_15878C(319, &qword_1E8060, &type metadata accessor for SpeakableString);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_15838C(319, &unk_1EF760);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_157FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v7 = sub_10C0B8(v6);
  if (*(v8 + 84) != a2)
  {
    return sub_1591F0(*(a1 + *(a3 + 20)));
  }

  return sub_9E2C(a1, a2, v7);
}

uint64_t sub_15805C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_159288();
  v8 = sub_5758(&qword_1E6300, &qword_16ECE0);
  result = sub_10C0B8(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = sub_1591C8();

    return sub_5370(v11, v12, v13, v14);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4;
  }

  return result;
}

uint64_t sub_1580FC()
{
  sub_15878C(319, &qword_1E8060, &type metadata accessor for SpeakableString);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_15878C(319, &qword_1EF898, &type metadata accessor for DialogLength);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_15878C(319, &qword_1EF8A0, &type metadata accessor for DialogPercent);
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_15838C(319, &unk_1EF760);
    if (v6 > 0x3F)
    {
      return v3;
    }

    sub_15878C(319, &qword_1EF8A8, &type metadata accessor for DialogDuration);
    if (v7 > 0x3F)
    {
      return v3;
    }

    sub_15878C(319, &unk_1EF8B0, &type metadata accessor for SirikitDeviceState);
    if (v8 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_1582C0()
{
  sub_15878C(319, &qword_1E8060, &type metadata accessor for SpeakableString);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_15838C(319, &unk_1EF960);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_15838C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_16AB24();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_15842C(uint64_t a1)
{
  sub_1591A0(a1, &qword_1E8060);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_15838C(319, &unk_1EF760);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_159334();
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t sub_158540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v7 = sub_10C0B8(v6);
  if (*(v8 + 84) != a2)
  {
    return sub_1591F0(*(a1 + *(a3 + 24)));
  }

  v9 = v7;
  v10 = a1 + *(a3 + 20);

  return sub_9E2C(v10, a2, v9);
}

uint64_t sub_158600(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_159288();
  v8 = sub_5758(&qword_1E6300, &qword_16ECE0);
  result = sub_10C0B8(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = sub_159228();

    return sub_5370(v11, v12, v4, v13);
  }

  else
  {
    *(v5 + *(a4 + 24)) = v4;
  }

  return result;
}

void sub_1586A8()
{
  sub_15838C(319, &unk_1EF760);
  if (v0 <= 0x3F)
  {
    sub_15878C(319, &qword_1E8060, &type metadata accessor for SpeakableString);
    if (v1 <= 0x3F)
    {
      sub_15878C(319, &unk_1EFC68, &type metadata accessor for DialogTemperature);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_15878C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_16AB24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1587F4(unsigned __int8 *a1, int a2)
{
  if (a2 == 253)
  {
    v2 = *a1;
    if (v2 >= 2)
    {
      v3 = ((v2 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v3 = -2;
    }

    if (v3 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    sub_5758(&qword_1E6300, &qword_16ECE0);
    v5 = sub_159228();

    return sub_9E2C(v5, v6, v7);
  }
}

void sub_1588A8()
{
  sub_159288();
  if (v2 == 253)
  {
    *v1 = v0 + 2;
  }

  else
  {
    sub_5758(&qword_1E6300, &qword_16ECE0);
    v3 = sub_159228();

    sub_5370(v3, v4, v0, v5);
  }
}

void sub_158924()
{
  sub_15838C(319, &unk_1EF760);
  if (v1 <= 0x3F)
  {
    sub_1591A0(v0, &qword_1E8060);
    if (v2 <= 0x3F)
    {
      sub_159334();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1589C8()
{
  sub_159288();
  sub_5758(&qword_1E6300, &qword_16ECE0);
  v0 = sub_159324();

  return sub_9E2C(v0, v1, v2);
}

uint64_t sub_158A24()
{
  sub_159288();
  sub_5758(&qword_1E6300, &qword_16ECE0);
  v0 = sub_1591C8();

  return sub_5370(v0, v1, v2, v3);
}

void sub_158A6C()
{
  sub_15878C(319, &qword_1E8060, &type metadata accessor for SpeakableString);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_158B44(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_158B7C(uint64_t a1)
{
  sub_1591A0(a1, &qword_1E8060);
  if (v1 <= 0x3F)
  {
    sub_159334();
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_158BF8(unint64_t *a1, int a2)
{
  if (a2 == 2147483646)
  {
    return sub_1591F0(*a1);
  }

  sub_5758(&qword_1E6300, &qword_16ECE0);
  v3 = sub_159228();

  return sub_9E2C(v3, v4, v5);
}

void sub_158C8C()
{
  sub_159288();
  if (v2 == 2147483646)
  {
    *v1 = v0;
  }

  else
  {
    sub_5758(&qword_1E6300, &qword_16ECE0);
    v3 = sub_159228();

    sub_5370(v3, v4, v0, v5);
  }
}

void sub_158D0C()
{
  sub_158DAC();
  if (v0 <= 0x3F)
  {
    sub_15878C(319, &qword_1E8060, &type metadata accessor for SpeakableString);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_158DAC()
{
  if (!qword_1EFEC8)
  {
    sub_37130(&qword_1EF5D0, &unk_17ADF0);
    v0 = sub_16AB24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EFEC8);
    }
  }
}

uint64_t sub_158E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v7 = sub_10C0B8(v6);
  if (*(v8 + 84) == a2)
  {

    return sub_9E2C(a1, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_158F08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_159288();
  v8 = sub_5758(&qword_1E6300, &qword_16ECE0);
  result = sub_10C0B8(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = sub_1591C8();

    return sub_5370(v11, v12, v13, v14);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4 + 2;
  }

  return result;
}

uint64_t sub_158FA8()
{
  sub_15878C(319, &qword_1E8060, &type metadata accessor for SpeakableString);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_15838C(319, &unk_1EF760);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_159118(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 24);
  return result;
}

void sub_1591A0(uint64_t a1, unint64_t *a2)
{

  sub_15878C(319, a2, &type metadata accessor for SpeakableString);
}

uint64_t sub_1591F0@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

void sub_159250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *(v20 + 16);

  sub_15587C(0x64656B636F6CLL, 0xE600000000000000, type metadata accessor for LockStatusParameters, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

__n128 *sub_159294(__n128 *result, __n128 a2)
{
  result[1] = a2;
  strcpy(&result[2], "parameterName");
  result[2].n128_u16[7] = -4864;
  return result;
}

double sub_159344()
{
  result = 0.0;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  return result;
}

uint64_t sub_159350()
{

  return swift_allocObject();
}

uint64_t sub_159368@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_4EA90(v4 + a3, v3, a1, a2);
}

double sub_159430()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

double sub_15943C()
{
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  return result;
}

uint64_t type metadata accessor for CarCommandsSetCarPlayVentModeCATsSimple()
{
  result = qword_1EFFA0;
  if (!qword_1EFFA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1594F0(char a1, char a2, char a3, char a4, char a5, char a6)
{
  *(v7 + 16) = v6;
  *(v7 + 53) = a6;
  *(v7 + 52) = a5;
  *(v7 + 51) = a4;
  *(v7 + 50) = a3;
  *(v7 + 49) = a2;
  *(v7 + 48) = a1;
  return _swift_task_switch(sub_159528, 0, 0);
}

uint64_t sub_159528()
{
  v1 = *(v0 + 49);
  v2 = *(v0 + 48);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v3 = swift_allocObject();
  v4 = v3;
  *(v0 + 24) = v3;
  *(v3 + 16) = xmmword_176370;
  *(v3 + 32) = 0x6556656C62616E65;
  *(v3 + 40) = 0xEA0000000000746ELL;
  *(v3 + 48) = v2;
  *(v3 + 72) = &type metadata for Bool;
  strcpy((v3 + 80), "ventModeUpper");
  *(v3 + 94) = -4864;
  if (v1 == 2)
  {
    v5 = 0;
    *(v3 + 96) = 0;
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  else
  {
    *(v3 + 96) = v1 & 1;
    v5 = &type metadata for Bool;
  }

  v6 = *(v0 + 50);
  *(v3 + 120) = v5;
  strcpy((v3 + 128), "ventModeMiddle");
  *(v3 + 143) = -18;
  if (v6 == 2)
  {
    v7 = 0;
    *(v3 + 144) = 0;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0;
  }

  else
  {
    *(v3 + 144) = v6 & 1;
    v7 = &type metadata for Bool;
  }

  v8 = *(v0 + 51);
  *(v3 + 168) = v7;
  strcpy((v3 + 176), "ventModeLower");
  *(v3 + 190) = -4864;
  if (v8 == 2)
  {
    v9 = 0;
    *(v3 + 192) = 0;
    *(v3 + 200) = 0;
    *(v3 + 208) = 0;
  }

  else
  {
    *(v3 + 192) = v8 & 1;
    v9 = &type metadata for Bool;
  }

  v10 = *(v0 + 52);
  *(v3 + 216) = v9;
  *(v3 + 224) = 0xD000000000000016;
  *(v3 + 232) = 0x8000000000192020;
  if (v10 == 2)
  {
    v11 = 0;
    *(v3 + 240) = 0;
    *(v3 + 248) = 0;
    *(v3 + 256) = 0;
  }

  else
  {
    *(v3 + 240) = v10 & 1;
    v11 = &type metadata for Bool;
  }

  v12 = *(v0 + 53);
  *(v3 + 264) = v11;
  *(v3 + 272) = 0xD000000000000015;
  *(v3 + 280) = 0x8000000000192040;
  if (v12 == 2)
  {
    v13 = 0;
    *(v3 + 288) = 0;
    *(v3 + 296) = 0;
    *(v3 + 304) = 0;
  }

  else
  {
    *(v3 + 288) = v12 & 1;
    v13 = &type metadata for Bool;
  }

  *(v3 + 312) = v13;
  v14 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v18 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v15 = swift_task_alloc();
  *(v0 + 32) = v15;
  *v15 = v0;
  v15[1] = sub_49014;
  v16 = *(v0 + 16);

  return v18(0xD000000000000033, 0x8000000000192060, v4);
}

uint64_t sub_1597C8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_15981C(a1, a2);
}

uint64_t sub_15981C(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_57A0(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_16A0D4();
  (*(v8 + 8))(a2, v2);
  sub_5810(a1);
  return v16;
}

uint64_t sub_159978(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_16A0E4();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t sub_159A80(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v32 = a2;
  v34 = sub_169E84();
  v5 = *(v34 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v34);
  v28 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = 0;
  v33 = *(a3 + 16);
  v30 = v5 + 16;
  v13 = (v5 + 8);
  v27 = (v5 + 32);
  v29 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v33 == v12)
    {

      return v29;
    }

    if (v12 >= *(a3 + 16))
    {
      break;
    }

    v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v15 = *(v5 + 72);
    v16 = a3;
    (*(v5 + 16))(v11, a3 + v14 + v15 * v12, v34);
    v17 = v31(v11);
    if (v3)
    {
      (*v13)(v11, v34);
      v24 = v29;

      return v24;
    }

    if (v17)
    {
      v26 = *v27;
      v26(v28, v11, v34);
      v18 = v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v18;
      if (isUniquelyReferenced_nonNull_native)
      {
        v20 = v18;
      }

      else
      {
        v21 = v18[2];
        sub_146918();
        v20 = v35;
      }

      a3 = v16;
      v22 = v20[2];
      v23 = (v22 + 1);
      if (v22 >= v20[3] >> 1)
      {
        v29 = (v22 + 1);
        v25 = v22;
        sub_146918();
        v23 = v29;
        v22 = v25;
        a3 = v16;
        v20 = v35;
      }

      ++v12;
      v20[2] = v23;
      v29 = v20;
      result = (v26)(v20 + v14 + v22 * v15, v28, v34);
    }

    else
    {
      result = (*v13)(v11, v34);
      ++v12;
    }
  }

  __break(1u);
  return result;
}

void sub_159D44(uint64_t (*a1)(char *), uint64_t a2, unint64_t *a3, uint64_t *a4, void (*a5)(void *))
{
  v7 = 0xD00000000000001CLL;
  v63 = sub_169E84();
  v8 = sub_9F48(v63);
  v64 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_A138();
  v62 = v13 - v12;
  sub_16484(0, a3, a4);
  v14 = sub_16A9E4();
  sub_71B88(v14);
  v16 = v15;
  v18 = v17;
  sub_9F6C();
  sub_16ACF4(35);

  sub_D434();
  v66 = v19;
  v69._countAndFlagsBits = sub_16AFA4();
  sub_16A744(v69);

  v70._countAndFlagsBits = 663610;
  v70._object = 0xE300000000000000;
  sub_16A744(v70);
  v71._countAndFlagsBits = v16;
  v71._object = v18;
  sub_16A744(v71);

  v20 = 0xD00000000000001CLL;
  v21 = v66;
  if (qword_1E58E8 != -1)
  {
LABEL_22:
    sub_9ED4();
  }

  v22 = sub_16A584();
  sub_9DA0(v22, qword_1E65C0);
  sub_16A9A4();
  sub_15B61C();
  sub_386D8(v23, v24, v25, v26, v27, v28, 65, v20, v21);

  v29 = sub_159A80(a1, a2, v14);
  v30 = v29;
  a1 = *(v29 + 16);
  if (a1)
  {
    sub_71B88(v29);
    v32 = v31;
    v34 = v33;
    sub_9F6C();
    sub_16ACF4(43);

    sub_D434();
    v67 = v35;
    v72._countAndFlagsBits = v32;
    v72._object = v34;
    sub_16A744(v72);

    sub_16A9A4();
    sub_15B61C();
    sub_386D8(v36, v37, v38, v39, v40, v41, 75, v7 + 13, v67);

    v42 = 0;
    v7 = v64 + 16;
    v58 = v30 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
    v59 = *(v64 + 16);
    v57 = *(v64 + 72);
    v64 = v7;
    v56 = (v7 - 8);
    while (2)
    {
      v14 = v62;
      v59(v62, v58 + v57 * v42, v63);
      a2 = v42 + 1;
      v43 = sub_16A9F4();
      (*v56)(v62, v63);
      v21 = _swiftEmptyArrayStorage;
      v44 = sub_11B48C(v43);
      v20 = 0;
      while (v44 != v20)
      {
        if ((v43 & 0xC000000000000001) != 0)
        {
          v45 = sub_16AD04();
        }

        else
        {
          if (v20 >= *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_21;
          }

          v45 = *(v43 + 8 * v20 + 32);
        }

        v46 = v45;
        v7 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v47 = *a4;
        objc_opt_self();
        v48 = swift_dynamicCastObjCClass();
        if (v48)
        {
          v14 = v48;
          sub_16A7B4();
          if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_16A7F4();
          }

          sub_16A814();
          v21 = _swiftEmptyArrayStorage;
          ++v20;
        }

        else
        {

          ++v20;
        }
      }

      a5(_swiftEmptyArrayStorage);
      v42 = a2;
      if (a2 != a1)
      {
        continue;
      }

      break;
    }
  }

  else
  {

    sub_9F6C();
    sub_16ACF4(34);

    sub_D434();
    v68 = v49;
    v73._countAndFlagsBits = sub_16AFA4();
    sub_16A744(v73);

    sub_16A9A4();
    sub_15B61C();
    sub_386D8(v50, v51, v52, v53, v54, v55, 70, 0xD000000000000020, v68);
  }

  sub_CA368();
}

id sub_15A268@<X0>(void *a1@<X8>)
{
  result = [v1 recirculation];
  v4 = result;
  if (result)
  {
    result = sub_16484(0, &qword_1F0008, CAFRecirculation_ptr);
    v5 = &off_1DAAD8;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

uint64_t sub_15A2DC()
{
  v1 = sub_169E44();
  v2 = sub_9F48(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_A138();
  v9 = v8 - v7;
  v10 = [v0 car];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = [v10 positionManager];

  if (!v12)
  {
    return 0;
  }

  v13 = (*(v4 + 104))(v9, enum case for CAUVehicleLayoutKey.End.front(_:), v1);
  __chkstk_darwin(v13);
  *(&v17 - 2) = v9;
  sub_159D44(sub_6F848, (&v17 - 4), &qword_1EE5B8, CAFVent_ptr, sub_13F7D0);

  (*(v4 + 8))(v9, v1);
  sub_132F98();
  v15 = v14;

  return v15;
}

void *sub_15A480()
{
  v1 = [v0 car];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 positionManager];

    if (v3)
    {
      sub_159D44(sub_71A58, 0, &qword_1EE5B0, CAFFan_ptr, sub_13F8BC);

      sub_133390();
      v2 = v4;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_15A550(SEL *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void *))
{
  v6 = sub_15B530(v4, a1, a2, a3);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v8 = a4(v7);

  return v8;
}

void sub_15A5B0(char a1)
{
  sub_16ACF4(23);

  sub_D434();
  v7 = v2;
  if (a1)
  {
    v3._countAndFlagsBits = 28271;
  }

  else
  {
    v3._countAndFlagsBits = 6710895;
  }

  if (a1)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  v3._object = v4;
  sub_16A744(v3);

  v9._countAndFlagsBits = 46;
  v9._object = 0xE100000000000000;
  sub_16A744(v9);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v5 = sub_16A584();
  sub_9DA0(v5, qword_1E65C0);
  v6 = sub_16A9A4();
  sub_386D8(v6, 0x4000uLL, 0xD000000000000097, 0x80000000001920C0, 0xD00000000000001BLL, 0x8000000000192160, 50, 0xD000000000000014, v7);

  sub_16A974();
  [objc_opt_self() sleepForTimeInterval:0.3];

  sub_15A734(a1 & 1);
}

void sub_15A734(char a1)
{
  v2 = v1;
  v4 = sub_15B530(v2, &selRef_autoClimateControls, &qword_1EFFF0, CAFAutoClimateControl_ptr);
  if (v4)
  {
    v5 = v4;
    v6 = a1 & 1;
    v7 = sub_11B48C(v4);
    for (i = 0; v7 != i; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = sub_16AD04();
      }

      else
      {
        if (i >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_18;
        }

        v9 = *(v5 + 8 * i + 32);
      }

      v10 = v9;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

      if ([v9 hasLevel])
      {
        if ([v10 level] != v6)
        {
          [v10 setLevel:v6];
        }
      }
    }

    sub_CA368();
  }

  else
  {
    sub_CA368();
  }
}

id sub_15A86C@<X0>(void *a1@<X8>)
{
  result = [v1 steeringWheelHeatingCooling];
  v4 = result;
  if (result)
  {
    result = sub_16484(0, &qword_1F0018, CAFSteeringWheelHeatingCooling_ptr);
    v5 = &off_1D7300;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

void sub_15A8E0(uint64_t a1)
{
  v3 = sub_169E84();
  v4 = sub_9F48(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_A138();
  v55 = v10 - v9;
  v65 = sub_5758(&qword_1EFFF8, &qword_17B100);
  v11 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v13 = &v44 - v12;
  v14 = sub_5758(&qword_1E7DE0, &unk_16FB30);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v58 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v44 - v19;
  __chkstk_darwin(v18);
  v22 = &v44 - v21;
  if (a1)
  {
    v23 = [v1 car];
    if (!v23 || (v24 = v23, v25 = [v23 seat], v24, !v25) || (v66 = sub_15B5A4(v25)) == 0)
    {

      v66 = _swiftEmptyArrayStorage;
    }

    if (a1 == 1)
    {
      sub_133794();

      goto LABEL_40;
    }

    v68 = _swiftEmptyArrayStorage;
    v26 = v66;
    v27 = sub_11B48C(v66);
    v28 = 0;
    v63 = v26 & 0xC000000000000001;
    v64 = v27;
    v51 = enum case for CAUVehicleLayoutKey.seat_3rdRow_right(_:);
    v61 = (v6 + 104);
    v62 = v26 & 0xFFFFFFFFFFFFFF8;
    v50 = enum case for CAUVehicleLayoutKey.seat_3rdRow_left(_:);
    v49 = enum case for CAUVehicleLayoutKey.seat_3rdRow(_:);
    v48 = enum case for CAUVehicleLayoutKey.seat_2ndRow_right(_:);
    v47 = enum case for CAUVehicleLayoutKey.seat_2ndRow_left(_:);
    v46 = enum case for CAUVehicleLayoutKey.seat_2ndRow(_:);
    v54 = (v6 + 32);
    v57 = (v6 + 8);
    v29 = a1 - 2;
    v52 = enum case for CAUVehicleLayoutKey.seat_front_right(_:);
    v60 = enum case for CAUVehicleLayoutKey.seat_front_left(_:);
    v45 = enum case for CAUVehicleLayoutKey.seat_front(_:);
    v30 = v58;
    v59 = v29;
    v53 = v13;
    while (1)
    {
      if (v64 == v28)
      {

        sub_133794();

        break;
      }

      if (v63)
      {
        v31 = sub_16AD04();
      }

      else
      {
        if (v28 >= *(v62 + 16))
        {
          goto LABEL_42;
        }

        v31 = v66[v28 + 4];
      }

      v32 = v31;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        JUMPOUT(0x15AF50);
      }

      sub_16484(0, &qword_1EE5A8, CAFSeatHeatingCooling_ptr);
      v67 = v32;
      sub_16A994();
      v33 = v60;
      switch(v29)
      {
        case 0:
        case 2:
          goto LABEL_23;
        case 1:
        case 3:
          v33 = v52;
          goto LABEL_23;
        case 4:
          v33 = v45;
          goto LABEL_23;
        case 5:
          v33 = v47;
          goto LABEL_23;
        case 6:
          v33 = v48;
          goto LABEL_23;
        case 7:
          v33 = v46;
          goto LABEL_23;
        case 8:
          v33 = v50;
          goto LABEL_23;
        case 9:
          v33 = v51;
          goto LABEL_23;
        case 10:
          v33 = v49;
LABEL_23:
          (*v61)(v20, v33, v3);
          v34 = 0;
          break;
        default:
          v34 = 1;
          break;
      }

      sub_5370(v20, v34, 1, v3);
      v35 = *(v65 + 48);
      sub_63A84(v22, v13);
      sub_63A84(v20, &v13[v35]);
      sub_1487F0(v13);
      if (v37)
      {
        v36 = v30;
        sub_D188(v20, &qword_1E7DE0, &unk_16FB30);
        sub_D188(v22, &qword_1E7DE0, &unk_16FB30);
        sub_1487F0(&v13[v35]);
        if (!v37)
        {
          goto LABEL_32;
        }

        sub_D188(v13, &qword_1E7DE0, &unk_16FB30);
      }

      else
      {
        sub_63A84(v13, v30);
        sub_1487F0(&v13[v35]);
        if (v37)
        {
          sub_D188(v20, &qword_1E7DE0, &unk_16FB30);
          sub_D188(v22, &qword_1E7DE0, &unk_16FB30);
          v36 = v30;
          (*v57)(v30, v3);
LABEL_32:
          sub_D188(v13, &qword_1EFFF8, &qword_17B100);
LABEL_33:

          goto LABEL_36;
        }

        v38 = v55;
        (*v54)(v55, &v13[v35], v3);
        sub_15B4D8();
        v56 = sub_16A634();
        v39 = *v57;
        v40 = v3;
        v41 = v58;
        (*v57)(v38, v40);
        sub_D188(v20, &qword_1E7DE0, &unk_16FB30);
        sub_D188(v22, &qword_1E7DE0, &unk_16FB30);
        v36 = v41;
        v42 = v41;
        v3 = v40;
        v13 = v53;
        v39(v42, v3);
        v29 = v59;
        sub_D188(v13, &qword_1E7DE0, &unk_16FB30);
        if ((v56 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      sub_16AD34();
      v43 = v68[2];
      sub_16AD64();
      v29 = v59;
      sub_16AD74();
      sub_16AD44();
LABEL_36:
      ++v28;
      v30 = v36;
    }
  }

LABEL_40:
  sub_CA368();
}

id sub_15AF7C@<X0>(void *a1@<X8>)
{
  result = [v1 cabin];
  v4 = result;
  if (result)
  {
    result = sub_16484(0, &qword_1F0010, CAFCabin_ptr);
    v5 = &off_1D8038;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

void sub_15B1B0(char a1)
{
  if (CarCommandsUseCase.rawValue.getter(a1) == 0x616D696C43746573 && v3 == 0xEA00000000006574)
  {

LABEL_13:
    v9 = [v1 cabin];
    if (!v9)
    {
      return;
    }

    v10 = v9;
    if ([v9 hasHvacOn])
    {
      v11 = [v10 hvacOnInvalid] ^ 1;
    }

    else
    {
      v11 = 0;
    }

    if ([v10 hasCompressorOn] && (objc_msgSend(v10, "compressorOnDisabled") & 1) == 0)
    {
      v22 = [v10 compressorOnInvalid];
      if (v11 & 1) == 0 && (v22)
      {
        goto LABEL_20;
      }
    }

    else if (!v11)
    {
LABEL_20:
      sub_16A964();

      return;
    }

    return;
  }

  v5 = sub_16AE54();

  if (v5)
  {
    goto LABEL_13;
  }

  if (CarCommandsUseCase.rawValue.getter(a1) == 0x4D6F747541746573 && v6 == 0xEB0000000065646FLL)
  {
  }

  else
  {
    v8 = sub_16AE54();

    if ((v8 & 1) == 0)
    {
      return;
    }
  }

  v12 = sub_15B530(v1, &selRef_autoClimateControls, &qword_1EFFF0, CAFAutoClimateControl_ptr);
  if (v12)
  {
    v13 = v12;
    v14 = sub_11B48C(v12);
    v15 = 0;
    v16 = &off_1E2000;
    v17 = &off_1E2000;
    while (1)
    {
      if (v14 == v15)
      {

        sub_11B48C(_swiftEmptyArrayStorage);

        return;
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v18 = sub_16AD04();
      }

      else
      {
        if (v15 >= *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_42;
        }

        v18 = *(v13 + 8 * v15 + 32);
      }

      v19 = v18;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (![v18 hasLevel] || objc_msgSend(v19, v16[357]) || (objc_msgSend(v19, v17[380]) & 1) != 0)
      {
      }

      else
      {
        sub_16AD34();
        v20 = v16;
        v21 = _swiftEmptyArrayStorage[2];
        sub_16AD64();
        v16 = v20;
        sub_16AD74();
        sub_16AD44();
        v17 = &off_1E2000;
      }

      ++v15;
    }

    __break(1u);
LABEL_42:
    __break(1u);
  }
}

uint64_t sub_15B4B0(char a1)
{
  v2 = *v1;
  sub_15B1B0(a1);
  return v3 & 1;
}

unint64_t sub_15B4D8()
{
  result = qword_1F0000;
  if (!qword_1F0000)
  {
    sub_169E84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1F0000);
  }

  return result;
}

uint64_t sub_15B530(void *a1, SEL *a2, unint64_t *a3, uint64_t *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_16484(0, a3, a4);
  v8 = sub_16A7D4();

  return v8;
}

uint64_t sub_15B5A4(void *a1)
{
  v2 = [a1 heatingCoolings];

  if (!v2)
  {
    return 0;
  }

  sub_16484(0, &qword_1EE5A8, CAFSeatHeatingCooling_ptr);
  v3 = sub_16A7D4();

  return v3;
}

void *sub_15B634()
{
  v1 = v0;
  v2 = type metadata accessor for CarTire();
  v3 = sub_9F48(v2);
  v134 = v4;
  v135 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_A128();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  v142 = &v114 - v11;
  v138 = sub_169E84();
  v12 = sub_9F48(v138);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_A128();
  v19 = v17 - v18;
  v21 = __chkstk_darwin(v20);
  v119 = &v114 - v22;
  v23 = __chkstk_darwin(v21);
  v121 = &v114 - v24;
  __chkstk_darwin(v23);
  v123 = &v114 - v25;
  v144 = sub_5758(&qword_1EA368, &unk_1741F0);
  v26 = sub_9F48(v144);
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v26);
  sub_A128();
  v133 = v31 - v32;
  __chkstk_darwin(v33);
  v143 = &v114 - v34;
  v127 = v1;
  v35 = [v1 tirePressures];
  sub_16484(0, &qword_1F0020, CAFTirePressure_ptr);
  v36 = sub_16A7D4();

  result = sub_11B48C(v36);
  if (result)
  {
    if (result >= 1)
    {
      v117 = v19;
      v39 = 0;
      v139 = v36 & 0xC000000000000001;
      v131 = (v28 + 32);
      v130 = enum case for CAUVehicleLayoutKey.tire_front_left(_:);
      v137 = (v14 + 104);
      v136 = (v14 + 8);
      v120 = enum case for CAUVehicleLayoutKey.tire_front_right(_:);
      v118 = enum case for CAUVehicleLayoutKey.tire_rear_left(_:);
      v126 = 0x80000000001922C0;
      v116 = enum case for CAUVehicleLayoutKey.tire_rear_right(_:);
      v115 = 0x8000000000190A20;
      v129 = (v28 + 16);
      v128 = (v28 + 8);
      v125 = 0x8000000000192350;
      v40 = _swiftEmptyArrayStorage;
      v124 = 0xD00000000000001CLL;
      *&v38 = 136315138;
      v122 = v38;
      v41 = v123;
      v140 = result;
      v141 = v36;
      v132 = v9;
      while (1)
      {
        if (v139)
        {
          v42 = sub_16AD04();
        }

        else
        {
          v42 = *(v36 + 8 * v39 + 32);
        }

        v43 = v42;
        v145 = v40;
        v44 = [v42 pressure];
        if (!v44)
        {
          v149 = 0;
          v150 = 0xE000000000000000;
          sub_16ACF4(33);

          v149 = v124;
          v150 = v125;
          v59 = [v127 description];
          v60 = sub_16A664();
          v62 = v61;

          v151._countAndFlagsBits = v60;
          v151._object = v62;
          sub_16A744(v151);

          v152._countAndFlagsBits = 32;
          v152._object = 0xE100000000000000;
          sub_16A744(v152);
          v63 = [v43 description];
          v64 = sub_16A664();
          v66 = v65;

          v153._countAndFlagsBits = v64;
          v153._object = v66;
          sub_16A744(v153);

          v68 = v149;
          v67 = v150;
          if (qword_1E58E8 != -1)
          {
            sub_B4F54();
            swift_once();
          }

          v69 = sub_16A584();
          sub_9DA0(v69, qword_1E65C0);
          v70 = sub_16A9A4();
          v148._countAndFlagsBits = 0xD00000000000008BLL;
          v148._object = v126;
          v146 = 47;
          v147 = 0xE100000000000000;
          sub_D030();
          v71 = (sub_16AB34() + 16);
          if (*v71)
          {
            v72 = &v71[2 * *v71];
            v73 = *v72;
            v74 = v72[1];

            v148._countAndFlagsBits = v73;
            v148._object = v74;
            v154._countAndFlagsBits = 32;
            v154._object = 0xE100000000000000;
            sub_16A744(v154);
            v155._countAndFlagsBits = 0x6954726143746567;
            v155._object = 0xED00002928736572;
            sub_16A744(v155);
            countAndFlagsBits = v148._countAndFlagsBits;
            object = v148._object;
          }

          else
          {

            countAndFlagsBits = 0x6954726143746567;
            object = 0xED00002928736572;
          }

          v149 = countAndFlagsBits;
          v150 = object;
          v148._countAndFlagsBits = 58;
          v148._object = 0xE100000000000000;
          v146 = 18;
          v156._countAndFlagsBits = sub_16AE24();
          sub_16A744(v156);

          sub_16A744(v148);

          v89._countAndFlagsBits = sub_378D0(0x800000uLL);
          if (v89._object)
          {
            v148._countAndFlagsBits = 32;
            v148._object = 0xE100000000000000;
            sub_16A744(v89);

            sub_16A744(v148);
          }

          v90 = HIBYTE(v67) & 0xF;
          if ((v67 & 0x2000000000000000) == 0)
          {
            v90 = v68 & 0xFFFFFFFFFFFFLL;
          }

          if (v90)
          {
            v148._countAndFlagsBits = 32;
            v148._object = 0xE100000000000000;
            v157._countAndFlagsBits = v68;
            v157._object = v67;
            sub_16A744(v157);
            sub_16A744(v148);
          }

          v92 = v149;
          v91 = v150;
          v93 = sub_16A574();
          if (os_log_type_enabled(v93, v70))
          {
            v94 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v148._countAndFlagsBits = v95;
            *v94 = v122;
            v96 = sub_15BC8(v92, v91, &v148._countAndFlagsBits);

            *(v94 + 4) = v96;
            _os_log_impl(&dword_0, v93, v70, "%s", v94, 0xCu);
            sub_D13C(v95);
          }

          else
          {
          }

          v36 = v141;
          v40 = v145;
          goto LABEL_46;
        }

        v45 = v44;
        sub_16484(0, &qword_1EA380, NSUnitPressure_ptr);
        v46 = v133;
        sub_1682E4();

        (*v131)(v143, v46, v144);
        v47 = [v43 vehicleLayoutKey];
        v48 = sub_16A664();
        v50 = v49;

        v51 = v138;
        v52 = *v137;
        (*v137)(v41, v130, v138);
        v53 = sub_169E74();
        v55 = v54;
        v56 = *v136;
        (*v136)(v41, v51);
        if (v53 == v48 && v55 == v50)
        {
          break;
        }

        v58 = sub_15C304();

        if (v58)
        {
          goto LABEL_19;
        }

        sub_15C320(&v150 + 4);
        v52();
        v83 = sub_169E74();
        v85 = v84;
        v86 = sub_15C330();
        v56(v86);
        if (v83 == v48 && v85 == v50)
        {

LABEL_49:

          v77 = 1;
          v41 = v123;
          goto LABEL_20;
        }

        v88 = sub_15C304();

        if (v88)
        {
          goto LABEL_49;
        }

        sub_15C320(&v148._object + 4);
        v52();
        v97 = sub_169E74();
        v99 = v98;
        v100 = sub_15C330();
        v56(v100);
        v101 = v97 == v48 && v99 == v50;
        v41 = v123;
        if (v101)
        {

LABEL_57:

          v77 = 2;
          goto LABEL_20;
        }

        v102 = sub_15C304();

        if (v102)
        {
          goto LABEL_57;
        }

        sub_15C320(&v147 + 4);
        v52();
        v103 = sub_169E74();
        v105 = v104;
        v106 = sub_15C330();
        v56(v106);
        if (v103 != v48 || v105 != v50)
        {
          v108 = sub_15C304();

          v78 = v132;
          if (v108)
          {
            v77 = 3;
          }

          else
          {
            if (qword_1E58E8 != -1)
            {
              sub_B4F54();
              swift_once();
            }

            v109 = sub_16A584();
            sub_9DA0(v109, qword_1E65C0);
            v110 = sub_16A9A4();
            sub_386D8(v110, 0x400uLL, 0xD00000000000008BLL, v126, 0x6954726143746567, 0xED00002928736572, 32, 0xD000000000000018, v115);
            v77 = 4;
          }

          v40 = v145;
          goto LABEL_21;
        }

        v77 = 3;
LABEL_20:
        v40 = v145;
        v78 = v132;
LABEL_21:
        v79 = [v43 pressureState];
        if (v79 >= 6)
        {
          v80 = 0;
        }

        else
        {
          v80 = v79;
        }

        v81 = v142;
        (*v129)(&v142[*(v135 + 24)], v143, v144);
        *v81 = v77;
        v81[1] = v80;
        sub_B9CEC(v81, v78);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v111 = v40[2];
          sub_108BEC();
          v40 = v112;
        }

        v36 = v141;
        v82 = v40[2];
        if (v82 >= v40[3] >> 1)
        {
          sub_108BEC();
          v40 = v113;
        }

        sub_B9D50(v142);
        (*v128)(v143, v144);
        v40[2] = v82 + 1;
        sub_15C2A0(v78, v40 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v82);
LABEL_46:
        if (v140 == ++v39)
        {

          return v40;
        }
      }

LABEL_19:

      v77 = 0;
      goto LABEL_20;
    }

    __break(1u);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_15C2A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarTire();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_15C304()
{

  return sub_16AE54();
}

void sub_15C320(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  v3 = *(v1 - 208);
  v4 = *(v1 - 200);
}

uint64_t sub_15C330()
{
  result = v0;
  v3 = *(v1 - 216);
  return result;
}

id sub_15C340(unint64_t a1)
{
  result = [v1 hasOn];
  if (result)
  {
    result = [v1 setOn:1];
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a1 > 0xFF)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  return [v1 setFanLevel:a1];
}

id sub_15C3BC(char a1)
{
  v3 = [v1 hasOn];
  if (v3)
  {
    [v1 setOn:a1 & 1];
  }

  return v3;
}

void sub_15C414()
{
  v1 = [v0 fanLevelRange];
  v2 = [v1 minimumValue];

  v3 = [v0 fanLevelRange];
  v4 = [v3 maximumValue];

  if (v4 < v2)
  {
    __break(1u);
  }
}

uint64_t sub_15C594()
{
  sub_D2DC();
  v0[7] = v1;
  v2 = sub_168E14();
  v0[8] = v2;
  v3 = *(v2 - 8);
  v0[9] = v3;
  v4 = *(v3 + 64);
  v0[10] = sub_D3C8();
  v5 = *(*(sub_16A164() - 8) + 64);
  v0[11] = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_15C668()
{
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v1 = v0[11];
  v2 = sub_16A584();
  sub_9DA0(v2, qword_1E65C0);
  v3 = sub_16A9A4();
  sub_386D8(v3, 0x400000000uLL, 0xD000000000000090, 0x80000000001923C0, 0xD00000000000001CLL, 0x80000000001924D0, 13, 0xD00000000000002ELL, 0x80000000001924F0);
  type metadata accessor for CarCommandsCATsSimple();
  sub_16A154();
  v0[12] = sub_16A0F4();
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_15C7C4;

  return sub_E0554();
}

uint64_t sub_15C7C4()
{
  sub_D2DC();
  v2 = *v1;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 104);
  *v4 = *v1;
  *(v3 + 112) = v7;
  *(v3 + 120) = v0;

  sub_10B4C();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_15C8CC()
{
  v1 = v0[10];
  type metadata accessor for ConfirmationSnippetFactory();
  sub_12C0B0();
  sub_F38BC();
  sub_168D84();
  v2 = sub_168E34();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_168E24();
  v0[5] = v2;
  v0[6] = &protocol witness table for ResponseFactory;
  v0[2] = v5;
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_15C9D0;
  v7 = v0[14];
  v8 = v0[10];
  v9 = v0[7];

  return sub_14AE58();
}

uint64_t sub_15C9D0()
{
  v2 = *v1;
  sub_D2A4();
  *v3 = v2;
  v5 = v4[16];
  v6 = v4[10];
  v7 = v4[9];
  v8 = v4[8];
  v9 = *v1;
  sub_D2A4();
  *v10 = v9;
  *(v2 + 136) = v0;

  (*(v7 + 8))(v6, v8);
  if (!v0)
  {
    sub_D13C((v2 + 16));
  }

  sub_10B4C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_15CB44()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);

  sub_D37C();

  return v4();
}

uint64_t sub_15CBCC()
{
  sub_D2DC();
  v1 = v0[12];

  v2 = v0[15];
  v4 = v0[10];
  v3 = v0[11];

  sub_D37C();

  return v5();
}

uint64_t sub_15CC38()
{
  sub_D2DC();
  v1 = *(v0 + 96);

  sub_D13C((v0 + 16));
  v2 = *(v0 + 136);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);

  sub_D37C();

  return v5();
}

uint64_t sub_15CCB8()
{
  sub_D2DC();
  v0[19] = v1;
  v0[20] = v2;
  v3 = *(*(sub_5758(&qword_1E6048, &qword_16D890) - 8) + 64);
  v0[21] = sub_D3C8();
  v4 = sub_1693E4();
  v0[22] = v4;
  v5 = *(v4 - 8);
  v0[23] = v5;
  v6 = *(v5 + 64);
  v0[24] = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_15CD98()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 160);
  sub_16ACF4(33);
  *(v0 + 136) = 0;
  v27 = (v0 + 96);
  v28 = (v0 + 56);
  *(v0 + 144) = 0xE000000000000000;
  v30._object = 0x80000000001924B0;
  v30._countAndFlagsBits = 0xD00000000000001FLL;
  sub_16A744(v30);
  sub_169384();
  sub_16AD84();
  v5 = *(v1 + 8);
  v5(v2, v3);
  v6 = *(v0 + 136);
  v7 = *(v0 + 144);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v8 = *(v0 + 192);
  v9 = *(v0 + 176);
  v10 = *(v0 + 160);
  v11 = sub_16A584();
  sub_9DA0(v11, qword_1E65C0);
  v12 = sub_16A9A4();
  sub_386D8(v12, 0x400000000uLL, 0xD000000000000090, 0x80000000001923C0, 0xD000000000000021, 0x800000000017F850, 25, v6, v7);

  sub_169384();
  sub_86E4(v8, &_swiftEmptySetSingleton, v27);
  v5(v8, v9);
  if (!*(v0 + 120))
  {
    sub_D188(v27, &qword_1E5F80, &unk_16E7E0);
    v13 = v0 + 56;
    *v28 = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    goto LABEL_11;
  }

  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1E5F98, &unk_16D420);
  v13 = v0 + 56;
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 88) = 0;
    *v28 = 0u;
    *(v0 + 72) = 0u;
    goto LABEL_11;
  }

  if (!*(v0 + 80))
  {
LABEL_11:
    v23 = *(v0 + 192);
    v24 = *(v0 + 160);
    v25 = *(v0 + 168);
    sub_D188(v13, &qword_1E5F88, &unk_16D410);
    type metadata accessor for CarCommandsError();
    sub_15D9EC(&qword_1E92F0, 255, type metadata accessor for CarCommandsError);
    swift_allocError();
    sub_169384();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_D37C();
    goto LABEL_12;
  }

  v14 = *(v0 + 192);
  v15 = *(v0 + 168);
  v16 = *(v0 + 152);
  sub_D250(v28, v0 + 16);
  v17 = *(v0 + 40);
  v18 = *(v0 + 48);
  sub_D084((v0 + 16), v17);
  v19 = (*(v18 + 32))(v17, v18);
  v20 = sub_169004();
  v21 = &enum case for ConfirmationResponse.confirmed(_:);
  if ((v19 & 1) == 0)
  {
    v21 = &enum case for ConfirmationResponse.rejected(_:);
  }

  (*(*(v20 - 8) + 104))(v15, *v21, v20);
  sub_5370(v15, 0, 1, v20);
  sub_169374();
  sub_D13C((v0 + 16));

  sub_D37C();
LABEL_12:

  return v22();
}

uint64_t sub_15D1C4()
{
  sub_16ACF4(44);

  sub_1693A4();
  sub_15D9EC(&qword_1E6050, 255, &type metadata accessor for Input);
  v4._countAndFlagsBits = sub_16AE24();
  sub_16A744(v4);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v0 = sub_16A584();
  sub_9DA0(v0, qword_1E65C0);
  v1 = sub_16A9A4();
  sub_386D8(v1, 0x400000000uLL, 0xD000000000000090, 0x80000000001923C0, 0xD000000000000012, 0x8000000000192460, 36, 0xD00000000000002ALL, 0x8000000000192480);

  return sub_168C64();
}

uint64_t sub_15D370()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_503C8;

  return sub_15C594();
}

uint64_t sub_15D420()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_B758C;

  return sub_15CCB8();
}

uint64_t sub_15D4C0(uint64_t a1)
{
  v3 = async function pointer to YesNoPromptFlowStrategy.makePromptForConfirmation(itemToConfirm:)[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = type metadata accessor for ExtremeVolumeNeedsConfirmationStrategy();
  v7 = sub_15D9EC(qword_1F00D8, v6, type metadata accessor for ExtremeVolumeNeedsConfirmationStrategy);
  *v4 = v1;
  v4[1] = sub_B758C;

  return YesNoPromptFlowStrategy.makePromptForConfirmation(itemToConfirm:)(a1, v5, v7);
}

uint64_t sub_15D5A8(uint64_t a1)
{
  v3 = async function pointer to YesNoPromptFlowStrategy.makeRepromptOnEmptyParse(itemToConfirm:)[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = type metadata accessor for ExtremeVolumeNeedsConfirmationStrategy();
  v7 = sub_15D9EC(qword_1F00D8, v6, type metadata accessor for ExtremeVolumeNeedsConfirmationStrategy);
  *v4 = v1;
  v4[1] = sub_B758C;

  return YesNoPromptFlowStrategy.makeRepromptOnEmptyParse(itemToConfirm:)(a1, v5, v7);
}

uint64_t sub_15D690(uint64_t a1)
{
  v3 = async function pointer to YesNoPromptFlowStrategy.makeRepromptOnLowConfidence(itemToConfirm:)[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = type metadata accessor for ExtremeVolumeNeedsConfirmationStrategy();
  v7 = sub_15D9EC(qword_1F00D8, v6, type metadata accessor for ExtremeVolumeNeedsConfirmationStrategy);
  *v4 = v1;
  v4[1] = sub_B758C;

  return YesNoPromptFlowStrategy.makeRepromptOnLowConfidence(itemToConfirm:)(a1, v5, v7);
}

uint64_t sub_15D778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_B758C;

  return PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse()(a1, a2, a3);
}

uint64_t sub_15D82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_B758C;

  return PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse()(a1, a2, a3);
}

uint64_t sub_15D8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to PromptForConfirmationFlowStrategyAsync.makeErrorResponse(_:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_B758C;

  return PromptForConfirmationFlowStrategyAsync.makeErrorResponse(_:)(a1, a2, a3, a4);
}

uint64_t sub_15D9EC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_15DA34()
{
  v0 = sub_169FF4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_169FE4();
  sub_169F64();

  v3 = sub_169F44();

  return v3;
}

uint64_t sub_15DB08()
{
  sub_D2DC();
  v1[39] = v2;
  v1[40] = v0;
  v1[38] = v3;
  v1[41] = *v0;
  v4 = type metadata accessor for UnsupportedValueParameters(0);
  sub_D414(v4);
  v6 = *(v5 + 64);
  v1[42] = sub_D3C8();
  v7 = sub_5758(&qword_1E5F78, &unk_16D400);
  sub_D414(v7);
  v9 = *(v8 + 64);
  v1[43] = sub_D3C8();
  v10 = sub_168B74();
  sub_D414(v10);
  v12 = *(v11 + 64);
  v1[44] = sub_D3C8();
  v13 = sub_1691E4();
  v1[45] = v13;
  v14 = *(v13 - 8);
  v1[46] = v14;
  v15 = *(v14 + 64) + 15;
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v16 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v16);
  v18 = *(v17 + 64) + 15;
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  matched = type metadata accessor for NoCarKeyMatchParameters(0);
  v1[51] = matched;
  sub_D414(matched);
  v21 = *(v20 + 64);
  v1[52] = sub_D3C8();
  v22 = sub_168FE4();
  v1[53] = v22;
  v23 = *(v22 - 8);
  v1[54] = v23;
  v24 = *(v23 + 64);
  v1[55] = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v25, v26, v27);
}

uint64_t sub_15DD1C()
{
  v69 = v0;
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  v3 = *(v0 + 424);
  v4 = *(v0 + 320);
  v5 = *(v0 + 312);
  v6 = *(*(v0 + 328) + 416);
  sub_169274();
  v65 = sub_169244();
  *(v0 + 448) = v65;
  sub_169264();
  v66 = sub_168FD4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);
  v9 = *(v4 + 176);
  v10 = 0x80000000001925B0;
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v11 = sub_16A584();
  sub_9DA0(v11, qword_1E65C0);
  v12 = sub_16A9A4();
  *(v0 + 264) = 0xD000000000000088;
  *(v0 + 272) = 0x8000000000192520;
  *(v0 + 280) = 47;
  *(v0 + 288) = 0xE100000000000000;
  sub_D030();
  v13 = sub_16AB34();
  v14 = sub_15AE4(v13);
  v16 = v15;

  if (v16)
  {
    v70._countAndFlagsBits = 32;
    v70._object = 0xE100000000000000;
    sub_16A744(v70);
    v71._countAndFlagsBits = 0xD00000000000002ALL;
    v71._object = 0x80000000001925B0;
    sub_16A744(v71);
    v17 = v14;
    v10 = v16;
  }

  else
  {
    v17 = 0xD00000000000002ALL;
  }

  v67 = v17;
  v68._countAndFlagsBits = 58;
  v68._object = 0xE100000000000000;
  *(v0 + 296) = 27;
  v72._countAndFlagsBits = sub_16AE24();
  sub_16A744(v72);

  sub_16A744(v68);

  v18._countAndFlagsBits = sub_378D0(v9);
  if (v18._object)
  {
    v68._countAndFlagsBits = 32;
    v68._object = 0xE100000000000000;
    sub_16A744(v18);

    v73._countAndFlagsBits = 32;
    v73._object = 0xE100000000000000;
    sub_16A744(v73);
  }

  v19 = sub_16A574();
  if (os_log_type_enabled(v19, v12))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v68._countAndFlagsBits = v21;
    *v20 = 136315138;
    v22 = sub_15BC8(v67, v10, &v68._countAndFlagsBits);

    *(v20 + 4) = v22;
    _os_log_impl(&dword_0, v19, v12, "%s", v20, 0xCu);
    sub_D13C(v21);
  }

  else
  {
  }

  v23 = v65;

  v24 = sub_D95F4(v23, v66, v8);
  *(v0 + 544) = v24;
  if (v24 > 0xF7u)
  {
    type metadata accessor for CarCommandsError();
    sub_11D28();
    swift_allocError();
    *v25 = v66;
    v25[1] = v8;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_15F5EC();

    sub_D37C();
    sub_15F694();

    __asm { BRAA            X1, X16 }
  }

  v28 = *(v0 + 312);
  sub_169234();
  v29 = sub_11F404();

  if (v29)
  {

    *(v0 + 456) = [objc_allocWithZone(SAUIAppPunchOut) init];
    sub_F30B0();
    v31 = v30;
    sub_16AAE4();
    if (v32)
    {
      v33 = *(v0 + 400);
      sub_16A6E4();

      v34 = 0;
    }

    else
    {
      v34 = 1;
    }

    v47 = *(v0 + 400);
    v48 = sub_16A0C4();
    v49 = 1;
    sub_5370(v47, v34, 1, v48);
    if (v31)
    {
      v50 = *(v0 + 392);
      sub_16A6E4();

      v49 = 0;
    }

    v52 = *(v0 + 408);
    v51 = *(v0 + 416);
    v54 = *(v0 + 392);
    v53 = *(v0 + 400);
    v55 = *(v0 + 320);
    sub_5370(v54, v49, 1, v48);
    v56 = *(v52 + 24);
    sub_16A6E4();
    sub_148950();
    sub_5370(v57, v58, v59, v48);
    sub_16304(v53, v51);
    sub_16304(v54, v51 + *(v52 + 20));
    v60 = *sub_D084((v55 + qword_1F0E60), *(v55 + qword_1F0E60 + 24));
    v61 = swift_task_alloc();
    *(v0 + 464) = v61;
    *v61 = v0;
    v61[1] = sub_15E3AC;
    v62 = *(v0 + 416);
    sub_15F694();

    return sub_15702C(v63);
  }

  else
  {
    v35 = *(v0 + 336);
    sub_10824(*(v0 + 320) + qword_1F0E60, v0 + 16);
    v36 = sub_D084((v0 + 16), *(v0 + 40));
    sub_16A6E4();

    sub_16A0C4();
    sub_148950();
    sub_5370(v37, v38, v39, v40);
    v41 = *v36;
    v42 = swift_task_alloc();
    *(v0 + 504) = v42;
    *v42 = v0;
    v42[1] = sub_15E984;
    v43 = *(v0 + 336);
    sub_15F694();

    return sub_157778(v44);
  }
}

uint64_t sub_15E3AC()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 464);
  *v3 = *v1;
  *(v2 + 472) = v6;
  *(v2 + 480) = v0;

  sub_10B4C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_15E4B0()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 344);
  v3 = *(v0 + 352);
  v4 = *(v0 + 320);
  v5 = *(v0 + 544);
  swift_beginAccess();
  sub_10824(v4 + 184, v0 + 136);
  sub_168B64();
  sub_15F63C();
  sub_1691A4();
  sub_1691C4();
  sub_12B484(v5);
  sub_168E14();
  sub_148950();
  sub_5370(v6, v7, v8, v9);
  sub_1691B4();
  v10 = *(v0 + 168);
  sub_D084((v0 + 136), *(v0 + 160));
  v11 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  v12 = swift_task_alloc();
  *(v0 + 488) = v12;
  *v12 = v0;
  v12[1] = sub_15E5F4;
  v13 = *(v0 + 472);
  v14 = *(v0 + 384);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v0 + 176);
}

uint64_t sub_15E5F4()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 488);
  v6 = *v1;
  sub_D2A4();
  *v7 = v6;
  *(v8 + 496) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_15E6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v13 = *(v12 + 448);
  v14 = *(v12 + 416);

  sub_15F614();
  v15 = *(v12 + 480);
  sub_15F5EC();

  sub_D37C();
  sub_10B0C();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_15E7A8()
{
  v1 = *(v0 + 472);
  v3 = *(v0 + 448);
  v2 = *(v0 + 456);
  v4 = *(v0 + 416);
  v5 = *(v0 + 304);
  (*(*(v0 + 368) + 8))(*(v0 + 384), *(v0 + 360));
  sub_D250((v0 + 176), v5);
  sub_D13C((v0 + 136));

  sub_15F614();
  sub_15F66C();

  sub_D37C();

  return v6();
}

uint64_t sub_15E8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v13 = v12[59];
  v15 = v12[56];
  v14 = v12[57];
  v16 = v12[52];
  (*(v12[46] + 8))(v12[48], v12[45]);
  sub_D13C(v12 + 17);

  sub_15F614();
  v17 = v12[62];
  sub_15F5EC();

  sub_D37C();
  sub_10B0C();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_15E984()
{
  v2 = *v1;
  sub_D2A4();
  *v4 = v3;
  v5 = *(v2 + 504);
  v6 = *v1;
  sub_D2A4();
  *v7 = v6;
  *(v9 + 512) = v8;
  *(v9 + 520) = v0;

  sub_15F58C(*(v2 + 336), type metadata accessor for UnsupportedValueParameters);
  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_15EACC()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 344);
  v3 = *(v0 + 352);
  v4 = *(v0 + 320);
  v5 = *(v0 + 544);
  sub_D13C((v0 + 16));
  swift_beginAccess();
  sub_10824(v4 + 184, v0 + 56);
  sub_168B64();
  sub_15F63C();
  sub_1691A4();
  sub_1691C4();
  sub_12B484(v5);
  sub_168E14();
  sub_148950();
  sub_5370(v6, v7, v8, v9);
  sub_1691B4();
  v10 = *(v0 + 88);
  sub_D084((v0 + 56), *(v0 + 80));
  v11 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  v12 = swift_task_alloc();
  *(v0 + 528) = v12;
  *v12 = v0;
  v12[1] = sub_15EC18;
  v13 = *(v0 + 512);
  v14 = *(v0 + 376);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v0 + 96);
}

uint64_t sub_15EC18()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 528);
  v6 = *v1;
  sub_D2A4();
  *v7 = v6;
  *(v8 + 536) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_15ED18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();

  sub_D13C((v12 + 16));
  v13 = *(v12 + 520);
  sub_15F5EC();

  sub_D37C();
  sub_10B0C();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_15EDC8()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 448);
  v3 = *(v0 + 304);
  (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));
  sub_D250((v0 + 96), v3);
  sub_D13C((v0 + 56));

  sub_15F66C();

  sub_D37C();

  return v4();
}

uint64_t sub_15EEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v13 = v12[64];
  v14 = v12[56];
  (*(v12[46] + 8))(v12[47], v12[45]);
  sub_D13C(v12 + 7);

  v15 = v12[67];
  sub_15F5EC();

  sub_D37C();
  sub_10B0C();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_15EF8C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  sub_10B4C();
  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_15EFE0()
{
  sub_D2DC();
  v1 = v0[2];
  v2 = *(v0[3] + 416);
  sub_169274();
  v3 = sub_169244();
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_15F04C()
{
  sub_D13C((v0 + qword_1F0E60));
  v1 = *(v0 + qword_1F0E68);
}

uint64_t *sub_15F08C()
{
  v0 = sub_3D044();
  sub_D13C((v0 + qword_1F0E60));
  v1 = *(v0 + qword_1F0E68);

  return v0;
}

uint64_t sub_15F0D4()
{
  v0 = sub_15F08C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_15F140()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_138948;

  return sub_15DB08();
}

uint64_t sub_15F1EC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_15F284;

  return sub_15EF8C(a1);
}

uint64_t sub_15F284()
{
  sub_D2DC();
  v3 = v2;
  sub_D358();
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_D2A4();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_15F378(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = async function pointer to UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = a3[52];
  v12 = a3[53];
  v13 = a3[54];
  v14 = type metadata accessor for CommonUnsupportedValueFlowStrategy();
  *v10 = v4;
  v10[1] = sub_138948;

  return UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:)(a1, a2, v14, a4);
}

uint64_t sub_15F44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  v8 = a5[52];
  v9 = a5[53];
  v10 = a5[54];
  type metadata accessor for CommonUnsupportedValueFlowStrategy();
  swift_getWitnessTable();
  *v7 = v5;
  v7[1] = sub_137E58;

  return sub_BCC54();
}

uint64_t sub_15F550(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_15F58C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_15F5EC()
{
  v2 = v0[55];
  v3 = v0[52];
  v5 = v0[49];
  v4 = v0[50];
  v7 = v0[47];
  v6 = v0[48];
  v9 = v0[43];
  v8 = v0[44];
  v10 = v0[42];
}

uint64_t sub_15F614()
{

  return sub_15F58C(v0, type metadata accessor for NoCarKeyMatchParameters);
}

uint64_t sub_15F63C()
{

  return sub_169164();
}

uint64_t sub_15F66C()
{
  v2 = v0[55];
  v3 = v0[52];
  v5 = v0[49];
  v4 = v0[50];
  v7 = v0[47];
  v6 = v0[48];
  v9 = v0[43];
  v8 = v0[44];
  v10 = v0[42];
}

uint64_t type metadata accessor for CarCommandsSetCarPlayClimateSyncCATsSimple()
{
  result = qword_1F0160;
  if (!qword_1F0160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_15F73C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return _swift_task_switch(sub_15F760, 0, 0);
}

uint64_t sub_15F760()
{
  v1 = *(v0 + 48);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v2 = swift_allocObject();
  *(v2 + 32) = 0xD000000000000011;
  *(v2 + 40) = 0x8000000000192670;
  *(v2 + 72) = &type metadata for Bool;
  *(v2 + 48) = v1;
  v3 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v7 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  *(v0 + 24) = v2;
  *(v2 + 16) = xmmword_16D9A0;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_49014;
  v5 = *(v0 + 16);

  return v7(0xD00000000000003DLL, 0x8000000000192630, v2);
}

uint64_t sub_15F894(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_15F8E8(a1, a2);
}

uint64_t sub_15F8E8(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_57A0(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_16A0D4();
  (*(v8 + 8))(a2, v2);
  sub_5810(a1);
  return v16;
}

uint64_t sub_15FA44(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_16A0E4();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t sub_15FB4C()
{
  v1 = type metadata accessor for CarCommandsError();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = (v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 24);
  v5 = sub_1693E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  sub_169384();
  sub_86E4(v9, &_swiftEmptySetSingleton, v39);
  (*(v6 + 8))(v9, v5);
  if (v39[3])
  {
    sub_5758(&qword_1E5F90, &qword_170270);
    sub_5758(&qword_1E5F98, &unk_16D420);
    if (swift_dynamicCast())
    {
      if (*(&v41 + 1))
      {
        sub_D250(&v40, v43);
        v10 = v44;
        v11 = v45;
        sub_D084(v43, v44);
        if ((*(v11 + 32))(v10, v11))
        {
          sub_5758(&qword_1E62F0, &unk_16D8C0);
          v12 = sub_1690A4();
          v13 = [v12 signals];

          if ((v13 & 2) != 0)
          {
            *v4 = 0xD000000000000056;
            v4[1] = 0x8000000000192780;
            swift_storeEnumTagMultiPayload();
            sub_11D28();
            swift_allocError();
            sub_548D0(v4, v33);
            if (qword_1E58E8 != -1)
            {
              sub_9ED4();
            }

            v34 = sub_16A584();
            sub_9DA0(v34, qword_1E65C0);
            v35 = sub_16A9A4();
            swift_getErrorValue();
            v36 = sub_16AEB4();
            sub_386D8(v35, 0x80uLL, 0xD000000000000099, 0x80000000001926E0, 0xD000000000000024, 0x8000000000180150, 36, v36, v37);

            sub_168C54();
            sub_5A09C(v4);
          }

          else
          {
            sub_168C64();
          }
        }

        else
        {
          v24 = *(v0 + 176);
          if (qword_1E58E8 != -1)
          {
            sub_9ED4();
          }

          v25 = sub_16A584();
          sub_9DA0(v25, qword_1E65C0);
          sub_16A9A4();
          sub_1611F4();
          sub_386D8(v26, v27, v28, v29, v30, v31, 29, v32, v38);
          sub_168C54();
        }

        return sub_D13C(v43);
      }
    }

    else
    {
      v42 = 0;
      v40 = 0u;
      v41 = 0u;
    }
  }

  else
  {
    sub_D188(v39, &qword_1E5F80, &unk_16E7E0);
    v40 = 0u;
    v41 = 0u;
    v42 = 0;
  }

  sub_D188(&v40, &qword_1E5F88, &unk_16D410);
  v14 = *(v0 + 176);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v15 = sub_16A584();
  sub_9DA0(v15, qword_1E65C0);
  sub_16A9A4();
  sub_1611F4();
  sub_386D8(v16, v17, v18, v19, v20, v21, 24, v22, v38);
  return sub_168C74();
}

uint64_t sub_160010()
{
  sub_D2DC();
  v1[16] = v2;
  v1[17] = v0;
  v1[15] = v3;
  v4 = *(*(sub_16A164() - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v5 = sub_168E14();
  v1[19] = v5;
  v6 = *(v5 - 8);
  v1[20] = v6;
  v7 = *(v6 + 64) + 15;
  v1[21] = swift_task_alloc();
  v8 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_160134, 0, 0);
}

uint64_t sub_160134()
{
  v29 = v0;
  v1 = *(v0[17] + 176);
  v2 = 0x8000000000180280;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v3 = 0xD00000000000002DLL;
  v4 = sub_16A584();
  sub_9DA0(v4, qword_1E65C0);
  v5 = sub_16A9A4();
  v0[10] = 0xD000000000000099;
  v0[11] = 0x80000000001926E0;
  v0[12] = 47;
  v0[13] = 0xE100000000000000;
  sub_D030();
  v6 = sub_16AB34();
  v7 = sub_15AE4(v6);
  v9 = v8;

  if (v9)
  {
    v31._countAndFlagsBits = 32;
    v31._object = 0xE100000000000000;
    sub_16A744(v31);
    v32._countAndFlagsBits = 0xD00000000000002DLL;
    v32._object = 0x8000000000180280;
    sub_16A744(v32);
    v3 = v7;
    v2 = v9;
  }

  v28._countAndFlagsBits = 58;
  v28._object = 0xE100000000000000;
  v0[14] = 44;
  v33._countAndFlagsBits = sub_16AE24();
  sub_16A744(v33);

  sub_16A744(v28);

  v10._countAndFlagsBits = sub_378D0(v1);
  if (v10._object)
  {
    v28._countAndFlagsBits = 32;
    v28._object = 0xE100000000000000;
    sub_16A744(v10);

    v34._countAndFlagsBits = 32;
    v34._object = 0xE100000000000000;
    sub_16A744(v34);
  }

  v11 = sub_16A574();
  if (os_log_type_enabled(v11, v5))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28._countAndFlagsBits = v13;
    *v12 = 136315138;
    v14 = sub_15BC8(v3, v2, &v28._countAndFlagsBits);

    *(v12 + 4) = v14;
    _os_log_impl(&dword_0, v11, v5, "%s", v12, 0xCu);
    sub_D13C(v13);
  }

  else
  {
  }

  v15 = v0[16];
  sub_5758(&qword_1E62F0, &unk_16D8C0);
  v16 = sub_1690A4();
  v0[23] = v16;
  v17 = [v16 carName];
  if (v17)
  {
    v18 = v17;
    v19 = v0[22];
    sub_99C94();

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v22 = v0[21];
  v21 = v0[22];
  v23 = v0[18];
  v24 = sub_16A0C4();
  sub_5370(v21, v20, 1, v24);
  sub_12C0B0();
  sub_F38BC();
  sub_168D84();
  type metadata accessor for CarCommandsActivateSignalCATsSimple();
  sub_16A154();
  v0[24] = sub_16A0F4();
  v25 = swift_task_alloc();
  v0[25] = v25;
  *v25 = v0;
  v25[1] = sub_1604FC;
  v26 = v0[22];

  return sub_3187C(v26, 1);
}

uint64_t sub_1604FC()
{
  sub_D2DC();
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 192);
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v7 + 208) = v6;
  *(v7 + 216) = v0;

  if (v0)
  {
    v8 = sub_1608C8;
  }

  else
  {
    v8 = sub_160624;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_160624()
{
  sub_D2DC();
  v1 = v0[17];
  type metadata accessor for ConfirmationSnippetFactory();
  swift_beginAccess();
  sub_10824(v1 + 184, (v0 + 2));
  v2 = swift_task_alloc();
  v0[28] = v2;
  *v2 = v0;
  v2[1] = sub_1606F0;
  v3 = v0[26];
  v4 = v0[21];
  v5 = v0[15];

  return sub_14AE58();
}

uint64_t sub_1606F0()
{
  sub_D2DC();
  v2 = *(*v1 + 224);
  v6 = *v1;
  sub_D254();
  *v3 = v6;
  *(v6 + 232) = v0;

  sub_D13C((v6 + 16));
  if (v0)
  {
    v4 = sub_160984;
  }

  else
  {
    v4 = sub_160800;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_160800()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);

  (*(v4 + 8))(v3, v5);
  sub_D188(v1, &qword_1E6300, &qword_16ECE0);

  sub_D37C();

  return v7();
}

uint64_t sub_1608C8()
{
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 152);

  (*(v3 + 8))(v2, v4);
  sub_D188(v1, &qword_1E6300, &qword_16ECE0);
  v5 = *(v0 + 216);
  v7 = *(v0 + 168);
  v6 = *(v0 + 176);
  v8 = *(v0 + 144);

  sub_D37C();

  return v9();
}

uint64_t sub_160984()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 152);

  (*(v4 + 8))(v3, v5);
  sub_D188(v1, &qword_1E6300, &qword_16ECE0);
  v6 = *(v0 + 232);
  v8 = *(v0 + 168);
  v7 = *(v0 + 176);
  v9 = *(v0 + 144);

  sub_D37C();

  return v10();
}

uint64_t sub_160A74()
{
  v0 = sub_3D044();
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin39ActivateSignalConfirmIntentFlowStrategy_commonPatterns));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for ActivateSignalConfirmIntentFlowStrategy()
{
  result = qword_1F01D8;
  if (!qword_1F01D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_160BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1611F0;

  return (sub_15048)(a1, a2, a3);
}

uint64_t sub_160C70()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1611F0;

  return sub_160010();
}

uint64_t sub_160D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ConfirmIntentFlowStrategyAsync.makeRepromptOnEmptyParse(confirmParameters:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ActivateSignalConfirmIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_1611F0;

  return ConfirmIntentFlowStrategyAsync.makeRepromptOnEmptyParse(confirmParameters:)(a1, a2, v10, a4);
}

uint64_t sub_160DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ConfirmIntentFlowStrategyAsync.makeRepromptOnLowConfidence(confirmParameters:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ActivateSignalConfirmIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_1611F0;

  return ConfirmIntentFlowStrategyAsync.makeRepromptOnLowConfidence(confirmParameters:)(a1, a2, v10, a4);
}

uint64_t sub_160EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ConfirmIntentFlowStrategyAsync.makeConfirmationRejectedResponse(confirmParameters:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ActivateSignalConfirmIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_1611F0;

  return ConfirmIntentFlowStrategyAsync.makeConfirmationRejectedResponse(confirmParameters:)(a1, a2, v10, a4);
}

uint64_t sub_160F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ConfirmIntentFlowStrategyAsync.makeFlowCancelledResponse(confirmParameters:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ActivateSignalConfirmIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_16103C;

  return ConfirmIntentFlowStrategyAsync.makeFlowCancelledResponse(confirmParameters:)(a1, a2, v10, a4);
}

uint64_t sub_16103C()
{
  sub_D2DC();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_D254();
  *v3 = v2;

  sub_D37C();

  return v4();
}

uint64_t sub_161120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ConfirmIntentFlowStrategyAsync.makeErrorResponse(error:confirmParameters:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for ActivateSignalConfirmIntentFlowStrategy();
  *v11 = v5;
  v11[1] = sub_1611F0;

  return ConfirmIntentFlowStrategyAsync.makeErrorResponse(error:confirmParameters:)(a1, a2, a3, v12, a5);
}

uint64_t sub_161214@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 itemToConfirm];
  sub_16AB64();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    sub_16A6E4();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_16A0C4();
  return sub_5370(a1, v4, 1, v5);
}

uint64_t sub_161308()
{
  sub_D2DC();
  v1 = [*(v0 + 16) on];
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_161370(char a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_6F428;

  return CAFRecirculation.setActivated(_:)(a1);
}

uint64_t sub_161408()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_11F1CC;

  return CAFRecirculation.isActivated()();
}

uint64_t sub_161498()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_79DCC;

  return CAFRecirculation.isConnected()();
}

uint64_t sub_161524(char a1)
{
  v2 = 2;
  v3 = 0;
  switch(a1)
  {
    case 1:
      v2 = 16;
      return sub_1615B0(v2);
    case 2:
      v2 = 4;
      return sub_1615B0(v2);
    case 3:
      v2 = 6;
      return sub_1615B0(v2);
    case 4:
      v2 = 20;
      return sub_1615B0(v2);
    case 5:
      return v3;
    default:
      return sub_1615B0(v2);
  }
}

uint64_t sub_1615B0(uint64_t a1)
{
  v2 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:a1];
  v3 = [v1 combinations];
  sub_76D10();
  v4 = sub_16A7D4();

  sub_1616C0(v2, v4);
  v6 = v5;

  return v6;
}

id sub_161658(unint64_t a1)
{
  result = [v1 setOn:1];
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(a1))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  return [v1 setCurrentIndex:a1];
}

void sub_1616C0(uint64_t a1, uint64_t a2)
{
  v3 = sub_11B48C(a2);
  v4 = 0;
  while (v3 != v4)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = sub_16AD04();
    }

    else
    {
      if (v4 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }

      v5 = *(a2 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_76D10();
    v7 = sub_16AAD4();

    if (v7)
    {
      return;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_14;
    }
  }
}

void sub_1617E8()
{
  sub_CA350();
  sub_167BB8(v3, v4);
  v5 = sub_16A164();
  v6 = sub_D414(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_167AA4();
  sub_16484(0, &qword_1E62F8, INActivateCarSignalIntent_ptr);
  v9 = sub_16484(0, &qword_1F0918, INActivateCarSignalIntentResponse_ptr);
  sub_167EC0(v9);
  sub_1681C4();
  v10 = sub_5758(&qword_1F0920, &qword_17BA78);
  sub_167EF0(v10);
  sub_1680D0();
  sub_37404();
  v12 = *(v11 + 64);
  __chkstk_darwin(v13);
  sub_A138();
  v15 = sub_153A08(v14);
  v16(v15);
  v17 = sub_166F08(*v2, v1, &qword_1E62F8, INActivateCarSignalIntent_ptr, &qword_1F0990, &qword_17BAB8);
  sub_168290(v17);
  sub_167954();
  sub_37284(v18, &qword_1F0920, &qword_17BA78);
  sub_168040();
  sub_16AA0();
  v19 = sub_5758(&qword_1E6AA8, &qword_16E7D0);
  sub_167A68(v19);
  sub_168894();
  sub_1693F4();
  v20 = type metadata accessor for FeatureFlagHelper();
  sub_167CAC(v20);
  sub_168028();
  v21 = sub_168E34();
  sub_167F44(v21);
  sub_168E24();
  sub_A73D8();
  v22 = type metadata accessor for SnippetManager();
  v23 = sub_167C64(v22);
  sub_1680AC(v23);
  v24 = sub_5758(&qword_1F0930, &qword_17BA88);
  sub_167EF0(v24);
  sub_1680C4(&off_1D9AF0);
  v25 = sub_168224();
  sub_167D74(v25);
  sub_16A154();
  sub_7A6A8();
  qword_17BA78 = sub_16A094();
  unk_17BA80 = &off_1D4830;
  sub_16820C();
  sub_16814C();
  sub_7A6A8();
  v26 = sub_16A094();
  sub_167E34(v26, &off_1DA7E8);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  v28 = *(v27 + 64);
  __chkstk_darwin(v29);
  v31 = sub_1678EC(v30, v69);
  v32(v31);
  sub_167BF4();
  sub_16817C();
  sub_167910();
  sub_167984();
  sub_37284(v33, &qword_1F0930, &qword_17BA88);
  sub_AAB38();
  sub_168824();
  sub_16AA0();
  sub_167B50();
  v35 = *(v34 - 256);
  sub_167F0C();
  sub_1688D4();
  sub_1693F4();
  sub_167B60();
  sub_167E14();
  sub_168E24();
  v36 = sub_167D14();
  sub_16807C(v36);
  v37 = sub_5758(&qword_1F0940, &qword_17BA90);
  v38 = sub_167E98(v37);
  sub_1680A0(&off_1D9AF0);
  sub_1681DC();
  sub_16A154();
  sub_7A6A8();
  v39 = sub_16A094();
  *(v0 + 24) = v2;
  sub_167DB4(v39, &off_1DA7E8);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  v41 = *(v40 + 64);
  __chkstk_darwin(v42);
  v44 = sub_CA01C(v43, v70);
  v45(v44);
  sub_167ABC();
  sub_168064();

  sub_167910();
  sub_16796C();
  sub_37284(v46, &qword_1F0940, &qword_17BA90);
  sub_167B40();
  sub_168834();
  sub_16AA0();
  sub_167AE8();
  sub_1693F4();
  sub_1681AC();
  sub_167D94();
  sub_167DF4(v47);
  sub_167A0C(&qword_1F0958);
  sub_AAB38();
  sub_1687D4();
  sub_167FD0();
  sub_167F98();
  sub_1693F4();
  sub_167B60();
  sub_167CF4();
  sub_168E24();
  v48 = sub_167C40();
  sub_168070(v48);
  v49 = sub_5758(&qword_1F0960, &qword_17BAA0);
  sub_167E98(v49);
  sub_168094(&off_1D9AF0);
  sub_16823C();
  sub_16A154();
  sub_7A6A8();
  v50 = sub_16A094();
  *(v38 + 24) = v2;
  sub_168088(v50, &off_1DA7E8);
  sub_168164();
  v51 = sub_167E54();
  sub_167FEC(v51, &off_1D4800);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  v53 = *(v52 + 64);
  __chkstk_darwin(v54);
  v56 = sub_1678EC(v55, v71);
  v57(v56);
  sub_167B14();
  sub_168194();
  sub_167910();
  sub_16793C();
  sub_37284(v58, &qword_1F0960, &qword_17BAA0);
  sub_167B40();
  sub_168864();
  sub_16AA0();
  sub_167A38();
  sub_1693F4();
  sub_7A67C();
  sub_168E24();
  v59 = sub_30AF8();
  sub_5758(v59, v60);
  sub_167F7C();
  v61 = sub_167B40();
  v64 = sub_167030(v61, v62, v63);
  sub_1680B8(v64);
  sub_1679E0(&qword_1F0978);
  sub_AAB38();
  sub_168814();
  sub_7A62C();
  sub_167D54();
  sub_1693F4();
  v65 = sub_167F38();
  v67 = sub_5758(v65, v66);
  *(sub_167E98(v67) + qword_1F0A50) = 0;
  sub_1681F4(qword_1F0A58);
  sub_7A740();
  sub_167D34();
  sub_167CF4();
  sub_168034();

  sub_168E24();
  v68 = sub_167CD0();
  sub_167F60(v68);
  sub_167BCC();
  sub_168134();

  sub_167C1C();
  sub_1679B4(&qword_1F0988);
  sub_167C88();
  sub_167FB4();
  sub_167DD4();
  sub_CA368();
}

void sub_161E98()
{
  sub_CA350();
  sub_167BB8(v2, v3);
  v4 = sub_16826C();
  v5 = sub_D414(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_167AA4();
  sub_16A494();
  sub_A73D8();
  v8 = sub_16A4F4();
  sub_167B84(v8);
  sub_1681C4();
  v9 = sub_167F38();
  v11 = sub_5758(v9, v10);
  sub_483C8(v11);
  sub_167F18();
  sub_37404();
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  v16 = sub_167A80(v15, v72);
  v17(v16);
  v20 = sub_168254(*v1, v18, v19, &qword_1F0910, &qword_17BA70);
  sub_168008(v20);
  sub_167954();
  sub_1680F0(v21);
  sub_167E74();
  sub_167EB4();

  v22 = sub_5758(&qword_1E9F50, &qword_173B28);
  sub_167A68(v22);
  sub_168894();
  sub_1693F4();
  v23 = type metadata accessor for FeatureFlagHelper();
  sub_167CAC(v23);
  sub_168028();
  v24 = sub_168E34();
  sub_167F44(v24);
  sub_168E24();
  sub_A73D8();
  v25 = type metadata accessor for SnippetManager();
  v26 = sub_167C64(v25);
  sub_1680AC(v26);
  v27 = sub_5758(&qword_1F08B0, &qword_17BA40);
  sub_167EF0(v27);
  sub_1680C4(&off_1D9AF0);
  v28 = sub_168224();
  sub_167D74(v28);
  sub_16A154();
  sub_7A6A8();
  *v0 = sub_16A094();
  v0[1] = &off_1D4830;
  sub_16820C();
  sub_16814C();
  sub_7A6A8();
  v29 = sub_16A094();
  sub_167E34(v29, &off_1DA7E8);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  v31 = *(v30 + 64);
  __chkstk_darwin(v32);
  v34 = sub_1678EC(v33, v73);
  v35(v34);
  sub_167BF4();
  sub_16817C();
  sub_167910();
  sub_167984();
  sub_37284(v36, &qword_1F08B0, &qword_17BA40);
  sub_AAB38();
  sub_168824();
  sub_16AA0();
  sub_167B50();
  v38 = *(v37 - 256);
  sub_167F0C();
  sub_1688D4();
  sub_1693F4();
  sub_167B60();
  sub_167E14();
  sub_168E24();
  v39 = sub_167D14();
  sub_16807C(v39);
  v40 = sub_5758(&qword_1F08C0, &qword_17BA48);
  v41 = sub_167E98(v40);
  sub_1680A0(&off_1D9AF0);
  sub_1681DC();
  sub_16A154();
  sub_7A6A8();
  v42 = sub_16A094();
  qword_1F08B8 = v11;
  sub_167DB4(v42, &off_1DA7E8);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  v44 = *(v43 + 64);
  __chkstk_darwin(v45);
  v47 = sub_CA01C(v46, v74);
  v48(v47);
  sub_167ABC();
  sub_168064();

  sub_167910();
  sub_16796C();
  sub_37284(v49, &qword_1F08C0, &qword_17BA48);
  sub_167B40();
  sub_168834();
  sub_16AA0();
  sub_167AE8();
  sub_1693F4();
  sub_1681AC();
  sub_167D94();
  sub_167DF4(v50);
  sub_167A0C(&qword_1F08D8);
  sub_AAB38();
  sub_1687D4();
  sub_167FD0();
  sub_167F98();
  sub_1693F4();
  sub_167B60();
  sub_167CF4();
  sub_168E24();
  v51 = sub_167C40();
  sub_168070(v51);
  v52 = sub_5758(&qword_1F08E0, &qword_17BA58);
  sub_167E98(v52);
  sub_168094(&off_1D9AF0);
  sub_16823C();
  sub_16A154();
  sub_7A6A8();
  v53 = sub_16A094();
  *(v41 + 24) = v11;
  sub_168088(v53, &off_1DA7E8);
  sub_168164();
  v54 = sub_167E54();
  sub_167FEC(v54, &off_1D4800);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  v56 = *(v55 + 64);
  __chkstk_darwin(v57);
  v59 = sub_1678EC(v58, v75);
  v60(v59);
  sub_167B14();
  sub_168194();
  sub_167910();
  sub_16793C();
  sub_37284(v61, &qword_1F08E0, &qword_17BA58);
  sub_167B40();
  sub_168864();
  sub_16AA0();
  sub_167A38();
  sub_1693F4();
  sub_7A67C();
  sub_168E24();
  v62 = sub_30AF8();
  sub_5758(v62, v63);
  sub_167F7C();
  v64 = sub_167B40();
  v67 = sub_167030(v64, v65, v66);
  sub_1680B8(v67);
  sub_1679E0(&qword_1F08F8);
  sub_AAB38();
  sub_168814();
  sub_7A62C();
  sub_167D54();
  sub_1693F4();
  v68 = sub_167F38();
  v70 = sub_5758(v68, v69);
  *(sub_167E98(v70) + qword_1F0A50) = 0;
  sub_1681F4(qword_1F0A58);
  sub_7A740();
  sub_167D34();
  sub_167CF4();
  sub_168034();

  sub_168E24();
  v71 = sub_167CD0();
  sub_167F60(v71);
  sub_167BCC();
  sub_168134();

  sub_167C1C();
  sub_1679B4(&qword_1F0908);
  sub_167C88();
  sub_167FB4();
  sub_167DD4();
  sub_CA368();
}

void sub_162510()
{
  sub_CA350();
  sub_167BB8(v2, v3);
  v4 = sub_16826C();
  v5 = sub_D414(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_167AA4();
  sub_16A484();
  sub_A73D8();
  v8 = sub_16A4D4();
  sub_167B84(v8);
  sub_1681C4();
  v9 = sub_167F38();
  v11 = sub_5758(v9, v10);
  sub_483C8(v11);
  sub_167F18();
  sub_37404();
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  v16 = sub_167A80(v15, v72);
  v17(v16);
  v20 = sub_168254(*v1, v18, v19, &qword_1F0898, &qword_17BA28);
  sub_168008(v20);
  sub_167954();
  sub_1680F0(v21);
  sub_167E74();
  sub_167EB4();

  v22 = sub_5758(&qword_1EA760, &qword_17B9F0);
  sub_167A68(v22);
  sub_168894();
  sub_1693F4();
  v23 = type metadata accessor for FeatureFlagHelper();
  sub_167CAC(v23);
  sub_168028();
  v24 = sub_168E34();
  sub_167F44(v24);
  sub_168E24();
  sub_A73D8();
  v25 = type metadata accessor for SnippetManager();
  v26 = sub_167C64(v25);
  sub_1680AC(v26);
  v27 = sub_5758(&qword_1F0838, &qword_17B9F8);
  sub_167EF0(v27);
  sub_1680C4(&off_1D9AF0);
  v28 = sub_168224();
  sub_167D74(v28);
  sub_16A154();
  sub_7A6A8();
  *v0 = sub_16A094();
  v0[1] = &off_1D4830;
  sub_16820C();
  sub_16814C();
  sub_7A6A8();
  v29 = sub_16A094();
  sub_167E34(v29, &off_1DA7E8);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  v31 = *(v30 + 64);
  __chkstk_darwin(v32);
  v34 = sub_1678EC(v33, v73);
  v35(v34);
  sub_167BF4();
  sub_16817C();
  sub_167910();
  sub_167984();
  sub_37284(v36, &qword_1F0838, &qword_17B9F8);
  sub_AAB38();
  sub_168824();
  sub_16AA0();
  sub_167B50();
  v38 = *(v37 - 256);
  sub_167F0C();
  sub_1688D4();
  sub_1693F4();
  sub_167B60();
  sub_167E14();
  sub_168E24();
  v39 = sub_167D14();
  sub_16807C(v39);
  v40 = sub_5758(&qword_1F0848, &qword_17BA00);
  v41 = sub_167E98(v40);
  sub_1680A0(&off_1D9AF0);
  sub_1681DC();
  sub_16A154();
  sub_7A6A8();
  v42 = sub_16A094();
  qword_1F0840 = v11;
  sub_167DB4(v42, &off_1DA7E8);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  v44 = *(v43 + 64);
  __chkstk_darwin(v45);
  v47 = sub_CA01C(v46, v74);
  v48(v47);
  sub_167ABC();
  sub_168064();

  sub_167910();
  sub_16796C();
  sub_37284(v49, &qword_1F0848, &qword_17BA00);
  sub_167B40();
  sub_168834();
  sub_16AA0();
  sub_167AE8();
  sub_1693F4();
  sub_1681AC();
  sub_167D94();
  sub_167DF4(v50);
  sub_167A0C(&qword_1F0860);
  sub_AAB38();
  sub_1687D4();
  sub_167FD0();
  sub_167F98();
  sub_1693F4();
  sub_167B60();
  sub_167CF4();
  sub_168E24();
  v51 = sub_167C40();
  sub_168070(v51);
  v52 = sub_5758(&qword_1F0868, &qword_17BA10);
  sub_167E98(v52);
  sub_168094(&off_1D9AF0);
  sub_16823C();
  sub_16A154();
  sub_7A6A8();
  v53 = sub_16A094();
  *(v41 + 24) = v11;
  sub_168088(v53, &off_1DA7E8);
  sub_168164();
  v54 = sub_167E54();
  sub_167FEC(v54, &off_1D4800);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  v56 = *(v55 + 64);
  __chkstk_darwin(v57);
  v59 = sub_1678EC(v58, v75);
  v60(v59);
  sub_167B14();
  sub_168194();
  sub_167910();
  sub_16793C();
  sub_37284(v61, &qword_1F0868, &qword_17BA10);
  sub_167B40();
  sub_168864();
  sub_16AA0();
  sub_167A38();
  sub_1693F4();
  sub_7A67C();
  sub_168E24();
  v62 = sub_30AF8();
  sub_5758(v62, v63);
  sub_167F7C();
  v64 = sub_167B40();
  v67 = sub_167030(v64, v65, v66);
  sub_1680B8(v67);
  sub_1679E0(&qword_1F0880);
  sub_AAB38();
  sub_168814();
  sub_7A62C();
  sub_167D54();
  sub_1693F4();
  v68 = sub_167F38();
  v70 = sub_5758(v68, v69);
  *(sub_167E98(v70) + qword_1F0A50) = 0;
  sub_1681F4(qword_1F0A58);
  sub_7A740();
  sub_167D34();
  sub_167CF4();
  sub_168034();

  sub_168E24();
  v71 = sub_167CD0();
  sub_167F60(v71);
  sub_167BCC();
  sub_168134();

  sub_167C1C();
  sub_1679B4(&qword_1F0890);
  sub_167C88();
  sub_167FB4();
  sub_167DD4();
  sub_CA368();
}

uint64_t sub_162B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v98 = a2;
  v94[2] = a1;
  v6 = sub_16A164();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  sub_16A4A4();
  v96 = a4;
  v94[3] = sub_16A514();
  sub_168904();
  sub_10824(a3, v105);
  v8 = sub_5758(&qword_1F0548, &qword_17B840);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = v106;
  v13 = sub_2F8D0(v105, v106);
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_166DE4(*v16, v11, &type metadata accessor for DeactivateSignalIntent, &qword_1F05B8, &qword_17B878);
  sub_D13C(v105);
  v105[0] = v18;
  sub_37284(&qword_1F0550, &qword_1F0548, &qword_17B840);
  sub_168804();

  v97 = sub_5758(&qword_1F0530, &qword_17B830);
  sub_168894();
  sub_1693F4();
  v19 = type metadata accessor for FeatureFlagHelper();
  v95 = v19;
  v20 = swift_allocObject();
  v21 = sub_168E34();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  sub_168E24();
  v94[4] = type metadata accessor for SnippetManager();
  *(swift_allocObject() + 16) = 0;
  v24 = sub_5758(&qword_1F0558, &qword_17B848);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v27 = swift_allocObject();
  v103 = v19;
  v104 = &off_1D9AF0;
  v102[0] = v20;
  v28 = (v27 + qword_1F0DF0);
  v94[1] = type metadata accessor for CarCommandsCATs();

  sub_16A154();
  *v28 = sub_16A094();
  v28[1] = &off_1D4830;
  v29 = (v27 + qword_1F0DF8);
  v30 = type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  v31 = sub_16A094();
  v29[3] = v30;
  v29[4] = &off_1DA7E8;
  *v29 = v31;
  sub_10824(v105, v101);
  sub_10824(v102, v99);
  v32 = v100;
  v33 = sub_2F8D0(v99, v100);
  v34 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v33);
  v36 = (v94 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v37 + 16))(v36);
  v38 = *v36;
  sub_1668CC();
  v40 = v39;

  sub_D13C(v105);
  sub_D13C(v102);
  sub_D13C(v99);
  v105[0] = v40;
  sub_37284(&qword_1F0560, &qword_1F0558, &qword_17B848);
  sub_168824();

  sub_1688D4();
  sub_1693F4();
  v41 = v95;
  v42 = swift_allocObject();
  v43 = *(v21 + 48);
  v44 = *(v21 + 52);
  swift_allocObject();
  sub_168E24();
  *(swift_allocObject() + 16) = 0;
  v45 = sub_5758(&qword_1F0568, &qword_17B850);
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  v48 = swift_allocObject();
  v103 = v41;
  v104 = &off_1D9AF0;
  v102[0] = v42;
  v49 = (v48 + qword_1F0E38);

  sub_16A154();
  v50 = sub_16A094();
  v49[3] = v30;
  v49[4] = &off_1DA7E8;
  *v49 = v50;
  sub_10824(v105, v101);
  sub_10824(v102, v99);
  v51 = v100;
  v52 = sub_2F8D0(v99, v100);
  v53 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v52);
  v55 = (v94 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v56 + 16))(v55);
  v57 = *v55;
  sub_1668CC();
  v59 = v58;

  sub_D13C(v105);
  sub_D13C(v102);
  sub_D13C(v99);
  v105[0] = v59;
  sub_37284(&qword_1F0570, &qword_1F0568, &qword_17B850);
  sub_168834();

  sub_1688E4();
  sub_1693F4();

  sub_1670F4();
  v105[0] = v60;
  sub_5758(&qword_1F0578, &qword_17B858);
  sub_37284(&qword_1F0580, &qword_1F0578, &qword_17B858);
  sub_1687D4();

  sub_168874();
  sub_1693F4();
  v61 = v95;
  v62 = swift_allocObject();
  v63 = *(v21 + 48);
  v64 = *(v21 + 52);
  swift_allocObject();
  sub_168E24();
  *(swift_allocObject() + 16) = 0;
  v65 = sub_5758(&qword_1F0588, &qword_17B860);
  v66 = *(v65 + 48);
  v67 = *(v65 + 52);
  v68 = swift_allocObject();
  v103 = v61;
  v104 = &off_1D9AF0;
  v102[0] = v62;
  v69 = (v68 + qword_1F0E60);

  sub_16A154();
  v70 = sub_16A094();
  v69[3] = v30;
  v69[4] = &off_1DA7E8;
  *v69 = v70;
  v71 = (v68 + qword_1F0E68);
  sub_16A154();
  *v71 = sub_16A094();
  v71[1] = &off_1D4800;
  sub_10824(v105, v101);
  sub_10824(v102, v99);
  v72 = v100;
  v73 = sub_2F8D0(v99, v100);
  v74 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v73);
  v76 = (v94 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v77 + 16))(v76);
  v78 = *v76;
  sub_1668CC();
  v80 = v79;

  sub_D13C(v105);
  sub_D13C(v102);
  sub_D13C(v99);
  v105[0] = v80;
  sub_37284(&qword_1F0590, &qword_1F0588, &qword_17B860);
  sub_168864();

  sub_1688C4();
  sub_1693F4();
  v81 = *(v21 + 48);
  v82 = *(v21 + 52);
  swift_allocObject();
  v83 = sub_168E24();
  sub_5758(&qword_1F0598, &qword_17B868);
  v84 = swift_allocObject();
  v105[0] = sub_167030(v105, v83, v84);
  sub_37284(&qword_1F05A0, &qword_1F0598, &qword_17B868);
  sub_168814();

  sub_1688B4();
  sub_1693F4();
  v85 = sub_5758(&qword_1F05A8, &qword_17B870);
  v86 = *(v85 + 48);
  v87 = *(v85 + 52);
  v88 = swift_allocObject();
  v103 = &type metadata for TCCTemplatesProvider;
  v104 = &off_1D4118;
  *(v88 + qword_1F0A50) = 0;
  sub_10824(v102, v88 + qword_1F0A58);
  sub_10824(v105, v101);
  swift_allocObject();
  v89 = *(v21 + 48);
  v90 = *(v21 + 52);
  swift_allocObject();

  sub_168E24();
  *(swift_allocObject() + 16) = 0;

  sub_1668CC();
  v92 = v91;

  sub_D13C(v105);
  sub_D13C(v102);
  v105[0] = v92;
  sub_37284(&qword_1F05B0, &qword_1F05A8, &qword_17B870);
  sub_168844();

  return sub_1688F4();
}

void sub_16383C()
{
  sub_CA350();
  sub_167BB8(v2, v3);
  v4 = sub_16826C();
  v5 = sub_D414(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_167AA4();
  sub_16A524();
  sub_A73D8();
  v8 = sub_16A564();
  sub_167B84(v8);
  sub_1681C4();
  v9 = sub_167F38();
  v11 = sub_5758(v9, v10);
  sub_483C8(v11);
  sub_167F18();
  sub_37404();
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  v16 = sub_167A80(v15, v72);
  v17(v16);
  v20 = sub_168254(*v1, v18, v19, &qword_1F0720, &qword_17B950);
  sub_168008(v20);
  sub_167954();
  sub_1680F0(v21);
  sub_167E74();
  sub_167EB4();

  v22 = sub_5758(&qword_1EC1F0, &qword_177490);
  sub_167A68(v22);
  sub_168894();
  sub_1693F4();
  v23 = type metadata accessor for FeatureFlagHelper();
  sub_167CAC(v23);
  sub_168028();
  v24 = sub_168E34();
  sub_167F44(v24);
  sub_168E24();
  sub_A73D8();
  v25 = type metadata accessor for SnippetManager();
  v26 = sub_167C64(v25);
  sub_1680AC(v26);
  v27 = sub_5758(&qword_1F06C0, &qword_17B920);
  sub_167EF0(v27);
  sub_1680C4(&off_1D9AF0);
  v28 = sub_168224();
  sub_167D74(v28);
  sub_16A154();
  sub_7A6A8();
  *v0 = sub_16A094();
  v0[1] = &off_1D4830;
  sub_16820C();
  sub_16814C();
  sub_7A6A8();
  v29 = sub_16A094();
  sub_167E34(v29, &off_1DA7E8);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  v31 = *(v30 + 64);
  __chkstk_darwin(v32);
  v34 = sub_1678EC(v33, v73);
  v35(v34);
  sub_167BF4();
  sub_16817C();
  sub_167910();
  sub_167984();
  sub_37284(v36, &qword_1F06C0, &qword_17B920);
  sub_AAB38();
  sub_168824();
  sub_16AA0();
  sub_167B50();
  v38 = *(v37 - 256);
  sub_167F0C();
  sub_1688D4();
  sub_1693F4();
  sub_167B60();
  sub_167E14();
  sub_168E24();
  v39 = sub_167D14();
  sub_16807C(v39);
  v40 = sub_5758(&qword_1F06D0, &qword_17B928);
  v41 = sub_167E98(v40);
  sub_1680A0(&off_1D9AF0);
  sub_1681DC();
  sub_16A154();
  sub_7A6A8();
  v42 = sub_16A094();
  qword_1F06C8 = v11;
  sub_167DB4(v42, &off_1DA7E8);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  v44 = *(v43 + 64);
  __chkstk_darwin(v45);
  v47 = sub_CA01C(v46, v74);
  v48(v47);
  sub_167ABC();
  sub_168064();

  sub_167910();
  sub_16796C();
  sub_37284(v49, &qword_1F06D0, &qword_17B928);
  sub_167B40();
  sub_168834();
  sub_16AA0();
  sub_167AE8();
  sub_1693F4();
  sub_1681AC();
  sub_167D94();
  sub_167DF4(v50);
  sub_167A0C(&qword_1F06E8);
  sub_AAB38();
  sub_1687D4();
  sub_167FD0();
  sub_167F98();
  sub_1693F4();
  sub_167B60();
  sub_167CF4();
  sub_168E24();
  v51 = sub_167C40();
  sub_168070(v51);
  v52 = sub_5758(&qword_1F06F0, &qword_17B938);
  sub_167E98(v52);
  sub_168094(&off_1D9AF0);
  sub_16823C();
  sub_16A154();
  sub_7A6A8();
  v53 = sub_16A094();
  *(v41 + 24) = v11;
  sub_168088(v53, &off_1DA7E8);
  sub_168164();
  v54 = sub_167E54();
  sub_167FEC(v54, &off_1D4800);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  v56 = *(v55 + 64);
  __chkstk_darwin(v57);
  v59 = sub_1678EC(v58, v75);
  v60(v59);
  sub_167B14();
  sub_168194();
  sub_167910();
  sub_16793C();
  sub_37284(v61, &qword_1F06F0, &qword_17B938);
  sub_167B40();
  sub_168864();
  sub_16AA0();
  sub_167A38();
  sub_1693F4();
  sub_7A67C();
  sub_168E24();
  v62 = sub_30AF8();
  sub_5758(v62, v63);
  sub_167F7C();
  v64 = sub_167B40();
  v67 = sub_167030(v64, v65, v66);
  sub_1680B8(v67);
  sub_1679E0(&qword_1F0708);
  sub_AAB38();
  sub_168814();
  sub_7A62C();
  sub_167D54();
  sub_1693F4();
  v68 = sub_167F38();
  v70 = sub_5758(v68, v69);
  *(sub_167E98(v70) + qword_1F0A50) = 0;
  sub_1681F4(qword_1F0A58);
  sub_7A740();
  sub_167D34();
  sub_167CF4();
  sub_168034();

  sub_168E24();
  v71 = sub_167CD0();
  sub_167F60(v71);
  sub_167BCC();
  sub_168134();

  sub_167C1C();
  sub_1679B4(&qword_1F0718);
  sub_167C88();
  sub_167FB4();
  sub_167DD4();
  sub_CA368();
}

void sub_163EB4()
{
  sub_CA350();
  sub_167BB8(v3, v4);
  v5 = sub_16A164();
  v6 = sub_D414(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_167AA4();
  sub_16484(0, &qword_1E6A18, INGetCarLockStatusIntent_ptr);
  v9 = sub_16484(0, &qword_1F0728, INGetCarLockStatusIntentResponse_ptr);
  sub_167EC0(v9);
  sub_1681C4();
  v10 = sub_5758(&qword_1F0730, &qword_17B958);
  sub_167EF0(v10);
  sub_1680D0();
  sub_37404();
  v12 = *(v11 + 64);
  __chkstk_darwin(v13);
  sub_A138();
  v15 = sub_153A08(v14);
  v16(v15);
  v17 = sub_166F08(*v2, v1, &qword_1E6A18, INGetCarLockStatusIntent_ptr, &qword_1F07A0, &qword_17B998);
  sub_168290(v17);
  sub_167954();
  sub_37284(v18, &qword_1F0730, &qword_17B958);
  sub_168040();
  sub_16AA0();
  v19 = sub_5758(&qword_1EB8E0, &qword_176340);
  sub_167A68(v19);
  sub_168894();
  sub_1693F4();
  v20 = type metadata accessor for FeatureFlagHelper();
  sub_167CAC(v20);
  sub_168028();
  v21 = sub_168E34();
  sub_167F44(v21);
  sub_168E24();
  sub_A73D8();
  v22 = type metadata accessor for SnippetManager();
  v23 = sub_167C64(v22);
  sub_1680AC(v23);
  v24 = sub_5758(&qword_1F0740, &qword_17B968);
  sub_167EF0(v24);
  sub_1680C4(&off_1D9AF0);
  v25 = sub_168224();
  sub_167D74(v25);
  sub_16A154();
  sub_7A6A8();
  qword_17B958 = sub_16A094();
  unk_17B960 = &off_1D4830;
  sub_16820C();
  sub_16814C();
  sub_7A6A8();
  v26 = sub_16A094();
  sub_167E34(v26, &off_1DA7E8);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  v28 = *(v27 + 64);
  __chkstk_darwin(v29);
  v31 = sub_1678EC(v30, v69);
  v32(v31);
  sub_167BF4();
  sub_16817C();
  sub_167910();
  sub_167984();
  sub_37284(v33, &qword_1F0740, &qword_17B968);
  sub_AAB38();
  sub_168824();
  sub_16AA0();
  sub_167B50();
  v35 = *(v34 - 256);
  sub_167F0C();
  sub_1688D4();
  sub_1693F4();
  sub_167B60();
  sub_167E14();
  sub_168E24();
  v36 = sub_167D14();
  sub_16807C(v36);
  v37 = sub_5758(&qword_1F0750, &qword_17B970);
  v38 = sub_167E98(v37);
  sub_1680A0(&off_1D9AF0);
  sub_1681DC();
  sub_16A154();
  sub_7A6A8();
  v39 = sub_16A094();
  *(v0 + 24) = v2;
  sub_167DB4(v39, &off_1DA7E8);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  v41 = *(v40 + 64);
  __chkstk_darwin(v42);
  v44 = sub_CA01C(v43, v70);
  v45(v44);
  sub_167ABC();
  sub_168064();

  sub_167910();
  sub_16796C();
  sub_37284(v46, &qword_1F0750, &qword_17B970);
  sub_167B40();
  sub_168834();
  sub_16AA0();
  sub_167AE8();
  sub_1693F4();
  sub_1681AC();
  sub_167D94();
  sub_167DF4(v47);
  sub_167A0C(&qword_1F0768);
  sub_AAB38();
  sub_1687D4();
  sub_167FD0();
  sub_167F98();
  sub_1693F4();
  sub_167B60();
  sub_167CF4();
  sub_168E24();
  v48 = sub_167C40();
  sub_168070(v48);
  v49 = sub_5758(&qword_1F0770, &qword_17B980);
  sub_167E98(v49);
  sub_168094(&off_1D9AF0);
  sub_16823C();
  sub_16A154();
  sub_7A6A8();
  v50 = sub_16A094();
  *(v38 + 24) = v2;
  sub_168088(v50, &off_1DA7E8);
  sub_168164();
  v51 = sub_167E54();
  sub_167FEC(v51, &off_1D4800);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  v53 = *(v52 + 64);
  __chkstk_darwin(v54);
  v56 = sub_1678EC(v55, v71);
  v57(v56);
  sub_167B14();
  sub_168194();
  sub_167910();
  sub_16793C();
  sub_37284(v58, &qword_1F0770, &qword_17B980);
  sub_167B40();
  sub_168864();
  sub_16AA0();
  sub_167A38();
  sub_1693F4();
  sub_7A67C();
  sub_168E24();
  v59 = sub_30AF8();
  sub_5758(v59, v60);
  sub_167F7C();
  v61 = sub_167B40();
  v64 = sub_167030(v61, v62, v63);
  sub_1680B8(v64);
  sub_1679E0(&qword_1F0788);
  sub_AAB38();
  sub_168814();
  sub_7A62C();
  sub_167D54();
  sub_1693F4();
  v65 = sub_167F38();
  v67 = sub_5758(v65, v66);
  *(sub_167E98(v67) + qword_1F0A50) = 0;
  sub_1681F4(qword_1F0A58);
  sub_7A740();
  sub_167D34();
  sub_167CF4();
  sub_168034();

  sub_168E24();
  v68 = sub_167CD0();
  sub_167F60(v68);
  sub_167BCC();
  sub_168134();

  sub_167C1C();
  sub_1679B4(&qword_1F0798);
  sub_167C88();
  sub_167FB4();
  sub_167DD4();
  sub_CA368();
}

void sub_164564()
{
  sub_CA350();
  sub_167BB8(v3, v4);
  v5 = sub_16A164();
  v6 = sub_D414(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_167AA4();
  sub_16484(0, &qword_1E6A50, INSetCarLockStatusIntent_ptr);
  v9 = sub_16484(0, &qword_1F07A8, INSetCarLockStatusIntentResponse_ptr);
  sub_167EC0(v9);
  sub_1681C4();
  v10 = sub_5758(&qword_1F07B0, &qword_17B9A0);
  sub_167EF0(v10);
  sub_1680D0();
  sub_37404();
  v12 = *(v11 + 64);
  __chkstk_darwin(v13);
  sub_A138();
  v15 = sub_153A08(v14);
  v16(v15);
  v17 = sub_166F08(*v2, v1, &qword_1E6A50, INSetCarLockStatusIntent_ptr, &qword_1F0820, &qword_17B9E0);
  sub_168290(v17);
  sub_167954();
  sub_37284(v18, &qword_1F07B0, &qword_17B9A0);
  sub_168040();
  sub_16AA0();
  v19 = sub_5758(&qword_1EAE88, &qword_1751D0);
  sub_167A68(v19);
  sub_168894();
  sub_1693F4();
  v20 = type metadata accessor for FeatureFlagHelper();
  sub_167CAC(v20);
  sub_168028();
  v21 = sub_168E34();
  sub_167F44(v21);
  sub_168E24();
  sub_A73D8();
  v22 = type metadata accessor for SnippetManager();
  v23 = sub_167C64(v22);
  sub_1680AC(v23);
  v24 = sub_5758(&qword_1F07C0, &qword_17B9B0);
  sub_167EF0(v24);
  sub_1680C4(&off_1D9AF0);
  v25 = sub_168224();
  sub_167D74(v25);
  sub_16A154();
  sub_7A6A8();
  qword_17B9A0 = sub_16A094();
  *algn_17B9A8 = &off_1D4830;
  sub_16820C();
  sub_16814C();
  sub_7A6A8();
  v26 = sub_16A094();
  sub_167E34(v26, &off_1DA7E8);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  v28 = *(v27 + 64);
  __chkstk_darwin(v29);
  v31 = sub_1678EC(v30, v69);
  v32(v31);
  sub_167BF4();
  sub_16817C();
  sub_167910();
  sub_167984();
  sub_37284(v33, &qword_1F07C0, &qword_17B9B0);
  sub_AAB38();
  sub_168824();
  sub_16AA0();
  sub_167B50();
  v35 = *(v34 - 256);
  sub_167F0C();
  sub_1688D4();
  sub_1693F4();
  sub_167B60();
  sub_167E14();
  sub_168E24();
  v36 = sub_167D14();
  sub_16807C(v36);
  v37 = sub_5758(&qword_1F07D0, &qword_17B9B8);
  v38 = sub_167E98(v37);
  sub_1680A0(&off_1D9AF0);
  sub_1681DC();
  sub_16A154();
  sub_7A6A8();
  v39 = sub_16A094();
  *(v0 + 24) = v2;
  sub_167DB4(v39, &off_1DA7E8);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  v41 = *(v40 + 64);
  __chkstk_darwin(v42);
  v44 = sub_CA01C(v43, v70);
  v45(v44);
  sub_167ABC();
  sub_168064();

  sub_167910();
  sub_16796C();
  sub_37284(v46, &qword_1F07D0, &qword_17B9B8);
  sub_167B40();
  sub_168834();
  sub_16AA0();
  sub_167AE8();
  sub_1693F4();
  sub_1681AC();
  sub_167D94();
  sub_167DF4(v47);
  sub_167A0C(&qword_1F07E8);
  sub_AAB38();
  sub_1687D4();
  sub_167FD0();
  sub_167F98();
  sub_1693F4();
  sub_167B60();
  sub_167CF4();
  sub_168E24();
  v48 = sub_167C40();
  sub_168070(v48);
  v49 = sub_5758(&qword_1F07F0, &qword_17B9C8);
  sub_167E98(v49);
  sub_168094(&off_1D9AF0);
  sub_16823C();
  sub_16A154();
  sub_7A6A8();
  v50 = sub_16A094();
  *(v38 + 24) = v2;
  sub_168088(v50, &off_1DA7E8);
  sub_168164();
  v51 = sub_167E54();
  sub_167FEC(v51, &off_1D4800);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  v53 = *(v52 + 64);
  __chkstk_darwin(v54);
  v56 = sub_1678EC(v55, v71);
  v57(v56);
  sub_167B14();
  sub_168194();
  sub_167910();
  sub_16793C();
  sub_37284(v58, &qword_1F07F0, &qword_17B9C8);
  sub_167B40();
  sub_168864();
  sub_16AA0();
  sub_167A38();
  sub_1693F4();
  sub_7A67C();
  sub_168E24();
  v59 = sub_30AF8();
  sub_5758(v59, v60);
  sub_167F7C();
  v61 = sub_167B40();
  v64 = sub_167030(v61, v62, v63);
  sub_1680B8(v64);
  sub_1679E0(&qword_1F0808);
  sub_AAB38();
  sub_168814();
  sub_7A62C();
  sub_167D54();
  sub_1693F4();
  v65 = sub_167F38();
  v67 = sub_5758(v65, v66);
  *(sub_167E98(v67) + qword_1F0A50) = 0;
  sub_1681F4(qword_1F0A58);
  sub_7A740();
  sub_167D34();
  sub_167CF4();
  sub_168034();

  sub_168E24();
  v68 = sub_167CD0();
  sub_167F60(v68);
  sub_167BCC();
  sub_168134();

  sub_167C1C();
  sub_1679B4(&qword_1F0818);
  sub_167C88();
  sub_167FB4();
  sub_167DD4();
  sub_CA368();
}

void sub_164C14()
{
  sub_CA350();
  sub_167BB8(v2, v3);
  v4 = sub_16826C();
  v5 = sub_D414(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_167AA4();
  sub_16A384();
  sub_A73D8();
  v8 = sub_16A3A4();
  sub_167B84(v8);
  sub_1681C4();
  v9 = sub_167F38();
  v11 = sub_5758(v9, v10);
  sub_483C8(v11);
  sub_167F18();
  sub_37404();
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  v16 = sub_167A80(v15, v72);
  v17(v16);
  v20 = sub_168254(*v1, v18, v19, &qword_1F0630, &qword_17B8C0);
  sub_168008(v20);
  sub_167954();
  sub_1680F0(v21);
  sub_167E74();
  sub_167EB4();

  v22 = sub_5758(&qword_1EDA18, &qword_178E28);
  sub_167A68(v22);
  sub_168894();
  sub_1693F4();
  v23 = type metadata accessor for FeatureFlagHelper();
  sub_167CAC(v23);
  sub_168028();
  v24 = sub_168E34();
  sub_167F44(v24);
  sub_168E24();
  sub_A73D8();
  v25 = type metadata accessor for SnippetManager();
  v26 = sub_167C64(v25);
  sub_1680AC(v26);
  v27 = sub_5758(&qword_1F05D0, &qword_17B890);
  sub_167EF0(v27);
  sub_1680C4(&off_1D9AF0);
  v28 = sub_168224();
  sub_167D74(v28);
  sub_16A154();
  sub_7A6A8();
  *v0 = sub_16A094();
  v0[1] = &off_1D4830;
  sub_16820C();
  sub_16814C();
  sub_7A6A8();
  v29 = sub_16A094();
  sub_167E34(v29, &off_1DA7E8);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  v31 = *(v30 + 64);
  __chkstk_darwin(v32);
  v34 = sub_1678EC(v33, v73);
  v35(v34);
  sub_167BF4();
  sub_16817C();
  sub_167910();
  sub_167984();
  sub_37284(v36, &qword_1F05D0, &qword_17B890);
  sub_AAB38();
  sub_168824();
  sub_16AA0();
  sub_167B50();
  v38 = *(v37 - 256);
  sub_167F0C();
  sub_1688D4();
  sub_1693F4();
  sub_167B60();
  sub_167E14();
  sub_168E24();
  v39 = sub_167D14();
  sub_16807C(v39);
  v40 = sub_5758(&qword_1F05E0, &qword_17B898);
  v41 = sub_167E98(v40);
  sub_1680A0(&off_1D9AF0);
  sub_1681DC();
  sub_16A154();
  sub_7A6A8();
  v42 = sub_16A094();
  qword_1F05D8 = v11;
  sub_167DB4(v42, &off_1DA7E8);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  v44 = *(v43 + 64);
  __chkstk_darwin(v45);
  v47 = sub_CA01C(v46, v74);
  v48(v47);
  sub_167ABC();
  sub_168064();

  sub_167910();
  sub_16796C();
  sub_37284(v49, &qword_1F05E0, &qword_17B898);
  sub_167B40();
  sub_168834();
  sub_16AA0();
  sub_167AE8();
  sub_1693F4();
  sub_1681AC();
  sub_167D94();
  sub_167DF4(v50);
  sub_167A0C(&qword_1F05F8);
  sub_AAB38();
  sub_1687D4();
  sub_167FD0();
  sub_167F98();
  sub_1693F4();
  sub_167B60();
  sub_167CF4();
  sub_168E24();
  v51 = sub_167C40();
  sub_168070(v51);
  v52 = sub_5758(&qword_1F0600, &qword_17B8A8);
  sub_167E98(v52);
  sub_168094(&off_1D9AF0);
  sub_16823C();
  sub_16A154();
  sub_7A6A8();
  v53 = sub_16A094();
  *(v41 + 24) = v11;
  sub_168088(v53, &off_1DA7E8);
  sub_168164();
  v54 = sub_167E54();
  sub_167FEC(v54, &off_1D4800);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  v56 = *(v55 + 64);
  __chkstk_darwin(v57);
  v59 = sub_1678EC(v58, v75);
  v60(v59);
  sub_167B14();
  sub_168194();
  sub_167910();
  sub_16793C();
  sub_37284(v61, &qword_1F0600, &qword_17B8A8);
  sub_167B40();
  sub_168864();
  sub_16AA0();
  sub_167A38();
  sub_1693F4();
  sub_7A67C();
  sub_168E24();
  v62 = sub_30AF8();
  sub_5758(v62, v63);
  sub_167F7C();
  v64 = sub_167B40();
  v67 = sub_167030(v64, v65, v66);
  sub_1680B8(v67);
  sub_1679E0(&qword_1F0618);
  sub_AAB38();
  sub_168814();
  sub_7A62C();
  sub_167D54();
  sub_1693F4();
  v68 = sub_167F38();
  v70 = sub_5758(v68, v69);
  *(sub_167E98(v70) + qword_1F0A50) = 0;
  sub_1681F4(qword_1F0A58);
  sub_7A740();
  sub_167D34();
  sub_167CF4();
  sub_168034();

  sub_168E24();
  v71 = sub_167CD0();
  sub_167F60(v71);
  sub_167BCC();
  sub_168134();

  sub_167C1C();
  sub_1679B4(&qword_1F0628);
  sub_167C88();
  sub_167FB4();
  sub_167DD4();
  sub_CA368();
}

void sub_16528C()
{
  sub_CA350();
  sub_167BB8(v2, v3);
  v4 = sub_16826C();
  v5 = sub_D414(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_167AA4();
  sub_16A3B4();
  sub_A73D8();
  v8 = sub_16A3F4();
  sub_167B84(v8);
  sub_1681C4();
  v9 = sub_167F38();
  v11 = sub_5758(v9, v10);
  sub_483C8(v11);
  sub_167F18();
  sub_37404();
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  v16 = sub_167A80(v15, v72);
  v17(v16);
  v20 = sub_168254(*v1, v18, v19, &qword_1F06A8, &qword_17B908);
  sub_168008(v20);
  sub_167954();
  sub_1680F0(v21);
  sub_167E74();
  sub_167EB4();

  v22 = sub_5758(&qword_1ED838, &qword_17B8D0);
  sub_167A68(v22);
  sub_168894();
  sub_1693F4();
  v23 = type metadata accessor for FeatureFlagHelper();
  sub_167CAC(v23);
  sub_168028();
  v24 = sub_168E34();
  sub_167F44(v24);
  sub_168E24();
  sub_A73D8();
  v25 = type metadata accessor for SnippetManager();
  v26 = sub_167C64(v25);
  sub_1680AC(v26);
  v27 = sub_5758(&qword_1F0648, &qword_17B8D8);
  sub_167EF0(v27);
  sub_1680C4(&off_1D9AF0);
  v28 = sub_168224();
  sub_167D74(v28);
  sub_16A154();
  sub_7A6A8();
  *v0 = sub_16A094();
  v0[1] = &off_1D4830;
  sub_16820C();
  sub_16814C();
  sub_7A6A8();
  v29 = sub_16A094();
  sub_167E34(v29, &off_1DA7E8);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  v31 = *(v30 + 64);
  __chkstk_darwin(v32);
  v34 = sub_1678EC(v33, v73);
  v35(v34);
  sub_167BF4();
  sub_16817C();
  sub_167910();
  sub_167984();
  sub_37284(v36, &qword_1F0648, &qword_17B8D8);
  sub_AAB38();
  sub_168824();
  sub_16AA0();
  sub_167B50();
  v38 = *(v37 - 256);
  sub_167F0C();
  sub_1688D4();
  sub_1693F4();
  sub_167B60();
  sub_167E14();
  sub_168E24();
  v39 = sub_167D14();
  sub_16807C(v39);
  v40 = sub_5758(&qword_1F0658, &qword_17B8E0);
  v41 = sub_167E98(v40);
  sub_1680A0(&off_1D9AF0);
  sub_1681DC();
  sub_16A154();
  sub_7A6A8();
  v42 = sub_16A094();
  qword_1F0650 = v11;
  sub_167DB4(v42, &off_1DA7E8);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  v44 = *(v43 + 64);
  __chkstk_darwin(v45);
  v47 = sub_CA01C(v46, v74);
  v48(v47);
  sub_167ABC();
  sub_168064();

  sub_167910();
  sub_16796C();
  sub_37284(v49, &qword_1F0658, &qword_17B8E0);
  sub_167B40();
  sub_168834();
  sub_16AA0();
  sub_167AE8();
  sub_1693F4();
  sub_1681AC();
  sub_167D94();
  sub_167DF4(v50);
  sub_167A0C(&qword_1F0670);
  sub_AAB38();
  sub_1687D4();
  sub_167FD0();
  sub_167F98();
  sub_1693F4();
  sub_167B60();
  sub_167CF4();
  sub_168E24();
  v51 = sub_167C40();
  sub_168070(v51);
  v52 = sub_5758(&qword_1F0678, &qword_17B8F0);
  sub_167E98(v52);
  sub_168094(&off_1D9AF0);
  sub_16823C();
  sub_16A154();
  sub_7A6A8();
  v53 = sub_16A094();
  *(v41 + 24) = v11;
  sub_168088(v53, &off_1DA7E8);
  sub_168164();
  v54 = sub_167E54();
  sub_167FEC(v54, &off_1D4800);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  v56 = *(v55 + 64);
  __chkstk_darwin(v57);
  v59 = sub_1678EC(v58, v75);
  v60(v59);
  sub_167B14();
  sub_168194();
  sub_167910();
  sub_16793C();
  sub_37284(v61, &qword_1F0678, &qword_17B8F0);
  sub_167B40();
  sub_168864();
  sub_16AA0();
  sub_167A38();
  sub_1693F4();
  sub_7A67C();
  sub_168E24();
  v62 = sub_30AF8();
  sub_5758(v62, v63);
  sub_167F7C();
  v64 = sub_167B40();
  v67 = sub_167030(v64, v65, v66);
  sub_1680B8(v67);
  sub_1679E0(&qword_1F0690);
  sub_AAB38();
  sub_168814();
  sub_7A62C();
  sub_167D54();
  sub_1693F4();
  v68 = sub_167F38();
  v70 = sub_5758(v68, v69);
  *(sub_167E98(v70) + qword_1F0A50) = 0;
  sub_1681F4(qword_1F0A58);
  sub_7A740();
  sub_167D34();
  sub_167CF4();
  sub_168034();

  sub_168E24();
  v71 = sub_167CD0();
  sub_167F60(v71);
  sub_167BCC();
  sub_168134();

  sub_167C1C();
  sub_1679B4(&qword_1F06A0);
  sub_167C88();
  sub_167FB4();
  sub_167DD4();
  sub_CA368();
}

id sub_165904()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = *(v0 + 96);
  }

  else
  {
    if (qword_1E5908 != -1)
    {
      sub_48134();
    }

    v3 = sub_166CB4();
    v4 = *(v0 + 96);
    *(v0 + 96) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void *sub_165988()
{
  sub_10C138();
  v2 = sub_16A164();
  v3 = sub_D414(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_A138();
  sub_168284();
  v6 = type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  v7 = sub_16A094();
  v0[5] = v6;
  v0[6] = &off_1DA7E8;
  v0[2] = v7;
  v8 = sub_168E34();
  sub_167EF0(v8);
  v9 = sub_168E24();
  v0[10] = v6;
  v0[11] = &protocol witness table for ResponseFactory;
  v0[7] = v9;
  v0[12] = 0;
  v0[13] = v1;
  return v0;
}

uint64_t sub_165A48()
{
  v0 = sub_1693E4();
  sub_37404();
  v2 = v1;
  v4 = *(v3 + 64);
  __chkstk_darwin(v5);
  sub_A138();
  v8 = (v7 - v6);
  sub_169384();
  sub_8F624();
  sub_86E4(v8, &_swiftEmptySetSingleton, v13);

  (*(v2 + 8))(v8, v0);
  v9 = v13[3];
  sub_57A80(v13);
  if (v9)
  {
    return sub_168C64();
  }

  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v11 = sub_16A584();
  sub_9DA0(v11, qword_1E65C0);
  v12 = sub_16A9A4();
  sub_386D8(v12, 0x40000uLL, 0xD000000000000093, 0x8000000000192830, 0xD000000000000016, 0x800000000017FD50, 35, 0xD00000000000001FLL, 0x800000000017F910);
  return sub_168C74();
}

uint64_t sub_165C14()
{
  sub_D2DC();
  v0[2] = v1;
  v2 = sub_1693E4();
  v0[3] = v2;
  v3 = *(v2 - 8);
  v0[4] = v3;
  v4 = *(v3 + 64) + 15;
  v0[5] = swift_task_alloc();

  return _swift_task_switch(sub_165CD0, 0, 0);
}

uint64_t sub_165CD0()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_16A4A4();
  v5 = *(v2 + 16);
  v6 = sub_30AF8();
  v5(v6);
  v7 = sub_99918(v1);
  v8 = v0[5];
  if (v7)
  {
    v9 = v7;
    v10 = v0[5];

    v11 = v0[1];

    return v11(v9);
  }

  else
  {
    v14 = v0[2];
    v13 = v0[3];
    type metadata accessor for CarCommandsError();
    sub_1678A4(&qword_1E92F0, 255, type metadata accessor for CarCommandsError);
    swift_allocError();
    (v5)(v15, v14, v13);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_165E78()
{
  v1 = v0;
  v2 = sub_16A164();
  v3 = sub_D414(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_A138();
  sub_168284();
  v6 = sub_5758(&qword_1F0530, &qword_17B830);
  sub_37404();
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = __chkstk_darwin(v11);
  __chkstk_darwin(v12);
  v14 = &v26[-1] - v13;
  if (qword_1E5908 != -1)
  {
    sub_48134();
  }

  v15 = qword_1F0C70;
  v26[3] = type metadata accessor for WalletService();
  v26[4] = &off_1D7C28;
  v26[0] = v15;
  type metadata accessor for CarCommandsCATs();

  sub_16A154();
  v16 = sub_16A094();
  sub_162B88(v16, 0x40000, v26, v14);

  sub_D13C(v26);
  v17 = *(v1 + 104);

  sub_1693F4();
  type metadata accessor for FeatureFlagHelper();
  sub_7A728();
  sub_168028();
  v18 = sub_168E34();
  sub_483C8(v18);
  sub_168034();

  sub_168E24();
  sub_167368(v26, v15);
  sub_168034();

  v26[0] = v16;
  type metadata accessor for DeactivateSignalHandleIntentFlowStrategy();
  sub_1678A4(&qword_1F0538, 255, type metadata accessor for DeactivateSignalHandleIntentFlowStrategy);
  sub_1687E4();

  sub_168884();
  v19 = *(v8 + 16);
  v20 = sub_167F38();
  v21(v20);
  v22 = sub_5758(&qword_1F0540, &qword_17B838);
  sub_483C8(v22);
  v23 = sub_168914();
  (*(v8 + 8))(v14, v6);
  return v23;
}

uint64_t sub_166170(uint64_t a1, uint64_t a2)
{
  result = sub_1678A4(&qword_1F0518, a2, type metadata accessor for DeactivateSignalRCHFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1661E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7971C;

  return sub_165C14();
}

uint64_t sub_166274()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_6F850;

  return sub_41EEC();
}

uint64_t sub_16634C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for DeactivateSignalRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t sub_166418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for DeactivateSignalRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t sub_1664E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for DeactivateSignalRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t sub_1665B0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_6F428;

  return sub_43114();
}

uint64_t sub_166688()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_79DCC;

  return sub_46FD4();
}

uint64_t sub_16681C(uint64_t a1, uint64_t a2)
{
  result = sub_1678A4(&qword_1F0520, a2, type metadata accessor for DeactivateSignalRCHFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_166874(uint64_t a1, uint64_t a2)
{
  result = sub_1678A4(&qword_1EEE40, a2, type metadata accessor for DeactivateSignalRCHFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

void sub_1668CC()
{
  sub_CA350();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v37 = v6;
  v38 = v7;
  v9 = v8;
  v10 = type metadata accessor for LocalizedMeasurementUnitProvider();
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  sub_A138();
  v15 = v14 - v13;
  v16 = sub_168E34();
  v41[3] = v16;
  v41[4] = &protocol witness table for ResponseFactory;
  v41[0] = v5;
  v17 = type metadata accessor for FeatureFlagHelper();
  v40[3] = v17;
  v40[4] = &off_1D9AF0;
  v40[0] = v9;
  v18 = [objc_opt_self() sharedStream];
  v19 = [objc_opt_self() sharedManager];
  sub_1689F4();
  v20 = type metadata accessor for CarCommandsLoggingProducer();
  swift_allocObject();
  v21 = sub_D230C(v18, v19, &v39);
  v1[5] = v20;
  v1[6] = &off_1D7DF0;
  v1[2] = v21;
  v22 = type metadata accessor for CarPlaySessionObserver();
  v23 = swift_allocObject();
  *(v23 + 16) = [objc_allocWithZone(CARSessionStatus) init];
  v1[10] = v22;
  v1[11] = &off_1D8738;
  v1[7] = v23;
  v24 = sub_7A728();
  v1[20] = v17;
  v1[21] = &off_1D9AF0;
  v1[17] = v24;
  v1[22] = 2;
  v25 = *(v16 + 48);
  v26 = *(v16 + 52);
  swift_allocObject();
  v27 = sub_168E24();
  v1[26] = v16;
  v1[27] = &protocol witness table for ResponseFactory;
  v1[23] = v27;
  sub_16484(0, &qword_1EBA60, NSUserDefaults_ptr);
  sub_E28B0(v1 + 29);
  sub_168E84();
  sub_169EB4();
  sub_169EA4();
  sub_169E94();

  sub_168E74();

  v28 = sub_16A244();
  v29 = sub_16A234();
  v1[42] = v28;
  v1[43] = &off_1D4510;
  v1[39] = v29;
  sub_10824(v37, (v1 + 12));
  swift_beginAccess();
  sub_16761C(v1 + 17, v40);
  swift_endAccess();
  v1[22] = v38 | 2;
  swift_beginAccess();
  sub_16761C(v1 + 23, v41);
  swift_endAccess();
  v1[28] = v3;
  v30 = v1[15];
  sub_D084(v1 + 12, v30);
  sub_37404();
  v32 = v31;
  v34 = *(v33 + 64);
  __chkstk_darwin(v35);
  sub_A138();
  sub_168284();
  (*(v32 + 16))(v28);
  v36 = *(v11 + 28);

  sub_168AD4();
  (*(v32 + 8))(v28, v30);
  sub_168444();

  sub_D13C(v37);
  sub_D13C(v41);
  sub_D13C(v40);
  sub_167840(v15, v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin27CarCommandsBaseFlowStrategy_unitProvider);
  sub_CA368();
}

id sub_166CB4()
{
  sub_A73D8();
  v1 = type metadata accessor for WalletService();
  v16[3] = v1;
  v16[4] = &off_1D7C28;
  v16[0] = v0;
  v2 = type metadata accessor for SEDeactivateSignalIntentHandler();
  v3 = objc_allocWithZone(v2);
  sub_2F8D0(v16, v1);
  sub_16799C();
  v5 = *(v4 + 64);
  __chkstk_darwin(v6);
  sub_A138();
  v9 = (v8 - v7);
  (*(v10 + 16))(v8 - v7);
  v11 = *v9;
  v15[3] = v1;
  v15[4] = &off_1D7C28;
  v15[0] = v11;
  sub_10824(v15, v3 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SEDeactivateSignalIntentHandler_carKeyService);
  v14.receiver = v3;
  v14.super_class = v2;
  v12 = objc_msgSendSuper2(&v14, "init");
  sub_D13C(v15);
  sub_D13C(v16);
  return v12;
}

uint64_t sub_166DE4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v17[3] = type metadata accessor for WalletService();
  v17[4] = &off_1D7C28;
  v17[0] = a1;
  *(a2 + qword_1E7E38) = 0;
  v10 = (a2 + qword_1F0B30);
  a3(0);
  sub_5758(a4, a5);
  *v10 = sub_16A694();
  v10[1] = v11;
  sub_10824(v17, a2 + qword_1F0B28);
  sub_1693F4();
  type metadata accessor for FeatureFlagHelper();
  sub_7A728();
  sub_10C138();
  v12 = sub_168E34();
  sub_483C8(v12);

  sub_168E24();
  type metadata accessor for SnippetManager();
  v13 = swift_allocObject();
  sub_168108(v13);
  v15 = v14;

  sub_D13C(v17);
  return v15;
}

uint64_t sub_166F08(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  sub_168028();
  v19[3] = type metadata accessor for WalletService();
  v19[4] = &off_1D7C28;
  v19[0] = v6;
  *(a2 + qword_1E7E38) = 0;
  v12 = (a2 + qword_1F0B30);
  sub_16484(0, a3, a4);
  sub_5758(a5, a6);
  *v12 = sub_16A694();
  v12[1] = v13;
  sub_10824(v19, a2 + qword_1F0B28);
  sub_1693F4();
  type metadata accessor for FeatureFlagHelper();
  sub_7A728();
  sub_10C138();
  v14 = sub_168E34();
  sub_483C8(v14);

  sub_168E24();
  type metadata accessor for SnippetManager();
  v15 = swift_allocObject();
  sub_168108(v15);
  v17 = v16;

  sub_D13C(v19);
  return v17;
}

uint64_t sub_167030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10C138();
  v6 = sub_16A164();
  v7 = sub_D414(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_A138();
  v12 = sub_168E34();
  v13 = &protocol witness table for ResponseFactory;
  *&v11 = a2;
  type metadata accessor for CarCommandsCATsSimple();
  sub_16A154();
  *(a3 + 96) = sub_16A0F4();
  sub_D124(v3, a3 + 16);
  sub_D124(&v11, a3 + 56);
  return a3;
}

void sub_1670F4()
{
  sub_CA350();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v30 = v7;
  v8 = sub_16A164();
  v9 = sub_D414(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_A138();
  sub_10824(v6, v33);
  v12 = type metadata accessor for FeatureFlagHelper();
  sub_7A728();
  sub_A73D8();
  v13 = sub_168E34();
  v14 = sub_483C8(v13);
  sub_168E24();
  type metadata accessor for SnippetManager();
  *(swift_allocObject() + 16) = 0;
  v15 = sub_5758(v4, v2);
  v16 = sub_483C8(v15);
  v32[3] = v12;
  v32[4] = &off_1D9AF0;
  v32[0] = v0;
  v17 = (v16 + qword_1F0C28);
  type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_168064();

  sub_16A154();
  v18 = sub_16A094();
  v17[3] = v14;
  v17[4] = &off_1DA7E8;
  *v17 = v18;
  v19 = (v16 + qword_1F0C30);
  v20 = type metadata accessor for CarCommandsCATs();
  sub_16A154();
  *v19 = sub_16A094();
  v19[1] = &off_1D4818;
  sub_7A740();
  sub_7A758();
  sub_2F8D0(v31, v31[3]);
  sub_37404();
  v22 = *(v21 + 64);
  __chkstk_darwin(v23);
  sub_A138();
  sub_168284();
  (*(v24 + 16))(v20);
  v25 = *v20;
  sub_1668CC();
  v27 = v26;

  sub_D13C(v6);
  sub_D13C(v33);
  sub_D13C(v32);
  sub_D13C(v31);
  v28 = (v27 + qword_1F0C30);
  v29 = *(v27 + qword_1F0C30);
  *v28 = v30;
  v28[1] = &off_1D4818;

  sub_CA368();
}

uint64_t sub_167368(uint64_t *a1, uint64_t a2)
{
  v4 = sub_16A164();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for FeatureFlagHelper();
  v34[3] = v6;
  v34[4] = &off_1D9AF0;
  v34[0] = a2;
  v7 = type metadata accessor for DeactivateSignalHandleIntentFlowStrategy();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = sub_2F8D0(v34, v6);
  v12 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v33[3] = v6;
  v33[4] = &off_1D9AF0;
  v33[0] = v16;
  v17 = (v10 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40DeactivateSignalHandleIntentFlowStrategy_commonPatterns);
  v18 = type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  v19 = sub_16A094();
  v17[3] = v18;
  v17[4] = &off_1DA7E8;
  *v17 = v19;
  *(v10 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40DeactivateSignalHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler) = 0;
  sub_10824(a1, v32);
  sub_10824(v33, v30);
  v20 = v31;
  v21 = sub_2F8D0(v30, v31);
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = (v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = *v24;
  sub_1668CC();
  v28 = v27;
  sub_D13C(a1);
  sub_D13C(v33);
  sub_D13C(v30);
  sub_D13C(v34);
  return v28;
}

uint64_t *sub_16761C(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result[3];
    v5 = a2[3];
    if (v4 == v5)
    {
      v10 = *(v4 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;

        *v3 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v5;
      result[4] = a2[4];
      v6 = *(v4 - 8);
      v7 = *(v5 - 8);
      v8 = v7;
      v9 = *(v7 + 80);
      if ((*(v6 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v9 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v7 + 16))(result, a2, v5);
        }
      }

      else
      {
        (*(v6 + 32))(v16, result, v4);
        if ((v9 & 0x20000) != 0)
        {
          *v3 = *a2;
        }

        else
        {
          (*(v8 + 16))(v3, a2, v5);
        }

        return (*(v6 + 8))(v16, v4);
      }
    }
  }

  return result;
}

uint64_t sub_167840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedMeasurementUnitProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1678A4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_167910()
{
  sub_D13C((v1 - 128));
  sub_D13C((v1 - 168));
  result = sub_D13C((v1 - 248));
  *(v1 - 128) = v0;
  return result;
}

uint64_t sub_1679B4(unint64_t *a1)
{

  return sub_37284(a1, v1, v2);
}

uint64_t sub_1679E0(unint64_t *a1)
{

  return sub_37284(a1, v1, v2);
}

uint64_t sub_167A0C(unint64_t *a1)
{

  return sub_37284(a1, v1, v2);
}

uint64_t sub_167A38()
{
  v2 = *(v0 - 264);
  v3 = *(v0 - 272);

  return sub_1688C4();
}

void sub_167ABC()
{
  v3 = *v0;
  v4 = *(v1 - 256);

  sub_1668CC();
}

uint64_t sub_167AE8()
{
  v2 = *(v0 - 264);
  v3 = *(v0 - 272);

  return sub_1688E4();
}

void sub_167B14()
{
  v3 = *v0;
  v4 = *(v1 - 256);

  sub_1668CC();
}

uint64_t sub_167B60()
{
  v2 = *(v0 - 280);

  return swift_allocObject();
}

uint64_t sub_167B84(uint64_t a1)
{
  *(v2 - 272) = v1;
  *(v2 - 296) = a1;

  return sub_168904();
}

uint64_t sub_167BB8(uint64_t result, uint64_t a2)
{
  *(v2 - 256) = a2;
  *(v2 - 304) = result;
  return result;
}

void sub_167BCC()
{

  sub_1668CC();
}

void sub_167BF4()
{
  v3 = *v0;
  v4 = *(v1 - 256);

  sub_1668CC();
}

uint64_t sub_167C1C()
{
  sub_D13C((v1 - 128));
  result = sub_D13C((v1 - 168));
  *(v1 - 128) = v0;
  return result;
}

uint64_t sub_167C40()
{
  v2 = *(v0 - 288);

  return swift_allocObject();
}

uint64_t sub_167C64(uint64_t a1)
{
  *(v1 - 288) = a1;

  return swift_allocObject();
}

uint64_t sub_167C88()
{
  v2 = *(v0 - 296);

  return sub_168844();
}

uint64_t sub_167CAC(uint64_t a1)
{
  *(v1 - 280) = a1;

  return swift_allocObject();
}

uint64_t sub_167CD0()
{
  v2 = *(v0 - 288);

  return swift_allocObject();
}

uint64_t sub_167CF4()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t sub_167D14()
{

  return swift_allocObject();
}

uint64_t sub_167D34()
{
  v2 = *(v0 - 280);

  return swift_allocObject();
}

uint64_t sub_167D54()
{

  return sub_1688B4();
}

uint64_t sub_167D74(uint64_t a1)
{
  *(v1 - 312) = a1;
}

void sub_167D94()
{

  sub_1670F4();
}

uint64_t sub_167DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[4] = a2;
  *v2 = a1;

  return sub_10824(v3 - 128, v3 - 208);
}

uint64_t sub_167DD4()
{

  return sub_1688F4();
}

uint64_t sub_167DF4(uint64_t a1)
{
  *(v3 - 128) = a1;

  return sub_5758(v1, v2);
}

uint64_t sub_167E14()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t sub_167E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = v3;
  v2[4] = a2;
  *v2 = a1;

  return sub_10824(v4 - 128, v4 - 208);
}

uint64_t sub_167E54()
{
  v2 = *(v0 - 312);

  return sub_16A094();
}

uint64_t sub_167E74()
{

  return sub_168804();
}

uint64_t sub_167E98(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_167EC0(uint64_t a1)
{
  *(v2 - 272) = v1;
  *(v2 - 296) = a1;

  return sub_168904();
}

uint64_t sub_167EF0(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_167F18()
{
  v2 = *(v0 - 104);

  return sub_2F8D0(v0 - 128, v2);
}

uint64_t sub_167F44(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_167F60(uint64_t a1)
{
  *(a1 + 16) = 0;
}

uint64_t sub_167F7C()
{

  return swift_allocObject();
}

uint64_t sub_167F98()
{

  return sub_168874();
}

uint64_t sub_167FB4()
{
}

uint64_t sub_167FD0()
{
}

uint64_t sub_167FEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *v2 = a1;
  v2[1] = a2;

  return sub_10824(v3 - 128, v3 - 208);
}

uint64_t sub_168008(uint64_t a1)
{
  result = sub_D13C((v1 - 128));
  *(v1 - 128) = a1;
  return result;
}

uint64_t sub_168040()
{

  return sub_168804();
}

uint64_t sub_168088@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[4] = a2;
  *v2 = result;
  return result;
}

void sub_168094(uint64_t a1@<X8>)
{
  *(v3 - 144) = v1;
  *(v3 - 136) = a1;
  *(v3 - 168) = v2;
}

void sub_1680A0(uint64_t a1@<X8>)
{
  *(v3 - 144) = v2;
  *(v3 - 136) = a1;
  *(v3 - 168) = v1;
}

void sub_1680C4(uint64_t a1@<X8>)
{
  *(v3 - 144) = v2;
  *(v3 - 136) = a1;
  *(v3 - 168) = v1;
}

uint64_t sub_1680D0()
{
  v2 = *(v0 - 104);

  return sub_2F8D0(v0 - 128, v2);
}

uint64_t sub_1680F0(unint64_t *a1)
{

  return sub_37284(a1, v1, v2);
}

void sub_168108(uint64_t a1)
{
  *(a1 + 16) = 0;

  sub_1668CC();
}

uint64_t sub_168134()
{
}

uint64_t sub_16814C()
{

  return sub_16A154();
}

uint64_t sub_168164()
{

  return sub_16A154();
}

uint64_t sub_16817C()
{
}

uint64_t sub_168194()
{
}

uint64_t sub_1681AC()
{
  v2 = *(v0 - 304);
}

uint64_t sub_1681C4()
{

  return sub_10824(v0, v1 - 128);
}

uint64_t sub_1681DC()
{
}

uint64_t sub_1681F4@<X0>(uint64_t a1@<X8>)
{

  return sub_10824(v2 - 168, v1 + a1);
}

uint64_t sub_16820C()
{

  return type metadata accessor for CarCommandsCATPatternsExecutor(0);
}

uint64_t sub_168224()
{

  return type metadata accessor for CarCommandsCATs();
}

uint64_t sub_16823C()
{
}

uint64_t sub_168254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{

  return sub_166DE4(a1, v6, v5, a4, a5);
}

uint64_t sub_16826C()
{

  return sub_16A164();
}

uint64_t sub_168290(uint64_t a1)
{
  result = sub_D13C((v1 - 128));
  *(v1 - 128) = a1;
  return result;
}
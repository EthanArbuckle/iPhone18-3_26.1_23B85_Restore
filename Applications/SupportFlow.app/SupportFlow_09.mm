unint64_t sub_1000D4734()
{
  result = qword_100190C70;
  if (!qword_100190C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190C70);
  }

  return result;
}

uint64_t sub_1000D4788(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000D47D0()
{
  result = qword_100190C80;
  if (!qword_100190C80)
  {
    sub_100004D48(&qword_100190BE8, &qword_10012E588);
    sub_1000D40E4();
    sub_1000D4138();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190C80);
  }

  return result;
}

unint64_t sub_1000D4860()
{
  result = qword_100190C88;
  if (!qword_100190C88)
  {
    sub_100004D48(qword_100190C90, &qword_10012E5B0);
    sub_1000D418C();
    sub_1000D47D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190C88);
  }

  return result;
}

uint64_t sub_1000D4904(uint64_t result, char a2)
{
  *(v2 - 208) = result;
  *(v2 - 200) = a2 & 1;
  return result;
}

uint64_t sub_1000D4938()
{
  v2 = *(v0 - 216);
  v3 = *(v0 - 232);

  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1000D4978()
{
  v2 = *(v1 - 216);
  result = v0;
  v4 = *(v1 - 232);
  return result;
}

uint64_t sub_1000D49A4()
{
  result = v0;
  v3 = *(v1 - 288);
  return result;
}

uint64_t sub_1000D49B4()
{
  result = v0;
  v3 = *(v1 - 224);
  return result;
}

__n128 sub_1000D49C4()
{
  v1 = *(v0 - 112);
  v2 = *(v0 - 111);
  result = *(v0 - 144);
  v4 = *(v0 - 128);
  return result;
}

uint64_t sub_1000D49E0()
{

  return Environment.init<A>(_:)();
}

uint64_t sub_1000D49FC()
{
  v2 = *(v0 - 240);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000D4A18()
{

  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1000D4A38()
{

  return type metadata accessor for PurchasesFlowViewModel();
}

uint64_t sub_1000D4A58(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_100004D48(&qword_100189398, &unk_100122910);
  v2 = type metadata accessor for Result();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1000D4AD8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) > 3)
  {
    goto LABEL_6;
  }

  v9 = ((a2 + ~(-1 << v6) - 252) >> v6) + 1;
  if (HIWORD(v9))
  {
    v7 = *(a1 + v5);
    if (v7)
    {
      goto LABEL_14;
    }

LABEL_22:
    v11 = *(a1 + v4);
    if (v11 >= 2)
    {
      v12 = (v11 ^ 0xFF) + 1;
    }

    else
    {
      v12 = 0;
    }

    if (v12 >= 3)
    {
      return v12 - 2;
    }

    else
    {
      return 0;
    }
  }

  if (v9 > 0xFF)
  {
    v7 = *(a1 + v5);
    if (*(a1 + v5))
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  if (v9 < 2)
  {
    goto LABEL_22;
  }

LABEL_6:
  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 253;
}

void sub_1000D4C18(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFD)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 252) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFC)
  {
    v9 = a2 - 253;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        JUMPOUT(0x1000D4DE0);
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -2 - a2;
        }

        break;
    }
  }
}

unint64_t sub_1000D4E20(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100176F28, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000D4E6C(char a1)
{
  if (!a1)
  {
    return 0x6E496E676973;
  }

  if (a1 == 1)
  {
    return 0x65526E496E676973;
  }

  return 0x7361507465736572;
}

unint64_t sub_1000D4EFC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D4E20(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000D4F2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000D4E6C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000D4F58(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (qword_100188288 != -1)
      {
        swift_once();
      }

      v2 = 0x80000001001389E0;
      v3 = 0xD000000000000036;
      v4 = &qword_100190D18;
    }

    else
    {
      if (qword_100188298 != -1)
      {
        swift_once();
      }

      v3 = 0;
      v2 = 0;
      v4 = &qword_100190D38;
    }
  }

  else
  {
    if (qword_100188290 != -1)
    {
      swift_once();
    }

    v3 = 0;
    v2 = 0;
    v4 = &qword_100190D28;
  }

  v6 = *v4;
  v5 = v4[1];

  v9 = &type metadata for AccountActionInfoType;
  v10 = sub_1000D53CC();
  v8[0] = a1;
  return sub_1000ED910(v6, v5, v3, v2, v8);
}

uint64_t sub_1000D50B4()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_100190D18 = result;
  unk_100190D20 = v5;
  return result;
}

uint64_t sub_1000D51BC()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_100190D28 = result;
  unk_100190D30 = v5;
  return result;
}

uint64_t sub_1000D52C4()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_100190D38 = result;
  unk_100190D40 = v5;
  return result;
}

unint64_t sub_1000D53CC()
{
  result = qword_100190D48;
  if (!qword_100190D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190D48);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AccountActionInfoType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000D54ECLL);
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

unint64_t sub_1000D5528()
{
  result = qword_100190D50;
  if (!qword_100190D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190D50);
  }

  return result;
}

unint64_t sub_1000D557C(uint64_t a1)
{
  result = sub_1000D55A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000D55A4()
{
  result = qword_100190D58;
  if (!qword_100190D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190D58);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TrustedPhoneNumberStepProvider(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000D5700);
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

__n128 sub_1000D5754@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  if (a1)
  {
    if (a1 == 1)
    {
      sub_1000402B4();
      v53 = v10 | 8;
      v58 = v9;
      LOWORD(v59) = 256;
      sub_1000D5D50();
      v11 = sub_1000D5DA4();
      sub_100005960(v11, &type metadata for TrustedPhoneNumberAccessView, &type metadata for TrustedPhoneNumberStartRecoveryView, v12, v11, v13, v14, v15, v53);
      v16 = _ConditionalContent<>.init(storage:)();
      sub_1000402C8(v16, v17, v18, v19, v20, v21, v22, v23, v54, v58, 2, 0, v59, v60, v61);
    }

    else
    {
      sub_1000402B4();
      v55 = v44 + 10;
    }

    sub_100003768(&qword_100190D88, &qword_10012E8F0);
    sub_1000D5CC4();
    v45 = sub_1000D5DF8();
    sub_100005960(v45, v46, &type metadata for TrustedPhoneNumberAccountRecoveryView, v47, v45, v48, v49, v50, v55);
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    LOBYTE(v52) = 0;
    sub_100005960(a1, &type metadata for Bool, a2, a3, a4, a5, a6, a7, v52);
    State.init(wrappedValue:)();
    LOWORD(v59) = 1;
    sub_1000D5D50();
    sub_1000D5DA4();

    sub_100005960(v24, &type metadata for TrustedPhoneNumberAccessView, &type metadata for TrustedPhoneNumberStartRecoveryView, v25, v26, v27, v28, v29, v61);
    v30 = _ConditionalContent<>.init(storage:)();
    sub_1000402C8(v30, v31, v32, v33, v34, v35, v36, v37, v56, *(&v61 + 1), 0xD000000000000022, 0x80000001001335A0, v59, v60, v61);
    sub_100003768(&qword_100190D88, &qword_10012E8F0);
    sub_1000D5CC4();
    v38 = sub_1000D5DF8();
    sub_100005960(v38, v39, &type metadata for TrustedPhoneNumberAccountRecoveryView, v40, v38, v41, v42, v43, v57);
    _ConditionalContent<>.init(storage:)();
  }

  result = v61;
  *a8 = v61;
  *(a8 + 16) = v62;
  *(a8 + 32) = v63;
  *(a8 + 34) = v64;
  return result;
}

unint64_t sub_1000D595C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100176F90, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000D59A8(char a1)
{
  result = 0xD000000000000022;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD00000000000002ALL;
    }

    else
    {
      return 0xD00000000000002CLL;
    }
  }

  return result;
}

unint64_t sub_1000D5A24@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D595C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000D5A54@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000D59A8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000D5AB4()
{
  result = qword_100190D60;
  if (!qword_100190D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190D60);
  }

  return result;
}

unint64_t sub_1000D5B08()
{
  result = qword_100190D68;
  if (!qword_100190D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190D68);
  }

  return result;
}

uint64_t sub_1000D5B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000D5BC4()
{
  result = qword_100190D70;
  if (!qword_100190D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190D70);
  }

  return result;
}

unint64_t sub_1000D5C18()
{
  result = qword_100190D78;
  if (!qword_100190D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190D78);
  }

  return result;
}

unint64_t sub_1000D5C70()
{
  result = qword_100190D80;
  if (!qword_100190D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190D80);
  }

  return result;
}

unint64_t sub_1000D5CC4()
{
  result = qword_100190D90;
  if (!qword_100190D90)
  {
    sub_100004D48(&qword_100190D88, &qword_10012E8F0);
    sub_1000D5D50();
    sub_1000D5DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190D90);
  }

  return result;
}

unint64_t sub_1000D5D50()
{
  result = qword_100190D98;
  if (!qword_100190D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190D98);
  }

  return result;
}

unint64_t sub_1000D5DA4()
{
  result = qword_100190DA0;
  if (!qword_100190DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190DA0);
  }

  return result;
}

unint64_t sub_1000D5DF8()
{
  result = qword_100190DA8;
  if (!qword_100190DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190DA8);
  }

  return result;
}

unint64_t sub_1000D5E50()
{
  result = qword_100190DB0;
  if (!qword_100190DB0)
  {
    sub_100004D48(&qword_100190DB8, &qword_10012E8F8);
    sub_1000D5CC4();
    sub_1000D5DF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190DB0);
  }

  return result;
}

uint64_t sub_1000D5EDC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v7 = v1;
  sub_1000D7178();
  sub_1000D7130(v3, v4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC11SupportFlow20RemoteAlertViewModel__flowIdentifier;
  swift_beginAccess();
  return sub_10002AE78(v7 + v5, a1);
}

uint64_t sub_1000D5F94(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  sub_10002AE78(a1, &v10 - v6);
  v8 = *a2;
  return sub_1000D6028(v7);
}

uint64_t sub_1000D6028(uint64_t a1)
{
  v3 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC11SupportFlow20RemoteAlertViewModel__flowIdentifier;
  swift_beginAccess();
  sub_10002AE78(v1 + v7, v6);
  v8 = sub_1000D61AC(v6, a1);
  sub_100044F98(v6, &unk_10018A300, &unk_1001241E0);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v11[-16] = v1;
    *&v11[-8] = a1;
    sub_1000D64E8();
  }

  else
  {
    swift_beginAccess();
    sub_1000D707C(a1, v1 + v7);
    swift_endAccess();
  }

  return sub_100044F98(a1, &unk_10018A300, &unk_1001241E0);
}

uint64_t sub_1000D61AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SupportFlowIdentifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v23 - v11;
  v13 = sub_100003768(&qword_100188FA0, &qword_10012A190);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_10002AE78(a1, &v23 - v16);
  sub_10002AE78(a2, &v17[v18]);
  if (sub_10000E5F0(v17, 1, v4) != 1)
  {
    sub_10002AE78(v17, v12);
    if (sub_10000E5F0(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_1000D7130(&qword_100188FA8, &type metadata accessor for SupportFlowIdentifier);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21 = *(v5 + 8);
      v21(v8, v4);
      v21(v12, v4);
      sub_100044F98(v17, &unk_10018A300, &unk_1001241E0);
      v19 = v20 ^ 1;
      return v19 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (sub_10000E5F0(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_100044F98(v17, &qword_100188FA0, &qword_10012A190);
    v19 = 1;
    return v19 & 1;
  }

  sub_100044F98(v17, &unk_10018A300, &unk_1001241E0);
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1000D647C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11SupportFlow20RemoteAlertViewModel__flowIdentifier;
  swift_beginAccess();
  sub_1000D707C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1000D64E8()
{
  sub_1000D7178();
  sub_1000D7130(v0, v1);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000D6590()
{
  swift_getKeyPath();
  sub_1000D7178();
  sub_1000D7130(v1, v2);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC11SupportFlow20RemoteAlertViewModel__isPresented);
}

uint64_t sub_1000D6628@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1000D6590();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1000D6680(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC11SupportFlow20RemoteAlertViewModel__isPresented) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC11SupportFlow20RemoteAlertViewModel__isPresented) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000D64E8();
  }

  return result;
}

uint64_t sub_1000D6730(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v15 - v9;
  v11 = OBJC_IVAR____TtC11SupportFlow20RemoteAlertViewModel__flowIdentifier;
  v12 = type metadata accessor for SupportFlowIdentifier();
  sub_100003CE8(v3 + v11, 1, 1, v12);
  *(v3 + OBJC_IVAR____TtC11SupportFlow20RemoteAlertViewModel__isPresented) = 0;
  ObservationRegistrar.init()();
  *(v3 + 16) = a1;
  sub_10002AE78(a2, v10);
  v13 = a1;
  sub_1000D6028(v10);
  sub_1000D6680(a3);

  sub_100044F98(a2, &unk_10018A300, &unk_1001241E0);
  return v3;
}

uint64_t sub_1000D6848()
{
  sub_100044F98(v0 + OBJC_IVAR____TtC11SupportFlow20RemoteAlertViewModel__flowIdentifier, &unk_10018A300, &unk_1001241E0);
  v1 = OBJC_IVAR____TtC11SupportFlow20RemoteAlertViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  sub_10000C31C(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1000D68C4()
{
  sub_1000D6848();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for RemoteAlertViewModel()
{
  result = qword_100190E00;
  if (!qword_100190E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000D6970()
{
  sub_10000E8D0();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1000D6A50(char *a1)
{
  v2 = type metadata accessor for ClientFlowPresentationState();
  v3 = sub_100008780(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v3);
  v72 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v75 = &v65 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v65 - v13;
  __chkstk_darwin(v12);
  v16 = &v65 - v15;
  v74 = type metadata accessor for Logger();
  v17 = sub_100008780(v74);
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v17);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v65 - v25;
  static Logger.supportFlowUI.getter();
  v73 = v5;
  v27 = *(v5 + 16);
  v71 = a1;
  v76 = v27;
  v27(v16, a1, v2);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  v30 = os_log_type_enabled(v28, v29);
  v69 = v24;
  v67 = v14;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v70 = v19;
    v32 = v31;
    v66 = swift_slowAlloc();
    v77 = v66;
    *v32 = 136315138;
    v76(v14, v16, v2);
    v33 = String.init<A>(describing:)();
    v35 = v34;
    v36 = v73;
    v37 = sub_1000D7190(v73);
    v38(v37);
    v39 = sub_10009CACC(v33, v35, &v77);
    v40 = v74;

    *(v32 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v28, v29, "flow state has changed to %s", v32, 0xCu);
    sub_1000086BC(v66);
    sub_100008744();
    v19 = v70;
    sub_100008744();

    v41 = v40;
    v42 = *(v19 + 8);
    v42(v26, v41);
    v43 = v36;
  }

  else
  {

    v43 = v73;
    v44 = sub_1000D7190(v73);
    v45(v44);
    v42 = *(v19 + 8);
    v42(v26, v74);
  }

  v46 = v75;
  v47 = v71;
  v48 = v76;
  v76(v75, v71, v2);
  result = (*(v43 + 88))(v46, v2);
  v50 = v72;
  if (result == enum case for ClientFlowPresentationState.success(_:) || result == enum case for ClientFlowPresentationState.failure(_:))
  {
    return sub_1000D6680(0);
  }

  if (result != enum case for ClientFlowPresentationState.unknown(_:) && result != enum case for ClientFlowPresentationState.loading(_:) && result != enum case for ClientFlowPresentationState.loaded(_:))
  {
    if (result == enum case for ClientFlowPresentationState.cancelled(_:))
    {
      return sub_1000D6680(0);
    }

    v70 = v19;
    v53 = v69;
    static Logger.supportFlowUI.getter();
    v48(v50, v47, v2);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = v42;
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v77 = v58;
      *v57 = 136315138;
      v48(v67, v50, v2);
      v59 = String.init<A>(describing:)();
      v60 = v50;
      v62 = v61;
      v63 = v68;
      v68(v60, v2);
      v64 = sub_10009CACC(v59, v62, &v77);

      *(v57 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v54, v55, "Unknown flow state encountered: %s", v57, 0xCu);
      sub_1000086BC(v58);
      sub_100008744();
      sub_100008744();

      v56(v69, v74);
    }

    else
    {

      v63 = v68;
      v68(v50, v2);
      v42(v53, v74);
    }

    return v63(v75, v2);
  }

  return result;
}

uint64_t sub_1000D700C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1000D6590();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1000D707C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D7130(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000D7190@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  *(v2 - 168) = *(a1 + 8);
  return result;
}

uint64_t sub_1000D71A4()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1001A5818 = result;
  unk_1001A5820 = v5;
  return result;
}

uint64_t sub_1000D72C4()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1001A5828 = result;
  unk_1001A5830 = v5;
  return result;
}

uint64_t sub_1000D73E4(char a1)
{
  v1 = a1;
  result = *&aWallet[8 * a1];
  v3 = qword_10012EB58[v1];
  return result;
}

unint64_t sub_1000D7404(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100175B00, v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000D7450(char a1)
{
  result = 21825;
  switch(a1)
  {
    case 1:
      result = 1094939238;
      break;
    case 2:
      result = 16707;
      break;
    case 3:
      result = 18499;
      break;
    case 4:
      result = 20035;
      break;
    case 5:
      result = 17732;
      break;
    case 6:
      result = 21317;
      break;
    case 7:
      result = 16967;
      break;
    case 8:
      result = 17737;
      break;
    case 9:
      result = 20041;
      break;
    case 10:
      result = 21577;
      break;
    case 11:
      result = 22605;
      break;
    case 12:
      result = 23118;
      break;
    case 13:
      result = 18259;
      break;
    case 14:
      result = 21333;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000D7558@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D7404(*a1);
  *a2 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for WalletServiceProvider(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
        JUMPOUT(0x1000D7654);
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000D768C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000D7450(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000D76BC()
{
  result = qword_100190EA8;
  if (!qword_100190EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190EA8);
  }

  return result;
}

__n128 sub_1000D7760(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1000D7774(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000D77B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000D7828@<X0>(uint64_t a1@<X8>)
{
  sub_100003768(&qword_100190EB0, &qword_10012ED08);
  type metadata accessor for WelcomeView();
  sub_100004D48(&qword_100190EB8, &qword_10012ED10);
  sub_1000D8690();
  sub_100004D48(&qword_100190EC0, &qword_10012ED18);
  sub_1000D86E8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  NavigationStack.init<>(root:)();
  if (qword_1001881D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1001A5758;
  KeyPath = swift_getKeyPath();
  v4 = (a1 + *(sub_100003768(&qword_100190EE0, &qword_10012ED58) + 36));
  *v4 = KeyPath;
  v4[1] = v2;
}

uint64_t sub_1000D79BC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for WelcomeView();
  v13 = *(v29 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v29);
  v28 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v30 = a3;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    v27 = v8;
    v17 = v16;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v9 + 8))(v12, v27);
  }

  v32 = &type metadata for SupportFlowWelcomeContent;
  v33 = sub_1000961EC();
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  v19 = a2 & 1;
  *(v18 + 24) = a2 & 1;
  *(v18 + 32) = a3;
  v20 = a4 & 1;
  *(v18 + 40) = v20;

  j__swift_retain();
  v21 = v28;
  v22 = WelcomeView.init(content:actionHandler:)();
  __chkstk_darwin(v22);
  *(&v27 - 4) = a1;
  *(&v27 - 24) = v19;
  *(&v27 - 2) = a3;
  *(&v27 - 8) = v20;
  sub_100003768(&qword_100190EB8, &qword_10012ED10);
  sub_1000D8690();
  v23 = sub_100004D48(&qword_100190EC0, &qword_10012ED18);
  v24 = sub_1000D86E8();
  v30 = v23;
  v31 = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v29;
  View.toolbar<A>(content:)();
  return (*(v13 + 8))(v21, v25);
}

uint64_t sub_1000D7D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a5 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v6);
  }

  sub_10009386C();
}

uint64_t sub_1000D7E74@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v5 = sub_100003768(&qword_100190EE8, &qword_10012ED60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v33 - v8;
  v10 = type metadata accessor for ToolbarItemPlacement();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_100003768(&qword_100190ED0, &qword_10012ED20);
  v38 = *(v12 - 8);
  v13 = *(v38 + 64);
  __chkstk_darwin(v12);
  v37 = &v33 - v14;
  v15 = type metadata accessor for EnvironmentValues();
  v35 = *(v15 - 8);
  v36 = v15;
  v16 = *(v35 + 64);
  __chkstk_darwin(v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100003768(&qword_100190EC0, &qword_10012ED18);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  v39 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v33 - v23;

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    v34 = v24;
    v26 = v25;
    os_log(_:dso:log:_:_:)();

    v24 = v34;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v35 + 8))(v18, v36);
    a1 = v41;
  }

  if (a1)
  {
    static ToolbarItemPlacement.topBarTrailing.getter();
    sub_100003768(&qword_100190EF0, &qword_10012ED68);
    sub_1000D8A90();
    v27 = v37;
    ToolbarItem<>.init(placement:content:)();
    v28 = sub_10000AAEC(&qword_100190ED8, &qword_100190ED0, &qword_10012ED20);
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v29 = v39;
    (*(v6 + 16))(v39, v9, v5);
    sub_100003CE8(v29, 0, 1, v5);
    v41 = v12;
    v42 = v28;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();

    sub_1000D8A20(v29);
    (*(v6 + 8))(v9, v5);
    (*(v38 + 8))(v27, v12);
  }

  else
  {
    v30 = v39;
    sub_100003CE8(v39, 1, 1, v5);
    v31 = sub_10000AAEC(&qword_100190ED8, &qword_100190ED0, &qword_10012ED20);
    v41 = v12;
    v42 = v31;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000D8A20(v30);
  }

  sub_1000D86E8();
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return sub_1000D8A20(v24);
}

uint64_t sub_1000D83C0@<X0>(uint64_t a1@<X8>)
{

  sub_100003768(&qword_10018B328, &unk_100125A30);
  sub_100045D24();
  Button.init(action:label:)();
  static Color.primary.getter();
  Color._adaptive.getter();

  KeyPath = swift_getKeyPath();
  v3 = AnyShapeStyle.init<A>(_:)();
  result = sub_100003768(&qword_100190EF0, &qword_10012ED68);
  v5 = (a1 + *(result + 36));
  *v5 = KeyPath;
  v5[1] = v3;
  return result;
}

uint64_t sub_1000D84BC()
{
  v0 = type metadata accessor for ClientFlowPresentationState();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ClientFlowPresentationState.cancelled(_:));
  return SupportFlowSceneHostingClientManager.flowState.setter();
}

uint64_t sub_1000D8580@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(systemName:)();
  v3 = (a1 + *(sub_100003768(&qword_10018B328, &unk_100125A30) + 36));
  v4 = *(sub_100003768(&qword_10018ACB0, &qword_100125420) + 28);
  v5 = enum case for Image.Scale.large(_:);
  v6 = type metadata accessor for Image.Scale();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  result = swift_getKeyPath();
  *v3 = result;
  *a1 = v2;
  return result;
}

uint64_t sub_1000D8658@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[2];
  v6 = *(v1 + 8);
  v5 = *(v1 + 24);
  return sub_1000D7828(a1);
}

unint64_t sub_1000D8690()
{
  result = qword_10018B2B0;
  if (!qword_10018B2B0)
  {
    type metadata accessor for WelcomeView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B2B0);
  }

  return result;
}

unint64_t sub_1000D86E8()
{
  result = qword_100190EC8;
  if (!qword_100190EC8)
  {
    sub_100004D48(&qword_100190EC0, &qword_10012ED18);
    sub_100004D48(&qword_100190ED0, &qword_10012ED20);
    sub_10000AAEC(&qword_100190ED8, &qword_100190ED0, &qword_10012ED20);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190EC8);
  }

  return result;
}

uint64_t sub_1000D8800(uint64_t a1)
{
  v2 = type metadata accessor for Image.Scale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.imageScale.setter();
}

uint64_t sub_1000D88C8(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tint.setter();
}

uint64_t sub_1000D88F4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000D8920@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000D894C(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tintColor.setter();
}

uint64_t sub_1000D897C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  j__swift_release();
  v3 = *(v0 + 32);

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1000D89F8(uint64_t (*a1)(void))
{
  v2 = *(v1 + 32);
  v5 = *(v1 + 24);
  v4 = *(v1 + 40);
  return a1(*(v1 + 16));
}

uint64_t sub_1000D8A20(uint64_t a1)
{
  v2 = sub_100003768(&qword_100190EC0, &qword_10012ED18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000D8A90()
{
  result = qword_100190EF8;
  if (!qword_100190EF8)
  {
    sub_100004D48(&qword_100190EF0, &qword_10012ED68);
    sub_10000AAEC(&qword_10018B320, &qword_10018B318, &unk_10012ED70);
    sub_10000AAEC(&qword_10018F2C0, &qword_10018F2B0, &qword_10012C290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190EF8);
  }

  return result;
}

uint64_t sub_1000D8B7C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1000D8BD8()
{
  result = qword_100190F00;
  if (!qword_100190F00)
  {
    sub_100004D48(&qword_100190EE0, &qword_10012ED58);
    sub_10000AAEC(&qword_100190F08, &qword_100190F10, &unk_10012EDE0);
    sub_10000AAEC(&qword_1001895D0, &qword_1001895D8, &qword_10012F6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190F00);
  }

  return result;
}

BOOL sub_1000D8CBC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100176FF8, v2);

  return v3 != 0;
}

BOOL sub_1000D8D10@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D8CBC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000D8D60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000E7418();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000D8D88()
{
  if (qword_1001882B0 != -1)
  {
    swift_once();
  }

  v0 = qword_100190F18;
  v1 = unk_100190F20;
  v4 = &type metadata for BatteryActionInfoType;
  v5 = sub_1000D8F3C();

  return sub_1000ED3F8(v0, v1, 0xD000000000000018, 0x8000000100136CE0, v3);
}

uint64_t sub_1000D8E34()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_100190F18 = result;
  unk_100190F20 = v5;
  return result;
}

unint64_t sub_1000D8F3C()
{
  result = qword_100190F28;
  if (!qword_100190F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190F28);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BatteryActionInfoType(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1000D902CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000D9064(uint64_t a1)
{
  result = sub_1000D8F3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000D9090()
{
  result = qword_100190F30;
  if (!qword_100190F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190F30);
  }

  return result;
}

unint64_t sub_1000D90E4(uint64_t a1)
{
  result = sub_1000D910C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000D910C()
{
  result = qword_100190F38;
  if (!qword_100190F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190F38);
  }

  return result;
}

uint64_t sub_1000D918C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 40) = &type metadata for SoftwareUpdateStepProvider;
  *(a4 + 48) = sub_100057DB0();
  *(a4 + 16) = a3;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0;
}

uint64_t sub_1000D9238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v12 = &type metadata for CompromisedAccountStepProvider;
  v13 = sub_100010248();
  v11[0] = a3;
  type metadata accessor for SharedResetPasswordViewModel();
  *(swift_allocObject() + 16) = 0;

  State.init(wrappedValue:)();
  *a4 = v9;
  *(a4 + 8) = v10;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0;
  *(a4 + 32) = 0u;
  result = sub_10000B18C(v11, a4 + 32);
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  return result;
}

uint64_t sub_1000D9318()
{
  sub_10009C13C(v0 + 14);
  memcpy(v0 + 2, v0 + 14, 0x5BuLL);
  if (qword_1001881E0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[31] = sub_10000C2D4(v1, qword_1001A5760);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    *swift_slowAlloc() = 0;
    sub_10004F550(&_mh_execute_header, v4, v5, "*** Wi-Fi data loaded.");
  }

  v6 = swift_task_alloc();
  v0[32] = v6;
  *v6 = v0;
  v6[1] = sub_1000D9470;

  return static VPNDiagnosticsDataProvider.provideData()();
}

uint64_t sub_1000D9470(uint64_t a1, __int16 a2)
{
  v4 = *v3;
  v5 = *v3;
  *(v5 + 232) = v2;
  *(v5 + 224) = a2;
  *(v5 + 208) = v3;
  *(v5 + 216) = a1;
  v6 = *(v4 + 256);
  v9 = *v3;
  *(v5 + 264) = v2;

  if (v2)
  {
    v7 = sub_1000D969C;
  }

  else
  {
    v7 = sub_1000D9590;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000D9590()
{
  v12 = v0;
  v1 = *(v0 + 248);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    *swift_slowAlloc() = 0;
    sub_10004F550(&_mh_execute_header, v4, v5, "*** Wi-Fi VPN data loaded.");
  }

  v6 = *(v0 + 216);
  v7 = *(v0 + 224);
  v8 = *(v0 + 240);

  memcpy(v11, (v0 + 16), 0x5BuLL);
  memcpy(v8, v11, 0x60uLL);
  *(v8 + 96) = v6;
  *(v8 + 104) = v7 & 1;
  *(v8 + 105) = HIBYTE(v7) & 1;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000D969C()
{
  sub_10009D2E8(v0 + 112);
  v1 = *(v0 + 8);
  v2 = *(v0 + 264);

  return v1();
}

BOOL static WiFiDiagnosticsReport.__derived_struct_equals(_:_:)(uint64_t *__src, uint64_t a2)
{
  memcpy(__dst, __src, 0x5BuLL);
  memcpy(v11, a2, 0x5BuLL);
  result = 0;
  if (static WiFiDiagnosticsData.__derived_struct_equals(_:_:)(__dst, v11))
  {
    v4 = __src[12];
    v5 = *(__src + 104);
    v6 = *(__src + 105);
    v7 = *(a2 + 96);
    v8 = *(a2 + 104);
    v9 = *(a2 + 105);
    if ((sub_10004C210(v4, v7) & 1) != 0 && ((v5 ^ v8) & 1) == 0 && ((v6 ^ v9) & 1) == 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1000D97A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 106))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 96);
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

uint64_t sub_1000D97E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 106) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 106) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1000D9888@<D0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{

  v6 = sub_1000D9900();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = v6;
  result = 0.0;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  return result;
}

id *sub_1000D9900()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v4 = String.init(localized:table:bundle:locale:comment:)();
  v6 = v5;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v7 = String.init(localized:table:bundle:locale:comment:)();
  sub_1000D9EA0(v4, v6, v7, v8, 1);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  v11 = v10;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v12 = String.init(localized:table:bundle:locale:comment:)();
  sub_1000D9EA0(v9, v11, v12, v13, 5);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v16 = v15;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17 = String.init(localized:table:bundle:locale:comment:)();
  sub_1000D9EA0(v14, v16, v17, v18, 4);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19 = String.init(localized:table:bundle:locale:comment:)();
  v21 = v20;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v22 = String.init(localized:table:bundle:locale:comment:)();
  sub_1000D9EA0(v19, v21, v22, v23, 6);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000D9EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v31 = a3;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003768(&qword_1001889F0, &qword_100121D20);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v30 - v16;
  v18 = type metadata accessor for FlowImage();
  sub_100003CE8(v17, 1, 1, v18);
  UUID.init()();
  v19 = UUID.uuidString.getter();
  v21 = v20;
  (*(v10 + 8))(v13, v9);
  v22 = type metadata accessor for OptionInfoItem();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  v26 = v25 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_nextStep;
  *(v25 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_nextStep + 24) = &type metadata for DisabledAccountStepProvider;
  *(v26 + 32) = sub_1000219CC();
  *v26 = a5;
  v27 = (v25 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_onSelected);
  *v27 = 0;
  v27[1] = 0;
  v28 = sub_1000EBC54(v19, v21, v17, a1, a2, v31, a4);

  return v28;
}

double sub_1000DA090@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  return sub_1000D9888(v1[2], v1[3], a1);
}

uint64_t sub_1000DA0A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1000DA0E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000DA160()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 8);
  v6 = *v0;
  v11 = *v0;
  v7 = v12;

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001D724(&v11, &qword_100190F40, &unk_10012F2A8);
    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_1000DA2BC()
{
  v14 = *(v0 + 32);

  memset(&v6[1], 0, 32);
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = sub_1000DA490();
  v11 = 0;
  v12 = 0;
  v13 = *(v0 + 16);
  v5 = *(v0 + 16);
  v6[0] = v14;
  sub_100003768(&qword_100189B68, &qword_1001239F0);
  State.projectedValue.getter();
  *&v5 = *v0;
  BYTE8(v5) = *(v0 + 8);
  v1 = swift_allocObject();
  v2 = *(v0 + 16);
  v1[1] = *v0;
  v1[2] = v2;
  v1[3] = *(v0 + 32);
  sub_10004010C(&v14, &v4);
  sub_100006578(&v5, &v4, &qword_100190F40, &unk_10012F2A8);
  sub_100006578(&v13, &v4, &qword_100189B68, &qword_1001239F0);
  sub_100003768(&unk_1001893B0, &unk_100121480);
  type metadata accessor for AppleAccountSignInView(0);
  sub_100004CE4();
  sub_1000BC598();
  View.sheet<A>(isPresented:onDismiss:content:)();

  return sub_10001D724(v6, &unk_1001893B0, &unk_100121480);
}

uint64_t sub_1000DA490()
{
  v1 = type metadata accessor for ActionInfoType(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for ActionInfo(0);
  *v4 = 0;
  swift_storeEnumTagMultiPayload();
  v12 = *v0;
  v13 = *(v0 + 8);
  v5 = *(v0 + 1);
  v10 = *(v0 + 2);
  v11 = v5;
  v6 = swift_allocObject();
  v7 = *(v0 + 1);
  v6[1] = *v0;
  v6[2] = v7;
  v6[3] = *(v0 + 2);
  sub_100006578(&v12, v9, &qword_100190F40, &unk_10012F2A8);
  sub_100006578(&v11, v9, &qword_100189B68, &qword_1001239F0);
  sub_10004010C(&v10, v9);
  return sub_1000ED69C(v4, 1, sub_1000DA900, v6);
}

uint64_t sub_1000DA5D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v12 = *a1;
  v13 = *(a1 + 8);
  v4 = *(a1 + 1);
  v10 = *(a1 + 2);
  v11 = v4;
  v5 = swift_allocObject();
  v6 = *(a1 + 1);
  *(v5 + 1) = *a1;
  *(v5 + 2) = v6;
  *(v5 + 3) = *(a1 + 2);
  *a2 = swift_getKeyPath();
  sub_100003768(&qword_10018B310, &qword_10012A550);
  swift_storeEnumTagMultiPayload();
  v7 = (a2 + *(type metadata accessor for AppleAccountSignInView(0) + 20));
  *v7 = sub_1000DA8AC;
  v7[1] = v5;
  sub_100006578(&v12, v9, &qword_100190F40, &unk_10012F2A8);
  sub_100006578(&v11, v9, &qword_100189B68, &qword_1001239F0);
  return sub_10004010C(&v10, v9);
}

id sub_1000DA6E4()
{
  v0 = sub_1000DA160();
  v1 = *(v0 + *(*v0 + 136));

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v3 = result;
    v4 = [result aa_primaryAppleAccount];

    sub_100089A64(v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000DA7A0(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2[1] = *(a1 + 16);
  v4 = *(&v3 + 1);
  sub_100006578(&v4, v2, qword_10018FD68, &unk_10012F2F0);
  sub_100003768(&qword_100189B68, &qword_1001239F0);
  State.wrappedValue.getter();
  v2[0] = v3;
  State.wrappedValue.setter();
  return sub_10001D724(&v3, &qword_100189B68, &qword_1001239F0);
}

uint64_t sub_1000DA864()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_1000DA2BC();
}

uint64_t sub_1000DA8B8()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000DA908()
{
  sub_100004D48(&unk_1001893B0, &unk_100121480);
  type metadata accessor for AppleAccountSignInView(255);
  sub_100004CE4();
  sub_1000BC598();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000DA9C0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PlacardInfoItemType(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = __chkstk_darwin(v9);
  v14 = &v26[-v13 - 8];
  __chkstk_darwin(v12);
  v16 = &v26[-v15 - 8];
  swift_storeEnumTagMultiPayload();
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  sub_100003768(&qword_1001890A0, &qword_1001224B0);
  v17 = *(v7 + 72);
  v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100121620;
  sub_10001029C(v16, v19 + v18);
  sub_10000B4E0(v27, v26);
  v25 = _swiftEmptyArrayStorage;

  specialized ContiguousArray.reserveCapacity(_:)();
  type metadata accessor for PlacardInfoItem(0);
  sub_10001029C(v19 + v18, v14);
  swift_setDeallocating();
  sub_10006EB7C();
  sub_10001029C(v14, v11);
  sub_1000EFDB8(v11, 0, 0);
  sub_100010300(v14);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v20 = v25[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v21 = v25;
  sub_10000B4E0(v26, a3 + 40);
  type metadata accessor for FlowViewDataProvider(0);
  sub_10000B550();
  v22 = Environment.init<A>(_:)();
  LOBYTE(v20) = v23;
  sub_10001035C(v26);
  sub_10001035C(v27);
  result = sub_100010300(v16);
  *a3 = v22;
  *(a3 + 8) = v20 & 1;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 32) = v21;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  return result;
}

uint64_t sub_1000DAC54()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1001A5838 = result;
  unk_1001A5840 = v5;
  return result;
}

uint64_t sub_1000DAD74()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1001A5848 = result;
  unk_1001A5850 = v5;
  return result;
}

uint64_t sub_1000DAE94(char a1)
{
  v1 = a1;
  result = qword_10012F4C8[a1];
  v3 = qword_10012F540[v1];
  return result;
}

unint64_t sub_1000DAEB4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001757F0, v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000DAF00(char a1)
{
  result = 21825;
  switch(a1)
  {
    case 1:
      result = 1094939238;
      break;
    case 2:
      result = 16707;
      break;
    case 3:
      result = 18499;
      break;
    case 4:
      result = 20035;
      break;
    case 5:
      result = 17732;
      break;
    case 6:
      result = 21317;
      break;
    case 7:
      result = 16967;
      break;
    case 8:
      result = 17737;
      break;
    case 9:
      result = 20041;
      break;
    case 10:
      result = 21577;
      break;
    case 11:
      result = 22605;
      break;
    case 12:
      result = 23118;
      break;
    case 13:
      result = 18259;
      break;
    case 14:
      result = 21333;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000DB008@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000DAEB4(*a1);
  *a2 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MailServiceProvider(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
        JUMPOUT(0x1000DB104);
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000DB13C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000DAF00(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000DB16C()
{
  result = qword_100190F48;
  if (!qword_100190F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190F48);
  }

  return result;
}

uint64_t sub_1000DB224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = sub_100003768(&qword_10018C140, &unk_100127320);
    v10 = a1 + *(a3 + 28);

    return sub_10000E5F0(v10, a2, v9);
  }
}

uint64_t sub_1000DB2D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_100003768(&qword_10018C140, &unk_100127320);
    v8 = v5 + *(a4 + 28);

    return sub_100003CE8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for FlowProgressView()
{
  result = qword_100190FA8;
  if (!qword_100190FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000DB3B0()
{
  sub_1000DB494(319, &qword_100188F68, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1000DB494(319, &qword_100189478, &type metadata for CGFloat, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_10005D314();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000DB494(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1000DB500@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v87 = a1;
  v4 = type metadata accessor for FlowProgressView();
  v5 = sub_100046168(v4);
  v86 = v6;
  v85 = *(v7 + 64);
  __chkstk_darwin(v5);
  v84 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccessibilityChildBehavior();
  v10 = sub_1000DCE20(v9, &v89);
  v75 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_100003768(&qword_100190FE8, &qword_10012F628);
  sub_10000AF7C(v73);
  v17 = *(v16 + 64);
  sub_10000ED78();
  __chkstk_darwin(v18);
  v20 = &v71 - v19;
  v21 = sub_100003768(&qword_100190FF0, &qword_10012F630);
  sub_1000DCE20(v21, &v90);
  v80 = v22;
  v24 = *(v23 + 64);
  sub_10000ED78();
  __chkstk_darwin(v25);
  v27 = &v71 - v26;
  v28 = (sub_100003768(&qword_100190FF8, &qword_10012F638) - 8);
  v29 = *(*v28 + 64);
  sub_10000ED78();
  __chkstk_darwin(v30);
  sub_10003DC84();
  v71 = v31;
  v32 = sub_100003768(&qword_100191000, &qword_10012F640);
  v33 = *(v32 - 8);
  v74 = v32 - 8;
  v34 = *(v33 + 64);
  sub_10000ED78();
  __chkstk_darwin(v35);
  sub_10003DC84();
  v79 = v36;
  v37 = sub_100003768(&qword_100191008, &qword_10012F648);
  v38 = *(v37 - 8);
  v83 = v37 - 8;
  v39 = *(v38 + 64);
  sub_10000ED78();
  __chkstk_darwin(v40);
  sub_10003DC84();
  v82 = v41;
  v42 = sub_100003768(&qword_100191010, &qword_10012F650);
  v43 = *(v42 - 8);
  v78 = v42 - 8;
  v44 = *(v43 + 64);
  sub_10000ED78();
  __chkstk_darwin(v45);
  sub_10003DC84();
  v81 = v46;
  *v20 = static HorizontalAlignment.center.getter();
  *(v20 + 1) = 0x4034000000000000;
  v20[16] = 0;
  v47 = &v20[*(sub_100003768(&qword_100191018, &qword_10012F658) + 44)];
  v72 = v3;
  sub_1000DBBA0(v3, v47);
  static AccessibilityChildBehavior.combine.getter();
  v48 = sub_10000AAEC(&qword_100191020, &qword_100190FE8, &qword_10012F628);
  v49 = v73;
  View.accessibilityElement(children:)();
  (*(v75 + 8))(v15, v76);
  sub_10000ABCC(v20, &qword_100190FE8, &qword_10012F628);
  v50 = *(v1 + 36);
  sub_100003768(&qword_10018C140, &unk_100127320);
  AccessibilityFocusState.projectedValue.getter();
  __src[0] = v49;
  __src[1] = v48;
  swift_getOpaqueTypeConformance2();
  v51 = v71;
  v52 = v77;
  View.accessibilityFocused(_:)();

  (*(v80 + 8))(v27, v52);
  v53 = static Edge.Set.horizontal.getter();
  v54 = v51 + v28[11];
  *v54 = v53;
  *(v54 + 8) = 0u;
  *(v54 + 24) = 0u;
  *(v54 + 40) = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v55 = v51;
  v56 = v79;
  sub_10002CE6C(v55, v79, &qword_100190FF8, &qword_10012F638);
  memcpy((v56 + *(v74 + 44)), __src, 0x70uLL);
  v57 = [objc_opt_self() systemGroupedBackgroundColor];
  v58 = Color.init(_:)();
  LOBYTE(v20) = static Edge.Set.all.getter();
  v59 = v56;
  v60 = v82;
  sub_10002CE6C(v59, v82, &qword_100191000, &qword_10012F640);
  v61 = v60 + *(v83 + 44);
  *v61 = v58;
  *(v61 + 8) = v20;
  LOBYTE(v58) = static Edge.Set.top.getter();
  v62 = static SafeAreaRegions.all.getter();
  v63 = v81;
  sub_10002CE6C(v60, v81, &qword_100191008, &qword_10012F648);
  v64 = v63 + *(v78 + 44);
  *v64 = v62;
  *(v64 + 8) = v58;
  v65 = v84;
  sub_10002F15C(v72, v84);
  v66 = (*(v86 + 80) + 16) & ~*(v86 + 80);
  v67 = swift_allocObject();
  sub_1000DC56C(v65, v67 + v66);
  v68 = v87;
  sub_10002CE6C(v63, v87, &qword_100191010, &qword_10012F650);
  result = sub_100003768(&qword_100191028, &qword_10012F660);
  v70 = (v68 + *(result + 36));
  *v70 = sub_1000DC5D0;
  v70[1] = v67;
  v70[2] = 0;
  v70[3] = 0;
  return result;
}

uint64_t sub_1000DBBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v36 = a2;
  v2 = type metadata accessor for FlowProgressView();
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_100003768(&qword_100191030, &qword_10012F668);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v33 - v6;
  v8 = sub_100003768(&qword_100191038, &qword_10012F670);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  v11 = __chkstk_darwin(v8);
  v35 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v33 - v13;
  ProgressView<>.init<>()();
  v15 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();
  v17 = &v7[*(sub_100003768(&qword_100191040, &qword_10012F6A8) + 36)];
  *v17 = KeyPath;
  v17[1] = v15;
  v18 = &v7[*(v4 + 36)];
  v19 = *(sub_100003768(&qword_10018F2A8, &qword_10012F6B0) + 28);
  v20 = enum case for ControlSize.large(_:);
  v21 = type metadata accessor for ControlSize();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = swift_getKeyPath();
  sub_1000DC728();
  View.accessibilityHidden(_:)();
  sub_10000ABCC(v7, &qword_100191030, &qword_10012F668);
  v22 = v34;
  sub_10002F15C(v34, &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v24 = swift_allocObject();
  sub_1000DC56C(&v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  v25 = &v14[*(v9 + 44)];
  *v25 = sub_10003B0F8;
  *(v25 + 1) = 0;
  *(v25 + 2) = sub_1000DC9EC;
  *(v25 + 3) = v24;
  if (v22[1] || v22[3])
  {
    v26 = static HorizontalAlignment.center.getter();
    v38 = 0;
    sub_1000DC0C8(v22, v42);
    memcpy(v39, v42, 0xB0uLL);
    memcpy(v40, v42, 0xB0uLL);
    sub_10002BE60(v39, v41, &qword_100191068, &unk_10012F708);
    sub_10000ABCC(v40, &qword_100191068, &unk_10012F708);
    memcpy(&v37[7], v39, 0xB0uLL);
    v27 = v38;
    v28 = static Edge.Set.horizontal.getter();
    v41[0] = v26;
    v41[1] = 0;
    LOBYTE(v41[2]) = v27;
    memcpy(&v41[2] + 1, v37, 0xB7uLL);
    LOBYTE(v41[25]) = v28;
    memset(&v41[26], 0, 32);
    LOBYTE(v41[30]) = 1;
    nullsub_1(v41);
    memcpy(v42, v41, 0xF1uLL);
  }

  else
  {
    sub_1000DCA5C(v42);
  }

  v29 = v35;
  sub_10002BE60(v14, v35, &qword_100191038, &qword_10012F670);
  memcpy(v39, v42, 0xF1uLL);
  v30 = v36;
  sub_10002BE60(v29, v36, &qword_100191038, &qword_10012F670);
  v31 = *(sub_100003768(&qword_100191058, &qword_10012F6F8) + 48);
  memcpy(v40, v39, 0xF1uLL);
  memcpy((v30 + v31), v39, 0xF1uLL);
  sub_10002BE60(v40, v41, &qword_100191060, &qword_10012F700);
  sub_10000ABCC(v14, &qword_100191038, &qword_10012F670);
  memcpy(v41, v39, 0xF1uLL);
  sub_10000ABCC(v41, &qword_100191060, &qword_10012F700);
  return sub_10000ABCC(v29, &qword_100191038, &qword_10012F670);
}

uint64_t sub_1000DC06C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  sub_100003768(&qword_100189560, &qword_1001251F0);
  return State.wrappedValue.setter();
}

uint64_t sub_1000DC0C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v60 = a1;
  if (v3)
  {
    v64 = *a1;
    v65 = v3;
    sub_10000AC24();

    v4 = Text.init<A>(_:)();
    v6 = v5;
    v8 = v7;
    static Font.title2.getter();
    v9 = Text.font(_:)();
    v11 = v10;
    v13 = v12;

    sub_10000AC78(v4, v6, v8 & 1);

    static Font.Weight.bold.getter();
    v14 = Text.fontWeight(_:)();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    sub_10000AC78(v9, v11, v13 & 1);

    v58 = v16;
    v59 = v14;
    v56 = v18 & 1;
    sub_100017564(v14, v16, v18 & 1);
    v57 = v20;

    a1 = v60;
  }

  else
  {
    v58 = 0;
    v59 = 0;
    v56 = 0;
    v57 = 0;
  }

  v21 = a1[3];
  if (v21)
  {
    v64 = a1[2];
    v65 = v21;
    sub_10000AC24();

    v22 = Text.init<A>(_:)();
    v24 = v23;
    v26 = v25;
    static Font.subheadline.getter();
    v27 = Text.font(_:)();
    v29 = v28;
    v31 = v30;

    sub_10000AC78(v22, v24, v26 & 1);

    LODWORD(v64) = static HierarchicalShapeStyle.secondary.getter();
    v32 = Text.foregroundStyle<A>(_:)();
    v54 = v33;
    v55 = v32;
    LOBYTE(v22) = v34;
    v53 = v35;
    sub_10000AC78(v27, v29, v31 & 1);

    LOBYTE(v45) = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    a1 = v60;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    LOBYTE(v64) = v22 & 1;
    __dst[0] = 0;
    v44 = v22 & 1;
    v45 = v45;
  }

  else
  {
    v54 = 0;
    v55 = 0;
    v53 = 0;
    v45 = 0;
    v44 = 0;
    v37 = 0;
    v39 = 0;
    v41 = 0;
    v43 = 0;
  }

  v46 = a1[5];
  v64 = a1[4];
  v65 = v46;
  sub_100003768(&qword_100189560, &qword_1001251F0);
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v61 = v74;
  v47 = v75;
  v48 = v77;
  v51 = v78;
  v52 = v76;
  v50 = v79;
  __src[0] = v55;
  __src[1] = v54;
  __src[2] = v44;
  __src[3] = v53;
  __src[4] = v45;
  __src[5] = v37;
  __src[6] = v39;
  __src[7] = v41;
  __src[8] = v43;
  LOBYTE(__src[9]) = 0;
  memcpy(__dst, __src, 0x49uLL);
  sub_100033128(v59, v58, v56, v57);
  sub_10002BE60(__src, &v64, &qword_100191070, &qword_10012F718);
  sub_10003316C(v59, v58, v56, v57);
  *a2 = v59;
  *(a2 + 8) = v58;
  *(a2 + 16) = v56;
  *(a2 + 24) = v57;
  memcpy((a2 + 32), __dst, 0x49uLL);
  *(a2 + 112) = 0;
  *(a2 + 120) = 1;
  *(a2 + 128) = v61;
  *(a2 + 136) = v47;
  *(a2 + 144) = v52;
  *(a2 + 152) = v48;
  *(a2 + 160) = v51;
  *(a2 + 168) = v50;
  v64 = v55;
  v65 = v54;
  v66 = v44;
  v67 = v53;
  v68 = v45;
  v69 = v37;
  v70 = v39;
  v71 = v41;
  v72 = v43;
  v73 = 0;
  sub_10000ABCC(&v64, &qword_100191070, &qword_10012F718);
  return sub_10003316C(v59, v58, v56, v57);
}

uint64_t sub_1000DC504()
{
  v0 = *(type metadata accessor for FlowProgressView() + 28);
  sub_100003768(&qword_10018C140, &unk_100127320);
  return AccessibilityFocusState.wrappedValue.setter();
}

uint64_t sub_1000DC56C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowProgressView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DC5D0()
{
  v0 = *(*(type metadata accessor for FlowProgressView() - 8) + 80);

  return sub_1000DC504();
}

uint64_t sub_1000DC630(uint64_t a1)
{
  v2 = type metadata accessor for ControlSize();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.controlSize.setter();
}

unint64_t sub_1000DC728()
{
  result = qword_100191048;
  if (!qword_100191048)
  {
    sub_100004D48(&qword_100191030, &qword_10012F668);
    sub_1000DC7E0();
    sub_10000AAEC(&qword_10018F2B8, &qword_10018F2A8, &qword_10012F6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191048);
  }

  return result;
}

unint64_t sub_1000DC7E0()
{
  result = qword_100191050;
  if (!qword_100191050)
  {
    sub_100004D48(&qword_100191040, &qword_10012F6A8);
    sub_10000AAEC(&qword_100189BD0, &qword_100189BA8, &qword_100123A38);
    sub_10000AAEC(&qword_1001895D0, &qword_1001895D8, &qword_10012F6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191050);
  }

  return result;
}

uint64_t sub_1000DC8C4()
{
  v2 = type metadata accessor for FlowProgressView();
  sub_100046168(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v1 + v5 + 8);

  v9 = *(v1 + v5 + 24);

  v10 = *(v1 + v5 + 40);

  v11 = v1 + v5 + *(v0 + 36);
  v12 = type metadata accessor for AccessibilityTechnologies();
  if (!sub_10000E5F0(v11, 1, v12))
  {
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v13 = *(v11 + *(sub_100003768(&qword_10018C140, &unk_100127320) + 40));

  return _swift_deallocObject(v1, v5 + v7, v4 | 7);
}

uint64_t sub_1000DC9EC(uint64_t *a1)
{
  v3 = *(type metadata accessor for FlowProgressView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000DC06C(a1, v4);
}

void sub_1000DCA5C(uint64_t a1)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  bzero((a1 + 56), 0xB9uLL);
}

unint64_t sub_1000DCA80()
{
  result = qword_100191078;
  if (!qword_100191078)
  {
    sub_100004D48(&qword_100191028, &qword_10012F660);
    sub_1000DCB0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191078);
  }

  return result;
}

unint64_t sub_1000DCB0C()
{
  result = qword_100191080;
  if (!qword_100191080)
  {
    sub_100004D48(&qword_100191010, &qword_10012F650);
    sub_1000DCB98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191080);
  }

  return result;
}

unint64_t sub_1000DCB98()
{
  result = qword_100191088;
  if (!qword_100191088)
  {
    sub_100004D48(&qword_100191008, &qword_10012F648);
    sub_1000DCC50();
    sub_10000AAEC(&qword_10018C358, &qword_10018C360, &unk_10012F720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191088);
  }

  return result;
}

unint64_t sub_1000DCC50()
{
  result = qword_100191090;
  if (!qword_100191090)
  {
    sub_100004D48(&qword_100191000, &qword_10012F640);
    sub_1000DCCDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191090);
  }

  return result;
}

unint64_t sub_1000DCCDC()
{
  result = qword_100191098;
  if (!qword_100191098)
  {
    sub_100004D48(&qword_100190FF8, &qword_10012F638);
    sub_100004D48(&qword_100190FF0, &qword_10012F630);
    sub_100004D48(&qword_100190FE8, &qword_10012F628);
    sub_10000AAEC(&qword_100191020, &qword_100190FE8, &qword_10012F628);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191098);
  }

  return result;
}

uint64_t sub_1000DCE20@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

BOOL sub_1000DCE38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  v7 = *(a3 + 32);
  sub_1000E2A0C();
  v10 = ~v9;
  do
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(a3 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    v13 = v12 != 0;
    if (!v12)
    {
      break;
    }

    v14 = (*(a3 + 48) + 16 * v11);
    if (*v14 == a1 && v14[1] == a2)
    {
      break;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v8 = v11 + 1;
  }

  while ((v16 & 1) == 0);
  return v13;
}

BOOL sub_1000DCF20(unint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  sub_100058C3C(v13, a1);
  v5 = Hasher._finalize()();
  v6 = ~(-1 << *(a2 + 32));
  do
  {
    v7 = v5 & v6;
    v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
    v9 = v8 != 0;
    if (!v8)
    {
      break;
    }

    v10 = *(*(a2 + 48) + 8 * v7);
    sub_1000136E0(v10);
    v11 = sub_100058B18(v10, a1);
    sub_10003F67C(v10);
    v5 = v7 + 1;
  }

  while ((v11 & 1) == 0);
  return v9;
}

uint64_t sub_1000DD008()
{
  sub_100025A94();
  *(v0 + 16) = v1;
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  sub_100062F48(v4);

  return v6();
}

uint64_t sub_1000DD0EC()
{
  sub_100025A94();
  v2 = v1;
  sub_10004622C();
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  v6 = *v0;
  sub_10000870C();
  *v7 = v6;

  *v5 = v2;
  sub_100082A68();

  return v8();
}

BOOL sub_1000DD1E8(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = __CocoaSet.count.getter();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

uint64_t sub_1000DD228()
{
  sub_100025A94();
  v6 = (v0 + *v0);
  v1 = v0[1];
  v2 = swift_task_alloc();
  v3 = sub_100056A10(v2);
  *v3 = v4;
  sub_100062F48(v3);

  return v6();
}

uint64_t sub_1000DD304()
{
  sub_100025A94();
  sub_10004622C();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_10000870C();
  *v4 = v3;

  sub_100082A68();

  return v5();
}

id sub_1000DD3E4()
{
  v1 = v0;
  v2 = qword_1001910A0;
  v3 = *(v0 + qword_1001910A0);
  v4 = v3;
  if (v3 == 1)
  {
    v5 = objc_allocWithZone(IDSService);
    v4 = sub_1000E04E4(0xD000000000000010, 0x8000000100139310);
    v6 = *(v1 + v2);
    *(v1 + v2) = v4;
    v7 = v4;
    sub_1000E03E4(v6);
  }

  sub_1000E28B4(v3);
  return v4;
}

uint64_t sub_1000DD47C()
{
  swift_getKeyPath();
  v6 = v0;
  sub_1000E29EC();
  sub_1000E266C(v1, v2);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = qword_1001910A8;
  swift_beginAccess();
  v4 = *(v6 + v3);
}

uint64_t sub_1000DD52C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1000DD558(v4);
}

uint64_t sub_1000DD558(uint64_t a1)
{
  v3 = qword_1001910A8;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v6 = sub_1000E26F4(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000E00AC();
  }
}

uint64_t sub_1000DD648(uint64_t a1, uint64_t a2)
{
  v4 = qword_1001910A8;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

uint64_t sub_1000DD6B8()
{
  v1 = type metadata accessor for Locale();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  sub_10000C30C();
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  sub_10000C30C();
  v5 = type metadata accessor for SupportFlowIdentifier();
  v6 = sub_100008780(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_10000C30C();
  v13 = v12 - v11;
  *(v0 + qword_1001910A0) = 1;
  *(v0 + qword_1001A5870) = 0;
  *(v0 + qword_1001A5878) = 0;
  *(v0 + qword_1001A5880) = 0;
  *(v0 + qword_1001A5888) = 0;
  *(v0 + qword_1001A5890) = 0;
  *(v0 + qword_1001A5898) = 0;
  *(v0 + qword_1001A58A0) = 0;
  *(v0 + qword_1001A58A8) = 10;
  *(v0 + qword_1001910A8) = &_swiftEmptySetSingleton;
  ObservationRegistrar.init()();
  (*(v8 + 104))(v13, enum case for SupportFlowIdentifier.messages(_:), v5);

  sub_100105734();
  v15 = v14;

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_1000242E4();

  return v15;
}

uint64_t sub_1000DD924()
{
  sub_100025A94();
  v1[445] = v0;
  type metadata accessor for MainActor();
  v1[446] = sub_10006F3C8();
  sub_10006F37C();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[447] = v3;
  v1[448] = v2;

  return _swift_task_switch(sub_1000DD9B0, v3, v2);
}

uint64_t sub_1000DD9B0()
{
  sub_10003DCD8();
  v1 = v0[445];
  sub_100003768(&qword_100191560, &qword_10012F7C8);
  swift_asyncLet_begin();
  sub_100003768(&qword_100191568, &qword_10012F7D8);
  swift_asyncLet_begin();
  v2 = swift_task_alloc();
  v0[449] = v2;
  *(v2 + 16) = &unk_10012F7E8;
  *(v2 + 24) = v1;

  swift_asyncLet_begin();
  v3 = swift_task_alloc();
  v0[450] = v3;
  *(v3 + 16) = &unk_10012F808;
  *(v3 + 24) = v1;

  swift_asyncLet_begin();
  v4 = swift_task_alloc();
  v0[451] = v4;
  *(v4 + 16) = &unk_10012F820;
  *(v4 + 24) = v1;

  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2, v0 + 419, sub_1000DDBB0, v0 + 402);
}

uint64_t sub_1000DDBB0()
{
  sub_100025A94();
  memcpy((v0 + 3256), (v0 + 3352), 0x5BuLL);
  sub_1000E07BC(v0 + 3256, v0 + 3448);

  return _swift_asyncLet_get(v0 + 656, v0 + 3544, sub_1000DDC2C, v0 + 3216);
}

uint64_t sub_1000DDC2C()
{
  sub_100025A94();
  *(v0 + 3616) = *(v0 + 3544);
  *(v0 + 3348) = *(v0 + 3552);

  return _swift_asyncLet_get(v0 + 1296, v0 + 3347, sub_1000DDCA0, v0 + 3216);
}

uint64_t sub_1000DDD00()
{
  if (*(v0 + 3336) != 1)
  {
    v1 = *(v0 + 3560);
    v2 = *(v0 + 3258);
    sub_100044F98(v0 + 3256, &qword_100191560, &qword_10012F7C8);
    v3 = qword_1001A5870;
    *(v1 + qword_1001A5870) = (v2 - 1) < 3;
    if (qword_1001882C8 != -1)
    {
      sub_1000BBF30();
    }

    v4 = *(v0 + 3560);
    v5 = type metadata accessor for Logger();
    sub_10000C2D4(v5, qword_1001A5858);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 3560);
    if (v8)
    {
      v10 = sub_1000E2A18();
      *v10 = 67109120;
      v10[1] = *(v1 + v3);

      sub_1000E2A3C(&_mh_execute_header, v11, v12, "weakWiFiSignal: %{BOOL}d");
      sub_100008744();
    }

    else
    {
      v13 = *(v0 + 3560);
    }
  }

  v14 = *(v0 + 3616);
  if (v14)
  {
    v15 = *(v0 + 3560);
    v16 = qword_1001A5888;
    *(v15 + qword_1001A5888) = *(v0 + 3348) & 1;
    v17 = *(v14 + 16);

    v18 = qword_1001A5890;
    *(v15 + qword_1001A5890) = v17 != 0;
    if (qword_1001882C8 != -1)
    {
      sub_1000BBF30();
    }

    v19 = *(v0 + 3560);
    v20 = type metadata accessor for Logger();
    sub_10000C2D4(v20, qword_1001A5858);
    sub_10006F37C();

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 3560);
    if (v23)
    {
      v25 = sub_1000E2A18();
      *v25 = 67109120;
      v25[1] = *(v15 + v16);

      sub_1000E2A5C(&_mh_execute_header, v26, v27, "isVPNConnected: %{BOOL}d");
      sub_100008744();
    }

    else
    {
      v28 = *(v0 + 3560);
    }

    v29 = *(v0 + 3560);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 3560);
    if (v32)
    {
      v34 = sub_1000E2A18();
      *v34 = 67109120;
      v34[1] = *(v15 + v18);

      sub_1000E2A3C(&_mh_execute_header, v35, v36, "hasConfiguredVPN: %{BOOL}d");
      sub_100008744();
    }

    else
    {
      v37 = *(v0 + 3560);
    }
  }

  v38 = *(v0 + 3560);
  v39 = qword_1001A5898;
  *(v38 + qword_1001A5898) = *(v0 + 3351);
  if (qword_1001882C8 != -1)
  {
    sub_1000BBF30();
  }

  v40 = *(v0 + 3560);
  v41 = type metadata accessor for Logger();
  sub_10000C2D4(v41, qword_1001A5858);
  sub_10006F37C();

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  v44 = os_log_type_enabled(v42, v43);
  v45 = *(v0 + 3560);
  if (v44)
  {
    v46 = sub_1000E2A18();
    *v46 = 67109120;
    v46[1] = *(v38 + v39);

    sub_1000E2A5C(&_mh_execute_header, v47, v48, "hasRecentDeviceRestart: %{BOOL}d");
    sub_100008744();
  }

  else
  {
    v49 = *(v0 + 3560);
  }

  v50 = *(v0 + 3560);
  v51 = qword_1001A58A0;
  *(v50 + qword_1001A58A0) = *(v0 + 3443);

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 3560);
  if (v54)
  {
    v56 = sub_1000E2A18();
    *v56 = 67109120;
    *(v56 + 4) = *(v50 + v51);

    _os_log_impl(&_mh_execute_header, v52, v53, "hasRecentNetworkSettingsReset: %{BOOL}d", v56, 8u);
    sub_100008744();
  }

  else
  {
    v57 = *(v0 + 3560);
  }

  return _swift_asyncLet_finish(v0 + 2576, v58, sub_1000DE148, v0 + 3216);
}

uint64_t sub_1000DE164()
{
  sub_100025A94();
  v1 = *(v0 + 3608);
  v2 = *(v0 + 3560);

  return _swift_asyncLet_finish(v0 + 1936, v0 + 3350, sub_1000DE1D8, v0 + 2576);
}

uint64_t sub_1000DE1F4()
{
  sub_100025A94();
  v1 = *(v0 + 3600);
  v2 = *(v0 + 3560);

  return _swift_asyncLet_finish(v0 + 1296, v0 + 3347, sub_1000DE268, v0 + 1936);
}

uint64_t sub_1000DE284()
{
  sub_100025A94();
  v1 = *(v0 + 3592);
  v2 = *(v0 + 3560);

  return _swift_asyncLet_finish(v0 + 656, v0 + 3544, sub_1000DE2F8, v0 + 1296);
}

uint64_t sub_1000DE350()
{
  sub_100025A94();
  v1 = *(v0 + 3568);

  sub_10000875C();

  return v2();
}

uint64_t sub_1000DE3C8()
{
  sub_100025A94();
  v1 = *(v0 + 112);
  sub_10009C13C((v0 + 16));
  memcpy(v1, (v0 + 16), 0x5BuLL);
  sub_10000875C();

  return v2();
}

uint64_t sub_1000DE434(uint64_t a1)
{
  *(v1 + 112) = a1;
  v2 = swift_task_alloc();
  *(v1 + 120) = v2;
  *v2 = v1;
  v2[1] = sub_1000DE4CC;

  return sub_1000DE3A8(v1 + 16);
}

uint64_t sub_1000DE4CC()
{
  sub_100025A94();
  sub_10004622C();
  v2 = v1;
  v3 = *(v1 + 120);
  v4 = *(v1 + 112);
  v5 = *v0;
  sub_10000870C();
  *v6 = v5;

  memcpy(v4, (v2 + 16), 0x5BuLL);
  sub_100082A68();

  return v7();
}

uint64_t sub_1000DE5D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000DE660;

  return static VPNDiagnosticsDataProvider.provideData()();
}

uint64_t sub_1000DE660()
{
  sub_10003DCD8();
  v3 = v2;
  v5 = v4;
  sub_10004622C();
  v7 = *(v6 + 16);
  v8 = *v1;
  sub_10000870C();
  *v9 = v8;

  if (v0)
  {

    v5 = 0;
    v10 = 0;
  }

  else
  {
    v10 = v3 & 0x101;
  }

  v11 = *(v8 + 8);

  return v11(v5, v10);
}

uint64_t sub_1000DE778(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000DE808;

  return sub_1000DE5D0();
}

uint64_t sub_1000DE808()
{
  sub_10003DCD8();
  v2 = v1;
  v4 = v3;
  sub_10004622C();
  v6 = *(v5 + 24);
  v7 = *(v5 + 16);
  v8 = *v0;
  sub_10000870C();
  *v9 = v8;

  *v7 = v4;
  *(v7 + 8) = v2;
  sub_100082A68();

  return v10();
}

uint64_t sub_1000DE934()
{
  sub_100025A94();
  v1 = *(*(v0 + 16) + *(**(v0 + 16) + 136)) + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_deviceEventCoordinator;
  DeviceEventCoordinator.hasRecentDeviceRestart()();
  sub_1000E2A30();
  v4 = v3 & 1;

  return v2(v4);
}

uint64_t sub_1000DE9D4()
{
  sub_100025A94();
  v1 = *(*(v0 + 16) + *(**(v0 + 16) + 136)) + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_deviceEventCoordinator;
  DeviceEventCoordinator.hasRecentNetworkSettingsReset()();
  sub_1000E2A30();
  v4 = v3 & 1;

  return v2(v4);
}

uint64_t sub_1000DEA54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100045AB0;

  return sub_1000DF47C();
}

void sub_1000DEAE4()
{
  sub_1000DEC54(0xAuLL, 0);

  sub_100107CD4();
}

uint64_t sub_1000DEB14()
{
  sub_100025A94();
  *(v1 + 16) = v0;
  type metadata accessor for MainActor();
  *(v1 + 24) = sub_10006F3C8();
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  v2 = sub_100062F00();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1000DEB94()
{
  sub_100025A94();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = *(v2 + *(*v2 + 136));
  TMIsAutomaticTimeZoneEnabled();
  sub_100085FE4();
  v4 = *(v2 + qword_1001A5878);
  sub_100085FE4();
  v5 = *(v2 + qword_1001A5888);
  sub_100085FE4();
  v6 = *(v2 + qword_1001A5890);
  sub_100085FE4();
  sub_10000875C();

  return v7();
}

uint64_t sub_1000DEC54(unint64_t a1, char a2)
{
  v4 = v2;
  v7 = sub_100003768(&qword_10018ABF8, &qword_100125318);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v54 - v9;
  if (a2)
  {
    if (a1 == 10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (a1 == 10)
    {
LABEL_14:
      v23 = 0;
      goto LABEL_19;
    }

    sub_1000136E0(a1);
    v11 = sub_1000DD47C();
    v12 = sub_1000DCF20(a1, v11);

    if (v12)
    {
      if (*(v4 + qword_1001A58A8) == 10)
      {
        *(v4 + qword_1001A58A8) = a1;
        sub_1000136E0(a1);
      }

      if (qword_1001882C8 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_56;
    }

    sub_10003F68C(a1);
  }

  sub_1000136E0(a1);
  v21 = sub_1000DF2AC(a1, &off_100174F48);
  v3 = v22;
  sub_10003F68C(a1);
  if (v3)
  {
    goto LABEL_14;
  }

  if (__OFADD__(v21, 1))
  {
    __break(1u);
LABEL_56:
    sub_1000BBF30();
LABEL_9:
    v13 = type metadata accessor for Logger();
    sub_10000C2D4(v13, qword_1001A5858);
    sub_1000136E0(a1);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    sub_10003F68C(a1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v64[0] = v17;
      *v16 = 136315138;
      v18 = sub_100058208(a1);
      v20 = sub_10009CACC(v18, v19, v64);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Action performed found for step: %s", v16, 0xCu);
      sub_1000086BC(v17);
      sub_100008744();
      sub_100008744();
    }

    v3 = swift_allocObject();
    *(v3 + 16) = a1;
    return v3;
  }

  if (v21 + 1 >= 10)
  {
    v23 = 0;
  }

  else
  {
    v23 = v21 + 1;
  }

LABEL_19:
  v24 = sub_100017868(v23, 10, &off_100174F48);
  v26 = v25;
  v28 = v27;
  v30 = v29 >> 1;
  v31 = qword_1001A58A0;
  v32 = qword_1001A5880;
  v62 = qword_1001A5890;
  v63 = qword_1001A5898;
  v60 = qword_1001A5878;
  v61 = qword_1001A5870;
  v59 = "HMTSoftwareUpdateBetaUser";
  while (v28 != v30)
  {
    if (v28 >= v30)
    {
      __break(1u);
LABEL_54:
      sub_1000BBF30();
      goto LABEL_50;
    }

    v3 = *(v26 + 8 * v28++);
    switch(v3)
    {
      case 0:
        if (*(v4 + v60) == 1)
        {
          goto LABEL_46;
        }

        v3 = 0;
        goto LABEL_49;
      case 1:
        if ((*(v4 + v61) & 1) == 0)
        {
          goto LABEL_46;
        }

        v3 = 1;
        goto LABEL_49;
      case 2:
        if (*(v4 + v31))
        {
          continue;
        }

        if ((*(v4 + v32) & 1) == 0)
        {
          goto LABEL_46;
        }

        v3 = 2;
        goto LABEL_49;
      case 3:
        if ((*(v4 + v62) & 1) == 0)
        {
          goto LABEL_46;
        }

        v3 = 3;
        goto LABEL_49;
      case 4:
        goto LABEL_49;
      case 5:
        type metadata accessor for TimezoneViewModel();
        if ((sub_1000B7918() & 1) == 0)
        {
          goto LABEL_46;
        }

        v3 = 5;
        goto LABEL_49;
      case 6:
        if (*(v4 + v63))
        {
          goto LABEL_46;
        }

        v3 = 6;
        goto LABEL_49;
      case 7:
        v54 = v32;
        v55 = v31;
        v57 = v4;
        v58 = v24;
        v56 = v10;
        v33 = sub_1000DD47C();
        v34 = v33;
        if (!*(v33 + 16))
        {
          goto LABEL_47;
        }

        v35 = *(v33 + 40);
        Hasher.init(_seed:)();
        sub_100058C3C(v64, 0);
        Hasher._finalize()();
        v36 = *(v34 + 32);
        sub_1000E2A0C();
        v39 = ~v38;
        break;
      case 8:
        if (*(v4 + v31))
        {
          continue;
        }

        if (*(v4 + v32))
        {
          goto LABEL_46;
        }

        v3 = 8;
        goto LABEL_49;
      case 9:
        v43 = *(v4 + *(*v4 + 136));
        sub_100087500();
        v44 = sub_100003768(&qword_10018AC00, &qword_100125320);
        LODWORD(v43) = sub_10000E5F0(v10, 1, v44);
        sub_100044F98(v10, &qword_10018ABF8, &qword_100125318);
        if (v43 == 1)
        {
          goto LABEL_48;
        }

        goto LABEL_46;
      default:
        continue;
    }

    do
    {
      v40 = v37 & v39;
      if (((*(v34 + 56 + (((v37 & v39) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v37 & v39)) & 1) == 0)
      {
LABEL_47:

        v3 = 7;
        goto LABEL_49;
      }

      v41 = *(*(v34 + 48) + 8 * v40);
      sub_1000136E0(v41);
      v42 = sub_100058B18(v41, 0);
      sub_10003F67C(v41);
      v37 = v40 + 1;
    }

    while ((v42 & 1) == 0);

    v10 = v56;
    v4 = v57;
    v24 = v58;
    v32 = v54;
    v31 = v55;
LABEL_46:
    sub_10003F67C(v3);
  }

LABEL_48:
  v3 = 9;
LABEL_49:
  swift_unknownObjectRelease();
  if (qword_1001882C8 != -1)
  {
    goto LABEL_54;
  }

LABEL_50:
  v45 = type metadata accessor for Logger();
  sub_10000C2D4(v45, qword_1001A5858);
  sub_1000136E0(v3);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  sub_10003F67C(v3);
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v64[0] = v49;
    *v48 = 136315138;
    v50 = sub_100058208(v3);
    v52 = sub_10009CACC(v50, v51, v64);

    *(v48 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v46, v47, "Next step found: %s", v48, 0xCu);
    sub_1000086BC(v49);
    sub_100008744();
    sub_100008744();
  }

  return v3;
}

uint64_t sub_1000DF2AC(unint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = a2 + 32;
  while (1)
  {
    if (v4 == v3)
    {
      return 0;
    }

    v6 = *(v5 + 8 * v3);
    sub_1000136E0(v6);
    v7 = sub_100058B18(v6, a1);
    sub_10003F67C(v6);
    if (v7)
    {
      break;
    }

    ++v3;
  }

  return v3;
}

uint64_t sub_1000DF334(unint64_t a1)
{
  swift_getKeyPath();
  sub_1000E29EC();
  sub_1000E266C(v2, v3);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_1000136E0(a1);
  sub_1000E09E4(&v6, a1);
  v4 = v6;
  swift_endAccess();
  sub_10003F67C(v4);
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t sub_1000DF47C()
{
  sub_100025A94();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  sub_100062F48(v2);

  return sub_1000DF978();
}

uint64_t sub_1000DF504()
{
  sub_100025A94();
  sub_10004622C();
  v2 = v1;
  v3 = *(v1 + 24);
  v6 = *v0;
  *(v2 + 40) = v4;

  return _swift_task_switch(sub_1000DF5FC, 0, 0);
}

uint64_t sub_1000DF5FC()
{
  sub_100025A94();
  type metadata accessor for MainActor();
  *(v0 + 32) = sub_10006F3C8();
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  v1 = sub_100062F00();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1000DF678()
{
  sub_10003DCD8();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = *(v0 + 40);

  sub_1000DF74C(v3 & 1, HIBYTE(v3) & 1, v2);

  return _swift_task_switch(sub_1000DF72C, 0, 0);
}

void sub_1000DF74C(char a1, char a2, uint64_t a3)
{
  if (qword_1001882C8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C2D4(v6, qword_1001A5858);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v7, v8, "isMessagesSettingsEnabled: %{BOOL}d", v9, 8u);
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v10, v11, "isIDSNetworkFailure: %{BOOL}d", v12, 8u);
  }

  *(a3 + qword_1001A5878) = a1 & 1;
  v13 = qword_1001A5880;
  *(a3 + qword_1001A5880) = a2 & 1;
  if (qword_100188360 != -1)
  {
    swift_once();
  }

  if (qword_1001A5950)
  {
    swift_getKeyPath();
    v14 = sub_1000FBFA4();

    if (v14)
    {
      *(a3 + v13) = 1;
    }
  }
}

uint64_t sub_1000DF978()
{
  sub_100025A94();
  *(v1 + 72) = v0;
  type metadata accessor for MainActor();
  *(v1 + 80) = sub_10006F3C8();
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  v2 = sub_100062F00();

  return _swift_task_switch(v2, v3, v4);
}

void sub_1000DF9F8()
{
  v1 = v0[9];
  v2 = sub_1000DD3E4();
  if (!v2)
  {
    v7 = v0[10];

LABEL_8:
    sub_1000E2A30();

    v9(v10 | v11);
    return;
  }

  v3 = v2;
  v4 = sub_1000E2554(v2);
  if (!v4)
  {
    v8 = v0[10];

    goto LABEL_7;
  }

  v5 = v4;
  if (sub_1000DD1E8(v4))
  {
    v6 = v0[10];

LABEL_7:

    goto LABEL_8;
  }

  v36 = v3;
  if ((v5 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    sub_1000E25F0();
    sub_1000E266C(&qword_100191578, sub_1000E25F0);
    Set.Iterator.init(_cocoa:)();
    v12 = v0[2];
    v13 = v0[3];
    v15 = v0[4];
    v14 = v0[5];
    v16 = v0[6];
  }

  else
  {
    v17 = *(v5 + 32);
    sub_1000E2A0C();
    v13 = v5 + 56;
    v15 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(v18 << v20);
    }

    else
    {
      v21 = v18;
    }

    v16 = v21 & *(v5 + 56);

    v14 = 0;
    v12 = v5;
  }

  v22 = 0;
  v23 = (v15 + 64) >> 6;
  v24 = 1;
  v37 = v12;
  if (v12 < 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  v25 = v14;
  v26 = v16;
  v27 = v14;
  if (v16)
  {
LABEL_22:
    v28 = (v26 - 1) & v26;
    v29 = *(*(v12 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v26)))));
    if (!v29)
    {
LABEL_38:
      v35 = v0[10];
      sub_100077BA0();

      goto LABEL_8;
    }

    while (1)
    {
      v24 &= [v29 registrationStatus] == -1;
      v22 |= ([v29 registrationError] & 0xFFFFFFFE) == 28;
      v31 = [v29 accountType];
      if (v31 == 1)
      {
        if ((sub_1000DFD84() & 1) == 0)
        {
          goto LABEL_35;
        }

        if ([v29 isActive])
        {
          if ([v29 registrationStatus] == 5)
          {
            goto LABEL_35;
          }

          v32 = sub_1000E24E8(v29);
          if (!v32)
          {
            goto LABEL_40;
          }

          v33 = *(v32 + 16);

          if (!v33)
          {
LABEL_35:

            v22 = 1;
            goto LABEL_36;
          }
        }

        v34 = sub_1000DFDE0(1);

        v22 |= v34;
      }

      else
      {
        if (!v31)
        {
          goto LABEL_35;
        }
      }

LABEL_36:
      v14 = v27;
      v16 = v28;
      v12 = v37;
      if ((v37 & 0x8000000000000000) == 0)
      {
        goto LABEL_18;
      }

LABEL_24:
      v30 = __CocoaSet.Iterator.next()();
      if (v30)
      {
        v0[8] = v30;
        sub_1000E25F0();
        swift_dynamicCast();
        v29 = v0[7];
        v27 = v14;
        v28 = v16;
        if (v29)
        {
          continue;
        }
      }

      goto LABEL_38;
    }
  }

  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v27 >= v23)
    {
      goto LABEL_38;
    }

    v26 = *(v13 + 8 * v27);
    ++v25;
    if (v26)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t sub_1000DFD84()
{
  result = sub_1000E24E8(v0);
  if (result)
  {
    v2 = *(result + 16);

    if (v2)
    {

      return sub_1000DFDE0(0);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000DFDE0(int a1)
{
  v2 = v1;
  v27 = a1;
  v31 = type metadata accessor for CharacterSet();
  v3 = *(v31 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v31);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v2;
  result = sub_1000E2490(v2);
  if (result)
  {
    v8 = result;
    v29 = *(result + 16);
    if (!v29)
    {
LABEL_17:

      return 0;
    }

    v9 = 0;
    v28 = "_actionPerformedSteps";
    v30 = (v3 + 8);
    v24 = result;
    v25 = kFZServiceDefaultsSentinelAlias;
    v10 = (result + 40);
    while (v9 < *(v8 + 16))
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v32 = String.lowercased()();
      static CharacterSet.whitespaces.getter();
      sub_10000AC24();
      v13 = StringProtocol.trimmingCharacters(in:)();
      v15 = v14;
      v16 = *v30;
      (*v30)(v6, v31);

      v17._object = (v28 | 0x8000000000000000);
      v17._countAndFlagsBits = 0xD000000000000017;
      if (String.hasSuffix(_:)(v17))
      {
      }

      else
      {
        if ((v27 & 1) == 0)
        {

LABEL_19:

          return 1;
        }

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = String.lowercased()();

        v32 = v18;
        static CharacterSet.whitespaces.getter();
        v19 = StringProtocol.trimmingCharacters(in:)();
        v21 = v20;
        v16(v6, v31);

        if (v13 == v19 && v15 == v21)
        {
        }

        else
        {
          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v23 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        result = [v26 isActive];
        v8 = v24;
        if (result)
        {
          goto LABEL_19;
        }
      }

      ++v9;
      v10 += 2;
      if (v29 == v9)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E0164()
{
  sub_1000E03E4(*(v0 + qword_1001910A0));
  sub_10003F68C(*(v0 + qword_1001A58A8));
  v1 = *(v0 + qword_1001910A8);

  v2 = qword_1001910B0;
  v3 = type metadata accessor for ObservationRegistrar();
  sub_10000C31C(v3);
  v5 = *(v4 + 8);

  return v5(v0 + v2);
}

uint64_t sub_1000E01F0()
{
  v0 = sub_100105A10();
  sub_1000E03E4(*(v0 + qword_1001910A0));
  sub_10003F68C(*(v0 + qword_1001A58A8));
  v1 = *(v0 + qword_1001910A8);

  v2 = qword_1001910B0;
  v3 = type metadata accessor for ObservationRegistrar();
  sub_10000C31C(v3);
  (*(v4 + 8))(v0 + v2);
  return v0;
}

uint64_t sub_1000E027C()
{
  v0 = sub_1000E01F0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for MessagesFlowViewModel()
{
  result = qword_1001910E0;
  if (!qword_1001910E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E031C()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1000E03E4(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1000E03F4()
{
  v0 = type metadata accessor for SupportFlowIdentifier();
  v1 = sub_100008780(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_10000C30C();
  v8 = v7 - v6;
  v9 = type metadata accessor for Logger();
  sub_10000C270(v9, qword_1001A5858);
  sub_10000C2D4(v9, qword_1001A5858);
  (*(v3 + 104))(v8, enum case for SupportFlowIdentifier.messages(_:), v0);
  return Logger.init(flowId:)();
}

id sub_1000E04E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithService:v3];

  return v4;
}

uint64_t sub_1000E0548()
{
  sub_100025A94();
  v1 = swift_task_alloc();
  v2 = sub_100056A10(v1);
  *v2 = v3;
  sub_100062F48(v2);

  return sub_1000DE914(v0);
}

uint64_t sub_1000E05CC()
{
  sub_100025A94();
  v2 = v1;
  sub_10004622C();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_10000870C();
  *v6 = v5;

  sub_1000E2A30();

  return v7(v2);
}

uint64_t sub_1000E06B4()
{
  sub_100025A94();
  v1 = swift_task_alloc();
  v2 = sub_100056A10(v1);
  *v2 = v3;
  sub_100062F48(v2);

  return sub_1000DE9B4(v0);
}

uint64_t sub_1000E0738()
{
  sub_100025A94();
  v0 = swift_task_alloc();
  v1 = sub_100056A10(v0);
  *v1 = v2;
  sub_100062F48(v1);

  return sub_1000DEA54();
}

uint64_t sub_1000E07BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_100191560, &qword_10012F7C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_1000E082C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowStepContentOption();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_10000C30C();
  v9 = v8 - v7;
  v25 = v2;
  v10 = *v2;
  v11 = *(*v2 + 40);
  Hasher.init(_seed:)();
  v12 = a2;
  sub_1000FF33C();
  Hasher._finalize()();
  v13 = *(v10 + 32);
  sub_1000E2A0C();
  v16 = ~v15;
  while (1)
  {
    v17 = v14 & v16;
    v18 = (1 << (v14 & v16)) & *(v10 + 56 + (((v14 & v16) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v18)
    {
      v22 = *v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1000E28C4(v12, v9);
      v27 = *v25;
      sub_1000E13F0(v9, v17, isUniquelyReferenced_nonNull_native);
      *v25 = v27;
      sub_1000E2984(v12, a1);
      return v18 == 0;
    }

    v19 = *(v5 + 72) * v17;
    sub_1000E28C4(*(v10 + 48) + v19, v9);
    sub_1000FEB64();
    v21 = v20;
    sub_1000E2928(v9);
    if (v21)
    {
      break;
    }

    v14 = v17 + 1;
  }

  sub_1000E2928(v12);
  sub_1000E28C4(*(v10 + 48) + v19, a1);
  return v18 == 0;
}

BOOL sub_1000E09E4(unint64_t *a1, unint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  sub_100058C3C(v18, a2);
  v7 = Hasher._finalize()();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      v13 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18[0] = *v3;
      sub_1000136E0(a2);
      sub_1000E15DC(a2, v9, isUniquelyReferenced_nonNull_native);
      *v3 = v18[0];
      *a1 = a2;
      return v10 == 0;
    }

    v11 = *(*(v5 + 48) + 8 * v9);
    sub_1000136E0(v11);
    v12 = sub_100058B18(v11, a2);
    sub_10003F67C(v11);
    if (v12)
    {
      break;
    }

    v7 = v9 + 1;
  }

  sub_10003F67C(a2);
  v15 = *(*(v5 + 48) + 8 * v9);
  *a1 = v15;
  sub_1000136E0(v15);
  return v10 == 0;
}

BOOL sub_1000E0B24(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  v9 = *(v7 + 32);
  sub_1000E2A0C();
  v12 = ~v11;
  while (1)
  {
    v13 = v10 & v12;
    v14 = (1 << (v10 & v12)) & *(v7 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      break;
    }

    v15 = (*(v7 + 48) + 16 * v13);
    v16 = *v15 == a2 && v15[1] == a3;
    if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v17 = (*(v7 + 48) + 16 * v13);
      v18 = v17[1];
      *a1 = *v17;
      a1[1] = v18;

      return v14 == 0;
    }

    v10 = v13 + 1;
  }

  v19 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v3;

  sub_1000E1738(a2, a3, v13, isUniquelyReferenced_nonNull_native);
  *v3 = v22;
  *a1 = a2;
  a1[1] = a3;
  return v14 == 0;
}

uint64_t sub_1000E0C6C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FlowStepContentOption();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100003768(&qword_100191590, &unk_10012F8B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (!*(v8 + 16))
  {
LABEL_29:

    *v2 = v11;
    return result;
  }

  v34 = v2;
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
  v18 = result + 56;
  if (!v16)
  {
LABEL_9:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v12 >= v17)
      {
        break;
      }

      v21 = v13[v12];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    v32 = 1 << *(v8 + 32);
    if (v32 >= 64)
    {
      sub_1000E18A0(0, (v32 + 63) >> 6, v8 + 56);
    }

    else
    {
      *v13 = -1 << v32;
    }

    v2 = v34;
    *(v8 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_14:
    v22 = *(v35 + 72);
    sub_1000E2984(*(v8 + 48) + v22 * (v19 | (v12 << 6)), v7);
    v23 = *(v11 + 40);
    Hasher.init(_seed:)();
    sub_1000FF33C();
    result = Hasher._finalize()();
    v24 = -1 << *(v11 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    result = sub_1000E2984(v7, *(v11 + 48) + v27 * v22);
    ++*(v11 + 16);
    if (!v16)
    {
      goto LABEL_9;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v18 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000E0F48(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003768(&qword_100191580, &qword_10012F8A0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_1000E18A0(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    Hasher.init(_seed:)();
    sub_100058C3C(v29, v17);
    result = Hasher._finalize()();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000E1194(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003768(&qword_100191588, &qword_10012F8A8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_1000E18A0(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000E13F0(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for FlowStepContentOption();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 <= v13 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1000E0C6C(v13 + 1);
      goto LABEL_10;
    }

    if (v14 <= v13)
    {
      sub_1000E1D8C(v13 + 1);
LABEL_10:
      v20 = *v4;
      v21 = *(*v4 + 40);
      Hasher.init(_seed:)();
      sub_1000FF33C();
      v22 = Hasher._finalize()();
      v23 = ~(-1 << *(v20 + 32));
      while (1)
      {
        a2 = v22 & v23;
        if (((*(v20 + 56 + (((v22 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v22 & v23)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_1000E28C4(*(v20 + 48) + *(v9 + 72) * a2, v12);
        sub_1000FEB64();
        v25 = v24;
        sub_1000E2928(v12);
        if (v25)
        {
          goto LABEL_15;
        }

        v22 = a2 + 1;
      }
    }

    sub_1000E1904();
  }

LABEL_7:
  v15 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1000E2984(a1, *(v15 + 48) + *(v9 + 72) * a2);
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
LABEL_15:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v15 + 16) = v19;
  }

  return result;
}

Swift::Int sub_1000E15DC(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1000E0F48(v7 + 1);
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_1000E2038(v7 + 1);
LABEL_10:
      v13 = *v3;
      v14 = *(*v3 + 40);
      Hasher.init(_seed:)();
      sub_100058C3C(v18, v6);
      result = Hasher._finalize()();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = result & v15;
        if (((*(v13 + 56 + (((result & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v15)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v16 = *(*(v13 + 48) + 8 * a2);
        sub_1000136E0(v16);
        v17 = sub_100058B18(v16, v6);
        sub_10003F67C(v16);
        if (v17)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1000E1AE4();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v9 + 48) + 8 * a2) = v6;
  v10 = *(v9 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
LABEL_15:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v12;
  }

  return result;
}

Swift::Int sub_1000E1738(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1000E1194(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1000E225C(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1000E1C34();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_1000E18A0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_10012F730;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_1000E1904()
{
  v1 = v0;
  v2 = type metadata accessor for FlowStepContentOption();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003768(&qword_100191590, &unk_10012F8B0);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_17:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1000E28C4(*(v7 + 48) + v22, v6);
        result = sub_1000E2984(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_19;
      }

      v21 = *(v7 + 56 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v9;
  }

  return result;
}

void *sub_1000E1AE4()
{
  v1 = v0;
  sub_100003768(&qword_100191580, &qword_10012F8A0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_1000136E0(v18);
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

void *sub_1000E1C34()
{
  v1 = v0;
  sub_100003768(&qword_100191588, &qword_10012F8A8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

uint64_t sub_1000E1D8C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FlowStepContentOption();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100003768(&qword_100191590, &unk_10012F8B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    if (v15)
    {
      while (1)
      {
        v18 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v21 = *(v33 + 72);
        sub_1000E28C4(*(v8 + 48) + v21 * (v18 | (v12 << 6)), v7);
        v22 = *(v11 + 40);
        Hasher.init(_seed:)();
        sub_1000FF33C();
        result = Hasher._finalize()();
        v23 = -1 << *(v11 + 32);
        v24 = result & ~v23;
        v25 = v24 >> 6;
        if (((-1 << v24) & ~*(v17 + 8 * (v24 >> 6))) == 0)
        {
          break;
        }

        v26 = __clz(__rbit64((-1 << v24) & ~*(v17 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v17 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        result = sub_1000E2984(v7, *(v11 + 48) + v26 * v21);
        ++*(v11 + 16);
        if (!v15)
        {
          goto LABEL_9;
        }
      }

      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v17 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v19 = v12;
      while (1)
      {
        v12 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v12 >= v16)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v20 = *(v8 + 56 + 8 * v12);
        ++v19;
        if (v20)
        {
          v18 = __clz(__rbit64(v20));
          v15 = (v20 - 1) & v20;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1000E2038(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003768(&qword_100191580, &qword_10012F8A0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        Hasher.init(_seed:)();
        sub_1000136E0(v16);
        sub_100058C3C(v27, v16);
        result = Hasher._finalize()();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000E225C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003768(&qword_100191588, &qword_10012F8A8);
  result = static _SetStorage.resize(original:capacity:move:)();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000E2490(void *a1)
{
  v1 = [a1 aliasStrings];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000E24E8(void *a1)
{
  v1 = [a1 aliases];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100003768(&qword_10018B580, &unk_100128EB0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000E2554(void *a1)
{
  v1 = [a1 accounts];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1000E25F0();
  sub_1000E266C(&qword_100191578, sub_1000E25F0);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_1000E25F0()
{
  result = qword_100191570;
  if (!qword_100191570)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100191570);
  }

  return result;
}

uint64_t sub_1000E263C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1000DD47C();
  *a2 = result;
  return result;
}

uint64_t sub_1000E266C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000E26B4()
{
  if (*(v0 + 16) >= 0xAuLL)
  {
  }

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000E26F4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v19 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v20 = (v7 - 1) & v7;
LABEL_13:
      v12 = *(*(result + 48) + 8 * (v9 | (v3 << 6)));
      v13 = *(a2 + 40);
      Hasher.init(_seed:)();
      sub_1000136E0(v12);
      sub_100058C3C(v21, v12);
      v14 = Hasher._finalize()();
      v15 = ~(-1 << *(a2 + 32));
      do
      {
        v16 = v14 & v15;
        if (((*(a2 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          sub_10003F67C(v12);
          return 0;
        }

        v17 = *(*(a2 + 48) + 8 * v16);
        sub_1000136E0(v17);
        v18 = sub_100058B18(v17, v12);
        sub_10003F67C(v17);
        v14 = v16 + 1;
      }

      while ((v18 & 1) == 0);
      sub_10003F67C(v12);
      result = v19;
      v7 = v20;
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v20 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

id sub_1000E28B4(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1000E28C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowStepContentOption();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E2928(uint64_t a1)
{
  v2 = type metadata accessor for FlowStepContentOption();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E2984(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowStepContentOption();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E2A18()
{

  return swift_slowAlloc();
}

void sub_1000E2A3C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 8u);
}

void sub_1000E2A5C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 8u);
}

_BYTE *storeEnumTagSinglePayload for AirPodsStepOverrideProvider(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
        JUMPOUT(0x1000E2B48);
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000E2BAC()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1000E8A54();
  }

  return v5 & 1;
}

uint64_t sub_1000E2C24()
{
  sub_1000E8A44();
  v1 = v0 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
  sub_1000E8B48();
  v5 = v4;
  v6 = v3;
  v7 = v1;
  switch(v5)
  {
    case 1:
      v7 = 0xE600000000000000;
      v6 = 0x776569766572;
      break;
    case 2:
      v7 = 0xE600000000000000;
      v6 = 0x796669726576;
      break;
    case 3:
      sub_1000E8B9C();
      sub_1000E8C08();
      v7 = v1 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    default:
      break;
  }

  switch(v2)
  {
    case 1:
      v1 = 0xE600000000000000;
      v3 = 0x776569766572;
      break;
    case 2:
      v1 = 0xE600000000000000;
      v3 = 0x796669726576;
      break;
    case 3:
      sub_1000E8AFC();
      sub_1000E89EC();
      break;
    default:
      break;
  }

  if (v6 == v3 && v7 == v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000E8AC4();
  }

  return v9 & 1;
}

uint64_t sub_1000E2D58(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000074;
  v3 = 0x73694C6575737369;
  v4 = a1;
  v5 = 0x73694C6575737369;
  v6 = 0xE900000000000074;
  switch(v4)
  {
    case 1:
      v5 = 0x655364656B636F6CLL;
      v6 = 0xEE00797469727563;
      break;
    case 2:
      v5 = sub_1000E8CC8();
      v6 = 0x64726F7773;
      goto LABEL_6;
    case 3:
      sub_1000E8CA0();
      sub_1000E8BC8();
LABEL_6:
      v6 = v6 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    case 4:
      v5 = 0xD000000000000015;
      v6 = 0x8000000100133110;
      break;
    case 5:
      v5 = 0x52746E756F636361;
      v6 = 0xEF797265766F6365;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      sub_1000E8DF0();
      break;
    case 2:
      sub_1000E8B48();
      sub_1000E8A44();
      goto LABEL_13;
    case 3:
      sub_1000E8B5C();
      v2 = 0x746E756F63;
LABEL_13:
      v2 = v2 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    case 4:
      sub_1000E8AB8();
      break;
    case 5:
      sub_1000E8C40();
      sub_1000E8DD0();
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000E8AC4();
  }

  return v8 & 1;
}

uint64_t sub_1000E2F24(unsigned __int8 a1, char a2)
{
  v2 = 0x6F666E4961746562;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x6F666E4961746562;
  switch(v4)
  {
    case 1:
      sub_1000E8CDC();
      sub_1000E8A34();
      v3 = 0xEF73000000000000;
      break;
    case 2:
      sub_1000E8D94();
      break;
    case 3:
      v5 = sub_1000E8BE8(16);
      break;
    case 4:
      v5 = 0x6F53676E696D6F63;
      v3 = 0xEA00000000006E6FLL;
      break;
    case 5:
      sub_1000E8D58();
      v5 = v6 | 6;
      break;
    case 6:
      v5 = 0x68744F726F727265;
      v3 = 0xEA00000000007265;
      break;
    default:
      break;
  }

  v7 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      sub_1000E8D30();
      sub_1000E8BF8();
      v7 = 0xEF73000000000000;
      break;
    case 2:
      v2 = 0x7641657461647075;
      v7 = 0xEF656C62616C6961;
      break;
    case 3:
      sub_1000E8C50();
      break;
    case 4:
      v2 = 0x6F53676E696D6F63;
      v7 = 0xEA00000000006E6FLL;
      break;
    case 5:
      sub_1000E8DE4();
      v2 = 0xD000000000000016;
      break;
    case 6:
      v2 = 0x68744F726F727265;
      v7 = 0xEA00000000007265;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000E8A54();
  }

  return v9 & 1;
}

uint64_t sub_1000E3128(unsigned __int8 a1, char a2)
{
  v2 = 0x676F6C616964;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x676F6C616964;
  switch(v4)
  {
    case 1:
      sub_1000E8CC8();
      sub_1000E8A44();
      goto LABEL_5;
    case 2:
      v5 = 0x706574537478656ELL;
      v3 = 0xE900000000000073;
      break;
    case 3:
      v5 = sub_1000E8CA0();
      v3 = 0x746E756F63;
LABEL_5:
      v3 = v3 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      sub_1000E8B48();
      v6 = 0x64726F7773;
      goto LABEL_10;
    case 2:
      v2 = 0x706574537478656ELL;
      v6 = 0xE900000000000073;
      break;
    case 3:
      sub_1000E8B5C();
      sub_1000E8BC8();
LABEL_10:
      v6 = v6 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000E8A54();
  }

  return v8 & 1;
}

uint64_t sub_1000E3274()
{
  sub_1000A03E4();
  v3 = (v2 & 1) == 0;
  if (v2)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 0x616470556F747561;
  }

  if (v3)
  {
    v5 = 0xEB00000000736574;
  }

  else
  {
    v5 = v1;
  }

  if (v0)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0x616470556F747561;
  }

  if (v0)
  {
    v7 = v1;
  }

  else
  {
    v7 = 0xEB00000000736574;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000E8A54();
  }

  return v9 & 1;
}

uint64_t sub_1000E3328()
{
  sub_1000E8C60();
  sub_1000E8C40();
  v4 = v3 & 0xFFFFFFFFFFFFLL | 0x4974000000000000;
  v5 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v6 = 0x73656369766564;
    }

    else
    {
      v6 = 0x63416B636F6C6E75;
    }

    if (v5 == 1)
    {
      v7 = 0xE700000000000000;
    }

    else
    {
      v7 = 0xED0000746E756F63;
    }
  }

  else
  {
    v6 = v4;
    v7 = v0;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v4 = 0x73656369766564;
    }

    else
    {
      v4 = 0x63416B636F6C6E75;
    }

    if (v2 == 1)
    {
      v0 = 0xE700000000000000;
    }

    else
    {
      v0 = 0xED0000746E756F63;
    }
  }

  if (v6 == v4 && v7 == v0)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000E8AC4();
  }

  return v9 & 1;
}

uint64_t sub_1000E3424(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000022;
  v3 = "M";
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD00000000000002ALL;
    }

    else
    {
      v5 = 0xD00000000000002CLL;
    }

    if (v4 == 1)
    {
      v6 = "USTED_PHONE_ACCESS";
    }

    else
    {
      v6 = "USTED_PHONE_START_RECOVERY";
    }
  }

  else
  {
    v5 = 0xD000000000000022;
    v6 = "M";
  }

  if (a2)
  {
    v3 = "USTED_PHONE_ACCESS";
    v2 = a2 == 1 ? 0xD00000000000002ALL : 0xD00000000000002CLL;
    if (a2 != 1)
    {
      v3 = "USTED_PHONE_START_RECOVERY";
    }
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000E8A54();
  }

  return v8 & 1;
}

uint64_t sub_1000E34FC(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000022;
  v3 = "Sharing";
  v4 = "Sharing";
  v5 = a1;
  v6 = 0xD000000000000022;
  switch(v5)
  {
    case 1:
      v4 = "UNT_PASSWORD_RESET";
      v6 = 0xD000000000000026;
      break;
    case 2:
      v4 = "UNT_REVIEW_INFORMATION";
      break;
    case 3:
      v4 = "UNT_VERIFY_DEVICES";
      v6 = 0xD00000000000001ELL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = "UNT_PASSWORD_RESET";
      v2 = 0xD000000000000026;
      break;
    case 2:
      v3 = "UNT_REVIEW_INFORMATION";
      break;
    case 3:
      v3 = "UNT_VERIFY_DEVICES";
      v2 = 0xD00000000000001ELL;
      break;
    default:
      break;
  }

  if (v6 == v2 && (v4 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000E8A54();
  }

  return v8 & 1;
}

uint64_t sub_1000E3630(unsigned __int8 a1, char a2)
{
  v2 = 0x7265735561746562;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x7265735561746562;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1701736302;
      break;
    case 2:
      v5 = sub_1000E8BE8(16);
      break;
    case 3:
      sub_1000E8D58();
      v5 = v6 | 2;
      break;
    default:
      break;
  }

  v7 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE400000000000000;
      v2 = 1701736302;
      break;
    case 2:
      sub_1000E8C50();
      break;
    case 3:
      sub_1000E8DE4();
      v2 = 0xD000000000000012;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000E8A54();
  }

  return v9 & 1;
}

uint64_t sub_1000E37B0(unsigned __int8 a1, char a2)
{
  v2 = 0xEC0000004F464E49;
  v3 = 0x5F415445425F5553;
  v4 = a1;
  v5 = "SU_UPDATES_AVAILABLE";
  v6 = "SU_ERROR_INSUFFICIENT_SPACE";
  v7 = 0x5F415445425F5553;
  v8 = 0xEC0000004F464E49;
  v9 = "SU_COMING_SOON_AUTO_UPDATES";
  switch(v4)
  {
    case 1:
      sub_1000E8CDC();
      sub_1000E8BF8();
      v8 = 0xEF7300004F464E49;
      break;
    case 2:
      v7 = 0x4E494D4F435F5553;
      v11 = 0x4E4F4F535F47;
      goto LABEL_8;
    case 3:
      v7 = 0xD00000000000001BLL;
      v10 = "es";
      goto LABEL_6;
    case 4:
      v7 = 0xD00000000000001BLL;
      v10 = "SU_COMING_SOON_AUTO_UPDATES";
LABEL_6:
      v8 = v10 | 0x8000000000000000;
      break;
    case 5:
      v7 = 0x524F5252455F5553;
      v11 = 0x524548544F5FLL;
LABEL_8:
      v8 = v11 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    case 6:
      v8 = 0x8000000100132C80;
      v7 = 0xD000000000000014;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      sub_1000E8D30();
      sub_1000E8A34();
      v2 = 0xEF7300004F464E49;
      break;
    case 2:
      v3 = 0x4E494D4F435F5553;
      v13 = 0x4E4F4F535F47;
      goto LABEL_17;
    case 3:
      v3 = 0xD00000000000001BLL;
      v12 = v9 - 32;
      goto LABEL_15;
    case 4:
      v3 = 0xD00000000000001BLL;
      v12 = v6 - 32;
LABEL_15:
      v2 = v12 | 0x8000000000000000;
      break;
    case 5:
      v3 = 0x524F5252455F5553;
      v13 = 0x524548544F5FLL;
LABEL_17:
      v2 = v13 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    case 6:
      v2 = (v5 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000014;
      break;
    default:
      break;
  }

  if (v7 == v3 && v8 == v2)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1000E8AC4();
  }

  return v15 & 1;
}

uint64_t sub_1000E39D8()
{
  sub_1000E89A0();
  sub_1000E8B5C();
  v5 = v4;
  v6 = v2;
  v7 = v0;
  switch(v5)
  {
    case 1:
      v7 = 0x8000000100133170;
      v6 = 0xD000000000000015;
      break;
    case 2:
      v7 = 0x8000000100133190;
      v6 = v3 + 5;
      break;
    case 3:
      break;
    default:
      v7 = 0x8000000100133150;
      v6 = v3 + 1;
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0x8000000100133170;
      v2 = 0xD000000000000015;
      break;
    case 2:
      v0 = 0x8000000100133190;
      v2 = v3 + 5;
      break;
    case 3:
      break;
    default:
      v0 = 0x8000000100133150;
      v2 = v3 + 1;
      break;
  }

  if (v6 == v2 && v7 == v0)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000E8AC4();
  }

  return v9 & 1;
}

uint64_t sub_1000E3B24()
{
  sub_1000E8D80();
  v3 = "reportUnavailable";
  v4 = 1701736302;
  v5 = "insightsAvailable";
  switch(v6)
  {
    case 1:
      v4 = 0x6574746142776F6CLL;
      v0 = 0xEA00000000007972;
      break;
    case 2:
      sub_1000E8E04();
      break;
    case 3:
      v4 = 0xD000000000000011;
      v7 = "wBattery";
      goto LABEL_6;
    case 4:
      v4 = 0xD000000000000011;
      v7 = "insightsAvailable";
LABEL_6:
      v0 = v7 | 0x8000000000000000;
      break;
    default:
      break;
  }

  v8 = 0xE400000000000000;
  switch(v1)
  {
    case 1:
      v2 = 0x6574746142776F6CLL;
      v8 = 0xEA00000000007972;
      break;
    case 2:
      v2 = 0x61426C616D726F6ELL;
      v8 = 0xED00007972657474;
      break;
    case 3:
      v2 = 0xD000000000000011;
      v9 = v5 - 32;
      goto LABEL_12;
    case 4:
      v2 = 0xD000000000000011;
      v9 = v3 - 32;
LABEL_12:
      v8 = v9 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v4 == v2 && v0 == v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000E8A54();
  }

  return v11 & 1;
}

uint64_t sub_1000E3CD0(unsigned __int8 a1, char a2)
{
  v2 = 0x64656C6261736964;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x64656C6261736964;
  switch(v4)
  {
    case 1:
      v5 = 0x656E6E6F63736964;
      v3 = 0xEC00000064657463;
      break;
    case 2:
      v5 = sub_1000E8BE8(18);
      break;
    case 3:
      v5 = 0x6E6769536B616577;
      v3 = 0xEA00000000006C61;
      break;
    case 4:
      sub_1000E8DA8();
      break;
    case 5:
      v5 = 0x63657465446E7076;
      v3 = 0xEB00000000646574;
      break;
    case 6:
      v3 = 0x8000000100132970;
      v5 = 0xD000000000000014;
      break;
    case 7:
      sub_1000E8A34();
      goto LABEL_10;
    case 8:
      v5 = sub_1000E8B9C();
      v3 = 0x74726F707075;
LABEL_10:
      v3 = v3 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x656E6E6F63736964;
      v6 = 0xEC00000064657463;
      break;
    case 2:
      sub_1000E8C50();
      break;
    case 3:
      v2 = 0x6E6769536B616577;
      v6 = 0xEA00000000006C61;
      break;
    case 4:
      v2 = 0x4474726174736572;
      v6 = 0xED00006563697665;
      break;
    case 5:
      v2 = 0x63657465446E7076;
      v6 = 0xEB00000000646574;
      break;
    case 6:
      sub_1000E8DE4();
      v2 = 0xD000000000000014;
      break;
    case 7:
      sub_1000E8D1C();
      sub_1000E8BF8();
      goto LABEL_20;
    case 8:
      sub_1000E8AFC();
      sub_1000E8C08();
LABEL_20:
      v6 = 0xEE00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000E8A54();
  }

  return v8 & 1;
}

uint64_t sub_1000E3F5C()
{
  v0 = 1702196083;
  sub_1000E8D10();
  sub_1000E8C40();
  v3 = v2 & 0xFFFFFFFFFFFFLL | 0x4974000000000000;
  v5 = v4;
  v6 = v3;
  v7 = 1702196083;
  switch(v5)
  {
    case 1:
      sub_1000E8BC8();
      v7 = 0xED00000065757373;
      break;
    case 2:
      sub_1000E8B9C();
      sub_1000E8C08();
      v7 = 0xEE00000065757373;
      break;
    case 3:
      v6 = 0x756F636341646461;
      v7 = 0xEA0000000000746ELL;
      break;
    case 4:
      v6 = 0x75516E6F6D6D6F63;
      v7 = 0xEF736E6F69747365;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      sub_1000E89A0();
      break;
    case 2:
      sub_1000E8AFC();
      sub_1000E89EC();
      break;
    case 3:
      v3 = 0x756F636341646461;
      v0 = 0xEA0000000000746ELL;
      break;
    case 4:
      sub_1000E8CFC();
      break;
    default:
      break;
  }

  if (v6 == v3 && v7 == v0)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000E8AC4();
  }

  return v9 & 1;
}

uint64_t sub_1000E40F8()
{
  sub_1000E8B88();
  v3 = 0x615065676E616863;
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0x6573616863727570;
    }

    if (v4 == 1)
    {
      v6 = 0x80000001001329E0;
    }

    else
    {
      v6 = 0xEF79726F74736948;
    }
  }

  else
  {
    v5 = 0x615065676E616863;
    v6 = v0;
  }

  if (v2)
  {
    sub_1000A03E4();
    if (v8 == 1)
    {
      v3 = v9;
    }

    else
    {
      v3 = 0x6573616863727570;
    }

    if (v8 == 1)
    {
      v0 = v7;
    }

    else
    {
      v0 = 0xEF79726F74736948;
    }
  }

  if (v5 == v3 && v6 == v0)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000E8AC4();
  }

  return v11 & 1;
}

uint64_t sub_1000E4228()
{
  sub_1000E8D80();
  v3 = 1701736302;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v3 = 0x6F507269416C6C61;
      v0 = 0xEA00000000007364;
      break;
    case 3:
      v3 = 0x507269416F6D6564;
      v0 = 0xEB0000000073646FLL;
      break;
    case 4:
      v0 = 1685016690;
      sub_1000E8D10();
      break;
    default:
      v3 = 0xD000000000000018;
      v0 = 0x8000000100133060;
      break;
  }

  v5 = 0xE400000000000000;
  switch(v1)
  {
    case 1:
      break;
    case 2:
      v2 = 0x6F507269416C6C61;
      v5 = 0xEA00000000007364;
      break;
    case 3:
      v2 = 0x507269416F6D6564;
      v5 = 0xEB0000000073646FLL;
      break;
    case 4:
      v2 = 0x6941656C676E6973;
      v5 = 0xED000073646F5072;
      break;
    default:
      sub_1000E8DE4();
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1000E8A54();
  }

  return v7 & 1;
}

uint64_t sub_1000E4408(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000011;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = 0x53656761726F7473;
    }

    if (v3 == 1)
    {
      v5 = 0x8000000100132970;
    }

    else
    {
      v5 = 0xEF73676E69747465;
    }
  }

  else
  {
    v5 = 0x8000000100133430;
    v4 = 0xD000000000000011;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000014;
    }

    else
    {
      v2 = 0x53656761726F7473;
    }

    if (a2 == 1)
    {
      v6 = 0x8000000100132970;
    }

    else
    {
      v6 = 0xEF73676E69747465;
    }
  }

  else
  {
    v6 = 0x8000000100133430;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000E8A54();
  }

  return v8 & 1;
}

uint64_t sub_1000E44F4(unsigned __int8 a1, char a2)
{
  v2 = 0x6E496E676973;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x65526E496E676973;
    }

    else
    {
      v4 = 0x7361507465736572;
    }

    if (v3 == 1)
    {
      v5 = 0xEE00797265766F63;
    }

    else
    {
      v5 = 0xED000064726F7773;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x6E496E676973;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x65526E496E676973;
    }

    else
    {
      v2 = 0x7361507465736572;
    }

    if (a2 == 1)
    {
      v6 = 0xEE00797265766F63;
    }

    else
    {
      v6 = 0xED000064726F7773;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000E8A54();
  }

  return v8 & 1;
}

uint64_t sub_1000E4628(char a1, char a2)
{
  v3 = 0xD00000000000001BLL;
  v4 = "openApp";
  v5 = "openApp";
  switch(a1)
  {
    case 1:
      v5 = "BATTERY_NORMAL_USAGE_REVIEW";
      goto LABEL_5;
    case 2:
      v5 = "BATTERY_NORMAL_SUGGESTIONS";
      v3 = 0xD000000000000017;
      break;
    case 3:
      v5 = "BATTERY_SERVICE_SUPPORT";
LABEL_5:
      v3 = 0xD00000000000001ALL;
      break;
    default:
      break;
  }

  v6 = 0xD00000000000001BLL;
  switch(a2)
  {
    case 1:
      v4 = "BATTERY_NORMAL_USAGE_REVIEW";
      goto LABEL_10;
    case 2:
      v4 = "BATTERY_NORMAL_SUGGESTIONS";
      v6 = 0xD000000000000017;
      break;
    case 3:
      v4 = "BATTERY_SERVICE_SUPPORT";
LABEL_10:
      v6 = 0xD00000000000001ALL;
      break;
    default:
      break;
  }

  if (v3 == v6 && (v5 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000E8A54();
  }

  return v8 & 1;
}

uint64_t sub_1000E4780(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x73746E756F636361;
  }

  else
  {
    v3 = 0x53746E756F636361;
  }

  if (v2)
  {
    v4 = 0xEF73676E69747465;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (a2)
  {
    v5 = 0x73746E756F636361;
  }

  else
  {
    v5 = 0x53746E756F636361;
  }

  if (a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEF73676E69747465;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000E8A54();
  }

  return v8 & 1;
}

uint64_t sub_1000E4868(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1000E8A54();
  }

  return v10 & 1;
}

uint64_t sub_1000E48F8()
{
  sub_1000A03E4();
  v3 = (v2 & 1) == 0;
  if (v2)
  {
    v4 = 0xD00000000000001BLL;
  }

  else
  {
    v4 = 0x676E697461657263;
  }

  if (v3)
  {
    v5 = 0xEC00000065736143;
  }

  else
  {
    v5 = v1;
  }

  if (v0)
  {
    v6 = 0xD00000000000001BLL;
  }

  else
  {
    v6 = 0x676E697461657263;
  }

  if (v0)
  {
    v7 = v1;
  }

  else
  {
    v7 = 0xEC00000065736143;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000E8A54();
  }

  return v9 & 1;
}

uint64_t sub_1000E4994(uint64_t a1, uint64_t a2)
{
  v5 = 1701736270;
  v6 = type metadata accessor for SupportFlowIdentifier();
  v7 = sub_10007B688(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_10000C30C();
  v14 = v13 - v12;
  v15 = type metadata accessor for DefaultFlowOverride();
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v36 - v20;
  sub_10002CE08(a1, &v36 - v20);
  sub_100096960(v21);
  if (v33)
  {
    v24 = 0xE400000000000000;
    v22 = 1701736270;
  }

  else
  {
    (*(v9 + 32))(v14, v21, v2);
    v22 = SupportFlowIdentifier.rawValue.getter();
    v24 = v23;
    v25 = *(v9 + 8);
    v26 = sub_100052F8C();
    v27(v26);
  }

  sub_10002CE08(a2, v19);
  sub_100096960(v19);
  if (v33)
  {
    v29 = 0xE400000000000000;
  }

  else
  {
    (*(v9 + 32))(v14, v19, v2);
    v5 = SupportFlowIdentifier.rawValue.getter();
    v29 = v28;
    v30 = *(v9 + 8);
    v31 = sub_100052F8C();
    v32(v31);
  }

  v33 = v22 == v5 && v24 == v29;
  if (v33)
  {
    v34 = 1;
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v34 & 1;
}

uint64_t sub_1000E4BB0(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x73676E6974746573;
  }

  else
  {
    v3 = 0x7070416E65706FLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (a2)
  {
    v5 = 0x73676E6974746573;
  }

  else
  {
    v5 = 0x7070416E65706FLL;
  }

  if (a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000E8A54();
  }

  return v8 & 1;
}

uint64_t sub_1000E4C44()
{
  type metadata accessor for SupportFlowIdentifier();
  sub_1000E88A8(&qword_100191630, &type metadata accessor for SupportFlowIdentifier);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1000E8AC4();
  }

  return v1 & 1;
}

Swift::Int sub_1000E4DE4()
{
  v0 = sub_1000E8BB0();
  sub_1000E8A24(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000E4EB0()
{
  v0 = sub_1000E8BB0();
  sub_1000E8A24(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000E4F44()
{
  v0 = sub_1000E8BB0();
  sub_1000680C0(v0);
  sub_1000E8A94();

  return Hasher._finalize()();
}

Swift::Int sub_1000E5004(unsigned __int8 a1)
{
  sub_1000E8BB0();
  Hasher._combine(_:)(a1 - 1);
  return Hasher._finalize()();
}

Swift::Int sub_1000E5048()
{
  v0 = sub_1000E8BB0();
  sub_1000E8A24(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_1000E8CF0();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000E50BC(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_1000E8BB0();
  a2(v5, a1);
  return Hasher._finalize()();
}

Swift::Int sub_1000E51B8()
{
  v0 = sub_1000E8BB0();
  sub_1000E8A24(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000E5254(uint64_t a1, void (*a2)(uint64_t))
{
  sub_1000E8BB0();
  a2(a1);
  sub_1000E8A94();

  return Hasher._finalize()();
}

Swift::Int sub_1000E52C4()
{
  sub_1000E8BB0();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000E530C(Swift::UInt32 a1)
{
  sub_1000E8BB0();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t sub_1000E5374()
{
  sub_1000E8A00();
  switch(v0)
  {
    case 3:
      sub_1000E89EC();
      sub_1000E8B34();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1000E5418(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_1000E8DF0();
      break;
    case 2:
      sub_1000E8A00();
      break;
    case 3:
      sub_1000E89A0();
      sub_1000E8B20();
      break;
    case 4:
      sub_1000E8AB8();
      break;
    case 5:
      sub_1000E8DD0();
      sub_1000E8B10();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1000E54F8()
{
  sub_1000E8DBC();
  switch(v0)
  {
    case 1:
      sub_1000E8A34();
      sub_1000E8C88();
      break;
    case 2:
      sub_1000E8D94();
      break;
    case 3:
    case 5:
      sub_1000E8AB8();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1000E560C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_1000E8A00();
      break;
    case 3:
      sub_1000E89A0();
      sub_1000E8B20();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1000E56B8()
{
  sub_1000A03E4();
  String.hash(into:)();
}

uint64_t sub_1000E5744(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_1000E8C60();
    sub_1000E8B10();
  }

  String.hash(into:)();
}

uint64_t sub_1000E57D4()
{
  String.hash(into:)();
}

uint64_t sub_1000E585C()
{
  String.hash(into:)();
}

uint64_t sub_1000E5914()
{
  sub_1000E8DBC();
  switch(v0)
  {
    case 1:
      sub_1000E8C18();
      break;
    case 2:
    case 3:
      sub_1000E8AB8();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1000E5A0C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_1000E8A34();
      sub_1000E8C88();
      break;
    case 3:
    case 4:
    case 6:
      sub_1000E8AB8();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1000E5B5C()
{
  sub_1000E89A0();
  sub_1000E8B20();
  switch(v0)
  {
    case 3:
      break;
    default:
      sub_1000E8AB8();
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1000E5C38()
{
  sub_1000E8C18();
  switch(v0)
  {
    case 2:
      sub_1000E8E04();
      break;
    case 3:
    case 4:
      sub_1000E8CF0();
      sub_1000E8AB8();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1000E5D1C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 6:
      sub_1000E8AB8();
      break;
    case 4:
      sub_1000E8DA8();
      break;
    case 7:
      sub_1000E8A34();
      break;
    case 8:
      sub_1000E89EC();
      sub_1000E8B34();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1000E5E98()
{
  sub_1000E8D10();
  sub_1000E8B10();
  switch(v0)
  {
    case 1:
      sub_1000E89A0();
      break;
    case 2:
      sub_1000E89EC();
      sub_1000E8B34();
      break;
    case 4:
      sub_1000E8CFC();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1000E5FAC(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1000E89B4();
  }

  else
  {
    sub_1000E8B88();
    sub_1000E8D44();
  }

  String.hash(into:)();
}

uint64_t sub_1000E6054()
{
  String.hash(into:)();
}

uint64_t sub_1000E60C0()
{
  sub_1000E8C18();
  switch(v0)
  {
    case 1:
    case 2:
    case 3:
      break;
    case 4:
      sub_1000E8D10();
      break;
    default:
      sub_1000E8AB8();
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1000E61D8(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1000E8A70();
    sub_1000E8AE0();
  }

  else
  {
    sub_1000E8CF0();
    sub_1000E8AB8();
  }

  String.hash(into:)();
}

uint64_t sub_1000E625C(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_1000E8D6C();
  }

  String.hash(into:)();
}

uint64_t sub_1000E6308()
{
  String.hash(into:)();
}

uint64_t sub_1000E63DC()
{
  String.hash(into:)();
}

uint64_t sub_1000E64E0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  String.hash(into:)();
}

uint64_t sub_1000E6538()
{
  sub_1000A03E4();
  String.hash(into:)();
}

uint64_t sub_1000E65AC()
{
  v2 = v0;
  v3 = type metadata accessor for SupportFlowIdentifier();
  v4 = sub_10007B688(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10000C30C();
  v11 = v10 - v9;
  v12 = type metadata accessor for DefaultFlowOverride();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  sub_10000C30C();
  v16 = v15 - v14;
  sub_10002CE08(v2, v15 - v14);
  sub_100096960(v16);
  if (!v17)
  {
    (*(v6 + 32))(v11, v16, v1);
    SupportFlowIdentifier.rawValue.getter();
    v18 = *(v6 + 8);
    v19 = sub_100052F8C();
    v20(v19);
  }

  String.hash(into:)();
}

Swift::Int sub_1000E6700()
{
  v0 = Hasher.init(_seed:)();
  sub_1000680C0(v0);
  sub_1000E8A94();

  return Hasher._finalize()();
}

Swift::Int sub_1000E6744()
{
  sub_1000E8C28();
  sub_1000A03E4();
  sub_1000E8C70();

  return Hasher._finalize()();
}

Swift::Int sub_1000E6804()
{
  v0 = Hasher.init(_seed:)();
  sub_1000E8A24(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000E6854()
{
  sub_1000E8C28();
  sub_1000E8C70();

  return Hasher._finalize()();
}

Swift::Int sub_1000E6918()
{
  sub_1000E8C28();
  if (!v0)
  {
    sub_1000E8D6C();
  }

  sub_1000E8C70();

  return Hasher._finalize()();
}

Swift::Int sub_1000E69C8()
{
  sub_1000E8C28();
  if (v0)
  {
    sub_1000E8A70();
    sub_1000E8AE0();
  }

  else
  {
    sub_1000E8CF0();
    sub_1000E8AB8();
  }

  sub_1000E8C70();

  return Hasher._finalize()();
}

Swift::Int sub_1000E6A80()
{
  sub_1000E8C28();
  sub_1000E8C70();

  return Hasher._finalize()();
}

Swift::Int sub_1000E6B38()
{
  sub_1000E8C28();
  if (v0)
  {
    sub_1000E89B4();
  }

  else
  {
    sub_1000E8B88();
    sub_1000E8D44();
  }

  sub_1000E8C70();

  return Hasher._finalize()();
}

Swift::Int sub_1000E6B9C()
{
  v0 = Hasher.init(_seed:)();
  sub_1000E8A24(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_1000E8CF0();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000E6C04(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2 - 1);
  return Hasher._finalize()();
}

Swift::Int sub_1000E6C64()
{
  v0 = Hasher.init(_seed:)();
  sub_1000E8A24(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000E6CF8()
{
  v0 = Hasher.init(_seed:)();
  sub_1000E8A24(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000E6D7C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000E6E58()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1000E6EF4()
{
  sub_1000E8C28();
  if (!v0)
  {
    sub_1000E8C60();
    sub_1000E8B10();
  }

  sub_1000E8C70();

  return Hasher._finalize()();
}

Swift::Int sub_1000E6FA0()
{
  sub_1000E8C28();
  sub_1000A03E4();
  sub_1000E8C70();

  return Hasher._finalize()();
}

Swift::Int sub_1000E7060(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a3(a2);
  sub_1000E8A94();

  return Hasher._finalize()();
}

Swift::Int sub_1000E70CC(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  Hasher.init(_seed:)();
  a3(v6, a2);
  return Hasher._finalize()();
}

Swift::Int sub_1000E7118()
{
  sub_1000E8C28();
  Hasher._combine(_:)(v0);
  return Hasher._finalize()();
}

uint64_t sub_1000E7154()
{
  sub_1000A03E4();
  if (v0)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0x676E697461657263;
  }
}

unint64_t sub_1000E7240(char a1)
{
  result = 0x5349445F49464957;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0x6E6769536B616577;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x63657465446E7076;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1000E7430(char a1)
{
  if (a1)
  {
    sub_1000E8A70();
    sub_1000E8AE0();
  }

  else
  {
    sub_10009E06C();
  }
}

void sub_1000E7488(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:
    case 9:
    case 10:
      return;
    default:
      sub_10009E06C();
      break;
  }
}

uint64_t sub_1000E7610(char a1)
{
  if (!a1)
  {
    return 0x615065676E616863;
  }

  sub_1000E89B4();
  if (v3)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void sub_1000E76A0()
{
  sub_1000E8CA0();
  switch(v0)
  {
    case 1:
      sub_10009E06C();
      break;
    default:
      return;
  }
}

void sub_1000E7770(char a1)
{
  switch(a1)
  {
    case 1:
      sub_1000E8CDC();
      break;
    case 3:
    case 4:
      sub_10009E06C();
      break;
    default:
      return;
  }
}

void sub_1000E7888()
{
  sub_1000E8CA0();
  switch(v0)
  {
    case 1:
    case 2:
    case 4:
    case 5:
    case 6:
      return;
    case 3:
      sub_1000E8CB4(27);
      break;
    default:
      sub_10009E06C();
      break;
  }
}

uint64_t sub_1000E7A20(char a1)
{
  if (!a1)
  {
    return 0x49746E756F636361;
  }

  if (a1 == 1)
  {
    return 0x73656369766564;
  }

  return 0x63416B636F6C6E75;
}

uint64_t sub_1000E7A8C()
{
  sub_1000A03E4();
  if (v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x616470556F747561;
  }
}

void sub_1000E7ADC(char a1)
{
  switch(a1)
  {
    case 1:
    case 10:
    case 11:
    case 13:
      sub_10009E06C();
      break;
    case 5:
    case 6:
      sub_1000E8CB4(16);
      break;
    case 9:
      sub_1000E8B70();
      break;
    default:
      return;
  }
}

uint64_t sub_1000E7CC0(unsigned __int8 a1)
{
  sub_1000E8140(a1);
  v4 = v3;
  if (v2 == 0xD000000000000014 && 0x8000000100133300 == v3)
  {

    goto LABEL_14;
  }

  v6 = v2;
  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
LABEL_14:
    v47 = 0;
    sub_100003768(&qword_10018BFB0, &qword_100126DB0);
    sub_100057D3C();
    sub_100065C4C();
    sub_1000E8E18();
    _ConditionalContent<>.init(storage:)();
    v13 = &qword_100191610;
    v14 = &qword_10012FA48;
    sub_1000E8E18();
    sub_100006578(v15, v16, v17, v18);
    v48 = 0;
    v19 = sub_100052F8C();
    sub_100003768(v19, v20);
    sub_100003768(&qword_100191618, &qword_10012FA50);
    sub_1000E8798();
    sub_1000E8824();
    sub_1000E8BD8();
    _ConditionalContent<>.init(storage:)();
    v21 = &v34;
    return sub_10001D724(v21, v13, v14);
  }

  sub_1000E8D1C();
  if (v6 == v9 && v4 == v8)
  {

    goto LABEL_17;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
LABEL_17:
    v43 = &type metadata for AirPodsStepProvider;
    v44 = sub_100004C8C();
    v42[0] = 11;
    sub_1000E8E18();
    sub_100006578(v23, v24, v25, v26);
    type metadata accessor for FlowViewDataProvider(0);
    sub_1000E88A8(&qword_1001886D0, type metadata accessor for FlowViewDataProvider);
    v34 = Environment.init<A>(_:)();
    v35 = v27 & 1;
    v36 = 0xD000000000000018;
    v37 = 0x8000000100133320;
    v38 = 2;
    v39 = 1;
    v40 = 0;
    v41 = 0;
    sub_10000B5A8(&v34, v46);
    v46[104] = 1;
    sub_10000B604();
    sub_10000B658();
    _ConditionalContent<>.init(storage:)();
    sub_10000B6AC(&v34);
    sub_10001D724(v42, &qword_100189310, &qword_1001221A0);
    v13 = &qword_10018BFB0;
    v14 = &qword_100126DB0;
    sub_1000E8E18();
    sub_100006578(v28, v29, v30, v31);
    v47 = 1;
    v32 = sub_100052F8C();
    sub_100003768(v32, v33);
    sub_100057D3C();
    sub_100065C4C();
    _ConditionalContent<>.init(storage:)();
    sub_100006578(&v34, v46, &qword_100191610, &qword_10012FA48);
    v48 = 0;
    sub_100003768(&qword_100191610, &qword_10012FA48);
    sub_100003768(&qword_100191618, &qword_10012FA50);
    sub_1000E8798();
    sub_1000E8824();
    sub_1000E8BD8();
    _ConditionalContent<>.init(storage:)();
    sub_10001D724(&v34, &qword_100191610, &qword_10012FA48);
    v21 = &v45;
    return sub_10001D724(v21, v13, v14);
  }

  if (a1 <= 0xEu)
  {
    v12 = byte_10012FA62[a1];
  }

  sub_100003768(&qword_100191610, &qword_10012FA48);
  sub_100003768(&qword_100191618, &qword_10012FA50);
  sub_1000E8798();
  sub_1000E8824();
  sub_1000E8BD8();
  return _ConditionalContent<>.init(storage:)();
}

unint64_t sub_1000E80F4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100177030, v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

void sub_1000E8140(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
      return;
    case 14:
      sub_1000E8B9C();
      break;
    default:
      sub_10009E06C();
      break;
  }
}

unint64_t sub_1000E8428@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000E80F4(*a1);
  *a2 = result;
  return result;
}

void sub_1000E8458(void *a1@<X8>)
{
  sub_1000E8140(*v1);
  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_1000E84D0()
{
  result = qword_100191598;
  if (!qword_100191598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191598);
  }

  return result;
}

unint64_t sub_1000E8524()
{
  result = qword_1001915A0;
  if (!qword_1001915A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001915A0);
  }

  return result;
}

uint64_t sub_1000E85E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(&qword_1001915B0, &qword_10012F948);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000E865C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000E8698()
{
  result = qword_1001915F8;
  if (!qword_1001915F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001915F8);
  }

  return result;
}

unint64_t sub_1000E86EC()
{
  result = qword_100191600;
  if (!qword_100191600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191600);
  }

  return result;
}

unint64_t sub_1000E8744()
{
  result = qword_100191608;
  if (!qword_100191608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191608);
  }

  return result;
}

unint64_t sub_1000E8798()
{
  result = qword_100191620;
  if (!qword_100191620)
  {
    sub_100004D48(&qword_100191610, &qword_10012FA48);
    sub_100057D3C();
    sub_100065C4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191620);
  }

  return result;
}
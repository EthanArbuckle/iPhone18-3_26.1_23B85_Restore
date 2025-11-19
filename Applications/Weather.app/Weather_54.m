unint64_t sub_1005D7AA0(char a1)
{
  result = 0x5364657265746E65;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000022;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
    case 9:
      v3 = 10;
      goto LABEL_13;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000019;
      break;
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 13:
      v3 = 11;
LABEL_13:
      result = v3 | 0xD000000000000014;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    default:
      result = 0xD00000000000001BLL;
      break;
  }

  return result;
}

uint64_t sub_1005D7C60(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CC92B8);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_1005D8658();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  sub_100004630();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = *(v3 + 8);
    HIBYTE(v13) = 1;
    sub_10022C350(&qword_100CBF810);
    sub_1004CD80C(&qword_100CBF828);
    sub_100004630();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10001F288(2);
    sub_10001F288(3);
    sub_10001F288(4);
    sub_10001F288(5);
    sub_10001F288(6);
    v11 = type metadata accessor for NotificationsOptInState();
    LOBYTE(v14) = 7;
    type metadata accessor for Date();
    sub_10005B714(&qword_100CA39B8);
    sub_100004630();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10001F288(8);
    sub_10001F288(9);
    LOBYTE(v14) = *(v3 + *(v11 + 56));
    HIBYTE(v13) = 10;
    sub_1005D875C();
    sub_100004630();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10001F288(11);
    sub_10001F288(12);
    sub_10001F288(13);
    sub_10001F288(14);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1005D7F9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = type metadata accessor for Date();
  sub_1000037C4();
  v21 = v5;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  sub_10022C350(&qword_100CC92A0);
  sub_1000037C4();
  __chkstk_darwin(v10);
  v22 = type metadata accessor for NotificationsOptInState();
  __chkstk_darwin(v22);
  sub_1000037D8();
  v24 = v12 - v11;
  sub_1000161C0(a1, a1[3]);
  sub_1005D8658();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  LOBYTE(v25) = 0;
  sub_10000463C();
  *v24 = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  sub_10022C350(&qword_100CBF810);
  sub_1004CD80C(&qword_100CBF818);
  sub_10000463C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v24 + 8) = v25;
  *(v24 + 16) = sub_10001C708(2) & 1;
  *(v24 + 17) = sub_10001C708(3) & 1;
  *(v24 + 18) = sub_10001C708(4) & 1;
  *(v24 + 19) = sub_10001C708(5) & 1;
  *(v24 + 20) = sub_10001C708(6) & 1;
  sub_10005B714(&qword_100CA3998);
  sub_10000463C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v21 + 32))(v24 + v22[11], v9, v23);
  *(v24 + v22[12]) = sub_10001C708(8) & 1;
  v13 = sub_10001C708(9);
  sub_100019B58(v13, v22[13]);
  sub_1005D86AC();
  sub_10000463C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v24 + v22[14]) = 7;
  v14 = sub_100008A2C(11);
  sub_100019B58(v14, v22[15]);
  v15 = sub_100008A2C(12);
  sub_100019B58(v15, v22[16]);
  v16 = sub_100008A2C(13);
  sub_100019B58(v16, v22[17]);
  v17 = sub_100008A2C(14);
  v18 = sub_1000287BC();
  v19(v18);
  *(v24 + v22[18]) = v17 & 1;
  sub_1000CA574(v24, a2);
  sub_100006F14(a1);
  return sub_1005D8700(v24);
}

uint64_t sub_1005D852C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005D7628(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005D8554@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1005D7A98();
  *a1 = result;
  return result;
}

uint64_t sub_1005D857C(uint64_t a1)
{
  v2 = sub_1005D8658();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005D85B8(uint64_t a1)
{
  v2 = sub_1005D8658();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1005D8658()
{
  result = qword_100CC92A8;
  if (!qword_100CC92A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC92A8);
  }

  return result;
}

unint64_t sub_1005D86AC()
{
  result = qword_100CC92B0;
  if (!qword_100CC92B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC92B0);
  }

  return result;
}

uint64_t sub_1005D8700(uint64_t a1)
{
  v2 = type metadata accessor for NotificationsOptInState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1005D875C()
{
  result = qword_100CC92C0;
  if (!qword_100CC92C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC92C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotificationsOptInState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NotificationsOptInState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1005D8918()
{
  result = qword_100CC92C8;
  if (!qword_100CC92C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC92C8);
  }

  return result;
}

unint64_t sub_1005D8970()
{
  result = qword_100CC92D0;
  if (!qword_100CC92D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC92D0);
  }

  return result;
}

unint64_t sub_1005D89C8()
{
  result = qword_100CC92D8;
  if (!qword_100CC92D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC92D8);
  }

  return result;
}

uint64_t sub_1005D8A1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location.Identifier();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CADBA0);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_10022C350(&qword_100CADD58);
  sub_1000037E8();
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  if ((sub_1005D8CCC(a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  v15 = *(type metadata accessor for ToolbarSearchViewModel(0) + 20);
  v16 = *(v11 + 48);
  sub_1000952C4(a1 + v15, v14);
  sub_1000952C4(a2 + v15, &v14[v16]);
  sub_100003A40(v14);
  if (v17)
  {
    sub_100003A40(&v14[v16]);
    if (v17)
    {
      sub_1000180EC(v14, &qword_100CADBA0);
LABEL_14:
      sub_1000B9424();
      return v18 & 1;
    }

    goto LABEL_10;
  }

  sub_1000952C4(v14, v10);
  sub_100003A40(&v14[v16]);
  if (v17)
  {
    (*(v5 + 8))(v10, v4);
LABEL_10:
    sub_1000180EC(v14, &qword_100CADD58);
    goto LABEL_11;
  }

  (*(v5 + 32))(v7, &v14[v16], v4);
  sub_1000E8FAC();
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v5 + 8);
  v21(v7, v4);
  v21(v10, v4);
  sub_1000180EC(v14, &qword_100CADBA0);
  if (v20)
  {
    goto LABEL_14;
  }

LABEL_11:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1005D8CCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewLocation();
  __chkstk_darwin(v4 - 8);
  v75 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v76 = &v75 - v7;
  type metadata accessor for ToolbarSearchViewModel.State(0);
  sub_1000037E8();
  __chkstk_darwin(v8);
  v10 = (&v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = (&v75 - v12);
  __chkstk_darwin(v14);
  v16 = (&v75 - v15);
  __chkstk_darwin(v17);
  v19 = (&v75 - v18);
  __chkstk_darwin(v20);
  v22 = &v75 - v21;
  v23 = sub_10022C350(&qword_100CC92E0);
  __chkstk_darwin(v23 - 8);
  v25 = &v75 - v24;
  v27 = &v75 + *(v26 + 56) - v24;
  sub_1005D92D4(a1, &v75 - v24);
  sub_1005D92D4(a2, v27);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1005D92D4(v25, v19);
      v55 = *v19;
      v54 = v19[1];
      v56 = v19[2];
      if (sub_1000062D0() != 1)
      {

        goto LABEL_38;
      }

      v57 = *(v27 + 2);
      if (v55 == *v27 && v54 == *(v27 + 1))
      {
      }

      else
      {
        v59 = sub_100014A84();

        if ((v59 & 1) == 0)
        {

          goto LABEL_55;
        }
      }

      sub_1009EC92C(v56, v57, v60, v61, v62, v63, v64, v65, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86);
      v72 = v71;

      if ((v72 & 1) == 0)
      {
        goto LABEL_55;
      }

      sub_1000B9424();
      v69 = v73;

      goto LABEL_54;
    case 2u:
      sub_1005D92D4(v25, v16);
      v39 = *v16;
      v38 = v16[1];
      if (sub_1000062D0() != 2)
      {
        goto LABEL_39;
      }

      if (v39 == *v27 && v38 == *(v27 + 1))
      {
        goto LABEL_59;
      }

      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v41)
      {
        goto LABEL_60;
      }

      goto LABEL_56;
    case 3u:
      sub_1005D92D4(v25, v13);
      v43 = *v13;
      v42 = v13[1];
      v44 = *(sub_10022C350(&qword_100CC92E8) + 48);
      if (sub_1000062D0() != 3)
      {
        sub_1005D9338(v13 + v44, type metadata accessor for PreviewLocation);
        goto LABEL_39;
      }

      v46 = *v27;
      v45 = *(v27 + 1);
      v47 = v13 + v44;
      v48 = v76;
      sub_100431B6C(v47, v76);
      v49 = &v27[v44];
      v50 = v75;
      sub_100431B6C(v49, v75);
      if (v43 == v46 && v42 == v45)
      {
      }

      else
      {
        v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v52 & 1) == 0)
        {
          sub_10001C72C();
          sub_1005D9338(v50, v53);
          sub_1005D9338(v48, v42);
          goto LABEL_56;
        }
      }

      sub_1006E6E98();
      v69 = v68;
      sub_10001C72C();
      sub_1005D9338(v50, v70);
      sub_1005D9338(v48, v42);
LABEL_54:
      sub_10001F2AC();
      return v69 & 1;
    case 4u:
      sub_1005D92D4(v25, v10);
      v31 = *v10;
      v30 = v10[1];
      v33 = v10[2];
      v32 = v10[3];
      if (sub_1000062D0() != 4)
      {
LABEL_38:

LABEL_39:

LABEL_40:
        sub_1000180EC(v25, &qword_100CC92E0);
        goto LABEL_57;
      }

      v35 = *(v27 + 2);
      v34 = *(v27 + 3);
      if (v31 == *v27 && v30 == *(v27 + 1))
      {
      }

      else
      {
        v37 = sub_100014A84();

        if ((v37 & 1) == 0)
        {
LABEL_55:

          goto LABEL_56;
        }
      }

      if (v33 == v35 && v32 == v34)
      {
LABEL_59:
      }

      else
      {
        v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v67 & 1) == 0)
        {
          goto LABEL_56;
        }
      }

      goto LABEL_60;
    default:
      sub_1005D92D4(v25, v22);
      v28 = v22[1];
      if (sub_1000062D0())
      {
        goto LABEL_40;
      }

      if (*v22 != *v27)
      {
        goto LABEL_56;
      }

      v29 = v27[1];
      if (v28 == 2)
      {
        if (v29 == 2)
        {
LABEL_60:
          sub_10001F2AC();
          v69 = 1;
          return v69 & 1;
        }
      }

      else if (v29 != 2 && ((v29 ^ v28) & 1) == 0)
      {
        goto LABEL_60;
      }

LABEL_56:
      sub_10001F2AC();
LABEL_57:
      v69 = 0;
      return v69 & 1;
  }
}

uint64_t sub_1005D92D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarSearchViewModel.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005D9338(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1005D93B8()
{
  type metadata accessor for ToolbarSearchViewModel.State(319);
  if (v0 <= 0x3F)
  {
    sub_100009C68(319, &qword_100CADC30, &type metadata accessor for Location.Identifier, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100009C68(319, &unk_100CB0F30, &type metadata accessor for LocationOfInterest, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1005D94B4()
{
  sub_1005D9564();
  if (v0 <= 0x3F)
  {
    sub_1005D95DC();
    if (v1 <= 0x3F)
    {
      sub_1005D9670();
      if (v2 <= 0x3F)
      {
        sub_1005D9698();
        if (v3 <= 0x3F)
        {
          sub_1005D9704();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1005D9564()
{
  if (!qword_100CC9408)
  {
    sub_10022E824(&qword_100CC9410);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100CC9408);
    }
  }
}

void sub_1005D95DC()
{
  if (!qword_100CC9418)
  {
    sub_10022E824(&qword_100CA64C8);
    sub_10022E824(&qword_100CA64A8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100CC9418);
    }
  }
}

void *sub_1005D9670()
{
  result = qword_100CC9420;
  if (!qword_100CC9420)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_100CC9420);
  }

  return result;
}

void sub_1005D9698()
{
  if (!qword_100CC9428)
  {
    type metadata accessor for PreviewLocation();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100CC9428);
    }
  }
}

void sub_1005D9704()
{
  if (!qword_100CC9430)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100CC9430);
    }
  }
}

id sub_1005D9764()
{
  sub_100035B30(v0, v9);
  v1 = sub_10002D7F8(v9, v10);
  v2 = __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v5 + 16))(v4, v2);
  v6 = sub_1005DA008(*v4);
  sub_100006F14(v9);
  return v6;
}

id sub_1005D9844()
{
  v0 = [objc_opt_self() systemFontOfSize:60.0];
  v1 = objc_opt_self();
  v2 = [v1 configurationWithFont:v0 scale:-1];

  v3 = [objc_opt_self() systemBlueColor];
  v4 = [v1 configurationWithHierarchicalColor:v3];

  sub_100169C04();
  v48 = v2;
  v5 = sub_10038F9FC(0x616C732E6C6C6562, 0xEF6C6C69662E6873, v2);
  v46 = v4;
  v47 = v5;
  if (v5)
  {
    v6 = [v5 imageByApplyingSymbolConfiguration:v4];
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v14 = sub_10001C744(0xD000000000000024, 0x8000000100AD6EC0, v9, v10, v11, v12, v13, 0xD000000000000041);
  v16 = v15;

  v17 = [v7 mainBundle];
  v23 = sub_10001C744(0xD000000000000084, 0x8000000100AC4490, v18, v19, v20, v21, v22, 0xD000000000000050);
  v25 = v24;

  v26 = objc_allocWithZone(OBWelcomeController);
  v45 = v6;
  v27 = sub_10038FDF4(v14, v16, v23, v25, v6);
  v28 = [objc_opt_self() boldButton];
  v29 = sub_1000104FC();
  v50._object = v6;
  sub_1000080F4();
  v50._countAndFlagsBits = 0xD00000000000001FLL;
  v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v30, v31, v32, v33, v50);

  sub_10038FE94(v34._countAndFlagsBits, v34._object, 0, v28);
  sub_10022C350(&qword_100CC94A0);
  UIViewControllerRepresentableContext.coordinator.getter();
  [v28 addTarget:v49 action:"goToSettingsButtonTapped" forControlEvents:64];

  v35 = [v27 buttonTray];
  [v35 addButton:v28];

  v36 = [objc_opt_self() linkButton];
  v37 = sub_1000104FC();
  v51._object = v34._countAndFlagsBits;
  sub_1000080F4();
  v42 = NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v39, v40, v41, v51);

  sub_10038FE94(v42._countAndFlagsBits, v42._object, 0, v36);
  UIViewControllerRepresentableContext.coordinator.getter();
  [v36 addTarget:v49 action:"notNowButtonTapped" forControlEvents:64];

  v43 = [v27 buttonTray];
  [v43 addButton:v36];

  [v27 setModalPresentationStyle:2];
  return v27;
}

id sub_1005D9CF0@<X0>(void *a1@<X8>)
{
  result = sub_1005D9764();
  *a1 = result;
  return result;
}

uint64_t sub_1005D9D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005D9FB4();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1005D9D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005D9FB4();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1005D9DE0()
{
  sub_1005D9FB4();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1005D9F60()
{
  result = qword_100CC9490;
  if (!qword_100CC9490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC9490);
  }

  return result;
}

unint64_t sub_1005D9FB4()
{
  result = qword_100CC9498;
  if (!qword_100CC9498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC9498);
  }

  return result;
}

id sub_1005DA008(uint64_t *a1)
{
  v1 = *a1;
  v14[3] = v1;
  v14[4] = &off_100C5C078;
  v14[0] = a1;
  v2 = type metadata accessor for NotificationLoweredPermissionView.Coordinator();
  v3 = objc_allocWithZone(v2);
  v4 = sub_10002D7F8(v14, v1);
  v5 = __chkstk_darwin(v4);
  v7 = (&v12 - v6);
  (*(v8 + 16))(&v12 - v6, v5);
  v9 = *v7;
  v13[3] = v1;
  v13[4] = &off_100C5C078;
  v13[0] = v9;
  sub_100035B30(v13, v3 + OBJC_IVAR____TtCV7Weather33NotificationLoweredPermissionView11Coordinator_interactor);
  v12.receiver = v3;
  v12.super_class = v2;
  v10 = objc_msgSendSuper2(&v12, "init");
  sub_100006F14(v13);
  sub_100006F14(v14);
  return v10;
}

Swift::String *sub_1005DA160@<X0>(Swift::String **a1@<X8>)
{
  v2 = type metadata accessor for NewsArticleComponentViewModelFactory();
  swift_allocObject();
  result = sub_1000472A8();
  a1[3] = v2;
  a1[4] = &off_100C60578;
  *a1 = result;
  return result;
}

uint64_t sub_1005DA2A4(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for Tracker();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v2 = Tracker.chain(name:identifier:)();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005DA32C()
{
  sub_10022C350(&qword_100CC95B8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC95C0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC9558);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC95C8);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for LocationViewModelFactory();
  RegistrationContainer.register<A>(_:name:factory:)();

  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC95D0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA4B98);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA4B60);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC95D8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC95E0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC95E8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC95F0);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for AirQualityComponentViewModelFactory();
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC95F8);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for DailyForecastComponentViewModelFactory();
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC9600);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for FeelsLikeComponentViewModelFactory();
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC9608);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for HourlyForecastComponentViewModelFactory();
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC9610);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC9618);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC9620);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for MoonComponentViewModelFactory();
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC6418);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC9628);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for NextHourPrecipitationStringBuilder();
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC6420);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC9630);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC9638);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC9640);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for PressureComponentViewModelFactory();
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC9648);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for PrecipitationTotalComponentViewModelFactory();
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC9650);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC9658);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC9660);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC9668);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC9670);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for AveragesComponentViewModelFactory();
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC9678);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC9680);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for UVIndexComponentViewModelFactory();
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC9688);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for VisibilityComponentViewModelFactory();
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC9690);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for WindComponentViewModelFactory();
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_1005DAE90@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for Tracker();
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4918);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v11)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    a2[3] = &type metadata for LocationTracker;
    a2[4] = &off_100C5CC60;
    v6 = swift_allocObject();
    *a2 = v6;
    *(v6 + 16) = v5;
    result = sub_100013188(&v10, v6 + 24);
    *(v6 + 64) = v7;
    *(v6 + 72) = v8;
    *(v6 + 88) = v9;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1005DB00C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v31)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC95B8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v30)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  type metadata accessor for WireframeLevelInterestManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for TipCoordinator();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  v22 = v32;
  v23 = v31;
  v24 = a2;
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for VisibleLocationWeatherLoadMonitor();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v7 = result;
    v8 = sub_10002D7F8(v29, v30);
    v9 = __chkstk_darwin(v8);
    v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v11, v9);
    v28[3] = &type metadata for LocationTracker;
    v28[4] = &off_100C5CC60;
    v28[0] = swift_allocObject();
    memcpy((v28[0] + 16), v11, 0x50uLL);
    type metadata accessor for LocationInteractor();
    v13 = swift_allocObject();
    v14 = sub_10002D7F8(v28, &type metadata for LocationTracker);
    v15 = __chkstk_darwin(v14);
    v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v17, v15);
    v26 = &type metadata for LocationTracker;
    v27 = &off_100C5CC60;
    *&v25 = swift_allocObject();
    memcpy((v25 + 16), v17, 0x50uLL);
    v19 = v22;
    v13[2] = v23;
    v13[3] = v19;
    sub_100013188(&v25, (v13 + 4));
    v13[9] = v5;
    v13[10] = v6;
    v13[11] = v7;
    sub_100006F14(v28);
    result = sub_100006F14(v29);
    v20 = v24;
    *v24 = v13;
    v20[1] = &off_100C6A870;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1005DB390@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB9788);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v27)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC95E8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v25)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB9790);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v23)
  {
    v5 = sub_10002D7F8(v26, v27);
    v6 = __chkstk_darwin(v5);
    v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v9 + 16))(v8, v6);
    v10 = sub_10002D7F8(v24, v25);
    v11 = __chkstk_darwin(v10);
    v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v14 + 16))(v13, v11);
    v15 = sub_10002D7F8(v22, v23);
    v16 = __chkstk_darwin(v15);
    v18 = &v22[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v19 + 16))(v18, v16);
    v20 = sub_1000662FC(*v8, *v13, v18);
    sub_100006F14(v22);
    sub_100006F14(v24);
    sub_100006F14(v26);
    result = type metadata accessor for StandardLocationViewConfigurationFactory();
    a2[3] = result;
    a2[4] = &off_100C78AD0;
    *a2 = v20;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1005DB6CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC60);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    v4 = type metadata accessor for NewsArticleComponentFactory();
    v5 = swift_allocObject();
    result = sub_100013188(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_100C5C220;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005DB778(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9560);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v112)
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9558);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v110)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9548);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v108)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC60);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v106)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC96D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v104)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC96D8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v102)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC96E0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v100)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB9798);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v98)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB97A0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v96)
  {
    v3 = sub_10002D7F8(v111, v112);
    v84 = &v77;
    v4 = __chkstk_darwin(v3);
    v6 = (&v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6, v4);
    v8 = sub_10002D7F8(v107, v108);
    v83 = &v77;
    v9 = __chkstk_darwin(v8);
    v11 = (&v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = sub_10002D7F8(v97, v98);
    v82 = &v77;
    v14 = __chkstk_darwin(v13);
    v16 = (&v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = sub_10002D7F8(v95, v96);
    v81 = &v77;
    v19 = __chkstk_darwin(v18);
    v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v21, v19);
    v23 = *v6;
    v24 = *v11;
    v25 = *v16;
    v26 = type metadata accessor for LocationComponentViewModelFactory();
    v94[3] = v26;
    v94[4] = &off_100C55358;
    v94[0] = v23;
    v27 = type metadata accessor for LocationContentViewModelFactory();
    v92 = v27;
    v93 = &off_100C78310;
    v91[0] = v24;
    v28 = type metadata accessor for LocationFinder();
    v89 = v28;
    v90 = &off_100C5EE88;
    v88[0] = v25;
    v86 = &type metadata for AddLocationContextHelper;
    v87 = &off_100C59608;
    v29 = swift_allocObject();
    v85[0] = v29;
    v30 = *(v21 + 1);
    *(v29 + 16) = *v21;
    *(v29 + 32) = v30;
    *(v29 + 48) = *(v21 + 4);
    type metadata accessor for LocationViewModelFactory();
    v31 = swift_allocObject();
    v32 = sub_10002D7F8(v94, v26);
    v80 = &v77;
    v33 = __chkstk_darwin(v32);
    v35 = (&v77 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v36 + 16))(v35, v33);
    v37 = sub_10002D7F8(v91, v92);
    v79 = &v77;
    v38 = __chkstk_darwin(v37);
    v40 = (&v77 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v41 + 16))(v40, v38);
    v42 = sub_10002D7F8(v88, v89);
    v78 = &v77;
    v43 = __chkstk_darwin(v42);
    v45 = (&v77 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v46 + 16))(v45, v43);
    v47 = sub_10002D7F8(v85, v86);
    v77 = &v77;
    v48 = __chkstk_darwin(v47);
    v50 = &v77 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v51 + 16))(v50, v48);
    v52 = *v35;
    v53 = *v40;
    v54 = *v45;
    v31[5] = v26;
    v31[6] = &off_100C55358;
    v31[2] = v52;
    v31[15] = v27;
    v31[16] = &off_100C78310;
    v31[12] = v53;
    v31[40] = v28;
    v31[41] = &off_100C5EE88;
    v31[37] = v54;
    v31[45] = &type metadata for AddLocationContextHelper;
    v31[46] = &off_100C59608;
    v55 = swift_allocObject();
    v31[42] = v55;
    v56 = *(v50 + 1);
    *(v55 + 16) = *v50;
    *(v55 + 32) = v56;
    *(v55 + 48) = *(v50 + 4);
    v57 = OBJC_IVAR____TtC7Weather24LocationViewModelFactory_lastWeatherData;
    v58 = type metadata accessor for WeatherData(0);
    sub_10001B350(v31 + v57, 1, 1, v58);
    v59 = OBJC_IVAR____TtC7Weather24LocationViewModelFactory_lastNewsData;
    v60 = type metadata accessor for NewsDataModel();
    sub_10001B350(v31 + v59, 1, 1, v60);
    v61 = OBJC_IVAR____TtC7Weather24LocationViewModelFactory_lastViewModel;
    v62 = type metadata accessor for LocationViewModel();
    sub_10001B350(v31 + v61, 1, 1, v62);
    v63 = OBJC_IVAR____TtC7Weather24LocationViewModelFactory_lastPreprocessedDataUuid;
    v64 = type metadata accessor for UUID();
    sub_10001B350(v31 + v63, 1, 1, v64);
    v65 = OBJC_IVAR____TtC7Weather24LocationViewModelFactory_logger;
    sub_100046E64();
    *(v31 + v65) = OS_os_log.init(subsystem:category:)();
    v66 = (v31 + OBJC_IVAR____TtC7Weather24LocationViewModelFactory_myLocationString);
    v67 = objc_opt_self();
    v68 = [v67 mainBundle];
    v113._object = 0x8000000100AD7020;
    v69._countAndFlagsBits = 0x7461636F4C20794DLL;
    v69._object = 0xEB000000006E6F69;
    v113._countAndFlagsBits = 0xD00000000000003DLL;
    v70._countAndFlagsBits = 0;
    v70._object = 0xE000000000000000;
    v71 = NSLocalizedString(_:tableName:bundle:value:comment:)(v69, 0, v68, v70, v113);

    *v66 = v71;
    v72 = (v31 + OBJC_IVAR____TtC7Weather24LocationViewModelFactory_myLocationAllCapsString);
    v73 = [v67 mainBundle];
    v114._object = 0x8000000100AD7060;
    v74._countAndFlagsBits = 0x5441434F4C20594DLL;
    v74._object = 0xEB000000004E4F49;
    v114._countAndFlagsBits = 0xD000000000000053;
    v75._countAndFlagsBits = 0;
    v75._object = 0xE000000000000000;
    v76 = NSLocalizedString(_:tableName:bundle:value:comment:)(v74, 0, v73, v75, v114);

    *v72 = v76;
    sub_100013188(&v109, (v31 + 7));
    sub_100013188(&v105, (v31 + 17));
    sub_100013188(&v103, (v31 + 22));
    sub_100013188(&v101, (v31 + 27));
    sub_100013188(&v99, (v31 + 32));
    sub_100006F14(v85);
    sub_100006F14(v88);
    sub_100006F14(v91);
    sub_100006F14(v94);
    sub_100006F14(v95);
    sub_100006F14(v97);
    sub_100006F14(v107);
    sub_100006F14(v111);
    return v31;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1005DC340@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC95E8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v21)
  {
    v4 = sub_10002D7F8(v20, v21);
    v5 = __chkstk_darwin(v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for LocationViewComponentFactory();
    v19[3] = v10;
    v19[4] = &off_100C74BA8;
    v19[0] = v9;
    v11 = type metadata accessor for AlternativeLocationViewConfigurationFactory();
    v12 = swift_allocObject();
    v13 = sub_10002D7F8(v19, v10);
    v14 = __chkstk_darwin(v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_100C74BA8;
    v12[2] = v18;
    sub_100006F14(v19);
    result = sub_100006F14(v20);
    a2[3] = v11;
    a2[4] = &off_100C4F7A0;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005DC584(void *a1)
{
  v2 = sub_10022C350(&unk_100CE2F20);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - v3;
  v5 = type metadata accessor for LocationModel();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v34 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  sub_1000161C0(a1, a1[3]);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  result = sub_100024D10(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v12 = *(v6 + 32);
  v12(v10, v4, v5);
  sub_1000161C0(a1, a1[3]);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  v33 = LOBYTE(v45[0]);
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC95D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v44)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v32 = v10;
  sub_100013188(&v43, v45);
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9550);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v41)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v31 = v12;
  v13 = v6;
  sub_100013188(&v40, &v43);
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v14 = v36;
  if (v36)
  {
    v30 = v39;
    v29 = v38;
    v28 = v37;
    v15 = *sub_1000161C0(v45, v45[3]);
    v41 = type metadata accessor for LocationInputFactory();
    v42 = &off_100C70690;
    *&v40 = v15;
    sub_100035B30(&v40, v35);
    v16 = swift_allocObject();
    sub_100013188(v35, v16 + 16);

    sub_100006F14(&v40);
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1005DE3C0;
    *(v17 + 24) = v16;
    sub_100035B30(&v43, &v40);
    v18 = v13;
    v19 = *(v13 + 16);
    v20 = v34;
    v21 = v32;
    v19(v34, v32, v5);
    v22 = (*(v18 + 80) + 56) & ~*(v18 + 80);
    v23 = v22 + v7;
    v24 = swift_allocObject();
    sub_100013188(&v40, v24 + 16);
    v31(v24 + v22, v20, v5);
    *(v24 + v23) = v33 & 1;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_10009F868;
    *(v25 + 24) = v17;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1005DE3C8;
    *(v26 + 24) = v24;
    sub_10022C350(&qword_100CA4B98);
    swift_allocObject();
    v27 = sub_100097AFC(v14, v28, v29, v30, sub_1005DCAD0, 0, sub_10009F81C, v25, sub_1000E87D0, v26);
    sub_100006F14(&v43);
    (*(v18 + 8))(v21, v5);
    sub_100006F14(v45);
    return v27;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1005DCAD0(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    return 1;
  }

  sub_100963D14();
  return 0;
}

uint64_t sub_1005DCB94@<X0>(_BYTE *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_1000161C0(a2, a2[3]);
  sub_100142F28(a1, a3, a4 & 1, a5);
  v9 = type metadata accessor for LocationViewModel();

  return sub_10001B350(a5, 0, 1, v9);
}

uint64_t sub_1005DCC20(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v24;
  v4 = v25;
  v6 = v23;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC95D8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *sub_1000161C0(v20, v21);
  active = type metadata accessor for ActiveLocationInputFactory();
  v19 = &off_100C4F948;
  v17[0] = v7;
  sub_100035B30(v17, v16);
  v8 = swift_allocObject();
  sub_100013188(v16, v8 + 16);

  sub_100006F14(v17);
  sub_100006F14(v20);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1005DE3B0;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1000E7EFC;
  *(v10 + 24) = v9;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC95E0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v21)
  {
    v11 = *sub_1000161C0(v20, v21);
    active = type metadata accessor for ActiveLocationModelFactory();
    v19 = &off_100C4F938;
    v17[0] = v11;
    sub_100035B30(v17, v16);
    v12 = swift_allocObject();
    sub_100013188(v16, v12 + 16);

    sub_100006F14(v17);
    sub_100006F14(v20);
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1005DE3B8;
    *(v13 + 24) = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1000E7F04;
    *(v14 + 24) = v10;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1000E8AE8;
    *(v15 + 24) = v13;
    sub_10022C350(&qword_100CA4B60);
    swift_allocObject();
    return sub_10009CDA0(v3, v6, v5, v4, sub_1005DCF74, 0, sub_10009F81C, v14, sub_1000E87D0, v15);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1005DCF74(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    return 1;
  }

  sub_100963D14();
  if (v4)
  {
    return 0x3FB999999999999ALL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005DD0CC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC95C8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v21)
  {
    v4 = sub_10002D7F8(v20, v21);
    v5 = __chkstk_darwin(v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for NewsArticleComponentFactory();
    v19[3] = v10;
    v19[4] = &off_100C5C220;
    v19[0] = v9;
    v11 = type metadata accessor for LocationViewComponentFactory();
    v12 = swift_allocObject();
    v13 = sub_10002D7F8(v19, v10);
    v14 = __chkstk_darwin(v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_100C5C220;
    v12[2] = v18;
    sub_100006F14(v19);
    result = sub_100006F14(v20);
    a2[3] = v11;
    a2[4] = &off_100C74BA8;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005DD310()
{
  type metadata accessor for AirQualityComponentViewModelFactory();

  return swift_allocObject();
}

uint64_t sub_1005DD364(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC60);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v23)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1880);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  v3 = v19;
  if (v19 != 2)
  {
    v4 = sub_10002D7F8(v20, v21);
    v5 = __chkstk_darwin(v4);
    v7 = (v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for DailyForecastFilter();
    v18[3] = v10;
    v18[4] = &off_100C4AB20;
    v18[0] = v9;
    type metadata accessor for DailyForecastComponentViewModelFactory();
    v11 = swift_allocObject();
    v12 = sub_10002D7F8(v18, v10);
    v13 = __chkstk_darwin(v12);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = *v15;
    *(v11 + 80) = v10;
    *(v11 + 88) = &off_100C4AB20;
    *(v11 + 56) = v17;
    sub_100013188(&v22, v11 + 16);
    *(v11 + 96) = v3 & 1;
    sub_100006F14(v18);
    sub_100006F14(v20);
    return v11;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1005DD650(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC96C8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v3 = result;
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CAFC60);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v6)
    {
      type metadata accessor for FeelsLikeComponentViewModelFactory();
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      sub_100013188(&v5, v4 + 24);
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1005DD75C(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for WeatherForecastDescriptionStringBuilder();
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (result)
  {
    v2 = result;
    type metadata accessor for HourlyForecastComponentViewModelFactory();
    result = swift_allocObject();
    *(result + 16) = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005DD7E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC96C0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for HumidityComponentViewModelFactory();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_100C4DCB8;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005DD8B8(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CACA20);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CACA28);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v5)
    {
      type metadata accessor for MoonComponentViewModelFactory();
      v3 = swift_allocObject();
      sub_100013188(&v6, v3 + 16);
      sub_100013188(&v4, v3 + 56);
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1005DD9A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC6418);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v9)
  {
    sub_1000161C0(a1, a1[3]);
    type metadata accessor for NextHourPrecipitationStringBuilder();
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      v5 = result;
      HourPrecipitationComponentViewModelFactory = type metadata accessor for NextHourPrecipitationComponentViewModelFactory();
      v7 = swift_allocObject();
      result = sub_100013188(&v8, v7 + 16);
      *(v7 + 56) = v5;
      a2[3] = HourPrecipitationComponentViewModelFactory;
      a2[4] = &off_100C64BF8;
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1005DDAC8(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

uint64_t sub_1005DDB0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5)
  {
    v4 = sub_100066124();
    a2[3] = sub_10022C350(&qword_100CC96B0);
    a2[4] = v4;
    result = swift_allocObject();
    *a2 = result;
    *(result + 16) = v5;
    *(result + 24) = v6;
    *(result + 40) = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005DDBD4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5)
  {
    v4 = type metadata accessor for NotificationsOptInComponentViewModelFactory();
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    *(result + 40) = v7;
    a2[3] = v4;
    a2[4] = &off_100C59388;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005DDCC4()
{
  type metadata accessor for PressureComponentViewModelFactory();

  return swift_allocObject();
}

uint64_t sub_1005DDD18(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC96A8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC58);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1928);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5)
  {
    type metadata accessor for PrecipitationTotalComponentViewModelFactory();
    swift_allocObject();
    return sub_100063470(v3, &v6, &v4);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1005DDE68@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SevereAlertComponentViewModelFactory();
  v3 = swift_allocObject();
  result = SevereAlertComponentStringsBuilder.init()();
  a1[3] = v2;
  a1[4] = &off_100C70E70;
  *a1 = v3;
  return result;
}

uint64_t sub_1005DDECC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for SunriseSunsetEventCalculator();
  __chkstk_darwin(v4 - 8);
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9568);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    SunriseSunsetEventCalculator.init()();
    v6 = type metadata accessor for SunriseSunsetViewModelFactory();
    swift_allocObject();
    result = SunriseSunsetViewModelFactory.init(stringBuilder:sunriseSunsetEventCalculator:)();
    a2[3] = v6;
    a2[4] = &protocol witness table for SunriseSunsetViewModelFactory;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005DDFD0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for SunriseSunsetEventCalculator();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  SunriseSunsetEventCalculator.init()();
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9660);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v13)
  {
    v9 = type metadata accessor for SunriseSunsetComponentViewModelFactory();
    v10 = swift_allocObject();
    (*(v5 + 32))(v10 + OBJC_IVAR____TtC7Weather38SunriseSunsetComponentViewModelFactory_sunriseSunsetEventCalculator, v7, v4);
    result = sub_100013188(&v12, v10 + OBJC_IVAR____TtC7Weather38SunriseSunsetComponentViewModelFactory_viewModelFactory);
    a2[3] = v9;
    a2[4] = &off_100C50DC8;
    *a2 = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005DE160(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9678);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5)
  {
    sub_10002D7F8(v4, v5);
    v3[3] = &type metadata for AveragesStringBuilder;
    v3[4] = &off_100C598A8;
    type metadata accessor for AveragesComponentViewModelFactory();
    v2 = swift_allocObject();
    sub_10002D7F8(v3, &type metadata for AveragesStringBuilder);
    *(v2 + 40) = &type metadata for AveragesStringBuilder;
    *(v2 + 48) = &off_100C598A8;
    sub_100006F14(v3);
    sub_100006F14(v4);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005DE2D0(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = sub_1000161C0(a1, a1[3]);
  sub_10022C350(a2);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v8 = sub_1000038D8();
    a4(v8);
    result = swift_allocObject();
    *(result + 16) = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005DE37C()
{
  type metadata accessor for WindComponentViewModelFactory();

  return swift_allocObject();
}

uint64_t sub_1005DE3C8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LocationModel() - 8);
  v6 = v2 + ((*(v5 + 80) + 56) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));

  return sub_1005DCB94(a1, (v2 + 16), v6, v7, a2);
}

void sub_1005DE46C()
{
  sub_10000C778();
  v2 = v1;
  v3 = *(v1 - 8);
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  type metadata accessor for _LayoutRoot();
  sub_1000037E8();
  sub_100003828();
  v9 = __chkstk_darwin(v8);
  (*(v3 + 16))(v7, v0, v2, v9);
  _LayoutRoot.init(_:)();
  swift_getWitnessTable();
  _VariadicView.Tree.init(_:content:)();
  sub_10000536C();
}

uint64_t sub_1005DE614@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10022C350(&qword_100CC9930);
  __chkstk_darwin(v3 - 8);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtC7WeatherP33_971182080BE1A8931C9C36EF48C83CFF28LocationViewerBindingWrapper____lazy_storage___bindableActiveLocationID;
  swift_beginAccess();
  sub_1000302D8(v1 + v9, v8, &qword_100CC9930);
  v10 = sub_10022C350(&qword_100CC9118);
  if (sub_100024D10(v8, 1, v10) != 1)
  {
    return sub_10011C0F0(v8, a1, &qword_100CC9118);
  }

  sub_100018198(v8, &qword_100CC9930);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v1;
  type metadata accessor for Location.Identifier();
  swift_retain_n();
  Binding.init(get:set:)();
  sub_1000302D8(a1, v5, &qword_100CC9118);
  sub_10001B350(v5, 0, 1, v10);
  swift_beginAccess();
  sub_1005F16E0(v5, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_1005DE850(uint64_t a1)
{
  v2 = type metadata accessor for Location.Identifier();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1005DE918(v5);
}

uint64_t sub_1005DE918(uint64_t a1)
{
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  v34 = v3;
  v35 = v4;
  __chkstk_darwin(v3);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LocationViewerViewModel();
  __chkstk_darwin(v7);
  v8 = sub_10022C350(&unk_100CE2F20);
  __chkstk_darwin(v8 - 8);
  v10 = v30 - v9;
  v11 = type metadata accessor for LocationModel();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v1;
  sub_100104794();

  sub_1001095D0();
  v36 = a1;
  sub_100030C98();

  if (sub_100024D10(v10, 1, v11) == 1)
  {
    sub_100018198(v10, &unk_100CE2F20);
  }

  else
  {
    v31 = v12;
    (*(v12 + 32))(v14, v10, v11);
    v16 = *(v1 + 64);
    OSSignpostID.init(log:)();
    v30[3] = static os_signpost_type_t.event.getter();
    sub_10022C350(&qword_100CA40C8);
    v17 = swift_allocObject();
    v33 = xmmword_100A2C3F0;
    *(v17 + 16) = xmmword_100A2C3F0;
    v18 = LocationModel.name.getter();
    v32 = a1;
    v20 = v19;
    *(v17 + 56) = &type metadata for String;
    v21 = sub_100035744();
    *(v17 + 64) = v21;
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    os_signpost(_:dso:log:name:signpostID:_:_:)();

    static os_signpost_type_t.begin.getter();
    v22 = swift_allocObject();
    *(v22 + 16) = v33;
    v23 = LocationModel.name.getter();
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = v21;
    *(v22 + 32) = v23;
    *(v22 + 40) = v24;
    os_signpost(_:dso:log:name:signpostID:_:_:)();

    sub_1000161C0((v15 + 24), *(v15 + 48));
    sub_1005D0348(v14);
    static os_signpost_type_t.end.getter();
    v25 = swift_allocObject();
    *(v25 + 16) = v33;
    v26 = LocationModel.name.getter();
    *(v25 + 56) = &type metadata for String;
    *(v25 + 64) = v21;
    *(v25 + 32) = v26;
    *(v25 + 40) = v27;
    os_signpost(_:dso:log:name:signpostID:_:_:)();
    a1 = v32;

    (*(v35 + 8))(v6, v34);
    (*(v31 + 8))(v14, v11);
  }

  v28 = type metadata accessor for Location.Identifier();
  return (*(*(v28 - 8) + 8))(a1, v28);
}

uint64_t sub_1005DEE24()
{
  v0 = type metadata accessor for Location.Identifier();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocationModel.identifier.getter();
  v4 = static Location.Identifier.== infix(_:_:)();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_1005DEF18()
{
  v0 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  sub_100007074(v0, qword_100CC96F8);
  v1 = sub_100003940();
  sub_10000703C(v1, v2);
  sub_100017580();
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.VFX.animatedBackgrounds.getter();
  Settings.VFX.AnimatedBackgrounds.locationAnimationKind.getter();

  SettingReader.read<A>(_:)();
}

void sub_1005DEFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  __chkstk_darwin(v25);
  sub_1000037D8();
  sub_10022C350(&qword_100CA62E0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v26);
  v28 = &a9 - v27;
  v29 = type metadata accessor for MeasuredLocationViewerView(0);
  sub_1000302D8(v20 + *(v29 + 24), v28, &qword_100CA62E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10011C0F0(v28, v24, &qword_100CA6028);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v31 = sub_1000053B8();
    v32(v31);
  }

  sub_10000536C();
}

uint64_t sub_1005DF16C(uint64_t a1)
{
  v2 = type metadata accessor for ContentStatusBannerPresentationMetrics(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005F1770(a1, v4);
  return sub_10010FF2C(v4);
}

uint64_t sub_1005DF208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = static Alignment.center.getter();
  v8 = v7;
  v9 = a3 + *(sub_10022C350(&qword_100CC9A50) + 36);
  sub_1005DF294(a2, v9);
  *(v9 + 112) = v6;
  *(v9 + 120) = v8;
  return sub_1000302D8(a1, a3, &qword_100CC9A28);
}

uint64_t sub_1005DF294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Color.clear.getter();
  v5 = type metadata accessor for MeasuredLocationViewerView(0);
  v6 = *(a1 + v5[8]);
  v11 = *(a1 + v5[11]);
  sub_10042F370(a1 + v5[12], a2 + 32);

  swift_unknownObjectRetain();
  v7 = Namespace.wrappedValue.getter();
  *(a2 + 8) = v6;
  *(a2 + 16) = v11;
  *(a2 + 72) = v7;
  type metadata accessor for WeatherVFXConditionBackground();
  sub_1000EA178(&qword_100CB0478);
  *(a2 + 80) = EnvironmentObject.init()();
  *(a2 + 88) = v8;
  *a2 = v4;
  v9 = static SafeAreaRegions.all.getter();
  result = static Edge.Set.all.getter();
  *(a2 + 96) = v9;
  *(a2 + 104) = result;
  return result;
}

uint64_t sub_1005DF390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LocationViewerViewModel();
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  v13 = type metadata accessor for MeasuredLocationViewerView(0);
  sub_100104794();
  v14 = v12[*(v7 + 52)];
  sub_1001095D0();
  sub_100104794();
  LOBYTE(v12) = v9[*(v7 + 48)];
  sub_1001095D0();
  v15 = *(v13 + 36);
  v16 = (a3 + *(sub_10022C350(&qword_100CC9A78) + 36));
  v17 = sub_10022C350(&qword_100CC9AA8);
  sub_10042F370(a2 + v15, v16 + v17[11]);
  *v16 = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0);
  swift_storeEnumTagMultiPayload();
  *(v16 + v17[9]) = v14;
  *(v16 + v17[10]) = v12;
  sub_1005DF560(a2, v16 + v17[12]);
  return sub_1000302D8(a1, a3, &qword_100CC9A30);
}

uint64_t sub_1005DF560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for LocationViewerViewModel();
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for MeasuredLocationViewerView(0);
  sub_100104794();
  v12 = *&v11[*(v9 + 28)];

  sub_1001095D0();
  v13 = *(a1 + 16);

  if ((v13 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
  }

  v15 = type metadata accessor for LocationViewerPageControl(0);
  sub_1005DE614(a2 + *(v15 + 24));

  *a2 = v12;
  *(a2 + 8) = 0;

  if ((v13 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
  }

  v17 = a2 + *(sub_10022C350(&qword_100CC9B00) + 36);
  sub_1001098E0();

  v18 = v17 + *(type metadata accessor for DisableAnimationsWhilePageControlExperiencingInteractionModifier(0) + 20);
  v30[15] = 0;
  State.init(wrappedValue:)();
  v19 = v31;
  *v18 = v30[16];
  *(v18 + 8) = v19;
  LOBYTE(v18) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = a2 + *(sub_10022C350(&qword_100CC9B08) + 36);
  *v28 = v18;
  *(v28 + 8) = v21;
  *(v28 + 16) = v23;
  *(v28 + 24) = v25;
  *(v28 + 32) = v27;
  *(v28 + 40) = 0;
  result = sub_10022C350(&qword_100CC9B10);
  *(a2 + *(result + 36)) = 257;
  return result;
}

uint64_t sub_1005DF8DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v37 = a2;
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v35[0] = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CA64E8);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = v35 - v7;
  v9 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v9 - 8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v35 - v13;
  __chkstk_darwin(v15);
  v17 = v35 - v16;
  KeyPath = swift_getKeyPath();
  sub_1005DEFB8(KeyPath, v19, v20, v21, v22, v23, v24, v25, v35[0], KeyPath, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
  (*(v3 + 104))(v14, enum case for UserInterfaceSizeClass.regular(_:), v2);
  sub_10001B350(v14, 0, 1, v2);
  v26 = *(v6 + 56);
  sub_1000302D8(v17, v8, &qword_100CA6028);
  sub_1000302D8(v14, &v8[v26], &qword_100CA6028);
  if (sub_100024D10(v8, 1, v2) != 1)
  {
    sub_1000302D8(v8, v11, &qword_100CA6028);
    if (sub_100024D10(&v8[v26], 1, v2) != 1)
    {
      v28 = &v8[v26];
      v29 = v35[0];
      (*(v3 + 32))(v35[0], v28, v2);
      sub_1000EA178(&qword_100CA6088);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v30 = *(v3 + 8);
      v30(v29, v2);
      sub_100018198(v14, &qword_100CA6028);
      sub_100018198(v17, &qword_100CA6028);
      v30(v11, v2);
      sub_100018198(v8, &qword_100CA6028);
      goto LABEL_8;
    }

    sub_100018198(v14, &qword_100CA6028);
    sub_100018198(v17, &qword_100CA6028);
    (*(v3 + 8))(v11, v2);
    goto LABEL_6;
  }

  sub_100018198(v14, &qword_100CA6028);
  sub_100018198(v17, &qword_100CA6028);
  if (sub_100024D10(&v8[v26], 1, v2) != 1)
  {
LABEL_6:
    sub_100018198(v8, &qword_100CA64E8);
    v27 = 0;
    goto LABEL_8;
  }

  sub_100018198(v8, &qword_100CA6028);
  v27 = 1;
LABEL_8:
  v31 = sub_10022C350(&qword_100CC9A40);
  v32 = v37;
  (*(*(v31 - 8) + 16))(v37, v36, v31);
  result = sub_10022C350(&qword_100CC9AF0);
  v34 = v32 + *(result + 36);
  *v34 = v35[1];
  *(v34 + 8) = v27 & 1;
  return result;
}

uint64_t sub_1005DFD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v115 = a2;
  v118 = a3;
  v4 = sub_10022C350(&qword_100CC9B40);
  v119 = *(v4 - 8);
  v120 = v4;
  __chkstk_darwin(v4);
  v117 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v116 = &v99 - v7;
  v113 = type metadata accessor for RegularContent(0);
  __chkstk_darwin(v113);
  v9 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v107 = &v99 - v11;
  v110 = sub_10022C350(&qword_100CC9B48);
  __chkstk_darwin(v110);
  v112 = &v99 - v12;
  v13 = type metadata accessor for ContentStatusBannerPresentationMetrics(0);
  __chkstk_darwin(v13 - 8);
  v106 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v103 = &v99 - v16;
  v17 = type metadata accessor for LocationViewerViewModel();
  __chkstk_darwin(v17 - 8);
  v105 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v101 = &v99 - v20;
  v109 = type metadata accessor for CompactContent(0);
  __chkstk_darwin(v109);
  v102 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v104 = &v99 - v23;
  v24 = type metadata accessor for UserInterfaceSizeClass();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v100 = &v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10022C350(&qword_100CA64E8);
  v28 = v27 - 8;
  __chkstk_darwin(v27);
  v30 = &v99 - v29;
  v31 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v31 - 8);
  v108 = &v99 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v99 - v34;
  __chkstk_darwin(v36);
  v38 = &v99 - v37;
  v39 = sub_10022C350(&qword_100CC9B50);
  __chkstk_darwin(v39 - 8);
  v111 = &v99 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v121 = &v99 - v42;
  v114 = a1;
  sub_1005DEFB8(v43, v44, v45, v46, v47, v48, v49, v50, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110);
  v51 = v25;
  (*(v25 + 104))(v35, enum case for UserInterfaceSizeClass.compact(_:), v24);
  sub_10001B350(v35, 0, 1, v24);
  v52 = *(v28 + 56);
  sub_1000302D8(v38, v30, &qword_100CA6028);
  sub_1000302D8(v35, &v30[v52], &qword_100CA6028);
  if (sub_100024D10(v30, 1, v24) == 1)
  {
    sub_100018198(v35, &qword_100CA6028);
    sub_100018198(v38, &qword_100CA6028);
    if (sub_100024D10(&v30[v52], 1, v24) == 1)
    {
      sub_100018198(v30, &qword_100CA6028);
      v53 = v115;
      v54 = v114;
LABEL_12:
      v77 = type metadata accessor for MeasuredLocationViewerView(0);
      v78 = v101;
      sub_100104794();
      v79 = v103;
      sub_1005F1770(v53, v103);
      v80 = *(v54 + v77[15]);
      v81 = *(v54 + v77[8]);
      v82 = v77[12];
      v115 = *(v54 + v77[11]);
      sub_10042F370(v54 + v82, &v126);
      sub_10042F370(v54 + v77[9], v125);

      swift_unknownObjectRetain();
      v83 = Namespace.wrappedValue.getter();
      if (static Solarium.isEnabled.getter())
      {
        v84 = 0.0;
      }

      else
      {
        v84 = 44.0;
      }

      v85 = v102;
      sub_100103E40(v78, v102);
      v86 = v109;
      sub_100103E40(v79, v85 + v109[5]);
      *(v85 + v86[6]) = v80;
      *(v85 + v86[7]) = v81;
      *(v85 + v86[8]) = v115;
      sub_100013188(&v126, v85 + v86[9]);
      sub_100013188(v125, v85 + v86[10]);
      *(v85 + v86[11]) = v83;
      *(v85 + v86[12]) = v84;
      v87 = v104;
      sub_100103E40(v85, v104);
      sub_1005F1770(v87, v112);
      swift_storeEnumTagMultiPayload();
      sub_1000EA178(&unk_100CC9B60);
      sub_1000EA178(&unk_100CC9B68);
      v73 = v121;
      _ConditionalContent<>.init(storage:)();
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  sub_1000302D8(v30, v108, &qword_100CA6028);
  if (sub_100024D10(&v30[v52], 1, v24) == 1)
  {
    sub_100018198(v35, &qword_100CA6028);
    sub_100018198(v38, &qword_100CA6028);
    (*(v51 + 8))(v108, v24);
LABEL_6:
    sub_100018198(v30, &qword_100CA64E8);
    v53 = v115;
    v54 = v114;
    goto LABEL_7;
  }

  v74 = v100;
  (*(v51 + 32))(v100, &v30[v52], v24);
  sub_1000EA178(&qword_100CA6088);
  v75 = v108;
  HIDWORD(v99) = dispatch thunk of static Equatable.== infix(_:_:)();
  v76 = *(v51 + 8);
  v76(v74, v24);
  sub_100018198(v35, &qword_100CA6028);
  sub_100018198(v38, &qword_100CA6028);
  v76(v75, v24);
  sub_100018198(v30, &qword_100CA6028);
  v53 = v115;
  v54 = v114;
  if ((v99 & 0x100000000) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  v55 = type metadata accessor for MeasuredLocationViewerView(0);
  v56 = v105;
  sub_100104794();
  v57 = v106;
  sub_1005F1770(v53, v106);
  v58 = *(v54 + v55[15]);
  v59 = *(v54 + v55[8]);
  v60 = v55[12];
  v115 = *(v54 + v55[11]);
  sub_10042F370(v54 + v60, &v126);
  sub_10042F370(v54 + v55[9], v125);

  swift_unknownObjectRetain();
  v61 = Namespace.wrappedValue.getter();
  if (static Solarium.isEnabled.getter())
  {
    v62 = 0.0;
  }

  else
  {
    v62 = 44.0;
  }

  KeyPath = swift_getKeyPath();
  sub_100103E40(v56, v9);
  v64 = v113;
  sub_100103E40(v57, &v9[*(v113 + 20)]);
  *&v9[v64[6]] = v58;
  *&v9[v64[7]] = v59;
  *&v9[v64[8]] = v115;
  sub_100013188(&v126, &v9[v64[9]]);
  sub_100013188(v125, &v9[v64[10]]);
  *&v9[v64[11]] = v61;
  *&v9[v64[12]] = v62;
  Text.Measurements.init()();
  v65 = &v9[v64[14]];
  v122 = 0;
  State.init(wrappedValue:)();
  v66 = v124;
  *v65 = v123;
  *(v65 + 1) = v66;
  v67 = &v9[v64[15]];
  type metadata accessor for LocationViewerBindingWrapper(0);
  sub_1000EA178(&unk_100CC9B58);
  *v67 = Environment.init<A>(_:)();
  v67[8] = v68 & 1;
  v69 = v64[16];
  *&v9[v69] = swift_getKeyPath();
  sub_10022C350(&qword_100CB3278);
  swift_storeEnumTagMultiPayload();
  v70 = &v9[v64[17]];
  *v70 = swift_getKeyPath();
  v70[8] = 0;
  v71 = &v9[v64[18]];
  *v71 = KeyPath;
  *(v71 + 4) = 0;
  v72 = v107;
  sub_100103E40(v9, v107);
  sub_1005F1770(v72, v112);
  swift_storeEnumTagMultiPayload();
  sub_1000EA178(&unk_100CC9B60);
  sub_1000EA178(&unk_100CC9B68);
  v73 = v121;
  _ConditionalContent<>.init(storage:)();
LABEL_16:
  sub_1001095D0();
  v88 = Solarium.init()();
  __chkstk_darwin(v88);
  *(&v99 - 2) = v54;
  *(&v99 - 1) = v53;
  sub_10022C350(&qword_100CC9B70);
  sub_1005F1950();
  v89 = v116;
  StaticIf<>.init<>(_:then:)();
  v90 = v111;
  sub_1000302D8(v73, v111, &qword_100CC9B50);
  v92 = v119;
  v91 = v120;
  v93 = *(v119 + 16);
  v94 = v117;
  v93(v117, v89, v120);
  v95 = v118;
  sub_1000302D8(v90, v118, &qword_100CC9B50);
  v96 = sub_10022C350(&qword_100CC9B88);
  v93((v95 + *(v96 + 48)), v94, v91);
  v97 = *(v92 + 8);
  v97(v89, v91);
  sub_100018198(v121, &qword_100CC9B50);
  v97(v94, v91);
  return sub_100018198(v90, &qword_100CC9B50);
}

uint64_t sub_1005E0D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DebugButtonGroupContainer(0);
  __chkstk_darwin(v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100CA2300 != -1)
  {
    swift_once();
  }

  if (byte_100CC9710 == 1)
  {
    v9 = type metadata accessor for MeasuredLocationViewerView(0);
    sub_100104794();
    sub_10042F370(a1 + *(v9 + 36), &v8[v6[5]]);
    sub_1005F1770(a2, &v8[v6[6]]);
    v10 = &v8[v6[7]];
    *v10 = swift_getKeyPath();
    *(v10 + 1) = 0;
    *(v10 + 2) = 0;
    *(v10 + 3) = 0;
    v10[32] = 0;
    sub_100103E40(v8, a3);
    return sub_10001B350(a3, 0, 1, v6);
  }

  else
  {

    return sub_10001B350(a3, 1, 1, v6);
  }
}

uint64_t sub_1005E0EB8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = static Alignment.topTrailing.getter();
  a1[1] = v3;
  v4 = sub_10022C350(&qword_100CCA1D0);
  return sub_1005E0F04(v1, (a1 + *(v4 + 44)));
}

uint64_t sub_1005E0F04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v88 = a1;
  v95 = a2;
  v86 = type metadata accessor for EnvironmentValues();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CA5010);
  __chkstk_darwin(v4 - 8);
  v89 = &v84 - v5;
  v6 = type metadata accessor for RoundedRectangle();
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DynamicTypeSize();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10022C350(&qword_100CCA1D8);
  __chkstk_darwin(v14);
  v16 = &v84 - v15;
  v87 = sub_10022C350(&qword_100CCA1E0) - 8;
  __chkstk_darwin(v87);
  v18 = &v84 - v17;
  v91 = sub_10022C350(&qword_100CCA1E8);
  __chkstk_darwin(v91);
  v94 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v90 = &v84 - v21;
  __chkstk_darwin(v22);
  v92 = &v84 - v23;
  v93 = static Color.clear.getter();
  *v16 = static HorizontalAlignment.center.getter();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v24 = sub_10022C350(&qword_100CCA1F0);
  sub_1005E175C(a1, &v16[*(v24 + 44)]);
  (*(v11 + 104))(v13, enum case for DynamicTypeSize.large(_:), v10);
  sub_1005F6F6C(&unk_100CCA1F8);
  View.dynamicTypeSize(_:)();
  (*(v11 + 8))(v13, v10);
  v25 = v18;
  sub_100018198(v16, &qword_100CCA1D8);
  LOBYTE(v16) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = &v18[*(sub_10022C350(&qword_100CCA200) + 36)];
  *v34 = v16;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = *(v7 + 28);
  v36 = enum case for RoundedCornerStyle.continuous(_:);
  v37 = type metadata accessor for RoundedCornerStyle();
  (*(*(v37 - 8) + 104))(&v9[v35], v36, v37);
  __asm { FMOV            V0.2D, #8.0 }

  *v9 = _Q0;
  v43 = static Color.white.getter();
  v44 = 0.0;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v45 = &v18[*(sub_10022C350(&qword_100CCA208) + 36)];
  sub_1005F1770(v9, v45);
  v46 = v45 + *(sub_10022C350(&qword_100CBACF8) + 36);
  v47 = v98;
  *v46 = v97;
  *(v46 + 16) = v47;
  *(v46 + 32) = v99;
  v48 = sub_10022C350(&qword_100CBAD00);
  *(v45 + *(v48 + 52)) = v43;
  *(v45 + *(v48 + 56)) = 256;
  v49 = static Alignment.center.getter();
  v51 = v50;
  sub_1001095D0();
  v52 = (v45 + *(sub_10022C350(&qword_100CBAD08) + 36));
  *v52 = v49;
  v52[1] = v51;
  v53 = static Alignment.center.getter();
  v55 = v54;
  v56 = (v45 + *(sub_10022C350(&qword_100CC1C58) + 36));
  *v56 = v53;
  v56[1] = v55;
  v57 = v88;
  LOBYTE(v53) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v58 = &v18[*(v87 + 44)];
  *v58 = v53;
  *(v58 + 1) = v59;
  *(v58 + 2) = v60;
  *(v58 + 3) = v61;
  *(v58 + 4) = v62;
  v58[40] = 0;
  v63 = type metadata accessor for DebugButtonGroupContainer(0);
  v64 = v57 + *(v63 + 24);
  v65 = type metadata accessor for ContentStatusBannerPresentationMetrics(0);
  v66 = v89;
  sub_1000302D8(v64 + *(v65 + 20), v89, &qword_100CA5010);
  v67 = type metadata accessor for ContentStatusBanner();
  LODWORD(v45) = sub_100024D10(v66, 1, v67);
  sub_100018198(v66, &qword_100CA5010);
  if (v45 != 1)
  {
    v68 = *(v64 + 8);
    v69 = v57 + *(v63 + 28);
    v70 = *v69;
    if (*(v69 + 32) == 1)
    {
      v71 = *v69;
    }

    else
    {
      v72 = *(v69 + 8);
      v73 = *(v69 + 16);
      v74 = *(v69 + 24);

      static os_log_type_t.fault.getter();
      v75 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v76 = v84;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100109A48(v70, v72, v73, v74, 0);
      (*(v85 + 8))(v76, v86);
      v71 = v96;
    }

    v44 = v68 - v71;
  }

  v77 = v90;
  sub_10011C0F0(v25, v90, &qword_100CCA1E0);
  v78 = v92;
  v79 = v77 + *(v91 + 36);
  *v79 = 0;
  *(v79 + 8) = v44;
  sub_10011C0F0(v77, v78, &qword_100CCA1E8);
  v80 = v94;
  sub_1000302D8(v78, v94, &qword_100CCA1E8);
  v81 = v95;
  *v95 = v93;
  *(v81 + 8) = 0;
  v82 = sub_10022C350(&qword_100CCA210);
  sub_1000302D8(v80, v81 + *(v82 + 48), &qword_100CCA1E8);

  sub_100018198(v78, &qword_100CCA1E8);
  sub_100018198(v80, &qword_100CCA1E8);
}

uint64_t sub_1005E175C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DebugButtonGroup(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v25[-v9];
  v11 = sub_10022C350(&qword_100CA4020);
  __chkstk_darwin(v11 - 8);
  v13 = &v25[-v12];
  static Font.Weight.semibold.getter();
  v14 = type metadata accessor for Font.Design();
  sub_10001B350(v13, 1, 1, v14);
  static Font.system(size:weight:design:)();
  sub_100018198(v13, &qword_100CA4020);
  v15 = Text.font(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_1005F1770(a1, v10);
  v22 = type metadata accessor for DebugButtonGroupContainer(0);
  sub_10042F370(a1 + *(v22 + 20), &v10[*(v5 + 28)]);
  *&v10[*(v5 + 32)] = 0x4036000000000000;
  sub_1005F1770(v10, v7);
  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v19 & 1;
  *(a2 + 24) = v21;
  v23 = sub_10022C350(&qword_100CCA218);
  sub_1005F1770(v7, a2 + *(v23 + 48));
  sub_10010CD54(v15, v17, v19 & 1);

  sub_1001095D0();
  sub_1001095D0();
  sub_10010CD64(v15, v17, v19 & 1);
}

uint64_t sub_1005E19F0@<X0>(uint64_t a1@<X8>)
{
  v11[1] = a1;
  v2 = type metadata accessor for DebugButtonGroup(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_1005F1770(v1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MainActor();
  v5 = static MainActor.shared.getter();
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = &protocol witness table for MainActor;
  sub_100103E40(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_1005F1770(v1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  sub_100103E40(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v6);
  sub_10022C350(&qword_100CA2CD8);
  return Binding.init(get:set:)();
}

uint64_t sub_1005E1BCC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for LocationViewerViewModel() + 24);
  v4 = type metadata accessor for ConditionPickerMenuViewModel(0);
  return sub_1000302D8(v3 + *(v4 + 20), a2, &qword_100CA2CD8);
}

uint64_t sub_1005E1C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for DebugButtonGroup(0);
  sub_1000161C0((a4 + *(v6 + 20)), *(a4 + *(v6 + 20) + 24));
  v7 = LocationModel.id.getter();
  sub_1005D080C(a1, v7, v8);
}

uint64_t sub_1005E1CA4@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = type metadata accessor for DebugButtonGroup(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_10022C350(&qword_100CCAB90);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v27 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for ConditionPickerMenuView();
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v27 - v16;
  v18 = type metadata accessor for LocationViewerViewModel();
  sub_1005F1770(v1 + *(v18 + 24), v17);
  sub_1005E19F0(&v17[*(v12 + 28)]);
  sub_1005F1770(v1, &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  sub_100103E40(&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  v29 = v1;
  sub_10022C350(&qword_100CCAB98);
  sub_1005F6F6C(&unk_100CCABA0);
  Button.init(action:label:)();
  sub_1005F1770(v17, v14);
  v21 = *(v6 + 16);
  v22 = v27;
  v21(v27, v10, v5);
  v23 = v28;
  sub_1005F1770(v14, v28);
  v24 = sub_10022C350(&qword_100CCABA8);
  v21((v23 + *(v24 + 48)), v22, v5);
  v25 = *(v6 + 8);
  v25(v10, v5);
  sub_1001095D0();
  v25(v22, v5);
  return sub_1001095D0();
}

uint64_t sub_1005E2078(uint64_t a1)
{
  v2 = type metadata accessor for DebugButtonGroup(0);
  sub_1000161C0((a1 + *(v2 + 20)), *(a1 + *(v2 + 20) + 24));
  return sub_1005D093C();
}

__n128 sub_1005E20B8@<Q0>(uint64_t a1@<X8>)
{
  v2 = static Alignment.center.getter();
  v4 = v3;
  sub_1005E2128(&v9);
  v5 = v10;
  v6 = v12;
  result = v9;
  v8 = v11;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v5;
  *(a1 + 40) = v8;
  *(a1 + 56) = v6;
  return result;
}

uint64_t sub_1005E2128@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CA4020);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = Image.init(systemName:)();
  type metadata accessor for DebugButtonGroup(0);
  v6 = type metadata accessor for Font.Design();
  sub_10001B350(v4, 1, 1, v6);
  v7 = static Font.system(size:weight:design:)();
  sub_100018198(v4, &qword_100CA4020);
  KeyPath = swift_getKeyPath();
  type metadata accessor for LocationViewerViewModel();
  v9 = Image.init(systemName:)();
  sub_10001B350(v4, 1, 1, v6);
  v10 = static Font.system(size:weight:design:)();
  sub_100018198(v4, &qword_100CA4020);
  v11 = swift_getKeyPath();
  *a1 = v5;
  a1[1] = KeyPath;
  a1[2] = v7;
  a1[3] = v9;
  a1[4] = v11;
  a1[5] = v10;
}

uint64_t sub_1005E2308@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v26 = sub_10022C350(&unk_100CE0EB0);
  v3 = *(v26 - 8);
  __chkstk_darwin(v26);
  v5 = &v26 - v4;
  v6 = sub_10022C350(&qword_100CCA0A0);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  sub_1005F1770(v1, &v26 - v7);
  v9 = type metadata accessor for CompactContent(0);
  v10 = v9[5];
  v11 = type metadata accessor for CommonTabView(0);
  sub_1005F1770(v2 + v10, &v8[v11[5]]);
  v12 = *(v2 + v9[6]);
  sub_10042F370(v2 + v9[10], &v8[v11[7]]);
  v13 = *(v2 + v9[11]);
  v14 = *(v2 + v9[12]);
  *&v8[v11[6]] = v12;
  *&v8[v11[8]] = v13;
  *&v8[v11[9]] = v14;
  v15 = &v8[v11[10]];
  type metadata accessor for LocationViewerBindingWrapper(0);
  sub_1000EA178(&unk_100CC9B58);

  *v15 = Environment.init<A>(_:)();
  v15[8] = v16 & 1;
  v17 = &v8[v11[11]];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = v11[12];
  *&v8[v18] = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v20 = &v8[*(v6 + 36)];
  *v20 = KeyPath;
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  *(v20 + 33) = 0u;
  Solarium.init()();
  static ViewInputPredicate.! prefix(_:)();
  v28 = v2;
  sub_10022C350(&qword_100CCA0A8);
  sub_1005F2610();
  v29 = &type metadata for Solarium;
  v30 = &protocol witness table for Solarium;
  swift_getOpaqueTypeConformance2();
  sub_1005F2720();
  v21 = v26;
  v22 = v27;
  View.staticIf<A, B>(_:then:)();
  (*(v3 + 8))(v5, v21);
  sub_100018198(v8, &qword_100CCA0A0);
  v23 = static SafeAreaRegions.all.getter();
  LOBYTE(v21) = static Edge.Set.all.getter();
  result = sub_10022C350(&qword_100CCA0D8);
  v25 = v22 + *(result + 36);
  *v25 = v23;
  *(v25 + 8) = v21;
  return result;
}

uint64_t sub_1005E26D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CompactContent(0);
  v7 = v6[8];
  v8 = *(a2 + v6[7]);
  v9 = v6[9];
  v10 = a3 + *(sub_10022C350(&qword_100CCA0A8) + 36);
  v14 = *(a2 + v7);
  sub_10042F370(a2 + v9, v10 + 24);
  v11 = *(a2 + v6[11]);
  *v10 = v8;
  *(v10 + 8) = v14;
  *(v10 + 64) = v11;
  type metadata accessor for WeatherVFXConditionBackground();
  sub_1000EA178(&qword_100CB0478);

  swift_unknownObjectRetain();
  *(v10 + 72) = EnvironmentObject.init()();
  *(v10 + 80) = v12;
  return sub_1000302D8(a1, a3, &qword_100CCA0A0);
}

double sub_1005E2804@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v2 + 48) & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1005F5354(v2);
    (*(v6 + 8))(v8, v5);
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v10 = sub_10022C350(&qword_100CCAA38);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  v11 = (a2 + *(sub_10022C350(&qword_100CCAA40) + 36));
  v12 = v14[1];
  *v11 = v14[0];
  v11[1] = v12;
  result = *&v15;
  v11[2] = v15;
  return result;
}

uint64_t sub_1005E2A34()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for RegularContent(0) + 72);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (*(v5 + 9) != 1)
  {

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100109A3C(v6, v7, 0);
    (*(v2 + 8))(v4, v1);
    return v10;
  }

  return v6;
}

uint64_t sub_1005E2BA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v3 = type metadata accessor for RegularContent(0);
  v4 = *(v3 - 8);
  v42 = v3;
  v43 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v41 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DisplayMetrics();
  __chkstk_darwin(v45);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10022C350(&qword_100CCA0E0);
  __chkstk_darwin(v44);
  v8 = (&v35 - v7);
  v9 = (v1 + *(type metadata accessor for LocationViewerViewModel() + 56));
  v10 = v9[5];
  v39 = v9[4];
  v11 = v9[1];
  v47 = *v9;
  v48 = v11;
  sub_10002D5A4();
  v12 = v10;

  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = v9[3];
  if (v20)
  {
    v47 = v9[2];
    v48 = v20;

    v20 = Text.init<A>(_:)();
    v24 = v23 & 1;
  }

  else
  {
    v21 = 0;
    v24 = 0;
    v22 = 0;
  }

  v36 = v22;
  v37 = v21;
  v38 = v20;
  v34 = v21;
  v25 = v39;
  v39 = v19;
  v26 = sub_1005E2FC0(v2, v25, v12, 0, _swiftEmptyArrayStorage, v13, v15, v17 & 1, v19, v20, v34, v24, v22);
  *v8 = static Alignment.topTrailing.getter();
  v8[1] = v27;
  v28 = sub_10022C350(&qword_100CCA0E8);
  sub_1005E35C4(v2, v8 + *(v28 + 44), v26);
  sub_1000FC9C8();
  v29 = v2;
  v30 = v41;
  sub_1005F1770(v29, v41);
  v31 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v32 = swift_allocObject();
  sub_100103E40(v30, v32 + v31);
  sub_1005F6F6C(&unk_100CCA0F0);
  sub_1000EA178(&qword_100CA6120);
  View.onChange<A>(of:initial:_:)();

  sub_10014A53C(v38, v37, v24, v36);
  sub_10010CD64(v13, v15, v17 & 1);

  sub_1001095D0();
  return sub_100018198(v8, &qword_100CCA0E0);
}

double sub_1005E2FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t), uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v57 = a8;
  v58 = a6;
  v59 = a7;
  v64 = a5;
  v67 = a13;
  v56[1] = a9;
  v14 = sub_10022C350(&qword_100CA3D60);
  __chkstk_darwin(v14 - 8);
  v60 = v56 - v15;
  v16 = sub_10022C350(&qword_100CA3D68);
  __chkstk_darwin(v16 - 8);
  v56[0] = v56 - v17;
  v69 = type metadata accessor for Text.Measurements.Context();
  v66 = *(v69 - 8);
  __chkstk_darwin(v69);
  v61 = v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for EnvironmentValues();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for RegularContent(0);
  v24 = *(v23 + 68);
  v68 = a1;
  v25 = a1 + v24;
  v26 = *v25;
  if (*(v25 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v27 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v26, 0);
    (*(v20 + 8))(v22, v19);
    LOBYTE(v26) = v70;
  }

  v65 = *(v23 + 52);
  sub_100149314(v26 & 1);
  v28 = Text.font(_:)();
  v30 = v29;
  v32 = v31;

  v63 = type metadata accessor for Text.WritingMode();
  v33 = v56[0];
  sub_10001B350(v56[0], 1, 1, v63);
  v62 = type metadata accessor for Text.Suffix();
  v34 = v60;
  sub_10001B350(v60, 1, 1, v62);
  v35 = v61;
  Text.Measurements.Context.init(writingMode:textSuffix:)();
  Text.Measurements.size(of:in:context:)();
  v37 = v36;
  sub_10010CD64(v28, v30, v32 & 1);

  v38 = v66 + 8;
  v64 = *(v66 + 8);
  v64(v35, v69);
  static Font.largeTitle.getter();
  v39 = Text.font(_:)();
  v41 = v40;
  LOBYTE(v28) = v42;

  sub_10001B350(v33, 1, 1, v63);
  sub_10001B350(v34, 1, 1, v62);
  Text.Measurements.Context.init(writingMode:textSuffix:)();
  Text.Measurements.size(of:in:context:)();
  v43 = v69;
  v45 = v44;
  sub_10010CD64(v39, v41, v28 & 1);

  v64(v35, v43);
  v46 = v37 + v45;
  if (v67)
  {
    v59 = a12;
    sub_10010CD54(a10, a11, a12 & 1);

    static Font.headline.getter();
    Font.smallCaps()();

    v47 = Text.font(_:)();
    v49 = v48;
    v66 = v38;
    v51 = v50;

    sub_10001B350(v33, 1, 1, v63);
    sub_10001B350(v34, 1, 1, v62);
    v52 = v61;
    Text.Measurements.Context.init(writingMode:textSuffix:)();
    Text.Measurements.size(of:in:context:)();
    v54 = v53;
    sub_10010CD64(v47, v49, v51 & 1);

    sub_10010CD64(a10, a11, v59 & 1);

    v64(v52, v69);
    v46 = v46 + v54;
  }

  return ceil(v46);
}

uint64_t sub_1005E35C4@<X0>(uint64_t a1@<X0>, char *a2@<X8>, double a3@<D0>)
{
  v70 = a2;
  v67 = type metadata accessor for Location.Identifier();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v62 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CCA0F8);
  __chkstk_darwin(v6 - 8);
  v61 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (v60 - v9);
  v11 = sub_10022C350(&qword_100CCA100);
  __chkstk_darwin(v11);
  v69 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v60 - v14;
  v16 = sub_10022C350(&unk_100CE0EB0);
  __chkstk_darwin(v16);
  v68 = sub_10022C350(&qword_100CCA108);
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v64 = v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v60 - v19;
  Solarium.init()();
  static ViewInputPredicate.! prefix(_:)();
  v71 = a1;
  sub_10022C350(&qword_100CCA110);
  *&v73[0] = &type metadata for Solarium;
  *(&v73[0] + 1) = &protocol witness table for Solarium;
  swift_getOpaqueTypeConformance2();
  sub_1005F2AE8();
  v63 = v20;
  StaticIf<>.init<>(_:then:)();
  v21 = type metadata accessor for RegularContent(0);
  v22 = *(a1 + *(v21 + 48));
  v23 = v11[16];
  *&v15[v23] = swift_getKeyPath();
  sub_10022C350(&qword_100CCA130);
  swift_storeEnumTagMultiPayload();
  v24 = v11[17];
  *&v15[v24] = swift_getKeyPath();
  v60[1] = sub_10022C350(&qword_100CB3278);
  swift_storeEnumTagMultiPayload();
  v25 = &v15[v11[18]];
  KeyPath = swift_getKeyPath();
  v74 = 0;
  *v25 = KeyPath;
  v25[72] = 0;
  v27 = &v15[v11[19]];
  *v27 = swift_getKeyPath();
  *(v27 + 1) = 0;
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  v27[32] = 0;
  v28 = &v15[v11[20]];
  *v28 = swift_getKeyPath();
  v28[8] = 0;
  v29 = v11[21];
  *&v15[v29] = swift_getKeyPath();
  sub_10022C350(&qword_100CA2D60);
  swift_storeEnumTagMultiPayload();
  *v15 = a3;
  *(v15 + 1) = v22;
  v30 = v15;
  v31 = &v15[v11[14]];
  *v31 = static VerticalAlignment.center.getter();
  *(v31 + 1) = 0;
  v31[16] = 0;
  v32 = &v31[*(sub_10022C350(&qword_100CCA138) + 44)];
  *v10 = static Alignment.center.getter();
  v10[1] = v33;
  v34 = sub_10022C350(&qword_100CCA140);
  sub_1005E3E3C(a1, v10 + *(v34 + 44));
  v35 = v61;
  sub_1000302D8(v10, v61, &qword_100CCA0F8);
  sub_1000302D8(v35, v32, &qword_100CCA0F8);
  v36 = v32 + *(sub_10022C350(&qword_100CCA148) + 48);
  *v36 = 0;
  *(v36 + 8) = 0;
  sub_100018198(v10, &qword_100CCA0F8);
  v37 = v62;
  sub_100018198(v35, &qword_100CCA0F8);
  sub_10042F370(a1 + *(v21 + 40), v73);
  LocationModel.identifier.getter();
  v38 = sub_1005E2A34();
  if (v39)
  {
    v38 = Namespace.wrappedValue.getter();
  }

  v40 = v38;
  v41 = &v15[v11[15]];
  sub_100013188(v73, v41);
  *(v41 + 40) = a3;
  v42 = type metadata accessor for PinnedMapView(0);
  (*(v65 + 32))(v41 + v42[6], v37, v67);
  *(v41 + v42[7]) = v40;
  v43 = v42[8];
  *(v41 + v43) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v44 = v41 + v42[9];
  v45 = swift_getKeyPath();
  v72 = 0;
  *v44 = v45;
  *(v44 + 72) = 0;
  v46 = v41 + v42[10];
  *v46 = swift_getKeyPath();
  *(v46 + 8) = 0;
  v47 = v41 + v42[11];
  *v47 = swift_getKeyPath();
  *(v47 + 8) = 0;
  v48 = v66;
  v49 = *(v66 + 16);
  v50 = v63;
  v51 = v64;
  v52 = v68;
  v49(v64, v63, v68);
  v53 = v30;
  v54 = v30;
  v55 = v69;
  sub_1000302D8(v53, v69, &qword_100CCA100);
  v56 = v70;
  v49(v70, v51, v52);
  v57 = sub_10022C350(&qword_100CCA150);
  sub_1000302D8(v55, &v56[*(v57 + 48)], &qword_100CCA100);
  sub_100018198(v54, &qword_100CCA100);
  v58 = *(v48 + 8);
  v58(v50, v52);
  sub_100018198(v55, &qword_100CCA100);
  return (v58)(v51, v52);
}

uint64_t sub_1005E3D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Color.clear.getter();
  v5 = type metadata accessor for RegularContent(0);
  v6 = *(a1 + v5[7]);
  v11 = *(a1 + v5[8]);
  sub_10042F370(a1 + v5[9], a2 + 32);
  v7 = *(a1 + v5[11]);
  *(a2 + 8) = v6;
  *(a2 + 16) = v11;
  *(a2 + 72) = v7;
  type metadata accessor for WeatherVFXConditionBackground();
  sub_1000EA178(&qword_100CB0478);

  swift_unknownObjectRetain();
  *(a2 + 80) = EnvironmentObject.init()();
  *(a2 + 88) = v8;
  *a2 = v4;
  v9 = static SafeAreaRegions.all.getter();
  result = static Edge.Set.all.getter();
  *(a2 + 96) = v9;
  *(a2 + 104) = result;
  return result;
}

uint64_t sub_1005E3E3C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v40 = sub_10022C350(&qword_100CCA158) - 8;
  __chkstk_darwin(v40);
  v41 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v35 - v5;
  v7 = sub_10022C350(&qword_100CCA160);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  v39 = sub_10022C350(&qword_100CCA168);
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  sub_1005F1770(a1, v9);
  v14 = type metadata accessor for RegularContent(0);
  v15 = v14[5];
  v16 = type metadata accessor for CommonTabView(0);
  sub_1005F1770(a1 + v15, &v9[v16[5]]);
  v17 = *(a1 + v14[6]);
  sub_10042F370(a1 + v14[10], &v9[v16[7]]);
  v18 = *(a1 + v14[11]);
  v19 = *(a1 + v14[12]);
  *&v9[v16[6]] = v17;
  *&v9[v16[8]] = v18;
  *&v9[v16[9]] = v19;
  v20 = &v9[v16[10]];
  type metadata accessor for LocationViewerBindingWrapper(0);
  sub_1000EA178(&unk_100CC9B58);

  *v20 = Environment.init<A>(_:)();
  v20[8] = v21 & 1;
  v22 = &v9[v16[11]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = v16[12];
  *&v9[v23] = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0);
  swift_storeEnumTagMultiPayload();
  *&v9[*(v7 + 36)] = 0;
  sub_10022C350(&qword_100CCA170);
  sub_1005F2C00();
  sub_1005F2CE8();
  sub_1005F2D3C();
  v36 = v13;
  View.staticIf<A, B>(_:then:)();
  sub_100018198(v9, &qword_100CCA160);
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v24 = sub_10022C350(&qword_100CCA1A0);
  sub_1005E436C(a1, &v6[*(v24 + 44)]);
  *&v6[*(v40 + 44)] = 0x3FF0000000000000;
  v25 = v37;
  v26 = v38;
  v27 = *(v37 + 16);
  v28 = v13;
  v29 = v39;
  v27(v38, v28, v39);
  v30 = v41;
  sub_1000302D8(v6, v41, &qword_100CCA158);
  v31 = v42;
  v27(v42, v26, v29);
  v32 = sub_10022C350(&qword_100CCA1A8);
  sub_1000302D8(v30, &v31[*(v32 + 48)], &qword_100CCA158);
  sub_100018198(v6, &qword_100CCA158);
  v33 = *(v25 + 8);
  v33(v36, v29);
  sub_100018198(v30, &qword_100CCA158);
  return (v33)(v26, v29);
}

uint64_t sub_1005E4318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000302D8(a1, a2, &qword_100CCA160);
  result = sub_10022C350(&qword_100CCA170);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1005E436C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CCA1B0);
  __chkstk_darwin(v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = *(a1 + *(type metadata accessor for RegularContent(0) + 60) + 8);

  if ((v14 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    v32 = v4;
    v16 = a1;
    v17 = a2;
    v18 = v8;
    v19 = v15;
    os_log(_:dso:log:_:_:)();

    v8 = v18;
    a2 = v17;
    a1 = v16;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v32);
  }

  sub_1005DE614(v13);

  v20 = *(a1 + *(type metadata accessor for LocationViewerViewModel() + 20));
  v21 = type metadata accessor for PageControl(0);
  *&v13[v21[5]] = v20;
  v22 = v21[6];
  *&v13[v22] = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0);
  swift_storeEnumTagMultiPayload();
  v23 = &v13[v21[7]];
  type metadata accessor for PageControlDisplayState(0);
  sub_1000EA178(&unk_100CCA1B8);

  *v23 = Environment.init<A>(_:)();
  v23[8] = v24 & 1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v25 = &v13[*(sub_10022C350(&qword_100CCA1C0) + 36)];
  v26 = v34;
  *v25 = v33;
  *(v25 + 1) = v26;
  *(v25 + 2) = v35;
  LOBYTE(v20) = static Edge.Set.bottom.getter();
  KeyPath = swift_getKeyPath();
  v28 = &v13[*(v8 + 36)];
  *v28 = v20;
  *(v28 + 1) = 0x4024000000000000;
  *(v28 + 2) = KeyPath;
  *(v28 + 4) = 0;
  *(v28 + 5) = 0;
  *(v28 + 3) = 0;
  v28[48] = 0;
  sub_1000302D8(v13, v10, &qword_100CCA1B0);
  *a2 = 0;
  *(a2 + 8) = 1;
  v29 = sub_10022C350(&qword_100CCA1C8);
  sub_1000302D8(v10, a2 + *(v29 + 48), &qword_100CCA1B0);
  sub_100018198(v13, &qword_100CCA1B0);
  return sub_100018198(v10, &qword_100CCA1B0);
}

void sub_1005E4744()
{
  v1 = v0;
  v2 = type metadata accessor for RegularContent(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA29C8 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  if (aBlock == 1)
  {
    v5 = v0 + *(v2 + 56);
    v6 = *v5;
    v7 = *(v5 + 8);
    LOBYTE(aBlock) = v6;
    v15 = v7;
    v20 = 1;
    sub_10022C350(&qword_100CA5A80);
    State.wrappedValue.setter();
    v8 = objc_opt_self();
    sub_1005F1770(v1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v10 = swift_allocObject();
    sub_100103E40(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
    v18 = sub_1005F2A84;
    v19 = v10;
    aBlock = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_10030DC80;
    v17 = &unk_100C616A0;
    v11 = _Block_copy(&aBlock);

    v12 = [v8 scheduledTimerWithTimeInterval:0 repeats:v11 block:0.5];
    _Block_release(v11);
  }
}

uint64_t sub_1005E49B4()
{
  type metadata accessor for RegularContent(0);
  sub_10022C350(&qword_100CA5A80);
  return State.wrappedValue.setter();
}

uint64_t sub_1005E4A28()
{
  v0 = type metadata accessor for UserInterfaceSizeClass();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10022C350(&qword_100CA64E8);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v22 - v5;
  v7 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  __chkstk_darwin(v13);
  v15 = &v22 - v14;
  type metadata accessor for CommonTabView(0);
  sub_10009D114();
  (*(v1 + 104))(v12, enum case for UserInterfaceSizeClass.compact(_:), v0);
  sub_10001B350(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_1000302D8(v15, v6, &qword_100CA6028);
  sub_1000302D8(v12, &v6[v16], &qword_100CA6028);
  if (sub_100024D10(v6, 1, v0) == 1)
  {
    sub_100018198(v12, &qword_100CA6028);
    sub_100018198(v15, &qword_100CA6028);
    if (sub_100024D10(&v6[v16], 1, v0) == 1)
    {
      sub_100018198(v6, &qword_100CA6028);
      return 1;
    }

    goto LABEL_6;
  }

  sub_1000302D8(v6, v9, &qword_100CA6028);
  if (sub_100024D10(&v6[v16], 1, v0) == 1)
  {
    sub_100018198(v12, &qword_100CA6028);
    sub_100018198(v15, &qword_100CA6028);
    (*(v1 + 8))(v9, v0);
LABEL_6:
    sub_100018198(v6, &qword_100CA64E8);
    goto LABEL_7;
  }

  v18 = &v6[v16];
  v19 = v23;
  (*(v1 + 32))(v23, v18, v0);
  sub_1000EA178(&qword_100CA6088);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v1 + 8);
  v21(v19, v0);
  sub_100018198(v12, &qword_100CA6028);
  sub_100018198(v15, &qword_100CA6028);
  v21(v9, v0);
  sub_100018198(v6, &qword_100CA6028);
  if (v20)
  {
    return 1;
  }

LABEL_7:
  if (qword_100CA2300 != -1)
  {
    swift_once();
  }

  return byte_100CC9710;
}

uint64_t sub_1005E4E7C()
{
  v0 = type metadata accessor for UserInterfaceSizeClass();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10022C350(&qword_100CA64E8);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v22 - v5;
  v7 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  __chkstk_darwin(v13);
  v15 = &v22 - v14;
  type metadata accessor for CommonTabView(0);
  sub_10009D114();
  (*(v1 + 104))(v12, enum case for UserInterfaceSizeClass.compact(_:), v0);
  sub_10001B350(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_1000302D8(v15, v6, &qword_100CA6028);
  sub_1000302D8(v12, &v6[v16], &qword_100CA6028);
  if (sub_100024D10(v6, 1, v0) == 1)
  {
    sub_100018198(v12, &qword_100CA6028);
    sub_100018198(v15, &qword_100CA6028);
    if (sub_100024D10(&v6[v16], 1, v0) == 1)
    {
      sub_100018198(v6, &qword_100CA6028);
      return 0;
    }

    goto LABEL_6;
  }

  sub_1000302D8(v6, v9, &qword_100CA6028);
  if (sub_100024D10(&v6[v16], 1, v0) == 1)
  {
    sub_100018198(v12, &qword_100CA6028);
    sub_100018198(v15, &qword_100CA6028);
    (*(v1 + 8))(v9, v0);
LABEL_6:
    sub_100018198(v6, &qword_100CA64E8);
    goto LABEL_7;
  }

  v18 = &v6[v16];
  v19 = v23;
  (*(v1 + 32))(v23, v18, v0);
  sub_1000EA178(&qword_100CA6088);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v1 + 8);
  v21(v19, v0);
  sub_100018198(v12, &qword_100CA6028);
  sub_100018198(v15, &qword_100CA6028);
  v21(v9, v0);
  sub_100018198(v6, &qword_100CA6028);
  if (v20)
  {
    return 0;
  }

LABEL_7:
  if (qword_100CA27D8 != -1)
  {
    swift_once();
  }
}

void *sub_1005E52E8()
{
  v1 = type metadata accessor for CommonTabView.LocationTabPageModel(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for LocationViewerViewModel() + 20));
  v6 = *(v5 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v15 = _swiftEmptyArrayStorage;
    sub_1006A819C();
    v7 = v15;
    v14 = type metadata accessor for LocationModel();
    v8 = *(v14 - 8);
    v9 = *(v8 + 16);
    v10 = v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v11 = *(v8 + 72);
    do
    {
      v9(v4, v10, v14);
      v15 = v7;
      v12 = v7[2];
      if (v12 >= v7[3] >> 1)
      {
        sub_1006A819C();
        v7 = v15;
      }

      v7[2] = v12 + 1;
      sub_100103E40(v4, v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v12);
      v10 += v11;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1005E54AC(uint64_t a1)
{
  v2 = type metadata accessor for Location.Identifier();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1005DE918(v5);
}

uint64_t sub_1005E5578()
{
  v1 = type metadata accessor for CommonTabView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  sub_1005F1770(v0, v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MainActor();
  v4 = static MainActor.shared.getter();
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = &protocol witness table for MainActor;
  sub_100103E40(v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_1005F1770(v0, v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  sub_100103E40(v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v5);
  Binding.init(get:set:)();
  return v10[1];
}

uint64_t sub_1005E5748@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for LocationViewerViewModel();
  v5 = *(a1 + *(result + 32));
  if (v5 >= 0)
  {
    LOBYTE(v5) = (v5 - 1) < 2;
  }

  *a2 = v5 & 1;
  return result;
}

_BYTE *sub_1005E5798(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*result & 1) == 0)
  {
    v5 = *(a4 + *(type metadata accessor for LocationViewerViewModel() + 32));
    v6 = type metadata accessor for CommonTabView(0);
    sub_1000161C0((a4 + *(v6 + 28)), *(a4 + *(v6 + 28) + 24));
    if (v5 < 0)
    {
      return sub_1005D0A50();
    }

    else
    {
      return sub_1005D0804();
    }
  }

  return result;
}

uint64_t sub_1005E5804()
{
  v1 = sub_10022C350(&qword_100CCA848);
  __chkstk_darwin(v1);
  v3 = &v12[-v2];
  *v3 = static HorizontalAlignment.center.getter();
  *(v3 + 1) = 0;
  v3[16] = 0;
  v4 = sub_10022C350(&qword_100CCA850);
  sub_1005E59A8(v0, &v3[*(v4 + 44)]);
  KeyPath = swift_getKeyPath();
  v6 = type metadata accessor for LocationViewerViewModel();
  v7 = *(v0 + *(v6 + 52));
  v8 = &v3[*(sub_10022C350(&qword_100CCA858) + 36)];
  *v8 = KeyPath;
  v8[8] = v7;
  v9 = *(v0 + *(v6 + 20));
  v10 = &v3[*(v1 + 36)];
  *v10 = 0;
  v10[1] = v9;

  sub_1005E5578();
  v13 = v0;
  sub_1005F4788();
  View.alert(isPresented:content:)();

  return sub_100018198(v3, &qword_100CCA848);
}

uint64_t sub_1005E59A8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v47 = a2;
  v45 = sub_10022C350(&unk_100CE0EB0);
  __chkstk_darwin(v45);
  v41 = &v34 - v3;
  v46 = sub_10022C350(&qword_100CCA890);
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v49 = &v34 - v6;
  v42 = sub_10022C350(&qword_100CCA898);
  v36 = *(v42 - 8);
  v7 = v36;
  __chkstk_darwin(v42);
  v48 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  v40 = a1;
  v52 = a1;
  v51 = a1;
  v39 = sub_10022C350(&qword_100CCA8A0);
  v38 = sub_10022C350(&qword_100CCA8A8);
  v37 = sub_1005F4C84();
  v12 = sub_10022E824(&qword_100CCA8B8);
  v13 = sub_10022E824(&qword_100CCA8C0);
  v14 = sub_1005F6F6C(&unk_100CCA8C8);
  v53 = v12;
  v54 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = v12;
  v54 = &type metadata for Solarium;
  v55 = v13;
  v56 = v14;
  v57 = &protocol witness table for Solarium;
  v58 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v16 = sub_10022E824(&qword_100CCA8D0);
  v17 = sub_10022E824(&qword_100CCA8D8);
  v18 = sub_10010E37C();
  v53 = v16;
  v54 = v18;
  v19 = swift_getOpaqueTypeConformance2();
  v53 = v16;
  v54 = &type metadata for Solarium;
  v55 = v17;
  v56 = v18;
  v57 = &protocol witness table for Solarium;
  v58 = v19;
  swift_getOpaqueTypeConformance2();
  v20 = v11;
  v35 = v11;
  StaticIf<>.init(_:then:else:)();
  Solarium.init()();
  static ViewInputPredicate.! prefix(_:)();
  v50 = v40;
  sub_10022C350(&qword_100CCA900);
  v53 = &type metadata for Solarium;
  v54 = &protocol witness table for Solarium;
  swift_getOpaqueTypeConformance2();
  sub_1005F6EF8(&unk_100CCA908);
  v21 = v49;
  StaticIf<>.init<>(_:then:)();
  v22 = *(v7 + 16);
  v23 = v48;
  v24 = v42;
  v22(v48, v20, v42);
  v25 = v44;
  v26 = *(v44 + 16);
  v27 = v43;
  v28 = v46;
  v26(v43, v21, v46);
  v29 = v47;
  v22(v47, v23, v24);
  v30 = sub_10022C350(&qword_100CCA9D0);
  v26(&v29[*(v30 + 48)], v27, v28);
  v31 = *(v25 + 8);
  v31(v49, v28);
  v32 = *(v36 + 8);
  v32(v35, v24);
  v31(v27, v28);
  return (v32)(v48, v24);
}

uint64_t sub_1005E5FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for CommonTabView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EnvironmentValues();
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CCA8B8);
  __chkstk_darwin(v10);
  v12 = (&v27 - v11);
  v31 = sub_1005E52E8();
  v13 = *(a1 + *(v3 + 40) + 8);

  if ((v13 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v28 = v3;
    v14 = static Log.runtimeIssuesLog.getter();
    v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v3 = v28;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v29 + 8))(v9, v30);
  }

  sub_1005DE614(v12 + v10[15]);

  v15 = sub_1005E4E7C();
  v17 = v16;
  v18 = *(a1 + *(v3 + 24));
  v19 = *(a1 + *(type metadata accessor for LocationViewerViewModel() + 36));
  sub_1005F1770(a1, v6);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  sub_100103E40(v6, v21 + v20);
  *v12 = v31;
  v22 = (v12 + v10[16]);
  *v22 = v15;
  v22[1] = v17;
  *(v12 + v10[17]) = v18;
  *(v12 + v10[18]) = v19;
  v23 = (v12 + v10[19]);
  *v23 = sub_1005F5308;
  v23[1] = v21;
  v24 = v12 + v10[20];
  *v24 = swift_getKeyPath();
  v24[8] = 0;

  Solarium.init()();
  sub_10022C350(&qword_100CCA8C0);
  v25 = sub_1005F6F6C(&unk_100CCA8C8);
  v33 = v10;
  v34 = v25;
  swift_getOpaqueTypeConformance2();
  View.staticIf<A, B>(_:then:)();
  return sub_100018198(v12, &qword_100CCA8B8);
}

uint64_t sub_1005E63D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LocationModel();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  v7 = type metadata accessor for CommonTabView(0);
  v8 = v7[5];
  v9 = type metadata accessor for LocationViewPage(0);
  sub_1005F1770(a2 + v8, a3 + v9[5]);
  v10 = *(a2 + v7[8]);
  v11 = *(a2 + *(type metadata accessor for LocationViewerViewModel() + 28));
  v12 = *(a2 + v7[9]);
  *(a3 + v9[6]) = v10;
  *(a3 + v9[7]) = v11;
  *(a3 + v9[8]) = v12;
  v13 = v9[9];
  *(a3 + v13) = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0);
  swift_storeEnumTagMultiPayload();
  v14 = a3 + v9[10];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  v15 = a3 + v9[11];
  type metadata accessor for PageControlDisplayState(0);
  sub_1000EA178(&unk_100CCA1B8);
  result = Environment.init<A>(_:)();
  *v15 = result;
  *(v15 + 8) = v17 & 1;
  return result;
}

uint64_t sub_1005E6574()
{
  static Edge.Set.top.getter();
  sub_10022C350(&qword_100CCA8B8);
  sub_1005F6F6C(&unk_100CCA8C8);
  return View.scrollEdgeEffectDisabled(_:for:)();
}

uint64_t sub_1005E6610(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CCA8D0);
  __chkstk_darwin(v2);
  v4 = v29 - v3;
  v5 = type metadata accessor for LocationModel();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  v6 = type metadata accessor for CommonTabView(0);
  v7 = v6[5];
  v8 = type metadata accessor for LocationViewPage(0);
  sub_1005F1770(a1 + v7, &v4[v8[5]]);
  v9 = *(a1 + v6[8]);
  v10 = *(a1 + *(type metadata accessor for LocationViewerViewModel() + 28));
  v11 = *(a1 + v6[9]);
  *&v4[v8[6]] = v9;
  v4[v8[7]] = v10;
  *&v4[v8[8]] = v11;
  v12 = v8[9];
  *&v4[v12] = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0);
  swift_storeEnumTagMultiPayload();
  v13 = &v4[v8[10]];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = &v4[v8[11]];
  type metadata accessor for PageControlDisplayState(0);
  sub_1000EA178(&unk_100CCA1B8);
  *v14 = Environment.init<A>(_:)();
  v14[8] = v15 & 1;
  v16 = LocationModel.id.getter();
  v18 = v17;
  v19 = &v4[*(sub_10022C350(&qword_100CCA8F0) + 52)];
  *v19 = v16;
  v19[1] = v18;
  if (qword_100CA27E0 != -1)
  {
    swift_once();
  }

  v21 = qword_100D90DF0;
  v20 = *algn_100D90DF8;
  v22 = &v4[*(v2 + 36)];
  type metadata accessor for ExtendedAppLaunchState(0);
  sub_1000EA178(&qword_100CB84D0);
  *v22 = Environment.init<A>(_:)();
  v22[8] = v23 & 1;
  v24 = type metadata accessor for AppStateTransitionModifier();
  v25 = *(v24 + 20);
  *&v22[v25] = swift_getKeyPath();
  sub_10022C350(&unk_100CE1000);
  swift_storeEnumTagMultiPayload();
  v26 = &v22[*(v24 + 24)];
  *v26 = v21;
  v26[1] = v20;

  Solarium.init()();
  sub_10022C350(&qword_100CCA8D8);
  v27 = sub_10010E37C();
  v29[0] = v2;
  v29[1] = v27;
  swift_getOpaqueTypeConformance2();
  View.staticIf<A, B>(_:then:)();
  return sub_100018198(v4, &qword_100CCA8D0);
}

uint64_t sub_1005E69E8()
{
  static Edge.Set.top.getter();
  sub_10022C350(&qword_100CCA8D0);
  sub_10010E37C();
  return View.scrollEdgeEffectDisabled(_:for:)();
}

uint64_t sub_1005E6A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccessibilityChildBehavior();
  v60 = *(v4 - 8);
  v61 = v4;
  __chkstk_darwin(v4);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CCA990);
  __chkstk_darwin(v7);
  v9 = &v57 - v8;
  v10 = sub_10022C350(&qword_100CCA920);
  __chkstk_darwin(v10);
  v12 = &v57 - v11;
  v13 = sub_10022C350(&qword_100CCA9D8);
  v62 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v57 - v14;
  v63 = sub_10022C350(&qword_100CCA918);
  __chkstk_darwin(v63);
  v59 = &v57 - v16;
  if (sub_1005E4A28())
  {
    *v9 = static VerticalAlignment.center.getter();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v17 = sub_10022C350(&qword_100CCA9E0);
    sub_1005E710C(a1, &v9[*(v17 + 44)]);
    v57 = v13;
    v58 = a2;
    sub_1005F6F6C(&unk_100CCA998);
    sub_10010E464();
    View.buttonStyle<A>(_:)();
    sub_100018198(v9, &qword_100CCA990);
    v18 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = &v12[*(sub_10022C350(&qword_100CCA988) + 36)];
    *v27 = v18;
    *(v27 + 1) = v20;
    *(v27 + 2) = v22;
    *(v27 + 3) = v24;
    *(v27 + 4) = v26;
    v27[40] = 0;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v28 = &v12[*(sub_10022C350(&qword_100CCA978) + 36)];
    v29 = v67;
    *v28 = v66;
    *(v28 + 1) = v29;
    *(v28 + 2) = v68;
    v30 = &v12[*(sub_10022C350(&qword_100CCA968) + 36)];
    v31 = *(sub_10022C350(&qword_100CAF750) + 28);
    v32 = enum case for Image.Scale.large(_:);
    v33 = type metadata accessor for Image.Scale();
    (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
    *v30 = swift_getKeyPath();
    LOBYTE(v32) = static Edge.Set.bottom.getter();
    KeyPath = swift_getKeyPath();
    v35 = &v12[*(sub_10022C350(&qword_100CCA958) + 36)];
    *v35 = v32;
    *(v35 + 1) = KeyPath;
    *(v35 + 2) = 0;
    *(v35 + 3) = 0;
    *(v35 + 4) = 0;
    v35[40] = 0;
    v36 = static Alignment.center.getter();
    v38 = v37;
    v39 = &v12[*(sub_10022C350(&qword_100CCA948) + 36)];
    sub_1005E7DC8(a1, v39);
    v40 = (v39 + *(sub_10022C350(&qword_100CCA9B8) + 36));
    *v40 = v36;
    v40[1] = v38;
    v12[*(sub_10022C350(&qword_100CCA938) + 36)] = 1;
    v41 = swift_getKeyPath();
    v42 = static Alignment.top.getter();
    v43 = &v12[*(v10 + 36)];
    *v43 = v41;
    v43[8] = 0;
    *(v43 + 2) = v42;
    *(v43 + 3) = v44;
    static AccessibilityChildBehavior.contain.getter();
    v45 = sub_1005F4DD8();
    View.accessibilityElement(children:)();
    (*(v60 + 8))(v6, v61);
    sub_100018198(v12, &qword_100CCA920);
    LocalizedStringKey.init(stringLiteral:)();
    v46 = Text.init(_:tableName:bundle:comment:)();
    v48 = v47;
    v50 = v49;
    v64 = v10;
    v65 = v45;
    swift_getOpaqueTypeConformance2();
    v51 = v59;
    v52 = v57;
    View.accessibilityLabel(_:)();
    sub_10010CD64(v46, v48, v50 & 1);

    (*(v62 + 8))(v15, v52);
    v53 = v51;
    v54 = v58;
    sub_10011C0F0(v53, v58, &qword_100CCA918);
    return sub_10001B350(v54, 0, 1, v63);
  }

  else
  {
    v56 = v63;

    return sub_10001B350(a2, 1, 1, v56);
  }
}

uint64_t sub_1005E710C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v81 = type metadata accessor for UserInterfaceSizeClass();
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v65 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10022C350(&qword_100CA64E8);
  __chkstk_darwin(v76);
  v80 = &v65 - v4;
  v5 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v5 - 8);
  v68 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v87 = &v65 - v8;
  __chkstk_darwin(v9);
  v77 = &v65 - v10;
  v75 = type metadata accessor for DebugButtonGroup(0);
  __chkstk_darwin(v75);
  v67 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CCAA10);
  __chkstk_darwin(v12 - 8);
  v83 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v82 = &v65 - v15;
  v70 = type metadata accessor for EnvironmentValues();
  v66 = *(v70 - 8);
  __chkstk_darwin(v70);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10022C350(&qword_100CCAA18);
  v73 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v65 - v22;
  v24 = type metadata accessor for PageControl(0);
  __chkstk_darwin(v24);
  v26 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_10022C350(&qword_100CCAA20);
  __chkstk_darwin(v72);
  v78 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v71 = &v65 - v29;
  __chkstk_darwin(v30);
  v88 = &v65 - v31;
  v85 = type metadata accessor for LocationViewerViewModel();
  v32 = *(a1 + v85[11]);
  v33 = type metadata accessor for CommonTabView(0);
  v69 = *(v33 + 28);
  sub_10042F370(a1 + v69, &v95);
  v94[0] = v32;
  v74 = v33;
  v34 = *(v33 + 40);
  v86 = a1;
  v35 = *(a1 + v34 + 8);

  if ((v35 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v36 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v66 + 8))(v17, v70);
  }

  type metadata accessor for LocationViewerBindingWrapper(0);
  sub_1000EA178(&unk_100CC9B58);
  Bindable<A>.init(wrappedValue:)();
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v70 = v23;
  v37 = *(v73 + 8);
  v37(v20, v18);
  v38 = v86;
  *&v26[v24[5]] = *(v86 + v85[5]);
  v39 = v24[6];
  *&v26[v39] = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0);
  swift_storeEnumTagMultiPayload();
  v40 = &v26[v24[7]];
  type metadata accessor for PageControlDisplayState(0);
  sub_1000EA178(&unk_100CCA1B8);

  v41 = Environment.init<A>(_:)();
  LOBYTE(v39) = v42;
  v37(v70, v18);
  *v40 = v41;
  v40[8] = v39 & 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v43 = v71;
  sub_100103E40(v26, v71);
  memcpy((v43 + *(v72 + 36)), __src, 0x70uLL);
  sub_10011C0F0(v43, v88, &qword_100CCAA20);
  if (qword_100CA2300 != -1)
  {
    swift_once();
  }

  v45 = v81;
  v44 = v82;
  v47 = v79;
  v46 = v80;
  v48 = v77;
  v49 = v87;
  v50 = v75;
  if (byte_100CC9710 == 1)
  {
    v51 = v67;
    sub_1005F1770(v38, v67);
    sub_10042F370(v38 + v69, v51 + *(v50 + 20));
    *(v51 + *(v50 + 24)) = 0x4028000000000000;
    sub_100103E40(v51, v44);
    v52 = 0;
  }

  else
  {
    v52 = 1;
  }

  sub_10001B350(v44, v52, 1, v50);
  sub_10009D114();
  (*(v47 + 104))(v49, enum case for UserInterfaceSizeClass.compact(_:), v45);
  sub_10001B350(v49, 0, 1, v45);
  v53 = *(v76 + 48);
  sub_1000302D8(v48, v46, &qword_100CA6028);
  sub_1000302D8(v49, v46 + v53, &qword_100CA6028);
  if (sub_100024D10(v46, 1, v45) == 1)
  {
    sub_100018198(v49, &qword_100CA6028);
    sub_100018198(v48, &qword_100CA6028);
    if (sub_100024D10(v46 + v53, 1, v45) == 1)
    {
      sub_100018198(v46, &qword_100CA6028);
LABEL_16:
      v58 = *(v86 + v85[10]);
      sub_10042F370(v86 + v69, v90 + 8);
      LOBYTE(v90[0]) = v58;
      v92 = v90[1];
      v93 = v90[2];
      v91 = v90[0];
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v54 = v68;
  sub_1000302D8(v46, v68, &qword_100CA6028);
  if (sub_100024D10(v46 + v53, 1, v45) == 1)
  {
    sub_100018198(v87, &qword_100CA6028);
    sub_100018198(v48, &qword_100CA6028);
    (*(v47 + 8))(v54, v45);
LABEL_13:
    sub_100018198(v46, &qword_100CA64E8);
    goto LABEL_14;
  }

  v55 = v65;
  (*(v47 + 32))(v65, v46 + v53, v45);
  sub_1000EA178(&qword_100CA6088);
  v56 = dispatch thunk of static Equatable.== infix(_:_:)();
  v57 = *(v47 + 8);
  v57(v55, v45);
  sub_100018198(v87, &qword_100CA6028);
  sub_100018198(v48, &qword_100CA6028);
  v57(v68, v45);
  sub_100018198(v46, &qword_100CA6028);
  if (v56)
  {
    goto LABEL_16;
  }

LABEL_14:
  v92 = 0u;
  v93 = 0u;
  v91 = 0u;
LABEL_17:
  sub_10010E5F4(v94, v90);
  v59 = v88;
  v60 = v78;
  sub_1000302D8(v88, v78, &qword_100CCAA20);
  v61 = v83;
  sub_1000302D8(v44, v83, &qword_100CCAA10);
  sub_1000302D8(&v91, v89, &qword_100CCAA28);
  v62 = v84;
  sub_10010E5F4(v90, v84);
  v63 = sub_10022C350(&qword_100CCAA30);
  sub_1000302D8(v60, v62 + v63[12], &qword_100CCAA20);
  sub_1000302D8(v61, v62 + v63[16], &qword_100CCAA10);
  sub_1000302D8(v89, v62 + v63[20], &qword_100CCAA28);
  sub_100018198(&v91, &qword_100CCAA28);
  sub_100018198(v44, &qword_100CCAA10);
  sub_100018198(v59, &qword_100CCAA20);
  sub_10010E78C(v94);
  sub_100018198(v89, &qword_100CCAA28);
  sub_100018198(v61, &qword_100CCAA10);
  sub_100018198(v60, &qword_100CCAA20);
  return sub_10010E78C(v90);
}

uint64_t sub_1005E7DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_10022C350(&qword_100CCA9E8);
  __chkstk_darwin(v3);
  v33 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v7 = &v29 - v6;
  v34 = sub_10022C350(&qword_100CCA9F0);
  __chkstk_darwin(v34);
  v9 = (&v29 - v8);
  v10 = type metadata accessor for Color.RGBColorSpace();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EnvironmentValues();
  v32 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1 + *(type metadata accessor for CommonTabView(0) + 44);
  v18 = *v17;
  if (*(v17 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v30 = v14;
    v20 = static Log.runtimeIssuesLog.getter();
    v31 = v11;
    v21 = a1;
    v22 = v20;
    os_log(_:dso:log:_:_:)();

    a1 = v21;
    v11 = v31;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v18, 0);
    (*(v32 + 8))(v16, v30);
    if (v36 != 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    (*(v11 + 104))(v13, enum case for Color.RGBColorSpace.sRGB(_:), v10);
    *v9 = Color.init(_:white:opacity:)();
    swift_storeEnumTagMultiPayload();
    sub_10010EB90();
    return _ConditionalContent<>.init(storage:)();
  }

  if (v18)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(a1 + *(type metadata accessor for LocationViewerViewModel() + 52)) == 1)
  {
    static Color.black.getter();
    v19 = Color.opacity(_:)();
  }

  else
  {
    v19 = static Color.clear.getter();
  }

  if (qword_100CA23A0 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Material();
  v25 = sub_10000703C(v24, qword_100D90600);
  v26 = static Edge.Set.all.getter();
  v27 = v33;
  v28 = v33 + *(v3 + 36);
  (*(*(v24 - 8) + 16))(v28, v25, v24);
  v28[*(sub_10022C350(&qword_100CCA9F8) + 36)] = v26;
  *v27 = v19;
  sub_10011C0F0(v27, v7, &qword_100CCA9E8);
  sub_1000302D8(v7, v9, &qword_100CCA9E8);
  swift_storeEnumTagMultiPayload();
  sub_10010EB90();
  _ConditionalContent<>.init(storage:)();
  return sub_100018198(v7, &qword_100CCA9E8);
}

uint64_t sub_1005E82BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CommonTabView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_10022C350(&qword_100CB2558);
  __chkstk_darwin(v7 - 8);
  v9 = v24 - v8;
  v10 = *(a1 + *(type metadata accessor for LocationViewerViewModel() + 32));
  if (v10 < 0)
  {
    LocalizedStringKey.init(stringLiteral:)();
    v14 = Text.init(_:tableName:bundle:comment:)();
    v26 = v15;
    v27 = v14;
    v24[1] = v16;
    v25 = v17;
    LocalizedStringKey.init(stringLiteral:)();
    Text.init(_:tableName:bundle:comment:)();
    LocalizedStringKey.init(stringLiteral:)();
    v18 = Text.init(_:tableName:bundle:comment:)();
    v20 = v19;
    v22 = v21;
    static Alert.Button.default(_:action:)();
    sub_10010CD64(v18, v20, v22 & 1);

    v23 = type metadata accessor for Alert.Button();
    sub_10001B350(v9, 0, 1, v23);
    return Alert.init(title:message:dismissButton:)();
  }

  else
  {
    sub_1005F1770(a1, v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v12 = swift_allocObject();
    sub_100103E40(v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), &v12[v11]);
    v12[v11 + v6] = v10;
    sub_1003A9460(v10 + 3, LocationSearchEntityFromStringResolver.init(), 0, sub_1005F4924, v12, a2);
  }
}

void sub_1005E861C(uint64_t a1, char a2)
{
  v4 = type metadata accessor for CommonTabView(0);
  sub_1000161C0((a1 + *(v4 + 28)), *(a1 + *(v4 + 28) + 24));
  sub_1005D0708(a2);
}

uint64_t sub_1005E8668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000EA178(&unk_100CCA018);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_1005E86FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v65 = a2;
  sub_10022E824(&qword_100CCAB70);
  v70 = *(a1 + 16);
  v5 = *(&v70 + 1);
  type metadata accessor for Optional();
  v6 = v70;
  swift_getTupleTypeMetadata2();
  v7 = type metadata accessor for TupleView();
  sub_1005F6F6C(&unk_100CCAB78);
  v60 = v7;
  v64 = type metadata accessor for _VariadicView.Tree();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v61 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v62 = &v54 - v10;
  v59 = type metadata accessor for LocationRegularViewLayout();
  __chkstk_darwin(v59);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CA5010);
  __chkstk_darwin(v13 - 8);
  v15 = &v54 - v14;
  v56 = type metadata accessor for ContentStatusBannerPresentationMetrics(0);
  __chkstk_darwin(v56);
  v55 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v54 - v18;
  v20 = type metadata accessor for EnvironmentValues();
  v66 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *(a1 + 32);
  sub_1005E900C(v3, v6, v5, v58, *(&v58 + 1));
  v24 = v23;
  v25 = v3 + *(a1 + 80);
  v26 = *v25;
  if (v25[8] != 1)
  {

    static os_log_type_t.fault.getter();
    v27 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v26, 0);
    (*(v66 + 8))(v22, v20);
    v26 = LOBYTE(__dst[0]);
  }

  v67 = v20;
  v28 = v3 + *(a1 + 76);
  v30 = *v28;
  v29 = *(v28 + 1);
  v31 = v28[32] == 1;
  v57 = v26;
  v69 = v29;
  v68 = v30;
  if (!v31)
  {
    v32 = v30;

    static os_log_type_t.fault.getter();
    v33 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100109A48(v32, *(&v68 + 1), v69, *(&v69 + 1), 0);
    (*(v66 + 8))(v22, v67);
    v69 = __dst[1];
    v68 = __dst[0];
  }

  sub_1009E9538();
  sub_10011C0F0(&v19[*(v56 + 20)], v15, &qword_100CA5010);
  v34 = type metadata accessor for ContentStatusBanner();
  v35 = sub_100024D10(v15, 1, v34);
  sub_100018198(v15, &qword_100CA5010);
  v36 = 0;
  if (v35 != 1)
  {
    v37 = v55;
    sub_1009E9538();
    v36 = *(v37 + 1);
    sub_1001095D0();
  }

  v38 = *v3;
  v39 = *(a1 + 72);
  memcpy(__dst, v3 + v39, 0x49uLL);
  v40 = v67;
  if (BYTE8(__dst[4]))
  {
    memcpy(__src, v3 + v39, sizeof(__src));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v41 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018198(__dst, &qword_100CB71A8);
    (*(v66 + 8))(v22, v40);
  }

  v42 = v57 & 1;
  memcpy(v73, __src, sizeof(v73));
  v43 = v59;
  sub_1000FC9C8();
  sub_1001681D4();
  v44 = memcpy(v12, v73, 0x48uLL);
  v45 = &v12[*(v43 + 28)];
  *v45 = v42;
  *(v45 + 1) = *v75;
  *(v45 + 1) = *&v75[3];
  *(v45 + 24) = v69;
  *(v45 + 8) = v68;
  *(v45 + 5) = v36;
  *(v45 + 6) = v24;
  *(v45 + 7) = v38;
  __chkstk_darwin(v44);
  v46 = v58;
  *(&v54 - 3) = v70;
  *(&v54 - 2) = v46;
  *(&v54 - 2) = v3;
  sub_1000EA178(&unk_100CCAB80);
  WitnessTable = swift_getWitnessTable();
  v48 = v61;
  sub_1005DE46C();
  sub_1001095D0();
  v71 = sub_1005F6F6C(&unk_100CCAB88);
  v72 = WitnessTable;
  v49 = v64;
  v50 = swift_getWitnessTable();
  v51 = v62;
  sub_1000833D8(v48, v49, v50);
  v52 = *(v63 + 8);
  v52(v48, v49);
  sub_1000833D8(v51, v49, v50);
  return (v52)(v51, v49);
}

uint64_t sub_1005E900C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10022C350(&qword_100CA5010);
  __chkstk_darwin(v9 - 8);
  v11 = v19 - v10;
  v12 = type metadata accessor for ContentStatusBannerPresentationMetrics(0);
  __chkstk_darwin(v12);
  __chkstk_darwin(v13);
  v15 = v19 - v14;
  result = static Solarium.isEnabled.getter();
  if ((result & 1) == 0)
  {
    v19[0] = a2;
    v19[1] = a3;
    v19[2] = a4;
    v19[3] = a5;
    type metadata accessor for LocationViewerLayoutContainer();
    sub_1009E9538();
    sub_10011C0F0(&v15[*(v12 + 20)], v11, &qword_100CA5010);
    v17 = type metadata accessor for ContentStatusBanner();
    v18 = sub_100024D10(v11, 1, v17);
    result = sub_100018198(v11, &qword_100CA5010);
    if (v18 != 1)
    {
      result = DeviceSupportsStickyHeaders();
      if (result)
      {
        sub_1009E9538();
        return sub_1001095D0();
      }
    }
  }

  return result;
}

uint64_t sub_1005E920C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v48 = a6;
  v42 = *(a3 - 8);
  __chkstk_darwin(a1);
  v41 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v40 = &v40 - v13;
  v44 = type metadata accessor for Optional();
  v14 = *(v44 - 8);
  __chkstk_darwin(v44);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v46 = &v40 - v18;
  v19 = *(a2 - 1);
  __chkstk_darwin(v20);
  v45 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v40 - v23;
  v54 = a2;
  v55 = a3;
  v56 = a4;
  v57 = a5;
  v25 = a5;
  v26 = type metadata accessor for LocationViewerLayoutContainer();
  v27 = a1 + *(v26 + 56);
  v49 = v24;
  v43 = a2;
  v47 = a4;
  sub_1000833D8(v27, a2, a4);
  if (sub_1005E962C(v26))
  {
    v28 = v40;
    sub_1000833D8(a1 + *(v26 + 60), a3, v25);
    v29 = v41;
    sub_1000833D8(v28, a3, v25);
    v30 = v42;
    (*(v42 + 8))(v28, a3);
    (*(v30 + 32))(v16, v29, a3);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = v25;
  sub_10001B350(v16, v31, 1, a3);
  v33 = v46;
  sub_1003E7FD4(v16, v46);
  v34 = *(v14 + 8);
  v35 = v44;
  v34(v16, v44);
  v36 = v45;
  v37 = v43;
  (*(v19 + 16))(v45, v49, v43);
  v54 = v36;
  (*(v14 + 16))(v16, v33, v35);
  v55 = v16;
  v53[0] = v37;
  v53[1] = v35;
  v50 = v32;
  v51 = v47;
  WitnessTable = swift_getWitnessTable();
  sub_10012E24C(&v54, 2, v53);
  v34(v33, v35);
  v38 = *(v19 + 8);
  v38(v49, v37);
  v34(v16, v35);
  return (v38)(v36, v37);
}

uint64_t sub_1005E962C(uint64_t a1)
{
  v3 = type metadata accessor for DisplayMetrics();
  __chkstk_darwin(v3);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(a1 + 72);
  memcpy(__dst, (v1 + v10), 0x49uLL);
  if (__dst[9])
  {
    memcpy(v14, (v1 + v10), sizeof(v14));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018198(__dst, &qword_100CB71A8);
    (*(v7 + 8))(v9, v6);
  }

  if (v14[49] == 3)
  {
    v12 = 0;
  }

  else
  {
    sub_1000FC9C8();
    if (qword_100CA24D0 != -1)
    {
      swift_once();
    }

    if (byte_100D90788 != 1 || *(v5 + 1) == 1 || (DynamicTypeSize.isAccessibilitySize.getter() & 1) != 0)
    {
      v12 = 0;
    }

    else if (byte_100D90788 == 1 && (DynamicTypeSize.isAccessibilitySize.getter() & 1) == 0 && sub_10029C3DC(*v5) && (v5[17] & 1) != 0)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_1004B5750();
    }

    sub_1001095D0();
  }

  return v12 & 1;
}

uint64_t sub_1005E98E8@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v37 = &v34[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10022C350(&qword_100CA64E8);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v34[-v7];
  v9 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v9 - 8);
  v39 = &v34[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v34[-v12];
  __chkstk_darwin(v14);
  v16 = &v34[-v15];
  v42 = type metadata accessor for LocationViewerPageControl(0);
  __chkstk_darwin(v42);
  v18 = &v34[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = sub_10022C350(&qword_100CC9B00);
  __chkstk_darwin(v41);
  v20 = &v34[-v19];
  v40 = *(v1 + *(type metadata accessor for PageControl(0) + 20));

  sub_10009D114();
  v38 = v3;
  (*(v3 + 104))(v13, enum case for UserInterfaceSizeClass.compact(_:), v2);
  sub_10001B350(v13, 0, 1, v2);
  v21 = *(v6 + 56);
  sub_1000302D8(v16, v8, &qword_100CA6028);
  sub_1000302D8(v13, &v8[v21], &qword_100CA6028);
  if (sub_100024D10(v8, 1, v2) == 1)
  {
    sub_100018198(v13, &qword_100CA6028);
    sub_100018198(v16, &qword_100CA6028);
    if (sub_100024D10(&v8[v21], 1, v2) == 1)
    {
      sub_100018198(v8, &qword_100CA6028);
      v22 = 0;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1000302D8(v8, v39, &qword_100CA6028);
  if (sub_100024D10(&v8[v21], 1, v2) == 1)
  {
    sub_100018198(v13, &qword_100CA6028);
    sub_100018198(v16, &qword_100CA6028);
    (*(v38 + 8))(v39, v2);
LABEL_6:
    sub_100018198(v8, &qword_100CA64E8);
    v22 = 1;
    goto LABEL_8;
  }

  v23 = v38;
  v24 = &v8[v21];
  v25 = v37;
  (*(v38 + 32))(v37, v24, v2);
  sub_1000EA178(&qword_100CA6088);
  v36 = v1;
  v26 = v39;
  v35 = dispatch thunk of static Equatable.== infix(_:_:)();
  v27 = *(v23 + 8);
  v27(v25, v2);
  sub_100018198(v13, &qword_100CA6028);
  sub_100018198(v16, &qword_100CA6028);
  v27(v26, v2);
  sub_100018198(v8, &qword_100CA6028);
  v22 = v35 ^ 1;
LABEL_8:
  sub_10022C350(&qword_100CC9118);
  Binding.projectedValue.getter();
  *v18 = v40;
  v18[8] = v22 & 1;
  v28 = &v20[*(v41 + 36)];
  Binding.wrappedValue.getter();
  v29 = &v28[*(type metadata accessor for DisableAnimationsWhilePageControlExperiencingInteractionModifier(0) + 20)];
  v44 = 0;
  State.init(wrappedValue:)();
  v30 = v46;
  *v29 = v45;
  *(v29 + 1) = v30;
  sub_100103E40(v18, v20);
  if (sub_1005E9EE4())
  {
    v31 = 1.0;
  }

  else
  {
    v31 = 0.0;
  }

  v32 = v43;
  sub_10011C0F0(v20, v43, &qword_100CC9B00);
  result = sub_10022C350(&qword_100CCAB68);
  *(v32 + *(result + 36)) = v31;
  return result;
}

uint64_t sub_1005E9EE4()
{
  v1 = type metadata accessor for EnvironmentValues();
  v31 = *(v1 - 8);
  v32 = v1;
  __chkstk_darwin(v1);
  v30 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for UserInterfaceSizeClass();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CA64E8);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v28 - v8;
  v10 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  v33 = type metadata accessor for PageControl(0);
  v34 = v0;
  sub_10009D114();
  (*(v4 + 104))(v15, enum case for UserInterfaceSizeClass.compact(_:), v3);
  sub_10001B350(v15, 0, 1, v3);
  v19 = *(v7 + 56);
  sub_1000302D8(v18, v9, &qword_100CA6028);
  sub_1000302D8(v15, &v9[v19], &qword_100CA6028);
  if (sub_100024D10(v9, 1, v3) == 1)
  {
    sub_100018198(v15, &qword_100CA6028);
    sub_100018198(v18, &qword_100CA6028);
    if (sub_100024D10(&v9[v19], 1, v3) == 1)
    {
      sub_100018198(v9, &qword_100CA6028);
LABEL_11:
      v23 = 1;
      return v23 & 1;
    }

    goto LABEL_6;
  }

  sub_1000302D8(v9, v12, &qword_100CA6028);
  if (sub_100024D10(&v9[v19], 1, v3) == 1)
  {
    sub_100018198(v15, &qword_100CA6028);
    sub_100018198(v18, &qword_100CA6028);
    (*(v4 + 8))(v12, v3);
LABEL_6:
    sub_100018198(v9, &qword_100CA64E8);
    goto LABEL_7;
  }

  v24 = v29;
  (*(v4 + 32))(v29, &v9[v19], v3);
  sub_1000EA178(&qword_100CA6088);
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  v26 = *(v4 + 8);
  v26(v24, v3);
  sub_100018198(v15, &qword_100CA6028);
  sub_100018198(v18, &qword_100CA6028);
  v26(v12, v3);
  sub_100018198(v9, &qword_100CA6028);
  if (v25)
  {
    goto LABEL_11;
  }

LABEL_7:
  v20 = *(v34 + *(v33 + 28) + 8);

  if ((v20 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v22 = v30;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v31 + 8))(v22, v32);
  }

  v23 = sub_1005EA438();

  return v23 & 1;
}

uint64_t sub_1005EA438()
{
  swift_getKeyPath();
  sub_1000EA178(&unk_100CCA1B8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t sub_1005EA4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v65 = a2;
  v3 = type metadata accessor for DisableAnimationsWhilePageControlExperiencingInteractionModifier(0);
  v4 = *(v3 - 8);
  v66 = v3 - 8;
  __chkstk_darwin(v3 - 8);
  v50 = v5;
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LocalCoordinateSpace();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DragGesture();
  v9 = *(v8 - 8);
  v55 = v8;
  v56 = v9;
  __chkstk_darwin(v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CCA220);
  v13 = *(v12 - 8);
  v58 = v12;
  v59 = v13;
  __chkstk_darwin(v12);
  v49 = &v48 - v14;
  v15 = sub_10022C350(&qword_100CCA228);
  v60 = *(v15 - 8);
  v61 = v15;
  __chkstk_darwin(v15);
  v54 = &v48 - v16;
  v17 = sub_10022C350(&qword_100CCA230);
  v18 = *(v17 - 8);
  v62 = v17;
  v63 = v18;
  __chkstk_darwin(v17);
  v57 = &v48 - v19;
  static CoordinateSpaceProtocol<>.local.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v20 = v2;
  v51 = v2;
  v67 = v6;
  v53 = type metadata accessor for DisableAnimationsWhilePageControlExperiencingInteractionModifier;
  sub_1005F1770(v2, v6);
  v21 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v22 = swift_allocObject();
  v52 = type metadata accessor for DisableAnimationsWhilePageControlExperiencingInteractionModifier;
  sub_100103E40(v6, v22 + v21);
  sub_1000EA178(&unk_100CCA238);
  sub_1000EA178(&unk_100CCA240);
  v23 = v55;
  Gesture<>.onChanged(_:)();

  (*(v56 + 8))(v11, v23);
  v24 = v67;
  sub_1005F1770(v20, v67);
  v25 = swift_allocObject();
  sub_100103E40(v24, v25 + v21);
  sub_1005F6F6C(&unk_100CCA248);
  v26 = v54;
  v27 = v58;
  v28 = v49;
  Gesture.onEnded(_:)();

  (*(v59 + 8))(v28, v27);
  static GestureMask.all.getter();
  v29 = sub_10022C350(&qword_100CCA250);
  v30 = sub_1005F6F6C(&unk_100CCA258);
  v31 = sub_1005F6F6C(&unk_100CCA260);
  v32 = v57;
  v33 = v26;
  v34 = v61;
  View.simultaneousGesture<A>(_:including:)();
  (*(v60 + 8))(v33, v34);
  v35 = v51;
  v36 = v67;
  sub_1005F1770(v51, v67);
  v37 = swift_allocObject();
  sub_100103E40(v36, v37 + v21);
  type metadata accessor for Location.Identifier();
  v69 = v29;
  v70 = v34;
  v71 = v30;
  v72 = v31;
  swift_getOpaqueTypeConformance2();
  sub_1000EA178(&qword_100CA3A48);
  v38 = v65;
  v39 = v62;
  View.onChange<A>(of:initial:_:)();

  (*(v63 + 8))(v32, v39);
  v40 = v35 + *(v66 + 28);
  v41 = *v40;
  v42 = *(v40 + 8);
  LOBYTE(v69) = v41;
  v70 = v42;
  sub_10022C350(&qword_100CCA268);
  State.wrappedValue.getter();
  v43 = v68 == 2;
  type metadata accessor for EnvironmentAnimatedBackgroundDisabledReasons();
  sub_1000EA178(&qword_100CBF218);
  v44 = Environment.init<A>(_:)();
  LOBYTE(v36) = v45;
  result = sub_10022C350(&qword_100CCA270);
  v47 = v38 + *(result + 36);
  *v47 = v44;
  *(v47 + 8) = v36 & 1;
  *(v47 + 9) = v43;
  return result;
}

uint64_t sub_1005EACDC()
{
  type metadata accessor for DisableAnimationsWhilePageControlExperiencingInteractionModifier(0);

  sub_10022C350(&qword_100CCA268);
  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

uint64_t sub_1005EAD88()
{
  type metadata accessor for DisableAnimationsWhilePageControlExperiencingInteractionModifier(0);

  sub_10022C350(&qword_100CCA268);
  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

uint64_t sub_1005EAE28()
{
  type metadata accessor for DisableAnimationsWhilePageControlExperiencingInteractionModifier(0);

  sub_10022C350(&qword_100CCA268);
  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

uint64_t sub_1005EAEF8(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1005EAFA0();
  }

  return result;
}

uint64_t sub_1005EB058()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v18[-v7];
  v9 = *(v1 + 24);
  if (v9)
  {
    v10 = v9;
    if ([v10 isValid])
    {
      static Date.now.getter();
      Date.addingTimeInterval(_:)();
      v11 = *(v3 + 8);
      v11(v5, v2);
      v12.super.isa = Date._bridgeToObjectiveC()().super.isa;
      v11(v8, v2);
      [v10 setFireDate:v12.super.isa];

      goto LABEL_7;
    }
  }

  if (static Accessibility.shouldAlwaysShowHoverUI.getter())
  {
    goto LABEL_8;
  }

  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  (*(v3 + 8))(v5, v2);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = objc_allocWithZone(NSTimer);
  v15 = sub_100087BC8(v8, 0, sub_1005F6C1C, v13, 0.0);
  v16 = [objc_opt_self() mainRunLoop];
  [v16 addTimer:v15 forMode:NSDefaultRunLoopMode];

  v12.super.isa = *(v1 + 24);
  *(v1 + 24) = v15;
LABEL_7:

LABEL_8:
  result = sub_1005EA438();
  if ((result & 1) == 0)
  {
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t sub_1005EB2EC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 24);
    *(result + 24) = 0;

    static Animation.linear.getter();
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t sub_1005EB390()
{
  v1 = OBJC_IVAR____TtC7WeatherP33_971182080BE1A8931C9C36EF48C83CFF23PageControlDisplayState___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1005EB43C()
{
  sub_10000FE4C();
  v0 = sub_100739F1C();
  return sub_100005F94(v0);
}

uint64_t sub_1005EB464()
{
  v1 = sub_10022C350(&qword_100CCAA68);
  __chkstk_darwin(v1);
  v3 = &v18 - v2;
  v4 = sub_10022C350(&qword_100CCAA70);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(type metadata accessor for PinnedMapView(0) + 40);
  v20 = v0;
  v12 = v0 + v11;
  v13 = *v12;
  if (*(v12 + 8) == 1)
  {
    v14 = *v12;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    v19 = v7;
    v16 = v15;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v13, 0);
    (*(v8 + 8))(v10, v19);
    v14 = v21;
  }

  if ((v14 & 0xC0) == 0x40)
  {
    swift_storeEnumTagMultiPayload();
    sub_1005F5384();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    sub_1005EB76C(v3);
    sub_1000302D8(v3, v6, &qword_100CCAA68);
    swift_storeEnumTagMultiPayload();
    sub_1005F5384();
    _ConditionalContent<>.init(storage:)();
    return sub_100018198(v3, &qword_100CCAA68);
  }
}

uint64_t sub_1005EB76C@<X0>(uint64_t a1@<X8>)
{
  v108 = a1;
  v2 = type metadata accessor for AccessibilityActionKind();
  v106 = *(v2 - 8);
  v107 = v2;
  __chkstk_darwin(v2);
  v105 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&unk_100CE0EB0);
  v101 = *(v4 - 8);
  v102 = v4;
  __chkstk_darwin(v4);
  v100 = &v78 - v5;
  v6 = type metadata accessor for EnvironmentValues();
  v92 = *(v6 - 8);
  v93 = v6;
  __chkstk_darwin(v6);
  v91 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PinnedMapView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v110 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CCAB38);
  v95 = *(v11 - 8);
  v96 = v11;
  __chkstk_darwin(v11);
  v94 = &v78 - v12;
  v98 = sub_10022C350(&qword_100CCAAA8);
  __chkstk_darwin(v98);
  v99 = &v78 - v13;
  v14 = sub_10022C350(&qword_100CCAA98);
  __chkstk_darwin(v14 - 8);
  v104 = &v78 - v15;
  v97 = sub_10022C350(&qword_100CCAA88);
  __chkstk_darwin(v97);
  v103 = &v78 - v16;
  v17 = type metadata accessor for DisplayMetrics();
  __chkstk_darwin(v17);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  __chkstk_darwin(v21);
  v23 = &v78 - v22;
  v109 = v1;
  sub_1000FC9C8();
  if (qword_100CA24D0 != -1)
  {
    swift_once();
  }

  if (byte_100D90788 != 1 || *(v23 + 1) == 1 || (DynamicTypeSize.isAccessibilitySize.getter() & 1) != 0 || !sub_10029C3DC(*v23))
  {
    sub_1001095D0();
  }

  else
  {
    v24 = v23[17];
    sub_1001095D0();
    if (v24 == 1)
    {
      v25 = static Edge.Set.bottom.getter();
      goto LABEL_11;
    }
  }

  v25 = Edge.Set.init(rawValue:)();
LABEL_11:
  v87 = v25;
  v26 = v109;
  v27 = static Alignment.center.getter();
  v85 = v28;
  v86 = v27;
  v29 = v110;
  sub_1005F1770(v26, v110);
  v30 = *(v9 + 80);
  v31 = (v30 + 16) & ~v30;
  v88 = v31 + v10;
  v89 = v30;
  v32 = swift_allocObject();
  v90 = v31;
  v84 = v32;
  sub_100103E40(v29, v32 + v31);
  KeyPath = swift_getKeyPath();
  static UnitPoint.center.getter();
  static AnyTransition.scale(scale:anchor:)();
  static UnitPoint.center.getter();
  static AnyTransition.scale(scale:anchor:)();
  static AnyTransition.asymmetric(insertion:removal:)();

  if (qword_100CA21B8 != -1)
  {
    swift_once();
  }

  v112[0] = qword_100D90340;
  v111[0] = 0x4030000000000000;
  sub_1003B953C();
  static AnyTransition.modifier<A>(active:identity:)();
  v82 = AnyTransition.combined(with:)();

  v112[0] = 0;
  v112[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v114 = 0xD000000000000010;
  v115 = 0x8000000100AD7220;
  v33._countAndFlagsBits = Location.Identifier.id.getter();
  String.append(_:)(v33);

  v34._countAndFlagsBits = 45;
  v34._object = 0xE100000000000000;
  String.append(_:)(v34);
  v35 = *(v8 + 36);
  memcpy(v119, (v26 + v35), 0x49uLL);
  if (v119[72])
  {
    memcpy(v113, (v26 + v35), sizeof(v113));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v36 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v37 = v91;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018198(v119, &qword_100CB71A8);
    (*(v92 + 8))(v37, v93);
  }

  memcpy(__dst, v113, sizeof(__dst));
  v38._countAndFlagsBits = sub_10012EC4C();
  String.append(_:)(v38);

  v80 = v115;
  v81 = v114;
  v79 = *(v26 + *(v8 + 28));
  v39 = static MatchedGeometryProperties.frame.getter();
  static UnitPoint.center.getter();
  v41 = v40;
  v43 = v42;
  v116 = 0;
  sub_1000FC9C8();
  v44 = sub_1004B5750();
  sub_1001095D0();
  if (v44)
  {
    memcpy(v112, (v26 + v35), 0x49uLL);
    if (v112[9])
    {
      memcpy(v111, (v26 + v35), 0x48uLL);
    }

    else
    {

      static os_log_type_t.fault.getter();
      v45 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v26 = v109;
      v46 = v91;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100018198(v112, &qword_100CB71A8);
      (*(v92 + 8))(v46, v93);
    }

    memcpy(v123, v111, sizeof(v123));
    sub_1000FC9C8();
    v47 = *v19;
    if (!sub_1004CF4D0(*v19) && (!sub_10029C3DC(v47) || !v19[16]))
    {
      sub_10014B28C();
    }

    sub_1001095D0();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v117[7] = v120;
  *&v117[23] = v121;
  *&v117[39] = v122;
  sub_10022C350(&qword_100CA4060);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_100A2D320;
  v49 = static Edge.Set.leading.getter();
  *(v48 + 32) = v49;
  v50 = static Edge.Set.trailing.getter();
  *(v48 + 33) = v50;
  v51 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v49)
  {
    v51 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v50)
  {
    v51 = Edge.Set.init(rawValue:)();
  }

  sub_1000FC9C8();
  v52 = sub_1004B5750();
  sub_1001095D0();
  if (v52)
  {
    memcpy(v112, (v26 + v35), 0x49uLL);
    if (v112[9])
    {
      memcpy(v111, (v26 + v35), 0x48uLL);
    }

    else
    {

      static os_log_type_t.fault.getter();
      v53 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v54 = v91;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100018198(v112, &qword_100CB71A8);
      (*(v92 + 8))(v54, v93);
    }
  }

  EdgeInsets.init(_all:)();
  v118 = 0;
  v111[0] = v86;
  v111[1] = v85;
  v111[2] = KeyPath;
  LOBYTE(v111[3]) = 0;
  v111[4] = sub_1005F5BC4;
  v111[5] = v84;
  v111[6] = v82;
  v111[7] = v81;
  v111[8] = v80;
  v111[9] = v79;
  LODWORD(v111[10]) = v39;
  v111[11] = v41;
  v111[12] = v43;
  LOBYTE(v111[13]) = 1;
  *(&v111[13] + 1) = *v117;
  *(&v111[15] + 1) = *&v117[16];
  *(&v111[17] + 1) = *&v117[32];
  v111[19] = *&v117[47];
  LOBYTE(v111[20]) = v51;
  v111[21] = v55;
  v111[22] = v56;
  v111[23] = v57;
  v111[24] = v58;
  LOBYTE(v111[25]) = 0;
  Solarium.init()();
  v59 = v100;
  v60 = static ViewInputPredicate.! prefix(_:)();
  v109 = &v78;
  __chkstk_darwin(v60);
  __chkstk_darwin(v61);
  v93 = sub_10022C350(&qword_100CCAAB0);
  sub_10022C350(&qword_100CCAAB8);
  sub_10022C350(&qword_100CCAAC0);
  sub_1005F574C();
  v112[0] = &type metadata for Solarium;
  v112[1] = &protocol witness table for Solarium;
  swift_getOpaqueTypeConformance2();
  sub_1005F5A00();
  sub_1005F5B18();
  v62 = v94;
  v63 = v102;
  View.staticIf<A, B, C>(_:then:else:)();
  (*(v101 + 8))(v59, v63);
  memcpy(v112, v111, 0xC9uLL);
  sub_100018198(v112, &qword_100CCAAB0);
  v64 = v99;
  (*(v95 + 32))(v99, v62, v96);
  *(v64 + *(v98 + 36)) = 0;
  v65 = v105;
  static AccessibilityActionKind.escape.getter();
  v66 = v110;
  sub_1005F1770(v26, v110);
  v67 = swift_allocObject();
  sub_100103E40(v66, v67 + v90);
  sub_1005F55D0();
  v68 = v104;
  View.accessibilityAction(_:_:)();

  (*(v106 + 8))(v65, v107);
  sub_100018198(v64, &qword_100CCAAA8);
  v69 = v103;
  v70 = &v103[*(v97 + 36)];
  *v70 = swift_getKeyPath();
  sub_10022C350(&qword_100CB3278);
  swift_storeEnumTagMultiPayload();
  v71 = type metadata accessor for ComputePinnedMapSizeViewModifier(0);
  v72 = v70 + v71[5];
  *v72 = swift_getKeyPath();
  *(v72 + 8) = 0u;
  *(v72 + 24) = 0u;
  *(v72 + 33) = 0u;
  v73 = v70 + v71[6];
  v74 = swift_getKeyPath();
  LOBYTE(v111[0]) = 0;
  *v73 = v74;
  v73[72] = 0;
  v75 = v70 + v71[7];
  *v75 = swift_getKeyPath();
  v75[8] = 0;
  sub_10011C0F0(v68, v69, &qword_100CCAA98);
  v76 = v108;
  sub_10011C0F0(v69, v108, &qword_100CCAA88);
  result = sub_10022C350(&qword_100CCAA68);
  *(v76 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1005EC7A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v46 = a1;
  v51 = a2;
  v49 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v49);
  v5 = (&v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10022C350(&qword_100CB34B0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v44 - v8;
  v48 = sub_10022C350(&qword_100CB34B8);
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v11 = &v44 - v10;
  v45 = sub_10022C350(&qword_100CB34D8);
  __chkstk_darwin(v45);
  v50 = &v44 - v12;
  v13 = sub_10022C350(&qword_100CB34C0);
  *&__src[80] = sub_10071E934;
  *&__src[88] = 0;
  __src[96] = 0;
  *__src = v13;
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = sub_1000302D8(&xmmword_100D8FB90, __dst, &unk_100CAF270);
  if (*&__dst[24])
  {
    sub_100013188(__dst, &__src[24]);
    *&__src[8] = sub_1005ECED0;
    *&__src[16] = 0;
    v15 = Dictionary.init(dictionaryLiteral:)();
    *__dst = _swiftEmptyArrayStorage;
    *&__dst[8] = v15;
    sub_1003B5C18(1);
    *&__src[64] = *__dst;
    memcpy(__dst, __src, sizeof(__dst));
    v16 = sub_10022C350(&qword_100CB34C8);
    v17 = sub_1005F6F6C(&qword_100CB34D0);
    View.systemColorScheme()();
    sub_100018198(__dst, &qword_100CB34C8);
    if (qword_100CA28C8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for WeatherMapDisplayMode();
    v19 = sub_10000703C(v18, qword_100D90EF8);
    __chkstk_darwin(v19);
    *(&v44 - 2) = v46;
    *__dst = v16;
    *&__dst[8] = v17;
    swift_getOpaqueTypeConformance2();
    View.buttons(_:buttons:)();
    (*(v7 + 8))(v9, v6);
    v20 = v50;
    v21 = &v50[*(v45 + 36)];
    v22 = v49;
    v23 = *(v49 + 20);
    v24 = enum case for RoundedCornerStyle.continuous(_:);
    v25 = type metadata accessor for RoundedCornerStyle();
    v26 = *(*(v25 - 8) + 104);
    v26(v21 + v23, v24, v25);
    *v21 = a3;
    v21[1] = a3;
    *(v21 + *(sub_10022C350(&qword_100CB34E0) + 36)) = 256;
    (*(v47 + 32))(v20, v11, v48);
    v26(v5 + *(v22 + 20), v24, v25);
    *v5 = a3;
    v5[1] = a3;
    static Color.black.getter();
    v27 = Color.opacity(_:)();

    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v28 = sub_10022C350(&qword_100CCAB40);
    v29 = v51;
    v30 = v51 + *(v28 + 36);
    sub_1005F1770(v5, v30);
    v31 = *__dst * 0.5;
    v32 = v30 + *(sub_10022C350(&qword_100CCAB48) + 68);
    sub_1005F1770(v5, v32);
    *(v32 + *(type metadata accessor for RoundedRectangle._Inset() + 20)) = v31;
    v33 = v32 + *(sub_10022C350(&qword_100CB7F20) + 36);
    v34 = *&__dst[16];
    *v33 = *__dst;
    *(v33 + 16) = v34;
    *(v33 + 32) = *&__dst[32];
    v35 = sub_10022C350(&qword_100CCAB50);
    *(v32 + *(v35 + 52)) = v27;
    *(v32 + *(v35 + 56)) = 256;
    v36 = static Alignment.center.getter();
    v38 = v37;
    sub_1001095D0();
    v39 = (v32 + *(sub_10022C350(&qword_100CCAB58) + 36));
    *v39 = v36;
    v39[1] = v38;
    v40 = static Alignment.center.getter();
    v42 = v41;
    v43 = (v30 + *(sub_10022C350(&qword_100CCAB60) + 36));
    *v43 = v40;
    v43[1] = v42;
    return sub_10011C0F0(v20, v29, &qword_100CB34D8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005ECED0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  if (qword_100CA28C8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for WeatherMapDisplayMode();
  v4 = sub_10000703C(v3, qword_100D90EF8);
  return sub_1008364CC(v4, 0xD000000000000012, 0x8000000100A67BB0, a2);
}

uint64_t sub_1005ECF64(uint64_t a1)
{
  v42 = a1;
  v38 = type metadata accessor for ButtonGroup.Alignment();
  v1 = *(v38 - 8);
  __chkstk_darwin(v38);
  v39 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ButtonGroup();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PinnedMapView(0);
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for ButtonGroup.Button.Content();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for ButtonGroup.Button();
  v36 = *(v12 - 8);
  v37 = v12;
  __chkstk_darwin(v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v35 - v16;
  if (static Solarium.isEnabled.getter())
  {
    *v11 = 0x6B72616D78;
    v11[1] = 0xE500000000000000;
    (*(v9 + 104))(v11, enum case for ButtonGroup.Button.Content.image(_:), v8);
    sub_1005F1770(v42, &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = (*(v35 + 80) + 16) & ~*(v35 + 80);
    v19 = swift_allocObject();
    sub_100103E40(&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
    static ButtonGroup.Button.dismiss(_:identifier:handler:)();

    (*(v9 + 8))(v11, v8);
    v20 = [objc_opt_self() mainBundle];
    v43._object = 0x8000000100AC4A10;
    v21._countAndFlagsBits = 1701736260;
    v21._object = 0xE400000000000000;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v43._countAndFlagsBits = 0xD00000000000003BLL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v43);

    ButtonGroup.Button.accessibilityLabel(_:)();

    v23 = v37;
    v24 = *(v36 + 8);
    v24(v14, v37);
    v25 = (*(v1 + 104))(v39, enum case for ButtonGroup.Alignment.leading(_:), v38);
    __chkstk_darwin(v25);
    ButtonGroup.init(alignment:buttons:)();
    v26 = static ButtonGroupsBuilder.buildExpression(_:)();
    (*(v40 + 8))(v5, v41);
    sub_10022C350(&qword_100CB34E8);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_100A2C3F0;
    *(v27 + 32) = v26;
    static ButtonGroupsBuilder.buildBlock(_:)();

    v28 = static ButtonGroupsBuilder.buildEither(first:)();

    v24(v17, v23);
  }

  else
  {
    v29 = (*(v1 + 104))(v39, enum case for ButtonGroup.Alignment.leading(_:), v38);
    __chkstk_darwin(v29);
    ButtonGroup.init(alignment:buttons:)();
    v30 = static ButtonGroupsBuilder.buildExpression(_:)();
    (*(v40 + 8))(v5, v41);
    sub_10022C350(&qword_100CB34E8);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100A2C3F0;
    *(v31 + 32) = v30;
    static ButtonGroupsBuilder.buildBlock(_:)();

    v28 = static ButtonGroupsBuilder.buildEither(second:)();
  }

  sub_10022C350(&qword_100CB34E8);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100A2C3F0;
  *(v32 + 32) = v28;
  v33 = static ButtonGroupsBuilder.buildBlock(_:)();

  return v33;
}

uint64_t sub_1005ED5F4(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v2 = type metadata accessor for PinnedMapView(0);
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for ButtonGroup.Button.Content();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ButtonGroup.Button();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  v28 = static ButtonsBuilder.buildExpression(_:)();
  *v7 = 0xD000000000000022;
  v7[1] = 0x8000000100AD7250;
  (*(v5 + 104))(v7, enum case for ButtonGroup.Button.Content.image(_:), v4);
  sub_1005F1770(v27, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v16 = swift_allocObject();
  sub_100103E40(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  ButtonGroup.Button.init(_:identifier:handler:endHandler:)();
  v17 = [objc_opt_self() mainBundle];
  v29._object = 0x8000000100AC4AA0;
  v18._object = 0x8000000100AC4A80;
  v29._countAndFlagsBits = 0xD000000000000038;
  v18._countAndFlagsBits = 0xD000000000000015;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v29);

  ButtonGroup.Button.accessibilityLabel(_:)();

  v20 = *(v9 + 8);
  v20(v11, v8);
  v21 = static ButtonsBuilder.buildExpression(_:)();
  v20(v14, v8);
  sub_10022C350(&qword_100CB34F0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100A2D320;
  *(v22 + 32) = v28;
  *(v22 + 40) = v21;
  v23 = static ButtonsBuilder.buildBlock(_:)();

  return v23;
}

uint64_t sub_1005ED9C4(uint64_t a1)
{
  v38 = a1;
  v2 = type metadata accessor for PinnedMapView(0);
  v41 = *(v2 - 8);
  v40 = *(v41 + 64);
  __chkstk_darwin(v2 - 8);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ButtonGroup.Button.Content();
  v36 = v5;
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for ButtonGroup.Button();
  v10 = *(v9 - 8);
  v44 = v9;
  v45 = v10;
  __chkstk_darwin(v9);
  v43 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  v42 = objc_opt_self();
  v15 = [v42 mainBundle];
  v46._object = 0x8000000100AC49E0;
  v16._countAndFlagsBits = 1701736260;
  v16._object = 0xE400000000000000;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v46._countAndFlagsBits = 0xD000000000000022;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v46);

  *v8 = v18;
  v39 = *(v6 + 104);
  v39(v8, enum case for ButtonGroup.Button.Content.title(_:), v5);
  v37 = type metadata accessor for PinnedMapView;
  v35 = v4;
  sub_1005F1770(a1, v4);
  v19 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v20 = swift_allocObject();
  sub_100103E40(v4, v20 + v19);
  static ButtonGroup.Button.dismiss(_:identifier:handler:)();

  v21 = v36;
  (*(v6 + 8))(v8, v36);
  v41 = static ButtonsBuilder.buildExpression(_:)();
  v22 = *(v45 + 8);
  v45 += 8;
  v22(v14, v44);
  v8->_countAndFlagsBits = 0xD000000000000022;
  v8->_object = 0x8000000100AD7250;
  v39(v8, enum case for ButtonGroup.Button.Content.image(_:), v21);
  v23 = v35;
  sub_1005F1770(v38, v35);
  v24 = swift_allocObject();
  sub_100103E40(v23, v24 + v19);
  v25 = v43;
  ButtonGroup.Button.init(_:identifier:handler:endHandler:)();
  v26 = [v42 mainBundle];
  v27._countAndFlagsBits = 0xD000000000000015;
  v47._object = 0x8000000100AC4AA0;
  v27._object = 0x8000000100AC4A80;
  v47._countAndFlagsBits = 0xD000000000000038;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v27, 0, v26, v28, v47);

  ButtonGroup.Button.accessibilityLabel(_:)();

  v29 = v44;
  v22(v25, v44);
  v30 = static ButtonsBuilder.buildExpression(_:)();
  v22(v14, v29);
  sub_10022C350(&qword_100CB34F0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100A2D320;
  *(v31 + 32) = v41;
  *(v31 + 40) = v30;
  v32 = static ButtonsBuilder.buildBlock(_:)();

  return v32;
}

void *sub_1005EDEF4@<X0>(const void *a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v32 = a2;
  v5 = type metadata accessor for DisplayMetrics();
  __chkstk_darwin(v5);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v31[-v9];
  memcpy(v35, a1, 0xC9uLL);
  v11 = static Edge.Set.bottom.getter();
  type metadata accessor for PinnedMapView(0);
  sub_1000FC9C8();
  if (qword_100CA24D0 != -1)
  {
    swift_once();
  }

  if (byte_100D90788 == 1 && v10[1] != 1 && (DynamicTypeSize.isAccessibilitySize.getter() & 1) == 0)
  {
    sub_10029C3DC(*v10);
  }

  sub_1001095D0();
  EdgeInsets.init(_all:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  memcpy(v34, v35, 0xC9uLL);
  v34[208] = 0;
  sub_1000302D8(v35, v33, &qword_100CCAAB0);
  v20 = static Edge.Set.trailing.getter();
  sub_1000FC9C8();
  if (byte_100D90788 == 1 && v7[1] != 1 && (DynamicTypeSize.isAccessibilitySize.getter() & 1) == 0)
  {
    sub_10029C3DC(*v7);
  }

  sub_1001095D0();
  EdgeInsets.init(_all:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v33[0] = 0;
  v29 = static SafeAreaRegions.all.getter();
  result = memcpy(a3, v34, 0xD0uLL);
  *(a3 + 208) = v11;
  *(a3 + 216) = v13;
  *(a3 + 224) = v15;
  *(a3 + 232) = v17;
  *(a3 + 240) = v19;
  *(a3 + 248) = 0;
  *(a3 + 256) = v20;
  *(a3 + 264) = v22;
  *(a3 + 272) = v24;
  *(a3 + 280) = v26;
  *(a3 + 288) = v28;
  *(a3 + 296) = 0;
  *(a3 + 304) = v29;
  *(a3 + 312) = v32;
  return result;
}

uint64_t sub_1005EE1F0@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v5 = type metadata accessor for DisplayMetrics();
  __chkstk_darwin(v5 - 8);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v32, a1, 0xC9uLL);
  v12 = static Edge.Set.top.getter();
  v13 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v12)
  {
    v13 = Edge.Set.init(rawValue:)();
  }

  v14 = v29 + *(type metadata accessor for PinnedMapView(0) + 44);
  v15 = *v14;
  if (*(v14 + 8) == 1)
  {
    if (v15)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  static os_log_type_t.fault.getter();
  v16 = static Log.runtimeIssuesLog.getter();
  v28 = v8;
  v17 = v16;
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_1000EBD74(v15, 0);
  (*(v9 + 8))(v11, v28);
  if ((v31[0] & 1) == 0)
  {
LABEL_7:
    sub_1000FC9C8();
    v18 = *v7;
    sub_1001095D0();
    sub_10029C3DC(v18);
  }

LABEL_8:
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  memcpy(v31, v32, 0xC9uLL);
  v31[208] = 0;
  memcpy(a3, v31, 0xD0uLL);
  *(a3 + 208) = v13;
  *(a3 + 216) = v20;
  *(a3 + 224) = v22;
  *(a3 + 232) = v24;
  *(a3 + 240) = v26;
  *(a3 + 248) = 0;
  return sub_1000302D8(v32, &v30, &qword_100CCAAB0);
}

uint64_t sub_1005EE4F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for ComputePinnedMapSizeViewModifier(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  KeyPath = swift_getKeyPath();
  sub_1005F1770(v3, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_100103E40(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v12 = sub_10022C350(&qword_100CCAE60);
  (*(*(v12 - 8) + 16))(a2, a1, v12);
  result = sub_10022C350(&qword_100CCAE68);
  v14 = (a2 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = sub_1005F6A08;
  v14[2] = v11;
  return result;
}

void sub_1005EE698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisplayMetrics();
  __chkstk_darwin(v4 - 8);
  v44 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ComputePinnedMapSizeViewModifier(0);
  v11 = a2 + v10[7];
  v12 = *v11;
  if (*(v11 + 8) == 1)
  {
    v13 = *v11;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v12, 0);
    (*(v7 + 8))(v9, v6);
    v13 = v49[0];
  }

  if ((v13 & 0xC0) != 0x40)
  {
    v43 = a1;
    v15 = v10[6];
    memcpy(v49, (a2 + v15), 0x49uLL);
    if (v49[72])
    {
      memcpy(v48, (a2 + v15), 0x48uLL);
    }

    else
    {

      static os_log_type_t.fault.getter();
      v16 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100018198(v49, &qword_100CB71A8);
      (*(v7 + 8))(v9, v6);
    }

    if (v48[49] != 3)
    {
      memcpy(v48, (a2 + v15), 0x49uLL);
      if (v48[72])
      {
        memcpy(v47, (a2 + v15), 0x48uLL);
      }

      else
      {

        static os_log_type_t.fault.getter();
        v17 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_100018198(v48, &qword_100CB71A8);
        (*(v7 + 8))(v9, v6);
      }

      v18 = (a2 + v15);
      if (v47[49] == 4)
      {
        memcpy(v47, v18, 0x49uLL);
        if (v47[72])
        {
          memcpy(v46, (a2 + v15), 0x48uLL);
        }

        else
        {

          static os_log_type_t.fault.getter();
          v19 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_100018198(v47, &qword_100CB71A8);
          (*(v7 + 8))(v9, v6);
        }

        memcpy(v51, v46, sizeof(v51));
        v20 = v51[7] * 0.0;
        sub_1000FD520();
        v22 = v21 + v20 + sub_1000FDB68();
      }

      else
      {
        memcpy(v47, v18, 0x49uLL);
        if (v47[72])
        {
          memcpy(__dst, (a2 + v15), sizeof(__dst));
        }

        else
        {

          static os_log_type_t.fault.getter();
          v23 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_100018198(v47, &qword_100CB71A8);
          (*(v7 + 8))(v9, v6);
        }

        v24 = *__dst;
        memcpy(v46, (a2 + v15), 0x49uLL);
        if (v46[9])
        {
          memcpy(v45, (a2 + v15), sizeof(v45));
        }

        else
        {

          static os_log_type_t.fault.getter();
          v25 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_100018198(v46, &qword_100CB71A8);
          (*(v7 + 8))(v9, v6);
        }

        memcpy(v51, v45, sizeof(v51));
        v22 = v24 - sub_1000EF898() + -20.0;
      }

      if (v22 >= 0.0)
      {
        memcpy(v47, (a2 + v15), 0x49uLL);
        if (v47[72])
        {
          memcpy(v46, (a2 + v15), 0x48uLL);
        }

        else
        {

          static os_log_type_t.fault.getter();
          v26 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_100018198(v47, &qword_100CB71A8);
          (*(v7 + 8))(v9, v6);
        }

        if (BYTE1(v46[6]) == 4)
        {
          memcpy(v46, (a2 + v15), 0x49uLL);
          if (v46[9])
          {
            memcpy(v45, (a2 + v15), sizeof(v45));
          }

          else
          {

            static os_log_type_t.fault.getter();
            v34 = static Log.runtimeIssuesLog.getter();
            os_log(_:dso:log:_:_:)();

            EnvironmentValues.init()();
            swift_getAtKeyPath();
            sub_100018198(v46, &qword_100CB71A8);
            (*(v7 + 8))(v9, v6);
          }

          v35 = v43;
          memcpy(__dst, v45, sizeof(__dst));
          v36 = v44;
          sub_1000FC9C8();
          v37 = *v36;
          if (sub_1004CF4D0(*v36))
          {
            v38 = dbl_100A679A0[*(v36 + 18) < 2u];
          }

          else if (sub_10029C3DC(v37) && *(v36 + 16))
          {
            v38 = 385.0;
          }

          else
          {
            v38 = sub_10014B28C() * 2.5 + *&__dst[5];
          }

          sub_1001095D0();
        }

        else
        {
          v27 = a2 + v10[5];
          v29 = *(v27 + 8);
          v28 = *(v27 + 16);
          v30 = *(v27 + 32);
          if (*(v27 + 48) == 1)
          {
            v31 = *(v27 + 8);
            v32 = *(v27 + 16);
            v33 = *(v27 + 32);
          }

          else
          {
            v39 = *v27;
            v44 = *(v27 + 24);
            v42 = *(v27 + 40);

            static os_log_type_t.fault.getter();
            v40 = static Log.runtimeIssuesLog.getter();
            os_log(_:dso:log:_:_:)();

            EnvironmentValues.init()();
            swift_getAtKeyPath();
            sub_100109A54(v39, v29, v28, v44, v30, v42, 0);
            (*(v7 + 8))(v9, v6);
            v31 = *&v46[1];
            v32 = *&v46[2];
            v33 = *&v46[4];
          }

          v38 = v31 + v32 + v33;
          v35 = v43;
        }

        *v35 = v22;
        *(v35 + 8) = v38;
        *(v35 + 16) = 0;
      }
    }
  }
}

uint64_t sub_1005EEFF0(void (*a1)(void), uint64_t (*a2)(void))
{
  a1(0);
  swift_allocObject();
  return a2();
}

double sub_1005EF038()
{
  v1 = type metadata accessor for EnvironmentValues();
  v43 = *(v1 - 8);
  __chkstk_darwin(v1);
  v42 = &v37[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for UserInterfaceSizeClass();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10022C350(&qword_100CA64E8);
  __chkstk_darwin(v7);
  v9 = &v37[-v8];
  v10 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v10 - 8);
  v12 = &v37[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v37[-v14];
  __chkstk_darwin(v16);
  v18 = &v37[-v17];
  if ((static Solarium.isEnabled.getter() & 1) == 0)
  {
    goto LABEL_8;
  }

  v41 = v1;
  v39 = type metadata accessor for LocationViewBannerContainer(0);
  v40 = v0;
  sub_10009D114();
  (*(v4 + 104))(v15, enum case for UserInterfaceSizeClass.regular(_:), v3);
  sub_10001B350(v15, 0, 1, v3);
  v19 = *(v7 + 48);
  sub_1000302D8(v18, v9, &qword_100CA6028);
  sub_1000302D8(v15, &v9[v19], &qword_100CA6028);
  if (sub_100024D10(v9, 1, v3) != 1)
  {
    sub_1000302D8(v9, v12, &qword_100CA6028);
    if (sub_100024D10(&v9[v19], 1, v3) != 1)
    {
      (*(v4 + 32))(v6, &v9[v19], v3);
      sub_1000EA178(&qword_100CA6088);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v4 + 8);
      v28(v6, v3);
      sub_100018198(v15, &qword_100CA6028);
      sub_100018198(v18, &qword_100CA6028);
      v28(v12, v3);
      sub_100018198(v9, &qword_100CA6028);
      v0 = v40;
      v1 = v41;
      if (v38)
      {
        goto LABEL_12;
      }

LABEL_8:
      v20 = v0 + *(type metadata accessor for LocationViewBannerContainer(0) + 24);
      v21 = *v20;
      if (*(v20 + 32) == 1)
      {
        return *v20;
      }

      v23 = *(v20 + 8);
      v24 = *(v20 + 16);
      v25 = *(v20 + 24);

      static os_log_type_t.fault.getter();
      v26 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v27 = v42;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100109A48(v21, v23, v24, v25, 0);
      (*(v43 + 8))(v27, v1);
      return v44;
    }

    sub_100018198(v15, &qword_100CA6028);
    sub_100018198(v18, &qword_100CA6028);
    (*(v4 + 8))(v12, v3);
LABEL_7:
    sub_100018198(v9, &qword_100CA64E8);
    v0 = v40;
    v1 = v41;
    goto LABEL_8;
  }

  sub_100018198(v15, &qword_100CA6028);
  sub_100018198(v18, &qword_100CA6028);
  if (sub_100024D10(&v9[v19], 1, v3) != 1)
  {
    goto LABEL_7;
  }

  sub_100018198(v9, &qword_100CA6028);
  v0 = v40;
  v1 = v41;
LABEL_12:
  v29 = v0 + *(v39 + 24);
  v30 = *v29;
  if (*(v29 + 32) == 1)
  {
    v31 = *v29;
  }

  else
  {
    v32 = *(v29 + 8);
    v33 = *(v29 + 16);
    v34 = *(v29 + 24);

    static os_log_type_t.fault.getter();
    v35 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v36 = v42;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100109A48(v30, v32, v33, v34, 0);
    (*(v43 + 8))(v36, v1);
    v31 = v44;
  }

  return v31 + -44.0;
}

uint64_t sub_1005EF680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v87 = type metadata accessor for ContentStatusBannerPresentationMetrics(0);
  __chkstk_darwin(v87);
  v85 = &v68[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v86 = &v68[-v5];
  v6 = type metadata accessor for LocationViewBannerContainer(0);
  v7 = v6 - 8;
  v81 = *(v6 - 8);
  __chkstk_darwin(v6);
  v82 = v8;
  v83 = &v68[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v84 = sub_10022C350(&qword_100CA5010);
  __chkstk_darwin(v84);
  v10 = &v68[-v9];
  v73 = type metadata accessor for ContentStatusBanner();
  __chkstk_darwin(v73);
  v12 = &v68[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10022C350(&qword_100CCA2A8);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v68[-v15];
  v71 = sub_10022C350(&qword_100CCA2B0);
  __chkstk_darwin(v71);
  v18 = &v68[-v17];
  v70 = sub_10022C350(&qword_100CCA2B8);
  __chkstk_darwin(v70);
  v20 = &v68[-v19];
  v69 = sub_10022C350(&qword_100CCA2C0);
  __chkstk_darwin(v69);
  v22 = &v68[-v21];
  v74 = sub_10022C350(&qword_100CCA2C8);
  __chkstk_darwin(v74);
  v24 = &v68[-v23];
  v79 = sub_10022C350(&qword_100CCA2D0);
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = &v68[-v25];
  v72 = sub_10022C350(&qword_100CCA2D8);
  __chkstk_darwin(v72);
  v80 = &v68[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v75 = &v68[-v28];
  __chkstk_darwin(v29);
  v77 = &v68[-v30];
  sub_1000161C0((a1 + *(v7 + 28)), *(a1 + *(v7 + 28) + 24));
  sub_10010A0E8(v12);
  sub_10010A228(v12, v16);
  sub_1001095D0();
  v31 = sub_10010B204();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  LOBYTE(v12) = static Edge.Set.all.getter();
  v38 = (v16 + *(sub_10022C350(&qword_100CCA2E0) + 36));
  *v38 = v12;
  v38[1] = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  *(v38 + 40) = 0;
  v39 = static Edge.Set.horizontal.getter();
  v40 = v16 + *(v14 + 44);
  *v40 = v39;
  *(v40 + 8) = 0u;
  *(v40 + 24) = 0u;
  v40[40] = 1;
  sub_1005EF038();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10011C0F0(v16, v18, &qword_100CCA2A8);
  memcpy(&v18[*(v71 + 36)], __src, 0x70uLL);
  v41 = static Alignment.center.getter();
  v43 = v42;
  sub_10011C0F0(v18, v20, &qword_100CCA2B0);
  v44 = &v20[*(v70 + 36)];
  *v44 = v41;
  v44[1] = v43;
  LOBYTE(v41) = static Edge.Set.top.getter();
  sub_10011C0F0(v20, v22, &qword_100CCA2B8);
  v22[*(v69 + 36)] = v41;
  v45 = static Alignment.center.getter();
  v47 = v46;
  sub_1000302D8(a1, v10, &qword_100CA5010);
  LODWORD(v7) = sub_100024D10(v10, 1, v73);
  sub_100018198(v10, &qword_100CA5010);
  v48 = 0;
  v49 = 0;
  v50 = v83;
  v51 = v81;
  if (v7 != 1)
  {
    sub_1005F1770(a1, v83);
    v52 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v49 = swift_allocObject();
    sub_100103E40(v50, v49 + v52);
    v48 = sub_1005F34F0;
  }

  sub_10011C0F0(v22, v24, &qword_100CCA2C0);
  v53 = &v24[*(v74 + 36)];
  *v53 = v48;
  v53[1] = v49;
  v53[2] = v45;
  v53[3] = v47;
  sub_1005F1770(a1, v50);
  v54 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v55 = swift_allocObject();
  sub_100103E40(v50, v55 + v54);
  sub_1005F309C();
  sub_10010B5B0();
  v56 = v76;
  View.onChange<A>(of:initial:_:)();

  sub_100018198(v24, &qword_100CCA2C8);
  v57 = v75;
  v58 = &v75[*(v72 + 36)];
  *v58 = swift_getKeyPath();
  v59 = type metadata accessor for ContentStatusBannerPresentationViewModifier(0);
  *(v58 + 2) = 0;
  *(v58 + 3) = 0;
  *(v58 + 1) = 0;
  v58[32] = 0;
  v60 = *(v59 + 20);
  *&v58[v60] = swift_getKeyPath();
  sub_10022C350(&unk_100CE1000);
  swift_storeEnumTagMultiPayload();
  if (qword_100CA2310 != -1)
  {
    swift_once();
  }

  v61 = sub_10000703C(v87, qword_100CC9730);
  v62 = v86;
  sub_1005F1770(v61, v86);
  sub_1005F1770(v62, v85);
  State.init(wrappedValue:)();
  sub_1001095D0();
  (*(v78 + 32))(v57, v56, v79);
  v63 = v77;
  sub_10011C0F0(v57, v77, &qword_100CCA2D8);
  v64 = v80;
  sub_1000302D8(v63, v80, &qword_100CCA2D8);
  v65 = v88;
  sub_1000302D8(v64, v88, &qword_100CCA2D8);
  v66 = v65 + *(sub_10022C350(&qword_100CCA348) + 48);
  *v66 = 0;
  *(v66 + 8) = 1;
  sub_100018198(v63, &qword_100CCA2D8);
  return sub_100018198(v64, &qword_100CCA2D8);
}

uint64_t sub_1005F0188@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = static Color.clear.getter();
  GeometryProxy.size.getter();
  v6 = v5;
  v8 = v7;
  v9 = (a2 + *(sub_10022C350(&qword_100CCA350) + 36));
  v10 = type metadata accessor for ContentStatusBannerPresentationMetrics(0);
  result = sub_1000302D8(a1, v9 + *(v10 + 20), &qword_100CA5010);
  *v9 = v6;
  v9[1] = v8;
  *a2 = v4;
  return result;
}

uint64_t sub_1005F0220(uint64_t a1, uint64_t a2)
{
  v3 = sub_10022C350(&qword_100CA5010);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for ContentStatusBanner();
  __chkstk_darwin(v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v13 - v10;
  sub_1000302D8(a2, v5, &qword_100CA5010);
  if (sub_100024D10(v5, 1, v6) == 1)
  {
    return sub_100018198(v5, &qword_100CA5010);
  }

  sub_100103E40(v5, v11);
  type metadata accessor for LocationViewBannerContainer(0);
  sub_1005F1770(v11, v8);
  sub_10022C350(&qword_100CC9F58);
  State.wrappedValue.setter();
  return sub_1001095D0();
}

uint64_t sub_1005F03F4()
{
  sub_10000C76C();
  v1 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  if (qword_100CA22F8 != -1)
  {
    swift_once();
  }

  sub_10000703C(v1, qword_100CC96F8);
  (*(v3 + 104))(v7, enum case for Settings.VFX.AnimatedBackgrounds.AnimationKind.vfx(_:), v1);
  v8 = sub_100003984();
  v10 = sub_1001497E4(v8, v9);
  (*(v3 + 8))(v7, v1);
  if (v10)
  {
    v11 = CGSize.isLandscape.getter();
    type metadata accessor for TargetWindowSizeClass();
    sub_1000037E8();
    if (v11)
    {
      v13 = &enum case for TargetWindowSizeClass.landscapeRegular(_:);
    }

    else
    {
      v13 = &enum case for TargetWindowSizeClass.portraitRegular(_:);
    }

    return (*(v12 + 104))(v0, *v13);
  }

  else
  {
    v14 = enum case for TargetWindowSizeClass.compact(_:);
    type metadata accessor for TargetWindowSizeClass();
    sub_1000037E8();
    return (*(v15 + 104))(v0, v14);
  }
}

uint64_t sub_1005F05E8(uint64_t a1, char a2)
{
  sub_1000038D8();
  v3 = type metadata accessor for LocationViewerViewModel();
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_1000281F0();
  __chkstk_darwin(v5);
  sub_100104794();
  sub_100104794();
  v6 = sub_100003984();
  sub_100132BC0(v6, v7);
  sub_10003A2AC();
  sub_1001095D0();
  sub_1001095D0();
  return a2 & 1;
}

void sub_1005F06A4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10022E824(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1005F0710()
{
  result = qword_100CC9A60;
  if (!qword_100CC9A60)
  {
    sub_10022E824(&qword_100CC9A50);
    sub_1005F6F6C(&unk_100CC9A58);
    sub_1005F6F6C(&unk_100CC9A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC9A60);
  }

  return result;
}

unint64_t sub_1005F07FC()
{
  result = qword_100CC9A80;
  if (!qword_100CC9A80)
  {
    sub_10022E824(&qword_100CC9A30);
    sub_10022E824(&qword_100CC9A28);
    sub_10022E824(&qword_100CC9A50);
    sub_1005F6F6C(&unk_100CC9A58);
    sub_1005F0710();
    swift_getOpaqueTypeConformance2();
    sub_1005F6F6C(&unk_100CC9A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC9A80);
  }

  return result;
}

unint64_t sub_1005F0964()
{
  result = qword_100CC9A98;
  if (!qword_100CC9A98)
  {
    sub_10022E824(&qword_100CC9A78);
    sub_1005F07FC();
    sub_1005F6F6C(&unk_100CC9AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC9A98);
  }

  return result;
}

unint64_t sub_1005F0A1C()
{
  result = qword_100CC9AC0;
  if (!qword_100CC9AC0)
  {
    sub_10022E824(&qword_100CC9A38);
    sub_1005F0AA8();
    sub_1000F131C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC9AC0);
  }

  return result;
}

unint64_t sub_1005F0AA8()
{
  result = qword_100CC9AC8;
  if (!qword_100CC9AC8)
  {
    sub_10022E824(&qword_100CC9AB8);
    sub_1005F0B34();
    sub_1000F12C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC9AC8);
  }

  return result;
}

unint64_t sub_1005F0B34()
{
  result = qword_100CC9AD0;
  if (!qword_100CC9AD0)
  {
    sub_10022E824(&qword_100CC9AB0);
    sub_10022E824(&qword_100CC9A30);
    sub_10022E824(&qword_100CC9A78);
    sub_1005F07FC();
    sub_1005F0964();
    swift_getOpaqueTypeConformance2();
    sub_1000EA178(&unk_100CC9AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC9AD0);
  }

  return result;
}

unint64_t sub_1005F0C74()
{
  result = qword_100CC9AF8;
  if (!qword_100CC9AF8)
  {
    sub_10022E824(&qword_100CC9AF0);
    sub_10022E824(&qword_100CC9A38);
    sub_1005F0A1C();
    swift_getOpaqueTypeConformance2();
    sub_1005F6F6C(&qword_100CB0558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC9AF8);
  }

  return result;
}

void sub_1005F0D68()
{
  sub_10000C778();
  v2 = v1;
  v4 = v3;
  sub_10000C76C();
  type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  __chkstk_darwin(v5);
  sub_1000037D8();
  if ((v2 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v4, 0);
    v7 = sub_100003984();
    v8(v7);
  }

  static Alignment.bottom.getter();
  _FrameLayout.init(width:height:alignment:)();
  static Color.white.getter();
  v9 = Color.opacity(_:)();

  KeyPath = swift_getKeyPath();
  *v0 = v11;
  *(v0 + 8) = v12;
  *(v0 + 16) = v13;
  *(v0 + 24) = v14;
  *(v0 + 32) = v15;
  *(v0 + 40) = v16;
  *(v0 + 48) = KeyPath;
  *(v0 + 56) = v9;
  sub_10000536C();
}

uint64_t sub_1005F0F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v34 = sub_10022C350(&unk_100CE1680);
  __chkstk_darwin(v34);
  v36 = &v30 - v3;
  v4 = type metadata accessor for BorderlessButtonStyle();
  v39 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PrimitiveButtonStyleConfiguration();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_10022C350(&qword_100CCAE28);
  v11 = *(v10 - 8);
  v37 = v10;
  v38 = v11;
  __chkstk_darwin(v10);
  v13 = &v30 - v12;
  v14 = sub_10022C350(&qword_100CCAE30);
  v32 = *(v14 - 8);
  v33 = v14;
  v15 = __chkstk_darwin(v14);
  v17 = &v30 - v16;
  (*(v8 + 16))(&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7, v15);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject() + v18;
  v20 = v4;
  v21 = v36;
  (*(v8 + 32))(v19, &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v40 = a1;
  sub_10022C350(&qword_100CCAE38);
  sub_1005F68C0();
  Button.init(action:label:)();
  BorderlessButtonStyle.init()();
  v22 = sub_1005F6F6C(&unk_100CCAE58);
  v23 = sub_1000EA178(&qword_100CA5550);
  v31 = v17;
  v24 = v37;
  View.buttonStyle<A>(_:)();
  (*(v39 + 8))(v6, v20);
  (*(v38 + 8))(v13, v24);
  v25 = enum case for DynamicTypeSize.xxLarge(_:);
  v26 = type metadata accessor for DynamicTypeSize();
  (*(*(v26 - 8) + 104))(v21, v25, v26);
  sub_1000EA178(&qword_100CA5390);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v41 = v24;
    v42 = v20;
    v43 = v22;
    v44 = v23;
    swift_getOpaqueTypeConformance2();
    sub_1005F6F6C(&qword_100CA53C8);
    v28 = v33;
    v29 = v31;
    View.dynamicTypeSize<A>(_:)();
    sub_100018198(v21, &unk_100CE1680);
    return (*(v32 + 8))(v29, v28);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1005F14AC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CCAE50);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &__src[-v4];
  PrimitiveButtonStyleConfiguration.label.getter();
  v6 = static Edge.Set.all.getter();
  v7 = &v5[*(v3 + 44)];
  *v7 = v6;
  *(v7 + 8) = xmmword_100A679B0;
  *(v7 + 24) = xmmword_100A679B0;
  v7[40] = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10011C0F0(v5, a1, &qword_100CCAE50);
  v8 = sub_10022C350(&qword_100CCAE38);
  return memcpy((a1 + *(v8 + 36)), __src, 0x70uLL);
}

uint64_t sub_1005F15FC()
{
  if ((static Solarium.evaluate(inputs:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA24F8 != -1)
  {
    swift_once();
  }

  v0 = SettingReader.isEnabled(_:with:)();

  return v0 & 1;
}

uint64_t sub_1005F16E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CC9930);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005F1770(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_1005F17C8()
{
  v2 = sub_10000C76C();
  v3 = *(type metadata accessor for MeasuredLocationViewerView(v2) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = type metadata accessor for ContentStatusBannerPresentationMetrics(0);
  sub_100003810(v6);
  v8 = v1 + ((v4 + v5 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_1005DFD7C(v1 + v4, v8, v0);
}

uint64_t sub_1005F1894()
{
  sub_10000FE4C();
  v0 = sub_1006E4ABC();
  return sub_100005F94(v0);
}

uint64_t sub_1005F18BC()
{
  sub_10000FE4C();
  result = sub_1004470F4();
  *v0 = result;
  return result;
}

unint64_t sub_1005F1950()
{
  result = qword_100CC9B78;
  if (!qword_100CC9B78)
  {
    sub_10022E824(&qword_100CC9B70);
    sub_1000EA178(&unk_100CC9B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC9B78);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DisableAnimationsWhilePageControlExperiencingInteractionModifier.Phase(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

uint64_t sub_1005F1B10(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 177))
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

uint64_t sub_1005F1B50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1005F1BC0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_1005F1C00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_1005F1CBC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t (*a6)(void, uint64_t))
{
  type metadata accessor for Location.Identifier();
  if (v9 <= 0x3F)
  {
    sub_1005F63C8(319, a4, a5, a6);
    if (v10 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1005F1D60(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1005F1DA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1005F1E1C()
{
  type metadata accessor for LocationViewerViewModel();
  if (v0 <= 0x3F)
  {
    sub_100081B54(319, &qword_100CC99B8);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ContentStatusBannerPresentationMetrics(319);
      if (v2 <= 0x3F)
      {
        sub_1005F63C8(319, &qword_100CA3C80, &type metadata for EdgeInsets, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1005F1F30()
{
  type metadata accessor for LocationViewerViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ContentStatusBannerPresentationMetrics(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for WireframeLevelInterestManager();
      if (v2 <= 0x3F)
      {
        sub_1000EA080();
        if (v3 <= 0x3F)
        {
          sub_100081B54(319, &qword_100CACC68);
          if (v4 <= 0x3F)
          {
            sub_100081B54(319, &unk_100CACC70);
            if (v5 <= 0x3F)
            {
              sub_100081B54(319, &qword_100CC99B8);
              if (v6 <= 0x3F)
              {
                type metadata accessor for Text.Measurements();
                if (v7 <= 0x3F)
                {
                  sub_1005F63C8(319, &qword_100CA6D40, &type metadata for Bool, &type metadata accessor for State);
                  if (v8 <= 0x3F)
                  {
                    sub_1000E9E3C(319, &qword_100CC99A0, type metadata accessor for LocationViewerBindingWrapper, &type metadata accessor for Environment);
                    if (v9 <= 0x3F)
                    {
                      sub_1000E9E3C(319, &qword_100CA3C78, type metadata accessor for DisplayMetrics, &type metadata accessor for Environment);
                      if (v10 <= 0x3F)
                      {
                        sub_1005F63C8(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
                        if (v11 <= 0x3F)
                        {
                          sub_1005F63C8(319, &unk_100CB35A0, &type metadata for NamespaceWrapper, &type metadata accessor for Environment);
                          if (v12 <= 0x3F)
                          {
                            swift_cvw_initStructMetadataWithLayoutString();
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
}

void sub_1005F2204()
{
  type metadata accessor for LocationViewerViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ContentStatusBannerPresentationMetrics(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for WireframeLevelInterestManager();
      if (v2 <= 0x3F)
      {
        sub_1000EA080();
        if (v3 <= 0x3F)
        {
          sub_100081B54(319, &qword_100CACC68);
          if (v4 <= 0x3F)
          {
            sub_100081B54(319, &unk_100CACC70);
            if (v5 <= 0x3F)
            {
              sub_100081B54(319, &qword_100CC99B8);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1005F23C4(uint64_t a1)
{
  result = sub_1001097BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1005F240C()
{
  result = qword_100CCA040;
  if (!qword_100CCA040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA040);
  }

  return result;
}

uint64_t sub_1005F24B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  v9 = __chkstk_darwin(a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v17 - v13;
  v12();
  sub_1000833D8(v11, a4, a6);
  v15 = *(v8 + 8);
  v15(v11, a4);
  sub_1000833D8(v14, a4, a6);
  return (v15)(v14, a4);
}

unint64_t sub_1005F2610()
{
  result = qword_100CCA0B0;
  if (!qword_100CCA0B0)
  {
    sub_10022E824(&qword_100CCA0A0);
    sub_1000EA178(&unk_100CCA0B8);
    sub_1005F26CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA0B0);
  }

  return result;
}

unint64_t sub_1005F26CC()
{
  result = qword_100CCA0C0;
  if (!qword_100CCA0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA0C0);
  }

  return result;
}

unint64_t sub_1005F2720()
{
  result = qword_100CCA0C8;
  if (!qword_100CCA0C8)
  {
    sub_10022E824(&qword_100CCA0A8);
    sub_1005F2610();
    sub_10010EC48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA0C8);
  }

  return result;
}

uint64_t sub_1005F27D8()
{
  sub_1000C87D0();
  type metadata accessor for RegularContent(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  type metadata accessor for LocationModel();
  sub_100003D98();
  (*(v4 + 8))(v3);
  type metadata accessor for LocationViewerViewModel();
  sub_1000717B4();

  sub_1000AF5B0();
  type metadata accessor for ConditionPickerMenuViewModel(0);
  v5 = sub_100016410();
  if (!sub_100020918(v5))
  {
    sub_100003B20();
    v6 = sub_1000437BC();
    v7(v6);
  }

  sub_10003263C();

  sub_100088420();

  sub_10003BEA0();
  v8 = type metadata accessor for ContentStatusBanner();
  if (!sub_100003EB0(v8))
  {
    sub_1000D4274();
    if (v9)
    {
    }

    v10 = sub_100172198();
    if (!sub_100021564(v10))
    {
      sub_100019B68();
      v11 = sub_1000749D4();
      v12(v11);
    }
  }

  swift_unknownObjectRelease();
  sub_100006F14(v3 + v0[9]);
  sub_100006F14(v3 + v0[10]);
  v13 = v0[13];
  type metadata accessor for Text.Measurements();
  sub_100003D98();
  (*(v14 + 8))(v3 + v13);

  v15 = v3 + v0[16];
  sub_10022C350(&qword_100CB3278);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *(type metadata accessor for DisplayMetrics() + 36);
    type metadata accessor for DynamicTypeSize();
    sub_100003D98();
    (*(v17 + 8))(v15 + v16);
  }

  else
  {
  }

  sub_100037B34(v0[17]);
  sub_100109A3C(*(v3 + v0[18]), *(v3 + v0[18] + 8), *(v3 + v0[18] + 9));
  sub_1000116BC();
  sub_100020DD4();

  return swift_deallocObject();
}

uint64_t sub_1005F2A84()
{
  v0 = sub_100017580();
  v1 = type metadata accessor for RegularContent(v0);
  sub_100003810(v1);
  sub_10004E784();

  return sub_1005E49B4();
}

unint64_t sub_1005F2AE8()
{
  result = qword_100CCA118;
  if (!qword_100CCA118)
  {
    sub_10022E824(&qword_100CCA110);
    sub_1005F2B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA118);
  }

  return result;
}

unint64_t sub_1005F2B74()
{
  result = qword_100CCA120;
  if (!qword_100CCA120)
  {
    sub_10022E824(&qword_100CCA128);
    sub_10010EC48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA120);
  }

  return result;
}

unint64_t sub_1005F2C00()
{
  result = qword_100CCA178;
  if (!qword_100CCA178)
  {
    sub_10022E824(&qword_100CCA160);
    sub_1000EA178(&unk_100CCA0B8);
    sub_1005F6F6C(&unk_100CE1820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA178);
  }

  return result;
}

unint64_t sub_1005F2CE8()
{
  result = qword_100CCA180;
  if (!qword_100CCA180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA180);
  }

  return result;
}

unint64_t sub_1005F2D3C()
{
  result = qword_100CCA188;
  if (!qword_100CCA188)
  {
    sub_10022E824(&qword_100CCA170);
    sub_1005F2C00();
    sub_1005F6F6C(&qword_100CCA190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA188);
  }

  return result;
}

uint64_t sub_1005F2E40()
{
  v1 = *(type metadata accessor for DisableAnimationsWhilePageControlExperiencingInteractionModifier(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  type metadata accessor for Location.Identifier();
  sub_100003D98();
  (*(v3 + 8))(v0 + v2);

  sub_100030448();

  return swift_deallocObject();
}

uint64_t sub_1005F2F44(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = sub_100017580();
  v5 = v4(v3);
  sub_100003810(v5);
  v6 = sub_10004E784();

  return a3(v6);
}

uint64_t sub_1005F3010(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v4 = a3(0);
  sub_100003810(v4);
  sub_10001164C();
  v5 = sub_1000053B8();

  return a4(v5);
}

unint64_t sub_1005F309C()
{
  result = qword_100CCA2E8;
  if (!qword_100CCA2E8)
  {
    sub_10022E824(&qword_100CCA2C8);
    sub_1005F3154();
    sub_1005F6F6C(&unk_100CCA328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA2E8);
  }

  return result;
}

unint64_t sub_1005F3154()
{
  result = qword_100CCA2F0;
  if (!qword_100CCA2F0)
  {
    sub_10022E824(&qword_100CCA2C0);
    sub_10010B3B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA2F0);
  }

  return result;
}

unint64_t sub_1005F31E0()
{
  result = qword_100CCA300;
  if (!qword_100CCA300)
  {
    sub_10022E824(&qword_100CCA2B0);
    sub_10010B468();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA300);
  }

  return result;
}

uint64_t sub_1005F326C()
{
  sub_10000C778();
  type metadata accessor for LocationViewBannerContainer(0);
  sub_100003A0C();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = type metadata accessor for ContentStatusBanner();
  if (!sub_100017854(v4))
  {
    sub_1000D4274();
    if (v6)
    {
    }

    v7 = *(v5 + 24);
    v8 = type metadata accessor for Date();
    if (!sub_1000865BC(v8))
    {
      sub_100019B68();
      (*(v9 + 8))(v4 + v7, v2);
    }
  }

  sub_100006F14(v4 + v0[5]);
  v10 = v4 + v0[6];
  sub_100109A48(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32));
  v11 = v4 + v0[7];
  sub_10022C350(&qword_100CB3278);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(type metadata accessor for DisplayMetrics() + 36);
    type metadata accessor for DynamicTypeSize();
    sub_100003D98();
    (*(v13 + 8))(v11 + v12);
  }

  else
  {
  }

  v14 = v0[8];
  sub_10022C350(&qword_100CA62E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_1000865BC(v15))
    {
      sub_100019B68();
      (*(v16 + 8))(v4 + v14, v11);
    }
  }

  else
  {
  }

  v17 = v4 + v0[9];
  sub_1000D4274();
  if (v6)
  {
  }

  v18 = *(v5 + 24);
  v19 = type metadata accessor for Date();
  if (!sub_100024D10(v17 + v18, 1, v19))
  {
    sub_100003B20();
    (*(v20 + 8))(v17 + v18, v19);
  }

  sub_10022C350(&qword_100CC9F58);

  sub_10000536C();

  return swift_deallocObject();
}

void sub_1005F35D8()
{
  type metadata accessor for LocationViewerViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ContentStatusBannerPresentationMetrics(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for WireframeLevelInterestManager();
      if (v2 <= 0x3F)
      {
        sub_100081B54(319, &qword_100CC99B8);
        if (v3 <= 0x3F)
        {
          sub_1000E9E3C(319, &qword_100CC99A0, type metadata accessor for LocationViewerBindingWrapper, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_1005F63C8(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              sub_1005F06A4(319, &qword_100CE0E10, &qword_100CA6028, &unk_100A40610, &type metadata accessor for Environment);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1005F3780(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v34 = *(a3 + 16);
  v3 = *(v34 - 8);
  v32 = *(a3 + 24);
  v4 = *(v32 - 8);
  v36 = *(v3 + 84);
  v33 = *(v4 + 84);
  if (v33 <= v36)
  {
    v5 = *(v3 + 84);
  }

  else
  {
    v5 = *(v4 + 84);
  }

  v6 = *(type metadata accessor for Date() - 8);
  v7 = *(v6 + 80);
  v8 = v7 | 7;
  v39 = *(v6 + 84);
  v40 = *(v6 + 64);
  if (v5 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = v5;
  }

  v37 = v9;
  v10 = *(type metadata accessor for DynamicTypeSize() - 8);
  v11 = *(v10 + 80);
  v12 = ((v11 + 19) & ~v11) + *(v10 + 64);
  if (v12 <= 8)
  {
    v12 = 8;
  }

  v35 = v12;
  v13 = *(type metadata accessor for LayoutDirection() - 8);
  if (*(v13 + 64) <= 8uLL)
  {
    v14 = 8;
  }

  else
  {
    v14 = *(v13 + 64);
  }

  v15 = *(v3 + 80);
  v16 = *(v3 + 64);
  v17 = *(v4 + 80);
  v18 = v40;
  if (!v39)
  {
    v18 = v40 + 1;
  }

  v19 = v18 - (((-17 - v7) | v8) + ((-25 - v7) | v7)) - 2;
  if (v19 <= 8)
  {
    v19 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(v4 + 64) + v8;
  if (a2 <= v37)
  {
    goto LABEL_35;
  }

  v21 = *(v13 + 80) & 0xF8 | 7;
  v22 = v14 + ((v21 + ((v35 + ((v19 + (v11 | 7) + ((v20 + ((v16 + v17 + ((v15 + 16) & ~v15)) & ~v17)) & ~v8) + 1) & ~(v11 | 7)) + 128) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v21) + 1;
  v23 = 8 * v22;
  if (v22 > 3)
  {
    goto LABEL_19;
  }

  v26 = ((a2 - v37 + ~(-1 << v23)) >> v23) + 1;
  if (HIWORD(v26))
  {
    v24 = *(a1 + v22);
    if (v24)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v26 <= 0xFF)
    {
      if (v26 < 2)
      {
        goto LABEL_35;
      }

LABEL_19:
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_35;
      }

LABEL_27:
      v27 = (v24 - 1) << v23;
      if (v22 > 3)
      {
        v27 = 0;
      }

      if (v22)
      {
        if (v22 > 3)
        {
          LODWORD(v22) = 4;
        }

        switch(v22)
        {
          case 2:
            LODWORD(v22) = *a1;
            break;
          case 3:
            LODWORD(v22) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v22) = *a1;
            break;
          default:
            LODWORD(v22) = *a1;
            break;
        }
      }

      return v37 + (v22 | v27) + 1;
    }

    v24 = *(a1 + v22);
    if (*(a1 + v22))
    {
      goto LABEL_27;
    }
  }

LABEL_35:
  v28 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v15 + 8) & ~v15;
  v29 = v36;
  if (v36 == v37)
  {
    v30 = v34;
  }

  else
  {
    v28 = (v28 + v16 + v17) & ~v17;
    v29 = v33;
    if (v33 != v37)
    {
      v31 = *(((v20 + v28) & ~v8) + v19);
      if (v31 >= 2)
      {
        return (v31 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v30 = v32;
  }

  return sub_100024D10(v28, v29, v30);
}

void sub_1005F3BC8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v47 = *(a4 + 16);
  v52 = *(v47 - 8);
  v45 = *(a4 + 24);
  v4 = *(v45 - 8);
  v48 = *(v52 + 84);
  v46 = *(v4 + 84);
  if (v46 <= v48)
  {
    v5 = *(v52 + 84);
  }

  else
  {
    v5 = *(v4 + 84);
  }

  v6 = *(type metadata accessor for Date() - 8);
  v7 = *(v6 + 80);
  v8 = v7 | 7;
  v49 = *(v6 + 84);
  v51 = *(v6 + 64);
  if (v5 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = v5;
  }

  v10 = *(type metadata accessor for DynamicTypeSize() - 8);
  v11 = *(v10 + 80);
  v12 = ((v11 + 19) & ~v11) + *(v10 + 64);
  if (v12 <= 8)
  {
    v12 = 8;
  }

  v50 = v12;
  v13 = type metadata accessor for LayoutDirection();
  v14 = v9;
  v15 = *(v13 - 8);
  if (*(v15 + 64) <= 8uLL)
  {
    v16 = 8;
  }

  else
  {
    v16 = *(v15 + 64);
  }

  v17 = *(v52 + 80);
  v18 = *(v52 + 64);
  v19 = *(v4 + 80);
  v20 = *(v4 + 64) + v8;
  if (v49)
  {
    v21 = v51;
  }

  else
  {
    v21 = v51 + 1;
  }

  v22 = v21 - (((-25 - v7) | v7) + ((-17 - v7) | v8)) - 2;
  if (v22 <= 8)
  {
    v22 = 8;
  }

  v23 = *(v15 + 80) & 0xF8 | 7;
  v24 = v16 + ((v23 + ((v50 + ((v22 + (v11 | 7) + ((v20 + ((v18 + v19 + ((v17 + 16) & ~v17)) & ~v19)) & ~v8) + 1) & ~(v11 | 7)) + 128) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v23) + 1;
  v25 = 8 * v24;
  v26 = a3 - v9;
  if (a3 <= v9)
  {
    v29 = 0;
    v27 = a1;
    v28 = a2;
  }

  else
  {
    v27 = a1;
    v28 = a2;
    if (v24 <= 3)
    {
      v32 = ((v26 + ~(-1 << v25)) >> v25) + 1;
      if (HIWORD(v32))
      {
        v29 = 4;
      }

      else
      {
        if (v32 < 0x100)
        {
          v33 = 1;
        }

        else
        {
          v33 = 2;
        }

        if (v32 >= 2)
        {
          v29 = v33;
        }

        else
        {
          v29 = 0;
        }
      }
    }

    else
    {
      v29 = 1;
    }
  }

  if (v14 < v28)
  {
    v30 = ~v14 + v28;
    if (v24 < 4)
    {
      v31 = (v30 >> v25) + 1;
      if (v24)
      {
        v34 = v30 & ~(-1 << v25);
        bzero(v27, v24);
        if (v24 == 3)
        {
          *v27 = v34;
          v27[2] = BYTE2(v34);
        }

        else if (v24 == 2)
        {
          *v27 = v34;
        }

        else
        {
          *v27 = v30;
        }
      }
    }

    else
    {
      bzero(v27, v24);
      *v27 = v30;
      v31 = 1;
    }

    switch(v29)
    {
      case 1:
        v27[v24] = v31;
        break;
      case 2:
        *&v27[v24] = v31;
        break;
      case 3:
        goto LABEL_71;
      case 4:
        *&v27[v24] = v31;
        break;
      default:
        return;
    }

    return;
  }

  switch(v29)
  {
    case 1:
      v27[v24] = 0;
      if (v28)
      {
        goto LABEL_40;
      }

      return;
    case 2:
      *&v27[v24] = 0;
      if (v28)
      {
        goto LABEL_40;
      }

      return;
    case 3:
LABEL_71:
      __break(1u);
      return;
    case 4:
      *&v27[v24] = 0;
      goto LABEL_39;
    default:
LABEL_39:
      if (!v28)
      {
        return;
      }

LABEL_40:
      v35 = (((v27 + 15) & 0xFFFFFFFFFFFFFFF8) + v17 + 8) & ~v17;
      v36 = v48;
      if (v48 == v14)
      {
        v37 = v28;
        v38 = v47;
LABEL_44:

        sub_10001B350(v35, v37, v36, v38);
        return;
      }

      v35 = (v35 + v18 + v19) & ~v19;
      v36 = v46;
      if (v46 == v14)
      {
        v37 = v28;
        v38 = v45;
        goto LABEL_44;
      }

      v39 = ((v20 + v35) & ~(v7 | 7));
      if (v28 > 0xFE)
      {
        v40 = (v22 + 1);
        v41 = -1 << (8 * (v22 + 1));
        if (v40 <= 3)
        {
          v42 = ~v41;
        }

        else
        {
          v42 = -1;
        }

        if (v40)
        {
          v43 = v42 & (v28 - 255);
          if (v40 <= 3)
          {
            v44 = v40;
          }

          else
          {
            v44 = 4;
          }

          bzero(v39, v40);
          switch(v44)
          {
            case 2:
              *v39 = v43;
              break;
            case 3:
              *v39 = v43;
              v39[2] = BYTE2(v43);
              break;
            case 4:
              *v39 = v43;
              break;
            default:
              *v39 = v43;
              break;
          }
        }
      }

      else
      {
        v39[v22] = -v28;
      }

      return;
  }
}

uint64_t sub_1005F4148()
{
  result = type metadata accessor for LocationViewerViewModel();
  if (v1 <= 0x3F)
  {
    result = sub_100081B54(319, &qword_100CC99B8);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1005F4220()
{
  result = qword_100CCA7F0;
  if (!qword_100CCA7F0)
  {
    sub_10022E824(&qword_100CCA0D8);
    sub_10022E824(&qword_100CCA0A0);
    sub_10022E824(&unk_100CE0EB0);
    sub_10022E824(&qword_100CCA0A8);
    sub_1005F2610();
    swift_getOpaqueTypeConformance2();
    sub_1005F2720();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA7F0);
  }

  return result;
}

unint64_t sub_1005F4370()
{
  result = qword_100CCA808;
  if (!qword_100CCA808)
  {
    sub_10022E824(&qword_100CCA270);
    sub_10022E824(&qword_100CCA230);
    type metadata accessor for Location.Identifier();
    sub_10022E824(&qword_100CCA250);
    sub_10022E824(&qword_100CCA228);
    sub_1005F6F6C(&unk_100CCA258);
    sub_1005F6F6C(&unk_100CCA260);
    swift_getOpaqueTypeConformance2();
    sub_1000EA178(&qword_100CA3A48);
    swift_getOpaqueTypeConformance2();
    sub_1005F6F6C(&unk_100CCA810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA808);
  }

  return result;
}

unint64_t sub_1005F4584()
{
  result = qword_100CCA838;
  if (!qword_100CCA838)
  {
    sub_10022E824(&qword_100CCA840);
    sub_10022E824(&qword_100CCA288);
    sub_1005F6F6C(&unk_100CCA2A0);
    swift_getOpaqueTypeConformance2();
    sub_1000EA178(&qword_100CE1750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA838);
  }

  return result;
}

unint64_t sub_1005F4788()
{
  result = qword_100CCA860;
  if (!qword_100CCA860)
  {
    sub_10022E824(&qword_100CCA848);
    sub_1005F4840();
    sub_1005F6F6C(&unk_100CCA880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA860);
  }

  return result;
}

unint64_t sub_1005F4840()
{
  result = qword_100CCA868;
  if (!qword_100CCA868)
  {
    sub_10022E824(&qword_100CCA858);
    sub_1005F6F6C(&unk_100CCA870);
    sub_1005F6F6C(&qword_100CB0558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA868);
  }

  return result;
}

void sub_1005F4924()
{
  v1 = *(type metadata accessor for CommonTabView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  sub_1005E861C(v2, v3);
}

uint64_t sub_1005F49A4()
{
  v0 = sub_10000C76C();
  v1 = type metadata accessor for CommonTabView(v0);
  sub_100003810(v1);
  sub_1000138B8();

  return sub_1005E5748(v2, v3);
}

uint64_t sub_1005F4A00()
{
  sub_1000C87D0();
  type metadata accessor for CommonTabView(0);
  sub_100003DDC();
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  type metadata accessor for LocationModel();
  sub_100003D98();
  (*(v3 + 8))(v0 + v2);
  type metadata accessor for LocationViewerViewModel();
  sub_1000717B4();

  sub_100087188();
  type metadata accessor for ConditionPickerMenuViewModel(0);
  v4 = sub_100016410();
  if (!sub_100020918(v4))
  {
    sub_100003B20();
    v5 = sub_1000437BC();
    v6(v5);
  }

  sub_10003263C();

  sub_1000132CC();

  sub_10003BEA0();
  v7 = type metadata accessor for ContentStatusBanner();
  if (!sub_100003EB0(v7))
  {
    sub_1000D4274();
    if (v8)
    {
    }

    v9 = sub_100172198();
    if (!sub_100021564(v9))
    {
      sub_100019B68();
      v10 = sub_1000749D4();
      v11(v10);
    }
  }

  sub_1001200B0();
  sub_100087DE0();
  sub_10022C350(&qword_100CA62E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_10000CB9C(v12))
    {
      sub_100003D20();
      v13 = sub_100044E18();
      v14(v13);
    }
  }

  else
  {
  }

  sub_1000116BC();
  sub_100020DD4();

  return swift_deallocObject();
}

_BYTE *sub_1005F4C18()
{
  v0 = sub_100017580();
  v1 = type metadata accessor for CommonTabView(v0);
  sub_100003810(v1);
  v2 = sub_100037B1C();

  return sub_1005E5798(v2, v3, v4, v5);
}

unint64_t sub_1005F4C84()
{
  result = qword_100CCA8B0;
  if (!qword_100CCA8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA8B0);
  }

  return result;
}

unint64_t sub_1005F4CE0()
{
  result = qword_100CCA910;
  if (!qword_100CCA910)
  {
    sub_10022E824(&qword_100CCA918);
    sub_10022E824(&qword_100CCA920);
    sub_1005F4DD8();
    swift_getOpaqueTypeConformance2();
    sub_1000EA178(&qword_100CE1750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA910);
  }

  return result;
}

unint64_t sub_1005F4DD8()
{
  result = qword_100CCA928;
  if (!qword_100CCA928)
  {
    sub_10022E824(&qword_100CCA920);
    sub_1005F4E90();
    sub_1005F6F6C(&unk_100CCA9C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA928);
  }

  return result;
}

unint64_t sub_1005F4E90()
{
  result = qword_100CCA930;
  if (!qword_100CCA930)
  {
    sub_10022E824(&qword_100CCA938);
    sub_1005F4F1C();
    sub_100061564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA930);
  }

  return result;
}

unint64_t sub_1005F4F1C()
{
  result = qword_100CCA940;
  if (!qword_100CCA940)
  {
    sub_10022E824(&qword_100CCA948);
    sub_1005F4FD4();
    sub_1005F6F6C(&unk_100CCA9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA940);
  }

  return result;
}

unint64_t sub_1005F4FD4()
{
  result = qword_100CCA950;
  if (!qword_100CCA950)
  {
    sub_10022E824(&qword_100CCA958);
    sub_1005F5060();
    sub_1005F52B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA950);
  }

  return result;
}

unint64_t sub_1005F5060()
{
  result = qword_100CCA960;
  if (!qword_100CCA960)
  {
    sub_10022E824(&qword_100CCA968);
    sub_1005F5118();
    sub_1005F6F6C(&unk_100CE1690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA960);
  }

  return result;
}

unint64_t sub_1005F5118()
{
  result = qword_100CCA970;
  if (!qword_100CCA970)
  {
    sub_10022E824(&qword_100CCA978);
    sub_1005F51A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA970);
  }

  return result;
}

unint64_t sub_1005F51A4()
{
  result = qword_100CCA980;
  if (!qword_100CCA980)
  {
    sub_10022E824(&qword_100CCA988);
    sub_10022E824(&qword_100CCA990);
    sub_1005F6F6C(&unk_100CCA998);
    sub_10010E464();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA980);
  }

  return result;
}

unint64_t sub_1005F52B4()
{
  result = qword_100CCA9A8;
  if (!qword_100CCA9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA9A8);
  }

  return result;
}

unint64_t sub_1005F5384()
{
  result = qword_100CCAA78;
  if (!qword_100CCAA78)
  {
    sub_10022E824(&qword_100CCAA68);
    sub_1005F543C();
    sub_1005F6F6C(&unk_100CE1820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCAA78);
  }

  return result;
}

unint64_t sub_1005F543C()
{
  result = qword_100CCAA80;
  if (!qword_100CCAA80)
  {
    sub_10022E824(&qword_100CCAA88);
    sub_1005F5524(&unk_100CCAA90);
    sub_1000EA178(&unk_100CCAB30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCAA80);
  }

  return result;
}

unint64_t sub_1005F5524(uint64_t a1)
{
  result = sub_100013918(a1);
  if (!result)
  {
    v5 = v4;
    v6 = sub_100003A24(0, v3);
    sub_10022E824(v6);
    v5();
    sub_1000EA178(&qword_100CE1750);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1005F55D0()
{
  result = qword_100CCAAA0;
  if (!qword_100CCAAA0)
  {
    sub_10022E824(&qword_100CCAAA8);
    sub_10022E824(&qword_100CCAAB0);
    sub_10022E824(&unk_100CE0EB0);
    sub_10022E824(&qword_100CCAAB8);
    sub_10022E824(&qword_100CCAAC0);
    sub_1005F574C();
    swift_getOpaqueTypeConformance2();
    sub_1005F5A00();
    sub_1005F5B18();
    swift_getOpaqueTypeConformance2();
    sub_100061564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCAAA0);
  }

  return result;
}

unint64_t sub_1005F574C()
{
  result = qword_100CCAAC8;
  if (!qword_100CCAAC8)
  {
    sub_10022E824(&qword_100CCAAB0);
    sub_1005F57D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCAAC8);
  }

  return result;
}

unint64_t sub_1005F57D8()
{
  result = qword_100CCAAD0;
  if (!qword_100CCAAD0)
  {
    sub_10022E824(&qword_100CCAAD8);
    sub_1005F5864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCAAD0);
  }

  return result;
}

unint64_t sub_1005F5864()
{
  result = qword_100CCAAE0;
  if (!qword_100CCAAE0)
  {
    sub_10022E824(&qword_100CCAAE8);
    sub_1005F591C();
    sub_1005F6F6C(&qword_100CB3460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCAAE0);
  }

  return result;
}

unint64_t sub_1005F591C()
{
  result = qword_100CCAAF0;
  if (!qword_100CCAAF0)
  {
    sub_10022E824(&qword_100CCAAF8);
    sub_1005F6F6C(&unk_100CCAB00);
    sub_1005F6F6C(&qword_100CA4620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCAAF0);
  }

  return result;
}

unint64_t sub_1005F5A00()
{
  result = qword_100CCAB10;
  if (!qword_100CCAB10)
  {
    sub_10022E824(&qword_100CCAAB8);
    sub_1005F5A8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCAB10);
  }

  return result;
}

unint64_t sub_1005F5A8C()
{
  result = qword_100CCAB18;
  if (!qword_100CCAB18)
  {
    sub_10022E824(&qword_100CCAB20);
    sub_1005F5B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCAB18);
  }

  return result;
}

unint64_t sub_1005F5B18()
{
  result = qword_100CCAB28;
  if (!qword_100CCAB28)
  {
    sub_10022E824(&qword_100CCAAC0);
    sub_1005F574C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCAB28);
  }

  return result;
}

uint64_t sub_1005F5BC4(double a1)
{
  v4 = sub_10000C76C();
  v5 = type metadata accessor for PinnedMapView(v4);
  sub_100003810(v5);
  sub_10001164C();

  return sub_1005EC7A0(v2 + v6, v1, a1);
}

uint64_t sub_1005F5C4C()
{
  type metadata accessor for PinnedMapView(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_100006F14(v3);
  v4 = v0[6];
  type metadata accessor for Location.Identifier();
  sub_100003D98();
  (*(v5 + 8))(v3 + v4);
  v6 = v3 + v0[8];
  sub_10022C350(&qword_100CB3278);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *(type metadata accessor for DisplayMetrics() + 36);
    type metadata accessor for DynamicTypeSize();
    sub_100003D98();
    (*(v8 + 8))(v6 + v7);
  }

  else
  {
  }

  v9 = sub_100071D70(v0[9]);
  sub_1000C8EBC(v9, v10, v11, v12, v13, v14, v15);
  sub_100037B34(v0[10]);
  sub_100037B34(v0[11]);

  return swift_deallocObject();
}

uint64_t sub_1005F5E78(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = a1(0);
  sub_100003810(v3);
  sub_10001164C();

  return a2(v2 + v4);
}

uint64_t sub_1005F5EF4()
{
  v0 = sub_10000C76C();
  v1 = type metadata accessor for DebugButtonGroup(v0);
  sub_100003810(v1);
  sub_1000138B8();

  return sub_1005E1BCC(v2, v3);
}

uint64_t sub_1005F5F50()
{
  sub_1000C87D0();
  type metadata accessor for DebugButtonGroup(0);
  sub_100003A0C();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  type metadata accessor for LocationModel();
  sub_100003D98();
  (*(v4 + 8))(v1 + v3);
  type metadata accessor for LocationViewerViewModel();
  sub_1000717B4();

  sub_1000AF5B0();
  type metadata accessor for ConditionPickerMenuViewModel(0);
  v5 = sub_100016410();
  if (!sub_100020918(v5))
  {
    sub_100003B20();
    v6 = sub_1000437BC();
    v7(v6);
  }

  sub_10003263C();

  sub_100088420();

  sub_100006F14(v1 + v3 + *(v0 + 20));
  sub_1000116BC();
  sub_100020DD4();

  return swift_deallocObject();
}

uint64_t sub_1005F609C()
{
  v0 = sub_100017580();
  v1 = type metadata accessor for DebugButtonGroup(v0);
  sub_100003810(v1);
  v2 = sub_100037B1C();

  return sub_1005E1C28(v2, v3, v4, v5);
}

unint64_t sub_1005F60F8()
{
  result = qword_100CCABD0;
  if (!qword_100CCABD0)
  {
    sub_10022E824(&qword_100CCABB8);
    sub_1000F1C44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCABD0);
  }

  return result;
}

uint64_t sub_1005F61AC()
{
  result = type metadata accessor for LocationModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1005F6278()
{
  sub_1000E9E3C(319, &qword_100CA3C78, type metadata accessor for DisplayMetrics, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_1005F63C8(319, &qword_100CA3C88, &type metadata for SceneMetrics, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_1005F63C8(319, &qword_100CB7100, &unk_100C730C0, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_1005F63C8(319, &qword_100CB24B8, &type metadata for WeatherMapPresentationStyle, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1005F63C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1005F6418()
{
  result = qword_100CCADD0;
  if (!qword_100CCADD0)
  {
    sub_10022E824(&qword_100CCAA40);
    sub_1005F6F6C(&unk_100CCADD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCADD0);
  }

  return result;
}

unint64_t sub_1005F64D0()
{
  result = qword_100CCADE0;
  if (!qword_100CCADE0)
  {
    sub_10022E824(&qword_100CCADE8);
    sub_1005F5384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCADE0);
  }

  return result;
}

unint64_t sub_1005F655C()
{
  result = qword_100CCADF0;
  if (!qword_100CCADF0)
  {
    sub_10022E824(&qword_100CCAB68);
    sub_1005F65E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCADF0);
  }

  return result;
}

unint64_t sub_1005F65E8()
{
  result = qword_100CCADF8;
  if (!qword_100CCADF8)
  {
    sub_10022E824(&qword_100CC9B00);
    sub_1000EA178(&qword_100CC91B8);
    sub_1000EA178(&unk_100CCAE00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCADF8);
  }

  return result;
}

unint64_t sub_1005F66D4()
{
  result = qword_100CCAE18;
  if (!qword_100CCAE18)
  {
    sub_10022E824(&qword_100CCABF8);
    sub_1005F5524(&unk_100CCAE20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCAE18);
  }

  return result;
}

uint64_t sub_1005F6854(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v3 = a1(0);
  sub_100003810(v3);
  sub_10001164C();
  return a2();
}

unint64_t sub_1005F68C0()
{
  result = qword_100CCAE40;
  if (!qword_100CCAE40)
  {
    sub_10022E824(&qword_100CCAE38);
    sub_1005F694C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCAE40);
  }

  return result;
}
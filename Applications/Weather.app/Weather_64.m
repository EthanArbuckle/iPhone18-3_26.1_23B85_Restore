uint64_t sub_1006D88BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a1;
  v36 = a3;
  v32 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10022C350(&qword_100CD26C0);
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v7 = &v27 - v6;
  v34 = sub_10022C350(&qword_100CD26B0);
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v27 = &v27 - v8;
  v38 = static Alignment.center.getter();
  v39 = v9;
  sub_1006D95E8(a2, a1);
  LocalizedStringKey.init(stringLiteral:)();
  v10 = Text.init(_:tableName:bundle:comment:)();
  v12 = v11;
  v14 = v13;
  v15 = sub_10022C350(&qword_100CD26C8);
  v16 = sub_10023FBF4(&qword_100CD26D0, &qword_100CD26C8);
  View.navigationTitle(_:)();
  sub_10010CD64(v10, v12, v14 & 1);

  sub_10003FDA0(&v38, &qword_100CD26C8);
  v17 = v30;
  v18 = v29;
  v19 = v32;
  (*(v30 + 104))(v29, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v32);
  v38 = v15;
  v39 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v27;
  v22 = v31;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v17 + 8))(v18, v19);
  (*(v33 + 8))(v7, v22);
  v37 = v28;
  sub_10022C350(&qword_100CD26B8);
  v38 = v22;
  v39 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v23 = sub_10022E824(&qword_100CD26D8);
  v24 = sub_10023FBF4(&qword_100CD26E0, &qword_100CD26D8);
  v38 = v23;
  v39 = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v34;
  View.toolbar<A>(content:)();
  return (*(v35 + 8))(v21, v25);
}

uint64_t sub_1006D8DBC(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10022C350(&qword_100CD26D8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  static ToolbarItemPlacement.confirmationAction.getter();
  v9 = a1;
  sub_10022C350(&qword_100CD26E8);
  sub_1006DA190();
  ToolbarItem<>.init(placement:content:)();
  sub_10023FBF4(&qword_100CD26E0, &qword_100CD26D8);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1006D8F74()
{
  Solarium.init()();
  sub_10022C350(&qword_100CD2700);
  sub_10022C350(&qword_100CA5528);
  sub_1006DA254();
  sub_10023FBF4(&qword_100CA5548, &qword_100CA5528);
  return StaticIf<>.init(_:then:else:)();
}

uint64_t sub_1006D907C(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CD2710);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - v4;
  sub_1006DA394(a1, v15);
  v6 = swift_allocObject();
  v7 = v15[1];
  *(v6 + 16) = v15[0];
  *(v6 + 32) = v7;
  *(v6 + 48) = v15[2];
  *(v6 + 64) = v16;
  sub_10022C350(&qword_100CD2718);
  sub_1006DA3E8();
  Button.init(action:label:)();
  LocalizedStringKey.init(stringLiteral:)();
  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  sub_10023FBF4(&qword_100CD2708, &qword_100CD2710);
  View.accessibilityLabel(_:)();
  sub_10010CD64(v8, v10, v12 & 1);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1006D92BC()
{
  Image.init(systemName:)();
  View.accessibilityHidden(_:)();
}

uint64_t sub_1006D9338(uint64_t a1)
{
  sub_1006DA394(a1, v4);
  v1 = swift_allocObject();
  v2 = v4[1];
  *(v1 + 16) = v4[0];
  *(v1 + 32) = v2;
  *(v1 + 48) = v4[2];
  *(v1 + 64) = v5;
  return Button.init(action:label:)();
}

uint64_t sub_1006D93E0(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  sub_1000161C0(a1 + 2, v1);
  return (*(*(v2 + 8) + 16))(v1);
}

uint64_t sub_1006D942C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Font.TextStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocalizedStringKey.init(stringLiteral:)();
  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9;
  (*(v3 + 104))(v5, enum case for Font.TextStyle.body(_:), v2);
  static Font.Weight.semibold.getter();
  static Font.system(_:weight:)();
  (*(v3 + 8))(v5, v2);
  v11 = Text.font(_:)();
  v13 = v12;
  LOBYTE(v3) = v14;
  v16 = v15;

  sub_10010CD64(v6, v8, v10 & 1);

  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v3 & 1;
  *(a1 + 24) = v16;
  return result;
}

uint64_t sub_1006D95E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  if (*(a1 + 96))
  {
    v4 = swift_allocObject();
    v5 = *(a1 + 16);
    *(v4 + 16) = *a1;
    *(v4 + 32) = v5;
    *(v4 + 48) = *(a1 + 32);
    *(v4 + 64) = v3;
    *(v4 + 66) = BYTE2(v3);
    *(v4 + 67) = *(a1 + 51);
    *(v4 + 80) = *(a1 + 64);
    *(v4 + 104) = *(a1 + 88);
    *(v4 + 88) = *(a1 + 72);
    __src[10] = sub_10071E894;
    __src[11] = 0;
    LOBYTE(__src[12]) = 0;
    __src[0] = sub_10022C350(&qword_100CA6F50);
    v6 = qword_100CA1F40;

    if (v6 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    result = sub_1000955E0(&xmmword_100D8FB90, __dst, &unk_100CAF270);
    if (*(&__dst[1] + 1))
    {
      sub_100013188(__dst, &__src[3]);
      __src[1] = sub_1002B08C4;
      __src[2] = v4;
      v8 = Dictionary.init(dictionaryLiteral:)();
      __src[8] = _swiftEmptyArrayStorage;
      __src[9] = v8;
      memcpy(__dst, __src, 0x61uLL);
      sub_1000955E0(__dst, __src, &qword_100CA6E88);
      v14 = 1;
      sub_10022C350(&qword_100CA6E88);
      sub_1006DA4A4();
      sub_10023FBF4(&qword_100CA6E80, &qword_100CA6E88);
      _ConditionalContent<>.init(storage:)();
      return sub_10003FDA0(__dst, &qword_100CA6E88);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v9 = *(a1 + 16);
    v16 = *a1;
    v17 = v9;
    v18 = *(a1 + 32);
    v15[0] = *(a1 + 51);
    *(v15 + 13) = *(a1 + 64);
    sub_100035B30(a2 + 16, v11);
    __dst[0] = v16;
    __dst[1] = v17;
    __dst[2] = v18;
    LOWORD(__dst[3]) = v3;
    BYTE2(__dst[3]) = BYTE2(v3);
    *(&__dst[3] + 3) = v15[0];
    *&__dst[4] = *(v15 + 13);
    sub_100035B30(v11, &__dst[4] + 8);
    sub_1006DA4F8(a1, __src);
    if (qword_100CA21B0 != -1)
    {
      swift_once();
    }

    v10 = sub_10022C350(&qword_100CA35A0);
    sub_10000703C(v10, qword_100D90328);
    swift_beginAccess();
    Tips.Parameter.wrappedValue.setter();
    swift_endAccess();
    sub_100006F14(v11);
    sub_1006DA554(__dst, __src);
    v14 = 0;
    sub_10022C350(&qword_100CA6E88);
    sub_1006DA4A4();
    sub_10023FBF4(&qword_100CA6E80, &qword_100CA6E88);
    _ConditionalContent<>.init(storage:)();
    return sub_1006DA5B0(__dst);
  }

  return result;
}

unint64_t sub_1006D9A70()
{
  result = qword_100CD25D0;
  if (!qword_100CD25D0)
  {
    sub_10022E824(&qword_100CD25C0);
    sub_1006D9B28();
    sub_10023FBF4(&qword_100CA4620, &qword_100CA4628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD25D0);
  }

  return result;
}

unint64_t sub_1006D9B28()
{
  result = qword_100CD25D8;
  if (!qword_100CD25D8)
  {
    sub_10022E824(&qword_100CD25E0);
    sub_1006DA604(&qword_100CD25E8, &unk_100CD25F0, &unk_100A77EC8, sub_1006D9BE0);
    sub_1006D9C98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD25D8);
  }

  return result;
}

unint64_t sub_1006D9BE0()
{
  result = qword_100CD25F8;
  if (!qword_100CD25F8)
  {
    sub_10022E824(&qword_100CD2600);
    sub_1005D9F60();
    sub_10023FBF4(&unk_100CE0FC0, &qword_100CA6EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD25F8);
  }

  return result;
}

unint64_t sub_1006D9C98()
{
  result = qword_100CD2608;
  if (!qword_100CD2608)
  {
    sub_10022E824(&qword_100CD2610);
    sub_1006D9D24();
    sub_1006D9E68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2608);
  }

  return result;
}

unint64_t sub_1006D9D24()
{
  result = qword_100CD2618;
  if (!qword_100CD2618)
  {
    sub_10022E824(&qword_100CD2620);
    sub_1003AA35C();
    sub_1006D9DB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2618);
  }

  return result;
}

unint64_t sub_1006D9DB0()
{
  result = qword_100CD2628;
  if (!qword_100CD2628)
  {
    sub_10022E824(&qword_100CD2630);
    sub_1003AA27C();
    sub_10023FBF4(&unk_100CE0FC0, &qword_100CA6EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2628);
  }

  return result;
}

unint64_t sub_1006D9E68()
{
  result = qword_100CD2638;
  if (!qword_100CD2638)
  {
    sub_10022E824(&qword_100CD2640);
    sub_1006D9F20();
    sub_10023FBF4(&unk_100CE0FC0, &qword_100CA6EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2638);
  }

  return result;
}

unint64_t sub_1006D9F20()
{
  result = qword_100CD2648;
  if (!qword_100CD2648)
  {
    sub_10022E824(&qword_100CD2650);
    sub_1006D9FDC();
    sub_1006DA33C(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2648);
  }

  return result;
}

unint64_t sub_1006D9FDC()
{
  result = qword_100CD2658;
  if (!qword_100CD2658)
  {
    sub_10022E824(&qword_100CD2660);
    sub_1006DA094();
    sub_10023FBF4(&unk_100CE0FC0, &qword_100CA6EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2658);
  }

  return result;
}

unint64_t sub_1006DA094()
{
  result = qword_100CD2668;
  if (!qword_100CD2668)
  {
    sub_10022E824(&qword_100CD2670);
    sub_10023FBF4(&qword_100CD2678, &unk_100CD2680);
    sub_10023FBF4(&qword_100CE0FF0, &qword_100CA5110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2668);
  }

  return result;
}

unint64_t sub_1006DA190()
{
  result = qword_100CD26F0;
  if (!qword_100CD26F0)
  {
    sub_10022E824(&qword_100CD26E8);
    sub_1006DA254();
    sub_10023FBF4(&qword_100CA5548, &qword_100CA5528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD26F0);
  }

  return result;
}

unint64_t sub_1006DA254()
{
  result = qword_100CD26F8;
  if (!qword_100CD26F8)
  {
    sub_10022E824(&qword_100CD2700);
    sub_10023FBF4(&qword_100CD2708, &unk_100CD2710);
    sub_1006DA33C(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD26F8);
  }

  return result;
}

uint64_t sub_1006DA33C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1006DA3E8()
{
  result = qword_100CD2720;
  if (!qword_100CD2720)
  {
    sub_10022E824(&qword_100CD2718);
    sub_1006DA33C(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2720);
  }

  return result;
}

unint64_t sub_1006DA4A4()
{
  result = qword_100CD2728;
  if (!qword_100CD2728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2728);
  }

  return result;
}

uint64_t sub_1006DA604(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_100003A24(0, a2);
    sub_10022E824(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1006DA6A0()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1006DA6FC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 2;
  v7 = *(*(v4 - 8) + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
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

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_31;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_30:
      if (v6)
      {
LABEL_31:
        v16 = sub_100024D10(a1, v5, v4);
        if (v16 >= 3)
        {
          return v16 - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_30;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    switch(v7)
    {
      case 2:
        LODWORD(v7) = *a1;
        break;
      case 3:
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v7) = *a1;
        break;
      default:
        LODWORD(v7) = *a1;
        break;
    }
  }

  return v6 + (v7 | v15) + 1;
}

void sub_1006DA8C8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = v7 - 2;
  v9 = *(*(v6 - 8) + 64);
  if (v7 <= 1)
  {
    v8 = 0;
    if (v9 <= 3)
    {
      v11 = (~(-1 << (8 * v9)) - v7 + 2) >> (8 * v9);
      if (v11 > 0xFFFE)
      {
        v10 = 4;
      }

      else
      {
        v12 = 1;
        if (v11 >= 0xFF)
        {
          v12 = 2;
        }

        if (v11)
        {
          v10 = v12;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }

    v9 += v10;
  }

  v13 = 8 * v9;
  v14 = a3 >= v8;
  v15 = a3 - v8;
  if (v15 != 0 && v14)
  {
    if (v9 <= 3)
    {
      v19 = ((v15 + ~(-1 << v13)) >> v13) + 1;
      if (HIWORD(v19))
      {
        v16 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v16 = v20;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v8 >= a2)
  {
    switch(v16)
    {
      case 1:
        a1[v9] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *&a1[v9] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_48:
        __break(1u);
        break;
      case 4:
        *&a1[v9] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          v22 = a2 + 2;

          sub_10001B350(a1, v22, v7, v6);
        }

        break;
    }
  }

  else
  {
    v17 = ~v8 + a2;
    if (v9 < 4)
    {
      v18 = (v17 >> v13) + 1;
      if (v9)
      {
        v21 = v17 & ~(-1 << v13);
        bzero(a1, v9);
        if (v9 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else if (v9 == 2)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v17;
      v18 = 1;
    }

    switch(v16)
    {
      case 1:
        a1[v9] = v18;
        break;
      case 2:
        *&a1[v9] = v18;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *&a1[v9] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1006DAB54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_1006DAB94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1006DAC04@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v27 = type metadata accessor for AutomationInfo(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for AccessibilityChildBehavior();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CD2880);
  sub_1000037C4();
  v24 = v10;
  v25 = v11;
  __chkstk_darwin(v10);
  v13 = &v22 - v12;
  v14 = static VerticalAlignment.center.getter();
  v30 = 0;
  sub_1006DAF70(v1, v33);
  memcpy(v31, v33, 0x99uLL);
  memcpy(v32, v33, 0x99uLL);
  sub_100035AD0(v31, v28, &qword_100CD2888);
  sub_1000180EC(v32, &qword_100CD2888);
  memcpy(&v29[7], v31, 0x99uLL);
  v28[0] = v14;
  v28[1] = 0;
  LOBYTE(v28[2]) = v30;
  memcpy(&v28[2] + 1, v29, 0xA0uLL);
  static AccessibilityChildBehavior.combine.getter();
  v15 = sub_10022C350(&qword_100CD2890);
  v16 = sub_1006DBA20();
  View.accessibilityElement(children:)();
  (*(v6 + 8))(v9, v23);
  memcpy(v33, v28, 0xB1uLL);
  sub_1000180EC(v33, &qword_100CD2890);
  v28[0] = v15;
  v28[1] = v16;
  swift_getOpaqueTypeConformance2();
  v17 = v26;
  v18 = v24;
  View.accessibilityRespondsToUserInteraction(_:)();
  (*(v25 + 8))(v13, v18);
  type metadata accessor for AutomationCellInfo(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v19 = v17 + *(sub_10022C350(&qword_100CD28A0) + 36);
  v20 = type metadata accessor for AutomationInfoProperty();
  sub_1003AFC6C(v4, v19 + *(v20 + 24));
  sub_1001C9E84(v4);
  *v19 = 0;
  *(v19 + 8) = 0xE000000000000000;
  result = swift_getKeyPath();
  *(v19 + 16) = result;
  *(v19 + 24) = 0;
  return result;
}

uint64_t sub_1006DAF70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.leading.getter();
  v6[0] = 0;
  sub_1006DB0CC(a1, __src);
  memcpy(__dst, __src, 0x6BuLL);
  memcpy(v9, __src, 0x6BuLL);
  sub_100035AD0(__dst, v10, &qword_100CACF48);
  sub_1000180EC(v9, &qword_100CACF48);
  memcpy(&v7[7], __dst, 0x6BuLL);
  v10[0] = v4;
  v10[1] = 0;
  LOBYTE(v10[2]) = 0;
  memcpy(&v10[2] + 1, v7, 0x72uLL);
  v10[17] = 0x3FF0000000000000;
  v6[144] = 0;
  memcpy(a2, v10, 0x90uLL);
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  __src[0] = v4;
  __src[1] = 0;
  LOBYTE(__src[2]) = 0;
  memcpy(&__src[2] + 1, v7, 0x72uLL);
  __src[17] = 0x3FF0000000000000;
  sub_100035AD0(v10, v6, &qword_100CD28A8);
  return sub_1000180EC(__src, &qword_100CD28A8);
}

uint64_t sub_1006DB0CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v110 = a2;
  v3 = type metadata accessor for TypesettingLanguageAwareLineHeightRatio();
  v103 = *(v3 - 8);
  v104 = v3;
  __chkstk_darwin(v3);
  v102 = v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CACFF0);
  __chkstk_darwin(v5 - 8);
  v7 = v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v111 = v86 - v9;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = a1[1];
  v16 = a1[3];
  v98 = a1[2];
  v100 = v16;
  v135 = *(a1 + 2);
  *&v119 = v14;
  *(&v119 + 1) = v15;
  v17 = sub_10002D5A4();

  v99 = v17;
  v18 = Text.init<A>(_:)();
  v90 = v19;
  v91 = v18;
  v21 = v20;
  v97 = v22;
  v23 = static Font.largeTitle.getter();
  v89 = static Font.title2.getter();
  v134 = *(a1 + 72);
  v108 = v10;
  v109 = a1;
  v24 = a1[8];
  v133 = v24;
  v94 = v134;
  v106 = v13;
  v107 = v11;
  v101 = v24;
  if (v134 == 1)
  {
    v25 = v24;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v26 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000180EC(&v133, &qword_100CB91B8);
    (*(v11 + 8))(v13, v10);
    v25 = v119;
  }

  v27 = enum case for Font.Leading.tight(_:);
  v28 = type metadata accessor for Font.Leading();
  v29 = *(v28 - 8);
  v30 = *(v29 + 104);
  v31 = v111;
  v95 = v27;
  v92 = v29 + 104;
  v93 = v30;
  v30(v111, v27, v28);
  v96 = v28;
  sub_10001B350(v31, 0, 1, v28);
  sub_100035AD0(v31, v7, &qword_100CACFF0);

  v32 = v89;

  v105 = v7;
  sub_1001C987C(v23, v32, v25 & 1, v7);
  v33 = v91;
  LOBYTE(v27) = v21;
  v34 = v90;
  v35 = Text.font(_:)();
  v87 = v36;
  v88 = v35;
  v38 = v37;
  v86[1] = v39;

  sub_10010CD64(v33, v34, v27 & 1);

  sub_1000180EC(v31, &qword_100CACFF0);
  v40 = v102;
  static TypesettingLanguageAwareLineHeightRatio.disable.getter();
  v42 = v87;
  v41 = v88;
  v43 = Text.typesettingLanguageAwareLineHeightRatio(_:isEnabled:)();
  v45 = v44;
  LOBYTE(v33) = v46;
  sub_10010CD64(v41, v42, v38 & 1);

  (*(v103 + 8))(v40, v104);
  v136 = v135;
  v119 = v135;

  v47 = Text.accessibilityLabel<A>(_:)();
  v102 = v48;
  v103 = v47;
  LODWORD(v97) = v49;
  v104 = v50;
  sub_10010CD64(v43, v45, v33 & 1);

  sub_1002ED110(&v136);
  *&v119 = v98;
  *(&v119 + 1) = v100;

  v51 = Text.init<A>(_:)();
  v98 = v52;
  v99 = v53;
  v55 = v54;
  v56 = static Font.subheadline.getter();
  v57 = static Font.footnote.getter();
  if (v94)
  {
    v58 = v101;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v59 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v60 = v106;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000180EC(&v133, &qword_100CB91B8);
    (*(v107 + 8))(v60, v108);
    v58 = v119;
  }

  v61 = v111;
  v62 = v96;
  v93(v111, v95, v96);
  sub_10001B350(v61, 0, 1, v62);
  v63 = v105;
  sub_100035AD0(v61, v105, &qword_100CACFF0);

  sub_1001C987C(v56, v57, v58 & 1, v63);
  v64 = v98;
  v65 = Text.font(_:)();
  v100 = v66;
  v101 = v65;
  LODWORD(v96) = v67;
  v105 = v68;

  sub_10010CD64(v51, v64, v55 & 1);

  sub_1000180EC(v61, &qword_100CACFF0);
  KeyPath = swift_getKeyPath();
  v70 = v109[6];
  v131 = v70;
  v132 = *(v109 + 56);
  if (v132 == 1)
  {
    v127 = v70 & 1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v71 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v72 = v106;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000180EC(&v131, &qword_100CD28B0);
    (*(v107 + 8))(v72, v108);
    LOBYTE(v70) = v127;
  }

  v73 = v96 & 1;
  v130 = v96 & 1;
  v128 = 0;
  v74 = v97 & 1;
  v115 = v97 & 1;
  v114 = 0;
  v76 = v100;
  v75 = v101;
  *&v116 = v101;
  *(&v116 + 1) = v100;
  LOBYTE(v117) = v96 & 1;
  *(&v117 + 1) = *v129;
  DWORD1(v117) = *&v129[3];
  v77 = v105;
  *(&v117 + 1) = v105;
  *v118 = KeyPath;
  *&v118[8] = 4;
  *&v118[16] = 0;
  v118[18] = (v70 & 1) == 0;
  *(&v113[3] + 6) = *&v118[15];
  *(&v113[2] + 7) = *v118;
  *(&v113[1] + 7) = v117;
  *(v113 + 7) = v116;
  v78 = v97 & 1;
  v79 = v110;
  v81 = v102;
  v80 = v103;
  *v110 = v103;
  v79[1] = v81;
  *(v79 + 16) = v78;
  v79[3] = v104;
  v79[4] = 0x3FF0000000000000;
  v79[5] = 0;
  *(v79 + 48) = 0;
  v82 = v113[0];
  v83 = v113[1];
  v84 = v113[2];
  *(v79 + 91) = *(&v113[2] + 10);
  *(v79 + 81) = v84;
  *(v79 + 65) = v83;
  *(v79 + 49) = v82;
  *&v119 = v75;
  *(&v119 + 1) = v76;
  v120 = v73;
  *&v121[3] = *&v129[3];
  *v121 = *v129;
  v122 = v77;
  v123 = KeyPath;
  v124 = 4;
  v125 = 0;
  v126 = (v70 & 1) == 0;
  sub_10010CD54(v80, v81, v74);

  sub_100035AD0(&v116, &v112, &qword_100CACF40);
  sub_1000180EC(&v119, &qword_100CACF40);
  sub_10010CD64(v80, v81, v74);
}

unint64_t sub_1006DBA20()
{
  result = qword_100CD2898;
  if (!qword_100CD2898)
  {
    sub_10022E824(&qword_100CD2890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2898);
  }

  return result;
}

unint64_t sub_1006DBA84()
{
  result = qword_100CD28B8;
  if (!qword_100CD28B8)
  {
    sub_10022E824(&qword_100CD28A0);
    sub_1006DBB40();
    sub_100322C80(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD28B8);
  }

  return result;
}

unint64_t sub_1006DBB40()
{
  result = qword_100CD28C0;
  if (!qword_100CD28C0)
  {
    sub_10022E824(&qword_100CD28C8);
    sub_10022E824(&qword_100CD2890);
    sub_1006DBA20();
    swift_getOpaqueTypeConformance2();
    sub_100322C80(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD28C0);
  }

  return result;
}

uint64_t sub_1006DBC3C()
{
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  return _swift_task_switch(sub_1006DBD30, 0, 0);
}

uint64_t sub_1006DBD30()
{
  v1 = v0[15];
  v2 = v0[16];
  TimeZone.init(secondsFromGMT:)();
  v3 = sub_100024D10(v1, 1, v2);
  if (v3 == 1)
  {
    __break(1u);
    return dispatch thunk of ActiveUserServiceType.updateLastLaunchDate(to:)(v3, v4, v5);
  }

  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[16];
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  (*(v7 + 32))(v6, v0[15], v8);
  Date.startOfDay(timeZone:)();
  (*(v7 + 8))(v6, v8);
  (*(v10 + 104))(v9, enum case for ActiveUserStatus.LaunchedApp.weather(_:), v11);
  v12 = ActiveUserStatus.isFirstLaunchOfDay(of:now:)();
  (*(v10 + 8))(v9, v11);
  if (v12)
  {
    v13 = sub_1006DC644();
    v63 = v14;
    v64 = v13;
    static DeviceInfo.current.getter();
    type metadata accessor for Capabilities();
    if (static Capabilities.isInternalBuild()())
    {
      v56 = 1;
    }

    else
    {
      v56 = [objc_opt_self() isSeedBuild];
    }

    static Logger.activeUser.getter();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Submitting first launch event", v30, 2u);
      sub_100003884();
    }

    v54 = v0[38];
    v62 = v0[37];
    v49 = v0[35];
    v31 = v0[30];
    v32 = v0[27];
    v33 = v0[25];
    v52 = v0[26];
    v53 = v0[33];
    v57 = v0[24];
    v45 = v0[28];
    v46 = v0[23];
    v60 = v0[22];
    v51 = v0[21];
    v34 = v0[20];
    v59 = v0[19];
    v47 = v0[10];
    v48 = v0[11];
    v50 = v0[9];
    v58 = v0[8];
    v35 = v0[6];
    v61 = v0[7];
    v36 = v0[4];
    v37 = v0[5];
    v55 = v0[3];

    v54(v53, v31);
    (*(v37 + 104))(v35, enum case for Session.Kind.userEvents(_:), v36);
    Date.init()();
    SessionManager.start(for:identifier:startDate:)();
    v0[40] = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v62(v32, v57);
    (*(v37 + 8))(v35, v36);
    SessionManager.tracker.getter();
    v49(v32, v45, v57);
    (*(v34 + 16))(v60, v46, v59);
    (*(v58 + 16))(v47, v48, v61);
    v38 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v39 = (v52 + *(v34 + 80) + v38) & ~*(v34 + 80);
    v40 = (v51 + *(v58 + 80) + v39) & ~*(v58 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = v64;
    *(v41 + 24) = v63;
    (*(v33 + 32))(v41 + v38, v32, v57);
    (*(v34 + 32))(v41 + v39, v60, v59);
    (*(v58 + 32))(v41 + v40, v47, v61);
    *(v41 + v40 + v50) = v56;
    Tracker.transaction(block:)();

    Date.init()();
    SessionManager.end(endDate:completion:)();
    v62(v32, v57);
    v42 = v55[5];
    v43 = v55[6];
    sub_1000161C0(v55 + 2, v42);
    v44 = swift_task_alloc();
    v0[41] = v44;
    *v44 = v0;
    v44[1] = sub_1006DC400;
    v3 = v0[28];
    v4 = v42;
    v5 = v43;

    return dispatch thunk of ActiveUserServiceType.updateLastLaunchDate(to:)(v3, v4, v5);
  }

  static Logger.activeUser.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[38];
  v20 = v0[31];
  v19 = v0[32];
  v21 = v0[30];
  if (v17)
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Already launched today - returning", v22, 2u);
    sub_100003884();
  }

  v18(v19, v21);
  sub_1000108D0();
  v24 = v0[19];
  v23 = v0[20];
  v25(v20);
  (*(v23 + 8))(v15, v24);

  v26 = v0[1];

  return v26();
}

uint64_t sub_1006DC400()
{
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  return _swift_task_switch(sub_1006DC4F4, 0, 0);
}

uint64_t sub_1006DC4F4()
{
  (*(v1[8] + 8))(v1[11], v1[7]);
  sub_1000108D0();
  v4 = v1[19];
  v3 = v1[20];
  v5(v2);
  (*(v3 + 8))(v0, v4);

  v6 = v1[1];

  return v6();
}

uint64_t sub_1006DC644()
{
  v0 = type metadata accessor for SHA256();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = type metadata accessor for SHA256Digest();
  __chkstk_darwin(v7 - 8);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = type metadata accessor for UUID();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  ActiveUserStatus.secretId.getter();
  sub_1000667F8(&qword_100CADB98, &type metadata accessor for UUID);
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  (*(v13 + 8))(v17, v11);
  v19._countAndFlagsBits = 46;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  Date.timeIntervalSince1970.getter();
  Double.write<A>(to:)();
  sub_1006DD21C(0, 0xE000000000000000);
  sub_1000667F8(&qword_100CD2988, &type metadata accessor for SHA256);
  dispatch thunk of HashFunction.init()();
  v20 = sub_100014AD8();
  sub_1006DE088(v20, v21);
  v22 = sub_100014AD8();
  sub_1006DDFEC(v22, v23);
  v24 = sub_100014AD8();
  sub_10030F778(v24, v25);
  dispatch thunk of HashFunction.finalize()();
  (*(v2 + 8))(v6, v0);
  v26 = sub_100014AD8();
  sub_10030F778(v26, v27);
  v28 = sub_1006DD724(v10);
  v30 = v29;
  countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
  sub_10030F778(v28, v30);
  return countAndFlagsBits;
}

uint64_t sub_1006DC92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v59 = a7;
  v60 = a6;
  v61 = a2;
  v65 = a5;
  v62 = a3;
  v67 = a1;
  v7 = sub_10022C350(&qword_100CB5498);
  __chkstk_darwin(v7 - 8);
  v56 = &v48 - v8;
  v54 = type metadata accessor for Locale.Language();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v49 = &v48 - v11;
  v66 = type metadata accessor for Locale();
  v51 = *(v66 - 8);
  __chkstk_darwin(v66);
  v50 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v16 = sub_10022C350(&qword_100CA3DD8);
  __chkstk_darwin(v16 - 8);
  v18 = &v48 - v17;
  v64 = type metadata accessor for Date();
  v19 = *(v64 - 8);
  __chkstk_darwin(v64);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for TimeZone();
  v22 = *(v63 - 8);
  __chkstk_darwin(v63);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for ActiveUserStatus.LaunchedApp();
  v26 = *(active - 8);
  __chkstk_darwin(active);
  v28 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  LaunchEventData = type metadata accessor for FirstLaunchEventData();
  v57 = *(LaunchEventData - 8);
  v58 = LaunchEventData;
  __chkstk_darwin(LaunchEventData);
  v55 = &v48 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = Date.timeIntervalSince1970.getter();
  v33 = v32 * 1000.0;
  if (COERCE__INT64(fabs(v32 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v33 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v33 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v26 + 104))(v28, enum case for ActiveUserStatus.LaunchedApp.weather(_:), active);
  LODWORD(v65) = ActiveUserStatus.isFirstLaunchOfMonth(of:now:)();
  (*(v26 + 8))(v28, active);
  v34 = AccessTracker.isDiagnosticSubmissionAllowed.getter();
  static TimeZone.current.getter();
  Date.init()();
  v35 = TimeZone.secondsFromGMT(for:)();
  (*(v19 + 8))(v21, v64);
  result = (*(v22 + 8))(v24, v63);
  if (v35 < 0xFFFFFFFF80000000)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v35 > 0x7FFFFFFF)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v63 = v35;
  LODWORD(v64) = v34;
  static Locale.current.getter();
  v36 = v49;
  Locale.language.getter();
  v37 = *(v51 + 8);
  v37(v15, v66);
  Locale.Language.languageCode.getter();
  v38 = *(v53 + 8);
  v39 = v54;
  v38(v36, v54);
  v40 = type metadata accessor for Locale.LanguageCode();
  if (sub_100024D10(v18, 1, v40) == 1)
  {
    sub_10003FDF4(v18, &qword_100CA3DD8);
    v53 = 0xE100000000000000;
    v51 = 45;
  }

  else
  {
    v51 = Locale.LanguageCode.identifier.getter();
    v53 = v41;
    (*(*(v40 - 8) + 8))(v18, v40);
  }

  v42 = v56;
  v43 = v50;
  static Locale.current.getter();
  v44 = v52;
  Locale.language.getter();
  v37(v43, v66);
  Locale.Language.region.getter();
  v38(v44, v39);
  v45 = type metadata accessor for Locale.Region();
  if (sub_100024D10(v42, 1, v45) == 1)
  {
    sub_10003FDF4(v42, &qword_100CB5498);
  }

  else
  {
    Locale.Region.identifier.getter();
    (*(*(v45 - 8) + 8))(v42, v45);
  }

  DeviceInfo.productVersion.getter();
  if (v59)
  {
    DeviceInfo.buildVersion.getter();
  }

  v46 = v55;
  FirstLaunchEventData.init(eventID:date:isFirstLaunchOfMonth:isDnu:utcOffset:languageCode:countryCode:osVersion:osBuild:)();
  sub_1000667F8(&qword_100CD2978, &type metadata accessor for FirstLaunchEventData);
  v47 = v58;
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for FirstLaunchEvent();
  sub_1000667F8(&qword_100CD2980, &type metadata accessor for FirstLaunchEvent);
  memset(v68, 0, 32);
  AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();
  sub_10003FDF4(v68, &qword_100CE2F40);
  return (*(v57 + 8))(v46, v47);
}

uint64_t sub_1006DD21C(uint64_t a1, unint64_t a2)
{
  *&v35 = a1;
  *(&v35 + 1) = a2;

  sub_10022C350(&qword_100CD2998);
  if (swift_dynamicCast())
  {
    sub_100013188(v33, &v36);
    sub_1000161C0(&v36, v37);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v33[0] = v35;
    sub_100006F14(&v36);
    goto LABEL_56;
  }

  v34 = 0;
  memset(v33, 0, sizeof(v33));
  sub_10003FDF4(v33, &qword_100CD29A0);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_60;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v33[0] = a1;
    *(&v33[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v33;
    v5 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  sub_1006DDA94(v4, v5, &v36);
  v6 = *(&v36 + 1);
  v7 = v36;
  if (*(&v36 + 1) >> 60 != 15)
  {
    v33[0] = v36;
    goto LABEL_56;
  }

LABEL_9:
  *&v33[0] = Data._Representation.init(count:)();
  *(&v33[0] + 1) = v8;
  __chkstk_darwin(*&v33[0]);
  v9 = sub_1006DDBB0(sub_1006DE42C);
  v11 = *(&v33[0] + 1) >> 62;
  v12 = v9;
  v14 = v13;
  v16 = v15;
  v17 = BYTE14(v33[0]);
  switch(*(&v33[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v18) = DWORD1(v33[0]) - LODWORD(v33[0]);
      if (__OFSUB__(DWORD1(v33[0]), v33[0]))
      {
        goto LABEL_63;
      }

      v18 = v18;
LABEL_19:
      if (v10 == v18)
      {
        goto LABEL_20;
      }

      if (v11 == 2)
      {
        v17 = *(*&v33[0] + 24);
      }

      else if (v11 == 1)
      {
        v17 = *&v33[0] >> 32;
      }

      goto LABEL_53;
    case 2:
      v20 = *(*&v33[0] + 16);
      v19 = *(*&v33[0] + 24);
      v21 = __OFSUB__(v19, v20);
      v18 = v19 - v20;
      if (!v21)
      {
        goto LABEL_19;
      }

      __break(1u);
LABEL_15:
      if (v10)
      {
        v17 = 0;
LABEL_53:
        if (v17 < v10)
        {
          __break(1u);
LABEL_63:
          __break(1u);
        }

        Data._Representation.replaceSubrange(_:with:count:)();
        goto LABEL_55;
      }

LABEL_20:
      v32 = v7;
      LOBYTE(v22) = 0;
      if ((v14 & 0x2000000000000000) != 0)
      {
        v23 = HIBYTE(v14) & 0xF;
      }

      else
      {
        v23 = v9 & 0xFFFFFFFFFFFFLL;
      }

      v24 = (v9 >> 59) & 1;
      if ((v14 & 0x1000000000000000) == 0)
      {
        LOBYTE(v24) = 1;
      }

      v25 = 4 << v24;
      *(&v35 + 7) = 0;
      *&v35 = 0;
      break;
    case 3:
      goto LABEL_15;
    default:
      v18 = BYTE14(v33[0]);
      goto LABEL_19;
  }

  while (4 * v23 != v16 >> 14)
  {
    v26 = v16;
    if ((v16 & 0xC) == v25)
    {
      v26 = sub_100230578(v16, v12, v14);
    }

    v27 = v26 >> 16;
    if (v26 >> 16 >= v23)
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_9;
    }

    if ((v14 & 0x1000000000000000) != 0)
    {
      v29 = String.UTF8View._foreignSubscript(position:)();
    }

    else if ((v14 & 0x2000000000000000) != 0)
    {
      *&v36 = v12;
      *(&v36 + 1) = v14 & 0xFFFFFFFFFFFFFFLL;
      v29 = *(&v36 + v27);
    }

    else
    {
      v28 = (v14 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v12 & 0x1000000000000000) == 0)
      {
        v28 = _StringObject.sharedUTF8.getter();
      }

      v29 = *(v28 + v27);
    }

    if ((v16 & 0xC) == v25)
    {
      v16 = sub_100230578(v16, v12, v14);
      if ((v14 & 0x1000000000000000) == 0)
      {
LABEL_38:
        v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_43;
      }
    }

    else if ((v14 & 0x1000000000000000) == 0)
    {
      goto LABEL_38;
    }

    if (v23 <= v16 >> 16)
    {
      goto LABEL_59;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_43:
    *(&v35 + v22) = v29;
    v22 = v22 + 1;
    if ((v22 >> 8))
    {
      goto LABEL_58;
    }

    if (v22 == 14)
    {
      *&v36 = v35;
      *(&v36 + 6) = *(&v35 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v22) = 0;
    }
  }

  if (!v22)
  {

    sub_1003B3404(v32, v6);
    goto LABEL_56;
  }

  *&v36 = v35;
  *(&v36 + 6) = *(&v35 + 6);
  Data._Representation.append(contentsOf:)();
  sub_1003B3404(v32, v6);
LABEL_55:

LABEL_56:
  v30 = v33[0];
  sub_1006DE088(*&v33[0], *(&v33[0] + 1));

  sub_10030F778(v30, *(&v30 + 1));
  return v30;
}

uint64_t sub_1006DD724(uint64_t a1)
{
  v2 = type metadata accessor for SHA256Digest();
  v8 = v2;
  v9 = sub_1000667F8(&qword_100CD2990, &type metadata accessor for SHA256Digest);
  v3 = sub_100042FB0(v7);
  v4 = *(v2 - 8);
  (*(v4 + 16))(v3, a1, v2);
  sub_1000161C0(v7, v8);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  sub_100006F14(v7);
  (*(v4 + 8))(a1, v2);
  return v6;
}

uint64_t sub_1006DD864()
{
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1006DD950(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  sub_100003AE8(v3);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  active = type metadata accessor for ActiveUserStatus();
  sub_100003AE8(active);
  v10 = (v5 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = *(v11 + 64);
  v13 = type metadata accessor for DeviceInfo();
  sub_100003AE8(v13);
  v16 = *(v1 + 16);
  v17 = *(v1 + 24);
  v18 = v1 + ((v10 + v12 + *(v14 + 80)) & ~*(v14 + 80));
  v19 = *(v18 + *(v15 + 64));

  return sub_1006DC92C(a1, v16, v17, v1 + v5, v1 + v10, v18, v19);
}

uint64_t sub_1006DDA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = Data.InlineData.init(_:)();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1006DDB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_1006DE128(sub_1006DE488, v5, a1, a2);
}

uint64_t sub_1006DDBB0(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_10030F778(v6, v5);
      *v4 = xmmword_100A782B0;
      sub_10030F778(0, 0xC000000000000000);
      v12 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v12 < v6)
      {
        goto LABEL_23;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
        goto LABEL_24;
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v13 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v13;
LABEL_16:
      if (v12 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v3 = sub_1006DE18C(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_10030F778(v6, v5);
      v16 = v6;
      v17 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_100A782B0;
      sub_10030F778(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v6 = v16;
      v9 = sub_1006DE18C(*(v16 + 16), *(v16 + 24), a1);
      if (v2)
      {
        v10 = v17 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v10;
      }

      else
      {
        v3 = v9;
        v10 = v17 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v10;
      }

      return v3;
    case 3uLL:
      memset(v18, 0, 15);
      a1(&v16, v18, v18);
      if (!v2)
      {
        return v16;
      }

      return v3;
    default:
      v3 = v6 >> 8;
      sub_10030F778(v6, v5);
      v18[0] = v6;
      LOWORD(v18[1]) = v5;
      BYTE2(v18[1]) = BYTE2(v5);
      BYTE3(v18[1]) = BYTE3(v5);
      BYTE4(v18[1]) = BYTE4(v5);
      BYTE5(v18[1]) = BYTE5(v5);
      BYTE6(v18[1]) = BYTE6(v5);
      a1(&v16, v18, v18 + BYTE6(v5));
      if (!v2)
      {
        v3 = v16;
      }

      v8 = LODWORD(v18[1]) | ((WORD2(v18[1]) | (BYTE6(v18[1]) << 16)) << 32);
      *v4 = v18[0];
      v4[1] = v8;
      return v3;
  }
}

uint64_t sub_1006DDF74@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = Data.InlineData.init(_:)();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = Data.LargeSlice.init(_:)();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = Data.InlineSlice.init(_:)();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1006DDFEC(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = result >> 32;
      if (result >> 32 < result)
      {
        goto LABEL_9;
      }

      result = result;
      v4 = v5;
      goto LABEL_7;
    case 2uLL:
      v3 = *(result + 24);
      result = *(result + 16);
      v4 = v3;
LABEL_7:
      result = sub_1006DE314(result, v4);
      if (v2)
      {
        goto LABEL_8;
      }

      return result;
    default:
      result = sub_1006DE240();
      if (!v2)
      {
        return result;
      }

LABEL_8:

      __break(1u);
LABEL_9:
      __break(1u);
      return result;
  }
}

uint64_t sub_1006DE088(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1006DE0E0(uint64_t result)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1006DE128(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_1006DE18C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1006DE240()
{
  type metadata accessor for SHA256();
  sub_1000667F8(&qword_100CD2988, &type metadata accessor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_1006DE314(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_1000667F8(&qword_100CD2988, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1006DE3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_1006DDB5C(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_1006DE448@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1006DE0E0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t type metadata accessor for DetailComponentContainerView()
{
  result = qword_100CD2A00;
  if (!qword_100CD2A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006DE51C()
{
  sub_1000077F0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DetailComponentContainerViewModel();
    if (v1 <= 0x3F)
    {
      sub_1003E7F34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1006DE5E0()
{
  sub_10000FE4C();
  v0 = EnvironmentValues.accessibilityVoiceOverEnabled.getter();
  return sub_100005F94(v0);
}

uint64_t sub_1006DE608()
{
  sub_10000FE4C();
  v0 = EnvironmentValues.accessibilityEnabled.getter();
  return sub_100005F94(v0);
}

double sub_1006DE654@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = sub_10022C350(&unk_100CB2CF0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  v9 = type metadata accessor for DetailComponentContainerView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v13 = (v1 + *(v12 + 28));
  if (v13[1])
  {
    v14 = *v13;
  }

  else
  {
    type metadata accessor for DetailComponentContainerViewModel();
    v14 = sub_1006EC1DC();
    v15 = v16;
  }

  v41 = v14;
  v42 = v15;
  sub_10002D5A4();
  v17 = Text.init<A>(_:)();
  v36 = v18;
  v37 = v17;
  v34 = v19 & 1;
  v35 = v20;
  sub_1006DFE08(v2, &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetailComponentContainerView);
  v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v33 = swift_allocObject();
  sub_1006E0270(&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v21, type metadata accessor for DetailComponentContainerView);
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  v22 = sub_10022C350(&qword_100CD2A48);
  v23 = (a1 + v22[12]);
  v24 = (a1 + v22[13]);
  v25 = a1 + v22[14];
  v40 = 0;
  State.init(wrappedValue:)();
  v26 = v42;
  *v25 = v41;
  *(v25 + 8) = v26;
  v27 = type metadata accessor for Date();
  sub_10001B350(v8, 1, 1, v27);
  sub_10018CF14(v8, v38, &unk_100CB2CF0);
  State.init(wrappedValue:)();
  sub_10003FDA0(v8, &unk_100CB2CF0);
  sub_1006DEB0C(v2);
  v28 = (a1 + v22[11]);
  v29 = v33;
  *v28 = sub_1006DFCAC;
  v28[1] = v29;
  *(a1 + 9) = 0;
  v30 = v36;
  *v23 = v37;
  v23[1] = v30;
  v31 = v35;
  v23[2] = v34;
  v23[3] = v31;
  result = 0.0;
  *v24 = 0u;
  v24[1] = 0u;
  return result;
}

uint64_t sub_1006DE968(uint64_t a1, uint64_t a2)
{
  v3 = sub_10022C350(&qword_100CB8990);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for DetailComponentAction();
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DetailComponentContainerView();
  v10 = a2 + *(v9 + 20);
  v11 = type metadata accessor for DetailComponentContainerViewModel();
  sub_10018CF14(v10 + *(v11 + 24), v5, &qword_100CB8990);
  if (sub_100024D10(v5, 1, v6) == 1)
  {
    return sub_10003FDA0(v5, &qword_100CB8990);
  }

  sub_1006E0270(v5, v8, type metadata accessor for DetailComponentAction);
  v13 = (a2 + *(v9 + 24));
  v14 = v13[3];
  v15 = v13[4];
  sub_1000161C0(v13, v14);
  (*(v15 + 8))(v8, v14, v15);
  return sub_1006E02C8(v8);
}

uint64_t sub_1006DEB0C(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CD2A50);
  __chkstk_darwin(v2);
  v4 = &v7[-v3];
  *v4 = static HorizontalAlignment.leading.getter();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v5 = sub_10022C350(&qword_100CD2A58);
  sub_1006DEC84(a1, &v4[*(v5 + 44)]);
  Solarium.init()();
  v8 = a1;
  sub_10022C350(&qword_100CD2A60);
  sub_10023FBF4(&qword_100CD2A68, &qword_100CD2A50);
  sub_1006DFD24();
  View.staticIf<A, B>(_:then:)();
  return sub_10003FDA0(v4, &qword_100CD2A50);
}

uint64_t sub_1006DEC84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CB8990);
  __chkstk_darwin(v4 - 8);
  v6 = &v136 - v5;
  v7 = type metadata accessor for DetailComponentViewModel();
  __chkstk_darwin(v7 - 8);
  v148 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NewsArticleComponentView();
  __chkstk_darwin(v9);
  v11 = (&v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v150 = sub_10022C350(&qword_100CD2A88);
  __chkstk_darwin(v150);
  v151 = &v136 - v12;
  v153 = sub_10022C350(&qword_100CD2A90);
  __chkstk_darwin(v153);
  v152 = &v136 - v13;
  v14 = sub_10022C350(&qword_100CD2A98);
  __chkstk_darwin(v14 - 8);
  v155 = &v136 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v154 = &v136 - v17;
  v18 = type metadata accessor for DetailComponentHeaderView();
  __chkstk_darwin(v18);
  v20 = &v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_10022C350(&qword_100CD2AA0);
  __chkstk_darwin(v137);
  v139 = &v136 - v21;
  v138 = sub_10022C350(&qword_100CD2AA8);
  __chkstk_darwin(v138);
  v144 = &v136 - v22;
  v143 = sub_10022C350(&qword_100CD2AB0);
  __chkstk_darwin(v143);
  v142 = &v136 - v23;
  v145 = sub_10022C350(&qword_100CD2AB8);
  __chkstk_darwin(v145);
  v25 = &v136 - v24;
  v26 = sub_10022C350(&qword_100CD2AC0);
  __chkstk_darwin(v26 - 8);
  v146 = &v136 - v27;
  v147 = sub_10022C350(&qword_100CD2AC8);
  __chkstk_darwin(v147);
  v141 = &v136 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v140 = &v136 - v30;
  v31 = sub_10022C350(&qword_100CD2AD0);
  __chkstk_darwin(v31 - 8);
  v149 = &v136 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v160 = &v136 - v34;
  v35 = type metadata accessor for DetailComponentContainerView();
  v36 = a1;
  v37 = (a1 + *(v35 + 20));
  v38 = v37[1];
  v158 = v35;
  v159 = v37;
  v156 = v6;
  v157 = a2;
  if (v38)
  {
    v39 = v37;
    v40 = v37[3];
    v41 = v39[2];
    v42 = *v39;
    *(v20 + 4) = swift_getKeyPath();
    v20[40] = 0;
    *(v20 + 6) = swift_getKeyPath();
    v20[56] = 0;
    *(v20 + 8) = swift_getKeyPath();
    v20[72] = 0;
    v43 = *(v18 + 32);
    *&v20[v43] = swift_getKeyPath();
    sub_10022C350(&qword_100CA71B0);
    swift_storeEnumTagMultiPayload();
    *v20 = v42;
    *(v20 + 1) = v38;
    *(v20 + 2) = v41;
    *(v20 + 3) = v40;
    sub_10022C350(&qword_100CA4060);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2D320;

    LOBYTE(v41) = static Edge.Set.leading.getter();
    *(inited + 32) = v41;
    v45 = static Edge.Set.trailing.getter();
    *(inited + 33) = v45;
    v46 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    v47 = &unk_100A2D000;
    if (Edge.Set.init(rawValue:)() != v41)
    {
      v46 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v45)
    {
      v46 = Edge.Set.init(rawValue:)();
    }

    v48 = v36;
    EdgeInsets.init(_all:)();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v57 = v139;
    sub_1006E0270(v20, v139, type metadata accessor for DetailComponentHeaderView);
    v58 = v57 + *(v137 + 36);
    *v58 = v46;
    *(v58 + 8) = v50;
    *(v58 + 16) = v52;
    *(v58 + 24) = v54;
    *(v58 + 32) = v56;
    *(v58 + 40) = 0;
    v59 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v68 = v57;
    v69 = v144;
    sub_10027FB54(v68, v144, &qword_100CD2AA0);
    v70 = v69 + *(v138 + 36);
    *v70 = v59;
    *(v70 + 8) = v61;
    *(v70 + 16) = v63;
    *(v70 + 24) = v65;
    *(v70 + 32) = v67;
    *(v70 + 40) = 0;
    v71 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v80 = v69;
    v81 = v142;
    sub_10027FB54(v80, v142, &qword_100CD2AA8);
    v82 = v81 + *(v143 + 36);
    *v82 = v71;
    *(v82 + 8) = v73;
    *(v82 + 16) = v75;
    *(v82 + 24) = v77;
    *(v82 + 32) = v79;
    *(v82 + 40) = 0;
    sub_10027FB54(v81, v25, &qword_100CD2AB0);
    v25[*(v145 + 36)] = 1;
    sub_1006DFF44();
    v83 = v146;
    View.accessibilityRespondsToUserInteraction(_:)();
    sub_10003FDA0(v25, &qword_100CD2AB8);
    v84 = static Alignment.center.getter();
    v86 = v85;
    v87 = v147;
    v88 = v141;
    v89 = &v141[*(v147 + 36)];
    sub_1006DFA38(v48);
    v90 = &v89[*(sub_10022C350(&qword_100CD2B20) + 36)];
    *v90 = v84;
    v90[1] = v86;
    sub_10027FB54(v83, v88, &qword_100CD2AC0);
    v91 = v140;
    sub_10020A5E8(v88, v140);
    v92 = v91;
    v93 = v160;
    sub_10020A5E8(v92, v160);
    v94 = 0;
    v37 = v159;
  }

  else
  {
    v47 = &unk_100A2D000;
    v94 = 1;
    v93 = v160;
    v87 = v147;
  }

  sub_10001B350(v93, v94, 1, v87);
  v95 = type metadata accessor for DetailComponentContainerViewModel();
  v96 = v148;
  sub_1006DFE08(v37 + *(v95 + 20), v148, type metadata accessor for DetailComponentViewModel);
  sub_1006E0270(v96, v11 + v9[8], type metadata accessor for NewsArticleComponentViewModel);
  *v11 = swift_getKeyPath();
  sub_10022C350(&qword_100CA71B0);
  swift_storeEnumTagMultiPayload();
  v97 = v11 + v9[5];
  *v97 = swift_getKeyPath();
  v97[8] = 0;
  v98 = v11 + v9[6];
  *v98 = swift_getKeyPath();
  v98[8] = 0;
  v99 = v9[7];
  *(v11 + v99) = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618);
  swift_storeEnumTagMultiPayload();
  *(v11 + v9[9]) = 0;
  *(v11 + v9[10]) = 1;
  sub_10022C350(&qword_100CA4060);
  v100 = swift_initStackObject();
  *(v100 + 16) = v47[50];
  v101 = static Edge.Set.leading.getter();
  *(v100 + 32) = v101;
  v102 = static Edge.Set.trailing.getter();
  *(v100 + 33) = v102;
  v103 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v101)
  {
    v103 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  v104 = Edge.Set.init(rawValue:)();
  v106 = v156;
  v105 = v157;
  if (v104 != v102)
  {
    v103 = Edge.Set.init(rawValue:)();
  }

  v107 = v151;
  EdgeInsets.init(_all:)();
  v109 = v108;
  v111 = v110;
  v113 = v112;
  v115 = v114;
  sub_1006E0270(v11, v107, type metadata accessor for NewsArticleComponentView);
  v116 = v107 + *(v150 + 36);
  *v116 = v103;
  *(v116 + 8) = v109;
  *(v116 + 16) = v111;
  *(v116 + 24) = v113;
  *(v116 + 32) = v115;
  *(v116 + 40) = 0;
  v117 = static Edge.Set.bottom.getter();
  v118 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v117)
  {
    v118 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v120 = v119;
  v122 = v121;
  v124 = v123;
  v126 = v125;
  v127 = v152;
  sub_10027FB54(v107, v152, &qword_100CD2A88);
  v128 = v127 + *(v153 + 36);
  *v128 = v118;
  *(v128 + 8) = v120;
  *(v128 + 16) = v122;
  *(v128 + 24) = v124;
  *(v128 + 32) = v126;
  *(v128 + 40) = 0;
  sub_10018CF14(v159 + *(v95 + 24), v106, &qword_100CB8990);
  v129 = type metadata accessor for DetailComponentAction();
  sub_100024D10(v106, 1, v129);
  sub_10003FDA0(v106, &qword_100CB8990);
  sub_1006E002C(&qword_100CD2AD8, &qword_100CD2A90, &unk_100A78440, sub_1006DFE60);
  v130 = v154;
  View.accessibilityRespondsToUserInteraction(_:)();
  sub_10003FDA0(v127, &qword_100CD2A90);
  v131 = v160;
  v132 = v149;
  sub_10018CF14(v160, v149, &qword_100CD2AD0);
  v133 = v155;
  sub_10018CF14(v130, v155, &qword_100CD2A98);
  sub_10018CF14(v132, v105, &qword_100CD2AD0);
  v134 = sub_10022C350(&qword_100CD2AF0);
  sub_10018CF14(v133, v105 + *(v134 + 48), &qword_100CD2A98);
  sub_10003FDA0(v130, &qword_100CD2A98);
  sub_10003FDA0(v131, &qword_100CD2AD0);
  sub_10003FDA0(v133, &qword_100CD2A98);
  return sub_10003FDA0(v132, &qword_100CD2AD0);
}

uint64_t sub_1006DFA38(uint64_t a1)
{
  v2 = sub_10022C350(&unk_100CE0EB0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7[-v4];
  Solarium.init()();
  static ViewInputPredicate.! prefix(_:)();
  v8 = a1;
  sub_10022C350(&qword_100CD2B28);
  sub_1005024C4();
  v9 = &type metadata for Solarium;
  v10 = &protocol witness table for Solarium;
  swift_getOpaqueTypeConformance2();
  sub_1006E01B8();
  View.staticIf<A, B>(_:then:)();
  return (*(v3 + 8))(v5, v2);
}

double sub_1006DFBCC@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = *(a1 + *(type metadata accessor for DetailComponentContainerView() + 28));
  *a2 = result;
  *(a2 + 8) = 3;
  *(a2 + 16) = 256;
  return result;
}

uint64_t sub_1006DFC14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + *(type metadata accessor for DetailComponentContainerView() + 28));
  sub_10018CF14(a1, a3, &qword_100CD2A50);
  result = sub_10022C350(&qword_100CD2A60);
  v7 = a3 + *(result + 36);
  *v7 = v5;
  *(v7 + 8) = -1;
  *(v7 + 16) = 256;
  return result;
}

uint64_t sub_1006DFCAC(uint64_t a1)
{
  v3 = *(type metadata accessor for DetailComponentContainerView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1006DE968(a1, v4);
}

unint64_t sub_1006DFD24()
{
  result = qword_100CD2A70;
  if (!qword_100CD2A70)
  {
    sub_10022E824(&qword_100CD2A60);
    sub_10023FBF4(&qword_100CD2A68, &qword_100CD2A50);
    sub_10023FBF4(&qword_100CD2A78, &unk_100CD2A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2A70);
  }

  return result;
}

uint64_t sub_1006DFE08(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100003A9C();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

unint64_t sub_1006DFE60()
{
  result = qword_100CD2AE0;
  if (!qword_100CD2AE0)
  {
    sub_10022E824(&qword_100CD2A88);
    sub_1006E0168(&qword_100CD2AE8, type metadata accessor for NewsArticleComponentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2AE0);
  }

  return result;
}

uint64_t sub_1006DFF1C()
{
  sub_10000FE4C();
  v0 = EnvironmentValues.accessibilitySwitchControlEnabled.getter();
  return sub_100005F94(v0);
}

unint64_t sub_1006DFF44()
{
  result = qword_100CD2AF8;
  if (!qword_100CD2AF8)
  {
    sub_10022E824(&qword_100CD2AB8);
    sub_1006E002C(&qword_100CD2B00, &unk_100CD2AB0, &unk_100A78460, sub_1006DFFFC);
    sub_100061564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2AF8);
  }

  return result;
}

uint64_t sub_1006E002C(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_100003A24(0, a2);
    sub_10022E824(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1006E00AC()
{
  result = qword_100CD2B10;
  if (!qword_100CD2B10)
  {
    sub_10022E824(&qword_100CD2AA0);
    sub_1006E0168(&qword_100CD2B18, type metadata accessor for DetailComponentHeaderView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2B10);
  }

  return result;
}

uint64_t sub_1006E0168(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1006E01B8()
{
  result = qword_100CD2B30;
  if (!qword_100CD2B30)
  {
    sub_10022E824(&qword_100CD2B28);
    sub_1005024C4();
    sub_10023FBF4(&qword_100CD2A78, &unk_100CD2A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2B30);
  }

  return result;
}

uint64_t sub_1006E0270(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100003A9C();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1006E02C8(uint64_t a1)
{
  v2 = type metadata accessor for DetailComponentAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1006E0334(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E776F6E6B6E75 && a2 == 0xEC00000065757373;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x63656E6E6F436F6ELL && a2 == 0xEC0000006E6F6974;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656E616C70726961 && a2 == 0xEC00000065646F4DLL;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6E6F43776F6C73 && a2 == 0xEE006E6F69746365;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEF6E776F6E6B6E55;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7461636F4C646C6FLL && a2 == 0xEB000000006E6F69;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6F4C79627261656ELL && a2 == 0xEE006E6F69746163)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1006E058C(char a1)
{
  result = 0x496E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x63656E6E6F436F6ELL;
      break;
    case 2:
      result = 0x656E616C70726961;
      break;
    case 3:
      result = 0x6E6E6F43776F6C73;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0x7461636F4C646C6FLL;
      break;
    case 6:
      result = 0x6F4C79627261656ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1006E06A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953720684 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 7364973 && a2 == 0xE300000000000000)
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

uint64_t sub_1006E07B0(char a1)
{
  if (!a1)
  {
    return 1953720684;
  }

  if (a1 == 1)
  {
    return 0x6E6F697461636F6CLL;
  }

  return 7364973;
}

uint64_t sub_1006E07F8(uint64_t a1)
{
  v2 = sub_1006E3664();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006E0834(uint64_t a1)
{
  v2 = sub_1006E3664();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006E0878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1006E0334(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1006E08A0(uint64_t a1)
{
  v2 = sub_1006E34C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006E08DC(uint64_t a1)
{
  v2 = sub_1006E34C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006E0918(uint64_t a1)
{
  v2 = sub_1006E35BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006E0954(uint64_t a1)
{
  v2 = sub_1006E35BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006E0990(uint64_t a1)
{
  v2 = sub_1006E3514();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006E09CC(uint64_t a1)
{
  v2 = sub_1006E3514();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006E0A08(uint64_t a1)
{
  v2 = sub_1006E36B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006E0A44(uint64_t a1)
{
  v2 = sub_1006E36B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006E0A80(uint64_t a1)
{
  v2 = sub_1006E3568();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006E0ABC(uint64_t a1)
{
  v2 = sub_1006E3568();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006E0AF8(uint64_t a1)
{
  v2 = sub_1006E3610();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006E0B34(uint64_t a1)
{
  v2 = sub_1006E3610();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006E0B70(uint64_t a1)
{
  v2 = sub_1006E370C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006E0BAC(uint64_t a1)
{
  v2 = sub_1006E370C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006E0BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1006E06A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1006E0C18(uint64_t a1)
{
  v2 = sub_1006E3760();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006E0C54(uint64_t a1)
{
  v2 = sub_1006E3760();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006E0C90(uint64_t a1)
{
  v2 = sub_1006E385C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006E0CCC(uint64_t a1)
{
  v2 = sub_1006E385C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006E0D08(uint64_t a1)
{
  v2 = sub_1006E3808();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006E0D44(uint64_t a1)
{
  v2 = sub_1006E3808();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006E0D80(uint64_t a1)
{
  v2 = sub_1006E37B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006E0DBC(uint64_t a1)
{
  v2 = sub_1006E37B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006E0DF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E656D6563616C70 && a2 == 0xE900000000000074;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x616470557473616CLL && a2 == 0xEB00000000646574)
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

uint64_t sub_1006E0F10(char a1)
{
  if (!a1)
  {
    return 0x6574617473;
  }

  if (a1 == 1)
  {
    return 0x6E656D6563616C70;
  }

  return 0x616470557473616CLL;
}

uint64_t sub_1006E0F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1006E0DF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1006E0FA0(uint64_t a1)
{
  v2 = sub_1006E38B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006E0FDC(uint64_t a1)
{
  v2 = sub_1006E38B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006E1018@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10077ED80();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1006E1060@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10077EF90();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

void sub_1006E10D8()
{
  sub_10000E8AC();
  v56 = v3;
  sub_10022C350(&qword_100CD2C68);
  sub_1000037C4();
  v54 = v5;
  v55 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  sub_1000039BC();
  v53 = v7;
  sub_10022C350(&qword_100CD2C70);
  sub_1000037C4();
  v51 = v9;
  v52 = v8;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_1000039BC();
  v50 = v11;
  sub_10022C350(&qword_100CD2C78);
  sub_1000037C4();
  v48 = v13;
  v49 = v12;
  sub_100003828();
  __chkstk_darwin(v14);
  sub_1000039BC();
  v47 = v15;
  sub_10022C350(&qword_100CD2C80);
  sub_1000037C4();
  v45 = v17;
  v46 = v16;
  sub_100003828();
  __chkstk_darwin(v18);
  sub_1000039BC();
  v44 = v19;
  sub_10022C350(&qword_100CD2C88);
  sub_1000037C4();
  v42 = v21;
  v43 = v20;
  sub_100003828();
  __chkstk_darwin(v22);
  sub_1000039BC();
  v41 = v23;
  sub_10022C350(&qword_100CD2C90);
  sub_1000037C4();
  v39 = v25;
  v40 = v24;
  sub_100003828();
  __chkstk_darwin(v26);
  sub_100003CF8();
  v27 = sub_10022C350(&qword_100CD2C98);
  sub_1000037C4();
  v38 = v28;
  sub_100003828();
  __chkstk_darwin(v29);
  sub_10002C698();
  v30 = sub_10022C350(&qword_100CD2CA0);
  sub_1000037C4();
  v32 = v31;
  sub_100003828();
  __chkstk_darwin(v33);
  sub_10000C8D8();
  v34 = sub_10000C924();
  sub_1000161C0(v34, v35);
  sub_1006E34C0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v56)
  {
    case 1:
      sub_1006E36B8();
      sub_100008608();
      v37 = v39;
      v36 = v40;
      goto LABEL_9;
    case 2:
      sub_1006E3664();
      v0 = v41;
      sub_100008608();
      v37 = v42;
      v36 = v43;
      goto LABEL_9;
    case 3:
      sub_1006E3610();
      v0 = v44;
      sub_100008608();
      v37 = v45;
      v36 = v46;
      goto LABEL_9;
    case 4:
      sub_1006E35BC();
      v0 = v47;
      sub_100008608();
      v37 = v48;
      v36 = v49;
      goto LABEL_9;
    case 5:
      sub_1006E3568();
      v0 = v50;
      sub_100008608();
      v37 = v51;
      v36 = v52;
      goto LABEL_9;
    case 6:
      sub_1006E3514();
      v0 = v53;
      sub_100008608();
      v37 = v54;
      v36 = v55;
LABEL_9:
      (*(v37 + 8))(v0, v36);
      break;
    default:
      sub_1006E370C();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v38 + 8))(v1, v27);
      break;
  }

  (*(v32 + 8))(v2, v30);
  sub_10000C8F4();
}

void sub_1006E1634()
{
  sub_10000E8AC();
  v89 = v0;
  v3 = v2;
  sub_10022C350(&qword_100CD2BE8);
  sub_1000037C4();
  v81 = v4;
  v82 = v5;
  sub_100003828();
  __chkstk_darwin(v6);
  sub_1000039BC();
  v87 = v7;
  sub_10022C350(&qword_100CD2BF0);
  sub_1000037C4();
  v79 = v8;
  v80 = v9;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_1000039BC();
  v86 = v11;
  sub_10022C350(&qword_100CD2BF8);
  sub_1000037C4();
  v77 = v12;
  v78 = v13;
  sub_100003828();
  __chkstk_darwin(v14);
  sub_1000039BC();
  v84 = v15;
  v73 = sub_10022C350(&qword_100CD2C00);
  sub_1000037C4();
  v76 = v16;
  sub_100003828();
  __chkstk_darwin(v17);
  sub_1000039BC();
  v83 = v18;
  sub_10022C350(&qword_100CD2C08);
  sub_1000037C4();
  v74 = v20;
  v75 = v19;
  sub_100003828();
  __chkstk_darwin(v21);
  sub_1000039BC();
  v85 = v22;
  sub_10022C350(&qword_100CD2C10);
  sub_1000037C4();
  v71 = v24;
  v72 = v23;
  sub_100003828();
  __chkstk_darwin(v25);
  v27 = &v65 - v26;
  v28 = sub_10022C350(&qword_100CD2C18);
  sub_1000037C4();
  v70 = v29;
  sub_100003828();
  __chkstk_darwin(v30);
  sub_10000C8D8();
  v31 = sub_10022C350(&qword_100CD2C20);
  sub_1000037C4();
  v33 = v32;
  sub_100003828();
  __chkstk_darwin(v34);
  v36 = &v65 - v35;
  v37 = v3[3];
  v88 = v3;
  sub_1000161C0(v3, v37);
  sub_1006E34C0();
  v38 = v89;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v38)
  {
    goto LABEL_9;
  }

  v68 = v1;
  v67 = v28;
  v69 = v27;
  v39 = v85;
  v40 = v86;
  v41 = v87;
  v89 = v33;
  v42 = KeyedDecodingContainer.allKeys.getter();
  sub_100618E80(v42, 0);
  if (v44 == v45 >> 1)
  {
LABEL_8:
    type metadata accessor for DecodingError();
    swift_allocError();
    v53 = v52;
    sub_10022C350(&qword_100CA7610);
    *v53 = &type metadata for ContentStatusBanner.State;
    KeyedDecodingContainer.codingPath.getter();
    sub_10000E98C();
    sub_100003B20();
    (*(v54 + 104))(v53);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v89 + 8))(v36, v31);
LABEL_9:
    sub_100006F14(v88);
LABEL_10:
    sub_10000C8F4();
    return;
  }

  v66 = v31;
  if (v44 < (v45 >> 1))
  {
    v65 = *(v43 + v44);
    sub_100618E7C(v44 + 1);
    v47 = v46;
    v49 = v48;
    swift_unknownObjectRelease();
    if (v47 == v49 >> 1)
    {
      switch(v65)
      {
        case 1:
          sub_1006E36B8();
          v39 = v69;
          sub_100010004();
          swift_unknownObjectRelease();
          v59 = v71;
          v58 = v72;
          goto LABEL_15;
        case 2:
          sub_1006E3664();
          sub_100010004();
          swift_unknownObjectRelease();
          v59 = v74;
          v58 = v75;
LABEL_15:
          (*(v59 + 8))(v39, v58);
          goto LABEL_19;
        case 3:
          sub_1006E3610();
          v60 = v83;
          sub_100010004();
          swift_unknownObjectRelease();
          (*(v76 + 8))(v60, v73);
          goto LABEL_19;
        case 4:
          sub_1006E35BC();
          v55 = v84;
          sub_100010004();
          swift_unknownObjectRelease();
          v56 = v77;
          v57 = v78;
          goto LABEL_18;
        case 5:
          sub_1006E3568();
          v61 = v66;
          sub_1000048F0();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          swift_unknownObjectRelease();
          (*(v80 + 8))(v40, v79);
          v62 = sub_1000146A4();
          v64 = v61;
          break;
        case 6:
          sub_1006E3514();
          v55 = v41;
          sub_100010004();
          swift_unknownObjectRelease();
          v56 = v81;
          v57 = v82;
LABEL_18:
          (*(v57 + 8))(v55, v56);
LABEL_19:
          v62 = sub_1000146A4();
          v64 = v41;
          break;
        default:
          sub_1006E370C();
          v50 = v68;
          v51 = v66;
          sub_1000048F0();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          swift_unknownObjectRelease();
          (*(v70 + 8))(v50, v67);
          v62 = sub_1000146A4();
          v64 = v51;
          break;
      }

      v63(v62, v64);
      sub_100006F14(v88);
      goto LABEL_10;
    }

    v31 = v66;
    goto LABEL_8;
  }

  __break(1u);
}

void sub_1006E1E94()
{
  sub_10000E8AC();
  v34 = v2;
  v35 = v0;
  v33 = v3;
  v5 = v4;
  sub_10022C350(&qword_100CD2CE8);
  sub_1000037C4();
  v31 = v7;
  v32 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  sub_1000039BC();
  v29 = v9;
  v30 = sub_10022C350(&qword_100CD2CF0);
  sub_1000037C4();
  v28 = v10;
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  v14 = sub_10022C350(&qword_100CD2CF8);
  sub_1000037C4();
  v27 = v15;
  sub_100003828();
  __chkstk_darwin(v16);
  sub_10002C698();
  v17 = sub_10022C350(&qword_100CD2D00);
  sub_1000037C4();
  v19 = v18;
  sub_100003828();
  __chkstk_darwin(v20);
  v22 = &v26 - v21;
  sub_1000161C0(v5, v5[3]);
  sub_1006E3760();
  v23 = v34;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v23)
  {
    if (v23 != 1)
    {
      sub_1006E3808();
      sub_1000048F0();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v25 = v30;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v28 + 8))(v13, v25);
      (*(v19 + 8))(v22, v17);
      goto LABEL_7;
    }

    sub_1006E37B4();
    v24 = v29;
    sub_1000048F0();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v31 + 8))(v24, v32);
  }

  else
  {
    sub_1006E385C();
    sub_1000048F0();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v27 + 8))(v1, v14);
  }

  (*(v19 + 8))(v22, v17);
LABEL_7:
  sub_10000C8F4();
}

void sub_1006E21F8()
{
  sub_10000E8AC();
  v54 = v0;
  v4 = v3;
  v53 = sub_10022C350(&qword_100CD2CA8);
  sub_1000037C4();
  v49 = v5;
  sub_100003828();
  __chkstk_darwin(v6);
  sub_1000039BC();
  v51 = v7;
  v47 = sub_10022C350(&qword_100CD2CB0);
  sub_1000037C4();
  v50 = v8;
  sub_100003828();
  __chkstk_darwin(v9);
  sub_100003CF8();
  v10 = sub_10022C350(&qword_100CD2CB8);
  sub_1000037C4();
  v48 = v11;
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  v15 = sub_10022C350(&qword_100CD2CC0);
  sub_1000037C4();
  v52 = v16;
  sub_100003828();
  __chkstk_darwin(v17);
  sub_10000C8D8();
  sub_1000161C0(v4, v4[3]);
  sub_1006E3760();
  v18 = v54;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    goto LABEL_9;
  }

  v44 = v10;
  v45 = v14;
  v46 = v1;
  v19 = v53;
  v54 = v4;
  v20 = KeyedDecodingContainer.allKeys.getter();
  sub_100618E80(v20, 0);
  if (v22 == v23 >> 1)
  {
LABEL_8:
    type metadata accessor for DecodingError();
    swift_allocError();
    v31 = v30;
    sub_10022C350(&qword_100CA7610);
    *v31 = &type metadata for ContentStatusBanner.Placement;
    KeyedDecodingContainer.codingPath.getter();
    sub_10000E98C();
    sub_100003B20();
    (*(v32 + 104))(v31);
    swift_willThrow();
    swift_unknownObjectRelease();
    v33 = sub_10000C924();
    v34(v33);
    v4 = v54;
LABEL_9:
    sub_100006F14(v4);
LABEL_10:
    sub_10000C8F4();
    return;
  }

  if (v22 < (v23 >> 1))
  {
    v24 = *(v21 + v22);
    sub_100618E7C(v22 + 1);
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    if (v26 == v28 >> 1)
    {
      if (v24)
      {
        v29 = v52;
        if (v24 == 1)
        {
          sub_1006E3808();
          sub_1000698BC();
          KeyedDecodingContainer.decode(_:forKey:)();
          swift_unknownObjectRelease();
          v41 = sub_100020A68();
          v42(v41);
          (*(v29 + 8))(v2, v15);
        }

        else
        {
          sub_1006E37B4();
          v36 = v51;
          sub_1000698BC();
          swift_unknownObjectRelease();
          (*(v49 + 8))(v36, v19);
          v39 = sub_10000C924();
          v40(v39);
        }
      }

      else
      {
        sub_1006E385C();
        v35 = v45;
        sub_1000698BC();
        swift_unknownObjectRelease();
        (*(v48 + 8))(v35, v44);
        v37 = sub_10000C924();
        v38(v37);
      }

      sub_100006F14(v54);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1006E2798(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CD2D28);
  sub_1000037C4();
  v7 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_1006E38B0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = *v3;
  v15 = 0;
  sub_1006E39AC();
  sub_100013B24();
  if (!v2)
  {
    v14 = *(v3 + 8);
    v15 = 1;
    sub_1006E3A00();
    sub_100013B24();
    type metadata accessor for ContentStatusBanner();
    LOBYTE(v14) = 2;
    type metadata accessor for Date();
    sub_10001CB00();
    sub_100133E8C(v11, v12);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

void sub_1006E2960()
{
  sub_10000E8AC();
  v4 = v3;
  v21 = v5;
  v6 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v6);
  sub_100003828();
  __chkstk_darwin(v7);
  sub_10002C698();
  sub_10022C350(&qword_100CD2D08);
  sub_1000037C4();
  v22 = v9;
  v23 = v8;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_10000C8D8();
  v11 = type metadata accessor for ContentStatusBanner();
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = v14 - v13;
  v17 = *(v16 + 32);
  v18 = type metadata accessor for Date();
  sub_10001B350(v15 + v17, 1, 1, v18);
  sub_1000161C0(v4, v4[3]);
  sub_1006E38B0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100006F14(v4);
    sub_10002C4AC(v15 + v17, &unk_100CB2CF0);
  }

  else
  {
    sub_1006E3904();
    sub_10002C9D4();
    *v15 = v24;
    sub_1006E3958();
    sub_10002C9D4();
    *(v15 + 8) = v24;
    *(v15 + 16) = v25;
    sub_10001CB00();
    sub_100133E8C(v19, v20);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v22 + 8))(v2, v23);
    sub_10019F6D8(v1, v15 + v17);
    sub_10010A338(v15, v21);
    sub_100006F14(v4);
    sub_10010ABE4(v15);
  }

  sub_10000C8F4();
}

uint64_t sub_1006E2C48(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    return !a4;
  }

  if (a2 == 1)
  {
    return a4 == 1;
  }

  if (a4 < 2)
  {
    return 0;
  }

  if (a1 != a3 || a2 != a4)
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return 1;
}

void sub_1006E2C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v3 = 0;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v3 = 2;
LABEL_5:
    Hasher._combine(_:)(v3);
    return;
  }

  Hasher._combine(_:)(1uLL);

  String.hash(into:)();
}

Swift::Int sub_1006E2D14(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    if (a2 != 1)
    {
      Hasher._combine(_:)(1uLL);
      String.hash(into:)();
      return Hasher._finalize()();
    }

    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_1006E2D98()
{
  v1 = type metadata accessor for Date();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  Hasher._combine(_:)(*v0);
  v12 = *(v0 + 2);
  if (!v12)
  {
    v13 = 0;
    goto LABEL_5;
  }

  if (v12 == 1)
  {
    v13 = 2;
LABEL_5:
    Hasher._combine(_:)(v13);
    goto LABEL_7;
  }

  Hasher._combine(_:)(1uLL);
  String.hash(into:)();
LABEL_7:
  v14 = type metadata accessor for ContentStatusBanner();
  sub_1000D47CC(&v0[*(v14 + 24)], v11);
  if (sub_100024D10(v11, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v7, v11, v1);
    Hasher._combine(_:)(1u);
    sub_10001CB00();
    sub_100133E8C(v15, v16);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v7, v1);
  }
}

Swift::Int sub_1006E2F7C()
{
  Hasher.init(_seed:)();
  sub_1006E2D98();
  return Hasher._finalize()();
}

void sub_1006E2FBC(_BYTE *a1@<X8>)
{
  sub_1006E1634();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_1006E3004(void *a1@<X8>)
{
  sub_1006E21F8();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

Swift::Int sub_1006E30A0()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1)
  {
    if (v1 != 1)
    {
      Hasher._combine(_:)(1uLL);
      String.hash(into:)();
      return Hasher._finalize()();
    }

    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int sub_1006E3124()
{
  Hasher.init(_seed:)();
  sub_1006E2D98();
  return Hasher._finalize()();
}

uint64_t sub_1006E3160(char a1)
{
  result = 0x206E776F6E6B6E55;
  switch(a1)
  {
    case 1:
      v3 = 0x6E6F43206F4ELL;
      goto LABEL_5;
    case 2:
      v3 = 0x616C70726941;
LABEL_5:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x656E000000000000;
      break;
    case 3:
      result = 0x6E6F4320776F6C53;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x61636F4C20646C4FLL;
      break;
    case 6:
      result = 0x4C2079627261654ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1006E3278(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 1953720652;
  }

  if (a2 == 1)
  {
    return 7364941;
  }

  String.append(_:)(*&a1);
  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 0x6E6F697461636F4CLL;
}

uint64_t sub_1006E330C()
{
  _StringGuts.grow(_:)(39);

  v1._countAndFlagsBits = sub_1006E3278(*(v0 + 8), *(v0 + 16));
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x3D6574617453202CLL;
  v2._object = 0xE800000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = sub_1006E3160(*v0);
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x55207473614C202CLL;
  v4._object = 0xEF3D646574616470;
  String.append(_:)(v4);
  type metadata accessor for ContentStatusBanner();
  v5._countAndFlagsBits = sub_100278530();
  String.append(_:)(v5);

  return 0x6E656D6563616C50;
}

unint64_t sub_1006E346C()
{
  result = qword_100CD2BE0;
  if (!qword_100CD2BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2BE0);
  }

  return result;
}

unint64_t sub_1006E34C0()
{
  result = qword_100CD2C28;
  if (!qword_100CD2C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2C28);
  }

  return result;
}

unint64_t sub_1006E3514()
{
  result = qword_100CD2C30;
  if (!qword_100CD2C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2C30);
  }

  return result;
}

unint64_t sub_1006E3568()
{
  result = qword_100CD2C38;
  if (!qword_100CD2C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2C38);
  }

  return result;
}

unint64_t sub_1006E35BC()
{
  result = qword_100CD2C40;
  if (!qword_100CD2C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2C40);
  }

  return result;
}

unint64_t sub_1006E3610()
{
  result = qword_100CD2C48;
  if (!qword_100CD2C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2C48);
  }

  return result;
}

unint64_t sub_1006E3664()
{
  result = qword_100CD2C50;
  if (!qword_100CD2C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2C50);
  }

  return result;
}

unint64_t sub_1006E36B8()
{
  result = qword_100CD2C58;
  if (!qword_100CD2C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2C58);
  }

  return result;
}

unint64_t sub_1006E370C()
{
  result = qword_100CD2C60;
  if (!qword_100CD2C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2C60);
  }

  return result;
}

unint64_t sub_1006E3760()
{
  result = qword_100CD2CC8;
  if (!qword_100CD2CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2CC8);
  }

  return result;
}

unint64_t sub_1006E37B4()
{
  result = qword_100CD2CD0;
  if (!qword_100CD2CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2CD0);
  }

  return result;
}

unint64_t sub_1006E3808()
{
  result = qword_100CD2CD8;
  if (!qword_100CD2CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2CD8);
  }

  return result;
}

unint64_t sub_1006E385C()
{
  result = qword_100CD2CE0;
  if (!qword_100CD2CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2CE0);
  }

  return result;
}

unint64_t sub_1006E38B0()
{
  result = qword_100CD2D10;
  if (!qword_100CD2D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2D10);
  }

  return result;
}

unint64_t sub_1006E3904()
{
  result = qword_100CD2D18;
  if (!qword_100CD2D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2D18);
  }

  return result;
}

unint64_t sub_1006E3958()
{
  result = qword_100CD2D20;
  if (!qword_100CD2D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2D20);
  }

  return result;
}

unint64_t sub_1006E39AC()
{
  result = qword_100CD2D30;
  if (!qword_100CD2D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2D30);
  }

  return result;
}

unint64_t sub_1006E3A00()
{
  result = qword_100CD2D38;
  if (!qword_100CD2D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2D38);
  }

  return result;
}

_BYTE *sub_1006E3A64(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ContentStatusBanner.Placement.LocationCodingKeys(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_1006E3C0C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1006E3D5C()
{
  result = qword_100CD2D40;
  if (!qword_100CD2D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2D40);
  }

  return result;
}

unint64_t sub_1006E3DB4()
{
  result = qword_100CD2D48;
  if (!qword_100CD2D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2D48);
  }

  return result;
}

unint64_t sub_1006E3E0C()
{
  result = qword_100CD2D50;
  if (!qword_100CD2D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2D50);
  }

  return result;
}

unint64_t sub_1006E3E64()
{
  result = qword_100CD2D58;
  if (!qword_100CD2D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2D58);
  }

  return result;
}

unint64_t sub_1006E3EBC()
{
  result = qword_100CD2D60;
  if (!qword_100CD2D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2D60);
  }

  return result;
}

unint64_t sub_1006E3F14()
{
  result = qword_100CD2D68;
  if (!qword_100CD2D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2D68);
  }

  return result;
}

unint64_t sub_1006E3F6C()
{
  result = qword_100CD2D70;
  if (!qword_100CD2D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2D70);
  }

  return result;
}

unint64_t sub_1006E3FC4()
{
  result = qword_100CD2D78;
  if (!qword_100CD2D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2D78);
  }

  return result;
}

unint64_t sub_1006E401C()
{
  result = qword_100CD2D80;
  if (!qword_100CD2D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2D80);
  }

  return result;
}

unint64_t sub_1006E4074()
{
  result = qword_100CD2D88;
  if (!qword_100CD2D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2D88);
  }

  return result;
}

unint64_t sub_1006E40CC()
{
  result = qword_100CD2D90;
  if (!qword_100CD2D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2D90);
  }

  return result;
}

unint64_t sub_1006E4124()
{
  result = qword_100CD2D98;
  if (!qword_100CD2D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2D98);
  }

  return result;
}

unint64_t sub_1006E417C()
{
  result = qword_100CD2DA0;
  if (!qword_100CD2DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2DA0);
  }

  return result;
}

unint64_t sub_1006E41D4()
{
  result = qword_100CD2DA8;
  if (!qword_100CD2DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2DA8);
  }

  return result;
}

unint64_t sub_1006E422C()
{
  result = qword_100CD2DB0;
  if (!qword_100CD2DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2DB0);
  }

  return result;
}

unint64_t sub_1006E4284()
{
  result = qword_100CD2DB8;
  if (!qword_100CD2DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2DB8);
  }

  return result;
}

unint64_t sub_1006E42DC()
{
  result = qword_100CD2DC0;
  if (!qword_100CD2DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2DC0);
  }

  return result;
}

unint64_t sub_1006E4334()
{
  result = qword_100CD2DC8;
  if (!qword_100CD2DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2DC8);
  }

  return result;
}

unint64_t sub_1006E438C()
{
  result = qword_100CD2DD0;
  if (!qword_100CD2DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2DD0);
  }

  return result;
}

unint64_t sub_1006E43E4()
{
  result = qword_100CD2DD8;
  if (!qword_100CD2DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2DD8);
  }

  return result;
}

unint64_t sub_1006E443C()
{
  result = qword_100CD2DE0;
  if (!qword_100CD2DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2DE0);
  }

  return result;
}

unint64_t sub_1006E4494()
{
  result = qword_100CD2DE8;
  if (!qword_100CD2DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2DE8);
  }

  return result;
}

unint64_t sub_1006E44EC()
{
  result = qword_100CD2DF0;
  if (!qword_100CD2DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2DF0);
  }

  return result;
}

unint64_t sub_1006E4544()
{
  result = qword_100CD2DF8;
  if (!qword_100CD2DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2DF8);
  }

  return result;
}

unint64_t sub_1006E459C()
{
  result = qword_100CD2E00;
  if (!qword_100CD2E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2E00);
  }

  return result;
}

unint64_t sub_1006E45F4()
{
  result = qword_100CD2E08;
  if (!qword_100CD2E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2E08);
  }

  return result;
}

unint64_t sub_1006E464C()
{
  result = qword_100CD2E10;
  if (!qword_100CD2E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2E10);
  }

  return result;
}

unint64_t sub_1006E46A4()
{
  result = qword_100CD2E18;
  if (!qword_100CD2E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2E18);
  }

  return result;
}

unint64_t sub_1006E46FC()
{
  result = qword_100CD2E20;
  if (!qword_100CD2E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2E20);
  }

  return result;
}

unint64_t sub_1006E4754()
{
  result = qword_100CD2E28;
  if (!qword_100CD2E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2E28);
  }

  return result;
}

unint64_t sub_1006E47B8()
{
  result = qword_100CD2E30;
  if (!qword_100CD2E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2E30);
  }

  return result;
}

uint64_t sub_1006E487C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 56);
  if (v5 < 0)
  {
    v8 = *(a2 + 56);
    if (v8 < 0)
    {
      v9 = *a2 == v2 && *(a2 + 8) == v3;
      v10 = v9 && *(a2 + 16) == v4;
      v11 = v10 && *(a1 + 24) == *(a2 + 24);
      if (v11 && ((*(a1 + 32) ^ *(a2 + 32)) & 1) == 0)
      {
        v12 = *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48);
        if (v12 && ((v5 ^ v8) & 1) == 0)
        {
          return static LocationSearchEntityFromStringResolver.__derived_struct_equals(_:_:)();
        }
      }
    }
  }

  else if ((*(a2 + 56) & 0x80000000) == 0)
  {
    v6 = *a2 == v2 && *(a2 + 8) == v3;
    if (v6 && ((LODWORD(v4) ^ *(a2 + 16)) & 1) == 0)
    {
      return static LocationSearchEntityFromStringResolver.__derived_struct_equals(_:_:)();
    }
  }

  return static VerticalSizingBehaviorKey.defaultValue.getter();
}

uint64_t sub_1006E4924(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && (*(a1 + 16) == *(a2 + 16) ? (v2 = *(a1 + 24) == *(a2 + 24)) : (v2 = 0), v2 && ((*(a1 + 32) ^ *(a2 + 32)) & 1) == 0 && (*(a1 + 40) == *(a2 + 40) ? (v3 = *(a1 + 48) == *(a2 + 48)) : (v3 = 0), v3 && ((*(a1 + 56) ^ *(a2 + 56)) & 1) == 0)))
  {
    return static LocationSearchEntityFromStringResolver.__derived_struct_equals(_:_:)();
  }

  else
  {
    return static VerticalSizingBehaviorKey.defaultValue.getter();
  }
}

uint64_t sub_1006E4994(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 56);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 56);
  if (v5 < 0)
  {
    if (v9 < 0)
    {
      v12 = v3 == v7 && v2 == v6;
      v13 = v12 && v4 == v8;
      v14 = v13 && *(a1 + 24) == *(a2 + 24);
      if (v14 && ((*(a1 + 32) ^ *(a2 + 32)) & 1) == 0)
      {
        v15 = *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48);
        if (v15 && ((v5 ^ v9) & 1) == 0)
        {
          return static LocationSearchEntityFromStringResolver.__derived_struct_equals(_:_:)();
        }
      }
    }
  }

  else if ((v9 & 0x80000000) == 0)
  {
    v10 = v3 == v7 && v2 == v6;
    if (v10 && ((LODWORD(v4) ^ LODWORD(v8)) & 1) == 0)
    {
      return static LocationSearchEntityFromStringResolver.__derived_struct_equals(_:_:)();
    }
  }

  return static VerticalSizingBehaviorKey.defaultValue.getter();
}

uint64_t sub_1006E4A6C(int a1, int a2, double a3, double a4, double a5, double a6)
{
  v6 = a3 == a5;
  if (a4 != a6)
  {
    v6 = 0;
  }

  return v6 & (a1 ^ a2 ^ 1u);
}

uint64_t sub_1006E4ABC()
{
  sub_1006E4D24();
  EnvironmentValues.subscript.getter();
  return v1 >> 7;
}

uint64_t sub_1006E4AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1006E4C90();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

double sub_1006E4B60@<D0>(_OWORD *a1@<X8>)
{
  sub_1003C0CB0();
  UITraitCollection.subscript.getter();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = *v5;
  result = *&v5[9];
  *(a1 + 41) = *&v5[9];
  return result;
}

double sub_1006E4C0C@<D0>(_OWORD *a1@<X8>)
{
  sub_1006E4B60(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  a1[2] = v5[0];
  result = *(v5 + 9);
  *(a1 + 41) = *(v5 + 9);
  return result;
}

unint64_t sub_1006E4C90()
{
  result = qword_100CD2E38;
  if (!qword_100CD2E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2E38);
  }

  return result;
}

unint64_t sub_1006E4D24()
{
  result = qword_100CD2E40;
  if (!qword_100CD2E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2E40);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ForegroundEffectViewMask(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_1006E4DA8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1006E4DF0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 57) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 32) = 2 * -a2;
      *(a1 + 56) = 0;
      return result;
    }

    *(a1 + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1006E4E70(uint64_t result, char a2)
{
  v2 = *(result + 56) & 1 | (a2 << 7);
  *(result + 32) &= 1uLL;
  *(result + 56) = v2;
  return result;
}

uint64_t sub_1006E4E9C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 57))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1006E4EE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1006E4F54(uint64_t a1, unsigned int a2)
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
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1006E4FA0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1006E5008()
{
  swift_beginAccess();
  withTransaction<A>(_:_:)();
  return swift_endAccess();
}

id sub_1006E50B0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 frame];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_1006E5100(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OSSignposter();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC7Weather20SceneResizingMonitor_windowSizeChangingObservation) = 0;
  *(v2 + OBJC_IVAR____TtC7Weather20SceneResizingMonitor_resizingState) = 0;
  if (qword_100CA27C8 != -1)
  {
    swift_once();
  }

  v16 = sub_10000703C(v4, qword_100D90DB0);
  (*(v6 + 16))(v9, v16, v4);
  OSSignposter.init(logger:)();
  (*(v12 + 32))(v2 + OBJC_IVAR____TtC7Weather20SceneResizingMonitor_signposter, v15, v10);
  *(v2 + OBJC_IVAR____TtC7Weather20SceneResizingMonitor_window) = a1;
  v21[1] = a1;
  swift_getKeyPath();
  swift_allocObject();
  swift_weakInit();
  v17 = a1;
  v18 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v19 = *(v2 + OBJC_IVAR____TtC7Weather20SceneResizingMonitor_windowSizeChangingObservation);
  *(v2 + OBJC_IVAR____TtC7Weather20SceneResizingMonitor_windowSizeChangingObservation) = v18;

  return v2;
}

uint64_t sub_1006E5370()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1006E53D0();
  }

  return result;
}

uint64_t sub_1006E53D0()
{
  v1 = type metadata accessor for OSSignposter();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC7Weather20SceneResizingMonitor_signposter, v1, v3);
  v6 = *(v0 + OBJC_IVAR____TtC7Weather20SceneResizingMonitor_window);
  sub_10022C350(&qword_100CD2F30);
  NSKeyValueObservedChange.oldValue.getter();
  if (v21)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v19;
  }

  if (v21)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v20;
  }

  NSKeyValueObservedChange.newValue.getter();
  v9 = v19;
  v10 = v20;
  v11 = v21;
  v12 = v0 + OBJC_IVAR____TtC7Weather20SceneResizingMonitor_resizingState;
  v13 = swift_beginAccess();
  if (v7 != 0.0 || v8 != 0.0)
  {
    if (v11)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = v10;
    }

    if (v11)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = v9;
    }

    if (v7 != v15 || v8 != v14)
    {
      __chkstk_darwin(v13);
      *(&v18 - 4) = v6;
      *(&v18 - 3) = v12;
      *(&v18 - 2) = v5;
      withTransaction<A>(_:_:)();
    }
  }

  swift_endAccess();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1006E55E8()
{
  v1 = OBJC_IVAR____TtC7Weather20SceneResizingMonitor_signposter;
  v2 = type metadata accessor for OSSignposter();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1006E5678()
{
  sub_1006E55E8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SceneResizingMonitor()
{
  result = qword_100CD2E90;
  if (!qword_100CD2E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006E5724()
{
  result = type metadata accessor for OSSignposter();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1006E57CC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006E581C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1006E5870(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

id sub_1006E58A0(void *a1, uint64_t *a2, uint64_t a3)
{
  v34 = a2;
  v31 = a3;
  v32 = type metadata accessor for OSSignpostID();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v33 = &v28 - v6;
  v7 = type metadata accessor for UITraitOverrides();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  UIView.traitOverrides.getter();
  sub_1003C0DAC();
  sub_1003C0E00();
  dispatch thunk of UIMutableTraits.subscript.getter();
  (*(v8 + 8))(v10, v7);
  v28 = v35;
  v11 = [a1 interfaceOrientation];
  UIView.traitOverrides.getter();
  v35 = v11;
  v12 = v34;
  dispatch thunk of UIMutableTraits.subscript.setter();
  UIView.traitOverrides.setter();
  result = [a1 interfaceOrientation];
  if (!*v12)
  {
    v15 = v29;
    v14 = v30;
    if (v28 == result)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    UIView.traitOverrides.getter();
    LOBYTE(v35) = v16;
    sub_1003C0D58();
    dispatch thunk of UIMutableTraits.subscript.setter();
    UIView.traitOverrides.setter();
    v17 = v33;
    static OSSignpostID.exclusive.getter();
    v18 = OSSignposter.logHandle.getter();
    v19 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, v19, v21, "sceneResizing", "", v20, 2u);
    }

    v22 = v32;
    (*(v14 + 16))(v15, v17, v32);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v23 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v14 + 8))(v17, v22);
    *v12 = v23;

    if (qword_100CA27C8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000703C(v24, qword_100D90DB0);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Scene did begin resizing.", v27, 2u);
    }
  }

  return result;
}

void sub_1006E5D0C(void *a1, void *a2, void *a3, uint64_t a4)
{
  v28 = a4;
  v7 = type metadata accessor for OSSignpostError();
  v26 = *(v7 - 8);
  v27 = v7;
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OSSignpostID();
  v29 = *(v10 - 8);
  v30 = v10;
  __chkstk_darwin(v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UITraitOverrides();
  v14 = [a1 interfaceOrientation];
  UIView.traitOverrides.getter();
  v33 = v14;
  sub_1003C0DAC();
  sub_1003C0E00();
  dispatch thunk of UIMutableTraits.subscript.setter();
  UIView.traitOverrides.setter();
  v31 = a2;
  if (*a2)
  {

    if ([a3 isInteractivelyResizing])
    {
    }

    else
    {
      UIView.traitOverrides.getter();
      v32 = 0;
      sub_1003C0D58();
      dispatch thunk of UIMutableTraits.subscript.setter();
      UIView.traitOverrides.setter();
      v15 = OSSignposter.logHandle.getter();
      OSSignpostIntervalState.signpostID.getter();
      v16 = static os_signpost_type_t.end.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {

        checkForErrorAndConsumeState(state:)();

        v18 = v26;
        v17 = v27;
        if ((*(v26 + 88))(v9, v27) == enum case for OSSignpostError.doubleEnd(_:))
        {
          v19 = "[Error] Interval already ended";
        }

        else
        {
          (*(v18 + 8))(v9, v17);
          v19 = "";
        }

        v20 = swift_slowAlloc();
        *v20 = 0;
        v21 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v16, v21, "sceneResizing", v19, v20, 2u);
      }

      (*(v29 + 8))(v12, v30);
      *v31 = 0;

      if (qword_100CA27C8 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_10000703C(v22, qword_100D90DB0);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "Scene did finish resizing.", v25, 2u);
      }
    }
  }
}

void sub_1006E61AC()
{
  if (!qword_100CD2FB8)
  {
    type metadata accessor for CLLocationCoordinate2D(255);
    sub_10022E824(&qword_100CA6078);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100CD2FB8);
    }
  }
}

uint64_t sub_1006E6234@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  type metadata accessor for PreviewLocation();
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  sub_100496220(v2, v13 - v12);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      (*(v6 + 32))(v10, v14, v4);
      LocationOfInterest.location.getter();
      (*(v6 + 8))(v10, v4);
      v19 = type metadata accessor for Location();
      v17 = a1;
      v18 = 0;
      break;
    case 3u:
    case 4u:
      sub_100141AE4(v14, type metadata accessor for PreviewLocation);
      v19 = type metadata accessor for Location();
      v17 = a1;
      v18 = 1;
      break;
    default:
      v15 = type metadata accessor for Location();
      sub_1000037E8();
      (*(v16 + 32))(a1, v14, v15);
      v17 = a1;
      v18 = 0;
      v19 = v15;
      break;
  }

  return sub_10001B350(v17, v18, 1, v19);
}

void sub_1006E6430()
{
  sub_100018514();
  type metadata accessor for UUID();
  sub_1000037C4();
  v34 = v4;
  v35 = v3;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v33 = v6 - v5;
  v7 = sub_10022C350(&qword_100CA65D8);
  sub_100003810(v7);
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for SearchLocation();
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000037D8();
  v37 = v14 - v13;
  sub_1000038CC();
  v15 = type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v36 = v16;
  __chkstk_darwin(v17);
  sub_1000037D8();
  sub_10003038C();
  v18 = type metadata accessor for Location();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_1000037D8();
  sub_1000183C0();
  type metadata accessor for PreviewLocation();
  sub_1000037E8();
  __chkstk_darwin(v22);
  sub_1000037D8();
  v25 = v24 - v23;
  sub_100496220(v0, v24 - v23);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v26 = v36;
      (*(v36 + 32))(v2, v25, v15);
      LocationOfInterest.location.getter();
      Location.id.getter();
      sub_100016DAC();
      (*(v20 + 8))(v1, v18);
      (*(v26 + 8))(v2, v15);
      break;
    case 3u:
      sub_10001CB18();
      v27 = v25;
      v28 = v37;
      sub_1006E8EBC(v27, v37, v29);
      sub_100645544(v28 + *(v11 + 32), v10);
      if (sub_100024D10(v10, 1, v18) == 1)
      {
        sub_1000180EC(v10, &qword_100CA65D8);
        if (*(v28 + *(v11 + 36) + 16))
        {
          v30 = v33;
          UUID.init()();
          UUID.uuidString.getter();
          sub_100016DAC();
          (*(v34 + 8))(v30, v35);
        }

        else
        {
          CLLocationCoordinate2D.id.getter();
          sub_100016DAC();
        }
      }

      else
      {
        Location.id.getter();
        sub_100016DAC();
        (*(v20 + 8))(v10, v18);
      }

      sub_10001F5D8();
      sub_100141AE4(v28, v31);
      break;
    case 4u:

      sub_100021624();
      CLLocationCoordinate2D.id.getter();
      sub_100016DAC();
      break;
    default:
      (*(v20 + 32))(v1, v25, v18);
      Location.id.getter();
      sub_100016DAC();
      (*(v20 + 8))(v1, v18);
      break;
  }

  sub_1000135C8();
}

uint64_t sub_1006E6834()
{
  v3 = v0;
  v4 = sub_10022C350(&qword_100CA65D8);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  v6 = sub_10003BF1C();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v27 = v9 - v8;
  sub_1000038CC();
  v10 = type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v26 = v11;
  __chkstk_darwin(v12);
  sub_1000037D8();
  sub_100037CB0();
  v13 = type metadata accessor for Location();
  sub_1000037C4();
  __chkstk_darwin(v14);
  sub_1000037D8();
  sub_100030018();
  sub_1000037E8();
  __chkstk_darwin(v15);
  sub_1000037D8();
  sub_1000183C0();
  sub_100496220(v0, v2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      (*(v26 + 32))(v1, v2, v10);
      LocationOfInterest.location.getter();
      Location.name.getter();
      sub_10002C9F4();
      v20 = sub_100037280();
      v21(v20);
      (*(v26 + 8))(v1, v10);
      break;
    case 3u:
      sub_10001CB18();
      sub_1006E8EBC(v2, v27, v22);
      sub_100645544(v27 + *(v6 + 32), v0);
      if (sub_100024D10(v0, 1, v13) == 1)
      {
        sub_1000180EC(v0, &qword_100CA65D8);
        v3 = 0;
      }

      else
      {
        Location.name.getter();
        sub_10002C9F4();
        v23(v0, v13);
      }

      sub_10001F5D8();
      sub_100141AE4(v27, v24);
      break;
    case 4u:
      if (*(v2 + 24))
      {
        v3 = *(v2 + 16);
      }

      else
      {
        v3 = 0;
      }

      break;
    default:
      v16 = sub_100052040();
      v17(v16, v2, v13);
      Location.name.getter();
      sub_10002C9F4();
      v18 = sub_100037280();
      v19(v18);
      break;
  }

  return v3;
}

void sub_1006E6B60()
{
  sub_100018514();
  v4 = sub_10022C350(&qword_100CA65D8);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  v26 = sub_10003BF1C();
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v25 = v11;
  __chkstk_darwin(v12);
  sub_1000037D8();
  sub_100037CB0();
  v13 = type metadata accessor for Location();
  sub_1000037C4();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_1000037D8();
  sub_100030018();
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_1000037D8();
  sub_1000183C0();
  sub_100496220(v0, v3);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      (*(v25 + 32))(v2, v3, v10);
      LocationOfInterest.location.getter();
      Location.coordinate.getter();
      sub_10000ED18();
      v20 = sub_100037280();
      v21(v20);
      (*(v25 + 8))(v2, v10);
      break;
    case 3u:
      sub_10001CB18();
      sub_1006E8EBC(v3, v9, v22);
      sub_100645544(v9 + *(v26 + 32), v0);
      if (sub_100024D10(v0, 1, v13) == 1)
      {
        sub_1000180EC(v0, &qword_100CA65D8);
      }

      else
      {
        Location.coordinate.getter();
        sub_10000ED18();
        v24(v0, v13);
      }

      sub_10001F5D8();
      sub_100141AE4(v9, v23);
      break;
    case 4u:

      break;
    default:
      (*(v15 + 32))(v1, v3, v13);
      Location.coordinate.getter();
      sub_10000ED18();
      v18 = sub_100037280();
      v19(v18);
      break;
  }

  sub_100021624();
  sub_1000135C8();
}

void sub_1006E6E98()
{
  sub_100018514();
  v92 = v0;
  v93 = v1;
  type metadata accessor for LocationCoordinate();
  sub_1000037C4();
  v86 = v3;
  v87 = v2;
  __chkstk_darwin(v2);
  sub_100003C38();
  v85 = v4 - v5;
  __chkstk_darwin(v6);
  v84 = &v80 - v7;
  sub_1000038CC();
  v8 = type metadata accessor for SearchLocation();
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  sub_100003C38();
  v83 = v10 - v11;
  __chkstk_darwin(v12);
  v82 = &v80 - v13;
  sub_1000038CC();
  type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v88 = v15;
  v89 = v14;
  __chkstk_darwin(v14);
  sub_100003C38();
  v81 = (v16 - v17);
  __chkstk_darwin(v18);
  v80 = &v80 - v19;
  sub_1000038CC();
  type metadata accessor for Location();
  sub_1000037C4();
  v90 = v21;
  v91 = v20;
  __chkstk_darwin(v20);
  sub_100003C38();
  v24 = (v22 - v23);
  __chkstk_darwin(v25);
  v27 = &v80 - v26;
  type metadata accessor for PreviewLocation();
  sub_1000037E8();
  __chkstk_darwin(v28);
  sub_100003C38();
  v31 = v29 - v30;
  v33 = __chkstk_darwin(v32);
  v35 = &v80 - v34;
  v36 = __chkstk_darwin(v33);
  v38 = &v80 - v37;
  v39 = __chkstk_darwin(v36);
  v41 = &v80 - v40;
  __chkstk_darwin(v39);
  v43 = &v80 - v42;
  v44 = sub_10022C350(&qword_100CD2FF0);
  sub_100003810(v44);
  sub_100003828();
  v46 = __chkstk_darwin(v45);
  v48 = &v80 - v47;
  v49 = &v80 + *(v46 + 56) - v47;
  sub_100496220(v92, &v80 - v47);
  sub_100496220(v93, v49);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_100496220(v48, v41);
      if (sub_100025360() == 1)
      {
        v71 = v90;
        v70 = v91;
        v72 = *(v90 + 32);
        v72(v27, v41, v91);
        v72(v24, v49, v70);
        static Location.== infix(_:_:)();
        v73 = *(v71 + 8);
        v73(v24, v70);
        v73(v27, v70);
        goto LABEL_32;
      }

      (*(v90 + 8))(v41, v91);
      goto LABEL_24;
    case 2u:
      sub_100496220(v48, v38);
      if (sub_100025360() == 2)
      {
        v63 = v88;
        v62 = v89;
        v64 = *(v88 + 32);
        v65 = v80;
        v64(v80, v38, v89);
        v66 = v81;
        v64(v81, v49, v62);
        static LocationOfInterest.== infix(_:_:)();
        v67 = *(v63 + 8);
        v67(v66, v62);
        v67(v65, v62);
        goto LABEL_32;
      }

      (*(v88 + 8))(v38, v89);
      goto LABEL_24;
    case 3u:
      sub_100496220(v48, v35);
      if (sub_100025360() == 3)
      {
        v68 = v82;
        sub_1006E8EBC(v35, v82, type metadata accessor for SearchLocation);
        v69 = v83;
        sub_1006E8EBC(v49, v83, type metadata accessor for SearchLocation);
        static SearchLocation.== infix(_:_:)(v68, v69);
        sub_100141AE4(v69, type metadata accessor for SearchLocation);
        sub_100141AE4(v68, type metadata accessor for SearchLocation);
        goto LABEL_32;
      }

      sub_10001F5D8();
      sub_100141AE4(v35, v74);
      goto LABEL_24;
    case 4u:
      sub_100496220(v48, v31);
      v51 = *(v31 + 16);
      v50 = *(v31 + 24);
      v52 = *(v31 + 32);
      if (sub_100025360() != 4)
      {

        goto LABEL_24;
      }

      LODWORD(v92) = v52;
      v54 = *(v49 + 2);
      v53 = *(v49 + 3);
      LODWORD(v93) = v49[32];
      v55 = v84;
      LocationCoordinate.init(_:)();
      v56 = v85;
      sub_100021624();
      LocationCoordinate.init(_:)();
      v57 = static LocationCoordinate.== infix(_:_:)();
      v58 = *(v86 + 8);
      v59 = v56;
      v60 = v87;
      v58(v59, v87);
      v58(v55, v60);
      if ((v57 & 1) == 0)
      {

        goto LABEL_27;
      }

      if (v50)
      {
        if (v53)
        {
          if (v51 != v54 || v50 != v53)
          {
            _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          goto LABEL_32;
        }

LABEL_27:

        goto LABEL_32;
      }

      if (v53)
      {
        goto LABEL_27;
      }

LABEL_32:
      sub_100141AE4(v48, type metadata accessor for PreviewLocation);
LABEL_33:
      sub_1000135C8();
      return;
    default:
      sub_100496220(v48, v43);
      if (!sub_100025360())
      {
        v75 = v90;
        v76 = *(v90 + 32);
        v77 = v43;
        v78 = v91;
        (v76)(v27, v77, v91);
        sub_100041B20();
        v76();
        static Location.== infix(_:_:)();
        v79 = *(v75 + 8);
        v79(v24, v78);
        v79(v27, v78);
        goto LABEL_32;
      }

      (*(v90 + 8))(v43, v91);
LABEL_24:
      sub_1000180EC(v48, &qword_100CD2FF0);
      goto LABEL_33;
  }
}

void sub_1006E7624()
{
  sub_100018514();
  type metadata accessor for LocationCoordinate();
  sub_1000037C4();
  v32 = v6;
  v33 = v5;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = type metadata accessor for SearchLocation();
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  sub_1000037D8();
  sub_100037CB0();
  v12 = type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v31 = v13;
  __chkstk_darwin(v14);
  sub_1000037D8();
  sub_1000183C0();
  v15 = type metadata accessor for Location();
  sub_1000037C4();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_1000037D8();
  sub_100030018();
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_1000037D8();
  sub_10003038C();
  sub_100496220(v0, v4);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_100052040();
      sub_100041B20();
      v28();
      v21 = 5;
      goto LABEL_8;
    case 2u:
      (*(v31 + 32))(v3, v4, v12);
      Hasher._combine(_:)(2uLL);
      sub_1000048FC();
      sub_1006E9040(v24, v25);
      dispatch thunk of Hashable.hash(into:)();
      (*(v31 + 8))(v3, v12);
      break;
    case 3u:
      sub_10001CB18();
      sub_1006E8EBC(v4, v2, v26);
      Hasher._combine(_:)(3uLL);
      SearchLocation.hash(into:)();
      sub_10001F5D8();
      sub_100141AE4(v2, v27);
      break;
    case 4u:
      v22 = *(v4 + 24);
      v23 = *(v4 + 32);
      Hasher._combine(_:)(4uLL);
      sub_100021624();
      LocationCoordinate.init(_:)();
      sub_1006E9040(&qword_100CD2FF8, &type metadata accessor for LocationCoordinate);
      dispatch thunk of Hashable.hash(into:)();
      (*(v32 + 8))(v9, v33);
      if (v22)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      Hasher._combine(_:)(v23);
      break;
    default:
      sub_100052040();
      sub_100041B20();
      v20();
      v21 = 1;
LABEL_8:
      Hasher._combine(_:)(v21);
      sub_1000108EC();
      sub_1006E9040(v29, v30);
      dispatch thunk of Hashable.hash(into:)();
      (*(v17 + 8))(v1, v15);
      break;
  }

  sub_1000135C8();
}

Swift::Int sub_1006E7A38()
{
  Hasher.init(_seed:)();
  sub_1006E7624();
  return Hasher._finalize()();
}

Swift::Int sub_1006E7A80()
{
  Hasher.init(_seed:)();
  sub_1006E7624();
  return Hasher._finalize()();
}

uint64_t sub_1006E7AEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for SearchLocation();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v42 = v6 - v5;
  sub_1000038CC();
  type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_1000037D8();
  sub_1000038CC();
  type metadata accessor for Location();
  sub_1000037C4();
  __chkstk_darwin(v8);
  sub_100003C38();
  __chkstk_darwin(v9);
  v10 = sub_10022C350(&qword_100CD3008);
  sub_1000037C4();
  v44 = v11;
  sub_100003828();
  __chkstk_darwin(v12);
  sub_10003038C();
  type metadata accessor for PreviewLocation();
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_1000037D8();
  v16 = v15 - v14;
  v46 = a1;
  sub_1000161C0(a1, a1[3]);
  sub_1006E8E14();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v45)
  {
    sub_1006E8E68();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    switch(v47)
    {
      case 2:
        sub_1000048FC();
        sub_1006E9040(v20, v21);
        sub_1000698D8();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v22 = sub_100019D88();
        v23(v22);
        v10 = v16;
        sub_100041B20();
        v29(v24, v25, v26, v27, v28);
        break;
      case 3:
        sub_100074E44();
        sub_1006E9040(v30, v31);
        sub_1000698D8();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v32 = sub_100019D88();
        v33(v32);
        sub_10001CB18();
        v10 = v16;
        sub_1006E8EBC(v42, v16, v34);
        break;
      case 4:
        type metadata accessor for CLLocationCoordinate2D(0);
        sub_100049B24();
        sub_1006E9040(v18, v19);
        sub_10003C744();
        sub_10022C350(&qword_100CA6078);
        sub_1006E8F70(&qword_100CD3028);
        sub_10003C744();
        v41 = KeyedDecodingContainer.decode(_:forKey:)();
        (*(v44 + 8))(v2, v10);
        v10 = v16;
        *v16 = v47;
        *(v16 + 8) = v48;
        *(v16 + 16) = v47;
        *(v16 + 24) = v48;
        *(v16 + 32) = v41 & 1;
        break;
      default:
        sub_1000108EC();
        sub_1006E9040(v35, v36);
        sub_1000698D8();
        sub_10003A328();
        v37 = sub_100019D88();
        v38(v37);
        v39 = sub_100011768();
        v40(v39);
        break;
    }

    swift_storeEnumTagMultiPayload();
    sub_1006E8EBC(v10, a2, type metadata accessor for PreviewLocation);
  }

  return sub_100006F14(v46);
}

uint64_t sub_1006E8118(void *a1)
{
  v64[1] = type metadata accessor for SearchLocation();
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000037D8();
  v68 = v4 - v3;
  sub_1000038CC();
  type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v66 = v6;
  v67 = v5;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v65 = v8 - v7;
  sub_1000038CC();
  type metadata accessor for Location();
  sub_1000037C4();
  v69 = v10;
  v70 = v9;
  __chkstk_darwin(v9);
  sub_100003C38();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v16 = v64 - v15;
  type metadata accessor for PreviewLocation();
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_1000037D8();
  v20 = (v19 - v18);
  sub_10022C350(&qword_100CD3030);
  sub_1000037C4();
  v73 = v21;
  v74 = v22;
  sub_100003828();
  __chkstk_darwin(v23);
  sub_10003038C();
  sub_1000161C0(a1, a1[3]);
  sub_1006E8E14();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100496220(v71, v20);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v57 = v69;
      v56 = v70;
      (*(v69 + 32))(v13, v20, v70);
      LOBYTE(v75) = 1;
      v77 = 0;
      sub_1006E8F1C();
      sub_100017CC4();
      v58 = v72;
      v52 = v73;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v58)
      {
        LOBYTE(v75) = 2;
        sub_1000108EC();
        sub_1006E9040(v59, v60);
        sub_1000698D8();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      (*(v57 + 8))(v13, v56);
      goto LABEL_18;
    case 2u:
      v43 = v65;
      v42 = v66;
      v44 = v20;
      v45 = v67;
      (*(v66 + 32))(v65, v44, v67);
      LOBYTE(v75) = 2;
      v77 = 0;
      sub_1006E8F1C();
      sub_100017CC4();
      v46 = v72;
      v27 = v73;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v46)
      {
        LOBYTE(v75) = 6;
        sub_1000048FC();
        sub_1006E9040(v47, v48);
        sub_1000698D8();
        sub_100021100();
      }

      (*(v42 + 8))(v43, v45);
      goto LABEL_11;
    case 3u:
      sub_10001CB18();
      v49 = v68;
      sub_1006E8EBC(v20, v68, v50);
      LOBYTE(v75) = 3;
      v77 = 0;
      sub_1006E8F1C();
      sub_100017CC4();
      v51 = v72;
      v52 = v73;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v51)
      {
        LOBYTE(v75) = 3;
        sub_100074E44();
        sub_1006E9040(v53, v54);
        sub_1000698D8();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      sub_10001F5D8();
      sub_100141AE4(v49, v55);
LABEL_18:
      v61 = sub_10004E974();
      v63 = v52;
      return v62(v61, v63);
    case 4u:
      v31 = *v20;
      v32 = v20[1];
      v34 = v20[2];
      v33 = v20[3];
      LOBYTE(v75) = 4;
      v77 = 0;
      sub_1006E8F1C();
      sub_100017CC4();
      v35 = v72;
      v36 = v73;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v35)
      {
        v39 = sub_10004E974();
        v40(v39, v36);
      }

      else
      {
        v75 = v31;
        v76 = v32;
        v77 = 4;
        type metadata accessor for CLLocationCoordinate2D(0);
        sub_100049B24();
        sub_1006E9040(v37, v38);
        sub_100017CC4();
        sub_100021100();
        v75 = v34;
        v76 = v33;
        v77 = 5;
        sub_10022C350(&qword_100CA6078);
        sub_1006E8F70(&qword_100CD3048);
        sub_100017CC4();
        sub_100021100();

        LOBYTE(v75) = 7;
        KeyedEncodingContainer.encode(_:forKey:)();
        v61 = sub_10004E974();
        v63 = v36;
        return v62(v61, v63);
      }

    default:
      v24 = v69;
      v25 = v20;
      v26 = v70;
      (*(v69 + 32))(v16, v25, v70);
      LOBYTE(v75) = 0;
      v77 = 0;
      sub_1006E8F1C();
      sub_100017CC4();
      v28 = v72;
      v27 = v73;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v28)
      {
        LOBYTE(v75) = 1;
        sub_1000108EC();
        sub_1006E9040(v29, v30);
        sub_1000698D8();
        sub_100021100();
      }

      (*(v24 + 8))(v16, v26);
LABEL_11:
      v61 = sub_10004E974();
      v63 = v27;
      return v62(v61, v63);
  }
}

unint64_t sub_1006E87E0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C44E00, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

void sub_1006E8834(char a1)
{
  switch(a1)
  {
    case 2:
      sub_10001C260();
      break;
    case 3:
      sub_100028978();
      break;
    case 6:
      sub_100016D94();
      break;
    default:
      return;
  }
}

unint64_t sub_1006E88EC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C44EE0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

void sub_1006E8938(char a1)
{
  switch(a1)
  {
    case 1:
      sub_10001C260();
      break;
    case 2:
      sub_100016D94();
      break;
    case 3:
      sub_100028978();
      break;
    default:
      return;
  }
}

unint64_t sub_1006E89D8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1006E87E0(*a1);
  *a2 = result;
  return result;
}

void sub_1006E8A08(void *a1@<X8>)
{
  sub_1006E8834(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_1006E8A50@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1006E882C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1006E8A78(uint64_t a1)
{
  v2 = sub_1006E8E14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006E8AB4(uint64_t a1)
{
  v2 = sub_1006E8E14();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1006E8B14@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1006E88EC(*a1);
  *a2 = result;
  return result;
}

void sub_1006E8B44(void *a1@<X8>)
{
  sub_1006E8938(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_1006E8C50@<X0>(uint64_t *a1@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CD3050);
  a1[4] = sub_1006E8FDC();
  sub_100042FB0(a1);
  type metadata accessor for PreviewLocation();
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1006E8D18()
{
  sub_1006E9040(&qword_100CD3060, type metadata accessor for PreviewLocation);

  return ShortDescribable.description.getter();
}

unint64_t sub_1006E8E14()
{
  result = qword_100CD3010;
  if (!qword_100CD3010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD3010);
  }

  return result;
}

unint64_t sub_1006E8E68()
{
  result = qword_100CD3018;
  if (!qword_100CD3018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD3018);
  }

  return result;
}

uint64_t sub_1006E8EBC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_1006E8F1C()
{
  result = qword_100CD3038;
  if (!qword_100CD3038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD3038);
  }

  return result;
}

uint64_t sub_1006E8F70(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(&qword_100CA6078);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1006E8FDC()
{
  result = qword_100CD3058;
  if (!qword_100CD3058)
  {
    sub_10022E824(&qword_100CD3050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD3058);
  }

  return result;
}

uint64_t sub_1006E9040(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for PreviewLocation.CodingType(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PreviewLocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1006E9244()
{
  result = qword_100CD3068;
  if (!qword_100CD3068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD3068);
  }

  return result;
}

unint64_t sub_1006E929C()
{
  result = qword_100CD3070;
  if (!qword_100CD3070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD3070);
  }

  return result;
}

unint64_t sub_1006E92F4()
{
  result = qword_100CD3078;
  if (!qword_100CD3078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD3078);
  }

  return result;
}

unint64_t sub_1006E934C()
{
  result = qword_100CD3080;
  if (!qword_100CD3080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD3080);
  }

  return result;
}

unint64_t sub_1006E93A0()
{
  result = qword_100CD3088;
  if (!qword_100CD3088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD3088);
  }

  return result;
}

uint64_t type metadata accessor for LollipopChartOverlayView()
{
  result = qword_100CD30E8;
  if (!qword_100CD30E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006E9468()
{
  sub_10044BFA8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ChartProxy();
    if (v1 <= 0x3F)
    {
      type metadata accessor for GeometryProxy();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Date();
        if (v3 <= 0x3F)
        {
          sub_1006E954C();
          if (v4 <= 0x3F)
          {
            sub_100578820();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1006E954C()
{
  if (!qword_100CD30F8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CD30F8);
    }
  }
}

uint64_t sub_1006E95B8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  sub_10022C350(&qword_100CA2D60);
  sub_1000037E8();
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  v13 = type metadata accessor for LollipopChartOverlayView();
  sub_10066D458(v1 + *(v13 + 40), v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_1000037E8();
    return (*(v14 + 32))(a1, v12);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v3);
  }
}

uint64_t sub_1006E9784@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  type metadata accessor for ChartDragGestureRecognizerRepresentable();
  sub_1000037C4();
  v38 = v2;
  v39 = v3;
  __chkstk_darwin(v2);
  sub_1000037D8();
  v37 = v5 - v4;
  type metadata accessor for LocalCoordinateSpace();
  sub_1000037C4();
  v33 = v6;
  v34 = v7;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = type metadata accessor for LollipopChartOverlayView();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  sub_10022C350(qword_100CD3140);
  sub_1000037C4();
  v35 = v14;
  v36 = v15;
  __chkstk_darwin(v14);
  v32 = v30 - v16;
  v31 = static Color.clear.getter();
  v41 = v31;
  LOWORD(v42) = 256;
  BYTE2(v42) = 0;
  sub_1006EA16C(v1, v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = swift_allocObject();
  sub_1006EA1D0(v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  static CoordinateSpaceProtocol<>.local.getter();
  v19 = sub_10022C350(&qword_100CCE098);
  v20 = sub_10064B084();
  v21 = v33;
  View.onContinuousHover<A>(coordinateSpace:perform:)();

  (*(v34 + 8))(v10, v21);

  sub_1006EA16C(v30[1], v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = swift_allocObject();
  sub_1006EA1D0(v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v17);
  v23 = v37;
  ChartDragGestureRecognizerRepresentable.init(isRecognizedHandler:)();
  v41 = v19;
  v42 = v21;
  v43 = v20;
  v44 = &protocol witness table for LocalCoordinateSpace;
  sub_100006594();
  swift_getOpaqueTypeConformance2();
  sub_100010904();
  sub_1006EA2B4(v24, v25);
  v26 = v35;
  v27 = v38;
  v28 = v32;
  View.gestureRecognizer<A>(_:)();
  (*(v39 + 8))(v23, v27);
  return (*(v36 + 8))(v28, v26);
}

uint64_t sub_1006E9B60()
{
  v1 = v0;
  v59 = type metadata accessor for DetailHeroChartLollipopPosition(0);
  __chkstk_darwin(v59);
  v58 = (&v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for LayoutDirection();
  v56 = *(v3 - 8);
  v57 = v3;
  __chkstk_darwin(v3);
  v55 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v50 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v60 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v61 = &v50 - v12;
  __chkstk_darwin(v13);
  v15 = &v50 - v14;
  v16 = type metadata accessor for LollipopChartOverlayView();
  ChartProxy.plotAreaFrame.getter();
  type metadata accessor for CGRect(0);
  GeometryProxy.subscript.getter();

  ChartProxy.value<A>(atX:as:)();
  if (sub_100024D10(v7, 1, v8) == 1)
  {
    return sub_1001AEDF4(v7);
  }

  v18 = *(v9 + 32);
  v18(v15, v7, v8);
  v19 = ChartProxy.yDomain<A>(dataType:)();
  if (*(v19 + 16))
  {
    v54 = v15;
    v20 = *(v19 + 32);
    v21 = sub_1002F5568(v19);
    v23 = v22;

    if (v23)
    {
      return (*(v9 + 8))(v54, v8);
    }

    else
    {
      v53 = v21;
      v24 = *(v16 + 32);
      sub_1006EA2B4(&qword_100CA7020, &type metadata accessor for Date);
      v50 = v24;
      v25 = v54;
      v26 = dispatch thunk of static Comparable.< infix(_:_:)();
      v27 = *(v9 + 16);
      v51 = v27;
      v52 = v9 + 16;
      if (v26)
      {
        v28 = &v1[v50];
        v29 = v60;
        v30 = v60;
      }

      else
      {
        v29 = v60;
        v30 = v60;
        v28 = v25;
      }

      v27(v30, v28, v8);
      v31 = *(v16 + 28);
      if (dispatch thunk of static Comparable.>= infix(_:_:)())
      {
        v32 = v9;
        (*(v9 + 8))(v29, v8);
        v33 = v61;
        v51(v61, &v1[v31], v8);
      }

      else
      {
        v33 = v61;
        v18(v61, v29, v8);
        v32 = v9;
      }

      v34 = ChartProxy.position<A>(forX:)();
      v36 = v53;
      v35 = v54;
      if (v37)
      {
        v38 = *(v32 + 8);
        v38(v33, v8);
        return (v38)(v35, v8);
      }

      else
      {
        v39 = *&v34;
        v40 = v55;
        sub_1006E95B8(v55);
        v42 = v56;
        v41 = v57;
        v43 = (*(v56 + 88))(v40, v57);
        v44 = enum case for LayoutDirection.rightToLeft(_:);
        (*(v42 + 8))(v40, v41);
        if (v43 == v44)
        {
          ChartProxy.plotAreaSize.getter();
          v39 = v45 - v39;
        }

        sub_1000161C0(v1, *(v1 + 3));
        v47 = v58;
        v46 = v59;
        v48 = v61;
        v51(v58 + *(v59 + 20), v61, v8);
        *v47 = v39;
        *(v47 + *(v46 + 24)) = v20;
        *(v47 + *(v46 + 28)) = v36;
        sub_100639A48(v47);
        sub_100385550(v47);
        v49 = *(v32 + 8);
        v49(v48, v8);
        return (v49)(v54, v8);
      }
    }
  }

  else
  {
    (*(v9 + 8))(v15, v8);
  }
}

uint64_t sub_1006EA120(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  if ((a3 & 1) == 0)
  {
    return sub_1006E9B60();
  }

  sub_1000161C0(a4, a4[3]);
  return sub_100639B28();
}

uint64_t sub_1006EA16C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LollipopChartOverlayView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006EA1D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LollipopChartOverlayView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006EA2B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006EA300(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for UserInterfaceSizeClass() - 8);
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  if (*(v6 + 84))
  {
    v11 = *(v6 + 64);
  }

  else
  {
    v11 = *(v6 + 64) + 1;
  }

  v12 = 8;
  if (v11 > 8)
  {
    v12 = v11;
  }

  v13 = *(v8 + 80);
  v14 = *(v8 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v15 = ((v13 + ((v12 + 10) & 0xFFFFFFFFFFFFFFF8) + 40) & ~v13) + v14;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v10 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v19 < 2)
    {
LABEL_28:
      v21 = (a1 + v12 + 10) & 0xFFFFFFFFFFFFFFF8;
      if ((v9 & 0x80000000) != 0)
      {

        return sub_100024D10((v21 + v13 + 40) & ~v13, v9, v7);
      }

      else
      {
        v22 = *(v21 + 24);
        if (v22 >= 0xFFFFFFFF)
        {
          LODWORD(v22) = -1;
        }

        return (v22 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_28;
  }

LABEL_20:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 > 3)
    {
      LODWORD(v15) = 4;
    }

    switch(v15)
    {
      case 2:
        LODWORD(v15) = *a1;
        break;
      case 3:
        LODWORD(v15) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v15) = *a1;
        break;
      default:
        LODWORD(v15) = *a1;
        break;
    }
  }

  return v10 + (v15 | v20) + 1;
}

void sub_1006EA538(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for UserInterfaceSizeClass() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  v11 = *(a4 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  if (v9)
  {
    v15 = v10;
  }

  else
  {
    v15 = v10 + 1;
  }

  v16 = 8;
  if (v15 > 8)
  {
    v16 = v15;
  }

  v17 = *(v12 + 80);
  v18 = ((v17 + ((v16 + 10) & 0xFFFFFFFFFFFFFFF8) + 40) & ~v17) + *(v12 + 64);
  v19 = 8 * v18;
  if (a3 <= v14)
  {
    v20 = 0;
  }

  else if (v18 <= 3)
  {
    v23 = ((a3 - v14 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v23))
    {
      v20 = 4;
    }

    else
    {
      if (v23 < 0x100)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (v23 >= 2)
      {
        v20 = v24;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 1;
  }

  if (v14 >= a2)
  {
    switch(v20)
    {
      case 1:
        a1[v18] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v18] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_49:
        __break(1u);
        break;
      case 4:
        *&a1[v18] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v26 = &a1[v16 + 10] & 0xFFFFFFFFFFFFFFF8;
          if ((v13 & 0x80000000) != 0)
          {

            sub_10001B350((v26 + v17 + 40) & ~v17, a2, v13, v11);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *(v26 + 8) = 0u;
            *(v26 + 24) = 0u;
            *v26 = a2 & 0x7FFFFFFF;
          }

          else
          {
            *(v26 + 24) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v21 = ~v14 + a2;
    if (v18 < 4)
    {
      v22 = (v21 >> v19) + 1;
      if (v18)
      {
        v25 = v21 & ~(-1 << v19);
        bzero(a1, v18);
        if (v18 == 3)
        {
          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        else if (v18 == 2)
        {
          *a1 = v25;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v21;
      v22 = 1;
    }

    switch(v20)
    {
      case 1:
        a1[v18] = v22;
        break;
      case 2:
        *&a1[v18] = v22;
        break;
      case 3:
        goto LABEL_49;
      case 4:
        *&a1[v18] = v22;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1006EA810(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA2548 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA2558 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA2550 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA2540 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA2538 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:
}

uint64_t sub_1006EA97C(char a1, char a2, uint64_t a3)
{
  v79 = type metadata accessor for TipPriorityQueue.GridEntry();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v9);
  v76 = &v72 - v10;
  v11 = sub_10022C350(&qword_100CA5008);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  v14 = &v72 - v13;
  v15 = type metadata accessor for LocationComponentViewModel();
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v18);
  v20 = &v72 - v19;
  __chkstk_darwin(v21);
  sub_100013628();
  __chkstk_darwin(v22);
  v24 = &v72 - v23;
  __chkstk_darwin(v25);
  v27 = &v72 - v26;
  v28 = sub_10022C350(&qword_100CAC7F8);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v31);
  v33 = &v72 - v32;
  __chkstk_darwin(v34);
  v36 = &v72 - v35;
  v37 = sub_1006EA810(a1, a2);
  v38 = OBJC_IVAR____TtCV7Weather18DefaultNewsContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a3 + v38, v14, &qword_100CA5008);
  v39 = type metadata accessor for LocationComponentContainerViewModel();
  if (sub_100024D10(v14, 1, v39) == 1)
  {
    sub_1000180EC(v14, &qword_100CA5008);
  }

  else
  {
    sub_10001BD64();
    sub_10031694C(&v14[v40], v24, v41);
    sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
    sub_100011474();
    sub_1001B6FB0(v24, v27, v42);
    sub_100566A5C(v37, v81);
    if ((v82 & 1) == 0)
    {
      sub_100011474();
      sub_1001B6FB0(v27, v33, v45);
      v43 = 0;
      v44 = v79;
      v46 = &v33[*(v79 + 20)];
      v47 = v81[1];
      *v46 = v81[0];
      *(v46 + 1) = v47;
      goto LABEL_7;
    }

    sub_1003169AC(v27, type metadata accessor for LocationComponentViewModel);
  }

  v43 = 1;
  v44 = v79;
LABEL_7:
  sub_10001B350(v33, v43, 1, v44);
  sub_1003168DC(v33, v36);
  sub_10031694C(a3 + *(v39 + 20) + OBJC_IVAR____TtCV7Weather18DefaultNewsContent8_Storage_airQuality, v3, type metadata accessor for LocationComponentViewModel);
  sub_100566A40(v37, v83);
  sub_100924AFC(v3, v83, v80);
  sub_10031694C(*(a3 + 16) + *(v39 + 20) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v20, type metadata accessor for LocationComponentViewModel);
  sub_100566A94(v37, v84);
  v48 = v74;
  if (v85 & 1) != 0 || (sub_100011474(), v49 = v76, sub_1001B6FB0(v20, v76, v50), v51 = (v49 + *(v44 + 20)), v52 = v84[1], *v51 = v84[0], v51[1] = v52, sub_100035AD0(v36, v48, &qword_100CAC7F8), sub_10001BD64(), v55 = v73, sub_10031694C(v53 + v54, v73, v56), sub_100566AB0(v37, v86), v57 = v77, (v87))
  {
    sub_100003E3C();
  }

  else
  {
    sub_100011474();
    sub_1001B6FB0(v55, v57, v58);
    v59 = (v57 + *(v44 + 20));
    v60 = v86[1];
    *v59 = v86[0];
    v59[1] = v60;
    sub_10001BD64();
    v63 = v75;
    sub_10031694C(v61 + v62, v75, v64);
    sub_100566AE8(v37, v88);
    if ((v89 & 1) == 0)
    {

      sub_100011474();
      v65 = v63;
      v66 = v78;
      sub_1001B6FB0(v65, v78, v67);
      v68 = (v66 + *(v44 + 20));
      v69 = v88[1];
      *v68 = v88[0];
      v68[1] = v69;
      v70 = sub_100924C14(v80, v49, v48, v57, v66);
      sub_1000180EC(v36, &qword_100CAC7F8);
      return v70;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1006EB000(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = v122 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather18DefaultNewsContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a1 + v10, v5, &qword_100CA5008);
  v11 = sub_100024D10(v5, 1, v6);
  v126 = a1;
  if (v11 == 1)
  {
    sub_1000180EC(v5, &qword_100CA5008);
    sub_10022C350(&qword_100CAC7E8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A41BA0;
    sub_10022C350(&qword_100CAC7F0);
    v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v14 = *(v7 + 72);
    v15 = *(v7 + 80);
    v16 = swift_allocObject();
    sub_10001361C(v16, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(a1 + v17, v16 + v13, v18);
    *(v12 + 32) = sub_1001B38A0(v16);
    *(v12 + 40) = v19;
    *(v12 + 48) = v20;
    v21 = sub_100013600();
    sub_100003E18(v21);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v21 + v13, v7);
    *(v12 + 56) = sub_1001B38A0(v21);
    *(v12 + 64) = v22;
    *(v12 + 72) = v23;
    v24 = sub_100013600();
    sub_100003E18(v24);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v24 + v13, v7);
    *(v12 + 80) = sub_1001B38A0(v24);
    *(v12 + 88) = v25;
    *(v12 + 96) = v26;
    v27 = sub_100013600();
    sub_100003E18(v27);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather18DefaultNewsContent8_Storage_airQuality, v27 + v13, v7);
    *(v12 + 104) = sub_1001B38A0(v27);
    *(v12 + 112) = v28;
    *(v12 + 120) = v29;
    v123 = (v13 + 2 * v14);
    v124 = v14;
    v30 = v14;
    v31 = v15;
    v32 = swift_allocObject();
    v33 = sub_10001361C(v32, xmmword_100A2D320) + v13;
    v34 = a1;
    v35 = *(a1 + 16);
    v36 = v34;
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v35 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v33[v30], v7);
    *(v12 + 128) = sub_1001B38A0(v32);
    *(v12 + 136) = v37;
    *(v12 + 144) = v38;
    v125 = v31;
    v39 = swift_allocObject();
    sub_1000056EC(v39);
    v41 = v40 + v13;
    v42 = *(v36 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v42 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v41 + v124, v7);
    *(v12 + 152) = sub_1001B38A0(v32);
    *(v12 + 160) = v43;
    *(v12 + 168) = v44;
    v45 = swift_allocObject();
    sub_1000056EC(v45);
    v47 = v46 + v13;
    v48 = v126;
    v49 = *(v126 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v50 = v124;
    sub_10031694C(v49 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v47 + v124, v7);
    *(v12 + 176) = sub_1001B38A0(v32);
    *(v12 + 184) = v51;
    *(v12 + 192) = v52;
    v53 = swift_allocObject();
    sub_1000056EC(v53);
    v55 = v54 + v13;
    v56 = *(v48 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    v57 = v55 + v50;
    v58 = v50;
    sub_10031694C(v56 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v57, v7);
    v59 = sub_1001B38A0(v32);
    sub_10000CDFC(v59, v60, v61);
    v62 = swift_allocObject();
    sub_100003E18(v62);
    v64 = v63 + v13;
    v65 = *(v48 + 16);
    sub_10031694C(v65 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v63 + v13, v7);
    sub_10031694C(v65 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v64 + v58, v7);
    *(v12 + 224) = sub_1001B38A0(v62);
    *(v12 + 232) = v66;
    *(v12 + 240) = v67;
  }

  else
  {
    sub_1001B6FB0(v5, v9, type metadata accessor for LocationComponentContainerViewModel);
    sub_10022C350(&qword_100CAC7E8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A30470;
    v68 = sub_10022C350(&qword_100CAC7F0);
    v69 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v70 = *(v7 + 72);
    v71 = *(v7 + 80);
    v72 = v68;
    v73 = swift_allocObject();
    sub_10001361C(v73, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(a1 + v74, v73 + v69, v75);
    *(v12 + 32) = sub_1001B38A0(v73);
    *(v12 + 40) = v76;
    *(v12 + 48) = v77;
    sub_100016B54();
    v78 = swift_allocObject();
    sub_1000056EC(v78);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v73 + v69, v7);
    *(v12 + 56) = sub_1001B38A0(v73);
    *(v12 + 64) = v79;
    *(v12 + 72) = v80;
    sub_100016B54();
    v81 = swift_allocObject();
    sub_1000056EC(v81);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v73 + v69, v7);
    *(v12 + 80) = sub_1001B38A0(v73);
    *(v12 + 88) = v82;
    *(v12 + 96) = v83;
    sub_100016B54();
    v84 = swift_allocObject();
    sub_1000056EC(v84);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather18DefaultNewsContent8_Storage_airQuality, v73 + v69, v7);
    *(v12 + 104) = sub_1001B38A0(v73);
    *(v12 + 112) = v85;
    *(v12 + 120) = v86;
    sub_100016B54();
    v122[1] = v72;
    v87 = swift_allocObject();
    sub_1000056EC(v87);
    sub_10031694C(v9, v88 + v69, v7);
    *(v12 + 128) = sub_1001B38A0(v73);
    *(v12 + 136) = v89;
    *(v12 + 144) = v90;
    v91 = v70;
    v124 = v70;
    v92 = swift_allocObject();
    v93 = sub_10001361C(v92, xmmword_100A2D320);
    v123 = v9;
    v94 = v93 + v69;
    v95 = a1;
    v96 = *(a1 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v96 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v94[v91], v7);
    *(v12 + 152) = sub_1001B38A0(v92);
    *(v12 + 160) = v97;
    *(v12 + 168) = v98;
    v125 = v71;
    v99 = swift_allocObject();
    sub_100003E18(v99);
    v101 = v100 + v69;
    v102 = *(v95 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v102 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v101 + v124, v7);
    *(v12 + 176) = sub_1001B38A0(v99);
    *(v12 + 184) = v103;
    *(v12 + 192) = v104;
    v105 = swift_allocObject();
    sub_100003E18(v105);
    v107 = v106 + v69;
    v108 = *(v95 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v109 = v124;
    sub_10031694C(v108 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v107 + v124, v7);
    v110 = sub_1001B38A0(v105);
    sub_10000CDFC(v110, v111, v112);
    v113 = swift_allocObject();
    *(v113 + 16) = 2;
    *(v113 + 24) = 4;
    v114 = *(v95 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    sub_10031694C(v114 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v113 + v69 + v109, v7);
    *(v12 + 224) = sub_1001B38A0(v113);
    *(v12 + 232) = v115;
    *(v12 + 240) = v116;
    v117 = swift_allocObject();
    *(v117 + 16) = 2;
    *(v117 + 24) = 4;
    v118 = *(v126 + 16);
    sub_10031694C(v118 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v117 + v69, v7);
    sub_10031694C(v118 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v117 + v69 + v109, v7);
    *(v12 + 248) = sub_1001B38A0(v117);
    *(v12 + 256) = v119;
    *(v12 + 264) = v120;
    sub_1003169AC(v123, v7);
  }

  return v12;
}

void sub_1006EB8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A3BC50;
  v21[0] = xmmword_100A2C3F0;
  v21[1] = xmmword_100A3BBF0;
  v23 = v22;
  v24 = v21;
  v20[0] = xmmword_100A3BB70;
  v20[1] = xmmword_100A3AEB0;
  v19[0] = xmmword_100A3BBB0;
  v19[1] = xmmword_100A3BC00;
  v25 = v20;
  v26 = v19;
  v18[0] = xmmword_100A3BB70;
  v18[1] = xmmword_100A2C3F0;
  v17[0] = xmmword_100A2C3F0;
  v17[1] = xmmword_100A3BC00;
  v27 = v18;
  v28 = v17;
  v16[0] = xmmword_100A3BB70;
  v16[1] = xmmword_100A41B80;
  v15[0] = xmmword_100A3BBB0;
  v15[1] = xmmword_100A3BBF0;
  v29 = v16;
  v30 = v15;
  v14[0] = xmmword_100A3BB70;
  v14[1] = xmmword_100A3BBB0;
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BBC0;
  v31 = v14;
  v32 = v13;
  v12[0] = xmmword_100A2C3F0;
  v12[1] = xmmword_100A3BC10;
  v11[0] = xmmword_100A2C3F0;
  v11[1] = xmmword_100A3BC20;
  v33 = v12;
  v34 = v11;
  v10[0] = xmmword_100A3BBB0;
  v10[1] = xmmword_100A3BC20;
  v9[0] = xmmword_100A3BBB0;
  v9[1] = xmmword_100A3BBC0;
  v35 = v10;
  v36 = v9;
  sub_10004E984(a1, a2, a3, a4, a5, a6, a7, a8, 0);
  qword_100D90810 = v8;
}

void sub_1006EB9CC()
{
  v14[0] = xmmword_100A3BB70;
  v14[1] = xmmword_100A3BC50;
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BC00;
  v15 = v14;
  v16 = v13;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3AEB0;
  v11[0] = xmmword_100A3BBB0;
  v11[1] = xmmword_100A3BC20;
  v17 = v12;
  v18 = v11;
  v10[0] = xmmword_100A3BB70;
  v10[1] = xmmword_100A2C3F0;
  v9[0] = xmmword_100A2C3F0;
  v9[1] = xmmword_100A3BC20;
  v19 = v10;
  v20 = v9;
  v8[0] = xmmword_100A3BBB0;
  v8[1] = xmmword_100A3BC00;
  v7[0] = xmmword_100A3BB70;
  v7[1] = xmmword_100A3BBB0;
  v21 = v8;
  v22 = v7;
  v6[0] = xmmword_100A2C3F0;
  v6[1] = xmmword_100A3BC10;
  v5[0] = xmmword_100A2C3F0;
  v5[1] = xmmword_100A3BC30;
  v23 = v6;
  v24 = v5;
  v4[0] = xmmword_100A2C3F0;
  v4[1] = xmmword_100A3BB80;
  v3[0] = xmmword_100A3BBB0;
  v3[1] = xmmword_100A3BB80;
  v25 = v4;
  v26 = v3;
  v2[0] = xmmword_100A3BBB0;
  v2[1] = xmmword_100A3BC10;
  v1[0] = xmmword_100A3BBB0;
  v1[1] = xmmword_100A3BC30;
  v27 = v2;
  v28 = v1;
  sub_100557528();
  qword_100D90818 = v0;
}

void sub_1006EBADC()
{
  v35[0] = xmmword_100A2D320;
  v35[1] = xmmword_100A3BBD0;
  v34[0] = xmmword_100A3BC40;
  v34[1] = xmmword_100A3BB80;
  v36 = v35;
  v37 = v34;
  v33[0] = xmmword_100A3BB70;
  v33[1] = xmmword_100A3AEB0;
  v32[0] = xmmword_100A3BBD0;
  v32[1] = xmmword_100A3BC50;
  v38 = v33;
  v39 = v32;
  v31[0] = xmmword_100A3BB70;
  v31[1] = xmmword_100A2C3F0;
  v30[0] = xmmword_100A2C3F0;
  v30[1] = xmmword_100A3BB80;
  v40 = v31;
  v41 = v30;
  v29[0] = xmmword_100A2D320;
  v29[1] = xmmword_100A3BB70;
  v28[0] = xmmword_100A3BB70;
  v28[1] = xmmword_100A3BC50;
  v42 = v29;
  v43 = v28;
  v27[0] = xmmword_100A3BB70;
  v27[1] = xmmword_100A3BBB0;
  v26[0] = xmmword_100A3BBD0;
  v26[1] = xmmword_100A3BB80;
  v44 = v27;
  v45 = v26;
  v25[0] = xmmword_100A3BC40;
  v25[1] = xmmword_100A3BC50;
  *(&v23 + 1) = 4;
  v24 = xmmword_100A3BC60;
  sub_10000CA80(v25, v13, v14, v15, v16, v17, *(&v17 + 1), v18, *(&v18 + 1), v19, v20, v21, v22, 3);
  v17 = v1;
  v18 = v0;
  v46 = v2;
  v47 = &v17;
  sub_10004E984(v3, v4, v5, v6, v7, v8, v9, v10, v11);
  qword_100D90820 = v12;
}

void sub_1006EBBE0()
{
  v16[0] = xmmword_100A2D320;
  v16[1] = xmmword_100A2C3F0;
  v15[0] = xmmword_100A3BC40;
  v15[1] = xmmword_100A3BC50;
  v17 = v16;
  v18 = v15;
  v13 = 1;
  v14 = 4;
  v11[0] = xmmword_100A3BBD0;
  v11[1] = xmmword_100A3BC60;
  v12 = xmmword_100A3BB70;
  v19 = &v12;
  v20 = v11;
  v10[0] = xmmword_100A2D320;
  v10[1] = xmmword_100A3BBB0;
  v9[0] = xmmword_100A3BBD0;
  v9[1] = xmmword_100A3BC50;
  v21 = v10;
  v22 = v9;
  v8[0] = xmmword_100A3BB70;
  v8[1] = xmmword_100A3BC60;
  v7[0] = xmmword_100A3BB70;
  v7[1] = xmmword_100A3BBB0;
  v23 = v8;
  v24 = v7;
  v6[0] = xmmword_100A2C3F0;
  v6[1] = xmmword_100A3BC50;
  v5[0] = xmmword_100A3BC40;
  v5[1] = xmmword_100A3BC60;
  v25 = v6;
  v26 = v5;
  v4[0] = xmmword_100A3BC40;
  v4[1] = xmmword_100A3BC40;
  v3[0] = xmmword_100A3BBD0;
  v3[1] = xmmword_100A3BC40;
  v27 = v4;
  v28 = v3;
  v2[0] = xmmword_100A3BBB0;
  v2[1] = xmmword_100A3BC50;
  v1[0] = xmmword_100A2D320;
  v1[1] = xmmword_100A3BBD0;
  v29 = v2;
  v30 = v1;
  sub_100557528();
  qword_100D90828 = v0;
}

void sub_1006EBCEC()
{
  v35[0] = xmmword_100A2D320;
  v35[1] = xmmword_100A2C3F0;
  v34[0] = xmmword_100A3BC50;
  v34[1] = xmmword_100A3BC60;
  v36 = v35;
  v37 = v34;
  v33[0] = xmmword_100A3BB70;
  v33[1] = xmmword_100A3F970;
  v32[0] = xmmword_100A3BC60;
  v32[1] = xmmword_100A3BC40;
  v38 = v33;
  v39 = v32;
  v31[0] = xmmword_100A41B90;
  v31[1] = xmmword_100A3BBB0;
  v30[0] = xmmword_100A3BBD0;
  v30[1] = xmmword_100A3BC60;
  v40 = v31;
  v41 = v30;
  v29[0] = xmmword_100A3BC90;
  v29[1] = xmmword_100A3BD20;
  v28[0] = xmmword_100A3BB70;
  v28[1] = xmmword_100A3BC60;
  v42 = v29;
  v43 = v28;
  v27[0] = xmmword_100A3BB70;
  v27[1] = xmmword_100A3BBB0;
  v26[0] = xmmword_100A3BC60;
  v26[1] = xmmword_100A3BC60;
  v44 = v27;
  v45 = v26;
  v25[0] = xmmword_100A3BC40;
  v25[1] = xmmword_100A3BC40;
  *(&v23 + 1) = 3;
  v24 = xmmword_100A3BC40;
  sub_10000CA80(v25, v13, v14, v15, v16, v17, *(&v17 + 1), v18, *(&v18 + 1), v19, v20, v21, v22, 2);
  v17 = v1;
  v18 = v0;
  v46 = v2;
  v47 = &v17;
  sub_10004E984(v3, v4, v5, v6, v7, v8, v9, v10, v11);
  qword_100D90830 = v12;
}

uint64_t sub_1006EBE00(uint64_t a1, void (*a2)(char *))
{
  v5 = type metadata accessor for LocationComponentContainerViewModel();
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_100003848();
  v32 = v7;
  __chkstk_darwin(v8);
  sub_100003878();
  v31 = v9;
  __chkstk_darwin(v10);
  sub_100013628();
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  v14 = type metadata accessor for LocationViewComponent();
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10022C350(&qword_100CA5008);
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v29 - v23;

  sub_1005D71C4(v25, a2);
  v30 = v26;

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather32LocationDefaultNewsConfiguration8_Storage_map, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_10001B350(v24, 0, 1, v5);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather32LocationDefaultNewsConfiguration8_Storage_airQuality, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather32LocationDefaultNewsConfiguration8_Storage_newsArticle, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_100035AD0(v24, v21, &qword_100CA5008);
  sub_10031694C(v13, v31, type metadata accessor for LocationComponentContainerViewModel);
  sub_10031694C(v2, v32, type metadata accessor for LocationComponentContainerViewModel);
  type metadata accessor for DefaultNewsContent._Storage(0);
  swift_allocObject();
  v27 = sub_1002BDFC0(v30);
  sub_1003169AC(v2, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v13, type metadata accessor for LocationComponentContainerViewModel);
  sub_1000180EC(v24, &qword_100CA5008);
  return v27;
}

uint64_t sub_1006EC13C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsArticleComponentViewModel(0);

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_1006EC184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NewsArticleComponentViewModel(0);

  return sub_10001B350(a1, a2, a3, v6);
}

uint64_t sub_1006EC1DC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0x8000000100ADBAB0;
  v1._object = 0x8000000100ADBA80;
  v5._countAndFlagsBits = 0xD000000000000030;
  v1._countAndFlagsBits = 0xD000000000000022;
  v2._countAndFlagsBits = 1937204558;
  v2._object = 0xE400000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1006EC294(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CD3278);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  v8 = *(v5 + 56);
  sub_1006EC354(a1, &v10 - v6);
  sub_1006EC354(a2, &v7[v8]);
  LOBYTE(a2) = sub_1003545AC(v7, &v7[v8]);
  sub_1006EC3B8(&v7[v8]);
  sub_1006EC3B8(v7);
  return a2 & 1;
}

uint64_t sub_1006EC354(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailComponentViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006EC3B8(uint64_t a1)
{
  v2 = type metadata accessor for NewsArticleComponentViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1006EC444(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, unint64_t, uint64_t, uint64_t))
{

  sub_1000C9450(a3);
}

uint64_t sub_1006EC488()
{

  sub_100006F14(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CalendarHeaderView()
{
  result = qword_100CD3428;
  if (!qword_100CD3428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006EC568()
{
  sub_1000077F0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_1002B3B88();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1006EC634@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v3 = sub_10022C350(&qword_100CD3478);
  return sub_1006EC684(v1, a1 + *(v3 + 36));
}

uint64_t sub_1006EC684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v145 = a2;
  v139 = type metadata accessor for AccessibilityChildBehavior();
  v135 = *(v139 - 8);
  __chkstk_darwin(v139);
  v133 = &v113 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for Font.TextStyle();
  v125 = *(v127 - 8);
  __chkstk_darwin(v127);
  v123 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_10022C350(&qword_100CD3480);
  v134 = *(v136 - 8);
  __chkstk_darwin(v136);
  v132 = &v113 - v5;
  v138 = sub_10022C350(&qword_100CD3488);
  __chkstk_darwin(v138);
  v148 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v147 = &v113 - v8;
  v9 = type metadata accessor for EnvironmentValues();
  v116 = *(v9 - 8);
  __chkstk_darwin(v9);
  v115 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CalendarHeaderView();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = sub_10022C350(&qword_100CD3490);
  __chkstk_darwin(v14);
  v140 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v113 - v17;
  v146 = sub_10022C350(&qword_100CD3498);
  v150 = *(v146 - 8);
  __chkstk_darwin(v146);
  v141 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v113 - v21;
  v23 = sub_10022C350(&qword_100CD34A0);
  __chkstk_darwin(v23 - 8);
  v143 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v144 = &v113 - v26;
  __chkstk_darwin(v27);
  v142 = &v113 - v28;
  __chkstk_darwin(v29);
  v151 = &v113 - v30;
  sub_1006ED800(a1, &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = *(v12 + 80);
  v32 = (v31 + 16) & ~v31;
  v128 = v31;
  v126 = v32 + v13;
  v33 = swift_allocObject();
  v130 = v32;
  v131 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006ED864(v131, v33 + v32);
  v129 = sub_1006ED8E0();
  Button.init(action:label:)();
  v137 = v11;
  LODWORD(v11) = *(a1 + *(v11 + 32));
  KeyPath = swift_getKeyPath();
  v35 = swift_allocObject();
  *(v35 + 16) = v11;
  v149 = v14;
  v36 = &v18[*(v14 + 36)];
  *v36 = KeyPath;
  v36[1] = sub_100168F20;
  v36[2] = v35;
  v114 = v9;
  if (v11 == 1)
  {
    v37 = *a1;
    if (*(a1 + 8) != 1)
    {

      static os_log_type_t.fault.getter();
      v38 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v39 = v115;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000E4DF8(v37, 0);
      (*(v116 + 8))(v39, v9);
    }
  }

  v40 = sub_1006EDB28();
  v41 = v149;
  View.isHidden(_:defaultAccessibilityHidden:)();
  sub_1000180EC(v18, &qword_100CD3490);
  LocalizedStringKey.init(stringLiteral:)();
  v42 = Text.init(_:tableName:bundle:comment:)();
  v44 = v43;
  v46 = v45;
  __dst[0] = v41;
  __dst[1] = v40;
  v124 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = v146;
  v122 = OpaqueTypeConformance2;
  View.accessibilityLabel(_:)();
  sub_10010CD64(v42, v44, v46 & 1);

  v49 = *(v150 + 8);
  v150 += 8;
  v121 = v49;
  v49(v22, v48);
  v50 = *(a1 + 16);
  v51 = *(a1 + 24);
  v118 = a1;
  v119 = v50;
  v117 = v51;
  __dst[0] = v50;
  __dst[1] = v51;
  v120 = sub_10002D5A4();
  swift_bridgeObjectRetain_n();
  v52 = Text.init<A>(_:)();
  v54 = v53;
  v56 = v55;
  v57 = v125;
  v58 = v123;
  v59 = v127;
  (*(v125 + 104))(v123, enum case for Font.TextStyle.body(_:), v127);
  static Font.Weight.semibold.getter();
  static Font.system(_:weight:)();
  (*(v57 + 8))(v58, v59);
  v60 = Text.font(_:)();
  v62 = v61;
  LOBYTE(v59) = v63;

  sub_10010CD64(v52, v54, v56 & 1);

  static Color.primary.getter();
  v64 = Text.foregroundColor(_:)();
  v66 = v65;
  v68 = v67;
  v70 = v69;

  sub_10010CD64(v60, v62, v59 & 1);

  LOBYTE(v52) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  LOBYTE(__dst[0]) = v68 & 1;
  LOBYTE(v154[0]) = 0;
  v79 = swift_getKeyPath();
  LOBYTE(__dst[0]) = 0;
  v154[0] = v64;
  v154[1] = v66;
  LOBYTE(v154[2]) = v68 & 1;
  v154[3] = v70;
  LOBYTE(v154[4]) = v52;
  v154[5] = v72;
  v154[6] = v74;
  v154[7] = v76;
  v154[8] = v78;
  LOBYTE(v154[9]) = 0;
  v154[10] = 0xBFF0000000000000;
  v154[11] = v79;
  v154[12] = 1;
  LOBYTE(v154[13]) = 0;
  v154[14] = 5;
  LOBYTE(v154[15]) = 0;
  v80 = v133;
  static AccessibilityChildBehavior.ignore.getter();
  v81 = sub_10022C350(&qword_100CD34C8);
  v82 = sub_1006EDC0C();
  v83 = v132;
  View.accessibilityElement(children:)();
  (*(v135 + 8))(v80, v139);
  memcpy(__dst, v154, 0x79uLL);
  sub_1000180EC(__dst, &qword_100CD34C8);
  v154[0] = v119;
  v154[1] = v117;
  v152 = v81;
  v153 = v82;
  swift_getOpaqueTypeConformance2();
  v84 = v148;
  v85 = v136;
  View.accessibilityValue<A>(_:)();

  (*(v134 + 8))(v83, v85);
  v86 = v118;
  v87 = v131;
  sub_1006ED800(v118, v131);
  v88 = swift_allocObject();
  v89 = v130;
  sub_1006ED864(v87, v88 + v130);
  ModifiedContent<>.accessibilityAdjustableAction(_:)();

  sub_1000180EC(v84, &qword_100CD3488);
  sub_1006ED800(v86, v87);
  v90 = swift_allocObject();
  sub_1006ED864(v87, v90 + v89);
  v91 = v140;
  Button.init(action:label:)();
  LODWORD(v85) = *(v86 + *(v137 + 36));
  v92 = swift_getKeyPath();
  v93 = swift_allocObject();
  *(v93 + 16) = v85;
  v94 = (v91 + *(v149 + 36));
  *v94 = v92;
  v94[1] = sub_1002B09C4;
  v94[2] = v93;
  if (v85 == 1)
  {
    v95 = *v86;
    if (*(v86 + 8) != 1)
    {

      static os_log_type_t.fault.getter();
      v96 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v97 = v115;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000E4DF8(v95, 0);
      (*(v116 + 8))(v97, v114);
    }
  }

  v98 = v141;
  View.isHidden(_:defaultAccessibilityHidden:)();
  sub_1000180EC(v91, &qword_100CD3490);
  LocalizedStringKey.init(stringLiteral:)();
  v99 = Text.init(_:tableName:bundle:comment:)();
  v101 = v100;
  v103 = v102;
  v104 = v142;
  v105 = v146;
  View.accessibilityLabel(_:)();
  sub_10010CD64(v99, v101, v103 & 1);

  v121(v98, v105);
  v106 = v144;
  sub_100035AD0(v151, v144, &qword_100CD34A0);
  v107 = v147;
  v108 = v148;
  sub_100035AD0(v147, v148, &qword_100CD3488);
  v109 = v143;
  sub_100035AD0(v104, v143, &qword_100CD34A0);
  v110 = v145;
  sub_100035AD0(v106, v145, &qword_100CD34A0);
  v111 = sub_10022C350(&qword_100CD3500);
  sub_100035AD0(v108, v110 + *(v111 + 48), &qword_100CD3488);
  sub_100035AD0(v109, v110 + *(v111 + 64), &qword_100CD34A0);
  sub_1000180EC(v104, &qword_100CD34A0);
  sub_1000180EC(v107, &qword_100CD3488);
  sub_1000180EC(v151, &qword_100CD34A0);
  sub_1000180EC(v109, &qword_100CD34A0);
  sub_1000180EC(v108, &qword_100CD3488);
  return sub_1000180EC(v106, &qword_100CD34A0);
}

uint64_t sub_1006ED584(uint64_t a1)
{
  v2 = type metadata accessor for CalendarHeaderView();
  sub_1000161C0((a1 + *(v2 + 40)), *(a1 + *(v2 + 40) + 24));
  return sub_1008C9750(a1 + *(v2 + 24));
}

int *sub_1006ED5F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessibilityAdjustmentDirection();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for AccessibilityAdjustmentDirection.increment(_:))
  {
    result = type metadata accessor for CalendarHeaderView();
    if (*(a2 + result[9]))
    {
      return result;
    }

    v11 = result;
    sub_1000161C0((a2 + result[10]), *(a2 + result[10] + 24));
    v12 = v11[7];
    return sub_1008C9750(a2 + v12);
  }

  if (v9 == enum case for AccessibilityAdjustmentDirection.decrement(_:))
  {
    result = type metadata accessor for CalendarHeaderView();
    if (*(a2 + result[8]))
    {
      return result;
    }

    v13 = result;
    sub_1000161C0((a2 + result[10]), *(a2 + result[10] + 24));
    v12 = v13[6];
    return sub_1008C9750(a2 + v12);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1006ED788(uint64_t a1)
{
  v2 = type metadata accessor for CalendarHeaderView();
  sub_1000161C0((a1 + *(v2 + 40)), *(a1 + *(v2 + 40) + 24));
  return sub_1008C9750(a1 + *(v2 + 28));
}

uint64_t sub_1006ED800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarHeaderView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006ED864(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarHeaderView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1006ED8E0()
{
  result = qword_100CD34A8;
  if (!qword_100CD34A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD34A8);
  }

  return result;
}

uint64_t sub_1006ED934@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Font.TextStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  v6 = Image.init(systemName:)();
  (*(v3 + 104))(v5, enum case for Font.TextStyle.body(_:), v2);
  static Font.Weight.semibold.getter();
  v7 = static Font.system(_:weight:)();
  (*(v3 + 8))(v5, v2);
  KeyPath = swift_getKeyPath();
  v9 = static Color.secondary.getter();
  v10 = swift_getKeyPath();
  v11 = (a1 + *(sub_10022C350(&qword_100CD3510) + 36));
  v12 = *(sub_10022C350(&qword_100CAF750) + 28);
  v13 = enum case for Image.Scale.small(_:);
  v14 = type metadata accessor for Image.Scale();
  (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
  result = swift_getKeyPath();
  *v11 = result;
  *a1 = v6;
  a1[1] = KeyPath;
  a1[2] = v7;
  a1[3] = v10;
  a1[4] = v9;
  return result;
}

unint64_t sub_1006EDB28()
{
  result = qword_100CD34B0;
  if (!qword_100CD34B0)
  {
    sub_10022E824(&qword_100CD3490);
    sub_100006F64(&qword_100CD34B8, &qword_100CD34C0);
    sub_100006F64(&qword_100CA6F10, &qword_100CA6F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD34B0);
  }

  return result;
}

unint64_t sub_1006EDC0C()
{
  result = qword_100CD34D0;
  if (!qword_100CD34D0)
  {
    sub_10022E824(&qword_100CD34C8);
    sub_1006EDC98();
    sub_1006EDE08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD34D0);
  }

  return result;
}

unint64_t sub_1006EDC98()
{
  result = qword_100CD34D8;
  if (!qword_100CD34D8)
  {
    sub_10022E824(&qword_100CD34E0);
    sub_1006EDD50();
    sub_100006F64(&qword_100CADEA0, &qword_100CADEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD34D8);
  }

  return result;
}

unint64_t sub_1006EDD50()
{
  result = qword_100CD34E8;
  if (!qword_100CD34E8)
  {
    sub_10022E824(&qword_100CD34F0);
    sub_100287740();
    sub_100006F64(&qword_100CA47C8, &qword_100CA47D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD34E8);
  }

  return result;
}

unint64_t sub_1006EDE08()
{
  result = qword_100CD34F8;
  if (!qword_100CD34F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD34F8);
  }

  return result;
}

int *sub_1006EDE5C(uint64_t a1)
{
  v3 = *(type metadata accessor for CalendarHeaderView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1006ED5F0(a1, v4);
}

uint64_t sub_1006EDEE4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CalendarHeaderView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1006EDF84()
{
  result = qword_100CD3518;
  if (!qword_100CD3518)
  {
    sub_10022E824(&qword_100CD3510);
    sub_100270BC8();
    sub_100006F64(&unk_100CE1690, &qword_100CAF750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD3518);
  }

  return result;
}

uint64_t sub_1006EE03C(void *a1)
{
  v2 = sub_10022C350(&qword_100CD3528);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_1000161C0(a1, a1[3]);
  sub_1006EE378();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1006EE178(uint64_t a1)
{
  v2 = sub_1006EE378();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006EE1B4(uint64_t a1)
{
  v2 = sub_1006EE378();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006EE238@<X0>(uint64_t *a1@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CD3538);
  a1[4] = sub_1006EE3CC();
  sub_100042FB0(a1);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1006EE2E4()
{
  sub_1006EE430();

  return ShortDescribable.description.getter();
}

unint64_t sub_1006EE324()
{
  result = qword_100CD3520;
  if (!qword_100CD3520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD3520);
  }

  return result;
}

unint64_t sub_1006EE378()
{
  result = qword_100CD3530;
  if (!qword_100CD3530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD3530);
  }

  return result;
}

unint64_t sub_1006EE3CC()
{
  result = qword_100CD3540;
  if (!qword_100CD3540)
  {
    sub_10022E824(&qword_100CD3538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD3540);
  }

  return result;
}

unint64_t sub_1006EE430()
{
  result = qword_100CD3548;
  if (!qword_100CD3548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD3548);
  }

  return result;
}

unint64_t sub_1006EE4A8()
{
  result = qword_100CD3550;
  if (!qword_100CD3550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD3550);
  }

  return result;
}

unint64_t sub_1006EE500()
{
  result = qword_100CD3558;
  if (!qword_100CD3558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD3558);
  }

  return result;
}

uint64_t sub_1006EE598@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v39 = type metadata accessor for AutomationInfo(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v37 = v5 - v4;
  v36 = type metadata accessor for AccessibilityChildBehavior();
  sub_1000037C4();
  v34 = v6;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = sub_10022C350(&qword_100CD35F0);
  sub_1000037E8();
  __chkstk_darwin(v12);
  v14 = v33 - v13;
  v15 = sub_10022C350(&qword_100CD35F8);
  sub_1000037C4();
  v17 = v16;
  __chkstk_darwin(v18);
  v20 = v33 - v19;
  v35 = sub_10022C350(&qword_100CD3600);
  sub_1000037E8();
  __chkstk_darwin(v21);
  v23 = v33 - v22;
  sub_1006EE97C(v2, v14);
  static AccessibilityChildBehavior.ignore.getter();
  v24 = sub_1006F3CAC(&qword_100CD3608, &qword_100CD35F0, &unk_100A7A488, sub_1006EEEC0);
  View.accessibilityElement(children:)();
  (*(v34 + 8))(v10, v36);
  sub_10003FDA0(v14, &qword_100CD35F0);
  v40 = v11;
  v41 = v24;
  swift_getOpaqueTypeConformance2();
  View.accessibilityRespondsToUserInteraction(_:)();
  (*(v17 + 8))(v20, v15);
  v25 = (v33[1] + *(type metadata accessor for PressureComponentViewModel() + 36));
  v27 = *v25;
  v26 = v25[1];
  v40 = v27;
  v41 = v26;
  sub_10002D5A4();
  v28 = v38;
  ModifiedContent<>.accessibilityLabel<A>(_:)();
  sub_10003FDA0(v23, &qword_100CD3600);
  type metadata accessor for AutomationCellInfo(0);
  v29 = v37;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v30 = v28 + *(sub_10022C350(&qword_100CD3630) + 36);
  v31 = type metadata accessor for AutomationInfoProperty();
  sub_1006EF034(v29, v30 + *(v31 + 24), type metadata accessor for AutomationInfo);
  sub_1006EF090();
  *v30 = 0;
  *(v30 + 8) = 0xE000000000000000;
  result = swift_getKeyPath();
  *(v30 + 16) = result;
  *(v30 + 24) = 0;
  return result;
}

uint64_t sub_1006EE97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = type metadata accessor for PressureComponentContentView(0);
  __chkstk_darwin(v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CD3638);
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  v36 = type metadata accessor for SimplePressureComponentContentView(0);
  __chkstk_darwin(v36);
  v34 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ContentSizeCategory();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  type metadata accessor for PressureComponentView(0);
  sub_10009ECC8();
  (*(v11 + 32))(v13, v16, v10);
  v17 = (*(v11 + 88))(v13, v10);
  if (v17 == enum case for ContentSizeCategory.extraSmall(_:) || v17 == enum case for ContentSizeCategory.small(_:) || v17 == enum case for ContentSizeCategory.medium(_:) || v17 == enum case for ContentSizeCategory.large(_:) || v17 == enum case for ContentSizeCategory.extraLarge(_:) || v17 == enum case for ContentSizeCategory.extraExtraLarge(_:) || v17 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
  {
    goto LABEL_35;
  }

  if (v17 != enum case for ContentSizeCategory.accessibilityMedium(_:) && v17 != enum case for ContentSizeCategory.accessibilityLarge(_:) && v17 != enum case for ContentSizeCategory.accessibilityExtraLarge(_:) && v17 != enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) && v17 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    (*(v11 + 8))(v13, v10);
LABEL_35:
    sub_1006EF034(a1, v5, type metadata accessor for PressureComponentViewModel);
    v30 = &v5[*(v3 + 20)];
    *v30 = swift_getKeyPath();
    v30[8] = 0;
    v31 = &v5[*(v3 + 24)];
    *v31 = swift_getKeyPath();
    v31[8] = 0;
    sub_1006EF034(v5, v8, type metadata accessor for PressureComponentContentView);
    swift_storeEnumTagMultiPayload();
    sub_1006EEFCC(&qword_100CD3620, type metadata accessor for SimplePressureComponentContentView);
    sub_1006EEFCC(&qword_100CD3628, type metadata accessor for PressureComponentContentView);
    _ConditionalContent<>.init(storage:)();
    return sub_1006EF090();
  }

  v28 = a1;
  v29 = v34;
  sub_1006EF034(v28, v34, type metadata accessor for PressureComponentViewModel);
  sub_1006EF034(v29, v8, type metadata accessor for SimplePressureComponentContentView);
  swift_storeEnumTagMultiPayload();
  sub_1006EEFCC(&qword_100CD3620, type metadata accessor for SimplePressureComponentContentView);
  sub_1006EEFCC(&qword_100CD3628, type metadata accessor for PressureComponentContentView);
  _ConditionalContent<>.init(storage:)();
  return sub_1006EF090();
}

unint64_t sub_1006EEEC0()
{
  result = qword_100CD3610;
  if (!qword_100CD3610)
  {
    sub_10022E824(&qword_100CD3618);
    sub_1006EEFCC(&qword_100CD3620, type metadata accessor for SimplePressureComponentContentView);
    sub_1006EEFCC(&qword_100CD3628, type metadata accessor for PressureComponentContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD3610);
  }

  return result;
}

uint64_t sub_1006EEFCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006EF034(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1006EF090()
{
  v1 = sub_100017580();
  v2(v1);
  sub_1000037E8();
  (*(v3 + 8))(v0);
  return v0;
}

void sub_1006EF10C()
{
  type metadata accessor for PressureComponentViewModel();
  if (v0 <= 0x3F)
  {
    sub_10009BE44(319, &qword_100CE0E20);
    if (v1 <= 0x3F)
    {
      sub_10009BE44(319, &qword_100CACE80);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1006EF1F0()
{
  result = type metadata accessor for PressureComponentViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1006EF25C()
{
  result = qword_100CD3768;
  if (!qword_100CD3768)
  {
    sub_10022E824(&qword_100CD3630);
    sub_1006EF318();
    sub_1006EEFCC(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD3768);
  }

  return result;
}

unint64_t sub_1006EF318()
{
  result = qword_100CD3770;
  if (!qword_100CD3770)
  {
    sub_10022E824(&qword_100CD3600);
    sub_10022E824(&qword_100CD35F0);
    sub_1006F3CAC(&qword_100CD3608, &qword_100CD35F0, &unk_100A7A488, sub_1006EEEC0);
    swift_getOpaqueTypeConformance2();
    sub_1006EEFCC(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD3770);
  }

  return result;
}

uint64_t sub_1006EF460@<X0>(uint64_t *a1@<X8>)
{
  *a1 = static Alignment.center.getter();
  a1[1] = v3;
  v4 = sub_10022C350(&qword_100CD37F8);
  return sub_1006EF4AC(v1, a1 + *(v4 + 44));
}

uint64_t sub_1006EF4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = sub_10022C350(&qword_100CD3800);
  __chkstk_darwin(v3 - 8);
  v76 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v70 - v6;
  v8 = sub_10022C350(&qword_100CD3808);
  __chkstk_darwin(v8 - 8);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v75 = (&v70 - v12);
  v13 = sub_10022C350(&qword_100CD3810);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = (&v70 - v15);
  v72 = sub_10022C350(&qword_100CD3818);
  __chkstk_darwin(v72);
  v18 = &v70 - v17;
  v71 = sub_10022C350(&qword_100CD3820);
  __chkstk_darwin(v71);
  v73 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v70 - v21;
  __chkstk_darwin(v23);
  v78 = &v70 - v24;
  *v16 = static Alignment.top.getter();
  v16[1] = v25;
  v26 = sub_10022C350(&qword_100CD3828);
  sub_1006EFB48(a1, v16 + *(v26 + 44));
  v27 = static Alignment.center.getter();
  v29 = v28;
  v30 = v16 + *(sub_10022C350(&qword_100CD3830) + 36);
  *v30 = static HorizontalAlignment.center.getter();
  *(v30 + 1) = 0;
  v30[16] = 1;
  v31 = sub_10022C350(&qword_100CD3838);
  sub_1006F1768(&v30[*(v31 + 44)]);
  v32 = *(type metadata accessor for PressureComponentViewModel() + 32);
  v74 = a1;
  v33 = *(a1 + v32) * 0.0174532925;
  static UnitPoint.center.getter();
  v35 = v34;
  v37 = v36;
  v38 = &v30[*(sub_10022C350(&qword_100CD3840) + 36)];
  *v38 = v33;
  *(v38 + 1) = v35;
  *(v38 + 2) = v37;
  v39 = &v30[*(sub_10022C350(&qword_100CD3848) + 36)];
  *v39 = v27;
  v39[1] = v29;
  LOBYTE(v27) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v40 = v16 + *(v14 + 44);
  *v40 = v27;
  *(v40 + 1) = v41;
  *(v40 + 2) = v42;
  *(v40 + 3) = v43;
  *(v40 + 4) = v44;
  v40[40] = 0;
  sub_10022C350(&qword_100CA4060);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  LOBYTE(v30) = static Edge.Set.leading.getter();
  *(inited + 32) = v30;
  v46 = static Edge.Set.trailing.getter();
  *(inited + 33) = v46;
  v47 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v30)
  {
    v47 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v46)
  {
    v47 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  sub_10011C0F0(v16, v18, &qword_100CD3810);
  v56 = &v18[*(v72 + 36)];
  *v56 = v47;
  *(v56 + 1) = v49;
  *(v56 + 2) = v51;
  *(v56 + 3) = v53;
  *(v56 + 4) = v55;
  v56[40] = 0;
  sub_10011C0F0(v18, v22, &qword_100CD3818);
  *&v22[*(v71 + 36)] = 0xBFF0000000000000;
  v57 = v78;
  sub_10011C0F0(v22, v78, &qword_100CD3820);
  v58 = static HorizontalAlignment.center.getter();
  v59 = v75;
  *v75 = v58;
  *(v59 + 8) = 0;
  *(v59 + 16) = 1;
  v60 = sub_10022C350(&qword_100CD3850);
  v61 = v74;
  sub_1006EFDFC(v74, v59 + *(v60 + 44));
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v62 = sub_10022C350(&qword_100CD3858);
  sub_1006F0D1C(v61, &v7[*(v62 + 44)]);
  v63 = v73;
  sub_1000302D8(v57, v73, &qword_100CD3820);
  sub_1000302D8(v59, v10, &qword_100CD3808);
  v64 = v76;
  sub_1000302D8(v7, v76, &qword_100CD3800);
  v65 = v7;
  v66 = v10;
  v67 = v77;
  sub_1000302D8(v63, v77, &qword_100CD3820);
  v68 = sub_10022C350(&qword_100CD3860);
  sub_1000302D8(v66, v67 + *(v68 + 48), &qword_100CD3808);
  sub_1000302D8(v64, v67 + *(v68 + 64), &qword_100CD3800);
  sub_10003FDA0(v65, &qword_100CD3800);
  sub_10003FDA0(v59, &qword_100CD3808);
  sub_10003FDA0(v78, &qword_100CD3820);
  sub_10003FDA0(v64, &qword_100CD3800);
  sub_10003FDA0(v66, &qword_100CD3808);
  return sub_10003FDA0(v63, &qword_100CD3820);
}

uint64_t sub_1006EFB48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GradientArcView(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for PressureComponentGaugeView();
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v25 - v16;
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = *(v12 + 28);
  *&v17[v18] = swift_getKeyPath();
  sub_10022C350(&qword_100CA71B0);
  swift_storeEnumTagMultiPayload();
  v19 = *(a1 + *(type metadata accessor for PressureComponentViewModel() + 32));
  v20 = *(v5 + 28);
  v21 = type metadata accessor for PressureTrend();
  (*(*(v21 - 8) + 16))(&v10[v20], a1, v21);
  *v10 = v19;
  v22 = &v10[*(v5 + 32)];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  sub_1006EF034(v17, v14, type metadata accessor for PressureComponentGaugeView);
  sub_1006EF034(v10, v7, type metadata accessor for GradientArcView);
  sub_1006EF034(v14, a2, type metadata accessor for PressureComponentGaugeView);
  v23 = sub_10022C350(&qword_100CD3938);
  sub_1006EF034(v7, a2 + *(v23 + 48), type metadata accessor for GradientArcView);
  sub_1006EF090();
  sub_1006EF090();
  sub_1006EF090();
  return sub_1006EF090();
}

uint64_t sub_1006EFDFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v3 = sub_10022C350(&qword_100CACFF0);
  __chkstk_darwin(v3 - 8);
  v125 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v126 = &v107 - v6;
  v123 = sub_10022C350(&qword_100CBB8B0);
  __chkstk_darwin(v123);
  v116 = &v107 - v7;
  v122 = sub_10022C350(&qword_100CD38D8);
  __chkstk_darwin(v122);
  v127 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v139 = &v107 - v10;
  v11 = type metadata accessor for TypesettingLanguageAwareLineHeightRatio();
  v12 = *(v11 - 8);
  v142 = v11;
  v143 = v12;
  __chkstk_darwin(v11);
  v141 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for EnvironmentValues();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v15 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Font.TextStyle();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10022C350(&qword_100CD38E0);
  __chkstk_darwin(v20);
  v22 = &v107 - v21;
  v114 = sub_10022C350(&qword_100CD38E8);
  __chkstk_darwin(v114);
  v138 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v140 = &v107 - v25;
  sub_1006F2B50(a1, &v147);
  v135 = v147;
  LODWORD(v113) = v148;
  LODWORD(v112) = BYTE1(v148);
  v26 = *(v17 + 104);
  LODWORD(v119) = enum case for Font.TextStyle.title3(_:);
  v26(v19);
  static Font.Weight.bold.getter();
  v117 = static Font.system(_:weight:)();
  v27 = *(v17 + 8);
  v27(v19, v16);
  v118 = enum case for Font.TextStyle.body(_:);
  v121 = v26;
  v26(v19);
  static Font.Weight.bold.getter();
  v111 = static Font.system(_:weight:)();
  v120 = v27;
  v115 = v17 + 8;
  v27(v19, v16);
  v28 = *(type metadata accessor for PressureComponentContentView(0) + 20);
  v137 = a1;
  v29 = (a1 + v28);
  v30 = *v29;
  LODWORD(v134) = *(v29 + 8);
  v136 = v30;
  v124 = v15;
  if (v134 != 1)
  {

    static os_log_type_t.fault.getter();
    v31 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v30, 0);
    (*(v129 + 8))(v15, v130);
    LOBYTE(v30) = v147;
  }

  v32 = &v22[*(v20 + 36)];
  v33 = type metadata accessor for FontWithSmallVariantModifier();
  v34 = *(v33 + 24);
  v35 = enum case for Font.Leading.tight(_:);
  v36 = type metadata accessor for Font.Leading();
  v37 = *(v36 - 8);
  v38 = *(v37 + 104);
  LODWORD(v133) = v35;
  v39 = v35;
  v40 = v36;
  v132 = v38;
  v131 = v37 + 104;
  v38(v32 + v34, v39, v36);
  sub_10001B350(v32 + v34, 0, 1, v40);
  v41 = v111;
  *v32 = v117;
  v32[1] = v41;
  v117 = v33;
  *(v32 + *(v33 + 28)) = v30 & 1;
  *v22 = v135;
  v22[8] = v113;
  v22[9] = v112;
  v42 = v141;
  static TypesettingLanguageAwareLineHeightRatio.disable.getter();
  sub_1006F3BC4();
  v43 = v140;
  View.typesettingLanguageAwareLineHeightRatio(_:isEnabled:)();
  v44 = *(v143 + 8);
  v143 += 8;
  v135 = v44;
  v44(v42, v142);
  sub_10003FDA0(v22, &qword_100CD38E0);
  *(v43 + *(v114 + 36)) = 257;
  v113 = type metadata accessor for PressureComponentViewModel();
  v45 = (v137 + *(v113 + 24));
  v46 = v45[1];
  v147 = *v45;
  v148 = v46;
  v47 = sub_10002D5A4();

  v114 = v47;
  v111 = Text.init<A>(_:)();
  v110 = v48;
  v109 = v49;
  v112 = v50;
  KeyPath = swift_getKeyPath();
  v51 = v121;
  (v121)(v19, v119, v16);
  static Font.Weight.bold.getter();
  v119 = static Font.system(_:weight:)();
  v52 = v120;
  v120(v19, v16);
  (v51)(v19, v118, v16);
  static Font.Weight.bold.getter();
  v53 = static Font.system(_:weight:)();
  v52(v19, v16);
  if (v134)
  {
    v54 = v136;
    v55 = v124;
  }

  else
  {
    v56 = v136;

    static os_log_type_t.fault.getter();
    v57 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v55 = v124;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v56, 0);
    (*(v129 + 8))(v55, v130);
    v54 = v147;
  }

  v58 = v116;
  v59 = &v116[*(v123 + 36)];
  v60 = v117;
  v61 = *(v117 + 24);
  v132(v59 + v61, v133, v40);
  sub_10001B350(v59 + v61, 0, 1, v40);
  *v59 = v119;
  v59[1] = v53;
  *(v59 + *(v60 + 28)) = v54 & 1;
  v62 = v110;
  *v58 = v111;
  *(v58 + 8) = v62;
  *(v58 + 16) = v109 & 1;
  v63 = KeyPath;
  *(v58 + 24) = v112;
  *(v58 + 32) = v63;
  *(v58 + 40) = 1;
  *(v58 + 48) = 0;
  v64 = v141;
  static TypesettingLanguageAwareLineHeightRatio.disable.getter();
  sub_1001CC7B8();
  v65 = v139;
  View.typesettingLanguageAwareLineHeightRatio(_:isEnabled:)();
  v135(v64, v142);
  sub_10003FDA0(v58, &qword_100CBB8B0);
  *(v65 + *(v122 + 36)) = 257;
  v66 = (v137 + *(v113 + 28));
  v67 = v66[1];
  v147 = *v66;
  v148 = v67;

  v68 = Text.init<A>(_:)();
  v70 = v69;
  v72 = v71;
  v137 = v73;
  v74 = static Font.subheadline.getter();
  v123 = static Font.footnote.getter();
  if (v134)
  {
    v75 = v136;
    v156 = v136 & 1;
  }

  else
  {
    v76 = v136;

    static os_log_type_t.fault.getter();
    v77 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v76, 0);
    (*(v129 + 8))(v55, v130);
    v75 = v156;
  }

  v78 = v126;
  v132(v126, v133, v40);
  sub_10001B350(v78, 0, 1, v40);
  v79 = v125;
  sub_1000302D8(v78, v125, &qword_100CACFF0);

  v80 = v123;

  sub_1001C987C(v74, v80, v75 & 1, v79);
  v81 = Text.font(_:)();
  v134 = v82;
  v84 = v83;
  v133 = v85;

  sub_10010CD64(v68, v70, v72 & 1);

  sub_10003FDA0(v78, &qword_100CACFF0);
  v86 = v141;
  static TypesettingLanguageAwareLineHeightRatio.disable.getter();
  v87 = v134;
  v88 = Text.typesettingLanguageAwareLineHeightRatio(_:isEnabled:)();
  v136 = v89;
  v91 = v90;
  v137 = v92;
  sub_10010CD64(v81, v87, v84 & 1);

  v135(v86, v142);
  v93 = swift_getKeyPath();
  v91 &= 1u;
  v159 = v91;
  v157 = 0;
  v94 = v138;
  sub_1000302D8(v140, v138, &qword_100CD38E8);
  v95 = v139;
  v96 = v127;
  sub_1000302D8(v139, v127, &qword_100CD38D8);
  v97 = v94;
  v98 = v128;
  sub_1000302D8(v97, v128, &qword_100CD38E8);
  v99 = sub_10022C350(&qword_100CD3918);
  sub_1000302D8(v96, v98 + *(v99 + 48), &qword_100CD38D8);
  v100 = v98 + *(v99 + 64);
  v101 = v136;
  *&v144 = v88;
  *(&v144 + 1) = v136;
  LOBYTE(v145) = v91;
  *(&v145 + 1) = *v158;
  DWORD1(v145) = *&v158[3];
  v102 = v137;
  *(&v145 + 1) = v137;
  *v146 = v93;
  *&v146[8] = 1;
  v146[16] = 0;
  *&v146[17] = 257;
  v103 = v144;
  v104 = v145;
  v105 = *v146;
  *(v100 + 47) = *&v146[15];
  *(v100 + 16) = v104;
  *(v100 + 32) = v105;
  *v100 = v103;
  sub_1000302D8(&v144, &v147, &qword_100CACF40);
  sub_10003FDA0(v95, &qword_100CD38D8);
  sub_10003FDA0(v140, &qword_100CD38E8);
  v147 = v88;
  v148 = v101;
  v149 = v91;
  *v150 = *v158;
  *&v150[3] = *&v158[3];
  v151 = v102;
  v152 = v93;
  v153 = 1;
  v154 = 0;
  v155 = 257;
  sub_10003FDA0(&v147, &qword_100CACF40);
  sub_10003FDA0(v96, &qword_100CD38D8);
  return sub_10003FDA0(v138, &qword_100CD38E8);
}
uint64_t sub_1003FC8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = v9;
  v20[1] = v10;
  v20[2] = v11;
  v20[3] = v12;
  v13 = *(a1 + *(type metadata accessor for PickerSection() + 68));
  type metadata accessor for Binding();
  Binding.wrappedValue.getter();
  v14 = v13(v8, 0);
  v16 = v15;
  (*(v6 + 8))(v8, a2);
  KeyPath = swift_getKeyPath();
  v18 = Image.init(systemName:)();
  *a3 = v14;
  *(a3 + 8) = v16;
  *(a3 + 16) = 0;
  *(a3 + 24) = _swiftEmptyArrayStorage;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 0;
  *(a3 + 48) = v18;
  sub_10010CD54(v14, v16, 0);

  sub_10010CD64(v14, v16, 0);
}

uint64_t sub_1003FCA48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *(a2 - 8);
  __chkstk_darwin(a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding();
  Binding.wrappedValue.getter();
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  result = (*(v5 + 8))(v7, a2);
  *a3 = v8 & 1;
  return result;
}

void sub_1003FCB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __chkstk_darwin(a1);
  if (*v11 == 1)
  {
    (*(v9 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7, a6, v10);
    type metadata accessor for Binding();
    Binding.wrappedValue.setter();
  }
}

uint64_t sub_1003FCC30()
{
  sub_10002D5A4();

  Text.init<A>(_:)();
  swift_getKeyPath();
  static Color.secondary.getter();
  swift_getKeyPath();
  sub_10022C350(&qword_100CB66F0);
  sub_10022C350(&qword_100CB66F8);
  sub_100400688();
  sub_10040076C();
  return Section<>.init(footer:content:)();
}

uint64_t sub_1003FCD68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1003FE828(a1, __src);
  v4 = swift_allocObject();
  memcpy((v4 + 16), __src, 0x60uLL);
  Button.init(action:label:)();
  v5 = *(a1 + 40);
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  result = sub_10022C350(&qword_100CB66F0);
  v9 = (a2 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = sub_100168F20;
  v9[2] = v7;
  return result;
}

uint64_t sub_1003FCEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10002D5A4();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  if (*(a1 + 40) == 1)
  {
    static Color.gray.getter();
  }

  else
  {
    static Color.blue.getter();
  }

  v9 = Text.foregroundStyle<A>(_:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_10010CD64(v4, v6, v8 & 1);

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v15;
  return result;
}

unint64_t sub_1003FD094()
{
  result = qword_100CB60A0;
  if (!qword_100CB60A0)
  {
    sub_10022E824(&qword_100CB6010);
    sub_1003FD120();
    sub_1003FD1D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB60A0);
  }

  return result;
}

unint64_t sub_1003FD120()
{
  result = qword_100CB60A8;
  if (!qword_100CB60A8)
  {
    sub_10022E824(&qword_100CB6020);
    sub_10023FBF4(&qword_100CB60B0, &unk_100CB60B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB60A8);
  }

  return result;
}

unint64_t sub_1003FD1D8()
{
  result = qword_100CB60C0;
  if (!qword_100CB60C0)
  {
    sub_10022E824(&qword_100CB5FF8);
    sub_10023FBF4(&qword_100CB60C8, &unk_100CB60D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB60C0);
  }

  return result;
}

unint64_t sub_1003FD290()
{
  result = qword_100CB60D8;
  if (!qword_100CB60D8)
  {
    sub_10022E824(&qword_100CB5FE8);
    sub_10023FBF4(&qword_100CB60E0, &unk_100CB6098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB60D8);
  }

  return result;
}

unint64_t sub_1003FD348()
{
  result = qword_100CB60E8;
  if (!qword_100CB60E8)
  {
    sub_10022E824(&qword_100CB6088);
    sub_1003FD3D4();
    sub_1003FD620();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB60E8);
  }

  return result;
}

unint64_t sub_1003FD3D4()
{
  result = qword_100CB60F0;
  if (!qword_100CB60F0)
  {
    sub_10022E824(&qword_100CB6080);
    sub_1003FD490(&qword_100CB60F8, type metadata accessor for ContentViewiOS);
    sub_1003FD4D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB60F0);
  }

  return result;
}

uint64_t sub_1003FD490(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1003FD4D8()
{
  result = qword_100CB6100;
  if (!qword_100CB6100)
  {
    sub_10022E824(&qword_100CB6060);
    sub_1003FD568();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6100);
  }

  return result;
}

unint64_t sub_1003FD568()
{
  result = qword_100CB6108;
  if (!qword_100CB6108)
  {
    sub_10022E824(&qword_100CB6110);
    sub_10023FBF4(&qword_100CB6118, &unk_100CB6120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6108);
  }

  return result;
}

unint64_t sub_1003FD620()
{
  result = qword_100CB6128;
  if (!qword_100CB6128)
  {
    sub_10022E824(&qword_100CB6048);
    sub_1003FD6AC();
    sub_1003FD764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6128);
  }

  return result;
}

unint64_t sub_1003FD6AC()
{
  result = qword_100CB6130;
  if (!qword_100CB6130)
  {
    sub_10022E824(&qword_100CB6050);
    sub_10023FBF4(&qword_100CB6138, &unk_100CB6140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6130);
  }

  return result;
}

unint64_t sub_1003FD764()
{
  result = qword_100CB6148;
  if (!qword_100CB6148)
  {
    sub_10022E824(&qword_100CB6030);
    sub_10023FBF4(&qword_100CB6150, &unk_100CB6158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6148);
  }

  return result;
}

unint64_t sub_1003FD81C()
{
  result = qword_100CB6160;
  if (!qword_100CB6160)
  {
    sub_10022E824(&qword_100CB6018);
    sub_1003FD094();
    sub_1003FD290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6160);
  }

  return result;
}

uint64_t sub_1003FD8A8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1003FD9E4()
{

  sub_100006F14(v0 + 32);
  sub_10006A798();

  return swift_deallocObject();
}

uint64_t sub_1003FDA84(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1003FDADC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

void sub_1003FDB58()
{
  sub_10013C99C(319, &qword_100CA45C0, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnitsConfigurationViewModel.Configuration();
    if (v1 <= 0x3F)
    {
      sub_10013C99C(319, &qword_100CAFF88, &type metadata for CGFloat, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_10013DB50();
        if (v3 <= 0x3F)
        {
          sub_1000455E4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1003FDC7C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = v7 | 7;
  if (v8 >= a2)
  {
LABEL_26:
    v18 = ((result + v9 + 16) & ~v9);
    if ((v6 & 0x80000000) != 0)
    {
      return sub_100024D10((v18 + v7 + 8) & ~v7, v6, v4);
    }

    else
    {
      v19 = *v18;
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  else
  {
    v10 = ((((((((*(*(v4 - 8) + 64) - (((-9 - v7) | v7) + ((-17 - v7) | v9)) + 21) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v11 = a2 - v8;
    v12 = v10 & 0xFFFFFFF8;
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = v11 + 1;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    switch(v15)
    {
      case 1:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

LABEL_22:
        v17 = v16 - 1;
        if (v12)
        {
          v17 = 0;
          LODWORD(v12) = *result;
        }

        result = v8 + (v12 | v17) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1003FDE04(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((((((*(*(v6 - 8) + 64) - (((-9 - v10) | v10) + ((-17 - v10) | v10 | 7)) + 21) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((((((((*(*(v6 - 8) + 64) - (((-9 - v10) | v10) + ((-17 - v10) | v10 | 7)) + 21) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v18 = (&a1[(v10 | 7) + 16] & ~(v10 | 7));
          if ((v8 & 0x80000000) != 0)
          {

            sub_10001B350((v18 + v10 + 8) & ~v10, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v19 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v19 = (a2 - 1);
            }

            *v18 = v19;
          }
        }

        break;
    }
  }

  else
  {
    if (((((((((*(*(v6 - 8) + 64) - (((-9 - v10) | v10) + ((-17 - v10) | v10 | 7)) + 21) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((((*(*(v6 - 8) + 64) - (((-9 - v10) | v10) + ((-17 - v10) | v10 | 7)) + 21) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

void sub_1003FE060()
{
  type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows(319);
  if (v0 <= 0x3F)
  {
    sub_1003FE134();
    if (v1 <= 0x3F)
    {
      sub_10013C99C(319, &qword_100CAD690, &type metadata for CGFloat, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1003FE134()
{
  result = qword_100CB6290;
  if (!qword_100CB6290)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CB6290);
  }

  return result;
}

uint64_t sub_1003FE27C()
{
  sub_10000C778();
  v2 = *(v1 + 16);
  sub_100074994();
  type metadata accessor for ConditionContentView();
  sub_100003A0C();
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  v5 = v4 + v0[9];

  sub_100074994();
  type metadata accessor for UnitsConfigurationViewModel.Configuration();
  sub_1000C8768();
  (*(v6 + 8))(v5 + v7, v2);
  sub_100008544(v0[11]);

  sub_1000B0C50();
  if (v8)
  {
  }

  sub_1000B0C50();
  if (v9)
  {
  }

  sub_100008544(v0[14]);

  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_1003FE3BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = type metadata accessor for ConditionContentView();
  sub_100003810(v4);
  v5 = sub_1000D3E9C();

  return a3(v5, a2);
}

uint64_t sub_1003FE460@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  sub_100074994();
  v4 = type metadata accessor for ConditionContentView();
  sub_100003810(v4);
  v6 = v1 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_1003F9868(v6, v3, a1);
}

uint64_t sub_1003FE4E4()
{
  sub_10000C778();
  v2 = *(v1 + 32);
  sub_100074994();
  type metadata accessor for ConditionContentView();
  sub_100003A0C();
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  swift_unknownObjectRelease();

  v5 = v1 + v4 + v0[9];

  sub_100074994();
  type metadata accessor for UnitsConfigurationViewModel.Configuration();
  sub_1000C8768();
  (*(v6 + 8))(v5 + v7, v2);
  sub_100008544(v0[11]);

  sub_1000B0C50();
  if (v8)
  {
  }

  sub_1000B0C50();
  if (v9)
  {
  }

  sub_100008544(v0[14]);

  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_1003FE614(uint64_t a1)
{
  sub_100074994();
  v3 = type metadata accessor for ConditionContentView();
  sub_100003810(v3);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 48) & ~*(v4 + 80));

  return sub_1003F9908(a1, v5, v6, v7);
}

unint64_t sub_1003FE6A0()
{
  result = qword_100CB63B0;
  if (!qword_100CB63B0)
  {
    sub_10022E824(&qword_100CB6388);
    sub_10022E824(&qword_100CB6380);
    type metadata accessor for InsetGroupedListStyle();
    sub_10023FBF4(&qword_100CB63A8, &qword_100CB6380);
    swift_getOpaqueTypeConformance2();
    sub_10023FBF4(&qword_100CE0FF0, &qword_100CA5110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB63B0);
  }

  return result;
}

uint64_t sub_1003FE8CC()
{
  type metadata accessor for ConditionsContentView(0);
  sub_100003A0C();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = sub_10022C350(&qword_100CB6058);
  if (!sub_100024D10(v4, 1, v5))
  {

    v6 = *(v5 + 36);
    type metadata accessor for UnitConfiguration.Distance();
    sub_1000037E8();
    (*(v7 + 8))(v4 + v6);
  }

  v8 = type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows(0);
  v9 = v4 + v8[5];
  v10 = sub_10022C350(&qword_100CB6038);
  if (!sub_100005BB8(v10))
  {

    v2 = *(v2 + 36);
    type metadata accessor for UnitConfiguration.Precipitation();
    sub_1000037E8();
    (*(v11 + 8))(v9 + v2);
  }

  v12 = v4 + v8[6];
  v13 = sub_10022C350(&qword_100CB6028);
  if (!sub_100005BB8(v13))
  {

    v2 = *(v2 + 36);
    type metadata accessor for UnitConfiguration.Pressure();
    sub_1000037E8();
    (*(v14 + 8))(v12 + v2);
  }

  v15 = v4 + v8[7];
  v16 = type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(0);
  if (!sub_100005BB8(v16))
  {

    v17 = *(sub_10022C350(&qword_100CB6170) + 36);
    v18 = type metadata accessor for UnitConfiguration.Temperature();
    if (!sub_100024D10(v15 + v17, 1, v18))
    {
      (*(*(v18 - 8) + 8))(v15 + v17, v18);
    }

    v19 = *(v2 + 20);
    if (!sub_100024D10(v15 + v19, 1, v18))
    {
      (*(*(v18 - 8) + 8))(v15 + v19, v18);
    }
  }

  v20 = v4 + v8[8];
  v21 = sub_10022C350(&qword_100CB5FF0);
  if (!sub_100024D10(v20, 1, v21))
  {

    v22 = *(v21 + 36);
    type metadata accessor for UnitConfiguration.WindSpeed();
    sub_1000037E8();
    (*(v23 + 8))(v20 + v22);
  }

  sub_100006F14(v4 + v0[5]);
  sub_10001673C(v0[6]);

  sub_10001673C(v0[7]);

  sub_10001673C(v0[8]);

  sub_10001673C(v0[9]);

  sub_10001673C(v0[10]);

  sub_10001673C(v0[11]);

  return swift_deallocObject();
}

uint64_t sub_1003FED10(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ConditionsContentView(0);
  sub_100003810(v4);
  sub_100008550();
  return sub_1003F8D8C(a1, v5, a2);
}

uint64_t sub_1003FED98()
{
  type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(sub_10022C350(&qword_100CB6170) + 36);
  v5 = type metadata accessor for UnitConfiguration.Temperature();
  if (!sub_100017854(v3 + v4))
  {
    sub_100003D20();
    (*(v6 + 8))(v3 + v4, v5);
  }

  v7 = *(v0 + 20);
  if (!sub_100017854(v3 + v7))
  {
    sub_100003D20();
    (*(v8 + 8))(v3 + v7, v5);
  }

  sub_100030448();

  return swift_deallocObject();
}

uint64_t sub_1003FEEC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(0);
  sub_100003810(v4);
  v5 = sub_1000D3E9C();

  return a3(v5, a2);
}

uint64_t sub_1003FEF50(uint64_t a1)
{
  v2 = type metadata accessor for ConditionsContentView(0);
  sub_100003810(v2);
  sub_100008550();

  return sub_1003F8A34(a1, v3);
}

void sub_1003FEFB4()
{
  type metadata accessor for Binding();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_10013C99C(319, &qword_100CAFF88, &type metadata for CGFloat, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Array();
        if (v3 <= 0x3F)
        {
          sub_10013DB50();
          if (v4 <= 0x3F)
          {
            sub_10010F330(319, &qword_100CB64B8, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
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

uint64_t sub_1003FF104(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v28 = *(a3 + 24);
  v29 = *(a3 + 16);
  v4 = *(v29 - 8);
  v30 = *(v4 + 84);
  if (v30 <= 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
  }

  else
  {
    v5 = *(v4 + 84);
  }

  v6 = *(*(a3 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(type metadata accessor for DynamicTypeSize() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v4 + 80);
  v12 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  v13 = ((v11 + 16) & ~v11) + *(v4 + 64);
  v14 = v12 + 16;
  if (a2 <= v8)
  {
    goto LABEL_29;
  }

  v15 = *(v9 + 80) & 0xF8 | 7;
  v16 = v10 + ((v15 + ((((((*(v6 + 64) + ((v14 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v12) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v15) + 1;
  v17 = 8 * v16;
  if (v16 > 3)
  {
    goto LABEL_13;
  }

  v20 = ((a2 - v8 + ~(-1 << v17)) >> v17) + 1;
  if (HIWORD(v20))
  {
    v18 = *(a1 + v16);
    if (v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v20 <= 0xFF)
    {
      if (v20 < 2)
      {
        goto LABEL_29;
      }

LABEL_13:
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_29;
      }

LABEL_21:
      v21 = (v18 - 1) << v17;
      if (v16 > 3)
      {
        v21 = 0;
      }

      if (v16)
      {
        if (v16 > 3)
        {
          LODWORD(v16) = 4;
        }

        switch(v16)
        {
          case 2:
            LODWORD(v16) = *a1;
            break;
          case 3:
            LODWORD(v16) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v16) = *a1;
            break;
          default:
            LODWORD(v16) = *a1;
            break;
        }
      }

      return v8 + (v16 | v21) + 1;
    }

    v18 = *(a1 + v16);
    if (*(a1 + v16))
    {
      goto LABEL_21;
    }
  }

LABEL_29:
  if (v5 >= v7)
  {
    v24 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v25 = v30;
    if ((v30 & 0x80000000) == 0)
    {
      v23 = *v24;
      goto LABEL_34;
    }

    v26 = (v24 + v11 + 8) & ~v11;
    v27 = v29;
  }

  else
  {
    v22 = (a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((v8 & 0x80000000) == 0)
    {
      v23 = *(v22 + 8);
LABEL_34:
      if (v23 >= 0xFFFFFFFF)
      {
        LODWORD(v23) = -1;
      }

      return (v23 + 1);
    }

    v26 = (v14 + v22) & ~v12;
    v25 = v7;
    v27 = v28;
  }

  return sub_100024D10(v26, v25, v27);
}

void sub_1003FF43C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v38 = *(a4 + 16);
  v39 = *(a4 + 24);
  v5 = *(v38 - 8);
  v40 = *(v5 + 84);
  if (v40 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v5 + 84);
  }

  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(type metadata accessor for DynamicTypeSize() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(v5 + 80);
  v13 = ((v12 + 16) & ~v12) + *(v5 + 64);
  v14 = *(v7 + 80);
  v15 = v14 + 16;
  v16 = *(v10 + 80) & 0xF8 | 7;
  v17 = v11 + ((v16 + ((((((*(v7 + 64) + ((v14 + 16 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v16) + 1;
  v18 = 8 * v17;
  v19 = a3 - v9;
  if (a3 <= v9)
  {
    v21 = 0;
    v20 = a1;
  }

  else
  {
    v20 = a1;
    if (v17 <= 3)
    {
      v25 = ((v19 + ~(-1 << v18)) >> v18) + 1;
      if (HIWORD(v25))
      {
        v21 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v21 = v26;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  if (v9 < a2)
  {
    v22 = ~v9 + a2;
    if (v17 < 4)
    {
      v23 = (v22 >> v18) + 1;
      if (v17)
      {
        v27 = v22 & ~(-1 << v18);
        bzero(v20, v17);
        if (v17 == 3)
        {
          *v20 = v27;
          v20[2] = BYTE2(v27);
        }

        else if (v17 == 2)
        {
          *v20 = v27;
        }

        else
        {
          *v20 = v22;
        }
      }
    }

    else
    {
      bzero(v20, v17);
      *v20 = v22;
      v23 = 1;
    }

    switch(v21)
    {
      case 1:
        v20[v17] = v23;
        break;
      case 2:
        *&v20[v17] = v23;
        break;
      case 3:
        goto LABEL_71;
      case 4:
        *&v20[v17] = v23;
        break;
      default:
        return;
    }

    return;
  }

  v24 = ~v14;
  switch(v21)
  {
    case 1:
      v20[v17] = 0;
      if (a2)
      {
        goto LABEL_33;
      }

      return;
    case 2:
      *&v20[v17] = 0;
      if (a2)
      {
        goto LABEL_33;
      }

      return;
    case 3:
LABEL_71:
      __break(1u);
      return;
    case 4:
      *&v20[v17] = 0;
      goto LABEL_32;
    default:
LABEL_32:
      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v6 < v8)
      {
        v28 = (&v20[v13 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((v9 & 0x80000000) == 0)
        {
          if ((a2 & 0x80000000) != 0)
          {
            *v28 = a2 & 0x7FFFFFFF;
            v28[1] = 0;
          }

          else
          {
            v28[1] = a2 - 1;
          }

          return;
        }

        v35 = (v28 + v15) & v24;
        v36 = a2;
        v33 = v8;
        v37 = v39;
LABEL_62:

        sub_10001B350(v35, v36, v33, v37);
        return;
      }

      if (v6 >= a2)
      {
        v32 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
        v33 = v40;
        if ((v40 & 0x80000000) == 0)
        {
          if ((a2 & 0x80000000) != 0)
          {
            v34 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v34 = a2 - 1;
          }

          *v32 = v34;
          return;
        }

        v35 = (v32 + v12 + 8) & ~v12;
        v36 = a2;
        v37 = v38;
        goto LABEL_62;
      }

      if (v13 <= 3)
      {
        v29 = ~(-1 << (8 * v13));
      }

      else
      {
        v29 = -1;
      }

      if (v13)
      {
        v30 = v29 & (~v6 + a2);
        if (v13 <= 3)
        {
          v31 = v13;
        }

        else
        {
          v31 = 4;
        }

        bzero(v20, v13);
        switch(v31)
        {
          case 2:
            *v20 = v30;
            break;
          case 3:
            *v20 = v30;
            v20[2] = BYTE2(v30);
            break;
          case 4:
            *v20 = v30;
            break;
          default:
            *v20 = v30;
            break;
        }
      }

      return;
  }
}

uint64_t sub_1003FF8A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1003FF8E0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1003FF988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    result = sub_1003FE134();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1003FFA40()
{
  sub_1003FFB64();
  if (v0 <= 0x3F)
  {
    sub_1003FE134();
    if (v1 <= 0x3F)
    {
      sub_10010F330(319, &qword_100CB65D8, &type metadata accessor for UnitConfiguration.Temperature, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_10010F330(319, &unk_100CB65E0, type metadata accessor for UnitsConfigurationViewModel.Temperature, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1003FFB64()
{
  if (!qword_100CB65C8)
  {
    type metadata accessor for UnitsConfigurationViewModel.Temperature(255);
    sub_1003FD490(&qword_100CB65D0, type metadata accessor for UnitsConfigurationViewModel.Temperature);
    v0 = type metadata accessor for UnitsConfigurationViewModel.Configuration();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB65C8);
    }
  }
}

unint64_t sub_1003FFBF8()
{
  result = qword_100CB6620;
  if (!qword_100CB6620)
  {
    sub_10022E824(&qword_100CB6628);
    sub_10023FBF4(&qword_100CB6630, &unk_100CB6638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6620);
  }

  return result;
}

unint64_t sub_1003FFD40()
{
  result = qword_100CB6658;
  if (!qword_100CB6658)
  {
    sub_10022E824(&qword_100CB6648);
    sub_1003FFDCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6658);
  }

  return result;
}

unint64_t sub_1003FFDCC()
{
  result = qword_100CB6660;
  if (!qword_100CB6660)
  {
    sub_10022E824(&qword_100CB6668);
    sub_10022E824(&qword_100CB6670);
    sub_1003FFEC4();
    swift_getOpaqueTypeConformance2();
    sub_1003FD490(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6660);
  }

  return result;
}

unint64_t sub_1003FFEC4()
{
  result = qword_100CB6678;
  if (!qword_100CB6678)
  {
    sub_10022E824(&qword_100CB6670);
    sub_10023FBF4(&qword_100CB6680, &unk_100CB6688);
    sub_10023FBF4(&qword_100CE0FF0, &qword_100CA5110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6678);
  }

  return result;
}

unint64_t sub_1003FFFA8()
{
  result = qword_100CB6690;
  if (!qword_100CB6690)
  {
    sub_10022E824(&qword_100CB6650);
    sub_10023FBF4(&qword_100CB6698, &unk_100CB66A0);
    sub_1003FD490(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6690);
  }

  return result;
}

unint64_t sub_1004000AC()
{
  result = qword_100CB66B8;
  if (!qword_100CB66B8)
  {
    sub_10022E824(&qword_100CB66B0);
    sub_100400164();
    sub_10023FBF4(&qword_100CE0FF0, &qword_100CA5110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB66B8);
  }

  return result;
}

unint64_t sub_100400164()
{
  result = qword_100CB66C0;
  if (!qword_100CB66C0)
  {
    sub_10022E824(&qword_100CB66C8);
    sub_10040021C();
    sub_10023FBF4(&qword_100CA53B8, &qword_100CA53C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB66C0);
  }

  return result;
}

unint64_t sub_10040021C()
{
  result = qword_100CB66D0;
  if (!qword_100CB66D0)
  {
    sub_10022E824(&qword_100CB66D8);
    sub_1003FD490(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB66D0);
  }

  return result;
}

uint64_t sub_100400308()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = type metadata accessor for PickerSection();
  sub_100003810(v3);
  sub_1000419E4();

  return sub_1003FBBD0(v4, v5, v6, v7, v1, v2, v8);
}

uint64_t sub_1004003BC@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 32);
  sub_100007FD0();
  v4 = type metadata accessor for PickerSection();
  sub_100003810(v4);
  v5 = *(v1 + 16);

  return sub_1003FCA48(v5, v3, a1);
}

void sub_1004004BC(uint64_t a1)
{
  v3 = v1[4];
  v4 = type metadata accessor for PickerSection();
  sub_100003AE8(v4);
  v6 = v5;
  v8 = v7;
  v9 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  sub_1003FCB50(a1, v1[2], v1[3], v1 + v9, v1 + ((v9 + *(v8 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80)), v3);
}

uint64_t sub_100400600(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_100400688()
{
  result = qword_100CB6700;
  if (!qword_100CB6700)
  {
    sub_10022E824(&qword_100CB66F0);
    sub_10023FBF4(&qword_100CA5548, &qword_100CA5528);
    sub_10023FBF4(&qword_100CA6F10, &unk_100CA6F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6700);
  }

  return result;
}

unint64_t sub_10040076C()
{
  result = qword_100CB6708;
  if (!qword_100CB6708)
  {
    sub_10022E824(&qword_100CB66F8);
    sub_100400600(&qword_100CB6710, &unk_100CB6718, &unk_100A6E460, sub_100400850);
    sub_10023FBF4(&qword_100CE0FF0, &qword_100CA5110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6708);
  }

  return result;
}

unint64_t sub_100400850()
{
  result = qword_100CB6720;
  if (!qword_100CB6720)
  {
    sub_10022E824(&qword_100CB6728);
    sub_10023FBF4(&qword_100CB6730, &unk_100CB6738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6720);
  }

  return result;
}

unint64_t sub_100400938()
{
  result = qword_100CB6758;
  if (!qword_100CB6758)
  {
    sub_10022E824(&qword_100CB6748);
    sub_1004009BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6758);
  }

  return result;
}

unint64_t sub_1004009BC()
{
  result = qword_100CB6760;
  if (!qword_100CB6760)
  {
    sub_10022E824(&qword_100CB6768);
    sub_100400A54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6760);
  }

  return result;
}

unint64_t sub_100400A54()
{
  result = qword_100CB6770;
  if (!qword_100CB6770)
  {
    sub_10022E824(&qword_100CB6778);
    sub_100400AD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6770);
  }

  return result;
}

unint64_t sub_100400AD8()
{
  result = qword_100CB6780;
  if (!qword_100CB6780)
  {
    sub_10022E824(&qword_100CB6788);
    sub_10022E824(&qword_100CB6790);
    sub_10023FBF4(&qword_100CB6798, &qword_100CB6790);
    swift_getOpaqueTypeConformance2();
    sub_1003FD490(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6780);
  }

  return result;
}

uint64_t sub_100400C04()
{
  sub_10000C778();
  type metadata accessor for TemperatureView(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = v3 + v0[5];

  v5 = *(sub_10022C350(&qword_100CB6170) + 36);
  v6 = type metadata accessor for UnitConfiguration.Temperature();
  if (!sub_100017854(v4 + v5))
  {
    sub_100003D20();
    (*(v7 + 8))(v4 + v5, v6);
  }

  sub_100006F14(v3 + v0[6]);
  v8 = v0[7];
  if (!sub_100017854(v3 + v8))
  {
    sub_100003D20();
    (*(v9 + 8))(v3 + v8, v6);
  }

  v10 = v3 + v0[8];
  if (!sub_100017854(v10))
  {
    sub_100003D20();
    (*(v11 + 8))(v10, v6);
  }

  sub_10022C350(&qword_100CB6558);

  sub_100030448();
  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_100400DBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = type metadata accessor for TemperatureView(0);
  sub_100003810(v4);
  v5 = sub_1000D3E9C();

  return a3(v5, a2);
}

uint64_t sub_100400E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TemperatureView(0);
  sub_100003810(v4);
  sub_100008550();

  return sub_1003F55C8(a1, v5, a2);
}

uint64_t sub_100400EC0()
{
  v1 = type metadata accessor for TemperatureView(0);
  sub_100003AE8(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  sub_100003810(v6);
  v8 = v0 + ((v3 + v5 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_1003F5EE8(v0 + v3, v8);
}

unint64_t sub_100400F8C()
{
  result = qword_100CB67F8;
  if (!qword_100CB67F8)
  {
    sub_10022E824(&qword_100CB6800);
    sub_100400688();
    sub_10040076C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB67F8);
  }

  return result;
}

unint64_t sub_100401024()
{
  result = qword_100CB6808;
  if (!qword_100CB6808)
  {
    sub_10022E824(&qword_100CB6810);
    sub_1003FD490(&qword_100CB6740, type metadata accessor for ConditionsContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6808);
  }

  return result;
}

uint64_t sub_100401144()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL sub_1004011BC()
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v0 = type metadata accessor for LollipopMarkModel(0);
  sub_100014558(*(v0 + 20));
  if (!v2)
  {
    return 0;
  }

  sub_100014558(*(v1 + 24));
  if (!v2)
  {
    return 0;
  }

  sub_100014558(*(v3 + 28));
  return v2 != 0;
}

uint64_t sub_100401268()
{
  result = type metadata accessor for LollipopMarkModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100401300@<X0>(uint64_t a1@<X8>)
{
  v133 = a1;
  v135 = sub_10022C350(&qword_100CB6948);
  sub_1000037C4();
  v134 = v2;
  __chkstk_darwin(v3);
  sub_100003848();
  v132 = v4;
  __chkstk_darwin(v5);
  sub_100003990(&v104 - v6);
  v128 = type metadata accessor for BlendMode();
  sub_1000037C4();
  v127 = v7;
  __chkstk_darwin(v8);
  sub_1000037D8();
  sub_100003990(v10 - v9);
  v148 = type metadata accessor for BasicChartSymbolShape();
  sub_1000037C4();
  v152 = v11;
  __chkstk_darwin(v12);
  sub_1000037D8();
  sub_100003990(v14 - v13);
  sub_10022C350(&qword_100CB6950);
  sub_100003828();
  __chkstk_darwin(v15);
  v141 = &v104 - v16;
  v147 = type metadata accessor for PointMark();
  sub_1000037C4();
  v151 = v17;
  __chkstk_darwin(v18);
  sub_1000037D8();
  sub_100003990(v20 - v19);
  v125 = sub_10022C350(&qword_100CB6958);
  sub_1000037C4();
  v150 = v21;
  sub_100003828();
  __chkstk_darwin(v22);
  sub_100003990(&v104 - v23);
  v145 = sub_10022C350(&qword_100CB6960);
  sub_1000037C4();
  v123 = v24;
  sub_100003828();
  __chkstk_darwin(v25);
  sub_100003990(&v104 - v26);
  v130 = sub_10022C350(&qword_100CB6968);
  sub_1000037C4();
  v129 = v27;
  __chkstk_darwin(v28);
  sub_100003848();
  v146 = v29;
  __chkstk_darwin(v30);
  v144 = &v104 - v31;
  v119 = type metadata accessor for LollipopMarkModel(0);
  __chkstk_darwin(v119);
  sub_1000037D8();
  v34 = v33 - v32;
  sub_10022C350(&qword_100CB6970);
  sub_100003828();
  __chkstk_darwin(v35);
  v37 = &v104 - v36;
  v38 = type metadata accessor for RectangleMark();
  sub_1000037C4();
  v40 = v39;
  __chkstk_darwin(v41);
  sub_1000037D8();
  v44 = v43 - v42;
  v143 = sub_10022C350(&qword_100CB6978);
  sub_1000037C4();
  v121 = v45;
  __chkstk_darwin(v46);
  sub_100003848();
  v142 = v47;
  __chkstk_darwin(v48);
  v149 = &v104 - v49;
  v118 = type metadata accessor for LollipopMark(0);
  v50 = v1 + *(v118 + 20);
  v51 = *v50;
  v52 = *(v50 + 8);
  v53 = *(v50 + 16);
  v54 = *(v50 + 24);
  v120 = v1;
  sub_1004020B4(v1, v34);
  v55 = type metadata accessor for Date();
  v138 = v51;
  v139 = v52;
  v136 = v53;
  static PlottableValue.value(_:_:)();
  v56 = *(v55 - 8);
  v57 = *(v56 + 8);
  v58 = v34;
  v59 = v34;
  v137 = v56 + 8;
  v60 = v57;
  v57(v59, v55);
  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004B5F28();
  v105 = v55;
  RectangleMark.init<A>(x:yStart:yEnd:width:)();
  v153 = static Color.white.getter();
  ChartContent.foregroundStyle<A>(_:)();

  (*(v40 + 8))(v44, v38);
  v61 = v120;
  v114 = v58;
  sub_1004020B4(v120, v58);
  v109 = v37;
  sub_100005BD8();
  v108 = v54;
  static PlottableValue.value(_:_:)();
  v112 = v60;
  v60(v58, v55);
  v62 = v61 + *(v118 + 24);
  v63 = *(v62 + 8);
  v118 = *v62;
  v117 = v63;
  v116 = *(v62 + 16);
  v115 = *(v62 + 24);
  v153 = *(v61 + *(v119 + 20));
  v64 = v153;
  static PlottableValue.value(_:_:)();
  v65 = v140;
  PointMark.init<A, B>(x:y:)();
  v66 = v126;
  static ChartSymbolShape<>.circle.getter();
  v67 = sub_100402118();
  sub_100028408();
  v68 = v147;
  v69 = v148;
  v111 = v67;
  v70 = v65;
  ChartContent.symbol<A>(_:)();
  v71 = *(v152 + 8);
  v152 += 8;
  v119 = v71;
  v71(v66, v69);
  v72 = v61;
  v73 = *(v151 + 8);
  v151 += 8;
  v113 = v73;
  v73(v70, v68);
  v153 = v68;
  v154 = v69;
  v155 = &protocol witness table for PointMark;
  v156 = v67;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v75 = v122;
  v76 = v125;
  v106 = OpaqueTypeConformance2;
  ChartContent.symbolSize(_:)();
  v77 = *(v150 + 8);
  v150 += 8;
  v110 = v77;
  v77(v38, v76);
  v78 = v127;
  v79 = v124;
  v80 = v128;
  (*(v127 + 104))(v124, enum case for BlendMode.destinationOut(_:), v128);
  v153 = v76;
  v154 = OpaqueTypeConformance2;
  v107 = swift_getOpaqueTypeConformance2();
  v81 = v145;
  ChartContent.blendMode(_:)();
  (*(v78 + 8))(v79, v80);
  v128 = *(v123 + 8);
  v128(v75, v81);
  v82 = v114;
  sub_1004020B4(v72, v114);
  sub_100005BD8();
  v83 = v105;
  static PlottableValue.value(_:_:)();
  v112(v82, v83);
  v153 = v64;
  v84 = v141;
  static PlottableValue.value(_:_:)();
  v85 = v140;
  PointMark.init<A, B>(x:y:)();
  static ChartSymbolShape<>.circle.getter();
  sub_100028408();
  v86 = v147;
  v87 = v148;
  ChartContent.symbol<A>(_:)();
  (v119)(v66, v87);
  v113(v85, v86);
  ChartContent.symbolSize(_:)();
  v110(v84, v76);
  v153 = static Color.white.getter();
  v88 = v131;
  v89 = v145;
  ChartContent.foregroundStyle<A>(_:)();

  v128(v75, v89);
  v90 = v121;
  v91 = v142;
  (*(v121 + 16))(v142, v149, v143);
  v153 = v91;
  v92 = v129;
  v93 = v146;
  v94 = v144;
  v95 = v130;
  (*(v129 + 16))(v146, v144, v130);
  v154 = v93;
  v96 = v134;
  v97 = v132;
  v98 = v135;
  (*(v134 + 16))(v132, v88, v135);
  v155 = v97;
  sub_100639E14(&v153, v133);
  v99 = *(v96 + 8);
  v99(v88, v98);
  v100 = *(v92 + 8);
  v100(v94, v95);
  v101 = *(v90 + 8);
  v102 = v143;
  v101(v149, v143);
  v99(v97, v98);
  v100(v146, v95);
  return (v101)(v142, v102);
}

uint64_t sub_1004020B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LollipopMarkModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100402118()
{
  result = qword_100CB6980;
  if (!qword_100CB6980)
  {
    type metadata accessor for BasicChartSymbolShape();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6980);
  }

  return result;
}

unint64_t sub_100402170()
{
  result = qword_100CB6988;
  if (!qword_100CB6988)
  {
    sub_10022E824(&unk_100CB6990);
    type metadata accessor for RectangleMark();
    swift_getOpaqueTypeConformance2();
    sub_10022E824(&qword_100CB6960);
    sub_10022E824(&qword_100CB6958);
    type metadata accessor for PointMark();
    type metadata accessor for BasicChartSymbolShape();
    sub_100402118();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6988);
  }

  return result;
}

uint64_t LocalSearchCompleterManager.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7Weather27LocalSearchCompleterManager_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*LocalSearchCompleterManager.delegate.modify(void *a1))()
{
  v3 = sub_10023FBC0(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC7Weather27LocalSearchCompleterManager_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_10040248C;
}

uint64_t LocalSearchCompleterManager.searchedResults.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7Weather27LocalSearchCompleterManager_searchedResults;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_100402594()
{
  v1 = OBJC_IVAR____TtC7Weather27LocalSearchCompleterManager____lazy_storage___searchCompleter;
  v2 = *(v0 + OBJC_IVAR____TtC7Weather27LocalSearchCompleterManager____lazy_storage___searchCompleter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Weather27LocalSearchCompleterManager____lazy_storage___searchCompleter);
  }

  else
  {
    v4 = [objc_allocWithZone(MKLocalSearchCompleter) init];
    [v4 w_applyLocalitiesAndLandmarksFilterType];
    [v4 setDelegate:v0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

Swift::Void __swiftcall LocalSearchCompleterManager.searchLocations(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = OBJC_IVAR____TtC7Weather27LocalSearchCompleterManager_searchedResults;
  swift_beginAccess();
  *(v1 + v4) = _swiftEmptyArrayStorage;

  v5 = sub_100402594();
  v6 = [v5 queryFragment];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (v7 == countAndFlagsBits && v9 == object)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      v12 = *(v1 + OBJC_IVAR____TtC7Weather27LocalSearchCompleterManager____lazy_storage___searchCompleter);
      v13 = String._bridgeToObjectiveC()();
      [v12 setQueryFragment:v13];

      return;
    }
  }

  _s7Weather27LocalSearchCompleterManagerC25completerDidUpdateResultsyySo07MKLocalcD0CF_0();
}

void _s7Weather27LocalSearchCompleterManagerC25completerDidUpdateResultsyySo07MKLocalcD0CF_0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for SearchLocation();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100402594();
  v8 = [v7 results];

  sub_10000A42C();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = sub_1001CB594(v9);
  if (v10)
  {
    v11 = v10;
    v25[0] = _swiftEmptyArrayStorage;
    sub_1006A7E1C();
    if (v11 < 0)
    {
      __break(1u);
      return;
    }

    v23 = ObjectType;
    v24 = v1;
    v12 = 0;
    v13 = v25[0];
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v14 = *(v9 + 8 * v12 + 32);
      }

      SearchLocation.init(searchCompletion:)(v14, v6);
      v25[0] = v13;
      v15 = v13[2];
      if (v15 >= v13[3] >> 1)
      {
        sub_1006A7E1C();
        v13 = v25[0];
      }

      ++v12;
      v13[2] = v15 + 1;
      sub_100403068(v6, v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v15);
    }

    while (v11 != v12);

    ObjectType = v23;
    v1 = v24;
  }

  else
  {

    v13 = _swiftEmptyArrayStorage;
  }

  v16 = OBJC_IVAR____TtC7Weather27LocalSearchCompleterManager_searchedResults;
  swift_beginAccess();
  *&v1[v16] = v13;

  v17 = &v1[OBJC_IVAR____TtC7Weather27LocalSearchCompleterManager_delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = *(v17 + 1);
    v19 = swift_getObjectType();
    v25[3] = ObjectType;
    v25[4] = &protocol witness table for LocalSearchCompleterManager;
    v25[0] = v1;
    v20 = *(v18 + 8);
    v21 = v1;
    v20(v25, v13, v19, v18);

    swift_unknownObjectRelease();
    sub_100006F14(v25);
  }

  else
  {
  }
}

id LocalSearchCompleterManager.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC7Weather27LocalSearchCompleterManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC7Weather27LocalSearchCompleterManager_searchedResults] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC7Weather27LocalSearchCompleterManager____lazy_storage___searchCompleter] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t (*sub_100402B60(void *a1))()
{
  v3 = sub_10023FBC0(0x38uLL);
  *a1 = v3;
  v4 = *v1;
  v5 = OBJC_IVAR____TtC7Weather27LocalSearchCompleterManager_delegate;
  v3[5] = *v1;
  v3[6] = v5;
  v6 = v4 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  v3[3] = Strong;
  v3[4] = v8;
  return sub_1004030CC;
}

void sub_100402BF0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t LocalSearchCompleterManager.completer(_:didFailWithError:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (qword_100CA26D8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000703C(v5, qword_100D90AF0);
  v6 = v2;
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v9 = 141558531;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2085;
    v10 = sub_100402594();
    v11 = [v10 queryFragment];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_100078694(v12, v14, v25);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2082;
    v25[5] = a2;
    swift_errorRetain();
    sub_10022C350(&qword_100CD8220);
    v16 = String.init<A>(describing:)();
    v18 = sub_100078694(v16, v17, v25);

    *(v9 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Received an error while requesting a local search completion. searchQuery=%{sensitive,mask.hash}s, error=%{public}s", v9, 0x20u);
    swift_arrayDestroy();
  }

  v19 = &v6[OBJC_IVAR____TtC7Weather27LocalSearchCompleterManager_delegate];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = *(v19 + 1);
    v22 = swift_getObjectType();
    v25[3] = ObjectType;
    v25[4] = &protocol witness table for LocalSearchCompleterManager;
    v25[0] = v6;
    v23 = *(v21 + 16);
    v24 = v6;
    v23(v25, a2, v22, v21);
    swift_unknownObjectRelease();
    return sub_100006F14(v25);
  }

  return result;
}

uint64_t sub_100403068(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchLocation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004030D0()
{
  sub_100006F14(v0 + 16);
  sub_100006F14(v0 + 56);
  sub_100006F14(v0 + 96);
  sub_100006F14(v0 + 136);
  sub_100006F14(v0 + 176);
  sub_100006F14(v0 + 216);
  sub_100006F14(v0 + 256);
  sub_100006F14(v0 + 296);
  sub_100006F14(v0 + 336);
  sub_100006F14(v0 + 376);
  sub_100006F14(v0 + 416);
  sub_100006F14(v0 + 456);
  sub_100006F14(v0 + 496);
  sub_100006F14(v0 + 536);
  sub_100006F14(v0 + 576);
  sub_100006F14(v0 + 616);
  sub_100006F14(v0 + 656);
  sub_100006F14(v0 + 696);
  sub_100006F14(v0 + 736);
  sub_100006F14(v0 + 776);
  return v0;
}

uint64_t sub_100403188()
{
  sub_1004030D0();

  return swift_deallocClassInstance();
}

uint64_t sub_100403220(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_10022C350(&qword_100CA3528);
  sub_100003810(v7);
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for Tips.Status();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  v15 = sub_10001EBE0();
  sub_1000038B4(v15, v16, v11);
  if (v17)
  {
    sub_1000180EC(a1, &qword_100CA3528);
    v18 = sub_10023819C(a2);
    if (v19)
    {
      v20 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = *v4;
      v22 = *(v33 + 24);
      sub_10022C350(&qword_100CA3A78);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v22);
      v23 = v33;
      (*(v13 + 32))(v10, *(v33 + 56) + *(v13 + 72) * v20, v11);
      sub_100235718();
      _NativeDictionary._delete(at:)();
      v24 = 0;
      *v4 = v23;
    }

    else
    {
      v24 = 1;
    }

    sub_10001B350(v10, v24, 1, v11);
    return sub_1000180EC(v10, &qword_100CA3528);
  }

  else
  {
    (*(v13 + 32))(v3, a1, v11);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    result = sub_100238A14(v3, a2, v25, v26, v27, v28, v29, v30, v32, *v4);
    *v4 = v33;
  }

  return result;
}

uint64_t sub_10040344C()
{
  sub_100003A00();
  v3 = sub_10022C350(&qword_100CA58B8);
  sub_100003810(v3);
  sub_100003828();
  __chkstk_darwin(v4);
  sub_10000E9F4();
  v5 = type metadata accessor for Elevation();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v9 = sub_10001EBE0();
  sub_1000038B4(v9, v10, v5);
  if (v11)
  {
    v12 = sub_1000114B8();
    sub_1000180EC(v12, v13);
    sub_10000CA70();
    sub_100404AAC(v14);
    type metadata accessor for Date();
    sub_1000037E8();
    (*(v15 + 8))(v0);
    return sub_100051E10();
  }

  else
  {
    (*(v7 + 32))(v2, v1, v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10023909C(v2, v0, isUniquelyReferenced_nonNull_native, v17, v18, v19, v20, v21, v24, *v1, v25, v26);
    sub_10002FED8();
    type metadata accessor for Date();
    sub_1000037E8();
    return (*(v22 + 8))(v0);
  }
}

void sub_100403600()
{
  sub_100022B34();
  v0 = sub_10022C350(&qword_100CA37B0);
  sub_100003810(v0);
  sub_100003828();
  __chkstk_darwin(v1);
  v2 = sub_10002841C();
  type metadata accessor for LocationWeatherDataState(v2);
  sub_1000037E8();
  __chkstk_darwin(v3);
  v4 = sub_10001EBE0();
  sub_1000038B4(v4, v5, v6);
  if (v7)
  {
    v8 = sub_10000E78C();
    sub_1000180EC(v8, v9);
    v10 = sub_10004E570();
    sub_100404C5C(v10, v11, v12, v13, v14);

    sub_1000315A8();
  }

  else
  {
    sub_10000E78C();
    sub_100107040();
    swift_isUniquelyReferenced_nonNull_native();
    sub_100005C10();
    sub_1002391FC();

    sub_10002FED8();
  }
}

uint64_t sub_100403758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10022C350(&qword_100CA3898);
  __chkstk_darwin(v8 - 8);
  v10 = &v14 - v9;
  v11 = type metadata accessor for WeatherData(0);
  __chkstk_darwin(v11);
  if (sub_100024D10(a1, 1, v12) == 1)
  {
    sub_1000180EC(a1, &qword_100CA3898);
    sub_100404C5C(a2, a3, &qword_100CA39F0, &unk_100A4A620, type metadata accessor for WeatherData);

    return sub_1000180EC(v10, &qword_100CA3898);
  }

  else
  {
    sub_100107040();
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *v4;
    sub_10023950C();

    *v4 = v15;
  }

  return result;
}

void sub_100403930()
{
  sub_100022B34();
  v0 = sub_10022C350(&qword_100CB6C38);
  sub_100003810(v0);
  sub_100003828();
  __chkstk_darwin(v1);
  v2 = sub_10002841C();
  type metadata accessor for ListLocationViewModel.CacheEntry(v2);
  sub_1000037E8();
  __chkstk_darwin(v3);
  v4 = sub_10001EBE0();
  sub_1000038B4(v4, v5, v6);
  if (v7)
  {
    v8 = sub_10000E78C();
    sub_1000180EC(v8, v9);
    v10 = sub_10004E570();
    sub_100404C5C(v10, v11, v12, v13, v14);

    sub_1000315A8();
  }

  else
  {
    sub_10000E78C();
    sub_100107040();
    swift_isUniquelyReferenced_nonNull_native();
    sub_100005C10();
    sub_10023981C();

    sub_10002FED8();
  }
}

uint64_t sub_100403A88()
{
  sub_100003A00();
  v2 = sub_10022C350(&qword_100CB6C58);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  v4 = sub_10000E9F4();
  type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity(v4);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_1000038B4(v1, 1, v6);
  if (v7)
  {
    v8 = sub_1000114B8();
    sub_1000180EC(v8, v9);
    v10 = sub_10000CA70();
    sub_100404D68(v10, v11, v12, v13);
    type metadata accessor for Date();
    sub_1000037E8();
    (*(v14 + 8))(v0);
    return sub_100051E10();
  }

  else
  {
    sub_1000114B8();
    sub_100107040();
    swift_isUniquelyReferenced_nonNull_native();
    sub_100024698();
    sub_100239CD4();
    *v1 = v17;
    type metadata accessor for Date();
    sub_1000037E8();
    return (*(v15 + 8))(v0);
  }
}

uint64_t sub_100403C40()
{
  sub_100003A00();
  v2 = sub_10022C350(&qword_100CB6C60);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  v4 = sub_10000E9F4();
  type metadata accessor for MonthSunAverage(v4);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_1000038B4(v1, 1, v6);
  if (v7)
  {
    v8 = sub_1000114B8();
    sub_1000180EC(v8, v9);
    v10 = sub_10000CA70();
    sub_100404D68(v10, v11, v12, v13);
    type metadata accessor for Date();
    sub_1000037E8();
    (*(v14 + 8))(v0);
    return sub_100051E10();
  }

  else
  {
    sub_1000114B8();
    sub_100107040();
    swift_isUniquelyReferenced_nonNull_native();
    sub_100024698();
    sub_100239E38();
    *v1 = v17;
    type metadata accessor for Date();
    sub_1000037E8();
    return (*(v15 + 8))(v0);
  }
}

uint64_t sub_100403DF8(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(type metadata accessor for Location() - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

uint64_t sub_100403EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CA37B0);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_100003848();
  v75 = v6;
  sub_10000386C();
  __chkstk_darwin(v7);
  v73 = &v69[-v8];
  sub_10000386C();
  __chkstk_darwin(v9);
  v11 = &v69[-v10];
  v12 = type metadata accessor for LocationWeatherDataState(0);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_100003848();
  v81 = v14;
  sub_10000386C();
  __chkstk_darwin(v15);
  v72 = &v69[-v16];
  v17 = sub_10022C350(&qword_100CA3898);
  v18 = sub_100003810(v17);
  __chkstk_darwin(v18);
  sub_100003848();
  v74 = v19;
  sub_10000386C();
  __chkstk_darwin(v20);
  v22 = &v69[-v21];
  v23 = type metadata accessor for WeatherMapPresentationState(0);
  sub_1000037E8();
  __chkstk_darwin(v24);
  sub_1000037D8();
  v27 = (v26 - v25);
  v28 = type metadata accessor for InteractiveMapInput();
  v29 = *(a1 + v28[5]);
  v83 = a1;
  v80 = v29;
  v79 = sub_100403DF8(&_swiftEmptyDictionarySingleton, sub_100404910, v82, v29);
  sub_1004049F8();
  v76 = v23;
  v30 = &v27[*(v23 + 28)];
  v32 = *v30;
  v31 = v30[1];
  v77 = *v30;
  v78 = v31;
  if (v31)
  {
    v33 = *(a1 + v28[8] + 16);
    swift_bridgeObjectRetain_n();
    sub_1000864C0(v32, v31, v33);

    sub_1000038B4(v11, 1, v12);
    if (v51)
    {
      sub_1000180EC(v11, &qword_100CA37B0);
    }

    else
    {
      sub_100107040();
      v34 = v81;
      sub_100107040();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        v36 = sub_10022C350(&qword_100CA75D8);
        v37 = *(v36 + 48);
        v38 = *(v36 + 64);
        sub_10000E78C();
        sub_100107040();
        sub_100404A54(v34 + v38, type metadata accessor for NewsDataModel);
        sub_100404A54(v34 + v37, type metadata accessor for PreprocessedWeatherData);
        v39 = 0;
        goto LABEL_9;
      }

      sub_10000413C();
    }
  }

  v39 = 1;
LABEL_9:
  v40 = type metadata accessor for WeatherData(0);
  v81 = v22;
  sub_10001B350(v22, v39, 1, v40);
  v70 = v27[1];
  v41 = *v27;
  v42 = v28[7];
  v43 = *(a1 + v28[8] + 16);
  v44 = *(a1 + v42);
  v45 = *(a1 + v42 + 8);
  v46 = v73;
  v71 = v27;
  v72 = v44;
  v47 = v45;
  sub_1000864C0(v44, v45, v43);
  v48 = v75;
  sub_10040492C();
  sub_1000038B4(v48, 1, v12);
  if (v51)
  {
    sub_1000180EC(v46, &qword_100CA37B0);
    sub_1000180EC(v48, &qword_100CA37B0);
    v50 = v74;
    sub_10001B350(v74, 1, 1, v40);
LABEL_14:
    LODWORD(v75) = *(a1 + v28[9]);
    goto LABEL_15;
  }

  v49 = v46;
  v50 = v74;
  sub_1001A0D3C();
  sub_1000180EC(v49, &qword_100CA37B0);
  sub_10000413C();
  sub_1000038B4(v50, 1, v40);
  if (v51)
  {
    goto LABEL_14;
  }

  LODWORD(v75) = 0;
LABEL_15:
  v52 = v41 == 4;
  v53 = (v70 & 0xC0) == 64;
  sub_1000180EC(v50, &qword_100CA3898);
  type metadata accessor for WeatherMapOverlayKind();
  sub_1000037E8();
  (*(v54 + 16))(a2, a1);
  v70 = *(a1 + v28[10]);
  v55 = *(a1 + v28[12]);
  v56 = (a1 + v28[13]);
  v57 = v56[1];
  v74 = *v56;
  LODWORD(v73) = *(a1 + v28[14]);
  v58 = type metadata accessor for InteractiveMapViewModel();
  v59 = v71;
  sub_1004049F8();

  v60 = v80;

  sub_100404A54(v59, type metadata accessor for WeatherMapPresentationState);
  sub_10040492C();
  *(a2 + v58[5]) = v60;
  v61 = (a2 + v58[6]);
  *v61 = v72;
  v61[1] = v47;
  *(a2 + v58[7]) = v79;
  *(a2 + v58[8]) = v75;
  *(a2 + v58[9]) = v70;
  v62 = (a2 + v58[10]);
  v63 = v78;
  *v62 = v77;
  v62[1] = v63;
  *(a2 + v58[11]) = v53;
  *(a2 + v58[12]) = v53;
  *(a2 + v58[13]) = v52;
  *(a2 + v58[14]) = v55;
  *(a2 + v58[15]) = v52;
  v64 = (a2 + v58[16]);
  *v64 = v74;
  v64[1] = v57;
  *(a2 + v58[17]) = v73;
  sub_100404988(v81, a2 + v58[18]);
  v65 = sub_10000FEF4();
  return sub_10001B350(v65, v66, v67, v58);
}

uint64_t sub_100404560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29[1] = a1;
  v4 = sub_10022C350(&qword_100CA3898);
  __chkstk_darwin(v4 - 8);
  v6 = v29 - v5;
  v29[0] = type metadata accessor for WeatherData(0);
  __chkstk_darwin(v29[0]);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CA37B0);
  __chkstk_darwin(v9 - 8);
  v11 = v29 - v10;
  v12 = type metadata accessor for LocationWeatherDataState(0);
  __chkstk_darwin(v12);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v29 - v16;
  v18 = *(a3 + *(type metadata accessor for InteractiveMapInput() + 32) + 16);
  v19 = Location.id.getter();
  sub_1000864C0(v19, v20, v18);

  if (sub_100024D10(v11, 1, v12) == 1)
  {
    return sub_1000180EC(v11, &qword_100CA37B0);
  }

  sub_100107040();
  sub_1004049F8();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_10022C350(&qword_100CA75D8);
    v23 = *(v22 + 48);
    v24 = *(v22 + 64);
    sub_100107040();
    sub_100404A54(&v14[v24], type metadata accessor for NewsDataModel);
    sub_100404A54(&v14[v23], type metadata accessor for PreprocessedWeatherData);
    v25 = Location.id.getter();
    v27 = v26;
    sub_1004049F8();
    sub_10001B350(v6, 0, 1, v29[0]);
    sub_100403758(v6, v25, v27);
    sub_100404A54(v8, type metadata accessor for WeatherData);
    v28 = v17;
  }

  else
  {
    sub_100404A54(v17, type metadata accessor for LocationWeatherDataState);
    v28 = v14;
  }

  return sub_100404A54(v28, type metadata accessor for LocationWeatherDataState);
}

uint64_t sub_10040492C()
{
  sub_100003A00();
  sub_10022C350(v2);
  sub_1000037E8();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_100404988(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA3898);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004049F8()
{
  sub_100003A00();
  v2(0);
  sub_1000037E8();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_100404A54(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100404AAC@<X0>(uint64_t a1@<X8>)
{
  sub_100237FB4();
  if (v4)
  {
    v5 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v1;
    v7 = *(*v1 + 24);
    sub_10022C350(&qword_100CA3AD8);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v7);
    v8 = *(v16 + 48);
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
    v10 = *(v16 + 56);
    v11 = type metadata accessor for Elevation();
    (*(*(v11 - 8) + 32))(a1, v10 + *(*(v11 - 8) + 72) * v5, v11);
    sub_10005E424(&qword_100CA39C8, &type metadata accessor for Date);
    _NativeDictionary._delete(at:)();
    *v1 = v16;
    v12 = a1;
    v13 = 0;
    v14 = v11;
  }

  else
  {
    v14 = type metadata accessor for Elevation();
    v12 = a1;
    v13 = 1;
  }

  return sub_10001B350(v12, v13, 1, v14);
}

uint64_t sub_100404C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  sub_100020714();
  sub_100031B34();
  if (v7)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v8 = sub_10002C6D4();
    sub_10003A1C0(v8, v9, v10, v11, v12, v13, v14, v15, v22, v23);

    v16 = a5(0);
    sub_1000037E8();
    sub_100107040();
    _NativeDictionary._delete(at:)();
    *v5 = v24;
    v17 = sub_10000FEF4();
    v20 = v16;
  }

  else
  {
    a5(0);
    v17 = sub_100007E1C();
  }

  return sub_10001B350(v17, v18, v19, v20);
}

uint64_t sub_100404D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_100020714();
  sub_100237FB4();
  if (v7)
  {
    v8 = v6;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = sub_10002C6D4();
    sub_10003A1C0(v9, v10, v11, v12, v13, v14, v15, v16, v26, v27);
    v17 = *(v28 + 48);
    v18 = type metadata accessor for Date();
    sub_1000037E8();
    (*(v19 + 8))(v17 + *(v19 + 72) * v8, v18);
    v20 = a4(0);
    sub_1000037E8();
    sub_100107040();
    sub_10005E424(&qword_100CA39C8, &type metadata accessor for Date);
    _NativeDictionary._delete(at:)();
    *v4 = v28;
    v21 = sub_10000FEF4();
    v24 = v20;
  }

  else
  {
    a4(0);
    v21 = sub_100007E1C();
  }

  return sub_10001B350(v21, v22, v23, v24);
}

uint64_t sub_100404ECC()
{
  v2 = v0;
  sub_100238398();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_100025198();
  sub_100008574();
  v4 = sub_10022C350(&qword_100CA3AA8);
  sub_1000145E4(v4, v5, v6, v7, v8, v9, v10, v11, v17, v18);
  v12 = *(v19 + 48);
  v13 = type metadata accessor for VFXEffectViewID();
  sub_1000037E8();
  (*(v14 + 8))(v12 + *(v14 + 72) * v1, v13);
  v15 = *(*(v19 + 56) + 8 * v1);
  sub_10022C350(&qword_100CB6C50);
  sub_10005E424(&qword_100CA3AB0, &type metadata accessor for VFXEffectViewID);
  sub_10001842C();
  *v2 = v19;
  return v15;
}

void *sub_100404FD8()
{
  sub_10022C350(&qword_100CB6D48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A3BBA0;
  v2 = v0[2];
  if (v2)
  {
    v3 = type metadata accessor for LocationNetworkActivityFlow();
    sub_10001EC00();
    v6 = sub_100405574(v4, v5);
    v7 = v2;
  }

  else
  {
    v7 = 0;
    v3 = 0;
    v6 = 0;
    *(inited + 40) = 0;
    *(inited + 48) = 0;
  }

  *(inited + 32) = v7;
  *(inited + 56) = v3;
  *(inited + 64) = v6;
  v8 = v0[3];
  if (v8)
  {
    v9 = type metadata accessor for LocationNetworkActivityFlow();
    sub_10001EC00();
    v12 = sub_100405574(v10, v11);
    v13 = v8;
  }

  else
  {
    v13 = 0;
    v9 = 0;
    v12 = 0;
    *(inited + 80) = 0;
    *(inited + 88) = 0;
  }

  *(inited + 72) = v13;
  *(inited + 96) = v9;
  *(inited + 104) = v12;
  v14 = v0[4];
  if (v14)
  {
    v15 = type metadata accessor for InteractiveMapNetworkActivityFlow();
    v16 = sub_100405574(&qword_100CB6D58, type metadata accessor for InteractiveMapNetworkActivityFlow);
  }

  else
  {
    v15 = 0;
    v16 = 0;
    *(inited + 120) = 0;
    *(inited + 128) = 0;
  }

  *(inited + 112) = v14;
  *(inited + 136) = v15;
  *(inited + 144) = v16;

  v17 = _swiftEmptyArrayStorage;
  for (i = 32; i != 152; i += 40)
  {
    sub_100060DE0(inited + i, &v26, &qword_100CB6D50);
    v23[0] = v26;
    v23[1] = v27;
    v24 = v28;
    if (*(&v27 + 1))
    {
      sub_100013188(v23, v25);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069F56C();
        v17 = v20;
      }

      v19 = v17[2];
      if (v19 >= v17[3] >> 1)
      {
        sub_10069F56C();
        v17 = v21;
      }

      v17[2] = v19 + 1;
      sub_100013188(v25, &v17[5 * v19 + 4]);
    }

    else
    {
      sub_10003FDF4(v23, &qword_100CB6D50);
    }
  }

  swift_setDeallocating();
  sub_1005C1F40();
  return v17;
}

void sub_100405270()
{
  if (*(v0 + 24))
  {
    sub_10005A708();
  }
}

uint64_t sub_1004052A0()
{
  if (*(v0 + 24))
  {
    return sub_100194DDC();
  }

  return result;
}

uint64_t sub_1004052CC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_1000161C0(a1, v5);
  return (*(v6 + 16))(a2, a3, v5, v6);
}

uint64_t sub_100405340()
{

  return v0;
}

uint64_t sub_100405370()
{
  sub_100405340();

  return swift_deallocClassInstance();
}

uint64_t sub_1004053A4()
{
  sub_100404FD8();
  sub_10022C350(&qword_100CB6D38);
  type metadata accessor for WeatherNetworkActivity();
  sub_100067638(&qword_100CB6D40, &qword_100CB6D38);
  Sequence.first<A>(map:)();
}

uint64_t sub_100405468(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  v5 = a1[3];
  v6 = a1[4];
  sub_1000161C0(a1, v5);
  return a3(a2, v5, *(v6 + 8));
}

uint64_t sub_100405574(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004055EC(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA2040 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA2050 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA2048 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA2038 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA2030 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:
}

void sub_100405758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v14[0] = xmmword_100A2C3F0;
  v14[1] = xmmword_100A3BBC0;
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BC10;
  v31 = v14;
  v32 = v13;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3BBB0;
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
  sub_100013794(a1, a2, a3, a4, a5, a6, a7, a8, 0);
  qword_100D8FD00 = v8;
}

void sub_100405870()
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
  v7[0] = xmmword_100A2C3F0;
  v7[1] = xmmword_100A3BC10;
  v21 = v8;
  v22 = v7;
  v6[0] = xmmword_100A2C3F0;
  v6[1] = xmmword_100A3BC30;
  v5[0] = xmmword_100A3BB70;
  v5[1] = xmmword_100A3BBB0;
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
  sub_100552E50();
  qword_100D8FD08 = v0;
}

void sub_100405980()
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
  v27[0] = xmmword_100A3BBD0;
  v27[1] = xmmword_100A3BB80;
  v26[0] = xmmword_100A3BC40;
  v26[1] = xmmword_100A3BC50;
  v44 = v27;
  v45 = v26;
  v25[0] = xmmword_100A3BB70;
  v25[1] = xmmword_100A3BBB0;
  *(&v23 + 1) = 4;
  v24 = xmmword_100A3BC60;
  sub_10000CA80(v25, v13, v14, v15, v16, v17, *(&v17 + 1), v18, *(&v18 + 1), v19, v20, v21, v22, 3);
  v17 = v1;
  v18 = v0;
  v46 = v2;
  v47 = &v17;
  sub_100013794(v3, v4, v5, v6, v7, v8, v9, v10, v11);
  qword_100D8FD10 = v12;
}

void sub_100405A84()
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
  v7[0] = xmmword_100A2C3F0;
  v7[1] = xmmword_100A3BC50;
  v23 = v8;
  v24 = v7;
  v6[0] = xmmword_100A3BC40;
  v6[1] = xmmword_100A3BC60;
  v5[0] = xmmword_100A3BB70;
  v5[1] = xmmword_100A3BBB0;
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
  sub_100552E50();
  qword_100D8FD18 = v0;
}

void sub_100405B90()
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
  v27[0] = xmmword_100A3BC60;
  v27[1] = xmmword_100A3BC60;
  v26[0] = xmmword_100A3BC40;
  v26[1] = xmmword_100A3BC40;
  v44 = v27;
  v45 = v26;
  v25[0] = xmmword_100A3BB70;
  v25[1] = xmmword_100A3BBB0;
  *(&v23 + 1) = 3;
  v24 = xmmword_100A3BC40;
  sub_10000CA80(v25, v13, v14, v15, v16, v17, *(&v17 + 1), v18, *(&v18 + 1), v19, v20, v21, v22, 2);
  v17 = v1;
  v18 = v0;
  v46 = v2;
  v47 = &v17;
  sub_100013794(v3, v4, v5, v6, v7, v8, v9, v10, v11);
  qword_100D8FD20 = v12;
}

uint64_t sub_100405CA4(uint64_t a1, void (*a2)(char *))
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

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather27LocationSevereConfiguration8_Storage_map, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_10001B350(v24, 0, 1, v5);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather27LocationSevereConfiguration8_Storage_airQuality, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather27LocationSevereConfiguration8_Storage_severeAlert, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_100035AD0(v24, v21, &qword_100CA5008);
  sub_10031694C(v13, v31, type metadata accessor for LocationComponentContainerViewModel);
  sub_10031694C(v2, v32, type metadata accessor for LocationComponentContainerViewModel);
  type metadata accessor for SevereContent._Storage(0);
  swift_allocObject();
  v27 = sub_1002D9388(v30);
  sub_1003169AC(v2, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v13, type metadata accessor for LocationComponentContainerViewModel);
  sub_1000180EC(v24, &qword_100CA5008);
  return v27;
}

uint64_t sub_100405FE0(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = v125 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather13SevereContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a1 + v10, v5, &qword_100CA5008);
  v11 = sub_100024D10(v5, 1, v6);
  v129 = a1;
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
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather13SevereContent8_Storage_airQuality, v27 + v13, v7);
    *(v12 + 104) = sub_1001B38A0(v27);
    *(v12 + 112) = v28;
    *(v12 + 120) = v29;
    v126 = v13 + 2 * v14;
    v127 = v14;
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
    v128 = v31;
    v39 = swift_allocObject();
    sub_1000056EC(v39);
    v41 = v40 + v13;
    v42 = *(v36 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v42 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, &v127[v41], v7);
    *(v12 + 152) = sub_1001B38A0(v32);
    *(v12 + 160) = v43;
    *(v12 + 168) = v44;
    v45 = swift_allocObject();
    sub_1000056EC(v45);
    v47 = v46 + v13;
    v48 = v129;
    v49 = *(v129 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v50 = v127;
    sub_10031694C(v49 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, &v127[v47], v7);
    *(v12 + 176) = sub_1001B38A0(v32);
    *(v12 + 184) = v51;
    *(v12 + 192) = v52;
    v53 = sub_10000C998();
    sub_1000056EC(v53);
    v55 = v54 + v13;
    v56 = *(v48 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    v57 = v55 + v50;
    v58 = v50;
    sub_10031694C(v56 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v57, v7);
    *(v12 + 200) = sub_1001B38A0(v32);
    *(v12 + 208) = v59;
    *(v12 + 216) = v60;
    v61 = sub_10000C998();
    sub_100003E18(v61);
    v63 = v62 + v13;
    v64 = *(v48 + 16);
    sub_10031694C(v64 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v62 + v13, v7);
    sub_10031694C(v64 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v63 + v58, v7);
    *(v12 + 224) = sub_1001B38A0(v61);
    *(v12 + 232) = v65;
    *(v12 + 240) = v66;
  }

  else
  {
    sub_1001B6FB0(v5, v9, type metadata accessor for LocationComponentContainerViewModel);
    sub_10022C350(&qword_100CAC7E8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A30470;
    v67 = sub_10022C350(&qword_100CAC7F0);
    v68 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v69 = *(v7 + 72);
    v70 = *(v7 + 80);
    v71 = v67;
    v72 = swift_allocObject();
    sub_10001361C(v72, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(a1 + v73, v72 + v68, v74);
    *(v12 + 32) = sub_1001B38A0(v72);
    *(v12 + 40) = v75;
    *(v12 + 48) = v76;
    sub_1000167B0();
    v77 = swift_allocObject();
    sub_1000056EC(v77);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v72 + v68, v7);
    *(v12 + 56) = sub_1001B38A0(v72);
    *(v12 + 64) = v78;
    *(v12 + 72) = v79;
    sub_1000167B0();
    v80 = swift_allocObject();
    sub_1000056EC(v80);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v72 + v68, v7);
    *(v12 + 80) = sub_1001B38A0(v72);
    *(v12 + 88) = v81;
    *(v12 + 96) = v82;
    sub_1000167B0();
    v83 = swift_allocObject();
    sub_1000056EC(v83);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather13SevereContent8_Storage_airQuality, v72 + v68, v7);
    *(v12 + 104) = sub_1001B38A0(v72);
    *(v12 + 112) = v84;
    *(v12 + 120) = v85;
    v128 = v70;
    v86 = swift_allocObject();
    sub_1000056EC(v86);
    sub_10031694C(v9, v87 + v68, v7);
    *(v12 + 128) = sub_1001B38A0(v72);
    *(v12 + 136) = v88;
    *(v12 + 144) = v89;
    v90 = v68 + 2 * v69;
    v91 = v69;
    sub_1000167B0();
    v92 = swift_allocObject();
    v93 = sub_10001361C(v92, xmmword_100A2D320);
    v127 = v9;
    v94 = v93 + v68;
    v95 = *(a1 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    v125[0] = v91;
    sub_10031694C(v95 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v94[v91], v7);
    *(v12 + 152) = sub_1001B38A0(v92);
    *(v12 + 160) = v96;
    *(v12 + 168) = v97;
    v125[1] = v90;
    v98 = swift_allocObject();
    sub_100003E18(v98);
    v100 = v99 + v68;
    v101 = v129;
    v102 = *(v129 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v102 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v100 + v91, v7);
    *(v12 + 176) = sub_1001B38A0(v98);
    *(v12 + 184) = v103;
    *(v12 + 192) = v104;
    sub_1000167B0();
    v126 = v71;
    v105 = swift_allocObject();
    sub_100003E18(v105);
    v107 = v106 + v68;
    v108 = *(v101 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v109 = v125[0];
    sub_10031694C(v108 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v107 + v125[0], v7);
    *(v12 + 200) = sub_1001B38A0(v105);
    *(v12 + 208) = v110;
    *(v12 + 216) = v111;
    sub_1000167B0();
    v112 = swift_allocObject();
    sub_100003E18(v112);
    v114 = v113 + v68;
    v115 = *(v101 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    sub_10031694C(v115 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v114 + v109, v7);
    *(v12 + 224) = sub_1001B38A0(v112);
    *(v12 + 232) = v116;
    *(v12 + 240) = v117;
    v118 = swift_allocObject();
    sub_100003E18(v118);
    v120 = v119 + v68;
    v121 = *(v129 + 16);
    sub_10031694C(v121 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v119 + v68, v7);
    sub_10031694C(v121 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v120 + v109, v7);
    *(v12 + 248) = sub_1001B38A0(v118);
    *(v12 + 256) = v122;
    *(v12 + 264) = v123;
    sub_1003169AC(v127, v7);
  }

  return v12;
}

uint64_t sub_100406884(char a1, char a2, uint64_t a3)
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
  v37 = sub_1004055EC(a1, a2);
  v38 = OBJC_IVAR____TtCV7Weather13SevereContent8_Storage_map;
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
  sub_10031694C(a3 + *(v39 + 20) + OBJC_IVAR____TtCV7Weather13SevereContent8_Storage_airQuality, v3, type metadata accessor for LocationComponentViewModel);
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

void (*sub_100406F18(uint64_t a1))(uint64_t)
{
  sub_10022C350(&qword_100CACCC8);
  sub_1000037C4();
  v54 = v4;
  v55 = v3;
  __chkstk_darwin(v3);
  v6 = &v52 - v5;
  v7 = sub_10022C350(&qword_100CAC1B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v52 - v11;
  __chkstk_darwin(v13);
  v15 = &v52 - v14;
  __chkstk_darwin(v16);
  v18 = &v52 - v17;
  v19 = type metadata accessor for ConditionUnits();
  sub_1000037C4();
  v21 = v20;
  __chkstk_darwin(v22);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for PastDataComparisonTextContext();
  v26 = v25[9];
  v56 = v24;
  v57 = v21;
  (*(v21 + 16))(v24, a1 + v26, v19);
  sub_1004075F8(a1 + v25[13], v18);
  v27 = type metadata accessor for ExtremaResult();
  sub_1000083BC(v18);
  if (v28)
  {
LABEL_5:
    sub_100407668(v18);
    sub_1004075F8(a1 + v25[12], v12);
    sub_1000083BC(v12);
    if (!v28)
    {
      v31 = v19;
      ExtremaResult.maxValue.getter();
      sub_100014604();
      v33 = *(v32 + 8);
      v33(v12, v27);
      sub_1004075F8(a1 + v25[10], v9);
      sub_1000083BC(v9);
      if (!v28)
      {
        ExtremaResult.maxValue.getter();
        v33(v9, v27);
        v37 = v56;
        v38 = ConditionUnits.windSpeed.getter();
        sub_10031AE5C();
        sub_100008588();
        v45 = v55;
        sub_100028430();
        v46 = sub_100005C30();
        v38(v46);
        v47 = round(v1);
        ConditionUnits.windSpeed.getter();
        Measurement.init(value:unit:)();
        sub_100028430();
        v49 = v48;
        (v38)(v6, v45);
        v50 = round(v49);
        if (v47 < v50)
        {
          LocalizedStringKey.init(stringLiteral:)();
          sub_10001C138();
          Text.init(_:tableName:bundle:comment:)();
          sub_10001C14C();
          v19 = v31;
          goto LABEL_26;
        }

        v19 = v31;
        if (v50 >= v47)
        {
          sub_100022B48();
          sub_100004164();
          v52 = 127;
        }

        else
        {
          sub_100022B48();
        }

        goto LABEL_24;
      }

      v12 = v9;
      v19 = v31;
    }

    sub_100407668(v12);
    v37 = v56;
    if (qword_100CA2700 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000703C(v34, qword_100D90B68);
    v38 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v38, v35, "Missing extrema values for building wind comparison text", v36, 2u);
    }

    LocalizedStringKey.init(stringLiteral:)();
    sub_10001C138();
    goto LABEL_25;
  }

  v53 = v19;
  ExtremaResult.maxValue.getter();
  sub_100014604();
  v30 = *(v29 + 8);
  v30(v18, v27);
  sub_1004075F8(a1 + v25[11], v15);
  sub_1000083BC(v15);
  if (v28)
  {
    v18 = v15;
    v19 = v53;
    goto LABEL_5;
  }

  ExtremaResult.maxValue.getter();
  v30(v15, v27);
  v37 = v56;
  v38 = ConditionUnits.windGust.getter();
  sub_10031AE5C();
  sub_100008588();
  v39 = v55;
  sub_100028430();
  v40 = sub_100005C30();
  v38(v40);
  v41 = round(v1);
  ConditionUnits.windGust.getter();
  Measurement.init(value:unit:)();
  sub_100028430();
  v43 = v42;
  (v38)(v6, v39);
  v44 = round(v43);
  if (v41 >= v44)
  {
    v19 = v53;
    if (v44 >= v41)
    {
      LocalizedStringKey.init(stringLiteral:)();
      sub_100004164();
      v52 = 125;
    }

    else
    {
      LocalizedStringKey.init(stringLiteral:)();
      sub_100004164();
      v52 = 138;
    }

LABEL_24:
    sub_10001C138();
LABEL_25:
    Text.init(_:tableName:bundle:comment:)();
    sub_10001C14C();
    goto LABEL_26;
  }

  LocalizedStringKey.init(stringLiteral:)();
  sub_100004164();
  v52 = 139;
  sub_10001C138();
  Text.init(_:tableName:bundle:comment:)();
  sub_10001C14C();
  v19 = v53;
LABEL_26:
  (*(v57 + 8))(v37, v19);
  return v38;
}

uint64_t sub_1004075F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CAC1B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100407668(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CAC1B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004076D0()
{
  v0 = sub_10022C350(&unk_100CE49F0);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v11 - v4;
  sub_100095588();
  sub_100095588();
  v6 = type metadata accessor for CurrentLocation();
  v7 = sub_100024D10(v3, 1, v6);

  if (v7 == 1)
  {
    sub_1000180EC(v3, &unk_100CE49F0);
  }

  else
  {
    CurrentLocation.id.getter();
    sub_1000CA630(v3, &type metadata accessor for CurrentLocation);
  }

  sub_100141E74();
  v9 = v8;

  sub_1000180EC(v5, &unk_100CE49F0);
  return v9 & 1;
}

unint64_t sub_1004078B4()
{
  result = qword_100CB6E00;
  if (!qword_100CB6E00)
  {
    type metadata accessor for NotificationsOptInReducer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6E00);
  }

  return result;
}

Swift::Int sub_100407944()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ListSessionTrigger.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

unint64_t sub_100407998()
{
  result = qword_100CB6E08;
  if (!qword_100CB6E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6E08);
  }

  return result;
}

uint64_t sub_1004079EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100407998();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

unint64_t sub_100407AA4(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v4 = String.subscript.getter();

    return v4;
  }

  return result;
}

void sub_100407B48()
{
  sub_10000C778();
  v2 = v1;
  v3 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  sub_10022C350(&qword_100CA71B0);
  sub_1000037E8();
  __chkstk_darwin(v10);
  v11 = sub_1000246B4();
  sub_1000178A4(*(v11 + 20));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorSchemeContrast();
    sub_1000037E8();
    (*(v12 + 32))(v2, v0);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    sub_100017884();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v9, v3);
  }

  sub_10000536C();
}

void sub_100407CEC()
{
  sub_10000C778();
  v2 = v1;
  v3 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  sub_10022C350(&unk_100CE1000);
  sub_1000037E8();
  __chkstk_darwin(v10);
  v11 = sub_1000246B4();
  sub_1000178A4(*(v11 + 40));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ScenePhase();
    sub_1000037E8();
    (*(v12 + 32))(v2, v0);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    sub_100017884();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v9, v3);
  }

  sub_10000536C();
}

void sub_100407E90()
{
  sub_10000C778();
  v21[1] = v1;
  v2 = type metadata accessor for MoonComponentView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = type metadata accessor for ScenePhase();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  sub_10022C350(&qword_100CB6EE8);
  sub_1000037E8();
  __chkstk_darwin(v12);
  v14 = v21 - v13;
  *v14 = static HorizontalAlignment.center.getter();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v15 = sub_10022C350(&qword_100CB6EF0);
  sub_10040813C(v0, &v14[*(v15 + 44)]);
  sub_100407CEC();
  sub_10040DB24(v0, v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MoonComponentView);
  v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = swift_allocObject();
  sub_10040DB80(v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for MoonComponentView);
  sub_100005A00();
  sub_100006F64(v18, &qword_100CB6EE8);
  sub_100005C60();
  sub_10040D9F0(v19, v20);
  View.onChange<A>(of:initial:_:)();

  (*(v7 + 8))(v11, v5);
  sub_100018144(v14, &qword_100CB6EE8);
  sub_10000536C();
}

uint64_t sub_10040813C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = type metadata accessor for MoonComponentView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CB6F08);
  v49 = *(v8 - 8);
  v50 = v8;
  __chkstk_darwin(v8);
  v48 = &v43 - v9;
  v56 = sub_10022C350(&qword_100CB6F10);
  __chkstk_darwin(v56);
  v11 = &v43 - v10;
  v12 = type metadata accessor for AccessibilityChildBehavior();
  v53 = *(v12 - 8);
  v54 = v12;
  __chkstk_darwin(v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_10022C350(&qword_100CB6F18);
  __chkstk_darwin(v55);
  v46 = &v43 - v15;
  v52 = sub_10022C350(&qword_100CB6F20);
  v16 = *(v52 - 8);
  __chkstk_darwin(v52);
  v47 = &v43 - v17;
  v18 = type metadata accessor for EnvironmentValues();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1 + *(v4 + 36);
  v24 = *v23;
  if (*(v23 + 8) == 1)
  {
    if ((v24 & 1) == 0)
    {
LABEL_3:
      sub_10040DB24(a1, v7, type metadata accessor for MoonComponentView);
      v25 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v26 = swift_allocObject();
      sub_10040DB80(v7, v26 + v25, type metadata accessor for MoonComponentView);
      v57 = sub_10040D87C;
      v58 = v26;
      static AccessibilityChildBehavior.combine.getter();
      v27 = sub_10022C350(&qword_100CB6F28);
      v28 = sub_100006F64(&qword_100CB6F30, &qword_100CB6F28);
      v29 = v48;
      View.accessibilityElement(children:)();
      (*(v53 + 8))(v14, v54);

      v31 = v49;
      v30 = v50;
      (*(v49 + 16))(v11, v29, v50);
      swift_storeEnumTagMultiPayload();
      v32 = sub_10040D894();
      v57 = v55;
      v58 = v32;
      swift_getOpaqueTypeConformance2();
      v57 = v27;
      v58 = v28;
      swift_getOpaqueTypeConformance2();
      _ConditionalContent<>.init(storage:)();
      return (*(v31 + 8))(v29, v30);
    }
  }

  else
  {
    v43 = v20;

    static os_log_type_t.fault.getter();
    v44 = v16;
    v34 = static Log.runtimeIssuesLog.getter();
    v45 = v11;
    v35 = v34;
    v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = v44;
    os_log(_:dso:log:_:_:)();

    v11 = v45;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v24, 0);
    (*(v19 + 8))(v22, v43);
    if (v57 != 1)
    {
      goto LABEL_3;
    }
  }

  v36 = v46;
  sub_100408890(v46);
  static AccessibilityChildBehavior.combine.getter();
  v37 = sub_10040D894();
  v38 = v47;
  v39 = v55;
  View.accessibilityElement(children:)();
  (*(v53 + 8))(v14, v54);
  sub_100018144(v36, &qword_100CB6F18);
  v40 = v52;
  (*(v16 + 16))(v11, v38, v52);
  swift_storeEnumTagMultiPayload();
  v57 = v39;
  v58 = v37;
  swift_getOpaqueTypeConformance2();
  v41 = sub_10022E824(&qword_100CB6F28);
  v42 = sub_100006F64(&qword_100CB6F30, &qword_100CB6F28);
  v57 = v41;
  v58 = v42;
  swift_getOpaqueTypeConformance2();
  _ConditionalContent<>.init(storage:)();
  return (*(v16 + 8))(v38, v40);
}

uint64_t sub_100408890@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v25 = sub_10022C350(&qword_100CB6F58);
  __chkstk_darwin(v25);
  v4 = &v24 - v3;
  v5 = sub_10022C350(&qword_100CB6F60);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v27 = sub_10022C350(&qword_100CB6F48);
  __chkstk_darwin(v27);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v24 = &v24 - v11;
  v12 = type metadata accessor for ContentSizeCategory();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MoonComponentView(0);
  sub_10009ECC8();
  v17 = ContentSizeCategory.isAccessibilityCategory.getter();
  (*(v13 + 8))(v15, v12);
  if (v17)
  {
    v18 = *(v2 + *(v16 + 48) + 40);
    if (v18[2])
    {
      v20 = v18[4];
      v19 = v18[5];
    }

    else
    {
      v20 = 0;
      v19 = 0;
    }

    *v9 = static HorizontalAlignment.leading.getter();
    *(v9 + 1) = 0x4018000000000000;
    v9[16] = 0;
    sub_10022C350(&qword_100CB6F70);
    sub_10040A414(v2, v20, v19);

    v23 = v24;
    sub_1001E5A5C(v9, v24);
    sub_1000302D8(v23, v7, &qword_100CB6F48);
    swift_storeEnumTagMultiPayload();
    sub_100006F64(&qword_100CB6F40, &qword_100CB6F48);
    sub_100006F64(&qword_100CB6F50, &qword_100CB6F58);
    _ConditionalContent<>.init(storage:)();
    return sub_100018144(v23, &qword_100CB6F48);
  }

  else
  {
    *v4 = static Axis.Set.horizontal.getter();
    v21 = sub_10022C350(&qword_100CB6F68);
    sub_100409244(v2, &v4[*(v21 + 44)]);
    sub_1000302D8(v4, v7, &qword_100CB6F58);
    swift_storeEnumTagMultiPayload();
    sub_100006F64(&qword_100CB6F40, &qword_100CB6F48);
    sub_100006F64(&qword_100CB6F50, &qword_100CB6F58);
    _ConditionalContent<>.init(storage:)();
    return sub_100018144(v4, &qword_100CB6F58);
  }
}

uint64_t sub_100408CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ScenePhase();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  if (qword_100CA26B8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_10000703C(v12, qword_100D90A90);
  v41 = *(v6 + 16);
  v41(v11, a2, v5);
  v40 = v13;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v37 = v8;
    v17 = v16;
    v18 = swift_slowAlloc();
    v38 = a2;
    v19 = v18;
    v45[0] = v18;
    *v17 = 136315138;
    v20 = sub_1004090BC();
    v39 = a3;
    v22 = v21;
    v23 = v11;
    v24 = *(v6 + 8);
    v24(v23, v5);
    v25 = sub_100078694(v20, v22, v45);
    a3 = v39;

    *(v17 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v14, v15, "MoonComponentView:scenePhase change:%s", v17, 0xCu);
    sub_100006F14(v19);
    a2 = v38;

    v8 = v37;
  }

  else
  {

    v26 = v11;
    v24 = *(v6 + 8);
    v24(v26, v5);
  }

  v41(v8, a2, v5);
  v27 = (*(v6 + 88))(v8, v5);
  v28 = enum case for ScenePhase.active(_:);
  result = (v24)(v8, v5);
  if (v27 == v28)
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "MoonComponentView:forceUpdateFlag", v32, 2u);
    }

    v33 = a3 + *(type metadata accessor for MoonComponentView(0) + 56);
    v35 = *(v33 + 8);
    LOBYTE(v45[0]) = *v33;
    v34 = v45[0];
    v45[1] = v35;

    sub_10022C350(&qword_100CA5A80);
    State.wrappedValue.getter();
    v43 = v34;
    v44 = v35;
    v42 = (v46 & 1) == 0;
    State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_1004090BC()
{
  v1 = v0;
  v2 = type metadata accessor for ScenePhase();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for ScenePhase.background(_:))
  {
    return 0x756F72676B636162;
  }

  if (v7 == enum case for ScenePhase.inactive(_:))
  {
    return 0x6576697463616E69;
  }

  if (v7 == enum case for ScenePhase.active(_:))
  {
    return 0x657669746361;
  }

  (*(v3 + 8))(v6, v2);
  return 4271950;
}

uint64_t sub_100409244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CB6FC8);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v10 = sub_10022C350(&qword_100CB6FD0);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v19 - v14;
  sub_100409458(&v19 - v14);
  *v9 = static Axis.Set.vertical.getter();
  v16 = sub_10022C350(&qword_100CB6FD8);
  sub_100409698(a1, &v9[*(v16 + 44)]);
  sub_1000302D8(v15, v12, &qword_100CB6FD0);
  sub_1000302D8(v9, v6, &qword_100CB6FC8);
  sub_1000302D8(v12, a2, &qword_100CB6FD0);
  v17 = sub_10022C350(&qword_100CB6FE0);
  sub_1000302D8(v6, a2 + *(v17 + 48), &qword_100CB6FC8);
  sub_100018144(v9, &qword_100CB6FC8);
  sub_100018144(v15, &qword_100CB6FD0);
  sub_100018144(v6, &qword_100CB6FC8);
  return sub_100018144(v12, &qword_100CB6FD0);
}

uint64_t sub_100409458@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10022C350(&qword_100CB7028);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for HorizontalABWithB1x1RatioLayout();
  v8 = (v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = (&v18 - v12);
  sub_100046E64();
  *v13 = OS_os_log.init(subsystem:category:)();
  v14 = v8[7];
  *(v13 + v14) = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618);
  swift_storeEnumTagMultiPayload();
  *(v13 + v8[8]) = 0x4059000000000000;
  v15 = v13 + v8[9];
  *v15 = 0;
  v15[8] = 1;
  *(v13 + v8[10]) = 0x4030000000000000;
  sub_10040DB80(v13, v10, type metadata accessor for HorizontalABWithB1x1RatioLayout);
  sub_10040DB24(v10, v6, type metadata accessor for HorizontalABWithB1x1RatioLayout);
  sub_1000302D8(v6, a1, &qword_100CB7028);
  v16 = sub_10022C350(&qword_100CB6FD0);
  sub_100409D20(v2, a1 + *(v16 + 44));
  sub_100018144(v6, &qword_100CB7028);
  return sub_10040DBDC(v10);
}

uint64_t sub_100409698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CB6FE8);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v10 = sub_10022C350(&qword_100CB6FD0);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v19 - v14;
  sub_100409458(&v19 - v14);
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v16 = sub_10022C350(&qword_100CB6FF0);
  sub_100409F6C(a1, &v9[*(v16 + 44)]);
  sub_1000302D8(v15, v12, &qword_100CB6FD0);
  sub_1000302D8(v9, v6, &qword_100CB6FE8);
  sub_1000302D8(v12, a2, &qword_100CB6FD0);
  v17 = sub_10022C350(&qword_100CB6FF8);
  sub_1000302D8(v6, a2 + *(v17 + 48), &qword_100CB6FE8);
  sub_100018144(v9, &qword_100CB6FE8);
  sub_100018144(v15, &qword_100CB6FD0);
  sub_100018144(v6, &qword_100CB6FE8);
  return sub_100018144(v12, &qword_100CB6FD0);
}

uint64_t sub_1004098B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a1;
  v49 = a3;
  v48 = type metadata accessor for NamedCoordinateSpace();
  v51 = *(v48 - 8);
  __chkstk_darwin(v48);
  v50 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MoonView.RenderBehavior();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MoonComponentView(0);
  v14 = a2 + *(v13 + 48);
  v15 = type metadata accessor for MoonComponentViewModel();
  (*(v10 + 16))(v12, v14 + *(v15 + 28), v9);
  (*(v6 + 104))(v8, enum case for MoonView.RenderBehavior.renderOnceAfterUpdate(_:), v5);
  v16 = (a2 + *(v13 + 56));
  v17 = *v16;
  v18 = *(v16 + 1);
  v53 = v17;
  v54 = v18;
  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.getter();
  v19 = v49;
  MoonView.init(date:renderBehavior:forceUpdateFlag:)();
  v20 = *(sub_10022C350(&qword_100CB7038) + 36);
  v21 = enum case for BlendMode.screen(_:);
  v22 = type metadata accessor for BlendMode();
  (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  v23 = v19;
  v24 = *(v14 + *(v15 + 36)) * 0.0174532925;
  static UnitPoint.center.getter();
  v26 = v25;
  v28 = v27;
  v29 = v19 + *(sub_10022C350(&qword_100CB7040) + 36);
  *v29 = v24;
  *(v29 + 8) = v26;
  *(v29 + 16) = v28;
  if (qword_100CA21D0 != -1)
  {
    swift_once();
  }

  v30 = v48;
  v31 = sub_10000703C(v48, qword_100D90358);
  v33 = v50;
  v32 = v51;
  (*(v51 + 16))(v50, v31, v30);
  GeometryProxy.frame<A>(in:)();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  (*(v32 + 8))(v33, v30);
  v42 = v35 + 1.0;
  v55.origin.x = v35;
  v55.origin.y = v37;
  v55.size.width = v39;
  v55.size.height = v41;
  v43 = CGRectGetWidth(v55) + -2.0;
  v56.origin.x = v35;
  v56.origin.y = v37;
  v56.size.width = v39;
  v56.size.height = v41;
  v44 = CGRectGetHeight(v56) + -2.0;
  v45 = swift_allocObject();
  v45[2] = v42;
  v45[3] = v37 + 1.0;
  v45[4] = v43;
  v45[5] = v44;
  result = sub_10022C350(&qword_100CB7048);
  v47 = (v23 + *(result + 36));
  *v47 = sub_10040DCE4;
  v47[1] = v45;
  return result;
}

uint64_t sub_100409D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MoonComponentView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_10022C350(&qword_100CB6FE8);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  *v12 = static HorizontalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v13 = sub_10022C350(&qword_100CB6FF0);
  sub_100409F6C(a1, &v12[*(v13 + 44)]);
  sub_10040DB24(a1, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MoonComponentView);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_10040DB80(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for MoonComponentView);
  sub_1000302D8(v12, v9, &qword_100CB6FE8);
  sub_1000302D8(v9, a2, &qword_100CB6FE8);
  v16 = (a2 + *(sub_10022C350(&qword_100CB7030) + 48));
  *v16 = sub_10040DC38;
  v16[1] = v15;

  sub_100018144(v12, &qword_100CB6FE8);

  return sub_100018144(v9, &qword_100CB6FE8);
}

uint64_t sub_100409F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[0] = a2;
  v3 = type metadata accessor for MoonComponentView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = sub_10022C350(&qword_100CB7000);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v25 - v12;
  sub_1002ED5C8(*(a1 + *(v4 + 56) + 40));
  v25[1] = v14;
  swift_getKeyPath();
  sub_10040DB24(a1, v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MoonComponentView);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_10040DB80(v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for MoonComponentView);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10040DA38;
  *(v17 + 24) = v16;
  sub_10022C350(&qword_100CB7008);
  type metadata accessor for MoonComponentView.RowView(0);
  sub_100006F64(&qword_100CB7010, &qword_100CB7008);
  sub_10040D9F0(&qword_100CB7018, type metadata accessor for MoonComponentView.RowView);
  ForEach<>.init(_:id:content:)();
  v18 = *(v8 + 16);
  v18(v10, v13, v7);
  v19 = v25[0];
  *v25[0] = 0;
  *(v19 + 8) = 1;
  v20 = v19;
  v21 = sub_10022C350(&qword_100CB7020);
  v18((v20 + *(v21 + 48)), v10, v7);
  v22 = v20 + *(v21 + 64);
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = *(v8 + 8);
  v23(v13, v7);
  return (v23)(v10, v7);
}

__n128 sub_10040A2F8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 16);
  v18 = *a2;
  v16 = v8;
  v17 = *(a2 + 32);
  v9 = *(type metadata accessor for MoonComponentView(0) + 48);
  v10 = type metadata accessor for MoonComponentView.RowView(0);
  sub_10040DB24(a3 + v9, a4 + v10[8], type metadata accessor for MoonComponentViewModel);
  sub_100358150(&v18, v15);
  sub_1003B3D28(&v16, v15);
  v11 = sub_10040B1D0();
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  *(a4 + 16) = swift_getKeyPath();
  *(a4 + 24) = 0;
  KeyPath = swift_getKeyPath();
  v15[0] = 0;
  *(a4 + 32) = KeyPath;
  *(a4 + 104) = 0;
  result = *a2;
  v14 = *(a2 + 16);
  *(a4 + 112) = *a2;
  *(a4 + 128) = v14;
  *(a4 + 144) = *(a2 + 32);
  *(a4 + v10[9]) = v11;
  *(a4 + v10[10]) = a1;
  return result;
}

uint64_t sub_10040A414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MoonComponentView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v13[1] = *(a1 + *(v9 + 56) + 40);
  swift_getKeyPath();
  sub_10040DB24(a1, v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MoonComponentView);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  sub_10040DB80(v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for MoonComponentView);

  sub_10022C350(&qword_100CB2E20);
  sub_10022C350(&qword_100CB6F78);
  sub_100006F64(&qword_100CB6F80, &qword_100CB2E20);
  sub_100006F64(&qword_100CB6F88, &qword_100CB6F78);
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10040A648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v7;
  v11 = *(a1 + 32);
  *a4 = static VerticalAlignment.center.getter();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v8 = sub_10022C350(&qword_100CB6F90);
  return sub_10040A6D0(v10, a2, a3, a4 + *(v8 + 44));
}

uint64_t sub_10040A6D0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_10022C350(&qword_100CB6F98);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  *v13 = static HorizontalAlignment.leading.getter();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v14 = sub_10022C350(&qword_100CB6FA0);
  sub_10040A848(a1, a2, a3, &v13[*(v14 + 44)]);
  sub_1000302D8(v13, v10, &qword_100CB6F98);
  sub_1000302D8(v10, a4, &qword_100CB6F98);
  v15 = a4 + *(sub_10022C350(&qword_100CB6FA8) + 48);
  *v15 = 0;
  *(v15 + 8) = 1;
  sub_100018144(v13, &qword_100CB6F98);
  return sub_100018144(v10, &qword_100CB6F98);
}

uint64_t sub_10040A848@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v86 = a3;
  v80 = a2;
  v91 = a4;
  v89 = sub_10022C350(&qword_100CB6FB0);
  __chkstk_darwin(v89);
  v92 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v90 = &v69 - v7;
  v94 = type metadata accessor for Font.Leading();
  v84 = *(v94 - 8);
  __chkstk_darwin(v94);
  v85 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for Font.TextStyle();
  v83 = *(v93 - 8);
  __chkstk_darwin(v93);
  v81 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PrimaryDividerStyle();
  v79 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Divider();
  v78 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CA7280);
  v77 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v69 - v17;
  v19 = sub_10022C350(&qword_100CB6FB8);
  __chkstk_darwin(v19 - 8);
  v88 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v69 - v23;
  v25 = *a1;
  v26 = a1[1];
  v87 = a1;
  v82 = &v69 - v23;
  if (v22 && (v25 == v80 ? (v27 = v26 == v22) : (v27 = 0), v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    sub_10001B350(v24, 1, 1, v16);
  }

  else
  {

    Divider.init()();
    static DividerStyle<>.primary.getter();
    sub_10040D9F0(&qword_100CA7298, &type metadata accessor for Divider);
    sub_10040D9F0(&qword_100CA72A0, &type metadata accessor for PrimaryDividerStyle);
    View.dividerStyle<A>(_:)();
    (*(v79 + 8))(v12, v10);
    (*(v78 + 8))(v15, v13);
    (*(v77 + 32))(v24, v18, v16);
    sub_10001B350(v24, 0, 1, v16);
  }

  v95 = v25;
  v96 = v26;
  sub_10002D5A4();
  v71 = Text.init<A>(_:)();
  v70 = v28;
  v30 = v29;
  v69 = v31;
  LODWORD(v77) = enum case for Font.TextStyle.subheadline(_:);
  v32 = v83;
  v33 = *(v83 + 104);
  v72 = v83 + 104;
  v75 = v33;
  v34 = v81;
  v35 = v93;
  v33(v81);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  v78 = *(v32 + 8);
  (v78)(v34, v35);
  v76 = enum case for Font.Leading.tight(_:);
  v36 = v84;
  v74 = *(v84 + 104);
  v37 = v85;
  v38 = v94;
  v74(v85);
  Font.leading(_:)();

  v73 = *(v36 + 8);
  v73(v37, v38);
  v39 = v71;
  v40 = v70;
  v41 = Text.font(_:)();
  v79 = v42;
  v80 = v41;
  LODWORD(v83) = v43;
  v84 = v44;

  sub_10010CD64(v39, v40, v30 & 1);

  v45 = sub_10040B1D0();
  v47 = v87[2];
  v46 = v87[3];
  LOBYTE(v38) = *(v87 + 32);
  v48 = v93;
  v75(v34, v77, v93);
  sub_1002EE904(v47, v46, v38);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  (v78)(v34, v48);
  v49 = v94;
  (v74)(v37, v76, v94);
  Font.leading(_:)();

  v73(v37, v49);
  v50 = Text.init(temporalString:font:)();
  v52 = v51;
  LOBYTE(v32) = v53;
  v55 = v54;
  v56 = *(sub_10022C350(&qword_100CA4000) + 36);
  v57 = enum case for BlendMode.plusLighter(_:);
  v58 = type metadata accessor for BlendMode();
  v59 = v90;
  (*(*(v58 - 8) + 104))(&v90[v56], v57, v58);
  *v59 = v50;
  *(v59 + 8) = v52;
  *(v59 + 16) = v32 & 1;
  *(v59 + 24) = v55;
  v60 = v88;
  *(v59 + *(v89 + 36)) = v45;
  v61 = v82;
  sub_1000302D8(v82, v60, &qword_100CB6FB8);
  v62 = v92;
  sub_1000302D8(v59, v92, &qword_100CB6FB0);
  v63 = v91;
  sub_1000302D8(v60, v91, &qword_100CB6FB8);
  v64 = sub_10022C350(&qword_100CB6FC0);
  v65 = v63 + *(v64 + 48);
  v66 = v79;
  v67 = v80;
  *v65 = v80;
  *(v65 + 8) = v66;
  LOBYTE(v57) = v83 & 1;
  *(v65 + 16) = v83 & 1;
  *(v65 + 24) = v84;
  sub_1000302D8(v62, v63 + *(v64 + 64), &qword_100CB6FB0);
  sub_10010CD54(v67, v66, v57);

  sub_100018144(v59, &qword_100CB6FB0);
  sub_100018144(v61, &qword_100CB6FB8);
  sub_100018144(v62, &qword_100CB6FB0);
  sub_10010CD64(v67, v66, v57);

  return sub_100018144(v60, &qword_100CB6FB8);
}

double sub_10040B1D0()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for ColorSchemeContrast();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v18[-v10];
  sub_100407B48();
  (*(v6 + 104))(v8, enum case for ColorSchemeContrast.increased(_:), v5);
  v12 = static ColorSchemeContrast.== infix(_:_:)();
  v13 = *(v6 + 8);
  v13(v8, v5);
  v13(v11, v5);
  result = 1.0;
  if ((v12 & 1) == 0)
  {
    v15 = v0 + *(type metadata accessor for MoonComponentView(0) + 24);
    v16 = *v15;
    if (*(v15 + 8) != 1)
    {

      static os_log_type_t.fault.getter();
      v17 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v16, 0);
      (*(v2 + 8))(v4, v1);
      LOBYTE(v16) = v18[15];
    }

    result = 0.27;
    if (v16)
    {
      return 1.0;
    }
  }

  return result;
}

uint64_t sub_10040B454@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  GeometryProxy.size.getter();
  sub_10040B4E0();
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0x4008000000000000;
  *(a2 + 16) = 0;
  v4 = sub_10022C350(&qword_100CB7050);
  return sub_10040B738(a1, (a2 + *(v4 + 44)));
}

double sub_10040B4E0()
{
  v1 = sub_10022C350(&qword_100CA3D60);
  __chkstk_darwin(v1 - 8);
  v3 = v28 - v2;
  v4 = sub_10022C350(&qword_100CA3D68);
  __chkstk_darwin(v4 - 8);
  v6 = v28 - v5;
  v7 = type metadata accessor for Text.Measurements.Context();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MoonComponentView(0);
  v12 = v0 + *(v11 + 48);
  v13 = *(v12 + 8);
  v14 = 0.0;
  if (v13)
  {
    v15 = *(v12 + 32);
    if (v15 != 255)
    {
      v16 = *v12;
      v17 = *(v12 + 16);
      v18 = *(v12 + 24);
      v28[0] = *(v11 + 44);
      v19 = sub_10040BCE0(v16, v13, v17, v18, v15);
      v21 = v20;
      v23 = v22;
      v24 = type metadata accessor for Text.WritingMode();
      sub_10001B350(v6, 1, 1, v24);
      v25 = type metadata accessor for Text.Suffix();
      sub_10001B350(v3, 1, 1, v25);
      Text.Measurements.Context.init(writingMode:textSuffix:)();
      Text.Measurements.size(of:in:context:)();
      v14 = v26;
      sub_10010CD64(v19, v21, v23 & 1);

      (*(v8 + 8))(v10, v7);
    }
  }

  return v14;
}

uint64_t sub_10040B738@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CB7058);
  __chkstk_darwin(v4);
  v6 = &v34 - v5;
  v7 = sub_10022C350(&qword_100CB7060);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  v13 = static VerticalAlignment.center.getter();
  LOBYTE(v39) = 1;
  sub_10040BB38(a1, v44);
  memcpy(v46, v44, 0x59uLL);
  memcpy(__dst, v44, 0x59uLL);
  sub_1000302D8(v46, v43, &qword_100CB7068);
  sub_100018144(__dst, &qword_100CB7068);
  memcpy(&v45[7], v46, 0x59uLL);
  LODWORD(v14) = v39;
  v15 = a1 + *(type metadata accessor for MoonComponentView(0) + 48);
  v16 = *(v15 + 8);
  if (!v16 || (v17 = *(v15 + 32), v17 == 255))
  {
    v29 = v12;
    v30 = 1;
    v31 = v4;
  }

  else
  {
    v36 = v14;
    v14 = *v15;
    v18 = sub_10040BCE0(*v15, v16, *(v15 + 16), *(v15 + 24), v17);
    v37 = v13;
    v38 = a2;
    v20 = v19;
    v22 = v21;
    v35 = v4;
    v24 = v23;
    KeyPath = swift_getKeyPath();
    v34 = v6;
    v26 = KeyPath;
    v27 = swift_getKeyPath();
    v42 = v22 & 1;
    v41 = 0;
    v43[0] = v18;
    v43[1] = v20;
    LOBYTE(v43[2]) = v22 & 1;
    v43[3] = v24;
    v43[4] = v26;
    v43[5] = 1;
    LOBYTE(v43[6]) = 0;
    v43[7] = v27;
    v43[8] = 0x3FE0000000000000;
    v39 = v14;
    v40 = v16;
    LOBYTE(v14) = v36;
    sub_10022C350(&qword_100CB7080);
    sub_10040DCEC();
    sub_10002D5A4();
    v28 = v34;
    View.accessibilityLabel<A>(_:)();
    memcpy(v44, v43, 0x48uLL);
    v13 = v37;
    a2 = v38;
    sub_100018144(v44, &qword_100CB7080);
    sub_10011C0F0(v28, v12, &qword_100CB7058);
    v29 = v12;
    v30 = 0;
    v31 = v35;
  }

  sub_10001B350(v29, v30, 1, v31);
  sub_1000302D8(v12, v9, &qword_100CB7060);
  v43[0] = v13;
  v43[1] = 0;
  LOBYTE(v43[2]) = v14;
  memcpy(&v43[2] + 1, v45, 0x60uLL);
  memcpy(a2, v43, 0x71uLL);
  v32 = sub_10022C350(&qword_100CB7070);
  sub_1000302D8(v9, a2 + *(v32 + 48), &qword_100CB7060);
  sub_1000302D8(v43, v44, &qword_100CB7078);
  sub_100018144(v12, &qword_100CB7060);
  sub_100018144(v9, &qword_100CB7060);
  v44[0] = v13;
  v44[1] = 0;
  LOBYTE(v44[2]) = v14;
  memcpy(&v44[2] + 1, v45, 0x60uLL);
  return sub_100018144(v44, &qword_100CB7078);
}

double sub_10040BB38@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MoonComponentView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_10040DB24(a1, &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for MoonComponentView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_10040DB80(&v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7, type metadata accessor for MoonComponentView);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v9 = v15;
  v10 = v16;
  v11 = v17;
  v12 = v18;
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = sub_10040E168;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  *(a2 + 48) = v11;
  *(a2 + 56) = v12;
  result = *&v19;
  *(a2 + 64) = v19;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  return result;
}

uint64_t sub_10040BCE0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(v80) = a5;
  v78 = a1;
  v79 = a4;
  v7 = type metadata accessor for Font.Leading();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v73[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10022C350(&qword_100CA4020);
  __chkstk_darwin(v11 - 8);
  v13 = &v73[-v12];
  v14 = type metadata accessor for Font.TextStyle();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v73[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v15 + 104))(v18, enum case for Font.TextStyle.subheadline(_:), v14, v16);
  v19 = type metadata accessor for Font.Design();
  sub_10001B350(v13, 1, 1, v19);
  static Font.system(_:design:weight:)();
  sub_100018144(v13, &qword_100CA4020);
  (*(v15 + 8))(v18, v14);
  (*(v8 + 104))(v10, enum case for Font.Leading.tight(_:), v7);
  v20 = Font.leading(_:)();

  (*(v8 + 8))(v10, v7);
  v21 = v78;
  v82 = v78;
  v83 = a2;
  v77 = a3;
  v86 = TemporalString.string.getter();
  v87 = v22;
  sub_10002D5A4();
  StringProtocol.localizedStandardRange<A>(of:)();
  v24 = v23;
  v26 = v25;

  if (v26)
  {
    v82 = v21;
    v83 = a2;

    v27 = Text.init<A>(_:)();
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v80 = v33;
    v34 = Text.font(_:)();

    v35 = v31 & 1;
    v36 = v27;
    v37 = v29;
  }

  else
  {
    v82 = String.subscript.getter();
    v83 = v38;
    v84 = v39;
    v85 = v40;
    v76 = sub_10033CD14();
    v41 = Text.init<A>(_:)();
    v43 = v42;
    v45 = v44;
    v75 = v24;

    v46 = Text.font(_:)();
    v48 = v47;
    v50 = v49;
    v81 = v20;
    sub_10010CD64(v41, v43, v45 & 1);

    sub_1002EE904(v77, v79, v80);
    v51 = Text.init(temporalString:font:)();
    v53 = v52;
    v55 = v54;
    v79 = static Text.+ infix(_:_:)();
    v77 = v56;
    v74 = v57;
    v80 = v58;
    sub_10010CD64(v51, v53, v55 & 1);

    sub_10010CD64(v46, v48, v50 & 1);

    v82 = sub_100407AA4(v75, v21, a2);
    v83 = v59;
    v84 = v60;
    v85 = v61;
    v62 = Text.init<A>(_:)();
    v64 = v63;
    LOBYTE(v51) = v65;
    v66 = Text.font(_:)();
    v68 = v67;
    LOBYTE(v41) = v69;

    sub_10010CD64(v62, v64, v51 & 1);

    LOBYTE(v62) = v74;
    v70 = v79;
    v71 = v77;
    v78 = static Text.+ infix(_:_:)();
    sub_10010CD64(v66, v68, v41 & 1);

    v35 = v62 & 1;
    v34 = v78;
    v36 = v70;
    v37 = v71;
  }

  sub_10010CD64(v36, v37, v35);

  return v34;
}

uint64_t sub_10040C294(uint64_t a1, uint64_t a2)
{
  sub_100022B68();
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100408CE8(a1, a2, v6);
}

uint64_t sub_10040C308@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v103 = type metadata accessor for AccessibilityChildBehavior();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_10022C350(&qword_100CB7148);
  __chkstk_darwin(v97);
  v98 = &v83 - v6;
  v104 = sub_10022C350(&qword_100CB7150);
  __chkstk_darwin(v104);
  v100 = &v83 - v7;
  v107 = sub_10022C350(&qword_100CB7158);
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v105 = &v83 - v8;
  v9 = sub_10022C350(&qword_100CB7160);
  __chkstk_darwin(v9 - 8);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v108 = &v83 - v13;
  v14 = type metadata accessor for EnvironmentValues();
  v86 = *(v14 - 8);
  __chkstk_darwin(v14);
  v85 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for PrimaryDividerStyle();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Divider();
  v88 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_10022C350(&qword_100CA7280);
  v87 = *(v91 - 8);
  __chkstk_darwin(v91);
  v22 = &v83 - v21;
  v23 = sub_10022C350(&qword_100CB6FB8);
  __chkstk_darwin(v23 - 8);
  v99 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v83 - v26;
  v92 = type metadata accessor for MoonComponentView.RowView(0);
  v28 = *(v2 + *(v92 + 32) + 40);
  v29 = v28[2];
  v109 = v27;
  v95 = v11;
  v93 = v14;
  if (!v29)
  {
    v37 = a1;
    v38 = *(v2 + 120);
    v96 = *(v2 + 112);
    v94 = v38;
    goto LABEL_10;
  }

  v84 = v18;
  v30 = a1;
  v31 = v28[4];
  v32 = v28[5];
  v33 = *(v2 + 112);
  v34 = *(v2 + 120);

  v96 = v33;
  v94 = v34;
  if (!v32)
  {
LABEL_8:
    v37 = v30;
    v27 = v109;
    v18 = v84;
LABEL_10:
    Divider.init()();
    static DividerStyle<>.primary.getter();
    sub_10040D9F0(&qword_100CA7298, &type metadata accessor for Divider);
    sub_10040D9F0(&qword_100CA72A0, &type metadata accessor for PrimaryDividerStyle);
    v39 = v18;
    v40 = v90;
    View.dividerStyle<A>(_:)();
    (*(v89 + 8))(v17, v40);
    (*(v88 + 8))(v20, v39);
    v41 = v91;
    (*(v87 + 32))(v27, v22, v91);
    v42 = 0;
    v43 = v37;
    v44 = v93;
    goto LABEL_13;
  }

  if (v33 == v31 && v32 == v34)
  {
  }

  else
  {
    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v36 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v42 = 1;
  v43 = v30;
  v27 = v109;
  v44 = v93;
  v41 = v91;
LABEL_13:
  sub_10001B350(v27, v42, 1, v41);
  v45 = *v2;
  v46 = v98;
  if (*(v2 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v47 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v48 = v85;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v45, 0);
    (*(v86 + 8))(v48, v44);
    LOBYTE(v45) = __src[0];
  }

  sub_10040CF80(*(v2 + *(v92 + 40)));
  *v46 = static VerticalAlignment.center.getter();
  *(v46 + 8) = 0;
  *(v46 + 16) = 0;
  v49 = sub_10022C350(&qword_100CB7168);
  sub_10040D004(v2, (v45 & 1) == 0, (v46 + *(v49 + 44)));
  v50 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = v46 + *(sub_10022C350(&qword_100CB7170) + 36);
  *v59 = v50;
  *(v59 + 8) = v52;
  *(v59 + 16) = v54;
  *(v59 + 24) = v56;
  *(v59 + 32) = v58;
  *(v59 + 40) = 0;
  v60 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v61 = v46 + *(v97 + 36);
  *v61 = v60;
  *(v61 + 8) = v62;
  *(v61 + 16) = v63;
  *(v61 + 24) = v64;
  *(v61 + 32) = v65;
  *(v61 + 40) = 0;
  sub_10040D594();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v66 = v100;
  sub_10011C0F0(v46, v100, &qword_100CB7148);
  v67 = v104;
  memcpy((v66 + *(v104 + 36)), __src, 0x70uLL);
  v68 = v101;
  static AccessibilityChildBehavior.ignore.getter();
  v69 = sub_10040DF98();
  v70 = v105;
  View.accessibilityElement(children:)();
  (*(v102 + 8))(v68, v103);
  sub_100018144(v66, &qword_100CB7150);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v71._countAndFlagsBits = 0;
  v71._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v71);
  v72._countAndFlagsBits = v96;
  v72._object = v94;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v72);
  v73._countAndFlagsBits = 8250;
  v73._object = 0xE200000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v73);
  v74._countAndFlagsBits = TemporalString.string.getter();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v74);

  v75._countAndFlagsBits = 0;
  v75._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v75);
  LocalizedStringKey.init(stringInterpolation:)();
  v110 = v67;
  v111 = v69;
  swift_getOpaqueTypeConformance2();
  v76 = v108;
  v77 = v107;
  View.accessibilityLabel(_:)();

  (*(v106 + 8))(v70, v77);
  v78 = v109;
  v79 = v99;
  sub_1000302D8(v109, v99, &qword_100CB6FB8);
  v80 = v95;
  sub_1000302D8(v76, v95, &qword_100CB7160);
  sub_1000302D8(v79, v43, &qword_100CB6FB8);
  v81 = sub_10022C350(&qword_100CB71A0);
  sub_1000302D8(v80, v43 + *(v81 + 48), &qword_100CB7160);
  sub_100018144(v76, &qword_100CB7160);
  sub_100018144(v78, &qword_100CB6FB8);
  sub_100018144(v80, &qword_100CB7160);
  return sub_100018144(v79, &qword_100CB6FB8);
}

double sub_10040CF80(uint64_t a1)
{
  v2 = [objc_opt_self() wu_systemUsesExuberatedLineHeight];
  type metadata accessor for MoonComponentView.RowView(0);
  v3 = 10.0;
  if (!v2)
  {
    v3 = 6.0;
  }

  if (a1)
  {
    return v3;
  }

  else
  {
    return 0.0;
  }
}

uint64_t sub_10040D004@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v72 = a2;
  v71 = a3;
  v70 = sub_10022C350(&qword_100CB6FB0) - 8;
  __chkstk_darwin(v70);
  v69 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v68 = v51 - v6;
  v7 = type metadata accessor for Font.Leading();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Font.TextStyle();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  v15 = *(a1 + 112);
  v16 = *(a1 + 120);
  v73 = v15;
  v74 = v16;
  sub_10002D5A4();

  v53 = Text.init<A>(_:)();
  v52 = v17;
  v19 = v18;
  v51[1] = v20;
  v61 = enum case for Font.TextStyle.subheadline(_:);
  v59 = *(v12 + 104);
  v54 = v11;
  v59(v14);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  v62 = *(v12 + 8);
  v63 = v12 + 8;
  v62(v14, v11);
  v60 = enum case for Font.Leading.tight(_:);
  v58 = *(v8 + 104);
  v55 = v7;
  v58(v10);
  Font.leading(_:)();

  v57 = *(v8 + 8);
  v57(v10, v7);
  v21 = v53;
  v22 = v52;
  v23 = Text.font(_:)();
  v64 = v24;
  v65 = v23;
  v66 = v25;
  v67 = v26;

  sub_10010CD64(v21, v22, v19 & 1);

  v27 = *(v56 + 128);
  v28 = *(v56 + 136);
  LOBYTE(v22) = *(v56 + 144);
  v29 = v56;
  v30 = *(v29 + *(type metadata accessor for MoonComponentView.RowView(0) + 36));
  v31 = v54;
  (v59)(v14, v61, v54);
  sub_1002EE904(v27, v28, v22);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  v62(v14, v31);
  v32 = v55;
  (v58)(v10, v60, v55);
  Font.leading(_:)();

  v57(v10, v32);
  v33 = Text.init(temporalString:font:)();
  v35 = v34;
  LOBYTE(v11) = v36;
  v38 = v37;
  v39 = *(sub_10022C350(&qword_100CA4000) + 36);
  v40 = enum case for BlendMode.plusLighter(_:);
  v41 = type metadata accessor for BlendMode();
  v42 = v68;
  (*(*(v41 - 8) + 104))(&v68[v39], v40, v41);
  *v42 = v33;
  *(v42 + 8) = v35;
  *(v42 + 16) = v11 & 1;
  *(v42 + 24) = v38;
  v43 = v69;
  *(v42 + *(v70 + 44)) = v30;
  v44 = v42;
  sub_1000302D8(v42, v43, &qword_100CB6FB0);
  v45 = v71;
  v47 = v64;
  v46 = v65;
  *v71 = v65;
  v45[1] = v47;
  LOBYTE(v33) = v66 & 1;
  *(v45 + 16) = v66 & 1;
  v45[3] = v67;
  *(v45 + 32) = 0;
  *(v45 + 33) = v72;
  v45[5] = 0x4024000000000000;
  *(v45 + 48) = 0;
  v48 = v45;
  v49 = sub_10022C350(&qword_100CB71B0);
  sub_1000302D8(v43, v48 + *(v49 + 64), &qword_100CB6FB0);
  sub_10010CD54(v46, v47, v33);

  sub_100018144(v44, &qword_100CB6FB0);
  sub_100018144(v43, &qword_100CB6FB0);
  sub_10010CD64(v46, v47, v33);
}

double sub_10040D594()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &__src[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ([objc_opt_self() wu_systemUsesExuberatedLineHeight])
  {
    v5 = *(v0 + 16);
    if (*(v0 + 24) == 1)
    {
      result = 0.0;
      if (v5)
      {
        return result;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v7 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v5, 0);
      (*(v2 + 8))(v4, v1);
      result = 0.0;
      if (__dst[0])
      {
        return result;
      }
    }
  }

  memcpy(__dst, (v0 + 32), 0x49uLL);
  if (__dst[9])
  {
    memcpy(__src, (v0 + 32), sizeof(__src));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CB71A8);
    (*(v2 + 8))(v4, v1);
  }

  memcpy(v12, __src, sizeof(v12));
  v9 = sub_10014B28C() < 188.0;
  result = 40.0;
  if (v9)
  {
    return 32.0;
  }

  return result;
}

uint64_t sub_10040D810(uint64_t a1, double a2, double a3, double a4, double a5)
{
  result = type metadata accessor for LocationComponentBackgroundConfiguration(0);
  v11 = a1 + *(result + 20);
  *v11 = a2;
  *(v11 + 8) = a3;
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  *(v11 + 32) = 0;
  return result;
}

unint64_t sub_10040D894()
{
  result = qword_100CB6F38;
  if (!qword_100CB6F38)
  {
    sub_10022E824(&qword_100CB6F18);
    sub_100006F64(&qword_100CB6F40, &qword_100CB6F48);
    sub_100006F64(&qword_100CB6F50, &qword_100CB6F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6F38);
  }

  return result;
}

uint64_t sub_10040D978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100022B68();
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_10040A648(a1, v6, v7, a2);
}

uint64_t sub_10040D9F0(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_10040DA38@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100022B68();
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  *&result = sub_10040A2F8(a1, a2, v8, a3).n128_u64[0];
  return result;
}

uint64_t sub_10040DAB4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *(a1 + 3);
  v6[0] = *(a1 + 1);
  v6[1] = v4;
  v7 = *(a1 + 40);
  return v2(v3, v6);
}

uint64_t sub_10040DB24(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_10040DB80(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_10040DBDC(uint64_t a1)
{
  v2 = type metadata accessor for HorizontalABWithB1x1RatioLayout();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10040DC50(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  sub_100022B68();
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_10040DCEC()
{
  result = qword_100CB7088;
  if (!qword_100CB7088)
  {
    sub_10022E824(&qword_100CB7080);
    sub_10033CBA4();
    sub_100006F64(&qword_100CA40A8, &qword_100CA40B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7088);
  }

  return result;
}

uint64_t sub_10040DDA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB7090);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_10040DE3C()
{
  sub_10009BEE0(319, &qword_100CACE80, &type metadata for SizingBehavior, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_10009BEE0(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10009BEE0(319, &qword_100CB7100, &unk_100C730C0, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        type metadata accessor for MoonComponentViewModel();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_10040DF98()
{
  result = qword_100CB7178;
  if (!qword_100CB7178)
  {
    sub_10022E824(&qword_100CB7150);
    sub_10040E024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7178);
  }

  return result;
}

unint64_t sub_10040E024()
{
  result = qword_100CB7180;
  if (!qword_100CB7180)
  {
    sub_10022E824(&qword_100CB7148);
    sub_10040E0B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7180);
  }

  return result;
}

unint64_t sub_10040E0B0()
{
  result = qword_100CB7188;
  if (!qword_100CB7188)
  {
    sub_10022E824(&qword_100CB7170);
    sub_100006F64(&qword_100CB7190, &qword_100CB7198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7188);
  }

  return result;
}

uint64_t sub_10040E16C@<X0>(__int128 *a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, char *a4@<X8>)
{
  LODWORD(v202) = a3;
  v212 = a2;
  v214 = a4;
  v196 = type metadata accessor for Locale.NumberingSystem();
  sub_1000037C4();
  v195 = v5;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v194 = v8 - v7;
  v9 = sub_10022C350(&qword_100CA5730);
  __chkstk_darwin(v9 - 8);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v10);
  v203 = (&v191 - v11);
  v12 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v12 - 8);
  sub_1000037D8();
  v15 = v14 - v13;
  v209 = type metadata accessor for Locale.Language();
  sub_1000037C4();
  v208 = v16;
  __chkstk_darwin(v17);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v18);
  sub_100003908();
  __chkstk_darwin(v19);
  v205 = &v191 - v20;
  v207 = type metadata accessor for Locale();
  sub_1000037C4();
  v206 = v21;
  __chkstk_darwin(v22);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v23);
  sub_100003908();
  v25 = __chkstk_darwin(v24);
  v27 = &v191 - v26;
  __chkstk_darwin(v25);
  v29 = &v191 - v28;
  v211 = type metadata accessor for AttributedString();
  sub_1000037C4();
  v210 = v30;
  __chkstk_darwin(v31);
  sub_100003848();
  sub_100003908();
  v33 = __chkstk_darwin(v32);
  v35 = &v191 - v34;
  v36 = __chkstk_darwin(v33);
  v38 = &v191 - v37;
  v39 = __chkstk_darwin(v36);
  v213 = &v191 - v40;
  __chkstk_darwin(v39);
  v42 = &v191 - v41;
  v43 = type metadata accessor for DetailChartCondition();
  sub_1000037C4();
  v45 = v44;
  __chkstk_darwin(v46);
  sub_1000037D8();
  v49 = v48 - v47;
  (*(v45 + 16))(v48 - v47, v212, v43);
  v50 = (*(v45 + 88))(v49, v43);
  if (v50 == enum case for DetailChartCondition.humidity(_:))
  {
    sub_100035B30(v204, &v220);
    v204 = v222;
    v212 = v221;
    v203 = sub_1000161C0(&v220, v221);
    v51 = *(a1 + 3);
    v192 = a1;
    if (v51)
    {
      v202 = *(a1 + 2);
    }

    else
    {
      v202 = 0;
    }

    swift_beginAccess();
    v55 = sub_10090C91C();
    v57 = v56;
    v59 = v58;
    v60 = v55;
    v61 = xmmword_100CE5890;

    sub_10040F32C(v61);
    *&v217 = v57;
    *(&v217 + 1) = v59;
    v218 = *&v60;
    sub_10090C990();
    xmmword_100CE5890 = v217;
    qword_100CE58A0 = v218;
    v62 = sub_10090C91C();
    v64 = v63;
    v66 = v65;
    v67 = v62;
    sub_10040F32C(xmmword_100CE5890);
    *&v215 = v64;
    *(&v215 + 1) = v66;
    v216 = *&v67;
    sub_10090C9D8();
    xmmword_100CE5890 = v215;
    qword_100CE58A0 = v216;
    sub_10090C91C();
    swift_endAccess();

    dispatch thunk of HumidityTitleStringBuilderType.makeAttributedHumidityString(_:symbolFont:symbolColor:symbolSpacing:)();

    sub_100006F14(&v220);
    v68 = v210;
    v69 = v211;
    (*(v210 + 16))(v213, v42, v211);
    v70 = *(v192 + 11);
    if (v70)
    {
      v212 = *(v192 + 10);
      v71 = v70;
    }

    else
    {
      v212 = 0;
      v71 = 0xE000000000000000;
    }

    if (*(v192 + 15))
    {
      v72 = *(v192 + 14);
      v73 = *(v192 + 15);
    }

    else
    {
      v72 = 0;
      v73 = 0xE000000000000000;
    }

    v220 = *v192;
    v74 = sub_100004170();
    sub_100358150(v74, v75);

    static Locale.current.getter();
    v76 = v205;
    Locale.language.getter();
    (*(v206 + 8))(v29, v207);
    v77 = Locale.Language.isUrdu.getter();
    (*(v208 + 8))(v76, v209);
    (*(v68 + 8))(v42, v69);
    v78 = v214;
    *v214 = v220;
    v79 = type metadata accessor for TitleAndDetailLollipopDetailViewModel(0);
    (*(v68 + 32))(&v78[v79[5]], v213, v69);
    v80 = &v78[v79[6]];
    *v80 = 0;
    *(v80 + 1) = 0;
    v81 = &v78[v79[7]];
    *v81 = v212;
    v81[1] = v71;
    v82 = &v78[v79[8]];
    *v82 = 0;
    *(v82 + 1) = 0;
    v83 = &v78[v79[9]];
    *v83 = v72;
    *(v83 + 1) = v73;
    v84 = &v78[v79[10]];
    *v84 = 0;
    *(v84 + 1) = 0;
    v78[v79[11]] = v77 & 1;
    type metadata accessor for LollipopDetailViewModel(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v50 == enum case for DetailChartCondition.pressure(_:))
  {
    if (*(a1 + 3))
    {
      v52 = *(a1 + 2);
      v53 = *(a1 + 3);
    }

    else
    {
      v52 = 0;
      v53 = 0xE000000000000000;
    }

    if (*(a1 + 11))
    {
      v90 = *(a1 + 10);
      v91 = *(a1 + 11);
    }

    else
    {
      v90 = 0;
      v91 = 0xE000000000000000;
    }

    v92 = *a1;
    v93 = *(a1 + 1);
LABEL_27:
    v94 = v214;
    *v214 = v92;
    *(v94 + 1) = v93;
    *(v94 + 2) = v52;
    *(v94 + 3) = v53;
    *(v94 + 4) = v90;
    *(v94 + 5) = v91;
    type metadata accessor for LollipopDetailViewModel(0);
    *(v94 + 6) = 0;
    *(v94 + 7) = 0;
    *(v94 + 32) = 0;
    swift_storeEnumTagMultiPayload();
  }

  v54 = a1;
  if (v50 == enum case for DetailChartCondition.precipitationTotal(_:))
  {
    v220 = *a1;
    v98 = sub_100004170();
    sub_100358150(v98, v99);

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    v100 = *(a1 + 15);
    if (v100)
    {
      v101 = *(a1 + 14);
    }

    else
    {
      v101 = 0;
    }

    if (v100)
    {
      v102 = *(a1 + 15);
    }

    else
    {
      v102 = 0xE000000000000000;
    }

    v103 = v214;
    *v214 = v220;
    v104 = type metadata accessor for TitleAndDetailLollipopDetailViewModel(0);
    sub_1000085AC();
    v106(v103 + v105, v38, v211);
    v107 = (v103 + v104[6]);
    *v107 = 0;
    v107[1] = 0;
    v108 = (v103 + v104[7]);
    *v108 = 0;
    v108[1] = 0xE000000000000000;
    v109 = (v103 + v104[8]);
    *v109 = 0;
    v109[1] = 0;
    v110 = (v103 + v104[9]);
    *v110 = v101;
    v110[1] = v102;
    v111 = (v103 + v104[10]);
    *v111 = 0;
    v111[1] = 0;
    *(v103 + v104[11]) = 0;
    type metadata accessor for LollipopDetailViewModel(0);
    swift_storeEnumTagMultiPayload();
  }

  if (v50 == enum case for DetailChartCondition.temperature(_:))
  {
    v220 = a1[2];
    v86 = *(&v220 + 1);
    if (*(&v220 + 1))
    {
      v87 = v220;
      if (*(a1 + 3))
      {
        v88 = *(a1 + 2);
        v89 = *(a1 + 3);
      }

      else
      {
        v88 = 0;
        v89 = 0xE000000000000000;
      }

      v114 = *(a1 + 1);
      v115 = *(a1 + 10);
      v116 = *(a1 + 11);
      v117 = v214;
      *v214 = *a1;
      *(v117 + 1) = v114;
      *(v117 + 2) = v88;
      *(v117 + 3) = v89;
      *(v117 + 4) = v87;
      *(v117 + 5) = v86;
      *(v117 + 6) = v115;
      *(v117 + 7) = v116;
      *(v117 + 32) = 0;
      type metadata accessor for LollipopDetailViewModel(0);
      swift_storeEnumTagMultiPayload();
      v118 = sub_100004170();
      sub_10040F2BC(v118, v119);
    }

    else
    {
      if (*(a1 + 3))
      {
        v112 = *(a1 + 2);
        v113 = *(a1 + 3);
      }

      else
      {
        v112 = 0;
        v113 = 0xE000000000000000;
      }

      v137 = *(a1 + 1);
      v138 = *(a1 + 10);
      v139 = *(a1 + 11);
      v140 = v214;
      *v214 = *a1;
      *(v140 + 1) = v137;
      *(v140 + 2) = v112;
      *(v140 + 3) = v113;
      *(v140 + 4) = v138;
      *(v140 + 5) = v139;
      type metadata accessor for LollipopDetailViewModel(0);
      swift_storeEnumTagMultiPayload();
    }

LABEL_61:
  }

  if (v50 == enum case for DetailChartCondition.temperatureFeelsLike(_:))
  {
    v220 = *a1;
    v95 = *(a1 + 3);
    if (v95)
    {
      v96 = sub_100004170();
      sub_100358150(v96, v97);

      sub_100022B88();
      sub_100005C78(v15, 0);
      (*(v210 + 32))(v35, v15, v95);
    }

    else
    {
      v120 = v203;
      v121 = sub_10000C7F0();
      sub_100005C78(v121, v122);

      AttributedString.init(stringLiteral:)();
      v123 = sub_10000C7F0();
      if (sub_100024D10(v123, v124, 0) != 1)
      {
        sub_10040F254(v120);
      }
    }

    if (*(a1 + 5))
    {
      v125 = *(a1 + 4);
      v126 = *(a1 + 5);
    }

    else
    {
      v125 = 0;
      v126 = 0xE000000000000000;
    }

    if (*(v54 + 15))
    {
      v127 = *(v54 + 14);
      v128 = *(v54 + 15);
    }

    else
    {
      v127 = 0;
      v128 = 0xE000000000000000;
    }

    v219 = v54[5];
    v129 = v214;
    *v214 = v220;
    v130 = type metadata accessor for TitleAndDetailLollipopDetailViewModel(0);
    sub_1000085AC();
    v132(v129 + v131, v35, v211);
    v133 = (v129 + v130[6]);
    *v133 = 0;
    v133[1] = 0;
    v134 = (v129 + v130[7]);
    *v134 = v125;
    v134[1] = v126;
    *(v129 + v130[8]) = v219;
    v135 = (v129 + v130[9]);
    *v135 = v127;
    v135[1] = v128;
    v136 = (v129 + v130[10]);
    *v136 = 0;
    v136[1] = 0;
    *(v129 + v130[11]) = 0;
    type metadata accessor for LollipopDetailViewModel(0);
    swift_storeEnumTagMultiPayload();

    sub_10040F2BC(&v219, &v217);
  }

  if (v50 == enum case for DetailChartCondition.uvIndex(_:) || v50 == enum case for DetailChartCondition.visibility(_:))
  {
    if (*(a1 + 3))
    {
      v52 = *(a1 + 2);
      v53 = *(a1 + 3);
    }

    else
    {
      v52 = 0;
      v53 = 0xE000000000000000;
    }

    if (*(a1 + 11))
    {
      v90 = *(a1 + 10);
      v91 = *(a1 + 11);
    }

    else
    {
      v90 = 0;
      v91 = 0xE000000000000000;
    }

    v92 = *a1;
    v93 = *(a1 + 1);
    goto LABEL_27;
  }

  if (v50 == enum case for DetailChartCondition.wind(_:))
  {
    v220 = *a1;
    v141 = *(a1 + 3);
    if (v141)
    {
      v142 = sub_100004170();
      sub_100358150(v142, v143);

      sub_100022B88();
      sub_100005C78(v15, 0);
      v144 = v199;
      (*(v210 + 32))(v199, v15, v141);
    }

    else
    {
      v150 = v201;
      v151 = sub_10000C7F0();
      sub_100005C78(v151, v152);

      v144 = v199;
      AttributedString.init(stringLiteral:)();
      v153 = sub_10000C7F0();
      if (sub_100024D10(v153, v154, 0) != 1)
      {
        sub_10040F254(v150);
      }
    }

    if (*(a1 + 11))
    {
      v155 = *(a1 + 10);
      v156 = *(a1 + 11);
    }

    else
    {
      v155 = 0;
      v156 = 0xE000000000000000;
    }

    if (*(v54 + 15))
    {
      v157 = *(v54 + 14);
      v158 = *(v54 + 15);
    }

    else
    {
      v157 = 0;
      v158 = 0xE000000000000000;
    }

    v159 = v214;
    *v214 = v220;
    v160 = type metadata accessor for TitleAndDetailLollipopDetailViewModel(0);
    sub_1000085AC();
    v162(v159 + v161, v144, v211);
    v163 = (v159 + v160[6]);
    *v163 = 0;
    v163[1] = 0;
    v164 = (v159 + v160[7]);
    *v164 = v155;
    v164[1] = v156;
    v165 = (v159 + v160[8]);
    *v165 = 0;
    v165[1] = 0;
    v166 = (v159 + v160[9]);
    *v166 = v157;
    v166[1] = v158;
    v167 = (v159 + v160[10]);
    *v167 = 0;
    v167[1] = 0;
    *(v159 + v160[11]) = v202 & 1;
    type metadata accessor for LollipopDetailViewModel(0);
    swift_storeEnumTagMultiPayload();
    goto LABEL_61;
  }

  if (v50 == enum case for DetailChartCondition.chanceOfRain(_:))
  {
    v145 = *(a1 + 3);
    v146 = v209;
    v147 = v208;
    v148 = v207;
    v149 = v206;
    if (v145)
    {
      v213 = *(v54 + 2);
      v212 = v145;
    }

    else
    {
      v213 = 0;
      v212 = 0xE000000000000000;
    }

    v168 = *(v54 + 11);
    if (v168)
    {
      v211 = *(v54 + 10);
      v210 = v168;
    }

    else
    {
      v211 = 0;
      v210 = 0xE000000000000000;
    }

    v169 = v54;
    v170 = *v54;
    v171 = *(v169 + 1);

    static Locale.current.getter();
    v172 = v200;
    Locale.language.getter();
    v173 = *(v149 + 8);
    v173(v27, v148);
    v174 = Locale.Language.isUrdu.getter();
    v175 = v148;
    v176 = *(v147 + 8);
    v176(v172, v146);
    v177 = 1;
    if (v174)
    {
      goto LABEL_93;
    }

    v178 = v197;
    static Locale.current.getter();
    v179 = v198;
    Locale.language.getter();
    v173(v178, v175);
    LOBYTE(v178) = Locale.Language.isArabic.getter();
    v176(v179, v146);
    if (v178)
    {
      v180 = v193;
      static Locale.current.getter();
      v181 = v194;
      Locale.numberingSystem.getter();
      v173(v180, v175);
      v182 = Locale.NumberingSystem.identifier.getter();
      v184 = v183;
      (*(v195 + 8))(v181, v196);
      if (v182 != 1650553441 || v184 != 0xE400000000000000)
      {
        v186 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v177 = v186 ^ 1;
LABEL_93:
        v187 = v213;
        v188 = v214;
        *v214 = v170;
        *(v188 + 1) = v171;
        v189 = v212;
        *(v188 + 2) = v187;
        *(v188 + 3) = v189;
        v190 = v210;
        *(v188 + 4) = v211;
        *(v188 + 5) = v190;
        *(v188 + 6) = 0;
        *(v188 + 7) = 0;
        v188[64] = 1;
        v188[65] = v177 & 1;
        type metadata accessor for LollipopDetailViewModel(0);
        return swift_storeEnumTagMultiPayload();
      }
    }

    v177 = 0;
    goto LABEL_93;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10040F254(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10040F2BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA6078);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10040F32C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_10040F380()
{
  result = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  qword_100D8FD28 = result;
  return result;
}

uint64_t sub_10040F3B8()
{
  result = static Animation.timingCurve(_:_:_:_:duration:)();
  qword_100D8FD30 = result;
  return result;
}

uint64_t sub_10040F3F8()
{
  result = static Animation.timingCurve(_:_:_:_:duration:)();
  qword_100D8FD38 = result;
  return result;
}

uint64_t sub_10040F438()
{
  result = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  qword_100D8FD40 = result;
  return result;
}

BOOL sub_10040F4A8(void *a1, void *a2)
{
  type metadata accessor for WeatherCondition();
  sub_100005C98();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = (v9 - v8);
  sub_10022C350(&qword_100CA2CD8);
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  v14 = sub_10022C350(&qword_100CB7300);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  v18 = *a1 == *a2 && a1[1] == a2[1];
  if (v18 || (v19 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v19 & 1) != 0))
  {
    v21 = *(type metadata accessor for ConditionPickerMenuViewModel.Row(0) + 20);
    v22 = *(v14 + 48);
    sub_100108724(a1 + v21, v17);
    sub_100108724(a2 + v21, &v17[v22]);
    sub_100003A40(v17);
    if (v18)
    {
      sub_100003A40(&v17[v22]);
      if (v18)
      {
        sub_1000180EC(v17, &qword_100CA2CD8);
        return 1;
      }
    }

    else
    {
      sub_100108724(v17, v13);
      sub_100003A40(&v17[v22]);
      if (!v23)
      {
        (*(v6 + 32))(v10, &v17[v22], v2);
        sub_10040F744();
        v24 = dispatch thunk of static Equatable.== infix(_:_:)();
        v25 = *(v6 + 8);
        v25(v10, v2);
        v25(v13, v2);
        sub_1000180EC(v17, &qword_100CA2CD8);
        return (v24 & 1) != 0;
      }

      (*(v6 + 8))(v13, v2);
    }

    sub_1000180EC(v17, &qword_100CB7300);
    return 0;
  }

  return result;
}

unint64_t sub_10040F744()
{
  result = qword_100CAA7D8;
  if (!qword_100CAA7D8)
  {
    type metadata accessor for WeatherCondition();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAA7D8);
  }

  return result;
}

uint64_t sub_10040F79C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v71 = a1;
  v3 = type metadata accessor for LocationFooterAction(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  *&v66 = v6 - v5;
  v7 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v7 - 8);
  *&v65 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  *&v67 = &v64 - v10;
  v11 = type metadata accessor for LocationComponentAction(0);
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = v14 - v13;
  v16 = type metadata accessor for Location();
  sub_1000037C4();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_1000037D8();
  v22 = v21 - v20;
  type metadata accessor for LocationViewAction();
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_1000037D8();
  v26 = v25 - v24;
  sub_10022C350(&qword_100CB73D8);
  sub_1000037C4();
  v69 = v28;
  v70 = v27;
  __chkstk_darwin(v27);
  v68 = &v64 - v29;
  sub_100410188(v2, v26, type metadata accessor for LocationViewAction);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v39 = sub_10022C350(&qword_100CA6658);
      v40 = v26 + *(v39 + 48);
      v41 = *v40;
      v64 = *(v40 + 16);
      v66 = v41;
      v42 = *(v40 + 32);
      v43 = *(v39 + 64);
      sub_100410128(v26, v15, type metadata accessor for LocationComponentAction);
      v44 = v67;
      sub_100237E84(v26 + v43, v67);
      sub_10022C350(&qword_100CA36F8);
      inited = swift_initStackObject();
      v46 = sub_100005CB0(inited, xmmword_100A3BBA0);
      v46[4].n128_u64[1] = v11;
      v47 = sub_100042FB0(&v46[3]);
      sub_100410188(v15, v47, type metadata accessor for LocationComponentAction);
      sub_10000FF1C();
      if (v42)
      {
        *(inited + 120) = &type metadata for String;
        *(inited + 96) = 0;
        *(inited + 104) = 0xE000000000000000;
      }

      else
      {
        type metadata accessor for CGRect(0);
        v73 = v56;
        v57 = swift_allocObject();
        *&v72 = v57;
        v58 = v64;
        *(v57 + 16) = v66;
        *(v57 + 32) = v58;
        sub_100166170(&v72, (inited + 96));
      }

      v50 = v69;
      v49 = v70;
      v26 = v68;
      v59 = v65;
      *(inited + 128) = 1702125924;
      *(inited + 136) = 0xE400000000000000;
      sub_1000D47CC(v44, v59);
      v60 = type metadata accessor for Date();
      if (sub_100024D10(v59, 1, v60) == 1)
      {
        sub_1001AEDF4(v59);
        *(inited + 168) = &type metadata for String;
        *(inited + 144) = 0;
        *(inited + 152) = 0xE000000000000000;
      }

      else
      {
        v73 = v60;
        v61 = sub_100042FB0(&v72);
        (*(*(v60 - 8) + 32))(v61, v59, v60);
        sub_100166170(&v72, (inited + 144));
      }

      v48 = v71;
      Dictionary.init(dictionaryLiteral:)();
      sub_10000417C();
      ShortDescription.init(name:_:)();
      sub_1001AEDF4(v44);
      v54 = type metadata accessor for LocationComponentAction;
      v55 = v15;
      goto LABEL_18;
    case 2u:
      v32 = v26 + *(sub_10022C350(&qword_100CA6648) + 48);
      v33 = *v32;
      v65 = *(v32 + 16);
      v67 = v33;
      v34 = *(v32 + 32);
      v35 = v66;
      sub_100410128(v26, v66, type metadata accessor for LocationFooterAction);
      sub_10022C350(&qword_100CA36F8);
      v36 = swift_initStackObject();
      v37 = sub_100005CB0(v36, xmmword_100A2D320);
      v37[4].n128_u64[1] = v3;
      v38 = sub_100042FB0(&v37[3]);
      sub_100410188(v35, v38, type metadata accessor for LocationFooterAction);
      sub_10000FF1C();
      if (v34)
      {
        *(v36 + 120) = &type metadata for String;
        *(v36 + 96) = 0;
        *(v36 + 104) = 0xE000000000000000;
      }

      else
      {
        type metadata accessor for CGRect(0);
        v73 = v51;
        v52 = swift_allocObject();
        *&v72 = v52;
        v53 = v65;
        *(v52 + 16) = v67;
        *(v52 + 32) = v53;
        sub_100166170(&v72, (v36 + 96));
      }

      v49 = v70;
      v48 = v71;
      v26 = v68;
      v50 = v69;
      Dictionary.init(dictionaryLiteral:)();
      sub_10000417C();
      ShortDescription.init(name:_:)();
      v54 = type metadata accessor for LocationFooterAction;
      v55 = v35;
LABEL_18:
      sub_1004101E8(v55, v54);
      goto LABEL_19;
    case 3u:
    case 5u:
    case 6u:
      Dictionary.init(dictionaryLiteral:)();
      sub_1000085C0();
      v26 = v68;
      goto LABEL_9;
    case 4u:
      Dictionary.init(dictionaryLiteral:)();
      sub_100014630();
LABEL_9:
      ShortDescription.init(name:_:)();
      break;
    default:
      (*(v18 + 32))(v22, v26, v16);
      sub_10022C350(&qword_100CA36F8);
      v30 = swift_initStackObject();
      *(v30 + 16) = xmmword_100A2C3F0;
      *(v30 + 32) = 0x6E6F697461636F6CLL;
      *(v30 + 40) = 0xE800000000000000;
      *(v30 + 72) = v16;
      v31 = sub_100042FB0((v30 + 48));
      (*(v18 + 16))(v31, v22, v16);
      Dictionary.init(dictionaryLiteral:)();
      sub_100014630();
      ShortDescription.init(name:_:)();
      (*(v18 + 8))(v22, v16);
      break;
  }

  v49 = v70;
  v48 = v71;
  v50 = v69;
LABEL_19:
  v48[3] = v49;
  v48[4] = sub_1004100C4();
  v62 = sub_100042FB0(v48);
  return (*(v50 + 32))(v62, v26, v49);
}

uint64_t sub_100410038()
{
  sub_100410240(&qword_100CB73E8);

  return ShortDescribable.description.getter();
}

unint64_t sub_1004100C4()
{
  result = qword_100CB73E0;
  if (!qword_100CB73E0)
  {
    sub_10022E824(&qword_100CB73D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB73E0);
  }

  return result;
}

uint64_t sub_100410128(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100410188(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1004101E8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100410240(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LocationViewAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PredictedLocationsAuthorizationAction(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100410350()
{
  sub_10041038C();

  return ShortDescribable.description.getter();
}

unint64_t sub_10041038C()
{
  result = qword_100CB7408;
  if (!qword_100CB7408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7408);
  }

  return result;
}

Weather::PredictedLocationsAuthorizationState_optional __swiftcall PredictedLocationsAuthorizationState.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C439F8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t PredictedLocationsAuthorizationState.rawValue.getter(char a1)
{
  result = 0x7265746544746F6ELL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x64656C62616E65;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

Weather::PredictedLocationsAuthorizationState_optional sub_100410534@<W0>(Swift::String *a1@<X0>, Weather::PredictedLocationsAuthorizationState_optional *a2@<X8>)
{
  result.value = PredictedLocationsAuthorizationState.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t sub_100410564@<X0>(unint64_t *a1@<X8>)
{
  result = PredictedLocationsAuthorizationState.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100410670()
{
  result = qword_100CB7420;
  if (!qword_100CB7420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7420);
  }

  return result;
}

uint64_t sub_1004106C4()
{
  sub_1004107CC();

  return ShortDescribable.description.getter();
}

_BYTE *storeEnumTagSinglePayload for PredictedLocationsAuthorizationState(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1004107CC()
{
  result = qword_100CB7430;
  if (!qword_100CB7430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7430);
  }

  return result;
}

unint64_t sub_100410820()
{
  result = qword_100CB7438;
  if (!qword_100CB7438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7438);
  }

  return result;
}

BOOL sub_100410884(unint64_t a1, char a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6)
{
  v11 = a1 >> 24;
  v12 = a4 >> 24;
  if (a1 == 2)
  {
    if (a4 != 2)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (a1 == 3)
  {
    if (a4 != 3)
    {
      return 0;
    }

LABEL_6:
    if (v12 != v11)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if ((a4 & 0xFE) == 2 || ((a4 ^ a1) & 1) != 0 || ((a1 >> 8) & 1) != ((a4 >> 8) & 1))
  {
    return 0;
  }

  v27 = a6;
  v20 = PredictedLocationsAuthorizationState.rawValue.getter(SBYTE2(a1));
  v22 = v21;
  if (v20 != PredictedLocationsAuthorizationState.rawValue.getter(SBYTE2(a4)) || v22 != v23)
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    a6 = v27;
    if ((v25 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_6;
  }

  a6 = v27;
  if (v12 != v11)
  {
    return 0;
  }

LABEL_7:
  if ((BYTE4(a1) & 1) != (BYTE4(a4) & 1) || ((a1 >> 40) & 1) != ((a4 >> 40) & 1))
  {
    return 0;
  }

  v13 = a6;
  v14 = PredictedLocationsAuthorizationState.rawValue.getter(SBYTE6(a1));
  v16 = v15;
  if (v14 == PredictedLocationsAuthorizationState.rawValue.getter(SBYTE6(a4)) && v16 == v17)
  {

    if ((HIBYTE(a1) & 1) != (HIBYTE(a4) & 1))
    {
      return 0;
    }
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0 || (HIBYTE(a1) & 1) != (HIBYTE(a4) & 1))
    {
      return 0;
    }
  }

  if (a2 == a5)
  {
    type metadata accessor for WeatherMenuTipMutableAttributes();
    return sub_1008730C8(a3, v13);
  }

  return 0;
}

BOOL sub_100410AB8(unsigned int *a1, unsigned int *a2)
{
  v2 = &_mh_execute_header;
  if (a1[1])
  {
    v3 = &_mh_execute_header;
  }

  else
  {
    v3 = 0;
  }

  v4 = 0x10000000000;
  if (*(a1 + 5))
  {
    v5 = 0x10000000000;
  }

  else
  {
    v5 = 0;
  }

  v6 = 0x100000000000000;
  if (*(a1 + 7))
  {
    v7 = 0x100000000000000;
  }

  else
  {
    v7 = 0;
  }

  if ((a2[1] & 1) == 0)
  {
    v2 = 0;
  }

  if ((*(a2 + 5) & 1) == 0)
  {
    v4 = 0;
  }

  if ((*(a2 + 7) & 1) == 0)
  {
    v6 = 0;
  }

  return sub_100410884(*a1 | (*(a1 + 6) << 48) | v3 | v5 | v7, *(a1 + 8), *(a1 + 2), *a2 | (*(a2 + 6) << 48) | v2 | v4 | v6, *(a2 + 8), *(a2 + 2));
}

uint64_t sub_100410B50@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v100 = a3;
  v101 = a2;
  v95 = a5;
  v7 = sub_10022C350(&qword_100CB5E10);
  __chkstk_darwin(v7 - 8);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v9);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v10);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v11);
  sub_100003878();
  v102 = v12;
  sub_10000386C();
  __chkstk_darwin(v13);
  sub_100003878();
  v104 = v14;
  sub_10000386C();
  __chkstk_darwin(v15);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v16);
  sub_100003878();
  v105 = v17;
  sub_10000386C();
  __chkstk_darwin(v18);
  sub_100003878();
  v108 = v19;
  sub_10000386C();
  __chkstk_darwin(v20);
  v22 = &v89 - v21;
  __chkstk_darwin(v23);
  v25 = &v89 - v24;
  __chkstk_darwin(v26);
  v109 = &v89 - v27;
  sub_10022C350(&qword_100CB74D8);
  sub_1000037E8();
  __chkstk_darwin(v28);
  v30 = &v89 - v29;
  v110 = sub_10022C350(&qword_100CB74E0);
  v106 = *(v110 - 8);
  __chkstk_darwin(v110);
  v32 = &v89 - v31;
  v33 = sub_10022C350(&qword_100CB5E00);
  __chkstk_darwin(v33 - 8);
  sub_100003848();
  v103 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  v107 = &v89 - v36;
  TipGroup.currentTip.getter();
  v98 = HIWORD(a1);
  v99 = a1;
  v97 = v25;
  if (v113)
  {
    sub_10022C350(&qword_100CB74F8);
    if (sub_1000196F4())
    {
      v37 = v111;
      v38 = BYTE1(v111);
      v39 = a4;
      v90 = v32;
      v40 = BYTE2(v111);
      v113 = &type metadata for NotificationsOptInListTip;
      v114 = sub_100235784();
      LOBYTE(v112[0]) = v37;
      v25 = v97;
      BYTE1(v112[0]) = v38;
      BYTE2(v112[0]) = v40;
      sub_10003716C();
      v41 = swift_allocObject();
      v42 = v99;
      *(v41 + 18) = v98;
      *(v41 + 16) = v42;
      *(v41 + 19) = HIBYTE(a1);
      v43 = v100;
      *(v41 + 24) = v101;
      *(v41 + 32) = v43;
      *(v41 + 40) = a4;
      swift_unknownObjectRetain();

      TipView.init<>(_:isPresented:arrowEdge:action:)();
      v44 = v106;
      v45 = v110;
      (*(v106 + 16))(v30, v90, v110);
      swift_storeEnumTagMultiPayload();
      sub_100014644(&qword_100CB7500, &qword_100CB74E0);
      v46 = v107;
      _ConditionalContent<>.init(storage:)();
      v47 = v44;
      v32 = v90;
      (*(v47 + 8))(v90, v45);
LABEL_8:
      v53 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    sub_1000180EC(v112, &qword_100CB74E8);
  }

  TipGroup.currentTip.getter();
  if (v113)
  {
    sub_10022C350(&qword_100CB74F8);
    if (sub_10000FF3C())
    {
      v113 = &type metadata for NotificationsResubscriptionListTip;
      v114 = sub_100235A48();
      sub_10003716C();
      v48 = swift_allocObject();
      *(sub_10001C17C(v48) + 40) = a4;

      swift_unknownObjectRetain();
      sub_10001EC18();
      TipView.init<>(_:isPresented:arrowEdge:action:)();
      v49 = v32;
      v50 = v106;
      v51 = v110;
      (*(v106 + 16))(v30, v49, v110);
      swift_storeEnumTagMultiPayload();
      sub_100014644(&qword_100CB7500, &qword_100CB74E0);
      v46 = v107;
      _ConditionalContent<>.init(storage:)();
      v52 = v50;
      v32 = v49;
      (*(v52 + 8))(v49, v51);
      v39 = a4;
      goto LABEL_8;
    }
  }

  else
  {
    sub_1000180EC(v112, &qword_100CB74E8);
  }

  v39 = a4;
  v53 = 1;
  v46 = v107;
LABEL_11:
  v54 = sub_10022C350(&qword_100CB74F0);
  sub_10001B350(v46, v53, 1, v54);
  TipGroup.currentTip.getter();
  if (v113)
  {
    sub_10022C350(&qword_100CB74F8);
    if (sub_1000196F4())
    {
      v55 = v111;
      v113 = &type metadata for PredictedLocationsNotificationOptInListTip;
      v114 = sub_1002359F4();
      LOBYTE(v112[0]) = v55;
      sub_10003716C();
      v56 = swift_allocObject();
      *(sub_10001C17C(v56) + 40) = v39;

      swift_unknownObjectRetain();
      sub_10001EC18();
      TipView.init<>(_:isPresented:arrowEdge:action:)();
      sub_1000137C8();
      v57(v109, v32, v110);
      v58 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    sub_1000180EC(v112, &qword_100CB74E8);
  }

  v58 = 1;
LABEL_16:
  sub_10001B350(v109, v58, 1, v110);
  TipGroup.currentTip.getter();
  if (v113)
  {
    sub_10022C350(&qword_100CB74F8);
    if (sub_10000FF3C())
    {
      v113 = &type metadata for HomeAndWorkAddedTip;
      v114 = sub_100235AF0();
      sub_10003716C();
      v59 = swift_allocObject();
      *(sub_10001C17C(v59) + 40) = v39;

      swift_unknownObjectRetain();
      sub_10001EC18();
      TipView.init<>(_:isPresented:arrowEdge:action:)();
      sub_1000137C8();
      v60(v25, v32, v110);
      v61 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    sub_1000180EC(v112, &qword_100CB74E8);
  }

  v61 = 1;
LABEL_21:
  v62 = v25;
  v63 = v110;
  sub_100028464(v62, v61, 1);
  if (v113)
  {
    sub_10022C350(&qword_100CB74F8);
    if (sub_10000FF3C())
    {
      v113 = &type metadata for HomeAndWorkUpdatedTip;
      v114 = sub_100235A9C();
      sub_10001EC18();
      TipView.init<>(_:isPresented:arrowEdge:action:)();
      sub_1000137C8();
      sub_10003140C();
      v64();
      v65 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    sub_1000180EC(v112, &qword_100CB74E8);
  }

  v65 = 1;
LABEL_26:
  sub_100028464(v22, v65, 1);
  if (v113)
  {
    sub_10022C350(&qword_100CB74F8);
    if (sub_10000FF3C())
    {
      v113 = &type metadata for HomeUpdatedTip;
      v114 = sub_1002359A0();
      sub_10001EC18();
      TipView.init<>(_:isPresented:arrowEdge:action:)();
      sub_1000137C8();
      sub_10003140C();
      v66();
      v67 = 0;
      goto LABEL_31;
    }
  }

  else
  {
    sub_1000180EC(v112, &qword_100CB74E8);
  }

  v67 = 1;
LABEL_31:
  sub_100028464(v108, v67, 1);
  if (v113)
  {
    sub_10022C350(&qword_100CB74F8);
    if (sub_10000FF3C())
    {
      v113 = &type metadata for WorkUpdatedTip;
      v114 = sub_10023594C();
      sub_10001EC18();
      TipView.init<>(_:isPresented:arrowEdge:action:)();
      sub_10003140C();
      v68();
      v69 = 0;
      goto LABEL_36;
    }
  }

  else
  {
    sub_1000180EC(v112, &qword_100CB74E8);
  }

  v69 = 1;
LABEL_36:
  sub_100028464(v105, v69, 1);
  if (!v113)
  {
    sub_1000180EC(v112, &qword_100CB74E8);
    goto LABEL_40;
  }

  sub_10022C350(&qword_100CB74F8);
  if ((sub_1000196F4() & 1) == 0)
  {
LABEL_40:
    v75 = v107;
    v74 = 1;
    goto LABEL_41;
  }

  v70 = v111;
  v113 = &type metadata for AddWeatherMenuListTip;
  v114 = sub_1002358F8();
  v112[0] = v70;
  v71 = swift_allocObject();
  v72 = sub_10001C17C(v71);
  *(v72 + 40) = v39;
  *(v72 + 48) = v70;
  v63 = v110;

  swift_unknownObjectRetain();
  sub_10001EC18();
  TipView.init<>(_:isPresented:arrowEdge:action:)();
  sub_10003140C();
  v73();
  v74 = 0;
  v75 = v107;
LABEL_41:
  v76 = v96;
  sub_10001B350(v96, v74, 1, v63);
  v77 = v103;
  sub_100035AD0(v75, v103, &qword_100CB5E00);
  v112[0] = v77;
  v78 = v76;
  v79 = v104;
  sub_100016934(v109, v104);
  v112[1] = v79;
  v80 = v97;
  v81 = v102;
  sub_100016934(v97, v102);
  v112[2] = v81;
  v82 = v92;
  sub_100016934(v22, v92);
  v113 = v82;
  v83 = v93;
  sub_100016934(v108, v93);
  v114 = v83;
  v84 = v22;
  v85 = v105;
  v86 = v91;
  sub_100016934(v105, v91);
  v115 = v86;
  v87 = v94;
  sub_100016934(v78, v94);
  v116 = v87;
  sub_1003E88A8(v112);
  sub_100022BA8(v78);
  sub_100022BA8(v85);
  sub_100022BA8(v108);
  sub_100022BA8(v84);
  sub_100022BA8(v80);
  sub_100022BA8(v109);
  sub_1000180EC(v107, &qword_100CB5E00);
  sub_100022BA8(v87);
  sub_100022BA8(v86);
  sub_100022BA8(v83);
  sub_100022BA8(v82);
  sub_100022BA8(v102);
  sub_100022BA8(v104);
  return sub_1000180EC(v103, &qword_100CB5E00);
}

uint64_t sub_1004117A0()
{
  v0 = type metadata accessor for Tips.InvalidationReason();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1008CA570(4);
  (*(v1 + 104))(v3, enum case for Tips.InvalidationReason.actionPerformed(_:), v0);
  sub_100235AF0();
  Tip.invalidate(reason:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1004118A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = type metadata accessor for Tips.InvalidationReason();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006503EC();
  v12[1] = a6;
  (*(v8 + 104))(v10, enum case for Tips.InvalidationReason.actionPerformed(_:), v7);
  sub_1002358F8();
  Tip.invalidate(reason:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100411AE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65646F4D77656976 && a2 == 0xE90000000000006CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x637365446F726568 && a2 == 0xEF6E6F6974706972)
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

uint64_t sub_100411BBC(char a1)
{
  if (a1)
  {
    return 0x637365446F726568;
  }

  else
  {
    return 0x65646F4D77656976;
  }
}

BOOL sub_100411C04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherDescription();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  sub_10022C350(&qword_100CAE8E8);
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v14 = sub_10022C350(&qword_100CB7680);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v27 - v16;
  sub_1005FEA54();
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  v19 = *(type metadata accessor for HourlyForecastComponentPreprocessedDataModel() + 20);
  v20 = *(v14 + 48);
  sub_1003485B0(a1 + v19, v17);
  sub_1003485B0(a2 + v19, &v17[v20]);
  sub_100003A40(v17);
  if (v21)
  {
    sub_100003A40(&v17[v20]);
    if (v21)
    {
      sub_1000180EC(v17, &qword_100CAE8E8);
      return 1;
    }

    goto LABEL_10;
  }

  sub_1003485B0(v17, v13);
  sub_100003A40(&v17[v20]);
  if (v21)
  {
    (*(v6 + 8))(v13, v4);
LABEL_10:
    sub_1000180EC(v17, &qword_100CB7680);
    return 0;
  }

  (*(v6 + 32))(v10, &v17[v20], v4);
  sub_10001EC38();
  sub_100412640(v23, v24);
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  v26 = *(v6 + 8);
  v26(v10, v4);
  v26(v13, v4);
  sub_1000180EC(v17, &qword_100CAE8E8);
  return (v25 & 1) != 0;
}

uint64_t sub_100411EA4(void *a1)
{
  v3 = sub_10022C350(&qword_100CB76A8);
  sub_1000037C4();
  v5 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = &v14[-v7];
  sub_1000161C0(a1, a1[3]);
  sub_10041245C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14[15] = 0;
  type metadata accessor for HourlyForecastComponentViewModel(0);
  sub_10000FF5C();
  sub_100412640(v9, v10);
  sub_1000041A4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for HourlyForecastComponentPreprocessedDataModel();
    v14[14] = 1;
    type metadata accessor for WeatherDescription();
    sub_10001EC38();
    sub_100412640(v11, v12);
    sub_1000041A4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_10041205C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  sub_10022C350(&qword_100CAE8E8);
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = &v27 - v5;
  v29 = type metadata accessor for HourlyForecastComponentViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v30 = v9 - v8;
  sub_10022C350(&qword_100CB7690);
  sub_1000037C4();
  v31 = v11;
  v32 = v10;
  sub_100003828();
  __chkstk_darwin(v12);
  v13 = type metadata accessor for HourlyForecastComponentPreprocessedDataModel();
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  sub_1000161C0(a1, a1[3]);
  sub_10041245C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  v27 = a1;
  v18 = v17;
  v34 = 0;
  sub_10000FF5C();
  sub_100412640(v19, v20);
  v21 = v30;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_1004124B0(v21, v18);
  type metadata accessor for WeatherDescription();
  v33 = 1;
  sub_10001EC38();
  sub_100412640(v22, v23);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v24 = sub_100004190();
  v25(v24);
  sub_100412514(v6, v18 + *(v13 + 20));
  sub_100412584(v18, v28);
  sub_100006F14(v27);
  return sub_1004125E8(v18, type metadata accessor for HourlyForecastComponentPreprocessedDataModel);
}

uint64_t sub_100412388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100411AE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1004123B0(uint64_t a1)
{
  v2 = sub_10041245C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004123EC(uint64_t a1)
{
  v2 = sub_10041245C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10041245C()
{
  result = qword_100CB7698;
  if (!qword_100CB7698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7698);
  }

  return result;
}

uint64_t sub_1004124B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HourlyForecastComponentViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100412514(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CAE8E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100412584(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HourlyForecastComponentPreprocessedDataModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004125E8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100412640(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for HourlyForecastComponentPreprocessedDataModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100412768()
{
  result = qword_100CB76B8;
  if (!qword_100CB76B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB76B8);
  }

  return result;
}

unint64_t sub_1004127C0()
{
  result = qword_100CB76C0;
  if (!qword_100CB76C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB76C0);
  }

  return result;
}

unint64_t sub_100412818()
{
  result = qword_100CB76C8;
  if (!qword_100CB76C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB76C8);
  }

  return result;
}

void sub_1004128B4()
{
  sub_10010F394(319, &qword_100CB64B8, &type metadata accessor for DynamicTypeSize);
  if (v0 <= 0x3F)
  {
    sub_10008169C(319, &qword_100CA6D40, &type metadata for Bool, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_100081B54(319, &qword_100CACC68);
      if (v2 <= 0x3F)
      {
        sub_100081B54(319, &unk_100CACC70);
        if (v3 <= 0x3F)
        {
          type metadata accessor for ListLocationViewModel(319);
          if (v4 <= 0x3F)
          {
            sub_10013B178();
            if (v5 <= 0x3F)
            {
              sub_10013DB50();
              if (v6 <= 0x3F)
              {
                sub_10008169C(319, &qword_100CB3B28, &type metadata for Bool, &type metadata accessor for Binding);
                if (v7 <= 0x3F)
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

void sub_100412A78()
{
  sub_10000C778();
  v1 = v0;
  v3 = v2;
  type metadata accessor for AutomationInfo(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = (v6 - v5);
  v8 = type metadata accessor for ListLocationRowView(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  *v3 = static HorizontalAlignment.center.getter();
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  sub_10022C350(&qword_100CB7788);
  sub_1004144DC(v1, v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListLocationRowView);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v13 = swift_allocObject();
  sub_10041F478(v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for ListLocationRowView);
  sub_10022C350(&qword_100CB7790);
  v14 = sub_10022E824(&qword_100CB7798);
  v15 = sub_100414370();
  v21[0] = v14;
  v21[1] = &type metadata for Bool;
  v21[2] = v15;
  v21[3] = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  ScrollEventStateReader.init(content:)();
  v16 = *(v9 + 40);
  v17 = (v1 + *(type metadata accessor for ListLocationViewModel(0) + 24) + v16);
  v18 = v17[1];
  *v7 = *v17;
  v7[1] = v18;
  type metadata accessor for AutomationCellInfo(0);
  sub_1000201F8();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v19 = v3 + *(sub_10022C350(&qword_100CB77C0) + 36);
  v20 = type metadata accessor for AutomationInfoProperty();
  sub_1004144DC(v7, v19 + *(v20 + 24), type metadata accessor for AutomationInfo);

  sub_10041F4D4(v7, type metadata accessor for AutomationInfo);
  *v19 = 0;
  *(v19 + 8) = 0xE000000000000000;
  *(v19 + 16) = swift_getKeyPath();
  *(v19 + 24) = 0;
  *(v3 + *(sub_10022C350(&qword_100CB77C8) + 36)) = 1;
  sub_10000536C();
}

uint64_t sub_100412D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v97 = a1;
  v98 = a3;
  v96 = type metadata accessor for ScrollEventState();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = v4;
  v94 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for Location.Identifier();
  v76 = *(v81 - 8);
  __chkstk_darwin(v81);
  v74 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_10022C350(&qword_100CADD58) - 8;
  __chkstk_darwin(v80);
  v78 = &v74 - v6;
  v7 = sub_10022C350(&qword_100CADBA0);
  __chkstk_darwin(v7 - 8);
  v75 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v99 = &v74 - v10;
  active = type metadata accessor for ActiveLocationModel(0);
  __chkstk_darwin(active - 8);
  v77 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ListLocationViewModel(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LocationRowButtonStyle(0);
  __chkstk_darwin(v16);
  v18 = (&v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for ListLocationRowView(0);
  v20 = *(v19 - 1);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v86 = sub_10022C350(&qword_100CB77A8);
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v23 = &v74 - v22;
  v89 = sub_10022C350(&qword_100CB77D0);
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v103 = &v74 - v24;
  v90 = sub_10022C350(&qword_100CB7798);
  __chkstk_darwin(v90);
  v91 = &v74 - v25;
  sub_1004144DC(a2, &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListLocationRowView);
  v26 = *(v20 + 80);
  v27 = (v26 + 16) & ~v26;
  v101 = v27 + v21;
  v85 = v26 | 7;
  v28 = swift_allocObject();
  v87 = v27;
  v92 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10041F478(v92, v28 + v27, type metadata accessor for ListLocationRowView);
  v104 = a2;
  sub_10022C350(&qword_100CB77D8);
  sub_100422A78(&qword_100CB77E0, &qword_100CB77D8);
  v83 = v23;
  v29 = v78;
  Button.init(action:label:)();
  v30 = v19[7];
  v100 = *(a2 + v19[6]);
  sub_100035B30(a2 + v30, &v111);
  v31 = v19[8];
  v82 = v15;
  sub_1004144DC(a2 + v31, v15, type metadata accessor for ListLocationViewModel);
  v79 = *(a2 + v19[10]);
  swift_unknownObjectRetain();
  v32 = v77;
  sub_1000E7B34();
  v102 = a2;
  v33 = v99;
  v34 = v81;
  LocationModel.identifier.getter();
  sub_10001B350(v33, 0, 1, v34);
  v35 = *(v80 + 56);
  sub_10011C0F0(v32, v29, &qword_100CADBA0);
  sub_1000302D8(v33, v29 + v35, &qword_100CADBA0);
  if (sub_100024D10(v29, 1, v34) != 1)
  {
    v37 = v75;
    sub_1000302D8(v29, v75, &qword_100CADBA0);
    if (sub_100024D10(v29 + v35, 1, v34) != 1)
    {
      v38 = v76;
      v39 = v74;
      (*(v76 + 32))(v74, v29 + v35, v34);
      sub_10041F594(&qword_100CA3A48, &type metadata accessor for Location.Identifier);
      v40 = v37;
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      v41 = *(v38 + 8);
      v41(v39, v34);
      sub_100018198(v99, &qword_100CADBA0);
      v41(v40, v34);
      sub_100018198(v29, &qword_100CADBA0);
      goto LABEL_8;
    }

    sub_100018198(v33, &qword_100CADBA0);
    (*(v76 + 8))(v37, v34);
    goto LABEL_6;
  }

  sub_100018198(v33, &qword_100CADBA0);
  if (sub_100024D10(v29 + v35, 1, v34) != 1)
  {
LABEL_6:
    sub_100018198(v29, &qword_100CADD58);
    v36 = 0;
    goto LABEL_8;
  }

  sub_100018198(v29, &qword_100CADBA0);
  v36 = 1;
LABEL_8:
  v42 = v102;
  v43 = (v102 + v19[5]);
  v44 = *v43;
  v45 = *(v43 + 1);
  LOBYTE(v108) = v44;
  v109 = v45;
  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.getter();
  v46 = v105;
  v47 = v42 + v19[12];
  v48 = *v47;
  v49 = *(v47 + 8);
  LOBYTE(v47) = *(v47 + 16);
  v108 = v48;
  v109 = v49;
  v110 = v47;
  sub_10022C350(&unk_100CB3AA0);
  Binding.projectedValue.getter();
  v50 = v105;
  v51 = v106;
  v52 = v107;
  *(v18 + v16[14]) = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0);
  swift_storeEnumTagMultiPayload();
  *v18 = v100;
  sub_100013188(&v111, (v18 + 1));
  sub_10041F478(v82, v18 + v16[6], type metadata accessor for ListLocationViewModel);
  *(v18 + v16[7]) = v79;
  *(v18 + v16[8]) = v36 & 1;
  *(v18 + v16[9]) = v46;
  v53 = v18 + v16[10];
  LOBYTE(v105) = 0;
  State.init(wrappedValue:)();
  v54 = v109;
  *v53 = v108;
  *(v53 + 1) = v54;
  v55 = v18 + v16[11];
  LOBYTE(v105) = 1;
  State.init(wrappedValue:)();
  v56 = v109;
  *v55 = v108;
  *(v55 + 1) = v56;
  v57 = v18 + v16[12];
  LOBYTE(v105) = 0;
  State.init(wrappedValue:)();
  v58 = v109;
  *v57 = v108;
  *(v57 + 1) = v58;
  v59 = v18 + v16[13];
  *v59 = swift_getKeyPath();
  v59[8] = 0;
  v60 = v18 + v16[15];
  *v60 = v50;
  *(v60 + 1) = v51;
  v60[16] = v52;
  sub_100422A78(&qword_100CB77B0, &qword_100CB77A8);
  sub_10041F594(&qword_100CB77B8, type metadata accessor for LocationRowButtonStyle);
  v61 = v86;
  v62 = v83;
  View.buttonStyle<A>(_:)();
  sub_10041F4D4(v18, type metadata accessor for LocationRowButtonStyle);
  (*(v84 + 8))(v62, v61);
  *&v100 = type metadata accessor for ListLocationRowView;
  v63 = v92;
  sub_1004144DC(v42, v92, type metadata accessor for ListLocationRowView);
  v64 = v95;
  v65 = v94;
  v66 = v96;
  (*(v95 + 16))(v94, v97, v96);
  v67 = (v101 + *(v64 + 80)) & ~*(v64 + 80);
  v68 = swift_allocObject();
  v69 = v87;
  sub_10041F478(v63, v68 + v87, type metadata accessor for ListLocationRowView);
  (*(v64 + 32))(v68 + v67, v65, v66);
  v70 = v91;
  (*(v88 + 32))(v91, v103, v89);
  v71 = (v70 + *(v90 + 36));
  *v71 = sub_10041F528;
  v71[1] = v68;
  v71[2] = 0;
  v71[3] = 0;
  LOBYTE(v111) = ScrollEventState.isScrolling.getter() & 1;
  sub_1004144DC(v102, v63, v100);
  v72 = swift_allocObject();
  sub_10041F478(v63, v72 + v69, type metadata accessor for ListLocationRowView);
  sub_100414370();
  View.onChange<A>(of:initial:_:)();

  return sub_100018198(v70, &qword_100CB7798);
}

uint64_t sub_100413B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_10022C350(&qword_100CB77E8);
  return sub_100413B94(a1, a2 + *(v4 + 44));
}

uint64_t sub_100413B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v21 = type metadata accessor for LocationRowContentView(0);
  __chkstk_darwin(v21);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10022C350(&qword_100CB77F0);
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  v8 = type metadata accessor for LocationRowContentViewLargeText();
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DynamicTypeSize();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10011A1CC();
  v15 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v12 + 8))(v14, v11);
  v16 = *(type metadata accessor for ListLocationRowView(0) + 32);
  if (v15)
  {
    sub_1004144DC(a1 + v16, v10, type metadata accessor for ListLocationViewModel);
    sub_1004144DC(v10, v7, type metadata accessor for LocationRowContentViewLargeText);
    swift_storeEnumTagMultiPayload();
    sub_10041F594(&qword_100CB77F8, type metadata accessor for LocationRowContentViewLargeText);
    sub_10041F594(&qword_100CB7800, type metadata accessor for LocationRowContentView);
    _ConditionalContent<>.init(storage:)();
    v17 = type metadata accessor for LocationRowContentViewLargeText;
    v18 = v10;
  }

  else
  {
    sub_1004144DC(a1 + v16, v4 + *(v21 + 20), type metadata accessor for ListLocationViewModel);
    *v4 = swift_getKeyPath();
    sub_10022C350(&qword_100CA3EE8);
    swift_storeEnumTagMultiPayload();
    sub_1004144DC(v4, v7, type metadata accessor for LocationRowContentView);
    swift_storeEnumTagMultiPayload();
    sub_10041F594(&qword_100CB77F8, type metadata accessor for LocationRowContentViewLargeText);
    sub_10041F594(&qword_100CB7800, type metadata accessor for LocationRowContentView);
    _ConditionalContent<>.init(storage:)();
    v17 = type metadata accessor for LocationRowContentView;
    v18 = v4;
  }

  return sub_10041F4D4(v18, v17);
}

uint64_t sub_100413FA4()
{
  ScrollEventState.isScrolling.getter();
  type metadata accessor for ListLocationRowView(0);
  sub_10022C350(&qword_100CA5A80);
  return State.wrappedValue.setter();
}

uint64_t sub_100414024()
{
  type metadata accessor for ListLocationRowView(0);
  sub_10022C350(&qword_100CA5A80);
  return State.wrappedValue.setter();
}

uint64_t sub_100414098@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CA3EE8);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000302D8(v2, &v14 - v9, &qword_100CA3EE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for Font.Context();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10041429C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_1004142FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ListLocationRowView(0);
  sub_100003810(v4);
  sub_100008550();

  return sub_100412D6C(a1, v5, a2);
}

unint64_t sub_100414370()
{
  result = qword_100CB77A0;
  if (!qword_100CB77A0)
  {
    sub_10022E824(&qword_100CB7798);
    sub_10022E824(&qword_100CB77A8);
    type metadata accessor for LocationRowButtonStyle(255);
    sub_100422A78(&qword_100CB77B0, &qword_100CB77A8);
    sub_10041F594(&qword_100CB77B8, type metadata accessor for LocationRowButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB77A0);
  }

  return result;
}

uint64_t sub_1004144DC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_100414538@<X0>(char *a1@<X8>)
{
  v89 = a1;
  v2 = type metadata accessor for Font.Context();
  v82 = *(v2 - 8);
  v83 = v2;
  __chkstk_darwin(v2);
  v81 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_10022C350(&unk_100CE0EB0);
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v73 = &v69 - v4;
  v5 = sub_10022C350(&qword_100CB7AA0);
  __chkstk_darwin(v5 - 8);
  v70 = (&v69 - v6);
  v71 = sub_10022C350(&qword_100CB7AA8);
  __chkstk_darwin(v71);
  v72 = &v69 - v7;
  v80 = sub_10022C350(&qword_100CB7AB0);
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v76 = &v69 - v8;
  v91 = sub_10022C350(&qword_100CB7AB8);
  __chkstk_darwin(v91);
  v75 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v74 = &v69 - v11;
  v12 = sub_10022C350(&qword_100CB7AC0);
  __chkstk_darwin(v12 - 8);
  v88 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v90 = &v69 - v15;
  v16 = sub_10022C350(&qword_100CB7AC8);
  __chkstk_darwin(v16);
  v18 = &v69 - v17;
  v19 = sub_10022C350(&qword_100CB7AD0);
  v86 = *(v19 - 8);
  v87 = v19;
  __chkstk_darwin(v19);
  v85 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v69 - v22;
  *v18 = static VerticalAlignment.top.getter();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v24 = sub_10022C350(&qword_100CB7AD8);
  sub_100414F98(v1, &v18[*(v24 + 44)]);
  if (qword_100CA2658 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1007A3F2C();
  swift_endAccess();
  static Alignment.top.getter();
  v25 = 1;
  _FrameLayout.init(width:height:alignment:)();
  v26 = &v18[*(v16 + 36)];
  v27 = *&v92[23];
  *v26 = *&v92[21];
  *(v26 + 1) = v27;
  *(v26 + 2) = *&v92[25];
  v28 = Solarium.init()();
  __chkstk_darwin(v28);
  sub_10022C350(&qword_100CB7AE0);
  sub_1004208CC();
  sub_100420984();
  v84 = v23;
  v29 = v1;
  View.staticIf<A, B>(_:then:)();
  sub_100018198(v18, &qword_100CB7AC8);
  v30 = v1 + *(type metadata accessor for LocationRowContentView(0) + 20);
  v31 = type metadata accessor for ListLocationViewModel(0);
  v32 = v91;
  if ((*(v30 + *(v31 + 84)) & 1) == 0)
  {
    v33 = static VerticalAlignment.bottom.getter();
    v34 = v70;
    *v70 = v33;
    *(v34 + 8) = 0;
    *(v34 + 16) = 1;
    v35 = sub_10022C350(&qword_100CB7B08);
    sub_1004165F8(v29, v34 + *(v35 + 44));
    v36 = static Edge.Set.trailing.getter();
    v37 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v36)
    {
      v37 = Edge.Set.init(rawValue:)();
    }

    sub_1009AA9D0();

    EdgeInsets.init(_all:)();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = v72;
    sub_10011C0F0(v34, v72, &qword_100CB7AA0);
    v47 = v46 + *(v71 + 36);
    *v47 = v37;
    *(v47 + 8) = v39;
    *(v47 + 16) = v41;
    *(v47 + 24) = v43;
    *(v47 + 32) = v45;
    *(v47 + 40) = 0;
    Solarium.init()();
    v48 = v73;
    v49 = static ViewInputPredicate.! prefix(_:)();
    v70 = &v69;
    __chkstk_darwin(v49);
    sub_10022C350(&qword_100CB7B10);
    sub_100420A18();
    v93[0] = &type metadata for Solarium;
    v93[1] = &protocol witness table for Solarium;
    swift_getOpaqueTypeConformance2();
    sub_100420AD0();
    v50 = v76;
    v51 = v79;
    View.staticIf<A, B>(_:then:)();
    (*(v77 + 8))(v48, v51);
    sub_100018198(v46, &qword_100CB7AA8);
    memcpy(v93, &xmmword_100D90930, 0xA1uLL);
    sub_100420B5C(v93, v92);
    v52 = v81;
    sub_100414098(v81);
    sub_1007A4218();
    sub_100420BB8(v93);
    (*(v82 + 8))(v52, v83);
    static Alignment.bottom.getter();
    _FrameLayout.init(width:height:alignment:)();
    v53 = v75;
    (*(v78 + 32))(v75, v50, v80);
    v32 = v91;
    v54 = &v53[*(v91 + 36)];
    v55 = *&v92[2];
    *v54 = *v92;
    *(v54 + 1) = v55;
    *(v54 + 2) = *&v92[4];
    v56 = v53;
    v57 = v74;
    sub_10011C0F0(v56, v74, &qword_100CB7AB8);
    sub_10011C0F0(v57, v90, &qword_100CB7AB8);
    v25 = 0;
  }

  v58 = v90;
  sub_10001B350(v90, v25, 1, v32);
  v59 = v85;
  v60 = v86;
  v61 = *(v86 + 16);
  v62 = v84;
  v63 = v87;
  v61(v85, v84, v87);
  v64 = v88;
  sub_1000302D8(v58, v88, &qword_100CB7AC0);
  v65 = v89;
  v61(v89, v59, v63);
  v66 = sub_10022C350(&qword_100CB7B30);
  sub_1000302D8(v64, &v65[*(v66 + 48)], &qword_100CB7AC0);
  sub_100018198(v58, &qword_100CB7AC0);
  v67 = *(v60 + 8);
  v67(v62, v63);
  sub_100018198(v64, &qword_100CB7AC0);
  return (v67)(v59, v63);
}

uint64_t sub_100414F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v3 = type metadata accessor for RowElementStyle(0);
  __chkstk_darwin(v3 - 8);
  v105 = v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_10022C350(&qword_100CB7C00);
  __chkstk_darwin(v104);
  v109 = v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v99 = v95 - v7;
  __chkstk_darwin(v8);
  v108 = v95 - v9;
  v10 = sub_10022C350(&qword_100CB7C08);
  __chkstk_darwin(v10 - 8);
  v107 = v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v95 - v13;
  *v14 = static HorizontalAlignment.leading.getter();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = *(sub_10022C350(&qword_100CB7C10) + 44);
  v106 = v14;
  sub_10041598C(a1, &v14[v15]);
  v16 = a1 + *(type metadata accessor for LocationRowContentView(0) + 20);
  v17 = type metadata accessor for ListLocationViewModel(0);
  v18 = (v16 + *(v17 + 68));
  v19 = v18[1];
  v103 = v16;
  v102 = v17;
  if (v19)
  {
    v20 = *v18;
    v21 = (v16 + *(v17 + 64));
    v22 = v21[1];
    v101 = *v21;
    v115 = v101;
    v116 = v22;
    sub_10002D5A4();

    v100 = v22;

    v23 = Text.init<A>(_:)();
    v25 = v24;
    v27 = v26;
    if (qword_100CA2658 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1007A38EC();
    swift_endAccess();
    Font.init(_:)();
    v97 = Text.font(_:)();
    v96 = v28;
    v98 = v29;
    v95[1] = v30;

    sub_10010CD64(v23, v25, v27 & 1);

    v115 = v20;
    v116 = v19;
    v31 = Text.init<A>(_:)();
    v33 = v32;
    v35 = v34;
    swift_beginAccess();
    sub_1007A39E0();
    swift_endAccess();
    Font.init(_:)();
    v36 = Text.font(_:)();
    v38 = v37;
    v40 = v39;

    sub_10010CD64(v31, v33, v35 & 1);

    swift_beginAccess();
    v41 = sub_1007A38EC();
    swift_endAccess();
    [v41 capHeight];

    swift_beginAccess();
    v42 = sub_1007A39E0();
    swift_endAccess();
    [v42 capHeight];

    v43 = Text.baselineOffset(_:)();
    v45 = v44;
    LOBYTE(v33) = v46;
    sub_10010CD64(v36, v38, v40 & 1);

    v47 = v97;
    v48 = v96;
    v111 = static Text.+ infix(_:_:)();
    v50 = v49;
    v52 = v51;
    sub_10010CD64(v43, v45, v33 & 1);

    v53 = v98 & 1;
    v54 = v47;
    v55 = v48;
    v56 = v52;
    v57 = v111;
  }

  else
  {
    v58 = (v16 + *(v17 + 64));
    v59 = v58[1];
    v101 = *v58;
    v115 = v101;
    v116 = v59;
    sub_10002D5A4();
    v100 = v59;

    v60 = Text.init<A>(_:)();
    v62 = v61;
    v64 = v63;
    if (qword_100CA2658 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1007A38EC();
    swift_endAccess();
    Font.init(_:)();
    v57 = Text.font(_:)();
    v66 = v65;
    v56 = v67;

    v53 = v64 & 1;
    v54 = v60;
    v55 = v62;
    v50 = v66;
  }

  sub_10010CD64(v54, v55, v53);
  v68 = v105;

  static Color.black.getter();
  Color.opacity(_:)();

  v69 = 0.0;
  v111 = v57;
  v105 = v50;
  v70 = Text.shadow(color:radius:x:y:)();
  v72 = v71;
  v74 = v73;
  v76 = v75;

  if (qword_100CA2658 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1007A3F2C();
  swift_endAccess();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v77 = v74 & 1;
  if (v101 == 11565 && v100 == 0xE200000000000000)
  {
    v80 = v103;
  }

  else
  {
    v79 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v80 = v103;
    if ((v79 & 1) == 0)
    {
      swift_beginAccess();
      v69 = sub_1007A3F88();
      swift_endAccess();
    }
  }

  LODWORD(v101) = v56;
  if ((*(v80 + *(v102 + 104)) & 2) != 0)
  {
    v82 = enum case for BlendMode.normal(_:);
    v83 = type metadata accessor for BlendMode();
    (*(*(v83 - 8) + 104))(v68, v82, v83);
    v81 = 0;
  }

  else
  {
    v81 = 1;
  }

  v84 = sub_10022C350(&qword_100CB7B80);
  sub_10001B350(v68, v81, 1, v84);
  v85 = v99;
  sub_10041F478(v68, &v99[*(v104 + 36)], type metadata accessor for RowElementStyle);
  *v85 = v70;
  *(v85 + 8) = v72;
  *(v85 + 16) = v77;
  *(v85 + 24) = v76;
  v86 = v113;
  *(v85 + 32) = v112;
  *(v85 + 48) = v86;
  *(v85 + 64) = v114;
  *(v85 + 80) = 0x3FF0000000000000;
  *(v85 + 88) = v69;
  *(v85 + 96) = 0;
  v87 = v108;
  sub_10011C0F0(v85, v108, &qword_100CB7C00);
  v88 = v106;
  v89 = v107;
  sub_1000302D8(v106, v107, &qword_100CB7C08);
  v90 = v109;
  sub_1000302D8(v87, v109, &qword_100CB7C00);
  v91 = v110;
  sub_1000302D8(v89, v110, &qword_100CB7C08);
  v92 = sub_10022C350(&qword_100CB7C18);
  v93 = v91 + *(v92 + 48);
  *v93 = 0x4020000000000000;
  *(v93 + 8) = 0;
  sub_1000302D8(v90, v91 + *(v92 + 64), &qword_100CB7C00);
  sub_10010CD64(v111, v105, v101 & 1);

  sub_100018198(v87, &qword_100CB7C00);
  sub_100018198(v88, &qword_100CB7C08);
  sub_100018198(v90, &qword_100CB7C00);
  return sub_100018198(v89, &qword_100CB7C08);
}

uint64_t sub_10041598C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v80 = a2;
  v3 = type metadata accessor for RowElementStyle(0);
  __chkstk_darwin(v3 - 8);
  v76 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_10022C350(&qword_100CB7C20);
  __chkstk_darwin(v71);
  v72 = v62 - v5;
  v73 = sub_10022C350(&qword_100CB7C28);
  __chkstk_darwin(v73);
  v77 = v62 - v6;
  v74 = sub_10022C350(&qword_100CB7C30);
  __chkstk_darwin(v74);
  v79 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v75 = v62 - v9;
  __chkstk_darwin(v10);
  v78 = v62 - v11;
  v12 = type metadata accessor for Font.Context();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100CA2658 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1007A3ACC();
  swift_endAccess();
  sub_100414098(v15);
  Font.capHeight(in:)();

  v16 = *(v13 + 8);
  v62[1] = v13 + 8;
  v66 = v16;
  v16(v15, v12);
  v17 = a1 + *(type metadata accessor for LocationRowContentView(0) + 20);
  v62[0] = v17;
  v67 = type metadata accessor for ListLocationViewModel(0);
  v18 = (v17 + *(v67 + 24));
  v19 = v18[1];
  v82 = *v18;
  v83 = v19;
  sub_10002D5A4();
  v65 = a1;

  v20 = Text.init<A>(_:)();
  v63 = v15;
  v22 = v21;
  v24 = v23;
  static Color.black.getter();
  Color.opacity(_:)();
  v64 = v12;

  v25 = Text.shadow(color:radius:x:y:)();
  v27 = v26;
  v29 = v28;

  sub_10010CD64(v20, v22, v24 & 1);

  swift_beginAccess();
  sub_1007A3ACC();
  swift_endAccess();
  v30 = Text.font(_:)();
  v32 = v31;
  v34 = v33;
  v70 = v35;

  v36 = v27;
  v37 = v62[0];
  sub_10010CD64(v25, v36, v29 & 1);

  static Alignment.center.getter();
  v38 = 1;
  _FrameLayout.init(width:height:alignment:)();
  v68 = v34 & 1;
  LOBYTE(v82) = v34 & 1;
  KeyPath = swift_getKeyPath();
  v39 = v72;
  sub_1004144DC(v37, v72, type metadata accessor for ListLocationViewModel);
  v40 = type metadata accessor for LocationRowSubheadingView(0);
  v41 = v39 + *(v40 + 20);
  *v41 = swift_getKeyPath();
  *(v41 + 8) = 0;
  v42 = *(v40 + 24);
  *(v39 + v42) = swift_getKeyPath();
  sub_10022C350(&qword_100CA2E38);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1007A3CFC();
  swift_endAccess();
  v43 = v63;
  sub_100414098(v63);
  Font.capHeight(in:)();

  v66(v43, v64);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v44 = (v39 + *(v71 + 36));
  v45 = v96;
  v44[1] = v95;
  v44[2] = v45;
  *v44 = v94;
  v46 = v76;
  if (*(v37 + *(v67 + 104)))
  {
    v47 = enum case for BlendMode.plusLighter(_:);
    v48 = type metadata accessor for BlendMode();
    (*(*(v48 - 8) + 104))(v46, v47, v48);
    v38 = 0;
  }

  v49 = sub_10022C350(&qword_100CB7B80);
  sub_10001B350(v46, v38, 1, v49);
  v50 = v77;
  sub_10041F478(v46, &v77[*(v73 + 36)], type metadata accessor for RowElementStyle);
  sub_10011C0F0(v39, v50, &qword_100CB7C20);
  v51 = swift_getKeyPath();
  v52 = sub_1009AA9D0();
  v53 = v75;
  v54 = &v75[*(v74 + 36)];
  sub_10022C350(&qword_100CB7B88);
  sub_10041621C(v52);

  *v54 = v51;
  sub_10011C0F0(v50, v53, &qword_100CB7C28);
  v55 = v78;
  sub_10011C0F0(v53, v78, &qword_100CB7C30);
  v56 = v79;
  sub_1000302D8(v55, v79, &qword_100CB7C30);
  *v81 = v30;
  *&v81[8] = v32;
  LOBYTE(v50) = v68;
  v81[16] = v68;
  *&v81[17] = v93[0];
  *&v81[20] = *(v93 + 3);
  v76 = v30;
  v77 = v32;
  v57 = KeyPath;
  v58 = v70;
  *&v81[24] = v70;
  *&v81[32] = v97;
  *&v81[48] = v98;
  *&v81[64] = v99;
  *&v81[80] = KeyPath;
  *&v81[88] = 1;
  v81[96] = 0;
  v59 = v80;
  memcpy(v80, v81, 0x61uLL);
  v59[13] = 0;
  *(v59 + 112) = 0;
  v60 = sub_10022C350(&qword_100CB7C38);
  sub_1000302D8(v56, v59 + *(v60 + 64), &qword_100CB7C30);
  sub_1000302D8(v81, &v82, &qword_100CB7C40);
  sub_100018198(v55, &qword_100CB7C30);
  sub_100018198(v56, &qword_100CB7C30);
  v82 = v76;
  v83 = v77;
  v84 = v50;
  *v85 = v93[0];
  *&v85[3] = *(v93 + 3);
  v87 = v97;
  v88 = v98;
  v89 = v99;
  v86 = v58;
  v90 = v57;
  v91 = 1;
  v92 = 0;
  return sub_100018198(&v82, &qword_100CB7C40);
}

uint64_t sub_10041621C(uint64_t a1)
{
  if (sub_10069A6AC(1u, a1))
  {
    sub_10022C350(&qword_100CB7C58);
    type metadata accessor for RedactionReasons();
    *(swift_allocObject() + 16) = xmmword_100A2C3F0;
    static RedactionReasons.placeholder.getter();
  }

  else
  {
    type metadata accessor for RedactionReasons();
  }

  sub_10041F594(&qword_100CAD9E8, &type metadata accessor for RedactionReasons);
  sub_10022C350(&qword_100CB7C48);
  sub_100422A78(&qword_100CB7C50, &qword_100CB7C48);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_1004163BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Font.Context();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100CA2658 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1007A3ACC();
  swift_endAccess();
  sub_100414098(v7);
  Font.ascender(in:)();

  v8 = *(v5 + 8);
  v8(v7, v4);
  swift_beginAccess();
  sub_1007A3ACC();
  swift_endAccess();
  sub_100414098(v7);
  Font.capHeight(in:)();

  v8(v7, v4);
  v9 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_1000302D8(a1, a2, &qword_100CB7AC8);
  result = sub_10022C350(&qword_100CB7AE0);
  v19 = a2 + *(result + 36);
  *v19 = v9;
  *(v19 + 8) = v11;
  *(v19 + 16) = v13;
  *(v19 + 24) = v15;
  *(v19 + 32) = v17;
  *(v19 + 40) = 0;
  return result;
}

uint64_t sub_1004165F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v117 = sub_10022C350(&qword_100CB7B38);
  __chkstk_darwin(v117);
  v104 = &v99 - v3;
  v113 = sub_10022C350(&qword_100CB7B40);
  __chkstk_darwin(v113);
  v114 = &v99 - v4;
  v102 = type metadata accessor for TemperatureHighLowTextVertical();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_10022C350(&qword_100CB7B48);
  __chkstk_darwin(v112);
  v103 = &v99 - v6;
  v7 = sub_10022C350(&qword_100CB7B50);
  __chkstk_darwin(v7 - 8);
  v116 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v115 = &v99 - v10;
  v107 = type metadata accessor for AccessibilityChildBehavior();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v12 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CB7B58);
  __chkstk_darwin(v13);
  v15 = &v99 - v14;
  v16 = sub_10022C350(&qword_100CB7B60);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v99 - v18;
  v20 = sub_10022C350(&qword_100CB7B68);
  __chkstk_darwin(v20 - 8);
  v111 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v119 = &v99 - v23;
  v24 = a1 + *(type metadata accessor for LocationRowContentView(0) + 20);
  sub_1004144DC(v24, v15, type metadata accessor for ListLocationViewModel);
  v25 = &v15[*(type metadata accessor for DescriptionView(0) + 20)];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  Text.Measurements.init()();
  if (qword_100CA2658 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1007A3FE8();
  v27 = v26;
  swift_endAccess();
  KeyPath = swift_getKeyPath();
  v29 = &v15[*(sub_10022C350(&qword_100CB7B70) + 36)];
  *v29 = KeyPath;
  v29[1] = v27;
  v30 = *(sub_10022C350(&qword_100CB7B78) + 36);
  v31 = enum case for BlendMode.plusLighter(_:);
  v32 = type metadata accessor for BlendMode();
  (*(*(v32 - 8) + 104))(&v15[v30], v31, v32);
  v33 = sub_10022C350(&qword_100CB7B80);
  sub_10001B350(&v15[v30], 0, 1, v33);
  v34 = swift_getKeyPath();
  v35 = sub_1009AA9D0();
  v36 = &v15[*(v13 + 36)];
  v110 = sub_10022C350(&qword_100CB7B88);
  sub_100787958(v35);

  *v36 = v34;
  static AccessibilityChildBehavior.ignore.getter();
  v37 = sub_100420C2C();
  v109 = v19;
  v108 = v13;
  v105 = v37;
  View.accessibilityElement(children:)();
  (*(v106 + 1))(v12, v107);
  sub_100018198(v15, &qword_100CB7B58);
  sub_10022C350(&qword_100CA3DA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  v39 = type metadata accessor for ListLocationViewModel(0);
  v40 = (v24 + v39[15]);
  v41 = v40[1];
  *(inited + 32) = *v40;
  *(inited + 40) = v41;
  v42 = (v24 + v39[12]);
  v43 = v42[1];
  *(inited + 48) = *v42;
  *(inited + 56) = v43;

  v44 = 0;
  v45 = _swiftEmptyArrayStorage;
LABEL_4:
  v46 = (inited + 40 + 16 * v44);
  while (++v44 != 3)
  {
    v47 = v46 + 2;
    v48 = *v46;
    v46 += 2;
    if (v48)
    {
      v106 = v39;
      v107 = v17;
      v49 = v24;
      v50 = *(v47 - 3);

      v51 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100109810();
        v45 = v54;
      }

      v52 = v45[2];
      if (v52 >= v45[3] >> 1)
      {
        sub_100109810();
        v45 = v55;
      }

      v45[2] = v52 + 1;
      v53 = &v45[2 * v52];
      v53[4] = v50;
      v53[5] = v48;
      v16 = v51;
      v24 = v49;
      v17 = v107;
      v39 = v106;
      goto LABEL_4;
    }
  }

  swift_setDeallocating();
  sub_10015A594();
  v122 = v45;
  sub_10022C350(&qword_100CCC930);
  sub_100422A78(&qword_100CB2D00, &qword_100CCC930);
  v56 = BidirectionalCollection<>.joined(separator:)();
  v58 = v57;

  v122 = v56;
  v123 = v58;
  v120 = v108;
  v121 = v105;
  swift_getOpaqueTypeConformance2();
  sub_10002D5A4();
  v59 = v109;
  View.accessibilityLabel<A>(_:)();

  (*(v17 + 8))(v59, v16);
  if ((*(v24 + v39[24]) & 1) != 0 && (v60 = sub_1009AA9D0(), v61 = sub_10069A6AC(2u, v60), , (v61 & 1) == 0))
  {

    v78 = v100;
    TemperatureHighLowTextVertical.init(highTemperature:lowTemperature:showNumericOnlyHighLow:scaleFactor:additionalSpacing:)();
    v79 = (v24 + v39[20]);
    v80 = v79[1];
    v122 = *v79;
    v123 = v80;

    v81 = Text.init<A>(_:)();
    v83 = v82;
    v85 = v84;
    sub_10041F594(&qword_100CA3FE8, &type metadata accessor for TemperatureHighLowTextVertical);
    v86 = v103;
    v87 = v102;
    View.accessibilityLabel(_:)();
    sub_10010CD64(v81, v83, v85 & 1);

    (*(v101 + 8))(v78, v87);
    v88 = (v86 + *(sub_10022C350(&qword_100CB7BD0) + 36));
    *v88 = 0x4000000000000000;
    v88[1] = 0;
    v89 = swift_getKeyPath();
    v90 = sub_1009AA9D0();
    v91 = (v86 + *(v112 + 36));
    sub_100787960(v90);

    *v91 = v89;
    v75 = &qword_100CB7B48;
    sub_1000302D8(v86, v114, &qword_100CB7B48);
    swift_storeEnumTagMultiPayload();
    sub_100420EA8();
    sub_1004210D8();
    v76 = v115;
    _ConditionalContent<>.init(storage:)();
    v77 = v86;
  }

  else
  {
    v62 = v39[19];
    v63 = (v24 + v39[18]);
    v64 = v63[1];
    v109 = *v63;
    v65 = *(v24 + v62 + 8);
    v108 = *(v24 + v62);

    v66 = sub_1009AA9D0();
    v67 = sub_10069A6AC(2u, v66);

    v68 = (v24 + v39[20]);
    v70 = *v68;
    v69 = v68[1];
    v71 = swift_getKeyPath();

    v72 = sub_1009AA9D0();
    v73 = v104;
    v74 = &v104[*(v117 + 36)];
    sub_100787960(v72);

    *v74 = v71;
    *v73 = v109;
    *(v73 + 8) = v64;
    *(v73 + 16) = v108;
    *(v73 + 24) = v65;
    *(v73 + 32) = v67 & 1;
    *(v73 + 40) = v70;
    *(v73 + 48) = v69;
    v75 = &qword_100CB7B38;
    sub_1000302D8(v73, v114, &qword_100CB7B38);
    swift_storeEnumTagMultiPayload();
    sub_100420EA8();
    sub_1004210D8();
    v76 = v115;
    _ConditionalContent<>.init(storage:)();
    v77 = v73;
  }

  sub_100018198(v77, v75);
  v92 = v119;
  v93 = v111;
  sub_1000302D8(v119, v111, &qword_100CB7B68);
  v94 = v116;
  sub_1000302D8(v76, v116, &qword_100CB7B50);
  v95 = v118;
  sub_1000302D8(v93, v118, &qword_100CB7B68);
  v96 = sub_10022C350(&qword_100CB7BF8);
  v97 = v95 + *(v96 + 48);
  *v97 = 0x4020000000000000;
  *(v97 + 8) = 0;
  sub_1000302D8(v94, v95 + *(v96 + 64), &qword_100CB7B50);
  sub_100018198(v76, &qword_100CB7B50);
  sub_100018198(v92, &qword_100CB7B68);
  sub_100018198(v94, &qword_100CB7B50);
  return sub_100018198(v93, &qword_100CB7B68);
}

uint64_t sub_100417340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Font.Context();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100CA2658 != -1)
  {
    swift_once();
  }

  sub_100414098(v7);
  swift_beginAccess();
  sub_1007A3CFC();
  swift_endAccess();
  Font.descender(in:)();
  v9 = v8;

  (*(v5 + 8))(v7, v4);
  sub_1000302D8(a1, a2, &qword_100CB7AA8);
  result = sub_10022C350(&qword_100CB7B10);
  v11 = a2 + *(result + 36);
  *v11 = 0;
  *(v11 + 8) = -v9;
  return result;
}

void sub_1004174DC()
{
  sub_10000C778();
  v2 = v1;
  v3 = type metadata accessor for LocationRowSubheadingView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_100417690(v0, v15);
  if (qword_100CA2658 != -1)
  {
    sub_100005CCC();
  }

  sub_10001638C();
  sub_1007A3CFC();
  v7 = v6;
  swift_endAccess();
  KeyPath = swift_getKeyPath();
  memcpy(v16, v15, 0x61uLL);
  v9 = swift_getKeyPath();
  v10 = sub_100003984();
  sub_1004144DC(v10, v11, v12);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_10041F478(&v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v14 + v13, type metadata accessor for LocationRowSubheadingView);
  memcpy(v2, v16, 0x68uLL);
  v2[13] = KeyPath;
  v2[14] = v7;
  v2[15] = v9;
  v2[16] = sub_100421B98;
  v2[17] = v14;
  sub_10000536C();
}

void *sub_100417690@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for DynamicTypeSize();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  type metadata accessor for LocationRowSubheadingView(0);
  sub_10011A1CC();
  v8 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = static HorizontalAlignment.leading.getter();
    v25 = 1;
    sub_100418408(a1, __src);
    memcpy(v18, __src, sizeof(v18));
    memcpy(v19, __src, sizeof(v19));
    sub_1000302D8(v18, &v20, &qword_100CB8048);
    sub_100018198(v19, &qword_100CB8048);
    memcpy(&v17[7], v18, 0x48uLL);
    v10 = v25;
    v25 = 0;
    v20 = v9;
    v21 = 0;
    v22 = v10;
    v11 = v17;
    v12 = 79;
  }

  else
  {
    v13 = static VerticalAlignment.center.getter();
    v25 = 0;
    sub_100417BE4(a1, __src);
    memcpy(v18, __src, 0x42uLL);
    memcpy(v19, __src, 0x42uLL);
    sub_1000302D8(v18, &v20, &qword_100CB8020);
    sub_100018198(v19, &qword_100CB8020);
    memcpy(&v24[7], v18, 0x42uLL);
    v14 = v25;
    v25 = 1;
    v20 = v13;
    v21 = 0x4008000000000000;
    v22 = v14;
    v11 = v24;
    v12 = 73;
  }

  memcpy(v23, v11, v12);
  v23[79] = v25;
  sub_10022C350(&qword_100CB8028);
  sub_10022C350(&qword_100CB8030);
  sub_100422A78(&qword_100CB8038, &qword_100CB8028);
  sub_100422A78(&qword_100CB8040, &qword_100CB8030);
  _ConditionalContent<>.init(storage:)();
  return memcpy(a2, __src, 0x61uLL);
}
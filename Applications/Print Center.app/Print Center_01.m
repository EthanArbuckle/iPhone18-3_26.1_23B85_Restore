uint64_t storeEnumTagSinglePayload for PrintStateReasonSeverity(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrinterStateReasonValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE1)
  {
    goto LABEL_17;
  }

  if (a2 + 31 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 31) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 31;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 31;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 31;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v8 = v6 - 32;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrinterStateReasonValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE1)
  {
    v4 = 0;
  }

  if (a2 > 0xE0)
  {
    v5 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 31;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100017770()
{
  result = qword_100029198;
  if (!qword_100029198)
  {
    sub_100004C24(&qword_1000291A0, qword_10001D1E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029198);
  }

  return result;
}

unint64_t sub_1000177D8()
{
  result = qword_1000291A8;
  if (!qword_1000291A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000291A8);
  }

  return result;
}

unint64_t sub_100017830()
{
  result = qword_1000291B0;
  if (!qword_1000291B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000291B0);
  }

  return result;
}

unint64_t sub_100017884(unint64_t result)
{
  if (result >= 0x20)
  {
    return 32;
  }

  return result;
}

uint64_t sub_1000178DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a3;
  v44 = a2;
  v46 = a4;
  v5 = type metadata accessor for BorderlessButtonStyle();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ButtonStyleConfiguration.Label();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100004A84(&qword_1000291B8, &qword_10001D408);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v41 - v17;
  v42 = sub_100004A84(&qword_1000291C0, &qword_10001D410);
  v19 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v21 = &v41 - v20;
  v45 = a1;
  ButtonStyleConfiguration.label.getter();
  BorderlessButtonStyle.init()();
  sub_100017D80(&qword_1000291C8, &type metadata accessor for ButtonStyleConfiguration.Label);
  sub_100017D80(&qword_1000291D0, &type metadata accessor for BorderlessButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
  if (qword_100028A28 != -1)
  {
    swift_once();
  }

  v22 = qword_100029350;
  KeyPath = swift_getKeyPath();
  v24 = &v18[*(sub_100004A84(&qword_1000291D8, &qword_10001D448) + 36)];
  *v24 = KeyPath;
  v24[1] = v22;
  v25 = &v18[*(sub_100004A84(&qword_1000291E0, &qword_10001D450) + 36)];
  v26 = *(sub_100004A84(&qword_1000291E8, &qword_10001D458) + 28);

  static SymbolRenderingMode.palette.getter();
  v27 = type metadata accessor for SymbolRenderingMode();
  (*(*(v27 - 8) + 56))(v25 + v26, 0, 1, v27);
  *v25 = swift_getKeyPath();
  v28 = &v18[*(v15 + 36)];
  v29 = v44;
  *v28 = v43;
  *(v28 + 1) = v29;

  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v30 = 1.2;
  }

  else
  {
    v30 = 1.0;
  }

  static UnitPoint.center.getter();
  v32 = v31;
  v34 = v33;
  sub_100017E88(v18, v21, &qword_1000291B8, &qword_10001D408);
  v35 = &v21[*(v42 + 36)];
  *v35 = v30;
  *(v35 + 1) = v30;
  *(v35 + 2) = v32;
  *(v35 + 3) = v34;
  v36 = static Animation.easeOut(duration:)();
  v37 = ButtonStyleConfiguration.isPressed.getter();
  v38 = v46;
  sub_100017E88(v21, v46, &qword_1000291C0, &qword_10001D410);
  result = sub_100004A84(&qword_1000291F0, &qword_10001D490);
  v40 = v38 + *(result + 36);
  *v40 = v36;
  *(v40 + 8) = v37 & 1;
  return result;
}

uint64_t sub_100017D80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100017DF4(uint64_t a1)
{
  v2 = sub_100004A84(&qword_1000291F8, &qword_10001D498);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100017EF0(a1, &v6 - v4);
  return EnvironmentValues.symbolRenderingMode.setter();
}

uint64_t sub_100017E88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004A84(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100017EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004A84(&qword_1000291F8, &qword_10001D498);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100017F64()
{
  result = qword_100029200;
  if (!qword_100029200)
  {
    sub_100004C24(&qword_1000291F0, &qword_10001D490);
    sub_10001801C();
    sub_10000A0B0(&qword_100029250, &qword_100029258, qword_10001D4B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029200);
  }

  return result;
}

unint64_t sub_10001801C()
{
  result = qword_100029208;
  if (!qword_100029208)
  {
    sub_100004C24(&qword_1000291C0, &qword_10001D410);
    sub_1000180A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029208);
  }

  return result;
}

unint64_t sub_1000180A8()
{
  result = qword_100029210;
  if (!qword_100029210)
  {
    sub_100004C24(&qword_1000291B8, &qword_10001D408);
    sub_100018160();
    sub_10000A0B0(&qword_100029240, &qword_100029248, &qword_10001D4A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029210);
  }

  return result;
}

unint64_t sub_100018160()
{
  result = qword_100029218;
  if (!qword_100029218)
  {
    sub_100004C24(&qword_1000291E0, &qword_10001D450);
    sub_100018218();
    sub_10000A0B0(&qword_100029238, &qword_1000291E8, &qword_10001D458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029218);
  }

  return result;
}

unint64_t sub_100018218()
{
  result = qword_100029220;
  if (!qword_100029220)
  {
    sub_100004C24(&qword_1000291D8, &qword_10001D448);
    type metadata accessor for ButtonStyleConfiguration.Label();
    type metadata accessor for BorderlessButtonStyle();
    sub_100017D80(&qword_1000291C8, &type metadata accessor for ButtonStyleConfiguration.Label);
    sub_100017D80(&qword_1000291D0, &type metadata accessor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_10000A0B0(&qword_100029228, &qword_100029230, &qword_10001D4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029220);
  }

  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t View.buttonStyle<A>(_:)()
{
  return View.buttonStyle<A>(_:)();
}

{
  return View.buttonStyle<A>(_:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}
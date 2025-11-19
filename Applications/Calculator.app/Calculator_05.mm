unint64_t _s10Calculator0A19ButtonRepresentableO8rawValueACSgSi_tcfC_0(unint64_t result)
{
  if (result >= 0x5E)
  {
    return 94;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CalculatorButtonRepresentable(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xA3)
  {
    goto LABEL_17;
  }

  if (a2 + 93 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 93) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 93;
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

      return (*a1 | (v4 << 8)) - 93;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 93;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x5E;
  v8 = v6 - 94;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10007E2C4(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_100156320, &unk_10010F210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_10007E32C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10007E340(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_10007E388(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_10007E3F8@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  if (v1[2])
  {
    v5 = *(v1 + 1);

    LocalizedStringResource.init(stringLiteral:)();
    Text.init(_:)();
  }

  else
  {
    v11 = *v1;
    sub_10006345C();

    Text.init<A>(_:)();
  }

  _ConditionalContent<>.init(storage:)();
  v6 = *(v1 + 3);
  KeyPath = swift_getKeyPath();
  v8 = *(v1 + 2);
  v9 = swift_getKeyPath();

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 120) = v14;
  *(a1 + 136) = v15;
  *(a1 + 152) = v16;
  *(a1 + 168) = v17;
  result = *&v11;
  *(a1 + 72) = v11;
  *(a1 + 32) = v13;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = v6;
  *(a1 + 56) = v9;
  *(a1 + 64) = v8;
  *(a1 + 88) = v12;
  *(a1 + 104) = v13;
  return result;
}

unint64_t sub_10007E604()
{
  result = qword_100156328;
  if (!qword_100156328)
  {
    sub_10003AECC(&qword_100156330, &qword_10010F328);
    sub_10007E690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156328);
  }

  return result;
}

unint64_t sub_10007E690()
{
  result = qword_100156338;
  if (!qword_100156338)
  {
    sub_10003AECC(&qword_100156340, &qword_10010F330);
    sub_10007E734();
    sub_10007E85C(&qword_100156378, &qword_100156380, &qword_100112E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156338);
  }

  return result;
}

unint64_t sub_10007E734()
{
  result = qword_100156348;
  if (!qword_100156348)
  {
    sub_10003AECC(&qword_100156350, &qword_10010F338);
    sub_10007E7D8();
    sub_10007E85C(&qword_100155490, &qword_100155498, &unk_10010F350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156348);
  }

  return result;
}

unint64_t sub_10007E7D8()
{
  result = qword_100156358;
  if (!qword_100156358)
  {
    sub_10003AECC(&qword_100156360, &qword_10010F340);
    sub_10000A948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156358);
  }

  return result;
}

uint64_t sub_10007E85C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10003AECC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10007E8B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10007E8F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10007E970()
{
  LocalizedStringKey.init(stringLiteral:)();
  v6 = Text.init(_:tableName:bundle:comment:)();
  v2 = v1;
  v4 = v3;
  v7 = *v0;
  v8 = *(v0 + 16);
  sub_10003AE84(&qword_100155868, &qword_10010DB60);
  Binding.projectedValue.getter();
  sub_10003AE84(&qword_100156388, &qword_10010F418);
  sub_10003AE84(&qword_100156390, &qword_10010F420);
  sub_100004880(&qword_100156398, &qword_100156388, &qword_10010F418);
  sub_100004880(&qword_1001563A0, &qword_100156390, &qword_10010F420);
  View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:message:)();

  sub_10000C6AC(v6, v2, v4 & 1);
}

uint64_t sub_10007EB90@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v3 = sub_10003AE84(&qword_1001563A8, &qword_10010F428);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v44 = sub_10003AE84(&qword_1001563B0, &unk_10010F430);
  v42 = *(v44 - 8);
  v5 = *(v42 + 64);
  v6 = __chkstk_darwin(v44);
  v43 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v47 = &v40 - v8;
  v9 = sub_10003AE84(&qword_100155898, &unk_10010DB80);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v40 - v11;
  v13 = sub_10003AE84(&qword_1001558A0, &qword_10010F440);
  v41 = *(v13 - 8);
  v14 = v41;
  v15 = *(v41 + 64);
  v16 = __chkstk_darwin(v13);
  v46 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v40 - v18;
  static ButtonRole.destructive.getter();
  v20 = type metadata accessor for ButtonRole();
  (*(*(v20 - 8) + 56))(v12, 0, 1, v20);
  v21 = a1[1];
  v51 = *a1;
  v22 = a1[6];
  v23 = swift_allocObject();
  v24 = *(a1 + 1);
  *(v23 + 16) = *a1;
  *(v23 + 32) = v24;
  *(v23 + 48) = *(a1 + 2);
  *(v23 + 64) = a1[6];
  v49 = a1;
  sub_100015064(&v51, v50);

  v25 = v19;
  v40 = v19;
  Button.init(role:action:label:)();
  Solarium.init()();
  static ViewInputPredicate.! prefix(_:)();
  v48 = a1;
  v50[0] = &type metadata for Solarium;
  v50[1] = &protocol witness table for Solarium;
  swift_getOpaqueTypeConformance2();
  sub_100004880(&qword_1001563B8, &qword_1001558A0, &qword_10010F440);
  v26 = v47;
  v27 = v13;
  StaticIf<>.init<>(_:then:)();
  v28 = *(v14 + 16);
  v29 = v46;
  v28(v46, v25, v13);
  v31 = v42;
  v30 = v43;
  v32 = *(v42 + 16);
  v33 = v26;
  v34 = v44;
  v32(v43, v33, v44);
  v35 = v45;
  v28(v45, v29, v27);
  v36 = sub_10003AE84(&qword_1001563C0, &qword_10010F448);
  v32(&v35[*(v36 + 48)], v30, v34);
  v37 = *(v31 + 8);
  v37(v47, v34);
  v38 = *(v41 + 8);
  v38(v40, v27);
  v37(v30, v34);
  return (v38)(v46, v27);
}

uint64_t sub_10007F078(uint64_t *a1)
{
  v2 = sub_10003AE84(&qword_100155898, &unk_10010DB80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v12[-v4];
  static ButtonRole.cancel.getter();
  v6 = type metadata accessor for ButtonRole();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = a1[1];
  v15 = *a1;
  v8 = a1[6];
  v9 = swift_allocObject();
  v10 = *(a1 + 1);
  *(v9 + 16) = *a1;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(a1 + 2);
  *(v9 + 64) = a1[6];
  v13 = a1;
  sub_100015064(&v15, v14);

  return Button.init(role:action:label:)();
}

uint64_t sub_10007F1F0(__int128 *a1)
{
  v2 = *(a1 + 6);
  (*(a1 + 5))();
  v4 = *a1;
  v5 = *(a1 + 16);
  sub_10003AE84(&qword_100155868, &qword_10010DB60);
  return Binding.wrappedValue.setter();
}

uint64_t sub_10007F25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32);
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_10007F2F8@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10007F368()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  return sub_10007E970();
}

uint64_t sub_10007F3B4@<X0>(uint64_t a1@<X8>)
{
  result = sub_100078368(*(*(v1 + 16) + 24), *(*(v1 + 16) + 32));
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_10007F40C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  sub_10003AE84(&qword_100155868, &qword_10010DB60);
  return Binding.wrappedValue.setter();
}

uint64_t sub_10007F470()
{
  result = static Color.secondary.getter();
  qword_100160B60 = result;
  return result;
}

uint64_t sub_10007F4E8()
{
  result = static Color.primary.getter();
  qword_100160B78 = result;
  return result;
}

uint64_t sub_10007F534()
{
  result = static Color.white.getter();
  qword_100160B88 = result;
  return result;
}

uint64_t sub_10007F580()
{
  result = static Color.white.getter();
  qword_100160B98 = result;
  return result;
}

uint64_t sub_10007F5F8()
{
  result = static Color.secondary.getter();
  qword_100160BB0 = result;
  return result;
}

uint64_t sub_10007F618()
{
  result = static Color.secondary.getter();
  qword_100160BB8 = result;
  return result;
}

uint64_t sub_10007F638()
{
  result = static Color.primary.getter();
  qword_100160BC0 = result;
  return result;
}

uint64_t sub_10007F658()
{
  result = static Color.secondary.getter();
  qword_100160BC8 = result;
  return result;
}

uint64_t sub_10007F678()
{
  result = static Color.red.getter();
  qword_100160BD0 = result;
  return result;
}

uint64_t sub_10007F6C4()
{
  result = static Color.secondary.getter();
  qword_100160BE0 = result;
  return result;
}

uint64_t sub_10007F70C()
{
  result = static Color.gray.getter();
  qword_100160BF8 = result;
  return result;
}

uint64_t sub_10007F76C(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = Color.init(uiColor:)();
  *a3 = result;
  return result;
}

uint64_t sub_10007F7E0()
{
  result = static Color.clear.getter();
  qword_100160C18 = result;
  return result;
}

uint64_t sub_10007F87C()
{
  if (qword_100154528 != -1)
  {
    swift_once();
  }

  v1 = sub_10007F8FC(v0, 20.0, 20.0);

  qword_100160C50 = v1;
  return result;
}

CGColorSpace *sub_10007F8FC(uint64_t a1, double a2, double a3)
{
  v6 = type metadata accessor for Color.RGBColorSpace();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007FBD8();

  v11 = UIColor.init(_:)();
  v12 = [v11 CGColor];

  result = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
  if (result)
  {
    v14 = result;
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(result, kCGRenderingIntentDefault, v12, 0);

    if (CopyByMatchingToColorSpace)
    {
      v16 = CGColorRef.components.getter();
      if (v16)
      {
        if (*(v16 + 16) >= 3uLL)
        {
          v17 = fmin(a2 / 255.0 + *(v16 + 32), 1.0);
          v18 = fmin(a3 / 255.0 + *(v16 + 40), 1.0);
          v19 = *(v16 + 48);

          (*(v7 + 104))(v10, enum case for Color.RGBColorSpace.sRGB(_:), v6);
          a1 = Color.init(_:red:green:blue:opacity:)();

          return a1;
        }
      }

      else
      {
      }
    }

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10007FB84(uint64_t a1, uint64_t *a2)
{
  static Color.white.getter();
  v3 = Color.opacity(_:)();

  *a2 = v3;
  return result;
}

unint64_t sub_10007FBD8()
{
  result = qword_1001563C8;
  if (!qword_1001563C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001563C8);
  }

  return result;
}

uint64_t sub_10007FC24()
{
  sub_100010DA8();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t EnvironmentValues.isModeMenuPresented.getter()
{
  sub_100010DA8();
  EnvironmentValues.subscript.getter();
  sub_10003AE84(&qword_1001563E8, &qword_10010F470);
  Binding.wrappedValue.getter();

  return v1;
}

uint64_t storeEnumTagSinglePayload for HistoryPresentationStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10007FE04@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_100081D94(&qword_100154838, type metadata accessor for CalculatorMDMRestrictionsManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

id sub_10007FF40@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_100007314((a1 + 1), (a2 + 1));
  *a2 = v4;

  return v4;
}

id sub_10007FF90@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    sub_100007314(*(v3 + 56) + 32 * v13, &v19);
    *&v22[0] = v14;
    sub_100008F60(&v19, (v22 + 8));
    result = v14;
    v16 = *&v22[0];
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v18 = v1[5];
      v17 = v1[6];
      v19 = v16;
      v20 = *(v22 + 8);
      v21 = *(&v22[1] + 8);
      v18(&v19);
      return sub_1000035CC(&v19, &qword_1001564A0, &qword_10010F560);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        memset(v22, 0, 40);
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_1000800E0()
{
  if (!os_variant_has_internal_diagnostics())
  {
    return &_swiftEmptyArrayStorage;
  }

  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v0 = qword_100160D68;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringForKey:v1];

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10003AE84(&qword_100156490, &qword_10010F550);
  v3 = *(type metadata accessor for Locale() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10010BDE0;
  Locale.init(identifier:)();
  return v6;
}

uint64_t sub_100080254(uint64_t a1)
{
  v25[1] = a1;
  v1 = type metadata accessor for UUID();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = type metadata accessor for CalculateExpression.Base();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003AE84(&qword_100156488, &qword_10010F548);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010DBE0;
  v9 = CalculateKeyLocales;
  *(inited + 32) = CalculateKeyLocales;

  v10 = v9;
  v11 = sub_1000800E0();
  v12 = sub_10003AE84(&qword_100156498, &qword_10010F558);
  *(inited + 40) = v11;
  v13 = CalculateKeyAllowPartialExpressions;
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  v14 = objc_allocWithZone(NSNumber);
  v15 = v13;
  v16 = [v14 initWithBool:1];
  *(inited + 104) = sub_1000050A0(0, &qword_100155280, NSNumber_ptr);
  *(inited + 80) = v16;
  sub_100008E44(inited);
  swift_setDeallocating();
  sub_10003AE84(&qword_100156018, &qword_10010E3A0);
  swift_arrayDestroy();
  (*(v4 + 104))(v7, enum case for CalculateExpression.Base.base10(_:), v3);
  UUID.init()();
  v17 = type metadata accessor for CalculateExpression();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  CalculateExpression.init(_:options:base:id:)();
  sub_10003AE84(&qword_100156490, &qword_10010F550);
  v20 = *(type metadata accessor for Locale() - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  *(swift_allocObject() + 16) = xmmword_10010BDE0;
  Locale.init(identifier:)();
  CalculateExpression.locales.setter();
  v23 = CalculateExpression.expression.getter();

  return v23;
}

unint64_t sub_100080588(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v44 = a1;
  v45 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v46 = v8;
  v47 = 0;
  v48 = v11 & v9;
  v49 = a2;
  v50 = a3;

  sub_10007FF90(&v42);
  v12 = v42;
  if (!v42)
  {
    goto LABEL_25;
  }

  sub_100008F60(v43, v41);
  v13 = *a5;
  result = sub_100075214(v12);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    sub_10007574C(v19, a4 & 1);
    v21 = *a5;
    result = sub_100075214(v12);
    if ((v20 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    type metadata accessor for CalculateKey(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_1000760F8();
    result = v26;
    v23 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v20)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    sub_100003F80(v25);
    sub_100008F60(v41, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  *(v23[6] + 8 * result) = v12;
  result = sub_100008F60(v41, (v23[7] + 32 * result));
  v27 = v23[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v18)
  {
    v23[2] = v28;
LABEL_15:
    sub_10007FF90(&v42);
    v12 = v42;
    if (v42)
    {
      v20 = 1;
      do
      {
        sub_100008F60(v43, v41);
        v31 = *a5;
        result = sub_100075214(v12);
        v33 = v31[2];
        v34 = (v32 & 1) == 0;
        v18 = __OFADD__(v33, v34);
        v35 = v33 + v34;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v32;
        if (v31[3] < v35)
        {
          sub_10007574C(v35, 1);
          v36 = *a5;
          result = sub_100075214(v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v29 = result;

          v30 = (v38[7] + 32 * v29);
          sub_100003F80(v30);
          sub_100008F60(v41, v30);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          *(v38[6] + 8 * result) = v12;
          result = sub_100008F60(v41, (v38[7] + 32 * result));
          v39 = v38[2];
          v18 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v38[2] = v40;
        }

        sub_10007FF90(&v42);
        v12 = v42;
      }

      while (v42);
    }

LABEL_25:
    sub_10004B164();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100080868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a2;
  v35 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for CalculateExpression.Base();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003AE84(&qword_100156488, &qword_10010F548);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010F520;
  v12 = CalculateKeyLocales;
  *(inited + 32) = CalculateKeyLocales;
  sub_10003AE84(&qword_100156490, &qword_10010F550);
  v13 = *(type metadata accessor for Locale() - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10010BDE0;
  v17 = v12;
  Locale.init(identifier:)();
  v18 = sub_10003AE84(&qword_100156498, &qword_10010F558);
  *(inited + 40) = v16;
  v19 = CalculateKeyAllowPartialExpressions;
  *(inited + 64) = v18;
  *(inited + 72) = v19;
  v20 = objc_allocWithZone(NSNumber);
  v21 = v19;
  v22 = [v20 initWithBool:{1, v35, v36}];
  v23 = sub_1000050A0(0, &qword_100155280, NSNumber_ptr);
  *(inited + 80) = v22;
  v24 = CalculateKeyScientificNotationFormat;
  *(inited + 104) = v23;
  *(inited + 112) = v24;
  v25 = objc_allocWithZone(NSNumber);
  v26 = v24;
  v27 = [v25 initWithUnsignedInteger:0];
  *(inited + 144) = v23;
  *(inited + 120) = v27;
  v28 = sub_100008E44(inited);
  swift_setDeallocating();
  sub_10003AE84(&qword_100156018, &qword_10010E3A0);
  swift_arrayDestroy();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = v28;
  sub_100080588(a3, sub_10007FF40, 0, isUniquelyReferenced_nonNull_native, &v37);

  (*(v7 + 104))(v10, enum case for CalculateExpression.Base.base10(_:), v6);

  UUID.init()();
  v30 = type metadata accessor for CalculateExpression();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = CalculateExpression.init(_:options:base:id:)();
  sub_1000800E0();
  CalculateExpression.locales.setter();
  return v33;
}

void sub_100080C2C(uint64_t a1, uint64_t a2, uint64_t a3, NSString a4)
{
  if (a2)
  {
    sub_100080254(a1);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v7 = qword_100160D68;
  if (v6)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v9 = String._bridgeToObjectiveC()();
  [v7 setObject:v8 forKey:v9];
  swift_unknownObjectRelease();

  if (a4)
  {
    a4 = String._bridgeToObjectiveC()();
  }

  v10 = String._bridgeToObjectiveC()();
  [v7 setObject:a4 forKey:v10];
  swift_unknownObjectRelease();
}

void sub_100080D98()
{
  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v0 = qword_100160D68;
  v1 = String._bridgeToObjectiveC()();
  [v0 setURL:0 forKey:v1];

  v2 = String._bridgeToObjectiveC()();
  [v0 setURL:0 forKey:v2];
}

void sub_100080E84(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_100155078, &qword_10010DBA0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v44 - v8;
  __chkstk_darwin(v7);
  v11 = &v44 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v44 - v18;
  sub_100081D24(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000035CC(v11, &qword_100155078, &qword_10010DBA0);
    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000048C8(v20, qword_100160D38);
    sub_100081D24(a1, v9);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v47 = v24;
      *v23 = 136315138;
      sub_100081D24(v9, v6);
      v25 = String.init<A>(describing:)();
      v27 = v26;
      sub_1000035CC(v9, &qword_100155078, &qword_10010DBA0);
      v28 = sub_100006E5C(v25, v27, &v47);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Can't open URL: %s", v23, 0xCu);
      sub_100003F80(v24);
    }

    else
    {

      sub_1000035CC(v9, &qword_100155078, &qword_10010DBA0);
    }
  }

  else
  {
    (*(v13 + 32))(v19, v11, v12);
    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000048C8(v29, qword_100160D38);
    (*(v13 + 16))(v17, v19, v12);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v45 = v32;
      v46 = swift_slowAlloc();
      v47 = v46;
      *v32 = 136315138;
      sub_100081D94(&qword_100155268, &type metadata accessor for URL);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      v36 = *(v13 + 8);
      v36(v17, v12);
      v37 = sub_100006E5C(v33, v35, &v47);

      v38 = v45;
      *(v45 + 1) = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "opening URL: %s", v38, 0xCu);
      sub_100003F80(v46);
    }

    else
    {

      v36 = *(v13 + 8);
      v36(v17, v12);
    }

    v39 = [objc_opt_self() sharedApplication];
    URL._bridgeToObjectiveC()(v40);
    v42 = v41;
    sub_100077074(&_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_100081D94(&qword_100154840, type metadata accessor for OpenExternalURLOptionsKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v39 openURL:v42 options:isa completionHandler:0];

    v36(v19, v12);
  }
}

uint64_t sub_10008147C()
{
  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v0 = qword_100160D68;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      v3 = sub_100008E44(&_swiftEmptyArrayStorage);
      v4 = sub_100080868(v6, v7, v3);

      return v4;
    }
  }

  else
  {
    sub_1000035CC(v10, &qword_1001551B8, &qword_10010E3E0);
  }

  return 0;
}

uint64_t sub_1000815E4()
{
  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v0 = qword_100160D68;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    if (swift_dynamicCast())
    {
      if (qword_1001546A0 != -1)
      {
        swift_once();
      }

      v3 = qword_100160D00;
      swift_getKeyPath();
      *&v12[0] = v3;
      sub_100081D94(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v4 = *(v3 + 16);
      v5 = String._bridgeToObjectiveC()();

      v6 = [v4 findUnitWithName:v5];

      if (v6)
      {
        v7 = [v6 shortName];

        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        return v8;
      }
    }
  }

  else
  {
    sub_1000035CC(v12, &qword_1001551B8, &qword_10010E3E0);
  }

  return 0;
}

void sub_100081850()
{
  v41 = [objc_opt_self() sharedApplication];
  v0 = [v41 shortcutItems];
  if (!v0)
  {
    [v41 setShortcutItems:0];
    isa = v41;
LABEL_72:

    return;
  }

  v1 = v0;
  v39 = sub_1000050A0(0, &qword_1001564A8, UIApplicationShortcutItem_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v42 = v2;
  v40 = v2 >> 62;
  v3 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
    goto LABEL_82;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      if (v40)
      {
        goto LABEL_65;
      }

      v5 = *(v3 + 16);
LABEL_66:
      if (v2 >> 62)
      {
        v37 = _CocoaArrayWrapper.endIndex.getter();
        if (v37 >= v5)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v37 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v37 >= v5)
        {
LABEL_68:
          sub_1000AE2DC(v5, v37);
          if (v42)
          {
            v38.super.isa = Array._bridgeToObjectiveC()().super.isa;
          }

          else
          {
            v38.super.isa = 0;
          }

          [v41 setShortcutItems:{v38.super.isa, v39}];

          isa = v38.super.isa;
          goto LABEL_72;
        }
      }

      __break(1u);
      goto LABEL_85;
    }

    if ((v2 & 0xC000000000000001) == 0)
    {
      if (v5 < *(v3 + 16))
      {
        v6 = *(v2 + 8 * v5 + 32);
        goto LABEL_9;
      }

      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      v4 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_4;
    }

    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
    v7 = v6;
    v8 = [v6 type];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (v9 == 0x7473614C79706F63 && v11 == 0xEE00746C75736552)
    {
      break;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      goto LABEL_22;
    }

    v14 = __OFADD__(v5++, 1);
    if (v14)
    {
      goto LABEL_76;
    }
  }

LABEL_22:
  v16 = v5 + 1;
  if (!__OFADD__(v5, 1))
  {
    if (v40)
    {
      if (v16 == _CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_66;
      }
    }

    else if (v16 == *(v3 + 16))
    {
      goto LABEL_66;
    }

    v3 = v5 + 5;
    while (1)
    {
      v17 = v3 - 4;
      if ((v2 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_77;
        }

        if (v17 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_78;
        }

        v18 = *(v2 + 8 * v3);
      }

      v19 = v18;
      v20 = [v18 type];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      if (v21 == 0x7473614C79706F63 && v23 == 0xEE00746C75736552)
      {
      }

      else
      {
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v25 & 1) == 0)
        {
          if (v17 != v5)
          {
            if ((v2 & 0xC000000000000001) != 0)
            {
              v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v5 < 0)
              {
                goto LABEL_86;
              }

              v28 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v5 >= v28)
              {
                goto LABEL_87;
              }

              if (v17 >= v28)
              {
                goto LABEL_88;
              }

              v29 = *(v2 + 8 * v3);
              v26 = *(v2 + 8 * v5 + 32);
              v27 = v29;
            }

            v30 = v27;
            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
            {
              v2 = sub_1000AE630(v2);
              v31 = (v2 >> 62) & 1;
            }

            else
            {
              LODWORD(v31) = 0;
            }

            v32 = v2 & 0xFFFFFFFFFFFFFF8;
            v33 = *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 0x20);
            *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 0x20) = v30;

            if ((v2 & 0x8000000000000000) != 0 || v31)
            {
              v2 = sub_1000AE630(v2);
              v32 = v2 & 0xFFFFFFFFFFFFFF8;
              if ((v17 & 0x8000000000000000) != 0)
              {
LABEL_64:
                __break(1u);
LABEL_65:
                v5 = _CocoaArrayWrapper.endIndex.getter();
                goto LABEL_66;
              }
            }

            else if ((v17 & 0x8000000000000000) != 0)
            {
              goto LABEL_64;
            }

            if (v17 >= *(v32 + 16))
            {
              goto LABEL_81;
            }

            v34 = *(v32 + 8 * v3);
            *(v32 + 8 * v3) = v26;

            v42 = v2;
          }

          v14 = __OFADD__(v5++, 1);
          if (v14)
          {
            goto LABEL_80;
          }
        }
      }

      v35 = v3 - 3;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_79;
      }

      if (v2 >> 62)
      {
        v36 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v36 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v3;
      if (v35 == v36)
      {
        goto LABEL_66;
      }
    }
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
}

uint64_t sub_100081D24(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100155078, &qword_10010DBA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100081D94(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100081DE0()
{
  result = qword_1001564B0;
  if (!qword_1001564B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001564B0);
  }

  return result;
}

void (*sub_100081E38(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_100081EC0;
}

void sub_100081EC0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

id sub_100082044()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000827A4()
{
  result = qword_1001564A8;
  if (!qword_1001564A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001564A8);
  }

  return result;
}

uint64_t type metadata accessor for CalculatorHistoryListView()
{
  result = qword_100156638;
  if (!qword_100156638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100082864()
{
  sub_100013E74(319, &qword_100156648, type metadata accessor for CalculatorViewModel);
  if (v0 <= 0x3F)
  {
    sub_100013E74(319, &qword_100156650, type metadata accessor for CalculatorUnitConversionViewModelWrapper);
    if (v1 <= 0x3F)
    {
      sub_100013E74(319, &qword_1001557F8, type metadata accessor for CalculatorHistoryViewModel);
      if (v2 <= 0x3F)
      {
        sub_100013E74(319, &unk_100155800, type metadata accessor for CalculatorToolbarViewModel);
        if (v3 <= 0x3F)
        {
          sub_1000829C0();
          if (v4 <= 0x3F)
          {
            sub_100010420();
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

void sub_1000829C0()
{
  if (!qword_100156658)
  {
    sub_10003AECC(&qword_100156660, &qword_10010F7C0);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100156658);
    }
  }
}

uint64_t sub_100082A40(uint64_t a1)
{
  v26 = *(a1 + 16);
  if (!v26)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = 0;
  v25 = a1 + 32;
  v2 = _swiftEmptyArrayStorage;
  while (1)
  {
    v4 = *(v25 + 24 * v1 + 16);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      if (v4 < 0)
      {
        v23 = *(v25 + 24 * v1 + 16);
      }

      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
      v9 = v24 + v6;
      if (__OFADD__(v24, v6))
      {
LABEL_36:
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
        goto LABEL_36;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v29 = v6;
    if (result)
    {
      if (v7)
      {
        goto LABEL_16;
      }

      v10 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v7)
      {
LABEL_16:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_17;
      }

      v10 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = *(v10 + 16);
LABEL_17:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v12 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v13 >> 1) - v12) < v29)
    {
      goto LABEL_40;
    }

    v27 = v2;
    v15 = v10 + 8 * v12 + 32;
    if (v5)
    {
      if (v14 < 1)
      {
        goto LABEL_42;
      }

      sub_100004880(&qword_100154E30, &qword_100154E28, &unk_10010C590);
      for (i = 0; i != v14; ++i)
      {
        sub_10003AE84(&qword_100154E28, &unk_10010C590);
        v17 = sub_1000ADEB4(v28, i, v4);
        v19 = *v18;

        (v17)(v28, 0);
        *(v15 + 8 * i) = v19;
      }
    }

    else
    {
      type metadata accessor for SchemaV1.HistoryRecord();
      swift_arrayInitWithCopy();
    }

    v2 = v27;
    if (v29 >= 1)
    {
      v20 = *(v10 + 16);
      v21 = __OFADD__(v20, v29);
      v22 = v20 + v29;
      if (v21)
      {
        goto LABEL_41;
      }

      *(v10 + 16) = v22;
    }

LABEL_4:
    if (++v1 == v26)
    {
      return v2;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v14 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v29 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_100082D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100082EC4(a2);
  v4 = a2 + *(sub_10003AE84(&qword_1001566C0, &qword_10010F828) + 36);
  v5 = *(type metadata accessor for CalculatorHistoryScrollPPTTests() + 28);
  v6 = type metadata accessor for ScrollViewProxy();
  (*(*(v6 - 8) + 16))(v4 + v5, a1, v6);
  type metadata accessor for CalculatorLayout(0);
  sub_10000F2E8(&qword_100154958, type metadata accessor for CalculatorLayout);
  *v4 = Environment.init<A>(_:)();
  *(v4 + 8) = v7 & 1;
  type metadata accessor for CalculatorHistoryViewModel(0);
  sub_10000F2E8(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel);
  *(v4 + 16) = Environment.init<A>(_:)();
  *(v4 + 24) = v8 & 1;
  type metadata accessor for CalculatorToolbarViewModel();
  sub_10000F2E8(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel);
  result = Environment.init<A>(_:)();
  *(v4 + 32) = result;
  *(v4 + 40) = v10 & 1;
  return result;
}

uint64_t sub_100082EC4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  v3 = type metadata accessor for InsetListStyle();
  v74 = *(v3 - 8);
  v75 = v3;
  v4 = *(v74 + 64);
  __chkstk_darwin(v3);
  v73 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CalculatorHistoryListView();
  v68 = *(v6 - 8);
  v7 = *(v68 + 64);
  __chkstk_darwin(v6 - 8);
  v62 = v8;
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10003AE84(&qword_1001566C8, &qword_10010F830);
  v80 = *(v10 - 8);
  v11 = *(v80 + 64);
  __chkstk_darwin(v10);
  v79 = &v57 - v12;
  v13 = sub_10003AE84(&qword_1001566D0, &qword_10010F838);
  v71 = *(v13 - 8);
  v72 = v13;
  v14 = *(v71 + 64);
  __chkstk_darwin(v13);
  v70 = &v57 - v15;
  v76 = sub_10003AE84(&qword_1001566D8, &qword_10010F840);
  v16 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v77 = &v57 - v17;
  v18 = type metadata accessor for EnvironmentValues();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 40) == 1)
  {
    v83 = *(v2 + 32);
  }

  else
  {
    v23 = *(v2 + 32);

    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v19 + 8))(v22, v18);
  }

  v25 = swift_allocBox();
  v27 = v26;
  v66 = v26;
  type metadata accessor for CalculatorHistoryViewModel(0);
  v69 = sub_10000F2E8(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel);
  Bindable<A>.init(wrappedValue:)();
  v28 = v80;
  v29 = *(v80 + 16);
  v65 = v80 + 16;
  v67 = v29;
  v30 = v79;
  v29(v79, v27, v10);
  Bindable.wrappedValue.getter();
  v31 = *(v28 + 8);
  v80 = v28 + 8;
  v64 = v31;
  v31(v30, v10);
  v32 = *(v83 + 16);

  swift_getKeyPath();
  v83 = v32;
  sub_10000F2E8(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v58 = *(v32 + 48);

  type metadata accessor for MainActor();

  v33 = static MainActor.shared.getter();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = &protocol witness table for MainActor;
  v34[4] = v25;
  sub_10008B4C8(v2, v9);
  v63 = v25;

  v35 = static MainActor.shared.getter();
  v61 = v10;
  v36 = *(v68 + 80);
  v60 = v2;
  v37 = v62;
  v38 = swift_allocObject();
  v38[2] = v35;
  v38[3] = &protocol witness table for MainActor;
  v38[4] = v25;
  sub_10008B52C(v9, v38 + ((v36 + 40) & ~v36));
  sub_10003AE84(&qword_1001566E0, &qword_10010F870);
  Binding.init(get:set:)();
  sub_10008B4C8(v2, v9);
  v62 = ((v36 + 16) & ~v36) + v37;
  v68 = (v36 + 16) & ~v36;
  v39 = swift_allocObject();
  v59 = v9;
  v40 = sub_10008B52C(v9, v39 + ((v36 + 16) & ~v36));
  v81 = v58;
  __chkstk_darwin(v40);
  *(&v57 - 4) = &v81;
  *(&v57 - 3) = sub_10008B694;
  sub_10003AE84(&qword_1001566E8, &qword_10010F878);
  v56 = sub_10008C51C();
  v41 = v70;
  List.init(selection:content:)();

  v42 = v73;
  InsetListStyle.init()();
  sub_100004880(&qword_1001567B0, &qword_1001566D0, &qword_10010F838);
  v43 = v77;
  v44 = v72;
  v45 = v75;
  View.listStyle<A>(_:)();
  (*(v74 + 8))(v42, v45);
  (*(v71 + 8))(v41, v44);
  v46 = static Color.gray.getter();
  KeyPath = swift_getKeyPath();
  v48 = (v43 + *(v76 + 36));
  *v48 = KeyPath;
  v48[1] = v46;
  v49 = v79;
  v50 = v61;
  v67(v79, v66, v61);
  Bindable.wrappedValue.getter();
  v64(v49, v50);
  v51 = v82;
  swift_getKeyPath();
  v82 = v51;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v49) = *(v51 + 32);

  LOBYTE(v82) = v49;
  v52 = v59;
  sub_10008B4C8(v60, v59);
  v53 = (v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  sub_10008B52C(v52, v54 + v68);
  *(v54 + v53) = v63;
  sub_10008CC04();

  View.onChange<A>(of:initial:_:)();

  sub_1000035CC(v43, &qword_1001566D8, &qword_10010F840);
}

uint64_t sub_10008387C@<X0>(void *a1@<X8>)
{
  v2 = sub_10003AE84(&qword_1001566C8, &qword_10010F830);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - v5;
  v7 = swift_projectBox();
  (*(v3 + 16))(v6, v7, v2);
  Bindable.wrappedValue.getter();
  (*(v3 + 8))(v6, v2);
  v8 = v12;
  swift_getKeyPath();
  v12 = v8;
  sub_10000F2E8(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v9 = *(v8 + 24);

  *a1 = v9;
  return result;
}

uint64_t sub_100083A24(uint64_t *a1)
{
  v2 = sub_10003AE84(&qword_1001566C8, &qword_10010F830);
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v15 - v5;
  v7 = *a1;
  v8 = swift_projectBox();
  v9 = v3[2];
  v9(v6, v8, v2);
  Bindable.wrappedValue.getter();
  v10 = v3[1];
  v10(v6, v2);

  sub_10004CDFC(v11);

  if (*(v7 + 16))
  {
    v9(v6, v8, v2);
    Bindable.wrappedValue.getter();
    v10(v6, v2);
    v13 = v16;
    swift_getKeyPath();
    v16 = v13;
    sub_10000F2E8(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v14 = *(v13 + 40);

    if (v14)
    {
      sub_100083C44(v14);
    }
  }

  return result;
}

uint64_t sub_100083C44(uint64_t a1)
{
  v67 = a1;
  v2 = type metadata accessor for AccessibilityNotification.ScreenChanged();
  v64 = *(v2 - 8);
  v65 = v2;
  v3 = *(v64 + 64);
  __chkstk_darwin(v2);
  v63 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EnvironmentValues();
  v70 = *(v5 - 8);
  v71 = v5;
  v6 = *(v70 + 64);
  __chkstk_darwin(v5);
  v69 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EditMode();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v66 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10003AE84(&qword_1001569C8, &qword_10010FC70);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v62 - v14;
  v16 = sub_10003AE84(&qword_100156660, &qword_10010F7C0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v62 - v18;
  v20 = sub_10003AE84(&qword_1001569D0, &qword_10010FC78);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v27 = &v62 - v26;
  __chkstk_darwin(v25);
  v29 = &v62 - v28;
  v30 = *(type metadata accessor for CalculatorHistoryListView() + 32);
  v68 = v1;
  sub_1000E7544(v19);
  v31 = sub_10003AE84(&qword_1001566B8, &qword_10010F820);
  if ((*(*(v31 - 8) + 48))(v19, 1, v31) == 1)
  {
    sub_1000035CC(v19, &qword_100156660, &qword_10010F7C0);
    v32 = 1;
  }

  else
  {
    Binding.wrappedValue.getter();
    sub_1000035CC(v19, &qword_1001566B8, &qword_10010F820);
    v32 = 0;
  }

  v33 = *(v9 + 56);
  v33(v29, v32, 1, v8);
  (*(v9 + 104))(v27, enum case for EditMode.active(_:), v8);
  v33(v27, 0, 1, v8);
  v34 = *(v12 + 48);
  sub_100008E68(v29, v15, &qword_1001569D0, &qword_10010FC78);
  sub_100008E68(v27, &v15[v34], &qword_1001569D0, &qword_10010FC78);
  v35 = *(v9 + 48);
  if (v35(v15, 1, v8) == 1)
  {
    sub_1000035CC(v27, &qword_1001569D0, &qword_10010FC78);
    sub_1000035CC(v29, &qword_1001569D0, &qword_10010FC78);
    if (v35(&v15[v34], 1, v8) == 1)
    {
      return sub_1000035CC(v15, &qword_1001569D0, &qword_10010FC78);
    }
  }

  else
  {
    sub_100008E68(v15, v24, &qword_1001569D0, &qword_10010FC78);
    if (v35(&v15[v34], 1, v8) != 1)
    {
      v59 = v66;
      (*(v9 + 32))(v66, &v15[v34], v8);
      sub_10000F2E8(&qword_1001569D8, &type metadata accessor for EditMode);
      v60 = dispatch thunk of static Equatable.== infix(_:_:)();
      v61 = *(v9 + 8);
      v61(v59, v8);
      sub_1000035CC(v27, &qword_1001569D0, &qword_10010FC78);
      sub_1000035CC(v29, &qword_1001569D0, &qword_10010FC78);
      v61(v24, v8);
      result = sub_1000035CC(v15, &qword_1001569D0, &qword_10010FC78);
      v38 = v70;
      v37 = v71;
      v39 = v69;
      if (v60)
      {
        return result;
      }

      goto LABEL_10;
    }

    sub_1000035CC(v27, &qword_1001569D0, &qword_10010FC78);
    sub_1000035CC(v29, &qword_1001569D0, &qword_10010FC78);
    (*(v9 + 8))(v24, v8);
  }

  sub_1000035CC(v15, &qword_1001569C8, &qword_10010FC70);
  v38 = v70;
  v37 = v71;
  v39 = v69;
LABEL_10:
  v40 = v68;
  v41 = *v68;
  v42 = *(v68 + 8);

  if ((v42 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v43 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v38 + 8))(v39, v37);
  }

  v44 = v40[2];
  v45 = *(v40 + 24);

  if ((v45 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v46 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v38 + 8))(v39, v37);
  }

  v47 = sub_100074054();

  sub_10005C034(v67, v47);

  v48 = v40[6];
  v49 = *(v40 + 56);

  v50 = v48;
  if ((v49 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v51 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v38 + 8))(v39, v37);
    v50 = v72;
  }

  swift_getKeyPath();
  *&v72 = v50;
  sub_10000F2E8(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v52 = *(v50 + 17);

  if ((v52 & 1) == 0)
  {

    v53 = v48;
    if ((v49 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v54 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v38 + 8))(v39, v37);
      v53 = v72;
    }

    swift_getKeyPath();
    *&v72 = v53;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v55 = *(v53 + 16);

    if (v55 == 1)
    {

      if ((v49 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v56 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v38 + 8))(v39, v37);
      }

      if (qword_100154728 != -1)
      {
        swift_once();
      }

      sub_10000362C();
      sub_100091C5C(0);

      v72 = 0u;
      v73 = 0u;
      v57 = v63;
      AccessibilityNotification.ScreenChanged.init(_:)();
      v58 = v65;
      _AccessibilityNotifications.post()();
      return (*(v64 + 8))(v57, v58);
    }
  }

  return result;
}

uint64_t sub_100084710(uint64_t *a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100156710, &qword_10010F888);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v16[-v6];
  v8 = sub_10003AE84(&qword_1001566F8, &qword_10010F880);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16[-v11];
  v13 = a1[1];
  v14 = a1[2];
  v17 = *a1;
  v18 = v13;
  v19 = v14;
  v20 = a2;
  sub_100085EEC(v17, v13, a2, v7);
  sub_10003AE84(&qword_100156758, &qword_10010F8A8);
  sub_10008C674();
  sub_10008C838();
  Section<>.init(header:content:)();
  static VerticalEdge.Set.all.getter();
  sub_10008C5DC();
  View.listSectionSeparator(_:edges:)();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1000848E0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v35 = a3;
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CalculatorHistoryListView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = sub_10003AE84(&qword_100156768, &qword_10010F8B0);
  v33 = *(v13 - 8);
  v34 = v13;
  v14 = *(v33 + 64);
  __chkstk_darwin(v13);
  v16 = &v31 - v15;
  v36 = a1;
  sub_10008B4C8(a2, &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = swift_allocObject();
  sub_10008B52C(&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);

  sub_10003AE84(&qword_100154E28, &unk_10010C590);
  sub_10003AE84(&qword_100156778, &qword_10010F8B8);
  sub_100004880(&qword_1001567F0, &qword_100154E28, &unk_10010C590);
  sub_10008C974();
  sub_10000F2E8(&qword_100156210, type metadata accessor for SchemaV1.HistoryRecord);
  ForEach<>.init(_:content:)();
  v19 = *(a2 + 48);
  v20 = *(a2 + 56);

  v21 = v19;
  if ((v20 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v9, v5);
    v21 = v36;
  }

  v32 = v5;
  swift_getKeyPath();
  v36 = v21;
  sub_10000F2E8(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = *(v21 + 17);

  if ((v20 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v9, v32);
    v19 = v36;
  }

  swift_getKeyPath();
  v36 = v19;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = *(v19 + 17);

  if (v23)
  {
    v26 = 0x402C000000000000;
  }

  else
  {
    v26 = 0x4034000000000000;
  }

  if (v25)
  {
    v27 = 0x402C000000000000;
  }

  else
  {
    v27 = 0x4034000000000000;
  }

  v28 = v35;
  (*(v33 + 32))(v35, v16, v34);
  result = sub_10003AE84(&qword_100156758, &qword_10010F8A8);
  v30 = v28 + *(result + 36);
  *v30 = 0x4024000000000000;
  *(v30 + 8) = v26;
  *(v30 + 16) = 0x4036000000000000;
  *(v30 + 24) = v27;
  *(v30 + 32) = 0;
  return result;
}

uint64_t sub_100084E0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v19 = type metadata accessor for AccessibilityChildBehavior();
  v3 = *(v19 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v19);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10003AE84(&qword_100156790, &qword_10010F8C8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = sub_10003AE84(&qword_1001567F8, &qword_10010F9E0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - v14;
  sub_1000850C0(*a1, v10);
  static AccessibilityChildBehavior.combine.getter();
  v16 = sub_100004880(&qword_100156798, &qword_100156790, &qword_10010F8C8);
  View.accessibilityElement(children:)();
  (*(v3 + 8))(v6, v19);
  sub_1000035CC(v10, &qword_100156790, &qword_10010F8C8);
  v21 = v7;
  v22 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = v20;
  View.accessibilityIdentifier(_:)();
  (*(v12 + 8))(v15, v11);
  result = sub_10003AE84(&qword_100156778, &qword_10010F8B8);
  *(v17 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_1000850C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a1;
  v119 = a2;
  v3 = type metadata accessor for CalculatorHistoryListView();
  v116 = *(v3 - 8);
  v4 = *(v116 + 64);
  __chkstk_darwin(v3 - 8);
  v117 = v5;
  v118 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for AccessibilityChildBehavior();
  v96 = *(v97 - 8);
  v6 = *(v96 + 64);
  __chkstk_darwin(v97);
  v95 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_10003AE84(&qword_100156800, &qword_10010F9E8);
  v8 = *(*(v93 - 8) + 64);
  __chkstk_darwin(v93);
  v10 = &v92 - v9;
  v94 = sub_10003AE84(&qword_100156808, &qword_10010F9F0);
  v11 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v100 = &v92 - v12;
  v98 = sub_10003AE84(&qword_100156810, &qword_10010F9F8);
  v13 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v102 = &v92 - v14;
  v101 = sub_10003AE84(&qword_100156818, &qword_10010FA00);
  v15 = *(*(v101 - 8) + 64);
  __chkstk_darwin(v101);
  v99 = &v92 - v16;
  v104 = sub_10003AE84(&qword_100156820, &qword_10010FA08);
  v17 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104);
  v103 = &v92 - v18;
  v108 = sub_10003AE84(&qword_100156828, &qword_10010FA10);
  v106 = *(v108 - 8);
  v19 = *(v106 + 64);
  __chkstk_darwin(v108);
  v105 = &v92 - v20;
  v110 = sub_10003AE84(&qword_100156830, &qword_10010FA18);
  v109 = *(v110 - 8);
  v21 = *(v109 + 64);
  __chkstk_darwin(v110);
  v107 = &v92 - v22;
  v115 = sub_10003AE84(&qword_100156838, &qword_10010FA20);
  v114 = *(v115 - 8);
  v23 = *(v114 + 64);
  __chkstk_darwin(v115);
  v113 = &v92 - v24;
  v112 = sub_10003AE84(&qword_100156790, &qword_10010F8C8);
  v25 = *(*(v112 - 8) + 64);
  __chkstk_darwin(v112);
  v111 = &v92 - v26;
  v27 = type metadata accessor for EnvironmentValues();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v2 + 32);
  v33 = v2;
  v34 = *(v2 + 40);

  v35 = v32;
  if ((v34 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v36 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v28 + 8))(v31, v27);
    v35 = v127;
  }

  v37 = swift_allocObject();
  v38 = *(v35 + 16);

  v39 = sub_100046CA8(v122);

  v121 = v37;
  *(v37 + 16) = v39;
  v40 = (v37 + 16);

  if ((v34 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v41 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v28 + 8))(v31, v27);
    v32 = v127;
  }

  v42 = swift_allocObject();
  v43 = *(v32 + 16);

  v44 = v122;
  v45 = sub_100047188(v122);

  *(v42 + 16) = v45;

  *v10 = static HorizontalAlignment.leading.getter();
  *(v10 + 1) = 0x4010000000000000;
  v10[16] = 0;
  v46 = sub_10003AE84(&qword_100156840, &qword_10010FA28);
  sub_100086D10(v33, v40, v44, (v42 + 16), &v10[*(v46 + 44)]);
  LOBYTE(v45) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v47 = &v10[*(v93 + 36)];
  *v47 = v45;
  *(v47 + 1) = v48;
  *(v47 + 2) = v49;
  *(v47 + 3) = v50;
  *(v47 + 4) = v51;
  v47[40] = 0;
  v52 = v95;
  static AccessibilityChildBehavior.ignore.getter();
  sub_10008CE78();
  v53 = v100;
  View.accessibilityElement(children:)();
  (*(v96 + 8))(v52, v97);
  sub_1000035CC(v10, &qword_100156800, &qword_10010F9E8);
  v54 = sub_100086810(v44, v33);
  v55 = sub_100086810(v44, v33);
  v56 = (v53 + *(v94 + 36));
  *v56 = v44;
  v56[1] = v54;
  v56[2] = v55;

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v57 = v102;
  sub_10000D5B8(v53, v102, &qword_100156808, &qword_10010F9F0);
  v58 = (v57 + *(v98 + 36));
  v59 = v132;
  v58[4] = v131;
  v58[5] = v59;
  v58[6] = v133;
  v60 = v128;
  *v58 = v127;
  v58[1] = v60;
  v61 = v130;
  v58[2] = v129;
  v58[3] = v61;
  v62 = v57;
  v63 = v99;
  sub_10000D5B8(v62, v99, &qword_100156810, &qword_10010F9F8);
  *(v63 + *(v101 + 36)) = 0;
  v64 = v103;
  v65 = sub_10000D5B8(v63, v103, &qword_100156818, &qword_10010FA00);
  v66 = v104;
  *(v64 + *(v104 + 36)) = 0;
  __chkstk_darwin(v65);
  v120 = v42;
  v67 = sub_10003AE84(&qword_100156860, &qword_10010FA38);
  v68 = sub_10008CF40();
  v69 = sub_100004880(&qword_100156890, &qword_100156860, &qword_10010FA38);
  v70 = v105;
  View.contextMenu<A>(menuItems:)();
  v71 = sub_1000035CC(v64, &qword_100156820, &qword_10010FA08);
  __chkstk_darwin(v71);
  v72 = sub_10003AE84(&qword_100156898, &qword_10010FA48);
  v123 = v66;
  v124 = v67;
  v125 = v68;
  v126 = v69;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v74 = sub_10008D234();
  v75 = v107;
  v76 = v108;
  View.swipeActions<A>(edge:allowsFullSwipe:content:)();
  v77 = (*(v106 + 8))(v70, v76);
  __chkstk_darwin(v77);
  v123 = v76;
  v124 = v72;
  v125 = OpaqueTypeConformance2;
  v126 = v74;
  swift_getOpaqueTypeConformance2();
  v78 = v113;
  v79 = v110;
  View.swipeActions<A>(edge:allowsFullSwipe:content:)();
  (*(v109 + 8))(v75, v79);
  if (qword_1001544E8 != -1)
  {
    swift_once();
  }

  v80 = v118;
  sub_10008B4C8(v33, v118);
  v81 = (*(v116 + 80) + 24) & ~*(v116 + 80);
  v82 = (v117 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = swift_allocObject();
  *(v83 + 16) = v121;
  sub_10008B52C(v80, v83 + v81);
  *(v83 + v82) = v44;
  *(v83 + ((v82 + 15) & 0xFFFFFFFFFFFFFFF8)) = v120;
  v84 = objc_opt_self();

  v85 = [v84 defaultCenter];
  v86 = v112;
  v87 = v111;
  v88 = &v111[*(v112 + 52)];
  NSNotificationCenter.publisher(for:object:)();

  v89 = swift_allocObject();
  *(v89 + 16) = sub_10008D3E0;
  *(v89 + 24) = v83;
  (*(v114 + 32))(v87, v78, v115);
  v90 = (v87 + *(v86 + 56));
  *v90 = sub_10008D47C;
  v90[1] = v89;
  sub_10000D5B8(v87, v119, &qword_100156790, &qword_10010F8C8);
}

uint64_t sub_100085EEC@<X0>(uint64_t a1@<X0>, int64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for EnvironmentValues();
  v41 = *(v8 - 8);
  v42 = v8;
  v9 = *(v41 + 64);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10003AE84(&qword_1001567E0, &qword_10010F970);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v41 - v14;
  v16 = sub_10003AE84(&qword_100156720, &qword_10010F890);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v41 - v18;
  v43 = a4;
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        v20 = 0x8000000100105860;
        v21 = 0xD000000000000010;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v20 = 0xEF73796144203720;
    v21 = 0x73756F6976657250;
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v20 = 0xE900000000000079;
        v21 = 0x6164726574736559;
        goto LABEL_11;
      }

LABEL_8:
      v21 = a1;
      v20 = a2;
      goto LABEL_11;
    }

    v20 = 0xE500000000000000;
    v21 = 0x7961646F54;
  }

LABEL_11:
  v22 = *(type metadata accessor for CalculatorHistoryListView() + 36);
  sub_100048EE4(a1, a2);
  sub_10003AE84(&qword_1001565D8, qword_100113B00);
  ScaledMetric.wrappedValue.getter();
  static Font.Weight.medium.getter();
  v23 = type metadata accessor for Font.Design();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  v24 = static Font.system(size:weight:design:)();
  sub_1000035CC(v15, &qword_1001567E0, &qword_10010F970);
  if (qword_1001545A0 != -1)
  {
    swift_once();
  }

  v25 = qword_100160BC8;
  v26 = &v19[*(v16 + 36)];
  v27 = *(sub_10003AE84(&qword_100156738, &qword_10010F898) + 28);
  v28 = type metadata accessor for Text.Case();
  (*(*(v28 - 8) + 56))(v26 + v27, 1, 1, v28);
  *v26 = swift_getKeyPath();
  *v19 = v21;
  *(v19 + 1) = v20;
  *(v19 + 2) = v24;
  *(v19 + 3) = v25;
  v19[32] = a2 < 4;
  v29 = *(a3 + 48);
  v30 = *(a3 + 56);

  v31 = v29;
  if ((v30 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v32 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v41 + 8))(v11, v42);
    v31 = v44;
  }

  swift_getKeyPath();
  v44 = v31;
  sub_10000F2E8(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v33 = *(v31 + 17);

  if ((v30 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v34 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v41 + 8))(v11, v42);
    v29 = v44;
  }

  swift_getKeyPath();
  v44 = v29;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v35 = *(v29 + 17);

  if (v33)
  {
    v36 = 0x403C000000000000;
  }

  else
  {
    v36 = 0x4034000000000000;
  }

  if (v35)
  {
    v37 = 0x403C000000000000;
  }

  else
  {
    v37 = 0x4034000000000000;
  }

  v38 = v43;
  sub_10000D5B8(v19, v43, &qword_100156720, &qword_10010F890);
  result = sub_10003AE84(&qword_100156710, &qword_10010F888);
  v40 = v38 + *(result + 36);
  *v40 = 0x4028000000000000;
  *(v40 + 8) = v36;
  *(v40 + 16) = 0x4028000000000000;
  *(v40 + 24) = v37;
  *(v40 + 32) = 0;
  return result;
}

uint64_t sub_1000864B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10003AE84(&qword_1001566C8, &qword_10010F830);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a3;
  LOBYTE(a3) = *(a3 + 8);

  if ((a3 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v10 + 8))(v13, v9);
    v14 = v22;
  }

  v16 = swift_projectBox();
  (*(v5 + 16))(v8, v16, v4);
  Bindable.wrappedValue.getter();
  (*(v5 + 8))(v8, v4);
  v17 = sub_10004EC90();

  swift_getKeyPath();
  v22 = v14;
  sub_10000F2E8(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = *(v14 + 54);
  if (v18 == 11)
  {
    if (v17 != 11)
    {
LABEL_5:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v21 - 2) = v14;
      *(&v21 - 8) = v17;
      v22 = v14;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else if (v18 != v17)
  {
    goto LABEL_5;
  }
}

id sub_100086810(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = a1;
  swift_getKeyPath();
  sub_10000F2E8(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10000F2E8(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
  sub_10004B3E8();
  PersistentModel.getValue<A>(forKey:)();

  if (!v18[1])
  {
    return 0;
  }

  v9 = *(a2 + 16);
  v10 = *(a2 + 24);

  if ((v10 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
  }

  v12 = sub_100074054();

  v13 = *(v12 + 16);

  swift_getKeyPath();
  v18[0] = v13;
  sub_10000F2E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *(v13 + 16);

  v15 = String._bridgeToObjectiveC()();

  v16 = [v14 findUnitWithName:v15];

  return v16;
}

uint64_t sub_100086B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100086810(a1, a2);
  if (v4)
  {
    v5 = v4;
    swift_beginAccess();
    v6 = *(a3 + 16);

    v7 = CalculateExpression.copyableExpression.getter();

    v8._countAndFlagsBits = 32;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);

    v9 = [v5 shortName];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13._countAndFlagsBits = v10;
    v13._object = v12;
    String.append(_:)(v13);

    return v7;
  }

  else
  {
    swift_beginAccess();
    v15 = *(a3 + 16);

    v16 = CalculateExpression.copyableExpression.getter();

    return v16;
  }
}

uint64_t sub_100086C6C(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 16);

  v7 = CalculateExpression.prefersRTL.getter();

  if (v7)
  {
    v8._countAndFlagsBits = a1;
    v8._object = a2;
    String.append(_:)(v8);
    return 9404642;
  }

  else
  {
  }

  return a1;
}

uint64_t sub_100086D10@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void **a4@<X3>, uint64_t a5@<X8>)
{
  v165 = a4;
  v172 = a5;
  v8 = sub_10003AE84(&qword_1001567E0, &qword_10010F970);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v173 = &v148 - v10;
  v186 = sub_10003AE84(&qword_100156938, &qword_10010FBB0);
  v183 = *(v186 - 8);
  v11 = *(v183 + 64);
  __chkstk_darwin(v186);
  v174 = &v148 - v12;
  v13 = sub_10003AE84(&qword_100156940, &qword_10010FBB8);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v169 = &v148 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v184 = &v148 - v18;
  __chkstk_darwin(v17);
  v179 = &v148 - v19;
  v20 = sub_10003AE84(&qword_100156948, &qword_10010FBC0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v148 - v22;
  v24 = type metadata accessor for CalculateExpressionView();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v148 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10003AE84(&qword_100156950, &qword_10010FBC8);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v180 = &v148 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v181 = &v148 - v34;
  __chkstk_darwin(v33);
  v178 = &v148 - v35;
  v182 = sub_10003AE84(&qword_100156958, &qword_10010FBD0);
  v36 = *(*(v182 - 8) + 64);
  v37 = __chkstk_darwin(v182);
  v171 = &v148 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v170 = &v148 - v40;
  v41 = __chkstk_darwin(v39);
  v185 = (&v148 - v42);
  __chkstk_darwin(v41);
  v44 = &v148 - v43;
  v45 = *a2;

  v167 = a3;
  v177 = sub_100086810(a3, a1);
  v161 = type metadata accessor for CalculatorHistoryListView();
  v46 = *(v161 + 40);
  v47 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v168 = a1;
  v160 = v47;
  ScaledMetric.wrappedValue.getter();
  if (qword_100154590 != -1)
  {
    swift_once();
  }

  *v44 = static VerticalAlignment.firstTextBaseline.getter();
  *(v44 + 1) = 0x4014000000000000;
  v44[16] = 0;
  v48 = qword_100154388;

  if (v48 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Text.TruncationMode();
  v50 = sub_1000048C8(v49, qword_100160890);
  v51 = *(v49 - 8);
  v52 = *(v51 + 16);
  v156 = v50;
  v155 = v51 + 16;
  v154 = v52;
  (v52)(v23);
  v53 = *(v51 + 56);
  v158 = v49;
  v157 = v51 + 56;
  v153 = v53;
  v53(v23, 0, 1, v49);
  v163 = v23;
  v159 = v45;
  CalculateExpressionView.init(expression:isEditable:fontSize:minFontSizeRatio:textAlignment:textColor:truncationMode:operationCallback:)();
  v152 = sub_10000F2E8(&qword_100156960, &type metadata accessor for CalculateExpressionView);
  View.accessibilityIdentifier(_:)();
  v54 = *(v25 + 8);
  v162 = v28;
  v166 = v24;
  v164 = v25 + 8;
  v151 = v54;
  v54(v28, v24);
  v176 = v44;
  if (v177)
  {
    v175 = v177;
    v55 = [v175 shortName];
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    *&v187 = v56;
    *(&v187 + 1) = v58;
    sub_10006345C();
    v59 = Text.init<A>(_:)();
    v61 = v60;
    v63 = v62;
    v64 = Text.foregroundColor(_:)();
    v66 = v65;
    v68 = v67;
    sub_10000C6AC(v59, v61, v63 & 1);

    v69 = type metadata accessor for Font.Design();
    v70 = v173;
    (*(*(v69 - 8) + 56))(v173, 1, 1, v69);
    static Font.system(size:weight:design:)();
    sub_1000035CC(v70, &qword_1001567E0, &qword_10010F970);
    v71 = Text.font(_:)();
    v73 = v72;
    v75 = v74;
    v77 = v76;

    v78 = v64;
    v79 = v179;
    sub_10000C6AC(v78, v66, v68 & 1);

    KeyPath = swift_getKeyPath();
    v195 = v75 & 1;
    LOBYTE(v193[0]) = 0;
    *&v187 = v71;
    *(&v187 + 1) = v73;
    LOBYTE(v188) = v75 & 1;
    *(&v188 + 1) = v196;
    DWORD1(v188) = *(&v196 + 3);
    *(&v188 + 1) = v77;
    *&v189 = 0x4000000000000000;
    *(&v189 + 1) = KeyPath;
    v190 = 1;
    v191 = 0;
    sub_10003AE84(&qword_100156988, &qword_10010FC28);
    sub_10008DDD8();
    v81 = v174;
    View.accessibilityIdentifier(_:)();

    sub_10000C6AC(v71, v73, v75 & 1);
    v44 = v176;

    sub_10000D5B8(v81, v79, &qword_100156938, &qword_10010FBB0);
    v148 = *(v183 + 56);
    v148(v79, 0, 1, v186);
  }

  else
  {
    v148 = *(v183 + 56);
    v148(v179, 1, 1, v186);
    v175 = 0;
  }

  v150 = sub_10003AE84(&qword_100156968, &qword_10010FBD8);
  v82 = &v44[*(v150 + 44)];
  v83 = v178;
  v84 = v181;
  sub_100008E68(v178, v181, &qword_100156950, &qword_10010FBC8);
  v85 = v179;
  v86 = v184;
  sub_100008E68(v179, v184, &qword_100156940, &qword_10010FBB8);
  sub_100008E68(v84, v82, &qword_100156950, &qword_10010FBC8);
  v149 = sub_10003AE84(&qword_100156970, &qword_10010FBE0);
  sub_100008E68(v86, v82 + *(v149 + 48), &qword_100156940, &qword_10010FBB8);
  sub_1000035CC(v85, &qword_100156940, &qword_10010FBB8);
  sub_1000035CC(v83, &qword_100156950, &qword_10010FBC8);
  sub_1000035CC(v86, &qword_100156940, &qword_10010FBB8);
  sub_1000035CC(v84, &qword_100156950, &qword_10010FBC8);
  v87 = CalculateExpression.copyableExpression.getter();
  v89 = v88;
  v178 = sub_10003AE84(&qword_100156978, &qword_10010FBE8);
  v90 = &v44[*(v178 + 36)];
  *v90 = v87;
  v90[1] = v89;
  v90[2] = v177;
  v91 = v175;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();

  v92 = &v44[*(v182 + 36)];
  v93 = v197;
  *v92 = v196;
  *(v92 + 1) = v93;
  *(v92 + 2) = v198;
  v94 = v165;
  swift_beginAccess();
  v95 = *v94;

  v96 = v168;
  v97 = sub_100086810(v167, v168);
  v98 = &v96[*(v161 + 44)];
  ScaledMetric.wrappedValue.getter();
  if (qword_100154598 != -1)
  {
    swift_once();
  }

  v99 = static VerticalAlignment.firstTextBaseline.getter();
  v100 = v185;
  *v185 = v99;
  v100[1] = 0x4014000000000000;
  *(v100 + 16) = 0;
  v101 = v163;
  v102 = v158;
  v154(v163, v156, v158);
  v153(v101, 0, 1, v102);

  v103 = v162;
  v177 = v95;
  CalculateExpressionView.init(expression:isEditable:fontSize:minFontSizeRatio:textAlignment:textColor:truncationMode:operationCallback:)();
  v104 = v166;
  View.accessibilityIdentifier(_:)();
  v151(v103, v104);
  v175 = v97;
  if (v97)
  {
    v168 = "le for Copy Expression";
    v179 = v97;
    v105 = [v179 shortName];
    v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v108 = v107;

    *&v187 = v106;
    *(&v187 + 1) = v108;
    sub_10006345C();
    v109 = Text.init<A>(_:)();
    v111 = v110;
    v113 = v112;
    v114 = Text.foregroundColor(_:)();
    v116 = v115;
    LOBYTE(v105) = v117;
    sub_10000C6AC(v109, v111, v113 & 1);

    v118 = type metadata accessor for Font.Design();
    v119 = v173;
    (*(*(v118 - 8) + 56))(v173, 1, 1, v118);
    static Font.system(size:weight:design:)();
    sub_1000035CC(v119, &qword_1001567E0, &qword_10010F970);
    v120 = Text.font(_:)();
    v122 = v121;
    v124 = v123;
    v126 = v125;

    sub_10000C6AC(v114, v116, v105 & 1);

    v127 = swift_getKeyPath();
    v194 = v124 & 1;
    v192 = 0;
    *&v187 = v120;
    *(&v187 + 1) = v122;
    LOBYTE(v188) = v124 & 1;
    *(&v188 + 1) = v193[0];
    DWORD1(v188) = *(v193 + 3);
    *(&v188 + 1) = v126;
    *&v189 = 0x4000000000000000;
    *(&v189 + 1) = v127;
    v190 = 1;
    v191 = 0;
    sub_10003AE84(&qword_100156988, &qword_10010FC28);
    sub_10008DDD8();
    v128 = v174;
    View.accessibilityIdentifier(_:)();

    sub_10000C6AC(v120, v122, v124 & 1);

    v129 = v128;
    v130 = v169;
    sub_10000D5B8(v129, v169, &qword_100156938, &qword_10010FBB0);
    (*(v183 + 56))(v130, 0, 1, v186);
  }

  else
  {
    v130 = v169;
    v148(v169, 1, 1, v186);
    v179 = 0;
  }

  v131 = v185;
  v132 = v185 + *(v150 + 44);
  v133 = v180;
  v134 = v181;
  sub_100008E68(v180, v181, &qword_100156950, &qword_10010FBC8);
  v135 = v184;
  sub_100008E68(v130, v184, &qword_100156940, &qword_10010FBB8);
  sub_100008E68(v134, v132, &qword_100156950, &qword_10010FBC8);
  sub_100008E68(v135, v132 + *(v149 + 48), &qword_100156940, &qword_10010FBB8);
  sub_1000035CC(v130, &qword_100156940, &qword_10010FBB8);
  sub_1000035CC(v133, &qword_100156950, &qword_10010FBC8);
  sub_1000035CC(v135, &qword_100156940, &qword_10010FBB8);
  sub_1000035CC(v134, &qword_100156950, &qword_10010FBC8);
  v136 = CalculateExpression.copyableExpression.getter();
  v137 = (v131 + *(v178 + 36));
  *v137 = v136;
  v137[1] = v138;
  v137[2] = v175;
  v139 = v179;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();

  v140 = (v131 + *(v182 + 36));
  v141 = v188;
  *v140 = v187;
  v140[1] = v141;
  v140[2] = v189;
  v142 = v176;
  v143 = v170;
  sub_100008E68(v176, v170, &qword_100156958, &qword_10010FBD0);
  v144 = v171;
  sub_100008E68(v131, v171, &qword_100156958, &qword_10010FBD0);
  v145 = v172;
  sub_100008E68(v143, v172, &qword_100156958, &qword_10010FBD0);
  v146 = sub_10003AE84(&qword_100156980, &qword_10010FBF0);
  sub_100008E68(v144, v145 + *(v146 + 48), &qword_100156958, &qword_10010FBD0);
  sub_1000035CC(v131, &qword_100156958, &qword_10010FBD0);
  sub_1000035CC(v142, &qword_100156958, &qword_10010FBD0);
  sub_1000035CC(v144, &qword_100156958, &qword_10010FBD0);
  return sub_1000035CC(v143, &qword_100156958, &qword_10010FBD0);
}

uint64_t sub_100088038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v91 = a6;
  v103 = a5;
  v88 = a4;
  v105 = a2;
  v101 = a7;
  v10 = sub_10003AE84(&qword_100155898, &unk_10010DB80);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v93 = &v81 - v12;
  v99 = sub_10003AE84(&qword_1001568C8, &qword_10010FA68);
  v100 = *(v99 - 8);
  v13 = *(v100 + 64);
  __chkstk_darwin(v99);
  v95 = &v81 - v14;
  v15 = sub_10003AE84(&qword_1001568D0, &qword_10010FA70);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v98 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v112 = &v81 - v19;
  v97 = type metadata accessor for Divider();
  v96 = *(v97 - 8);
  v20 = *(v96 + 64);
  v21 = __chkstk_darwin(v97);
  v94 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v110 = &v81 - v23;
  v24 = type metadata accessor for CalculatorHistoryListView();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24 - 8);
  v108 = v27;
  v28 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_10003AE84(&qword_1001568D8, &qword_10010FA78);
  v113 = *(v104 - 8);
  v29 = *(v113 + 64);
  __chkstk_darwin(v104);
  v31 = &v81 - v30;
  v89 = sub_10003AE84(&qword_1001568E0, &qword_10010FA80);
  v114 = *(v89 - 8);
  v32 = *(v114 + 64);
  __chkstk_darwin(v89);
  v34 = &v81 - v33;
  v35 = sub_10003AE84(&qword_1001568E8, &qword_10010FA88);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35 - 8);
  v92 = &v81 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v111 = &v81 - v40;
  v41 = __chkstk_darwin(v39);
  v106 = &v81 - v42;
  __chkstk_darwin(v41);
  v109 = &v81 - v43;
  v102 = a3;
  v87 = v28;
  sub_10008B4C8(a3, v28);
  v107 = *(v25 + 80);
  v44 = (v107 + 32) & ~v107;
  v45 = swift_allocObject();
  v46 = v105;
  *(v45 + 16) = a1;
  *(v45 + 24) = v46;
  sub_10008B52C(v28, v45 + v44);
  v120 = a4;
  v121 = v103;
  v122 = v46;
  v123 = a3;
  v124 = a1;

  v86 = sub_10003AE84(&qword_1001568F0, &qword_10010FA90);
  v85 = sub_100004880(&qword_1001568F8, &qword_1001568F0, &qword_10010FA90);
  v47 = v31;
  Button.init(action:label:)();
  LocalizedStringKey.init(stringLiteral:)();
  v90 = &protocol conformance descriptor for Button<A>;
  v48 = sub_100004880(&qword_100156900, &qword_1001568D8, &qword_10010FA78);
  v49 = v104;
  View.help(_:)();

  v50 = *(v113 + 8);
  v113 += 8;
  v84 = v50;
  v50(v31, v49);
  v125 = v49;
  v126 = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = v89;
  View.accessibilityIdentifier(_:)();
  v52 = *(v114 + 8);
  v114 += 8;
  v82 = v52;
  v52(v34, v51);
  v53 = v102;
  v54 = v87;
  sub_10008B4C8(v102, v87);
  v55 = swift_allocObject();
  v56 = v91;
  v57 = v105;
  *(v55 + 16) = v91;
  *(v55 + 24) = v57;
  sub_10008B52C(v54, v55 + v44);
  v115 = v88;
  v116 = v103;
  v117 = v57;
  v118 = v53;
  v119 = v56;

  Button.init(action:label:)();
  LocalizedStringKey.init(stringLiteral:)();
  v58 = v104;
  View.help(_:)();

  v84(v47, v58);
  v59 = v106;
  View.accessibilityIdentifier(_:)();
  v82(v34, v51);
  v60 = v110;
  Divider.init()();
  v61 = v93;
  static ButtonRole.destructive.getter();
  v62 = type metadata accessor for ButtonRole();
  (*(*(v62 - 8) + 56))(v61, 0, 1, v62);
  sub_10008B4C8(v102, v54);
  v63 = (v107 + 16) & ~v107;
  v64 = (v108 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  sub_10008B52C(v54, v65 + v63);
  *(v65 + v64) = v57;

  sub_10003AE84(&qword_100156908, &qword_10010FA98);
  sub_10008DA98();
  v66 = v95;
  Button.init(role:action:label:)();
  sub_100004880(&qword_100156928, &qword_1001568C8, &qword_10010FA68);
  v67 = v112;
  v68 = v99;
  View.accessibilityIdentifier(_:)();
  (*(v100 + 8))(v66, v68);
  v69 = v111;
  sub_100034DE0(v109, v111);
  v70 = v92;
  sub_100034DE0(v59, v92);
  v71 = v96;
  v72 = *(v96 + 16);
  v73 = v94;
  v74 = v97;
  v72(v94, v60, v97);
  v75 = v98;
  sub_100008E68(v67, v98, &qword_1001568D0, &qword_10010FA70);
  v76 = v69;
  v77 = v101;
  sub_100034DE0(v76, v101);
  v78 = sub_10003AE84(&qword_100156930, &qword_10010FAA8);
  sub_100034DE0(v70, v77 + v78[12]);
  v72((v77 + v78[16]), v73, v74);
  sub_100008E68(v75, v77 + v78[20], &qword_1001568D0, &qword_10010FA70);
  sub_1000035CC(v112, &qword_1001568D0, &qword_10010FA70);
  v79 = *(v71 + 8);
  v79(v110, v74);
  sub_1000035CC(v106, &qword_1001568E8, &qword_10010FA88);
  sub_1000035CC(v109, &qword_1001568E8, &qword_10010FA88);
  sub_1000035CC(v75, &qword_1001568D0, &qword_10010FA70);
  v79(v73, v74);
  sub_1000035CC(v70, &qword_1001568E8, &qword_10010FA88);
  return sub_1000035CC(v111, &qword_1001568E8, &qword_10010FA88);
}

uint64_t sub_100088C84@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v10 = Text.init(_:tableName:bundle:comment:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_100086B28(a2, a3, a4);
  v18 = a1(v17);
  v20 = v19;

  if (qword_100154428 != -1)
  {
    swift_once();
  }

  v21 = qword_100160960;
  *a5 = v10;
  *(a5 + 8) = v12;
  *(a5 + 16) = v14 & 1;
  *(a5 + 24) = v16;
  *(a5 + 32) = v18;
  *(a5 + 40) = v20;
  *(a5 + 48) = 0;
  *(a5 + 56) = &_swiftEmptyArrayStorage;
  *(a5 + 64) = v21;

  sub_10006564C(v10, v12, v14 & 1);

  sub_10006564C(v18, v20, 0);

  sub_10000C6AC(v18, v20, 0);

  sub_10000C6AC(v10, v12, v14 & 1);
}

uint64_t sub_100088E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 16);

  v7.value._countAndFlagsBits = sub_100086B28(a2, a3, a1);
  CalculateExpression.copyToClipboard(overridePlaintext:)(v7);
}

uint64_t sub_100088EE0@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v10 = Text.init(_:tableName:bundle:comment:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_100086B28(a2, a3, a4);
  v18 = a1(v17);
  v20 = v19;

  if (qword_100154428 != -1)
  {
    swift_once();
  }

  v21 = qword_100160960;
  *a5 = v10;
  *(a5 + 8) = v12;
  *(a5 + 16) = v14 & 1;
  *(a5 + 24) = v16;
  *(a5 + 32) = v18;
  *(a5 + 40) = v20;
  *(a5 + 48) = 0;
  *(a5 + 56) = &_swiftEmptyArrayStorage;
  *(a5 + 64) = v21;

  sub_10006564C(v10, v12, v14 & 1);

  sub_10006564C(v18, v20, 0);

  sub_10000C6AC(v18, v20, 0);

  sub_10000C6AC(v10, v12, v14 & 1);
}

uint64_t sub_1000890A4(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v3 = type metadata accessor for CalculatorHistoryListView();
  v42 = *(v3 - 8);
  v4 = *(v42 + 64);
  __chkstk_darwin(v3 - 8);
  v44 = v5;
  v45 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v39 - v8;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 32);
  v43 = a1;
  v16 = *(a1 + 40);

  v17 = v15;
  if ((v16 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v11 + 8))(v14, v10);
    v17 = v47;
  }

  v41 = v10;
  swift_getKeyPath();
  v47 = v17;
  sub_10000F2E8(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v19 = *(v17 + 24);

  v20 = *(v19 + 16);

  if (v20 < 2)
  {

    if ((v16 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v33 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v11 + 8))(v14, v41);
    }

    sub_10004E430(v40);

    v34 = type metadata accessor for TaskPriority();
    (*(*(v34 - 8) + 56))(v9, 1, 1, v34);
    v35 = v45;
    sub_10008B4C8(v43, v45);
    v36 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    *(v37 + 24) = 0;
    sub_10008B52C(v35, v37 + v36);
    sub_1000502A0(0, 0, v9, &unk_10010FB18, v37);
  }

  else
  {

    v21 = v15;
    if ((v16 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v22 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v11 + 8))(v14, v41);
      v21 = v46;
    }

    swift_getKeyPath();
    v46 = v21;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v23 = *(v21 + 24);

    v24 = *(v23 + 16);

    v25 = [objc_allocWithZone(NSNumber) initWithInteger:v24];

    if ((v16 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v26 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v11 + 8))(v14, v41);
    }

    sub_10004E65C();

    v27 = type metadata accessor for TaskPriority();
    (*(*(v27 - 8) + 56))(v9, 1, 1, v27);
    v28 = v45;
    sub_10008B4C8(v43, v45);
    v29 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v30 = (v44 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    sub_10008B52C(v28, v31 + v29);
    *(v31 + v30) = v25;
    v32 = v25;
    sub_1000502A0(0, 0, v9, &unk_10010FB28, v31);
  }

  return sub_1000035CC(v9, &qword_100154BB0, &qword_10010FAE0);
}

uint64_t sub_100089768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = type metadata accessor for EnvironmentValues();
  v5[20] = v6;
  v7 = *(v6 - 8);
  v5[21] = v7;
  v8 = *(v7 + 64) + 15;
  v5[22] = swift_task_alloc();

  return _swift_task_switch(sub_100089828, 0, 0);
}

uint64_t sub_100089828()
{
  *(v0 + 184) = type metadata accessor for MainActor();
  *(v0 + 192) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000898C0, v2, v1);
}

uint64_t sub_1000898C0()
{
  v1 = v0[24];
  v2 = v0[18];

  v3 = *(v2 + 32);
  LOBYTE(v2) = *(v2 + 40);

  if ((v2 & 1) == 0)
  {
    v5 = v0[21];
    v4 = v0[22];
    v6 = v0[20];
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v4, v6);
    v3 = v0[15];
  }

  v0[25] = v3;

  return _swift_task_switch(sub_1000899D8, 0, 0);
}

uint64_t sub_1000899D8()
{
  v1 = *(v0[25] + 16);

  swift_getKeyPath();
  v0[16] = v1;
  sub_10000F2E8(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v2 = *(v1 + 48);

  v3 = sub_100082A40(v2);

  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = v0[23];
  v6 = v0[19];

  sub_10003AE84(&qword_1001568B8, &qword_10010FA58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010DBE0;
  strcpy((inited + 32), "deleteElement");
  *(inited + 46) = -4864;
  *(inited + 48) = v6;
  strcpy((inited + 56), "elementCount");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  v8 = objc_allocWithZone(NSNumber);
  v9 = v6;
  *(inited + 72) = [v8 initWithInteger:v4];
  v0[26] = sub_100077104(inited);
  swift_setDeallocating();
  sub_10003AE84(&qword_1001568C0, &qword_10010FA60);
  swift_arrayDestroy();
  v0[27] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100089C64, v11, v10);
}

uint64_t sub_100089C64()
{
  v1 = v0[27];
  v2 = v0[18];

  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);

  if ((v2 & 1) == 0)
  {
    v5 = v0[21];
    v4 = v0[22];
    v6 = v0[20];
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v4, v6);
    v3 = v0[17];
  }

  v0[28] = v3;

  return _swift_task_switch(sub_100089D7C, 0, 0);
}

uint64_t sub_100089D7C()
{
  v1 = v0[28];
  v2 = v0[22];
  v3 = sub_1000574F4(v0[26]);

  sub_100062CB8(v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100089E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v5 = type metadata accessor for EnvironmentValues();
  v4[19] = v5;
  v6 = *(v5 - 8);
  v4[20] = v6;
  v7 = *(v6 + 64) + 15;
  v4[21] = swift_task_alloc();

  return _swift_task_switch(sub_100089EDC, 0, 0);
}

uint64_t sub_100089EDC()
{
  *(v0 + 176) = type metadata accessor for MainActor();
  *(v0 + 184) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100089F74, v2, v1);
}

uint64_t sub_100089F74()
{
  v1 = v0[23];
  v2 = v0[18];

  v3 = *(v2 + 32);
  LOBYTE(v2) = *(v2 + 40);

  if ((v2 & 1) == 0)
  {
    v5 = v0[20];
    v4 = v0[21];
    v6 = v0[19];
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v4, v6);
    v3 = v0[15];
  }

  v0[24] = v3;

  return _swift_task_switch(sub_10008A08C, 0, 0);
}

uint64_t sub_10008A08C()
{
  v1 = *(v0[24] + 16);

  swift_getKeyPath();
  v0[16] = v1;
  sub_10000F2E8(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v2 = *(v1 + 48);

  v3 = sub_100082A40(v2);

  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = v0[22];

  sub_10003AE84(&qword_1001568B8, &qword_10010FA58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010DBE0;
  strcpy((inited + 32), "deleteElement");
  *(inited + 46) = -4864;
  sub_10008DD8C();
  *(inited + 48) = NSNumber.init(integerLiteral:)(1);
  strcpy((inited + 56), "elementCount");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithInteger:v4];
  v0[25] = sub_100077104(inited);
  swift_setDeallocating();
  sub_10003AE84(&qword_1001568C0, &qword_10010FA60);
  swift_arrayDestroy();
  v0[26] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10008A318, v8, v7);
}

uint64_t sub_10008A318()
{
  v1 = v0[26];
  v2 = v0[18];

  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);

  if ((v2 & 1) == 0)
  {
    v5 = v0[20];
    v4 = v0[21];
    v6 = v0[19];
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v4, v6);
    v3 = v0[17];
  }

  v0[27] = v3;

  return _swift_task_switch(sub_10008A430, 0, 0);
}

uint64_t sub_10008A430()
{
  v1 = v0[27];
  v2 = v0[21];
  v3 = sub_1000574F4(v0[25]);

  sub_100062CB8(v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10008A4D0@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  Label<>.init(_:systemImage:)();
  if (qword_1001545A8 != -1)
  {
    swift_once();
  }

  v2 = qword_100160BD0;
  KeyPath = swift_getKeyPath();
  v4 = (a1 + *(sub_10003AE84(&qword_100156908, &qword_10010FA98) + 36));
  *v4 = KeyPath;
  v4[1] = v2;
}

uint64_t sub_10008A5A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27[1] = a3;
  v5 = type metadata accessor for CalculatorHistoryListView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = sub_10003AE84(&qword_100155898, &unk_10010DB80);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v27 - v10;
  v12 = sub_10003AE84(&qword_1001568B0, &qword_10010FA50);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = v27 - v14;
  v16 = sub_10003AE84(&qword_100156898, &qword_10010FA48);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = v27 - v18;
  static ButtonRole.destructive.getter();
  v20 = type metadata accessor for ButtonRole();
  (*(*(v20 - 8) + 56))(v11, 0, 1, v20);
  sub_10008B4C8(a1, v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v22 = swift_allocObject();
  sub_10008B52C(v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  *(v22 + ((v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  Button.init(role:action:label:)();
  if (qword_1001545A8 != -1)
  {
    swift_once();
  }

  v23 = qword_100160BD0;
  KeyPath = swift_getKeyPath();
  v25 = &v15[*(v12 + 36)];
  *v25 = KeyPath;
  v25[1] = v23;

  LocalizedStringKey.init(stringLiteral:)();
  sub_10008D2F0();
  View.accessibilityLabel(_:)();

  sub_1000035CC(v15, &qword_1001568B0, &qword_10010FA50);
  ModifiedContent<>.accessibilityIdentifier(_:)();
  return sub_1000035CC(v19, &qword_100156898, &qword_10010FA48);
}

uint64_t sub_10008A948(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[4];
  v10 = *(a1 + 40);

  if ((v10 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
  }

  sub_10004E430(a2);

  sub_10003AE84(&qword_1001568B8, &qword_10010FA58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010DBE0;
  strcpy((inited + 32), "deleteElement");
  *(inited + 46) = -4864;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  strcpy((inited + 56), "elementCount");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;

  if ((v10 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    v9 = v24;
  }

  v14 = *(v9 + 16);

  swift_getKeyPath();
  v24 = v14;
  sub_10000F2E8(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v15 = *(v14 + 48);

  v16 = *(v15 + 16);

  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithInteger:v16];
  v17 = sub_100077104(inited);
  swift_setDeallocating();
  sub_10003AE84(&qword_1001568C0, &qword_10010FA60);
  swift_arrayDestroy();
  v18 = *a1;
  v19 = *(a1 + 8);

  if ((v19 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
  }

  v21 = sub_1000574F4(v17);

  sub_100062CB8(v21);
}

uint64_t sub_10008ADC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24[1] = a4;
  v7 = type metadata accessor for CalculatorHistoryListView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = sub_10003AE84(&qword_1001568B0, &qword_10010FA50);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = v24 - v12;
  v14 = sub_10003AE84(&qword_100156898, &qword_10010FA48);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = v24 - v16;
  sub_10008B4C8(a3, v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  sub_10008B52C(v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);

  Button.init(action:label:)();
  if (qword_1001545B0 != -1)
  {
    swift_once();
  }

  v20 = qword_100160BD8;
  KeyPath = swift_getKeyPath();
  v22 = &v13[*(v10 + 36)];
  *v22 = KeyPath;
  v22[1] = v20;

  LocalizedStringKey.init(stringLiteral:)();
  sub_10008D2F0();
  View.accessibilityLabel(_:)();

  sub_1000035CC(v13, &qword_1001568B0, &qword_10010FA50);
  ModifiedContent<>.accessibilityIdentifier(_:)();
  return sub_1000035CC(v17, &qword_100156898, &qword_10010FA48);
}

uint64_t sub_10008B100@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a3;
    swift_once();
    a3 = v6;
    a2 = v5;
  }

  *a3 = *a2;
}

uint64_t sub_10008B15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);

  v15 = v13;
  if ((v14 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v9 + 8))(v12, v8);
    v15 = v25[3];
  }

  v17 = *(v15 + 16);

  v18 = sub_100046CA8(a3);

  swift_beginAccess();
  v19 = *(a1 + 16);
  *(a1 + 16) = v18;

  if ((v14 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v9 + 8))(v12, v8);
    v13 = v25[0];
  }

  v21 = *(v13 + 16);

  v22 = sub_100047188(a3);

  swift_beginAccess();
  v23 = *(a4 + 16);
  *(a4 + 16) = v22;
}

uint64_t sub_10008B3DC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_10008B4C8(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_10008B52C(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_10008B590;
  a2[1] = v7;
  return result;
}

uint64_t sub_10008B4C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalculatorHistoryListView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008B52C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalculatorHistoryListView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008B590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(type metadata accessor for CalculatorHistoryListView() - 8) + 80);

  return sub_100082D18(a1, a2);
}

uint64_t sub_10008B610@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_10008387C(a1);
}

uint64_t sub_10008B61C(uint64_t *a1)
{
  v3 = *(*(type metadata accessor for CalculatorHistoryListView() - 8) + 80);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];

  return sub_100083A24(a1);
}

uint64_t sub_10008B694(uint64_t *a1)
{
  v3 = *(type metadata accessor for CalculatorHistoryListView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100084710(a1, v4);
}

uint64_t sub_10008B714@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v99 = a3;
  v100 = a4;
  v104 = a5;
  v105 = a1;
  v93 = type metadata accessor for AttributedString.FormattingOptions();
  v6 = *(*(v93 - 8) + 64);
  __chkstk_darwin(v93);
  v92 = v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10003AE84(&qword_100155210, &qword_100111700);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v91 = v84 - v10;
  v11 = type metadata accessor for String.LocalizationValue();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v90 = v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for AttributedString.InterpolationOptions();
  v86 = *(v87 - 8);
  v14 = *(v86 + 64);
  __chkstk_darwin(v87);
  v85 = v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v84[3] = v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for Locale();
  v88 = *(v89 - 8);
  v19 = *(v88 + 64);
  __chkstk_darwin(v89);
  v101 = v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v84[1] = v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for UUID();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v108 = v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for CalculateExpression.Base();
  v95 = v27;
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v107 = v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for AttributedString();
  v102 = *(v31 - 8);
  v103 = v31;
  v32 = *(v102 + 64);
  v33 = __chkstk_darwin(v31);
  v84[2] = v84 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v109 = v84 - v36;
  __chkstk_darwin(v35);
  v38 = v84 - v37;
  v98 = OBJC_IVAR____TtCO10Calculator8SchemaV113HistoryRecord___observationRegistrar;
  v110 = a2;
  swift_getKeyPath();
  v97 = sub_10000F2E8(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v96 = sub_10000F2E8(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
  PersistentModel.getValue<A>(forKey:)();

  sub_1000DC17C(_swiftEmptyArrayStorage);
  v39 = enum case for CalculateExpression.Base.base10(_:);
  v40 = v28 + 104;
  v41 = *(v28 + 104);
  v94 = v40;
  v41(v107, enum case for CalculateExpression.Base.base10(_:), v27);
  UUID.init()();
  v42 = type metadata accessor for CalculateExpression();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  CalculateExpression.init(_:options:base:id:)();
  v106 = v38;
  CalculateExpression.accessibilityMathEquationDescription.getter();

  v110 = a2;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  sub_1000DC17C(_swiftEmptyArrayStorage);
  v41(v107, v39, v95);
  UUID.init()();
  v45 = *(v42 + 48);
  v46 = *(v42 + 52);
  swift_allocObject();
  v47 = v99;
  v48 = v100;
  CalculateExpression.init(_:options:base:id:)();
  CalculateExpression.accessibilityMathEquationDescription.getter();

  if (v47 && v48)
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v49._countAndFlagsBits = 0x202C7475706E49;
    v49._object = 0xE700000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v49);
    v50 = v106;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
    v51._countAndFlagsBits = 32;
    v51._object = 0xE100000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v51);
    v52 = [v47 displayName];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    v56._countAndFlagsBits = v53;
    v56._object = v55;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v56);

    v57._countAndFlagsBits = 0x746C75736572202CLL;
    v57._object = 0xE900000000000020;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v57);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
    v58._countAndFlagsBits = 32;
    v58._object = 0xE100000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v58);
    v59 = [v48 displayName];
    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;

    v63._countAndFlagsBits = v60;
    v63._object = v62;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v63);

    v64._countAndFlagsBits = 0;
    v64._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v64);
    LocalizedStringKey.init(stringInterpolation:)();
    v65 = Text.init(_:tableName:bundle:comment:)();
  }

  else
  {
    static Locale.current.getter();
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v68._countAndFlagsBits = 0x202C7475706E49;
    v68._object = 0xE700000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v68);
    v110 = _swiftEmptyArrayStorage;
    sub_10000F2E8(&qword_1001569F0, &type metadata accessor for AttributedString.InterpolationOptions);
    sub_10003AE84(&qword_1001569F8, &unk_10010FDB0);
    sub_100004880(&qword_100156A00, &qword_1001569F8, &unk_10010FDB0);
    v69 = v85;
    v70 = v87;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
    v71 = *(v86 + 8);
    v71(v69, v70);
    v72._countAndFlagsBits = 0x746C75736572202CLL;
    v72._object = 0xEA0000000000202CLL;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v72);
    v110 = _swiftEmptyArrayStorage;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
    v71(v69, v70);
    v73._countAndFlagsBits = 0;
    v73._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v73);
    String.LocalizationValue.init(stringInterpolation:)();
    v74 = v88;
    v75 = v91;
    v76 = v101;
    v77 = v89;
    (*(v88 + 16))(v91, v101, v89);
    (*(v74 + 56))(v75, 0, 1, v77);
    v110 = _swiftEmptyArrayStorage;
    sub_10000F2E8(&qword_100155228, &type metadata accessor for AttributedString.FormattingOptions);
    sub_10003AE84(&qword_100155230, &qword_10010CF20);
    sub_100004880(&qword_100155238, &qword_100155230, &qword_10010CF20);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    AttributedString.init(localized:options:table:bundle:locale:comment:)();
    (*(v74 + 8))(v76, v77);
    v50 = v106;
    v65 = Text.init(_:)();
  }

  v78 = v65;
  v79 = v66;
  v80 = v67;
  sub_10003AE84(&qword_100156A08, &qword_10010FDC0);
  sub_100004880(&qword_100156A10, &qword_100156A08, &qword_10010FDC0);
  View.accessibilityLabel(_:)();
  sub_10000C6AC(v78, v79, v80 & 1);

  v81 = v103;
  v82 = *(v102 + 8);
  v82(v109, v103);
  return (v82)(v50, v81);
}

uint64_t sub_10008C308(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_1001567E8, &unk_10010F9D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100008E68(a1, &v6 - v4, &qword_1001567E8, &unk_10010F9D0);
  return EnvironmentValues.textCase.setter();
}

uint64_t sub_10008C3B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  sub_10003AE84(&qword_1001567C0, &qword_10010F960);
  sub_10003AE84(&qword_1001567C8, &qword_10010F968);
  sub_100004880(&qword_1001567D0, &qword_1001567C0, &qword_10010F960);
  sub_10003AECC(&qword_1001566F8, &qword_10010F880);
  sub_10008C5DC();
  swift_getOpaqueTypeConformance2();
  sub_10008CD90();
  return ForEach<>.init(_:content:)();
}

unint64_t sub_10008C51C()
{
  result = qword_1001566F0;
  if (!qword_1001566F0)
  {
    sub_10003AECC(&qword_1001566E8, &qword_10010F878);
    sub_10003AECC(&qword_1001566F8, &qword_10010F880);
    sub_10008C5DC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001566F0);
  }

  return result;
}

unint64_t sub_10008C5DC()
{
  result = qword_100156700;
  if (!qword_100156700)
  {
    sub_10003AECC(&qword_1001566F8, &qword_10010F880);
    sub_10008C674();
    sub_10008C838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156700);
  }

  return result;
}

unint64_t sub_10008C674()
{
  result = qword_100156708;
  if (!qword_100156708)
  {
    sub_10003AECC(&qword_100156710, &qword_10010F888);
    sub_10008C72C();
    sub_100004880(&qword_100156740, &qword_100156748, &qword_10010F8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156708);
  }

  return result;
}

unint64_t sub_10008C72C()
{
  result = qword_100156718;
  if (!qword_100156718)
  {
    sub_10003AECC(&qword_100156720, &qword_10010F890);
    sub_10008C7E4();
    sub_100004880(&qword_100156730, &qword_100156738, &qword_10010F898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156718);
  }

  return result;
}

unint64_t sub_10008C7E4()
{
  result = qword_100156728;
  if (!qword_100156728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156728);
  }

  return result;
}

unint64_t sub_10008C838()
{
  result = qword_100156750;
  if (!qword_100156750)
  {
    sub_10003AECC(&qword_100156758, &qword_10010F8A8);
    sub_10008C8F0();
    sub_100004880(&qword_100156740, &qword_100156748, &qword_10010F8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156750);
  }

  return result;
}

unint64_t sub_10008C8F0()
{
  result = qword_100156760;
  if (!qword_100156760)
  {
    sub_10003AECC(&qword_100156768, &qword_10010F8B0);
    sub_10008C974();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156760);
  }

  return result;
}

unint64_t sub_10008C974()
{
  result = qword_100156770;
  if (!qword_100156770)
  {
    sub_10003AECC(&qword_100156778, &qword_10010F8B8);
    sub_10008CA2C();
    sub_100004880(&qword_1001567A0, &qword_1001567A8, &qword_10010F8D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156770);
  }

  return result;
}

unint64_t sub_10008CA2C()
{
  result = qword_100156780;
  if (!qword_100156780)
  {
    sub_10003AECC(&qword_100156788, &qword_10010F8C0);
    sub_10003AECC(&qword_100156790, &qword_10010F8C8);
    sub_100004880(&qword_100156798, &qword_100156790, &qword_10010F8C8);
    swift_getOpaqueTypeConformance2();
    sub_10000F2E8(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156780);
  }

  return result;
}

uint64_t sub_10008CB58(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CalculatorHistoryListView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000864B0(a1, a2, v2 + v6);
}

unint64_t sub_10008CC04()
{
  result = qword_1001567B8;
  if (!qword_1001567B8)
  {
    sub_10003AECC(&qword_1001566D8, &qword_10010F840);
    sub_10003AECC(&qword_1001566D0, &qword_10010F838);
    type metadata accessor for InsetListStyle();
    sub_100004880(&qword_1001567B0, &qword_1001566D0, &qword_10010F838);
    swift_getOpaqueTypeConformance2();
    sub_100004880(&qword_100155490, &qword_100155498, &unk_10010F350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001567B8);
  }

  return result;
}

uint64_t sub_10008CD4C(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 2);
  v6 = *a1;
  v7 = v4;
  return v2(&v6);
}

unint64_t sub_10008CD90()
{
  result = qword_1001567D8;
  if (!qword_1001567D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001567D8);
  }

  return result;
}

uint64_t sub_10008CDE4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1000848E0(v1[4], v1[5], a1);
}

uint64_t sub_10008CDF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(type metadata accessor for CalculatorHistoryListView() - 8) + 80);

  return sub_100084E0C(a1, a2);
}

unint64_t sub_10008CE78()
{
  result = qword_100156848;
  if (!qword_100156848)
  {
    sub_10003AECC(&qword_100156800, &qword_10010F9E8);
    sub_100004880(&qword_100156850, &qword_100156858, &qword_10010FA30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156848);
  }

  return result;
}

unint64_t sub_10008CF40()
{
  result = qword_100156868;
  if (!qword_100156868)
  {
    sub_10003AECC(&qword_100156820, &qword_10010FA08);
    sub_10008CFF8();
    sub_100004880(&qword_1001553E0, &qword_1001553E8, &qword_10010FA40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156868);
  }

  return result;
}

unint64_t sub_10008CFF8()
{
  result = qword_100156870;
  if (!qword_100156870)
  {
    sub_10003AECC(&qword_100156818, &qword_10010FA00);
    sub_10008D084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156870);
  }

  return result;
}

unint64_t sub_10008D084()
{
  result = qword_100156878;
  if (!qword_100156878)
  {
    sub_10003AECC(&qword_100156810, &qword_10010F9F8);
    sub_10008D110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156878);
  }

  return result;
}

unint64_t sub_10008D110()
{
  result = qword_100156880;
  if (!qword_100156880)
  {
    sub_10003AECC(&qword_100156808, &qword_10010F9F0);
    sub_10003AECC(&qword_100156800, &qword_10010F9E8);
    sub_10008CE78();
    swift_getOpaqueTypeConformance2();
    sub_10008D1D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156880);
  }

  return result;
}

unint64_t sub_10008D1D8()
{
  result = qword_100156888;
  if (!qword_100156888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156888);
  }

  return result;
}

unint64_t sub_10008D234()
{
  result = qword_1001568A0;
  if (!qword_1001568A0)
  {
    sub_10003AECC(&qword_100156898, &qword_10010FA48);
    sub_10008D2F0();
    sub_10000F2E8(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001568A0);
  }

  return result;
}

unint64_t sub_10008D2F0()
{
  result = qword_1001568A8;
  if (!qword_1001568A8)
  {
    sub_10003AECC(&qword_1001568B0, &qword_10010FA50);
    sub_100004880(&qword_100155960, &qword_100155948, &qword_10010DC60);
    sub_100004880(&qword_100155490, &qword_100155498, &unk_10010F350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001568A8);
  }

  return result;
}

uint64_t sub_10008D3E0()
{
  v1 = *(type metadata accessor for CalculatorHistoryListView() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10008B15C(v4, v0 + v2, v5, v6);
}

uint64_t sub_10008D4C0()
{
  v1 = type metadata accessor for CalculatorHistoryListView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = *(v0 + 24);

  v6 = v0 + v2;
  v7 = *(v0 + v2);

  v8 = *(v0 + v2 + 16);

  v9 = *(v0 + v2 + 32);

  v10 = *(v0 + v2 + 48);

  v11 = (v0 + v2 + v1[8]);
  sub_10003AE84(&qword_1001566B0, &qword_100112A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_10003AE84(&qword_1001566B8, &qword_10010F820);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      v13 = *v11;

      v14 = *(v11 + 1);

      v15 = *(v12 + 32);
      v16 = type metadata accessor for EditMode();
      (*(*(v16 - 8) + 8))(&v11[v15], v16);
    }
  }

  else
  {
    v17 = *v11;
  }

  v18 = v1[9];
  v19 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v20 = *(*(v19 - 8) + 8);
  v20(v6 + v18, v19);
  v20(v6 + v1[10], v19);
  v20(v6 + v1[11], v19);

  return swift_deallocObject();
}

uint64_t sub_10008D7A0()
{
  v1 = type metadata accessor for CalculatorHistoryListView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  v5 = *(v0 + v2);

  v6 = *(v0 + v2 + 16);

  v7 = *(v0 + v2 + 32);

  v8 = *(v0 + v2 + 48);

  v9 = (v0 + v2 + v1[8]);
  sub_10003AE84(&qword_1001566B0, &qword_100112A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_10003AE84(&qword_1001566B8, &qword_10010F820);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {
      v11 = *v9;

      v12 = *(v9 + 1);

      v13 = *(v10 + 32);
      v14 = type metadata accessor for EditMode();
      (*(*(v14 - 8) + 8))(&v9[v13], v14);
    }
  }

  else
  {
    v15 = *v9;
  }

  v16 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = v1[9];
  v18 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v19 = *(*(v18 - 8) + 8);
  v19(v4 + v17, v18);
  v19(v4 + v1[10], v18);
  v19(v4 + v1[11], v18);
  v20 = *(v0 + v16);

  return swift_deallocObject();
}

uint64_t sub_10008D9F8(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for CalculatorHistoryListView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

unint64_t sub_10008DA98()
{
  result = qword_100156910;
  if (!qword_100156910)
  {
    sub_10003AECC(&qword_100156908, &qword_10010FA98);
    sub_100004880(&qword_100156918, &qword_100156920, &qword_10010FAA0);
    sub_100004880(&qword_100155490, &qword_100155498, &unk_10010F350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156910);
  }

  return result;
}

uint64_t sub_10008DB7C(uint64_t a1)
{
  v4 = *(type metadata accessor for CalculatorHistoryListView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100030CEC;

  return sub_100089E1C(a1, v6, v7, v1 + v5);
}

uint64_t sub_10008DC6C(uint64_t a1)
{
  v4 = *(type metadata accessor for CalculatorHistoryListView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100030DE0;

  return sub_100089768(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_10008DD8C()
{
  result = qword_100155280;
  if (!qword_100155280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100155280);
  }

  return result;
}

unint64_t sub_10008DDD8()
{
  result = qword_100156990;
  if (!qword_100156990)
  {
    sub_10003AECC(&qword_100156988, &qword_10010FC28);
    sub_10008DE90();
    sub_100004880(&qword_1001569B8, &qword_1001569C0, &qword_10010FC40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156990);
  }

  return result;
}

unint64_t sub_10008DE90()
{
  result = qword_100156998;
  if (!qword_100156998)
  {
    sub_10003AECC(&qword_1001569A0, &qword_10010FC30);
    sub_100004880(&qword_1001569A8, &qword_1001569B0, &qword_10010FC38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156998);
  }

  return result;
}

unint64_t sub_10008DF74()
{
  result = qword_100156A18;
  if (!qword_100156A18)
  {
    sub_10003AECC(&qword_100156A20, &qword_10010FDC8);
    sub_100004880(&qword_100156A10, &qword_100156A08, &qword_10010FDC0);
    sub_10000F2E8(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156A18);
  }

  return result;
}

uint64_t sub_10008E060(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10008E078(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10008E0C0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_10008E110()
{
  result = qword_100156A28;
  if (!qword_100156A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156A28);
  }

  return result;
}

uint64_t sub_10008E164@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_100048EE4(v2, v3);
}

unint64_t sub_10008E170()
{
  result = qword_100156A30;
  if (!qword_100156A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156A30);
  }

  return result;
}

Swift::Int sub_10008E1C4()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 2;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 3;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_11;
    }

    if (v2 == 1)
    {
      v3 = 1;
LABEL_11:
      Hasher._combine(_:)(v3);
      return Hasher._finalize()();
    }
  }

  Hasher._combine(_:)(4uLL);
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_10008E27C()
{
  v1 = v0[1];
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 2;
      goto LABEL_13;
    }

    if (v1 == 3)
    {
      v2 = 3;
      goto LABEL_13;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_13;
    }

    if (v1 == 1)
    {
      v2 = 1;
LABEL_13:
      Hasher._combine(_:)(v2);
      return;
    }
  }

  v3 = *v0;
  Hasher._combine(_:)(4uLL);

  String.hash(into:)();
}

Swift::Int sub_10008E32C()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 2;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 3;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_11;
    }

    if (v2 == 1)
    {
      v3 = 1;
LABEL_11:
      Hasher._combine(_:)(v3);
      return Hasher._finalize()();
    }
  }

  Hasher._combine(_:)(4uLL);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10008E3E0(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1];
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        return v6 == 3;
      }

LABEL_10:
      if (v6 >= 4)
      {
        if (v4 != *a2 || v5 != v6)
        {
          return _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        return 1;
      }

      return 0;
    }

    if (v6 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v5)
    {
      if (v5 == 1)
      {
        return v6 == 1;
      }

      goto LABEL_10;
    }

    if (v6)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10008E46C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10008E4C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_10008E51C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

BOOL sub_10008E574(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      if (a2 != 2)
      {
        v4 = 2;
        goto LABEL_16;
      }

      goto LABEL_21;
    }

    if (a4 == 3)
    {
      if (a2 != 3)
      {
        v4 = 3;
        goto LABEL_16;
      }

LABEL_21:
      v6 = 0;
      return (v6 & 1) == 0;
    }

LABEL_10:
    if (a2 < 4)
    {
      v4 = 4;
      goto LABEL_16;
    }

    if (a3 != a1 || a4 != a2)
    {
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        v6 = 0;
      }

      else
      {
        v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return (v6 & 1) == 0;
    }

    goto LABEL_21;
  }

  if (!a4)
  {
    if (a2)
    {
      v4 = 0;
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  if (a4 != 1)
  {
    goto LABEL_10;
  }

  if (a2 == 1)
  {
    goto LABEL_21;
  }

  v4 = 1;
LABEL_16:
  v5 = 4;
  if (a2 < 4)
  {
    v5 = a2;
  }

  v6 = v4 < v5;
  return (v6 & 1) == 0;
}

BOOL sub_10008E6A8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if (a4 != 2)
      {
        v4 = 2;
        goto LABEL_16;
      }

      goto LABEL_21;
    }

    if (a2 == 3)
    {
      if (a4 != 3)
      {
        v4 = 3;
        goto LABEL_16;
      }

LABEL_21:
      v6 = 0;
      return (v6 & 1) == 0;
    }

LABEL_10:
    if (a4 < 4)
    {
      v4 = 4;
      goto LABEL_16;
    }

    if (a1 != a3 || a2 != a4)
    {
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        v6 = 0;
      }

      else
      {
        v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return (v6 & 1) == 0;
    }

    goto LABEL_21;
  }

  if (!a2)
  {
    if (a4)
    {
      v4 = 0;
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  if (a2 != 1)
  {
    goto LABEL_10;
  }

  if (a4 == 1)
  {
    goto LABEL_21;
  }

  v4 = 1;
LABEL_16:
  v5 = 4;
  if (a4 < 4)
  {
    v5 = a4;
  }

  v6 = v4 < v5;
  return (v6 & 1) == 0;
}

uint64_t sub_10008E7C4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      if (a2 != 2)
      {
        v4 = 2;
        goto LABEL_16;
      }

      return 0;
    }

    if (a4 == 3)
    {
      if (a2 != 3)
      {
        v4 = 3;
        goto LABEL_16;
      }

      return 0;
    }
  }

  else
  {
    if (!a4)
    {
      if (a2)
      {
        v4 = 0;
        goto LABEL_16;
      }

      return 0;
    }

    if (a4 == 1)
    {
      if (a2 != 1)
      {
        v4 = 1;
LABEL_16:
        v5 = 4;
        if (a2 < 4)
        {
          v5 = a2;
        }

        return v4 < v5;
      }

      return 0;
    }
  }

  if (a2 < 4)
  {
    v4 = 4;
    goto LABEL_16;
  }

  if (a3 == a1 && a4 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10008E8E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if (a4 != 2)
      {
        v4 = 2;
        goto LABEL_16;
      }

      return 0;
    }

    if (a2 == 3)
    {
      if (a4 != 3)
      {
        v4 = 3;
        goto LABEL_16;
      }

      return 0;
    }
  }

  else
  {
    if (!a2)
    {
      if (a4)
      {
        v4 = 0;
        goto LABEL_16;
      }

      return 0;
    }

    if (a2 == 1)
    {
      if (a4 != 1)
      {
        v4 = 1;
LABEL_16:
        v5 = 4;
        if (a4 < 4)
        {
          v5 = a4;
        }

        return v4 < v5;
      }

      return 0;
    }
  }

  if (a4 < 4)
  {
    v4 = 4;
    goto LABEL_16;
  }

  if (a1 == a3 && a2 == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10008E9FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = sub_10003AE84(&qword_100156B20, &qword_1001103E0);
  v13 = v12[9];
  *(a6 + v13) = swift_getKeyPath();
  sub_10003AE84(&qword_100154F90, &qword_10010C910);
  swift_storeEnumTagMultiPayload();
  v14 = v12[10];
  *(a6 + v14) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v15 = a6 + v12[11];
  type metadata accessor for CalculatorViewModel();
  sub_100090A7C(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  *v15 = Environment.init<A>(_:)();
  v15[8] = v16 & 1;
  v17 = a6 + v12[12];
  type metadata accessor for CalculatorUnitConversionViewModelWrapper(0);
  sub_100090A7C(&qword_1001553F8, type metadata accessor for CalculatorUnitConversionViewModelWrapper);
  *v17 = Environment.init<A>(_:)();
  v17[8] = v18 & 1;
  v19 = a6 + v12[13];
  type metadata accessor for CalculatorLayout(0);
  sub_100090A7C(&qword_100154958, type metadata accessor for CalculatorLayout);
  *v19 = Environment.init<A>(_:)();
  v19[8] = v20 & 1;
  v21 = a6 + v12[14];
  State.init(wrappedValue:)();
  *v21 = v26;
  *(v21 + 1) = v27;
  v22 = a6 + v12[15];
  State.init(wrappedValue:)();
  *v22 = v26;
  *(v22 + 1) = v27;
  *(a6 + v12[17]) = 0x403B000000000000;
  *(a6 + v12[18]) = 0x4059000000000000;
  v23 = v12[19];
  sub_1000103CC();
  result = ScaledMetric.init(wrappedValue:)();
  v25 = a6 + v12[16];
  *v25 = a1;
  *(v25 + 1) = a2;
  v25[16] = a3;
  *a6 = a4;
  a6[1] = a5;
  return result;
}

uint64_t sub_10008ECAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  type metadata accessor for MainActor();
  *(v3 + 24) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10008ED44, v5, v4);
}

uint64_t sub_10008ED44()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_1000311AC();
  v3 = v0[1];

  return v3();
}

uint64_t sub_10008EDA8@<X0>(int a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v100 = a1;
  v108 = a4;
  v107 = sub_10003AE84(&qword_100156C88, &qword_1001104E8);
  v106 = *(v107 - 8);
  v6 = *(v106 + 64);
  __chkstk_darwin(v107);
  v95 = &v94 - v7;
  v8 = sub_10003AE84(&qword_100156C90, &qword_1001104F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v105 = &v94 - v10;
  v11 = sub_10003AE84(&qword_100156C00, &qword_100110480);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v94 - v14;
  v16 = sub_10003AE84(&qword_100156BF0, &qword_100110478);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v20 = &v94 - v19;
  v96 = sub_10003AE84(&qword_100156BE0, &qword_100110470);
  v21 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v98 = &v94 - v22;
  v97 = sub_10003AE84(&qword_100156BD0, &qword_100110468);
  v23 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97);
  v104 = &v94 - v24;
  v99 = sub_10003AE84(&qword_100156BC0, &qword_100110460);
  v25 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v103 = &v94 - v26;
  v101 = sub_10003AE84(&qword_100156BB0, &qword_100110458);
  v27 = *(*(v101 - 8) + 64);
  __chkstk_darwin(v101);
  v102 = &v94 - v28;
  *&v109 = a2;
  *(&v109 + 1) = a3;
  LOBYTE(v110) = 0;
  *(&v110 + 1) = &_swiftEmptyArrayStorage;

  LocalizedStringKey.init(stringLiteral:)();
  v29 = Text.init(_:tableName:bundle:comment:)();
  v31 = v30;
  v33 = v32;
  View.help(_:)();
  sub_10000C6AC(v29, v31, v33 & 1);

  *&v15[*(v12 + 44)] = static Color.white.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000D5B8(v15, v20, &qword_100156C00, &qword_100110480);
  v34 = &v20[*(v17 + 44)];
  v35 = v114;
  *(v34 + 4) = v113;
  *(v34 + 5) = v35;
  *(v34 + 6) = v115;
  v36 = v110;
  *v34 = v109;
  *(v34 + 1) = v36;
  v37 = v112;
  *(v34 + 2) = v111;
  *(v34 + 3) = v37;
  sub_10003AE84(&qword_100156C98, &qword_1001104F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010DBE0;
  LOBYTE(v15) = static Edge.Set.vertical.getter();
  *(inited + 32) = v15;
  v39 = static Edge.Set.leading.getter();
  *(inited + 33) = v39;
  v40 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v15)
  {
    v40 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v39)
  {
    v40 = Edge.Set.init(rawValue:)();
  }

  v41 = v104;
  EdgeInsets.init(_all:)();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v98;
  sub_10000D5B8(v20, v98, &qword_100156BF0, &qword_100110478);
  v51 = v50 + *(v96 + 36);
  *v51 = v40;
  *(v51 + 8) = v43;
  *(v51 + 16) = v45;
  *(v51 + 24) = v47;
  *(v51 + 32) = v49;
  *(v51 + 40) = 0;
  v52 = static Edge.Set.trailing.getter();
  v53 = v100;
  EdgeInsets.init(_all:)();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  sub_10000D5B8(v50, v41, &qword_100156BE0, &qword_100110470);
  v62 = v41 + *(v97 + 36);
  *v62 = v52;
  *(v62 + 8) = v55;
  *(v62 + 16) = v57;
  *(v62 + 24) = v59;
  *(v62 + 32) = v61;
  *(v62 + 40) = 0;
  if (v53)
  {
    v63 = v95;
    static Material.ultraThin.getter();
    v64 = static Edge.Set.all.getter();
    *(v63 + *(sub_10003AE84(&qword_100156CA0, &qword_100110500) + 36)) = v64;
    *(v63 + *(sub_10003AE84(&qword_100156CA8, &qword_100110508) + 36)) = 0x3FC999999999999ALL;
    v65 = v107;
    v66 = (v63 + *(v107 + 36));
    v67 = *(type metadata accessor for RoundedRectangle() + 20);
    v68 = enum case for RoundedCornerStyle.continuous(_:);
    v69 = type metadata accessor for RoundedCornerStyle();
    (*(*(v69 - 8) + 104))(&v66[v67], v68, v69);
    __asm { FMOV            V0.2D, #4.0 }

    *v66 = _Q0;
    *&v66[*(sub_10003AE84(&qword_100156CB0, &unk_100110510) + 36)] = 256;
    v75 = v105;
    sub_10000D5B8(v63, v105, &qword_100156C88, &qword_1001104E8);
    v76 = 0;
  }

  else
  {
    v76 = 1;
    v65 = v107;
    v75 = v105;
  }

  (*(v106 + 56))(v75, v76, 1, v65);
  v77 = v103;
  v78 = &v103[*(v99 + 36)];
  sub_10000D5B8(v75, v78, &qword_100156C90, &qword_1001104F0);
  v79 = static Alignment.center.getter();
  v81 = v80;
  v82 = (v78 + *(sub_10003AE84(&qword_100156C20, &qword_100110490) + 36));
  *v82 = v79;
  v82[1] = v81;
  sub_10000D5B8(v41, v77, &qword_100156BD0, &qword_100110468);
  LOBYTE(v78) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v91 = v102;
  sub_10000D5B8(v77, v102, &qword_100156BC0, &qword_100110460);
  v92 = v91 + *(v101 + 36);
  *v92 = v78;
  *(v92 + 8) = v84;
  *(v92 + 16) = v86;
  *(v92 + 24) = v88;
  *(v92 + 32) = v90;
  *(v92 + 40) = 0;
  sub_10000D5B8(v91, v108, &qword_100156BB0, &qword_100110458);
}

uint64_t sub_10008F650@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v89 = a1;
  v93 = a2;
  v92 = sub_10003AE84(&qword_100156C88, &qword_1001104E8);
  v91 = *(v92 - 8);
  v2 = *(v91 + 64);
  __chkstk_darwin(v92);
  v87 = &v86 - v3;
  v4 = sub_10003AE84(&qword_100156C90, &qword_1001104F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v90 = &v86 - v6;
  v7 = sub_10003AE84(&qword_100156C80, &qword_1001104B8);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v86 - v10;
  v12 = sub_10003AE84(&qword_100156C70, &qword_1001104B0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v86 - v15;
  v17 = sub_10003AE84(&qword_100156C60, &qword_1001104A8);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v86 - v19;
  v21 = sub_10003AE84(&qword_100156C50, &qword_1001104A0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = &v86 - v23;
  v88 = sub_10003AE84(&qword_100156C40, &qword_100110498);
  v25 = *(*(v88 - 8) + 64);
  __chkstk_darwin(v88);
  v27 = &v86 - v26;
  sub_10008FD78();
  *&v11[*(v8 + 44)] = static Color.white.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000D5B8(v11, v16, &qword_100156C80, &qword_1001104B8);
  v28 = &v16[*(v13 + 44)];
  v29 = v99;
  *(v28 + 4) = v98;
  *(v28 + 5) = v29;
  *(v28 + 6) = v100;
  v30 = v95;
  *v28 = v94;
  *(v28 + 1) = v30;
  v31 = v97;
  *(v28 + 2) = v96;
  *(v28 + 3) = v31;
  sub_10003AE84(&qword_100156C98, &qword_1001104F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010DBE0;
  v33 = static Edge.Set.vertical.getter();
  *(inited + 32) = v33;
  v34 = static Edge.Set.leading.getter();
  *(inited + 33) = v34;
  v35 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v33)
  {
    v35 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v34)
  {
    v35 = Edge.Set.init(rawValue:)();
  }

  v36 = v92;
  EdgeInsets.init(_all:)();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_10000D5B8(v16, v20, &qword_100156C70, &qword_1001104B0);
  v45 = &v20[*(v17 + 36)];
  *v45 = v35;
  *(v45 + 1) = v38;
  *(v45 + 2) = v40;
  *(v45 + 3) = v42;
  *(v45 + 4) = v44;
  v45[40] = 0;
  v46 = static Edge.Set.trailing.getter();
  v47 = v89;
  EdgeInsets.init(_all:)();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  sub_10000D5B8(v20, v24, &qword_100156C60, &qword_1001104A8);
  v56 = &v24[*(v21 + 36)];
  *v56 = v46;
  *(v56 + 1) = v49;
  *(v56 + 2) = v51;
  *(v56 + 3) = v53;
  *(v56 + 4) = v55;
  v56[40] = 0;
  if (v47)
  {
    v57 = v87;
    static Material.ultraThin.getter();
    v58 = static Edge.Set.all.getter();
    *(v57 + *(sub_10003AE84(&qword_100156CA0, &qword_100110500) + 36)) = v58;
    *(v57 + *(sub_10003AE84(&qword_100156CA8, &qword_100110508) + 36)) = 0x3FC999999999999ALL;
    v59 = (v57 + *(v36 + 36));
    v60 = *(type metadata accessor for RoundedRectangle() + 20);
    v61 = enum case for RoundedCornerStyle.continuous(_:);
    v62 = type metadata accessor for RoundedCornerStyle();
    (*(*(v62 - 8) + 104))(&v59[v60], v61, v62);
    __asm { FMOV            V0.2D, #4.0 }

    *v59 = _Q0;
    *&v59[*(sub_10003AE84(&qword_100156CB0, &unk_100110510) + 36)] = 256;
    v68 = v90;
    sub_10000D5B8(v57, v90, &qword_100156C88, &qword_1001104E8);
    v69 = 0;
  }

  else
  {
    v69 = 1;
    v68 = v90;
  }

  (*(v91 + 56))(v68, v69, 1, v36);
  v70 = &v27[*(v88 + 36)];
  sub_10000D5B8(v68, v70, &qword_100156C90, &qword_1001104F0);
  v71 = static Alignment.center.getter();
  v73 = v72;
  v74 = (v70 + *(sub_10003AE84(&qword_100156C20, &qword_100110490) + 36));
  *v74 = v71;
  v74[1] = v73;
  sub_10000D5B8(v24, v27, &qword_100156C50, &qword_1001104A0);
  LOBYTE(v70) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v83 = v93;
  sub_10000D5B8(v27, v93, &qword_100156C40, &qword_100110498);
  result = sub_10003AE84(&qword_100156B80, &qword_100110448);
  v85 = v83 + *(result + 36);
  *v85 = v70;
  *(v85 + 8) = v76;
  *(v85 + 16) = v78;
  *(v85 + 24) = v80;
  *(v85 + 32) = v82;
  *(v85 + 40) = 0;
  return result;
}

uint64_t sub_10008FD78()
{
  v0 = type metadata accessor for LocalizedStringResource();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocalizedStringKey.init(stringLiteral:)();
  v5 = Text.init(_:tableName:bundle:comment:)();
  v7 = v6;
  v12[1] = v5;
  v12[2] = v6;
  v9 = v8 & 1;
  v13 = v8 & 1;
  v14 = v10;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.key.getter();
  (*(v1 + 8))(v4, v0);
  LocalizedStringKey.init(_:)();
  View.help(_:)();

  sub_10000C6AC(v5, v7, v9);
}

uint64_t sub_10008FF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10003AE84(&qword_100156A38, &qword_100110068);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_10008FFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42[1] = a1;
  v54 = a5;
  v8 = type metadata accessor for Locale();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v51 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for String.LocalizationValue();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v49 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AccessibilityTraits();
  v43 = *(v14 - 8);
  v44 = v14;
  v15 = *(v43 + 64);
  __chkstk_darwin(v14);
  v17 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10003AE84(&qword_100156A48, &qword_100110118);
  v18 = *(*(v50 - 8) + 64);
  v19 = __chkstk_darwin(v50);
  v21 = v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v45 = v42 - v23;
  v24 = __chkstk_darwin(v22);
  v46 = v42 - v25;
  v26 = __chkstk_darwin(v24);
  v47 = v42 - v27;
  __chkstk_darwin(v26);
  v48 = v42 - v28;
  v29 = CalculateExpression.activeError.getter();
  v52 = a3;
  v53 = a4;
  if (v29)
  {
    swift_getErrorValue();
    Error.localizedDescription.getter();
  }

  else
  {
  }

  LocalizedStringKey.init(_:)();
  sub_10003AE84(&qword_100156A50, &unk_100110120);
  sub_100004880(&qword_100156A58, &qword_100156A50, &unk_100110120);
  View.accessibilityLabel(_:)();

  v30 = a2;
  if (CalculateExpression.activeError.getter())
  {

    v55 = _swiftEmptyArrayStorage;
    sub_100090A7C(&qword_100156A68, &type metadata accessor for AccessibilityTraits);
    sub_10003AE84(&qword_100156A70, &qword_100112040);
    sub_100004880(&qword_100156A78, &qword_100156A70, &qword_100112040);
    v31 = v44;
    dispatch thunk of SetAlgebra.init<A>(_:)();
  }

  else
  {
    static AccessibilityTraits.isMathEquation.getter();
    v31 = v44;
  }

  v32 = v45;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  (*(v43 + 8))(v17, v31);
  sub_1000035CC(v21, &qword_100156A48, &qword_100110118);
  if (CalculateExpression.activeError.getter())
  {

    sub_100090800();
    isa = NSDictionary.init(dictionaryLiteral:)();
  }

  else
  {
    CalculateExpression.accessibilityMathEquation.getter();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v34 = v46;
  ModifiedContent<>.accessibilityCustomAttribute(_:value:)();

  sub_1000035CC(v32, &qword_100156A48, &qword_100110118);
  v35 = v47;
  ModifiedContent<>.accessibilityCustomAttribute(_:value:)();
  sub_1000035CC(v34, &qword_100156A48, &qword_100110118);
  v36 = v48;
  ModifiedContent<>.accessibilityCustomAttribute(_:value:)();
  sub_1000035CC(v35, &qword_100156A48, &qword_100110118);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v55 = String.init(localized:table:bundle:locale:comment:)();
  v56 = v37;
  v38 = swift_allocObject();
  v39 = v52;
  v40 = v53;
  v38[2] = v30;
  v38[3] = v39;
  v38[4] = v40;
  sub_10006345C();

  ModifiedContent<>.accessibilityAction<A>(named:_:)();

  return sub_1000035CC(v36, &qword_100156A48, &qword_100110118);
}

uint64_t sub_100090628()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for AccessibilityNotification.Announcement();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  CalculateExpression.copyToClipboard(overridePlaintext:)(0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  AccessibilityNotification.Announcement.init(_:)();
  _AccessibilityNotifications.post()();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1000907F4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_100090628();
}

unint64_t sub_100090800()
{
  result = qword_100156A60;
  if (!qword_100156A60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100156A60);
  }

  return result;
}

uint64_t sub_10009084C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000908A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_10009090C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100030CEC;

  return sub_10008ECAC(v2, v3, v0 + 32);
}

unint64_t sub_1000909B0()
{
  result = qword_100156AC0;
  if (!qword_100156AC0)
  {
    sub_10003AECC(&qword_100156AB0, &qword_1001102B0);
    sub_10001B814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156AC0);
  }

  return result;
}

uint64_t sub_100090A34()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_100090A7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100090AC4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10003AECC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_100090B58@<W0>(Calculator::CalculatorButtonRepresentable *a1@<X0>, uint64_t a2@<X1>, Calculator::CalculatorButtonRepresentable *a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 8);
  v6 = *(a2 + 11);
  v7 = *(a2 + 12);
  v8 = *(a2 + 10);
  v9 = *(a2 + 16);
  v10 = *a1;
  if (v5 == 1)
  {
    v10 = CalculatorButtonRepresentable.shiftedButton(isRPN:)(*(a2 + 10));
  }

  result = sub_100027A90(v10, v9);
  *a3 = v4;
  *(a3 + 1) = v5;
  *(a3 + 2) = v8;
  *(a3 + 3) = v6;
  *(a3 + 4) = v7;
  *(a3 + 5) = result;
  *(a3 + 6) = 0;
  return result;
}

uint64_t sub_100090BF0(void (*a1)(unint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = &_swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v16 = &_swiftEmptyArrayStorage;
  sub_10001B380(0, v5, 0);
  v6 = &_swiftEmptyArrayStorage;
  for (i = (a3 + 32); ; ++i)
  {
    v14 = *i;

    a1(&v15, &v14);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v10 = v15;
    v16 = v6;
    v12 = v6[2];
    v11 = v6[3];
    if (v12 >= v11 >> 1)
    {
      sub_10001B380((v11 > 1), v12 + 1, 1);
      v6 = v16;
    }

    v6[2] = v12 + 1;
    v6[v12 + 4] = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100090D1C(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = &_swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v27 = &_swiftEmptyArrayStorage;
  sub_10001B4E4(0, v4, 0);
  v5 = &_swiftEmptyArrayStorage;
  v7 = (a3 + 32);
  while (1)
  {
    v8 = *v7++;
    v25 = v8;
    a1(&v26, &v25);
    if (v3)
    {
      break;
    }

    v9 = v26;
    v10 = BYTE1(v26);
    v11 = BYTE2(v26);
    v12 = BYTE3(v26);
    v13 = BYTE4(v26);
    v14 = BYTE5(v26);
    v15 = BYTE6(v26);
    v27 = v5;
    v17 = v5[2];
    v16 = v5[3];
    if (v17 >= v16 >> 1)
    {
      v19 = BYTE2(v26);
      v22 = BYTE5(v26);
      v23 = BYTE4(v26);
      v21 = BYTE6(v26);
      sub_10001B4E4((v16 > 1), v17 + 1, 1);
      v15 = v21;
      v14 = v22;
      v13 = v23;
      v11 = v19;
      v5 = v27;
    }

    v5[2] = v17 + 1;
    v18 = &v5[v17] - v17;
    v18[32] = v9;
    v18[33] = v10;
    v18[34] = v11;
    v18[35] = v12;
    v18[36] = v13;
    v18[37] = v14;
    v18[38] = v15;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_100090E74@<W0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = v4;
  if (v4 == 47)
  {
    if (*(a2 + 9))
    {
      v5 = 47;
    }

    else
    {
      v5 = 55;
    }
  }

  v6 = *(a2 + 8);
  v7 = *(a2 + 10);
  v8 = *(a2 + 16);
  if (v6 == 1)
  {
    LOBYTE(v4) = CalculatorButtonRepresentable.shiftedButton(isRPN:)(v7);
  }

  result = sub_100027A90(v4, v8);
  *a3 = v5;
  *(a3 + 1) = v6;
  *(a3 + 2) = v7;
  *(a3 + 3) = 0;
  *(a3 + 5) = result;
  *(a3 + 6) = 0;
  return result;
}

uint64_t sub_100090F14(uint64_t a1)
{
  v1 = a1;
  v2 = *a1;
  if (*a1)
  {
    v3 = type metadata accessor for CalculatorKeypadConfiguration();
    v4 = sub_10003C9A0(v1 + *(v3 + 48));
    if ((*(v1 + 24) & 1) == 0)
    {
      swift_getKeyPath();
      v16 = v2;
      sub_10001B204(&qword_100154958, type metadata accessor for CalculatorLayout);

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v9 = *(v2 + 96);
      swift_getKeyPath();
      v16 = v2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v10 = v9 / *(v2 + 104);

      if (v10 <= 0.98)
      {
        v8 = &off_100149458;
      }

      else
      {
        v8 = &off_100149540;
      }

      v6 = &_swiftEmptyArrayStorage;
      goto LABEL_22;
    }

    if (v4)
    {
      if (qword_100154728 != -1)
      {
        swift_once();
      }

      v5 = qword_100160D98;
      swift_getKeyPath();
      v16 = v5;
      sub_10001B204(&qword_100154C00, type metadata accessor for AppSettings);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v5 + 73))
      {
        v6 = &off_100149978;
      }

      else
      {
        v6 = &off_100149758;
      }

      goto LABEL_21;
    }
  }

  else if ((*(a1 + 24) & 1) == 0)
  {
    v6 = &_swiftEmptyArrayStorage;
LABEL_21:
    v8 = &off_100149458;
    goto LABEL_22;
  }

  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v7 = qword_100160D98;
  swift_getKeyPath();
  v16 = v7;
  sub_10001B204(&qword_100154C00, type metadata accessor for AppSettings);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v7 + 73))
  {
    v6 = &off_100149868;
  }

  else
  {
    v6 = &off_100149648;
  }

  v8 = &off_100149348;
LABEL_22:
  __chkstk_darwin(a1);
  v15 = v1;
  v11 = sub_100090BF0(sub_1000912E8, v14, v8);

  if (v6[2])
  {
    __chkstk_darwin(v12);
    v15 = v1;
    sub_100090BF0(sub_100091314, v14, v6);
  }

  return v11;
}

uint64_t sub_100091340@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *__return_ptr, char *)@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v8[2] = *(v3 + 16);
  result = sub_100090D1C(a2, v8, v6);
  *a3 = result;
  return result;
}

uint64_t type metadata accessor for CalculatorKeypadConfiguration()
{
  result = qword_100156D28;
  if (!qword_100156D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10009143C()
{
  sub_1000914EC();
  if (v0 <= 0x3F)
  {
    sub_100091544();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CalculatorSizeClass(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000914EC()
{
  if (!qword_100156D38)
  {
    type metadata accessor for CalculatorLayout(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100156D38);
    }
  }
}

void sub_100091544()
{
  if (!qword_100156D40)
  {
    sub_100023E60();
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_100156D40);
    }
  }
}

void sub_1000915A0(char a1)
{
  v2 = v1;
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v4 = qword_100160D98;
  sub_10000362C();
  if ((a1 & 1) != 0 && (swift_getKeyPath(), sub_100011678(&qword_100154C00, type metadata accessor for AppSettings), ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v4 + 72) == 1))
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    *(v5 + 24) = 1;

    sub_1000F7484(sub_10006C1F4, v5);
  }

  else
  {
    sub_100091C5C(a1 & 1);
  }
}

uint64_t sub_1000916FC()
{
  swift_getKeyPath();
  sub_100011678(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 17);
}

uint64_t sub_10009179C()
{
  swift_getKeyPath();
  sub_100011678(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t sub_10009183C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100011678(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_10009190C(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100011678(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100091A1C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  v7 = *(*(v6 - 8) + 64);
  result = __chkstk_darwin(v6 - 8);
  v10 = &v14 - v9;
  if (!a1)
  {
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    type metadata accessor for MainActor();

    v12 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = &protocol witness table for MainActor;
    *(v13 + 32) = a2;
    *(v13 + 40) = a3 & 1;
    sub_100050560(0, 0, v10, &unk_100110800, v13);
  }

  return result;
}

uint64_t sub_100091B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  type metadata accessor for MainActor();
  *(v5 + 24) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100091BF0, v7, v6);
}

uint64_t sub_100091BF0()
{
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  sub_100091C5C(v1);
  v4 = *(v0 + 8);

  return v4();
}

void sub_100091C5C(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  v12 = v1;
  sub_100011678(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 16) != v2)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v12 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000048C8(v4, qword_100160D38);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136446210;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v1 + 16))
      {
        v9 = 1702195828;
      }

      else
      {
        v9 = 0x65736C6166;
      }

      if (*(v1 + 16))
      {
        v10 = 0xE400000000000000;
      }

      else
      {
        v10 = 0xE500000000000000;
      }

      v11 = sub_100006E5C(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "History View toggled with %{public}s", v7, 0xCu);
      sub_100003F80(v8);
    }
  }
}

uint64_t sub_100091F18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100011678(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_100091FE8(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100011678(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000920F8()
{
  v1 = OBJC_IVAR____TtC10Calculator26CalculatorToolbarViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100092378(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100030CEC;

  return sub_100091B54(a1, v4, v5, v6, v7);
}

uint64_t sub_100092458()
{
  v0 = sub_10003AE84(&qword_100156EF8, &qword_100110CA8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = type metadata accessor for TypeDisplayRepresentation();
  sub_100004078(v15, static CalculatorAppView.typeDisplayRepresentation);
  sub_1000048C8(v15, static CalculatorAppView.typeDisplayRepresentation);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v13 + 56))(v3, 1, 1, v12);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t CalculatorAppView.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_100154670 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return sub_1000048C8(v0, static CalculatorAppView.typeDisplayRepresentation);
}

uint64_t static CalculatorAppView.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100154670 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_1000048C8(v2, static CalculatorAppView.typeDisplayRepresentation);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10009284C()
{
  v0 = sub_10003AE84(&qword_100156F08, &qword_100110CB8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v26 = &v24 - v2;
  v3 = sub_10003AE84(&qword_100156EF8, &qword_100110CA8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v25 = &v24 - v5;
  v24 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v24 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v24);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = type metadata accessor for String.LocalizationValue();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_10003AE84(&qword_100156F10, &qword_100110CC0);
  v17 = *(sub_10003AE84(&qword_100156038, &qword_10010E3F0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10010BDE0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v9, enum case for LocalizedStringResource.BundleDescription.main(_:), v24);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v25, 1, 1, v14);
  v21 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v21 - 8) + 56))(v26, 1, 1, v21);
  DisplayRepresentation.init(title:subtitle:image:)();
  v22 = sub_1000772A0(v20);
  swift_setDeallocating();
  sub_1000940B4(v20 + v19);
  result = swift_deallocClassInstance();
  static CalculatorAppView.caseDisplayRepresentations = v22;
  return result;
}

uint64_t *CalculatorAppView.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (qword_100154678 != -1)
  {
    swift_once();
  }

  return &static CalculatorAppView.caseDisplayRepresentations;
}

uint64_t static CalculatorAppView.caseDisplayRepresentations.getter()
{
  if (qword_100154678 != -1)
  {
    swift_once();
  }
}

BOOL CalculatorAppView.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001499C0, v2);

  return v3 != 0;
}

uint64_t sub_100092D88@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100149A20, *a1);

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_100092DF4()
{
  result = qword_100156E58;
  if (!qword_100156E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156E58);
  }

  return result;
}

Swift::Int sub_100092E48()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100092EA4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_100092EEC()
{
  result = qword_100156E60;
  if (!qword_100156E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156E60);
  }

  return result;
}

unint64_t sub_100092F44()
{
  result = qword_100156E68;
  if (!qword_100156E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156E68);
  }

  return result;
}

unint64_t sub_100092F9C()
{
  result = qword_100156E70;
  if (!qword_100156E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156E70);
  }

  return result;
}

unint64_t sub_100093000()
{
  result = qword_100156E78;
  if (!qword_100156E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156E78);
  }

  return result;
}

unint64_t sub_100093054()
{
  result = qword_100156E80;
  if (!qword_100156E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156E80);
  }

  return result;
}

unint64_t sub_1000930A8()
{
  result = qword_100156E88;
  if (!qword_100156E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156E88);
  }

  return result;
}

unint64_t sub_100093100()
{
  result = qword_100156E90;
  if (!qword_100156E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156E90);
  }

  return result;
}

unint64_t sub_1000931BC()
{
  result = qword_100156E98;
  if (!qword_100156E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156E98);
  }

  return result;
}

uint64_t sub_100093210(uint64_t a1)
{
  v2 = sub_1000931BC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100093260()
{
  result = qword_100156EA0;
  if (!qword_100156EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156EA0);
  }

  return result;
}

unint64_t sub_1000932B8()
{
  result = qword_100156EA8;
  if (!qword_100156EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156EA8);
  }

  return result;
}

unint64_t sub_100093310()
{
  result = qword_100156EB0;
  if (!qword_100156EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156EB0);
  }

  return result;
}

uint64_t sub_100093364(uint64_t a1)
{
  v2 = sub_100093100();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000933B4()
{
  result = qword_100156EB8;
  if (!qword_100156EB8)
  {
    sub_10003AECC(&qword_100156EC0, &qword_100110A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156EB8);
  }

  return result;
}

unint64_t sub_10009342C()
{
  result = qword_100156EC8;
  if (!qword_100156EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156EC8);
  }

  return result;
}

uint64_t sub_100093480()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for LocalizedStringResource();
  sub_100004078(v9, qword_100160CB0);
  sub_1000048C8(v9, qword_100160CB0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_10009366C()
{
  v0 = type metadata accessor for IntentAuthenticationPolicy();
  sub_100004078(v0, qword_100160CC8);
  v1 = sub_1000048C8(v0, qword_100160CC8);
  v2 = enum case for IntentAuthenticationPolicy.alwaysAllowed(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

void (*sub_10009373C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = IntentParameter.wrappedValue.modify();
  return sub_1000937B0;
}

void sub_1000937B0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100093800()
{
  result = qword_100156ED0;
  if (!qword_100156ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156ED0);
  }

  return result;
}

unint64_t sub_100093858()
{
  result = qword_100156ED8;
  if (!qword_100156ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156ED8);
  }

  return result;
}

unint64_t sub_1000938B0()
{
  result = qword_100156EE0;
  if (!qword_100156EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156EE0);
  }

  return result;
}

unint64_t sub_100093930()
{
  result = qword_100156EE8;
  if (!qword_100156EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156EE8);
  }

  return result;
}

uint64_t sub_100093A6C@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_1000048C8(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_100093B20(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to OpenIntent.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100093930();
  *v6 = v2;
  v6[1] = sub_100030CEC;

  return OpenIntent.perform()(a1, a2, v7);
}

uint64_t sub_100093BD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100093C38();
  *a1 = result;
  return result;
}

uint64_t sub_100093C38()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = *(v31 + 64);
  __chkstk_darwin(v0);
  v30 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10003AE84(&qword_100156EF0, &qword_100110CA0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v29 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v28 = v27 - v7;
  v8 = sub_10003AE84(&qword_100156EF8, &qword_100110CA8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v27 - v10;
  v12 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Locale();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v19 = type metadata accessor for String.LocalizationValue();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v21 = type metadata accessor for LocalizedStringResource();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v27[1] = sub_10003AE84(&qword_100156F00, &qword_100110CB0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v22 + 56))(v11, 1, 1, v21);
  v33 = 0;
  v24 = type metadata accessor for IntentDialog();
  v25 = *(*(v24 - 8) + 56);
  v25(v28, 1, 1, v24);
  v25(v29, 1, 1, v24);
  (*(v31 + 104))(v30, enum case for InputConnectionBehavior.default(_:), v32);
  sub_1000931BC();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
}

uint64_t sub_1000940B4(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_100156038, &qword_10010E3F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100094150()
{
  sub_100002B70();
  if (v0 <= 0x3F)
  {
    sub_100002BD4(319, &unk_100156F88, &type metadata accessor for LayoutDirection);
    if (v1 <= 0x3F)
    {
      sub_100002BD4(319, &qword_100156648, type metadata accessor for CalculatorViewModel);
      if (v2 <= 0x3F)
      {
        sub_100002BD4(319, &qword_1001557F0, type metadata accessor for CalculatorLayout);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10009425C()
{
  v0 = sub_10003AE84(&qword_100157088, &unk_100110E60);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - v3;
  v5 = swift_projectBox();
  (*(v1 + 16))(v4, v5, v0);
  Bindable.wrappedValue.getter();
  (*(v1 + 8))(v4, v0);
  v6 = v10;
  if (*(v10 + 51) == 1)
  {
    *(v10 + 51) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v9 - 2) = v6;
    *(&v9 - 8) = 1;
    v10 = v6;
    sub_10000F330(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100094450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalculatorDetailsView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000944B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalculatorDetailsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100094550(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100094598(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1000945D8()
{
  v1[28] = v0;
  v2 = *(*(sub_10003AE84(&qword_100157268, &qword_100111098) - 8) + 64) + 15;
  v1[29] = swift_task_alloc();
  v3 = sub_10003AE84(&qword_1001572D0, &qword_1001110F0);
  v1[30] = v3;
  v4 = *(v3 - 8);
  v1[31] = v4;
  v5 = *(v4 + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = type metadata accessor for StoreContext();
  sub_100097AE0(&qword_100157258, v6, type metadata accessor for StoreContext);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100094730, v8, v7);
}

uint64_t sub_100094730()
{
  v53 = v0;
  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000048C8(v1, qword_100160D38);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Attempting to fetch all existing records from db.", v4, 2u);
  }

  v5 = *(v0 + 256);
  v6 = *(v0 + 264);
  v7 = *(v0 + 224);
  v8 = *(v0 + 232);

  v9 = sub_10003AE84(&qword_100157270, &qword_1001110A0);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_10003AE84(&qword_1001572D8, &qword_1001110F8);
  v10 = *(sub_10003AE84(&qword_1001572E0, &qword_100111100) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  *(swift_allocObject() + 16) = xmmword_10010BDE0;
  swift_getKeyPath();
  sub_100097AE0(&qword_1001572E8, 255, &type metadata accessor for Date);
  SortDescriptor.init<A>(_:order:)();
  type metadata accessor for SchemaV1.HistoryRecord();
  sub_100097AE0(&qword_100154BC8, 255, type metadata accessor for SchemaV1.HistoryRecord);
  FetchDescriptor.init(predicate:sortBy:)();
  sub_100097AE0(&qword_100157260, v13, type metadata accessor for StoreContext);
  ModelActor.modelContext.getter();
  v14 = dispatch thunk of ModelContext.fetch<A>(_:)();

  v15 = v14;
  if (v14 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = v14;
    if (result)
    {
      goto LABEL_7;
    }

LABEL_25:
    v18 = &_swiftEmptyArrayStorage;
    goto LABEL_26;
  }

  result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_25;
  }

LABEL_7:
  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v17 = 0;
  v47 = v15 & 0xC000000000000001;
  v18 = &_swiftEmptyArrayStorage;
  v48 = result;
  v49 = v15;
  do
  {
    v50 = v17;
    if (v47)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v19 = *(v15 + 8 * v17 + 32);
    }

    *(v0 + 144) = v19;
    swift_getKeyPath();
    sub_100097AE0(&qword_100154BC0, 255, type metadata accessor for SchemaV1.HistoryRecord);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v20 = *(v0 + 48);
    v21 = *(v0 + 56);
    *(&v52 + 1) = &type metadata for String;
    *&v51 = v20;
    *(&v51 + 1) = v21;
    sub_100071F2C(&v51, 0);
    *(v0 + 152) = v19;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v22 = *(v0 + 64);
    v23 = *(v0 + 72);
    *(&v52 + 1) = &type metadata for String;
    *&v51 = v22;
    *(&v51 + 1) = v23;
    sub_100071F2C(&v51, 1);
    *(v0 + 160) = v19;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v24 = *(v0 + 272);
    *(&v52 + 1) = &type metadata for Bool;
    LOBYTE(v51) = v24;
    sub_100071F2C(&v51, 2);
    *(v0 + 168) = v19;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v25 = *(v0 + 273);
    *(&v52 + 1) = &type metadata for Bool;
    LOBYTE(v51) = v25;
    sub_100071F2C(&v51, 3);
    *(v0 + 176) = v19;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v26 = *(v0 + 274);
    *(&v52 + 1) = &type metadata for Bool;
    LOBYTE(v51) = v26;
    sub_100071F2C(&v51, 4);
    *(v0 + 184) = v19;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v27 = *(v0 + 80);
    v28 = *(v0 + 88);
    *(&v52 + 1) = &type metadata for String;
    *&v51 = v27;
    *(&v51 + 1) = v28;
    sub_100071F2C(&v51, 5);
    *(v0 + 192) = v19;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v29 = *(v0 + 96);
    v30 = *(v0 + 104);
    *(&v52 + 1) = &type metadata for String;
    *&v51 = v29;
    *(&v51 + 1) = v30;
    sub_100071F2C(&v51, 6);
    *(v0 + 200) = v19;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    sub_10004B3E8();
    PersistentModel.getValue<A>(forKey:)();

    v31 = *(v0 + 120);
    if (v31)
    {
      v32 = *(v0 + 112);
      *(&v52 + 1) = &type metadata for String;
      *&v51 = v32;
      *(&v51 + 1) = v31;
    }

    else
    {
      v51 = 0u;
      v52 = 0u;
    }

    sub_100071F2C(&v51, 7);
    *(v0 + 208) = v19;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v33 = *(v0 + 136);
    if (v33)
    {
      v34 = *(v0 + 128);
      *(&v52 + 1) = &type metadata for String;
      *&v51 = v34;
      *(&v51 + 1) = v33;
    }

    else
    {
      v51 = 0u;
      v52 = 0u;
    }

    sub_100071F2C(&v51, 8);
    *(v0 + 40) = type metadata accessor for Date();
    sub_100019850((v0 + 16));
    *(v0 + 216) = v19;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    sub_100097AE0(&qword_100154BD0, 255, &type metadata accessor for Date);
    PersistentModel.getValue<A>(forKey:)();

    sub_100071F2C(v0 + 16, 9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1000AC17C(0, v18[2] + 1, 1, v18);
    }

    v36 = v18[2];
    v35 = v18[3];
    if (v36 >= v35 >> 1)
    {
      v18 = sub_1000AC17C((v35 > 1), v36 + 1, 1, v18);
    }

    ++v17;

    v18[2] = v36 + 1;
    v18[v36 + 4] = &_swiftEmptyDictionarySingleton;
    v15 = v49;
  }

  while (v48 != v50 + 1);
LABEL_26:

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  v39 = os_log_type_enabled(v37, v38);
  v41 = *(v0 + 248);
  v40 = *(v0 + 256);
  v42 = *(v0 + 240);
  if (v39)
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "Successfully fetched all existing records from db.", v43, 2u);
  }

  (*(v41 + 8))(v40, v42);
  v44 = *(v0 + 256);
  v45 = *(v0 + 232);

  v46 = *(v0 + 8);

  return v46(v18);
}

uint64_t sub_100095308(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(*(type metadata accessor for GenericRecord() - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = type metadata accessor for StoreContext();
  sub_100097AE0(&qword_100157258, v4, type metadata accessor for StoreContext);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000953EC, v6, v5);
}

uint64_t sub_1000953EC()
{
  v19 = v0;
  v1 = v0[10];
  sub_100045810(v0[8], v1);
  v2 = type metadata accessor for SchemaV1.HistoryRecord();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_10007A434(v1);
  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000048C8(v6, qword_100160D38);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v10 = v18;
    *v9 = 136315138;
    v0[7] = v5;
    swift_getKeyPath();
    sub_100097AE0(&qword_100154BC0, 255, type metadata accessor for SchemaV1.HistoryRecord);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    sub_100097AE0(&qword_100154BC8, 255, type metadata accessor for SchemaV1.HistoryRecord);
    PersistentModel.getValue<A>(forKey:)();

    v11 = sub_100006E5C(v0[4], v0[5], &v18);

    *(v9 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Adding record: %s to db.", v9, 0xCu);
    sub_100003F80(v10);
  }

  v12 = v0[11];
  v13 = v0[9];
  sub_100097AE0(&qword_100157260, v14, type metadata accessor for StoreContext);
  ModelActor.modelContext.getter();
  sub_100097AE0(&qword_100154BC8, 255, type metadata accessor for SchemaV1.HistoryRecord);
  dispatch thunk of ModelContext.insert<A>(_:)();

  ModelActor.modelContext.getter();
  dispatch thunk of ModelContext.save()();

  v15 = v0[10];

  v16 = v0[1];

  return v16();
}

uint64_t sub_10009597C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = v3;
  *(v4 + 96) = a3;
  *(v4 + 24) = a1;
  v5 = *(*(sub_10003AE84(&qword_100157268, &qword_100111098) - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 56) = swift_task_alloc();
  v6 = sub_10003AE84(&qword_100157270, &qword_1001110A0);
  *(v4 + 64) = v6;
  v7 = *(v6 - 8);
  *(v4 + 72) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = type metadata accessor for StoreContext();
  sub_100097AE0(&qword_100157258, v9, type metadata accessor for StoreContext);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100095AE8, v11, v10);
}

uint64_t sub_100095AE8()
{
  v36 = v0;
  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = type metadata accessor for Logger();
  sub_1000048C8(v2, qword_100160D38);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 24);
    v5 = *(v0 + 32);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v35 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100006E5C(v6, v5, &v35);
    _os_log_impl(&_mh_execute_header, v3, v4, "Deleting record: %s from db.", v7, 0xCu);
    sub_100003F80(v8);
  }

  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  v11 = *(v0 + 72);
  v13 = *(v0 + 32);
  v12 = *(v0 + 40);
  v14 = *(v0 + 96);
  v15 = *(v0 + 24);
  v16 = swift_task_alloc();
  *(v16 + 16) = v15;
  *(v16 + 24) = v13;
  *(v0 + 16) = type metadata accessor for SchemaV1.HistoryRecord();
  Predicate.init(_:)();
  sub_100097AE0(&qword_100157260, v17, type metadata accessor for StoreContext);
  ModelActor.modelContext.getter();
  v18 = *(v11 + 16);
  v19 = (v11 + 56);
  v20 = *(v0 + 80);
  v21 = *(v0 + 64);
  if (v14 == 1)
  {
    v22 = *(v0 + 56);
    v18(v22, v20, *(v0 + 64));
    (*v19)(v22, 0, 1, v21);
    sub_100097AE0(&qword_100154BC8, 255, type metadata accessor for SchemaV1.HistoryRecord);
    dispatch thunk of ModelContext.delete<A>(model:where:includeSubclasses:)();
    v24 = *(v0 + 72);
    v23 = *(v0 + 80);
    v25 = *(v0 + 56);
    v26 = *(v0 + 64);

    sub_1000035CC(v25, &qword_100157268, &qword_100111098);
    (*(v24 + 8))(v23, v26);
  }

  else
  {
    v27 = *(v0 + 48);
    v18(v27, v20, *(v0 + 64));
    (*v19)(v27, 0, 1, v21);
    sub_100097AE0(&qword_100154BC8, 255, type metadata accessor for SchemaV1.HistoryRecord);
    dispatch thunk of ModelContext.delete<A>(model:where:includeSubclasses:)();
    v28 = *(v0 + 88);
    v29 = *(v0 + 40);
    sub_1000035CC(*(v0 + 48), &qword_100157268, &qword_100111098);

    ModelActor.modelContext.getter();
    dispatch thunk of ModelContext.save()();
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  }

  v30 = *(v0 + 80);
  v32 = *(v0 + 48);
  v31 = *(v0 + 56);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_100096154@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v26 = a3;
  v7 = sub_10003AE84(&qword_100157278, &qword_1001110A8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = sub_10003AE84(&qword_100157280, &qword_1001110B0);
  v13 = *(v12 - 8);
  v27 = v12;
  v28 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v17 = sub_10003AE84(&qword_100157288, &qword_1001110B8);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v25 - v20;
  v22 = *a1;
  v29 = a2;
  v30 = v26;
  static PredicateExpressions.build_Arg<A>(_:)();
  sub_100004880(&qword_100157290, &qword_100157278, &qword_1001110A8);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v8 + 8))(v11, v7);
  a4[3] = sub_10003AE84(&qword_100157298, &qword_1001110E8);
  a4[4] = sub_100097920();
  sub_100019850(a4);
  sub_100004880(&qword_1001572C0, &qword_100157288, &qword_1001110B8);
  sub_100004880(&qword_1001572C8, &qword_100157280, &qword_1001110B0);
  v23 = v27;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v28 + 8))(v16, v23);
  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_1000964C4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for StoreContext();
  sub_100097AE0(&qword_100157258, v3, type metadata accessor for StoreContext);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v5;
  v2[6] = v4;

  return _swift_task_switch(sub_10009657C, v5, v4);
}

uint64_t sub_10009657C()
{
  v33 = v0;
  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  v0[7] = sub_1000048C8(v2, qword_100160D38);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v32[0] = v7;
    *v6 = 136315138;
    v8 = Array.description.getter();
    v10 = sub_100006E5C(v8, v9, v32);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deleting records with identifiers: %s from db.", v6, 0xCu);
    sub_100003F80(v7);
  }

  v12 = v0[2];
  v13 = v12[2];
  v0[8] = v13;
  if (v13)
  {
    v0[9] = 0;
    v14 = v12[5];
    v0[10] = v14;
    v15 = v12[4];

    v16 = swift_task_alloc();
    v0[11] = v16;
    *v16 = v0;
    v16[1] = sub_100096A90;
    v17 = v0[3];

    return sub_10009597C(v15, v14, 1);
  }

  else
  {
    v20 = v0[3];
    v19 = v0[4];
    sub_100097AE0(&qword_100157260, v11, type metadata accessor for StoreContext);
    ModelActor.modelContext.getter();
    dispatch thunk of ModelContext.save()();
    v21 = v0[7];
    v22 = v0[2];

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = v0[2];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v32[0] = v27;
      *v26 = 136315138;
      v28 = Array.description.getter();
      v30 = sub_100006E5C(v28, v29, v32);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "Successfully deleted records with identifiers: %s from db.", v26, 0xCu);
      sub_100003F80(v27);
    }

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_100096A90()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = v2[10];

  v6 = v2[6];
  v7 = v2[5];
  if (v0)
  {
    v8 = sub_100096FD0;
  }

  else
  {
    v8 = sub_100096BE4;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100096BE4(uint64_t a1, uint64_t a2)
{
  v36 = v2;
  v3 = v2[9] + 1;
  if (v3 == v2[8])
  {
    v4 = v2[12];
    v6 = v2[3];
    v5 = v2[4];
    sub_100097AE0(&qword_100157260, a2, type metadata accessor for StoreContext);
    ModelActor.modelContext.getter();
    dispatch thunk of ModelContext.save()();
    if (v4)
    {

      v7 = v2[7];
      v8 = v2[2];

      swift_errorRetain();
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v9, v10))
      {

        goto LABEL_12;
      }

      v11 = v2[2];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v35[0] = v14;
      *v12 = 138412546;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      *(v12 + 12) = 2080;
      v16 = Array.description.getter();
      v18 = sub_100006E5C(v16, v17, v35);

      *(v12 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v9, v10, "Error: %@ deleting records with identifiers: %s from datastore.", v12, 0x16u);
      sub_1000035CC(v13, &qword_100154BE8, &qword_10010C010);

      sub_100003F80(v14);
    }

    else
    {
      v25 = v2[7];
      v26 = v2[2];

      v9 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v9, v27))
      {
        v28 = v2[2];
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v35[0] = v30;
        *v29 = 136315138;
        v31 = Array.description.getter();
        v33 = sub_100006E5C(v31, v32, v35);

        *(v29 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v9, v27, "Successfully deleted records with identifiers: %s from db.", v29, 0xCu);
        sub_100003F80(v30);
      }
    }

LABEL_12:
    v34 = v2[1];

    return v34();
  }

  v2[9] = v3;
  v19 = v2[2] + 16 * v3;
  v20 = *(v19 + 40);
  v2[10] = v20;
  v21 = *(v19 + 32);

  v22 = swift_task_alloc();
  v2[11] = v22;
  *v22 = v2;
  v22[1] = sub_100096A90;
  v23 = v2[3];

  return sub_10009597C(v21, v20, 1);
}

uint64_t sub_100096FD0()
{
  v17 = v0;
  v1 = v0[12];
  v2 = v0[7];
  v3 = v0[2];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 138412546;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    *(v7 + 12) = 2080;
    v11 = Array.description.getter();
    v13 = sub_100006E5C(v11, v12, &v16);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error: %@ deleting records with identifiers: %s from datastore.", v7, 0x16u);
    sub_1000035CC(v8, &qword_100154BE8, &qword_10010C010);

    sub_100003F80(v9);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000971B8(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = type metadata accessor for StoreContext();
  sub_100097AE0(&qword_100157258, v4, type metadata accessor for StoreContext);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100097274, v6, v5);
}

uint64_t sub_100097274()
{
  v38 = v0;
  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000048C8(v1, qword_100160D38);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v37[0] = v7;
    *v6 = 136315138;
    dispatch thunk of static PersistentModel.schemaMetadata.getter();
    type metadata accessor for Schema.PropertyMetadata();
    v8 = Array.description.getter();
    v10 = v9;

    v11 = sub_100006E5C(v8, v10, v37);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Deleting all records of type: %s from db.", v6, 0xCu);
    sub_100003F80(v7);
  }

  v13 = v0[5];
  v12 = v0[6];
  v15 = v0[3];
  v14 = v0[4];
  sub_100097AE0(&qword_100157260, v16, type metadata accessor for StoreContext);
  ModelActor.modelContext.getter();
  v0[2] = v15;
  v17 = type metadata accessor for Predicate();
  v18 = type metadata accessor for Optional();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64) + 15;
  v21 = swift_task_alloc();
  (*(*(v17 - 8) + 56))(v21, 1, 1, v17);
  dispatch thunk of ModelContext.delete<A>(model:where:includeSubclasses:)();
  v22 = v0[5];
  v23 = v0[6];
  (*(v19 + 8))(v21, v18);

  ModelActor.modelContext.getter();
  dispatch thunk of ModelContext.save()();

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v29 = v0[3];
    v30 = v0[4];
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v37[0] = v32;
    *v31 = 136315138;
    dispatch thunk of static PersistentModel.schemaMetadata.getter();
    type metadata accessor for Schema.PropertyMetadata();
    v33 = Array.description.getter();
    v35 = v34;

    v36 = sub_100006E5C(v33, v35, v37);

    *(v31 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v26, v27, "Successfully deleted all records of type: %s from db.", v31, 0xCu);
    sub_100003F80(v32);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_1000977CC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_100097878()
{
  v0 = type metadata accessor for StoreContext();
  v2 = sub_100097AE0(&qword_100157260, v1, type metadata accessor for StoreContext);

  return ModelActor.unownedExecutor.getter(v0, v2);
}

uint64_t sub_1000978F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

unint64_t sub_100097920()
{
  result = qword_1001572A0;
  if (!qword_1001572A0)
  {
    sub_10003AECC(&qword_100157298, &qword_1001110E8);
    sub_1000979AC();
    sub_100097A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001572A0);
  }

  return result;
}

unint64_t sub_1000979AC()
{
  result = qword_1001572A8;
  if (!qword_1001572A8)
  {
    sub_10003AECC(&qword_100157288, &qword_1001110B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001572A8);
  }

  return result;
}

unint64_t sub_100097A30()
{
  result = qword_1001572B0;
  if (!qword_1001572B0)
  {
    sub_10003AECC(&qword_100157280, &qword_1001110B0);
    sub_100004880(&qword_1001572B8, &qword_100157278, &qword_1001110A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001572B0);
  }

  return result;
}

uint64_t sub_100097AE0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100097B28(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Tips.EmptyDonation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100097C34@<X0>(uint64_t *a1@<X8>)
{
  sub_10002DD60();
  result = Tip.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100097C74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100097CBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100097D18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v145 = a1;
  v3 = type metadata accessor for LongPressGesture();
  v140 = *(v3 - 8);
  v141 = v3;
  v4 = *(v140 + 64);
  __chkstk_darwin(v3);
  v139 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10003AE84(&qword_100157390, &qword_1001115D8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v142 = &v115 - v9;
  v151 = type metadata accessor for AccessibilityTraits();
  v136 = *(v151 - 8);
  v10 = *(v136 + 64);
  v11 = __chkstk_darwin(v151);
  v134 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v135 = &v115 - v14;
  __chkstk_darwin(v13);
  v133 = &v115 - v15;
  v16 = type metadata accessor for LocalizedStringResource();
  v129 = *(v16 - 8);
  v130 = v16;
  v17 = *(v129 + 64);
  __chkstk_darwin(v16);
  v128 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for EnvironmentValues();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10003AE84(&qword_1001573B0, &qword_1001115E8);
  v123 = *(v24 - 8);
  v124 = v24;
  v25 = *(v123 + 64);
  __chkstk_darwin(v24);
  v27 = &v115 - v26;
  v148 = sub_10003AE84(&qword_1001573A8, &qword_1001115E0);
  v28 = *(*(v148 - 8) + 64);
  __chkstk_darwin(v148);
  v126 = &v115 - v29;
  v138 = sub_10003AE84(&qword_100157388, &qword_1001115D0);
  v30 = *(*(v138 - 8) + 64);
  v31 = __chkstk_darwin(v138);
  v127 = &v115 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v131 = &v115 - v34;
  v35 = __chkstk_darwin(v33);
  v132 = &v115 - v36;
  v37 = __chkstk_darwin(v35);
  v149 = &v115 - v38;
  v39 = __chkstk_darwin(v37);
  v150 = &v115 - v40;
  __chkstk_darwin(v39);
  v152 = &v115 - v41;
  v42 = swift_allocObject();
  v43 = *(v1 + 48);
  *(v42 + 48) = *(v1 + 32);
  *(v42 + 64) = v43;
  *(v42 + 80) = *(v1 + 64);
  *(v42 + 96) = *(v1 + 80);
  v44 = *(v1 + 16);
  *(v42 + 16) = *v1;
  *(v42 + 32) = v44;
  v153 = v1;
  sub_100027868(v1, v167);
  sub_10003AE84(&qword_1001573E0, &qword_1001115F8);
  sub_100099954();
  v122 = v27;
  Button.init(action:label:)();
  v173 = *(v1 + 24);
  v45 = *(v1 + 16);
  v172 = v45;
  v143 = v7;
  v144 = v6;
  v115 = v20;
  v116 = v19;
  v137 = v23;
  if (v173 == 1)
  {
    v169 = v45;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v46 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v172, &qword_100157408, &qword_100111608);
    (*(v20 + 8))(v23, v19);
    v45 = v169;
  }

  v47 = *(v1 + 57);
  v121 = v47;
  v48 = *(v1 + 58);
  v146 = *(v1 + 59);
  LODWORD(v147) = v48;
  v49 = *(v1 + 60);
  v50 = *(v1 + 61);
  v118 = v50;
  v51 = *(v1 + 62);
  v119 = *(v1 + 63);
  v120 = v49;
  v52 = *(v1 + 64);
  v53 = *(v1 + 72);
  swift_getKeyPath();
  *&v167[0] = v45;
  sub_1000999E8(&qword_100157410, type metadata accessor for CalculatorKeypadViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v117 = *(v45 + 16);

  KeyPath = swift_getKeyPath();
  type metadata accessor for CalculatorViewModel();
  v125 = sub_1000999E8(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  v55 = Environment.init<A>(_:)();
  v57 = v56;
  v58 = swift_getKeyPath();
  type metadata accessor for CalculatorToolbarViewModel();
  sub_1000999E8(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel);
  v59 = Environment.init<A>(_:)();
  v165 = 0;
  v163 = v57 & 1;
  v161 = 0;
  v159 = v60 & 1;
  LOBYTE(v154) = v47;
  BYTE1(v154) = v147;
  BYTE2(v154) = v146;
  v61 = v119;
  v62 = v120;
  BYTE3(v154) = v120;
  BYTE4(v154) = v50;
  BYTE5(v154) = v51;
  BYTE6(v154) = v119;
  *(&v154 + 1) = v52;
  *&v155 = v53;
  BYTE8(v155) = v117;
  *(&v155 + 9) = *v166;
  HIDWORD(v155) = *&v166[3];
  *&v156 = KeyPath;
  BYTE8(v156) = 0;
  HIDWORD(v156) = *&v164[3];
  *(&v156 + 9) = *v164;
  *&v157 = v55;
  BYTE8(v157) = v57 & 1;
  HIDWORD(v157) = *&v162[3];
  *(&v157 + 9) = *v162;
  *&v158[0] = v58;
  BYTE8(v158[0]) = 0;
  HIDWORD(v158[0]) = *&v160[3];
  *(v158 + 9) = *v160;
  *&v158[1] = v59;
  BYTE8(v158[1]) = v60 & 1;
  sub_100004880(&qword_1001573B8, &qword_1001573B0, &qword_1001115E8);
  sub_100026B34();
  v63 = v126;
  v64 = v124;
  v65 = v122;
  View.buttonStyle<A>(_:)();
  v167[2] = v156;
  v167[3] = v157;
  v168[0] = v158[0];
  *(v168 + 9) = *(v158 + 9);
  v167[0] = v154;
  v167[1] = v155;
  sub_100027BD0(v167);
  (*(v123 + 8))(v65, v64);
  LOBYTE(v64) = *(v2 + 80);
  v66 = swift_getKeyPath();
  v67 = swift_allocObject();
  *(v67 + 16) = v64;
  v68 = (v63 + *(v148 + 36));
  *v68 = v66;
  v68[1] = sub_1000296E4;
  v68[2] = v67;
  v69 = 0x1000000000000;
  if (!v61)
  {
    v69 = 0;
  }

  v70 = 0x10000000000;
  if (!v51)
  {
    v70 = 0;
  }

  v71 = &_mh_execute_header;
  if (!v118)
  {
    v71 = 0;
  }

  v72 = 0x1000000;
  if (!v62)
  {
    v72 = 0;
  }

  v73 = 0x10000;
  if (!v146)
  {
    v73 = 0;
  }

  v74 = 256;
  if (!v147)
  {
    v74 = 0;
  }

  v147 = v74 | v121 | v73 | v72;
  v75 = v71 | v70 | v69;
  sub_100025D2C(v147 | v75);
  v76 = v128;
  sub_100027C24();
  LocalizedStringResource.key.getter();
  (*(v129 + 8))(v76, v130);
  LocalizedStringKey.init(_:)();
  v77 = Text.init(_:tableName:bundle:comment:)();
  v79 = v78;
  v81 = v80;
  sub_1000269F8();
  v82 = v127;
  View.accessibilityLabel(_:)();
  sub_10000C6AC(v77, v79, v81 & 1);

  sub_1000035CC(v63, &qword_1001573A8, &qword_1001115E0);
  v83 = v147;
  v84 = sub_100025D2C(v147 | v75);
  sub_10002866C(v84);
  v85 = v131;
  ModifiedContent<>.accessibilityIdentifier(_:)();

  sub_1000035CC(v82, &qword_100157388, &qword_1001115D0);
  sub_100025D2C(v83 | v75);
  sub_100029028();
  v86 = v132;
  ModifiedContent<>.accessibilityHint(_:)();

  sub_1000035CC(v85, &qword_100157388, &qword_1001115D0);
  v87 = v133;
  static AccessibilityTraits.isButton.getter();
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  v88 = v136;
  v89 = *(v136 + 8);
  v90 = v87;
  v91 = v75;
  v89(v90, v151);
  v92 = v86;
  v93 = v147;
  sub_1000035CC(v92, &qword_100157388, &qword_1001115D0);
  if (sub_100025D2C(v93 | v75) == 28)
  {
    v94 = v134;
    static AccessibilityTraits.isToggle.getter();
  }

  else
  {
    v94 = v134;
    static AccessibilityTraits.isKeyboardKey.getter();
  }

  v95 = v135;
  v96 = v94;
  v97 = v151;
  (*(v88 + 32))(v135, v96, v151);
  v98 = v149;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  v89(v95, v97);
  sub_1000035CC(v98, &qword_100157388, &qword_1001115D0);
  v171 = *(v2 + 8);
  v170 = *v2;
  v99 = v170;
  LOBYTE(v98) = v171;

  v100 = v137;
  if ((v98 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v101 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v170, &qword_100154810, &qword_10010DF90);
    (*(v115 + 8))(v100, v116);
    v99 = v154;
  }

  swift_getKeyPath();
  *&v154 = v99;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v102 = *(v99 + 52);

  LocalizedStringKey.init(stringLiteral:)();
  sub_100025D2C(v93 | v91);
  v103 = v150;
  ModifiedContent<>.accessibilityValue(_:isEnabled:)();

  sub_1000035CC(v103, &qword_100157388, &qword_1001115D0);
  v104 = v139;
  LongPressGesture.init(minimumDuration:maximumDistance:)();
  v105 = swift_allocObject();
  v106 = *(v2 + 48);
  *(v105 + 48) = *(v2 + 32);
  *(v105 + 64) = v106;
  *(v105 + 80) = *(v2 + 64);
  *(v105 + 96) = *(v2 + 80);
  v107 = *(v2 + 16);
  *(v105 + 16) = *v2;
  *(v105 + 32) = v107;
  sub_100027868(v2, &v154);
  sub_1000999E8(&qword_100157418, &type metadata accessor for LongPressGesture);
  v108 = v141;
  v109 = v142;
  Gesture.onEnded(_:)();

  (*(v140 + 8))(v104, v108);
  v110 = sub_100025D2C(v93 | v91);
  if (v110 == 53 || v110 == 2)
  {
    static GestureMask.all.getter();
  }

  else
  {
    static GestureMask.subviews.getter();
  }

  v111 = v144;
  v112 = v143;
  sub_10002693C();
  sub_100004880(&qword_1001573D8, &qword_100157390, &qword_1001115D8);
  v113 = v152;
  View.simultaneousGesture<A>(_:including:)();
  (*(v112 + 8))(v109, v111);
  return sub_1000035CC(v113, &qword_100157388, &qword_1001115D0);
}

void sub_100098CB4(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v37[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v38 + 9) = *(a1 + 41);
  v38[0] = *(a1 + 32);
  v7 = *&v38[0];
  if (BYTE8(v38[1]) == 1)
  {
    v8 = *&v38[1];
    sub_100023D3C(*&v38[0], *(&v38[0] + 1), *&v38[1]);
    if (!v7)
    {
      goto LABEL_25;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(v38, &qword_100157420, &qword_1001116F8);
    (*(v3 + 8))(v6, v2);
    v7 = v37[0];
    v8 = v37[2];
    if (!v37[0])
    {
      goto LABEL_25;
    }
  }

  v10 = 0x1000000000000;
  if (!*(a1 + 63))
  {
    v10 = 0;
  }

  v11 = 0x10000000000;
  if (!*(a1 + 62))
  {
    v11 = 0;
  }

  v12 = &_mh_execute_header;
  if (!*(a1 + 61))
  {
    v12 = 0;
  }

  v13 = 0x1000000;
  if (!*(a1 + 60))
  {
    v13 = 0;
  }

  v14 = 0x10000;
  if (!*(a1 + 59))
  {
    v14 = 0;
  }

  v15 = 256;
  if (!*(a1 + 58))
  {
    v15 = 0;
  }

  v16 = sub_100025D2C(v15 | *(a1 + 57) | v14 | v13 | v12 | v11 | v10);
  v17 = v16;
  v7(v16, 0);
  if (v8)
  {
    v18 = 3;
    if (v17 != 53)
    {
      v18 = 1;
    }

    if (v17 == 11)
    {
      v19 = 6;
    }

    else
    {
      v19 = v18;
    }

    v20 = v8;
    [v20 actionOccurred:v19];
  }

LABEL_25:
  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000048C8(v21, qword_100160D38);
  sub_100027868(a1, v37);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  sub_100099A30(a1);
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v37[0] = v25;
    *v24 = 136380675;
    v26 = 0x1000000000000;
    if (!*(a1 + 63))
    {
      v26 = 0;
    }

    v27 = 0x10000000000;
    if (!*(a1 + 62))
    {
      v27 = 0;
    }

    v28 = &_mh_execute_header;
    if (!*(a1 + 61))
    {
      v28 = 0;
    }

    v29 = 0x1000000;
    if (!*(a1 + 60))
    {
      v29 = 0;
    }

    v30 = 0x10000;
    if (!*(a1 + 59))
    {
      v30 = 0;
    }

    v31 = 256;
    if (!*(a1 + 58))
    {
      v31 = 0;
    }

    v32 = sub_100025D2C(v31 | *(a1 + 57) | v30 | v29 | v28 | v27 | v26);
    sub_10007D46C(0, v32);
    v35 = sub_100006E5C(v33, v34, v37);

    *(v24 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v22, v23, "%{private}s tapped", v24, 0xCu);
    sub_100003F80(v25);
  }
}

__n128 sub_1000990C0@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_10003AE84(&qword_1001573F8, &qword_100111600);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v10 - v4;
  sub_1000991E0(v10 - v4);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100027B5C(v5, a1);
  v6 = a1 + *(sub_10003AE84(&qword_1001573E0, &qword_1001115F8) + 36);
  v7 = v10[5];
  *(v6 + 64) = v10[4];
  *(v6 + 80) = v7;
  *(v6 + 96) = v10[6];
  v8 = v10[1];
  *v6 = v10[0];
  *(v6 + 16) = v8;
  result = v10[3];
  *(v6 + 32) = v10[2];
  *(v6 + 48) = result;
  return result;
}

uint64_t sub_1000991E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10003AE84(&qword_100155210, &qword_100111700);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v34 - v10;
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v12 = qword_100160D68;
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 stringForKey:v13];

  if (v14)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Locale.init(identifier:)();
    v15 = type metadata accessor for Locale();
    (*(*(v15 - 8) + 56))(v11, 0, 1, v15);
  }

  else
  {
    v16 = type metadata accessor for Locale();
    (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  }

  sub_1000035CC(v11, &qword_100155210, &qword_100111700);
  v17 = 0x1000000000000;
  if (!*(v2 + 63))
  {
    v17 = 0;
  }

  v18 = 0x10000000000;
  if (!*(v2 + 62))
  {
    v18 = 0;
  }

  v19 = &_mh_execute_header;
  if (!*(v2 + 61))
  {
    v19 = 0;
  }

  v20 = 0x1000000;
  if (!*(v2 + 60))
  {
    v20 = 0;
  }

  v21 = 0x10000;
  if (!*(v2 + 59))
  {
    v21 = 0;
  }

  v22 = 256;
  if (!*(v2 + 58))
  {
    v22 = 0;
  }

  v23 = v22 | *(v2 + 57) | v21 | v20;
  v24 = v19 | v18 | v17;
  v25 = sub_100025D2C(v23 | v24);
  v36 = *v2;
  v26 = v36;
  v37 = *(v2 + 8);
  v27 = v37;

  if ((v27 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v28 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v36, &qword_100154810, &qword_10010DF90);
    (*(v4 + 8))(v7, v3);
    v26 = v35;
  }

  v29 = *(v26 + 16);
  swift_getKeyPath();
  v35 = v29;
  sub_1000999E8(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v30 = *(v29 + 24);

  v31 = sub_100025D2C(v23 | v24);
  v32 = v2[9];
  if (v31 - 1 >= 0x15 && (v31 - 53 > 0x28 || ((1 << (v31 - 53)) & 0x100001FE003) == 0 && ((1 << (v31 - 53)) & 0xF000000000) == 0))
  {
    *(v2 + 8);
  }

  sub_10007DDB0(v25, v34);
}

uint64_t sub_1000996B8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v26 + 9) = *(a2 + 41);
  v26[0] = *(a2 + 32);
  v8 = *&v26[0];
  if (BYTE8(v26[1]) == 1)
  {
    v9 = *&v26[1];
    result = sub_100023D3C(*&v26[0], *(&v26[0] + 1), *&v26[1]);
    if (!v8)
    {
      return result;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(v26, &qword_100157420, &qword_1001116F8);
    result = (*(v4 + 8))(v7, v3);
    v8 = v24;
    v9 = v25;
    if (!v24)
    {
      return result;
    }
  }

  v12 = 0x1000000000000;
  if (!*(a2 + 63))
  {
    v12 = 0;
  }

  v13 = 0x10000000000;
  if (!*(a2 + 62))
  {
    v13 = 0;
  }

  v14 = &_mh_execute_header;
  if (!*(a2 + 61))
  {
    v14 = 0;
  }

  v15 = 0x1000000;
  if (!*(a2 + 60))
  {
    v15 = 0;
  }

  v16 = 0x10000;
  if (!*(a2 + 59))
  {
    v16 = 0;
  }

  v17 = 256;
  if (!*(a2 + 58))
  {
    v17 = 0;
  }

  v18 = sub_100025D2C(v17 | *(a2 + 57) | v16 | v15 | v14 | v13 | v12);
  v19 = v18;
  v8(v18, 1);
  if (v9)
  {
    v20 = 4;
    if (v19 != 53)
    {
      v20 = 1;
    }

    if (v19 == 11)
    {
      v21 = 6;
    }

    else
    {
      v21 = v20;
    }

    v22 = v9;
    [v22 actionOccurred:v21];
  }
}

double sub_10009994C@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *&result = sub_1000990C0(a1).n128_u64[0];
  return result;
}

unint64_t sub_100099954()
{
  result = qword_1001573E8;
  if (!qword_1001573E8)
  {
    sub_10003AECC(&qword_1001573E0, &qword_1001115F8);
    sub_1000278A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001573E8);
  }

  return result;
}

uint64_t sub_1000999E8(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_100099A60@<D0>(unsigned __int8 a1@<W0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_10003AE84(&qword_100154F90, &qword_10010C910);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for CalculatorKeypadView();
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v4[6];
  type metadata accessor for CalculatorViewModel();
  sub_1000065C0(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  *v6 = Environment.init<A>(_:)();
  v6[8] = v7 & 1;
  v8 = a2 + v4[7];
  type metadata accessor for CalculatorUnitConversionViewModelWrapper(0);
  sub_1000065C0(&qword_1001553F8, type metadata accessor for CalculatorUnitConversionViewModelWrapper);
  *v8 = Environment.init<A>(_:)();
  v8[8] = v9 & 1;
  v10 = a2 + v4[8];
  type metadata accessor for CalculatorLayout(0);
  sub_1000065C0(&qword_100154958, type metadata accessor for CalculatorLayout);
  *v10 = Environment.init<A>(_:)();
  v10[8] = v11 & 1;
  *(a2 + v4[9]) = 0;
  type metadata accessor for CGSize(0);
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  v12 = a2 + v4[13];
  sub_10003AE84(&qword_100157438, qword_100111838);
  State.init(wrappedValue:)();
  *v12 = v24;
  *(v12 + 1) = *(&v24 + 1);
  v13 = type metadata accessor for CalculatorKeypadViewModel(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_100017834(a1);
  State.init(wrappedValue:)();
  *(a2 + v4[10]) = v24;
  if (qword_100154448 != -1)
  {
    swift_once();
  }

  v16 = (qword_100160980 + OBJC_IVAR____TtC10Calculator32CalculatorButtonSizeCacheManager__cache);
  swift_beginAccess();
  v17 = type metadata accessor for CalculatorButtonSizeCache(0);
  v18 = *(*(v17 - 8) + 48);
  if (!v18(v16, 1, v17))
  {
    v19 = *v16;
  }

  v20 = a2 + v4[11];
  State.init(wrappedValue:)();

  *v20 = v24;
  *(v20 + 2) = v25;
  if (!v18(v16, 1, v17))
  {
    v21 = v16[1];
  }

  v22 = a2 + v4[12];
  State.init(wrappedValue:)();

  result = *&v24;
  *v22 = v24;
  *(v22 + 2) = v25;
  return result;
}